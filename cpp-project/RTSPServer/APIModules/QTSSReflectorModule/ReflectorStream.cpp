/*
 *
 * @APPLE_LICENSE_HEADER_START@
 * 
 * Copyright (c) 1999-2003 Apple Computer, Inc.  All Rights Reserved.
 * 
 * This file contains Original Code and/or Modifications of Original Code
 * as defined in and that are subject to the Apple Public Source License
 * Version 2.0 (the 'License'). You may not use this file except in
 * compliance with the License. Please obtain a copy of the License at
 * http://www.opensource.apple.com/apsl/ and read it before using this
 * file.
 * 
 * The Original Code and all software distributed under the License are
 * distributed on an 'AS IS' basis, WITHOUT WARRANTY OF ANY KIND, EITHER
 * EXPRESS OR IMPLIED, AND APPLE HEREBY DISCLAIMS ALL SUCH WARRANTIES,
 * INCLUDING WITHOUT LIMITATION, ANY WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE, QUIET ENJOYMENT OR NON-INFRINGEMENT.
 * Please see the License for the specific language governing rights and
 * limitations under the License.
 * 
 * @APPLE_LICENSE_HEADER_END@
 *
 */
/*
    File:       ReflectorStream.cpp

    Contains:   Implementation of object defined in ReflectorStream.h. 
                    
    

*/

#include "ReflectorStream.h"
#include "QTSSModuleUtils.h"
#include "OSMemory.h"
#include "SocketUtils.h"
#include "atomic.h"
#include "RTCPPacket.h"
#include "ReflectorSession.h"


#if DEBUG
#define REFLECTOR_STREAM_DEBUGGING 0
#else
#define REFLECTOR_STREAM_DEBUGGING 0
#endif


static ReflectorSocketPool  sSocketPool;

// ATTRIBUTES

static QTSS_AttributeID         sCantBindReflectorSocketErr = qtssIllegalAttrID;
static QTSS_AttributeID         sCantJoinMulticastGroupErr  = qtssIllegalAttrID;

// PREFS

static UInt32                   sDefaultOverBufferInSec             = 10; 
static UInt32                   sDefaultBucketDelayInMsec           = 73;
static Bool16                   sDefaultUsePacketReceiveTime        = false; 
static UInt32                   sDefaultMaxFuturePacketTimeSec      = 60;
static UInt32                   sDefaultFirstPacketOffsetMsec       = 500;

UInt32                          ReflectorStream::sBucketSize  = 16;
UInt32                          ReflectorStream::sOverBufferInMsec = 10000; // more or less what the client over buffer will be
UInt32                          ReflectorStream::sMaxFuturePacketMSec = 60000; // max packet future time
UInt32                          ReflectorStream::sMaxPacketAgeMSec = 10000;

UInt32                          ReflectorStream::sMaxFuturePacketSec = 60; // max packet future time
UInt32                          ReflectorStream::sOverBufferInSec = 10;
UInt32                          ReflectorStream::sBucketDelayInMsec = 73;
Bool16                          ReflectorStream::sUsePacketReceiveTime = false;
UInt32                          ReflectorStream::sFirstPacketOffsetMsec = 500;

UInt16                          ReflectorStream::fRTPPayloadSize = 1400;//fym 不能超过sizeof(fRTPPacket) - 12!!!

void ReflectorStream::Register()
{
    // Add text messages attributes
    static char*        sCantBindReflectorSocket= "QTSSReflectorModuleCantBindReflectorSocket";
    static char*        sCantJoinMulticastGroup = "QTSSReflectorModuleCantJoinMulticastGroup";
    
    (void)QTSS_AddStaticAttribute(qtssTextMessagesObjectType, sCantBindReflectorSocket, NULL, qtssAttrDataTypeCharArray);
    (void)QTSS_IDForAttr(qtssTextMessagesObjectType, sCantBindReflectorSocket, &sCantBindReflectorSocketErr);

    (void)QTSS_AddStaticAttribute(qtssTextMessagesObjectType, sCantJoinMulticastGroup, NULL, qtssAttrDataTypeCharArray);
    (void)QTSS_IDForAttr(qtssTextMessagesObjectType, sCantJoinMulticastGroup, &sCantJoinMulticastGroupErr);
}

void ReflectorStream::Initialize(QTSS_ModulePrefsObject inPrefs)
{

    QTSSModuleUtils::GetAttribute(inPrefs, "reflector_bucket_offset_delay_msec", qtssAttrDataTypeUInt32,
                              &ReflectorStream::sBucketDelayInMsec, &sDefaultBucketDelayInMsec, sizeof(sBucketDelayInMsec));
                                 
    QTSSModuleUtils::GetAttribute(inPrefs, "reflector_buffer_size_sec", qtssAttrDataTypeUInt32,
                              &ReflectorStream::sOverBufferInSec, &sDefaultOverBufferInSec,  sizeof(sDefaultOverBufferInSec));
                              
    QTSSModuleUtils::GetAttribute(inPrefs, "reflector_use_in_packet_receive_time", qtssAttrDataTypeBool16,
                              &ReflectorStream::sUsePacketReceiveTime, &sDefaultUsePacketReceiveTime, sizeof(sDefaultUsePacketReceiveTime));

    QTSSModuleUtils::GetAttribute(inPrefs, "reflector_in_packet_max_receive_sec", qtssAttrDataTypeUInt32,
                              &ReflectorStream::sMaxFuturePacketSec, &sDefaultMaxFuturePacketTimeSec, sizeof(sDefaultMaxFuturePacketTimeSec));

    QTSSModuleUtils::GetAttribute(inPrefs, "reflector_rtp_info_offset_msec", qtssAttrDataTypeUInt32,
                              &ReflectorStream::sFirstPacketOffsetMsec, &sDefaultFirstPacketOffsetMsec, sizeof(sDefaultFirstPacketOffsetMsec));

    ReflectorStream::sOverBufferInMsec = sOverBufferInSec * 1000;
    ReflectorStream::sMaxFuturePacketMSec = sMaxFuturePacketSec * 1000;
    ReflectorStream::sMaxPacketAgeMSec = sOverBufferInMsec;
}

void ReflectorStream::GenerateSourceID(SourceInfo::StreamInfo* inInfo, char* ioBuffer)
{
    
    ::memcpy(ioBuffer, &inInfo->fSrcIPAddr, sizeof(inInfo->fSrcIPAddr));
    ::memcpy(&ioBuffer[sizeof(inInfo->fSrcIPAddr)], &inInfo->fPort, sizeof(inInfo->fPort));
}


ReflectorStream::ReflectorStream(SourceInfo::StreamInfo* inInfo)
:   fPacketCount(0),
    fSockets(NULL),
    fRTPSender(NULL, qtssWriteFlagsIsRTP),
    fRTCPSender(NULL, qtssWriteFlagsIsRTCP),
    fOutputArray(NULL),
    fNumBuckets(kMinNumBuckets),
    fNumElements(0),
    fBucketMutex(),
    
    fDestRTCPAddr(0),
    fDestRTCPPort(0),
    
    fCurrentBitRate(0),
    fLastBitRateSample(OS::Milliseconds()), // don't calculate our first bit rate until kBitRateAvgIntervalInMilSecs has passed!
    fBytesSentInThisInterval(0),
    
    fRTPChannel(-1),
    fRTCPChannel(-1),
    fHasFirstRTCPPacket(false),
    fHasFirstRTPPacket(false),
    fEnableBuffer(false),
    fEyeCount(0),
    fFirst_RTCP_RTP_Time(0),
    fFirst_RTCP_Arrival_Time(0),
	fRTPPacketSeqNum(1),//fym
	fSequence(1)//fym
{
    fRTPSender.fStream = this;
    fRTCPSender.fStream = this;

    fStreamInfo.Copy(*inInfo);
    
    // ALLOCATE BUCKET ARRAY
    this->AllocateBucketArray(fNumBuckets);

    // WRITE RTCP PACKET
    
    //write as much of the RTCP RR as is possible right now (most of it never changes)
    UInt32 theSsrc = (UInt32)::rand();
    char theTempCName[RTCPSRPacket::kMaxCNameLen];
    UInt32 cNameLen = RTCPSRPacket::GetACName(theTempCName);
    
    //write the RR (just header + ssrc)
    UInt32* theRRWriter = (UInt32*)&fReceiverReportBuffer[0];
    *theRRWriter = htonl(0x80c90001);
    theRRWriter++;
    *theRRWriter = htonl(theSsrc);
    theRRWriter++;

    //SDES length is the length of the CName, plus 2 32bit words, minus 1
    *theRRWriter = htonl(0x81ca0000 + (cNameLen >> 2) + 1);
    theRRWriter++;
    *theRRWriter = htonl(theSsrc);
    theRRWriter++;
    ::memcpy(theRRWriter, theTempCName, cNameLen);
    theRRWriter += cNameLen >> 2;
    
    //APP packet format, QTSS specific stuff
    *theRRWriter = htonl(0x80cc0008);
    theRRWriter++;
    *theRRWriter = htonl(theSsrc);
    theRRWriter++;
    *theRRWriter = htonl(FOUR_CHARS_TO_INT('Q','T','S','S'));
    theRRWriter++;
    *theRRWriter = htonl(0);
    theRRWriter++;
    *theRRWriter = htonl(0x00000004);
    theRRWriter++;
    *theRRWriter = htonl(0x6579000c);
    theRRWriter++;
    
    fEyeLocation = theRRWriter;
    fReceiverReportSize = kReceiverReportSize + kAppSize + cNameLen;
    
    // If the source is a multicast, we should send our receiver reports
    // to the multicast address
    if(SocketUtils::IsMulticastIPAddr(fStreamInfo.fDestIPAddr))
    {
        fDestRTCPAddr = fStreamInfo.fDestIPAddr;
        fDestRTCPPort = fStreamInfo.fPort + 1;
    }
	
	//fym ::ZeroMemory(fRTPPacket, sizeof(fRTPPacket));
	//fym fRTPPayloadSize = 1400;//fym 不能超过sizeof(fRTPPacket) - sizeof(RTPHeaderParam)!!!

}


ReflectorStream::~ReflectorStream()
{
    //fym Assert(fNumElements == 0);
	if(fNumElements)//fym
		return;

    if(fSockets != NULL)
    {
        //first things first, let's take this stream off the socket's queue
        //of streams. This will basically ensure that no reflecting activity
        //can happen on this stream.
        ((ReflectorSocket*)fSockets->GetSocketA())->RemoveSender(&fRTPSender);
        ((ReflectorSocket*)fSockets->GetSocketB())->RemoveSender(&fRTCPSender);
        
        //leave the multicast group. Because this socket is shared amongst several
        //potential multicasts, we don't want to remain a member of a stale multicast
        if(SocketUtils::IsMulticastIPAddr(fStreamInfo.fDestIPAddr))
        {
            fSockets->GetSocketA()->LeaveMulticast(fStreamInfo.fDestIPAddr);
            fSockets->GetSocketB()->LeaveMulticast(fStreamInfo.fDestIPAddr);
        }
        //now release the socket pair
        sSocketPool.ReleaseUDPSocketPair(fSockets);
    }
        
        //qtss_printf("Deleting stream %x\n", this);

    //delete every client Bucket
    for (UInt32 y = 0; y < fNumBuckets; y++)
        delete [] fOutputArray[y];
    delete [] fOutputArray;

}

void ReflectorStream::AllocateBucketArray(UInt32 inNumBuckets)
{
    Bucket* oldArray = fOutputArray;
    //allocate the 2-dimensional array
    fOutputArray = NEW Bucket[inNumBuckets];
    for (UInt32 x = 0; x < inNumBuckets; x++)
    {
        fOutputArray[x] = NEW ReflectorOutput*[sBucketSize];
        ::memset(fOutputArray[x], 0, sizeof(ReflectorOutput*) * sBucketSize);
    }
    
    //copy over the old information if there was an old array
    if(oldArray != NULL)
    {
        //fym Assert(inNumBuckets > fNumBuckets);
		if(inNumBuckets <= fNumBuckets)//fym
			return;

        for (UInt32 y = 0; y < fNumBuckets; y++)
        {
            ::memcpy(fOutputArray[y],oldArray[y], sBucketSize * sizeof(ReflectorOutput*));
            delete [] oldArray[y];
        }
        delete [] oldArray;
    }
    fNumBuckets = inNumBuckets;
}


SInt32 ReflectorStream::AddOutput(ReflectorOutput* inOutput, SInt32 putInThisBucket)
{
	//qtss_printf("\nA2");//fym
    OSMutexLocker locker(&fBucketMutex);
    
#if DEBUG
    // We should never be adding an output twice to a stream
    for (UInt32 dOne = 0; dOne < fNumBuckets; dOne++)
        for (UInt32 dTwo = 0; dTwo < sBucketSize; dTwo++)
            Assert(fOutputArray[dOne][dTwo] != inOutput);
#endif

    // If caller didn't specify a bucket, find a bucket
    if(putInThisBucket < 0)
        putInThisBucket = this->FindBucket();
        
    //fym Assert(putInThisBucket >= 0);
	if(putInThisBucket < 0)//fym
		return -1;
    
    if(fNumBuckets <= (UInt32)putInThisBucket)
        this->AllocateBucketArray(putInThisBucket * 2);

    for(UInt32 y = 0; y < sBucketSize; y++)
    {
        if(fOutputArray[putInThisBucket][y] == NULL)
        {
            fOutputArray[putInThisBucket][y] = inOutput;
#if REFLECTOR_STREAM_DEBUGGING 
            qtss_printf("Adding new output (0x%lx) to bucket %ld, index %ld,\nnum buckets %li bucketSize: %li \n",(long)inOutput, putInThisBucket, y, (long)fNumBuckets, (long)sBucketSize);
#endif
            fNumElements++;
            return putInThisBucket;
        }
    }
    // There was no empty spot in the specified bucket. Return an error
    return -1;      
}

SInt32 ReflectorStream::FindBucket()
{
    // If we need more buckets, allocate them.
    if(fNumElements == (sBucketSize * fNumBuckets))
        this->AllocateBucketArray(fNumBuckets * 2);
    
    //find the first open spot in the array
    for (SInt32 putInThisBucket = 0; (UInt32)putInThisBucket < fNumBuckets; putInThisBucket++)
    {
        for(UInt32 y = 0; y < sBucketSize; y++)
            if(fOutputArray[putInThisBucket][y] == NULL)
                return putInThisBucket;
    }
    //fym Assert(0);
    return 0;
}

void  ReflectorStream::RemoveOutput(ReflectorOutput* inOutput)
{
    OSMutexLocker locker(&fBucketMutex);
    //fym Assert(fNumElements > 0);
	if(fNumElements <= 0)//fym
		return;
    
    //look at all the indexes in the array
    for (UInt32 x = 0; x < fNumBuckets; x++)
    {
        for (UInt32 y = 0; y < sBucketSize; y++)
        {
            //The array may have blank spaces!
            if(fOutputArray[x][y] == inOutput)
            {
                fOutputArray[x][y] = NULL;//just clear out the pointer
                
#if REFLECTOR_STREAM_DEBUGGING  
                qtss_printf("Removing output %x from bucket %ld, index %ld\n",inOutput,x,y);
#endif
                fNumElements--;
                return;             
            }
        }
    }
    //fym Assert(0);
}

void  ReflectorStream::TearDownAllOutputs()
{

    OSMutexLocker locker(&fBucketMutex);
    
    //look at all the indexes in the array
    for (UInt32 x = 0; x < fNumBuckets; x++)
    {
        for (UInt32 y = 0; y < sBucketSize; y++)
        {   ReflectorOutput* theOutputPtr= fOutputArray[x][y];
            //The array may have blank spaces!
            if(theOutputPtr != NULL)
            {   theOutputPtr->TearDown();
#if REFLECTOR_STREAM_DEBUGGING  
                qtss_printf("TearDownAllOutputs Removing output from bucket %ld, index %ld\n",x,y);
#endif
            }
        }
    }
}

//fym 将socket和stream捆绑？
QTSS_Error ReflectorStream::BindSockets(QTSS_StandardRTSP_Params* inParams, UInt32 inReflectorSessionFlags, Bool16 filterState, UInt32 timeout)
{
	// If the incoming data is RTSP interleaved, we don't need to do anything here
    if(inReflectorSessionFlags & ReflectorSession::kIsPushSession)
        fStreamInfo.fSetupToReceive = true;
            
    QTSS_RTSPRequestObject inRequest = NULL;
    if(inParams != NULL)
        inRequest = inParams->inRTSPRequest;

            // Set the transport Type a Broadcaster
    QTSS_RTPTransportType transportType = qtssRTPTransportTypeUDP;
    if(inParams != NULL)
    {   UInt32 theLen = sizeof(transportType);
        (void) QTSS_GetValue(inParams->inRTSPRequest, qtssRTSPReqTransportType, 0, (void*)&transportType, &theLen);
    }
    
    // get a pair of sockets. The socket must be bound on INADDR_ANY because we don't know
    // which interface has access to this broadcast. If there is a source IP address
    // specified by the source info, we can use that to demultiplex separate broadcasts on
    // the same port. If the src IP addr is 0, we cannot do this and must dedicate 1 port per
    // broadcast

	// changing INADDR_ANY to fStreamInfo.fDestIPAddr to deal with NATs (need to track this change though)
	// change submitted by denis@berlin.ccc.de
	Bool16 isMulticastDest = (SocketUtils::IsMulticastIPAddr(fStreamInfo.fDestIPAddr));

	if(isMulticastDest)
	{
    	fSockets = sSocketPool.GetUDPSocketPair(INADDR_ANY, fStreamInfo.fPort, fStreamInfo.fSrcIPAddr, 0);
	}
	else
	{
		fSockets = sSocketPool.GetUDPSocketPair(fStreamInfo.fDestIPAddr, fStreamInfo.fPort, fStreamInfo.fSrcIPAddr, 0);
	} 

    if((fSockets == NULL) && fStreamInfo.fSetupToReceive)
    {
        fStreamInfo.fPort = 0;
		if(isMulticastDest)
		{
			fSockets = sSocketPool.GetUDPSocketPair(INADDR_ANY, fStreamInfo.fPort, fStreamInfo.fSrcIPAddr, 0);
		}
		else
		{
			fSockets = sSocketPool.GetUDPSocketPair(fStreamInfo.fDestIPAddr, fStreamInfo.fPort, fStreamInfo.fSrcIPAddr, 0);
		}
    }
    if(fSockets == NULL)
        return QTSSModuleUtils::SendErrorResponse(inRequest, qtssServerInternal,
                                                    sCantBindReflectorSocketErr);

    // If we know the source IP address of this broadcast, we can demux incoming traffic
    // on the same port by that source IP address. If we don't know the source IP addr,
    // it is impossible for us to demux, and therefore we shouldn't allow multiple
    // broadcasts on the same port.
    if(((ReflectorSocket*)fSockets->GetSocketA())->HasSender() && (fStreamInfo.fSrcIPAddr == 0))
        return QTSSModuleUtils::SendErrorResponse(inRequest, qtssServerInternal,
                                                    sCantBindReflectorSocketErr);
    
    //also put this stream onto the socket's queue of streams
    ((ReflectorSocket*)fSockets->GetSocketA())->AddSender(&fRTPSender);
    ((ReflectorSocket*)fSockets->GetSocketB())->AddSender(&fRTCPSender);

    // A broadcaster is setting up a UDP session so let the sockets update the session
    if(fStreamInfo.fSetupToReceive &&  qtssRTPTransportTypeUDP == transportType && inParams != NULL)
    {   ((ReflectorSocket*)fSockets->GetSocketA())->AddBroadcasterSession(inParams->inClientSession);
        ((ReflectorSocket*)fSockets->GetSocketB())->AddBroadcasterSession(inParams->inClientSession);
    }
    
    ((ReflectorSocket*)fSockets->GetSocketA())->SetSSRCFilter(filterState, timeout);
    ((ReflectorSocket*)fSockets->GetSocketB())->SetSSRCFilter(filterState, timeout);

#if 1 
	// Always set the Rcv buf size for the sockets. This is important because the
	// server is going to be getting many packets on these sockets.
	fSockets->GetSocketA()->SetSocketRcvBufSize(512 * 1024);
	fSockets->GetSocketB()->SetSocketRcvBufSize(512 * 1024);
#endif
    
    //If the broadcaster is sending RTP directly to us, we don't
    //need to join a multicast group because we're not using multicast
	if(isMulticastDest)
    {
        QTSS_Error err = fSockets->GetSocketA()->JoinMulticast(fStreamInfo.fDestIPAddr);
        if(err == QTSS_NoErr)
            err = fSockets->GetSocketB()->JoinMulticast(fStreamInfo.fDestIPAddr);
        // If we get an error when setting the TTL, this isn't too important (TTL on
        // these sockets is only useful for RTCP RRs.
        if(err == QTSS_NoErr)
            (void)fSockets->GetSocketA()->SetTtl(fStreamInfo.fTimeToLive);
        if(err == QTSS_NoErr)
            (void)fSockets->GetSocketB()->SetTtl(fStreamInfo.fTimeToLive);
        if(err != QTSS_NoErr)
            return QTSSModuleUtils::SendErrorResponse(inRequest, qtssServerInternal,
                                                        sCantJoinMulticastGroupErr);
    }
    
    // If the port is 0, update the port to be the actual port value
    fStreamInfo.fPort = fSockets->GetSocketA()->GetLocalPort();

    //finally, register these sockets for events
    fSockets->GetSocketA()->RequestEvent(EV_RE);
    fSockets->GetSocketB()->RequestEvent(EV_RE);
            
    // Copy the source ID and setup the ref
    StrPtrLen theSourceID(fSourceIDBuf, kStreamIDSize);
    ReflectorStream::GenerateSourceID(&fStreamInfo, fSourceIDBuf);
    fRef.Set(theSourceID, this);
    return QTSS_NoErr;
}

void ReflectorStream::SendReceiverReport()
{
    // Check to see if our destination RTCP addr & port are setup. They may
    // not be if the source is unicast and we haven't gotten any incoming packets yet
    if(fDestRTCPAddr == 0)
        return;
    
    UInt32 theEyeCount = this->GetEyeCount();    
    UInt32* theEyeWriter = fEyeLocation;
    *theEyeWriter = htonl(theEyeCount) & 0x7fffffff;//no idea why we do this!
    theEyeWriter++;
    *theEyeWriter = htonl(theEyeCount) & 0x7fffffff;
    theEyeWriter++;
    *theEyeWriter = htonl(0) & 0x7fffffff;
    
    //send the packet to the multicast RTCP addr & port for this stream
    (void)fSockets->GetSocketB()->SendTo(fDestRTCPAddr, fDestRTCPPort, fReceiverReportBuffer, fReceiverReportSize);
}

void ReflectorStream::PushPacket(char *packet, UInt32 packetLen, Bool16 isRTCP)
{
	//qtss_printf("recv packet len: %d, ", packetLen);//fym

    if(packetLen > 0)
    {   
        ReflectorPacket* thePacket = NULL;
        if(isRTCP)
        {
        }
        else
        {   //qtss_printf("ReflectorStream::PushPacket RTP packetlen = %lu\n",packetLen);
            thePacket =  ((ReflectorSocket*)fSockets->GetSocketA())->GetPacket();
            if(thePacket == NULL)
            {   //qtss_printf("ReflectorStream::PushPacket GetPacket() is NULL\n");
                return;
            }
    
            OSMutexLocker locker(((ReflectorSocket*)(fSockets->GetSocketA()))->GetDemuxer()->GetMutex());
            thePacket->SetPacketData(packet, packetLen);
             ((ReflectorSocket*)fSockets->GetSocketA())->ProcessPacket(OS::Milliseconds(),thePacket,0,0);
             ((ReflectorSocket*)fSockets->GetSocketA())->Signal(Task::kIdleEvent);
        }
    }
}

//输入待发送数据
void ReflectorStream::PushRelayPacket(char *packet, UInt32 packetLen, UInt32 src_addr, UInt16 src_port, UInt16 stream_index)
{
	if(packetLen > 0)
	{
		UInt32 sended_len = 0;//fym 已发送数据字节数
		UInt32 cur_packet_len = 0;//fym 本次待发送数据字节数
		UInt16 packet_mark = 0;

		ReflectorPacket* thePacket = NULL;
		
		//fym 避免在fScokets还未创建前就发包导致的问题
		if(NULL == fSockets)
			return;

		while(sended_len < packetLen)
		{
			thePacket =  ((ReflectorSocket*)fSockets->GetSocketA())->GetPacket();

			if(thePacket == NULL)
			{   //qtss_printf("ReflectorStream::PushPacket GetPacket() is NULL\n");
				return;
			}

			UInt32 cur_packet_len = ((packetLen - sended_len) > fRTPPayloadSize) ? fRTPPayloadSize : packetLen - sended_len;

			packet_mark = (packetLen == sended_len + cur_packet_len) ? 1 : 0;

			{
				if(NULL == fRTPPacket)
					return;

				::memcpy(fRTPPacket + sizeof(RTPHeaderParam), packet + sended_len, cur_packet_len);
			
				RTPHeaderParam* hdr = (RTPHeaderParam*)fRTPPacket;

				hdr->V = 2;
				hdr->P = 0;
				hdr->X = 0;
				hdr->CC = 0;
				hdr->M = (packet_mark) ? 1 : 0;
				hdr->PT = stream_index;
				hdr->SEQ_NUM = htons(fRTPPacketSeqNum++);
				hdr->TIME_STAMP = htonl(clock());
				hdr->SSRC = htonl(fSequence);

				OSMutexLocker locker(((ReflectorSocket*)(fSockets->GetSocketA()))->GetDemuxer()->GetMutex());
				thePacket->SetPacketData(fRTPPacket, cur_packet_len + sizeof(RTPHeaderParam));
				((ReflectorSocket*)fSockets->GetSocketA())->ProcessPacket(OS::Milliseconds(),thePacket, src_addr, src_port);
				((ReflectorSocket*)fSockets->GetSocketA())->Signal(Task::kIdleEvent);
			}

			sended_len += cur_packet_len;
		}

		++fSequence;

		//fym OSMutexLocker locker(((ReflectorSocket*)(fSockets->GetSocketA()))->GetDemuxer()->GetMutex());
		//fym thePacket->SetPacketData(packet, packetLen);
		//fym ((ReflectorSocket*)fSockets->GetSocketA())->ProcessPacket(OS::Milliseconds(),thePacket, src_addr, src_port);
		//fym ((ReflectorSocket*)fSockets->GetSocketA())->Signal(Task::kIdleEvent);
	}
}

ReflectorSender::ReflectorSender(ReflectorStream* inStream, UInt32 inWriteFlag)
:   fStream(inStream),
    fWriteFlag(inWriteFlag),
    fFirstNewPacketInQueue(NULL), 
    fFirstPacketInQueueForNewOutput(NULL),
    fHasNewPackets(false),
    fNextTimeToRun(0),
    fLastRRTime(0),
    fSocketQueueElem()
{   
    fSocketQueueElem.SetEnclosingObject(this); 
}

ReflectorSender::~ReflectorSender()
{
	//fym OSMutexLocker locker(&fMutex);//fym

    //dequeue and delete every buffer
    while (fPacketQueue.GetLength() > 0)
    {
        ReflectorPacket* packet = (ReflectorPacket*)fPacketQueue.DeQueue()->GetEnclosingObject();

		if(NULL == packet)//fym
			continue;

        delete packet;
		packet = NULL;//fym
    }
}


Bool16 ReflectorSender::ShouldReflectNow(const SInt64& inCurrentTime, SInt64* ioWakeupTime)
{
	//fym Assert(ioWakeupTime != NULL);
	if(NULL == ioWakeupTime)//fym
		return false;

    //check to make sure there actually is work to do for this stream.
    if((!fHasNewPackets) && ((fNextTimeToRun == 0) || (inCurrentTime < fNextTimeToRun)))
    {
        //We don't need to do work right now, but
        //this stream must still communicate when it needs to be woken up next
        SInt64 theWakeupTime = fNextTimeToRun - inCurrentTime;
        if((fNextTimeToRun > 0) && (theWakeupTime < *ioWakeupTime))
            *ioWakeupTime = theWakeupTime;
        return false;
    }
    return true;    
}

UInt32 ReflectorSender::GetOldestPacketRTPTime(Bool16 *foundPtr)             
{
    if(foundPtr != NULL) 
        *foundPtr = false;
    OSMutexLocker locker(&fStream->fBucketMutex);
    OSQueueElem* packetElem = this->GetClientBufferStartPacket();
    if(packetElem == NULL)
        return 0;
        
    ReflectorPacket* thePacket = (ReflectorPacket*)packetElem->GetEnclosingObject();
    if(thePacket == NULL)
        return 0;
        
    if(foundPtr != NULL) 
        *foundPtr = true;
        
    return thePacket->GetPacketRTPTime();
}

UInt16 ReflectorSender::GetFirstPacketRTPSeqNum(Bool16 *foundPtr)             
{
    if(foundPtr != NULL) 
        *foundPtr = false;
        
    UInt16 resultSeqNum = 0;
    OSMutexLocker locker(&fStream->fBucketMutex);
    OSQueueElem* packetElem = this->GetClientBufferStartPacket();
            
    if(packetElem == NULL)
        return 0;
        
    ReflectorPacket* thePacket = (ReflectorPacket*)packetElem->GetEnclosingObject();
    if(thePacket == NULL)
        return 0;
   
    if(foundPtr != NULL) 
        *foundPtr = true;
    
    resultSeqNum = thePacket->GetPacketRTPSeqNum();
        
   return resultSeqNum;
}

OSQueueElem*    ReflectorSender::GetClientBufferNextPacketTime(UInt32 inRTPTime)
{
        
    OSQueueIter qIter(&fPacketQueue);// start at oldest packet in q
    OSQueueElem* requestedPacket = NULL;
    OSQueueElem* elem =  NULL;
    
    while ( !qIter.IsDone() ) // start at oldest packet in q
    {
        elem = qIter.GetCurrent();
        
        if(requestedPacket == NULL)
            requestedPacket = elem;
        
        if(requestedPacket == NULL)
            break;
            
        ReflectorPacket* thePacket = (ReflectorPacket*)elem->GetEnclosingObject();      
        //fym Assert( thePacket );
		if(NULL == thePacket)//fym
			continue;
                 
        if(thePacket->GetPacketRTPTime() > inRTPTime)
        {
            requestedPacket = elem; // return the first packet we have that has a later time
            break; // found the packet we need: done processing
        }
        qIter.Next();
        
        
    }

    return requestedPacket;
}

Bool16 ReflectorSender::GetFirstRTPTimePacket(UInt16* outSeqNumPtr, UInt32* outRTPTimePtr, SInt64* outArrivalTimePtr) 
{
    OSMutexLocker locker(&fStream->fBucketMutex);
    OSQueueElem* packetElem = this->GetClientBufferStartPacketOffset(ReflectorStream::sFirstPacketOffsetMsec);
            
    if(packetElem == NULL)
        return false;
        
    ReflectorPacket* thePacket = (ReflectorPacket*)packetElem->GetEnclosingObject();
    if(thePacket == NULL)
        return false;
    
    packetElem = GetClientBufferNextPacketTime(thePacket->GetPacketRTPTime());
    if(packetElem == NULL)
        return false;

    thePacket = (ReflectorPacket*)packetElem->GetEnclosingObject();
    if(thePacket == NULL)
        return false;
    
    if(outSeqNumPtr)
        *outSeqNumPtr = thePacket->GetPacketRTPSeqNum();
        
    if(outRTPTimePtr)
        *outRTPTimePtr = thePacket->GetPacketRTPTime();

    if(outArrivalTimePtr)
        *outArrivalTimePtr = thePacket->fTimeArrived;
        
   return true;
}

Bool16 ReflectorSender::GetFirstPacketInfo(UInt16* outSeqNumPtr, UInt32* outRTPTimePtr, SInt64* outArrivalTimePtr) 
{
    OSMutexLocker locker(&fStream->fBucketMutex);
    OSQueueElem* packetElem = this->GetClientBufferStartPacketOffset(ReflectorStream::sFirstPacketOffsetMsec);
//    OSQueueElem* packetElem = this->GetClientBufferStartPacket();
            
    if(packetElem == NULL)
        return false;
        
    ReflectorPacket* thePacket = (ReflectorPacket*)packetElem->GetEnclosingObject();
    if(thePacket == NULL)
        return false;
       
    if(outSeqNumPtr)
        *outSeqNumPtr = thePacket->GetPacketRTPSeqNum();
        
    if(outRTPTimePtr)
        *outRTPTimePtr = thePacket->GetPacketRTPTime();

    if(outArrivalTimePtr)
        *outArrivalTimePtr = thePacket->fTimeArrived;
        
   return true;
}


#if REFLECTOR_STREAM_DEBUGGING
static UInt16 DGetPacketSeqNumber(StrPtrLen* inPacket)
{
    if(inPacket->Len < 4)
        return 0;
    
    //The RTP seq number is the second short of the packet
    UInt16* seqNumPtr = (UInt16*)inPacket->Ptr;
    return ntohs(seqNumPtr[1]);
}



#endif


void ReflectorSender::ReflectRelayPackets(SInt64* ioWakeupTime, OSQueue* inFreeQueue)
{   
    //Most of this code is useless i.e. buckets and bookmarks. This code will get cleaned up eventually

	//qtss_printf("\nReflectorSender::ReflectPackets %d %d\n",*ioWakeupTime,fNextTimeToRun);//fym


#if DEBUG
	Assert(ioWakeupTime != NULL);
#endif
	#if REFLECTOR_STREAM_DEBUGGING > 2
	Bool16	printQueueLenOnExit = false;
	#endif	

	SInt64 currentTime = OS::Milliseconds();

	//make sure to reset these state variables
	fHasNewPackets = false;	
	fNextTimeToRun = 10000;	// init to 10 secs
	
	//determine if we need to send a receiver report to the multicast source
	if((fWriteFlag == qtssWriteFlagsIsRTCP) && (currentTime > (fLastRRTime + kRRInterval)))
	{
		fLastRRTime = currentTime;
		fStream->SendReceiverReport();
		#if REFLECTOR_STREAM_DEBUGGING > 2
		printQueueLenOnExit = true;
		printf( "fPacketQueue len %li\n", (long)fPacketQueue.GetLength() );
		#endif	
	}
	
	//the rest of this function must be atomic wrt the ReflectorSession, because
	//it involves iterating through the RTPSession array, which isn't thread safe
	OSMutexLocker locker(&fStream->fBucketMutex);
	
	// Check to see if we should update the session's bitrate average
	if((fStream->fLastBitRateSample + ReflectorStream::kBitRateAvgIntervalInMilSecs) < currentTime)
	{
		unsigned int intervalBytes = fStream->fBytesSentInThisInterval;
		(void)atomic_sub(&fStream->fBytesSentInThisInterval, intervalBytes);
		
		// Multiply by 1000 to convert from milliseconds to seconds, and by 8 to convert from bytes to bits
		Float32 bps = (Float32)(intervalBytes * 8) / (Float32)(currentTime - fStream->fLastBitRateSample);
		bps *= 1000;
		fStream->fCurrentBitRate = (UInt32)bps;
		
		// Don't check again for awhile!
		fStream->fLastBitRateSample = currentTime;
	}

	for (UInt32 bucketIndex = 0; bucketIndex < fStream->fNumBuckets; bucketIndex++)
	{	
		for (UInt32 bucketMemberIndex = 0; bucketMemberIndex < fStream->sBucketSize; bucketMemberIndex++)
		{	 
			ReflectorOutput* theOutput = fStream->fOutputArray[bucketIndex][bucketMemberIndex];
		
			
			if(theOutput != NULL)
			{	
				SInt32			availBookmarksPosition = -1;	// -1 == invalid position
				OSQueueElem*	packetElem = NULL;				
				UInt32			curBookmark = 0;
				
				//fym Assert( curBookmark < theOutput->fNumBookmarks );		
				if(curBookmark >= theOutput->fNumBookmarks)//fym
					continue;
				
				// see if we've bookmarked a held packet for this Sender in this Output
				while ( curBookmark < theOutput->fNumBookmarks )
				{					
					OSQueueElem* 	bookmarkedElem = theOutput->fBookmarkedPacketsElemsArray[curBookmark];
					
					if( bookmarkedElem )	// there may be holes in this array
					{							
						if( bookmarkedElem->IsMember( fPacketQueue ) )	
						{	
							// this packet was previously bookmarked for this specific queue
							// remove if from the bookmark list and use it
							// to jump ahead into the Sender's over all packet queue						
							theOutput->fBookmarkedPacketsElemsArray[curBookmark] = NULL;
							availBookmarksPosition = curBookmark;
							packetElem = bookmarkedElem;
							break;
						}
						
					}
					else
					{
						availBookmarksPosition = curBookmark;
					}
					
					curBookmark++;
						
				}
				
				//fym Assert( availBookmarksPosition != -1 );		
				if(-1 == availBookmarksPosition)//fym
					return;
				
				#if REFLECTOR_STREAM_DEBUGGING > 1
				if( packetElem )	// show 'em what we got johnny
				{	ReflectorPacket* 	thePacket = (ReflectorPacket*)packetElem->GetEnclosingObject();
					printf("Bookmarked packet time: %li, packetSeq %i\n", (long)thePacket->fTimeArrived, DGetPacketSeqNumber( &thePacket->fPacketPtr ) );			
				}
				#endif
				
				// the output did not have a bookmarked packet if it's own
				// so show it the first new packet we have in this sender.
				// ( since TCP flow control may delay the sending of packets, this may not
				// be the same as the first packet in the queue
				if( packetElem  == NULL )
				{	
					packetElem = fFirstNewPacketInQueue;
						
					#if REFLECTOR_STREAM_DEBUGGING > 1
					if( packetElem )	// show 'em what we got johnny
					{	
						ReflectorPacket* 	thePacket = (ReflectorPacket*)packetElem->GetEnclosingObject();
						printf("1st NEW packet from Sender sess 0x%lx time: %li, packetSeq %i\n", (long)theOutput, (long)thePacket->fTimeArrived, DGetPacketSeqNumber( &thePacket->fPacketPtr ) );			
					}
					else
						printf("no new packets\n" );
					#endif
				}
				
				OSQueueIter qIter(&fPacketQueue, packetElem);  // starts from beginning if packetElem == NULL, else from packetElem
				
				Bool16			dodBookmarkPacket = false;
				
				while ( !qIter.IsDone() )
				{					
					packetElem = qIter.GetCurrent();
					
					ReflectorPacket* 	thePacket = (ReflectorPacket*)packetElem->GetEnclosingObject();

					if(NULL == thePacket)//fym
						continue;

					QTSS_Error			err = QTSS_NoErr;
					
					#if REFLECTOR_STREAM_DEBUGGING > 2
					printf("packet time: %li, packetSeq %i\n", (long)thePacket->fTimeArrived, DGetPacketSeqNumber( &thePacket->fPacketPtr ) );			
					#endif
					
					// once we see a packet we cant' send, we need to stop trying
					// during this pass mark remaining as still needed
					if( !dodBookmarkPacket )
					{
						SInt64  packetLateness =  currentTime - thePacket->fTimeArrived - (ReflectorStream::sBucketDelayInMsec * (SInt64)bucketIndex);
					    // packetLateness measures how late this packet it after being corrected for the bucket delay
						
						#if REFLECTOR_STREAM_DEBUGGING > 2
						printf("packetLateness %li, seq# %li\n", (long)packetLateness, (long) DGetPacketSeqNumber( &thePacket->fPacketPtr ) );			
						#endif
						
						SInt64 timeToSendPacket = -1;

						//in_addr addr;//fym
						//addr.S_un.S_addr = fStream->fStreamInfo.fSrcIPAddr;//fym
						//qtss_printf("RT %s ", inet_ntoa(addr));//fym

						err = theOutput->WritePacket(&thePacket->fPacketPtr, fStream, fWriteFlag, packetLateness, &timeToSendPacket, NULL, NULL);
					
						if( err == QTSS_WouldBlock )
						{	
							#if REFLECTOR_STREAM_DEBUGGING > 2
							printf("EAGAIN bookmark: %li, packetSeq %i\n", (long)packetLateness, DGetPacketSeqNumber( &thePacket->fPacketPtr ) );			
							#endif
							// tag it and bookmark it
							thePacket->fNeededByOutput = true;
							
							//fym Assert( availBookmarksPosition != -1 );
							if( availBookmarksPosition != -1 )
								theOutput->fBookmarkedPacketsElemsArray[availBookmarksPosition] =  packetElem;

							dodBookmarkPacket = true;
							
							// call us again in # ms to retry on an EAGAIN
							if((timeToSendPacket > 0) && (fNextTimeToRun > timeToSendPacket ))
								fNextTimeToRun = timeToSendPacket;
							if( timeToSendPacket == -1 )
								fNextTimeToRun = 5; // keep in synch with delay on would block for on-demand lower is better for high-bit rate movies.
						
						}
					}
					else
					{	
						if( thePacket->fNeededByOutput )	// optimization: if the packet is already marked, another Output has been through this already
							break;
						thePacket->fNeededByOutput = true;
					}
					
					qIter.Next();
				} 
				
			}
		}
	}
	
	// reset our first new packet bookmark
	fFirstNewPacketInQueue = NULL;

	// iterate one more through the senders queue to clear out
	// the unneeded packets
	OSQueueIter removeIter(&fPacketQueue);
	while ( !removeIter.IsDone() )
	{
		OSQueueElem* elem = removeIter.GetCurrent();
		//fym Assert( elem );
		if(NULL == elem)//fym
			break;

		//at this point, move onto the next queue element, because we may be altering
		//the queue itself in the code below
		removeIter.Next();

		ReflectorPacket* thePacket = (ReflectorPacket*)elem->GetEnclosingObject();		
		//fym Assert( thePacket );
		if(NULL == thePacket)//fym
			continue;
		
		if( thePacket->fNeededByOutput == false )
		{	
			thePacket->fNeededByOutput = true;
			fPacketQueue.Remove( elem );
			inFreeQueue->EnQueue( elem );
			
		}
		else	// reset for next call to ReflectPackets
		{
			thePacket->fNeededByOutput = false;
		}
	}
	
	//Don't forget that the caller also wants to know when we next want to run
	if(*ioWakeupTime == 0)
		*ioWakeupTime = fNextTimeToRun;
	else if((fNextTimeToRun > 0) && (*ioWakeupTime > fNextTimeToRun))
		*ioWakeupTime = fNextTimeToRun;
	// exit with fNextTimeToRun in real time, not relative time.
	fNextTimeToRun += currentTime;
	
	#if REFLECTOR_STREAM_DEBUGGING > 2
	if( printQueueLenOnExit )
		printf( "EXIT fPacketQueue len %li\n", (long)fPacketQueue.GetLength() );
	#endif
}

/***********************************************************************************************
/   ReflectorSender::ReflectPackets
/   
/   There are n ReflectorSender's for n output streams per presentation.
/   
/   Each sender is associated with an array of ReflectorOutput's.  Each
/   output represents a client connection.  Each output has # RTPStream's. 
/   
/   When we write a packet to the ReflectorOutput he matches it's payload
/   to one of his streams and sends it there.
/   
/   To smooth the bandwitdth (server, not user) requirements of the reflected streams, the Sender
/   groups the ReflectorOutput's into buckets.  The input streams are reflected to
/   each bucket progressively later in time.  So rather than send a single packet
/   to say 1000 clients all at once, we send it to just the first 16, then then next 16 
/   100 ms later and so on.
/
/
/   intputs     ioWakeupTime - relative time to call us again in MSec
/               inFreeQueue - queue of free packets.
*/

void ReflectorSender::ReflectPackets(SInt64* ioWakeupTime, OSQueue* inFreeQueue)
{
	//in_addr addr;//fym
	//addr.S_un.S_addr = fStream->fStreamInfo.fSrcIPAddr;//fym
	//qtss_printf("\n%s ", inet_ntoa(addr));//fym

	//断点方法 _asm int 3;
	//qtss_printf("<");//fym
    if(!fStream->BufferEnabled()) // Call old routine for relays; they don't want buffering.
    {
		//qtss_printf("A");//fym
        this->ReflectRelayPackets(ioWakeupTime,inFreeQueue);
        return;
    }

    SInt64 currentTime = OS::Milliseconds();

    //make sure to reset these state variables
    fHasNewPackets = false; 
    fNextTimeToRun = 10000; // init to 10 secs
         
    if(fWriteFlag == qtssWriteFlagsIsRTCP)
        fNextTimeToRun = 1000;
   
    //determine if we need to send a receiver report to the multicast source
    if((fWriteFlag == qtssWriteFlagsIsRTCP) && (currentTime > (fLastRRTime + kRRInterval)))
    {
        fLastRRTime = currentTime;
        fStream->SendReceiverReport();
    }
    
    //the rest of this function must be atomic wrt the ReflectorSession, because
    //it involves iterating through the RTPSession array, which isn't thread safe
    OSMutexLocker locker(&fStream->fBucketMutex);
    
    // Check to see if we should update the session's bitrate average
    fStream->UpdateBitRate(currentTime);

    // where to start new clients in the q
    fFirstPacketInQueueForNewOutput = this->GetClientBufferStartPacketOffset(ReflectorStream::sFirstPacketOffsetMsec); 
  
/*
ReflectorPacket* thePacket = NULL;
if(fFirstPacketInQueueForNewOutput != NULL)
    thePacket = fFirstPacketInQueueForNewOutput->GetEnclosingObject();
if(thePacket == NULL)
    return;
  

    fFirstPacketInQueueForNewOutput = GetClientBufferNextPacketTime(thePacket->GetPacketRTPTime());
*/

	//qtss_printf("B%d", fStream->fNumBuckets);//fym
	//qtss_printf("B ");//fym
	UInt16 output_count = 0;
    for (UInt32 bucketIndex = 0; bucketIndex < fStream->fNumBuckets/*fym 16*/; bucketIndex++)
    {
		//qtss_printf("C ");//fym
		//qtss_printf("BK %d", fStream->fNumBuckets);//fym
		//qtss_printf("%d ", fStream->sBucketSize);//fym
        for (UInt32 bucketMemberIndex = 0; bucketMemberIndex < fStream->sBucketSize/*fym 16*/; bucketMemberIndex++)
        {
			ReflectorOutput* theOutput = fStream->fOutputArray[bucketIndex][bucketMemberIndex];

			//qtss_printf("\nNNN %d, %d", bucketIndex, bucketMemberIndex);//fym
            if(theOutput != NULL)
            {
				//qtss_printf("RRR %d, %d", bucketIndex, bucketMemberIndex);//fym
				//qtss_printf("D ");//fym
				/*fym 由于及时的关闭了ReflectorSession该判断已无必要
				if(false == theOutput->IsPlaying()) 
                    continue;
				*/

				//qtss_printf(".");//fym

                OSQueueElem*    packetElem = theOutput->GetBookMarkedPacket(&fPacketQueue); 
                if(packetElem  == NULL) // should only be a new output
				{
					packetElem = fFirstPacketInQueueForNewOutput; // everybody starts at the oldest packet in the buffer delay or uses a bookmark
					theOutput->fNewOutput = false;
				}

                SInt64  bucketDelay = ReflectorStream::sBucketDelayInMsec * (SInt64)bucketIndex;
                packetElem = this->SendPacketsToOutput(theOutput, packetElem,currentTime, bucketDelay);
                if(packetElem)
                {
                    ReflectorPacket*    thePacket = (ReflectorPacket*)packetElem->GetEnclosingObject();
					if(NULL == thePacket)//fym
						continue;
                    thePacket->fNeededByOutput = true; // flag to prevent removal in RemoveOldPackets
                    (void) theOutput->SetBookMarkPacket(packetElem); // store a reference to the packet
                }

				output_count++;
            } 
        }
    }

    this->RemoveOldPackets(inFreeQueue);
    fFirstNewPacketInQueue = NULL;

    //Don't forget that the caller also wants to know when we next want to run
    if(*ioWakeupTime == 0)
        *ioWakeupTime = fNextTimeToRun;
    else if((fNextTimeToRun > 0) && (*ioWakeupTime > fNextTimeToRun))
        *ioWakeupTime = fNextTimeToRun;
    // exit with fNextTimeToRun in real time, not relative time.
    fNextTimeToRun += currentTime;
    
}

OSQueueElem*    ReflectorSender::SendPacketsToOutput(ReflectorOutput* theOutput, OSQueueElem* currentPacket, SInt64 currentTime,  SInt64  bucketDelay)
{
	//qtss_printf(">");//fym
	OSQueueElem* lastPacket = currentPacket;
	OSQueueIter qIter(&fPacketQueue, currentPacket);  // starts from beginning if currentPacket == NULL, else from currentPacket                

	//qtss_printf("(%d)", fPacketQueue.GetLength());//fym

	UInt32 count = 0;
	QTSS_Error err = QTSS_NoErr;
	while ( !qIter.IsDone() )
	{
		currentPacket = qIter.GetCurrent();
		lastPacket = currentPacket;

		ReflectorPacket*    thePacket = (ReflectorPacket*)currentPacket->GetEnclosingObject();

		if(NULL == thePacket)//fym
			continue;

		SInt64  packetLateness =  bucketDelay;
		SInt64 timeToSendPacket = -1;

		//printf("packetLateness %qd, seq# %li\n", packetLateness, (long) DGetPacketSeqNumber( &thePacket->fPacketPtr ) );

		err = theOutput->WritePacket(&thePacket->fPacketPtr, fStream, fWriteFlag, packetLateness, &timeToSendPacket,&thePacket->fStreamCountID,&thePacket->fTimeArrived );
		//qtss_printf("%d ", thePacket->fPacketPtr.Len);//fym

		if(err == QTSS_WouldBlock)
		{ // call us again in # ms to retry on an EAGAIN

			if((timeToSendPacket > 0) && ( (fNextTimeToRun + currentTime) > timeToSendPacket )) // blocked but we are scheduled to wake up later
				fNextTimeToRun = timeToSendPacket - currentTime;

			if(theOutput->fLastIntervalMilliSec < 5 )
				theOutput->fLastIntervalMilliSec = 5;

			if( timeToSendPacket < 0 ) // blocked and we are behind
				fNextTimeToRun = theOutput->fLastIntervalMilliSec; // Use the last packet interval 

			if(fNextTimeToRun > 1000) //don't wait that long
				fNextTimeToRun = 1000;

			if(fNextTimeToRun < 5) //wait longer
				fNextTimeToRun = 5;

			if(theOutput->fLastIntervalMilliSec >= 1000) // allow up to 1 second max -- allow some time for the socket to clear and don't go into a tight loop if the client is gone.
				theOutput->fLastIntervalMilliSec = 1000;
			else
				theOutput->fLastIntervalMilliSec *= 2; // scale upwards over time

			//qtss_printf ( "Blocked ReflectorSender::SendPacketsToOutput timeToSendPacket=%qd fLastIntervalMilliSec=%qd fNextTimeToRun=%qd \n", timeToSendPacket, theOutput->fLastIntervalMilliSec, fNextTimeToRun);

			break;
		}

		count++;
		qIter.Next();

	}

	return lastPacket;
}

OSQueueElem*    ReflectorSender::GetClientBufferStartPacketOffset(SInt64 offsetMsec)
{
        
    OSQueueIter qIter(&fPacketQueue);// start at oldest packet in q
    SInt64 theCurrentTime = OS::Milliseconds();
    SInt64 packetDelay = 0;
    OSQueueElem* oldestPacketInClientBufferTime = NULL;
    
    
    while ( !qIter.IsDone() ) // start at oldest packet in q
    {
        OSQueueElem* elem = qIter.GetCurrent();
        //fym Assert( elem );
		if(NULL == elem)//fym
			break;
        qIter.Next();
       
        ReflectorPacket* thePacket = (ReflectorPacket*)elem->GetEnclosingObject();      
        //fym Assert( thePacket );
		if(NULL == thePacket)//fym
			break;
             
        packetDelay = theCurrentTime - thePacket->fTimeArrived;
        if(offsetMsec > ReflectorStream::sOverBufferInMsec)
            offsetMsec = ReflectorStream::sOverBufferInMsec;
            
        if( packetDelay <= (ReflectorStream::sOverBufferInMsec - offsetMsec) ) 
        {   
            oldestPacketInClientBufferTime = &thePacket->fQueueElem;
            break; // found the packet we need: done processing
        }
        
    }
    
    return oldestPacketInClientBufferTime;
}

void    ReflectorSender::RemoveOldPackets(OSQueue* inFreeQueue)
{
        
// Iterate through the senders queue to clear out packets
// Start at the oldest packet and walk forward to the newest packet
// 
    OSQueueIter removeIter(&fPacketQueue);
    SInt64 theCurrentTime = OS::Milliseconds();
    SInt64 packetDelay = 0;
    SInt64 currentMaxPacketDelay = 1;//尽可能降低延时 500;//fym 数据包的保存时间不宜过长 ReflectorStream::sMaxPacketAgeMSec;
    

    while ( !removeIter.IsDone() )
    {
        OSQueueElem* elem = removeIter.GetCurrent();
        Assert( elem );
    
        //at this point, move onto the next queue element, because we may be altering
        //the queue itself in the code below
        removeIter.Next();
    
        ReflectorPacket* thePacket = (ReflectorPacket*)elem->GetEnclosingObject();      
        //fym Assert( thePacket );
		if(NULL == thePacket)//fym
			break;

        //printf("ReflectorSender::RemoveOldPackets Packet %d in queue is %qd milliseconds old\n", DGetPacketSeqNumber( &thePacket->fPacketPtr ) ,theCurrentTime - thePacket->fTimeArrived);
    
            
        packetDelay = theCurrentTime - thePacket->fTimeArrived;
                
        // walk q and remove packets that are too old
		//fym 为避免包堆积引起一个session有多个请求时画面出现快速波动currentMaxPacketDelay不易过大
        if( !thePacket->fNeededByOutput && packetDelay > currentMaxPacketDelay) // delete based on late tolerance and whether a client is blocked on the packet
        {   // not needed and older than our required buffer
            thePacket->Reset();
            fPacketQueue.Remove( elem );
            inFreeQueue->EnQueue( elem );
        }
        else   
        {   // we want to keep all of these but we should reset the ones that should be aged out unless marked
            // as need the next time through reflect packets.
            
            thePacket->fNeededByOutput = false; //mark not needed.. will be set next time through reflect packets
            if(packetDelay <= currentMaxPacketDelay)  // this packet is going to be kept around as well as the ones that follow.
                break;
        }   
    }
    

}

UDPSocketPair* ReflectorSocketPool::ConstructUDPSocketPair()
{
    return NEW UDPSocketPair(NEW ReflectorSocket(), NEW ReflectorSocket());
}

void ReflectorSocketPool::DestructUDPSocketPair(UDPSocketPair *inPair)
{
    //The socket's run function may be executing RIGHT NOW! So we can't
    //just delete the thing, we need to send the sockets kill events.
    //Assert(inPair->GetSocketA()->GetLocalPort() > 0);

	//fym
	if(NULL == inPair)
		return;

    if(1)//fym necessary 否则导致内存泄漏！！！inPair->GetSocketA()->GetLocalPort() > 0)
    {
		if(NULL != ((ReflectorSocket*)inPair->GetSocketA()))
			((ReflectorSocket*)inPair->GetSocketA())->Signal(Task::kKillEvent);

		if(NULL != ((ReflectorSocket*)inPair->GetSocketB()))
			((ReflectorSocket*)inPair->GetSocketB())->Signal(Task::kKillEvent);
    }

    delete inPair;
	inPair = NULL;//fym necessary
}

ReflectorSocket::ReflectorSocket()
:   IdleTask(), 
    UDPSocket(NULL, Socket::kNonBlockingSocketType | UDPSocket::kWantsDemuxer), 
    fBroadcasterClientSession(NULL), 
    fLastBroadcasterTimeOutRefresh(0), 
    fSleepTime(0),
    fValidSSRC(0),
    fLastValidSSRCTime(0),
    fFilterSSRCs(true),
    fTimeoutSecs(30),
    fHasReceiveTime(false),
    fFirstReceiveTime(0),
    fFirstArrivalTime(0),
    fCurrentSSRC(0)

{
	//qtss_printf("\n<<<<<<<<<<<<<<ReflectorSocket>>>>>>>>>>>>");//fym
    //construct all the preallocated packets
    this->SetTaskName("ReflectorSocket");
    this->SetTask(this);

	//fym 事先写20个空包
    for (UInt32 numPackets = 0; numPackets < kNumPreallocatedPackets; numPackets++)
    {
        //If the local port # of this socket is odd, then all the packets
        //used for this socket are rtcp packets.
        ReflectorPacket* packet = NEW ReflectorPacket();
        fFreeQueue.EnQueue(&packet->fQueueElem);//put this packet onto the free queue
    }

}

ReflectorSocket::~ReflectorSocket()
{
    //qtss_printf("\nReflectorSocket::~ReflectorSocket");
	//fym OSMutexLocker locker(&fMutex);//fym

    while (fFreeQueue.GetLength() > 0)
    {
		ReflectorPacket* packet = (ReflectorPacket*)fFreeQueue.DeQueue()->GetEnclosingObject();

		if(NULL == packet)//fym
			continue;

        delete packet;
		packet = NULL;//fym for leak
    }
}

void    ReflectorSocket::AddSender(ReflectorSender* inSender)
{
    OSMutexLocker locker(this->GetDemuxer()->GetMutex());
    QTSS_Error err = this->GetDemuxer()->RegisterTask(inSender->fStream->fStreamInfo.fSrcIPAddr, 0, inSender);

	//in_addr addr;//fym
	//addr.S_un.S_addr = inSender->fStream->fStreamInfo.fSrcIPAddr;//fym
	//qtss_printf("\naddsender: %s", inet_ntoa(addr));//fym

	//fym
	/*if(!(inSender->fStream->fStreamInfo.fSrcIPAddr))
		qtss_printf(" a");*/

    //fym Assert(err == QTSS_NoErr);
	if(QTSS_NoErr != err)//fym
		return;
    fSenderQueue.EnQueue(&inSender->fSocketQueueElem);

	//fym qtss_printf("<%d> ", fSenderQueue.GetLength());//fym
}

void    ReflectorSocket::RemoveSender(ReflectorSender* inSender)
{
    OSMutexLocker locker(this->GetDemuxer()->GetMutex());
    fSenderQueue.Remove(&inSender->fSocketQueueElem);//fym 无法保证一定将该ReflectorSender从队列中删除!!!

	fSenderQueue.Clear();//fym 实际fSenderQueue中只有一个成员，故可以如此清除

    QTSS_Error err = this->GetDemuxer()->UnregisterTask(inSender->fStream->fStreamInfo.fSrcIPAddr, 0, inSender);
    //fym Assert(err == QTSS_NoErr);
}

SInt64 ReflectorSocket::Run()
{
    //We want to make sure we can't get idle events WHILE we are inside
    //this function. That will cause us to run the queues unnecessarily
    //and just get all confused.
	//qtss_printf("^");//fym

	this->CancelTimeout();

	Task::EventFlags theEvents = this->GetEvents();
	//if we have been told to delete ourselves, do so.
	if(theEvents & Task::kKillEvent)
		return -1;

	//qtss_printf("\n^ %d", theEvents);//fym
	//qtss_printf("^%d ", theEvents);//fym

	OSMutexLocker locker(this->GetDemuxer()->GetMutex());
	SInt64 theMilliseconds = OS::Milliseconds();

	//Only check for data on the socket if we've actually been notified to that effect
	//fym 每收到kReadEvent即调用recvfrom函数接受数据包
	/*fym 不再需要通过socket从转发源收包
	if(theEvents & Task::kReadEvent)
		this->GetIncomingData(theMilliseconds);
	*/

#if DEBUG
	//make sure that we haven't gotten here prematurely! This wouldn't mess
	//anything up, but it would waste CPU.
	if(theEvents & Task::kIdleEvent)
	{
		SInt32 temp = (SInt32)(fSleepTime - theMilliseconds);
		char tempBuf[20];
		qtss_sprintf(tempBuf,"%ld",temp);
		WarnV(fSleepTime <= theMilliseconds, tempBuf);
	}
#endif

	fSleepTime = 0;

	/*fym
	//fym
	if(theEvents & Task::kFYMInputEvent)
	{
		qtss_printf("Recv data! ");
		::Sleep(1000);
	}*/

	//Now that we've gotten all available packets, have the streams reflect
	UInt32 x = 0;
	{
		//fym OSMutexLocker sender_locker(fSenderQueue.GetMutex());//fym
		for (OSQueueIter iter(&fSenderQueue); !iter.IsDone(); iter.Next())
		{
			ReflectorSender* theSender = (ReflectorSender*)iter.GetCurrent()->GetEnclosingObject();

			if(theSender != NULL)//fym && theSender->ShouldReflectNow(theMilliseconds, &fSleepTime))
			{
				//in_addr addr;//fym
				//addr.S_un.S_addr = theSender->fStream->fStreamInfo.fSrcIPAddr;//fym
				//qtss_printf("\nS %s %d %d ", inet_ntoa(addr), theSender->fStream->fStreamInfo.fPort, x);//fym
				++x;

				//qtss_printf("~");//fym
				theSender->ReflectPackets(&fSleepTime, &fFreeQueue);
			}
		}
	}
	

#if DEBUG
	theMilliseconds = OS::Milliseconds();
#endif

	//For smoothing purposes, the streams can mark when they want to wakeup.
	if(fSleepTime > 0)
		this->SetIdleTimer(fSleepTime);
#if DEBUG
	//The debugging check above expects real time.
	fSleepTime += theMilliseconds;
#endif

	//this->Signal(Task::kFYMInputEvent);//fym
        
    return 0;
}


void ReflectorSocket::FilterInvalidSSRCs(ReflectorPacket* thePacket,Bool16 isRTCP)
{   // assume the first SSRC we see is valid and all others are to be ignored.

	if(NULL == thePacket)//fym
		return;

    if( thePacket->fPacketPtr.Len > 0) do 
    {
        SInt64 currentTime = OS::Milliseconds() / 1000;
        if(0 == fValidSSRC)
        {   fValidSSRC = thePacket->GetSSRC(isRTCP); // SSRC of 0 is allowed
            fLastValidSSRCTime = currentTime;
            //qtss_printf("socket=%lu FIRST PACKET fValidSSRC=%lu \n", (long unsigned) this,fValidSSRC);
            break;
        }
    
        UInt32 packetSSRC = thePacket->GetSSRC(isRTCP);
        if(packetSSRC != 0)
        {   
            if(packetSSRC == fValidSSRC)
            {   fLastValidSSRCTime = currentTime;
                //qtss_printf("socket=%lu good packet\n", (long unsigned) this );
                break;
            }
            
            //qtss_printf("socket=%lu bad packet packetSSRC= %lu fValidSSRC=%lu \n", (long unsigned) this,packetSSRC,fValidSSRC);
            thePacket->fPacketPtr.Len = 0; // ignore this packet wrong SSRC
        }
        
        // this executes whenever an invalid SSRC is found -- maybe the original stream ended and a new one is now active
        if( (fLastValidSSRCTime + fTimeoutSecs) < currentTime) // fValidSSRC timed out --no packets with this SSRC seen for awhile
        {   fValidSSRC = 0; // reset the valid SSRC with the next packet's SSRC
            //qtss_printf("RESET fValidSSRC\n");
        }

    }while (false);
}

Bool16 ReflectorSocket::ProcessPacket(const SInt64& inMilliseconds,ReflectorPacket* thePacket,UInt32 theRemoteAddr,UInt16 theRemotePort)
{   
    Bool16 done = false; // stop when result is true
    if(thePacket != NULL) do
    {
		/*fym
		if(GetLocalPort() & 1)
            thePacket->fIsRTCP = true;//奇数端口为RTCP包
        else
            thePacket->fIsRTCP = false;//偶数端口为RTP包
		*/

		thePacket->fIsRTCP = false;
       
        /*fym if(fBroadcasterClientSession != NULL) // alway refresh timeout even if we are filtering.
        {   if( (inMilliseconds - fLastBroadcasterTimeOutRefresh) > kRefreshBroadcastSessionIntervalMilliSecs)
            {   QTSS_RefreshTimeOut(fBroadcasterClientSession);
                fLastBroadcasterTimeOutRefresh = inMilliseconds;
            }
        }*/
   
		//fym 如果在GetIncomingData函数中没有向从队列出去的数据包中输入接收到的数据，那么该空数据包会重新被塞入队列中
		if(thePacket->fPacketPtr.Len == 0)
        {
            //put the packet back on the free queue, because we didn't actually
            //get any data here.
            fFreeQueue.EnQueue(&thePacket->fQueueElem);
            this->RequestEvent(EV_RE);
			//qtss_printf("\n2true");//fym
            done = true;
            //qtss_printf("ReflectorSocket::ProcessPacket no more packets on this socket!\n");
            break;//no more packets on this socket!
        }
        
        /*fym 如何处理RTCP包
		if(thePacket->IsRTCP())
        {
            //if this is a new RTCP packet, check to see if it is a sender report.
            //We should only reflect sender reports. Because RTCP packets can't have both
            //an SR & an RR, and because the SR & the RR must be the first packet in a
            //compound RTCP packet, all we have to do to determine this is look at the
            //packet type of the first packet in the compound packet.
            RTCPPacket theRTCPPacket;
            if((!theRTCPPacket.ParsePacket((UInt8*)thePacket->fPacketPtr.Ptr, thePacket->fPacketPtr.Len)) ||
                (theRTCPPacket.GetPacketType() != RTCPSRPacket::kSRPacketType))
            {
                //pretend as if we never got this packet
                fFreeQueue.EnQueue(&thePacket->fQueueElem);
                done = true;
                break;
            }
        }*/
        
		/*fym
        // Only reflect one SSRC stream at a time.
        // Pass the packet and whether it is an RTCP or RTP packet based on the port number.
        if(fFilterSSRCs)
            this->FilterInvalidSSRCs(thePacket,GetLocalPort() & 1);// thePacket->fPacketPtr.Len is set to 0 for invalid SSRCs.
		*/
                 
		// Find the appropriate ReflectorSender for this packet.
		//packet都与某一ReflectorSender绑定了
		ReflectorSender* theSender = (ReflectorSender*)(this->GetDemuxer()->GetTask(theRemoteAddr, 0));

		//in_addr addr;//fym
		//addr.S_un.S_addr = theRemoteAddr;//fym
		//qtss_printf("\nprocesspacket: %s", inet_ntoa(addr));//fym

		// If there is a generic sender for this socket, use it.
		if(theSender == NULL)
		{
			theSender = (ReflectorSender*)this->GetDemuxer()->GetTask(0, 0);
			//qtss_printf("\nprocesspacket: NULL");//fym
		}

		if(theSender == NULL)
		{   
			//UInt16* theSeqNumberP = (UInt16*)thePacket->fPacketPtr.Ptr;
			//qtss_printf("ReflectorSocket::ProcessPacket no sender found for packet! sequence number=%d\n",ntohs(theSeqNumberP[1]));
			fFreeQueue.EnQueue(&thePacket->fQueueElem); // don't process the packet
			//qtss_printf("\n1true");//fym
			done = true;
			break;
		}
            
        //fym Assert(theSender != NULL); // at this point we have a sender
		if(NULL == theSender)//fym
			return false;
            
        const UInt32 maxQSize = 4000;
               
		// Check to see if we need to set the remote RTCP address
		// for this stream. This will be necessary if the source is unicast.
#ifdef NAT_WORKAROUND
		/*fym if((theRemoteAddr != 0) && ((theSender->fStream->fDestRTCPAddr == 0) || (thePacket->IsRTCP()))) // Submitted fix from  denis@berlin.ccc.de
		{
			Assert(!SocketUtils::IsMulticastIPAddr(theSender->fStream->fStreamInfo.fDestIPAddr));
			Assert(theRemotePort != 0);
			theSender->fStream->fDestRTCPAddr = theRemoteAddr;
			theSender->fStream->fDestRTCPPort = theRemotePort;
			//qtss_printf("\nRTCP Port: %d", theRemotePort);//fym
	
			// RTCPs are always on odd ports, so check to see if this port is an
			// RTP port, and if so, just add 1.
			if(!(thePacket->IsRTCP()) && !(theRemotePort & 1))
				theSender->fStream->fDestRTCPPort++;
		}*/
#else
		if((theRemoteAddr != 0) && (theSender->fStream->fDestRTCPAddr == 0)) 
		{
			// If the source is multicast, this shouldn't be necessary
			Assert(!SocketUtils::IsMulticastIPAddr(theSender->fStream->fStreamInfo.fDestIPAddr));
			Assert(theRemotePort != 0);
			theSender->fStream->fDestRTCPAddr = theRemoteAddr;
			theSender->fStream->fDestRTCPPort = theRemotePort;
                
			// RTCPs are always on odd ports, so check to see if this port is an
			// RTP port, and if so, just add 1.
			if(!(theRemotePort & 1))
				theSender->fStream->fDestRTCPPort++;
		}
#endif //NAT_WORKAROUND

		thePacket->fStreamCountID = ++(theSender->fStream->fPacketCount);
		thePacket->fBucketsSeenThisPacket = 0;
		thePacket->fTimeArrived = inMilliseconds;//fym 从1970年元旦零点到现在的毫秒数
		theSender->fPacketQueue.EnQueue(&thePacket->fQueueElem);//fym processpacket的目的所在!    
		if( theSender->fFirstNewPacketInQueue == NULL )
			theSender->fFirstNewPacketInQueue = &thePacket->fQueueElem;                 
		theSender->fHasNewPackets = true;
     
#if 0//fym   
		if(!(thePacket->IsRTCP()))
		{
			// don't check for duplicate packets, they may be needed to keep in sync.
			// Because this is an RTP packet make sure to atomic add this because
			// multiple sockets can be adding to this variable simultaneously
			(void)atomic_add(&theSender->fStream->fBytesSentInThisInterval, thePacket->fPacketPtr.Len);
			//printf("ReflectorSocket::ProcessPacket received RTP id=%qu\n", thePacket->fStreamCountID); 
			theSender->fStream->SetHasFirstRTP(true);
		}
		else 
		{
			//printf("ReflectorSocket::ProcessPacket received RTCP id=%qu\n", thePacket->fStreamCountID); 
			theSender->fStream->SetHasFirstRTCP(true);
			theSender->fStream->SetFirst_RTCP_RTP_Time(thePacket->GetPacketRTPTime());
			theSender->fStream->SetFirst_RTCP_Arrival_Time(thePacket->fTimeArrived);
		}

		//fym 其实在此即可返回

		if(ReflectorStream::sUsePacketReceiveTime && thePacket->fPacketPtr.Len > 12)
		{
			UInt32 offset = thePacket->fPacketPtr.Len;
			char* theTag = ((char*) thePacket->fPacketPtr.Ptr + offset) - 12;
			UInt64* theValue =  (UInt64*) ((char*)  ( (char*)  thePacket->fPacketPtr.Ptr +  offset) - 8);
                                
			if(0 == ::strncmp(theTag,"aktt",4))
			{
				UInt64 theReceiveTime = OS::NetworkToHostSInt64(*theValue);
				UInt32 theSSRC = thePacket->GetSSRC(theRemotePort & 1); // use to check if broadcast has restarted so we can reset
                    
				if( !this->fHasReceiveTime || (this->fCurrentSSRC != theSSRC) )
				{
					this->fCurrentSSRC = theSSRC;
					this->fFirstArrivalTime = thePacket->fTimeArrived;
					this->fFirstReceiveTime = theReceiveTime;
					this->fHasReceiveTime = true;
				}
                    
                       
				SInt64 packetOffsetFromStart = theReceiveTime - this->fFirstReceiveTime; // packets arrive at time 0 and fill forward into the future
				thePacket->fTimeArrived = this->fFirstArrivalTime + packetOffsetFromStart; // offset starts negative by over buffer amount
				thePacket->fPacketPtr.Len -= 12;
                    
				SInt64 arrivalTimeOffset = thePacket->fTimeArrived - inMilliseconds;
				if( arrivalTimeOffset > ReflectorStream::sMaxFuturePacketMSec ) // way out in the future.
					thePacket->fTimeArrived = inMilliseconds + ReflectorStream::sMaxFuturePacketMSec; //keep it but only for sMaxFuturePacketMSec =  (sMaxPacketAgeMSec <-- current --> sMaxFuturePacketMSec)
				
				// if it was in the past we leave it alone because it will be deleted after processing.
                    
                    
				//printf("ReflectorSocket::ProcessPacket packetOffsetFromStart=%f\n", (Float32) packetOffsetFromStart / 1000);
			}
            
		}
             
		//printf("ReflectorSocket::GetIncomingData has packet from time=%qd src addr=%lu src port=%u packetlen=%lu\n",inMilliseconds, theRemoteAddr,theRemotePort,thePacket->fPacketPtr.Len);
		if(0) //turn on / off buffer size checking --  pref can go here if we find we need to adjust this
		if(theSender->fPacketQueue.GetLength() > maxQSize) //don't grow memory too big
		{ 
			char outMessage[256];
			sprintf(outMessage,"Packet Queue for port=%d qsize = %ld hit max qSize=%lu", theRemotePort,theSender->fPacketQueue.GetLength(), maxQSize);
			WarnV(false, outMessage); 
		}
#endif
       
    } while(false);
    
    return done;
}


void ReflectorSocket::GetIncomingData(const SInt64& inMilliseconds)
{
    OSMutexLocker locker(this->GetDemuxer()->GetMutex());
    UInt32 theRemoteAddr = 0;
    UInt16 theRemotePort = 0;
    //get all the outstanding packets for this socket
    while (true)
    {
		//qtss_printf("{");//fym
        //get a packet off the free queue.
        ReflectorPacket* thePacket = this->GetPacket();

		if(NULL == thePacket)//fym
			break;

        thePacket->fPacketPtr.Len = 0;
        (void)this->RecvFrom(&theRemoteAddr, &theRemotePort, thePacket->fPacketPtr.Ptr,
                            ReflectorPacket::kMaxReflectorPacketSize, &thePacket->fPacketPtr.Len);

		//qtss_printf("\ntheRemotePort: %d, len: %d", theRemotePort, thePacket->fPacketPtr.Len);//fym
                      
        if(this->ProcessPacket(inMilliseconds,thePacket,theRemoteAddr, theRemotePort))
            break;
		//qtss_printf("}");//fym
            
        //printf("ReflectorSocket::GetIncomingData \n");
    }
    
}

ReflectorPacket* ReflectorSocket::GetPacket()
{
    OSMutexLocker locker(this->GetDemuxer()->GetMutex());
    if(fFreeQueue.GetLength() == 0)
        //if the port number of this socket is odd, this packet is an RTCP packet.
        return NEW ReflectorPacket();
    else
        return (ReflectorPacket*)fFreeQueue.DeQueue()->GetEnclosingObject();
}

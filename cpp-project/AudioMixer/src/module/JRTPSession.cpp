// **********************************************************************
// ×÷Õß: ¸µÓÓÃú
// °æ±¾: 1.0
// ÈÕÆÚ: 2011-01 ~ 2011-11
// ÐÞ¸ÄÀúÊ·¼ÇÂ¼: 
// ÈÕÆÚ, ×÷Õß, ±ä¸üÄÚÈÝ
// **********************************************************************
#include "rtpsession.h"
#include "rtppacket.h"
#include "rtpudpv4transmitter.h"
#include "rtpipv4address.h"
#include "rtpsessionparams.h"
#include "rtperrors.h"
#include "rtpsourcedata.h"
#include "rtpstructs.h"
#include <stdlib.h>
#include <stdio.h>
#include <iostream>
#include <string>

#include "JRTPSession.h"

using namespace ScheduleServer;
using namespace jrtplib;
using namespace std;

void MyRTPSession::OnPollThreadStep()
{
	BeginDataAccess();
		
	// check incoming packets
	if (GotoFirstSourceWithData())
	{
		do
		{
			RTPPacket *pack;
			RTPSourceData *srcdat;
			
			srcdat = GetCurrentSourceInfo();
			
			while ((pack = GetNextPacket()) != NULL)
			{
				ProcessRTPPacket(*srcdat,*pack);
				DeletePacket(pack);
			}
		} while (GotoNextSourceWithData());
	}
		
	EndDataAccess();
}

void MyRTPSession::ProcessRTPPacket(const RTPSourceData& srcdat,const RTPPacket& packet)
{
	// You can inspect the packet and the source's info here
	//std::cout << "Got packet " << packet.GetExtendedSequenceNumber() << " from SSRC " << srcdat.GetSSRC() << std::endl;
    
    if(NULL == _rtp_call_back_func) return;
    
    unsigned long src = srcdat.GetSSRC();
    
    char src_ip[16];
    memset(src_ip, 0, sizeof(src_ip));
    
    unsigned short src_port = 0;
    
    if(RTPAddress::IPv4Address == srcdat.GetRTPDataAddress()->GetAddressType())
    {
        const RTPIPv4Address* addr = dynamic_cast<const RTPIPv4Address*>(srcdat.GetRTPDataAddress());
        
        unsigned long ip = addr->GetIP();        
        sprintf(src_ip, "%d.%d.%d.%d", (ip >> 24), (0xff & (ip >> 16)), (0xff & (ip >> 8)), (0xff & ip));
        
        src_port = addr->GetPort();
        
        //cout << "Addr: " << src_ip << " : " << src_port;
    }
    
    (*_rtp_call_back_func)(packet.GetPayloadData(), packet.GetPayloadLength(),//packet.GetPacketData(), packet.GetPacketLength(),
                        packet.GetExtendedSequenceNumber(), packet.GetTimestamp(),
                        packet.GetSSRC(), packet.GetPayloadType(), packet.HasMarker(),
                        src_ip, src_port);
}

CRTPRecvSession::CRTPRecvSession(unsigned short port) :
_available(false)
{
    //port must more than 10000!!!
	RTPUDPv4TransmissionParams transparams;
	RTPSessionParams sessparams;

	sessparams.SetOwnTimestampUnit(1.0/100000.0);
	sessparams.SetAcceptOwnPackets(true);
	transparams.SetPortbase(port);
	transparams.SetRTPReceiveBuffer(262144);//Ä¬ÈÏÎª32768

    //RTPSession::Create -> RTPSession::InternalCreate
	int status = _rtp_session.Create(sessparams, &transparams);
	
	if(0 > status)
	{
		//LOG_WRITE("CRTPRecvSession Error: " + RTPGetErrorString(status), 1, true);
		return;
	}

	_available = true;
}

CRTPRecvSession::~CRTPRecvSession()
{
    _rtp_session.BYEDestroy(RTPTime(10,0),0,0);
}


SS_Error CRTPRecvSession::add_rtp_header(unsigned char* data, const unsigned long& length,
										const unsigned char& payload_type, const bool& mark,
										const unsigned short& sequence, const unsigned long& timestamp, const unsigned long& ssrc)
{
	if(sizeof(RTPHeader) >= length)
		return SS_AddRTPHeaderFail;

	RTPHeader* header = reinterpret_cast<RTPHeader*>(data);
	
	header->csrccount = 0;
	header->extension = 0;
	header->padding = 0;
	header->version = 2;
	header->payloadtype = payload_type;
	header->marker = (false == mark) ? 0 : 1;
	header->sequencenumber = htons(sequence);;
	header->timestamp = htonl(timestamp);
	header->ssrc = htonl(ssrc);

	return SS_NoErr;
}

int CRTPRecvSession::add_dest_addr(const std::string dest_ip, const unsigned short dest_port)
{
    std::cout << "add " << dest_ip << ":" << dest_port << endl;
    return _rtp_session.AddDestination(jrtplib::RTPIPv4Address(ntohl(inet_addr(dest_ip.c_str())), dest_port));
}

int CRTPRecvSession::remove_dest_addr(const std::string dest_ip, const unsigned short dest_port)
{
    return _rtp_session.DeleteDestination(jrtplib::RTPIPv4Address(ntohl(inet_addr(dest_ip.c_str())), dest_port));
}

SS_Error CRTPRecvSession::send_rtp_packet(const unsigned char* payload, const unsigned long& length, const unsigned char payload_type, const bool mark, const unsigned long timestamp_inc, const unsigned long SSRC)
{
	//if(false == _available) return SS_RTPSendSessionUnAvailable;

	//if(0 == dest_addr.sin_addr.s_addr || 0 == dest_addr.sin_port) return SS_NoErr;

	/*struct sockaddr_in dest_addr;
	memset(&dest_addr, 0, sizeof(struct sockaddr_in));
	dest_addr.sin_family = AF_INET;
	dest_addr.sin_addr.s_addr = dest_ip;//inet_addr(dest_ip.c_str());
	dest_addr.sin_port = htons(dest_port);*/

	//if(length != _rtp_session.SendPacketSS(packet, length, &dest_addr)) std::cout << ".";
    
    //int SendPacket(const void *data,size_t len);
    //int SendPacket(const void *data,size_t len, uint8_t pt,bool mark,uint32_t timestampinc);
    //int status = _rtp_session.SendPacket(packet, length);
    //int status = _rtp_session.SendPacket((void *)"1234567890",10,0,false,10);
    
    //std::cout << "send to " << SSRC << " " << length << endl;
    int status = _rtp_session.SendPacket(payload, length, payload_type, mark, timestamp_inc, SSRC);

	return SS_NoErr;
}

/*SS_Error CRTPRecvSession::send_rtp_packet(const std::vector<std::pair<unsigned long, struct sockaddr_in>>& dest_addr_vec,
									const unsigned char* packet, const unsigned long& length)
{
	if(false == _available)
		return SS_RTPSendSessionUnAvailable;

	for(auto iter = dest_addr_vec.begin(); iter != dest_addr_vec.end(); ++iter)
	{
		if(0 == reinterpret_cast<const struct sockaddr_in*>(&(iter->second).sin_addr.s_addr || 0 == reinterpret_cast<const struct sockaddr_in*>(&(iter->second).sin_port)))
			continue;

		//Èç·¢ËÍ¸øÐéÄâUA£¬Îª±ãÓÚÇø·ÖÒôÊÓÆµÊý¾ÝµÄÄ¿µÄUA£¬Ðè½«SSRC×Ö¶Î¸ÄÎª½ÓÊÕUAµÄID
		if(true)// == CMobileUserAgent::is_virtual_ua(iter->first))
		{
			change_rtp_ssrc(const_cast<unsigned char*>(packet), length, iter->first);
		}

		if(length != _rtp_session.SendPacketSS(packet, length, reinterpret_cast<const struct sockaddr_in*>(&(iter->second))))
			cout << "'";
	}

	return SS_NoErr;
}*/

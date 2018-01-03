
#include "rtpsession.h"
#include "rtppacket.h"
#include "rtpudpv4transmitter.h"
#include "rtpipv4address.h"
#include "rtpsessionparams.h"
#include "rtperrors.h"
#include "rtpsourcedata.h"
#include "jthread.h"
#include <stdlib.h>
#include <stdio.h>
#include <iostream>
#include <string>

using namespace jthread;
using namespace jrtplib;

//
// This function checks if there was a RTP error. If so, it displays an error
// message and exists.
//

void checkerror(int rtperr)
{
	if (rtperr < 0)
	{
		std::cout << "ERROR: " << RTPGetErrorString(rtperr) << std::endl;
		exit(-1);
	}
}

int main1(int argc, char **argv)
{
	printf("hello world\n");
    
    #ifdef RTP_SOCKETTYPE_WINSOCK
	WSADATA dat;
	WSAStartup(MAKEWORD(2,2),&dat);
#endif // RTP_SOCKETTYPE_WINSOCK
	
	RTPSession sess;
	uint16_t portbase,destport;
	uint32_t destip;
	std::string ipstr;
	int status,i,num;

	std::cout << "Using version " << RTPLibraryVersion::GetVersion().GetVersionString() << std::endl;

	// First, we'll ask for the necessary information
		
	std::cout << "Enter local portbase:" << std::endl;
	std::cin >> portbase;
	std::cout << std::endl;
	
	std::cout << "Enter the destination IP address" << std::endl;
	std::cin >> ipstr;
	destip = inet_addr(ipstr.c_str());
	if (destip == INADDR_NONE)
	{
		std::cerr << "Bad IP address specified" << std::endl;
		return -1;
	}
	
	// The inet_addr function returns a value in network byte order, but
	// we need the IP address in host byte order, so we use a call to
	// ntohl
	destip = ntohl(destip);
	
	std::cout << "Enter the destination port" << std::endl;
	std::cin >> destport;
	
	std::cout << std::endl;
	std::cout << "Number of packets you wish to be sent:" << std::endl;
	std::cin >> num;
	
	// Now, we'll create a RTP session, set the destination, send some
	// packets and poll for incoming data.
	
	RTPUDPv4TransmissionParams transparams;
	RTPSessionParams sessparams;
	
	// IMPORTANT: The local timestamp unit MUST be set, otherwise
	//            RTCP Sender Report info will be calculated wrong
	// In this case, we'll be sending 10 samples each second, so we'll
	// put the timestamp unit to (1.0/10.0)
	sessparams.SetOwnTimestampUnit(1.0/10.0);		
	
	sessparams.SetAcceptOwnPackets(true);
	transparams.SetPortbase(portbase);
	status = sess.Create(sessparams,&transparams);	
	checkerror(status);
	
	RTPIPv4Address addr(destip,destport);
	
	status = sess.AddDestination(addr);
	checkerror(status);
	
	for (i = 1 ; i <= num ; i++)
	{
		printf("\nSending packet %d/%d\n",i,num);
		
		// send the packet
		status = sess.SendPacket((void *)"1234567890",10,0,false,10, 1);
		checkerror(status);
		
		sess.BeginDataAccess();
		
		// check incoming packets
		if (sess.GotoFirstSourceWithData())
		{
			do
			{
				RTPPacket *pack;
				
				while ((pack = sess.GetNextPacket()) != NULL)
				{
					// You can examine the data here
					printf("Got packet !\n");
					
					// we don't longer need the packet, so
					// we'll delete it
					sess.DeletePacket(pack);
				}
			} while (sess.GotoNextSourceWithData());
		}
		
		sess.EndDataAccess();

#ifndef RTP_SUPPORT_THREAD
		status = sess.Poll();
		checkerror(status);
#endif // RTP_SUPPORT_THREAD
		
		RTPTime::Wait(RTPTime(1,0));
	}
	
	sess.BYEDestroy(RTPTime(10,0),0,0);

#ifdef RTP_SOCKETTYPE_WINSOCK
	WSACleanup();
#endif // RTP_SOCKETTYPE_WINSOCK

	return 0;
}

class MyRTPSession : public RTPSession
{
protected:
	void OnPollThreadStep();
	void ProcessRTPPacket(const RTPSourceData &srcdat,const RTPPacket &rtppack);
};

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

void MyRTPSession::ProcessRTPPacket(const RTPSourceData &srcdat,const RTPPacket &rtppack)
{
	// You can inspect the packet and the source's info here
	std::cout << "Got packet " << rtppack.GetExtendedSequenceNumber() << " from SSRC " << srcdat.GetSSRC() << std::endl;
}

class SignalThread : public JThread
{
public:
	SignalThread()
	{
	}

	~SignalThread()
	{
		while (IsRunning())
		{
			std::cout << "Waiting for thread to finish" << std::endl;
			RTPTime::Wait(RTPTime(1.0));
		}
	}
private:
	void *Thread()
	{
		JThread::ThreadStarted();

		std::cout << "-------------------------------Thread started, waiting seconds before sending abort signal" << std::endl;
		//RTPTime::Wait(RTPTime(2));
        RTPTime::Wait(RTPTime(5, 200));
		std::cout << "Sending abort signals" << std::endl;		

		std::cout << "=============================Thread finished" << std::endl;
		return 0;
	}
};

//
// The main routine
// 

/*int main(int argc, char **argv)
{
#ifdef RTP_SOCKETTYPE_WINSOCK
	WSADATA dat;
	WSAStartup(MAKEWORD(2,2),&dat);
#endif // RTP_SOCKETTYPE_WINSOCK

    SignalThread thread;
    thread.Start();
	
	MyRTPSession sess;
	uint16_t portbase;
	std::string ipstr;
	int status,num;

        // First, we'll ask for the necessary information
		
	std::cout << "Enter local portbase:" << std::endl;
	std::cin >> portbase;
	std::cout << std::endl;
	
	std::cout << std::endl;
	std::cout << "Number of seconds you wish to wait:" << std::endl;
	std::cin >> num;
	
	// Now, we'll create a RTP session, set the destination
	// and poll for incoming data.
	
	RTPUDPv4TransmissionParams transparams;
	RTPSessionParams sessparams;
	
	// IMPORTANT: The local timestamp unit MUST be set, otherwise
	//            RTCP Sender Report info will be calculated wrong
	// In this case, we'll be just use 8000 samples per second.
	sessparams.SetOwnTimestampUnit(1.0/8000.0);		
	
	transparams.SetPortbase(portbase);
	status = sess.Create(sessparams,&transparams);	
	checkerror(status);
	
	// Wait a number of seconds
	RTPTime::Wait(RTPTime(num,0));
	
	sess.BYEDestroy(RTPTime(10,0),0,0);

#ifdef RTP_SOCKETTYPE_WINSOCK
	WSACleanup();
#endif // RTP_SOCKETTYPE_WINSOCK
	return 0;
}*/

#include "singleton.h"
#include "JRTPSession.h"
#include "ConfigBox.h"
#include "ScheduleServer.h"

using namespace ScheduleServer;

void on_recv_rtp_packet(const unsigned char* data, const unsigned long& length,
                        const unsigned short& sequence, const unsigned long& timestamp,
                        const unsigned long& ssrc, const unsigned char&payload_type, const bool& mark)
{
    std::cout << "Got packet at " << timestamp << " from SSRC " << ssrc << " length " << length << " sequence " << sequence << std::endl;
    std::cout << "Data " << data << std::endl;
}

#include "AudioRecvThread.h"

int main(int argc, char **argv)
{
#if 0
    //SignalThread thread;
    //thread.Start();
    SINGLETON(SignalThread).Start();
    
    //CAudioRecvThread audio_recv_thread;
    //audio_recv_thread.Start();
    
    CRTPRecvSession rtp_recv_session(8888);
    
    rtp_recv_session.set_rtp_callback(on_recv_rtp_packet);
    
    rtp_recv_session.add_dest_addr("127.0.0.1", 8888);
    
    const int num = 20;
	for (int i = 1 ; i <= num ; i++)
	{
		printf("\nSending packet %d/%d\n",i,num);
        
        //rtp_recv_session.send_rtp_packet((const unsigned char*)"1234567890",10);
        unsigned char temp[20];
        ::memset(temp, 'a', sizeof(temp));
        //rtp_recv_session.add_rtp_header(temp, 20, 1, true, 1, clock(), 1);
        
        rtp_recv_session.send_rtp_packet(temp, 20, 1, true, 10, 1);
		
		RTPTime::Wait(RTPTime(1,0));
	}
#endif

	//读取配置文件
	//SINGLETON(CConfigBox).load("ScheduleServer.ini");

	//启动服务
	try
	{
		if(SS_NoErr != SINGLETON(CScheduleServer).start("./"))//启动服务
		{
			std::cout << "<FAIL> ScheduleServer failed in starting, please press any key to exit!" << std::endl;
			std::cin.get();
		}
		else//处理控制台命令
		{
			SINGLETON(CScheduleServer).wait_for_shutdown();
		}

		SINGLETON(CScheduleServer).shutdown();

		return 0;
	}
	catch(...)
	{
		std::cout << "<FAIL> ScheduleServer failed in stopping!" << std::endl;
		return -1;
	}
    
	return 0;
}

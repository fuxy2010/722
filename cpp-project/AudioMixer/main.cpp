/*#include "rtpsession.h"
#include "rtppacket.h"
#include "rtpudpv4transmitter.h"
#include "rtpipv4address.h"
#include "rtpsessionparams.h"
#include "rtperrors.h"
#include "rtpsourcedata.h"
#include "jthread.h"
#include "ScheduleServer.h"*/
#include <stdlib.h>
#include <stdio.h>
#include <iostream>
#include <string>

/*#ifndef __cplusplus
#define __cplusplus
#endif*/

#include "AudioMixer.h"

//using namespace jthread;
//using namespace jrtplib;

/*void checkerror(int rtperr)
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

int main0(int argc, char **argv)
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
}

#include "singleton.h"
#include "JRTPSession.h"
#include "ConfigBox.h"
#include "ScheduleServer.h"

using namespace ScheduleServer;

void on_recv_rtp_packet(const unsigned char* data, const unsigned long& length,
                        const unsigned short& sequence, const unsigned long& timestamp,
                        const unsigned long& ssrc, const unsigned char&payload_type, const bool& mark,
                        const char* src_ip, const unsigned short src_port)
{
    std::cout << "Got packet at " << timestamp << " from SSRC " << ssrc << " length " << length << " sequence " << sequence << " from " << src_ip << ":" << src_port << std::endl;
    std::cout << "Data " << data << std::endl;
}

#include <alsa/asoundlib.h>

#include "PCMPlayer.h"

int alsa_play3()
{
    std::string filename = "1.pcm";
    //std::cout << "Enter pcm file name:" << std::endl;
    //std::cin >> filename;
    //std::cout << std::endl;
    FILE* file = fopen(filename.c_str(), "rb");
    
    ScheduleServer::CPCMPlayer player;
    
    short* frame = (short*) malloc(FRAME_LENGTH_IN_BYTE);

    int count = 0;
    struct  timeval  start;
    struct  timeval  end;
        
    while(true)
    {
        {
            size_t read_len = fread(frame, sizeof(short), FRAME_LENGTH_IN_SHORT, file);
            if(FRAME_LENGTH_IN_SHORT != read_len)
            {
                fseek(file, 0, SEEK_SET);
                continue;
            }
            
            std::cout << "play " << read_len << " " << ++ count << std::endl;
            
            //usleep(60000);//RTPTime::Wait(RTPTime(0,60));
            usleep(100);
        }
        
        //gettimeofday(&end,NULL);
        //printf("================== timer = %ld us\n", 1000000 * (end.tv_sec-start.tv_sec)+ end.tv_usec-start.tv_usec);
        //start = end;
        
        player.play(frame);
        //unsigned char temp[256];
        //int len = codec.encode(frame, temp);        
        //std::cout << "enc " << len << std::endl;
    }
    
    free(frame);
}

int alsa_check()
{
    int val;

    printf("ALSA library version: %s\n",
              SND_LIB_VERSION_STR);

    printf("\nPCM stream types:\n");
    for (val = 0; val <= SND_PCM_STREAM_LAST; val++)
        printf(" %s\n",
          snd_pcm_stream_name((snd_pcm_stream_t)val));

    printf("\nPCM access types:\n");
    for (val = 0; val <= SND_PCM_ACCESS_LAST; val++)
        printf(" %s\n",
          snd_pcm_access_name((snd_pcm_access_t)val));

    printf("\nPCM formats:\n");
    for (val = 0; val <= SND_PCM_FORMAT_LAST; val++)
        if (snd_pcm_format_name((snd_pcm_format_t)val)
          != NULL)
          printf(" %s (%s)\n",
            snd_pcm_format_name((snd_pcm_format_t)val),
            snd_pcm_format_description(
                               (snd_pcm_format_t)val));

    printf("\nPCM subformats:\n");
    for (val = 0; val <= SND_PCM_SUBFORMAT_LAST;
           val++)
        printf(" %s (%s)\n",
          snd_pcm_subformat_name((
            snd_pcm_subformat_t)val),
          snd_pcm_subformat_description((
            snd_pcm_subformat_t)val));

    printf("\nPCM states:\n");
    for (val = 0; val <= SND_PCM_STATE_LAST; val++)
        printf(" %s\n",
               snd_pcm_state_name((snd_pcm_state_t)val));

    return 0;
}


int main2(int argc, char **argv)
{
    alsa_check();
    
    //alsa_play3();
    //alsa_play5();
    //return 0;
    
    //alsa_record();
    //return 0;
    
    //inet_addr("123.123.123.123");
    
#if 0
    //SignalThread thread;
    //thread.Start();
    //SINGLETON(SignalThread).Start();
    
    //CAudioRecvThread audio_recv_thread;
    //audio_recv_thread.Start();
    
    CRTPRecvSession rtp_recv_session1(10000);
    CRTPRecvSession rtp_recv_session2(20000);
    
    //rtp_recv_session1.set_rtp_callback(on_recv_rtp_packet);
    rtp_recv_session2.set_rtp_callback(on_recv_rtp_packet);
    
    rtp_recv_session1.add_dest_addr("127.0.0.1", 10000);
    rtp_recv_session1.add_dest_addr("127.0.0.1", 20000);
    
    //rtp_recv_session1.add_dest_addr("192.168.1.104", 30000);
    //rtp_recv_session1.add_dest_addr("192.168.1.104", 20000);
    
    const int num = 2000;
	for (int i = 1 ; i <= num ; i++)
	{
		printf("\nSending packet %d/%d\n",i,num);
        
        unsigned char temp[20];
        ::memset(temp, 'a', sizeof(temp));
        
        rtp_recv_session1.send_rtp_packet(temp, 20, 1, true, 10, 1);
		
		RTPTime::Wait(RTPTime(0,10));
	}
#endif

	//读取配置文件
	//SINGLETON(CConfigBox).load("ScheduleServer.ini");

	//启动服务
	try
	{
		if(SS_NoErr != SINGLETON(CScheduleServer).start(MODE_CONFERENCE))//启动服务
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
}*/

void conference()
{
    if(0 != conf_init(30000))//启动服务
    {
        std::cout << "<FAIL> ScheduleServer failed in starting, please press any key to exit!" << std::endl;
        std::cin.get();
        
        conf_uninit();
    }
    
    //start conference/////////
    CID cid = 0;
#if 1
    cid = conf_room_new();
        
    conf_room_start(cid);
    
    //MID mid1 = conf_room_add_member(cid, G711, 0, 22000, "172.16.26.100");
    //MID mid2 = conf_room_add_member(cid, G711, 0, 22010, "172.16.26.100");
    //MID mid3 = conf_room_add_member(cid, G711, 0, 22020, "172.16.26.100");
    
    //MID mid1 = conf_room_add_member(cid, G711, 0, 22000, "192.168.3.80");
    //MID mid2 = conf_room_add_member(cid, G711, 0, 22010, "192.168.3.80");
    //MID mid3 = conf_room_add_member(cid, G711, 0, 22020, "192.168.3.80");
    
    MID mid1 = conf_room_add_member(cid, G711, 0, 22000, "192.168.1.16");
    MID mid2 = conf_room_add_member(cid, G711, 0, 22010, "192.168.1.16");
    MID mid3 = conf_room_add_member(cid, G711, 0, 22020, "192.168.1.16");
#endif
    ///////////////////////////
    
    std::string input_str("");    
	while (true)
	{
        std::cin >> input_str;
        
        input_str.erase(0, input_str.find_first_not_of(" \t\n\r"));
		input_str.erase(input_str.find_last_not_of(" \t\n\r") + 1);

		if (input_str.empty()) continue;

		if("quit" == input_str || "exit" == input_str)
        {
            conf_room_rm(cid);
            break;
        }        
        else if("query" == input_str)
        {
            conf_room_show(cid);
        }
        else if("rm" == input_str)
        {
            conf_room_rm_member(mid1, cid);
        }
        else if("u" == input_str)
        {
            conf_update_member_addr(mid1, 22020, "192.168.3.80");
        }
        else if("d" == input_str)
        {
            //conf_disable_member_recv(mid1);
            //conf_disable_member_recv(mid2);
        }
        else if("e" == input_str)
        {
            //conf_enable_member_recv(mid1);
            //conf_enable_member_recv(mid2);
        }        
        else if("p" == input_str)
        {
            conf_play(cid);
        }
        else if("as" == input_str)
        {
            conf_add_self(cid);
        }
        else if("rs" == input_str)
        {
            conf_add_self(0);
        }
	}
    
    conf_uninit();
}

void broadcast()
{
    if(0 != broadcast_start())//启动服务
    {
        std::cout << "<FAIL> ScheduleServer failed in starting, please press any key to exit!" << std::endl;
        std::cin.get();
        
        broadcast_shutown();
    }
    
    broadcast_add_dest("192.168.3.80", 22000, G711);
    broadcast_add_dest("192.168.3.80", 22010, G711);
    broadcast_add_dest("192.168.3.80", 22020, G711);
    
    std::string input_str("");    
	while (true)
	{
        std::cin >> input_str;
        
        input_str.erase(0, input_str.find_first_not_of(" \t\n\r"));
		input_str.erase(input_str.find_last_not_of(" \t\n\r") + 1);

		if (input_str.empty()) continue;

		if("quit" == input_str || "exit" == input_str)
        {
            broadcast_shutown();
            break;
        }
	}
    
    broadcast_shutown();
}

void realay()
{
    
}

#ifdef NDEBUG
int main3(int argc, char **argv)
#else
int main(int argc, char **argv)
#endif
{
    //alsa_check();
    
    conference();
    //broadcast();
    
	return 0;
}
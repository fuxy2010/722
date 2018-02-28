
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
                        const unsigned long& ssrc, const unsigned char&payload_type, const bool& mark,
                        const char* src_ip, const unsigned short src_port)
{
    std::cout << "Got packet at " << timestamp << " from SSRC " << ssrc << " length " << length << " sequence " << sequence << " from " << src_ip << ":" << src_port << std::endl;
    std::cout << "Data " << data << std::endl;
}

#include <alsa/asoundlib.h>

int alsa_play()
{
    long loops;
    int rc;
    int size;
    snd_pcm_t *handle;
    snd_pcm_hw_params_t *params;
    unsigned int val;
    int dir;
    snd_pcm_uframes_t frames;
    char *buffer;
    
    /* 打开 PCM playback 设备 */
    rc = snd_pcm_open(&handle, "default", SND_PCM_STREAM_PLAYBACK, 0);
    if(rc < 0)
    {
        fprintf(stderr, "unable to open pcm device: %s\n", snd_strerror(rc));
        exit(1);
    }
    
    /* 分配一个硬件参数结构体 */
    snd_pcm_hw_params_alloca(&params);

    /* 使用默认参数 */
    snd_pcm_hw_params_any(handle, params);
    
    /* 设置硬件参数 */

    /* Interleaved mode */
    snd_pcm_hw_params_set_access(handle, params, SND_PCM_ACCESS_RW_INTERLEAVED);

    /* 数据格式为 16位 小端 */
    snd_pcm_hw_params_set_format(handle, params, SND_PCM_FORMAT_S16_LE);
    
    /* 两个声道 */
    snd_pcm_hw_params_set_channels(handle, params, 1);

    /* 44100 bits/second sampling rate (CD quality) */
    /* 采样率为 44100 */
    val = 8000;
    snd_pcm_hw_params_set_rate_near(handle, params,
              &val, &dir);

    /* Set period size to 32 frames. */
    /* 设置一个周期为 32 帧 */
    frames = 480;
    snd_pcm_hw_params_set_period_size_near(handle,
          params, &frames, &dir);

    /* Write the parameters to the driver */
    /* 把前面设置好的参数写入到playback设备 */
    rc = snd_pcm_hw_params(handle, params);
    if (rc < 0) {
        fprintf(stderr,
            "unable to set hw parameters: %s\n",
            snd_strerror(rc));
    exit(1);
    }

    /* Use a buffer large enough to hold one period */
    /* 得到一个周期的数据长度 */
    snd_pcm_hw_params_get_period_size(params, &frames,
                &dir);

    /* 因为我们是16位 两个通道，所以要 *2*2 也就是 *4 */
    size = frames * 2; /* 2 bytes/sample, 2 channels */
    buffer = (char *) malloc(size);

    /* We want to loop for 5 seconds */
    /* 得到一个周期的时间长度 */
    snd_pcm_hw_params_get_period_time(params,
                &val, &dir);
    /* 50 seconds in microseconds divided by
    * period time */
    loops = 500000000 / val;
    
    std::string filename = "mix.pcm";
    std::cout << "Enter pcm file name:" << std::endl;
    std::cin >> filename;
    std::cout << std::endl;
    FILE* file = fopen(filename.c_str(), "rb");

    while (loops > 0) {
        loops--;
        
        {
            size_t read_len = fread(buffer, sizeof(char), size, file);
            if(960 != read_len)
            {
                fseek(file, 0, SEEK_SET);
            }
            
            std::cout << "play " << read_len << std::endl;
        }
        
        /* 从标准输入中获取数据 */
        /*rc = read(0, buffer, size);
        if (rc == 0) {
            fprintf(stderr, "end of file on input\n");
            break;
        } else if (rc != size) {
            fprintf(stderr,
                "short read: read %d bytes\n", rc);
        }*/

        /* 播放这些数据 */
        rc = snd_pcm_writei(handle, buffer, frames);
        std::cout << "play frame " << frames << std::endl;
        if (rc == -EPIPE) {
            /* EPIPE means underrun */
            fprintf(stderr, "underrun occurred\n");
            std::cout << "error " << stderr << std::endl;
            snd_pcm_prepare(handle);
        } else if (rc < 0) {
            fprintf(stderr,
                    "error from writei: %s\n",
                    snd_strerror(rc));
        }  else if (rc != (int)frames) {
            fprintf(stderr,
                    "short write, write %d frames\n", rc);
        }
    }

    snd_pcm_drain(handle);
    snd_pcm_close(handle);
    free(buffer);

    return 0;
}

#include "PCMPlayer.h"

int alsa_play3()
{
    std::string filename = "1.pcm";
    //std::cout << "Enter pcm file name:" << std::endl;
    //std::cin >> filename;
    //std::cout << std::endl;
    FILE* file = fopen(filename.c_str(), "rb");
    
    ScheduleServer::CPCMPlayer player;
    
    short* frame = (short*) malloc(960);

    int count = 0;
    struct  timeval  start;
    struct  timeval  end;
        
    while(true)
    {
        {
            size_t read_len = fread(frame, sizeof(short), 480, file);
            if(480 != read_len)
            {
                fseek(file, 0, SEEK_SET);
                continue;
            }
            
            std::cout << "play " << read_len << " " << ++ count << std::endl;
            
            //usleep(60000);//RTPTime::Wait(RTPTime(0,60));
            //usleep(10000);
        }
        
        gettimeofday(&end,NULL);
        printf("================== timer = %ld us\n", 1000000 * (end.tv_sec-start.tv_sec)+ end.tv_usec-start.tv_usec);
        start = end;
        
        player.play(frame);
        //unsigned char temp[256];
        //int len = codec.encode(frame, temp);        
        //std::cout << "enc " << len << std::endl;
    }
    
    free(frame);
}

int main(int argc, char **argv)
{
    //alsa_play3();
    //return 0;
    
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


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

#ifndef __cplusplus
#define __cplusplus
#endif

#include "AudioMixer.h"

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

int alsa_play5()
{  
    int i;  
    int ret;  
    //int buf[1024];  
    unsigned int val;  
    int dir=0;  
    char *buffer;  
    int framesize;  
    snd_pcm_uframes_t frames;  
    snd_pcm_uframes_t periodsize;  
    snd_pcm_t *playback_handle;//PCM设备句柄pcm.h  
    snd_pcm_hw_params_t *hw_params;//硬件信息和PCM流配置  
    
    FILE *fp = fopen("1.pcm", "rb");  
    if(fp == NULL)  
    return 0;  
    fseek(fp, 100, SEEK_SET);  
       
    //1. 打开PCM，最后一个参数为0意味着标准配置  
    ret = snd_pcm_open(&playback_handle, "default", SND_PCM_STREAM_PLAYBACK, 0);  
    if (ret < 0) {  
        perror("snd_pcm_open");  
        exit(1);  
    }  
       
    //2. 分配snd_pcm_hw_params_t结构体  
    ret = snd_pcm_hw_params_malloc(&hw_params);  
    if (ret < 0) {  
        perror("snd_pcm_hw_params_malloc");  
        exit(1);  
    }  
    //3. 初始化hw_params  
    ret = snd_pcm_hw_params_any(playback_handle, hw_params);  
    if (ret < 0) {  
        perror("snd_pcm_hw_params_any");  
        exit(1);  
    }  
    //4. 初始化访问权限  
    ret = snd_pcm_hw_params_set_access(playback_handle, hw_params, SND_PCM_ACCESS_RW_INTERLEAVED);  
    if (ret < 0) {  
        perror("snd_pcm_hw_params_set_access");  
        exit(1);  
    }  
    //5. 初始化采样格式SND_PCM_FORMAT_U8,8位  
    ret = snd_pcm_hw_params_set_format(playback_handle, hw_params, SND_PCM_FORMAT_S16_LE);  
    if (ret < 0) {  
        perror("snd_pcm_hw_params_set_format");  
        exit(1);  
    }  
    //6. 设置采样率，如果硬件不支持我们设置的采样率，将使用最接近的  
    //val = 44100,有些录音采样频率固定为8KHz  
       
   
    val = 8000;  
    ret = snd_pcm_hw_params_set_rate_near(playback_handle, hw_params, &val, &dir); 
    if (ret < 0) {  
        perror("snd_pcm_hw_params_set_rate_near");  
        exit(1);  
    }
    
    std::cout << "snd_pcm_hw_params_set_rate_near " << val << ", " << dir << std::endl;
    
    //7. 设置通道数量  
    ret = snd_pcm_hw_params_set_channels(playback_handle, hw_params, 1);  
    if (ret < 0) {  
        perror("snd_pcm_hw_params_set_channels");  
        exit(1);  
    }  
       
    /* Set period size to 32 frames. */  
    frames = 480;
    periodsize = frames * 2;  
    ret = 1;//snd_pcm_hw_params_set_buffer_size_near(playback_handle, hw_params, &periodsize);  
    if (ret < 0)   
    {  
         printf("Unable to set buffer size %li : %s\n", frames * 2, snd_strerror(ret));  
            
    }
    
    std::cout << "snd_pcm_hw_params_set_buffer_size_near " << frames << ", " << periodsize << std::endl;
    
    periodsize /= 2;  
   
    ret = snd_pcm_hw_params_set_period_size_near(playback_handle, hw_params, &periodsize, 0);  
    if (ret < 0)   
    {  
        printf("Unable to set period size %li : %s\n", periodsize,  snd_strerror(ret));  
    }  
                                     
    //8. 设置hw_params  
    ret = snd_pcm_hw_params(playback_handle, hw_params);  
    if (ret < 0) {  
        perror("snd_pcm_hw_params");  
        exit(1);  
    }  
       
     /* Use a buffer large enough to hold one period */  
    snd_pcm_hw_params_get_period_size(hw_params, &frames, &dir);  
    
    std::cout << "snd_pcm_hw_params_get_period_size " << frames << ", " << periodsize << std::endl;
                                   
    framesize = frames * 2; /* 2 bytes/sample, 2 channels */  
    buffer = (char *) malloc(framesize);  
    fprintf(stderr,  
            "size = %d\n",  
            framesize);  
       
    while (1)   
    {  
        ret = fread(buffer, 1, framesize, fp);  
        std::cout << "read: " << framesize << std::endl;
        if(ret == 0)   
        {  
              fprintf(stderr, "end of file on input\n");  
              break;  
        }   
        else if (ret != framesize)   
        {  
        }  
        //9. 写音频数据到PCM设备  
        while(ret = snd_pcm_writei(playback_handle, buffer, frames)<0)  
        {  
            std::cout << "play: " << frames << ", " << ret << std::endl;
            
            usleep(2000);
            if (ret == -EPIPE)  
            {  
                  /* EPIPE means underrun */  
                  fprintf(stderr, "underrun occurred\n");  
                  //完成硬件参数设置，使设备准备好  
                  snd_pcm_prepare(playback_handle);  
            }   
            else if (ret < 0)   
            {  
                  fprintf(stderr,  
                      "error from writei: %s\n",  
                      snd_strerror(ret));  
            }
            
            //break;
        }  
           
    }         
    //10. 关闭PCM设备句柄  
    snd_pcm_close(playback_handle);  
       
    return 0;  
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

int alsa_record()
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

    /* Open PCM device for recording (capture). */
    /* 打开 PCM capture 捕获设备 */
    rc = snd_pcm_open(&handle, "default",
                        SND_PCM_STREAM_CAPTURE, 0);
    if (rc < 0) {
        fprintf(stderr,
                "unable to open pcm device: %s\n",
                snd_strerror(rc));
        exit(1);
    }

    /* Allocate a hardware parameters object. */
    /* 分配一个硬件参数结构体 */
    snd_pcm_hw_params_alloca(&params);

    /* Fill it in with default values. */
    /* 使用默认参数 */
    snd_pcm_hw_params_any(handle, params);

    /* Set the desired hardware parameters. */

    /* Interleaved mode */
    snd_pcm_hw_params_set_access(handle, params,
                          SND_PCM_ACCESS_RW_INTERLEAVED);

    /* Signed 16-bit little-endian format */
    /* 16位 小端 */
    snd_pcm_hw_params_set_format(handle, params,
                                  SND_PCM_FORMAT_S16_LE);

    /* Two channels (stereo) */
    /* 双通道 */
    snd_pcm_hw_params_set_channels(handle, params, 1);

    /* 44100 bits/second sampling rate (CD quality) */
    /* 采样率 */
    val = 8000;
    snd_pcm_hw_params_set_rate_near(handle, params,
                                      &val, &dir);

    /* Set period size to 32 frames. */
    /* 一个周期有 32 帧 */
    frames = 480;
    snd_pcm_hw_params_set_period_size_near(handle,
                                  params, &frames, &dir);

    /* Write the parameters to the driver */
    /* 参数生效 */
    rc = snd_pcm_hw_params(handle, params);
    if (rc < 0) {
        fprintf(stderr,
                "unable to set hw parameters: %s\n",
                snd_strerror(rc));
        exit(1);
    }

    /* Use a buffer large enough to hold one period */
    /* 得到一个周期的数据大小 */
    snd_pcm_hw_params_get_period_size(params,
                                          &frames, &dir);
    /* 16位 双通道，所以要 *4 */
    size = frames * 2; /* 2 bytes/sample, 2 channels */
    buffer = (char *) malloc(size);

    /* We want to loop for 5 seconds */
    /* 等到一个周期的时间长度 */
    snd_pcm_hw_params_get_period_time(params,
                                             &val, &dir);
    loops = 10000000 / val;

    while (loops > 0)
    {
        loops--;
        
        std::cout << "snd_pcm_readi " << frames << ", " << size << std::endl;
        
        /* 捕获数据 */
        rc = snd_pcm_readi(handle, buffer, frames);
        if (rc == -EPIPE) {
            /* EPIPE means overrun */
            fprintf(stderr, "overrun occurred\n");
            snd_pcm_prepare(handle);
        } else if (rc < 0) {
            fprintf(stderr,
                  "error from read: %s\n",
                  snd_strerror(rc));
        } else if (rc != (int)frames) {
            fprintf(stderr, "short read, read %d frames\n", rc);
        }
        
        if(true)
        {
            FILE* f = fopen("./record.pcm", "ab+");
            fwrite(buffer, sizeof(short), size, f);
            fclose(f);
        }

        /* 写入到标准输出中去 */
        /*rc = write(1, buffer, size);
        if (rc != size)
          fprintf(stderr,
                  "short write: wrote %d bytes\n", rc);*/
    }

    snd_pcm_drain(handle);
    snd_pcm_close(handle);
    free(buffer);

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
}

//1 创建会议室
CID conf_room_new()
{
    CID id = 0;
    
    if(SS_NoErr != SINGLETON(CScheduleServer).add_conference(id)) id = -1;
    
    return id;
}

//2 删除会议室
void conf_room_rm(CID cid)
{
    SINGLETON(CScheduleServer).close_conference(cid);
}

//3 开始会议室混音及rtp收发等处理
int conf_room_start(CID cid)
{
    if(SS_NoErr != SINGLETON(CScheduleServer).resume_conference(cid)) return -1;
    
    return 0;
}

//4 停止会议室混音及rtp收发等处理
int conf_room_stop(CID cid)
{
    if(SS_NoErr != SINGLETON(CScheduleServer).pause_conference(cid)) return -1;
    
    return 0;
}

//5 暂停整个会议室的音频处理，包括其中所有成员
int conf_room_hold(CID cid)
{
    if(SS_NoErr != SINGLETON(CScheduleServer).pause_conference(cid)) return -1;
    
    return 0;
}

//6 恢复整个会议室音频处理
int conf_room_recover(CID cid)
{
    if(SS_NoErr != SINGLETON(CScheduleServer).resume_conference(cid)) return -1;
    
    return 0;
}

//7 添加成员到会议室
//MID conf_room_add_member(CID cid, int codec, int mode, int lport, int rport, char* rip)
MID conf_room_add_member(CID cid, CODEC codec, int mode, int rport, char* rip)
{
    MID mid;
    
    if(SS_NoErr != SINGLETON(CScheduleServer).add_paiticipant(mid, cid, rip, rport, codec)) return -1;
    
    return mid;
}

//8 删除会议室成员
void conf_room_rm_member(MID mid, CID cid)
{
    SINGLETON(CScheduleServer).remove_paiticipant(cid, mid);
}

//9 打开成员的音频发送
int conf_enable_member_send(MID mid)
{
    CUserAgent* ua = SINGLETON(CScheduleServer).fetch_ua(mid);
    
    if(NULL != ua) return -1;
    
    ua->resume_send();
    
    return 0;
}

//10 关闭成员的音频发送
int conf_disable_member_send(MID mid)
{
    CUserAgent* ua = SINGLETON(CScheduleServer).fetch_ua(mid);
    
    if(NULL != ua) return -1;
    
    ua->pause_send();
    
    return 0;
}

//11 打开成员的音频接收
int conf_enable_member_recv(MID mid)
{
    CUserAgent* ua = SINGLETON(CScheduleServer).fetch_ua(mid);
    
    if(NULL != ua) return -1;
    
    ua->resume_recv();
    
    return 0;
}

//12 关闭成员的音频接收
int conf_disable_member_recv(MID mid)
{
    CUserAgent* ua = SINGLETON(CScheduleServer).fetch_ua(mid);
    
    if(NULL != ua) return -1;
    
    ua->pause_recv();
    
    return 0;
}

//13 更新成员编解码及收发模式
int conf_update_member_codec(MID mid, CODEC codec, int mode)
{
    CUserAgent* ua = SINGLETON(CScheduleServer).fetch_ua(mid);
    
    if(NULL != ua) return -1;
    
    ua->update_codec(codec);
    ua->update_mode(mode);
    
    return 0;
}

//14 更新成员本地地址信息
//int conf_update_member_laddr(MID mid, int port)
int conf_set_local_laddr(int port, char* ip)
{
    CUserAgent* ua = SINGLETON(CScheduleServer).fetch_ua(1);//1--local ua for record
    
    if(NULL != ua) return -1;
    
    //ua->set_loacl_addr(int port);
    
    return 0;
}

//15 更新成员对端地址信息
int conf_update_member_raddr(MID mid, int port, char* ip)
{
    SINGLETON(CScheduleServer).reg_ua(mid, ip, port, 0);
    return 0;
}

//16 开始对单个成员播放文件
int conf_member_start_fileplay(MID mid, char* fname, int times)
{
    return 0;
}

//17 停止对单个成员播放文件
int conf_member_stop_fileplay(MID mid)
{
    return 0;
}

//18 查看会议室情况
void conf_room_show(CID cid)
{
    SINGLETON(CScheduleServer).query_conference(cid);
}

//19 启动混音模块
int conf_init(unsigned short local_port)
{
    //if(SS_NoErr != SINGLETON(CScheduleServer).start()) return -1;
    if(SS_NoErr != SINGLETON(CScheduleServer).start_mixer(local_port)) return -1;
    
    return 0;
}

//20 停止混音模块
int conf_uninit()
{
    SINGLETON(CScheduleServer).shutdown_mixer();
    
    return 0;
}

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
    
    //MID mid1 = conf_room_add_member(cid, 0, 0, 22000, "172.16.24.127");
    //MID mid2 = conf_room_add_member(cid, 0, 0, 22010, "172.16.24.127");
    //MID mid3 = conf_room_add_member(cid, 0, 0, 22020, "172.16.24.127");
    
    MID mid1 = conf_room_add_member(cid, G711, 0, 22000, "192.168.1.101");
    MID mid2 = conf_room_add_member(cid, G711, 0, 23000, "192.168.1.101");
    MID mid3 = conf_room_add_member(cid, G711, 0, 24000, "192.168.1.101");
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
        
        if("query" == input_str)
        {
            
            conf_room_show(cid);
        }
	}
    
    conf_uninit();
}

int broadcast_start()
{
    if(SS_NoErr != SINGLETON(CScheduleServer).start_broadcast()) return -1;
    
    return 0;
}

int broadcast_shutown()
{
    SINGLETON(CScheduleServer).shutdown_broadcast();
    
    return 0;
}

int broadcast_add_dest(char* ip, int port, CODEC codec)
{
    SINGLETON(CScheduleServer).add_broadcast_receiver(ip, port, codec);
    
    return 0;
}

int broadcast_remove_dest(char* ip, int port)
{
    return 0;
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
    alsa_check();
    
    //conference();
    broadcast();
    
	return 0;
}
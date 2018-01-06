// **********************************************************************
// ×÷Õß: ¸µÓÓÃú
// °æ±¾: 1.0
// ÈÕÆÚ: 2011-01 ~ 2011-11
// ÐÞ¸ÄÀúÊ·¼ÇÂ¼: 
// ÈÕÆÚ, ×÷Õß, ±ä¸üÄÚÈÝ
// **********************************************************************
#include "GeneralDef.h"
#include "AudioSendThread.h"
#include "AudioCodec.h"
#include "ScheduleServer.h"

using namespace ScheduleServer;

void* CAudioSendThread::Thread()
{
    JThread::ThreadStarted();
    
    CRTPRecvSession rtp_session(_local_port);
    
    rtp_session.add_dest_addr("127.0.0.1", _remote_port);
    
    char temp[32];
    ::memset(temp, 0 ,sizeof(temp));
    sprintf(temp, "./%d.pcm", _id);
    
    FILE* file = fopen(temp, "rb");

	if(NULL == file || NULL == file)
		return NULL;

	short frame[512];
	unsigned char packet[256];

	clock_t _next_send_audio_packet_timestamp = 0;

	unsigned char buf[256];//video
	unsigned long sequence = 0;
	unsigned long timestamp = 0;

	CiLBCCodec* codec1 = new CiLBCCodec();
    CiLBCCodec* codec2 = new CiLBCCodec();


	while(1)
	{
		if(!_next_send_audio_packet_timestamp)//初次发送音频包
			_next_send_audio_packet_timestamp = clock();

		if(_next_send_audio_packet_timestamp > clock())//是否已到本次发包时间
		{
			//usleep(2);
			continue;
		}

		//发送音频
		::memset(frame, 0, sizeof(frame));

        //60ms
		size_t read_len = fread(frame, sizeof(short), 480, file);
        //std::cout << "read audio frame: " << read_len << std::endl;

		//read from the head of music file again
		if(480 != read_len)
		{
			fseek(file, 0, SEEK_SET);
		}
		
		int packet_len = codec1->encode(frame, packet);
		//int frame_len = codec1->decode(packet, (short*)frame, 0);
		//packet_len = codec1->encode((short*)frame, packet);

		rtp_session.send_rtp_packet(packet, packet_len, ILBCRTPPacket, true, AUDIO_SAMPLING_RATE, _id);
        std::cout << "send audio packet: " << packet_len << ", " << _next_send_audio_packet_timestamp << ", " << clock() << std::endl;

		_next_send_audio_packet_timestamp += AUDIO_SAMPLING_RATE * 1000;
	}

}


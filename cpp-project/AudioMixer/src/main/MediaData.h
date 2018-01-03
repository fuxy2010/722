// **********************************************************************
// ×÷Õß: ¸µÓÓÃú
// °æ±¾: 1.0
// ÈÕÆÚ: 2011-01 ~ 2011-11
// ÐÞ¸ÄÀúÊ·¼ÇÂ¼: 
// ÈÕÆÚ, ×÷Õß, ±ä¸üÄÚÈÝ
// **********************************************************************
#ifndef _MEDIA_DATA_H_
#define _MEDIA_DATA_H_

#include <stdio.h>
#include <string.h>

//#define USE_AMR_WBP
//#define USE_AMR_NB
#define USE_ILBC

//RTP°üÍ·³¤¶È
#define RTP_HEADER_LENGTH				12

#ifdef USE_ILBC//16bit 8k²ÉÑù
#define MAX_RAW_AUDIO_FRAME_SIZE_WORD	512
#endif

#ifdef USE_ILBC
#define AUDIO_SAMPLING_RATE	60
#endif

//ÒôÆµÊý¾Ý±àÂëºóRTP°ü×î´ó³¤¶È(º¬RTP°üÍ·³¤¶È12£©,µ¥Î»×Ö½Ú
//Ò»´Î·ÖÅäµ½Î»
#define MAX_AUDIO_PACKET_SIZE_BYTE		1024

namespace ScheduleServer
{
	//////////////////////////////////////////////////////////////////////////
	//ÒôÆµRTPÊý¾Ý°ü
	typedef struct tagAUDIO_PACKET
    {
		unsigned long	ua_id;//·¢ËÍÔ´UA ID
		unsigned long	payload_size;//Êý¾Ý°üÊµ¼Ê³¤¶È£¨º¬RTP°üÍ·£©
		unsigned short	sequence;//RTP°üÐòÁÐºÅ
		unsigned long	recv_timestamp;//½ÓÊÕÊ±´Á
		int				energy;//ÓïÒôÄÜÁ¿

		//ÒôÆµRTPÊý¾Ý°ü£¨º¬RTP°üÍ·£©
		unsigned char	payload[MAX_AUDIO_PACKET_SIZE_BYTE];

		tagAUDIO_PACKET() : ua_id(0), payload_size(0), sequence(0), recv_timestamp(0), energy(0)
		{
			//ÈçÓÃboostÄÚ´æ³Ø·½Ê½£¬¸Ã·½·¨²»±»µ÷ÓÃ£¬ÒÑÔÚmallocÖÐ³õÊ¼»¯
			::memset(payload, 0, sizeof(payload));
		}

		~tagAUDIO_PACKET()
		{
		}

		bool operator < (tagAUDIO_PACKET const& _packet) const
		{
			if(recv_timestamp < _packet.recv_timestamp)
				return true;
			else if(recv_timestamp == _packet.recv_timestamp)
				return sequence < _packet.sequence;

			return false;
		}
    }
	AUDIO_PACKET;
	
	typedef struct tagAUDIO_PACKET_PTR
	{
		AUDIO_PACKET* packet;

		tagAUDIO_PACKET_PTR() : packet(NULL)
		{
			//Íò²»¿É½«´´½¨packet_ptr·ÅÔÚ´ËÖÐ cout << "\ncreate AUDIO_PACKET_PTR";
		}

		~tagAUDIO_PACKET_PTR()
		{
			//cout << "\ndelete AUDIO_PACKET_PTR";
		}

		bool operator < (tagAUDIO_PACKET_PTR const& _packet_ptr) const
		{
			if(NULL == packet)
				return true;

			if(NULL == _packet_ptr.packet)
				return false;

			return (*packet < *(_packet_ptr.packet));
		}
	}
	AUDIO_PACKET_PTR;

	//////////////////////////////////////////////////////////////////////////
	//Ô­Ê¼ÓïÒôÖ¡
	typedef struct tagRAW_AUDIO_FRAME
	{
		unsigned long	ua_id;//·¢ËÍÔ´UA ID
		int				energy;//ÓïÒôÖ¡ÄÜÁ¿
		short			payload[MAX_RAW_AUDIO_FRAME_SIZE_WORD];//ÓïÒôÖ¡´æ´¢Çø
		//int				payload_size;//ÓïÒôÖ¡Êµ¼Ê×Ö½Ú³¤¶È
		bool			available;
		unsigned long	sequence;//RTP°üÐòÁÐºÅ
		unsigned long	src_timestamp;//ÈçÎªÊÜµ½ÒôÆµ°ü½âÂëµÃµ½µÄÓïÒôÖ¡ÔòÎªÊÕ°üÊ±´Á£¬ÈçÎª»ìÒôÓïÒôÖ¡ÔòÎª´´½¨Ê±´Á
		unsigned long	mix_timestamp[8];//»ìÒôÔ´Ê±´Á
		unsigned short	mix_timestamp_index;
		unsigned long	encoded_size;

		tagRAW_AUDIO_FRAME() : ua_id(0), energy(0), available(false), src_timestamp(0), mix_timestamp_index(0), encoded_size(0)
		{
			//ÈçÓÃboostÄÚ´æ³Ø·½Ê½£¬¸Ã·½·¨²»±»µ÷ÓÃ£¬ÒÑÔÚmallocÖÐ³õÊ¼»¯
			::memset(payload, 0, sizeof(payload));

			::memset(mix_timestamp, 0, sizeof(mix_timestamp));
		}

		~tagRAW_AUDIO_FRAME()
		{
		}

		bool operator < (tagRAW_AUDIO_FRAME const& _frame) const
		{
			if(src_timestamp < _frame.src_timestamp)
				return true;
			else if(src_timestamp == _frame.src_timestamp)
				return sequence < _frame.sequence;

			return false;
		}

		void update_mix_timestamp(unsigned long timestamp)
		{
			if(mix_timestamp_index >= sizeof(mix_timestamp))
				return;

			mix_timestamp[mix_timestamp_index++] = timestamp;
		}
	}
	RAW_AUDIO_FRAME;//, *RAW_AUDIO_FRAME_PTR;

	typedef struct tagRAW_AUDIO_FRAME_PTR
	{
		RAW_AUDIO_FRAME* frame;

		tagRAW_AUDIO_FRAME_PTR() : frame(NULL)
		{
		}

		~tagRAW_AUDIO_FRAME_PTR()
		{
		}

		bool operator < (tagRAW_AUDIO_FRAME_PTR const& _frame_ptr) const
		{
			if(NULL == frame)
				return true;

			if(NULL == _frame_ptr.frame)
				return false;

			return (*frame < *(_frame_ptr.frame));
		}

		void delay(unsigned char flag)
		{
			if(NULL == frame)
				return;

			//printf("<%cD ", flag);

			for(unsigned short i = 0; i < frame->mix_timestamp_index; ++i)
			{
				//cout << " [" << (::timeGetTime() - raw_audio_frame.frame->mix_timestamp[i]) << "]";
				//printf("%d ", ::timeGetTime() - frame->mix_timestamp[i]);
			}

			//cout << ">" << endl;
			printf(">\n");
		}

		unsigned long delay()
		{
			if(NULL == frame)
				return 0;

			//printf("[Z %d ]\n", ::timeGetTime() - frame->src_timestamp);

			return 0;//(::timeGetTime() - frame->src_timestamp);
		}
	}
	RAW_AUDIO_FRAME_PTR;

	class CMemPool
	{
	public:
		//////////////////////////////////////////////////////////////////////////
		static bool malloc_audio_packet(AUDIO_PACKET_PTR& packet_ptr)
		{
			if(NULL != packet_ptr.packet)
				delete packet_ptr.packet;

			packet_ptr.packet = new AUDIO_PACKET;

			if(NULL == packet_ptr.packet)
			{
				//std::cout << "\nfail in malloc audio packet!";
				return false;
			}

			::memset(packet_ptr.packet, 0, sizeof(AUDIO_PACKET));

			return true;
		}

		static void free_audio_packet(AUDIO_PACKET_PTR& packet_ptr)
		{
			if(NULL == packet_ptr.packet)
				return;

			delete packet_ptr.packet;
			packet_ptr.packet = NULL;
		}

		//////////////////////////////////////////////////////////////////////////
		static bool malloc_raw_audio_frame(RAW_AUDIO_FRAME_PTR& frame_ptr)
		{
			if(NULL != frame_ptr.frame)
				delete frame_ptr.frame;

			frame_ptr.frame = new RAW_AUDIO_FRAME;

			if(NULL == frame_ptr.frame)
			{
				//cout << "\nfail in malloc raw audio!";
				return false;
			}

			::memset(frame_ptr.frame, 0, sizeof(RAW_AUDIO_FRAME));

			return true;
		}

		static void free_raw_audio_frame(RAW_AUDIO_FRAME_PTR& frame_ptr)
		{
			if(NULL == frame_ptr.frame)
				return;

			delete frame_ptr.frame;
			frame_ptr.frame = NULL;
		}
	};
}

#endif//_MEDIA_DATA_H_
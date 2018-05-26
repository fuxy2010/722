// **********************************************************************
// ×÷Õß: ¸µÓÓÃú
// °æ±¾: 1.0
// ÈÕÆÚ: 2011-01 ~ 2011-11
// ÐÞ¸ÄÀúÊ·¼ÇÂ¼: 
// ÈÕÆÚ, ×÷Õß, ±ä¸üÄÚÈÝ
// **********************************************************************
#ifndef _USER_AGENT_H_
#define _USER_AGENT_H_

#if defined(_MSC_VER) && (_MSC_VER >= 1200)
#pragma once
#endif // defined(_MSC_VER) && (_MSC_VER >= 1200)

#include "GeneralDef.h"
#include "Locker.h"
#include "MediaData.h"
#include "iLBCCodec.h"
#include "G711Codec.h"
#include "JRTPSession.h"
#include "PCMPlayer.h"
#ifdef USING_NS
#include "ns.h"
#endif
#include "vad.h"

namespace ScheduleServer
{
	//UAÐÅÏ¢
	typedef struct tagUSER_AGENT_INFO
	{
		unsigned long				id;//UAµÄID£¬ÈçUAÎªÊÖ»úÔòÎªSIM¿¨µÄIMSIºÅ
		//unsigned long				ip;//ÍøÂç×Ö½ÚÐòIPµØÖ·
		char						ip[16];
		unsigned short				audio_port;//Ö÷»ú×Ö½ÚÐòÒôÆµÊý¾Ý½ÓÊÕ¶Ë¿Ú£¨¼´ÖÕ¶Ë·¢ËÍÒôÆµsocket°ó¶¨¶Ë¿Ú£©
		//unsigned short			video_port;//Ö÷»ú×Ö½ÚÐòÊÓÆµÊý¾Ý½ÓÊÕ¶Ë¿Ú£¨¼´ÖÕ¶Ë·¢ËÍÊÓÆµsocket°ó¶¨¶Ë¿Ú£©»òICEÐÅÁî½ÓÊÕ¶Ë¿Ú
		unsigned short				server_audio_port;//µ÷¶È·þÎñÆ÷½ÓÊÕ¸ÃÖÕ¶ËËù·¢ËÍÒôÆµÊý¾ÝµÄ¶Ë¿Ú
		//unsigned short			server_video_port;//µ÷¶È·þÎñÆ÷½ÓÊÕ¸ÃÖÕ¶ËËù·¢ËÍÊÓÆµÊý¾ÝµÄ¶Ë¿Ú
        //AUDIO_CODEC_TYPE            codec;
        int                         codec;
        unsigned short              bind_port;
        //wav file
        char                        wav_file_name[256];
        FILE*                       wav_file;
        int                         wav_play_times;

		tagUSER_AGENT_INFO() :
		id(0),// ip(0),
		audio_port(0),// video_port(0),
		server_audio_port(0),//, server_video_port(0)
        codec(G711_CODEC),
        bind_port(0),
        wav_file(NULL),
        wav_play_times(0)
		{
			memset(ip, 0, sizeof(ip));
            memset(wav_file_name, 0, sizeof(wav_file_name));
		}

		~tagUSER_AGENT_INFO()
		{
		}

	}
	USER_AGENT_INFO, *USER_AGENT_INFO_PTR;
    
    struct WAV_Format
    {
        uint32_t ChunkID;   /* "RIFF" */
        uint32_t ChunkSize; /* 36 + Subchunk2Size */
        uint32_t Format;    /* "WAVE" */
        
        /* sub-chunk "fmt" */
        uint32_t Subchunk1ID;   /* "fmt " */
        uint32_t Subchunk1Size; /* 16 for PCM */        
        uint16_t AudioFormat;   /* PCM = 1*/
        uint16_t NumChannels;   /* Mono = 1, Stereo = 2, etc. */
        uint32_t SampleRate;    /* 8000, 44100, etc. */
        uint32_t ByteRate;  /* = SampleRate * NumChannels * BitsPerSample/8 */
        uint16_t BlockAlign;    /* = NumChannels * BitsPerSample/8 */
        uint16_t BitsPerSample; /* 8bits, 16bits, etc. */
        
        /* sub-chunk "data" */
        uint32_t Subchunk2ID;   /* "data" */
        uint32_t Subchunk2Size; /* data size */
    }; 

	class CUserAgent
	{
	public:
		CUserAgent();
		virtual ~CUserAgent();

	public:
		SS_Error add_audio_frame(const unsigned char* data, const unsigned long& length, const unsigned short& sequence, const unsigned long& timestamp);
        
        SS_Error add_raw_audio_frame(const short* data, const unsigned long& length);
        
		RAW_AUDIO_FRAME_PTR fetch_audio_frame();

	public:
		SS_Error remove_all_audio_frames();

    SS_Error remove_slient_audio_frames();

	protected:
		//Ô­Ê¼ÓïÒôÖ¡¶ÓÁÐ
		std::list<RAW_AUDIO_FRAME_PTR> _raw_audio_frame_list;
		CSSMutex _raw_audio_frame_list_mutex;
        
        size_t _threshold;//very important!!!
		//unsigned short _next_fetched_audio_sequence;

		//short _predictive_audio_frame[2048];
        
    public:
        void update_threshold();

	public:
		//UAÐÅÏ¢
		USER_AGENT_INFO _info;
		//È¡Ïû¶Ô_info·ÃÎÊ¼ÓËø CSSMutex _info_mutex;

	protected:
		static const unsigned long _max_audio_packet_num;//ÒôÆµÊý¾Ý°ü¶ÓÁÐ×î´ó³¤¶È
		static const unsigned short _min_audio_frame_num;
	
    protected:
		//unsigned long _latest_audio_packet_timestamp;//×îÐÂÊÕµ½µÄÓïÒôÊý¾Ý°üÊ±´Á
		unsigned long _latest_available_audio_packet_timestamp;//最新收到的非静音语音数据包时戳

		CAudioCodec* _audio_codec;

		unsigned long _last_audio_packet_sequence;//ÉÏ´ÎÊÕµ½µÄÒôÆµÊý¾Ý°üµÄÐòÁÐºÅ
        
    protected:
        CRTPRecvSession* _rtp_send_session;
        
        RAW_AUDIO_FRAME_PTR _mix_frame_ptr;
        
        unsigned char _mix_audio_packet[1024];
        
    public:
        //bool malloc_mix_audio_frame();
        
        //void free_mix_audio_frame();
        
        //bool add_mix_frame(RAW_AUDIO_FRAME_PTR* frame_ptr);
        
        //void send_mix_frame();
        
        void send_audio_packet(unsigned char* data, unsigned long len);
        
    protected:
        CPCMPlayer player;
        
    protected:
        bool _send_idle;
        bool _recv_idle;
        
    public:
        void pause_send() { _send_idle = true; }
        void resume_send() { _send_idle = false; }
        
        void pause_recv() { _recv_idle = true; }
        void resume_recv() { _recv_idle = false; }
        
    public:
        void update_codec(int codec) {}
        void update_mode(int mode) {}
        void remove_addr();
        void add_addr();
        
    private:
        CSSMutex _wav_file_mutex;
        
    public:
        void config_wav_file(char* file_name, int times)
        {
            CSSLocker lock(&_wav_file_mutex);
            
            ::memcpy(_info.wav_file_name, file_name, strlen(file_name));
            _info.wav_play_times = times;
        }
        
        void close_wav_file()
        {
            CSSLocker lock(&_wav_file_mutex);
            
            if(NULL != _info.wav_file) fclose(_info.wav_file);
            _info.wav_file = NULL;
            
            ::memset(_info.wav_file_name, 0, sizeof(_info.wav_file_name));
            _info.wav_play_times = 0;
        }
        
        RAW_AUDIO_FRAME_PTR fetch_wav_file();
        void send_wav_file();
        
    private:
#ifdef USING_NS
        NS::CNS _ns;
#endif
	};
    
    //Mobile////////////////////////////////////////////////////////////////////////
	class CMobileUserAgent : public CUserAgent
	{
	public:
		CMobileUserAgent(USER_AGENT_INFO& info);
		virtual ~CMobileUserAgent();

	public:
		//返回UA类型
		virtual USER_AGENT_TYPE get_type()
		{
			return UA_MobilePhone;
		}
	};

}

#endif//_EVENT_DATA_H_
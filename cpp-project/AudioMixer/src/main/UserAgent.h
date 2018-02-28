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
#include "JRTPSession.h"
#include "PCMPlayer.h"

namespace ScheduleServer
{
	//UAÐÅÏ¢
	typedef struct tagUSER_AGENT_INFO
	{
		unsigned long				id;//UAµÄID£¬ÈçUAÎªÊÖ»úÔòÎªSIM¿¨µÄIMSIºÅ
		//unsigned long				ip;//ÍøÂç×Ö½ÚÐòIPµØÖ·
		char						ip[16];
		unsigned short				audio_port;//Ö÷»ú×Ö½ÚÐòÒôÆµÊý¾Ý½ÓÊÕ¶Ë¿Ú£¨¼´ÖÕ¶Ë·¢ËÍÒôÆµsocket°ó¶¨¶Ë¿Ú£©
		unsigned short				video_port;//Ö÷»ú×Ö½ÚÐòÊÓÆµÊý¾Ý½ÓÊÕ¶Ë¿Ú£¨¼´ÖÕ¶Ë·¢ËÍÊÓÆµsocket°ó¶¨¶Ë¿Ú£©»òICEÐÅÁî½ÓÊÕ¶Ë¿Ú
		unsigned short				server_audio_port;//µ÷¶È·þÎñÆ÷½ÓÊÕ¸ÃÖÕ¶ËËù·¢ËÍÒôÆµÊý¾ÝµÄ¶Ë¿Ú
		unsigned short				server_video_port;//µ÷¶È·þÎñÆ÷½ÓÊÕ¸ÃÖÕ¶ËËù·¢ËÍÊÓÆµÊý¾ÝµÄ¶Ë¿Ú

		tagUSER_AGENT_INFO() :
		id(0),// ip(0),
		audio_port(0), video_port(0),
		server_audio_port(0), server_video_port(0)
		{
			memset(ip, 0, sizeof(ip));
		}

		~tagUSER_AGENT_INFO()
		{
		}

	}
	USER_AGENT_INFO, *USER_AGENT_INFO_PTR;

	class CUserAgent
	{
	public:
		CUserAgent();
		virtual ~CUserAgent();

	public:
		SS_Error add_audio_frame(const unsigned char* data, const unsigned long& length, const unsigned short& sequence, const unsigned long& timestamp);

		//È¡×îÔçµÄÒôÆµÊý¾Ý°ü
		//AUDIO_PACKET_PTR fetch_audio_packet();
		//½âÂë×îÔçµÄÒôÆµÊý¾Ý°ü²¢·ÅÈëÔ­Ê¼ÓïÒôÖ¡¶ÓÁÐ
		//void decode_audio(CAudioCodec* codec);
		//È¡×îÔçµÄÔ­Ê¼ÓïÒôÖ¡
		//¸ù¾Ý»áÒéIDÈ¡Êý¾Ý°ü£¬Èç²»ÊÇÓÉ¸ÃUA²ÎÓëµÄ»áÒéÈÎÎñÈ¡Êý¾Ý°üÔò¼´Ê¹ÓÐÊý¾Ý°üÒ²²»Ó¦È¡£¬ÇÒstill_in_this_conferenceÎªfalse;
		RAW_AUDIO_FRAME_PTR fetch_audio_frame();

	protected:
		//É¾³ýËùÓÐÒôÆµÊý¾Ý°ü
		SS_Error remove_all_audio_packet();

		//É¾³ýËùÓÐ½Ó½ü¾²ÒôµÄÒôÆµ°ü
		SS_Error remove_slient_audio_packet();

	protected:
		//Ô­Ê¼ÓïÒôÖ¡¶ÓÁÐ
		std::list<RAW_AUDIO_FRAME_PTR> _raw_audio_frame_list;
		CSSMutex _raw_audio_frame_list_mutex;
        
        size_t _threshold;//very important!!!
		unsigned short _next_fetched_audio_sequence;//ÏÂÒ»´ÎÒªfetchµÄÒôÆµ°üÐòºÅ

		short _predictive_audio_frame[2048];//Ô¤²â²¹³¥¶ª°ü£¬×î¶à²¹³¥3¸ö°ü£¨9Ö¡£©
        
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
		unsigned long _latest_audio_packet_timestamp;//×îÐÂÊÕµ½µÄÓïÒôÊý¾Ý°üÊ±´Á
		unsigned long _latest_available_audio_packet_timestamp;//×îÐÂÊÕµ½µÄ·Ç¾²ÒôÓïÒôÊý¾Ý°üÊ±´Á

		CAudioCodec* _audio_codec;

		unsigned long _last_audio_packet_sequence;//ÉÏ´ÎÊÕµ½µÄÒôÆµÊý¾Ý°üµÄÐòÁÐºÅ
        
    protected:
        CRTPRecvSession* _rtp_send_session;
        
        RAW_AUDIO_FRAME_PTR _mix_frame_ptr;
        
        unsigned char _mix_audio_packet[256];
        
    public:
        bool malloc_mix_audio_frame();
        
        void free_mix_audio_frame();
        
        bool add_mix_frame(RAW_AUDIO_FRAME_PTR* frame_ptr);
        
        void send_mix_frame();
        
        void send_audience_audio_packet(unsigned char* data, unsigned long len);
        
    private:
        CPCMPlayer player;

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
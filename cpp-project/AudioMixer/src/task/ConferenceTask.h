// **********************************************************************
// ×÷Õß: ¸µÓÓÃú
// °æ±¾: 1.0
// ÈÕÆÚ: 2011-01 ~ 2011-11
// ÐÞ¸ÄÀúÊ·¼ÇÂ¼: 
// ÈÕÆÚ, ×÷Õß, ±ä¸üÄÚÈÝ
// **********************************************************************
#ifndef _CONFERENCE_TASK_H_
#define _CONFERENCE_TASK_H_

#if defined(_MSC_VER) && (_MSC_VER >= 1200)
#pragma once
#endif // defined(_MSC_VER) && (_MSC_VER >= 1200)

#include "GeneralDef.h"
#include "Task.h"
#include "ScheduleServer.h"
#include "Participant.h"
#include "TaskCounter.h"

using namespace std;

//ÈçºÎ±£Ö¤»áÒé½áÊøÊ±µÈËùÓÐ»ìÒôÈÎÎñ½áÊøÔÙÏú»Ùcodec£¿ÔÚend()ÖÐWaitForMultipleObject
//´ÓÓïÒô±àÂë°ü»ñÈ¡µÄÄÜÁ¿ºÍ»ìÒôÊ±ÊäÈëµÄÄÜÁ¿µÄ¹ØÏµ£¿

namespace ScheduleServer
{
	//»áÒé²ÎÊý////////////////////////////////////////////////////////////////////////
	//»áÒé×´Ì¬
	typedef enum
	{
		ConferenceTask_Begin = 0,//»áÒé¿ªÊ¼
		//ConferenceTask_UpdateParticipant,//¸üÐÂÓë»áÈËÔ±ÐÅÏ¢
		ConferenceTask_FetchAudioFrame,//¶¨ÆÚÈ¡·¢ÑÔÈËµÄÔ­Ê¼ÓïÒôÖ¡
		CConferenceTask_AudioMix,//²úÉú»ìÒôÈÎÎñ
		ConferenceTask_Done//»áÒé½áÊø
	}
	CONFERENCE_TASK_STATUS;

	//»áÒéÈÎÎñÐÅÏ¢
	//Èô»áÒé·¢ÆðÈËÎª¾¯ÎñÖÕ¶Ë£¬ÔòÒÔ·¢ÆðÈËID×÷Îª»áÒéID
	//Èô»áÒé·¢ÆðÈËÎª»áÒé·þÎñÆ÷Ç°Ì¨£¬ÔòÒÔ²úÉú»áÒéµÄÊ±´ÁÎªµ±Ç°ID£¨ÈôÊ±´ÁÓëÏÖÓÐ»áÒéµÄIDÖØ¸´£¬Ôò²»¶ÏÀÛ¼ÓÊ±´ÁÖ±ÖÁ²»ÖØ¸´£©£¬»áÒé·¢ÆðÈËIDÎªWebÓÃ»§µÄID
	typedef struct tagCONFERENCE_TASK_INFO
	{
		unsigned long conference_id;//»áÒéID
		unsigned long sponsor;//·¢ÆðÈËµÄID
		//std::map<unsigned long, bool/*is speaker?*/> init_participants;//³õÊ¼Óë»áUAµÄIDµÄÊý×é
		unsigned short conference_level;//»áÒé¼¶±ð£¬¼´»áÒé·¢ÆðÈË¼¶±ð
		unsigned long index;//³ÌÐòÔËÐÐÖÁ½ñ´´½¨µÄ»áÒéµÄÐòºÅ

		tagCONFERENCE_TASK_INFO() : conference_id(0), sponsor(0), conference_level(0), index(0)
		{
			//init_participants.clear();
		}

		~tagCONFERENCE_TASK_INFO()
		{
			//init_participants.clear();
		}
	}
	CONFERENCE_TASK_INFO;

	//»áÒéÈÎÎñ////////////////////////////////////////////////////////////////////////
	class CConferenceTask : public CTask
	{
	public:
		CConferenceTask(CONFERENCE_TASK_INFO& task_info);
		virtual ~CConferenceTask();

		virtual SS_Error run();

        void init_participants();

	public://»áÒé¿ØÖÆ²Ù×÷
		//Ìí¼ÓÓë»áÈËÔ±,µ«¸ÃÈËÔ±»¹Î´ºô½Ð
		SS_Error add_participant(unsigned long ua_id, bool is_speaker);

		//ÌÞ³ýÓë»áÈËÔ±
		SS_Error remove_participant(unsigned long ua_id);

		//½áÊø»áÒé
		SS_Error close();

	public:
		//·µ»Ø»áÒéÀàÐÍ
		virtual CONFERENCE_TYPE get_type() = 0;
        
    private:
        void audio_mix_for_speakers();
        void audio_mix_for_audiences();
        
	public:
		//static const unsigned long _update_participants_info_interval;//¸üÐÂÓë»áUAÐÅÏ¢µÄÊ±¼ä¼ä¸ô£¨ºÁÃë£©
		//static const unsigned long _notify_conference_status_interval;//Í¨Öª»áÒé·¢ÆðÈË»áÒé×´Ì¬µÄÊ±¼ä¼ä¸ô£¨ºÁÃë£©
		static const unsigned short _max_speaker_num;//×î¶à·¢ÑÔÈË¸öÊý

	protected:
		virtual SS_Error on_done();

		virtual SS_Error on_exception();
        
        bool fetch_raw_audio_frame();
        
        double static calculate_audio_mix_fscale(unsigned short speaker_num);//¼ÆËã»ìÒôÏµÊý

	protected:
		/*volatile */CONFERENCE_TASK_STATUS _status;

		CONFERENCE_TASK_INFO _task_info;

		//Óë»áÈËÔ±ÁÐ±í
		map<unsigned long/*UA ID*/, PARTICIPANT> _participants;//Óë»áÈËÔ±
		CSSMutex _participants_mutex;//·ÃÎÊÓë»áÈËÔ±µÄ»¥³âÁ¿

		//vector<AUDIENCE> _audience_vec;//¹©CAudienceAudioMixTaskÓÃµÄÌýÖÚÁÐ±í
		//bool _has_pcm_audience;//¹©CAudienceAudioMixTask
		
		/*volatile */bool _to_be_ended;//ÊÇ·ñÒÑÊÕµ½½áÊø»áÒéÍ¨Öª

		//CiLBCCodec _audience_amr_codec;//·Ç·¢ÑÔÈËUA¹²ÓÃµÄ±à½âÂëÆ÷£¨Ö»±àÂë£©

		//CPCMCodec _audience_pcm_codec;//·Ç·¢ÑÔÈËÊÖÌ¨»ò¹Ì»°¹²ÓÃµÄ±à½âÂëÆ÷£¨Ö»±àÂë£©

		unsigned long _next_fetch_audio_frame_timestamp;//ÏÂ´ÎÈ¡ÒôÆµÊý¾Ý°üµÄÊ±´Á		

		CSSMutex _conference_control_mutext;//»áÒé¿ØÖÆ²Ù×÷»¥³âÁ¿
        
		//time_t _start_timestamp;//Æô¶¯Ê±¼ä

	private:
		//CTaskCounter _generate_task_counter;//»áÒé²úÉúÈÎÎñ¼ÆÊýÆ÷
        
    private:
        CAudioCodec* _audio_codec;
        unsigned char _mix_audio_packet[256];//for audience
        
        struct timeval _start;
        struct timeval _end;
        struct timeval _now;
        unsigned long _cur_us;
	};
    
    //Common////////////////////////////////////////////////////////////////////////
	class CCommonConferenceTask : public CConferenceTask
	{
	public:
		CCommonConferenceTask(CONFERENCE_TASK_INFO& task_info) : CConferenceTask(task_info)
		{
		}
		virtual ~CCommonConferenceTask()
		{
		}

	public:
		//返回会议类型
		virtual CONFERENCE_TYPE get_type()
		{
			return Common_Conference;
		}
	};
}

#endif  //_CONFERENCE_TASK_H_      

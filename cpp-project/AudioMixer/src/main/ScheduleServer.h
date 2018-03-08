// **********************************************************************
// ×÷Õß: ¸µÓÓÃú
// °æ±¾: 1.0
// ÈÕÆÚ: 2011-01 ~ 2011-11
// ÐÞ¸ÄÀúÊ·¼ÇÂ¼: 
// ÈÕÆÚ, ×÷Õß, ±ä¸üÄÚÈÝ
// **********************************************************************
#ifndef _SCHEDULE_SERVER_H_       
#define _SCHEDULE_SERVER_H_

#include "GeneralDef.h"
#include "singleton.h"
#include "MiscTool.h"
#include "ConfigBox.h"
#include "UserAgent.h"
#include "JRTPSession.h"
#include "AudioSendThread.h"
#include "AudioMixThread.h"
#include "PCMPlayThread.h"
#include "PCMPlayer.h"
#include "TaskThread.h"
#include "LocalPlayThread.h"
#include "LocalRecordThread.h"

#include "rtpipv4address.h"

namespace ScheduleServer
{
	class CScheduleServer
	{
	public:
		CScheduleServer();

		~CScheduleServer();

		SS_Error start(RUNNING_MODE mode);
		SS_Error shutdown();
        
        SS_Error start_mixer(unsigned short local_recv_port);
		SS_Error shutdown_mixer();

		void write_log(std::string& log, int level, bool show_on_screen);

		void wait_for_shutdown();

		//¿ªÆô·þÎñ
		void enable() { _enalble = true; }

		//¹Ø±Õ·þÎñ
		void disable()
		{
            _enalble = false;
		}

	public:
        static void on_recv_rtp_packet(const unsigned char* data, const unsigned long& length,
											const unsigned short& sequence, const unsigned long& timestamp,
											const unsigned long& ssrc, const unsigned char&payload_type, const bool& mark,
                                            const char* src_ip, const unsigned short src_port);
		static void on_recv_rtcp_packet();

		//½ÓÊÕNATÌ½²â°ü
		static void on_recv_nat_probe(const char* content, const unsigned long& length, const unsigned long& sender_ip, const unsigned short& sender_port);

	private:
		void console_command(const std::vector<std::string>& cmd);

		//¿ØÖÆÌ¨ÃüÁî
		void test();
        void test_ilbc();

	private:
		/*volatile */bool _enalble;//·þÎñÊÇ·ñ¿ÉÓÃ

		//³ÌÐòËùÔÚÎÄ¼þ¼Ð¾ø¶ÔÂ·¾¶
		std::string _cur_path;

		std::map<unsigned long, CUserAgent*> _ua_map;
        std::map<jrtplib::RTPIPv4Address, unsigned long> _ua_id_map;
		CSSMutex _ua_map_mutex;

		CRTPRecvSession** _rtp_recv_session;//Ã½Ìå½ÓÊÕRTP SessionµÄÖ¸ÕëÊý×é
		unsigned short _rtp_recv_thread_num;//Ã½Ìå½ÓÊÕRTP SessionµÄÊýÁ¿
		unsigned short _rtp_recv_base_port;//Ã½Ìå½ÓÊÕRTP SessionµÄ¼àÌý»ù×¼¶Ë¿Ú
        
        CAudioSendThread* _audio_send_thread[UA_NUM];
        CAudioMixThread* _audio_mix_thread;

	public:
		static std::string _ver;

	public:
		//Ôö¼ÓÈÎÎñ
		//indexÎª0ÔòÊÇËæ»úÑ¡ÔñÈÎÎñÏß³Ì£¬·ñÔòÑ¡ÔñindexÄ£ÈÎÎñÏß³ÌÊýÈ¡ÓàµÄÈÎÎñÏß³Ì
		SS_Error add_task(CTask* task, unsigned long index);

		//UA²Ù×÷////////////////////////////////////////////////////////////////////////
		//×¢²áUA
		//ipÎªÍøÂç×Ö½ÚÐò£¬audio_portºÍvideo_portÎªÖ÷»ú×Ö½ÚÐò
		//SS_Error reg_ua(const unsigned long& id, const char* ip, const unsigned short& audio_port, const unsigned short& video_port, USER_AGENT_TYPE type)
        SS_Error reg_ua(const unsigned long id, const char* ip, const unsigned short& audio_port, const int codec)
		{
			//if(!id) return SS_NoErr;

			CSSLocker lock(&_ua_map_mutex);

			if(_ua_map.end() == _ua_map.find(id))
			{
				//µÚÒ»´Î×¢²á
				USER_AGENT_INFO info;
				info.id = id;

				if(NULL != ip)//TCPÌ½²â°üIP×Ö¶ÎÎª0£¬²»Ó¦¸üÐÂ
				{
					//info.ip = ip;
					memset(info.ip, 0, sizeof(info.ip));
					memcpy(info.ip, ip, strlen(ip));
				}

				info.audio_port = (!audio_port) ? info.audio_port : audio_port;//ÊäÈë¶Ë¿ÚÎª0Ôò²»¸üÐÂ
				//info.video_port = (!video_port) ? info.video_port : video_port;//ÊäÈë¶Ë¿ÚÎª0Ôò²»¸üÐÂ
				

				CUserAgent* ua = NULL;
				/*if(UA_MobilePhone == type)
				{
					ua = new CMobileUserAgent(info);
				}
				else if(UA_Radio == type)
				{
					ua = new CRadioUserAgent(info);
				}
				else if(UA_FixedPhone == type)
				{
					ua = new CPhoneUserAgent(info);
				}*/
                
                std::cout << "add ua which id: " << info.id << std::endl;
                ua = new CMobileUserAgent(info);

				if(NULL != ua)
				{
					//ua->update_alive_timestamp();
					_ua_map[ua->_info.id] = ua;

					//_ua_video_packet_sequence[id] = 0;

					//ua->update_alive_timestamp();
				}
			}
			else
			{
				//ÒÑ×¢²á¹ý
				CUserAgent* ua = _ua_map[id];

				if(NULL == ua)
					return SS_NoErr;

				if(NULL != ip)//TCPÌ½²â°üIP×Ö¶ÎÎª0£¬²»Ó¦¸üÐÂ
				{
					//ua->_info.ip = ip;
					memset(ua->_info.ip, 0, sizeof(ua->_info.ip));
					memcpy(ua->_info.ip, ip, strlen(ip));
				}

				ua->_info.audio_port = (!audio_port) ? ua->_info.audio_port : audio_port;//ÊäÈë¶Ë¿ÚÎª0Ôò²»¸üÐÂ
				//ua->_info.video_port = (!video_port) ? ua->_info.video_port : video_port;//ÊäÈë¶Ë¿ÚÎª0Ôò²»¸üÐÂ
				
				//ua->update_alive_timestamp();
			}
            
            _ua_id_map[jrtplib::RTPIPv4Address(ntohl(inet_addr(ip)), audio_port)] = id;

			return SS_NoErr;
		}

		//×¢²áUA
		/*SS_Error reg_ua(const string& id, const string& ip, const string& audio_port, const string& video_port, USER_AGENT_TYPE type)
		{
			return reg_ua(MiscTools::parse_string_to_type<unsigned long>(id),
						inet_addr(ip.c_str()),
						MiscTools::parse_string_to_type<unsigned short>(audio_port),
						MiscTools::parse_string_to_type<unsigned short>(video_port),
						type);
		}*/

		//»ñÈ¡UAÖ¸Õë
		inline CUserAgent* fetch_ua(const unsigned long& id)
		{
			CSSLocker lock(&_ua_map_mutex);

			//if(!id || _ua_map.end() == _ua_map.find(id))
            if(_ua_map.end() == _ua_map.find(id)) return NULL;

			return _ua_map[id];
		}
        
        inline CUserAgent* fetch_ua(const char* ip, const unsigned short port)
		{
			CSSLocker lock(&_ua_map_mutex);
            
            if(_ua_id_map.end() == _ua_id_map.find(jrtplib::RTPIPv4Address(ntohl(inet_addr(ip)), port))) return NULL;
            
            unsigned long id = _ua_id_map[jrtplib::RTPIPv4Address(ntohl(inet_addr(ip)), port)];

			if(_ua_map.end() == _ua_map.find(id)) return NULL;

			return _ua_map[id];
		}

		//»ñÈ¡UAÖ¸Õë
		/*CUserAgent* fetch_ua(const string& id)
		{	
			return fetch_ua(MiscTools::parse_string_to_type<unsigned long>(('0' > id[id.length() - 1] || '9' < id[id.length() - 1]) ? id.substr(0, id.length()) : id));
		}*/


		//¸ù¾ÝID´Ó_ua_mapÖÐÉ¾³ýUAÍ¬Ê±Ïú»ÙUA
		void remove_ua(const unsigned long& id)
		{
			CSSLocker lock(&_ua_map_mutex);

			CUserAgent* ua = NULL;

			ua = _ua_map[id];
			_ua_map.erase(id);
						
			delete ua;
			ua = NULL;
		}
        
		void remove_all_ua()
		{
			CSSLocker lock(&_ua_map_mutex);

			for(std::map<unsigned long, CUserAgent*>::iterator iter = _ua_map.begin(); iter != _ua_map.end(); ++iter)
			{
				delete iter->second;
				iter->second = NULL;
			}

			_ua_map.clear();
		}
        
    public:
        CPCMPlayer _pcm_player;
    private:
        //CPCMPlayThread _pcm_play_thread;
        CLocalPlayThread _local_play_thread;
        CLocalRecordThread _local_record_thread;
        
    private:
        std::map<unsigned long, CTask*> _conference_map;
        CSSMutex _conference_map_mutex;
        
    public:
        SS_Error add_conference(unsigned long& id);
        SS_Error close_conference(unsigned long id);
        //SS_Error add_paiticipant(unsigned long conference_id, unsigned long participant_id);
        unsigned long add_paiticipant(unsigned long& participant_id, unsigned long conference_id, char* ip, unsigned short, int codec);
        SS_Error remove_paiticipant(unsigned long conference_id, unsigned long participant_id);
        
        SS_Error pause_conference(unsigned long conference_id);
        SS_Error resume_conference(unsigned long conference_id);
        
        void query_conference(unsigned long conference_id);
        
    private:
        unsigned long _milestone;
        
    protected:
        RUNNING_MODE _mode;
        
    public:
        RUNNING_MODE get_mode() { return  _mode; }
        
	};
}

#endif//_SCHEDULE_SERVER_H_
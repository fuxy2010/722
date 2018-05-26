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
#include "PCMPlayer.h"
#include "TaskThread.h"
#include "LocalPlayThread.h"
#include "LocalRecordThread.h"
#include "BroadcastThread.h"
#include "ConferenceMixThread.h"

#include "rtpipv4address.h"

namespace ScheduleServer
{
	class CScheduleServer
	{
	public:
		CScheduleServer();

		~CScheduleServer();

		//SS_Error start(RUNNING_MODE mode);
		//SS_Error shutdown();
        
        //SS_Error start_mixer(unsigned short local_recv_port);
        SS_Error start_mixer();
		SS_Error shutdown_mixer();
        
        //SS_Error start_broadcast();
		//SS_Error shutdown_broadcast();
        //SS_Error add_broadcast_receiver(char* ip, unsigned short port, int codec);
        
        SS_Error start_p2p(char* remote_ip, unsigned short remote_port, unsigned short local_port);
        SS_Error shutdown_p2p();

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
        //std::map<jrtplib::RTPIPv4Address, unsigned long> _ua_id_map;
        std::map<std::string, unsigned long> _ua_id_map2;
		CSSMutex _ua_map_mutex;
        CSSMutex _role_mutex;

		CRTPRecvSession** _rtp_recv_session;//Ã½Ìå½ÓÊÕRTP SessionµÄÖ¸ÕëÊý×é
		unsigned short _rtp_recv_thread_num;//Ã½Ìå½ÓÊÕRTP SessionµÄÊýÁ¿
		unsigned short _rtp_recv_base_port;//Ã½Ìå½ÓÊÕRTP SessionµÄ¼àÌý»ù×¼¶Ë¿Ú

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
        //SS_Error reg_ua(const unsigned long id, const char* remote_ip, const unsigned short& audio_port, const int codec, unsigned short local_port)
        SS_Error reg_ua(unsigned long& id, const char* remote_ip, const unsigned short& audio_port, const int codec, unsigned short local_port)
		{
			//if(NULL == remote_ip || !audio_port || !local_port) return SS_InvalidUA;
            if(NULL == remote_ip) return SS_InvalidUA;

			CSSLocker lock(&_ua_map_mutex);
            
            char addr[32];
            sprintf(addr, "%s:%d", remote_ip, audio_port);

			//if(_ua_map.end() == _ua_map.find(id))
            if(_ua_id_map2.end() == _ua_id_map2.find(addr))
			{
                USER_AGENT_INFO info;
				info.id = id;
                info.codec = codec;

                memset(info.ip, 0, sizeof(info.ip));
                memcpy(info.ip, remote_ip, strlen(remote_ip));
                
                info.audio_port = (!audio_port) ? info.audio_port : audio_port;
                info.bind_port = (!local_port) ? info.bind_port : local_port;

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
                    _ua_id_map2[addr] = id;

					//_ua_video_packet_sequence[id] = 0;

					//ua->update_alive_timestamp();
                    
                    ua->add_addr();
				}
			}
			else
			{
                id = _ua_id_map2[addr];
                
				//ÒÑ×¢²á¹ý
				CUserAgent* ua = _ua_map[id];

				if(NULL == ua) return SS_InvalidUA;
                
                ua->remove_addr();

				memset(ua->_info.ip, 0, sizeof(ua->_info.ip));
                memcpy(ua->_info.ip, remote_ip, strlen(remote_ip));
                
                ua->_info.audio_port = (!audio_port) ? ua->_info.audio_port : audio_port;
                ua->_info.bind_port = (!local_port) ? ua->_info.bind_port : local_port;
				
				//ua->update_alive_timestamp();
                
                ua->add_addr();
			}

			return SS_NoErr;
		}
        
        SS_Error update_ua_addr(const unsigned long id, const char* remote_ip, const unsigned short& audio_port)
		{
			//if(NULL == remote_ip || !audio_port) return SS_InvalidUA;
            if(NULL == remote_ip) return SS_InvalidUA;
            
            CSSLocker lock(&_ua_map_mutex);
            
            if(_ua_map.end() == _ua_map.find(id)) return SS_InvalidUA;
            
            CUserAgent* ua = _ua_map[id];            
            if(NULL == ua) return SS_InvalidUA;
            
            ua->remove_addr();
            
            memset(ua->_info.ip, 0, sizeof(ua->_info.ip));
            memcpy(ua->_info.ip, remote_ip, strlen(remote_ip));
            ua->_info.audio_port = (!audio_port) ? ua->_info.audio_port : audio_port;            
            
            ua->add_addr();
            
            char addr[32];
            sprintf(addr, "%s:%d", remote_ip, audio_port);
            
            for(std::map<std::string, unsigned long>::iterator iter = _ua_id_map2.begin(); iter != _ua_id_map2.end(); ++iter)
            {
                if(id == iter->second)
                {
                    _ua_id_map2.erase(iter);
                    _ua_id_map2[addr] = id;
                    break;
                }
            }
            
            return SS_NoErr;        
        }

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
            
            //if(_ua_id_map.end() == _ua_id_map.find(jrtplib::RTPIPv4Address(ntohl(inet_addr(ip)), port))) return NULL;
            
            //unsigned long id = _ua_id_map[jrtplib::RTPIPv4Address(ntohl(inet_addr(ip)), port)];
            
            char addr[32];
            sprintf(addr, "%s:%d", ip, port);
            
            if(_ua_id_map2.end() == _ua_id_map2.find(addr)) return NULL;
            
            unsigned long id = _ua_id_map2[addr];

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
            if(!id) return;
            if(SELF_UA_ID == id) return;
            
			CSSLocker lock(&_ua_map_mutex);

			CUserAgent* ua = NULL;

			ua = _ua_map[id];
			_ua_map.erase(id);
						
			delete ua;
			ua = NULL;
            
            for(std::map<std::string, unsigned long>::iterator iter = _ua_id_map2.begin(); iter != _ua_id_map2.end(); ++iter)
            {
                if(id == iter->second)
                {
                    _ua_id_map2.erase(iter);
                    break;
                }
            }
		}
        
		void remove_all_ua()
		{
			CSSLocker lock(&_ua_map_mutex);

			for(std::map<unsigned long, CUserAgent*>::iterator iter = _ua_map.begin(); iter != _ua_map.end(); ++iter)
			{
                if(!iter->first) continue;
                if(1 == iter->first) continue;
                
                if(NULL == iter->second) continue;
                
				delete iter->second;
				iter->second = NULL;
			}

			_ua_map.clear();
            _ua_id_map2.clear();
		}
        
    public:
        //CPCMPlayer _pcm_player;
        
    private:
        CLocalPlayThread _local_play_thread;
        CLocalRecordThread _local_record_thread;
        //CBroadcastThread _broadcast_thread;
        CConferenceMixThread _conference_mix_thread;
        
    private:
        std::map<unsigned long, CTask*> _conference_map;
        CSSMutex _conference_map_mutex;
        
    public:
        SS_Error add_conference(unsigned long& id);
        SS_Error add_broadcast_conference(unsigned long& id);
        SS_Error close_conference(unsigned long id);
        //SS_Error add_paiticipant(unsigned long conference_id, unsigned long participant_id);
        unsigned long add_paiticipant(unsigned long& participant_id, unsigned long conference_id, char* remote_ip, unsigned short remote_port, int codec, PARTICIPANT_ROLE role, unsigned short local_port);
        SS_Error remove_paiticipant(unsigned long conference_id, unsigned long participant_id);
        
        SS_Error pause_conference(unsigned long conference_id);
        SS_Error resume_conference(unsigned long conference_id);
        
        void close_all_conference();
        void query_conference(unsigned long conference_id);
        void play_conference(unsigned long conference_id);
        void add_self(unsigned long conference_id);
        bool fetch_conference_mix_audio(RAW_AUDIO_FRAME_PTR mix_frame_ptr);
        
    public:
        void local_start_fileplay(char* fname, int times)
        {
            _local_play_thread.config_wav_file(fname, times);
        }
        
        void local_stop_fileplay()
        {
            _local_play_thread.close_wav_file();
        }
        
    public:
        static bool check_wav_file(char* filename)
        {
            struct WAV_Format wav_format;
        
            FILE* fp = fopen(filename, "rb");
            
            if(NULL == fp) return false;
        
            fread(&wav_format, sizeof(struct WAV_Format), 1, fp);
            
            fclose(fp);
            
            if(1 == wav_format.NumChannels && 8000 == wav_format.SampleRate && 16 == wav_format.BitsPerSample) return true;
            
            return false;
        }
        
    private:
        unsigned long _milestone;
        
    /*protected:
        RUNNING_MODE _mode;
        
    public:
        RUNNING_MODE get_mode() { return _mode; }*/
        
    protected:
        ROLE _role;
        
    public:
        ROLE get_role() { return _role; }
        
	};
}

#endif//_SCHEDULE_SERVER_H_
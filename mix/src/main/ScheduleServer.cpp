// **********************************************************************
// ×÷Õß: ¸µÓÓÃú
// °æ±¾: 1.0
// ÈÕÆÚ: 2011-01 ~ 2011-11
// ÐÞ¸ÄÀúÊ·¼ÇÂ¼: 
// ÈÕÆÚ, ×÷Õß, ±ä¸üÄÚÈÝ
// **********************************************************************
// ScheduleServer.cpp : Defines the entry point for the console application.
//
#include "ScheduleServer.h"
#include "MediaData.h"
#include "AES.h"
#include "TestTask.h"
#include "ConferenceTask.h"

using namespace ScheduleServer;

std::string CScheduleServer::_ver = "20171111 with MQTT";

CScheduleServer::CScheduleServer() :
_cur_path(""),
_enalble(false),
_rtp_recv_session(NULL),
_rtp_recv_thread_num(0),
_rtp_recv_base_port(0),
_milestone(0),
//_mode(MODE_CONFERENCE)
_role(IDLE)
{
	_ua_map.clear();
}

CScheduleServer::~CScheduleServer()
{
}

//SS_Error CScheduleServer::start_mixer(unsigned short local_recv_port)
SS_Error CScheduleServer::start_mixer()
{
#if 0
    if(false)
    {
        _ua_id_map[jrtplib::RTPIPv4Address(ntohl(inet_addr("10.10.10.4")), 22000)] = 1;
        //_ua_id_map[jrtplib::RTPIPv4Address(ntohl(inet_addr("10.10.10.4")), 22010)] = 2;
        //_ua_id_map[jrtplib::RTPIPv4Address(ntohl(inet_addr("10.10.10.4")), 22020)] = 3;
        
        if(_ua_id_map.end() == _ua_id_map.find(jrtplib::RTPIPv4Address(ntohl(inet_addr("10.10.10.4")), 22030)))
        {
            return SS_NoErr;
        }
    }
#endif
    
    {
        CSSLocker lock(&_role_mutex);
        
        if(IDLE != _role) return SS_ModifyRoleFail;
        
        _role = CONF_MASTER;//_mode = MODE_CONFERENCE;
    }
    
    struct timeval time;
    gettimeofday(&time, NULL);
    _milestone = 1000000 * time.tv_sec + time.tv_usec;
    
    //_cur_path = path;

    //Audio recv rtp session
    //_rtp_recv_thread_num = 1;
    //_rtp_recv_session = new CRTPRecvSession*[1];
    //_rtp_recv_session[0] = new CRTPRecvSession(local_recv_port);
    //_rtp_recv_session[0]->set_rtp_callback(CScheduleServer::on_recv_rtp_packet);

    _enalble = true;//·þÎñ¿ÉÓÃ

    //启动任务线程////////////////////////////////////////////////////////////////////////
	CTaskThreadPool::add_threads(2, this);
    
    _conference_mix_thread.Start();
    _local_play_thread.Start();
    _local_record_thread.Start();    

	return SS_NoErr;

}

SS_Error CScheduleServer::shutdown_mixer()
{
	_enalble = false;
    
    usleep(1000000);

	//¹Ø±ÕRTP½ÓÊÕ»á»°////////////////////////////////////////////////////////////////////////
	/*for(unsigned short i = 0; i < _rtp_recv_thread_num; ++i)
	{
		delete _rtp_recv_session[i];
		_rtp_recv_session[i] = NULL;
	}

    delete _rtp_recv_session[0];
    _rtp_recv_session[0] = NULL;
	delete[] _rtp_recv_session;
	_rtp_recv_session = NULL;*/
    
    _local_record_thread.Kill();
    _local_play_thread.Kill();
    _conference_mix_thread.Kill();
    
    CTaskThreadPool::remove_threads();

	//É¾³ýËùÓÐUA////////////////////////////////////////////////////////////////////////
	remove_all_ua();
    
    {
        CSSLocker lock(&_role_mutex);
        
        _role = IDLE;
    }

	return SS_NoErr;
}

SS_Error CScheduleServer::start_p2p(char* remote_ip, unsigned short remote_port, unsigned short local_port)
{
    {
        CSSLocker lock(&_role_mutex);
        
        if(IDLE != _role) return SS_ModifyRoleFail;
        
        _role = P2P_PEER;
    }
    
    struct timeval time;
    gettimeofday(&time, NULL);
    _milestone = 1000000 * time.tv_sec + time.tv_usec;
    
    //Audio recv rtp session
    _rtp_recv_thread_num = 1;
    _rtp_recv_session = new CRTPRecvSession*[1];
    _rtp_recv_session[0] = new CRTPRecvSession(local_port);
    _rtp_recv_session[0]->set_rtp_callback(CScheduleServer::on_recv_rtp_packet);
    
    _enalble = true;//·þÎñ¿ÉÓÃ
    
    _local_play_thread.Start();
    
    _local_record_thread.add_remote(remote_ip, remote_port);
    _local_record_thread.set_audio_codec(G711_CODEC);
    _local_record_thread.Start();

	return SS_NoErr;
}

SS_Error CScheduleServer::shutdown_p2p()
{
    _enalble = false;
    
    for(unsigned short i = 0; i < _rtp_recv_thread_num; ++i)
	{
		delete _rtp_recv_session[i];
		_rtp_recv_session[i] = NULL;
	}

    delete _rtp_recv_session[0];
    _rtp_recv_session[0] = NULL;
	delete[] _rtp_recv_session;
	_rtp_recv_session = NULL;    
    
    _local_record_thread.Kill();
    _local_play_thread.Kill();
	
	remove_all_ua();
    
    {
        CSSLocker lock(&_role_mutex);
        
        _role = IDLE;
    }

	return SS_NoErr;
}

void CScheduleServer::wait_for_shutdown()
{
	//LOG_WRITE("CScheduleServer::wait_for_shutdown()", 1, false);

	// Ñ­»·´¦ÀíÃüÁîÐÐÊäÈë
	std::string input_str("");
    
	while (1)
	{
        std::cin >> input_str;

		input_str = MiscTools::trim_string(input_str);

		if (input_str.empty())
			continue;

		//LOG_WRITE("<console command> " + input_str, 1, false);

		if("quit" == input_str || "exit" == input_str)
			return;

		//´¦Àí¿ØÖÆÌ¨ÃüÁî
		std::vector<std::string> cmd;
		MiscTools::split_string(input_str, " ", cmd);

		if(cmd.size())
		{
			console_command(cmd);
		}

	}

}

void CScheduleServer::write_log(std::string& log, int level, bool show_on_screen)
{
	//SINGLETON(CLogger).trace_out(log, level, DEFAULT_TRACE_TYPE, show_on_screen);
}

void CScheduleServer::console_command(const std::vector<std::string>& cmd)
{
	//cout << "\ncommand: " << cmd << endl;
	if(true == MiscTools::compare_string_ignore_case(cmd[0], "test") ||
		true == MiscTools::compare_string_ignore_case(cmd[0], "t"))//²âÊÔ
	{
		test();
	}	
	else if(true == MiscTools::compare_string_ignore_case(cmd[0], "c"))//»áÒéÏà¹Ø²âÊÔ
	{
		//test_conference();
		test_ilbc();
	}
}

SS_Error CScheduleServer::add_task(CTask* task, unsigned long index)
{
	if(false == _enalble)
		return SS_AddTaskFail;

	if(NULL  == task)
		return SS_InvalidTask;

	CTaskThread* task_thread = CTaskThreadPool::select_thread(index);

	if(NULL == task_thread)
		return SS_AddTaskFail;

	if(SS_NoErr != task_thread->add_task(task))
	{
		return SS_AddTaskFail;
	}

	return SS_NoErr;
}


struct  timeval  ttt;
struct  timeval  end;      

//dataÎªº¬°üÍ·µÄRTP°ü£¬lengthÎª¾»ºÉ¼Ó°üÍ·³¤¶È
void CScheduleServer::on_recv_rtp_packet(const unsigned char* data, const unsigned long& length,
	const unsigned short& sequence, const unsigned long& timestamp,
	const unsigned long& ssrc, const unsigned char& payload_type, const bool& mark,
    const char* src_ip, const unsigned short src_port)
{
    //std::cout << "Got packet at " << timestamp << " from SSRC " << ssrc << " length " << length << " sequence " << sequence << " from " << src_ip << ":" << src_port << std::endl;
    //std::cout << "Got packet at " << sequence << " from " << src_ip << ":" << src_port << std::endl;
    //return;
    
#if 0
    /*if(0 == ssrc)
    {
        gettimeofday(&end, NULL);
        unsigned long timer = 1000000 * (end.tv_sec - ttt.tv_sec) + end.tv_usec - ttt.tv_usec;
        printf("timer = %ld us\n",timer);        
        ttt = end;
        
        CUserAgent* ua = SINGLETON(CScheduleServer).fetch_ua(0);
        if(NULL != ua) ua->add_audio_frame(data, length, sequence, timestamp);
    }*/
    
    return;
#endif
    
    if(CONF_MASTER == SINGLETON(CScheduleServer).get_role())
    {
        if(NULL == data || !length) return;
        
        CUserAgent* ua = SINGLETON(CScheduleServer).fetch_ua(src_ip, src_port);
        
        if(NULL == ua) return;
        
        ua->add_audio_frame(data, length, sequence, timestamp);
    }
    else if(P2P_PEER == SINGLETON(CScheduleServer).get_role())
    {
        if(NULL == data || !length) return;
        
        CUserAgent* ua = SINGLETON(CScheduleServer).fetch_ua(0);
        
        if(NULL == ua) return;
        
        ua->add_audio_frame(data, length, sequence, timestamp);
    }
    
    return;
    
#if 0
    /*if(1 == ssrc)
    {
        gettimeofday(&end, NULL);
        unsigned long timer = 1000000 * (end.tv_sec - ttt.tv_sec) + end.tv_usec - ttt.tv_usec;
        printf("timer = %ld us\n",timer);        
        ttt = end;
        
        CUserAgent* ua = SINGLETON(CScheduleServer).fetch_ua(0);
        if(NULL != ua) ua->add_audio_frame(data, length, sequence, timestamp);
    }*/
    
    return;
#endif
}

void CScheduleServer::on_recv_rtcp_packet()
{

}

#include "iLBCCodec.h"
void CScheduleServer::test_ilbc()
{
	FILE* file = fopen("music.pcm", "rb");

	if(NULL == file || NULL == file)
		return;

	unsigned char frame[1024];
	unsigned char packet[256];

	long _next_send_audio_packet_timestamp = 0;

	unsigned char buf[256];//video
	unsigned long sequence = 0;
	unsigned long timestamp = 0;

	CiLBCCodec* codec1 = new CiLBCCodec();
	CiLBCCodec* codec2 = new CiLBCCodec();
	CiLBCCodec* codec3 = new CiLBCCodec();

	/*while(1)
	{
		if(!_next_send_audio_packet_timestamp)//³õ´Î·¢ËÍÒôÆµ°ü
			_next_send_audio_packet_timestamp = timeGetTime();

		if(_next_send_audio_packet_timestamp > timeGetTime())//ÊÇ·ñÒÑµ½±¾´Î·¢°üÊ±¼ä
		{
			Sleep(1);
			continue;
		}

		//·¢ËÍÒôÆµ
		::memset(frame, 0, sizeof(frame));

		size_t read_len = fread(frame, 1, FRAME_LENGTH_IN_BYTE, file);

		//read from the head of music file again
		if(FRAME_LENGTH_IN_BYTE != read_len)
		{
			fseek(file, 0, SEEK_SET);
		}
		
		int packet_len = codec1->encode((short*)frame, packet);
		int frame_len = codec1->decode(packet, (short*)frame, 0);
		packet_len = codec1->encode((short*)frame, packet);

		::memset(buf, 0, sizeof(buf));
		::memcpy(buf + sizeof(RTPHeader), packet, packet_len);

		timestamp = 3;
		timestamp <<= 16;
		timestamp |= (0xFFFF & timeGetTime());

		CRTPNATSession::add_rtp_header(buf, packet_len + sizeof(RTPHeader), 0, 1, sequence, timestamp, 1);
		_rtsp_server->input_stream_data(1, buf,  packet_len + sizeof(RTPHeader), RTSPServerLib::CRTSPServer::kAudioStream);

		_next_send_audio_packet_timestamp += AUDIO_SAMPLING_RATE;
	}*/
}

void CScheduleServer::test()
{
}

SS_Error CScheduleServer::add_conference(unsigned long& id)
{
    struct timeval time;
    gettimeofday(&time, NULL);
    id = 1000000 * time.tv_sec + time.tv_usec;
    id -= _milestone;
    
    CONFERENCE_TASK_INFO conference_info;
    conference_info.conference_id = id;
    
    CConferenceTask* conference = new CCommonConferenceTask(conference_info);
        
    if(SS_NoErr != SINGLETON(CScheduleServer).add_task(conference, conference_info.conference_id))
    {
        delete conference;
        conference = NULL;
        
        return SS_AddTaskFail;
    }
        
    CSSLocker lock(&_conference_map_mutex);
    
    _conference_map[id] = conference;
    
    return SS_NoErr;
}

SS_Error CScheduleServer::add_broadcast_conference(unsigned long& id)
{
    struct timeval time;
    gettimeofday(&time, NULL);
    id = 1000000 * time.tv_sec + time.tv_usec;
    id -= _milestone;
    
    CONFERENCE_TASK_INFO conference_info;
    conference_info.conference_id = id;
    
    CConferenceTask* conference = new CBroadcastConferenceTask(conference_info);
        
    if(SS_NoErr != SINGLETON(CScheduleServer).add_task(conference, conference_info.conference_id))
    {
        delete conference;
        conference = NULL;
        
        return SS_AddTaskFail;
    }
        
    CSSLocker lock(&_conference_map_mutex);
    
    _conference_map[id] = conference;
    
    return SS_NoErr;
}

SS_Error CScheduleServer::close_conference(unsigned long id)
{
    CSSLocker lock(&_conference_map_mutex);
    
    if(_conference_map.end() == _conference_map.find(id)) return SS_ConferenceControlFail;
    
    CConferenceTask* conference = dynamic_cast<CConferenceTask*>(_conference_map[id]);
    
    if(NULL == conference) return SS_ConferenceControlFail;;
    
    conference->close();
    
    _conference_map.erase(id);
    
    return SS_NoErr;
}

//SS_Error CScheduleServer::add_paiticipant(unsigned long conference_id, unsigned long participant_id)
unsigned long CScheduleServer::add_paiticipant(unsigned long& participant_id, unsigned long conference_id, char* remote_ip, unsigned short remote_port, int codec, PARTICIPANT_ROLE role, unsigned short local_port)
{
    struct timeval time;
    gettimeofday(&time, NULL);
    unsigned long id = 1000000 * time.tv_sec + time.tv_usec;
    id -= _milestone;
    
    CSSLocker lock(&_conference_map_mutex);
    
    if(_conference_map.end() == _conference_map.find(conference_id)) return SS_ConferenceControlFail;
    
    CConferenceTask* conference = dynamic_cast<CConferenceTask*>(_conference_map[conference_id]);
    
    if(NULL == conference) return SS_ConferenceControlFail;
    
    if(SS_NoErr != reg_ua(id, (const char*)remote_ip, remote_port, codec, local_port)) return SS_InvalidUA;
    
    conference->add_participant(id, role);
    
    participant_id = id;
    
    return SS_NoErr;
}

SS_Error CScheduleServer::remove_paiticipant(unsigned long conference_id, unsigned long participant_id)
{
    CSSLocker lock(&_conference_map_mutex);
    
    if(_conference_map.end() == _conference_map.find(conference_id)) return SS_ConferenceControlFail;
    
    CConferenceTask* conference = dynamic_cast<CConferenceTask*>(_conference_map[conference_id]);
    
    if(NULL == conference) return SS_ConferenceControlFail;;
    
    conference->remove_participant(participant_id);
    
    return SS_NoErr;
}

SS_Error CScheduleServer::pause_conference(unsigned long conference_id)
{
    CSSLocker lock(&_conference_map_mutex);
    
    if(_conference_map.end() == _conference_map.find(conference_id)) return SS_ConferenceControlFail;
    
    CConferenceTask* conference = dynamic_cast<CConferenceTask*>(_conference_map[conference_id]);
    
    if(NULL == conference) return SS_ConferenceControlFail;;
    
    conference->pause();
    
    return SS_NoErr;
}

SS_Error CScheduleServer::resume_conference(unsigned long conference_id)
{
    CSSLocker lock(&_conference_map_mutex);
    
    if(_conference_map.end() == _conference_map.find(conference_id)) return SS_ConferenceControlFail;
    
    CConferenceTask* conference = dynamic_cast<CConferenceTask*>(_conference_map[conference_id]);
    
    if(NULL == conference) return SS_ConferenceControlFail;;
    
    conference->resume();
    
    return SS_NoErr;
}

void CScheduleServer::close_all_conference()
{
    CSSLocker lock(&_conference_map_mutex);
    
    for(map<unsigned long, CTask*>::iterator iter = _conference_map.begin(); iter != _conference_map.end(); ++iter)
    {
        CConferenceTask* task  = dynamic_cast<CConferenceTask*>(iter->second);
        
        if(NULL == task) continue;
        
        task->close();
    }
    
    _conference_map.clear();
}

void CScheduleServer::query_conference(unsigned long conference_id)
{
    CSSLocker lock(&_conference_map_mutex);
    
    for(map<unsigned long, CTask*>::iterator iter = _conference_map.begin(); iter != _conference_map.end(); ++iter)
    {
        CConferenceTask* task  = dynamic_cast<CConferenceTask*>(iter->second);
        
        if(NULL == task) continue;
        
        if(conference_id != task->get_conference_id()) continue;
        
        task->query();
    }
}

void CScheduleServer::play_conference(unsigned long conference_id)
{
    CSSLocker lock(&_conference_map_mutex);
    
    for(map<unsigned long, CTask*>::iterator iter = _conference_map.begin(); iter != _conference_map.end(); ++iter)
    {
        CConferenceTask* task  = dynamic_cast<CConferenceTask*>(iter->second);
        
        if(NULL == task) continue;
        
        //if(conference_id != task->get_conference_id()) task->mute();
        //else task->play();
        
        task->play();
    }
}

void CScheduleServer::add_self(unsigned long conference_id)
{
    CSSLocker lock(&_conference_map_mutex);
    
    for(map<unsigned long, CTask*>::iterator iter = _conference_map.begin(); iter != _conference_map.end(); ++iter)
    {
        CConferenceTask* task  = dynamic_cast<CConferenceTask*>(iter->second);
        
        if(NULL == task) continue;
        
        if(conference_id != task->get_conference_id()) task->remove_participant(SELF_UA_ID);
        else task->add_participant(SELF_UA_ID, Speaker);
    }
}

bool CScheduleServer::fetch_conference_mix_audio(RAW_AUDIO_FRAME_PTR mix_frame_ptr)
{
    CSSLocker lock(&_conference_map_mutex);
    
    bool fetched = false;
    
    for(map<unsigned long, CTask*>::iterator iter = _conference_map.begin(); iter != _conference_map.end(); ++iter)
    {
        CConferenceTask* task  = dynamic_cast<CConferenceTask*>(iter->second);
        
        if(NULL == task) continue;
        
        RAW_AUDIO_FRAME_PTR frame_ptr = task->fetch_mix_audio_frame();
        
        if(NULL == frame_ptr.frame || false == frame_ptr.frame->available)
        {
            CMemPool::free_raw_audio_frame(frame_ptr);
            continue;
        }
        
        fetched = true;
        
        CAudioCodec::mix(mix_frame_ptr.frame->payload, frame_ptr.frame->payload,
                        FRAME_LENGTH_IN_BYTE,
                        1.0,
                        1);
                        
        mix_frame_ptr.frame->available = true;//混音成功一次即表明该语音帧有效
        
        CMemPool::free_raw_audio_frame(frame_ptr);
    }
    
    return fetched;
}

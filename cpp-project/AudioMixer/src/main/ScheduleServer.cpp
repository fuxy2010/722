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

using namespace ScheduleServer;

std::string CScheduleServer::_ver = "20171111 with MQTT";

CScheduleServer::CScheduleServer() :
_cur_path(""),
_enalble(false),
_rtp_recv_session(NULL),
_rtp_recv_thread_num(0),
_rtp_recv_base_port(0)
{
	_ua_map.clear();
}

CScheduleServer::~CScheduleServer()
{
}

SS_Error CScheduleServer::start(std::string path)
{
    _cur_path = path;
    
    for(int n = 1; n <= UA_NUM; ++n)
    {
        SINGLETON(CScheduleServer).reg_ua(n, inet_addr("127.0.0.1"), 0, 0, UA_MobilePhone);
    }

	//Æô¶¯RTP½ÓÊÕ»á»°////////////////////////////////////////////////////////////////////////
	//_rtp_recv_thread_num = !(theSystemInfo.dwNumberOfProcessors) ? 1 : theSystemInfo.dwNumberOfProcessors;
	//_rtp_recv_thread_num = (1 == _rtp_recv_thread_num) ? 2 : _rtp_recv_thread_num;//±ØÐëÈ·±£ÓÐÁ½¸öÒÔÉÏµÄRTP½ÓÊÕÏß³ÌÒÔ·Ö¿ªÒôÊÓÆµ½ÓÊÕ£¬ÔÚCVirtualUA::invite_uaÖÐ·¢ËÍµÄÒôÊÓÆµ¶Ë¿Ú±ØÐë²»Í¬
    _rtp_recv_thread_num = 2;
	_rtp_recv_base_port = 30000;//MiscTools::parse_string_to_type<unsigned short>(SINGLETON(CConfigBox).get_property("MediaRecvBasePort", "30000"));

	_rtp_recv_session = new CRTPRecvSession*[_rtp_recv_thread_num];

	for(unsigned short i = 0; i < _rtp_recv_thread_num; ++i)
	{
		_rtp_recv_session[i] = new CRTPRecvSession(_rtp_recv_base_port + 10 * i);
		_rtp_recv_session[i]->set_rtp_callback(CScheduleServer::on_recv_rtp_packet);
	}

	_enalble = true;//·þÎñ¿ÉÓÃ
    
    _audio_send_thread[0] = new CAudioSendThread(1, 8888);
    _audio_send_thread[0]->Start();
    
    _audio_send_thread[1] = new CAudioSendThread(2, 8890);
    _audio_send_thread[1]->Start();
    
     _audio_recv_thread = new CAudioRecvThread();
     _audio_recv_thread->Start();
     
     std::cout << "audio receiver started!" << std::endl;

	return SS_NoErr;

}

SS_Error CScheduleServer::shutdown()
{
	_enalble = false;
    
    _audio_send_thread[0]->Kill();
    delete _audio_send_thread[0];
    _audio_send_thread[0] = NULL;
    
    _audio_send_thread[1]->Kill();
    delete _audio_send_thread[1];
    _audio_send_thread[1] = NULL;
    
    _audio_recv_thread->Kill();
    delete _audio_recv_thread;
    _audio_recv_thread = NULL;

	//¹Ø±ÕRTP½ÓÊÕ»á»°////////////////////////////////////////////////////////////////////////
	for(unsigned short i = 0; i < _rtp_recv_thread_num; ++i)
	{
		delete _rtp_recv_session[i];
		_rtp_recv_session[i] = NULL;
	}

	delete[] _rtp_recv_session;
	_rtp_recv_session = NULL;


	//É¾³ýËùÓÐUA////////////////////////////////////////////////////////////////////////
	remove_all_ua();

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

/*SS_Error CScheduleServer::add_task(CTask* task, unsigned long index)
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
}*/


//dataÎªº¬°üÍ·µÄRTP°ü£¬lengthÎª¾»ºÉ¼Ó°üÍ·³¤¶È
void CScheduleServer::on_recv_rtp_packet(const unsigned char* data, const unsigned long& length,
	const unsigned short& sequence, const unsigned long& timestamp,
	const unsigned long& ssrc, const unsigned char& payload_type, const bool& mark)
{
	//std::cout << "Got packet " << sequence << " from SSRC " << ssrc << " length " << length << " sequence " << sequence << std::endl;
	//unsigned long start = timeGetTime();

	if(NULL == data || !length || !ssrc)
		return;

	CUserAgent* ua = SINGLETON(CScheduleServer).fetch_ua(ssrc);

	if(NULL == ua)
		return;

	if(ILBCRTPPacket == payload_type || PCMRTPPacket == payload_type)
	{
        //ua->add_audio_packet(data + sizeof(RTPHeader), length - sizeof(RTPHeader), sequence, ::timeGetTime());
	}
	else if(H264RTPPacket == payload_type)
	{
	}
    
    ua->add_audio_frame(data, length, sequence, timestamp);

	//cout << "<R " << timeGetTime() - start << "> ";
	
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

		size_t read_len = fread(frame, 1, 960, file);

		//read from the head of music file again
		if(960 != read_len)
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

// **********************************************************************
// ����: ������
// �汾: 1.0
// ����: 2011-01 ~ 2011-11
// �޸���ʷ��¼: 
// ����, ����, �������
// **********************************************************************
#include "ConferenceTask.h"
#include "MiscTool.h"

#include "rtptimeutilities.h"
//#include "SpeakerAudioMixTask.h"
//#include "AudienceAudioMixTask.h"
//#include "VideoDeliverTask.h"
//#include "CharacterTransfer.h"
//#include "TimeConsuming.h"
//#include "RTSPServer.h"

using namespace ScheduleServer;
using namespace jrtplib;

//const unsigned long CConferenceTask::_update_participants_info_interval = 30 * 1000;

const unsigned short CConferenceTask::_max_speaker_num = 3;

CConferenceTask::CConferenceTask(CONFERENCE_TASK_INFO& task_info) :
_status(ConferenceTask_Begin),
_to_be_ended(false),
//_has_pcm_audience(false),
//_add_audio_mux_task_timestamp(0),
//_start_timestamp(clock()),
//_already_done_misc_task(false)
_next_fetch_audio_frame_timestamp(0),
_idle(true)
{
	_task_info = task_info;

	CSSLocker lock(&_participants_mutex);

	//_speakers.clear();
	//_audiences.clear();
	_participants.clear();
    
    _audio_codec = new CG711Codec();//new CiLBCCodec();
    _audio_codec2 = new CG711Codec();

#ifdef NOT_CREATE_AUDIO_MUX_TASK
	if(false == CMemPool::malloc_audio_packet(_audio_packet_buf))
	{
		_to_be_ended = true;
		return;
	}
#endif
    
    //_avi_record.initialize(SINGLETON(CConfigBox).get_property("RecordPath", "C:\\ScheduleRecord\\"), MiscTools::parse_type_to_string<unsigned long>(_task_info.conference_id));

}

CConferenceTask::~CConferenceTask()
{
    on_done();
    
    delete _audio_codec;
	_audio_codec = NULL;
}

SS_Error CConferenceTask::run()
{
	//CTimeConsuming tc('R', 10.0);
    
    if(true == _idle)
    {
        usleep(100);
        return SS_NoErr;
    }

	CSSLocker control_lock(&_conference_control_mutext);
    
    //cout << ".";

	//�Ƿ�ӵ���������֪ͨ
	if(true == _to_be_ended)
	{
		std::cout << "END";
		_status = ConferenceTask_Done;
	}

	//_already_done_misc_task = false;

	switch(_status)
	{
	case ConferenceTask_Begin://���鿪ʼ
		//��Ϊ����add_conferenceǰִ�� init_participants();
		_status = ConferenceTask_FetchAudioFrame;
		break;

	/*case ConferenceTask_UpdateParticipant://���������Ա��Ϣ
		update_participants();
		//update_participants_status();//���ɻ��޸�_participants_status
		//notify_sponsor_participants_status();//����鷢����֪ͨ�����Ա״̬�ĸı�
		//notify_role();//֪ͨ���з��ڻ����еĽ�ɫ
		_status = ConferenceTask_FetchAudioFrame;
		break;*/

	case ConferenceTask_FetchAudioFrame://����ȡ�����˵�ԭʼ����֡
		if(true == fetch_raw_audio_frame())
		{
			_status = CConferenceTask_AudioMix;
		}
		break;

	case CConferenceTask_AudioMix://������������
        //audio_mix_for_speakers();
        //audio_mix_for_audiences();
        audio_mix();
		_status = ConferenceTask_FetchAudioFrame;
		break;

	case ConferenceTask_Done://�������
		//if(!_generate_task_counter.get())//֪�����л����������������������������
		{
			//Ϊȷ�����������ȫ������˳��ִ��������������н��д˴��� on_done();
			_is_done = true;
		}
		break;

	}

	return SS_NoErr;
}

SS_Error CConferenceTask::on_done()
{
	CSSLocker lock(&_participants_mutex);

	for(map<unsigned long, PARTICIPANT>::iterator iter = _participants.begin(); iter != _participants.end(); ++iter)
	{
		CUserAgent* ua = SINGLETON(CScheduleServer).fetch_ua(iter->first);

		if(NULL == ua)//��UAδע�ᵽ��������
			continue;

		//ua->remove_from_conference(_task_info.conference_id);

		iter->second.clear();
	}

	_participants.clear();

	//_audience_vec.clear();

	return SS_NoErr;
}

SS_Error CConferenceTask::on_exception()
{
	return SS_NoErr;
}

void CConferenceTask::init_participants()
{
	//CTimeConsuming tc('I');

	/*CSSLocker lock(&_participants_mutex);

	//���������Ǿ����ն�1ʱ��ȷ�����Ƿ�����
	if(_task_info.sponsor)
		_task_info.init_participants[_task_info.sponsor] = true;

	for(map<unsigned long, bool>::iterator iter = _task_info.init_participants.begin(); iter != _task_info.init_participants.end(); ++iter)
	{
		add_participant(iter->first, iter->second);
	}

	change_participants_status();//֪ͨ���鷢���˻���״̬�Ѹı�*/
}

SS_Error CConferenceTask::add_participant(unsigned long ua_id, bool is_speaker)
{
	CSSLocker control_lock(&_conference_control_mutext);

	if(true == _to_be_ended)
		return SS_NoErr;

	//CUserAgent* ua = SINGLETON(CScheduleServer).fetch_ua(ua_id);

	//if(NULL == ua) return SS_UnknownParticipant;

	CSSLocker lock(&_participants_mutex);

	//_participants[ua_id].ua_info = ua->_info;
	//_participants[ua_id].ua_type = ua->get_type();
	_participants[ua_id].role = (true == is_speaker) ? Speaker : Audience;

	return SS_NoErr;
}

SS_Error CConferenceTask::remove_participant(unsigned long ua_id)
{
	CSSLocker control_lock(&_conference_control_mutext);

	if(true == _to_be_ended)
		return SS_NoErr;

	//�����˲���ɾ
	if(ua_id == _task_info.sponsor)
		return SS_NoErr;

	CSSLocker lock(&_participants_mutex);

	if(_participants.end() == _participants.find(ua_id))
	{
		return SS_NoErr;
	}

	//�޳����߽��_participants��ɾ��������ֻ�ı��ɫ
	_participants[ua_id].role = Observer;

	//�Ը�UA���͹һ�����
	CUserAgent* ua = SINGLETON(CScheduleServer).fetch_ua(ua_id);

	//�Ҷϸ�UA�ĺ������
	//ͬʱ�޸�UA�е�״̬��Ϣ���������ݿ�
	if(NULL != ua)
	{
		//LOG_WRITE("�޳�����Ա " + MiscTools::parse_type_to_string<unsigned long>(ua->_info.id), 1, true);
		//ua->remove_from_conference(_task_info.conference_id);
	}

	//change_participants_status();//֪ͨ���鷢���˻���״̬�Ѹı�

	//ua->_audio_statistics->pause();//ֹͣ��Ƶͳ��
	//ua->_video_statistics->pause();//ֹͣ��Ƶͳ��

	return SS_NoErr;
}

SS_Error CConferenceTask::close()
{
	CSSLocker control_lock(&_conference_control_mutext);

	_to_be_ended = true;

	return SS_NoErr;
}

//�������ϵ��
double CConferenceTask::calculate_audio_mix_fscale(unsigned short speaker_num)
{
	return 1.0;

	double fscale = 1.0;

	switch(speaker_num) 
	{
	case 1:
		fscale = 1.0;
		break;
	case 2:
		fscale = 0.8;
		break;
	case 3:
		fscale = 0.75;
		break;
	case 4:
		fscale = 0.7;
		break;
	default:
		fscale = 0.65;
	}

	return fscale;
}

bool CConferenceTask::fetch_raw_audio_frame()
{
	//CTimeConsuming tc('F', 5.0);    
    //cout << ".";
    
#if 0
    unsigned long t = clock();
    usleep(60000);//RTPTime::Wait(RTPTime(0,30));
    cout << "T " << clock() - t << endl;
    
    time_t t1 = time(NULL);
    usleep(60000);//RTPTime::Wait(RTPTime(0,30));
    cout << "TT " << time(NULL) - t1 << endl;
    
    {
        struct  timeval  start;
        struct  timeval  end;
        unsigned long timer;
        
        gettimeofday(&start,NULL);
        usleep(60000);//RTPTime::Wait(RTPTime(0,30));
        gettimeofday(&end,NULL);
        
        unsigned long timer = 1000000 * (end.tv_sec-start.tv_sec)+ end.tv_usec-start.tv_usec;
        printf("timer = %ld us\n",timer);
    }
#endif

    if(false)
    {
        gettimeofday(&_end, NULL);
        unsigned long timer = 1000000 * (_end.tv_sec - _start.tv_sec) + _end.tv_usec - _start.tv_usec;
        printf("timer = %ld us\n",timer);
        _start = _end;
    }

	gettimeofday(&_now, NULL);
    _cur_us = 1000000 * _now.tv_sec + _now.tv_usec;
    
	if(!_next_fetch_audio_frame_timestamp)
		_next_fetch_audio_frame_timestamp = _cur_us;//clock();

	if(_next_fetch_audio_frame_timestamp > _cur_us)//clock())
    {
        return false;
    }
    
    if(false)
    {
        gettimeofday(&_end, NULL);
        unsigned long timer = 1000000 * (_end.tv_sec - _start.tv_sec) + _end.tv_usec - _start.tv_usec;
        printf("timer = %ld us\n",timer);
        _start = _end;
    }
    
	bool fetched = false;

	//bool ua_in_this_conference = true;//UA�Ƿ����ڱ�������

	CSSLocker lock(&_participants_mutex);
    
    //std::cout << "<P " << _participants.size() << "> " << endl;

	for(map<unsigned long, PARTICIPANT>::iterator iter = _participants.begin(); iter != _participants.end(); ++iter)
	{
        //audience
		if(Speaker != iter->second.role)
		{
			/*CUserAgent* ua = SINGLETON(CScheduleServer).fetch_ua(iter->first);
			if(NULL != ua)
			{
				ua->check_audience(_task_info.conference_id, _task_info.sponsor);
			}*/

			continue;
		}

        //speaker
		iter->second.free_raw_audio_frame();//先释放上一次取出的原始语音帧

		CUserAgent* ua = SINGLETON(CScheduleServer).fetch_ua(iter->first);

		if(NULL != ua)
		{
            RAW_AUDIO_FRAME_PTR frame_ptr = ua->fetch_audio_frame();

            if(NULL == frame_ptr.frame || false == frame_ptr.frame->available)
			{
				CMemPool::free_raw_audio_frame(frame_ptr);
				continue;
			}

            //std::cout << "fetch " << iter->first << endl;
			iter->second.input_raw_audio_frame(frame_ptr);

			fetched = true;
		}
	}
    
	//_next_fetch_audio_frame_timestamp += (2 == _participants.size()) ? 0 : AUDIO_SAMPLING_RATE * 1000;
    _next_fetch_audio_frame_timestamp += AUDIO_SAMPLING_RATE * 1000;

	return fetched;
}

/*void CConferenceTask::audio_mix_for_speakers()
{
	//CTimeConsuming tc('M', 10.0);

	CSSLocker lock(&_participants_mutex);
	
	double _audio_mix_fscale = 1.0;//calculate_audio_mix_fscale(_speakers.size() - 1);//���˲��������

	for(map<unsigned long, PARTICIPANT>::iterator speaker_iter = _participants.begin(); speaker_iter != _participants.end(); ++speaker_iter)
	{
		if(Speaker != speaker_iter->second.role)
			continue;

		//speaker_seq++;
        
        CUserAgent* ua = SINGLETON(CScheduleServer).fetch_ua(speaker_iter->first);        
        if(NULL == ua) continue;
        
        ua->malloc_mix_audio_frame();

		for(map<unsigned long, PARTICIPANT>::iterator iter = _participants.begin(); iter != _participants.end(); ++iter)
		{
			if(Speaker != iter->second.role)
                continue;

			if(speaker_iter->first == iter->first)//self
				continue;

            if(false == ua->add_mix_frame(iter->second.get_raw_audio_frame()))
                continue;
		}
        
        ua->send_mix_frame();
        
        ua->free_mix_audio_frame();
	}
    
}*/

void CConferenceTask::audio_mix()
{
	//CTimeConsuming tc('M', 10.0);

	CSSLocker lock(&_participants_mutex);
    
    RAW_AUDIO_FRAME_PTR mix_frame_ptr;
    
    if(false == CMemPool::malloc_raw_audio_frame(mix_frame_ptr)) return;

	mix_frame_ptr.frame->src_timestamp = clock();
	mix_frame_ptr.frame->ua_id = 0;
	mix_frame_ptr.frame->energy = 1;
	mix_frame_ptr.frame->available = false;
    
    unsigned char mix_audio_packet_speaker[1024];//for speaker
    unsigned char mix_audio_packet_audience[1024];//for audience

	//�������������֡
	for(map<unsigned long, PARTICIPANT>::iterator iter = _participants.begin(); iter != _participants.end(); ++iter)
	{
		if(Speaker != iter->second.role) continue;
            
        if(NULL == mix_frame_ptr.frame) break;
        
        RAW_AUDIO_FRAME_PTR* frame_ptr = iter->second.get_raw_audio_frame();
        if(NULL == frame_ptr->frame)
            continue;
        
        CAudioCodec::mix(mix_frame_ptr.frame->payload, frame_ptr->frame->payload,
                        960,//sizeof(mix_frame_ptr.frame->payload),
                        1.0,
                        1);
        
        mix_frame_ptr.frame->available = true;//混音成功一次即表明该语音帧有效
	}
    
    if(true == mix_frame_ptr.frame->available)
    {
#if 1
        if(false)
        {
            //FILE* f = fopen("./mix.pcm", "ab+");
            //fwrite(mix_frame_ptr.frame->payload, sizeof(short), 480, f);
            //fclose(f);
        }
        else
        {
            //send to self
            CUserAgent* ua = SINGLETON(CScheduleServer).fetch_ua(0);
            if(NULL != ua) ua->add_raw_audio_frame(mix_frame_ptr.frame->payload, 480);
        }
#endif
        
        ::memset(mix_audio_packet_audience, 0, sizeof(mix_audio_packet_audience));
        int audience_packet_len = _audio_codec->encode(mix_frame_ptr.frame->payload, mix_audio_packet_audience);

#if 1
        struct  timeval  t1;
        struct  timeval  t2;
        gettimeofday(&t1, NULL);
        
        for(map<unsigned long, PARTICIPANT>::iterator iter = _participants.begin(); iter != _participants.end(); ++iter)
        {
            RAW_AUDIO_FRAME_PTR mix_frame_ptr2;    
            if(false == CMemPool::malloc_raw_audio_frame(mix_frame_ptr2)) continue;
            
            mix_frame_ptr2.frame->src_timestamp = clock();
            mix_frame_ptr2.frame->ua_id = 0;
            mix_frame_ptr2.frame->energy = 1;
            mix_frame_ptr2.frame->available = false;
            memcpy(mix_frame_ptr2.frame->payload, mix_frame_ptr.frame->payload, 960);

            if(Speaker == iter->second.role)
            {
                RAW_AUDIO_FRAME_PTR* frame_ptr = iter->second.get_raw_audio_frame();
            
                if(NULL == frame_ptr->frame) continue;
                
                CAudioCodec::remove(mix_frame_ptr2.frame->payload, frame_ptr->frame->payload,
                            960,//sizeof(mix_frame_ptr.frame->payload),
                            1.0,
                            1);
                
                ::memset(mix_audio_packet_speaker, 0, sizeof(mix_audio_packet_speaker));
                
                //struct  timeval  t11;
                //gettimeofday(&t11, NULL);
                int speaker_packet_len = _audio_codec->encode(mix_frame_ptr2.frame->payload, mix_audio_packet_speaker);
                //struct  timeval  t12;
                //gettimeofday(&t12, NULL);
                //unsigned long enc_timer = 1000000 * (t12.tv_sec - t11.tv_sec) + t12.tv_usec - t11.tv_usec;
                //printf("========= enc = %ld us\n", enc_timer);
                
                CUserAgent* ua = SINGLETON(CScheduleServer).fetch_ua(iter->first);
                if(NULL != ua) ua->send_audience_audio_packet(mix_audio_packet_speaker, speaker_packet_len);
            }
            else
            {
                CUserAgent* ua = SINGLETON(CScheduleServer).fetch_ua(iter->first);
                if(NULL != ua) ua->send_audience_audio_packet(mix_audio_packet_audience, audience_packet_len);
            }
            
            CMemPool::free_raw_audio_frame(mix_frame_ptr2);
        }
        
        gettimeofday(&t2, NULL);
        unsigned long timer = 1000000 * (t2.tv_sec - t1.tv_sec) + t2.tv_usec - t1.tv_usec;
        //printf("timer = %ld us\n",timer);
#endif
    }
    
    CMemPool::free_raw_audio_frame(mix_frame_ptr);
}
    
/*void CConferenceTask::audio_mix_for_audiences()
{
    CSSLocker lock(&_participants_mutex);
    
    RAW_AUDIO_FRAME_PTR mix_frame_ptr;
    
    if(false == CMemPool::malloc_raw_audio_frame(mix_frame_ptr))
	{
		return;
	}

	mix_frame_ptr.frame->src_timestamp = clock();
	mix_frame_ptr.frame->ua_id = 0;
	mix_frame_ptr.frame->energy = 1;
	mix_frame_ptr.frame->available = false;

	//�������������֡
	for(map<unsigned long, PARTICIPANT>::iterator iter = _participants.begin(); iter != _participants.end(); ++iter)
	{
		if(Speaker != iter->second.role)
			continue;
            
        if(NULL == mix_frame_ptr.frame) break;
        
        RAW_AUDIO_FRAME_PTR* frame_ptr = iter->second.get_raw_audio_frame();
        if(NULL == frame_ptr->frame) continue;
        
        CAudioCodec::mix(mix_frame_ptr.frame->payload, frame_ptr->frame->payload,
                        960,//sizeof(mix_frame_ptr.frame->payload),
                        1.0,
                        1);
        
        mix_frame_ptr.frame->available = true;//混音成功一次即表明该语音帧有效
	}
    
    if(true == mix_frame_ptr.frame->available)
    {
#if 0
        if(false)
        {
            FILE* f = fopen("./mix.pcm", "ab+");
            fwrite(mix_frame_ptr.frame->payload, sizeof(short), 480, f);
            fclose(f);
        }
        else
        {
            //send to self
            CUserAgent* ua = SINGLETON(CScheduleServer).fetch_ua(0);
            if(NULL != ua) ua->add_raw_audio_frame(mix_frame_ptr.frame->payload, 480);
        }
#else
        ::memset(_mix_audio_packet, 0, sizeof(_mix_audio_packet));
        int packet_len = _audio_codec->encode(mix_frame_ptr.frame->payload, _mix_audio_packet);
        
        for(map<unsigned long, PARTICIPANT>::iterator iter = _participants.begin(); iter != _participants.end(); ++iter)
        {
            if(Speaker == iter->second.role)
                continue;
                
            CUserAgent* ua = SINGLETON(CScheduleServer).fetch_ua(iter->first);
            if(NULL == ua) continue;
            
            ua->send_audience_audio_packet(_mix_audio_packet, packet_len);
        }
#endif
    }

    
    CMemPool::free_raw_audio_frame(mix_frame_ptr);
    
}*/
// **********************************************************************
// ×÷Õß: ¸µÓÓÃú
// °æ±¾: 1.0
// ÈÕÆÚ: 2011-01 ~ 2011-11
// ÐÞ¸ÄÀúÊ·¼ÇÂ¼: 
// ÈÕÆÚ, ×÷Õß, ±ä¸üÄÚÈÝ
// **********************************************************************
#include "UserAgent.h"
#include "MiscTool.h"
#include "JRTPSession.h"
#include "ScheduleServer.h"

using namespace ScheduleServer;

const unsigned long CUserAgent::_max_audio_packet_num = 6;//ÒôÆµÊý¾Ý°ü¶ÓÁÐ×î´ó³¤¶È£¬ÒôÆµ°üµ½´ïÊ±¼ä²»¾ùÔÈ¹Ê¼Ó´ó´ËÖµ

const unsigned short CUserAgent::_min_audio_frame_num = 3;//UA¸ÕÓë»áÊ±¿ÉÈ¡ÓïÒôÖ¡Ç¿_raw_audio_frame_listÖÁÉÙÓ¦¸Ã»º³åµÄÓïÒôÖ¡µÄÊýÁ¿

CUserAgent::CUserAgent() :
//_latest_audio_packet_timestamp(0),
//_latest_video_packet_timestamp(0),
_latest_available_audio_packet_timestamp(0),
//_continuous_fetch_video_packet_fail_time(0),
//_last_video_frame_timestamp(0)
_last_audio_packet_sequence(0),
//_fetch_audio_frame_fail_times(0),
//_fetch_audio_frame_timestamp(0),
//_next_fetched_audio_sequence(0),
_rtp_send_session(NULL),
_send_idle(false),
_recv_idle(false)
{
    remove_all_audio_frames();
    
    update_threshold();
    
    struct timeval _now;
    gettimeofday(&_now, NULL);
    _last_audio_packet_sequence = 1000000 * _now.tv_sec + _now.tv_usec;
}

CUserAgent::~CUserAgent()
{
    remove_all_audio_frames();
	//_next_fetched_audio_sequence = 0;
    
    if(NULL != _info.wav_file) fclose(_info.wav_file);
}


void CUserAgent::update_threshold()
{
    //60ms _threshold = 3
    _threshold = 6;//9;//20ms
}

//unsigned long add_count = 0;
//unsigned long add_interval = 0;
//AUDIO////////////////////////////////////////////////////////////////////////
//dataÎª¾»ºÉÖ¸Õë,lengthÎª¾»ºÉ³¤¶È
SS_Error CUserAgent::add_audio_frame(const unsigned char* data, const unsigned long& length, const unsigned short& sequence, const unsigned long& timestamp)
{
    //_latest_audio_packet_timestamp = clock() / 1000;
    
    if(true == _recv_idle)
    {
        CSSLocker lock(&_raw_audio_frame_list_mutex);
        
        remove_all_audio_frames();
        
        return SS_NoErr;
    }

	//解码
	RAW_AUDIO_FRAME_PTR frame_ptr;
	if(false == CMemPool::malloc_raw_audio_frame(frame_ptr))
	{
		return SS_NoErr;
	}

#ifdef USING_NS
    short temp_frame[FRAME_LENGTH_IN_SHORT];
    int decoded_len = _audio_codec->decode(const_cast<unsigned char*>(data), temp_frame);
    //std::cout << "audio decode: " << decoded_len << std::endl;
	if(!decoded_len)
	{
		//解码失败
		CMemPool::free_raw_audio_frame(frame_ptr);
		return SS_NoErr;
	}    
    _ns.ns(temp_frame, frame_ptr.frame->payload);
    _ns.ns(temp_frame + (FRAME_LENGTH_IN_SHORT / 2), frame_ptr.frame->payload + (FRAME_LENGTH_IN_SHORT / 2));
    
#else
    int decoded_len = _audio_codec->decode(const_cast<unsigned char*>(data), frame_ptr.frame->payload);
    //std::cout << "audio decode: " << decoded_len << std::endl;
	if(!decoded_len)
	{
		//解码失败
		CMemPool::free_raw_audio_frame(frame_ptr);
		return SS_NoErr;
	}
#endif

	//解码成功
	frame_ptr.frame->energy = 1;
	frame_ptr.frame->available = true;
	frame_ptr.frame->sequence = sequence;
	frame_ptr.frame->src_timestamp = timestamp;
	frame_ptr.frame->encoded_size = length;

#ifdef DISCARD_SILENT_PACKET
	if(true)//丢弃静音包
	{
        struct timeval _now;
        gettimeofday(&_now, NULL);
        unsigned long _cur_us = 1000000 * _now.tv_sec + _now.tv_usec;
    
		if(true == SINGLETON(VAD::CVAD).vad(frame_ptr.frame->payload, 8000, (FRAME_LENGTH_IN_SHORT / 2)) &&
            true == SINGLETON(VAD::CVAD).vad(frame_ptr.frame->payload + (FRAME_LENGTH_IN_SHORT / 2), 8000, (FRAME_LENGTH_IN_SHORT / 2)) &&
			60000 >= (_cur_us - _latest_available_audio_packet_timestamp))//避免因静音检测长时间不发包，最多允许60ms内不编码
		{
			//std::cout << "#";
			CMemPool::free_raw_audio_frame(frame_ptr);
			return SS_NoErr;
		}

		_latest_available_audio_packet_timestamp = _cur_us;
	}
#endif
    
    {
        CSSLocker lock(&_raw_audio_frame_list_mutex);

		if(_max_audio_packet_num < _raw_audio_frame_list.size())
		{
			CMemPool::free_raw_audio_frame(_raw_audio_frame_list.front());
			_raw_audio_frame_list.pop_front();

			//std::cout << ",";//cout << "\nDAF2 " << _info.id;
		}
        
        if(false)
        //if(0 == _info.id)
        {
            FILE* f = fopen("./recv.pcm", "ab+");        
            fwrite(frame_ptr.frame->payload, sizeof(short), FRAME_LENGTH_IN_SHORT, f);
            fclose(f);
            return SS_NoErr;
        }

		_raw_audio_frame_list.push_back(frame_ptr);

		if(sequence < _last_audio_packet_sequence)
		{
			_raw_audio_frame_list.sort();
		}

		_last_audio_packet_sequence = sequence;
	}
    
	return SS_NoErr;
}

SS_Error CUserAgent::add_raw_audio_frame(const short* data, const unsigned long& length)
{
    //_latest_audio_packet_timestamp = clock() / 1000;
    
    if(true == _recv_idle)
    {
        CSSLocker lock(&_raw_audio_frame_list_mutex);
        
        remove_all_audio_frames();
        
        return SS_NoErr;
    }

	//解码
	RAW_AUDIO_FRAME_PTR frame_ptr;
	if(false == CMemPool::malloc_raw_audio_frame(frame_ptr))
	{
		return SS_NoErr;
	}

	//解码成功
	frame_ptr.frame->energy = 1;
	frame_ptr.frame->available = true;
	frame_ptr.frame->sequence = 1;
	frame_ptr.frame->src_timestamp = 0;
	frame_ptr.frame->encoded_size = length;

#ifdef USING_NS
    _ns.ns(const_cast<short*>(data), frame_ptr.frame->payload);
    _ns.ns(const_cast<short*>(data) + (FRAME_LENGTH_IN_SHORT / 2), frame_ptr.frame->payload + (FRAME_LENGTH_IN_SHORT / 2));
#else
    memcpy(frame_ptr.frame->payload, data, length * sizeof(short));
#endif
    
    if(false)
    {
        player.play(frame_ptr.frame->payload);
        //FILE* f = fopen("./recv.pcm", "ab+");        
        //fwrite(frame_ptr.frame->payload, sizeof(short), FRAME_LENGTH_IN_SHORT, f);
        //fclose(f);
    }

#ifdef DISCARD_SILENT_PACKET
	if(true)//丢弃静音包
	{
        struct timeval _now;
        gettimeofday(&_now, NULL);
        unsigned long _cur_us = 1000000 * _now.tv_sec + _now.tv_usec;
    
		if(true == SINGLETON(VAD::CVAD).vad(frame_ptr.frame->payload, 8000, (FRAME_LENGTH_IN_SHORT / 2)) &&
            true == SINGLETON(VAD::CVAD).vad(frame_ptr.frame->payload + (FRAME_LENGTH_IN_SHORT / 2), 8000, (FRAME_LENGTH_IN_SHORT / 2)) &&
			60000 >= (_cur_us - _latest_available_audio_packet_timestamp))//避免因静音检测长时间不发包，最多允许60ms内不编码
		{
			//std::cout << "#";
			CMemPool::free_raw_audio_frame(frame_ptr);
			return SS_NoErr;
		}

		_latest_available_audio_packet_timestamp = _cur_us;
	}
#endif
    
    {
        CSSLocker lock(&_raw_audio_frame_list_mutex);

		if(_max_audio_packet_num < _raw_audio_frame_list.size())
		{
			CMemPool::free_raw_audio_frame(_raw_audio_frame_list.front());
			_raw_audio_frame_list.pop_front();

			//std::cout << ",";//cout << "\nDAF2 " << _info.id;
		}
        
        if(false)
        //if(0 == _info.id)
        {
            FILE* f = fopen("./recv.pcm", "ab+");        
            fwrite(frame_ptr.frame->payload, sizeof(short), FRAME_LENGTH_IN_SHORT, f);
            fclose(f);
            return SS_NoErr;
        }

		_raw_audio_frame_list.push_back(frame_ptr);

		/*if(sequence < _last_audio_packet_sequence)
		{
			_raw_audio_frame_list.sort();
		}*/

		_last_audio_packet_sequence = 0;//sequence;
	}
    
	return SS_NoErr;
}

RAW_AUDIO_FRAME_PTR CUserAgent::fetch_wav_file()
{
    CSSLocker lock(&_wav_file_mutex);
    
    RAW_AUDIO_FRAME_PTR frame_ptr;
    
    if(!_info.wav_play_times) return frame_ptr;
    
    if(!strlen(_info.wav_file_name)) return frame_ptr;
    
    //read format
    if(NULL == _info.wav_file)
    {
        struct ScheduleServer::WAV_Format wav_format;
        
        _info.wav_file = fopen(_info.wav_file_name, "rb");
        
        if(NULL == _info.wav_file) return frame_ptr;
        
        fread(&wav_format, sizeof(struct ScheduleServer::WAV_Format), 1, _info.wav_file);
        
        printf("ChunkID \t%x\n", wav_format.ChunkID);
        printf("ChunkSize \t%d\n", wav_format.ChunkSize);
        printf("Format \t\t%x\n", wav_format.Format);
        printf("Subchunk1ID \t%x\n", wav_format.Subchunk1ID);
        printf("Subchunk1Size \t%d\n", wav_format.Subchunk1Size);
        printf("AudioFormat \t%d\n", wav_format.AudioFormat);
        printf("NumChannels \t%d\n", wav_format.NumChannels);
        printf("SampleRate \t%d\n", wav_format.SampleRate);
        printf("ByteRate \t%d\n", wav_format.ByteRate);
        printf("BlockAlign \t%d\n", wav_format.BlockAlign);
        printf("BitsPerSample \t%d\n", wav_format.BitsPerSample);
        printf("Subchunk2ID \t%x\n", wav_format.Subchunk2ID);
        printf("Subchunk2Size \t%d\n", wav_format.Subchunk2Size);
    }
    
    //read frame
    if(false == CMemPool::malloc_raw_audio_frame(frame_ptr))
    {
        CMemPool::free_raw_audio_frame(frame_ptr);
        return frame_ptr;
    }
    
    frame_ptr.frame->energy = 1;
    frame_ptr.frame->available = true;
    frame_ptr.frame->sequence = 1;
    frame_ptr.frame->src_timestamp = 0;
    frame_ptr.frame->encoded_size = FRAME_LENGTH_IN_BYTE;
    
    if(FRAME_LENGTH_IN_BYTE == fread(frame_ptr.frame->payload, sizeof(unsigned char), FRAME_LENGTH_IN_BYTE, _info.wav_file))
    {
        return frame_ptr;
    }
    else
    {
        fclose(_info.wav_file);
        _info.wav_file = NULL;
        
        --_info.wav_play_times;
    }
    
    frame_ptr.frame->available = false;
    CMemPool::free_raw_audio_frame(frame_ptr);
    return frame_ptr;
}


RAW_AUDIO_FRAME_PTR CUserAgent::fetch_audio_frame()
{
    //should do this when sending packat
    /*if(_info.wav_play_times)
    {
        return fetch_wav_file();
    }
    else*/
    {
		CSSLocker lock(&_raw_audio_frame_list_mutex);

		//为平滑计队列中有3个以上的包才取
		//if(false == _raw_audio_frame_list.empty())
        if(_threshold < _raw_audio_frame_list.size())
		{
			RAW_AUDIO_FRAME_PTR frame_ptr = _raw_audio_frame_list.front();//*(_audio_packet_list.begin());
			_raw_audio_frame_list.pop_front();

			//抛弃缓冲区中保存时间过长(超过4个AUDIO_SAMPLING_RATE)的音频包降低语音延迟
			//if((AUDIO_SAMPLING_RATE + AUDIO_SAMPLING_RATE) < frame_ptr.delay())
			if(((unsigned long)AUDIO_SAMPLING_RATE << 2) < frame_ptr.delay())
			{
				//if(_fetch_audio_frame_fail_times)
				{
					remove_slient_audio_frames();
				}
			}
            
            if(_threshold) --_threshold;
			
			return frame_ptr;
		}        
	}

	//如果未取到包则返回一个空数据包
	RAW_AUDIO_FRAME_PTR frame_ptr;
	
	return frame_ptr;
}

SS_Error CUserAgent::remove_all_audio_frames()
{
	{
		CSSLocker lock(&_raw_audio_frame_list_mutex);

		for(std::list<RAW_AUDIO_FRAME_PTR>::iterator iter = _raw_audio_frame_list.begin();
			iter != _raw_audio_frame_list.end();
			++iter)
		{
			CMemPool::free_raw_audio_frame(*iter);
		}

		_raw_audio_frame_list.clear();
	}
	return SS_NoErr;
}

SS_Error CUserAgent::remove_slient_audio_frames()
{
	return SS_NoErr;
}

/*bool CUserAgent::malloc_mix_audio_frame()
{
    return CMemPool::malloc_raw_audio_frame(_mix_frame_ptr);
}
        
void CUserAgent::free_mix_audio_frame()
{
    CMemPool::free_raw_audio_frame(_mix_frame_ptr);
}
        
bool CUserAgent::add_mix_frame(RAW_AUDIO_FRAME_PTR* frame_ptr)
{
    if(NULL == _mix_frame_ptr.frame) return false;
    
    if(NULL == frame_ptr->frame) return false;
    
    CAudioCodec::mix(_mix_frame_ptr.frame->payload, frame_ptr->frame->payload,
                    FRAME_LENGTH_IN_BYTE,//sizeof(mix_frame_ptr.frame->payload),
                    1.0,
                    1);
                    
    _mix_frame_ptr.frame->available = true;//混音成功一次即表明该语音帧有效
}
        
void CUserAgent::send_mix_frame()
{
    if(true == _send_idle) return;
    
    if(true == _mix_frame_ptr.frame->available)
    {
        ::memset(_mix_audio_packet, 0, sizeof(_mix_audio_packet));
        int packet_len = _audio_codec->encode(_mix_frame_ptr.frame->payload, _mix_audio_packet);
        
        //std::cout << "mix " << packet_len << std::endl;
        
        //if(NULL != _rtp_send_session) _rtp_send_session->send_rtp_packet(_mix_audio_packet, packet_len, ILBCRTPPacket, true, AUDIO_SAMPLING_RATE, _info.id);
        if(NULL != _rtp_send_session) _rtp_send_session->send_rtp_packet(_mix_audio_packet, packet_len, ILBCRTPPacket, true, FRAME_LENGTH_IN_SHORT, _info.id);
#if 0
        _pcm_player.play(mix_frame_ptr.frame->payload);
#else
        //FILE* f = fopen("./mix.pcm", "ab+");        
        //fwrite(mix_frame_ptr.frame->payload, sizeof(short), FRAME_LENGTH_IN_SHORT, f);
        //fclose(f);
#endif
    }
}*/

void CUserAgent::send_wav_file()
{
    CSSLocker lock(&_wav_file_mutex);
    
    if(!_info.wav_play_times) return;
    
    if(!strlen(_info.wav_file_name)) return;
    
    //read format
    if(NULL == _info.wav_file)
    {
        struct ScheduleServer::WAV_Format wav_format;
        
        _info.wav_file = fopen(_info.wav_file_name, "rb");
        
        if(NULL == _info.wav_file) return;
        
        fread(&wav_format, sizeof(struct ScheduleServer::WAV_Format), 1, _info.wav_file);
        
        printf("ChunkID \t%x\n", wav_format.ChunkID);
        printf("ChunkSize \t%d\n", wav_format.ChunkSize);
        printf("Format \t\t%x\n", wav_format.Format);
        printf("Subchunk1ID \t%x\n", wav_format.Subchunk1ID);
        printf("Subchunk1Size \t%d\n", wav_format.Subchunk1Size);
        printf("AudioFormat \t%d\n", wav_format.AudioFormat);
        printf("NumChannels \t%d\n", wav_format.NumChannels);
        printf("SampleRate \t%d\n", wav_format.SampleRate);
        printf("ByteRate \t%d\n", wav_format.ByteRate);
        printf("BlockAlign \t%d\n", wav_format.BlockAlign);
        printf("BitsPerSample \t%d\n", wav_format.BitsPerSample);
        printf("Subchunk2ID \t%x\n", wav_format.Subchunk2ID);
        printf("Subchunk2Size \t%d\n", wav_format.Subchunk2Size);
    }
    
    //read frame
    short frame[FRAME_LENGTH_IN_SHORT];
    unsigned char packet[FRAME_LENGTH_IN_BYTE];//alloc max length
    
    if(FRAME_LENGTH_IN_SHORT != fread(frame, sizeof(short), FRAME_LENGTH_IN_SHORT, _info.wav_file))
    {
        fclose(_info.wav_file);
        _info.wav_file = NULL;
        
        --_info.wav_play_times;
        
        return;
    }
    
    int packet_len = _audio_codec->encode(frame, packet);
    
    if(NULL != _rtp_send_session) _rtp_send_session->send_rtp_packet(packet, packet_len, G711RTPPacket, false, FRAME_LENGTH_IN_SHORT/*AUDIO_SAMPLING_RATE*/, _info.id);
}

void CUserAgent::send_audio_packet(unsigned char* data, unsigned long len)
{
    if(true == _send_idle) return;
    
    if(_info.wav_play_times)
    {
        send_wav_file();
    }
    else
    {
        if(NULL != _rtp_send_session) _rtp_send_session->send_rtp_packet(data, len, G711RTPPacket, false, FRAME_LENGTH_IN_SHORT/*AUDIO_SAMPLING_RATE*/, _info.id);
    }
}

void CUserAgent::remove_addr()
{
    if(NULL != _rtp_send_session) _rtp_send_session->remove_dest_addr(_info.ip, _info.audio_port);
}

void CUserAgent::add_addr()
{
    if(NULL != _rtp_send_session) _rtp_send_session->add_dest_addr(_info.ip, _info.audio_port);
}

//Mobile////////////////////////////////////////////////////////////////////////
CMobileUserAgent::CMobileUserAgent(USER_AGENT_INFO& info)
{
	_info = info;    
    memcpy(_info.ip, info.ip, strlen(info.ip));
    
	_audio_codec = new CG711Codec();//new CiLBCCodec();
    
    //_rtp_send_session = new CRTPRecvSession(31000 + (_info.id & 0xffff) * 2);
    _rtp_send_session = new CRTPRecvSession(_info.bind_port);    
    _rtp_send_session->set_rtp_callback(CScheduleServer::on_recv_rtp_packet);
    
    //_rtp_send_session->add_dest_addr(info.ip, info.audio_port);
}

CMobileUserAgent::~CMobileUserAgent()
{
    delete _rtp_send_session;
    _rtp_send_session = NULL;
    
	delete _audio_codec;
	_audio_codec = NULL;
}


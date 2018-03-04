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

const unsigned long CUserAgent::_max_audio_packet_num = 15;//ÒôÆµÊý¾Ý°ü¶ÓÁÐ×î´ó³¤¶È£¬ÒôÆµ°üµ½´ïÊ±¼ä²»¾ùÔÈ¹Ê¼Ó´ó´ËÖµ

const unsigned short CUserAgent::_min_audio_frame_num = 3;//UA¸ÕÓë»áÊ±¿ÉÈ¡ÓïÒôÖ¡Ç¿_raw_audio_frame_listÖÁÉÙÓ¦¸Ã»º³åµÄÓïÒôÖ¡µÄÊýÁ¿

CUserAgent::CUserAgent() :
_latest_audio_packet_timestamp(0),
//_latest_video_packet_timestamp(0),
_latest_available_audio_packet_timestamp(0),
//_continuous_fetch_video_packet_fail_time(0),
//_last_video_frame_timestamp(0)
_last_audio_packet_sequence(0),
//_fetch_audio_frame_fail_times(0),
//_fetch_audio_frame_timestamp(0),
_next_fetched_audio_sequence(0),
_rtp_send_session(NULL),
_send_idle(false),
_recv_idle(false)
{
    remove_all_audio_packet();
    
    update_threshold();
}

CUserAgent::~CUserAgent()
{
    remove_all_audio_packet();
	_next_fetched_audio_sequence = 0;

}

void CUserAgent::update_threshold()
{
    _threshold = 3;
}

//unsigned long add_count = 0;
//unsigned long add_interval = 0;
//AUDIO////////////////////////////////////////////////////////////////////////
//dataÎª¾»ºÉÖ¸Õë,lengthÎª¾»ºÉ³¤¶È
SS_Error CUserAgent::add_audio_frame(const unsigned char* data, const unsigned long& length, const unsigned short& sequence, const unsigned long& timestamp)
{
    _latest_audio_packet_timestamp = clock() / 1000;
    
    if(true == _recv_idle) return SS_NoErr;

	//解码
	RAW_AUDIO_FRAME_PTR frame_ptr;
	if(false == CMemPool::malloc_raw_audio_frame(frame_ptr))
	{
		return SS_NoErr;
	}

    int decoded_len = _audio_codec->decode(const_cast<unsigned char*>(data), frame_ptr.frame->payload);
    //std::cout << "audio decode: " << decoded_len << std::endl;
	if(!decoded_len)
	{
		//解码失败
		CMemPool::free_raw_audio_frame(frame_ptr);
		return SS_NoErr;
	}

	//解码成功
	frame_ptr.frame->energy = 1;
	frame_ptr.frame->available = true;
	frame_ptr.frame->sequence = sequence;
	frame_ptr.frame->src_timestamp = timestamp;
	frame_ptr.frame->encoded_size = length;
    
    if(false)
    {
        player.play(frame_ptr.frame->payload);
        //FILE* f = fopen("./recv.pcm", "ab+");        
        //fwrite(frame_ptr.frame->payload, sizeof(short), 480, f);
        //fclose(f);
    }

	/*if(false)//丢弃静音包
	{
		if(true == SINGLETON(VAD::CVAD).vad(frame_ptr.frame->payload, 8000, 160) &&
			2000 >= (timeGetTime() - _latest_available_audio_packet_timestamp))//避免因静音检测长时间不发包，最多允许2000ms内不编码
		{
			//std::cout << "#";
			CMemPool::free_raw_audio_frame(frame_ptr);
			return SS_NoErr;
		}

		_latest_available_audio_packet_timestamp = timeGetTime();
	}*/
    
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
            fwrite(frame_ptr.frame->payload, sizeof(short), 480, f);
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
    _latest_audio_packet_timestamp = clock() / 1000;
    
    if(true == _recv_idle) return SS_NoErr;

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
    memcpy(frame_ptr.frame->payload, data, length * sizeof(short));
    
    if(false)
    {
        player.play(frame_ptr.frame->payload);
        //FILE* f = fopen("./recv.pcm", "ab+");        
        //fwrite(frame_ptr.frame->payload, sizeof(short), 480, f);
        //fclose(f);
    }

	/*if(false)//丢弃静音包
	{
		if(true == SINGLETON(VAD::CVAD).vad(frame_ptr.frame->payload, 8000, 160) &&
			2000 >= (timeGetTime() - _latest_available_audio_packet_timestamp))//避免因静音检测长时间不发包，最多允许2000ms内不编码
		{
			//std::cout << "#";
			CMemPool::free_raw_audio_frame(frame_ptr);
			return SS_NoErr;
		}

		_latest_available_audio_packet_timestamp = timeGetTime();
	}*/
    
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
            fwrite(frame_ptr.frame->payload, sizeof(short), 480, f);
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

RAW_AUDIO_FRAME_PTR CUserAgent::fetch_audio_frame()
{
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
					remove_slient_audio_packet();
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

SS_Error CUserAgent::remove_all_audio_packet()
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

SS_Error CUserAgent::remove_slient_audio_packet()
{
	return SS_NoErr;
}

bool CUserAgent::malloc_mix_audio_frame()
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
                    960,//sizeof(mix_frame_ptr.frame->payload),
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
        
        if(NULL != _rtp_send_session) _rtp_send_session->send_rtp_packet(_mix_audio_packet, packet_len, ILBCRTPPacket, true, AUDIO_SAMPLING_RATE, _info.id);
#if 0
        _pcm_player.play(mix_frame_ptr.frame->payload);
#else
        //FILE* f = fopen("./mix.pcm", "ab+");        
        //fwrite(mix_frame_ptr.frame->payload, sizeof(short), 480, f);
        //fclose(f);
#endif
    }
}

void CUserAgent::send_audience_audio_packet(unsigned char* data, unsigned long len)
{
    if(true == _send_idle) return;
    
    if(NULL != _rtp_send_session) _rtp_send_session->send_rtp_packet(data, len, ILBCRTPPacket, true, AUDIO_SAMPLING_RATE, _info.id);
}

//Mobile////////////////////////////////////////////////////////////////////////
CMobileUserAgent::CMobileUserAgent(USER_AGENT_INFO& info)
{
	_info = info;    
    memcpy(_info.ip, info.ip, strlen(info.ip));
    
	_audio_codec = new CiLBCCodec();
    
    _rtp_send_session = new CRTPRecvSession(31000 + (_info.id & 0xffff) * 2);
    
    _rtp_send_session->add_dest_addr(info.ip, info.audio_port);
}

CMobileUserAgent::~CMobileUserAgent()
{
    delete _rtp_send_session;
    _rtp_send_session = NULL;
    
	delete _audio_codec;
	_audio_codec = NULL;
}

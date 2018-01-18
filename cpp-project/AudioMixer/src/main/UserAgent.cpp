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
_next_fetched_audio_sequence(0)
{
	remove_all_audio_packet();
}

CUserAgent::~CUserAgent()
{
	delete _audio_codec;
	_audio_codec = NULL;

	remove_all_audio_packet();
	_next_fetched_audio_sequence = 0;

}

//unsigned long add_count = 0;
//unsigned long add_interval = 0;
//AUDIO////////////////////////////////////////////////////////////////////////
//dataÎª¾»ºÉÖ¸Õë,lengthÎª¾»ºÉ³¤¶È
SS_Error CUserAgent::add_audio_frame(const unsigned char* data, const unsigned long& length, const unsigned short& sequence, const unsigned long& timestamp)
{
    _latest_audio_packet_timestamp = clock() / 1000;

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

			std::cout << ",";//cout << "\nDAF2 " << _info.id;
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

RAW_AUDIO_FRAME_PTR CUserAgent::fetch_audio_frame()
{
    {
		CSSLocker lock(&_raw_audio_frame_list_mutex);

		//为平滑计队列中有3个以上的包才取
		//if(false == _raw_audio_frame_list.empty())
        if(3 < _raw_audio_frame_list.size())
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

//Mobile////////////////////////////////////////////////////////////////////////
CMobileUserAgent::CMobileUserAgent(USER_AGENT_INFO& info)
{
	_info = info;
    
	_audio_codec = new CiLBCCodec();
}

CMobileUserAgent::~CMobileUserAgent()
{
	delete _audio_codec;
	_audio_codec = NULL;
}

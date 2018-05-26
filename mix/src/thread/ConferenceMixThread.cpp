// **********************************************************************
// ×÷Õß: ¸µÓÓÃú
// °æ±¾: 1.0
// ÈÕÆÚ: 2011-01 ~ 2011-11
// ÐÞ¸ÄÀúÊ·¼ÇÂ¼: 
// ÈÕÆÚ, ×÷Õß, ±ä¸üÄÚÈÝ
// **********************************************************************
#include "GeneralDef.h"
#include "ConferenceMixThread.h"
#include "ScheduleServer.h"

using namespace ScheduleServer;

void CConferenceMixThread::sleep_ms(unsigned long interval)
{
}

void CConferenceMixThread::run()
{
    //std::cout << "conference mix thread run !" << std::endl;
    mix();	
}

void CConferenceMixThread::on_start()
{
}

void CConferenceMixThread::on_close()
{
}

int CConferenceMixThread::mix()
{
    struct timeval now;
    unsigned long cur_us;
        
    gettimeofday(&now, NULL);
    cur_us = 1000000 * now.tv_sec + now.tv_usec;
    
	if(!_next_fetch_audio_frame_timestamp)
		_next_fetch_audio_frame_timestamp = cur_us;

	if(_next_fetch_audio_frame_timestamp > cur_us)
    {
        return -1;
    }
    
    RAW_AUDIO_FRAME_PTR mix_frame_ptr;    
    if(false == CMemPool::malloc_raw_audio_frame(mix_frame_ptr)) return -2;
    
    if(true == SINGLETON(CScheduleServer).fetch_conference_mix_audio(mix_frame_ptr))
    {
        CUserAgent* ua = SINGLETON(CScheduleServer).fetch_ua(0);
        if(NULL != ua) ua->add_raw_audio_frame(mix_frame_ptr.frame->payload, FRAME_LENGTH_IN_SHORT);
    }
    else
    {
        CMemPool::free_raw_audio_frame(mix_frame_ptr);
    }
    
	_next_fetch_audio_frame_timestamp += AUDIO_SAMPLING_RATE * 1000;
    
    return 0;
}

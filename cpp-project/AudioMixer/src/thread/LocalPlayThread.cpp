// **********************************************************************
// ×÷Õß: ¸µÓÓÃú
// °æ±¾: 1.0
// ÈÕÆÚ: 2011-01 ~ 2011-11
// ÐÞ¸ÄÀúÊ·¼ÇÂ¼: 
// ÈÕÆÚ, ×÷Õß, ±ä¸üÄÚÈÝ
// **********************************************************************
#include "GeneralDef.h"
#include "LocalPlayThread.h"
#include "ScheduleServer.h"

using namespace ScheduleServer;

void CLocalPlayThread::sleep_ms(unsigned long interval)
{
}

void CLocalPlayThread::run()
{
    //std::cout << "local play thread run !" << std::endl;
    play();
	
}

void CLocalPlayThread::on_start()
{
    SINGLETON(CScheduleServer).reg_ua(0, "127.0.0.1", 0, 0, UA_MobilePhone);
}

void CLocalPlayThread::on_close()
{
}

int CLocalPlayThread::play()
{
    CUserAgent* ua = SINGLETON(CScheduleServer).fetch_ua(0);
    
    if(NULL == ua) return 1;
    
    RAW_AUDIO_FRAME_PTR frame_ptr = ua->fetch_audio_frame();
    
    if(NULL == frame_ptr.frame) return 1;
    
    if(_pcm_player.play(frame_ptr.frame->payload)) ua->update_threshold();
    
    CMemPool::free_raw_audio_frame(frame_ptr);
    
    return 0;
}

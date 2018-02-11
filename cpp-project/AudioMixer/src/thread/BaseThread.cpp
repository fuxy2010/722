// **********************************************************************
// ×÷Õß: ¸µÓÓÃú
// °æ±¾: 1.0
// ÈÕÆÚ: 2011-01 ~ 2011-11
// ÐÞ¸ÄÀúÊ·¼ÇÂ¼: 
// ÈÕÆÚ, ×÷Õß, ±ä¸üÄÚÈÝ
// **********************************************************************
#include "GeneralDef.h"
#include "BaseThread.h"

using namespace ScheduleServer;

void* CBaseThread::Thread()
{
    JThread::ThreadStarted();
    
    _joined = false;
    
    while(true)
    {
        clock_t loop_start = clock();
        
        run();
        
        //if(1000 > clock() - loop_start) usleep(2);
    }
    
    _joined = true;
}


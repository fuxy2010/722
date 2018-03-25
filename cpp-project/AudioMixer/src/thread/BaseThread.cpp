// **********************************************************************
// ×÷Õß: ¸µÓÓÃú
// °æ±¾: 1.0
// ÈÕÆÚ: 2011-01 ~ 2011-11
// ÐÞ¸ÄÀúÊ·¼ÇÂ¼: 
// ÈÕÆÚ, ×÷Õß, ±ä¸üÄÚÈÝ
// **********************************************************************
#include "GeneralDef.h"
#include "BaseThread.h"
#include <sys/time.h>

using namespace ScheduleServer;

void* CBaseThread::Thread()
{
    JThread::ThreadStarted();
    
    on_start();
    
    _joined = false;
    
    while(true)
    {
        struct  timeval  t1;
        gettimeofday(&t1, NULL);
        
        run();
        
        struct  timeval  t2;
        gettimeofday(&t2, NULL);
        
        //std::cout << "D " << 1000000 * (t2.tv_sec - t1.tv_sec) + t2.tv_usec - t1.tv_usec << std::endl;
        
        if( 10 > 1000000 * (t2.tv_sec - t1.tv_sec) + t2.tv_usec - t1.tv_usec) usleep(200);
    }
    
    on_close();
    
    _joined = true;
}


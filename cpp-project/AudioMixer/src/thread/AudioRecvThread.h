// **********************************************************************
// ×÷Õß: ¸µÓÓÃú
// °æ±¾: 1.0
// ÈÕÆÚ: 2011-01 ~ 2011-11
// ÐÞ¸ÄÀúÊ·¼ÇÂ¼: 
// ÈÕÆÚ, ×÷Õß, ±ä¸üÄÚÈÝ
// **********************************************************************
#ifndef _AIDOP_RECV_THREAD_H_      
#define _AIDOP_RECV_THREAD_H_

#if defined(_MSC_VER) && (_MSC_VER >= 1200)
#pragma once
#endif // defined(_MSC_VER) && (_MSC_VER >= 1200)

#include "GeneralDef.h"
#include "jthread.h"
#include "MediaData.h"
#include <iostream>
#include <unistd.h>

using namespace jthread;

namespace ScheduleServer
{
	//»áÒéÏß³Ì////////////////////////////////////////////////////////////////////////
	class CAudioRecvThread : public JThread
	{
	public:
		CAudioRecvThread() : _next_fetch_audio_frame_timestamp(0)
        {
            //CMemPool::malloc_raw_audio_frame(_frame_ptr);
        };
		virtual ~CAudioRecvThread()
        {
            while (IsRunning())
            {
                std::cout << "Waiting for thread to finish" << std::endl;
                usleep(5);
            }
            
            //CMemPool::free_raw_audio_frame(_frame_ptr);
        };

    private:
		void* Thread();
        
        void mix();
        
        void play();
        
    private:
        clock_t _next_fetch_audio_frame_timestamp;//下次取音频数据包的时戳
        //RAW_AUDIO_FRAME_PTR _frame_ptr;
	};
}

#endif  // _AIDOP_RECV_THREAD_H_   

// **********************************************************************
// ×÷Õß: ¸µÓÓÃú
// °æ±¾: 1.0
// ÈÕÆÚ: 2011-01 ~ 2011-11
// ÐÞ¸ÄÀúÊ·¼ÇÂ¼: 
// ÈÕÆÚ, ×÷Õß, ±ä¸üÄÚÈÝ
// **********************************************************************
#ifndef _BASE_THREAD_H_      
#define _BASE_THREAD_H_

#if defined(_MSC_VER) && (_MSC_VER >= 1200)
#pragma once
#endif // defined(_MSC_VER) && (_MSC_VER >= 1200)

#include "GeneralDef.h"
#include "jthread.h"
#include "MediaData.h"
#include "Locker.h"
#include <iostream>
#include <unistd.h>

using namespace jthread;

namespace ScheduleServer
{
	//»áÒéÏß³Ì////////////////////////////////////////////////////////////////////////
	class CBaseThread : public JThread
	{
	public:
		CBaseThread()
        {
            _id = clock();
        };
        
		virtual ~CBaseThread()
        {
            _joined = true;
            
            while (IsRunning())
            {
                std::cout << "Waiting for thread to finish" << std::endl;
                usleep(5);
            }
        };

    private:
		void* Thread();
        
        virtual void run() = 0;
        
        virtual void on_start() = 0;

		virtual void on_close() = 0;
        
    private:
        unsigned long _id;
        
    protected:
		void* _parent_ptr;//线程启动者指针

		bool _joined;//线程是否即将关闭

		CSSMutex _mutex; //互斥操作信号量
	};
}

#endif  // _BASE_THREAD_H_   

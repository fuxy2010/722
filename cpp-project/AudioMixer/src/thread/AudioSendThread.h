// **********************************************************************
// ×÷Õß: ¸µÓÓÃú
// °æ±¾: 1.0
// ÈÕÆÚ: 2011-01 ~ 2011-11
// ÐÞ¸ÄÀúÊ·¼ÇÂ¼: 
// ÈÕÆÚ, ×÷Õß, ±ä¸üÄÚÈÝ
// **********************************************************************
#ifndef _AIDOP_SEND_THREAD_H_      
#define _AIDOP_SEND_THREAD_H_

#if defined(_MSC_VER) && (_MSC_VER >= 1200)
#pragma once
#endif // defined(_MSC_VER) && (_MSC_VER >= 1200)

#include "GeneralDef.h"
#include "jthread.h"
#include "MediaData.h"
#include "JRTPSession.h"
#include <iostream>
#include <unistd.h>

using namespace jthread;

namespace ScheduleServer
{
	//»áÒéÏß³Ì////////////////////////////////////////////////////////////////////////
	class CAudioSendThread : public JThread
	{
	public:
		CAudioSendThread(unsigned long id, unsigned short port) :
        _id(id),
        _local_port(port)
        {
        };
		virtual ~CAudioSendThread()
        {
            while (IsRunning())
            {
                std::cout << "Waiting for thread to finish" << std::endl;
                usleep(5);
            }
        };

    private:
		void* Thread();
        
        void send();
        
    private:
        unsigned long _id;
        unsigned long _local_port;
        
	};
}

#endif  // _AIDOP_SEND_THREAD_H_   

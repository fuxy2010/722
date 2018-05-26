// **********************************************************************
// ×÷Õß: ¸µÓÓÃú
// °æ±¾: 1.0
// ÈÕÆÚ: 2011-01 ~ 2011-11
// ÐÞ¸ÄÀúÊ·¼ÇÂ¼: 
// ÈÕÆÚ, ×÷Õß, ±ä¸üÄÚÈÝ
// **********************************************************************
#ifndef _CONFERENCE_MIX_THREAD_H_      
#define _CONFERENCE_MIX_THREAD_H_

#if defined(_MSC_VER) && (_MSC_VER >= 1200)
#pragma once
#endif // defined(_MSC_VER) && (_MSC_VER >= 1200)

#include "GeneralDef.h"
#include "BaseThread.h"
#include "Task.h"

namespace ScheduleServer
{
	//ÈÎÎñ´¦ÀíÏß³Ì
	class CConferenceMixThread : public CBaseThread
	{
	public:
		CConferenceMixThread() : _next_fetch_audio_frame_timestamp(0) {};
		virtual ~CConferenceMixThread() {};

		static void sleep_ms(unsigned long interval);

		//·µ»ØÏß³ÌÀàÐÍ
		virtual THREAD_TYPE get_type()
		{
			return MIX_THREAD;
		}

	protected:
		// Ïß³ÌÈë¿Úº¯Êý
		virtual void run();

		virtual void on_start();

		virtual void on_close();

	private:
        int mix();
        
    private:
        unsigned long _next_fetch_audio_frame_timestamp;
	};
}

#endif  // _CONFERENCE_MIX_THREAD_H_   

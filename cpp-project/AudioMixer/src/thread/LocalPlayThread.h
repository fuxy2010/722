// **********************************************************************
// ×÷Õß: ¸µÓÓÃú
// °æ±¾: 1.0
// ÈÕÆÚ: 2011-01 ~ 2011-11
// ÐÞ¸ÄÀúÊ·¼ÇÂ¼: 
// ÈÕÆÚ, ×÷Õß, ±ä¸üÄÚÈÝ
// **********************************************************************
#ifndef _LOCAL_PLAY_THREAD_H_      
#define _LOCAL_PLAY_THREAD_H_

#if defined(_MSC_VER) && (_MSC_VER >= 1200)
#pragma once
#endif // defined(_MSC_VER) && (_MSC_VER >= 1200)

#include "GeneralDef.h"
#include "BaseThread.h"
#include "Task.h"
#include "PCMPlayer.h"
#include <alsa/asoundlib.h>

namespace ScheduleServer
{
	//ÈÎÎñ´¦ÀíÏß³Ì
	class CLocalPlayThread : public CBaseThread
	{
	public:
		CLocalPlayThread() {};//×î¶à²¢·¢Ö´ÐÐ10ÏîÈÎÎñ
		virtual ~CLocalPlayThread() {};

		static void sleep_ms(unsigned long interval);

		//·µ»ØÏß³ÌÀàÐÍ
		virtual THREAD_TYPE get_type()
		{
			return PLAY_THRED;
		}

	protected:
		// Ïß³ÌÈë¿Úº¯Êý
		virtual void run();

		virtual void on_start();

		virtual void on_close();

	private:
        int play();
        
    private:
        CPCMPlayer _pcm_player;
	};
}

#endif  // _LOCAL_PLAY_THREAD_H_   

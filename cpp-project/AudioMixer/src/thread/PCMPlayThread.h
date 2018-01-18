// **********************************************************************
// ×÷Õß: ¸µÓÓÃú
// °æ±¾: 1.0
// ÈÕÆÚ: 2011-01 ~ 2011-11
// ÐÞ¸ÄÀúÊ·¼ÇÂ¼: 
// ÈÕÆÚ, ×÷Õß, ±ä¸üÄÚÈÝ
// **********************************************************************
#ifndef _PCM_PLAY_THREAD_H_      
#define _PCM_PLAY_THREAD_H_

#if defined(_MSC_VER) && (_MSC_VER >= 1200)
#pragma once
#endif // defined(_MSC_VER) && (_MSC_VER >= 1200)

#include "GeneralDef.h"
#include "jthread.h"
#include "MediaData.h"
#include "PCMPlayer.h"
#include "JRTPSession.h"
#include <iostream>
#include <unistd.h>

using namespace jthread;

namespace ScheduleServer
{
	//»áÒéÏß³Ì////////////////////////////////////////////////////////////////////////
	class CPCMPlayThread : public JThread
	{
	public:
		CPCMPlayThread() :
        _next_fetch_audio_frame_timestamp(0)
        {
        };
        
		virtual ~CPCMPlayThread()
        {
            while (IsRunning())
            {
                std::cout << "Waiting for pcm play thread to finish" << std::endl;
                usleep(5);
            }
        };

    private:
		void* Thread();
        
        int play();
        
    private:
        clock_t _next_fetch_audio_frame_timestamp;//下次取音频数据包的时戳
        CPCMPlayer _pcm_player;
	};
}

#endif  // _PCM_PLAY_THREAD_H_   

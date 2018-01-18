// **********************************************************************
// ×÷Õß: ¸µÓÓÃú
// °æ±¾: 1.0
// ÈÕÆÚ: 2011-01 ~ 2011-11
// ÐÞ¸ÄÀúÊ·¼ÇÂ¼: 
// ÈÕÆÚ, ×÷Õß, ±ä¸üÄÚÈÝ
// **********************************************************************
#ifndef _AUDIO_MIX_THREAD_H_      
#define _AUDIO_MIX_THREAD_H_

#if defined(_MSC_VER) && (_MSC_VER >= 1200)
#pragma once
#endif // defined(_MSC_VER) && (_MSC_VER >= 1200)

#include "GeneralDef.h"
#include "jthread.h"
#include "MediaData.h"
#include "PCMPlayer.h"
#include "JRTPSession.h"
#include "iLBCCodec.h"
#include <iostream>
#include <unistd.h>

using namespace jthread;

namespace ScheduleServer
{
	//»áÒéÏß³Ì////////////////////////////////////////////////////////////////////////
	class CAudioMixThread : public JThread
	{
	public:
		CAudioMixThread(std::string sender_ip) : 
        _sender_ip(sender_ip),
        _rtp_session(NULL),
        _codec(NULL),
        _next_fetch_audio_frame_timestamp(0)
        {
            _codec = new CiLBCCodec();
        };
        
		virtual ~CAudioMixThread()
        {
            delete _codec;
            _codec = NULL;
            
            while (IsRunning())
            {
                std::cout << "Waiting for thread to finish" << std::endl;
                usleep(5);
            }
        };

    private:
		void* Thread();
        
        void mix();
        
    private:
        clock_t _next_fetch_audio_frame_timestamp;//下次取音频数据包的时戳
        //RAW_AUDIO_FRAME_PTR _frame_ptr;
        CPCMPlayer _pcm_player;
        std::string _sender_ip;
        CRTPRecvSession* _rtp_session;
        CiLBCCodec* _codec;
        unsigned char packet[256];
	};
}

#endif  // _AUDIO_MIX_THREAD_H_   

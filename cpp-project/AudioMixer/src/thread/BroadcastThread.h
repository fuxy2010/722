// **********************************************************************
// ×÷Õß: ¸µÓÓÃú
// °æ±¾: 1.0
// ÈÕÆÚ: 2011-01 ~ 2011-11
// ÐÞ¸ÄÀúÊ·¼ÇÂ¼: 
// ÈÕÆÚ, ×÷Õß, ±ä¸üÄÚÈÝ
// **********************************************************************
#ifndef _BROADCAST_THREAD_H_      
#define _BROADCAST_THREAD_H_

#if defined(_MSC_VER) && (_MSC_VER >= 1200)
#pragma once
#endif // defined(_MSC_VER) && (_MSC_VER >= 1200)

#include "GeneralDef.h"
#include "BaseThread.h"
#include "Task.h"
#include "PCMPlayer.h"
#include "JRTPSession.h"
#include "iLBCCodec.h"
#include "G711Codec.h"

namespace ScheduleServer
{
	//ÈÎÎñ´¦ÀíÏß³Ì
	class CBroadcastThread : public CBaseThread
	{
	public:
		CBroadcastThread() :
        _rtp_send_session(NULL),
        _audio_codec(NULL)
        {};
		virtual ~CBroadcastThread() {};

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
        int broadcast();
        
    private:
        CPCMPlayer _pcm_player;
        CRTPRecvSession _rtp_send_session;
        CAudioCodec* _audio_codec;
        
        unsigned char _audio_packet[1024];
        
    public:
        void add_dest_addr(char* ip, unsigned short port);
	};
}

#endif  // _BROADCAST_THREAD_H_   

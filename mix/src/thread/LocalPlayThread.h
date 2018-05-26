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
//#include "PCMPlayer2.h"
#include "UserAgent.h"

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
        //CPCMPlayer2 _pcm_player;
        
    private:
        char _wav_file_name[256];
        FILE* _wav_file;
        int _wav_play_times;
        
    private:
        CSSMutex _wav_file_mutex;
        
    private:
        //struct timeval _now;
        //unsigned long _cur_us;
        //unsigned long _next_play_wav_file_timestamp;
        
    public:
        void config_wav_file(char* file_name, int times)
        {
            CSSLocker lock(&_wav_file_mutex);
            
            ::memcpy(_wav_file_name, file_name, strlen(file_name));
            _wav_play_times = times;
        }
        
        void close_wav_file()
        {
            CSSLocker lock(&_wav_file_mutex);
            
            if(NULL != _wav_file) fclose(_wav_file);
            _wav_file = NULL;
            
            ::memset(_wav_file_name, 0, sizeof(_wav_file_name));
            _wav_play_times = 0;
            
            _pcm_player.reset();
        }
        
        void play_wav_file();//CUserAgent* ua);
	};
}

#endif  // _LOCAL_PLAY_THREAD_H_   

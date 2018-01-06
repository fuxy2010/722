// **********************************************************************
// ×÷Õß: ¸µÓÓÃú
// °æ±¾: 1.0
// ÈÕÆÚ: 2011-01 ~ 2011-11
// ÐÞ¸ÄÀúÊ·¼ÇÂ¼: 
// ÈÕÆÚ, ×÷Õß, ±ä¸üÄÚÈÝ
// **********************************************************************
#ifndef _AIDOP_MIX_THREAD_H_      
#define _AIDOP_MIX_THREAD_H_

#if defined(_MSC_VER) && (_MSC_VER >= 1200)
#pragma once
#endif // defined(_MSC_VER) && (_MSC_VER >= 1200)

#include "GeneralDef.h"
#include "jthread.h"
#include "MediaData.h"
#include <iostream>
#include <unistd.h>
#include <alsa/asoundlib.h>

using namespace jthread;

namespace ScheduleServer
{
	//»áÒéÏß³Ì////////////////////////////////////////////////////////////////////////
	class CAudioMixThread : public JThread
	{
	public:
		CAudioMixThread() :
        _next_fetch_audio_frame_timestamp(0),
        _snd_handle(NULL),
        _snd_params(NULL)
        {
            //打开 PCM playback 设备
            int rc = snd_pcm_open(&_snd_handle, "default", SND_PCM_STREAM_PLAYBACK, 0);
            if(0 > rc)
            {
                std::cout << "unable to open pcm device: " << snd_strerror(rc) << std::endl;
                return;
            }
            
            //分配一个硬件参数结构体
            snd_pcm_hw_params_alloca(&_snd_params);

            //使用默认参数
            snd_pcm_hw_params_any(_snd_handle, _snd_params);
            
            //设置硬件参数
            /* Interleaved mode */
            snd_pcm_hw_params_set_access(_snd_handle, _snd_params, SND_PCM_ACCESS_RW_INTERLEAVED);

            //数据格式为 16位 小端
            snd_pcm_hw_params_set_format(_snd_handle, _snd_params, SND_PCM_FORMAT_S16_LE);
            
            //1个声道 */
            snd_pcm_hw_params_set_channels(_snd_handle, _snd_params, 1);
            
            //采样率为8kHz
            unsigned int val = 8000;
            int dir;
            snd_pcm_hw_params_set_rate_near(_snd_handle, _snd_params, &val, &dir);

            //设置一个周期为480帧, 60ms
            _snd_frames = 480;
            snd_pcm_hw_params_set_period_size_near(_snd_handle, _snd_params, &_snd_frames, &dir);

            /* 把前面设置好的参数写入到playback设备 */
            rc = snd_pcm_hw_params(_snd_handle, _snd_params);
            if(0 > rc)
            {
                std::cout << "unable to set hw parameters: " << snd_strerror(rc) << std::endl;
            }
            
            //得到一个周期的数据长度
            snd_pcm_hw_params_get_period_size(_snd_params, &_snd_frames, &dir);

            //因为我们是16位1通道，所以要*2
            int size = _snd_frames * 2;//2 bytes/sample, 1 channels

            /* We want to loop for 5 seconds */
            /* 得到一个周期的时间长度 */
            //snd_pcm_hw_params_get_period_time(params, &val, &dir);
            /* 5 seconds in microseconds divided by
            * period time */
            //loops = 5000000 / val;
        };
        
		virtual ~CAudioMixThread()
        {
            snd_pcm_drain(_snd_handle);
            snd_pcm_close(_snd_handle);
    
            while (IsRunning())
            {
                std::cout << "Waiting for thread to finish" << std::endl;
                usleep(5);
            }
        };

    private:
		void* Thread();
        
        void mix();
        
        void play(char* pcm);
        
    private:
        clock_t _next_fetch_audio_frame_timestamp;//下次取音频数据包的时戳
        //RAW_AUDIO_FRAME_PTR _frame_ptr;
        
    private:
        snd_pcm_t* _snd_handle;
        snd_pcm_hw_params_t* _snd_params;
        snd_pcm_uframes_t _snd_frames;
	};
}

#endif  // _AIDOP_MIX_THREAD_H_   

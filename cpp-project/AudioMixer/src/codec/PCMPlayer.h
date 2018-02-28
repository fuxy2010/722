// **********************************************************************
// ×÷Õß: ¸µÓÓÃú
// °æ±¾: 1.0
// ÈÕÆÚ: 2011-01 ~ 2011-11
// ÐÞ¸ÄÀúÊ·¼ÇÂ¼: 
// ÈÕÆÚ, ×÷Õß, ±ä¸üÄÚÈÝ
// **********************************************************************
#ifndef _PCM_PLAYER_H_      
#define _PCM_PLAYER_H_

#if defined(_MSC_VER) && (_MSC_VER >= 1200)
#pragma once
#endif // defined(_MSC_VER) && (_MSC_VER >= 1200)

#include "GeneralDef.h"
#include <alsa/asoundlib.h>
#include <iostream>

namespace ScheduleServer
{
	//»áÒéÏß³Ì////////////////////////////////////////////////////////////////////////
	class CPCMPlayer
	{
	public:
		CPCMPlayer() :
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
            
            //采样率为8kHz
            unsigned int val = 8000;
            int dir;
            snd_pcm_hw_params_set_rate_near(_snd_handle, _snd_params, &val, &dir);

            //设置一个周期为480帧, 60ms
            _snd_frames = 480;
            snd_pcm_uframes_t periodsize = _snd_frames * 2;
            //snd_pcm_hw_params_set_buffer_size_near(_snd_handle, _snd_params, &periodsize);
            
            periodsize /= 2;
            
            snd_pcm_hw_params_set_period_size_near(_snd_handle, _snd_params, &periodsize, &dir);
            
            //1个声道 */
            snd_pcm_hw_params_set_channels(_snd_handle, _snd_params, 1);

            /* 把前面设置好的参数写入到playback设备 */
            rc = snd_pcm_hw_params(_snd_handle, _snd_params);
            if(0 > rc)
            {
                std::cout << "unable to set hw parameters: " << snd_strerror(rc) << std::endl;
            }
            
            //得到一个周期的数据长度
            snd_pcm_hw_params_get_period_size(_snd_params, &_snd_frames, &dir);
        };
        
		virtual ~CPCMPlayer()
        {
            snd_pcm_drain(_snd_handle);
            snd_pcm_close(_snd_handle);
        };

    public:        
        int play(void* pcm)
        {
            int rc = snd_pcm_writei(_snd_handle, pcm, _snd_frames);
            //std::cout << "play frame " << _snd_frames << std::endl;
            
            if(-EPIPE == rc)
            {
                /* EPIPE means underrun */
                fprintf(stderr, "underrun occurred\n");
                snd_pcm_prepare(_snd_handle);
                //snd_pcm_recover(_snd_handle, rc, 0);
                
                return 1;
            }
            else if(0 > rc)
            {
                fprintf(stderr, "error from writei: %s\n", snd_strerror(rc));
                
                return 2;
            }
            else if(rc != (int)_snd_frames)
            {
                fprintf(stderr, "short write, write %d frames\n", rc);
                
                return 3;
            }
            
            return 0;
        }
        
    private:
        clock_t _next_fetch_audio_frame_timestamp;
        
    private:
        snd_pcm_t* _snd_handle;
        snd_pcm_hw_params_t* _snd_params;
        snd_pcm_uframes_t _snd_frames;
	};
}

#endif  // _PCM_PLAYER_H_   

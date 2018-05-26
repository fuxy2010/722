// **********************************************************************
// ×÷Õß: ¸µÓÓÃú
// °æ±¾: 1.0
// ÈÕÆÚ: 2011-01 ~ 2011-11
// ÐÞ¸ÄÀúÊ·¼ÇÂ¼: 
// ÈÕÆÚ, ×÷Õß, ±ä¸üÄÚÈÝ
// **********************************************************************
#ifndef _PCM_PLAYER2_H_      
#define _PCM_PLAYER2_H_

#if defined(_MSC_VER) && (_MSC_VER >= 1200)
#pragma once
#endif // defined(_MSC_VER) && (_MSC_VER >= 1200)

#include "GeneralDef.h"
#include <alsa/asoundlib.h>
#include <iostream>

namespace ScheduleServer
{
	//»áÒéÏß³Ì////////////////////////////////////////////////////////////////////////
	class CPCMPlayer2
	{
	public:
		CPCMPlayer2()
        {
            //1. 打开PCM，最后一个参数为0意味着标准配置  
            ret = snd_pcm_open(&playback_handle, "default", SND_PCM_STREAM_PLAYBACK, 0);  
            if (ret < 0) {  
                perror("snd_pcm_open");  
                exit(1);  
            }  
               
            //2. 分配snd_pcm_hw_params_t结构体  
            ret = snd_pcm_hw_params_malloc(&hw_params);  
            if (ret < 0) {  
                perror("snd_pcm_hw_params_malloc");  
                exit(1);  
            }  
            //3. 初始化hw_params  
            ret = snd_pcm_hw_params_any(playback_handle, hw_params);  
            if (ret < 0) {  
                perror("snd_pcm_hw_params_any");  
                exit(1);  
            }  
            //4. 初始化访问权限  
            ret = snd_pcm_hw_params_set_access(playback_handle, hw_params, SND_PCM_ACCESS_RW_INTERLEAVED);  
            if (ret < 0) {  
                perror("snd_pcm_hw_params_set_access");  
                exit(1);  
            }  
            //5. 初始化采样格式SND_PCM_FORMAT_U8,8位  
            ret = snd_pcm_hw_params_set_format(playback_handle, hw_params, SND_PCM_FORMAT_S16_LE);  
            if (ret < 0) {  
                perror("snd_pcm_hw_params_set_format");  
                exit(1);  
            }  
            //6. 设置采样率，如果硬件不支持我们设置的采样率，将使用最接近的  
            //val = 44100,有些录音采样频率固定为8KHz  
               
           
            val = 8000;  
            ret = snd_pcm_hw_params_set_rate_near(playback_handle, hw_params, &val, &dir);  
            if (ret < 0) {  
                perror("snd_pcm_hw_params_set_rate_near");  
                exit(1);  
            }  
            //7. 设置通道数量  
            ret = snd_pcm_hw_params_set_channels(playback_handle, hw_params, 1);  
            if (ret < 0) {  
                perror("snd_pcm_hw_params_set_channels");  
                exit(1);  
            }  
               
            /* Set period size to 32 frames. */  
            frames = FRAME_LENGTH_IN_SHORT;  
            periodsize = frames * 2;  
            ret = snd_pcm_hw_params_set_buffer_size_near(playback_handle, hw_params, &periodsize);  
            if (ret < 0)   
            {  
                 printf("Unable to set buffer size %li : %s\n", frames * 2, snd_strerror(ret));  
                    
            }  
                  periodsize /= 2;  
           
            ret = snd_pcm_hw_params_set_period_size_near(playback_handle, hw_params, &periodsize, 0);  
            if (ret < 0)   
            {  
                printf("Unable to set period size %li : %s\n", periodsize,  snd_strerror(ret));  
            }  
                                             
            //8. 设置hw_params  
            ret = snd_pcm_hw_params(playback_handle, hw_params);  
            if (ret < 0) {  
                perror("snd_pcm_hw_params");  
                exit(1);  
            }  
               
             /* Use a buffer large enough to hold one period */  
            snd_pcm_hw_params_get_period_size(hw_params, &frames, &dir);
        };
        
		virtual ~CPCMPlayer2()
        {
            snd_pcm_drain(playback_handle);
            snd_pcm_close(playback_handle);
        };

    public:        
        int play(void* pcm)
        {
            //9. 写音频数据到PCM设备  
            while(ret = snd_pcm_writei(playback_handle, pcm, frames)<0)  
            {  
                usleep(2000);
                if (ret == -EPIPE)  
                {  
                      /* EPIPE means underrun */  
                      fprintf(stderr, "underrun occurred\n");  
                      //完成硬件参数设置，使设备准备好  
                      snd_pcm_prepare(playback_handle);  
                }   
                else if (ret < 0)   
                {  
                      fprintf(stderr,  
                          "error from writei: %s\n",  
                          snd_strerror(ret));  
                }
                
                std::cout << "." << std::endl;
            }  
            
            return 0;
        }
        
    private:
        clock_t _next_fetch_audio_frame_timestamp;
        
    private:
        int i;  
        int ret;  
        //int buf[128];  
        unsigned int val;  
        int dir;
        //char *buffer;  
        //int size; 
        snd_pcm_uframes_t frames;  
        snd_pcm_uframes_t periodsize;  
        snd_pcm_t *playback_handle;//PCM设备句柄pcm.h  
        snd_pcm_hw_params_t *hw_params;//硬件信息和PCM流配置
	};
}

#endif  // _PCM_PLAYER2_H_   

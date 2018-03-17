// **********************************************************************
// ×÷Õß: ¸µÓÓÃú
// °æ±¾: 1.0
// ÈÕÆÚ: 2011-01 ~ 2011-11
// ÐÞ¸ÄÀúÊ·¼ÇÂ¼: 
// ÈÕÆÚ, ×÷Õß, ±ä¸üÄÚÈÝ
// **********************************************************************
#include "GeneralDef.h"
#include "LocalRecordThread.h"
#include "ScheduleServer.h"

using namespace ScheduleServer;

void CLocalRecordThread::sleep_ms(unsigned long interval)
{
}

void CLocalRecordThread::run()
{
    //std::cout << "local play thread run !" << std::endl;
    record();
	
}

void CLocalRecordThread::on_start()
{
    SINGLETON(CScheduleServer).reg_ua(1, "127.0.0.1", 0, 0);//, 0, UA_MobilePhone);
    
    /* Open PCM device for recording (capture). */
    /* 打开 PCM capture 捕获设备 */
    _rc = snd_pcm_open(&_handle, "default", SND_PCM_STREAM_CAPTURE, 0);
    //_rc = snd_pcm_open(&_handle, "plughw:0,0", SND_PCM_STREAM_CAPTURE, 0);
    if(_rc < 0)
    {
        fprintf(stderr, "unable to open pcm device: %s\n", snd_strerror(_rc));
        exit(1);
    }

    /* Allocate a hardware parameters object. */
    /* 分配一个硬件参数结构体 */
    snd_pcm_hw_params_alloca(&_params);

    /* Fill it in with default values. */
    /* 使用默认参数 */
    snd_pcm_hw_params_any(_handle, _params);

    /* Set the desired hardware parameters. */

    /* Interleaved mode */
    snd_pcm_hw_params_set_access(_handle, _params, SND_PCM_ACCESS_RW_INTERLEAVED);

    /* Signed 16-bit little-endian format */
    /* 16位 小端 */
    snd_pcm_hw_params_set_format(_handle, _params, SND_PCM_FORMAT_S16_LE);

    /* One channels */
    /* 1通道 */
    snd_pcm_hw_params_set_channels(_handle, _params, 1);

    /* 44100 bits/second sampling rate (CD quality) */
    /* 采样率 */
    _val = 8000;
    snd_pcm_hw_params_set_rate_near(_handle, _params, &_val, &_dir);

    /* Set period size to FRAME_LENGTH_IN_SHORT frames. */
    /* 一个周期有 FRAME_LENGTH_IN_SHORT 帧 */
    _frames = FRAME_LENGTH_IN_SHORT;
    //snd_pcm_hw_params_set_period_size_near(_handle, _params, &_frames, &_dir);

    /* Write the parameters to the driver */
    /* 参数生效 */
    _frames = FRAME_LENGTH_IN_SHORT;
    std::cout << "@@@@@@@@@ redord frame: " << _frames << ", " << _size << std::endl;
    _rc = snd_pcm_hw_params(_handle, _params);
    if(_rc < 0)
    {
        fprintf(stderr, "unable to set hw parameters: %s\n", snd_strerror(_rc));
        exit(1);
    }

    /* Use a buffer large enough to hold one period */
    /* 得到一个周期的数据大小 */
    //snd_pcm_hw_params_get_period_size(_params, &_frames, &_dir);
    
    /* 16位 1通道，所以要 * 2 */
    _size = _frames * 2; /* 2 bytes/sample, 1 channels */
    _buffer = (char*)malloc(_size);
    
    std::cout << ">>>>>>>>> redord frame: " << _frames << ", " << _size << std::endl;
}

void CLocalRecordThread::on_close()
{
    snd_pcm_drain(_handle);
    snd_pcm_close(_handle);
    
    free(_buffer);
}

int CLocalRecordThread::record()
{
    std::cout << "++++++ redord frame: " << _frames << ", " << _size << std::endl;
    
    /* 捕获数据 */
    _rc = snd_pcm_readi(_handle, _buffer, _frames);
    
    if(_rc == -EPIPE)
    {
        /* EPIPE means overrun */
        fprintf(stderr, "overrun occurred\n");
        snd_pcm_prepare(_handle);
    }
    else if(_rc < 0)
    {
        fprintf(stderr, "error from read: %s\n", snd_strerror(_rc));
    }
    else if (_rc != (int)_frames)
    {
        fprintf(stderr, "short read, read %d frames\n", _rc);
    }
    
    /* 写入到标准输出中去 */
    //rc = write(1, buffer, size);
    //if (rc != size) fprintf(stderr, "short write: wrote %d bytes\n", rc);
    
    if(false)
    {
        FILE* f = fopen("./recv.pcm", "ab+");
        fwrite(_buffer, sizeof(short), _size, f);
        fclose(f);
    }
    else
    {
        CUserAgent* ua = SINGLETON(CScheduleServer).fetch_ua(0);
        if(NULL != ua) ua->add_raw_audio_frame((short*)_buffer, _frames);
    }
        
    std::cout << "====== redord frame: " << _frames << ", " << _size << std::endl;
                  
                  
#if 0
    CUserAgent* ua = SINGLETON(CScheduleServer).fetch_ua(1);
    
    if(NULL == ua) return 1;
    
    RAW_AUDIO_FRAME_PTR frame_ptr = ua->fetch_audio_frame();
    
    if(NULL == frame_ptr.frame) return 1;
    
    if(_pcm_player.play(frame_ptr.frame->payload)) ua->update_threshold();
    
    CMemPool::free_raw_audio_frame(frame_ptr);
#endif
    
    return 0;
}

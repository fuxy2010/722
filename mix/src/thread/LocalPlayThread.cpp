// **********************************************************************
// ×÷Õß: ¸µÓÓÃú
// °æ±¾: 1.0
// ÈÕÆÚ: 2011-01 ~ 2011-11
// ÐÞ¸ÄÀúÊ·¼ÇÂ¼: 
// ÈÕÆÚ, ×÷Õß, ±ä¸üÄÚÈÝ
// **********************************************************************
#include "GeneralDef.h"
#include "LocalPlayThread.h"
#include "ScheduleServer.h"

using namespace ScheduleServer;

void CLocalPlayThread::sleep_ms(unsigned long interval)
{
}

void CLocalPlayThread::run()
{
    //std::cout << "local play thread run !" << std::endl;
    play();
	
}

void CLocalPlayThread::on_start()
{
    unsigned long id = 0;
    SINGLETON(CScheduleServer).reg_ua(id, "127.0.0.1", 0, 0, 0);//, 0, UA_MobilePhone);
    
    //_cur_us = 0;
    //_next_play_wav_file_timestamp = 0;
    
    memset(_wav_file_name, 0, sizeof(_wav_file_name));
}

void CLocalPlayThread::on_close()
{
}

void CLocalPlayThread::play_wav_file()//CUserAgent* ua)
{
    /*gettimeofday(&_now, NULL);
    _cur_us = 1000000 * _now.tv_sec + _now.tv_usec;
    
	if(!_next_play_wav_file_timestamp)
		_next_play_wav_file_timestamp = _cur_us;

	if(_next_play_wav_file_timestamp > _cur_us) return;*/
    
    CSSLocker lock(&_wav_file_mutex);
    
    if(!_wav_play_times) return;
    
    if(!strlen(_wav_file_name)) return;
    
    //read format
    if(NULL == _wav_file)
    {
        struct ScheduleServer::WAV_Format wav_format;
        
        _wav_file = fopen(_wav_file_name, "rb");
        
        if(NULL == _wav_file) return;
        
        fread(&wav_format, sizeof(struct ScheduleServer::WAV_Format), 1, _wav_file);
        
        printf("ChunkID \t%x\n", wav_format.ChunkID);
        printf("ChunkSize \t%d\n", wav_format.ChunkSize);
        printf("Format \t\t%x\n", wav_format.Format);
        printf("Subchunk1ID \t%x\n", wav_format.Subchunk1ID);
        printf("Subchunk1Size \t%d\n", wav_format.Subchunk1Size);
        printf("AudioFormat \t%d\n", wav_format.AudioFormat);
        printf("NumChannels \t%d\n", wav_format.NumChannels);
        printf("SampleRate \t%d\n", wav_format.SampleRate);
        printf("ByteRate \t%d\n", wav_format.ByteRate);
        printf("BlockAlign \t%d\n", wav_format.BlockAlign);
        printf("BitsPerSample \t%d\n", wav_format.BitsPerSample);
        printf("Subchunk2ID \t%x\n", wav_format.Subchunk2ID);
        printf("Subchunk2Size \t%d\n", wav_format.Subchunk2Size);
    }
    
    //read frame
    short frame[FRAME_LENGTH_IN_SHORT];
    unsigned char packet[FRAME_LENGTH_IN_BYTE];//alloc max length
    
    if(FRAME_LENGTH_IN_SHORT != fread(frame, sizeof(short), FRAME_LENGTH_IN_SHORT, _wav_file))
    {
        fclose(_wav_file);
        _wav_file = NULL;
        
        --_wav_play_times;
        
        if(!_wav_play_times) _pcm_player.reset();
        
        return;
    }
    
    if(_pcm_player.play(frame)) ;//ua->update_threshold();
    
    //_next_play_wav_file_timestamp += AUDIO_SAMPLING_RATE * 1000;
}

int CLocalPlayThread::play()
{
    CUserAgent* ua = SINGLETON(CScheduleServer).fetch_ua(0);
    
    if(_wav_play_times)
    {
        if(NULL != ua) ua->remove_all_audio_frames();
        play_wav_file();
    }
    else
    {
        if(NULL == ua) return 1;
        
        RAW_AUDIO_FRAME_PTR frame_ptr = ua->fetch_audio_frame();
        
        if(NULL == frame_ptr.frame) return 1;
        
        if(_pcm_player.play(frame_ptr.frame->payload)) ua->update_threshold();
        
        CMemPool::free_raw_audio_frame(frame_ptr);
    }
    
    return 0;
}

// **********************************************************************
// ×÷Õß: ¸µÓÓÃú
// °æ±¾: 1.0
// ÈÕÆÚ: 2011-01 ~ 2011-11
// ÐÞ¸ÄÀúÊ·¼ÇÂ¼: 
// ÈÕÆÚ, ×÷Õß, ±ä¸üÄÚÈÝ
// **********************************************************************
#include "GeneralDef.h"
#include "PCMPlayThread.h"
#include "ScheduleServer.h"
#include "rtpsession.h"
#include "rtppacket.h"
#include "rtpudpv4transmitter.h"
#include "rtpipv4address.h"
#include "rtpsessionparams.h"
#include "rtperrors.h"
#include "rtpsourcedata.h"

using namespace ScheduleServer;
using namespace jthread;
using namespace jrtplib;

int CPCMPlayThread::play()
{
    if(!_next_fetch_audio_frame_timestamp) _next_fetch_audio_frame_timestamp = clock();
    
    //if(_next_fetch_audio_frame_timestamp > clock()) return 1;
    
    CUserAgent* ua = SINGLETON(CScheduleServer).fetch_ua(0);
    
    if(NULL == ua) return 1;
    
    RAW_AUDIO_FRAME_PTR frame_ptr = ua->fetch_audio_frame();
    
    if(NULL == frame_ptr.frame) return 1;
    
    _pcm_player.play(frame_ptr.frame->payload);
    
    CMemPool::free_raw_audio_frame(frame_ptr);
    
    _next_fetch_audio_frame_timestamp += AUDIO_SAMPLING_RATE * 1000;
    
    return 0;
}

void* CPCMPlayThread::Thread()
{
    JThread::ThreadStarted();
#if 0
    RTPTime::Wait(RTPTime(3, 5));
    
    FILE* file = fopen("recv.pcm", "rb");
    
    short* frame = (short*) malloc(480);

    while (true)
    {
        {
            size_t read_len = fread(frame, sizeof(short), 480, file);
            if(480 != read_len)
            {
                fseek(file, 0, SEEK_SET);
            }
            
            std::cout << "play " << read_len << std::endl;
        }
        
        _pcm_player.play(frame);
    }
    
    free(frame);
#else    
    while(true)
    {
        //clock_t loop_start = clock();
        
        //RTPTime::Wait(RTPTime(1, 5));
        
        if(play()) RTPTime::Wait(RTPTime(0, 5));
        
        //if(1000 > clock() - loop_start) usleep(2);
    }
#endif
}

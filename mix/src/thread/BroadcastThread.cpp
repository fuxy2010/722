// **********************************************************************
// ×÷Õß: ¸µÓÓÃú
// °æ±¾: 1.0
// ÈÕÆÚ: 2011-01 ~ 2011-11
// ÐÞ¸ÄÀúÊ·¼ÇÂ¼: 
// ÈÕÆÚ, ×÷Õß, ±ä¸üÄÚÈÝ
// **********************************************************************
#include "GeneralDef.h"
#include "BroadcastThread.h"
#include "ScheduleServer.h"

using namespace ScheduleServer;

void CBroadcastThread::sleep_ms(unsigned long interval)
{
}

void CBroadcastThread::run()
{
    //std::cout << "local play thread run !" << std::endl;
    broadcast();	
}

void CBroadcastThread::on_start()
{
    unsigned long id = 0;
    SINGLETON(CScheduleServer).reg_ua(id, "127.0.0.1", 0, 0, 0);//, 0, UA_MobilePhone);
    
    _audio_codec = new CG711Codec();//new CiLBCCodec();
}

void CBroadcastThread::on_close()
{
    delete _audio_codec;
    _audio_codec = NULL;
}

void CBroadcastThread::add_dest_addr(char* ip, unsigned short port)
{
    _rtp_send_session.add_dest_addr(ip, port);
}

int CBroadcastThread::broadcast()
{
    CUserAgent* ua = SINGLETON(CScheduleServer).fetch_ua(0);
    
    if(NULL == ua) return 1;
    
    RAW_AUDIO_FRAME_PTR frame_ptr = ua->fetch_audio_frame();
    
    if(NULL == frame_ptr.frame) return 1;
    
    {
        ::memset(_audio_packet, 0, sizeof(_audio_packet));
        int packet_len = _audio_codec->encode(frame_ptr.frame->payload, _audio_packet);
    
        //if(NULL != _rtp_send_session) _rtp_send_session->send_rtp_packet(_audio_packet, packet_len, G711RTPPacket, true, FRAME_LENGTH_IN_SHORT/*AUDIO_SAMPLING_RATE*/, 1);
        _rtp_send_session.send_rtp_packet(_audio_packet, packet_len, G711RTPPacket, true, FRAME_LENGTH_IN_SHORT/*AUDIO_SAMPLING_RATE*/, 1);
    }    
    
    if(true)//local loop
    {
        if(_pcm_player.play(frame_ptr.frame->payload)) ua->update_threshold();
    }
    
    CMemPool::free_raw_audio_frame(frame_ptr);
    
    return 0;
}

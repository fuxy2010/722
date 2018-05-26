// **********************************************************************
// ×÷Õß: ¸µÓÓÃú
// °æ±¾: 1.0
// ÈÕÆÚ: 2011-01 ~ 2011-11
// ÐÞ¸ÄÀúÊ·¼ÇÂ¼: 
// ÈÕÆÚ, ×÷Õß, ±ä¸üÄÚÈÝ
// **********************************************************************
#ifndef _G711_CODEC_H_
#define _G711_CODEC_H_

#if defined(_MSC_VER) && (_MSC_VER >= 1200)
#pragma once
#endif // defined(_MSC_VER) && (_MSC_VER >= 1200)

#include "GeneralDef.h"
#include "AudioCodec.h"

namespace ScheduleServer
{
	class CG711Codec : public CAudioCodec
	{
	public:
		CG711Codec();
		virtual ~CG711Codec();

		virtual int encode(short* frame, unsigned char* bits);//±àÂëÈýÖ¡Ô­Ê¼ÓïÒô

		virtual int decode(unsigned char* bits, short* frame, int crc = 0);//½âÂëÉú³ÉÈýÖ¡Ô­Ê¼ÓïÒô

		virtual int calculate_energy(unsigned char* bits, int len);//»ñÈ¡Ò»¸ö±àÂëºóÒôÆµÊý¾Ý°ü°üÄÜÁ¿
	private:
		//void* _encoder;
		//void* _decoder;

		//unsigned char _encode_packet[64];
		//unsigned short _decode_frame[512];
        
    private:
        unsigned char g711_encode(short pcm);
        short g711_decode(unsigned char alaw);
	};
}

#endif//_G711_CODEC_H_      

// **********************************************************************
// ×÷Õß: ¸µÓÓÃú
// °æ±¾: 1.0
// ÈÕÆÚ: 2011-01 ~ 2011-11
// ÐÞ¸ÄÀúÊ·¼ÇÂ¼: 
// ÈÕÆÚ, ×÷Õß, ±ä¸üÄÚÈÝ
// **********************************************************************
#ifndef _PCM_CODEC_H_
#define _PCM_CODEC_H_

#if defined(_MSC_VER) && (_MSC_VER >= 1200)
#pragma once
#endif // defined(_MSC_VER) && (_MSC_VER >= 1200)

#include "GeneralDef.h"
#include "AudioCodec.h"

namespace ScheduleServer
{
	class CPCMCodec : public CAudioCodec
	{
	public:
		CPCMCodec();
		virtual ~CPCMCodec();

		virtual int encode(short* frame, unsigned char* bits);//±àÂëÈýÖ¡Ô­Ê¼ÓïÒô

		virtual int decode(unsigned char* bits, short* frame, int crc = 0);//½âÂëÉú³ÉÈýÖ¡Ô­Ê¼ÓïÒô

		virtual int calculate_energy(unsigned char* bits, int len);//»ñÈ¡Ò»¸ö±àÂëºóÒôÆµÊý¾Ý°ü°üÄÜÁ¿

	};
}

#endif  //_PCM_CODEC_H_      

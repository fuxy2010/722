// **********************************************************************
// 作者: 傅佑铭
// 版本: 1.0
// 日期: 2011-01 ~ 2011-11
// 修改历史记录: 
// 日期, 作者, 变更内容
// **********************************************************************
#ifndef _ILBC_CODEC_H_
#define _ILBC_CODEC_H_

#if defined(_MSC_VER) && (_MSC_VER >= 1200)
#pragma once
#endif // defined(_MSC_VER) && (_MSC_VER >= 1200)

#include "GeneralDef.h"
#include "AudioCodec.h"

namespace ScheduleServer
{
	class CiLBCCodec : public CAudioCodec
	{
	public:
		CiLBCCodec();
		virtual ~CiLBCCodec();

		virtual int encode(short* frame, unsigned char* bits);//编码三帧原始语音

		virtual int decode(unsigned char* bits, short* frame, int crc = 0);//解码生成三帧原始语音

		virtual int calculate_energy(unsigned char* bits, int len);//获取一个编码后音频数据包包能量

		int predictive_decode(short* frame, int lost_frame_count);

	private:
		void* _encoder;
		void* _decoder;

		unsigned char _encode_packet[64];
		unsigned short _decode_frame[512];
	};
}

#endif//_ILBC_CODEC_H_      

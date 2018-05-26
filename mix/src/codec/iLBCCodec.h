// **********************************************************************
// ����: ������
// �汾: 1.0
// ����: 2011-01 ~ 2011-11
// �޸���ʷ��¼: 
// ����, ����, �������
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

		virtual int encode(short* frame, unsigned char* bits);//������֡ԭʼ����

		virtual int decode(unsigned char* bits, short* frame, int crc = 0);//����������֡ԭʼ����

		virtual int calculate_energy(unsigned char* bits, int len);//��ȡһ���������Ƶ���ݰ�������

		int predictive_decode(short* frame, int lost_frame_count);

	private:
		void* _encoder;
		void* _decoder;

		unsigned char _encode_packet[64];
		unsigned short _decode_frame[512];
	};
}

#endif//_ILBC_CODEC_H_      

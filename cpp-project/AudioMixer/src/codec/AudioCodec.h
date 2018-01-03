// **********************************************************************
// ����: ������
// �汾: 1.0
// ����: 2011-01 ~ 2011-11
// �޸���ʷ��¼: 
// ����, ����, �������
// **********************************************************************
#ifndef _AUDIO_CODEC_H_
#define _AUDIO_CODEC_H_

#if defined(_MSC_VER) && (_MSC_VER >= 1200)
#pragma once
#endif // defined(_MSC_VER) && (_MSC_VER >= 1200)

#include "GeneralDef.h"
#include "MediaData.h"
#include "Locker.h"
#include "AES.h"

//ÿ����ƵRTP����������֡����
#define AUDIO_FRAME_PER_PACKET			3
//����֡����(��λshort��
#define AUDIO_FRAME_LENGTH				160

#define PKT_SAMPLE_NUM	(AUDIO_FRAME_LENGTH * AUDIO_FRAME_PER_PACKET)
#define PKT_FRAME_NUM	AUDIO_FRAME_PER_PACKET

namespace ScheduleServer
{
	class CAudioCodec
	{

	public:
		CAudioCodec()
		{
#ifdef USE_AES
			aes_enc = new CAES(_aes_key);
			aes_dec = new CAES(_aes_key);
#endif
		};
		virtual ~CAudioCodec()
		{
#ifdef USE_AES
			delete aes_enc;
			aes_enc = NULL;

			delete aes_dec;
			aes_dec = NULL;
#endif
		};

	protected:
#ifdef USE_AES
		CAES* aes_enc;
		CAES* aes_dec;
#endif

		void encrypt(unsigned char* data)
		{
#ifdef USE_AES
			aes_enc->encrypt(data, 16);
#endif
		}

		void decrypt(unsigned char* data)
		{
#ifdef USE_AES
			aes_dec->decrypt(data, 16);
#endif
		}

	public:
		//������֡ԭʼ���������ر���������ֽڳ���
		//frame_lengthΪ��ԭʼ����֡�ֽڳ���
		virtual int encode(short* frame, unsigned char* bits) = 0;

		//����������֡ԭʼ�����������õ������ĳ���
		//packet_lengthΪ������������֡�ֽڳ���
		virtual int decode(unsigned char* bits, short* frame, int crc = 0) = 0;

		virtual int calculate_energy(unsigned char* bits, int len) = 0;//��ȡһ���������Ƶ���ݰ�������,len ���ֽ�Ϊ��λ

		
		//����һ·
		//mix_buffer-- ����buffer�����һ·ʱӦ������
		//frame��������������
		//frame_len�������������ȣ����ֽ�Ϊ��λ
		//fscale������Ȩ����,��·���仯��Ĭ��1.0
		//energy---������������,��ѡ,Ĭ��0
		static int mix(short* mix_buffer, short *frame, int frame_len, double fscale, int energy)
		{
#if 1
			//return mix_audio(mix_buffer, frame, frame_len * sizeof(char) / sizeof(short), fscale, energy);
			//int mix_audio(short *mixbuffer,short *aud,int len,double fscale,int enr)
			{
				int i;
				int temp;
				int len = frame_len * sizeof(char) / sizeof(short);

				for(i=0;i<len;i++)
				{
					temp = mix_buffer[i];
					temp += frame[i]*fscale;

					if(temp>32767) temp=32767;
					if(temp<-32768) temp=-32768;
					mix_buffer[i] = temp;

				}
				return 0;
			}
#else
			//::memcpy(mix_buffer, frame, frame_len);
			//return frame_len;
#endif
	}
	
	protected:
		CSSMutex _encode_mutext;//���뻥����
		CSSMutex _decode_mutext;//���뻥����

	};
}

#endif  // _AUDIO_CODEC_H_      

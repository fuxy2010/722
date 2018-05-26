// **********************************************************************
// ×÷Õß: ¸µÓÓÃú
// °æ±¾: 1.0
// ÈÕÆÚ: 2011-01 ~ 2011-11
// ÐÞ¸ÄÀúÊ·¼ÇÂ¼: 
// ÈÕÆÚ, ×÷Õß, ±ä¸üÄÚÈÝ
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

//Ã¿¸öÒôÆµRTP°üËùº¬ÓïÒôÖ¡¸öÊý
#define AUDIO_FRAME_PER_PACKET			3
//ÓïÒôÖ¡³¤¶È(µ¥Î»short£©
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
		//±àÂëÈýÖ¡Ô­Ê¼ÓïÒô£¬·µ»Ø±àÂëºóÊý¾Ý×Ö½Ú³¤¶È
		//frame_lengthÎªÈýÔ­Ê¼ÓïÒôÖ¡×Ö½Ú³¤¶È
		virtual int encode(short* frame, unsigned char* bits) = 0;

		//½âÂëÉú³ÉÈýÖ¡Ô­Ê¼ÓïÒô£¬·µ»ØÓÃµôÂëÁ÷µÄ³¤¶È
		//packet_lengthÎª´ý½âÂëÈýÓïÒôÖ¡×Ö½Ú³¤¶È
		virtual int decode(unsigned char* bits, short* frame, int crc = 0) = 0;

		virtual int calculate_energy(unsigned char* bits, int len) = 0;//»ñÈ¡Ò»¸ö±àÂëºóÒôÆµÊý¾Ý°ü°üÄÜÁ¿,len ÒÔ×Ö½ÚÎªµ¥Î»

		
		//»ìÒôÒ»Â·
		//mix_buffer-- »ìÒôbuffer£¬»ìµÚÒ»Â·Ê±Ó¦¸ÃÇåÁã
		//frame£­£­´ý»ìÒô»°Òô
		//frame_len£­£­£­»°Òô³¤¶È£¬ÒÔ×Ö½ÚÎªµ¥Î»
		//fscale£­£­¼ÓÈ¨²ÎÊý,ÒÀÂ·Êý±ä»¯£¬Ä¬ÈÏ1.0
		//energy---ÊäÈëÓïÒôÄÜÁ¿,¿ÉÑ¡,Ä¬ÈÏ0
		static int mix(short* mix_buffer, short *frame, int frame_len, double fscale, int energy)
		{
            {
				int i;
				int temp;
				int len = frame_len * sizeof(char) / sizeof(short);

				for(i=0;i<len;i++)
				{
					temp = mix_buffer[i];
					temp += frame[i]*fscale;

					//if(temp>32767) temp=32767;
					//if(temp<-32768) temp=-32768;
					mix_buffer[i] = temp;

				}
				return 0;
			}
        }
        
        static int remove(short* mix_buffer, short *frame, int frame_len, double fscale, int energy)
		{
            {
				int i;
				int temp;
				int len = frame_len * sizeof(char) / sizeof(short);

				for(i=0;i<len;i++)
				{
					temp = mix_buffer[i];
					temp -= frame[i]*fscale;

					//if(temp>32767) temp=32767;
					//if(temp<-32768) temp=-32768;
					mix_buffer[i] = temp;

				}
				return 0;
			}
        }
	
	protected:
		CSSMutex _encode_mutext;//±àÂë»¥³âÁ¿
		CSSMutex _decode_mutext;//½âÂë»¥³âÁ¿

	};
}

#endif  // _AUDIO_CODEC_H_      

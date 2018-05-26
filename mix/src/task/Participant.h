// **********************************************************************
// ����: ������
// �汾: 1.0
// ����: 2011-01 ~ 2011-11
// �޸���ʷ��¼: 
// ����, ����, �������
// **********************************************************************
#ifndef _PARTICIPANT_H_
#define _PARTICIPANT_H_

#if defined(_MSC_VER) && (_MSC_VER >= 1200)
#pragma once
#endif // defined(_MSC_VER) && (_MSC_VER >= 1200)

#include "GeneralDef.h"
#include "Task.h"
#include "ScheduleServer.h"
#include "iLBCCodec.h"
#include "PCMCodec.h"

namespace ScheduleServer
{
	//�����Ա��Ϣ
	typedef struct tagPARTICIPANT
	{
	public:
		//USER_AGENT_INFO	ua_info;//���UA����Ϣ
		USER_AGENT_TYPE		ua_type;//���UA������
		//PARTICIPANT_STATUS	status;//״̬
		unsigned short		audio_rtp_sequence;//��ǰ������UA����ƵRTP�����к�
		//bool				is_speaker;
		//char				name_utf8[64];//UA���ƣ������¼���Participantʱ�Ŷ��丳ֵ
		//char				name_utf8[];
		PARTICIPANT_ROLE	role;//����߽�ɫ

	private:
		CAudioCodec*		audio_codec;//��Ƶcodec,�״ε���ʱ����
		RAW_AUDIO_FRAME_PTR	audio_frame_ptr;//�������Ƶ����֡

	public:
		tagPARTICIPANT() : audio_codec(NULL), audio_rtp_sequence(0), role(Observer), ua_type(UA_Unknown)//, is_speaker(false), status(UnInvited)
		{
			//RAW_AUDIO_FRAME_PTR��ʼ�����иò��� audio_frame_ptr.frame = NULL;
			//::memset(name_utf8, 0, sizeof(name_utf8));
		}

		~tagPARTICIPANT()
		{
		}

		void clear()
		{
			//ÿ��ʹ�����ʱ��������
			CMemPool::free_raw_audio_frame(audio_frame_ptr);

			delete audio_codec;
		}

		//ֻ��һ����������̣߳��������codec��������
		CAudioCodec* get_audio_codec()
		{
			if(NULL == audio_codec)
			{
				/*switch(ua_type)
				{
				case UA_Unknown:
				case UA_MobilePhone:
#ifdef USE_AMR_WBP
					audio_codec = new CAMRWBPCodec();
#endif
#ifdef USE_AMR_NB
					audio_codec = new CAMRNBCodec();
#endif
#ifdef USE_ILBC
					audio_codec = new CiLBCCodec();
#endif
					break;

				case UA_FixedPhone:
				case UA_Radio:
					audio_codec = new CPCMCodec();
					break;
				}*/
			}

			audio_codec = new CG711Codec();//new CiLBCCodec();

			return audio_codec;
		}

		//audio_frame_ptr����////////////////////////////////////////////////////////////////////////
		//����UA��ȡ������������Ƹ�audio_frame_ptr
		void input_raw_audio_frame(RAW_AUDIO_FRAME_PTR& frame_ptr)
		{
			audio_frame_ptr = frame_ptr;
		}

		void free_raw_audio_frame()
		{
			CMemPool::free_raw_audio_frame(audio_frame_ptr);
		}

		RAW_AUDIO_FRAME_PTR* get_raw_audio_frame()
		{
			return &audio_frame_ptr;
		}
	}
	PARTICIPANT;

	//����////////////////////////////////////////////////////////////////////////
	typedef struct tagAUDIENCE
	{
		unsigned long		id;
		USER_AGENT_TYPE		type;
		unsigned short*		rtp_sequence;
		struct sockaddr_in	addr;
		unsigned char		protocol;//0x1-UDP, 0x2-TCP, 0x3-��֧��

		tagAUDIENCE() : id(0), type(UA_MobilePhone), rtp_sequence(NULL), protocol(0)
		{
			::memset(&addr, 0, sizeof(struct sockaddr_in));
			addr.sin_family = AF_INET;
		}

		~tagAUDIENCE()
		{
		}
	}
	AUDIENCE;
}

#endif  //_PARTICIPANT_H_      

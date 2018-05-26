// **********************************************************************
// ×÷Õß: ¸µÓÓÃú
// °æ±¾: 1.0
// ÈÕÆÚ: 2013-01 ~ 2014-11
// ÐÞ¸ÄÀúÊ·¼ÇÂ¼: 
// ÈÕÆÚ, ×÷Õß, ±ä¸üÄÚÈÝ
// **********************************************************************
#ifndef _VAD_INSTANCE_H_
#define _VAD_INSTANCE_H_

#include <stdlib.h>
#include <stdio.h>

namespace VAD//±ÜÃâtypedefs.hÖÐµÄÖØ¸´¶¨Òå
{
	#include "webrtc_vad.h"
	class CVAD
	{
	public:
		CVAD() : _vad_inst(NULL)
		{
			WebRtcVad_Create(&_vad_inst);
			WebRtcVad_Init(_vad_inst);
			WebRtcVad_set_mode(_vad_inst, 0);
		}

		virtual ~CVAD()
		{
			WebRtcVad_Free(_vad_inst);
		}

		bool vad(short* frame, int sample_rate, int sample_num)
		{
            //返回0为静音信号，返回1为非静音信号
			return (0 == WebRtcVad_Process(_vad_inst, sample_rate, frame, sample_num)) ? true : false;
		}

	private:
		VadInst* _vad_inst;
	};
}

#endif//_VAD_INSTANCE_H_      

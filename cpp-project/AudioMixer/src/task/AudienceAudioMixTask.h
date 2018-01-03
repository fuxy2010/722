// **********************************************************************
// 作者: 傅佑铭
// 版本: 1.0
// 日期: 2011-01 ~ 2011-11
// 修改历史记录: 
// 日期, 作者, 变更内容
// **********************************************************************
#ifndef _AUDIENCE_AUDIO_MIX_TASK_H_
#define _AUDIENCE_AUDIO_MIX_TASK_H_

#if defined(_MSC_VER) && (_MSC_VER >= 1200)
#pragma once
#endif // defined(_MSC_VER) && (_MSC_VER >= 1200)

#include "GeneralDef.h"
#include "Task.h"
#include "time.h"
#include "ScheduleServer.h"
#include "Participant.h"
#include "TaskCounter.h"
#include "avirecord.h"

namespace ScheduleServer
{
	typedef enum
	{
		AudienceAudioMixTask_Begin = 0,//任务开始
		AudienceAudioMixTask_Mix,//混音
		AudienceAudioMixTask_Encode,//编码
		AudienceAudioMixTask_Send,//发送
		AudienceAudioMixTask_Done//任务完成
	}
	AUDIENCE_AUDIO_MIX_TASK_STATUS;

	typedef struct tagAUDIENCE_AUDIO_MIX_TASK_INFO
	{
		unsigned long				task_id;//任务ID
		unsigned long				conference_id;//会议ID
		RAW_AUDIO_FRAME_PTR			raw_audio_frame;//待混音原始语音数据
		
		CAudioCodec*				amr_codec;
		CPCMCodec*					pcm_codec;
		bool						has_pcm_ua;
		unsigned long				timestamp;//会议创建时戳
		CTaskCounter*				counter;//会议任务计数器
		CAviRecordEx*				avi_record;//会议录像

		tagAUDIENCE_AUDIO_MIX_TASK_INFO() :
		task_id(0),
		conference_id(0),
		amr_codec(NULL),
		pcm_codec(NULL),
		has_pcm_ua(false),
		counter(NULL),
		avi_record(NULL)
		{
			audience_vec.clear();
		}

		~tagAUDIENCE_AUDIO_MIX_TASK_INFO()
		{
			//绝对不可在此释放raw_audio_vec中各成员分配的内存!!!
		}

		void clear()
		{
			//raw_audio_frame.delay('C');

			CMemPool::free_raw_audio_frame(raw_audio_frame);

			audience_vec.clear();
		}
	}
	AUDIENCE_AUDIO_MIX_TASK_INFO;

	class CAudienceAudioMixTask : public CTask
	{
	public:
		CAudienceAudioMixTask(AUDIENCE_AUDIO_MIX_TASK_INFO& task_info);
		virtual ~CAudienceAudioMixTask();

		virtual SS_Error run();

	protected:
		virtual SS_Error on_done();

		virtual SS_Error on_exception();

	private:

	protected:
		/*volatile */AUDIENCE_AUDIO_MIX_TASK_STATUS _status;

		AUDIENCE_AUDIO_MIX_TASK_INFO _task_info;

		AUDIO_PACKET_PTR _amr_audio_packet;//编码缓冲区
		AUDIO_PACKET_PTR _pcm_audio_packet;//编码缓冲区

		CRTPNATSession* _rtp_send_session;

		RTSPServerLib::CRTSPServer* _rtsp_server;
	};
}

#endif  //_AUDIENCE_AUDIO_MIX_TASK_H_      

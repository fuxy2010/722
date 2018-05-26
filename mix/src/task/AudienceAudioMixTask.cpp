// **********************************************************************
// 作者: 傅佑铭
// 版本: 1.0
// 日期: 2011-01 ~ 2011-11
// 修改历史记录: 
// 日期, 作者, 变更内容
// **********************************************************************
#include "AudienceAudioMixTask.h"
#include "MiscTool.h"
#include "TimeConsuming.h"

using namespace ScheduleServer;

CAudienceAudioMixTask::CAudienceAudioMixTask(AUDIENCE_AUDIO_MIX_TASK_INFO& task_info) :
_status(AudienceAudioMixTask_Begin),
_rtp_send_session(NULL),
_rtsp_server(NULL)
{
	_task_info = task_info;

	//_task_info.raw_audio_frame.delay('A');
	
	if(NULL != _task_info.counter)
		_task_info.counter->increase();

	//std::cout << "CAudienceAudioMixTask " << _task_info.task_id << std::endl;

	if(false == CMemPool::malloc_audio_packet(_amr_audio_packet))
	{
		_status = AudienceAudioMixTask_Done;//销毁在析构函数中进行
		return;
	}

	if(false == CMemPool::malloc_audio_packet(_pcm_audio_packet))
	{
		_status = AudienceAudioMixTask_Done;//销毁在析构函数中进行
		return;
	}

	if(NULL == _task_info.amr_codec || NULL == _task_info.pcm_codec)
		_status = AudienceAudioMixTask_Done;

}

CAudienceAudioMixTask::~CAudienceAudioMixTask()
{
	_task_info.clear();

	CMemPool::free_audio_packet(_amr_audio_packet);
	CMemPool::free_audio_packet(_pcm_audio_packet);

	if(NULL != _task_info.counter)
		_task_info.counter->decrease();
}

SS_Error CAudienceAudioMixTask::run()
{
	CTimeConsuming tc('A', 10.0);

	if(AudienceAudioMixTask_Done == _status)
	{
		on_done();
		return SS_NoErr;
	}

	//校验_rtp_send_session
	if(NULL == _rtp_send_session)
	{
		if(NULL != _owner)
			_rtp_send_session = SINGLETON(CScheduleServer).get_audio_send_session();//&(reinterpret_cast<CTaskThread*>(_owner)->_rtp_send_session);
		else
		{
			on_done();
			return SS_NoErr;
		}
	}

	//写录像
	if(NULL != _task_info.avi_record)
	{
		_task_info.avi_record->write_audio(_task_info.raw_audio_frame.frame->payload, 480);
	}

	if(NULL == _task_info.amr_codec
		|| NULL == _task_info.pcm_codec)
		//为RTSP转发需要无听众也需进行AMR-NB编码 || true == _task_info.audience_vec.empty())
	{
		on_done();
		return SS_NoErr;
	}

	//AMR编码
	_amr_audio_packet.packet->payload_size = sizeof(RTPHeader) + _task_info.amr_codec->encode(_task_info.raw_audio_frame.frame->payload,
																								_amr_audio_packet.packet->payload + sizeof(RTPHeader));

	//如存在警务终端2或3或有录像任务则需进行PCM编码
	if(true == _task_info.has_pcm_ua)
	{
		_pcm_audio_packet.packet->payload_size = sizeof(RTPHeader) + _task_info.pcm_codec->encode(_task_info.raw_audio_frame.frame->payload,
																								_pcm_audio_packet.packet->payload + sizeof(RTPHeader));
	}

	//供Web网页以RTSP协议播放会议实时音视频
	if(NULL == _rtsp_server)
	{
		_rtsp_server = SINGLETON(CScheduleServer).get_rtsp_server();
	}

	if(NULL != _rtsp_server && sizeof(RTPHeader) < _amr_audio_packet.packet->payload_size)
	{
		//供Web网页以RTSP协议播放会议实时音视频
		CRTPNATSession::add_rtp_header(_amr_audio_packet.packet->payload,
									_amr_audio_packet.packet->payload_size,
									AMRNBRTPPacket,
									false,
									0,
									timeGetTime(),
									_task_info.conference_id);

		_rtsp_server->input_stream_data(_task_info.conference_id & 0xffff,//截取会议ID的低16位作为RTSP Session ID
										_amr_audio_packet.packet->payload,// + sizeof(RTPHeader),
										_amr_audio_packet.packet->payload_size,// - sizeof(RTPHeader),
										RTSPServerLib::CRTSPServer::kAudioStream);
	}

	//向听众发送编码后的音频包
	for(auto iter = _task_info.audience_vec.begin(); iter < _task_info.audience_vec.end(); ++iter)
	{
		if(UA_MobilePhone == iter->type || UA_Unknown == iter->type)
		{
			if(sizeof(RTPHeader) < _amr_audio_packet.packet->payload_size)
			{
				CRTPNATSession::add_rtp_header(_amr_audio_packet.packet->payload,
					_amr_audio_packet.packet->payload_size,
					AMRNBRTPPacket,
					false,
					++(*(iter->rtp_sequence)),
					timeGetTime(),
					iter->id);

				if(0x2 & iter->protocol)//if(true == iter->is_by_tcp)//以TCP方式向听众发送音频数据
				{
					_rtsp_server->input_stream_data(iter->id & 0xffff,//截取听众ID的低16位作为RTSP Session ID
						_amr_audio_packet.packet->payload,// + sizeof(RTPHeader),
						_amr_audio_packet.packet->payload_size,// - sizeof(RTPHeader),
						RTSPServerLib::CRTSPServer::kAudioStream);
				}
				//else if(0x1 & iter->protocol)//以UDP方式向听众发送音频数据
				if(0x1 & iter->protocol)//以UDP方式向听众发送音频数据
				{
					_rtp_send_session->send_rtp_packet(iter->addr, _amr_audio_packet.packet->payload, _amr_audio_packet.packet->payload_size);
				}
			}
		}
		else if(UA_FixedPhone == iter->type || UA_Radio == iter->type)
		{
			if(sizeof(RTPHeader) < _pcm_audio_packet.packet->payload_size)
			{
				//非移动终端只需用UDP发送
				//添加RTP包头
				CRTPNATSession::add_rtp_header(_pcm_audio_packet.packet->payload,
					_pcm_audio_packet.packet->payload_size,
					PCMRTPPacket,
					false,
					++(*(iter->rtp_sequence)),
					timeGetTime(),
					iter->id);

				//发送RTP包
				_rtp_send_session->send_rtp_packet(iter->addr, _pcm_audio_packet.packet->payload, _pcm_audio_packet.packet->payload_size);
			}
		}

	}

	on_done();

	return SS_NoErr;

}

SS_Error CAudienceAudioMixTask::on_done()
{
	_task_info.clear();

	_is_done = true;

	return SS_NoErr;
}

SS_Error CAudienceAudioMixTask::on_exception()
{
	return SS_NoErr;
}

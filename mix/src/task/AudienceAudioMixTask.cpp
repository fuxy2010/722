// **********************************************************************
// ����: ������
// �汾: 1.0
// ����: 2011-01 ~ 2011-11
// �޸���ʷ��¼: 
// ����, ����, �������
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
		_status = AudienceAudioMixTask_Done;//���������������н���
		return;
	}

	if(false == CMemPool::malloc_audio_packet(_pcm_audio_packet))
	{
		_status = AudienceAudioMixTask_Done;//���������������н���
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

	//У��_rtp_send_session
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

	//д¼��
	if(NULL != _task_info.avi_record)
	{
		_task_info.avi_record->write_audio(_task_info.raw_audio_frame.frame->payload, 480);
	}

	if(NULL == _task_info.amr_codec
		|| NULL == _task_info.pcm_codec)
		//ΪRTSPת����Ҫ������Ҳ�����AMR-NB���� || true == _task_info.audience_vec.empty())
	{
		on_done();
		return SS_NoErr;
	}

	//AMR����
	_amr_audio_packet.packet->payload_size = sizeof(RTPHeader) + _task_info.amr_codec->encode(_task_info.raw_audio_frame.frame->payload,
																								_amr_audio_packet.packet->payload + sizeof(RTPHeader));

	//����ھ����ն�2��3����¼�������������PCM����
	if(true == _task_info.has_pcm_ua)
	{
		_pcm_audio_packet.packet->payload_size = sizeof(RTPHeader) + _task_info.pcm_codec->encode(_task_info.raw_audio_frame.frame->payload,
																								_pcm_audio_packet.packet->payload + sizeof(RTPHeader));
	}

	//��Web��ҳ��RTSPЭ�鲥�Ż���ʵʱ����Ƶ
	if(NULL == _rtsp_server)
	{
		_rtsp_server = SINGLETON(CScheduleServer).get_rtsp_server();
	}

	if(NULL != _rtsp_server && sizeof(RTPHeader) < _amr_audio_packet.packet->payload_size)
	{
		//��Web��ҳ��RTSPЭ�鲥�Ż���ʵʱ����Ƶ
		CRTPNATSession::add_rtp_header(_amr_audio_packet.packet->payload,
									_amr_audio_packet.packet->payload_size,
									AMRNBRTPPacket,
									false,
									0,
									timeGetTime(),
									_task_info.conference_id);

		_rtsp_server->input_stream_data(_task_info.conference_id & 0xffff,//��ȡ����ID�ĵ�16λ��ΪRTSP Session ID
										_amr_audio_packet.packet->payload,// + sizeof(RTPHeader),
										_amr_audio_packet.packet->payload_size,// - sizeof(RTPHeader),
										RTSPServerLib::CRTSPServer::kAudioStream);
	}

	//�����ڷ��ͱ�������Ƶ��
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

				if(0x2 & iter->protocol)//if(true == iter->is_by_tcp)//��TCP��ʽ�����ڷ�����Ƶ����
				{
					_rtsp_server->input_stream_data(iter->id & 0xffff,//��ȡ����ID�ĵ�16λ��ΪRTSP Session ID
						_amr_audio_packet.packet->payload,// + sizeof(RTPHeader),
						_amr_audio_packet.packet->payload_size,// - sizeof(RTPHeader),
						RTSPServerLib::CRTSPServer::kAudioStream);
				}
				//else if(0x1 & iter->protocol)//��UDP��ʽ�����ڷ�����Ƶ����
				if(0x1 & iter->protocol)//��UDP��ʽ�����ڷ�����Ƶ����
				{
					_rtp_send_session->send_rtp_packet(iter->addr, _amr_audio_packet.packet->payload, _amr_audio_packet.packet->payload_size);
				}
			}
		}
		else if(UA_FixedPhone == iter->type || UA_Radio == iter->type)
		{
			if(sizeof(RTPHeader) < _pcm_audio_packet.packet->payload_size)
			{
				//���ƶ��ն�ֻ����UDP����
				//���RTP��ͷ
				CRTPNATSession::add_rtp_header(_pcm_audio_packet.packet->payload,
					_pcm_audio_packet.packet->payload_size,
					PCMRTPPacket,
					false,
					++(*(iter->rtp_sequence)),
					timeGetTime(),
					iter->id);

				//����RTP��
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

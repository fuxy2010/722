// **********************************************************************
// ×÷Õß: ¸µÓÓÃú
// °æ±¾: 1.0
// ÈÕÆÚ: 2011-01 ~ 2011-11
// ÐÞ¸ÄÀúÊ·¼ÇÂ¼: 
// ÈÕÆÚ, ×÷Õß, ±ä¸üÄÚÈÝ
// **********************************************************************
#ifndef _TEST_TASK_H_
#define _TEST_TASK_H_

#if defined(_MSC_VER) && (_MSC_VER >= 1200)
#pragma once
#endif // defined(_MSC_VER) && (_MSC_VER >= 1200)

#include "GeneralDef.h"
#include "Task.h"
#include "time.h"
#include "ScheduleServer.h"
#include "TaskCounter.h"

namespace ScheduleServer
{
	typedef enum
	{
		TestTask_Begin = 0,//ÈÎÎñ¿ªÊ¼
		TestTask_Run,//·¢ËÍ
		TestTask_Done//ÈÎÎñÍê³É
	}
	TEST_TASK_STATUS;

	typedef struct tagTEST_TASK_INFO
	{
		unsigned long				task_id;//ÈÎÎñID
		unsigned long				conference_id;//»áÒéID
		//VIDEO_PACKET_PTR			video_packet_ptr;//´ÓUAÈ¡³öµÄÊÓÆµRTP°ü,ÎÞÐèÊÂÏÈ·ÖÅä£¬µ«ÓÃºóÐèÏú»Ù
		//std::vector<std::pair<unsigned long, struct sockaddr_in>>/*vector<struct sockaddr_in>*/	addr_vec;//½ÓÊÕUAµÄIDÊý×é
		CTaskCounter*				counter;//»áÒéÈÎÎñ¼ÆÊýÆ÷

		tagTEST_TASK_INFO() : task_id(0), conference_id(0), counter(NULL)
		{
			//addr_vec.clear();
			//video_packet_ptr.packet = NULL;
		}

		~tagTEST_TASK_INFO()
		{
			//¾ø¶Ô²»¿ÉÔÚ´ËÊÍ·Åvideo_packet_ptr·ÖÅäµÄÄÚ´æ!!!
		}

		void clear()
		{
			//CMemPool::free_video_packet(video_packet_ptr);
			//addr_vec.clear();
		}
	}
	TEST_TASK_INFO;

	class CTestTask : public CTask
	{
	public:
		CTestTask(TEST_TASK_INFO& task_info);
		virtual ~CTestTask();

		virtual SS_Error run();

	protected:
		virtual SS_Error on_done();

		virtual SS_Error on_exception();

	private:

	protected:
		TEST_TASK_STATUS _status;

		TEST_TASK_INFO _task_info;

		//CRTPNATSession* _rtp_send_session;
        int _count;

	};
}

#endif  //_TEST_TASK_H_      

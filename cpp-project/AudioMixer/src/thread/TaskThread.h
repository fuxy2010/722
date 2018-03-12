// **********************************************************************
// ×÷Õß: ¸µÓÓÃú
// °æ±¾: 1.0
// ÈÕÆÚ: 2011-01 ~ 2011-11
// ÐÞ¸ÄÀúÊ·¼ÇÂ¼: 
// ÈÕÆÚ, ×÷Õß, ±ä¸üÄÚÈÝ
// **********************************************************************
#ifndef _TASK_THREAD_H_      
#define _TASK_THREAD_H_

#if defined(_MSC_VER) && (_MSC_VER >= 1200)
#pragma once
#endif // defined(_MSC_VER) && (_MSC_VER >= 1200)

#include "GeneralDef.h"
#include "BaseThread.h"
#include "Task.h"

namespace ScheduleServer
{
	//ÈÎÎñ´¦ÀíÏß³Ì
	class CTaskThread : public CBaseThread
	{
	public:
		CTaskThread() : _parallel_task_num(10) {};//×î¶à²¢·¢Ö´ÐÐ10ÏîÈÎÎñ
		virtual ~CTaskThread() {};
		
		SS_Error add_task(CTask* task);

		SS_Error remove_all_tasks();

		unsigned long get_task_num();

		static void sleep_ms(unsigned long interval);

		//·µ»ØÏß³ÌÀàÐÍ
		virtual THREAD_TYPE get_type()
		{
			return TASK_THREAD;
		}

	protected:
		// Ïß³ÌÈë¿Úº¯Êý
		virtual void run();

		virtual void on_start();

		virtual void on_close();

	protected:
		std::list<CTask*> _task_queue;

		const unsigned long _parallel_task_num;//²¢·¢Ö´ÐÐÈÎÎñÊýÉÏÏÞ
        
    public:
        void query_conference(unsigned long conference_id);
        void play_conference(unsigned long conference_id);

	public:
		//CRTPSendSession _rtp_send_session;//RTP·¢ËÍsession
	};

#if 1
	class CTaskThreadPool
	{
	public:
		static SS_Error add_threads(unsigned long task_thread_num, void* parent);

		static void remove_threads();

		static CTaskThread* select_thread(unsigned long index = 0);

		//»ñÈ¡ÈÎÎñÏß³ÌÊý
		static unsigned long get_task_thread_num() { return _task_thread_num; };

		//Ôö¼Ó³£×¤ÈÎÎñ¼ÆÊý
		static void increase_resident_task_count(unsigned long num) { _resident_task_cout += num; };

		//¼õÉÙ³£×¤ÈÎÎñ¼ÆÊý
		static void decrease_resident_task_count(unsigned long num) { _resident_task_cout = (num > _resident_task_cout) ? 0 : (_resident_task_cout - num); };

		//»ñÈ¡³£×¤ÈÎÎñ¼ÆÊý
		static unsigned long get_resident_task_count() { return _resident_task_cout; };

	private:

		static CTaskThread** _task_thread_array;//ÈÎÎñÏß³ÌÖ¸Õë¼¯ºÏ

		static unsigned long _task_thread_num;//ÈÎÎñÏß³Ì×ÜÊý

		static bool _is_firstly_select;//ÊÇ·ñÊ×´Îµ÷ÓÃselect_thread

		//static HANDLE _create_task_thread_handle;//ÈÎÎñÏß³ÌÊÇ·ñ´´½¨±êÖ¾¾ä±ú

		static unsigned long _resident_task_cout;//³£×¤ÈÎÎñ¼ÆÊý
	};
#endif
}

#endif  // _TASK_THREAD_H_   

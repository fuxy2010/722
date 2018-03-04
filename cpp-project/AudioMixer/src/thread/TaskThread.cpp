// **********************************************************************
// ×÷Õß: ¸µÓÓÃú
// °æ±¾: 1.0
// ÈÕÆÚ: 2011-01 ~ 2011-11
// ÐÞ¸ÄÀúÊ·¼ÇÂ¼: 
// ÈÕÆÚ, ×÷Õß, ±ä¸üÄÚÈÝ
// **********************************************************************
#include "GeneralDef.h"
#include "TaskThread.h"

using namespace ScheduleServer;

void CTaskThread::sleep_ms(unsigned long interval)
{
/*#if 1
	unsigned begin, end;

	begin = timeGetTime();

	do 
	{
		end = timeGetTime();
	}
	while (interval > end - begin);
#else
	LARGE_INTEGER litmp;
	LONGLONG quad_part1, quad_part2;
	double dif_minus, freq, dif_sec;

	QueryPerformanceFrequency(&litmp);
	freq = (double)litmp.QuadPart;// »ñµÃ¼ÆÊýÆ÷µÄÊ±ÖÓÆµÂÊ

	QueryPerformanceCounter(&litmp);
	quad_part1 = litmp.QuadPart;// »ñµÃ³õÊ¼Öµ

	do
	{
		QueryPerformanceCounter(&litmp);
		quad_part2 = litmp.QuadPart;//»ñµÃÖÐÖ¹Öµ

		dif_minus = (double)(quad_part2 - quad_part1);
		dif_sec = dif_minus / freq;// »ñµÃ¶ÔÓ¦µÄÊ±¼äÖµ£¬µ¥Î»ÎªÃë
	}
	while((interval / 1000) > dif_sec);
#endif*/
}

SS_Error CTaskThread::add_task(CTask* task)
{
	if(NULL  == task)// || true == _joined)
		return SS_InvalidTask;

	CSSLocker lock(&_mutex);

	task->set_owner(this);

	_task_queue.push_back(task);

	return SS_NoErr;
}

SS_Error CTaskThread::remove_all_tasks()
{
	while(_task_queue.size())
	{
		CTask* task = NULL;
		{
			CSSLocker lock(&_mutex);

			task  = *(_task_queue.begin());
			_task_queue.pop_front();
		}

		delete task;
		task = NULL;		
	}

	_task_queue.clear();

	return SS_NoErr;
}

unsigned long CTaskThread::get_task_num()
{
	CSSLocker lock(&_mutex);
	
	return static_cast<unsigned long>(_task_queue.size());
}

void CTaskThread::run()
{
    //std::cout << " " << _task_queue.size();
	//statistic_enter('T');

	//unsigned long start = timeGetTime();//±¾´ÎÏß³ÌÑ­»·Ö´ÐÐÆðÊ¼Ê±¼ä
	bool has_run = false;//Ïß³Ì±¾´ÎÑ­»·ÊÇ·ñÖ´ÐÐ¹ýÈÎÎñ

	//±¾´Î²¢·¢Ö´ÐÐÈÎÎñÊý
	unsigned long parallel_task_num = 100;//_parallel_task_num + (CTaskThreadPool::get_resident_task_count() % ((!CTaskThreadPool::get_task_thread_num()) ? 1 : CTaskThreadPool::get_task_thread_num()));

	unsigned long i = 0;
	while(i < parallel_task_num)//ÈÎÎñÏß³ÌÃ¿´ÎÖ´ÐÐ×î¶àÔËÐÐparallel_task_num¸öÈÎÎñ
	{
		if(true == _joined)
			break;

		CTask* task = NULL;

		//ÕÒµ½¶ÓÁÐÖÐµÚi¸öÓÐÐ§ÈÎÎñ
		{
			//±ÜÃâÔÚ¼ÓËøµÄ·¶Î§ÄÚÔËÐÐrun
			CSSLocker lock(&_mutex);

			//ÈÎÎñ¶ÓÁÐÎª¿ÕÊ±Ïß³Ì±¾´ÎÖ´ÐÐ½áÊø
			if(true == _task_queue.empty())
				break;

			//ÒÑ±éÀúÒ»´ÎÈÎÎñÊ±Ïß³Ì±¾´ÎÖ´ÐÐ½áÊø
			if(i >= _task_queue.size())
				break;

			//²éÕÒ_task_queueÖÐµÚi+1¸öÈÎÎñ
			std::list<CTask*>::iterator iter = _task_queue.begin();

#if 0
			unsigned long j = 0;
			while(i > j++)
			{
				++iter;
			}
#else
			advance(iter, i);
#endif

			++i;//¼Ù¶¨iterÖ¸ÏòµÄtask¿ÉÓÃ

			if(NULL != *iter)//iterÖ¸Ïò·Ç¿ÕÈÎÎñÖ¸Õë
			{
				task = *iter;

				if(true == task->is_done())
				{
					_task_queue.erase(iter);
					--i;//ÍÆ·­Ö®Ç°µÄ¼Ù¶¨
				}
			}
			else//iterÖ¸Ïò¿ÕÈÎÎñÖ¸Õë
			{
				_task_queue.erase(iter);
				--i;//ÍÆ·­Ö®Ç°µÄ¼Ù¶¨
			}
		}

		//Ö´ÐÐ¶ÓÁÐÖÐµÚi¸öÈÎÎñ
		if(NULL != task)//×¢Òâtask¶¨ÒåµÄÎ»ÖÃ¼°Æä³õÖµ
		{
			if(true == task->is_done())//Ò»µ©taskµÄis_done()ÎªtrueÔò²»ÄÜÔÙ´Îrun,±ÜÃâÖØ¸´µ÷ÓÃon_done()
			{
				delete task;
				task = NULL;
			}
			else
			{
				task->run();
				has_run = true;
			}
		}
		
	}

	//statistic_leave();

	//Èç¹ûÏß³Ì±¾´ÎÖ´ÐÐÊ±¼äÔÚ30msÒÔÄÚÔòÐÝÃß30ms£¬±ÜÃâCPUÕ¼ÓÃÂÊ¹ý¸ß
	//×¢Òâ²»ÄÜÔÚ¼ÓËøÇøÓòÖ´ÐÐSleep·ñÔòÓ°ÏìÐ§ÂÊ
	//if(timeGetTime() == start) Sleep(1);
}

#include "ConferenceTask.h"
void CTaskThread::query_conference(unsigned long conference_id)
{
    CSSLocker lock(&_mutex);
    
    for(std::list<CTask*>::iterator iter = _task_queue.begin(); iter != _task_queue.end(); iter++)
    {
        CConferenceTask* task = dynamic_cast<CConferenceTask*>(*iter);
        
        if(NULL == task) continue;
        
        if(conference_id == task->get_conference_id())
        {
            task->query();
            return;
        }
    }
    
}

void CTaskThread::on_start()
{
	_task_queue.clear();
}

void CTaskThread::on_close()
{
	//cout << "\nremove all tasks." << endl;
	remove_all_tasks();
}

#if 1
CTaskThread** CTaskThreadPool::_task_thread_array = NULL;
unsigned long CTaskThreadPool::_task_thread_num = 0;
//HANDLE CTaskThreadPool::_create_task_thread_handle = ::CreateEvent(NULL, TRUE, FALSE, NULL);
bool CTaskThreadPool::_is_firstly_select = true;
unsigned long CTaskThreadPool::_resident_task_cout = 0;

SS_Error CTaskThreadPool::add_threads(unsigned long task_thread_num, void* parent)
{
	if(NULL != _task_thread_array)
		return SS_StartTaskThreadFail;

	_task_thread_array = new CTaskThread*[task_thread_num];

	if(NULL == _task_thread_array)
		return SS_StartTaskThreadFail;

	for(unsigned short x = 0; x < task_thread_num; ++x)
	{
		_task_thread_array[x] = new CTaskThread();
		//if(SS_StartTaskThreadFail == _task_thread_array[x]->start(parent))
        if(SS_StartTaskThreadFail == _task_thread_array[x]->Start())
			return SS_StartTaskThreadFail;
	}

	_task_thread_num = task_thread_num;

	//::SetEvent(_create_task_thread_handle);//Í¨Öªselect_thread¿ÉÒÔÔËÐÐ

	return SS_NoErr;
}

void CTaskThreadPool::remove_threads()
{
	for(unsigned short x = 0; x < _task_thread_num; ++x)
	{
		//_task_thread_array[x]->shutdown();
        _task_thread_array[x]->Kill();
	}

	for(unsigned short y = 0; y < _task_thread_num; ++y)
	{
		delete _task_thread_array[y];
		_task_thread_array[y] = NULL;
	}

	delete[] _task_thread_array;
	_task_thread_array = NULL;

	_task_thread_num = 0;
}

void CTaskThreadPool::query_conference(unsigned long conference_id)
{
	for(unsigned short x = 0; x < _task_thread_num; ++x)
	{
		_task_thread_array[x]->query_conference(conference_id);
	}
}

CTaskThread* CTaskThreadPool::select_thread(unsigned long index)
{
	if(true == _is_firstly_select)//Ê×´Îµ÷ÓÃ²Å¼ì²é
	{
		//::WaitForSingleObject(_create_task_thread_handle, INFINITE);//µÈ´ýÈÎÎñÏß³Ì´´½¨Íê±Ï
		//::CloseHandle(_create_task_thread_handle);

		_is_firstly_select = false;
	}

	if(!_task_thread_num)
		return NULL;

	return _task_thread_array[index % _task_thread_num];

}
#endif

// **********************************************************************
// ×÷Õß: ¸µÓÓÃú
// °æ±¾: 1.0
// ÈÕÆÚ: 2011-01 ~ 2011-11
// ÐÞ¸ÄÀúÊ·¼ÇÂ¼: 
// ÈÕÆÚ, ×÷Õß, ±ä¸üÄÚÈÝ
// **********************************************************************
#include "TestTask.h"
#include "MiscTool.h"
//#include "TimeConsuming.h"

using namespace ScheduleServer;

CTestTask::CTestTask(TEST_TASK_INFO& task_info) :
_status(TestTask_Begin)
{
	_task_info = task_info;

	if(NULL != _task_info.counter)
		_task_info.counter->increase();
        
    _count = 1000;
}

CTestTask::~CTestTask()
{
	_task_info.clear();

	if(NULL != _task_info.counter)
		_task_info.counter->decrease();
}

SS_Error CTestTask::run()
{
	//CTimeConsuming tc('W', 5.0);

	switch(_status)
	{
	case TestTask_Begin:
		_status = TestTask_Run;
		break;

	case TestTask_Run:
        if(!_count)
            _status = TestTask_Done;
        else
        {
            std::cout << "Task run: " << _count-- << " @ " << clock() << std::endl;
        }
		break;

	case TestTask_Done:
		on_done();
		break;

	}

	return SS_NoErr;
}

SS_Error CTestTask::on_done()
{
	_task_info.clear();

	_is_done = true;

	return SS_NoErr;
}

SS_Error CTestTask::on_exception()
{
	return SS_NoErr;
}

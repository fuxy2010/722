#ifndef _LOCKER_H_
#define _LOCKER_H_

#ifdef _WIN32 // Windows version
#include <windows.h>
#else // Linux version
#include <pthread.h>
#endif

#include "jmutex.h"

class CSSMutex
{
public:
    CSSMutex()
    {
        if(false == _mutex.IsInitialized()) _mutex.Init();
    };

    ~CSSMutex()
    {
    };

    void lock()
    {
        _mutex.Lock();
    };

    void unlock()
    {
        _mutex.Unlock();
    };

private:
    jthread::JMutex _mutex;
};

class CSSLocker
{
public:
    CSSLocker(CSSMutex * mutex_ptr)
    {
        _mutex_ptr = mutex_ptr;
        if (_mutex_ptr)
        {
            _mutex_ptr->lock();
        }
    };

    ~CSSLocker()
    {
        if (_mutex_ptr)
        {
            _mutex_ptr->unlock();
        }
    };

private:
    CSSLocker(const CSSLocker&);
    CSSLocker& operator=(const CSSLocker&);

private:
    CSSMutex * _mutex_ptr;
};

#endif // _LOCKER_H_
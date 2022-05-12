#include "threadpool.h"

namespace simple_tp
{
    // class Thread
    Thread::Thread(threadFunc tFunc)
    {
        __tFunc = tFunc;
    }

    Thread::~Thread()
    {
    }

    void Thread::start()
    {
        std::thread t(__tFunc);
        t.detach();
    }

    // class Task

    // class ThreadPool
    const size_t TASK_MAX_THRESHHOLD = 1024;

    ThreadPool::ThreadPool() : __poolMode(PoolMode::MODE_FIXED),
                               __initThreadSize(0),
                               __taskSize(0),
                               __taskQueMaxThreshHold(TASK_MAX_THRESHHOLD) {}

    ThreadPool::~ThreadPool()
    {
    }

    void ThreadPool::setMode(PoolMode mode) { __poolMode = mode; }
    void ThreadPool::setTaskQueMaxThreshHold(size_t threshHold) { __taskQueMaxThreshHold = threshHold; }

    void ThreadPool::submitTask(std::shared_ptr<Task> task_sp)
    {
    }

    void ThreadPool::start(size_t initThreadSize)
    {
        __initThreadSize = initThreadSize;
        for (size_t i = 0; i < initThreadSize; i++)
        {
            __threadVec.emplace_back(new Thread(std::bind(&ThreadPool::threadFunc, this)));
        }
        for (size_t i = 0; i < initThreadSize; i++)
        {
            __threadVec[i]->start();
        }
    }

    void ThreadPool::threadFunc()
    {
        std::cout << "begin threadFunc tid: " << std::this_thread::get_id() << std::endl;
        std::cout << "end threadFunc tid: " << std::this_thread::get_id() << std::endl;
    }

} // namespace simple_tp
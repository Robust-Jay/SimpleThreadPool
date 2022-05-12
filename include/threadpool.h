#ifndef __THREADPOOL__H
#define __THREADPOOL__H

#include <vector>
#include <queue>
#include <memory>
#include <atomic>
#include <mutex>
#include <condition_variable>
#include <functional>
#include <thread>
#include <iostream>

namespace simple_tp
{
    enum class PoolMode
    {
        MODE_FIXED,
        MODE_CACHED,
    }; // enum class PoolMode

    class Task
    {
    public:
        virtual void run() = 0;

    private:
    }; // class Task

    class Thread
    {
    public:
        using threadFunc = std::function<void()>;

        Thread(threadFunc tFunc);
        ~Thread();

        void start(); // 启动线程
    private:
        threadFunc __tFunc;

    }; // class Thread

    class ThreadPool
    {
    public:
        ThreadPool();
        ~ThreadPool();

        void setMode(PoolMode mode);                     // 设置线程池工作模式
        void setTaskQueMaxThreshHold(size_t threshHold); // 设置任务数量的上限
        void submitTask(std::shared_ptr<Task> task_sp);  // 提交任务
        void start(size_t initThreadSize = 4);           // 开启线程池

        ThreadPool(const ThreadPool &) = delete;
        ThreadPool &operator=(ThreadPool &) = delete;

    private:
        void threadFunc(); // 线程函数

    private:
        PoolMode __poolMode;                         // 线程池工作模式
        std::vector<Thread *> __threadVec;           // 线程列表
        size_t __initThreadSize;                     // 初始的线程数量
        std::queue<std::shared_ptr<Task>> __taskQue; // 任务队列
        std::atomic_uint __taskSize;                 // 任务数量
        size_t __taskQueMaxThreshHold;               // 任务数量的上限
        std::mutex __taskQueMtx;                     // 任务队列的互斥锁，保证任务队列的线程安全
        std::condition_variable __taskQueNotFull;    // 表示任务队列不满
        std::condition_variable __taskQueNotEmpty;   // 表示任务队列不空

    }; // class ThreadPool

} // namespace simple_tp

#endif
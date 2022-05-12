#include <iostream>
#include "threadpool.h"
#include <chrono>
#include <thread>


using namespace simple_tp;

int main()
{
    ThreadPool pool;
    pool.start(6);

    std::this_thread::sleep_for(std::chrono::seconds(5));

    return 0;
}
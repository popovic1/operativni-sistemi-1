#ifndef PROJECT_BASE_V1_1_SCHEDULER_HPP
#define PROJECT_BASE_V1_1_SCHEDULER_HPP


#include "list.hpp"
#include "../lib/hw.h"


class _thread;

class Scheduler {
private:
    static List<_thread> readyQueue;
public:
    static _thread* get();

    static void put(_thread* handle);

    static uint64 remove();
};


#endif //PROJECT_BASE_V1_1_SCHEDULER_HPP

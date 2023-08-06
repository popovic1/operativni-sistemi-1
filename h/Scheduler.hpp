#ifndef PROJECT_BASE_V1_1_SCHEDULER_HPP
#define PROJECT_BASE_V1_1_SCHEDULER_HPP


#include "list.hpp"


class PCB;

class Scheduler {
private:
    static List<PCB> readyQueue;
public:
    static PCB* get();

    static void put(PCB* handle);
};


#endif //PROJECT_BASE_V1_1_SCHEDULER_HPP

//
// Created by os on 8/17/23.
//

#ifndef PROJECT_BASE_V1_1_SEMAPHORE_HPP
#define PROJECT_BASE_V1_1_SEMAPHORE_HPP

#include "PCB.hpp"
class Semaphore {
private:
    int value;
    List<PCB> waitQueue;

public:
    Semaphore(int initial_value) : value(initial_value) {}

    Semaphore() : value(0) {}

    ~Semaphore() {
        while (!waitQueue.peekFirst()) {
            PCB *threadToWake = waitQueue.removeFirst();
            threadToWake->setState(PCB::READY);
            Scheduler::put(threadToWake);
        }
    }

    void wait();

    void signal();


};



#endif //PROJECT_BASE_V1_1_SEMAPHORE_HPP

//
// Created by os on 8/17/23.
//

#include "../h/Sem.hpp"

int Sem::wait() {
    if(valid != true){
        printStr("ERROR------------------------------------------------------------");
        return -1;

    }
    if (--value < 0) {
        // Block the current thread
        waitQueue.addLast(PCB::running);
        PCB::running->setState(PCB::SUSPENDED);
        thread_dispatch();
    }
    return 0;
}

int Sem::signal() {
    if(!valid) {
        printStr("ERROR------------------------------------------------------------");
        return -1;
    }
    if (++value <= 0) {
        // Wake up a waiting thread
        PCB *threadToWake = waitQueue.removeFirst();
        threadToWake->setState(PCB::READY);
        Scheduler::put(threadToWake);
    }
    return 0;
}

Sem::~Sem() {
    if(valid){
        close();
    }
}

int Sem::signalAll() {
    if(!valid) return -1;
    while (waitQueue.peekFirst() != 0) {
        PCB *threadToWake = waitQueue.removeFirst();
        threadToWake->setState(PCB::READY);
        Scheduler::put(threadToWake);
    }
    return 0;
}

int Sem::close() {
    int returnVal = signalAll();
    valid = false;
    return returnVal;
}

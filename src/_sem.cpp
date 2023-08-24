//
// Created by os on 8/17/23.
//

#include "../h/_sem.hpp"

int _sem::wait() {
    if(valid != true){
        printStr("ERROR------------------------------------------------------------");
        return -1;

    }
    if (--value < 0) {
        // Block the current thread
        _thread::running->setState(_thread::SUSPENDED);
        waitQueue.addLast(_thread::running);

        thread_dispatch();
    }
    return 0;
}

int _sem::signal() {
    if(!valid) {
        printStr("ERROR------------------------------------------------------------");
        return -1;
    }
    if (++value <= 0) {
        // Wake up a waiting thread
        _thread *threadToWake = waitQueue.removeFirst();
        threadToWake->setState(_thread::READY);
        Scheduler::put(threadToWake);
    }
    return 0;
}

_sem::~_sem() {
    if(valid){
        close();
    }
}

int _sem::signalAll() {
    if(!valid) return -1;
    while (waitQueue.peekFirst() != 0) {
        _thread *threadToWake = waitQueue.removeFirst();
        threadToWake->setState(_thread::READY);
        Scheduler::put(threadToWake);
    }
    return 0;
}

int _sem::close() {
    int returnVal = signalAll();
    valid = false;
    return returnVal;
}

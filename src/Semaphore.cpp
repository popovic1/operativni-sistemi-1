//
// Created by os on 8/17/23.
//

#include "../h/Semaphore.hpp"

void Semaphore::wait() {
    value--;
    if (value < 0) {
        // Block the current thread
        PCB* currentThread = PCB::running;
        waitQueue.addLast(currentThread);
        currentThread->setState(PCB::SUSPENDED);
        PCB::dispatch();
    }
}

void Semaphore::signal() {
    value++;
    if (value <= 0) {
        // Wake up a waiting thread
        PCB *threadToWake = waitQueue.removeFirst();
        threadToWake->setState(PCB::READY);
        Scheduler::put(threadToWake);
    }
}
//
// Created by os on 8/17/23.
//

#include "../h/Sem.hpp"

void Sem::wait() {
    value--;
    if (value < 0) {
        // Block the current thread
        PCB* currentThread = PCB::running;
        waitQueue.addLast(currentThread);
        currentThread->setState(PCB::SUSPENDED);
        PCB::dispatch();
    }
}

void Sem::signal() {
    value++;
    if (value <= 0) {
        // Wake up a waiting thread
        PCB *threadToWake = waitQueue.removeFirst();
        threadToWake->setState(PCB::READY);
        Scheduler::put(threadToWake);
    }
}

Sem::~Sem() {
    signalAll();
}

void Sem::signalAll() {

    while (waitQueue.peekFirst() != 0) {
        PCB *threadToWake = waitQueue.removeFirst();
        threadToWake->setState(PCB::READY);
        Scheduler::put(threadToWake);
    }
}

//
// Created by os on 7/28/23.
//

#include "../h/Scheduler.hpp"

List<PCB> Scheduler::readyQueue;

PCB *Scheduler::get() {
    return Scheduler::readyQueue.removeFirst();
}

void Scheduler::put(PCB *handle) {
    Scheduler::readyQueue.addLast(handle);
}
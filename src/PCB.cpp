//
// Created by os on 7/28/23.
//

#include "../h/PCB.hpp"


PCB* PCB::running;




void PCB::dispatch() {
    Riscv::pushRegisters();

    PCB *old = running;
    if (!old->isFinished()) {
        old->state = READY;
        Scheduler::put(old);
    }
    running = Scheduler::get();
    running->state=RUNNING;

    PCB::contextSwitch(&old->context, &running->context);

    Riscv::popRegisters();
}

int PCB::exit() {
    if(running->state==RUNNING){
        running->state=FINISHED;
        thread_dispatch();
        return 0;
    }
    return -1;
}

void PCB::wrapper() {
    Riscv::popSppSpie();
    running->body(running->args);
    thread_exit();
}


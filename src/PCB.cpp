//
// Created by os on 7/28/23.
//

#include "../h/PCB.hpp"
#include "../h/Sem.hpp"

PCB* PCB::running;


PCB::PCB(PCB::Body body, void *args, uint64 *stack) {
    this->body = body;

    this->stack = stack;
    context = {(uint64) &wrapper,
               stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
    };
    this->args = args;
    state = READY;

    //semaphore = new Sem();
}

PCB::~PCB() {
    if(body)delete[] stack;
    //delete semaphore;
}


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

void PCB::join() {
    //semaphore->wait();
}

int PCB::exit() {
    if(running->state==RUNNING){
        //delete PCB::running->semaphore;
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


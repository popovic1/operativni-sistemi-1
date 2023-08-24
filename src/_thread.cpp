//
// Created by os on 7/28/23.
//

#include "../h/_thread.hpp"
#include "../h/_sem.hpp"

_thread* _thread::running;


_thread::_thread(_thread::Body body, void *args, uint64 *stack) {
    this->body = body;

    this->stack = stack;
    context = {(uint64) &wrapper,
               stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
    };
    this->args = args;
    state = READY;

    //semaphore = new _sem();
}

_thread::~_thread() {
    if(body)delete[] stack;
    //delete semaphore;
}


void _thread::dispatch() {
    Riscv::pushRegisters();

    _thread *old = running;
    if (!old->isFinished() && !(old->state == _thread::SUSPENDED)) {
        old->state = READY;
        Scheduler::put(old);
    }
    running = Scheduler::get();
    running->state=RUNNING;

    _thread::contextSwitch(&old->context, &running->context);

    Riscv::popRegisters();
}

void _thread::join() {
    //semaphore->wait();
}

int _thread::exit() {
    if(running->state==RUNNING){
        //delete _thread::running->semaphore;
        running->state=FINISHED;
        thread_dispatch();
        return 0;
    }
    return -1;
}

void _thread::wrapper() {
    Riscv::popSppSpie();
    running->body(running->args);
    running->state=FINISHED;
    thread_dispatch();
}


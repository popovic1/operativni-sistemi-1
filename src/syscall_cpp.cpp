//
// Created by os on 2/2/23.
//

#include "../h/syscall_cpp.hpp"

void *operator new(size_t size) {
    return mem_alloc(size);
}

void *operator new[](size_t size) {
    return mem_alloc(size);
}

void operator delete(void *ptr) { mem_free(ptr); }

void operator delete[](void *ptr) { mem_free(ptr); }

void switchToUserMode() { toUserMode(); }

Thread::Thread(void (*body)(void *), void *arg) {
    thread_create(&myHandle, body, arg);
    Scheduler::remove();
}

Thread::Thread() : Thread(threadWrapper, this) {}

void Thread::threadWrapper(void *t) {
    ((Thread *) t)->run();
}

int Thread::start() {
    Scheduler::put((_thread *) myHandle);

    return 0;
}

void Thread::join() {
    thread_join(myHandle);
}

void Thread::dispatch() {
    thread_dispatch();
}

Thread::~Thread() {

    thread_exit();
    delete (_thread *) myHandle;


}

Semaphore::Semaphore(unsigned int init) {
    sem_open(&myHandle, init);
}

Semaphore::~Semaphore() {
    sem_close(myHandle);
    delete (_sem *) myHandle;
}

int Semaphore::signal() {
    return sem_signal(myHandle);
}

int Semaphore::wait() {
    return sem_wait(myHandle);
}




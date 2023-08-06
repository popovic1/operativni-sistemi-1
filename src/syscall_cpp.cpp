//
// Created by os on 2/2/23.
//

#include "../h/syscall_cpp.hpp"

void* operator new(size_t size) {
    return (void*)mem_alloc(size);
}

void* operator new[](size_t size) {
    return (void*)mem_alloc(size);
}

void operator delete(void *ptr) { mem_free(ptr); }

void operator delete[](void *ptr) { mem_free(ptr); }

Thread::Thread(void (*body)(void*), void* arg) {
    thread_create(&myHandle, body, arg);
}

Thread::Thread() {
    new Thread(nullptr, nullptr);
}

int Thread::start() {
    Scheduler::put((PCB*)myHandle);

    return 0;
}

void Thread::join() {
    thread_join(myHandle);
}

void Thread::dispatch() {
    thread_dispatch();
}

Thread::~Thread() {
    delete (PCB*)myHandle;
}

//Semaphore::Semaphore(unsigned int init)  {
//    sem_open(&myHandle, init);
//}
//
//int Semaphore::signal() {
//    return sem_signal(myHandle);
//}
//
//int Semaphore::wait() {
//    return sem_wait(myHandle);
//}
//
//Semaphore::~Semaphore() {
//    sem_close(myHandle);
//}


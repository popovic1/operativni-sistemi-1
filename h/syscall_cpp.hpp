#ifndef PROJECT_BASE_V1_1_SYSCALL_CPP_HPP
#define PROJECT_BASE_V1_1_SYSCALL_CPP_HPP

#include "syscall_c.hpp"

void *operator new(size_t size);

void *operator new[](size_t size);

void operator delete(void *ptr);

void operator delete[](void *ptr);

void switchToUserMode();

class Thread {
public:
    Thread(void (*body)(void *), void *arg);

    virtual ~Thread();

    int start();

    void join();

    static void dispatch();


protected:
    Thread();

    virtual void run() {}

private:
    thread_t myHandle;

    void (*body)(void *);

    void *arg;

    static void threadWrapper(void *t);
};

class Semaphore {
public:
    Semaphore(unsigned init = 1);

    virtual ~Semaphore();

    int wait();

    int signal();

private:
    sem_t myHandle;
};

#endif //PROJECT_BASE_V1_1_SYSCALL_CPP_HPP

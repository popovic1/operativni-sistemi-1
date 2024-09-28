#ifndef PROJECT_BASE_V1_1__THREAD_HPP
#define PROJECT_BASE_V1_1__THREAD_HPP


#include "Scheduler.hpp"
#include "riscv.hpp"
#include "../h/syscall_c.hpp"

class _sem;

class _thread {
public:
    struct Context {
        uint64 ra;
        uint64 sp;
    };

    enum State {
        READY,
        RUNNING,
        SUSPENDED,
        FINISHED
    };

    ~_thread();

    bool isFinished() const { return state == FINISHED; }

    void setState(State s) { state = s; }

    using Body = void (*)(void *);


    static void dispatch();

    static int exit();

    _thread(Body body, void *args, uint64 *stack);

    void start();


    static _thread *running;

    void join();

private:

    static void contextSwitch(Context *old, Context *running);

    static void wrapper();

    _sem *semaphore;

    Body body;
    uint64 *stack;
    void *args = nullptr;
    Context context;
    State state;


};


#endif //PROJECT_BASE_V1_1__THREAD_HPP

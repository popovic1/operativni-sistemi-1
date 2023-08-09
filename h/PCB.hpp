#ifndef PROJECT_BASE_V1_1_PCB_HPP
#define PROJECT_BASE_V1_1_PCB_HPP


#include "Scheduler.hpp"
#include "riscv.hpp"
#include "../h/syscall_c.hpp"




class PCB {
public:
    struct Context
    {
        uint64 ra;
        uint64 sp;
    };

    enum State{
        READY,
        RUNNING,
        SUSPENDED,
        FINISHED
    };
    ~PCB() { delete[] stack; }

    bool isFinished() const { return state==FINISHED; }

    void setState(State s) { state = s; }

    using Body = void (*)(void*);

    static PCB *createThread(Body body, void* args, uint64* stack);

    static void dispatch();

    static int exit();


    static PCB *running;

private:

    static void contextSwitch(Context* old, Context* running);

    static void wrapper();
public:
    PCB(Body body, void* args, uint64* stack)
    {
        this->body = body;
        this->stack = stack;
        context = {   (uint64)&wrapper,
                      stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
        };
        this->args=args;
        state = READY;
//        if (body != nullptr) { Scheduler::put(this); }
    }



    Body body;
    uint64 *stack;
    void* args = nullptr; //TODD proveri da li ostaje nullptr ili se lepo inicializuje
    Context context;
    State state;



};


#endif //PROJECT_BASE_V1_1_PCB_HPP

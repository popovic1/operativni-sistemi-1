#ifndef PROJECT_BASE_V1_1_PCB_HPP
#define PROJECT_BASE_V1_1_PCB_HPP


#include "Scheduler.hpp"
#include "riscv.hpp"




class PCB {
public:

    struct Context
    {
        uint64 ra;
        uint64 sp;
    };

    enum State{
        INITIALIZED,
        READY,
        RUNNING,
        SUSPENDED,
        FINISHED
    };
    ~PCB() { delete[] stack; }

    bool isFinished() const { return state==FINISHED; }

    void setFinished() { state = FINISHED; }

    using Body = void (*)(void*);

    static PCB *createThread(Body body, void* args);

    static void dispatch();

    static int exit();


    static PCB *running;

    bool start();

private:

    static void contextSwitch(Context* old, Context* running);

    static void wrapper();

    PCB(Body body, void* args) :
            body(body),
            stack(body != nullptr ? new uint64[DEFAULT_STACK_SIZE] : nullptr),
            context({   (uint64)&wrapper,
                        stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
                    }),
            state(INITIALIZED)
    {
        this->args=args;
//        if (body != nullptr) { Scheduler::put(this); }
    }



    Body body;
    uint64 *stack;
    void* args = nullptr; //TODD proveri da li ostaje nullptr ili se lepo inicializuje
    Context context;
    State state;



};


#endif //PROJECT_BASE_V1_1_PCB_HPP

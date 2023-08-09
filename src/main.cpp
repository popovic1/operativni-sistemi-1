


#include "../h/riscv.hpp"


struct A {
    int a;
    int* b = nullptr;
};

struct B {
    int a;
    int* b = nullptr;
    long c;
    char d[50];
};

class C{
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

    using Body = void (*)(void*);
    static C *createC(Body body, void* args){
        return new C(body, args);
    }

    void setState(State s) { state = s; }
private:

    Body body;
    void* args = nullptr; //TODD proveri da li ostaje nullptr ili se lepo inicializuje
    Context context;
    State state;
    uint64 *stack;

    C(Body body, void* args)
    {
        this->body = body;
        stack = nullptr;
        //stack=(body != nullptr ? new uint64[DEFAULT_STACK_SIZE] : nullptr);
        context = {   (uint64)&body,
                      stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
        };
        this->args=args;
        state = READY;
    }

};

class D{
private:
    uint64 num = 0;
public:



    static D* createD(uint64 n){
        return new D();


    }


};

extern void userMain();
extern void switchToUserMode();
int main() {


    MemoryAllocator::getInstance().init();

    Riscv::w_stvec((uint64) &Riscv::supervisorTrap+1);
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);

//    D* d1 = new D(2);
//    D* d3 = new D(3);
//    D* d4 = new D(5);

    D* d1 = new D();
    D* d2 = D::createD(4);
    delete d1;
    delete d2;
    //delete d3;
    //delete d4;

//    PCB* pcb = new PCB(nullptr, nullptr, nullptr);
//    PCB::running = pcb;
//    PCB::running->setState(PCB::RUNNING);
//
//    switchToUserMode();
//
//    userMain();
//    delete pcb;


    //printString("MAIN START\n");

//    thread_t t;
//    thread_create(&t, (void (*)(void *))(userMain), nullptr);
//
//    while(!((PCB*)t)->isFinished()){
//        thread_dispatch();
//    }
//
//    delete (PCB*)t;
//
//    delete PCB::running;
//
//    A* a0 = new A();
//    B* b0 = new B();
//    A* a1 = new A();
//    a0->a = 0;
//    a1->a = 1;
//    b0->a = 10;
//    delete(a0);
//    B* b1 = new B();
//    b1->a = 11;
//    delete(a1);
//    delete(b0);
//    delete(b1);
//
//
//
//    //printString("Finished\n");
//
    return 0;
}

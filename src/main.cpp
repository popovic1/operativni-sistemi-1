
#include "../h/riscv.hpp"
#include "../h/syscall_c.hpp"
#include "../h/print.hpp"
#include "../h/PCB.hpp"
#include "../h/syscall_cpp.hpp"


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
private:
    uint64 num;

public:

    C(uint64 n){
        num = n;
    }




};

C* createC(uint64 n){
    return new C(n);
}

extern void userMain();

int main() {


    MemoryAllocator::getInstance().init();
    Riscv::w_stvec((uint64) &Riscv::supervisorTrap+1);
    PCB* pcb = new PCB(nullptr, nullptr, nullptr);
    PCB::running=pcb;
    pcb->setState(PCB::RUNNING);
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);

    switchToUserMode();

    Thread* userThread = new Thread((void (*)(void *))(userMain), nullptr);
    userThread->start();

    thread_dispatch();

    delete userThread;
    delete pcb;

    //printString("MAIN START\n");




    //printString("Finished\n");

    return 0;
}

#include "../h/riscv.hpp"
#include "../h/syscall_c.hpp"
#include "../h/print.hpp"
#include "../h/_thread.hpp"
#include "../h/syscall_cpp.hpp"


struct A {
    int a;
    int *b = nullptr;
};

struct B {
    int a;
    int *b = nullptr;
    long c;
    char d[50];
};

class C {
private:
    uint64 num;

public:

    C(uint64 n) {
        num = n;
    }


};

C *createC(uint64 n) {
    return new C(n);
}

extern void userMain();

int main() {


    MemoryAllocator::getInstance().init();
    Riscv::w_stvec((uint64) &Riscv::supervisorTrap + 1);
    _thread *pcb = new _thread(nullptr, nullptr, nullptr);
    _thread::running = pcb;
    pcb->setState(_thread::RUNNING);
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);



    _thread *usrT;
    thread_create(&usrT, (void (*)(void *)) (userMain), nullptr);


    switchToUserMode();

    printStr("MAIN START\n");

    while (!usrT->isFinished()) {
        thread_dispatch();
    }


    delete usrT;
    delete pcb;


    printStr("MAIN FINISHED\n");

    return 0;
}
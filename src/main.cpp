
#include "../h/riscv.hpp"
#include "../h/syscall_c.hpp"
#include "../h/print.hpp"


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


int main() {


    MemoryAllocator::getInstance().init();
    Riscv::w_stvec((uint64) &Riscv::supervisorTrap+1);
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);

    printString("MAIN START\n");

    A* a0 = new A();
    B* b0 = new B();
    A* a1 = new A();
    a0->a = 0;
    a1->a = 1;
    b0->a = 10;
    delete(a0);
    B* b1 = new B();
    b1->a = 11;
    delete(a1);
    delete(b0);
    delete(b1);
    C* c1 = createC(5);
    delete c1;


    printString("Finished\n");

    return 0;
}

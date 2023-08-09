#include "../h/riscv.hpp"



void Riscv::popSppSpie()
{
    __asm__ volatile ("csrw sepc, ra");
    __asm__ volatile ("sret");
}

void Riscv::trapHandler() {
    uint64 scause = r_scause();
    uint64 a0 = r_a0();
    uint64 a1 = r_a1();
    uint64 sepc;
    uint64 sstatus;

    switch (scause) {
        case 0x08:
        case 0x09:
            //ecall: software interrupt
            sepc = r_sepc() + 4;
            sstatus = r_sstatus();
            void* mem;

            switch(a0){
                case 0x01: // allocate
                    mem = MemoryAllocator::getInstance().allocate((size_t) a1);
                    push_a0((long) mem);
                    break;
                case 0x02: // deallocate
                    push_a0(MemoryAllocator::getInstance().deallocate((void *)a1));
                    break;
                default:
                    break;

            }

            w_sstatus(sstatus);
            w_sepc(sepc);
            break;
        case 0x8000000000000001UL:
            //timer interrupt
            mc_sip(SIP_SSIP);
            break;
        case 0x8000000000000009UL:
            //external hardware interrupt
            console_handler();
            break;
        default:
            printString("ERROR: Unexpected interrupt!");
    }

}
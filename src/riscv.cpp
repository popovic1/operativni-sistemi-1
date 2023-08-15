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
    uint64 a2 = r_a2();
    uint64 a3 = r_a3();

    uint64 sepc;
    uint64 sstatus;

    switch (scause) {
        case 0x08:
        case 0x09:
            //ecall: software interrupt
            sepc = r_sepc() + 4;
            sstatus = r_sstatus();
            void* mem;
            uint64* stack;
            PCB** handleAddr;
            switch(a0){
                case 0x01: // allocate
                    mem = MemoryAllocator::getInstance().allocate((size_t) a1);
                    push_a0((uint64) mem);
                    break;
                case 0x02: // deallocate
                    push_a0(MemoryAllocator::getInstance().deallocate((void *)a1));
                    break;
                case 0x11: //thread_create
                    if((uint64*)a1!= nullptr) stack = (uint64*)MemoryAllocator::getInstance().allocate(((DEFAULT_STACK_SIZE + 16+ MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE));
                    else stack = nullptr;
                    handleAddr = (PCB**) a3;
                    (*handleAddr) = new PCB((PCB::Body)a1, (void*)a2, stack);
                    if((PCB::Body)a1)Scheduler::put(*handleAddr);

                    if(!(*handleAddr))push_a0(-1);
                    push_a0(0);
                    break;
                case 0x12: // thread_exit
                    push_a0(PCB::exit());
                    break;
                case 0x13:
                    PCB::dispatch();
                    break;
                case 0x14:
                    break;
                case 0x51:
                    w_sstatus(sstatus);
                    mc_sstatus(1<<8);
                    w_sepc(sepc+4);
                    mc_sip(SIP_SSIP);
                    return;
                default:
                    //printString("Unknown interrupt!");
                    break;

            }

            w_sstatus(sstatus);
            w_sepc(sepc);
            mc_sip(SIP_SSIP);
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
            return;
            //printString("ERROR: Unexpected interrupt!");
    }

}
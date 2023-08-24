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
    uint64 a3 = r_a7();

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
            Sem** semAddr;
            Sem* sem;
            int value;
            char c;
            switch(a0){
                case 0x01: // allocate
                    mem = MemoryAllocator::getInstance().allocate((size_t) a1);
                    push_a0((uint64) mem);
                    break;
                case 0x02: // deallocate
                    push_a0(MemoryAllocator::getInstance().deallocate((void *)a1));
                    break;
                case 0x11: //thread_create
                    if(a1 != 0) stack = (uint64*)MemoryAllocator::getInstance().allocate(((DEFAULT_STACK_SIZE + 16+ MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE));
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
                    ((PCB*)a1)->join();
                    break;
                case 0x21: //sem_open
                    value = a2;
                    semAddr = (Sem**) a1;
                    *semAddr = new Sem(value);
                    if(!(*semAddr))push_a0(-1);
                    push_a0(0);
                    break;
                case 0x22: //sem_close
                    push_a0(((Sem*)a1)->close());
                    break;
                case 0x23: //sem_wait
                    sem = (Sem*)a1;
                    push_a0(sem->wait());
                    break;
                case 0x24: //sem_signal
                    push_a0(((Sem*)a1)->signal());
                    break;
                case 0x41: //getc
                    c = __getc();
                    push_a0((char)c);
                    break;
                case 0x42:
                    __putc(a1);
                case 0x51:
                    w_sstatus(sstatus);
                    mc_sstatus(1<<8);
                    w_sepc(sepc+4);
                    return;
                default:
                    //printString("Unknown interrupt!");
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
            return;
            //printString("ERROR: Unexpected interrupt!");
    }

}
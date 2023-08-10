#include "../h/syscall_c.hpp"


void *mem_alloc(size_t size) {
    size_t sizeInBlocks = ((size + 16 + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE);
    Riscv::w_a0(0x01);
    Riscv::w_a1((uint64) sizeInBlocks);

    __asm__ volatile ("ecall");

    volatile long a0;
    __asm__ volatile ("mv %0, a0" : "=r"(a0));
    return (void *) a0;
}

int mem_free(void *ptr) {
    Riscv::w_a0(0x02);
    Riscv::w_a1((uint64) ptr);

    __asm__ volatile ("ecall");

    volatile long a0;
    __asm__ volatile ("mv %0, a0" : "=r"(a0));
    return a0;
}

void toUserMode(){
    Riscv::w_a0(0x51);
    __asm__ volatile ("ecall");
}

int thread_create(thread_t *handle, void(*start_routine)(void *), void *arg) {


    Riscv::w_a0(0x11);
    Riscv::w_a1((uint64) start_routine);
    Riscv::w_a2((uint64) arg);
    Riscv::w_a3((uint64) &handle);

    __asm__ volatile ("ecall");

    return 0;

}

int thread_exit(){
    Riscv::w_a0(0x12);
    __asm__ volatile ("ecall");
    volatile uint64 a0 = Riscv::r_a0();
    return a0;
}

void thread_dispatch(){
    Riscv::w_a0(0x13);
    __asm__ volatile ("ecall");
}

void thread_join(thread_t handle){
    Riscv::w_a0(0x14);

}
#include "../h/syscall_c.hpp"
#include "../h/riscv.hpp"


void *mem_alloc(size_t size) {
    size_t sizeInBlocks = ((size + 16 + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE);
    Riscv::w_a0(0x01);
    Riscv::w_a1((uint64)sizeInBlocks);

    __asm__ volatile ("ecall");

    volatile long a0;
    __asm__ volatile ("mv %0, a0" : "=r"(a0));
    return (void*)a0;
}

int mem_free(void * ptr) {
    Riscv::w_a0(0x02);
    Riscv::w_a1((uint64)ptr);

    __asm__ volatile ("ecall");

    volatile long a0;
    __asm__ volatile ("mv %0, a0" : "=r"(a0));
    return a0;
}

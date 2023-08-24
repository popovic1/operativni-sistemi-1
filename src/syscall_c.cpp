#include "../h/syscall_c.hpp"



void *mem_alloc(size_t size) {
    size_t sizeInBlocks = ((size + 16 + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE);
    Riscv::w_a1((uint64) sizeInBlocks);
    Riscv::w_a0(0x01);


    __asm__ volatile ("ecall");

    volatile long a0;
    __asm__ volatile ("mv %0, a0" : "=r"(a0));
    return (void *) a0;
}

int mem_free(void *ptr) {
    Riscv::w_a1((uint64) ptr);
    Riscv::w_a0(0x02);


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


    Riscv::w_a1((uint64) start_routine);
    Riscv::w_a2((uint64) arg);
    //thread_t* t = handle;
    Riscv::w_a7((uint64) handle);
    Riscv::w_a0(0x11);

    __asm__ volatile ("ecall");

    return Riscv::r_a0();


    //return 0;

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
    Riscv::w_a1((uint64)handle);
    Riscv::w_a0(0x14);

    __asm__ volatile ("ecall");

}

int sem_open(sem_t* handle, unsigned init){
    Riscv::w_a2(init);
    Riscv::w_a1((uint64)handle);
    Riscv::w_a0(0x21);

    __asm__ volatile ("ecall");

    volatile long a0;
    __asm__ volatile ("mv %0, a0" : "=r"(a0));
    return a0;
}

int sem_close(sem_t handle){
    Riscv::w_a1((uint64)handle);
    Riscv::w_a0(0x22);

    __asm__ volatile ("ecall");

    volatile long a0;
    __asm__ volatile ("mv %0, a0" : "=r"(a0));
    return a0;
}

int sem_wait(sem_t id){
    Riscv::w_a1((uint64)id);
    Riscv::w_a0(0x23);

    __asm__ volatile ("ecall");

    volatile long a0;
    __asm__ volatile ("mv %0, a0" : "=r"(a0));
    return a0;
}

int sem_signal(sem_t id){
    Riscv::w_a1((uint64)id);
    Riscv::w_a0(0x24);

    __asm__ volatile ("ecall");

    volatile long a0;
    __asm__ volatile ("mv %0, a0" : "=r"(a0));
    return a0;
}

char getc(){
    Riscv::w_a0(0x41);

    __asm__ volatile ("ecall");

    volatile long a0;
    __asm__ volatile ("mv %0, a0" : "=r"(a0));
    return (char)a0;
}

void putc(char c){
    __putc(c);
//    __asm__ volatile ("mv a7, %0" : : "r"(c));
//    Riscv::w_a0(0x42);
//    __asm__ volatile ("ecall");
}
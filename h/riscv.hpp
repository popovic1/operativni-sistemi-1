#ifndef PROJECT_BASE_V1_1_RISCV_HPP
#define PROJECT_BASE_V1_1_RISCV_HPP


#include "../h/MemoryAllocator.hpp"
#include "_thread.hpp"


#define readUsrReg(reg, dst) __asm__ volatile("mv %0,"#reg : "=r" (dst));
#define writeUsrReg(reg, src) __asm__ volatile("mv "#reg", %0" : : "r" (src));


class Riscv
{
public:



    // pop sstatus.spp and sstatus.spie bits (has to be a non inline function)
    static void popSppSpie();

    // push x3..x31 registers onto stack
    static void pushRegisters();

    // pop x3..x31 registers onto stack
    static void popRegisters();

    // read register scause
    static uint64 r_scause();

    // write register scause
    static void w_scause(uint64 scause);

    // read register sepc
    static uint64 r_sepc();

    // write register sepc
    static void w_sepc(uint64 sepc);

    // read register stvec
    static uint64 r_stvec();

    // write register stvec
    static void w_stvec(uint64 stvec);

    // read register stval
    static uint64 r_stval();

    // write register stval
    static void w_stval(uint64 stval);

    enum BitMaskSip
    {
//        SIP_SSIE = (1 << 1),
//        SIP_STIE = (1 << 5),
//        SIP_SEIE = (1 << 9),
        SIP_SSIP = (1<<1),
        SIP_SEIP = (1<<9)
    };

    // mask set register sip
    static void ms_sip(uint64 mask);

    // mask clear register sip
    static void mc_sip(uint64 mask);

    // read register sip
    static uint64 r_sip();

    // write register sip
    static void w_sip(uint64 sip);

    enum BitMaskSstatus
    {
        SSTATUS_SIE = (1 << 1),
        SSTATUS_SPIE = (1 << 5),
        SSTATUS_SPP = (1 << 8),
    };

    // mask set register sstatus
    static void ms_sstatus(uint64 mask);

    // mask clear register sstatus
    static void mc_sstatus(uint64 mask);

    // read register sstatus
    static uint64 r_sstatus();

    // write register sstatus
    static void w_sstatus(uint64 sstatus);

    // mask set register sie
    static void ms_sie(uint64 mask);

    // mask clear register sie
    static void mc_sie(uint64 mask);

    static void supervisorTrap();

    static long r_a0();

    static void w_a0(long a0);

    static uint64 r_a1();

    static void w_a1(uint64 a1);

    static uint64 r_a2();

    static void w_a2(uint64 a1);

    static uint64 r_a7();

    static void w_a7(uint64 a7);

    static void push_a0(long a0);

private:
    static void trapHandler();


};

inline uint64 Riscv::r_scause()
{
    uint64 volatile scause;
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    return scause;
}

inline void Riscv::w_scause(uint64 scause)
{
    __asm__ volatile ("csrw scause, %[scause]" : : [scause] "r"(scause));
}

inline uint64 Riscv::r_sepc()
{
    uint64 volatile sepc;
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    return sepc;
}

inline void Riscv::w_sepc(uint64 sepc)
{
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
}

inline uint64 Riscv::r_stvec()
{
    uint64 volatile stvec;
    __asm__ volatile ("csrr %[stvec], stvec" : [stvec] "=r"(stvec));
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec)
{
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
}

inline uint64 Riscv::r_stval()
{
    uint64 volatile stval;
    __asm__ volatile ("csrr %[stval], stval" : [stval] "=r"(stval));
    return stval;
}

inline void Riscv::w_stval(uint64 stval)
{
    __asm__ volatile ("csrw stval, %[stval]" : : [stval] "r"(stval));
}

inline void Riscv::ms_sip(uint64 mask)
{
    __asm__ volatile ("csrs sip, %[mask]" : : [mask] "r"(mask));
}

inline void Riscv::mc_sip(uint64 mask)
{
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
}

inline uint64 Riscv::r_sip()
{
    uint64 volatile sip;
    __asm__ volatile ("csrr %[sip], sip" : [sip] "=r"(sip));
    return sip;
}

inline void Riscv::w_sip(uint64 sip)
{
    __asm__ volatile ("csrw sip, %[sip]" : : [sip] "r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask)
{
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
}

inline void Riscv::mc_sstatus(uint64 mask)
{
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    return sstatus;
}

inline void Riscv::w_sstatus(uint64 sstatus)
{
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
}

inline void Riscv::ms_sie(uint64 mask)
{
    __asm__ volatile ("csrs sie, %[mask]" : : [mask] "r"(mask));
}

inline void Riscv::mc_sie(uint64 mask)
{
    __asm__ volatile ("csrc sie, %[mask]" : : [mask] "r"(mask));
}

inline long Riscv::r_a0() {
    long volatile a0;
    __asm__ volatile("mv %0, a0" : "=r"(a0));
    return a0;
}

inline void Riscv::w_a0(long a0) {
    __asm__ volatile ("mv a0, %0" : : "r"(a0));
}

inline uint64 Riscv::r_a1() {
    uint64 volatile a1;
    __asm__ volatile("mv %0, a1" : "=r"(a1));
    return a1;
}

inline void Riscv::w_a1(uint64 a1) {
    __asm__ volatile ("mv a1, %0" : : "r"(a1));
}

inline uint64 Riscv::r_a2() {
    uint64 volatile a2;
    __asm__ volatile("mv %0, a2" : "=r"(a2));
    return a2;
}

inline void Riscv::w_a2(uint64 a2) {
    __asm__ volatile ("mv a2, %0" : : "r"(a2));
}

inline uint64 Riscv::r_a7() {
    uint64 volatile a7;
    __asm__ volatile("mv %0, a7" : "=r"(a7));
    return a7;
}

inline void Riscv::w_a7(uint64 a7) {
    __asm__ volatile ("mv a7, %0" : : "r"(a7));
}

inline void Riscv::push_a0(long a0) {
    __asm__ volatile ("sd %0, 10*8(fp)" : : "r"(a0));
}

#endif //PROJECT_BASE_V1_1_RISCV_HPP


kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00007117          	auipc	sp,0x7
    80000004:	24813103          	ld	sp,584(sp) # 80007248 <_GLOBAL_OFFSET_TABLE_+0x30>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	7bc030ef          	jal	ra,800037d8 <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <_ZN5Riscv14supervisorTrapEv>:
.type _ZN5Riscv11trapHandlerEv, @function
.global _ZN5Riscv14supervisorTrapEv
.align 4

_ZN5Riscv14supervisorTrapEv:
    nop
    80001000:	00000013          	nop
    nop
    80001004:	00000013          	nop
    nop
    80001008:	00000013          	nop
    nop
    8000100c:	00000013          	nop
    nop
    80001010:	00000013          	nop
    nop
    80001014:	00000013          	nop
    nop
    80001018:	00000013          	nop
    nop
    8000101c:	00000013          	nop
    nop
    80001020:	00000013          	nop

    # push all registers to stack
    addi sp, sp, -256
    80001024:	f0010113          	addi	sp,sp,-256
    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    80001028:	00013023          	sd	zero,0(sp)
    8000102c:	00113423          	sd	ra,8(sp)
    80001030:	00213823          	sd	sp,16(sp)
    80001034:	00313c23          	sd	gp,24(sp)
    80001038:	02413023          	sd	tp,32(sp)
    8000103c:	02513423          	sd	t0,40(sp)
    80001040:	02613823          	sd	t1,48(sp)
    80001044:	02713c23          	sd	t2,56(sp)
    80001048:	04813023          	sd	s0,64(sp)
    8000104c:	04913423          	sd	s1,72(sp)
    80001050:	04a13823          	sd	a0,80(sp)
    80001054:	04b13c23          	sd	a1,88(sp)
    80001058:	06c13023          	sd	a2,96(sp)
    8000105c:	06d13423          	sd	a3,104(sp)
    80001060:	06e13823          	sd	a4,112(sp)
    80001064:	06f13c23          	sd	a5,120(sp)
    80001068:	09013023          	sd	a6,128(sp)
    8000106c:	09113423          	sd	a7,136(sp)
    80001070:	09213823          	sd	s2,144(sp)
    80001074:	09313c23          	sd	s3,152(sp)
    80001078:	0b413023          	sd	s4,160(sp)
    8000107c:	0b513423          	sd	s5,168(sp)
    80001080:	0b613823          	sd	s6,176(sp)
    80001084:	0b713c23          	sd	s7,184(sp)
    80001088:	0d813023          	sd	s8,192(sp)
    8000108c:	0d913423          	sd	s9,200(sp)
    80001090:	0da13823          	sd	s10,208(sp)
    80001094:	0db13c23          	sd	s11,216(sp)
    80001098:	0fc13023          	sd	t3,224(sp)
    8000109c:	0fd13423          	sd	t4,232(sp)
    800010a0:	0fe13823          	sd	t5,240(sp)
    800010a4:	0ff13c23          	sd	t6,248(sp)

    call _ZN5Riscv11trapHandlerEv
    800010a8:	201000ef          	jal	ra,80001aa8 <_ZN5Riscv11trapHandlerEv>

    # pop all registers from stack
    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    800010ac:	00013003          	ld	zero,0(sp)
    800010b0:	00813083          	ld	ra,8(sp)
    800010b4:	01013103          	ld	sp,16(sp)
    800010b8:	01813183          	ld	gp,24(sp)
    800010bc:	02013203          	ld	tp,32(sp)
    800010c0:	02813283          	ld	t0,40(sp)
    800010c4:	03013303          	ld	t1,48(sp)
    800010c8:	03813383          	ld	t2,56(sp)
    800010cc:	04013403          	ld	s0,64(sp)
    800010d0:	04813483          	ld	s1,72(sp)
    800010d4:	05013503          	ld	a0,80(sp)
    800010d8:	05813583          	ld	a1,88(sp)
    800010dc:	06013603          	ld	a2,96(sp)
    800010e0:	06813683          	ld	a3,104(sp)
    800010e4:	07013703          	ld	a4,112(sp)
    800010e8:	07813783          	ld	a5,120(sp)
    800010ec:	08013803          	ld	a6,128(sp)
    800010f0:	08813883          	ld	a7,136(sp)
    800010f4:	09013903          	ld	s2,144(sp)
    800010f8:	09813983          	ld	s3,152(sp)
    800010fc:	0a013a03          	ld	s4,160(sp)
    80001100:	0a813a83          	ld	s5,168(sp)
    80001104:	0b013b03          	ld	s6,176(sp)
    80001108:	0b813b83          	ld	s7,184(sp)
    8000110c:	0c013c03          	ld	s8,192(sp)
    80001110:	0c813c83          	ld	s9,200(sp)
    80001114:	0d013d03          	ld	s10,208(sp)
    80001118:	0d813d83          	ld	s11,216(sp)
    8000111c:	0e013e03          	ld	t3,224(sp)
    80001120:	0e813e83          	ld	t4,232(sp)
    80001124:	0f013f03          	ld	t5,240(sp)
    80001128:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    8000112c:	10010113          	addi	sp,sp,256

    sret
    80001130:	10200073          	sret
	...

0000000080001140 <_ZN5Riscv13pushRegistersEv>:
.global _ZN5Riscv13pushRegistersEv
.type _ZN5Riscv13pushRegistersEv, @function
_ZN5Riscv13pushRegistersEv:
    addi sp, sp, -256
    80001140:	f0010113          	addi	sp,sp,-256
    // https://sourceware.org/binutils/docs/as/Irp.html
    .irp index, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    80001144:	00313c23          	sd	gp,24(sp)
    80001148:	02413023          	sd	tp,32(sp)
    8000114c:	02513423          	sd	t0,40(sp)
    80001150:	02613823          	sd	t1,48(sp)
    80001154:	02713c23          	sd	t2,56(sp)
    80001158:	04813023          	sd	s0,64(sp)
    8000115c:	04913423          	sd	s1,72(sp)
    80001160:	04a13823          	sd	a0,80(sp)
    80001164:	04b13c23          	sd	a1,88(sp)
    80001168:	06c13023          	sd	a2,96(sp)
    8000116c:	06d13423          	sd	a3,104(sp)
    80001170:	06e13823          	sd	a4,112(sp)
    80001174:	06f13c23          	sd	a5,120(sp)
    80001178:	09013023          	sd	a6,128(sp)
    8000117c:	09113423          	sd	a7,136(sp)
    80001180:	09213823          	sd	s2,144(sp)
    80001184:	09313c23          	sd	s3,152(sp)
    80001188:	0b413023          	sd	s4,160(sp)
    8000118c:	0b513423          	sd	s5,168(sp)
    80001190:	0b613823          	sd	s6,176(sp)
    80001194:	0b713c23          	sd	s7,184(sp)
    80001198:	0d813023          	sd	s8,192(sp)
    8000119c:	0d913423          	sd	s9,200(sp)
    800011a0:	0da13823          	sd	s10,208(sp)
    800011a4:	0db13c23          	sd	s11,216(sp)
    800011a8:	0fc13023          	sd	t3,224(sp)
    800011ac:	0fd13423          	sd	t4,232(sp)
    800011b0:	0fe13823          	sd	t5,240(sp)
    800011b4:	0ff13c23          	sd	t6,248(sp)
    ret
    800011b8:	00008067          	ret

00000000800011bc <_ZN5Riscv12popRegistersEv>:
.type _ZN5Riscv12popRegistersEv, @function
_ZN5Riscv12popRegistersEv:
    // https://sourceware.org/binutils/docs/as/Irp.html
    .irp index, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    800011bc:	01813183          	ld	gp,24(sp)
    800011c0:	02013203          	ld	tp,32(sp)
    800011c4:	02813283          	ld	t0,40(sp)
    800011c8:	03013303          	ld	t1,48(sp)
    800011cc:	03813383          	ld	t2,56(sp)
    800011d0:	04013403          	ld	s0,64(sp)
    800011d4:	04813483          	ld	s1,72(sp)
    800011d8:	05013503          	ld	a0,80(sp)
    800011dc:	05813583          	ld	a1,88(sp)
    800011e0:	06013603          	ld	a2,96(sp)
    800011e4:	06813683          	ld	a3,104(sp)
    800011e8:	07013703          	ld	a4,112(sp)
    800011ec:	07813783          	ld	a5,120(sp)
    800011f0:	08013803          	ld	a6,128(sp)
    800011f4:	08813883          	ld	a7,136(sp)
    800011f8:	09013903          	ld	s2,144(sp)
    800011fc:	09813983          	ld	s3,152(sp)
    80001200:	0a013a03          	ld	s4,160(sp)
    80001204:	0a813a83          	ld	s5,168(sp)
    80001208:	0b013b03          	ld	s6,176(sp)
    8000120c:	0b813b83          	ld	s7,184(sp)
    80001210:	0c013c03          	ld	s8,192(sp)
    80001214:	0c813c83          	ld	s9,200(sp)
    80001218:	0d013d03          	ld	s10,208(sp)
    8000121c:	0d813d83          	ld	s11,216(sp)
    80001220:	0e013e03          	ld	t3,224(sp)
    80001224:	0e813e83          	ld	t4,232(sp)
    80001228:	0f013f03          	ld	t5,240(sp)
    8000122c:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    80001230:	10010113          	addi	sp,sp,256
    ret
    80001234:	00008067          	ret

0000000080001238 <_ZN3PCB13contextSwitchEPNS_7ContextES1_>:
.global _ZN3PCB13contextSwitchEPNS_7ContextES1_
.type _ZN3PCB13contextSwitchEPNS_7ContextES1_, @function
_ZN3PCB13contextSwitchEPNS_7ContextES1_:
    sd ra, 0 * 8(a0)
    80001238:	00153023          	sd	ra,0(a0) # 1000 <_entry-0x7ffff000>
    sd sp, 1 * 8(a0)
    8000123c:	00253423          	sd	sp,8(a0)

    ld ra, 0 * 8(a1)
    80001240:	0005b083          	ld	ra,0(a1)
    ld sp, 1 * 8(a1)
    80001244:	0085b103          	ld	sp,8(a1)

    80001248:	00008067          	ret

000000008000124c <copy_and_swap>:
# a1 holds expected value
# a2 holds desired value
# a0 holds return value, 0 if successful, !0 otherwise
.global copy_and_swap
copy_and_swap:
    lr.w t0, (a0)          # Load original value.
    8000124c:	100522af          	lr.w	t0,(a0)
    bne t0, a1, fail       # Doesn’t match, so fail.
    80001250:	00b29a63          	bne	t0,a1,80001264 <fail>
    sc.w t0, a2, (a0)      # Try to update.
    80001254:	18c522af          	sc.w	t0,a2,(a0)
    bnez t0, copy_and_swap # Retry if store-conditional failed.
    80001258:	fe029ae3          	bnez	t0,8000124c <copy_and_swap>
    li a0, 0               # Set return to success.
    8000125c:	00000513          	li	a0,0
    jr ra                  # Return.
    80001260:	00008067          	ret

0000000080001264 <fail>:
    fail:
    li a0, 1               # Set return to failure.
    80001264:	00100513          	li	a0,1
    80001268:	00008067          	ret

000000008000126c <_Z9mem_allocm>:
#include "../h/syscall_c.hpp"


void *mem_alloc(size_t size) {
    8000126c:	fe010113          	addi	sp,sp,-32
    80001270:	00813c23          	sd	s0,24(sp)
    80001274:	02010413          	addi	s0,sp,32
    size_t sizeInBlocks = ((size + 16 + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE);
    80001278:	04f50513          	addi	a0,a0,79
    8000127c:	00655513          	srli	a0,a0,0x6
    __asm__ volatile ("ld %0, 10*8(fp)" : "=r"(a0));
    return a0;
}

inline void Riscv::w_a0(long a0) {
    __asm__ volatile ("mv a0, %0" : : "r"(a0));
    80001280:	00100793          	li	a5,1
    80001284:	00078513          	mv	a0,a5
    __asm__ volatile ("ld %0, 11*8(fp)" : "=r"(a1));
    return a1;
}

inline void Riscv::w_a1(uint64 a1) {
    __asm__ volatile ("mv a1, %0" : : "r"(a1));
    80001288:	00050593          	mv	a1,a0
    Riscv::w_a0(0x01);
    Riscv::w_a1((uint64) sizeInBlocks);

    __asm__ volatile ("ecall");
    8000128c:	00000073          	ecall

    volatile long a0;
    __asm__ volatile ("mv %0, a0" : "=r"(a0));
    80001290:	00050793          	mv	a5,a0
    80001294:	fef43423          	sd	a5,-24(s0)
    return (void *) a0;
    80001298:	fe843503          	ld	a0,-24(s0)
}
    8000129c:	01813403          	ld	s0,24(sp)
    800012a0:	02010113          	addi	sp,sp,32
    800012a4:	00008067          	ret

00000000800012a8 <_Z8mem_freePv>:

int mem_free(void *ptr) {
    800012a8:	fe010113          	addi	sp,sp,-32
    800012ac:	00813c23          	sd	s0,24(sp)
    800012b0:	02010413          	addi	s0,sp,32
    __asm__ volatile ("mv a0, %0" : : "r"(a0));
    800012b4:	00200793          	li	a5,2
    800012b8:	00078513          	mv	a0,a5
    __asm__ volatile ("mv a1, %0" : : "r"(a1));
    800012bc:	00050593          	mv	a1,a0
    Riscv::w_a0(0x02);
    Riscv::w_a1((uint64) ptr);

    __asm__ volatile ("ecall");
    800012c0:	00000073          	ecall

    volatile long a0;
    __asm__ volatile ("mv %0, a0" : "=r"(a0));
    800012c4:	00050793          	mv	a5,a0
    800012c8:	fef43423          	sd	a5,-24(s0)
    return a0;
    800012cc:	fe843503          	ld	a0,-24(s0)
}
    800012d0:	0005051b          	sext.w	a0,a0
    800012d4:	01813403          	ld	s0,24(sp)
    800012d8:	02010113          	addi	sp,sp,32
    800012dc:	00008067          	ret

00000000800012e0 <_Z10toUserModev>:

void toUserMode(){
    800012e0:	ff010113          	addi	sp,sp,-16
    800012e4:	00813423          	sd	s0,8(sp)
    800012e8:	01010413          	addi	s0,sp,16
    __asm__ volatile ("mv a0, %0" : : "r"(a0));
    800012ec:	05100793          	li	a5,81
    800012f0:	00078513          	mv	a0,a5
    Riscv::w_a0(0x51);
    __asm__ volatile ("ecall");
    800012f4:	00000073          	ecall
}
    800012f8:	00813403          	ld	s0,8(sp)
    800012fc:	01010113          	addi	sp,sp,16
    80001300:	00008067          	ret

0000000080001304 <_Z13thread_createPP7_threadPFvPvES2_>:

int thread_create(thread_t *handle, void(*start_routine)(void *), void *arg) {
    80001304:	fe010113          	addi	sp,sp,-32
    80001308:	00813c23          	sd	s0,24(sp)
    8000130c:	02010413          	addi	s0,sp,32
    80001310:	fea43423          	sd	a0,-24(s0)
    80001314:	01100793          	li	a5,17
    80001318:	00078513          	mv	a0,a5
    __asm__ volatile ("mv a1, %0" : : "r"(a1));
    8000131c:	00058593          	mv	a1,a1
    __asm__ volatile ("ld %0, 12*8(fp)" : "=r"(a2));
    return a2;
}

inline void Riscv::w_a2(uint64 a2) {
    __asm__ volatile ("mv a2, %0" : : "r"(a2));
    80001320:	00060613          	mv	a2,a2


    Riscv::w_a0(0x11);
    Riscv::w_a1((uint64) start_routine);
    Riscv::w_a2((uint64) arg);
    Riscv::w_a3((uint64) &handle);
    80001324:	fe840793          	addi	a5,s0,-24
    __asm__ volatile ("ld %0, 13*8(fp)" : "=r"(a3));
    return a3;
}

inline void Riscv::w_a3(uint64 a3) {
    __asm__ volatile ("mv a3, %0" : : "r"(a3));
    80001328:	00078693          	mv	a3,a5

    __asm__ volatile ("ecall");
    8000132c:	00000073          	ecall

    return 0;

}
    80001330:	00000513          	li	a0,0
    80001334:	01813403          	ld	s0,24(sp)
    80001338:	02010113          	addi	sp,sp,32
    8000133c:	00008067          	ret

0000000080001340 <_Z11thread_exitv>:

int thread_exit(){
    80001340:	fe010113          	addi	sp,sp,-32
    80001344:	00813c23          	sd	s0,24(sp)
    80001348:	02010413          	addi	s0,sp,32
    __asm__ volatile ("mv a0, %0" : : "r"(a0));
    8000134c:	01200793          	li	a5,18
    80001350:	00078513          	mv	a0,a5
    Riscv::w_a0(0x12);
    __asm__ volatile ("ecall");
    80001354:	00000073          	ecall
    __asm__ volatile ("ld %0, 10*8(fp)" : "=r"(a0));
    80001358:	05043783          	ld	a5,80(s0)
    8000135c:	fef43023          	sd	a5,-32(s0)
    return a0;
    80001360:	fe043783          	ld	a5,-32(s0)
    volatile uint64 a0 = Riscv::r_a0();
    80001364:	fef43423          	sd	a5,-24(s0)
    return a0;
    80001368:	fe843503          	ld	a0,-24(s0)
}
    8000136c:	0005051b          	sext.w	a0,a0
    80001370:	01813403          	ld	s0,24(sp)
    80001374:	02010113          	addi	sp,sp,32
    80001378:	00008067          	ret

000000008000137c <_Z15thread_dispatchv>:

void thread_dispatch(){
    8000137c:	ff010113          	addi	sp,sp,-16
    80001380:	00813423          	sd	s0,8(sp)
    80001384:	01010413          	addi	s0,sp,16
    __asm__ volatile ("mv a0, %0" : : "r"(a0));
    80001388:	01300793          	li	a5,19
    8000138c:	00078513          	mv	a0,a5
    Riscv::w_a0(0x13);
    __asm__ volatile ("ecall");
    80001390:	00000073          	ecall
}
    80001394:	00813403          	ld	s0,8(sp)
    80001398:	01010113          	addi	sp,sp,16
    8000139c:	00008067          	ret

00000000800013a0 <_Z11thread_joinP7_thread>:

void thread_join(thread_t handle){
    800013a0:	ff010113          	addi	sp,sp,-16
    800013a4:	00813423          	sd	s0,8(sp)
    800013a8:	01010413          	addi	s0,sp,16
    800013ac:	01400793          	li	a5,20
    800013b0:	00078513          	mv	a0,a5
    Riscv::w_a0(0x14);

    800013b4:	00813403          	ld	s0,8(sp)
    800013b8:	01010113          	addi	sp,sp,16
    800013bc:	00008067          	ret

00000000800013c0 <_ZN3PCB8dispatchEv>:
PCB* PCB::running;




void PCB::dispatch() {
    800013c0:	fe010113          	addi	sp,sp,-32
    800013c4:	00113c23          	sd	ra,24(sp)
    800013c8:	00813823          	sd	s0,16(sp)
    800013cc:	00913423          	sd	s1,8(sp)
    800013d0:	02010413          	addi	s0,sp,32
    Riscv::pushRegisters();
    800013d4:	00000097          	auipc	ra,0x0
    800013d8:	d6c080e7          	jalr	-660(ra) # 80001140 <_ZN5Riscv13pushRegistersEv>

    PCB *old = running;
    800013dc:	00006497          	auipc	s1,0x6
    800013e0:	ed44b483          	ld	s1,-300(s1) # 800072b0 <_ZN3PCB7runningE>
        FINISHED
    };

    ~PCB() { delete[] stack; }

    bool isFinished() const { return state == FINISHED; }
    800013e4:	0284a703          	lw	a4,40(s1)
    if (!old->isFinished()) {
    800013e8:	00300793          	li	a5,3
    800013ec:	04f71463          	bne	a4,a5,80001434 <_ZN3PCB8dispatchEv+0x74>
        old->state = READY;
        Scheduler::put(old);
    }
    running = Scheduler::get();
    800013f0:	00000097          	auipc	ra,0x0
    800013f4:	12c080e7          	jalr	300(ra) # 8000151c <_ZN9Scheduler3getEv>
    800013f8:	00006797          	auipc	a5,0x6
    800013fc:	eaa7bc23          	sd	a0,-328(a5) # 800072b0 <_ZN3PCB7runningE>
    running->state=RUNNING;
    80001400:	00100793          	li	a5,1
    80001404:	02f52423          	sw	a5,40(a0)

    PCB::contextSwitch(&old->context, &running->context);
    80001408:	01850593          	addi	a1,a0,24
    8000140c:	01848513          	addi	a0,s1,24
    80001410:	00000097          	auipc	ra,0x0
    80001414:	e28080e7          	jalr	-472(ra) # 80001238 <_ZN3PCB13contextSwitchEPNS_7ContextES1_>

    Riscv::popRegisters();
    80001418:	00000097          	auipc	ra,0x0
    8000141c:	da4080e7          	jalr	-604(ra) # 800011bc <_ZN5Riscv12popRegistersEv>
}
    80001420:	01813083          	ld	ra,24(sp)
    80001424:	01013403          	ld	s0,16(sp)
    80001428:	00813483          	ld	s1,8(sp)
    8000142c:	02010113          	addi	sp,sp,32
    80001430:	00008067          	ret
        old->state = READY;
    80001434:	0204a423          	sw	zero,40(s1)
        Scheduler::put(old);
    80001438:	00048513          	mv	a0,s1
    8000143c:	00000097          	auipc	ra,0x0
    80001440:	148080e7          	jalr	328(ra) # 80001584 <_ZN9Scheduler3putEP3PCB>
    80001444:	fadff06f          	j	800013f0 <_ZN3PCB8dispatchEv+0x30>

0000000080001448 <_ZN3PCB4exitEv>:

int PCB::exit() {
    if(running->state==RUNNING){
    80001448:	00006797          	auipc	a5,0x6
    8000144c:	e687b783          	ld	a5,-408(a5) # 800072b0 <_ZN3PCB7runningE>
    80001450:	0287a683          	lw	a3,40(a5)
    80001454:	00100713          	li	a4,1
    80001458:	02e69c63          	bne	a3,a4,80001490 <_ZN3PCB4exitEv+0x48>
int PCB::exit() {
    8000145c:	ff010113          	addi	sp,sp,-16
    80001460:	00113423          	sd	ra,8(sp)
    80001464:	00813023          	sd	s0,0(sp)
    80001468:	01010413          	addi	s0,sp,16
        running->state=FINISHED;
    8000146c:	00300713          	li	a4,3
    80001470:	02e7a423          	sw	a4,40(a5)
        dispatch();
    80001474:	00000097          	auipc	ra,0x0
    80001478:	f4c080e7          	jalr	-180(ra) # 800013c0 <_ZN3PCB8dispatchEv>
        return 0;
    8000147c:	00000513          	li	a0,0
    }
    return -1;
}
    80001480:	00813083          	ld	ra,8(sp)
    80001484:	00013403          	ld	s0,0(sp)
    80001488:	01010113          	addi	sp,sp,16
    8000148c:	00008067          	ret
    return -1;
    80001490:	fff00513          	li	a0,-1
}
    80001494:	00008067          	ret

0000000080001498 <_ZN3PCB7wrapperEv>:

void PCB::wrapper() {
    80001498:	ff010113          	addi	sp,sp,-16
    8000149c:	00113423          	sd	ra,8(sp)
    800014a0:	00813023          	sd	s0,0(sp)
    800014a4:	01010413          	addi	s0,sp,16
    Riscv::popSppSpie();
    800014a8:	00000097          	auipc	ra,0x0
    800014ac:	5e0080e7          	jalr	1504(ra) # 80001a88 <_ZN5Riscv10popSppSpieEv>
    running->body(running->args);
    800014b0:	00006797          	auipc	a5,0x6
    800014b4:	e007b783          	ld	a5,-512(a5) # 800072b0 <_ZN3PCB7runningE>
    800014b8:	0007b703          	ld	a4,0(a5)
    800014bc:	0107b503          	ld	a0,16(a5)
    800014c0:	000700e7          	jalr	a4
    thread_exit();
    800014c4:	00000097          	auipc	ra,0x0
    800014c8:	e7c080e7          	jalr	-388(ra) # 80001340 <_Z11thread_exitv>
}
    800014cc:	00813083          	ld	ra,8(sp)
    800014d0:	00013403          	ld	s0,0(sp)
    800014d4:	01010113          	addi	sp,sp,16
    800014d8:	00008067          	ret

00000000800014dc <_Z41__static_initialization_and_destruction_0ii>:
    return Scheduler::readyQueue.removeFirst();
}

void Scheduler::put(PCB *handle) {
    Scheduler::readyQueue.addLast(handle);
    800014dc:	ff010113          	addi	sp,sp,-16
    800014e0:	00813423          	sd	s0,8(sp)
    800014e4:	01010413          	addi	s0,sp,16
    800014e8:	00100793          	li	a5,1
    800014ec:	00f50863          	beq	a0,a5,800014fc <_Z41__static_initialization_and_destruction_0ii+0x20>
    800014f0:	00813403          	ld	s0,8(sp)
    800014f4:	01010113          	addi	sp,sp,16
    800014f8:	00008067          	ret
    800014fc:	000107b7          	lui	a5,0x10
    80001500:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001504:	fef596e3          	bne	a1,a5,800014f0 <_Z41__static_initialization_and_destruction_0ii+0x14>
    };

    Elem *head, *tail;

public:
    List() : head(0), tail(0) {}
    80001508:	00006797          	auipc	a5,0x6
    8000150c:	db078793          	addi	a5,a5,-592 # 800072b8 <_ZN9Scheduler10readyQueueE>
    80001510:	0007b023          	sd	zero,0(a5)
    80001514:	0007b423          	sd	zero,8(a5)
    80001518:	fd9ff06f          	j	800014f0 <_Z41__static_initialization_and_destruction_0ii+0x14>

000000008000151c <_ZN9Scheduler3getEv>:
PCB *Scheduler::get() {
    8000151c:	fe010113          	addi	sp,sp,-32
    80001520:	00113c23          	sd	ra,24(sp)
    80001524:	00813823          	sd	s0,16(sp)
    80001528:	00913423          	sd	s1,8(sp)
    8000152c:	02010413          	addi	s0,sp,32
        }
    }

    T *removeFirst()
    {
        if (!head) { return 0; }
    80001530:	00006517          	auipc	a0,0x6
    80001534:	d8853503          	ld	a0,-632(a0) # 800072b8 <_ZN9Scheduler10readyQueueE>
    80001538:	04050263          	beqz	a0,8000157c <_ZN9Scheduler3getEv+0x60>

        Elem *elem = head;
        head = head->next;
    8000153c:	00853783          	ld	a5,8(a0)
    80001540:	00006717          	auipc	a4,0x6
    80001544:	d6f73c23          	sd	a5,-648(a4) # 800072b8 <_ZN9Scheduler10readyQueueE>
        if (!head) { tail = 0; }
    80001548:	02078463          	beqz	a5,80001570 <_ZN9Scheduler3getEv+0x54>

        T *ret = elem->data;
    8000154c:	00053483          	ld	s1,0(a0)
        delete elem;
    80001550:	00000097          	auipc	ra,0x0
    80001554:	2d8080e7          	jalr	728(ra) # 80001828 <_ZdlPv>
}
    80001558:	00048513          	mv	a0,s1
    8000155c:	01813083          	ld	ra,24(sp)
    80001560:	01013403          	ld	s0,16(sp)
    80001564:	00813483          	ld	s1,8(sp)
    80001568:	02010113          	addi	sp,sp,32
    8000156c:	00008067          	ret
        if (!head) { tail = 0; }
    80001570:	00006797          	auipc	a5,0x6
    80001574:	d407b823          	sd	zero,-688(a5) # 800072c0 <_ZN9Scheduler10readyQueueE+0x8>
    80001578:	fd5ff06f          	j	8000154c <_ZN9Scheduler3getEv+0x30>
        if (!head) { return 0; }
    8000157c:	00050493          	mv	s1,a0
    return Scheduler::readyQueue.removeFirst();
    80001580:	fd9ff06f          	j	80001558 <_ZN9Scheduler3getEv+0x3c>

0000000080001584 <_ZN9Scheduler3putEP3PCB>:
void Scheduler::put(PCB *handle) {
    80001584:	fe010113          	addi	sp,sp,-32
    80001588:	00113c23          	sd	ra,24(sp)
    8000158c:	00813823          	sd	s0,16(sp)
    80001590:	00913423          	sd	s1,8(sp)
    80001594:	02010413          	addi	s0,sp,32
    80001598:	00050493          	mv	s1,a0
        Elem *elem = new Elem(data, 0);
    8000159c:	01000513          	li	a0,16
    800015a0:	00000097          	auipc	ra,0x0
    800015a4:	238080e7          	jalr	568(ra) # 800017d8 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    800015a8:	00953023          	sd	s1,0(a0)
    800015ac:	00053423          	sd	zero,8(a0)
        if (tail)
    800015b0:	00006797          	auipc	a5,0x6
    800015b4:	d107b783          	ld	a5,-752(a5) # 800072c0 <_ZN9Scheduler10readyQueueE+0x8>
    800015b8:	02078263          	beqz	a5,800015dc <_ZN9Scheduler3putEP3PCB+0x58>
            tail->next = elem;
    800015bc:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    800015c0:	00006797          	auipc	a5,0x6
    800015c4:	d0a7b023          	sd	a0,-768(a5) # 800072c0 <_ZN9Scheduler10readyQueueE+0x8>
    800015c8:	01813083          	ld	ra,24(sp)
    800015cc:	01013403          	ld	s0,16(sp)
    800015d0:	00813483          	ld	s1,8(sp)
    800015d4:	02010113          	addi	sp,sp,32
    800015d8:	00008067          	ret
            head = tail = elem;
    800015dc:	00006797          	auipc	a5,0x6
    800015e0:	cdc78793          	addi	a5,a5,-804 # 800072b8 <_ZN9Scheduler10readyQueueE>
    800015e4:	00a7b423          	sd	a0,8(a5)
    800015e8:	00a7b023          	sd	a0,0(a5)
    800015ec:	fddff06f          	j	800015c8 <_ZN9Scheduler3putEP3PCB+0x44>

00000000800015f0 <_GLOBAL__sub_I__ZN9Scheduler10readyQueueE>:
    800015f0:	ff010113          	addi	sp,sp,-16
    800015f4:	00113423          	sd	ra,8(sp)
    800015f8:	00813023          	sd	s0,0(sp)
    800015fc:	01010413          	addi	s0,sp,16
    80001600:	000105b7          	lui	a1,0x10
    80001604:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80001608:	00100513          	li	a0,1
    8000160c:	00000097          	auipc	ra,0x0
    80001610:	ed0080e7          	jalr	-304(ra) # 800014dc <_Z41__static_initialization_and_destruction_0ii>
    80001614:	00813083          	ld	ra,8(sp)
    80001618:	00013403          	ld	s0,0(sp)
    8000161c:	01010113          	addi	sp,sp,16
    80001620:	00008067          	ret

0000000080001624 <_Z7createCm>:



};

C* createC(uint64 n){
    80001624:	fe010113          	addi	sp,sp,-32
    80001628:	00113c23          	sd	ra,24(sp)
    8000162c:	00813823          	sd	s0,16(sp)
    80001630:	00913423          	sd	s1,8(sp)
    80001634:	02010413          	addi	s0,sp,32
    80001638:	00050493          	mv	s1,a0
    return new C(n);
    8000163c:	00800513          	li	a0,8
    80001640:	00000097          	auipc	ra,0x0
    80001644:	198080e7          	jalr	408(ra) # 800017d8 <_Znwm>
        num = n;
    80001648:	00953023          	sd	s1,0(a0)
}
    8000164c:	01813083          	ld	ra,24(sp)
    80001650:	01013403          	ld	s0,16(sp)
    80001654:	00813483          	ld	s1,8(sp)
    80001658:	02010113          	addi	sp,sp,32
    8000165c:	00008067          	ret

0000000080001660 <main>:

extern void userMain();

int main() {
    80001660:	fe010113          	addi	sp,sp,-32
    80001664:	00113c23          	sd	ra,24(sp)
    80001668:	00813823          	sd	s0,16(sp)
    8000166c:	00913423          	sd	s1,8(sp)
    80001670:	01213023          	sd	s2,0(sp)
    80001674:	02010413          	addi	s0,sp,32
public:


    // Get the singleton instance
    static MemoryAllocator &getInstance() {
        static MemoryAllocator instance;
    80001678:	00006797          	auipc	a5,0x6
    8000167c:	c507c783          	lbu	a5,-944(a5) # 800072c8 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80001680:	00079863          	bnez	a5,80001690 <main+0x30>
    80001684:	00100793          	li	a5,1
    80001688:	00006717          	auipc	a4,0x6
    8000168c:	c4f70023          	sb	a5,-960(a4) # 800072c8 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
//        printString("\n");
//        uint64 end = (uint64)((Block *) HEAP_END_ADDR);
//        printInteger(end);
//        printString("\n");

        free_list = (Block *) HEAP_START_ADDR;
    80001690:	00006797          	auipc	a5,0x6
    80001694:	ba07b783          	ld	a5,-1120(a5) # 80007230 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001698:	0007b703          	ld	a4,0(a5)
    8000169c:	00006697          	auipc	a3,0x6
    800016a0:	bc46b683          	ld	a3,-1084(a3) # 80007260 <_GLOBAL_OFFSET_TABLE_+0x48>
    800016a4:	00e6b023          	sd	a4,0(a3)
        free_list->size = (uint64 *) HEAP_END_ADDR - (uint64 *) HEAP_START_ADDR;
    800016a8:	00006797          	auipc	a5,0x6
    800016ac:	bb07b783          	ld	a5,-1104(a5) # 80007258 <_GLOBAL_OFFSET_TABLE_+0x40>
    800016b0:	0007b783          	ld	a5,0(a5)
    800016b4:	40e787b3          	sub	a5,a5,a4
    800016b8:	4037d793          	srai	a5,a5,0x3
    800016bc:	00f73023          	sd	a5,0(a4)
        free_list->next = nullptr;
    800016c0:	0006b783          	ld	a5,0(a3)
    800016c4:	0007b423          	sd	zero,8(a5)
        allocated_list = nullptr;
    800016c8:	00006797          	auipc	a5,0x6
    800016cc:	b787b783          	ld	a5,-1160(a5) # 80007240 <_GLOBAL_OFFSET_TABLE_+0x28>
    800016d0:	0007b023          	sd	zero,0(a5)


    MemoryAllocator::getInstance().init();
    Riscv::w_stvec((uint64) &Riscv::supervisorTrap+1);
    800016d4:	00006797          	auipc	a5,0x6
    800016d8:	b647b783          	ld	a5,-1180(a5) # 80007238 <_GLOBAL_OFFSET_TABLE_+0x20>
    800016dc:	00178793          	addi	a5,a5,1
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    800016e0:	10579073          	csrw	stvec,a5
    PCB* pcb = new PCB(nullptr, nullptr, nullptr);
    800016e4:	03000513          	li	a0,48
    800016e8:	00000097          	auipc	ra,0x0
    800016ec:	0f0080e7          	jalr	240(ra) # 800017d8 <_Znwm>
    800016f0:	00050493          	mv	s1,a0

    static void wrapper();

public:
    PCB(Body body, void *args, uint64 *stack) {
        this->body = body;
    800016f4:	00053023          	sd	zero,0(a0)
        this->stack = stack;
    800016f8:	00053423          	sd	zero,8(a0)
        context = {(uint64) &wrapper,
    800016fc:	00006797          	auipc	a5,0x6
    80001700:	b2c7b783          	ld	a5,-1236(a5) # 80007228 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001704:	00f53c23          	sd	a5,24(a0)
    80001708:	02053023          	sd	zero,32(a0)
                   stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
        };
        this->args = args;
    8000170c:	00053823          	sd	zero,16(a0)
    PCB::running=pcb;
    80001710:	00006797          	auipc	a5,0x6
    80001714:	b407b783          	ld	a5,-1216(a5) # 80007250 <_GLOBAL_OFFSET_TABLE_+0x38>
    80001718:	00a7b023          	sd	a0,0(a5)
    void setState(State s) { state = s; }
    8000171c:	00100793          	li	a5,1
    80001720:	02f52423          	sw	a5,40(a0)
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001724:	00200793          	li	a5,2
    80001728:	1007a073          	csrs	sstatus,a5
    pcb->setState(PCB::RUNNING);
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);

    switchToUserMode();
    8000172c:	00000097          	auipc	ra,0x0
    80001730:	1e4080e7          	jalr	484(ra) # 80001910 <_Z16switchToUserModev>

    Thread* userThread = new Thread((void (*)(void *))(userMain), nullptr);
    80001734:	02000513          	li	a0,32
    80001738:	00000097          	auipc	ra,0x0
    8000173c:	0a0080e7          	jalr	160(ra) # 800017d8 <_Znwm>
    80001740:	00050913          	mv	s2,a0
    80001744:	00000613          	li	a2,0
    80001748:	00006597          	auipc	a1,0x6
    8000174c:	ad85b583          	ld	a1,-1320(a1) # 80007220 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001750:	00000097          	auipc	ra,0x0
    80001754:	1e8080e7          	jalr	488(ra) # 80001938 <_ZN6ThreadC1EPFvPvES0_>
    userThread->start();
    80001758:	00090513          	mv	a0,s2
    8000175c:	00000097          	auipc	ra,0x0
    80001760:	290080e7          	jalr	656(ra) # 800019ec <_ZN6Thread5startEv>

    thread_dispatch();
    80001764:	00000097          	auipc	ra,0x0
    80001768:	c18080e7          	jalr	-1000(ra) # 8000137c <_Z15thread_dispatchv>

    delete userThread;
    8000176c:	00090a63          	beqz	s2,80001780 <main+0x120>
    80001770:	00093783          	ld	a5,0(s2)
    80001774:	0087b783          	ld	a5,8(a5)
    80001778:	00090513          	mv	a0,s2
    8000177c:	000780e7          	jalr	a5
    delete pcb;
    80001780:	02048063          	beqz	s1,800017a0 <main+0x140>
    ~PCB() { delete[] stack; }
    80001784:	0084b503          	ld	a0,8(s1)
    80001788:	00050663          	beqz	a0,80001794 <main+0x134>
    8000178c:	00000097          	auipc	ra,0x0
    80001790:	0c4080e7          	jalr	196(ra) # 80001850 <_ZdaPv>
    80001794:	00048513          	mv	a0,s1
    80001798:	00000097          	auipc	ra,0x0
    8000179c:	090080e7          	jalr	144(ra) # 80001828 <_ZdlPv>


    //printString("Finished\n");

    return 0;
    800017a0:	00000513          	li	a0,0
    800017a4:	01813083          	ld	ra,24(sp)
    800017a8:	01013403          	ld	s0,16(sp)
    800017ac:	00813483          	ld	s1,8(sp)
    800017b0:	00013903          	ld	s2,0(sp)
    800017b4:	02010113          	addi	sp,sp,32
    800017b8:	00008067          	ret
    800017bc:	00050493          	mv	s1,a0
    Thread* userThread = new Thread((void (*)(void *))(userMain), nullptr);
    800017c0:	00090513          	mv	a0,s2
    800017c4:	00000097          	auipc	ra,0x0
    800017c8:	064080e7          	jalr	100(ra) # 80001828 <_ZdlPv>
    800017cc:	00048513          	mv	a0,s1
    800017d0:	00007097          	auipc	ra,0x7
    800017d4:	bf8080e7          	jalr	-1032(ra) # 800083c8 <_Unwind_Resume>

00000000800017d8 <_Znwm>:
// Created by os on 2/2/23.
//

#include "../h/syscall_cpp.hpp"

void* operator new(size_t size) {
    800017d8:	ff010113          	addi	sp,sp,-16
    800017dc:	00113423          	sd	ra,8(sp)
    800017e0:	00813023          	sd	s0,0(sp)
    800017e4:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    800017e8:	00000097          	auipc	ra,0x0
    800017ec:	a84080e7          	jalr	-1404(ra) # 8000126c <_Z9mem_allocm>
}
    800017f0:	00813083          	ld	ra,8(sp)
    800017f4:	00013403          	ld	s0,0(sp)
    800017f8:	01010113          	addi	sp,sp,16
    800017fc:	00008067          	ret

0000000080001800 <_Znam>:

void* operator new[](size_t size) {
    80001800:	ff010113          	addi	sp,sp,-16
    80001804:	00113423          	sd	ra,8(sp)
    80001808:	00813023          	sd	s0,0(sp)
    8000180c:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80001810:	00000097          	auipc	ra,0x0
    80001814:	a5c080e7          	jalr	-1444(ra) # 8000126c <_Z9mem_allocm>
}
    80001818:	00813083          	ld	ra,8(sp)
    8000181c:	00013403          	ld	s0,0(sp)
    80001820:	01010113          	addi	sp,sp,16
    80001824:	00008067          	ret

0000000080001828 <_ZdlPv>:

void operator delete(void *ptr) { mem_free(ptr); }
    80001828:	ff010113          	addi	sp,sp,-16
    8000182c:	00113423          	sd	ra,8(sp)
    80001830:	00813023          	sd	s0,0(sp)
    80001834:	01010413          	addi	s0,sp,16
    80001838:	00000097          	auipc	ra,0x0
    8000183c:	a70080e7          	jalr	-1424(ra) # 800012a8 <_Z8mem_freePv>
    80001840:	00813083          	ld	ra,8(sp)
    80001844:	00013403          	ld	s0,0(sp)
    80001848:	01010113          	addi	sp,sp,16
    8000184c:	00008067          	ret

0000000080001850 <_ZdaPv>:

void operator delete[](void *ptr) { mem_free(ptr); }
    80001850:	ff010113          	addi	sp,sp,-16
    80001854:	00113423          	sd	ra,8(sp)
    80001858:	00813023          	sd	s0,0(sp)
    8000185c:	01010413          	addi	s0,sp,16
    80001860:	00000097          	auipc	ra,0x0
    80001864:	a48080e7          	jalr	-1464(ra) # 800012a8 <_Z8mem_freePv>
    80001868:	00813083          	ld	ra,8(sp)
    8000186c:	00013403          	ld	s0,0(sp)
    80001870:	01010113          	addi	sp,sp,16
    80001874:	00008067          	ret

0000000080001878 <_ZN6ThreadD1Ev>:

void Thread::dispatch() {
    thread_dispatch();
}

Thread::~Thread() {
    80001878:	fe010113          	addi	sp,sp,-32
    8000187c:	00113c23          	sd	ra,24(sp)
    80001880:	00813823          	sd	s0,16(sp)
    80001884:	00913423          	sd	s1,8(sp)
    80001888:	02010413          	addi	s0,sp,32
    8000188c:	00006797          	auipc	a5,0x6
    80001890:	8bc78793          	addi	a5,a5,-1860 # 80007148 <_ZTV6Thread+0x10>
    80001894:	00f53023          	sd	a5,0(a0)
    delete (PCB*)myHandle;
    80001898:	00853483          	ld	s1,8(a0)
    8000189c:	02048063          	beqz	s1,800018bc <_ZN6ThreadD1Ev+0x44>
    800018a0:	0084b503          	ld	a0,8(s1)
    800018a4:	00050663          	beqz	a0,800018b0 <_ZN6ThreadD1Ev+0x38>
    800018a8:	00000097          	auipc	ra,0x0
    800018ac:	fa8080e7          	jalr	-88(ra) # 80001850 <_ZdaPv>
    800018b0:	00048513          	mv	a0,s1
    800018b4:	00000097          	auipc	ra,0x0
    800018b8:	f74080e7          	jalr	-140(ra) # 80001828 <_ZdlPv>
}
    800018bc:	01813083          	ld	ra,24(sp)
    800018c0:	01013403          	ld	s0,16(sp)
    800018c4:	00813483          	ld	s1,8(sp)
    800018c8:	02010113          	addi	sp,sp,32
    800018cc:	00008067          	ret

00000000800018d0 <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    800018d0:	fe010113          	addi	sp,sp,-32
    800018d4:	00113c23          	sd	ra,24(sp)
    800018d8:	00813823          	sd	s0,16(sp)
    800018dc:	00913423          	sd	s1,8(sp)
    800018e0:	02010413          	addi	s0,sp,32
    800018e4:	00050493          	mv	s1,a0
}
    800018e8:	00000097          	auipc	ra,0x0
    800018ec:	f90080e7          	jalr	-112(ra) # 80001878 <_ZN6ThreadD1Ev>
    800018f0:	00048513          	mv	a0,s1
    800018f4:	00000097          	auipc	ra,0x0
    800018f8:	f34080e7          	jalr	-204(ra) # 80001828 <_ZdlPv>
    800018fc:	01813083          	ld	ra,24(sp)
    80001900:	01013403          	ld	s0,16(sp)
    80001904:	00813483          	ld	s1,8(sp)
    80001908:	02010113          	addi	sp,sp,32
    8000190c:	00008067          	ret

0000000080001910 <_Z16switchToUserModev>:
void switchToUserMode(){ toUserMode();}
    80001910:	ff010113          	addi	sp,sp,-16
    80001914:	00113423          	sd	ra,8(sp)
    80001918:	00813023          	sd	s0,0(sp)
    8000191c:	01010413          	addi	s0,sp,16
    80001920:	00000097          	auipc	ra,0x0
    80001924:	9c0080e7          	jalr	-1600(ra) # 800012e0 <_Z10toUserModev>
    80001928:	00813083          	ld	ra,8(sp)
    8000192c:	00013403          	ld	s0,0(sp)
    80001930:	01010113          	addi	sp,sp,16
    80001934:	00008067          	ret

0000000080001938 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void*), void* arg) {
    80001938:	ff010113          	addi	sp,sp,-16
    8000193c:	00113423          	sd	ra,8(sp)
    80001940:	00813023          	sd	s0,0(sp)
    80001944:	01010413          	addi	s0,sp,16
    80001948:	00006797          	auipc	a5,0x6
    8000194c:	80078793          	addi	a5,a5,-2048 # 80007148 <_ZTV6Thread+0x10>
    80001950:	00f53023          	sd	a5,0(a0)
    thread_create(&myHandle, body, arg);
    80001954:	00850513          	addi	a0,a0,8
    80001958:	00000097          	auipc	ra,0x0
    8000195c:	9ac080e7          	jalr	-1620(ra) # 80001304 <_Z13thread_createPP7_threadPFvPvES2_>
}
    80001960:	00813083          	ld	ra,8(sp)
    80001964:	00013403          	ld	s0,0(sp)
    80001968:	01010113          	addi	sp,sp,16
    8000196c:	00008067          	ret

0000000080001970 <_ZN6ThreadC1Ev>:
Thread::Thread() {
    80001970:	fe010113          	addi	sp,sp,-32
    80001974:	00113c23          	sd	ra,24(sp)
    80001978:	00813823          	sd	s0,16(sp)
    8000197c:	00913423          	sd	s1,8(sp)
    80001980:	01213023          	sd	s2,0(sp)
    80001984:	02010413          	addi	s0,sp,32
    80001988:	00005797          	auipc	a5,0x5
    8000198c:	7c078793          	addi	a5,a5,1984 # 80007148 <_ZTV6Thread+0x10>
    80001990:	00f53023          	sd	a5,0(a0)
    new Thread(nullptr, nullptr);
    80001994:	02000513          	li	a0,32
    80001998:	00000097          	auipc	ra,0x0
    8000199c:	e40080e7          	jalr	-448(ra) # 800017d8 <_Znwm>
    800019a0:	00050493          	mv	s1,a0
    800019a4:	00000613          	li	a2,0
    800019a8:	00000593          	li	a1,0
    800019ac:	00000097          	auipc	ra,0x0
    800019b0:	f8c080e7          	jalr	-116(ra) # 80001938 <_ZN6ThreadC1EPFvPvES0_>
    800019b4:	0200006f          	j	800019d4 <_ZN6ThreadC1Ev+0x64>
    800019b8:	00050913          	mv	s2,a0
    800019bc:	00048513          	mv	a0,s1
    800019c0:	00000097          	auipc	ra,0x0
    800019c4:	e68080e7          	jalr	-408(ra) # 80001828 <_ZdlPv>
    800019c8:	00090513          	mv	a0,s2
    800019cc:	00007097          	auipc	ra,0x7
    800019d0:	9fc080e7          	jalr	-1540(ra) # 800083c8 <_Unwind_Resume>
}
    800019d4:	01813083          	ld	ra,24(sp)
    800019d8:	01013403          	ld	s0,16(sp)
    800019dc:	00813483          	ld	s1,8(sp)
    800019e0:	00013903          	ld	s2,0(sp)
    800019e4:	02010113          	addi	sp,sp,32
    800019e8:	00008067          	ret

00000000800019ec <_ZN6Thread5startEv>:
int Thread::start() {
    800019ec:	ff010113          	addi	sp,sp,-16
    800019f0:	00113423          	sd	ra,8(sp)
    800019f4:	00813023          	sd	s0,0(sp)
    800019f8:	01010413          	addi	s0,sp,16
    Scheduler::put((PCB*)myHandle);
    800019fc:	00853503          	ld	a0,8(a0)
    80001a00:	00000097          	auipc	ra,0x0
    80001a04:	b84080e7          	jalr	-1148(ra) # 80001584 <_ZN9Scheduler3putEP3PCB>
}
    80001a08:	00000513          	li	a0,0
    80001a0c:	00813083          	ld	ra,8(sp)
    80001a10:	00013403          	ld	s0,0(sp)
    80001a14:	01010113          	addi	sp,sp,16
    80001a18:	00008067          	ret

0000000080001a1c <_ZN6Thread4joinEv>:
void Thread::join() {
    80001a1c:	ff010113          	addi	sp,sp,-16
    80001a20:	00113423          	sd	ra,8(sp)
    80001a24:	00813023          	sd	s0,0(sp)
    80001a28:	01010413          	addi	s0,sp,16
    thread_join(myHandle);
    80001a2c:	00853503          	ld	a0,8(a0)
    80001a30:	00000097          	auipc	ra,0x0
    80001a34:	970080e7          	jalr	-1680(ra) # 800013a0 <_Z11thread_joinP7_thread>
}
    80001a38:	00813083          	ld	ra,8(sp)
    80001a3c:	00013403          	ld	s0,0(sp)
    80001a40:	01010113          	addi	sp,sp,16
    80001a44:	00008067          	ret

0000000080001a48 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80001a48:	ff010113          	addi	sp,sp,-16
    80001a4c:	00113423          	sd	ra,8(sp)
    80001a50:	00813023          	sd	s0,0(sp)
    80001a54:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80001a58:	00000097          	auipc	ra,0x0
    80001a5c:	924080e7          	jalr	-1756(ra) # 8000137c <_Z15thread_dispatchv>
}
    80001a60:	00813083          	ld	ra,8(sp)
    80001a64:	00013403          	ld	s0,0(sp)
    80001a68:	01010113          	addi	sp,sp,16
    80001a6c:	00008067          	ret

0000000080001a70 <_ZN6Thread3runEv>:


protected:
    Thread();

    virtual void run() {}
    80001a70:	ff010113          	addi	sp,sp,-16
    80001a74:	00813423          	sd	s0,8(sp)
    80001a78:	01010413          	addi	s0,sp,16
    80001a7c:	00813403          	ld	s0,8(sp)
    80001a80:	01010113          	addi	sp,sp,16
    80001a84:	00008067          	ret

0000000080001a88 <_ZN5Riscv10popSppSpieEv>:
#include "../h/riscv.hpp"



void Riscv::popSppSpie()
{
    80001a88:	ff010113          	addi	sp,sp,-16
    80001a8c:	00813423          	sd	s0,8(sp)
    80001a90:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    80001a94:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    80001a98:	10200073          	sret
}
    80001a9c:	00813403          	ld	s0,8(sp)
    80001aa0:	01010113          	addi	sp,sp,16
    80001aa4:	00008067          	ret

0000000080001aa8 <_ZN5Riscv11trapHandlerEv>:

void Riscv::trapHandler() {
    80001aa8:	f8010113          	addi	sp,sp,-128
    80001aac:	06113c23          	sd	ra,120(sp)
    80001ab0:	06813823          	sd	s0,112(sp)
    80001ab4:	06913423          	sd	s1,104(sp)
    80001ab8:	07213023          	sd	s2,96(sp)
    80001abc:	05313c23          	sd	s3,88(sp)
    80001ac0:	05413823          	sd	s4,80(sp)
    80001ac4:	05513423          	sd	s5,72(sp)
    80001ac8:	05613023          	sd	s6,64(sp)
    80001acc:	08010413          	addi	s0,sp,128
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80001ad0:	142027f3          	csrr	a5,scause
    80001ad4:	faf43423          	sd	a5,-88(s0)
    return scause;
    80001ad8:	fa843703          	ld	a4,-88(s0)
    __asm__ volatile ("ld %0, 10*8(fp)" : "=r"(a0));
    80001adc:	05043783          	ld	a5,80(s0)
    80001ae0:	faf43023          	sd	a5,-96(s0)
    return a0;
    80001ae4:	fa043783          	ld	a5,-96(s0)
    __asm__ volatile ("ld %0, 11*8(fp)" : "=r"(a1));
    80001ae8:	05843683          	ld	a3,88(s0)
    80001aec:	f8d43c23          	sd	a3,-104(s0)
    return a1;
    80001af0:	f9843483          	ld	s1,-104(s0)
    __asm__ volatile ("ld %0, 12*8(fp)" : "=r"(a2));
    80001af4:	06043683          	ld	a3,96(s0)
    80001af8:	f8d43823          	sd	a3,-112(s0)
    return a2;
    80001afc:	f9043983          	ld	s3,-112(s0)
    __asm__ volatile ("ld %0, 13*8(fp)" : "=r"(a3));
    80001b00:	06843683          	ld	a3,104(s0)
    80001b04:	f8d43423          	sd	a3,-120(s0)
    return a3;
    80001b08:	f8843903          	ld	s2,-120(s0)
    uint64 a3 = r_a3();

    uint64 sepc;
    uint64 sstatus;

    switch (scause) {
    80001b0c:	fff00693          	li	a3,-1
    80001b10:	03f69693          	slli	a3,a3,0x3f
    80001b14:	00168693          	addi	a3,a3,1
    80001b18:	1ad70e63          	beq	a4,a3,80001cd4 <_ZN5Riscv11trapHandlerEv+0x22c>
    80001b1c:	fff00693          	li	a3,-1
    80001b20:	03f69693          	slli	a3,a3,0x3f
    80001b24:	00168693          	addi	a3,a3,1
    80001b28:	04e6ee63          	bltu	a3,a4,80001b84 <_ZN5Riscv11trapHandlerEv+0xdc>
    80001b2c:	ff870713          	addi	a4,a4,-8
    80001b30:	00100693          	li	a3,1
    80001b34:	1ae6e463          	bltu	a3,a4,80001cdc <_ZN5Riscv11trapHandlerEv+0x234>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001b38:	14102773          	csrr	a4,sepc
    80001b3c:	fae43c23          	sd	a4,-72(s0)
    return sepc;
    80001b40:	fb843703          	ld	a4,-72(s0)
        case 0x08:
        case 0x09:
            //ecall: software interrupt
            sepc = r_sepc() + 4;
    80001b44:	00470a93          	addi	s5,a4,4
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001b48:	100026f3          	csrr	a3,sstatus
    80001b4c:	fad43823          	sd	a3,-80(s0)
    return sstatus;
    80001b50:	fb043a03          	ld	s4,-80(s0)
            sstatus = r_sstatus();
            void* mem;
            uint64* stack;
            PCB*** handleAddr;
            switch(a0){
    80001b54:	01300693          	li	a3,19
    80001b58:	04f6c463          	blt	a3,a5,80001ba0 <_ZN5Riscv11trapHandlerEv+0xf8>
    80001b5c:	08f05a63          	blez	a5,80001bf0 <_ZN5Riscv11trapHandlerEv+0x148>
    80001b60:	01300713          	li	a4,19
    80001b64:	08f76663          	bltu	a4,a5,80001bf0 <_ZN5Riscv11trapHandlerEv+0x148>
    80001b68:	00279793          	slli	a5,a5,0x2
    80001b6c:	00004717          	auipc	a4,0x4
    80001b70:	4b470713          	addi	a4,a4,1204 # 80006020 <CONSOLE_STATUS+0x10>
    80001b74:	00e787b3          	add	a5,a5,a4
    80001b78:	0007a783          	lw	a5,0(a5)
    80001b7c:	00e787b3          	add	a5,a5,a4
    80001b80:	00078067          	jr	a5
    switch (scause) {
    80001b84:	fff00793          	li	a5,-1
    80001b88:	03f79793          	slli	a5,a5,0x3f
    80001b8c:	00978793          	addi	a5,a5,9
    80001b90:	14f71663          	bne	a4,a5,80001cdc <_ZN5Riscv11trapHandlerEv+0x234>
            //timer interrupt
            mc_sip(SIP_SSIP);
            break;
        case 0x8000000000000009UL:
            //external hardware interrupt
            console_handler();
    80001b94:	00004097          	auipc	ra,0x4
    80001b98:	d7c080e7          	jalr	-644(ra) # 80005910 <console_handler>
            break;
    80001b9c:	1400006f          	j	80001cdc <_ZN5Riscv11trapHandlerEv+0x234>
    80001ba0:	05100693          	li	a3,81
    80001ba4:	04d79663          	bne	a5,a3,80001bf0 <_ZN5Riscv11trapHandlerEv+0x148>
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001ba8:	100a1073          	csrw	sstatus,s4
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80001bac:	10000793          	li	a5,256
    80001bb0:	1007b073          	csrc	sstatus,a5
                    w_sepc(sepc+4);
    80001bb4:	00870713          	addi	a4,a4,8
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001bb8:	14171073          	csrw	sepc,a4
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80001bbc:	00200793          	li	a5,2
    80001bc0:	1447b073          	csrc	sip,a5
}
    80001bc4:	1180006f          	j	80001cdc <_ZN5Riscv11trapHandlerEv+0x234>
        static MemoryAllocator instance;
    80001bc8:	00005797          	auipc	a5,0x5
    80001bcc:	7007c783          	lbu	a5,1792(a5) # 800072c8 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80001bd0:	00079863          	bnez	a5,80001be0 <_ZN5Riscv11trapHandlerEv+0x138>
    80001bd4:	00100793          	li	a5,1
    80001bd8:	00005717          	auipc	a4,0x5
    80001bdc:	6ef70823          	sb	a5,1776(a4) # 800072c8 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
                    mem = MemoryAllocator::getInstance().allocate((size_t) a1);
    80001be0:	00048513          	mv	a0,s1
    80001be4:	00000097          	auipc	ra,0x0
    80001be8:	120080e7          	jalr	288(ra) # 80001d04 <_ZN15MemoryAllocator8allocateEm>
}

inline void Riscv::push_a0(long a0) {
    __asm__ volatile ("sd %0, 10*8(fp)" : : "r"(a0));
    80001bec:	04a43823          	sd	a0,80(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001bf0:	100a1073          	csrw	sstatus,s4
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001bf4:	141a9073          	csrw	sepc,s5
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80001bf8:	00200793          	li	a5,2
    80001bfc:	1447b073          	csrc	sip,a5
}
    80001c00:	0dc0006f          	j	80001cdc <_ZN5Riscv11trapHandlerEv+0x234>
    80001c04:	00005797          	auipc	a5,0x5
    80001c08:	6c47c783          	lbu	a5,1732(a5) # 800072c8 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80001c0c:	00079863          	bnez	a5,80001c1c <_ZN5Riscv11trapHandlerEv+0x174>
    80001c10:	00100793          	li	a5,1
    80001c14:	00005717          	auipc	a4,0x5
    80001c18:	6af70a23          	sb	a5,1716(a4) # 800072c8 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
                    push_a0(MemoryAllocator::getInstance().deallocate((void *)a1));
    80001c1c:	00048513          	mv	a0,s1
    80001c20:	00000097          	auipc	ra,0x0
    80001c24:	1cc080e7          	jalr	460(ra) # 80001dec <_ZN15MemoryAllocator10deallocateEPv>
    __asm__ volatile ("sd %0, 10*8(fp)" : : "r"(a0));
    80001c28:	04a43823          	sd	a0,80(s0)
}
    80001c2c:	fc5ff06f          	j	80001bf0 <_ZN5Riscv11trapHandlerEv+0x148>
                    if((uint64*)a1!= nullptr) stack = (uint64*)MemoryAllocator::getInstance().allocate(((DEFAULT_STACK_SIZE + 16+ MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE));
    80001c30:	06048c63          	beqz	s1,80001ca8 <_ZN5Riscv11trapHandlerEv+0x200>
    80001c34:	00005797          	auipc	a5,0x5
    80001c38:	6947c783          	lbu	a5,1684(a5) # 800072c8 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80001c3c:	00079863          	bnez	a5,80001c4c <_ZN5Riscv11trapHandlerEv+0x1a4>
    80001c40:	00100793          	li	a5,1
    80001c44:	00005717          	auipc	a4,0x5
    80001c48:	68f70223          	sb	a5,1668(a4) # 800072c8 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80001c4c:	04100513          	li	a0,65
    80001c50:	00000097          	auipc	ra,0x0
    80001c54:	0b4080e7          	jalr	180(ra) # 80001d04 <_ZN15MemoryAllocator8allocateEm>
    80001c58:	00050b13          	mv	s6,a0
                    *(*handleAddr) = new PCB((PCB::Body)a1, (void*)a2, stack);
    80001c5c:	03000513          	li	a0,48
    80001c60:	00000097          	auipc	ra,0x0
    80001c64:	b78080e7          	jalr	-1160(ra) # 800017d8 <_Znwm>
        this->body = body;
    80001c68:	00953023          	sd	s1,0(a0)
        this->stack = stack;
    80001c6c:	01653423          	sd	s6,8(a0)
                   stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
    80001c70:	040b0063          	beqz	s6,80001cb0 <_ZN5Riscv11trapHandlerEv+0x208>
    80001c74:	000087b7          	lui	a5,0x8
    80001c78:	00fb0b33          	add	s6,s6,a5
        context = {(uint64) &wrapper,
    80001c7c:	00005797          	auipc	a5,0x5
    80001c80:	5ac7b783          	ld	a5,1452(a5) # 80007228 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001c84:	00f53c23          	sd	a5,24(a0)
    80001c88:	03653023          	sd	s6,32(a0)
        this->args = args;
    80001c8c:	01353823          	sd	s3,16(a0)
        state = READY;
    80001c90:	02052423          	sw	zero,40(a0)
    80001c94:	00093783          	ld	a5,0(s2)
    80001c98:	00a7b023          	sd	a0,0(a5)
    __asm__ volatile ("sd %0, 10*8(fp)" : : "r"(a0));
    80001c9c:	00000793          	li	a5,0
    80001ca0:	04f43823          	sd	a5,80(s0)
}
    80001ca4:	f4dff06f          	j	80001bf0 <_ZN5Riscv11trapHandlerEv+0x148>
                    else stack = nullptr;
    80001ca8:	00000b13          	li	s6,0
    80001cac:	fb1ff06f          	j	80001c5c <_ZN5Riscv11trapHandlerEv+0x1b4>
                   stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
    80001cb0:	00000b13          	li	s6,0
    80001cb4:	fc9ff06f          	j	80001c7c <_ZN5Riscv11trapHandlerEv+0x1d4>
                    push_a0(PCB::exit());
    80001cb8:	fffff097          	auipc	ra,0xfffff
    80001cbc:	790080e7          	jalr	1936(ra) # 80001448 <_ZN3PCB4exitEv>
    __asm__ volatile ("sd %0, 10*8(fp)" : : "r"(a0));
    80001cc0:	04a43823          	sd	a0,80(s0)
}
    80001cc4:	f2dff06f          	j	80001bf0 <_ZN5Riscv11trapHandlerEv+0x148>
                    PCB::dispatch();
    80001cc8:	fffff097          	auipc	ra,0xfffff
    80001ccc:	6f8080e7          	jalr	1784(ra) # 800013c0 <_ZN3PCB8dispatchEv>
                    break;
    80001cd0:	f21ff06f          	j	80001bf0 <_ZN5Riscv11trapHandlerEv+0x148>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80001cd4:	00200793          	li	a5,2
    80001cd8:	1447b073          	csrc	sip,a5
        default:
            return;
            //printString("ERROR: Unexpected interrupt!");
    }

    80001cdc:	07813083          	ld	ra,120(sp)
    80001ce0:	07013403          	ld	s0,112(sp)
    80001ce4:	06813483          	ld	s1,104(sp)
    80001ce8:	06013903          	ld	s2,96(sp)
    80001cec:	05813983          	ld	s3,88(sp)
    80001cf0:	05013a03          	ld	s4,80(sp)
    80001cf4:	04813a83          	ld	s5,72(sp)
    80001cf8:	04013b03          	ld	s6,64(sp)
    80001cfc:	08010113          	addi	sp,sp,128
    80001d00:	00008067          	ret

0000000080001d04 <_ZN15MemoryAllocator8allocateEm>:
Block *MemoryAllocator::free_list = nullptr;
Block *MemoryAllocator::allocated_list = nullptr;


// Allocate memory
void *MemoryAllocator::allocate(size_t size) {
    80001d04:	ff010113          	addi	sp,sp,-16
    80001d08:	00813423          	sd	s0,8(sp)
    80001d0c:	01010413          	addi	s0,sp,16
    80001d10:	00050613          	mv	a2,a0
    size_t sizeToAllocate = size * MEM_BLOCK_SIZE;
    80001d14:	00651713          	slli	a4,a0,0x6

    Block *prev = nullptr;
    Block *current = free_list;
    80001d18:	00005517          	auipc	a0,0x5
    80001d1c:	5b853503          	ld	a0,1464(a0) # 800072d0 <_ZN15MemoryAllocator9free_listE>
    Block *prev = nullptr;
    80001d20:	00000693          	li	a3,0

    // Find a free block that is large enough
    while (current != nullptr) {
    80001d24:	06050e63          	beqz	a0,80001da0 <_ZN15MemoryAllocator8allocateEm+0x9c>

        if (current->size >= sizeToAllocate) {
    80001d28:	00053783          	ld	a5,0(a0)
    80001d2c:	00e7f863          	bgeu	a5,a4,80001d3c <_ZN15MemoryAllocator8allocateEm+0x38>
            // Return the memory

            void *userPtr = (Block *) ((uint64 *) current + sizeof(Block));
            return userPtr;
        }
        prev = current;
    80001d30:	00050693          	mv	a3,a0
        current = current->next;
    80001d34:	00853503          	ld	a0,8(a0)
    while (current != nullptr) {
    80001d38:	fedff06f          	j	80001d24 <_ZN15MemoryAllocator8allocateEm+0x20>
            if (prev == nullptr) {
    80001d3c:	06068863          	beqz	a3,80001dac <_ZN15MemoryAllocator8allocateEm+0xa8>
                prev->next = current->next;
    80001d40:	00853783          	ld	a5,8(a0)
    80001d44:	00f6b423          	sd	a5,8(a3)
            if (current->size - sizeToAllocate >= MEM_BLOCK_SIZE) {
    80001d48:	00053783          	ld	a5,0(a0)
    80001d4c:	40e787b3          	sub	a5,a5,a4
    80001d50:	03f00593          	li	a1,63
    80001d54:	02f5f863          	bgeu	a1,a5,80001d84 <_ZN15MemoryAllocator8allocateEm+0x80>
                Block *newBlock = (Block *) ((uint64 *) current + sizeToAllocate);
    80001d58:	00961613          	slli	a2,a2,0x9
    80001d5c:	00c50633          	add	a2,a0,a2
                newBlock->size = current->size - sizeToAllocate;
    80001d60:	00f63023          	sd	a5,0(a2)
                current->size = sizeToAllocate;
    80001d64:	00e53023          	sd	a4,0(a0)
                if (!free_list) {
    80001d68:	00005797          	auipc	a5,0x5
    80001d6c:	5687b783          	ld	a5,1384(a5) # 800072d0 <_ZN15MemoryAllocator9free_listE>
    80001d70:	04078663          	beqz	a5,80001dbc <_ZN15MemoryAllocator8allocateEm+0xb8>
                } else if (!prev) {
    80001d74:	04068c63          	beqz	a3,80001dcc <_ZN15MemoryAllocator8allocateEm+0xc8>
                    prev->next = newBlock;
    80001d78:	00c6b423          	sd	a2,8(a3)
                    newBlock->next = current->next;
    80001d7c:	00853783          	ld	a5,8(a0)
    80001d80:	00f63423          	sd	a5,8(a2)
            if (!allocated_list) {
    80001d84:	00005797          	auipc	a5,0x5
    80001d88:	5547b783          	ld	a5,1364(a5) # 800072d8 <_ZN15MemoryAllocator14allocated_listE>
    80001d8c:	04078863          	beqz	a5,80001ddc <_ZN15MemoryAllocator8allocateEm+0xd8>
                current->next = allocated_list;
    80001d90:	00f53423          	sd	a5,8(a0)
                allocated_list = current;
    80001d94:	00005797          	auipc	a5,0x5
    80001d98:	54a7b223          	sd	a0,1348(a5) # 800072d8 <_ZN15MemoryAllocator14allocated_listE>
            void *userPtr = (Block *) ((uint64 *) current + sizeof(Block));
    80001d9c:	08050513          	addi	a0,a0,128
    }

    // No block was found
    return nullptr;
}
    80001da0:	00813403          	ld	s0,8(sp)
    80001da4:	01010113          	addi	sp,sp,16
    80001da8:	00008067          	ret
                free_list = current->next;
    80001dac:	00853783          	ld	a5,8(a0)
    80001db0:	00005597          	auipc	a1,0x5
    80001db4:	52f5b023          	sd	a5,1312(a1) # 800072d0 <_ZN15MemoryAllocator9free_listE>
    80001db8:	f91ff06f          	j	80001d48 <_ZN15MemoryAllocator8allocateEm+0x44>
                    free_list = newBlock;
    80001dbc:	00005797          	auipc	a5,0x5
    80001dc0:	50c7ba23          	sd	a2,1300(a5) # 800072d0 <_ZN15MemoryAllocator9free_listE>
                    newBlock->next = nullptr;
    80001dc4:	00063423          	sd	zero,8(a2)
    80001dc8:	fbdff06f          	j	80001d84 <_ZN15MemoryAllocator8allocateEm+0x80>
                    newBlock->next = free_list;
    80001dcc:	00f63423          	sd	a5,8(a2)
                    free_list = newBlock;
    80001dd0:	00005797          	auipc	a5,0x5
    80001dd4:	50c7b023          	sd	a2,1280(a5) # 800072d0 <_ZN15MemoryAllocator9free_listE>
    80001dd8:	fadff06f          	j	80001d84 <_ZN15MemoryAllocator8allocateEm+0x80>
                allocated_list = current;
    80001ddc:	00005797          	auipc	a5,0x5
    80001de0:	4ea7be23          	sd	a0,1276(a5) # 800072d8 <_ZN15MemoryAllocator14allocated_listE>
                allocated_list->next = nullptr;
    80001de4:	00053423          	sd	zero,8(a0)
    80001de8:	fb5ff06f          	j	80001d9c <_ZN15MemoryAllocator8allocateEm+0x98>

0000000080001dec <_ZN15MemoryAllocator10deallocateEPv>:

// Deallocate memory
int MemoryAllocator::deallocate(void *ptr) {
    80001dec:	ff010113          	addi	sp,sp,-16
    80001df0:	00813423          	sd	s0,8(sp)
    80001df4:	01010413          	addi	s0,sp,16
    Block *block = (Block *) ((uint64 *) ptr - sizeof(Block));
    80001df8:	f8050713          	addi	a4,a0,-128
    Block *tmpPrev = nullptr;
    Block *tmp = allocated_list;
    80001dfc:	00005797          	auipc	a5,0x5
    80001e00:	4dc7b783          	ld	a5,1244(a5) # 800072d8 <_ZN15MemoryAllocator14allocated_listE>
    Block *tmpPrev = nullptr;
    80001e04:	00000693          	li	a3,0
    uint8 flag = 0;

    //Check if the block given was previously allocated
    while (tmp) {
    80001e08:	00078a63          	beqz	a5,80001e1c <_ZN15MemoryAllocator10deallocateEPv+0x30>
        if (tmp == block) {
    80001e0c:	04e78263          	beq	a5,a4,80001e50 <_ZN15MemoryAllocator10deallocateEPv+0x64>
            flag = 1;
            break;
        }
        tmpPrev = tmp;
    80001e10:	00078693          	mv	a3,a5
        tmp = tmp->next;
    80001e14:	0087b783          	ld	a5,8(a5)
    while (tmp) {
    80001e18:	ff1ff06f          	j	80001e08 <_ZN15MemoryAllocator10deallocateEPv+0x1c>
    uint8 flag = 0;
    80001e1c:	00000613          	li	a2,0
    }
    if (flag == 0) return -1;
    80001e20:	0e060263          	beqz	a2,80001f04 <_ZN15MemoryAllocator10deallocateEPv+0x118>

    // Found a block, remove it from the allocated list
    if (tmpPrev != nullptr) {
    80001e24:	02068a63          	beqz	a3,80001e58 <_ZN15MemoryAllocator10deallocateEPv+0x6c>
        tmpPrev->next = tmp->next;
    80001e28:	0087b783          	ld	a5,8(a5)
    80001e2c:	00f6b423          	sd	a5,8(a3)
        allocated_list = tmp->next;
    }


    Block *prev = nullptr;
    Block *current = free_list;
    80001e30:	00005797          	auipc	a5,0x5
    80001e34:	4a07b783          	ld	a5,1184(a5) # 800072d0 <_ZN15MemoryAllocator9free_listE>
    Block *prev = nullptr;
    80001e38:	00000693          	li	a3,0

    // Add it to the free_list
    while (current != nullptr) {
    80001e3c:	02078c63          	beqz	a5,80001e74 <_ZN15MemoryAllocator10deallocateEPv+0x88>
        if ((uint64 *) block < (uint64 *) current) {
    80001e40:	02f76463          	bltu	a4,a5,80001e68 <_ZN15MemoryAllocator10deallocateEPv+0x7c>
            } else {
                free_list = block;
            }
            break;
        }
        prev = current;
    80001e44:	00078693          	mv	a3,a5
        current = current->next;
    80001e48:	0087b783          	ld	a5,8(a5)
    while (current != nullptr) {
    80001e4c:	ff1ff06f          	j	80001e3c <_ZN15MemoryAllocator10deallocateEPv+0x50>
            flag = 1;
    80001e50:	00100613          	li	a2,1
    80001e54:	fcdff06f          	j	80001e20 <_ZN15MemoryAllocator10deallocateEPv+0x34>
        allocated_list = tmp->next;
    80001e58:	0087b783          	ld	a5,8(a5)
    80001e5c:	00005697          	auipc	a3,0x5
    80001e60:	46f6be23          	sd	a5,1148(a3) # 800072d8 <_ZN15MemoryAllocator14allocated_listE>
    80001e64:	fcdff06f          	j	80001e30 <_ZN15MemoryAllocator10deallocateEPv+0x44>
            block->next = current;
    80001e68:	f8f53423          	sd	a5,-120(a0)
            if (prev != nullptr) {
    80001e6c:	04068463          	beqz	a3,80001eb4 <_ZN15MemoryAllocator10deallocateEPv+0xc8>
                prev->next = block;
    80001e70:	00e6b423          	sd	a4,8(a3)
    }
    if (current == nullptr) {
    80001e74:	04078663          	beqz	a5,80001ec0 <_ZN15MemoryAllocator10deallocateEPv+0xd4>
        //current = block;
        block->next = nullptr;
    }

    //Merge it with neighbour blocks if possible
    if (prev != nullptr) {
    80001e78:	00068a63          	beqz	a3,80001e8c <_ZN15MemoryAllocator10deallocateEPv+0xa0>
        if ((uint64 *) prev + prev->size == (uint64 *) block) {
    80001e7c:	0006b603          	ld	a2,0(a3)
    80001e80:	00361793          	slli	a5,a2,0x3
    80001e84:	00f687b3          	add	a5,a3,a5
    80001e88:	04e78263          	beq	a5,a4,80001ecc <_ZN15MemoryAllocator10deallocateEPv+0xe0>
            prev->size = prev->size + block->size;
            prev->next = block->next;
            block = prev;
        }
    }
    if (block->next != nullptr) {
    80001e8c:	00873783          	ld	a5,8(a4)
    80001e90:	06078e63          	beqz	a5,80001f0c <_ZN15MemoryAllocator10deallocateEPv+0x120>
        if ((uint64 *) block + block->size == (uint64 *) block->next) {
    80001e94:	00073603          	ld	a2,0(a4)
    80001e98:	00361693          	slli	a3,a2,0x3
    80001e9c:	00d706b3          	add	a3,a4,a3
    80001ea0:	04d78463          	beq	a5,a3,80001ee8 <_ZN15MemoryAllocator10deallocateEPv+0xfc>
            block->size += block->next->size;
            block->next = block->next->next;
        }
    }

    return 0;
    80001ea4:	00000513          	li	a0,0

}
    80001ea8:	00813403          	ld	s0,8(sp)
    80001eac:	01010113          	addi	sp,sp,16
    80001eb0:	00008067          	ret
                free_list = block;
    80001eb4:	00005617          	auipc	a2,0x5
    80001eb8:	40e63e23          	sd	a4,1052(a2) # 800072d0 <_ZN15MemoryAllocator9free_listE>
    80001ebc:	fb9ff06f          	j	80001e74 <_ZN15MemoryAllocator10deallocateEPv+0x88>
        prev->next = block;
    80001ec0:	00e6b423          	sd	a4,8(a3)
        block->next = nullptr;
    80001ec4:	f8053423          	sd	zero,-120(a0)
    80001ec8:	fb1ff06f          	j	80001e78 <_ZN15MemoryAllocator10deallocateEPv+0x8c>
            prev->size = prev->size + block->size;
    80001ecc:	f8053783          	ld	a5,-128(a0)
    80001ed0:	00f60633          	add	a2,a2,a5
    80001ed4:	00c6b023          	sd	a2,0(a3)
            prev->next = block->next;
    80001ed8:	f8853783          	ld	a5,-120(a0)
    80001edc:	00f6b423          	sd	a5,8(a3)
            block = prev;
    80001ee0:	00068713          	mv	a4,a3
    80001ee4:	fa9ff06f          	j	80001e8c <_ZN15MemoryAllocator10deallocateEPv+0xa0>
            block->size += block->next->size;
    80001ee8:	0007b683          	ld	a3,0(a5)
    80001eec:	00d60633          	add	a2,a2,a3
    80001ef0:	00c73023          	sd	a2,0(a4)
            block->next = block->next->next;
    80001ef4:	0087b783          	ld	a5,8(a5)
    80001ef8:	00f73423          	sd	a5,8(a4)
    return 0;
    80001efc:	00000513          	li	a0,0
    80001f00:	fa9ff06f          	j	80001ea8 <_ZN15MemoryAllocator10deallocateEPv+0xbc>
    if (flag == 0) return -1;
    80001f04:	fff00513          	li	a0,-1
    80001f08:	fa1ff06f          	j	80001ea8 <_ZN15MemoryAllocator10deallocateEPv+0xbc>
    return 0;
    80001f0c:	00000513          	li	a0,0
    80001f10:	f99ff06f          	j	80001ea8 <_ZN15MemoryAllocator10deallocateEPv+0xbc>

0000000080001f14 <_Z4putcc>:
//
//    while (--i >= 0)
//        __putc(buf[i]);
//}

void putc(char c){
    80001f14:	ff010113          	addi	sp,sp,-16
    80001f18:	00113423          	sd	ra,8(sp)
    80001f1c:	00813023          	sd	s0,0(sp)
    80001f20:	01010413          	addi	s0,sp,16
    __putc(c);
    80001f24:	00004097          	auipc	ra,0x4
    80001f28:	978080e7          	jalr	-1672(ra) # 8000589c <__putc>
}
    80001f2c:	00813083          	ld	ra,8(sp)
    80001f30:	00013403          	ld	s0,0(sp)
    80001f34:	01010113          	addi	sp,sp,16
    80001f38:	00008067          	ret

0000000080001f3c <_Z4getcv>:

char getc(){
    80001f3c:	ff010113          	addi	sp,sp,-16
    80001f40:	00113423          	sd	ra,8(sp)
    80001f44:	00813023          	sd	s0,0(sp)
    80001f48:	01010413          	addi	s0,sp,16
    return __getc();
    80001f4c:	00004097          	auipc	ra,0x4
    80001f50:	98c080e7          	jalr	-1652(ra) # 800058d8 <__getc>
    80001f54:	00813083          	ld	ra,8(sp)
    80001f58:	00013403          	ld	s0,0(sp)
    80001f5c:	01010113          	addi	sp,sp,16
    80001f60:	00008067          	ret

0000000080001f64 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80001f64:	fe010113          	addi	sp,sp,-32
    80001f68:	00113c23          	sd	ra,24(sp)
    80001f6c:	00813823          	sd	s0,16(sp)
    80001f70:	00913423          	sd	s1,8(sp)
    80001f74:	01213023          	sd	s2,0(sp)
    80001f78:	02010413          	addi	s0,sp,32
    80001f7c:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80001f80:	00100793          	li	a5,1
    80001f84:	02a7f863          	bgeu	a5,a0,80001fb4 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80001f88:	00a00793          	li	a5,10
    80001f8c:	02f577b3          	remu	a5,a0,a5
    80001f90:	02078e63          	beqz	a5,80001fcc <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80001f94:	fff48513          	addi	a0,s1,-1
    80001f98:	00000097          	auipc	ra,0x0
    80001f9c:	fcc080e7          	jalr	-52(ra) # 80001f64 <_ZL9fibonaccim>
    80001fa0:	00050913          	mv	s2,a0
    80001fa4:	ffe48513          	addi	a0,s1,-2
    80001fa8:	00000097          	auipc	ra,0x0
    80001fac:	fbc080e7          	jalr	-68(ra) # 80001f64 <_ZL9fibonaccim>
    80001fb0:	00a90533          	add	a0,s2,a0
}
    80001fb4:	01813083          	ld	ra,24(sp)
    80001fb8:	01013403          	ld	s0,16(sp)
    80001fbc:	00813483          	ld	s1,8(sp)
    80001fc0:	00013903          	ld	s2,0(sp)
    80001fc4:	02010113          	addi	sp,sp,32
    80001fc8:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80001fcc:	fffff097          	auipc	ra,0xfffff
    80001fd0:	3b0080e7          	jalr	944(ra) # 8000137c <_Z15thread_dispatchv>
    80001fd4:	fc1ff06f          	j	80001f94 <_ZL9fibonaccim+0x30>

0000000080001fd8 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    80001fd8:	fe010113          	addi	sp,sp,-32
    80001fdc:	00113c23          	sd	ra,24(sp)
    80001fe0:	00813823          	sd	s0,16(sp)
    80001fe4:	00913423          	sd	s1,8(sp)
    80001fe8:	01213023          	sd	s2,0(sp)
    80001fec:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80001ff0:	00000913          	li	s2,0
    80001ff4:	0380006f          	j	8000202c <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80001ff8:	fffff097          	auipc	ra,0xfffff
    80001ffc:	384080e7          	jalr	900(ra) # 8000137c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80002000:	00148493          	addi	s1,s1,1
    80002004:	000027b7          	lui	a5,0x2
    80002008:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000200c:	0097ee63          	bltu	a5,s1,80002028 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80002010:	00000713          	li	a4,0
    80002014:	000077b7          	lui	a5,0x7
    80002018:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000201c:	fce7eee3          	bltu	a5,a4,80001ff8 <_ZN7WorkerA11workerBodyAEPv+0x20>
    80002020:	00170713          	addi	a4,a4,1
    80002024:	ff1ff06f          	j	80002014 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80002028:	00190913          	addi	s2,s2,1
    8000202c:	00900793          	li	a5,9
    80002030:	0527e063          	bltu	a5,s2,80002070 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80002034:	00004517          	auipc	a0,0x4
    80002038:	03c50513          	addi	a0,a0,60 # 80006070 <CONSOLE_STATUS+0x60>
    8000203c:	00001097          	auipc	ra,0x1
    80002040:	e9c080e7          	jalr	-356(ra) # 80002ed8 <_Z11printStringPKc>
    80002044:	00000613          	li	a2,0
    80002048:	00a00593          	li	a1,10
    8000204c:	0009051b          	sext.w	a0,s2
    80002050:	00001097          	auipc	ra,0x1
    80002054:	038080e7          	jalr	56(ra) # 80003088 <_Z8printIntiii>
    80002058:	00004517          	auipc	a0,0x4
    8000205c:	28050513          	addi	a0,a0,640 # 800062d8 <CONSOLE_STATUS+0x2c8>
    80002060:	00001097          	auipc	ra,0x1
    80002064:	e78080e7          	jalr	-392(ra) # 80002ed8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80002068:	00000493          	li	s1,0
    8000206c:	f99ff06f          	j	80002004 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80002070:	00004517          	auipc	a0,0x4
    80002074:	00850513          	addi	a0,a0,8 # 80006078 <CONSOLE_STATUS+0x68>
    80002078:	00001097          	auipc	ra,0x1
    8000207c:	e60080e7          	jalr	-416(ra) # 80002ed8 <_Z11printStringPKc>
    finishedA = true;
    80002080:	00100793          	li	a5,1
    80002084:	00005717          	auipc	a4,0x5
    80002088:	24f70e23          	sb	a5,604(a4) # 800072e0 <_ZL9finishedA>
}
    8000208c:	01813083          	ld	ra,24(sp)
    80002090:	01013403          	ld	s0,16(sp)
    80002094:	00813483          	ld	s1,8(sp)
    80002098:	00013903          	ld	s2,0(sp)
    8000209c:	02010113          	addi	sp,sp,32
    800020a0:	00008067          	ret

00000000800020a4 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    800020a4:	fe010113          	addi	sp,sp,-32
    800020a8:	00113c23          	sd	ra,24(sp)
    800020ac:	00813823          	sd	s0,16(sp)
    800020b0:	00913423          	sd	s1,8(sp)
    800020b4:	01213023          	sd	s2,0(sp)
    800020b8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800020bc:	00000913          	li	s2,0
    800020c0:	0380006f          	j	800020f8 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    800020c4:	fffff097          	auipc	ra,0xfffff
    800020c8:	2b8080e7          	jalr	696(ra) # 8000137c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800020cc:	00148493          	addi	s1,s1,1
    800020d0:	000027b7          	lui	a5,0x2
    800020d4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800020d8:	0097ee63          	bltu	a5,s1,800020f4 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800020dc:	00000713          	li	a4,0
    800020e0:	000077b7          	lui	a5,0x7
    800020e4:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800020e8:	fce7eee3          	bltu	a5,a4,800020c4 <_ZN7WorkerB11workerBodyBEPv+0x20>
    800020ec:	00170713          	addi	a4,a4,1
    800020f0:	ff1ff06f          	j	800020e0 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    800020f4:	00190913          	addi	s2,s2,1
    800020f8:	00f00793          	li	a5,15
    800020fc:	0527e063          	bltu	a5,s2,8000213c <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80002100:	00004517          	auipc	a0,0x4
    80002104:	f8850513          	addi	a0,a0,-120 # 80006088 <CONSOLE_STATUS+0x78>
    80002108:	00001097          	auipc	ra,0x1
    8000210c:	dd0080e7          	jalr	-560(ra) # 80002ed8 <_Z11printStringPKc>
    80002110:	00000613          	li	a2,0
    80002114:	00a00593          	li	a1,10
    80002118:	0009051b          	sext.w	a0,s2
    8000211c:	00001097          	auipc	ra,0x1
    80002120:	f6c080e7          	jalr	-148(ra) # 80003088 <_Z8printIntiii>
    80002124:	00004517          	auipc	a0,0x4
    80002128:	1b450513          	addi	a0,a0,436 # 800062d8 <CONSOLE_STATUS+0x2c8>
    8000212c:	00001097          	auipc	ra,0x1
    80002130:	dac080e7          	jalr	-596(ra) # 80002ed8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80002134:	00000493          	li	s1,0
    80002138:	f99ff06f          	j	800020d0 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    8000213c:	00004517          	auipc	a0,0x4
    80002140:	f5450513          	addi	a0,a0,-172 # 80006090 <CONSOLE_STATUS+0x80>
    80002144:	00001097          	auipc	ra,0x1
    80002148:	d94080e7          	jalr	-620(ra) # 80002ed8 <_Z11printStringPKc>
    finishedB = true;
    8000214c:	00100793          	li	a5,1
    80002150:	00005717          	auipc	a4,0x5
    80002154:	18f708a3          	sb	a5,401(a4) # 800072e1 <_ZL9finishedB>
    thread_dispatch();
    80002158:	fffff097          	auipc	ra,0xfffff
    8000215c:	224080e7          	jalr	548(ra) # 8000137c <_Z15thread_dispatchv>
}
    80002160:	01813083          	ld	ra,24(sp)
    80002164:	01013403          	ld	s0,16(sp)
    80002168:	00813483          	ld	s1,8(sp)
    8000216c:	00013903          	ld	s2,0(sp)
    80002170:	02010113          	addi	sp,sp,32
    80002174:	00008067          	ret

0000000080002178 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80002178:	fe010113          	addi	sp,sp,-32
    8000217c:	00113c23          	sd	ra,24(sp)
    80002180:	00813823          	sd	s0,16(sp)
    80002184:	00913423          	sd	s1,8(sp)
    80002188:	01213023          	sd	s2,0(sp)
    8000218c:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80002190:	00000493          	li	s1,0
    80002194:	0400006f          	j	800021d4 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80002198:	00004517          	auipc	a0,0x4
    8000219c:	f0850513          	addi	a0,a0,-248 # 800060a0 <CONSOLE_STATUS+0x90>
    800021a0:	00001097          	auipc	ra,0x1
    800021a4:	d38080e7          	jalr	-712(ra) # 80002ed8 <_Z11printStringPKc>
    800021a8:	00000613          	li	a2,0
    800021ac:	00a00593          	li	a1,10
    800021b0:	00048513          	mv	a0,s1
    800021b4:	00001097          	auipc	ra,0x1
    800021b8:	ed4080e7          	jalr	-300(ra) # 80003088 <_Z8printIntiii>
    800021bc:	00004517          	auipc	a0,0x4
    800021c0:	11c50513          	addi	a0,a0,284 # 800062d8 <CONSOLE_STATUS+0x2c8>
    800021c4:	00001097          	auipc	ra,0x1
    800021c8:	d14080e7          	jalr	-748(ra) # 80002ed8 <_Z11printStringPKc>
    for (; i < 3; i++) {
    800021cc:	0014849b          	addiw	s1,s1,1
    800021d0:	0ff4f493          	andi	s1,s1,255
    800021d4:	00200793          	li	a5,2
    800021d8:	fc97f0e3          	bgeu	a5,s1,80002198 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    800021dc:	00004517          	auipc	a0,0x4
    800021e0:	ecc50513          	addi	a0,a0,-308 # 800060a8 <CONSOLE_STATUS+0x98>
    800021e4:	00001097          	auipc	ra,0x1
    800021e8:	cf4080e7          	jalr	-780(ra) # 80002ed8 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800021ec:	00700313          	li	t1,7
    thread_dispatch();
    800021f0:	fffff097          	auipc	ra,0xfffff
    800021f4:	18c080e7          	jalr	396(ra) # 8000137c <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800021f8:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    800021fc:	00004517          	auipc	a0,0x4
    80002200:	ebc50513          	addi	a0,a0,-324 # 800060b8 <CONSOLE_STATUS+0xa8>
    80002204:	00001097          	auipc	ra,0x1
    80002208:	cd4080e7          	jalr	-812(ra) # 80002ed8 <_Z11printStringPKc>
    8000220c:	00000613          	li	a2,0
    80002210:	00a00593          	li	a1,10
    80002214:	0009051b          	sext.w	a0,s2
    80002218:	00001097          	auipc	ra,0x1
    8000221c:	e70080e7          	jalr	-400(ra) # 80003088 <_Z8printIntiii>
    80002220:	00004517          	auipc	a0,0x4
    80002224:	0b850513          	addi	a0,a0,184 # 800062d8 <CONSOLE_STATUS+0x2c8>
    80002228:	00001097          	auipc	ra,0x1
    8000222c:	cb0080e7          	jalr	-848(ra) # 80002ed8 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80002230:	00c00513          	li	a0,12
    80002234:	00000097          	auipc	ra,0x0
    80002238:	d30080e7          	jalr	-720(ra) # 80001f64 <_ZL9fibonaccim>
    8000223c:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80002240:	00004517          	auipc	a0,0x4
    80002244:	e8050513          	addi	a0,a0,-384 # 800060c0 <CONSOLE_STATUS+0xb0>
    80002248:	00001097          	auipc	ra,0x1
    8000224c:	c90080e7          	jalr	-880(ra) # 80002ed8 <_Z11printStringPKc>
    80002250:	00000613          	li	a2,0
    80002254:	00a00593          	li	a1,10
    80002258:	0009051b          	sext.w	a0,s2
    8000225c:	00001097          	auipc	ra,0x1
    80002260:	e2c080e7          	jalr	-468(ra) # 80003088 <_Z8printIntiii>
    80002264:	00004517          	auipc	a0,0x4
    80002268:	07450513          	addi	a0,a0,116 # 800062d8 <CONSOLE_STATUS+0x2c8>
    8000226c:	00001097          	auipc	ra,0x1
    80002270:	c6c080e7          	jalr	-916(ra) # 80002ed8 <_Z11printStringPKc>
    80002274:	0400006f          	j	800022b4 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80002278:	00004517          	auipc	a0,0x4
    8000227c:	e2850513          	addi	a0,a0,-472 # 800060a0 <CONSOLE_STATUS+0x90>
    80002280:	00001097          	auipc	ra,0x1
    80002284:	c58080e7          	jalr	-936(ra) # 80002ed8 <_Z11printStringPKc>
    80002288:	00000613          	li	a2,0
    8000228c:	00a00593          	li	a1,10
    80002290:	00048513          	mv	a0,s1
    80002294:	00001097          	auipc	ra,0x1
    80002298:	df4080e7          	jalr	-524(ra) # 80003088 <_Z8printIntiii>
    8000229c:	00004517          	auipc	a0,0x4
    800022a0:	03c50513          	addi	a0,a0,60 # 800062d8 <CONSOLE_STATUS+0x2c8>
    800022a4:	00001097          	auipc	ra,0x1
    800022a8:	c34080e7          	jalr	-972(ra) # 80002ed8 <_Z11printStringPKc>
    for (; i < 6; i++) {
    800022ac:	0014849b          	addiw	s1,s1,1
    800022b0:	0ff4f493          	andi	s1,s1,255
    800022b4:	00500793          	li	a5,5
    800022b8:	fc97f0e3          	bgeu	a5,s1,80002278 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    800022bc:	00004517          	auipc	a0,0x4
    800022c0:	dbc50513          	addi	a0,a0,-580 # 80006078 <CONSOLE_STATUS+0x68>
    800022c4:	00001097          	auipc	ra,0x1
    800022c8:	c14080e7          	jalr	-1004(ra) # 80002ed8 <_Z11printStringPKc>
    finishedC = true;
    800022cc:	00100793          	li	a5,1
    800022d0:	00005717          	auipc	a4,0x5
    800022d4:	00f70923          	sb	a5,18(a4) # 800072e2 <_ZL9finishedC>
    thread_dispatch();
    800022d8:	fffff097          	auipc	ra,0xfffff
    800022dc:	0a4080e7          	jalr	164(ra) # 8000137c <_Z15thread_dispatchv>
}
    800022e0:	01813083          	ld	ra,24(sp)
    800022e4:	01013403          	ld	s0,16(sp)
    800022e8:	00813483          	ld	s1,8(sp)
    800022ec:	00013903          	ld	s2,0(sp)
    800022f0:	02010113          	addi	sp,sp,32
    800022f4:	00008067          	ret

00000000800022f8 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    800022f8:	fe010113          	addi	sp,sp,-32
    800022fc:	00113c23          	sd	ra,24(sp)
    80002300:	00813823          	sd	s0,16(sp)
    80002304:	00913423          	sd	s1,8(sp)
    80002308:	01213023          	sd	s2,0(sp)
    8000230c:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80002310:	00a00493          	li	s1,10
    80002314:	0400006f          	j	80002354 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80002318:	00004517          	auipc	a0,0x4
    8000231c:	db850513          	addi	a0,a0,-584 # 800060d0 <CONSOLE_STATUS+0xc0>
    80002320:	00001097          	auipc	ra,0x1
    80002324:	bb8080e7          	jalr	-1096(ra) # 80002ed8 <_Z11printStringPKc>
    80002328:	00000613          	li	a2,0
    8000232c:	00a00593          	li	a1,10
    80002330:	00048513          	mv	a0,s1
    80002334:	00001097          	auipc	ra,0x1
    80002338:	d54080e7          	jalr	-684(ra) # 80003088 <_Z8printIntiii>
    8000233c:	00004517          	auipc	a0,0x4
    80002340:	f9c50513          	addi	a0,a0,-100 # 800062d8 <CONSOLE_STATUS+0x2c8>
    80002344:	00001097          	auipc	ra,0x1
    80002348:	b94080e7          	jalr	-1132(ra) # 80002ed8 <_Z11printStringPKc>
    for (; i < 13; i++) {
    8000234c:	0014849b          	addiw	s1,s1,1
    80002350:	0ff4f493          	andi	s1,s1,255
    80002354:	00c00793          	li	a5,12
    80002358:	fc97f0e3          	bgeu	a5,s1,80002318 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    8000235c:	00004517          	auipc	a0,0x4
    80002360:	d7c50513          	addi	a0,a0,-644 # 800060d8 <CONSOLE_STATUS+0xc8>
    80002364:	00001097          	auipc	ra,0x1
    80002368:	b74080e7          	jalr	-1164(ra) # 80002ed8 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    8000236c:	00500313          	li	t1,5
    thread_dispatch();
    80002370:	fffff097          	auipc	ra,0xfffff
    80002374:	00c080e7          	jalr	12(ra) # 8000137c <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80002378:	01000513          	li	a0,16
    8000237c:	00000097          	auipc	ra,0x0
    80002380:	be8080e7          	jalr	-1048(ra) # 80001f64 <_ZL9fibonaccim>
    80002384:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80002388:	00004517          	auipc	a0,0x4
    8000238c:	d6050513          	addi	a0,a0,-672 # 800060e8 <CONSOLE_STATUS+0xd8>
    80002390:	00001097          	auipc	ra,0x1
    80002394:	b48080e7          	jalr	-1208(ra) # 80002ed8 <_Z11printStringPKc>
    80002398:	00000613          	li	a2,0
    8000239c:	00a00593          	li	a1,10
    800023a0:	0009051b          	sext.w	a0,s2
    800023a4:	00001097          	auipc	ra,0x1
    800023a8:	ce4080e7          	jalr	-796(ra) # 80003088 <_Z8printIntiii>
    800023ac:	00004517          	auipc	a0,0x4
    800023b0:	f2c50513          	addi	a0,a0,-212 # 800062d8 <CONSOLE_STATUS+0x2c8>
    800023b4:	00001097          	auipc	ra,0x1
    800023b8:	b24080e7          	jalr	-1244(ra) # 80002ed8 <_Z11printStringPKc>
    800023bc:	0400006f          	j	800023fc <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800023c0:	00004517          	auipc	a0,0x4
    800023c4:	d1050513          	addi	a0,a0,-752 # 800060d0 <CONSOLE_STATUS+0xc0>
    800023c8:	00001097          	auipc	ra,0x1
    800023cc:	b10080e7          	jalr	-1264(ra) # 80002ed8 <_Z11printStringPKc>
    800023d0:	00000613          	li	a2,0
    800023d4:	00a00593          	li	a1,10
    800023d8:	00048513          	mv	a0,s1
    800023dc:	00001097          	auipc	ra,0x1
    800023e0:	cac080e7          	jalr	-852(ra) # 80003088 <_Z8printIntiii>
    800023e4:	00004517          	auipc	a0,0x4
    800023e8:	ef450513          	addi	a0,a0,-268 # 800062d8 <CONSOLE_STATUS+0x2c8>
    800023ec:	00001097          	auipc	ra,0x1
    800023f0:	aec080e7          	jalr	-1300(ra) # 80002ed8 <_Z11printStringPKc>
    for (; i < 16; i++) {
    800023f4:	0014849b          	addiw	s1,s1,1
    800023f8:	0ff4f493          	andi	s1,s1,255
    800023fc:	00f00793          	li	a5,15
    80002400:	fc97f0e3          	bgeu	a5,s1,800023c0 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    80002404:	00004517          	auipc	a0,0x4
    80002408:	cf450513          	addi	a0,a0,-780 # 800060f8 <CONSOLE_STATUS+0xe8>
    8000240c:	00001097          	auipc	ra,0x1
    80002410:	acc080e7          	jalr	-1332(ra) # 80002ed8 <_Z11printStringPKc>
    finishedD = true;
    80002414:	00100793          	li	a5,1
    80002418:	00005717          	auipc	a4,0x5
    8000241c:	ecf705a3          	sb	a5,-309(a4) # 800072e3 <_ZL9finishedD>
    thread_dispatch();
    80002420:	fffff097          	auipc	ra,0xfffff
    80002424:	f5c080e7          	jalr	-164(ra) # 8000137c <_Z15thread_dispatchv>
}
    80002428:	01813083          	ld	ra,24(sp)
    8000242c:	01013403          	ld	s0,16(sp)
    80002430:	00813483          	ld	s1,8(sp)
    80002434:	00013903          	ld	s2,0(sp)
    80002438:	02010113          	addi	sp,sp,32
    8000243c:	00008067          	ret

0000000080002440 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80002440:	fc010113          	addi	sp,sp,-64
    80002444:	02113c23          	sd	ra,56(sp)
    80002448:	02813823          	sd	s0,48(sp)
    8000244c:	02913423          	sd	s1,40(sp)
    80002450:	03213023          	sd	s2,32(sp)
    80002454:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80002458:	02000513          	li	a0,32
    8000245c:	fffff097          	auipc	ra,0xfffff
    80002460:	37c080e7          	jalr	892(ra) # 800017d8 <_Znwm>
    80002464:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    80002468:	fffff097          	auipc	ra,0xfffff
    8000246c:	508080e7          	jalr	1288(ra) # 80001970 <_ZN6ThreadC1Ev>
    80002470:	00005797          	auipc	a5,0x5
    80002474:	d0078793          	addi	a5,a5,-768 # 80007170 <_ZTV7WorkerA+0x10>
    80002478:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    8000247c:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80002480:	00004517          	auipc	a0,0x4
    80002484:	c8850513          	addi	a0,a0,-888 # 80006108 <CONSOLE_STATUS+0xf8>
    80002488:	00001097          	auipc	ra,0x1
    8000248c:	a50080e7          	jalr	-1456(ra) # 80002ed8 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80002490:	02000513          	li	a0,32
    80002494:	fffff097          	auipc	ra,0xfffff
    80002498:	344080e7          	jalr	836(ra) # 800017d8 <_Znwm>
    8000249c:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    800024a0:	fffff097          	auipc	ra,0xfffff
    800024a4:	4d0080e7          	jalr	1232(ra) # 80001970 <_ZN6ThreadC1Ev>
    800024a8:	00005797          	auipc	a5,0x5
    800024ac:	cf078793          	addi	a5,a5,-784 # 80007198 <_ZTV7WorkerB+0x10>
    800024b0:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    800024b4:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    800024b8:	00004517          	auipc	a0,0x4
    800024bc:	c6850513          	addi	a0,a0,-920 # 80006120 <CONSOLE_STATUS+0x110>
    800024c0:	00001097          	auipc	ra,0x1
    800024c4:	a18080e7          	jalr	-1512(ra) # 80002ed8 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    800024c8:	02000513          	li	a0,32
    800024cc:	fffff097          	auipc	ra,0xfffff
    800024d0:	30c080e7          	jalr	780(ra) # 800017d8 <_Znwm>
    800024d4:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    800024d8:	fffff097          	auipc	ra,0xfffff
    800024dc:	498080e7          	jalr	1176(ra) # 80001970 <_ZN6ThreadC1Ev>
    800024e0:	00005797          	auipc	a5,0x5
    800024e4:	ce078793          	addi	a5,a5,-800 # 800071c0 <_ZTV7WorkerC+0x10>
    800024e8:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    800024ec:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    800024f0:	00004517          	auipc	a0,0x4
    800024f4:	c4850513          	addi	a0,a0,-952 # 80006138 <CONSOLE_STATUS+0x128>
    800024f8:	00001097          	auipc	ra,0x1
    800024fc:	9e0080e7          	jalr	-1568(ra) # 80002ed8 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80002500:	02000513          	li	a0,32
    80002504:	fffff097          	auipc	ra,0xfffff
    80002508:	2d4080e7          	jalr	724(ra) # 800017d8 <_Znwm>
    8000250c:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    80002510:	fffff097          	auipc	ra,0xfffff
    80002514:	460080e7          	jalr	1120(ra) # 80001970 <_ZN6ThreadC1Ev>
    80002518:	00005797          	auipc	a5,0x5
    8000251c:	cd078793          	addi	a5,a5,-816 # 800071e8 <_ZTV7WorkerD+0x10>
    80002520:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    80002524:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80002528:	00004517          	auipc	a0,0x4
    8000252c:	c2850513          	addi	a0,a0,-984 # 80006150 <CONSOLE_STATUS+0x140>
    80002530:	00001097          	auipc	ra,0x1
    80002534:	9a8080e7          	jalr	-1624(ra) # 80002ed8 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80002538:	00000493          	li	s1,0
    8000253c:	00300793          	li	a5,3
    80002540:	0297c663          	blt	a5,s1,8000256c <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    80002544:	00349793          	slli	a5,s1,0x3
    80002548:	fe040713          	addi	a4,s0,-32
    8000254c:	00f707b3          	add	a5,a4,a5
    80002550:	fe07b503          	ld	a0,-32(a5)
    80002554:	fffff097          	auipc	ra,0xfffff
    80002558:	498080e7          	jalr	1176(ra) # 800019ec <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    8000255c:	0014849b          	addiw	s1,s1,1
    80002560:	fddff06f          	j	8000253c <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80002564:	fffff097          	auipc	ra,0xfffff
    80002568:	4e4080e7          	jalr	1252(ra) # 80001a48 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    8000256c:	00005797          	auipc	a5,0x5
    80002570:	d747c783          	lbu	a5,-652(a5) # 800072e0 <_ZL9finishedA>
    80002574:	fe0788e3          	beqz	a5,80002564 <_Z20Threads_CPP_API_testv+0x124>
    80002578:	00005797          	auipc	a5,0x5
    8000257c:	d697c783          	lbu	a5,-663(a5) # 800072e1 <_ZL9finishedB>
    80002580:	fe0782e3          	beqz	a5,80002564 <_Z20Threads_CPP_API_testv+0x124>
    80002584:	00005797          	auipc	a5,0x5
    80002588:	d5e7c783          	lbu	a5,-674(a5) # 800072e2 <_ZL9finishedC>
    8000258c:	fc078ce3          	beqz	a5,80002564 <_Z20Threads_CPP_API_testv+0x124>
    80002590:	00005797          	auipc	a5,0x5
    80002594:	d537c783          	lbu	a5,-685(a5) # 800072e3 <_ZL9finishedD>
    80002598:	fc0786e3          	beqz	a5,80002564 <_Z20Threads_CPP_API_testv+0x124>
    8000259c:	fc040493          	addi	s1,s0,-64
    800025a0:	0080006f          	j	800025a8 <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    800025a4:	00848493          	addi	s1,s1,8
    800025a8:	fe040793          	addi	a5,s0,-32
    800025ac:	08f48663          	beq	s1,a5,80002638 <_Z20Threads_CPP_API_testv+0x1f8>
    800025b0:	0004b503          	ld	a0,0(s1)
    800025b4:	fe0508e3          	beqz	a0,800025a4 <_Z20Threads_CPP_API_testv+0x164>
    800025b8:	00053783          	ld	a5,0(a0)
    800025bc:	0087b783          	ld	a5,8(a5)
    800025c0:	000780e7          	jalr	a5
    800025c4:	fe1ff06f          	j	800025a4 <_Z20Threads_CPP_API_testv+0x164>
    800025c8:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    800025cc:	00048513          	mv	a0,s1
    800025d0:	fffff097          	auipc	ra,0xfffff
    800025d4:	258080e7          	jalr	600(ra) # 80001828 <_ZdlPv>
    800025d8:	00090513          	mv	a0,s2
    800025dc:	00006097          	auipc	ra,0x6
    800025e0:	dec080e7          	jalr	-532(ra) # 800083c8 <_Unwind_Resume>
    800025e4:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    800025e8:	00048513          	mv	a0,s1
    800025ec:	fffff097          	auipc	ra,0xfffff
    800025f0:	23c080e7          	jalr	572(ra) # 80001828 <_ZdlPv>
    800025f4:	00090513          	mv	a0,s2
    800025f8:	00006097          	auipc	ra,0x6
    800025fc:	dd0080e7          	jalr	-560(ra) # 800083c8 <_Unwind_Resume>
    80002600:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    80002604:	00048513          	mv	a0,s1
    80002608:	fffff097          	auipc	ra,0xfffff
    8000260c:	220080e7          	jalr	544(ra) # 80001828 <_ZdlPv>
    80002610:	00090513          	mv	a0,s2
    80002614:	00006097          	auipc	ra,0x6
    80002618:	db4080e7          	jalr	-588(ra) # 800083c8 <_Unwind_Resume>
    8000261c:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80002620:	00048513          	mv	a0,s1
    80002624:	fffff097          	auipc	ra,0xfffff
    80002628:	204080e7          	jalr	516(ra) # 80001828 <_ZdlPv>
    8000262c:	00090513          	mv	a0,s2
    80002630:	00006097          	auipc	ra,0x6
    80002634:	d98080e7          	jalr	-616(ra) # 800083c8 <_Unwind_Resume>
}
    80002638:	03813083          	ld	ra,56(sp)
    8000263c:	03013403          	ld	s0,48(sp)
    80002640:	02813483          	ld	s1,40(sp)
    80002644:	02013903          	ld	s2,32(sp)
    80002648:	04010113          	addi	sp,sp,64
    8000264c:	00008067          	ret

0000000080002650 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80002650:	ff010113          	addi	sp,sp,-16
    80002654:	00113423          	sd	ra,8(sp)
    80002658:	00813023          	sd	s0,0(sp)
    8000265c:	01010413          	addi	s0,sp,16
    80002660:	00005797          	auipc	a5,0x5
    80002664:	b1078793          	addi	a5,a5,-1264 # 80007170 <_ZTV7WorkerA+0x10>
    80002668:	00f53023          	sd	a5,0(a0)
    8000266c:	fffff097          	auipc	ra,0xfffff
    80002670:	20c080e7          	jalr	524(ra) # 80001878 <_ZN6ThreadD1Ev>
    80002674:	00813083          	ld	ra,8(sp)
    80002678:	00013403          	ld	s0,0(sp)
    8000267c:	01010113          	addi	sp,sp,16
    80002680:	00008067          	ret

0000000080002684 <_ZN7WorkerAD0Ev>:
    80002684:	fe010113          	addi	sp,sp,-32
    80002688:	00113c23          	sd	ra,24(sp)
    8000268c:	00813823          	sd	s0,16(sp)
    80002690:	00913423          	sd	s1,8(sp)
    80002694:	02010413          	addi	s0,sp,32
    80002698:	00050493          	mv	s1,a0
    8000269c:	00005797          	auipc	a5,0x5
    800026a0:	ad478793          	addi	a5,a5,-1324 # 80007170 <_ZTV7WorkerA+0x10>
    800026a4:	00f53023          	sd	a5,0(a0)
    800026a8:	fffff097          	auipc	ra,0xfffff
    800026ac:	1d0080e7          	jalr	464(ra) # 80001878 <_ZN6ThreadD1Ev>
    800026b0:	00048513          	mv	a0,s1
    800026b4:	fffff097          	auipc	ra,0xfffff
    800026b8:	174080e7          	jalr	372(ra) # 80001828 <_ZdlPv>
    800026bc:	01813083          	ld	ra,24(sp)
    800026c0:	01013403          	ld	s0,16(sp)
    800026c4:	00813483          	ld	s1,8(sp)
    800026c8:	02010113          	addi	sp,sp,32
    800026cc:	00008067          	ret

00000000800026d0 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    800026d0:	ff010113          	addi	sp,sp,-16
    800026d4:	00113423          	sd	ra,8(sp)
    800026d8:	00813023          	sd	s0,0(sp)
    800026dc:	01010413          	addi	s0,sp,16
    800026e0:	00005797          	auipc	a5,0x5
    800026e4:	ab878793          	addi	a5,a5,-1352 # 80007198 <_ZTV7WorkerB+0x10>
    800026e8:	00f53023          	sd	a5,0(a0)
    800026ec:	fffff097          	auipc	ra,0xfffff
    800026f0:	18c080e7          	jalr	396(ra) # 80001878 <_ZN6ThreadD1Ev>
    800026f4:	00813083          	ld	ra,8(sp)
    800026f8:	00013403          	ld	s0,0(sp)
    800026fc:	01010113          	addi	sp,sp,16
    80002700:	00008067          	ret

0000000080002704 <_ZN7WorkerBD0Ev>:
    80002704:	fe010113          	addi	sp,sp,-32
    80002708:	00113c23          	sd	ra,24(sp)
    8000270c:	00813823          	sd	s0,16(sp)
    80002710:	00913423          	sd	s1,8(sp)
    80002714:	02010413          	addi	s0,sp,32
    80002718:	00050493          	mv	s1,a0
    8000271c:	00005797          	auipc	a5,0x5
    80002720:	a7c78793          	addi	a5,a5,-1412 # 80007198 <_ZTV7WorkerB+0x10>
    80002724:	00f53023          	sd	a5,0(a0)
    80002728:	fffff097          	auipc	ra,0xfffff
    8000272c:	150080e7          	jalr	336(ra) # 80001878 <_ZN6ThreadD1Ev>
    80002730:	00048513          	mv	a0,s1
    80002734:	fffff097          	auipc	ra,0xfffff
    80002738:	0f4080e7          	jalr	244(ra) # 80001828 <_ZdlPv>
    8000273c:	01813083          	ld	ra,24(sp)
    80002740:	01013403          	ld	s0,16(sp)
    80002744:	00813483          	ld	s1,8(sp)
    80002748:	02010113          	addi	sp,sp,32
    8000274c:	00008067          	ret

0000000080002750 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80002750:	ff010113          	addi	sp,sp,-16
    80002754:	00113423          	sd	ra,8(sp)
    80002758:	00813023          	sd	s0,0(sp)
    8000275c:	01010413          	addi	s0,sp,16
    80002760:	00005797          	auipc	a5,0x5
    80002764:	a6078793          	addi	a5,a5,-1440 # 800071c0 <_ZTV7WorkerC+0x10>
    80002768:	00f53023          	sd	a5,0(a0)
    8000276c:	fffff097          	auipc	ra,0xfffff
    80002770:	10c080e7          	jalr	268(ra) # 80001878 <_ZN6ThreadD1Ev>
    80002774:	00813083          	ld	ra,8(sp)
    80002778:	00013403          	ld	s0,0(sp)
    8000277c:	01010113          	addi	sp,sp,16
    80002780:	00008067          	ret

0000000080002784 <_ZN7WorkerCD0Ev>:
    80002784:	fe010113          	addi	sp,sp,-32
    80002788:	00113c23          	sd	ra,24(sp)
    8000278c:	00813823          	sd	s0,16(sp)
    80002790:	00913423          	sd	s1,8(sp)
    80002794:	02010413          	addi	s0,sp,32
    80002798:	00050493          	mv	s1,a0
    8000279c:	00005797          	auipc	a5,0x5
    800027a0:	a2478793          	addi	a5,a5,-1500 # 800071c0 <_ZTV7WorkerC+0x10>
    800027a4:	00f53023          	sd	a5,0(a0)
    800027a8:	fffff097          	auipc	ra,0xfffff
    800027ac:	0d0080e7          	jalr	208(ra) # 80001878 <_ZN6ThreadD1Ev>
    800027b0:	00048513          	mv	a0,s1
    800027b4:	fffff097          	auipc	ra,0xfffff
    800027b8:	074080e7          	jalr	116(ra) # 80001828 <_ZdlPv>
    800027bc:	01813083          	ld	ra,24(sp)
    800027c0:	01013403          	ld	s0,16(sp)
    800027c4:	00813483          	ld	s1,8(sp)
    800027c8:	02010113          	addi	sp,sp,32
    800027cc:	00008067          	ret

00000000800027d0 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    800027d0:	ff010113          	addi	sp,sp,-16
    800027d4:	00113423          	sd	ra,8(sp)
    800027d8:	00813023          	sd	s0,0(sp)
    800027dc:	01010413          	addi	s0,sp,16
    800027e0:	00005797          	auipc	a5,0x5
    800027e4:	a0878793          	addi	a5,a5,-1528 # 800071e8 <_ZTV7WorkerD+0x10>
    800027e8:	00f53023          	sd	a5,0(a0)
    800027ec:	fffff097          	auipc	ra,0xfffff
    800027f0:	08c080e7          	jalr	140(ra) # 80001878 <_ZN6ThreadD1Ev>
    800027f4:	00813083          	ld	ra,8(sp)
    800027f8:	00013403          	ld	s0,0(sp)
    800027fc:	01010113          	addi	sp,sp,16
    80002800:	00008067          	ret

0000000080002804 <_ZN7WorkerDD0Ev>:
    80002804:	fe010113          	addi	sp,sp,-32
    80002808:	00113c23          	sd	ra,24(sp)
    8000280c:	00813823          	sd	s0,16(sp)
    80002810:	00913423          	sd	s1,8(sp)
    80002814:	02010413          	addi	s0,sp,32
    80002818:	00050493          	mv	s1,a0
    8000281c:	00005797          	auipc	a5,0x5
    80002820:	9cc78793          	addi	a5,a5,-1588 # 800071e8 <_ZTV7WorkerD+0x10>
    80002824:	00f53023          	sd	a5,0(a0)
    80002828:	fffff097          	auipc	ra,0xfffff
    8000282c:	050080e7          	jalr	80(ra) # 80001878 <_ZN6ThreadD1Ev>
    80002830:	00048513          	mv	a0,s1
    80002834:	fffff097          	auipc	ra,0xfffff
    80002838:	ff4080e7          	jalr	-12(ra) # 80001828 <_ZdlPv>
    8000283c:	01813083          	ld	ra,24(sp)
    80002840:	01013403          	ld	s0,16(sp)
    80002844:	00813483          	ld	s1,8(sp)
    80002848:	02010113          	addi	sp,sp,32
    8000284c:	00008067          	ret

0000000080002850 <_ZN7WorkerA3runEv>:
    void run() override {
    80002850:	ff010113          	addi	sp,sp,-16
    80002854:	00113423          	sd	ra,8(sp)
    80002858:	00813023          	sd	s0,0(sp)
    8000285c:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80002860:	00000593          	li	a1,0
    80002864:	fffff097          	auipc	ra,0xfffff
    80002868:	774080e7          	jalr	1908(ra) # 80001fd8 <_ZN7WorkerA11workerBodyAEPv>
    }
    8000286c:	00813083          	ld	ra,8(sp)
    80002870:	00013403          	ld	s0,0(sp)
    80002874:	01010113          	addi	sp,sp,16
    80002878:	00008067          	ret

000000008000287c <_ZN7WorkerB3runEv>:
    void run() override {
    8000287c:	ff010113          	addi	sp,sp,-16
    80002880:	00113423          	sd	ra,8(sp)
    80002884:	00813023          	sd	s0,0(sp)
    80002888:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    8000288c:	00000593          	li	a1,0
    80002890:	00000097          	auipc	ra,0x0
    80002894:	814080e7          	jalr	-2028(ra) # 800020a4 <_ZN7WorkerB11workerBodyBEPv>
    }
    80002898:	00813083          	ld	ra,8(sp)
    8000289c:	00013403          	ld	s0,0(sp)
    800028a0:	01010113          	addi	sp,sp,16
    800028a4:	00008067          	ret

00000000800028a8 <_ZN7WorkerC3runEv>:
    void run() override {
    800028a8:	ff010113          	addi	sp,sp,-16
    800028ac:	00113423          	sd	ra,8(sp)
    800028b0:	00813023          	sd	s0,0(sp)
    800028b4:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    800028b8:	00000593          	li	a1,0
    800028bc:	00000097          	auipc	ra,0x0
    800028c0:	8bc080e7          	jalr	-1860(ra) # 80002178 <_ZN7WorkerC11workerBodyCEPv>
    }
    800028c4:	00813083          	ld	ra,8(sp)
    800028c8:	00013403          	ld	s0,0(sp)
    800028cc:	01010113          	addi	sp,sp,16
    800028d0:	00008067          	ret

00000000800028d4 <_ZN7WorkerD3runEv>:
    void run() override {
    800028d4:	ff010113          	addi	sp,sp,-16
    800028d8:	00113423          	sd	ra,8(sp)
    800028dc:	00813023          	sd	s0,0(sp)
    800028e0:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    800028e4:	00000593          	li	a1,0
    800028e8:	00000097          	auipc	ra,0x0
    800028ec:	a10080e7          	jalr	-1520(ra) # 800022f8 <_ZN7WorkerD11workerBodyDEPv>
    }
    800028f0:	00813083          	ld	ra,8(sp)
    800028f4:	00013403          	ld	s0,0(sp)
    800028f8:	01010113          	addi	sp,sp,16
    800028fc:	00008067          	ret

0000000080002900 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80002900:	fe010113          	addi	sp,sp,-32
    80002904:	00113c23          	sd	ra,24(sp)
    80002908:	00813823          	sd	s0,16(sp)
    8000290c:	00913423          	sd	s1,8(sp)
    80002910:	01213023          	sd	s2,0(sp)
    80002914:	02010413          	addi	s0,sp,32
    80002918:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    8000291c:	00100793          	li	a5,1
    80002920:	02a7f863          	bgeu	a5,a0,80002950 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80002924:	00a00793          	li	a5,10
    80002928:	02f577b3          	remu	a5,a0,a5
    8000292c:	02078e63          	beqz	a5,80002968 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80002930:	fff48513          	addi	a0,s1,-1
    80002934:	00000097          	auipc	ra,0x0
    80002938:	fcc080e7          	jalr	-52(ra) # 80002900 <_ZL9fibonaccim>
    8000293c:	00050913          	mv	s2,a0
    80002940:	ffe48513          	addi	a0,s1,-2
    80002944:	00000097          	auipc	ra,0x0
    80002948:	fbc080e7          	jalr	-68(ra) # 80002900 <_ZL9fibonaccim>
    8000294c:	00a90533          	add	a0,s2,a0
}
    80002950:	01813083          	ld	ra,24(sp)
    80002954:	01013403          	ld	s0,16(sp)
    80002958:	00813483          	ld	s1,8(sp)
    8000295c:	00013903          	ld	s2,0(sp)
    80002960:	02010113          	addi	sp,sp,32
    80002964:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80002968:	fffff097          	auipc	ra,0xfffff
    8000296c:	a14080e7          	jalr	-1516(ra) # 8000137c <_Z15thread_dispatchv>
    80002970:	fc1ff06f          	j	80002930 <_ZL9fibonaccim+0x30>

0000000080002974 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80002974:	fe010113          	addi	sp,sp,-32
    80002978:	00113c23          	sd	ra,24(sp)
    8000297c:	00813823          	sd	s0,16(sp)
    80002980:	00913423          	sd	s1,8(sp)
    80002984:	01213023          	sd	s2,0(sp)
    80002988:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    8000298c:	00a00493          	li	s1,10
    80002990:	0400006f          	j	800029d0 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80002994:	00003517          	auipc	a0,0x3
    80002998:	73c50513          	addi	a0,a0,1852 # 800060d0 <CONSOLE_STATUS+0xc0>
    8000299c:	00000097          	auipc	ra,0x0
    800029a0:	53c080e7          	jalr	1340(ra) # 80002ed8 <_Z11printStringPKc>
    800029a4:	00000613          	li	a2,0
    800029a8:	00a00593          	li	a1,10
    800029ac:	00048513          	mv	a0,s1
    800029b0:	00000097          	auipc	ra,0x0
    800029b4:	6d8080e7          	jalr	1752(ra) # 80003088 <_Z8printIntiii>
    800029b8:	00004517          	auipc	a0,0x4
    800029bc:	92050513          	addi	a0,a0,-1760 # 800062d8 <CONSOLE_STATUS+0x2c8>
    800029c0:	00000097          	auipc	ra,0x0
    800029c4:	518080e7          	jalr	1304(ra) # 80002ed8 <_Z11printStringPKc>
    for (; i < 13; i++) {
    800029c8:	0014849b          	addiw	s1,s1,1
    800029cc:	0ff4f493          	andi	s1,s1,255
    800029d0:	00c00793          	li	a5,12
    800029d4:	fc97f0e3          	bgeu	a5,s1,80002994 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    800029d8:	00003517          	auipc	a0,0x3
    800029dc:	70050513          	addi	a0,a0,1792 # 800060d8 <CONSOLE_STATUS+0xc8>
    800029e0:	00000097          	auipc	ra,0x0
    800029e4:	4f8080e7          	jalr	1272(ra) # 80002ed8 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800029e8:	00500313          	li	t1,5
    thread_dispatch();
    800029ec:	fffff097          	auipc	ra,0xfffff
    800029f0:	990080e7          	jalr	-1648(ra) # 8000137c <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    800029f4:	01000513          	li	a0,16
    800029f8:	00000097          	auipc	ra,0x0
    800029fc:	f08080e7          	jalr	-248(ra) # 80002900 <_ZL9fibonaccim>
    80002a00:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80002a04:	00003517          	auipc	a0,0x3
    80002a08:	6e450513          	addi	a0,a0,1764 # 800060e8 <CONSOLE_STATUS+0xd8>
    80002a0c:	00000097          	auipc	ra,0x0
    80002a10:	4cc080e7          	jalr	1228(ra) # 80002ed8 <_Z11printStringPKc>
    80002a14:	00000613          	li	a2,0
    80002a18:	00a00593          	li	a1,10
    80002a1c:	0009051b          	sext.w	a0,s2
    80002a20:	00000097          	auipc	ra,0x0
    80002a24:	668080e7          	jalr	1640(ra) # 80003088 <_Z8printIntiii>
    80002a28:	00004517          	auipc	a0,0x4
    80002a2c:	8b050513          	addi	a0,a0,-1872 # 800062d8 <CONSOLE_STATUS+0x2c8>
    80002a30:	00000097          	auipc	ra,0x0
    80002a34:	4a8080e7          	jalr	1192(ra) # 80002ed8 <_Z11printStringPKc>
    80002a38:	0400006f          	j	80002a78 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80002a3c:	00003517          	auipc	a0,0x3
    80002a40:	69450513          	addi	a0,a0,1684 # 800060d0 <CONSOLE_STATUS+0xc0>
    80002a44:	00000097          	auipc	ra,0x0
    80002a48:	494080e7          	jalr	1172(ra) # 80002ed8 <_Z11printStringPKc>
    80002a4c:	00000613          	li	a2,0
    80002a50:	00a00593          	li	a1,10
    80002a54:	00048513          	mv	a0,s1
    80002a58:	00000097          	auipc	ra,0x0
    80002a5c:	630080e7          	jalr	1584(ra) # 80003088 <_Z8printIntiii>
    80002a60:	00004517          	auipc	a0,0x4
    80002a64:	87850513          	addi	a0,a0,-1928 # 800062d8 <CONSOLE_STATUS+0x2c8>
    80002a68:	00000097          	auipc	ra,0x0
    80002a6c:	470080e7          	jalr	1136(ra) # 80002ed8 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80002a70:	0014849b          	addiw	s1,s1,1
    80002a74:	0ff4f493          	andi	s1,s1,255
    80002a78:	00f00793          	li	a5,15
    80002a7c:	fc97f0e3          	bgeu	a5,s1,80002a3c <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80002a80:	00003517          	auipc	a0,0x3
    80002a84:	67850513          	addi	a0,a0,1656 # 800060f8 <CONSOLE_STATUS+0xe8>
    80002a88:	00000097          	auipc	ra,0x0
    80002a8c:	450080e7          	jalr	1104(ra) # 80002ed8 <_Z11printStringPKc>
    finishedD = true;
    80002a90:	00100793          	li	a5,1
    80002a94:	00005717          	auipc	a4,0x5
    80002a98:	84f70823          	sb	a5,-1968(a4) # 800072e4 <_ZL9finishedD>
    thread_dispatch();
    80002a9c:	fffff097          	auipc	ra,0xfffff
    80002aa0:	8e0080e7          	jalr	-1824(ra) # 8000137c <_Z15thread_dispatchv>
}
    80002aa4:	01813083          	ld	ra,24(sp)
    80002aa8:	01013403          	ld	s0,16(sp)
    80002aac:	00813483          	ld	s1,8(sp)
    80002ab0:	00013903          	ld	s2,0(sp)
    80002ab4:	02010113          	addi	sp,sp,32
    80002ab8:	00008067          	ret

0000000080002abc <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80002abc:	fe010113          	addi	sp,sp,-32
    80002ac0:	00113c23          	sd	ra,24(sp)
    80002ac4:	00813823          	sd	s0,16(sp)
    80002ac8:	00913423          	sd	s1,8(sp)
    80002acc:	01213023          	sd	s2,0(sp)
    80002ad0:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80002ad4:	00000493          	li	s1,0
    80002ad8:	0400006f          	j	80002b18 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80002adc:	00003517          	auipc	a0,0x3
    80002ae0:	5c450513          	addi	a0,a0,1476 # 800060a0 <CONSOLE_STATUS+0x90>
    80002ae4:	00000097          	auipc	ra,0x0
    80002ae8:	3f4080e7          	jalr	1012(ra) # 80002ed8 <_Z11printStringPKc>
    80002aec:	00000613          	li	a2,0
    80002af0:	00a00593          	li	a1,10
    80002af4:	00048513          	mv	a0,s1
    80002af8:	00000097          	auipc	ra,0x0
    80002afc:	590080e7          	jalr	1424(ra) # 80003088 <_Z8printIntiii>
    80002b00:	00003517          	auipc	a0,0x3
    80002b04:	7d850513          	addi	a0,a0,2008 # 800062d8 <CONSOLE_STATUS+0x2c8>
    80002b08:	00000097          	auipc	ra,0x0
    80002b0c:	3d0080e7          	jalr	976(ra) # 80002ed8 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80002b10:	0014849b          	addiw	s1,s1,1
    80002b14:	0ff4f493          	andi	s1,s1,255
    80002b18:	00200793          	li	a5,2
    80002b1c:	fc97f0e3          	bgeu	a5,s1,80002adc <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80002b20:	00003517          	auipc	a0,0x3
    80002b24:	58850513          	addi	a0,a0,1416 # 800060a8 <CONSOLE_STATUS+0x98>
    80002b28:	00000097          	auipc	ra,0x0
    80002b2c:	3b0080e7          	jalr	944(ra) # 80002ed8 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80002b30:	00700313          	li	t1,7
    thread_dispatch();
    80002b34:	fffff097          	auipc	ra,0xfffff
    80002b38:	848080e7          	jalr	-1976(ra) # 8000137c <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80002b3c:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80002b40:	00003517          	auipc	a0,0x3
    80002b44:	57850513          	addi	a0,a0,1400 # 800060b8 <CONSOLE_STATUS+0xa8>
    80002b48:	00000097          	auipc	ra,0x0
    80002b4c:	390080e7          	jalr	912(ra) # 80002ed8 <_Z11printStringPKc>
    80002b50:	00000613          	li	a2,0
    80002b54:	00a00593          	li	a1,10
    80002b58:	0009051b          	sext.w	a0,s2
    80002b5c:	00000097          	auipc	ra,0x0
    80002b60:	52c080e7          	jalr	1324(ra) # 80003088 <_Z8printIntiii>
    80002b64:	00003517          	auipc	a0,0x3
    80002b68:	77450513          	addi	a0,a0,1908 # 800062d8 <CONSOLE_STATUS+0x2c8>
    80002b6c:	00000097          	auipc	ra,0x0
    80002b70:	36c080e7          	jalr	876(ra) # 80002ed8 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80002b74:	00c00513          	li	a0,12
    80002b78:	00000097          	auipc	ra,0x0
    80002b7c:	d88080e7          	jalr	-632(ra) # 80002900 <_ZL9fibonaccim>
    80002b80:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80002b84:	00003517          	auipc	a0,0x3
    80002b88:	53c50513          	addi	a0,a0,1340 # 800060c0 <CONSOLE_STATUS+0xb0>
    80002b8c:	00000097          	auipc	ra,0x0
    80002b90:	34c080e7          	jalr	844(ra) # 80002ed8 <_Z11printStringPKc>
    80002b94:	00000613          	li	a2,0
    80002b98:	00a00593          	li	a1,10
    80002b9c:	0009051b          	sext.w	a0,s2
    80002ba0:	00000097          	auipc	ra,0x0
    80002ba4:	4e8080e7          	jalr	1256(ra) # 80003088 <_Z8printIntiii>
    80002ba8:	00003517          	auipc	a0,0x3
    80002bac:	73050513          	addi	a0,a0,1840 # 800062d8 <CONSOLE_STATUS+0x2c8>
    80002bb0:	00000097          	auipc	ra,0x0
    80002bb4:	328080e7          	jalr	808(ra) # 80002ed8 <_Z11printStringPKc>
    80002bb8:	0400006f          	j	80002bf8 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80002bbc:	00003517          	auipc	a0,0x3
    80002bc0:	4e450513          	addi	a0,a0,1252 # 800060a0 <CONSOLE_STATUS+0x90>
    80002bc4:	00000097          	auipc	ra,0x0
    80002bc8:	314080e7          	jalr	788(ra) # 80002ed8 <_Z11printStringPKc>
    80002bcc:	00000613          	li	a2,0
    80002bd0:	00a00593          	li	a1,10
    80002bd4:	00048513          	mv	a0,s1
    80002bd8:	00000097          	auipc	ra,0x0
    80002bdc:	4b0080e7          	jalr	1200(ra) # 80003088 <_Z8printIntiii>
    80002be0:	00003517          	auipc	a0,0x3
    80002be4:	6f850513          	addi	a0,a0,1784 # 800062d8 <CONSOLE_STATUS+0x2c8>
    80002be8:	00000097          	auipc	ra,0x0
    80002bec:	2f0080e7          	jalr	752(ra) # 80002ed8 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80002bf0:	0014849b          	addiw	s1,s1,1
    80002bf4:	0ff4f493          	andi	s1,s1,255
    80002bf8:	00500793          	li	a5,5
    80002bfc:	fc97f0e3          	bgeu	a5,s1,80002bbc <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80002c00:	00003517          	auipc	a0,0x3
    80002c04:	47850513          	addi	a0,a0,1144 # 80006078 <CONSOLE_STATUS+0x68>
    80002c08:	00000097          	auipc	ra,0x0
    80002c0c:	2d0080e7          	jalr	720(ra) # 80002ed8 <_Z11printStringPKc>
    finishedC = true;
    80002c10:	00100793          	li	a5,1
    80002c14:	00004717          	auipc	a4,0x4
    80002c18:	6cf708a3          	sb	a5,1745(a4) # 800072e5 <_ZL9finishedC>
    thread_dispatch();
    80002c1c:	ffffe097          	auipc	ra,0xffffe
    80002c20:	760080e7          	jalr	1888(ra) # 8000137c <_Z15thread_dispatchv>
}
    80002c24:	01813083          	ld	ra,24(sp)
    80002c28:	01013403          	ld	s0,16(sp)
    80002c2c:	00813483          	ld	s1,8(sp)
    80002c30:	00013903          	ld	s2,0(sp)
    80002c34:	02010113          	addi	sp,sp,32
    80002c38:	00008067          	ret

0000000080002c3c <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80002c3c:	fe010113          	addi	sp,sp,-32
    80002c40:	00113c23          	sd	ra,24(sp)
    80002c44:	00813823          	sd	s0,16(sp)
    80002c48:	00913423          	sd	s1,8(sp)
    80002c4c:	01213023          	sd	s2,0(sp)
    80002c50:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80002c54:	00000913          	li	s2,0
    80002c58:	0380006f          	j	80002c90 <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    80002c5c:	ffffe097          	auipc	ra,0xffffe
    80002c60:	720080e7          	jalr	1824(ra) # 8000137c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80002c64:	00148493          	addi	s1,s1,1
    80002c68:	000027b7          	lui	a5,0x2
    80002c6c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80002c70:	0097ee63          	bltu	a5,s1,80002c8c <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80002c74:	00000713          	li	a4,0
    80002c78:	000077b7          	lui	a5,0x7
    80002c7c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80002c80:	fce7eee3          	bltu	a5,a4,80002c5c <_ZL11workerBodyBPv+0x20>
    80002c84:	00170713          	addi	a4,a4,1
    80002c88:	ff1ff06f          	j	80002c78 <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80002c8c:	00190913          	addi	s2,s2,1
    80002c90:	00f00793          	li	a5,15
    80002c94:	0527e063          	bltu	a5,s2,80002cd4 <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80002c98:	00003517          	auipc	a0,0x3
    80002c9c:	3f050513          	addi	a0,a0,1008 # 80006088 <CONSOLE_STATUS+0x78>
    80002ca0:	00000097          	auipc	ra,0x0
    80002ca4:	238080e7          	jalr	568(ra) # 80002ed8 <_Z11printStringPKc>
    80002ca8:	00000613          	li	a2,0
    80002cac:	00a00593          	li	a1,10
    80002cb0:	0009051b          	sext.w	a0,s2
    80002cb4:	00000097          	auipc	ra,0x0
    80002cb8:	3d4080e7          	jalr	980(ra) # 80003088 <_Z8printIntiii>
    80002cbc:	00003517          	auipc	a0,0x3
    80002cc0:	61c50513          	addi	a0,a0,1564 # 800062d8 <CONSOLE_STATUS+0x2c8>
    80002cc4:	00000097          	auipc	ra,0x0
    80002cc8:	214080e7          	jalr	532(ra) # 80002ed8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80002ccc:	00000493          	li	s1,0
    80002cd0:	f99ff06f          	j	80002c68 <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    80002cd4:	00003517          	auipc	a0,0x3
    80002cd8:	3bc50513          	addi	a0,a0,956 # 80006090 <CONSOLE_STATUS+0x80>
    80002cdc:	00000097          	auipc	ra,0x0
    80002ce0:	1fc080e7          	jalr	508(ra) # 80002ed8 <_Z11printStringPKc>
    finishedB = true;
    80002ce4:	00100793          	li	a5,1
    80002ce8:	00004717          	auipc	a4,0x4
    80002cec:	5ef70f23          	sb	a5,1534(a4) # 800072e6 <_ZL9finishedB>
    thread_dispatch();
    80002cf0:	ffffe097          	auipc	ra,0xffffe
    80002cf4:	68c080e7          	jalr	1676(ra) # 8000137c <_Z15thread_dispatchv>
}
    80002cf8:	01813083          	ld	ra,24(sp)
    80002cfc:	01013403          	ld	s0,16(sp)
    80002d00:	00813483          	ld	s1,8(sp)
    80002d04:	00013903          	ld	s2,0(sp)
    80002d08:	02010113          	addi	sp,sp,32
    80002d0c:	00008067          	ret

0000000080002d10 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80002d10:	fe010113          	addi	sp,sp,-32
    80002d14:	00113c23          	sd	ra,24(sp)
    80002d18:	00813823          	sd	s0,16(sp)
    80002d1c:	00913423          	sd	s1,8(sp)
    80002d20:	01213023          	sd	s2,0(sp)
    80002d24:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80002d28:	00000913          	li	s2,0
    80002d2c:	0380006f          	j	80002d64 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80002d30:	ffffe097          	auipc	ra,0xffffe
    80002d34:	64c080e7          	jalr	1612(ra) # 8000137c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80002d38:	00148493          	addi	s1,s1,1
    80002d3c:	000027b7          	lui	a5,0x2
    80002d40:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80002d44:	0097ee63          	bltu	a5,s1,80002d60 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80002d48:	00000713          	li	a4,0
    80002d4c:	000077b7          	lui	a5,0x7
    80002d50:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80002d54:	fce7eee3          	bltu	a5,a4,80002d30 <_ZL11workerBodyAPv+0x20>
    80002d58:	00170713          	addi	a4,a4,1
    80002d5c:	ff1ff06f          	j	80002d4c <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80002d60:	00190913          	addi	s2,s2,1
    80002d64:	00900793          	li	a5,9
    80002d68:	0527e063          	bltu	a5,s2,80002da8 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80002d6c:	00003517          	auipc	a0,0x3
    80002d70:	30450513          	addi	a0,a0,772 # 80006070 <CONSOLE_STATUS+0x60>
    80002d74:	00000097          	auipc	ra,0x0
    80002d78:	164080e7          	jalr	356(ra) # 80002ed8 <_Z11printStringPKc>
    80002d7c:	00000613          	li	a2,0
    80002d80:	00a00593          	li	a1,10
    80002d84:	0009051b          	sext.w	a0,s2
    80002d88:	00000097          	auipc	ra,0x0
    80002d8c:	300080e7          	jalr	768(ra) # 80003088 <_Z8printIntiii>
    80002d90:	00003517          	auipc	a0,0x3
    80002d94:	54850513          	addi	a0,a0,1352 # 800062d8 <CONSOLE_STATUS+0x2c8>
    80002d98:	00000097          	auipc	ra,0x0
    80002d9c:	140080e7          	jalr	320(ra) # 80002ed8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80002da0:	00000493          	li	s1,0
    80002da4:	f99ff06f          	j	80002d3c <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80002da8:	00003517          	auipc	a0,0x3
    80002dac:	2d050513          	addi	a0,a0,720 # 80006078 <CONSOLE_STATUS+0x68>
    80002db0:	00000097          	auipc	ra,0x0
    80002db4:	128080e7          	jalr	296(ra) # 80002ed8 <_Z11printStringPKc>
    finishedA = true;
    80002db8:	00100793          	li	a5,1
    80002dbc:	00004717          	auipc	a4,0x4
    80002dc0:	52f705a3          	sb	a5,1323(a4) # 800072e7 <_ZL9finishedA>
}
    80002dc4:	01813083          	ld	ra,24(sp)
    80002dc8:	01013403          	ld	s0,16(sp)
    80002dcc:	00813483          	ld	s1,8(sp)
    80002dd0:	00013903          	ld	s2,0(sp)
    80002dd4:	02010113          	addi	sp,sp,32
    80002dd8:	00008067          	ret

0000000080002ddc <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80002ddc:	fd010113          	addi	sp,sp,-48
    80002de0:	02113423          	sd	ra,40(sp)
    80002de4:	02813023          	sd	s0,32(sp)
    80002de8:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80002dec:	00000613          	li	a2,0
    80002df0:	00000597          	auipc	a1,0x0
    80002df4:	f2058593          	addi	a1,a1,-224 # 80002d10 <_ZL11workerBodyAPv>
    80002df8:	fd040513          	addi	a0,s0,-48
    80002dfc:	ffffe097          	auipc	ra,0xffffe
    80002e00:	508080e7          	jalr	1288(ra) # 80001304 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadA created\n");
    80002e04:	00003517          	auipc	a0,0x3
    80002e08:	30450513          	addi	a0,a0,772 # 80006108 <CONSOLE_STATUS+0xf8>
    80002e0c:	00000097          	auipc	ra,0x0
    80002e10:	0cc080e7          	jalr	204(ra) # 80002ed8 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80002e14:	00000613          	li	a2,0
    80002e18:	00000597          	auipc	a1,0x0
    80002e1c:	e2458593          	addi	a1,a1,-476 # 80002c3c <_ZL11workerBodyBPv>
    80002e20:	fd840513          	addi	a0,s0,-40
    80002e24:	ffffe097          	auipc	ra,0xffffe
    80002e28:	4e0080e7          	jalr	1248(ra) # 80001304 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadB created\n");
    80002e2c:	00003517          	auipc	a0,0x3
    80002e30:	2f450513          	addi	a0,a0,756 # 80006120 <CONSOLE_STATUS+0x110>
    80002e34:	00000097          	auipc	ra,0x0
    80002e38:	0a4080e7          	jalr	164(ra) # 80002ed8 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80002e3c:	00000613          	li	a2,0
    80002e40:	00000597          	auipc	a1,0x0
    80002e44:	c7c58593          	addi	a1,a1,-900 # 80002abc <_ZL11workerBodyCPv>
    80002e48:	fe040513          	addi	a0,s0,-32
    80002e4c:	ffffe097          	auipc	ra,0xffffe
    80002e50:	4b8080e7          	jalr	1208(ra) # 80001304 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadC created\n");
    80002e54:	00003517          	auipc	a0,0x3
    80002e58:	2e450513          	addi	a0,a0,740 # 80006138 <CONSOLE_STATUS+0x128>
    80002e5c:	00000097          	auipc	ra,0x0
    80002e60:	07c080e7          	jalr	124(ra) # 80002ed8 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80002e64:	00000613          	li	a2,0
    80002e68:	00000597          	auipc	a1,0x0
    80002e6c:	b0c58593          	addi	a1,a1,-1268 # 80002974 <_ZL11workerBodyDPv>
    80002e70:	fe840513          	addi	a0,s0,-24
    80002e74:	ffffe097          	auipc	ra,0xffffe
    80002e78:	490080e7          	jalr	1168(ra) # 80001304 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadD created\n");
    80002e7c:	00003517          	auipc	a0,0x3
    80002e80:	2d450513          	addi	a0,a0,724 # 80006150 <CONSOLE_STATUS+0x140>
    80002e84:	00000097          	auipc	ra,0x0
    80002e88:	054080e7          	jalr	84(ra) # 80002ed8 <_Z11printStringPKc>
    80002e8c:	00c0006f          	j	80002e98 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80002e90:	ffffe097          	auipc	ra,0xffffe
    80002e94:	4ec080e7          	jalr	1260(ra) # 8000137c <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80002e98:	00004797          	auipc	a5,0x4
    80002e9c:	44f7c783          	lbu	a5,1103(a5) # 800072e7 <_ZL9finishedA>
    80002ea0:	fe0788e3          	beqz	a5,80002e90 <_Z18Threads_C_API_testv+0xb4>
    80002ea4:	00004797          	auipc	a5,0x4
    80002ea8:	4427c783          	lbu	a5,1090(a5) # 800072e6 <_ZL9finishedB>
    80002eac:	fe0782e3          	beqz	a5,80002e90 <_Z18Threads_C_API_testv+0xb4>
    80002eb0:	00004797          	auipc	a5,0x4
    80002eb4:	4357c783          	lbu	a5,1077(a5) # 800072e5 <_ZL9finishedC>
    80002eb8:	fc078ce3          	beqz	a5,80002e90 <_Z18Threads_C_API_testv+0xb4>
    80002ebc:	00004797          	auipc	a5,0x4
    80002ec0:	4287c783          	lbu	a5,1064(a5) # 800072e4 <_ZL9finishedD>
    80002ec4:	fc0786e3          	beqz	a5,80002e90 <_Z18Threads_C_API_testv+0xb4>
    }

}
    80002ec8:	02813083          	ld	ra,40(sp)
    80002ecc:	02013403          	ld	s0,32(sp)
    80002ed0:	03010113          	addi	sp,sp,48
    80002ed4:	00008067          	ret

0000000080002ed8 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80002ed8:	fe010113          	addi	sp,sp,-32
    80002edc:	00113c23          	sd	ra,24(sp)
    80002ee0:	00813823          	sd	s0,16(sp)
    80002ee4:	00913423          	sd	s1,8(sp)
    80002ee8:	02010413          	addi	s0,sp,32
    80002eec:	00050493          	mv	s1,a0
    LOCK();
    80002ef0:	00100613          	li	a2,1
    80002ef4:	00000593          	li	a1,0
    80002ef8:	00004517          	auipc	a0,0x4
    80002efc:	3f050513          	addi	a0,a0,1008 # 800072e8 <lockPrint>
    80002f00:	ffffe097          	auipc	ra,0xffffe
    80002f04:	34c080e7          	jalr	844(ra) # 8000124c <copy_and_swap>
    80002f08:	00050863          	beqz	a0,80002f18 <_Z11printStringPKc+0x40>
    80002f0c:	ffffe097          	auipc	ra,0xffffe
    80002f10:	470080e7          	jalr	1136(ra) # 8000137c <_Z15thread_dispatchv>
    80002f14:	fddff06f          	j	80002ef0 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80002f18:	0004c503          	lbu	a0,0(s1)
    80002f1c:	00050a63          	beqz	a0,80002f30 <_Z11printStringPKc+0x58>
    {
        putc(*string);
    80002f20:	fffff097          	auipc	ra,0xfffff
    80002f24:	ff4080e7          	jalr	-12(ra) # 80001f14 <_Z4putcc>
        string++;
    80002f28:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80002f2c:	fedff06f          	j	80002f18 <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    80002f30:	00000613          	li	a2,0
    80002f34:	00100593          	li	a1,1
    80002f38:	00004517          	auipc	a0,0x4
    80002f3c:	3b050513          	addi	a0,a0,944 # 800072e8 <lockPrint>
    80002f40:	ffffe097          	auipc	ra,0xffffe
    80002f44:	30c080e7          	jalr	780(ra) # 8000124c <copy_and_swap>
    80002f48:	fe0514e3          	bnez	a0,80002f30 <_Z11printStringPKc+0x58>
}
    80002f4c:	01813083          	ld	ra,24(sp)
    80002f50:	01013403          	ld	s0,16(sp)
    80002f54:	00813483          	ld	s1,8(sp)
    80002f58:	02010113          	addi	sp,sp,32
    80002f5c:	00008067          	ret

0000000080002f60 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80002f60:	fd010113          	addi	sp,sp,-48
    80002f64:	02113423          	sd	ra,40(sp)
    80002f68:	02813023          	sd	s0,32(sp)
    80002f6c:	00913c23          	sd	s1,24(sp)
    80002f70:	01213823          	sd	s2,16(sp)
    80002f74:	01313423          	sd	s3,8(sp)
    80002f78:	01413023          	sd	s4,0(sp)
    80002f7c:	03010413          	addi	s0,sp,48
    80002f80:	00050993          	mv	s3,a0
    80002f84:	00058a13          	mv	s4,a1
    LOCK();
    80002f88:	00100613          	li	a2,1
    80002f8c:	00000593          	li	a1,0
    80002f90:	00004517          	auipc	a0,0x4
    80002f94:	35850513          	addi	a0,a0,856 # 800072e8 <lockPrint>
    80002f98:	ffffe097          	auipc	ra,0xffffe
    80002f9c:	2b4080e7          	jalr	692(ra) # 8000124c <copy_and_swap>
    80002fa0:	00050863          	beqz	a0,80002fb0 <_Z9getStringPci+0x50>
    80002fa4:	ffffe097          	auipc	ra,0xffffe
    80002fa8:	3d8080e7          	jalr	984(ra) # 8000137c <_Z15thread_dispatchv>
    80002fac:	fddff06f          	j	80002f88 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80002fb0:	00000913          	li	s2,0
    80002fb4:	00090493          	mv	s1,s2
    80002fb8:	0019091b          	addiw	s2,s2,1
    80002fbc:	03495a63          	bge	s2,s4,80002ff0 <_Z9getStringPci+0x90>
        cc = getc();
    80002fc0:	fffff097          	auipc	ra,0xfffff
    80002fc4:	f7c080e7          	jalr	-132(ra) # 80001f3c <_Z4getcv>
        if(cc < 1)
    80002fc8:	02050463          	beqz	a0,80002ff0 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    80002fcc:	009984b3          	add	s1,s3,s1
    80002fd0:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80002fd4:	00a00793          	li	a5,10
    80002fd8:	00f50a63          	beq	a0,a5,80002fec <_Z9getStringPci+0x8c>
    80002fdc:	00d00793          	li	a5,13
    80002fe0:	fcf51ae3          	bne	a0,a5,80002fb4 <_Z9getStringPci+0x54>
        buf[i++] = c;
    80002fe4:	00090493          	mv	s1,s2
    80002fe8:	0080006f          	j	80002ff0 <_Z9getStringPci+0x90>
    80002fec:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80002ff0:	009984b3          	add	s1,s3,s1
    80002ff4:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80002ff8:	00000613          	li	a2,0
    80002ffc:	00100593          	li	a1,1
    80003000:	00004517          	auipc	a0,0x4
    80003004:	2e850513          	addi	a0,a0,744 # 800072e8 <lockPrint>
    80003008:	ffffe097          	auipc	ra,0xffffe
    8000300c:	244080e7          	jalr	580(ra) # 8000124c <copy_and_swap>
    80003010:	fe0514e3          	bnez	a0,80002ff8 <_Z9getStringPci+0x98>
    return buf;
}
    80003014:	00098513          	mv	a0,s3
    80003018:	02813083          	ld	ra,40(sp)
    8000301c:	02013403          	ld	s0,32(sp)
    80003020:	01813483          	ld	s1,24(sp)
    80003024:	01013903          	ld	s2,16(sp)
    80003028:	00813983          	ld	s3,8(sp)
    8000302c:	00013a03          	ld	s4,0(sp)
    80003030:	03010113          	addi	sp,sp,48
    80003034:	00008067          	ret

0000000080003038 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80003038:	ff010113          	addi	sp,sp,-16
    8000303c:	00813423          	sd	s0,8(sp)
    80003040:	01010413          	addi	s0,sp,16
    80003044:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80003048:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    8000304c:	0006c603          	lbu	a2,0(a3)
    80003050:	fd06071b          	addiw	a4,a2,-48
    80003054:	0ff77713          	andi	a4,a4,255
    80003058:	00900793          	li	a5,9
    8000305c:	02e7e063          	bltu	a5,a4,8000307c <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80003060:	0025179b          	slliw	a5,a0,0x2
    80003064:	00a787bb          	addw	a5,a5,a0
    80003068:	0017979b          	slliw	a5,a5,0x1
    8000306c:	00168693          	addi	a3,a3,1
    80003070:	00c787bb          	addw	a5,a5,a2
    80003074:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80003078:	fd5ff06f          	j	8000304c <_Z11stringToIntPKc+0x14>
    return n;
}
    8000307c:	00813403          	ld	s0,8(sp)
    80003080:	01010113          	addi	sp,sp,16
    80003084:	00008067          	ret

0000000080003088 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80003088:	fc010113          	addi	sp,sp,-64
    8000308c:	02113c23          	sd	ra,56(sp)
    80003090:	02813823          	sd	s0,48(sp)
    80003094:	02913423          	sd	s1,40(sp)
    80003098:	03213023          	sd	s2,32(sp)
    8000309c:	01313c23          	sd	s3,24(sp)
    800030a0:	04010413          	addi	s0,sp,64
    800030a4:	00050493          	mv	s1,a0
    800030a8:	00058913          	mv	s2,a1
    800030ac:	00060993          	mv	s3,a2
    LOCK();
    800030b0:	00100613          	li	a2,1
    800030b4:	00000593          	li	a1,0
    800030b8:	00004517          	auipc	a0,0x4
    800030bc:	23050513          	addi	a0,a0,560 # 800072e8 <lockPrint>
    800030c0:	ffffe097          	auipc	ra,0xffffe
    800030c4:	18c080e7          	jalr	396(ra) # 8000124c <copy_and_swap>
    800030c8:	00050863          	beqz	a0,800030d8 <_Z8printIntiii+0x50>
    800030cc:	ffffe097          	auipc	ra,0xffffe
    800030d0:	2b0080e7          	jalr	688(ra) # 8000137c <_Z15thread_dispatchv>
    800030d4:	fddff06f          	j	800030b0 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    800030d8:	00098463          	beqz	s3,800030e0 <_Z8printIntiii+0x58>
    800030dc:	0804c463          	bltz	s1,80003164 <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    800030e0:	0004851b          	sext.w	a0,s1
    neg = 0;
    800030e4:	00000593          	li	a1,0
    }

    i = 0;
    800030e8:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    800030ec:	0009079b          	sext.w	a5,s2
    800030f0:	0325773b          	remuw	a4,a0,s2
    800030f4:	00048613          	mv	a2,s1
    800030f8:	0014849b          	addiw	s1,s1,1
    800030fc:	02071693          	slli	a3,a4,0x20
    80003100:	0206d693          	srli	a3,a3,0x20
    80003104:	00004717          	auipc	a4,0x4
    80003108:	0fc70713          	addi	a4,a4,252 # 80007200 <digits>
    8000310c:	00d70733          	add	a4,a4,a3
    80003110:	00074683          	lbu	a3,0(a4)
    80003114:	fd040713          	addi	a4,s0,-48
    80003118:	00c70733          	add	a4,a4,a2
    8000311c:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80003120:	0005071b          	sext.w	a4,a0
    80003124:	0325553b          	divuw	a0,a0,s2
    80003128:	fcf772e3          	bgeu	a4,a5,800030ec <_Z8printIntiii+0x64>
    if(neg)
    8000312c:	00058c63          	beqz	a1,80003144 <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    80003130:	fd040793          	addi	a5,s0,-48
    80003134:	009784b3          	add	s1,a5,s1
    80003138:	02d00793          	li	a5,45
    8000313c:	fef48823          	sb	a5,-16(s1)
    80003140:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80003144:	fff4849b          	addiw	s1,s1,-1
    80003148:	0204c463          	bltz	s1,80003170 <_Z8printIntiii+0xe8>
        putc(buf[i]);
    8000314c:	fd040793          	addi	a5,s0,-48
    80003150:	009787b3          	add	a5,a5,s1
    80003154:	ff07c503          	lbu	a0,-16(a5)
    80003158:	fffff097          	auipc	ra,0xfffff
    8000315c:	dbc080e7          	jalr	-580(ra) # 80001f14 <_Z4putcc>
    80003160:	fe5ff06f          	j	80003144 <_Z8printIntiii+0xbc>
        x = -xx;
    80003164:	4090053b          	negw	a0,s1
        neg = 1;
    80003168:	00100593          	li	a1,1
        x = -xx;
    8000316c:	f7dff06f          	j	800030e8 <_Z8printIntiii+0x60>

    UNLOCK();
    80003170:	00000613          	li	a2,0
    80003174:	00100593          	li	a1,1
    80003178:	00004517          	auipc	a0,0x4
    8000317c:	17050513          	addi	a0,a0,368 # 800072e8 <lockPrint>
    80003180:	ffffe097          	auipc	ra,0xffffe
    80003184:	0cc080e7          	jalr	204(ra) # 8000124c <copy_and_swap>
    80003188:	fe0514e3          	bnez	a0,80003170 <_Z8printIntiii+0xe8>
    8000318c:	03813083          	ld	ra,56(sp)
    80003190:	03013403          	ld	s0,48(sp)
    80003194:	02813483          	ld	s1,40(sp)
    80003198:	02013903          	ld	s2,32(sp)
    8000319c:	01813983          	ld	s3,24(sp)
    800031a0:	04010113          	addi	sp,sp,64
    800031a4:	00008067          	ret

00000000800031a8 <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    800031a8:	ff010113          	addi	sp,sp,-16
    800031ac:	00113423          	sd	ra,8(sp)
    800031b0:	00813023          	sd	s0,0(sp)
    800031b4:	01010413          	addi	s0,sp,16
    printString("Unesite broj testa? [1-7]\n");
    800031b8:	00003517          	auipc	a0,0x3
    800031bc:	fb050513          	addi	a0,a0,-80 # 80006168 <CONSOLE_STATUS+0x158>
    800031c0:	00000097          	auipc	ra,0x0
    800031c4:	d18080e7          	jalr	-744(ra) # 80002ed8 <_Z11printStringPKc>
    }

    switch (test) {
        case 1:
#if LEVEL_2_IMPLEMENTED == 1
            Threads_C_API_test();
    800031c8:	00000097          	auipc	ra,0x0
    800031cc:	c14080e7          	jalr	-1004(ra) # 80002ddc <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    800031d0:	00003517          	auipc	a0,0x3
    800031d4:	fb850513          	addi	a0,a0,-72 # 80006188 <CONSOLE_STATUS+0x178>
    800031d8:	00000097          	auipc	ra,0x0
    800031dc:	d00080e7          	jalr	-768(ra) # 80002ed8 <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    800031e0:	00813083          	ld	ra,8(sp)
    800031e4:	00013403          	ld	s0,0(sp)
    800031e8:	01010113          	addi	sp,sp,16
    800031ec:	00008067          	ret

00000000800031f0 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800031f0:	fe010113          	addi	sp,sp,-32
    800031f4:	00113c23          	sd	ra,24(sp)
    800031f8:	00813823          	sd	s0,16(sp)
    800031fc:	00913423          	sd	s1,8(sp)
    80003200:	01213023          	sd	s2,0(sp)
    80003204:	02010413          	addi	s0,sp,32
    80003208:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    8000320c:	00100793          	li	a5,1
    80003210:	02a7f863          	bgeu	a5,a0,80003240 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80003214:	00a00793          	li	a5,10
    80003218:	02f577b3          	remu	a5,a0,a5
    8000321c:	02078e63          	beqz	a5,80003258 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80003220:	fff48513          	addi	a0,s1,-1
    80003224:	00000097          	auipc	ra,0x0
    80003228:	fcc080e7          	jalr	-52(ra) # 800031f0 <_ZL9fibonaccim>
    8000322c:	00050913          	mv	s2,a0
    80003230:	ffe48513          	addi	a0,s1,-2
    80003234:	00000097          	auipc	ra,0x0
    80003238:	fbc080e7          	jalr	-68(ra) # 800031f0 <_ZL9fibonaccim>
    8000323c:	00a90533          	add	a0,s2,a0
}
    80003240:	01813083          	ld	ra,24(sp)
    80003244:	01013403          	ld	s0,16(sp)
    80003248:	00813483          	ld	s1,8(sp)
    8000324c:	00013903          	ld	s2,0(sp)
    80003250:	02010113          	addi	sp,sp,32
    80003254:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80003258:	ffffe097          	auipc	ra,0xffffe
    8000325c:	124080e7          	jalr	292(ra) # 8000137c <_Z15thread_dispatchv>
    80003260:	fc1ff06f          	j	80003220 <_ZL9fibonaccim+0x30>

0000000080003264 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80003264:	fe010113          	addi	sp,sp,-32
    80003268:	00113c23          	sd	ra,24(sp)
    8000326c:	00813823          	sd	s0,16(sp)
    80003270:	00913423          	sd	s1,8(sp)
    80003274:	01213023          	sd	s2,0(sp)
    80003278:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    8000327c:	00a00493          	li	s1,10
    80003280:	0400006f          	j	800032c0 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003284:	00003517          	auipc	a0,0x3
    80003288:	e4c50513          	addi	a0,a0,-436 # 800060d0 <CONSOLE_STATUS+0xc0>
    8000328c:	00000097          	auipc	ra,0x0
    80003290:	c4c080e7          	jalr	-948(ra) # 80002ed8 <_Z11printStringPKc>
    80003294:	00000613          	li	a2,0
    80003298:	00a00593          	li	a1,10
    8000329c:	00048513          	mv	a0,s1
    800032a0:	00000097          	auipc	ra,0x0
    800032a4:	de8080e7          	jalr	-536(ra) # 80003088 <_Z8printIntiii>
    800032a8:	00003517          	auipc	a0,0x3
    800032ac:	03050513          	addi	a0,a0,48 # 800062d8 <CONSOLE_STATUS+0x2c8>
    800032b0:	00000097          	auipc	ra,0x0
    800032b4:	c28080e7          	jalr	-984(ra) # 80002ed8 <_Z11printStringPKc>
    for (; i < 13; i++) {
    800032b8:	0014849b          	addiw	s1,s1,1
    800032bc:	0ff4f493          	andi	s1,s1,255
    800032c0:	00c00793          	li	a5,12
    800032c4:	fc97f0e3          	bgeu	a5,s1,80003284 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    800032c8:	00003517          	auipc	a0,0x3
    800032cc:	e1050513          	addi	a0,a0,-496 # 800060d8 <CONSOLE_STATUS+0xc8>
    800032d0:	00000097          	auipc	ra,0x0
    800032d4:	c08080e7          	jalr	-1016(ra) # 80002ed8 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800032d8:	00500313          	li	t1,5
    thread_dispatch();
    800032dc:	ffffe097          	auipc	ra,0xffffe
    800032e0:	0a0080e7          	jalr	160(ra) # 8000137c <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    800032e4:	01000513          	li	a0,16
    800032e8:	00000097          	auipc	ra,0x0
    800032ec:	f08080e7          	jalr	-248(ra) # 800031f0 <_ZL9fibonaccim>
    800032f0:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800032f4:	00003517          	auipc	a0,0x3
    800032f8:	df450513          	addi	a0,a0,-524 # 800060e8 <CONSOLE_STATUS+0xd8>
    800032fc:	00000097          	auipc	ra,0x0
    80003300:	bdc080e7          	jalr	-1060(ra) # 80002ed8 <_Z11printStringPKc>
    80003304:	00000613          	li	a2,0
    80003308:	00a00593          	li	a1,10
    8000330c:	0009051b          	sext.w	a0,s2
    80003310:	00000097          	auipc	ra,0x0
    80003314:	d78080e7          	jalr	-648(ra) # 80003088 <_Z8printIntiii>
    80003318:	00003517          	auipc	a0,0x3
    8000331c:	fc050513          	addi	a0,a0,-64 # 800062d8 <CONSOLE_STATUS+0x2c8>
    80003320:	00000097          	auipc	ra,0x0
    80003324:	bb8080e7          	jalr	-1096(ra) # 80002ed8 <_Z11printStringPKc>
    80003328:	0400006f          	j	80003368 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    8000332c:	00003517          	auipc	a0,0x3
    80003330:	da450513          	addi	a0,a0,-604 # 800060d0 <CONSOLE_STATUS+0xc0>
    80003334:	00000097          	auipc	ra,0x0
    80003338:	ba4080e7          	jalr	-1116(ra) # 80002ed8 <_Z11printStringPKc>
    8000333c:	00000613          	li	a2,0
    80003340:	00a00593          	li	a1,10
    80003344:	00048513          	mv	a0,s1
    80003348:	00000097          	auipc	ra,0x0
    8000334c:	d40080e7          	jalr	-704(ra) # 80003088 <_Z8printIntiii>
    80003350:	00003517          	auipc	a0,0x3
    80003354:	f8850513          	addi	a0,a0,-120 # 800062d8 <CONSOLE_STATUS+0x2c8>
    80003358:	00000097          	auipc	ra,0x0
    8000335c:	b80080e7          	jalr	-1152(ra) # 80002ed8 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80003360:	0014849b          	addiw	s1,s1,1
    80003364:	0ff4f493          	andi	s1,s1,255
    80003368:	00f00793          	li	a5,15
    8000336c:	fc97f0e3          	bgeu	a5,s1,8000332c <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80003370:	00003517          	auipc	a0,0x3
    80003374:	d8850513          	addi	a0,a0,-632 # 800060f8 <CONSOLE_STATUS+0xe8>
    80003378:	00000097          	auipc	ra,0x0
    8000337c:	b60080e7          	jalr	-1184(ra) # 80002ed8 <_Z11printStringPKc>
    finishedD = true;
    80003380:	00100793          	li	a5,1
    80003384:	00004717          	auipc	a4,0x4
    80003388:	f6f70623          	sb	a5,-148(a4) # 800072f0 <_ZL9finishedD>
    thread_dispatch();
    8000338c:	ffffe097          	auipc	ra,0xffffe
    80003390:	ff0080e7          	jalr	-16(ra) # 8000137c <_Z15thread_dispatchv>
}
    80003394:	01813083          	ld	ra,24(sp)
    80003398:	01013403          	ld	s0,16(sp)
    8000339c:	00813483          	ld	s1,8(sp)
    800033a0:	00013903          	ld	s2,0(sp)
    800033a4:	02010113          	addi	sp,sp,32
    800033a8:	00008067          	ret

00000000800033ac <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    800033ac:	fe010113          	addi	sp,sp,-32
    800033b0:	00113c23          	sd	ra,24(sp)
    800033b4:	00813823          	sd	s0,16(sp)
    800033b8:	00913423          	sd	s1,8(sp)
    800033bc:	01213023          	sd	s2,0(sp)
    800033c0:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800033c4:	00000493          	li	s1,0
    800033c8:	0400006f          	j	80003408 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    800033cc:	00003517          	auipc	a0,0x3
    800033d0:	cd450513          	addi	a0,a0,-812 # 800060a0 <CONSOLE_STATUS+0x90>
    800033d4:	00000097          	auipc	ra,0x0
    800033d8:	b04080e7          	jalr	-1276(ra) # 80002ed8 <_Z11printStringPKc>
    800033dc:	00000613          	li	a2,0
    800033e0:	00a00593          	li	a1,10
    800033e4:	00048513          	mv	a0,s1
    800033e8:	00000097          	auipc	ra,0x0
    800033ec:	ca0080e7          	jalr	-864(ra) # 80003088 <_Z8printIntiii>
    800033f0:	00003517          	auipc	a0,0x3
    800033f4:	ee850513          	addi	a0,a0,-280 # 800062d8 <CONSOLE_STATUS+0x2c8>
    800033f8:	00000097          	auipc	ra,0x0
    800033fc:	ae0080e7          	jalr	-1312(ra) # 80002ed8 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80003400:	0014849b          	addiw	s1,s1,1
    80003404:	0ff4f493          	andi	s1,s1,255
    80003408:	00200793          	li	a5,2
    8000340c:	fc97f0e3          	bgeu	a5,s1,800033cc <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80003410:	00003517          	auipc	a0,0x3
    80003414:	c9850513          	addi	a0,a0,-872 # 800060a8 <CONSOLE_STATUS+0x98>
    80003418:	00000097          	auipc	ra,0x0
    8000341c:	ac0080e7          	jalr	-1344(ra) # 80002ed8 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80003420:	00700313          	li	t1,7
    thread_dispatch();
    80003424:	ffffe097          	auipc	ra,0xffffe
    80003428:	f58080e7          	jalr	-168(ra) # 8000137c <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    8000342c:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80003430:	00003517          	auipc	a0,0x3
    80003434:	c8850513          	addi	a0,a0,-888 # 800060b8 <CONSOLE_STATUS+0xa8>
    80003438:	00000097          	auipc	ra,0x0
    8000343c:	aa0080e7          	jalr	-1376(ra) # 80002ed8 <_Z11printStringPKc>
    80003440:	00000613          	li	a2,0
    80003444:	00a00593          	li	a1,10
    80003448:	0009051b          	sext.w	a0,s2
    8000344c:	00000097          	auipc	ra,0x0
    80003450:	c3c080e7          	jalr	-964(ra) # 80003088 <_Z8printIntiii>
    80003454:	00003517          	auipc	a0,0x3
    80003458:	e8450513          	addi	a0,a0,-380 # 800062d8 <CONSOLE_STATUS+0x2c8>
    8000345c:	00000097          	auipc	ra,0x0
    80003460:	a7c080e7          	jalr	-1412(ra) # 80002ed8 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80003464:	00c00513          	li	a0,12
    80003468:	00000097          	auipc	ra,0x0
    8000346c:	d88080e7          	jalr	-632(ra) # 800031f0 <_ZL9fibonaccim>
    80003470:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80003474:	00003517          	auipc	a0,0x3
    80003478:	c4c50513          	addi	a0,a0,-948 # 800060c0 <CONSOLE_STATUS+0xb0>
    8000347c:	00000097          	auipc	ra,0x0
    80003480:	a5c080e7          	jalr	-1444(ra) # 80002ed8 <_Z11printStringPKc>
    80003484:	00000613          	li	a2,0
    80003488:	00a00593          	li	a1,10
    8000348c:	0009051b          	sext.w	a0,s2
    80003490:	00000097          	auipc	ra,0x0
    80003494:	bf8080e7          	jalr	-1032(ra) # 80003088 <_Z8printIntiii>
    80003498:	00003517          	auipc	a0,0x3
    8000349c:	e4050513          	addi	a0,a0,-448 # 800062d8 <CONSOLE_STATUS+0x2c8>
    800034a0:	00000097          	auipc	ra,0x0
    800034a4:	a38080e7          	jalr	-1480(ra) # 80002ed8 <_Z11printStringPKc>
    800034a8:	0400006f          	j	800034e8 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    800034ac:	00003517          	auipc	a0,0x3
    800034b0:	bf450513          	addi	a0,a0,-1036 # 800060a0 <CONSOLE_STATUS+0x90>
    800034b4:	00000097          	auipc	ra,0x0
    800034b8:	a24080e7          	jalr	-1500(ra) # 80002ed8 <_Z11printStringPKc>
    800034bc:	00000613          	li	a2,0
    800034c0:	00a00593          	li	a1,10
    800034c4:	00048513          	mv	a0,s1
    800034c8:	00000097          	auipc	ra,0x0
    800034cc:	bc0080e7          	jalr	-1088(ra) # 80003088 <_Z8printIntiii>
    800034d0:	00003517          	auipc	a0,0x3
    800034d4:	e0850513          	addi	a0,a0,-504 # 800062d8 <CONSOLE_STATUS+0x2c8>
    800034d8:	00000097          	auipc	ra,0x0
    800034dc:	a00080e7          	jalr	-1536(ra) # 80002ed8 <_Z11printStringPKc>
    for (; i < 6; i++) {
    800034e0:	0014849b          	addiw	s1,s1,1
    800034e4:	0ff4f493          	andi	s1,s1,255
    800034e8:	00500793          	li	a5,5
    800034ec:	fc97f0e3          	bgeu	a5,s1,800034ac <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    800034f0:	00003517          	auipc	a0,0x3
    800034f4:	b8850513          	addi	a0,a0,-1144 # 80006078 <CONSOLE_STATUS+0x68>
    800034f8:	00000097          	auipc	ra,0x0
    800034fc:	9e0080e7          	jalr	-1568(ra) # 80002ed8 <_Z11printStringPKc>
    finishedC = true;
    80003500:	00100793          	li	a5,1
    80003504:	00004717          	auipc	a4,0x4
    80003508:	def706a3          	sb	a5,-531(a4) # 800072f1 <_ZL9finishedC>
    thread_dispatch();
    8000350c:	ffffe097          	auipc	ra,0xffffe
    80003510:	e70080e7          	jalr	-400(ra) # 8000137c <_Z15thread_dispatchv>
}
    80003514:	01813083          	ld	ra,24(sp)
    80003518:	01013403          	ld	s0,16(sp)
    8000351c:	00813483          	ld	s1,8(sp)
    80003520:	00013903          	ld	s2,0(sp)
    80003524:	02010113          	addi	sp,sp,32
    80003528:	00008067          	ret

000000008000352c <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    8000352c:	fe010113          	addi	sp,sp,-32
    80003530:	00113c23          	sd	ra,24(sp)
    80003534:	00813823          	sd	s0,16(sp)
    80003538:	00913423          	sd	s1,8(sp)
    8000353c:	01213023          	sd	s2,0(sp)
    80003540:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80003544:	00000913          	li	s2,0
    80003548:	0400006f          	j	80003588 <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    8000354c:	ffffe097          	auipc	ra,0xffffe
    80003550:	e30080e7          	jalr	-464(ra) # 8000137c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003554:	00148493          	addi	s1,s1,1
    80003558:	000027b7          	lui	a5,0x2
    8000355c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003560:	0097ee63          	bltu	a5,s1,8000357c <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003564:	00000713          	li	a4,0
    80003568:	000077b7          	lui	a5,0x7
    8000356c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003570:	fce7eee3          	bltu	a5,a4,8000354c <_ZL11workerBodyBPv+0x20>
    80003574:	00170713          	addi	a4,a4,1
    80003578:	ff1ff06f          	j	80003568 <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    8000357c:	00a00793          	li	a5,10
    80003580:	04f90663          	beq	s2,a5,800035cc <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    80003584:	00190913          	addi	s2,s2,1
    80003588:	00f00793          	li	a5,15
    8000358c:	0527e463          	bltu	a5,s2,800035d4 <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    80003590:	00003517          	auipc	a0,0x3
    80003594:	af850513          	addi	a0,a0,-1288 # 80006088 <CONSOLE_STATUS+0x78>
    80003598:	00000097          	auipc	ra,0x0
    8000359c:	940080e7          	jalr	-1728(ra) # 80002ed8 <_Z11printStringPKc>
    800035a0:	00000613          	li	a2,0
    800035a4:	00a00593          	li	a1,10
    800035a8:	0009051b          	sext.w	a0,s2
    800035ac:	00000097          	auipc	ra,0x0
    800035b0:	adc080e7          	jalr	-1316(ra) # 80003088 <_Z8printIntiii>
    800035b4:	00003517          	auipc	a0,0x3
    800035b8:	d2450513          	addi	a0,a0,-732 # 800062d8 <CONSOLE_STATUS+0x2c8>
    800035bc:	00000097          	auipc	ra,0x0
    800035c0:	91c080e7          	jalr	-1764(ra) # 80002ed8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800035c4:	00000493          	li	s1,0
    800035c8:	f91ff06f          	j	80003558 <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    800035cc:	14102ff3          	csrr	t6,sepc
    800035d0:	fb5ff06f          	j	80003584 <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    800035d4:	00003517          	auipc	a0,0x3
    800035d8:	abc50513          	addi	a0,a0,-1348 # 80006090 <CONSOLE_STATUS+0x80>
    800035dc:	00000097          	auipc	ra,0x0
    800035e0:	8fc080e7          	jalr	-1796(ra) # 80002ed8 <_Z11printStringPKc>
    finishedB = true;
    800035e4:	00100793          	li	a5,1
    800035e8:	00004717          	auipc	a4,0x4
    800035ec:	d0f70523          	sb	a5,-758(a4) # 800072f2 <_ZL9finishedB>
    thread_dispatch();
    800035f0:	ffffe097          	auipc	ra,0xffffe
    800035f4:	d8c080e7          	jalr	-628(ra) # 8000137c <_Z15thread_dispatchv>
}
    800035f8:	01813083          	ld	ra,24(sp)
    800035fc:	01013403          	ld	s0,16(sp)
    80003600:	00813483          	ld	s1,8(sp)
    80003604:	00013903          	ld	s2,0(sp)
    80003608:	02010113          	addi	sp,sp,32
    8000360c:	00008067          	ret

0000000080003610 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80003610:	fe010113          	addi	sp,sp,-32
    80003614:	00113c23          	sd	ra,24(sp)
    80003618:	00813823          	sd	s0,16(sp)
    8000361c:	00913423          	sd	s1,8(sp)
    80003620:	01213023          	sd	s2,0(sp)
    80003624:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80003628:	00000913          	li	s2,0
    8000362c:	0380006f          	j	80003664 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80003630:	ffffe097          	auipc	ra,0xffffe
    80003634:	d4c080e7          	jalr	-692(ra) # 8000137c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003638:	00148493          	addi	s1,s1,1
    8000363c:	000027b7          	lui	a5,0x2
    80003640:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003644:	0097ee63          	bltu	a5,s1,80003660 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003648:	00000713          	li	a4,0
    8000364c:	000077b7          	lui	a5,0x7
    80003650:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003654:	fce7eee3          	bltu	a5,a4,80003630 <_ZL11workerBodyAPv+0x20>
    80003658:	00170713          	addi	a4,a4,1
    8000365c:	ff1ff06f          	j	8000364c <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80003660:	00190913          	addi	s2,s2,1
    80003664:	00900793          	li	a5,9
    80003668:	0527e063          	bltu	a5,s2,800036a8 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    8000366c:	00003517          	auipc	a0,0x3
    80003670:	a0450513          	addi	a0,a0,-1532 # 80006070 <CONSOLE_STATUS+0x60>
    80003674:	00000097          	auipc	ra,0x0
    80003678:	864080e7          	jalr	-1948(ra) # 80002ed8 <_Z11printStringPKc>
    8000367c:	00000613          	li	a2,0
    80003680:	00a00593          	li	a1,10
    80003684:	0009051b          	sext.w	a0,s2
    80003688:	00000097          	auipc	ra,0x0
    8000368c:	a00080e7          	jalr	-1536(ra) # 80003088 <_Z8printIntiii>
    80003690:	00003517          	auipc	a0,0x3
    80003694:	c4850513          	addi	a0,a0,-952 # 800062d8 <CONSOLE_STATUS+0x2c8>
    80003698:	00000097          	auipc	ra,0x0
    8000369c:	840080e7          	jalr	-1984(ra) # 80002ed8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800036a0:	00000493          	li	s1,0
    800036a4:	f99ff06f          	j	8000363c <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    800036a8:	00003517          	auipc	a0,0x3
    800036ac:	9d050513          	addi	a0,a0,-1584 # 80006078 <CONSOLE_STATUS+0x68>
    800036b0:	00000097          	auipc	ra,0x0
    800036b4:	828080e7          	jalr	-2008(ra) # 80002ed8 <_Z11printStringPKc>
    finishedA = true;
    800036b8:	00100793          	li	a5,1
    800036bc:	00004717          	auipc	a4,0x4
    800036c0:	c2f70ba3          	sb	a5,-969(a4) # 800072f3 <_ZL9finishedA>
}
    800036c4:	01813083          	ld	ra,24(sp)
    800036c8:	01013403          	ld	s0,16(sp)
    800036cc:	00813483          	ld	s1,8(sp)
    800036d0:	00013903          	ld	s2,0(sp)
    800036d4:	02010113          	addi	sp,sp,32
    800036d8:	00008067          	ret

00000000800036dc <_Z16System_Mode_testv>:


void System_Mode_test() {
    800036dc:	fd010113          	addi	sp,sp,-48
    800036e0:	02113423          	sd	ra,40(sp)
    800036e4:	02813023          	sd	s0,32(sp)
    800036e8:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    800036ec:	00000613          	li	a2,0
    800036f0:	00000597          	auipc	a1,0x0
    800036f4:	f2058593          	addi	a1,a1,-224 # 80003610 <_ZL11workerBodyAPv>
    800036f8:	fd040513          	addi	a0,s0,-48
    800036fc:	ffffe097          	auipc	ra,0xffffe
    80003700:	c08080e7          	jalr	-1016(ra) # 80001304 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadA created\n");
    80003704:	00003517          	auipc	a0,0x3
    80003708:	a0450513          	addi	a0,a0,-1532 # 80006108 <CONSOLE_STATUS+0xf8>
    8000370c:	fffff097          	auipc	ra,0xfffff
    80003710:	7cc080e7          	jalr	1996(ra) # 80002ed8 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80003714:	00000613          	li	a2,0
    80003718:	00000597          	auipc	a1,0x0
    8000371c:	e1458593          	addi	a1,a1,-492 # 8000352c <_ZL11workerBodyBPv>
    80003720:	fd840513          	addi	a0,s0,-40
    80003724:	ffffe097          	auipc	ra,0xffffe
    80003728:	be0080e7          	jalr	-1056(ra) # 80001304 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadB created\n");
    8000372c:	00003517          	auipc	a0,0x3
    80003730:	9f450513          	addi	a0,a0,-1548 # 80006120 <CONSOLE_STATUS+0x110>
    80003734:	fffff097          	auipc	ra,0xfffff
    80003738:	7a4080e7          	jalr	1956(ra) # 80002ed8 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    8000373c:	00000613          	li	a2,0
    80003740:	00000597          	auipc	a1,0x0
    80003744:	c6c58593          	addi	a1,a1,-916 # 800033ac <_ZL11workerBodyCPv>
    80003748:	fe040513          	addi	a0,s0,-32
    8000374c:	ffffe097          	auipc	ra,0xffffe
    80003750:	bb8080e7          	jalr	-1096(ra) # 80001304 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadC created\n");
    80003754:	00003517          	auipc	a0,0x3
    80003758:	9e450513          	addi	a0,a0,-1564 # 80006138 <CONSOLE_STATUS+0x128>
    8000375c:	fffff097          	auipc	ra,0xfffff
    80003760:	77c080e7          	jalr	1916(ra) # 80002ed8 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80003764:	00000613          	li	a2,0
    80003768:	00000597          	auipc	a1,0x0
    8000376c:	afc58593          	addi	a1,a1,-1284 # 80003264 <_ZL11workerBodyDPv>
    80003770:	fe840513          	addi	a0,s0,-24
    80003774:	ffffe097          	auipc	ra,0xffffe
    80003778:	b90080e7          	jalr	-1136(ra) # 80001304 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadD created\n");
    8000377c:	00003517          	auipc	a0,0x3
    80003780:	9d450513          	addi	a0,a0,-1580 # 80006150 <CONSOLE_STATUS+0x140>
    80003784:	fffff097          	auipc	ra,0xfffff
    80003788:	754080e7          	jalr	1876(ra) # 80002ed8 <_Z11printStringPKc>
    8000378c:	00c0006f          	j	80003798 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80003790:	ffffe097          	auipc	ra,0xffffe
    80003794:	bec080e7          	jalr	-1044(ra) # 8000137c <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80003798:	00004797          	auipc	a5,0x4
    8000379c:	b5b7c783          	lbu	a5,-1189(a5) # 800072f3 <_ZL9finishedA>
    800037a0:	fe0788e3          	beqz	a5,80003790 <_Z16System_Mode_testv+0xb4>
    800037a4:	00004797          	auipc	a5,0x4
    800037a8:	b4e7c783          	lbu	a5,-1202(a5) # 800072f2 <_ZL9finishedB>
    800037ac:	fe0782e3          	beqz	a5,80003790 <_Z16System_Mode_testv+0xb4>
    800037b0:	00004797          	auipc	a5,0x4
    800037b4:	b417c783          	lbu	a5,-1215(a5) # 800072f1 <_ZL9finishedC>
    800037b8:	fc078ce3          	beqz	a5,80003790 <_Z16System_Mode_testv+0xb4>
    800037bc:	00004797          	auipc	a5,0x4
    800037c0:	b347c783          	lbu	a5,-1228(a5) # 800072f0 <_ZL9finishedD>
    800037c4:	fc0786e3          	beqz	a5,80003790 <_Z16System_Mode_testv+0xb4>
    }

}
    800037c8:	02813083          	ld	ra,40(sp)
    800037cc:	02013403          	ld	s0,32(sp)
    800037d0:	03010113          	addi	sp,sp,48
    800037d4:	00008067          	ret

00000000800037d8 <start>:
    800037d8:	ff010113          	addi	sp,sp,-16
    800037dc:	00813423          	sd	s0,8(sp)
    800037e0:	01010413          	addi	s0,sp,16
    800037e4:	300027f3          	csrr	a5,mstatus
    800037e8:	ffffe737          	lui	a4,0xffffe
    800037ec:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff629f>
    800037f0:	00e7f7b3          	and	a5,a5,a4
    800037f4:	00001737          	lui	a4,0x1
    800037f8:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    800037fc:	00e7e7b3          	or	a5,a5,a4
    80003800:	30079073          	csrw	mstatus,a5
    80003804:	00000797          	auipc	a5,0x0
    80003808:	16078793          	addi	a5,a5,352 # 80003964 <system_main>
    8000380c:	34179073          	csrw	mepc,a5
    80003810:	00000793          	li	a5,0
    80003814:	18079073          	csrw	satp,a5
    80003818:	000107b7          	lui	a5,0x10
    8000381c:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80003820:	30279073          	csrw	medeleg,a5
    80003824:	30379073          	csrw	mideleg,a5
    80003828:	104027f3          	csrr	a5,sie
    8000382c:	2227e793          	ori	a5,a5,546
    80003830:	10479073          	csrw	sie,a5
    80003834:	fff00793          	li	a5,-1
    80003838:	00a7d793          	srli	a5,a5,0xa
    8000383c:	3b079073          	csrw	pmpaddr0,a5
    80003840:	00f00793          	li	a5,15
    80003844:	3a079073          	csrw	pmpcfg0,a5
    80003848:	f14027f3          	csrr	a5,mhartid
    8000384c:	0200c737          	lui	a4,0x200c
    80003850:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80003854:	0007869b          	sext.w	a3,a5
    80003858:	00269713          	slli	a4,a3,0x2
    8000385c:	000f4637          	lui	a2,0xf4
    80003860:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80003864:	00d70733          	add	a4,a4,a3
    80003868:	0037979b          	slliw	a5,a5,0x3
    8000386c:	020046b7          	lui	a3,0x2004
    80003870:	00d787b3          	add	a5,a5,a3
    80003874:	00c585b3          	add	a1,a1,a2
    80003878:	00371693          	slli	a3,a4,0x3
    8000387c:	00004717          	auipc	a4,0x4
    80003880:	a8470713          	addi	a4,a4,-1404 # 80007300 <timer_scratch>
    80003884:	00b7b023          	sd	a1,0(a5)
    80003888:	00d70733          	add	a4,a4,a3
    8000388c:	00f73c23          	sd	a5,24(a4)
    80003890:	02c73023          	sd	a2,32(a4)
    80003894:	34071073          	csrw	mscratch,a4
    80003898:	00000797          	auipc	a5,0x0
    8000389c:	6e878793          	addi	a5,a5,1768 # 80003f80 <timervec>
    800038a0:	30579073          	csrw	mtvec,a5
    800038a4:	300027f3          	csrr	a5,mstatus
    800038a8:	0087e793          	ori	a5,a5,8
    800038ac:	30079073          	csrw	mstatus,a5
    800038b0:	304027f3          	csrr	a5,mie
    800038b4:	0807e793          	ori	a5,a5,128
    800038b8:	30479073          	csrw	mie,a5
    800038bc:	f14027f3          	csrr	a5,mhartid
    800038c0:	0007879b          	sext.w	a5,a5
    800038c4:	00078213          	mv	tp,a5
    800038c8:	30200073          	mret
    800038cc:	00813403          	ld	s0,8(sp)
    800038d0:	01010113          	addi	sp,sp,16
    800038d4:	00008067          	ret

00000000800038d8 <timerinit>:
    800038d8:	ff010113          	addi	sp,sp,-16
    800038dc:	00813423          	sd	s0,8(sp)
    800038e0:	01010413          	addi	s0,sp,16
    800038e4:	f14027f3          	csrr	a5,mhartid
    800038e8:	0200c737          	lui	a4,0x200c
    800038ec:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800038f0:	0007869b          	sext.w	a3,a5
    800038f4:	00269713          	slli	a4,a3,0x2
    800038f8:	000f4637          	lui	a2,0xf4
    800038fc:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80003900:	00d70733          	add	a4,a4,a3
    80003904:	0037979b          	slliw	a5,a5,0x3
    80003908:	020046b7          	lui	a3,0x2004
    8000390c:	00d787b3          	add	a5,a5,a3
    80003910:	00c585b3          	add	a1,a1,a2
    80003914:	00371693          	slli	a3,a4,0x3
    80003918:	00004717          	auipc	a4,0x4
    8000391c:	9e870713          	addi	a4,a4,-1560 # 80007300 <timer_scratch>
    80003920:	00b7b023          	sd	a1,0(a5)
    80003924:	00d70733          	add	a4,a4,a3
    80003928:	00f73c23          	sd	a5,24(a4)
    8000392c:	02c73023          	sd	a2,32(a4)
    80003930:	34071073          	csrw	mscratch,a4
    80003934:	00000797          	auipc	a5,0x0
    80003938:	64c78793          	addi	a5,a5,1612 # 80003f80 <timervec>
    8000393c:	30579073          	csrw	mtvec,a5
    80003940:	300027f3          	csrr	a5,mstatus
    80003944:	0087e793          	ori	a5,a5,8
    80003948:	30079073          	csrw	mstatus,a5
    8000394c:	304027f3          	csrr	a5,mie
    80003950:	0807e793          	ori	a5,a5,128
    80003954:	30479073          	csrw	mie,a5
    80003958:	00813403          	ld	s0,8(sp)
    8000395c:	01010113          	addi	sp,sp,16
    80003960:	00008067          	ret

0000000080003964 <system_main>:
    80003964:	fe010113          	addi	sp,sp,-32
    80003968:	00813823          	sd	s0,16(sp)
    8000396c:	00913423          	sd	s1,8(sp)
    80003970:	00113c23          	sd	ra,24(sp)
    80003974:	02010413          	addi	s0,sp,32
    80003978:	00000097          	auipc	ra,0x0
    8000397c:	0c4080e7          	jalr	196(ra) # 80003a3c <cpuid>
    80003980:	00004497          	auipc	s1,0x4
    80003984:	90048493          	addi	s1,s1,-1792 # 80007280 <started>
    80003988:	02050263          	beqz	a0,800039ac <system_main+0x48>
    8000398c:	0004a783          	lw	a5,0(s1)
    80003990:	0007879b          	sext.w	a5,a5
    80003994:	fe078ce3          	beqz	a5,8000398c <system_main+0x28>
    80003998:	0ff0000f          	fence
    8000399c:	00003517          	auipc	a0,0x3
    800039a0:	85c50513          	addi	a0,a0,-1956 # 800061f8 <CONSOLE_STATUS+0x1e8>
    800039a4:	00001097          	auipc	ra,0x1
    800039a8:	a78080e7          	jalr	-1416(ra) # 8000441c <panic>
    800039ac:	00001097          	auipc	ra,0x1
    800039b0:	9cc080e7          	jalr	-1588(ra) # 80004378 <consoleinit>
    800039b4:	00001097          	auipc	ra,0x1
    800039b8:	158080e7          	jalr	344(ra) # 80004b0c <printfinit>
    800039bc:	00003517          	auipc	a0,0x3
    800039c0:	91c50513          	addi	a0,a0,-1764 # 800062d8 <CONSOLE_STATUS+0x2c8>
    800039c4:	00001097          	auipc	ra,0x1
    800039c8:	ab4080e7          	jalr	-1356(ra) # 80004478 <__printf>
    800039cc:	00002517          	auipc	a0,0x2
    800039d0:	7fc50513          	addi	a0,a0,2044 # 800061c8 <CONSOLE_STATUS+0x1b8>
    800039d4:	00001097          	auipc	ra,0x1
    800039d8:	aa4080e7          	jalr	-1372(ra) # 80004478 <__printf>
    800039dc:	00003517          	auipc	a0,0x3
    800039e0:	8fc50513          	addi	a0,a0,-1796 # 800062d8 <CONSOLE_STATUS+0x2c8>
    800039e4:	00001097          	auipc	ra,0x1
    800039e8:	a94080e7          	jalr	-1388(ra) # 80004478 <__printf>
    800039ec:	00001097          	auipc	ra,0x1
    800039f0:	4ac080e7          	jalr	1196(ra) # 80004e98 <kinit>
    800039f4:	00000097          	auipc	ra,0x0
    800039f8:	148080e7          	jalr	328(ra) # 80003b3c <trapinit>
    800039fc:	00000097          	auipc	ra,0x0
    80003a00:	16c080e7          	jalr	364(ra) # 80003b68 <trapinithart>
    80003a04:	00000097          	auipc	ra,0x0
    80003a08:	5bc080e7          	jalr	1468(ra) # 80003fc0 <plicinit>
    80003a0c:	00000097          	auipc	ra,0x0
    80003a10:	5dc080e7          	jalr	1500(ra) # 80003fe8 <plicinithart>
    80003a14:	00000097          	auipc	ra,0x0
    80003a18:	078080e7          	jalr	120(ra) # 80003a8c <userinit>
    80003a1c:	0ff0000f          	fence
    80003a20:	00100793          	li	a5,1
    80003a24:	00002517          	auipc	a0,0x2
    80003a28:	7bc50513          	addi	a0,a0,1980 # 800061e0 <CONSOLE_STATUS+0x1d0>
    80003a2c:	00f4a023          	sw	a5,0(s1)
    80003a30:	00001097          	auipc	ra,0x1
    80003a34:	a48080e7          	jalr	-1464(ra) # 80004478 <__printf>
    80003a38:	0000006f          	j	80003a38 <system_main+0xd4>

0000000080003a3c <cpuid>:
    80003a3c:	ff010113          	addi	sp,sp,-16
    80003a40:	00813423          	sd	s0,8(sp)
    80003a44:	01010413          	addi	s0,sp,16
    80003a48:	00020513          	mv	a0,tp
    80003a4c:	00813403          	ld	s0,8(sp)
    80003a50:	0005051b          	sext.w	a0,a0
    80003a54:	01010113          	addi	sp,sp,16
    80003a58:	00008067          	ret

0000000080003a5c <mycpu>:
    80003a5c:	ff010113          	addi	sp,sp,-16
    80003a60:	00813423          	sd	s0,8(sp)
    80003a64:	01010413          	addi	s0,sp,16
    80003a68:	00020793          	mv	a5,tp
    80003a6c:	00813403          	ld	s0,8(sp)
    80003a70:	0007879b          	sext.w	a5,a5
    80003a74:	00779793          	slli	a5,a5,0x7
    80003a78:	00005517          	auipc	a0,0x5
    80003a7c:	8b850513          	addi	a0,a0,-1864 # 80008330 <cpus>
    80003a80:	00f50533          	add	a0,a0,a5
    80003a84:	01010113          	addi	sp,sp,16
    80003a88:	00008067          	ret

0000000080003a8c <userinit>:
    80003a8c:	ff010113          	addi	sp,sp,-16
    80003a90:	00813423          	sd	s0,8(sp)
    80003a94:	01010413          	addi	s0,sp,16
    80003a98:	00813403          	ld	s0,8(sp)
    80003a9c:	01010113          	addi	sp,sp,16
    80003aa0:	ffffe317          	auipc	t1,0xffffe
    80003aa4:	bc030067          	jr	-1088(t1) # 80001660 <main>

0000000080003aa8 <either_copyout>:
    80003aa8:	ff010113          	addi	sp,sp,-16
    80003aac:	00813023          	sd	s0,0(sp)
    80003ab0:	00113423          	sd	ra,8(sp)
    80003ab4:	01010413          	addi	s0,sp,16
    80003ab8:	02051663          	bnez	a0,80003ae4 <either_copyout+0x3c>
    80003abc:	00058513          	mv	a0,a1
    80003ac0:	00060593          	mv	a1,a2
    80003ac4:	0006861b          	sext.w	a2,a3
    80003ac8:	00002097          	auipc	ra,0x2
    80003acc:	c5c080e7          	jalr	-932(ra) # 80005724 <__memmove>
    80003ad0:	00813083          	ld	ra,8(sp)
    80003ad4:	00013403          	ld	s0,0(sp)
    80003ad8:	00000513          	li	a0,0
    80003adc:	01010113          	addi	sp,sp,16
    80003ae0:	00008067          	ret
    80003ae4:	00002517          	auipc	a0,0x2
    80003ae8:	73c50513          	addi	a0,a0,1852 # 80006220 <CONSOLE_STATUS+0x210>
    80003aec:	00001097          	auipc	ra,0x1
    80003af0:	930080e7          	jalr	-1744(ra) # 8000441c <panic>

0000000080003af4 <either_copyin>:
    80003af4:	ff010113          	addi	sp,sp,-16
    80003af8:	00813023          	sd	s0,0(sp)
    80003afc:	00113423          	sd	ra,8(sp)
    80003b00:	01010413          	addi	s0,sp,16
    80003b04:	02059463          	bnez	a1,80003b2c <either_copyin+0x38>
    80003b08:	00060593          	mv	a1,a2
    80003b0c:	0006861b          	sext.w	a2,a3
    80003b10:	00002097          	auipc	ra,0x2
    80003b14:	c14080e7          	jalr	-1004(ra) # 80005724 <__memmove>
    80003b18:	00813083          	ld	ra,8(sp)
    80003b1c:	00013403          	ld	s0,0(sp)
    80003b20:	00000513          	li	a0,0
    80003b24:	01010113          	addi	sp,sp,16
    80003b28:	00008067          	ret
    80003b2c:	00002517          	auipc	a0,0x2
    80003b30:	71c50513          	addi	a0,a0,1820 # 80006248 <CONSOLE_STATUS+0x238>
    80003b34:	00001097          	auipc	ra,0x1
    80003b38:	8e8080e7          	jalr	-1816(ra) # 8000441c <panic>

0000000080003b3c <trapinit>:
    80003b3c:	ff010113          	addi	sp,sp,-16
    80003b40:	00813423          	sd	s0,8(sp)
    80003b44:	01010413          	addi	s0,sp,16
    80003b48:	00813403          	ld	s0,8(sp)
    80003b4c:	00002597          	auipc	a1,0x2
    80003b50:	72458593          	addi	a1,a1,1828 # 80006270 <CONSOLE_STATUS+0x260>
    80003b54:	00005517          	auipc	a0,0x5
    80003b58:	85c50513          	addi	a0,a0,-1956 # 800083b0 <tickslock>
    80003b5c:	01010113          	addi	sp,sp,16
    80003b60:	00001317          	auipc	t1,0x1
    80003b64:	5c830067          	jr	1480(t1) # 80005128 <initlock>

0000000080003b68 <trapinithart>:
    80003b68:	ff010113          	addi	sp,sp,-16
    80003b6c:	00813423          	sd	s0,8(sp)
    80003b70:	01010413          	addi	s0,sp,16
    80003b74:	00000797          	auipc	a5,0x0
    80003b78:	2fc78793          	addi	a5,a5,764 # 80003e70 <kernelvec>
    80003b7c:	10579073          	csrw	stvec,a5
    80003b80:	00813403          	ld	s0,8(sp)
    80003b84:	01010113          	addi	sp,sp,16
    80003b88:	00008067          	ret

0000000080003b8c <usertrap>:
    80003b8c:	ff010113          	addi	sp,sp,-16
    80003b90:	00813423          	sd	s0,8(sp)
    80003b94:	01010413          	addi	s0,sp,16
    80003b98:	00813403          	ld	s0,8(sp)
    80003b9c:	01010113          	addi	sp,sp,16
    80003ba0:	00008067          	ret

0000000080003ba4 <usertrapret>:
    80003ba4:	ff010113          	addi	sp,sp,-16
    80003ba8:	00813423          	sd	s0,8(sp)
    80003bac:	01010413          	addi	s0,sp,16
    80003bb0:	00813403          	ld	s0,8(sp)
    80003bb4:	01010113          	addi	sp,sp,16
    80003bb8:	00008067          	ret

0000000080003bbc <kerneltrap>:
    80003bbc:	fe010113          	addi	sp,sp,-32
    80003bc0:	00813823          	sd	s0,16(sp)
    80003bc4:	00113c23          	sd	ra,24(sp)
    80003bc8:	00913423          	sd	s1,8(sp)
    80003bcc:	02010413          	addi	s0,sp,32
    80003bd0:	142025f3          	csrr	a1,scause
    80003bd4:	100027f3          	csrr	a5,sstatus
    80003bd8:	0027f793          	andi	a5,a5,2
    80003bdc:	10079c63          	bnez	a5,80003cf4 <kerneltrap+0x138>
    80003be0:	142027f3          	csrr	a5,scause
    80003be4:	0207ce63          	bltz	a5,80003c20 <kerneltrap+0x64>
    80003be8:	00002517          	auipc	a0,0x2
    80003bec:	6d050513          	addi	a0,a0,1744 # 800062b8 <CONSOLE_STATUS+0x2a8>
    80003bf0:	00001097          	auipc	ra,0x1
    80003bf4:	888080e7          	jalr	-1912(ra) # 80004478 <__printf>
    80003bf8:	141025f3          	csrr	a1,sepc
    80003bfc:	14302673          	csrr	a2,stval
    80003c00:	00002517          	auipc	a0,0x2
    80003c04:	6c850513          	addi	a0,a0,1736 # 800062c8 <CONSOLE_STATUS+0x2b8>
    80003c08:	00001097          	auipc	ra,0x1
    80003c0c:	870080e7          	jalr	-1936(ra) # 80004478 <__printf>
    80003c10:	00002517          	auipc	a0,0x2
    80003c14:	6d050513          	addi	a0,a0,1744 # 800062e0 <CONSOLE_STATUS+0x2d0>
    80003c18:	00001097          	auipc	ra,0x1
    80003c1c:	804080e7          	jalr	-2044(ra) # 8000441c <panic>
    80003c20:	0ff7f713          	andi	a4,a5,255
    80003c24:	00900693          	li	a3,9
    80003c28:	04d70063          	beq	a4,a3,80003c68 <kerneltrap+0xac>
    80003c2c:	fff00713          	li	a4,-1
    80003c30:	03f71713          	slli	a4,a4,0x3f
    80003c34:	00170713          	addi	a4,a4,1
    80003c38:	fae798e3          	bne	a5,a4,80003be8 <kerneltrap+0x2c>
    80003c3c:	00000097          	auipc	ra,0x0
    80003c40:	e00080e7          	jalr	-512(ra) # 80003a3c <cpuid>
    80003c44:	06050663          	beqz	a0,80003cb0 <kerneltrap+0xf4>
    80003c48:	144027f3          	csrr	a5,sip
    80003c4c:	ffd7f793          	andi	a5,a5,-3
    80003c50:	14479073          	csrw	sip,a5
    80003c54:	01813083          	ld	ra,24(sp)
    80003c58:	01013403          	ld	s0,16(sp)
    80003c5c:	00813483          	ld	s1,8(sp)
    80003c60:	02010113          	addi	sp,sp,32
    80003c64:	00008067          	ret
    80003c68:	00000097          	auipc	ra,0x0
    80003c6c:	3cc080e7          	jalr	972(ra) # 80004034 <plic_claim>
    80003c70:	00a00793          	li	a5,10
    80003c74:	00050493          	mv	s1,a0
    80003c78:	06f50863          	beq	a0,a5,80003ce8 <kerneltrap+0x12c>
    80003c7c:	fc050ce3          	beqz	a0,80003c54 <kerneltrap+0x98>
    80003c80:	00050593          	mv	a1,a0
    80003c84:	00002517          	auipc	a0,0x2
    80003c88:	61450513          	addi	a0,a0,1556 # 80006298 <CONSOLE_STATUS+0x288>
    80003c8c:	00000097          	auipc	ra,0x0
    80003c90:	7ec080e7          	jalr	2028(ra) # 80004478 <__printf>
    80003c94:	01013403          	ld	s0,16(sp)
    80003c98:	01813083          	ld	ra,24(sp)
    80003c9c:	00048513          	mv	a0,s1
    80003ca0:	00813483          	ld	s1,8(sp)
    80003ca4:	02010113          	addi	sp,sp,32
    80003ca8:	00000317          	auipc	t1,0x0
    80003cac:	3c430067          	jr	964(t1) # 8000406c <plic_complete>
    80003cb0:	00004517          	auipc	a0,0x4
    80003cb4:	70050513          	addi	a0,a0,1792 # 800083b0 <tickslock>
    80003cb8:	00001097          	auipc	ra,0x1
    80003cbc:	494080e7          	jalr	1172(ra) # 8000514c <acquire>
    80003cc0:	00003717          	auipc	a4,0x3
    80003cc4:	5c470713          	addi	a4,a4,1476 # 80007284 <ticks>
    80003cc8:	00072783          	lw	a5,0(a4)
    80003ccc:	00004517          	auipc	a0,0x4
    80003cd0:	6e450513          	addi	a0,a0,1764 # 800083b0 <tickslock>
    80003cd4:	0017879b          	addiw	a5,a5,1
    80003cd8:	00f72023          	sw	a5,0(a4)
    80003cdc:	00001097          	auipc	ra,0x1
    80003ce0:	53c080e7          	jalr	1340(ra) # 80005218 <release>
    80003ce4:	f65ff06f          	j	80003c48 <kerneltrap+0x8c>
    80003ce8:	00001097          	auipc	ra,0x1
    80003cec:	098080e7          	jalr	152(ra) # 80004d80 <uartintr>
    80003cf0:	fa5ff06f          	j	80003c94 <kerneltrap+0xd8>
    80003cf4:	00002517          	auipc	a0,0x2
    80003cf8:	58450513          	addi	a0,a0,1412 # 80006278 <CONSOLE_STATUS+0x268>
    80003cfc:	00000097          	auipc	ra,0x0
    80003d00:	720080e7          	jalr	1824(ra) # 8000441c <panic>

0000000080003d04 <clockintr>:
    80003d04:	fe010113          	addi	sp,sp,-32
    80003d08:	00813823          	sd	s0,16(sp)
    80003d0c:	00913423          	sd	s1,8(sp)
    80003d10:	00113c23          	sd	ra,24(sp)
    80003d14:	02010413          	addi	s0,sp,32
    80003d18:	00004497          	auipc	s1,0x4
    80003d1c:	69848493          	addi	s1,s1,1688 # 800083b0 <tickslock>
    80003d20:	00048513          	mv	a0,s1
    80003d24:	00001097          	auipc	ra,0x1
    80003d28:	428080e7          	jalr	1064(ra) # 8000514c <acquire>
    80003d2c:	00003717          	auipc	a4,0x3
    80003d30:	55870713          	addi	a4,a4,1368 # 80007284 <ticks>
    80003d34:	00072783          	lw	a5,0(a4)
    80003d38:	01013403          	ld	s0,16(sp)
    80003d3c:	01813083          	ld	ra,24(sp)
    80003d40:	00048513          	mv	a0,s1
    80003d44:	0017879b          	addiw	a5,a5,1
    80003d48:	00813483          	ld	s1,8(sp)
    80003d4c:	00f72023          	sw	a5,0(a4)
    80003d50:	02010113          	addi	sp,sp,32
    80003d54:	00001317          	auipc	t1,0x1
    80003d58:	4c430067          	jr	1220(t1) # 80005218 <release>

0000000080003d5c <devintr>:
    80003d5c:	142027f3          	csrr	a5,scause
    80003d60:	00000513          	li	a0,0
    80003d64:	0007c463          	bltz	a5,80003d6c <devintr+0x10>
    80003d68:	00008067          	ret
    80003d6c:	fe010113          	addi	sp,sp,-32
    80003d70:	00813823          	sd	s0,16(sp)
    80003d74:	00113c23          	sd	ra,24(sp)
    80003d78:	00913423          	sd	s1,8(sp)
    80003d7c:	02010413          	addi	s0,sp,32
    80003d80:	0ff7f713          	andi	a4,a5,255
    80003d84:	00900693          	li	a3,9
    80003d88:	04d70c63          	beq	a4,a3,80003de0 <devintr+0x84>
    80003d8c:	fff00713          	li	a4,-1
    80003d90:	03f71713          	slli	a4,a4,0x3f
    80003d94:	00170713          	addi	a4,a4,1
    80003d98:	00e78c63          	beq	a5,a4,80003db0 <devintr+0x54>
    80003d9c:	01813083          	ld	ra,24(sp)
    80003da0:	01013403          	ld	s0,16(sp)
    80003da4:	00813483          	ld	s1,8(sp)
    80003da8:	02010113          	addi	sp,sp,32
    80003dac:	00008067          	ret
    80003db0:	00000097          	auipc	ra,0x0
    80003db4:	c8c080e7          	jalr	-884(ra) # 80003a3c <cpuid>
    80003db8:	06050663          	beqz	a0,80003e24 <devintr+0xc8>
    80003dbc:	144027f3          	csrr	a5,sip
    80003dc0:	ffd7f793          	andi	a5,a5,-3
    80003dc4:	14479073          	csrw	sip,a5
    80003dc8:	01813083          	ld	ra,24(sp)
    80003dcc:	01013403          	ld	s0,16(sp)
    80003dd0:	00813483          	ld	s1,8(sp)
    80003dd4:	00200513          	li	a0,2
    80003dd8:	02010113          	addi	sp,sp,32
    80003ddc:	00008067          	ret
    80003de0:	00000097          	auipc	ra,0x0
    80003de4:	254080e7          	jalr	596(ra) # 80004034 <plic_claim>
    80003de8:	00a00793          	li	a5,10
    80003dec:	00050493          	mv	s1,a0
    80003df0:	06f50663          	beq	a0,a5,80003e5c <devintr+0x100>
    80003df4:	00100513          	li	a0,1
    80003df8:	fa0482e3          	beqz	s1,80003d9c <devintr+0x40>
    80003dfc:	00048593          	mv	a1,s1
    80003e00:	00002517          	auipc	a0,0x2
    80003e04:	49850513          	addi	a0,a0,1176 # 80006298 <CONSOLE_STATUS+0x288>
    80003e08:	00000097          	auipc	ra,0x0
    80003e0c:	670080e7          	jalr	1648(ra) # 80004478 <__printf>
    80003e10:	00048513          	mv	a0,s1
    80003e14:	00000097          	auipc	ra,0x0
    80003e18:	258080e7          	jalr	600(ra) # 8000406c <plic_complete>
    80003e1c:	00100513          	li	a0,1
    80003e20:	f7dff06f          	j	80003d9c <devintr+0x40>
    80003e24:	00004517          	auipc	a0,0x4
    80003e28:	58c50513          	addi	a0,a0,1420 # 800083b0 <tickslock>
    80003e2c:	00001097          	auipc	ra,0x1
    80003e30:	320080e7          	jalr	800(ra) # 8000514c <acquire>
    80003e34:	00003717          	auipc	a4,0x3
    80003e38:	45070713          	addi	a4,a4,1104 # 80007284 <ticks>
    80003e3c:	00072783          	lw	a5,0(a4)
    80003e40:	00004517          	auipc	a0,0x4
    80003e44:	57050513          	addi	a0,a0,1392 # 800083b0 <tickslock>
    80003e48:	0017879b          	addiw	a5,a5,1
    80003e4c:	00f72023          	sw	a5,0(a4)
    80003e50:	00001097          	auipc	ra,0x1
    80003e54:	3c8080e7          	jalr	968(ra) # 80005218 <release>
    80003e58:	f65ff06f          	j	80003dbc <devintr+0x60>
    80003e5c:	00001097          	auipc	ra,0x1
    80003e60:	f24080e7          	jalr	-220(ra) # 80004d80 <uartintr>
    80003e64:	fadff06f          	j	80003e10 <devintr+0xb4>
	...

0000000080003e70 <kernelvec>:
    80003e70:	f0010113          	addi	sp,sp,-256
    80003e74:	00113023          	sd	ra,0(sp)
    80003e78:	00213423          	sd	sp,8(sp)
    80003e7c:	00313823          	sd	gp,16(sp)
    80003e80:	00413c23          	sd	tp,24(sp)
    80003e84:	02513023          	sd	t0,32(sp)
    80003e88:	02613423          	sd	t1,40(sp)
    80003e8c:	02713823          	sd	t2,48(sp)
    80003e90:	02813c23          	sd	s0,56(sp)
    80003e94:	04913023          	sd	s1,64(sp)
    80003e98:	04a13423          	sd	a0,72(sp)
    80003e9c:	04b13823          	sd	a1,80(sp)
    80003ea0:	04c13c23          	sd	a2,88(sp)
    80003ea4:	06d13023          	sd	a3,96(sp)
    80003ea8:	06e13423          	sd	a4,104(sp)
    80003eac:	06f13823          	sd	a5,112(sp)
    80003eb0:	07013c23          	sd	a6,120(sp)
    80003eb4:	09113023          	sd	a7,128(sp)
    80003eb8:	09213423          	sd	s2,136(sp)
    80003ebc:	09313823          	sd	s3,144(sp)
    80003ec0:	09413c23          	sd	s4,152(sp)
    80003ec4:	0b513023          	sd	s5,160(sp)
    80003ec8:	0b613423          	sd	s6,168(sp)
    80003ecc:	0b713823          	sd	s7,176(sp)
    80003ed0:	0b813c23          	sd	s8,184(sp)
    80003ed4:	0d913023          	sd	s9,192(sp)
    80003ed8:	0da13423          	sd	s10,200(sp)
    80003edc:	0db13823          	sd	s11,208(sp)
    80003ee0:	0dc13c23          	sd	t3,216(sp)
    80003ee4:	0fd13023          	sd	t4,224(sp)
    80003ee8:	0fe13423          	sd	t5,232(sp)
    80003eec:	0ff13823          	sd	t6,240(sp)
    80003ef0:	ccdff0ef          	jal	ra,80003bbc <kerneltrap>
    80003ef4:	00013083          	ld	ra,0(sp)
    80003ef8:	00813103          	ld	sp,8(sp)
    80003efc:	01013183          	ld	gp,16(sp)
    80003f00:	02013283          	ld	t0,32(sp)
    80003f04:	02813303          	ld	t1,40(sp)
    80003f08:	03013383          	ld	t2,48(sp)
    80003f0c:	03813403          	ld	s0,56(sp)
    80003f10:	04013483          	ld	s1,64(sp)
    80003f14:	04813503          	ld	a0,72(sp)
    80003f18:	05013583          	ld	a1,80(sp)
    80003f1c:	05813603          	ld	a2,88(sp)
    80003f20:	06013683          	ld	a3,96(sp)
    80003f24:	06813703          	ld	a4,104(sp)
    80003f28:	07013783          	ld	a5,112(sp)
    80003f2c:	07813803          	ld	a6,120(sp)
    80003f30:	08013883          	ld	a7,128(sp)
    80003f34:	08813903          	ld	s2,136(sp)
    80003f38:	09013983          	ld	s3,144(sp)
    80003f3c:	09813a03          	ld	s4,152(sp)
    80003f40:	0a013a83          	ld	s5,160(sp)
    80003f44:	0a813b03          	ld	s6,168(sp)
    80003f48:	0b013b83          	ld	s7,176(sp)
    80003f4c:	0b813c03          	ld	s8,184(sp)
    80003f50:	0c013c83          	ld	s9,192(sp)
    80003f54:	0c813d03          	ld	s10,200(sp)
    80003f58:	0d013d83          	ld	s11,208(sp)
    80003f5c:	0d813e03          	ld	t3,216(sp)
    80003f60:	0e013e83          	ld	t4,224(sp)
    80003f64:	0e813f03          	ld	t5,232(sp)
    80003f68:	0f013f83          	ld	t6,240(sp)
    80003f6c:	10010113          	addi	sp,sp,256
    80003f70:	10200073          	sret
    80003f74:	00000013          	nop
    80003f78:	00000013          	nop
    80003f7c:	00000013          	nop

0000000080003f80 <timervec>:
    80003f80:	34051573          	csrrw	a0,mscratch,a0
    80003f84:	00b53023          	sd	a1,0(a0)
    80003f88:	00c53423          	sd	a2,8(a0)
    80003f8c:	00d53823          	sd	a3,16(a0)
    80003f90:	01853583          	ld	a1,24(a0)
    80003f94:	02053603          	ld	a2,32(a0)
    80003f98:	0005b683          	ld	a3,0(a1)
    80003f9c:	00c686b3          	add	a3,a3,a2
    80003fa0:	00d5b023          	sd	a3,0(a1)
    80003fa4:	00200593          	li	a1,2
    80003fa8:	14459073          	csrw	sip,a1
    80003fac:	01053683          	ld	a3,16(a0)
    80003fb0:	00853603          	ld	a2,8(a0)
    80003fb4:	00053583          	ld	a1,0(a0)
    80003fb8:	34051573          	csrrw	a0,mscratch,a0
    80003fbc:	30200073          	mret

0000000080003fc0 <plicinit>:
    80003fc0:	ff010113          	addi	sp,sp,-16
    80003fc4:	00813423          	sd	s0,8(sp)
    80003fc8:	01010413          	addi	s0,sp,16
    80003fcc:	00813403          	ld	s0,8(sp)
    80003fd0:	0c0007b7          	lui	a5,0xc000
    80003fd4:	00100713          	li	a4,1
    80003fd8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80003fdc:	00e7a223          	sw	a4,4(a5)
    80003fe0:	01010113          	addi	sp,sp,16
    80003fe4:	00008067          	ret

0000000080003fe8 <plicinithart>:
    80003fe8:	ff010113          	addi	sp,sp,-16
    80003fec:	00813023          	sd	s0,0(sp)
    80003ff0:	00113423          	sd	ra,8(sp)
    80003ff4:	01010413          	addi	s0,sp,16
    80003ff8:	00000097          	auipc	ra,0x0
    80003ffc:	a44080e7          	jalr	-1468(ra) # 80003a3c <cpuid>
    80004000:	0085171b          	slliw	a4,a0,0x8
    80004004:	0c0027b7          	lui	a5,0xc002
    80004008:	00e787b3          	add	a5,a5,a4
    8000400c:	40200713          	li	a4,1026
    80004010:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80004014:	00813083          	ld	ra,8(sp)
    80004018:	00013403          	ld	s0,0(sp)
    8000401c:	00d5151b          	slliw	a0,a0,0xd
    80004020:	0c2017b7          	lui	a5,0xc201
    80004024:	00a78533          	add	a0,a5,a0
    80004028:	00052023          	sw	zero,0(a0)
    8000402c:	01010113          	addi	sp,sp,16
    80004030:	00008067          	ret

0000000080004034 <plic_claim>:
    80004034:	ff010113          	addi	sp,sp,-16
    80004038:	00813023          	sd	s0,0(sp)
    8000403c:	00113423          	sd	ra,8(sp)
    80004040:	01010413          	addi	s0,sp,16
    80004044:	00000097          	auipc	ra,0x0
    80004048:	9f8080e7          	jalr	-1544(ra) # 80003a3c <cpuid>
    8000404c:	00813083          	ld	ra,8(sp)
    80004050:	00013403          	ld	s0,0(sp)
    80004054:	00d5151b          	slliw	a0,a0,0xd
    80004058:	0c2017b7          	lui	a5,0xc201
    8000405c:	00a78533          	add	a0,a5,a0
    80004060:	00452503          	lw	a0,4(a0)
    80004064:	01010113          	addi	sp,sp,16
    80004068:	00008067          	ret

000000008000406c <plic_complete>:
    8000406c:	fe010113          	addi	sp,sp,-32
    80004070:	00813823          	sd	s0,16(sp)
    80004074:	00913423          	sd	s1,8(sp)
    80004078:	00113c23          	sd	ra,24(sp)
    8000407c:	02010413          	addi	s0,sp,32
    80004080:	00050493          	mv	s1,a0
    80004084:	00000097          	auipc	ra,0x0
    80004088:	9b8080e7          	jalr	-1608(ra) # 80003a3c <cpuid>
    8000408c:	01813083          	ld	ra,24(sp)
    80004090:	01013403          	ld	s0,16(sp)
    80004094:	00d5179b          	slliw	a5,a0,0xd
    80004098:	0c201737          	lui	a4,0xc201
    8000409c:	00f707b3          	add	a5,a4,a5
    800040a0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    800040a4:	00813483          	ld	s1,8(sp)
    800040a8:	02010113          	addi	sp,sp,32
    800040ac:	00008067          	ret

00000000800040b0 <consolewrite>:
    800040b0:	fb010113          	addi	sp,sp,-80
    800040b4:	04813023          	sd	s0,64(sp)
    800040b8:	04113423          	sd	ra,72(sp)
    800040bc:	02913c23          	sd	s1,56(sp)
    800040c0:	03213823          	sd	s2,48(sp)
    800040c4:	03313423          	sd	s3,40(sp)
    800040c8:	03413023          	sd	s4,32(sp)
    800040cc:	01513c23          	sd	s5,24(sp)
    800040d0:	05010413          	addi	s0,sp,80
    800040d4:	06c05c63          	blez	a2,8000414c <consolewrite+0x9c>
    800040d8:	00060993          	mv	s3,a2
    800040dc:	00050a13          	mv	s4,a0
    800040e0:	00058493          	mv	s1,a1
    800040e4:	00000913          	li	s2,0
    800040e8:	fff00a93          	li	s5,-1
    800040ec:	01c0006f          	j	80004108 <consolewrite+0x58>
    800040f0:	fbf44503          	lbu	a0,-65(s0)
    800040f4:	0019091b          	addiw	s2,s2,1
    800040f8:	00148493          	addi	s1,s1,1
    800040fc:	00001097          	auipc	ra,0x1
    80004100:	a9c080e7          	jalr	-1380(ra) # 80004b98 <uartputc>
    80004104:	03298063          	beq	s3,s2,80004124 <consolewrite+0x74>
    80004108:	00048613          	mv	a2,s1
    8000410c:	00100693          	li	a3,1
    80004110:	000a0593          	mv	a1,s4
    80004114:	fbf40513          	addi	a0,s0,-65
    80004118:	00000097          	auipc	ra,0x0
    8000411c:	9dc080e7          	jalr	-1572(ra) # 80003af4 <either_copyin>
    80004120:	fd5518e3          	bne	a0,s5,800040f0 <consolewrite+0x40>
    80004124:	04813083          	ld	ra,72(sp)
    80004128:	04013403          	ld	s0,64(sp)
    8000412c:	03813483          	ld	s1,56(sp)
    80004130:	02813983          	ld	s3,40(sp)
    80004134:	02013a03          	ld	s4,32(sp)
    80004138:	01813a83          	ld	s5,24(sp)
    8000413c:	00090513          	mv	a0,s2
    80004140:	03013903          	ld	s2,48(sp)
    80004144:	05010113          	addi	sp,sp,80
    80004148:	00008067          	ret
    8000414c:	00000913          	li	s2,0
    80004150:	fd5ff06f          	j	80004124 <consolewrite+0x74>

0000000080004154 <consoleread>:
    80004154:	f9010113          	addi	sp,sp,-112
    80004158:	06813023          	sd	s0,96(sp)
    8000415c:	04913c23          	sd	s1,88(sp)
    80004160:	05213823          	sd	s2,80(sp)
    80004164:	05313423          	sd	s3,72(sp)
    80004168:	05413023          	sd	s4,64(sp)
    8000416c:	03513c23          	sd	s5,56(sp)
    80004170:	03613823          	sd	s6,48(sp)
    80004174:	03713423          	sd	s7,40(sp)
    80004178:	03813023          	sd	s8,32(sp)
    8000417c:	06113423          	sd	ra,104(sp)
    80004180:	01913c23          	sd	s9,24(sp)
    80004184:	07010413          	addi	s0,sp,112
    80004188:	00060b93          	mv	s7,a2
    8000418c:	00050913          	mv	s2,a0
    80004190:	00058c13          	mv	s8,a1
    80004194:	00060b1b          	sext.w	s6,a2
    80004198:	00004497          	auipc	s1,0x4
    8000419c:	24048493          	addi	s1,s1,576 # 800083d8 <cons>
    800041a0:	00400993          	li	s3,4
    800041a4:	fff00a13          	li	s4,-1
    800041a8:	00a00a93          	li	s5,10
    800041ac:	05705e63          	blez	s7,80004208 <consoleread+0xb4>
    800041b0:	09c4a703          	lw	a4,156(s1)
    800041b4:	0984a783          	lw	a5,152(s1)
    800041b8:	0007071b          	sext.w	a4,a4
    800041bc:	08e78463          	beq	a5,a4,80004244 <consoleread+0xf0>
    800041c0:	07f7f713          	andi	a4,a5,127
    800041c4:	00e48733          	add	a4,s1,a4
    800041c8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    800041cc:	0017869b          	addiw	a3,a5,1
    800041d0:	08d4ac23          	sw	a3,152(s1)
    800041d4:	00070c9b          	sext.w	s9,a4
    800041d8:	0b370663          	beq	a4,s3,80004284 <consoleread+0x130>
    800041dc:	00100693          	li	a3,1
    800041e0:	f9f40613          	addi	a2,s0,-97
    800041e4:	000c0593          	mv	a1,s8
    800041e8:	00090513          	mv	a0,s2
    800041ec:	f8e40fa3          	sb	a4,-97(s0)
    800041f0:	00000097          	auipc	ra,0x0
    800041f4:	8b8080e7          	jalr	-1864(ra) # 80003aa8 <either_copyout>
    800041f8:	01450863          	beq	a0,s4,80004208 <consoleread+0xb4>
    800041fc:	001c0c13          	addi	s8,s8,1
    80004200:	fffb8b9b          	addiw	s7,s7,-1
    80004204:	fb5c94e3          	bne	s9,s5,800041ac <consoleread+0x58>
    80004208:	000b851b          	sext.w	a0,s7
    8000420c:	06813083          	ld	ra,104(sp)
    80004210:	06013403          	ld	s0,96(sp)
    80004214:	05813483          	ld	s1,88(sp)
    80004218:	05013903          	ld	s2,80(sp)
    8000421c:	04813983          	ld	s3,72(sp)
    80004220:	04013a03          	ld	s4,64(sp)
    80004224:	03813a83          	ld	s5,56(sp)
    80004228:	02813b83          	ld	s7,40(sp)
    8000422c:	02013c03          	ld	s8,32(sp)
    80004230:	01813c83          	ld	s9,24(sp)
    80004234:	40ab053b          	subw	a0,s6,a0
    80004238:	03013b03          	ld	s6,48(sp)
    8000423c:	07010113          	addi	sp,sp,112
    80004240:	00008067          	ret
    80004244:	00001097          	auipc	ra,0x1
    80004248:	1d8080e7          	jalr	472(ra) # 8000541c <push_on>
    8000424c:	0984a703          	lw	a4,152(s1)
    80004250:	09c4a783          	lw	a5,156(s1)
    80004254:	0007879b          	sext.w	a5,a5
    80004258:	fef70ce3          	beq	a4,a5,80004250 <consoleread+0xfc>
    8000425c:	00001097          	auipc	ra,0x1
    80004260:	234080e7          	jalr	564(ra) # 80005490 <pop_on>
    80004264:	0984a783          	lw	a5,152(s1)
    80004268:	07f7f713          	andi	a4,a5,127
    8000426c:	00e48733          	add	a4,s1,a4
    80004270:	01874703          	lbu	a4,24(a4)
    80004274:	0017869b          	addiw	a3,a5,1
    80004278:	08d4ac23          	sw	a3,152(s1)
    8000427c:	00070c9b          	sext.w	s9,a4
    80004280:	f5371ee3          	bne	a4,s3,800041dc <consoleread+0x88>
    80004284:	000b851b          	sext.w	a0,s7
    80004288:	f96bf2e3          	bgeu	s7,s6,8000420c <consoleread+0xb8>
    8000428c:	08f4ac23          	sw	a5,152(s1)
    80004290:	f7dff06f          	j	8000420c <consoleread+0xb8>

0000000080004294 <consputc>:
    80004294:	10000793          	li	a5,256
    80004298:	00f50663          	beq	a0,a5,800042a4 <consputc+0x10>
    8000429c:	00001317          	auipc	t1,0x1
    800042a0:	9f430067          	jr	-1548(t1) # 80004c90 <uartputc_sync>
    800042a4:	ff010113          	addi	sp,sp,-16
    800042a8:	00113423          	sd	ra,8(sp)
    800042ac:	00813023          	sd	s0,0(sp)
    800042b0:	01010413          	addi	s0,sp,16
    800042b4:	00800513          	li	a0,8
    800042b8:	00001097          	auipc	ra,0x1
    800042bc:	9d8080e7          	jalr	-1576(ra) # 80004c90 <uartputc_sync>
    800042c0:	02000513          	li	a0,32
    800042c4:	00001097          	auipc	ra,0x1
    800042c8:	9cc080e7          	jalr	-1588(ra) # 80004c90 <uartputc_sync>
    800042cc:	00013403          	ld	s0,0(sp)
    800042d0:	00813083          	ld	ra,8(sp)
    800042d4:	00800513          	li	a0,8
    800042d8:	01010113          	addi	sp,sp,16
    800042dc:	00001317          	auipc	t1,0x1
    800042e0:	9b430067          	jr	-1612(t1) # 80004c90 <uartputc_sync>

00000000800042e4 <consoleintr>:
    800042e4:	fe010113          	addi	sp,sp,-32
    800042e8:	00813823          	sd	s0,16(sp)
    800042ec:	00913423          	sd	s1,8(sp)
    800042f0:	01213023          	sd	s2,0(sp)
    800042f4:	00113c23          	sd	ra,24(sp)
    800042f8:	02010413          	addi	s0,sp,32
    800042fc:	00004917          	auipc	s2,0x4
    80004300:	0dc90913          	addi	s2,s2,220 # 800083d8 <cons>
    80004304:	00050493          	mv	s1,a0
    80004308:	00090513          	mv	a0,s2
    8000430c:	00001097          	auipc	ra,0x1
    80004310:	e40080e7          	jalr	-448(ra) # 8000514c <acquire>
    80004314:	02048c63          	beqz	s1,8000434c <consoleintr+0x68>
    80004318:	0a092783          	lw	a5,160(s2)
    8000431c:	09892703          	lw	a4,152(s2)
    80004320:	07f00693          	li	a3,127
    80004324:	40e7873b          	subw	a4,a5,a4
    80004328:	02e6e263          	bltu	a3,a4,8000434c <consoleintr+0x68>
    8000432c:	00d00713          	li	a4,13
    80004330:	04e48063          	beq	s1,a4,80004370 <consoleintr+0x8c>
    80004334:	07f7f713          	andi	a4,a5,127
    80004338:	00e90733          	add	a4,s2,a4
    8000433c:	0017879b          	addiw	a5,a5,1
    80004340:	0af92023          	sw	a5,160(s2)
    80004344:	00970c23          	sb	s1,24(a4)
    80004348:	08f92e23          	sw	a5,156(s2)
    8000434c:	01013403          	ld	s0,16(sp)
    80004350:	01813083          	ld	ra,24(sp)
    80004354:	00813483          	ld	s1,8(sp)
    80004358:	00013903          	ld	s2,0(sp)
    8000435c:	00004517          	auipc	a0,0x4
    80004360:	07c50513          	addi	a0,a0,124 # 800083d8 <cons>
    80004364:	02010113          	addi	sp,sp,32
    80004368:	00001317          	auipc	t1,0x1
    8000436c:	eb030067          	jr	-336(t1) # 80005218 <release>
    80004370:	00a00493          	li	s1,10
    80004374:	fc1ff06f          	j	80004334 <consoleintr+0x50>

0000000080004378 <consoleinit>:
    80004378:	fe010113          	addi	sp,sp,-32
    8000437c:	00113c23          	sd	ra,24(sp)
    80004380:	00813823          	sd	s0,16(sp)
    80004384:	00913423          	sd	s1,8(sp)
    80004388:	02010413          	addi	s0,sp,32
    8000438c:	00004497          	auipc	s1,0x4
    80004390:	04c48493          	addi	s1,s1,76 # 800083d8 <cons>
    80004394:	00048513          	mv	a0,s1
    80004398:	00002597          	auipc	a1,0x2
    8000439c:	f5858593          	addi	a1,a1,-168 # 800062f0 <CONSOLE_STATUS+0x2e0>
    800043a0:	00001097          	auipc	ra,0x1
    800043a4:	d88080e7          	jalr	-632(ra) # 80005128 <initlock>
    800043a8:	00000097          	auipc	ra,0x0
    800043ac:	7ac080e7          	jalr	1964(ra) # 80004b54 <uartinit>
    800043b0:	01813083          	ld	ra,24(sp)
    800043b4:	01013403          	ld	s0,16(sp)
    800043b8:	00000797          	auipc	a5,0x0
    800043bc:	d9c78793          	addi	a5,a5,-612 # 80004154 <consoleread>
    800043c0:	0af4bc23          	sd	a5,184(s1)
    800043c4:	00000797          	auipc	a5,0x0
    800043c8:	cec78793          	addi	a5,a5,-788 # 800040b0 <consolewrite>
    800043cc:	0cf4b023          	sd	a5,192(s1)
    800043d0:	00813483          	ld	s1,8(sp)
    800043d4:	02010113          	addi	sp,sp,32
    800043d8:	00008067          	ret

00000000800043dc <console_read>:
    800043dc:	ff010113          	addi	sp,sp,-16
    800043e0:	00813423          	sd	s0,8(sp)
    800043e4:	01010413          	addi	s0,sp,16
    800043e8:	00813403          	ld	s0,8(sp)
    800043ec:	00004317          	auipc	t1,0x4
    800043f0:	0a433303          	ld	t1,164(t1) # 80008490 <devsw+0x10>
    800043f4:	01010113          	addi	sp,sp,16
    800043f8:	00030067          	jr	t1

00000000800043fc <console_write>:
    800043fc:	ff010113          	addi	sp,sp,-16
    80004400:	00813423          	sd	s0,8(sp)
    80004404:	01010413          	addi	s0,sp,16
    80004408:	00813403          	ld	s0,8(sp)
    8000440c:	00004317          	auipc	t1,0x4
    80004410:	08c33303          	ld	t1,140(t1) # 80008498 <devsw+0x18>
    80004414:	01010113          	addi	sp,sp,16
    80004418:	00030067          	jr	t1

000000008000441c <panic>:
    8000441c:	fe010113          	addi	sp,sp,-32
    80004420:	00113c23          	sd	ra,24(sp)
    80004424:	00813823          	sd	s0,16(sp)
    80004428:	00913423          	sd	s1,8(sp)
    8000442c:	02010413          	addi	s0,sp,32
    80004430:	00050493          	mv	s1,a0
    80004434:	00002517          	auipc	a0,0x2
    80004438:	ec450513          	addi	a0,a0,-316 # 800062f8 <CONSOLE_STATUS+0x2e8>
    8000443c:	00004797          	auipc	a5,0x4
    80004440:	0e07ae23          	sw	zero,252(a5) # 80008538 <pr+0x18>
    80004444:	00000097          	auipc	ra,0x0
    80004448:	034080e7          	jalr	52(ra) # 80004478 <__printf>
    8000444c:	00048513          	mv	a0,s1
    80004450:	00000097          	auipc	ra,0x0
    80004454:	028080e7          	jalr	40(ra) # 80004478 <__printf>
    80004458:	00002517          	auipc	a0,0x2
    8000445c:	e8050513          	addi	a0,a0,-384 # 800062d8 <CONSOLE_STATUS+0x2c8>
    80004460:	00000097          	auipc	ra,0x0
    80004464:	018080e7          	jalr	24(ra) # 80004478 <__printf>
    80004468:	00100793          	li	a5,1
    8000446c:	00003717          	auipc	a4,0x3
    80004470:	e0f72e23          	sw	a5,-484(a4) # 80007288 <panicked>
    80004474:	0000006f          	j	80004474 <panic+0x58>

0000000080004478 <__printf>:
    80004478:	f3010113          	addi	sp,sp,-208
    8000447c:	08813023          	sd	s0,128(sp)
    80004480:	07313423          	sd	s3,104(sp)
    80004484:	09010413          	addi	s0,sp,144
    80004488:	05813023          	sd	s8,64(sp)
    8000448c:	08113423          	sd	ra,136(sp)
    80004490:	06913c23          	sd	s1,120(sp)
    80004494:	07213823          	sd	s2,112(sp)
    80004498:	07413023          	sd	s4,96(sp)
    8000449c:	05513c23          	sd	s5,88(sp)
    800044a0:	05613823          	sd	s6,80(sp)
    800044a4:	05713423          	sd	s7,72(sp)
    800044a8:	03913c23          	sd	s9,56(sp)
    800044ac:	03a13823          	sd	s10,48(sp)
    800044b0:	03b13423          	sd	s11,40(sp)
    800044b4:	00004317          	auipc	t1,0x4
    800044b8:	06c30313          	addi	t1,t1,108 # 80008520 <pr>
    800044bc:	01832c03          	lw	s8,24(t1)
    800044c0:	00b43423          	sd	a1,8(s0)
    800044c4:	00c43823          	sd	a2,16(s0)
    800044c8:	00d43c23          	sd	a3,24(s0)
    800044cc:	02e43023          	sd	a4,32(s0)
    800044d0:	02f43423          	sd	a5,40(s0)
    800044d4:	03043823          	sd	a6,48(s0)
    800044d8:	03143c23          	sd	a7,56(s0)
    800044dc:	00050993          	mv	s3,a0
    800044e0:	4a0c1663          	bnez	s8,8000498c <__printf+0x514>
    800044e4:	60098c63          	beqz	s3,80004afc <__printf+0x684>
    800044e8:	0009c503          	lbu	a0,0(s3)
    800044ec:	00840793          	addi	a5,s0,8
    800044f0:	f6f43c23          	sd	a5,-136(s0)
    800044f4:	00000493          	li	s1,0
    800044f8:	22050063          	beqz	a0,80004718 <__printf+0x2a0>
    800044fc:	00002a37          	lui	s4,0x2
    80004500:	00018ab7          	lui	s5,0x18
    80004504:	000f4b37          	lui	s6,0xf4
    80004508:	00989bb7          	lui	s7,0x989
    8000450c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80004510:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80004514:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80004518:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000451c:	00148c9b          	addiw	s9,s1,1
    80004520:	02500793          	li	a5,37
    80004524:	01998933          	add	s2,s3,s9
    80004528:	38f51263          	bne	a0,a5,800048ac <__printf+0x434>
    8000452c:	00094783          	lbu	a5,0(s2)
    80004530:	00078c9b          	sext.w	s9,a5
    80004534:	1e078263          	beqz	a5,80004718 <__printf+0x2a0>
    80004538:	0024849b          	addiw	s1,s1,2
    8000453c:	07000713          	li	a4,112
    80004540:	00998933          	add	s2,s3,s1
    80004544:	38e78a63          	beq	a5,a4,800048d8 <__printf+0x460>
    80004548:	20f76863          	bltu	a4,a5,80004758 <__printf+0x2e0>
    8000454c:	42a78863          	beq	a5,a0,8000497c <__printf+0x504>
    80004550:	06400713          	li	a4,100
    80004554:	40e79663          	bne	a5,a4,80004960 <__printf+0x4e8>
    80004558:	f7843783          	ld	a5,-136(s0)
    8000455c:	0007a603          	lw	a2,0(a5)
    80004560:	00878793          	addi	a5,a5,8
    80004564:	f6f43c23          	sd	a5,-136(s0)
    80004568:	42064a63          	bltz	a2,8000499c <__printf+0x524>
    8000456c:	00a00713          	li	a4,10
    80004570:	02e677bb          	remuw	a5,a2,a4
    80004574:	00002d97          	auipc	s11,0x2
    80004578:	dacd8d93          	addi	s11,s11,-596 # 80006320 <digits>
    8000457c:	00900593          	li	a1,9
    80004580:	0006051b          	sext.w	a0,a2
    80004584:	00000c93          	li	s9,0
    80004588:	02079793          	slli	a5,a5,0x20
    8000458c:	0207d793          	srli	a5,a5,0x20
    80004590:	00fd87b3          	add	a5,s11,a5
    80004594:	0007c783          	lbu	a5,0(a5)
    80004598:	02e656bb          	divuw	a3,a2,a4
    8000459c:	f8f40023          	sb	a5,-128(s0)
    800045a0:	14c5d863          	bge	a1,a2,800046f0 <__printf+0x278>
    800045a4:	06300593          	li	a1,99
    800045a8:	00100c93          	li	s9,1
    800045ac:	02e6f7bb          	remuw	a5,a3,a4
    800045b0:	02079793          	slli	a5,a5,0x20
    800045b4:	0207d793          	srli	a5,a5,0x20
    800045b8:	00fd87b3          	add	a5,s11,a5
    800045bc:	0007c783          	lbu	a5,0(a5)
    800045c0:	02e6d73b          	divuw	a4,a3,a4
    800045c4:	f8f400a3          	sb	a5,-127(s0)
    800045c8:	12a5f463          	bgeu	a1,a0,800046f0 <__printf+0x278>
    800045cc:	00a00693          	li	a3,10
    800045d0:	00900593          	li	a1,9
    800045d4:	02d777bb          	remuw	a5,a4,a3
    800045d8:	02079793          	slli	a5,a5,0x20
    800045dc:	0207d793          	srli	a5,a5,0x20
    800045e0:	00fd87b3          	add	a5,s11,a5
    800045e4:	0007c503          	lbu	a0,0(a5)
    800045e8:	02d757bb          	divuw	a5,a4,a3
    800045ec:	f8a40123          	sb	a0,-126(s0)
    800045f0:	48e5f263          	bgeu	a1,a4,80004a74 <__printf+0x5fc>
    800045f4:	06300513          	li	a0,99
    800045f8:	02d7f5bb          	remuw	a1,a5,a3
    800045fc:	02059593          	slli	a1,a1,0x20
    80004600:	0205d593          	srli	a1,a1,0x20
    80004604:	00bd85b3          	add	a1,s11,a1
    80004608:	0005c583          	lbu	a1,0(a1)
    8000460c:	02d7d7bb          	divuw	a5,a5,a3
    80004610:	f8b401a3          	sb	a1,-125(s0)
    80004614:	48e57263          	bgeu	a0,a4,80004a98 <__printf+0x620>
    80004618:	3e700513          	li	a0,999
    8000461c:	02d7f5bb          	remuw	a1,a5,a3
    80004620:	02059593          	slli	a1,a1,0x20
    80004624:	0205d593          	srli	a1,a1,0x20
    80004628:	00bd85b3          	add	a1,s11,a1
    8000462c:	0005c583          	lbu	a1,0(a1)
    80004630:	02d7d7bb          	divuw	a5,a5,a3
    80004634:	f8b40223          	sb	a1,-124(s0)
    80004638:	46e57663          	bgeu	a0,a4,80004aa4 <__printf+0x62c>
    8000463c:	02d7f5bb          	remuw	a1,a5,a3
    80004640:	02059593          	slli	a1,a1,0x20
    80004644:	0205d593          	srli	a1,a1,0x20
    80004648:	00bd85b3          	add	a1,s11,a1
    8000464c:	0005c583          	lbu	a1,0(a1)
    80004650:	02d7d7bb          	divuw	a5,a5,a3
    80004654:	f8b402a3          	sb	a1,-123(s0)
    80004658:	46ea7863          	bgeu	s4,a4,80004ac8 <__printf+0x650>
    8000465c:	02d7f5bb          	remuw	a1,a5,a3
    80004660:	02059593          	slli	a1,a1,0x20
    80004664:	0205d593          	srli	a1,a1,0x20
    80004668:	00bd85b3          	add	a1,s11,a1
    8000466c:	0005c583          	lbu	a1,0(a1)
    80004670:	02d7d7bb          	divuw	a5,a5,a3
    80004674:	f8b40323          	sb	a1,-122(s0)
    80004678:	3eeaf863          	bgeu	s5,a4,80004a68 <__printf+0x5f0>
    8000467c:	02d7f5bb          	remuw	a1,a5,a3
    80004680:	02059593          	slli	a1,a1,0x20
    80004684:	0205d593          	srli	a1,a1,0x20
    80004688:	00bd85b3          	add	a1,s11,a1
    8000468c:	0005c583          	lbu	a1,0(a1)
    80004690:	02d7d7bb          	divuw	a5,a5,a3
    80004694:	f8b403a3          	sb	a1,-121(s0)
    80004698:	42eb7e63          	bgeu	s6,a4,80004ad4 <__printf+0x65c>
    8000469c:	02d7f5bb          	remuw	a1,a5,a3
    800046a0:	02059593          	slli	a1,a1,0x20
    800046a4:	0205d593          	srli	a1,a1,0x20
    800046a8:	00bd85b3          	add	a1,s11,a1
    800046ac:	0005c583          	lbu	a1,0(a1)
    800046b0:	02d7d7bb          	divuw	a5,a5,a3
    800046b4:	f8b40423          	sb	a1,-120(s0)
    800046b8:	42ebfc63          	bgeu	s7,a4,80004af0 <__printf+0x678>
    800046bc:	02079793          	slli	a5,a5,0x20
    800046c0:	0207d793          	srli	a5,a5,0x20
    800046c4:	00fd8db3          	add	s11,s11,a5
    800046c8:	000dc703          	lbu	a4,0(s11)
    800046cc:	00a00793          	li	a5,10
    800046d0:	00900c93          	li	s9,9
    800046d4:	f8e404a3          	sb	a4,-119(s0)
    800046d8:	00065c63          	bgez	a2,800046f0 <__printf+0x278>
    800046dc:	f9040713          	addi	a4,s0,-112
    800046e0:	00f70733          	add	a4,a4,a5
    800046e4:	02d00693          	li	a3,45
    800046e8:	fed70823          	sb	a3,-16(a4)
    800046ec:	00078c93          	mv	s9,a5
    800046f0:	f8040793          	addi	a5,s0,-128
    800046f4:	01978cb3          	add	s9,a5,s9
    800046f8:	f7f40d13          	addi	s10,s0,-129
    800046fc:	000cc503          	lbu	a0,0(s9)
    80004700:	fffc8c93          	addi	s9,s9,-1
    80004704:	00000097          	auipc	ra,0x0
    80004708:	b90080e7          	jalr	-1136(ra) # 80004294 <consputc>
    8000470c:	ffac98e3          	bne	s9,s10,800046fc <__printf+0x284>
    80004710:	00094503          	lbu	a0,0(s2)
    80004714:	e00514e3          	bnez	a0,8000451c <__printf+0xa4>
    80004718:	1a0c1663          	bnez	s8,800048c4 <__printf+0x44c>
    8000471c:	08813083          	ld	ra,136(sp)
    80004720:	08013403          	ld	s0,128(sp)
    80004724:	07813483          	ld	s1,120(sp)
    80004728:	07013903          	ld	s2,112(sp)
    8000472c:	06813983          	ld	s3,104(sp)
    80004730:	06013a03          	ld	s4,96(sp)
    80004734:	05813a83          	ld	s5,88(sp)
    80004738:	05013b03          	ld	s6,80(sp)
    8000473c:	04813b83          	ld	s7,72(sp)
    80004740:	04013c03          	ld	s8,64(sp)
    80004744:	03813c83          	ld	s9,56(sp)
    80004748:	03013d03          	ld	s10,48(sp)
    8000474c:	02813d83          	ld	s11,40(sp)
    80004750:	0d010113          	addi	sp,sp,208
    80004754:	00008067          	ret
    80004758:	07300713          	li	a4,115
    8000475c:	1ce78a63          	beq	a5,a4,80004930 <__printf+0x4b8>
    80004760:	07800713          	li	a4,120
    80004764:	1ee79e63          	bne	a5,a4,80004960 <__printf+0x4e8>
    80004768:	f7843783          	ld	a5,-136(s0)
    8000476c:	0007a703          	lw	a4,0(a5)
    80004770:	00878793          	addi	a5,a5,8
    80004774:	f6f43c23          	sd	a5,-136(s0)
    80004778:	28074263          	bltz	a4,800049fc <__printf+0x584>
    8000477c:	00002d97          	auipc	s11,0x2
    80004780:	ba4d8d93          	addi	s11,s11,-1116 # 80006320 <digits>
    80004784:	00f77793          	andi	a5,a4,15
    80004788:	00fd87b3          	add	a5,s11,a5
    8000478c:	0007c683          	lbu	a3,0(a5)
    80004790:	00f00613          	li	a2,15
    80004794:	0007079b          	sext.w	a5,a4
    80004798:	f8d40023          	sb	a3,-128(s0)
    8000479c:	0047559b          	srliw	a1,a4,0x4
    800047a0:	0047569b          	srliw	a3,a4,0x4
    800047a4:	00000c93          	li	s9,0
    800047a8:	0ee65063          	bge	a2,a4,80004888 <__printf+0x410>
    800047ac:	00f6f693          	andi	a3,a3,15
    800047b0:	00dd86b3          	add	a3,s11,a3
    800047b4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    800047b8:	0087d79b          	srliw	a5,a5,0x8
    800047bc:	00100c93          	li	s9,1
    800047c0:	f8d400a3          	sb	a3,-127(s0)
    800047c4:	0cb67263          	bgeu	a2,a1,80004888 <__printf+0x410>
    800047c8:	00f7f693          	andi	a3,a5,15
    800047cc:	00dd86b3          	add	a3,s11,a3
    800047d0:	0006c583          	lbu	a1,0(a3)
    800047d4:	00f00613          	li	a2,15
    800047d8:	0047d69b          	srliw	a3,a5,0x4
    800047dc:	f8b40123          	sb	a1,-126(s0)
    800047e0:	0047d593          	srli	a1,a5,0x4
    800047e4:	28f67e63          	bgeu	a2,a5,80004a80 <__printf+0x608>
    800047e8:	00f6f693          	andi	a3,a3,15
    800047ec:	00dd86b3          	add	a3,s11,a3
    800047f0:	0006c503          	lbu	a0,0(a3)
    800047f4:	0087d813          	srli	a6,a5,0x8
    800047f8:	0087d69b          	srliw	a3,a5,0x8
    800047fc:	f8a401a3          	sb	a0,-125(s0)
    80004800:	28b67663          	bgeu	a2,a1,80004a8c <__printf+0x614>
    80004804:	00f6f693          	andi	a3,a3,15
    80004808:	00dd86b3          	add	a3,s11,a3
    8000480c:	0006c583          	lbu	a1,0(a3)
    80004810:	00c7d513          	srli	a0,a5,0xc
    80004814:	00c7d69b          	srliw	a3,a5,0xc
    80004818:	f8b40223          	sb	a1,-124(s0)
    8000481c:	29067a63          	bgeu	a2,a6,80004ab0 <__printf+0x638>
    80004820:	00f6f693          	andi	a3,a3,15
    80004824:	00dd86b3          	add	a3,s11,a3
    80004828:	0006c583          	lbu	a1,0(a3)
    8000482c:	0107d813          	srli	a6,a5,0x10
    80004830:	0107d69b          	srliw	a3,a5,0x10
    80004834:	f8b402a3          	sb	a1,-123(s0)
    80004838:	28a67263          	bgeu	a2,a0,80004abc <__printf+0x644>
    8000483c:	00f6f693          	andi	a3,a3,15
    80004840:	00dd86b3          	add	a3,s11,a3
    80004844:	0006c683          	lbu	a3,0(a3)
    80004848:	0147d79b          	srliw	a5,a5,0x14
    8000484c:	f8d40323          	sb	a3,-122(s0)
    80004850:	21067663          	bgeu	a2,a6,80004a5c <__printf+0x5e4>
    80004854:	02079793          	slli	a5,a5,0x20
    80004858:	0207d793          	srli	a5,a5,0x20
    8000485c:	00fd8db3          	add	s11,s11,a5
    80004860:	000dc683          	lbu	a3,0(s11)
    80004864:	00800793          	li	a5,8
    80004868:	00700c93          	li	s9,7
    8000486c:	f8d403a3          	sb	a3,-121(s0)
    80004870:	00075c63          	bgez	a4,80004888 <__printf+0x410>
    80004874:	f9040713          	addi	a4,s0,-112
    80004878:	00f70733          	add	a4,a4,a5
    8000487c:	02d00693          	li	a3,45
    80004880:	fed70823          	sb	a3,-16(a4)
    80004884:	00078c93          	mv	s9,a5
    80004888:	f8040793          	addi	a5,s0,-128
    8000488c:	01978cb3          	add	s9,a5,s9
    80004890:	f7f40d13          	addi	s10,s0,-129
    80004894:	000cc503          	lbu	a0,0(s9)
    80004898:	fffc8c93          	addi	s9,s9,-1
    8000489c:	00000097          	auipc	ra,0x0
    800048a0:	9f8080e7          	jalr	-1544(ra) # 80004294 <consputc>
    800048a4:	ff9d18e3          	bne	s10,s9,80004894 <__printf+0x41c>
    800048a8:	0100006f          	j	800048b8 <__printf+0x440>
    800048ac:	00000097          	auipc	ra,0x0
    800048b0:	9e8080e7          	jalr	-1560(ra) # 80004294 <consputc>
    800048b4:	000c8493          	mv	s1,s9
    800048b8:	00094503          	lbu	a0,0(s2)
    800048bc:	c60510e3          	bnez	a0,8000451c <__printf+0xa4>
    800048c0:	e40c0ee3          	beqz	s8,8000471c <__printf+0x2a4>
    800048c4:	00004517          	auipc	a0,0x4
    800048c8:	c5c50513          	addi	a0,a0,-932 # 80008520 <pr>
    800048cc:	00001097          	auipc	ra,0x1
    800048d0:	94c080e7          	jalr	-1716(ra) # 80005218 <release>
    800048d4:	e49ff06f          	j	8000471c <__printf+0x2a4>
    800048d8:	f7843783          	ld	a5,-136(s0)
    800048dc:	03000513          	li	a0,48
    800048e0:	01000d13          	li	s10,16
    800048e4:	00878713          	addi	a4,a5,8
    800048e8:	0007bc83          	ld	s9,0(a5)
    800048ec:	f6e43c23          	sd	a4,-136(s0)
    800048f0:	00000097          	auipc	ra,0x0
    800048f4:	9a4080e7          	jalr	-1628(ra) # 80004294 <consputc>
    800048f8:	07800513          	li	a0,120
    800048fc:	00000097          	auipc	ra,0x0
    80004900:	998080e7          	jalr	-1640(ra) # 80004294 <consputc>
    80004904:	00002d97          	auipc	s11,0x2
    80004908:	a1cd8d93          	addi	s11,s11,-1508 # 80006320 <digits>
    8000490c:	03ccd793          	srli	a5,s9,0x3c
    80004910:	00fd87b3          	add	a5,s11,a5
    80004914:	0007c503          	lbu	a0,0(a5)
    80004918:	fffd0d1b          	addiw	s10,s10,-1
    8000491c:	004c9c93          	slli	s9,s9,0x4
    80004920:	00000097          	auipc	ra,0x0
    80004924:	974080e7          	jalr	-1676(ra) # 80004294 <consputc>
    80004928:	fe0d12e3          	bnez	s10,8000490c <__printf+0x494>
    8000492c:	f8dff06f          	j	800048b8 <__printf+0x440>
    80004930:	f7843783          	ld	a5,-136(s0)
    80004934:	0007bc83          	ld	s9,0(a5)
    80004938:	00878793          	addi	a5,a5,8
    8000493c:	f6f43c23          	sd	a5,-136(s0)
    80004940:	000c9a63          	bnez	s9,80004954 <__printf+0x4dc>
    80004944:	1080006f          	j	80004a4c <__printf+0x5d4>
    80004948:	001c8c93          	addi	s9,s9,1
    8000494c:	00000097          	auipc	ra,0x0
    80004950:	948080e7          	jalr	-1720(ra) # 80004294 <consputc>
    80004954:	000cc503          	lbu	a0,0(s9)
    80004958:	fe0518e3          	bnez	a0,80004948 <__printf+0x4d0>
    8000495c:	f5dff06f          	j	800048b8 <__printf+0x440>
    80004960:	02500513          	li	a0,37
    80004964:	00000097          	auipc	ra,0x0
    80004968:	930080e7          	jalr	-1744(ra) # 80004294 <consputc>
    8000496c:	000c8513          	mv	a0,s9
    80004970:	00000097          	auipc	ra,0x0
    80004974:	924080e7          	jalr	-1756(ra) # 80004294 <consputc>
    80004978:	f41ff06f          	j	800048b8 <__printf+0x440>
    8000497c:	02500513          	li	a0,37
    80004980:	00000097          	auipc	ra,0x0
    80004984:	914080e7          	jalr	-1772(ra) # 80004294 <consputc>
    80004988:	f31ff06f          	j	800048b8 <__printf+0x440>
    8000498c:	00030513          	mv	a0,t1
    80004990:	00000097          	auipc	ra,0x0
    80004994:	7bc080e7          	jalr	1980(ra) # 8000514c <acquire>
    80004998:	b4dff06f          	j	800044e4 <__printf+0x6c>
    8000499c:	40c0053b          	negw	a0,a2
    800049a0:	00a00713          	li	a4,10
    800049a4:	02e576bb          	remuw	a3,a0,a4
    800049a8:	00002d97          	auipc	s11,0x2
    800049ac:	978d8d93          	addi	s11,s11,-1672 # 80006320 <digits>
    800049b0:	ff700593          	li	a1,-9
    800049b4:	02069693          	slli	a3,a3,0x20
    800049b8:	0206d693          	srli	a3,a3,0x20
    800049bc:	00dd86b3          	add	a3,s11,a3
    800049c0:	0006c683          	lbu	a3,0(a3)
    800049c4:	02e557bb          	divuw	a5,a0,a4
    800049c8:	f8d40023          	sb	a3,-128(s0)
    800049cc:	10b65e63          	bge	a2,a1,80004ae8 <__printf+0x670>
    800049d0:	06300593          	li	a1,99
    800049d4:	02e7f6bb          	remuw	a3,a5,a4
    800049d8:	02069693          	slli	a3,a3,0x20
    800049dc:	0206d693          	srli	a3,a3,0x20
    800049e0:	00dd86b3          	add	a3,s11,a3
    800049e4:	0006c683          	lbu	a3,0(a3)
    800049e8:	02e7d73b          	divuw	a4,a5,a4
    800049ec:	00200793          	li	a5,2
    800049f0:	f8d400a3          	sb	a3,-127(s0)
    800049f4:	bca5ece3          	bltu	a1,a0,800045cc <__printf+0x154>
    800049f8:	ce5ff06f          	j	800046dc <__printf+0x264>
    800049fc:	40e007bb          	negw	a5,a4
    80004a00:	00002d97          	auipc	s11,0x2
    80004a04:	920d8d93          	addi	s11,s11,-1760 # 80006320 <digits>
    80004a08:	00f7f693          	andi	a3,a5,15
    80004a0c:	00dd86b3          	add	a3,s11,a3
    80004a10:	0006c583          	lbu	a1,0(a3)
    80004a14:	ff100613          	li	a2,-15
    80004a18:	0047d69b          	srliw	a3,a5,0x4
    80004a1c:	f8b40023          	sb	a1,-128(s0)
    80004a20:	0047d59b          	srliw	a1,a5,0x4
    80004a24:	0ac75e63          	bge	a4,a2,80004ae0 <__printf+0x668>
    80004a28:	00f6f693          	andi	a3,a3,15
    80004a2c:	00dd86b3          	add	a3,s11,a3
    80004a30:	0006c603          	lbu	a2,0(a3)
    80004a34:	00f00693          	li	a3,15
    80004a38:	0087d79b          	srliw	a5,a5,0x8
    80004a3c:	f8c400a3          	sb	a2,-127(s0)
    80004a40:	d8b6e4e3          	bltu	a3,a1,800047c8 <__printf+0x350>
    80004a44:	00200793          	li	a5,2
    80004a48:	e2dff06f          	j	80004874 <__printf+0x3fc>
    80004a4c:	00002c97          	auipc	s9,0x2
    80004a50:	8b4c8c93          	addi	s9,s9,-1868 # 80006300 <CONSOLE_STATUS+0x2f0>
    80004a54:	02800513          	li	a0,40
    80004a58:	ef1ff06f          	j	80004948 <__printf+0x4d0>
    80004a5c:	00700793          	li	a5,7
    80004a60:	00600c93          	li	s9,6
    80004a64:	e0dff06f          	j	80004870 <__printf+0x3f8>
    80004a68:	00700793          	li	a5,7
    80004a6c:	00600c93          	li	s9,6
    80004a70:	c69ff06f          	j	800046d8 <__printf+0x260>
    80004a74:	00300793          	li	a5,3
    80004a78:	00200c93          	li	s9,2
    80004a7c:	c5dff06f          	j	800046d8 <__printf+0x260>
    80004a80:	00300793          	li	a5,3
    80004a84:	00200c93          	li	s9,2
    80004a88:	de9ff06f          	j	80004870 <__printf+0x3f8>
    80004a8c:	00400793          	li	a5,4
    80004a90:	00300c93          	li	s9,3
    80004a94:	dddff06f          	j	80004870 <__printf+0x3f8>
    80004a98:	00400793          	li	a5,4
    80004a9c:	00300c93          	li	s9,3
    80004aa0:	c39ff06f          	j	800046d8 <__printf+0x260>
    80004aa4:	00500793          	li	a5,5
    80004aa8:	00400c93          	li	s9,4
    80004aac:	c2dff06f          	j	800046d8 <__printf+0x260>
    80004ab0:	00500793          	li	a5,5
    80004ab4:	00400c93          	li	s9,4
    80004ab8:	db9ff06f          	j	80004870 <__printf+0x3f8>
    80004abc:	00600793          	li	a5,6
    80004ac0:	00500c93          	li	s9,5
    80004ac4:	dadff06f          	j	80004870 <__printf+0x3f8>
    80004ac8:	00600793          	li	a5,6
    80004acc:	00500c93          	li	s9,5
    80004ad0:	c09ff06f          	j	800046d8 <__printf+0x260>
    80004ad4:	00800793          	li	a5,8
    80004ad8:	00700c93          	li	s9,7
    80004adc:	bfdff06f          	j	800046d8 <__printf+0x260>
    80004ae0:	00100793          	li	a5,1
    80004ae4:	d91ff06f          	j	80004874 <__printf+0x3fc>
    80004ae8:	00100793          	li	a5,1
    80004aec:	bf1ff06f          	j	800046dc <__printf+0x264>
    80004af0:	00900793          	li	a5,9
    80004af4:	00800c93          	li	s9,8
    80004af8:	be1ff06f          	j	800046d8 <__printf+0x260>
    80004afc:	00002517          	auipc	a0,0x2
    80004b00:	80c50513          	addi	a0,a0,-2036 # 80006308 <CONSOLE_STATUS+0x2f8>
    80004b04:	00000097          	auipc	ra,0x0
    80004b08:	918080e7          	jalr	-1768(ra) # 8000441c <panic>

0000000080004b0c <printfinit>:
    80004b0c:	fe010113          	addi	sp,sp,-32
    80004b10:	00813823          	sd	s0,16(sp)
    80004b14:	00913423          	sd	s1,8(sp)
    80004b18:	00113c23          	sd	ra,24(sp)
    80004b1c:	02010413          	addi	s0,sp,32
    80004b20:	00004497          	auipc	s1,0x4
    80004b24:	a0048493          	addi	s1,s1,-1536 # 80008520 <pr>
    80004b28:	00048513          	mv	a0,s1
    80004b2c:	00001597          	auipc	a1,0x1
    80004b30:	7ec58593          	addi	a1,a1,2028 # 80006318 <CONSOLE_STATUS+0x308>
    80004b34:	00000097          	auipc	ra,0x0
    80004b38:	5f4080e7          	jalr	1524(ra) # 80005128 <initlock>
    80004b3c:	01813083          	ld	ra,24(sp)
    80004b40:	01013403          	ld	s0,16(sp)
    80004b44:	0004ac23          	sw	zero,24(s1)
    80004b48:	00813483          	ld	s1,8(sp)
    80004b4c:	02010113          	addi	sp,sp,32
    80004b50:	00008067          	ret

0000000080004b54 <uartinit>:
    80004b54:	ff010113          	addi	sp,sp,-16
    80004b58:	00813423          	sd	s0,8(sp)
    80004b5c:	01010413          	addi	s0,sp,16
    80004b60:	100007b7          	lui	a5,0x10000
    80004b64:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80004b68:	f8000713          	li	a4,-128
    80004b6c:	00e781a3          	sb	a4,3(a5)
    80004b70:	00300713          	li	a4,3
    80004b74:	00e78023          	sb	a4,0(a5)
    80004b78:	000780a3          	sb	zero,1(a5)
    80004b7c:	00e781a3          	sb	a4,3(a5)
    80004b80:	00700693          	li	a3,7
    80004b84:	00d78123          	sb	a3,2(a5)
    80004b88:	00e780a3          	sb	a4,1(a5)
    80004b8c:	00813403          	ld	s0,8(sp)
    80004b90:	01010113          	addi	sp,sp,16
    80004b94:	00008067          	ret

0000000080004b98 <uartputc>:
    80004b98:	00002797          	auipc	a5,0x2
    80004b9c:	6f07a783          	lw	a5,1776(a5) # 80007288 <panicked>
    80004ba0:	00078463          	beqz	a5,80004ba8 <uartputc+0x10>
    80004ba4:	0000006f          	j	80004ba4 <uartputc+0xc>
    80004ba8:	fd010113          	addi	sp,sp,-48
    80004bac:	02813023          	sd	s0,32(sp)
    80004bb0:	00913c23          	sd	s1,24(sp)
    80004bb4:	01213823          	sd	s2,16(sp)
    80004bb8:	01313423          	sd	s3,8(sp)
    80004bbc:	02113423          	sd	ra,40(sp)
    80004bc0:	03010413          	addi	s0,sp,48
    80004bc4:	00002917          	auipc	s2,0x2
    80004bc8:	6cc90913          	addi	s2,s2,1740 # 80007290 <uart_tx_r>
    80004bcc:	00093783          	ld	a5,0(s2)
    80004bd0:	00002497          	auipc	s1,0x2
    80004bd4:	6c848493          	addi	s1,s1,1736 # 80007298 <uart_tx_w>
    80004bd8:	0004b703          	ld	a4,0(s1)
    80004bdc:	02078693          	addi	a3,a5,32
    80004be0:	00050993          	mv	s3,a0
    80004be4:	02e69c63          	bne	a3,a4,80004c1c <uartputc+0x84>
    80004be8:	00001097          	auipc	ra,0x1
    80004bec:	834080e7          	jalr	-1996(ra) # 8000541c <push_on>
    80004bf0:	00093783          	ld	a5,0(s2)
    80004bf4:	0004b703          	ld	a4,0(s1)
    80004bf8:	02078793          	addi	a5,a5,32
    80004bfc:	00e79463          	bne	a5,a4,80004c04 <uartputc+0x6c>
    80004c00:	0000006f          	j	80004c00 <uartputc+0x68>
    80004c04:	00001097          	auipc	ra,0x1
    80004c08:	88c080e7          	jalr	-1908(ra) # 80005490 <pop_on>
    80004c0c:	00093783          	ld	a5,0(s2)
    80004c10:	0004b703          	ld	a4,0(s1)
    80004c14:	02078693          	addi	a3,a5,32
    80004c18:	fce688e3          	beq	a3,a4,80004be8 <uartputc+0x50>
    80004c1c:	01f77693          	andi	a3,a4,31
    80004c20:	00004597          	auipc	a1,0x4
    80004c24:	92058593          	addi	a1,a1,-1760 # 80008540 <uart_tx_buf>
    80004c28:	00d586b3          	add	a3,a1,a3
    80004c2c:	00170713          	addi	a4,a4,1
    80004c30:	01368023          	sb	s3,0(a3)
    80004c34:	00e4b023          	sd	a4,0(s1)
    80004c38:	10000637          	lui	a2,0x10000
    80004c3c:	02f71063          	bne	a4,a5,80004c5c <uartputc+0xc4>
    80004c40:	0340006f          	j	80004c74 <uartputc+0xdc>
    80004c44:	00074703          	lbu	a4,0(a4)
    80004c48:	00f93023          	sd	a5,0(s2)
    80004c4c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80004c50:	00093783          	ld	a5,0(s2)
    80004c54:	0004b703          	ld	a4,0(s1)
    80004c58:	00f70e63          	beq	a4,a5,80004c74 <uartputc+0xdc>
    80004c5c:	00564683          	lbu	a3,5(a2)
    80004c60:	01f7f713          	andi	a4,a5,31
    80004c64:	00e58733          	add	a4,a1,a4
    80004c68:	0206f693          	andi	a3,a3,32
    80004c6c:	00178793          	addi	a5,a5,1
    80004c70:	fc069ae3          	bnez	a3,80004c44 <uartputc+0xac>
    80004c74:	02813083          	ld	ra,40(sp)
    80004c78:	02013403          	ld	s0,32(sp)
    80004c7c:	01813483          	ld	s1,24(sp)
    80004c80:	01013903          	ld	s2,16(sp)
    80004c84:	00813983          	ld	s3,8(sp)
    80004c88:	03010113          	addi	sp,sp,48
    80004c8c:	00008067          	ret

0000000080004c90 <uartputc_sync>:
    80004c90:	ff010113          	addi	sp,sp,-16
    80004c94:	00813423          	sd	s0,8(sp)
    80004c98:	01010413          	addi	s0,sp,16
    80004c9c:	00002717          	auipc	a4,0x2
    80004ca0:	5ec72703          	lw	a4,1516(a4) # 80007288 <panicked>
    80004ca4:	02071663          	bnez	a4,80004cd0 <uartputc_sync+0x40>
    80004ca8:	00050793          	mv	a5,a0
    80004cac:	100006b7          	lui	a3,0x10000
    80004cb0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80004cb4:	02077713          	andi	a4,a4,32
    80004cb8:	fe070ce3          	beqz	a4,80004cb0 <uartputc_sync+0x20>
    80004cbc:	0ff7f793          	andi	a5,a5,255
    80004cc0:	00f68023          	sb	a5,0(a3)
    80004cc4:	00813403          	ld	s0,8(sp)
    80004cc8:	01010113          	addi	sp,sp,16
    80004ccc:	00008067          	ret
    80004cd0:	0000006f          	j	80004cd0 <uartputc_sync+0x40>

0000000080004cd4 <uartstart>:
    80004cd4:	ff010113          	addi	sp,sp,-16
    80004cd8:	00813423          	sd	s0,8(sp)
    80004cdc:	01010413          	addi	s0,sp,16
    80004ce0:	00002617          	auipc	a2,0x2
    80004ce4:	5b060613          	addi	a2,a2,1456 # 80007290 <uart_tx_r>
    80004ce8:	00002517          	auipc	a0,0x2
    80004cec:	5b050513          	addi	a0,a0,1456 # 80007298 <uart_tx_w>
    80004cf0:	00063783          	ld	a5,0(a2)
    80004cf4:	00053703          	ld	a4,0(a0)
    80004cf8:	04f70263          	beq	a4,a5,80004d3c <uartstart+0x68>
    80004cfc:	100005b7          	lui	a1,0x10000
    80004d00:	00004817          	auipc	a6,0x4
    80004d04:	84080813          	addi	a6,a6,-1984 # 80008540 <uart_tx_buf>
    80004d08:	01c0006f          	j	80004d24 <uartstart+0x50>
    80004d0c:	0006c703          	lbu	a4,0(a3)
    80004d10:	00f63023          	sd	a5,0(a2)
    80004d14:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80004d18:	00063783          	ld	a5,0(a2)
    80004d1c:	00053703          	ld	a4,0(a0)
    80004d20:	00f70e63          	beq	a4,a5,80004d3c <uartstart+0x68>
    80004d24:	01f7f713          	andi	a4,a5,31
    80004d28:	00e806b3          	add	a3,a6,a4
    80004d2c:	0055c703          	lbu	a4,5(a1)
    80004d30:	00178793          	addi	a5,a5,1
    80004d34:	02077713          	andi	a4,a4,32
    80004d38:	fc071ae3          	bnez	a4,80004d0c <uartstart+0x38>
    80004d3c:	00813403          	ld	s0,8(sp)
    80004d40:	01010113          	addi	sp,sp,16
    80004d44:	00008067          	ret

0000000080004d48 <uartgetc>:
    80004d48:	ff010113          	addi	sp,sp,-16
    80004d4c:	00813423          	sd	s0,8(sp)
    80004d50:	01010413          	addi	s0,sp,16
    80004d54:	10000737          	lui	a4,0x10000
    80004d58:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80004d5c:	0017f793          	andi	a5,a5,1
    80004d60:	00078c63          	beqz	a5,80004d78 <uartgetc+0x30>
    80004d64:	00074503          	lbu	a0,0(a4)
    80004d68:	0ff57513          	andi	a0,a0,255
    80004d6c:	00813403          	ld	s0,8(sp)
    80004d70:	01010113          	addi	sp,sp,16
    80004d74:	00008067          	ret
    80004d78:	fff00513          	li	a0,-1
    80004d7c:	ff1ff06f          	j	80004d6c <uartgetc+0x24>

0000000080004d80 <uartintr>:
    80004d80:	100007b7          	lui	a5,0x10000
    80004d84:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80004d88:	0017f793          	andi	a5,a5,1
    80004d8c:	0a078463          	beqz	a5,80004e34 <uartintr+0xb4>
    80004d90:	fe010113          	addi	sp,sp,-32
    80004d94:	00813823          	sd	s0,16(sp)
    80004d98:	00913423          	sd	s1,8(sp)
    80004d9c:	00113c23          	sd	ra,24(sp)
    80004da0:	02010413          	addi	s0,sp,32
    80004da4:	100004b7          	lui	s1,0x10000
    80004da8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80004dac:	0ff57513          	andi	a0,a0,255
    80004db0:	fffff097          	auipc	ra,0xfffff
    80004db4:	534080e7          	jalr	1332(ra) # 800042e4 <consoleintr>
    80004db8:	0054c783          	lbu	a5,5(s1)
    80004dbc:	0017f793          	andi	a5,a5,1
    80004dc0:	fe0794e3          	bnez	a5,80004da8 <uartintr+0x28>
    80004dc4:	00002617          	auipc	a2,0x2
    80004dc8:	4cc60613          	addi	a2,a2,1228 # 80007290 <uart_tx_r>
    80004dcc:	00002517          	auipc	a0,0x2
    80004dd0:	4cc50513          	addi	a0,a0,1228 # 80007298 <uart_tx_w>
    80004dd4:	00063783          	ld	a5,0(a2)
    80004dd8:	00053703          	ld	a4,0(a0)
    80004ddc:	04f70263          	beq	a4,a5,80004e20 <uartintr+0xa0>
    80004de0:	100005b7          	lui	a1,0x10000
    80004de4:	00003817          	auipc	a6,0x3
    80004de8:	75c80813          	addi	a6,a6,1884 # 80008540 <uart_tx_buf>
    80004dec:	01c0006f          	j	80004e08 <uartintr+0x88>
    80004df0:	0006c703          	lbu	a4,0(a3)
    80004df4:	00f63023          	sd	a5,0(a2)
    80004df8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80004dfc:	00063783          	ld	a5,0(a2)
    80004e00:	00053703          	ld	a4,0(a0)
    80004e04:	00f70e63          	beq	a4,a5,80004e20 <uartintr+0xa0>
    80004e08:	01f7f713          	andi	a4,a5,31
    80004e0c:	00e806b3          	add	a3,a6,a4
    80004e10:	0055c703          	lbu	a4,5(a1)
    80004e14:	00178793          	addi	a5,a5,1
    80004e18:	02077713          	andi	a4,a4,32
    80004e1c:	fc071ae3          	bnez	a4,80004df0 <uartintr+0x70>
    80004e20:	01813083          	ld	ra,24(sp)
    80004e24:	01013403          	ld	s0,16(sp)
    80004e28:	00813483          	ld	s1,8(sp)
    80004e2c:	02010113          	addi	sp,sp,32
    80004e30:	00008067          	ret
    80004e34:	00002617          	auipc	a2,0x2
    80004e38:	45c60613          	addi	a2,a2,1116 # 80007290 <uart_tx_r>
    80004e3c:	00002517          	auipc	a0,0x2
    80004e40:	45c50513          	addi	a0,a0,1116 # 80007298 <uart_tx_w>
    80004e44:	00063783          	ld	a5,0(a2)
    80004e48:	00053703          	ld	a4,0(a0)
    80004e4c:	04f70263          	beq	a4,a5,80004e90 <uartintr+0x110>
    80004e50:	100005b7          	lui	a1,0x10000
    80004e54:	00003817          	auipc	a6,0x3
    80004e58:	6ec80813          	addi	a6,a6,1772 # 80008540 <uart_tx_buf>
    80004e5c:	01c0006f          	j	80004e78 <uartintr+0xf8>
    80004e60:	0006c703          	lbu	a4,0(a3)
    80004e64:	00f63023          	sd	a5,0(a2)
    80004e68:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80004e6c:	00063783          	ld	a5,0(a2)
    80004e70:	00053703          	ld	a4,0(a0)
    80004e74:	02f70063          	beq	a4,a5,80004e94 <uartintr+0x114>
    80004e78:	01f7f713          	andi	a4,a5,31
    80004e7c:	00e806b3          	add	a3,a6,a4
    80004e80:	0055c703          	lbu	a4,5(a1)
    80004e84:	00178793          	addi	a5,a5,1
    80004e88:	02077713          	andi	a4,a4,32
    80004e8c:	fc071ae3          	bnez	a4,80004e60 <uartintr+0xe0>
    80004e90:	00008067          	ret
    80004e94:	00008067          	ret

0000000080004e98 <kinit>:
    80004e98:	fc010113          	addi	sp,sp,-64
    80004e9c:	02913423          	sd	s1,40(sp)
    80004ea0:	fffff7b7          	lui	a5,0xfffff
    80004ea4:	00004497          	auipc	s1,0x4
    80004ea8:	6bb48493          	addi	s1,s1,1723 # 8000955f <end+0xfff>
    80004eac:	02813823          	sd	s0,48(sp)
    80004eb0:	01313c23          	sd	s3,24(sp)
    80004eb4:	00f4f4b3          	and	s1,s1,a5
    80004eb8:	02113c23          	sd	ra,56(sp)
    80004ebc:	03213023          	sd	s2,32(sp)
    80004ec0:	01413823          	sd	s4,16(sp)
    80004ec4:	01513423          	sd	s5,8(sp)
    80004ec8:	04010413          	addi	s0,sp,64
    80004ecc:	000017b7          	lui	a5,0x1
    80004ed0:	01100993          	li	s3,17
    80004ed4:	00f487b3          	add	a5,s1,a5
    80004ed8:	01b99993          	slli	s3,s3,0x1b
    80004edc:	06f9e063          	bltu	s3,a5,80004f3c <kinit+0xa4>
    80004ee0:	00003a97          	auipc	s5,0x3
    80004ee4:	680a8a93          	addi	s5,s5,1664 # 80008560 <end>
    80004ee8:	0754ec63          	bltu	s1,s5,80004f60 <kinit+0xc8>
    80004eec:	0734fa63          	bgeu	s1,s3,80004f60 <kinit+0xc8>
    80004ef0:	00088a37          	lui	s4,0x88
    80004ef4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80004ef8:	00002917          	auipc	s2,0x2
    80004efc:	3a890913          	addi	s2,s2,936 # 800072a0 <kmem>
    80004f00:	00ca1a13          	slli	s4,s4,0xc
    80004f04:	0140006f          	j	80004f18 <kinit+0x80>
    80004f08:	000017b7          	lui	a5,0x1
    80004f0c:	00f484b3          	add	s1,s1,a5
    80004f10:	0554e863          	bltu	s1,s5,80004f60 <kinit+0xc8>
    80004f14:	0534f663          	bgeu	s1,s3,80004f60 <kinit+0xc8>
    80004f18:	00001637          	lui	a2,0x1
    80004f1c:	00100593          	li	a1,1
    80004f20:	00048513          	mv	a0,s1
    80004f24:	00000097          	auipc	ra,0x0
    80004f28:	5e4080e7          	jalr	1508(ra) # 80005508 <__memset>
    80004f2c:	00093783          	ld	a5,0(s2)
    80004f30:	00f4b023          	sd	a5,0(s1)
    80004f34:	00993023          	sd	s1,0(s2)
    80004f38:	fd4498e3          	bne	s1,s4,80004f08 <kinit+0x70>
    80004f3c:	03813083          	ld	ra,56(sp)
    80004f40:	03013403          	ld	s0,48(sp)
    80004f44:	02813483          	ld	s1,40(sp)
    80004f48:	02013903          	ld	s2,32(sp)
    80004f4c:	01813983          	ld	s3,24(sp)
    80004f50:	01013a03          	ld	s4,16(sp)
    80004f54:	00813a83          	ld	s5,8(sp)
    80004f58:	04010113          	addi	sp,sp,64
    80004f5c:	00008067          	ret
    80004f60:	00001517          	auipc	a0,0x1
    80004f64:	3d850513          	addi	a0,a0,984 # 80006338 <digits+0x18>
    80004f68:	fffff097          	auipc	ra,0xfffff
    80004f6c:	4b4080e7          	jalr	1204(ra) # 8000441c <panic>

0000000080004f70 <freerange>:
    80004f70:	fc010113          	addi	sp,sp,-64
    80004f74:	000017b7          	lui	a5,0x1
    80004f78:	02913423          	sd	s1,40(sp)
    80004f7c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80004f80:	009504b3          	add	s1,a0,s1
    80004f84:	fffff537          	lui	a0,0xfffff
    80004f88:	02813823          	sd	s0,48(sp)
    80004f8c:	02113c23          	sd	ra,56(sp)
    80004f90:	03213023          	sd	s2,32(sp)
    80004f94:	01313c23          	sd	s3,24(sp)
    80004f98:	01413823          	sd	s4,16(sp)
    80004f9c:	01513423          	sd	s5,8(sp)
    80004fa0:	01613023          	sd	s6,0(sp)
    80004fa4:	04010413          	addi	s0,sp,64
    80004fa8:	00a4f4b3          	and	s1,s1,a0
    80004fac:	00f487b3          	add	a5,s1,a5
    80004fb0:	06f5e463          	bltu	a1,a5,80005018 <freerange+0xa8>
    80004fb4:	00003a97          	auipc	s5,0x3
    80004fb8:	5aca8a93          	addi	s5,s5,1452 # 80008560 <end>
    80004fbc:	0954e263          	bltu	s1,s5,80005040 <freerange+0xd0>
    80004fc0:	01100993          	li	s3,17
    80004fc4:	01b99993          	slli	s3,s3,0x1b
    80004fc8:	0734fc63          	bgeu	s1,s3,80005040 <freerange+0xd0>
    80004fcc:	00058a13          	mv	s4,a1
    80004fd0:	00002917          	auipc	s2,0x2
    80004fd4:	2d090913          	addi	s2,s2,720 # 800072a0 <kmem>
    80004fd8:	00002b37          	lui	s6,0x2
    80004fdc:	0140006f          	j	80004ff0 <freerange+0x80>
    80004fe0:	000017b7          	lui	a5,0x1
    80004fe4:	00f484b3          	add	s1,s1,a5
    80004fe8:	0554ec63          	bltu	s1,s5,80005040 <freerange+0xd0>
    80004fec:	0534fa63          	bgeu	s1,s3,80005040 <freerange+0xd0>
    80004ff0:	00001637          	lui	a2,0x1
    80004ff4:	00100593          	li	a1,1
    80004ff8:	00048513          	mv	a0,s1
    80004ffc:	00000097          	auipc	ra,0x0
    80005000:	50c080e7          	jalr	1292(ra) # 80005508 <__memset>
    80005004:	00093703          	ld	a4,0(s2)
    80005008:	016487b3          	add	a5,s1,s6
    8000500c:	00e4b023          	sd	a4,0(s1)
    80005010:	00993023          	sd	s1,0(s2)
    80005014:	fcfa76e3          	bgeu	s4,a5,80004fe0 <freerange+0x70>
    80005018:	03813083          	ld	ra,56(sp)
    8000501c:	03013403          	ld	s0,48(sp)
    80005020:	02813483          	ld	s1,40(sp)
    80005024:	02013903          	ld	s2,32(sp)
    80005028:	01813983          	ld	s3,24(sp)
    8000502c:	01013a03          	ld	s4,16(sp)
    80005030:	00813a83          	ld	s5,8(sp)
    80005034:	00013b03          	ld	s6,0(sp)
    80005038:	04010113          	addi	sp,sp,64
    8000503c:	00008067          	ret
    80005040:	00001517          	auipc	a0,0x1
    80005044:	2f850513          	addi	a0,a0,760 # 80006338 <digits+0x18>
    80005048:	fffff097          	auipc	ra,0xfffff
    8000504c:	3d4080e7          	jalr	980(ra) # 8000441c <panic>

0000000080005050 <kfree>:
    80005050:	fe010113          	addi	sp,sp,-32
    80005054:	00813823          	sd	s0,16(sp)
    80005058:	00113c23          	sd	ra,24(sp)
    8000505c:	00913423          	sd	s1,8(sp)
    80005060:	02010413          	addi	s0,sp,32
    80005064:	03451793          	slli	a5,a0,0x34
    80005068:	04079c63          	bnez	a5,800050c0 <kfree+0x70>
    8000506c:	00003797          	auipc	a5,0x3
    80005070:	4f478793          	addi	a5,a5,1268 # 80008560 <end>
    80005074:	00050493          	mv	s1,a0
    80005078:	04f56463          	bltu	a0,a5,800050c0 <kfree+0x70>
    8000507c:	01100793          	li	a5,17
    80005080:	01b79793          	slli	a5,a5,0x1b
    80005084:	02f57e63          	bgeu	a0,a5,800050c0 <kfree+0x70>
    80005088:	00001637          	lui	a2,0x1
    8000508c:	00100593          	li	a1,1
    80005090:	00000097          	auipc	ra,0x0
    80005094:	478080e7          	jalr	1144(ra) # 80005508 <__memset>
    80005098:	00002797          	auipc	a5,0x2
    8000509c:	20878793          	addi	a5,a5,520 # 800072a0 <kmem>
    800050a0:	0007b703          	ld	a4,0(a5)
    800050a4:	01813083          	ld	ra,24(sp)
    800050a8:	01013403          	ld	s0,16(sp)
    800050ac:	00e4b023          	sd	a4,0(s1)
    800050b0:	0097b023          	sd	s1,0(a5)
    800050b4:	00813483          	ld	s1,8(sp)
    800050b8:	02010113          	addi	sp,sp,32
    800050bc:	00008067          	ret
    800050c0:	00001517          	auipc	a0,0x1
    800050c4:	27850513          	addi	a0,a0,632 # 80006338 <digits+0x18>
    800050c8:	fffff097          	auipc	ra,0xfffff
    800050cc:	354080e7          	jalr	852(ra) # 8000441c <panic>

00000000800050d0 <kalloc>:
    800050d0:	fe010113          	addi	sp,sp,-32
    800050d4:	00813823          	sd	s0,16(sp)
    800050d8:	00913423          	sd	s1,8(sp)
    800050dc:	00113c23          	sd	ra,24(sp)
    800050e0:	02010413          	addi	s0,sp,32
    800050e4:	00002797          	auipc	a5,0x2
    800050e8:	1bc78793          	addi	a5,a5,444 # 800072a0 <kmem>
    800050ec:	0007b483          	ld	s1,0(a5)
    800050f0:	02048063          	beqz	s1,80005110 <kalloc+0x40>
    800050f4:	0004b703          	ld	a4,0(s1)
    800050f8:	00001637          	lui	a2,0x1
    800050fc:	00500593          	li	a1,5
    80005100:	00048513          	mv	a0,s1
    80005104:	00e7b023          	sd	a4,0(a5)
    80005108:	00000097          	auipc	ra,0x0
    8000510c:	400080e7          	jalr	1024(ra) # 80005508 <__memset>
    80005110:	01813083          	ld	ra,24(sp)
    80005114:	01013403          	ld	s0,16(sp)
    80005118:	00048513          	mv	a0,s1
    8000511c:	00813483          	ld	s1,8(sp)
    80005120:	02010113          	addi	sp,sp,32
    80005124:	00008067          	ret

0000000080005128 <initlock>:
    80005128:	ff010113          	addi	sp,sp,-16
    8000512c:	00813423          	sd	s0,8(sp)
    80005130:	01010413          	addi	s0,sp,16
    80005134:	00813403          	ld	s0,8(sp)
    80005138:	00b53423          	sd	a1,8(a0)
    8000513c:	00052023          	sw	zero,0(a0)
    80005140:	00053823          	sd	zero,16(a0)
    80005144:	01010113          	addi	sp,sp,16
    80005148:	00008067          	ret

000000008000514c <acquire>:
    8000514c:	fe010113          	addi	sp,sp,-32
    80005150:	00813823          	sd	s0,16(sp)
    80005154:	00913423          	sd	s1,8(sp)
    80005158:	00113c23          	sd	ra,24(sp)
    8000515c:	01213023          	sd	s2,0(sp)
    80005160:	02010413          	addi	s0,sp,32
    80005164:	00050493          	mv	s1,a0
    80005168:	10002973          	csrr	s2,sstatus
    8000516c:	100027f3          	csrr	a5,sstatus
    80005170:	ffd7f793          	andi	a5,a5,-3
    80005174:	10079073          	csrw	sstatus,a5
    80005178:	fffff097          	auipc	ra,0xfffff
    8000517c:	8e4080e7          	jalr	-1820(ra) # 80003a5c <mycpu>
    80005180:	07852783          	lw	a5,120(a0)
    80005184:	06078e63          	beqz	a5,80005200 <acquire+0xb4>
    80005188:	fffff097          	auipc	ra,0xfffff
    8000518c:	8d4080e7          	jalr	-1836(ra) # 80003a5c <mycpu>
    80005190:	07852783          	lw	a5,120(a0)
    80005194:	0004a703          	lw	a4,0(s1)
    80005198:	0017879b          	addiw	a5,a5,1
    8000519c:	06f52c23          	sw	a5,120(a0)
    800051a0:	04071063          	bnez	a4,800051e0 <acquire+0x94>
    800051a4:	00100713          	li	a4,1
    800051a8:	00070793          	mv	a5,a4
    800051ac:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    800051b0:	0007879b          	sext.w	a5,a5
    800051b4:	fe079ae3          	bnez	a5,800051a8 <acquire+0x5c>
    800051b8:	0ff0000f          	fence
    800051bc:	fffff097          	auipc	ra,0xfffff
    800051c0:	8a0080e7          	jalr	-1888(ra) # 80003a5c <mycpu>
    800051c4:	01813083          	ld	ra,24(sp)
    800051c8:	01013403          	ld	s0,16(sp)
    800051cc:	00a4b823          	sd	a0,16(s1)
    800051d0:	00013903          	ld	s2,0(sp)
    800051d4:	00813483          	ld	s1,8(sp)
    800051d8:	02010113          	addi	sp,sp,32
    800051dc:	00008067          	ret
    800051e0:	0104b903          	ld	s2,16(s1)
    800051e4:	fffff097          	auipc	ra,0xfffff
    800051e8:	878080e7          	jalr	-1928(ra) # 80003a5c <mycpu>
    800051ec:	faa91ce3          	bne	s2,a0,800051a4 <acquire+0x58>
    800051f0:	00001517          	auipc	a0,0x1
    800051f4:	15050513          	addi	a0,a0,336 # 80006340 <digits+0x20>
    800051f8:	fffff097          	auipc	ra,0xfffff
    800051fc:	224080e7          	jalr	548(ra) # 8000441c <panic>
    80005200:	00195913          	srli	s2,s2,0x1
    80005204:	fffff097          	auipc	ra,0xfffff
    80005208:	858080e7          	jalr	-1960(ra) # 80003a5c <mycpu>
    8000520c:	00197913          	andi	s2,s2,1
    80005210:	07252e23          	sw	s2,124(a0)
    80005214:	f75ff06f          	j	80005188 <acquire+0x3c>

0000000080005218 <release>:
    80005218:	fe010113          	addi	sp,sp,-32
    8000521c:	00813823          	sd	s0,16(sp)
    80005220:	00113c23          	sd	ra,24(sp)
    80005224:	00913423          	sd	s1,8(sp)
    80005228:	01213023          	sd	s2,0(sp)
    8000522c:	02010413          	addi	s0,sp,32
    80005230:	00052783          	lw	a5,0(a0)
    80005234:	00079a63          	bnez	a5,80005248 <release+0x30>
    80005238:	00001517          	auipc	a0,0x1
    8000523c:	11050513          	addi	a0,a0,272 # 80006348 <digits+0x28>
    80005240:	fffff097          	auipc	ra,0xfffff
    80005244:	1dc080e7          	jalr	476(ra) # 8000441c <panic>
    80005248:	01053903          	ld	s2,16(a0)
    8000524c:	00050493          	mv	s1,a0
    80005250:	fffff097          	auipc	ra,0xfffff
    80005254:	80c080e7          	jalr	-2036(ra) # 80003a5c <mycpu>
    80005258:	fea910e3          	bne	s2,a0,80005238 <release+0x20>
    8000525c:	0004b823          	sd	zero,16(s1)
    80005260:	0ff0000f          	fence
    80005264:	0f50000f          	fence	iorw,ow
    80005268:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000526c:	ffffe097          	auipc	ra,0xffffe
    80005270:	7f0080e7          	jalr	2032(ra) # 80003a5c <mycpu>
    80005274:	100027f3          	csrr	a5,sstatus
    80005278:	0027f793          	andi	a5,a5,2
    8000527c:	04079a63          	bnez	a5,800052d0 <release+0xb8>
    80005280:	07852783          	lw	a5,120(a0)
    80005284:	02f05e63          	blez	a5,800052c0 <release+0xa8>
    80005288:	fff7871b          	addiw	a4,a5,-1
    8000528c:	06e52c23          	sw	a4,120(a0)
    80005290:	00071c63          	bnez	a4,800052a8 <release+0x90>
    80005294:	07c52783          	lw	a5,124(a0)
    80005298:	00078863          	beqz	a5,800052a8 <release+0x90>
    8000529c:	100027f3          	csrr	a5,sstatus
    800052a0:	0027e793          	ori	a5,a5,2
    800052a4:	10079073          	csrw	sstatus,a5
    800052a8:	01813083          	ld	ra,24(sp)
    800052ac:	01013403          	ld	s0,16(sp)
    800052b0:	00813483          	ld	s1,8(sp)
    800052b4:	00013903          	ld	s2,0(sp)
    800052b8:	02010113          	addi	sp,sp,32
    800052bc:	00008067          	ret
    800052c0:	00001517          	auipc	a0,0x1
    800052c4:	0a850513          	addi	a0,a0,168 # 80006368 <digits+0x48>
    800052c8:	fffff097          	auipc	ra,0xfffff
    800052cc:	154080e7          	jalr	340(ra) # 8000441c <panic>
    800052d0:	00001517          	auipc	a0,0x1
    800052d4:	08050513          	addi	a0,a0,128 # 80006350 <digits+0x30>
    800052d8:	fffff097          	auipc	ra,0xfffff
    800052dc:	144080e7          	jalr	324(ra) # 8000441c <panic>

00000000800052e0 <holding>:
    800052e0:	00052783          	lw	a5,0(a0)
    800052e4:	00079663          	bnez	a5,800052f0 <holding+0x10>
    800052e8:	00000513          	li	a0,0
    800052ec:	00008067          	ret
    800052f0:	fe010113          	addi	sp,sp,-32
    800052f4:	00813823          	sd	s0,16(sp)
    800052f8:	00913423          	sd	s1,8(sp)
    800052fc:	00113c23          	sd	ra,24(sp)
    80005300:	02010413          	addi	s0,sp,32
    80005304:	01053483          	ld	s1,16(a0)
    80005308:	ffffe097          	auipc	ra,0xffffe
    8000530c:	754080e7          	jalr	1876(ra) # 80003a5c <mycpu>
    80005310:	01813083          	ld	ra,24(sp)
    80005314:	01013403          	ld	s0,16(sp)
    80005318:	40a48533          	sub	a0,s1,a0
    8000531c:	00153513          	seqz	a0,a0
    80005320:	00813483          	ld	s1,8(sp)
    80005324:	02010113          	addi	sp,sp,32
    80005328:	00008067          	ret

000000008000532c <push_off>:
    8000532c:	fe010113          	addi	sp,sp,-32
    80005330:	00813823          	sd	s0,16(sp)
    80005334:	00113c23          	sd	ra,24(sp)
    80005338:	00913423          	sd	s1,8(sp)
    8000533c:	02010413          	addi	s0,sp,32
    80005340:	100024f3          	csrr	s1,sstatus
    80005344:	100027f3          	csrr	a5,sstatus
    80005348:	ffd7f793          	andi	a5,a5,-3
    8000534c:	10079073          	csrw	sstatus,a5
    80005350:	ffffe097          	auipc	ra,0xffffe
    80005354:	70c080e7          	jalr	1804(ra) # 80003a5c <mycpu>
    80005358:	07852783          	lw	a5,120(a0)
    8000535c:	02078663          	beqz	a5,80005388 <push_off+0x5c>
    80005360:	ffffe097          	auipc	ra,0xffffe
    80005364:	6fc080e7          	jalr	1788(ra) # 80003a5c <mycpu>
    80005368:	07852783          	lw	a5,120(a0)
    8000536c:	01813083          	ld	ra,24(sp)
    80005370:	01013403          	ld	s0,16(sp)
    80005374:	0017879b          	addiw	a5,a5,1
    80005378:	06f52c23          	sw	a5,120(a0)
    8000537c:	00813483          	ld	s1,8(sp)
    80005380:	02010113          	addi	sp,sp,32
    80005384:	00008067          	ret
    80005388:	0014d493          	srli	s1,s1,0x1
    8000538c:	ffffe097          	auipc	ra,0xffffe
    80005390:	6d0080e7          	jalr	1744(ra) # 80003a5c <mycpu>
    80005394:	0014f493          	andi	s1,s1,1
    80005398:	06952e23          	sw	s1,124(a0)
    8000539c:	fc5ff06f          	j	80005360 <push_off+0x34>

00000000800053a0 <pop_off>:
    800053a0:	ff010113          	addi	sp,sp,-16
    800053a4:	00813023          	sd	s0,0(sp)
    800053a8:	00113423          	sd	ra,8(sp)
    800053ac:	01010413          	addi	s0,sp,16
    800053b0:	ffffe097          	auipc	ra,0xffffe
    800053b4:	6ac080e7          	jalr	1708(ra) # 80003a5c <mycpu>
    800053b8:	100027f3          	csrr	a5,sstatus
    800053bc:	0027f793          	andi	a5,a5,2
    800053c0:	04079663          	bnez	a5,8000540c <pop_off+0x6c>
    800053c4:	07852783          	lw	a5,120(a0)
    800053c8:	02f05a63          	blez	a5,800053fc <pop_off+0x5c>
    800053cc:	fff7871b          	addiw	a4,a5,-1
    800053d0:	06e52c23          	sw	a4,120(a0)
    800053d4:	00071c63          	bnez	a4,800053ec <pop_off+0x4c>
    800053d8:	07c52783          	lw	a5,124(a0)
    800053dc:	00078863          	beqz	a5,800053ec <pop_off+0x4c>
    800053e0:	100027f3          	csrr	a5,sstatus
    800053e4:	0027e793          	ori	a5,a5,2
    800053e8:	10079073          	csrw	sstatus,a5
    800053ec:	00813083          	ld	ra,8(sp)
    800053f0:	00013403          	ld	s0,0(sp)
    800053f4:	01010113          	addi	sp,sp,16
    800053f8:	00008067          	ret
    800053fc:	00001517          	auipc	a0,0x1
    80005400:	f6c50513          	addi	a0,a0,-148 # 80006368 <digits+0x48>
    80005404:	fffff097          	auipc	ra,0xfffff
    80005408:	018080e7          	jalr	24(ra) # 8000441c <panic>
    8000540c:	00001517          	auipc	a0,0x1
    80005410:	f4450513          	addi	a0,a0,-188 # 80006350 <digits+0x30>
    80005414:	fffff097          	auipc	ra,0xfffff
    80005418:	008080e7          	jalr	8(ra) # 8000441c <panic>

000000008000541c <push_on>:
    8000541c:	fe010113          	addi	sp,sp,-32
    80005420:	00813823          	sd	s0,16(sp)
    80005424:	00113c23          	sd	ra,24(sp)
    80005428:	00913423          	sd	s1,8(sp)
    8000542c:	02010413          	addi	s0,sp,32
    80005430:	100024f3          	csrr	s1,sstatus
    80005434:	100027f3          	csrr	a5,sstatus
    80005438:	0027e793          	ori	a5,a5,2
    8000543c:	10079073          	csrw	sstatus,a5
    80005440:	ffffe097          	auipc	ra,0xffffe
    80005444:	61c080e7          	jalr	1564(ra) # 80003a5c <mycpu>
    80005448:	07852783          	lw	a5,120(a0)
    8000544c:	02078663          	beqz	a5,80005478 <push_on+0x5c>
    80005450:	ffffe097          	auipc	ra,0xffffe
    80005454:	60c080e7          	jalr	1548(ra) # 80003a5c <mycpu>
    80005458:	07852783          	lw	a5,120(a0)
    8000545c:	01813083          	ld	ra,24(sp)
    80005460:	01013403          	ld	s0,16(sp)
    80005464:	0017879b          	addiw	a5,a5,1
    80005468:	06f52c23          	sw	a5,120(a0)
    8000546c:	00813483          	ld	s1,8(sp)
    80005470:	02010113          	addi	sp,sp,32
    80005474:	00008067          	ret
    80005478:	0014d493          	srli	s1,s1,0x1
    8000547c:	ffffe097          	auipc	ra,0xffffe
    80005480:	5e0080e7          	jalr	1504(ra) # 80003a5c <mycpu>
    80005484:	0014f493          	andi	s1,s1,1
    80005488:	06952e23          	sw	s1,124(a0)
    8000548c:	fc5ff06f          	j	80005450 <push_on+0x34>

0000000080005490 <pop_on>:
    80005490:	ff010113          	addi	sp,sp,-16
    80005494:	00813023          	sd	s0,0(sp)
    80005498:	00113423          	sd	ra,8(sp)
    8000549c:	01010413          	addi	s0,sp,16
    800054a0:	ffffe097          	auipc	ra,0xffffe
    800054a4:	5bc080e7          	jalr	1468(ra) # 80003a5c <mycpu>
    800054a8:	100027f3          	csrr	a5,sstatus
    800054ac:	0027f793          	andi	a5,a5,2
    800054b0:	04078463          	beqz	a5,800054f8 <pop_on+0x68>
    800054b4:	07852783          	lw	a5,120(a0)
    800054b8:	02f05863          	blez	a5,800054e8 <pop_on+0x58>
    800054bc:	fff7879b          	addiw	a5,a5,-1
    800054c0:	06f52c23          	sw	a5,120(a0)
    800054c4:	07853783          	ld	a5,120(a0)
    800054c8:	00079863          	bnez	a5,800054d8 <pop_on+0x48>
    800054cc:	100027f3          	csrr	a5,sstatus
    800054d0:	ffd7f793          	andi	a5,a5,-3
    800054d4:	10079073          	csrw	sstatus,a5
    800054d8:	00813083          	ld	ra,8(sp)
    800054dc:	00013403          	ld	s0,0(sp)
    800054e0:	01010113          	addi	sp,sp,16
    800054e4:	00008067          	ret
    800054e8:	00001517          	auipc	a0,0x1
    800054ec:	ea850513          	addi	a0,a0,-344 # 80006390 <digits+0x70>
    800054f0:	fffff097          	auipc	ra,0xfffff
    800054f4:	f2c080e7          	jalr	-212(ra) # 8000441c <panic>
    800054f8:	00001517          	auipc	a0,0x1
    800054fc:	e7850513          	addi	a0,a0,-392 # 80006370 <digits+0x50>
    80005500:	fffff097          	auipc	ra,0xfffff
    80005504:	f1c080e7          	jalr	-228(ra) # 8000441c <panic>

0000000080005508 <__memset>:
    80005508:	ff010113          	addi	sp,sp,-16
    8000550c:	00813423          	sd	s0,8(sp)
    80005510:	01010413          	addi	s0,sp,16
    80005514:	1a060e63          	beqz	a2,800056d0 <__memset+0x1c8>
    80005518:	40a007b3          	neg	a5,a0
    8000551c:	0077f793          	andi	a5,a5,7
    80005520:	00778693          	addi	a3,a5,7
    80005524:	00b00813          	li	a6,11
    80005528:	0ff5f593          	andi	a1,a1,255
    8000552c:	fff6071b          	addiw	a4,a2,-1
    80005530:	1b06e663          	bltu	a3,a6,800056dc <__memset+0x1d4>
    80005534:	1cd76463          	bltu	a4,a3,800056fc <__memset+0x1f4>
    80005538:	1a078e63          	beqz	a5,800056f4 <__memset+0x1ec>
    8000553c:	00b50023          	sb	a1,0(a0)
    80005540:	00100713          	li	a4,1
    80005544:	1ae78463          	beq	a5,a4,800056ec <__memset+0x1e4>
    80005548:	00b500a3          	sb	a1,1(a0)
    8000554c:	00200713          	li	a4,2
    80005550:	1ae78a63          	beq	a5,a4,80005704 <__memset+0x1fc>
    80005554:	00b50123          	sb	a1,2(a0)
    80005558:	00300713          	li	a4,3
    8000555c:	18e78463          	beq	a5,a4,800056e4 <__memset+0x1dc>
    80005560:	00b501a3          	sb	a1,3(a0)
    80005564:	00400713          	li	a4,4
    80005568:	1ae78263          	beq	a5,a4,8000570c <__memset+0x204>
    8000556c:	00b50223          	sb	a1,4(a0)
    80005570:	00500713          	li	a4,5
    80005574:	1ae78063          	beq	a5,a4,80005714 <__memset+0x20c>
    80005578:	00b502a3          	sb	a1,5(a0)
    8000557c:	00700713          	li	a4,7
    80005580:	18e79e63          	bne	a5,a4,8000571c <__memset+0x214>
    80005584:	00b50323          	sb	a1,6(a0)
    80005588:	00700e93          	li	t4,7
    8000558c:	00859713          	slli	a4,a1,0x8
    80005590:	00e5e733          	or	a4,a1,a4
    80005594:	01059e13          	slli	t3,a1,0x10
    80005598:	01c76e33          	or	t3,a4,t3
    8000559c:	01859313          	slli	t1,a1,0x18
    800055a0:	006e6333          	or	t1,t3,t1
    800055a4:	02059893          	slli	a7,a1,0x20
    800055a8:	40f60e3b          	subw	t3,a2,a5
    800055ac:	011368b3          	or	a7,t1,a7
    800055b0:	02859813          	slli	a6,a1,0x28
    800055b4:	0108e833          	or	a6,a7,a6
    800055b8:	03059693          	slli	a3,a1,0x30
    800055bc:	003e589b          	srliw	a7,t3,0x3
    800055c0:	00d866b3          	or	a3,a6,a3
    800055c4:	03859713          	slli	a4,a1,0x38
    800055c8:	00389813          	slli	a6,a7,0x3
    800055cc:	00f507b3          	add	a5,a0,a5
    800055d0:	00e6e733          	or	a4,a3,a4
    800055d4:	000e089b          	sext.w	a7,t3
    800055d8:	00f806b3          	add	a3,a6,a5
    800055dc:	00e7b023          	sd	a4,0(a5)
    800055e0:	00878793          	addi	a5,a5,8
    800055e4:	fed79ce3          	bne	a5,a3,800055dc <__memset+0xd4>
    800055e8:	ff8e7793          	andi	a5,t3,-8
    800055ec:	0007871b          	sext.w	a4,a5
    800055f0:	01d787bb          	addw	a5,a5,t4
    800055f4:	0ce88e63          	beq	a7,a4,800056d0 <__memset+0x1c8>
    800055f8:	00f50733          	add	a4,a0,a5
    800055fc:	00b70023          	sb	a1,0(a4)
    80005600:	0017871b          	addiw	a4,a5,1
    80005604:	0cc77663          	bgeu	a4,a2,800056d0 <__memset+0x1c8>
    80005608:	00e50733          	add	a4,a0,a4
    8000560c:	00b70023          	sb	a1,0(a4)
    80005610:	0027871b          	addiw	a4,a5,2
    80005614:	0ac77e63          	bgeu	a4,a2,800056d0 <__memset+0x1c8>
    80005618:	00e50733          	add	a4,a0,a4
    8000561c:	00b70023          	sb	a1,0(a4)
    80005620:	0037871b          	addiw	a4,a5,3
    80005624:	0ac77663          	bgeu	a4,a2,800056d0 <__memset+0x1c8>
    80005628:	00e50733          	add	a4,a0,a4
    8000562c:	00b70023          	sb	a1,0(a4)
    80005630:	0047871b          	addiw	a4,a5,4
    80005634:	08c77e63          	bgeu	a4,a2,800056d0 <__memset+0x1c8>
    80005638:	00e50733          	add	a4,a0,a4
    8000563c:	00b70023          	sb	a1,0(a4)
    80005640:	0057871b          	addiw	a4,a5,5
    80005644:	08c77663          	bgeu	a4,a2,800056d0 <__memset+0x1c8>
    80005648:	00e50733          	add	a4,a0,a4
    8000564c:	00b70023          	sb	a1,0(a4)
    80005650:	0067871b          	addiw	a4,a5,6
    80005654:	06c77e63          	bgeu	a4,a2,800056d0 <__memset+0x1c8>
    80005658:	00e50733          	add	a4,a0,a4
    8000565c:	00b70023          	sb	a1,0(a4)
    80005660:	0077871b          	addiw	a4,a5,7
    80005664:	06c77663          	bgeu	a4,a2,800056d0 <__memset+0x1c8>
    80005668:	00e50733          	add	a4,a0,a4
    8000566c:	00b70023          	sb	a1,0(a4)
    80005670:	0087871b          	addiw	a4,a5,8
    80005674:	04c77e63          	bgeu	a4,a2,800056d0 <__memset+0x1c8>
    80005678:	00e50733          	add	a4,a0,a4
    8000567c:	00b70023          	sb	a1,0(a4)
    80005680:	0097871b          	addiw	a4,a5,9
    80005684:	04c77663          	bgeu	a4,a2,800056d0 <__memset+0x1c8>
    80005688:	00e50733          	add	a4,a0,a4
    8000568c:	00b70023          	sb	a1,0(a4)
    80005690:	00a7871b          	addiw	a4,a5,10
    80005694:	02c77e63          	bgeu	a4,a2,800056d0 <__memset+0x1c8>
    80005698:	00e50733          	add	a4,a0,a4
    8000569c:	00b70023          	sb	a1,0(a4)
    800056a0:	00b7871b          	addiw	a4,a5,11
    800056a4:	02c77663          	bgeu	a4,a2,800056d0 <__memset+0x1c8>
    800056a8:	00e50733          	add	a4,a0,a4
    800056ac:	00b70023          	sb	a1,0(a4)
    800056b0:	00c7871b          	addiw	a4,a5,12
    800056b4:	00c77e63          	bgeu	a4,a2,800056d0 <__memset+0x1c8>
    800056b8:	00e50733          	add	a4,a0,a4
    800056bc:	00b70023          	sb	a1,0(a4)
    800056c0:	00d7879b          	addiw	a5,a5,13
    800056c4:	00c7f663          	bgeu	a5,a2,800056d0 <__memset+0x1c8>
    800056c8:	00f507b3          	add	a5,a0,a5
    800056cc:	00b78023          	sb	a1,0(a5)
    800056d0:	00813403          	ld	s0,8(sp)
    800056d4:	01010113          	addi	sp,sp,16
    800056d8:	00008067          	ret
    800056dc:	00b00693          	li	a3,11
    800056e0:	e55ff06f          	j	80005534 <__memset+0x2c>
    800056e4:	00300e93          	li	t4,3
    800056e8:	ea5ff06f          	j	8000558c <__memset+0x84>
    800056ec:	00100e93          	li	t4,1
    800056f0:	e9dff06f          	j	8000558c <__memset+0x84>
    800056f4:	00000e93          	li	t4,0
    800056f8:	e95ff06f          	j	8000558c <__memset+0x84>
    800056fc:	00000793          	li	a5,0
    80005700:	ef9ff06f          	j	800055f8 <__memset+0xf0>
    80005704:	00200e93          	li	t4,2
    80005708:	e85ff06f          	j	8000558c <__memset+0x84>
    8000570c:	00400e93          	li	t4,4
    80005710:	e7dff06f          	j	8000558c <__memset+0x84>
    80005714:	00500e93          	li	t4,5
    80005718:	e75ff06f          	j	8000558c <__memset+0x84>
    8000571c:	00600e93          	li	t4,6
    80005720:	e6dff06f          	j	8000558c <__memset+0x84>

0000000080005724 <__memmove>:
    80005724:	ff010113          	addi	sp,sp,-16
    80005728:	00813423          	sd	s0,8(sp)
    8000572c:	01010413          	addi	s0,sp,16
    80005730:	0e060863          	beqz	a2,80005820 <__memmove+0xfc>
    80005734:	fff6069b          	addiw	a3,a2,-1
    80005738:	0006881b          	sext.w	a6,a3
    8000573c:	0ea5e863          	bltu	a1,a0,8000582c <__memmove+0x108>
    80005740:	00758713          	addi	a4,a1,7
    80005744:	00a5e7b3          	or	a5,a1,a0
    80005748:	40a70733          	sub	a4,a4,a0
    8000574c:	0077f793          	andi	a5,a5,7
    80005750:	00f73713          	sltiu	a4,a4,15
    80005754:	00174713          	xori	a4,a4,1
    80005758:	0017b793          	seqz	a5,a5
    8000575c:	00e7f7b3          	and	a5,a5,a4
    80005760:	10078863          	beqz	a5,80005870 <__memmove+0x14c>
    80005764:	00900793          	li	a5,9
    80005768:	1107f463          	bgeu	a5,a6,80005870 <__memmove+0x14c>
    8000576c:	0036581b          	srliw	a6,a2,0x3
    80005770:	fff8081b          	addiw	a6,a6,-1
    80005774:	02081813          	slli	a6,a6,0x20
    80005778:	01d85893          	srli	a7,a6,0x1d
    8000577c:	00858813          	addi	a6,a1,8
    80005780:	00058793          	mv	a5,a1
    80005784:	00050713          	mv	a4,a0
    80005788:	01088833          	add	a6,a7,a6
    8000578c:	0007b883          	ld	a7,0(a5)
    80005790:	00878793          	addi	a5,a5,8
    80005794:	00870713          	addi	a4,a4,8
    80005798:	ff173c23          	sd	a7,-8(a4)
    8000579c:	ff0798e3          	bne	a5,a6,8000578c <__memmove+0x68>
    800057a0:	ff867713          	andi	a4,a2,-8
    800057a4:	02071793          	slli	a5,a4,0x20
    800057a8:	0207d793          	srli	a5,a5,0x20
    800057ac:	00f585b3          	add	a1,a1,a5
    800057b0:	40e686bb          	subw	a3,a3,a4
    800057b4:	00f507b3          	add	a5,a0,a5
    800057b8:	06e60463          	beq	a2,a4,80005820 <__memmove+0xfc>
    800057bc:	0005c703          	lbu	a4,0(a1)
    800057c0:	00e78023          	sb	a4,0(a5)
    800057c4:	04068e63          	beqz	a3,80005820 <__memmove+0xfc>
    800057c8:	0015c603          	lbu	a2,1(a1)
    800057cc:	00100713          	li	a4,1
    800057d0:	00c780a3          	sb	a2,1(a5)
    800057d4:	04e68663          	beq	a3,a4,80005820 <__memmove+0xfc>
    800057d8:	0025c603          	lbu	a2,2(a1)
    800057dc:	00200713          	li	a4,2
    800057e0:	00c78123          	sb	a2,2(a5)
    800057e4:	02e68e63          	beq	a3,a4,80005820 <__memmove+0xfc>
    800057e8:	0035c603          	lbu	a2,3(a1)
    800057ec:	00300713          	li	a4,3
    800057f0:	00c781a3          	sb	a2,3(a5)
    800057f4:	02e68663          	beq	a3,a4,80005820 <__memmove+0xfc>
    800057f8:	0045c603          	lbu	a2,4(a1)
    800057fc:	00400713          	li	a4,4
    80005800:	00c78223          	sb	a2,4(a5)
    80005804:	00e68e63          	beq	a3,a4,80005820 <__memmove+0xfc>
    80005808:	0055c603          	lbu	a2,5(a1)
    8000580c:	00500713          	li	a4,5
    80005810:	00c782a3          	sb	a2,5(a5)
    80005814:	00e68663          	beq	a3,a4,80005820 <__memmove+0xfc>
    80005818:	0065c703          	lbu	a4,6(a1)
    8000581c:	00e78323          	sb	a4,6(a5)
    80005820:	00813403          	ld	s0,8(sp)
    80005824:	01010113          	addi	sp,sp,16
    80005828:	00008067          	ret
    8000582c:	02061713          	slli	a4,a2,0x20
    80005830:	02075713          	srli	a4,a4,0x20
    80005834:	00e587b3          	add	a5,a1,a4
    80005838:	f0f574e3          	bgeu	a0,a5,80005740 <__memmove+0x1c>
    8000583c:	02069613          	slli	a2,a3,0x20
    80005840:	02065613          	srli	a2,a2,0x20
    80005844:	fff64613          	not	a2,a2
    80005848:	00e50733          	add	a4,a0,a4
    8000584c:	00c78633          	add	a2,a5,a2
    80005850:	fff7c683          	lbu	a3,-1(a5)
    80005854:	fff78793          	addi	a5,a5,-1
    80005858:	fff70713          	addi	a4,a4,-1
    8000585c:	00d70023          	sb	a3,0(a4)
    80005860:	fec798e3          	bne	a5,a2,80005850 <__memmove+0x12c>
    80005864:	00813403          	ld	s0,8(sp)
    80005868:	01010113          	addi	sp,sp,16
    8000586c:	00008067          	ret
    80005870:	02069713          	slli	a4,a3,0x20
    80005874:	02075713          	srli	a4,a4,0x20
    80005878:	00170713          	addi	a4,a4,1
    8000587c:	00e50733          	add	a4,a0,a4
    80005880:	00050793          	mv	a5,a0
    80005884:	0005c683          	lbu	a3,0(a1)
    80005888:	00178793          	addi	a5,a5,1
    8000588c:	00158593          	addi	a1,a1,1
    80005890:	fed78fa3          	sb	a3,-1(a5)
    80005894:	fee798e3          	bne	a5,a4,80005884 <__memmove+0x160>
    80005898:	f89ff06f          	j	80005820 <__memmove+0xfc>

000000008000589c <__putc>:
    8000589c:	fe010113          	addi	sp,sp,-32
    800058a0:	00813823          	sd	s0,16(sp)
    800058a4:	00113c23          	sd	ra,24(sp)
    800058a8:	02010413          	addi	s0,sp,32
    800058ac:	00050793          	mv	a5,a0
    800058b0:	fef40593          	addi	a1,s0,-17
    800058b4:	00100613          	li	a2,1
    800058b8:	00000513          	li	a0,0
    800058bc:	fef407a3          	sb	a5,-17(s0)
    800058c0:	fffff097          	auipc	ra,0xfffff
    800058c4:	b3c080e7          	jalr	-1220(ra) # 800043fc <console_write>
    800058c8:	01813083          	ld	ra,24(sp)
    800058cc:	01013403          	ld	s0,16(sp)
    800058d0:	02010113          	addi	sp,sp,32
    800058d4:	00008067          	ret

00000000800058d8 <__getc>:
    800058d8:	fe010113          	addi	sp,sp,-32
    800058dc:	00813823          	sd	s0,16(sp)
    800058e0:	00113c23          	sd	ra,24(sp)
    800058e4:	02010413          	addi	s0,sp,32
    800058e8:	fe840593          	addi	a1,s0,-24
    800058ec:	00100613          	li	a2,1
    800058f0:	00000513          	li	a0,0
    800058f4:	fffff097          	auipc	ra,0xfffff
    800058f8:	ae8080e7          	jalr	-1304(ra) # 800043dc <console_read>
    800058fc:	fe844503          	lbu	a0,-24(s0)
    80005900:	01813083          	ld	ra,24(sp)
    80005904:	01013403          	ld	s0,16(sp)
    80005908:	02010113          	addi	sp,sp,32
    8000590c:	00008067          	ret

0000000080005910 <console_handler>:
    80005910:	fe010113          	addi	sp,sp,-32
    80005914:	00813823          	sd	s0,16(sp)
    80005918:	00113c23          	sd	ra,24(sp)
    8000591c:	00913423          	sd	s1,8(sp)
    80005920:	02010413          	addi	s0,sp,32
    80005924:	14202773          	csrr	a4,scause
    80005928:	100027f3          	csrr	a5,sstatus
    8000592c:	0027f793          	andi	a5,a5,2
    80005930:	06079e63          	bnez	a5,800059ac <console_handler+0x9c>
    80005934:	00074c63          	bltz	a4,8000594c <console_handler+0x3c>
    80005938:	01813083          	ld	ra,24(sp)
    8000593c:	01013403          	ld	s0,16(sp)
    80005940:	00813483          	ld	s1,8(sp)
    80005944:	02010113          	addi	sp,sp,32
    80005948:	00008067          	ret
    8000594c:	0ff77713          	andi	a4,a4,255
    80005950:	00900793          	li	a5,9
    80005954:	fef712e3          	bne	a4,a5,80005938 <console_handler+0x28>
    80005958:	ffffe097          	auipc	ra,0xffffe
    8000595c:	6dc080e7          	jalr	1756(ra) # 80004034 <plic_claim>
    80005960:	00a00793          	li	a5,10
    80005964:	00050493          	mv	s1,a0
    80005968:	02f50c63          	beq	a0,a5,800059a0 <console_handler+0x90>
    8000596c:	fc0506e3          	beqz	a0,80005938 <console_handler+0x28>
    80005970:	00050593          	mv	a1,a0
    80005974:	00001517          	auipc	a0,0x1
    80005978:	92450513          	addi	a0,a0,-1756 # 80006298 <CONSOLE_STATUS+0x288>
    8000597c:	fffff097          	auipc	ra,0xfffff
    80005980:	afc080e7          	jalr	-1284(ra) # 80004478 <__printf>
    80005984:	01013403          	ld	s0,16(sp)
    80005988:	01813083          	ld	ra,24(sp)
    8000598c:	00048513          	mv	a0,s1
    80005990:	00813483          	ld	s1,8(sp)
    80005994:	02010113          	addi	sp,sp,32
    80005998:	ffffe317          	auipc	t1,0xffffe
    8000599c:	6d430067          	jr	1748(t1) # 8000406c <plic_complete>
    800059a0:	fffff097          	auipc	ra,0xfffff
    800059a4:	3e0080e7          	jalr	992(ra) # 80004d80 <uartintr>
    800059a8:	fddff06f          	j	80005984 <console_handler+0x74>
    800059ac:	00001517          	auipc	a0,0x1
    800059b0:	9ec50513          	addi	a0,a0,-1556 # 80006398 <digits+0x78>
    800059b4:	fffff097          	auipc	ra,0xfffff
    800059b8:	a68080e7          	jalr	-1432(ra) # 8000441c <panic>
	...

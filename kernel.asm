
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
    8000001c:	071030ef          	jal	ra,8000388c <start>

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
    800010a8:	29d000ef          	jal	ra,80001b44 <_ZN5Riscv11trapHandlerEv>

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
    80001440:	124080e7          	jalr	292(ra) # 80001560 <_ZN9Scheduler3putEP3PCB>
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
        thread_dispatch();
    80001474:	00000097          	auipc	ra,0x0
    80001478:	f08080e7          	jalr	-248(ra) # 8000137c <_Z15thread_dispatchv>
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
    800014ac:	67c080e7          	jalr	1660(ra) # 80001b24 <_ZN5Riscv10popSppSpieEv>
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
    Scheduler::readyQueue.addLast(handle);
}

void Scheduler::remove() {
    Scheduler::readyQueue.removeLast();
}
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
    8000151c:	ff010113          	addi	sp,sp,-16
    80001520:	00813423          	sd	s0,8(sp)
    80001524:	01010413          	addi	s0,sp,16
        }
    }

    T *removeFirst()
    {
        if (!head) { return 0; }
    80001528:	00006517          	auipc	a0,0x6
    8000152c:	d9053503          	ld	a0,-624(a0) # 800072b8 <_ZN9Scheduler10readyQueueE>
    80001530:	00050c63          	beqz	a0,80001548 <_ZN9Scheduler3getEv+0x2c>

        Elem *elem = head;
        head = head->next;
    80001534:	00853783          	ld	a5,8(a0)
    80001538:	00006717          	auipc	a4,0x6
    8000153c:	d8f73023          	sd	a5,-640(a4) # 800072b8 <_ZN9Scheduler10readyQueueE>
        if (!head) { tail = 0; }
    80001540:	00078a63          	beqz	a5,80001554 <_ZN9Scheduler3getEv+0x38>

        T *ret = elem->data;
    80001544:	00053503          	ld	a0,0(a0)
}
    80001548:	00813403          	ld	s0,8(sp)
    8000154c:	01010113          	addi	sp,sp,16
    80001550:	00008067          	ret
        if (!head) { tail = 0; }
    80001554:	00006797          	auipc	a5,0x6
    80001558:	d607b623          	sd	zero,-660(a5) # 800072c0 <_ZN9Scheduler10readyQueueE+0x8>
    8000155c:	fe9ff06f          	j	80001544 <_ZN9Scheduler3getEv+0x28>

0000000080001560 <_ZN9Scheduler3putEP3PCB>:
void Scheduler::put(PCB *handle) {
    80001560:	fe010113          	addi	sp,sp,-32
    80001564:	00113c23          	sd	ra,24(sp)
    80001568:	00813823          	sd	s0,16(sp)
    8000156c:	00913423          	sd	s1,8(sp)
    80001570:	02010413          	addi	s0,sp,32
    80001574:	00050493          	mv	s1,a0
        Elem *elem = new Elem(data, 0);
    80001578:	01000513          	li	a0,16
    8000157c:	00000097          	auipc	ra,0x0
    80001580:	2f0080e7          	jalr	752(ra) # 8000186c <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80001584:	00953023          	sd	s1,0(a0)
    80001588:	00053423          	sd	zero,8(a0)
        if (tail)
    8000158c:	00006797          	auipc	a5,0x6
    80001590:	d347b783          	ld	a5,-716(a5) # 800072c0 <_ZN9Scheduler10readyQueueE+0x8>
    80001594:	02078263          	beqz	a5,800015b8 <_ZN9Scheduler3putEP3PCB+0x58>
            tail->next = elem;
    80001598:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    8000159c:	00006797          	auipc	a5,0x6
    800015a0:	d2a7b223          	sd	a0,-732(a5) # 800072c0 <_ZN9Scheduler10readyQueueE+0x8>
}
    800015a4:	01813083          	ld	ra,24(sp)
    800015a8:	01013403          	ld	s0,16(sp)
    800015ac:	00813483          	ld	s1,8(sp)
    800015b0:	02010113          	addi	sp,sp,32
    800015b4:	00008067          	ret
            head = tail = elem;
    800015b8:	00006797          	auipc	a5,0x6
    800015bc:	d0078793          	addi	a5,a5,-768 # 800072b8 <_ZN9Scheduler10readyQueueE>
    800015c0:	00a7b423          	sd	a0,8(a5)
    800015c4:	00a7b023          	sd	a0,0(a5)
    800015c8:	fddff06f          	j	800015a4 <_ZN9Scheduler3putEP3PCB+0x44>

00000000800015cc <_ZN9Scheduler6removeEv>:
void Scheduler::remove() {
    800015cc:	ff010113          	addi	sp,sp,-16
    800015d0:	00813423          	sd	s0,8(sp)
    800015d4:	01010413          	addi	s0,sp,16
        return head->data;
    }

    T *removeLast()
    {
        if (!head) { return 0; }
    800015d8:	00006797          	auipc	a5,0x6
    800015dc:	ce07b783          	ld	a5,-800(a5) # 800072b8 <_ZN9Scheduler10readyQueueE>
    800015e0:	02078a63          	beqz	a5,80001614 <_ZN9Scheduler6removeEv+0x48>

        Elem *prev = 0;
    800015e4:	00000693          	li	a3,0
        for (Elem *curr = head; curr && curr != tail; curr = curr->next)
    800015e8:	00078e63          	beqz	a5,80001604 <_ZN9Scheduler6removeEv+0x38>
    800015ec:	00006717          	auipc	a4,0x6
    800015f0:	cd473703          	ld	a4,-812(a4) # 800072c0 <_ZN9Scheduler10readyQueueE+0x8>
    800015f4:	00e78863          	beq	a5,a4,80001604 <_ZN9Scheduler6removeEv+0x38>
        {
            prev = curr;
    800015f8:	00078693          	mv	a3,a5
        for (Elem *curr = head; curr && curr != tail; curr = curr->next)
    800015fc:	0087b783          	ld	a5,8(a5)
    80001600:	fe9ff06f          	j	800015e8 <_ZN9Scheduler6removeEv+0x1c>
        }

        Elem *elem = tail;
        if (prev) { prev->next = 0; }
    80001604:	00068e63          	beqz	a3,80001620 <_ZN9Scheduler6removeEv+0x54>
    80001608:	0006b423          	sd	zero,8(a3)
        else { head = 0; }
        tail = prev;
    8000160c:	00006797          	auipc	a5,0x6
    80001610:	cad7ba23          	sd	a3,-844(a5) # 800072c0 <_ZN9Scheduler10readyQueueE+0x8>
}
    80001614:	00813403          	ld	s0,8(sp)
    80001618:	01010113          	addi	sp,sp,16
    8000161c:	00008067          	ret
        else { head = 0; }
    80001620:	00006797          	auipc	a5,0x6
    80001624:	c807bc23          	sd	zero,-872(a5) # 800072b8 <_ZN9Scheduler10readyQueueE>
    80001628:	fe5ff06f          	j	8000160c <_ZN9Scheduler6removeEv+0x40>

000000008000162c <_GLOBAL__sub_I__ZN9Scheduler10readyQueueE>:
    8000162c:	ff010113          	addi	sp,sp,-16
    80001630:	00113423          	sd	ra,8(sp)
    80001634:	00813023          	sd	s0,0(sp)
    80001638:	01010413          	addi	s0,sp,16
    8000163c:	000105b7          	lui	a1,0x10
    80001640:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80001644:	00100513          	li	a0,1
    80001648:	00000097          	auipc	ra,0x0
    8000164c:	e94080e7          	jalr	-364(ra) # 800014dc <_Z41__static_initialization_and_destruction_0ii>
    80001650:	00813083          	ld	ra,8(sp)
    80001654:	00013403          	ld	s0,0(sp)
    80001658:	01010113          	addi	sp,sp,16
    8000165c:	00008067          	ret

0000000080001660 <_Z7createCm>:



};

C* createC(uint64 n){
    80001660:	fe010113          	addi	sp,sp,-32
    80001664:	00113c23          	sd	ra,24(sp)
    80001668:	00813823          	sd	s0,16(sp)
    8000166c:	00913423          	sd	s1,8(sp)
    80001670:	02010413          	addi	s0,sp,32
    80001674:	00050493          	mv	s1,a0
    return new C(n);
    80001678:	00800513          	li	a0,8
    8000167c:	00000097          	auipc	ra,0x0
    80001680:	1f0080e7          	jalr	496(ra) # 8000186c <_Znwm>
        num = n;
    80001684:	00953023          	sd	s1,0(a0)
}
    80001688:	01813083          	ld	ra,24(sp)
    8000168c:	01013403          	ld	s0,16(sp)
    80001690:	00813483          	ld	s1,8(sp)
    80001694:	02010113          	addi	sp,sp,32
    80001698:	00008067          	ret

000000008000169c <main>:

extern void userMain();

int main() {
    8000169c:	fd010113          	addi	sp,sp,-48
    800016a0:	02113423          	sd	ra,40(sp)
    800016a4:	02813023          	sd	s0,32(sp)
    800016a8:	00913c23          	sd	s1,24(sp)
    800016ac:	01213823          	sd	s2,16(sp)
    800016b0:	01313423          	sd	s3,8(sp)
    800016b4:	01413023          	sd	s4,0(sp)
    800016b8:	03010413          	addi	s0,sp,48
public:


    // Get the singleton instance
    static MemoryAllocator &getInstance() {
        static MemoryAllocator instance;
    800016bc:	00006797          	auipc	a5,0x6
    800016c0:	c0c7c783          	lbu	a5,-1012(a5) # 800072c8 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    800016c4:	00079863          	bnez	a5,800016d4 <main+0x38>
    800016c8:	00100793          	li	a5,1
    800016cc:	00006717          	auipc	a4,0x6
    800016d0:	bef70e23          	sb	a5,-1028(a4) # 800072c8 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
//        printString("\n");
//        uint64 end = (uint64)((Block *) HEAP_END_ADDR);
//        printInteger(end);
//        printString("\n");

        free_list = (Block *) HEAP_START_ADDR;
    800016d4:	00006797          	auipc	a5,0x6
    800016d8:	b5c7b783          	ld	a5,-1188(a5) # 80007230 <_GLOBAL_OFFSET_TABLE_+0x18>
    800016dc:	0007b703          	ld	a4,0(a5)
    800016e0:	00006697          	auipc	a3,0x6
    800016e4:	b806b683          	ld	a3,-1152(a3) # 80007260 <_GLOBAL_OFFSET_TABLE_+0x48>
    800016e8:	00e6b023          	sd	a4,0(a3)
        free_list->size = (uint64 *) HEAP_END_ADDR - (uint64 *) HEAP_START_ADDR;
    800016ec:	00006797          	auipc	a5,0x6
    800016f0:	b6c7b783          	ld	a5,-1172(a5) # 80007258 <_GLOBAL_OFFSET_TABLE_+0x40>
    800016f4:	0007b783          	ld	a5,0(a5)
    800016f8:	40e787b3          	sub	a5,a5,a4
    800016fc:	4037d793          	srai	a5,a5,0x3
    80001700:	00f73023          	sd	a5,0(a4)
        free_list->next = nullptr;
    80001704:	0006b783          	ld	a5,0(a3)
    80001708:	0007b423          	sd	zero,8(a5)
        allocated_list = nullptr;
    8000170c:	00006797          	auipc	a5,0x6
    80001710:	b347b783          	ld	a5,-1228(a5) # 80007240 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001714:	0007b023          	sd	zero,0(a5)


    MemoryAllocator::getInstance().init();
    Riscv::w_stvec((uint64) &Riscv::supervisorTrap+1);
    80001718:	00006797          	auipc	a5,0x6
    8000171c:	b207b783          	ld	a5,-1248(a5) # 80007238 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001720:	00178793          	addi	a5,a5,1
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    80001724:	10579073          	csrw	stvec,a5
    PCB* pcb = new PCB(nullptr, nullptr, nullptr);
    80001728:	03000513          	li	a0,48
    8000172c:	00000097          	auipc	ra,0x0
    80001730:	140080e7          	jalr	320(ra) # 8000186c <_Znwm>
    80001734:	00050913          	mv	s2,a0

    static void wrapper();

public:
    PCB(Body body, void *args, uint64 *stack) {
        this->body = body;
    80001738:	00053023          	sd	zero,0(a0)

        this->stack = stack;
    8000173c:	00053423          	sd	zero,8(a0)
        context = {(uint64) &wrapper,
    80001740:	00006a17          	auipc	s4,0x6
    80001744:	ae8a3a03          	ld	s4,-1304(s4) # 80007228 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001748:	01453c23          	sd	s4,24(a0)
    8000174c:	02053023          	sd	zero,32(a0)
                   stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
        };
        this->args = args;
    80001750:	00053823          	sd	zero,16(a0)
    PCB::running=pcb;
    80001754:	00006797          	auipc	a5,0x6
    80001758:	afc7b783          	ld	a5,-1284(a5) # 80007250 <_GLOBAL_OFFSET_TABLE_+0x38>
    8000175c:	00a7b023          	sd	a0,0(a5)
    void setState(State s) { state = s; }
    80001760:	00100793          	li	a5,1
    80001764:	02f52423          	sw	a5,40(a0)
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001768:	00200793          	li	a5,2
    8000176c:	1007a073          	csrs	sstatus,a5
    pcb->setState(PCB::RUNNING);
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);

    switchToUserMode();
    80001770:	00000097          	auipc	ra,0x0
    80001774:	234080e7          	jalr	564(ra) # 800019a4 <_Z16switchToUserModev>
        static MemoryAllocator instance;
    80001778:	00006797          	auipc	a5,0x6
    8000177c:	b507c783          	lbu	a5,-1200(a5) # 800072c8 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80001780:	00079863          	bnez	a5,80001790 <main+0xf4>
    80001784:	00100793          	li	a5,1
    80001788:	00006717          	auipc	a4,0x6
    8000178c:	b4f70023          	sb	a5,-1216(a4) # 800072c8 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>

    uint64* stack = (uint64*)MemoryAllocator::getInstance().allocate(((DEFAULT_STACK_SIZE + 16+ MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE));
    80001790:	04100513          	li	a0,65
    80001794:	00000097          	auipc	ra,0x0
    80001798:	624080e7          	jalr	1572(ra) # 80001db8 <_ZN15MemoryAllocator8allocateEm>
    8000179c:	00050993          	mv	s3,a0
    PCB* usrT = new PCB((void (*)(void *))(userMain), nullptr, stack);
    800017a0:	03000513          	li	a0,48
    800017a4:	00000097          	auipc	ra,0x0
    800017a8:	0c8080e7          	jalr	200(ra) # 8000186c <_Znwm>
    800017ac:	00050493          	mv	s1,a0
        this->body = body;
    800017b0:	00006797          	auipc	a5,0x6
    800017b4:	a707b783          	ld	a5,-1424(a5) # 80007220 <_GLOBAL_OFFSET_TABLE_+0x8>
    800017b8:	00f53023          	sd	a5,0(a0)
        this->stack = stack;
    800017bc:	01353423          	sd	s3,8(a0)
                   stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
    800017c0:	04098063          	beqz	s3,80001800 <main+0x164>
    800017c4:	00008537          	lui	a0,0x8
    800017c8:	00a989b3          	add	s3,s3,a0
        context = {(uint64) &wrapper,
    800017cc:	0144bc23          	sd	s4,24(s1)
    800017d0:	0334b023          	sd	s3,32(s1)
        this->args = args;
    800017d4:	0004b823          	sd	zero,16(s1)
        state = READY;
    800017d8:	0204a423          	sw	zero,40(s1)
    Scheduler::put(usrT);
    800017dc:	00048513          	mv	a0,s1
    800017e0:	00000097          	auipc	ra,0x0
    800017e4:	d80080e7          	jalr	-640(ra) # 80001560 <_ZN9Scheduler3putEP3PCB>
    bool isFinished() const { return state == FINISHED; }
    800017e8:	0284a703          	lw	a4,40(s1)

//    Thread* userThread = new Thread((void (*)(void *))(userMain), nullptr);
//    userThread->start();
    while (!usrT->isFinished()){
    800017ec:	00300793          	li	a5,3
    800017f0:	00f70c63          	beq	a4,a5,80001808 <main+0x16c>
        thread_dispatch();
    800017f4:	00000097          	auipc	ra,0x0
    800017f8:	b88080e7          	jalr	-1144(ra) # 8000137c <_Z15thread_dispatchv>
    while (!usrT->isFinished()){
    800017fc:	fedff06f          	j	800017e8 <main+0x14c>
                   stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
    80001800:	00000993          	li	s3,0
    80001804:	fc9ff06f          	j	800017cc <main+0x130>
    }


    delete usrT;
    80001808:	02048063          	beqz	s1,80001828 <main+0x18c>
    ~PCB() { delete[] stack; }
    8000180c:	0084b503          	ld	a0,8(s1)
    80001810:	00050663          	beqz	a0,8000181c <main+0x180>
    80001814:	00000097          	auipc	ra,0x0
    80001818:	0d0080e7          	jalr	208(ra) # 800018e4 <_ZdaPv>
    8000181c:	00048513          	mv	a0,s1
    80001820:	00000097          	auipc	ra,0x0
    80001824:	09c080e7          	jalr	156(ra) # 800018bc <_ZdlPv>
    delete pcb;
    80001828:	02090063          	beqz	s2,80001848 <main+0x1ac>
    8000182c:	00893503          	ld	a0,8(s2)
    80001830:	00050663          	beqz	a0,8000183c <main+0x1a0>
    80001834:	00000097          	auipc	ra,0x0
    80001838:	0b0080e7          	jalr	176(ra) # 800018e4 <_ZdaPv>
    8000183c:	00090513          	mv	a0,s2
    80001840:	00000097          	auipc	ra,0x0
    80001844:	07c080e7          	jalr	124(ra) # 800018bc <_ZdlPv>


    //printString("Finished\n");

    return 0;
    80001848:	00000513          	li	a0,0
    8000184c:	02813083          	ld	ra,40(sp)
    80001850:	02013403          	ld	s0,32(sp)
    80001854:	01813483          	ld	s1,24(sp)
    80001858:	01013903          	ld	s2,16(sp)
    8000185c:	00813983          	ld	s3,8(sp)
    80001860:	00013a03          	ld	s4,0(sp)
    80001864:	03010113          	addi	sp,sp,48
    80001868:	00008067          	ret

000000008000186c <_Znwm>:
// Created by os on 2/2/23.
//

#include "../h/syscall_cpp.hpp"

void* operator new(size_t size) {
    8000186c:	ff010113          	addi	sp,sp,-16
    80001870:	00113423          	sd	ra,8(sp)
    80001874:	00813023          	sd	s0,0(sp)
    80001878:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    8000187c:	00000097          	auipc	ra,0x0
    80001880:	9f0080e7          	jalr	-1552(ra) # 8000126c <_Z9mem_allocm>
}
    80001884:	00813083          	ld	ra,8(sp)
    80001888:	00013403          	ld	s0,0(sp)
    8000188c:	01010113          	addi	sp,sp,16
    80001890:	00008067          	ret

0000000080001894 <_Znam>:

void* operator new[](size_t size) {
    80001894:	ff010113          	addi	sp,sp,-16
    80001898:	00113423          	sd	ra,8(sp)
    8000189c:	00813023          	sd	s0,0(sp)
    800018a0:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    800018a4:	00000097          	auipc	ra,0x0
    800018a8:	9c8080e7          	jalr	-1592(ra) # 8000126c <_Z9mem_allocm>
}
    800018ac:	00813083          	ld	ra,8(sp)
    800018b0:	00013403          	ld	s0,0(sp)
    800018b4:	01010113          	addi	sp,sp,16
    800018b8:	00008067          	ret

00000000800018bc <_ZdlPv>:

void operator delete(void *ptr) { mem_free(ptr); }
    800018bc:	ff010113          	addi	sp,sp,-16
    800018c0:	00113423          	sd	ra,8(sp)
    800018c4:	00813023          	sd	s0,0(sp)
    800018c8:	01010413          	addi	s0,sp,16
    800018cc:	00000097          	auipc	ra,0x0
    800018d0:	9dc080e7          	jalr	-1572(ra) # 800012a8 <_Z8mem_freePv>
    800018d4:	00813083          	ld	ra,8(sp)
    800018d8:	00013403          	ld	s0,0(sp)
    800018dc:	01010113          	addi	sp,sp,16
    800018e0:	00008067          	ret

00000000800018e4 <_ZdaPv>:

void operator delete[](void *ptr) { mem_free(ptr); }
    800018e4:	ff010113          	addi	sp,sp,-16
    800018e8:	00113423          	sd	ra,8(sp)
    800018ec:	00813023          	sd	s0,0(sp)
    800018f0:	01010413          	addi	s0,sp,16
    800018f4:	00000097          	auipc	ra,0x0
    800018f8:	9b4080e7          	jalr	-1612(ra) # 800012a8 <_Z8mem_freePv>
    800018fc:	00813083          	ld	ra,8(sp)
    80001900:	00013403          	ld	s0,0(sp)
    80001904:	01010113          	addi	sp,sp,16
    80001908:	00008067          	ret

000000008000190c <_ZN6ThreadD1Ev>:

void Thread::dispatch() {
    thread_dispatch();
}

Thread::~Thread() {
    8000190c:	fe010113          	addi	sp,sp,-32
    80001910:	00113c23          	sd	ra,24(sp)
    80001914:	00813823          	sd	s0,16(sp)
    80001918:	00913423          	sd	s1,8(sp)
    8000191c:	02010413          	addi	s0,sp,32
    80001920:	00006797          	auipc	a5,0x6
    80001924:	82078793          	addi	a5,a5,-2016 # 80007140 <_ZTV6Thread+0x10>
    80001928:	00f53023          	sd	a5,0(a0) # 8000 <_entry-0x7fff8000>
    delete (PCB*)myHandle;
    8000192c:	00853483          	ld	s1,8(a0)
    80001930:	02048063          	beqz	s1,80001950 <_ZN6ThreadD1Ev+0x44>
    80001934:	0084b503          	ld	a0,8(s1)
    80001938:	00050663          	beqz	a0,80001944 <_ZN6ThreadD1Ev+0x38>
    8000193c:	00000097          	auipc	ra,0x0
    80001940:	fa8080e7          	jalr	-88(ra) # 800018e4 <_ZdaPv>
    80001944:	00048513          	mv	a0,s1
    80001948:	00000097          	auipc	ra,0x0
    8000194c:	f74080e7          	jalr	-140(ra) # 800018bc <_ZdlPv>
}
    80001950:	01813083          	ld	ra,24(sp)
    80001954:	01013403          	ld	s0,16(sp)
    80001958:	00813483          	ld	s1,8(sp)
    8000195c:	02010113          	addi	sp,sp,32
    80001960:	00008067          	ret

0000000080001964 <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    80001964:	fe010113          	addi	sp,sp,-32
    80001968:	00113c23          	sd	ra,24(sp)
    8000196c:	00813823          	sd	s0,16(sp)
    80001970:	00913423          	sd	s1,8(sp)
    80001974:	02010413          	addi	s0,sp,32
    80001978:	00050493          	mv	s1,a0
}
    8000197c:	00000097          	auipc	ra,0x0
    80001980:	f90080e7          	jalr	-112(ra) # 8000190c <_ZN6ThreadD1Ev>
    80001984:	00048513          	mv	a0,s1
    80001988:	00000097          	auipc	ra,0x0
    8000198c:	f34080e7          	jalr	-204(ra) # 800018bc <_ZdlPv>
    80001990:	01813083          	ld	ra,24(sp)
    80001994:	01013403          	ld	s0,16(sp)
    80001998:	00813483          	ld	s1,8(sp)
    8000199c:	02010113          	addi	sp,sp,32
    800019a0:	00008067          	ret

00000000800019a4 <_Z16switchToUserModev>:
void switchToUserMode(){ toUserMode();}
    800019a4:	ff010113          	addi	sp,sp,-16
    800019a8:	00113423          	sd	ra,8(sp)
    800019ac:	00813023          	sd	s0,0(sp)
    800019b0:	01010413          	addi	s0,sp,16
    800019b4:	00000097          	auipc	ra,0x0
    800019b8:	92c080e7          	jalr	-1748(ra) # 800012e0 <_Z10toUserModev>
    800019bc:	00813083          	ld	ra,8(sp)
    800019c0:	00013403          	ld	s0,0(sp)
    800019c4:	01010113          	addi	sp,sp,16
    800019c8:	00008067          	ret

00000000800019cc <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void*), void* arg) {
    800019cc:	ff010113          	addi	sp,sp,-16
    800019d0:	00113423          	sd	ra,8(sp)
    800019d4:	00813023          	sd	s0,0(sp)
    800019d8:	01010413          	addi	s0,sp,16
    800019dc:	00005797          	auipc	a5,0x5
    800019e0:	76478793          	addi	a5,a5,1892 # 80007140 <_ZTV6Thread+0x10>
    800019e4:	00f53023          	sd	a5,0(a0)
    thread_create(&myHandle, body, arg);
    800019e8:	00850513          	addi	a0,a0,8
    800019ec:	00000097          	auipc	ra,0x0
    800019f0:	918080e7          	jalr	-1768(ra) # 80001304 <_Z13thread_createPP7_threadPFvPvES2_>
    Scheduler::remove();
    800019f4:	00000097          	auipc	ra,0x0
    800019f8:	bd8080e7          	jalr	-1064(ra) # 800015cc <_ZN9Scheduler6removeEv>
}
    800019fc:	00813083          	ld	ra,8(sp)
    80001a00:	00013403          	ld	s0,0(sp)
    80001a04:	01010113          	addi	sp,sp,16
    80001a08:	00008067          	ret

0000000080001a0c <_ZN6ThreadC1Ev>:
Thread::Thread() {
    80001a0c:	fe010113          	addi	sp,sp,-32
    80001a10:	00113c23          	sd	ra,24(sp)
    80001a14:	00813823          	sd	s0,16(sp)
    80001a18:	00913423          	sd	s1,8(sp)
    80001a1c:	01213023          	sd	s2,0(sp)
    80001a20:	02010413          	addi	s0,sp,32
    80001a24:	00005797          	auipc	a5,0x5
    80001a28:	71c78793          	addi	a5,a5,1820 # 80007140 <_ZTV6Thread+0x10>
    80001a2c:	00f53023          	sd	a5,0(a0)
    new Thread(nullptr, nullptr);
    80001a30:	02000513          	li	a0,32
    80001a34:	00000097          	auipc	ra,0x0
    80001a38:	e38080e7          	jalr	-456(ra) # 8000186c <_Znwm>
    80001a3c:	00050493          	mv	s1,a0
    80001a40:	00000613          	li	a2,0
    80001a44:	00000593          	li	a1,0
    80001a48:	00000097          	auipc	ra,0x0
    80001a4c:	f84080e7          	jalr	-124(ra) # 800019cc <_ZN6ThreadC1EPFvPvES0_>
    80001a50:	0200006f          	j	80001a70 <_ZN6ThreadC1Ev+0x64>
    80001a54:	00050913          	mv	s2,a0
    80001a58:	00048513          	mv	a0,s1
    80001a5c:	00000097          	auipc	ra,0x0
    80001a60:	e60080e7          	jalr	-416(ra) # 800018bc <_ZdlPv>
    80001a64:	00090513          	mv	a0,s2
    80001a68:	00007097          	auipc	ra,0x7
    80001a6c:	960080e7          	jalr	-1696(ra) # 800083c8 <_Unwind_Resume>
}
    80001a70:	01813083          	ld	ra,24(sp)
    80001a74:	01013403          	ld	s0,16(sp)
    80001a78:	00813483          	ld	s1,8(sp)
    80001a7c:	00013903          	ld	s2,0(sp)
    80001a80:	02010113          	addi	sp,sp,32
    80001a84:	00008067          	ret

0000000080001a88 <_ZN6Thread5startEv>:
int Thread::start() {
    80001a88:	ff010113          	addi	sp,sp,-16
    80001a8c:	00113423          	sd	ra,8(sp)
    80001a90:	00813023          	sd	s0,0(sp)
    80001a94:	01010413          	addi	s0,sp,16
    Scheduler::put((PCB*)myHandle);
    80001a98:	00853503          	ld	a0,8(a0)
    80001a9c:	00000097          	auipc	ra,0x0
    80001aa0:	ac4080e7          	jalr	-1340(ra) # 80001560 <_ZN9Scheduler3putEP3PCB>
}
    80001aa4:	00000513          	li	a0,0
    80001aa8:	00813083          	ld	ra,8(sp)
    80001aac:	00013403          	ld	s0,0(sp)
    80001ab0:	01010113          	addi	sp,sp,16
    80001ab4:	00008067          	ret

0000000080001ab8 <_ZN6Thread4joinEv>:
void Thread::join() {
    80001ab8:	ff010113          	addi	sp,sp,-16
    80001abc:	00113423          	sd	ra,8(sp)
    80001ac0:	00813023          	sd	s0,0(sp)
    80001ac4:	01010413          	addi	s0,sp,16
    thread_join(myHandle);
    80001ac8:	00853503          	ld	a0,8(a0)
    80001acc:	00000097          	auipc	ra,0x0
    80001ad0:	8d4080e7          	jalr	-1836(ra) # 800013a0 <_Z11thread_joinP7_thread>
}
    80001ad4:	00813083          	ld	ra,8(sp)
    80001ad8:	00013403          	ld	s0,0(sp)
    80001adc:	01010113          	addi	sp,sp,16
    80001ae0:	00008067          	ret

0000000080001ae4 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80001ae4:	ff010113          	addi	sp,sp,-16
    80001ae8:	00113423          	sd	ra,8(sp)
    80001aec:	00813023          	sd	s0,0(sp)
    80001af0:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80001af4:	00000097          	auipc	ra,0x0
    80001af8:	888080e7          	jalr	-1912(ra) # 8000137c <_Z15thread_dispatchv>
}
    80001afc:	00813083          	ld	ra,8(sp)
    80001b00:	00013403          	ld	s0,0(sp)
    80001b04:	01010113          	addi	sp,sp,16
    80001b08:	00008067          	ret

0000000080001b0c <_ZN6Thread3runEv>:


protected:
    Thread();

    virtual void run() {}
    80001b0c:	ff010113          	addi	sp,sp,-16
    80001b10:	00813423          	sd	s0,8(sp)
    80001b14:	01010413          	addi	s0,sp,16
    80001b18:	00813403          	ld	s0,8(sp)
    80001b1c:	01010113          	addi	sp,sp,16
    80001b20:	00008067          	ret

0000000080001b24 <_ZN5Riscv10popSppSpieEv>:
#include "../h/riscv.hpp"



void Riscv::popSppSpie()
{
    80001b24:	ff010113          	addi	sp,sp,-16
    80001b28:	00813423          	sd	s0,8(sp)
    80001b2c:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    80001b30:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    80001b34:	10200073          	sret
}
    80001b38:	00813403          	ld	s0,8(sp)
    80001b3c:	01010113          	addi	sp,sp,16
    80001b40:	00008067          	ret

0000000080001b44 <_ZN5Riscv11trapHandlerEv>:

void Riscv::trapHandler() {
    80001b44:	f8010113          	addi	sp,sp,-128
    80001b48:	06113c23          	sd	ra,120(sp)
    80001b4c:	06813823          	sd	s0,112(sp)
    80001b50:	06913423          	sd	s1,104(sp)
    80001b54:	07213023          	sd	s2,96(sp)
    80001b58:	05313c23          	sd	s3,88(sp)
    80001b5c:	05413823          	sd	s4,80(sp)
    80001b60:	05513423          	sd	s5,72(sp)
    80001b64:	05613023          	sd	s6,64(sp)
    80001b68:	08010413          	addi	s0,sp,128
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80001b6c:	142027f3          	csrr	a5,scause
    80001b70:	faf43423          	sd	a5,-88(s0)
    return scause;
    80001b74:	fa843703          	ld	a4,-88(s0)
    __asm__ volatile ("ld %0, 10*8(fp)" : "=r"(a0));
    80001b78:	05043783          	ld	a5,80(s0)
    80001b7c:	faf43023          	sd	a5,-96(s0)
    return a0;
    80001b80:	fa043783          	ld	a5,-96(s0)
    __asm__ volatile ("ld %0, 11*8(fp)" : "=r"(a1));
    80001b84:	05843683          	ld	a3,88(s0)
    80001b88:	f8d43c23          	sd	a3,-104(s0)
    return a1;
    80001b8c:	f9843483          	ld	s1,-104(s0)
    __asm__ volatile ("ld %0, 12*8(fp)" : "=r"(a2));
    80001b90:	06043683          	ld	a3,96(s0)
    80001b94:	f8d43823          	sd	a3,-112(s0)
    return a2;
    80001b98:	f9043983          	ld	s3,-112(s0)
    __asm__ volatile ("ld %0, 13*8(fp)" : "=r"(a3));
    80001b9c:	06843683          	ld	a3,104(s0)
    80001ba0:	f8d43423          	sd	a3,-120(s0)
    return a3;
    80001ba4:	f8843903          	ld	s2,-120(s0)
    uint64 a3 = r_a3();

    uint64 sepc;
    uint64 sstatus;

    switch (scause) {
    80001ba8:	fff00693          	li	a3,-1
    80001bac:	03f69693          	slli	a3,a3,0x3f
    80001bb0:	00168693          	addi	a3,a3,1
    80001bb4:	1cd70a63          	beq	a4,a3,80001d88 <_ZN5Riscv11trapHandlerEv+0x244>
    80001bb8:	fff00693          	li	a3,-1
    80001bbc:	03f69693          	slli	a3,a3,0x3f
    80001bc0:	00168693          	addi	a3,a3,1
    80001bc4:	04e6ee63          	bltu	a3,a4,80001c20 <_ZN5Riscv11trapHandlerEv+0xdc>
    80001bc8:	ff870713          	addi	a4,a4,-8
    80001bcc:	00100693          	li	a3,1
    80001bd0:	1ce6e063          	bltu	a3,a4,80001d90 <_ZN5Riscv11trapHandlerEv+0x24c>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001bd4:	14102773          	csrr	a4,sepc
    80001bd8:	fae43c23          	sd	a4,-72(s0)
    return sepc;
    80001bdc:	fb843703          	ld	a4,-72(s0)
        case 0x08:
        case 0x09:
            //ecall: software interrupt
            sepc = r_sepc() + 4;
    80001be0:	00470a93          	addi	s5,a4,4
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001be4:	100026f3          	csrr	a3,sstatus
    80001be8:	fad43823          	sd	a3,-80(s0)
    return sstatus;
    80001bec:	fb043a03          	ld	s4,-80(s0)
            sstatus = r_sstatus();
            void* mem;
            uint64* stack;
            PCB*** handleAddr;
            switch(a0){
    80001bf0:	01300693          	li	a3,19
    80001bf4:	04f6c463          	blt	a3,a5,80001c3c <_ZN5Riscv11trapHandlerEv+0xf8>
    80001bf8:	08f05a63          	blez	a5,80001c8c <_ZN5Riscv11trapHandlerEv+0x148>
    80001bfc:	01300713          	li	a4,19
    80001c00:	08f76663          	bltu	a4,a5,80001c8c <_ZN5Riscv11trapHandlerEv+0x148>
    80001c04:	00279793          	slli	a5,a5,0x2
    80001c08:	00004717          	auipc	a4,0x4
    80001c0c:	41870713          	addi	a4,a4,1048 # 80006020 <CONSOLE_STATUS+0x10>
    80001c10:	00e787b3          	add	a5,a5,a4
    80001c14:	0007a783          	lw	a5,0(a5)
    80001c18:	00e787b3          	add	a5,a5,a4
    80001c1c:	00078067          	jr	a5
    switch (scause) {
    80001c20:	fff00793          	li	a5,-1
    80001c24:	03f79793          	slli	a5,a5,0x3f
    80001c28:	00978793          	addi	a5,a5,9
    80001c2c:	16f71263          	bne	a4,a5,80001d90 <_ZN5Riscv11trapHandlerEv+0x24c>
            //timer interrupt
            mc_sip(SIP_SSIP);
            break;
        case 0x8000000000000009UL:
            //external hardware interrupt
            console_handler();
    80001c30:	00004097          	auipc	ra,0x4
    80001c34:	d90080e7          	jalr	-624(ra) # 800059c0 <console_handler>
            break;
    80001c38:	1580006f          	j	80001d90 <_ZN5Riscv11trapHandlerEv+0x24c>
    80001c3c:	05100693          	li	a3,81
    80001c40:	04d79663          	bne	a5,a3,80001c8c <_ZN5Riscv11trapHandlerEv+0x148>
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001c44:	100a1073          	csrw	sstatus,s4
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80001c48:	10000793          	li	a5,256
    80001c4c:	1007b073          	csrc	sstatus,a5
                    w_sepc(sepc+4);
    80001c50:	00870713          	addi	a4,a4,8
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001c54:	14171073          	csrw	sepc,a4
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80001c58:	00200793          	li	a5,2
    80001c5c:	1447b073          	csrc	sip,a5
}
    80001c60:	1300006f          	j	80001d90 <_ZN5Riscv11trapHandlerEv+0x24c>
    80001c64:	00005797          	auipc	a5,0x5
    80001c68:	6647c783          	lbu	a5,1636(a5) # 800072c8 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80001c6c:	00079863          	bnez	a5,80001c7c <_ZN5Riscv11trapHandlerEv+0x138>
    80001c70:	00100793          	li	a5,1
    80001c74:	00005717          	auipc	a4,0x5
    80001c78:	64f70a23          	sb	a5,1620(a4) # 800072c8 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
                    mem = MemoryAllocator::getInstance().allocate((size_t) a1);
    80001c7c:	00048513          	mv	a0,s1
    80001c80:	00000097          	auipc	ra,0x0
    80001c84:	138080e7          	jalr	312(ra) # 80001db8 <_ZN15MemoryAllocator8allocateEm>
}

inline void Riscv::push_a0(long a0) {
    __asm__ volatile ("sd %0, 10*8(fp)" : : "r"(a0));
    80001c88:	04a43823          	sd	a0,80(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001c8c:	100a1073          	csrw	sstatus,s4
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001c90:	141a9073          	csrw	sepc,s5
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80001c94:	00200793          	li	a5,2
    80001c98:	1447b073          	csrc	sip,a5
}
    80001c9c:	0f40006f          	j	80001d90 <_ZN5Riscv11trapHandlerEv+0x24c>
    80001ca0:	00005797          	auipc	a5,0x5
    80001ca4:	6287c783          	lbu	a5,1576(a5) # 800072c8 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80001ca8:	00079863          	bnez	a5,80001cb8 <_ZN5Riscv11trapHandlerEv+0x174>
    80001cac:	00100793          	li	a5,1
    80001cb0:	00005717          	auipc	a4,0x5
    80001cb4:	60f70c23          	sb	a5,1560(a4) # 800072c8 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
                    push_a0(MemoryAllocator::getInstance().deallocate((void *)a1));
    80001cb8:	00048513          	mv	a0,s1
    80001cbc:	00000097          	auipc	ra,0x0
    80001cc0:	1e4080e7          	jalr	484(ra) # 80001ea0 <_ZN15MemoryAllocator10deallocateEPv>
    __asm__ volatile ("sd %0, 10*8(fp)" : : "r"(a0));
    80001cc4:	04a43823          	sd	a0,80(s0)
}
    80001cc8:	fc5ff06f          	j	80001c8c <_ZN5Riscv11trapHandlerEv+0x148>
                    if((uint64*)a1!= nullptr) stack = (uint64*)MemoryAllocator::getInstance().allocate(((DEFAULT_STACK_SIZE + 16+ MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE));
    80001ccc:	08048863          	beqz	s1,80001d5c <_ZN5Riscv11trapHandlerEv+0x218>
    80001cd0:	00005797          	auipc	a5,0x5
    80001cd4:	5f87c783          	lbu	a5,1528(a5) # 800072c8 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80001cd8:	00079863          	bnez	a5,80001ce8 <_ZN5Riscv11trapHandlerEv+0x1a4>
    80001cdc:	00100793          	li	a5,1
    80001ce0:	00005717          	auipc	a4,0x5
    80001ce4:	5ef70423          	sb	a5,1512(a4) # 800072c8 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80001ce8:	04100513          	li	a0,65
    80001cec:	00000097          	auipc	ra,0x0
    80001cf0:	0cc080e7          	jalr	204(ra) # 80001db8 <_ZN15MemoryAllocator8allocateEm>
    80001cf4:	00050b13          	mv	s6,a0
                    *(*handleAddr) = new PCB((PCB::Body)a1, (void*)a2, stack);
    80001cf8:	03000513          	li	a0,48
    80001cfc:	00000097          	auipc	ra,0x0
    80001d00:	b70080e7          	jalr	-1168(ra) # 8000186c <_Znwm>
    80001d04:	00048793          	mv	a5,s1
        this->body = body;
    80001d08:	00953023          	sd	s1,0(a0)
        this->stack = stack;
    80001d0c:	01653423          	sd	s6,8(a0)
                   stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
    80001d10:	040b0a63          	beqz	s6,80001d64 <_ZN5Riscv11trapHandlerEv+0x220>
    80001d14:	00008737          	lui	a4,0x8
    80001d18:	00eb0b33          	add	s6,s6,a4
        context = {(uint64) &wrapper,
    80001d1c:	00005717          	auipc	a4,0x5
    80001d20:	50c73703          	ld	a4,1292(a4) # 80007228 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001d24:	00e53c23          	sd	a4,24(a0)
    80001d28:	03653023          	sd	s6,32(a0)
        this->args = args;
    80001d2c:	01353823          	sd	s3,16(a0)
        state = READY;
    80001d30:	02052423          	sw	zero,40(a0)
    80001d34:	00093703          	ld	a4,0(s2)
    80001d38:	00a73023          	sd	a0,0(a4)
                    if((PCB::Body)a1)Scheduler::put(*(*handleAddr));
    80001d3c:	00078a63          	beqz	a5,80001d50 <_ZN5Riscv11trapHandlerEv+0x20c>
    80001d40:	00093783          	ld	a5,0(s2)
    80001d44:	0007b503          	ld	a0,0(a5)
    80001d48:	00000097          	auipc	ra,0x0
    80001d4c:	818080e7          	jalr	-2024(ra) # 80001560 <_ZN9Scheduler3putEP3PCB>
    __asm__ volatile ("sd %0, 10*8(fp)" : : "r"(a0));
    80001d50:	00000793          	li	a5,0
    80001d54:	04f43823          	sd	a5,80(s0)
}
    80001d58:	f35ff06f          	j	80001c8c <_ZN5Riscv11trapHandlerEv+0x148>
                    else stack = nullptr;
    80001d5c:	00000b13          	li	s6,0
    80001d60:	f99ff06f          	j	80001cf8 <_ZN5Riscv11trapHandlerEv+0x1b4>
                   stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
    80001d64:	00000b13          	li	s6,0
    80001d68:	fb5ff06f          	j	80001d1c <_ZN5Riscv11trapHandlerEv+0x1d8>
                    push_a0(PCB::exit());
    80001d6c:	fffff097          	auipc	ra,0xfffff
    80001d70:	6dc080e7          	jalr	1756(ra) # 80001448 <_ZN3PCB4exitEv>
    __asm__ volatile ("sd %0, 10*8(fp)" : : "r"(a0));
    80001d74:	04a43823          	sd	a0,80(s0)
}
    80001d78:	f15ff06f          	j	80001c8c <_ZN5Riscv11trapHandlerEv+0x148>
                    PCB::dispatch();
    80001d7c:	fffff097          	auipc	ra,0xfffff
    80001d80:	644080e7          	jalr	1604(ra) # 800013c0 <_ZN3PCB8dispatchEv>
                    break;
    80001d84:	f09ff06f          	j	80001c8c <_ZN5Riscv11trapHandlerEv+0x148>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80001d88:	00200793          	li	a5,2
    80001d8c:	1447b073          	csrc	sip,a5
        default:
            return;
            //printString("ERROR: Unexpected interrupt!");
    }

    80001d90:	07813083          	ld	ra,120(sp)
    80001d94:	07013403          	ld	s0,112(sp)
    80001d98:	06813483          	ld	s1,104(sp)
    80001d9c:	06013903          	ld	s2,96(sp)
    80001da0:	05813983          	ld	s3,88(sp)
    80001da4:	05013a03          	ld	s4,80(sp)
    80001da8:	04813a83          	ld	s5,72(sp)
    80001dac:	04013b03          	ld	s6,64(sp)
    80001db0:	08010113          	addi	sp,sp,128
    80001db4:	00008067          	ret

0000000080001db8 <_ZN15MemoryAllocator8allocateEm>:
Block *MemoryAllocator::free_list = nullptr;
Block *MemoryAllocator::allocated_list = nullptr;


// Allocate memory
void *MemoryAllocator::allocate(size_t size) {
    80001db8:	ff010113          	addi	sp,sp,-16
    80001dbc:	00813423          	sd	s0,8(sp)
    80001dc0:	01010413          	addi	s0,sp,16
    80001dc4:	00050613          	mv	a2,a0
    size_t sizeToAllocate = size * MEM_BLOCK_SIZE;
    80001dc8:	00651713          	slli	a4,a0,0x6

    Block *prev = nullptr;
    Block *current = free_list;
    80001dcc:	00005517          	auipc	a0,0x5
    80001dd0:	50453503          	ld	a0,1284(a0) # 800072d0 <_ZN15MemoryAllocator9free_listE>
    Block *prev = nullptr;
    80001dd4:	00000693          	li	a3,0

    // Find a free block that is large enough
    while (current != nullptr) {
    80001dd8:	06050e63          	beqz	a0,80001e54 <_ZN15MemoryAllocator8allocateEm+0x9c>

        if (current->size >= sizeToAllocate) {
    80001ddc:	00053783          	ld	a5,0(a0)
    80001de0:	00e7f863          	bgeu	a5,a4,80001df0 <_ZN15MemoryAllocator8allocateEm+0x38>
            // Return the memory

            void *userPtr = (Block *) ((uint64 *) current + sizeof(Block));
            return userPtr;
        }
        prev = current;
    80001de4:	00050693          	mv	a3,a0
        current = current->next;
    80001de8:	00853503          	ld	a0,8(a0)
    while (current != nullptr) {
    80001dec:	fedff06f          	j	80001dd8 <_ZN15MemoryAllocator8allocateEm+0x20>
            if (prev == nullptr) {
    80001df0:	06068863          	beqz	a3,80001e60 <_ZN15MemoryAllocator8allocateEm+0xa8>
                prev->next = current->next;
    80001df4:	00853783          	ld	a5,8(a0)
    80001df8:	00f6b423          	sd	a5,8(a3)
            if (current->size - sizeToAllocate >= MEM_BLOCK_SIZE) {
    80001dfc:	00053783          	ld	a5,0(a0)
    80001e00:	40e787b3          	sub	a5,a5,a4
    80001e04:	03f00593          	li	a1,63
    80001e08:	02f5f863          	bgeu	a1,a5,80001e38 <_ZN15MemoryAllocator8allocateEm+0x80>
                Block *newBlock = (Block *) ((uint64 *) current + sizeToAllocate);
    80001e0c:	00961613          	slli	a2,a2,0x9
    80001e10:	00c50633          	add	a2,a0,a2
                newBlock->size = current->size - sizeToAllocate;
    80001e14:	00f63023          	sd	a5,0(a2)
                current->size = sizeToAllocate;
    80001e18:	00e53023          	sd	a4,0(a0)
                if (!free_list) {
    80001e1c:	00005797          	auipc	a5,0x5
    80001e20:	4b47b783          	ld	a5,1204(a5) # 800072d0 <_ZN15MemoryAllocator9free_listE>
    80001e24:	04078663          	beqz	a5,80001e70 <_ZN15MemoryAllocator8allocateEm+0xb8>
                } else if (!prev) {
    80001e28:	04068c63          	beqz	a3,80001e80 <_ZN15MemoryAllocator8allocateEm+0xc8>
                    prev->next = newBlock;
    80001e2c:	00c6b423          	sd	a2,8(a3)
                    newBlock->next = current->next;
    80001e30:	00853783          	ld	a5,8(a0)
    80001e34:	00f63423          	sd	a5,8(a2)
            if (!allocated_list) {
    80001e38:	00005797          	auipc	a5,0x5
    80001e3c:	4a07b783          	ld	a5,1184(a5) # 800072d8 <_ZN15MemoryAllocator14allocated_listE>
    80001e40:	04078863          	beqz	a5,80001e90 <_ZN15MemoryAllocator8allocateEm+0xd8>
                current->next = allocated_list;
    80001e44:	00f53423          	sd	a5,8(a0)
                allocated_list = current;
    80001e48:	00005797          	auipc	a5,0x5
    80001e4c:	48a7b823          	sd	a0,1168(a5) # 800072d8 <_ZN15MemoryAllocator14allocated_listE>
            void *userPtr = (Block *) ((uint64 *) current + sizeof(Block));
    80001e50:	08050513          	addi	a0,a0,128
    }

    // No block was found
    return nullptr;
}
    80001e54:	00813403          	ld	s0,8(sp)
    80001e58:	01010113          	addi	sp,sp,16
    80001e5c:	00008067          	ret
                free_list = current->next;
    80001e60:	00853783          	ld	a5,8(a0)
    80001e64:	00005597          	auipc	a1,0x5
    80001e68:	46f5b623          	sd	a5,1132(a1) # 800072d0 <_ZN15MemoryAllocator9free_listE>
    80001e6c:	f91ff06f          	j	80001dfc <_ZN15MemoryAllocator8allocateEm+0x44>
                    free_list = newBlock;
    80001e70:	00005797          	auipc	a5,0x5
    80001e74:	46c7b023          	sd	a2,1120(a5) # 800072d0 <_ZN15MemoryAllocator9free_listE>
                    newBlock->next = nullptr;
    80001e78:	00063423          	sd	zero,8(a2)
    80001e7c:	fbdff06f          	j	80001e38 <_ZN15MemoryAllocator8allocateEm+0x80>
                    newBlock->next = free_list;
    80001e80:	00f63423          	sd	a5,8(a2)
                    free_list = newBlock;
    80001e84:	00005797          	auipc	a5,0x5
    80001e88:	44c7b623          	sd	a2,1100(a5) # 800072d0 <_ZN15MemoryAllocator9free_listE>
    80001e8c:	fadff06f          	j	80001e38 <_ZN15MemoryAllocator8allocateEm+0x80>
                allocated_list = current;
    80001e90:	00005797          	auipc	a5,0x5
    80001e94:	44a7b423          	sd	a0,1096(a5) # 800072d8 <_ZN15MemoryAllocator14allocated_listE>
                allocated_list->next = nullptr;
    80001e98:	00053423          	sd	zero,8(a0)
    80001e9c:	fb5ff06f          	j	80001e50 <_ZN15MemoryAllocator8allocateEm+0x98>

0000000080001ea0 <_ZN15MemoryAllocator10deallocateEPv>:

// Deallocate memory
int MemoryAllocator::deallocate(void *ptr) {
    80001ea0:	ff010113          	addi	sp,sp,-16
    80001ea4:	00813423          	sd	s0,8(sp)
    80001ea8:	01010413          	addi	s0,sp,16
    Block *block = (Block *) ((uint64 *) ptr - sizeof(Block));
    80001eac:	f8050713          	addi	a4,a0,-128
    Block *tmpPrev = nullptr;
    Block *tmp = allocated_list;
    80001eb0:	00005797          	auipc	a5,0x5
    80001eb4:	4287b783          	ld	a5,1064(a5) # 800072d8 <_ZN15MemoryAllocator14allocated_listE>
    Block *tmpPrev = nullptr;
    80001eb8:	00000693          	li	a3,0
    uint8 flag = 0;

    //Check if the block given was previously allocated
    while (tmp) {
    80001ebc:	00078a63          	beqz	a5,80001ed0 <_ZN15MemoryAllocator10deallocateEPv+0x30>
        if (tmp == block) {
    80001ec0:	04e78263          	beq	a5,a4,80001f04 <_ZN15MemoryAllocator10deallocateEPv+0x64>
            flag = 1;
            break;
        }
        tmpPrev = tmp;
    80001ec4:	00078693          	mv	a3,a5
        tmp = tmp->next;
    80001ec8:	0087b783          	ld	a5,8(a5)
    while (tmp) {
    80001ecc:	ff1ff06f          	j	80001ebc <_ZN15MemoryAllocator10deallocateEPv+0x1c>
    uint8 flag = 0;
    80001ed0:	00000613          	li	a2,0
    }
    if (flag == 0) return -1;
    80001ed4:	0e060263          	beqz	a2,80001fb8 <_ZN15MemoryAllocator10deallocateEPv+0x118>

    // Found a block, remove it from the allocated list
    if (tmpPrev != nullptr) {
    80001ed8:	02068a63          	beqz	a3,80001f0c <_ZN15MemoryAllocator10deallocateEPv+0x6c>
        tmpPrev->next = tmp->next;
    80001edc:	0087b783          	ld	a5,8(a5)
    80001ee0:	00f6b423          	sd	a5,8(a3)
        allocated_list = tmp->next;
    }


    Block *prev = nullptr;
    Block *current = free_list;
    80001ee4:	00005797          	auipc	a5,0x5
    80001ee8:	3ec7b783          	ld	a5,1004(a5) # 800072d0 <_ZN15MemoryAllocator9free_listE>
    Block *prev = nullptr;
    80001eec:	00000693          	li	a3,0

    // Add it to the free_list
    while (current != nullptr) {
    80001ef0:	02078c63          	beqz	a5,80001f28 <_ZN15MemoryAllocator10deallocateEPv+0x88>
        if ((uint64 *) block < (uint64 *) current) {
    80001ef4:	02f76463          	bltu	a4,a5,80001f1c <_ZN15MemoryAllocator10deallocateEPv+0x7c>
            } else {
                free_list = block;
            }
            break;
        }
        prev = current;
    80001ef8:	00078693          	mv	a3,a5
        current = current->next;
    80001efc:	0087b783          	ld	a5,8(a5)
    while (current != nullptr) {
    80001f00:	ff1ff06f          	j	80001ef0 <_ZN15MemoryAllocator10deallocateEPv+0x50>
            flag = 1;
    80001f04:	00100613          	li	a2,1
    80001f08:	fcdff06f          	j	80001ed4 <_ZN15MemoryAllocator10deallocateEPv+0x34>
        allocated_list = tmp->next;
    80001f0c:	0087b783          	ld	a5,8(a5)
    80001f10:	00005697          	auipc	a3,0x5
    80001f14:	3cf6b423          	sd	a5,968(a3) # 800072d8 <_ZN15MemoryAllocator14allocated_listE>
    80001f18:	fcdff06f          	j	80001ee4 <_ZN15MemoryAllocator10deallocateEPv+0x44>
            block->next = current;
    80001f1c:	f8f53423          	sd	a5,-120(a0)
            if (prev != nullptr) {
    80001f20:	04068463          	beqz	a3,80001f68 <_ZN15MemoryAllocator10deallocateEPv+0xc8>
                prev->next = block;
    80001f24:	00e6b423          	sd	a4,8(a3)
    }
    if (current == nullptr) {
    80001f28:	04078663          	beqz	a5,80001f74 <_ZN15MemoryAllocator10deallocateEPv+0xd4>
        //current = block;
        block->next = nullptr;
    }

    //Merge it with neighbour blocks if possible
    if (prev != nullptr) {
    80001f2c:	00068a63          	beqz	a3,80001f40 <_ZN15MemoryAllocator10deallocateEPv+0xa0>
        if ((uint64 *) prev + prev->size == (uint64 *) block) {
    80001f30:	0006b603          	ld	a2,0(a3)
    80001f34:	00361793          	slli	a5,a2,0x3
    80001f38:	00f687b3          	add	a5,a3,a5
    80001f3c:	04e78263          	beq	a5,a4,80001f80 <_ZN15MemoryAllocator10deallocateEPv+0xe0>
            prev->size = prev->size + block->size;
            prev->next = block->next;
            block = prev;
        }
    }
    if (block->next != nullptr) {
    80001f40:	00873783          	ld	a5,8(a4)
    80001f44:	06078e63          	beqz	a5,80001fc0 <_ZN15MemoryAllocator10deallocateEPv+0x120>
        if ((uint64 *) block + block->size == (uint64 *) block->next) {
    80001f48:	00073603          	ld	a2,0(a4)
    80001f4c:	00361693          	slli	a3,a2,0x3
    80001f50:	00d706b3          	add	a3,a4,a3
    80001f54:	04d78463          	beq	a5,a3,80001f9c <_ZN15MemoryAllocator10deallocateEPv+0xfc>
            block->size += block->next->size;
            block->next = block->next->next;
        }
    }

    return 0;
    80001f58:	00000513          	li	a0,0

}
    80001f5c:	00813403          	ld	s0,8(sp)
    80001f60:	01010113          	addi	sp,sp,16
    80001f64:	00008067          	ret
                free_list = block;
    80001f68:	00005617          	auipc	a2,0x5
    80001f6c:	36e63423          	sd	a4,872(a2) # 800072d0 <_ZN15MemoryAllocator9free_listE>
    80001f70:	fb9ff06f          	j	80001f28 <_ZN15MemoryAllocator10deallocateEPv+0x88>
        prev->next = block;
    80001f74:	00e6b423          	sd	a4,8(a3)
        block->next = nullptr;
    80001f78:	f8053423          	sd	zero,-120(a0)
    80001f7c:	fb1ff06f          	j	80001f2c <_ZN15MemoryAllocator10deallocateEPv+0x8c>
            prev->size = prev->size + block->size;
    80001f80:	f8053783          	ld	a5,-128(a0)
    80001f84:	00f60633          	add	a2,a2,a5
    80001f88:	00c6b023          	sd	a2,0(a3)
            prev->next = block->next;
    80001f8c:	f8853783          	ld	a5,-120(a0)
    80001f90:	00f6b423          	sd	a5,8(a3)
            block = prev;
    80001f94:	00068713          	mv	a4,a3
    80001f98:	fa9ff06f          	j	80001f40 <_ZN15MemoryAllocator10deallocateEPv+0xa0>
            block->size += block->next->size;
    80001f9c:	0007b683          	ld	a3,0(a5)
    80001fa0:	00d60633          	add	a2,a2,a3
    80001fa4:	00c73023          	sd	a2,0(a4)
            block->next = block->next->next;
    80001fa8:	0087b783          	ld	a5,8(a5)
    80001fac:	00f73423          	sd	a5,8(a4)
    return 0;
    80001fb0:	00000513          	li	a0,0
    80001fb4:	fa9ff06f          	j	80001f5c <_ZN15MemoryAllocator10deallocateEPv+0xbc>
    if (flag == 0) return -1;
    80001fb8:	fff00513          	li	a0,-1
    80001fbc:	fa1ff06f          	j	80001f5c <_ZN15MemoryAllocator10deallocateEPv+0xbc>
    return 0;
    80001fc0:	00000513          	li	a0,0
    80001fc4:	f99ff06f          	j	80001f5c <_ZN15MemoryAllocator10deallocateEPv+0xbc>

0000000080001fc8 <_Z4putcc>:
//
//    while (--i >= 0)
//        __putc(buf[i]);
//}

void putc(char c){
    80001fc8:	ff010113          	addi	sp,sp,-16
    80001fcc:	00113423          	sd	ra,8(sp)
    80001fd0:	00813023          	sd	s0,0(sp)
    80001fd4:	01010413          	addi	s0,sp,16
    __putc(c);
    80001fd8:	00004097          	auipc	ra,0x4
    80001fdc:	974080e7          	jalr	-1676(ra) # 8000594c <__putc>
}
    80001fe0:	00813083          	ld	ra,8(sp)
    80001fe4:	00013403          	ld	s0,0(sp)
    80001fe8:	01010113          	addi	sp,sp,16
    80001fec:	00008067          	ret

0000000080001ff0 <_Z4getcv>:

char getc(){
    80001ff0:	ff010113          	addi	sp,sp,-16
    80001ff4:	00113423          	sd	ra,8(sp)
    80001ff8:	00813023          	sd	s0,0(sp)
    80001ffc:	01010413          	addi	s0,sp,16
    return __getc();
    80002000:	00004097          	auipc	ra,0x4
    80002004:	988080e7          	jalr	-1656(ra) # 80005988 <__getc>
    80002008:	00813083          	ld	ra,8(sp)
    8000200c:	00013403          	ld	s0,0(sp)
    80002010:	01010113          	addi	sp,sp,16
    80002014:	00008067          	ret

0000000080002018 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80002018:	fe010113          	addi	sp,sp,-32
    8000201c:	00113c23          	sd	ra,24(sp)
    80002020:	00813823          	sd	s0,16(sp)
    80002024:	00913423          	sd	s1,8(sp)
    80002028:	01213023          	sd	s2,0(sp)
    8000202c:	02010413          	addi	s0,sp,32
    80002030:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80002034:	00100793          	li	a5,1
    80002038:	02a7f863          	bgeu	a5,a0,80002068 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    8000203c:	00a00793          	li	a5,10
    80002040:	02f577b3          	remu	a5,a0,a5
    80002044:	02078e63          	beqz	a5,80002080 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80002048:	fff48513          	addi	a0,s1,-1
    8000204c:	00000097          	auipc	ra,0x0
    80002050:	fcc080e7          	jalr	-52(ra) # 80002018 <_ZL9fibonaccim>
    80002054:	00050913          	mv	s2,a0
    80002058:	ffe48513          	addi	a0,s1,-2
    8000205c:	00000097          	auipc	ra,0x0
    80002060:	fbc080e7          	jalr	-68(ra) # 80002018 <_ZL9fibonaccim>
    80002064:	00a90533          	add	a0,s2,a0
}
    80002068:	01813083          	ld	ra,24(sp)
    8000206c:	01013403          	ld	s0,16(sp)
    80002070:	00813483          	ld	s1,8(sp)
    80002074:	00013903          	ld	s2,0(sp)
    80002078:	02010113          	addi	sp,sp,32
    8000207c:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80002080:	fffff097          	auipc	ra,0xfffff
    80002084:	2fc080e7          	jalr	764(ra) # 8000137c <_Z15thread_dispatchv>
    80002088:	fc1ff06f          	j	80002048 <_ZL9fibonaccim+0x30>

000000008000208c <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    8000208c:	fe010113          	addi	sp,sp,-32
    80002090:	00113c23          	sd	ra,24(sp)
    80002094:	00813823          	sd	s0,16(sp)
    80002098:	00913423          	sd	s1,8(sp)
    8000209c:	01213023          	sd	s2,0(sp)
    800020a0:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800020a4:	00000913          	li	s2,0
    800020a8:	0380006f          	j	800020e0 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    800020ac:	fffff097          	auipc	ra,0xfffff
    800020b0:	2d0080e7          	jalr	720(ra) # 8000137c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800020b4:	00148493          	addi	s1,s1,1
    800020b8:	000027b7          	lui	a5,0x2
    800020bc:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800020c0:	0097ee63          	bltu	a5,s1,800020dc <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800020c4:	00000713          	li	a4,0
    800020c8:	000077b7          	lui	a5,0x7
    800020cc:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800020d0:	fce7eee3          	bltu	a5,a4,800020ac <_ZN7WorkerA11workerBodyAEPv+0x20>
    800020d4:	00170713          	addi	a4,a4,1
    800020d8:	ff1ff06f          	j	800020c8 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    800020dc:	00190913          	addi	s2,s2,1
    800020e0:	00900793          	li	a5,9
    800020e4:	0527e063          	bltu	a5,s2,80002124 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    800020e8:	00004517          	auipc	a0,0x4
    800020ec:	f8850513          	addi	a0,a0,-120 # 80006070 <CONSOLE_STATUS+0x60>
    800020f0:	00001097          	auipc	ra,0x1
    800020f4:	e9c080e7          	jalr	-356(ra) # 80002f8c <_Z11printStringPKc>
    800020f8:	00000613          	li	a2,0
    800020fc:	00a00593          	li	a1,10
    80002100:	0009051b          	sext.w	a0,s2
    80002104:	00001097          	auipc	ra,0x1
    80002108:	038080e7          	jalr	56(ra) # 8000313c <_Z8printIntiii>
    8000210c:	00004517          	auipc	a0,0x4
    80002110:	1dc50513          	addi	a0,a0,476 # 800062e8 <CONSOLE_STATUS+0x2d8>
    80002114:	00001097          	auipc	ra,0x1
    80002118:	e78080e7          	jalr	-392(ra) # 80002f8c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000211c:	00000493          	li	s1,0
    80002120:	f99ff06f          	j	800020b8 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80002124:	00004517          	auipc	a0,0x4
    80002128:	f5450513          	addi	a0,a0,-172 # 80006078 <CONSOLE_STATUS+0x68>
    8000212c:	00001097          	auipc	ra,0x1
    80002130:	e60080e7          	jalr	-416(ra) # 80002f8c <_Z11printStringPKc>
    finishedA = true;
    80002134:	00100793          	li	a5,1
    80002138:	00005717          	auipc	a4,0x5
    8000213c:	1af70423          	sb	a5,424(a4) # 800072e0 <_ZL9finishedA>
}
    80002140:	01813083          	ld	ra,24(sp)
    80002144:	01013403          	ld	s0,16(sp)
    80002148:	00813483          	ld	s1,8(sp)
    8000214c:	00013903          	ld	s2,0(sp)
    80002150:	02010113          	addi	sp,sp,32
    80002154:	00008067          	ret

0000000080002158 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80002158:	fe010113          	addi	sp,sp,-32
    8000215c:	00113c23          	sd	ra,24(sp)
    80002160:	00813823          	sd	s0,16(sp)
    80002164:	00913423          	sd	s1,8(sp)
    80002168:	01213023          	sd	s2,0(sp)
    8000216c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80002170:	00000913          	li	s2,0
    80002174:	0380006f          	j	800021ac <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80002178:	fffff097          	auipc	ra,0xfffff
    8000217c:	204080e7          	jalr	516(ra) # 8000137c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80002180:	00148493          	addi	s1,s1,1
    80002184:	000027b7          	lui	a5,0x2
    80002188:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000218c:	0097ee63          	bltu	a5,s1,800021a8 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80002190:	00000713          	li	a4,0
    80002194:	000077b7          	lui	a5,0x7
    80002198:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000219c:	fce7eee3          	bltu	a5,a4,80002178 <_ZN7WorkerB11workerBodyBEPv+0x20>
    800021a0:	00170713          	addi	a4,a4,1
    800021a4:	ff1ff06f          	j	80002194 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    800021a8:	00190913          	addi	s2,s2,1
    800021ac:	00f00793          	li	a5,15
    800021b0:	0527e063          	bltu	a5,s2,800021f0 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    800021b4:	00004517          	auipc	a0,0x4
    800021b8:	ed450513          	addi	a0,a0,-300 # 80006088 <CONSOLE_STATUS+0x78>
    800021bc:	00001097          	auipc	ra,0x1
    800021c0:	dd0080e7          	jalr	-560(ra) # 80002f8c <_Z11printStringPKc>
    800021c4:	00000613          	li	a2,0
    800021c8:	00a00593          	li	a1,10
    800021cc:	0009051b          	sext.w	a0,s2
    800021d0:	00001097          	auipc	ra,0x1
    800021d4:	f6c080e7          	jalr	-148(ra) # 8000313c <_Z8printIntiii>
    800021d8:	00004517          	auipc	a0,0x4
    800021dc:	11050513          	addi	a0,a0,272 # 800062e8 <CONSOLE_STATUS+0x2d8>
    800021e0:	00001097          	auipc	ra,0x1
    800021e4:	dac080e7          	jalr	-596(ra) # 80002f8c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800021e8:	00000493          	li	s1,0
    800021ec:	f99ff06f          	j	80002184 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    800021f0:	00004517          	auipc	a0,0x4
    800021f4:	ea050513          	addi	a0,a0,-352 # 80006090 <CONSOLE_STATUS+0x80>
    800021f8:	00001097          	auipc	ra,0x1
    800021fc:	d94080e7          	jalr	-620(ra) # 80002f8c <_Z11printStringPKc>
    finishedB = true;
    80002200:	00100793          	li	a5,1
    80002204:	00005717          	auipc	a4,0x5
    80002208:	0cf70ea3          	sb	a5,221(a4) # 800072e1 <_ZL9finishedB>
    thread_dispatch();
    8000220c:	fffff097          	auipc	ra,0xfffff
    80002210:	170080e7          	jalr	368(ra) # 8000137c <_Z15thread_dispatchv>
}
    80002214:	01813083          	ld	ra,24(sp)
    80002218:	01013403          	ld	s0,16(sp)
    8000221c:	00813483          	ld	s1,8(sp)
    80002220:	00013903          	ld	s2,0(sp)
    80002224:	02010113          	addi	sp,sp,32
    80002228:	00008067          	ret

000000008000222c <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    8000222c:	fe010113          	addi	sp,sp,-32
    80002230:	00113c23          	sd	ra,24(sp)
    80002234:	00813823          	sd	s0,16(sp)
    80002238:	00913423          	sd	s1,8(sp)
    8000223c:	01213023          	sd	s2,0(sp)
    80002240:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80002244:	00000493          	li	s1,0
    80002248:	0400006f          	j	80002288 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    8000224c:	00004517          	auipc	a0,0x4
    80002250:	e5450513          	addi	a0,a0,-428 # 800060a0 <CONSOLE_STATUS+0x90>
    80002254:	00001097          	auipc	ra,0x1
    80002258:	d38080e7          	jalr	-712(ra) # 80002f8c <_Z11printStringPKc>
    8000225c:	00000613          	li	a2,0
    80002260:	00a00593          	li	a1,10
    80002264:	00048513          	mv	a0,s1
    80002268:	00001097          	auipc	ra,0x1
    8000226c:	ed4080e7          	jalr	-300(ra) # 8000313c <_Z8printIntiii>
    80002270:	00004517          	auipc	a0,0x4
    80002274:	07850513          	addi	a0,a0,120 # 800062e8 <CONSOLE_STATUS+0x2d8>
    80002278:	00001097          	auipc	ra,0x1
    8000227c:	d14080e7          	jalr	-748(ra) # 80002f8c <_Z11printStringPKc>
    for (; i < 3; i++) {
    80002280:	0014849b          	addiw	s1,s1,1
    80002284:	0ff4f493          	andi	s1,s1,255
    80002288:	00200793          	li	a5,2
    8000228c:	fc97f0e3          	bgeu	a5,s1,8000224c <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80002290:	00004517          	auipc	a0,0x4
    80002294:	e1850513          	addi	a0,a0,-488 # 800060a8 <CONSOLE_STATUS+0x98>
    80002298:	00001097          	auipc	ra,0x1
    8000229c:	cf4080e7          	jalr	-780(ra) # 80002f8c <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800022a0:	00700313          	li	t1,7
    thread_dispatch();
    800022a4:	fffff097          	auipc	ra,0xfffff
    800022a8:	0d8080e7          	jalr	216(ra) # 8000137c <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800022ac:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    800022b0:	00004517          	auipc	a0,0x4
    800022b4:	e0850513          	addi	a0,a0,-504 # 800060b8 <CONSOLE_STATUS+0xa8>
    800022b8:	00001097          	auipc	ra,0x1
    800022bc:	cd4080e7          	jalr	-812(ra) # 80002f8c <_Z11printStringPKc>
    800022c0:	00000613          	li	a2,0
    800022c4:	00a00593          	li	a1,10
    800022c8:	0009051b          	sext.w	a0,s2
    800022cc:	00001097          	auipc	ra,0x1
    800022d0:	e70080e7          	jalr	-400(ra) # 8000313c <_Z8printIntiii>
    800022d4:	00004517          	auipc	a0,0x4
    800022d8:	01450513          	addi	a0,a0,20 # 800062e8 <CONSOLE_STATUS+0x2d8>
    800022dc:	00001097          	auipc	ra,0x1
    800022e0:	cb0080e7          	jalr	-848(ra) # 80002f8c <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    800022e4:	00c00513          	li	a0,12
    800022e8:	00000097          	auipc	ra,0x0
    800022ec:	d30080e7          	jalr	-720(ra) # 80002018 <_ZL9fibonaccim>
    800022f0:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    800022f4:	00004517          	auipc	a0,0x4
    800022f8:	dcc50513          	addi	a0,a0,-564 # 800060c0 <CONSOLE_STATUS+0xb0>
    800022fc:	00001097          	auipc	ra,0x1
    80002300:	c90080e7          	jalr	-880(ra) # 80002f8c <_Z11printStringPKc>
    80002304:	00000613          	li	a2,0
    80002308:	00a00593          	li	a1,10
    8000230c:	0009051b          	sext.w	a0,s2
    80002310:	00001097          	auipc	ra,0x1
    80002314:	e2c080e7          	jalr	-468(ra) # 8000313c <_Z8printIntiii>
    80002318:	00004517          	auipc	a0,0x4
    8000231c:	fd050513          	addi	a0,a0,-48 # 800062e8 <CONSOLE_STATUS+0x2d8>
    80002320:	00001097          	auipc	ra,0x1
    80002324:	c6c080e7          	jalr	-916(ra) # 80002f8c <_Z11printStringPKc>
    80002328:	0400006f          	j	80002368 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    8000232c:	00004517          	auipc	a0,0x4
    80002330:	d7450513          	addi	a0,a0,-652 # 800060a0 <CONSOLE_STATUS+0x90>
    80002334:	00001097          	auipc	ra,0x1
    80002338:	c58080e7          	jalr	-936(ra) # 80002f8c <_Z11printStringPKc>
    8000233c:	00000613          	li	a2,0
    80002340:	00a00593          	li	a1,10
    80002344:	00048513          	mv	a0,s1
    80002348:	00001097          	auipc	ra,0x1
    8000234c:	df4080e7          	jalr	-524(ra) # 8000313c <_Z8printIntiii>
    80002350:	00004517          	auipc	a0,0x4
    80002354:	f9850513          	addi	a0,a0,-104 # 800062e8 <CONSOLE_STATUS+0x2d8>
    80002358:	00001097          	auipc	ra,0x1
    8000235c:	c34080e7          	jalr	-972(ra) # 80002f8c <_Z11printStringPKc>
    for (; i < 6; i++) {
    80002360:	0014849b          	addiw	s1,s1,1
    80002364:	0ff4f493          	andi	s1,s1,255
    80002368:	00500793          	li	a5,5
    8000236c:	fc97f0e3          	bgeu	a5,s1,8000232c <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    80002370:	00004517          	auipc	a0,0x4
    80002374:	d0850513          	addi	a0,a0,-760 # 80006078 <CONSOLE_STATUS+0x68>
    80002378:	00001097          	auipc	ra,0x1
    8000237c:	c14080e7          	jalr	-1004(ra) # 80002f8c <_Z11printStringPKc>
    finishedC = true;
    80002380:	00100793          	li	a5,1
    80002384:	00005717          	auipc	a4,0x5
    80002388:	f4f70f23          	sb	a5,-162(a4) # 800072e2 <_ZL9finishedC>
    thread_dispatch();
    8000238c:	fffff097          	auipc	ra,0xfffff
    80002390:	ff0080e7          	jalr	-16(ra) # 8000137c <_Z15thread_dispatchv>
}
    80002394:	01813083          	ld	ra,24(sp)
    80002398:	01013403          	ld	s0,16(sp)
    8000239c:	00813483          	ld	s1,8(sp)
    800023a0:	00013903          	ld	s2,0(sp)
    800023a4:	02010113          	addi	sp,sp,32
    800023a8:	00008067          	ret

00000000800023ac <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    800023ac:	fe010113          	addi	sp,sp,-32
    800023b0:	00113c23          	sd	ra,24(sp)
    800023b4:	00813823          	sd	s0,16(sp)
    800023b8:	00913423          	sd	s1,8(sp)
    800023bc:	01213023          	sd	s2,0(sp)
    800023c0:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800023c4:	00a00493          	li	s1,10
    800023c8:	0400006f          	j	80002408 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800023cc:	00004517          	auipc	a0,0x4
    800023d0:	d0450513          	addi	a0,a0,-764 # 800060d0 <CONSOLE_STATUS+0xc0>
    800023d4:	00001097          	auipc	ra,0x1
    800023d8:	bb8080e7          	jalr	-1096(ra) # 80002f8c <_Z11printStringPKc>
    800023dc:	00000613          	li	a2,0
    800023e0:	00a00593          	li	a1,10
    800023e4:	00048513          	mv	a0,s1
    800023e8:	00001097          	auipc	ra,0x1
    800023ec:	d54080e7          	jalr	-684(ra) # 8000313c <_Z8printIntiii>
    800023f0:	00004517          	auipc	a0,0x4
    800023f4:	ef850513          	addi	a0,a0,-264 # 800062e8 <CONSOLE_STATUS+0x2d8>
    800023f8:	00001097          	auipc	ra,0x1
    800023fc:	b94080e7          	jalr	-1132(ra) # 80002f8c <_Z11printStringPKc>
    for (; i < 13; i++) {
    80002400:	0014849b          	addiw	s1,s1,1
    80002404:	0ff4f493          	andi	s1,s1,255
    80002408:	00c00793          	li	a5,12
    8000240c:	fc97f0e3          	bgeu	a5,s1,800023cc <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80002410:	00004517          	auipc	a0,0x4
    80002414:	cc850513          	addi	a0,a0,-824 # 800060d8 <CONSOLE_STATUS+0xc8>
    80002418:	00001097          	auipc	ra,0x1
    8000241c:	b74080e7          	jalr	-1164(ra) # 80002f8c <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80002420:	00500313          	li	t1,5
    thread_dispatch();
    80002424:	fffff097          	auipc	ra,0xfffff
    80002428:	f58080e7          	jalr	-168(ra) # 8000137c <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    8000242c:	01000513          	li	a0,16
    80002430:	00000097          	auipc	ra,0x0
    80002434:	be8080e7          	jalr	-1048(ra) # 80002018 <_ZL9fibonaccim>
    80002438:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    8000243c:	00004517          	auipc	a0,0x4
    80002440:	cac50513          	addi	a0,a0,-852 # 800060e8 <CONSOLE_STATUS+0xd8>
    80002444:	00001097          	auipc	ra,0x1
    80002448:	b48080e7          	jalr	-1208(ra) # 80002f8c <_Z11printStringPKc>
    8000244c:	00000613          	li	a2,0
    80002450:	00a00593          	li	a1,10
    80002454:	0009051b          	sext.w	a0,s2
    80002458:	00001097          	auipc	ra,0x1
    8000245c:	ce4080e7          	jalr	-796(ra) # 8000313c <_Z8printIntiii>
    80002460:	00004517          	auipc	a0,0x4
    80002464:	e8850513          	addi	a0,a0,-376 # 800062e8 <CONSOLE_STATUS+0x2d8>
    80002468:	00001097          	auipc	ra,0x1
    8000246c:	b24080e7          	jalr	-1244(ra) # 80002f8c <_Z11printStringPKc>
    80002470:	0400006f          	j	800024b0 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80002474:	00004517          	auipc	a0,0x4
    80002478:	c5c50513          	addi	a0,a0,-932 # 800060d0 <CONSOLE_STATUS+0xc0>
    8000247c:	00001097          	auipc	ra,0x1
    80002480:	b10080e7          	jalr	-1264(ra) # 80002f8c <_Z11printStringPKc>
    80002484:	00000613          	li	a2,0
    80002488:	00a00593          	li	a1,10
    8000248c:	00048513          	mv	a0,s1
    80002490:	00001097          	auipc	ra,0x1
    80002494:	cac080e7          	jalr	-852(ra) # 8000313c <_Z8printIntiii>
    80002498:	00004517          	auipc	a0,0x4
    8000249c:	e5050513          	addi	a0,a0,-432 # 800062e8 <CONSOLE_STATUS+0x2d8>
    800024a0:	00001097          	auipc	ra,0x1
    800024a4:	aec080e7          	jalr	-1300(ra) # 80002f8c <_Z11printStringPKc>
    for (; i < 16; i++) {
    800024a8:	0014849b          	addiw	s1,s1,1
    800024ac:	0ff4f493          	andi	s1,s1,255
    800024b0:	00f00793          	li	a5,15
    800024b4:	fc97f0e3          	bgeu	a5,s1,80002474 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    800024b8:	00004517          	auipc	a0,0x4
    800024bc:	c4050513          	addi	a0,a0,-960 # 800060f8 <CONSOLE_STATUS+0xe8>
    800024c0:	00001097          	auipc	ra,0x1
    800024c4:	acc080e7          	jalr	-1332(ra) # 80002f8c <_Z11printStringPKc>
    finishedD = true;
    800024c8:	00100793          	li	a5,1
    800024cc:	00005717          	auipc	a4,0x5
    800024d0:	e0f70ba3          	sb	a5,-489(a4) # 800072e3 <_ZL9finishedD>
    thread_dispatch();
    800024d4:	fffff097          	auipc	ra,0xfffff
    800024d8:	ea8080e7          	jalr	-344(ra) # 8000137c <_Z15thread_dispatchv>
}
    800024dc:	01813083          	ld	ra,24(sp)
    800024e0:	01013403          	ld	s0,16(sp)
    800024e4:	00813483          	ld	s1,8(sp)
    800024e8:	00013903          	ld	s2,0(sp)
    800024ec:	02010113          	addi	sp,sp,32
    800024f0:	00008067          	ret

00000000800024f4 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    800024f4:	fc010113          	addi	sp,sp,-64
    800024f8:	02113c23          	sd	ra,56(sp)
    800024fc:	02813823          	sd	s0,48(sp)
    80002500:	02913423          	sd	s1,40(sp)
    80002504:	03213023          	sd	s2,32(sp)
    80002508:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    8000250c:	02000513          	li	a0,32
    80002510:	fffff097          	auipc	ra,0xfffff
    80002514:	35c080e7          	jalr	860(ra) # 8000186c <_Znwm>
    80002518:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    8000251c:	fffff097          	auipc	ra,0xfffff
    80002520:	4f0080e7          	jalr	1264(ra) # 80001a0c <_ZN6ThreadC1Ev>
    80002524:	00005797          	auipc	a5,0x5
    80002528:	c4c78793          	addi	a5,a5,-948 # 80007170 <_ZTV7WorkerA+0x10>
    8000252c:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    80002530:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80002534:	00004517          	auipc	a0,0x4
    80002538:	bd450513          	addi	a0,a0,-1068 # 80006108 <CONSOLE_STATUS+0xf8>
    8000253c:	00001097          	auipc	ra,0x1
    80002540:	a50080e7          	jalr	-1456(ra) # 80002f8c <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80002544:	02000513          	li	a0,32
    80002548:	fffff097          	auipc	ra,0xfffff
    8000254c:	324080e7          	jalr	804(ra) # 8000186c <_Znwm>
    80002550:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    80002554:	fffff097          	auipc	ra,0xfffff
    80002558:	4b8080e7          	jalr	1208(ra) # 80001a0c <_ZN6ThreadC1Ev>
    8000255c:	00005797          	auipc	a5,0x5
    80002560:	c3c78793          	addi	a5,a5,-964 # 80007198 <_ZTV7WorkerB+0x10>
    80002564:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    80002568:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    8000256c:	00004517          	auipc	a0,0x4
    80002570:	bb450513          	addi	a0,a0,-1100 # 80006120 <CONSOLE_STATUS+0x110>
    80002574:	00001097          	auipc	ra,0x1
    80002578:	a18080e7          	jalr	-1512(ra) # 80002f8c <_Z11printStringPKc>

    threads[2] = new WorkerC();
    8000257c:	02000513          	li	a0,32
    80002580:	fffff097          	auipc	ra,0xfffff
    80002584:	2ec080e7          	jalr	748(ra) # 8000186c <_Znwm>
    80002588:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    8000258c:	fffff097          	auipc	ra,0xfffff
    80002590:	480080e7          	jalr	1152(ra) # 80001a0c <_ZN6ThreadC1Ev>
    80002594:	00005797          	auipc	a5,0x5
    80002598:	c2c78793          	addi	a5,a5,-980 # 800071c0 <_ZTV7WorkerC+0x10>
    8000259c:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    800025a0:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    800025a4:	00004517          	auipc	a0,0x4
    800025a8:	b9450513          	addi	a0,a0,-1132 # 80006138 <CONSOLE_STATUS+0x128>
    800025ac:	00001097          	auipc	ra,0x1
    800025b0:	9e0080e7          	jalr	-1568(ra) # 80002f8c <_Z11printStringPKc>

    threads[3] = new WorkerD();
    800025b4:	02000513          	li	a0,32
    800025b8:	fffff097          	auipc	ra,0xfffff
    800025bc:	2b4080e7          	jalr	692(ra) # 8000186c <_Znwm>
    800025c0:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    800025c4:	fffff097          	auipc	ra,0xfffff
    800025c8:	448080e7          	jalr	1096(ra) # 80001a0c <_ZN6ThreadC1Ev>
    800025cc:	00005797          	auipc	a5,0x5
    800025d0:	c1c78793          	addi	a5,a5,-996 # 800071e8 <_ZTV7WorkerD+0x10>
    800025d4:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    800025d8:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    800025dc:	00004517          	auipc	a0,0x4
    800025e0:	b7450513          	addi	a0,a0,-1164 # 80006150 <CONSOLE_STATUS+0x140>
    800025e4:	00001097          	auipc	ra,0x1
    800025e8:	9a8080e7          	jalr	-1624(ra) # 80002f8c <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    800025ec:	00000493          	li	s1,0
    800025f0:	00300793          	li	a5,3
    800025f4:	0297c663          	blt	a5,s1,80002620 <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    800025f8:	00349793          	slli	a5,s1,0x3
    800025fc:	fe040713          	addi	a4,s0,-32
    80002600:	00f707b3          	add	a5,a4,a5
    80002604:	fe07b503          	ld	a0,-32(a5)
    80002608:	fffff097          	auipc	ra,0xfffff
    8000260c:	480080e7          	jalr	1152(ra) # 80001a88 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    80002610:	0014849b          	addiw	s1,s1,1
    80002614:	fddff06f          	j	800025f0 <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80002618:	fffff097          	auipc	ra,0xfffff
    8000261c:	4cc080e7          	jalr	1228(ra) # 80001ae4 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80002620:	00005797          	auipc	a5,0x5
    80002624:	cc07c783          	lbu	a5,-832(a5) # 800072e0 <_ZL9finishedA>
    80002628:	fe0788e3          	beqz	a5,80002618 <_Z20Threads_CPP_API_testv+0x124>
    8000262c:	00005797          	auipc	a5,0x5
    80002630:	cb57c783          	lbu	a5,-843(a5) # 800072e1 <_ZL9finishedB>
    80002634:	fe0782e3          	beqz	a5,80002618 <_Z20Threads_CPP_API_testv+0x124>
    80002638:	00005797          	auipc	a5,0x5
    8000263c:	caa7c783          	lbu	a5,-854(a5) # 800072e2 <_ZL9finishedC>
    80002640:	fc078ce3          	beqz	a5,80002618 <_Z20Threads_CPP_API_testv+0x124>
    80002644:	00005797          	auipc	a5,0x5
    80002648:	c9f7c783          	lbu	a5,-865(a5) # 800072e3 <_ZL9finishedD>
    8000264c:	fc0786e3          	beqz	a5,80002618 <_Z20Threads_CPP_API_testv+0x124>
    80002650:	fc040493          	addi	s1,s0,-64
    80002654:	0080006f          	j	8000265c <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    80002658:	00848493          	addi	s1,s1,8
    8000265c:	fe040793          	addi	a5,s0,-32
    80002660:	08f48663          	beq	s1,a5,800026ec <_Z20Threads_CPP_API_testv+0x1f8>
    80002664:	0004b503          	ld	a0,0(s1)
    80002668:	fe0508e3          	beqz	a0,80002658 <_Z20Threads_CPP_API_testv+0x164>
    8000266c:	00053783          	ld	a5,0(a0)
    80002670:	0087b783          	ld	a5,8(a5)
    80002674:	000780e7          	jalr	a5
    80002678:	fe1ff06f          	j	80002658 <_Z20Threads_CPP_API_testv+0x164>
    8000267c:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    80002680:	00048513          	mv	a0,s1
    80002684:	fffff097          	auipc	ra,0xfffff
    80002688:	238080e7          	jalr	568(ra) # 800018bc <_ZdlPv>
    8000268c:	00090513          	mv	a0,s2
    80002690:	00006097          	auipc	ra,0x6
    80002694:	d38080e7          	jalr	-712(ra) # 800083c8 <_Unwind_Resume>
    80002698:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    8000269c:	00048513          	mv	a0,s1
    800026a0:	fffff097          	auipc	ra,0xfffff
    800026a4:	21c080e7          	jalr	540(ra) # 800018bc <_ZdlPv>
    800026a8:	00090513          	mv	a0,s2
    800026ac:	00006097          	auipc	ra,0x6
    800026b0:	d1c080e7          	jalr	-740(ra) # 800083c8 <_Unwind_Resume>
    800026b4:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    800026b8:	00048513          	mv	a0,s1
    800026bc:	fffff097          	auipc	ra,0xfffff
    800026c0:	200080e7          	jalr	512(ra) # 800018bc <_ZdlPv>
    800026c4:	00090513          	mv	a0,s2
    800026c8:	00006097          	auipc	ra,0x6
    800026cc:	d00080e7          	jalr	-768(ra) # 800083c8 <_Unwind_Resume>
    800026d0:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    800026d4:	00048513          	mv	a0,s1
    800026d8:	fffff097          	auipc	ra,0xfffff
    800026dc:	1e4080e7          	jalr	484(ra) # 800018bc <_ZdlPv>
    800026e0:	00090513          	mv	a0,s2
    800026e4:	00006097          	auipc	ra,0x6
    800026e8:	ce4080e7          	jalr	-796(ra) # 800083c8 <_Unwind_Resume>
}
    800026ec:	03813083          	ld	ra,56(sp)
    800026f0:	03013403          	ld	s0,48(sp)
    800026f4:	02813483          	ld	s1,40(sp)
    800026f8:	02013903          	ld	s2,32(sp)
    800026fc:	04010113          	addi	sp,sp,64
    80002700:	00008067          	ret

0000000080002704 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80002704:	ff010113          	addi	sp,sp,-16
    80002708:	00113423          	sd	ra,8(sp)
    8000270c:	00813023          	sd	s0,0(sp)
    80002710:	01010413          	addi	s0,sp,16
    80002714:	00005797          	auipc	a5,0x5
    80002718:	a5c78793          	addi	a5,a5,-1444 # 80007170 <_ZTV7WorkerA+0x10>
    8000271c:	00f53023          	sd	a5,0(a0)
    80002720:	fffff097          	auipc	ra,0xfffff
    80002724:	1ec080e7          	jalr	492(ra) # 8000190c <_ZN6ThreadD1Ev>
    80002728:	00813083          	ld	ra,8(sp)
    8000272c:	00013403          	ld	s0,0(sp)
    80002730:	01010113          	addi	sp,sp,16
    80002734:	00008067          	ret

0000000080002738 <_ZN7WorkerAD0Ev>:
    80002738:	fe010113          	addi	sp,sp,-32
    8000273c:	00113c23          	sd	ra,24(sp)
    80002740:	00813823          	sd	s0,16(sp)
    80002744:	00913423          	sd	s1,8(sp)
    80002748:	02010413          	addi	s0,sp,32
    8000274c:	00050493          	mv	s1,a0
    80002750:	00005797          	auipc	a5,0x5
    80002754:	a2078793          	addi	a5,a5,-1504 # 80007170 <_ZTV7WorkerA+0x10>
    80002758:	00f53023          	sd	a5,0(a0)
    8000275c:	fffff097          	auipc	ra,0xfffff
    80002760:	1b0080e7          	jalr	432(ra) # 8000190c <_ZN6ThreadD1Ev>
    80002764:	00048513          	mv	a0,s1
    80002768:	fffff097          	auipc	ra,0xfffff
    8000276c:	154080e7          	jalr	340(ra) # 800018bc <_ZdlPv>
    80002770:	01813083          	ld	ra,24(sp)
    80002774:	01013403          	ld	s0,16(sp)
    80002778:	00813483          	ld	s1,8(sp)
    8000277c:	02010113          	addi	sp,sp,32
    80002780:	00008067          	ret

0000000080002784 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80002784:	ff010113          	addi	sp,sp,-16
    80002788:	00113423          	sd	ra,8(sp)
    8000278c:	00813023          	sd	s0,0(sp)
    80002790:	01010413          	addi	s0,sp,16
    80002794:	00005797          	auipc	a5,0x5
    80002798:	a0478793          	addi	a5,a5,-1532 # 80007198 <_ZTV7WorkerB+0x10>
    8000279c:	00f53023          	sd	a5,0(a0)
    800027a0:	fffff097          	auipc	ra,0xfffff
    800027a4:	16c080e7          	jalr	364(ra) # 8000190c <_ZN6ThreadD1Ev>
    800027a8:	00813083          	ld	ra,8(sp)
    800027ac:	00013403          	ld	s0,0(sp)
    800027b0:	01010113          	addi	sp,sp,16
    800027b4:	00008067          	ret

00000000800027b8 <_ZN7WorkerBD0Ev>:
    800027b8:	fe010113          	addi	sp,sp,-32
    800027bc:	00113c23          	sd	ra,24(sp)
    800027c0:	00813823          	sd	s0,16(sp)
    800027c4:	00913423          	sd	s1,8(sp)
    800027c8:	02010413          	addi	s0,sp,32
    800027cc:	00050493          	mv	s1,a0
    800027d0:	00005797          	auipc	a5,0x5
    800027d4:	9c878793          	addi	a5,a5,-1592 # 80007198 <_ZTV7WorkerB+0x10>
    800027d8:	00f53023          	sd	a5,0(a0)
    800027dc:	fffff097          	auipc	ra,0xfffff
    800027e0:	130080e7          	jalr	304(ra) # 8000190c <_ZN6ThreadD1Ev>
    800027e4:	00048513          	mv	a0,s1
    800027e8:	fffff097          	auipc	ra,0xfffff
    800027ec:	0d4080e7          	jalr	212(ra) # 800018bc <_ZdlPv>
    800027f0:	01813083          	ld	ra,24(sp)
    800027f4:	01013403          	ld	s0,16(sp)
    800027f8:	00813483          	ld	s1,8(sp)
    800027fc:	02010113          	addi	sp,sp,32
    80002800:	00008067          	ret

0000000080002804 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80002804:	ff010113          	addi	sp,sp,-16
    80002808:	00113423          	sd	ra,8(sp)
    8000280c:	00813023          	sd	s0,0(sp)
    80002810:	01010413          	addi	s0,sp,16
    80002814:	00005797          	auipc	a5,0x5
    80002818:	9ac78793          	addi	a5,a5,-1620 # 800071c0 <_ZTV7WorkerC+0x10>
    8000281c:	00f53023          	sd	a5,0(a0)
    80002820:	fffff097          	auipc	ra,0xfffff
    80002824:	0ec080e7          	jalr	236(ra) # 8000190c <_ZN6ThreadD1Ev>
    80002828:	00813083          	ld	ra,8(sp)
    8000282c:	00013403          	ld	s0,0(sp)
    80002830:	01010113          	addi	sp,sp,16
    80002834:	00008067          	ret

0000000080002838 <_ZN7WorkerCD0Ev>:
    80002838:	fe010113          	addi	sp,sp,-32
    8000283c:	00113c23          	sd	ra,24(sp)
    80002840:	00813823          	sd	s0,16(sp)
    80002844:	00913423          	sd	s1,8(sp)
    80002848:	02010413          	addi	s0,sp,32
    8000284c:	00050493          	mv	s1,a0
    80002850:	00005797          	auipc	a5,0x5
    80002854:	97078793          	addi	a5,a5,-1680 # 800071c0 <_ZTV7WorkerC+0x10>
    80002858:	00f53023          	sd	a5,0(a0)
    8000285c:	fffff097          	auipc	ra,0xfffff
    80002860:	0b0080e7          	jalr	176(ra) # 8000190c <_ZN6ThreadD1Ev>
    80002864:	00048513          	mv	a0,s1
    80002868:	fffff097          	auipc	ra,0xfffff
    8000286c:	054080e7          	jalr	84(ra) # 800018bc <_ZdlPv>
    80002870:	01813083          	ld	ra,24(sp)
    80002874:	01013403          	ld	s0,16(sp)
    80002878:	00813483          	ld	s1,8(sp)
    8000287c:	02010113          	addi	sp,sp,32
    80002880:	00008067          	ret

0000000080002884 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80002884:	ff010113          	addi	sp,sp,-16
    80002888:	00113423          	sd	ra,8(sp)
    8000288c:	00813023          	sd	s0,0(sp)
    80002890:	01010413          	addi	s0,sp,16
    80002894:	00005797          	auipc	a5,0x5
    80002898:	95478793          	addi	a5,a5,-1708 # 800071e8 <_ZTV7WorkerD+0x10>
    8000289c:	00f53023          	sd	a5,0(a0)
    800028a0:	fffff097          	auipc	ra,0xfffff
    800028a4:	06c080e7          	jalr	108(ra) # 8000190c <_ZN6ThreadD1Ev>
    800028a8:	00813083          	ld	ra,8(sp)
    800028ac:	00013403          	ld	s0,0(sp)
    800028b0:	01010113          	addi	sp,sp,16
    800028b4:	00008067          	ret

00000000800028b8 <_ZN7WorkerDD0Ev>:
    800028b8:	fe010113          	addi	sp,sp,-32
    800028bc:	00113c23          	sd	ra,24(sp)
    800028c0:	00813823          	sd	s0,16(sp)
    800028c4:	00913423          	sd	s1,8(sp)
    800028c8:	02010413          	addi	s0,sp,32
    800028cc:	00050493          	mv	s1,a0
    800028d0:	00005797          	auipc	a5,0x5
    800028d4:	91878793          	addi	a5,a5,-1768 # 800071e8 <_ZTV7WorkerD+0x10>
    800028d8:	00f53023          	sd	a5,0(a0)
    800028dc:	fffff097          	auipc	ra,0xfffff
    800028e0:	030080e7          	jalr	48(ra) # 8000190c <_ZN6ThreadD1Ev>
    800028e4:	00048513          	mv	a0,s1
    800028e8:	fffff097          	auipc	ra,0xfffff
    800028ec:	fd4080e7          	jalr	-44(ra) # 800018bc <_ZdlPv>
    800028f0:	01813083          	ld	ra,24(sp)
    800028f4:	01013403          	ld	s0,16(sp)
    800028f8:	00813483          	ld	s1,8(sp)
    800028fc:	02010113          	addi	sp,sp,32
    80002900:	00008067          	ret

0000000080002904 <_ZN7WorkerA3runEv>:
    void run() override {
    80002904:	ff010113          	addi	sp,sp,-16
    80002908:	00113423          	sd	ra,8(sp)
    8000290c:	00813023          	sd	s0,0(sp)
    80002910:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80002914:	00000593          	li	a1,0
    80002918:	fffff097          	auipc	ra,0xfffff
    8000291c:	774080e7          	jalr	1908(ra) # 8000208c <_ZN7WorkerA11workerBodyAEPv>
    }
    80002920:	00813083          	ld	ra,8(sp)
    80002924:	00013403          	ld	s0,0(sp)
    80002928:	01010113          	addi	sp,sp,16
    8000292c:	00008067          	ret

0000000080002930 <_ZN7WorkerB3runEv>:
    void run() override {
    80002930:	ff010113          	addi	sp,sp,-16
    80002934:	00113423          	sd	ra,8(sp)
    80002938:	00813023          	sd	s0,0(sp)
    8000293c:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80002940:	00000593          	li	a1,0
    80002944:	00000097          	auipc	ra,0x0
    80002948:	814080e7          	jalr	-2028(ra) # 80002158 <_ZN7WorkerB11workerBodyBEPv>
    }
    8000294c:	00813083          	ld	ra,8(sp)
    80002950:	00013403          	ld	s0,0(sp)
    80002954:	01010113          	addi	sp,sp,16
    80002958:	00008067          	ret

000000008000295c <_ZN7WorkerC3runEv>:
    void run() override {
    8000295c:	ff010113          	addi	sp,sp,-16
    80002960:	00113423          	sd	ra,8(sp)
    80002964:	00813023          	sd	s0,0(sp)
    80002968:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    8000296c:	00000593          	li	a1,0
    80002970:	00000097          	auipc	ra,0x0
    80002974:	8bc080e7          	jalr	-1860(ra) # 8000222c <_ZN7WorkerC11workerBodyCEPv>
    }
    80002978:	00813083          	ld	ra,8(sp)
    8000297c:	00013403          	ld	s0,0(sp)
    80002980:	01010113          	addi	sp,sp,16
    80002984:	00008067          	ret

0000000080002988 <_ZN7WorkerD3runEv>:
    void run() override {
    80002988:	ff010113          	addi	sp,sp,-16
    8000298c:	00113423          	sd	ra,8(sp)
    80002990:	00813023          	sd	s0,0(sp)
    80002994:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80002998:	00000593          	li	a1,0
    8000299c:	00000097          	auipc	ra,0x0
    800029a0:	a10080e7          	jalr	-1520(ra) # 800023ac <_ZN7WorkerD11workerBodyDEPv>
    }
    800029a4:	00813083          	ld	ra,8(sp)
    800029a8:	00013403          	ld	s0,0(sp)
    800029ac:	01010113          	addi	sp,sp,16
    800029b0:	00008067          	ret

00000000800029b4 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800029b4:	fe010113          	addi	sp,sp,-32
    800029b8:	00113c23          	sd	ra,24(sp)
    800029bc:	00813823          	sd	s0,16(sp)
    800029c0:	00913423          	sd	s1,8(sp)
    800029c4:	01213023          	sd	s2,0(sp)
    800029c8:	02010413          	addi	s0,sp,32
    800029cc:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800029d0:	00100793          	li	a5,1
    800029d4:	02a7f863          	bgeu	a5,a0,80002a04 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800029d8:	00a00793          	li	a5,10
    800029dc:	02f577b3          	remu	a5,a0,a5
    800029e0:	02078e63          	beqz	a5,80002a1c <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800029e4:	fff48513          	addi	a0,s1,-1
    800029e8:	00000097          	auipc	ra,0x0
    800029ec:	fcc080e7          	jalr	-52(ra) # 800029b4 <_ZL9fibonaccim>
    800029f0:	00050913          	mv	s2,a0
    800029f4:	ffe48513          	addi	a0,s1,-2
    800029f8:	00000097          	auipc	ra,0x0
    800029fc:	fbc080e7          	jalr	-68(ra) # 800029b4 <_ZL9fibonaccim>
    80002a00:	00a90533          	add	a0,s2,a0
}
    80002a04:	01813083          	ld	ra,24(sp)
    80002a08:	01013403          	ld	s0,16(sp)
    80002a0c:	00813483          	ld	s1,8(sp)
    80002a10:	00013903          	ld	s2,0(sp)
    80002a14:	02010113          	addi	sp,sp,32
    80002a18:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80002a1c:	fffff097          	auipc	ra,0xfffff
    80002a20:	960080e7          	jalr	-1696(ra) # 8000137c <_Z15thread_dispatchv>
    80002a24:	fc1ff06f          	j	800029e4 <_ZL9fibonaccim+0x30>

0000000080002a28 <_ZL11workerBodyDPv>:
    printString("C finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80002a28:	fe010113          	addi	sp,sp,-32
    80002a2c:	00113c23          	sd	ra,24(sp)
    80002a30:	00813823          	sd	s0,16(sp)
    80002a34:	00913423          	sd	s1,8(sp)
    80002a38:	01213023          	sd	s2,0(sp)
    80002a3c:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80002a40:	00a00493          	li	s1,10
    80002a44:	0400006f          	j	80002a84 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80002a48:	00003517          	auipc	a0,0x3
    80002a4c:	68850513          	addi	a0,a0,1672 # 800060d0 <CONSOLE_STATUS+0xc0>
    80002a50:	00000097          	auipc	ra,0x0
    80002a54:	53c080e7          	jalr	1340(ra) # 80002f8c <_Z11printStringPKc>
    80002a58:	00000613          	li	a2,0
    80002a5c:	00a00593          	li	a1,10
    80002a60:	00048513          	mv	a0,s1
    80002a64:	00000097          	auipc	ra,0x0
    80002a68:	6d8080e7          	jalr	1752(ra) # 8000313c <_Z8printIntiii>
    80002a6c:	00004517          	auipc	a0,0x4
    80002a70:	87c50513          	addi	a0,a0,-1924 # 800062e8 <CONSOLE_STATUS+0x2d8>
    80002a74:	00000097          	auipc	ra,0x0
    80002a78:	518080e7          	jalr	1304(ra) # 80002f8c <_Z11printStringPKc>
    for (; i < 13; i++) {
    80002a7c:	0014849b          	addiw	s1,s1,1
    80002a80:	0ff4f493          	andi	s1,s1,255
    80002a84:	00c00793          	li	a5,12
    80002a88:	fc97f0e3          	bgeu	a5,s1,80002a48 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80002a8c:	00003517          	auipc	a0,0x3
    80002a90:	64c50513          	addi	a0,a0,1612 # 800060d8 <CONSOLE_STATUS+0xc8>
    80002a94:	00000097          	auipc	ra,0x0
    80002a98:	4f8080e7          	jalr	1272(ra) # 80002f8c <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80002a9c:	00500313          	li	t1,5
    thread_dispatch();
    80002aa0:	fffff097          	auipc	ra,0xfffff
    80002aa4:	8dc080e7          	jalr	-1828(ra) # 8000137c <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80002aa8:	01000513          	li	a0,16
    80002aac:	00000097          	auipc	ra,0x0
    80002ab0:	f08080e7          	jalr	-248(ra) # 800029b4 <_ZL9fibonaccim>
    80002ab4:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80002ab8:	00003517          	auipc	a0,0x3
    80002abc:	63050513          	addi	a0,a0,1584 # 800060e8 <CONSOLE_STATUS+0xd8>
    80002ac0:	00000097          	auipc	ra,0x0
    80002ac4:	4cc080e7          	jalr	1228(ra) # 80002f8c <_Z11printStringPKc>
    80002ac8:	00000613          	li	a2,0
    80002acc:	00a00593          	li	a1,10
    80002ad0:	0009051b          	sext.w	a0,s2
    80002ad4:	00000097          	auipc	ra,0x0
    80002ad8:	668080e7          	jalr	1640(ra) # 8000313c <_Z8printIntiii>
    80002adc:	00004517          	auipc	a0,0x4
    80002ae0:	80c50513          	addi	a0,a0,-2036 # 800062e8 <CONSOLE_STATUS+0x2d8>
    80002ae4:	00000097          	auipc	ra,0x0
    80002ae8:	4a8080e7          	jalr	1192(ra) # 80002f8c <_Z11printStringPKc>
    80002aec:	0400006f          	j	80002b2c <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80002af0:	00003517          	auipc	a0,0x3
    80002af4:	5e050513          	addi	a0,a0,1504 # 800060d0 <CONSOLE_STATUS+0xc0>
    80002af8:	00000097          	auipc	ra,0x0
    80002afc:	494080e7          	jalr	1172(ra) # 80002f8c <_Z11printStringPKc>
    80002b00:	00000613          	li	a2,0
    80002b04:	00a00593          	li	a1,10
    80002b08:	00048513          	mv	a0,s1
    80002b0c:	00000097          	auipc	ra,0x0
    80002b10:	630080e7          	jalr	1584(ra) # 8000313c <_Z8printIntiii>
    80002b14:	00003517          	auipc	a0,0x3
    80002b18:	7d450513          	addi	a0,a0,2004 # 800062e8 <CONSOLE_STATUS+0x2d8>
    80002b1c:	00000097          	auipc	ra,0x0
    80002b20:	470080e7          	jalr	1136(ra) # 80002f8c <_Z11printStringPKc>
    for (; i < 16; i++) {
    80002b24:	0014849b          	addiw	s1,s1,1
    80002b28:	0ff4f493          	andi	s1,s1,255
    80002b2c:	00f00793          	li	a5,15
    80002b30:	fc97f0e3          	bgeu	a5,s1,80002af0 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80002b34:	00003517          	auipc	a0,0x3
    80002b38:	5c450513          	addi	a0,a0,1476 # 800060f8 <CONSOLE_STATUS+0xe8>
    80002b3c:	00000097          	auipc	ra,0x0
    80002b40:	450080e7          	jalr	1104(ra) # 80002f8c <_Z11printStringPKc>
    finishedD = true;
    80002b44:	00100793          	li	a5,1
    80002b48:	00004717          	auipc	a4,0x4
    80002b4c:	78f70e23          	sb	a5,1948(a4) # 800072e4 <_ZL9finishedD>
    thread_dispatch();
    80002b50:	fffff097          	auipc	ra,0xfffff
    80002b54:	82c080e7          	jalr	-2004(ra) # 8000137c <_Z15thread_dispatchv>
}
    80002b58:	01813083          	ld	ra,24(sp)
    80002b5c:	01013403          	ld	s0,16(sp)
    80002b60:	00813483          	ld	s1,8(sp)
    80002b64:	00013903          	ld	s2,0(sp)
    80002b68:	02010113          	addi	sp,sp,32
    80002b6c:	00008067          	ret

0000000080002b70 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80002b70:	fe010113          	addi	sp,sp,-32
    80002b74:	00113c23          	sd	ra,24(sp)
    80002b78:	00813823          	sd	s0,16(sp)
    80002b7c:	00913423          	sd	s1,8(sp)
    80002b80:	01213023          	sd	s2,0(sp)
    80002b84:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80002b88:	00000493          	li	s1,0
    80002b8c:	0400006f          	j	80002bcc <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80002b90:	00003517          	auipc	a0,0x3
    80002b94:	51050513          	addi	a0,a0,1296 # 800060a0 <CONSOLE_STATUS+0x90>
    80002b98:	00000097          	auipc	ra,0x0
    80002b9c:	3f4080e7          	jalr	1012(ra) # 80002f8c <_Z11printStringPKc>
    80002ba0:	00000613          	li	a2,0
    80002ba4:	00a00593          	li	a1,10
    80002ba8:	00048513          	mv	a0,s1
    80002bac:	00000097          	auipc	ra,0x0
    80002bb0:	590080e7          	jalr	1424(ra) # 8000313c <_Z8printIntiii>
    80002bb4:	00003517          	auipc	a0,0x3
    80002bb8:	73450513          	addi	a0,a0,1844 # 800062e8 <CONSOLE_STATUS+0x2d8>
    80002bbc:	00000097          	auipc	ra,0x0
    80002bc0:	3d0080e7          	jalr	976(ra) # 80002f8c <_Z11printStringPKc>
    for (; i < 3; i++) {
    80002bc4:	0014849b          	addiw	s1,s1,1
    80002bc8:	0ff4f493          	andi	s1,s1,255
    80002bcc:	00200793          	li	a5,2
    80002bd0:	fc97f0e3          	bgeu	a5,s1,80002b90 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80002bd4:	00003517          	auipc	a0,0x3
    80002bd8:	4d450513          	addi	a0,a0,1236 # 800060a8 <CONSOLE_STATUS+0x98>
    80002bdc:	00000097          	auipc	ra,0x0
    80002be0:	3b0080e7          	jalr	944(ra) # 80002f8c <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80002be4:	00700313          	li	t1,7
    thread_dispatch();
    80002be8:	ffffe097          	auipc	ra,0xffffe
    80002bec:	794080e7          	jalr	1940(ra) # 8000137c <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80002bf0:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80002bf4:	00003517          	auipc	a0,0x3
    80002bf8:	4c450513          	addi	a0,a0,1220 # 800060b8 <CONSOLE_STATUS+0xa8>
    80002bfc:	00000097          	auipc	ra,0x0
    80002c00:	390080e7          	jalr	912(ra) # 80002f8c <_Z11printStringPKc>
    80002c04:	00000613          	li	a2,0
    80002c08:	00a00593          	li	a1,10
    80002c0c:	0009051b          	sext.w	a0,s2
    80002c10:	00000097          	auipc	ra,0x0
    80002c14:	52c080e7          	jalr	1324(ra) # 8000313c <_Z8printIntiii>
    80002c18:	00003517          	auipc	a0,0x3
    80002c1c:	6d050513          	addi	a0,a0,1744 # 800062e8 <CONSOLE_STATUS+0x2d8>
    80002c20:	00000097          	auipc	ra,0x0
    80002c24:	36c080e7          	jalr	876(ra) # 80002f8c <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80002c28:	00c00513          	li	a0,12
    80002c2c:	00000097          	auipc	ra,0x0
    80002c30:	d88080e7          	jalr	-632(ra) # 800029b4 <_ZL9fibonaccim>
    80002c34:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80002c38:	00003517          	auipc	a0,0x3
    80002c3c:	48850513          	addi	a0,a0,1160 # 800060c0 <CONSOLE_STATUS+0xb0>
    80002c40:	00000097          	auipc	ra,0x0
    80002c44:	34c080e7          	jalr	844(ra) # 80002f8c <_Z11printStringPKc>
    80002c48:	00000613          	li	a2,0
    80002c4c:	00a00593          	li	a1,10
    80002c50:	0009051b          	sext.w	a0,s2
    80002c54:	00000097          	auipc	ra,0x0
    80002c58:	4e8080e7          	jalr	1256(ra) # 8000313c <_Z8printIntiii>
    80002c5c:	00003517          	auipc	a0,0x3
    80002c60:	68c50513          	addi	a0,a0,1676 # 800062e8 <CONSOLE_STATUS+0x2d8>
    80002c64:	00000097          	auipc	ra,0x0
    80002c68:	328080e7          	jalr	808(ra) # 80002f8c <_Z11printStringPKc>
    80002c6c:	0400006f          	j	80002cac <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80002c70:	00003517          	auipc	a0,0x3
    80002c74:	43050513          	addi	a0,a0,1072 # 800060a0 <CONSOLE_STATUS+0x90>
    80002c78:	00000097          	auipc	ra,0x0
    80002c7c:	314080e7          	jalr	788(ra) # 80002f8c <_Z11printStringPKc>
    80002c80:	00000613          	li	a2,0
    80002c84:	00a00593          	li	a1,10
    80002c88:	00048513          	mv	a0,s1
    80002c8c:	00000097          	auipc	ra,0x0
    80002c90:	4b0080e7          	jalr	1200(ra) # 8000313c <_Z8printIntiii>
    80002c94:	00003517          	auipc	a0,0x3
    80002c98:	65450513          	addi	a0,a0,1620 # 800062e8 <CONSOLE_STATUS+0x2d8>
    80002c9c:	00000097          	auipc	ra,0x0
    80002ca0:	2f0080e7          	jalr	752(ra) # 80002f8c <_Z11printStringPKc>
    for (; i < 6; i++) {
    80002ca4:	0014849b          	addiw	s1,s1,1
    80002ca8:	0ff4f493          	andi	s1,s1,255
    80002cac:	00500793          	li	a5,5
    80002cb0:	fc97f0e3          	bgeu	a5,s1,80002c70 <_ZL11workerBodyCPv+0x100>
    printString("C finished!\n");
    80002cb4:	00003517          	auipc	a0,0x3
    80002cb8:	4b450513          	addi	a0,a0,1204 # 80006168 <CONSOLE_STATUS+0x158>
    80002cbc:	00000097          	auipc	ra,0x0
    80002cc0:	2d0080e7          	jalr	720(ra) # 80002f8c <_Z11printStringPKc>
    finishedC = true;
    80002cc4:	00100793          	li	a5,1
    80002cc8:	00004717          	auipc	a4,0x4
    80002ccc:	60f70ea3          	sb	a5,1565(a4) # 800072e5 <_ZL9finishedC>
    thread_dispatch();
    80002cd0:	ffffe097          	auipc	ra,0xffffe
    80002cd4:	6ac080e7          	jalr	1708(ra) # 8000137c <_Z15thread_dispatchv>
}
    80002cd8:	01813083          	ld	ra,24(sp)
    80002cdc:	01013403          	ld	s0,16(sp)
    80002ce0:	00813483          	ld	s1,8(sp)
    80002ce4:	00013903          	ld	s2,0(sp)
    80002ce8:	02010113          	addi	sp,sp,32
    80002cec:	00008067          	ret

0000000080002cf0 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80002cf0:	fe010113          	addi	sp,sp,-32
    80002cf4:	00113c23          	sd	ra,24(sp)
    80002cf8:	00813823          	sd	s0,16(sp)
    80002cfc:	00913423          	sd	s1,8(sp)
    80002d00:	01213023          	sd	s2,0(sp)
    80002d04:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80002d08:	00000913          	li	s2,0
    80002d0c:	0380006f          	j	80002d44 <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    80002d10:	ffffe097          	auipc	ra,0xffffe
    80002d14:	66c080e7          	jalr	1644(ra) # 8000137c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80002d18:	00148493          	addi	s1,s1,1
    80002d1c:	000027b7          	lui	a5,0x2
    80002d20:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80002d24:	0097ee63          	bltu	a5,s1,80002d40 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80002d28:	00000713          	li	a4,0
    80002d2c:	000077b7          	lui	a5,0x7
    80002d30:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80002d34:	fce7eee3          	bltu	a5,a4,80002d10 <_ZL11workerBodyBPv+0x20>
    80002d38:	00170713          	addi	a4,a4,1
    80002d3c:	ff1ff06f          	j	80002d2c <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80002d40:	00190913          	addi	s2,s2,1
    80002d44:	00f00793          	li	a5,15
    80002d48:	0527e063          	bltu	a5,s2,80002d88 <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80002d4c:	00003517          	auipc	a0,0x3
    80002d50:	33c50513          	addi	a0,a0,828 # 80006088 <CONSOLE_STATUS+0x78>
    80002d54:	00000097          	auipc	ra,0x0
    80002d58:	238080e7          	jalr	568(ra) # 80002f8c <_Z11printStringPKc>
    80002d5c:	00000613          	li	a2,0
    80002d60:	00a00593          	li	a1,10
    80002d64:	0009051b          	sext.w	a0,s2
    80002d68:	00000097          	auipc	ra,0x0
    80002d6c:	3d4080e7          	jalr	980(ra) # 8000313c <_Z8printIntiii>
    80002d70:	00003517          	auipc	a0,0x3
    80002d74:	57850513          	addi	a0,a0,1400 # 800062e8 <CONSOLE_STATUS+0x2d8>
    80002d78:	00000097          	auipc	ra,0x0
    80002d7c:	214080e7          	jalr	532(ra) # 80002f8c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80002d80:	00000493          	li	s1,0
    80002d84:	f99ff06f          	j	80002d1c <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    80002d88:	00003517          	auipc	a0,0x3
    80002d8c:	30850513          	addi	a0,a0,776 # 80006090 <CONSOLE_STATUS+0x80>
    80002d90:	00000097          	auipc	ra,0x0
    80002d94:	1fc080e7          	jalr	508(ra) # 80002f8c <_Z11printStringPKc>
    finishedB = true;
    80002d98:	00100793          	li	a5,1
    80002d9c:	00004717          	auipc	a4,0x4
    80002da0:	54f70523          	sb	a5,1354(a4) # 800072e6 <_ZL9finishedB>
    thread_dispatch();
    80002da4:	ffffe097          	auipc	ra,0xffffe
    80002da8:	5d8080e7          	jalr	1496(ra) # 8000137c <_Z15thread_dispatchv>
}
    80002dac:	01813083          	ld	ra,24(sp)
    80002db0:	01013403          	ld	s0,16(sp)
    80002db4:	00813483          	ld	s1,8(sp)
    80002db8:	00013903          	ld	s2,0(sp)
    80002dbc:	02010113          	addi	sp,sp,32
    80002dc0:	00008067          	ret

0000000080002dc4 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80002dc4:	fe010113          	addi	sp,sp,-32
    80002dc8:	00113c23          	sd	ra,24(sp)
    80002dcc:	00813823          	sd	s0,16(sp)
    80002dd0:	00913423          	sd	s1,8(sp)
    80002dd4:	01213023          	sd	s2,0(sp)
    80002dd8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80002ddc:	00000913          	li	s2,0
    80002de0:	0380006f          	j	80002e18 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80002de4:	ffffe097          	auipc	ra,0xffffe
    80002de8:	598080e7          	jalr	1432(ra) # 8000137c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80002dec:	00148493          	addi	s1,s1,1
    80002df0:	000027b7          	lui	a5,0x2
    80002df4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80002df8:	0097ee63          	bltu	a5,s1,80002e14 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80002dfc:	00000713          	li	a4,0
    80002e00:	000077b7          	lui	a5,0x7
    80002e04:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80002e08:	fce7eee3          	bltu	a5,a4,80002de4 <_ZL11workerBodyAPv+0x20>
    80002e0c:	00170713          	addi	a4,a4,1
    80002e10:	ff1ff06f          	j	80002e00 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80002e14:	00190913          	addi	s2,s2,1
    80002e18:	00900793          	li	a5,9
    80002e1c:	0527e063          	bltu	a5,s2,80002e5c <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80002e20:	00003517          	auipc	a0,0x3
    80002e24:	25050513          	addi	a0,a0,592 # 80006070 <CONSOLE_STATUS+0x60>
    80002e28:	00000097          	auipc	ra,0x0
    80002e2c:	164080e7          	jalr	356(ra) # 80002f8c <_Z11printStringPKc>
    80002e30:	00000613          	li	a2,0
    80002e34:	00a00593          	li	a1,10
    80002e38:	0009051b          	sext.w	a0,s2
    80002e3c:	00000097          	auipc	ra,0x0
    80002e40:	300080e7          	jalr	768(ra) # 8000313c <_Z8printIntiii>
    80002e44:	00003517          	auipc	a0,0x3
    80002e48:	4a450513          	addi	a0,a0,1188 # 800062e8 <CONSOLE_STATUS+0x2d8>
    80002e4c:	00000097          	auipc	ra,0x0
    80002e50:	140080e7          	jalr	320(ra) # 80002f8c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80002e54:	00000493          	li	s1,0
    80002e58:	f99ff06f          	j	80002df0 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80002e5c:	00003517          	auipc	a0,0x3
    80002e60:	21c50513          	addi	a0,a0,540 # 80006078 <CONSOLE_STATUS+0x68>
    80002e64:	00000097          	auipc	ra,0x0
    80002e68:	128080e7          	jalr	296(ra) # 80002f8c <_Z11printStringPKc>
    finishedA = true;
    80002e6c:	00100793          	li	a5,1
    80002e70:	00004717          	auipc	a4,0x4
    80002e74:	46f70ba3          	sb	a5,1143(a4) # 800072e7 <_ZL9finishedA>
}
    80002e78:	01813083          	ld	ra,24(sp)
    80002e7c:	01013403          	ld	s0,16(sp)
    80002e80:	00813483          	ld	s1,8(sp)
    80002e84:	00013903          	ld	s2,0(sp)
    80002e88:	02010113          	addi	sp,sp,32
    80002e8c:	00008067          	ret

0000000080002e90 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80002e90:	fd010113          	addi	sp,sp,-48
    80002e94:	02113423          	sd	ra,40(sp)
    80002e98:	02813023          	sd	s0,32(sp)
    80002e9c:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80002ea0:	00000613          	li	a2,0
    80002ea4:	00000597          	auipc	a1,0x0
    80002ea8:	f2058593          	addi	a1,a1,-224 # 80002dc4 <_ZL11workerBodyAPv>
    80002eac:	fd040513          	addi	a0,s0,-48
    80002eb0:	ffffe097          	auipc	ra,0xffffe
    80002eb4:	454080e7          	jalr	1108(ra) # 80001304 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadA created\n");
    80002eb8:	00003517          	auipc	a0,0x3
    80002ebc:	25050513          	addi	a0,a0,592 # 80006108 <CONSOLE_STATUS+0xf8>
    80002ec0:	00000097          	auipc	ra,0x0
    80002ec4:	0cc080e7          	jalr	204(ra) # 80002f8c <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80002ec8:	00000613          	li	a2,0
    80002ecc:	00000597          	auipc	a1,0x0
    80002ed0:	e2458593          	addi	a1,a1,-476 # 80002cf0 <_ZL11workerBodyBPv>
    80002ed4:	fd840513          	addi	a0,s0,-40
    80002ed8:	ffffe097          	auipc	ra,0xffffe
    80002edc:	42c080e7          	jalr	1068(ra) # 80001304 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadB created\n");
    80002ee0:	00003517          	auipc	a0,0x3
    80002ee4:	24050513          	addi	a0,a0,576 # 80006120 <CONSOLE_STATUS+0x110>
    80002ee8:	00000097          	auipc	ra,0x0
    80002eec:	0a4080e7          	jalr	164(ra) # 80002f8c <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80002ef0:	00000613          	li	a2,0
    80002ef4:	00000597          	auipc	a1,0x0
    80002ef8:	c7c58593          	addi	a1,a1,-900 # 80002b70 <_ZL11workerBodyCPv>
    80002efc:	fe040513          	addi	a0,s0,-32
    80002f00:	ffffe097          	auipc	ra,0xffffe
    80002f04:	404080e7          	jalr	1028(ra) # 80001304 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadC created\n");
    80002f08:	00003517          	auipc	a0,0x3
    80002f0c:	23050513          	addi	a0,a0,560 # 80006138 <CONSOLE_STATUS+0x128>
    80002f10:	00000097          	auipc	ra,0x0
    80002f14:	07c080e7          	jalr	124(ra) # 80002f8c <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80002f18:	00000613          	li	a2,0
    80002f1c:	00000597          	auipc	a1,0x0
    80002f20:	b0c58593          	addi	a1,a1,-1268 # 80002a28 <_ZL11workerBodyDPv>
    80002f24:	fe840513          	addi	a0,s0,-24
    80002f28:	ffffe097          	auipc	ra,0xffffe
    80002f2c:	3dc080e7          	jalr	988(ra) # 80001304 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadD created\n");
    80002f30:	00003517          	auipc	a0,0x3
    80002f34:	22050513          	addi	a0,a0,544 # 80006150 <CONSOLE_STATUS+0x140>
    80002f38:	00000097          	auipc	ra,0x0
    80002f3c:	054080e7          	jalr	84(ra) # 80002f8c <_Z11printStringPKc>
    80002f40:	00c0006f          	j	80002f4c <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80002f44:	ffffe097          	auipc	ra,0xffffe
    80002f48:	438080e7          	jalr	1080(ra) # 8000137c <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80002f4c:	00004797          	auipc	a5,0x4
    80002f50:	39b7c783          	lbu	a5,923(a5) # 800072e7 <_ZL9finishedA>
    80002f54:	fe0788e3          	beqz	a5,80002f44 <_Z18Threads_C_API_testv+0xb4>
    80002f58:	00004797          	auipc	a5,0x4
    80002f5c:	38e7c783          	lbu	a5,910(a5) # 800072e6 <_ZL9finishedB>
    80002f60:	fe0782e3          	beqz	a5,80002f44 <_Z18Threads_C_API_testv+0xb4>
    80002f64:	00004797          	auipc	a5,0x4
    80002f68:	3817c783          	lbu	a5,897(a5) # 800072e5 <_ZL9finishedC>
    80002f6c:	fc078ce3          	beqz	a5,80002f44 <_Z18Threads_C_API_testv+0xb4>
    80002f70:	00004797          	auipc	a5,0x4
    80002f74:	3747c783          	lbu	a5,884(a5) # 800072e4 <_ZL9finishedD>
    80002f78:	fc0786e3          	beqz	a5,80002f44 <_Z18Threads_C_API_testv+0xb4>
    }

}
    80002f7c:	02813083          	ld	ra,40(sp)
    80002f80:	02013403          	ld	s0,32(sp)
    80002f84:	03010113          	addi	sp,sp,48
    80002f88:	00008067          	ret

0000000080002f8c <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80002f8c:	fe010113          	addi	sp,sp,-32
    80002f90:	00113c23          	sd	ra,24(sp)
    80002f94:	00813823          	sd	s0,16(sp)
    80002f98:	00913423          	sd	s1,8(sp)
    80002f9c:	02010413          	addi	s0,sp,32
    80002fa0:	00050493          	mv	s1,a0
    LOCK();
    80002fa4:	00100613          	li	a2,1
    80002fa8:	00000593          	li	a1,0
    80002fac:	00004517          	auipc	a0,0x4
    80002fb0:	33c50513          	addi	a0,a0,828 # 800072e8 <lockPrint>
    80002fb4:	ffffe097          	auipc	ra,0xffffe
    80002fb8:	298080e7          	jalr	664(ra) # 8000124c <copy_and_swap>
    80002fbc:	00050863          	beqz	a0,80002fcc <_Z11printStringPKc+0x40>
    80002fc0:	ffffe097          	auipc	ra,0xffffe
    80002fc4:	3bc080e7          	jalr	956(ra) # 8000137c <_Z15thread_dispatchv>
    80002fc8:	fddff06f          	j	80002fa4 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80002fcc:	0004c503          	lbu	a0,0(s1)
    80002fd0:	00050a63          	beqz	a0,80002fe4 <_Z11printStringPKc+0x58>
    {
        putc(*string);
    80002fd4:	fffff097          	auipc	ra,0xfffff
    80002fd8:	ff4080e7          	jalr	-12(ra) # 80001fc8 <_Z4putcc>
        string++;
    80002fdc:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80002fe0:	fedff06f          	j	80002fcc <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    80002fe4:	00000613          	li	a2,0
    80002fe8:	00100593          	li	a1,1
    80002fec:	00004517          	auipc	a0,0x4
    80002ff0:	2fc50513          	addi	a0,a0,764 # 800072e8 <lockPrint>
    80002ff4:	ffffe097          	auipc	ra,0xffffe
    80002ff8:	258080e7          	jalr	600(ra) # 8000124c <copy_and_swap>
    80002ffc:	fe0514e3          	bnez	a0,80002fe4 <_Z11printStringPKc+0x58>
}
    80003000:	01813083          	ld	ra,24(sp)
    80003004:	01013403          	ld	s0,16(sp)
    80003008:	00813483          	ld	s1,8(sp)
    8000300c:	02010113          	addi	sp,sp,32
    80003010:	00008067          	ret

0000000080003014 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80003014:	fd010113          	addi	sp,sp,-48
    80003018:	02113423          	sd	ra,40(sp)
    8000301c:	02813023          	sd	s0,32(sp)
    80003020:	00913c23          	sd	s1,24(sp)
    80003024:	01213823          	sd	s2,16(sp)
    80003028:	01313423          	sd	s3,8(sp)
    8000302c:	01413023          	sd	s4,0(sp)
    80003030:	03010413          	addi	s0,sp,48
    80003034:	00050993          	mv	s3,a0
    80003038:	00058a13          	mv	s4,a1
    LOCK();
    8000303c:	00100613          	li	a2,1
    80003040:	00000593          	li	a1,0
    80003044:	00004517          	auipc	a0,0x4
    80003048:	2a450513          	addi	a0,a0,676 # 800072e8 <lockPrint>
    8000304c:	ffffe097          	auipc	ra,0xffffe
    80003050:	200080e7          	jalr	512(ra) # 8000124c <copy_and_swap>
    80003054:	00050863          	beqz	a0,80003064 <_Z9getStringPci+0x50>
    80003058:	ffffe097          	auipc	ra,0xffffe
    8000305c:	324080e7          	jalr	804(ra) # 8000137c <_Z15thread_dispatchv>
    80003060:	fddff06f          	j	8000303c <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80003064:	00000913          	li	s2,0
    80003068:	00090493          	mv	s1,s2
    8000306c:	0019091b          	addiw	s2,s2,1
    80003070:	03495a63          	bge	s2,s4,800030a4 <_Z9getStringPci+0x90>
        cc = getc();
    80003074:	fffff097          	auipc	ra,0xfffff
    80003078:	f7c080e7          	jalr	-132(ra) # 80001ff0 <_Z4getcv>
        if(cc < 1)
    8000307c:	02050463          	beqz	a0,800030a4 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    80003080:	009984b3          	add	s1,s3,s1
    80003084:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80003088:	00a00793          	li	a5,10
    8000308c:	00f50a63          	beq	a0,a5,800030a0 <_Z9getStringPci+0x8c>
    80003090:	00d00793          	li	a5,13
    80003094:	fcf51ae3          	bne	a0,a5,80003068 <_Z9getStringPci+0x54>
        buf[i++] = c;
    80003098:	00090493          	mv	s1,s2
    8000309c:	0080006f          	j	800030a4 <_Z9getStringPci+0x90>
    800030a0:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    800030a4:	009984b3          	add	s1,s3,s1
    800030a8:	00048023          	sb	zero,0(s1)

    UNLOCK();
    800030ac:	00000613          	li	a2,0
    800030b0:	00100593          	li	a1,1
    800030b4:	00004517          	auipc	a0,0x4
    800030b8:	23450513          	addi	a0,a0,564 # 800072e8 <lockPrint>
    800030bc:	ffffe097          	auipc	ra,0xffffe
    800030c0:	190080e7          	jalr	400(ra) # 8000124c <copy_and_swap>
    800030c4:	fe0514e3          	bnez	a0,800030ac <_Z9getStringPci+0x98>
    return buf;
}
    800030c8:	00098513          	mv	a0,s3
    800030cc:	02813083          	ld	ra,40(sp)
    800030d0:	02013403          	ld	s0,32(sp)
    800030d4:	01813483          	ld	s1,24(sp)
    800030d8:	01013903          	ld	s2,16(sp)
    800030dc:	00813983          	ld	s3,8(sp)
    800030e0:	00013a03          	ld	s4,0(sp)
    800030e4:	03010113          	addi	sp,sp,48
    800030e8:	00008067          	ret

00000000800030ec <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    800030ec:	ff010113          	addi	sp,sp,-16
    800030f0:	00813423          	sd	s0,8(sp)
    800030f4:	01010413          	addi	s0,sp,16
    800030f8:	00050693          	mv	a3,a0
    int n;

    n = 0;
    800030fc:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80003100:	0006c603          	lbu	a2,0(a3)
    80003104:	fd06071b          	addiw	a4,a2,-48
    80003108:	0ff77713          	andi	a4,a4,255
    8000310c:	00900793          	li	a5,9
    80003110:	02e7e063          	bltu	a5,a4,80003130 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80003114:	0025179b          	slliw	a5,a0,0x2
    80003118:	00a787bb          	addw	a5,a5,a0
    8000311c:	0017979b          	slliw	a5,a5,0x1
    80003120:	00168693          	addi	a3,a3,1
    80003124:	00c787bb          	addw	a5,a5,a2
    80003128:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    8000312c:	fd5ff06f          	j	80003100 <_Z11stringToIntPKc+0x14>
    return n;
}
    80003130:	00813403          	ld	s0,8(sp)
    80003134:	01010113          	addi	sp,sp,16
    80003138:	00008067          	ret

000000008000313c <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    8000313c:	fc010113          	addi	sp,sp,-64
    80003140:	02113c23          	sd	ra,56(sp)
    80003144:	02813823          	sd	s0,48(sp)
    80003148:	02913423          	sd	s1,40(sp)
    8000314c:	03213023          	sd	s2,32(sp)
    80003150:	01313c23          	sd	s3,24(sp)
    80003154:	04010413          	addi	s0,sp,64
    80003158:	00050493          	mv	s1,a0
    8000315c:	00058913          	mv	s2,a1
    80003160:	00060993          	mv	s3,a2
    LOCK();
    80003164:	00100613          	li	a2,1
    80003168:	00000593          	li	a1,0
    8000316c:	00004517          	auipc	a0,0x4
    80003170:	17c50513          	addi	a0,a0,380 # 800072e8 <lockPrint>
    80003174:	ffffe097          	auipc	ra,0xffffe
    80003178:	0d8080e7          	jalr	216(ra) # 8000124c <copy_and_swap>
    8000317c:	00050863          	beqz	a0,8000318c <_Z8printIntiii+0x50>
    80003180:	ffffe097          	auipc	ra,0xffffe
    80003184:	1fc080e7          	jalr	508(ra) # 8000137c <_Z15thread_dispatchv>
    80003188:	fddff06f          	j	80003164 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    8000318c:	00098463          	beqz	s3,80003194 <_Z8printIntiii+0x58>
    80003190:	0804c463          	bltz	s1,80003218 <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80003194:	0004851b          	sext.w	a0,s1
    neg = 0;
    80003198:	00000593          	li	a1,0
    }

    i = 0;
    8000319c:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    800031a0:	0009079b          	sext.w	a5,s2
    800031a4:	0325773b          	remuw	a4,a0,s2
    800031a8:	00048613          	mv	a2,s1
    800031ac:	0014849b          	addiw	s1,s1,1
    800031b0:	02071693          	slli	a3,a4,0x20
    800031b4:	0206d693          	srli	a3,a3,0x20
    800031b8:	00004717          	auipc	a4,0x4
    800031bc:	04870713          	addi	a4,a4,72 # 80007200 <digits>
    800031c0:	00d70733          	add	a4,a4,a3
    800031c4:	00074683          	lbu	a3,0(a4)
    800031c8:	fd040713          	addi	a4,s0,-48
    800031cc:	00c70733          	add	a4,a4,a2
    800031d0:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    800031d4:	0005071b          	sext.w	a4,a0
    800031d8:	0325553b          	divuw	a0,a0,s2
    800031dc:	fcf772e3          	bgeu	a4,a5,800031a0 <_Z8printIntiii+0x64>
    if(neg)
    800031e0:	00058c63          	beqz	a1,800031f8 <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    800031e4:	fd040793          	addi	a5,s0,-48
    800031e8:	009784b3          	add	s1,a5,s1
    800031ec:	02d00793          	li	a5,45
    800031f0:	fef48823          	sb	a5,-16(s1)
    800031f4:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    800031f8:	fff4849b          	addiw	s1,s1,-1
    800031fc:	0204c463          	bltz	s1,80003224 <_Z8printIntiii+0xe8>
        putc(buf[i]);
    80003200:	fd040793          	addi	a5,s0,-48
    80003204:	009787b3          	add	a5,a5,s1
    80003208:	ff07c503          	lbu	a0,-16(a5)
    8000320c:	fffff097          	auipc	ra,0xfffff
    80003210:	dbc080e7          	jalr	-580(ra) # 80001fc8 <_Z4putcc>
    80003214:	fe5ff06f          	j	800031f8 <_Z8printIntiii+0xbc>
        x = -xx;
    80003218:	4090053b          	negw	a0,s1
        neg = 1;
    8000321c:	00100593          	li	a1,1
        x = -xx;
    80003220:	f7dff06f          	j	8000319c <_Z8printIntiii+0x60>

    UNLOCK();
    80003224:	00000613          	li	a2,0
    80003228:	00100593          	li	a1,1
    8000322c:	00004517          	auipc	a0,0x4
    80003230:	0bc50513          	addi	a0,a0,188 # 800072e8 <lockPrint>
    80003234:	ffffe097          	auipc	ra,0xffffe
    80003238:	018080e7          	jalr	24(ra) # 8000124c <copy_and_swap>
    8000323c:	fe0514e3          	bnez	a0,80003224 <_Z8printIntiii+0xe8>
    80003240:	03813083          	ld	ra,56(sp)
    80003244:	03013403          	ld	s0,48(sp)
    80003248:	02813483          	ld	s1,40(sp)
    8000324c:	02013903          	ld	s2,32(sp)
    80003250:	01813983          	ld	s3,24(sp)
    80003254:	04010113          	addi	sp,sp,64
    80003258:	00008067          	ret

000000008000325c <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    8000325c:	ff010113          	addi	sp,sp,-16
    80003260:	00113423          	sd	ra,8(sp)
    80003264:	00813023          	sd	s0,0(sp)
    80003268:	01010413          	addi	s0,sp,16
    printString("Unesite broj testa? [1-7]\n");
    8000326c:	00003517          	auipc	a0,0x3
    80003270:	f0c50513          	addi	a0,a0,-244 # 80006178 <CONSOLE_STATUS+0x168>
    80003274:	00000097          	auipc	ra,0x0
    80003278:	d18080e7          	jalr	-744(ra) # 80002f8c <_Z11printStringPKc>
    }

    switch (test) {
        case 1:
#if LEVEL_2_IMPLEMENTED == 1
            Threads_C_API_test();
    8000327c:	00000097          	auipc	ra,0x0
    80003280:	c14080e7          	jalr	-1004(ra) # 80002e90 <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    80003284:	00003517          	auipc	a0,0x3
    80003288:	f1450513          	addi	a0,a0,-236 # 80006198 <CONSOLE_STATUS+0x188>
    8000328c:	00000097          	auipc	ra,0x0
    80003290:	d00080e7          	jalr	-768(ra) # 80002f8c <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    80003294:	00813083          	ld	ra,8(sp)
    80003298:	00013403          	ld	s0,0(sp)
    8000329c:	01010113          	addi	sp,sp,16
    800032a0:	00008067          	ret

00000000800032a4 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800032a4:	fe010113          	addi	sp,sp,-32
    800032a8:	00113c23          	sd	ra,24(sp)
    800032ac:	00813823          	sd	s0,16(sp)
    800032b0:	00913423          	sd	s1,8(sp)
    800032b4:	01213023          	sd	s2,0(sp)
    800032b8:	02010413          	addi	s0,sp,32
    800032bc:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800032c0:	00100793          	li	a5,1
    800032c4:	02a7f863          	bgeu	a5,a0,800032f4 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800032c8:	00a00793          	li	a5,10
    800032cc:	02f577b3          	remu	a5,a0,a5
    800032d0:	02078e63          	beqz	a5,8000330c <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800032d4:	fff48513          	addi	a0,s1,-1
    800032d8:	00000097          	auipc	ra,0x0
    800032dc:	fcc080e7          	jalr	-52(ra) # 800032a4 <_ZL9fibonaccim>
    800032e0:	00050913          	mv	s2,a0
    800032e4:	ffe48513          	addi	a0,s1,-2
    800032e8:	00000097          	auipc	ra,0x0
    800032ec:	fbc080e7          	jalr	-68(ra) # 800032a4 <_ZL9fibonaccim>
    800032f0:	00a90533          	add	a0,s2,a0
}
    800032f4:	01813083          	ld	ra,24(sp)
    800032f8:	01013403          	ld	s0,16(sp)
    800032fc:	00813483          	ld	s1,8(sp)
    80003300:	00013903          	ld	s2,0(sp)
    80003304:	02010113          	addi	sp,sp,32
    80003308:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    8000330c:	ffffe097          	auipc	ra,0xffffe
    80003310:	070080e7          	jalr	112(ra) # 8000137c <_Z15thread_dispatchv>
    80003314:	fc1ff06f          	j	800032d4 <_ZL9fibonaccim+0x30>

0000000080003318 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80003318:	fe010113          	addi	sp,sp,-32
    8000331c:	00113c23          	sd	ra,24(sp)
    80003320:	00813823          	sd	s0,16(sp)
    80003324:	00913423          	sd	s1,8(sp)
    80003328:	01213023          	sd	s2,0(sp)
    8000332c:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80003330:	00a00493          	li	s1,10
    80003334:	0400006f          	j	80003374 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003338:	00003517          	auipc	a0,0x3
    8000333c:	d9850513          	addi	a0,a0,-616 # 800060d0 <CONSOLE_STATUS+0xc0>
    80003340:	00000097          	auipc	ra,0x0
    80003344:	c4c080e7          	jalr	-948(ra) # 80002f8c <_Z11printStringPKc>
    80003348:	00000613          	li	a2,0
    8000334c:	00a00593          	li	a1,10
    80003350:	00048513          	mv	a0,s1
    80003354:	00000097          	auipc	ra,0x0
    80003358:	de8080e7          	jalr	-536(ra) # 8000313c <_Z8printIntiii>
    8000335c:	00003517          	auipc	a0,0x3
    80003360:	f8c50513          	addi	a0,a0,-116 # 800062e8 <CONSOLE_STATUS+0x2d8>
    80003364:	00000097          	auipc	ra,0x0
    80003368:	c28080e7          	jalr	-984(ra) # 80002f8c <_Z11printStringPKc>
    for (; i < 13; i++) {
    8000336c:	0014849b          	addiw	s1,s1,1
    80003370:	0ff4f493          	andi	s1,s1,255
    80003374:	00c00793          	li	a5,12
    80003378:	fc97f0e3          	bgeu	a5,s1,80003338 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    8000337c:	00003517          	auipc	a0,0x3
    80003380:	d5c50513          	addi	a0,a0,-676 # 800060d8 <CONSOLE_STATUS+0xc8>
    80003384:	00000097          	auipc	ra,0x0
    80003388:	c08080e7          	jalr	-1016(ra) # 80002f8c <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    8000338c:	00500313          	li	t1,5
    thread_dispatch();
    80003390:	ffffe097          	auipc	ra,0xffffe
    80003394:	fec080e7          	jalr	-20(ra) # 8000137c <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80003398:	01000513          	li	a0,16
    8000339c:	00000097          	auipc	ra,0x0
    800033a0:	f08080e7          	jalr	-248(ra) # 800032a4 <_ZL9fibonaccim>
    800033a4:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800033a8:	00003517          	auipc	a0,0x3
    800033ac:	d4050513          	addi	a0,a0,-704 # 800060e8 <CONSOLE_STATUS+0xd8>
    800033b0:	00000097          	auipc	ra,0x0
    800033b4:	bdc080e7          	jalr	-1060(ra) # 80002f8c <_Z11printStringPKc>
    800033b8:	00000613          	li	a2,0
    800033bc:	00a00593          	li	a1,10
    800033c0:	0009051b          	sext.w	a0,s2
    800033c4:	00000097          	auipc	ra,0x0
    800033c8:	d78080e7          	jalr	-648(ra) # 8000313c <_Z8printIntiii>
    800033cc:	00003517          	auipc	a0,0x3
    800033d0:	f1c50513          	addi	a0,a0,-228 # 800062e8 <CONSOLE_STATUS+0x2d8>
    800033d4:	00000097          	auipc	ra,0x0
    800033d8:	bb8080e7          	jalr	-1096(ra) # 80002f8c <_Z11printStringPKc>
    800033dc:	0400006f          	j	8000341c <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800033e0:	00003517          	auipc	a0,0x3
    800033e4:	cf050513          	addi	a0,a0,-784 # 800060d0 <CONSOLE_STATUS+0xc0>
    800033e8:	00000097          	auipc	ra,0x0
    800033ec:	ba4080e7          	jalr	-1116(ra) # 80002f8c <_Z11printStringPKc>
    800033f0:	00000613          	li	a2,0
    800033f4:	00a00593          	li	a1,10
    800033f8:	00048513          	mv	a0,s1
    800033fc:	00000097          	auipc	ra,0x0
    80003400:	d40080e7          	jalr	-704(ra) # 8000313c <_Z8printIntiii>
    80003404:	00003517          	auipc	a0,0x3
    80003408:	ee450513          	addi	a0,a0,-284 # 800062e8 <CONSOLE_STATUS+0x2d8>
    8000340c:	00000097          	auipc	ra,0x0
    80003410:	b80080e7          	jalr	-1152(ra) # 80002f8c <_Z11printStringPKc>
    for (; i < 16; i++) {
    80003414:	0014849b          	addiw	s1,s1,1
    80003418:	0ff4f493          	andi	s1,s1,255
    8000341c:	00f00793          	li	a5,15
    80003420:	fc97f0e3          	bgeu	a5,s1,800033e0 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80003424:	00003517          	auipc	a0,0x3
    80003428:	cd450513          	addi	a0,a0,-812 # 800060f8 <CONSOLE_STATUS+0xe8>
    8000342c:	00000097          	auipc	ra,0x0
    80003430:	b60080e7          	jalr	-1184(ra) # 80002f8c <_Z11printStringPKc>
    finishedD = true;
    80003434:	00100793          	li	a5,1
    80003438:	00004717          	auipc	a4,0x4
    8000343c:	eaf70c23          	sb	a5,-328(a4) # 800072f0 <_ZL9finishedD>
    thread_dispatch();
    80003440:	ffffe097          	auipc	ra,0xffffe
    80003444:	f3c080e7          	jalr	-196(ra) # 8000137c <_Z15thread_dispatchv>
}
    80003448:	01813083          	ld	ra,24(sp)
    8000344c:	01013403          	ld	s0,16(sp)
    80003450:	00813483          	ld	s1,8(sp)
    80003454:	00013903          	ld	s2,0(sp)
    80003458:	02010113          	addi	sp,sp,32
    8000345c:	00008067          	ret

0000000080003460 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80003460:	fe010113          	addi	sp,sp,-32
    80003464:	00113c23          	sd	ra,24(sp)
    80003468:	00813823          	sd	s0,16(sp)
    8000346c:	00913423          	sd	s1,8(sp)
    80003470:	01213023          	sd	s2,0(sp)
    80003474:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80003478:	00000493          	li	s1,0
    8000347c:	0400006f          	j	800034bc <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80003480:	00003517          	auipc	a0,0x3
    80003484:	c2050513          	addi	a0,a0,-992 # 800060a0 <CONSOLE_STATUS+0x90>
    80003488:	00000097          	auipc	ra,0x0
    8000348c:	b04080e7          	jalr	-1276(ra) # 80002f8c <_Z11printStringPKc>
    80003490:	00000613          	li	a2,0
    80003494:	00a00593          	li	a1,10
    80003498:	00048513          	mv	a0,s1
    8000349c:	00000097          	auipc	ra,0x0
    800034a0:	ca0080e7          	jalr	-864(ra) # 8000313c <_Z8printIntiii>
    800034a4:	00003517          	auipc	a0,0x3
    800034a8:	e4450513          	addi	a0,a0,-444 # 800062e8 <CONSOLE_STATUS+0x2d8>
    800034ac:	00000097          	auipc	ra,0x0
    800034b0:	ae0080e7          	jalr	-1312(ra) # 80002f8c <_Z11printStringPKc>
    for (; i < 3; i++) {
    800034b4:	0014849b          	addiw	s1,s1,1
    800034b8:	0ff4f493          	andi	s1,s1,255
    800034bc:	00200793          	li	a5,2
    800034c0:	fc97f0e3          	bgeu	a5,s1,80003480 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    800034c4:	00003517          	auipc	a0,0x3
    800034c8:	be450513          	addi	a0,a0,-1052 # 800060a8 <CONSOLE_STATUS+0x98>
    800034cc:	00000097          	auipc	ra,0x0
    800034d0:	ac0080e7          	jalr	-1344(ra) # 80002f8c <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800034d4:	00700313          	li	t1,7
    thread_dispatch();
    800034d8:	ffffe097          	auipc	ra,0xffffe
    800034dc:	ea4080e7          	jalr	-348(ra) # 8000137c <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800034e0:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    800034e4:	00003517          	auipc	a0,0x3
    800034e8:	bd450513          	addi	a0,a0,-1068 # 800060b8 <CONSOLE_STATUS+0xa8>
    800034ec:	00000097          	auipc	ra,0x0
    800034f0:	aa0080e7          	jalr	-1376(ra) # 80002f8c <_Z11printStringPKc>
    800034f4:	00000613          	li	a2,0
    800034f8:	00a00593          	li	a1,10
    800034fc:	0009051b          	sext.w	a0,s2
    80003500:	00000097          	auipc	ra,0x0
    80003504:	c3c080e7          	jalr	-964(ra) # 8000313c <_Z8printIntiii>
    80003508:	00003517          	auipc	a0,0x3
    8000350c:	de050513          	addi	a0,a0,-544 # 800062e8 <CONSOLE_STATUS+0x2d8>
    80003510:	00000097          	auipc	ra,0x0
    80003514:	a7c080e7          	jalr	-1412(ra) # 80002f8c <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80003518:	00c00513          	li	a0,12
    8000351c:	00000097          	auipc	ra,0x0
    80003520:	d88080e7          	jalr	-632(ra) # 800032a4 <_ZL9fibonaccim>
    80003524:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80003528:	00003517          	auipc	a0,0x3
    8000352c:	b9850513          	addi	a0,a0,-1128 # 800060c0 <CONSOLE_STATUS+0xb0>
    80003530:	00000097          	auipc	ra,0x0
    80003534:	a5c080e7          	jalr	-1444(ra) # 80002f8c <_Z11printStringPKc>
    80003538:	00000613          	li	a2,0
    8000353c:	00a00593          	li	a1,10
    80003540:	0009051b          	sext.w	a0,s2
    80003544:	00000097          	auipc	ra,0x0
    80003548:	bf8080e7          	jalr	-1032(ra) # 8000313c <_Z8printIntiii>
    8000354c:	00003517          	auipc	a0,0x3
    80003550:	d9c50513          	addi	a0,a0,-612 # 800062e8 <CONSOLE_STATUS+0x2d8>
    80003554:	00000097          	auipc	ra,0x0
    80003558:	a38080e7          	jalr	-1480(ra) # 80002f8c <_Z11printStringPKc>
    8000355c:	0400006f          	j	8000359c <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80003560:	00003517          	auipc	a0,0x3
    80003564:	b4050513          	addi	a0,a0,-1216 # 800060a0 <CONSOLE_STATUS+0x90>
    80003568:	00000097          	auipc	ra,0x0
    8000356c:	a24080e7          	jalr	-1500(ra) # 80002f8c <_Z11printStringPKc>
    80003570:	00000613          	li	a2,0
    80003574:	00a00593          	li	a1,10
    80003578:	00048513          	mv	a0,s1
    8000357c:	00000097          	auipc	ra,0x0
    80003580:	bc0080e7          	jalr	-1088(ra) # 8000313c <_Z8printIntiii>
    80003584:	00003517          	auipc	a0,0x3
    80003588:	d6450513          	addi	a0,a0,-668 # 800062e8 <CONSOLE_STATUS+0x2d8>
    8000358c:	00000097          	auipc	ra,0x0
    80003590:	a00080e7          	jalr	-1536(ra) # 80002f8c <_Z11printStringPKc>
    for (; i < 6; i++) {
    80003594:	0014849b          	addiw	s1,s1,1
    80003598:	0ff4f493          	andi	s1,s1,255
    8000359c:	00500793          	li	a5,5
    800035a0:	fc97f0e3          	bgeu	a5,s1,80003560 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    800035a4:	00003517          	auipc	a0,0x3
    800035a8:	ad450513          	addi	a0,a0,-1324 # 80006078 <CONSOLE_STATUS+0x68>
    800035ac:	00000097          	auipc	ra,0x0
    800035b0:	9e0080e7          	jalr	-1568(ra) # 80002f8c <_Z11printStringPKc>
    finishedC = true;
    800035b4:	00100793          	li	a5,1
    800035b8:	00004717          	auipc	a4,0x4
    800035bc:	d2f70ca3          	sb	a5,-711(a4) # 800072f1 <_ZL9finishedC>
    thread_dispatch();
    800035c0:	ffffe097          	auipc	ra,0xffffe
    800035c4:	dbc080e7          	jalr	-580(ra) # 8000137c <_Z15thread_dispatchv>
}
    800035c8:	01813083          	ld	ra,24(sp)
    800035cc:	01013403          	ld	s0,16(sp)
    800035d0:	00813483          	ld	s1,8(sp)
    800035d4:	00013903          	ld	s2,0(sp)
    800035d8:	02010113          	addi	sp,sp,32
    800035dc:	00008067          	ret

00000000800035e0 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    800035e0:	fe010113          	addi	sp,sp,-32
    800035e4:	00113c23          	sd	ra,24(sp)
    800035e8:	00813823          	sd	s0,16(sp)
    800035ec:	00913423          	sd	s1,8(sp)
    800035f0:	01213023          	sd	s2,0(sp)
    800035f4:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800035f8:	00000913          	li	s2,0
    800035fc:	0400006f          	j	8000363c <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    80003600:	ffffe097          	auipc	ra,0xffffe
    80003604:	d7c080e7          	jalr	-644(ra) # 8000137c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003608:	00148493          	addi	s1,s1,1
    8000360c:	000027b7          	lui	a5,0x2
    80003610:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003614:	0097ee63          	bltu	a5,s1,80003630 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003618:	00000713          	li	a4,0
    8000361c:	000077b7          	lui	a5,0x7
    80003620:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003624:	fce7eee3          	bltu	a5,a4,80003600 <_ZL11workerBodyBPv+0x20>
    80003628:	00170713          	addi	a4,a4,1
    8000362c:	ff1ff06f          	j	8000361c <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    80003630:	00a00793          	li	a5,10
    80003634:	04f90663          	beq	s2,a5,80003680 <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    80003638:	00190913          	addi	s2,s2,1
    8000363c:	00f00793          	li	a5,15
    80003640:	0527e463          	bltu	a5,s2,80003688 <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    80003644:	00003517          	auipc	a0,0x3
    80003648:	a4450513          	addi	a0,a0,-1468 # 80006088 <CONSOLE_STATUS+0x78>
    8000364c:	00000097          	auipc	ra,0x0
    80003650:	940080e7          	jalr	-1728(ra) # 80002f8c <_Z11printStringPKc>
    80003654:	00000613          	li	a2,0
    80003658:	00a00593          	li	a1,10
    8000365c:	0009051b          	sext.w	a0,s2
    80003660:	00000097          	auipc	ra,0x0
    80003664:	adc080e7          	jalr	-1316(ra) # 8000313c <_Z8printIntiii>
    80003668:	00003517          	auipc	a0,0x3
    8000366c:	c8050513          	addi	a0,a0,-896 # 800062e8 <CONSOLE_STATUS+0x2d8>
    80003670:	00000097          	auipc	ra,0x0
    80003674:	91c080e7          	jalr	-1764(ra) # 80002f8c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003678:	00000493          	li	s1,0
    8000367c:	f91ff06f          	j	8000360c <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    80003680:	14102ff3          	csrr	t6,sepc
    80003684:	fb5ff06f          	j	80003638 <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    80003688:	00003517          	auipc	a0,0x3
    8000368c:	a0850513          	addi	a0,a0,-1528 # 80006090 <CONSOLE_STATUS+0x80>
    80003690:	00000097          	auipc	ra,0x0
    80003694:	8fc080e7          	jalr	-1796(ra) # 80002f8c <_Z11printStringPKc>
    finishedB = true;
    80003698:	00100793          	li	a5,1
    8000369c:	00004717          	auipc	a4,0x4
    800036a0:	c4f70b23          	sb	a5,-938(a4) # 800072f2 <_ZL9finishedB>
    thread_dispatch();
    800036a4:	ffffe097          	auipc	ra,0xffffe
    800036a8:	cd8080e7          	jalr	-808(ra) # 8000137c <_Z15thread_dispatchv>
}
    800036ac:	01813083          	ld	ra,24(sp)
    800036b0:	01013403          	ld	s0,16(sp)
    800036b4:	00813483          	ld	s1,8(sp)
    800036b8:	00013903          	ld	s2,0(sp)
    800036bc:	02010113          	addi	sp,sp,32
    800036c0:	00008067          	ret

00000000800036c4 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    800036c4:	fe010113          	addi	sp,sp,-32
    800036c8:	00113c23          	sd	ra,24(sp)
    800036cc:	00813823          	sd	s0,16(sp)
    800036d0:	00913423          	sd	s1,8(sp)
    800036d4:	01213023          	sd	s2,0(sp)
    800036d8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800036dc:	00000913          	li	s2,0
    800036e0:	0380006f          	j	80003718 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    800036e4:	ffffe097          	auipc	ra,0xffffe
    800036e8:	c98080e7          	jalr	-872(ra) # 8000137c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800036ec:	00148493          	addi	s1,s1,1
    800036f0:	000027b7          	lui	a5,0x2
    800036f4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800036f8:	0097ee63          	bltu	a5,s1,80003714 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800036fc:	00000713          	li	a4,0
    80003700:	000077b7          	lui	a5,0x7
    80003704:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003708:	fce7eee3          	bltu	a5,a4,800036e4 <_ZL11workerBodyAPv+0x20>
    8000370c:	00170713          	addi	a4,a4,1
    80003710:	ff1ff06f          	j	80003700 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80003714:	00190913          	addi	s2,s2,1
    80003718:	00900793          	li	a5,9
    8000371c:	0527e063          	bltu	a5,s2,8000375c <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80003720:	00003517          	auipc	a0,0x3
    80003724:	95050513          	addi	a0,a0,-1712 # 80006070 <CONSOLE_STATUS+0x60>
    80003728:	00000097          	auipc	ra,0x0
    8000372c:	864080e7          	jalr	-1948(ra) # 80002f8c <_Z11printStringPKc>
    80003730:	00000613          	li	a2,0
    80003734:	00a00593          	li	a1,10
    80003738:	0009051b          	sext.w	a0,s2
    8000373c:	00000097          	auipc	ra,0x0
    80003740:	a00080e7          	jalr	-1536(ra) # 8000313c <_Z8printIntiii>
    80003744:	00003517          	auipc	a0,0x3
    80003748:	ba450513          	addi	a0,a0,-1116 # 800062e8 <CONSOLE_STATUS+0x2d8>
    8000374c:	00000097          	auipc	ra,0x0
    80003750:	840080e7          	jalr	-1984(ra) # 80002f8c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003754:	00000493          	li	s1,0
    80003758:	f99ff06f          	j	800036f0 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    8000375c:	00003517          	auipc	a0,0x3
    80003760:	91c50513          	addi	a0,a0,-1764 # 80006078 <CONSOLE_STATUS+0x68>
    80003764:	00000097          	auipc	ra,0x0
    80003768:	828080e7          	jalr	-2008(ra) # 80002f8c <_Z11printStringPKc>
    finishedA = true;
    8000376c:	00100793          	li	a5,1
    80003770:	00004717          	auipc	a4,0x4
    80003774:	b8f701a3          	sb	a5,-1149(a4) # 800072f3 <_ZL9finishedA>
}
    80003778:	01813083          	ld	ra,24(sp)
    8000377c:	01013403          	ld	s0,16(sp)
    80003780:	00813483          	ld	s1,8(sp)
    80003784:	00013903          	ld	s2,0(sp)
    80003788:	02010113          	addi	sp,sp,32
    8000378c:	00008067          	ret

0000000080003790 <_Z16System_Mode_testv>:


void System_Mode_test() {
    80003790:	fd010113          	addi	sp,sp,-48
    80003794:	02113423          	sd	ra,40(sp)
    80003798:	02813023          	sd	s0,32(sp)
    8000379c:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    800037a0:	00000613          	li	a2,0
    800037a4:	00000597          	auipc	a1,0x0
    800037a8:	f2058593          	addi	a1,a1,-224 # 800036c4 <_ZL11workerBodyAPv>
    800037ac:	fd040513          	addi	a0,s0,-48
    800037b0:	ffffe097          	auipc	ra,0xffffe
    800037b4:	b54080e7          	jalr	-1196(ra) # 80001304 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadA created\n");
    800037b8:	00003517          	auipc	a0,0x3
    800037bc:	95050513          	addi	a0,a0,-1712 # 80006108 <CONSOLE_STATUS+0xf8>
    800037c0:	fffff097          	auipc	ra,0xfffff
    800037c4:	7cc080e7          	jalr	1996(ra) # 80002f8c <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    800037c8:	00000613          	li	a2,0
    800037cc:	00000597          	auipc	a1,0x0
    800037d0:	e1458593          	addi	a1,a1,-492 # 800035e0 <_ZL11workerBodyBPv>
    800037d4:	fd840513          	addi	a0,s0,-40
    800037d8:	ffffe097          	auipc	ra,0xffffe
    800037dc:	b2c080e7          	jalr	-1236(ra) # 80001304 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadB created\n");
    800037e0:	00003517          	auipc	a0,0x3
    800037e4:	94050513          	addi	a0,a0,-1728 # 80006120 <CONSOLE_STATUS+0x110>
    800037e8:	fffff097          	auipc	ra,0xfffff
    800037ec:	7a4080e7          	jalr	1956(ra) # 80002f8c <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    800037f0:	00000613          	li	a2,0
    800037f4:	00000597          	auipc	a1,0x0
    800037f8:	c6c58593          	addi	a1,a1,-916 # 80003460 <_ZL11workerBodyCPv>
    800037fc:	fe040513          	addi	a0,s0,-32
    80003800:	ffffe097          	auipc	ra,0xffffe
    80003804:	b04080e7          	jalr	-1276(ra) # 80001304 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadC created\n");
    80003808:	00003517          	auipc	a0,0x3
    8000380c:	93050513          	addi	a0,a0,-1744 # 80006138 <CONSOLE_STATUS+0x128>
    80003810:	fffff097          	auipc	ra,0xfffff
    80003814:	77c080e7          	jalr	1916(ra) # 80002f8c <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80003818:	00000613          	li	a2,0
    8000381c:	00000597          	auipc	a1,0x0
    80003820:	afc58593          	addi	a1,a1,-1284 # 80003318 <_ZL11workerBodyDPv>
    80003824:	fe840513          	addi	a0,s0,-24
    80003828:	ffffe097          	auipc	ra,0xffffe
    8000382c:	adc080e7          	jalr	-1316(ra) # 80001304 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadD created\n");
    80003830:	00003517          	auipc	a0,0x3
    80003834:	92050513          	addi	a0,a0,-1760 # 80006150 <CONSOLE_STATUS+0x140>
    80003838:	fffff097          	auipc	ra,0xfffff
    8000383c:	754080e7          	jalr	1876(ra) # 80002f8c <_Z11printStringPKc>
    80003840:	00c0006f          	j	8000384c <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80003844:	ffffe097          	auipc	ra,0xffffe
    80003848:	b38080e7          	jalr	-1224(ra) # 8000137c <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    8000384c:	00004797          	auipc	a5,0x4
    80003850:	aa77c783          	lbu	a5,-1369(a5) # 800072f3 <_ZL9finishedA>
    80003854:	fe0788e3          	beqz	a5,80003844 <_Z16System_Mode_testv+0xb4>
    80003858:	00004797          	auipc	a5,0x4
    8000385c:	a9a7c783          	lbu	a5,-1382(a5) # 800072f2 <_ZL9finishedB>
    80003860:	fe0782e3          	beqz	a5,80003844 <_Z16System_Mode_testv+0xb4>
    80003864:	00004797          	auipc	a5,0x4
    80003868:	a8d7c783          	lbu	a5,-1395(a5) # 800072f1 <_ZL9finishedC>
    8000386c:	fc078ce3          	beqz	a5,80003844 <_Z16System_Mode_testv+0xb4>
    80003870:	00004797          	auipc	a5,0x4
    80003874:	a807c783          	lbu	a5,-1408(a5) # 800072f0 <_ZL9finishedD>
    80003878:	fc0786e3          	beqz	a5,80003844 <_Z16System_Mode_testv+0xb4>
    }

}
    8000387c:	02813083          	ld	ra,40(sp)
    80003880:	02013403          	ld	s0,32(sp)
    80003884:	03010113          	addi	sp,sp,48
    80003888:	00008067          	ret

000000008000388c <start>:
    8000388c:	ff010113          	addi	sp,sp,-16
    80003890:	00813423          	sd	s0,8(sp)
    80003894:	01010413          	addi	s0,sp,16
    80003898:	300027f3          	csrr	a5,mstatus
    8000389c:	ffffe737          	lui	a4,0xffffe
    800038a0:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff629f>
    800038a4:	00e7f7b3          	and	a5,a5,a4
    800038a8:	00001737          	lui	a4,0x1
    800038ac:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    800038b0:	00e7e7b3          	or	a5,a5,a4
    800038b4:	30079073          	csrw	mstatus,a5
    800038b8:	00000797          	auipc	a5,0x0
    800038bc:	16078793          	addi	a5,a5,352 # 80003a18 <system_main>
    800038c0:	34179073          	csrw	mepc,a5
    800038c4:	00000793          	li	a5,0
    800038c8:	18079073          	csrw	satp,a5
    800038cc:	000107b7          	lui	a5,0x10
    800038d0:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800038d4:	30279073          	csrw	medeleg,a5
    800038d8:	30379073          	csrw	mideleg,a5
    800038dc:	104027f3          	csrr	a5,sie
    800038e0:	2227e793          	ori	a5,a5,546
    800038e4:	10479073          	csrw	sie,a5
    800038e8:	fff00793          	li	a5,-1
    800038ec:	00a7d793          	srli	a5,a5,0xa
    800038f0:	3b079073          	csrw	pmpaddr0,a5
    800038f4:	00f00793          	li	a5,15
    800038f8:	3a079073          	csrw	pmpcfg0,a5
    800038fc:	f14027f3          	csrr	a5,mhartid
    80003900:	0200c737          	lui	a4,0x200c
    80003904:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80003908:	0007869b          	sext.w	a3,a5
    8000390c:	00269713          	slli	a4,a3,0x2
    80003910:	000f4637          	lui	a2,0xf4
    80003914:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80003918:	00d70733          	add	a4,a4,a3
    8000391c:	0037979b          	slliw	a5,a5,0x3
    80003920:	020046b7          	lui	a3,0x2004
    80003924:	00d787b3          	add	a5,a5,a3
    80003928:	00c585b3          	add	a1,a1,a2
    8000392c:	00371693          	slli	a3,a4,0x3
    80003930:	00004717          	auipc	a4,0x4
    80003934:	9d070713          	addi	a4,a4,-1584 # 80007300 <timer_scratch>
    80003938:	00b7b023          	sd	a1,0(a5)
    8000393c:	00d70733          	add	a4,a4,a3
    80003940:	00f73c23          	sd	a5,24(a4)
    80003944:	02c73023          	sd	a2,32(a4)
    80003948:	34071073          	csrw	mscratch,a4
    8000394c:	00000797          	auipc	a5,0x0
    80003950:	6e478793          	addi	a5,a5,1764 # 80004030 <timervec>
    80003954:	30579073          	csrw	mtvec,a5
    80003958:	300027f3          	csrr	a5,mstatus
    8000395c:	0087e793          	ori	a5,a5,8
    80003960:	30079073          	csrw	mstatus,a5
    80003964:	304027f3          	csrr	a5,mie
    80003968:	0807e793          	ori	a5,a5,128
    8000396c:	30479073          	csrw	mie,a5
    80003970:	f14027f3          	csrr	a5,mhartid
    80003974:	0007879b          	sext.w	a5,a5
    80003978:	00078213          	mv	tp,a5
    8000397c:	30200073          	mret
    80003980:	00813403          	ld	s0,8(sp)
    80003984:	01010113          	addi	sp,sp,16
    80003988:	00008067          	ret

000000008000398c <timerinit>:
    8000398c:	ff010113          	addi	sp,sp,-16
    80003990:	00813423          	sd	s0,8(sp)
    80003994:	01010413          	addi	s0,sp,16
    80003998:	f14027f3          	csrr	a5,mhartid
    8000399c:	0200c737          	lui	a4,0x200c
    800039a0:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800039a4:	0007869b          	sext.w	a3,a5
    800039a8:	00269713          	slli	a4,a3,0x2
    800039ac:	000f4637          	lui	a2,0xf4
    800039b0:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800039b4:	00d70733          	add	a4,a4,a3
    800039b8:	0037979b          	slliw	a5,a5,0x3
    800039bc:	020046b7          	lui	a3,0x2004
    800039c0:	00d787b3          	add	a5,a5,a3
    800039c4:	00c585b3          	add	a1,a1,a2
    800039c8:	00371693          	slli	a3,a4,0x3
    800039cc:	00004717          	auipc	a4,0x4
    800039d0:	93470713          	addi	a4,a4,-1740 # 80007300 <timer_scratch>
    800039d4:	00b7b023          	sd	a1,0(a5)
    800039d8:	00d70733          	add	a4,a4,a3
    800039dc:	00f73c23          	sd	a5,24(a4)
    800039e0:	02c73023          	sd	a2,32(a4)
    800039e4:	34071073          	csrw	mscratch,a4
    800039e8:	00000797          	auipc	a5,0x0
    800039ec:	64878793          	addi	a5,a5,1608 # 80004030 <timervec>
    800039f0:	30579073          	csrw	mtvec,a5
    800039f4:	300027f3          	csrr	a5,mstatus
    800039f8:	0087e793          	ori	a5,a5,8
    800039fc:	30079073          	csrw	mstatus,a5
    80003a00:	304027f3          	csrr	a5,mie
    80003a04:	0807e793          	ori	a5,a5,128
    80003a08:	30479073          	csrw	mie,a5
    80003a0c:	00813403          	ld	s0,8(sp)
    80003a10:	01010113          	addi	sp,sp,16
    80003a14:	00008067          	ret

0000000080003a18 <system_main>:
    80003a18:	fe010113          	addi	sp,sp,-32
    80003a1c:	00813823          	sd	s0,16(sp)
    80003a20:	00913423          	sd	s1,8(sp)
    80003a24:	00113c23          	sd	ra,24(sp)
    80003a28:	02010413          	addi	s0,sp,32
    80003a2c:	00000097          	auipc	ra,0x0
    80003a30:	0c4080e7          	jalr	196(ra) # 80003af0 <cpuid>
    80003a34:	00004497          	auipc	s1,0x4
    80003a38:	84c48493          	addi	s1,s1,-1972 # 80007280 <started>
    80003a3c:	02050263          	beqz	a0,80003a60 <system_main+0x48>
    80003a40:	0004a783          	lw	a5,0(s1)
    80003a44:	0007879b          	sext.w	a5,a5
    80003a48:	fe078ce3          	beqz	a5,80003a40 <system_main+0x28>
    80003a4c:	0ff0000f          	fence
    80003a50:	00002517          	auipc	a0,0x2
    80003a54:	7b850513          	addi	a0,a0,1976 # 80006208 <CONSOLE_STATUS+0x1f8>
    80003a58:	00001097          	auipc	ra,0x1
    80003a5c:	a74080e7          	jalr	-1420(ra) # 800044cc <panic>
    80003a60:	00001097          	auipc	ra,0x1
    80003a64:	9c8080e7          	jalr	-1592(ra) # 80004428 <consoleinit>
    80003a68:	00001097          	auipc	ra,0x1
    80003a6c:	154080e7          	jalr	340(ra) # 80004bbc <printfinit>
    80003a70:	00003517          	auipc	a0,0x3
    80003a74:	87850513          	addi	a0,a0,-1928 # 800062e8 <CONSOLE_STATUS+0x2d8>
    80003a78:	00001097          	auipc	ra,0x1
    80003a7c:	ab0080e7          	jalr	-1360(ra) # 80004528 <__printf>
    80003a80:	00002517          	auipc	a0,0x2
    80003a84:	75850513          	addi	a0,a0,1880 # 800061d8 <CONSOLE_STATUS+0x1c8>
    80003a88:	00001097          	auipc	ra,0x1
    80003a8c:	aa0080e7          	jalr	-1376(ra) # 80004528 <__printf>
    80003a90:	00003517          	auipc	a0,0x3
    80003a94:	85850513          	addi	a0,a0,-1960 # 800062e8 <CONSOLE_STATUS+0x2d8>
    80003a98:	00001097          	auipc	ra,0x1
    80003a9c:	a90080e7          	jalr	-1392(ra) # 80004528 <__printf>
    80003aa0:	00001097          	auipc	ra,0x1
    80003aa4:	4a8080e7          	jalr	1192(ra) # 80004f48 <kinit>
    80003aa8:	00000097          	auipc	ra,0x0
    80003aac:	148080e7          	jalr	328(ra) # 80003bf0 <trapinit>
    80003ab0:	00000097          	auipc	ra,0x0
    80003ab4:	16c080e7          	jalr	364(ra) # 80003c1c <trapinithart>
    80003ab8:	00000097          	auipc	ra,0x0
    80003abc:	5b8080e7          	jalr	1464(ra) # 80004070 <plicinit>
    80003ac0:	00000097          	auipc	ra,0x0
    80003ac4:	5d8080e7          	jalr	1496(ra) # 80004098 <plicinithart>
    80003ac8:	00000097          	auipc	ra,0x0
    80003acc:	078080e7          	jalr	120(ra) # 80003b40 <userinit>
    80003ad0:	0ff0000f          	fence
    80003ad4:	00100793          	li	a5,1
    80003ad8:	00002517          	auipc	a0,0x2
    80003adc:	71850513          	addi	a0,a0,1816 # 800061f0 <CONSOLE_STATUS+0x1e0>
    80003ae0:	00f4a023          	sw	a5,0(s1)
    80003ae4:	00001097          	auipc	ra,0x1
    80003ae8:	a44080e7          	jalr	-1468(ra) # 80004528 <__printf>
    80003aec:	0000006f          	j	80003aec <system_main+0xd4>

0000000080003af0 <cpuid>:
    80003af0:	ff010113          	addi	sp,sp,-16
    80003af4:	00813423          	sd	s0,8(sp)
    80003af8:	01010413          	addi	s0,sp,16
    80003afc:	00020513          	mv	a0,tp
    80003b00:	00813403          	ld	s0,8(sp)
    80003b04:	0005051b          	sext.w	a0,a0
    80003b08:	01010113          	addi	sp,sp,16
    80003b0c:	00008067          	ret

0000000080003b10 <mycpu>:
    80003b10:	ff010113          	addi	sp,sp,-16
    80003b14:	00813423          	sd	s0,8(sp)
    80003b18:	01010413          	addi	s0,sp,16
    80003b1c:	00020793          	mv	a5,tp
    80003b20:	00813403          	ld	s0,8(sp)
    80003b24:	0007879b          	sext.w	a5,a5
    80003b28:	00779793          	slli	a5,a5,0x7
    80003b2c:	00005517          	auipc	a0,0x5
    80003b30:	80450513          	addi	a0,a0,-2044 # 80008330 <cpus>
    80003b34:	00f50533          	add	a0,a0,a5
    80003b38:	01010113          	addi	sp,sp,16
    80003b3c:	00008067          	ret

0000000080003b40 <userinit>:
    80003b40:	ff010113          	addi	sp,sp,-16
    80003b44:	00813423          	sd	s0,8(sp)
    80003b48:	01010413          	addi	s0,sp,16
    80003b4c:	00813403          	ld	s0,8(sp)
    80003b50:	01010113          	addi	sp,sp,16
    80003b54:	ffffe317          	auipc	t1,0xffffe
    80003b58:	b4830067          	jr	-1208(t1) # 8000169c <main>

0000000080003b5c <either_copyout>:
    80003b5c:	ff010113          	addi	sp,sp,-16
    80003b60:	00813023          	sd	s0,0(sp)
    80003b64:	00113423          	sd	ra,8(sp)
    80003b68:	01010413          	addi	s0,sp,16
    80003b6c:	02051663          	bnez	a0,80003b98 <either_copyout+0x3c>
    80003b70:	00058513          	mv	a0,a1
    80003b74:	00060593          	mv	a1,a2
    80003b78:	0006861b          	sext.w	a2,a3
    80003b7c:	00002097          	auipc	ra,0x2
    80003b80:	c58080e7          	jalr	-936(ra) # 800057d4 <__memmove>
    80003b84:	00813083          	ld	ra,8(sp)
    80003b88:	00013403          	ld	s0,0(sp)
    80003b8c:	00000513          	li	a0,0
    80003b90:	01010113          	addi	sp,sp,16
    80003b94:	00008067          	ret
    80003b98:	00002517          	auipc	a0,0x2
    80003b9c:	69850513          	addi	a0,a0,1688 # 80006230 <CONSOLE_STATUS+0x220>
    80003ba0:	00001097          	auipc	ra,0x1
    80003ba4:	92c080e7          	jalr	-1748(ra) # 800044cc <panic>

0000000080003ba8 <either_copyin>:
    80003ba8:	ff010113          	addi	sp,sp,-16
    80003bac:	00813023          	sd	s0,0(sp)
    80003bb0:	00113423          	sd	ra,8(sp)
    80003bb4:	01010413          	addi	s0,sp,16
    80003bb8:	02059463          	bnez	a1,80003be0 <either_copyin+0x38>
    80003bbc:	00060593          	mv	a1,a2
    80003bc0:	0006861b          	sext.w	a2,a3
    80003bc4:	00002097          	auipc	ra,0x2
    80003bc8:	c10080e7          	jalr	-1008(ra) # 800057d4 <__memmove>
    80003bcc:	00813083          	ld	ra,8(sp)
    80003bd0:	00013403          	ld	s0,0(sp)
    80003bd4:	00000513          	li	a0,0
    80003bd8:	01010113          	addi	sp,sp,16
    80003bdc:	00008067          	ret
    80003be0:	00002517          	auipc	a0,0x2
    80003be4:	67850513          	addi	a0,a0,1656 # 80006258 <CONSOLE_STATUS+0x248>
    80003be8:	00001097          	auipc	ra,0x1
    80003bec:	8e4080e7          	jalr	-1820(ra) # 800044cc <panic>

0000000080003bf0 <trapinit>:
    80003bf0:	ff010113          	addi	sp,sp,-16
    80003bf4:	00813423          	sd	s0,8(sp)
    80003bf8:	01010413          	addi	s0,sp,16
    80003bfc:	00813403          	ld	s0,8(sp)
    80003c00:	00002597          	auipc	a1,0x2
    80003c04:	68058593          	addi	a1,a1,1664 # 80006280 <CONSOLE_STATUS+0x270>
    80003c08:	00004517          	auipc	a0,0x4
    80003c0c:	7a850513          	addi	a0,a0,1960 # 800083b0 <tickslock>
    80003c10:	01010113          	addi	sp,sp,16
    80003c14:	00001317          	auipc	t1,0x1
    80003c18:	5c430067          	jr	1476(t1) # 800051d8 <initlock>

0000000080003c1c <trapinithart>:
    80003c1c:	ff010113          	addi	sp,sp,-16
    80003c20:	00813423          	sd	s0,8(sp)
    80003c24:	01010413          	addi	s0,sp,16
    80003c28:	00000797          	auipc	a5,0x0
    80003c2c:	2f878793          	addi	a5,a5,760 # 80003f20 <kernelvec>
    80003c30:	10579073          	csrw	stvec,a5
    80003c34:	00813403          	ld	s0,8(sp)
    80003c38:	01010113          	addi	sp,sp,16
    80003c3c:	00008067          	ret

0000000080003c40 <usertrap>:
    80003c40:	ff010113          	addi	sp,sp,-16
    80003c44:	00813423          	sd	s0,8(sp)
    80003c48:	01010413          	addi	s0,sp,16
    80003c4c:	00813403          	ld	s0,8(sp)
    80003c50:	01010113          	addi	sp,sp,16
    80003c54:	00008067          	ret

0000000080003c58 <usertrapret>:
    80003c58:	ff010113          	addi	sp,sp,-16
    80003c5c:	00813423          	sd	s0,8(sp)
    80003c60:	01010413          	addi	s0,sp,16
    80003c64:	00813403          	ld	s0,8(sp)
    80003c68:	01010113          	addi	sp,sp,16
    80003c6c:	00008067          	ret

0000000080003c70 <kerneltrap>:
    80003c70:	fe010113          	addi	sp,sp,-32
    80003c74:	00813823          	sd	s0,16(sp)
    80003c78:	00113c23          	sd	ra,24(sp)
    80003c7c:	00913423          	sd	s1,8(sp)
    80003c80:	02010413          	addi	s0,sp,32
    80003c84:	142025f3          	csrr	a1,scause
    80003c88:	100027f3          	csrr	a5,sstatus
    80003c8c:	0027f793          	andi	a5,a5,2
    80003c90:	10079c63          	bnez	a5,80003da8 <kerneltrap+0x138>
    80003c94:	142027f3          	csrr	a5,scause
    80003c98:	0207ce63          	bltz	a5,80003cd4 <kerneltrap+0x64>
    80003c9c:	00002517          	auipc	a0,0x2
    80003ca0:	62c50513          	addi	a0,a0,1580 # 800062c8 <CONSOLE_STATUS+0x2b8>
    80003ca4:	00001097          	auipc	ra,0x1
    80003ca8:	884080e7          	jalr	-1916(ra) # 80004528 <__printf>
    80003cac:	141025f3          	csrr	a1,sepc
    80003cb0:	14302673          	csrr	a2,stval
    80003cb4:	00002517          	auipc	a0,0x2
    80003cb8:	62450513          	addi	a0,a0,1572 # 800062d8 <CONSOLE_STATUS+0x2c8>
    80003cbc:	00001097          	auipc	ra,0x1
    80003cc0:	86c080e7          	jalr	-1940(ra) # 80004528 <__printf>
    80003cc4:	00002517          	auipc	a0,0x2
    80003cc8:	62c50513          	addi	a0,a0,1580 # 800062f0 <CONSOLE_STATUS+0x2e0>
    80003ccc:	00001097          	auipc	ra,0x1
    80003cd0:	800080e7          	jalr	-2048(ra) # 800044cc <panic>
    80003cd4:	0ff7f713          	andi	a4,a5,255
    80003cd8:	00900693          	li	a3,9
    80003cdc:	04d70063          	beq	a4,a3,80003d1c <kerneltrap+0xac>
    80003ce0:	fff00713          	li	a4,-1
    80003ce4:	03f71713          	slli	a4,a4,0x3f
    80003ce8:	00170713          	addi	a4,a4,1
    80003cec:	fae798e3          	bne	a5,a4,80003c9c <kerneltrap+0x2c>
    80003cf0:	00000097          	auipc	ra,0x0
    80003cf4:	e00080e7          	jalr	-512(ra) # 80003af0 <cpuid>
    80003cf8:	06050663          	beqz	a0,80003d64 <kerneltrap+0xf4>
    80003cfc:	144027f3          	csrr	a5,sip
    80003d00:	ffd7f793          	andi	a5,a5,-3
    80003d04:	14479073          	csrw	sip,a5
    80003d08:	01813083          	ld	ra,24(sp)
    80003d0c:	01013403          	ld	s0,16(sp)
    80003d10:	00813483          	ld	s1,8(sp)
    80003d14:	02010113          	addi	sp,sp,32
    80003d18:	00008067          	ret
    80003d1c:	00000097          	auipc	ra,0x0
    80003d20:	3c8080e7          	jalr	968(ra) # 800040e4 <plic_claim>
    80003d24:	00a00793          	li	a5,10
    80003d28:	00050493          	mv	s1,a0
    80003d2c:	06f50863          	beq	a0,a5,80003d9c <kerneltrap+0x12c>
    80003d30:	fc050ce3          	beqz	a0,80003d08 <kerneltrap+0x98>
    80003d34:	00050593          	mv	a1,a0
    80003d38:	00002517          	auipc	a0,0x2
    80003d3c:	57050513          	addi	a0,a0,1392 # 800062a8 <CONSOLE_STATUS+0x298>
    80003d40:	00000097          	auipc	ra,0x0
    80003d44:	7e8080e7          	jalr	2024(ra) # 80004528 <__printf>
    80003d48:	01013403          	ld	s0,16(sp)
    80003d4c:	01813083          	ld	ra,24(sp)
    80003d50:	00048513          	mv	a0,s1
    80003d54:	00813483          	ld	s1,8(sp)
    80003d58:	02010113          	addi	sp,sp,32
    80003d5c:	00000317          	auipc	t1,0x0
    80003d60:	3c030067          	jr	960(t1) # 8000411c <plic_complete>
    80003d64:	00004517          	auipc	a0,0x4
    80003d68:	64c50513          	addi	a0,a0,1612 # 800083b0 <tickslock>
    80003d6c:	00001097          	auipc	ra,0x1
    80003d70:	490080e7          	jalr	1168(ra) # 800051fc <acquire>
    80003d74:	00003717          	auipc	a4,0x3
    80003d78:	51070713          	addi	a4,a4,1296 # 80007284 <ticks>
    80003d7c:	00072783          	lw	a5,0(a4)
    80003d80:	00004517          	auipc	a0,0x4
    80003d84:	63050513          	addi	a0,a0,1584 # 800083b0 <tickslock>
    80003d88:	0017879b          	addiw	a5,a5,1
    80003d8c:	00f72023          	sw	a5,0(a4)
    80003d90:	00001097          	auipc	ra,0x1
    80003d94:	538080e7          	jalr	1336(ra) # 800052c8 <release>
    80003d98:	f65ff06f          	j	80003cfc <kerneltrap+0x8c>
    80003d9c:	00001097          	auipc	ra,0x1
    80003da0:	094080e7          	jalr	148(ra) # 80004e30 <uartintr>
    80003da4:	fa5ff06f          	j	80003d48 <kerneltrap+0xd8>
    80003da8:	00002517          	auipc	a0,0x2
    80003dac:	4e050513          	addi	a0,a0,1248 # 80006288 <CONSOLE_STATUS+0x278>
    80003db0:	00000097          	auipc	ra,0x0
    80003db4:	71c080e7          	jalr	1820(ra) # 800044cc <panic>

0000000080003db8 <clockintr>:
    80003db8:	fe010113          	addi	sp,sp,-32
    80003dbc:	00813823          	sd	s0,16(sp)
    80003dc0:	00913423          	sd	s1,8(sp)
    80003dc4:	00113c23          	sd	ra,24(sp)
    80003dc8:	02010413          	addi	s0,sp,32
    80003dcc:	00004497          	auipc	s1,0x4
    80003dd0:	5e448493          	addi	s1,s1,1508 # 800083b0 <tickslock>
    80003dd4:	00048513          	mv	a0,s1
    80003dd8:	00001097          	auipc	ra,0x1
    80003ddc:	424080e7          	jalr	1060(ra) # 800051fc <acquire>
    80003de0:	00003717          	auipc	a4,0x3
    80003de4:	4a470713          	addi	a4,a4,1188 # 80007284 <ticks>
    80003de8:	00072783          	lw	a5,0(a4)
    80003dec:	01013403          	ld	s0,16(sp)
    80003df0:	01813083          	ld	ra,24(sp)
    80003df4:	00048513          	mv	a0,s1
    80003df8:	0017879b          	addiw	a5,a5,1
    80003dfc:	00813483          	ld	s1,8(sp)
    80003e00:	00f72023          	sw	a5,0(a4)
    80003e04:	02010113          	addi	sp,sp,32
    80003e08:	00001317          	auipc	t1,0x1
    80003e0c:	4c030067          	jr	1216(t1) # 800052c8 <release>

0000000080003e10 <devintr>:
    80003e10:	142027f3          	csrr	a5,scause
    80003e14:	00000513          	li	a0,0
    80003e18:	0007c463          	bltz	a5,80003e20 <devintr+0x10>
    80003e1c:	00008067          	ret
    80003e20:	fe010113          	addi	sp,sp,-32
    80003e24:	00813823          	sd	s0,16(sp)
    80003e28:	00113c23          	sd	ra,24(sp)
    80003e2c:	00913423          	sd	s1,8(sp)
    80003e30:	02010413          	addi	s0,sp,32
    80003e34:	0ff7f713          	andi	a4,a5,255
    80003e38:	00900693          	li	a3,9
    80003e3c:	04d70c63          	beq	a4,a3,80003e94 <devintr+0x84>
    80003e40:	fff00713          	li	a4,-1
    80003e44:	03f71713          	slli	a4,a4,0x3f
    80003e48:	00170713          	addi	a4,a4,1
    80003e4c:	00e78c63          	beq	a5,a4,80003e64 <devintr+0x54>
    80003e50:	01813083          	ld	ra,24(sp)
    80003e54:	01013403          	ld	s0,16(sp)
    80003e58:	00813483          	ld	s1,8(sp)
    80003e5c:	02010113          	addi	sp,sp,32
    80003e60:	00008067          	ret
    80003e64:	00000097          	auipc	ra,0x0
    80003e68:	c8c080e7          	jalr	-884(ra) # 80003af0 <cpuid>
    80003e6c:	06050663          	beqz	a0,80003ed8 <devintr+0xc8>
    80003e70:	144027f3          	csrr	a5,sip
    80003e74:	ffd7f793          	andi	a5,a5,-3
    80003e78:	14479073          	csrw	sip,a5
    80003e7c:	01813083          	ld	ra,24(sp)
    80003e80:	01013403          	ld	s0,16(sp)
    80003e84:	00813483          	ld	s1,8(sp)
    80003e88:	00200513          	li	a0,2
    80003e8c:	02010113          	addi	sp,sp,32
    80003e90:	00008067          	ret
    80003e94:	00000097          	auipc	ra,0x0
    80003e98:	250080e7          	jalr	592(ra) # 800040e4 <plic_claim>
    80003e9c:	00a00793          	li	a5,10
    80003ea0:	00050493          	mv	s1,a0
    80003ea4:	06f50663          	beq	a0,a5,80003f10 <devintr+0x100>
    80003ea8:	00100513          	li	a0,1
    80003eac:	fa0482e3          	beqz	s1,80003e50 <devintr+0x40>
    80003eb0:	00048593          	mv	a1,s1
    80003eb4:	00002517          	auipc	a0,0x2
    80003eb8:	3f450513          	addi	a0,a0,1012 # 800062a8 <CONSOLE_STATUS+0x298>
    80003ebc:	00000097          	auipc	ra,0x0
    80003ec0:	66c080e7          	jalr	1644(ra) # 80004528 <__printf>
    80003ec4:	00048513          	mv	a0,s1
    80003ec8:	00000097          	auipc	ra,0x0
    80003ecc:	254080e7          	jalr	596(ra) # 8000411c <plic_complete>
    80003ed0:	00100513          	li	a0,1
    80003ed4:	f7dff06f          	j	80003e50 <devintr+0x40>
    80003ed8:	00004517          	auipc	a0,0x4
    80003edc:	4d850513          	addi	a0,a0,1240 # 800083b0 <tickslock>
    80003ee0:	00001097          	auipc	ra,0x1
    80003ee4:	31c080e7          	jalr	796(ra) # 800051fc <acquire>
    80003ee8:	00003717          	auipc	a4,0x3
    80003eec:	39c70713          	addi	a4,a4,924 # 80007284 <ticks>
    80003ef0:	00072783          	lw	a5,0(a4)
    80003ef4:	00004517          	auipc	a0,0x4
    80003ef8:	4bc50513          	addi	a0,a0,1212 # 800083b0 <tickslock>
    80003efc:	0017879b          	addiw	a5,a5,1
    80003f00:	00f72023          	sw	a5,0(a4)
    80003f04:	00001097          	auipc	ra,0x1
    80003f08:	3c4080e7          	jalr	964(ra) # 800052c8 <release>
    80003f0c:	f65ff06f          	j	80003e70 <devintr+0x60>
    80003f10:	00001097          	auipc	ra,0x1
    80003f14:	f20080e7          	jalr	-224(ra) # 80004e30 <uartintr>
    80003f18:	fadff06f          	j	80003ec4 <devintr+0xb4>
    80003f1c:	0000                	unimp
	...

0000000080003f20 <kernelvec>:
    80003f20:	f0010113          	addi	sp,sp,-256
    80003f24:	00113023          	sd	ra,0(sp)
    80003f28:	00213423          	sd	sp,8(sp)
    80003f2c:	00313823          	sd	gp,16(sp)
    80003f30:	00413c23          	sd	tp,24(sp)
    80003f34:	02513023          	sd	t0,32(sp)
    80003f38:	02613423          	sd	t1,40(sp)
    80003f3c:	02713823          	sd	t2,48(sp)
    80003f40:	02813c23          	sd	s0,56(sp)
    80003f44:	04913023          	sd	s1,64(sp)
    80003f48:	04a13423          	sd	a0,72(sp)
    80003f4c:	04b13823          	sd	a1,80(sp)
    80003f50:	04c13c23          	sd	a2,88(sp)
    80003f54:	06d13023          	sd	a3,96(sp)
    80003f58:	06e13423          	sd	a4,104(sp)
    80003f5c:	06f13823          	sd	a5,112(sp)
    80003f60:	07013c23          	sd	a6,120(sp)
    80003f64:	09113023          	sd	a7,128(sp)
    80003f68:	09213423          	sd	s2,136(sp)
    80003f6c:	09313823          	sd	s3,144(sp)
    80003f70:	09413c23          	sd	s4,152(sp)
    80003f74:	0b513023          	sd	s5,160(sp)
    80003f78:	0b613423          	sd	s6,168(sp)
    80003f7c:	0b713823          	sd	s7,176(sp)
    80003f80:	0b813c23          	sd	s8,184(sp)
    80003f84:	0d913023          	sd	s9,192(sp)
    80003f88:	0da13423          	sd	s10,200(sp)
    80003f8c:	0db13823          	sd	s11,208(sp)
    80003f90:	0dc13c23          	sd	t3,216(sp)
    80003f94:	0fd13023          	sd	t4,224(sp)
    80003f98:	0fe13423          	sd	t5,232(sp)
    80003f9c:	0ff13823          	sd	t6,240(sp)
    80003fa0:	cd1ff0ef          	jal	ra,80003c70 <kerneltrap>
    80003fa4:	00013083          	ld	ra,0(sp)
    80003fa8:	00813103          	ld	sp,8(sp)
    80003fac:	01013183          	ld	gp,16(sp)
    80003fb0:	02013283          	ld	t0,32(sp)
    80003fb4:	02813303          	ld	t1,40(sp)
    80003fb8:	03013383          	ld	t2,48(sp)
    80003fbc:	03813403          	ld	s0,56(sp)
    80003fc0:	04013483          	ld	s1,64(sp)
    80003fc4:	04813503          	ld	a0,72(sp)
    80003fc8:	05013583          	ld	a1,80(sp)
    80003fcc:	05813603          	ld	a2,88(sp)
    80003fd0:	06013683          	ld	a3,96(sp)
    80003fd4:	06813703          	ld	a4,104(sp)
    80003fd8:	07013783          	ld	a5,112(sp)
    80003fdc:	07813803          	ld	a6,120(sp)
    80003fe0:	08013883          	ld	a7,128(sp)
    80003fe4:	08813903          	ld	s2,136(sp)
    80003fe8:	09013983          	ld	s3,144(sp)
    80003fec:	09813a03          	ld	s4,152(sp)
    80003ff0:	0a013a83          	ld	s5,160(sp)
    80003ff4:	0a813b03          	ld	s6,168(sp)
    80003ff8:	0b013b83          	ld	s7,176(sp)
    80003ffc:	0b813c03          	ld	s8,184(sp)
    80004000:	0c013c83          	ld	s9,192(sp)
    80004004:	0c813d03          	ld	s10,200(sp)
    80004008:	0d013d83          	ld	s11,208(sp)
    8000400c:	0d813e03          	ld	t3,216(sp)
    80004010:	0e013e83          	ld	t4,224(sp)
    80004014:	0e813f03          	ld	t5,232(sp)
    80004018:	0f013f83          	ld	t6,240(sp)
    8000401c:	10010113          	addi	sp,sp,256
    80004020:	10200073          	sret
    80004024:	00000013          	nop
    80004028:	00000013          	nop
    8000402c:	00000013          	nop

0000000080004030 <timervec>:
    80004030:	34051573          	csrrw	a0,mscratch,a0
    80004034:	00b53023          	sd	a1,0(a0)
    80004038:	00c53423          	sd	a2,8(a0)
    8000403c:	00d53823          	sd	a3,16(a0)
    80004040:	01853583          	ld	a1,24(a0)
    80004044:	02053603          	ld	a2,32(a0)
    80004048:	0005b683          	ld	a3,0(a1)
    8000404c:	00c686b3          	add	a3,a3,a2
    80004050:	00d5b023          	sd	a3,0(a1)
    80004054:	00200593          	li	a1,2
    80004058:	14459073          	csrw	sip,a1
    8000405c:	01053683          	ld	a3,16(a0)
    80004060:	00853603          	ld	a2,8(a0)
    80004064:	00053583          	ld	a1,0(a0)
    80004068:	34051573          	csrrw	a0,mscratch,a0
    8000406c:	30200073          	mret

0000000080004070 <plicinit>:
    80004070:	ff010113          	addi	sp,sp,-16
    80004074:	00813423          	sd	s0,8(sp)
    80004078:	01010413          	addi	s0,sp,16
    8000407c:	00813403          	ld	s0,8(sp)
    80004080:	0c0007b7          	lui	a5,0xc000
    80004084:	00100713          	li	a4,1
    80004088:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000408c:	00e7a223          	sw	a4,4(a5)
    80004090:	01010113          	addi	sp,sp,16
    80004094:	00008067          	ret

0000000080004098 <plicinithart>:
    80004098:	ff010113          	addi	sp,sp,-16
    8000409c:	00813023          	sd	s0,0(sp)
    800040a0:	00113423          	sd	ra,8(sp)
    800040a4:	01010413          	addi	s0,sp,16
    800040a8:	00000097          	auipc	ra,0x0
    800040ac:	a48080e7          	jalr	-1464(ra) # 80003af0 <cpuid>
    800040b0:	0085171b          	slliw	a4,a0,0x8
    800040b4:	0c0027b7          	lui	a5,0xc002
    800040b8:	00e787b3          	add	a5,a5,a4
    800040bc:	40200713          	li	a4,1026
    800040c0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    800040c4:	00813083          	ld	ra,8(sp)
    800040c8:	00013403          	ld	s0,0(sp)
    800040cc:	00d5151b          	slliw	a0,a0,0xd
    800040d0:	0c2017b7          	lui	a5,0xc201
    800040d4:	00a78533          	add	a0,a5,a0
    800040d8:	00052023          	sw	zero,0(a0)
    800040dc:	01010113          	addi	sp,sp,16
    800040e0:	00008067          	ret

00000000800040e4 <plic_claim>:
    800040e4:	ff010113          	addi	sp,sp,-16
    800040e8:	00813023          	sd	s0,0(sp)
    800040ec:	00113423          	sd	ra,8(sp)
    800040f0:	01010413          	addi	s0,sp,16
    800040f4:	00000097          	auipc	ra,0x0
    800040f8:	9fc080e7          	jalr	-1540(ra) # 80003af0 <cpuid>
    800040fc:	00813083          	ld	ra,8(sp)
    80004100:	00013403          	ld	s0,0(sp)
    80004104:	00d5151b          	slliw	a0,a0,0xd
    80004108:	0c2017b7          	lui	a5,0xc201
    8000410c:	00a78533          	add	a0,a5,a0
    80004110:	00452503          	lw	a0,4(a0)
    80004114:	01010113          	addi	sp,sp,16
    80004118:	00008067          	ret

000000008000411c <plic_complete>:
    8000411c:	fe010113          	addi	sp,sp,-32
    80004120:	00813823          	sd	s0,16(sp)
    80004124:	00913423          	sd	s1,8(sp)
    80004128:	00113c23          	sd	ra,24(sp)
    8000412c:	02010413          	addi	s0,sp,32
    80004130:	00050493          	mv	s1,a0
    80004134:	00000097          	auipc	ra,0x0
    80004138:	9bc080e7          	jalr	-1604(ra) # 80003af0 <cpuid>
    8000413c:	01813083          	ld	ra,24(sp)
    80004140:	01013403          	ld	s0,16(sp)
    80004144:	00d5179b          	slliw	a5,a0,0xd
    80004148:	0c201737          	lui	a4,0xc201
    8000414c:	00f707b3          	add	a5,a4,a5
    80004150:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80004154:	00813483          	ld	s1,8(sp)
    80004158:	02010113          	addi	sp,sp,32
    8000415c:	00008067          	ret

0000000080004160 <consolewrite>:
    80004160:	fb010113          	addi	sp,sp,-80
    80004164:	04813023          	sd	s0,64(sp)
    80004168:	04113423          	sd	ra,72(sp)
    8000416c:	02913c23          	sd	s1,56(sp)
    80004170:	03213823          	sd	s2,48(sp)
    80004174:	03313423          	sd	s3,40(sp)
    80004178:	03413023          	sd	s4,32(sp)
    8000417c:	01513c23          	sd	s5,24(sp)
    80004180:	05010413          	addi	s0,sp,80
    80004184:	06c05c63          	blez	a2,800041fc <consolewrite+0x9c>
    80004188:	00060993          	mv	s3,a2
    8000418c:	00050a13          	mv	s4,a0
    80004190:	00058493          	mv	s1,a1
    80004194:	00000913          	li	s2,0
    80004198:	fff00a93          	li	s5,-1
    8000419c:	01c0006f          	j	800041b8 <consolewrite+0x58>
    800041a0:	fbf44503          	lbu	a0,-65(s0)
    800041a4:	0019091b          	addiw	s2,s2,1
    800041a8:	00148493          	addi	s1,s1,1
    800041ac:	00001097          	auipc	ra,0x1
    800041b0:	a9c080e7          	jalr	-1380(ra) # 80004c48 <uartputc>
    800041b4:	03298063          	beq	s3,s2,800041d4 <consolewrite+0x74>
    800041b8:	00048613          	mv	a2,s1
    800041bc:	00100693          	li	a3,1
    800041c0:	000a0593          	mv	a1,s4
    800041c4:	fbf40513          	addi	a0,s0,-65
    800041c8:	00000097          	auipc	ra,0x0
    800041cc:	9e0080e7          	jalr	-1568(ra) # 80003ba8 <either_copyin>
    800041d0:	fd5518e3          	bne	a0,s5,800041a0 <consolewrite+0x40>
    800041d4:	04813083          	ld	ra,72(sp)
    800041d8:	04013403          	ld	s0,64(sp)
    800041dc:	03813483          	ld	s1,56(sp)
    800041e0:	02813983          	ld	s3,40(sp)
    800041e4:	02013a03          	ld	s4,32(sp)
    800041e8:	01813a83          	ld	s5,24(sp)
    800041ec:	00090513          	mv	a0,s2
    800041f0:	03013903          	ld	s2,48(sp)
    800041f4:	05010113          	addi	sp,sp,80
    800041f8:	00008067          	ret
    800041fc:	00000913          	li	s2,0
    80004200:	fd5ff06f          	j	800041d4 <consolewrite+0x74>

0000000080004204 <consoleread>:
    80004204:	f9010113          	addi	sp,sp,-112
    80004208:	06813023          	sd	s0,96(sp)
    8000420c:	04913c23          	sd	s1,88(sp)
    80004210:	05213823          	sd	s2,80(sp)
    80004214:	05313423          	sd	s3,72(sp)
    80004218:	05413023          	sd	s4,64(sp)
    8000421c:	03513c23          	sd	s5,56(sp)
    80004220:	03613823          	sd	s6,48(sp)
    80004224:	03713423          	sd	s7,40(sp)
    80004228:	03813023          	sd	s8,32(sp)
    8000422c:	06113423          	sd	ra,104(sp)
    80004230:	01913c23          	sd	s9,24(sp)
    80004234:	07010413          	addi	s0,sp,112
    80004238:	00060b93          	mv	s7,a2
    8000423c:	00050913          	mv	s2,a0
    80004240:	00058c13          	mv	s8,a1
    80004244:	00060b1b          	sext.w	s6,a2
    80004248:	00004497          	auipc	s1,0x4
    8000424c:	19048493          	addi	s1,s1,400 # 800083d8 <cons>
    80004250:	00400993          	li	s3,4
    80004254:	fff00a13          	li	s4,-1
    80004258:	00a00a93          	li	s5,10
    8000425c:	05705e63          	blez	s7,800042b8 <consoleread+0xb4>
    80004260:	09c4a703          	lw	a4,156(s1)
    80004264:	0984a783          	lw	a5,152(s1)
    80004268:	0007071b          	sext.w	a4,a4
    8000426c:	08e78463          	beq	a5,a4,800042f4 <consoleread+0xf0>
    80004270:	07f7f713          	andi	a4,a5,127
    80004274:	00e48733          	add	a4,s1,a4
    80004278:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000427c:	0017869b          	addiw	a3,a5,1
    80004280:	08d4ac23          	sw	a3,152(s1)
    80004284:	00070c9b          	sext.w	s9,a4
    80004288:	0b370663          	beq	a4,s3,80004334 <consoleread+0x130>
    8000428c:	00100693          	li	a3,1
    80004290:	f9f40613          	addi	a2,s0,-97
    80004294:	000c0593          	mv	a1,s8
    80004298:	00090513          	mv	a0,s2
    8000429c:	f8e40fa3          	sb	a4,-97(s0)
    800042a0:	00000097          	auipc	ra,0x0
    800042a4:	8bc080e7          	jalr	-1860(ra) # 80003b5c <either_copyout>
    800042a8:	01450863          	beq	a0,s4,800042b8 <consoleread+0xb4>
    800042ac:	001c0c13          	addi	s8,s8,1
    800042b0:	fffb8b9b          	addiw	s7,s7,-1
    800042b4:	fb5c94e3          	bne	s9,s5,8000425c <consoleread+0x58>
    800042b8:	000b851b          	sext.w	a0,s7
    800042bc:	06813083          	ld	ra,104(sp)
    800042c0:	06013403          	ld	s0,96(sp)
    800042c4:	05813483          	ld	s1,88(sp)
    800042c8:	05013903          	ld	s2,80(sp)
    800042cc:	04813983          	ld	s3,72(sp)
    800042d0:	04013a03          	ld	s4,64(sp)
    800042d4:	03813a83          	ld	s5,56(sp)
    800042d8:	02813b83          	ld	s7,40(sp)
    800042dc:	02013c03          	ld	s8,32(sp)
    800042e0:	01813c83          	ld	s9,24(sp)
    800042e4:	40ab053b          	subw	a0,s6,a0
    800042e8:	03013b03          	ld	s6,48(sp)
    800042ec:	07010113          	addi	sp,sp,112
    800042f0:	00008067          	ret
    800042f4:	00001097          	auipc	ra,0x1
    800042f8:	1d8080e7          	jalr	472(ra) # 800054cc <push_on>
    800042fc:	0984a703          	lw	a4,152(s1)
    80004300:	09c4a783          	lw	a5,156(s1)
    80004304:	0007879b          	sext.w	a5,a5
    80004308:	fef70ce3          	beq	a4,a5,80004300 <consoleread+0xfc>
    8000430c:	00001097          	auipc	ra,0x1
    80004310:	234080e7          	jalr	564(ra) # 80005540 <pop_on>
    80004314:	0984a783          	lw	a5,152(s1)
    80004318:	07f7f713          	andi	a4,a5,127
    8000431c:	00e48733          	add	a4,s1,a4
    80004320:	01874703          	lbu	a4,24(a4)
    80004324:	0017869b          	addiw	a3,a5,1
    80004328:	08d4ac23          	sw	a3,152(s1)
    8000432c:	00070c9b          	sext.w	s9,a4
    80004330:	f5371ee3          	bne	a4,s3,8000428c <consoleread+0x88>
    80004334:	000b851b          	sext.w	a0,s7
    80004338:	f96bf2e3          	bgeu	s7,s6,800042bc <consoleread+0xb8>
    8000433c:	08f4ac23          	sw	a5,152(s1)
    80004340:	f7dff06f          	j	800042bc <consoleread+0xb8>

0000000080004344 <consputc>:
    80004344:	10000793          	li	a5,256
    80004348:	00f50663          	beq	a0,a5,80004354 <consputc+0x10>
    8000434c:	00001317          	auipc	t1,0x1
    80004350:	9f430067          	jr	-1548(t1) # 80004d40 <uartputc_sync>
    80004354:	ff010113          	addi	sp,sp,-16
    80004358:	00113423          	sd	ra,8(sp)
    8000435c:	00813023          	sd	s0,0(sp)
    80004360:	01010413          	addi	s0,sp,16
    80004364:	00800513          	li	a0,8
    80004368:	00001097          	auipc	ra,0x1
    8000436c:	9d8080e7          	jalr	-1576(ra) # 80004d40 <uartputc_sync>
    80004370:	02000513          	li	a0,32
    80004374:	00001097          	auipc	ra,0x1
    80004378:	9cc080e7          	jalr	-1588(ra) # 80004d40 <uartputc_sync>
    8000437c:	00013403          	ld	s0,0(sp)
    80004380:	00813083          	ld	ra,8(sp)
    80004384:	00800513          	li	a0,8
    80004388:	01010113          	addi	sp,sp,16
    8000438c:	00001317          	auipc	t1,0x1
    80004390:	9b430067          	jr	-1612(t1) # 80004d40 <uartputc_sync>

0000000080004394 <consoleintr>:
    80004394:	fe010113          	addi	sp,sp,-32
    80004398:	00813823          	sd	s0,16(sp)
    8000439c:	00913423          	sd	s1,8(sp)
    800043a0:	01213023          	sd	s2,0(sp)
    800043a4:	00113c23          	sd	ra,24(sp)
    800043a8:	02010413          	addi	s0,sp,32
    800043ac:	00004917          	auipc	s2,0x4
    800043b0:	02c90913          	addi	s2,s2,44 # 800083d8 <cons>
    800043b4:	00050493          	mv	s1,a0
    800043b8:	00090513          	mv	a0,s2
    800043bc:	00001097          	auipc	ra,0x1
    800043c0:	e40080e7          	jalr	-448(ra) # 800051fc <acquire>
    800043c4:	02048c63          	beqz	s1,800043fc <consoleintr+0x68>
    800043c8:	0a092783          	lw	a5,160(s2)
    800043cc:	09892703          	lw	a4,152(s2)
    800043d0:	07f00693          	li	a3,127
    800043d4:	40e7873b          	subw	a4,a5,a4
    800043d8:	02e6e263          	bltu	a3,a4,800043fc <consoleintr+0x68>
    800043dc:	00d00713          	li	a4,13
    800043e0:	04e48063          	beq	s1,a4,80004420 <consoleintr+0x8c>
    800043e4:	07f7f713          	andi	a4,a5,127
    800043e8:	00e90733          	add	a4,s2,a4
    800043ec:	0017879b          	addiw	a5,a5,1
    800043f0:	0af92023          	sw	a5,160(s2)
    800043f4:	00970c23          	sb	s1,24(a4)
    800043f8:	08f92e23          	sw	a5,156(s2)
    800043fc:	01013403          	ld	s0,16(sp)
    80004400:	01813083          	ld	ra,24(sp)
    80004404:	00813483          	ld	s1,8(sp)
    80004408:	00013903          	ld	s2,0(sp)
    8000440c:	00004517          	auipc	a0,0x4
    80004410:	fcc50513          	addi	a0,a0,-52 # 800083d8 <cons>
    80004414:	02010113          	addi	sp,sp,32
    80004418:	00001317          	auipc	t1,0x1
    8000441c:	eb030067          	jr	-336(t1) # 800052c8 <release>
    80004420:	00a00493          	li	s1,10
    80004424:	fc1ff06f          	j	800043e4 <consoleintr+0x50>

0000000080004428 <consoleinit>:
    80004428:	fe010113          	addi	sp,sp,-32
    8000442c:	00113c23          	sd	ra,24(sp)
    80004430:	00813823          	sd	s0,16(sp)
    80004434:	00913423          	sd	s1,8(sp)
    80004438:	02010413          	addi	s0,sp,32
    8000443c:	00004497          	auipc	s1,0x4
    80004440:	f9c48493          	addi	s1,s1,-100 # 800083d8 <cons>
    80004444:	00048513          	mv	a0,s1
    80004448:	00002597          	auipc	a1,0x2
    8000444c:	eb858593          	addi	a1,a1,-328 # 80006300 <CONSOLE_STATUS+0x2f0>
    80004450:	00001097          	auipc	ra,0x1
    80004454:	d88080e7          	jalr	-632(ra) # 800051d8 <initlock>
    80004458:	00000097          	auipc	ra,0x0
    8000445c:	7ac080e7          	jalr	1964(ra) # 80004c04 <uartinit>
    80004460:	01813083          	ld	ra,24(sp)
    80004464:	01013403          	ld	s0,16(sp)
    80004468:	00000797          	auipc	a5,0x0
    8000446c:	d9c78793          	addi	a5,a5,-612 # 80004204 <consoleread>
    80004470:	0af4bc23          	sd	a5,184(s1)
    80004474:	00000797          	auipc	a5,0x0
    80004478:	cec78793          	addi	a5,a5,-788 # 80004160 <consolewrite>
    8000447c:	0cf4b023          	sd	a5,192(s1)
    80004480:	00813483          	ld	s1,8(sp)
    80004484:	02010113          	addi	sp,sp,32
    80004488:	00008067          	ret

000000008000448c <console_read>:
    8000448c:	ff010113          	addi	sp,sp,-16
    80004490:	00813423          	sd	s0,8(sp)
    80004494:	01010413          	addi	s0,sp,16
    80004498:	00813403          	ld	s0,8(sp)
    8000449c:	00004317          	auipc	t1,0x4
    800044a0:	ff433303          	ld	t1,-12(t1) # 80008490 <devsw+0x10>
    800044a4:	01010113          	addi	sp,sp,16
    800044a8:	00030067          	jr	t1

00000000800044ac <console_write>:
    800044ac:	ff010113          	addi	sp,sp,-16
    800044b0:	00813423          	sd	s0,8(sp)
    800044b4:	01010413          	addi	s0,sp,16
    800044b8:	00813403          	ld	s0,8(sp)
    800044bc:	00004317          	auipc	t1,0x4
    800044c0:	fdc33303          	ld	t1,-36(t1) # 80008498 <devsw+0x18>
    800044c4:	01010113          	addi	sp,sp,16
    800044c8:	00030067          	jr	t1

00000000800044cc <panic>:
    800044cc:	fe010113          	addi	sp,sp,-32
    800044d0:	00113c23          	sd	ra,24(sp)
    800044d4:	00813823          	sd	s0,16(sp)
    800044d8:	00913423          	sd	s1,8(sp)
    800044dc:	02010413          	addi	s0,sp,32
    800044e0:	00050493          	mv	s1,a0
    800044e4:	00002517          	auipc	a0,0x2
    800044e8:	e2450513          	addi	a0,a0,-476 # 80006308 <CONSOLE_STATUS+0x2f8>
    800044ec:	00004797          	auipc	a5,0x4
    800044f0:	0407a623          	sw	zero,76(a5) # 80008538 <pr+0x18>
    800044f4:	00000097          	auipc	ra,0x0
    800044f8:	034080e7          	jalr	52(ra) # 80004528 <__printf>
    800044fc:	00048513          	mv	a0,s1
    80004500:	00000097          	auipc	ra,0x0
    80004504:	028080e7          	jalr	40(ra) # 80004528 <__printf>
    80004508:	00002517          	auipc	a0,0x2
    8000450c:	de050513          	addi	a0,a0,-544 # 800062e8 <CONSOLE_STATUS+0x2d8>
    80004510:	00000097          	auipc	ra,0x0
    80004514:	018080e7          	jalr	24(ra) # 80004528 <__printf>
    80004518:	00100793          	li	a5,1
    8000451c:	00003717          	auipc	a4,0x3
    80004520:	d6f72623          	sw	a5,-660(a4) # 80007288 <panicked>
    80004524:	0000006f          	j	80004524 <panic+0x58>

0000000080004528 <__printf>:
    80004528:	f3010113          	addi	sp,sp,-208
    8000452c:	08813023          	sd	s0,128(sp)
    80004530:	07313423          	sd	s3,104(sp)
    80004534:	09010413          	addi	s0,sp,144
    80004538:	05813023          	sd	s8,64(sp)
    8000453c:	08113423          	sd	ra,136(sp)
    80004540:	06913c23          	sd	s1,120(sp)
    80004544:	07213823          	sd	s2,112(sp)
    80004548:	07413023          	sd	s4,96(sp)
    8000454c:	05513c23          	sd	s5,88(sp)
    80004550:	05613823          	sd	s6,80(sp)
    80004554:	05713423          	sd	s7,72(sp)
    80004558:	03913c23          	sd	s9,56(sp)
    8000455c:	03a13823          	sd	s10,48(sp)
    80004560:	03b13423          	sd	s11,40(sp)
    80004564:	00004317          	auipc	t1,0x4
    80004568:	fbc30313          	addi	t1,t1,-68 # 80008520 <pr>
    8000456c:	01832c03          	lw	s8,24(t1)
    80004570:	00b43423          	sd	a1,8(s0)
    80004574:	00c43823          	sd	a2,16(s0)
    80004578:	00d43c23          	sd	a3,24(s0)
    8000457c:	02e43023          	sd	a4,32(s0)
    80004580:	02f43423          	sd	a5,40(s0)
    80004584:	03043823          	sd	a6,48(s0)
    80004588:	03143c23          	sd	a7,56(s0)
    8000458c:	00050993          	mv	s3,a0
    80004590:	4a0c1663          	bnez	s8,80004a3c <__printf+0x514>
    80004594:	60098c63          	beqz	s3,80004bac <__printf+0x684>
    80004598:	0009c503          	lbu	a0,0(s3)
    8000459c:	00840793          	addi	a5,s0,8
    800045a0:	f6f43c23          	sd	a5,-136(s0)
    800045a4:	00000493          	li	s1,0
    800045a8:	22050063          	beqz	a0,800047c8 <__printf+0x2a0>
    800045ac:	00002a37          	lui	s4,0x2
    800045b0:	00018ab7          	lui	s5,0x18
    800045b4:	000f4b37          	lui	s6,0xf4
    800045b8:	00989bb7          	lui	s7,0x989
    800045bc:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    800045c0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    800045c4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    800045c8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    800045cc:	00148c9b          	addiw	s9,s1,1
    800045d0:	02500793          	li	a5,37
    800045d4:	01998933          	add	s2,s3,s9
    800045d8:	38f51263          	bne	a0,a5,8000495c <__printf+0x434>
    800045dc:	00094783          	lbu	a5,0(s2)
    800045e0:	00078c9b          	sext.w	s9,a5
    800045e4:	1e078263          	beqz	a5,800047c8 <__printf+0x2a0>
    800045e8:	0024849b          	addiw	s1,s1,2
    800045ec:	07000713          	li	a4,112
    800045f0:	00998933          	add	s2,s3,s1
    800045f4:	38e78a63          	beq	a5,a4,80004988 <__printf+0x460>
    800045f8:	20f76863          	bltu	a4,a5,80004808 <__printf+0x2e0>
    800045fc:	42a78863          	beq	a5,a0,80004a2c <__printf+0x504>
    80004600:	06400713          	li	a4,100
    80004604:	40e79663          	bne	a5,a4,80004a10 <__printf+0x4e8>
    80004608:	f7843783          	ld	a5,-136(s0)
    8000460c:	0007a603          	lw	a2,0(a5)
    80004610:	00878793          	addi	a5,a5,8
    80004614:	f6f43c23          	sd	a5,-136(s0)
    80004618:	42064a63          	bltz	a2,80004a4c <__printf+0x524>
    8000461c:	00a00713          	li	a4,10
    80004620:	02e677bb          	remuw	a5,a2,a4
    80004624:	00002d97          	auipc	s11,0x2
    80004628:	d0cd8d93          	addi	s11,s11,-756 # 80006330 <digits>
    8000462c:	00900593          	li	a1,9
    80004630:	0006051b          	sext.w	a0,a2
    80004634:	00000c93          	li	s9,0
    80004638:	02079793          	slli	a5,a5,0x20
    8000463c:	0207d793          	srli	a5,a5,0x20
    80004640:	00fd87b3          	add	a5,s11,a5
    80004644:	0007c783          	lbu	a5,0(a5)
    80004648:	02e656bb          	divuw	a3,a2,a4
    8000464c:	f8f40023          	sb	a5,-128(s0)
    80004650:	14c5d863          	bge	a1,a2,800047a0 <__printf+0x278>
    80004654:	06300593          	li	a1,99
    80004658:	00100c93          	li	s9,1
    8000465c:	02e6f7bb          	remuw	a5,a3,a4
    80004660:	02079793          	slli	a5,a5,0x20
    80004664:	0207d793          	srli	a5,a5,0x20
    80004668:	00fd87b3          	add	a5,s11,a5
    8000466c:	0007c783          	lbu	a5,0(a5)
    80004670:	02e6d73b          	divuw	a4,a3,a4
    80004674:	f8f400a3          	sb	a5,-127(s0)
    80004678:	12a5f463          	bgeu	a1,a0,800047a0 <__printf+0x278>
    8000467c:	00a00693          	li	a3,10
    80004680:	00900593          	li	a1,9
    80004684:	02d777bb          	remuw	a5,a4,a3
    80004688:	02079793          	slli	a5,a5,0x20
    8000468c:	0207d793          	srli	a5,a5,0x20
    80004690:	00fd87b3          	add	a5,s11,a5
    80004694:	0007c503          	lbu	a0,0(a5)
    80004698:	02d757bb          	divuw	a5,a4,a3
    8000469c:	f8a40123          	sb	a0,-126(s0)
    800046a0:	48e5f263          	bgeu	a1,a4,80004b24 <__printf+0x5fc>
    800046a4:	06300513          	li	a0,99
    800046a8:	02d7f5bb          	remuw	a1,a5,a3
    800046ac:	02059593          	slli	a1,a1,0x20
    800046b0:	0205d593          	srli	a1,a1,0x20
    800046b4:	00bd85b3          	add	a1,s11,a1
    800046b8:	0005c583          	lbu	a1,0(a1)
    800046bc:	02d7d7bb          	divuw	a5,a5,a3
    800046c0:	f8b401a3          	sb	a1,-125(s0)
    800046c4:	48e57263          	bgeu	a0,a4,80004b48 <__printf+0x620>
    800046c8:	3e700513          	li	a0,999
    800046cc:	02d7f5bb          	remuw	a1,a5,a3
    800046d0:	02059593          	slli	a1,a1,0x20
    800046d4:	0205d593          	srli	a1,a1,0x20
    800046d8:	00bd85b3          	add	a1,s11,a1
    800046dc:	0005c583          	lbu	a1,0(a1)
    800046e0:	02d7d7bb          	divuw	a5,a5,a3
    800046e4:	f8b40223          	sb	a1,-124(s0)
    800046e8:	46e57663          	bgeu	a0,a4,80004b54 <__printf+0x62c>
    800046ec:	02d7f5bb          	remuw	a1,a5,a3
    800046f0:	02059593          	slli	a1,a1,0x20
    800046f4:	0205d593          	srli	a1,a1,0x20
    800046f8:	00bd85b3          	add	a1,s11,a1
    800046fc:	0005c583          	lbu	a1,0(a1)
    80004700:	02d7d7bb          	divuw	a5,a5,a3
    80004704:	f8b402a3          	sb	a1,-123(s0)
    80004708:	46ea7863          	bgeu	s4,a4,80004b78 <__printf+0x650>
    8000470c:	02d7f5bb          	remuw	a1,a5,a3
    80004710:	02059593          	slli	a1,a1,0x20
    80004714:	0205d593          	srli	a1,a1,0x20
    80004718:	00bd85b3          	add	a1,s11,a1
    8000471c:	0005c583          	lbu	a1,0(a1)
    80004720:	02d7d7bb          	divuw	a5,a5,a3
    80004724:	f8b40323          	sb	a1,-122(s0)
    80004728:	3eeaf863          	bgeu	s5,a4,80004b18 <__printf+0x5f0>
    8000472c:	02d7f5bb          	remuw	a1,a5,a3
    80004730:	02059593          	slli	a1,a1,0x20
    80004734:	0205d593          	srli	a1,a1,0x20
    80004738:	00bd85b3          	add	a1,s11,a1
    8000473c:	0005c583          	lbu	a1,0(a1)
    80004740:	02d7d7bb          	divuw	a5,a5,a3
    80004744:	f8b403a3          	sb	a1,-121(s0)
    80004748:	42eb7e63          	bgeu	s6,a4,80004b84 <__printf+0x65c>
    8000474c:	02d7f5bb          	remuw	a1,a5,a3
    80004750:	02059593          	slli	a1,a1,0x20
    80004754:	0205d593          	srli	a1,a1,0x20
    80004758:	00bd85b3          	add	a1,s11,a1
    8000475c:	0005c583          	lbu	a1,0(a1)
    80004760:	02d7d7bb          	divuw	a5,a5,a3
    80004764:	f8b40423          	sb	a1,-120(s0)
    80004768:	42ebfc63          	bgeu	s7,a4,80004ba0 <__printf+0x678>
    8000476c:	02079793          	slli	a5,a5,0x20
    80004770:	0207d793          	srli	a5,a5,0x20
    80004774:	00fd8db3          	add	s11,s11,a5
    80004778:	000dc703          	lbu	a4,0(s11)
    8000477c:	00a00793          	li	a5,10
    80004780:	00900c93          	li	s9,9
    80004784:	f8e404a3          	sb	a4,-119(s0)
    80004788:	00065c63          	bgez	a2,800047a0 <__printf+0x278>
    8000478c:	f9040713          	addi	a4,s0,-112
    80004790:	00f70733          	add	a4,a4,a5
    80004794:	02d00693          	li	a3,45
    80004798:	fed70823          	sb	a3,-16(a4)
    8000479c:	00078c93          	mv	s9,a5
    800047a0:	f8040793          	addi	a5,s0,-128
    800047a4:	01978cb3          	add	s9,a5,s9
    800047a8:	f7f40d13          	addi	s10,s0,-129
    800047ac:	000cc503          	lbu	a0,0(s9)
    800047b0:	fffc8c93          	addi	s9,s9,-1
    800047b4:	00000097          	auipc	ra,0x0
    800047b8:	b90080e7          	jalr	-1136(ra) # 80004344 <consputc>
    800047bc:	ffac98e3          	bne	s9,s10,800047ac <__printf+0x284>
    800047c0:	00094503          	lbu	a0,0(s2)
    800047c4:	e00514e3          	bnez	a0,800045cc <__printf+0xa4>
    800047c8:	1a0c1663          	bnez	s8,80004974 <__printf+0x44c>
    800047cc:	08813083          	ld	ra,136(sp)
    800047d0:	08013403          	ld	s0,128(sp)
    800047d4:	07813483          	ld	s1,120(sp)
    800047d8:	07013903          	ld	s2,112(sp)
    800047dc:	06813983          	ld	s3,104(sp)
    800047e0:	06013a03          	ld	s4,96(sp)
    800047e4:	05813a83          	ld	s5,88(sp)
    800047e8:	05013b03          	ld	s6,80(sp)
    800047ec:	04813b83          	ld	s7,72(sp)
    800047f0:	04013c03          	ld	s8,64(sp)
    800047f4:	03813c83          	ld	s9,56(sp)
    800047f8:	03013d03          	ld	s10,48(sp)
    800047fc:	02813d83          	ld	s11,40(sp)
    80004800:	0d010113          	addi	sp,sp,208
    80004804:	00008067          	ret
    80004808:	07300713          	li	a4,115
    8000480c:	1ce78a63          	beq	a5,a4,800049e0 <__printf+0x4b8>
    80004810:	07800713          	li	a4,120
    80004814:	1ee79e63          	bne	a5,a4,80004a10 <__printf+0x4e8>
    80004818:	f7843783          	ld	a5,-136(s0)
    8000481c:	0007a703          	lw	a4,0(a5)
    80004820:	00878793          	addi	a5,a5,8
    80004824:	f6f43c23          	sd	a5,-136(s0)
    80004828:	28074263          	bltz	a4,80004aac <__printf+0x584>
    8000482c:	00002d97          	auipc	s11,0x2
    80004830:	b04d8d93          	addi	s11,s11,-1276 # 80006330 <digits>
    80004834:	00f77793          	andi	a5,a4,15
    80004838:	00fd87b3          	add	a5,s11,a5
    8000483c:	0007c683          	lbu	a3,0(a5)
    80004840:	00f00613          	li	a2,15
    80004844:	0007079b          	sext.w	a5,a4
    80004848:	f8d40023          	sb	a3,-128(s0)
    8000484c:	0047559b          	srliw	a1,a4,0x4
    80004850:	0047569b          	srliw	a3,a4,0x4
    80004854:	00000c93          	li	s9,0
    80004858:	0ee65063          	bge	a2,a4,80004938 <__printf+0x410>
    8000485c:	00f6f693          	andi	a3,a3,15
    80004860:	00dd86b3          	add	a3,s11,a3
    80004864:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80004868:	0087d79b          	srliw	a5,a5,0x8
    8000486c:	00100c93          	li	s9,1
    80004870:	f8d400a3          	sb	a3,-127(s0)
    80004874:	0cb67263          	bgeu	a2,a1,80004938 <__printf+0x410>
    80004878:	00f7f693          	andi	a3,a5,15
    8000487c:	00dd86b3          	add	a3,s11,a3
    80004880:	0006c583          	lbu	a1,0(a3)
    80004884:	00f00613          	li	a2,15
    80004888:	0047d69b          	srliw	a3,a5,0x4
    8000488c:	f8b40123          	sb	a1,-126(s0)
    80004890:	0047d593          	srli	a1,a5,0x4
    80004894:	28f67e63          	bgeu	a2,a5,80004b30 <__printf+0x608>
    80004898:	00f6f693          	andi	a3,a3,15
    8000489c:	00dd86b3          	add	a3,s11,a3
    800048a0:	0006c503          	lbu	a0,0(a3)
    800048a4:	0087d813          	srli	a6,a5,0x8
    800048a8:	0087d69b          	srliw	a3,a5,0x8
    800048ac:	f8a401a3          	sb	a0,-125(s0)
    800048b0:	28b67663          	bgeu	a2,a1,80004b3c <__printf+0x614>
    800048b4:	00f6f693          	andi	a3,a3,15
    800048b8:	00dd86b3          	add	a3,s11,a3
    800048bc:	0006c583          	lbu	a1,0(a3)
    800048c0:	00c7d513          	srli	a0,a5,0xc
    800048c4:	00c7d69b          	srliw	a3,a5,0xc
    800048c8:	f8b40223          	sb	a1,-124(s0)
    800048cc:	29067a63          	bgeu	a2,a6,80004b60 <__printf+0x638>
    800048d0:	00f6f693          	andi	a3,a3,15
    800048d4:	00dd86b3          	add	a3,s11,a3
    800048d8:	0006c583          	lbu	a1,0(a3)
    800048dc:	0107d813          	srli	a6,a5,0x10
    800048e0:	0107d69b          	srliw	a3,a5,0x10
    800048e4:	f8b402a3          	sb	a1,-123(s0)
    800048e8:	28a67263          	bgeu	a2,a0,80004b6c <__printf+0x644>
    800048ec:	00f6f693          	andi	a3,a3,15
    800048f0:	00dd86b3          	add	a3,s11,a3
    800048f4:	0006c683          	lbu	a3,0(a3)
    800048f8:	0147d79b          	srliw	a5,a5,0x14
    800048fc:	f8d40323          	sb	a3,-122(s0)
    80004900:	21067663          	bgeu	a2,a6,80004b0c <__printf+0x5e4>
    80004904:	02079793          	slli	a5,a5,0x20
    80004908:	0207d793          	srli	a5,a5,0x20
    8000490c:	00fd8db3          	add	s11,s11,a5
    80004910:	000dc683          	lbu	a3,0(s11)
    80004914:	00800793          	li	a5,8
    80004918:	00700c93          	li	s9,7
    8000491c:	f8d403a3          	sb	a3,-121(s0)
    80004920:	00075c63          	bgez	a4,80004938 <__printf+0x410>
    80004924:	f9040713          	addi	a4,s0,-112
    80004928:	00f70733          	add	a4,a4,a5
    8000492c:	02d00693          	li	a3,45
    80004930:	fed70823          	sb	a3,-16(a4)
    80004934:	00078c93          	mv	s9,a5
    80004938:	f8040793          	addi	a5,s0,-128
    8000493c:	01978cb3          	add	s9,a5,s9
    80004940:	f7f40d13          	addi	s10,s0,-129
    80004944:	000cc503          	lbu	a0,0(s9)
    80004948:	fffc8c93          	addi	s9,s9,-1
    8000494c:	00000097          	auipc	ra,0x0
    80004950:	9f8080e7          	jalr	-1544(ra) # 80004344 <consputc>
    80004954:	ff9d18e3          	bne	s10,s9,80004944 <__printf+0x41c>
    80004958:	0100006f          	j	80004968 <__printf+0x440>
    8000495c:	00000097          	auipc	ra,0x0
    80004960:	9e8080e7          	jalr	-1560(ra) # 80004344 <consputc>
    80004964:	000c8493          	mv	s1,s9
    80004968:	00094503          	lbu	a0,0(s2)
    8000496c:	c60510e3          	bnez	a0,800045cc <__printf+0xa4>
    80004970:	e40c0ee3          	beqz	s8,800047cc <__printf+0x2a4>
    80004974:	00004517          	auipc	a0,0x4
    80004978:	bac50513          	addi	a0,a0,-1108 # 80008520 <pr>
    8000497c:	00001097          	auipc	ra,0x1
    80004980:	94c080e7          	jalr	-1716(ra) # 800052c8 <release>
    80004984:	e49ff06f          	j	800047cc <__printf+0x2a4>
    80004988:	f7843783          	ld	a5,-136(s0)
    8000498c:	03000513          	li	a0,48
    80004990:	01000d13          	li	s10,16
    80004994:	00878713          	addi	a4,a5,8
    80004998:	0007bc83          	ld	s9,0(a5)
    8000499c:	f6e43c23          	sd	a4,-136(s0)
    800049a0:	00000097          	auipc	ra,0x0
    800049a4:	9a4080e7          	jalr	-1628(ra) # 80004344 <consputc>
    800049a8:	07800513          	li	a0,120
    800049ac:	00000097          	auipc	ra,0x0
    800049b0:	998080e7          	jalr	-1640(ra) # 80004344 <consputc>
    800049b4:	00002d97          	auipc	s11,0x2
    800049b8:	97cd8d93          	addi	s11,s11,-1668 # 80006330 <digits>
    800049bc:	03ccd793          	srli	a5,s9,0x3c
    800049c0:	00fd87b3          	add	a5,s11,a5
    800049c4:	0007c503          	lbu	a0,0(a5)
    800049c8:	fffd0d1b          	addiw	s10,s10,-1
    800049cc:	004c9c93          	slli	s9,s9,0x4
    800049d0:	00000097          	auipc	ra,0x0
    800049d4:	974080e7          	jalr	-1676(ra) # 80004344 <consputc>
    800049d8:	fe0d12e3          	bnez	s10,800049bc <__printf+0x494>
    800049dc:	f8dff06f          	j	80004968 <__printf+0x440>
    800049e0:	f7843783          	ld	a5,-136(s0)
    800049e4:	0007bc83          	ld	s9,0(a5)
    800049e8:	00878793          	addi	a5,a5,8
    800049ec:	f6f43c23          	sd	a5,-136(s0)
    800049f0:	000c9a63          	bnez	s9,80004a04 <__printf+0x4dc>
    800049f4:	1080006f          	j	80004afc <__printf+0x5d4>
    800049f8:	001c8c93          	addi	s9,s9,1
    800049fc:	00000097          	auipc	ra,0x0
    80004a00:	948080e7          	jalr	-1720(ra) # 80004344 <consputc>
    80004a04:	000cc503          	lbu	a0,0(s9)
    80004a08:	fe0518e3          	bnez	a0,800049f8 <__printf+0x4d0>
    80004a0c:	f5dff06f          	j	80004968 <__printf+0x440>
    80004a10:	02500513          	li	a0,37
    80004a14:	00000097          	auipc	ra,0x0
    80004a18:	930080e7          	jalr	-1744(ra) # 80004344 <consputc>
    80004a1c:	000c8513          	mv	a0,s9
    80004a20:	00000097          	auipc	ra,0x0
    80004a24:	924080e7          	jalr	-1756(ra) # 80004344 <consputc>
    80004a28:	f41ff06f          	j	80004968 <__printf+0x440>
    80004a2c:	02500513          	li	a0,37
    80004a30:	00000097          	auipc	ra,0x0
    80004a34:	914080e7          	jalr	-1772(ra) # 80004344 <consputc>
    80004a38:	f31ff06f          	j	80004968 <__printf+0x440>
    80004a3c:	00030513          	mv	a0,t1
    80004a40:	00000097          	auipc	ra,0x0
    80004a44:	7bc080e7          	jalr	1980(ra) # 800051fc <acquire>
    80004a48:	b4dff06f          	j	80004594 <__printf+0x6c>
    80004a4c:	40c0053b          	negw	a0,a2
    80004a50:	00a00713          	li	a4,10
    80004a54:	02e576bb          	remuw	a3,a0,a4
    80004a58:	00002d97          	auipc	s11,0x2
    80004a5c:	8d8d8d93          	addi	s11,s11,-1832 # 80006330 <digits>
    80004a60:	ff700593          	li	a1,-9
    80004a64:	02069693          	slli	a3,a3,0x20
    80004a68:	0206d693          	srli	a3,a3,0x20
    80004a6c:	00dd86b3          	add	a3,s11,a3
    80004a70:	0006c683          	lbu	a3,0(a3)
    80004a74:	02e557bb          	divuw	a5,a0,a4
    80004a78:	f8d40023          	sb	a3,-128(s0)
    80004a7c:	10b65e63          	bge	a2,a1,80004b98 <__printf+0x670>
    80004a80:	06300593          	li	a1,99
    80004a84:	02e7f6bb          	remuw	a3,a5,a4
    80004a88:	02069693          	slli	a3,a3,0x20
    80004a8c:	0206d693          	srli	a3,a3,0x20
    80004a90:	00dd86b3          	add	a3,s11,a3
    80004a94:	0006c683          	lbu	a3,0(a3)
    80004a98:	02e7d73b          	divuw	a4,a5,a4
    80004a9c:	00200793          	li	a5,2
    80004aa0:	f8d400a3          	sb	a3,-127(s0)
    80004aa4:	bca5ece3          	bltu	a1,a0,8000467c <__printf+0x154>
    80004aa8:	ce5ff06f          	j	8000478c <__printf+0x264>
    80004aac:	40e007bb          	negw	a5,a4
    80004ab0:	00002d97          	auipc	s11,0x2
    80004ab4:	880d8d93          	addi	s11,s11,-1920 # 80006330 <digits>
    80004ab8:	00f7f693          	andi	a3,a5,15
    80004abc:	00dd86b3          	add	a3,s11,a3
    80004ac0:	0006c583          	lbu	a1,0(a3)
    80004ac4:	ff100613          	li	a2,-15
    80004ac8:	0047d69b          	srliw	a3,a5,0x4
    80004acc:	f8b40023          	sb	a1,-128(s0)
    80004ad0:	0047d59b          	srliw	a1,a5,0x4
    80004ad4:	0ac75e63          	bge	a4,a2,80004b90 <__printf+0x668>
    80004ad8:	00f6f693          	andi	a3,a3,15
    80004adc:	00dd86b3          	add	a3,s11,a3
    80004ae0:	0006c603          	lbu	a2,0(a3)
    80004ae4:	00f00693          	li	a3,15
    80004ae8:	0087d79b          	srliw	a5,a5,0x8
    80004aec:	f8c400a3          	sb	a2,-127(s0)
    80004af0:	d8b6e4e3          	bltu	a3,a1,80004878 <__printf+0x350>
    80004af4:	00200793          	li	a5,2
    80004af8:	e2dff06f          	j	80004924 <__printf+0x3fc>
    80004afc:	00002c97          	auipc	s9,0x2
    80004b00:	814c8c93          	addi	s9,s9,-2028 # 80006310 <CONSOLE_STATUS+0x300>
    80004b04:	02800513          	li	a0,40
    80004b08:	ef1ff06f          	j	800049f8 <__printf+0x4d0>
    80004b0c:	00700793          	li	a5,7
    80004b10:	00600c93          	li	s9,6
    80004b14:	e0dff06f          	j	80004920 <__printf+0x3f8>
    80004b18:	00700793          	li	a5,7
    80004b1c:	00600c93          	li	s9,6
    80004b20:	c69ff06f          	j	80004788 <__printf+0x260>
    80004b24:	00300793          	li	a5,3
    80004b28:	00200c93          	li	s9,2
    80004b2c:	c5dff06f          	j	80004788 <__printf+0x260>
    80004b30:	00300793          	li	a5,3
    80004b34:	00200c93          	li	s9,2
    80004b38:	de9ff06f          	j	80004920 <__printf+0x3f8>
    80004b3c:	00400793          	li	a5,4
    80004b40:	00300c93          	li	s9,3
    80004b44:	dddff06f          	j	80004920 <__printf+0x3f8>
    80004b48:	00400793          	li	a5,4
    80004b4c:	00300c93          	li	s9,3
    80004b50:	c39ff06f          	j	80004788 <__printf+0x260>
    80004b54:	00500793          	li	a5,5
    80004b58:	00400c93          	li	s9,4
    80004b5c:	c2dff06f          	j	80004788 <__printf+0x260>
    80004b60:	00500793          	li	a5,5
    80004b64:	00400c93          	li	s9,4
    80004b68:	db9ff06f          	j	80004920 <__printf+0x3f8>
    80004b6c:	00600793          	li	a5,6
    80004b70:	00500c93          	li	s9,5
    80004b74:	dadff06f          	j	80004920 <__printf+0x3f8>
    80004b78:	00600793          	li	a5,6
    80004b7c:	00500c93          	li	s9,5
    80004b80:	c09ff06f          	j	80004788 <__printf+0x260>
    80004b84:	00800793          	li	a5,8
    80004b88:	00700c93          	li	s9,7
    80004b8c:	bfdff06f          	j	80004788 <__printf+0x260>
    80004b90:	00100793          	li	a5,1
    80004b94:	d91ff06f          	j	80004924 <__printf+0x3fc>
    80004b98:	00100793          	li	a5,1
    80004b9c:	bf1ff06f          	j	8000478c <__printf+0x264>
    80004ba0:	00900793          	li	a5,9
    80004ba4:	00800c93          	li	s9,8
    80004ba8:	be1ff06f          	j	80004788 <__printf+0x260>
    80004bac:	00001517          	auipc	a0,0x1
    80004bb0:	76c50513          	addi	a0,a0,1900 # 80006318 <CONSOLE_STATUS+0x308>
    80004bb4:	00000097          	auipc	ra,0x0
    80004bb8:	918080e7          	jalr	-1768(ra) # 800044cc <panic>

0000000080004bbc <printfinit>:
    80004bbc:	fe010113          	addi	sp,sp,-32
    80004bc0:	00813823          	sd	s0,16(sp)
    80004bc4:	00913423          	sd	s1,8(sp)
    80004bc8:	00113c23          	sd	ra,24(sp)
    80004bcc:	02010413          	addi	s0,sp,32
    80004bd0:	00004497          	auipc	s1,0x4
    80004bd4:	95048493          	addi	s1,s1,-1712 # 80008520 <pr>
    80004bd8:	00048513          	mv	a0,s1
    80004bdc:	00001597          	auipc	a1,0x1
    80004be0:	74c58593          	addi	a1,a1,1868 # 80006328 <CONSOLE_STATUS+0x318>
    80004be4:	00000097          	auipc	ra,0x0
    80004be8:	5f4080e7          	jalr	1524(ra) # 800051d8 <initlock>
    80004bec:	01813083          	ld	ra,24(sp)
    80004bf0:	01013403          	ld	s0,16(sp)
    80004bf4:	0004ac23          	sw	zero,24(s1)
    80004bf8:	00813483          	ld	s1,8(sp)
    80004bfc:	02010113          	addi	sp,sp,32
    80004c00:	00008067          	ret

0000000080004c04 <uartinit>:
    80004c04:	ff010113          	addi	sp,sp,-16
    80004c08:	00813423          	sd	s0,8(sp)
    80004c0c:	01010413          	addi	s0,sp,16
    80004c10:	100007b7          	lui	a5,0x10000
    80004c14:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80004c18:	f8000713          	li	a4,-128
    80004c1c:	00e781a3          	sb	a4,3(a5)
    80004c20:	00300713          	li	a4,3
    80004c24:	00e78023          	sb	a4,0(a5)
    80004c28:	000780a3          	sb	zero,1(a5)
    80004c2c:	00e781a3          	sb	a4,3(a5)
    80004c30:	00700693          	li	a3,7
    80004c34:	00d78123          	sb	a3,2(a5)
    80004c38:	00e780a3          	sb	a4,1(a5)
    80004c3c:	00813403          	ld	s0,8(sp)
    80004c40:	01010113          	addi	sp,sp,16
    80004c44:	00008067          	ret

0000000080004c48 <uartputc>:
    80004c48:	00002797          	auipc	a5,0x2
    80004c4c:	6407a783          	lw	a5,1600(a5) # 80007288 <panicked>
    80004c50:	00078463          	beqz	a5,80004c58 <uartputc+0x10>
    80004c54:	0000006f          	j	80004c54 <uartputc+0xc>
    80004c58:	fd010113          	addi	sp,sp,-48
    80004c5c:	02813023          	sd	s0,32(sp)
    80004c60:	00913c23          	sd	s1,24(sp)
    80004c64:	01213823          	sd	s2,16(sp)
    80004c68:	01313423          	sd	s3,8(sp)
    80004c6c:	02113423          	sd	ra,40(sp)
    80004c70:	03010413          	addi	s0,sp,48
    80004c74:	00002917          	auipc	s2,0x2
    80004c78:	61c90913          	addi	s2,s2,1564 # 80007290 <uart_tx_r>
    80004c7c:	00093783          	ld	a5,0(s2)
    80004c80:	00002497          	auipc	s1,0x2
    80004c84:	61848493          	addi	s1,s1,1560 # 80007298 <uart_tx_w>
    80004c88:	0004b703          	ld	a4,0(s1)
    80004c8c:	02078693          	addi	a3,a5,32
    80004c90:	00050993          	mv	s3,a0
    80004c94:	02e69c63          	bne	a3,a4,80004ccc <uartputc+0x84>
    80004c98:	00001097          	auipc	ra,0x1
    80004c9c:	834080e7          	jalr	-1996(ra) # 800054cc <push_on>
    80004ca0:	00093783          	ld	a5,0(s2)
    80004ca4:	0004b703          	ld	a4,0(s1)
    80004ca8:	02078793          	addi	a5,a5,32
    80004cac:	00e79463          	bne	a5,a4,80004cb4 <uartputc+0x6c>
    80004cb0:	0000006f          	j	80004cb0 <uartputc+0x68>
    80004cb4:	00001097          	auipc	ra,0x1
    80004cb8:	88c080e7          	jalr	-1908(ra) # 80005540 <pop_on>
    80004cbc:	00093783          	ld	a5,0(s2)
    80004cc0:	0004b703          	ld	a4,0(s1)
    80004cc4:	02078693          	addi	a3,a5,32
    80004cc8:	fce688e3          	beq	a3,a4,80004c98 <uartputc+0x50>
    80004ccc:	01f77693          	andi	a3,a4,31
    80004cd0:	00004597          	auipc	a1,0x4
    80004cd4:	87058593          	addi	a1,a1,-1936 # 80008540 <uart_tx_buf>
    80004cd8:	00d586b3          	add	a3,a1,a3
    80004cdc:	00170713          	addi	a4,a4,1
    80004ce0:	01368023          	sb	s3,0(a3)
    80004ce4:	00e4b023          	sd	a4,0(s1)
    80004ce8:	10000637          	lui	a2,0x10000
    80004cec:	02f71063          	bne	a4,a5,80004d0c <uartputc+0xc4>
    80004cf0:	0340006f          	j	80004d24 <uartputc+0xdc>
    80004cf4:	00074703          	lbu	a4,0(a4)
    80004cf8:	00f93023          	sd	a5,0(s2)
    80004cfc:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80004d00:	00093783          	ld	a5,0(s2)
    80004d04:	0004b703          	ld	a4,0(s1)
    80004d08:	00f70e63          	beq	a4,a5,80004d24 <uartputc+0xdc>
    80004d0c:	00564683          	lbu	a3,5(a2)
    80004d10:	01f7f713          	andi	a4,a5,31
    80004d14:	00e58733          	add	a4,a1,a4
    80004d18:	0206f693          	andi	a3,a3,32
    80004d1c:	00178793          	addi	a5,a5,1
    80004d20:	fc069ae3          	bnez	a3,80004cf4 <uartputc+0xac>
    80004d24:	02813083          	ld	ra,40(sp)
    80004d28:	02013403          	ld	s0,32(sp)
    80004d2c:	01813483          	ld	s1,24(sp)
    80004d30:	01013903          	ld	s2,16(sp)
    80004d34:	00813983          	ld	s3,8(sp)
    80004d38:	03010113          	addi	sp,sp,48
    80004d3c:	00008067          	ret

0000000080004d40 <uartputc_sync>:
    80004d40:	ff010113          	addi	sp,sp,-16
    80004d44:	00813423          	sd	s0,8(sp)
    80004d48:	01010413          	addi	s0,sp,16
    80004d4c:	00002717          	auipc	a4,0x2
    80004d50:	53c72703          	lw	a4,1340(a4) # 80007288 <panicked>
    80004d54:	02071663          	bnez	a4,80004d80 <uartputc_sync+0x40>
    80004d58:	00050793          	mv	a5,a0
    80004d5c:	100006b7          	lui	a3,0x10000
    80004d60:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80004d64:	02077713          	andi	a4,a4,32
    80004d68:	fe070ce3          	beqz	a4,80004d60 <uartputc_sync+0x20>
    80004d6c:	0ff7f793          	andi	a5,a5,255
    80004d70:	00f68023          	sb	a5,0(a3)
    80004d74:	00813403          	ld	s0,8(sp)
    80004d78:	01010113          	addi	sp,sp,16
    80004d7c:	00008067          	ret
    80004d80:	0000006f          	j	80004d80 <uartputc_sync+0x40>

0000000080004d84 <uartstart>:
    80004d84:	ff010113          	addi	sp,sp,-16
    80004d88:	00813423          	sd	s0,8(sp)
    80004d8c:	01010413          	addi	s0,sp,16
    80004d90:	00002617          	auipc	a2,0x2
    80004d94:	50060613          	addi	a2,a2,1280 # 80007290 <uart_tx_r>
    80004d98:	00002517          	auipc	a0,0x2
    80004d9c:	50050513          	addi	a0,a0,1280 # 80007298 <uart_tx_w>
    80004da0:	00063783          	ld	a5,0(a2)
    80004da4:	00053703          	ld	a4,0(a0)
    80004da8:	04f70263          	beq	a4,a5,80004dec <uartstart+0x68>
    80004dac:	100005b7          	lui	a1,0x10000
    80004db0:	00003817          	auipc	a6,0x3
    80004db4:	79080813          	addi	a6,a6,1936 # 80008540 <uart_tx_buf>
    80004db8:	01c0006f          	j	80004dd4 <uartstart+0x50>
    80004dbc:	0006c703          	lbu	a4,0(a3)
    80004dc0:	00f63023          	sd	a5,0(a2)
    80004dc4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80004dc8:	00063783          	ld	a5,0(a2)
    80004dcc:	00053703          	ld	a4,0(a0)
    80004dd0:	00f70e63          	beq	a4,a5,80004dec <uartstart+0x68>
    80004dd4:	01f7f713          	andi	a4,a5,31
    80004dd8:	00e806b3          	add	a3,a6,a4
    80004ddc:	0055c703          	lbu	a4,5(a1)
    80004de0:	00178793          	addi	a5,a5,1
    80004de4:	02077713          	andi	a4,a4,32
    80004de8:	fc071ae3          	bnez	a4,80004dbc <uartstart+0x38>
    80004dec:	00813403          	ld	s0,8(sp)
    80004df0:	01010113          	addi	sp,sp,16
    80004df4:	00008067          	ret

0000000080004df8 <uartgetc>:
    80004df8:	ff010113          	addi	sp,sp,-16
    80004dfc:	00813423          	sd	s0,8(sp)
    80004e00:	01010413          	addi	s0,sp,16
    80004e04:	10000737          	lui	a4,0x10000
    80004e08:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80004e0c:	0017f793          	andi	a5,a5,1
    80004e10:	00078c63          	beqz	a5,80004e28 <uartgetc+0x30>
    80004e14:	00074503          	lbu	a0,0(a4)
    80004e18:	0ff57513          	andi	a0,a0,255
    80004e1c:	00813403          	ld	s0,8(sp)
    80004e20:	01010113          	addi	sp,sp,16
    80004e24:	00008067          	ret
    80004e28:	fff00513          	li	a0,-1
    80004e2c:	ff1ff06f          	j	80004e1c <uartgetc+0x24>

0000000080004e30 <uartintr>:
    80004e30:	100007b7          	lui	a5,0x10000
    80004e34:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80004e38:	0017f793          	andi	a5,a5,1
    80004e3c:	0a078463          	beqz	a5,80004ee4 <uartintr+0xb4>
    80004e40:	fe010113          	addi	sp,sp,-32
    80004e44:	00813823          	sd	s0,16(sp)
    80004e48:	00913423          	sd	s1,8(sp)
    80004e4c:	00113c23          	sd	ra,24(sp)
    80004e50:	02010413          	addi	s0,sp,32
    80004e54:	100004b7          	lui	s1,0x10000
    80004e58:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80004e5c:	0ff57513          	andi	a0,a0,255
    80004e60:	fffff097          	auipc	ra,0xfffff
    80004e64:	534080e7          	jalr	1332(ra) # 80004394 <consoleintr>
    80004e68:	0054c783          	lbu	a5,5(s1)
    80004e6c:	0017f793          	andi	a5,a5,1
    80004e70:	fe0794e3          	bnez	a5,80004e58 <uartintr+0x28>
    80004e74:	00002617          	auipc	a2,0x2
    80004e78:	41c60613          	addi	a2,a2,1052 # 80007290 <uart_tx_r>
    80004e7c:	00002517          	auipc	a0,0x2
    80004e80:	41c50513          	addi	a0,a0,1052 # 80007298 <uart_tx_w>
    80004e84:	00063783          	ld	a5,0(a2)
    80004e88:	00053703          	ld	a4,0(a0)
    80004e8c:	04f70263          	beq	a4,a5,80004ed0 <uartintr+0xa0>
    80004e90:	100005b7          	lui	a1,0x10000
    80004e94:	00003817          	auipc	a6,0x3
    80004e98:	6ac80813          	addi	a6,a6,1708 # 80008540 <uart_tx_buf>
    80004e9c:	01c0006f          	j	80004eb8 <uartintr+0x88>
    80004ea0:	0006c703          	lbu	a4,0(a3)
    80004ea4:	00f63023          	sd	a5,0(a2)
    80004ea8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80004eac:	00063783          	ld	a5,0(a2)
    80004eb0:	00053703          	ld	a4,0(a0)
    80004eb4:	00f70e63          	beq	a4,a5,80004ed0 <uartintr+0xa0>
    80004eb8:	01f7f713          	andi	a4,a5,31
    80004ebc:	00e806b3          	add	a3,a6,a4
    80004ec0:	0055c703          	lbu	a4,5(a1)
    80004ec4:	00178793          	addi	a5,a5,1
    80004ec8:	02077713          	andi	a4,a4,32
    80004ecc:	fc071ae3          	bnez	a4,80004ea0 <uartintr+0x70>
    80004ed0:	01813083          	ld	ra,24(sp)
    80004ed4:	01013403          	ld	s0,16(sp)
    80004ed8:	00813483          	ld	s1,8(sp)
    80004edc:	02010113          	addi	sp,sp,32
    80004ee0:	00008067          	ret
    80004ee4:	00002617          	auipc	a2,0x2
    80004ee8:	3ac60613          	addi	a2,a2,940 # 80007290 <uart_tx_r>
    80004eec:	00002517          	auipc	a0,0x2
    80004ef0:	3ac50513          	addi	a0,a0,940 # 80007298 <uart_tx_w>
    80004ef4:	00063783          	ld	a5,0(a2)
    80004ef8:	00053703          	ld	a4,0(a0)
    80004efc:	04f70263          	beq	a4,a5,80004f40 <uartintr+0x110>
    80004f00:	100005b7          	lui	a1,0x10000
    80004f04:	00003817          	auipc	a6,0x3
    80004f08:	63c80813          	addi	a6,a6,1596 # 80008540 <uart_tx_buf>
    80004f0c:	01c0006f          	j	80004f28 <uartintr+0xf8>
    80004f10:	0006c703          	lbu	a4,0(a3)
    80004f14:	00f63023          	sd	a5,0(a2)
    80004f18:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80004f1c:	00063783          	ld	a5,0(a2)
    80004f20:	00053703          	ld	a4,0(a0)
    80004f24:	02f70063          	beq	a4,a5,80004f44 <uartintr+0x114>
    80004f28:	01f7f713          	andi	a4,a5,31
    80004f2c:	00e806b3          	add	a3,a6,a4
    80004f30:	0055c703          	lbu	a4,5(a1)
    80004f34:	00178793          	addi	a5,a5,1
    80004f38:	02077713          	andi	a4,a4,32
    80004f3c:	fc071ae3          	bnez	a4,80004f10 <uartintr+0xe0>
    80004f40:	00008067          	ret
    80004f44:	00008067          	ret

0000000080004f48 <kinit>:
    80004f48:	fc010113          	addi	sp,sp,-64
    80004f4c:	02913423          	sd	s1,40(sp)
    80004f50:	fffff7b7          	lui	a5,0xfffff
    80004f54:	00004497          	auipc	s1,0x4
    80004f58:	60b48493          	addi	s1,s1,1547 # 8000955f <end+0xfff>
    80004f5c:	02813823          	sd	s0,48(sp)
    80004f60:	01313c23          	sd	s3,24(sp)
    80004f64:	00f4f4b3          	and	s1,s1,a5
    80004f68:	02113c23          	sd	ra,56(sp)
    80004f6c:	03213023          	sd	s2,32(sp)
    80004f70:	01413823          	sd	s4,16(sp)
    80004f74:	01513423          	sd	s5,8(sp)
    80004f78:	04010413          	addi	s0,sp,64
    80004f7c:	000017b7          	lui	a5,0x1
    80004f80:	01100993          	li	s3,17
    80004f84:	00f487b3          	add	a5,s1,a5
    80004f88:	01b99993          	slli	s3,s3,0x1b
    80004f8c:	06f9e063          	bltu	s3,a5,80004fec <kinit+0xa4>
    80004f90:	00003a97          	auipc	s5,0x3
    80004f94:	5d0a8a93          	addi	s5,s5,1488 # 80008560 <end>
    80004f98:	0754ec63          	bltu	s1,s5,80005010 <kinit+0xc8>
    80004f9c:	0734fa63          	bgeu	s1,s3,80005010 <kinit+0xc8>
    80004fa0:	00088a37          	lui	s4,0x88
    80004fa4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80004fa8:	00002917          	auipc	s2,0x2
    80004fac:	2f890913          	addi	s2,s2,760 # 800072a0 <kmem>
    80004fb0:	00ca1a13          	slli	s4,s4,0xc
    80004fb4:	0140006f          	j	80004fc8 <kinit+0x80>
    80004fb8:	000017b7          	lui	a5,0x1
    80004fbc:	00f484b3          	add	s1,s1,a5
    80004fc0:	0554e863          	bltu	s1,s5,80005010 <kinit+0xc8>
    80004fc4:	0534f663          	bgeu	s1,s3,80005010 <kinit+0xc8>
    80004fc8:	00001637          	lui	a2,0x1
    80004fcc:	00100593          	li	a1,1
    80004fd0:	00048513          	mv	a0,s1
    80004fd4:	00000097          	auipc	ra,0x0
    80004fd8:	5e4080e7          	jalr	1508(ra) # 800055b8 <__memset>
    80004fdc:	00093783          	ld	a5,0(s2)
    80004fe0:	00f4b023          	sd	a5,0(s1)
    80004fe4:	00993023          	sd	s1,0(s2)
    80004fe8:	fd4498e3          	bne	s1,s4,80004fb8 <kinit+0x70>
    80004fec:	03813083          	ld	ra,56(sp)
    80004ff0:	03013403          	ld	s0,48(sp)
    80004ff4:	02813483          	ld	s1,40(sp)
    80004ff8:	02013903          	ld	s2,32(sp)
    80004ffc:	01813983          	ld	s3,24(sp)
    80005000:	01013a03          	ld	s4,16(sp)
    80005004:	00813a83          	ld	s5,8(sp)
    80005008:	04010113          	addi	sp,sp,64
    8000500c:	00008067          	ret
    80005010:	00001517          	auipc	a0,0x1
    80005014:	33850513          	addi	a0,a0,824 # 80006348 <digits+0x18>
    80005018:	fffff097          	auipc	ra,0xfffff
    8000501c:	4b4080e7          	jalr	1204(ra) # 800044cc <panic>

0000000080005020 <freerange>:
    80005020:	fc010113          	addi	sp,sp,-64
    80005024:	000017b7          	lui	a5,0x1
    80005028:	02913423          	sd	s1,40(sp)
    8000502c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80005030:	009504b3          	add	s1,a0,s1
    80005034:	fffff537          	lui	a0,0xfffff
    80005038:	02813823          	sd	s0,48(sp)
    8000503c:	02113c23          	sd	ra,56(sp)
    80005040:	03213023          	sd	s2,32(sp)
    80005044:	01313c23          	sd	s3,24(sp)
    80005048:	01413823          	sd	s4,16(sp)
    8000504c:	01513423          	sd	s5,8(sp)
    80005050:	01613023          	sd	s6,0(sp)
    80005054:	04010413          	addi	s0,sp,64
    80005058:	00a4f4b3          	and	s1,s1,a0
    8000505c:	00f487b3          	add	a5,s1,a5
    80005060:	06f5e463          	bltu	a1,a5,800050c8 <freerange+0xa8>
    80005064:	00003a97          	auipc	s5,0x3
    80005068:	4fca8a93          	addi	s5,s5,1276 # 80008560 <end>
    8000506c:	0954e263          	bltu	s1,s5,800050f0 <freerange+0xd0>
    80005070:	01100993          	li	s3,17
    80005074:	01b99993          	slli	s3,s3,0x1b
    80005078:	0734fc63          	bgeu	s1,s3,800050f0 <freerange+0xd0>
    8000507c:	00058a13          	mv	s4,a1
    80005080:	00002917          	auipc	s2,0x2
    80005084:	22090913          	addi	s2,s2,544 # 800072a0 <kmem>
    80005088:	00002b37          	lui	s6,0x2
    8000508c:	0140006f          	j	800050a0 <freerange+0x80>
    80005090:	000017b7          	lui	a5,0x1
    80005094:	00f484b3          	add	s1,s1,a5
    80005098:	0554ec63          	bltu	s1,s5,800050f0 <freerange+0xd0>
    8000509c:	0534fa63          	bgeu	s1,s3,800050f0 <freerange+0xd0>
    800050a0:	00001637          	lui	a2,0x1
    800050a4:	00100593          	li	a1,1
    800050a8:	00048513          	mv	a0,s1
    800050ac:	00000097          	auipc	ra,0x0
    800050b0:	50c080e7          	jalr	1292(ra) # 800055b8 <__memset>
    800050b4:	00093703          	ld	a4,0(s2)
    800050b8:	016487b3          	add	a5,s1,s6
    800050bc:	00e4b023          	sd	a4,0(s1)
    800050c0:	00993023          	sd	s1,0(s2)
    800050c4:	fcfa76e3          	bgeu	s4,a5,80005090 <freerange+0x70>
    800050c8:	03813083          	ld	ra,56(sp)
    800050cc:	03013403          	ld	s0,48(sp)
    800050d0:	02813483          	ld	s1,40(sp)
    800050d4:	02013903          	ld	s2,32(sp)
    800050d8:	01813983          	ld	s3,24(sp)
    800050dc:	01013a03          	ld	s4,16(sp)
    800050e0:	00813a83          	ld	s5,8(sp)
    800050e4:	00013b03          	ld	s6,0(sp)
    800050e8:	04010113          	addi	sp,sp,64
    800050ec:	00008067          	ret
    800050f0:	00001517          	auipc	a0,0x1
    800050f4:	25850513          	addi	a0,a0,600 # 80006348 <digits+0x18>
    800050f8:	fffff097          	auipc	ra,0xfffff
    800050fc:	3d4080e7          	jalr	980(ra) # 800044cc <panic>

0000000080005100 <kfree>:
    80005100:	fe010113          	addi	sp,sp,-32
    80005104:	00813823          	sd	s0,16(sp)
    80005108:	00113c23          	sd	ra,24(sp)
    8000510c:	00913423          	sd	s1,8(sp)
    80005110:	02010413          	addi	s0,sp,32
    80005114:	03451793          	slli	a5,a0,0x34
    80005118:	04079c63          	bnez	a5,80005170 <kfree+0x70>
    8000511c:	00003797          	auipc	a5,0x3
    80005120:	44478793          	addi	a5,a5,1092 # 80008560 <end>
    80005124:	00050493          	mv	s1,a0
    80005128:	04f56463          	bltu	a0,a5,80005170 <kfree+0x70>
    8000512c:	01100793          	li	a5,17
    80005130:	01b79793          	slli	a5,a5,0x1b
    80005134:	02f57e63          	bgeu	a0,a5,80005170 <kfree+0x70>
    80005138:	00001637          	lui	a2,0x1
    8000513c:	00100593          	li	a1,1
    80005140:	00000097          	auipc	ra,0x0
    80005144:	478080e7          	jalr	1144(ra) # 800055b8 <__memset>
    80005148:	00002797          	auipc	a5,0x2
    8000514c:	15878793          	addi	a5,a5,344 # 800072a0 <kmem>
    80005150:	0007b703          	ld	a4,0(a5)
    80005154:	01813083          	ld	ra,24(sp)
    80005158:	01013403          	ld	s0,16(sp)
    8000515c:	00e4b023          	sd	a4,0(s1)
    80005160:	0097b023          	sd	s1,0(a5)
    80005164:	00813483          	ld	s1,8(sp)
    80005168:	02010113          	addi	sp,sp,32
    8000516c:	00008067          	ret
    80005170:	00001517          	auipc	a0,0x1
    80005174:	1d850513          	addi	a0,a0,472 # 80006348 <digits+0x18>
    80005178:	fffff097          	auipc	ra,0xfffff
    8000517c:	354080e7          	jalr	852(ra) # 800044cc <panic>

0000000080005180 <kalloc>:
    80005180:	fe010113          	addi	sp,sp,-32
    80005184:	00813823          	sd	s0,16(sp)
    80005188:	00913423          	sd	s1,8(sp)
    8000518c:	00113c23          	sd	ra,24(sp)
    80005190:	02010413          	addi	s0,sp,32
    80005194:	00002797          	auipc	a5,0x2
    80005198:	10c78793          	addi	a5,a5,268 # 800072a0 <kmem>
    8000519c:	0007b483          	ld	s1,0(a5)
    800051a0:	02048063          	beqz	s1,800051c0 <kalloc+0x40>
    800051a4:	0004b703          	ld	a4,0(s1)
    800051a8:	00001637          	lui	a2,0x1
    800051ac:	00500593          	li	a1,5
    800051b0:	00048513          	mv	a0,s1
    800051b4:	00e7b023          	sd	a4,0(a5)
    800051b8:	00000097          	auipc	ra,0x0
    800051bc:	400080e7          	jalr	1024(ra) # 800055b8 <__memset>
    800051c0:	01813083          	ld	ra,24(sp)
    800051c4:	01013403          	ld	s0,16(sp)
    800051c8:	00048513          	mv	a0,s1
    800051cc:	00813483          	ld	s1,8(sp)
    800051d0:	02010113          	addi	sp,sp,32
    800051d4:	00008067          	ret

00000000800051d8 <initlock>:
    800051d8:	ff010113          	addi	sp,sp,-16
    800051dc:	00813423          	sd	s0,8(sp)
    800051e0:	01010413          	addi	s0,sp,16
    800051e4:	00813403          	ld	s0,8(sp)
    800051e8:	00b53423          	sd	a1,8(a0)
    800051ec:	00052023          	sw	zero,0(a0)
    800051f0:	00053823          	sd	zero,16(a0)
    800051f4:	01010113          	addi	sp,sp,16
    800051f8:	00008067          	ret

00000000800051fc <acquire>:
    800051fc:	fe010113          	addi	sp,sp,-32
    80005200:	00813823          	sd	s0,16(sp)
    80005204:	00913423          	sd	s1,8(sp)
    80005208:	00113c23          	sd	ra,24(sp)
    8000520c:	01213023          	sd	s2,0(sp)
    80005210:	02010413          	addi	s0,sp,32
    80005214:	00050493          	mv	s1,a0
    80005218:	10002973          	csrr	s2,sstatus
    8000521c:	100027f3          	csrr	a5,sstatus
    80005220:	ffd7f793          	andi	a5,a5,-3
    80005224:	10079073          	csrw	sstatus,a5
    80005228:	fffff097          	auipc	ra,0xfffff
    8000522c:	8e8080e7          	jalr	-1816(ra) # 80003b10 <mycpu>
    80005230:	07852783          	lw	a5,120(a0)
    80005234:	06078e63          	beqz	a5,800052b0 <acquire+0xb4>
    80005238:	fffff097          	auipc	ra,0xfffff
    8000523c:	8d8080e7          	jalr	-1832(ra) # 80003b10 <mycpu>
    80005240:	07852783          	lw	a5,120(a0)
    80005244:	0004a703          	lw	a4,0(s1)
    80005248:	0017879b          	addiw	a5,a5,1
    8000524c:	06f52c23          	sw	a5,120(a0)
    80005250:	04071063          	bnez	a4,80005290 <acquire+0x94>
    80005254:	00100713          	li	a4,1
    80005258:	00070793          	mv	a5,a4
    8000525c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80005260:	0007879b          	sext.w	a5,a5
    80005264:	fe079ae3          	bnez	a5,80005258 <acquire+0x5c>
    80005268:	0ff0000f          	fence
    8000526c:	fffff097          	auipc	ra,0xfffff
    80005270:	8a4080e7          	jalr	-1884(ra) # 80003b10 <mycpu>
    80005274:	01813083          	ld	ra,24(sp)
    80005278:	01013403          	ld	s0,16(sp)
    8000527c:	00a4b823          	sd	a0,16(s1)
    80005280:	00013903          	ld	s2,0(sp)
    80005284:	00813483          	ld	s1,8(sp)
    80005288:	02010113          	addi	sp,sp,32
    8000528c:	00008067          	ret
    80005290:	0104b903          	ld	s2,16(s1)
    80005294:	fffff097          	auipc	ra,0xfffff
    80005298:	87c080e7          	jalr	-1924(ra) # 80003b10 <mycpu>
    8000529c:	faa91ce3          	bne	s2,a0,80005254 <acquire+0x58>
    800052a0:	00001517          	auipc	a0,0x1
    800052a4:	0b050513          	addi	a0,a0,176 # 80006350 <digits+0x20>
    800052a8:	fffff097          	auipc	ra,0xfffff
    800052ac:	224080e7          	jalr	548(ra) # 800044cc <panic>
    800052b0:	00195913          	srli	s2,s2,0x1
    800052b4:	fffff097          	auipc	ra,0xfffff
    800052b8:	85c080e7          	jalr	-1956(ra) # 80003b10 <mycpu>
    800052bc:	00197913          	andi	s2,s2,1
    800052c0:	07252e23          	sw	s2,124(a0)
    800052c4:	f75ff06f          	j	80005238 <acquire+0x3c>

00000000800052c8 <release>:
    800052c8:	fe010113          	addi	sp,sp,-32
    800052cc:	00813823          	sd	s0,16(sp)
    800052d0:	00113c23          	sd	ra,24(sp)
    800052d4:	00913423          	sd	s1,8(sp)
    800052d8:	01213023          	sd	s2,0(sp)
    800052dc:	02010413          	addi	s0,sp,32
    800052e0:	00052783          	lw	a5,0(a0)
    800052e4:	00079a63          	bnez	a5,800052f8 <release+0x30>
    800052e8:	00001517          	auipc	a0,0x1
    800052ec:	07050513          	addi	a0,a0,112 # 80006358 <digits+0x28>
    800052f0:	fffff097          	auipc	ra,0xfffff
    800052f4:	1dc080e7          	jalr	476(ra) # 800044cc <panic>
    800052f8:	01053903          	ld	s2,16(a0)
    800052fc:	00050493          	mv	s1,a0
    80005300:	fffff097          	auipc	ra,0xfffff
    80005304:	810080e7          	jalr	-2032(ra) # 80003b10 <mycpu>
    80005308:	fea910e3          	bne	s2,a0,800052e8 <release+0x20>
    8000530c:	0004b823          	sd	zero,16(s1)
    80005310:	0ff0000f          	fence
    80005314:	0f50000f          	fence	iorw,ow
    80005318:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000531c:	ffffe097          	auipc	ra,0xffffe
    80005320:	7f4080e7          	jalr	2036(ra) # 80003b10 <mycpu>
    80005324:	100027f3          	csrr	a5,sstatus
    80005328:	0027f793          	andi	a5,a5,2
    8000532c:	04079a63          	bnez	a5,80005380 <release+0xb8>
    80005330:	07852783          	lw	a5,120(a0)
    80005334:	02f05e63          	blez	a5,80005370 <release+0xa8>
    80005338:	fff7871b          	addiw	a4,a5,-1
    8000533c:	06e52c23          	sw	a4,120(a0)
    80005340:	00071c63          	bnez	a4,80005358 <release+0x90>
    80005344:	07c52783          	lw	a5,124(a0)
    80005348:	00078863          	beqz	a5,80005358 <release+0x90>
    8000534c:	100027f3          	csrr	a5,sstatus
    80005350:	0027e793          	ori	a5,a5,2
    80005354:	10079073          	csrw	sstatus,a5
    80005358:	01813083          	ld	ra,24(sp)
    8000535c:	01013403          	ld	s0,16(sp)
    80005360:	00813483          	ld	s1,8(sp)
    80005364:	00013903          	ld	s2,0(sp)
    80005368:	02010113          	addi	sp,sp,32
    8000536c:	00008067          	ret
    80005370:	00001517          	auipc	a0,0x1
    80005374:	00850513          	addi	a0,a0,8 # 80006378 <digits+0x48>
    80005378:	fffff097          	auipc	ra,0xfffff
    8000537c:	154080e7          	jalr	340(ra) # 800044cc <panic>
    80005380:	00001517          	auipc	a0,0x1
    80005384:	fe050513          	addi	a0,a0,-32 # 80006360 <digits+0x30>
    80005388:	fffff097          	auipc	ra,0xfffff
    8000538c:	144080e7          	jalr	324(ra) # 800044cc <panic>

0000000080005390 <holding>:
    80005390:	00052783          	lw	a5,0(a0)
    80005394:	00079663          	bnez	a5,800053a0 <holding+0x10>
    80005398:	00000513          	li	a0,0
    8000539c:	00008067          	ret
    800053a0:	fe010113          	addi	sp,sp,-32
    800053a4:	00813823          	sd	s0,16(sp)
    800053a8:	00913423          	sd	s1,8(sp)
    800053ac:	00113c23          	sd	ra,24(sp)
    800053b0:	02010413          	addi	s0,sp,32
    800053b4:	01053483          	ld	s1,16(a0)
    800053b8:	ffffe097          	auipc	ra,0xffffe
    800053bc:	758080e7          	jalr	1880(ra) # 80003b10 <mycpu>
    800053c0:	01813083          	ld	ra,24(sp)
    800053c4:	01013403          	ld	s0,16(sp)
    800053c8:	40a48533          	sub	a0,s1,a0
    800053cc:	00153513          	seqz	a0,a0
    800053d0:	00813483          	ld	s1,8(sp)
    800053d4:	02010113          	addi	sp,sp,32
    800053d8:	00008067          	ret

00000000800053dc <push_off>:
    800053dc:	fe010113          	addi	sp,sp,-32
    800053e0:	00813823          	sd	s0,16(sp)
    800053e4:	00113c23          	sd	ra,24(sp)
    800053e8:	00913423          	sd	s1,8(sp)
    800053ec:	02010413          	addi	s0,sp,32
    800053f0:	100024f3          	csrr	s1,sstatus
    800053f4:	100027f3          	csrr	a5,sstatus
    800053f8:	ffd7f793          	andi	a5,a5,-3
    800053fc:	10079073          	csrw	sstatus,a5
    80005400:	ffffe097          	auipc	ra,0xffffe
    80005404:	710080e7          	jalr	1808(ra) # 80003b10 <mycpu>
    80005408:	07852783          	lw	a5,120(a0)
    8000540c:	02078663          	beqz	a5,80005438 <push_off+0x5c>
    80005410:	ffffe097          	auipc	ra,0xffffe
    80005414:	700080e7          	jalr	1792(ra) # 80003b10 <mycpu>
    80005418:	07852783          	lw	a5,120(a0)
    8000541c:	01813083          	ld	ra,24(sp)
    80005420:	01013403          	ld	s0,16(sp)
    80005424:	0017879b          	addiw	a5,a5,1
    80005428:	06f52c23          	sw	a5,120(a0)
    8000542c:	00813483          	ld	s1,8(sp)
    80005430:	02010113          	addi	sp,sp,32
    80005434:	00008067          	ret
    80005438:	0014d493          	srli	s1,s1,0x1
    8000543c:	ffffe097          	auipc	ra,0xffffe
    80005440:	6d4080e7          	jalr	1748(ra) # 80003b10 <mycpu>
    80005444:	0014f493          	andi	s1,s1,1
    80005448:	06952e23          	sw	s1,124(a0)
    8000544c:	fc5ff06f          	j	80005410 <push_off+0x34>

0000000080005450 <pop_off>:
    80005450:	ff010113          	addi	sp,sp,-16
    80005454:	00813023          	sd	s0,0(sp)
    80005458:	00113423          	sd	ra,8(sp)
    8000545c:	01010413          	addi	s0,sp,16
    80005460:	ffffe097          	auipc	ra,0xffffe
    80005464:	6b0080e7          	jalr	1712(ra) # 80003b10 <mycpu>
    80005468:	100027f3          	csrr	a5,sstatus
    8000546c:	0027f793          	andi	a5,a5,2
    80005470:	04079663          	bnez	a5,800054bc <pop_off+0x6c>
    80005474:	07852783          	lw	a5,120(a0)
    80005478:	02f05a63          	blez	a5,800054ac <pop_off+0x5c>
    8000547c:	fff7871b          	addiw	a4,a5,-1
    80005480:	06e52c23          	sw	a4,120(a0)
    80005484:	00071c63          	bnez	a4,8000549c <pop_off+0x4c>
    80005488:	07c52783          	lw	a5,124(a0)
    8000548c:	00078863          	beqz	a5,8000549c <pop_off+0x4c>
    80005490:	100027f3          	csrr	a5,sstatus
    80005494:	0027e793          	ori	a5,a5,2
    80005498:	10079073          	csrw	sstatus,a5
    8000549c:	00813083          	ld	ra,8(sp)
    800054a0:	00013403          	ld	s0,0(sp)
    800054a4:	01010113          	addi	sp,sp,16
    800054a8:	00008067          	ret
    800054ac:	00001517          	auipc	a0,0x1
    800054b0:	ecc50513          	addi	a0,a0,-308 # 80006378 <digits+0x48>
    800054b4:	fffff097          	auipc	ra,0xfffff
    800054b8:	018080e7          	jalr	24(ra) # 800044cc <panic>
    800054bc:	00001517          	auipc	a0,0x1
    800054c0:	ea450513          	addi	a0,a0,-348 # 80006360 <digits+0x30>
    800054c4:	fffff097          	auipc	ra,0xfffff
    800054c8:	008080e7          	jalr	8(ra) # 800044cc <panic>

00000000800054cc <push_on>:
    800054cc:	fe010113          	addi	sp,sp,-32
    800054d0:	00813823          	sd	s0,16(sp)
    800054d4:	00113c23          	sd	ra,24(sp)
    800054d8:	00913423          	sd	s1,8(sp)
    800054dc:	02010413          	addi	s0,sp,32
    800054e0:	100024f3          	csrr	s1,sstatus
    800054e4:	100027f3          	csrr	a5,sstatus
    800054e8:	0027e793          	ori	a5,a5,2
    800054ec:	10079073          	csrw	sstatus,a5
    800054f0:	ffffe097          	auipc	ra,0xffffe
    800054f4:	620080e7          	jalr	1568(ra) # 80003b10 <mycpu>
    800054f8:	07852783          	lw	a5,120(a0)
    800054fc:	02078663          	beqz	a5,80005528 <push_on+0x5c>
    80005500:	ffffe097          	auipc	ra,0xffffe
    80005504:	610080e7          	jalr	1552(ra) # 80003b10 <mycpu>
    80005508:	07852783          	lw	a5,120(a0)
    8000550c:	01813083          	ld	ra,24(sp)
    80005510:	01013403          	ld	s0,16(sp)
    80005514:	0017879b          	addiw	a5,a5,1
    80005518:	06f52c23          	sw	a5,120(a0)
    8000551c:	00813483          	ld	s1,8(sp)
    80005520:	02010113          	addi	sp,sp,32
    80005524:	00008067          	ret
    80005528:	0014d493          	srli	s1,s1,0x1
    8000552c:	ffffe097          	auipc	ra,0xffffe
    80005530:	5e4080e7          	jalr	1508(ra) # 80003b10 <mycpu>
    80005534:	0014f493          	andi	s1,s1,1
    80005538:	06952e23          	sw	s1,124(a0)
    8000553c:	fc5ff06f          	j	80005500 <push_on+0x34>

0000000080005540 <pop_on>:
    80005540:	ff010113          	addi	sp,sp,-16
    80005544:	00813023          	sd	s0,0(sp)
    80005548:	00113423          	sd	ra,8(sp)
    8000554c:	01010413          	addi	s0,sp,16
    80005550:	ffffe097          	auipc	ra,0xffffe
    80005554:	5c0080e7          	jalr	1472(ra) # 80003b10 <mycpu>
    80005558:	100027f3          	csrr	a5,sstatus
    8000555c:	0027f793          	andi	a5,a5,2
    80005560:	04078463          	beqz	a5,800055a8 <pop_on+0x68>
    80005564:	07852783          	lw	a5,120(a0)
    80005568:	02f05863          	blez	a5,80005598 <pop_on+0x58>
    8000556c:	fff7879b          	addiw	a5,a5,-1
    80005570:	06f52c23          	sw	a5,120(a0)
    80005574:	07853783          	ld	a5,120(a0)
    80005578:	00079863          	bnez	a5,80005588 <pop_on+0x48>
    8000557c:	100027f3          	csrr	a5,sstatus
    80005580:	ffd7f793          	andi	a5,a5,-3
    80005584:	10079073          	csrw	sstatus,a5
    80005588:	00813083          	ld	ra,8(sp)
    8000558c:	00013403          	ld	s0,0(sp)
    80005590:	01010113          	addi	sp,sp,16
    80005594:	00008067          	ret
    80005598:	00001517          	auipc	a0,0x1
    8000559c:	e0850513          	addi	a0,a0,-504 # 800063a0 <digits+0x70>
    800055a0:	fffff097          	auipc	ra,0xfffff
    800055a4:	f2c080e7          	jalr	-212(ra) # 800044cc <panic>
    800055a8:	00001517          	auipc	a0,0x1
    800055ac:	dd850513          	addi	a0,a0,-552 # 80006380 <digits+0x50>
    800055b0:	fffff097          	auipc	ra,0xfffff
    800055b4:	f1c080e7          	jalr	-228(ra) # 800044cc <panic>

00000000800055b8 <__memset>:
    800055b8:	ff010113          	addi	sp,sp,-16
    800055bc:	00813423          	sd	s0,8(sp)
    800055c0:	01010413          	addi	s0,sp,16
    800055c4:	1a060e63          	beqz	a2,80005780 <__memset+0x1c8>
    800055c8:	40a007b3          	neg	a5,a0
    800055cc:	0077f793          	andi	a5,a5,7
    800055d0:	00778693          	addi	a3,a5,7
    800055d4:	00b00813          	li	a6,11
    800055d8:	0ff5f593          	andi	a1,a1,255
    800055dc:	fff6071b          	addiw	a4,a2,-1
    800055e0:	1b06e663          	bltu	a3,a6,8000578c <__memset+0x1d4>
    800055e4:	1cd76463          	bltu	a4,a3,800057ac <__memset+0x1f4>
    800055e8:	1a078e63          	beqz	a5,800057a4 <__memset+0x1ec>
    800055ec:	00b50023          	sb	a1,0(a0)
    800055f0:	00100713          	li	a4,1
    800055f4:	1ae78463          	beq	a5,a4,8000579c <__memset+0x1e4>
    800055f8:	00b500a3          	sb	a1,1(a0)
    800055fc:	00200713          	li	a4,2
    80005600:	1ae78a63          	beq	a5,a4,800057b4 <__memset+0x1fc>
    80005604:	00b50123          	sb	a1,2(a0)
    80005608:	00300713          	li	a4,3
    8000560c:	18e78463          	beq	a5,a4,80005794 <__memset+0x1dc>
    80005610:	00b501a3          	sb	a1,3(a0)
    80005614:	00400713          	li	a4,4
    80005618:	1ae78263          	beq	a5,a4,800057bc <__memset+0x204>
    8000561c:	00b50223          	sb	a1,4(a0)
    80005620:	00500713          	li	a4,5
    80005624:	1ae78063          	beq	a5,a4,800057c4 <__memset+0x20c>
    80005628:	00b502a3          	sb	a1,5(a0)
    8000562c:	00700713          	li	a4,7
    80005630:	18e79e63          	bne	a5,a4,800057cc <__memset+0x214>
    80005634:	00b50323          	sb	a1,6(a0)
    80005638:	00700e93          	li	t4,7
    8000563c:	00859713          	slli	a4,a1,0x8
    80005640:	00e5e733          	or	a4,a1,a4
    80005644:	01059e13          	slli	t3,a1,0x10
    80005648:	01c76e33          	or	t3,a4,t3
    8000564c:	01859313          	slli	t1,a1,0x18
    80005650:	006e6333          	or	t1,t3,t1
    80005654:	02059893          	slli	a7,a1,0x20
    80005658:	40f60e3b          	subw	t3,a2,a5
    8000565c:	011368b3          	or	a7,t1,a7
    80005660:	02859813          	slli	a6,a1,0x28
    80005664:	0108e833          	or	a6,a7,a6
    80005668:	03059693          	slli	a3,a1,0x30
    8000566c:	003e589b          	srliw	a7,t3,0x3
    80005670:	00d866b3          	or	a3,a6,a3
    80005674:	03859713          	slli	a4,a1,0x38
    80005678:	00389813          	slli	a6,a7,0x3
    8000567c:	00f507b3          	add	a5,a0,a5
    80005680:	00e6e733          	or	a4,a3,a4
    80005684:	000e089b          	sext.w	a7,t3
    80005688:	00f806b3          	add	a3,a6,a5
    8000568c:	00e7b023          	sd	a4,0(a5)
    80005690:	00878793          	addi	a5,a5,8
    80005694:	fed79ce3          	bne	a5,a3,8000568c <__memset+0xd4>
    80005698:	ff8e7793          	andi	a5,t3,-8
    8000569c:	0007871b          	sext.w	a4,a5
    800056a0:	01d787bb          	addw	a5,a5,t4
    800056a4:	0ce88e63          	beq	a7,a4,80005780 <__memset+0x1c8>
    800056a8:	00f50733          	add	a4,a0,a5
    800056ac:	00b70023          	sb	a1,0(a4)
    800056b0:	0017871b          	addiw	a4,a5,1
    800056b4:	0cc77663          	bgeu	a4,a2,80005780 <__memset+0x1c8>
    800056b8:	00e50733          	add	a4,a0,a4
    800056bc:	00b70023          	sb	a1,0(a4)
    800056c0:	0027871b          	addiw	a4,a5,2
    800056c4:	0ac77e63          	bgeu	a4,a2,80005780 <__memset+0x1c8>
    800056c8:	00e50733          	add	a4,a0,a4
    800056cc:	00b70023          	sb	a1,0(a4)
    800056d0:	0037871b          	addiw	a4,a5,3
    800056d4:	0ac77663          	bgeu	a4,a2,80005780 <__memset+0x1c8>
    800056d8:	00e50733          	add	a4,a0,a4
    800056dc:	00b70023          	sb	a1,0(a4)
    800056e0:	0047871b          	addiw	a4,a5,4
    800056e4:	08c77e63          	bgeu	a4,a2,80005780 <__memset+0x1c8>
    800056e8:	00e50733          	add	a4,a0,a4
    800056ec:	00b70023          	sb	a1,0(a4)
    800056f0:	0057871b          	addiw	a4,a5,5
    800056f4:	08c77663          	bgeu	a4,a2,80005780 <__memset+0x1c8>
    800056f8:	00e50733          	add	a4,a0,a4
    800056fc:	00b70023          	sb	a1,0(a4)
    80005700:	0067871b          	addiw	a4,a5,6
    80005704:	06c77e63          	bgeu	a4,a2,80005780 <__memset+0x1c8>
    80005708:	00e50733          	add	a4,a0,a4
    8000570c:	00b70023          	sb	a1,0(a4)
    80005710:	0077871b          	addiw	a4,a5,7
    80005714:	06c77663          	bgeu	a4,a2,80005780 <__memset+0x1c8>
    80005718:	00e50733          	add	a4,a0,a4
    8000571c:	00b70023          	sb	a1,0(a4)
    80005720:	0087871b          	addiw	a4,a5,8
    80005724:	04c77e63          	bgeu	a4,a2,80005780 <__memset+0x1c8>
    80005728:	00e50733          	add	a4,a0,a4
    8000572c:	00b70023          	sb	a1,0(a4)
    80005730:	0097871b          	addiw	a4,a5,9
    80005734:	04c77663          	bgeu	a4,a2,80005780 <__memset+0x1c8>
    80005738:	00e50733          	add	a4,a0,a4
    8000573c:	00b70023          	sb	a1,0(a4)
    80005740:	00a7871b          	addiw	a4,a5,10
    80005744:	02c77e63          	bgeu	a4,a2,80005780 <__memset+0x1c8>
    80005748:	00e50733          	add	a4,a0,a4
    8000574c:	00b70023          	sb	a1,0(a4)
    80005750:	00b7871b          	addiw	a4,a5,11
    80005754:	02c77663          	bgeu	a4,a2,80005780 <__memset+0x1c8>
    80005758:	00e50733          	add	a4,a0,a4
    8000575c:	00b70023          	sb	a1,0(a4)
    80005760:	00c7871b          	addiw	a4,a5,12
    80005764:	00c77e63          	bgeu	a4,a2,80005780 <__memset+0x1c8>
    80005768:	00e50733          	add	a4,a0,a4
    8000576c:	00b70023          	sb	a1,0(a4)
    80005770:	00d7879b          	addiw	a5,a5,13
    80005774:	00c7f663          	bgeu	a5,a2,80005780 <__memset+0x1c8>
    80005778:	00f507b3          	add	a5,a0,a5
    8000577c:	00b78023          	sb	a1,0(a5)
    80005780:	00813403          	ld	s0,8(sp)
    80005784:	01010113          	addi	sp,sp,16
    80005788:	00008067          	ret
    8000578c:	00b00693          	li	a3,11
    80005790:	e55ff06f          	j	800055e4 <__memset+0x2c>
    80005794:	00300e93          	li	t4,3
    80005798:	ea5ff06f          	j	8000563c <__memset+0x84>
    8000579c:	00100e93          	li	t4,1
    800057a0:	e9dff06f          	j	8000563c <__memset+0x84>
    800057a4:	00000e93          	li	t4,0
    800057a8:	e95ff06f          	j	8000563c <__memset+0x84>
    800057ac:	00000793          	li	a5,0
    800057b0:	ef9ff06f          	j	800056a8 <__memset+0xf0>
    800057b4:	00200e93          	li	t4,2
    800057b8:	e85ff06f          	j	8000563c <__memset+0x84>
    800057bc:	00400e93          	li	t4,4
    800057c0:	e7dff06f          	j	8000563c <__memset+0x84>
    800057c4:	00500e93          	li	t4,5
    800057c8:	e75ff06f          	j	8000563c <__memset+0x84>
    800057cc:	00600e93          	li	t4,6
    800057d0:	e6dff06f          	j	8000563c <__memset+0x84>

00000000800057d4 <__memmove>:
    800057d4:	ff010113          	addi	sp,sp,-16
    800057d8:	00813423          	sd	s0,8(sp)
    800057dc:	01010413          	addi	s0,sp,16
    800057e0:	0e060863          	beqz	a2,800058d0 <__memmove+0xfc>
    800057e4:	fff6069b          	addiw	a3,a2,-1
    800057e8:	0006881b          	sext.w	a6,a3
    800057ec:	0ea5e863          	bltu	a1,a0,800058dc <__memmove+0x108>
    800057f0:	00758713          	addi	a4,a1,7
    800057f4:	00a5e7b3          	or	a5,a1,a0
    800057f8:	40a70733          	sub	a4,a4,a0
    800057fc:	0077f793          	andi	a5,a5,7
    80005800:	00f73713          	sltiu	a4,a4,15
    80005804:	00174713          	xori	a4,a4,1
    80005808:	0017b793          	seqz	a5,a5
    8000580c:	00e7f7b3          	and	a5,a5,a4
    80005810:	10078863          	beqz	a5,80005920 <__memmove+0x14c>
    80005814:	00900793          	li	a5,9
    80005818:	1107f463          	bgeu	a5,a6,80005920 <__memmove+0x14c>
    8000581c:	0036581b          	srliw	a6,a2,0x3
    80005820:	fff8081b          	addiw	a6,a6,-1
    80005824:	02081813          	slli	a6,a6,0x20
    80005828:	01d85893          	srli	a7,a6,0x1d
    8000582c:	00858813          	addi	a6,a1,8
    80005830:	00058793          	mv	a5,a1
    80005834:	00050713          	mv	a4,a0
    80005838:	01088833          	add	a6,a7,a6
    8000583c:	0007b883          	ld	a7,0(a5)
    80005840:	00878793          	addi	a5,a5,8
    80005844:	00870713          	addi	a4,a4,8
    80005848:	ff173c23          	sd	a7,-8(a4)
    8000584c:	ff0798e3          	bne	a5,a6,8000583c <__memmove+0x68>
    80005850:	ff867713          	andi	a4,a2,-8
    80005854:	02071793          	slli	a5,a4,0x20
    80005858:	0207d793          	srli	a5,a5,0x20
    8000585c:	00f585b3          	add	a1,a1,a5
    80005860:	40e686bb          	subw	a3,a3,a4
    80005864:	00f507b3          	add	a5,a0,a5
    80005868:	06e60463          	beq	a2,a4,800058d0 <__memmove+0xfc>
    8000586c:	0005c703          	lbu	a4,0(a1)
    80005870:	00e78023          	sb	a4,0(a5)
    80005874:	04068e63          	beqz	a3,800058d0 <__memmove+0xfc>
    80005878:	0015c603          	lbu	a2,1(a1)
    8000587c:	00100713          	li	a4,1
    80005880:	00c780a3          	sb	a2,1(a5)
    80005884:	04e68663          	beq	a3,a4,800058d0 <__memmove+0xfc>
    80005888:	0025c603          	lbu	a2,2(a1)
    8000588c:	00200713          	li	a4,2
    80005890:	00c78123          	sb	a2,2(a5)
    80005894:	02e68e63          	beq	a3,a4,800058d0 <__memmove+0xfc>
    80005898:	0035c603          	lbu	a2,3(a1)
    8000589c:	00300713          	li	a4,3
    800058a0:	00c781a3          	sb	a2,3(a5)
    800058a4:	02e68663          	beq	a3,a4,800058d0 <__memmove+0xfc>
    800058a8:	0045c603          	lbu	a2,4(a1)
    800058ac:	00400713          	li	a4,4
    800058b0:	00c78223          	sb	a2,4(a5)
    800058b4:	00e68e63          	beq	a3,a4,800058d0 <__memmove+0xfc>
    800058b8:	0055c603          	lbu	a2,5(a1)
    800058bc:	00500713          	li	a4,5
    800058c0:	00c782a3          	sb	a2,5(a5)
    800058c4:	00e68663          	beq	a3,a4,800058d0 <__memmove+0xfc>
    800058c8:	0065c703          	lbu	a4,6(a1)
    800058cc:	00e78323          	sb	a4,6(a5)
    800058d0:	00813403          	ld	s0,8(sp)
    800058d4:	01010113          	addi	sp,sp,16
    800058d8:	00008067          	ret
    800058dc:	02061713          	slli	a4,a2,0x20
    800058e0:	02075713          	srli	a4,a4,0x20
    800058e4:	00e587b3          	add	a5,a1,a4
    800058e8:	f0f574e3          	bgeu	a0,a5,800057f0 <__memmove+0x1c>
    800058ec:	02069613          	slli	a2,a3,0x20
    800058f0:	02065613          	srli	a2,a2,0x20
    800058f4:	fff64613          	not	a2,a2
    800058f8:	00e50733          	add	a4,a0,a4
    800058fc:	00c78633          	add	a2,a5,a2
    80005900:	fff7c683          	lbu	a3,-1(a5)
    80005904:	fff78793          	addi	a5,a5,-1
    80005908:	fff70713          	addi	a4,a4,-1
    8000590c:	00d70023          	sb	a3,0(a4)
    80005910:	fec798e3          	bne	a5,a2,80005900 <__memmove+0x12c>
    80005914:	00813403          	ld	s0,8(sp)
    80005918:	01010113          	addi	sp,sp,16
    8000591c:	00008067          	ret
    80005920:	02069713          	slli	a4,a3,0x20
    80005924:	02075713          	srli	a4,a4,0x20
    80005928:	00170713          	addi	a4,a4,1
    8000592c:	00e50733          	add	a4,a0,a4
    80005930:	00050793          	mv	a5,a0
    80005934:	0005c683          	lbu	a3,0(a1)
    80005938:	00178793          	addi	a5,a5,1
    8000593c:	00158593          	addi	a1,a1,1
    80005940:	fed78fa3          	sb	a3,-1(a5)
    80005944:	fee798e3          	bne	a5,a4,80005934 <__memmove+0x160>
    80005948:	f89ff06f          	j	800058d0 <__memmove+0xfc>

000000008000594c <__putc>:
    8000594c:	fe010113          	addi	sp,sp,-32
    80005950:	00813823          	sd	s0,16(sp)
    80005954:	00113c23          	sd	ra,24(sp)
    80005958:	02010413          	addi	s0,sp,32
    8000595c:	00050793          	mv	a5,a0
    80005960:	fef40593          	addi	a1,s0,-17
    80005964:	00100613          	li	a2,1
    80005968:	00000513          	li	a0,0
    8000596c:	fef407a3          	sb	a5,-17(s0)
    80005970:	fffff097          	auipc	ra,0xfffff
    80005974:	b3c080e7          	jalr	-1220(ra) # 800044ac <console_write>
    80005978:	01813083          	ld	ra,24(sp)
    8000597c:	01013403          	ld	s0,16(sp)
    80005980:	02010113          	addi	sp,sp,32
    80005984:	00008067          	ret

0000000080005988 <__getc>:
    80005988:	fe010113          	addi	sp,sp,-32
    8000598c:	00813823          	sd	s0,16(sp)
    80005990:	00113c23          	sd	ra,24(sp)
    80005994:	02010413          	addi	s0,sp,32
    80005998:	fe840593          	addi	a1,s0,-24
    8000599c:	00100613          	li	a2,1
    800059a0:	00000513          	li	a0,0
    800059a4:	fffff097          	auipc	ra,0xfffff
    800059a8:	ae8080e7          	jalr	-1304(ra) # 8000448c <console_read>
    800059ac:	fe844503          	lbu	a0,-24(s0)
    800059b0:	01813083          	ld	ra,24(sp)
    800059b4:	01013403          	ld	s0,16(sp)
    800059b8:	02010113          	addi	sp,sp,32
    800059bc:	00008067          	ret

00000000800059c0 <console_handler>:
    800059c0:	fe010113          	addi	sp,sp,-32
    800059c4:	00813823          	sd	s0,16(sp)
    800059c8:	00113c23          	sd	ra,24(sp)
    800059cc:	00913423          	sd	s1,8(sp)
    800059d0:	02010413          	addi	s0,sp,32
    800059d4:	14202773          	csrr	a4,scause
    800059d8:	100027f3          	csrr	a5,sstatus
    800059dc:	0027f793          	andi	a5,a5,2
    800059e0:	06079e63          	bnez	a5,80005a5c <console_handler+0x9c>
    800059e4:	00074c63          	bltz	a4,800059fc <console_handler+0x3c>
    800059e8:	01813083          	ld	ra,24(sp)
    800059ec:	01013403          	ld	s0,16(sp)
    800059f0:	00813483          	ld	s1,8(sp)
    800059f4:	02010113          	addi	sp,sp,32
    800059f8:	00008067          	ret
    800059fc:	0ff77713          	andi	a4,a4,255
    80005a00:	00900793          	li	a5,9
    80005a04:	fef712e3          	bne	a4,a5,800059e8 <console_handler+0x28>
    80005a08:	ffffe097          	auipc	ra,0xffffe
    80005a0c:	6dc080e7          	jalr	1756(ra) # 800040e4 <plic_claim>
    80005a10:	00a00793          	li	a5,10
    80005a14:	00050493          	mv	s1,a0
    80005a18:	02f50c63          	beq	a0,a5,80005a50 <console_handler+0x90>
    80005a1c:	fc0506e3          	beqz	a0,800059e8 <console_handler+0x28>
    80005a20:	00050593          	mv	a1,a0
    80005a24:	00001517          	auipc	a0,0x1
    80005a28:	88450513          	addi	a0,a0,-1916 # 800062a8 <CONSOLE_STATUS+0x298>
    80005a2c:	fffff097          	auipc	ra,0xfffff
    80005a30:	afc080e7          	jalr	-1284(ra) # 80004528 <__printf>
    80005a34:	01013403          	ld	s0,16(sp)
    80005a38:	01813083          	ld	ra,24(sp)
    80005a3c:	00048513          	mv	a0,s1
    80005a40:	00813483          	ld	s1,8(sp)
    80005a44:	02010113          	addi	sp,sp,32
    80005a48:	ffffe317          	auipc	t1,0xffffe
    80005a4c:	6d430067          	jr	1748(t1) # 8000411c <plic_complete>
    80005a50:	fffff097          	auipc	ra,0xfffff
    80005a54:	3e0080e7          	jalr	992(ra) # 80004e30 <uartintr>
    80005a58:	fddff06f          	j	80005a34 <console_handler+0x74>
    80005a5c:	00001517          	auipc	a0,0x1
    80005a60:	94c50513          	addi	a0,a0,-1716 # 800063a8 <digits+0x78>
    80005a64:	fffff097          	auipc	ra,0xfffff
    80005a68:	a68080e7          	jalr	-1432(ra) # 800044cc <panic>
	...

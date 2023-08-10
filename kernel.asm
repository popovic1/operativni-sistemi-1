
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00007117          	auipc	sp,0x7
    80000004:	39813103          	ld	sp,920(sp) # 80007398 <_GLOBAL_OFFSET_TABLE_+0x30>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	099030ef          	jal	ra,800038b4 <start>

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
    800010a8:	1f5000ef          	jal	ra,80001a9c <_ZN5Riscv11trapHandlerEv>

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
    80001304:	ff010113          	addi	sp,sp,-16
    80001308:	00813423          	sd	s0,8(sp)
    8000130c:	01010413          	addi	s0,sp,16
    80001310:	01100793          	li	a5,17
    80001314:	00078513          	mv	a0,a5
    __asm__ volatile ("mv a1, %0" : : "r"(a1));
    80001318:	00058593          	mv	a1,a1
    __asm__ volatile ("ld %0, 12*8(fp)" : "=r"(a2));
    return a2;
}

inline void Riscv::w_a2(uint64 a2) {
    __asm__ volatile ("mv a2, %0" : : "r"(a2));
    8000131c:	00060613          	mv	a2,a2
    __asm__ volatile ("ld %0, 13*8(fp)" : "=r"(a3));
    return a3;
}

inline void Riscv::w_a3(uint64 a3) {
    __asm__ volatile ("mv a3, %0" : : "r"(a3));
    80001320:	00050693          	mv	a3,a0
    Riscv::w_a0(0x11);
    Riscv::w_a1((uint64) start_routine);
    Riscv::w_a2((uint64) arg);
    Riscv::w_a3((uint64) handle);

    __asm__ volatile ("ecall");
    80001324:	00000073          	ecall

    return 0;

}
    80001328:	00000513          	li	a0,0
    8000132c:	00813403          	ld	s0,8(sp)
    80001330:	01010113          	addi	sp,sp,16
    80001334:	00008067          	ret

0000000080001338 <_Z11thread_exitv>:

int thread_exit(){
    80001338:	fe010113          	addi	sp,sp,-32
    8000133c:	00813c23          	sd	s0,24(sp)
    80001340:	02010413          	addi	s0,sp,32
    __asm__ volatile ("mv a0, %0" : : "r"(a0));
    80001344:	01200793          	li	a5,18
    80001348:	00078513          	mv	a0,a5
    Riscv::w_a0(0x12);
    __asm__ volatile ("ecall");
    8000134c:	00000073          	ecall
    __asm__ volatile ("ld %0, 10*8(fp)" : "=r"(a0));
    80001350:	05043783          	ld	a5,80(s0)
    80001354:	fef43023          	sd	a5,-32(s0)
    return a0;
    80001358:	fe043783          	ld	a5,-32(s0)
    volatile uint64 a0 = Riscv::r_a0();
    8000135c:	fef43423          	sd	a5,-24(s0)
    return a0;
    80001360:	fe843503          	ld	a0,-24(s0)
}
    80001364:	0005051b          	sext.w	a0,a0
    80001368:	01813403          	ld	s0,24(sp)
    8000136c:	02010113          	addi	sp,sp,32
    80001370:	00008067          	ret

0000000080001374 <_Z15thread_dispatchv>:

void thread_dispatch(){
    80001374:	ff010113          	addi	sp,sp,-16
    80001378:	00813423          	sd	s0,8(sp)
    8000137c:	01010413          	addi	s0,sp,16
    __asm__ volatile ("mv a0, %0" : : "r"(a0));
    80001380:	01300793          	li	a5,19
    80001384:	00078513          	mv	a0,a5
    Riscv::w_a0(0x13);
    __asm__ volatile ("ecall");
    80001388:	00000073          	ecall
}
    8000138c:	00813403          	ld	s0,8(sp)
    80001390:	01010113          	addi	sp,sp,16
    80001394:	00008067          	ret

0000000080001398 <_Z11thread_joinP7_thread>:

void thread_join(thread_t handle){
    80001398:	ff010113          	addi	sp,sp,-16
    8000139c:	00813423          	sd	s0,8(sp)
    800013a0:	01010413          	addi	s0,sp,16
    800013a4:	01400793          	li	a5,20
    800013a8:	00078513          	mv	a0,a5
    Riscv::w_a0(0x14);

    800013ac:	00813403          	ld	s0,8(sp)
    800013b0:	01010113          	addi	sp,sp,16
    800013b4:	00008067          	ret

00000000800013b8 <_ZN3PCB8dispatchEv>:
PCB* PCB::running;




void PCB::dispatch() {
    800013b8:	fe010113          	addi	sp,sp,-32
    800013bc:	00113c23          	sd	ra,24(sp)
    800013c0:	00813823          	sd	s0,16(sp)
    800013c4:	00913423          	sd	s1,8(sp)
    800013c8:	02010413          	addi	s0,sp,32
    Riscv::pushRegisters();
    800013cc:	00000097          	auipc	ra,0x0
    800013d0:	d74080e7          	jalr	-652(ra) # 80001140 <_ZN5Riscv13pushRegistersEv>

    PCB *old = running;
    800013d4:	00006497          	auipc	s1,0x6
    800013d8:	02c4b483          	ld	s1,44(s1) # 80007400 <_ZN3PCB7runningE>
        FINISHED
    };

    ~PCB() { delete[] stack; }

    bool isFinished() const { return state == FINISHED; }
    800013dc:	0284a703          	lw	a4,40(s1)
    if (!old->isFinished()) {
    800013e0:	00300793          	li	a5,3
    800013e4:	04f71463          	bne	a4,a5,8000142c <_ZN3PCB8dispatchEv+0x74>
        old->state = READY;
        Scheduler::put(old);
    }
    running = Scheduler::get();
    800013e8:	00000097          	auipc	ra,0x0
    800013ec:	12c080e7          	jalr	300(ra) # 80001514 <_ZN9Scheduler3getEv>
    800013f0:	00006797          	auipc	a5,0x6
    800013f4:	00a7b823          	sd	a0,16(a5) # 80007400 <_ZN3PCB7runningE>
    running->state=RUNNING;
    800013f8:	00100793          	li	a5,1
    800013fc:	02f52423          	sw	a5,40(a0)

    PCB::contextSwitch(&old->context, &running->context);
    80001400:	01850593          	addi	a1,a0,24
    80001404:	01848513          	addi	a0,s1,24
    80001408:	00000097          	auipc	ra,0x0
    8000140c:	e30080e7          	jalr	-464(ra) # 80001238 <_ZN3PCB13contextSwitchEPNS_7ContextES1_>

    Riscv::popRegisters();
    80001410:	00000097          	auipc	ra,0x0
    80001414:	dac080e7          	jalr	-596(ra) # 800011bc <_ZN5Riscv12popRegistersEv>
}
    80001418:	01813083          	ld	ra,24(sp)
    8000141c:	01013403          	ld	s0,16(sp)
    80001420:	00813483          	ld	s1,8(sp)
    80001424:	02010113          	addi	sp,sp,32
    80001428:	00008067          	ret
        old->state = READY;
    8000142c:	0204a423          	sw	zero,40(s1)
        Scheduler::put(old);
    80001430:	00048513          	mv	a0,s1
    80001434:	00000097          	auipc	ra,0x0
    80001438:	148080e7          	jalr	328(ra) # 8000157c <_ZN9Scheduler3putEP3PCB>
    8000143c:	fadff06f          	j	800013e8 <_ZN3PCB8dispatchEv+0x30>

0000000080001440 <_ZN3PCB4exitEv>:

int PCB::exit() {
    if(running->state==RUNNING){
    80001440:	00006797          	auipc	a5,0x6
    80001444:	fc07b783          	ld	a5,-64(a5) # 80007400 <_ZN3PCB7runningE>
    80001448:	0287a683          	lw	a3,40(a5)
    8000144c:	00100713          	li	a4,1
    80001450:	02e69c63          	bne	a3,a4,80001488 <_ZN3PCB4exitEv+0x48>
int PCB::exit() {
    80001454:	ff010113          	addi	sp,sp,-16
    80001458:	00113423          	sd	ra,8(sp)
    8000145c:	00813023          	sd	s0,0(sp)
    80001460:	01010413          	addi	s0,sp,16
        running->state=FINISHED;
    80001464:	00300713          	li	a4,3
    80001468:	02e7a423          	sw	a4,40(a5)
        dispatch();
    8000146c:	00000097          	auipc	ra,0x0
    80001470:	f4c080e7          	jalr	-180(ra) # 800013b8 <_ZN3PCB8dispatchEv>
        return 0;
    80001474:	00000513          	li	a0,0
    }
    return -1;
}
    80001478:	00813083          	ld	ra,8(sp)
    8000147c:	00013403          	ld	s0,0(sp)
    80001480:	01010113          	addi	sp,sp,16
    80001484:	00008067          	ret
    return -1;
    80001488:	fff00513          	li	a0,-1
}
    8000148c:	00008067          	ret

0000000080001490 <_ZN3PCB7wrapperEv>:

void PCB::wrapper() {
    80001490:	ff010113          	addi	sp,sp,-16
    80001494:	00113423          	sd	ra,8(sp)
    80001498:	00813023          	sd	s0,0(sp)
    8000149c:	01010413          	addi	s0,sp,16
    Riscv::popSppSpie();
    800014a0:	00000097          	auipc	ra,0x0
    800014a4:	5dc080e7          	jalr	1500(ra) # 80001a7c <_ZN5Riscv10popSppSpieEv>
    running->body(running->args);
    800014a8:	00006797          	auipc	a5,0x6
    800014ac:	f587b783          	ld	a5,-168(a5) # 80007400 <_ZN3PCB7runningE>
    800014b0:	0007b703          	ld	a4,0(a5)
    800014b4:	0107b503          	ld	a0,16(a5)
    800014b8:	000700e7          	jalr	a4
    thread_exit();
    800014bc:	00000097          	auipc	ra,0x0
    800014c0:	e7c080e7          	jalr	-388(ra) # 80001338 <_Z11thread_exitv>
}
    800014c4:	00813083          	ld	ra,8(sp)
    800014c8:	00013403          	ld	s0,0(sp)
    800014cc:	01010113          	addi	sp,sp,16
    800014d0:	00008067          	ret

00000000800014d4 <_Z41__static_initialization_and_destruction_0ii>:
    return Scheduler::readyQueue.removeFirst();
}

void Scheduler::put(PCB *handle) {
    Scheduler::readyQueue.addLast(handle);
    800014d4:	ff010113          	addi	sp,sp,-16
    800014d8:	00813423          	sd	s0,8(sp)
    800014dc:	01010413          	addi	s0,sp,16
    800014e0:	00100793          	li	a5,1
    800014e4:	00f50863          	beq	a0,a5,800014f4 <_Z41__static_initialization_and_destruction_0ii+0x20>
    800014e8:	00813403          	ld	s0,8(sp)
    800014ec:	01010113          	addi	sp,sp,16
    800014f0:	00008067          	ret
    800014f4:	000107b7          	lui	a5,0x10
    800014f8:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800014fc:	fef596e3          	bne	a1,a5,800014e8 <_Z41__static_initialization_and_destruction_0ii+0x14>
    };

    Elem *head, *tail;

public:
    List() : head(0), tail(0) {}
    80001500:	00006797          	auipc	a5,0x6
    80001504:	f0878793          	addi	a5,a5,-248 # 80007408 <_ZN9Scheduler10readyQueueE>
    80001508:	0007b023          	sd	zero,0(a5)
    8000150c:	0007b423          	sd	zero,8(a5)
    80001510:	fd9ff06f          	j	800014e8 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080001514 <_ZN9Scheduler3getEv>:
PCB *Scheduler::get() {
    80001514:	fe010113          	addi	sp,sp,-32
    80001518:	00113c23          	sd	ra,24(sp)
    8000151c:	00813823          	sd	s0,16(sp)
    80001520:	00913423          	sd	s1,8(sp)
    80001524:	02010413          	addi	s0,sp,32
        }
    }

    T *removeFirst()
    {
        if (!head) { return 0; }
    80001528:	00006517          	auipc	a0,0x6
    8000152c:	ee053503          	ld	a0,-288(a0) # 80007408 <_ZN9Scheduler10readyQueueE>
    80001530:	04050263          	beqz	a0,80001574 <_ZN9Scheduler3getEv+0x60>

        Elem *elem = head;
        head = head->next;
    80001534:	00853783          	ld	a5,8(a0)
    80001538:	00006717          	auipc	a4,0x6
    8000153c:	ecf73823          	sd	a5,-304(a4) # 80007408 <_ZN9Scheduler10readyQueueE>
        if (!head) { tail = 0; }
    80001540:	02078463          	beqz	a5,80001568 <_ZN9Scheduler3getEv+0x54>

        T *ret = elem->data;
    80001544:	00053483          	ld	s1,0(a0)
        delete elem;
    80001548:	00000097          	auipc	ra,0x0
    8000154c:	2d4080e7          	jalr	724(ra) # 8000181c <_ZdlPv>
}
    80001550:	00048513          	mv	a0,s1
    80001554:	01813083          	ld	ra,24(sp)
    80001558:	01013403          	ld	s0,16(sp)
    8000155c:	00813483          	ld	s1,8(sp)
    80001560:	02010113          	addi	sp,sp,32
    80001564:	00008067          	ret
        if (!head) { tail = 0; }
    80001568:	00006797          	auipc	a5,0x6
    8000156c:	ea07b423          	sd	zero,-344(a5) # 80007410 <_ZN9Scheduler10readyQueueE+0x8>
    80001570:	fd5ff06f          	j	80001544 <_ZN9Scheduler3getEv+0x30>
        if (!head) { return 0; }
    80001574:	00050493          	mv	s1,a0
    return Scheduler::readyQueue.removeFirst();
    80001578:	fd9ff06f          	j	80001550 <_ZN9Scheduler3getEv+0x3c>

000000008000157c <_ZN9Scheduler3putEP3PCB>:
void Scheduler::put(PCB *handle) {
    8000157c:	fe010113          	addi	sp,sp,-32
    80001580:	00113c23          	sd	ra,24(sp)
    80001584:	00813823          	sd	s0,16(sp)
    80001588:	00913423          	sd	s1,8(sp)
    8000158c:	02010413          	addi	s0,sp,32
    80001590:	00050493          	mv	s1,a0
        Elem *elem = new Elem(data, 0);
    80001594:	01000513          	li	a0,16
    80001598:	00000097          	auipc	ra,0x0
    8000159c:	234080e7          	jalr	564(ra) # 800017cc <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    800015a0:	00953023          	sd	s1,0(a0)
    800015a4:	00053423          	sd	zero,8(a0)
        if (tail)
    800015a8:	00006797          	auipc	a5,0x6
    800015ac:	e687b783          	ld	a5,-408(a5) # 80007410 <_ZN9Scheduler10readyQueueE+0x8>
    800015b0:	02078263          	beqz	a5,800015d4 <_ZN9Scheduler3putEP3PCB+0x58>
            tail->next = elem;
    800015b4:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    800015b8:	00006797          	auipc	a5,0x6
    800015bc:	e4a7bc23          	sd	a0,-424(a5) # 80007410 <_ZN9Scheduler10readyQueueE+0x8>
    800015c0:	01813083          	ld	ra,24(sp)
    800015c4:	01013403          	ld	s0,16(sp)
    800015c8:	00813483          	ld	s1,8(sp)
    800015cc:	02010113          	addi	sp,sp,32
    800015d0:	00008067          	ret
            head = tail = elem;
    800015d4:	00006797          	auipc	a5,0x6
    800015d8:	e3478793          	addi	a5,a5,-460 # 80007408 <_ZN9Scheduler10readyQueueE>
    800015dc:	00a7b423          	sd	a0,8(a5)
    800015e0:	00a7b023          	sd	a0,0(a5)
    800015e4:	fddff06f          	j	800015c0 <_ZN9Scheduler3putEP3PCB+0x44>

00000000800015e8 <_GLOBAL__sub_I__ZN9Scheduler10readyQueueE>:
    800015e8:	ff010113          	addi	sp,sp,-16
    800015ec:	00113423          	sd	ra,8(sp)
    800015f0:	00813023          	sd	s0,0(sp)
    800015f4:	01010413          	addi	s0,sp,16
    800015f8:	000105b7          	lui	a1,0x10
    800015fc:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80001600:	00100513          	li	a0,1
    80001604:	00000097          	auipc	ra,0x0
    80001608:	ed0080e7          	jalr	-304(ra) # 800014d4 <_Z41__static_initialization_and_destruction_0ii>
    8000160c:	00813083          	ld	ra,8(sp)
    80001610:	00013403          	ld	s0,0(sp)
    80001614:	01010113          	addi	sp,sp,16
    80001618:	00008067          	ret

000000008000161c <_Z7createCm>:



};

C* createC(uint64 n){
    8000161c:	fe010113          	addi	sp,sp,-32
    80001620:	00113c23          	sd	ra,24(sp)
    80001624:	00813823          	sd	s0,16(sp)
    80001628:	00913423          	sd	s1,8(sp)
    8000162c:	02010413          	addi	s0,sp,32
    80001630:	00050493          	mv	s1,a0
    return new C(n);
    80001634:	00800513          	li	a0,8
    80001638:	00000097          	auipc	ra,0x0
    8000163c:	194080e7          	jalr	404(ra) # 800017cc <_Znwm>
        num = n;
    80001640:	00953023          	sd	s1,0(a0)
}
    80001644:	01813083          	ld	ra,24(sp)
    80001648:	01013403          	ld	s0,16(sp)
    8000164c:	00813483          	ld	s1,8(sp)
    80001650:	02010113          	addi	sp,sp,32
    80001654:	00008067          	ret

0000000080001658 <main>:

extern void userMain();

int main() {
    80001658:	fe010113          	addi	sp,sp,-32
    8000165c:	00113c23          	sd	ra,24(sp)
    80001660:	00813823          	sd	s0,16(sp)
    80001664:	00913423          	sd	s1,8(sp)
    80001668:	01213023          	sd	s2,0(sp)
    8000166c:	02010413          	addi	s0,sp,32
public:


    // Get the singleton instance
    static MemoryAllocator &getInstance() {
        static MemoryAllocator instance;
    80001670:	00006797          	auipc	a5,0x6
    80001674:	da87c783          	lbu	a5,-600(a5) # 80007418 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80001678:	00079863          	bnez	a5,80001688 <main+0x30>
    8000167c:	00100793          	li	a5,1
    80001680:	00006717          	auipc	a4,0x6
    80001684:	d8f70c23          	sb	a5,-616(a4) # 80007418 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
//        printString("\n");
//        uint64 end = (uint64)((Block *) HEAP_END_ADDR);
//        printInteger(end);
//        printString("\n");

        free_list = (Block *) HEAP_START_ADDR;
    80001688:	00006797          	auipc	a5,0x6
    8000168c:	cf87b783          	ld	a5,-776(a5) # 80007380 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001690:	0007b703          	ld	a4,0(a5)
    80001694:	00006697          	auipc	a3,0x6
    80001698:	d1c6b683          	ld	a3,-740(a3) # 800073b0 <_GLOBAL_OFFSET_TABLE_+0x48>
    8000169c:	00e6b023          	sd	a4,0(a3)
        free_list->size = (uint64 *) HEAP_END_ADDR - (uint64 *) HEAP_START_ADDR;
    800016a0:	00006797          	auipc	a5,0x6
    800016a4:	d087b783          	ld	a5,-760(a5) # 800073a8 <_GLOBAL_OFFSET_TABLE_+0x40>
    800016a8:	0007b783          	ld	a5,0(a5)
    800016ac:	40e787b3          	sub	a5,a5,a4
    800016b0:	4037d793          	srai	a5,a5,0x3
    800016b4:	00f73023          	sd	a5,0(a4)
        free_list->next = nullptr;
    800016b8:	0006b783          	ld	a5,0(a3)
    800016bc:	0007b423          	sd	zero,8(a5)
        allocated_list = nullptr;
    800016c0:	00006797          	auipc	a5,0x6
    800016c4:	cd07b783          	ld	a5,-816(a5) # 80007390 <_GLOBAL_OFFSET_TABLE_+0x28>
    800016c8:	0007b023          	sd	zero,0(a5)


    MemoryAllocator::getInstance().init();
    Riscv::w_stvec((uint64) &Riscv::supervisorTrap+1);
    800016cc:	00006797          	auipc	a5,0x6
    800016d0:	cbc7b783          	ld	a5,-836(a5) # 80007388 <_GLOBAL_OFFSET_TABLE_+0x20>
    800016d4:	00178793          	addi	a5,a5,1
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    800016d8:	10579073          	csrw	stvec,a5
    PCB* pcb = new PCB(nullptr, nullptr, nullptr);
    800016dc:	03000513          	li	a0,48
    800016e0:	00000097          	auipc	ra,0x0
    800016e4:	0ec080e7          	jalr	236(ra) # 800017cc <_Znwm>
    800016e8:	00050493          	mv	s1,a0

    static void wrapper();

public:
    PCB(Body body, void *args, uint64 *stack) {
        this->body = body;
    800016ec:	00053023          	sd	zero,0(a0)
        this->stack = stack;
    800016f0:	00053423          	sd	zero,8(a0)
        context = {(uint64) &wrapper,
    800016f4:	00006797          	auipc	a5,0x6
    800016f8:	c847b783          	ld	a5,-892(a5) # 80007378 <_GLOBAL_OFFSET_TABLE_+0x10>
    800016fc:	00f53c23          	sd	a5,24(a0)
    80001700:	02053023          	sd	zero,32(a0)
                   stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
        };
        this->args = args;
    80001704:	00053823          	sd	zero,16(a0)
        state = READY;
    80001708:	02052423          	sw	zero,40(a0)
    PCB::running=pcb;
    8000170c:	00006797          	auipc	a5,0x6
    80001710:	c947b783          	ld	a5,-876(a5) # 800073a0 <_GLOBAL_OFFSET_TABLE_+0x38>
    80001714:	00a7b023          	sd	a0,0(a5)
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001718:	00200793          	li	a5,2
    8000171c:	1007a073          	csrs	sstatus,a5
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);

    switchToUserMode();
    80001720:	00000097          	auipc	ra,0x0
    80001724:	1e4080e7          	jalr	484(ra) # 80001904 <_Z16switchToUserModev>

    Thread* userThread = new Thread((void (*)(void *))(userMain), nullptr);
    80001728:	02000513          	li	a0,32
    8000172c:	00000097          	auipc	ra,0x0
    80001730:	0a0080e7          	jalr	160(ra) # 800017cc <_Znwm>
    80001734:	00050913          	mv	s2,a0
    80001738:	00000613          	li	a2,0
    8000173c:	00006597          	auipc	a1,0x6
    80001740:	c345b583          	ld	a1,-972(a1) # 80007370 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001744:	00000097          	auipc	ra,0x0
    80001748:	1e8080e7          	jalr	488(ra) # 8000192c <_ZN6ThreadC1EPFvPvES0_>
    userThread->start();
    8000174c:	00090513          	mv	a0,s2
    80001750:	00000097          	auipc	ra,0x0
    80001754:	290080e7          	jalr	656(ra) # 800019e0 <_ZN6Thread5startEv>

    thread_dispatch();
    80001758:	00000097          	auipc	ra,0x0
    8000175c:	c1c080e7          	jalr	-996(ra) # 80001374 <_Z15thread_dispatchv>

    delete userThread;
    80001760:	00090a63          	beqz	s2,80001774 <main+0x11c>
    80001764:	00093783          	ld	a5,0(s2)
    80001768:	0087b783          	ld	a5,8(a5)
    8000176c:	00090513          	mv	a0,s2
    80001770:	000780e7          	jalr	a5
    delete pcb;
    80001774:	02048063          	beqz	s1,80001794 <main+0x13c>
    ~PCB() { delete[] stack; }
    80001778:	0084b503          	ld	a0,8(s1)
    8000177c:	00050663          	beqz	a0,80001788 <main+0x130>
    80001780:	00000097          	auipc	ra,0x0
    80001784:	0c4080e7          	jalr	196(ra) # 80001844 <_ZdaPv>
    80001788:	00048513          	mv	a0,s1
    8000178c:	00000097          	auipc	ra,0x0
    80001790:	090080e7          	jalr	144(ra) # 8000181c <_ZdlPv>


    //printString("Finished\n");

    return 0;
    80001794:	00000513          	li	a0,0
    80001798:	01813083          	ld	ra,24(sp)
    8000179c:	01013403          	ld	s0,16(sp)
    800017a0:	00813483          	ld	s1,8(sp)
    800017a4:	00013903          	ld	s2,0(sp)
    800017a8:	02010113          	addi	sp,sp,32
    800017ac:	00008067          	ret
    800017b0:	00050493          	mv	s1,a0
    Thread* userThread = new Thread((void (*)(void *))(userMain), nullptr);
    800017b4:	00090513          	mv	a0,s2
    800017b8:	00000097          	auipc	ra,0x0
    800017bc:	064080e7          	jalr	100(ra) # 8000181c <_ZdlPv>
    800017c0:	00048513          	mv	a0,s1
    800017c4:	00007097          	auipc	ra,0x7
    800017c8:	d54080e7          	jalr	-684(ra) # 80008518 <_Unwind_Resume>

00000000800017cc <_Znwm>:
// Created by os on 2/2/23.
//

#include "../h/syscall_cpp.hpp"

void* operator new(size_t size) {
    800017cc:	ff010113          	addi	sp,sp,-16
    800017d0:	00113423          	sd	ra,8(sp)
    800017d4:	00813023          	sd	s0,0(sp)
    800017d8:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    800017dc:	00000097          	auipc	ra,0x0
    800017e0:	a90080e7          	jalr	-1392(ra) # 8000126c <_Z9mem_allocm>
}
    800017e4:	00813083          	ld	ra,8(sp)
    800017e8:	00013403          	ld	s0,0(sp)
    800017ec:	01010113          	addi	sp,sp,16
    800017f0:	00008067          	ret

00000000800017f4 <_Znam>:

void* operator new[](size_t size) {
    800017f4:	ff010113          	addi	sp,sp,-16
    800017f8:	00113423          	sd	ra,8(sp)
    800017fc:	00813023          	sd	s0,0(sp)
    80001800:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80001804:	00000097          	auipc	ra,0x0
    80001808:	a68080e7          	jalr	-1432(ra) # 8000126c <_Z9mem_allocm>
}
    8000180c:	00813083          	ld	ra,8(sp)
    80001810:	00013403          	ld	s0,0(sp)
    80001814:	01010113          	addi	sp,sp,16
    80001818:	00008067          	ret

000000008000181c <_ZdlPv>:

void operator delete(void *ptr) { mem_free(ptr); }
    8000181c:	ff010113          	addi	sp,sp,-16
    80001820:	00113423          	sd	ra,8(sp)
    80001824:	00813023          	sd	s0,0(sp)
    80001828:	01010413          	addi	s0,sp,16
    8000182c:	00000097          	auipc	ra,0x0
    80001830:	a7c080e7          	jalr	-1412(ra) # 800012a8 <_Z8mem_freePv>
    80001834:	00813083          	ld	ra,8(sp)
    80001838:	00013403          	ld	s0,0(sp)
    8000183c:	01010113          	addi	sp,sp,16
    80001840:	00008067          	ret

0000000080001844 <_ZdaPv>:

void operator delete[](void *ptr) { mem_free(ptr); }
    80001844:	ff010113          	addi	sp,sp,-16
    80001848:	00113423          	sd	ra,8(sp)
    8000184c:	00813023          	sd	s0,0(sp)
    80001850:	01010413          	addi	s0,sp,16
    80001854:	00000097          	auipc	ra,0x0
    80001858:	a54080e7          	jalr	-1452(ra) # 800012a8 <_Z8mem_freePv>
    8000185c:	00813083          	ld	ra,8(sp)
    80001860:	00013403          	ld	s0,0(sp)
    80001864:	01010113          	addi	sp,sp,16
    80001868:	00008067          	ret

000000008000186c <_ZN6ThreadD1Ev>:

void Thread::dispatch() {
    thread_dispatch();
}

Thread::~Thread() {
    8000186c:	fe010113          	addi	sp,sp,-32
    80001870:	00113c23          	sd	ra,24(sp)
    80001874:	00813823          	sd	s0,16(sp)
    80001878:	00913423          	sd	s1,8(sp)
    8000187c:	02010413          	addi	s0,sp,32
    80001880:	00006797          	auipc	a5,0x6
    80001884:	a1878793          	addi	a5,a5,-1512 # 80007298 <_ZTV6Thread+0x10>
    80001888:	00f53023          	sd	a5,0(a0)
    delete (PCB*)myHandle;
    8000188c:	00853483          	ld	s1,8(a0)
    80001890:	02048063          	beqz	s1,800018b0 <_ZN6ThreadD1Ev+0x44>
    80001894:	0084b503          	ld	a0,8(s1)
    80001898:	00050663          	beqz	a0,800018a4 <_ZN6ThreadD1Ev+0x38>
    8000189c:	00000097          	auipc	ra,0x0
    800018a0:	fa8080e7          	jalr	-88(ra) # 80001844 <_ZdaPv>
    800018a4:	00048513          	mv	a0,s1
    800018a8:	00000097          	auipc	ra,0x0
    800018ac:	f74080e7          	jalr	-140(ra) # 8000181c <_ZdlPv>
}
    800018b0:	01813083          	ld	ra,24(sp)
    800018b4:	01013403          	ld	s0,16(sp)
    800018b8:	00813483          	ld	s1,8(sp)
    800018bc:	02010113          	addi	sp,sp,32
    800018c0:	00008067          	ret

00000000800018c4 <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    800018c4:	fe010113          	addi	sp,sp,-32
    800018c8:	00113c23          	sd	ra,24(sp)
    800018cc:	00813823          	sd	s0,16(sp)
    800018d0:	00913423          	sd	s1,8(sp)
    800018d4:	02010413          	addi	s0,sp,32
    800018d8:	00050493          	mv	s1,a0
}
    800018dc:	00000097          	auipc	ra,0x0
    800018e0:	f90080e7          	jalr	-112(ra) # 8000186c <_ZN6ThreadD1Ev>
    800018e4:	00048513          	mv	a0,s1
    800018e8:	00000097          	auipc	ra,0x0
    800018ec:	f34080e7          	jalr	-204(ra) # 8000181c <_ZdlPv>
    800018f0:	01813083          	ld	ra,24(sp)
    800018f4:	01013403          	ld	s0,16(sp)
    800018f8:	00813483          	ld	s1,8(sp)
    800018fc:	02010113          	addi	sp,sp,32
    80001900:	00008067          	ret

0000000080001904 <_Z16switchToUserModev>:
void switchToUserMode(){ toUserMode();}
    80001904:	ff010113          	addi	sp,sp,-16
    80001908:	00113423          	sd	ra,8(sp)
    8000190c:	00813023          	sd	s0,0(sp)
    80001910:	01010413          	addi	s0,sp,16
    80001914:	00000097          	auipc	ra,0x0
    80001918:	9cc080e7          	jalr	-1588(ra) # 800012e0 <_Z10toUserModev>
    8000191c:	00813083          	ld	ra,8(sp)
    80001920:	00013403          	ld	s0,0(sp)
    80001924:	01010113          	addi	sp,sp,16
    80001928:	00008067          	ret

000000008000192c <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void*), void* arg) {
    8000192c:	ff010113          	addi	sp,sp,-16
    80001930:	00113423          	sd	ra,8(sp)
    80001934:	00813023          	sd	s0,0(sp)
    80001938:	01010413          	addi	s0,sp,16
    8000193c:	00006797          	auipc	a5,0x6
    80001940:	95c78793          	addi	a5,a5,-1700 # 80007298 <_ZTV6Thread+0x10>
    80001944:	00f53023          	sd	a5,0(a0)
    thread_create(&myHandle, body, arg);
    80001948:	00850513          	addi	a0,a0,8
    8000194c:	00000097          	auipc	ra,0x0
    80001950:	9b8080e7          	jalr	-1608(ra) # 80001304 <_Z13thread_createPP7_threadPFvPvES2_>
}
    80001954:	00813083          	ld	ra,8(sp)
    80001958:	00013403          	ld	s0,0(sp)
    8000195c:	01010113          	addi	sp,sp,16
    80001960:	00008067          	ret

0000000080001964 <_ZN6ThreadC1Ev>:
Thread::Thread() {
    80001964:	fe010113          	addi	sp,sp,-32
    80001968:	00113c23          	sd	ra,24(sp)
    8000196c:	00813823          	sd	s0,16(sp)
    80001970:	00913423          	sd	s1,8(sp)
    80001974:	01213023          	sd	s2,0(sp)
    80001978:	02010413          	addi	s0,sp,32
    8000197c:	00006797          	auipc	a5,0x6
    80001980:	91c78793          	addi	a5,a5,-1764 # 80007298 <_ZTV6Thread+0x10>
    80001984:	00f53023          	sd	a5,0(a0)
    new Thread(nullptr, nullptr);
    80001988:	02000513          	li	a0,32
    8000198c:	00000097          	auipc	ra,0x0
    80001990:	e40080e7          	jalr	-448(ra) # 800017cc <_Znwm>
    80001994:	00050493          	mv	s1,a0
    80001998:	00000613          	li	a2,0
    8000199c:	00000593          	li	a1,0
    800019a0:	00000097          	auipc	ra,0x0
    800019a4:	f8c080e7          	jalr	-116(ra) # 8000192c <_ZN6ThreadC1EPFvPvES0_>
    800019a8:	0200006f          	j	800019c8 <_ZN6ThreadC1Ev+0x64>
    800019ac:	00050913          	mv	s2,a0
    800019b0:	00048513          	mv	a0,s1
    800019b4:	00000097          	auipc	ra,0x0
    800019b8:	e68080e7          	jalr	-408(ra) # 8000181c <_ZdlPv>
    800019bc:	00090513          	mv	a0,s2
    800019c0:	00007097          	auipc	ra,0x7
    800019c4:	b58080e7          	jalr	-1192(ra) # 80008518 <_Unwind_Resume>
}
    800019c8:	01813083          	ld	ra,24(sp)
    800019cc:	01013403          	ld	s0,16(sp)
    800019d0:	00813483          	ld	s1,8(sp)
    800019d4:	00013903          	ld	s2,0(sp)
    800019d8:	02010113          	addi	sp,sp,32
    800019dc:	00008067          	ret

00000000800019e0 <_ZN6Thread5startEv>:
int Thread::start() {
    800019e0:	ff010113          	addi	sp,sp,-16
    800019e4:	00113423          	sd	ra,8(sp)
    800019e8:	00813023          	sd	s0,0(sp)
    800019ec:	01010413          	addi	s0,sp,16
    Scheduler::put((PCB*)myHandle);
    800019f0:	00853503          	ld	a0,8(a0)
    800019f4:	00000097          	auipc	ra,0x0
    800019f8:	b88080e7          	jalr	-1144(ra) # 8000157c <_ZN9Scheduler3putEP3PCB>
}
    800019fc:	00000513          	li	a0,0
    80001a00:	00813083          	ld	ra,8(sp)
    80001a04:	00013403          	ld	s0,0(sp)
    80001a08:	01010113          	addi	sp,sp,16
    80001a0c:	00008067          	ret

0000000080001a10 <_ZN6Thread4joinEv>:
void Thread::join() {
    80001a10:	ff010113          	addi	sp,sp,-16
    80001a14:	00113423          	sd	ra,8(sp)
    80001a18:	00813023          	sd	s0,0(sp)
    80001a1c:	01010413          	addi	s0,sp,16
    thread_join(myHandle);
    80001a20:	00853503          	ld	a0,8(a0)
    80001a24:	00000097          	auipc	ra,0x0
    80001a28:	974080e7          	jalr	-1676(ra) # 80001398 <_Z11thread_joinP7_thread>
}
    80001a2c:	00813083          	ld	ra,8(sp)
    80001a30:	00013403          	ld	s0,0(sp)
    80001a34:	01010113          	addi	sp,sp,16
    80001a38:	00008067          	ret

0000000080001a3c <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80001a3c:	ff010113          	addi	sp,sp,-16
    80001a40:	00113423          	sd	ra,8(sp)
    80001a44:	00813023          	sd	s0,0(sp)
    80001a48:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80001a4c:	00000097          	auipc	ra,0x0
    80001a50:	928080e7          	jalr	-1752(ra) # 80001374 <_Z15thread_dispatchv>
}
    80001a54:	00813083          	ld	ra,8(sp)
    80001a58:	00013403          	ld	s0,0(sp)
    80001a5c:	01010113          	addi	sp,sp,16
    80001a60:	00008067          	ret

0000000080001a64 <_ZN6Thread3runEv>:


protected:
    Thread();

    virtual void run() {}
    80001a64:	ff010113          	addi	sp,sp,-16
    80001a68:	00813423          	sd	s0,8(sp)
    80001a6c:	01010413          	addi	s0,sp,16
    80001a70:	00813403          	ld	s0,8(sp)
    80001a74:	01010113          	addi	sp,sp,16
    80001a78:	00008067          	ret

0000000080001a7c <_ZN5Riscv10popSppSpieEv>:
#include "../h/riscv.hpp"



void Riscv::popSppSpie()
{
    80001a7c:	ff010113          	addi	sp,sp,-16
    80001a80:	00813423          	sd	s0,8(sp)
    80001a84:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    80001a88:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    80001a8c:	10200073          	sret
}
    80001a90:	00813403          	ld	s0,8(sp)
    80001a94:	01010113          	addi	sp,sp,16
    80001a98:	00008067          	ret

0000000080001a9c <_ZN5Riscv11trapHandlerEv>:

void Riscv::trapHandler() {
    80001a9c:	f8010113          	addi	sp,sp,-128
    80001aa0:	06113c23          	sd	ra,120(sp)
    80001aa4:	06813823          	sd	s0,112(sp)
    80001aa8:	06913423          	sd	s1,104(sp)
    80001aac:	07213023          	sd	s2,96(sp)
    80001ab0:	05313c23          	sd	s3,88(sp)
    80001ab4:	05413823          	sd	s4,80(sp)
    80001ab8:	05513423          	sd	s5,72(sp)
    80001abc:	05613023          	sd	s6,64(sp)
    80001ac0:	08010413          	addi	s0,sp,128
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80001ac4:	142027f3          	csrr	a5,scause
    80001ac8:	faf43423          	sd	a5,-88(s0)
    return scause;
    80001acc:	fa843703          	ld	a4,-88(s0)
    __asm__ volatile ("ld %0, 10*8(fp)" : "=r"(a0));
    80001ad0:	05043783          	ld	a5,80(s0)
    80001ad4:	faf43023          	sd	a5,-96(s0)
    return a0;
    80001ad8:	fa043783          	ld	a5,-96(s0)
    __asm__ volatile ("ld %0, 11*8(fp)" : "=r"(a1));
    80001adc:	05843683          	ld	a3,88(s0)
    80001ae0:	f8d43c23          	sd	a3,-104(s0)
    return a1;
    80001ae4:	f9843483          	ld	s1,-104(s0)
    __asm__ volatile ("ld %0, 12*8(fp)" : "=r"(a2));
    80001ae8:	06043683          	ld	a3,96(s0)
    80001aec:	f8d43823          	sd	a3,-112(s0)
    return a2;
    80001af0:	f9043983          	ld	s3,-112(s0)
    __asm__ volatile ("ld %0, 13*8(fp)" : "=r"(a3));
    80001af4:	06843683          	ld	a3,104(s0)
    80001af8:	f8d43423          	sd	a3,-120(s0)
    return a3;
    80001afc:	f8843903          	ld	s2,-120(s0)
    uint64 a3 = r_a3();

    uint64 sepc;
    uint64 sstatus;

    switch (scause) {
    80001b00:	fff00693          	li	a3,-1
    80001b04:	03f69693          	slli	a3,a3,0x3f
    80001b08:	00168693          	addi	a3,a3,1
    80001b0c:	1ad70c63          	beq	a4,a3,80001cc4 <_ZN5Riscv11trapHandlerEv+0x228>
    80001b10:	fff00693          	li	a3,-1
    80001b14:	03f69693          	slli	a3,a3,0x3f
    80001b18:	00168693          	addi	a3,a3,1
    80001b1c:	04e6ee63          	bltu	a3,a4,80001b78 <_ZN5Riscv11trapHandlerEv+0xdc>
    80001b20:	ff870713          	addi	a4,a4,-8
    80001b24:	00100693          	li	a3,1
    80001b28:	1ae6e263          	bltu	a3,a4,80001ccc <_ZN5Riscv11trapHandlerEv+0x230>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001b2c:	14102773          	csrr	a4,sepc
    80001b30:	fae43c23          	sd	a4,-72(s0)
    return sepc;
    80001b34:	fb843703          	ld	a4,-72(s0)
        case 0x08:
        case 0x09:
            //ecall: software interrupt
            sepc = r_sepc() + 4;
    80001b38:	00470a93          	addi	s5,a4,4
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001b3c:	100026f3          	csrr	a3,sstatus
    80001b40:	fad43823          	sd	a3,-80(s0)
    return sstatus;
    80001b44:	fb043a03          	ld	s4,-80(s0)
            sstatus = r_sstatus();
            void* mem;
            uint64* stack;
            PCB** handle;
            switch(a0){
    80001b48:	01300693          	li	a3,19
    80001b4c:	04f6c463          	blt	a3,a5,80001b94 <_ZN5Riscv11trapHandlerEv+0xf8>
    80001b50:	08f05a63          	blez	a5,80001be4 <_ZN5Riscv11trapHandlerEv+0x148>
    80001b54:	01300713          	li	a4,19
    80001b58:	08f76663          	bltu	a4,a5,80001be4 <_ZN5Riscv11trapHandlerEv+0x148>
    80001b5c:	00279793          	slli	a5,a5,0x2
    80001b60:	00004717          	auipc	a4,0x4
    80001b64:	4c070713          	addi	a4,a4,1216 # 80006020 <CONSOLE_STATUS+0x10>
    80001b68:	00e787b3          	add	a5,a5,a4
    80001b6c:	0007a783          	lw	a5,0(a5)
    80001b70:	00e787b3          	add	a5,a5,a4
    80001b74:	00078067          	jr	a5
    switch (scause) {
    80001b78:	fff00793          	li	a5,-1
    80001b7c:	03f79793          	slli	a5,a5,0x3f
    80001b80:	00978793          	addi	a5,a5,9
    80001b84:	14f71463          	bne	a4,a5,80001ccc <_ZN5Riscv11trapHandlerEv+0x230>
            //timer interrupt
            mc_sip(SIP_SSIP);
            break;
        case 0x8000000000000009UL:
            //external hardware interrupt
            console_handler();
    80001b88:	00004097          	auipc	ra,0x4
    80001b8c:	e68080e7          	jalr	-408(ra) # 800059f0 <console_handler>
            break;
    80001b90:	13c0006f          	j	80001ccc <_ZN5Riscv11trapHandlerEv+0x230>
    80001b94:	05100693          	li	a3,81
    80001b98:	04d79663          	bne	a5,a3,80001be4 <_ZN5Riscv11trapHandlerEv+0x148>
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001b9c:	100a1073          	csrw	sstatus,s4
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80001ba0:	10000793          	li	a5,256
    80001ba4:	1007b073          	csrc	sstatus,a5
                    w_sepc(sepc+4);
    80001ba8:	00870713          	addi	a4,a4,8
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001bac:	14171073          	csrw	sepc,a4
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80001bb0:	00200793          	li	a5,2
    80001bb4:	1447b073          	csrc	sip,a5
}
    80001bb8:	1140006f          	j	80001ccc <_ZN5Riscv11trapHandlerEv+0x230>
        static MemoryAllocator instance;
    80001bbc:	00006797          	auipc	a5,0x6
    80001bc0:	85c7c783          	lbu	a5,-1956(a5) # 80007418 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80001bc4:	00079863          	bnez	a5,80001bd4 <_ZN5Riscv11trapHandlerEv+0x138>
    80001bc8:	00100793          	li	a5,1
    80001bcc:	00006717          	auipc	a4,0x6
    80001bd0:	84f70623          	sb	a5,-1972(a4) # 80007418 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
                    mem = MemoryAllocator::getInstance().allocate((size_t) a1);
    80001bd4:	00048513          	mv	a0,s1
    80001bd8:	00000097          	auipc	ra,0x0
    80001bdc:	11c080e7          	jalr	284(ra) # 80001cf4 <_ZN15MemoryAllocator8allocateEm>
}

inline void Riscv::push_a0(long a0) {
    __asm__ volatile ("sd %0, 10*8(fp)" : : "r"(a0));
    80001be0:	04a43823          	sd	a0,80(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001be4:	100a1073          	csrw	sstatus,s4
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001be8:	141a9073          	csrw	sepc,s5
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80001bec:	00200793          	li	a5,2
    80001bf0:	1447b073          	csrc	sip,a5
}
    80001bf4:	0d80006f          	j	80001ccc <_ZN5Riscv11trapHandlerEv+0x230>
    80001bf8:	00006797          	auipc	a5,0x6
    80001bfc:	8207c783          	lbu	a5,-2016(a5) # 80007418 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80001c00:	00079863          	bnez	a5,80001c10 <_ZN5Riscv11trapHandlerEv+0x174>
    80001c04:	00100793          	li	a5,1
    80001c08:	00006717          	auipc	a4,0x6
    80001c0c:	80f70823          	sb	a5,-2032(a4) # 80007418 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
                    push_a0(MemoryAllocator::getInstance().deallocate((void *)a1));
    80001c10:	00048513          	mv	a0,s1
    80001c14:	00000097          	auipc	ra,0x0
    80001c18:	1c8080e7          	jalr	456(ra) # 80001ddc <_ZN15MemoryAllocator10deallocateEPv>
    __asm__ volatile ("sd %0, 10*8(fp)" : : "r"(a0));
    80001c1c:	04a43823          	sd	a0,80(s0)
}
    80001c20:	fc5ff06f          	j	80001be4 <_ZN5Riscv11trapHandlerEv+0x148>
                    if((uint64*)a1!= nullptr) stack = (uint64*)MemoryAllocator::getInstance().allocate(((DEFAULT_STACK_SIZE + 16+ MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE));
    80001c24:	06048a63          	beqz	s1,80001c98 <_ZN5Riscv11trapHandlerEv+0x1fc>
    80001c28:	00005797          	auipc	a5,0x5
    80001c2c:	7f07c783          	lbu	a5,2032(a5) # 80007418 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80001c30:	00079863          	bnez	a5,80001c40 <_ZN5Riscv11trapHandlerEv+0x1a4>
    80001c34:	00100793          	li	a5,1
    80001c38:	00005717          	auipc	a4,0x5
    80001c3c:	7ef70023          	sb	a5,2016(a4) # 80007418 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80001c40:	04100513          	li	a0,65
    80001c44:	00000097          	auipc	ra,0x0
    80001c48:	0b0080e7          	jalr	176(ra) # 80001cf4 <_ZN15MemoryAllocator8allocateEm>
    80001c4c:	00050b13          	mv	s6,a0
                    *handle = new PCB((PCB::Body)a1, (void*)a2, stack);
    80001c50:	03000513          	li	a0,48
    80001c54:	00000097          	auipc	ra,0x0
    80001c58:	b78080e7          	jalr	-1160(ra) # 800017cc <_Znwm>
        this->body = body;
    80001c5c:	00953023          	sd	s1,0(a0)
        this->stack = stack;
    80001c60:	01653423          	sd	s6,8(a0)
                   stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
    80001c64:	020b0e63          	beqz	s6,80001ca0 <_ZN5Riscv11trapHandlerEv+0x204>
    80001c68:	000087b7          	lui	a5,0x8
    80001c6c:	00fb0b33          	add	s6,s6,a5
        context = {(uint64) &wrapper,
    80001c70:	00005797          	auipc	a5,0x5
    80001c74:	7087b783          	ld	a5,1800(a5) # 80007378 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001c78:	00f53c23          	sd	a5,24(a0)
    80001c7c:	03653023          	sd	s6,32(a0)
        this->args = args;
    80001c80:	01353823          	sd	s3,16(a0)
        state = READY;
    80001c84:	02052423          	sw	zero,40(a0)
    80001c88:	00a93023          	sd	a0,0(s2)
    __asm__ volatile ("sd %0, 10*8(fp)" : : "r"(a0));
    80001c8c:	00000793          	li	a5,0
    80001c90:	04f43823          	sd	a5,80(s0)
}
    80001c94:	f51ff06f          	j	80001be4 <_ZN5Riscv11trapHandlerEv+0x148>
                    else stack = nullptr;
    80001c98:	00000b13          	li	s6,0
    80001c9c:	fb5ff06f          	j	80001c50 <_ZN5Riscv11trapHandlerEv+0x1b4>
                   stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
    80001ca0:	00000b13          	li	s6,0
    80001ca4:	fcdff06f          	j	80001c70 <_ZN5Riscv11trapHandlerEv+0x1d4>
                    push_a0(PCB::exit());
    80001ca8:	fffff097          	auipc	ra,0xfffff
    80001cac:	798080e7          	jalr	1944(ra) # 80001440 <_ZN3PCB4exitEv>
    __asm__ volatile ("sd %0, 10*8(fp)" : : "r"(a0));
    80001cb0:	04a43823          	sd	a0,80(s0)
}
    80001cb4:	f31ff06f          	j	80001be4 <_ZN5Riscv11trapHandlerEv+0x148>
                    PCB::dispatch();
    80001cb8:	fffff097          	auipc	ra,0xfffff
    80001cbc:	700080e7          	jalr	1792(ra) # 800013b8 <_ZN3PCB8dispatchEv>
                    break;
    80001cc0:	f25ff06f          	j	80001be4 <_ZN5Riscv11trapHandlerEv+0x148>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80001cc4:	00200793          	li	a5,2
    80001cc8:	1447b073          	csrc	sip,a5
        default:
            return;
            //printString("ERROR: Unexpected interrupt!");
    }

    80001ccc:	07813083          	ld	ra,120(sp)
    80001cd0:	07013403          	ld	s0,112(sp)
    80001cd4:	06813483          	ld	s1,104(sp)
    80001cd8:	06013903          	ld	s2,96(sp)
    80001cdc:	05813983          	ld	s3,88(sp)
    80001ce0:	05013a03          	ld	s4,80(sp)
    80001ce4:	04813a83          	ld	s5,72(sp)
    80001ce8:	04013b03          	ld	s6,64(sp)
    80001cec:	08010113          	addi	sp,sp,128
    80001cf0:	00008067          	ret

0000000080001cf4 <_ZN15MemoryAllocator8allocateEm>:
Block *MemoryAllocator::free_list = nullptr;
Block *MemoryAllocator::allocated_list = nullptr;


// Allocate memory
void *MemoryAllocator::allocate(size_t size) {
    80001cf4:	ff010113          	addi	sp,sp,-16
    80001cf8:	00813423          	sd	s0,8(sp)
    80001cfc:	01010413          	addi	s0,sp,16
    80001d00:	00050613          	mv	a2,a0
    size_t sizeToAllocate = size * MEM_BLOCK_SIZE;
    80001d04:	00651713          	slli	a4,a0,0x6

    Block *prev = nullptr;
    Block *current = free_list;
    80001d08:	00005517          	auipc	a0,0x5
    80001d0c:	71853503          	ld	a0,1816(a0) # 80007420 <_ZN15MemoryAllocator9free_listE>
    Block *prev = nullptr;
    80001d10:	00000693          	li	a3,0

    // Find a free block that is large enough
    while (current != nullptr) {
    80001d14:	06050e63          	beqz	a0,80001d90 <_ZN15MemoryAllocator8allocateEm+0x9c>

        if (current->size >= sizeToAllocate) {
    80001d18:	00053783          	ld	a5,0(a0)
    80001d1c:	00e7f863          	bgeu	a5,a4,80001d2c <_ZN15MemoryAllocator8allocateEm+0x38>
            // Return the memory

            void *userPtr = (Block *) ((uint64 *) current + sizeof(Block));
            return userPtr;
        }
        prev = current;
    80001d20:	00050693          	mv	a3,a0
        current = current->next;
    80001d24:	00853503          	ld	a0,8(a0)
    while (current != nullptr) {
    80001d28:	fedff06f          	j	80001d14 <_ZN15MemoryAllocator8allocateEm+0x20>
            if (prev == nullptr) {
    80001d2c:	06068863          	beqz	a3,80001d9c <_ZN15MemoryAllocator8allocateEm+0xa8>
                prev->next = current->next;
    80001d30:	00853783          	ld	a5,8(a0)
    80001d34:	00f6b423          	sd	a5,8(a3)
            if (current->size - sizeToAllocate >= MEM_BLOCK_SIZE) {
    80001d38:	00053783          	ld	a5,0(a0)
    80001d3c:	40e787b3          	sub	a5,a5,a4
    80001d40:	03f00593          	li	a1,63
    80001d44:	02f5f863          	bgeu	a1,a5,80001d74 <_ZN15MemoryAllocator8allocateEm+0x80>
                Block *newBlock = (Block *) ((uint64 *) current + sizeToAllocate);
    80001d48:	00961613          	slli	a2,a2,0x9
    80001d4c:	00c50633          	add	a2,a0,a2
                newBlock->size = current->size - sizeToAllocate;
    80001d50:	00f63023          	sd	a5,0(a2)
                current->size = sizeToAllocate;
    80001d54:	00e53023          	sd	a4,0(a0)
                if (!free_list) {
    80001d58:	00005797          	auipc	a5,0x5
    80001d5c:	6c87b783          	ld	a5,1736(a5) # 80007420 <_ZN15MemoryAllocator9free_listE>
    80001d60:	04078663          	beqz	a5,80001dac <_ZN15MemoryAllocator8allocateEm+0xb8>
                } else if (!prev) {
    80001d64:	04068c63          	beqz	a3,80001dbc <_ZN15MemoryAllocator8allocateEm+0xc8>
                    prev->next = newBlock;
    80001d68:	00c6b423          	sd	a2,8(a3)
                    newBlock->next = current->next;
    80001d6c:	00853783          	ld	a5,8(a0)
    80001d70:	00f63423          	sd	a5,8(a2)
            if (!allocated_list) {
    80001d74:	00005797          	auipc	a5,0x5
    80001d78:	6b47b783          	ld	a5,1716(a5) # 80007428 <_ZN15MemoryAllocator14allocated_listE>
    80001d7c:	04078863          	beqz	a5,80001dcc <_ZN15MemoryAllocator8allocateEm+0xd8>
                current->next = allocated_list;
    80001d80:	00f53423          	sd	a5,8(a0)
                allocated_list = current;
    80001d84:	00005797          	auipc	a5,0x5
    80001d88:	6aa7b223          	sd	a0,1700(a5) # 80007428 <_ZN15MemoryAllocator14allocated_listE>
            void *userPtr = (Block *) ((uint64 *) current + sizeof(Block));
    80001d8c:	08050513          	addi	a0,a0,128
    }

    // No block was found
    return nullptr;
}
    80001d90:	00813403          	ld	s0,8(sp)
    80001d94:	01010113          	addi	sp,sp,16
    80001d98:	00008067          	ret
                free_list = current->next;
    80001d9c:	00853783          	ld	a5,8(a0)
    80001da0:	00005597          	auipc	a1,0x5
    80001da4:	68f5b023          	sd	a5,1664(a1) # 80007420 <_ZN15MemoryAllocator9free_listE>
    80001da8:	f91ff06f          	j	80001d38 <_ZN15MemoryAllocator8allocateEm+0x44>
                    free_list = newBlock;
    80001dac:	00005797          	auipc	a5,0x5
    80001db0:	66c7ba23          	sd	a2,1652(a5) # 80007420 <_ZN15MemoryAllocator9free_listE>
                    newBlock->next = nullptr;
    80001db4:	00063423          	sd	zero,8(a2)
    80001db8:	fbdff06f          	j	80001d74 <_ZN15MemoryAllocator8allocateEm+0x80>
                    newBlock->next = free_list;
    80001dbc:	00f63423          	sd	a5,8(a2)
                    free_list = newBlock;
    80001dc0:	00005797          	auipc	a5,0x5
    80001dc4:	66c7b023          	sd	a2,1632(a5) # 80007420 <_ZN15MemoryAllocator9free_listE>
    80001dc8:	fadff06f          	j	80001d74 <_ZN15MemoryAllocator8allocateEm+0x80>
                allocated_list = current;
    80001dcc:	00005797          	auipc	a5,0x5
    80001dd0:	64a7be23          	sd	a0,1628(a5) # 80007428 <_ZN15MemoryAllocator14allocated_listE>
                allocated_list->next = nullptr;
    80001dd4:	00053423          	sd	zero,8(a0)
    80001dd8:	fb5ff06f          	j	80001d8c <_ZN15MemoryAllocator8allocateEm+0x98>

0000000080001ddc <_ZN15MemoryAllocator10deallocateEPv>:

// Deallocate memory
int MemoryAllocator::deallocate(void *ptr) {
    80001ddc:	ff010113          	addi	sp,sp,-16
    80001de0:	00813423          	sd	s0,8(sp)
    80001de4:	01010413          	addi	s0,sp,16
    Block *block = (Block *) ((uint64 *) ptr - sizeof(Block));
    80001de8:	f8050713          	addi	a4,a0,-128
    Block *tmpPrev = nullptr;
    Block *tmp = allocated_list;
    80001dec:	00005797          	auipc	a5,0x5
    80001df0:	63c7b783          	ld	a5,1596(a5) # 80007428 <_ZN15MemoryAllocator14allocated_listE>
    Block *tmpPrev = nullptr;
    80001df4:	00000693          	li	a3,0
    uint8 flag = 0;

    //Check if the block given was previously allocated
    while (tmp) {
    80001df8:	00078a63          	beqz	a5,80001e0c <_ZN15MemoryAllocator10deallocateEPv+0x30>
        if (tmp == block) {
    80001dfc:	04e78263          	beq	a5,a4,80001e40 <_ZN15MemoryAllocator10deallocateEPv+0x64>
            flag = 1;
            break;
        }
        tmpPrev = tmp;
    80001e00:	00078693          	mv	a3,a5
        tmp = tmp->next;
    80001e04:	0087b783          	ld	a5,8(a5)
    while (tmp) {
    80001e08:	ff1ff06f          	j	80001df8 <_ZN15MemoryAllocator10deallocateEPv+0x1c>
    uint8 flag = 0;
    80001e0c:	00000613          	li	a2,0
    }
    if (flag == 0) return -1;
    80001e10:	0e060263          	beqz	a2,80001ef4 <_ZN15MemoryAllocator10deallocateEPv+0x118>

    // Found a block, remove it from the allocated list
    if (tmpPrev != nullptr) {
    80001e14:	02068a63          	beqz	a3,80001e48 <_ZN15MemoryAllocator10deallocateEPv+0x6c>
        tmpPrev->next = tmp->next;
    80001e18:	0087b783          	ld	a5,8(a5)
    80001e1c:	00f6b423          	sd	a5,8(a3)
        allocated_list = tmp->next;
    }


    Block *prev = nullptr;
    Block *current = free_list;
    80001e20:	00005797          	auipc	a5,0x5
    80001e24:	6007b783          	ld	a5,1536(a5) # 80007420 <_ZN15MemoryAllocator9free_listE>
    Block *prev = nullptr;
    80001e28:	00000693          	li	a3,0

    // Add it to the free_list
    while (current != nullptr) {
    80001e2c:	02078c63          	beqz	a5,80001e64 <_ZN15MemoryAllocator10deallocateEPv+0x88>
        if ((uint64 *) block < (uint64 *) current) {
    80001e30:	02f76463          	bltu	a4,a5,80001e58 <_ZN15MemoryAllocator10deallocateEPv+0x7c>
            } else {
                free_list = block;
            }
            break;
        }
        prev = current;
    80001e34:	00078693          	mv	a3,a5
        current = current->next;
    80001e38:	0087b783          	ld	a5,8(a5)
    while (current != nullptr) {
    80001e3c:	ff1ff06f          	j	80001e2c <_ZN15MemoryAllocator10deallocateEPv+0x50>
            flag = 1;
    80001e40:	00100613          	li	a2,1
    80001e44:	fcdff06f          	j	80001e10 <_ZN15MemoryAllocator10deallocateEPv+0x34>
        allocated_list = tmp->next;
    80001e48:	0087b783          	ld	a5,8(a5)
    80001e4c:	00005697          	auipc	a3,0x5
    80001e50:	5cf6be23          	sd	a5,1500(a3) # 80007428 <_ZN15MemoryAllocator14allocated_listE>
    80001e54:	fcdff06f          	j	80001e20 <_ZN15MemoryAllocator10deallocateEPv+0x44>
            block->next = current;
    80001e58:	f8f53423          	sd	a5,-120(a0)
            if (prev != nullptr) {
    80001e5c:	04068463          	beqz	a3,80001ea4 <_ZN15MemoryAllocator10deallocateEPv+0xc8>
                prev->next = block;
    80001e60:	00e6b423          	sd	a4,8(a3)
    }
    if (current == nullptr) {
    80001e64:	04078663          	beqz	a5,80001eb0 <_ZN15MemoryAllocator10deallocateEPv+0xd4>
        //current = block;
        block->next = nullptr;
    }

    //Merge it with neighbour blocks if possible
    if (prev != nullptr) {
    80001e68:	00068a63          	beqz	a3,80001e7c <_ZN15MemoryAllocator10deallocateEPv+0xa0>
        if ((uint64 *) prev + prev->size == (uint64 *) block) {
    80001e6c:	0006b603          	ld	a2,0(a3)
    80001e70:	00361793          	slli	a5,a2,0x3
    80001e74:	00f687b3          	add	a5,a3,a5
    80001e78:	04e78263          	beq	a5,a4,80001ebc <_ZN15MemoryAllocator10deallocateEPv+0xe0>
            prev->size = prev->size + block->size;
            prev->next = block->next;
            block = prev;
        }
    }
    if (block->next != nullptr) {
    80001e7c:	00873783          	ld	a5,8(a4)
    80001e80:	06078e63          	beqz	a5,80001efc <_ZN15MemoryAllocator10deallocateEPv+0x120>
        if ((uint64 *) block + block->size == (uint64 *) block->next) {
    80001e84:	00073603          	ld	a2,0(a4)
    80001e88:	00361693          	slli	a3,a2,0x3
    80001e8c:	00d706b3          	add	a3,a4,a3
    80001e90:	04d78463          	beq	a5,a3,80001ed8 <_ZN15MemoryAllocator10deallocateEPv+0xfc>
            block->size += block->next->size;
            block->next = block->next->next;
        }
    }

    return 0;
    80001e94:	00000513          	li	a0,0

}
    80001e98:	00813403          	ld	s0,8(sp)
    80001e9c:	01010113          	addi	sp,sp,16
    80001ea0:	00008067          	ret
                free_list = block;
    80001ea4:	00005617          	auipc	a2,0x5
    80001ea8:	56e63e23          	sd	a4,1404(a2) # 80007420 <_ZN15MemoryAllocator9free_listE>
    80001eac:	fb9ff06f          	j	80001e64 <_ZN15MemoryAllocator10deallocateEPv+0x88>
        prev->next = block;
    80001eb0:	00e6b423          	sd	a4,8(a3)
        block->next = nullptr;
    80001eb4:	f8053423          	sd	zero,-120(a0)
    80001eb8:	fb1ff06f          	j	80001e68 <_ZN15MemoryAllocator10deallocateEPv+0x8c>
            prev->size = prev->size + block->size;
    80001ebc:	f8053783          	ld	a5,-128(a0)
    80001ec0:	00f60633          	add	a2,a2,a5
    80001ec4:	00c6b023          	sd	a2,0(a3)
            prev->next = block->next;
    80001ec8:	f8853783          	ld	a5,-120(a0)
    80001ecc:	00f6b423          	sd	a5,8(a3)
            block = prev;
    80001ed0:	00068713          	mv	a4,a3
    80001ed4:	fa9ff06f          	j	80001e7c <_ZN15MemoryAllocator10deallocateEPv+0xa0>
            block->size += block->next->size;
    80001ed8:	0007b683          	ld	a3,0(a5)
    80001edc:	00d60633          	add	a2,a2,a3
    80001ee0:	00c73023          	sd	a2,0(a4)
            block->next = block->next->next;
    80001ee4:	0087b783          	ld	a5,8(a5)
    80001ee8:	00f73423          	sd	a5,8(a4)
    return 0;
    80001eec:	00000513          	li	a0,0
    80001ef0:	fa9ff06f          	j	80001e98 <_ZN15MemoryAllocator10deallocateEPv+0xbc>
    if (flag == 0) return -1;
    80001ef4:	fff00513          	li	a0,-1
    80001ef8:	fa1ff06f          	j	80001e98 <_ZN15MemoryAllocator10deallocateEPv+0xbc>
    return 0;
    80001efc:	00000513          	li	a0,0
    80001f00:	f99ff06f          	j	80001e98 <_ZN15MemoryAllocator10deallocateEPv+0xbc>

0000000080001f04 <_Z4putcc>:
//
//    while (--i >= 0)
//        __putc(buf[i]);
//}

void putc(char c){
    80001f04:	ff010113          	addi	sp,sp,-16
    80001f08:	00113423          	sd	ra,8(sp)
    80001f0c:	00813023          	sd	s0,0(sp)
    80001f10:	01010413          	addi	s0,sp,16
    __putc(c);
    80001f14:	00004097          	auipc	ra,0x4
    80001f18:	a68080e7          	jalr	-1432(ra) # 8000597c <__putc>
}
    80001f1c:	00813083          	ld	ra,8(sp)
    80001f20:	00013403          	ld	s0,0(sp)
    80001f24:	01010113          	addi	sp,sp,16
    80001f28:	00008067          	ret

0000000080001f2c <_Z4getcv>:

char getc(){
    80001f2c:	ff010113          	addi	sp,sp,-16
    80001f30:	00113423          	sd	ra,8(sp)
    80001f34:	00813023          	sd	s0,0(sp)
    80001f38:	01010413          	addi	s0,sp,16
    return __getc();
    80001f3c:	00004097          	auipc	ra,0x4
    80001f40:	a7c080e7          	jalr	-1412(ra) # 800059b8 <__getc>
    80001f44:	00813083          	ld	ra,8(sp)
    80001f48:	00013403          	ld	s0,0(sp)
    80001f4c:	01010113          	addi	sp,sp,16
    80001f50:	00008067          	ret

0000000080001f54 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80001f54:	fe010113          	addi	sp,sp,-32
    80001f58:	00113c23          	sd	ra,24(sp)
    80001f5c:	00813823          	sd	s0,16(sp)
    80001f60:	00913423          	sd	s1,8(sp)
    80001f64:	01213023          	sd	s2,0(sp)
    80001f68:	02010413          	addi	s0,sp,32
    80001f6c:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80001f70:	00100793          	li	a5,1
    80001f74:	02a7f863          	bgeu	a5,a0,80001fa4 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80001f78:	00a00793          	li	a5,10
    80001f7c:	02f577b3          	remu	a5,a0,a5
    80001f80:	02078e63          	beqz	a5,80001fbc <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80001f84:	fff48513          	addi	a0,s1,-1
    80001f88:	00000097          	auipc	ra,0x0
    80001f8c:	fcc080e7          	jalr	-52(ra) # 80001f54 <_ZL9fibonaccim>
    80001f90:	00050913          	mv	s2,a0
    80001f94:	ffe48513          	addi	a0,s1,-2
    80001f98:	00000097          	auipc	ra,0x0
    80001f9c:	fbc080e7          	jalr	-68(ra) # 80001f54 <_ZL9fibonaccim>
    80001fa0:	00a90533          	add	a0,s2,a0
}
    80001fa4:	01813083          	ld	ra,24(sp)
    80001fa8:	01013403          	ld	s0,16(sp)
    80001fac:	00813483          	ld	s1,8(sp)
    80001fb0:	00013903          	ld	s2,0(sp)
    80001fb4:	02010113          	addi	sp,sp,32
    80001fb8:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80001fbc:	fffff097          	auipc	ra,0xfffff
    80001fc0:	3b8080e7          	jalr	952(ra) # 80001374 <_Z15thread_dispatchv>
    80001fc4:	fc1ff06f          	j	80001f84 <_ZL9fibonaccim+0x30>

0000000080001fc8 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    80001fc8:	fe010113          	addi	sp,sp,-32
    80001fcc:	00113c23          	sd	ra,24(sp)
    80001fd0:	00813823          	sd	s0,16(sp)
    80001fd4:	00913423          	sd	s1,8(sp)
    80001fd8:	01213023          	sd	s2,0(sp)
    80001fdc:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80001fe0:	00000913          	li	s2,0
    80001fe4:	0380006f          	j	8000201c <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80001fe8:	fffff097          	auipc	ra,0xfffff
    80001fec:	38c080e7          	jalr	908(ra) # 80001374 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80001ff0:	00148493          	addi	s1,s1,1
    80001ff4:	000027b7          	lui	a5,0x2
    80001ff8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80001ffc:	0097ee63          	bltu	a5,s1,80002018 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80002000:	00000713          	li	a4,0
    80002004:	000077b7          	lui	a5,0x7
    80002008:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000200c:	fce7eee3          	bltu	a5,a4,80001fe8 <_ZN7WorkerA11workerBodyAEPv+0x20>
    80002010:	00170713          	addi	a4,a4,1
    80002014:	ff1ff06f          	j	80002004 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80002018:	00190913          	addi	s2,s2,1
    8000201c:	00900793          	li	a5,9
    80002020:	0527e063          	bltu	a5,s2,80002060 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80002024:	00004517          	auipc	a0,0x4
    80002028:	04c50513          	addi	a0,a0,76 # 80006070 <CONSOLE_STATUS+0x60>
    8000202c:	00001097          	auipc	ra,0x1
    80002030:	e9c080e7          	jalr	-356(ra) # 80002ec8 <_Z11printStringPKc>
    80002034:	00000613          	li	a2,0
    80002038:	00a00593          	li	a1,10
    8000203c:	0009051b          	sext.w	a0,s2
    80002040:	00001097          	auipc	ra,0x1
    80002044:	038080e7          	jalr	56(ra) # 80003078 <_Z8printIntiii>
    80002048:	00004517          	auipc	a0,0x4
    8000204c:	3d050513          	addi	a0,a0,976 # 80006418 <CONSOLE_STATUS+0x408>
    80002050:	00001097          	auipc	ra,0x1
    80002054:	e78080e7          	jalr	-392(ra) # 80002ec8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80002058:	00000493          	li	s1,0
    8000205c:	f99ff06f          	j	80001ff4 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80002060:	00004517          	auipc	a0,0x4
    80002064:	01850513          	addi	a0,a0,24 # 80006078 <CONSOLE_STATUS+0x68>
    80002068:	00001097          	auipc	ra,0x1
    8000206c:	e60080e7          	jalr	-416(ra) # 80002ec8 <_Z11printStringPKc>
    finishedA = true;
    80002070:	00100793          	li	a5,1
    80002074:	00005717          	auipc	a4,0x5
    80002078:	3af70e23          	sb	a5,956(a4) # 80007430 <_ZL9finishedA>
}
    8000207c:	01813083          	ld	ra,24(sp)
    80002080:	01013403          	ld	s0,16(sp)
    80002084:	00813483          	ld	s1,8(sp)
    80002088:	00013903          	ld	s2,0(sp)
    8000208c:	02010113          	addi	sp,sp,32
    80002090:	00008067          	ret

0000000080002094 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80002094:	fe010113          	addi	sp,sp,-32
    80002098:	00113c23          	sd	ra,24(sp)
    8000209c:	00813823          	sd	s0,16(sp)
    800020a0:	00913423          	sd	s1,8(sp)
    800020a4:	01213023          	sd	s2,0(sp)
    800020a8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800020ac:	00000913          	li	s2,0
    800020b0:	0380006f          	j	800020e8 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    800020b4:	fffff097          	auipc	ra,0xfffff
    800020b8:	2c0080e7          	jalr	704(ra) # 80001374 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800020bc:	00148493          	addi	s1,s1,1
    800020c0:	000027b7          	lui	a5,0x2
    800020c4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800020c8:	0097ee63          	bltu	a5,s1,800020e4 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800020cc:	00000713          	li	a4,0
    800020d0:	000077b7          	lui	a5,0x7
    800020d4:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800020d8:	fce7eee3          	bltu	a5,a4,800020b4 <_ZN7WorkerB11workerBodyBEPv+0x20>
    800020dc:	00170713          	addi	a4,a4,1
    800020e0:	ff1ff06f          	j	800020d0 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    800020e4:	00190913          	addi	s2,s2,1
    800020e8:	00f00793          	li	a5,15
    800020ec:	0527e063          	bltu	a5,s2,8000212c <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    800020f0:	00004517          	auipc	a0,0x4
    800020f4:	f9850513          	addi	a0,a0,-104 # 80006088 <CONSOLE_STATUS+0x78>
    800020f8:	00001097          	auipc	ra,0x1
    800020fc:	dd0080e7          	jalr	-560(ra) # 80002ec8 <_Z11printStringPKc>
    80002100:	00000613          	li	a2,0
    80002104:	00a00593          	li	a1,10
    80002108:	0009051b          	sext.w	a0,s2
    8000210c:	00001097          	auipc	ra,0x1
    80002110:	f6c080e7          	jalr	-148(ra) # 80003078 <_Z8printIntiii>
    80002114:	00004517          	auipc	a0,0x4
    80002118:	30450513          	addi	a0,a0,772 # 80006418 <CONSOLE_STATUS+0x408>
    8000211c:	00001097          	auipc	ra,0x1
    80002120:	dac080e7          	jalr	-596(ra) # 80002ec8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80002124:	00000493          	li	s1,0
    80002128:	f99ff06f          	j	800020c0 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    8000212c:	00004517          	auipc	a0,0x4
    80002130:	f6450513          	addi	a0,a0,-156 # 80006090 <CONSOLE_STATUS+0x80>
    80002134:	00001097          	auipc	ra,0x1
    80002138:	d94080e7          	jalr	-620(ra) # 80002ec8 <_Z11printStringPKc>
    finishedB = true;
    8000213c:	00100793          	li	a5,1
    80002140:	00005717          	auipc	a4,0x5
    80002144:	2ef708a3          	sb	a5,753(a4) # 80007431 <_ZL9finishedB>
    thread_dispatch();
    80002148:	fffff097          	auipc	ra,0xfffff
    8000214c:	22c080e7          	jalr	556(ra) # 80001374 <_Z15thread_dispatchv>
}
    80002150:	01813083          	ld	ra,24(sp)
    80002154:	01013403          	ld	s0,16(sp)
    80002158:	00813483          	ld	s1,8(sp)
    8000215c:	00013903          	ld	s2,0(sp)
    80002160:	02010113          	addi	sp,sp,32
    80002164:	00008067          	ret

0000000080002168 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80002168:	fe010113          	addi	sp,sp,-32
    8000216c:	00113c23          	sd	ra,24(sp)
    80002170:	00813823          	sd	s0,16(sp)
    80002174:	00913423          	sd	s1,8(sp)
    80002178:	01213023          	sd	s2,0(sp)
    8000217c:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80002180:	00000493          	li	s1,0
    80002184:	0400006f          	j	800021c4 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80002188:	00004517          	auipc	a0,0x4
    8000218c:	f1850513          	addi	a0,a0,-232 # 800060a0 <CONSOLE_STATUS+0x90>
    80002190:	00001097          	auipc	ra,0x1
    80002194:	d38080e7          	jalr	-712(ra) # 80002ec8 <_Z11printStringPKc>
    80002198:	00000613          	li	a2,0
    8000219c:	00a00593          	li	a1,10
    800021a0:	00048513          	mv	a0,s1
    800021a4:	00001097          	auipc	ra,0x1
    800021a8:	ed4080e7          	jalr	-300(ra) # 80003078 <_Z8printIntiii>
    800021ac:	00004517          	auipc	a0,0x4
    800021b0:	26c50513          	addi	a0,a0,620 # 80006418 <CONSOLE_STATUS+0x408>
    800021b4:	00001097          	auipc	ra,0x1
    800021b8:	d14080e7          	jalr	-748(ra) # 80002ec8 <_Z11printStringPKc>
    for (; i < 3; i++) {
    800021bc:	0014849b          	addiw	s1,s1,1
    800021c0:	0ff4f493          	andi	s1,s1,255
    800021c4:	00200793          	li	a5,2
    800021c8:	fc97f0e3          	bgeu	a5,s1,80002188 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    800021cc:	00004517          	auipc	a0,0x4
    800021d0:	edc50513          	addi	a0,a0,-292 # 800060a8 <CONSOLE_STATUS+0x98>
    800021d4:	00001097          	auipc	ra,0x1
    800021d8:	cf4080e7          	jalr	-780(ra) # 80002ec8 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800021dc:	00700313          	li	t1,7
    thread_dispatch();
    800021e0:	fffff097          	auipc	ra,0xfffff
    800021e4:	194080e7          	jalr	404(ra) # 80001374 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800021e8:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    800021ec:	00004517          	auipc	a0,0x4
    800021f0:	ecc50513          	addi	a0,a0,-308 # 800060b8 <CONSOLE_STATUS+0xa8>
    800021f4:	00001097          	auipc	ra,0x1
    800021f8:	cd4080e7          	jalr	-812(ra) # 80002ec8 <_Z11printStringPKc>
    800021fc:	00000613          	li	a2,0
    80002200:	00a00593          	li	a1,10
    80002204:	0009051b          	sext.w	a0,s2
    80002208:	00001097          	auipc	ra,0x1
    8000220c:	e70080e7          	jalr	-400(ra) # 80003078 <_Z8printIntiii>
    80002210:	00004517          	auipc	a0,0x4
    80002214:	20850513          	addi	a0,a0,520 # 80006418 <CONSOLE_STATUS+0x408>
    80002218:	00001097          	auipc	ra,0x1
    8000221c:	cb0080e7          	jalr	-848(ra) # 80002ec8 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80002220:	00c00513          	li	a0,12
    80002224:	00000097          	auipc	ra,0x0
    80002228:	d30080e7          	jalr	-720(ra) # 80001f54 <_ZL9fibonaccim>
    8000222c:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80002230:	00004517          	auipc	a0,0x4
    80002234:	e9050513          	addi	a0,a0,-368 # 800060c0 <CONSOLE_STATUS+0xb0>
    80002238:	00001097          	auipc	ra,0x1
    8000223c:	c90080e7          	jalr	-880(ra) # 80002ec8 <_Z11printStringPKc>
    80002240:	00000613          	li	a2,0
    80002244:	00a00593          	li	a1,10
    80002248:	0009051b          	sext.w	a0,s2
    8000224c:	00001097          	auipc	ra,0x1
    80002250:	e2c080e7          	jalr	-468(ra) # 80003078 <_Z8printIntiii>
    80002254:	00004517          	auipc	a0,0x4
    80002258:	1c450513          	addi	a0,a0,452 # 80006418 <CONSOLE_STATUS+0x408>
    8000225c:	00001097          	auipc	ra,0x1
    80002260:	c6c080e7          	jalr	-916(ra) # 80002ec8 <_Z11printStringPKc>
    80002264:	0400006f          	j	800022a4 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80002268:	00004517          	auipc	a0,0x4
    8000226c:	e3850513          	addi	a0,a0,-456 # 800060a0 <CONSOLE_STATUS+0x90>
    80002270:	00001097          	auipc	ra,0x1
    80002274:	c58080e7          	jalr	-936(ra) # 80002ec8 <_Z11printStringPKc>
    80002278:	00000613          	li	a2,0
    8000227c:	00a00593          	li	a1,10
    80002280:	00048513          	mv	a0,s1
    80002284:	00001097          	auipc	ra,0x1
    80002288:	df4080e7          	jalr	-524(ra) # 80003078 <_Z8printIntiii>
    8000228c:	00004517          	auipc	a0,0x4
    80002290:	18c50513          	addi	a0,a0,396 # 80006418 <CONSOLE_STATUS+0x408>
    80002294:	00001097          	auipc	ra,0x1
    80002298:	c34080e7          	jalr	-972(ra) # 80002ec8 <_Z11printStringPKc>
    for (; i < 6; i++) {
    8000229c:	0014849b          	addiw	s1,s1,1
    800022a0:	0ff4f493          	andi	s1,s1,255
    800022a4:	00500793          	li	a5,5
    800022a8:	fc97f0e3          	bgeu	a5,s1,80002268 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    800022ac:	00004517          	auipc	a0,0x4
    800022b0:	dcc50513          	addi	a0,a0,-564 # 80006078 <CONSOLE_STATUS+0x68>
    800022b4:	00001097          	auipc	ra,0x1
    800022b8:	c14080e7          	jalr	-1004(ra) # 80002ec8 <_Z11printStringPKc>
    finishedC = true;
    800022bc:	00100793          	li	a5,1
    800022c0:	00005717          	auipc	a4,0x5
    800022c4:	16f70923          	sb	a5,370(a4) # 80007432 <_ZL9finishedC>
    thread_dispatch();
    800022c8:	fffff097          	auipc	ra,0xfffff
    800022cc:	0ac080e7          	jalr	172(ra) # 80001374 <_Z15thread_dispatchv>
}
    800022d0:	01813083          	ld	ra,24(sp)
    800022d4:	01013403          	ld	s0,16(sp)
    800022d8:	00813483          	ld	s1,8(sp)
    800022dc:	00013903          	ld	s2,0(sp)
    800022e0:	02010113          	addi	sp,sp,32
    800022e4:	00008067          	ret

00000000800022e8 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    800022e8:	fe010113          	addi	sp,sp,-32
    800022ec:	00113c23          	sd	ra,24(sp)
    800022f0:	00813823          	sd	s0,16(sp)
    800022f4:	00913423          	sd	s1,8(sp)
    800022f8:	01213023          	sd	s2,0(sp)
    800022fc:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80002300:	00a00493          	li	s1,10
    80002304:	0400006f          	j	80002344 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80002308:	00004517          	auipc	a0,0x4
    8000230c:	dc850513          	addi	a0,a0,-568 # 800060d0 <CONSOLE_STATUS+0xc0>
    80002310:	00001097          	auipc	ra,0x1
    80002314:	bb8080e7          	jalr	-1096(ra) # 80002ec8 <_Z11printStringPKc>
    80002318:	00000613          	li	a2,0
    8000231c:	00a00593          	li	a1,10
    80002320:	00048513          	mv	a0,s1
    80002324:	00001097          	auipc	ra,0x1
    80002328:	d54080e7          	jalr	-684(ra) # 80003078 <_Z8printIntiii>
    8000232c:	00004517          	auipc	a0,0x4
    80002330:	0ec50513          	addi	a0,a0,236 # 80006418 <CONSOLE_STATUS+0x408>
    80002334:	00001097          	auipc	ra,0x1
    80002338:	b94080e7          	jalr	-1132(ra) # 80002ec8 <_Z11printStringPKc>
    for (; i < 13; i++) {
    8000233c:	0014849b          	addiw	s1,s1,1
    80002340:	0ff4f493          	andi	s1,s1,255
    80002344:	00c00793          	li	a5,12
    80002348:	fc97f0e3          	bgeu	a5,s1,80002308 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    8000234c:	00004517          	auipc	a0,0x4
    80002350:	d8c50513          	addi	a0,a0,-628 # 800060d8 <CONSOLE_STATUS+0xc8>
    80002354:	00001097          	auipc	ra,0x1
    80002358:	b74080e7          	jalr	-1164(ra) # 80002ec8 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    8000235c:	00500313          	li	t1,5
    thread_dispatch();
    80002360:	fffff097          	auipc	ra,0xfffff
    80002364:	014080e7          	jalr	20(ra) # 80001374 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80002368:	01000513          	li	a0,16
    8000236c:	00000097          	auipc	ra,0x0
    80002370:	be8080e7          	jalr	-1048(ra) # 80001f54 <_ZL9fibonaccim>
    80002374:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80002378:	00004517          	auipc	a0,0x4
    8000237c:	d7050513          	addi	a0,a0,-656 # 800060e8 <CONSOLE_STATUS+0xd8>
    80002380:	00001097          	auipc	ra,0x1
    80002384:	b48080e7          	jalr	-1208(ra) # 80002ec8 <_Z11printStringPKc>
    80002388:	00000613          	li	a2,0
    8000238c:	00a00593          	li	a1,10
    80002390:	0009051b          	sext.w	a0,s2
    80002394:	00001097          	auipc	ra,0x1
    80002398:	ce4080e7          	jalr	-796(ra) # 80003078 <_Z8printIntiii>
    8000239c:	00004517          	auipc	a0,0x4
    800023a0:	07c50513          	addi	a0,a0,124 # 80006418 <CONSOLE_STATUS+0x408>
    800023a4:	00001097          	auipc	ra,0x1
    800023a8:	b24080e7          	jalr	-1244(ra) # 80002ec8 <_Z11printStringPKc>
    800023ac:	0400006f          	j	800023ec <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800023b0:	00004517          	auipc	a0,0x4
    800023b4:	d2050513          	addi	a0,a0,-736 # 800060d0 <CONSOLE_STATUS+0xc0>
    800023b8:	00001097          	auipc	ra,0x1
    800023bc:	b10080e7          	jalr	-1264(ra) # 80002ec8 <_Z11printStringPKc>
    800023c0:	00000613          	li	a2,0
    800023c4:	00a00593          	li	a1,10
    800023c8:	00048513          	mv	a0,s1
    800023cc:	00001097          	auipc	ra,0x1
    800023d0:	cac080e7          	jalr	-852(ra) # 80003078 <_Z8printIntiii>
    800023d4:	00004517          	auipc	a0,0x4
    800023d8:	04450513          	addi	a0,a0,68 # 80006418 <CONSOLE_STATUS+0x408>
    800023dc:	00001097          	auipc	ra,0x1
    800023e0:	aec080e7          	jalr	-1300(ra) # 80002ec8 <_Z11printStringPKc>
    for (; i < 16; i++) {
    800023e4:	0014849b          	addiw	s1,s1,1
    800023e8:	0ff4f493          	andi	s1,s1,255
    800023ec:	00f00793          	li	a5,15
    800023f0:	fc97f0e3          	bgeu	a5,s1,800023b0 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    800023f4:	00004517          	auipc	a0,0x4
    800023f8:	d0450513          	addi	a0,a0,-764 # 800060f8 <CONSOLE_STATUS+0xe8>
    800023fc:	00001097          	auipc	ra,0x1
    80002400:	acc080e7          	jalr	-1332(ra) # 80002ec8 <_Z11printStringPKc>
    finishedD = true;
    80002404:	00100793          	li	a5,1
    80002408:	00005717          	auipc	a4,0x5
    8000240c:	02f705a3          	sb	a5,43(a4) # 80007433 <_ZL9finishedD>
    thread_dispatch();
    80002410:	fffff097          	auipc	ra,0xfffff
    80002414:	f64080e7          	jalr	-156(ra) # 80001374 <_Z15thread_dispatchv>
}
    80002418:	01813083          	ld	ra,24(sp)
    8000241c:	01013403          	ld	s0,16(sp)
    80002420:	00813483          	ld	s1,8(sp)
    80002424:	00013903          	ld	s2,0(sp)
    80002428:	02010113          	addi	sp,sp,32
    8000242c:	00008067          	ret

0000000080002430 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80002430:	fc010113          	addi	sp,sp,-64
    80002434:	02113c23          	sd	ra,56(sp)
    80002438:	02813823          	sd	s0,48(sp)
    8000243c:	02913423          	sd	s1,40(sp)
    80002440:	03213023          	sd	s2,32(sp)
    80002444:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80002448:	02000513          	li	a0,32
    8000244c:	fffff097          	auipc	ra,0xfffff
    80002450:	380080e7          	jalr	896(ra) # 800017cc <_Znwm>
    80002454:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    80002458:	fffff097          	auipc	ra,0xfffff
    8000245c:	50c080e7          	jalr	1292(ra) # 80001964 <_ZN6ThreadC1Ev>
    80002460:	00005797          	auipc	a5,0x5
    80002464:	e6078793          	addi	a5,a5,-416 # 800072c0 <_ZTV7WorkerA+0x10>
    80002468:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    8000246c:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80002470:	00004517          	auipc	a0,0x4
    80002474:	c9850513          	addi	a0,a0,-872 # 80006108 <CONSOLE_STATUS+0xf8>
    80002478:	00001097          	auipc	ra,0x1
    8000247c:	a50080e7          	jalr	-1456(ra) # 80002ec8 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80002480:	02000513          	li	a0,32
    80002484:	fffff097          	auipc	ra,0xfffff
    80002488:	348080e7          	jalr	840(ra) # 800017cc <_Znwm>
    8000248c:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    80002490:	fffff097          	auipc	ra,0xfffff
    80002494:	4d4080e7          	jalr	1236(ra) # 80001964 <_ZN6ThreadC1Ev>
    80002498:	00005797          	auipc	a5,0x5
    8000249c:	e5078793          	addi	a5,a5,-432 # 800072e8 <_ZTV7WorkerB+0x10>
    800024a0:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    800024a4:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    800024a8:	00004517          	auipc	a0,0x4
    800024ac:	c7850513          	addi	a0,a0,-904 # 80006120 <CONSOLE_STATUS+0x110>
    800024b0:	00001097          	auipc	ra,0x1
    800024b4:	a18080e7          	jalr	-1512(ra) # 80002ec8 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    800024b8:	02000513          	li	a0,32
    800024bc:	fffff097          	auipc	ra,0xfffff
    800024c0:	310080e7          	jalr	784(ra) # 800017cc <_Znwm>
    800024c4:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    800024c8:	fffff097          	auipc	ra,0xfffff
    800024cc:	49c080e7          	jalr	1180(ra) # 80001964 <_ZN6ThreadC1Ev>
    800024d0:	00005797          	auipc	a5,0x5
    800024d4:	e4078793          	addi	a5,a5,-448 # 80007310 <_ZTV7WorkerC+0x10>
    800024d8:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    800024dc:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    800024e0:	00004517          	auipc	a0,0x4
    800024e4:	c5850513          	addi	a0,a0,-936 # 80006138 <CONSOLE_STATUS+0x128>
    800024e8:	00001097          	auipc	ra,0x1
    800024ec:	9e0080e7          	jalr	-1568(ra) # 80002ec8 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    800024f0:	02000513          	li	a0,32
    800024f4:	fffff097          	auipc	ra,0xfffff
    800024f8:	2d8080e7          	jalr	728(ra) # 800017cc <_Znwm>
    800024fc:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    80002500:	fffff097          	auipc	ra,0xfffff
    80002504:	464080e7          	jalr	1124(ra) # 80001964 <_ZN6ThreadC1Ev>
    80002508:	00005797          	auipc	a5,0x5
    8000250c:	e3078793          	addi	a5,a5,-464 # 80007338 <_ZTV7WorkerD+0x10>
    80002510:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    80002514:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80002518:	00004517          	auipc	a0,0x4
    8000251c:	c3850513          	addi	a0,a0,-968 # 80006150 <CONSOLE_STATUS+0x140>
    80002520:	00001097          	auipc	ra,0x1
    80002524:	9a8080e7          	jalr	-1624(ra) # 80002ec8 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80002528:	00000493          	li	s1,0
    8000252c:	00300793          	li	a5,3
    80002530:	0297c663          	blt	a5,s1,8000255c <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    80002534:	00349793          	slli	a5,s1,0x3
    80002538:	fe040713          	addi	a4,s0,-32
    8000253c:	00f707b3          	add	a5,a4,a5
    80002540:	fe07b503          	ld	a0,-32(a5)
    80002544:	fffff097          	auipc	ra,0xfffff
    80002548:	49c080e7          	jalr	1180(ra) # 800019e0 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    8000254c:	0014849b          	addiw	s1,s1,1
    80002550:	fddff06f          	j	8000252c <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80002554:	fffff097          	auipc	ra,0xfffff
    80002558:	4e8080e7          	jalr	1256(ra) # 80001a3c <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    8000255c:	00005797          	auipc	a5,0x5
    80002560:	ed47c783          	lbu	a5,-300(a5) # 80007430 <_ZL9finishedA>
    80002564:	fe0788e3          	beqz	a5,80002554 <_Z20Threads_CPP_API_testv+0x124>
    80002568:	00005797          	auipc	a5,0x5
    8000256c:	ec97c783          	lbu	a5,-311(a5) # 80007431 <_ZL9finishedB>
    80002570:	fe0782e3          	beqz	a5,80002554 <_Z20Threads_CPP_API_testv+0x124>
    80002574:	00005797          	auipc	a5,0x5
    80002578:	ebe7c783          	lbu	a5,-322(a5) # 80007432 <_ZL9finishedC>
    8000257c:	fc078ce3          	beqz	a5,80002554 <_Z20Threads_CPP_API_testv+0x124>
    80002580:	00005797          	auipc	a5,0x5
    80002584:	eb37c783          	lbu	a5,-333(a5) # 80007433 <_ZL9finishedD>
    80002588:	fc0786e3          	beqz	a5,80002554 <_Z20Threads_CPP_API_testv+0x124>
    8000258c:	fc040493          	addi	s1,s0,-64
    80002590:	0080006f          	j	80002598 <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    80002594:	00848493          	addi	s1,s1,8
    80002598:	fe040793          	addi	a5,s0,-32
    8000259c:	08f48663          	beq	s1,a5,80002628 <_Z20Threads_CPP_API_testv+0x1f8>
    800025a0:	0004b503          	ld	a0,0(s1)
    800025a4:	fe0508e3          	beqz	a0,80002594 <_Z20Threads_CPP_API_testv+0x164>
    800025a8:	00053783          	ld	a5,0(a0)
    800025ac:	0087b783          	ld	a5,8(a5)
    800025b0:	000780e7          	jalr	a5
    800025b4:	fe1ff06f          	j	80002594 <_Z20Threads_CPP_API_testv+0x164>
    800025b8:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    800025bc:	00048513          	mv	a0,s1
    800025c0:	fffff097          	auipc	ra,0xfffff
    800025c4:	25c080e7          	jalr	604(ra) # 8000181c <_ZdlPv>
    800025c8:	00090513          	mv	a0,s2
    800025cc:	00006097          	auipc	ra,0x6
    800025d0:	f4c080e7          	jalr	-180(ra) # 80008518 <_Unwind_Resume>
    800025d4:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    800025d8:	00048513          	mv	a0,s1
    800025dc:	fffff097          	auipc	ra,0xfffff
    800025e0:	240080e7          	jalr	576(ra) # 8000181c <_ZdlPv>
    800025e4:	00090513          	mv	a0,s2
    800025e8:	00006097          	auipc	ra,0x6
    800025ec:	f30080e7          	jalr	-208(ra) # 80008518 <_Unwind_Resume>
    800025f0:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    800025f4:	00048513          	mv	a0,s1
    800025f8:	fffff097          	auipc	ra,0xfffff
    800025fc:	224080e7          	jalr	548(ra) # 8000181c <_ZdlPv>
    80002600:	00090513          	mv	a0,s2
    80002604:	00006097          	auipc	ra,0x6
    80002608:	f14080e7          	jalr	-236(ra) # 80008518 <_Unwind_Resume>
    8000260c:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80002610:	00048513          	mv	a0,s1
    80002614:	fffff097          	auipc	ra,0xfffff
    80002618:	208080e7          	jalr	520(ra) # 8000181c <_ZdlPv>
    8000261c:	00090513          	mv	a0,s2
    80002620:	00006097          	auipc	ra,0x6
    80002624:	ef8080e7          	jalr	-264(ra) # 80008518 <_Unwind_Resume>
}
    80002628:	03813083          	ld	ra,56(sp)
    8000262c:	03013403          	ld	s0,48(sp)
    80002630:	02813483          	ld	s1,40(sp)
    80002634:	02013903          	ld	s2,32(sp)
    80002638:	04010113          	addi	sp,sp,64
    8000263c:	00008067          	ret

0000000080002640 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80002640:	ff010113          	addi	sp,sp,-16
    80002644:	00113423          	sd	ra,8(sp)
    80002648:	00813023          	sd	s0,0(sp)
    8000264c:	01010413          	addi	s0,sp,16
    80002650:	00005797          	auipc	a5,0x5
    80002654:	c7078793          	addi	a5,a5,-912 # 800072c0 <_ZTV7WorkerA+0x10>
    80002658:	00f53023          	sd	a5,0(a0)
    8000265c:	fffff097          	auipc	ra,0xfffff
    80002660:	210080e7          	jalr	528(ra) # 8000186c <_ZN6ThreadD1Ev>
    80002664:	00813083          	ld	ra,8(sp)
    80002668:	00013403          	ld	s0,0(sp)
    8000266c:	01010113          	addi	sp,sp,16
    80002670:	00008067          	ret

0000000080002674 <_ZN7WorkerAD0Ev>:
    80002674:	fe010113          	addi	sp,sp,-32
    80002678:	00113c23          	sd	ra,24(sp)
    8000267c:	00813823          	sd	s0,16(sp)
    80002680:	00913423          	sd	s1,8(sp)
    80002684:	02010413          	addi	s0,sp,32
    80002688:	00050493          	mv	s1,a0
    8000268c:	00005797          	auipc	a5,0x5
    80002690:	c3478793          	addi	a5,a5,-972 # 800072c0 <_ZTV7WorkerA+0x10>
    80002694:	00f53023          	sd	a5,0(a0)
    80002698:	fffff097          	auipc	ra,0xfffff
    8000269c:	1d4080e7          	jalr	468(ra) # 8000186c <_ZN6ThreadD1Ev>
    800026a0:	00048513          	mv	a0,s1
    800026a4:	fffff097          	auipc	ra,0xfffff
    800026a8:	178080e7          	jalr	376(ra) # 8000181c <_ZdlPv>
    800026ac:	01813083          	ld	ra,24(sp)
    800026b0:	01013403          	ld	s0,16(sp)
    800026b4:	00813483          	ld	s1,8(sp)
    800026b8:	02010113          	addi	sp,sp,32
    800026bc:	00008067          	ret

00000000800026c0 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    800026c0:	ff010113          	addi	sp,sp,-16
    800026c4:	00113423          	sd	ra,8(sp)
    800026c8:	00813023          	sd	s0,0(sp)
    800026cc:	01010413          	addi	s0,sp,16
    800026d0:	00005797          	auipc	a5,0x5
    800026d4:	c1878793          	addi	a5,a5,-1000 # 800072e8 <_ZTV7WorkerB+0x10>
    800026d8:	00f53023          	sd	a5,0(a0)
    800026dc:	fffff097          	auipc	ra,0xfffff
    800026e0:	190080e7          	jalr	400(ra) # 8000186c <_ZN6ThreadD1Ev>
    800026e4:	00813083          	ld	ra,8(sp)
    800026e8:	00013403          	ld	s0,0(sp)
    800026ec:	01010113          	addi	sp,sp,16
    800026f0:	00008067          	ret

00000000800026f4 <_ZN7WorkerBD0Ev>:
    800026f4:	fe010113          	addi	sp,sp,-32
    800026f8:	00113c23          	sd	ra,24(sp)
    800026fc:	00813823          	sd	s0,16(sp)
    80002700:	00913423          	sd	s1,8(sp)
    80002704:	02010413          	addi	s0,sp,32
    80002708:	00050493          	mv	s1,a0
    8000270c:	00005797          	auipc	a5,0x5
    80002710:	bdc78793          	addi	a5,a5,-1060 # 800072e8 <_ZTV7WorkerB+0x10>
    80002714:	00f53023          	sd	a5,0(a0)
    80002718:	fffff097          	auipc	ra,0xfffff
    8000271c:	154080e7          	jalr	340(ra) # 8000186c <_ZN6ThreadD1Ev>
    80002720:	00048513          	mv	a0,s1
    80002724:	fffff097          	auipc	ra,0xfffff
    80002728:	0f8080e7          	jalr	248(ra) # 8000181c <_ZdlPv>
    8000272c:	01813083          	ld	ra,24(sp)
    80002730:	01013403          	ld	s0,16(sp)
    80002734:	00813483          	ld	s1,8(sp)
    80002738:	02010113          	addi	sp,sp,32
    8000273c:	00008067          	ret

0000000080002740 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80002740:	ff010113          	addi	sp,sp,-16
    80002744:	00113423          	sd	ra,8(sp)
    80002748:	00813023          	sd	s0,0(sp)
    8000274c:	01010413          	addi	s0,sp,16
    80002750:	00005797          	auipc	a5,0x5
    80002754:	bc078793          	addi	a5,a5,-1088 # 80007310 <_ZTV7WorkerC+0x10>
    80002758:	00f53023          	sd	a5,0(a0)
    8000275c:	fffff097          	auipc	ra,0xfffff
    80002760:	110080e7          	jalr	272(ra) # 8000186c <_ZN6ThreadD1Ev>
    80002764:	00813083          	ld	ra,8(sp)
    80002768:	00013403          	ld	s0,0(sp)
    8000276c:	01010113          	addi	sp,sp,16
    80002770:	00008067          	ret

0000000080002774 <_ZN7WorkerCD0Ev>:
    80002774:	fe010113          	addi	sp,sp,-32
    80002778:	00113c23          	sd	ra,24(sp)
    8000277c:	00813823          	sd	s0,16(sp)
    80002780:	00913423          	sd	s1,8(sp)
    80002784:	02010413          	addi	s0,sp,32
    80002788:	00050493          	mv	s1,a0
    8000278c:	00005797          	auipc	a5,0x5
    80002790:	b8478793          	addi	a5,a5,-1148 # 80007310 <_ZTV7WorkerC+0x10>
    80002794:	00f53023          	sd	a5,0(a0)
    80002798:	fffff097          	auipc	ra,0xfffff
    8000279c:	0d4080e7          	jalr	212(ra) # 8000186c <_ZN6ThreadD1Ev>
    800027a0:	00048513          	mv	a0,s1
    800027a4:	fffff097          	auipc	ra,0xfffff
    800027a8:	078080e7          	jalr	120(ra) # 8000181c <_ZdlPv>
    800027ac:	01813083          	ld	ra,24(sp)
    800027b0:	01013403          	ld	s0,16(sp)
    800027b4:	00813483          	ld	s1,8(sp)
    800027b8:	02010113          	addi	sp,sp,32
    800027bc:	00008067          	ret

00000000800027c0 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    800027c0:	ff010113          	addi	sp,sp,-16
    800027c4:	00113423          	sd	ra,8(sp)
    800027c8:	00813023          	sd	s0,0(sp)
    800027cc:	01010413          	addi	s0,sp,16
    800027d0:	00005797          	auipc	a5,0x5
    800027d4:	b6878793          	addi	a5,a5,-1176 # 80007338 <_ZTV7WorkerD+0x10>
    800027d8:	00f53023          	sd	a5,0(a0)
    800027dc:	fffff097          	auipc	ra,0xfffff
    800027e0:	090080e7          	jalr	144(ra) # 8000186c <_ZN6ThreadD1Ev>
    800027e4:	00813083          	ld	ra,8(sp)
    800027e8:	00013403          	ld	s0,0(sp)
    800027ec:	01010113          	addi	sp,sp,16
    800027f0:	00008067          	ret

00000000800027f4 <_ZN7WorkerDD0Ev>:
    800027f4:	fe010113          	addi	sp,sp,-32
    800027f8:	00113c23          	sd	ra,24(sp)
    800027fc:	00813823          	sd	s0,16(sp)
    80002800:	00913423          	sd	s1,8(sp)
    80002804:	02010413          	addi	s0,sp,32
    80002808:	00050493          	mv	s1,a0
    8000280c:	00005797          	auipc	a5,0x5
    80002810:	b2c78793          	addi	a5,a5,-1236 # 80007338 <_ZTV7WorkerD+0x10>
    80002814:	00f53023          	sd	a5,0(a0)
    80002818:	fffff097          	auipc	ra,0xfffff
    8000281c:	054080e7          	jalr	84(ra) # 8000186c <_ZN6ThreadD1Ev>
    80002820:	00048513          	mv	a0,s1
    80002824:	fffff097          	auipc	ra,0xfffff
    80002828:	ff8080e7          	jalr	-8(ra) # 8000181c <_ZdlPv>
    8000282c:	01813083          	ld	ra,24(sp)
    80002830:	01013403          	ld	s0,16(sp)
    80002834:	00813483          	ld	s1,8(sp)
    80002838:	02010113          	addi	sp,sp,32
    8000283c:	00008067          	ret

0000000080002840 <_ZN7WorkerA3runEv>:
    void run() override {
    80002840:	ff010113          	addi	sp,sp,-16
    80002844:	00113423          	sd	ra,8(sp)
    80002848:	00813023          	sd	s0,0(sp)
    8000284c:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80002850:	00000593          	li	a1,0
    80002854:	fffff097          	auipc	ra,0xfffff
    80002858:	774080e7          	jalr	1908(ra) # 80001fc8 <_ZN7WorkerA11workerBodyAEPv>
    }
    8000285c:	00813083          	ld	ra,8(sp)
    80002860:	00013403          	ld	s0,0(sp)
    80002864:	01010113          	addi	sp,sp,16
    80002868:	00008067          	ret

000000008000286c <_ZN7WorkerB3runEv>:
    void run() override {
    8000286c:	ff010113          	addi	sp,sp,-16
    80002870:	00113423          	sd	ra,8(sp)
    80002874:	00813023          	sd	s0,0(sp)
    80002878:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    8000287c:	00000593          	li	a1,0
    80002880:	00000097          	auipc	ra,0x0
    80002884:	814080e7          	jalr	-2028(ra) # 80002094 <_ZN7WorkerB11workerBodyBEPv>
    }
    80002888:	00813083          	ld	ra,8(sp)
    8000288c:	00013403          	ld	s0,0(sp)
    80002890:	01010113          	addi	sp,sp,16
    80002894:	00008067          	ret

0000000080002898 <_ZN7WorkerC3runEv>:
    void run() override {
    80002898:	ff010113          	addi	sp,sp,-16
    8000289c:	00113423          	sd	ra,8(sp)
    800028a0:	00813023          	sd	s0,0(sp)
    800028a4:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    800028a8:	00000593          	li	a1,0
    800028ac:	00000097          	auipc	ra,0x0
    800028b0:	8bc080e7          	jalr	-1860(ra) # 80002168 <_ZN7WorkerC11workerBodyCEPv>
    }
    800028b4:	00813083          	ld	ra,8(sp)
    800028b8:	00013403          	ld	s0,0(sp)
    800028bc:	01010113          	addi	sp,sp,16
    800028c0:	00008067          	ret

00000000800028c4 <_ZN7WorkerD3runEv>:
    void run() override {
    800028c4:	ff010113          	addi	sp,sp,-16
    800028c8:	00113423          	sd	ra,8(sp)
    800028cc:	00813023          	sd	s0,0(sp)
    800028d0:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    800028d4:	00000593          	li	a1,0
    800028d8:	00000097          	auipc	ra,0x0
    800028dc:	a10080e7          	jalr	-1520(ra) # 800022e8 <_ZN7WorkerD11workerBodyDEPv>
    }
    800028e0:	00813083          	ld	ra,8(sp)
    800028e4:	00013403          	ld	s0,0(sp)
    800028e8:	01010113          	addi	sp,sp,16
    800028ec:	00008067          	ret

00000000800028f0 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800028f0:	fe010113          	addi	sp,sp,-32
    800028f4:	00113c23          	sd	ra,24(sp)
    800028f8:	00813823          	sd	s0,16(sp)
    800028fc:	00913423          	sd	s1,8(sp)
    80002900:	01213023          	sd	s2,0(sp)
    80002904:	02010413          	addi	s0,sp,32
    80002908:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    8000290c:	00100793          	li	a5,1
    80002910:	02a7f863          	bgeu	a5,a0,80002940 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80002914:	00a00793          	li	a5,10
    80002918:	02f577b3          	remu	a5,a0,a5
    8000291c:	02078e63          	beqz	a5,80002958 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80002920:	fff48513          	addi	a0,s1,-1
    80002924:	00000097          	auipc	ra,0x0
    80002928:	fcc080e7          	jalr	-52(ra) # 800028f0 <_ZL9fibonaccim>
    8000292c:	00050913          	mv	s2,a0
    80002930:	ffe48513          	addi	a0,s1,-2
    80002934:	00000097          	auipc	ra,0x0
    80002938:	fbc080e7          	jalr	-68(ra) # 800028f0 <_ZL9fibonaccim>
    8000293c:	00a90533          	add	a0,s2,a0
}
    80002940:	01813083          	ld	ra,24(sp)
    80002944:	01013403          	ld	s0,16(sp)
    80002948:	00813483          	ld	s1,8(sp)
    8000294c:	00013903          	ld	s2,0(sp)
    80002950:	02010113          	addi	sp,sp,32
    80002954:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80002958:	fffff097          	auipc	ra,0xfffff
    8000295c:	a1c080e7          	jalr	-1508(ra) # 80001374 <_Z15thread_dispatchv>
    80002960:	fc1ff06f          	j	80002920 <_ZL9fibonaccim+0x30>

0000000080002964 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80002964:	fe010113          	addi	sp,sp,-32
    80002968:	00113c23          	sd	ra,24(sp)
    8000296c:	00813823          	sd	s0,16(sp)
    80002970:	00913423          	sd	s1,8(sp)
    80002974:	01213023          	sd	s2,0(sp)
    80002978:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    8000297c:	00a00493          	li	s1,10
    80002980:	0400006f          	j	800029c0 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80002984:	00003517          	auipc	a0,0x3
    80002988:	74c50513          	addi	a0,a0,1868 # 800060d0 <CONSOLE_STATUS+0xc0>
    8000298c:	00000097          	auipc	ra,0x0
    80002990:	53c080e7          	jalr	1340(ra) # 80002ec8 <_Z11printStringPKc>
    80002994:	00000613          	li	a2,0
    80002998:	00a00593          	li	a1,10
    8000299c:	00048513          	mv	a0,s1
    800029a0:	00000097          	auipc	ra,0x0
    800029a4:	6d8080e7          	jalr	1752(ra) # 80003078 <_Z8printIntiii>
    800029a8:	00004517          	auipc	a0,0x4
    800029ac:	a7050513          	addi	a0,a0,-1424 # 80006418 <CONSOLE_STATUS+0x408>
    800029b0:	00000097          	auipc	ra,0x0
    800029b4:	518080e7          	jalr	1304(ra) # 80002ec8 <_Z11printStringPKc>
    for (; i < 13; i++) {
    800029b8:	0014849b          	addiw	s1,s1,1
    800029bc:	0ff4f493          	andi	s1,s1,255
    800029c0:	00c00793          	li	a5,12
    800029c4:	fc97f0e3          	bgeu	a5,s1,80002984 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    800029c8:	00003517          	auipc	a0,0x3
    800029cc:	71050513          	addi	a0,a0,1808 # 800060d8 <CONSOLE_STATUS+0xc8>
    800029d0:	00000097          	auipc	ra,0x0
    800029d4:	4f8080e7          	jalr	1272(ra) # 80002ec8 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800029d8:	00500313          	li	t1,5
    thread_dispatch();
    800029dc:	fffff097          	auipc	ra,0xfffff
    800029e0:	998080e7          	jalr	-1640(ra) # 80001374 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    800029e4:	01000513          	li	a0,16
    800029e8:	00000097          	auipc	ra,0x0
    800029ec:	f08080e7          	jalr	-248(ra) # 800028f0 <_ZL9fibonaccim>
    800029f0:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800029f4:	00003517          	auipc	a0,0x3
    800029f8:	6f450513          	addi	a0,a0,1780 # 800060e8 <CONSOLE_STATUS+0xd8>
    800029fc:	00000097          	auipc	ra,0x0
    80002a00:	4cc080e7          	jalr	1228(ra) # 80002ec8 <_Z11printStringPKc>
    80002a04:	00000613          	li	a2,0
    80002a08:	00a00593          	li	a1,10
    80002a0c:	0009051b          	sext.w	a0,s2
    80002a10:	00000097          	auipc	ra,0x0
    80002a14:	668080e7          	jalr	1640(ra) # 80003078 <_Z8printIntiii>
    80002a18:	00004517          	auipc	a0,0x4
    80002a1c:	a0050513          	addi	a0,a0,-1536 # 80006418 <CONSOLE_STATUS+0x408>
    80002a20:	00000097          	auipc	ra,0x0
    80002a24:	4a8080e7          	jalr	1192(ra) # 80002ec8 <_Z11printStringPKc>
    80002a28:	0400006f          	j	80002a68 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80002a2c:	00003517          	auipc	a0,0x3
    80002a30:	6a450513          	addi	a0,a0,1700 # 800060d0 <CONSOLE_STATUS+0xc0>
    80002a34:	00000097          	auipc	ra,0x0
    80002a38:	494080e7          	jalr	1172(ra) # 80002ec8 <_Z11printStringPKc>
    80002a3c:	00000613          	li	a2,0
    80002a40:	00a00593          	li	a1,10
    80002a44:	00048513          	mv	a0,s1
    80002a48:	00000097          	auipc	ra,0x0
    80002a4c:	630080e7          	jalr	1584(ra) # 80003078 <_Z8printIntiii>
    80002a50:	00004517          	auipc	a0,0x4
    80002a54:	9c850513          	addi	a0,a0,-1592 # 80006418 <CONSOLE_STATUS+0x408>
    80002a58:	00000097          	auipc	ra,0x0
    80002a5c:	470080e7          	jalr	1136(ra) # 80002ec8 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80002a60:	0014849b          	addiw	s1,s1,1
    80002a64:	0ff4f493          	andi	s1,s1,255
    80002a68:	00f00793          	li	a5,15
    80002a6c:	fc97f0e3          	bgeu	a5,s1,80002a2c <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80002a70:	00003517          	auipc	a0,0x3
    80002a74:	68850513          	addi	a0,a0,1672 # 800060f8 <CONSOLE_STATUS+0xe8>
    80002a78:	00000097          	auipc	ra,0x0
    80002a7c:	450080e7          	jalr	1104(ra) # 80002ec8 <_Z11printStringPKc>
    finishedD = true;
    80002a80:	00100793          	li	a5,1
    80002a84:	00005717          	auipc	a4,0x5
    80002a88:	9af70823          	sb	a5,-1616(a4) # 80007434 <_ZL9finishedD>
    thread_dispatch();
    80002a8c:	fffff097          	auipc	ra,0xfffff
    80002a90:	8e8080e7          	jalr	-1816(ra) # 80001374 <_Z15thread_dispatchv>
}
    80002a94:	01813083          	ld	ra,24(sp)
    80002a98:	01013403          	ld	s0,16(sp)
    80002a9c:	00813483          	ld	s1,8(sp)
    80002aa0:	00013903          	ld	s2,0(sp)
    80002aa4:	02010113          	addi	sp,sp,32
    80002aa8:	00008067          	ret

0000000080002aac <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80002aac:	fe010113          	addi	sp,sp,-32
    80002ab0:	00113c23          	sd	ra,24(sp)
    80002ab4:	00813823          	sd	s0,16(sp)
    80002ab8:	00913423          	sd	s1,8(sp)
    80002abc:	01213023          	sd	s2,0(sp)
    80002ac0:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80002ac4:	00000493          	li	s1,0
    80002ac8:	0400006f          	j	80002b08 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80002acc:	00003517          	auipc	a0,0x3
    80002ad0:	5d450513          	addi	a0,a0,1492 # 800060a0 <CONSOLE_STATUS+0x90>
    80002ad4:	00000097          	auipc	ra,0x0
    80002ad8:	3f4080e7          	jalr	1012(ra) # 80002ec8 <_Z11printStringPKc>
    80002adc:	00000613          	li	a2,0
    80002ae0:	00a00593          	li	a1,10
    80002ae4:	00048513          	mv	a0,s1
    80002ae8:	00000097          	auipc	ra,0x0
    80002aec:	590080e7          	jalr	1424(ra) # 80003078 <_Z8printIntiii>
    80002af0:	00004517          	auipc	a0,0x4
    80002af4:	92850513          	addi	a0,a0,-1752 # 80006418 <CONSOLE_STATUS+0x408>
    80002af8:	00000097          	auipc	ra,0x0
    80002afc:	3d0080e7          	jalr	976(ra) # 80002ec8 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80002b00:	0014849b          	addiw	s1,s1,1
    80002b04:	0ff4f493          	andi	s1,s1,255
    80002b08:	00200793          	li	a5,2
    80002b0c:	fc97f0e3          	bgeu	a5,s1,80002acc <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80002b10:	00003517          	auipc	a0,0x3
    80002b14:	59850513          	addi	a0,a0,1432 # 800060a8 <CONSOLE_STATUS+0x98>
    80002b18:	00000097          	auipc	ra,0x0
    80002b1c:	3b0080e7          	jalr	944(ra) # 80002ec8 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80002b20:	00700313          	li	t1,7
    thread_dispatch();
    80002b24:	fffff097          	auipc	ra,0xfffff
    80002b28:	850080e7          	jalr	-1968(ra) # 80001374 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80002b2c:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80002b30:	00003517          	auipc	a0,0x3
    80002b34:	58850513          	addi	a0,a0,1416 # 800060b8 <CONSOLE_STATUS+0xa8>
    80002b38:	00000097          	auipc	ra,0x0
    80002b3c:	390080e7          	jalr	912(ra) # 80002ec8 <_Z11printStringPKc>
    80002b40:	00000613          	li	a2,0
    80002b44:	00a00593          	li	a1,10
    80002b48:	0009051b          	sext.w	a0,s2
    80002b4c:	00000097          	auipc	ra,0x0
    80002b50:	52c080e7          	jalr	1324(ra) # 80003078 <_Z8printIntiii>
    80002b54:	00004517          	auipc	a0,0x4
    80002b58:	8c450513          	addi	a0,a0,-1852 # 80006418 <CONSOLE_STATUS+0x408>
    80002b5c:	00000097          	auipc	ra,0x0
    80002b60:	36c080e7          	jalr	876(ra) # 80002ec8 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80002b64:	00c00513          	li	a0,12
    80002b68:	00000097          	auipc	ra,0x0
    80002b6c:	d88080e7          	jalr	-632(ra) # 800028f0 <_ZL9fibonaccim>
    80002b70:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80002b74:	00003517          	auipc	a0,0x3
    80002b78:	54c50513          	addi	a0,a0,1356 # 800060c0 <CONSOLE_STATUS+0xb0>
    80002b7c:	00000097          	auipc	ra,0x0
    80002b80:	34c080e7          	jalr	844(ra) # 80002ec8 <_Z11printStringPKc>
    80002b84:	00000613          	li	a2,0
    80002b88:	00a00593          	li	a1,10
    80002b8c:	0009051b          	sext.w	a0,s2
    80002b90:	00000097          	auipc	ra,0x0
    80002b94:	4e8080e7          	jalr	1256(ra) # 80003078 <_Z8printIntiii>
    80002b98:	00004517          	auipc	a0,0x4
    80002b9c:	88050513          	addi	a0,a0,-1920 # 80006418 <CONSOLE_STATUS+0x408>
    80002ba0:	00000097          	auipc	ra,0x0
    80002ba4:	328080e7          	jalr	808(ra) # 80002ec8 <_Z11printStringPKc>
    80002ba8:	0400006f          	j	80002be8 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80002bac:	00003517          	auipc	a0,0x3
    80002bb0:	4f450513          	addi	a0,a0,1268 # 800060a0 <CONSOLE_STATUS+0x90>
    80002bb4:	00000097          	auipc	ra,0x0
    80002bb8:	314080e7          	jalr	788(ra) # 80002ec8 <_Z11printStringPKc>
    80002bbc:	00000613          	li	a2,0
    80002bc0:	00a00593          	li	a1,10
    80002bc4:	00048513          	mv	a0,s1
    80002bc8:	00000097          	auipc	ra,0x0
    80002bcc:	4b0080e7          	jalr	1200(ra) # 80003078 <_Z8printIntiii>
    80002bd0:	00004517          	auipc	a0,0x4
    80002bd4:	84850513          	addi	a0,a0,-1976 # 80006418 <CONSOLE_STATUS+0x408>
    80002bd8:	00000097          	auipc	ra,0x0
    80002bdc:	2f0080e7          	jalr	752(ra) # 80002ec8 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80002be0:	0014849b          	addiw	s1,s1,1
    80002be4:	0ff4f493          	andi	s1,s1,255
    80002be8:	00500793          	li	a5,5
    80002bec:	fc97f0e3          	bgeu	a5,s1,80002bac <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80002bf0:	00003517          	auipc	a0,0x3
    80002bf4:	48850513          	addi	a0,a0,1160 # 80006078 <CONSOLE_STATUS+0x68>
    80002bf8:	00000097          	auipc	ra,0x0
    80002bfc:	2d0080e7          	jalr	720(ra) # 80002ec8 <_Z11printStringPKc>
    finishedC = true;
    80002c00:	00100793          	li	a5,1
    80002c04:	00005717          	auipc	a4,0x5
    80002c08:	82f708a3          	sb	a5,-1999(a4) # 80007435 <_ZL9finishedC>
    thread_dispatch();
    80002c0c:	ffffe097          	auipc	ra,0xffffe
    80002c10:	768080e7          	jalr	1896(ra) # 80001374 <_Z15thread_dispatchv>
}
    80002c14:	01813083          	ld	ra,24(sp)
    80002c18:	01013403          	ld	s0,16(sp)
    80002c1c:	00813483          	ld	s1,8(sp)
    80002c20:	00013903          	ld	s2,0(sp)
    80002c24:	02010113          	addi	sp,sp,32
    80002c28:	00008067          	ret

0000000080002c2c <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80002c2c:	fe010113          	addi	sp,sp,-32
    80002c30:	00113c23          	sd	ra,24(sp)
    80002c34:	00813823          	sd	s0,16(sp)
    80002c38:	00913423          	sd	s1,8(sp)
    80002c3c:	01213023          	sd	s2,0(sp)
    80002c40:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80002c44:	00000913          	li	s2,0
    80002c48:	0380006f          	j	80002c80 <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    80002c4c:	ffffe097          	auipc	ra,0xffffe
    80002c50:	728080e7          	jalr	1832(ra) # 80001374 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80002c54:	00148493          	addi	s1,s1,1
    80002c58:	000027b7          	lui	a5,0x2
    80002c5c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80002c60:	0097ee63          	bltu	a5,s1,80002c7c <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80002c64:	00000713          	li	a4,0
    80002c68:	000077b7          	lui	a5,0x7
    80002c6c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80002c70:	fce7eee3          	bltu	a5,a4,80002c4c <_ZL11workerBodyBPv+0x20>
    80002c74:	00170713          	addi	a4,a4,1
    80002c78:	ff1ff06f          	j	80002c68 <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80002c7c:	00190913          	addi	s2,s2,1
    80002c80:	00f00793          	li	a5,15
    80002c84:	0527e063          	bltu	a5,s2,80002cc4 <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80002c88:	00003517          	auipc	a0,0x3
    80002c8c:	40050513          	addi	a0,a0,1024 # 80006088 <CONSOLE_STATUS+0x78>
    80002c90:	00000097          	auipc	ra,0x0
    80002c94:	238080e7          	jalr	568(ra) # 80002ec8 <_Z11printStringPKc>
    80002c98:	00000613          	li	a2,0
    80002c9c:	00a00593          	li	a1,10
    80002ca0:	0009051b          	sext.w	a0,s2
    80002ca4:	00000097          	auipc	ra,0x0
    80002ca8:	3d4080e7          	jalr	980(ra) # 80003078 <_Z8printIntiii>
    80002cac:	00003517          	auipc	a0,0x3
    80002cb0:	76c50513          	addi	a0,a0,1900 # 80006418 <CONSOLE_STATUS+0x408>
    80002cb4:	00000097          	auipc	ra,0x0
    80002cb8:	214080e7          	jalr	532(ra) # 80002ec8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80002cbc:	00000493          	li	s1,0
    80002cc0:	f99ff06f          	j	80002c58 <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    80002cc4:	00003517          	auipc	a0,0x3
    80002cc8:	3cc50513          	addi	a0,a0,972 # 80006090 <CONSOLE_STATUS+0x80>
    80002ccc:	00000097          	auipc	ra,0x0
    80002cd0:	1fc080e7          	jalr	508(ra) # 80002ec8 <_Z11printStringPKc>
    finishedB = true;
    80002cd4:	00100793          	li	a5,1
    80002cd8:	00004717          	auipc	a4,0x4
    80002cdc:	74f70f23          	sb	a5,1886(a4) # 80007436 <_ZL9finishedB>
    thread_dispatch();
    80002ce0:	ffffe097          	auipc	ra,0xffffe
    80002ce4:	694080e7          	jalr	1684(ra) # 80001374 <_Z15thread_dispatchv>
}
    80002ce8:	01813083          	ld	ra,24(sp)
    80002cec:	01013403          	ld	s0,16(sp)
    80002cf0:	00813483          	ld	s1,8(sp)
    80002cf4:	00013903          	ld	s2,0(sp)
    80002cf8:	02010113          	addi	sp,sp,32
    80002cfc:	00008067          	ret

0000000080002d00 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80002d00:	fe010113          	addi	sp,sp,-32
    80002d04:	00113c23          	sd	ra,24(sp)
    80002d08:	00813823          	sd	s0,16(sp)
    80002d0c:	00913423          	sd	s1,8(sp)
    80002d10:	01213023          	sd	s2,0(sp)
    80002d14:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80002d18:	00000913          	li	s2,0
    80002d1c:	0380006f          	j	80002d54 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80002d20:	ffffe097          	auipc	ra,0xffffe
    80002d24:	654080e7          	jalr	1620(ra) # 80001374 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80002d28:	00148493          	addi	s1,s1,1
    80002d2c:	000027b7          	lui	a5,0x2
    80002d30:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80002d34:	0097ee63          	bltu	a5,s1,80002d50 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80002d38:	00000713          	li	a4,0
    80002d3c:	000077b7          	lui	a5,0x7
    80002d40:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80002d44:	fce7eee3          	bltu	a5,a4,80002d20 <_ZL11workerBodyAPv+0x20>
    80002d48:	00170713          	addi	a4,a4,1
    80002d4c:	ff1ff06f          	j	80002d3c <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80002d50:	00190913          	addi	s2,s2,1
    80002d54:	00900793          	li	a5,9
    80002d58:	0527e063          	bltu	a5,s2,80002d98 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80002d5c:	00003517          	auipc	a0,0x3
    80002d60:	31450513          	addi	a0,a0,788 # 80006070 <CONSOLE_STATUS+0x60>
    80002d64:	00000097          	auipc	ra,0x0
    80002d68:	164080e7          	jalr	356(ra) # 80002ec8 <_Z11printStringPKc>
    80002d6c:	00000613          	li	a2,0
    80002d70:	00a00593          	li	a1,10
    80002d74:	0009051b          	sext.w	a0,s2
    80002d78:	00000097          	auipc	ra,0x0
    80002d7c:	300080e7          	jalr	768(ra) # 80003078 <_Z8printIntiii>
    80002d80:	00003517          	auipc	a0,0x3
    80002d84:	69850513          	addi	a0,a0,1688 # 80006418 <CONSOLE_STATUS+0x408>
    80002d88:	00000097          	auipc	ra,0x0
    80002d8c:	140080e7          	jalr	320(ra) # 80002ec8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80002d90:	00000493          	li	s1,0
    80002d94:	f99ff06f          	j	80002d2c <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80002d98:	00003517          	auipc	a0,0x3
    80002d9c:	2e050513          	addi	a0,a0,736 # 80006078 <CONSOLE_STATUS+0x68>
    80002da0:	00000097          	auipc	ra,0x0
    80002da4:	128080e7          	jalr	296(ra) # 80002ec8 <_Z11printStringPKc>
    finishedA = true;
    80002da8:	00100793          	li	a5,1
    80002dac:	00004717          	auipc	a4,0x4
    80002db0:	68f705a3          	sb	a5,1675(a4) # 80007437 <_ZL9finishedA>
}
    80002db4:	01813083          	ld	ra,24(sp)
    80002db8:	01013403          	ld	s0,16(sp)
    80002dbc:	00813483          	ld	s1,8(sp)
    80002dc0:	00013903          	ld	s2,0(sp)
    80002dc4:	02010113          	addi	sp,sp,32
    80002dc8:	00008067          	ret

0000000080002dcc <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80002dcc:	fd010113          	addi	sp,sp,-48
    80002dd0:	02113423          	sd	ra,40(sp)
    80002dd4:	02813023          	sd	s0,32(sp)
    80002dd8:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80002ddc:	00000613          	li	a2,0
    80002de0:	00000597          	auipc	a1,0x0
    80002de4:	f2058593          	addi	a1,a1,-224 # 80002d00 <_ZL11workerBodyAPv>
    80002de8:	fd040513          	addi	a0,s0,-48
    80002dec:	ffffe097          	auipc	ra,0xffffe
    80002df0:	518080e7          	jalr	1304(ra) # 80001304 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadA created\n");
    80002df4:	00003517          	auipc	a0,0x3
    80002df8:	31450513          	addi	a0,a0,788 # 80006108 <CONSOLE_STATUS+0xf8>
    80002dfc:	00000097          	auipc	ra,0x0
    80002e00:	0cc080e7          	jalr	204(ra) # 80002ec8 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80002e04:	00000613          	li	a2,0
    80002e08:	00000597          	auipc	a1,0x0
    80002e0c:	e2458593          	addi	a1,a1,-476 # 80002c2c <_ZL11workerBodyBPv>
    80002e10:	fd840513          	addi	a0,s0,-40
    80002e14:	ffffe097          	auipc	ra,0xffffe
    80002e18:	4f0080e7          	jalr	1264(ra) # 80001304 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadB created\n");
    80002e1c:	00003517          	auipc	a0,0x3
    80002e20:	30450513          	addi	a0,a0,772 # 80006120 <CONSOLE_STATUS+0x110>
    80002e24:	00000097          	auipc	ra,0x0
    80002e28:	0a4080e7          	jalr	164(ra) # 80002ec8 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80002e2c:	00000613          	li	a2,0
    80002e30:	00000597          	auipc	a1,0x0
    80002e34:	c7c58593          	addi	a1,a1,-900 # 80002aac <_ZL11workerBodyCPv>
    80002e38:	fe040513          	addi	a0,s0,-32
    80002e3c:	ffffe097          	auipc	ra,0xffffe
    80002e40:	4c8080e7          	jalr	1224(ra) # 80001304 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadC created\n");
    80002e44:	00003517          	auipc	a0,0x3
    80002e48:	2f450513          	addi	a0,a0,756 # 80006138 <CONSOLE_STATUS+0x128>
    80002e4c:	00000097          	auipc	ra,0x0
    80002e50:	07c080e7          	jalr	124(ra) # 80002ec8 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80002e54:	00000613          	li	a2,0
    80002e58:	00000597          	auipc	a1,0x0
    80002e5c:	b0c58593          	addi	a1,a1,-1268 # 80002964 <_ZL11workerBodyDPv>
    80002e60:	fe840513          	addi	a0,s0,-24
    80002e64:	ffffe097          	auipc	ra,0xffffe
    80002e68:	4a0080e7          	jalr	1184(ra) # 80001304 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadD created\n");
    80002e6c:	00003517          	auipc	a0,0x3
    80002e70:	2e450513          	addi	a0,a0,740 # 80006150 <CONSOLE_STATUS+0x140>
    80002e74:	00000097          	auipc	ra,0x0
    80002e78:	054080e7          	jalr	84(ra) # 80002ec8 <_Z11printStringPKc>
    80002e7c:	00c0006f          	j	80002e88 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80002e80:	ffffe097          	auipc	ra,0xffffe
    80002e84:	4f4080e7          	jalr	1268(ra) # 80001374 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80002e88:	00004797          	auipc	a5,0x4
    80002e8c:	5af7c783          	lbu	a5,1455(a5) # 80007437 <_ZL9finishedA>
    80002e90:	fe0788e3          	beqz	a5,80002e80 <_Z18Threads_C_API_testv+0xb4>
    80002e94:	00004797          	auipc	a5,0x4
    80002e98:	5a27c783          	lbu	a5,1442(a5) # 80007436 <_ZL9finishedB>
    80002e9c:	fe0782e3          	beqz	a5,80002e80 <_Z18Threads_C_API_testv+0xb4>
    80002ea0:	00004797          	auipc	a5,0x4
    80002ea4:	5957c783          	lbu	a5,1429(a5) # 80007435 <_ZL9finishedC>
    80002ea8:	fc078ce3          	beqz	a5,80002e80 <_Z18Threads_C_API_testv+0xb4>
    80002eac:	00004797          	auipc	a5,0x4
    80002eb0:	5887c783          	lbu	a5,1416(a5) # 80007434 <_ZL9finishedD>
    80002eb4:	fc0786e3          	beqz	a5,80002e80 <_Z18Threads_C_API_testv+0xb4>
    }

}
    80002eb8:	02813083          	ld	ra,40(sp)
    80002ebc:	02013403          	ld	s0,32(sp)
    80002ec0:	03010113          	addi	sp,sp,48
    80002ec4:	00008067          	ret

0000000080002ec8 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80002ec8:	fe010113          	addi	sp,sp,-32
    80002ecc:	00113c23          	sd	ra,24(sp)
    80002ed0:	00813823          	sd	s0,16(sp)
    80002ed4:	00913423          	sd	s1,8(sp)
    80002ed8:	02010413          	addi	s0,sp,32
    80002edc:	00050493          	mv	s1,a0
    LOCK();
    80002ee0:	00100613          	li	a2,1
    80002ee4:	00000593          	li	a1,0
    80002ee8:	00004517          	auipc	a0,0x4
    80002eec:	55050513          	addi	a0,a0,1360 # 80007438 <lockPrint>
    80002ef0:	ffffe097          	auipc	ra,0xffffe
    80002ef4:	35c080e7          	jalr	860(ra) # 8000124c <copy_and_swap>
    80002ef8:	00050863          	beqz	a0,80002f08 <_Z11printStringPKc+0x40>
    80002efc:	ffffe097          	auipc	ra,0xffffe
    80002f00:	478080e7          	jalr	1144(ra) # 80001374 <_Z15thread_dispatchv>
    80002f04:	fddff06f          	j	80002ee0 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80002f08:	0004c503          	lbu	a0,0(s1)
    80002f0c:	00050a63          	beqz	a0,80002f20 <_Z11printStringPKc+0x58>
    {
        putc(*string);
    80002f10:	fffff097          	auipc	ra,0xfffff
    80002f14:	ff4080e7          	jalr	-12(ra) # 80001f04 <_Z4putcc>
        string++;
    80002f18:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80002f1c:	fedff06f          	j	80002f08 <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    80002f20:	00000613          	li	a2,0
    80002f24:	00100593          	li	a1,1
    80002f28:	00004517          	auipc	a0,0x4
    80002f2c:	51050513          	addi	a0,a0,1296 # 80007438 <lockPrint>
    80002f30:	ffffe097          	auipc	ra,0xffffe
    80002f34:	31c080e7          	jalr	796(ra) # 8000124c <copy_and_swap>
    80002f38:	fe0514e3          	bnez	a0,80002f20 <_Z11printStringPKc+0x58>
}
    80002f3c:	01813083          	ld	ra,24(sp)
    80002f40:	01013403          	ld	s0,16(sp)
    80002f44:	00813483          	ld	s1,8(sp)
    80002f48:	02010113          	addi	sp,sp,32
    80002f4c:	00008067          	ret

0000000080002f50 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80002f50:	fd010113          	addi	sp,sp,-48
    80002f54:	02113423          	sd	ra,40(sp)
    80002f58:	02813023          	sd	s0,32(sp)
    80002f5c:	00913c23          	sd	s1,24(sp)
    80002f60:	01213823          	sd	s2,16(sp)
    80002f64:	01313423          	sd	s3,8(sp)
    80002f68:	01413023          	sd	s4,0(sp)
    80002f6c:	03010413          	addi	s0,sp,48
    80002f70:	00050993          	mv	s3,a0
    80002f74:	00058a13          	mv	s4,a1
    LOCK();
    80002f78:	00100613          	li	a2,1
    80002f7c:	00000593          	li	a1,0
    80002f80:	00004517          	auipc	a0,0x4
    80002f84:	4b850513          	addi	a0,a0,1208 # 80007438 <lockPrint>
    80002f88:	ffffe097          	auipc	ra,0xffffe
    80002f8c:	2c4080e7          	jalr	708(ra) # 8000124c <copy_and_swap>
    80002f90:	00050863          	beqz	a0,80002fa0 <_Z9getStringPci+0x50>
    80002f94:	ffffe097          	auipc	ra,0xffffe
    80002f98:	3e0080e7          	jalr	992(ra) # 80001374 <_Z15thread_dispatchv>
    80002f9c:	fddff06f          	j	80002f78 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80002fa0:	00000913          	li	s2,0
    80002fa4:	00090493          	mv	s1,s2
    80002fa8:	0019091b          	addiw	s2,s2,1
    80002fac:	03495a63          	bge	s2,s4,80002fe0 <_Z9getStringPci+0x90>
        cc = getc();
    80002fb0:	fffff097          	auipc	ra,0xfffff
    80002fb4:	f7c080e7          	jalr	-132(ra) # 80001f2c <_Z4getcv>
        if(cc < 1)
    80002fb8:	02050463          	beqz	a0,80002fe0 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    80002fbc:	009984b3          	add	s1,s3,s1
    80002fc0:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80002fc4:	00a00793          	li	a5,10
    80002fc8:	00f50a63          	beq	a0,a5,80002fdc <_Z9getStringPci+0x8c>
    80002fcc:	00d00793          	li	a5,13
    80002fd0:	fcf51ae3          	bne	a0,a5,80002fa4 <_Z9getStringPci+0x54>
        buf[i++] = c;
    80002fd4:	00090493          	mv	s1,s2
    80002fd8:	0080006f          	j	80002fe0 <_Z9getStringPci+0x90>
    80002fdc:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80002fe0:	009984b3          	add	s1,s3,s1
    80002fe4:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80002fe8:	00000613          	li	a2,0
    80002fec:	00100593          	li	a1,1
    80002ff0:	00004517          	auipc	a0,0x4
    80002ff4:	44850513          	addi	a0,a0,1096 # 80007438 <lockPrint>
    80002ff8:	ffffe097          	auipc	ra,0xffffe
    80002ffc:	254080e7          	jalr	596(ra) # 8000124c <copy_and_swap>
    80003000:	fe0514e3          	bnez	a0,80002fe8 <_Z9getStringPci+0x98>
    return buf;
}
    80003004:	00098513          	mv	a0,s3
    80003008:	02813083          	ld	ra,40(sp)
    8000300c:	02013403          	ld	s0,32(sp)
    80003010:	01813483          	ld	s1,24(sp)
    80003014:	01013903          	ld	s2,16(sp)
    80003018:	00813983          	ld	s3,8(sp)
    8000301c:	00013a03          	ld	s4,0(sp)
    80003020:	03010113          	addi	sp,sp,48
    80003024:	00008067          	ret

0000000080003028 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80003028:	ff010113          	addi	sp,sp,-16
    8000302c:	00813423          	sd	s0,8(sp)
    80003030:	01010413          	addi	s0,sp,16
    80003034:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80003038:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    8000303c:	0006c603          	lbu	a2,0(a3)
    80003040:	fd06071b          	addiw	a4,a2,-48
    80003044:	0ff77713          	andi	a4,a4,255
    80003048:	00900793          	li	a5,9
    8000304c:	02e7e063          	bltu	a5,a4,8000306c <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80003050:	0025179b          	slliw	a5,a0,0x2
    80003054:	00a787bb          	addw	a5,a5,a0
    80003058:	0017979b          	slliw	a5,a5,0x1
    8000305c:	00168693          	addi	a3,a3,1
    80003060:	00c787bb          	addw	a5,a5,a2
    80003064:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80003068:	fd5ff06f          	j	8000303c <_Z11stringToIntPKc+0x14>
    return n;
}
    8000306c:	00813403          	ld	s0,8(sp)
    80003070:	01010113          	addi	sp,sp,16
    80003074:	00008067          	ret

0000000080003078 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80003078:	fc010113          	addi	sp,sp,-64
    8000307c:	02113c23          	sd	ra,56(sp)
    80003080:	02813823          	sd	s0,48(sp)
    80003084:	02913423          	sd	s1,40(sp)
    80003088:	03213023          	sd	s2,32(sp)
    8000308c:	01313c23          	sd	s3,24(sp)
    80003090:	04010413          	addi	s0,sp,64
    80003094:	00050493          	mv	s1,a0
    80003098:	00058913          	mv	s2,a1
    8000309c:	00060993          	mv	s3,a2
    LOCK();
    800030a0:	00100613          	li	a2,1
    800030a4:	00000593          	li	a1,0
    800030a8:	00004517          	auipc	a0,0x4
    800030ac:	39050513          	addi	a0,a0,912 # 80007438 <lockPrint>
    800030b0:	ffffe097          	auipc	ra,0xffffe
    800030b4:	19c080e7          	jalr	412(ra) # 8000124c <copy_and_swap>
    800030b8:	00050863          	beqz	a0,800030c8 <_Z8printIntiii+0x50>
    800030bc:	ffffe097          	auipc	ra,0xffffe
    800030c0:	2b8080e7          	jalr	696(ra) # 80001374 <_Z15thread_dispatchv>
    800030c4:	fddff06f          	j	800030a0 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    800030c8:	00098463          	beqz	s3,800030d0 <_Z8printIntiii+0x58>
    800030cc:	0804c463          	bltz	s1,80003154 <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    800030d0:	0004851b          	sext.w	a0,s1
    neg = 0;
    800030d4:	00000593          	li	a1,0
    }

    i = 0;
    800030d8:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    800030dc:	0009079b          	sext.w	a5,s2
    800030e0:	0325773b          	remuw	a4,a0,s2
    800030e4:	00048613          	mv	a2,s1
    800030e8:	0014849b          	addiw	s1,s1,1
    800030ec:	02071693          	slli	a3,a4,0x20
    800030f0:	0206d693          	srli	a3,a3,0x20
    800030f4:	00004717          	auipc	a4,0x4
    800030f8:	25c70713          	addi	a4,a4,604 # 80007350 <digits>
    800030fc:	00d70733          	add	a4,a4,a3
    80003100:	00074683          	lbu	a3,0(a4)
    80003104:	fd040713          	addi	a4,s0,-48
    80003108:	00c70733          	add	a4,a4,a2
    8000310c:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80003110:	0005071b          	sext.w	a4,a0
    80003114:	0325553b          	divuw	a0,a0,s2
    80003118:	fcf772e3          	bgeu	a4,a5,800030dc <_Z8printIntiii+0x64>
    if(neg)
    8000311c:	00058c63          	beqz	a1,80003134 <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    80003120:	fd040793          	addi	a5,s0,-48
    80003124:	009784b3          	add	s1,a5,s1
    80003128:	02d00793          	li	a5,45
    8000312c:	fef48823          	sb	a5,-16(s1)
    80003130:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80003134:	fff4849b          	addiw	s1,s1,-1
    80003138:	0204c463          	bltz	s1,80003160 <_Z8printIntiii+0xe8>
        putc(buf[i]);
    8000313c:	fd040793          	addi	a5,s0,-48
    80003140:	009787b3          	add	a5,a5,s1
    80003144:	ff07c503          	lbu	a0,-16(a5)
    80003148:	fffff097          	auipc	ra,0xfffff
    8000314c:	dbc080e7          	jalr	-580(ra) # 80001f04 <_Z4putcc>
    80003150:	fe5ff06f          	j	80003134 <_Z8printIntiii+0xbc>
        x = -xx;
    80003154:	4090053b          	negw	a0,s1
        neg = 1;
    80003158:	00100593          	li	a1,1
        x = -xx;
    8000315c:	f7dff06f          	j	800030d8 <_Z8printIntiii+0x60>

    UNLOCK();
    80003160:	00000613          	li	a2,0
    80003164:	00100593          	li	a1,1
    80003168:	00004517          	auipc	a0,0x4
    8000316c:	2d050513          	addi	a0,a0,720 # 80007438 <lockPrint>
    80003170:	ffffe097          	auipc	ra,0xffffe
    80003174:	0dc080e7          	jalr	220(ra) # 8000124c <copy_and_swap>
    80003178:	fe0514e3          	bnez	a0,80003160 <_Z8printIntiii+0xe8>
    8000317c:	03813083          	ld	ra,56(sp)
    80003180:	03013403          	ld	s0,48(sp)
    80003184:	02813483          	ld	s1,40(sp)
    80003188:	02013903          	ld	s2,32(sp)
    8000318c:	01813983          	ld	s3,24(sp)
    80003190:	04010113          	addi	sp,sp,64
    80003194:	00008067          	ret

0000000080003198 <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    80003198:	fe010113          	addi	sp,sp,-32
    8000319c:	00113c23          	sd	ra,24(sp)
    800031a0:	00813823          	sd	s0,16(sp)
    800031a4:	00913423          	sd	s1,8(sp)
    800031a8:	01213023          	sd	s2,0(sp)
    800031ac:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    800031b0:	00003517          	auipc	a0,0x3
    800031b4:	fb850513          	addi	a0,a0,-72 # 80006168 <CONSOLE_STATUS+0x158>
    800031b8:	00000097          	auipc	ra,0x0
    800031bc:	d10080e7          	jalr	-752(ra) # 80002ec8 <_Z11printStringPKc>
    int test = getc() - '0';
    800031c0:	fffff097          	auipc	ra,0xfffff
    800031c4:	d6c080e7          	jalr	-660(ra) # 80001f2c <_Z4getcv>
    800031c8:	0005091b          	sext.w	s2,a0
    800031cc:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    800031d0:	fffff097          	auipc	ra,0xfffff
    800031d4:	d5c080e7          	jalr	-676(ra) # 80001f2c <_Z4getcv>
            printString("Nije navedeno da je zadatak 2 implementiran\n");
            return;
        }
    }

    if (test >= 3 && test <= 4) {
    800031d8:	fcd9071b          	addiw	a4,s2,-51
    800031dc:	00100793          	li	a5,1
    800031e0:	04e7f663          	bgeu	a5,a4,8000322c <_Z8userMainv+0x94>
            printString("Nije navedeno da je zadatak 3 implementiran\n");
            return;
        }
    }

    if (test >= 5 && test <= 6) {
    800031e4:	fcb9091b          	addiw	s2,s2,-53
    800031e8:	00100793          	li	a5,1
    800031ec:	0727f463          	bgeu	a5,s2,80003254 <_Z8userMainv+0xbc>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    800031f0:	00600793          	li	a5,6
    800031f4:	0697ca63          	blt	a5,s1,80003268 <_Z8userMainv+0xd0>
    800031f8:	00300793          	li	a5,3
    800031fc:	04f4d063          	bge	s1,a5,8000323c <_Z8userMainv+0xa4>
    80003200:	00100793          	li	a5,1
    80003204:	08f48c63          	beq	s1,a5,8000329c <_Z8userMainv+0x104>
    80003208:	00200793          	li	a5,2
    8000320c:	0af49663          	bne	s1,a5,800032b8 <_Z8userMainv+0x120>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
#endif
            break;
        case 2:
#if LEVEL_2_IMPLEMENTED == 1
            Threads_CPP_API_test();
    80003210:	fffff097          	auipc	ra,0xfffff
    80003214:	220080e7          	jalr	544(ra) # 80002430 <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    80003218:	00003517          	auipc	a0,0x3
    8000321c:	01050513          	addi	a0,a0,16 # 80006228 <CONSOLE_STATUS+0x218>
    80003220:	00000097          	auipc	ra,0x0
    80003224:	ca8080e7          	jalr	-856(ra) # 80002ec8 <_Z11printStringPKc>
#endif
            break;
    80003228:	0140006f          	j	8000323c <_Z8userMainv+0xa4>
            printString("Nije navedeno da je zadatak 3 implementiran\n");
    8000322c:	00003517          	auipc	a0,0x3
    80003230:	f5c50513          	addi	a0,a0,-164 # 80006188 <CONSOLE_STATUS+0x178>
    80003234:	00000097          	auipc	ra,0x0
    80003238:	c94080e7          	jalr	-876(ra) # 80002ec8 <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    8000323c:	01813083          	ld	ra,24(sp)
    80003240:	01013403          	ld	s0,16(sp)
    80003244:	00813483          	ld	s1,8(sp)
    80003248:	00013903          	ld	s2,0(sp)
    8000324c:	02010113          	addi	sp,sp,32
    80003250:	00008067          	ret
            printString("Nije navedeno da je zadatak 4 implementiran\n");
    80003254:	00003517          	auipc	a0,0x3
    80003258:	f6450513          	addi	a0,a0,-156 # 800061b8 <CONSOLE_STATUS+0x1a8>
    8000325c:	00000097          	auipc	ra,0x0
    80003260:	c6c080e7          	jalr	-916(ra) # 80002ec8 <_Z11printStringPKc>
            return;
    80003264:	fd9ff06f          	j	8000323c <_Z8userMainv+0xa4>
    switch (test) {
    80003268:	00700793          	li	a5,7
    8000326c:	04f49663          	bne	s1,a5,800032b8 <_Z8userMainv+0x120>
            System_Mode_test();
    80003270:	00000097          	auipc	ra,0x0
    80003274:	548080e7          	jalr	1352(ra) # 800037b8 <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    80003278:	00003517          	auipc	a0,0x3
    8000327c:	ff050513          	addi	a0,a0,-16 # 80006268 <CONSOLE_STATUS+0x258>
    80003280:	00000097          	auipc	ra,0x0
    80003284:	c48080e7          	jalr	-952(ra) # 80002ec8 <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    80003288:	00003517          	auipc	a0,0x3
    8000328c:	00050513          	mv	a0,a0
    80003290:	00000097          	auipc	ra,0x0
    80003294:	c38080e7          	jalr	-968(ra) # 80002ec8 <_Z11printStringPKc>
            break;
    80003298:	fa5ff06f          	j	8000323c <_Z8userMainv+0xa4>
            Threads_C_API_test();
    8000329c:	00000097          	auipc	ra,0x0
    800032a0:	b30080e7          	jalr	-1232(ra) # 80002dcc <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    800032a4:	00003517          	auipc	a0,0x3
    800032a8:	f4450513          	addi	a0,a0,-188 # 800061e8 <CONSOLE_STATUS+0x1d8>
    800032ac:	00000097          	auipc	ra,0x0
    800032b0:	c1c080e7          	jalr	-996(ra) # 80002ec8 <_Z11printStringPKc>
            break;
    800032b4:	f89ff06f          	j	8000323c <_Z8userMainv+0xa4>
            printString("Niste uneli odgovarajuci broj za test\n");
    800032b8:	00003517          	auipc	a0,0x3
    800032bc:	02850513          	addi	a0,a0,40 # 800062e0 <CONSOLE_STATUS+0x2d0>
    800032c0:	00000097          	auipc	ra,0x0
    800032c4:	c08080e7          	jalr	-1016(ra) # 80002ec8 <_Z11printStringPKc>
    800032c8:	f75ff06f          	j	8000323c <_Z8userMainv+0xa4>

00000000800032cc <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800032cc:	fe010113          	addi	sp,sp,-32
    800032d0:	00113c23          	sd	ra,24(sp)
    800032d4:	00813823          	sd	s0,16(sp)
    800032d8:	00913423          	sd	s1,8(sp)
    800032dc:	01213023          	sd	s2,0(sp)
    800032e0:	02010413          	addi	s0,sp,32
    800032e4:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800032e8:	00100793          	li	a5,1
    800032ec:	02a7f863          	bgeu	a5,a0,8000331c <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800032f0:	00a00793          	li	a5,10
    800032f4:	02f577b3          	remu	a5,a0,a5
    800032f8:	02078e63          	beqz	a5,80003334 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800032fc:	fff48513          	addi	a0,s1,-1
    80003300:	00000097          	auipc	ra,0x0
    80003304:	fcc080e7          	jalr	-52(ra) # 800032cc <_ZL9fibonaccim>
    80003308:	00050913          	mv	s2,a0
    8000330c:	ffe48513          	addi	a0,s1,-2
    80003310:	00000097          	auipc	ra,0x0
    80003314:	fbc080e7          	jalr	-68(ra) # 800032cc <_ZL9fibonaccim>
    80003318:	00a90533          	add	a0,s2,a0
}
    8000331c:	01813083          	ld	ra,24(sp)
    80003320:	01013403          	ld	s0,16(sp)
    80003324:	00813483          	ld	s1,8(sp)
    80003328:	00013903          	ld	s2,0(sp)
    8000332c:	02010113          	addi	sp,sp,32
    80003330:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80003334:	ffffe097          	auipc	ra,0xffffe
    80003338:	040080e7          	jalr	64(ra) # 80001374 <_Z15thread_dispatchv>
    8000333c:	fc1ff06f          	j	800032fc <_ZL9fibonaccim+0x30>

0000000080003340 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80003340:	fe010113          	addi	sp,sp,-32
    80003344:	00113c23          	sd	ra,24(sp)
    80003348:	00813823          	sd	s0,16(sp)
    8000334c:	00913423          	sd	s1,8(sp)
    80003350:	01213023          	sd	s2,0(sp)
    80003354:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80003358:	00a00493          	li	s1,10
    8000335c:	0400006f          	j	8000339c <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003360:	00003517          	auipc	a0,0x3
    80003364:	d7050513          	addi	a0,a0,-656 # 800060d0 <CONSOLE_STATUS+0xc0>
    80003368:	00000097          	auipc	ra,0x0
    8000336c:	b60080e7          	jalr	-1184(ra) # 80002ec8 <_Z11printStringPKc>
    80003370:	00000613          	li	a2,0
    80003374:	00a00593          	li	a1,10
    80003378:	00048513          	mv	a0,s1
    8000337c:	00000097          	auipc	ra,0x0
    80003380:	cfc080e7          	jalr	-772(ra) # 80003078 <_Z8printIntiii>
    80003384:	00003517          	auipc	a0,0x3
    80003388:	09450513          	addi	a0,a0,148 # 80006418 <CONSOLE_STATUS+0x408>
    8000338c:	00000097          	auipc	ra,0x0
    80003390:	b3c080e7          	jalr	-1220(ra) # 80002ec8 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80003394:	0014849b          	addiw	s1,s1,1
    80003398:	0ff4f493          	andi	s1,s1,255
    8000339c:	00c00793          	li	a5,12
    800033a0:	fc97f0e3          	bgeu	a5,s1,80003360 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    800033a4:	00003517          	auipc	a0,0x3
    800033a8:	d3450513          	addi	a0,a0,-716 # 800060d8 <CONSOLE_STATUS+0xc8>
    800033ac:	00000097          	auipc	ra,0x0
    800033b0:	b1c080e7          	jalr	-1252(ra) # 80002ec8 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800033b4:	00500313          	li	t1,5
    thread_dispatch();
    800033b8:	ffffe097          	auipc	ra,0xffffe
    800033bc:	fbc080e7          	jalr	-68(ra) # 80001374 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    800033c0:	01000513          	li	a0,16
    800033c4:	00000097          	auipc	ra,0x0
    800033c8:	f08080e7          	jalr	-248(ra) # 800032cc <_ZL9fibonaccim>
    800033cc:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800033d0:	00003517          	auipc	a0,0x3
    800033d4:	d1850513          	addi	a0,a0,-744 # 800060e8 <CONSOLE_STATUS+0xd8>
    800033d8:	00000097          	auipc	ra,0x0
    800033dc:	af0080e7          	jalr	-1296(ra) # 80002ec8 <_Z11printStringPKc>
    800033e0:	00000613          	li	a2,0
    800033e4:	00a00593          	li	a1,10
    800033e8:	0009051b          	sext.w	a0,s2
    800033ec:	00000097          	auipc	ra,0x0
    800033f0:	c8c080e7          	jalr	-884(ra) # 80003078 <_Z8printIntiii>
    800033f4:	00003517          	auipc	a0,0x3
    800033f8:	02450513          	addi	a0,a0,36 # 80006418 <CONSOLE_STATUS+0x408>
    800033fc:	00000097          	auipc	ra,0x0
    80003400:	acc080e7          	jalr	-1332(ra) # 80002ec8 <_Z11printStringPKc>
    80003404:	0400006f          	j	80003444 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003408:	00003517          	auipc	a0,0x3
    8000340c:	cc850513          	addi	a0,a0,-824 # 800060d0 <CONSOLE_STATUS+0xc0>
    80003410:	00000097          	auipc	ra,0x0
    80003414:	ab8080e7          	jalr	-1352(ra) # 80002ec8 <_Z11printStringPKc>
    80003418:	00000613          	li	a2,0
    8000341c:	00a00593          	li	a1,10
    80003420:	00048513          	mv	a0,s1
    80003424:	00000097          	auipc	ra,0x0
    80003428:	c54080e7          	jalr	-940(ra) # 80003078 <_Z8printIntiii>
    8000342c:	00003517          	auipc	a0,0x3
    80003430:	fec50513          	addi	a0,a0,-20 # 80006418 <CONSOLE_STATUS+0x408>
    80003434:	00000097          	auipc	ra,0x0
    80003438:	a94080e7          	jalr	-1388(ra) # 80002ec8 <_Z11printStringPKc>
    for (; i < 16; i++) {
    8000343c:	0014849b          	addiw	s1,s1,1
    80003440:	0ff4f493          	andi	s1,s1,255
    80003444:	00f00793          	li	a5,15
    80003448:	fc97f0e3          	bgeu	a5,s1,80003408 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    8000344c:	00003517          	auipc	a0,0x3
    80003450:	cac50513          	addi	a0,a0,-852 # 800060f8 <CONSOLE_STATUS+0xe8>
    80003454:	00000097          	auipc	ra,0x0
    80003458:	a74080e7          	jalr	-1420(ra) # 80002ec8 <_Z11printStringPKc>
    finishedD = true;
    8000345c:	00100793          	li	a5,1
    80003460:	00004717          	auipc	a4,0x4
    80003464:	fef70023          	sb	a5,-32(a4) # 80007440 <_ZL9finishedD>
    thread_dispatch();
    80003468:	ffffe097          	auipc	ra,0xffffe
    8000346c:	f0c080e7          	jalr	-244(ra) # 80001374 <_Z15thread_dispatchv>
}
    80003470:	01813083          	ld	ra,24(sp)
    80003474:	01013403          	ld	s0,16(sp)
    80003478:	00813483          	ld	s1,8(sp)
    8000347c:	00013903          	ld	s2,0(sp)
    80003480:	02010113          	addi	sp,sp,32
    80003484:	00008067          	ret

0000000080003488 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80003488:	fe010113          	addi	sp,sp,-32
    8000348c:	00113c23          	sd	ra,24(sp)
    80003490:	00813823          	sd	s0,16(sp)
    80003494:	00913423          	sd	s1,8(sp)
    80003498:	01213023          	sd	s2,0(sp)
    8000349c:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800034a0:	00000493          	li	s1,0
    800034a4:	0400006f          	j	800034e4 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    800034a8:	00003517          	auipc	a0,0x3
    800034ac:	bf850513          	addi	a0,a0,-1032 # 800060a0 <CONSOLE_STATUS+0x90>
    800034b0:	00000097          	auipc	ra,0x0
    800034b4:	a18080e7          	jalr	-1512(ra) # 80002ec8 <_Z11printStringPKc>
    800034b8:	00000613          	li	a2,0
    800034bc:	00a00593          	li	a1,10
    800034c0:	00048513          	mv	a0,s1
    800034c4:	00000097          	auipc	ra,0x0
    800034c8:	bb4080e7          	jalr	-1100(ra) # 80003078 <_Z8printIntiii>
    800034cc:	00003517          	auipc	a0,0x3
    800034d0:	f4c50513          	addi	a0,a0,-180 # 80006418 <CONSOLE_STATUS+0x408>
    800034d4:	00000097          	auipc	ra,0x0
    800034d8:	9f4080e7          	jalr	-1548(ra) # 80002ec8 <_Z11printStringPKc>
    for (; i < 3; i++) {
    800034dc:	0014849b          	addiw	s1,s1,1
    800034e0:	0ff4f493          	andi	s1,s1,255
    800034e4:	00200793          	li	a5,2
    800034e8:	fc97f0e3          	bgeu	a5,s1,800034a8 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    800034ec:	00003517          	auipc	a0,0x3
    800034f0:	bbc50513          	addi	a0,a0,-1092 # 800060a8 <CONSOLE_STATUS+0x98>
    800034f4:	00000097          	auipc	ra,0x0
    800034f8:	9d4080e7          	jalr	-1580(ra) # 80002ec8 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800034fc:	00700313          	li	t1,7
    thread_dispatch();
    80003500:	ffffe097          	auipc	ra,0xffffe
    80003504:	e74080e7          	jalr	-396(ra) # 80001374 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80003508:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    8000350c:	00003517          	auipc	a0,0x3
    80003510:	bac50513          	addi	a0,a0,-1108 # 800060b8 <CONSOLE_STATUS+0xa8>
    80003514:	00000097          	auipc	ra,0x0
    80003518:	9b4080e7          	jalr	-1612(ra) # 80002ec8 <_Z11printStringPKc>
    8000351c:	00000613          	li	a2,0
    80003520:	00a00593          	li	a1,10
    80003524:	0009051b          	sext.w	a0,s2
    80003528:	00000097          	auipc	ra,0x0
    8000352c:	b50080e7          	jalr	-1200(ra) # 80003078 <_Z8printIntiii>
    80003530:	00003517          	auipc	a0,0x3
    80003534:	ee850513          	addi	a0,a0,-280 # 80006418 <CONSOLE_STATUS+0x408>
    80003538:	00000097          	auipc	ra,0x0
    8000353c:	990080e7          	jalr	-1648(ra) # 80002ec8 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80003540:	00c00513          	li	a0,12
    80003544:	00000097          	auipc	ra,0x0
    80003548:	d88080e7          	jalr	-632(ra) # 800032cc <_ZL9fibonaccim>
    8000354c:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80003550:	00003517          	auipc	a0,0x3
    80003554:	b7050513          	addi	a0,a0,-1168 # 800060c0 <CONSOLE_STATUS+0xb0>
    80003558:	00000097          	auipc	ra,0x0
    8000355c:	970080e7          	jalr	-1680(ra) # 80002ec8 <_Z11printStringPKc>
    80003560:	00000613          	li	a2,0
    80003564:	00a00593          	li	a1,10
    80003568:	0009051b          	sext.w	a0,s2
    8000356c:	00000097          	auipc	ra,0x0
    80003570:	b0c080e7          	jalr	-1268(ra) # 80003078 <_Z8printIntiii>
    80003574:	00003517          	auipc	a0,0x3
    80003578:	ea450513          	addi	a0,a0,-348 # 80006418 <CONSOLE_STATUS+0x408>
    8000357c:	00000097          	auipc	ra,0x0
    80003580:	94c080e7          	jalr	-1716(ra) # 80002ec8 <_Z11printStringPKc>
    80003584:	0400006f          	j	800035c4 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80003588:	00003517          	auipc	a0,0x3
    8000358c:	b1850513          	addi	a0,a0,-1256 # 800060a0 <CONSOLE_STATUS+0x90>
    80003590:	00000097          	auipc	ra,0x0
    80003594:	938080e7          	jalr	-1736(ra) # 80002ec8 <_Z11printStringPKc>
    80003598:	00000613          	li	a2,0
    8000359c:	00a00593          	li	a1,10
    800035a0:	00048513          	mv	a0,s1
    800035a4:	00000097          	auipc	ra,0x0
    800035a8:	ad4080e7          	jalr	-1324(ra) # 80003078 <_Z8printIntiii>
    800035ac:	00003517          	auipc	a0,0x3
    800035b0:	e6c50513          	addi	a0,a0,-404 # 80006418 <CONSOLE_STATUS+0x408>
    800035b4:	00000097          	auipc	ra,0x0
    800035b8:	914080e7          	jalr	-1772(ra) # 80002ec8 <_Z11printStringPKc>
    for (; i < 6; i++) {
    800035bc:	0014849b          	addiw	s1,s1,1
    800035c0:	0ff4f493          	andi	s1,s1,255
    800035c4:	00500793          	li	a5,5
    800035c8:	fc97f0e3          	bgeu	a5,s1,80003588 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    800035cc:	00003517          	auipc	a0,0x3
    800035d0:	aac50513          	addi	a0,a0,-1364 # 80006078 <CONSOLE_STATUS+0x68>
    800035d4:	00000097          	auipc	ra,0x0
    800035d8:	8f4080e7          	jalr	-1804(ra) # 80002ec8 <_Z11printStringPKc>
    finishedC = true;
    800035dc:	00100793          	li	a5,1
    800035e0:	00004717          	auipc	a4,0x4
    800035e4:	e6f700a3          	sb	a5,-415(a4) # 80007441 <_ZL9finishedC>
    thread_dispatch();
    800035e8:	ffffe097          	auipc	ra,0xffffe
    800035ec:	d8c080e7          	jalr	-628(ra) # 80001374 <_Z15thread_dispatchv>
}
    800035f0:	01813083          	ld	ra,24(sp)
    800035f4:	01013403          	ld	s0,16(sp)
    800035f8:	00813483          	ld	s1,8(sp)
    800035fc:	00013903          	ld	s2,0(sp)
    80003600:	02010113          	addi	sp,sp,32
    80003604:	00008067          	ret

0000000080003608 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80003608:	fe010113          	addi	sp,sp,-32
    8000360c:	00113c23          	sd	ra,24(sp)
    80003610:	00813823          	sd	s0,16(sp)
    80003614:	00913423          	sd	s1,8(sp)
    80003618:	01213023          	sd	s2,0(sp)
    8000361c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80003620:	00000913          	li	s2,0
    80003624:	0400006f          	j	80003664 <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    80003628:	ffffe097          	auipc	ra,0xffffe
    8000362c:	d4c080e7          	jalr	-692(ra) # 80001374 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003630:	00148493          	addi	s1,s1,1
    80003634:	000027b7          	lui	a5,0x2
    80003638:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000363c:	0097ee63          	bltu	a5,s1,80003658 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003640:	00000713          	li	a4,0
    80003644:	000077b7          	lui	a5,0x7
    80003648:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000364c:	fce7eee3          	bltu	a5,a4,80003628 <_ZL11workerBodyBPv+0x20>
    80003650:	00170713          	addi	a4,a4,1
    80003654:	ff1ff06f          	j	80003644 <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    80003658:	00a00793          	li	a5,10
    8000365c:	04f90663          	beq	s2,a5,800036a8 <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    80003660:	00190913          	addi	s2,s2,1
    80003664:	00f00793          	li	a5,15
    80003668:	0527e463          	bltu	a5,s2,800036b0 <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    8000366c:	00003517          	auipc	a0,0x3
    80003670:	a1c50513          	addi	a0,a0,-1508 # 80006088 <CONSOLE_STATUS+0x78>
    80003674:	00000097          	auipc	ra,0x0
    80003678:	854080e7          	jalr	-1964(ra) # 80002ec8 <_Z11printStringPKc>
    8000367c:	00000613          	li	a2,0
    80003680:	00a00593          	li	a1,10
    80003684:	0009051b          	sext.w	a0,s2
    80003688:	00000097          	auipc	ra,0x0
    8000368c:	9f0080e7          	jalr	-1552(ra) # 80003078 <_Z8printIntiii>
    80003690:	00003517          	auipc	a0,0x3
    80003694:	d8850513          	addi	a0,a0,-632 # 80006418 <CONSOLE_STATUS+0x408>
    80003698:	00000097          	auipc	ra,0x0
    8000369c:	830080e7          	jalr	-2000(ra) # 80002ec8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800036a0:	00000493          	li	s1,0
    800036a4:	f91ff06f          	j	80003634 <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    800036a8:	14102ff3          	csrr	t6,sepc
    800036ac:	fb5ff06f          	j	80003660 <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    800036b0:	00003517          	auipc	a0,0x3
    800036b4:	9e050513          	addi	a0,a0,-1568 # 80006090 <CONSOLE_STATUS+0x80>
    800036b8:	00000097          	auipc	ra,0x0
    800036bc:	810080e7          	jalr	-2032(ra) # 80002ec8 <_Z11printStringPKc>
    finishedB = true;
    800036c0:	00100793          	li	a5,1
    800036c4:	00004717          	auipc	a4,0x4
    800036c8:	d6f70f23          	sb	a5,-642(a4) # 80007442 <_ZL9finishedB>
    thread_dispatch();
    800036cc:	ffffe097          	auipc	ra,0xffffe
    800036d0:	ca8080e7          	jalr	-856(ra) # 80001374 <_Z15thread_dispatchv>
}
    800036d4:	01813083          	ld	ra,24(sp)
    800036d8:	01013403          	ld	s0,16(sp)
    800036dc:	00813483          	ld	s1,8(sp)
    800036e0:	00013903          	ld	s2,0(sp)
    800036e4:	02010113          	addi	sp,sp,32
    800036e8:	00008067          	ret

00000000800036ec <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    800036ec:	fe010113          	addi	sp,sp,-32
    800036f0:	00113c23          	sd	ra,24(sp)
    800036f4:	00813823          	sd	s0,16(sp)
    800036f8:	00913423          	sd	s1,8(sp)
    800036fc:	01213023          	sd	s2,0(sp)
    80003700:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80003704:	00000913          	li	s2,0
    80003708:	0380006f          	j	80003740 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    8000370c:	ffffe097          	auipc	ra,0xffffe
    80003710:	c68080e7          	jalr	-920(ra) # 80001374 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003714:	00148493          	addi	s1,s1,1
    80003718:	000027b7          	lui	a5,0x2
    8000371c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003720:	0097ee63          	bltu	a5,s1,8000373c <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003724:	00000713          	li	a4,0
    80003728:	000077b7          	lui	a5,0x7
    8000372c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003730:	fce7eee3          	bltu	a5,a4,8000370c <_ZL11workerBodyAPv+0x20>
    80003734:	00170713          	addi	a4,a4,1
    80003738:	ff1ff06f          	j	80003728 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    8000373c:	00190913          	addi	s2,s2,1
    80003740:	00900793          	li	a5,9
    80003744:	0527e063          	bltu	a5,s2,80003784 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80003748:	00003517          	auipc	a0,0x3
    8000374c:	92850513          	addi	a0,a0,-1752 # 80006070 <CONSOLE_STATUS+0x60>
    80003750:	fffff097          	auipc	ra,0xfffff
    80003754:	778080e7          	jalr	1912(ra) # 80002ec8 <_Z11printStringPKc>
    80003758:	00000613          	li	a2,0
    8000375c:	00a00593          	li	a1,10
    80003760:	0009051b          	sext.w	a0,s2
    80003764:	00000097          	auipc	ra,0x0
    80003768:	914080e7          	jalr	-1772(ra) # 80003078 <_Z8printIntiii>
    8000376c:	00003517          	auipc	a0,0x3
    80003770:	cac50513          	addi	a0,a0,-852 # 80006418 <CONSOLE_STATUS+0x408>
    80003774:	fffff097          	auipc	ra,0xfffff
    80003778:	754080e7          	jalr	1876(ra) # 80002ec8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000377c:	00000493          	li	s1,0
    80003780:	f99ff06f          	j	80003718 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80003784:	00003517          	auipc	a0,0x3
    80003788:	8f450513          	addi	a0,a0,-1804 # 80006078 <CONSOLE_STATUS+0x68>
    8000378c:	fffff097          	auipc	ra,0xfffff
    80003790:	73c080e7          	jalr	1852(ra) # 80002ec8 <_Z11printStringPKc>
    finishedA = true;
    80003794:	00100793          	li	a5,1
    80003798:	00004717          	auipc	a4,0x4
    8000379c:	caf705a3          	sb	a5,-853(a4) # 80007443 <_ZL9finishedA>
}
    800037a0:	01813083          	ld	ra,24(sp)
    800037a4:	01013403          	ld	s0,16(sp)
    800037a8:	00813483          	ld	s1,8(sp)
    800037ac:	00013903          	ld	s2,0(sp)
    800037b0:	02010113          	addi	sp,sp,32
    800037b4:	00008067          	ret

00000000800037b8 <_Z16System_Mode_testv>:


void System_Mode_test() {
    800037b8:	fd010113          	addi	sp,sp,-48
    800037bc:	02113423          	sd	ra,40(sp)
    800037c0:	02813023          	sd	s0,32(sp)
    800037c4:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    800037c8:	00000613          	li	a2,0
    800037cc:	00000597          	auipc	a1,0x0
    800037d0:	f2058593          	addi	a1,a1,-224 # 800036ec <_ZL11workerBodyAPv>
    800037d4:	fd040513          	addi	a0,s0,-48
    800037d8:	ffffe097          	auipc	ra,0xffffe
    800037dc:	b2c080e7          	jalr	-1236(ra) # 80001304 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadA created\n");
    800037e0:	00003517          	auipc	a0,0x3
    800037e4:	92850513          	addi	a0,a0,-1752 # 80006108 <CONSOLE_STATUS+0xf8>
    800037e8:	fffff097          	auipc	ra,0xfffff
    800037ec:	6e0080e7          	jalr	1760(ra) # 80002ec8 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    800037f0:	00000613          	li	a2,0
    800037f4:	00000597          	auipc	a1,0x0
    800037f8:	e1458593          	addi	a1,a1,-492 # 80003608 <_ZL11workerBodyBPv>
    800037fc:	fd840513          	addi	a0,s0,-40
    80003800:	ffffe097          	auipc	ra,0xffffe
    80003804:	b04080e7          	jalr	-1276(ra) # 80001304 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadB created\n");
    80003808:	00003517          	auipc	a0,0x3
    8000380c:	91850513          	addi	a0,a0,-1768 # 80006120 <CONSOLE_STATUS+0x110>
    80003810:	fffff097          	auipc	ra,0xfffff
    80003814:	6b8080e7          	jalr	1720(ra) # 80002ec8 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80003818:	00000613          	li	a2,0
    8000381c:	00000597          	auipc	a1,0x0
    80003820:	c6c58593          	addi	a1,a1,-916 # 80003488 <_ZL11workerBodyCPv>
    80003824:	fe040513          	addi	a0,s0,-32
    80003828:	ffffe097          	auipc	ra,0xffffe
    8000382c:	adc080e7          	jalr	-1316(ra) # 80001304 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadC created\n");
    80003830:	00003517          	auipc	a0,0x3
    80003834:	90850513          	addi	a0,a0,-1784 # 80006138 <CONSOLE_STATUS+0x128>
    80003838:	fffff097          	auipc	ra,0xfffff
    8000383c:	690080e7          	jalr	1680(ra) # 80002ec8 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80003840:	00000613          	li	a2,0
    80003844:	00000597          	auipc	a1,0x0
    80003848:	afc58593          	addi	a1,a1,-1284 # 80003340 <_ZL11workerBodyDPv>
    8000384c:	fe840513          	addi	a0,s0,-24
    80003850:	ffffe097          	auipc	ra,0xffffe
    80003854:	ab4080e7          	jalr	-1356(ra) # 80001304 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadD created\n");
    80003858:	00003517          	auipc	a0,0x3
    8000385c:	8f850513          	addi	a0,a0,-1800 # 80006150 <CONSOLE_STATUS+0x140>
    80003860:	fffff097          	auipc	ra,0xfffff
    80003864:	668080e7          	jalr	1640(ra) # 80002ec8 <_Z11printStringPKc>
    80003868:	00c0006f          	j	80003874 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    8000386c:	ffffe097          	auipc	ra,0xffffe
    80003870:	b08080e7          	jalr	-1272(ra) # 80001374 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80003874:	00004797          	auipc	a5,0x4
    80003878:	bcf7c783          	lbu	a5,-1073(a5) # 80007443 <_ZL9finishedA>
    8000387c:	fe0788e3          	beqz	a5,8000386c <_Z16System_Mode_testv+0xb4>
    80003880:	00004797          	auipc	a5,0x4
    80003884:	bc27c783          	lbu	a5,-1086(a5) # 80007442 <_ZL9finishedB>
    80003888:	fe0782e3          	beqz	a5,8000386c <_Z16System_Mode_testv+0xb4>
    8000388c:	00004797          	auipc	a5,0x4
    80003890:	bb57c783          	lbu	a5,-1099(a5) # 80007441 <_ZL9finishedC>
    80003894:	fc078ce3          	beqz	a5,8000386c <_Z16System_Mode_testv+0xb4>
    80003898:	00004797          	auipc	a5,0x4
    8000389c:	ba87c783          	lbu	a5,-1112(a5) # 80007440 <_ZL9finishedD>
    800038a0:	fc0786e3          	beqz	a5,8000386c <_Z16System_Mode_testv+0xb4>
    }

}
    800038a4:	02813083          	ld	ra,40(sp)
    800038a8:	02013403          	ld	s0,32(sp)
    800038ac:	03010113          	addi	sp,sp,48
    800038b0:	00008067          	ret

00000000800038b4 <start>:
    800038b4:	ff010113          	addi	sp,sp,-16
    800038b8:	00813423          	sd	s0,8(sp)
    800038bc:	01010413          	addi	s0,sp,16
    800038c0:	300027f3          	csrr	a5,mstatus
    800038c4:	ffffe737          	lui	a4,0xffffe
    800038c8:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff614f>
    800038cc:	00e7f7b3          	and	a5,a5,a4
    800038d0:	00001737          	lui	a4,0x1
    800038d4:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    800038d8:	00e7e7b3          	or	a5,a5,a4
    800038dc:	30079073          	csrw	mstatus,a5
    800038e0:	00000797          	auipc	a5,0x0
    800038e4:	16078793          	addi	a5,a5,352 # 80003a40 <system_main>
    800038e8:	34179073          	csrw	mepc,a5
    800038ec:	00000793          	li	a5,0
    800038f0:	18079073          	csrw	satp,a5
    800038f4:	000107b7          	lui	a5,0x10
    800038f8:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800038fc:	30279073          	csrw	medeleg,a5
    80003900:	30379073          	csrw	mideleg,a5
    80003904:	104027f3          	csrr	a5,sie
    80003908:	2227e793          	ori	a5,a5,546
    8000390c:	10479073          	csrw	sie,a5
    80003910:	fff00793          	li	a5,-1
    80003914:	00a7d793          	srli	a5,a5,0xa
    80003918:	3b079073          	csrw	pmpaddr0,a5
    8000391c:	00f00793          	li	a5,15
    80003920:	3a079073          	csrw	pmpcfg0,a5
    80003924:	f14027f3          	csrr	a5,mhartid
    80003928:	0200c737          	lui	a4,0x200c
    8000392c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80003930:	0007869b          	sext.w	a3,a5
    80003934:	00269713          	slli	a4,a3,0x2
    80003938:	000f4637          	lui	a2,0xf4
    8000393c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80003940:	00d70733          	add	a4,a4,a3
    80003944:	0037979b          	slliw	a5,a5,0x3
    80003948:	020046b7          	lui	a3,0x2004
    8000394c:	00d787b3          	add	a5,a5,a3
    80003950:	00c585b3          	add	a1,a1,a2
    80003954:	00371693          	slli	a3,a4,0x3
    80003958:	00004717          	auipc	a4,0x4
    8000395c:	af870713          	addi	a4,a4,-1288 # 80007450 <timer_scratch>
    80003960:	00b7b023          	sd	a1,0(a5)
    80003964:	00d70733          	add	a4,a4,a3
    80003968:	00f73c23          	sd	a5,24(a4)
    8000396c:	02c73023          	sd	a2,32(a4)
    80003970:	34071073          	csrw	mscratch,a4
    80003974:	00000797          	auipc	a5,0x0
    80003978:	6ec78793          	addi	a5,a5,1772 # 80004060 <timervec>
    8000397c:	30579073          	csrw	mtvec,a5
    80003980:	300027f3          	csrr	a5,mstatus
    80003984:	0087e793          	ori	a5,a5,8
    80003988:	30079073          	csrw	mstatus,a5
    8000398c:	304027f3          	csrr	a5,mie
    80003990:	0807e793          	ori	a5,a5,128
    80003994:	30479073          	csrw	mie,a5
    80003998:	f14027f3          	csrr	a5,mhartid
    8000399c:	0007879b          	sext.w	a5,a5
    800039a0:	00078213          	mv	tp,a5
    800039a4:	30200073          	mret
    800039a8:	00813403          	ld	s0,8(sp)
    800039ac:	01010113          	addi	sp,sp,16
    800039b0:	00008067          	ret

00000000800039b4 <timerinit>:
    800039b4:	ff010113          	addi	sp,sp,-16
    800039b8:	00813423          	sd	s0,8(sp)
    800039bc:	01010413          	addi	s0,sp,16
    800039c0:	f14027f3          	csrr	a5,mhartid
    800039c4:	0200c737          	lui	a4,0x200c
    800039c8:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800039cc:	0007869b          	sext.w	a3,a5
    800039d0:	00269713          	slli	a4,a3,0x2
    800039d4:	000f4637          	lui	a2,0xf4
    800039d8:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800039dc:	00d70733          	add	a4,a4,a3
    800039e0:	0037979b          	slliw	a5,a5,0x3
    800039e4:	020046b7          	lui	a3,0x2004
    800039e8:	00d787b3          	add	a5,a5,a3
    800039ec:	00c585b3          	add	a1,a1,a2
    800039f0:	00371693          	slli	a3,a4,0x3
    800039f4:	00004717          	auipc	a4,0x4
    800039f8:	a5c70713          	addi	a4,a4,-1444 # 80007450 <timer_scratch>
    800039fc:	00b7b023          	sd	a1,0(a5)
    80003a00:	00d70733          	add	a4,a4,a3
    80003a04:	00f73c23          	sd	a5,24(a4)
    80003a08:	02c73023          	sd	a2,32(a4)
    80003a0c:	34071073          	csrw	mscratch,a4
    80003a10:	00000797          	auipc	a5,0x0
    80003a14:	65078793          	addi	a5,a5,1616 # 80004060 <timervec>
    80003a18:	30579073          	csrw	mtvec,a5
    80003a1c:	300027f3          	csrr	a5,mstatus
    80003a20:	0087e793          	ori	a5,a5,8
    80003a24:	30079073          	csrw	mstatus,a5
    80003a28:	304027f3          	csrr	a5,mie
    80003a2c:	0807e793          	ori	a5,a5,128
    80003a30:	30479073          	csrw	mie,a5
    80003a34:	00813403          	ld	s0,8(sp)
    80003a38:	01010113          	addi	sp,sp,16
    80003a3c:	00008067          	ret

0000000080003a40 <system_main>:
    80003a40:	fe010113          	addi	sp,sp,-32
    80003a44:	00813823          	sd	s0,16(sp)
    80003a48:	00913423          	sd	s1,8(sp)
    80003a4c:	00113c23          	sd	ra,24(sp)
    80003a50:	02010413          	addi	s0,sp,32
    80003a54:	00000097          	auipc	ra,0x0
    80003a58:	0c4080e7          	jalr	196(ra) # 80003b18 <cpuid>
    80003a5c:	00004497          	auipc	s1,0x4
    80003a60:	97448493          	addi	s1,s1,-1676 # 800073d0 <started>
    80003a64:	02050263          	beqz	a0,80003a88 <system_main+0x48>
    80003a68:	0004a783          	lw	a5,0(s1)
    80003a6c:	0007879b          	sext.w	a5,a5
    80003a70:	fe078ce3          	beqz	a5,80003a68 <system_main+0x28>
    80003a74:	0ff0000f          	fence
    80003a78:	00003517          	auipc	a0,0x3
    80003a7c:	8c050513          	addi	a0,a0,-1856 # 80006338 <CONSOLE_STATUS+0x328>
    80003a80:	00001097          	auipc	ra,0x1
    80003a84:	a7c080e7          	jalr	-1412(ra) # 800044fc <panic>
    80003a88:	00001097          	auipc	ra,0x1
    80003a8c:	9d0080e7          	jalr	-1584(ra) # 80004458 <consoleinit>
    80003a90:	00001097          	auipc	ra,0x1
    80003a94:	15c080e7          	jalr	348(ra) # 80004bec <printfinit>
    80003a98:	00003517          	auipc	a0,0x3
    80003a9c:	98050513          	addi	a0,a0,-1664 # 80006418 <CONSOLE_STATUS+0x408>
    80003aa0:	00001097          	auipc	ra,0x1
    80003aa4:	ab8080e7          	jalr	-1352(ra) # 80004558 <__printf>
    80003aa8:	00003517          	auipc	a0,0x3
    80003aac:	86050513          	addi	a0,a0,-1952 # 80006308 <CONSOLE_STATUS+0x2f8>
    80003ab0:	00001097          	auipc	ra,0x1
    80003ab4:	aa8080e7          	jalr	-1368(ra) # 80004558 <__printf>
    80003ab8:	00003517          	auipc	a0,0x3
    80003abc:	96050513          	addi	a0,a0,-1696 # 80006418 <CONSOLE_STATUS+0x408>
    80003ac0:	00001097          	auipc	ra,0x1
    80003ac4:	a98080e7          	jalr	-1384(ra) # 80004558 <__printf>
    80003ac8:	00001097          	auipc	ra,0x1
    80003acc:	4b0080e7          	jalr	1200(ra) # 80004f78 <kinit>
    80003ad0:	00000097          	auipc	ra,0x0
    80003ad4:	148080e7          	jalr	328(ra) # 80003c18 <trapinit>
    80003ad8:	00000097          	auipc	ra,0x0
    80003adc:	16c080e7          	jalr	364(ra) # 80003c44 <trapinithart>
    80003ae0:	00000097          	auipc	ra,0x0
    80003ae4:	5c0080e7          	jalr	1472(ra) # 800040a0 <plicinit>
    80003ae8:	00000097          	auipc	ra,0x0
    80003aec:	5e0080e7          	jalr	1504(ra) # 800040c8 <plicinithart>
    80003af0:	00000097          	auipc	ra,0x0
    80003af4:	078080e7          	jalr	120(ra) # 80003b68 <userinit>
    80003af8:	0ff0000f          	fence
    80003afc:	00100793          	li	a5,1
    80003b00:	00003517          	auipc	a0,0x3
    80003b04:	82050513          	addi	a0,a0,-2016 # 80006320 <CONSOLE_STATUS+0x310>
    80003b08:	00f4a023          	sw	a5,0(s1)
    80003b0c:	00001097          	auipc	ra,0x1
    80003b10:	a4c080e7          	jalr	-1460(ra) # 80004558 <__printf>
    80003b14:	0000006f          	j	80003b14 <system_main+0xd4>

0000000080003b18 <cpuid>:
    80003b18:	ff010113          	addi	sp,sp,-16
    80003b1c:	00813423          	sd	s0,8(sp)
    80003b20:	01010413          	addi	s0,sp,16
    80003b24:	00020513          	mv	a0,tp
    80003b28:	00813403          	ld	s0,8(sp)
    80003b2c:	0005051b          	sext.w	a0,a0
    80003b30:	01010113          	addi	sp,sp,16
    80003b34:	00008067          	ret

0000000080003b38 <mycpu>:
    80003b38:	ff010113          	addi	sp,sp,-16
    80003b3c:	00813423          	sd	s0,8(sp)
    80003b40:	01010413          	addi	s0,sp,16
    80003b44:	00020793          	mv	a5,tp
    80003b48:	00813403          	ld	s0,8(sp)
    80003b4c:	0007879b          	sext.w	a5,a5
    80003b50:	00779793          	slli	a5,a5,0x7
    80003b54:	00005517          	auipc	a0,0x5
    80003b58:	92c50513          	addi	a0,a0,-1748 # 80008480 <cpus>
    80003b5c:	00f50533          	add	a0,a0,a5
    80003b60:	01010113          	addi	sp,sp,16
    80003b64:	00008067          	ret

0000000080003b68 <userinit>:
    80003b68:	ff010113          	addi	sp,sp,-16
    80003b6c:	00813423          	sd	s0,8(sp)
    80003b70:	01010413          	addi	s0,sp,16
    80003b74:	00813403          	ld	s0,8(sp)
    80003b78:	01010113          	addi	sp,sp,16
    80003b7c:	ffffe317          	auipc	t1,0xffffe
    80003b80:	adc30067          	jr	-1316(t1) # 80001658 <main>

0000000080003b84 <either_copyout>:
    80003b84:	ff010113          	addi	sp,sp,-16
    80003b88:	00813023          	sd	s0,0(sp)
    80003b8c:	00113423          	sd	ra,8(sp)
    80003b90:	01010413          	addi	s0,sp,16
    80003b94:	02051663          	bnez	a0,80003bc0 <either_copyout+0x3c>
    80003b98:	00058513          	mv	a0,a1
    80003b9c:	00060593          	mv	a1,a2
    80003ba0:	0006861b          	sext.w	a2,a3
    80003ba4:	00002097          	auipc	ra,0x2
    80003ba8:	c60080e7          	jalr	-928(ra) # 80005804 <__memmove>
    80003bac:	00813083          	ld	ra,8(sp)
    80003bb0:	00013403          	ld	s0,0(sp)
    80003bb4:	00000513          	li	a0,0
    80003bb8:	01010113          	addi	sp,sp,16
    80003bbc:	00008067          	ret
    80003bc0:	00002517          	auipc	a0,0x2
    80003bc4:	7a050513          	addi	a0,a0,1952 # 80006360 <CONSOLE_STATUS+0x350>
    80003bc8:	00001097          	auipc	ra,0x1
    80003bcc:	934080e7          	jalr	-1740(ra) # 800044fc <panic>

0000000080003bd0 <either_copyin>:
    80003bd0:	ff010113          	addi	sp,sp,-16
    80003bd4:	00813023          	sd	s0,0(sp)
    80003bd8:	00113423          	sd	ra,8(sp)
    80003bdc:	01010413          	addi	s0,sp,16
    80003be0:	02059463          	bnez	a1,80003c08 <either_copyin+0x38>
    80003be4:	00060593          	mv	a1,a2
    80003be8:	0006861b          	sext.w	a2,a3
    80003bec:	00002097          	auipc	ra,0x2
    80003bf0:	c18080e7          	jalr	-1000(ra) # 80005804 <__memmove>
    80003bf4:	00813083          	ld	ra,8(sp)
    80003bf8:	00013403          	ld	s0,0(sp)
    80003bfc:	00000513          	li	a0,0
    80003c00:	01010113          	addi	sp,sp,16
    80003c04:	00008067          	ret
    80003c08:	00002517          	auipc	a0,0x2
    80003c0c:	78050513          	addi	a0,a0,1920 # 80006388 <CONSOLE_STATUS+0x378>
    80003c10:	00001097          	auipc	ra,0x1
    80003c14:	8ec080e7          	jalr	-1812(ra) # 800044fc <panic>

0000000080003c18 <trapinit>:
    80003c18:	ff010113          	addi	sp,sp,-16
    80003c1c:	00813423          	sd	s0,8(sp)
    80003c20:	01010413          	addi	s0,sp,16
    80003c24:	00813403          	ld	s0,8(sp)
    80003c28:	00002597          	auipc	a1,0x2
    80003c2c:	78858593          	addi	a1,a1,1928 # 800063b0 <CONSOLE_STATUS+0x3a0>
    80003c30:	00005517          	auipc	a0,0x5
    80003c34:	8d050513          	addi	a0,a0,-1840 # 80008500 <tickslock>
    80003c38:	01010113          	addi	sp,sp,16
    80003c3c:	00001317          	auipc	t1,0x1
    80003c40:	5cc30067          	jr	1484(t1) # 80005208 <initlock>

0000000080003c44 <trapinithart>:
    80003c44:	ff010113          	addi	sp,sp,-16
    80003c48:	00813423          	sd	s0,8(sp)
    80003c4c:	01010413          	addi	s0,sp,16
    80003c50:	00000797          	auipc	a5,0x0
    80003c54:	30078793          	addi	a5,a5,768 # 80003f50 <kernelvec>
    80003c58:	10579073          	csrw	stvec,a5
    80003c5c:	00813403          	ld	s0,8(sp)
    80003c60:	01010113          	addi	sp,sp,16
    80003c64:	00008067          	ret

0000000080003c68 <usertrap>:
    80003c68:	ff010113          	addi	sp,sp,-16
    80003c6c:	00813423          	sd	s0,8(sp)
    80003c70:	01010413          	addi	s0,sp,16
    80003c74:	00813403          	ld	s0,8(sp)
    80003c78:	01010113          	addi	sp,sp,16
    80003c7c:	00008067          	ret

0000000080003c80 <usertrapret>:
    80003c80:	ff010113          	addi	sp,sp,-16
    80003c84:	00813423          	sd	s0,8(sp)
    80003c88:	01010413          	addi	s0,sp,16
    80003c8c:	00813403          	ld	s0,8(sp)
    80003c90:	01010113          	addi	sp,sp,16
    80003c94:	00008067          	ret

0000000080003c98 <kerneltrap>:
    80003c98:	fe010113          	addi	sp,sp,-32
    80003c9c:	00813823          	sd	s0,16(sp)
    80003ca0:	00113c23          	sd	ra,24(sp)
    80003ca4:	00913423          	sd	s1,8(sp)
    80003ca8:	02010413          	addi	s0,sp,32
    80003cac:	142025f3          	csrr	a1,scause
    80003cb0:	100027f3          	csrr	a5,sstatus
    80003cb4:	0027f793          	andi	a5,a5,2
    80003cb8:	10079c63          	bnez	a5,80003dd0 <kerneltrap+0x138>
    80003cbc:	142027f3          	csrr	a5,scause
    80003cc0:	0207ce63          	bltz	a5,80003cfc <kerneltrap+0x64>
    80003cc4:	00002517          	auipc	a0,0x2
    80003cc8:	73450513          	addi	a0,a0,1844 # 800063f8 <CONSOLE_STATUS+0x3e8>
    80003ccc:	00001097          	auipc	ra,0x1
    80003cd0:	88c080e7          	jalr	-1908(ra) # 80004558 <__printf>
    80003cd4:	141025f3          	csrr	a1,sepc
    80003cd8:	14302673          	csrr	a2,stval
    80003cdc:	00002517          	auipc	a0,0x2
    80003ce0:	72c50513          	addi	a0,a0,1836 # 80006408 <CONSOLE_STATUS+0x3f8>
    80003ce4:	00001097          	auipc	ra,0x1
    80003ce8:	874080e7          	jalr	-1932(ra) # 80004558 <__printf>
    80003cec:	00002517          	auipc	a0,0x2
    80003cf0:	73450513          	addi	a0,a0,1844 # 80006420 <CONSOLE_STATUS+0x410>
    80003cf4:	00001097          	auipc	ra,0x1
    80003cf8:	808080e7          	jalr	-2040(ra) # 800044fc <panic>
    80003cfc:	0ff7f713          	andi	a4,a5,255
    80003d00:	00900693          	li	a3,9
    80003d04:	04d70063          	beq	a4,a3,80003d44 <kerneltrap+0xac>
    80003d08:	fff00713          	li	a4,-1
    80003d0c:	03f71713          	slli	a4,a4,0x3f
    80003d10:	00170713          	addi	a4,a4,1
    80003d14:	fae798e3          	bne	a5,a4,80003cc4 <kerneltrap+0x2c>
    80003d18:	00000097          	auipc	ra,0x0
    80003d1c:	e00080e7          	jalr	-512(ra) # 80003b18 <cpuid>
    80003d20:	06050663          	beqz	a0,80003d8c <kerneltrap+0xf4>
    80003d24:	144027f3          	csrr	a5,sip
    80003d28:	ffd7f793          	andi	a5,a5,-3
    80003d2c:	14479073          	csrw	sip,a5
    80003d30:	01813083          	ld	ra,24(sp)
    80003d34:	01013403          	ld	s0,16(sp)
    80003d38:	00813483          	ld	s1,8(sp)
    80003d3c:	02010113          	addi	sp,sp,32
    80003d40:	00008067          	ret
    80003d44:	00000097          	auipc	ra,0x0
    80003d48:	3d0080e7          	jalr	976(ra) # 80004114 <plic_claim>
    80003d4c:	00a00793          	li	a5,10
    80003d50:	00050493          	mv	s1,a0
    80003d54:	06f50863          	beq	a0,a5,80003dc4 <kerneltrap+0x12c>
    80003d58:	fc050ce3          	beqz	a0,80003d30 <kerneltrap+0x98>
    80003d5c:	00050593          	mv	a1,a0
    80003d60:	00002517          	auipc	a0,0x2
    80003d64:	67850513          	addi	a0,a0,1656 # 800063d8 <CONSOLE_STATUS+0x3c8>
    80003d68:	00000097          	auipc	ra,0x0
    80003d6c:	7f0080e7          	jalr	2032(ra) # 80004558 <__printf>
    80003d70:	01013403          	ld	s0,16(sp)
    80003d74:	01813083          	ld	ra,24(sp)
    80003d78:	00048513          	mv	a0,s1
    80003d7c:	00813483          	ld	s1,8(sp)
    80003d80:	02010113          	addi	sp,sp,32
    80003d84:	00000317          	auipc	t1,0x0
    80003d88:	3c830067          	jr	968(t1) # 8000414c <plic_complete>
    80003d8c:	00004517          	auipc	a0,0x4
    80003d90:	77450513          	addi	a0,a0,1908 # 80008500 <tickslock>
    80003d94:	00001097          	auipc	ra,0x1
    80003d98:	498080e7          	jalr	1176(ra) # 8000522c <acquire>
    80003d9c:	00003717          	auipc	a4,0x3
    80003da0:	63870713          	addi	a4,a4,1592 # 800073d4 <ticks>
    80003da4:	00072783          	lw	a5,0(a4)
    80003da8:	00004517          	auipc	a0,0x4
    80003dac:	75850513          	addi	a0,a0,1880 # 80008500 <tickslock>
    80003db0:	0017879b          	addiw	a5,a5,1
    80003db4:	00f72023          	sw	a5,0(a4)
    80003db8:	00001097          	auipc	ra,0x1
    80003dbc:	540080e7          	jalr	1344(ra) # 800052f8 <release>
    80003dc0:	f65ff06f          	j	80003d24 <kerneltrap+0x8c>
    80003dc4:	00001097          	auipc	ra,0x1
    80003dc8:	09c080e7          	jalr	156(ra) # 80004e60 <uartintr>
    80003dcc:	fa5ff06f          	j	80003d70 <kerneltrap+0xd8>
    80003dd0:	00002517          	auipc	a0,0x2
    80003dd4:	5e850513          	addi	a0,a0,1512 # 800063b8 <CONSOLE_STATUS+0x3a8>
    80003dd8:	00000097          	auipc	ra,0x0
    80003ddc:	724080e7          	jalr	1828(ra) # 800044fc <panic>

0000000080003de0 <clockintr>:
    80003de0:	fe010113          	addi	sp,sp,-32
    80003de4:	00813823          	sd	s0,16(sp)
    80003de8:	00913423          	sd	s1,8(sp)
    80003dec:	00113c23          	sd	ra,24(sp)
    80003df0:	02010413          	addi	s0,sp,32
    80003df4:	00004497          	auipc	s1,0x4
    80003df8:	70c48493          	addi	s1,s1,1804 # 80008500 <tickslock>
    80003dfc:	00048513          	mv	a0,s1
    80003e00:	00001097          	auipc	ra,0x1
    80003e04:	42c080e7          	jalr	1068(ra) # 8000522c <acquire>
    80003e08:	00003717          	auipc	a4,0x3
    80003e0c:	5cc70713          	addi	a4,a4,1484 # 800073d4 <ticks>
    80003e10:	00072783          	lw	a5,0(a4)
    80003e14:	01013403          	ld	s0,16(sp)
    80003e18:	01813083          	ld	ra,24(sp)
    80003e1c:	00048513          	mv	a0,s1
    80003e20:	0017879b          	addiw	a5,a5,1
    80003e24:	00813483          	ld	s1,8(sp)
    80003e28:	00f72023          	sw	a5,0(a4)
    80003e2c:	02010113          	addi	sp,sp,32
    80003e30:	00001317          	auipc	t1,0x1
    80003e34:	4c830067          	jr	1224(t1) # 800052f8 <release>

0000000080003e38 <devintr>:
    80003e38:	142027f3          	csrr	a5,scause
    80003e3c:	00000513          	li	a0,0
    80003e40:	0007c463          	bltz	a5,80003e48 <devintr+0x10>
    80003e44:	00008067          	ret
    80003e48:	fe010113          	addi	sp,sp,-32
    80003e4c:	00813823          	sd	s0,16(sp)
    80003e50:	00113c23          	sd	ra,24(sp)
    80003e54:	00913423          	sd	s1,8(sp)
    80003e58:	02010413          	addi	s0,sp,32
    80003e5c:	0ff7f713          	andi	a4,a5,255
    80003e60:	00900693          	li	a3,9
    80003e64:	04d70c63          	beq	a4,a3,80003ebc <devintr+0x84>
    80003e68:	fff00713          	li	a4,-1
    80003e6c:	03f71713          	slli	a4,a4,0x3f
    80003e70:	00170713          	addi	a4,a4,1
    80003e74:	00e78c63          	beq	a5,a4,80003e8c <devintr+0x54>
    80003e78:	01813083          	ld	ra,24(sp)
    80003e7c:	01013403          	ld	s0,16(sp)
    80003e80:	00813483          	ld	s1,8(sp)
    80003e84:	02010113          	addi	sp,sp,32
    80003e88:	00008067          	ret
    80003e8c:	00000097          	auipc	ra,0x0
    80003e90:	c8c080e7          	jalr	-884(ra) # 80003b18 <cpuid>
    80003e94:	06050663          	beqz	a0,80003f00 <devintr+0xc8>
    80003e98:	144027f3          	csrr	a5,sip
    80003e9c:	ffd7f793          	andi	a5,a5,-3
    80003ea0:	14479073          	csrw	sip,a5
    80003ea4:	01813083          	ld	ra,24(sp)
    80003ea8:	01013403          	ld	s0,16(sp)
    80003eac:	00813483          	ld	s1,8(sp)
    80003eb0:	00200513          	li	a0,2
    80003eb4:	02010113          	addi	sp,sp,32
    80003eb8:	00008067          	ret
    80003ebc:	00000097          	auipc	ra,0x0
    80003ec0:	258080e7          	jalr	600(ra) # 80004114 <plic_claim>
    80003ec4:	00a00793          	li	a5,10
    80003ec8:	00050493          	mv	s1,a0
    80003ecc:	06f50663          	beq	a0,a5,80003f38 <devintr+0x100>
    80003ed0:	00100513          	li	a0,1
    80003ed4:	fa0482e3          	beqz	s1,80003e78 <devintr+0x40>
    80003ed8:	00048593          	mv	a1,s1
    80003edc:	00002517          	auipc	a0,0x2
    80003ee0:	4fc50513          	addi	a0,a0,1276 # 800063d8 <CONSOLE_STATUS+0x3c8>
    80003ee4:	00000097          	auipc	ra,0x0
    80003ee8:	674080e7          	jalr	1652(ra) # 80004558 <__printf>
    80003eec:	00048513          	mv	a0,s1
    80003ef0:	00000097          	auipc	ra,0x0
    80003ef4:	25c080e7          	jalr	604(ra) # 8000414c <plic_complete>
    80003ef8:	00100513          	li	a0,1
    80003efc:	f7dff06f          	j	80003e78 <devintr+0x40>
    80003f00:	00004517          	auipc	a0,0x4
    80003f04:	60050513          	addi	a0,a0,1536 # 80008500 <tickslock>
    80003f08:	00001097          	auipc	ra,0x1
    80003f0c:	324080e7          	jalr	804(ra) # 8000522c <acquire>
    80003f10:	00003717          	auipc	a4,0x3
    80003f14:	4c470713          	addi	a4,a4,1220 # 800073d4 <ticks>
    80003f18:	00072783          	lw	a5,0(a4)
    80003f1c:	00004517          	auipc	a0,0x4
    80003f20:	5e450513          	addi	a0,a0,1508 # 80008500 <tickslock>
    80003f24:	0017879b          	addiw	a5,a5,1
    80003f28:	00f72023          	sw	a5,0(a4)
    80003f2c:	00001097          	auipc	ra,0x1
    80003f30:	3cc080e7          	jalr	972(ra) # 800052f8 <release>
    80003f34:	f65ff06f          	j	80003e98 <devintr+0x60>
    80003f38:	00001097          	auipc	ra,0x1
    80003f3c:	f28080e7          	jalr	-216(ra) # 80004e60 <uartintr>
    80003f40:	fadff06f          	j	80003eec <devintr+0xb4>
	...

0000000080003f50 <kernelvec>:
    80003f50:	f0010113          	addi	sp,sp,-256
    80003f54:	00113023          	sd	ra,0(sp)
    80003f58:	00213423          	sd	sp,8(sp)
    80003f5c:	00313823          	sd	gp,16(sp)
    80003f60:	00413c23          	sd	tp,24(sp)
    80003f64:	02513023          	sd	t0,32(sp)
    80003f68:	02613423          	sd	t1,40(sp)
    80003f6c:	02713823          	sd	t2,48(sp)
    80003f70:	02813c23          	sd	s0,56(sp)
    80003f74:	04913023          	sd	s1,64(sp)
    80003f78:	04a13423          	sd	a0,72(sp)
    80003f7c:	04b13823          	sd	a1,80(sp)
    80003f80:	04c13c23          	sd	a2,88(sp)
    80003f84:	06d13023          	sd	a3,96(sp)
    80003f88:	06e13423          	sd	a4,104(sp)
    80003f8c:	06f13823          	sd	a5,112(sp)
    80003f90:	07013c23          	sd	a6,120(sp)
    80003f94:	09113023          	sd	a7,128(sp)
    80003f98:	09213423          	sd	s2,136(sp)
    80003f9c:	09313823          	sd	s3,144(sp)
    80003fa0:	09413c23          	sd	s4,152(sp)
    80003fa4:	0b513023          	sd	s5,160(sp)
    80003fa8:	0b613423          	sd	s6,168(sp)
    80003fac:	0b713823          	sd	s7,176(sp)
    80003fb0:	0b813c23          	sd	s8,184(sp)
    80003fb4:	0d913023          	sd	s9,192(sp)
    80003fb8:	0da13423          	sd	s10,200(sp)
    80003fbc:	0db13823          	sd	s11,208(sp)
    80003fc0:	0dc13c23          	sd	t3,216(sp)
    80003fc4:	0fd13023          	sd	t4,224(sp)
    80003fc8:	0fe13423          	sd	t5,232(sp)
    80003fcc:	0ff13823          	sd	t6,240(sp)
    80003fd0:	cc9ff0ef          	jal	ra,80003c98 <kerneltrap>
    80003fd4:	00013083          	ld	ra,0(sp)
    80003fd8:	00813103          	ld	sp,8(sp)
    80003fdc:	01013183          	ld	gp,16(sp)
    80003fe0:	02013283          	ld	t0,32(sp)
    80003fe4:	02813303          	ld	t1,40(sp)
    80003fe8:	03013383          	ld	t2,48(sp)
    80003fec:	03813403          	ld	s0,56(sp)
    80003ff0:	04013483          	ld	s1,64(sp)
    80003ff4:	04813503          	ld	a0,72(sp)
    80003ff8:	05013583          	ld	a1,80(sp)
    80003ffc:	05813603          	ld	a2,88(sp)
    80004000:	06013683          	ld	a3,96(sp)
    80004004:	06813703          	ld	a4,104(sp)
    80004008:	07013783          	ld	a5,112(sp)
    8000400c:	07813803          	ld	a6,120(sp)
    80004010:	08013883          	ld	a7,128(sp)
    80004014:	08813903          	ld	s2,136(sp)
    80004018:	09013983          	ld	s3,144(sp)
    8000401c:	09813a03          	ld	s4,152(sp)
    80004020:	0a013a83          	ld	s5,160(sp)
    80004024:	0a813b03          	ld	s6,168(sp)
    80004028:	0b013b83          	ld	s7,176(sp)
    8000402c:	0b813c03          	ld	s8,184(sp)
    80004030:	0c013c83          	ld	s9,192(sp)
    80004034:	0c813d03          	ld	s10,200(sp)
    80004038:	0d013d83          	ld	s11,208(sp)
    8000403c:	0d813e03          	ld	t3,216(sp)
    80004040:	0e013e83          	ld	t4,224(sp)
    80004044:	0e813f03          	ld	t5,232(sp)
    80004048:	0f013f83          	ld	t6,240(sp)
    8000404c:	10010113          	addi	sp,sp,256
    80004050:	10200073          	sret
    80004054:	00000013          	nop
    80004058:	00000013          	nop
    8000405c:	00000013          	nop

0000000080004060 <timervec>:
    80004060:	34051573          	csrrw	a0,mscratch,a0
    80004064:	00b53023          	sd	a1,0(a0)
    80004068:	00c53423          	sd	a2,8(a0)
    8000406c:	00d53823          	sd	a3,16(a0)
    80004070:	01853583          	ld	a1,24(a0)
    80004074:	02053603          	ld	a2,32(a0)
    80004078:	0005b683          	ld	a3,0(a1)
    8000407c:	00c686b3          	add	a3,a3,a2
    80004080:	00d5b023          	sd	a3,0(a1)
    80004084:	00200593          	li	a1,2
    80004088:	14459073          	csrw	sip,a1
    8000408c:	01053683          	ld	a3,16(a0)
    80004090:	00853603          	ld	a2,8(a0)
    80004094:	00053583          	ld	a1,0(a0)
    80004098:	34051573          	csrrw	a0,mscratch,a0
    8000409c:	30200073          	mret

00000000800040a0 <plicinit>:
    800040a0:	ff010113          	addi	sp,sp,-16
    800040a4:	00813423          	sd	s0,8(sp)
    800040a8:	01010413          	addi	s0,sp,16
    800040ac:	00813403          	ld	s0,8(sp)
    800040b0:	0c0007b7          	lui	a5,0xc000
    800040b4:	00100713          	li	a4,1
    800040b8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    800040bc:	00e7a223          	sw	a4,4(a5)
    800040c0:	01010113          	addi	sp,sp,16
    800040c4:	00008067          	ret

00000000800040c8 <plicinithart>:
    800040c8:	ff010113          	addi	sp,sp,-16
    800040cc:	00813023          	sd	s0,0(sp)
    800040d0:	00113423          	sd	ra,8(sp)
    800040d4:	01010413          	addi	s0,sp,16
    800040d8:	00000097          	auipc	ra,0x0
    800040dc:	a40080e7          	jalr	-1472(ra) # 80003b18 <cpuid>
    800040e0:	0085171b          	slliw	a4,a0,0x8
    800040e4:	0c0027b7          	lui	a5,0xc002
    800040e8:	00e787b3          	add	a5,a5,a4
    800040ec:	40200713          	li	a4,1026
    800040f0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    800040f4:	00813083          	ld	ra,8(sp)
    800040f8:	00013403          	ld	s0,0(sp)
    800040fc:	00d5151b          	slliw	a0,a0,0xd
    80004100:	0c2017b7          	lui	a5,0xc201
    80004104:	00a78533          	add	a0,a5,a0
    80004108:	00052023          	sw	zero,0(a0)
    8000410c:	01010113          	addi	sp,sp,16
    80004110:	00008067          	ret

0000000080004114 <plic_claim>:
    80004114:	ff010113          	addi	sp,sp,-16
    80004118:	00813023          	sd	s0,0(sp)
    8000411c:	00113423          	sd	ra,8(sp)
    80004120:	01010413          	addi	s0,sp,16
    80004124:	00000097          	auipc	ra,0x0
    80004128:	9f4080e7          	jalr	-1548(ra) # 80003b18 <cpuid>
    8000412c:	00813083          	ld	ra,8(sp)
    80004130:	00013403          	ld	s0,0(sp)
    80004134:	00d5151b          	slliw	a0,a0,0xd
    80004138:	0c2017b7          	lui	a5,0xc201
    8000413c:	00a78533          	add	a0,a5,a0
    80004140:	00452503          	lw	a0,4(a0)
    80004144:	01010113          	addi	sp,sp,16
    80004148:	00008067          	ret

000000008000414c <plic_complete>:
    8000414c:	fe010113          	addi	sp,sp,-32
    80004150:	00813823          	sd	s0,16(sp)
    80004154:	00913423          	sd	s1,8(sp)
    80004158:	00113c23          	sd	ra,24(sp)
    8000415c:	02010413          	addi	s0,sp,32
    80004160:	00050493          	mv	s1,a0
    80004164:	00000097          	auipc	ra,0x0
    80004168:	9b4080e7          	jalr	-1612(ra) # 80003b18 <cpuid>
    8000416c:	01813083          	ld	ra,24(sp)
    80004170:	01013403          	ld	s0,16(sp)
    80004174:	00d5179b          	slliw	a5,a0,0xd
    80004178:	0c201737          	lui	a4,0xc201
    8000417c:	00f707b3          	add	a5,a4,a5
    80004180:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80004184:	00813483          	ld	s1,8(sp)
    80004188:	02010113          	addi	sp,sp,32
    8000418c:	00008067          	ret

0000000080004190 <consolewrite>:
    80004190:	fb010113          	addi	sp,sp,-80
    80004194:	04813023          	sd	s0,64(sp)
    80004198:	04113423          	sd	ra,72(sp)
    8000419c:	02913c23          	sd	s1,56(sp)
    800041a0:	03213823          	sd	s2,48(sp)
    800041a4:	03313423          	sd	s3,40(sp)
    800041a8:	03413023          	sd	s4,32(sp)
    800041ac:	01513c23          	sd	s5,24(sp)
    800041b0:	05010413          	addi	s0,sp,80
    800041b4:	06c05c63          	blez	a2,8000422c <consolewrite+0x9c>
    800041b8:	00060993          	mv	s3,a2
    800041bc:	00050a13          	mv	s4,a0
    800041c0:	00058493          	mv	s1,a1
    800041c4:	00000913          	li	s2,0
    800041c8:	fff00a93          	li	s5,-1
    800041cc:	01c0006f          	j	800041e8 <consolewrite+0x58>
    800041d0:	fbf44503          	lbu	a0,-65(s0)
    800041d4:	0019091b          	addiw	s2,s2,1
    800041d8:	00148493          	addi	s1,s1,1
    800041dc:	00001097          	auipc	ra,0x1
    800041e0:	a9c080e7          	jalr	-1380(ra) # 80004c78 <uartputc>
    800041e4:	03298063          	beq	s3,s2,80004204 <consolewrite+0x74>
    800041e8:	00048613          	mv	a2,s1
    800041ec:	00100693          	li	a3,1
    800041f0:	000a0593          	mv	a1,s4
    800041f4:	fbf40513          	addi	a0,s0,-65
    800041f8:	00000097          	auipc	ra,0x0
    800041fc:	9d8080e7          	jalr	-1576(ra) # 80003bd0 <either_copyin>
    80004200:	fd5518e3          	bne	a0,s5,800041d0 <consolewrite+0x40>
    80004204:	04813083          	ld	ra,72(sp)
    80004208:	04013403          	ld	s0,64(sp)
    8000420c:	03813483          	ld	s1,56(sp)
    80004210:	02813983          	ld	s3,40(sp)
    80004214:	02013a03          	ld	s4,32(sp)
    80004218:	01813a83          	ld	s5,24(sp)
    8000421c:	00090513          	mv	a0,s2
    80004220:	03013903          	ld	s2,48(sp)
    80004224:	05010113          	addi	sp,sp,80
    80004228:	00008067          	ret
    8000422c:	00000913          	li	s2,0
    80004230:	fd5ff06f          	j	80004204 <consolewrite+0x74>

0000000080004234 <consoleread>:
    80004234:	f9010113          	addi	sp,sp,-112
    80004238:	06813023          	sd	s0,96(sp)
    8000423c:	04913c23          	sd	s1,88(sp)
    80004240:	05213823          	sd	s2,80(sp)
    80004244:	05313423          	sd	s3,72(sp)
    80004248:	05413023          	sd	s4,64(sp)
    8000424c:	03513c23          	sd	s5,56(sp)
    80004250:	03613823          	sd	s6,48(sp)
    80004254:	03713423          	sd	s7,40(sp)
    80004258:	03813023          	sd	s8,32(sp)
    8000425c:	06113423          	sd	ra,104(sp)
    80004260:	01913c23          	sd	s9,24(sp)
    80004264:	07010413          	addi	s0,sp,112
    80004268:	00060b93          	mv	s7,a2
    8000426c:	00050913          	mv	s2,a0
    80004270:	00058c13          	mv	s8,a1
    80004274:	00060b1b          	sext.w	s6,a2
    80004278:	00004497          	auipc	s1,0x4
    8000427c:	2b048493          	addi	s1,s1,688 # 80008528 <cons>
    80004280:	00400993          	li	s3,4
    80004284:	fff00a13          	li	s4,-1
    80004288:	00a00a93          	li	s5,10
    8000428c:	05705e63          	blez	s7,800042e8 <consoleread+0xb4>
    80004290:	09c4a703          	lw	a4,156(s1)
    80004294:	0984a783          	lw	a5,152(s1)
    80004298:	0007071b          	sext.w	a4,a4
    8000429c:	08e78463          	beq	a5,a4,80004324 <consoleread+0xf0>
    800042a0:	07f7f713          	andi	a4,a5,127
    800042a4:	00e48733          	add	a4,s1,a4
    800042a8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    800042ac:	0017869b          	addiw	a3,a5,1
    800042b0:	08d4ac23          	sw	a3,152(s1)
    800042b4:	00070c9b          	sext.w	s9,a4
    800042b8:	0b370663          	beq	a4,s3,80004364 <consoleread+0x130>
    800042bc:	00100693          	li	a3,1
    800042c0:	f9f40613          	addi	a2,s0,-97
    800042c4:	000c0593          	mv	a1,s8
    800042c8:	00090513          	mv	a0,s2
    800042cc:	f8e40fa3          	sb	a4,-97(s0)
    800042d0:	00000097          	auipc	ra,0x0
    800042d4:	8b4080e7          	jalr	-1868(ra) # 80003b84 <either_copyout>
    800042d8:	01450863          	beq	a0,s4,800042e8 <consoleread+0xb4>
    800042dc:	001c0c13          	addi	s8,s8,1
    800042e0:	fffb8b9b          	addiw	s7,s7,-1
    800042e4:	fb5c94e3          	bne	s9,s5,8000428c <consoleread+0x58>
    800042e8:	000b851b          	sext.w	a0,s7
    800042ec:	06813083          	ld	ra,104(sp)
    800042f0:	06013403          	ld	s0,96(sp)
    800042f4:	05813483          	ld	s1,88(sp)
    800042f8:	05013903          	ld	s2,80(sp)
    800042fc:	04813983          	ld	s3,72(sp)
    80004300:	04013a03          	ld	s4,64(sp)
    80004304:	03813a83          	ld	s5,56(sp)
    80004308:	02813b83          	ld	s7,40(sp)
    8000430c:	02013c03          	ld	s8,32(sp)
    80004310:	01813c83          	ld	s9,24(sp)
    80004314:	40ab053b          	subw	a0,s6,a0
    80004318:	03013b03          	ld	s6,48(sp)
    8000431c:	07010113          	addi	sp,sp,112
    80004320:	00008067          	ret
    80004324:	00001097          	auipc	ra,0x1
    80004328:	1d8080e7          	jalr	472(ra) # 800054fc <push_on>
    8000432c:	0984a703          	lw	a4,152(s1)
    80004330:	09c4a783          	lw	a5,156(s1)
    80004334:	0007879b          	sext.w	a5,a5
    80004338:	fef70ce3          	beq	a4,a5,80004330 <consoleread+0xfc>
    8000433c:	00001097          	auipc	ra,0x1
    80004340:	234080e7          	jalr	564(ra) # 80005570 <pop_on>
    80004344:	0984a783          	lw	a5,152(s1)
    80004348:	07f7f713          	andi	a4,a5,127
    8000434c:	00e48733          	add	a4,s1,a4
    80004350:	01874703          	lbu	a4,24(a4)
    80004354:	0017869b          	addiw	a3,a5,1
    80004358:	08d4ac23          	sw	a3,152(s1)
    8000435c:	00070c9b          	sext.w	s9,a4
    80004360:	f5371ee3          	bne	a4,s3,800042bc <consoleread+0x88>
    80004364:	000b851b          	sext.w	a0,s7
    80004368:	f96bf2e3          	bgeu	s7,s6,800042ec <consoleread+0xb8>
    8000436c:	08f4ac23          	sw	a5,152(s1)
    80004370:	f7dff06f          	j	800042ec <consoleread+0xb8>

0000000080004374 <consputc>:
    80004374:	10000793          	li	a5,256
    80004378:	00f50663          	beq	a0,a5,80004384 <consputc+0x10>
    8000437c:	00001317          	auipc	t1,0x1
    80004380:	9f430067          	jr	-1548(t1) # 80004d70 <uartputc_sync>
    80004384:	ff010113          	addi	sp,sp,-16
    80004388:	00113423          	sd	ra,8(sp)
    8000438c:	00813023          	sd	s0,0(sp)
    80004390:	01010413          	addi	s0,sp,16
    80004394:	00800513          	li	a0,8
    80004398:	00001097          	auipc	ra,0x1
    8000439c:	9d8080e7          	jalr	-1576(ra) # 80004d70 <uartputc_sync>
    800043a0:	02000513          	li	a0,32
    800043a4:	00001097          	auipc	ra,0x1
    800043a8:	9cc080e7          	jalr	-1588(ra) # 80004d70 <uartputc_sync>
    800043ac:	00013403          	ld	s0,0(sp)
    800043b0:	00813083          	ld	ra,8(sp)
    800043b4:	00800513          	li	a0,8
    800043b8:	01010113          	addi	sp,sp,16
    800043bc:	00001317          	auipc	t1,0x1
    800043c0:	9b430067          	jr	-1612(t1) # 80004d70 <uartputc_sync>

00000000800043c4 <consoleintr>:
    800043c4:	fe010113          	addi	sp,sp,-32
    800043c8:	00813823          	sd	s0,16(sp)
    800043cc:	00913423          	sd	s1,8(sp)
    800043d0:	01213023          	sd	s2,0(sp)
    800043d4:	00113c23          	sd	ra,24(sp)
    800043d8:	02010413          	addi	s0,sp,32
    800043dc:	00004917          	auipc	s2,0x4
    800043e0:	14c90913          	addi	s2,s2,332 # 80008528 <cons>
    800043e4:	00050493          	mv	s1,a0
    800043e8:	00090513          	mv	a0,s2
    800043ec:	00001097          	auipc	ra,0x1
    800043f0:	e40080e7          	jalr	-448(ra) # 8000522c <acquire>
    800043f4:	02048c63          	beqz	s1,8000442c <consoleintr+0x68>
    800043f8:	0a092783          	lw	a5,160(s2)
    800043fc:	09892703          	lw	a4,152(s2)
    80004400:	07f00693          	li	a3,127
    80004404:	40e7873b          	subw	a4,a5,a4
    80004408:	02e6e263          	bltu	a3,a4,8000442c <consoleintr+0x68>
    8000440c:	00d00713          	li	a4,13
    80004410:	04e48063          	beq	s1,a4,80004450 <consoleintr+0x8c>
    80004414:	07f7f713          	andi	a4,a5,127
    80004418:	00e90733          	add	a4,s2,a4
    8000441c:	0017879b          	addiw	a5,a5,1
    80004420:	0af92023          	sw	a5,160(s2)
    80004424:	00970c23          	sb	s1,24(a4)
    80004428:	08f92e23          	sw	a5,156(s2)
    8000442c:	01013403          	ld	s0,16(sp)
    80004430:	01813083          	ld	ra,24(sp)
    80004434:	00813483          	ld	s1,8(sp)
    80004438:	00013903          	ld	s2,0(sp)
    8000443c:	00004517          	auipc	a0,0x4
    80004440:	0ec50513          	addi	a0,a0,236 # 80008528 <cons>
    80004444:	02010113          	addi	sp,sp,32
    80004448:	00001317          	auipc	t1,0x1
    8000444c:	eb030067          	jr	-336(t1) # 800052f8 <release>
    80004450:	00a00493          	li	s1,10
    80004454:	fc1ff06f          	j	80004414 <consoleintr+0x50>

0000000080004458 <consoleinit>:
    80004458:	fe010113          	addi	sp,sp,-32
    8000445c:	00113c23          	sd	ra,24(sp)
    80004460:	00813823          	sd	s0,16(sp)
    80004464:	00913423          	sd	s1,8(sp)
    80004468:	02010413          	addi	s0,sp,32
    8000446c:	00004497          	auipc	s1,0x4
    80004470:	0bc48493          	addi	s1,s1,188 # 80008528 <cons>
    80004474:	00048513          	mv	a0,s1
    80004478:	00002597          	auipc	a1,0x2
    8000447c:	fb858593          	addi	a1,a1,-72 # 80006430 <CONSOLE_STATUS+0x420>
    80004480:	00001097          	auipc	ra,0x1
    80004484:	d88080e7          	jalr	-632(ra) # 80005208 <initlock>
    80004488:	00000097          	auipc	ra,0x0
    8000448c:	7ac080e7          	jalr	1964(ra) # 80004c34 <uartinit>
    80004490:	01813083          	ld	ra,24(sp)
    80004494:	01013403          	ld	s0,16(sp)
    80004498:	00000797          	auipc	a5,0x0
    8000449c:	d9c78793          	addi	a5,a5,-612 # 80004234 <consoleread>
    800044a0:	0af4bc23          	sd	a5,184(s1)
    800044a4:	00000797          	auipc	a5,0x0
    800044a8:	cec78793          	addi	a5,a5,-788 # 80004190 <consolewrite>
    800044ac:	0cf4b023          	sd	a5,192(s1)
    800044b0:	00813483          	ld	s1,8(sp)
    800044b4:	02010113          	addi	sp,sp,32
    800044b8:	00008067          	ret

00000000800044bc <console_read>:
    800044bc:	ff010113          	addi	sp,sp,-16
    800044c0:	00813423          	sd	s0,8(sp)
    800044c4:	01010413          	addi	s0,sp,16
    800044c8:	00813403          	ld	s0,8(sp)
    800044cc:	00004317          	auipc	t1,0x4
    800044d0:	11433303          	ld	t1,276(t1) # 800085e0 <devsw+0x10>
    800044d4:	01010113          	addi	sp,sp,16
    800044d8:	00030067          	jr	t1

00000000800044dc <console_write>:
    800044dc:	ff010113          	addi	sp,sp,-16
    800044e0:	00813423          	sd	s0,8(sp)
    800044e4:	01010413          	addi	s0,sp,16
    800044e8:	00813403          	ld	s0,8(sp)
    800044ec:	00004317          	auipc	t1,0x4
    800044f0:	0fc33303          	ld	t1,252(t1) # 800085e8 <devsw+0x18>
    800044f4:	01010113          	addi	sp,sp,16
    800044f8:	00030067          	jr	t1

00000000800044fc <panic>:
    800044fc:	fe010113          	addi	sp,sp,-32
    80004500:	00113c23          	sd	ra,24(sp)
    80004504:	00813823          	sd	s0,16(sp)
    80004508:	00913423          	sd	s1,8(sp)
    8000450c:	02010413          	addi	s0,sp,32
    80004510:	00050493          	mv	s1,a0
    80004514:	00002517          	auipc	a0,0x2
    80004518:	f2450513          	addi	a0,a0,-220 # 80006438 <CONSOLE_STATUS+0x428>
    8000451c:	00004797          	auipc	a5,0x4
    80004520:	1607a623          	sw	zero,364(a5) # 80008688 <pr+0x18>
    80004524:	00000097          	auipc	ra,0x0
    80004528:	034080e7          	jalr	52(ra) # 80004558 <__printf>
    8000452c:	00048513          	mv	a0,s1
    80004530:	00000097          	auipc	ra,0x0
    80004534:	028080e7          	jalr	40(ra) # 80004558 <__printf>
    80004538:	00002517          	auipc	a0,0x2
    8000453c:	ee050513          	addi	a0,a0,-288 # 80006418 <CONSOLE_STATUS+0x408>
    80004540:	00000097          	auipc	ra,0x0
    80004544:	018080e7          	jalr	24(ra) # 80004558 <__printf>
    80004548:	00100793          	li	a5,1
    8000454c:	00003717          	auipc	a4,0x3
    80004550:	e8f72623          	sw	a5,-372(a4) # 800073d8 <panicked>
    80004554:	0000006f          	j	80004554 <panic+0x58>

0000000080004558 <__printf>:
    80004558:	f3010113          	addi	sp,sp,-208
    8000455c:	08813023          	sd	s0,128(sp)
    80004560:	07313423          	sd	s3,104(sp)
    80004564:	09010413          	addi	s0,sp,144
    80004568:	05813023          	sd	s8,64(sp)
    8000456c:	08113423          	sd	ra,136(sp)
    80004570:	06913c23          	sd	s1,120(sp)
    80004574:	07213823          	sd	s2,112(sp)
    80004578:	07413023          	sd	s4,96(sp)
    8000457c:	05513c23          	sd	s5,88(sp)
    80004580:	05613823          	sd	s6,80(sp)
    80004584:	05713423          	sd	s7,72(sp)
    80004588:	03913c23          	sd	s9,56(sp)
    8000458c:	03a13823          	sd	s10,48(sp)
    80004590:	03b13423          	sd	s11,40(sp)
    80004594:	00004317          	auipc	t1,0x4
    80004598:	0dc30313          	addi	t1,t1,220 # 80008670 <pr>
    8000459c:	01832c03          	lw	s8,24(t1)
    800045a0:	00b43423          	sd	a1,8(s0)
    800045a4:	00c43823          	sd	a2,16(s0)
    800045a8:	00d43c23          	sd	a3,24(s0)
    800045ac:	02e43023          	sd	a4,32(s0)
    800045b0:	02f43423          	sd	a5,40(s0)
    800045b4:	03043823          	sd	a6,48(s0)
    800045b8:	03143c23          	sd	a7,56(s0)
    800045bc:	00050993          	mv	s3,a0
    800045c0:	4a0c1663          	bnez	s8,80004a6c <__printf+0x514>
    800045c4:	60098c63          	beqz	s3,80004bdc <__printf+0x684>
    800045c8:	0009c503          	lbu	a0,0(s3)
    800045cc:	00840793          	addi	a5,s0,8
    800045d0:	f6f43c23          	sd	a5,-136(s0)
    800045d4:	00000493          	li	s1,0
    800045d8:	22050063          	beqz	a0,800047f8 <__printf+0x2a0>
    800045dc:	00002a37          	lui	s4,0x2
    800045e0:	00018ab7          	lui	s5,0x18
    800045e4:	000f4b37          	lui	s6,0xf4
    800045e8:	00989bb7          	lui	s7,0x989
    800045ec:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    800045f0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    800045f4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    800045f8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    800045fc:	00148c9b          	addiw	s9,s1,1
    80004600:	02500793          	li	a5,37
    80004604:	01998933          	add	s2,s3,s9
    80004608:	38f51263          	bne	a0,a5,8000498c <__printf+0x434>
    8000460c:	00094783          	lbu	a5,0(s2)
    80004610:	00078c9b          	sext.w	s9,a5
    80004614:	1e078263          	beqz	a5,800047f8 <__printf+0x2a0>
    80004618:	0024849b          	addiw	s1,s1,2
    8000461c:	07000713          	li	a4,112
    80004620:	00998933          	add	s2,s3,s1
    80004624:	38e78a63          	beq	a5,a4,800049b8 <__printf+0x460>
    80004628:	20f76863          	bltu	a4,a5,80004838 <__printf+0x2e0>
    8000462c:	42a78863          	beq	a5,a0,80004a5c <__printf+0x504>
    80004630:	06400713          	li	a4,100
    80004634:	40e79663          	bne	a5,a4,80004a40 <__printf+0x4e8>
    80004638:	f7843783          	ld	a5,-136(s0)
    8000463c:	0007a603          	lw	a2,0(a5)
    80004640:	00878793          	addi	a5,a5,8
    80004644:	f6f43c23          	sd	a5,-136(s0)
    80004648:	42064a63          	bltz	a2,80004a7c <__printf+0x524>
    8000464c:	00a00713          	li	a4,10
    80004650:	02e677bb          	remuw	a5,a2,a4
    80004654:	00002d97          	auipc	s11,0x2
    80004658:	e0cd8d93          	addi	s11,s11,-500 # 80006460 <digits>
    8000465c:	00900593          	li	a1,9
    80004660:	0006051b          	sext.w	a0,a2
    80004664:	00000c93          	li	s9,0
    80004668:	02079793          	slli	a5,a5,0x20
    8000466c:	0207d793          	srli	a5,a5,0x20
    80004670:	00fd87b3          	add	a5,s11,a5
    80004674:	0007c783          	lbu	a5,0(a5)
    80004678:	02e656bb          	divuw	a3,a2,a4
    8000467c:	f8f40023          	sb	a5,-128(s0)
    80004680:	14c5d863          	bge	a1,a2,800047d0 <__printf+0x278>
    80004684:	06300593          	li	a1,99
    80004688:	00100c93          	li	s9,1
    8000468c:	02e6f7bb          	remuw	a5,a3,a4
    80004690:	02079793          	slli	a5,a5,0x20
    80004694:	0207d793          	srli	a5,a5,0x20
    80004698:	00fd87b3          	add	a5,s11,a5
    8000469c:	0007c783          	lbu	a5,0(a5)
    800046a0:	02e6d73b          	divuw	a4,a3,a4
    800046a4:	f8f400a3          	sb	a5,-127(s0)
    800046a8:	12a5f463          	bgeu	a1,a0,800047d0 <__printf+0x278>
    800046ac:	00a00693          	li	a3,10
    800046b0:	00900593          	li	a1,9
    800046b4:	02d777bb          	remuw	a5,a4,a3
    800046b8:	02079793          	slli	a5,a5,0x20
    800046bc:	0207d793          	srli	a5,a5,0x20
    800046c0:	00fd87b3          	add	a5,s11,a5
    800046c4:	0007c503          	lbu	a0,0(a5)
    800046c8:	02d757bb          	divuw	a5,a4,a3
    800046cc:	f8a40123          	sb	a0,-126(s0)
    800046d0:	48e5f263          	bgeu	a1,a4,80004b54 <__printf+0x5fc>
    800046d4:	06300513          	li	a0,99
    800046d8:	02d7f5bb          	remuw	a1,a5,a3
    800046dc:	02059593          	slli	a1,a1,0x20
    800046e0:	0205d593          	srli	a1,a1,0x20
    800046e4:	00bd85b3          	add	a1,s11,a1
    800046e8:	0005c583          	lbu	a1,0(a1)
    800046ec:	02d7d7bb          	divuw	a5,a5,a3
    800046f0:	f8b401a3          	sb	a1,-125(s0)
    800046f4:	48e57263          	bgeu	a0,a4,80004b78 <__printf+0x620>
    800046f8:	3e700513          	li	a0,999
    800046fc:	02d7f5bb          	remuw	a1,a5,a3
    80004700:	02059593          	slli	a1,a1,0x20
    80004704:	0205d593          	srli	a1,a1,0x20
    80004708:	00bd85b3          	add	a1,s11,a1
    8000470c:	0005c583          	lbu	a1,0(a1)
    80004710:	02d7d7bb          	divuw	a5,a5,a3
    80004714:	f8b40223          	sb	a1,-124(s0)
    80004718:	46e57663          	bgeu	a0,a4,80004b84 <__printf+0x62c>
    8000471c:	02d7f5bb          	remuw	a1,a5,a3
    80004720:	02059593          	slli	a1,a1,0x20
    80004724:	0205d593          	srli	a1,a1,0x20
    80004728:	00bd85b3          	add	a1,s11,a1
    8000472c:	0005c583          	lbu	a1,0(a1)
    80004730:	02d7d7bb          	divuw	a5,a5,a3
    80004734:	f8b402a3          	sb	a1,-123(s0)
    80004738:	46ea7863          	bgeu	s4,a4,80004ba8 <__printf+0x650>
    8000473c:	02d7f5bb          	remuw	a1,a5,a3
    80004740:	02059593          	slli	a1,a1,0x20
    80004744:	0205d593          	srli	a1,a1,0x20
    80004748:	00bd85b3          	add	a1,s11,a1
    8000474c:	0005c583          	lbu	a1,0(a1)
    80004750:	02d7d7bb          	divuw	a5,a5,a3
    80004754:	f8b40323          	sb	a1,-122(s0)
    80004758:	3eeaf863          	bgeu	s5,a4,80004b48 <__printf+0x5f0>
    8000475c:	02d7f5bb          	remuw	a1,a5,a3
    80004760:	02059593          	slli	a1,a1,0x20
    80004764:	0205d593          	srli	a1,a1,0x20
    80004768:	00bd85b3          	add	a1,s11,a1
    8000476c:	0005c583          	lbu	a1,0(a1)
    80004770:	02d7d7bb          	divuw	a5,a5,a3
    80004774:	f8b403a3          	sb	a1,-121(s0)
    80004778:	42eb7e63          	bgeu	s6,a4,80004bb4 <__printf+0x65c>
    8000477c:	02d7f5bb          	remuw	a1,a5,a3
    80004780:	02059593          	slli	a1,a1,0x20
    80004784:	0205d593          	srli	a1,a1,0x20
    80004788:	00bd85b3          	add	a1,s11,a1
    8000478c:	0005c583          	lbu	a1,0(a1)
    80004790:	02d7d7bb          	divuw	a5,a5,a3
    80004794:	f8b40423          	sb	a1,-120(s0)
    80004798:	42ebfc63          	bgeu	s7,a4,80004bd0 <__printf+0x678>
    8000479c:	02079793          	slli	a5,a5,0x20
    800047a0:	0207d793          	srli	a5,a5,0x20
    800047a4:	00fd8db3          	add	s11,s11,a5
    800047a8:	000dc703          	lbu	a4,0(s11)
    800047ac:	00a00793          	li	a5,10
    800047b0:	00900c93          	li	s9,9
    800047b4:	f8e404a3          	sb	a4,-119(s0)
    800047b8:	00065c63          	bgez	a2,800047d0 <__printf+0x278>
    800047bc:	f9040713          	addi	a4,s0,-112
    800047c0:	00f70733          	add	a4,a4,a5
    800047c4:	02d00693          	li	a3,45
    800047c8:	fed70823          	sb	a3,-16(a4)
    800047cc:	00078c93          	mv	s9,a5
    800047d0:	f8040793          	addi	a5,s0,-128
    800047d4:	01978cb3          	add	s9,a5,s9
    800047d8:	f7f40d13          	addi	s10,s0,-129
    800047dc:	000cc503          	lbu	a0,0(s9)
    800047e0:	fffc8c93          	addi	s9,s9,-1
    800047e4:	00000097          	auipc	ra,0x0
    800047e8:	b90080e7          	jalr	-1136(ra) # 80004374 <consputc>
    800047ec:	ffac98e3          	bne	s9,s10,800047dc <__printf+0x284>
    800047f0:	00094503          	lbu	a0,0(s2)
    800047f4:	e00514e3          	bnez	a0,800045fc <__printf+0xa4>
    800047f8:	1a0c1663          	bnez	s8,800049a4 <__printf+0x44c>
    800047fc:	08813083          	ld	ra,136(sp)
    80004800:	08013403          	ld	s0,128(sp)
    80004804:	07813483          	ld	s1,120(sp)
    80004808:	07013903          	ld	s2,112(sp)
    8000480c:	06813983          	ld	s3,104(sp)
    80004810:	06013a03          	ld	s4,96(sp)
    80004814:	05813a83          	ld	s5,88(sp)
    80004818:	05013b03          	ld	s6,80(sp)
    8000481c:	04813b83          	ld	s7,72(sp)
    80004820:	04013c03          	ld	s8,64(sp)
    80004824:	03813c83          	ld	s9,56(sp)
    80004828:	03013d03          	ld	s10,48(sp)
    8000482c:	02813d83          	ld	s11,40(sp)
    80004830:	0d010113          	addi	sp,sp,208
    80004834:	00008067          	ret
    80004838:	07300713          	li	a4,115
    8000483c:	1ce78a63          	beq	a5,a4,80004a10 <__printf+0x4b8>
    80004840:	07800713          	li	a4,120
    80004844:	1ee79e63          	bne	a5,a4,80004a40 <__printf+0x4e8>
    80004848:	f7843783          	ld	a5,-136(s0)
    8000484c:	0007a703          	lw	a4,0(a5)
    80004850:	00878793          	addi	a5,a5,8
    80004854:	f6f43c23          	sd	a5,-136(s0)
    80004858:	28074263          	bltz	a4,80004adc <__printf+0x584>
    8000485c:	00002d97          	auipc	s11,0x2
    80004860:	c04d8d93          	addi	s11,s11,-1020 # 80006460 <digits>
    80004864:	00f77793          	andi	a5,a4,15
    80004868:	00fd87b3          	add	a5,s11,a5
    8000486c:	0007c683          	lbu	a3,0(a5)
    80004870:	00f00613          	li	a2,15
    80004874:	0007079b          	sext.w	a5,a4
    80004878:	f8d40023          	sb	a3,-128(s0)
    8000487c:	0047559b          	srliw	a1,a4,0x4
    80004880:	0047569b          	srliw	a3,a4,0x4
    80004884:	00000c93          	li	s9,0
    80004888:	0ee65063          	bge	a2,a4,80004968 <__printf+0x410>
    8000488c:	00f6f693          	andi	a3,a3,15
    80004890:	00dd86b3          	add	a3,s11,a3
    80004894:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80004898:	0087d79b          	srliw	a5,a5,0x8
    8000489c:	00100c93          	li	s9,1
    800048a0:	f8d400a3          	sb	a3,-127(s0)
    800048a4:	0cb67263          	bgeu	a2,a1,80004968 <__printf+0x410>
    800048a8:	00f7f693          	andi	a3,a5,15
    800048ac:	00dd86b3          	add	a3,s11,a3
    800048b0:	0006c583          	lbu	a1,0(a3)
    800048b4:	00f00613          	li	a2,15
    800048b8:	0047d69b          	srliw	a3,a5,0x4
    800048bc:	f8b40123          	sb	a1,-126(s0)
    800048c0:	0047d593          	srli	a1,a5,0x4
    800048c4:	28f67e63          	bgeu	a2,a5,80004b60 <__printf+0x608>
    800048c8:	00f6f693          	andi	a3,a3,15
    800048cc:	00dd86b3          	add	a3,s11,a3
    800048d0:	0006c503          	lbu	a0,0(a3)
    800048d4:	0087d813          	srli	a6,a5,0x8
    800048d8:	0087d69b          	srliw	a3,a5,0x8
    800048dc:	f8a401a3          	sb	a0,-125(s0)
    800048e0:	28b67663          	bgeu	a2,a1,80004b6c <__printf+0x614>
    800048e4:	00f6f693          	andi	a3,a3,15
    800048e8:	00dd86b3          	add	a3,s11,a3
    800048ec:	0006c583          	lbu	a1,0(a3)
    800048f0:	00c7d513          	srli	a0,a5,0xc
    800048f4:	00c7d69b          	srliw	a3,a5,0xc
    800048f8:	f8b40223          	sb	a1,-124(s0)
    800048fc:	29067a63          	bgeu	a2,a6,80004b90 <__printf+0x638>
    80004900:	00f6f693          	andi	a3,a3,15
    80004904:	00dd86b3          	add	a3,s11,a3
    80004908:	0006c583          	lbu	a1,0(a3)
    8000490c:	0107d813          	srli	a6,a5,0x10
    80004910:	0107d69b          	srliw	a3,a5,0x10
    80004914:	f8b402a3          	sb	a1,-123(s0)
    80004918:	28a67263          	bgeu	a2,a0,80004b9c <__printf+0x644>
    8000491c:	00f6f693          	andi	a3,a3,15
    80004920:	00dd86b3          	add	a3,s11,a3
    80004924:	0006c683          	lbu	a3,0(a3)
    80004928:	0147d79b          	srliw	a5,a5,0x14
    8000492c:	f8d40323          	sb	a3,-122(s0)
    80004930:	21067663          	bgeu	a2,a6,80004b3c <__printf+0x5e4>
    80004934:	02079793          	slli	a5,a5,0x20
    80004938:	0207d793          	srli	a5,a5,0x20
    8000493c:	00fd8db3          	add	s11,s11,a5
    80004940:	000dc683          	lbu	a3,0(s11)
    80004944:	00800793          	li	a5,8
    80004948:	00700c93          	li	s9,7
    8000494c:	f8d403a3          	sb	a3,-121(s0)
    80004950:	00075c63          	bgez	a4,80004968 <__printf+0x410>
    80004954:	f9040713          	addi	a4,s0,-112
    80004958:	00f70733          	add	a4,a4,a5
    8000495c:	02d00693          	li	a3,45
    80004960:	fed70823          	sb	a3,-16(a4)
    80004964:	00078c93          	mv	s9,a5
    80004968:	f8040793          	addi	a5,s0,-128
    8000496c:	01978cb3          	add	s9,a5,s9
    80004970:	f7f40d13          	addi	s10,s0,-129
    80004974:	000cc503          	lbu	a0,0(s9)
    80004978:	fffc8c93          	addi	s9,s9,-1
    8000497c:	00000097          	auipc	ra,0x0
    80004980:	9f8080e7          	jalr	-1544(ra) # 80004374 <consputc>
    80004984:	ff9d18e3          	bne	s10,s9,80004974 <__printf+0x41c>
    80004988:	0100006f          	j	80004998 <__printf+0x440>
    8000498c:	00000097          	auipc	ra,0x0
    80004990:	9e8080e7          	jalr	-1560(ra) # 80004374 <consputc>
    80004994:	000c8493          	mv	s1,s9
    80004998:	00094503          	lbu	a0,0(s2)
    8000499c:	c60510e3          	bnez	a0,800045fc <__printf+0xa4>
    800049a0:	e40c0ee3          	beqz	s8,800047fc <__printf+0x2a4>
    800049a4:	00004517          	auipc	a0,0x4
    800049a8:	ccc50513          	addi	a0,a0,-820 # 80008670 <pr>
    800049ac:	00001097          	auipc	ra,0x1
    800049b0:	94c080e7          	jalr	-1716(ra) # 800052f8 <release>
    800049b4:	e49ff06f          	j	800047fc <__printf+0x2a4>
    800049b8:	f7843783          	ld	a5,-136(s0)
    800049bc:	03000513          	li	a0,48
    800049c0:	01000d13          	li	s10,16
    800049c4:	00878713          	addi	a4,a5,8
    800049c8:	0007bc83          	ld	s9,0(a5)
    800049cc:	f6e43c23          	sd	a4,-136(s0)
    800049d0:	00000097          	auipc	ra,0x0
    800049d4:	9a4080e7          	jalr	-1628(ra) # 80004374 <consputc>
    800049d8:	07800513          	li	a0,120
    800049dc:	00000097          	auipc	ra,0x0
    800049e0:	998080e7          	jalr	-1640(ra) # 80004374 <consputc>
    800049e4:	00002d97          	auipc	s11,0x2
    800049e8:	a7cd8d93          	addi	s11,s11,-1412 # 80006460 <digits>
    800049ec:	03ccd793          	srli	a5,s9,0x3c
    800049f0:	00fd87b3          	add	a5,s11,a5
    800049f4:	0007c503          	lbu	a0,0(a5)
    800049f8:	fffd0d1b          	addiw	s10,s10,-1
    800049fc:	004c9c93          	slli	s9,s9,0x4
    80004a00:	00000097          	auipc	ra,0x0
    80004a04:	974080e7          	jalr	-1676(ra) # 80004374 <consputc>
    80004a08:	fe0d12e3          	bnez	s10,800049ec <__printf+0x494>
    80004a0c:	f8dff06f          	j	80004998 <__printf+0x440>
    80004a10:	f7843783          	ld	a5,-136(s0)
    80004a14:	0007bc83          	ld	s9,0(a5)
    80004a18:	00878793          	addi	a5,a5,8
    80004a1c:	f6f43c23          	sd	a5,-136(s0)
    80004a20:	000c9a63          	bnez	s9,80004a34 <__printf+0x4dc>
    80004a24:	1080006f          	j	80004b2c <__printf+0x5d4>
    80004a28:	001c8c93          	addi	s9,s9,1
    80004a2c:	00000097          	auipc	ra,0x0
    80004a30:	948080e7          	jalr	-1720(ra) # 80004374 <consputc>
    80004a34:	000cc503          	lbu	a0,0(s9)
    80004a38:	fe0518e3          	bnez	a0,80004a28 <__printf+0x4d0>
    80004a3c:	f5dff06f          	j	80004998 <__printf+0x440>
    80004a40:	02500513          	li	a0,37
    80004a44:	00000097          	auipc	ra,0x0
    80004a48:	930080e7          	jalr	-1744(ra) # 80004374 <consputc>
    80004a4c:	000c8513          	mv	a0,s9
    80004a50:	00000097          	auipc	ra,0x0
    80004a54:	924080e7          	jalr	-1756(ra) # 80004374 <consputc>
    80004a58:	f41ff06f          	j	80004998 <__printf+0x440>
    80004a5c:	02500513          	li	a0,37
    80004a60:	00000097          	auipc	ra,0x0
    80004a64:	914080e7          	jalr	-1772(ra) # 80004374 <consputc>
    80004a68:	f31ff06f          	j	80004998 <__printf+0x440>
    80004a6c:	00030513          	mv	a0,t1
    80004a70:	00000097          	auipc	ra,0x0
    80004a74:	7bc080e7          	jalr	1980(ra) # 8000522c <acquire>
    80004a78:	b4dff06f          	j	800045c4 <__printf+0x6c>
    80004a7c:	40c0053b          	negw	a0,a2
    80004a80:	00a00713          	li	a4,10
    80004a84:	02e576bb          	remuw	a3,a0,a4
    80004a88:	00002d97          	auipc	s11,0x2
    80004a8c:	9d8d8d93          	addi	s11,s11,-1576 # 80006460 <digits>
    80004a90:	ff700593          	li	a1,-9
    80004a94:	02069693          	slli	a3,a3,0x20
    80004a98:	0206d693          	srli	a3,a3,0x20
    80004a9c:	00dd86b3          	add	a3,s11,a3
    80004aa0:	0006c683          	lbu	a3,0(a3)
    80004aa4:	02e557bb          	divuw	a5,a0,a4
    80004aa8:	f8d40023          	sb	a3,-128(s0)
    80004aac:	10b65e63          	bge	a2,a1,80004bc8 <__printf+0x670>
    80004ab0:	06300593          	li	a1,99
    80004ab4:	02e7f6bb          	remuw	a3,a5,a4
    80004ab8:	02069693          	slli	a3,a3,0x20
    80004abc:	0206d693          	srli	a3,a3,0x20
    80004ac0:	00dd86b3          	add	a3,s11,a3
    80004ac4:	0006c683          	lbu	a3,0(a3)
    80004ac8:	02e7d73b          	divuw	a4,a5,a4
    80004acc:	00200793          	li	a5,2
    80004ad0:	f8d400a3          	sb	a3,-127(s0)
    80004ad4:	bca5ece3          	bltu	a1,a0,800046ac <__printf+0x154>
    80004ad8:	ce5ff06f          	j	800047bc <__printf+0x264>
    80004adc:	40e007bb          	negw	a5,a4
    80004ae0:	00002d97          	auipc	s11,0x2
    80004ae4:	980d8d93          	addi	s11,s11,-1664 # 80006460 <digits>
    80004ae8:	00f7f693          	andi	a3,a5,15
    80004aec:	00dd86b3          	add	a3,s11,a3
    80004af0:	0006c583          	lbu	a1,0(a3)
    80004af4:	ff100613          	li	a2,-15
    80004af8:	0047d69b          	srliw	a3,a5,0x4
    80004afc:	f8b40023          	sb	a1,-128(s0)
    80004b00:	0047d59b          	srliw	a1,a5,0x4
    80004b04:	0ac75e63          	bge	a4,a2,80004bc0 <__printf+0x668>
    80004b08:	00f6f693          	andi	a3,a3,15
    80004b0c:	00dd86b3          	add	a3,s11,a3
    80004b10:	0006c603          	lbu	a2,0(a3)
    80004b14:	00f00693          	li	a3,15
    80004b18:	0087d79b          	srliw	a5,a5,0x8
    80004b1c:	f8c400a3          	sb	a2,-127(s0)
    80004b20:	d8b6e4e3          	bltu	a3,a1,800048a8 <__printf+0x350>
    80004b24:	00200793          	li	a5,2
    80004b28:	e2dff06f          	j	80004954 <__printf+0x3fc>
    80004b2c:	00002c97          	auipc	s9,0x2
    80004b30:	914c8c93          	addi	s9,s9,-1772 # 80006440 <CONSOLE_STATUS+0x430>
    80004b34:	02800513          	li	a0,40
    80004b38:	ef1ff06f          	j	80004a28 <__printf+0x4d0>
    80004b3c:	00700793          	li	a5,7
    80004b40:	00600c93          	li	s9,6
    80004b44:	e0dff06f          	j	80004950 <__printf+0x3f8>
    80004b48:	00700793          	li	a5,7
    80004b4c:	00600c93          	li	s9,6
    80004b50:	c69ff06f          	j	800047b8 <__printf+0x260>
    80004b54:	00300793          	li	a5,3
    80004b58:	00200c93          	li	s9,2
    80004b5c:	c5dff06f          	j	800047b8 <__printf+0x260>
    80004b60:	00300793          	li	a5,3
    80004b64:	00200c93          	li	s9,2
    80004b68:	de9ff06f          	j	80004950 <__printf+0x3f8>
    80004b6c:	00400793          	li	a5,4
    80004b70:	00300c93          	li	s9,3
    80004b74:	dddff06f          	j	80004950 <__printf+0x3f8>
    80004b78:	00400793          	li	a5,4
    80004b7c:	00300c93          	li	s9,3
    80004b80:	c39ff06f          	j	800047b8 <__printf+0x260>
    80004b84:	00500793          	li	a5,5
    80004b88:	00400c93          	li	s9,4
    80004b8c:	c2dff06f          	j	800047b8 <__printf+0x260>
    80004b90:	00500793          	li	a5,5
    80004b94:	00400c93          	li	s9,4
    80004b98:	db9ff06f          	j	80004950 <__printf+0x3f8>
    80004b9c:	00600793          	li	a5,6
    80004ba0:	00500c93          	li	s9,5
    80004ba4:	dadff06f          	j	80004950 <__printf+0x3f8>
    80004ba8:	00600793          	li	a5,6
    80004bac:	00500c93          	li	s9,5
    80004bb0:	c09ff06f          	j	800047b8 <__printf+0x260>
    80004bb4:	00800793          	li	a5,8
    80004bb8:	00700c93          	li	s9,7
    80004bbc:	bfdff06f          	j	800047b8 <__printf+0x260>
    80004bc0:	00100793          	li	a5,1
    80004bc4:	d91ff06f          	j	80004954 <__printf+0x3fc>
    80004bc8:	00100793          	li	a5,1
    80004bcc:	bf1ff06f          	j	800047bc <__printf+0x264>
    80004bd0:	00900793          	li	a5,9
    80004bd4:	00800c93          	li	s9,8
    80004bd8:	be1ff06f          	j	800047b8 <__printf+0x260>
    80004bdc:	00002517          	auipc	a0,0x2
    80004be0:	86c50513          	addi	a0,a0,-1940 # 80006448 <CONSOLE_STATUS+0x438>
    80004be4:	00000097          	auipc	ra,0x0
    80004be8:	918080e7          	jalr	-1768(ra) # 800044fc <panic>

0000000080004bec <printfinit>:
    80004bec:	fe010113          	addi	sp,sp,-32
    80004bf0:	00813823          	sd	s0,16(sp)
    80004bf4:	00913423          	sd	s1,8(sp)
    80004bf8:	00113c23          	sd	ra,24(sp)
    80004bfc:	02010413          	addi	s0,sp,32
    80004c00:	00004497          	auipc	s1,0x4
    80004c04:	a7048493          	addi	s1,s1,-1424 # 80008670 <pr>
    80004c08:	00048513          	mv	a0,s1
    80004c0c:	00002597          	auipc	a1,0x2
    80004c10:	84c58593          	addi	a1,a1,-1972 # 80006458 <CONSOLE_STATUS+0x448>
    80004c14:	00000097          	auipc	ra,0x0
    80004c18:	5f4080e7          	jalr	1524(ra) # 80005208 <initlock>
    80004c1c:	01813083          	ld	ra,24(sp)
    80004c20:	01013403          	ld	s0,16(sp)
    80004c24:	0004ac23          	sw	zero,24(s1)
    80004c28:	00813483          	ld	s1,8(sp)
    80004c2c:	02010113          	addi	sp,sp,32
    80004c30:	00008067          	ret

0000000080004c34 <uartinit>:
    80004c34:	ff010113          	addi	sp,sp,-16
    80004c38:	00813423          	sd	s0,8(sp)
    80004c3c:	01010413          	addi	s0,sp,16
    80004c40:	100007b7          	lui	a5,0x10000
    80004c44:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80004c48:	f8000713          	li	a4,-128
    80004c4c:	00e781a3          	sb	a4,3(a5)
    80004c50:	00300713          	li	a4,3
    80004c54:	00e78023          	sb	a4,0(a5)
    80004c58:	000780a3          	sb	zero,1(a5)
    80004c5c:	00e781a3          	sb	a4,3(a5)
    80004c60:	00700693          	li	a3,7
    80004c64:	00d78123          	sb	a3,2(a5)
    80004c68:	00e780a3          	sb	a4,1(a5)
    80004c6c:	00813403          	ld	s0,8(sp)
    80004c70:	01010113          	addi	sp,sp,16
    80004c74:	00008067          	ret

0000000080004c78 <uartputc>:
    80004c78:	00002797          	auipc	a5,0x2
    80004c7c:	7607a783          	lw	a5,1888(a5) # 800073d8 <panicked>
    80004c80:	00078463          	beqz	a5,80004c88 <uartputc+0x10>
    80004c84:	0000006f          	j	80004c84 <uartputc+0xc>
    80004c88:	fd010113          	addi	sp,sp,-48
    80004c8c:	02813023          	sd	s0,32(sp)
    80004c90:	00913c23          	sd	s1,24(sp)
    80004c94:	01213823          	sd	s2,16(sp)
    80004c98:	01313423          	sd	s3,8(sp)
    80004c9c:	02113423          	sd	ra,40(sp)
    80004ca0:	03010413          	addi	s0,sp,48
    80004ca4:	00002917          	auipc	s2,0x2
    80004ca8:	73c90913          	addi	s2,s2,1852 # 800073e0 <uart_tx_r>
    80004cac:	00093783          	ld	a5,0(s2)
    80004cb0:	00002497          	auipc	s1,0x2
    80004cb4:	73848493          	addi	s1,s1,1848 # 800073e8 <uart_tx_w>
    80004cb8:	0004b703          	ld	a4,0(s1)
    80004cbc:	02078693          	addi	a3,a5,32
    80004cc0:	00050993          	mv	s3,a0
    80004cc4:	02e69c63          	bne	a3,a4,80004cfc <uartputc+0x84>
    80004cc8:	00001097          	auipc	ra,0x1
    80004ccc:	834080e7          	jalr	-1996(ra) # 800054fc <push_on>
    80004cd0:	00093783          	ld	a5,0(s2)
    80004cd4:	0004b703          	ld	a4,0(s1)
    80004cd8:	02078793          	addi	a5,a5,32
    80004cdc:	00e79463          	bne	a5,a4,80004ce4 <uartputc+0x6c>
    80004ce0:	0000006f          	j	80004ce0 <uartputc+0x68>
    80004ce4:	00001097          	auipc	ra,0x1
    80004ce8:	88c080e7          	jalr	-1908(ra) # 80005570 <pop_on>
    80004cec:	00093783          	ld	a5,0(s2)
    80004cf0:	0004b703          	ld	a4,0(s1)
    80004cf4:	02078693          	addi	a3,a5,32
    80004cf8:	fce688e3          	beq	a3,a4,80004cc8 <uartputc+0x50>
    80004cfc:	01f77693          	andi	a3,a4,31
    80004d00:	00004597          	auipc	a1,0x4
    80004d04:	99058593          	addi	a1,a1,-1648 # 80008690 <uart_tx_buf>
    80004d08:	00d586b3          	add	a3,a1,a3
    80004d0c:	00170713          	addi	a4,a4,1
    80004d10:	01368023          	sb	s3,0(a3)
    80004d14:	00e4b023          	sd	a4,0(s1)
    80004d18:	10000637          	lui	a2,0x10000
    80004d1c:	02f71063          	bne	a4,a5,80004d3c <uartputc+0xc4>
    80004d20:	0340006f          	j	80004d54 <uartputc+0xdc>
    80004d24:	00074703          	lbu	a4,0(a4)
    80004d28:	00f93023          	sd	a5,0(s2)
    80004d2c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80004d30:	00093783          	ld	a5,0(s2)
    80004d34:	0004b703          	ld	a4,0(s1)
    80004d38:	00f70e63          	beq	a4,a5,80004d54 <uartputc+0xdc>
    80004d3c:	00564683          	lbu	a3,5(a2)
    80004d40:	01f7f713          	andi	a4,a5,31
    80004d44:	00e58733          	add	a4,a1,a4
    80004d48:	0206f693          	andi	a3,a3,32
    80004d4c:	00178793          	addi	a5,a5,1
    80004d50:	fc069ae3          	bnez	a3,80004d24 <uartputc+0xac>
    80004d54:	02813083          	ld	ra,40(sp)
    80004d58:	02013403          	ld	s0,32(sp)
    80004d5c:	01813483          	ld	s1,24(sp)
    80004d60:	01013903          	ld	s2,16(sp)
    80004d64:	00813983          	ld	s3,8(sp)
    80004d68:	03010113          	addi	sp,sp,48
    80004d6c:	00008067          	ret

0000000080004d70 <uartputc_sync>:
    80004d70:	ff010113          	addi	sp,sp,-16
    80004d74:	00813423          	sd	s0,8(sp)
    80004d78:	01010413          	addi	s0,sp,16
    80004d7c:	00002717          	auipc	a4,0x2
    80004d80:	65c72703          	lw	a4,1628(a4) # 800073d8 <panicked>
    80004d84:	02071663          	bnez	a4,80004db0 <uartputc_sync+0x40>
    80004d88:	00050793          	mv	a5,a0
    80004d8c:	100006b7          	lui	a3,0x10000
    80004d90:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80004d94:	02077713          	andi	a4,a4,32
    80004d98:	fe070ce3          	beqz	a4,80004d90 <uartputc_sync+0x20>
    80004d9c:	0ff7f793          	andi	a5,a5,255
    80004da0:	00f68023          	sb	a5,0(a3)
    80004da4:	00813403          	ld	s0,8(sp)
    80004da8:	01010113          	addi	sp,sp,16
    80004dac:	00008067          	ret
    80004db0:	0000006f          	j	80004db0 <uartputc_sync+0x40>

0000000080004db4 <uartstart>:
    80004db4:	ff010113          	addi	sp,sp,-16
    80004db8:	00813423          	sd	s0,8(sp)
    80004dbc:	01010413          	addi	s0,sp,16
    80004dc0:	00002617          	auipc	a2,0x2
    80004dc4:	62060613          	addi	a2,a2,1568 # 800073e0 <uart_tx_r>
    80004dc8:	00002517          	auipc	a0,0x2
    80004dcc:	62050513          	addi	a0,a0,1568 # 800073e8 <uart_tx_w>
    80004dd0:	00063783          	ld	a5,0(a2)
    80004dd4:	00053703          	ld	a4,0(a0)
    80004dd8:	04f70263          	beq	a4,a5,80004e1c <uartstart+0x68>
    80004ddc:	100005b7          	lui	a1,0x10000
    80004de0:	00004817          	auipc	a6,0x4
    80004de4:	8b080813          	addi	a6,a6,-1872 # 80008690 <uart_tx_buf>
    80004de8:	01c0006f          	j	80004e04 <uartstart+0x50>
    80004dec:	0006c703          	lbu	a4,0(a3)
    80004df0:	00f63023          	sd	a5,0(a2)
    80004df4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80004df8:	00063783          	ld	a5,0(a2)
    80004dfc:	00053703          	ld	a4,0(a0)
    80004e00:	00f70e63          	beq	a4,a5,80004e1c <uartstart+0x68>
    80004e04:	01f7f713          	andi	a4,a5,31
    80004e08:	00e806b3          	add	a3,a6,a4
    80004e0c:	0055c703          	lbu	a4,5(a1)
    80004e10:	00178793          	addi	a5,a5,1
    80004e14:	02077713          	andi	a4,a4,32
    80004e18:	fc071ae3          	bnez	a4,80004dec <uartstart+0x38>
    80004e1c:	00813403          	ld	s0,8(sp)
    80004e20:	01010113          	addi	sp,sp,16
    80004e24:	00008067          	ret

0000000080004e28 <uartgetc>:
    80004e28:	ff010113          	addi	sp,sp,-16
    80004e2c:	00813423          	sd	s0,8(sp)
    80004e30:	01010413          	addi	s0,sp,16
    80004e34:	10000737          	lui	a4,0x10000
    80004e38:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80004e3c:	0017f793          	andi	a5,a5,1
    80004e40:	00078c63          	beqz	a5,80004e58 <uartgetc+0x30>
    80004e44:	00074503          	lbu	a0,0(a4)
    80004e48:	0ff57513          	andi	a0,a0,255
    80004e4c:	00813403          	ld	s0,8(sp)
    80004e50:	01010113          	addi	sp,sp,16
    80004e54:	00008067          	ret
    80004e58:	fff00513          	li	a0,-1
    80004e5c:	ff1ff06f          	j	80004e4c <uartgetc+0x24>

0000000080004e60 <uartintr>:
    80004e60:	100007b7          	lui	a5,0x10000
    80004e64:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80004e68:	0017f793          	andi	a5,a5,1
    80004e6c:	0a078463          	beqz	a5,80004f14 <uartintr+0xb4>
    80004e70:	fe010113          	addi	sp,sp,-32
    80004e74:	00813823          	sd	s0,16(sp)
    80004e78:	00913423          	sd	s1,8(sp)
    80004e7c:	00113c23          	sd	ra,24(sp)
    80004e80:	02010413          	addi	s0,sp,32
    80004e84:	100004b7          	lui	s1,0x10000
    80004e88:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80004e8c:	0ff57513          	andi	a0,a0,255
    80004e90:	fffff097          	auipc	ra,0xfffff
    80004e94:	534080e7          	jalr	1332(ra) # 800043c4 <consoleintr>
    80004e98:	0054c783          	lbu	a5,5(s1)
    80004e9c:	0017f793          	andi	a5,a5,1
    80004ea0:	fe0794e3          	bnez	a5,80004e88 <uartintr+0x28>
    80004ea4:	00002617          	auipc	a2,0x2
    80004ea8:	53c60613          	addi	a2,a2,1340 # 800073e0 <uart_tx_r>
    80004eac:	00002517          	auipc	a0,0x2
    80004eb0:	53c50513          	addi	a0,a0,1340 # 800073e8 <uart_tx_w>
    80004eb4:	00063783          	ld	a5,0(a2)
    80004eb8:	00053703          	ld	a4,0(a0)
    80004ebc:	04f70263          	beq	a4,a5,80004f00 <uartintr+0xa0>
    80004ec0:	100005b7          	lui	a1,0x10000
    80004ec4:	00003817          	auipc	a6,0x3
    80004ec8:	7cc80813          	addi	a6,a6,1996 # 80008690 <uart_tx_buf>
    80004ecc:	01c0006f          	j	80004ee8 <uartintr+0x88>
    80004ed0:	0006c703          	lbu	a4,0(a3)
    80004ed4:	00f63023          	sd	a5,0(a2)
    80004ed8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80004edc:	00063783          	ld	a5,0(a2)
    80004ee0:	00053703          	ld	a4,0(a0)
    80004ee4:	00f70e63          	beq	a4,a5,80004f00 <uartintr+0xa0>
    80004ee8:	01f7f713          	andi	a4,a5,31
    80004eec:	00e806b3          	add	a3,a6,a4
    80004ef0:	0055c703          	lbu	a4,5(a1)
    80004ef4:	00178793          	addi	a5,a5,1
    80004ef8:	02077713          	andi	a4,a4,32
    80004efc:	fc071ae3          	bnez	a4,80004ed0 <uartintr+0x70>
    80004f00:	01813083          	ld	ra,24(sp)
    80004f04:	01013403          	ld	s0,16(sp)
    80004f08:	00813483          	ld	s1,8(sp)
    80004f0c:	02010113          	addi	sp,sp,32
    80004f10:	00008067          	ret
    80004f14:	00002617          	auipc	a2,0x2
    80004f18:	4cc60613          	addi	a2,a2,1228 # 800073e0 <uart_tx_r>
    80004f1c:	00002517          	auipc	a0,0x2
    80004f20:	4cc50513          	addi	a0,a0,1228 # 800073e8 <uart_tx_w>
    80004f24:	00063783          	ld	a5,0(a2)
    80004f28:	00053703          	ld	a4,0(a0)
    80004f2c:	04f70263          	beq	a4,a5,80004f70 <uartintr+0x110>
    80004f30:	100005b7          	lui	a1,0x10000
    80004f34:	00003817          	auipc	a6,0x3
    80004f38:	75c80813          	addi	a6,a6,1884 # 80008690 <uart_tx_buf>
    80004f3c:	01c0006f          	j	80004f58 <uartintr+0xf8>
    80004f40:	0006c703          	lbu	a4,0(a3)
    80004f44:	00f63023          	sd	a5,0(a2)
    80004f48:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80004f4c:	00063783          	ld	a5,0(a2)
    80004f50:	00053703          	ld	a4,0(a0)
    80004f54:	02f70063          	beq	a4,a5,80004f74 <uartintr+0x114>
    80004f58:	01f7f713          	andi	a4,a5,31
    80004f5c:	00e806b3          	add	a3,a6,a4
    80004f60:	0055c703          	lbu	a4,5(a1)
    80004f64:	00178793          	addi	a5,a5,1
    80004f68:	02077713          	andi	a4,a4,32
    80004f6c:	fc071ae3          	bnez	a4,80004f40 <uartintr+0xe0>
    80004f70:	00008067          	ret
    80004f74:	00008067          	ret

0000000080004f78 <kinit>:
    80004f78:	fc010113          	addi	sp,sp,-64
    80004f7c:	02913423          	sd	s1,40(sp)
    80004f80:	fffff7b7          	lui	a5,0xfffff
    80004f84:	00004497          	auipc	s1,0x4
    80004f88:	72b48493          	addi	s1,s1,1835 # 800096af <end+0xfff>
    80004f8c:	02813823          	sd	s0,48(sp)
    80004f90:	01313c23          	sd	s3,24(sp)
    80004f94:	00f4f4b3          	and	s1,s1,a5
    80004f98:	02113c23          	sd	ra,56(sp)
    80004f9c:	03213023          	sd	s2,32(sp)
    80004fa0:	01413823          	sd	s4,16(sp)
    80004fa4:	01513423          	sd	s5,8(sp)
    80004fa8:	04010413          	addi	s0,sp,64
    80004fac:	000017b7          	lui	a5,0x1
    80004fb0:	01100993          	li	s3,17
    80004fb4:	00f487b3          	add	a5,s1,a5
    80004fb8:	01b99993          	slli	s3,s3,0x1b
    80004fbc:	06f9e063          	bltu	s3,a5,8000501c <kinit+0xa4>
    80004fc0:	00003a97          	auipc	s5,0x3
    80004fc4:	6f0a8a93          	addi	s5,s5,1776 # 800086b0 <end>
    80004fc8:	0754ec63          	bltu	s1,s5,80005040 <kinit+0xc8>
    80004fcc:	0734fa63          	bgeu	s1,s3,80005040 <kinit+0xc8>
    80004fd0:	00088a37          	lui	s4,0x88
    80004fd4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80004fd8:	00002917          	auipc	s2,0x2
    80004fdc:	41890913          	addi	s2,s2,1048 # 800073f0 <kmem>
    80004fe0:	00ca1a13          	slli	s4,s4,0xc
    80004fe4:	0140006f          	j	80004ff8 <kinit+0x80>
    80004fe8:	000017b7          	lui	a5,0x1
    80004fec:	00f484b3          	add	s1,s1,a5
    80004ff0:	0554e863          	bltu	s1,s5,80005040 <kinit+0xc8>
    80004ff4:	0534f663          	bgeu	s1,s3,80005040 <kinit+0xc8>
    80004ff8:	00001637          	lui	a2,0x1
    80004ffc:	00100593          	li	a1,1
    80005000:	00048513          	mv	a0,s1
    80005004:	00000097          	auipc	ra,0x0
    80005008:	5e4080e7          	jalr	1508(ra) # 800055e8 <__memset>
    8000500c:	00093783          	ld	a5,0(s2)
    80005010:	00f4b023          	sd	a5,0(s1)
    80005014:	00993023          	sd	s1,0(s2)
    80005018:	fd4498e3          	bne	s1,s4,80004fe8 <kinit+0x70>
    8000501c:	03813083          	ld	ra,56(sp)
    80005020:	03013403          	ld	s0,48(sp)
    80005024:	02813483          	ld	s1,40(sp)
    80005028:	02013903          	ld	s2,32(sp)
    8000502c:	01813983          	ld	s3,24(sp)
    80005030:	01013a03          	ld	s4,16(sp)
    80005034:	00813a83          	ld	s5,8(sp)
    80005038:	04010113          	addi	sp,sp,64
    8000503c:	00008067          	ret
    80005040:	00001517          	auipc	a0,0x1
    80005044:	43850513          	addi	a0,a0,1080 # 80006478 <digits+0x18>
    80005048:	fffff097          	auipc	ra,0xfffff
    8000504c:	4b4080e7          	jalr	1204(ra) # 800044fc <panic>

0000000080005050 <freerange>:
    80005050:	fc010113          	addi	sp,sp,-64
    80005054:	000017b7          	lui	a5,0x1
    80005058:	02913423          	sd	s1,40(sp)
    8000505c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80005060:	009504b3          	add	s1,a0,s1
    80005064:	fffff537          	lui	a0,0xfffff
    80005068:	02813823          	sd	s0,48(sp)
    8000506c:	02113c23          	sd	ra,56(sp)
    80005070:	03213023          	sd	s2,32(sp)
    80005074:	01313c23          	sd	s3,24(sp)
    80005078:	01413823          	sd	s4,16(sp)
    8000507c:	01513423          	sd	s5,8(sp)
    80005080:	01613023          	sd	s6,0(sp)
    80005084:	04010413          	addi	s0,sp,64
    80005088:	00a4f4b3          	and	s1,s1,a0
    8000508c:	00f487b3          	add	a5,s1,a5
    80005090:	06f5e463          	bltu	a1,a5,800050f8 <freerange+0xa8>
    80005094:	00003a97          	auipc	s5,0x3
    80005098:	61ca8a93          	addi	s5,s5,1564 # 800086b0 <end>
    8000509c:	0954e263          	bltu	s1,s5,80005120 <freerange+0xd0>
    800050a0:	01100993          	li	s3,17
    800050a4:	01b99993          	slli	s3,s3,0x1b
    800050a8:	0734fc63          	bgeu	s1,s3,80005120 <freerange+0xd0>
    800050ac:	00058a13          	mv	s4,a1
    800050b0:	00002917          	auipc	s2,0x2
    800050b4:	34090913          	addi	s2,s2,832 # 800073f0 <kmem>
    800050b8:	00002b37          	lui	s6,0x2
    800050bc:	0140006f          	j	800050d0 <freerange+0x80>
    800050c0:	000017b7          	lui	a5,0x1
    800050c4:	00f484b3          	add	s1,s1,a5
    800050c8:	0554ec63          	bltu	s1,s5,80005120 <freerange+0xd0>
    800050cc:	0534fa63          	bgeu	s1,s3,80005120 <freerange+0xd0>
    800050d0:	00001637          	lui	a2,0x1
    800050d4:	00100593          	li	a1,1
    800050d8:	00048513          	mv	a0,s1
    800050dc:	00000097          	auipc	ra,0x0
    800050e0:	50c080e7          	jalr	1292(ra) # 800055e8 <__memset>
    800050e4:	00093703          	ld	a4,0(s2)
    800050e8:	016487b3          	add	a5,s1,s6
    800050ec:	00e4b023          	sd	a4,0(s1)
    800050f0:	00993023          	sd	s1,0(s2)
    800050f4:	fcfa76e3          	bgeu	s4,a5,800050c0 <freerange+0x70>
    800050f8:	03813083          	ld	ra,56(sp)
    800050fc:	03013403          	ld	s0,48(sp)
    80005100:	02813483          	ld	s1,40(sp)
    80005104:	02013903          	ld	s2,32(sp)
    80005108:	01813983          	ld	s3,24(sp)
    8000510c:	01013a03          	ld	s4,16(sp)
    80005110:	00813a83          	ld	s5,8(sp)
    80005114:	00013b03          	ld	s6,0(sp)
    80005118:	04010113          	addi	sp,sp,64
    8000511c:	00008067          	ret
    80005120:	00001517          	auipc	a0,0x1
    80005124:	35850513          	addi	a0,a0,856 # 80006478 <digits+0x18>
    80005128:	fffff097          	auipc	ra,0xfffff
    8000512c:	3d4080e7          	jalr	980(ra) # 800044fc <panic>

0000000080005130 <kfree>:
    80005130:	fe010113          	addi	sp,sp,-32
    80005134:	00813823          	sd	s0,16(sp)
    80005138:	00113c23          	sd	ra,24(sp)
    8000513c:	00913423          	sd	s1,8(sp)
    80005140:	02010413          	addi	s0,sp,32
    80005144:	03451793          	slli	a5,a0,0x34
    80005148:	04079c63          	bnez	a5,800051a0 <kfree+0x70>
    8000514c:	00003797          	auipc	a5,0x3
    80005150:	56478793          	addi	a5,a5,1380 # 800086b0 <end>
    80005154:	00050493          	mv	s1,a0
    80005158:	04f56463          	bltu	a0,a5,800051a0 <kfree+0x70>
    8000515c:	01100793          	li	a5,17
    80005160:	01b79793          	slli	a5,a5,0x1b
    80005164:	02f57e63          	bgeu	a0,a5,800051a0 <kfree+0x70>
    80005168:	00001637          	lui	a2,0x1
    8000516c:	00100593          	li	a1,1
    80005170:	00000097          	auipc	ra,0x0
    80005174:	478080e7          	jalr	1144(ra) # 800055e8 <__memset>
    80005178:	00002797          	auipc	a5,0x2
    8000517c:	27878793          	addi	a5,a5,632 # 800073f0 <kmem>
    80005180:	0007b703          	ld	a4,0(a5)
    80005184:	01813083          	ld	ra,24(sp)
    80005188:	01013403          	ld	s0,16(sp)
    8000518c:	00e4b023          	sd	a4,0(s1)
    80005190:	0097b023          	sd	s1,0(a5)
    80005194:	00813483          	ld	s1,8(sp)
    80005198:	02010113          	addi	sp,sp,32
    8000519c:	00008067          	ret
    800051a0:	00001517          	auipc	a0,0x1
    800051a4:	2d850513          	addi	a0,a0,728 # 80006478 <digits+0x18>
    800051a8:	fffff097          	auipc	ra,0xfffff
    800051ac:	354080e7          	jalr	852(ra) # 800044fc <panic>

00000000800051b0 <kalloc>:
    800051b0:	fe010113          	addi	sp,sp,-32
    800051b4:	00813823          	sd	s0,16(sp)
    800051b8:	00913423          	sd	s1,8(sp)
    800051bc:	00113c23          	sd	ra,24(sp)
    800051c0:	02010413          	addi	s0,sp,32
    800051c4:	00002797          	auipc	a5,0x2
    800051c8:	22c78793          	addi	a5,a5,556 # 800073f0 <kmem>
    800051cc:	0007b483          	ld	s1,0(a5)
    800051d0:	02048063          	beqz	s1,800051f0 <kalloc+0x40>
    800051d4:	0004b703          	ld	a4,0(s1)
    800051d8:	00001637          	lui	a2,0x1
    800051dc:	00500593          	li	a1,5
    800051e0:	00048513          	mv	a0,s1
    800051e4:	00e7b023          	sd	a4,0(a5)
    800051e8:	00000097          	auipc	ra,0x0
    800051ec:	400080e7          	jalr	1024(ra) # 800055e8 <__memset>
    800051f0:	01813083          	ld	ra,24(sp)
    800051f4:	01013403          	ld	s0,16(sp)
    800051f8:	00048513          	mv	a0,s1
    800051fc:	00813483          	ld	s1,8(sp)
    80005200:	02010113          	addi	sp,sp,32
    80005204:	00008067          	ret

0000000080005208 <initlock>:
    80005208:	ff010113          	addi	sp,sp,-16
    8000520c:	00813423          	sd	s0,8(sp)
    80005210:	01010413          	addi	s0,sp,16
    80005214:	00813403          	ld	s0,8(sp)
    80005218:	00b53423          	sd	a1,8(a0)
    8000521c:	00052023          	sw	zero,0(a0)
    80005220:	00053823          	sd	zero,16(a0)
    80005224:	01010113          	addi	sp,sp,16
    80005228:	00008067          	ret

000000008000522c <acquire>:
    8000522c:	fe010113          	addi	sp,sp,-32
    80005230:	00813823          	sd	s0,16(sp)
    80005234:	00913423          	sd	s1,8(sp)
    80005238:	00113c23          	sd	ra,24(sp)
    8000523c:	01213023          	sd	s2,0(sp)
    80005240:	02010413          	addi	s0,sp,32
    80005244:	00050493          	mv	s1,a0
    80005248:	10002973          	csrr	s2,sstatus
    8000524c:	100027f3          	csrr	a5,sstatus
    80005250:	ffd7f793          	andi	a5,a5,-3
    80005254:	10079073          	csrw	sstatus,a5
    80005258:	fffff097          	auipc	ra,0xfffff
    8000525c:	8e0080e7          	jalr	-1824(ra) # 80003b38 <mycpu>
    80005260:	07852783          	lw	a5,120(a0)
    80005264:	06078e63          	beqz	a5,800052e0 <acquire+0xb4>
    80005268:	fffff097          	auipc	ra,0xfffff
    8000526c:	8d0080e7          	jalr	-1840(ra) # 80003b38 <mycpu>
    80005270:	07852783          	lw	a5,120(a0)
    80005274:	0004a703          	lw	a4,0(s1)
    80005278:	0017879b          	addiw	a5,a5,1
    8000527c:	06f52c23          	sw	a5,120(a0)
    80005280:	04071063          	bnez	a4,800052c0 <acquire+0x94>
    80005284:	00100713          	li	a4,1
    80005288:	00070793          	mv	a5,a4
    8000528c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80005290:	0007879b          	sext.w	a5,a5
    80005294:	fe079ae3          	bnez	a5,80005288 <acquire+0x5c>
    80005298:	0ff0000f          	fence
    8000529c:	fffff097          	auipc	ra,0xfffff
    800052a0:	89c080e7          	jalr	-1892(ra) # 80003b38 <mycpu>
    800052a4:	01813083          	ld	ra,24(sp)
    800052a8:	01013403          	ld	s0,16(sp)
    800052ac:	00a4b823          	sd	a0,16(s1)
    800052b0:	00013903          	ld	s2,0(sp)
    800052b4:	00813483          	ld	s1,8(sp)
    800052b8:	02010113          	addi	sp,sp,32
    800052bc:	00008067          	ret
    800052c0:	0104b903          	ld	s2,16(s1)
    800052c4:	fffff097          	auipc	ra,0xfffff
    800052c8:	874080e7          	jalr	-1932(ra) # 80003b38 <mycpu>
    800052cc:	faa91ce3          	bne	s2,a0,80005284 <acquire+0x58>
    800052d0:	00001517          	auipc	a0,0x1
    800052d4:	1b050513          	addi	a0,a0,432 # 80006480 <digits+0x20>
    800052d8:	fffff097          	auipc	ra,0xfffff
    800052dc:	224080e7          	jalr	548(ra) # 800044fc <panic>
    800052e0:	00195913          	srli	s2,s2,0x1
    800052e4:	fffff097          	auipc	ra,0xfffff
    800052e8:	854080e7          	jalr	-1964(ra) # 80003b38 <mycpu>
    800052ec:	00197913          	andi	s2,s2,1
    800052f0:	07252e23          	sw	s2,124(a0)
    800052f4:	f75ff06f          	j	80005268 <acquire+0x3c>

00000000800052f8 <release>:
    800052f8:	fe010113          	addi	sp,sp,-32
    800052fc:	00813823          	sd	s0,16(sp)
    80005300:	00113c23          	sd	ra,24(sp)
    80005304:	00913423          	sd	s1,8(sp)
    80005308:	01213023          	sd	s2,0(sp)
    8000530c:	02010413          	addi	s0,sp,32
    80005310:	00052783          	lw	a5,0(a0)
    80005314:	00079a63          	bnez	a5,80005328 <release+0x30>
    80005318:	00001517          	auipc	a0,0x1
    8000531c:	17050513          	addi	a0,a0,368 # 80006488 <digits+0x28>
    80005320:	fffff097          	auipc	ra,0xfffff
    80005324:	1dc080e7          	jalr	476(ra) # 800044fc <panic>
    80005328:	01053903          	ld	s2,16(a0)
    8000532c:	00050493          	mv	s1,a0
    80005330:	fffff097          	auipc	ra,0xfffff
    80005334:	808080e7          	jalr	-2040(ra) # 80003b38 <mycpu>
    80005338:	fea910e3          	bne	s2,a0,80005318 <release+0x20>
    8000533c:	0004b823          	sd	zero,16(s1)
    80005340:	0ff0000f          	fence
    80005344:	0f50000f          	fence	iorw,ow
    80005348:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000534c:	ffffe097          	auipc	ra,0xffffe
    80005350:	7ec080e7          	jalr	2028(ra) # 80003b38 <mycpu>
    80005354:	100027f3          	csrr	a5,sstatus
    80005358:	0027f793          	andi	a5,a5,2
    8000535c:	04079a63          	bnez	a5,800053b0 <release+0xb8>
    80005360:	07852783          	lw	a5,120(a0)
    80005364:	02f05e63          	blez	a5,800053a0 <release+0xa8>
    80005368:	fff7871b          	addiw	a4,a5,-1
    8000536c:	06e52c23          	sw	a4,120(a0)
    80005370:	00071c63          	bnez	a4,80005388 <release+0x90>
    80005374:	07c52783          	lw	a5,124(a0)
    80005378:	00078863          	beqz	a5,80005388 <release+0x90>
    8000537c:	100027f3          	csrr	a5,sstatus
    80005380:	0027e793          	ori	a5,a5,2
    80005384:	10079073          	csrw	sstatus,a5
    80005388:	01813083          	ld	ra,24(sp)
    8000538c:	01013403          	ld	s0,16(sp)
    80005390:	00813483          	ld	s1,8(sp)
    80005394:	00013903          	ld	s2,0(sp)
    80005398:	02010113          	addi	sp,sp,32
    8000539c:	00008067          	ret
    800053a0:	00001517          	auipc	a0,0x1
    800053a4:	10850513          	addi	a0,a0,264 # 800064a8 <digits+0x48>
    800053a8:	fffff097          	auipc	ra,0xfffff
    800053ac:	154080e7          	jalr	340(ra) # 800044fc <panic>
    800053b0:	00001517          	auipc	a0,0x1
    800053b4:	0e050513          	addi	a0,a0,224 # 80006490 <digits+0x30>
    800053b8:	fffff097          	auipc	ra,0xfffff
    800053bc:	144080e7          	jalr	324(ra) # 800044fc <panic>

00000000800053c0 <holding>:
    800053c0:	00052783          	lw	a5,0(a0)
    800053c4:	00079663          	bnez	a5,800053d0 <holding+0x10>
    800053c8:	00000513          	li	a0,0
    800053cc:	00008067          	ret
    800053d0:	fe010113          	addi	sp,sp,-32
    800053d4:	00813823          	sd	s0,16(sp)
    800053d8:	00913423          	sd	s1,8(sp)
    800053dc:	00113c23          	sd	ra,24(sp)
    800053e0:	02010413          	addi	s0,sp,32
    800053e4:	01053483          	ld	s1,16(a0)
    800053e8:	ffffe097          	auipc	ra,0xffffe
    800053ec:	750080e7          	jalr	1872(ra) # 80003b38 <mycpu>
    800053f0:	01813083          	ld	ra,24(sp)
    800053f4:	01013403          	ld	s0,16(sp)
    800053f8:	40a48533          	sub	a0,s1,a0
    800053fc:	00153513          	seqz	a0,a0
    80005400:	00813483          	ld	s1,8(sp)
    80005404:	02010113          	addi	sp,sp,32
    80005408:	00008067          	ret

000000008000540c <push_off>:
    8000540c:	fe010113          	addi	sp,sp,-32
    80005410:	00813823          	sd	s0,16(sp)
    80005414:	00113c23          	sd	ra,24(sp)
    80005418:	00913423          	sd	s1,8(sp)
    8000541c:	02010413          	addi	s0,sp,32
    80005420:	100024f3          	csrr	s1,sstatus
    80005424:	100027f3          	csrr	a5,sstatus
    80005428:	ffd7f793          	andi	a5,a5,-3
    8000542c:	10079073          	csrw	sstatus,a5
    80005430:	ffffe097          	auipc	ra,0xffffe
    80005434:	708080e7          	jalr	1800(ra) # 80003b38 <mycpu>
    80005438:	07852783          	lw	a5,120(a0)
    8000543c:	02078663          	beqz	a5,80005468 <push_off+0x5c>
    80005440:	ffffe097          	auipc	ra,0xffffe
    80005444:	6f8080e7          	jalr	1784(ra) # 80003b38 <mycpu>
    80005448:	07852783          	lw	a5,120(a0)
    8000544c:	01813083          	ld	ra,24(sp)
    80005450:	01013403          	ld	s0,16(sp)
    80005454:	0017879b          	addiw	a5,a5,1
    80005458:	06f52c23          	sw	a5,120(a0)
    8000545c:	00813483          	ld	s1,8(sp)
    80005460:	02010113          	addi	sp,sp,32
    80005464:	00008067          	ret
    80005468:	0014d493          	srli	s1,s1,0x1
    8000546c:	ffffe097          	auipc	ra,0xffffe
    80005470:	6cc080e7          	jalr	1740(ra) # 80003b38 <mycpu>
    80005474:	0014f493          	andi	s1,s1,1
    80005478:	06952e23          	sw	s1,124(a0)
    8000547c:	fc5ff06f          	j	80005440 <push_off+0x34>

0000000080005480 <pop_off>:
    80005480:	ff010113          	addi	sp,sp,-16
    80005484:	00813023          	sd	s0,0(sp)
    80005488:	00113423          	sd	ra,8(sp)
    8000548c:	01010413          	addi	s0,sp,16
    80005490:	ffffe097          	auipc	ra,0xffffe
    80005494:	6a8080e7          	jalr	1704(ra) # 80003b38 <mycpu>
    80005498:	100027f3          	csrr	a5,sstatus
    8000549c:	0027f793          	andi	a5,a5,2
    800054a0:	04079663          	bnez	a5,800054ec <pop_off+0x6c>
    800054a4:	07852783          	lw	a5,120(a0)
    800054a8:	02f05a63          	blez	a5,800054dc <pop_off+0x5c>
    800054ac:	fff7871b          	addiw	a4,a5,-1
    800054b0:	06e52c23          	sw	a4,120(a0)
    800054b4:	00071c63          	bnez	a4,800054cc <pop_off+0x4c>
    800054b8:	07c52783          	lw	a5,124(a0)
    800054bc:	00078863          	beqz	a5,800054cc <pop_off+0x4c>
    800054c0:	100027f3          	csrr	a5,sstatus
    800054c4:	0027e793          	ori	a5,a5,2
    800054c8:	10079073          	csrw	sstatus,a5
    800054cc:	00813083          	ld	ra,8(sp)
    800054d0:	00013403          	ld	s0,0(sp)
    800054d4:	01010113          	addi	sp,sp,16
    800054d8:	00008067          	ret
    800054dc:	00001517          	auipc	a0,0x1
    800054e0:	fcc50513          	addi	a0,a0,-52 # 800064a8 <digits+0x48>
    800054e4:	fffff097          	auipc	ra,0xfffff
    800054e8:	018080e7          	jalr	24(ra) # 800044fc <panic>
    800054ec:	00001517          	auipc	a0,0x1
    800054f0:	fa450513          	addi	a0,a0,-92 # 80006490 <digits+0x30>
    800054f4:	fffff097          	auipc	ra,0xfffff
    800054f8:	008080e7          	jalr	8(ra) # 800044fc <panic>

00000000800054fc <push_on>:
    800054fc:	fe010113          	addi	sp,sp,-32
    80005500:	00813823          	sd	s0,16(sp)
    80005504:	00113c23          	sd	ra,24(sp)
    80005508:	00913423          	sd	s1,8(sp)
    8000550c:	02010413          	addi	s0,sp,32
    80005510:	100024f3          	csrr	s1,sstatus
    80005514:	100027f3          	csrr	a5,sstatus
    80005518:	0027e793          	ori	a5,a5,2
    8000551c:	10079073          	csrw	sstatus,a5
    80005520:	ffffe097          	auipc	ra,0xffffe
    80005524:	618080e7          	jalr	1560(ra) # 80003b38 <mycpu>
    80005528:	07852783          	lw	a5,120(a0)
    8000552c:	02078663          	beqz	a5,80005558 <push_on+0x5c>
    80005530:	ffffe097          	auipc	ra,0xffffe
    80005534:	608080e7          	jalr	1544(ra) # 80003b38 <mycpu>
    80005538:	07852783          	lw	a5,120(a0)
    8000553c:	01813083          	ld	ra,24(sp)
    80005540:	01013403          	ld	s0,16(sp)
    80005544:	0017879b          	addiw	a5,a5,1
    80005548:	06f52c23          	sw	a5,120(a0)
    8000554c:	00813483          	ld	s1,8(sp)
    80005550:	02010113          	addi	sp,sp,32
    80005554:	00008067          	ret
    80005558:	0014d493          	srli	s1,s1,0x1
    8000555c:	ffffe097          	auipc	ra,0xffffe
    80005560:	5dc080e7          	jalr	1500(ra) # 80003b38 <mycpu>
    80005564:	0014f493          	andi	s1,s1,1
    80005568:	06952e23          	sw	s1,124(a0)
    8000556c:	fc5ff06f          	j	80005530 <push_on+0x34>

0000000080005570 <pop_on>:
    80005570:	ff010113          	addi	sp,sp,-16
    80005574:	00813023          	sd	s0,0(sp)
    80005578:	00113423          	sd	ra,8(sp)
    8000557c:	01010413          	addi	s0,sp,16
    80005580:	ffffe097          	auipc	ra,0xffffe
    80005584:	5b8080e7          	jalr	1464(ra) # 80003b38 <mycpu>
    80005588:	100027f3          	csrr	a5,sstatus
    8000558c:	0027f793          	andi	a5,a5,2
    80005590:	04078463          	beqz	a5,800055d8 <pop_on+0x68>
    80005594:	07852783          	lw	a5,120(a0)
    80005598:	02f05863          	blez	a5,800055c8 <pop_on+0x58>
    8000559c:	fff7879b          	addiw	a5,a5,-1
    800055a0:	06f52c23          	sw	a5,120(a0)
    800055a4:	07853783          	ld	a5,120(a0)
    800055a8:	00079863          	bnez	a5,800055b8 <pop_on+0x48>
    800055ac:	100027f3          	csrr	a5,sstatus
    800055b0:	ffd7f793          	andi	a5,a5,-3
    800055b4:	10079073          	csrw	sstatus,a5
    800055b8:	00813083          	ld	ra,8(sp)
    800055bc:	00013403          	ld	s0,0(sp)
    800055c0:	01010113          	addi	sp,sp,16
    800055c4:	00008067          	ret
    800055c8:	00001517          	auipc	a0,0x1
    800055cc:	f0850513          	addi	a0,a0,-248 # 800064d0 <digits+0x70>
    800055d0:	fffff097          	auipc	ra,0xfffff
    800055d4:	f2c080e7          	jalr	-212(ra) # 800044fc <panic>
    800055d8:	00001517          	auipc	a0,0x1
    800055dc:	ed850513          	addi	a0,a0,-296 # 800064b0 <digits+0x50>
    800055e0:	fffff097          	auipc	ra,0xfffff
    800055e4:	f1c080e7          	jalr	-228(ra) # 800044fc <panic>

00000000800055e8 <__memset>:
    800055e8:	ff010113          	addi	sp,sp,-16
    800055ec:	00813423          	sd	s0,8(sp)
    800055f0:	01010413          	addi	s0,sp,16
    800055f4:	1a060e63          	beqz	a2,800057b0 <__memset+0x1c8>
    800055f8:	40a007b3          	neg	a5,a0
    800055fc:	0077f793          	andi	a5,a5,7
    80005600:	00778693          	addi	a3,a5,7
    80005604:	00b00813          	li	a6,11
    80005608:	0ff5f593          	andi	a1,a1,255
    8000560c:	fff6071b          	addiw	a4,a2,-1
    80005610:	1b06e663          	bltu	a3,a6,800057bc <__memset+0x1d4>
    80005614:	1cd76463          	bltu	a4,a3,800057dc <__memset+0x1f4>
    80005618:	1a078e63          	beqz	a5,800057d4 <__memset+0x1ec>
    8000561c:	00b50023          	sb	a1,0(a0)
    80005620:	00100713          	li	a4,1
    80005624:	1ae78463          	beq	a5,a4,800057cc <__memset+0x1e4>
    80005628:	00b500a3          	sb	a1,1(a0)
    8000562c:	00200713          	li	a4,2
    80005630:	1ae78a63          	beq	a5,a4,800057e4 <__memset+0x1fc>
    80005634:	00b50123          	sb	a1,2(a0)
    80005638:	00300713          	li	a4,3
    8000563c:	18e78463          	beq	a5,a4,800057c4 <__memset+0x1dc>
    80005640:	00b501a3          	sb	a1,3(a0)
    80005644:	00400713          	li	a4,4
    80005648:	1ae78263          	beq	a5,a4,800057ec <__memset+0x204>
    8000564c:	00b50223          	sb	a1,4(a0)
    80005650:	00500713          	li	a4,5
    80005654:	1ae78063          	beq	a5,a4,800057f4 <__memset+0x20c>
    80005658:	00b502a3          	sb	a1,5(a0)
    8000565c:	00700713          	li	a4,7
    80005660:	18e79e63          	bne	a5,a4,800057fc <__memset+0x214>
    80005664:	00b50323          	sb	a1,6(a0)
    80005668:	00700e93          	li	t4,7
    8000566c:	00859713          	slli	a4,a1,0x8
    80005670:	00e5e733          	or	a4,a1,a4
    80005674:	01059e13          	slli	t3,a1,0x10
    80005678:	01c76e33          	or	t3,a4,t3
    8000567c:	01859313          	slli	t1,a1,0x18
    80005680:	006e6333          	or	t1,t3,t1
    80005684:	02059893          	slli	a7,a1,0x20
    80005688:	40f60e3b          	subw	t3,a2,a5
    8000568c:	011368b3          	or	a7,t1,a7
    80005690:	02859813          	slli	a6,a1,0x28
    80005694:	0108e833          	or	a6,a7,a6
    80005698:	03059693          	slli	a3,a1,0x30
    8000569c:	003e589b          	srliw	a7,t3,0x3
    800056a0:	00d866b3          	or	a3,a6,a3
    800056a4:	03859713          	slli	a4,a1,0x38
    800056a8:	00389813          	slli	a6,a7,0x3
    800056ac:	00f507b3          	add	a5,a0,a5
    800056b0:	00e6e733          	or	a4,a3,a4
    800056b4:	000e089b          	sext.w	a7,t3
    800056b8:	00f806b3          	add	a3,a6,a5
    800056bc:	00e7b023          	sd	a4,0(a5)
    800056c0:	00878793          	addi	a5,a5,8
    800056c4:	fed79ce3          	bne	a5,a3,800056bc <__memset+0xd4>
    800056c8:	ff8e7793          	andi	a5,t3,-8
    800056cc:	0007871b          	sext.w	a4,a5
    800056d0:	01d787bb          	addw	a5,a5,t4
    800056d4:	0ce88e63          	beq	a7,a4,800057b0 <__memset+0x1c8>
    800056d8:	00f50733          	add	a4,a0,a5
    800056dc:	00b70023          	sb	a1,0(a4)
    800056e0:	0017871b          	addiw	a4,a5,1
    800056e4:	0cc77663          	bgeu	a4,a2,800057b0 <__memset+0x1c8>
    800056e8:	00e50733          	add	a4,a0,a4
    800056ec:	00b70023          	sb	a1,0(a4)
    800056f0:	0027871b          	addiw	a4,a5,2
    800056f4:	0ac77e63          	bgeu	a4,a2,800057b0 <__memset+0x1c8>
    800056f8:	00e50733          	add	a4,a0,a4
    800056fc:	00b70023          	sb	a1,0(a4)
    80005700:	0037871b          	addiw	a4,a5,3
    80005704:	0ac77663          	bgeu	a4,a2,800057b0 <__memset+0x1c8>
    80005708:	00e50733          	add	a4,a0,a4
    8000570c:	00b70023          	sb	a1,0(a4)
    80005710:	0047871b          	addiw	a4,a5,4
    80005714:	08c77e63          	bgeu	a4,a2,800057b0 <__memset+0x1c8>
    80005718:	00e50733          	add	a4,a0,a4
    8000571c:	00b70023          	sb	a1,0(a4)
    80005720:	0057871b          	addiw	a4,a5,5
    80005724:	08c77663          	bgeu	a4,a2,800057b0 <__memset+0x1c8>
    80005728:	00e50733          	add	a4,a0,a4
    8000572c:	00b70023          	sb	a1,0(a4)
    80005730:	0067871b          	addiw	a4,a5,6
    80005734:	06c77e63          	bgeu	a4,a2,800057b0 <__memset+0x1c8>
    80005738:	00e50733          	add	a4,a0,a4
    8000573c:	00b70023          	sb	a1,0(a4)
    80005740:	0077871b          	addiw	a4,a5,7
    80005744:	06c77663          	bgeu	a4,a2,800057b0 <__memset+0x1c8>
    80005748:	00e50733          	add	a4,a0,a4
    8000574c:	00b70023          	sb	a1,0(a4)
    80005750:	0087871b          	addiw	a4,a5,8
    80005754:	04c77e63          	bgeu	a4,a2,800057b0 <__memset+0x1c8>
    80005758:	00e50733          	add	a4,a0,a4
    8000575c:	00b70023          	sb	a1,0(a4)
    80005760:	0097871b          	addiw	a4,a5,9
    80005764:	04c77663          	bgeu	a4,a2,800057b0 <__memset+0x1c8>
    80005768:	00e50733          	add	a4,a0,a4
    8000576c:	00b70023          	sb	a1,0(a4)
    80005770:	00a7871b          	addiw	a4,a5,10
    80005774:	02c77e63          	bgeu	a4,a2,800057b0 <__memset+0x1c8>
    80005778:	00e50733          	add	a4,a0,a4
    8000577c:	00b70023          	sb	a1,0(a4)
    80005780:	00b7871b          	addiw	a4,a5,11
    80005784:	02c77663          	bgeu	a4,a2,800057b0 <__memset+0x1c8>
    80005788:	00e50733          	add	a4,a0,a4
    8000578c:	00b70023          	sb	a1,0(a4)
    80005790:	00c7871b          	addiw	a4,a5,12
    80005794:	00c77e63          	bgeu	a4,a2,800057b0 <__memset+0x1c8>
    80005798:	00e50733          	add	a4,a0,a4
    8000579c:	00b70023          	sb	a1,0(a4)
    800057a0:	00d7879b          	addiw	a5,a5,13
    800057a4:	00c7f663          	bgeu	a5,a2,800057b0 <__memset+0x1c8>
    800057a8:	00f507b3          	add	a5,a0,a5
    800057ac:	00b78023          	sb	a1,0(a5)
    800057b0:	00813403          	ld	s0,8(sp)
    800057b4:	01010113          	addi	sp,sp,16
    800057b8:	00008067          	ret
    800057bc:	00b00693          	li	a3,11
    800057c0:	e55ff06f          	j	80005614 <__memset+0x2c>
    800057c4:	00300e93          	li	t4,3
    800057c8:	ea5ff06f          	j	8000566c <__memset+0x84>
    800057cc:	00100e93          	li	t4,1
    800057d0:	e9dff06f          	j	8000566c <__memset+0x84>
    800057d4:	00000e93          	li	t4,0
    800057d8:	e95ff06f          	j	8000566c <__memset+0x84>
    800057dc:	00000793          	li	a5,0
    800057e0:	ef9ff06f          	j	800056d8 <__memset+0xf0>
    800057e4:	00200e93          	li	t4,2
    800057e8:	e85ff06f          	j	8000566c <__memset+0x84>
    800057ec:	00400e93          	li	t4,4
    800057f0:	e7dff06f          	j	8000566c <__memset+0x84>
    800057f4:	00500e93          	li	t4,5
    800057f8:	e75ff06f          	j	8000566c <__memset+0x84>
    800057fc:	00600e93          	li	t4,6
    80005800:	e6dff06f          	j	8000566c <__memset+0x84>

0000000080005804 <__memmove>:
    80005804:	ff010113          	addi	sp,sp,-16
    80005808:	00813423          	sd	s0,8(sp)
    8000580c:	01010413          	addi	s0,sp,16
    80005810:	0e060863          	beqz	a2,80005900 <__memmove+0xfc>
    80005814:	fff6069b          	addiw	a3,a2,-1
    80005818:	0006881b          	sext.w	a6,a3
    8000581c:	0ea5e863          	bltu	a1,a0,8000590c <__memmove+0x108>
    80005820:	00758713          	addi	a4,a1,7
    80005824:	00a5e7b3          	or	a5,a1,a0
    80005828:	40a70733          	sub	a4,a4,a0
    8000582c:	0077f793          	andi	a5,a5,7
    80005830:	00f73713          	sltiu	a4,a4,15
    80005834:	00174713          	xori	a4,a4,1
    80005838:	0017b793          	seqz	a5,a5
    8000583c:	00e7f7b3          	and	a5,a5,a4
    80005840:	10078863          	beqz	a5,80005950 <__memmove+0x14c>
    80005844:	00900793          	li	a5,9
    80005848:	1107f463          	bgeu	a5,a6,80005950 <__memmove+0x14c>
    8000584c:	0036581b          	srliw	a6,a2,0x3
    80005850:	fff8081b          	addiw	a6,a6,-1
    80005854:	02081813          	slli	a6,a6,0x20
    80005858:	01d85893          	srli	a7,a6,0x1d
    8000585c:	00858813          	addi	a6,a1,8
    80005860:	00058793          	mv	a5,a1
    80005864:	00050713          	mv	a4,a0
    80005868:	01088833          	add	a6,a7,a6
    8000586c:	0007b883          	ld	a7,0(a5)
    80005870:	00878793          	addi	a5,a5,8
    80005874:	00870713          	addi	a4,a4,8
    80005878:	ff173c23          	sd	a7,-8(a4)
    8000587c:	ff0798e3          	bne	a5,a6,8000586c <__memmove+0x68>
    80005880:	ff867713          	andi	a4,a2,-8
    80005884:	02071793          	slli	a5,a4,0x20
    80005888:	0207d793          	srli	a5,a5,0x20
    8000588c:	00f585b3          	add	a1,a1,a5
    80005890:	40e686bb          	subw	a3,a3,a4
    80005894:	00f507b3          	add	a5,a0,a5
    80005898:	06e60463          	beq	a2,a4,80005900 <__memmove+0xfc>
    8000589c:	0005c703          	lbu	a4,0(a1)
    800058a0:	00e78023          	sb	a4,0(a5)
    800058a4:	04068e63          	beqz	a3,80005900 <__memmove+0xfc>
    800058a8:	0015c603          	lbu	a2,1(a1)
    800058ac:	00100713          	li	a4,1
    800058b0:	00c780a3          	sb	a2,1(a5)
    800058b4:	04e68663          	beq	a3,a4,80005900 <__memmove+0xfc>
    800058b8:	0025c603          	lbu	a2,2(a1)
    800058bc:	00200713          	li	a4,2
    800058c0:	00c78123          	sb	a2,2(a5)
    800058c4:	02e68e63          	beq	a3,a4,80005900 <__memmove+0xfc>
    800058c8:	0035c603          	lbu	a2,3(a1)
    800058cc:	00300713          	li	a4,3
    800058d0:	00c781a3          	sb	a2,3(a5)
    800058d4:	02e68663          	beq	a3,a4,80005900 <__memmove+0xfc>
    800058d8:	0045c603          	lbu	a2,4(a1)
    800058dc:	00400713          	li	a4,4
    800058e0:	00c78223          	sb	a2,4(a5)
    800058e4:	00e68e63          	beq	a3,a4,80005900 <__memmove+0xfc>
    800058e8:	0055c603          	lbu	a2,5(a1)
    800058ec:	00500713          	li	a4,5
    800058f0:	00c782a3          	sb	a2,5(a5)
    800058f4:	00e68663          	beq	a3,a4,80005900 <__memmove+0xfc>
    800058f8:	0065c703          	lbu	a4,6(a1)
    800058fc:	00e78323          	sb	a4,6(a5)
    80005900:	00813403          	ld	s0,8(sp)
    80005904:	01010113          	addi	sp,sp,16
    80005908:	00008067          	ret
    8000590c:	02061713          	slli	a4,a2,0x20
    80005910:	02075713          	srli	a4,a4,0x20
    80005914:	00e587b3          	add	a5,a1,a4
    80005918:	f0f574e3          	bgeu	a0,a5,80005820 <__memmove+0x1c>
    8000591c:	02069613          	slli	a2,a3,0x20
    80005920:	02065613          	srli	a2,a2,0x20
    80005924:	fff64613          	not	a2,a2
    80005928:	00e50733          	add	a4,a0,a4
    8000592c:	00c78633          	add	a2,a5,a2
    80005930:	fff7c683          	lbu	a3,-1(a5)
    80005934:	fff78793          	addi	a5,a5,-1
    80005938:	fff70713          	addi	a4,a4,-1
    8000593c:	00d70023          	sb	a3,0(a4)
    80005940:	fec798e3          	bne	a5,a2,80005930 <__memmove+0x12c>
    80005944:	00813403          	ld	s0,8(sp)
    80005948:	01010113          	addi	sp,sp,16
    8000594c:	00008067          	ret
    80005950:	02069713          	slli	a4,a3,0x20
    80005954:	02075713          	srli	a4,a4,0x20
    80005958:	00170713          	addi	a4,a4,1
    8000595c:	00e50733          	add	a4,a0,a4
    80005960:	00050793          	mv	a5,a0
    80005964:	0005c683          	lbu	a3,0(a1)
    80005968:	00178793          	addi	a5,a5,1
    8000596c:	00158593          	addi	a1,a1,1
    80005970:	fed78fa3          	sb	a3,-1(a5)
    80005974:	fee798e3          	bne	a5,a4,80005964 <__memmove+0x160>
    80005978:	f89ff06f          	j	80005900 <__memmove+0xfc>

000000008000597c <__putc>:
    8000597c:	fe010113          	addi	sp,sp,-32
    80005980:	00813823          	sd	s0,16(sp)
    80005984:	00113c23          	sd	ra,24(sp)
    80005988:	02010413          	addi	s0,sp,32
    8000598c:	00050793          	mv	a5,a0
    80005990:	fef40593          	addi	a1,s0,-17
    80005994:	00100613          	li	a2,1
    80005998:	00000513          	li	a0,0
    8000599c:	fef407a3          	sb	a5,-17(s0)
    800059a0:	fffff097          	auipc	ra,0xfffff
    800059a4:	b3c080e7          	jalr	-1220(ra) # 800044dc <console_write>
    800059a8:	01813083          	ld	ra,24(sp)
    800059ac:	01013403          	ld	s0,16(sp)
    800059b0:	02010113          	addi	sp,sp,32
    800059b4:	00008067          	ret

00000000800059b8 <__getc>:
    800059b8:	fe010113          	addi	sp,sp,-32
    800059bc:	00813823          	sd	s0,16(sp)
    800059c0:	00113c23          	sd	ra,24(sp)
    800059c4:	02010413          	addi	s0,sp,32
    800059c8:	fe840593          	addi	a1,s0,-24
    800059cc:	00100613          	li	a2,1
    800059d0:	00000513          	li	a0,0
    800059d4:	fffff097          	auipc	ra,0xfffff
    800059d8:	ae8080e7          	jalr	-1304(ra) # 800044bc <console_read>
    800059dc:	fe844503          	lbu	a0,-24(s0)
    800059e0:	01813083          	ld	ra,24(sp)
    800059e4:	01013403          	ld	s0,16(sp)
    800059e8:	02010113          	addi	sp,sp,32
    800059ec:	00008067          	ret

00000000800059f0 <console_handler>:
    800059f0:	fe010113          	addi	sp,sp,-32
    800059f4:	00813823          	sd	s0,16(sp)
    800059f8:	00113c23          	sd	ra,24(sp)
    800059fc:	00913423          	sd	s1,8(sp)
    80005a00:	02010413          	addi	s0,sp,32
    80005a04:	14202773          	csrr	a4,scause
    80005a08:	100027f3          	csrr	a5,sstatus
    80005a0c:	0027f793          	andi	a5,a5,2
    80005a10:	06079e63          	bnez	a5,80005a8c <console_handler+0x9c>
    80005a14:	00074c63          	bltz	a4,80005a2c <console_handler+0x3c>
    80005a18:	01813083          	ld	ra,24(sp)
    80005a1c:	01013403          	ld	s0,16(sp)
    80005a20:	00813483          	ld	s1,8(sp)
    80005a24:	02010113          	addi	sp,sp,32
    80005a28:	00008067          	ret
    80005a2c:	0ff77713          	andi	a4,a4,255
    80005a30:	00900793          	li	a5,9
    80005a34:	fef712e3          	bne	a4,a5,80005a18 <console_handler+0x28>
    80005a38:	ffffe097          	auipc	ra,0xffffe
    80005a3c:	6dc080e7          	jalr	1756(ra) # 80004114 <plic_claim>
    80005a40:	00a00793          	li	a5,10
    80005a44:	00050493          	mv	s1,a0
    80005a48:	02f50c63          	beq	a0,a5,80005a80 <console_handler+0x90>
    80005a4c:	fc0506e3          	beqz	a0,80005a18 <console_handler+0x28>
    80005a50:	00050593          	mv	a1,a0
    80005a54:	00001517          	auipc	a0,0x1
    80005a58:	98450513          	addi	a0,a0,-1660 # 800063d8 <CONSOLE_STATUS+0x3c8>
    80005a5c:	fffff097          	auipc	ra,0xfffff
    80005a60:	afc080e7          	jalr	-1284(ra) # 80004558 <__printf>
    80005a64:	01013403          	ld	s0,16(sp)
    80005a68:	01813083          	ld	ra,24(sp)
    80005a6c:	00048513          	mv	a0,s1
    80005a70:	00813483          	ld	s1,8(sp)
    80005a74:	02010113          	addi	sp,sp,32
    80005a78:	ffffe317          	auipc	t1,0xffffe
    80005a7c:	6d430067          	jr	1748(t1) # 8000414c <plic_complete>
    80005a80:	fffff097          	auipc	ra,0xfffff
    80005a84:	3e0080e7          	jalr	992(ra) # 80004e60 <uartintr>
    80005a88:	fddff06f          	j	80005a64 <console_handler+0x74>
    80005a8c:	00001517          	auipc	a0,0x1
    80005a90:	a4c50513          	addi	a0,a0,-1460 # 800064d8 <digits+0x78>
    80005a94:	fffff097          	auipc	ra,0xfffff
    80005a98:	a68080e7          	jalr	-1432(ra) # 800044fc <panic>
	...

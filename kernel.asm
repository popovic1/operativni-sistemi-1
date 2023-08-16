
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
    8000001c:	0bd030ef          	jal	ra,800038d8 <start>

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
    800010a8:	2e1000ef          	jal	ra,80001b88 <_ZN5Riscv11trapHandlerEv>

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
    __asm__ volatile ("ld %0, 11*8(fp)" : "=r"(a1));
    return a1;
}

inline void Riscv::w_a1(uint64 a1) {
    __asm__ volatile ("mv a1, %0" : : "r"(a1));
    80001280:	00050593          	mv	a1,a0
    __asm__ volatile ("mv a0, %0" : : "r"(a0));
    80001284:	00100793          	li	a5,1
    80001288:	00078513          	mv	a0,a5
    Riscv::w_a1((uint64) sizeInBlocks);
    Riscv::w_a0(0x01);


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
    __asm__ volatile ("mv a1, %0" : : "r"(a1));
    800012b4:	00050593          	mv	a1,a0
    __asm__ volatile ("mv a0, %0" : : "r"(a0));
    800012b8:	00200793          	li	a5,2
    800012bc:	00078513          	mv	a0,a5
    Riscv::w_a1((uint64) ptr);
    Riscv::w_a0(0x02);


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
    __asm__ volatile ("mv a1, %0" : : "r"(a1));
    80001310:	00058593          	mv	a1,a1
    __asm__ volatile ("ld %0, 12*8(fp)" : "=r"(a2));
    return a2;
}

inline void Riscv::w_a2(uint64 a2) {
    __asm__ volatile ("mv a2, %0" : : "r"(a2));
    80001314:	00060613          	mv	a2,a2
    __asm__ volatile ("ld %0, 13*8(fp)" : "=r"(a3));
    return a3;
}

inline void Riscv::w_a3(uint64 a3) {
    __asm__ volatile ("mv a3, %0" : : "r"(a3));
    80001318:	00050693          	mv	a3,a0
    __asm__ volatile ("mv a0, %0" : : "r"(a0));
    8000131c:	01100793          	li	a5,17
    80001320:	00078513          	mv	a0,a5
    Riscv::w_a2((uint64) arg);
    //thread_t* t = handle;
    Riscv::w_a3((uint64) handle);
    Riscv::w_a0(0x11);

    __asm__ volatile ("ecall");
    80001324:	00000073          	ecall
    __asm__ volatile ("ld %0, 10*8(fp)" : "=r"(a0));
    80001328:	05043783          	ld	a5,80(s0)
    8000132c:	fef43423          	sd	a5,-24(s0)
    return a0;
    80001330:	fe843503          	ld	a0,-24(s0)
    return Riscv::r_a0();


    //return 0;

}
    80001334:	0005051b          	sext.w	a0,a0
    80001338:	01813403          	ld	s0,24(sp)
    8000133c:	02010113          	addi	sp,sp,32
    80001340:	00008067          	ret

0000000080001344 <_Z11thread_exitv>:

int thread_exit(){
    80001344:	fe010113          	addi	sp,sp,-32
    80001348:	00813c23          	sd	s0,24(sp)
    8000134c:	02010413          	addi	s0,sp,32
    __asm__ volatile ("mv a0, %0" : : "r"(a0));
    80001350:	01200793          	li	a5,18
    80001354:	00078513          	mv	a0,a5
    Riscv::w_a0(0x12);
    __asm__ volatile ("ecall");
    80001358:	00000073          	ecall
    __asm__ volatile ("ld %0, 10*8(fp)" : "=r"(a0));
    8000135c:	05043783          	ld	a5,80(s0)
    80001360:	fef43023          	sd	a5,-32(s0)
    return a0;
    80001364:	fe043783          	ld	a5,-32(s0)
    volatile uint64 a0 = Riscv::r_a0();
    80001368:	fef43423          	sd	a5,-24(s0)
    return a0;
    8000136c:	fe843503          	ld	a0,-24(s0)
}
    80001370:	0005051b          	sext.w	a0,a0
    80001374:	01813403          	ld	s0,24(sp)
    80001378:	02010113          	addi	sp,sp,32
    8000137c:	00008067          	ret

0000000080001380 <_Z15thread_dispatchv>:

void thread_dispatch(){
    80001380:	ff010113          	addi	sp,sp,-16
    80001384:	00813423          	sd	s0,8(sp)
    80001388:	01010413          	addi	s0,sp,16
    __asm__ volatile ("mv a0, %0" : : "r"(a0));
    8000138c:	01300793          	li	a5,19
    80001390:	00078513          	mv	a0,a5
    Riscv::w_a0(0x13);
    __asm__ volatile ("ecall");
    80001394:	00000073          	ecall
}
    80001398:	00813403          	ld	s0,8(sp)
    8000139c:	01010113          	addi	sp,sp,16
    800013a0:	00008067          	ret

00000000800013a4 <_Z11thread_joinP7_thread>:

void thread_join(thread_t handle){
    800013a4:	ff010113          	addi	sp,sp,-16
    800013a8:	00813423          	sd	s0,8(sp)
    800013ac:	01010413          	addi	s0,sp,16
    800013b0:	01400793          	li	a5,20
    800013b4:	00078513          	mv	a0,a5
    Riscv::w_a0(0x14);

    800013b8:	00813403          	ld	s0,8(sp)
    800013bc:	01010113          	addi	sp,sp,16
    800013c0:	00008067          	ret

00000000800013c4 <_ZN3PCB8dispatchEv>:
PCB* PCB::running;




void PCB::dispatch() {
    800013c4:	fe010113          	addi	sp,sp,-32
    800013c8:	00113c23          	sd	ra,24(sp)
    800013cc:	00813823          	sd	s0,16(sp)
    800013d0:	00913423          	sd	s1,8(sp)
    800013d4:	02010413          	addi	s0,sp,32
    Riscv::pushRegisters();
    800013d8:	00000097          	auipc	ra,0x0
    800013dc:	d68080e7          	jalr	-664(ra) # 80001140 <_ZN5Riscv13pushRegistersEv>

    PCB *old = running;
    800013e0:	00006497          	auipc	s1,0x6
    800013e4:	ed04b483          	ld	s1,-304(s1) # 800072b0 <_ZN3PCB7runningE>
        FINISHED
    };

    ~PCB() { delete[] stack; }

    bool isFinished() const { return state == FINISHED; }
    800013e8:	0284a703          	lw	a4,40(s1)
    if (!old->isFinished()) {
    800013ec:	00300793          	li	a5,3
    800013f0:	04f71463          	bne	a4,a5,80001438 <_ZN3PCB8dispatchEv+0x74>
        old->state = READY;
        Scheduler::put(old);
    }
    running = Scheduler::get();
    800013f4:	00000097          	auipc	ra,0x0
    800013f8:	12c080e7          	jalr	300(ra) # 80001520 <_ZN9Scheduler3getEv>
    800013fc:	00006797          	auipc	a5,0x6
    80001400:	eaa7ba23          	sd	a0,-332(a5) # 800072b0 <_ZN3PCB7runningE>
    running->state=RUNNING;
    80001404:	00100793          	li	a5,1
    80001408:	02f52423          	sw	a5,40(a0)

    PCB::contextSwitch(&old->context, &running->context);
    8000140c:	01850593          	addi	a1,a0,24
    80001410:	01848513          	addi	a0,s1,24
    80001414:	00000097          	auipc	ra,0x0
    80001418:	e24080e7          	jalr	-476(ra) # 80001238 <_ZN3PCB13contextSwitchEPNS_7ContextES1_>

    Riscv::popRegisters();
    8000141c:	00000097          	auipc	ra,0x0
    80001420:	da0080e7          	jalr	-608(ra) # 800011bc <_ZN5Riscv12popRegistersEv>
}
    80001424:	01813083          	ld	ra,24(sp)
    80001428:	01013403          	ld	s0,16(sp)
    8000142c:	00813483          	ld	s1,8(sp)
    80001430:	02010113          	addi	sp,sp,32
    80001434:	00008067          	ret
        old->state = READY;
    80001438:	0204a423          	sw	zero,40(s1)
        Scheduler::put(old);
    8000143c:	00048513          	mv	a0,s1
    80001440:	00000097          	auipc	ra,0x0
    80001444:	148080e7          	jalr	328(ra) # 80001588 <_ZN9Scheduler3putEP3PCB>
    80001448:	fadff06f          	j	800013f4 <_ZN3PCB8dispatchEv+0x30>

000000008000144c <_ZN3PCB4exitEv>:

int PCB::exit() {
    if(running->state==RUNNING){
    8000144c:	00006797          	auipc	a5,0x6
    80001450:	e647b783          	ld	a5,-412(a5) # 800072b0 <_ZN3PCB7runningE>
    80001454:	0287a683          	lw	a3,40(a5)
    80001458:	00100713          	li	a4,1
    8000145c:	02e69c63          	bne	a3,a4,80001494 <_ZN3PCB4exitEv+0x48>
int PCB::exit() {
    80001460:	ff010113          	addi	sp,sp,-16
    80001464:	00113423          	sd	ra,8(sp)
    80001468:	00813023          	sd	s0,0(sp)
    8000146c:	01010413          	addi	s0,sp,16
        running->state=FINISHED;
    80001470:	00300713          	li	a4,3
    80001474:	02e7a423          	sw	a4,40(a5)
        thread_dispatch();
    80001478:	00000097          	auipc	ra,0x0
    8000147c:	f08080e7          	jalr	-248(ra) # 80001380 <_Z15thread_dispatchv>
        return 0;
    80001480:	00000513          	li	a0,0
    }
    return -1;
}
    80001484:	00813083          	ld	ra,8(sp)
    80001488:	00013403          	ld	s0,0(sp)
    8000148c:	01010113          	addi	sp,sp,16
    80001490:	00008067          	ret
    return -1;
    80001494:	fff00513          	li	a0,-1
}
    80001498:	00008067          	ret

000000008000149c <_ZN3PCB7wrapperEv>:

void PCB::wrapper() {
    8000149c:	ff010113          	addi	sp,sp,-16
    800014a0:	00113423          	sd	ra,8(sp)
    800014a4:	00813023          	sd	s0,0(sp)
    800014a8:	01010413          	addi	s0,sp,16
    Riscv::popSppSpie();
    800014ac:	00000097          	auipc	ra,0x0
    800014b0:	6bc080e7          	jalr	1724(ra) # 80001b68 <_ZN5Riscv10popSppSpieEv>
    running->body(running->args);
    800014b4:	00006797          	auipc	a5,0x6
    800014b8:	dfc7b783          	ld	a5,-516(a5) # 800072b0 <_ZN3PCB7runningE>
    800014bc:	0007b703          	ld	a4,0(a5)
    800014c0:	0107b503          	ld	a0,16(a5)
    800014c4:	000700e7          	jalr	a4
    thread_exit();
    800014c8:	00000097          	auipc	ra,0x0
    800014cc:	e7c080e7          	jalr	-388(ra) # 80001344 <_Z11thread_exitv>
}
    800014d0:	00813083          	ld	ra,8(sp)
    800014d4:	00013403          	ld	s0,0(sp)
    800014d8:	01010113          	addi	sp,sp,16
    800014dc:	00008067          	ret

00000000800014e0 <_Z41__static_initialization_and_destruction_0ii>:
    Scheduler::readyQueue.addLast(handle);
}

uint64 Scheduler::remove() {
    return (uint64)Scheduler::readyQueue.removeLast();
}
    800014e0:	ff010113          	addi	sp,sp,-16
    800014e4:	00813423          	sd	s0,8(sp)
    800014e8:	01010413          	addi	s0,sp,16
    800014ec:	00100793          	li	a5,1
    800014f0:	00f50863          	beq	a0,a5,80001500 <_Z41__static_initialization_and_destruction_0ii+0x20>
    800014f4:	00813403          	ld	s0,8(sp)
    800014f8:	01010113          	addi	sp,sp,16
    800014fc:	00008067          	ret
    80001500:	000107b7          	lui	a5,0x10
    80001504:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001508:	fef596e3          	bne	a1,a5,800014f4 <_Z41__static_initialization_and_destruction_0ii+0x14>
    };

    Elem *head, *tail;

public:
    List() : head(0), tail(0) {}
    8000150c:	00006797          	auipc	a5,0x6
    80001510:	dac78793          	addi	a5,a5,-596 # 800072b8 <_ZN9Scheduler10readyQueueE>
    80001514:	0007b023          	sd	zero,0(a5)
    80001518:	0007b423          	sd	zero,8(a5)
    8000151c:	fd9ff06f          	j	800014f4 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080001520 <_ZN9Scheduler3getEv>:
PCB *Scheduler::get() {
    80001520:	fe010113          	addi	sp,sp,-32
    80001524:	00113c23          	sd	ra,24(sp)
    80001528:	00813823          	sd	s0,16(sp)
    8000152c:	00913423          	sd	s1,8(sp)
    80001530:	02010413          	addi	s0,sp,32
        }
    }

    T *removeFirst()
    {
        if (!head) { return 0; }
    80001534:	00006517          	auipc	a0,0x6
    80001538:	d8453503          	ld	a0,-636(a0) # 800072b8 <_ZN9Scheduler10readyQueueE>
    8000153c:	04050263          	beqz	a0,80001580 <_ZN9Scheduler3getEv+0x60>

        Elem *elem = head;
        head = head->next;
    80001540:	00853783          	ld	a5,8(a0)
    80001544:	00006717          	auipc	a4,0x6
    80001548:	d6f73a23          	sd	a5,-652(a4) # 800072b8 <_ZN9Scheduler10readyQueueE>
        if (!head) { tail = 0; }
    8000154c:	02078463          	beqz	a5,80001574 <_ZN9Scheduler3getEv+0x54>

        T *ret = elem->data;
    80001550:	00053483          	ld	s1,0(a0)
        delete elem;
    80001554:	00000097          	auipc	ra,0x0
    80001558:	3e8080e7          	jalr	1000(ra) # 8000193c <_ZdlPv>
}
    8000155c:	00048513          	mv	a0,s1
    80001560:	01813083          	ld	ra,24(sp)
    80001564:	01013403          	ld	s0,16(sp)
    80001568:	00813483          	ld	s1,8(sp)
    8000156c:	02010113          	addi	sp,sp,32
    80001570:	00008067          	ret
        if (!head) { tail = 0; }
    80001574:	00006797          	auipc	a5,0x6
    80001578:	d407b623          	sd	zero,-692(a5) # 800072c0 <_ZN9Scheduler10readyQueueE+0x8>
    8000157c:	fd5ff06f          	j	80001550 <_ZN9Scheduler3getEv+0x30>
        if (!head) { return 0; }
    80001580:	00050493          	mv	s1,a0
    return Scheduler::readyQueue.removeFirst();
    80001584:	fd9ff06f          	j	8000155c <_ZN9Scheduler3getEv+0x3c>

0000000080001588 <_ZN9Scheduler3putEP3PCB>:
void Scheduler::put(PCB *handle) {
    80001588:	fe010113          	addi	sp,sp,-32
    8000158c:	00113c23          	sd	ra,24(sp)
    80001590:	00813823          	sd	s0,16(sp)
    80001594:	00913423          	sd	s1,8(sp)
    80001598:	02010413          	addi	s0,sp,32
    8000159c:	00050493          	mv	s1,a0
        Elem *elem = new Elem(data, 0);
    800015a0:	01000513          	li	a0,16
    800015a4:	00000097          	auipc	ra,0x0
    800015a8:	348080e7          	jalr	840(ra) # 800018ec <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    800015ac:	00953023          	sd	s1,0(a0)
    800015b0:	00053423          	sd	zero,8(a0)
        if (tail)
    800015b4:	00006797          	auipc	a5,0x6
    800015b8:	d0c7b783          	ld	a5,-756(a5) # 800072c0 <_ZN9Scheduler10readyQueueE+0x8>
    800015bc:	02078263          	beqz	a5,800015e0 <_ZN9Scheduler3putEP3PCB+0x58>
            tail->next = elem;
    800015c0:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    800015c4:	00006797          	auipc	a5,0x6
    800015c8:	cea7be23          	sd	a0,-772(a5) # 800072c0 <_ZN9Scheduler10readyQueueE+0x8>
}
    800015cc:	01813083          	ld	ra,24(sp)
    800015d0:	01013403          	ld	s0,16(sp)
    800015d4:	00813483          	ld	s1,8(sp)
    800015d8:	02010113          	addi	sp,sp,32
    800015dc:	00008067          	ret
            head = tail = elem;
    800015e0:	00006797          	auipc	a5,0x6
    800015e4:	cd878793          	addi	a5,a5,-808 # 800072b8 <_ZN9Scheduler10readyQueueE>
    800015e8:	00a7b423          	sd	a0,8(a5)
    800015ec:	00a7b023          	sd	a0,0(a5)
    800015f0:	fddff06f          	j	800015cc <_ZN9Scheduler3putEP3PCB+0x44>

00000000800015f4 <_ZN9Scheduler6removeEv>:
uint64 Scheduler::remove() {
    800015f4:	fe010113          	addi	sp,sp,-32
    800015f8:	00113c23          	sd	ra,24(sp)
    800015fc:	00813823          	sd	s0,16(sp)
    80001600:	00913423          	sd	s1,8(sp)
    80001604:	02010413          	addi	s0,sp,32
        return head->data;
    }

    T *removeLast()
    {
        if (!head) { return 0; }
    80001608:	00006497          	auipc	s1,0x6
    8000160c:	cb04b483          	ld	s1,-848(s1) # 800072b8 <_ZN9Scheduler10readyQueueE>
    80001610:	04048663          	beqz	s1,8000165c <_ZN9Scheduler6removeEv+0x68>

        Elem *prev = 0;
    80001614:	00000793          	li	a5,0
        for (Elem *curr = head; curr && curr != tail; curr = curr->next)
    80001618:	00048e63          	beqz	s1,80001634 <_ZN9Scheduler6removeEv+0x40>
    8000161c:	00006717          	auipc	a4,0x6
    80001620:	ca473703          	ld	a4,-860(a4) # 800072c0 <_ZN9Scheduler10readyQueueE+0x8>
    80001624:	00e48863          	beq	s1,a4,80001634 <_ZN9Scheduler6removeEv+0x40>
        {
            prev = curr;
    80001628:	00048793          	mv	a5,s1
        for (Elem *curr = head; curr && curr != tail; curr = curr->next)
    8000162c:	0084b483          	ld	s1,8(s1)
    80001630:	fe9ff06f          	j	80001618 <_ZN9Scheduler6removeEv+0x24>
        }

        Elem *elem = tail;
    80001634:	00006517          	auipc	a0,0x6
    80001638:	c8c53503          	ld	a0,-884(a0) # 800072c0 <_ZN9Scheduler10readyQueueE+0x8>
        if (prev) { prev->next = 0; }
    8000163c:	02078c63          	beqz	a5,80001674 <_ZN9Scheduler6removeEv+0x80>
    80001640:	0007b423          	sd	zero,8(a5)
        else { head = 0; }
        tail = prev;
    80001644:	00006717          	auipc	a4,0x6
    80001648:	c6f73e23          	sd	a5,-900(a4) # 800072c0 <_ZN9Scheduler10readyQueueE+0x8>

        T *ret = elem->data;
    8000164c:	00053483          	ld	s1,0(a0)
        delete elem;
    80001650:	00050663          	beqz	a0,8000165c <_ZN9Scheduler6removeEv+0x68>
    80001654:	00000097          	auipc	ra,0x0
    80001658:	2e8080e7          	jalr	744(ra) # 8000193c <_ZdlPv>
}
    8000165c:	00048513          	mv	a0,s1
    80001660:	01813083          	ld	ra,24(sp)
    80001664:	01013403          	ld	s0,16(sp)
    80001668:	00813483          	ld	s1,8(sp)
    8000166c:	02010113          	addi	sp,sp,32
    80001670:	00008067          	ret
        else { head = 0; }
    80001674:	00006717          	auipc	a4,0x6
    80001678:	c4073223          	sd	zero,-956(a4) # 800072b8 <_ZN9Scheduler10readyQueueE>
    8000167c:	fc9ff06f          	j	80001644 <_ZN9Scheduler6removeEv+0x50>

0000000080001680 <_GLOBAL__sub_I__ZN9Scheduler10readyQueueE>:
    80001680:	ff010113          	addi	sp,sp,-16
    80001684:	00113423          	sd	ra,8(sp)
    80001688:	00813023          	sd	s0,0(sp)
    8000168c:	01010413          	addi	s0,sp,16
    80001690:	000105b7          	lui	a1,0x10
    80001694:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80001698:	00100513          	li	a0,1
    8000169c:	00000097          	auipc	ra,0x0
    800016a0:	e44080e7          	jalr	-444(ra) # 800014e0 <_Z41__static_initialization_and_destruction_0ii>
    800016a4:	00813083          	ld	ra,8(sp)
    800016a8:	00013403          	ld	s0,0(sp)
    800016ac:	01010113          	addi	sp,sp,16
    800016b0:	00008067          	ret

00000000800016b4 <_Z7createCm>:



};

C* createC(uint64 n){
    800016b4:	fe010113          	addi	sp,sp,-32
    800016b8:	00113c23          	sd	ra,24(sp)
    800016bc:	00813823          	sd	s0,16(sp)
    800016c0:	00913423          	sd	s1,8(sp)
    800016c4:	02010413          	addi	s0,sp,32
    800016c8:	00050493          	mv	s1,a0
    return new C(n);
    800016cc:	00800513          	li	a0,8
    800016d0:	00000097          	auipc	ra,0x0
    800016d4:	21c080e7          	jalr	540(ra) # 800018ec <_Znwm>
        num = n;
    800016d8:	00953023          	sd	s1,0(a0)
}
    800016dc:	01813083          	ld	ra,24(sp)
    800016e0:	01013403          	ld	s0,16(sp)
    800016e4:	00813483          	ld	s1,8(sp)
    800016e8:	02010113          	addi	sp,sp,32
    800016ec:	00008067          	ret

00000000800016f0 <main>:

extern void userMain();

int main() {
    800016f0:	fd010113          	addi	sp,sp,-48
    800016f4:	02113423          	sd	ra,40(sp)
    800016f8:	02813023          	sd	s0,32(sp)
    800016fc:	00913c23          	sd	s1,24(sp)
    80001700:	01213823          	sd	s2,16(sp)
    80001704:	01313423          	sd	s3,8(sp)
    80001708:	01413023          	sd	s4,0(sp)
    8000170c:	03010413          	addi	s0,sp,48
public:


    // Get the singleton instance
    static MemoryAllocator &getInstance() {
        static MemoryAllocator instance;
    80001710:	00006797          	auipc	a5,0x6
    80001714:	bb87c783          	lbu	a5,-1096(a5) # 800072c8 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80001718:	00079863          	bnez	a5,80001728 <main+0x38>
    8000171c:	00100793          	li	a5,1
    80001720:	00006717          	auipc	a4,0x6
    80001724:	baf70423          	sb	a5,-1112(a4) # 800072c8 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
//        printString("\n");
//        uint64 end = (uint64)((Block *) HEAP_END_ADDR);
//        printInteger(end);
//        printString("\n");

        free_list = (Block *) HEAP_START_ADDR;
    80001728:	00006797          	auipc	a5,0x6
    8000172c:	b087b783          	ld	a5,-1272(a5) # 80007230 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001730:	0007b703          	ld	a4,0(a5)
    80001734:	00006697          	auipc	a3,0x6
    80001738:	b2c6b683          	ld	a3,-1236(a3) # 80007260 <_GLOBAL_OFFSET_TABLE_+0x48>
    8000173c:	00e6b023          	sd	a4,0(a3)
        free_list->size = (uint64 *) HEAP_END_ADDR - (uint64 *) HEAP_START_ADDR;
    80001740:	00006797          	auipc	a5,0x6
    80001744:	b187b783          	ld	a5,-1256(a5) # 80007258 <_GLOBAL_OFFSET_TABLE_+0x40>
    80001748:	0007b783          	ld	a5,0(a5)
    8000174c:	40e787b3          	sub	a5,a5,a4
    80001750:	4037d793          	srai	a5,a5,0x3
    80001754:	00f73023          	sd	a5,0(a4)
        free_list->next = nullptr;
    80001758:	0006b783          	ld	a5,0(a3)
    8000175c:	0007b423          	sd	zero,8(a5)
        allocated_list = nullptr;
    80001760:	00006797          	auipc	a5,0x6
    80001764:	ae07b783          	ld	a5,-1312(a5) # 80007240 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001768:	0007b023          	sd	zero,0(a5)


    MemoryAllocator::getInstance().init();
    Riscv::w_stvec((uint64) &Riscv::supervisorTrap+1);
    8000176c:	00006797          	auipc	a5,0x6
    80001770:	acc7b783          	ld	a5,-1332(a5) # 80007238 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001774:	00178793          	addi	a5,a5,1
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    80001778:	10579073          	csrw	stvec,a5
    PCB* pcb = new PCB(nullptr, nullptr, nullptr);
    8000177c:	03000513          	li	a0,48
    80001780:	00000097          	auipc	ra,0x0
    80001784:	16c080e7          	jalr	364(ra) # 800018ec <_Znwm>
    80001788:	00050913          	mv	s2,a0

    static void wrapper();

public:
    PCB(Body body, void *args, uint64 *stack) {
        this->body = body;
    8000178c:	00053023          	sd	zero,0(a0)

        this->stack = stack;
    80001790:	00053423          	sd	zero,8(a0)
        context = {(uint64) &wrapper,
    80001794:	00006a17          	auipc	s4,0x6
    80001798:	a94a3a03          	ld	s4,-1388(s4) # 80007228 <_GLOBAL_OFFSET_TABLE_+0x10>
    8000179c:	01453c23          	sd	s4,24(a0)
    800017a0:	02053023          	sd	zero,32(a0)
                   stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
        };
        this->args = args;
    800017a4:	00053823          	sd	zero,16(a0)
    PCB::running=pcb;
    800017a8:	00006797          	auipc	a5,0x6
    800017ac:	aa87b783          	ld	a5,-1368(a5) # 80007250 <_GLOBAL_OFFSET_TABLE_+0x38>
    800017b0:	00a7b023          	sd	a0,0(a5)
    void setState(State s) { state = s; }
    800017b4:	00100793          	li	a5,1
    800017b8:	02f52423          	sw	a5,40(a0)
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    800017bc:	00200793          	li	a5,2
    800017c0:	1007a073          	csrs	sstatus,a5
    pcb->setState(PCB::RUNNING);
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);

    switchToUserMode();
    800017c4:	00000097          	auipc	ra,0x0
    800017c8:	26c080e7          	jalr	620(ra) # 80001a30 <_Z16switchToUserModev>
        static MemoryAllocator instance;
    800017cc:	00006797          	auipc	a5,0x6
    800017d0:	afc7c783          	lbu	a5,-1284(a5) # 800072c8 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    800017d4:	00079863          	bnez	a5,800017e4 <main+0xf4>
    800017d8:	00100793          	li	a5,1
    800017dc:	00006717          	auipc	a4,0x6
    800017e0:	aef70623          	sb	a5,-1300(a4) # 800072c8 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>

    uint64* stack = (uint64*)MemoryAllocator::getInstance().allocate(((DEFAULT_STACK_SIZE + 16+ MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE));
    800017e4:	04100513          	li	a0,65
    800017e8:	00000097          	auipc	ra,0x0
    800017ec:	61c080e7          	jalr	1564(ra) # 80001e04 <_ZN15MemoryAllocator8allocateEm>
    800017f0:	00050993          	mv	s3,a0
    PCB* usrT = new PCB((void (*)(void *))(userMain), nullptr, stack);
    800017f4:	03000513          	li	a0,48
    800017f8:	00000097          	auipc	ra,0x0
    800017fc:	0f4080e7          	jalr	244(ra) # 800018ec <_Znwm>
    80001800:	00050493          	mv	s1,a0
        this->body = body;
    80001804:	00006797          	auipc	a5,0x6
    80001808:	a1c7b783          	ld	a5,-1508(a5) # 80007220 <_GLOBAL_OFFSET_TABLE_+0x8>
    8000180c:	00f53023          	sd	a5,0(a0)
        this->stack = stack;
    80001810:	01353423          	sd	s3,8(a0)
                   stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
    80001814:	04098063          	beqz	s3,80001854 <main+0x164>
    80001818:	00008537          	lui	a0,0x8
    8000181c:	00a989b3          	add	s3,s3,a0
        context = {(uint64) &wrapper,
    80001820:	0144bc23          	sd	s4,24(s1)
    80001824:	0334b023          	sd	s3,32(s1)
        this->args = args;
    80001828:	0004b823          	sd	zero,16(s1)
        state = READY;
    8000182c:	0204a423          	sw	zero,40(s1)
    Scheduler::put(usrT);
    80001830:	00048513          	mv	a0,s1
    80001834:	00000097          	auipc	ra,0x0
    80001838:	d54080e7          	jalr	-684(ra) # 80001588 <_ZN9Scheduler3putEP3PCB>
    bool isFinished() const { return state == FINISHED; }
    8000183c:	0284a703          	lw	a4,40(s1)


    while (!usrT->isFinished()){
    80001840:	00300793          	li	a5,3
    80001844:	00f70c63          	beq	a4,a5,8000185c <main+0x16c>
        thread_dispatch();
    80001848:	00000097          	auipc	ra,0x0
    8000184c:	b38080e7          	jalr	-1224(ra) # 80001380 <_Z15thread_dispatchv>
    while (!usrT->isFinished()){
    80001850:	fedff06f          	j	8000183c <main+0x14c>
                   stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
    80001854:	00000993          	li	s3,0
    80001858:	fc9ff06f          	j	80001820 <main+0x130>
    }


    delete usrT;
    8000185c:	02048063          	beqz	s1,8000187c <main+0x18c>
    ~PCB() { delete[] stack; }
    80001860:	0084b503          	ld	a0,8(s1)
    80001864:	00050663          	beqz	a0,80001870 <main+0x180>
    80001868:	00000097          	auipc	ra,0x0
    8000186c:	0fc080e7          	jalr	252(ra) # 80001964 <_ZdaPv>
    80001870:	00048513          	mv	a0,s1
    80001874:	00000097          	auipc	ra,0x0
    80001878:	0c8080e7          	jalr	200(ra) # 8000193c <_ZdlPv>
    delete pcb;
    8000187c:	02090063          	beqz	s2,8000189c <main+0x1ac>
    80001880:	00893503          	ld	a0,8(s2)
    80001884:	00050663          	beqz	a0,80001890 <main+0x1a0>
    80001888:	00000097          	auipc	ra,0x0
    8000188c:	0dc080e7          	jalr	220(ra) # 80001964 <_ZdaPv>
    80001890:	00090513          	mv	a0,s2
    80001894:	00000097          	auipc	ra,0x0
    80001898:	0a8080e7          	jalr	168(ra) # 8000193c <_ZdlPv>


    //printString("Finished\n");

    return 0;
    8000189c:	00000513          	li	a0,0
    800018a0:	02813083          	ld	ra,40(sp)
    800018a4:	02013403          	ld	s0,32(sp)
    800018a8:	01813483          	ld	s1,24(sp)
    800018ac:	01013903          	ld	s2,16(sp)
    800018b0:	00813983          	ld	s3,8(sp)
    800018b4:	00013a03          	ld	s4,0(sp)
    800018b8:	03010113          	addi	sp,sp,48
    800018bc:	00008067          	ret

00000000800018c0 <_ZN6Thread13threadWrapperEPv>:
    Scheduler::remove();
}

Thread::Thread() : Thread(threadWrapper, this){}

void Thread::threadWrapper(void *t) {
    800018c0:	ff010113          	addi	sp,sp,-16
    800018c4:	00113423          	sd	ra,8(sp)
    800018c8:	00813023          	sd	s0,0(sp)
    800018cc:	01010413          	addi	s0,sp,16
    ((Thread*)t)->run();
    800018d0:	00053783          	ld	a5,0(a0) # 8000 <_entry-0x7fff8000>
    800018d4:	0107b783          	ld	a5,16(a5)
    800018d8:	000780e7          	jalr	a5
}
    800018dc:	00813083          	ld	ra,8(sp)
    800018e0:	00013403          	ld	s0,0(sp)
    800018e4:	01010113          	addi	sp,sp,16
    800018e8:	00008067          	ret

00000000800018ec <_Znwm>:
void* operator new(size_t size) {
    800018ec:	ff010113          	addi	sp,sp,-16
    800018f0:	00113423          	sd	ra,8(sp)
    800018f4:	00813023          	sd	s0,0(sp)
    800018f8:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    800018fc:	00000097          	auipc	ra,0x0
    80001900:	970080e7          	jalr	-1680(ra) # 8000126c <_Z9mem_allocm>
}
    80001904:	00813083          	ld	ra,8(sp)
    80001908:	00013403          	ld	s0,0(sp)
    8000190c:	01010113          	addi	sp,sp,16
    80001910:	00008067          	ret

0000000080001914 <_Znam>:
void* operator new[](size_t size) {
    80001914:	ff010113          	addi	sp,sp,-16
    80001918:	00113423          	sd	ra,8(sp)
    8000191c:	00813023          	sd	s0,0(sp)
    80001920:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80001924:	00000097          	auipc	ra,0x0
    80001928:	948080e7          	jalr	-1720(ra) # 8000126c <_Z9mem_allocm>
}
    8000192c:	00813083          	ld	ra,8(sp)
    80001930:	00013403          	ld	s0,0(sp)
    80001934:	01010113          	addi	sp,sp,16
    80001938:	00008067          	ret

000000008000193c <_ZdlPv>:
void operator delete(void *ptr) { mem_free(ptr); }
    8000193c:	ff010113          	addi	sp,sp,-16
    80001940:	00113423          	sd	ra,8(sp)
    80001944:	00813023          	sd	s0,0(sp)
    80001948:	01010413          	addi	s0,sp,16
    8000194c:	00000097          	auipc	ra,0x0
    80001950:	95c080e7          	jalr	-1700(ra) # 800012a8 <_Z8mem_freePv>
    80001954:	00813083          	ld	ra,8(sp)
    80001958:	00013403          	ld	s0,0(sp)
    8000195c:	01010113          	addi	sp,sp,16
    80001960:	00008067          	ret

0000000080001964 <_ZdaPv>:
void operator delete[](void *ptr) { mem_free(ptr); }
    80001964:	ff010113          	addi	sp,sp,-16
    80001968:	00113423          	sd	ra,8(sp)
    8000196c:	00813023          	sd	s0,0(sp)
    80001970:	01010413          	addi	s0,sp,16
    80001974:	00000097          	auipc	ra,0x0
    80001978:	934080e7          	jalr	-1740(ra) # 800012a8 <_Z8mem_freePv>
    8000197c:	00813083          	ld	ra,8(sp)
    80001980:	00013403          	ld	s0,0(sp)
    80001984:	01010113          	addi	sp,sp,16
    80001988:	00008067          	ret

000000008000198c <_ZN6ThreadD1Ev>:

void Thread::dispatch() {
    thread_dispatch();
}

Thread::~Thread() {
    8000198c:	fe010113          	addi	sp,sp,-32
    80001990:	00113c23          	sd	ra,24(sp)
    80001994:	00813823          	sd	s0,16(sp)
    80001998:	00913423          	sd	s1,8(sp)
    8000199c:	02010413          	addi	s0,sp,32
    800019a0:	00050493          	mv	s1,a0
    800019a4:	00005797          	auipc	a5,0x5
    800019a8:	79c78793          	addi	a5,a5,1948 # 80007140 <_ZTV6Thread+0x10>
    800019ac:	00f53023          	sd	a5,0(a0)
    thread_exit();
    800019b0:	00000097          	auipc	ra,0x0
    800019b4:	994080e7          	jalr	-1644(ra) # 80001344 <_Z11thread_exitv>
    delete (PCB*)myHandle;
    800019b8:	0084b483          	ld	s1,8(s1)
    800019bc:	02048063          	beqz	s1,800019dc <_ZN6ThreadD1Ev+0x50>
    800019c0:	0084b503          	ld	a0,8(s1)
    800019c4:	00050663          	beqz	a0,800019d0 <_ZN6ThreadD1Ev+0x44>
    800019c8:	00000097          	auipc	ra,0x0
    800019cc:	f9c080e7          	jalr	-100(ra) # 80001964 <_ZdaPv>
    800019d0:	00048513          	mv	a0,s1
    800019d4:	00000097          	auipc	ra,0x0
    800019d8:	f68080e7          	jalr	-152(ra) # 8000193c <_ZdlPv>
}
    800019dc:	01813083          	ld	ra,24(sp)
    800019e0:	01013403          	ld	s0,16(sp)
    800019e4:	00813483          	ld	s1,8(sp)
    800019e8:	02010113          	addi	sp,sp,32
    800019ec:	00008067          	ret

00000000800019f0 <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    800019f0:	fe010113          	addi	sp,sp,-32
    800019f4:	00113c23          	sd	ra,24(sp)
    800019f8:	00813823          	sd	s0,16(sp)
    800019fc:	00913423          	sd	s1,8(sp)
    80001a00:	02010413          	addi	s0,sp,32
    80001a04:	00050493          	mv	s1,a0
}
    80001a08:	00000097          	auipc	ra,0x0
    80001a0c:	f84080e7          	jalr	-124(ra) # 8000198c <_ZN6ThreadD1Ev>
    80001a10:	00048513          	mv	a0,s1
    80001a14:	00000097          	auipc	ra,0x0
    80001a18:	f28080e7          	jalr	-216(ra) # 8000193c <_ZdlPv>
    80001a1c:	01813083          	ld	ra,24(sp)
    80001a20:	01013403          	ld	s0,16(sp)
    80001a24:	00813483          	ld	s1,8(sp)
    80001a28:	02010113          	addi	sp,sp,32
    80001a2c:	00008067          	ret

0000000080001a30 <_Z16switchToUserModev>:
void switchToUserMode(){ toUserMode();}
    80001a30:	ff010113          	addi	sp,sp,-16
    80001a34:	00113423          	sd	ra,8(sp)
    80001a38:	00813023          	sd	s0,0(sp)
    80001a3c:	01010413          	addi	s0,sp,16
    80001a40:	00000097          	auipc	ra,0x0
    80001a44:	8a0080e7          	jalr	-1888(ra) # 800012e0 <_Z10toUserModev>
    80001a48:	00813083          	ld	ra,8(sp)
    80001a4c:	00013403          	ld	s0,0(sp)
    80001a50:	01010113          	addi	sp,sp,16
    80001a54:	00008067          	ret

0000000080001a58 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void*), void* arg) {
    80001a58:	ff010113          	addi	sp,sp,-16
    80001a5c:	00113423          	sd	ra,8(sp)
    80001a60:	00813023          	sd	s0,0(sp)
    80001a64:	01010413          	addi	s0,sp,16
    80001a68:	00005797          	auipc	a5,0x5
    80001a6c:	6d878793          	addi	a5,a5,1752 # 80007140 <_ZTV6Thread+0x10>
    80001a70:	00f53023          	sd	a5,0(a0)
    thread_create(&myHandle, body, arg);
    80001a74:	00850513          	addi	a0,a0,8
    80001a78:	00000097          	auipc	ra,0x0
    80001a7c:	88c080e7          	jalr	-1908(ra) # 80001304 <_Z13thread_createPP7_threadPFvPvES2_>
    Scheduler::remove();
    80001a80:	00000097          	auipc	ra,0x0
    80001a84:	b74080e7          	jalr	-1164(ra) # 800015f4 <_ZN9Scheduler6removeEv>
}
    80001a88:	00813083          	ld	ra,8(sp)
    80001a8c:	00013403          	ld	s0,0(sp)
    80001a90:	01010113          	addi	sp,sp,16
    80001a94:	00008067          	ret

0000000080001a98 <_ZN6ThreadC1Ev>:
Thread::Thread() : Thread(threadWrapper, this){}
    80001a98:	ff010113          	addi	sp,sp,-16
    80001a9c:	00113423          	sd	ra,8(sp)
    80001aa0:	00813023          	sd	s0,0(sp)
    80001aa4:	01010413          	addi	s0,sp,16
    80001aa8:	00050613          	mv	a2,a0
    80001aac:	00000597          	auipc	a1,0x0
    80001ab0:	e1458593          	addi	a1,a1,-492 # 800018c0 <_ZN6Thread13threadWrapperEPv>
    80001ab4:	00000097          	auipc	ra,0x0
    80001ab8:	fa4080e7          	jalr	-92(ra) # 80001a58 <_ZN6ThreadC1EPFvPvES0_>
    80001abc:	00813083          	ld	ra,8(sp)
    80001ac0:	00013403          	ld	s0,0(sp)
    80001ac4:	01010113          	addi	sp,sp,16
    80001ac8:	00008067          	ret

0000000080001acc <_ZN6Thread5startEv>:
int Thread::start() {
    80001acc:	ff010113          	addi	sp,sp,-16
    80001ad0:	00113423          	sd	ra,8(sp)
    80001ad4:	00813023          	sd	s0,0(sp)
    80001ad8:	01010413          	addi	s0,sp,16
    Scheduler::put((PCB*)myHandle);
    80001adc:	00853503          	ld	a0,8(a0)
    80001ae0:	00000097          	auipc	ra,0x0
    80001ae4:	aa8080e7          	jalr	-1368(ra) # 80001588 <_ZN9Scheduler3putEP3PCB>
}
    80001ae8:	00000513          	li	a0,0
    80001aec:	00813083          	ld	ra,8(sp)
    80001af0:	00013403          	ld	s0,0(sp)
    80001af4:	01010113          	addi	sp,sp,16
    80001af8:	00008067          	ret

0000000080001afc <_ZN6Thread4joinEv>:
void Thread::join() {
    80001afc:	ff010113          	addi	sp,sp,-16
    80001b00:	00113423          	sd	ra,8(sp)
    80001b04:	00813023          	sd	s0,0(sp)
    80001b08:	01010413          	addi	s0,sp,16
    thread_join(myHandle);
    80001b0c:	00853503          	ld	a0,8(a0)
    80001b10:	00000097          	auipc	ra,0x0
    80001b14:	894080e7          	jalr	-1900(ra) # 800013a4 <_Z11thread_joinP7_thread>
}
    80001b18:	00813083          	ld	ra,8(sp)
    80001b1c:	00013403          	ld	s0,0(sp)
    80001b20:	01010113          	addi	sp,sp,16
    80001b24:	00008067          	ret

0000000080001b28 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80001b28:	ff010113          	addi	sp,sp,-16
    80001b2c:	00113423          	sd	ra,8(sp)
    80001b30:	00813023          	sd	s0,0(sp)
    80001b34:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80001b38:	00000097          	auipc	ra,0x0
    80001b3c:	848080e7          	jalr	-1976(ra) # 80001380 <_Z15thread_dispatchv>
}
    80001b40:	00813083          	ld	ra,8(sp)
    80001b44:	00013403          	ld	s0,0(sp)
    80001b48:	01010113          	addi	sp,sp,16
    80001b4c:	00008067          	ret

0000000080001b50 <_ZN6Thread3runEv>:


protected:
    Thread();

    virtual void run() {}
    80001b50:	ff010113          	addi	sp,sp,-16
    80001b54:	00813423          	sd	s0,8(sp)
    80001b58:	01010413          	addi	s0,sp,16
    80001b5c:	00813403          	ld	s0,8(sp)
    80001b60:	01010113          	addi	sp,sp,16
    80001b64:	00008067          	ret

0000000080001b68 <_ZN5Riscv10popSppSpieEv>:
#include "../h/riscv.hpp"



void Riscv::popSppSpie()
{
    80001b68:	ff010113          	addi	sp,sp,-16
    80001b6c:	00813423          	sd	s0,8(sp)
    80001b70:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    80001b74:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    80001b78:	10200073          	sret
}
    80001b7c:	00813403          	ld	s0,8(sp)
    80001b80:	01010113          	addi	sp,sp,16
    80001b84:	00008067          	ret

0000000080001b88 <_ZN5Riscv11trapHandlerEv>:

void Riscv::trapHandler() {
    80001b88:	f8010113          	addi	sp,sp,-128
    80001b8c:	06113c23          	sd	ra,120(sp)
    80001b90:	06813823          	sd	s0,112(sp)
    80001b94:	06913423          	sd	s1,104(sp)
    80001b98:	07213023          	sd	s2,96(sp)
    80001b9c:	05313c23          	sd	s3,88(sp)
    80001ba0:	05413823          	sd	s4,80(sp)
    80001ba4:	05513423          	sd	s5,72(sp)
    80001ba8:	05613023          	sd	s6,64(sp)
    80001bac:	08010413          	addi	s0,sp,128
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80001bb0:	142027f3          	csrr	a5,scause
    80001bb4:	faf43423          	sd	a5,-88(s0)
    return scause;
    80001bb8:	fa843703          	ld	a4,-88(s0)
    __asm__ volatile ("ld %0, 10*8(fp)" : "=r"(a0));
    80001bbc:	05043783          	ld	a5,80(s0)
    80001bc0:	faf43023          	sd	a5,-96(s0)
    return a0;
    80001bc4:	fa043783          	ld	a5,-96(s0)
    __asm__ volatile ("ld %0, 11*8(fp)" : "=r"(a1));
    80001bc8:	05843683          	ld	a3,88(s0)
    80001bcc:	f8d43c23          	sd	a3,-104(s0)
    return a1;
    80001bd0:	f9843483          	ld	s1,-104(s0)
    __asm__ volatile ("ld %0, 12*8(fp)" : "=r"(a2));
    80001bd4:	06043683          	ld	a3,96(s0)
    80001bd8:	f8d43823          	sd	a3,-112(s0)
    return a2;
    80001bdc:	f9043983          	ld	s3,-112(s0)
    __asm__ volatile ("ld %0, 13*8(fp)" : "=r"(a3));
    80001be0:	06843683          	ld	a3,104(s0)
    80001be4:	f8d43423          	sd	a3,-120(s0)
    return a3;
    80001be8:	f8843903          	ld	s2,-120(s0)
    uint64 a3 = r_a3();

    uint64 sepc;
    uint64 sstatus;

    switch (scause) {
    80001bec:	fff00693          	li	a3,-1
    80001bf0:	03f69693          	slli	a3,a3,0x3f
    80001bf4:	00168693          	addi	a3,a3,1
    80001bf8:	1cd70e63          	beq	a4,a3,80001dd4 <_ZN5Riscv11trapHandlerEv+0x24c>
    80001bfc:	fff00693          	li	a3,-1
    80001c00:	03f69693          	slli	a3,a3,0x3f
    80001c04:	00168693          	addi	a3,a3,1
    80001c08:	04e6ee63          	bltu	a3,a4,80001c64 <_ZN5Riscv11trapHandlerEv+0xdc>
    80001c0c:	ff870713          	addi	a4,a4,-8
    80001c10:	00100693          	li	a3,1
    80001c14:	1ce6e463          	bltu	a3,a4,80001ddc <_ZN5Riscv11trapHandlerEv+0x254>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001c18:	14102773          	csrr	a4,sepc
    80001c1c:	fae43c23          	sd	a4,-72(s0)
    return sepc;
    80001c20:	fb843703          	ld	a4,-72(s0)
        case 0x08:
        case 0x09:
            //ecall: software interrupt
            sepc = r_sepc() + 4;
    80001c24:	00470a93          	addi	s5,a4,4
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001c28:	100026f3          	csrr	a3,sstatus
    80001c2c:	fad43823          	sd	a3,-80(s0)
    return sstatus;
    80001c30:	fb043a03          	ld	s4,-80(s0)
            sstatus = r_sstatus();
            void* mem;
            uint64* stack;
            PCB** handleAddr;
            switch(a0){
    80001c34:	01300693          	li	a3,19
    80001c38:	04f6c463          	blt	a3,a5,80001c80 <_ZN5Riscv11trapHandlerEv+0xf8>
    80001c3c:	08f05a63          	blez	a5,80001cd0 <_ZN5Riscv11trapHandlerEv+0x148>
    80001c40:	01300713          	li	a4,19
    80001c44:	08f76663          	bltu	a4,a5,80001cd0 <_ZN5Riscv11trapHandlerEv+0x148>
    80001c48:	00279793          	slli	a5,a5,0x2
    80001c4c:	00004717          	auipc	a4,0x4
    80001c50:	3d470713          	addi	a4,a4,980 # 80006020 <CONSOLE_STATUS+0x10>
    80001c54:	00e787b3          	add	a5,a5,a4
    80001c58:	0007a783          	lw	a5,0(a5)
    80001c5c:	00e787b3          	add	a5,a5,a4
    80001c60:	00078067          	jr	a5
    switch (scause) {
    80001c64:	fff00793          	li	a5,-1
    80001c68:	03f79793          	slli	a5,a5,0x3f
    80001c6c:	00978793          	addi	a5,a5,9
    80001c70:	16f71663          	bne	a4,a5,80001ddc <_ZN5Riscv11trapHandlerEv+0x254>
            //timer interrupt
            mc_sip(SIP_SSIP);
            break;
        case 0x8000000000000009UL:
            //external hardware interrupt
            console_handler();
    80001c74:	00004097          	auipc	ra,0x4
    80001c78:	d9c080e7          	jalr	-612(ra) # 80005a10 <console_handler>
            break;
    80001c7c:	1600006f          	j	80001ddc <_ZN5Riscv11trapHandlerEv+0x254>
    80001c80:	05100693          	li	a3,81
    80001c84:	04d79663          	bne	a5,a3,80001cd0 <_ZN5Riscv11trapHandlerEv+0x148>
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001c88:	100a1073          	csrw	sstatus,s4
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80001c8c:	10000793          	li	a5,256
    80001c90:	1007b073          	csrc	sstatus,a5
                    w_sepc(sepc+4);
    80001c94:	00870713          	addi	a4,a4,8
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001c98:	14171073          	csrw	sepc,a4
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80001c9c:	00200793          	li	a5,2
    80001ca0:	1447b073          	csrc	sip,a5
}
    80001ca4:	1380006f          	j	80001ddc <_ZN5Riscv11trapHandlerEv+0x254>
    80001ca8:	00005797          	auipc	a5,0x5
    80001cac:	6207c783          	lbu	a5,1568(a5) # 800072c8 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80001cb0:	00079863          	bnez	a5,80001cc0 <_ZN5Riscv11trapHandlerEv+0x138>
    80001cb4:	00100793          	li	a5,1
    80001cb8:	00005717          	auipc	a4,0x5
    80001cbc:	60f70823          	sb	a5,1552(a4) # 800072c8 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
                    mem = MemoryAllocator::getInstance().allocate((size_t) a1);
    80001cc0:	00048513          	mv	a0,s1
    80001cc4:	00000097          	auipc	ra,0x0
    80001cc8:	140080e7          	jalr	320(ra) # 80001e04 <_ZN15MemoryAllocator8allocateEm>
}

inline void Riscv::push_a0(long a0) {
    __asm__ volatile ("sd %0, 10*8(fp)" : : "r"(a0));
    80001ccc:	04a43823          	sd	a0,80(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001cd0:	100a1073          	csrw	sstatus,s4
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001cd4:	141a9073          	csrw	sepc,s5
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80001cd8:	00200793          	li	a5,2
    80001cdc:	1447b073          	csrc	sip,a5
}
    80001ce0:	0fc0006f          	j	80001ddc <_ZN5Riscv11trapHandlerEv+0x254>
    80001ce4:	00005797          	auipc	a5,0x5
    80001ce8:	5e47c783          	lbu	a5,1508(a5) # 800072c8 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80001cec:	00079863          	bnez	a5,80001cfc <_ZN5Riscv11trapHandlerEv+0x174>
    80001cf0:	00100793          	li	a5,1
    80001cf4:	00005717          	auipc	a4,0x5
    80001cf8:	5cf70a23          	sb	a5,1492(a4) # 800072c8 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
                    push_a0(MemoryAllocator::getInstance().deallocate((void *)a1));
    80001cfc:	00048513          	mv	a0,s1
    80001d00:	00000097          	auipc	ra,0x0
    80001d04:	1ec080e7          	jalr	492(ra) # 80001eec <_ZN15MemoryAllocator10deallocateEPv>
    __asm__ volatile ("sd %0, 10*8(fp)" : : "r"(a0));
    80001d08:	04a43823          	sd	a0,80(s0)
}
    80001d0c:	fc5ff06f          	j	80001cd0 <_ZN5Riscv11trapHandlerEv+0x148>
                    if((uint64*)a1!= nullptr) stack = (uint64*)MemoryAllocator::getInstance().allocate(((DEFAULT_STACK_SIZE + 16+ MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE));
    80001d10:	08048663          	beqz	s1,80001d9c <_ZN5Riscv11trapHandlerEv+0x214>
    80001d14:	00005797          	auipc	a5,0x5
    80001d18:	5b47c783          	lbu	a5,1460(a5) # 800072c8 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80001d1c:	00079863          	bnez	a5,80001d2c <_ZN5Riscv11trapHandlerEv+0x1a4>
    80001d20:	00100793          	li	a5,1
    80001d24:	00005717          	auipc	a4,0x5
    80001d28:	5af70223          	sb	a5,1444(a4) # 800072c8 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80001d2c:	04100513          	li	a0,65
    80001d30:	00000097          	auipc	ra,0x0
    80001d34:	0d4080e7          	jalr	212(ra) # 80001e04 <_ZN15MemoryAllocator8allocateEm>
    80001d38:	00050b13          	mv	s6,a0
                    (*handleAddr) = new PCB((PCB::Body)a1, (void*)a2, stack);
    80001d3c:	03000513          	li	a0,48
    80001d40:	00000097          	auipc	ra,0x0
    80001d44:	bac080e7          	jalr	-1108(ra) # 800018ec <_Znwm>
    80001d48:	00048793          	mv	a5,s1
        this->body = body;
    80001d4c:	00953023          	sd	s1,0(a0)
        this->stack = stack;
    80001d50:	01653423          	sd	s6,8(a0)
                   stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
    80001d54:	040b0863          	beqz	s6,80001da4 <_ZN5Riscv11trapHandlerEv+0x21c>
    80001d58:	00008737          	lui	a4,0x8
    80001d5c:	00eb0b33          	add	s6,s6,a4
        context = {(uint64) &wrapper,
    80001d60:	00005717          	auipc	a4,0x5
    80001d64:	4c873703          	ld	a4,1224(a4) # 80007228 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001d68:	00e53c23          	sd	a4,24(a0)
    80001d6c:	03653023          	sd	s6,32(a0)
        this->args = args;
    80001d70:	01353823          	sd	s3,16(a0)
        state = READY;
    80001d74:	02052423          	sw	zero,40(a0)
    80001d78:	00a93023          	sd	a0,0(s2)
                    if((PCB::Body)a1)Scheduler::put(*handleAddr);
    80001d7c:	00078663          	beqz	a5,80001d88 <_ZN5Riscv11trapHandlerEv+0x200>
    80001d80:	00000097          	auipc	ra,0x0
    80001d84:	808080e7          	jalr	-2040(ra) # 80001588 <_ZN9Scheduler3putEP3PCB>
                    if(!(*handleAddr))push_a0(-1);
    80001d88:	00093783          	ld	a5,0(s2)
    80001d8c:	02078063          	beqz	a5,80001dac <_ZN5Riscv11trapHandlerEv+0x224>
    __asm__ volatile ("sd %0, 10*8(fp)" : : "r"(a0));
    80001d90:	00000793          	li	a5,0
    80001d94:	04f43823          	sd	a5,80(s0)
}
    80001d98:	f39ff06f          	j	80001cd0 <_ZN5Riscv11trapHandlerEv+0x148>
                    else stack = nullptr;
    80001d9c:	00000b13          	li	s6,0
    80001da0:	f9dff06f          	j	80001d3c <_ZN5Riscv11trapHandlerEv+0x1b4>
                   stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
    80001da4:	00000b13          	li	s6,0
    80001da8:	fb9ff06f          	j	80001d60 <_ZN5Riscv11trapHandlerEv+0x1d8>
    __asm__ volatile ("sd %0, 10*8(fp)" : : "r"(a0));
    80001dac:	fff00793          	li	a5,-1
    80001db0:	04f43823          	sd	a5,80(s0)
}
    80001db4:	fddff06f          	j	80001d90 <_ZN5Riscv11trapHandlerEv+0x208>
                    push_a0(PCB::exit());
    80001db8:	fffff097          	auipc	ra,0xfffff
    80001dbc:	694080e7          	jalr	1684(ra) # 8000144c <_ZN3PCB4exitEv>
    __asm__ volatile ("sd %0, 10*8(fp)" : : "r"(a0));
    80001dc0:	04a43823          	sd	a0,80(s0)
}
    80001dc4:	f0dff06f          	j	80001cd0 <_ZN5Riscv11trapHandlerEv+0x148>
                    PCB::dispatch();
    80001dc8:	fffff097          	auipc	ra,0xfffff
    80001dcc:	5fc080e7          	jalr	1532(ra) # 800013c4 <_ZN3PCB8dispatchEv>
                    break;
    80001dd0:	f01ff06f          	j	80001cd0 <_ZN5Riscv11trapHandlerEv+0x148>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80001dd4:	00200793          	li	a5,2
    80001dd8:	1447b073          	csrc	sip,a5
        default:
            return;
            //printString("ERROR: Unexpected interrupt!");
    }

    80001ddc:	07813083          	ld	ra,120(sp)
    80001de0:	07013403          	ld	s0,112(sp)
    80001de4:	06813483          	ld	s1,104(sp)
    80001de8:	06013903          	ld	s2,96(sp)
    80001dec:	05813983          	ld	s3,88(sp)
    80001df0:	05013a03          	ld	s4,80(sp)
    80001df4:	04813a83          	ld	s5,72(sp)
    80001df8:	04013b03          	ld	s6,64(sp)
    80001dfc:	08010113          	addi	sp,sp,128
    80001e00:	00008067          	ret

0000000080001e04 <_ZN15MemoryAllocator8allocateEm>:
Block *MemoryAllocator::free_list = nullptr;
Block *MemoryAllocator::allocated_list = nullptr;


// Allocate memory
void *MemoryAllocator::allocate(size_t size) {
    80001e04:	ff010113          	addi	sp,sp,-16
    80001e08:	00813423          	sd	s0,8(sp)
    80001e0c:	01010413          	addi	s0,sp,16
    80001e10:	00050613          	mv	a2,a0
    size_t sizeToAllocate = size * MEM_BLOCK_SIZE;
    80001e14:	00651713          	slli	a4,a0,0x6

    Block *prev = nullptr;
    Block *current = free_list;
    80001e18:	00005517          	auipc	a0,0x5
    80001e1c:	4b853503          	ld	a0,1208(a0) # 800072d0 <_ZN15MemoryAllocator9free_listE>
    Block *prev = nullptr;
    80001e20:	00000693          	li	a3,0

    // Find a free block that is large enough
    while (current != nullptr) {
    80001e24:	06050e63          	beqz	a0,80001ea0 <_ZN15MemoryAllocator8allocateEm+0x9c>

        if (current->size >= sizeToAllocate) {
    80001e28:	00053783          	ld	a5,0(a0)
    80001e2c:	00e7f863          	bgeu	a5,a4,80001e3c <_ZN15MemoryAllocator8allocateEm+0x38>
            // Return the memory

            void *userPtr = (Block *) ((uint64 *) current + sizeof(Block));
            return userPtr;
        }
        prev = current;
    80001e30:	00050693          	mv	a3,a0
        current = current->next;
    80001e34:	00853503          	ld	a0,8(a0)
    while (current != nullptr) {
    80001e38:	fedff06f          	j	80001e24 <_ZN15MemoryAllocator8allocateEm+0x20>
            if (prev == nullptr) {
    80001e3c:	06068863          	beqz	a3,80001eac <_ZN15MemoryAllocator8allocateEm+0xa8>
                prev->next = current->next;
    80001e40:	00853783          	ld	a5,8(a0)
    80001e44:	00f6b423          	sd	a5,8(a3)
            if (current->size - sizeToAllocate >= MEM_BLOCK_SIZE) {
    80001e48:	00053783          	ld	a5,0(a0)
    80001e4c:	40e787b3          	sub	a5,a5,a4
    80001e50:	03f00593          	li	a1,63
    80001e54:	02f5f863          	bgeu	a1,a5,80001e84 <_ZN15MemoryAllocator8allocateEm+0x80>
                Block *newBlock = (Block *) ((uint64 *) current + sizeToAllocate);
    80001e58:	00961613          	slli	a2,a2,0x9
    80001e5c:	00c50633          	add	a2,a0,a2
                newBlock->size = current->size - sizeToAllocate;
    80001e60:	00f63023          	sd	a5,0(a2)
                current->size = sizeToAllocate;
    80001e64:	00e53023          	sd	a4,0(a0)
                if (!free_list) {
    80001e68:	00005797          	auipc	a5,0x5
    80001e6c:	4687b783          	ld	a5,1128(a5) # 800072d0 <_ZN15MemoryAllocator9free_listE>
    80001e70:	04078663          	beqz	a5,80001ebc <_ZN15MemoryAllocator8allocateEm+0xb8>
                } else if (!prev) {
    80001e74:	04068c63          	beqz	a3,80001ecc <_ZN15MemoryAllocator8allocateEm+0xc8>
                    prev->next = newBlock;
    80001e78:	00c6b423          	sd	a2,8(a3)
                    newBlock->next = current->next;
    80001e7c:	00853783          	ld	a5,8(a0)
    80001e80:	00f63423          	sd	a5,8(a2)
            if (!allocated_list) {
    80001e84:	00005797          	auipc	a5,0x5
    80001e88:	4547b783          	ld	a5,1108(a5) # 800072d8 <_ZN15MemoryAllocator14allocated_listE>
    80001e8c:	04078863          	beqz	a5,80001edc <_ZN15MemoryAllocator8allocateEm+0xd8>
                current->next = allocated_list;
    80001e90:	00f53423          	sd	a5,8(a0)
                allocated_list = current;
    80001e94:	00005797          	auipc	a5,0x5
    80001e98:	44a7b223          	sd	a0,1092(a5) # 800072d8 <_ZN15MemoryAllocator14allocated_listE>
            void *userPtr = (Block *) ((uint64 *) current + sizeof(Block));
    80001e9c:	08050513          	addi	a0,a0,128
    }

    // No block was found
    return nullptr;
}
    80001ea0:	00813403          	ld	s0,8(sp)
    80001ea4:	01010113          	addi	sp,sp,16
    80001ea8:	00008067          	ret
                free_list = current->next;
    80001eac:	00853783          	ld	a5,8(a0)
    80001eb0:	00005597          	auipc	a1,0x5
    80001eb4:	42f5b023          	sd	a5,1056(a1) # 800072d0 <_ZN15MemoryAllocator9free_listE>
    80001eb8:	f91ff06f          	j	80001e48 <_ZN15MemoryAllocator8allocateEm+0x44>
                    free_list = newBlock;
    80001ebc:	00005797          	auipc	a5,0x5
    80001ec0:	40c7ba23          	sd	a2,1044(a5) # 800072d0 <_ZN15MemoryAllocator9free_listE>
                    newBlock->next = nullptr;
    80001ec4:	00063423          	sd	zero,8(a2)
    80001ec8:	fbdff06f          	j	80001e84 <_ZN15MemoryAllocator8allocateEm+0x80>
                    newBlock->next = free_list;
    80001ecc:	00f63423          	sd	a5,8(a2)
                    free_list = newBlock;
    80001ed0:	00005797          	auipc	a5,0x5
    80001ed4:	40c7b023          	sd	a2,1024(a5) # 800072d0 <_ZN15MemoryAllocator9free_listE>
    80001ed8:	fadff06f          	j	80001e84 <_ZN15MemoryAllocator8allocateEm+0x80>
                allocated_list = current;
    80001edc:	00005797          	auipc	a5,0x5
    80001ee0:	3ea7be23          	sd	a0,1020(a5) # 800072d8 <_ZN15MemoryAllocator14allocated_listE>
                allocated_list->next = nullptr;
    80001ee4:	00053423          	sd	zero,8(a0)
    80001ee8:	fb5ff06f          	j	80001e9c <_ZN15MemoryAllocator8allocateEm+0x98>

0000000080001eec <_ZN15MemoryAllocator10deallocateEPv>:

// Deallocate memory
int MemoryAllocator::deallocate(void *ptr) {
    80001eec:	ff010113          	addi	sp,sp,-16
    80001ef0:	00813423          	sd	s0,8(sp)
    80001ef4:	01010413          	addi	s0,sp,16
    Block *block = (Block *) ((uint64 *) ptr - sizeof(Block));
    80001ef8:	f8050713          	addi	a4,a0,-128
    Block *tmpPrev = nullptr;
    Block *tmp = allocated_list;
    80001efc:	00005797          	auipc	a5,0x5
    80001f00:	3dc7b783          	ld	a5,988(a5) # 800072d8 <_ZN15MemoryAllocator14allocated_listE>
    Block *tmpPrev = nullptr;
    80001f04:	00000693          	li	a3,0
    uint8 flag = 0;

    //Check if the block given was previously allocated
    while (tmp) {
    80001f08:	00078a63          	beqz	a5,80001f1c <_ZN15MemoryAllocator10deallocateEPv+0x30>
        if (tmp == block) {
    80001f0c:	04e78263          	beq	a5,a4,80001f50 <_ZN15MemoryAllocator10deallocateEPv+0x64>
            flag = 1;
            break;
        }
        tmpPrev = tmp;
    80001f10:	00078693          	mv	a3,a5
        tmp = tmp->next;
    80001f14:	0087b783          	ld	a5,8(a5)
    while (tmp) {
    80001f18:	ff1ff06f          	j	80001f08 <_ZN15MemoryAllocator10deallocateEPv+0x1c>
    uint8 flag = 0;
    80001f1c:	00000613          	li	a2,0
    }
    if (flag == 0) return -1;
    80001f20:	0e060263          	beqz	a2,80002004 <_ZN15MemoryAllocator10deallocateEPv+0x118>

    // Found a block, remove it from the allocated list
    if (tmpPrev != nullptr) {
    80001f24:	02068a63          	beqz	a3,80001f58 <_ZN15MemoryAllocator10deallocateEPv+0x6c>
        tmpPrev->next = tmp->next;
    80001f28:	0087b783          	ld	a5,8(a5)
    80001f2c:	00f6b423          	sd	a5,8(a3)
        allocated_list = tmp->next;
    }


    Block *prev = nullptr;
    Block *current = free_list;
    80001f30:	00005797          	auipc	a5,0x5
    80001f34:	3a07b783          	ld	a5,928(a5) # 800072d0 <_ZN15MemoryAllocator9free_listE>
    Block *prev = nullptr;
    80001f38:	00000693          	li	a3,0

    // Add it to the free_list
    while (current != nullptr) {
    80001f3c:	02078c63          	beqz	a5,80001f74 <_ZN15MemoryAllocator10deallocateEPv+0x88>
        if ((uint64 *) block < (uint64 *) current) {
    80001f40:	02f76463          	bltu	a4,a5,80001f68 <_ZN15MemoryAllocator10deallocateEPv+0x7c>
            } else {
                free_list = block;
            }
            break;
        }
        prev = current;
    80001f44:	00078693          	mv	a3,a5
        current = current->next;
    80001f48:	0087b783          	ld	a5,8(a5)
    while (current != nullptr) {
    80001f4c:	ff1ff06f          	j	80001f3c <_ZN15MemoryAllocator10deallocateEPv+0x50>
            flag = 1;
    80001f50:	00100613          	li	a2,1
    80001f54:	fcdff06f          	j	80001f20 <_ZN15MemoryAllocator10deallocateEPv+0x34>
        allocated_list = tmp->next;
    80001f58:	0087b783          	ld	a5,8(a5)
    80001f5c:	00005697          	auipc	a3,0x5
    80001f60:	36f6be23          	sd	a5,892(a3) # 800072d8 <_ZN15MemoryAllocator14allocated_listE>
    80001f64:	fcdff06f          	j	80001f30 <_ZN15MemoryAllocator10deallocateEPv+0x44>
            block->next = current;
    80001f68:	f8f53423          	sd	a5,-120(a0)
            if (prev != nullptr) {
    80001f6c:	04068463          	beqz	a3,80001fb4 <_ZN15MemoryAllocator10deallocateEPv+0xc8>
                prev->next = block;
    80001f70:	00e6b423          	sd	a4,8(a3)
    }
    if (current == nullptr) {
    80001f74:	04078663          	beqz	a5,80001fc0 <_ZN15MemoryAllocator10deallocateEPv+0xd4>
        //current = block;
        block->next = nullptr;
    }

    //Merge it with neighbour blocks if possible
    if (prev != nullptr) {
    80001f78:	00068a63          	beqz	a3,80001f8c <_ZN15MemoryAllocator10deallocateEPv+0xa0>
        if ((uint64 *) prev + prev->size == (uint64 *) block) {
    80001f7c:	0006b603          	ld	a2,0(a3)
    80001f80:	00361793          	slli	a5,a2,0x3
    80001f84:	00f687b3          	add	a5,a3,a5
    80001f88:	04e78263          	beq	a5,a4,80001fcc <_ZN15MemoryAllocator10deallocateEPv+0xe0>
            prev->size = prev->size + block->size;
            prev->next = block->next;
            block = prev;
        }
    }
    if (block->next != nullptr) {
    80001f8c:	00873783          	ld	a5,8(a4)
    80001f90:	06078e63          	beqz	a5,8000200c <_ZN15MemoryAllocator10deallocateEPv+0x120>
        if ((uint64 *) block + block->size == (uint64 *) block->next) {
    80001f94:	00073603          	ld	a2,0(a4)
    80001f98:	00361693          	slli	a3,a2,0x3
    80001f9c:	00d706b3          	add	a3,a4,a3
    80001fa0:	04d78463          	beq	a5,a3,80001fe8 <_ZN15MemoryAllocator10deallocateEPv+0xfc>
            block->size += block->next->size;
            block->next = block->next->next;
        }
    }

    return 0;
    80001fa4:	00000513          	li	a0,0

}
    80001fa8:	00813403          	ld	s0,8(sp)
    80001fac:	01010113          	addi	sp,sp,16
    80001fb0:	00008067          	ret
                free_list = block;
    80001fb4:	00005617          	auipc	a2,0x5
    80001fb8:	30e63e23          	sd	a4,796(a2) # 800072d0 <_ZN15MemoryAllocator9free_listE>
    80001fbc:	fb9ff06f          	j	80001f74 <_ZN15MemoryAllocator10deallocateEPv+0x88>
        prev->next = block;
    80001fc0:	00e6b423          	sd	a4,8(a3)
        block->next = nullptr;
    80001fc4:	f8053423          	sd	zero,-120(a0)
    80001fc8:	fb1ff06f          	j	80001f78 <_ZN15MemoryAllocator10deallocateEPv+0x8c>
            prev->size = prev->size + block->size;
    80001fcc:	f8053783          	ld	a5,-128(a0)
    80001fd0:	00f60633          	add	a2,a2,a5
    80001fd4:	00c6b023          	sd	a2,0(a3)
            prev->next = block->next;
    80001fd8:	f8853783          	ld	a5,-120(a0)
    80001fdc:	00f6b423          	sd	a5,8(a3)
            block = prev;
    80001fe0:	00068713          	mv	a4,a3
    80001fe4:	fa9ff06f          	j	80001f8c <_ZN15MemoryAllocator10deallocateEPv+0xa0>
            block->size += block->next->size;
    80001fe8:	0007b683          	ld	a3,0(a5)
    80001fec:	00d60633          	add	a2,a2,a3
    80001ff0:	00c73023          	sd	a2,0(a4)
            block->next = block->next->next;
    80001ff4:	0087b783          	ld	a5,8(a5)
    80001ff8:	00f73423          	sd	a5,8(a4)
    return 0;
    80001ffc:	00000513          	li	a0,0
    80002000:	fa9ff06f          	j	80001fa8 <_ZN15MemoryAllocator10deallocateEPv+0xbc>
    if (flag == 0) return -1;
    80002004:	fff00513          	li	a0,-1
    80002008:	fa1ff06f          	j	80001fa8 <_ZN15MemoryAllocator10deallocateEPv+0xbc>
    return 0;
    8000200c:	00000513          	li	a0,0
    80002010:	f99ff06f          	j	80001fa8 <_ZN15MemoryAllocator10deallocateEPv+0xbc>

0000000080002014 <_Z4putcc>:
//
//    while (--i >= 0)
//        __putc(buf[i]);
//}

void putc(char c){
    80002014:	ff010113          	addi	sp,sp,-16
    80002018:	00113423          	sd	ra,8(sp)
    8000201c:	00813023          	sd	s0,0(sp)
    80002020:	01010413          	addi	s0,sp,16
    __putc(c);
    80002024:	00004097          	auipc	ra,0x4
    80002028:	978080e7          	jalr	-1672(ra) # 8000599c <__putc>
}
    8000202c:	00813083          	ld	ra,8(sp)
    80002030:	00013403          	ld	s0,0(sp)
    80002034:	01010113          	addi	sp,sp,16
    80002038:	00008067          	ret

000000008000203c <_Z4getcv>:

char getc(){
    8000203c:	ff010113          	addi	sp,sp,-16
    80002040:	00113423          	sd	ra,8(sp)
    80002044:	00813023          	sd	s0,0(sp)
    80002048:	01010413          	addi	s0,sp,16
    return __getc();
    8000204c:	00004097          	auipc	ra,0x4
    80002050:	98c080e7          	jalr	-1652(ra) # 800059d8 <__getc>
    80002054:	00813083          	ld	ra,8(sp)
    80002058:	00013403          	ld	s0,0(sp)
    8000205c:	01010113          	addi	sp,sp,16
    80002060:	00008067          	ret

0000000080002064 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80002064:	fe010113          	addi	sp,sp,-32
    80002068:	00113c23          	sd	ra,24(sp)
    8000206c:	00813823          	sd	s0,16(sp)
    80002070:	00913423          	sd	s1,8(sp)
    80002074:	01213023          	sd	s2,0(sp)
    80002078:	02010413          	addi	s0,sp,32
    8000207c:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80002080:	00100793          	li	a5,1
    80002084:	02a7f863          	bgeu	a5,a0,800020b4 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80002088:	00a00793          	li	a5,10
    8000208c:	02f577b3          	remu	a5,a0,a5
    80002090:	02078e63          	beqz	a5,800020cc <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80002094:	fff48513          	addi	a0,s1,-1
    80002098:	00000097          	auipc	ra,0x0
    8000209c:	fcc080e7          	jalr	-52(ra) # 80002064 <_ZL9fibonaccim>
    800020a0:	00050913          	mv	s2,a0
    800020a4:	ffe48513          	addi	a0,s1,-2
    800020a8:	00000097          	auipc	ra,0x0
    800020ac:	fbc080e7          	jalr	-68(ra) # 80002064 <_ZL9fibonaccim>
    800020b0:	00a90533          	add	a0,s2,a0
}
    800020b4:	01813083          	ld	ra,24(sp)
    800020b8:	01013403          	ld	s0,16(sp)
    800020bc:	00813483          	ld	s1,8(sp)
    800020c0:	00013903          	ld	s2,0(sp)
    800020c4:	02010113          	addi	sp,sp,32
    800020c8:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800020cc:	fffff097          	auipc	ra,0xfffff
    800020d0:	2b4080e7          	jalr	692(ra) # 80001380 <_Z15thread_dispatchv>
    800020d4:	fc1ff06f          	j	80002094 <_ZL9fibonaccim+0x30>

00000000800020d8 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    800020d8:	fe010113          	addi	sp,sp,-32
    800020dc:	00113c23          	sd	ra,24(sp)
    800020e0:	00813823          	sd	s0,16(sp)
    800020e4:	00913423          	sd	s1,8(sp)
    800020e8:	01213023          	sd	s2,0(sp)
    800020ec:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800020f0:	00000913          	li	s2,0
    800020f4:	0380006f          	j	8000212c <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    800020f8:	fffff097          	auipc	ra,0xfffff
    800020fc:	288080e7          	jalr	648(ra) # 80001380 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80002100:	00148493          	addi	s1,s1,1
    80002104:	000027b7          	lui	a5,0x2
    80002108:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000210c:	0097ee63          	bltu	a5,s1,80002128 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80002110:	00000713          	li	a4,0
    80002114:	000077b7          	lui	a5,0x7
    80002118:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000211c:	fce7eee3          	bltu	a5,a4,800020f8 <_ZN7WorkerA11workerBodyAEPv+0x20>
    80002120:	00170713          	addi	a4,a4,1
    80002124:	ff1ff06f          	j	80002114 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80002128:	00190913          	addi	s2,s2,1
    8000212c:	00900793          	li	a5,9
    80002130:	0527e063          	bltu	a5,s2,80002170 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80002134:	00004517          	auipc	a0,0x4
    80002138:	f3c50513          	addi	a0,a0,-196 # 80006070 <CONSOLE_STATUS+0x60>
    8000213c:	00001097          	auipc	ra,0x1
    80002140:	e9c080e7          	jalr	-356(ra) # 80002fd8 <_Z11printStringPKc>
    80002144:	00000613          	li	a2,0
    80002148:	00a00593          	li	a1,10
    8000214c:	0009051b          	sext.w	a0,s2
    80002150:	00001097          	auipc	ra,0x1
    80002154:	038080e7          	jalr	56(ra) # 80003188 <_Z8printIntiii>
    80002158:	00004517          	auipc	a0,0x4
    8000215c:	19050513          	addi	a0,a0,400 # 800062e8 <CONSOLE_STATUS+0x2d8>
    80002160:	00001097          	auipc	ra,0x1
    80002164:	e78080e7          	jalr	-392(ra) # 80002fd8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80002168:	00000493          	li	s1,0
    8000216c:	f99ff06f          	j	80002104 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80002170:	00004517          	auipc	a0,0x4
    80002174:	f0850513          	addi	a0,a0,-248 # 80006078 <CONSOLE_STATUS+0x68>
    80002178:	00001097          	auipc	ra,0x1
    8000217c:	e60080e7          	jalr	-416(ra) # 80002fd8 <_Z11printStringPKc>
    finishedA = true;
    80002180:	00100793          	li	a5,1
    80002184:	00005717          	auipc	a4,0x5
    80002188:	14f70e23          	sb	a5,348(a4) # 800072e0 <_ZL9finishedA>
}
    8000218c:	01813083          	ld	ra,24(sp)
    80002190:	01013403          	ld	s0,16(sp)
    80002194:	00813483          	ld	s1,8(sp)
    80002198:	00013903          	ld	s2,0(sp)
    8000219c:	02010113          	addi	sp,sp,32
    800021a0:	00008067          	ret

00000000800021a4 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    800021a4:	fe010113          	addi	sp,sp,-32
    800021a8:	00113c23          	sd	ra,24(sp)
    800021ac:	00813823          	sd	s0,16(sp)
    800021b0:	00913423          	sd	s1,8(sp)
    800021b4:	01213023          	sd	s2,0(sp)
    800021b8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800021bc:	00000913          	li	s2,0
    800021c0:	0380006f          	j	800021f8 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    800021c4:	fffff097          	auipc	ra,0xfffff
    800021c8:	1bc080e7          	jalr	444(ra) # 80001380 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800021cc:	00148493          	addi	s1,s1,1
    800021d0:	000027b7          	lui	a5,0x2
    800021d4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800021d8:	0097ee63          	bltu	a5,s1,800021f4 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800021dc:	00000713          	li	a4,0
    800021e0:	000077b7          	lui	a5,0x7
    800021e4:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800021e8:	fce7eee3          	bltu	a5,a4,800021c4 <_ZN7WorkerB11workerBodyBEPv+0x20>
    800021ec:	00170713          	addi	a4,a4,1
    800021f0:	ff1ff06f          	j	800021e0 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    800021f4:	00190913          	addi	s2,s2,1
    800021f8:	00f00793          	li	a5,15
    800021fc:	0527e063          	bltu	a5,s2,8000223c <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80002200:	00004517          	auipc	a0,0x4
    80002204:	e8850513          	addi	a0,a0,-376 # 80006088 <CONSOLE_STATUS+0x78>
    80002208:	00001097          	auipc	ra,0x1
    8000220c:	dd0080e7          	jalr	-560(ra) # 80002fd8 <_Z11printStringPKc>
    80002210:	00000613          	li	a2,0
    80002214:	00a00593          	li	a1,10
    80002218:	0009051b          	sext.w	a0,s2
    8000221c:	00001097          	auipc	ra,0x1
    80002220:	f6c080e7          	jalr	-148(ra) # 80003188 <_Z8printIntiii>
    80002224:	00004517          	auipc	a0,0x4
    80002228:	0c450513          	addi	a0,a0,196 # 800062e8 <CONSOLE_STATUS+0x2d8>
    8000222c:	00001097          	auipc	ra,0x1
    80002230:	dac080e7          	jalr	-596(ra) # 80002fd8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80002234:	00000493          	li	s1,0
    80002238:	f99ff06f          	j	800021d0 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    8000223c:	00004517          	auipc	a0,0x4
    80002240:	e5450513          	addi	a0,a0,-428 # 80006090 <CONSOLE_STATUS+0x80>
    80002244:	00001097          	auipc	ra,0x1
    80002248:	d94080e7          	jalr	-620(ra) # 80002fd8 <_Z11printStringPKc>
    finishedB = true;
    8000224c:	00100793          	li	a5,1
    80002250:	00005717          	auipc	a4,0x5
    80002254:	08f708a3          	sb	a5,145(a4) # 800072e1 <_ZL9finishedB>
    thread_dispatch();
    80002258:	fffff097          	auipc	ra,0xfffff
    8000225c:	128080e7          	jalr	296(ra) # 80001380 <_Z15thread_dispatchv>
}
    80002260:	01813083          	ld	ra,24(sp)
    80002264:	01013403          	ld	s0,16(sp)
    80002268:	00813483          	ld	s1,8(sp)
    8000226c:	00013903          	ld	s2,0(sp)
    80002270:	02010113          	addi	sp,sp,32
    80002274:	00008067          	ret

0000000080002278 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80002278:	fe010113          	addi	sp,sp,-32
    8000227c:	00113c23          	sd	ra,24(sp)
    80002280:	00813823          	sd	s0,16(sp)
    80002284:	00913423          	sd	s1,8(sp)
    80002288:	01213023          	sd	s2,0(sp)
    8000228c:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80002290:	00000493          	li	s1,0
    80002294:	0400006f          	j	800022d4 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80002298:	00004517          	auipc	a0,0x4
    8000229c:	e0850513          	addi	a0,a0,-504 # 800060a0 <CONSOLE_STATUS+0x90>
    800022a0:	00001097          	auipc	ra,0x1
    800022a4:	d38080e7          	jalr	-712(ra) # 80002fd8 <_Z11printStringPKc>
    800022a8:	00000613          	li	a2,0
    800022ac:	00a00593          	li	a1,10
    800022b0:	00048513          	mv	a0,s1
    800022b4:	00001097          	auipc	ra,0x1
    800022b8:	ed4080e7          	jalr	-300(ra) # 80003188 <_Z8printIntiii>
    800022bc:	00004517          	auipc	a0,0x4
    800022c0:	02c50513          	addi	a0,a0,44 # 800062e8 <CONSOLE_STATUS+0x2d8>
    800022c4:	00001097          	auipc	ra,0x1
    800022c8:	d14080e7          	jalr	-748(ra) # 80002fd8 <_Z11printStringPKc>
    for (; i < 3; i++) {
    800022cc:	0014849b          	addiw	s1,s1,1
    800022d0:	0ff4f493          	andi	s1,s1,255
    800022d4:	00200793          	li	a5,2
    800022d8:	fc97f0e3          	bgeu	a5,s1,80002298 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    800022dc:	00004517          	auipc	a0,0x4
    800022e0:	dcc50513          	addi	a0,a0,-564 # 800060a8 <CONSOLE_STATUS+0x98>
    800022e4:	00001097          	auipc	ra,0x1
    800022e8:	cf4080e7          	jalr	-780(ra) # 80002fd8 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800022ec:	00700313          	li	t1,7
    thread_dispatch();
    800022f0:	fffff097          	auipc	ra,0xfffff
    800022f4:	090080e7          	jalr	144(ra) # 80001380 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800022f8:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    800022fc:	00004517          	auipc	a0,0x4
    80002300:	dbc50513          	addi	a0,a0,-580 # 800060b8 <CONSOLE_STATUS+0xa8>
    80002304:	00001097          	auipc	ra,0x1
    80002308:	cd4080e7          	jalr	-812(ra) # 80002fd8 <_Z11printStringPKc>
    8000230c:	00000613          	li	a2,0
    80002310:	00a00593          	li	a1,10
    80002314:	0009051b          	sext.w	a0,s2
    80002318:	00001097          	auipc	ra,0x1
    8000231c:	e70080e7          	jalr	-400(ra) # 80003188 <_Z8printIntiii>
    80002320:	00004517          	auipc	a0,0x4
    80002324:	fc850513          	addi	a0,a0,-56 # 800062e8 <CONSOLE_STATUS+0x2d8>
    80002328:	00001097          	auipc	ra,0x1
    8000232c:	cb0080e7          	jalr	-848(ra) # 80002fd8 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80002330:	00c00513          	li	a0,12
    80002334:	00000097          	auipc	ra,0x0
    80002338:	d30080e7          	jalr	-720(ra) # 80002064 <_ZL9fibonaccim>
    8000233c:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80002340:	00004517          	auipc	a0,0x4
    80002344:	d8050513          	addi	a0,a0,-640 # 800060c0 <CONSOLE_STATUS+0xb0>
    80002348:	00001097          	auipc	ra,0x1
    8000234c:	c90080e7          	jalr	-880(ra) # 80002fd8 <_Z11printStringPKc>
    80002350:	00000613          	li	a2,0
    80002354:	00a00593          	li	a1,10
    80002358:	0009051b          	sext.w	a0,s2
    8000235c:	00001097          	auipc	ra,0x1
    80002360:	e2c080e7          	jalr	-468(ra) # 80003188 <_Z8printIntiii>
    80002364:	00004517          	auipc	a0,0x4
    80002368:	f8450513          	addi	a0,a0,-124 # 800062e8 <CONSOLE_STATUS+0x2d8>
    8000236c:	00001097          	auipc	ra,0x1
    80002370:	c6c080e7          	jalr	-916(ra) # 80002fd8 <_Z11printStringPKc>
    80002374:	0400006f          	j	800023b4 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80002378:	00004517          	auipc	a0,0x4
    8000237c:	d2850513          	addi	a0,a0,-728 # 800060a0 <CONSOLE_STATUS+0x90>
    80002380:	00001097          	auipc	ra,0x1
    80002384:	c58080e7          	jalr	-936(ra) # 80002fd8 <_Z11printStringPKc>
    80002388:	00000613          	li	a2,0
    8000238c:	00a00593          	li	a1,10
    80002390:	00048513          	mv	a0,s1
    80002394:	00001097          	auipc	ra,0x1
    80002398:	df4080e7          	jalr	-524(ra) # 80003188 <_Z8printIntiii>
    8000239c:	00004517          	auipc	a0,0x4
    800023a0:	f4c50513          	addi	a0,a0,-180 # 800062e8 <CONSOLE_STATUS+0x2d8>
    800023a4:	00001097          	auipc	ra,0x1
    800023a8:	c34080e7          	jalr	-972(ra) # 80002fd8 <_Z11printStringPKc>
    for (; i < 6; i++) {
    800023ac:	0014849b          	addiw	s1,s1,1
    800023b0:	0ff4f493          	andi	s1,s1,255
    800023b4:	00500793          	li	a5,5
    800023b8:	fc97f0e3          	bgeu	a5,s1,80002378 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    800023bc:	00004517          	auipc	a0,0x4
    800023c0:	cbc50513          	addi	a0,a0,-836 # 80006078 <CONSOLE_STATUS+0x68>
    800023c4:	00001097          	auipc	ra,0x1
    800023c8:	c14080e7          	jalr	-1004(ra) # 80002fd8 <_Z11printStringPKc>
    finishedC = true;
    800023cc:	00100793          	li	a5,1
    800023d0:	00005717          	auipc	a4,0x5
    800023d4:	f0f70923          	sb	a5,-238(a4) # 800072e2 <_ZL9finishedC>
    thread_dispatch();
    800023d8:	fffff097          	auipc	ra,0xfffff
    800023dc:	fa8080e7          	jalr	-88(ra) # 80001380 <_Z15thread_dispatchv>
}
    800023e0:	01813083          	ld	ra,24(sp)
    800023e4:	01013403          	ld	s0,16(sp)
    800023e8:	00813483          	ld	s1,8(sp)
    800023ec:	00013903          	ld	s2,0(sp)
    800023f0:	02010113          	addi	sp,sp,32
    800023f4:	00008067          	ret

00000000800023f8 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    800023f8:	fe010113          	addi	sp,sp,-32
    800023fc:	00113c23          	sd	ra,24(sp)
    80002400:	00813823          	sd	s0,16(sp)
    80002404:	00913423          	sd	s1,8(sp)
    80002408:	01213023          	sd	s2,0(sp)
    8000240c:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80002410:	00a00493          	li	s1,10
    80002414:	0400006f          	j	80002454 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80002418:	00004517          	auipc	a0,0x4
    8000241c:	cb850513          	addi	a0,a0,-840 # 800060d0 <CONSOLE_STATUS+0xc0>
    80002420:	00001097          	auipc	ra,0x1
    80002424:	bb8080e7          	jalr	-1096(ra) # 80002fd8 <_Z11printStringPKc>
    80002428:	00000613          	li	a2,0
    8000242c:	00a00593          	li	a1,10
    80002430:	00048513          	mv	a0,s1
    80002434:	00001097          	auipc	ra,0x1
    80002438:	d54080e7          	jalr	-684(ra) # 80003188 <_Z8printIntiii>
    8000243c:	00004517          	auipc	a0,0x4
    80002440:	eac50513          	addi	a0,a0,-340 # 800062e8 <CONSOLE_STATUS+0x2d8>
    80002444:	00001097          	auipc	ra,0x1
    80002448:	b94080e7          	jalr	-1132(ra) # 80002fd8 <_Z11printStringPKc>
    for (; i < 13; i++) {
    8000244c:	0014849b          	addiw	s1,s1,1
    80002450:	0ff4f493          	andi	s1,s1,255
    80002454:	00c00793          	li	a5,12
    80002458:	fc97f0e3          	bgeu	a5,s1,80002418 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    8000245c:	00004517          	auipc	a0,0x4
    80002460:	c7c50513          	addi	a0,a0,-900 # 800060d8 <CONSOLE_STATUS+0xc8>
    80002464:	00001097          	auipc	ra,0x1
    80002468:	b74080e7          	jalr	-1164(ra) # 80002fd8 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    8000246c:	00500313          	li	t1,5
    thread_dispatch();
    80002470:	fffff097          	auipc	ra,0xfffff
    80002474:	f10080e7          	jalr	-240(ra) # 80001380 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80002478:	01000513          	li	a0,16
    8000247c:	00000097          	auipc	ra,0x0
    80002480:	be8080e7          	jalr	-1048(ra) # 80002064 <_ZL9fibonaccim>
    80002484:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80002488:	00004517          	auipc	a0,0x4
    8000248c:	c6050513          	addi	a0,a0,-928 # 800060e8 <CONSOLE_STATUS+0xd8>
    80002490:	00001097          	auipc	ra,0x1
    80002494:	b48080e7          	jalr	-1208(ra) # 80002fd8 <_Z11printStringPKc>
    80002498:	00000613          	li	a2,0
    8000249c:	00a00593          	li	a1,10
    800024a0:	0009051b          	sext.w	a0,s2
    800024a4:	00001097          	auipc	ra,0x1
    800024a8:	ce4080e7          	jalr	-796(ra) # 80003188 <_Z8printIntiii>
    800024ac:	00004517          	auipc	a0,0x4
    800024b0:	e3c50513          	addi	a0,a0,-452 # 800062e8 <CONSOLE_STATUS+0x2d8>
    800024b4:	00001097          	auipc	ra,0x1
    800024b8:	b24080e7          	jalr	-1244(ra) # 80002fd8 <_Z11printStringPKc>
    800024bc:	0400006f          	j	800024fc <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800024c0:	00004517          	auipc	a0,0x4
    800024c4:	c1050513          	addi	a0,a0,-1008 # 800060d0 <CONSOLE_STATUS+0xc0>
    800024c8:	00001097          	auipc	ra,0x1
    800024cc:	b10080e7          	jalr	-1264(ra) # 80002fd8 <_Z11printStringPKc>
    800024d0:	00000613          	li	a2,0
    800024d4:	00a00593          	li	a1,10
    800024d8:	00048513          	mv	a0,s1
    800024dc:	00001097          	auipc	ra,0x1
    800024e0:	cac080e7          	jalr	-852(ra) # 80003188 <_Z8printIntiii>
    800024e4:	00004517          	auipc	a0,0x4
    800024e8:	e0450513          	addi	a0,a0,-508 # 800062e8 <CONSOLE_STATUS+0x2d8>
    800024ec:	00001097          	auipc	ra,0x1
    800024f0:	aec080e7          	jalr	-1300(ra) # 80002fd8 <_Z11printStringPKc>
    for (; i < 16; i++) {
    800024f4:	0014849b          	addiw	s1,s1,1
    800024f8:	0ff4f493          	andi	s1,s1,255
    800024fc:	00f00793          	li	a5,15
    80002500:	fc97f0e3          	bgeu	a5,s1,800024c0 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    80002504:	00004517          	auipc	a0,0x4
    80002508:	bf450513          	addi	a0,a0,-1036 # 800060f8 <CONSOLE_STATUS+0xe8>
    8000250c:	00001097          	auipc	ra,0x1
    80002510:	acc080e7          	jalr	-1332(ra) # 80002fd8 <_Z11printStringPKc>
    finishedD = true;
    80002514:	00100793          	li	a5,1
    80002518:	00005717          	auipc	a4,0x5
    8000251c:	dcf705a3          	sb	a5,-565(a4) # 800072e3 <_ZL9finishedD>
    thread_dispatch();
    80002520:	fffff097          	auipc	ra,0xfffff
    80002524:	e60080e7          	jalr	-416(ra) # 80001380 <_Z15thread_dispatchv>
}
    80002528:	01813083          	ld	ra,24(sp)
    8000252c:	01013403          	ld	s0,16(sp)
    80002530:	00813483          	ld	s1,8(sp)
    80002534:	00013903          	ld	s2,0(sp)
    80002538:	02010113          	addi	sp,sp,32
    8000253c:	00008067          	ret

0000000080002540 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80002540:	fc010113          	addi	sp,sp,-64
    80002544:	02113c23          	sd	ra,56(sp)
    80002548:	02813823          	sd	s0,48(sp)
    8000254c:	02913423          	sd	s1,40(sp)
    80002550:	03213023          	sd	s2,32(sp)
    80002554:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80002558:	02000513          	li	a0,32
    8000255c:	fffff097          	auipc	ra,0xfffff
    80002560:	390080e7          	jalr	912(ra) # 800018ec <_Znwm>
    80002564:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    80002568:	fffff097          	auipc	ra,0xfffff
    8000256c:	530080e7          	jalr	1328(ra) # 80001a98 <_ZN6ThreadC1Ev>
    80002570:	00005797          	auipc	a5,0x5
    80002574:	c0078793          	addi	a5,a5,-1024 # 80007170 <_ZTV7WorkerA+0x10>
    80002578:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    8000257c:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80002580:	00004517          	auipc	a0,0x4
    80002584:	b8850513          	addi	a0,a0,-1144 # 80006108 <CONSOLE_STATUS+0xf8>
    80002588:	00001097          	auipc	ra,0x1
    8000258c:	a50080e7          	jalr	-1456(ra) # 80002fd8 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80002590:	02000513          	li	a0,32
    80002594:	fffff097          	auipc	ra,0xfffff
    80002598:	358080e7          	jalr	856(ra) # 800018ec <_Znwm>
    8000259c:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    800025a0:	fffff097          	auipc	ra,0xfffff
    800025a4:	4f8080e7          	jalr	1272(ra) # 80001a98 <_ZN6ThreadC1Ev>
    800025a8:	00005797          	auipc	a5,0x5
    800025ac:	bf078793          	addi	a5,a5,-1040 # 80007198 <_ZTV7WorkerB+0x10>
    800025b0:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    800025b4:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    800025b8:	00004517          	auipc	a0,0x4
    800025bc:	b6850513          	addi	a0,a0,-1176 # 80006120 <CONSOLE_STATUS+0x110>
    800025c0:	00001097          	auipc	ra,0x1
    800025c4:	a18080e7          	jalr	-1512(ra) # 80002fd8 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    800025c8:	02000513          	li	a0,32
    800025cc:	fffff097          	auipc	ra,0xfffff
    800025d0:	320080e7          	jalr	800(ra) # 800018ec <_Znwm>
    800025d4:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    800025d8:	fffff097          	auipc	ra,0xfffff
    800025dc:	4c0080e7          	jalr	1216(ra) # 80001a98 <_ZN6ThreadC1Ev>
    800025e0:	00005797          	auipc	a5,0x5
    800025e4:	be078793          	addi	a5,a5,-1056 # 800071c0 <_ZTV7WorkerC+0x10>
    800025e8:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    800025ec:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    800025f0:	00004517          	auipc	a0,0x4
    800025f4:	b4850513          	addi	a0,a0,-1208 # 80006138 <CONSOLE_STATUS+0x128>
    800025f8:	00001097          	auipc	ra,0x1
    800025fc:	9e0080e7          	jalr	-1568(ra) # 80002fd8 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80002600:	02000513          	li	a0,32
    80002604:	fffff097          	auipc	ra,0xfffff
    80002608:	2e8080e7          	jalr	744(ra) # 800018ec <_Znwm>
    8000260c:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    80002610:	fffff097          	auipc	ra,0xfffff
    80002614:	488080e7          	jalr	1160(ra) # 80001a98 <_ZN6ThreadC1Ev>
    80002618:	00005797          	auipc	a5,0x5
    8000261c:	bd078793          	addi	a5,a5,-1072 # 800071e8 <_ZTV7WorkerD+0x10>
    80002620:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    80002624:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80002628:	00004517          	auipc	a0,0x4
    8000262c:	b2850513          	addi	a0,a0,-1240 # 80006150 <CONSOLE_STATUS+0x140>
    80002630:	00001097          	auipc	ra,0x1
    80002634:	9a8080e7          	jalr	-1624(ra) # 80002fd8 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80002638:	00000493          	li	s1,0
    8000263c:	00300793          	li	a5,3
    80002640:	0297c663          	blt	a5,s1,8000266c <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    80002644:	00349793          	slli	a5,s1,0x3
    80002648:	fe040713          	addi	a4,s0,-32
    8000264c:	00f707b3          	add	a5,a4,a5
    80002650:	fe07b503          	ld	a0,-32(a5)
    80002654:	fffff097          	auipc	ra,0xfffff
    80002658:	478080e7          	jalr	1144(ra) # 80001acc <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    8000265c:	0014849b          	addiw	s1,s1,1
    80002660:	fddff06f          	j	8000263c <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80002664:	fffff097          	auipc	ra,0xfffff
    80002668:	4c4080e7          	jalr	1220(ra) # 80001b28 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    8000266c:	00005797          	auipc	a5,0x5
    80002670:	c747c783          	lbu	a5,-908(a5) # 800072e0 <_ZL9finishedA>
    80002674:	fe0788e3          	beqz	a5,80002664 <_Z20Threads_CPP_API_testv+0x124>
    80002678:	00005797          	auipc	a5,0x5
    8000267c:	c697c783          	lbu	a5,-919(a5) # 800072e1 <_ZL9finishedB>
    80002680:	fe0782e3          	beqz	a5,80002664 <_Z20Threads_CPP_API_testv+0x124>
    80002684:	00005797          	auipc	a5,0x5
    80002688:	c5e7c783          	lbu	a5,-930(a5) # 800072e2 <_ZL9finishedC>
    8000268c:	fc078ce3          	beqz	a5,80002664 <_Z20Threads_CPP_API_testv+0x124>
    80002690:	00005797          	auipc	a5,0x5
    80002694:	c537c783          	lbu	a5,-941(a5) # 800072e3 <_ZL9finishedD>
    80002698:	fc0786e3          	beqz	a5,80002664 <_Z20Threads_CPP_API_testv+0x124>
    8000269c:	fc040493          	addi	s1,s0,-64
    800026a0:	0080006f          	j	800026a8 <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    800026a4:	00848493          	addi	s1,s1,8
    800026a8:	fe040793          	addi	a5,s0,-32
    800026ac:	08f48663          	beq	s1,a5,80002738 <_Z20Threads_CPP_API_testv+0x1f8>
    800026b0:	0004b503          	ld	a0,0(s1)
    800026b4:	fe0508e3          	beqz	a0,800026a4 <_Z20Threads_CPP_API_testv+0x164>
    800026b8:	00053783          	ld	a5,0(a0)
    800026bc:	0087b783          	ld	a5,8(a5)
    800026c0:	000780e7          	jalr	a5
    800026c4:	fe1ff06f          	j	800026a4 <_Z20Threads_CPP_API_testv+0x164>
    800026c8:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    800026cc:	00048513          	mv	a0,s1
    800026d0:	fffff097          	auipc	ra,0xfffff
    800026d4:	26c080e7          	jalr	620(ra) # 8000193c <_ZdlPv>
    800026d8:	00090513          	mv	a0,s2
    800026dc:	00006097          	auipc	ra,0x6
    800026e0:	cec080e7          	jalr	-788(ra) # 800083c8 <_Unwind_Resume>
    800026e4:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    800026e8:	00048513          	mv	a0,s1
    800026ec:	fffff097          	auipc	ra,0xfffff
    800026f0:	250080e7          	jalr	592(ra) # 8000193c <_ZdlPv>
    800026f4:	00090513          	mv	a0,s2
    800026f8:	00006097          	auipc	ra,0x6
    800026fc:	cd0080e7          	jalr	-816(ra) # 800083c8 <_Unwind_Resume>
    80002700:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    80002704:	00048513          	mv	a0,s1
    80002708:	fffff097          	auipc	ra,0xfffff
    8000270c:	234080e7          	jalr	564(ra) # 8000193c <_ZdlPv>
    80002710:	00090513          	mv	a0,s2
    80002714:	00006097          	auipc	ra,0x6
    80002718:	cb4080e7          	jalr	-844(ra) # 800083c8 <_Unwind_Resume>
    8000271c:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80002720:	00048513          	mv	a0,s1
    80002724:	fffff097          	auipc	ra,0xfffff
    80002728:	218080e7          	jalr	536(ra) # 8000193c <_ZdlPv>
    8000272c:	00090513          	mv	a0,s2
    80002730:	00006097          	auipc	ra,0x6
    80002734:	c98080e7          	jalr	-872(ra) # 800083c8 <_Unwind_Resume>
}
    80002738:	03813083          	ld	ra,56(sp)
    8000273c:	03013403          	ld	s0,48(sp)
    80002740:	02813483          	ld	s1,40(sp)
    80002744:	02013903          	ld	s2,32(sp)
    80002748:	04010113          	addi	sp,sp,64
    8000274c:	00008067          	ret

0000000080002750 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80002750:	ff010113          	addi	sp,sp,-16
    80002754:	00113423          	sd	ra,8(sp)
    80002758:	00813023          	sd	s0,0(sp)
    8000275c:	01010413          	addi	s0,sp,16
    80002760:	00005797          	auipc	a5,0x5
    80002764:	a1078793          	addi	a5,a5,-1520 # 80007170 <_ZTV7WorkerA+0x10>
    80002768:	00f53023          	sd	a5,0(a0)
    8000276c:	fffff097          	auipc	ra,0xfffff
    80002770:	220080e7          	jalr	544(ra) # 8000198c <_ZN6ThreadD1Ev>
    80002774:	00813083          	ld	ra,8(sp)
    80002778:	00013403          	ld	s0,0(sp)
    8000277c:	01010113          	addi	sp,sp,16
    80002780:	00008067          	ret

0000000080002784 <_ZN7WorkerAD0Ev>:
    80002784:	fe010113          	addi	sp,sp,-32
    80002788:	00113c23          	sd	ra,24(sp)
    8000278c:	00813823          	sd	s0,16(sp)
    80002790:	00913423          	sd	s1,8(sp)
    80002794:	02010413          	addi	s0,sp,32
    80002798:	00050493          	mv	s1,a0
    8000279c:	00005797          	auipc	a5,0x5
    800027a0:	9d478793          	addi	a5,a5,-1580 # 80007170 <_ZTV7WorkerA+0x10>
    800027a4:	00f53023          	sd	a5,0(a0)
    800027a8:	fffff097          	auipc	ra,0xfffff
    800027ac:	1e4080e7          	jalr	484(ra) # 8000198c <_ZN6ThreadD1Ev>
    800027b0:	00048513          	mv	a0,s1
    800027b4:	fffff097          	auipc	ra,0xfffff
    800027b8:	188080e7          	jalr	392(ra) # 8000193c <_ZdlPv>
    800027bc:	01813083          	ld	ra,24(sp)
    800027c0:	01013403          	ld	s0,16(sp)
    800027c4:	00813483          	ld	s1,8(sp)
    800027c8:	02010113          	addi	sp,sp,32
    800027cc:	00008067          	ret

00000000800027d0 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    800027d0:	ff010113          	addi	sp,sp,-16
    800027d4:	00113423          	sd	ra,8(sp)
    800027d8:	00813023          	sd	s0,0(sp)
    800027dc:	01010413          	addi	s0,sp,16
    800027e0:	00005797          	auipc	a5,0x5
    800027e4:	9b878793          	addi	a5,a5,-1608 # 80007198 <_ZTV7WorkerB+0x10>
    800027e8:	00f53023          	sd	a5,0(a0)
    800027ec:	fffff097          	auipc	ra,0xfffff
    800027f0:	1a0080e7          	jalr	416(ra) # 8000198c <_ZN6ThreadD1Ev>
    800027f4:	00813083          	ld	ra,8(sp)
    800027f8:	00013403          	ld	s0,0(sp)
    800027fc:	01010113          	addi	sp,sp,16
    80002800:	00008067          	ret

0000000080002804 <_ZN7WorkerBD0Ev>:
    80002804:	fe010113          	addi	sp,sp,-32
    80002808:	00113c23          	sd	ra,24(sp)
    8000280c:	00813823          	sd	s0,16(sp)
    80002810:	00913423          	sd	s1,8(sp)
    80002814:	02010413          	addi	s0,sp,32
    80002818:	00050493          	mv	s1,a0
    8000281c:	00005797          	auipc	a5,0x5
    80002820:	97c78793          	addi	a5,a5,-1668 # 80007198 <_ZTV7WorkerB+0x10>
    80002824:	00f53023          	sd	a5,0(a0)
    80002828:	fffff097          	auipc	ra,0xfffff
    8000282c:	164080e7          	jalr	356(ra) # 8000198c <_ZN6ThreadD1Ev>
    80002830:	00048513          	mv	a0,s1
    80002834:	fffff097          	auipc	ra,0xfffff
    80002838:	108080e7          	jalr	264(ra) # 8000193c <_ZdlPv>
    8000283c:	01813083          	ld	ra,24(sp)
    80002840:	01013403          	ld	s0,16(sp)
    80002844:	00813483          	ld	s1,8(sp)
    80002848:	02010113          	addi	sp,sp,32
    8000284c:	00008067          	ret

0000000080002850 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80002850:	ff010113          	addi	sp,sp,-16
    80002854:	00113423          	sd	ra,8(sp)
    80002858:	00813023          	sd	s0,0(sp)
    8000285c:	01010413          	addi	s0,sp,16
    80002860:	00005797          	auipc	a5,0x5
    80002864:	96078793          	addi	a5,a5,-1696 # 800071c0 <_ZTV7WorkerC+0x10>
    80002868:	00f53023          	sd	a5,0(a0)
    8000286c:	fffff097          	auipc	ra,0xfffff
    80002870:	120080e7          	jalr	288(ra) # 8000198c <_ZN6ThreadD1Ev>
    80002874:	00813083          	ld	ra,8(sp)
    80002878:	00013403          	ld	s0,0(sp)
    8000287c:	01010113          	addi	sp,sp,16
    80002880:	00008067          	ret

0000000080002884 <_ZN7WorkerCD0Ev>:
    80002884:	fe010113          	addi	sp,sp,-32
    80002888:	00113c23          	sd	ra,24(sp)
    8000288c:	00813823          	sd	s0,16(sp)
    80002890:	00913423          	sd	s1,8(sp)
    80002894:	02010413          	addi	s0,sp,32
    80002898:	00050493          	mv	s1,a0
    8000289c:	00005797          	auipc	a5,0x5
    800028a0:	92478793          	addi	a5,a5,-1756 # 800071c0 <_ZTV7WorkerC+0x10>
    800028a4:	00f53023          	sd	a5,0(a0)
    800028a8:	fffff097          	auipc	ra,0xfffff
    800028ac:	0e4080e7          	jalr	228(ra) # 8000198c <_ZN6ThreadD1Ev>
    800028b0:	00048513          	mv	a0,s1
    800028b4:	fffff097          	auipc	ra,0xfffff
    800028b8:	088080e7          	jalr	136(ra) # 8000193c <_ZdlPv>
    800028bc:	01813083          	ld	ra,24(sp)
    800028c0:	01013403          	ld	s0,16(sp)
    800028c4:	00813483          	ld	s1,8(sp)
    800028c8:	02010113          	addi	sp,sp,32
    800028cc:	00008067          	ret

00000000800028d0 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    800028d0:	ff010113          	addi	sp,sp,-16
    800028d4:	00113423          	sd	ra,8(sp)
    800028d8:	00813023          	sd	s0,0(sp)
    800028dc:	01010413          	addi	s0,sp,16
    800028e0:	00005797          	auipc	a5,0x5
    800028e4:	90878793          	addi	a5,a5,-1784 # 800071e8 <_ZTV7WorkerD+0x10>
    800028e8:	00f53023          	sd	a5,0(a0)
    800028ec:	fffff097          	auipc	ra,0xfffff
    800028f0:	0a0080e7          	jalr	160(ra) # 8000198c <_ZN6ThreadD1Ev>
    800028f4:	00813083          	ld	ra,8(sp)
    800028f8:	00013403          	ld	s0,0(sp)
    800028fc:	01010113          	addi	sp,sp,16
    80002900:	00008067          	ret

0000000080002904 <_ZN7WorkerDD0Ev>:
    80002904:	fe010113          	addi	sp,sp,-32
    80002908:	00113c23          	sd	ra,24(sp)
    8000290c:	00813823          	sd	s0,16(sp)
    80002910:	00913423          	sd	s1,8(sp)
    80002914:	02010413          	addi	s0,sp,32
    80002918:	00050493          	mv	s1,a0
    8000291c:	00005797          	auipc	a5,0x5
    80002920:	8cc78793          	addi	a5,a5,-1844 # 800071e8 <_ZTV7WorkerD+0x10>
    80002924:	00f53023          	sd	a5,0(a0)
    80002928:	fffff097          	auipc	ra,0xfffff
    8000292c:	064080e7          	jalr	100(ra) # 8000198c <_ZN6ThreadD1Ev>
    80002930:	00048513          	mv	a0,s1
    80002934:	fffff097          	auipc	ra,0xfffff
    80002938:	008080e7          	jalr	8(ra) # 8000193c <_ZdlPv>
    8000293c:	01813083          	ld	ra,24(sp)
    80002940:	01013403          	ld	s0,16(sp)
    80002944:	00813483          	ld	s1,8(sp)
    80002948:	02010113          	addi	sp,sp,32
    8000294c:	00008067          	ret

0000000080002950 <_ZN7WorkerA3runEv>:
    void run() override {
    80002950:	ff010113          	addi	sp,sp,-16
    80002954:	00113423          	sd	ra,8(sp)
    80002958:	00813023          	sd	s0,0(sp)
    8000295c:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80002960:	00000593          	li	a1,0
    80002964:	fffff097          	auipc	ra,0xfffff
    80002968:	774080e7          	jalr	1908(ra) # 800020d8 <_ZN7WorkerA11workerBodyAEPv>
    }
    8000296c:	00813083          	ld	ra,8(sp)
    80002970:	00013403          	ld	s0,0(sp)
    80002974:	01010113          	addi	sp,sp,16
    80002978:	00008067          	ret

000000008000297c <_ZN7WorkerB3runEv>:
    void run() override {
    8000297c:	ff010113          	addi	sp,sp,-16
    80002980:	00113423          	sd	ra,8(sp)
    80002984:	00813023          	sd	s0,0(sp)
    80002988:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    8000298c:	00000593          	li	a1,0
    80002990:	00000097          	auipc	ra,0x0
    80002994:	814080e7          	jalr	-2028(ra) # 800021a4 <_ZN7WorkerB11workerBodyBEPv>
    }
    80002998:	00813083          	ld	ra,8(sp)
    8000299c:	00013403          	ld	s0,0(sp)
    800029a0:	01010113          	addi	sp,sp,16
    800029a4:	00008067          	ret

00000000800029a8 <_ZN7WorkerC3runEv>:
    void run() override {
    800029a8:	ff010113          	addi	sp,sp,-16
    800029ac:	00113423          	sd	ra,8(sp)
    800029b0:	00813023          	sd	s0,0(sp)
    800029b4:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    800029b8:	00000593          	li	a1,0
    800029bc:	00000097          	auipc	ra,0x0
    800029c0:	8bc080e7          	jalr	-1860(ra) # 80002278 <_ZN7WorkerC11workerBodyCEPv>
    }
    800029c4:	00813083          	ld	ra,8(sp)
    800029c8:	00013403          	ld	s0,0(sp)
    800029cc:	01010113          	addi	sp,sp,16
    800029d0:	00008067          	ret

00000000800029d4 <_ZN7WorkerD3runEv>:
    void run() override {
    800029d4:	ff010113          	addi	sp,sp,-16
    800029d8:	00113423          	sd	ra,8(sp)
    800029dc:	00813023          	sd	s0,0(sp)
    800029e0:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    800029e4:	00000593          	li	a1,0
    800029e8:	00000097          	auipc	ra,0x0
    800029ec:	a10080e7          	jalr	-1520(ra) # 800023f8 <_ZN7WorkerD11workerBodyDEPv>
    }
    800029f0:	00813083          	ld	ra,8(sp)
    800029f4:	00013403          	ld	s0,0(sp)
    800029f8:	01010113          	addi	sp,sp,16
    800029fc:	00008067          	ret

0000000080002a00 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80002a00:	fe010113          	addi	sp,sp,-32
    80002a04:	00113c23          	sd	ra,24(sp)
    80002a08:	00813823          	sd	s0,16(sp)
    80002a0c:	00913423          	sd	s1,8(sp)
    80002a10:	01213023          	sd	s2,0(sp)
    80002a14:	02010413          	addi	s0,sp,32
    80002a18:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80002a1c:	00100793          	li	a5,1
    80002a20:	02a7f863          	bgeu	a5,a0,80002a50 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80002a24:	00a00793          	li	a5,10
    80002a28:	02f577b3          	remu	a5,a0,a5
    80002a2c:	02078e63          	beqz	a5,80002a68 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80002a30:	fff48513          	addi	a0,s1,-1
    80002a34:	00000097          	auipc	ra,0x0
    80002a38:	fcc080e7          	jalr	-52(ra) # 80002a00 <_ZL9fibonaccim>
    80002a3c:	00050913          	mv	s2,a0
    80002a40:	ffe48513          	addi	a0,s1,-2
    80002a44:	00000097          	auipc	ra,0x0
    80002a48:	fbc080e7          	jalr	-68(ra) # 80002a00 <_ZL9fibonaccim>
    80002a4c:	00a90533          	add	a0,s2,a0
}
    80002a50:	01813083          	ld	ra,24(sp)
    80002a54:	01013403          	ld	s0,16(sp)
    80002a58:	00813483          	ld	s1,8(sp)
    80002a5c:	00013903          	ld	s2,0(sp)
    80002a60:	02010113          	addi	sp,sp,32
    80002a64:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80002a68:	fffff097          	auipc	ra,0xfffff
    80002a6c:	918080e7          	jalr	-1768(ra) # 80001380 <_Z15thread_dispatchv>
    80002a70:	fc1ff06f          	j	80002a30 <_ZL9fibonaccim+0x30>

0000000080002a74 <_ZL11workerBodyDPv>:
    printString("C finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80002a74:	fe010113          	addi	sp,sp,-32
    80002a78:	00113c23          	sd	ra,24(sp)
    80002a7c:	00813823          	sd	s0,16(sp)
    80002a80:	00913423          	sd	s1,8(sp)
    80002a84:	01213023          	sd	s2,0(sp)
    80002a88:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80002a8c:	00a00493          	li	s1,10
    80002a90:	0400006f          	j	80002ad0 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80002a94:	00003517          	auipc	a0,0x3
    80002a98:	63c50513          	addi	a0,a0,1596 # 800060d0 <CONSOLE_STATUS+0xc0>
    80002a9c:	00000097          	auipc	ra,0x0
    80002aa0:	53c080e7          	jalr	1340(ra) # 80002fd8 <_Z11printStringPKc>
    80002aa4:	00000613          	li	a2,0
    80002aa8:	00a00593          	li	a1,10
    80002aac:	00048513          	mv	a0,s1
    80002ab0:	00000097          	auipc	ra,0x0
    80002ab4:	6d8080e7          	jalr	1752(ra) # 80003188 <_Z8printIntiii>
    80002ab8:	00004517          	auipc	a0,0x4
    80002abc:	83050513          	addi	a0,a0,-2000 # 800062e8 <CONSOLE_STATUS+0x2d8>
    80002ac0:	00000097          	auipc	ra,0x0
    80002ac4:	518080e7          	jalr	1304(ra) # 80002fd8 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80002ac8:	0014849b          	addiw	s1,s1,1
    80002acc:	0ff4f493          	andi	s1,s1,255
    80002ad0:	00c00793          	li	a5,12
    80002ad4:	fc97f0e3          	bgeu	a5,s1,80002a94 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80002ad8:	00003517          	auipc	a0,0x3
    80002adc:	60050513          	addi	a0,a0,1536 # 800060d8 <CONSOLE_STATUS+0xc8>
    80002ae0:	00000097          	auipc	ra,0x0
    80002ae4:	4f8080e7          	jalr	1272(ra) # 80002fd8 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80002ae8:	00500313          	li	t1,5
    thread_dispatch();
    80002aec:	fffff097          	auipc	ra,0xfffff
    80002af0:	894080e7          	jalr	-1900(ra) # 80001380 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80002af4:	01000513          	li	a0,16
    80002af8:	00000097          	auipc	ra,0x0
    80002afc:	f08080e7          	jalr	-248(ra) # 80002a00 <_ZL9fibonaccim>
    80002b00:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80002b04:	00003517          	auipc	a0,0x3
    80002b08:	5e450513          	addi	a0,a0,1508 # 800060e8 <CONSOLE_STATUS+0xd8>
    80002b0c:	00000097          	auipc	ra,0x0
    80002b10:	4cc080e7          	jalr	1228(ra) # 80002fd8 <_Z11printStringPKc>
    80002b14:	00000613          	li	a2,0
    80002b18:	00a00593          	li	a1,10
    80002b1c:	0009051b          	sext.w	a0,s2
    80002b20:	00000097          	auipc	ra,0x0
    80002b24:	668080e7          	jalr	1640(ra) # 80003188 <_Z8printIntiii>
    80002b28:	00003517          	auipc	a0,0x3
    80002b2c:	7c050513          	addi	a0,a0,1984 # 800062e8 <CONSOLE_STATUS+0x2d8>
    80002b30:	00000097          	auipc	ra,0x0
    80002b34:	4a8080e7          	jalr	1192(ra) # 80002fd8 <_Z11printStringPKc>
    80002b38:	0400006f          	j	80002b78 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80002b3c:	00003517          	auipc	a0,0x3
    80002b40:	59450513          	addi	a0,a0,1428 # 800060d0 <CONSOLE_STATUS+0xc0>
    80002b44:	00000097          	auipc	ra,0x0
    80002b48:	494080e7          	jalr	1172(ra) # 80002fd8 <_Z11printStringPKc>
    80002b4c:	00000613          	li	a2,0
    80002b50:	00a00593          	li	a1,10
    80002b54:	00048513          	mv	a0,s1
    80002b58:	00000097          	auipc	ra,0x0
    80002b5c:	630080e7          	jalr	1584(ra) # 80003188 <_Z8printIntiii>
    80002b60:	00003517          	auipc	a0,0x3
    80002b64:	78850513          	addi	a0,a0,1928 # 800062e8 <CONSOLE_STATUS+0x2d8>
    80002b68:	00000097          	auipc	ra,0x0
    80002b6c:	470080e7          	jalr	1136(ra) # 80002fd8 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80002b70:	0014849b          	addiw	s1,s1,1
    80002b74:	0ff4f493          	andi	s1,s1,255
    80002b78:	00f00793          	li	a5,15
    80002b7c:	fc97f0e3          	bgeu	a5,s1,80002b3c <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80002b80:	00003517          	auipc	a0,0x3
    80002b84:	57850513          	addi	a0,a0,1400 # 800060f8 <CONSOLE_STATUS+0xe8>
    80002b88:	00000097          	auipc	ra,0x0
    80002b8c:	450080e7          	jalr	1104(ra) # 80002fd8 <_Z11printStringPKc>
    finishedD = true;
    80002b90:	00100793          	li	a5,1
    80002b94:	00004717          	auipc	a4,0x4
    80002b98:	74f70823          	sb	a5,1872(a4) # 800072e4 <_ZL9finishedD>
    thread_dispatch();
    80002b9c:	ffffe097          	auipc	ra,0xffffe
    80002ba0:	7e4080e7          	jalr	2020(ra) # 80001380 <_Z15thread_dispatchv>
}
    80002ba4:	01813083          	ld	ra,24(sp)
    80002ba8:	01013403          	ld	s0,16(sp)
    80002bac:	00813483          	ld	s1,8(sp)
    80002bb0:	00013903          	ld	s2,0(sp)
    80002bb4:	02010113          	addi	sp,sp,32
    80002bb8:	00008067          	ret

0000000080002bbc <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80002bbc:	fe010113          	addi	sp,sp,-32
    80002bc0:	00113c23          	sd	ra,24(sp)
    80002bc4:	00813823          	sd	s0,16(sp)
    80002bc8:	00913423          	sd	s1,8(sp)
    80002bcc:	01213023          	sd	s2,0(sp)
    80002bd0:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80002bd4:	00000493          	li	s1,0
    80002bd8:	0400006f          	j	80002c18 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80002bdc:	00003517          	auipc	a0,0x3
    80002be0:	4c450513          	addi	a0,a0,1220 # 800060a0 <CONSOLE_STATUS+0x90>
    80002be4:	00000097          	auipc	ra,0x0
    80002be8:	3f4080e7          	jalr	1012(ra) # 80002fd8 <_Z11printStringPKc>
    80002bec:	00000613          	li	a2,0
    80002bf0:	00a00593          	li	a1,10
    80002bf4:	00048513          	mv	a0,s1
    80002bf8:	00000097          	auipc	ra,0x0
    80002bfc:	590080e7          	jalr	1424(ra) # 80003188 <_Z8printIntiii>
    80002c00:	00003517          	auipc	a0,0x3
    80002c04:	6e850513          	addi	a0,a0,1768 # 800062e8 <CONSOLE_STATUS+0x2d8>
    80002c08:	00000097          	auipc	ra,0x0
    80002c0c:	3d0080e7          	jalr	976(ra) # 80002fd8 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80002c10:	0014849b          	addiw	s1,s1,1
    80002c14:	0ff4f493          	andi	s1,s1,255
    80002c18:	00200793          	li	a5,2
    80002c1c:	fc97f0e3          	bgeu	a5,s1,80002bdc <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80002c20:	00003517          	auipc	a0,0x3
    80002c24:	48850513          	addi	a0,a0,1160 # 800060a8 <CONSOLE_STATUS+0x98>
    80002c28:	00000097          	auipc	ra,0x0
    80002c2c:	3b0080e7          	jalr	944(ra) # 80002fd8 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80002c30:	00700313          	li	t1,7
    thread_dispatch();
    80002c34:	ffffe097          	auipc	ra,0xffffe
    80002c38:	74c080e7          	jalr	1868(ra) # 80001380 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80002c3c:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80002c40:	00003517          	auipc	a0,0x3
    80002c44:	47850513          	addi	a0,a0,1144 # 800060b8 <CONSOLE_STATUS+0xa8>
    80002c48:	00000097          	auipc	ra,0x0
    80002c4c:	390080e7          	jalr	912(ra) # 80002fd8 <_Z11printStringPKc>
    80002c50:	00000613          	li	a2,0
    80002c54:	00a00593          	li	a1,10
    80002c58:	0009051b          	sext.w	a0,s2
    80002c5c:	00000097          	auipc	ra,0x0
    80002c60:	52c080e7          	jalr	1324(ra) # 80003188 <_Z8printIntiii>
    80002c64:	00003517          	auipc	a0,0x3
    80002c68:	68450513          	addi	a0,a0,1668 # 800062e8 <CONSOLE_STATUS+0x2d8>
    80002c6c:	00000097          	auipc	ra,0x0
    80002c70:	36c080e7          	jalr	876(ra) # 80002fd8 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80002c74:	00c00513          	li	a0,12
    80002c78:	00000097          	auipc	ra,0x0
    80002c7c:	d88080e7          	jalr	-632(ra) # 80002a00 <_ZL9fibonaccim>
    80002c80:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80002c84:	00003517          	auipc	a0,0x3
    80002c88:	43c50513          	addi	a0,a0,1084 # 800060c0 <CONSOLE_STATUS+0xb0>
    80002c8c:	00000097          	auipc	ra,0x0
    80002c90:	34c080e7          	jalr	844(ra) # 80002fd8 <_Z11printStringPKc>
    80002c94:	00000613          	li	a2,0
    80002c98:	00a00593          	li	a1,10
    80002c9c:	0009051b          	sext.w	a0,s2
    80002ca0:	00000097          	auipc	ra,0x0
    80002ca4:	4e8080e7          	jalr	1256(ra) # 80003188 <_Z8printIntiii>
    80002ca8:	00003517          	auipc	a0,0x3
    80002cac:	64050513          	addi	a0,a0,1600 # 800062e8 <CONSOLE_STATUS+0x2d8>
    80002cb0:	00000097          	auipc	ra,0x0
    80002cb4:	328080e7          	jalr	808(ra) # 80002fd8 <_Z11printStringPKc>
    80002cb8:	0400006f          	j	80002cf8 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80002cbc:	00003517          	auipc	a0,0x3
    80002cc0:	3e450513          	addi	a0,a0,996 # 800060a0 <CONSOLE_STATUS+0x90>
    80002cc4:	00000097          	auipc	ra,0x0
    80002cc8:	314080e7          	jalr	788(ra) # 80002fd8 <_Z11printStringPKc>
    80002ccc:	00000613          	li	a2,0
    80002cd0:	00a00593          	li	a1,10
    80002cd4:	00048513          	mv	a0,s1
    80002cd8:	00000097          	auipc	ra,0x0
    80002cdc:	4b0080e7          	jalr	1200(ra) # 80003188 <_Z8printIntiii>
    80002ce0:	00003517          	auipc	a0,0x3
    80002ce4:	60850513          	addi	a0,a0,1544 # 800062e8 <CONSOLE_STATUS+0x2d8>
    80002ce8:	00000097          	auipc	ra,0x0
    80002cec:	2f0080e7          	jalr	752(ra) # 80002fd8 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80002cf0:	0014849b          	addiw	s1,s1,1
    80002cf4:	0ff4f493          	andi	s1,s1,255
    80002cf8:	00500793          	li	a5,5
    80002cfc:	fc97f0e3          	bgeu	a5,s1,80002cbc <_ZL11workerBodyCPv+0x100>
    printString("C finished!\n");
    80002d00:	00003517          	auipc	a0,0x3
    80002d04:	46850513          	addi	a0,a0,1128 # 80006168 <CONSOLE_STATUS+0x158>
    80002d08:	00000097          	auipc	ra,0x0
    80002d0c:	2d0080e7          	jalr	720(ra) # 80002fd8 <_Z11printStringPKc>
    finishedC = true;
    80002d10:	00100793          	li	a5,1
    80002d14:	00004717          	auipc	a4,0x4
    80002d18:	5cf708a3          	sb	a5,1489(a4) # 800072e5 <_ZL9finishedC>
    thread_dispatch();
    80002d1c:	ffffe097          	auipc	ra,0xffffe
    80002d20:	664080e7          	jalr	1636(ra) # 80001380 <_Z15thread_dispatchv>
}
    80002d24:	01813083          	ld	ra,24(sp)
    80002d28:	01013403          	ld	s0,16(sp)
    80002d2c:	00813483          	ld	s1,8(sp)
    80002d30:	00013903          	ld	s2,0(sp)
    80002d34:	02010113          	addi	sp,sp,32
    80002d38:	00008067          	ret

0000000080002d3c <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80002d3c:	fe010113          	addi	sp,sp,-32
    80002d40:	00113c23          	sd	ra,24(sp)
    80002d44:	00813823          	sd	s0,16(sp)
    80002d48:	00913423          	sd	s1,8(sp)
    80002d4c:	01213023          	sd	s2,0(sp)
    80002d50:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80002d54:	00000913          	li	s2,0
    80002d58:	0380006f          	j	80002d90 <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    80002d5c:	ffffe097          	auipc	ra,0xffffe
    80002d60:	624080e7          	jalr	1572(ra) # 80001380 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80002d64:	00148493          	addi	s1,s1,1
    80002d68:	000027b7          	lui	a5,0x2
    80002d6c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80002d70:	0097ee63          	bltu	a5,s1,80002d8c <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80002d74:	00000713          	li	a4,0
    80002d78:	000077b7          	lui	a5,0x7
    80002d7c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80002d80:	fce7eee3          	bltu	a5,a4,80002d5c <_ZL11workerBodyBPv+0x20>
    80002d84:	00170713          	addi	a4,a4,1
    80002d88:	ff1ff06f          	j	80002d78 <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80002d8c:	00190913          	addi	s2,s2,1
    80002d90:	00f00793          	li	a5,15
    80002d94:	0527e063          	bltu	a5,s2,80002dd4 <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80002d98:	00003517          	auipc	a0,0x3
    80002d9c:	2f050513          	addi	a0,a0,752 # 80006088 <CONSOLE_STATUS+0x78>
    80002da0:	00000097          	auipc	ra,0x0
    80002da4:	238080e7          	jalr	568(ra) # 80002fd8 <_Z11printStringPKc>
    80002da8:	00000613          	li	a2,0
    80002dac:	00a00593          	li	a1,10
    80002db0:	0009051b          	sext.w	a0,s2
    80002db4:	00000097          	auipc	ra,0x0
    80002db8:	3d4080e7          	jalr	980(ra) # 80003188 <_Z8printIntiii>
    80002dbc:	00003517          	auipc	a0,0x3
    80002dc0:	52c50513          	addi	a0,a0,1324 # 800062e8 <CONSOLE_STATUS+0x2d8>
    80002dc4:	00000097          	auipc	ra,0x0
    80002dc8:	214080e7          	jalr	532(ra) # 80002fd8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80002dcc:	00000493          	li	s1,0
    80002dd0:	f99ff06f          	j	80002d68 <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    80002dd4:	00003517          	auipc	a0,0x3
    80002dd8:	2bc50513          	addi	a0,a0,700 # 80006090 <CONSOLE_STATUS+0x80>
    80002ddc:	00000097          	auipc	ra,0x0
    80002de0:	1fc080e7          	jalr	508(ra) # 80002fd8 <_Z11printStringPKc>
    finishedB = true;
    80002de4:	00100793          	li	a5,1
    80002de8:	00004717          	auipc	a4,0x4
    80002dec:	4ef70f23          	sb	a5,1278(a4) # 800072e6 <_ZL9finishedB>
    thread_dispatch();
    80002df0:	ffffe097          	auipc	ra,0xffffe
    80002df4:	590080e7          	jalr	1424(ra) # 80001380 <_Z15thread_dispatchv>
}
    80002df8:	01813083          	ld	ra,24(sp)
    80002dfc:	01013403          	ld	s0,16(sp)
    80002e00:	00813483          	ld	s1,8(sp)
    80002e04:	00013903          	ld	s2,0(sp)
    80002e08:	02010113          	addi	sp,sp,32
    80002e0c:	00008067          	ret

0000000080002e10 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80002e10:	fe010113          	addi	sp,sp,-32
    80002e14:	00113c23          	sd	ra,24(sp)
    80002e18:	00813823          	sd	s0,16(sp)
    80002e1c:	00913423          	sd	s1,8(sp)
    80002e20:	01213023          	sd	s2,0(sp)
    80002e24:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80002e28:	00000913          	li	s2,0
    80002e2c:	0380006f          	j	80002e64 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80002e30:	ffffe097          	auipc	ra,0xffffe
    80002e34:	550080e7          	jalr	1360(ra) # 80001380 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80002e38:	00148493          	addi	s1,s1,1
    80002e3c:	000027b7          	lui	a5,0x2
    80002e40:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80002e44:	0097ee63          	bltu	a5,s1,80002e60 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80002e48:	00000713          	li	a4,0
    80002e4c:	000077b7          	lui	a5,0x7
    80002e50:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80002e54:	fce7eee3          	bltu	a5,a4,80002e30 <_ZL11workerBodyAPv+0x20>
    80002e58:	00170713          	addi	a4,a4,1
    80002e5c:	ff1ff06f          	j	80002e4c <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80002e60:	00190913          	addi	s2,s2,1
    80002e64:	00900793          	li	a5,9
    80002e68:	0527e063          	bltu	a5,s2,80002ea8 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80002e6c:	00003517          	auipc	a0,0x3
    80002e70:	20450513          	addi	a0,a0,516 # 80006070 <CONSOLE_STATUS+0x60>
    80002e74:	00000097          	auipc	ra,0x0
    80002e78:	164080e7          	jalr	356(ra) # 80002fd8 <_Z11printStringPKc>
    80002e7c:	00000613          	li	a2,0
    80002e80:	00a00593          	li	a1,10
    80002e84:	0009051b          	sext.w	a0,s2
    80002e88:	00000097          	auipc	ra,0x0
    80002e8c:	300080e7          	jalr	768(ra) # 80003188 <_Z8printIntiii>
    80002e90:	00003517          	auipc	a0,0x3
    80002e94:	45850513          	addi	a0,a0,1112 # 800062e8 <CONSOLE_STATUS+0x2d8>
    80002e98:	00000097          	auipc	ra,0x0
    80002e9c:	140080e7          	jalr	320(ra) # 80002fd8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80002ea0:	00000493          	li	s1,0
    80002ea4:	f99ff06f          	j	80002e3c <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80002ea8:	00003517          	auipc	a0,0x3
    80002eac:	1d050513          	addi	a0,a0,464 # 80006078 <CONSOLE_STATUS+0x68>
    80002eb0:	00000097          	auipc	ra,0x0
    80002eb4:	128080e7          	jalr	296(ra) # 80002fd8 <_Z11printStringPKc>
    finishedA = true;
    80002eb8:	00100793          	li	a5,1
    80002ebc:	00004717          	auipc	a4,0x4
    80002ec0:	42f705a3          	sb	a5,1067(a4) # 800072e7 <_ZL9finishedA>
}
    80002ec4:	01813083          	ld	ra,24(sp)
    80002ec8:	01013403          	ld	s0,16(sp)
    80002ecc:	00813483          	ld	s1,8(sp)
    80002ed0:	00013903          	ld	s2,0(sp)
    80002ed4:	02010113          	addi	sp,sp,32
    80002ed8:	00008067          	ret

0000000080002edc <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80002edc:	fd010113          	addi	sp,sp,-48
    80002ee0:	02113423          	sd	ra,40(sp)
    80002ee4:	02813023          	sd	s0,32(sp)
    80002ee8:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80002eec:	00000613          	li	a2,0
    80002ef0:	00000597          	auipc	a1,0x0
    80002ef4:	f2058593          	addi	a1,a1,-224 # 80002e10 <_ZL11workerBodyAPv>
    80002ef8:	fd040513          	addi	a0,s0,-48
    80002efc:	ffffe097          	auipc	ra,0xffffe
    80002f00:	408080e7          	jalr	1032(ra) # 80001304 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadA created\n");
    80002f04:	00003517          	auipc	a0,0x3
    80002f08:	20450513          	addi	a0,a0,516 # 80006108 <CONSOLE_STATUS+0xf8>
    80002f0c:	00000097          	auipc	ra,0x0
    80002f10:	0cc080e7          	jalr	204(ra) # 80002fd8 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80002f14:	00000613          	li	a2,0
    80002f18:	00000597          	auipc	a1,0x0
    80002f1c:	e2458593          	addi	a1,a1,-476 # 80002d3c <_ZL11workerBodyBPv>
    80002f20:	fd840513          	addi	a0,s0,-40
    80002f24:	ffffe097          	auipc	ra,0xffffe
    80002f28:	3e0080e7          	jalr	992(ra) # 80001304 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadB created\n");
    80002f2c:	00003517          	auipc	a0,0x3
    80002f30:	1f450513          	addi	a0,a0,500 # 80006120 <CONSOLE_STATUS+0x110>
    80002f34:	00000097          	auipc	ra,0x0
    80002f38:	0a4080e7          	jalr	164(ra) # 80002fd8 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80002f3c:	00000613          	li	a2,0
    80002f40:	00000597          	auipc	a1,0x0
    80002f44:	c7c58593          	addi	a1,a1,-900 # 80002bbc <_ZL11workerBodyCPv>
    80002f48:	fe040513          	addi	a0,s0,-32
    80002f4c:	ffffe097          	auipc	ra,0xffffe
    80002f50:	3b8080e7          	jalr	952(ra) # 80001304 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadC created\n");
    80002f54:	00003517          	auipc	a0,0x3
    80002f58:	1e450513          	addi	a0,a0,484 # 80006138 <CONSOLE_STATUS+0x128>
    80002f5c:	00000097          	auipc	ra,0x0
    80002f60:	07c080e7          	jalr	124(ra) # 80002fd8 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80002f64:	00000613          	li	a2,0
    80002f68:	00000597          	auipc	a1,0x0
    80002f6c:	b0c58593          	addi	a1,a1,-1268 # 80002a74 <_ZL11workerBodyDPv>
    80002f70:	fe840513          	addi	a0,s0,-24
    80002f74:	ffffe097          	auipc	ra,0xffffe
    80002f78:	390080e7          	jalr	912(ra) # 80001304 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadD created\n");
    80002f7c:	00003517          	auipc	a0,0x3
    80002f80:	1d450513          	addi	a0,a0,468 # 80006150 <CONSOLE_STATUS+0x140>
    80002f84:	00000097          	auipc	ra,0x0
    80002f88:	054080e7          	jalr	84(ra) # 80002fd8 <_Z11printStringPKc>
    80002f8c:	00c0006f          	j	80002f98 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80002f90:	ffffe097          	auipc	ra,0xffffe
    80002f94:	3f0080e7          	jalr	1008(ra) # 80001380 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80002f98:	00004797          	auipc	a5,0x4
    80002f9c:	34f7c783          	lbu	a5,847(a5) # 800072e7 <_ZL9finishedA>
    80002fa0:	fe0788e3          	beqz	a5,80002f90 <_Z18Threads_C_API_testv+0xb4>
    80002fa4:	00004797          	auipc	a5,0x4
    80002fa8:	3427c783          	lbu	a5,834(a5) # 800072e6 <_ZL9finishedB>
    80002fac:	fe0782e3          	beqz	a5,80002f90 <_Z18Threads_C_API_testv+0xb4>
    80002fb0:	00004797          	auipc	a5,0x4
    80002fb4:	3357c783          	lbu	a5,821(a5) # 800072e5 <_ZL9finishedC>
    80002fb8:	fc078ce3          	beqz	a5,80002f90 <_Z18Threads_C_API_testv+0xb4>
    80002fbc:	00004797          	auipc	a5,0x4
    80002fc0:	3287c783          	lbu	a5,808(a5) # 800072e4 <_ZL9finishedD>
    80002fc4:	fc0786e3          	beqz	a5,80002f90 <_Z18Threads_C_API_testv+0xb4>
    }

}
    80002fc8:	02813083          	ld	ra,40(sp)
    80002fcc:	02013403          	ld	s0,32(sp)
    80002fd0:	03010113          	addi	sp,sp,48
    80002fd4:	00008067          	ret

0000000080002fd8 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80002fd8:	fe010113          	addi	sp,sp,-32
    80002fdc:	00113c23          	sd	ra,24(sp)
    80002fe0:	00813823          	sd	s0,16(sp)
    80002fe4:	00913423          	sd	s1,8(sp)
    80002fe8:	02010413          	addi	s0,sp,32
    80002fec:	00050493          	mv	s1,a0
    LOCK();
    80002ff0:	00100613          	li	a2,1
    80002ff4:	00000593          	li	a1,0
    80002ff8:	00004517          	auipc	a0,0x4
    80002ffc:	2f050513          	addi	a0,a0,752 # 800072e8 <lockPrint>
    80003000:	ffffe097          	auipc	ra,0xffffe
    80003004:	24c080e7          	jalr	588(ra) # 8000124c <copy_and_swap>
    80003008:	00050863          	beqz	a0,80003018 <_Z11printStringPKc+0x40>
    8000300c:	ffffe097          	auipc	ra,0xffffe
    80003010:	374080e7          	jalr	884(ra) # 80001380 <_Z15thread_dispatchv>
    80003014:	fddff06f          	j	80002ff0 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80003018:	0004c503          	lbu	a0,0(s1)
    8000301c:	00050a63          	beqz	a0,80003030 <_Z11printStringPKc+0x58>
    {
        putc(*string);
    80003020:	fffff097          	auipc	ra,0xfffff
    80003024:	ff4080e7          	jalr	-12(ra) # 80002014 <_Z4putcc>
        string++;
    80003028:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    8000302c:	fedff06f          	j	80003018 <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    80003030:	00000613          	li	a2,0
    80003034:	00100593          	li	a1,1
    80003038:	00004517          	auipc	a0,0x4
    8000303c:	2b050513          	addi	a0,a0,688 # 800072e8 <lockPrint>
    80003040:	ffffe097          	auipc	ra,0xffffe
    80003044:	20c080e7          	jalr	524(ra) # 8000124c <copy_and_swap>
    80003048:	fe0514e3          	bnez	a0,80003030 <_Z11printStringPKc+0x58>
}
    8000304c:	01813083          	ld	ra,24(sp)
    80003050:	01013403          	ld	s0,16(sp)
    80003054:	00813483          	ld	s1,8(sp)
    80003058:	02010113          	addi	sp,sp,32
    8000305c:	00008067          	ret

0000000080003060 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80003060:	fd010113          	addi	sp,sp,-48
    80003064:	02113423          	sd	ra,40(sp)
    80003068:	02813023          	sd	s0,32(sp)
    8000306c:	00913c23          	sd	s1,24(sp)
    80003070:	01213823          	sd	s2,16(sp)
    80003074:	01313423          	sd	s3,8(sp)
    80003078:	01413023          	sd	s4,0(sp)
    8000307c:	03010413          	addi	s0,sp,48
    80003080:	00050993          	mv	s3,a0
    80003084:	00058a13          	mv	s4,a1
    LOCK();
    80003088:	00100613          	li	a2,1
    8000308c:	00000593          	li	a1,0
    80003090:	00004517          	auipc	a0,0x4
    80003094:	25850513          	addi	a0,a0,600 # 800072e8 <lockPrint>
    80003098:	ffffe097          	auipc	ra,0xffffe
    8000309c:	1b4080e7          	jalr	436(ra) # 8000124c <copy_and_swap>
    800030a0:	00050863          	beqz	a0,800030b0 <_Z9getStringPci+0x50>
    800030a4:	ffffe097          	auipc	ra,0xffffe
    800030a8:	2dc080e7          	jalr	732(ra) # 80001380 <_Z15thread_dispatchv>
    800030ac:	fddff06f          	j	80003088 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    800030b0:	00000913          	li	s2,0
    800030b4:	00090493          	mv	s1,s2
    800030b8:	0019091b          	addiw	s2,s2,1
    800030bc:	03495a63          	bge	s2,s4,800030f0 <_Z9getStringPci+0x90>
        cc = getc();
    800030c0:	fffff097          	auipc	ra,0xfffff
    800030c4:	f7c080e7          	jalr	-132(ra) # 8000203c <_Z4getcv>
        if(cc < 1)
    800030c8:	02050463          	beqz	a0,800030f0 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    800030cc:	009984b3          	add	s1,s3,s1
    800030d0:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    800030d4:	00a00793          	li	a5,10
    800030d8:	00f50a63          	beq	a0,a5,800030ec <_Z9getStringPci+0x8c>
    800030dc:	00d00793          	li	a5,13
    800030e0:	fcf51ae3          	bne	a0,a5,800030b4 <_Z9getStringPci+0x54>
        buf[i++] = c;
    800030e4:	00090493          	mv	s1,s2
    800030e8:	0080006f          	j	800030f0 <_Z9getStringPci+0x90>
    800030ec:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    800030f0:	009984b3          	add	s1,s3,s1
    800030f4:	00048023          	sb	zero,0(s1)

    UNLOCK();
    800030f8:	00000613          	li	a2,0
    800030fc:	00100593          	li	a1,1
    80003100:	00004517          	auipc	a0,0x4
    80003104:	1e850513          	addi	a0,a0,488 # 800072e8 <lockPrint>
    80003108:	ffffe097          	auipc	ra,0xffffe
    8000310c:	144080e7          	jalr	324(ra) # 8000124c <copy_and_swap>
    80003110:	fe0514e3          	bnez	a0,800030f8 <_Z9getStringPci+0x98>
    return buf;
}
    80003114:	00098513          	mv	a0,s3
    80003118:	02813083          	ld	ra,40(sp)
    8000311c:	02013403          	ld	s0,32(sp)
    80003120:	01813483          	ld	s1,24(sp)
    80003124:	01013903          	ld	s2,16(sp)
    80003128:	00813983          	ld	s3,8(sp)
    8000312c:	00013a03          	ld	s4,0(sp)
    80003130:	03010113          	addi	sp,sp,48
    80003134:	00008067          	ret

0000000080003138 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80003138:	ff010113          	addi	sp,sp,-16
    8000313c:	00813423          	sd	s0,8(sp)
    80003140:	01010413          	addi	s0,sp,16
    80003144:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80003148:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    8000314c:	0006c603          	lbu	a2,0(a3)
    80003150:	fd06071b          	addiw	a4,a2,-48
    80003154:	0ff77713          	andi	a4,a4,255
    80003158:	00900793          	li	a5,9
    8000315c:	02e7e063          	bltu	a5,a4,8000317c <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80003160:	0025179b          	slliw	a5,a0,0x2
    80003164:	00a787bb          	addw	a5,a5,a0
    80003168:	0017979b          	slliw	a5,a5,0x1
    8000316c:	00168693          	addi	a3,a3,1
    80003170:	00c787bb          	addw	a5,a5,a2
    80003174:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80003178:	fd5ff06f          	j	8000314c <_Z11stringToIntPKc+0x14>
    return n;
}
    8000317c:	00813403          	ld	s0,8(sp)
    80003180:	01010113          	addi	sp,sp,16
    80003184:	00008067          	ret

0000000080003188 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80003188:	fc010113          	addi	sp,sp,-64
    8000318c:	02113c23          	sd	ra,56(sp)
    80003190:	02813823          	sd	s0,48(sp)
    80003194:	02913423          	sd	s1,40(sp)
    80003198:	03213023          	sd	s2,32(sp)
    8000319c:	01313c23          	sd	s3,24(sp)
    800031a0:	04010413          	addi	s0,sp,64
    800031a4:	00050493          	mv	s1,a0
    800031a8:	00058913          	mv	s2,a1
    800031ac:	00060993          	mv	s3,a2
    LOCK();
    800031b0:	00100613          	li	a2,1
    800031b4:	00000593          	li	a1,0
    800031b8:	00004517          	auipc	a0,0x4
    800031bc:	13050513          	addi	a0,a0,304 # 800072e8 <lockPrint>
    800031c0:	ffffe097          	auipc	ra,0xffffe
    800031c4:	08c080e7          	jalr	140(ra) # 8000124c <copy_and_swap>
    800031c8:	00050863          	beqz	a0,800031d8 <_Z8printIntiii+0x50>
    800031cc:	ffffe097          	auipc	ra,0xffffe
    800031d0:	1b4080e7          	jalr	436(ra) # 80001380 <_Z15thread_dispatchv>
    800031d4:	fddff06f          	j	800031b0 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    800031d8:	00098463          	beqz	s3,800031e0 <_Z8printIntiii+0x58>
    800031dc:	0804c463          	bltz	s1,80003264 <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    800031e0:	0004851b          	sext.w	a0,s1
    neg = 0;
    800031e4:	00000593          	li	a1,0
    }

    i = 0;
    800031e8:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    800031ec:	0009079b          	sext.w	a5,s2
    800031f0:	0325773b          	remuw	a4,a0,s2
    800031f4:	00048613          	mv	a2,s1
    800031f8:	0014849b          	addiw	s1,s1,1
    800031fc:	02071693          	slli	a3,a4,0x20
    80003200:	0206d693          	srli	a3,a3,0x20
    80003204:	00004717          	auipc	a4,0x4
    80003208:	ffc70713          	addi	a4,a4,-4 # 80007200 <digits>
    8000320c:	00d70733          	add	a4,a4,a3
    80003210:	00074683          	lbu	a3,0(a4)
    80003214:	fd040713          	addi	a4,s0,-48
    80003218:	00c70733          	add	a4,a4,a2
    8000321c:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80003220:	0005071b          	sext.w	a4,a0
    80003224:	0325553b          	divuw	a0,a0,s2
    80003228:	fcf772e3          	bgeu	a4,a5,800031ec <_Z8printIntiii+0x64>
    if(neg)
    8000322c:	00058c63          	beqz	a1,80003244 <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    80003230:	fd040793          	addi	a5,s0,-48
    80003234:	009784b3          	add	s1,a5,s1
    80003238:	02d00793          	li	a5,45
    8000323c:	fef48823          	sb	a5,-16(s1)
    80003240:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80003244:	fff4849b          	addiw	s1,s1,-1
    80003248:	0204c463          	bltz	s1,80003270 <_Z8printIntiii+0xe8>
        putc(buf[i]);
    8000324c:	fd040793          	addi	a5,s0,-48
    80003250:	009787b3          	add	a5,a5,s1
    80003254:	ff07c503          	lbu	a0,-16(a5)
    80003258:	fffff097          	auipc	ra,0xfffff
    8000325c:	dbc080e7          	jalr	-580(ra) # 80002014 <_Z4putcc>
    80003260:	fe5ff06f          	j	80003244 <_Z8printIntiii+0xbc>
        x = -xx;
    80003264:	4090053b          	negw	a0,s1
        neg = 1;
    80003268:	00100593          	li	a1,1
        x = -xx;
    8000326c:	f7dff06f          	j	800031e8 <_Z8printIntiii+0x60>

    UNLOCK();
    80003270:	00000613          	li	a2,0
    80003274:	00100593          	li	a1,1
    80003278:	00004517          	auipc	a0,0x4
    8000327c:	07050513          	addi	a0,a0,112 # 800072e8 <lockPrint>
    80003280:	ffffe097          	auipc	ra,0xffffe
    80003284:	fcc080e7          	jalr	-52(ra) # 8000124c <copy_and_swap>
    80003288:	fe0514e3          	bnez	a0,80003270 <_Z8printIntiii+0xe8>
    8000328c:	03813083          	ld	ra,56(sp)
    80003290:	03013403          	ld	s0,48(sp)
    80003294:	02813483          	ld	s1,40(sp)
    80003298:	02013903          	ld	s2,32(sp)
    8000329c:	01813983          	ld	s3,24(sp)
    800032a0:	04010113          	addi	sp,sp,64
    800032a4:	00008067          	ret

00000000800032a8 <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    800032a8:	ff010113          	addi	sp,sp,-16
    800032ac:	00113423          	sd	ra,8(sp)
    800032b0:	00813023          	sd	s0,0(sp)
    800032b4:	01010413          	addi	s0,sp,16
    printString("Unesite broj testa? [1-7]\n");
    800032b8:	00003517          	auipc	a0,0x3
    800032bc:	ec050513          	addi	a0,a0,-320 # 80006178 <CONSOLE_STATUS+0x168>
    800032c0:	00000097          	auipc	ra,0x0
    800032c4:	d18080e7          	jalr	-744(ra) # 80002fd8 <_Z11printStringPKc>
    }

    switch (test) {
        case 1:
#if LEVEL_2_IMPLEMENTED == 1
            Threads_C_API_test();
    800032c8:	00000097          	auipc	ra,0x0
    800032cc:	c14080e7          	jalr	-1004(ra) # 80002edc <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    800032d0:	00003517          	auipc	a0,0x3
    800032d4:	ec850513          	addi	a0,a0,-312 # 80006198 <CONSOLE_STATUS+0x188>
    800032d8:	00000097          	auipc	ra,0x0
    800032dc:	d00080e7          	jalr	-768(ra) # 80002fd8 <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    800032e0:	00813083          	ld	ra,8(sp)
    800032e4:	00013403          	ld	s0,0(sp)
    800032e8:	01010113          	addi	sp,sp,16
    800032ec:	00008067          	ret

00000000800032f0 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800032f0:	fe010113          	addi	sp,sp,-32
    800032f4:	00113c23          	sd	ra,24(sp)
    800032f8:	00813823          	sd	s0,16(sp)
    800032fc:	00913423          	sd	s1,8(sp)
    80003300:	01213023          	sd	s2,0(sp)
    80003304:	02010413          	addi	s0,sp,32
    80003308:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    8000330c:	00100793          	li	a5,1
    80003310:	02a7f863          	bgeu	a5,a0,80003340 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80003314:	00a00793          	li	a5,10
    80003318:	02f577b3          	remu	a5,a0,a5
    8000331c:	02078e63          	beqz	a5,80003358 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80003320:	fff48513          	addi	a0,s1,-1
    80003324:	00000097          	auipc	ra,0x0
    80003328:	fcc080e7          	jalr	-52(ra) # 800032f0 <_ZL9fibonaccim>
    8000332c:	00050913          	mv	s2,a0
    80003330:	ffe48513          	addi	a0,s1,-2
    80003334:	00000097          	auipc	ra,0x0
    80003338:	fbc080e7          	jalr	-68(ra) # 800032f0 <_ZL9fibonaccim>
    8000333c:	00a90533          	add	a0,s2,a0
}
    80003340:	01813083          	ld	ra,24(sp)
    80003344:	01013403          	ld	s0,16(sp)
    80003348:	00813483          	ld	s1,8(sp)
    8000334c:	00013903          	ld	s2,0(sp)
    80003350:	02010113          	addi	sp,sp,32
    80003354:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80003358:	ffffe097          	auipc	ra,0xffffe
    8000335c:	028080e7          	jalr	40(ra) # 80001380 <_Z15thread_dispatchv>
    80003360:	fc1ff06f          	j	80003320 <_ZL9fibonaccim+0x30>

0000000080003364 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80003364:	fe010113          	addi	sp,sp,-32
    80003368:	00113c23          	sd	ra,24(sp)
    8000336c:	00813823          	sd	s0,16(sp)
    80003370:	00913423          	sd	s1,8(sp)
    80003374:	01213023          	sd	s2,0(sp)
    80003378:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    8000337c:	00a00493          	li	s1,10
    80003380:	0400006f          	j	800033c0 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003384:	00003517          	auipc	a0,0x3
    80003388:	d4c50513          	addi	a0,a0,-692 # 800060d0 <CONSOLE_STATUS+0xc0>
    8000338c:	00000097          	auipc	ra,0x0
    80003390:	c4c080e7          	jalr	-948(ra) # 80002fd8 <_Z11printStringPKc>
    80003394:	00000613          	li	a2,0
    80003398:	00a00593          	li	a1,10
    8000339c:	00048513          	mv	a0,s1
    800033a0:	00000097          	auipc	ra,0x0
    800033a4:	de8080e7          	jalr	-536(ra) # 80003188 <_Z8printIntiii>
    800033a8:	00003517          	auipc	a0,0x3
    800033ac:	f4050513          	addi	a0,a0,-192 # 800062e8 <CONSOLE_STATUS+0x2d8>
    800033b0:	00000097          	auipc	ra,0x0
    800033b4:	c28080e7          	jalr	-984(ra) # 80002fd8 <_Z11printStringPKc>
    for (; i < 13; i++) {
    800033b8:	0014849b          	addiw	s1,s1,1
    800033bc:	0ff4f493          	andi	s1,s1,255
    800033c0:	00c00793          	li	a5,12
    800033c4:	fc97f0e3          	bgeu	a5,s1,80003384 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    800033c8:	00003517          	auipc	a0,0x3
    800033cc:	d1050513          	addi	a0,a0,-752 # 800060d8 <CONSOLE_STATUS+0xc8>
    800033d0:	00000097          	auipc	ra,0x0
    800033d4:	c08080e7          	jalr	-1016(ra) # 80002fd8 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800033d8:	00500313          	li	t1,5
    thread_dispatch();
    800033dc:	ffffe097          	auipc	ra,0xffffe
    800033e0:	fa4080e7          	jalr	-92(ra) # 80001380 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    800033e4:	01000513          	li	a0,16
    800033e8:	00000097          	auipc	ra,0x0
    800033ec:	f08080e7          	jalr	-248(ra) # 800032f0 <_ZL9fibonaccim>
    800033f0:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800033f4:	00003517          	auipc	a0,0x3
    800033f8:	cf450513          	addi	a0,a0,-780 # 800060e8 <CONSOLE_STATUS+0xd8>
    800033fc:	00000097          	auipc	ra,0x0
    80003400:	bdc080e7          	jalr	-1060(ra) # 80002fd8 <_Z11printStringPKc>
    80003404:	00000613          	li	a2,0
    80003408:	00a00593          	li	a1,10
    8000340c:	0009051b          	sext.w	a0,s2
    80003410:	00000097          	auipc	ra,0x0
    80003414:	d78080e7          	jalr	-648(ra) # 80003188 <_Z8printIntiii>
    80003418:	00003517          	auipc	a0,0x3
    8000341c:	ed050513          	addi	a0,a0,-304 # 800062e8 <CONSOLE_STATUS+0x2d8>
    80003420:	00000097          	auipc	ra,0x0
    80003424:	bb8080e7          	jalr	-1096(ra) # 80002fd8 <_Z11printStringPKc>
    80003428:	0400006f          	j	80003468 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    8000342c:	00003517          	auipc	a0,0x3
    80003430:	ca450513          	addi	a0,a0,-860 # 800060d0 <CONSOLE_STATUS+0xc0>
    80003434:	00000097          	auipc	ra,0x0
    80003438:	ba4080e7          	jalr	-1116(ra) # 80002fd8 <_Z11printStringPKc>
    8000343c:	00000613          	li	a2,0
    80003440:	00a00593          	li	a1,10
    80003444:	00048513          	mv	a0,s1
    80003448:	00000097          	auipc	ra,0x0
    8000344c:	d40080e7          	jalr	-704(ra) # 80003188 <_Z8printIntiii>
    80003450:	00003517          	auipc	a0,0x3
    80003454:	e9850513          	addi	a0,a0,-360 # 800062e8 <CONSOLE_STATUS+0x2d8>
    80003458:	00000097          	auipc	ra,0x0
    8000345c:	b80080e7          	jalr	-1152(ra) # 80002fd8 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80003460:	0014849b          	addiw	s1,s1,1
    80003464:	0ff4f493          	andi	s1,s1,255
    80003468:	00f00793          	li	a5,15
    8000346c:	fc97f0e3          	bgeu	a5,s1,8000342c <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80003470:	00003517          	auipc	a0,0x3
    80003474:	c8850513          	addi	a0,a0,-888 # 800060f8 <CONSOLE_STATUS+0xe8>
    80003478:	00000097          	auipc	ra,0x0
    8000347c:	b60080e7          	jalr	-1184(ra) # 80002fd8 <_Z11printStringPKc>
    finishedD = true;
    80003480:	00100793          	li	a5,1
    80003484:	00004717          	auipc	a4,0x4
    80003488:	e6f70623          	sb	a5,-404(a4) # 800072f0 <_ZL9finishedD>
    thread_dispatch();
    8000348c:	ffffe097          	auipc	ra,0xffffe
    80003490:	ef4080e7          	jalr	-268(ra) # 80001380 <_Z15thread_dispatchv>
}
    80003494:	01813083          	ld	ra,24(sp)
    80003498:	01013403          	ld	s0,16(sp)
    8000349c:	00813483          	ld	s1,8(sp)
    800034a0:	00013903          	ld	s2,0(sp)
    800034a4:	02010113          	addi	sp,sp,32
    800034a8:	00008067          	ret

00000000800034ac <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    800034ac:	fe010113          	addi	sp,sp,-32
    800034b0:	00113c23          	sd	ra,24(sp)
    800034b4:	00813823          	sd	s0,16(sp)
    800034b8:	00913423          	sd	s1,8(sp)
    800034bc:	01213023          	sd	s2,0(sp)
    800034c0:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800034c4:	00000493          	li	s1,0
    800034c8:	0400006f          	j	80003508 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    800034cc:	00003517          	auipc	a0,0x3
    800034d0:	bd450513          	addi	a0,a0,-1068 # 800060a0 <CONSOLE_STATUS+0x90>
    800034d4:	00000097          	auipc	ra,0x0
    800034d8:	b04080e7          	jalr	-1276(ra) # 80002fd8 <_Z11printStringPKc>
    800034dc:	00000613          	li	a2,0
    800034e0:	00a00593          	li	a1,10
    800034e4:	00048513          	mv	a0,s1
    800034e8:	00000097          	auipc	ra,0x0
    800034ec:	ca0080e7          	jalr	-864(ra) # 80003188 <_Z8printIntiii>
    800034f0:	00003517          	auipc	a0,0x3
    800034f4:	df850513          	addi	a0,a0,-520 # 800062e8 <CONSOLE_STATUS+0x2d8>
    800034f8:	00000097          	auipc	ra,0x0
    800034fc:	ae0080e7          	jalr	-1312(ra) # 80002fd8 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80003500:	0014849b          	addiw	s1,s1,1
    80003504:	0ff4f493          	andi	s1,s1,255
    80003508:	00200793          	li	a5,2
    8000350c:	fc97f0e3          	bgeu	a5,s1,800034cc <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80003510:	00003517          	auipc	a0,0x3
    80003514:	b9850513          	addi	a0,a0,-1128 # 800060a8 <CONSOLE_STATUS+0x98>
    80003518:	00000097          	auipc	ra,0x0
    8000351c:	ac0080e7          	jalr	-1344(ra) # 80002fd8 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80003520:	00700313          	li	t1,7
    thread_dispatch();
    80003524:	ffffe097          	auipc	ra,0xffffe
    80003528:	e5c080e7          	jalr	-420(ra) # 80001380 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    8000352c:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80003530:	00003517          	auipc	a0,0x3
    80003534:	b8850513          	addi	a0,a0,-1144 # 800060b8 <CONSOLE_STATUS+0xa8>
    80003538:	00000097          	auipc	ra,0x0
    8000353c:	aa0080e7          	jalr	-1376(ra) # 80002fd8 <_Z11printStringPKc>
    80003540:	00000613          	li	a2,0
    80003544:	00a00593          	li	a1,10
    80003548:	0009051b          	sext.w	a0,s2
    8000354c:	00000097          	auipc	ra,0x0
    80003550:	c3c080e7          	jalr	-964(ra) # 80003188 <_Z8printIntiii>
    80003554:	00003517          	auipc	a0,0x3
    80003558:	d9450513          	addi	a0,a0,-620 # 800062e8 <CONSOLE_STATUS+0x2d8>
    8000355c:	00000097          	auipc	ra,0x0
    80003560:	a7c080e7          	jalr	-1412(ra) # 80002fd8 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80003564:	00c00513          	li	a0,12
    80003568:	00000097          	auipc	ra,0x0
    8000356c:	d88080e7          	jalr	-632(ra) # 800032f0 <_ZL9fibonaccim>
    80003570:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80003574:	00003517          	auipc	a0,0x3
    80003578:	b4c50513          	addi	a0,a0,-1204 # 800060c0 <CONSOLE_STATUS+0xb0>
    8000357c:	00000097          	auipc	ra,0x0
    80003580:	a5c080e7          	jalr	-1444(ra) # 80002fd8 <_Z11printStringPKc>
    80003584:	00000613          	li	a2,0
    80003588:	00a00593          	li	a1,10
    8000358c:	0009051b          	sext.w	a0,s2
    80003590:	00000097          	auipc	ra,0x0
    80003594:	bf8080e7          	jalr	-1032(ra) # 80003188 <_Z8printIntiii>
    80003598:	00003517          	auipc	a0,0x3
    8000359c:	d5050513          	addi	a0,a0,-688 # 800062e8 <CONSOLE_STATUS+0x2d8>
    800035a0:	00000097          	auipc	ra,0x0
    800035a4:	a38080e7          	jalr	-1480(ra) # 80002fd8 <_Z11printStringPKc>
    800035a8:	0400006f          	j	800035e8 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    800035ac:	00003517          	auipc	a0,0x3
    800035b0:	af450513          	addi	a0,a0,-1292 # 800060a0 <CONSOLE_STATUS+0x90>
    800035b4:	00000097          	auipc	ra,0x0
    800035b8:	a24080e7          	jalr	-1500(ra) # 80002fd8 <_Z11printStringPKc>
    800035bc:	00000613          	li	a2,0
    800035c0:	00a00593          	li	a1,10
    800035c4:	00048513          	mv	a0,s1
    800035c8:	00000097          	auipc	ra,0x0
    800035cc:	bc0080e7          	jalr	-1088(ra) # 80003188 <_Z8printIntiii>
    800035d0:	00003517          	auipc	a0,0x3
    800035d4:	d1850513          	addi	a0,a0,-744 # 800062e8 <CONSOLE_STATUS+0x2d8>
    800035d8:	00000097          	auipc	ra,0x0
    800035dc:	a00080e7          	jalr	-1536(ra) # 80002fd8 <_Z11printStringPKc>
    for (; i < 6; i++) {
    800035e0:	0014849b          	addiw	s1,s1,1
    800035e4:	0ff4f493          	andi	s1,s1,255
    800035e8:	00500793          	li	a5,5
    800035ec:	fc97f0e3          	bgeu	a5,s1,800035ac <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    800035f0:	00003517          	auipc	a0,0x3
    800035f4:	a8850513          	addi	a0,a0,-1400 # 80006078 <CONSOLE_STATUS+0x68>
    800035f8:	00000097          	auipc	ra,0x0
    800035fc:	9e0080e7          	jalr	-1568(ra) # 80002fd8 <_Z11printStringPKc>
    finishedC = true;
    80003600:	00100793          	li	a5,1
    80003604:	00004717          	auipc	a4,0x4
    80003608:	cef706a3          	sb	a5,-787(a4) # 800072f1 <_ZL9finishedC>
    thread_dispatch();
    8000360c:	ffffe097          	auipc	ra,0xffffe
    80003610:	d74080e7          	jalr	-652(ra) # 80001380 <_Z15thread_dispatchv>
}
    80003614:	01813083          	ld	ra,24(sp)
    80003618:	01013403          	ld	s0,16(sp)
    8000361c:	00813483          	ld	s1,8(sp)
    80003620:	00013903          	ld	s2,0(sp)
    80003624:	02010113          	addi	sp,sp,32
    80003628:	00008067          	ret

000000008000362c <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    8000362c:	fe010113          	addi	sp,sp,-32
    80003630:	00113c23          	sd	ra,24(sp)
    80003634:	00813823          	sd	s0,16(sp)
    80003638:	00913423          	sd	s1,8(sp)
    8000363c:	01213023          	sd	s2,0(sp)
    80003640:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80003644:	00000913          	li	s2,0
    80003648:	0400006f          	j	80003688 <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    8000364c:	ffffe097          	auipc	ra,0xffffe
    80003650:	d34080e7          	jalr	-716(ra) # 80001380 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003654:	00148493          	addi	s1,s1,1
    80003658:	000027b7          	lui	a5,0x2
    8000365c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003660:	0097ee63          	bltu	a5,s1,8000367c <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003664:	00000713          	li	a4,0
    80003668:	000077b7          	lui	a5,0x7
    8000366c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003670:	fce7eee3          	bltu	a5,a4,8000364c <_ZL11workerBodyBPv+0x20>
    80003674:	00170713          	addi	a4,a4,1
    80003678:	ff1ff06f          	j	80003668 <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    8000367c:	00a00793          	li	a5,10
    80003680:	04f90663          	beq	s2,a5,800036cc <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    80003684:	00190913          	addi	s2,s2,1
    80003688:	00f00793          	li	a5,15
    8000368c:	0527e463          	bltu	a5,s2,800036d4 <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    80003690:	00003517          	auipc	a0,0x3
    80003694:	9f850513          	addi	a0,a0,-1544 # 80006088 <CONSOLE_STATUS+0x78>
    80003698:	00000097          	auipc	ra,0x0
    8000369c:	940080e7          	jalr	-1728(ra) # 80002fd8 <_Z11printStringPKc>
    800036a0:	00000613          	li	a2,0
    800036a4:	00a00593          	li	a1,10
    800036a8:	0009051b          	sext.w	a0,s2
    800036ac:	00000097          	auipc	ra,0x0
    800036b0:	adc080e7          	jalr	-1316(ra) # 80003188 <_Z8printIntiii>
    800036b4:	00003517          	auipc	a0,0x3
    800036b8:	c3450513          	addi	a0,a0,-972 # 800062e8 <CONSOLE_STATUS+0x2d8>
    800036bc:	00000097          	auipc	ra,0x0
    800036c0:	91c080e7          	jalr	-1764(ra) # 80002fd8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800036c4:	00000493          	li	s1,0
    800036c8:	f91ff06f          	j	80003658 <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    800036cc:	14102ff3          	csrr	t6,sepc
    800036d0:	fb5ff06f          	j	80003684 <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    800036d4:	00003517          	auipc	a0,0x3
    800036d8:	9bc50513          	addi	a0,a0,-1604 # 80006090 <CONSOLE_STATUS+0x80>
    800036dc:	00000097          	auipc	ra,0x0
    800036e0:	8fc080e7          	jalr	-1796(ra) # 80002fd8 <_Z11printStringPKc>
    finishedB = true;
    800036e4:	00100793          	li	a5,1
    800036e8:	00004717          	auipc	a4,0x4
    800036ec:	c0f70523          	sb	a5,-1014(a4) # 800072f2 <_ZL9finishedB>
    thread_dispatch();
    800036f0:	ffffe097          	auipc	ra,0xffffe
    800036f4:	c90080e7          	jalr	-880(ra) # 80001380 <_Z15thread_dispatchv>
}
    800036f8:	01813083          	ld	ra,24(sp)
    800036fc:	01013403          	ld	s0,16(sp)
    80003700:	00813483          	ld	s1,8(sp)
    80003704:	00013903          	ld	s2,0(sp)
    80003708:	02010113          	addi	sp,sp,32
    8000370c:	00008067          	ret

0000000080003710 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80003710:	fe010113          	addi	sp,sp,-32
    80003714:	00113c23          	sd	ra,24(sp)
    80003718:	00813823          	sd	s0,16(sp)
    8000371c:	00913423          	sd	s1,8(sp)
    80003720:	01213023          	sd	s2,0(sp)
    80003724:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80003728:	00000913          	li	s2,0
    8000372c:	0380006f          	j	80003764 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80003730:	ffffe097          	auipc	ra,0xffffe
    80003734:	c50080e7          	jalr	-944(ra) # 80001380 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003738:	00148493          	addi	s1,s1,1
    8000373c:	000027b7          	lui	a5,0x2
    80003740:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003744:	0097ee63          	bltu	a5,s1,80003760 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003748:	00000713          	li	a4,0
    8000374c:	000077b7          	lui	a5,0x7
    80003750:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003754:	fce7eee3          	bltu	a5,a4,80003730 <_ZL11workerBodyAPv+0x20>
    80003758:	00170713          	addi	a4,a4,1
    8000375c:	ff1ff06f          	j	8000374c <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80003760:	00190913          	addi	s2,s2,1
    80003764:	00900793          	li	a5,9
    80003768:	0527e063          	bltu	a5,s2,800037a8 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    8000376c:	00003517          	auipc	a0,0x3
    80003770:	90450513          	addi	a0,a0,-1788 # 80006070 <CONSOLE_STATUS+0x60>
    80003774:	00000097          	auipc	ra,0x0
    80003778:	864080e7          	jalr	-1948(ra) # 80002fd8 <_Z11printStringPKc>
    8000377c:	00000613          	li	a2,0
    80003780:	00a00593          	li	a1,10
    80003784:	0009051b          	sext.w	a0,s2
    80003788:	00000097          	auipc	ra,0x0
    8000378c:	a00080e7          	jalr	-1536(ra) # 80003188 <_Z8printIntiii>
    80003790:	00003517          	auipc	a0,0x3
    80003794:	b5850513          	addi	a0,a0,-1192 # 800062e8 <CONSOLE_STATUS+0x2d8>
    80003798:	00000097          	auipc	ra,0x0
    8000379c:	840080e7          	jalr	-1984(ra) # 80002fd8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800037a0:	00000493          	li	s1,0
    800037a4:	f99ff06f          	j	8000373c <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    800037a8:	00003517          	auipc	a0,0x3
    800037ac:	8d050513          	addi	a0,a0,-1840 # 80006078 <CONSOLE_STATUS+0x68>
    800037b0:	00000097          	auipc	ra,0x0
    800037b4:	828080e7          	jalr	-2008(ra) # 80002fd8 <_Z11printStringPKc>
    finishedA = true;
    800037b8:	00100793          	li	a5,1
    800037bc:	00004717          	auipc	a4,0x4
    800037c0:	b2f70ba3          	sb	a5,-1225(a4) # 800072f3 <_ZL9finishedA>
}
    800037c4:	01813083          	ld	ra,24(sp)
    800037c8:	01013403          	ld	s0,16(sp)
    800037cc:	00813483          	ld	s1,8(sp)
    800037d0:	00013903          	ld	s2,0(sp)
    800037d4:	02010113          	addi	sp,sp,32
    800037d8:	00008067          	ret

00000000800037dc <_Z16System_Mode_testv>:


void System_Mode_test() {
    800037dc:	fd010113          	addi	sp,sp,-48
    800037e0:	02113423          	sd	ra,40(sp)
    800037e4:	02813023          	sd	s0,32(sp)
    800037e8:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    800037ec:	00000613          	li	a2,0
    800037f0:	00000597          	auipc	a1,0x0
    800037f4:	f2058593          	addi	a1,a1,-224 # 80003710 <_ZL11workerBodyAPv>
    800037f8:	fd040513          	addi	a0,s0,-48
    800037fc:	ffffe097          	auipc	ra,0xffffe
    80003800:	b08080e7          	jalr	-1272(ra) # 80001304 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadA created\n");
    80003804:	00003517          	auipc	a0,0x3
    80003808:	90450513          	addi	a0,a0,-1788 # 80006108 <CONSOLE_STATUS+0xf8>
    8000380c:	fffff097          	auipc	ra,0xfffff
    80003810:	7cc080e7          	jalr	1996(ra) # 80002fd8 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80003814:	00000613          	li	a2,0
    80003818:	00000597          	auipc	a1,0x0
    8000381c:	e1458593          	addi	a1,a1,-492 # 8000362c <_ZL11workerBodyBPv>
    80003820:	fd840513          	addi	a0,s0,-40
    80003824:	ffffe097          	auipc	ra,0xffffe
    80003828:	ae0080e7          	jalr	-1312(ra) # 80001304 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadB created\n");
    8000382c:	00003517          	auipc	a0,0x3
    80003830:	8f450513          	addi	a0,a0,-1804 # 80006120 <CONSOLE_STATUS+0x110>
    80003834:	fffff097          	auipc	ra,0xfffff
    80003838:	7a4080e7          	jalr	1956(ra) # 80002fd8 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    8000383c:	00000613          	li	a2,0
    80003840:	00000597          	auipc	a1,0x0
    80003844:	c6c58593          	addi	a1,a1,-916 # 800034ac <_ZL11workerBodyCPv>
    80003848:	fe040513          	addi	a0,s0,-32
    8000384c:	ffffe097          	auipc	ra,0xffffe
    80003850:	ab8080e7          	jalr	-1352(ra) # 80001304 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadC created\n");
    80003854:	00003517          	auipc	a0,0x3
    80003858:	8e450513          	addi	a0,a0,-1820 # 80006138 <CONSOLE_STATUS+0x128>
    8000385c:	fffff097          	auipc	ra,0xfffff
    80003860:	77c080e7          	jalr	1916(ra) # 80002fd8 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80003864:	00000613          	li	a2,0
    80003868:	00000597          	auipc	a1,0x0
    8000386c:	afc58593          	addi	a1,a1,-1284 # 80003364 <_ZL11workerBodyDPv>
    80003870:	fe840513          	addi	a0,s0,-24
    80003874:	ffffe097          	auipc	ra,0xffffe
    80003878:	a90080e7          	jalr	-1392(ra) # 80001304 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadD created\n");
    8000387c:	00003517          	auipc	a0,0x3
    80003880:	8d450513          	addi	a0,a0,-1836 # 80006150 <CONSOLE_STATUS+0x140>
    80003884:	fffff097          	auipc	ra,0xfffff
    80003888:	754080e7          	jalr	1876(ra) # 80002fd8 <_Z11printStringPKc>
    8000388c:	00c0006f          	j	80003898 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80003890:	ffffe097          	auipc	ra,0xffffe
    80003894:	af0080e7          	jalr	-1296(ra) # 80001380 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80003898:	00004797          	auipc	a5,0x4
    8000389c:	a5b7c783          	lbu	a5,-1445(a5) # 800072f3 <_ZL9finishedA>
    800038a0:	fe0788e3          	beqz	a5,80003890 <_Z16System_Mode_testv+0xb4>
    800038a4:	00004797          	auipc	a5,0x4
    800038a8:	a4e7c783          	lbu	a5,-1458(a5) # 800072f2 <_ZL9finishedB>
    800038ac:	fe0782e3          	beqz	a5,80003890 <_Z16System_Mode_testv+0xb4>
    800038b0:	00004797          	auipc	a5,0x4
    800038b4:	a417c783          	lbu	a5,-1471(a5) # 800072f1 <_ZL9finishedC>
    800038b8:	fc078ce3          	beqz	a5,80003890 <_Z16System_Mode_testv+0xb4>
    800038bc:	00004797          	auipc	a5,0x4
    800038c0:	a347c783          	lbu	a5,-1484(a5) # 800072f0 <_ZL9finishedD>
    800038c4:	fc0786e3          	beqz	a5,80003890 <_Z16System_Mode_testv+0xb4>
    }

}
    800038c8:	02813083          	ld	ra,40(sp)
    800038cc:	02013403          	ld	s0,32(sp)
    800038d0:	03010113          	addi	sp,sp,48
    800038d4:	00008067          	ret

00000000800038d8 <start>:
    800038d8:	ff010113          	addi	sp,sp,-16
    800038dc:	00813423          	sd	s0,8(sp)
    800038e0:	01010413          	addi	s0,sp,16
    800038e4:	300027f3          	csrr	a5,mstatus
    800038e8:	ffffe737          	lui	a4,0xffffe
    800038ec:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff629f>
    800038f0:	00e7f7b3          	and	a5,a5,a4
    800038f4:	00001737          	lui	a4,0x1
    800038f8:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    800038fc:	00e7e7b3          	or	a5,a5,a4
    80003900:	30079073          	csrw	mstatus,a5
    80003904:	00000797          	auipc	a5,0x0
    80003908:	16078793          	addi	a5,a5,352 # 80003a64 <system_main>
    8000390c:	34179073          	csrw	mepc,a5
    80003910:	00000793          	li	a5,0
    80003914:	18079073          	csrw	satp,a5
    80003918:	000107b7          	lui	a5,0x10
    8000391c:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80003920:	30279073          	csrw	medeleg,a5
    80003924:	30379073          	csrw	mideleg,a5
    80003928:	104027f3          	csrr	a5,sie
    8000392c:	2227e793          	ori	a5,a5,546
    80003930:	10479073          	csrw	sie,a5
    80003934:	fff00793          	li	a5,-1
    80003938:	00a7d793          	srli	a5,a5,0xa
    8000393c:	3b079073          	csrw	pmpaddr0,a5
    80003940:	00f00793          	li	a5,15
    80003944:	3a079073          	csrw	pmpcfg0,a5
    80003948:	f14027f3          	csrr	a5,mhartid
    8000394c:	0200c737          	lui	a4,0x200c
    80003950:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80003954:	0007869b          	sext.w	a3,a5
    80003958:	00269713          	slli	a4,a3,0x2
    8000395c:	000f4637          	lui	a2,0xf4
    80003960:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80003964:	00d70733          	add	a4,a4,a3
    80003968:	0037979b          	slliw	a5,a5,0x3
    8000396c:	020046b7          	lui	a3,0x2004
    80003970:	00d787b3          	add	a5,a5,a3
    80003974:	00c585b3          	add	a1,a1,a2
    80003978:	00371693          	slli	a3,a4,0x3
    8000397c:	00004717          	auipc	a4,0x4
    80003980:	98470713          	addi	a4,a4,-1660 # 80007300 <timer_scratch>
    80003984:	00b7b023          	sd	a1,0(a5)
    80003988:	00d70733          	add	a4,a4,a3
    8000398c:	00f73c23          	sd	a5,24(a4)
    80003990:	02c73023          	sd	a2,32(a4)
    80003994:	34071073          	csrw	mscratch,a4
    80003998:	00000797          	auipc	a5,0x0
    8000399c:	6e878793          	addi	a5,a5,1768 # 80004080 <timervec>
    800039a0:	30579073          	csrw	mtvec,a5
    800039a4:	300027f3          	csrr	a5,mstatus
    800039a8:	0087e793          	ori	a5,a5,8
    800039ac:	30079073          	csrw	mstatus,a5
    800039b0:	304027f3          	csrr	a5,mie
    800039b4:	0807e793          	ori	a5,a5,128
    800039b8:	30479073          	csrw	mie,a5
    800039bc:	f14027f3          	csrr	a5,mhartid
    800039c0:	0007879b          	sext.w	a5,a5
    800039c4:	00078213          	mv	tp,a5
    800039c8:	30200073          	mret
    800039cc:	00813403          	ld	s0,8(sp)
    800039d0:	01010113          	addi	sp,sp,16
    800039d4:	00008067          	ret

00000000800039d8 <timerinit>:
    800039d8:	ff010113          	addi	sp,sp,-16
    800039dc:	00813423          	sd	s0,8(sp)
    800039e0:	01010413          	addi	s0,sp,16
    800039e4:	f14027f3          	csrr	a5,mhartid
    800039e8:	0200c737          	lui	a4,0x200c
    800039ec:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800039f0:	0007869b          	sext.w	a3,a5
    800039f4:	00269713          	slli	a4,a3,0x2
    800039f8:	000f4637          	lui	a2,0xf4
    800039fc:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80003a00:	00d70733          	add	a4,a4,a3
    80003a04:	0037979b          	slliw	a5,a5,0x3
    80003a08:	020046b7          	lui	a3,0x2004
    80003a0c:	00d787b3          	add	a5,a5,a3
    80003a10:	00c585b3          	add	a1,a1,a2
    80003a14:	00371693          	slli	a3,a4,0x3
    80003a18:	00004717          	auipc	a4,0x4
    80003a1c:	8e870713          	addi	a4,a4,-1816 # 80007300 <timer_scratch>
    80003a20:	00b7b023          	sd	a1,0(a5)
    80003a24:	00d70733          	add	a4,a4,a3
    80003a28:	00f73c23          	sd	a5,24(a4)
    80003a2c:	02c73023          	sd	a2,32(a4)
    80003a30:	34071073          	csrw	mscratch,a4
    80003a34:	00000797          	auipc	a5,0x0
    80003a38:	64c78793          	addi	a5,a5,1612 # 80004080 <timervec>
    80003a3c:	30579073          	csrw	mtvec,a5
    80003a40:	300027f3          	csrr	a5,mstatus
    80003a44:	0087e793          	ori	a5,a5,8
    80003a48:	30079073          	csrw	mstatus,a5
    80003a4c:	304027f3          	csrr	a5,mie
    80003a50:	0807e793          	ori	a5,a5,128
    80003a54:	30479073          	csrw	mie,a5
    80003a58:	00813403          	ld	s0,8(sp)
    80003a5c:	01010113          	addi	sp,sp,16
    80003a60:	00008067          	ret

0000000080003a64 <system_main>:
    80003a64:	fe010113          	addi	sp,sp,-32
    80003a68:	00813823          	sd	s0,16(sp)
    80003a6c:	00913423          	sd	s1,8(sp)
    80003a70:	00113c23          	sd	ra,24(sp)
    80003a74:	02010413          	addi	s0,sp,32
    80003a78:	00000097          	auipc	ra,0x0
    80003a7c:	0c4080e7          	jalr	196(ra) # 80003b3c <cpuid>
    80003a80:	00004497          	auipc	s1,0x4
    80003a84:	80048493          	addi	s1,s1,-2048 # 80007280 <started>
    80003a88:	02050263          	beqz	a0,80003aac <system_main+0x48>
    80003a8c:	0004a783          	lw	a5,0(s1)
    80003a90:	0007879b          	sext.w	a5,a5
    80003a94:	fe078ce3          	beqz	a5,80003a8c <system_main+0x28>
    80003a98:	0ff0000f          	fence
    80003a9c:	00002517          	auipc	a0,0x2
    80003aa0:	76c50513          	addi	a0,a0,1900 # 80006208 <CONSOLE_STATUS+0x1f8>
    80003aa4:	00001097          	auipc	ra,0x1
    80003aa8:	a78080e7          	jalr	-1416(ra) # 8000451c <panic>
    80003aac:	00001097          	auipc	ra,0x1
    80003ab0:	9cc080e7          	jalr	-1588(ra) # 80004478 <consoleinit>
    80003ab4:	00001097          	auipc	ra,0x1
    80003ab8:	158080e7          	jalr	344(ra) # 80004c0c <printfinit>
    80003abc:	00003517          	auipc	a0,0x3
    80003ac0:	82c50513          	addi	a0,a0,-2004 # 800062e8 <CONSOLE_STATUS+0x2d8>
    80003ac4:	00001097          	auipc	ra,0x1
    80003ac8:	ab4080e7          	jalr	-1356(ra) # 80004578 <__printf>
    80003acc:	00002517          	auipc	a0,0x2
    80003ad0:	70c50513          	addi	a0,a0,1804 # 800061d8 <CONSOLE_STATUS+0x1c8>
    80003ad4:	00001097          	auipc	ra,0x1
    80003ad8:	aa4080e7          	jalr	-1372(ra) # 80004578 <__printf>
    80003adc:	00003517          	auipc	a0,0x3
    80003ae0:	80c50513          	addi	a0,a0,-2036 # 800062e8 <CONSOLE_STATUS+0x2d8>
    80003ae4:	00001097          	auipc	ra,0x1
    80003ae8:	a94080e7          	jalr	-1388(ra) # 80004578 <__printf>
    80003aec:	00001097          	auipc	ra,0x1
    80003af0:	4ac080e7          	jalr	1196(ra) # 80004f98 <kinit>
    80003af4:	00000097          	auipc	ra,0x0
    80003af8:	148080e7          	jalr	328(ra) # 80003c3c <trapinit>
    80003afc:	00000097          	auipc	ra,0x0
    80003b00:	16c080e7          	jalr	364(ra) # 80003c68 <trapinithart>
    80003b04:	00000097          	auipc	ra,0x0
    80003b08:	5bc080e7          	jalr	1468(ra) # 800040c0 <plicinit>
    80003b0c:	00000097          	auipc	ra,0x0
    80003b10:	5dc080e7          	jalr	1500(ra) # 800040e8 <plicinithart>
    80003b14:	00000097          	auipc	ra,0x0
    80003b18:	078080e7          	jalr	120(ra) # 80003b8c <userinit>
    80003b1c:	0ff0000f          	fence
    80003b20:	00100793          	li	a5,1
    80003b24:	00002517          	auipc	a0,0x2
    80003b28:	6cc50513          	addi	a0,a0,1740 # 800061f0 <CONSOLE_STATUS+0x1e0>
    80003b2c:	00f4a023          	sw	a5,0(s1)
    80003b30:	00001097          	auipc	ra,0x1
    80003b34:	a48080e7          	jalr	-1464(ra) # 80004578 <__printf>
    80003b38:	0000006f          	j	80003b38 <system_main+0xd4>

0000000080003b3c <cpuid>:
    80003b3c:	ff010113          	addi	sp,sp,-16
    80003b40:	00813423          	sd	s0,8(sp)
    80003b44:	01010413          	addi	s0,sp,16
    80003b48:	00020513          	mv	a0,tp
    80003b4c:	00813403          	ld	s0,8(sp)
    80003b50:	0005051b          	sext.w	a0,a0
    80003b54:	01010113          	addi	sp,sp,16
    80003b58:	00008067          	ret

0000000080003b5c <mycpu>:
    80003b5c:	ff010113          	addi	sp,sp,-16
    80003b60:	00813423          	sd	s0,8(sp)
    80003b64:	01010413          	addi	s0,sp,16
    80003b68:	00020793          	mv	a5,tp
    80003b6c:	00813403          	ld	s0,8(sp)
    80003b70:	0007879b          	sext.w	a5,a5
    80003b74:	00779793          	slli	a5,a5,0x7
    80003b78:	00004517          	auipc	a0,0x4
    80003b7c:	7b850513          	addi	a0,a0,1976 # 80008330 <cpus>
    80003b80:	00f50533          	add	a0,a0,a5
    80003b84:	01010113          	addi	sp,sp,16
    80003b88:	00008067          	ret

0000000080003b8c <userinit>:
    80003b8c:	ff010113          	addi	sp,sp,-16
    80003b90:	00813423          	sd	s0,8(sp)
    80003b94:	01010413          	addi	s0,sp,16
    80003b98:	00813403          	ld	s0,8(sp)
    80003b9c:	01010113          	addi	sp,sp,16
    80003ba0:	ffffe317          	auipc	t1,0xffffe
    80003ba4:	b5030067          	jr	-1200(t1) # 800016f0 <main>

0000000080003ba8 <either_copyout>:
    80003ba8:	ff010113          	addi	sp,sp,-16
    80003bac:	00813023          	sd	s0,0(sp)
    80003bb0:	00113423          	sd	ra,8(sp)
    80003bb4:	01010413          	addi	s0,sp,16
    80003bb8:	02051663          	bnez	a0,80003be4 <either_copyout+0x3c>
    80003bbc:	00058513          	mv	a0,a1
    80003bc0:	00060593          	mv	a1,a2
    80003bc4:	0006861b          	sext.w	a2,a3
    80003bc8:	00002097          	auipc	ra,0x2
    80003bcc:	c5c080e7          	jalr	-932(ra) # 80005824 <__memmove>
    80003bd0:	00813083          	ld	ra,8(sp)
    80003bd4:	00013403          	ld	s0,0(sp)
    80003bd8:	00000513          	li	a0,0
    80003bdc:	01010113          	addi	sp,sp,16
    80003be0:	00008067          	ret
    80003be4:	00002517          	auipc	a0,0x2
    80003be8:	64c50513          	addi	a0,a0,1612 # 80006230 <CONSOLE_STATUS+0x220>
    80003bec:	00001097          	auipc	ra,0x1
    80003bf0:	930080e7          	jalr	-1744(ra) # 8000451c <panic>

0000000080003bf4 <either_copyin>:
    80003bf4:	ff010113          	addi	sp,sp,-16
    80003bf8:	00813023          	sd	s0,0(sp)
    80003bfc:	00113423          	sd	ra,8(sp)
    80003c00:	01010413          	addi	s0,sp,16
    80003c04:	02059463          	bnez	a1,80003c2c <either_copyin+0x38>
    80003c08:	00060593          	mv	a1,a2
    80003c0c:	0006861b          	sext.w	a2,a3
    80003c10:	00002097          	auipc	ra,0x2
    80003c14:	c14080e7          	jalr	-1004(ra) # 80005824 <__memmove>
    80003c18:	00813083          	ld	ra,8(sp)
    80003c1c:	00013403          	ld	s0,0(sp)
    80003c20:	00000513          	li	a0,0
    80003c24:	01010113          	addi	sp,sp,16
    80003c28:	00008067          	ret
    80003c2c:	00002517          	auipc	a0,0x2
    80003c30:	62c50513          	addi	a0,a0,1580 # 80006258 <CONSOLE_STATUS+0x248>
    80003c34:	00001097          	auipc	ra,0x1
    80003c38:	8e8080e7          	jalr	-1816(ra) # 8000451c <panic>

0000000080003c3c <trapinit>:
    80003c3c:	ff010113          	addi	sp,sp,-16
    80003c40:	00813423          	sd	s0,8(sp)
    80003c44:	01010413          	addi	s0,sp,16
    80003c48:	00813403          	ld	s0,8(sp)
    80003c4c:	00002597          	auipc	a1,0x2
    80003c50:	63458593          	addi	a1,a1,1588 # 80006280 <CONSOLE_STATUS+0x270>
    80003c54:	00004517          	auipc	a0,0x4
    80003c58:	75c50513          	addi	a0,a0,1884 # 800083b0 <tickslock>
    80003c5c:	01010113          	addi	sp,sp,16
    80003c60:	00001317          	auipc	t1,0x1
    80003c64:	5c830067          	jr	1480(t1) # 80005228 <initlock>

0000000080003c68 <trapinithart>:
    80003c68:	ff010113          	addi	sp,sp,-16
    80003c6c:	00813423          	sd	s0,8(sp)
    80003c70:	01010413          	addi	s0,sp,16
    80003c74:	00000797          	auipc	a5,0x0
    80003c78:	2fc78793          	addi	a5,a5,764 # 80003f70 <kernelvec>
    80003c7c:	10579073          	csrw	stvec,a5
    80003c80:	00813403          	ld	s0,8(sp)
    80003c84:	01010113          	addi	sp,sp,16
    80003c88:	00008067          	ret

0000000080003c8c <usertrap>:
    80003c8c:	ff010113          	addi	sp,sp,-16
    80003c90:	00813423          	sd	s0,8(sp)
    80003c94:	01010413          	addi	s0,sp,16
    80003c98:	00813403          	ld	s0,8(sp)
    80003c9c:	01010113          	addi	sp,sp,16
    80003ca0:	00008067          	ret

0000000080003ca4 <usertrapret>:
    80003ca4:	ff010113          	addi	sp,sp,-16
    80003ca8:	00813423          	sd	s0,8(sp)
    80003cac:	01010413          	addi	s0,sp,16
    80003cb0:	00813403          	ld	s0,8(sp)
    80003cb4:	01010113          	addi	sp,sp,16
    80003cb8:	00008067          	ret

0000000080003cbc <kerneltrap>:
    80003cbc:	fe010113          	addi	sp,sp,-32
    80003cc0:	00813823          	sd	s0,16(sp)
    80003cc4:	00113c23          	sd	ra,24(sp)
    80003cc8:	00913423          	sd	s1,8(sp)
    80003ccc:	02010413          	addi	s0,sp,32
    80003cd0:	142025f3          	csrr	a1,scause
    80003cd4:	100027f3          	csrr	a5,sstatus
    80003cd8:	0027f793          	andi	a5,a5,2
    80003cdc:	10079c63          	bnez	a5,80003df4 <kerneltrap+0x138>
    80003ce0:	142027f3          	csrr	a5,scause
    80003ce4:	0207ce63          	bltz	a5,80003d20 <kerneltrap+0x64>
    80003ce8:	00002517          	auipc	a0,0x2
    80003cec:	5e050513          	addi	a0,a0,1504 # 800062c8 <CONSOLE_STATUS+0x2b8>
    80003cf0:	00001097          	auipc	ra,0x1
    80003cf4:	888080e7          	jalr	-1912(ra) # 80004578 <__printf>
    80003cf8:	141025f3          	csrr	a1,sepc
    80003cfc:	14302673          	csrr	a2,stval
    80003d00:	00002517          	auipc	a0,0x2
    80003d04:	5d850513          	addi	a0,a0,1496 # 800062d8 <CONSOLE_STATUS+0x2c8>
    80003d08:	00001097          	auipc	ra,0x1
    80003d0c:	870080e7          	jalr	-1936(ra) # 80004578 <__printf>
    80003d10:	00002517          	auipc	a0,0x2
    80003d14:	5e050513          	addi	a0,a0,1504 # 800062f0 <CONSOLE_STATUS+0x2e0>
    80003d18:	00001097          	auipc	ra,0x1
    80003d1c:	804080e7          	jalr	-2044(ra) # 8000451c <panic>
    80003d20:	0ff7f713          	andi	a4,a5,255
    80003d24:	00900693          	li	a3,9
    80003d28:	04d70063          	beq	a4,a3,80003d68 <kerneltrap+0xac>
    80003d2c:	fff00713          	li	a4,-1
    80003d30:	03f71713          	slli	a4,a4,0x3f
    80003d34:	00170713          	addi	a4,a4,1
    80003d38:	fae798e3          	bne	a5,a4,80003ce8 <kerneltrap+0x2c>
    80003d3c:	00000097          	auipc	ra,0x0
    80003d40:	e00080e7          	jalr	-512(ra) # 80003b3c <cpuid>
    80003d44:	06050663          	beqz	a0,80003db0 <kerneltrap+0xf4>
    80003d48:	144027f3          	csrr	a5,sip
    80003d4c:	ffd7f793          	andi	a5,a5,-3
    80003d50:	14479073          	csrw	sip,a5
    80003d54:	01813083          	ld	ra,24(sp)
    80003d58:	01013403          	ld	s0,16(sp)
    80003d5c:	00813483          	ld	s1,8(sp)
    80003d60:	02010113          	addi	sp,sp,32
    80003d64:	00008067          	ret
    80003d68:	00000097          	auipc	ra,0x0
    80003d6c:	3cc080e7          	jalr	972(ra) # 80004134 <plic_claim>
    80003d70:	00a00793          	li	a5,10
    80003d74:	00050493          	mv	s1,a0
    80003d78:	06f50863          	beq	a0,a5,80003de8 <kerneltrap+0x12c>
    80003d7c:	fc050ce3          	beqz	a0,80003d54 <kerneltrap+0x98>
    80003d80:	00050593          	mv	a1,a0
    80003d84:	00002517          	auipc	a0,0x2
    80003d88:	52450513          	addi	a0,a0,1316 # 800062a8 <CONSOLE_STATUS+0x298>
    80003d8c:	00000097          	auipc	ra,0x0
    80003d90:	7ec080e7          	jalr	2028(ra) # 80004578 <__printf>
    80003d94:	01013403          	ld	s0,16(sp)
    80003d98:	01813083          	ld	ra,24(sp)
    80003d9c:	00048513          	mv	a0,s1
    80003da0:	00813483          	ld	s1,8(sp)
    80003da4:	02010113          	addi	sp,sp,32
    80003da8:	00000317          	auipc	t1,0x0
    80003dac:	3c430067          	jr	964(t1) # 8000416c <plic_complete>
    80003db0:	00004517          	auipc	a0,0x4
    80003db4:	60050513          	addi	a0,a0,1536 # 800083b0 <tickslock>
    80003db8:	00001097          	auipc	ra,0x1
    80003dbc:	494080e7          	jalr	1172(ra) # 8000524c <acquire>
    80003dc0:	00003717          	auipc	a4,0x3
    80003dc4:	4c470713          	addi	a4,a4,1220 # 80007284 <ticks>
    80003dc8:	00072783          	lw	a5,0(a4)
    80003dcc:	00004517          	auipc	a0,0x4
    80003dd0:	5e450513          	addi	a0,a0,1508 # 800083b0 <tickslock>
    80003dd4:	0017879b          	addiw	a5,a5,1
    80003dd8:	00f72023          	sw	a5,0(a4)
    80003ddc:	00001097          	auipc	ra,0x1
    80003de0:	53c080e7          	jalr	1340(ra) # 80005318 <release>
    80003de4:	f65ff06f          	j	80003d48 <kerneltrap+0x8c>
    80003de8:	00001097          	auipc	ra,0x1
    80003dec:	098080e7          	jalr	152(ra) # 80004e80 <uartintr>
    80003df0:	fa5ff06f          	j	80003d94 <kerneltrap+0xd8>
    80003df4:	00002517          	auipc	a0,0x2
    80003df8:	49450513          	addi	a0,a0,1172 # 80006288 <CONSOLE_STATUS+0x278>
    80003dfc:	00000097          	auipc	ra,0x0
    80003e00:	720080e7          	jalr	1824(ra) # 8000451c <panic>

0000000080003e04 <clockintr>:
    80003e04:	fe010113          	addi	sp,sp,-32
    80003e08:	00813823          	sd	s0,16(sp)
    80003e0c:	00913423          	sd	s1,8(sp)
    80003e10:	00113c23          	sd	ra,24(sp)
    80003e14:	02010413          	addi	s0,sp,32
    80003e18:	00004497          	auipc	s1,0x4
    80003e1c:	59848493          	addi	s1,s1,1432 # 800083b0 <tickslock>
    80003e20:	00048513          	mv	a0,s1
    80003e24:	00001097          	auipc	ra,0x1
    80003e28:	428080e7          	jalr	1064(ra) # 8000524c <acquire>
    80003e2c:	00003717          	auipc	a4,0x3
    80003e30:	45870713          	addi	a4,a4,1112 # 80007284 <ticks>
    80003e34:	00072783          	lw	a5,0(a4)
    80003e38:	01013403          	ld	s0,16(sp)
    80003e3c:	01813083          	ld	ra,24(sp)
    80003e40:	00048513          	mv	a0,s1
    80003e44:	0017879b          	addiw	a5,a5,1
    80003e48:	00813483          	ld	s1,8(sp)
    80003e4c:	00f72023          	sw	a5,0(a4)
    80003e50:	02010113          	addi	sp,sp,32
    80003e54:	00001317          	auipc	t1,0x1
    80003e58:	4c430067          	jr	1220(t1) # 80005318 <release>

0000000080003e5c <devintr>:
    80003e5c:	142027f3          	csrr	a5,scause
    80003e60:	00000513          	li	a0,0
    80003e64:	0007c463          	bltz	a5,80003e6c <devintr+0x10>
    80003e68:	00008067          	ret
    80003e6c:	fe010113          	addi	sp,sp,-32
    80003e70:	00813823          	sd	s0,16(sp)
    80003e74:	00113c23          	sd	ra,24(sp)
    80003e78:	00913423          	sd	s1,8(sp)
    80003e7c:	02010413          	addi	s0,sp,32
    80003e80:	0ff7f713          	andi	a4,a5,255
    80003e84:	00900693          	li	a3,9
    80003e88:	04d70c63          	beq	a4,a3,80003ee0 <devintr+0x84>
    80003e8c:	fff00713          	li	a4,-1
    80003e90:	03f71713          	slli	a4,a4,0x3f
    80003e94:	00170713          	addi	a4,a4,1
    80003e98:	00e78c63          	beq	a5,a4,80003eb0 <devintr+0x54>
    80003e9c:	01813083          	ld	ra,24(sp)
    80003ea0:	01013403          	ld	s0,16(sp)
    80003ea4:	00813483          	ld	s1,8(sp)
    80003ea8:	02010113          	addi	sp,sp,32
    80003eac:	00008067          	ret
    80003eb0:	00000097          	auipc	ra,0x0
    80003eb4:	c8c080e7          	jalr	-884(ra) # 80003b3c <cpuid>
    80003eb8:	06050663          	beqz	a0,80003f24 <devintr+0xc8>
    80003ebc:	144027f3          	csrr	a5,sip
    80003ec0:	ffd7f793          	andi	a5,a5,-3
    80003ec4:	14479073          	csrw	sip,a5
    80003ec8:	01813083          	ld	ra,24(sp)
    80003ecc:	01013403          	ld	s0,16(sp)
    80003ed0:	00813483          	ld	s1,8(sp)
    80003ed4:	00200513          	li	a0,2
    80003ed8:	02010113          	addi	sp,sp,32
    80003edc:	00008067          	ret
    80003ee0:	00000097          	auipc	ra,0x0
    80003ee4:	254080e7          	jalr	596(ra) # 80004134 <plic_claim>
    80003ee8:	00a00793          	li	a5,10
    80003eec:	00050493          	mv	s1,a0
    80003ef0:	06f50663          	beq	a0,a5,80003f5c <devintr+0x100>
    80003ef4:	00100513          	li	a0,1
    80003ef8:	fa0482e3          	beqz	s1,80003e9c <devintr+0x40>
    80003efc:	00048593          	mv	a1,s1
    80003f00:	00002517          	auipc	a0,0x2
    80003f04:	3a850513          	addi	a0,a0,936 # 800062a8 <CONSOLE_STATUS+0x298>
    80003f08:	00000097          	auipc	ra,0x0
    80003f0c:	670080e7          	jalr	1648(ra) # 80004578 <__printf>
    80003f10:	00048513          	mv	a0,s1
    80003f14:	00000097          	auipc	ra,0x0
    80003f18:	258080e7          	jalr	600(ra) # 8000416c <plic_complete>
    80003f1c:	00100513          	li	a0,1
    80003f20:	f7dff06f          	j	80003e9c <devintr+0x40>
    80003f24:	00004517          	auipc	a0,0x4
    80003f28:	48c50513          	addi	a0,a0,1164 # 800083b0 <tickslock>
    80003f2c:	00001097          	auipc	ra,0x1
    80003f30:	320080e7          	jalr	800(ra) # 8000524c <acquire>
    80003f34:	00003717          	auipc	a4,0x3
    80003f38:	35070713          	addi	a4,a4,848 # 80007284 <ticks>
    80003f3c:	00072783          	lw	a5,0(a4)
    80003f40:	00004517          	auipc	a0,0x4
    80003f44:	47050513          	addi	a0,a0,1136 # 800083b0 <tickslock>
    80003f48:	0017879b          	addiw	a5,a5,1
    80003f4c:	00f72023          	sw	a5,0(a4)
    80003f50:	00001097          	auipc	ra,0x1
    80003f54:	3c8080e7          	jalr	968(ra) # 80005318 <release>
    80003f58:	f65ff06f          	j	80003ebc <devintr+0x60>
    80003f5c:	00001097          	auipc	ra,0x1
    80003f60:	f24080e7          	jalr	-220(ra) # 80004e80 <uartintr>
    80003f64:	fadff06f          	j	80003f10 <devintr+0xb4>
	...

0000000080003f70 <kernelvec>:
    80003f70:	f0010113          	addi	sp,sp,-256
    80003f74:	00113023          	sd	ra,0(sp)
    80003f78:	00213423          	sd	sp,8(sp)
    80003f7c:	00313823          	sd	gp,16(sp)
    80003f80:	00413c23          	sd	tp,24(sp)
    80003f84:	02513023          	sd	t0,32(sp)
    80003f88:	02613423          	sd	t1,40(sp)
    80003f8c:	02713823          	sd	t2,48(sp)
    80003f90:	02813c23          	sd	s0,56(sp)
    80003f94:	04913023          	sd	s1,64(sp)
    80003f98:	04a13423          	sd	a0,72(sp)
    80003f9c:	04b13823          	sd	a1,80(sp)
    80003fa0:	04c13c23          	sd	a2,88(sp)
    80003fa4:	06d13023          	sd	a3,96(sp)
    80003fa8:	06e13423          	sd	a4,104(sp)
    80003fac:	06f13823          	sd	a5,112(sp)
    80003fb0:	07013c23          	sd	a6,120(sp)
    80003fb4:	09113023          	sd	a7,128(sp)
    80003fb8:	09213423          	sd	s2,136(sp)
    80003fbc:	09313823          	sd	s3,144(sp)
    80003fc0:	09413c23          	sd	s4,152(sp)
    80003fc4:	0b513023          	sd	s5,160(sp)
    80003fc8:	0b613423          	sd	s6,168(sp)
    80003fcc:	0b713823          	sd	s7,176(sp)
    80003fd0:	0b813c23          	sd	s8,184(sp)
    80003fd4:	0d913023          	sd	s9,192(sp)
    80003fd8:	0da13423          	sd	s10,200(sp)
    80003fdc:	0db13823          	sd	s11,208(sp)
    80003fe0:	0dc13c23          	sd	t3,216(sp)
    80003fe4:	0fd13023          	sd	t4,224(sp)
    80003fe8:	0fe13423          	sd	t5,232(sp)
    80003fec:	0ff13823          	sd	t6,240(sp)
    80003ff0:	ccdff0ef          	jal	ra,80003cbc <kerneltrap>
    80003ff4:	00013083          	ld	ra,0(sp)
    80003ff8:	00813103          	ld	sp,8(sp)
    80003ffc:	01013183          	ld	gp,16(sp)
    80004000:	02013283          	ld	t0,32(sp)
    80004004:	02813303          	ld	t1,40(sp)
    80004008:	03013383          	ld	t2,48(sp)
    8000400c:	03813403          	ld	s0,56(sp)
    80004010:	04013483          	ld	s1,64(sp)
    80004014:	04813503          	ld	a0,72(sp)
    80004018:	05013583          	ld	a1,80(sp)
    8000401c:	05813603          	ld	a2,88(sp)
    80004020:	06013683          	ld	a3,96(sp)
    80004024:	06813703          	ld	a4,104(sp)
    80004028:	07013783          	ld	a5,112(sp)
    8000402c:	07813803          	ld	a6,120(sp)
    80004030:	08013883          	ld	a7,128(sp)
    80004034:	08813903          	ld	s2,136(sp)
    80004038:	09013983          	ld	s3,144(sp)
    8000403c:	09813a03          	ld	s4,152(sp)
    80004040:	0a013a83          	ld	s5,160(sp)
    80004044:	0a813b03          	ld	s6,168(sp)
    80004048:	0b013b83          	ld	s7,176(sp)
    8000404c:	0b813c03          	ld	s8,184(sp)
    80004050:	0c013c83          	ld	s9,192(sp)
    80004054:	0c813d03          	ld	s10,200(sp)
    80004058:	0d013d83          	ld	s11,208(sp)
    8000405c:	0d813e03          	ld	t3,216(sp)
    80004060:	0e013e83          	ld	t4,224(sp)
    80004064:	0e813f03          	ld	t5,232(sp)
    80004068:	0f013f83          	ld	t6,240(sp)
    8000406c:	10010113          	addi	sp,sp,256
    80004070:	10200073          	sret
    80004074:	00000013          	nop
    80004078:	00000013          	nop
    8000407c:	00000013          	nop

0000000080004080 <timervec>:
    80004080:	34051573          	csrrw	a0,mscratch,a0
    80004084:	00b53023          	sd	a1,0(a0)
    80004088:	00c53423          	sd	a2,8(a0)
    8000408c:	00d53823          	sd	a3,16(a0)
    80004090:	01853583          	ld	a1,24(a0)
    80004094:	02053603          	ld	a2,32(a0)
    80004098:	0005b683          	ld	a3,0(a1)
    8000409c:	00c686b3          	add	a3,a3,a2
    800040a0:	00d5b023          	sd	a3,0(a1)
    800040a4:	00200593          	li	a1,2
    800040a8:	14459073          	csrw	sip,a1
    800040ac:	01053683          	ld	a3,16(a0)
    800040b0:	00853603          	ld	a2,8(a0)
    800040b4:	00053583          	ld	a1,0(a0)
    800040b8:	34051573          	csrrw	a0,mscratch,a0
    800040bc:	30200073          	mret

00000000800040c0 <plicinit>:
    800040c0:	ff010113          	addi	sp,sp,-16
    800040c4:	00813423          	sd	s0,8(sp)
    800040c8:	01010413          	addi	s0,sp,16
    800040cc:	00813403          	ld	s0,8(sp)
    800040d0:	0c0007b7          	lui	a5,0xc000
    800040d4:	00100713          	li	a4,1
    800040d8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    800040dc:	00e7a223          	sw	a4,4(a5)
    800040e0:	01010113          	addi	sp,sp,16
    800040e4:	00008067          	ret

00000000800040e8 <plicinithart>:
    800040e8:	ff010113          	addi	sp,sp,-16
    800040ec:	00813023          	sd	s0,0(sp)
    800040f0:	00113423          	sd	ra,8(sp)
    800040f4:	01010413          	addi	s0,sp,16
    800040f8:	00000097          	auipc	ra,0x0
    800040fc:	a44080e7          	jalr	-1468(ra) # 80003b3c <cpuid>
    80004100:	0085171b          	slliw	a4,a0,0x8
    80004104:	0c0027b7          	lui	a5,0xc002
    80004108:	00e787b3          	add	a5,a5,a4
    8000410c:	40200713          	li	a4,1026
    80004110:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80004114:	00813083          	ld	ra,8(sp)
    80004118:	00013403          	ld	s0,0(sp)
    8000411c:	00d5151b          	slliw	a0,a0,0xd
    80004120:	0c2017b7          	lui	a5,0xc201
    80004124:	00a78533          	add	a0,a5,a0
    80004128:	00052023          	sw	zero,0(a0)
    8000412c:	01010113          	addi	sp,sp,16
    80004130:	00008067          	ret

0000000080004134 <plic_claim>:
    80004134:	ff010113          	addi	sp,sp,-16
    80004138:	00813023          	sd	s0,0(sp)
    8000413c:	00113423          	sd	ra,8(sp)
    80004140:	01010413          	addi	s0,sp,16
    80004144:	00000097          	auipc	ra,0x0
    80004148:	9f8080e7          	jalr	-1544(ra) # 80003b3c <cpuid>
    8000414c:	00813083          	ld	ra,8(sp)
    80004150:	00013403          	ld	s0,0(sp)
    80004154:	00d5151b          	slliw	a0,a0,0xd
    80004158:	0c2017b7          	lui	a5,0xc201
    8000415c:	00a78533          	add	a0,a5,a0
    80004160:	00452503          	lw	a0,4(a0)
    80004164:	01010113          	addi	sp,sp,16
    80004168:	00008067          	ret

000000008000416c <plic_complete>:
    8000416c:	fe010113          	addi	sp,sp,-32
    80004170:	00813823          	sd	s0,16(sp)
    80004174:	00913423          	sd	s1,8(sp)
    80004178:	00113c23          	sd	ra,24(sp)
    8000417c:	02010413          	addi	s0,sp,32
    80004180:	00050493          	mv	s1,a0
    80004184:	00000097          	auipc	ra,0x0
    80004188:	9b8080e7          	jalr	-1608(ra) # 80003b3c <cpuid>
    8000418c:	01813083          	ld	ra,24(sp)
    80004190:	01013403          	ld	s0,16(sp)
    80004194:	00d5179b          	slliw	a5,a0,0xd
    80004198:	0c201737          	lui	a4,0xc201
    8000419c:	00f707b3          	add	a5,a4,a5
    800041a0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    800041a4:	00813483          	ld	s1,8(sp)
    800041a8:	02010113          	addi	sp,sp,32
    800041ac:	00008067          	ret

00000000800041b0 <consolewrite>:
    800041b0:	fb010113          	addi	sp,sp,-80
    800041b4:	04813023          	sd	s0,64(sp)
    800041b8:	04113423          	sd	ra,72(sp)
    800041bc:	02913c23          	sd	s1,56(sp)
    800041c0:	03213823          	sd	s2,48(sp)
    800041c4:	03313423          	sd	s3,40(sp)
    800041c8:	03413023          	sd	s4,32(sp)
    800041cc:	01513c23          	sd	s5,24(sp)
    800041d0:	05010413          	addi	s0,sp,80
    800041d4:	06c05c63          	blez	a2,8000424c <consolewrite+0x9c>
    800041d8:	00060993          	mv	s3,a2
    800041dc:	00050a13          	mv	s4,a0
    800041e0:	00058493          	mv	s1,a1
    800041e4:	00000913          	li	s2,0
    800041e8:	fff00a93          	li	s5,-1
    800041ec:	01c0006f          	j	80004208 <consolewrite+0x58>
    800041f0:	fbf44503          	lbu	a0,-65(s0)
    800041f4:	0019091b          	addiw	s2,s2,1
    800041f8:	00148493          	addi	s1,s1,1
    800041fc:	00001097          	auipc	ra,0x1
    80004200:	a9c080e7          	jalr	-1380(ra) # 80004c98 <uartputc>
    80004204:	03298063          	beq	s3,s2,80004224 <consolewrite+0x74>
    80004208:	00048613          	mv	a2,s1
    8000420c:	00100693          	li	a3,1
    80004210:	000a0593          	mv	a1,s4
    80004214:	fbf40513          	addi	a0,s0,-65
    80004218:	00000097          	auipc	ra,0x0
    8000421c:	9dc080e7          	jalr	-1572(ra) # 80003bf4 <either_copyin>
    80004220:	fd5518e3          	bne	a0,s5,800041f0 <consolewrite+0x40>
    80004224:	04813083          	ld	ra,72(sp)
    80004228:	04013403          	ld	s0,64(sp)
    8000422c:	03813483          	ld	s1,56(sp)
    80004230:	02813983          	ld	s3,40(sp)
    80004234:	02013a03          	ld	s4,32(sp)
    80004238:	01813a83          	ld	s5,24(sp)
    8000423c:	00090513          	mv	a0,s2
    80004240:	03013903          	ld	s2,48(sp)
    80004244:	05010113          	addi	sp,sp,80
    80004248:	00008067          	ret
    8000424c:	00000913          	li	s2,0
    80004250:	fd5ff06f          	j	80004224 <consolewrite+0x74>

0000000080004254 <consoleread>:
    80004254:	f9010113          	addi	sp,sp,-112
    80004258:	06813023          	sd	s0,96(sp)
    8000425c:	04913c23          	sd	s1,88(sp)
    80004260:	05213823          	sd	s2,80(sp)
    80004264:	05313423          	sd	s3,72(sp)
    80004268:	05413023          	sd	s4,64(sp)
    8000426c:	03513c23          	sd	s5,56(sp)
    80004270:	03613823          	sd	s6,48(sp)
    80004274:	03713423          	sd	s7,40(sp)
    80004278:	03813023          	sd	s8,32(sp)
    8000427c:	06113423          	sd	ra,104(sp)
    80004280:	01913c23          	sd	s9,24(sp)
    80004284:	07010413          	addi	s0,sp,112
    80004288:	00060b93          	mv	s7,a2
    8000428c:	00050913          	mv	s2,a0
    80004290:	00058c13          	mv	s8,a1
    80004294:	00060b1b          	sext.w	s6,a2
    80004298:	00004497          	auipc	s1,0x4
    8000429c:	14048493          	addi	s1,s1,320 # 800083d8 <cons>
    800042a0:	00400993          	li	s3,4
    800042a4:	fff00a13          	li	s4,-1
    800042a8:	00a00a93          	li	s5,10
    800042ac:	05705e63          	blez	s7,80004308 <consoleread+0xb4>
    800042b0:	09c4a703          	lw	a4,156(s1)
    800042b4:	0984a783          	lw	a5,152(s1)
    800042b8:	0007071b          	sext.w	a4,a4
    800042bc:	08e78463          	beq	a5,a4,80004344 <consoleread+0xf0>
    800042c0:	07f7f713          	andi	a4,a5,127
    800042c4:	00e48733          	add	a4,s1,a4
    800042c8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    800042cc:	0017869b          	addiw	a3,a5,1
    800042d0:	08d4ac23          	sw	a3,152(s1)
    800042d4:	00070c9b          	sext.w	s9,a4
    800042d8:	0b370663          	beq	a4,s3,80004384 <consoleread+0x130>
    800042dc:	00100693          	li	a3,1
    800042e0:	f9f40613          	addi	a2,s0,-97
    800042e4:	000c0593          	mv	a1,s8
    800042e8:	00090513          	mv	a0,s2
    800042ec:	f8e40fa3          	sb	a4,-97(s0)
    800042f0:	00000097          	auipc	ra,0x0
    800042f4:	8b8080e7          	jalr	-1864(ra) # 80003ba8 <either_copyout>
    800042f8:	01450863          	beq	a0,s4,80004308 <consoleread+0xb4>
    800042fc:	001c0c13          	addi	s8,s8,1
    80004300:	fffb8b9b          	addiw	s7,s7,-1
    80004304:	fb5c94e3          	bne	s9,s5,800042ac <consoleread+0x58>
    80004308:	000b851b          	sext.w	a0,s7
    8000430c:	06813083          	ld	ra,104(sp)
    80004310:	06013403          	ld	s0,96(sp)
    80004314:	05813483          	ld	s1,88(sp)
    80004318:	05013903          	ld	s2,80(sp)
    8000431c:	04813983          	ld	s3,72(sp)
    80004320:	04013a03          	ld	s4,64(sp)
    80004324:	03813a83          	ld	s5,56(sp)
    80004328:	02813b83          	ld	s7,40(sp)
    8000432c:	02013c03          	ld	s8,32(sp)
    80004330:	01813c83          	ld	s9,24(sp)
    80004334:	40ab053b          	subw	a0,s6,a0
    80004338:	03013b03          	ld	s6,48(sp)
    8000433c:	07010113          	addi	sp,sp,112
    80004340:	00008067          	ret
    80004344:	00001097          	auipc	ra,0x1
    80004348:	1d8080e7          	jalr	472(ra) # 8000551c <push_on>
    8000434c:	0984a703          	lw	a4,152(s1)
    80004350:	09c4a783          	lw	a5,156(s1)
    80004354:	0007879b          	sext.w	a5,a5
    80004358:	fef70ce3          	beq	a4,a5,80004350 <consoleread+0xfc>
    8000435c:	00001097          	auipc	ra,0x1
    80004360:	234080e7          	jalr	564(ra) # 80005590 <pop_on>
    80004364:	0984a783          	lw	a5,152(s1)
    80004368:	07f7f713          	andi	a4,a5,127
    8000436c:	00e48733          	add	a4,s1,a4
    80004370:	01874703          	lbu	a4,24(a4)
    80004374:	0017869b          	addiw	a3,a5,1
    80004378:	08d4ac23          	sw	a3,152(s1)
    8000437c:	00070c9b          	sext.w	s9,a4
    80004380:	f5371ee3          	bne	a4,s3,800042dc <consoleread+0x88>
    80004384:	000b851b          	sext.w	a0,s7
    80004388:	f96bf2e3          	bgeu	s7,s6,8000430c <consoleread+0xb8>
    8000438c:	08f4ac23          	sw	a5,152(s1)
    80004390:	f7dff06f          	j	8000430c <consoleread+0xb8>

0000000080004394 <consputc>:
    80004394:	10000793          	li	a5,256
    80004398:	00f50663          	beq	a0,a5,800043a4 <consputc+0x10>
    8000439c:	00001317          	auipc	t1,0x1
    800043a0:	9f430067          	jr	-1548(t1) # 80004d90 <uartputc_sync>
    800043a4:	ff010113          	addi	sp,sp,-16
    800043a8:	00113423          	sd	ra,8(sp)
    800043ac:	00813023          	sd	s0,0(sp)
    800043b0:	01010413          	addi	s0,sp,16
    800043b4:	00800513          	li	a0,8
    800043b8:	00001097          	auipc	ra,0x1
    800043bc:	9d8080e7          	jalr	-1576(ra) # 80004d90 <uartputc_sync>
    800043c0:	02000513          	li	a0,32
    800043c4:	00001097          	auipc	ra,0x1
    800043c8:	9cc080e7          	jalr	-1588(ra) # 80004d90 <uartputc_sync>
    800043cc:	00013403          	ld	s0,0(sp)
    800043d0:	00813083          	ld	ra,8(sp)
    800043d4:	00800513          	li	a0,8
    800043d8:	01010113          	addi	sp,sp,16
    800043dc:	00001317          	auipc	t1,0x1
    800043e0:	9b430067          	jr	-1612(t1) # 80004d90 <uartputc_sync>

00000000800043e4 <consoleintr>:
    800043e4:	fe010113          	addi	sp,sp,-32
    800043e8:	00813823          	sd	s0,16(sp)
    800043ec:	00913423          	sd	s1,8(sp)
    800043f0:	01213023          	sd	s2,0(sp)
    800043f4:	00113c23          	sd	ra,24(sp)
    800043f8:	02010413          	addi	s0,sp,32
    800043fc:	00004917          	auipc	s2,0x4
    80004400:	fdc90913          	addi	s2,s2,-36 # 800083d8 <cons>
    80004404:	00050493          	mv	s1,a0
    80004408:	00090513          	mv	a0,s2
    8000440c:	00001097          	auipc	ra,0x1
    80004410:	e40080e7          	jalr	-448(ra) # 8000524c <acquire>
    80004414:	02048c63          	beqz	s1,8000444c <consoleintr+0x68>
    80004418:	0a092783          	lw	a5,160(s2)
    8000441c:	09892703          	lw	a4,152(s2)
    80004420:	07f00693          	li	a3,127
    80004424:	40e7873b          	subw	a4,a5,a4
    80004428:	02e6e263          	bltu	a3,a4,8000444c <consoleintr+0x68>
    8000442c:	00d00713          	li	a4,13
    80004430:	04e48063          	beq	s1,a4,80004470 <consoleintr+0x8c>
    80004434:	07f7f713          	andi	a4,a5,127
    80004438:	00e90733          	add	a4,s2,a4
    8000443c:	0017879b          	addiw	a5,a5,1
    80004440:	0af92023          	sw	a5,160(s2)
    80004444:	00970c23          	sb	s1,24(a4)
    80004448:	08f92e23          	sw	a5,156(s2)
    8000444c:	01013403          	ld	s0,16(sp)
    80004450:	01813083          	ld	ra,24(sp)
    80004454:	00813483          	ld	s1,8(sp)
    80004458:	00013903          	ld	s2,0(sp)
    8000445c:	00004517          	auipc	a0,0x4
    80004460:	f7c50513          	addi	a0,a0,-132 # 800083d8 <cons>
    80004464:	02010113          	addi	sp,sp,32
    80004468:	00001317          	auipc	t1,0x1
    8000446c:	eb030067          	jr	-336(t1) # 80005318 <release>
    80004470:	00a00493          	li	s1,10
    80004474:	fc1ff06f          	j	80004434 <consoleintr+0x50>

0000000080004478 <consoleinit>:
    80004478:	fe010113          	addi	sp,sp,-32
    8000447c:	00113c23          	sd	ra,24(sp)
    80004480:	00813823          	sd	s0,16(sp)
    80004484:	00913423          	sd	s1,8(sp)
    80004488:	02010413          	addi	s0,sp,32
    8000448c:	00004497          	auipc	s1,0x4
    80004490:	f4c48493          	addi	s1,s1,-180 # 800083d8 <cons>
    80004494:	00048513          	mv	a0,s1
    80004498:	00002597          	auipc	a1,0x2
    8000449c:	e6858593          	addi	a1,a1,-408 # 80006300 <CONSOLE_STATUS+0x2f0>
    800044a0:	00001097          	auipc	ra,0x1
    800044a4:	d88080e7          	jalr	-632(ra) # 80005228 <initlock>
    800044a8:	00000097          	auipc	ra,0x0
    800044ac:	7ac080e7          	jalr	1964(ra) # 80004c54 <uartinit>
    800044b0:	01813083          	ld	ra,24(sp)
    800044b4:	01013403          	ld	s0,16(sp)
    800044b8:	00000797          	auipc	a5,0x0
    800044bc:	d9c78793          	addi	a5,a5,-612 # 80004254 <consoleread>
    800044c0:	0af4bc23          	sd	a5,184(s1)
    800044c4:	00000797          	auipc	a5,0x0
    800044c8:	cec78793          	addi	a5,a5,-788 # 800041b0 <consolewrite>
    800044cc:	0cf4b023          	sd	a5,192(s1)
    800044d0:	00813483          	ld	s1,8(sp)
    800044d4:	02010113          	addi	sp,sp,32
    800044d8:	00008067          	ret

00000000800044dc <console_read>:
    800044dc:	ff010113          	addi	sp,sp,-16
    800044e0:	00813423          	sd	s0,8(sp)
    800044e4:	01010413          	addi	s0,sp,16
    800044e8:	00813403          	ld	s0,8(sp)
    800044ec:	00004317          	auipc	t1,0x4
    800044f0:	fa433303          	ld	t1,-92(t1) # 80008490 <devsw+0x10>
    800044f4:	01010113          	addi	sp,sp,16
    800044f8:	00030067          	jr	t1

00000000800044fc <console_write>:
    800044fc:	ff010113          	addi	sp,sp,-16
    80004500:	00813423          	sd	s0,8(sp)
    80004504:	01010413          	addi	s0,sp,16
    80004508:	00813403          	ld	s0,8(sp)
    8000450c:	00004317          	auipc	t1,0x4
    80004510:	f8c33303          	ld	t1,-116(t1) # 80008498 <devsw+0x18>
    80004514:	01010113          	addi	sp,sp,16
    80004518:	00030067          	jr	t1

000000008000451c <panic>:
    8000451c:	fe010113          	addi	sp,sp,-32
    80004520:	00113c23          	sd	ra,24(sp)
    80004524:	00813823          	sd	s0,16(sp)
    80004528:	00913423          	sd	s1,8(sp)
    8000452c:	02010413          	addi	s0,sp,32
    80004530:	00050493          	mv	s1,a0
    80004534:	00002517          	auipc	a0,0x2
    80004538:	dd450513          	addi	a0,a0,-556 # 80006308 <CONSOLE_STATUS+0x2f8>
    8000453c:	00004797          	auipc	a5,0x4
    80004540:	fe07ae23          	sw	zero,-4(a5) # 80008538 <pr+0x18>
    80004544:	00000097          	auipc	ra,0x0
    80004548:	034080e7          	jalr	52(ra) # 80004578 <__printf>
    8000454c:	00048513          	mv	a0,s1
    80004550:	00000097          	auipc	ra,0x0
    80004554:	028080e7          	jalr	40(ra) # 80004578 <__printf>
    80004558:	00002517          	auipc	a0,0x2
    8000455c:	d9050513          	addi	a0,a0,-624 # 800062e8 <CONSOLE_STATUS+0x2d8>
    80004560:	00000097          	auipc	ra,0x0
    80004564:	018080e7          	jalr	24(ra) # 80004578 <__printf>
    80004568:	00100793          	li	a5,1
    8000456c:	00003717          	auipc	a4,0x3
    80004570:	d0f72e23          	sw	a5,-740(a4) # 80007288 <panicked>
    80004574:	0000006f          	j	80004574 <panic+0x58>

0000000080004578 <__printf>:
    80004578:	f3010113          	addi	sp,sp,-208
    8000457c:	08813023          	sd	s0,128(sp)
    80004580:	07313423          	sd	s3,104(sp)
    80004584:	09010413          	addi	s0,sp,144
    80004588:	05813023          	sd	s8,64(sp)
    8000458c:	08113423          	sd	ra,136(sp)
    80004590:	06913c23          	sd	s1,120(sp)
    80004594:	07213823          	sd	s2,112(sp)
    80004598:	07413023          	sd	s4,96(sp)
    8000459c:	05513c23          	sd	s5,88(sp)
    800045a0:	05613823          	sd	s6,80(sp)
    800045a4:	05713423          	sd	s7,72(sp)
    800045a8:	03913c23          	sd	s9,56(sp)
    800045ac:	03a13823          	sd	s10,48(sp)
    800045b0:	03b13423          	sd	s11,40(sp)
    800045b4:	00004317          	auipc	t1,0x4
    800045b8:	f6c30313          	addi	t1,t1,-148 # 80008520 <pr>
    800045bc:	01832c03          	lw	s8,24(t1)
    800045c0:	00b43423          	sd	a1,8(s0)
    800045c4:	00c43823          	sd	a2,16(s0)
    800045c8:	00d43c23          	sd	a3,24(s0)
    800045cc:	02e43023          	sd	a4,32(s0)
    800045d0:	02f43423          	sd	a5,40(s0)
    800045d4:	03043823          	sd	a6,48(s0)
    800045d8:	03143c23          	sd	a7,56(s0)
    800045dc:	00050993          	mv	s3,a0
    800045e0:	4a0c1663          	bnez	s8,80004a8c <__printf+0x514>
    800045e4:	60098c63          	beqz	s3,80004bfc <__printf+0x684>
    800045e8:	0009c503          	lbu	a0,0(s3)
    800045ec:	00840793          	addi	a5,s0,8
    800045f0:	f6f43c23          	sd	a5,-136(s0)
    800045f4:	00000493          	li	s1,0
    800045f8:	22050063          	beqz	a0,80004818 <__printf+0x2a0>
    800045fc:	00002a37          	lui	s4,0x2
    80004600:	00018ab7          	lui	s5,0x18
    80004604:	000f4b37          	lui	s6,0xf4
    80004608:	00989bb7          	lui	s7,0x989
    8000460c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80004610:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80004614:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80004618:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000461c:	00148c9b          	addiw	s9,s1,1
    80004620:	02500793          	li	a5,37
    80004624:	01998933          	add	s2,s3,s9
    80004628:	38f51263          	bne	a0,a5,800049ac <__printf+0x434>
    8000462c:	00094783          	lbu	a5,0(s2)
    80004630:	00078c9b          	sext.w	s9,a5
    80004634:	1e078263          	beqz	a5,80004818 <__printf+0x2a0>
    80004638:	0024849b          	addiw	s1,s1,2
    8000463c:	07000713          	li	a4,112
    80004640:	00998933          	add	s2,s3,s1
    80004644:	38e78a63          	beq	a5,a4,800049d8 <__printf+0x460>
    80004648:	20f76863          	bltu	a4,a5,80004858 <__printf+0x2e0>
    8000464c:	42a78863          	beq	a5,a0,80004a7c <__printf+0x504>
    80004650:	06400713          	li	a4,100
    80004654:	40e79663          	bne	a5,a4,80004a60 <__printf+0x4e8>
    80004658:	f7843783          	ld	a5,-136(s0)
    8000465c:	0007a603          	lw	a2,0(a5)
    80004660:	00878793          	addi	a5,a5,8
    80004664:	f6f43c23          	sd	a5,-136(s0)
    80004668:	42064a63          	bltz	a2,80004a9c <__printf+0x524>
    8000466c:	00a00713          	li	a4,10
    80004670:	02e677bb          	remuw	a5,a2,a4
    80004674:	00002d97          	auipc	s11,0x2
    80004678:	cbcd8d93          	addi	s11,s11,-836 # 80006330 <digits>
    8000467c:	00900593          	li	a1,9
    80004680:	0006051b          	sext.w	a0,a2
    80004684:	00000c93          	li	s9,0
    80004688:	02079793          	slli	a5,a5,0x20
    8000468c:	0207d793          	srli	a5,a5,0x20
    80004690:	00fd87b3          	add	a5,s11,a5
    80004694:	0007c783          	lbu	a5,0(a5)
    80004698:	02e656bb          	divuw	a3,a2,a4
    8000469c:	f8f40023          	sb	a5,-128(s0)
    800046a0:	14c5d863          	bge	a1,a2,800047f0 <__printf+0x278>
    800046a4:	06300593          	li	a1,99
    800046a8:	00100c93          	li	s9,1
    800046ac:	02e6f7bb          	remuw	a5,a3,a4
    800046b0:	02079793          	slli	a5,a5,0x20
    800046b4:	0207d793          	srli	a5,a5,0x20
    800046b8:	00fd87b3          	add	a5,s11,a5
    800046bc:	0007c783          	lbu	a5,0(a5)
    800046c0:	02e6d73b          	divuw	a4,a3,a4
    800046c4:	f8f400a3          	sb	a5,-127(s0)
    800046c8:	12a5f463          	bgeu	a1,a0,800047f0 <__printf+0x278>
    800046cc:	00a00693          	li	a3,10
    800046d0:	00900593          	li	a1,9
    800046d4:	02d777bb          	remuw	a5,a4,a3
    800046d8:	02079793          	slli	a5,a5,0x20
    800046dc:	0207d793          	srli	a5,a5,0x20
    800046e0:	00fd87b3          	add	a5,s11,a5
    800046e4:	0007c503          	lbu	a0,0(a5)
    800046e8:	02d757bb          	divuw	a5,a4,a3
    800046ec:	f8a40123          	sb	a0,-126(s0)
    800046f0:	48e5f263          	bgeu	a1,a4,80004b74 <__printf+0x5fc>
    800046f4:	06300513          	li	a0,99
    800046f8:	02d7f5bb          	remuw	a1,a5,a3
    800046fc:	02059593          	slli	a1,a1,0x20
    80004700:	0205d593          	srli	a1,a1,0x20
    80004704:	00bd85b3          	add	a1,s11,a1
    80004708:	0005c583          	lbu	a1,0(a1)
    8000470c:	02d7d7bb          	divuw	a5,a5,a3
    80004710:	f8b401a3          	sb	a1,-125(s0)
    80004714:	48e57263          	bgeu	a0,a4,80004b98 <__printf+0x620>
    80004718:	3e700513          	li	a0,999
    8000471c:	02d7f5bb          	remuw	a1,a5,a3
    80004720:	02059593          	slli	a1,a1,0x20
    80004724:	0205d593          	srli	a1,a1,0x20
    80004728:	00bd85b3          	add	a1,s11,a1
    8000472c:	0005c583          	lbu	a1,0(a1)
    80004730:	02d7d7bb          	divuw	a5,a5,a3
    80004734:	f8b40223          	sb	a1,-124(s0)
    80004738:	46e57663          	bgeu	a0,a4,80004ba4 <__printf+0x62c>
    8000473c:	02d7f5bb          	remuw	a1,a5,a3
    80004740:	02059593          	slli	a1,a1,0x20
    80004744:	0205d593          	srli	a1,a1,0x20
    80004748:	00bd85b3          	add	a1,s11,a1
    8000474c:	0005c583          	lbu	a1,0(a1)
    80004750:	02d7d7bb          	divuw	a5,a5,a3
    80004754:	f8b402a3          	sb	a1,-123(s0)
    80004758:	46ea7863          	bgeu	s4,a4,80004bc8 <__printf+0x650>
    8000475c:	02d7f5bb          	remuw	a1,a5,a3
    80004760:	02059593          	slli	a1,a1,0x20
    80004764:	0205d593          	srli	a1,a1,0x20
    80004768:	00bd85b3          	add	a1,s11,a1
    8000476c:	0005c583          	lbu	a1,0(a1)
    80004770:	02d7d7bb          	divuw	a5,a5,a3
    80004774:	f8b40323          	sb	a1,-122(s0)
    80004778:	3eeaf863          	bgeu	s5,a4,80004b68 <__printf+0x5f0>
    8000477c:	02d7f5bb          	remuw	a1,a5,a3
    80004780:	02059593          	slli	a1,a1,0x20
    80004784:	0205d593          	srli	a1,a1,0x20
    80004788:	00bd85b3          	add	a1,s11,a1
    8000478c:	0005c583          	lbu	a1,0(a1)
    80004790:	02d7d7bb          	divuw	a5,a5,a3
    80004794:	f8b403a3          	sb	a1,-121(s0)
    80004798:	42eb7e63          	bgeu	s6,a4,80004bd4 <__printf+0x65c>
    8000479c:	02d7f5bb          	remuw	a1,a5,a3
    800047a0:	02059593          	slli	a1,a1,0x20
    800047a4:	0205d593          	srli	a1,a1,0x20
    800047a8:	00bd85b3          	add	a1,s11,a1
    800047ac:	0005c583          	lbu	a1,0(a1)
    800047b0:	02d7d7bb          	divuw	a5,a5,a3
    800047b4:	f8b40423          	sb	a1,-120(s0)
    800047b8:	42ebfc63          	bgeu	s7,a4,80004bf0 <__printf+0x678>
    800047bc:	02079793          	slli	a5,a5,0x20
    800047c0:	0207d793          	srli	a5,a5,0x20
    800047c4:	00fd8db3          	add	s11,s11,a5
    800047c8:	000dc703          	lbu	a4,0(s11)
    800047cc:	00a00793          	li	a5,10
    800047d0:	00900c93          	li	s9,9
    800047d4:	f8e404a3          	sb	a4,-119(s0)
    800047d8:	00065c63          	bgez	a2,800047f0 <__printf+0x278>
    800047dc:	f9040713          	addi	a4,s0,-112
    800047e0:	00f70733          	add	a4,a4,a5
    800047e4:	02d00693          	li	a3,45
    800047e8:	fed70823          	sb	a3,-16(a4)
    800047ec:	00078c93          	mv	s9,a5
    800047f0:	f8040793          	addi	a5,s0,-128
    800047f4:	01978cb3          	add	s9,a5,s9
    800047f8:	f7f40d13          	addi	s10,s0,-129
    800047fc:	000cc503          	lbu	a0,0(s9)
    80004800:	fffc8c93          	addi	s9,s9,-1
    80004804:	00000097          	auipc	ra,0x0
    80004808:	b90080e7          	jalr	-1136(ra) # 80004394 <consputc>
    8000480c:	ffac98e3          	bne	s9,s10,800047fc <__printf+0x284>
    80004810:	00094503          	lbu	a0,0(s2)
    80004814:	e00514e3          	bnez	a0,8000461c <__printf+0xa4>
    80004818:	1a0c1663          	bnez	s8,800049c4 <__printf+0x44c>
    8000481c:	08813083          	ld	ra,136(sp)
    80004820:	08013403          	ld	s0,128(sp)
    80004824:	07813483          	ld	s1,120(sp)
    80004828:	07013903          	ld	s2,112(sp)
    8000482c:	06813983          	ld	s3,104(sp)
    80004830:	06013a03          	ld	s4,96(sp)
    80004834:	05813a83          	ld	s5,88(sp)
    80004838:	05013b03          	ld	s6,80(sp)
    8000483c:	04813b83          	ld	s7,72(sp)
    80004840:	04013c03          	ld	s8,64(sp)
    80004844:	03813c83          	ld	s9,56(sp)
    80004848:	03013d03          	ld	s10,48(sp)
    8000484c:	02813d83          	ld	s11,40(sp)
    80004850:	0d010113          	addi	sp,sp,208
    80004854:	00008067          	ret
    80004858:	07300713          	li	a4,115
    8000485c:	1ce78a63          	beq	a5,a4,80004a30 <__printf+0x4b8>
    80004860:	07800713          	li	a4,120
    80004864:	1ee79e63          	bne	a5,a4,80004a60 <__printf+0x4e8>
    80004868:	f7843783          	ld	a5,-136(s0)
    8000486c:	0007a703          	lw	a4,0(a5)
    80004870:	00878793          	addi	a5,a5,8
    80004874:	f6f43c23          	sd	a5,-136(s0)
    80004878:	28074263          	bltz	a4,80004afc <__printf+0x584>
    8000487c:	00002d97          	auipc	s11,0x2
    80004880:	ab4d8d93          	addi	s11,s11,-1356 # 80006330 <digits>
    80004884:	00f77793          	andi	a5,a4,15
    80004888:	00fd87b3          	add	a5,s11,a5
    8000488c:	0007c683          	lbu	a3,0(a5)
    80004890:	00f00613          	li	a2,15
    80004894:	0007079b          	sext.w	a5,a4
    80004898:	f8d40023          	sb	a3,-128(s0)
    8000489c:	0047559b          	srliw	a1,a4,0x4
    800048a0:	0047569b          	srliw	a3,a4,0x4
    800048a4:	00000c93          	li	s9,0
    800048a8:	0ee65063          	bge	a2,a4,80004988 <__printf+0x410>
    800048ac:	00f6f693          	andi	a3,a3,15
    800048b0:	00dd86b3          	add	a3,s11,a3
    800048b4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    800048b8:	0087d79b          	srliw	a5,a5,0x8
    800048bc:	00100c93          	li	s9,1
    800048c0:	f8d400a3          	sb	a3,-127(s0)
    800048c4:	0cb67263          	bgeu	a2,a1,80004988 <__printf+0x410>
    800048c8:	00f7f693          	andi	a3,a5,15
    800048cc:	00dd86b3          	add	a3,s11,a3
    800048d0:	0006c583          	lbu	a1,0(a3)
    800048d4:	00f00613          	li	a2,15
    800048d8:	0047d69b          	srliw	a3,a5,0x4
    800048dc:	f8b40123          	sb	a1,-126(s0)
    800048e0:	0047d593          	srli	a1,a5,0x4
    800048e4:	28f67e63          	bgeu	a2,a5,80004b80 <__printf+0x608>
    800048e8:	00f6f693          	andi	a3,a3,15
    800048ec:	00dd86b3          	add	a3,s11,a3
    800048f0:	0006c503          	lbu	a0,0(a3)
    800048f4:	0087d813          	srli	a6,a5,0x8
    800048f8:	0087d69b          	srliw	a3,a5,0x8
    800048fc:	f8a401a3          	sb	a0,-125(s0)
    80004900:	28b67663          	bgeu	a2,a1,80004b8c <__printf+0x614>
    80004904:	00f6f693          	andi	a3,a3,15
    80004908:	00dd86b3          	add	a3,s11,a3
    8000490c:	0006c583          	lbu	a1,0(a3)
    80004910:	00c7d513          	srli	a0,a5,0xc
    80004914:	00c7d69b          	srliw	a3,a5,0xc
    80004918:	f8b40223          	sb	a1,-124(s0)
    8000491c:	29067a63          	bgeu	a2,a6,80004bb0 <__printf+0x638>
    80004920:	00f6f693          	andi	a3,a3,15
    80004924:	00dd86b3          	add	a3,s11,a3
    80004928:	0006c583          	lbu	a1,0(a3)
    8000492c:	0107d813          	srli	a6,a5,0x10
    80004930:	0107d69b          	srliw	a3,a5,0x10
    80004934:	f8b402a3          	sb	a1,-123(s0)
    80004938:	28a67263          	bgeu	a2,a0,80004bbc <__printf+0x644>
    8000493c:	00f6f693          	andi	a3,a3,15
    80004940:	00dd86b3          	add	a3,s11,a3
    80004944:	0006c683          	lbu	a3,0(a3)
    80004948:	0147d79b          	srliw	a5,a5,0x14
    8000494c:	f8d40323          	sb	a3,-122(s0)
    80004950:	21067663          	bgeu	a2,a6,80004b5c <__printf+0x5e4>
    80004954:	02079793          	slli	a5,a5,0x20
    80004958:	0207d793          	srli	a5,a5,0x20
    8000495c:	00fd8db3          	add	s11,s11,a5
    80004960:	000dc683          	lbu	a3,0(s11)
    80004964:	00800793          	li	a5,8
    80004968:	00700c93          	li	s9,7
    8000496c:	f8d403a3          	sb	a3,-121(s0)
    80004970:	00075c63          	bgez	a4,80004988 <__printf+0x410>
    80004974:	f9040713          	addi	a4,s0,-112
    80004978:	00f70733          	add	a4,a4,a5
    8000497c:	02d00693          	li	a3,45
    80004980:	fed70823          	sb	a3,-16(a4)
    80004984:	00078c93          	mv	s9,a5
    80004988:	f8040793          	addi	a5,s0,-128
    8000498c:	01978cb3          	add	s9,a5,s9
    80004990:	f7f40d13          	addi	s10,s0,-129
    80004994:	000cc503          	lbu	a0,0(s9)
    80004998:	fffc8c93          	addi	s9,s9,-1
    8000499c:	00000097          	auipc	ra,0x0
    800049a0:	9f8080e7          	jalr	-1544(ra) # 80004394 <consputc>
    800049a4:	ff9d18e3          	bne	s10,s9,80004994 <__printf+0x41c>
    800049a8:	0100006f          	j	800049b8 <__printf+0x440>
    800049ac:	00000097          	auipc	ra,0x0
    800049b0:	9e8080e7          	jalr	-1560(ra) # 80004394 <consputc>
    800049b4:	000c8493          	mv	s1,s9
    800049b8:	00094503          	lbu	a0,0(s2)
    800049bc:	c60510e3          	bnez	a0,8000461c <__printf+0xa4>
    800049c0:	e40c0ee3          	beqz	s8,8000481c <__printf+0x2a4>
    800049c4:	00004517          	auipc	a0,0x4
    800049c8:	b5c50513          	addi	a0,a0,-1188 # 80008520 <pr>
    800049cc:	00001097          	auipc	ra,0x1
    800049d0:	94c080e7          	jalr	-1716(ra) # 80005318 <release>
    800049d4:	e49ff06f          	j	8000481c <__printf+0x2a4>
    800049d8:	f7843783          	ld	a5,-136(s0)
    800049dc:	03000513          	li	a0,48
    800049e0:	01000d13          	li	s10,16
    800049e4:	00878713          	addi	a4,a5,8
    800049e8:	0007bc83          	ld	s9,0(a5)
    800049ec:	f6e43c23          	sd	a4,-136(s0)
    800049f0:	00000097          	auipc	ra,0x0
    800049f4:	9a4080e7          	jalr	-1628(ra) # 80004394 <consputc>
    800049f8:	07800513          	li	a0,120
    800049fc:	00000097          	auipc	ra,0x0
    80004a00:	998080e7          	jalr	-1640(ra) # 80004394 <consputc>
    80004a04:	00002d97          	auipc	s11,0x2
    80004a08:	92cd8d93          	addi	s11,s11,-1748 # 80006330 <digits>
    80004a0c:	03ccd793          	srli	a5,s9,0x3c
    80004a10:	00fd87b3          	add	a5,s11,a5
    80004a14:	0007c503          	lbu	a0,0(a5)
    80004a18:	fffd0d1b          	addiw	s10,s10,-1
    80004a1c:	004c9c93          	slli	s9,s9,0x4
    80004a20:	00000097          	auipc	ra,0x0
    80004a24:	974080e7          	jalr	-1676(ra) # 80004394 <consputc>
    80004a28:	fe0d12e3          	bnez	s10,80004a0c <__printf+0x494>
    80004a2c:	f8dff06f          	j	800049b8 <__printf+0x440>
    80004a30:	f7843783          	ld	a5,-136(s0)
    80004a34:	0007bc83          	ld	s9,0(a5)
    80004a38:	00878793          	addi	a5,a5,8
    80004a3c:	f6f43c23          	sd	a5,-136(s0)
    80004a40:	000c9a63          	bnez	s9,80004a54 <__printf+0x4dc>
    80004a44:	1080006f          	j	80004b4c <__printf+0x5d4>
    80004a48:	001c8c93          	addi	s9,s9,1
    80004a4c:	00000097          	auipc	ra,0x0
    80004a50:	948080e7          	jalr	-1720(ra) # 80004394 <consputc>
    80004a54:	000cc503          	lbu	a0,0(s9)
    80004a58:	fe0518e3          	bnez	a0,80004a48 <__printf+0x4d0>
    80004a5c:	f5dff06f          	j	800049b8 <__printf+0x440>
    80004a60:	02500513          	li	a0,37
    80004a64:	00000097          	auipc	ra,0x0
    80004a68:	930080e7          	jalr	-1744(ra) # 80004394 <consputc>
    80004a6c:	000c8513          	mv	a0,s9
    80004a70:	00000097          	auipc	ra,0x0
    80004a74:	924080e7          	jalr	-1756(ra) # 80004394 <consputc>
    80004a78:	f41ff06f          	j	800049b8 <__printf+0x440>
    80004a7c:	02500513          	li	a0,37
    80004a80:	00000097          	auipc	ra,0x0
    80004a84:	914080e7          	jalr	-1772(ra) # 80004394 <consputc>
    80004a88:	f31ff06f          	j	800049b8 <__printf+0x440>
    80004a8c:	00030513          	mv	a0,t1
    80004a90:	00000097          	auipc	ra,0x0
    80004a94:	7bc080e7          	jalr	1980(ra) # 8000524c <acquire>
    80004a98:	b4dff06f          	j	800045e4 <__printf+0x6c>
    80004a9c:	40c0053b          	negw	a0,a2
    80004aa0:	00a00713          	li	a4,10
    80004aa4:	02e576bb          	remuw	a3,a0,a4
    80004aa8:	00002d97          	auipc	s11,0x2
    80004aac:	888d8d93          	addi	s11,s11,-1912 # 80006330 <digits>
    80004ab0:	ff700593          	li	a1,-9
    80004ab4:	02069693          	slli	a3,a3,0x20
    80004ab8:	0206d693          	srli	a3,a3,0x20
    80004abc:	00dd86b3          	add	a3,s11,a3
    80004ac0:	0006c683          	lbu	a3,0(a3)
    80004ac4:	02e557bb          	divuw	a5,a0,a4
    80004ac8:	f8d40023          	sb	a3,-128(s0)
    80004acc:	10b65e63          	bge	a2,a1,80004be8 <__printf+0x670>
    80004ad0:	06300593          	li	a1,99
    80004ad4:	02e7f6bb          	remuw	a3,a5,a4
    80004ad8:	02069693          	slli	a3,a3,0x20
    80004adc:	0206d693          	srli	a3,a3,0x20
    80004ae0:	00dd86b3          	add	a3,s11,a3
    80004ae4:	0006c683          	lbu	a3,0(a3)
    80004ae8:	02e7d73b          	divuw	a4,a5,a4
    80004aec:	00200793          	li	a5,2
    80004af0:	f8d400a3          	sb	a3,-127(s0)
    80004af4:	bca5ece3          	bltu	a1,a0,800046cc <__printf+0x154>
    80004af8:	ce5ff06f          	j	800047dc <__printf+0x264>
    80004afc:	40e007bb          	negw	a5,a4
    80004b00:	00002d97          	auipc	s11,0x2
    80004b04:	830d8d93          	addi	s11,s11,-2000 # 80006330 <digits>
    80004b08:	00f7f693          	andi	a3,a5,15
    80004b0c:	00dd86b3          	add	a3,s11,a3
    80004b10:	0006c583          	lbu	a1,0(a3)
    80004b14:	ff100613          	li	a2,-15
    80004b18:	0047d69b          	srliw	a3,a5,0x4
    80004b1c:	f8b40023          	sb	a1,-128(s0)
    80004b20:	0047d59b          	srliw	a1,a5,0x4
    80004b24:	0ac75e63          	bge	a4,a2,80004be0 <__printf+0x668>
    80004b28:	00f6f693          	andi	a3,a3,15
    80004b2c:	00dd86b3          	add	a3,s11,a3
    80004b30:	0006c603          	lbu	a2,0(a3)
    80004b34:	00f00693          	li	a3,15
    80004b38:	0087d79b          	srliw	a5,a5,0x8
    80004b3c:	f8c400a3          	sb	a2,-127(s0)
    80004b40:	d8b6e4e3          	bltu	a3,a1,800048c8 <__printf+0x350>
    80004b44:	00200793          	li	a5,2
    80004b48:	e2dff06f          	j	80004974 <__printf+0x3fc>
    80004b4c:	00001c97          	auipc	s9,0x1
    80004b50:	7c4c8c93          	addi	s9,s9,1988 # 80006310 <CONSOLE_STATUS+0x300>
    80004b54:	02800513          	li	a0,40
    80004b58:	ef1ff06f          	j	80004a48 <__printf+0x4d0>
    80004b5c:	00700793          	li	a5,7
    80004b60:	00600c93          	li	s9,6
    80004b64:	e0dff06f          	j	80004970 <__printf+0x3f8>
    80004b68:	00700793          	li	a5,7
    80004b6c:	00600c93          	li	s9,6
    80004b70:	c69ff06f          	j	800047d8 <__printf+0x260>
    80004b74:	00300793          	li	a5,3
    80004b78:	00200c93          	li	s9,2
    80004b7c:	c5dff06f          	j	800047d8 <__printf+0x260>
    80004b80:	00300793          	li	a5,3
    80004b84:	00200c93          	li	s9,2
    80004b88:	de9ff06f          	j	80004970 <__printf+0x3f8>
    80004b8c:	00400793          	li	a5,4
    80004b90:	00300c93          	li	s9,3
    80004b94:	dddff06f          	j	80004970 <__printf+0x3f8>
    80004b98:	00400793          	li	a5,4
    80004b9c:	00300c93          	li	s9,3
    80004ba0:	c39ff06f          	j	800047d8 <__printf+0x260>
    80004ba4:	00500793          	li	a5,5
    80004ba8:	00400c93          	li	s9,4
    80004bac:	c2dff06f          	j	800047d8 <__printf+0x260>
    80004bb0:	00500793          	li	a5,5
    80004bb4:	00400c93          	li	s9,4
    80004bb8:	db9ff06f          	j	80004970 <__printf+0x3f8>
    80004bbc:	00600793          	li	a5,6
    80004bc0:	00500c93          	li	s9,5
    80004bc4:	dadff06f          	j	80004970 <__printf+0x3f8>
    80004bc8:	00600793          	li	a5,6
    80004bcc:	00500c93          	li	s9,5
    80004bd0:	c09ff06f          	j	800047d8 <__printf+0x260>
    80004bd4:	00800793          	li	a5,8
    80004bd8:	00700c93          	li	s9,7
    80004bdc:	bfdff06f          	j	800047d8 <__printf+0x260>
    80004be0:	00100793          	li	a5,1
    80004be4:	d91ff06f          	j	80004974 <__printf+0x3fc>
    80004be8:	00100793          	li	a5,1
    80004bec:	bf1ff06f          	j	800047dc <__printf+0x264>
    80004bf0:	00900793          	li	a5,9
    80004bf4:	00800c93          	li	s9,8
    80004bf8:	be1ff06f          	j	800047d8 <__printf+0x260>
    80004bfc:	00001517          	auipc	a0,0x1
    80004c00:	71c50513          	addi	a0,a0,1820 # 80006318 <CONSOLE_STATUS+0x308>
    80004c04:	00000097          	auipc	ra,0x0
    80004c08:	918080e7          	jalr	-1768(ra) # 8000451c <panic>

0000000080004c0c <printfinit>:
    80004c0c:	fe010113          	addi	sp,sp,-32
    80004c10:	00813823          	sd	s0,16(sp)
    80004c14:	00913423          	sd	s1,8(sp)
    80004c18:	00113c23          	sd	ra,24(sp)
    80004c1c:	02010413          	addi	s0,sp,32
    80004c20:	00004497          	auipc	s1,0x4
    80004c24:	90048493          	addi	s1,s1,-1792 # 80008520 <pr>
    80004c28:	00048513          	mv	a0,s1
    80004c2c:	00001597          	auipc	a1,0x1
    80004c30:	6fc58593          	addi	a1,a1,1788 # 80006328 <CONSOLE_STATUS+0x318>
    80004c34:	00000097          	auipc	ra,0x0
    80004c38:	5f4080e7          	jalr	1524(ra) # 80005228 <initlock>
    80004c3c:	01813083          	ld	ra,24(sp)
    80004c40:	01013403          	ld	s0,16(sp)
    80004c44:	0004ac23          	sw	zero,24(s1)
    80004c48:	00813483          	ld	s1,8(sp)
    80004c4c:	02010113          	addi	sp,sp,32
    80004c50:	00008067          	ret

0000000080004c54 <uartinit>:
    80004c54:	ff010113          	addi	sp,sp,-16
    80004c58:	00813423          	sd	s0,8(sp)
    80004c5c:	01010413          	addi	s0,sp,16
    80004c60:	100007b7          	lui	a5,0x10000
    80004c64:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80004c68:	f8000713          	li	a4,-128
    80004c6c:	00e781a3          	sb	a4,3(a5)
    80004c70:	00300713          	li	a4,3
    80004c74:	00e78023          	sb	a4,0(a5)
    80004c78:	000780a3          	sb	zero,1(a5)
    80004c7c:	00e781a3          	sb	a4,3(a5)
    80004c80:	00700693          	li	a3,7
    80004c84:	00d78123          	sb	a3,2(a5)
    80004c88:	00e780a3          	sb	a4,1(a5)
    80004c8c:	00813403          	ld	s0,8(sp)
    80004c90:	01010113          	addi	sp,sp,16
    80004c94:	00008067          	ret

0000000080004c98 <uartputc>:
    80004c98:	00002797          	auipc	a5,0x2
    80004c9c:	5f07a783          	lw	a5,1520(a5) # 80007288 <panicked>
    80004ca0:	00078463          	beqz	a5,80004ca8 <uartputc+0x10>
    80004ca4:	0000006f          	j	80004ca4 <uartputc+0xc>
    80004ca8:	fd010113          	addi	sp,sp,-48
    80004cac:	02813023          	sd	s0,32(sp)
    80004cb0:	00913c23          	sd	s1,24(sp)
    80004cb4:	01213823          	sd	s2,16(sp)
    80004cb8:	01313423          	sd	s3,8(sp)
    80004cbc:	02113423          	sd	ra,40(sp)
    80004cc0:	03010413          	addi	s0,sp,48
    80004cc4:	00002917          	auipc	s2,0x2
    80004cc8:	5cc90913          	addi	s2,s2,1484 # 80007290 <uart_tx_r>
    80004ccc:	00093783          	ld	a5,0(s2)
    80004cd0:	00002497          	auipc	s1,0x2
    80004cd4:	5c848493          	addi	s1,s1,1480 # 80007298 <uart_tx_w>
    80004cd8:	0004b703          	ld	a4,0(s1)
    80004cdc:	02078693          	addi	a3,a5,32
    80004ce0:	00050993          	mv	s3,a0
    80004ce4:	02e69c63          	bne	a3,a4,80004d1c <uartputc+0x84>
    80004ce8:	00001097          	auipc	ra,0x1
    80004cec:	834080e7          	jalr	-1996(ra) # 8000551c <push_on>
    80004cf0:	00093783          	ld	a5,0(s2)
    80004cf4:	0004b703          	ld	a4,0(s1)
    80004cf8:	02078793          	addi	a5,a5,32
    80004cfc:	00e79463          	bne	a5,a4,80004d04 <uartputc+0x6c>
    80004d00:	0000006f          	j	80004d00 <uartputc+0x68>
    80004d04:	00001097          	auipc	ra,0x1
    80004d08:	88c080e7          	jalr	-1908(ra) # 80005590 <pop_on>
    80004d0c:	00093783          	ld	a5,0(s2)
    80004d10:	0004b703          	ld	a4,0(s1)
    80004d14:	02078693          	addi	a3,a5,32
    80004d18:	fce688e3          	beq	a3,a4,80004ce8 <uartputc+0x50>
    80004d1c:	01f77693          	andi	a3,a4,31
    80004d20:	00004597          	auipc	a1,0x4
    80004d24:	82058593          	addi	a1,a1,-2016 # 80008540 <uart_tx_buf>
    80004d28:	00d586b3          	add	a3,a1,a3
    80004d2c:	00170713          	addi	a4,a4,1
    80004d30:	01368023          	sb	s3,0(a3)
    80004d34:	00e4b023          	sd	a4,0(s1)
    80004d38:	10000637          	lui	a2,0x10000
    80004d3c:	02f71063          	bne	a4,a5,80004d5c <uartputc+0xc4>
    80004d40:	0340006f          	j	80004d74 <uartputc+0xdc>
    80004d44:	00074703          	lbu	a4,0(a4)
    80004d48:	00f93023          	sd	a5,0(s2)
    80004d4c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80004d50:	00093783          	ld	a5,0(s2)
    80004d54:	0004b703          	ld	a4,0(s1)
    80004d58:	00f70e63          	beq	a4,a5,80004d74 <uartputc+0xdc>
    80004d5c:	00564683          	lbu	a3,5(a2)
    80004d60:	01f7f713          	andi	a4,a5,31
    80004d64:	00e58733          	add	a4,a1,a4
    80004d68:	0206f693          	andi	a3,a3,32
    80004d6c:	00178793          	addi	a5,a5,1
    80004d70:	fc069ae3          	bnez	a3,80004d44 <uartputc+0xac>
    80004d74:	02813083          	ld	ra,40(sp)
    80004d78:	02013403          	ld	s0,32(sp)
    80004d7c:	01813483          	ld	s1,24(sp)
    80004d80:	01013903          	ld	s2,16(sp)
    80004d84:	00813983          	ld	s3,8(sp)
    80004d88:	03010113          	addi	sp,sp,48
    80004d8c:	00008067          	ret

0000000080004d90 <uartputc_sync>:
    80004d90:	ff010113          	addi	sp,sp,-16
    80004d94:	00813423          	sd	s0,8(sp)
    80004d98:	01010413          	addi	s0,sp,16
    80004d9c:	00002717          	auipc	a4,0x2
    80004da0:	4ec72703          	lw	a4,1260(a4) # 80007288 <panicked>
    80004da4:	02071663          	bnez	a4,80004dd0 <uartputc_sync+0x40>
    80004da8:	00050793          	mv	a5,a0
    80004dac:	100006b7          	lui	a3,0x10000
    80004db0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80004db4:	02077713          	andi	a4,a4,32
    80004db8:	fe070ce3          	beqz	a4,80004db0 <uartputc_sync+0x20>
    80004dbc:	0ff7f793          	andi	a5,a5,255
    80004dc0:	00f68023          	sb	a5,0(a3)
    80004dc4:	00813403          	ld	s0,8(sp)
    80004dc8:	01010113          	addi	sp,sp,16
    80004dcc:	00008067          	ret
    80004dd0:	0000006f          	j	80004dd0 <uartputc_sync+0x40>

0000000080004dd4 <uartstart>:
    80004dd4:	ff010113          	addi	sp,sp,-16
    80004dd8:	00813423          	sd	s0,8(sp)
    80004ddc:	01010413          	addi	s0,sp,16
    80004de0:	00002617          	auipc	a2,0x2
    80004de4:	4b060613          	addi	a2,a2,1200 # 80007290 <uart_tx_r>
    80004de8:	00002517          	auipc	a0,0x2
    80004dec:	4b050513          	addi	a0,a0,1200 # 80007298 <uart_tx_w>
    80004df0:	00063783          	ld	a5,0(a2)
    80004df4:	00053703          	ld	a4,0(a0)
    80004df8:	04f70263          	beq	a4,a5,80004e3c <uartstart+0x68>
    80004dfc:	100005b7          	lui	a1,0x10000
    80004e00:	00003817          	auipc	a6,0x3
    80004e04:	74080813          	addi	a6,a6,1856 # 80008540 <uart_tx_buf>
    80004e08:	01c0006f          	j	80004e24 <uartstart+0x50>
    80004e0c:	0006c703          	lbu	a4,0(a3)
    80004e10:	00f63023          	sd	a5,0(a2)
    80004e14:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80004e18:	00063783          	ld	a5,0(a2)
    80004e1c:	00053703          	ld	a4,0(a0)
    80004e20:	00f70e63          	beq	a4,a5,80004e3c <uartstart+0x68>
    80004e24:	01f7f713          	andi	a4,a5,31
    80004e28:	00e806b3          	add	a3,a6,a4
    80004e2c:	0055c703          	lbu	a4,5(a1)
    80004e30:	00178793          	addi	a5,a5,1
    80004e34:	02077713          	andi	a4,a4,32
    80004e38:	fc071ae3          	bnez	a4,80004e0c <uartstart+0x38>
    80004e3c:	00813403          	ld	s0,8(sp)
    80004e40:	01010113          	addi	sp,sp,16
    80004e44:	00008067          	ret

0000000080004e48 <uartgetc>:
    80004e48:	ff010113          	addi	sp,sp,-16
    80004e4c:	00813423          	sd	s0,8(sp)
    80004e50:	01010413          	addi	s0,sp,16
    80004e54:	10000737          	lui	a4,0x10000
    80004e58:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80004e5c:	0017f793          	andi	a5,a5,1
    80004e60:	00078c63          	beqz	a5,80004e78 <uartgetc+0x30>
    80004e64:	00074503          	lbu	a0,0(a4)
    80004e68:	0ff57513          	andi	a0,a0,255
    80004e6c:	00813403          	ld	s0,8(sp)
    80004e70:	01010113          	addi	sp,sp,16
    80004e74:	00008067          	ret
    80004e78:	fff00513          	li	a0,-1
    80004e7c:	ff1ff06f          	j	80004e6c <uartgetc+0x24>

0000000080004e80 <uartintr>:
    80004e80:	100007b7          	lui	a5,0x10000
    80004e84:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80004e88:	0017f793          	andi	a5,a5,1
    80004e8c:	0a078463          	beqz	a5,80004f34 <uartintr+0xb4>
    80004e90:	fe010113          	addi	sp,sp,-32
    80004e94:	00813823          	sd	s0,16(sp)
    80004e98:	00913423          	sd	s1,8(sp)
    80004e9c:	00113c23          	sd	ra,24(sp)
    80004ea0:	02010413          	addi	s0,sp,32
    80004ea4:	100004b7          	lui	s1,0x10000
    80004ea8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80004eac:	0ff57513          	andi	a0,a0,255
    80004eb0:	fffff097          	auipc	ra,0xfffff
    80004eb4:	534080e7          	jalr	1332(ra) # 800043e4 <consoleintr>
    80004eb8:	0054c783          	lbu	a5,5(s1)
    80004ebc:	0017f793          	andi	a5,a5,1
    80004ec0:	fe0794e3          	bnez	a5,80004ea8 <uartintr+0x28>
    80004ec4:	00002617          	auipc	a2,0x2
    80004ec8:	3cc60613          	addi	a2,a2,972 # 80007290 <uart_tx_r>
    80004ecc:	00002517          	auipc	a0,0x2
    80004ed0:	3cc50513          	addi	a0,a0,972 # 80007298 <uart_tx_w>
    80004ed4:	00063783          	ld	a5,0(a2)
    80004ed8:	00053703          	ld	a4,0(a0)
    80004edc:	04f70263          	beq	a4,a5,80004f20 <uartintr+0xa0>
    80004ee0:	100005b7          	lui	a1,0x10000
    80004ee4:	00003817          	auipc	a6,0x3
    80004ee8:	65c80813          	addi	a6,a6,1628 # 80008540 <uart_tx_buf>
    80004eec:	01c0006f          	j	80004f08 <uartintr+0x88>
    80004ef0:	0006c703          	lbu	a4,0(a3)
    80004ef4:	00f63023          	sd	a5,0(a2)
    80004ef8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80004efc:	00063783          	ld	a5,0(a2)
    80004f00:	00053703          	ld	a4,0(a0)
    80004f04:	00f70e63          	beq	a4,a5,80004f20 <uartintr+0xa0>
    80004f08:	01f7f713          	andi	a4,a5,31
    80004f0c:	00e806b3          	add	a3,a6,a4
    80004f10:	0055c703          	lbu	a4,5(a1)
    80004f14:	00178793          	addi	a5,a5,1
    80004f18:	02077713          	andi	a4,a4,32
    80004f1c:	fc071ae3          	bnez	a4,80004ef0 <uartintr+0x70>
    80004f20:	01813083          	ld	ra,24(sp)
    80004f24:	01013403          	ld	s0,16(sp)
    80004f28:	00813483          	ld	s1,8(sp)
    80004f2c:	02010113          	addi	sp,sp,32
    80004f30:	00008067          	ret
    80004f34:	00002617          	auipc	a2,0x2
    80004f38:	35c60613          	addi	a2,a2,860 # 80007290 <uart_tx_r>
    80004f3c:	00002517          	auipc	a0,0x2
    80004f40:	35c50513          	addi	a0,a0,860 # 80007298 <uart_tx_w>
    80004f44:	00063783          	ld	a5,0(a2)
    80004f48:	00053703          	ld	a4,0(a0)
    80004f4c:	04f70263          	beq	a4,a5,80004f90 <uartintr+0x110>
    80004f50:	100005b7          	lui	a1,0x10000
    80004f54:	00003817          	auipc	a6,0x3
    80004f58:	5ec80813          	addi	a6,a6,1516 # 80008540 <uart_tx_buf>
    80004f5c:	01c0006f          	j	80004f78 <uartintr+0xf8>
    80004f60:	0006c703          	lbu	a4,0(a3)
    80004f64:	00f63023          	sd	a5,0(a2)
    80004f68:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80004f6c:	00063783          	ld	a5,0(a2)
    80004f70:	00053703          	ld	a4,0(a0)
    80004f74:	02f70063          	beq	a4,a5,80004f94 <uartintr+0x114>
    80004f78:	01f7f713          	andi	a4,a5,31
    80004f7c:	00e806b3          	add	a3,a6,a4
    80004f80:	0055c703          	lbu	a4,5(a1)
    80004f84:	00178793          	addi	a5,a5,1
    80004f88:	02077713          	andi	a4,a4,32
    80004f8c:	fc071ae3          	bnez	a4,80004f60 <uartintr+0xe0>
    80004f90:	00008067          	ret
    80004f94:	00008067          	ret

0000000080004f98 <kinit>:
    80004f98:	fc010113          	addi	sp,sp,-64
    80004f9c:	02913423          	sd	s1,40(sp)
    80004fa0:	fffff7b7          	lui	a5,0xfffff
    80004fa4:	00004497          	auipc	s1,0x4
    80004fa8:	5bb48493          	addi	s1,s1,1467 # 8000955f <end+0xfff>
    80004fac:	02813823          	sd	s0,48(sp)
    80004fb0:	01313c23          	sd	s3,24(sp)
    80004fb4:	00f4f4b3          	and	s1,s1,a5
    80004fb8:	02113c23          	sd	ra,56(sp)
    80004fbc:	03213023          	sd	s2,32(sp)
    80004fc0:	01413823          	sd	s4,16(sp)
    80004fc4:	01513423          	sd	s5,8(sp)
    80004fc8:	04010413          	addi	s0,sp,64
    80004fcc:	000017b7          	lui	a5,0x1
    80004fd0:	01100993          	li	s3,17
    80004fd4:	00f487b3          	add	a5,s1,a5
    80004fd8:	01b99993          	slli	s3,s3,0x1b
    80004fdc:	06f9e063          	bltu	s3,a5,8000503c <kinit+0xa4>
    80004fe0:	00003a97          	auipc	s5,0x3
    80004fe4:	580a8a93          	addi	s5,s5,1408 # 80008560 <end>
    80004fe8:	0754ec63          	bltu	s1,s5,80005060 <kinit+0xc8>
    80004fec:	0734fa63          	bgeu	s1,s3,80005060 <kinit+0xc8>
    80004ff0:	00088a37          	lui	s4,0x88
    80004ff4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80004ff8:	00002917          	auipc	s2,0x2
    80004ffc:	2a890913          	addi	s2,s2,680 # 800072a0 <kmem>
    80005000:	00ca1a13          	slli	s4,s4,0xc
    80005004:	0140006f          	j	80005018 <kinit+0x80>
    80005008:	000017b7          	lui	a5,0x1
    8000500c:	00f484b3          	add	s1,s1,a5
    80005010:	0554e863          	bltu	s1,s5,80005060 <kinit+0xc8>
    80005014:	0534f663          	bgeu	s1,s3,80005060 <kinit+0xc8>
    80005018:	00001637          	lui	a2,0x1
    8000501c:	00100593          	li	a1,1
    80005020:	00048513          	mv	a0,s1
    80005024:	00000097          	auipc	ra,0x0
    80005028:	5e4080e7          	jalr	1508(ra) # 80005608 <__memset>
    8000502c:	00093783          	ld	a5,0(s2)
    80005030:	00f4b023          	sd	a5,0(s1)
    80005034:	00993023          	sd	s1,0(s2)
    80005038:	fd4498e3          	bne	s1,s4,80005008 <kinit+0x70>
    8000503c:	03813083          	ld	ra,56(sp)
    80005040:	03013403          	ld	s0,48(sp)
    80005044:	02813483          	ld	s1,40(sp)
    80005048:	02013903          	ld	s2,32(sp)
    8000504c:	01813983          	ld	s3,24(sp)
    80005050:	01013a03          	ld	s4,16(sp)
    80005054:	00813a83          	ld	s5,8(sp)
    80005058:	04010113          	addi	sp,sp,64
    8000505c:	00008067          	ret
    80005060:	00001517          	auipc	a0,0x1
    80005064:	2e850513          	addi	a0,a0,744 # 80006348 <digits+0x18>
    80005068:	fffff097          	auipc	ra,0xfffff
    8000506c:	4b4080e7          	jalr	1204(ra) # 8000451c <panic>

0000000080005070 <freerange>:
    80005070:	fc010113          	addi	sp,sp,-64
    80005074:	000017b7          	lui	a5,0x1
    80005078:	02913423          	sd	s1,40(sp)
    8000507c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80005080:	009504b3          	add	s1,a0,s1
    80005084:	fffff537          	lui	a0,0xfffff
    80005088:	02813823          	sd	s0,48(sp)
    8000508c:	02113c23          	sd	ra,56(sp)
    80005090:	03213023          	sd	s2,32(sp)
    80005094:	01313c23          	sd	s3,24(sp)
    80005098:	01413823          	sd	s4,16(sp)
    8000509c:	01513423          	sd	s5,8(sp)
    800050a0:	01613023          	sd	s6,0(sp)
    800050a4:	04010413          	addi	s0,sp,64
    800050a8:	00a4f4b3          	and	s1,s1,a0
    800050ac:	00f487b3          	add	a5,s1,a5
    800050b0:	06f5e463          	bltu	a1,a5,80005118 <freerange+0xa8>
    800050b4:	00003a97          	auipc	s5,0x3
    800050b8:	4aca8a93          	addi	s5,s5,1196 # 80008560 <end>
    800050bc:	0954e263          	bltu	s1,s5,80005140 <freerange+0xd0>
    800050c0:	01100993          	li	s3,17
    800050c4:	01b99993          	slli	s3,s3,0x1b
    800050c8:	0734fc63          	bgeu	s1,s3,80005140 <freerange+0xd0>
    800050cc:	00058a13          	mv	s4,a1
    800050d0:	00002917          	auipc	s2,0x2
    800050d4:	1d090913          	addi	s2,s2,464 # 800072a0 <kmem>
    800050d8:	00002b37          	lui	s6,0x2
    800050dc:	0140006f          	j	800050f0 <freerange+0x80>
    800050e0:	000017b7          	lui	a5,0x1
    800050e4:	00f484b3          	add	s1,s1,a5
    800050e8:	0554ec63          	bltu	s1,s5,80005140 <freerange+0xd0>
    800050ec:	0534fa63          	bgeu	s1,s3,80005140 <freerange+0xd0>
    800050f0:	00001637          	lui	a2,0x1
    800050f4:	00100593          	li	a1,1
    800050f8:	00048513          	mv	a0,s1
    800050fc:	00000097          	auipc	ra,0x0
    80005100:	50c080e7          	jalr	1292(ra) # 80005608 <__memset>
    80005104:	00093703          	ld	a4,0(s2)
    80005108:	016487b3          	add	a5,s1,s6
    8000510c:	00e4b023          	sd	a4,0(s1)
    80005110:	00993023          	sd	s1,0(s2)
    80005114:	fcfa76e3          	bgeu	s4,a5,800050e0 <freerange+0x70>
    80005118:	03813083          	ld	ra,56(sp)
    8000511c:	03013403          	ld	s0,48(sp)
    80005120:	02813483          	ld	s1,40(sp)
    80005124:	02013903          	ld	s2,32(sp)
    80005128:	01813983          	ld	s3,24(sp)
    8000512c:	01013a03          	ld	s4,16(sp)
    80005130:	00813a83          	ld	s5,8(sp)
    80005134:	00013b03          	ld	s6,0(sp)
    80005138:	04010113          	addi	sp,sp,64
    8000513c:	00008067          	ret
    80005140:	00001517          	auipc	a0,0x1
    80005144:	20850513          	addi	a0,a0,520 # 80006348 <digits+0x18>
    80005148:	fffff097          	auipc	ra,0xfffff
    8000514c:	3d4080e7          	jalr	980(ra) # 8000451c <panic>

0000000080005150 <kfree>:
    80005150:	fe010113          	addi	sp,sp,-32
    80005154:	00813823          	sd	s0,16(sp)
    80005158:	00113c23          	sd	ra,24(sp)
    8000515c:	00913423          	sd	s1,8(sp)
    80005160:	02010413          	addi	s0,sp,32
    80005164:	03451793          	slli	a5,a0,0x34
    80005168:	04079c63          	bnez	a5,800051c0 <kfree+0x70>
    8000516c:	00003797          	auipc	a5,0x3
    80005170:	3f478793          	addi	a5,a5,1012 # 80008560 <end>
    80005174:	00050493          	mv	s1,a0
    80005178:	04f56463          	bltu	a0,a5,800051c0 <kfree+0x70>
    8000517c:	01100793          	li	a5,17
    80005180:	01b79793          	slli	a5,a5,0x1b
    80005184:	02f57e63          	bgeu	a0,a5,800051c0 <kfree+0x70>
    80005188:	00001637          	lui	a2,0x1
    8000518c:	00100593          	li	a1,1
    80005190:	00000097          	auipc	ra,0x0
    80005194:	478080e7          	jalr	1144(ra) # 80005608 <__memset>
    80005198:	00002797          	auipc	a5,0x2
    8000519c:	10878793          	addi	a5,a5,264 # 800072a0 <kmem>
    800051a0:	0007b703          	ld	a4,0(a5)
    800051a4:	01813083          	ld	ra,24(sp)
    800051a8:	01013403          	ld	s0,16(sp)
    800051ac:	00e4b023          	sd	a4,0(s1)
    800051b0:	0097b023          	sd	s1,0(a5)
    800051b4:	00813483          	ld	s1,8(sp)
    800051b8:	02010113          	addi	sp,sp,32
    800051bc:	00008067          	ret
    800051c0:	00001517          	auipc	a0,0x1
    800051c4:	18850513          	addi	a0,a0,392 # 80006348 <digits+0x18>
    800051c8:	fffff097          	auipc	ra,0xfffff
    800051cc:	354080e7          	jalr	852(ra) # 8000451c <panic>

00000000800051d0 <kalloc>:
    800051d0:	fe010113          	addi	sp,sp,-32
    800051d4:	00813823          	sd	s0,16(sp)
    800051d8:	00913423          	sd	s1,8(sp)
    800051dc:	00113c23          	sd	ra,24(sp)
    800051e0:	02010413          	addi	s0,sp,32
    800051e4:	00002797          	auipc	a5,0x2
    800051e8:	0bc78793          	addi	a5,a5,188 # 800072a0 <kmem>
    800051ec:	0007b483          	ld	s1,0(a5)
    800051f0:	02048063          	beqz	s1,80005210 <kalloc+0x40>
    800051f4:	0004b703          	ld	a4,0(s1)
    800051f8:	00001637          	lui	a2,0x1
    800051fc:	00500593          	li	a1,5
    80005200:	00048513          	mv	a0,s1
    80005204:	00e7b023          	sd	a4,0(a5)
    80005208:	00000097          	auipc	ra,0x0
    8000520c:	400080e7          	jalr	1024(ra) # 80005608 <__memset>
    80005210:	01813083          	ld	ra,24(sp)
    80005214:	01013403          	ld	s0,16(sp)
    80005218:	00048513          	mv	a0,s1
    8000521c:	00813483          	ld	s1,8(sp)
    80005220:	02010113          	addi	sp,sp,32
    80005224:	00008067          	ret

0000000080005228 <initlock>:
    80005228:	ff010113          	addi	sp,sp,-16
    8000522c:	00813423          	sd	s0,8(sp)
    80005230:	01010413          	addi	s0,sp,16
    80005234:	00813403          	ld	s0,8(sp)
    80005238:	00b53423          	sd	a1,8(a0)
    8000523c:	00052023          	sw	zero,0(a0)
    80005240:	00053823          	sd	zero,16(a0)
    80005244:	01010113          	addi	sp,sp,16
    80005248:	00008067          	ret

000000008000524c <acquire>:
    8000524c:	fe010113          	addi	sp,sp,-32
    80005250:	00813823          	sd	s0,16(sp)
    80005254:	00913423          	sd	s1,8(sp)
    80005258:	00113c23          	sd	ra,24(sp)
    8000525c:	01213023          	sd	s2,0(sp)
    80005260:	02010413          	addi	s0,sp,32
    80005264:	00050493          	mv	s1,a0
    80005268:	10002973          	csrr	s2,sstatus
    8000526c:	100027f3          	csrr	a5,sstatus
    80005270:	ffd7f793          	andi	a5,a5,-3
    80005274:	10079073          	csrw	sstatus,a5
    80005278:	fffff097          	auipc	ra,0xfffff
    8000527c:	8e4080e7          	jalr	-1820(ra) # 80003b5c <mycpu>
    80005280:	07852783          	lw	a5,120(a0)
    80005284:	06078e63          	beqz	a5,80005300 <acquire+0xb4>
    80005288:	fffff097          	auipc	ra,0xfffff
    8000528c:	8d4080e7          	jalr	-1836(ra) # 80003b5c <mycpu>
    80005290:	07852783          	lw	a5,120(a0)
    80005294:	0004a703          	lw	a4,0(s1)
    80005298:	0017879b          	addiw	a5,a5,1
    8000529c:	06f52c23          	sw	a5,120(a0)
    800052a0:	04071063          	bnez	a4,800052e0 <acquire+0x94>
    800052a4:	00100713          	li	a4,1
    800052a8:	00070793          	mv	a5,a4
    800052ac:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    800052b0:	0007879b          	sext.w	a5,a5
    800052b4:	fe079ae3          	bnez	a5,800052a8 <acquire+0x5c>
    800052b8:	0ff0000f          	fence
    800052bc:	fffff097          	auipc	ra,0xfffff
    800052c0:	8a0080e7          	jalr	-1888(ra) # 80003b5c <mycpu>
    800052c4:	01813083          	ld	ra,24(sp)
    800052c8:	01013403          	ld	s0,16(sp)
    800052cc:	00a4b823          	sd	a0,16(s1)
    800052d0:	00013903          	ld	s2,0(sp)
    800052d4:	00813483          	ld	s1,8(sp)
    800052d8:	02010113          	addi	sp,sp,32
    800052dc:	00008067          	ret
    800052e0:	0104b903          	ld	s2,16(s1)
    800052e4:	fffff097          	auipc	ra,0xfffff
    800052e8:	878080e7          	jalr	-1928(ra) # 80003b5c <mycpu>
    800052ec:	faa91ce3          	bne	s2,a0,800052a4 <acquire+0x58>
    800052f0:	00001517          	auipc	a0,0x1
    800052f4:	06050513          	addi	a0,a0,96 # 80006350 <digits+0x20>
    800052f8:	fffff097          	auipc	ra,0xfffff
    800052fc:	224080e7          	jalr	548(ra) # 8000451c <panic>
    80005300:	00195913          	srli	s2,s2,0x1
    80005304:	fffff097          	auipc	ra,0xfffff
    80005308:	858080e7          	jalr	-1960(ra) # 80003b5c <mycpu>
    8000530c:	00197913          	andi	s2,s2,1
    80005310:	07252e23          	sw	s2,124(a0)
    80005314:	f75ff06f          	j	80005288 <acquire+0x3c>

0000000080005318 <release>:
    80005318:	fe010113          	addi	sp,sp,-32
    8000531c:	00813823          	sd	s0,16(sp)
    80005320:	00113c23          	sd	ra,24(sp)
    80005324:	00913423          	sd	s1,8(sp)
    80005328:	01213023          	sd	s2,0(sp)
    8000532c:	02010413          	addi	s0,sp,32
    80005330:	00052783          	lw	a5,0(a0)
    80005334:	00079a63          	bnez	a5,80005348 <release+0x30>
    80005338:	00001517          	auipc	a0,0x1
    8000533c:	02050513          	addi	a0,a0,32 # 80006358 <digits+0x28>
    80005340:	fffff097          	auipc	ra,0xfffff
    80005344:	1dc080e7          	jalr	476(ra) # 8000451c <panic>
    80005348:	01053903          	ld	s2,16(a0)
    8000534c:	00050493          	mv	s1,a0
    80005350:	fffff097          	auipc	ra,0xfffff
    80005354:	80c080e7          	jalr	-2036(ra) # 80003b5c <mycpu>
    80005358:	fea910e3          	bne	s2,a0,80005338 <release+0x20>
    8000535c:	0004b823          	sd	zero,16(s1)
    80005360:	0ff0000f          	fence
    80005364:	0f50000f          	fence	iorw,ow
    80005368:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000536c:	ffffe097          	auipc	ra,0xffffe
    80005370:	7f0080e7          	jalr	2032(ra) # 80003b5c <mycpu>
    80005374:	100027f3          	csrr	a5,sstatus
    80005378:	0027f793          	andi	a5,a5,2
    8000537c:	04079a63          	bnez	a5,800053d0 <release+0xb8>
    80005380:	07852783          	lw	a5,120(a0)
    80005384:	02f05e63          	blez	a5,800053c0 <release+0xa8>
    80005388:	fff7871b          	addiw	a4,a5,-1
    8000538c:	06e52c23          	sw	a4,120(a0)
    80005390:	00071c63          	bnez	a4,800053a8 <release+0x90>
    80005394:	07c52783          	lw	a5,124(a0)
    80005398:	00078863          	beqz	a5,800053a8 <release+0x90>
    8000539c:	100027f3          	csrr	a5,sstatus
    800053a0:	0027e793          	ori	a5,a5,2
    800053a4:	10079073          	csrw	sstatus,a5
    800053a8:	01813083          	ld	ra,24(sp)
    800053ac:	01013403          	ld	s0,16(sp)
    800053b0:	00813483          	ld	s1,8(sp)
    800053b4:	00013903          	ld	s2,0(sp)
    800053b8:	02010113          	addi	sp,sp,32
    800053bc:	00008067          	ret
    800053c0:	00001517          	auipc	a0,0x1
    800053c4:	fb850513          	addi	a0,a0,-72 # 80006378 <digits+0x48>
    800053c8:	fffff097          	auipc	ra,0xfffff
    800053cc:	154080e7          	jalr	340(ra) # 8000451c <panic>
    800053d0:	00001517          	auipc	a0,0x1
    800053d4:	f9050513          	addi	a0,a0,-112 # 80006360 <digits+0x30>
    800053d8:	fffff097          	auipc	ra,0xfffff
    800053dc:	144080e7          	jalr	324(ra) # 8000451c <panic>

00000000800053e0 <holding>:
    800053e0:	00052783          	lw	a5,0(a0)
    800053e4:	00079663          	bnez	a5,800053f0 <holding+0x10>
    800053e8:	00000513          	li	a0,0
    800053ec:	00008067          	ret
    800053f0:	fe010113          	addi	sp,sp,-32
    800053f4:	00813823          	sd	s0,16(sp)
    800053f8:	00913423          	sd	s1,8(sp)
    800053fc:	00113c23          	sd	ra,24(sp)
    80005400:	02010413          	addi	s0,sp,32
    80005404:	01053483          	ld	s1,16(a0)
    80005408:	ffffe097          	auipc	ra,0xffffe
    8000540c:	754080e7          	jalr	1876(ra) # 80003b5c <mycpu>
    80005410:	01813083          	ld	ra,24(sp)
    80005414:	01013403          	ld	s0,16(sp)
    80005418:	40a48533          	sub	a0,s1,a0
    8000541c:	00153513          	seqz	a0,a0
    80005420:	00813483          	ld	s1,8(sp)
    80005424:	02010113          	addi	sp,sp,32
    80005428:	00008067          	ret

000000008000542c <push_off>:
    8000542c:	fe010113          	addi	sp,sp,-32
    80005430:	00813823          	sd	s0,16(sp)
    80005434:	00113c23          	sd	ra,24(sp)
    80005438:	00913423          	sd	s1,8(sp)
    8000543c:	02010413          	addi	s0,sp,32
    80005440:	100024f3          	csrr	s1,sstatus
    80005444:	100027f3          	csrr	a5,sstatus
    80005448:	ffd7f793          	andi	a5,a5,-3
    8000544c:	10079073          	csrw	sstatus,a5
    80005450:	ffffe097          	auipc	ra,0xffffe
    80005454:	70c080e7          	jalr	1804(ra) # 80003b5c <mycpu>
    80005458:	07852783          	lw	a5,120(a0)
    8000545c:	02078663          	beqz	a5,80005488 <push_off+0x5c>
    80005460:	ffffe097          	auipc	ra,0xffffe
    80005464:	6fc080e7          	jalr	1788(ra) # 80003b5c <mycpu>
    80005468:	07852783          	lw	a5,120(a0)
    8000546c:	01813083          	ld	ra,24(sp)
    80005470:	01013403          	ld	s0,16(sp)
    80005474:	0017879b          	addiw	a5,a5,1
    80005478:	06f52c23          	sw	a5,120(a0)
    8000547c:	00813483          	ld	s1,8(sp)
    80005480:	02010113          	addi	sp,sp,32
    80005484:	00008067          	ret
    80005488:	0014d493          	srli	s1,s1,0x1
    8000548c:	ffffe097          	auipc	ra,0xffffe
    80005490:	6d0080e7          	jalr	1744(ra) # 80003b5c <mycpu>
    80005494:	0014f493          	andi	s1,s1,1
    80005498:	06952e23          	sw	s1,124(a0)
    8000549c:	fc5ff06f          	j	80005460 <push_off+0x34>

00000000800054a0 <pop_off>:
    800054a0:	ff010113          	addi	sp,sp,-16
    800054a4:	00813023          	sd	s0,0(sp)
    800054a8:	00113423          	sd	ra,8(sp)
    800054ac:	01010413          	addi	s0,sp,16
    800054b0:	ffffe097          	auipc	ra,0xffffe
    800054b4:	6ac080e7          	jalr	1708(ra) # 80003b5c <mycpu>
    800054b8:	100027f3          	csrr	a5,sstatus
    800054bc:	0027f793          	andi	a5,a5,2
    800054c0:	04079663          	bnez	a5,8000550c <pop_off+0x6c>
    800054c4:	07852783          	lw	a5,120(a0)
    800054c8:	02f05a63          	blez	a5,800054fc <pop_off+0x5c>
    800054cc:	fff7871b          	addiw	a4,a5,-1
    800054d0:	06e52c23          	sw	a4,120(a0)
    800054d4:	00071c63          	bnez	a4,800054ec <pop_off+0x4c>
    800054d8:	07c52783          	lw	a5,124(a0)
    800054dc:	00078863          	beqz	a5,800054ec <pop_off+0x4c>
    800054e0:	100027f3          	csrr	a5,sstatus
    800054e4:	0027e793          	ori	a5,a5,2
    800054e8:	10079073          	csrw	sstatus,a5
    800054ec:	00813083          	ld	ra,8(sp)
    800054f0:	00013403          	ld	s0,0(sp)
    800054f4:	01010113          	addi	sp,sp,16
    800054f8:	00008067          	ret
    800054fc:	00001517          	auipc	a0,0x1
    80005500:	e7c50513          	addi	a0,a0,-388 # 80006378 <digits+0x48>
    80005504:	fffff097          	auipc	ra,0xfffff
    80005508:	018080e7          	jalr	24(ra) # 8000451c <panic>
    8000550c:	00001517          	auipc	a0,0x1
    80005510:	e5450513          	addi	a0,a0,-428 # 80006360 <digits+0x30>
    80005514:	fffff097          	auipc	ra,0xfffff
    80005518:	008080e7          	jalr	8(ra) # 8000451c <panic>

000000008000551c <push_on>:
    8000551c:	fe010113          	addi	sp,sp,-32
    80005520:	00813823          	sd	s0,16(sp)
    80005524:	00113c23          	sd	ra,24(sp)
    80005528:	00913423          	sd	s1,8(sp)
    8000552c:	02010413          	addi	s0,sp,32
    80005530:	100024f3          	csrr	s1,sstatus
    80005534:	100027f3          	csrr	a5,sstatus
    80005538:	0027e793          	ori	a5,a5,2
    8000553c:	10079073          	csrw	sstatus,a5
    80005540:	ffffe097          	auipc	ra,0xffffe
    80005544:	61c080e7          	jalr	1564(ra) # 80003b5c <mycpu>
    80005548:	07852783          	lw	a5,120(a0)
    8000554c:	02078663          	beqz	a5,80005578 <push_on+0x5c>
    80005550:	ffffe097          	auipc	ra,0xffffe
    80005554:	60c080e7          	jalr	1548(ra) # 80003b5c <mycpu>
    80005558:	07852783          	lw	a5,120(a0)
    8000555c:	01813083          	ld	ra,24(sp)
    80005560:	01013403          	ld	s0,16(sp)
    80005564:	0017879b          	addiw	a5,a5,1
    80005568:	06f52c23          	sw	a5,120(a0)
    8000556c:	00813483          	ld	s1,8(sp)
    80005570:	02010113          	addi	sp,sp,32
    80005574:	00008067          	ret
    80005578:	0014d493          	srli	s1,s1,0x1
    8000557c:	ffffe097          	auipc	ra,0xffffe
    80005580:	5e0080e7          	jalr	1504(ra) # 80003b5c <mycpu>
    80005584:	0014f493          	andi	s1,s1,1
    80005588:	06952e23          	sw	s1,124(a0)
    8000558c:	fc5ff06f          	j	80005550 <push_on+0x34>

0000000080005590 <pop_on>:
    80005590:	ff010113          	addi	sp,sp,-16
    80005594:	00813023          	sd	s0,0(sp)
    80005598:	00113423          	sd	ra,8(sp)
    8000559c:	01010413          	addi	s0,sp,16
    800055a0:	ffffe097          	auipc	ra,0xffffe
    800055a4:	5bc080e7          	jalr	1468(ra) # 80003b5c <mycpu>
    800055a8:	100027f3          	csrr	a5,sstatus
    800055ac:	0027f793          	andi	a5,a5,2
    800055b0:	04078463          	beqz	a5,800055f8 <pop_on+0x68>
    800055b4:	07852783          	lw	a5,120(a0)
    800055b8:	02f05863          	blez	a5,800055e8 <pop_on+0x58>
    800055bc:	fff7879b          	addiw	a5,a5,-1
    800055c0:	06f52c23          	sw	a5,120(a0)
    800055c4:	07853783          	ld	a5,120(a0)
    800055c8:	00079863          	bnez	a5,800055d8 <pop_on+0x48>
    800055cc:	100027f3          	csrr	a5,sstatus
    800055d0:	ffd7f793          	andi	a5,a5,-3
    800055d4:	10079073          	csrw	sstatus,a5
    800055d8:	00813083          	ld	ra,8(sp)
    800055dc:	00013403          	ld	s0,0(sp)
    800055e0:	01010113          	addi	sp,sp,16
    800055e4:	00008067          	ret
    800055e8:	00001517          	auipc	a0,0x1
    800055ec:	db850513          	addi	a0,a0,-584 # 800063a0 <digits+0x70>
    800055f0:	fffff097          	auipc	ra,0xfffff
    800055f4:	f2c080e7          	jalr	-212(ra) # 8000451c <panic>
    800055f8:	00001517          	auipc	a0,0x1
    800055fc:	d8850513          	addi	a0,a0,-632 # 80006380 <digits+0x50>
    80005600:	fffff097          	auipc	ra,0xfffff
    80005604:	f1c080e7          	jalr	-228(ra) # 8000451c <panic>

0000000080005608 <__memset>:
    80005608:	ff010113          	addi	sp,sp,-16
    8000560c:	00813423          	sd	s0,8(sp)
    80005610:	01010413          	addi	s0,sp,16
    80005614:	1a060e63          	beqz	a2,800057d0 <__memset+0x1c8>
    80005618:	40a007b3          	neg	a5,a0
    8000561c:	0077f793          	andi	a5,a5,7
    80005620:	00778693          	addi	a3,a5,7
    80005624:	00b00813          	li	a6,11
    80005628:	0ff5f593          	andi	a1,a1,255
    8000562c:	fff6071b          	addiw	a4,a2,-1
    80005630:	1b06e663          	bltu	a3,a6,800057dc <__memset+0x1d4>
    80005634:	1cd76463          	bltu	a4,a3,800057fc <__memset+0x1f4>
    80005638:	1a078e63          	beqz	a5,800057f4 <__memset+0x1ec>
    8000563c:	00b50023          	sb	a1,0(a0)
    80005640:	00100713          	li	a4,1
    80005644:	1ae78463          	beq	a5,a4,800057ec <__memset+0x1e4>
    80005648:	00b500a3          	sb	a1,1(a0)
    8000564c:	00200713          	li	a4,2
    80005650:	1ae78a63          	beq	a5,a4,80005804 <__memset+0x1fc>
    80005654:	00b50123          	sb	a1,2(a0)
    80005658:	00300713          	li	a4,3
    8000565c:	18e78463          	beq	a5,a4,800057e4 <__memset+0x1dc>
    80005660:	00b501a3          	sb	a1,3(a0)
    80005664:	00400713          	li	a4,4
    80005668:	1ae78263          	beq	a5,a4,8000580c <__memset+0x204>
    8000566c:	00b50223          	sb	a1,4(a0)
    80005670:	00500713          	li	a4,5
    80005674:	1ae78063          	beq	a5,a4,80005814 <__memset+0x20c>
    80005678:	00b502a3          	sb	a1,5(a0)
    8000567c:	00700713          	li	a4,7
    80005680:	18e79e63          	bne	a5,a4,8000581c <__memset+0x214>
    80005684:	00b50323          	sb	a1,6(a0)
    80005688:	00700e93          	li	t4,7
    8000568c:	00859713          	slli	a4,a1,0x8
    80005690:	00e5e733          	or	a4,a1,a4
    80005694:	01059e13          	slli	t3,a1,0x10
    80005698:	01c76e33          	or	t3,a4,t3
    8000569c:	01859313          	slli	t1,a1,0x18
    800056a0:	006e6333          	or	t1,t3,t1
    800056a4:	02059893          	slli	a7,a1,0x20
    800056a8:	40f60e3b          	subw	t3,a2,a5
    800056ac:	011368b3          	or	a7,t1,a7
    800056b0:	02859813          	slli	a6,a1,0x28
    800056b4:	0108e833          	or	a6,a7,a6
    800056b8:	03059693          	slli	a3,a1,0x30
    800056bc:	003e589b          	srliw	a7,t3,0x3
    800056c0:	00d866b3          	or	a3,a6,a3
    800056c4:	03859713          	slli	a4,a1,0x38
    800056c8:	00389813          	slli	a6,a7,0x3
    800056cc:	00f507b3          	add	a5,a0,a5
    800056d0:	00e6e733          	or	a4,a3,a4
    800056d4:	000e089b          	sext.w	a7,t3
    800056d8:	00f806b3          	add	a3,a6,a5
    800056dc:	00e7b023          	sd	a4,0(a5)
    800056e0:	00878793          	addi	a5,a5,8
    800056e4:	fed79ce3          	bne	a5,a3,800056dc <__memset+0xd4>
    800056e8:	ff8e7793          	andi	a5,t3,-8
    800056ec:	0007871b          	sext.w	a4,a5
    800056f0:	01d787bb          	addw	a5,a5,t4
    800056f4:	0ce88e63          	beq	a7,a4,800057d0 <__memset+0x1c8>
    800056f8:	00f50733          	add	a4,a0,a5
    800056fc:	00b70023          	sb	a1,0(a4)
    80005700:	0017871b          	addiw	a4,a5,1
    80005704:	0cc77663          	bgeu	a4,a2,800057d0 <__memset+0x1c8>
    80005708:	00e50733          	add	a4,a0,a4
    8000570c:	00b70023          	sb	a1,0(a4)
    80005710:	0027871b          	addiw	a4,a5,2
    80005714:	0ac77e63          	bgeu	a4,a2,800057d0 <__memset+0x1c8>
    80005718:	00e50733          	add	a4,a0,a4
    8000571c:	00b70023          	sb	a1,0(a4)
    80005720:	0037871b          	addiw	a4,a5,3
    80005724:	0ac77663          	bgeu	a4,a2,800057d0 <__memset+0x1c8>
    80005728:	00e50733          	add	a4,a0,a4
    8000572c:	00b70023          	sb	a1,0(a4)
    80005730:	0047871b          	addiw	a4,a5,4
    80005734:	08c77e63          	bgeu	a4,a2,800057d0 <__memset+0x1c8>
    80005738:	00e50733          	add	a4,a0,a4
    8000573c:	00b70023          	sb	a1,0(a4)
    80005740:	0057871b          	addiw	a4,a5,5
    80005744:	08c77663          	bgeu	a4,a2,800057d0 <__memset+0x1c8>
    80005748:	00e50733          	add	a4,a0,a4
    8000574c:	00b70023          	sb	a1,0(a4)
    80005750:	0067871b          	addiw	a4,a5,6
    80005754:	06c77e63          	bgeu	a4,a2,800057d0 <__memset+0x1c8>
    80005758:	00e50733          	add	a4,a0,a4
    8000575c:	00b70023          	sb	a1,0(a4)
    80005760:	0077871b          	addiw	a4,a5,7
    80005764:	06c77663          	bgeu	a4,a2,800057d0 <__memset+0x1c8>
    80005768:	00e50733          	add	a4,a0,a4
    8000576c:	00b70023          	sb	a1,0(a4)
    80005770:	0087871b          	addiw	a4,a5,8
    80005774:	04c77e63          	bgeu	a4,a2,800057d0 <__memset+0x1c8>
    80005778:	00e50733          	add	a4,a0,a4
    8000577c:	00b70023          	sb	a1,0(a4)
    80005780:	0097871b          	addiw	a4,a5,9
    80005784:	04c77663          	bgeu	a4,a2,800057d0 <__memset+0x1c8>
    80005788:	00e50733          	add	a4,a0,a4
    8000578c:	00b70023          	sb	a1,0(a4)
    80005790:	00a7871b          	addiw	a4,a5,10
    80005794:	02c77e63          	bgeu	a4,a2,800057d0 <__memset+0x1c8>
    80005798:	00e50733          	add	a4,a0,a4
    8000579c:	00b70023          	sb	a1,0(a4)
    800057a0:	00b7871b          	addiw	a4,a5,11
    800057a4:	02c77663          	bgeu	a4,a2,800057d0 <__memset+0x1c8>
    800057a8:	00e50733          	add	a4,a0,a4
    800057ac:	00b70023          	sb	a1,0(a4)
    800057b0:	00c7871b          	addiw	a4,a5,12
    800057b4:	00c77e63          	bgeu	a4,a2,800057d0 <__memset+0x1c8>
    800057b8:	00e50733          	add	a4,a0,a4
    800057bc:	00b70023          	sb	a1,0(a4)
    800057c0:	00d7879b          	addiw	a5,a5,13
    800057c4:	00c7f663          	bgeu	a5,a2,800057d0 <__memset+0x1c8>
    800057c8:	00f507b3          	add	a5,a0,a5
    800057cc:	00b78023          	sb	a1,0(a5)
    800057d0:	00813403          	ld	s0,8(sp)
    800057d4:	01010113          	addi	sp,sp,16
    800057d8:	00008067          	ret
    800057dc:	00b00693          	li	a3,11
    800057e0:	e55ff06f          	j	80005634 <__memset+0x2c>
    800057e4:	00300e93          	li	t4,3
    800057e8:	ea5ff06f          	j	8000568c <__memset+0x84>
    800057ec:	00100e93          	li	t4,1
    800057f0:	e9dff06f          	j	8000568c <__memset+0x84>
    800057f4:	00000e93          	li	t4,0
    800057f8:	e95ff06f          	j	8000568c <__memset+0x84>
    800057fc:	00000793          	li	a5,0
    80005800:	ef9ff06f          	j	800056f8 <__memset+0xf0>
    80005804:	00200e93          	li	t4,2
    80005808:	e85ff06f          	j	8000568c <__memset+0x84>
    8000580c:	00400e93          	li	t4,4
    80005810:	e7dff06f          	j	8000568c <__memset+0x84>
    80005814:	00500e93          	li	t4,5
    80005818:	e75ff06f          	j	8000568c <__memset+0x84>
    8000581c:	00600e93          	li	t4,6
    80005820:	e6dff06f          	j	8000568c <__memset+0x84>

0000000080005824 <__memmove>:
    80005824:	ff010113          	addi	sp,sp,-16
    80005828:	00813423          	sd	s0,8(sp)
    8000582c:	01010413          	addi	s0,sp,16
    80005830:	0e060863          	beqz	a2,80005920 <__memmove+0xfc>
    80005834:	fff6069b          	addiw	a3,a2,-1
    80005838:	0006881b          	sext.w	a6,a3
    8000583c:	0ea5e863          	bltu	a1,a0,8000592c <__memmove+0x108>
    80005840:	00758713          	addi	a4,a1,7
    80005844:	00a5e7b3          	or	a5,a1,a0
    80005848:	40a70733          	sub	a4,a4,a0
    8000584c:	0077f793          	andi	a5,a5,7
    80005850:	00f73713          	sltiu	a4,a4,15
    80005854:	00174713          	xori	a4,a4,1
    80005858:	0017b793          	seqz	a5,a5
    8000585c:	00e7f7b3          	and	a5,a5,a4
    80005860:	10078863          	beqz	a5,80005970 <__memmove+0x14c>
    80005864:	00900793          	li	a5,9
    80005868:	1107f463          	bgeu	a5,a6,80005970 <__memmove+0x14c>
    8000586c:	0036581b          	srliw	a6,a2,0x3
    80005870:	fff8081b          	addiw	a6,a6,-1
    80005874:	02081813          	slli	a6,a6,0x20
    80005878:	01d85893          	srli	a7,a6,0x1d
    8000587c:	00858813          	addi	a6,a1,8
    80005880:	00058793          	mv	a5,a1
    80005884:	00050713          	mv	a4,a0
    80005888:	01088833          	add	a6,a7,a6
    8000588c:	0007b883          	ld	a7,0(a5)
    80005890:	00878793          	addi	a5,a5,8
    80005894:	00870713          	addi	a4,a4,8
    80005898:	ff173c23          	sd	a7,-8(a4)
    8000589c:	ff0798e3          	bne	a5,a6,8000588c <__memmove+0x68>
    800058a0:	ff867713          	andi	a4,a2,-8
    800058a4:	02071793          	slli	a5,a4,0x20
    800058a8:	0207d793          	srli	a5,a5,0x20
    800058ac:	00f585b3          	add	a1,a1,a5
    800058b0:	40e686bb          	subw	a3,a3,a4
    800058b4:	00f507b3          	add	a5,a0,a5
    800058b8:	06e60463          	beq	a2,a4,80005920 <__memmove+0xfc>
    800058bc:	0005c703          	lbu	a4,0(a1)
    800058c0:	00e78023          	sb	a4,0(a5)
    800058c4:	04068e63          	beqz	a3,80005920 <__memmove+0xfc>
    800058c8:	0015c603          	lbu	a2,1(a1)
    800058cc:	00100713          	li	a4,1
    800058d0:	00c780a3          	sb	a2,1(a5)
    800058d4:	04e68663          	beq	a3,a4,80005920 <__memmove+0xfc>
    800058d8:	0025c603          	lbu	a2,2(a1)
    800058dc:	00200713          	li	a4,2
    800058e0:	00c78123          	sb	a2,2(a5)
    800058e4:	02e68e63          	beq	a3,a4,80005920 <__memmove+0xfc>
    800058e8:	0035c603          	lbu	a2,3(a1)
    800058ec:	00300713          	li	a4,3
    800058f0:	00c781a3          	sb	a2,3(a5)
    800058f4:	02e68663          	beq	a3,a4,80005920 <__memmove+0xfc>
    800058f8:	0045c603          	lbu	a2,4(a1)
    800058fc:	00400713          	li	a4,4
    80005900:	00c78223          	sb	a2,4(a5)
    80005904:	00e68e63          	beq	a3,a4,80005920 <__memmove+0xfc>
    80005908:	0055c603          	lbu	a2,5(a1)
    8000590c:	00500713          	li	a4,5
    80005910:	00c782a3          	sb	a2,5(a5)
    80005914:	00e68663          	beq	a3,a4,80005920 <__memmove+0xfc>
    80005918:	0065c703          	lbu	a4,6(a1)
    8000591c:	00e78323          	sb	a4,6(a5)
    80005920:	00813403          	ld	s0,8(sp)
    80005924:	01010113          	addi	sp,sp,16
    80005928:	00008067          	ret
    8000592c:	02061713          	slli	a4,a2,0x20
    80005930:	02075713          	srli	a4,a4,0x20
    80005934:	00e587b3          	add	a5,a1,a4
    80005938:	f0f574e3          	bgeu	a0,a5,80005840 <__memmove+0x1c>
    8000593c:	02069613          	slli	a2,a3,0x20
    80005940:	02065613          	srli	a2,a2,0x20
    80005944:	fff64613          	not	a2,a2
    80005948:	00e50733          	add	a4,a0,a4
    8000594c:	00c78633          	add	a2,a5,a2
    80005950:	fff7c683          	lbu	a3,-1(a5)
    80005954:	fff78793          	addi	a5,a5,-1
    80005958:	fff70713          	addi	a4,a4,-1
    8000595c:	00d70023          	sb	a3,0(a4)
    80005960:	fec798e3          	bne	a5,a2,80005950 <__memmove+0x12c>
    80005964:	00813403          	ld	s0,8(sp)
    80005968:	01010113          	addi	sp,sp,16
    8000596c:	00008067          	ret
    80005970:	02069713          	slli	a4,a3,0x20
    80005974:	02075713          	srli	a4,a4,0x20
    80005978:	00170713          	addi	a4,a4,1
    8000597c:	00e50733          	add	a4,a0,a4
    80005980:	00050793          	mv	a5,a0
    80005984:	0005c683          	lbu	a3,0(a1)
    80005988:	00178793          	addi	a5,a5,1
    8000598c:	00158593          	addi	a1,a1,1
    80005990:	fed78fa3          	sb	a3,-1(a5)
    80005994:	fee798e3          	bne	a5,a4,80005984 <__memmove+0x160>
    80005998:	f89ff06f          	j	80005920 <__memmove+0xfc>

000000008000599c <__putc>:
    8000599c:	fe010113          	addi	sp,sp,-32
    800059a0:	00813823          	sd	s0,16(sp)
    800059a4:	00113c23          	sd	ra,24(sp)
    800059a8:	02010413          	addi	s0,sp,32
    800059ac:	00050793          	mv	a5,a0
    800059b0:	fef40593          	addi	a1,s0,-17
    800059b4:	00100613          	li	a2,1
    800059b8:	00000513          	li	a0,0
    800059bc:	fef407a3          	sb	a5,-17(s0)
    800059c0:	fffff097          	auipc	ra,0xfffff
    800059c4:	b3c080e7          	jalr	-1220(ra) # 800044fc <console_write>
    800059c8:	01813083          	ld	ra,24(sp)
    800059cc:	01013403          	ld	s0,16(sp)
    800059d0:	02010113          	addi	sp,sp,32
    800059d4:	00008067          	ret

00000000800059d8 <__getc>:
    800059d8:	fe010113          	addi	sp,sp,-32
    800059dc:	00813823          	sd	s0,16(sp)
    800059e0:	00113c23          	sd	ra,24(sp)
    800059e4:	02010413          	addi	s0,sp,32
    800059e8:	fe840593          	addi	a1,s0,-24
    800059ec:	00100613          	li	a2,1
    800059f0:	00000513          	li	a0,0
    800059f4:	fffff097          	auipc	ra,0xfffff
    800059f8:	ae8080e7          	jalr	-1304(ra) # 800044dc <console_read>
    800059fc:	fe844503          	lbu	a0,-24(s0)
    80005a00:	01813083          	ld	ra,24(sp)
    80005a04:	01013403          	ld	s0,16(sp)
    80005a08:	02010113          	addi	sp,sp,32
    80005a0c:	00008067          	ret

0000000080005a10 <console_handler>:
    80005a10:	fe010113          	addi	sp,sp,-32
    80005a14:	00813823          	sd	s0,16(sp)
    80005a18:	00113c23          	sd	ra,24(sp)
    80005a1c:	00913423          	sd	s1,8(sp)
    80005a20:	02010413          	addi	s0,sp,32
    80005a24:	14202773          	csrr	a4,scause
    80005a28:	100027f3          	csrr	a5,sstatus
    80005a2c:	0027f793          	andi	a5,a5,2
    80005a30:	06079e63          	bnez	a5,80005aac <console_handler+0x9c>
    80005a34:	00074c63          	bltz	a4,80005a4c <console_handler+0x3c>
    80005a38:	01813083          	ld	ra,24(sp)
    80005a3c:	01013403          	ld	s0,16(sp)
    80005a40:	00813483          	ld	s1,8(sp)
    80005a44:	02010113          	addi	sp,sp,32
    80005a48:	00008067          	ret
    80005a4c:	0ff77713          	andi	a4,a4,255
    80005a50:	00900793          	li	a5,9
    80005a54:	fef712e3          	bne	a4,a5,80005a38 <console_handler+0x28>
    80005a58:	ffffe097          	auipc	ra,0xffffe
    80005a5c:	6dc080e7          	jalr	1756(ra) # 80004134 <plic_claim>
    80005a60:	00a00793          	li	a5,10
    80005a64:	00050493          	mv	s1,a0
    80005a68:	02f50c63          	beq	a0,a5,80005aa0 <console_handler+0x90>
    80005a6c:	fc0506e3          	beqz	a0,80005a38 <console_handler+0x28>
    80005a70:	00050593          	mv	a1,a0
    80005a74:	00001517          	auipc	a0,0x1
    80005a78:	83450513          	addi	a0,a0,-1996 # 800062a8 <CONSOLE_STATUS+0x298>
    80005a7c:	fffff097          	auipc	ra,0xfffff
    80005a80:	afc080e7          	jalr	-1284(ra) # 80004578 <__printf>
    80005a84:	01013403          	ld	s0,16(sp)
    80005a88:	01813083          	ld	ra,24(sp)
    80005a8c:	00048513          	mv	a0,s1
    80005a90:	00813483          	ld	s1,8(sp)
    80005a94:	02010113          	addi	sp,sp,32
    80005a98:	ffffe317          	auipc	t1,0xffffe
    80005a9c:	6d430067          	jr	1748(t1) # 8000416c <plic_complete>
    80005aa0:	fffff097          	auipc	ra,0xfffff
    80005aa4:	3e0080e7          	jalr	992(ra) # 80004e80 <uartintr>
    80005aa8:	fddff06f          	j	80005a84 <console_handler+0x74>
    80005aac:	00001517          	auipc	a0,0x1
    80005ab0:	8fc50513          	addi	a0,a0,-1796 # 800063a8 <digits+0x78>
    80005ab4:	fffff097          	auipc	ra,0xfffff
    80005ab8:	a68080e7          	jalr	-1432(ra) # 8000451c <panic>
	...

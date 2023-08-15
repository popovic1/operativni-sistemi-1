
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00007117          	auipc	sp,0x7
    80000004:	27813103          	ld	sp,632(sp) # 80007278 <_GLOBAL_OFFSET_TABLE_+0x30>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	0dd030ef          	jal	ra,800038f8 <start>

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
    800010a8:	329000ef          	jal	ra,80001bd0 <_ZN5Riscv11trapHandlerEv>

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
    800013e4:	f004b483          	ld	s1,-256(s1) # 800072e0 <_ZN3PCB7runningE>
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
    80001400:	eea7b223          	sd	a0,-284(a5) # 800072e0 <_ZN3PCB7runningE>
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
    80001450:	e947b783          	ld	a5,-364(a5) # 800072e0 <_ZN3PCB7runningE>
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
    800014b0:	704080e7          	jalr	1796(ra) # 80001bb0 <_ZN5Riscv10popSppSpieEv>
    running->body(running->args);
    800014b4:	00006797          	auipc	a5,0x6
    800014b8:	e2c7b783          	ld	a5,-468(a5) # 800072e0 <_ZN3PCB7runningE>
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
    80001510:	ddc78793          	addi	a5,a5,-548 # 800072e8 <_ZN9Scheduler10readyQueueE>
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
    80001538:	db453503          	ld	a0,-588(a0) # 800072e8 <_ZN9Scheduler10readyQueueE>
    8000153c:	04050263          	beqz	a0,80001580 <_ZN9Scheduler3getEv+0x60>

        Elem *elem = head;
        head = head->next;
    80001540:	00853783          	ld	a5,8(a0)
    80001544:	00006717          	auipc	a4,0x6
    80001548:	daf73223          	sd	a5,-604(a4) # 800072e8 <_ZN9Scheduler10readyQueueE>
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
    80001578:	d607be23          	sd	zero,-644(a5) # 800072f0 <_ZN9Scheduler10readyQueueE+0x8>
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
    800015b8:	d3c7b783          	ld	a5,-708(a5) # 800072f0 <_ZN9Scheduler10readyQueueE+0x8>
    800015bc:	02078263          	beqz	a5,800015e0 <_ZN9Scheduler3putEP3PCB+0x58>
            tail->next = elem;
    800015c0:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    800015c4:	00006797          	auipc	a5,0x6
    800015c8:	d2a7b623          	sd	a0,-724(a5) # 800072f0 <_ZN9Scheduler10readyQueueE+0x8>
}
    800015cc:	01813083          	ld	ra,24(sp)
    800015d0:	01013403          	ld	s0,16(sp)
    800015d4:	00813483          	ld	s1,8(sp)
    800015d8:	02010113          	addi	sp,sp,32
    800015dc:	00008067          	ret
            head = tail = elem;
    800015e0:	00006797          	auipc	a5,0x6
    800015e4:	d0878793          	addi	a5,a5,-760 # 800072e8 <_ZN9Scheduler10readyQueueE>
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
    8000160c:	ce04b483          	ld	s1,-800(s1) # 800072e8 <_ZN9Scheduler10readyQueueE>
    80001610:	04048663          	beqz	s1,8000165c <_ZN9Scheduler6removeEv+0x68>

        Elem *prev = 0;
    80001614:	00000793          	li	a5,0
        for (Elem *curr = head; curr && curr != tail; curr = curr->next)
    80001618:	00048e63          	beqz	s1,80001634 <_ZN9Scheduler6removeEv+0x40>
    8000161c:	00006717          	auipc	a4,0x6
    80001620:	cd473703          	ld	a4,-812(a4) # 800072f0 <_ZN9Scheduler10readyQueueE+0x8>
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
    80001638:	cbc53503          	ld	a0,-836(a0) # 800072f0 <_ZN9Scheduler10readyQueueE+0x8>
        if (prev) { prev->next = 0; }
    8000163c:	02078c63          	beqz	a5,80001674 <_ZN9Scheduler6removeEv+0x80>
    80001640:	0007b423          	sd	zero,8(a5)
        else { head = 0; }
        tail = prev;
    80001644:	00006717          	auipc	a4,0x6
    80001648:	caf73623          	sd	a5,-852(a4) # 800072f0 <_ZN9Scheduler10readyQueueE+0x8>

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
    80001678:	c6073a23          	sd	zero,-908(a4) # 800072e8 <_ZN9Scheduler10readyQueueE>
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
    80001714:	be87c783          	lbu	a5,-1048(a5) # 800072f8 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80001718:	00079863          	bnez	a5,80001728 <main+0x38>
    8000171c:	00100793          	li	a5,1
    80001720:	00006717          	auipc	a4,0x6
    80001724:	bcf70c23          	sb	a5,-1064(a4) # 800072f8 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
//        printString("\n");
//        uint64 end = (uint64)((Block *) HEAP_END_ADDR);
//        printInteger(end);
//        printString("\n");

        free_list = (Block *) HEAP_START_ADDR;
    80001728:	00006797          	auipc	a5,0x6
    8000172c:	b387b783          	ld	a5,-1224(a5) # 80007260 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001730:	0007b703          	ld	a4,0(a5)
    80001734:	00006697          	auipc	a3,0x6
    80001738:	b5c6b683          	ld	a3,-1188(a3) # 80007290 <_GLOBAL_OFFSET_TABLE_+0x48>
    8000173c:	00e6b023          	sd	a4,0(a3)
        free_list->size = (uint64 *) HEAP_END_ADDR - (uint64 *) HEAP_START_ADDR;
    80001740:	00006797          	auipc	a5,0x6
    80001744:	b487b783          	ld	a5,-1208(a5) # 80007288 <_GLOBAL_OFFSET_TABLE_+0x40>
    80001748:	0007b783          	ld	a5,0(a5)
    8000174c:	40e787b3          	sub	a5,a5,a4
    80001750:	4037d793          	srai	a5,a5,0x3
    80001754:	00f73023          	sd	a5,0(a4)
        free_list->next = nullptr;
    80001758:	0006b783          	ld	a5,0(a3)
    8000175c:	0007b423          	sd	zero,8(a5)
        allocated_list = nullptr;
    80001760:	00006797          	auipc	a5,0x6
    80001764:	b107b783          	ld	a5,-1264(a5) # 80007270 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001768:	0007b023          	sd	zero,0(a5)


    MemoryAllocator::getInstance().init();
    Riscv::w_stvec((uint64) &Riscv::supervisorTrap+1);
    8000176c:	00006797          	auipc	a5,0x6
    80001770:	afc7b783          	ld	a5,-1284(a5) # 80007268 <_GLOBAL_OFFSET_TABLE_+0x20>
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
    80001798:	ac4a3a03          	ld	s4,-1340(s4) # 80007258 <_GLOBAL_OFFSET_TABLE_+0x10>
    8000179c:	01453c23          	sd	s4,24(a0)
    800017a0:	02053023          	sd	zero,32(a0)
                   stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
        };
        this->args = args;
    800017a4:	00053823          	sd	zero,16(a0)
    PCB::running=pcb;
    800017a8:	00006797          	auipc	a5,0x6
    800017ac:	ad87b783          	ld	a5,-1320(a5) # 80007280 <_GLOBAL_OFFSET_TABLE_+0x38>
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
    800017d0:	b2c7c783          	lbu	a5,-1236(a5) # 800072f8 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    800017d4:	00079863          	bnez	a5,800017e4 <main+0xf4>
    800017d8:	00100793          	li	a5,1
    800017dc:	00006717          	auipc	a4,0x6
    800017e0:	b0f70e23          	sb	a5,-1252(a4) # 800072f8 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>

    uint64* stack = (uint64*)MemoryAllocator::getInstance().allocate(((DEFAULT_STACK_SIZE + 16+ MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE));
    800017e4:	04100513          	li	a0,65
    800017e8:	00000097          	auipc	ra,0x0
    800017ec:	664080e7          	jalr	1636(ra) # 80001e4c <_ZN15MemoryAllocator8allocateEm>
    800017f0:	00050993          	mv	s3,a0
    PCB* usrT = new PCB((void (*)(void *))(userMain), nullptr, stack);
    800017f4:	03000513          	li	a0,48
    800017f8:	00000097          	auipc	ra,0x0
    800017fc:	0f4080e7          	jalr	244(ra) # 800018ec <_Znwm>
    80001800:	00050493          	mv	s1,a0
        this->body = body;
    80001804:	00006797          	auipc	a5,0x6
    80001808:	a4c7b783          	ld	a5,-1460(a5) # 80007250 <_GLOBAL_OFFSET_TABLE_+0x8>
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

Thread::Thread() {
    new Thread(threadWrapper, this);
}

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
    800019a8:	7cc78793          	addi	a5,a5,1996 # 80007170 <_ZTV6Thread+0x10>
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
    80001a6c:	70878793          	addi	a5,a5,1800 # 80007170 <_ZTV6Thread+0x10>
    80001a70:	00f53023          	sd	a5,0(a0)
    thread_create(&myHandle, body, arg);
    80001a74:	00850513          	addi	a0,a0,8
    80001a78:	00000097          	auipc	ra,0x0
    80001a7c:	88c080e7          	jalr	-1908(ra) # 80001304 <_Z13thread_createPP7_threadPFvPvES2_>
}
    80001a80:	00813083          	ld	ra,8(sp)
    80001a84:	00013403          	ld	s0,0(sp)
    80001a88:	01010113          	addi	sp,sp,16
    80001a8c:	00008067          	ret

0000000080001a90 <_ZN6ThreadC1Ev>:
Thread::Thread() {
    80001a90:	fe010113          	addi	sp,sp,-32
    80001a94:	00113c23          	sd	ra,24(sp)
    80001a98:	00813823          	sd	s0,16(sp)
    80001a9c:	00913423          	sd	s1,8(sp)
    80001aa0:	01213023          	sd	s2,0(sp)
    80001aa4:	02010413          	addi	s0,sp,32
    80001aa8:	00050493          	mv	s1,a0
    80001aac:	00005797          	auipc	a5,0x5
    80001ab0:	6c478793          	addi	a5,a5,1732 # 80007170 <_ZTV6Thread+0x10>
    80001ab4:	00f53023          	sd	a5,0(a0)
    new Thread(threadWrapper, this);
    80001ab8:	02000513          	li	a0,32
    80001abc:	00000097          	auipc	ra,0x0
    80001ac0:	e30080e7          	jalr	-464(ra) # 800018ec <_Znwm>
    80001ac4:	00050913          	mv	s2,a0
    80001ac8:	00048613          	mv	a2,s1
    80001acc:	00000597          	auipc	a1,0x0
    80001ad0:	df458593          	addi	a1,a1,-524 # 800018c0 <_ZN6Thread13threadWrapperEPv>
    80001ad4:	00000097          	auipc	ra,0x0
    80001ad8:	f84080e7          	jalr	-124(ra) # 80001a58 <_ZN6ThreadC1EPFvPvES0_>
    80001adc:	0200006f          	j	80001afc <_ZN6ThreadC1Ev+0x6c>
    80001ae0:	00050493          	mv	s1,a0
    80001ae4:	00090513          	mv	a0,s2
    80001ae8:	00000097          	auipc	ra,0x0
    80001aec:	e54080e7          	jalr	-428(ra) # 8000193c <_ZdlPv>
    80001af0:	00048513          	mv	a0,s1
    80001af4:	00007097          	auipc	ra,0x7
    80001af8:	904080e7          	jalr	-1788(ra) # 800083f8 <_Unwind_Resume>
}
    80001afc:	01813083          	ld	ra,24(sp)
    80001b00:	01013403          	ld	s0,16(sp)
    80001b04:	00813483          	ld	s1,8(sp)
    80001b08:	00013903          	ld	s2,0(sp)
    80001b0c:	02010113          	addi	sp,sp,32
    80001b10:	00008067          	ret

0000000080001b14 <_ZN6Thread5startEv>:
int Thread::start() {
    80001b14:	ff010113          	addi	sp,sp,-16
    80001b18:	00113423          	sd	ra,8(sp)
    80001b1c:	00813023          	sd	s0,0(sp)
    80001b20:	01010413          	addi	s0,sp,16
    Scheduler::put((PCB*)myHandle);
    80001b24:	00853503          	ld	a0,8(a0)
    80001b28:	00000097          	auipc	ra,0x0
    80001b2c:	a60080e7          	jalr	-1440(ra) # 80001588 <_ZN9Scheduler3putEP3PCB>
}
    80001b30:	00000513          	li	a0,0
    80001b34:	00813083          	ld	ra,8(sp)
    80001b38:	00013403          	ld	s0,0(sp)
    80001b3c:	01010113          	addi	sp,sp,16
    80001b40:	00008067          	ret

0000000080001b44 <_ZN6Thread4joinEv>:
void Thread::join() {
    80001b44:	ff010113          	addi	sp,sp,-16
    80001b48:	00113423          	sd	ra,8(sp)
    80001b4c:	00813023          	sd	s0,0(sp)
    80001b50:	01010413          	addi	s0,sp,16
    thread_join(myHandle);
    80001b54:	00853503          	ld	a0,8(a0)
    80001b58:	00000097          	auipc	ra,0x0
    80001b5c:	84c080e7          	jalr	-1972(ra) # 800013a4 <_Z11thread_joinP7_thread>
}
    80001b60:	00813083          	ld	ra,8(sp)
    80001b64:	00013403          	ld	s0,0(sp)
    80001b68:	01010113          	addi	sp,sp,16
    80001b6c:	00008067          	ret

0000000080001b70 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80001b70:	ff010113          	addi	sp,sp,-16
    80001b74:	00113423          	sd	ra,8(sp)
    80001b78:	00813023          	sd	s0,0(sp)
    80001b7c:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80001b80:	00000097          	auipc	ra,0x0
    80001b84:	800080e7          	jalr	-2048(ra) # 80001380 <_Z15thread_dispatchv>
}
    80001b88:	00813083          	ld	ra,8(sp)
    80001b8c:	00013403          	ld	s0,0(sp)
    80001b90:	01010113          	addi	sp,sp,16
    80001b94:	00008067          	ret

0000000080001b98 <_ZN6Thread3runEv>:


protected:
    Thread();

    virtual void run() {}
    80001b98:	ff010113          	addi	sp,sp,-16
    80001b9c:	00813423          	sd	s0,8(sp)
    80001ba0:	01010413          	addi	s0,sp,16
    80001ba4:	00813403          	ld	s0,8(sp)
    80001ba8:	01010113          	addi	sp,sp,16
    80001bac:	00008067          	ret

0000000080001bb0 <_ZN5Riscv10popSppSpieEv>:
#include "../h/riscv.hpp"



void Riscv::popSppSpie()
{
    80001bb0:	ff010113          	addi	sp,sp,-16
    80001bb4:	00813423          	sd	s0,8(sp)
    80001bb8:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    80001bbc:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    80001bc0:	10200073          	sret
}
    80001bc4:	00813403          	ld	s0,8(sp)
    80001bc8:	01010113          	addi	sp,sp,16
    80001bcc:	00008067          	ret

0000000080001bd0 <_ZN5Riscv11trapHandlerEv>:

void Riscv::trapHandler() {
    80001bd0:	f8010113          	addi	sp,sp,-128
    80001bd4:	06113c23          	sd	ra,120(sp)
    80001bd8:	06813823          	sd	s0,112(sp)
    80001bdc:	06913423          	sd	s1,104(sp)
    80001be0:	07213023          	sd	s2,96(sp)
    80001be4:	05313c23          	sd	s3,88(sp)
    80001be8:	05413823          	sd	s4,80(sp)
    80001bec:	05513423          	sd	s5,72(sp)
    80001bf0:	05613023          	sd	s6,64(sp)
    80001bf4:	08010413          	addi	s0,sp,128
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80001bf8:	142027f3          	csrr	a5,scause
    80001bfc:	faf43423          	sd	a5,-88(s0)
    return scause;
    80001c00:	fa843703          	ld	a4,-88(s0)
    __asm__ volatile ("ld %0, 10*8(fp)" : "=r"(a0));
    80001c04:	05043783          	ld	a5,80(s0)
    80001c08:	faf43023          	sd	a5,-96(s0)
    return a0;
    80001c0c:	fa043783          	ld	a5,-96(s0)
    __asm__ volatile ("ld %0, 11*8(fp)" : "=r"(a1));
    80001c10:	05843683          	ld	a3,88(s0)
    80001c14:	f8d43c23          	sd	a3,-104(s0)
    return a1;
    80001c18:	f9843483          	ld	s1,-104(s0)
    __asm__ volatile ("ld %0, 12*8(fp)" : "=r"(a2));
    80001c1c:	06043683          	ld	a3,96(s0)
    80001c20:	f8d43823          	sd	a3,-112(s0)
    return a2;
    80001c24:	f9043983          	ld	s3,-112(s0)
    __asm__ volatile ("ld %0, 13*8(fp)" : "=r"(a3));
    80001c28:	06843683          	ld	a3,104(s0)
    80001c2c:	f8d43423          	sd	a3,-120(s0)
    return a3;
    80001c30:	f8843903          	ld	s2,-120(s0)
    uint64 a3 = r_a3();

    uint64 sepc;
    uint64 sstatus;

    switch (scause) {
    80001c34:	fff00693          	li	a3,-1
    80001c38:	03f69693          	slli	a3,a3,0x3f
    80001c3c:	00168693          	addi	a3,a3,1
    80001c40:	1cd70e63          	beq	a4,a3,80001e1c <_ZN5Riscv11trapHandlerEv+0x24c>
    80001c44:	fff00693          	li	a3,-1
    80001c48:	03f69693          	slli	a3,a3,0x3f
    80001c4c:	00168693          	addi	a3,a3,1
    80001c50:	04e6ee63          	bltu	a3,a4,80001cac <_ZN5Riscv11trapHandlerEv+0xdc>
    80001c54:	ff870713          	addi	a4,a4,-8
    80001c58:	00100693          	li	a3,1
    80001c5c:	1ce6e463          	bltu	a3,a4,80001e24 <_ZN5Riscv11trapHandlerEv+0x254>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001c60:	14102773          	csrr	a4,sepc
    80001c64:	fae43c23          	sd	a4,-72(s0)
    return sepc;
    80001c68:	fb843703          	ld	a4,-72(s0)
        case 0x08:
        case 0x09:
            //ecall: software interrupt
            sepc = r_sepc() + 4;
    80001c6c:	00470a93          	addi	s5,a4,4
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001c70:	100026f3          	csrr	a3,sstatus
    80001c74:	fad43823          	sd	a3,-80(s0)
    return sstatus;
    80001c78:	fb043a03          	ld	s4,-80(s0)
            sstatus = r_sstatus();
            void* mem;
            uint64* stack;
            PCB** handleAddr;
            switch(a0){
    80001c7c:	01300693          	li	a3,19
    80001c80:	04f6c463          	blt	a3,a5,80001cc8 <_ZN5Riscv11trapHandlerEv+0xf8>
    80001c84:	08f05a63          	blez	a5,80001d18 <_ZN5Riscv11trapHandlerEv+0x148>
    80001c88:	01300713          	li	a4,19
    80001c8c:	08f76663          	bltu	a4,a5,80001d18 <_ZN5Riscv11trapHandlerEv+0x148>
    80001c90:	00279793          	slli	a5,a5,0x2
    80001c94:	00004717          	auipc	a4,0x4
    80001c98:	38c70713          	addi	a4,a4,908 # 80006020 <CONSOLE_STATUS+0x10>
    80001c9c:	00e787b3          	add	a5,a5,a4
    80001ca0:	0007a783          	lw	a5,0(a5)
    80001ca4:	00e787b3          	add	a5,a5,a4
    80001ca8:	00078067          	jr	a5
    switch (scause) {
    80001cac:	fff00793          	li	a5,-1
    80001cb0:	03f79793          	slli	a5,a5,0x3f
    80001cb4:	00978793          	addi	a5,a5,9
    80001cb8:	16f71663          	bne	a4,a5,80001e24 <_ZN5Riscv11trapHandlerEv+0x254>
            //timer interrupt
            mc_sip(SIP_SSIP);
            break;
        case 0x8000000000000009UL:
            //external hardware interrupt
            console_handler();
    80001cbc:	00004097          	auipc	ra,0x4
    80001cc0:	d74080e7          	jalr	-652(ra) # 80005a30 <console_handler>
            break;
    80001cc4:	1600006f          	j	80001e24 <_ZN5Riscv11trapHandlerEv+0x254>
    80001cc8:	05100693          	li	a3,81
    80001ccc:	04d79663          	bne	a5,a3,80001d18 <_ZN5Riscv11trapHandlerEv+0x148>
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001cd0:	100a1073          	csrw	sstatus,s4
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80001cd4:	10000793          	li	a5,256
    80001cd8:	1007b073          	csrc	sstatus,a5
                    w_sepc(sepc+4);
    80001cdc:	00870713          	addi	a4,a4,8
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001ce0:	14171073          	csrw	sepc,a4
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80001ce4:	00200793          	li	a5,2
    80001ce8:	1447b073          	csrc	sip,a5
}
    80001cec:	1380006f          	j	80001e24 <_ZN5Riscv11trapHandlerEv+0x254>
    80001cf0:	00005797          	auipc	a5,0x5
    80001cf4:	6087c783          	lbu	a5,1544(a5) # 800072f8 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80001cf8:	00079863          	bnez	a5,80001d08 <_ZN5Riscv11trapHandlerEv+0x138>
    80001cfc:	00100793          	li	a5,1
    80001d00:	00005717          	auipc	a4,0x5
    80001d04:	5ef70c23          	sb	a5,1528(a4) # 800072f8 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
                    mem = MemoryAllocator::getInstance().allocate((size_t) a1);
    80001d08:	00048513          	mv	a0,s1
    80001d0c:	00000097          	auipc	ra,0x0
    80001d10:	140080e7          	jalr	320(ra) # 80001e4c <_ZN15MemoryAllocator8allocateEm>
}

inline void Riscv::push_a0(long a0) {
    __asm__ volatile ("sd %0, 10*8(fp)" : : "r"(a0));
    80001d14:	04a43823          	sd	a0,80(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001d18:	100a1073          	csrw	sstatus,s4
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001d1c:	141a9073          	csrw	sepc,s5
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80001d20:	00200793          	li	a5,2
    80001d24:	1447b073          	csrc	sip,a5
}
    80001d28:	0fc0006f          	j	80001e24 <_ZN5Riscv11trapHandlerEv+0x254>
    80001d2c:	00005797          	auipc	a5,0x5
    80001d30:	5cc7c783          	lbu	a5,1484(a5) # 800072f8 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80001d34:	00079863          	bnez	a5,80001d44 <_ZN5Riscv11trapHandlerEv+0x174>
    80001d38:	00100793          	li	a5,1
    80001d3c:	00005717          	auipc	a4,0x5
    80001d40:	5af70e23          	sb	a5,1468(a4) # 800072f8 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
                    push_a0(MemoryAllocator::getInstance().deallocate((void *)a1));
    80001d44:	00048513          	mv	a0,s1
    80001d48:	00000097          	auipc	ra,0x0
    80001d4c:	1ec080e7          	jalr	492(ra) # 80001f34 <_ZN15MemoryAllocator10deallocateEPv>
    __asm__ volatile ("sd %0, 10*8(fp)" : : "r"(a0));
    80001d50:	04a43823          	sd	a0,80(s0)
}
    80001d54:	fc5ff06f          	j	80001d18 <_ZN5Riscv11trapHandlerEv+0x148>
                    if((uint64*)a1!= nullptr) stack = (uint64*)MemoryAllocator::getInstance().allocate(((DEFAULT_STACK_SIZE + 16+ MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE));
    80001d58:	08048663          	beqz	s1,80001de4 <_ZN5Riscv11trapHandlerEv+0x214>
    80001d5c:	00005797          	auipc	a5,0x5
    80001d60:	59c7c783          	lbu	a5,1436(a5) # 800072f8 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80001d64:	00079863          	bnez	a5,80001d74 <_ZN5Riscv11trapHandlerEv+0x1a4>
    80001d68:	00100793          	li	a5,1
    80001d6c:	00005717          	auipc	a4,0x5
    80001d70:	58f70623          	sb	a5,1420(a4) # 800072f8 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80001d74:	04100513          	li	a0,65
    80001d78:	00000097          	auipc	ra,0x0
    80001d7c:	0d4080e7          	jalr	212(ra) # 80001e4c <_ZN15MemoryAllocator8allocateEm>
    80001d80:	00050b13          	mv	s6,a0
                    (*handleAddr) = new PCB((PCB::Body)a1, (void*)a2, stack);
    80001d84:	03000513          	li	a0,48
    80001d88:	00000097          	auipc	ra,0x0
    80001d8c:	b64080e7          	jalr	-1180(ra) # 800018ec <_Znwm>
    80001d90:	00048793          	mv	a5,s1
        this->body = body;
    80001d94:	00953023          	sd	s1,0(a0)
        this->stack = stack;
    80001d98:	01653423          	sd	s6,8(a0)
                   stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
    80001d9c:	040b0863          	beqz	s6,80001dec <_ZN5Riscv11trapHandlerEv+0x21c>
    80001da0:	00008737          	lui	a4,0x8
    80001da4:	00eb0b33          	add	s6,s6,a4
        context = {(uint64) &wrapper,
    80001da8:	00005717          	auipc	a4,0x5
    80001dac:	4b073703          	ld	a4,1200(a4) # 80007258 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001db0:	00e53c23          	sd	a4,24(a0)
    80001db4:	03653023          	sd	s6,32(a0)
        this->args = args;
    80001db8:	01353823          	sd	s3,16(a0)
        state = READY;
    80001dbc:	02052423          	sw	zero,40(a0)
    80001dc0:	00a93023          	sd	a0,0(s2)
                    if((PCB::Body)a1)Scheduler::put(*handleAddr);
    80001dc4:	00078663          	beqz	a5,80001dd0 <_ZN5Riscv11trapHandlerEv+0x200>
    80001dc8:	fffff097          	auipc	ra,0xfffff
    80001dcc:	7c0080e7          	jalr	1984(ra) # 80001588 <_ZN9Scheduler3putEP3PCB>
                    if(!(*handleAddr))push_a0(-1);
    80001dd0:	00093783          	ld	a5,0(s2)
    80001dd4:	02078063          	beqz	a5,80001df4 <_ZN5Riscv11trapHandlerEv+0x224>
    __asm__ volatile ("sd %0, 10*8(fp)" : : "r"(a0));
    80001dd8:	00000793          	li	a5,0
    80001ddc:	04f43823          	sd	a5,80(s0)
}
    80001de0:	f39ff06f          	j	80001d18 <_ZN5Riscv11trapHandlerEv+0x148>
                    else stack = nullptr;
    80001de4:	00000b13          	li	s6,0
    80001de8:	f9dff06f          	j	80001d84 <_ZN5Riscv11trapHandlerEv+0x1b4>
                   stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
    80001dec:	00000b13          	li	s6,0
    80001df0:	fb9ff06f          	j	80001da8 <_ZN5Riscv11trapHandlerEv+0x1d8>
    __asm__ volatile ("sd %0, 10*8(fp)" : : "r"(a0));
    80001df4:	fff00793          	li	a5,-1
    80001df8:	04f43823          	sd	a5,80(s0)
}
    80001dfc:	fddff06f          	j	80001dd8 <_ZN5Riscv11trapHandlerEv+0x208>
                    push_a0(PCB::exit());
    80001e00:	fffff097          	auipc	ra,0xfffff
    80001e04:	64c080e7          	jalr	1612(ra) # 8000144c <_ZN3PCB4exitEv>
    __asm__ volatile ("sd %0, 10*8(fp)" : : "r"(a0));
    80001e08:	04a43823          	sd	a0,80(s0)
}
    80001e0c:	f0dff06f          	j	80001d18 <_ZN5Riscv11trapHandlerEv+0x148>
                    PCB::dispatch();
    80001e10:	fffff097          	auipc	ra,0xfffff
    80001e14:	5b4080e7          	jalr	1460(ra) # 800013c4 <_ZN3PCB8dispatchEv>
                    break;
    80001e18:	f01ff06f          	j	80001d18 <_ZN5Riscv11trapHandlerEv+0x148>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80001e1c:	00200793          	li	a5,2
    80001e20:	1447b073          	csrc	sip,a5
        default:
            return;
            //printString("ERROR: Unexpected interrupt!");
    }

    80001e24:	07813083          	ld	ra,120(sp)
    80001e28:	07013403          	ld	s0,112(sp)
    80001e2c:	06813483          	ld	s1,104(sp)
    80001e30:	06013903          	ld	s2,96(sp)
    80001e34:	05813983          	ld	s3,88(sp)
    80001e38:	05013a03          	ld	s4,80(sp)
    80001e3c:	04813a83          	ld	s5,72(sp)
    80001e40:	04013b03          	ld	s6,64(sp)
    80001e44:	08010113          	addi	sp,sp,128
    80001e48:	00008067          	ret

0000000080001e4c <_ZN15MemoryAllocator8allocateEm>:
Block *MemoryAllocator::free_list = nullptr;
Block *MemoryAllocator::allocated_list = nullptr;


// Allocate memory
void *MemoryAllocator::allocate(size_t size) {
    80001e4c:	ff010113          	addi	sp,sp,-16
    80001e50:	00813423          	sd	s0,8(sp)
    80001e54:	01010413          	addi	s0,sp,16
    80001e58:	00050613          	mv	a2,a0
    size_t sizeToAllocate = size * MEM_BLOCK_SIZE;
    80001e5c:	00651713          	slli	a4,a0,0x6

    Block *prev = nullptr;
    Block *current = free_list;
    80001e60:	00005517          	auipc	a0,0x5
    80001e64:	4a053503          	ld	a0,1184(a0) # 80007300 <_ZN15MemoryAllocator9free_listE>
    Block *prev = nullptr;
    80001e68:	00000693          	li	a3,0

    // Find a free block that is large enough
    while (current != nullptr) {
    80001e6c:	06050e63          	beqz	a0,80001ee8 <_ZN15MemoryAllocator8allocateEm+0x9c>

        if (current->size >= sizeToAllocate) {
    80001e70:	00053783          	ld	a5,0(a0)
    80001e74:	00e7f863          	bgeu	a5,a4,80001e84 <_ZN15MemoryAllocator8allocateEm+0x38>
            // Return the memory

            void *userPtr = (Block *) ((uint64 *) current + sizeof(Block));
            return userPtr;
        }
        prev = current;
    80001e78:	00050693          	mv	a3,a0
        current = current->next;
    80001e7c:	00853503          	ld	a0,8(a0)
    while (current != nullptr) {
    80001e80:	fedff06f          	j	80001e6c <_ZN15MemoryAllocator8allocateEm+0x20>
            if (prev == nullptr) {
    80001e84:	06068863          	beqz	a3,80001ef4 <_ZN15MemoryAllocator8allocateEm+0xa8>
                prev->next = current->next;
    80001e88:	00853783          	ld	a5,8(a0)
    80001e8c:	00f6b423          	sd	a5,8(a3)
            if (current->size - sizeToAllocate >= MEM_BLOCK_SIZE) {
    80001e90:	00053783          	ld	a5,0(a0)
    80001e94:	40e787b3          	sub	a5,a5,a4
    80001e98:	03f00593          	li	a1,63
    80001e9c:	02f5f863          	bgeu	a1,a5,80001ecc <_ZN15MemoryAllocator8allocateEm+0x80>
                Block *newBlock = (Block *) ((uint64 *) current + sizeToAllocate);
    80001ea0:	00961613          	slli	a2,a2,0x9
    80001ea4:	00c50633          	add	a2,a0,a2
                newBlock->size = current->size - sizeToAllocate;
    80001ea8:	00f63023          	sd	a5,0(a2)
                current->size = sizeToAllocate;
    80001eac:	00e53023          	sd	a4,0(a0)
                if (!free_list) {
    80001eb0:	00005797          	auipc	a5,0x5
    80001eb4:	4507b783          	ld	a5,1104(a5) # 80007300 <_ZN15MemoryAllocator9free_listE>
    80001eb8:	04078663          	beqz	a5,80001f04 <_ZN15MemoryAllocator8allocateEm+0xb8>
                } else if (!prev) {
    80001ebc:	04068c63          	beqz	a3,80001f14 <_ZN15MemoryAllocator8allocateEm+0xc8>
                    prev->next = newBlock;
    80001ec0:	00c6b423          	sd	a2,8(a3)
                    newBlock->next = current->next;
    80001ec4:	00853783          	ld	a5,8(a0)
    80001ec8:	00f63423          	sd	a5,8(a2)
            if (!allocated_list) {
    80001ecc:	00005797          	auipc	a5,0x5
    80001ed0:	43c7b783          	ld	a5,1084(a5) # 80007308 <_ZN15MemoryAllocator14allocated_listE>
    80001ed4:	04078863          	beqz	a5,80001f24 <_ZN15MemoryAllocator8allocateEm+0xd8>
                current->next = allocated_list;
    80001ed8:	00f53423          	sd	a5,8(a0)
                allocated_list = current;
    80001edc:	00005797          	auipc	a5,0x5
    80001ee0:	42a7b623          	sd	a0,1068(a5) # 80007308 <_ZN15MemoryAllocator14allocated_listE>
            void *userPtr = (Block *) ((uint64 *) current + sizeof(Block));
    80001ee4:	08050513          	addi	a0,a0,128
    }

    // No block was found
    return nullptr;
}
    80001ee8:	00813403          	ld	s0,8(sp)
    80001eec:	01010113          	addi	sp,sp,16
    80001ef0:	00008067          	ret
                free_list = current->next;
    80001ef4:	00853783          	ld	a5,8(a0)
    80001ef8:	00005597          	auipc	a1,0x5
    80001efc:	40f5b423          	sd	a5,1032(a1) # 80007300 <_ZN15MemoryAllocator9free_listE>
    80001f00:	f91ff06f          	j	80001e90 <_ZN15MemoryAllocator8allocateEm+0x44>
                    free_list = newBlock;
    80001f04:	00005797          	auipc	a5,0x5
    80001f08:	3ec7be23          	sd	a2,1020(a5) # 80007300 <_ZN15MemoryAllocator9free_listE>
                    newBlock->next = nullptr;
    80001f0c:	00063423          	sd	zero,8(a2)
    80001f10:	fbdff06f          	j	80001ecc <_ZN15MemoryAllocator8allocateEm+0x80>
                    newBlock->next = free_list;
    80001f14:	00f63423          	sd	a5,8(a2)
                    free_list = newBlock;
    80001f18:	00005797          	auipc	a5,0x5
    80001f1c:	3ec7b423          	sd	a2,1000(a5) # 80007300 <_ZN15MemoryAllocator9free_listE>
    80001f20:	fadff06f          	j	80001ecc <_ZN15MemoryAllocator8allocateEm+0x80>
                allocated_list = current;
    80001f24:	00005797          	auipc	a5,0x5
    80001f28:	3ea7b223          	sd	a0,996(a5) # 80007308 <_ZN15MemoryAllocator14allocated_listE>
                allocated_list->next = nullptr;
    80001f2c:	00053423          	sd	zero,8(a0)
    80001f30:	fb5ff06f          	j	80001ee4 <_ZN15MemoryAllocator8allocateEm+0x98>

0000000080001f34 <_ZN15MemoryAllocator10deallocateEPv>:

// Deallocate memory
int MemoryAllocator::deallocate(void *ptr) {
    80001f34:	ff010113          	addi	sp,sp,-16
    80001f38:	00813423          	sd	s0,8(sp)
    80001f3c:	01010413          	addi	s0,sp,16
    Block *block = (Block *) ((uint64 *) ptr - sizeof(Block));
    80001f40:	f8050713          	addi	a4,a0,-128
    Block *tmpPrev = nullptr;
    Block *tmp = allocated_list;
    80001f44:	00005797          	auipc	a5,0x5
    80001f48:	3c47b783          	ld	a5,964(a5) # 80007308 <_ZN15MemoryAllocator14allocated_listE>
    Block *tmpPrev = nullptr;
    80001f4c:	00000693          	li	a3,0
    uint8 flag = 0;

    //Check if the block given was previously allocated
    while (tmp) {
    80001f50:	00078a63          	beqz	a5,80001f64 <_ZN15MemoryAllocator10deallocateEPv+0x30>
        if (tmp == block) {
    80001f54:	04e78263          	beq	a5,a4,80001f98 <_ZN15MemoryAllocator10deallocateEPv+0x64>
            flag = 1;
            break;
        }
        tmpPrev = tmp;
    80001f58:	00078693          	mv	a3,a5
        tmp = tmp->next;
    80001f5c:	0087b783          	ld	a5,8(a5)
    while (tmp) {
    80001f60:	ff1ff06f          	j	80001f50 <_ZN15MemoryAllocator10deallocateEPv+0x1c>
    uint8 flag = 0;
    80001f64:	00000613          	li	a2,0
    }
    if (flag == 0) return -1;
    80001f68:	0e060263          	beqz	a2,8000204c <_ZN15MemoryAllocator10deallocateEPv+0x118>

    // Found a block, remove it from the allocated list
    if (tmpPrev != nullptr) {
    80001f6c:	02068a63          	beqz	a3,80001fa0 <_ZN15MemoryAllocator10deallocateEPv+0x6c>
        tmpPrev->next = tmp->next;
    80001f70:	0087b783          	ld	a5,8(a5)
    80001f74:	00f6b423          	sd	a5,8(a3)
        allocated_list = tmp->next;
    }


    Block *prev = nullptr;
    Block *current = free_list;
    80001f78:	00005797          	auipc	a5,0x5
    80001f7c:	3887b783          	ld	a5,904(a5) # 80007300 <_ZN15MemoryAllocator9free_listE>
    Block *prev = nullptr;
    80001f80:	00000693          	li	a3,0

    // Add it to the free_list
    while (current != nullptr) {
    80001f84:	02078c63          	beqz	a5,80001fbc <_ZN15MemoryAllocator10deallocateEPv+0x88>
        if ((uint64 *) block < (uint64 *) current) {
    80001f88:	02f76463          	bltu	a4,a5,80001fb0 <_ZN15MemoryAllocator10deallocateEPv+0x7c>
            } else {
                free_list = block;
            }
            break;
        }
        prev = current;
    80001f8c:	00078693          	mv	a3,a5
        current = current->next;
    80001f90:	0087b783          	ld	a5,8(a5)
    while (current != nullptr) {
    80001f94:	ff1ff06f          	j	80001f84 <_ZN15MemoryAllocator10deallocateEPv+0x50>
            flag = 1;
    80001f98:	00100613          	li	a2,1
    80001f9c:	fcdff06f          	j	80001f68 <_ZN15MemoryAllocator10deallocateEPv+0x34>
        allocated_list = tmp->next;
    80001fa0:	0087b783          	ld	a5,8(a5)
    80001fa4:	00005697          	auipc	a3,0x5
    80001fa8:	36f6b223          	sd	a5,868(a3) # 80007308 <_ZN15MemoryAllocator14allocated_listE>
    80001fac:	fcdff06f          	j	80001f78 <_ZN15MemoryAllocator10deallocateEPv+0x44>
            block->next = current;
    80001fb0:	f8f53423          	sd	a5,-120(a0)
            if (prev != nullptr) {
    80001fb4:	04068463          	beqz	a3,80001ffc <_ZN15MemoryAllocator10deallocateEPv+0xc8>
                prev->next = block;
    80001fb8:	00e6b423          	sd	a4,8(a3)
    }
    if (current == nullptr) {
    80001fbc:	04078663          	beqz	a5,80002008 <_ZN15MemoryAllocator10deallocateEPv+0xd4>
        //current = block;
        block->next = nullptr;
    }

    //Merge it with neighbour blocks if possible
    if (prev != nullptr) {
    80001fc0:	00068a63          	beqz	a3,80001fd4 <_ZN15MemoryAllocator10deallocateEPv+0xa0>
        if ((uint64 *) prev + prev->size == (uint64 *) block) {
    80001fc4:	0006b603          	ld	a2,0(a3)
    80001fc8:	00361793          	slli	a5,a2,0x3
    80001fcc:	00f687b3          	add	a5,a3,a5
    80001fd0:	04e78263          	beq	a5,a4,80002014 <_ZN15MemoryAllocator10deallocateEPv+0xe0>
            prev->size = prev->size + block->size;
            prev->next = block->next;
            block = prev;
        }
    }
    if (block->next != nullptr) {
    80001fd4:	00873783          	ld	a5,8(a4)
    80001fd8:	06078e63          	beqz	a5,80002054 <_ZN15MemoryAllocator10deallocateEPv+0x120>
        if ((uint64 *) block + block->size == (uint64 *) block->next) {
    80001fdc:	00073603          	ld	a2,0(a4)
    80001fe0:	00361693          	slli	a3,a2,0x3
    80001fe4:	00d706b3          	add	a3,a4,a3
    80001fe8:	04d78463          	beq	a5,a3,80002030 <_ZN15MemoryAllocator10deallocateEPv+0xfc>
            block->size += block->next->size;
            block->next = block->next->next;
        }
    }

    return 0;
    80001fec:	00000513          	li	a0,0

}
    80001ff0:	00813403          	ld	s0,8(sp)
    80001ff4:	01010113          	addi	sp,sp,16
    80001ff8:	00008067          	ret
                free_list = block;
    80001ffc:	00005617          	auipc	a2,0x5
    80002000:	30e63223          	sd	a4,772(a2) # 80007300 <_ZN15MemoryAllocator9free_listE>
    80002004:	fb9ff06f          	j	80001fbc <_ZN15MemoryAllocator10deallocateEPv+0x88>
        prev->next = block;
    80002008:	00e6b423          	sd	a4,8(a3)
        block->next = nullptr;
    8000200c:	f8053423          	sd	zero,-120(a0)
    80002010:	fb1ff06f          	j	80001fc0 <_ZN15MemoryAllocator10deallocateEPv+0x8c>
            prev->size = prev->size + block->size;
    80002014:	f8053783          	ld	a5,-128(a0)
    80002018:	00f60633          	add	a2,a2,a5
    8000201c:	00c6b023          	sd	a2,0(a3)
            prev->next = block->next;
    80002020:	f8853783          	ld	a5,-120(a0)
    80002024:	00f6b423          	sd	a5,8(a3)
            block = prev;
    80002028:	00068713          	mv	a4,a3
    8000202c:	fa9ff06f          	j	80001fd4 <_ZN15MemoryAllocator10deallocateEPv+0xa0>
            block->size += block->next->size;
    80002030:	0007b683          	ld	a3,0(a5)
    80002034:	00d60633          	add	a2,a2,a3
    80002038:	00c73023          	sd	a2,0(a4)
            block->next = block->next->next;
    8000203c:	0087b783          	ld	a5,8(a5)
    80002040:	00f73423          	sd	a5,8(a4)
    return 0;
    80002044:	00000513          	li	a0,0
    80002048:	fa9ff06f          	j	80001ff0 <_ZN15MemoryAllocator10deallocateEPv+0xbc>
    if (flag == 0) return -1;
    8000204c:	fff00513          	li	a0,-1
    80002050:	fa1ff06f          	j	80001ff0 <_ZN15MemoryAllocator10deallocateEPv+0xbc>
    return 0;
    80002054:	00000513          	li	a0,0
    80002058:	f99ff06f          	j	80001ff0 <_ZN15MemoryAllocator10deallocateEPv+0xbc>

000000008000205c <_Z4putcc>:
//
//    while (--i >= 0)
//        __putc(buf[i]);
//}

void putc(char c){
    8000205c:	ff010113          	addi	sp,sp,-16
    80002060:	00113423          	sd	ra,8(sp)
    80002064:	00813023          	sd	s0,0(sp)
    80002068:	01010413          	addi	s0,sp,16
    __putc(c);
    8000206c:	00004097          	auipc	ra,0x4
    80002070:	950080e7          	jalr	-1712(ra) # 800059bc <__putc>
}
    80002074:	00813083          	ld	ra,8(sp)
    80002078:	00013403          	ld	s0,0(sp)
    8000207c:	01010113          	addi	sp,sp,16
    80002080:	00008067          	ret

0000000080002084 <_Z4getcv>:

char getc(){
    80002084:	ff010113          	addi	sp,sp,-16
    80002088:	00113423          	sd	ra,8(sp)
    8000208c:	00813023          	sd	s0,0(sp)
    80002090:	01010413          	addi	s0,sp,16
    return __getc();
    80002094:	00004097          	auipc	ra,0x4
    80002098:	964080e7          	jalr	-1692(ra) # 800059f8 <__getc>
    8000209c:	00813083          	ld	ra,8(sp)
    800020a0:	00013403          	ld	s0,0(sp)
    800020a4:	01010113          	addi	sp,sp,16
    800020a8:	00008067          	ret

00000000800020ac <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800020ac:	fe010113          	addi	sp,sp,-32
    800020b0:	00113c23          	sd	ra,24(sp)
    800020b4:	00813823          	sd	s0,16(sp)
    800020b8:	00913423          	sd	s1,8(sp)
    800020bc:	01213023          	sd	s2,0(sp)
    800020c0:	02010413          	addi	s0,sp,32
    800020c4:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800020c8:	00100793          	li	a5,1
    800020cc:	02a7f863          	bgeu	a5,a0,800020fc <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800020d0:	00a00793          	li	a5,10
    800020d4:	02f577b3          	remu	a5,a0,a5
    800020d8:	02078e63          	beqz	a5,80002114 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800020dc:	fff48513          	addi	a0,s1,-1
    800020e0:	00000097          	auipc	ra,0x0
    800020e4:	fcc080e7          	jalr	-52(ra) # 800020ac <_ZL9fibonaccim>
    800020e8:	00050913          	mv	s2,a0
    800020ec:	ffe48513          	addi	a0,s1,-2
    800020f0:	00000097          	auipc	ra,0x0
    800020f4:	fbc080e7          	jalr	-68(ra) # 800020ac <_ZL9fibonaccim>
    800020f8:	00a90533          	add	a0,s2,a0
}
    800020fc:	01813083          	ld	ra,24(sp)
    80002100:	01013403          	ld	s0,16(sp)
    80002104:	00813483          	ld	s1,8(sp)
    80002108:	00013903          	ld	s2,0(sp)
    8000210c:	02010113          	addi	sp,sp,32
    80002110:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80002114:	fffff097          	auipc	ra,0xfffff
    80002118:	26c080e7          	jalr	620(ra) # 80001380 <_Z15thread_dispatchv>
    8000211c:	fc1ff06f          	j	800020dc <_ZL9fibonaccim+0x30>

0000000080002120 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    80002120:	fe010113          	addi	sp,sp,-32
    80002124:	00113c23          	sd	ra,24(sp)
    80002128:	00813823          	sd	s0,16(sp)
    8000212c:	00913423          	sd	s1,8(sp)
    80002130:	01213023          	sd	s2,0(sp)
    80002134:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80002138:	00000913          	li	s2,0
    8000213c:	0380006f          	j	80002174 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80002140:	fffff097          	auipc	ra,0xfffff
    80002144:	240080e7          	jalr	576(ra) # 80001380 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80002148:	00148493          	addi	s1,s1,1
    8000214c:	000027b7          	lui	a5,0x2
    80002150:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80002154:	0097ee63          	bltu	a5,s1,80002170 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80002158:	00000713          	li	a4,0
    8000215c:	000077b7          	lui	a5,0x7
    80002160:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80002164:	fce7eee3          	bltu	a5,a4,80002140 <_ZN7WorkerA11workerBodyAEPv+0x20>
    80002168:	00170713          	addi	a4,a4,1
    8000216c:	ff1ff06f          	j	8000215c <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80002170:	00190913          	addi	s2,s2,1
    80002174:	00900793          	li	a5,9
    80002178:	0527e063          	bltu	a5,s2,800021b8 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    8000217c:	00004517          	auipc	a0,0x4
    80002180:	ef450513          	addi	a0,a0,-268 # 80006070 <CONSOLE_STATUS+0x60>
    80002184:	00001097          	auipc	ra,0x1
    80002188:	e74080e7          	jalr	-396(ra) # 80002ff8 <_Z11printStringPKc>
    8000218c:	00000613          	li	a2,0
    80002190:	00a00593          	li	a1,10
    80002194:	0009051b          	sext.w	a0,s2
    80002198:	00001097          	auipc	ra,0x1
    8000219c:	010080e7          	jalr	16(ra) # 800031a8 <_Z8printIntiii>
    800021a0:	00004517          	auipc	a0,0x4
    800021a4:	14850513          	addi	a0,a0,328 # 800062e8 <CONSOLE_STATUS+0x2d8>
    800021a8:	00001097          	auipc	ra,0x1
    800021ac:	e50080e7          	jalr	-432(ra) # 80002ff8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800021b0:	00000493          	li	s1,0
    800021b4:	f99ff06f          	j	8000214c <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    800021b8:	00004517          	auipc	a0,0x4
    800021bc:	ec050513          	addi	a0,a0,-320 # 80006078 <CONSOLE_STATUS+0x68>
    800021c0:	00001097          	auipc	ra,0x1
    800021c4:	e38080e7          	jalr	-456(ra) # 80002ff8 <_Z11printStringPKc>
    finishedA = true;
    800021c8:	00100793          	li	a5,1
    800021cc:	00005717          	auipc	a4,0x5
    800021d0:	14f70223          	sb	a5,324(a4) # 80007310 <_ZL9finishedA>
}
    800021d4:	01813083          	ld	ra,24(sp)
    800021d8:	01013403          	ld	s0,16(sp)
    800021dc:	00813483          	ld	s1,8(sp)
    800021e0:	00013903          	ld	s2,0(sp)
    800021e4:	02010113          	addi	sp,sp,32
    800021e8:	00008067          	ret

00000000800021ec <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    800021ec:	fe010113          	addi	sp,sp,-32
    800021f0:	00113c23          	sd	ra,24(sp)
    800021f4:	00813823          	sd	s0,16(sp)
    800021f8:	00913423          	sd	s1,8(sp)
    800021fc:	01213023          	sd	s2,0(sp)
    80002200:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80002204:	00000913          	li	s2,0
    80002208:	0380006f          	j	80002240 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    8000220c:	fffff097          	auipc	ra,0xfffff
    80002210:	174080e7          	jalr	372(ra) # 80001380 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80002214:	00148493          	addi	s1,s1,1
    80002218:	000027b7          	lui	a5,0x2
    8000221c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80002220:	0097ee63          	bltu	a5,s1,8000223c <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80002224:	00000713          	li	a4,0
    80002228:	000077b7          	lui	a5,0x7
    8000222c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80002230:	fce7eee3          	bltu	a5,a4,8000220c <_ZN7WorkerB11workerBodyBEPv+0x20>
    80002234:	00170713          	addi	a4,a4,1
    80002238:	ff1ff06f          	j	80002228 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    8000223c:	00190913          	addi	s2,s2,1
    80002240:	00f00793          	li	a5,15
    80002244:	0527e063          	bltu	a5,s2,80002284 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80002248:	00004517          	auipc	a0,0x4
    8000224c:	e4050513          	addi	a0,a0,-448 # 80006088 <CONSOLE_STATUS+0x78>
    80002250:	00001097          	auipc	ra,0x1
    80002254:	da8080e7          	jalr	-600(ra) # 80002ff8 <_Z11printStringPKc>
    80002258:	00000613          	li	a2,0
    8000225c:	00a00593          	li	a1,10
    80002260:	0009051b          	sext.w	a0,s2
    80002264:	00001097          	auipc	ra,0x1
    80002268:	f44080e7          	jalr	-188(ra) # 800031a8 <_Z8printIntiii>
    8000226c:	00004517          	auipc	a0,0x4
    80002270:	07c50513          	addi	a0,a0,124 # 800062e8 <CONSOLE_STATUS+0x2d8>
    80002274:	00001097          	auipc	ra,0x1
    80002278:	d84080e7          	jalr	-636(ra) # 80002ff8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000227c:	00000493          	li	s1,0
    80002280:	f99ff06f          	j	80002218 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80002284:	00004517          	auipc	a0,0x4
    80002288:	e0c50513          	addi	a0,a0,-500 # 80006090 <CONSOLE_STATUS+0x80>
    8000228c:	00001097          	auipc	ra,0x1
    80002290:	d6c080e7          	jalr	-660(ra) # 80002ff8 <_Z11printStringPKc>
    finishedB = true;
    80002294:	00100793          	li	a5,1
    80002298:	00005717          	auipc	a4,0x5
    8000229c:	06f70ca3          	sb	a5,121(a4) # 80007311 <_ZL9finishedB>
    thread_dispatch();
    800022a0:	fffff097          	auipc	ra,0xfffff
    800022a4:	0e0080e7          	jalr	224(ra) # 80001380 <_Z15thread_dispatchv>
}
    800022a8:	01813083          	ld	ra,24(sp)
    800022ac:	01013403          	ld	s0,16(sp)
    800022b0:	00813483          	ld	s1,8(sp)
    800022b4:	00013903          	ld	s2,0(sp)
    800022b8:	02010113          	addi	sp,sp,32
    800022bc:	00008067          	ret

00000000800022c0 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    800022c0:	fe010113          	addi	sp,sp,-32
    800022c4:	00113c23          	sd	ra,24(sp)
    800022c8:	00813823          	sd	s0,16(sp)
    800022cc:	00913423          	sd	s1,8(sp)
    800022d0:	01213023          	sd	s2,0(sp)
    800022d4:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800022d8:	00000493          	li	s1,0
    800022dc:	0400006f          	j	8000231c <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    800022e0:	00004517          	auipc	a0,0x4
    800022e4:	dc050513          	addi	a0,a0,-576 # 800060a0 <CONSOLE_STATUS+0x90>
    800022e8:	00001097          	auipc	ra,0x1
    800022ec:	d10080e7          	jalr	-752(ra) # 80002ff8 <_Z11printStringPKc>
    800022f0:	00000613          	li	a2,0
    800022f4:	00a00593          	li	a1,10
    800022f8:	00048513          	mv	a0,s1
    800022fc:	00001097          	auipc	ra,0x1
    80002300:	eac080e7          	jalr	-340(ra) # 800031a8 <_Z8printIntiii>
    80002304:	00004517          	auipc	a0,0x4
    80002308:	fe450513          	addi	a0,a0,-28 # 800062e8 <CONSOLE_STATUS+0x2d8>
    8000230c:	00001097          	auipc	ra,0x1
    80002310:	cec080e7          	jalr	-788(ra) # 80002ff8 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80002314:	0014849b          	addiw	s1,s1,1
    80002318:	0ff4f493          	andi	s1,s1,255
    8000231c:	00200793          	li	a5,2
    80002320:	fc97f0e3          	bgeu	a5,s1,800022e0 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80002324:	00004517          	auipc	a0,0x4
    80002328:	d8450513          	addi	a0,a0,-636 # 800060a8 <CONSOLE_STATUS+0x98>
    8000232c:	00001097          	auipc	ra,0x1
    80002330:	ccc080e7          	jalr	-820(ra) # 80002ff8 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80002334:	00700313          	li	t1,7
    thread_dispatch();
    80002338:	fffff097          	auipc	ra,0xfffff
    8000233c:	048080e7          	jalr	72(ra) # 80001380 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80002340:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80002344:	00004517          	auipc	a0,0x4
    80002348:	d7450513          	addi	a0,a0,-652 # 800060b8 <CONSOLE_STATUS+0xa8>
    8000234c:	00001097          	auipc	ra,0x1
    80002350:	cac080e7          	jalr	-852(ra) # 80002ff8 <_Z11printStringPKc>
    80002354:	00000613          	li	a2,0
    80002358:	00a00593          	li	a1,10
    8000235c:	0009051b          	sext.w	a0,s2
    80002360:	00001097          	auipc	ra,0x1
    80002364:	e48080e7          	jalr	-440(ra) # 800031a8 <_Z8printIntiii>
    80002368:	00004517          	auipc	a0,0x4
    8000236c:	f8050513          	addi	a0,a0,-128 # 800062e8 <CONSOLE_STATUS+0x2d8>
    80002370:	00001097          	auipc	ra,0x1
    80002374:	c88080e7          	jalr	-888(ra) # 80002ff8 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80002378:	00c00513          	li	a0,12
    8000237c:	00000097          	auipc	ra,0x0
    80002380:	d30080e7          	jalr	-720(ra) # 800020ac <_ZL9fibonaccim>
    80002384:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80002388:	00004517          	auipc	a0,0x4
    8000238c:	d3850513          	addi	a0,a0,-712 # 800060c0 <CONSOLE_STATUS+0xb0>
    80002390:	00001097          	auipc	ra,0x1
    80002394:	c68080e7          	jalr	-920(ra) # 80002ff8 <_Z11printStringPKc>
    80002398:	00000613          	li	a2,0
    8000239c:	00a00593          	li	a1,10
    800023a0:	0009051b          	sext.w	a0,s2
    800023a4:	00001097          	auipc	ra,0x1
    800023a8:	e04080e7          	jalr	-508(ra) # 800031a8 <_Z8printIntiii>
    800023ac:	00004517          	auipc	a0,0x4
    800023b0:	f3c50513          	addi	a0,a0,-196 # 800062e8 <CONSOLE_STATUS+0x2d8>
    800023b4:	00001097          	auipc	ra,0x1
    800023b8:	c44080e7          	jalr	-956(ra) # 80002ff8 <_Z11printStringPKc>
    800023bc:	0400006f          	j	800023fc <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    800023c0:	00004517          	auipc	a0,0x4
    800023c4:	ce050513          	addi	a0,a0,-800 # 800060a0 <CONSOLE_STATUS+0x90>
    800023c8:	00001097          	auipc	ra,0x1
    800023cc:	c30080e7          	jalr	-976(ra) # 80002ff8 <_Z11printStringPKc>
    800023d0:	00000613          	li	a2,0
    800023d4:	00a00593          	li	a1,10
    800023d8:	00048513          	mv	a0,s1
    800023dc:	00001097          	auipc	ra,0x1
    800023e0:	dcc080e7          	jalr	-564(ra) # 800031a8 <_Z8printIntiii>
    800023e4:	00004517          	auipc	a0,0x4
    800023e8:	f0450513          	addi	a0,a0,-252 # 800062e8 <CONSOLE_STATUS+0x2d8>
    800023ec:	00001097          	auipc	ra,0x1
    800023f0:	c0c080e7          	jalr	-1012(ra) # 80002ff8 <_Z11printStringPKc>
    for (; i < 6; i++) {
    800023f4:	0014849b          	addiw	s1,s1,1
    800023f8:	0ff4f493          	andi	s1,s1,255
    800023fc:	00500793          	li	a5,5
    80002400:	fc97f0e3          	bgeu	a5,s1,800023c0 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    80002404:	00004517          	auipc	a0,0x4
    80002408:	c7450513          	addi	a0,a0,-908 # 80006078 <CONSOLE_STATUS+0x68>
    8000240c:	00001097          	auipc	ra,0x1
    80002410:	bec080e7          	jalr	-1044(ra) # 80002ff8 <_Z11printStringPKc>
    finishedC = true;
    80002414:	00100793          	li	a5,1
    80002418:	00005717          	auipc	a4,0x5
    8000241c:	eef70d23          	sb	a5,-262(a4) # 80007312 <_ZL9finishedC>
    thread_dispatch();
    80002420:	fffff097          	auipc	ra,0xfffff
    80002424:	f60080e7          	jalr	-160(ra) # 80001380 <_Z15thread_dispatchv>
}
    80002428:	01813083          	ld	ra,24(sp)
    8000242c:	01013403          	ld	s0,16(sp)
    80002430:	00813483          	ld	s1,8(sp)
    80002434:	00013903          	ld	s2,0(sp)
    80002438:	02010113          	addi	sp,sp,32
    8000243c:	00008067          	ret

0000000080002440 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80002440:	fe010113          	addi	sp,sp,-32
    80002444:	00113c23          	sd	ra,24(sp)
    80002448:	00813823          	sd	s0,16(sp)
    8000244c:	00913423          	sd	s1,8(sp)
    80002450:	01213023          	sd	s2,0(sp)
    80002454:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80002458:	00a00493          	li	s1,10
    8000245c:	0400006f          	j	8000249c <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80002460:	00004517          	auipc	a0,0x4
    80002464:	c7050513          	addi	a0,a0,-912 # 800060d0 <CONSOLE_STATUS+0xc0>
    80002468:	00001097          	auipc	ra,0x1
    8000246c:	b90080e7          	jalr	-1136(ra) # 80002ff8 <_Z11printStringPKc>
    80002470:	00000613          	li	a2,0
    80002474:	00a00593          	li	a1,10
    80002478:	00048513          	mv	a0,s1
    8000247c:	00001097          	auipc	ra,0x1
    80002480:	d2c080e7          	jalr	-724(ra) # 800031a8 <_Z8printIntiii>
    80002484:	00004517          	auipc	a0,0x4
    80002488:	e6450513          	addi	a0,a0,-412 # 800062e8 <CONSOLE_STATUS+0x2d8>
    8000248c:	00001097          	auipc	ra,0x1
    80002490:	b6c080e7          	jalr	-1172(ra) # 80002ff8 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80002494:	0014849b          	addiw	s1,s1,1
    80002498:	0ff4f493          	andi	s1,s1,255
    8000249c:	00c00793          	li	a5,12
    800024a0:	fc97f0e3          	bgeu	a5,s1,80002460 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    800024a4:	00004517          	auipc	a0,0x4
    800024a8:	c3450513          	addi	a0,a0,-972 # 800060d8 <CONSOLE_STATUS+0xc8>
    800024ac:	00001097          	auipc	ra,0x1
    800024b0:	b4c080e7          	jalr	-1204(ra) # 80002ff8 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800024b4:	00500313          	li	t1,5
    thread_dispatch();
    800024b8:	fffff097          	auipc	ra,0xfffff
    800024bc:	ec8080e7          	jalr	-312(ra) # 80001380 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    800024c0:	01000513          	li	a0,16
    800024c4:	00000097          	auipc	ra,0x0
    800024c8:	be8080e7          	jalr	-1048(ra) # 800020ac <_ZL9fibonaccim>
    800024cc:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800024d0:	00004517          	auipc	a0,0x4
    800024d4:	c1850513          	addi	a0,a0,-1000 # 800060e8 <CONSOLE_STATUS+0xd8>
    800024d8:	00001097          	auipc	ra,0x1
    800024dc:	b20080e7          	jalr	-1248(ra) # 80002ff8 <_Z11printStringPKc>
    800024e0:	00000613          	li	a2,0
    800024e4:	00a00593          	li	a1,10
    800024e8:	0009051b          	sext.w	a0,s2
    800024ec:	00001097          	auipc	ra,0x1
    800024f0:	cbc080e7          	jalr	-836(ra) # 800031a8 <_Z8printIntiii>
    800024f4:	00004517          	auipc	a0,0x4
    800024f8:	df450513          	addi	a0,a0,-524 # 800062e8 <CONSOLE_STATUS+0x2d8>
    800024fc:	00001097          	auipc	ra,0x1
    80002500:	afc080e7          	jalr	-1284(ra) # 80002ff8 <_Z11printStringPKc>
    80002504:	0400006f          	j	80002544 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80002508:	00004517          	auipc	a0,0x4
    8000250c:	bc850513          	addi	a0,a0,-1080 # 800060d0 <CONSOLE_STATUS+0xc0>
    80002510:	00001097          	auipc	ra,0x1
    80002514:	ae8080e7          	jalr	-1304(ra) # 80002ff8 <_Z11printStringPKc>
    80002518:	00000613          	li	a2,0
    8000251c:	00a00593          	li	a1,10
    80002520:	00048513          	mv	a0,s1
    80002524:	00001097          	auipc	ra,0x1
    80002528:	c84080e7          	jalr	-892(ra) # 800031a8 <_Z8printIntiii>
    8000252c:	00004517          	auipc	a0,0x4
    80002530:	dbc50513          	addi	a0,a0,-580 # 800062e8 <CONSOLE_STATUS+0x2d8>
    80002534:	00001097          	auipc	ra,0x1
    80002538:	ac4080e7          	jalr	-1340(ra) # 80002ff8 <_Z11printStringPKc>
    for (; i < 16; i++) {
    8000253c:	0014849b          	addiw	s1,s1,1
    80002540:	0ff4f493          	andi	s1,s1,255
    80002544:	00f00793          	li	a5,15
    80002548:	fc97f0e3          	bgeu	a5,s1,80002508 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    8000254c:	00004517          	auipc	a0,0x4
    80002550:	bac50513          	addi	a0,a0,-1108 # 800060f8 <CONSOLE_STATUS+0xe8>
    80002554:	00001097          	auipc	ra,0x1
    80002558:	aa4080e7          	jalr	-1372(ra) # 80002ff8 <_Z11printStringPKc>
    finishedD = true;
    8000255c:	00100793          	li	a5,1
    80002560:	00005717          	auipc	a4,0x5
    80002564:	daf709a3          	sb	a5,-589(a4) # 80007313 <_ZL9finishedD>
    thread_dispatch();
    80002568:	fffff097          	auipc	ra,0xfffff
    8000256c:	e18080e7          	jalr	-488(ra) # 80001380 <_Z15thread_dispatchv>
}
    80002570:	01813083          	ld	ra,24(sp)
    80002574:	01013403          	ld	s0,16(sp)
    80002578:	00813483          	ld	s1,8(sp)
    8000257c:	00013903          	ld	s2,0(sp)
    80002580:	02010113          	addi	sp,sp,32
    80002584:	00008067          	ret

0000000080002588 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80002588:	fc010113          	addi	sp,sp,-64
    8000258c:	02113c23          	sd	ra,56(sp)
    80002590:	02813823          	sd	s0,48(sp)
    80002594:	02913423          	sd	s1,40(sp)
    80002598:	03213023          	sd	s2,32(sp)
    8000259c:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    800025a0:	02000513          	li	a0,32
    800025a4:	fffff097          	auipc	ra,0xfffff
    800025a8:	348080e7          	jalr	840(ra) # 800018ec <_Znwm>
    800025ac:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    800025b0:	fffff097          	auipc	ra,0xfffff
    800025b4:	4e0080e7          	jalr	1248(ra) # 80001a90 <_ZN6ThreadC1Ev>
    800025b8:	00005797          	auipc	a5,0x5
    800025bc:	be878793          	addi	a5,a5,-1048 # 800071a0 <_ZTV7WorkerA+0x10>
    800025c0:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    800025c4:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    800025c8:	00004517          	auipc	a0,0x4
    800025cc:	b4050513          	addi	a0,a0,-1216 # 80006108 <CONSOLE_STATUS+0xf8>
    800025d0:	00001097          	auipc	ra,0x1
    800025d4:	a28080e7          	jalr	-1496(ra) # 80002ff8 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    800025d8:	02000513          	li	a0,32
    800025dc:	fffff097          	auipc	ra,0xfffff
    800025e0:	310080e7          	jalr	784(ra) # 800018ec <_Znwm>
    800025e4:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    800025e8:	fffff097          	auipc	ra,0xfffff
    800025ec:	4a8080e7          	jalr	1192(ra) # 80001a90 <_ZN6ThreadC1Ev>
    800025f0:	00005797          	auipc	a5,0x5
    800025f4:	bd878793          	addi	a5,a5,-1064 # 800071c8 <_ZTV7WorkerB+0x10>
    800025f8:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    800025fc:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    80002600:	00004517          	auipc	a0,0x4
    80002604:	b2050513          	addi	a0,a0,-1248 # 80006120 <CONSOLE_STATUS+0x110>
    80002608:	00001097          	auipc	ra,0x1
    8000260c:	9f0080e7          	jalr	-1552(ra) # 80002ff8 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80002610:	02000513          	li	a0,32
    80002614:	fffff097          	auipc	ra,0xfffff
    80002618:	2d8080e7          	jalr	728(ra) # 800018ec <_Znwm>
    8000261c:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    80002620:	fffff097          	auipc	ra,0xfffff
    80002624:	470080e7          	jalr	1136(ra) # 80001a90 <_ZN6ThreadC1Ev>
    80002628:	00005797          	auipc	a5,0x5
    8000262c:	bc878793          	addi	a5,a5,-1080 # 800071f0 <_ZTV7WorkerC+0x10>
    80002630:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    80002634:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80002638:	00004517          	auipc	a0,0x4
    8000263c:	b0050513          	addi	a0,a0,-1280 # 80006138 <CONSOLE_STATUS+0x128>
    80002640:	00001097          	auipc	ra,0x1
    80002644:	9b8080e7          	jalr	-1608(ra) # 80002ff8 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80002648:	02000513          	li	a0,32
    8000264c:	fffff097          	auipc	ra,0xfffff
    80002650:	2a0080e7          	jalr	672(ra) # 800018ec <_Znwm>
    80002654:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    80002658:	fffff097          	auipc	ra,0xfffff
    8000265c:	438080e7          	jalr	1080(ra) # 80001a90 <_ZN6ThreadC1Ev>
    80002660:	00005797          	auipc	a5,0x5
    80002664:	bb878793          	addi	a5,a5,-1096 # 80007218 <_ZTV7WorkerD+0x10>
    80002668:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    8000266c:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80002670:	00004517          	auipc	a0,0x4
    80002674:	ae050513          	addi	a0,a0,-1312 # 80006150 <CONSOLE_STATUS+0x140>
    80002678:	00001097          	auipc	ra,0x1
    8000267c:	980080e7          	jalr	-1664(ra) # 80002ff8 <_Z11printStringPKc>
    80002680:	00c0006f          	j	8000268c <_Z20Threads_CPP_API_testv+0x104>
//    for(int i=0; i<4; i++) {
//        threads[i]->start();
//    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80002684:	fffff097          	auipc	ra,0xfffff
    80002688:	4ec080e7          	jalr	1260(ra) # 80001b70 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    8000268c:	00005797          	auipc	a5,0x5
    80002690:	c847c783          	lbu	a5,-892(a5) # 80007310 <_ZL9finishedA>
    80002694:	fe0788e3          	beqz	a5,80002684 <_Z20Threads_CPP_API_testv+0xfc>
    80002698:	00005797          	auipc	a5,0x5
    8000269c:	c797c783          	lbu	a5,-903(a5) # 80007311 <_ZL9finishedB>
    800026a0:	fe0782e3          	beqz	a5,80002684 <_Z20Threads_CPP_API_testv+0xfc>
    800026a4:	00005797          	auipc	a5,0x5
    800026a8:	c6e7c783          	lbu	a5,-914(a5) # 80007312 <_ZL9finishedC>
    800026ac:	fc078ce3          	beqz	a5,80002684 <_Z20Threads_CPP_API_testv+0xfc>
    800026b0:	00005797          	auipc	a5,0x5
    800026b4:	c637c783          	lbu	a5,-925(a5) # 80007313 <_ZL9finishedD>
    800026b8:	fc0786e3          	beqz	a5,80002684 <_Z20Threads_CPP_API_testv+0xfc>
    800026bc:	fc040493          	addi	s1,s0,-64
    800026c0:	0080006f          	j	800026c8 <_Z20Threads_CPP_API_testv+0x140>
    }

    for (auto thread: threads) { delete thread; }
    800026c4:	00848493          	addi	s1,s1,8
    800026c8:	fe040793          	addi	a5,s0,-32
    800026cc:	08f48663          	beq	s1,a5,80002758 <_Z20Threads_CPP_API_testv+0x1d0>
    800026d0:	0004b503          	ld	a0,0(s1)
    800026d4:	fe0508e3          	beqz	a0,800026c4 <_Z20Threads_CPP_API_testv+0x13c>
    800026d8:	00053783          	ld	a5,0(a0)
    800026dc:	0087b783          	ld	a5,8(a5)
    800026e0:	000780e7          	jalr	a5
    800026e4:	fe1ff06f          	j	800026c4 <_Z20Threads_CPP_API_testv+0x13c>
    800026e8:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    800026ec:	00048513          	mv	a0,s1
    800026f0:	fffff097          	auipc	ra,0xfffff
    800026f4:	24c080e7          	jalr	588(ra) # 8000193c <_ZdlPv>
    800026f8:	00090513          	mv	a0,s2
    800026fc:	00006097          	auipc	ra,0x6
    80002700:	cfc080e7          	jalr	-772(ra) # 800083f8 <_Unwind_Resume>
    80002704:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    80002708:	00048513          	mv	a0,s1
    8000270c:	fffff097          	auipc	ra,0xfffff
    80002710:	230080e7          	jalr	560(ra) # 8000193c <_ZdlPv>
    80002714:	00090513          	mv	a0,s2
    80002718:	00006097          	auipc	ra,0x6
    8000271c:	ce0080e7          	jalr	-800(ra) # 800083f8 <_Unwind_Resume>
    80002720:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    80002724:	00048513          	mv	a0,s1
    80002728:	fffff097          	auipc	ra,0xfffff
    8000272c:	214080e7          	jalr	532(ra) # 8000193c <_ZdlPv>
    80002730:	00090513          	mv	a0,s2
    80002734:	00006097          	auipc	ra,0x6
    80002738:	cc4080e7          	jalr	-828(ra) # 800083f8 <_Unwind_Resume>
    8000273c:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80002740:	00048513          	mv	a0,s1
    80002744:	fffff097          	auipc	ra,0xfffff
    80002748:	1f8080e7          	jalr	504(ra) # 8000193c <_ZdlPv>
    8000274c:	00090513          	mv	a0,s2
    80002750:	00006097          	auipc	ra,0x6
    80002754:	ca8080e7          	jalr	-856(ra) # 800083f8 <_Unwind_Resume>
}
    80002758:	03813083          	ld	ra,56(sp)
    8000275c:	03013403          	ld	s0,48(sp)
    80002760:	02813483          	ld	s1,40(sp)
    80002764:	02013903          	ld	s2,32(sp)
    80002768:	04010113          	addi	sp,sp,64
    8000276c:	00008067          	ret

0000000080002770 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80002770:	ff010113          	addi	sp,sp,-16
    80002774:	00113423          	sd	ra,8(sp)
    80002778:	00813023          	sd	s0,0(sp)
    8000277c:	01010413          	addi	s0,sp,16
    80002780:	00005797          	auipc	a5,0x5
    80002784:	a2078793          	addi	a5,a5,-1504 # 800071a0 <_ZTV7WorkerA+0x10>
    80002788:	00f53023          	sd	a5,0(a0)
    8000278c:	fffff097          	auipc	ra,0xfffff
    80002790:	200080e7          	jalr	512(ra) # 8000198c <_ZN6ThreadD1Ev>
    80002794:	00813083          	ld	ra,8(sp)
    80002798:	00013403          	ld	s0,0(sp)
    8000279c:	01010113          	addi	sp,sp,16
    800027a0:	00008067          	ret

00000000800027a4 <_ZN7WorkerAD0Ev>:
    800027a4:	fe010113          	addi	sp,sp,-32
    800027a8:	00113c23          	sd	ra,24(sp)
    800027ac:	00813823          	sd	s0,16(sp)
    800027b0:	00913423          	sd	s1,8(sp)
    800027b4:	02010413          	addi	s0,sp,32
    800027b8:	00050493          	mv	s1,a0
    800027bc:	00005797          	auipc	a5,0x5
    800027c0:	9e478793          	addi	a5,a5,-1564 # 800071a0 <_ZTV7WorkerA+0x10>
    800027c4:	00f53023          	sd	a5,0(a0)
    800027c8:	fffff097          	auipc	ra,0xfffff
    800027cc:	1c4080e7          	jalr	452(ra) # 8000198c <_ZN6ThreadD1Ev>
    800027d0:	00048513          	mv	a0,s1
    800027d4:	fffff097          	auipc	ra,0xfffff
    800027d8:	168080e7          	jalr	360(ra) # 8000193c <_ZdlPv>
    800027dc:	01813083          	ld	ra,24(sp)
    800027e0:	01013403          	ld	s0,16(sp)
    800027e4:	00813483          	ld	s1,8(sp)
    800027e8:	02010113          	addi	sp,sp,32
    800027ec:	00008067          	ret

00000000800027f0 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    800027f0:	ff010113          	addi	sp,sp,-16
    800027f4:	00113423          	sd	ra,8(sp)
    800027f8:	00813023          	sd	s0,0(sp)
    800027fc:	01010413          	addi	s0,sp,16
    80002800:	00005797          	auipc	a5,0x5
    80002804:	9c878793          	addi	a5,a5,-1592 # 800071c8 <_ZTV7WorkerB+0x10>
    80002808:	00f53023          	sd	a5,0(a0)
    8000280c:	fffff097          	auipc	ra,0xfffff
    80002810:	180080e7          	jalr	384(ra) # 8000198c <_ZN6ThreadD1Ev>
    80002814:	00813083          	ld	ra,8(sp)
    80002818:	00013403          	ld	s0,0(sp)
    8000281c:	01010113          	addi	sp,sp,16
    80002820:	00008067          	ret

0000000080002824 <_ZN7WorkerBD0Ev>:
    80002824:	fe010113          	addi	sp,sp,-32
    80002828:	00113c23          	sd	ra,24(sp)
    8000282c:	00813823          	sd	s0,16(sp)
    80002830:	00913423          	sd	s1,8(sp)
    80002834:	02010413          	addi	s0,sp,32
    80002838:	00050493          	mv	s1,a0
    8000283c:	00005797          	auipc	a5,0x5
    80002840:	98c78793          	addi	a5,a5,-1652 # 800071c8 <_ZTV7WorkerB+0x10>
    80002844:	00f53023          	sd	a5,0(a0)
    80002848:	fffff097          	auipc	ra,0xfffff
    8000284c:	144080e7          	jalr	324(ra) # 8000198c <_ZN6ThreadD1Ev>
    80002850:	00048513          	mv	a0,s1
    80002854:	fffff097          	auipc	ra,0xfffff
    80002858:	0e8080e7          	jalr	232(ra) # 8000193c <_ZdlPv>
    8000285c:	01813083          	ld	ra,24(sp)
    80002860:	01013403          	ld	s0,16(sp)
    80002864:	00813483          	ld	s1,8(sp)
    80002868:	02010113          	addi	sp,sp,32
    8000286c:	00008067          	ret

0000000080002870 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80002870:	ff010113          	addi	sp,sp,-16
    80002874:	00113423          	sd	ra,8(sp)
    80002878:	00813023          	sd	s0,0(sp)
    8000287c:	01010413          	addi	s0,sp,16
    80002880:	00005797          	auipc	a5,0x5
    80002884:	97078793          	addi	a5,a5,-1680 # 800071f0 <_ZTV7WorkerC+0x10>
    80002888:	00f53023          	sd	a5,0(a0)
    8000288c:	fffff097          	auipc	ra,0xfffff
    80002890:	100080e7          	jalr	256(ra) # 8000198c <_ZN6ThreadD1Ev>
    80002894:	00813083          	ld	ra,8(sp)
    80002898:	00013403          	ld	s0,0(sp)
    8000289c:	01010113          	addi	sp,sp,16
    800028a0:	00008067          	ret

00000000800028a4 <_ZN7WorkerCD0Ev>:
    800028a4:	fe010113          	addi	sp,sp,-32
    800028a8:	00113c23          	sd	ra,24(sp)
    800028ac:	00813823          	sd	s0,16(sp)
    800028b0:	00913423          	sd	s1,8(sp)
    800028b4:	02010413          	addi	s0,sp,32
    800028b8:	00050493          	mv	s1,a0
    800028bc:	00005797          	auipc	a5,0x5
    800028c0:	93478793          	addi	a5,a5,-1740 # 800071f0 <_ZTV7WorkerC+0x10>
    800028c4:	00f53023          	sd	a5,0(a0)
    800028c8:	fffff097          	auipc	ra,0xfffff
    800028cc:	0c4080e7          	jalr	196(ra) # 8000198c <_ZN6ThreadD1Ev>
    800028d0:	00048513          	mv	a0,s1
    800028d4:	fffff097          	auipc	ra,0xfffff
    800028d8:	068080e7          	jalr	104(ra) # 8000193c <_ZdlPv>
    800028dc:	01813083          	ld	ra,24(sp)
    800028e0:	01013403          	ld	s0,16(sp)
    800028e4:	00813483          	ld	s1,8(sp)
    800028e8:	02010113          	addi	sp,sp,32
    800028ec:	00008067          	ret

00000000800028f0 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    800028f0:	ff010113          	addi	sp,sp,-16
    800028f4:	00113423          	sd	ra,8(sp)
    800028f8:	00813023          	sd	s0,0(sp)
    800028fc:	01010413          	addi	s0,sp,16
    80002900:	00005797          	auipc	a5,0x5
    80002904:	91878793          	addi	a5,a5,-1768 # 80007218 <_ZTV7WorkerD+0x10>
    80002908:	00f53023          	sd	a5,0(a0)
    8000290c:	fffff097          	auipc	ra,0xfffff
    80002910:	080080e7          	jalr	128(ra) # 8000198c <_ZN6ThreadD1Ev>
    80002914:	00813083          	ld	ra,8(sp)
    80002918:	00013403          	ld	s0,0(sp)
    8000291c:	01010113          	addi	sp,sp,16
    80002920:	00008067          	ret

0000000080002924 <_ZN7WorkerDD0Ev>:
    80002924:	fe010113          	addi	sp,sp,-32
    80002928:	00113c23          	sd	ra,24(sp)
    8000292c:	00813823          	sd	s0,16(sp)
    80002930:	00913423          	sd	s1,8(sp)
    80002934:	02010413          	addi	s0,sp,32
    80002938:	00050493          	mv	s1,a0
    8000293c:	00005797          	auipc	a5,0x5
    80002940:	8dc78793          	addi	a5,a5,-1828 # 80007218 <_ZTV7WorkerD+0x10>
    80002944:	00f53023          	sd	a5,0(a0)
    80002948:	fffff097          	auipc	ra,0xfffff
    8000294c:	044080e7          	jalr	68(ra) # 8000198c <_ZN6ThreadD1Ev>
    80002950:	00048513          	mv	a0,s1
    80002954:	fffff097          	auipc	ra,0xfffff
    80002958:	fe8080e7          	jalr	-24(ra) # 8000193c <_ZdlPv>
    8000295c:	01813083          	ld	ra,24(sp)
    80002960:	01013403          	ld	s0,16(sp)
    80002964:	00813483          	ld	s1,8(sp)
    80002968:	02010113          	addi	sp,sp,32
    8000296c:	00008067          	ret

0000000080002970 <_ZN7WorkerA3runEv>:
    void run() override {
    80002970:	ff010113          	addi	sp,sp,-16
    80002974:	00113423          	sd	ra,8(sp)
    80002978:	00813023          	sd	s0,0(sp)
    8000297c:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80002980:	00000593          	li	a1,0
    80002984:	fffff097          	auipc	ra,0xfffff
    80002988:	79c080e7          	jalr	1948(ra) # 80002120 <_ZN7WorkerA11workerBodyAEPv>
    }
    8000298c:	00813083          	ld	ra,8(sp)
    80002990:	00013403          	ld	s0,0(sp)
    80002994:	01010113          	addi	sp,sp,16
    80002998:	00008067          	ret

000000008000299c <_ZN7WorkerB3runEv>:
    void run() override {
    8000299c:	ff010113          	addi	sp,sp,-16
    800029a0:	00113423          	sd	ra,8(sp)
    800029a4:	00813023          	sd	s0,0(sp)
    800029a8:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    800029ac:	00000593          	li	a1,0
    800029b0:	00000097          	auipc	ra,0x0
    800029b4:	83c080e7          	jalr	-1988(ra) # 800021ec <_ZN7WorkerB11workerBodyBEPv>
    }
    800029b8:	00813083          	ld	ra,8(sp)
    800029bc:	00013403          	ld	s0,0(sp)
    800029c0:	01010113          	addi	sp,sp,16
    800029c4:	00008067          	ret

00000000800029c8 <_ZN7WorkerC3runEv>:
    void run() override {
    800029c8:	ff010113          	addi	sp,sp,-16
    800029cc:	00113423          	sd	ra,8(sp)
    800029d0:	00813023          	sd	s0,0(sp)
    800029d4:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    800029d8:	00000593          	li	a1,0
    800029dc:	00000097          	auipc	ra,0x0
    800029e0:	8e4080e7          	jalr	-1820(ra) # 800022c0 <_ZN7WorkerC11workerBodyCEPv>
    }
    800029e4:	00813083          	ld	ra,8(sp)
    800029e8:	00013403          	ld	s0,0(sp)
    800029ec:	01010113          	addi	sp,sp,16
    800029f0:	00008067          	ret

00000000800029f4 <_ZN7WorkerD3runEv>:
    void run() override {
    800029f4:	ff010113          	addi	sp,sp,-16
    800029f8:	00113423          	sd	ra,8(sp)
    800029fc:	00813023          	sd	s0,0(sp)
    80002a00:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80002a04:	00000593          	li	a1,0
    80002a08:	00000097          	auipc	ra,0x0
    80002a0c:	a38080e7          	jalr	-1480(ra) # 80002440 <_ZN7WorkerD11workerBodyDEPv>
    }
    80002a10:	00813083          	ld	ra,8(sp)
    80002a14:	00013403          	ld	s0,0(sp)
    80002a18:	01010113          	addi	sp,sp,16
    80002a1c:	00008067          	ret

0000000080002a20 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80002a20:	fe010113          	addi	sp,sp,-32
    80002a24:	00113c23          	sd	ra,24(sp)
    80002a28:	00813823          	sd	s0,16(sp)
    80002a2c:	00913423          	sd	s1,8(sp)
    80002a30:	01213023          	sd	s2,0(sp)
    80002a34:	02010413          	addi	s0,sp,32
    80002a38:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80002a3c:	00100793          	li	a5,1
    80002a40:	02a7f863          	bgeu	a5,a0,80002a70 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80002a44:	00a00793          	li	a5,10
    80002a48:	02f577b3          	remu	a5,a0,a5
    80002a4c:	02078e63          	beqz	a5,80002a88 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80002a50:	fff48513          	addi	a0,s1,-1
    80002a54:	00000097          	auipc	ra,0x0
    80002a58:	fcc080e7          	jalr	-52(ra) # 80002a20 <_ZL9fibonaccim>
    80002a5c:	00050913          	mv	s2,a0
    80002a60:	ffe48513          	addi	a0,s1,-2
    80002a64:	00000097          	auipc	ra,0x0
    80002a68:	fbc080e7          	jalr	-68(ra) # 80002a20 <_ZL9fibonaccim>
    80002a6c:	00a90533          	add	a0,s2,a0
}
    80002a70:	01813083          	ld	ra,24(sp)
    80002a74:	01013403          	ld	s0,16(sp)
    80002a78:	00813483          	ld	s1,8(sp)
    80002a7c:	00013903          	ld	s2,0(sp)
    80002a80:	02010113          	addi	sp,sp,32
    80002a84:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80002a88:	fffff097          	auipc	ra,0xfffff
    80002a8c:	8f8080e7          	jalr	-1800(ra) # 80001380 <_Z15thread_dispatchv>
    80002a90:	fc1ff06f          	j	80002a50 <_ZL9fibonaccim+0x30>

0000000080002a94 <_ZL11workerBodyDPv>:
    printString("C finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80002a94:	fe010113          	addi	sp,sp,-32
    80002a98:	00113c23          	sd	ra,24(sp)
    80002a9c:	00813823          	sd	s0,16(sp)
    80002aa0:	00913423          	sd	s1,8(sp)
    80002aa4:	01213023          	sd	s2,0(sp)
    80002aa8:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80002aac:	00a00493          	li	s1,10
    80002ab0:	0400006f          	j	80002af0 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80002ab4:	00003517          	auipc	a0,0x3
    80002ab8:	61c50513          	addi	a0,a0,1564 # 800060d0 <CONSOLE_STATUS+0xc0>
    80002abc:	00000097          	auipc	ra,0x0
    80002ac0:	53c080e7          	jalr	1340(ra) # 80002ff8 <_Z11printStringPKc>
    80002ac4:	00000613          	li	a2,0
    80002ac8:	00a00593          	li	a1,10
    80002acc:	00048513          	mv	a0,s1
    80002ad0:	00000097          	auipc	ra,0x0
    80002ad4:	6d8080e7          	jalr	1752(ra) # 800031a8 <_Z8printIntiii>
    80002ad8:	00004517          	auipc	a0,0x4
    80002adc:	81050513          	addi	a0,a0,-2032 # 800062e8 <CONSOLE_STATUS+0x2d8>
    80002ae0:	00000097          	auipc	ra,0x0
    80002ae4:	518080e7          	jalr	1304(ra) # 80002ff8 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80002ae8:	0014849b          	addiw	s1,s1,1
    80002aec:	0ff4f493          	andi	s1,s1,255
    80002af0:	00c00793          	li	a5,12
    80002af4:	fc97f0e3          	bgeu	a5,s1,80002ab4 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80002af8:	00003517          	auipc	a0,0x3
    80002afc:	5e050513          	addi	a0,a0,1504 # 800060d8 <CONSOLE_STATUS+0xc8>
    80002b00:	00000097          	auipc	ra,0x0
    80002b04:	4f8080e7          	jalr	1272(ra) # 80002ff8 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80002b08:	00500313          	li	t1,5
    thread_dispatch();
    80002b0c:	fffff097          	auipc	ra,0xfffff
    80002b10:	874080e7          	jalr	-1932(ra) # 80001380 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80002b14:	01000513          	li	a0,16
    80002b18:	00000097          	auipc	ra,0x0
    80002b1c:	f08080e7          	jalr	-248(ra) # 80002a20 <_ZL9fibonaccim>
    80002b20:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80002b24:	00003517          	auipc	a0,0x3
    80002b28:	5c450513          	addi	a0,a0,1476 # 800060e8 <CONSOLE_STATUS+0xd8>
    80002b2c:	00000097          	auipc	ra,0x0
    80002b30:	4cc080e7          	jalr	1228(ra) # 80002ff8 <_Z11printStringPKc>
    80002b34:	00000613          	li	a2,0
    80002b38:	00a00593          	li	a1,10
    80002b3c:	0009051b          	sext.w	a0,s2
    80002b40:	00000097          	auipc	ra,0x0
    80002b44:	668080e7          	jalr	1640(ra) # 800031a8 <_Z8printIntiii>
    80002b48:	00003517          	auipc	a0,0x3
    80002b4c:	7a050513          	addi	a0,a0,1952 # 800062e8 <CONSOLE_STATUS+0x2d8>
    80002b50:	00000097          	auipc	ra,0x0
    80002b54:	4a8080e7          	jalr	1192(ra) # 80002ff8 <_Z11printStringPKc>
    80002b58:	0400006f          	j	80002b98 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80002b5c:	00003517          	auipc	a0,0x3
    80002b60:	57450513          	addi	a0,a0,1396 # 800060d0 <CONSOLE_STATUS+0xc0>
    80002b64:	00000097          	auipc	ra,0x0
    80002b68:	494080e7          	jalr	1172(ra) # 80002ff8 <_Z11printStringPKc>
    80002b6c:	00000613          	li	a2,0
    80002b70:	00a00593          	li	a1,10
    80002b74:	00048513          	mv	a0,s1
    80002b78:	00000097          	auipc	ra,0x0
    80002b7c:	630080e7          	jalr	1584(ra) # 800031a8 <_Z8printIntiii>
    80002b80:	00003517          	auipc	a0,0x3
    80002b84:	76850513          	addi	a0,a0,1896 # 800062e8 <CONSOLE_STATUS+0x2d8>
    80002b88:	00000097          	auipc	ra,0x0
    80002b8c:	470080e7          	jalr	1136(ra) # 80002ff8 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80002b90:	0014849b          	addiw	s1,s1,1
    80002b94:	0ff4f493          	andi	s1,s1,255
    80002b98:	00f00793          	li	a5,15
    80002b9c:	fc97f0e3          	bgeu	a5,s1,80002b5c <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80002ba0:	00003517          	auipc	a0,0x3
    80002ba4:	55850513          	addi	a0,a0,1368 # 800060f8 <CONSOLE_STATUS+0xe8>
    80002ba8:	00000097          	auipc	ra,0x0
    80002bac:	450080e7          	jalr	1104(ra) # 80002ff8 <_Z11printStringPKc>
    finishedD = true;
    80002bb0:	00100793          	li	a5,1
    80002bb4:	00004717          	auipc	a4,0x4
    80002bb8:	76f70023          	sb	a5,1888(a4) # 80007314 <_ZL9finishedD>
    thread_dispatch();
    80002bbc:	ffffe097          	auipc	ra,0xffffe
    80002bc0:	7c4080e7          	jalr	1988(ra) # 80001380 <_Z15thread_dispatchv>
}
    80002bc4:	01813083          	ld	ra,24(sp)
    80002bc8:	01013403          	ld	s0,16(sp)
    80002bcc:	00813483          	ld	s1,8(sp)
    80002bd0:	00013903          	ld	s2,0(sp)
    80002bd4:	02010113          	addi	sp,sp,32
    80002bd8:	00008067          	ret

0000000080002bdc <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80002bdc:	fe010113          	addi	sp,sp,-32
    80002be0:	00113c23          	sd	ra,24(sp)
    80002be4:	00813823          	sd	s0,16(sp)
    80002be8:	00913423          	sd	s1,8(sp)
    80002bec:	01213023          	sd	s2,0(sp)
    80002bf0:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80002bf4:	00000493          	li	s1,0
    80002bf8:	0400006f          	j	80002c38 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80002bfc:	00003517          	auipc	a0,0x3
    80002c00:	4a450513          	addi	a0,a0,1188 # 800060a0 <CONSOLE_STATUS+0x90>
    80002c04:	00000097          	auipc	ra,0x0
    80002c08:	3f4080e7          	jalr	1012(ra) # 80002ff8 <_Z11printStringPKc>
    80002c0c:	00000613          	li	a2,0
    80002c10:	00a00593          	li	a1,10
    80002c14:	00048513          	mv	a0,s1
    80002c18:	00000097          	auipc	ra,0x0
    80002c1c:	590080e7          	jalr	1424(ra) # 800031a8 <_Z8printIntiii>
    80002c20:	00003517          	auipc	a0,0x3
    80002c24:	6c850513          	addi	a0,a0,1736 # 800062e8 <CONSOLE_STATUS+0x2d8>
    80002c28:	00000097          	auipc	ra,0x0
    80002c2c:	3d0080e7          	jalr	976(ra) # 80002ff8 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80002c30:	0014849b          	addiw	s1,s1,1
    80002c34:	0ff4f493          	andi	s1,s1,255
    80002c38:	00200793          	li	a5,2
    80002c3c:	fc97f0e3          	bgeu	a5,s1,80002bfc <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80002c40:	00003517          	auipc	a0,0x3
    80002c44:	46850513          	addi	a0,a0,1128 # 800060a8 <CONSOLE_STATUS+0x98>
    80002c48:	00000097          	auipc	ra,0x0
    80002c4c:	3b0080e7          	jalr	944(ra) # 80002ff8 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80002c50:	00700313          	li	t1,7
    thread_dispatch();
    80002c54:	ffffe097          	auipc	ra,0xffffe
    80002c58:	72c080e7          	jalr	1836(ra) # 80001380 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80002c5c:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80002c60:	00003517          	auipc	a0,0x3
    80002c64:	45850513          	addi	a0,a0,1112 # 800060b8 <CONSOLE_STATUS+0xa8>
    80002c68:	00000097          	auipc	ra,0x0
    80002c6c:	390080e7          	jalr	912(ra) # 80002ff8 <_Z11printStringPKc>
    80002c70:	00000613          	li	a2,0
    80002c74:	00a00593          	li	a1,10
    80002c78:	0009051b          	sext.w	a0,s2
    80002c7c:	00000097          	auipc	ra,0x0
    80002c80:	52c080e7          	jalr	1324(ra) # 800031a8 <_Z8printIntiii>
    80002c84:	00003517          	auipc	a0,0x3
    80002c88:	66450513          	addi	a0,a0,1636 # 800062e8 <CONSOLE_STATUS+0x2d8>
    80002c8c:	00000097          	auipc	ra,0x0
    80002c90:	36c080e7          	jalr	876(ra) # 80002ff8 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80002c94:	00c00513          	li	a0,12
    80002c98:	00000097          	auipc	ra,0x0
    80002c9c:	d88080e7          	jalr	-632(ra) # 80002a20 <_ZL9fibonaccim>
    80002ca0:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80002ca4:	00003517          	auipc	a0,0x3
    80002ca8:	41c50513          	addi	a0,a0,1052 # 800060c0 <CONSOLE_STATUS+0xb0>
    80002cac:	00000097          	auipc	ra,0x0
    80002cb0:	34c080e7          	jalr	844(ra) # 80002ff8 <_Z11printStringPKc>
    80002cb4:	00000613          	li	a2,0
    80002cb8:	00a00593          	li	a1,10
    80002cbc:	0009051b          	sext.w	a0,s2
    80002cc0:	00000097          	auipc	ra,0x0
    80002cc4:	4e8080e7          	jalr	1256(ra) # 800031a8 <_Z8printIntiii>
    80002cc8:	00003517          	auipc	a0,0x3
    80002ccc:	62050513          	addi	a0,a0,1568 # 800062e8 <CONSOLE_STATUS+0x2d8>
    80002cd0:	00000097          	auipc	ra,0x0
    80002cd4:	328080e7          	jalr	808(ra) # 80002ff8 <_Z11printStringPKc>
    80002cd8:	0400006f          	j	80002d18 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80002cdc:	00003517          	auipc	a0,0x3
    80002ce0:	3c450513          	addi	a0,a0,964 # 800060a0 <CONSOLE_STATUS+0x90>
    80002ce4:	00000097          	auipc	ra,0x0
    80002ce8:	314080e7          	jalr	788(ra) # 80002ff8 <_Z11printStringPKc>
    80002cec:	00000613          	li	a2,0
    80002cf0:	00a00593          	li	a1,10
    80002cf4:	00048513          	mv	a0,s1
    80002cf8:	00000097          	auipc	ra,0x0
    80002cfc:	4b0080e7          	jalr	1200(ra) # 800031a8 <_Z8printIntiii>
    80002d00:	00003517          	auipc	a0,0x3
    80002d04:	5e850513          	addi	a0,a0,1512 # 800062e8 <CONSOLE_STATUS+0x2d8>
    80002d08:	00000097          	auipc	ra,0x0
    80002d0c:	2f0080e7          	jalr	752(ra) # 80002ff8 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80002d10:	0014849b          	addiw	s1,s1,1
    80002d14:	0ff4f493          	andi	s1,s1,255
    80002d18:	00500793          	li	a5,5
    80002d1c:	fc97f0e3          	bgeu	a5,s1,80002cdc <_ZL11workerBodyCPv+0x100>
    printString("C finished!\n");
    80002d20:	00003517          	auipc	a0,0x3
    80002d24:	44850513          	addi	a0,a0,1096 # 80006168 <CONSOLE_STATUS+0x158>
    80002d28:	00000097          	auipc	ra,0x0
    80002d2c:	2d0080e7          	jalr	720(ra) # 80002ff8 <_Z11printStringPKc>
    finishedC = true;
    80002d30:	00100793          	li	a5,1
    80002d34:	00004717          	auipc	a4,0x4
    80002d38:	5ef700a3          	sb	a5,1505(a4) # 80007315 <_ZL9finishedC>
    thread_dispatch();
    80002d3c:	ffffe097          	auipc	ra,0xffffe
    80002d40:	644080e7          	jalr	1604(ra) # 80001380 <_Z15thread_dispatchv>
}
    80002d44:	01813083          	ld	ra,24(sp)
    80002d48:	01013403          	ld	s0,16(sp)
    80002d4c:	00813483          	ld	s1,8(sp)
    80002d50:	00013903          	ld	s2,0(sp)
    80002d54:	02010113          	addi	sp,sp,32
    80002d58:	00008067          	ret

0000000080002d5c <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80002d5c:	fe010113          	addi	sp,sp,-32
    80002d60:	00113c23          	sd	ra,24(sp)
    80002d64:	00813823          	sd	s0,16(sp)
    80002d68:	00913423          	sd	s1,8(sp)
    80002d6c:	01213023          	sd	s2,0(sp)
    80002d70:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80002d74:	00000913          	li	s2,0
    80002d78:	0380006f          	j	80002db0 <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    80002d7c:	ffffe097          	auipc	ra,0xffffe
    80002d80:	604080e7          	jalr	1540(ra) # 80001380 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80002d84:	00148493          	addi	s1,s1,1
    80002d88:	000027b7          	lui	a5,0x2
    80002d8c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80002d90:	0097ee63          	bltu	a5,s1,80002dac <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80002d94:	00000713          	li	a4,0
    80002d98:	000077b7          	lui	a5,0x7
    80002d9c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80002da0:	fce7eee3          	bltu	a5,a4,80002d7c <_ZL11workerBodyBPv+0x20>
    80002da4:	00170713          	addi	a4,a4,1
    80002da8:	ff1ff06f          	j	80002d98 <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80002dac:	00190913          	addi	s2,s2,1
    80002db0:	00f00793          	li	a5,15
    80002db4:	0527e063          	bltu	a5,s2,80002df4 <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80002db8:	00003517          	auipc	a0,0x3
    80002dbc:	2d050513          	addi	a0,a0,720 # 80006088 <CONSOLE_STATUS+0x78>
    80002dc0:	00000097          	auipc	ra,0x0
    80002dc4:	238080e7          	jalr	568(ra) # 80002ff8 <_Z11printStringPKc>
    80002dc8:	00000613          	li	a2,0
    80002dcc:	00a00593          	li	a1,10
    80002dd0:	0009051b          	sext.w	a0,s2
    80002dd4:	00000097          	auipc	ra,0x0
    80002dd8:	3d4080e7          	jalr	980(ra) # 800031a8 <_Z8printIntiii>
    80002ddc:	00003517          	auipc	a0,0x3
    80002de0:	50c50513          	addi	a0,a0,1292 # 800062e8 <CONSOLE_STATUS+0x2d8>
    80002de4:	00000097          	auipc	ra,0x0
    80002de8:	214080e7          	jalr	532(ra) # 80002ff8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80002dec:	00000493          	li	s1,0
    80002df0:	f99ff06f          	j	80002d88 <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    80002df4:	00003517          	auipc	a0,0x3
    80002df8:	29c50513          	addi	a0,a0,668 # 80006090 <CONSOLE_STATUS+0x80>
    80002dfc:	00000097          	auipc	ra,0x0
    80002e00:	1fc080e7          	jalr	508(ra) # 80002ff8 <_Z11printStringPKc>
    finishedB = true;
    80002e04:	00100793          	li	a5,1
    80002e08:	00004717          	auipc	a4,0x4
    80002e0c:	50f70723          	sb	a5,1294(a4) # 80007316 <_ZL9finishedB>
    thread_dispatch();
    80002e10:	ffffe097          	auipc	ra,0xffffe
    80002e14:	570080e7          	jalr	1392(ra) # 80001380 <_Z15thread_dispatchv>
}
    80002e18:	01813083          	ld	ra,24(sp)
    80002e1c:	01013403          	ld	s0,16(sp)
    80002e20:	00813483          	ld	s1,8(sp)
    80002e24:	00013903          	ld	s2,0(sp)
    80002e28:	02010113          	addi	sp,sp,32
    80002e2c:	00008067          	ret

0000000080002e30 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80002e30:	fe010113          	addi	sp,sp,-32
    80002e34:	00113c23          	sd	ra,24(sp)
    80002e38:	00813823          	sd	s0,16(sp)
    80002e3c:	00913423          	sd	s1,8(sp)
    80002e40:	01213023          	sd	s2,0(sp)
    80002e44:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80002e48:	00000913          	li	s2,0
    80002e4c:	0380006f          	j	80002e84 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80002e50:	ffffe097          	auipc	ra,0xffffe
    80002e54:	530080e7          	jalr	1328(ra) # 80001380 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80002e58:	00148493          	addi	s1,s1,1
    80002e5c:	000027b7          	lui	a5,0x2
    80002e60:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80002e64:	0097ee63          	bltu	a5,s1,80002e80 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80002e68:	00000713          	li	a4,0
    80002e6c:	000077b7          	lui	a5,0x7
    80002e70:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80002e74:	fce7eee3          	bltu	a5,a4,80002e50 <_ZL11workerBodyAPv+0x20>
    80002e78:	00170713          	addi	a4,a4,1
    80002e7c:	ff1ff06f          	j	80002e6c <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80002e80:	00190913          	addi	s2,s2,1
    80002e84:	00900793          	li	a5,9
    80002e88:	0527e063          	bltu	a5,s2,80002ec8 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80002e8c:	00003517          	auipc	a0,0x3
    80002e90:	1e450513          	addi	a0,a0,484 # 80006070 <CONSOLE_STATUS+0x60>
    80002e94:	00000097          	auipc	ra,0x0
    80002e98:	164080e7          	jalr	356(ra) # 80002ff8 <_Z11printStringPKc>
    80002e9c:	00000613          	li	a2,0
    80002ea0:	00a00593          	li	a1,10
    80002ea4:	0009051b          	sext.w	a0,s2
    80002ea8:	00000097          	auipc	ra,0x0
    80002eac:	300080e7          	jalr	768(ra) # 800031a8 <_Z8printIntiii>
    80002eb0:	00003517          	auipc	a0,0x3
    80002eb4:	43850513          	addi	a0,a0,1080 # 800062e8 <CONSOLE_STATUS+0x2d8>
    80002eb8:	00000097          	auipc	ra,0x0
    80002ebc:	140080e7          	jalr	320(ra) # 80002ff8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80002ec0:	00000493          	li	s1,0
    80002ec4:	f99ff06f          	j	80002e5c <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80002ec8:	00003517          	auipc	a0,0x3
    80002ecc:	1b050513          	addi	a0,a0,432 # 80006078 <CONSOLE_STATUS+0x68>
    80002ed0:	00000097          	auipc	ra,0x0
    80002ed4:	128080e7          	jalr	296(ra) # 80002ff8 <_Z11printStringPKc>
    finishedA = true;
    80002ed8:	00100793          	li	a5,1
    80002edc:	00004717          	auipc	a4,0x4
    80002ee0:	42f70da3          	sb	a5,1083(a4) # 80007317 <_ZL9finishedA>
}
    80002ee4:	01813083          	ld	ra,24(sp)
    80002ee8:	01013403          	ld	s0,16(sp)
    80002eec:	00813483          	ld	s1,8(sp)
    80002ef0:	00013903          	ld	s2,0(sp)
    80002ef4:	02010113          	addi	sp,sp,32
    80002ef8:	00008067          	ret

0000000080002efc <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80002efc:	fd010113          	addi	sp,sp,-48
    80002f00:	02113423          	sd	ra,40(sp)
    80002f04:	02813023          	sd	s0,32(sp)
    80002f08:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80002f0c:	00000613          	li	a2,0
    80002f10:	00000597          	auipc	a1,0x0
    80002f14:	f2058593          	addi	a1,a1,-224 # 80002e30 <_ZL11workerBodyAPv>
    80002f18:	fd040513          	addi	a0,s0,-48
    80002f1c:	ffffe097          	auipc	ra,0xffffe
    80002f20:	3e8080e7          	jalr	1000(ra) # 80001304 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadA created\n");
    80002f24:	00003517          	auipc	a0,0x3
    80002f28:	1e450513          	addi	a0,a0,484 # 80006108 <CONSOLE_STATUS+0xf8>
    80002f2c:	00000097          	auipc	ra,0x0
    80002f30:	0cc080e7          	jalr	204(ra) # 80002ff8 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80002f34:	00000613          	li	a2,0
    80002f38:	00000597          	auipc	a1,0x0
    80002f3c:	e2458593          	addi	a1,a1,-476 # 80002d5c <_ZL11workerBodyBPv>
    80002f40:	fd840513          	addi	a0,s0,-40
    80002f44:	ffffe097          	auipc	ra,0xffffe
    80002f48:	3c0080e7          	jalr	960(ra) # 80001304 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadB created\n");
    80002f4c:	00003517          	auipc	a0,0x3
    80002f50:	1d450513          	addi	a0,a0,468 # 80006120 <CONSOLE_STATUS+0x110>
    80002f54:	00000097          	auipc	ra,0x0
    80002f58:	0a4080e7          	jalr	164(ra) # 80002ff8 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80002f5c:	00000613          	li	a2,0
    80002f60:	00000597          	auipc	a1,0x0
    80002f64:	c7c58593          	addi	a1,a1,-900 # 80002bdc <_ZL11workerBodyCPv>
    80002f68:	fe040513          	addi	a0,s0,-32
    80002f6c:	ffffe097          	auipc	ra,0xffffe
    80002f70:	398080e7          	jalr	920(ra) # 80001304 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadC created\n");
    80002f74:	00003517          	auipc	a0,0x3
    80002f78:	1c450513          	addi	a0,a0,452 # 80006138 <CONSOLE_STATUS+0x128>
    80002f7c:	00000097          	auipc	ra,0x0
    80002f80:	07c080e7          	jalr	124(ra) # 80002ff8 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80002f84:	00000613          	li	a2,0
    80002f88:	00000597          	auipc	a1,0x0
    80002f8c:	b0c58593          	addi	a1,a1,-1268 # 80002a94 <_ZL11workerBodyDPv>
    80002f90:	fe840513          	addi	a0,s0,-24
    80002f94:	ffffe097          	auipc	ra,0xffffe
    80002f98:	370080e7          	jalr	880(ra) # 80001304 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadD created\n");
    80002f9c:	00003517          	auipc	a0,0x3
    80002fa0:	1b450513          	addi	a0,a0,436 # 80006150 <CONSOLE_STATUS+0x140>
    80002fa4:	00000097          	auipc	ra,0x0
    80002fa8:	054080e7          	jalr	84(ra) # 80002ff8 <_Z11printStringPKc>
    80002fac:	00c0006f          	j	80002fb8 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80002fb0:	ffffe097          	auipc	ra,0xffffe
    80002fb4:	3d0080e7          	jalr	976(ra) # 80001380 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80002fb8:	00004797          	auipc	a5,0x4
    80002fbc:	35f7c783          	lbu	a5,863(a5) # 80007317 <_ZL9finishedA>
    80002fc0:	fe0788e3          	beqz	a5,80002fb0 <_Z18Threads_C_API_testv+0xb4>
    80002fc4:	00004797          	auipc	a5,0x4
    80002fc8:	3527c783          	lbu	a5,850(a5) # 80007316 <_ZL9finishedB>
    80002fcc:	fe0782e3          	beqz	a5,80002fb0 <_Z18Threads_C_API_testv+0xb4>
    80002fd0:	00004797          	auipc	a5,0x4
    80002fd4:	3457c783          	lbu	a5,837(a5) # 80007315 <_ZL9finishedC>
    80002fd8:	fc078ce3          	beqz	a5,80002fb0 <_Z18Threads_C_API_testv+0xb4>
    80002fdc:	00004797          	auipc	a5,0x4
    80002fe0:	3387c783          	lbu	a5,824(a5) # 80007314 <_ZL9finishedD>
    80002fe4:	fc0786e3          	beqz	a5,80002fb0 <_Z18Threads_C_API_testv+0xb4>
    }

}
    80002fe8:	02813083          	ld	ra,40(sp)
    80002fec:	02013403          	ld	s0,32(sp)
    80002ff0:	03010113          	addi	sp,sp,48
    80002ff4:	00008067          	ret

0000000080002ff8 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80002ff8:	fe010113          	addi	sp,sp,-32
    80002ffc:	00113c23          	sd	ra,24(sp)
    80003000:	00813823          	sd	s0,16(sp)
    80003004:	00913423          	sd	s1,8(sp)
    80003008:	02010413          	addi	s0,sp,32
    8000300c:	00050493          	mv	s1,a0
    LOCK();
    80003010:	00100613          	li	a2,1
    80003014:	00000593          	li	a1,0
    80003018:	00004517          	auipc	a0,0x4
    8000301c:	30050513          	addi	a0,a0,768 # 80007318 <lockPrint>
    80003020:	ffffe097          	auipc	ra,0xffffe
    80003024:	22c080e7          	jalr	556(ra) # 8000124c <copy_and_swap>
    80003028:	00050863          	beqz	a0,80003038 <_Z11printStringPKc+0x40>
    8000302c:	ffffe097          	auipc	ra,0xffffe
    80003030:	354080e7          	jalr	852(ra) # 80001380 <_Z15thread_dispatchv>
    80003034:	fddff06f          	j	80003010 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80003038:	0004c503          	lbu	a0,0(s1)
    8000303c:	00050a63          	beqz	a0,80003050 <_Z11printStringPKc+0x58>
    {
        putc(*string);
    80003040:	fffff097          	auipc	ra,0xfffff
    80003044:	01c080e7          	jalr	28(ra) # 8000205c <_Z4putcc>
        string++;
    80003048:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    8000304c:	fedff06f          	j	80003038 <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    80003050:	00000613          	li	a2,0
    80003054:	00100593          	li	a1,1
    80003058:	00004517          	auipc	a0,0x4
    8000305c:	2c050513          	addi	a0,a0,704 # 80007318 <lockPrint>
    80003060:	ffffe097          	auipc	ra,0xffffe
    80003064:	1ec080e7          	jalr	492(ra) # 8000124c <copy_and_swap>
    80003068:	fe0514e3          	bnez	a0,80003050 <_Z11printStringPKc+0x58>
}
    8000306c:	01813083          	ld	ra,24(sp)
    80003070:	01013403          	ld	s0,16(sp)
    80003074:	00813483          	ld	s1,8(sp)
    80003078:	02010113          	addi	sp,sp,32
    8000307c:	00008067          	ret

0000000080003080 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80003080:	fd010113          	addi	sp,sp,-48
    80003084:	02113423          	sd	ra,40(sp)
    80003088:	02813023          	sd	s0,32(sp)
    8000308c:	00913c23          	sd	s1,24(sp)
    80003090:	01213823          	sd	s2,16(sp)
    80003094:	01313423          	sd	s3,8(sp)
    80003098:	01413023          	sd	s4,0(sp)
    8000309c:	03010413          	addi	s0,sp,48
    800030a0:	00050993          	mv	s3,a0
    800030a4:	00058a13          	mv	s4,a1
    LOCK();
    800030a8:	00100613          	li	a2,1
    800030ac:	00000593          	li	a1,0
    800030b0:	00004517          	auipc	a0,0x4
    800030b4:	26850513          	addi	a0,a0,616 # 80007318 <lockPrint>
    800030b8:	ffffe097          	auipc	ra,0xffffe
    800030bc:	194080e7          	jalr	404(ra) # 8000124c <copy_and_swap>
    800030c0:	00050863          	beqz	a0,800030d0 <_Z9getStringPci+0x50>
    800030c4:	ffffe097          	auipc	ra,0xffffe
    800030c8:	2bc080e7          	jalr	700(ra) # 80001380 <_Z15thread_dispatchv>
    800030cc:	fddff06f          	j	800030a8 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    800030d0:	00000913          	li	s2,0
    800030d4:	00090493          	mv	s1,s2
    800030d8:	0019091b          	addiw	s2,s2,1
    800030dc:	03495a63          	bge	s2,s4,80003110 <_Z9getStringPci+0x90>
        cc = getc();
    800030e0:	fffff097          	auipc	ra,0xfffff
    800030e4:	fa4080e7          	jalr	-92(ra) # 80002084 <_Z4getcv>
        if(cc < 1)
    800030e8:	02050463          	beqz	a0,80003110 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    800030ec:	009984b3          	add	s1,s3,s1
    800030f0:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    800030f4:	00a00793          	li	a5,10
    800030f8:	00f50a63          	beq	a0,a5,8000310c <_Z9getStringPci+0x8c>
    800030fc:	00d00793          	li	a5,13
    80003100:	fcf51ae3          	bne	a0,a5,800030d4 <_Z9getStringPci+0x54>
        buf[i++] = c;
    80003104:	00090493          	mv	s1,s2
    80003108:	0080006f          	j	80003110 <_Z9getStringPci+0x90>
    8000310c:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80003110:	009984b3          	add	s1,s3,s1
    80003114:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80003118:	00000613          	li	a2,0
    8000311c:	00100593          	li	a1,1
    80003120:	00004517          	auipc	a0,0x4
    80003124:	1f850513          	addi	a0,a0,504 # 80007318 <lockPrint>
    80003128:	ffffe097          	auipc	ra,0xffffe
    8000312c:	124080e7          	jalr	292(ra) # 8000124c <copy_and_swap>
    80003130:	fe0514e3          	bnez	a0,80003118 <_Z9getStringPci+0x98>
    return buf;
}
    80003134:	00098513          	mv	a0,s3
    80003138:	02813083          	ld	ra,40(sp)
    8000313c:	02013403          	ld	s0,32(sp)
    80003140:	01813483          	ld	s1,24(sp)
    80003144:	01013903          	ld	s2,16(sp)
    80003148:	00813983          	ld	s3,8(sp)
    8000314c:	00013a03          	ld	s4,0(sp)
    80003150:	03010113          	addi	sp,sp,48
    80003154:	00008067          	ret

0000000080003158 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80003158:	ff010113          	addi	sp,sp,-16
    8000315c:	00813423          	sd	s0,8(sp)
    80003160:	01010413          	addi	s0,sp,16
    80003164:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80003168:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    8000316c:	0006c603          	lbu	a2,0(a3)
    80003170:	fd06071b          	addiw	a4,a2,-48
    80003174:	0ff77713          	andi	a4,a4,255
    80003178:	00900793          	li	a5,9
    8000317c:	02e7e063          	bltu	a5,a4,8000319c <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80003180:	0025179b          	slliw	a5,a0,0x2
    80003184:	00a787bb          	addw	a5,a5,a0
    80003188:	0017979b          	slliw	a5,a5,0x1
    8000318c:	00168693          	addi	a3,a3,1
    80003190:	00c787bb          	addw	a5,a5,a2
    80003194:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80003198:	fd5ff06f          	j	8000316c <_Z11stringToIntPKc+0x14>
    return n;
}
    8000319c:	00813403          	ld	s0,8(sp)
    800031a0:	01010113          	addi	sp,sp,16
    800031a4:	00008067          	ret

00000000800031a8 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    800031a8:	fc010113          	addi	sp,sp,-64
    800031ac:	02113c23          	sd	ra,56(sp)
    800031b0:	02813823          	sd	s0,48(sp)
    800031b4:	02913423          	sd	s1,40(sp)
    800031b8:	03213023          	sd	s2,32(sp)
    800031bc:	01313c23          	sd	s3,24(sp)
    800031c0:	04010413          	addi	s0,sp,64
    800031c4:	00050493          	mv	s1,a0
    800031c8:	00058913          	mv	s2,a1
    800031cc:	00060993          	mv	s3,a2
    LOCK();
    800031d0:	00100613          	li	a2,1
    800031d4:	00000593          	li	a1,0
    800031d8:	00004517          	auipc	a0,0x4
    800031dc:	14050513          	addi	a0,a0,320 # 80007318 <lockPrint>
    800031e0:	ffffe097          	auipc	ra,0xffffe
    800031e4:	06c080e7          	jalr	108(ra) # 8000124c <copy_and_swap>
    800031e8:	00050863          	beqz	a0,800031f8 <_Z8printIntiii+0x50>
    800031ec:	ffffe097          	auipc	ra,0xffffe
    800031f0:	194080e7          	jalr	404(ra) # 80001380 <_Z15thread_dispatchv>
    800031f4:	fddff06f          	j	800031d0 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    800031f8:	00098463          	beqz	s3,80003200 <_Z8printIntiii+0x58>
    800031fc:	0804c463          	bltz	s1,80003284 <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80003200:	0004851b          	sext.w	a0,s1
    neg = 0;
    80003204:	00000593          	li	a1,0
    }

    i = 0;
    80003208:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    8000320c:	0009079b          	sext.w	a5,s2
    80003210:	0325773b          	remuw	a4,a0,s2
    80003214:	00048613          	mv	a2,s1
    80003218:	0014849b          	addiw	s1,s1,1
    8000321c:	02071693          	slli	a3,a4,0x20
    80003220:	0206d693          	srli	a3,a3,0x20
    80003224:	00004717          	auipc	a4,0x4
    80003228:	00c70713          	addi	a4,a4,12 # 80007230 <digits>
    8000322c:	00d70733          	add	a4,a4,a3
    80003230:	00074683          	lbu	a3,0(a4)
    80003234:	fd040713          	addi	a4,s0,-48
    80003238:	00c70733          	add	a4,a4,a2
    8000323c:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80003240:	0005071b          	sext.w	a4,a0
    80003244:	0325553b          	divuw	a0,a0,s2
    80003248:	fcf772e3          	bgeu	a4,a5,8000320c <_Z8printIntiii+0x64>
    if(neg)
    8000324c:	00058c63          	beqz	a1,80003264 <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    80003250:	fd040793          	addi	a5,s0,-48
    80003254:	009784b3          	add	s1,a5,s1
    80003258:	02d00793          	li	a5,45
    8000325c:	fef48823          	sb	a5,-16(s1)
    80003260:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80003264:	fff4849b          	addiw	s1,s1,-1
    80003268:	0204c463          	bltz	s1,80003290 <_Z8printIntiii+0xe8>
        putc(buf[i]);
    8000326c:	fd040793          	addi	a5,s0,-48
    80003270:	009787b3          	add	a5,a5,s1
    80003274:	ff07c503          	lbu	a0,-16(a5)
    80003278:	fffff097          	auipc	ra,0xfffff
    8000327c:	de4080e7          	jalr	-540(ra) # 8000205c <_Z4putcc>
    80003280:	fe5ff06f          	j	80003264 <_Z8printIntiii+0xbc>
        x = -xx;
    80003284:	4090053b          	negw	a0,s1
        neg = 1;
    80003288:	00100593          	li	a1,1
        x = -xx;
    8000328c:	f7dff06f          	j	80003208 <_Z8printIntiii+0x60>

    UNLOCK();
    80003290:	00000613          	li	a2,0
    80003294:	00100593          	li	a1,1
    80003298:	00004517          	auipc	a0,0x4
    8000329c:	08050513          	addi	a0,a0,128 # 80007318 <lockPrint>
    800032a0:	ffffe097          	auipc	ra,0xffffe
    800032a4:	fac080e7          	jalr	-84(ra) # 8000124c <copy_and_swap>
    800032a8:	fe0514e3          	bnez	a0,80003290 <_Z8printIntiii+0xe8>
    800032ac:	03813083          	ld	ra,56(sp)
    800032b0:	03013403          	ld	s0,48(sp)
    800032b4:	02813483          	ld	s1,40(sp)
    800032b8:	02013903          	ld	s2,32(sp)
    800032bc:	01813983          	ld	s3,24(sp)
    800032c0:	04010113          	addi	sp,sp,64
    800032c4:	00008067          	ret

00000000800032c8 <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    800032c8:	ff010113          	addi	sp,sp,-16
    800032cc:	00113423          	sd	ra,8(sp)
    800032d0:	00813023          	sd	s0,0(sp)
    800032d4:	01010413          	addi	s0,sp,16
    printString("Unesite broj testa? [1-7]\n");
    800032d8:	00003517          	auipc	a0,0x3
    800032dc:	ea050513          	addi	a0,a0,-352 # 80006178 <CONSOLE_STATUS+0x168>
    800032e0:	00000097          	auipc	ra,0x0
    800032e4:	d18080e7          	jalr	-744(ra) # 80002ff8 <_Z11printStringPKc>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
#endif
            break;
        case 2:
#if LEVEL_2_IMPLEMENTED == 1
            Threads_CPP_API_test();
    800032e8:	fffff097          	auipc	ra,0xfffff
    800032ec:	2a0080e7          	jalr	672(ra) # 80002588 <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    800032f0:	00003517          	auipc	a0,0x3
    800032f4:	ea850513          	addi	a0,a0,-344 # 80006198 <CONSOLE_STATUS+0x188>
    800032f8:	00000097          	auipc	ra,0x0
    800032fc:	d00080e7          	jalr	-768(ra) # 80002ff8 <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    80003300:	00813083          	ld	ra,8(sp)
    80003304:	00013403          	ld	s0,0(sp)
    80003308:	01010113          	addi	sp,sp,16
    8000330c:	00008067          	ret

0000000080003310 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80003310:	fe010113          	addi	sp,sp,-32
    80003314:	00113c23          	sd	ra,24(sp)
    80003318:	00813823          	sd	s0,16(sp)
    8000331c:	00913423          	sd	s1,8(sp)
    80003320:	01213023          	sd	s2,0(sp)
    80003324:	02010413          	addi	s0,sp,32
    80003328:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    8000332c:	00100793          	li	a5,1
    80003330:	02a7f863          	bgeu	a5,a0,80003360 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80003334:	00a00793          	li	a5,10
    80003338:	02f577b3          	remu	a5,a0,a5
    8000333c:	02078e63          	beqz	a5,80003378 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80003340:	fff48513          	addi	a0,s1,-1
    80003344:	00000097          	auipc	ra,0x0
    80003348:	fcc080e7          	jalr	-52(ra) # 80003310 <_ZL9fibonaccim>
    8000334c:	00050913          	mv	s2,a0
    80003350:	ffe48513          	addi	a0,s1,-2
    80003354:	00000097          	auipc	ra,0x0
    80003358:	fbc080e7          	jalr	-68(ra) # 80003310 <_ZL9fibonaccim>
    8000335c:	00a90533          	add	a0,s2,a0
}
    80003360:	01813083          	ld	ra,24(sp)
    80003364:	01013403          	ld	s0,16(sp)
    80003368:	00813483          	ld	s1,8(sp)
    8000336c:	00013903          	ld	s2,0(sp)
    80003370:	02010113          	addi	sp,sp,32
    80003374:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80003378:	ffffe097          	auipc	ra,0xffffe
    8000337c:	008080e7          	jalr	8(ra) # 80001380 <_Z15thread_dispatchv>
    80003380:	fc1ff06f          	j	80003340 <_ZL9fibonaccim+0x30>

0000000080003384 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80003384:	fe010113          	addi	sp,sp,-32
    80003388:	00113c23          	sd	ra,24(sp)
    8000338c:	00813823          	sd	s0,16(sp)
    80003390:	00913423          	sd	s1,8(sp)
    80003394:	01213023          	sd	s2,0(sp)
    80003398:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    8000339c:	00a00493          	li	s1,10
    800033a0:	0400006f          	j	800033e0 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800033a4:	00003517          	auipc	a0,0x3
    800033a8:	d2c50513          	addi	a0,a0,-724 # 800060d0 <CONSOLE_STATUS+0xc0>
    800033ac:	00000097          	auipc	ra,0x0
    800033b0:	c4c080e7          	jalr	-948(ra) # 80002ff8 <_Z11printStringPKc>
    800033b4:	00000613          	li	a2,0
    800033b8:	00a00593          	li	a1,10
    800033bc:	00048513          	mv	a0,s1
    800033c0:	00000097          	auipc	ra,0x0
    800033c4:	de8080e7          	jalr	-536(ra) # 800031a8 <_Z8printIntiii>
    800033c8:	00003517          	auipc	a0,0x3
    800033cc:	f2050513          	addi	a0,a0,-224 # 800062e8 <CONSOLE_STATUS+0x2d8>
    800033d0:	00000097          	auipc	ra,0x0
    800033d4:	c28080e7          	jalr	-984(ra) # 80002ff8 <_Z11printStringPKc>
    for (; i < 13; i++) {
    800033d8:	0014849b          	addiw	s1,s1,1
    800033dc:	0ff4f493          	andi	s1,s1,255
    800033e0:	00c00793          	li	a5,12
    800033e4:	fc97f0e3          	bgeu	a5,s1,800033a4 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    800033e8:	00003517          	auipc	a0,0x3
    800033ec:	cf050513          	addi	a0,a0,-784 # 800060d8 <CONSOLE_STATUS+0xc8>
    800033f0:	00000097          	auipc	ra,0x0
    800033f4:	c08080e7          	jalr	-1016(ra) # 80002ff8 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800033f8:	00500313          	li	t1,5
    thread_dispatch();
    800033fc:	ffffe097          	auipc	ra,0xffffe
    80003400:	f84080e7          	jalr	-124(ra) # 80001380 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80003404:	01000513          	li	a0,16
    80003408:	00000097          	auipc	ra,0x0
    8000340c:	f08080e7          	jalr	-248(ra) # 80003310 <_ZL9fibonaccim>
    80003410:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80003414:	00003517          	auipc	a0,0x3
    80003418:	cd450513          	addi	a0,a0,-812 # 800060e8 <CONSOLE_STATUS+0xd8>
    8000341c:	00000097          	auipc	ra,0x0
    80003420:	bdc080e7          	jalr	-1060(ra) # 80002ff8 <_Z11printStringPKc>
    80003424:	00000613          	li	a2,0
    80003428:	00a00593          	li	a1,10
    8000342c:	0009051b          	sext.w	a0,s2
    80003430:	00000097          	auipc	ra,0x0
    80003434:	d78080e7          	jalr	-648(ra) # 800031a8 <_Z8printIntiii>
    80003438:	00003517          	auipc	a0,0x3
    8000343c:	eb050513          	addi	a0,a0,-336 # 800062e8 <CONSOLE_STATUS+0x2d8>
    80003440:	00000097          	auipc	ra,0x0
    80003444:	bb8080e7          	jalr	-1096(ra) # 80002ff8 <_Z11printStringPKc>
    80003448:	0400006f          	j	80003488 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    8000344c:	00003517          	auipc	a0,0x3
    80003450:	c8450513          	addi	a0,a0,-892 # 800060d0 <CONSOLE_STATUS+0xc0>
    80003454:	00000097          	auipc	ra,0x0
    80003458:	ba4080e7          	jalr	-1116(ra) # 80002ff8 <_Z11printStringPKc>
    8000345c:	00000613          	li	a2,0
    80003460:	00a00593          	li	a1,10
    80003464:	00048513          	mv	a0,s1
    80003468:	00000097          	auipc	ra,0x0
    8000346c:	d40080e7          	jalr	-704(ra) # 800031a8 <_Z8printIntiii>
    80003470:	00003517          	auipc	a0,0x3
    80003474:	e7850513          	addi	a0,a0,-392 # 800062e8 <CONSOLE_STATUS+0x2d8>
    80003478:	00000097          	auipc	ra,0x0
    8000347c:	b80080e7          	jalr	-1152(ra) # 80002ff8 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80003480:	0014849b          	addiw	s1,s1,1
    80003484:	0ff4f493          	andi	s1,s1,255
    80003488:	00f00793          	li	a5,15
    8000348c:	fc97f0e3          	bgeu	a5,s1,8000344c <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80003490:	00003517          	auipc	a0,0x3
    80003494:	c6850513          	addi	a0,a0,-920 # 800060f8 <CONSOLE_STATUS+0xe8>
    80003498:	00000097          	auipc	ra,0x0
    8000349c:	b60080e7          	jalr	-1184(ra) # 80002ff8 <_Z11printStringPKc>
    finishedD = true;
    800034a0:	00100793          	li	a5,1
    800034a4:	00004717          	auipc	a4,0x4
    800034a8:	e6f70e23          	sb	a5,-388(a4) # 80007320 <_ZL9finishedD>
    thread_dispatch();
    800034ac:	ffffe097          	auipc	ra,0xffffe
    800034b0:	ed4080e7          	jalr	-300(ra) # 80001380 <_Z15thread_dispatchv>
}
    800034b4:	01813083          	ld	ra,24(sp)
    800034b8:	01013403          	ld	s0,16(sp)
    800034bc:	00813483          	ld	s1,8(sp)
    800034c0:	00013903          	ld	s2,0(sp)
    800034c4:	02010113          	addi	sp,sp,32
    800034c8:	00008067          	ret

00000000800034cc <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    800034cc:	fe010113          	addi	sp,sp,-32
    800034d0:	00113c23          	sd	ra,24(sp)
    800034d4:	00813823          	sd	s0,16(sp)
    800034d8:	00913423          	sd	s1,8(sp)
    800034dc:	01213023          	sd	s2,0(sp)
    800034e0:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800034e4:	00000493          	li	s1,0
    800034e8:	0400006f          	j	80003528 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    800034ec:	00003517          	auipc	a0,0x3
    800034f0:	bb450513          	addi	a0,a0,-1100 # 800060a0 <CONSOLE_STATUS+0x90>
    800034f4:	00000097          	auipc	ra,0x0
    800034f8:	b04080e7          	jalr	-1276(ra) # 80002ff8 <_Z11printStringPKc>
    800034fc:	00000613          	li	a2,0
    80003500:	00a00593          	li	a1,10
    80003504:	00048513          	mv	a0,s1
    80003508:	00000097          	auipc	ra,0x0
    8000350c:	ca0080e7          	jalr	-864(ra) # 800031a8 <_Z8printIntiii>
    80003510:	00003517          	auipc	a0,0x3
    80003514:	dd850513          	addi	a0,a0,-552 # 800062e8 <CONSOLE_STATUS+0x2d8>
    80003518:	00000097          	auipc	ra,0x0
    8000351c:	ae0080e7          	jalr	-1312(ra) # 80002ff8 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80003520:	0014849b          	addiw	s1,s1,1
    80003524:	0ff4f493          	andi	s1,s1,255
    80003528:	00200793          	li	a5,2
    8000352c:	fc97f0e3          	bgeu	a5,s1,800034ec <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80003530:	00003517          	auipc	a0,0x3
    80003534:	b7850513          	addi	a0,a0,-1160 # 800060a8 <CONSOLE_STATUS+0x98>
    80003538:	00000097          	auipc	ra,0x0
    8000353c:	ac0080e7          	jalr	-1344(ra) # 80002ff8 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80003540:	00700313          	li	t1,7
    thread_dispatch();
    80003544:	ffffe097          	auipc	ra,0xffffe
    80003548:	e3c080e7          	jalr	-452(ra) # 80001380 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    8000354c:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80003550:	00003517          	auipc	a0,0x3
    80003554:	b6850513          	addi	a0,a0,-1176 # 800060b8 <CONSOLE_STATUS+0xa8>
    80003558:	00000097          	auipc	ra,0x0
    8000355c:	aa0080e7          	jalr	-1376(ra) # 80002ff8 <_Z11printStringPKc>
    80003560:	00000613          	li	a2,0
    80003564:	00a00593          	li	a1,10
    80003568:	0009051b          	sext.w	a0,s2
    8000356c:	00000097          	auipc	ra,0x0
    80003570:	c3c080e7          	jalr	-964(ra) # 800031a8 <_Z8printIntiii>
    80003574:	00003517          	auipc	a0,0x3
    80003578:	d7450513          	addi	a0,a0,-652 # 800062e8 <CONSOLE_STATUS+0x2d8>
    8000357c:	00000097          	auipc	ra,0x0
    80003580:	a7c080e7          	jalr	-1412(ra) # 80002ff8 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80003584:	00c00513          	li	a0,12
    80003588:	00000097          	auipc	ra,0x0
    8000358c:	d88080e7          	jalr	-632(ra) # 80003310 <_ZL9fibonaccim>
    80003590:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80003594:	00003517          	auipc	a0,0x3
    80003598:	b2c50513          	addi	a0,a0,-1236 # 800060c0 <CONSOLE_STATUS+0xb0>
    8000359c:	00000097          	auipc	ra,0x0
    800035a0:	a5c080e7          	jalr	-1444(ra) # 80002ff8 <_Z11printStringPKc>
    800035a4:	00000613          	li	a2,0
    800035a8:	00a00593          	li	a1,10
    800035ac:	0009051b          	sext.w	a0,s2
    800035b0:	00000097          	auipc	ra,0x0
    800035b4:	bf8080e7          	jalr	-1032(ra) # 800031a8 <_Z8printIntiii>
    800035b8:	00003517          	auipc	a0,0x3
    800035bc:	d3050513          	addi	a0,a0,-720 # 800062e8 <CONSOLE_STATUS+0x2d8>
    800035c0:	00000097          	auipc	ra,0x0
    800035c4:	a38080e7          	jalr	-1480(ra) # 80002ff8 <_Z11printStringPKc>
    800035c8:	0400006f          	j	80003608 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    800035cc:	00003517          	auipc	a0,0x3
    800035d0:	ad450513          	addi	a0,a0,-1324 # 800060a0 <CONSOLE_STATUS+0x90>
    800035d4:	00000097          	auipc	ra,0x0
    800035d8:	a24080e7          	jalr	-1500(ra) # 80002ff8 <_Z11printStringPKc>
    800035dc:	00000613          	li	a2,0
    800035e0:	00a00593          	li	a1,10
    800035e4:	00048513          	mv	a0,s1
    800035e8:	00000097          	auipc	ra,0x0
    800035ec:	bc0080e7          	jalr	-1088(ra) # 800031a8 <_Z8printIntiii>
    800035f0:	00003517          	auipc	a0,0x3
    800035f4:	cf850513          	addi	a0,a0,-776 # 800062e8 <CONSOLE_STATUS+0x2d8>
    800035f8:	00000097          	auipc	ra,0x0
    800035fc:	a00080e7          	jalr	-1536(ra) # 80002ff8 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80003600:	0014849b          	addiw	s1,s1,1
    80003604:	0ff4f493          	andi	s1,s1,255
    80003608:	00500793          	li	a5,5
    8000360c:	fc97f0e3          	bgeu	a5,s1,800035cc <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80003610:	00003517          	auipc	a0,0x3
    80003614:	a6850513          	addi	a0,a0,-1432 # 80006078 <CONSOLE_STATUS+0x68>
    80003618:	00000097          	auipc	ra,0x0
    8000361c:	9e0080e7          	jalr	-1568(ra) # 80002ff8 <_Z11printStringPKc>
    finishedC = true;
    80003620:	00100793          	li	a5,1
    80003624:	00004717          	auipc	a4,0x4
    80003628:	cef70ea3          	sb	a5,-771(a4) # 80007321 <_ZL9finishedC>
    thread_dispatch();
    8000362c:	ffffe097          	auipc	ra,0xffffe
    80003630:	d54080e7          	jalr	-684(ra) # 80001380 <_Z15thread_dispatchv>
}
    80003634:	01813083          	ld	ra,24(sp)
    80003638:	01013403          	ld	s0,16(sp)
    8000363c:	00813483          	ld	s1,8(sp)
    80003640:	00013903          	ld	s2,0(sp)
    80003644:	02010113          	addi	sp,sp,32
    80003648:	00008067          	ret

000000008000364c <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    8000364c:	fe010113          	addi	sp,sp,-32
    80003650:	00113c23          	sd	ra,24(sp)
    80003654:	00813823          	sd	s0,16(sp)
    80003658:	00913423          	sd	s1,8(sp)
    8000365c:	01213023          	sd	s2,0(sp)
    80003660:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80003664:	00000913          	li	s2,0
    80003668:	0400006f          	j	800036a8 <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    8000366c:	ffffe097          	auipc	ra,0xffffe
    80003670:	d14080e7          	jalr	-748(ra) # 80001380 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003674:	00148493          	addi	s1,s1,1
    80003678:	000027b7          	lui	a5,0x2
    8000367c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003680:	0097ee63          	bltu	a5,s1,8000369c <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003684:	00000713          	li	a4,0
    80003688:	000077b7          	lui	a5,0x7
    8000368c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003690:	fce7eee3          	bltu	a5,a4,8000366c <_ZL11workerBodyBPv+0x20>
    80003694:	00170713          	addi	a4,a4,1
    80003698:	ff1ff06f          	j	80003688 <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    8000369c:	00a00793          	li	a5,10
    800036a0:	04f90663          	beq	s2,a5,800036ec <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    800036a4:	00190913          	addi	s2,s2,1
    800036a8:	00f00793          	li	a5,15
    800036ac:	0527e463          	bltu	a5,s2,800036f4 <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    800036b0:	00003517          	auipc	a0,0x3
    800036b4:	9d850513          	addi	a0,a0,-1576 # 80006088 <CONSOLE_STATUS+0x78>
    800036b8:	00000097          	auipc	ra,0x0
    800036bc:	940080e7          	jalr	-1728(ra) # 80002ff8 <_Z11printStringPKc>
    800036c0:	00000613          	li	a2,0
    800036c4:	00a00593          	li	a1,10
    800036c8:	0009051b          	sext.w	a0,s2
    800036cc:	00000097          	auipc	ra,0x0
    800036d0:	adc080e7          	jalr	-1316(ra) # 800031a8 <_Z8printIntiii>
    800036d4:	00003517          	auipc	a0,0x3
    800036d8:	c1450513          	addi	a0,a0,-1004 # 800062e8 <CONSOLE_STATUS+0x2d8>
    800036dc:	00000097          	auipc	ra,0x0
    800036e0:	91c080e7          	jalr	-1764(ra) # 80002ff8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800036e4:	00000493          	li	s1,0
    800036e8:	f91ff06f          	j	80003678 <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    800036ec:	14102ff3          	csrr	t6,sepc
    800036f0:	fb5ff06f          	j	800036a4 <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    800036f4:	00003517          	auipc	a0,0x3
    800036f8:	99c50513          	addi	a0,a0,-1636 # 80006090 <CONSOLE_STATUS+0x80>
    800036fc:	00000097          	auipc	ra,0x0
    80003700:	8fc080e7          	jalr	-1796(ra) # 80002ff8 <_Z11printStringPKc>
    finishedB = true;
    80003704:	00100793          	li	a5,1
    80003708:	00004717          	auipc	a4,0x4
    8000370c:	c0f70d23          	sb	a5,-998(a4) # 80007322 <_ZL9finishedB>
    thread_dispatch();
    80003710:	ffffe097          	auipc	ra,0xffffe
    80003714:	c70080e7          	jalr	-912(ra) # 80001380 <_Z15thread_dispatchv>
}
    80003718:	01813083          	ld	ra,24(sp)
    8000371c:	01013403          	ld	s0,16(sp)
    80003720:	00813483          	ld	s1,8(sp)
    80003724:	00013903          	ld	s2,0(sp)
    80003728:	02010113          	addi	sp,sp,32
    8000372c:	00008067          	ret

0000000080003730 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80003730:	fe010113          	addi	sp,sp,-32
    80003734:	00113c23          	sd	ra,24(sp)
    80003738:	00813823          	sd	s0,16(sp)
    8000373c:	00913423          	sd	s1,8(sp)
    80003740:	01213023          	sd	s2,0(sp)
    80003744:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80003748:	00000913          	li	s2,0
    8000374c:	0380006f          	j	80003784 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80003750:	ffffe097          	auipc	ra,0xffffe
    80003754:	c30080e7          	jalr	-976(ra) # 80001380 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003758:	00148493          	addi	s1,s1,1
    8000375c:	000027b7          	lui	a5,0x2
    80003760:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003764:	0097ee63          	bltu	a5,s1,80003780 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003768:	00000713          	li	a4,0
    8000376c:	000077b7          	lui	a5,0x7
    80003770:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003774:	fce7eee3          	bltu	a5,a4,80003750 <_ZL11workerBodyAPv+0x20>
    80003778:	00170713          	addi	a4,a4,1
    8000377c:	ff1ff06f          	j	8000376c <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80003780:	00190913          	addi	s2,s2,1
    80003784:	00900793          	li	a5,9
    80003788:	0527e063          	bltu	a5,s2,800037c8 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    8000378c:	00003517          	auipc	a0,0x3
    80003790:	8e450513          	addi	a0,a0,-1820 # 80006070 <CONSOLE_STATUS+0x60>
    80003794:	00000097          	auipc	ra,0x0
    80003798:	864080e7          	jalr	-1948(ra) # 80002ff8 <_Z11printStringPKc>
    8000379c:	00000613          	li	a2,0
    800037a0:	00a00593          	li	a1,10
    800037a4:	0009051b          	sext.w	a0,s2
    800037a8:	00000097          	auipc	ra,0x0
    800037ac:	a00080e7          	jalr	-1536(ra) # 800031a8 <_Z8printIntiii>
    800037b0:	00003517          	auipc	a0,0x3
    800037b4:	b3850513          	addi	a0,a0,-1224 # 800062e8 <CONSOLE_STATUS+0x2d8>
    800037b8:	00000097          	auipc	ra,0x0
    800037bc:	840080e7          	jalr	-1984(ra) # 80002ff8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800037c0:	00000493          	li	s1,0
    800037c4:	f99ff06f          	j	8000375c <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    800037c8:	00003517          	auipc	a0,0x3
    800037cc:	8b050513          	addi	a0,a0,-1872 # 80006078 <CONSOLE_STATUS+0x68>
    800037d0:	00000097          	auipc	ra,0x0
    800037d4:	828080e7          	jalr	-2008(ra) # 80002ff8 <_Z11printStringPKc>
    finishedA = true;
    800037d8:	00100793          	li	a5,1
    800037dc:	00004717          	auipc	a4,0x4
    800037e0:	b4f703a3          	sb	a5,-1209(a4) # 80007323 <_ZL9finishedA>
}
    800037e4:	01813083          	ld	ra,24(sp)
    800037e8:	01013403          	ld	s0,16(sp)
    800037ec:	00813483          	ld	s1,8(sp)
    800037f0:	00013903          	ld	s2,0(sp)
    800037f4:	02010113          	addi	sp,sp,32
    800037f8:	00008067          	ret

00000000800037fc <_Z16System_Mode_testv>:


void System_Mode_test() {
    800037fc:	fd010113          	addi	sp,sp,-48
    80003800:	02113423          	sd	ra,40(sp)
    80003804:	02813023          	sd	s0,32(sp)
    80003808:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    8000380c:	00000613          	li	a2,0
    80003810:	00000597          	auipc	a1,0x0
    80003814:	f2058593          	addi	a1,a1,-224 # 80003730 <_ZL11workerBodyAPv>
    80003818:	fd040513          	addi	a0,s0,-48
    8000381c:	ffffe097          	auipc	ra,0xffffe
    80003820:	ae8080e7          	jalr	-1304(ra) # 80001304 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadA created\n");
    80003824:	00003517          	auipc	a0,0x3
    80003828:	8e450513          	addi	a0,a0,-1820 # 80006108 <CONSOLE_STATUS+0xf8>
    8000382c:	fffff097          	auipc	ra,0xfffff
    80003830:	7cc080e7          	jalr	1996(ra) # 80002ff8 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80003834:	00000613          	li	a2,0
    80003838:	00000597          	auipc	a1,0x0
    8000383c:	e1458593          	addi	a1,a1,-492 # 8000364c <_ZL11workerBodyBPv>
    80003840:	fd840513          	addi	a0,s0,-40
    80003844:	ffffe097          	auipc	ra,0xffffe
    80003848:	ac0080e7          	jalr	-1344(ra) # 80001304 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadB created\n");
    8000384c:	00003517          	auipc	a0,0x3
    80003850:	8d450513          	addi	a0,a0,-1836 # 80006120 <CONSOLE_STATUS+0x110>
    80003854:	fffff097          	auipc	ra,0xfffff
    80003858:	7a4080e7          	jalr	1956(ra) # 80002ff8 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    8000385c:	00000613          	li	a2,0
    80003860:	00000597          	auipc	a1,0x0
    80003864:	c6c58593          	addi	a1,a1,-916 # 800034cc <_ZL11workerBodyCPv>
    80003868:	fe040513          	addi	a0,s0,-32
    8000386c:	ffffe097          	auipc	ra,0xffffe
    80003870:	a98080e7          	jalr	-1384(ra) # 80001304 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadC created\n");
    80003874:	00003517          	auipc	a0,0x3
    80003878:	8c450513          	addi	a0,a0,-1852 # 80006138 <CONSOLE_STATUS+0x128>
    8000387c:	fffff097          	auipc	ra,0xfffff
    80003880:	77c080e7          	jalr	1916(ra) # 80002ff8 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80003884:	00000613          	li	a2,0
    80003888:	00000597          	auipc	a1,0x0
    8000388c:	afc58593          	addi	a1,a1,-1284 # 80003384 <_ZL11workerBodyDPv>
    80003890:	fe840513          	addi	a0,s0,-24
    80003894:	ffffe097          	auipc	ra,0xffffe
    80003898:	a70080e7          	jalr	-1424(ra) # 80001304 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadD created\n");
    8000389c:	00003517          	auipc	a0,0x3
    800038a0:	8b450513          	addi	a0,a0,-1868 # 80006150 <CONSOLE_STATUS+0x140>
    800038a4:	fffff097          	auipc	ra,0xfffff
    800038a8:	754080e7          	jalr	1876(ra) # 80002ff8 <_Z11printStringPKc>
    800038ac:	00c0006f          	j	800038b8 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    800038b0:	ffffe097          	auipc	ra,0xffffe
    800038b4:	ad0080e7          	jalr	-1328(ra) # 80001380 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800038b8:	00004797          	auipc	a5,0x4
    800038bc:	a6b7c783          	lbu	a5,-1429(a5) # 80007323 <_ZL9finishedA>
    800038c0:	fe0788e3          	beqz	a5,800038b0 <_Z16System_Mode_testv+0xb4>
    800038c4:	00004797          	auipc	a5,0x4
    800038c8:	a5e7c783          	lbu	a5,-1442(a5) # 80007322 <_ZL9finishedB>
    800038cc:	fe0782e3          	beqz	a5,800038b0 <_Z16System_Mode_testv+0xb4>
    800038d0:	00004797          	auipc	a5,0x4
    800038d4:	a517c783          	lbu	a5,-1455(a5) # 80007321 <_ZL9finishedC>
    800038d8:	fc078ce3          	beqz	a5,800038b0 <_Z16System_Mode_testv+0xb4>
    800038dc:	00004797          	auipc	a5,0x4
    800038e0:	a447c783          	lbu	a5,-1468(a5) # 80007320 <_ZL9finishedD>
    800038e4:	fc0786e3          	beqz	a5,800038b0 <_Z16System_Mode_testv+0xb4>
    }

}
    800038e8:	02813083          	ld	ra,40(sp)
    800038ec:	02013403          	ld	s0,32(sp)
    800038f0:	03010113          	addi	sp,sp,48
    800038f4:	00008067          	ret

00000000800038f8 <start>:
    800038f8:	ff010113          	addi	sp,sp,-16
    800038fc:	00813423          	sd	s0,8(sp)
    80003900:	01010413          	addi	s0,sp,16
    80003904:	300027f3          	csrr	a5,mstatus
    80003908:	ffffe737          	lui	a4,0xffffe
    8000390c:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff626f>
    80003910:	00e7f7b3          	and	a5,a5,a4
    80003914:	00001737          	lui	a4,0x1
    80003918:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    8000391c:	00e7e7b3          	or	a5,a5,a4
    80003920:	30079073          	csrw	mstatus,a5
    80003924:	00000797          	auipc	a5,0x0
    80003928:	16078793          	addi	a5,a5,352 # 80003a84 <system_main>
    8000392c:	34179073          	csrw	mepc,a5
    80003930:	00000793          	li	a5,0
    80003934:	18079073          	csrw	satp,a5
    80003938:	000107b7          	lui	a5,0x10
    8000393c:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80003940:	30279073          	csrw	medeleg,a5
    80003944:	30379073          	csrw	mideleg,a5
    80003948:	104027f3          	csrr	a5,sie
    8000394c:	2227e793          	ori	a5,a5,546
    80003950:	10479073          	csrw	sie,a5
    80003954:	fff00793          	li	a5,-1
    80003958:	00a7d793          	srli	a5,a5,0xa
    8000395c:	3b079073          	csrw	pmpaddr0,a5
    80003960:	00f00793          	li	a5,15
    80003964:	3a079073          	csrw	pmpcfg0,a5
    80003968:	f14027f3          	csrr	a5,mhartid
    8000396c:	0200c737          	lui	a4,0x200c
    80003970:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80003974:	0007869b          	sext.w	a3,a5
    80003978:	00269713          	slli	a4,a3,0x2
    8000397c:	000f4637          	lui	a2,0xf4
    80003980:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80003984:	00d70733          	add	a4,a4,a3
    80003988:	0037979b          	slliw	a5,a5,0x3
    8000398c:	020046b7          	lui	a3,0x2004
    80003990:	00d787b3          	add	a5,a5,a3
    80003994:	00c585b3          	add	a1,a1,a2
    80003998:	00371693          	slli	a3,a4,0x3
    8000399c:	00004717          	auipc	a4,0x4
    800039a0:	99470713          	addi	a4,a4,-1644 # 80007330 <timer_scratch>
    800039a4:	00b7b023          	sd	a1,0(a5)
    800039a8:	00d70733          	add	a4,a4,a3
    800039ac:	00f73c23          	sd	a5,24(a4)
    800039b0:	02c73023          	sd	a2,32(a4)
    800039b4:	34071073          	csrw	mscratch,a4
    800039b8:	00000797          	auipc	a5,0x0
    800039bc:	6e878793          	addi	a5,a5,1768 # 800040a0 <timervec>
    800039c0:	30579073          	csrw	mtvec,a5
    800039c4:	300027f3          	csrr	a5,mstatus
    800039c8:	0087e793          	ori	a5,a5,8
    800039cc:	30079073          	csrw	mstatus,a5
    800039d0:	304027f3          	csrr	a5,mie
    800039d4:	0807e793          	ori	a5,a5,128
    800039d8:	30479073          	csrw	mie,a5
    800039dc:	f14027f3          	csrr	a5,mhartid
    800039e0:	0007879b          	sext.w	a5,a5
    800039e4:	00078213          	mv	tp,a5
    800039e8:	30200073          	mret
    800039ec:	00813403          	ld	s0,8(sp)
    800039f0:	01010113          	addi	sp,sp,16
    800039f4:	00008067          	ret

00000000800039f8 <timerinit>:
    800039f8:	ff010113          	addi	sp,sp,-16
    800039fc:	00813423          	sd	s0,8(sp)
    80003a00:	01010413          	addi	s0,sp,16
    80003a04:	f14027f3          	csrr	a5,mhartid
    80003a08:	0200c737          	lui	a4,0x200c
    80003a0c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80003a10:	0007869b          	sext.w	a3,a5
    80003a14:	00269713          	slli	a4,a3,0x2
    80003a18:	000f4637          	lui	a2,0xf4
    80003a1c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80003a20:	00d70733          	add	a4,a4,a3
    80003a24:	0037979b          	slliw	a5,a5,0x3
    80003a28:	020046b7          	lui	a3,0x2004
    80003a2c:	00d787b3          	add	a5,a5,a3
    80003a30:	00c585b3          	add	a1,a1,a2
    80003a34:	00371693          	slli	a3,a4,0x3
    80003a38:	00004717          	auipc	a4,0x4
    80003a3c:	8f870713          	addi	a4,a4,-1800 # 80007330 <timer_scratch>
    80003a40:	00b7b023          	sd	a1,0(a5)
    80003a44:	00d70733          	add	a4,a4,a3
    80003a48:	00f73c23          	sd	a5,24(a4)
    80003a4c:	02c73023          	sd	a2,32(a4)
    80003a50:	34071073          	csrw	mscratch,a4
    80003a54:	00000797          	auipc	a5,0x0
    80003a58:	64c78793          	addi	a5,a5,1612 # 800040a0 <timervec>
    80003a5c:	30579073          	csrw	mtvec,a5
    80003a60:	300027f3          	csrr	a5,mstatus
    80003a64:	0087e793          	ori	a5,a5,8
    80003a68:	30079073          	csrw	mstatus,a5
    80003a6c:	304027f3          	csrr	a5,mie
    80003a70:	0807e793          	ori	a5,a5,128
    80003a74:	30479073          	csrw	mie,a5
    80003a78:	00813403          	ld	s0,8(sp)
    80003a7c:	01010113          	addi	sp,sp,16
    80003a80:	00008067          	ret

0000000080003a84 <system_main>:
    80003a84:	fe010113          	addi	sp,sp,-32
    80003a88:	00813823          	sd	s0,16(sp)
    80003a8c:	00913423          	sd	s1,8(sp)
    80003a90:	00113c23          	sd	ra,24(sp)
    80003a94:	02010413          	addi	s0,sp,32
    80003a98:	00000097          	auipc	ra,0x0
    80003a9c:	0c4080e7          	jalr	196(ra) # 80003b5c <cpuid>
    80003aa0:	00004497          	auipc	s1,0x4
    80003aa4:	81048493          	addi	s1,s1,-2032 # 800072b0 <started>
    80003aa8:	02050263          	beqz	a0,80003acc <system_main+0x48>
    80003aac:	0004a783          	lw	a5,0(s1)
    80003ab0:	0007879b          	sext.w	a5,a5
    80003ab4:	fe078ce3          	beqz	a5,80003aac <system_main+0x28>
    80003ab8:	0ff0000f          	fence
    80003abc:	00002517          	auipc	a0,0x2
    80003ac0:	74c50513          	addi	a0,a0,1868 # 80006208 <CONSOLE_STATUS+0x1f8>
    80003ac4:	00001097          	auipc	ra,0x1
    80003ac8:	a78080e7          	jalr	-1416(ra) # 8000453c <panic>
    80003acc:	00001097          	auipc	ra,0x1
    80003ad0:	9cc080e7          	jalr	-1588(ra) # 80004498 <consoleinit>
    80003ad4:	00001097          	auipc	ra,0x1
    80003ad8:	158080e7          	jalr	344(ra) # 80004c2c <printfinit>
    80003adc:	00003517          	auipc	a0,0x3
    80003ae0:	80c50513          	addi	a0,a0,-2036 # 800062e8 <CONSOLE_STATUS+0x2d8>
    80003ae4:	00001097          	auipc	ra,0x1
    80003ae8:	ab4080e7          	jalr	-1356(ra) # 80004598 <__printf>
    80003aec:	00002517          	auipc	a0,0x2
    80003af0:	6ec50513          	addi	a0,a0,1772 # 800061d8 <CONSOLE_STATUS+0x1c8>
    80003af4:	00001097          	auipc	ra,0x1
    80003af8:	aa4080e7          	jalr	-1372(ra) # 80004598 <__printf>
    80003afc:	00002517          	auipc	a0,0x2
    80003b00:	7ec50513          	addi	a0,a0,2028 # 800062e8 <CONSOLE_STATUS+0x2d8>
    80003b04:	00001097          	auipc	ra,0x1
    80003b08:	a94080e7          	jalr	-1388(ra) # 80004598 <__printf>
    80003b0c:	00001097          	auipc	ra,0x1
    80003b10:	4ac080e7          	jalr	1196(ra) # 80004fb8 <kinit>
    80003b14:	00000097          	auipc	ra,0x0
    80003b18:	148080e7          	jalr	328(ra) # 80003c5c <trapinit>
    80003b1c:	00000097          	auipc	ra,0x0
    80003b20:	16c080e7          	jalr	364(ra) # 80003c88 <trapinithart>
    80003b24:	00000097          	auipc	ra,0x0
    80003b28:	5bc080e7          	jalr	1468(ra) # 800040e0 <plicinit>
    80003b2c:	00000097          	auipc	ra,0x0
    80003b30:	5dc080e7          	jalr	1500(ra) # 80004108 <plicinithart>
    80003b34:	00000097          	auipc	ra,0x0
    80003b38:	078080e7          	jalr	120(ra) # 80003bac <userinit>
    80003b3c:	0ff0000f          	fence
    80003b40:	00100793          	li	a5,1
    80003b44:	00002517          	auipc	a0,0x2
    80003b48:	6ac50513          	addi	a0,a0,1708 # 800061f0 <CONSOLE_STATUS+0x1e0>
    80003b4c:	00f4a023          	sw	a5,0(s1)
    80003b50:	00001097          	auipc	ra,0x1
    80003b54:	a48080e7          	jalr	-1464(ra) # 80004598 <__printf>
    80003b58:	0000006f          	j	80003b58 <system_main+0xd4>

0000000080003b5c <cpuid>:
    80003b5c:	ff010113          	addi	sp,sp,-16
    80003b60:	00813423          	sd	s0,8(sp)
    80003b64:	01010413          	addi	s0,sp,16
    80003b68:	00020513          	mv	a0,tp
    80003b6c:	00813403          	ld	s0,8(sp)
    80003b70:	0005051b          	sext.w	a0,a0
    80003b74:	01010113          	addi	sp,sp,16
    80003b78:	00008067          	ret

0000000080003b7c <mycpu>:
    80003b7c:	ff010113          	addi	sp,sp,-16
    80003b80:	00813423          	sd	s0,8(sp)
    80003b84:	01010413          	addi	s0,sp,16
    80003b88:	00020793          	mv	a5,tp
    80003b8c:	00813403          	ld	s0,8(sp)
    80003b90:	0007879b          	sext.w	a5,a5
    80003b94:	00779793          	slli	a5,a5,0x7
    80003b98:	00004517          	auipc	a0,0x4
    80003b9c:	7c850513          	addi	a0,a0,1992 # 80008360 <cpus>
    80003ba0:	00f50533          	add	a0,a0,a5
    80003ba4:	01010113          	addi	sp,sp,16
    80003ba8:	00008067          	ret

0000000080003bac <userinit>:
    80003bac:	ff010113          	addi	sp,sp,-16
    80003bb0:	00813423          	sd	s0,8(sp)
    80003bb4:	01010413          	addi	s0,sp,16
    80003bb8:	00813403          	ld	s0,8(sp)
    80003bbc:	01010113          	addi	sp,sp,16
    80003bc0:	ffffe317          	auipc	t1,0xffffe
    80003bc4:	b3030067          	jr	-1232(t1) # 800016f0 <main>

0000000080003bc8 <either_copyout>:
    80003bc8:	ff010113          	addi	sp,sp,-16
    80003bcc:	00813023          	sd	s0,0(sp)
    80003bd0:	00113423          	sd	ra,8(sp)
    80003bd4:	01010413          	addi	s0,sp,16
    80003bd8:	02051663          	bnez	a0,80003c04 <either_copyout+0x3c>
    80003bdc:	00058513          	mv	a0,a1
    80003be0:	00060593          	mv	a1,a2
    80003be4:	0006861b          	sext.w	a2,a3
    80003be8:	00002097          	auipc	ra,0x2
    80003bec:	c5c080e7          	jalr	-932(ra) # 80005844 <__memmove>
    80003bf0:	00813083          	ld	ra,8(sp)
    80003bf4:	00013403          	ld	s0,0(sp)
    80003bf8:	00000513          	li	a0,0
    80003bfc:	01010113          	addi	sp,sp,16
    80003c00:	00008067          	ret
    80003c04:	00002517          	auipc	a0,0x2
    80003c08:	62c50513          	addi	a0,a0,1580 # 80006230 <CONSOLE_STATUS+0x220>
    80003c0c:	00001097          	auipc	ra,0x1
    80003c10:	930080e7          	jalr	-1744(ra) # 8000453c <panic>

0000000080003c14 <either_copyin>:
    80003c14:	ff010113          	addi	sp,sp,-16
    80003c18:	00813023          	sd	s0,0(sp)
    80003c1c:	00113423          	sd	ra,8(sp)
    80003c20:	01010413          	addi	s0,sp,16
    80003c24:	02059463          	bnez	a1,80003c4c <either_copyin+0x38>
    80003c28:	00060593          	mv	a1,a2
    80003c2c:	0006861b          	sext.w	a2,a3
    80003c30:	00002097          	auipc	ra,0x2
    80003c34:	c14080e7          	jalr	-1004(ra) # 80005844 <__memmove>
    80003c38:	00813083          	ld	ra,8(sp)
    80003c3c:	00013403          	ld	s0,0(sp)
    80003c40:	00000513          	li	a0,0
    80003c44:	01010113          	addi	sp,sp,16
    80003c48:	00008067          	ret
    80003c4c:	00002517          	auipc	a0,0x2
    80003c50:	60c50513          	addi	a0,a0,1548 # 80006258 <CONSOLE_STATUS+0x248>
    80003c54:	00001097          	auipc	ra,0x1
    80003c58:	8e8080e7          	jalr	-1816(ra) # 8000453c <panic>

0000000080003c5c <trapinit>:
    80003c5c:	ff010113          	addi	sp,sp,-16
    80003c60:	00813423          	sd	s0,8(sp)
    80003c64:	01010413          	addi	s0,sp,16
    80003c68:	00813403          	ld	s0,8(sp)
    80003c6c:	00002597          	auipc	a1,0x2
    80003c70:	61458593          	addi	a1,a1,1556 # 80006280 <CONSOLE_STATUS+0x270>
    80003c74:	00004517          	auipc	a0,0x4
    80003c78:	76c50513          	addi	a0,a0,1900 # 800083e0 <tickslock>
    80003c7c:	01010113          	addi	sp,sp,16
    80003c80:	00001317          	auipc	t1,0x1
    80003c84:	5c830067          	jr	1480(t1) # 80005248 <initlock>

0000000080003c88 <trapinithart>:
    80003c88:	ff010113          	addi	sp,sp,-16
    80003c8c:	00813423          	sd	s0,8(sp)
    80003c90:	01010413          	addi	s0,sp,16
    80003c94:	00000797          	auipc	a5,0x0
    80003c98:	2fc78793          	addi	a5,a5,764 # 80003f90 <kernelvec>
    80003c9c:	10579073          	csrw	stvec,a5
    80003ca0:	00813403          	ld	s0,8(sp)
    80003ca4:	01010113          	addi	sp,sp,16
    80003ca8:	00008067          	ret

0000000080003cac <usertrap>:
    80003cac:	ff010113          	addi	sp,sp,-16
    80003cb0:	00813423          	sd	s0,8(sp)
    80003cb4:	01010413          	addi	s0,sp,16
    80003cb8:	00813403          	ld	s0,8(sp)
    80003cbc:	01010113          	addi	sp,sp,16
    80003cc0:	00008067          	ret

0000000080003cc4 <usertrapret>:
    80003cc4:	ff010113          	addi	sp,sp,-16
    80003cc8:	00813423          	sd	s0,8(sp)
    80003ccc:	01010413          	addi	s0,sp,16
    80003cd0:	00813403          	ld	s0,8(sp)
    80003cd4:	01010113          	addi	sp,sp,16
    80003cd8:	00008067          	ret

0000000080003cdc <kerneltrap>:
    80003cdc:	fe010113          	addi	sp,sp,-32
    80003ce0:	00813823          	sd	s0,16(sp)
    80003ce4:	00113c23          	sd	ra,24(sp)
    80003ce8:	00913423          	sd	s1,8(sp)
    80003cec:	02010413          	addi	s0,sp,32
    80003cf0:	142025f3          	csrr	a1,scause
    80003cf4:	100027f3          	csrr	a5,sstatus
    80003cf8:	0027f793          	andi	a5,a5,2
    80003cfc:	10079c63          	bnez	a5,80003e14 <kerneltrap+0x138>
    80003d00:	142027f3          	csrr	a5,scause
    80003d04:	0207ce63          	bltz	a5,80003d40 <kerneltrap+0x64>
    80003d08:	00002517          	auipc	a0,0x2
    80003d0c:	5c050513          	addi	a0,a0,1472 # 800062c8 <CONSOLE_STATUS+0x2b8>
    80003d10:	00001097          	auipc	ra,0x1
    80003d14:	888080e7          	jalr	-1912(ra) # 80004598 <__printf>
    80003d18:	141025f3          	csrr	a1,sepc
    80003d1c:	14302673          	csrr	a2,stval
    80003d20:	00002517          	auipc	a0,0x2
    80003d24:	5b850513          	addi	a0,a0,1464 # 800062d8 <CONSOLE_STATUS+0x2c8>
    80003d28:	00001097          	auipc	ra,0x1
    80003d2c:	870080e7          	jalr	-1936(ra) # 80004598 <__printf>
    80003d30:	00002517          	auipc	a0,0x2
    80003d34:	5c050513          	addi	a0,a0,1472 # 800062f0 <CONSOLE_STATUS+0x2e0>
    80003d38:	00001097          	auipc	ra,0x1
    80003d3c:	804080e7          	jalr	-2044(ra) # 8000453c <panic>
    80003d40:	0ff7f713          	andi	a4,a5,255
    80003d44:	00900693          	li	a3,9
    80003d48:	04d70063          	beq	a4,a3,80003d88 <kerneltrap+0xac>
    80003d4c:	fff00713          	li	a4,-1
    80003d50:	03f71713          	slli	a4,a4,0x3f
    80003d54:	00170713          	addi	a4,a4,1
    80003d58:	fae798e3          	bne	a5,a4,80003d08 <kerneltrap+0x2c>
    80003d5c:	00000097          	auipc	ra,0x0
    80003d60:	e00080e7          	jalr	-512(ra) # 80003b5c <cpuid>
    80003d64:	06050663          	beqz	a0,80003dd0 <kerneltrap+0xf4>
    80003d68:	144027f3          	csrr	a5,sip
    80003d6c:	ffd7f793          	andi	a5,a5,-3
    80003d70:	14479073          	csrw	sip,a5
    80003d74:	01813083          	ld	ra,24(sp)
    80003d78:	01013403          	ld	s0,16(sp)
    80003d7c:	00813483          	ld	s1,8(sp)
    80003d80:	02010113          	addi	sp,sp,32
    80003d84:	00008067          	ret
    80003d88:	00000097          	auipc	ra,0x0
    80003d8c:	3cc080e7          	jalr	972(ra) # 80004154 <plic_claim>
    80003d90:	00a00793          	li	a5,10
    80003d94:	00050493          	mv	s1,a0
    80003d98:	06f50863          	beq	a0,a5,80003e08 <kerneltrap+0x12c>
    80003d9c:	fc050ce3          	beqz	a0,80003d74 <kerneltrap+0x98>
    80003da0:	00050593          	mv	a1,a0
    80003da4:	00002517          	auipc	a0,0x2
    80003da8:	50450513          	addi	a0,a0,1284 # 800062a8 <CONSOLE_STATUS+0x298>
    80003dac:	00000097          	auipc	ra,0x0
    80003db0:	7ec080e7          	jalr	2028(ra) # 80004598 <__printf>
    80003db4:	01013403          	ld	s0,16(sp)
    80003db8:	01813083          	ld	ra,24(sp)
    80003dbc:	00048513          	mv	a0,s1
    80003dc0:	00813483          	ld	s1,8(sp)
    80003dc4:	02010113          	addi	sp,sp,32
    80003dc8:	00000317          	auipc	t1,0x0
    80003dcc:	3c430067          	jr	964(t1) # 8000418c <plic_complete>
    80003dd0:	00004517          	auipc	a0,0x4
    80003dd4:	61050513          	addi	a0,a0,1552 # 800083e0 <tickslock>
    80003dd8:	00001097          	auipc	ra,0x1
    80003ddc:	494080e7          	jalr	1172(ra) # 8000526c <acquire>
    80003de0:	00003717          	auipc	a4,0x3
    80003de4:	4d470713          	addi	a4,a4,1236 # 800072b4 <ticks>
    80003de8:	00072783          	lw	a5,0(a4)
    80003dec:	00004517          	auipc	a0,0x4
    80003df0:	5f450513          	addi	a0,a0,1524 # 800083e0 <tickslock>
    80003df4:	0017879b          	addiw	a5,a5,1
    80003df8:	00f72023          	sw	a5,0(a4)
    80003dfc:	00001097          	auipc	ra,0x1
    80003e00:	53c080e7          	jalr	1340(ra) # 80005338 <release>
    80003e04:	f65ff06f          	j	80003d68 <kerneltrap+0x8c>
    80003e08:	00001097          	auipc	ra,0x1
    80003e0c:	098080e7          	jalr	152(ra) # 80004ea0 <uartintr>
    80003e10:	fa5ff06f          	j	80003db4 <kerneltrap+0xd8>
    80003e14:	00002517          	auipc	a0,0x2
    80003e18:	47450513          	addi	a0,a0,1140 # 80006288 <CONSOLE_STATUS+0x278>
    80003e1c:	00000097          	auipc	ra,0x0
    80003e20:	720080e7          	jalr	1824(ra) # 8000453c <panic>

0000000080003e24 <clockintr>:
    80003e24:	fe010113          	addi	sp,sp,-32
    80003e28:	00813823          	sd	s0,16(sp)
    80003e2c:	00913423          	sd	s1,8(sp)
    80003e30:	00113c23          	sd	ra,24(sp)
    80003e34:	02010413          	addi	s0,sp,32
    80003e38:	00004497          	auipc	s1,0x4
    80003e3c:	5a848493          	addi	s1,s1,1448 # 800083e0 <tickslock>
    80003e40:	00048513          	mv	a0,s1
    80003e44:	00001097          	auipc	ra,0x1
    80003e48:	428080e7          	jalr	1064(ra) # 8000526c <acquire>
    80003e4c:	00003717          	auipc	a4,0x3
    80003e50:	46870713          	addi	a4,a4,1128 # 800072b4 <ticks>
    80003e54:	00072783          	lw	a5,0(a4)
    80003e58:	01013403          	ld	s0,16(sp)
    80003e5c:	01813083          	ld	ra,24(sp)
    80003e60:	00048513          	mv	a0,s1
    80003e64:	0017879b          	addiw	a5,a5,1
    80003e68:	00813483          	ld	s1,8(sp)
    80003e6c:	00f72023          	sw	a5,0(a4)
    80003e70:	02010113          	addi	sp,sp,32
    80003e74:	00001317          	auipc	t1,0x1
    80003e78:	4c430067          	jr	1220(t1) # 80005338 <release>

0000000080003e7c <devintr>:
    80003e7c:	142027f3          	csrr	a5,scause
    80003e80:	00000513          	li	a0,0
    80003e84:	0007c463          	bltz	a5,80003e8c <devintr+0x10>
    80003e88:	00008067          	ret
    80003e8c:	fe010113          	addi	sp,sp,-32
    80003e90:	00813823          	sd	s0,16(sp)
    80003e94:	00113c23          	sd	ra,24(sp)
    80003e98:	00913423          	sd	s1,8(sp)
    80003e9c:	02010413          	addi	s0,sp,32
    80003ea0:	0ff7f713          	andi	a4,a5,255
    80003ea4:	00900693          	li	a3,9
    80003ea8:	04d70c63          	beq	a4,a3,80003f00 <devintr+0x84>
    80003eac:	fff00713          	li	a4,-1
    80003eb0:	03f71713          	slli	a4,a4,0x3f
    80003eb4:	00170713          	addi	a4,a4,1
    80003eb8:	00e78c63          	beq	a5,a4,80003ed0 <devintr+0x54>
    80003ebc:	01813083          	ld	ra,24(sp)
    80003ec0:	01013403          	ld	s0,16(sp)
    80003ec4:	00813483          	ld	s1,8(sp)
    80003ec8:	02010113          	addi	sp,sp,32
    80003ecc:	00008067          	ret
    80003ed0:	00000097          	auipc	ra,0x0
    80003ed4:	c8c080e7          	jalr	-884(ra) # 80003b5c <cpuid>
    80003ed8:	06050663          	beqz	a0,80003f44 <devintr+0xc8>
    80003edc:	144027f3          	csrr	a5,sip
    80003ee0:	ffd7f793          	andi	a5,a5,-3
    80003ee4:	14479073          	csrw	sip,a5
    80003ee8:	01813083          	ld	ra,24(sp)
    80003eec:	01013403          	ld	s0,16(sp)
    80003ef0:	00813483          	ld	s1,8(sp)
    80003ef4:	00200513          	li	a0,2
    80003ef8:	02010113          	addi	sp,sp,32
    80003efc:	00008067          	ret
    80003f00:	00000097          	auipc	ra,0x0
    80003f04:	254080e7          	jalr	596(ra) # 80004154 <plic_claim>
    80003f08:	00a00793          	li	a5,10
    80003f0c:	00050493          	mv	s1,a0
    80003f10:	06f50663          	beq	a0,a5,80003f7c <devintr+0x100>
    80003f14:	00100513          	li	a0,1
    80003f18:	fa0482e3          	beqz	s1,80003ebc <devintr+0x40>
    80003f1c:	00048593          	mv	a1,s1
    80003f20:	00002517          	auipc	a0,0x2
    80003f24:	38850513          	addi	a0,a0,904 # 800062a8 <CONSOLE_STATUS+0x298>
    80003f28:	00000097          	auipc	ra,0x0
    80003f2c:	670080e7          	jalr	1648(ra) # 80004598 <__printf>
    80003f30:	00048513          	mv	a0,s1
    80003f34:	00000097          	auipc	ra,0x0
    80003f38:	258080e7          	jalr	600(ra) # 8000418c <plic_complete>
    80003f3c:	00100513          	li	a0,1
    80003f40:	f7dff06f          	j	80003ebc <devintr+0x40>
    80003f44:	00004517          	auipc	a0,0x4
    80003f48:	49c50513          	addi	a0,a0,1180 # 800083e0 <tickslock>
    80003f4c:	00001097          	auipc	ra,0x1
    80003f50:	320080e7          	jalr	800(ra) # 8000526c <acquire>
    80003f54:	00003717          	auipc	a4,0x3
    80003f58:	36070713          	addi	a4,a4,864 # 800072b4 <ticks>
    80003f5c:	00072783          	lw	a5,0(a4)
    80003f60:	00004517          	auipc	a0,0x4
    80003f64:	48050513          	addi	a0,a0,1152 # 800083e0 <tickslock>
    80003f68:	0017879b          	addiw	a5,a5,1
    80003f6c:	00f72023          	sw	a5,0(a4)
    80003f70:	00001097          	auipc	ra,0x1
    80003f74:	3c8080e7          	jalr	968(ra) # 80005338 <release>
    80003f78:	f65ff06f          	j	80003edc <devintr+0x60>
    80003f7c:	00001097          	auipc	ra,0x1
    80003f80:	f24080e7          	jalr	-220(ra) # 80004ea0 <uartintr>
    80003f84:	fadff06f          	j	80003f30 <devintr+0xb4>
	...

0000000080003f90 <kernelvec>:
    80003f90:	f0010113          	addi	sp,sp,-256
    80003f94:	00113023          	sd	ra,0(sp)
    80003f98:	00213423          	sd	sp,8(sp)
    80003f9c:	00313823          	sd	gp,16(sp)
    80003fa0:	00413c23          	sd	tp,24(sp)
    80003fa4:	02513023          	sd	t0,32(sp)
    80003fa8:	02613423          	sd	t1,40(sp)
    80003fac:	02713823          	sd	t2,48(sp)
    80003fb0:	02813c23          	sd	s0,56(sp)
    80003fb4:	04913023          	sd	s1,64(sp)
    80003fb8:	04a13423          	sd	a0,72(sp)
    80003fbc:	04b13823          	sd	a1,80(sp)
    80003fc0:	04c13c23          	sd	a2,88(sp)
    80003fc4:	06d13023          	sd	a3,96(sp)
    80003fc8:	06e13423          	sd	a4,104(sp)
    80003fcc:	06f13823          	sd	a5,112(sp)
    80003fd0:	07013c23          	sd	a6,120(sp)
    80003fd4:	09113023          	sd	a7,128(sp)
    80003fd8:	09213423          	sd	s2,136(sp)
    80003fdc:	09313823          	sd	s3,144(sp)
    80003fe0:	09413c23          	sd	s4,152(sp)
    80003fe4:	0b513023          	sd	s5,160(sp)
    80003fe8:	0b613423          	sd	s6,168(sp)
    80003fec:	0b713823          	sd	s7,176(sp)
    80003ff0:	0b813c23          	sd	s8,184(sp)
    80003ff4:	0d913023          	sd	s9,192(sp)
    80003ff8:	0da13423          	sd	s10,200(sp)
    80003ffc:	0db13823          	sd	s11,208(sp)
    80004000:	0dc13c23          	sd	t3,216(sp)
    80004004:	0fd13023          	sd	t4,224(sp)
    80004008:	0fe13423          	sd	t5,232(sp)
    8000400c:	0ff13823          	sd	t6,240(sp)
    80004010:	ccdff0ef          	jal	ra,80003cdc <kerneltrap>
    80004014:	00013083          	ld	ra,0(sp)
    80004018:	00813103          	ld	sp,8(sp)
    8000401c:	01013183          	ld	gp,16(sp)
    80004020:	02013283          	ld	t0,32(sp)
    80004024:	02813303          	ld	t1,40(sp)
    80004028:	03013383          	ld	t2,48(sp)
    8000402c:	03813403          	ld	s0,56(sp)
    80004030:	04013483          	ld	s1,64(sp)
    80004034:	04813503          	ld	a0,72(sp)
    80004038:	05013583          	ld	a1,80(sp)
    8000403c:	05813603          	ld	a2,88(sp)
    80004040:	06013683          	ld	a3,96(sp)
    80004044:	06813703          	ld	a4,104(sp)
    80004048:	07013783          	ld	a5,112(sp)
    8000404c:	07813803          	ld	a6,120(sp)
    80004050:	08013883          	ld	a7,128(sp)
    80004054:	08813903          	ld	s2,136(sp)
    80004058:	09013983          	ld	s3,144(sp)
    8000405c:	09813a03          	ld	s4,152(sp)
    80004060:	0a013a83          	ld	s5,160(sp)
    80004064:	0a813b03          	ld	s6,168(sp)
    80004068:	0b013b83          	ld	s7,176(sp)
    8000406c:	0b813c03          	ld	s8,184(sp)
    80004070:	0c013c83          	ld	s9,192(sp)
    80004074:	0c813d03          	ld	s10,200(sp)
    80004078:	0d013d83          	ld	s11,208(sp)
    8000407c:	0d813e03          	ld	t3,216(sp)
    80004080:	0e013e83          	ld	t4,224(sp)
    80004084:	0e813f03          	ld	t5,232(sp)
    80004088:	0f013f83          	ld	t6,240(sp)
    8000408c:	10010113          	addi	sp,sp,256
    80004090:	10200073          	sret
    80004094:	00000013          	nop
    80004098:	00000013          	nop
    8000409c:	00000013          	nop

00000000800040a0 <timervec>:
    800040a0:	34051573          	csrrw	a0,mscratch,a0
    800040a4:	00b53023          	sd	a1,0(a0)
    800040a8:	00c53423          	sd	a2,8(a0)
    800040ac:	00d53823          	sd	a3,16(a0)
    800040b0:	01853583          	ld	a1,24(a0)
    800040b4:	02053603          	ld	a2,32(a0)
    800040b8:	0005b683          	ld	a3,0(a1)
    800040bc:	00c686b3          	add	a3,a3,a2
    800040c0:	00d5b023          	sd	a3,0(a1)
    800040c4:	00200593          	li	a1,2
    800040c8:	14459073          	csrw	sip,a1
    800040cc:	01053683          	ld	a3,16(a0)
    800040d0:	00853603          	ld	a2,8(a0)
    800040d4:	00053583          	ld	a1,0(a0)
    800040d8:	34051573          	csrrw	a0,mscratch,a0
    800040dc:	30200073          	mret

00000000800040e0 <plicinit>:
    800040e0:	ff010113          	addi	sp,sp,-16
    800040e4:	00813423          	sd	s0,8(sp)
    800040e8:	01010413          	addi	s0,sp,16
    800040ec:	00813403          	ld	s0,8(sp)
    800040f0:	0c0007b7          	lui	a5,0xc000
    800040f4:	00100713          	li	a4,1
    800040f8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    800040fc:	00e7a223          	sw	a4,4(a5)
    80004100:	01010113          	addi	sp,sp,16
    80004104:	00008067          	ret

0000000080004108 <plicinithart>:
    80004108:	ff010113          	addi	sp,sp,-16
    8000410c:	00813023          	sd	s0,0(sp)
    80004110:	00113423          	sd	ra,8(sp)
    80004114:	01010413          	addi	s0,sp,16
    80004118:	00000097          	auipc	ra,0x0
    8000411c:	a44080e7          	jalr	-1468(ra) # 80003b5c <cpuid>
    80004120:	0085171b          	slliw	a4,a0,0x8
    80004124:	0c0027b7          	lui	a5,0xc002
    80004128:	00e787b3          	add	a5,a5,a4
    8000412c:	40200713          	li	a4,1026
    80004130:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80004134:	00813083          	ld	ra,8(sp)
    80004138:	00013403          	ld	s0,0(sp)
    8000413c:	00d5151b          	slliw	a0,a0,0xd
    80004140:	0c2017b7          	lui	a5,0xc201
    80004144:	00a78533          	add	a0,a5,a0
    80004148:	00052023          	sw	zero,0(a0)
    8000414c:	01010113          	addi	sp,sp,16
    80004150:	00008067          	ret

0000000080004154 <plic_claim>:
    80004154:	ff010113          	addi	sp,sp,-16
    80004158:	00813023          	sd	s0,0(sp)
    8000415c:	00113423          	sd	ra,8(sp)
    80004160:	01010413          	addi	s0,sp,16
    80004164:	00000097          	auipc	ra,0x0
    80004168:	9f8080e7          	jalr	-1544(ra) # 80003b5c <cpuid>
    8000416c:	00813083          	ld	ra,8(sp)
    80004170:	00013403          	ld	s0,0(sp)
    80004174:	00d5151b          	slliw	a0,a0,0xd
    80004178:	0c2017b7          	lui	a5,0xc201
    8000417c:	00a78533          	add	a0,a5,a0
    80004180:	00452503          	lw	a0,4(a0)
    80004184:	01010113          	addi	sp,sp,16
    80004188:	00008067          	ret

000000008000418c <plic_complete>:
    8000418c:	fe010113          	addi	sp,sp,-32
    80004190:	00813823          	sd	s0,16(sp)
    80004194:	00913423          	sd	s1,8(sp)
    80004198:	00113c23          	sd	ra,24(sp)
    8000419c:	02010413          	addi	s0,sp,32
    800041a0:	00050493          	mv	s1,a0
    800041a4:	00000097          	auipc	ra,0x0
    800041a8:	9b8080e7          	jalr	-1608(ra) # 80003b5c <cpuid>
    800041ac:	01813083          	ld	ra,24(sp)
    800041b0:	01013403          	ld	s0,16(sp)
    800041b4:	00d5179b          	slliw	a5,a0,0xd
    800041b8:	0c201737          	lui	a4,0xc201
    800041bc:	00f707b3          	add	a5,a4,a5
    800041c0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    800041c4:	00813483          	ld	s1,8(sp)
    800041c8:	02010113          	addi	sp,sp,32
    800041cc:	00008067          	ret

00000000800041d0 <consolewrite>:
    800041d0:	fb010113          	addi	sp,sp,-80
    800041d4:	04813023          	sd	s0,64(sp)
    800041d8:	04113423          	sd	ra,72(sp)
    800041dc:	02913c23          	sd	s1,56(sp)
    800041e0:	03213823          	sd	s2,48(sp)
    800041e4:	03313423          	sd	s3,40(sp)
    800041e8:	03413023          	sd	s4,32(sp)
    800041ec:	01513c23          	sd	s5,24(sp)
    800041f0:	05010413          	addi	s0,sp,80
    800041f4:	06c05c63          	blez	a2,8000426c <consolewrite+0x9c>
    800041f8:	00060993          	mv	s3,a2
    800041fc:	00050a13          	mv	s4,a0
    80004200:	00058493          	mv	s1,a1
    80004204:	00000913          	li	s2,0
    80004208:	fff00a93          	li	s5,-1
    8000420c:	01c0006f          	j	80004228 <consolewrite+0x58>
    80004210:	fbf44503          	lbu	a0,-65(s0)
    80004214:	0019091b          	addiw	s2,s2,1
    80004218:	00148493          	addi	s1,s1,1
    8000421c:	00001097          	auipc	ra,0x1
    80004220:	a9c080e7          	jalr	-1380(ra) # 80004cb8 <uartputc>
    80004224:	03298063          	beq	s3,s2,80004244 <consolewrite+0x74>
    80004228:	00048613          	mv	a2,s1
    8000422c:	00100693          	li	a3,1
    80004230:	000a0593          	mv	a1,s4
    80004234:	fbf40513          	addi	a0,s0,-65
    80004238:	00000097          	auipc	ra,0x0
    8000423c:	9dc080e7          	jalr	-1572(ra) # 80003c14 <either_copyin>
    80004240:	fd5518e3          	bne	a0,s5,80004210 <consolewrite+0x40>
    80004244:	04813083          	ld	ra,72(sp)
    80004248:	04013403          	ld	s0,64(sp)
    8000424c:	03813483          	ld	s1,56(sp)
    80004250:	02813983          	ld	s3,40(sp)
    80004254:	02013a03          	ld	s4,32(sp)
    80004258:	01813a83          	ld	s5,24(sp)
    8000425c:	00090513          	mv	a0,s2
    80004260:	03013903          	ld	s2,48(sp)
    80004264:	05010113          	addi	sp,sp,80
    80004268:	00008067          	ret
    8000426c:	00000913          	li	s2,0
    80004270:	fd5ff06f          	j	80004244 <consolewrite+0x74>

0000000080004274 <consoleread>:
    80004274:	f9010113          	addi	sp,sp,-112
    80004278:	06813023          	sd	s0,96(sp)
    8000427c:	04913c23          	sd	s1,88(sp)
    80004280:	05213823          	sd	s2,80(sp)
    80004284:	05313423          	sd	s3,72(sp)
    80004288:	05413023          	sd	s4,64(sp)
    8000428c:	03513c23          	sd	s5,56(sp)
    80004290:	03613823          	sd	s6,48(sp)
    80004294:	03713423          	sd	s7,40(sp)
    80004298:	03813023          	sd	s8,32(sp)
    8000429c:	06113423          	sd	ra,104(sp)
    800042a0:	01913c23          	sd	s9,24(sp)
    800042a4:	07010413          	addi	s0,sp,112
    800042a8:	00060b93          	mv	s7,a2
    800042ac:	00050913          	mv	s2,a0
    800042b0:	00058c13          	mv	s8,a1
    800042b4:	00060b1b          	sext.w	s6,a2
    800042b8:	00004497          	auipc	s1,0x4
    800042bc:	15048493          	addi	s1,s1,336 # 80008408 <cons>
    800042c0:	00400993          	li	s3,4
    800042c4:	fff00a13          	li	s4,-1
    800042c8:	00a00a93          	li	s5,10
    800042cc:	05705e63          	blez	s7,80004328 <consoleread+0xb4>
    800042d0:	09c4a703          	lw	a4,156(s1)
    800042d4:	0984a783          	lw	a5,152(s1)
    800042d8:	0007071b          	sext.w	a4,a4
    800042dc:	08e78463          	beq	a5,a4,80004364 <consoleread+0xf0>
    800042e0:	07f7f713          	andi	a4,a5,127
    800042e4:	00e48733          	add	a4,s1,a4
    800042e8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    800042ec:	0017869b          	addiw	a3,a5,1
    800042f0:	08d4ac23          	sw	a3,152(s1)
    800042f4:	00070c9b          	sext.w	s9,a4
    800042f8:	0b370663          	beq	a4,s3,800043a4 <consoleread+0x130>
    800042fc:	00100693          	li	a3,1
    80004300:	f9f40613          	addi	a2,s0,-97
    80004304:	000c0593          	mv	a1,s8
    80004308:	00090513          	mv	a0,s2
    8000430c:	f8e40fa3          	sb	a4,-97(s0)
    80004310:	00000097          	auipc	ra,0x0
    80004314:	8b8080e7          	jalr	-1864(ra) # 80003bc8 <either_copyout>
    80004318:	01450863          	beq	a0,s4,80004328 <consoleread+0xb4>
    8000431c:	001c0c13          	addi	s8,s8,1
    80004320:	fffb8b9b          	addiw	s7,s7,-1
    80004324:	fb5c94e3          	bne	s9,s5,800042cc <consoleread+0x58>
    80004328:	000b851b          	sext.w	a0,s7
    8000432c:	06813083          	ld	ra,104(sp)
    80004330:	06013403          	ld	s0,96(sp)
    80004334:	05813483          	ld	s1,88(sp)
    80004338:	05013903          	ld	s2,80(sp)
    8000433c:	04813983          	ld	s3,72(sp)
    80004340:	04013a03          	ld	s4,64(sp)
    80004344:	03813a83          	ld	s5,56(sp)
    80004348:	02813b83          	ld	s7,40(sp)
    8000434c:	02013c03          	ld	s8,32(sp)
    80004350:	01813c83          	ld	s9,24(sp)
    80004354:	40ab053b          	subw	a0,s6,a0
    80004358:	03013b03          	ld	s6,48(sp)
    8000435c:	07010113          	addi	sp,sp,112
    80004360:	00008067          	ret
    80004364:	00001097          	auipc	ra,0x1
    80004368:	1d8080e7          	jalr	472(ra) # 8000553c <push_on>
    8000436c:	0984a703          	lw	a4,152(s1)
    80004370:	09c4a783          	lw	a5,156(s1)
    80004374:	0007879b          	sext.w	a5,a5
    80004378:	fef70ce3          	beq	a4,a5,80004370 <consoleread+0xfc>
    8000437c:	00001097          	auipc	ra,0x1
    80004380:	234080e7          	jalr	564(ra) # 800055b0 <pop_on>
    80004384:	0984a783          	lw	a5,152(s1)
    80004388:	07f7f713          	andi	a4,a5,127
    8000438c:	00e48733          	add	a4,s1,a4
    80004390:	01874703          	lbu	a4,24(a4)
    80004394:	0017869b          	addiw	a3,a5,1
    80004398:	08d4ac23          	sw	a3,152(s1)
    8000439c:	00070c9b          	sext.w	s9,a4
    800043a0:	f5371ee3          	bne	a4,s3,800042fc <consoleread+0x88>
    800043a4:	000b851b          	sext.w	a0,s7
    800043a8:	f96bf2e3          	bgeu	s7,s6,8000432c <consoleread+0xb8>
    800043ac:	08f4ac23          	sw	a5,152(s1)
    800043b0:	f7dff06f          	j	8000432c <consoleread+0xb8>

00000000800043b4 <consputc>:
    800043b4:	10000793          	li	a5,256
    800043b8:	00f50663          	beq	a0,a5,800043c4 <consputc+0x10>
    800043bc:	00001317          	auipc	t1,0x1
    800043c0:	9f430067          	jr	-1548(t1) # 80004db0 <uartputc_sync>
    800043c4:	ff010113          	addi	sp,sp,-16
    800043c8:	00113423          	sd	ra,8(sp)
    800043cc:	00813023          	sd	s0,0(sp)
    800043d0:	01010413          	addi	s0,sp,16
    800043d4:	00800513          	li	a0,8
    800043d8:	00001097          	auipc	ra,0x1
    800043dc:	9d8080e7          	jalr	-1576(ra) # 80004db0 <uartputc_sync>
    800043e0:	02000513          	li	a0,32
    800043e4:	00001097          	auipc	ra,0x1
    800043e8:	9cc080e7          	jalr	-1588(ra) # 80004db0 <uartputc_sync>
    800043ec:	00013403          	ld	s0,0(sp)
    800043f0:	00813083          	ld	ra,8(sp)
    800043f4:	00800513          	li	a0,8
    800043f8:	01010113          	addi	sp,sp,16
    800043fc:	00001317          	auipc	t1,0x1
    80004400:	9b430067          	jr	-1612(t1) # 80004db0 <uartputc_sync>

0000000080004404 <consoleintr>:
    80004404:	fe010113          	addi	sp,sp,-32
    80004408:	00813823          	sd	s0,16(sp)
    8000440c:	00913423          	sd	s1,8(sp)
    80004410:	01213023          	sd	s2,0(sp)
    80004414:	00113c23          	sd	ra,24(sp)
    80004418:	02010413          	addi	s0,sp,32
    8000441c:	00004917          	auipc	s2,0x4
    80004420:	fec90913          	addi	s2,s2,-20 # 80008408 <cons>
    80004424:	00050493          	mv	s1,a0
    80004428:	00090513          	mv	a0,s2
    8000442c:	00001097          	auipc	ra,0x1
    80004430:	e40080e7          	jalr	-448(ra) # 8000526c <acquire>
    80004434:	02048c63          	beqz	s1,8000446c <consoleintr+0x68>
    80004438:	0a092783          	lw	a5,160(s2)
    8000443c:	09892703          	lw	a4,152(s2)
    80004440:	07f00693          	li	a3,127
    80004444:	40e7873b          	subw	a4,a5,a4
    80004448:	02e6e263          	bltu	a3,a4,8000446c <consoleintr+0x68>
    8000444c:	00d00713          	li	a4,13
    80004450:	04e48063          	beq	s1,a4,80004490 <consoleintr+0x8c>
    80004454:	07f7f713          	andi	a4,a5,127
    80004458:	00e90733          	add	a4,s2,a4
    8000445c:	0017879b          	addiw	a5,a5,1
    80004460:	0af92023          	sw	a5,160(s2)
    80004464:	00970c23          	sb	s1,24(a4)
    80004468:	08f92e23          	sw	a5,156(s2)
    8000446c:	01013403          	ld	s0,16(sp)
    80004470:	01813083          	ld	ra,24(sp)
    80004474:	00813483          	ld	s1,8(sp)
    80004478:	00013903          	ld	s2,0(sp)
    8000447c:	00004517          	auipc	a0,0x4
    80004480:	f8c50513          	addi	a0,a0,-116 # 80008408 <cons>
    80004484:	02010113          	addi	sp,sp,32
    80004488:	00001317          	auipc	t1,0x1
    8000448c:	eb030067          	jr	-336(t1) # 80005338 <release>
    80004490:	00a00493          	li	s1,10
    80004494:	fc1ff06f          	j	80004454 <consoleintr+0x50>

0000000080004498 <consoleinit>:
    80004498:	fe010113          	addi	sp,sp,-32
    8000449c:	00113c23          	sd	ra,24(sp)
    800044a0:	00813823          	sd	s0,16(sp)
    800044a4:	00913423          	sd	s1,8(sp)
    800044a8:	02010413          	addi	s0,sp,32
    800044ac:	00004497          	auipc	s1,0x4
    800044b0:	f5c48493          	addi	s1,s1,-164 # 80008408 <cons>
    800044b4:	00048513          	mv	a0,s1
    800044b8:	00002597          	auipc	a1,0x2
    800044bc:	e4858593          	addi	a1,a1,-440 # 80006300 <CONSOLE_STATUS+0x2f0>
    800044c0:	00001097          	auipc	ra,0x1
    800044c4:	d88080e7          	jalr	-632(ra) # 80005248 <initlock>
    800044c8:	00000097          	auipc	ra,0x0
    800044cc:	7ac080e7          	jalr	1964(ra) # 80004c74 <uartinit>
    800044d0:	01813083          	ld	ra,24(sp)
    800044d4:	01013403          	ld	s0,16(sp)
    800044d8:	00000797          	auipc	a5,0x0
    800044dc:	d9c78793          	addi	a5,a5,-612 # 80004274 <consoleread>
    800044e0:	0af4bc23          	sd	a5,184(s1)
    800044e4:	00000797          	auipc	a5,0x0
    800044e8:	cec78793          	addi	a5,a5,-788 # 800041d0 <consolewrite>
    800044ec:	0cf4b023          	sd	a5,192(s1)
    800044f0:	00813483          	ld	s1,8(sp)
    800044f4:	02010113          	addi	sp,sp,32
    800044f8:	00008067          	ret

00000000800044fc <console_read>:
    800044fc:	ff010113          	addi	sp,sp,-16
    80004500:	00813423          	sd	s0,8(sp)
    80004504:	01010413          	addi	s0,sp,16
    80004508:	00813403          	ld	s0,8(sp)
    8000450c:	00004317          	auipc	t1,0x4
    80004510:	fb433303          	ld	t1,-76(t1) # 800084c0 <devsw+0x10>
    80004514:	01010113          	addi	sp,sp,16
    80004518:	00030067          	jr	t1

000000008000451c <console_write>:
    8000451c:	ff010113          	addi	sp,sp,-16
    80004520:	00813423          	sd	s0,8(sp)
    80004524:	01010413          	addi	s0,sp,16
    80004528:	00813403          	ld	s0,8(sp)
    8000452c:	00004317          	auipc	t1,0x4
    80004530:	f9c33303          	ld	t1,-100(t1) # 800084c8 <devsw+0x18>
    80004534:	01010113          	addi	sp,sp,16
    80004538:	00030067          	jr	t1

000000008000453c <panic>:
    8000453c:	fe010113          	addi	sp,sp,-32
    80004540:	00113c23          	sd	ra,24(sp)
    80004544:	00813823          	sd	s0,16(sp)
    80004548:	00913423          	sd	s1,8(sp)
    8000454c:	02010413          	addi	s0,sp,32
    80004550:	00050493          	mv	s1,a0
    80004554:	00002517          	auipc	a0,0x2
    80004558:	db450513          	addi	a0,a0,-588 # 80006308 <CONSOLE_STATUS+0x2f8>
    8000455c:	00004797          	auipc	a5,0x4
    80004560:	0007a623          	sw	zero,12(a5) # 80008568 <pr+0x18>
    80004564:	00000097          	auipc	ra,0x0
    80004568:	034080e7          	jalr	52(ra) # 80004598 <__printf>
    8000456c:	00048513          	mv	a0,s1
    80004570:	00000097          	auipc	ra,0x0
    80004574:	028080e7          	jalr	40(ra) # 80004598 <__printf>
    80004578:	00002517          	auipc	a0,0x2
    8000457c:	d7050513          	addi	a0,a0,-656 # 800062e8 <CONSOLE_STATUS+0x2d8>
    80004580:	00000097          	auipc	ra,0x0
    80004584:	018080e7          	jalr	24(ra) # 80004598 <__printf>
    80004588:	00100793          	li	a5,1
    8000458c:	00003717          	auipc	a4,0x3
    80004590:	d2f72623          	sw	a5,-724(a4) # 800072b8 <panicked>
    80004594:	0000006f          	j	80004594 <panic+0x58>

0000000080004598 <__printf>:
    80004598:	f3010113          	addi	sp,sp,-208
    8000459c:	08813023          	sd	s0,128(sp)
    800045a0:	07313423          	sd	s3,104(sp)
    800045a4:	09010413          	addi	s0,sp,144
    800045a8:	05813023          	sd	s8,64(sp)
    800045ac:	08113423          	sd	ra,136(sp)
    800045b0:	06913c23          	sd	s1,120(sp)
    800045b4:	07213823          	sd	s2,112(sp)
    800045b8:	07413023          	sd	s4,96(sp)
    800045bc:	05513c23          	sd	s5,88(sp)
    800045c0:	05613823          	sd	s6,80(sp)
    800045c4:	05713423          	sd	s7,72(sp)
    800045c8:	03913c23          	sd	s9,56(sp)
    800045cc:	03a13823          	sd	s10,48(sp)
    800045d0:	03b13423          	sd	s11,40(sp)
    800045d4:	00004317          	auipc	t1,0x4
    800045d8:	f7c30313          	addi	t1,t1,-132 # 80008550 <pr>
    800045dc:	01832c03          	lw	s8,24(t1)
    800045e0:	00b43423          	sd	a1,8(s0)
    800045e4:	00c43823          	sd	a2,16(s0)
    800045e8:	00d43c23          	sd	a3,24(s0)
    800045ec:	02e43023          	sd	a4,32(s0)
    800045f0:	02f43423          	sd	a5,40(s0)
    800045f4:	03043823          	sd	a6,48(s0)
    800045f8:	03143c23          	sd	a7,56(s0)
    800045fc:	00050993          	mv	s3,a0
    80004600:	4a0c1663          	bnez	s8,80004aac <__printf+0x514>
    80004604:	60098c63          	beqz	s3,80004c1c <__printf+0x684>
    80004608:	0009c503          	lbu	a0,0(s3)
    8000460c:	00840793          	addi	a5,s0,8
    80004610:	f6f43c23          	sd	a5,-136(s0)
    80004614:	00000493          	li	s1,0
    80004618:	22050063          	beqz	a0,80004838 <__printf+0x2a0>
    8000461c:	00002a37          	lui	s4,0x2
    80004620:	00018ab7          	lui	s5,0x18
    80004624:	000f4b37          	lui	s6,0xf4
    80004628:	00989bb7          	lui	s7,0x989
    8000462c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80004630:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80004634:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80004638:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000463c:	00148c9b          	addiw	s9,s1,1
    80004640:	02500793          	li	a5,37
    80004644:	01998933          	add	s2,s3,s9
    80004648:	38f51263          	bne	a0,a5,800049cc <__printf+0x434>
    8000464c:	00094783          	lbu	a5,0(s2)
    80004650:	00078c9b          	sext.w	s9,a5
    80004654:	1e078263          	beqz	a5,80004838 <__printf+0x2a0>
    80004658:	0024849b          	addiw	s1,s1,2
    8000465c:	07000713          	li	a4,112
    80004660:	00998933          	add	s2,s3,s1
    80004664:	38e78a63          	beq	a5,a4,800049f8 <__printf+0x460>
    80004668:	20f76863          	bltu	a4,a5,80004878 <__printf+0x2e0>
    8000466c:	42a78863          	beq	a5,a0,80004a9c <__printf+0x504>
    80004670:	06400713          	li	a4,100
    80004674:	40e79663          	bne	a5,a4,80004a80 <__printf+0x4e8>
    80004678:	f7843783          	ld	a5,-136(s0)
    8000467c:	0007a603          	lw	a2,0(a5)
    80004680:	00878793          	addi	a5,a5,8
    80004684:	f6f43c23          	sd	a5,-136(s0)
    80004688:	42064a63          	bltz	a2,80004abc <__printf+0x524>
    8000468c:	00a00713          	li	a4,10
    80004690:	02e677bb          	remuw	a5,a2,a4
    80004694:	00002d97          	auipc	s11,0x2
    80004698:	c9cd8d93          	addi	s11,s11,-868 # 80006330 <digits>
    8000469c:	00900593          	li	a1,9
    800046a0:	0006051b          	sext.w	a0,a2
    800046a4:	00000c93          	li	s9,0
    800046a8:	02079793          	slli	a5,a5,0x20
    800046ac:	0207d793          	srli	a5,a5,0x20
    800046b0:	00fd87b3          	add	a5,s11,a5
    800046b4:	0007c783          	lbu	a5,0(a5)
    800046b8:	02e656bb          	divuw	a3,a2,a4
    800046bc:	f8f40023          	sb	a5,-128(s0)
    800046c0:	14c5d863          	bge	a1,a2,80004810 <__printf+0x278>
    800046c4:	06300593          	li	a1,99
    800046c8:	00100c93          	li	s9,1
    800046cc:	02e6f7bb          	remuw	a5,a3,a4
    800046d0:	02079793          	slli	a5,a5,0x20
    800046d4:	0207d793          	srli	a5,a5,0x20
    800046d8:	00fd87b3          	add	a5,s11,a5
    800046dc:	0007c783          	lbu	a5,0(a5)
    800046e0:	02e6d73b          	divuw	a4,a3,a4
    800046e4:	f8f400a3          	sb	a5,-127(s0)
    800046e8:	12a5f463          	bgeu	a1,a0,80004810 <__printf+0x278>
    800046ec:	00a00693          	li	a3,10
    800046f0:	00900593          	li	a1,9
    800046f4:	02d777bb          	remuw	a5,a4,a3
    800046f8:	02079793          	slli	a5,a5,0x20
    800046fc:	0207d793          	srli	a5,a5,0x20
    80004700:	00fd87b3          	add	a5,s11,a5
    80004704:	0007c503          	lbu	a0,0(a5)
    80004708:	02d757bb          	divuw	a5,a4,a3
    8000470c:	f8a40123          	sb	a0,-126(s0)
    80004710:	48e5f263          	bgeu	a1,a4,80004b94 <__printf+0x5fc>
    80004714:	06300513          	li	a0,99
    80004718:	02d7f5bb          	remuw	a1,a5,a3
    8000471c:	02059593          	slli	a1,a1,0x20
    80004720:	0205d593          	srli	a1,a1,0x20
    80004724:	00bd85b3          	add	a1,s11,a1
    80004728:	0005c583          	lbu	a1,0(a1)
    8000472c:	02d7d7bb          	divuw	a5,a5,a3
    80004730:	f8b401a3          	sb	a1,-125(s0)
    80004734:	48e57263          	bgeu	a0,a4,80004bb8 <__printf+0x620>
    80004738:	3e700513          	li	a0,999
    8000473c:	02d7f5bb          	remuw	a1,a5,a3
    80004740:	02059593          	slli	a1,a1,0x20
    80004744:	0205d593          	srli	a1,a1,0x20
    80004748:	00bd85b3          	add	a1,s11,a1
    8000474c:	0005c583          	lbu	a1,0(a1)
    80004750:	02d7d7bb          	divuw	a5,a5,a3
    80004754:	f8b40223          	sb	a1,-124(s0)
    80004758:	46e57663          	bgeu	a0,a4,80004bc4 <__printf+0x62c>
    8000475c:	02d7f5bb          	remuw	a1,a5,a3
    80004760:	02059593          	slli	a1,a1,0x20
    80004764:	0205d593          	srli	a1,a1,0x20
    80004768:	00bd85b3          	add	a1,s11,a1
    8000476c:	0005c583          	lbu	a1,0(a1)
    80004770:	02d7d7bb          	divuw	a5,a5,a3
    80004774:	f8b402a3          	sb	a1,-123(s0)
    80004778:	46ea7863          	bgeu	s4,a4,80004be8 <__printf+0x650>
    8000477c:	02d7f5bb          	remuw	a1,a5,a3
    80004780:	02059593          	slli	a1,a1,0x20
    80004784:	0205d593          	srli	a1,a1,0x20
    80004788:	00bd85b3          	add	a1,s11,a1
    8000478c:	0005c583          	lbu	a1,0(a1)
    80004790:	02d7d7bb          	divuw	a5,a5,a3
    80004794:	f8b40323          	sb	a1,-122(s0)
    80004798:	3eeaf863          	bgeu	s5,a4,80004b88 <__printf+0x5f0>
    8000479c:	02d7f5bb          	remuw	a1,a5,a3
    800047a0:	02059593          	slli	a1,a1,0x20
    800047a4:	0205d593          	srli	a1,a1,0x20
    800047a8:	00bd85b3          	add	a1,s11,a1
    800047ac:	0005c583          	lbu	a1,0(a1)
    800047b0:	02d7d7bb          	divuw	a5,a5,a3
    800047b4:	f8b403a3          	sb	a1,-121(s0)
    800047b8:	42eb7e63          	bgeu	s6,a4,80004bf4 <__printf+0x65c>
    800047bc:	02d7f5bb          	remuw	a1,a5,a3
    800047c0:	02059593          	slli	a1,a1,0x20
    800047c4:	0205d593          	srli	a1,a1,0x20
    800047c8:	00bd85b3          	add	a1,s11,a1
    800047cc:	0005c583          	lbu	a1,0(a1)
    800047d0:	02d7d7bb          	divuw	a5,a5,a3
    800047d4:	f8b40423          	sb	a1,-120(s0)
    800047d8:	42ebfc63          	bgeu	s7,a4,80004c10 <__printf+0x678>
    800047dc:	02079793          	slli	a5,a5,0x20
    800047e0:	0207d793          	srli	a5,a5,0x20
    800047e4:	00fd8db3          	add	s11,s11,a5
    800047e8:	000dc703          	lbu	a4,0(s11)
    800047ec:	00a00793          	li	a5,10
    800047f0:	00900c93          	li	s9,9
    800047f4:	f8e404a3          	sb	a4,-119(s0)
    800047f8:	00065c63          	bgez	a2,80004810 <__printf+0x278>
    800047fc:	f9040713          	addi	a4,s0,-112
    80004800:	00f70733          	add	a4,a4,a5
    80004804:	02d00693          	li	a3,45
    80004808:	fed70823          	sb	a3,-16(a4)
    8000480c:	00078c93          	mv	s9,a5
    80004810:	f8040793          	addi	a5,s0,-128
    80004814:	01978cb3          	add	s9,a5,s9
    80004818:	f7f40d13          	addi	s10,s0,-129
    8000481c:	000cc503          	lbu	a0,0(s9)
    80004820:	fffc8c93          	addi	s9,s9,-1
    80004824:	00000097          	auipc	ra,0x0
    80004828:	b90080e7          	jalr	-1136(ra) # 800043b4 <consputc>
    8000482c:	ffac98e3          	bne	s9,s10,8000481c <__printf+0x284>
    80004830:	00094503          	lbu	a0,0(s2)
    80004834:	e00514e3          	bnez	a0,8000463c <__printf+0xa4>
    80004838:	1a0c1663          	bnez	s8,800049e4 <__printf+0x44c>
    8000483c:	08813083          	ld	ra,136(sp)
    80004840:	08013403          	ld	s0,128(sp)
    80004844:	07813483          	ld	s1,120(sp)
    80004848:	07013903          	ld	s2,112(sp)
    8000484c:	06813983          	ld	s3,104(sp)
    80004850:	06013a03          	ld	s4,96(sp)
    80004854:	05813a83          	ld	s5,88(sp)
    80004858:	05013b03          	ld	s6,80(sp)
    8000485c:	04813b83          	ld	s7,72(sp)
    80004860:	04013c03          	ld	s8,64(sp)
    80004864:	03813c83          	ld	s9,56(sp)
    80004868:	03013d03          	ld	s10,48(sp)
    8000486c:	02813d83          	ld	s11,40(sp)
    80004870:	0d010113          	addi	sp,sp,208
    80004874:	00008067          	ret
    80004878:	07300713          	li	a4,115
    8000487c:	1ce78a63          	beq	a5,a4,80004a50 <__printf+0x4b8>
    80004880:	07800713          	li	a4,120
    80004884:	1ee79e63          	bne	a5,a4,80004a80 <__printf+0x4e8>
    80004888:	f7843783          	ld	a5,-136(s0)
    8000488c:	0007a703          	lw	a4,0(a5)
    80004890:	00878793          	addi	a5,a5,8
    80004894:	f6f43c23          	sd	a5,-136(s0)
    80004898:	28074263          	bltz	a4,80004b1c <__printf+0x584>
    8000489c:	00002d97          	auipc	s11,0x2
    800048a0:	a94d8d93          	addi	s11,s11,-1388 # 80006330 <digits>
    800048a4:	00f77793          	andi	a5,a4,15
    800048a8:	00fd87b3          	add	a5,s11,a5
    800048ac:	0007c683          	lbu	a3,0(a5)
    800048b0:	00f00613          	li	a2,15
    800048b4:	0007079b          	sext.w	a5,a4
    800048b8:	f8d40023          	sb	a3,-128(s0)
    800048bc:	0047559b          	srliw	a1,a4,0x4
    800048c0:	0047569b          	srliw	a3,a4,0x4
    800048c4:	00000c93          	li	s9,0
    800048c8:	0ee65063          	bge	a2,a4,800049a8 <__printf+0x410>
    800048cc:	00f6f693          	andi	a3,a3,15
    800048d0:	00dd86b3          	add	a3,s11,a3
    800048d4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    800048d8:	0087d79b          	srliw	a5,a5,0x8
    800048dc:	00100c93          	li	s9,1
    800048e0:	f8d400a3          	sb	a3,-127(s0)
    800048e4:	0cb67263          	bgeu	a2,a1,800049a8 <__printf+0x410>
    800048e8:	00f7f693          	andi	a3,a5,15
    800048ec:	00dd86b3          	add	a3,s11,a3
    800048f0:	0006c583          	lbu	a1,0(a3)
    800048f4:	00f00613          	li	a2,15
    800048f8:	0047d69b          	srliw	a3,a5,0x4
    800048fc:	f8b40123          	sb	a1,-126(s0)
    80004900:	0047d593          	srli	a1,a5,0x4
    80004904:	28f67e63          	bgeu	a2,a5,80004ba0 <__printf+0x608>
    80004908:	00f6f693          	andi	a3,a3,15
    8000490c:	00dd86b3          	add	a3,s11,a3
    80004910:	0006c503          	lbu	a0,0(a3)
    80004914:	0087d813          	srli	a6,a5,0x8
    80004918:	0087d69b          	srliw	a3,a5,0x8
    8000491c:	f8a401a3          	sb	a0,-125(s0)
    80004920:	28b67663          	bgeu	a2,a1,80004bac <__printf+0x614>
    80004924:	00f6f693          	andi	a3,a3,15
    80004928:	00dd86b3          	add	a3,s11,a3
    8000492c:	0006c583          	lbu	a1,0(a3)
    80004930:	00c7d513          	srli	a0,a5,0xc
    80004934:	00c7d69b          	srliw	a3,a5,0xc
    80004938:	f8b40223          	sb	a1,-124(s0)
    8000493c:	29067a63          	bgeu	a2,a6,80004bd0 <__printf+0x638>
    80004940:	00f6f693          	andi	a3,a3,15
    80004944:	00dd86b3          	add	a3,s11,a3
    80004948:	0006c583          	lbu	a1,0(a3)
    8000494c:	0107d813          	srli	a6,a5,0x10
    80004950:	0107d69b          	srliw	a3,a5,0x10
    80004954:	f8b402a3          	sb	a1,-123(s0)
    80004958:	28a67263          	bgeu	a2,a0,80004bdc <__printf+0x644>
    8000495c:	00f6f693          	andi	a3,a3,15
    80004960:	00dd86b3          	add	a3,s11,a3
    80004964:	0006c683          	lbu	a3,0(a3)
    80004968:	0147d79b          	srliw	a5,a5,0x14
    8000496c:	f8d40323          	sb	a3,-122(s0)
    80004970:	21067663          	bgeu	a2,a6,80004b7c <__printf+0x5e4>
    80004974:	02079793          	slli	a5,a5,0x20
    80004978:	0207d793          	srli	a5,a5,0x20
    8000497c:	00fd8db3          	add	s11,s11,a5
    80004980:	000dc683          	lbu	a3,0(s11)
    80004984:	00800793          	li	a5,8
    80004988:	00700c93          	li	s9,7
    8000498c:	f8d403a3          	sb	a3,-121(s0)
    80004990:	00075c63          	bgez	a4,800049a8 <__printf+0x410>
    80004994:	f9040713          	addi	a4,s0,-112
    80004998:	00f70733          	add	a4,a4,a5
    8000499c:	02d00693          	li	a3,45
    800049a0:	fed70823          	sb	a3,-16(a4)
    800049a4:	00078c93          	mv	s9,a5
    800049a8:	f8040793          	addi	a5,s0,-128
    800049ac:	01978cb3          	add	s9,a5,s9
    800049b0:	f7f40d13          	addi	s10,s0,-129
    800049b4:	000cc503          	lbu	a0,0(s9)
    800049b8:	fffc8c93          	addi	s9,s9,-1
    800049bc:	00000097          	auipc	ra,0x0
    800049c0:	9f8080e7          	jalr	-1544(ra) # 800043b4 <consputc>
    800049c4:	ff9d18e3          	bne	s10,s9,800049b4 <__printf+0x41c>
    800049c8:	0100006f          	j	800049d8 <__printf+0x440>
    800049cc:	00000097          	auipc	ra,0x0
    800049d0:	9e8080e7          	jalr	-1560(ra) # 800043b4 <consputc>
    800049d4:	000c8493          	mv	s1,s9
    800049d8:	00094503          	lbu	a0,0(s2)
    800049dc:	c60510e3          	bnez	a0,8000463c <__printf+0xa4>
    800049e0:	e40c0ee3          	beqz	s8,8000483c <__printf+0x2a4>
    800049e4:	00004517          	auipc	a0,0x4
    800049e8:	b6c50513          	addi	a0,a0,-1172 # 80008550 <pr>
    800049ec:	00001097          	auipc	ra,0x1
    800049f0:	94c080e7          	jalr	-1716(ra) # 80005338 <release>
    800049f4:	e49ff06f          	j	8000483c <__printf+0x2a4>
    800049f8:	f7843783          	ld	a5,-136(s0)
    800049fc:	03000513          	li	a0,48
    80004a00:	01000d13          	li	s10,16
    80004a04:	00878713          	addi	a4,a5,8
    80004a08:	0007bc83          	ld	s9,0(a5)
    80004a0c:	f6e43c23          	sd	a4,-136(s0)
    80004a10:	00000097          	auipc	ra,0x0
    80004a14:	9a4080e7          	jalr	-1628(ra) # 800043b4 <consputc>
    80004a18:	07800513          	li	a0,120
    80004a1c:	00000097          	auipc	ra,0x0
    80004a20:	998080e7          	jalr	-1640(ra) # 800043b4 <consputc>
    80004a24:	00002d97          	auipc	s11,0x2
    80004a28:	90cd8d93          	addi	s11,s11,-1780 # 80006330 <digits>
    80004a2c:	03ccd793          	srli	a5,s9,0x3c
    80004a30:	00fd87b3          	add	a5,s11,a5
    80004a34:	0007c503          	lbu	a0,0(a5)
    80004a38:	fffd0d1b          	addiw	s10,s10,-1
    80004a3c:	004c9c93          	slli	s9,s9,0x4
    80004a40:	00000097          	auipc	ra,0x0
    80004a44:	974080e7          	jalr	-1676(ra) # 800043b4 <consputc>
    80004a48:	fe0d12e3          	bnez	s10,80004a2c <__printf+0x494>
    80004a4c:	f8dff06f          	j	800049d8 <__printf+0x440>
    80004a50:	f7843783          	ld	a5,-136(s0)
    80004a54:	0007bc83          	ld	s9,0(a5)
    80004a58:	00878793          	addi	a5,a5,8
    80004a5c:	f6f43c23          	sd	a5,-136(s0)
    80004a60:	000c9a63          	bnez	s9,80004a74 <__printf+0x4dc>
    80004a64:	1080006f          	j	80004b6c <__printf+0x5d4>
    80004a68:	001c8c93          	addi	s9,s9,1
    80004a6c:	00000097          	auipc	ra,0x0
    80004a70:	948080e7          	jalr	-1720(ra) # 800043b4 <consputc>
    80004a74:	000cc503          	lbu	a0,0(s9)
    80004a78:	fe0518e3          	bnez	a0,80004a68 <__printf+0x4d0>
    80004a7c:	f5dff06f          	j	800049d8 <__printf+0x440>
    80004a80:	02500513          	li	a0,37
    80004a84:	00000097          	auipc	ra,0x0
    80004a88:	930080e7          	jalr	-1744(ra) # 800043b4 <consputc>
    80004a8c:	000c8513          	mv	a0,s9
    80004a90:	00000097          	auipc	ra,0x0
    80004a94:	924080e7          	jalr	-1756(ra) # 800043b4 <consputc>
    80004a98:	f41ff06f          	j	800049d8 <__printf+0x440>
    80004a9c:	02500513          	li	a0,37
    80004aa0:	00000097          	auipc	ra,0x0
    80004aa4:	914080e7          	jalr	-1772(ra) # 800043b4 <consputc>
    80004aa8:	f31ff06f          	j	800049d8 <__printf+0x440>
    80004aac:	00030513          	mv	a0,t1
    80004ab0:	00000097          	auipc	ra,0x0
    80004ab4:	7bc080e7          	jalr	1980(ra) # 8000526c <acquire>
    80004ab8:	b4dff06f          	j	80004604 <__printf+0x6c>
    80004abc:	40c0053b          	negw	a0,a2
    80004ac0:	00a00713          	li	a4,10
    80004ac4:	02e576bb          	remuw	a3,a0,a4
    80004ac8:	00002d97          	auipc	s11,0x2
    80004acc:	868d8d93          	addi	s11,s11,-1944 # 80006330 <digits>
    80004ad0:	ff700593          	li	a1,-9
    80004ad4:	02069693          	slli	a3,a3,0x20
    80004ad8:	0206d693          	srli	a3,a3,0x20
    80004adc:	00dd86b3          	add	a3,s11,a3
    80004ae0:	0006c683          	lbu	a3,0(a3)
    80004ae4:	02e557bb          	divuw	a5,a0,a4
    80004ae8:	f8d40023          	sb	a3,-128(s0)
    80004aec:	10b65e63          	bge	a2,a1,80004c08 <__printf+0x670>
    80004af0:	06300593          	li	a1,99
    80004af4:	02e7f6bb          	remuw	a3,a5,a4
    80004af8:	02069693          	slli	a3,a3,0x20
    80004afc:	0206d693          	srli	a3,a3,0x20
    80004b00:	00dd86b3          	add	a3,s11,a3
    80004b04:	0006c683          	lbu	a3,0(a3)
    80004b08:	02e7d73b          	divuw	a4,a5,a4
    80004b0c:	00200793          	li	a5,2
    80004b10:	f8d400a3          	sb	a3,-127(s0)
    80004b14:	bca5ece3          	bltu	a1,a0,800046ec <__printf+0x154>
    80004b18:	ce5ff06f          	j	800047fc <__printf+0x264>
    80004b1c:	40e007bb          	negw	a5,a4
    80004b20:	00002d97          	auipc	s11,0x2
    80004b24:	810d8d93          	addi	s11,s11,-2032 # 80006330 <digits>
    80004b28:	00f7f693          	andi	a3,a5,15
    80004b2c:	00dd86b3          	add	a3,s11,a3
    80004b30:	0006c583          	lbu	a1,0(a3)
    80004b34:	ff100613          	li	a2,-15
    80004b38:	0047d69b          	srliw	a3,a5,0x4
    80004b3c:	f8b40023          	sb	a1,-128(s0)
    80004b40:	0047d59b          	srliw	a1,a5,0x4
    80004b44:	0ac75e63          	bge	a4,a2,80004c00 <__printf+0x668>
    80004b48:	00f6f693          	andi	a3,a3,15
    80004b4c:	00dd86b3          	add	a3,s11,a3
    80004b50:	0006c603          	lbu	a2,0(a3)
    80004b54:	00f00693          	li	a3,15
    80004b58:	0087d79b          	srliw	a5,a5,0x8
    80004b5c:	f8c400a3          	sb	a2,-127(s0)
    80004b60:	d8b6e4e3          	bltu	a3,a1,800048e8 <__printf+0x350>
    80004b64:	00200793          	li	a5,2
    80004b68:	e2dff06f          	j	80004994 <__printf+0x3fc>
    80004b6c:	00001c97          	auipc	s9,0x1
    80004b70:	7a4c8c93          	addi	s9,s9,1956 # 80006310 <CONSOLE_STATUS+0x300>
    80004b74:	02800513          	li	a0,40
    80004b78:	ef1ff06f          	j	80004a68 <__printf+0x4d0>
    80004b7c:	00700793          	li	a5,7
    80004b80:	00600c93          	li	s9,6
    80004b84:	e0dff06f          	j	80004990 <__printf+0x3f8>
    80004b88:	00700793          	li	a5,7
    80004b8c:	00600c93          	li	s9,6
    80004b90:	c69ff06f          	j	800047f8 <__printf+0x260>
    80004b94:	00300793          	li	a5,3
    80004b98:	00200c93          	li	s9,2
    80004b9c:	c5dff06f          	j	800047f8 <__printf+0x260>
    80004ba0:	00300793          	li	a5,3
    80004ba4:	00200c93          	li	s9,2
    80004ba8:	de9ff06f          	j	80004990 <__printf+0x3f8>
    80004bac:	00400793          	li	a5,4
    80004bb0:	00300c93          	li	s9,3
    80004bb4:	dddff06f          	j	80004990 <__printf+0x3f8>
    80004bb8:	00400793          	li	a5,4
    80004bbc:	00300c93          	li	s9,3
    80004bc0:	c39ff06f          	j	800047f8 <__printf+0x260>
    80004bc4:	00500793          	li	a5,5
    80004bc8:	00400c93          	li	s9,4
    80004bcc:	c2dff06f          	j	800047f8 <__printf+0x260>
    80004bd0:	00500793          	li	a5,5
    80004bd4:	00400c93          	li	s9,4
    80004bd8:	db9ff06f          	j	80004990 <__printf+0x3f8>
    80004bdc:	00600793          	li	a5,6
    80004be0:	00500c93          	li	s9,5
    80004be4:	dadff06f          	j	80004990 <__printf+0x3f8>
    80004be8:	00600793          	li	a5,6
    80004bec:	00500c93          	li	s9,5
    80004bf0:	c09ff06f          	j	800047f8 <__printf+0x260>
    80004bf4:	00800793          	li	a5,8
    80004bf8:	00700c93          	li	s9,7
    80004bfc:	bfdff06f          	j	800047f8 <__printf+0x260>
    80004c00:	00100793          	li	a5,1
    80004c04:	d91ff06f          	j	80004994 <__printf+0x3fc>
    80004c08:	00100793          	li	a5,1
    80004c0c:	bf1ff06f          	j	800047fc <__printf+0x264>
    80004c10:	00900793          	li	a5,9
    80004c14:	00800c93          	li	s9,8
    80004c18:	be1ff06f          	j	800047f8 <__printf+0x260>
    80004c1c:	00001517          	auipc	a0,0x1
    80004c20:	6fc50513          	addi	a0,a0,1788 # 80006318 <CONSOLE_STATUS+0x308>
    80004c24:	00000097          	auipc	ra,0x0
    80004c28:	918080e7          	jalr	-1768(ra) # 8000453c <panic>

0000000080004c2c <printfinit>:
    80004c2c:	fe010113          	addi	sp,sp,-32
    80004c30:	00813823          	sd	s0,16(sp)
    80004c34:	00913423          	sd	s1,8(sp)
    80004c38:	00113c23          	sd	ra,24(sp)
    80004c3c:	02010413          	addi	s0,sp,32
    80004c40:	00004497          	auipc	s1,0x4
    80004c44:	91048493          	addi	s1,s1,-1776 # 80008550 <pr>
    80004c48:	00048513          	mv	a0,s1
    80004c4c:	00001597          	auipc	a1,0x1
    80004c50:	6dc58593          	addi	a1,a1,1756 # 80006328 <CONSOLE_STATUS+0x318>
    80004c54:	00000097          	auipc	ra,0x0
    80004c58:	5f4080e7          	jalr	1524(ra) # 80005248 <initlock>
    80004c5c:	01813083          	ld	ra,24(sp)
    80004c60:	01013403          	ld	s0,16(sp)
    80004c64:	0004ac23          	sw	zero,24(s1)
    80004c68:	00813483          	ld	s1,8(sp)
    80004c6c:	02010113          	addi	sp,sp,32
    80004c70:	00008067          	ret

0000000080004c74 <uartinit>:
    80004c74:	ff010113          	addi	sp,sp,-16
    80004c78:	00813423          	sd	s0,8(sp)
    80004c7c:	01010413          	addi	s0,sp,16
    80004c80:	100007b7          	lui	a5,0x10000
    80004c84:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80004c88:	f8000713          	li	a4,-128
    80004c8c:	00e781a3          	sb	a4,3(a5)
    80004c90:	00300713          	li	a4,3
    80004c94:	00e78023          	sb	a4,0(a5)
    80004c98:	000780a3          	sb	zero,1(a5)
    80004c9c:	00e781a3          	sb	a4,3(a5)
    80004ca0:	00700693          	li	a3,7
    80004ca4:	00d78123          	sb	a3,2(a5)
    80004ca8:	00e780a3          	sb	a4,1(a5)
    80004cac:	00813403          	ld	s0,8(sp)
    80004cb0:	01010113          	addi	sp,sp,16
    80004cb4:	00008067          	ret

0000000080004cb8 <uartputc>:
    80004cb8:	00002797          	auipc	a5,0x2
    80004cbc:	6007a783          	lw	a5,1536(a5) # 800072b8 <panicked>
    80004cc0:	00078463          	beqz	a5,80004cc8 <uartputc+0x10>
    80004cc4:	0000006f          	j	80004cc4 <uartputc+0xc>
    80004cc8:	fd010113          	addi	sp,sp,-48
    80004ccc:	02813023          	sd	s0,32(sp)
    80004cd0:	00913c23          	sd	s1,24(sp)
    80004cd4:	01213823          	sd	s2,16(sp)
    80004cd8:	01313423          	sd	s3,8(sp)
    80004cdc:	02113423          	sd	ra,40(sp)
    80004ce0:	03010413          	addi	s0,sp,48
    80004ce4:	00002917          	auipc	s2,0x2
    80004ce8:	5dc90913          	addi	s2,s2,1500 # 800072c0 <uart_tx_r>
    80004cec:	00093783          	ld	a5,0(s2)
    80004cf0:	00002497          	auipc	s1,0x2
    80004cf4:	5d848493          	addi	s1,s1,1496 # 800072c8 <uart_tx_w>
    80004cf8:	0004b703          	ld	a4,0(s1)
    80004cfc:	02078693          	addi	a3,a5,32
    80004d00:	00050993          	mv	s3,a0
    80004d04:	02e69c63          	bne	a3,a4,80004d3c <uartputc+0x84>
    80004d08:	00001097          	auipc	ra,0x1
    80004d0c:	834080e7          	jalr	-1996(ra) # 8000553c <push_on>
    80004d10:	00093783          	ld	a5,0(s2)
    80004d14:	0004b703          	ld	a4,0(s1)
    80004d18:	02078793          	addi	a5,a5,32
    80004d1c:	00e79463          	bne	a5,a4,80004d24 <uartputc+0x6c>
    80004d20:	0000006f          	j	80004d20 <uartputc+0x68>
    80004d24:	00001097          	auipc	ra,0x1
    80004d28:	88c080e7          	jalr	-1908(ra) # 800055b0 <pop_on>
    80004d2c:	00093783          	ld	a5,0(s2)
    80004d30:	0004b703          	ld	a4,0(s1)
    80004d34:	02078693          	addi	a3,a5,32
    80004d38:	fce688e3          	beq	a3,a4,80004d08 <uartputc+0x50>
    80004d3c:	01f77693          	andi	a3,a4,31
    80004d40:	00004597          	auipc	a1,0x4
    80004d44:	83058593          	addi	a1,a1,-2000 # 80008570 <uart_tx_buf>
    80004d48:	00d586b3          	add	a3,a1,a3
    80004d4c:	00170713          	addi	a4,a4,1
    80004d50:	01368023          	sb	s3,0(a3)
    80004d54:	00e4b023          	sd	a4,0(s1)
    80004d58:	10000637          	lui	a2,0x10000
    80004d5c:	02f71063          	bne	a4,a5,80004d7c <uartputc+0xc4>
    80004d60:	0340006f          	j	80004d94 <uartputc+0xdc>
    80004d64:	00074703          	lbu	a4,0(a4)
    80004d68:	00f93023          	sd	a5,0(s2)
    80004d6c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80004d70:	00093783          	ld	a5,0(s2)
    80004d74:	0004b703          	ld	a4,0(s1)
    80004d78:	00f70e63          	beq	a4,a5,80004d94 <uartputc+0xdc>
    80004d7c:	00564683          	lbu	a3,5(a2)
    80004d80:	01f7f713          	andi	a4,a5,31
    80004d84:	00e58733          	add	a4,a1,a4
    80004d88:	0206f693          	andi	a3,a3,32
    80004d8c:	00178793          	addi	a5,a5,1
    80004d90:	fc069ae3          	bnez	a3,80004d64 <uartputc+0xac>
    80004d94:	02813083          	ld	ra,40(sp)
    80004d98:	02013403          	ld	s0,32(sp)
    80004d9c:	01813483          	ld	s1,24(sp)
    80004da0:	01013903          	ld	s2,16(sp)
    80004da4:	00813983          	ld	s3,8(sp)
    80004da8:	03010113          	addi	sp,sp,48
    80004dac:	00008067          	ret

0000000080004db0 <uartputc_sync>:
    80004db0:	ff010113          	addi	sp,sp,-16
    80004db4:	00813423          	sd	s0,8(sp)
    80004db8:	01010413          	addi	s0,sp,16
    80004dbc:	00002717          	auipc	a4,0x2
    80004dc0:	4fc72703          	lw	a4,1276(a4) # 800072b8 <panicked>
    80004dc4:	02071663          	bnez	a4,80004df0 <uartputc_sync+0x40>
    80004dc8:	00050793          	mv	a5,a0
    80004dcc:	100006b7          	lui	a3,0x10000
    80004dd0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80004dd4:	02077713          	andi	a4,a4,32
    80004dd8:	fe070ce3          	beqz	a4,80004dd0 <uartputc_sync+0x20>
    80004ddc:	0ff7f793          	andi	a5,a5,255
    80004de0:	00f68023          	sb	a5,0(a3)
    80004de4:	00813403          	ld	s0,8(sp)
    80004de8:	01010113          	addi	sp,sp,16
    80004dec:	00008067          	ret
    80004df0:	0000006f          	j	80004df0 <uartputc_sync+0x40>

0000000080004df4 <uartstart>:
    80004df4:	ff010113          	addi	sp,sp,-16
    80004df8:	00813423          	sd	s0,8(sp)
    80004dfc:	01010413          	addi	s0,sp,16
    80004e00:	00002617          	auipc	a2,0x2
    80004e04:	4c060613          	addi	a2,a2,1216 # 800072c0 <uart_tx_r>
    80004e08:	00002517          	auipc	a0,0x2
    80004e0c:	4c050513          	addi	a0,a0,1216 # 800072c8 <uart_tx_w>
    80004e10:	00063783          	ld	a5,0(a2)
    80004e14:	00053703          	ld	a4,0(a0)
    80004e18:	04f70263          	beq	a4,a5,80004e5c <uartstart+0x68>
    80004e1c:	100005b7          	lui	a1,0x10000
    80004e20:	00003817          	auipc	a6,0x3
    80004e24:	75080813          	addi	a6,a6,1872 # 80008570 <uart_tx_buf>
    80004e28:	01c0006f          	j	80004e44 <uartstart+0x50>
    80004e2c:	0006c703          	lbu	a4,0(a3)
    80004e30:	00f63023          	sd	a5,0(a2)
    80004e34:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80004e38:	00063783          	ld	a5,0(a2)
    80004e3c:	00053703          	ld	a4,0(a0)
    80004e40:	00f70e63          	beq	a4,a5,80004e5c <uartstart+0x68>
    80004e44:	01f7f713          	andi	a4,a5,31
    80004e48:	00e806b3          	add	a3,a6,a4
    80004e4c:	0055c703          	lbu	a4,5(a1)
    80004e50:	00178793          	addi	a5,a5,1
    80004e54:	02077713          	andi	a4,a4,32
    80004e58:	fc071ae3          	bnez	a4,80004e2c <uartstart+0x38>
    80004e5c:	00813403          	ld	s0,8(sp)
    80004e60:	01010113          	addi	sp,sp,16
    80004e64:	00008067          	ret

0000000080004e68 <uartgetc>:
    80004e68:	ff010113          	addi	sp,sp,-16
    80004e6c:	00813423          	sd	s0,8(sp)
    80004e70:	01010413          	addi	s0,sp,16
    80004e74:	10000737          	lui	a4,0x10000
    80004e78:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80004e7c:	0017f793          	andi	a5,a5,1
    80004e80:	00078c63          	beqz	a5,80004e98 <uartgetc+0x30>
    80004e84:	00074503          	lbu	a0,0(a4)
    80004e88:	0ff57513          	andi	a0,a0,255
    80004e8c:	00813403          	ld	s0,8(sp)
    80004e90:	01010113          	addi	sp,sp,16
    80004e94:	00008067          	ret
    80004e98:	fff00513          	li	a0,-1
    80004e9c:	ff1ff06f          	j	80004e8c <uartgetc+0x24>

0000000080004ea0 <uartintr>:
    80004ea0:	100007b7          	lui	a5,0x10000
    80004ea4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80004ea8:	0017f793          	andi	a5,a5,1
    80004eac:	0a078463          	beqz	a5,80004f54 <uartintr+0xb4>
    80004eb0:	fe010113          	addi	sp,sp,-32
    80004eb4:	00813823          	sd	s0,16(sp)
    80004eb8:	00913423          	sd	s1,8(sp)
    80004ebc:	00113c23          	sd	ra,24(sp)
    80004ec0:	02010413          	addi	s0,sp,32
    80004ec4:	100004b7          	lui	s1,0x10000
    80004ec8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80004ecc:	0ff57513          	andi	a0,a0,255
    80004ed0:	fffff097          	auipc	ra,0xfffff
    80004ed4:	534080e7          	jalr	1332(ra) # 80004404 <consoleintr>
    80004ed8:	0054c783          	lbu	a5,5(s1)
    80004edc:	0017f793          	andi	a5,a5,1
    80004ee0:	fe0794e3          	bnez	a5,80004ec8 <uartintr+0x28>
    80004ee4:	00002617          	auipc	a2,0x2
    80004ee8:	3dc60613          	addi	a2,a2,988 # 800072c0 <uart_tx_r>
    80004eec:	00002517          	auipc	a0,0x2
    80004ef0:	3dc50513          	addi	a0,a0,988 # 800072c8 <uart_tx_w>
    80004ef4:	00063783          	ld	a5,0(a2)
    80004ef8:	00053703          	ld	a4,0(a0)
    80004efc:	04f70263          	beq	a4,a5,80004f40 <uartintr+0xa0>
    80004f00:	100005b7          	lui	a1,0x10000
    80004f04:	00003817          	auipc	a6,0x3
    80004f08:	66c80813          	addi	a6,a6,1644 # 80008570 <uart_tx_buf>
    80004f0c:	01c0006f          	j	80004f28 <uartintr+0x88>
    80004f10:	0006c703          	lbu	a4,0(a3)
    80004f14:	00f63023          	sd	a5,0(a2)
    80004f18:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80004f1c:	00063783          	ld	a5,0(a2)
    80004f20:	00053703          	ld	a4,0(a0)
    80004f24:	00f70e63          	beq	a4,a5,80004f40 <uartintr+0xa0>
    80004f28:	01f7f713          	andi	a4,a5,31
    80004f2c:	00e806b3          	add	a3,a6,a4
    80004f30:	0055c703          	lbu	a4,5(a1)
    80004f34:	00178793          	addi	a5,a5,1
    80004f38:	02077713          	andi	a4,a4,32
    80004f3c:	fc071ae3          	bnez	a4,80004f10 <uartintr+0x70>
    80004f40:	01813083          	ld	ra,24(sp)
    80004f44:	01013403          	ld	s0,16(sp)
    80004f48:	00813483          	ld	s1,8(sp)
    80004f4c:	02010113          	addi	sp,sp,32
    80004f50:	00008067          	ret
    80004f54:	00002617          	auipc	a2,0x2
    80004f58:	36c60613          	addi	a2,a2,876 # 800072c0 <uart_tx_r>
    80004f5c:	00002517          	auipc	a0,0x2
    80004f60:	36c50513          	addi	a0,a0,876 # 800072c8 <uart_tx_w>
    80004f64:	00063783          	ld	a5,0(a2)
    80004f68:	00053703          	ld	a4,0(a0)
    80004f6c:	04f70263          	beq	a4,a5,80004fb0 <uartintr+0x110>
    80004f70:	100005b7          	lui	a1,0x10000
    80004f74:	00003817          	auipc	a6,0x3
    80004f78:	5fc80813          	addi	a6,a6,1532 # 80008570 <uart_tx_buf>
    80004f7c:	01c0006f          	j	80004f98 <uartintr+0xf8>
    80004f80:	0006c703          	lbu	a4,0(a3)
    80004f84:	00f63023          	sd	a5,0(a2)
    80004f88:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80004f8c:	00063783          	ld	a5,0(a2)
    80004f90:	00053703          	ld	a4,0(a0)
    80004f94:	02f70063          	beq	a4,a5,80004fb4 <uartintr+0x114>
    80004f98:	01f7f713          	andi	a4,a5,31
    80004f9c:	00e806b3          	add	a3,a6,a4
    80004fa0:	0055c703          	lbu	a4,5(a1)
    80004fa4:	00178793          	addi	a5,a5,1
    80004fa8:	02077713          	andi	a4,a4,32
    80004fac:	fc071ae3          	bnez	a4,80004f80 <uartintr+0xe0>
    80004fb0:	00008067          	ret
    80004fb4:	00008067          	ret

0000000080004fb8 <kinit>:
    80004fb8:	fc010113          	addi	sp,sp,-64
    80004fbc:	02913423          	sd	s1,40(sp)
    80004fc0:	fffff7b7          	lui	a5,0xfffff
    80004fc4:	00004497          	auipc	s1,0x4
    80004fc8:	5cb48493          	addi	s1,s1,1483 # 8000958f <end+0xfff>
    80004fcc:	02813823          	sd	s0,48(sp)
    80004fd0:	01313c23          	sd	s3,24(sp)
    80004fd4:	00f4f4b3          	and	s1,s1,a5
    80004fd8:	02113c23          	sd	ra,56(sp)
    80004fdc:	03213023          	sd	s2,32(sp)
    80004fe0:	01413823          	sd	s4,16(sp)
    80004fe4:	01513423          	sd	s5,8(sp)
    80004fe8:	04010413          	addi	s0,sp,64
    80004fec:	000017b7          	lui	a5,0x1
    80004ff0:	01100993          	li	s3,17
    80004ff4:	00f487b3          	add	a5,s1,a5
    80004ff8:	01b99993          	slli	s3,s3,0x1b
    80004ffc:	06f9e063          	bltu	s3,a5,8000505c <kinit+0xa4>
    80005000:	00003a97          	auipc	s5,0x3
    80005004:	590a8a93          	addi	s5,s5,1424 # 80008590 <end>
    80005008:	0754ec63          	bltu	s1,s5,80005080 <kinit+0xc8>
    8000500c:	0734fa63          	bgeu	s1,s3,80005080 <kinit+0xc8>
    80005010:	00088a37          	lui	s4,0x88
    80005014:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80005018:	00002917          	auipc	s2,0x2
    8000501c:	2b890913          	addi	s2,s2,696 # 800072d0 <kmem>
    80005020:	00ca1a13          	slli	s4,s4,0xc
    80005024:	0140006f          	j	80005038 <kinit+0x80>
    80005028:	000017b7          	lui	a5,0x1
    8000502c:	00f484b3          	add	s1,s1,a5
    80005030:	0554e863          	bltu	s1,s5,80005080 <kinit+0xc8>
    80005034:	0534f663          	bgeu	s1,s3,80005080 <kinit+0xc8>
    80005038:	00001637          	lui	a2,0x1
    8000503c:	00100593          	li	a1,1
    80005040:	00048513          	mv	a0,s1
    80005044:	00000097          	auipc	ra,0x0
    80005048:	5e4080e7          	jalr	1508(ra) # 80005628 <__memset>
    8000504c:	00093783          	ld	a5,0(s2)
    80005050:	00f4b023          	sd	a5,0(s1)
    80005054:	00993023          	sd	s1,0(s2)
    80005058:	fd4498e3          	bne	s1,s4,80005028 <kinit+0x70>
    8000505c:	03813083          	ld	ra,56(sp)
    80005060:	03013403          	ld	s0,48(sp)
    80005064:	02813483          	ld	s1,40(sp)
    80005068:	02013903          	ld	s2,32(sp)
    8000506c:	01813983          	ld	s3,24(sp)
    80005070:	01013a03          	ld	s4,16(sp)
    80005074:	00813a83          	ld	s5,8(sp)
    80005078:	04010113          	addi	sp,sp,64
    8000507c:	00008067          	ret
    80005080:	00001517          	auipc	a0,0x1
    80005084:	2c850513          	addi	a0,a0,712 # 80006348 <digits+0x18>
    80005088:	fffff097          	auipc	ra,0xfffff
    8000508c:	4b4080e7          	jalr	1204(ra) # 8000453c <panic>

0000000080005090 <freerange>:
    80005090:	fc010113          	addi	sp,sp,-64
    80005094:	000017b7          	lui	a5,0x1
    80005098:	02913423          	sd	s1,40(sp)
    8000509c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    800050a0:	009504b3          	add	s1,a0,s1
    800050a4:	fffff537          	lui	a0,0xfffff
    800050a8:	02813823          	sd	s0,48(sp)
    800050ac:	02113c23          	sd	ra,56(sp)
    800050b0:	03213023          	sd	s2,32(sp)
    800050b4:	01313c23          	sd	s3,24(sp)
    800050b8:	01413823          	sd	s4,16(sp)
    800050bc:	01513423          	sd	s5,8(sp)
    800050c0:	01613023          	sd	s6,0(sp)
    800050c4:	04010413          	addi	s0,sp,64
    800050c8:	00a4f4b3          	and	s1,s1,a0
    800050cc:	00f487b3          	add	a5,s1,a5
    800050d0:	06f5e463          	bltu	a1,a5,80005138 <freerange+0xa8>
    800050d4:	00003a97          	auipc	s5,0x3
    800050d8:	4bca8a93          	addi	s5,s5,1212 # 80008590 <end>
    800050dc:	0954e263          	bltu	s1,s5,80005160 <freerange+0xd0>
    800050e0:	01100993          	li	s3,17
    800050e4:	01b99993          	slli	s3,s3,0x1b
    800050e8:	0734fc63          	bgeu	s1,s3,80005160 <freerange+0xd0>
    800050ec:	00058a13          	mv	s4,a1
    800050f0:	00002917          	auipc	s2,0x2
    800050f4:	1e090913          	addi	s2,s2,480 # 800072d0 <kmem>
    800050f8:	00002b37          	lui	s6,0x2
    800050fc:	0140006f          	j	80005110 <freerange+0x80>
    80005100:	000017b7          	lui	a5,0x1
    80005104:	00f484b3          	add	s1,s1,a5
    80005108:	0554ec63          	bltu	s1,s5,80005160 <freerange+0xd0>
    8000510c:	0534fa63          	bgeu	s1,s3,80005160 <freerange+0xd0>
    80005110:	00001637          	lui	a2,0x1
    80005114:	00100593          	li	a1,1
    80005118:	00048513          	mv	a0,s1
    8000511c:	00000097          	auipc	ra,0x0
    80005120:	50c080e7          	jalr	1292(ra) # 80005628 <__memset>
    80005124:	00093703          	ld	a4,0(s2)
    80005128:	016487b3          	add	a5,s1,s6
    8000512c:	00e4b023          	sd	a4,0(s1)
    80005130:	00993023          	sd	s1,0(s2)
    80005134:	fcfa76e3          	bgeu	s4,a5,80005100 <freerange+0x70>
    80005138:	03813083          	ld	ra,56(sp)
    8000513c:	03013403          	ld	s0,48(sp)
    80005140:	02813483          	ld	s1,40(sp)
    80005144:	02013903          	ld	s2,32(sp)
    80005148:	01813983          	ld	s3,24(sp)
    8000514c:	01013a03          	ld	s4,16(sp)
    80005150:	00813a83          	ld	s5,8(sp)
    80005154:	00013b03          	ld	s6,0(sp)
    80005158:	04010113          	addi	sp,sp,64
    8000515c:	00008067          	ret
    80005160:	00001517          	auipc	a0,0x1
    80005164:	1e850513          	addi	a0,a0,488 # 80006348 <digits+0x18>
    80005168:	fffff097          	auipc	ra,0xfffff
    8000516c:	3d4080e7          	jalr	980(ra) # 8000453c <panic>

0000000080005170 <kfree>:
    80005170:	fe010113          	addi	sp,sp,-32
    80005174:	00813823          	sd	s0,16(sp)
    80005178:	00113c23          	sd	ra,24(sp)
    8000517c:	00913423          	sd	s1,8(sp)
    80005180:	02010413          	addi	s0,sp,32
    80005184:	03451793          	slli	a5,a0,0x34
    80005188:	04079c63          	bnez	a5,800051e0 <kfree+0x70>
    8000518c:	00003797          	auipc	a5,0x3
    80005190:	40478793          	addi	a5,a5,1028 # 80008590 <end>
    80005194:	00050493          	mv	s1,a0
    80005198:	04f56463          	bltu	a0,a5,800051e0 <kfree+0x70>
    8000519c:	01100793          	li	a5,17
    800051a0:	01b79793          	slli	a5,a5,0x1b
    800051a4:	02f57e63          	bgeu	a0,a5,800051e0 <kfree+0x70>
    800051a8:	00001637          	lui	a2,0x1
    800051ac:	00100593          	li	a1,1
    800051b0:	00000097          	auipc	ra,0x0
    800051b4:	478080e7          	jalr	1144(ra) # 80005628 <__memset>
    800051b8:	00002797          	auipc	a5,0x2
    800051bc:	11878793          	addi	a5,a5,280 # 800072d0 <kmem>
    800051c0:	0007b703          	ld	a4,0(a5)
    800051c4:	01813083          	ld	ra,24(sp)
    800051c8:	01013403          	ld	s0,16(sp)
    800051cc:	00e4b023          	sd	a4,0(s1)
    800051d0:	0097b023          	sd	s1,0(a5)
    800051d4:	00813483          	ld	s1,8(sp)
    800051d8:	02010113          	addi	sp,sp,32
    800051dc:	00008067          	ret
    800051e0:	00001517          	auipc	a0,0x1
    800051e4:	16850513          	addi	a0,a0,360 # 80006348 <digits+0x18>
    800051e8:	fffff097          	auipc	ra,0xfffff
    800051ec:	354080e7          	jalr	852(ra) # 8000453c <panic>

00000000800051f0 <kalloc>:
    800051f0:	fe010113          	addi	sp,sp,-32
    800051f4:	00813823          	sd	s0,16(sp)
    800051f8:	00913423          	sd	s1,8(sp)
    800051fc:	00113c23          	sd	ra,24(sp)
    80005200:	02010413          	addi	s0,sp,32
    80005204:	00002797          	auipc	a5,0x2
    80005208:	0cc78793          	addi	a5,a5,204 # 800072d0 <kmem>
    8000520c:	0007b483          	ld	s1,0(a5)
    80005210:	02048063          	beqz	s1,80005230 <kalloc+0x40>
    80005214:	0004b703          	ld	a4,0(s1)
    80005218:	00001637          	lui	a2,0x1
    8000521c:	00500593          	li	a1,5
    80005220:	00048513          	mv	a0,s1
    80005224:	00e7b023          	sd	a4,0(a5)
    80005228:	00000097          	auipc	ra,0x0
    8000522c:	400080e7          	jalr	1024(ra) # 80005628 <__memset>
    80005230:	01813083          	ld	ra,24(sp)
    80005234:	01013403          	ld	s0,16(sp)
    80005238:	00048513          	mv	a0,s1
    8000523c:	00813483          	ld	s1,8(sp)
    80005240:	02010113          	addi	sp,sp,32
    80005244:	00008067          	ret

0000000080005248 <initlock>:
    80005248:	ff010113          	addi	sp,sp,-16
    8000524c:	00813423          	sd	s0,8(sp)
    80005250:	01010413          	addi	s0,sp,16
    80005254:	00813403          	ld	s0,8(sp)
    80005258:	00b53423          	sd	a1,8(a0)
    8000525c:	00052023          	sw	zero,0(a0)
    80005260:	00053823          	sd	zero,16(a0)
    80005264:	01010113          	addi	sp,sp,16
    80005268:	00008067          	ret

000000008000526c <acquire>:
    8000526c:	fe010113          	addi	sp,sp,-32
    80005270:	00813823          	sd	s0,16(sp)
    80005274:	00913423          	sd	s1,8(sp)
    80005278:	00113c23          	sd	ra,24(sp)
    8000527c:	01213023          	sd	s2,0(sp)
    80005280:	02010413          	addi	s0,sp,32
    80005284:	00050493          	mv	s1,a0
    80005288:	10002973          	csrr	s2,sstatus
    8000528c:	100027f3          	csrr	a5,sstatus
    80005290:	ffd7f793          	andi	a5,a5,-3
    80005294:	10079073          	csrw	sstatus,a5
    80005298:	fffff097          	auipc	ra,0xfffff
    8000529c:	8e4080e7          	jalr	-1820(ra) # 80003b7c <mycpu>
    800052a0:	07852783          	lw	a5,120(a0)
    800052a4:	06078e63          	beqz	a5,80005320 <acquire+0xb4>
    800052a8:	fffff097          	auipc	ra,0xfffff
    800052ac:	8d4080e7          	jalr	-1836(ra) # 80003b7c <mycpu>
    800052b0:	07852783          	lw	a5,120(a0)
    800052b4:	0004a703          	lw	a4,0(s1)
    800052b8:	0017879b          	addiw	a5,a5,1
    800052bc:	06f52c23          	sw	a5,120(a0)
    800052c0:	04071063          	bnez	a4,80005300 <acquire+0x94>
    800052c4:	00100713          	li	a4,1
    800052c8:	00070793          	mv	a5,a4
    800052cc:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    800052d0:	0007879b          	sext.w	a5,a5
    800052d4:	fe079ae3          	bnez	a5,800052c8 <acquire+0x5c>
    800052d8:	0ff0000f          	fence
    800052dc:	fffff097          	auipc	ra,0xfffff
    800052e0:	8a0080e7          	jalr	-1888(ra) # 80003b7c <mycpu>
    800052e4:	01813083          	ld	ra,24(sp)
    800052e8:	01013403          	ld	s0,16(sp)
    800052ec:	00a4b823          	sd	a0,16(s1)
    800052f0:	00013903          	ld	s2,0(sp)
    800052f4:	00813483          	ld	s1,8(sp)
    800052f8:	02010113          	addi	sp,sp,32
    800052fc:	00008067          	ret
    80005300:	0104b903          	ld	s2,16(s1)
    80005304:	fffff097          	auipc	ra,0xfffff
    80005308:	878080e7          	jalr	-1928(ra) # 80003b7c <mycpu>
    8000530c:	faa91ce3          	bne	s2,a0,800052c4 <acquire+0x58>
    80005310:	00001517          	auipc	a0,0x1
    80005314:	04050513          	addi	a0,a0,64 # 80006350 <digits+0x20>
    80005318:	fffff097          	auipc	ra,0xfffff
    8000531c:	224080e7          	jalr	548(ra) # 8000453c <panic>
    80005320:	00195913          	srli	s2,s2,0x1
    80005324:	fffff097          	auipc	ra,0xfffff
    80005328:	858080e7          	jalr	-1960(ra) # 80003b7c <mycpu>
    8000532c:	00197913          	andi	s2,s2,1
    80005330:	07252e23          	sw	s2,124(a0)
    80005334:	f75ff06f          	j	800052a8 <acquire+0x3c>

0000000080005338 <release>:
    80005338:	fe010113          	addi	sp,sp,-32
    8000533c:	00813823          	sd	s0,16(sp)
    80005340:	00113c23          	sd	ra,24(sp)
    80005344:	00913423          	sd	s1,8(sp)
    80005348:	01213023          	sd	s2,0(sp)
    8000534c:	02010413          	addi	s0,sp,32
    80005350:	00052783          	lw	a5,0(a0)
    80005354:	00079a63          	bnez	a5,80005368 <release+0x30>
    80005358:	00001517          	auipc	a0,0x1
    8000535c:	00050513          	mv	a0,a0
    80005360:	fffff097          	auipc	ra,0xfffff
    80005364:	1dc080e7          	jalr	476(ra) # 8000453c <panic>
    80005368:	01053903          	ld	s2,16(a0) # 80006368 <digits+0x38>
    8000536c:	00050493          	mv	s1,a0
    80005370:	fffff097          	auipc	ra,0xfffff
    80005374:	80c080e7          	jalr	-2036(ra) # 80003b7c <mycpu>
    80005378:	fea910e3          	bne	s2,a0,80005358 <release+0x20>
    8000537c:	0004b823          	sd	zero,16(s1)
    80005380:	0ff0000f          	fence
    80005384:	0f50000f          	fence	iorw,ow
    80005388:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000538c:	ffffe097          	auipc	ra,0xffffe
    80005390:	7f0080e7          	jalr	2032(ra) # 80003b7c <mycpu>
    80005394:	100027f3          	csrr	a5,sstatus
    80005398:	0027f793          	andi	a5,a5,2
    8000539c:	04079a63          	bnez	a5,800053f0 <release+0xb8>
    800053a0:	07852783          	lw	a5,120(a0)
    800053a4:	02f05e63          	blez	a5,800053e0 <release+0xa8>
    800053a8:	fff7871b          	addiw	a4,a5,-1
    800053ac:	06e52c23          	sw	a4,120(a0)
    800053b0:	00071c63          	bnez	a4,800053c8 <release+0x90>
    800053b4:	07c52783          	lw	a5,124(a0)
    800053b8:	00078863          	beqz	a5,800053c8 <release+0x90>
    800053bc:	100027f3          	csrr	a5,sstatus
    800053c0:	0027e793          	ori	a5,a5,2
    800053c4:	10079073          	csrw	sstatus,a5
    800053c8:	01813083          	ld	ra,24(sp)
    800053cc:	01013403          	ld	s0,16(sp)
    800053d0:	00813483          	ld	s1,8(sp)
    800053d4:	00013903          	ld	s2,0(sp)
    800053d8:	02010113          	addi	sp,sp,32
    800053dc:	00008067          	ret
    800053e0:	00001517          	auipc	a0,0x1
    800053e4:	f9850513          	addi	a0,a0,-104 # 80006378 <digits+0x48>
    800053e8:	fffff097          	auipc	ra,0xfffff
    800053ec:	154080e7          	jalr	340(ra) # 8000453c <panic>
    800053f0:	00001517          	auipc	a0,0x1
    800053f4:	f7050513          	addi	a0,a0,-144 # 80006360 <digits+0x30>
    800053f8:	fffff097          	auipc	ra,0xfffff
    800053fc:	144080e7          	jalr	324(ra) # 8000453c <panic>

0000000080005400 <holding>:
    80005400:	00052783          	lw	a5,0(a0)
    80005404:	00079663          	bnez	a5,80005410 <holding+0x10>
    80005408:	00000513          	li	a0,0
    8000540c:	00008067          	ret
    80005410:	fe010113          	addi	sp,sp,-32
    80005414:	00813823          	sd	s0,16(sp)
    80005418:	00913423          	sd	s1,8(sp)
    8000541c:	00113c23          	sd	ra,24(sp)
    80005420:	02010413          	addi	s0,sp,32
    80005424:	01053483          	ld	s1,16(a0)
    80005428:	ffffe097          	auipc	ra,0xffffe
    8000542c:	754080e7          	jalr	1876(ra) # 80003b7c <mycpu>
    80005430:	01813083          	ld	ra,24(sp)
    80005434:	01013403          	ld	s0,16(sp)
    80005438:	40a48533          	sub	a0,s1,a0
    8000543c:	00153513          	seqz	a0,a0
    80005440:	00813483          	ld	s1,8(sp)
    80005444:	02010113          	addi	sp,sp,32
    80005448:	00008067          	ret

000000008000544c <push_off>:
    8000544c:	fe010113          	addi	sp,sp,-32
    80005450:	00813823          	sd	s0,16(sp)
    80005454:	00113c23          	sd	ra,24(sp)
    80005458:	00913423          	sd	s1,8(sp)
    8000545c:	02010413          	addi	s0,sp,32
    80005460:	100024f3          	csrr	s1,sstatus
    80005464:	100027f3          	csrr	a5,sstatus
    80005468:	ffd7f793          	andi	a5,a5,-3
    8000546c:	10079073          	csrw	sstatus,a5
    80005470:	ffffe097          	auipc	ra,0xffffe
    80005474:	70c080e7          	jalr	1804(ra) # 80003b7c <mycpu>
    80005478:	07852783          	lw	a5,120(a0)
    8000547c:	02078663          	beqz	a5,800054a8 <push_off+0x5c>
    80005480:	ffffe097          	auipc	ra,0xffffe
    80005484:	6fc080e7          	jalr	1788(ra) # 80003b7c <mycpu>
    80005488:	07852783          	lw	a5,120(a0)
    8000548c:	01813083          	ld	ra,24(sp)
    80005490:	01013403          	ld	s0,16(sp)
    80005494:	0017879b          	addiw	a5,a5,1
    80005498:	06f52c23          	sw	a5,120(a0)
    8000549c:	00813483          	ld	s1,8(sp)
    800054a0:	02010113          	addi	sp,sp,32
    800054a4:	00008067          	ret
    800054a8:	0014d493          	srli	s1,s1,0x1
    800054ac:	ffffe097          	auipc	ra,0xffffe
    800054b0:	6d0080e7          	jalr	1744(ra) # 80003b7c <mycpu>
    800054b4:	0014f493          	andi	s1,s1,1
    800054b8:	06952e23          	sw	s1,124(a0)
    800054bc:	fc5ff06f          	j	80005480 <push_off+0x34>

00000000800054c0 <pop_off>:
    800054c0:	ff010113          	addi	sp,sp,-16
    800054c4:	00813023          	sd	s0,0(sp)
    800054c8:	00113423          	sd	ra,8(sp)
    800054cc:	01010413          	addi	s0,sp,16
    800054d0:	ffffe097          	auipc	ra,0xffffe
    800054d4:	6ac080e7          	jalr	1708(ra) # 80003b7c <mycpu>
    800054d8:	100027f3          	csrr	a5,sstatus
    800054dc:	0027f793          	andi	a5,a5,2
    800054e0:	04079663          	bnez	a5,8000552c <pop_off+0x6c>
    800054e4:	07852783          	lw	a5,120(a0)
    800054e8:	02f05a63          	blez	a5,8000551c <pop_off+0x5c>
    800054ec:	fff7871b          	addiw	a4,a5,-1
    800054f0:	06e52c23          	sw	a4,120(a0)
    800054f4:	00071c63          	bnez	a4,8000550c <pop_off+0x4c>
    800054f8:	07c52783          	lw	a5,124(a0)
    800054fc:	00078863          	beqz	a5,8000550c <pop_off+0x4c>
    80005500:	100027f3          	csrr	a5,sstatus
    80005504:	0027e793          	ori	a5,a5,2
    80005508:	10079073          	csrw	sstatus,a5
    8000550c:	00813083          	ld	ra,8(sp)
    80005510:	00013403          	ld	s0,0(sp)
    80005514:	01010113          	addi	sp,sp,16
    80005518:	00008067          	ret
    8000551c:	00001517          	auipc	a0,0x1
    80005520:	e5c50513          	addi	a0,a0,-420 # 80006378 <digits+0x48>
    80005524:	fffff097          	auipc	ra,0xfffff
    80005528:	018080e7          	jalr	24(ra) # 8000453c <panic>
    8000552c:	00001517          	auipc	a0,0x1
    80005530:	e3450513          	addi	a0,a0,-460 # 80006360 <digits+0x30>
    80005534:	fffff097          	auipc	ra,0xfffff
    80005538:	008080e7          	jalr	8(ra) # 8000453c <panic>

000000008000553c <push_on>:
    8000553c:	fe010113          	addi	sp,sp,-32
    80005540:	00813823          	sd	s0,16(sp)
    80005544:	00113c23          	sd	ra,24(sp)
    80005548:	00913423          	sd	s1,8(sp)
    8000554c:	02010413          	addi	s0,sp,32
    80005550:	100024f3          	csrr	s1,sstatus
    80005554:	100027f3          	csrr	a5,sstatus
    80005558:	0027e793          	ori	a5,a5,2
    8000555c:	10079073          	csrw	sstatus,a5
    80005560:	ffffe097          	auipc	ra,0xffffe
    80005564:	61c080e7          	jalr	1564(ra) # 80003b7c <mycpu>
    80005568:	07852783          	lw	a5,120(a0)
    8000556c:	02078663          	beqz	a5,80005598 <push_on+0x5c>
    80005570:	ffffe097          	auipc	ra,0xffffe
    80005574:	60c080e7          	jalr	1548(ra) # 80003b7c <mycpu>
    80005578:	07852783          	lw	a5,120(a0)
    8000557c:	01813083          	ld	ra,24(sp)
    80005580:	01013403          	ld	s0,16(sp)
    80005584:	0017879b          	addiw	a5,a5,1
    80005588:	06f52c23          	sw	a5,120(a0)
    8000558c:	00813483          	ld	s1,8(sp)
    80005590:	02010113          	addi	sp,sp,32
    80005594:	00008067          	ret
    80005598:	0014d493          	srli	s1,s1,0x1
    8000559c:	ffffe097          	auipc	ra,0xffffe
    800055a0:	5e0080e7          	jalr	1504(ra) # 80003b7c <mycpu>
    800055a4:	0014f493          	andi	s1,s1,1
    800055a8:	06952e23          	sw	s1,124(a0)
    800055ac:	fc5ff06f          	j	80005570 <push_on+0x34>

00000000800055b0 <pop_on>:
    800055b0:	ff010113          	addi	sp,sp,-16
    800055b4:	00813023          	sd	s0,0(sp)
    800055b8:	00113423          	sd	ra,8(sp)
    800055bc:	01010413          	addi	s0,sp,16
    800055c0:	ffffe097          	auipc	ra,0xffffe
    800055c4:	5bc080e7          	jalr	1468(ra) # 80003b7c <mycpu>
    800055c8:	100027f3          	csrr	a5,sstatus
    800055cc:	0027f793          	andi	a5,a5,2
    800055d0:	04078463          	beqz	a5,80005618 <pop_on+0x68>
    800055d4:	07852783          	lw	a5,120(a0)
    800055d8:	02f05863          	blez	a5,80005608 <pop_on+0x58>
    800055dc:	fff7879b          	addiw	a5,a5,-1
    800055e0:	06f52c23          	sw	a5,120(a0)
    800055e4:	07853783          	ld	a5,120(a0)
    800055e8:	00079863          	bnez	a5,800055f8 <pop_on+0x48>
    800055ec:	100027f3          	csrr	a5,sstatus
    800055f0:	ffd7f793          	andi	a5,a5,-3
    800055f4:	10079073          	csrw	sstatus,a5
    800055f8:	00813083          	ld	ra,8(sp)
    800055fc:	00013403          	ld	s0,0(sp)
    80005600:	01010113          	addi	sp,sp,16
    80005604:	00008067          	ret
    80005608:	00001517          	auipc	a0,0x1
    8000560c:	d9850513          	addi	a0,a0,-616 # 800063a0 <digits+0x70>
    80005610:	fffff097          	auipc	ra,0xfffff
    80005614:	f2c080e7          	jalr	-212(ra) # 8000453c <panic>
    80005618:	00001517          	auipc	a0,0x1
    8000561c:	d6850513          	addi	a0,a0,-664 # 80006380 <digits+0x50>
    80005620:	fffff097          	auipc	ra,0xfffff
    80005624:	f1c080e7          	jalr	-228(ra) # 8000453c <panic>

0000000080005628 <__memset>:
    80005628:	ff010113          	addi	sp,sp,-16
    8000562c:	00813423          	sd	s0,8(sp)
    80005630:	01010413          	addi	s0,sp,16
    80005634:	1a060e63          	beqz	a2,800057f0 <__memset+0x1c8>
    80005638:	40a007b3          	neg	a5,a0
    8000563c:	0077f793          	andi	a5,a5,7
    80005640:	00778693          	addi	a3,a5,7
    80005644:	00b00813          	li	a6,11
    80005648:	0ff5f593          	andi	a1,a1,255
    8000564c:	fff6071b          	addiw	a4,a2,-1
    80005650:	1b06e663          	bltu	a3,a6,800057fc <__memset+0x1d4>
    80005654:	1cd76463          	bltu	a4,a3,8000581c <__memset+0x1f4>
    80005658:	1a078e63          	beqz	a5,80005814 <__memset+0x1ec>
    8000565c:	00b50023          	sb	a1,0(a0)
    80005660:	00100713          	li	a4,1
    80005664:	1ae78463          	beq	a5,a4,8000580c <__memset+0x1e4>
    80005668:	00b500a3          	sb	a1,1(a0)
    8000566c:	00200713          	li	a4,2
    80005670:	1ae78a63          	beq	a5,a4,80005824 <__memset+0x1fc>
    80005674:	00b50123          	sb	a1,2(a0)
    80005678:	00300713          	li	a4,3
    8000567c:	18e78463          	beq	a5,a4,80005804 <__memset+0x1dc>
    80005680:	00b501a3          	sb	a1,3(a0)
    80005684:	00400713          	li	a4,4
    80005688:	1ae78263          	beq	a5,a4,8000582c <__memset+0x204>
    8000568c:	00b50223          	sb	a1,4(a0)
    80005690:	00500713          	li	a4,5
    80005694:	1ae78063          	beq	a5,a4,80005834 <__memset+0x20c>
    80005698:	00b502a3          	sb	a1,5(a0)
    8000569c:	00700713          	li	a4,7
    800056a0:	18e79e63          	bne	a5,a4,8000583c <__memset+0x214>
    800056a4:	00b50323          	sb	a1,6(a0)
    800056a8:	00700e93          	li	t4,7
    800056ac:	00859713          	slli	a4,a1,0x8
    800056b0:	00e5e733          	or	a4,a1,a4
    800056b4:	01059e13          	slli	t3,a1,0x10
    800056b8:	01c76e33          	or	t3,a4,t3
    800056bc:	01859313          	slli	t1,a1,0x18
    800056c0:	006e6333          	or	t1,t3,t1
    800056c4:	02059893          	slli	a7,a1,0x20
    800056c8:	40f60e3b          	subw	t3,a2,a5
    800056cc:	011368b3          	or	a7,t1,a7
    800056d0:	02859813          	slli	a6,a1,0x28
    800056d4:	0108e833          	or	a6,a7,a6
    800056d8:	03059693          	slli	a3,a1,0x30
    800056dc:	003e589b          	srliw	a7,t3,0x3
    800056e0:	00d866b3          	or	a3,a6,a3
    800056e4:	03859713          	slli	a4,a1,0x38
    800056e8:	00389813          	slli	a6,a7,0x3
    800056ec:	00f507b3          	add	a5,a0,a5
    800056f0:	00e6e733          	or	a4,a3,a4
    800056f4:	000e089b          	sext.w	a7,t3
    800056f8:	00f806b3          	add	a3,a6,a5
    800056fc:	00e7b023          	sd	a4,0(a5)
    80005700:	00878793          	addi	a5,a5,8
    80005704:	fed79ce3          	bne	a5,a3,800056fc <__memset+0xd4>
    80005708:	ff8e7793          	andi	a5,t3,-8
    8000570c:	0007871b          	sext.w	a4,a5
    80005710:	01d787bb          	addw	a5,a5,t4
    80005714:	0ce88e63          	beq	a7,a4,800057f0 <__memset+0x1c8>
    80005718:	00f50733          	add	a4,a0,a5
    8000571c:	00b70023          	sb	a1,0(a4)
    80005720:	0017871b          	addiw	a4,a5,1
    80005724:	0cc77663          	bgeu	a4,a2,800057f0 <__memset+0x1c8>
    80005728:	00e50733          	add	a4,a0,a4
    8000572c:	00b70023          	sb	a1,0(a4)
    80005730:	0027871b          	addiw	a4,a5,2
    80005734:	0ac77e63          	bgeu	a4,a2,800057f0 <__memset+0x1c8>
    80005738:	00e50733          	add	a4,a0,a4
    8000573c:	00b70023          	sb	a1,0(a4)
    80005740:	0037871b          	addiw	a4,a5,3
    80005744:	0ac77663          	bgeu	a4,a2,800057f0 <__memset+0x1c8>
    80005748:	00e50733          	add	a4,a0,a4
    8000574c:	00b70023          	sb	a1,0(a4)
    80005750:	0047871b          	addiw	a4,a5,4
    80005754:	08c77e63          	bgeu	a4,a2,800057f0 <__memset+0x1c8>
    80005758:	00e50733          	add	a4,a0,a4
    8000575c:	00b70023          	sb	a1,0(a4)
    80005760:	0057871b          	addiw	a4,a5,5
    80005764:	08c77663          	bgeu	a4,a2,800057f0 <__memset+0x1c8>
    80005768:	00e50733          	add	a4,a0,a4
    8000576c:	00b70023          	sb	a1,0(a4)
    80005770:	0067871b          	addiw	a4,a5,6
    80005774:	06c77e63          	bgeu	a4,a2,800057f0 <__memset+0x1c8>
    80005778:	00e50733          	add	a4,a0,a4
    8000577c:	00b70023          	sb	a1,0(a4)
    80005780:	0077871b          	addiw	a4,a5,7
    80005784:	06c77663          	bgeu	a4,a2,800057f0 <__memset+0x1c8>
    80005788:	00e50733          	add	a4,a0,a4
    8000578c:	00b70023          	sb	a1,0(a4)
    80005790:	0087871b          	addiw	a4,a5,8
    80005794:	04c77e63          	bgeu	a4,a2,800057f0 <__memset+0x1c8>
    80005798:	00e50733          	add	a4,a0,a4
    8000579c:	00b70023          	sb	a1,0(a4)
    800057a0:	0097871b          	addiw	a4,a5,9
    800057a4:	04c77663          	bgeu	a4,a2,800057f0 <__memset+0x1c8>
    800057a8:	00e50733          	add	a4,a0,a4
    800057ac:	00b70023          	sb	a1,0(a4)
    800057b0:	00a7871b          	addiw	a4,a5,10
    800057b4:	02c77e63          	bgeu	a4,a2,800057f0 <__memset+0x1c8>
    800057b8:	00e50733          	add	a4,a0,a4
    800057bc:	00b70023          	sb	a1,0(a4)
    800057c0:	00b7871b          	addiw	a4,a5,11
    800057c4:	02c77663          	bgeu	a4,a2,800057f0 <__memset+0x1c8>
    800057c8:	00e50733          	add	a4,a0,a4
    800057cc:	00b70023          	sb	a1,0(a4)
    800057d0:	00c7871b          	addiw	a4,a5,12
    800057d4:	00c77e63          	bgeu	a4,a2,800057f0 <__memset+0x1c8>
    800057d8:	00e50733          	add	a4,a0,a4
    800057dc:	00b70023          	sb	a1,0(a4)
    800057e0:	00d7879b          	addiw	a5,a5,13
    800057e4:	00c7f663          	bgeu	a5,a2,800057f0 <__memset+0x1c8>
    800057e8:	00f507b3          	add	a5,a0,a5
    800057ec:	00b78023          	sb	a1,0(a5)
    800057f0:	00813403          	ld	s0,8(sp)
    800057f4:	01010113          	addi	sp,sp,16
    800057f8:	00008067          	ret
    800057fc:	00b00693          	li	a3,11
    80005800:	e55ff06f          	j	80005654 <__memset+0x2c>
    80005804:	00300e93          	li	t4,3
    80005808:	ea5ff06f          	j	800056ac <__memset+0x84>
    8000580c:	00100e93          	li	t4,1
    80005810:	e9dff06f          	j	800056ac <__memset+0x84>
    80005814:	00000e93          	li	t4,0
    80005818:	e95ff06f          	j	800056ac <__memset+0x84>
    8000581c:	00000793          	li	a5,0
    80005820:	ef9ff06f          	j	80005718 <__memset+0xf0>
    80005824:	00200e93          	li	t4,2
    80005828:	e85ff06f          	j	800056ac <__memset+0x84>
    8000582c:	00400e93          	li	t4,4
    80005830:	e7dff06f          	j	800056ac <__memset+0x84>
    80005834:	00500e93          	li	t4,5
    80005838:	e75ff06f          	j	800056ac <__memset+0x84>
    8000583c:	00600e93          	li	t4,6
    80005840:	e6dff06f          	j	800056ac <__memset+0x84>

0000000080005844 <__memmove>:
    80005844:	ff010113          	addi	sp,sp,-16
    80005848:	00813423          	sd	s0,8(sp)
    8000584c:	01010413          	addi	s0,sp,16
    80005850:	0e060863          	beqz	a2,80005940 <__memmove+0xfc>
    80005854:	fff6069b          	addiw	a3,a2,-1
    80005858:	0006881b          	sext.w	a6,a3
    8000585c:	0ea5e863          	bltu	a1,a0,8000594c <__memmove+0x108>
    80005860:	00758713          	addi	a4,a1,7
    80005864:	00a5e7b3          	or	a5,a1,a0
    80005868:	40a70733          	sub	a4,a4,a0
    8000586c:	0077f793          	andi	a5,a5,7
    80005870:	00f73713          	sltiu	a4,a4,15
    80005874:	00174713          	xori	a4,a4,1
    80005878:	0017b793          	seqz	a5,a5
    8000587c:	00e7f7b3          	and	a5,a5,a4
    80005880:	10078863          	beqz	a5,80005990 <__memmove+0x14c>
    80005884:	00900793          	li	a5,9
    80005888:	1107f463          	bgeu	a5,a6,80005990 <__memmove+0x14c>
    8000588c:	0036581b          	srliw	a6,a2,0x3
    80005890:	fff8081b          	addiw	a6,a6,-1
    80005894:	02081813          	slli	a6,a6,0x20
    80005898:	01d85893          	srli	a7,a6,0x1d
    8000589c:	00858813          	addi	a6,a1,8
    800058a0:	00058793          	mv	a5,a1
    800058a4:	00050713          	mv	a4,a0
    800058a8:	01088833          	add	a6,a7,a6
    800058ac:	0007b883          	ld	a7,0(a5)
    800058b0:	00878793          	addi	a5,a5,8
    800058b4:	00870713          	addi	a4,a4,8
    800058b8:	ff173c23          	sd	a7,-8(a4)
    800058bc:	ff0798e3          	bne	a5,a6,800058ac <__memmove+0x68>
    800058c0:	ff867713          	andi	a4,a2,-8
    800058c4:	02071793          	slli	a5,a4,0x20
    800058c8:	0207d793          	srli	a5,a5,0x20
    800058cc:	00f585b3          	add	a1,a1,a5
    800058d0:	40e686bb          	subw	a3,a3,a4
    800058d4:	00f507b3          	add	a5,a0,a5
    800058d8:	06e60463          	beq	a2,a4,80005940 <__memmove+0xfc>
    800058dc:	0005c703          	lbu	a4,0(a1)
    800058e0:	00e78023          	sb	a4,0(a5)
    800058e4:	04068e63          	beqz	a3,80005940 <__memmove+0xfc>
    800058e8:	0015c603          	lbu	a2,1(a1)
    800058ec:	00100713          	li	a4,1
    800058f0:	00c780a3          	sb	a2,1(a5)
    800058f4:	04e68663          	beq	a3,a4,80005940 <__memmove+0xfc>
    800058f8:	0025c603          	lbu	a2,2(a1)
    800058fc:	00200713          	li	a4,2
    80005900:	00c78123          	sb	a2,2(a5)
    80005904:	02e68e63          	beq	a3,a4,80005940 <__memmove+0xfc>
    80005908:	0035c603          	lbu	a2,3(a1)
    8000590c:	00300713          	li	a4,3
    80005910:	00c781a3          	sb	a2,3(a5)
    80005914:	02e68663          	beq	a3,a4,80005940 <__memmove+0xfc>
    80005918:	0045c603          	lbu	a2,4(a1)
    8000591c:	00400713          	li	a4,4
    80005920:	00c78223          	sb	a2,4(a5)
    80005924:	00e68e63          	beq	a3,a4,80005940 <__memmove+0xfc>
    80005928:	0055c603          	lbu	a2,5(a1)
    8000592c:	00500713          	li	a4,5
    80005930:	00c782a3          	sb	a2,5(a5)
    80005934:	00e68663          	beq	a3,a4,80005940 <__memmove+0xfc>
    80005938:	0065c703          	lbu	a4,6(a1)
    8000593c:	00e78323          	sb	a4,6(a5)
    80005940:	00813403          	ld	s0,8(sp)
    80005944:	01010113          	addi	sp,sp,16
    80005948:	00008067          	ret
    8000594c:	02061713          	slli	a4,a2,0x20
    80005950:	02075713          	srli	a4,a4,0x20
    80005954:	00e587b3          	add	a5,a1,a4
    80005958:	f0f574e3          	bgeu	a0,a5,80005860 <__memmove+0x1c>
    8000595c:	02069613          	slli	a2,a3,0x20
    80005960:	02065613          	srli	a2,a2,0x20
    80005964:	fff64613          	not	a2,a2
    80005968:	00e50733          	add	a4,a0,a4
    8000596c:	00c78633          	add	a2,a5,a2
    80005970:	fff7c683          	lbu	a3,-1(a5)
    80005974:	fff78793          	addi	a5,a5,-1
    80005978:	fff70713          	addi	a4,a4,-1
    8000597c:	00d70023          	sb	a3,0(a4)
    80005980:	fec798e3          	bne	a5,a2,80005970 <__memmove+0x12c>
    80005984:	00813403          	ld	s0,8(sp)
    80005988:	01010113          	addi	sp,sp,16
    8000598c:	00008067          	ret
    80005990:	02069713          	slli	a4,a3,0x20
    80005994:	02075713          	srli	a4,a4,0x20
    80005998:	00170713          	addi	a4,a4,1
    8000599c:	00e50733          	add	a4,a0,a4
    800059a0:	00050793          	mv	a5,a0
    800059a4:	0005c683          	lbu	a3,0(a1)
    800059a8:	00178793          	addi	a5,a5,1
    800059ac:	00158593          	addi	a1,a1,1
    800059b0:	fed78fa3          	sb	a3,-1(a5)
    800059b4:	fee798e3          	bne	a5,a4,800059a4 <__memmove+0x160>
    800059b8:	f89ff06f          	j	80005940 <__memmove+0xfc>

00000000800059bc <__putc>:
    800059bc:	fe010113          	addi	sp,sp,-32
    800059c0:	00813823          	sd	s0,16(sp)
    800059c4:	00113c23          	sd	ra,24(sp)
    800059c8:	02010413          	addi	s0,sp,32
    800059cc:	00050793          	mv	a5,a0
    800059d0:	fef40593          	addi	a1,s0,-17
    800059d4:	00100613          	li	a2,1
    800059d8:	00000513          	li	a0,0
    800059dc:	fef407a3          	sb	a5,-17(s0)
    800059e0:	fffff097          	auipc	ra,0xfffff
    800059e4:	b3c080e7          	jalr	-1220(ra) # 8000451c <console_write>
    800059e8:	01813083          	ld	ra,24(sp)
    800059ec:	01013403          	ld	s0,16(sp)
    800059f0:	02010113          	addi	sp,sp,32
    800059f4:	00008067          	ret

00000000800059f8 <__getc>:
    800059f8:	fe010113          	addi	sp,sp,-32
    800059fc:	00813823          	sd	s0,16(sp)
    80005a00:	00113c23          	sd	ra,24(sp)
    80005a04:	02010413          	addi	s0,sp,32
    80005a08:	fe840593          	addi	a1,s0,-24
    80005a0c:	00100613          	li	a2,1
    80005a10:	00000513          	li	a0,0
    80005a14:	fffff097          	auipc	ra,0xfffff
    80005a18:	ae8080e7          	jalr	-1304(ra) # 800044fc <console_read>
    80005a1c:	fe844503          	lbu	a0,-24(s0)
    80005a20:	01813083          	ld	ra,24(sp)
    80005a24:	01013403          	ld	s0,16(sp)
    80005a28:	02010113          	addi	sp,sp,32
    80005a2c:	00008067          	ret

0000000080005a30 <console_handler>:
    80005a30:	fe010113          	addi	sp,sp,-32
    80005a34:	00813823          	sd	s0,16(sp)
    80005a38:	00113c23          	sd	ra,24(sp)
    80005a3c:	00913423          	sd	s1,8(sp)
    80005a40:	02010413          	addi	s0,sp,32
    80005a44:	14202773          	csrr	a4,scause
    80005a48:	100027f3          	csrr	a5,sstatus
    80005a4c:	0027f793          	andi	a5,a5,2
    80005a50:	06079e63          	bnez	a5,80005acc <console_handler+0x9c>
    80005a54:	00074c63          	bltz	a4,80005a6c <console_handler+0x3c>
    80005a58:	01813083          	ld	ra,24(sp)
    80005a5c:	01013403          	ld	s0,16(sp)
    80005a60:	00813483          	ld	s1,8(sp)
    80005a64:	02010113          	addi	sp,sp,32
    80005a68:	00008067          	ret
    80005a6c:	0ff77713          	andi	a4,a4,255
    80005a70:	00900793          	li	a5,9
    80005a74:	fef712e3          	bne	a4,a5,80005a58 <console_handler+0x28>
    80005a78:	ffffe097          	auipc	ra,0xffffe
    80005a7c:	6dc080e7          	jalr	1756(ra) # 80004154 <plic_claim>
    80005a80:	00a00793          	li	a5,10
    80005a84:	00050493          	mv	s1,a0
    80005a88:	02f50c63          	beq	a0,a5,80005ac0 <console_handler+0x90>
    80005a8c:	fc0506e3          	beqz	a0,80005a58 <console_handler+0x28>
    80005a90:	00050593          	mv	a1,a0
    80005a94:	00001517          	auipc	a0,0x1
    80005a98:	81450513          	addi	a0,a0,-2028 # 800062a8 <CONSOLE_STATUS+0x298>
    80005a9c:	fffff097          	auipc	ra,0xfffff
    80005aa0:	afc080e7          	jalr	-1284(ra) # 80004598 <__printf>
    80005aa4:	01013403          	ld	s0,16(sp)
    80005aa8:	01813083          	ld	ra,24(sp)
    80005aac:	00048513          	mv	a0,s1
    80005ab0:	00813483          	ld	s1,8(sp)
    80005ab4:	02010113          	addi	sp,sp,32
    80005ab8:	ffffe317          	auipc	t1,0xffffe
    80005abc:	6d430067          	jr	1748(t1) # 8000418c <plic_complete>
    80005ac0:	fffff097          	auipc	ra,0xfffff
    80005ac4:	3e0080e7          	jalr	992(ra) # 80004ea0 <uartintr>
    80005ac8:	fddff06f          	j	80005aa4 <console_handler+0x74>
    80005acc:	00001517          	auipc	a0,0x1
    80005ad0:	8dc50513          	addi	a0,a0,-1828 # 800063a8 <digits+0x78>
    80005ad4:	fffff097          	auipc	ra,0xfffff
    80005ad8:	a68080e7          	jalr	-1432(ra) # 8000453c <panic>
	...

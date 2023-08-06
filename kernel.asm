
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00007117          	auipc	sp,0x7
    80000004:	33013103          	ld	sp,816(sp) # 80007330 <_GLOBAL_OFFSET_TABLE_+0x28>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	7d8030ef          	jal	ra,800037f4 <start>

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
    800010a8:	219000ef          	jal	ra,80001ac0 <_ZN5Riscv11trapHandlerEv>

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
    __asm__ volatile ("ld %0, 10*8(fp)" : "=r"(a0));
    80001290:	05043783          	ld	a5,80(s0)
    80001294:	fef43023          	sd	a5,-32(s0)
    return a0;
    80001298:	fe043783          	ld	a5,-32(s0)

    volatile long a0;
    a0 = Riscv::r_a0();
    8000129c:	fef43423          	sd	a5,-24(s0)
    return (void *) a0;
    800012a0:	fe843503          	ld	a0,-24(s0)
}
    800012a4:	01813403          	ld	s0,24(sp)
    800012a8:	02010113          	addi	sp,sp,32
    800012ac:	00008067          	ret

00000000800012b0 <_Z8mem_freePv>:

int mem_free(void *ptr) {
    800012b0:	fe010113          	addi	sp,sp,-32
    800012b4:	00813c23          	sd	s0,24(sp)
    800012b8:	02010413          	addi	s0,sp,32
    __asm__ volatile ("mv a0, %0" : : "r"(a0));
    800012bc:	00200793          	li	a5,2
    800012c0:	00078513          	mv	a0,a5
    __asm__ volatile ("mv a1, %0" : : "r"(a1));
    800012c4:	00050593          	mv	a1,a0
    Riscv::w_a0(0x02);
    Riscv::w_a1((uint64) ptr);

    __asm__ volatile ("ecall");
    800012c8:	00000073          	ecall
    __asm__ volatile ("ld %0, 10*8(fp)" : "=r"(a0));
    800012cc:	05043783          	ld	a5,80(s0)
    800012d0:	fef43023          	sd	a5,-32(s0)
    return a0;
    800012d4:	fe043783          	ld	a5,-32(s0)

    volatile long a0;
    a0 = Riscv::r_a0();
    800012d8:	fef43423          	sd	a5,-24(s0)
    return a0;
    800012dc:	fe843503          	ld	a0,-24(s0)
}
    800012e0:	0005051b          	sext.w	a0,a0
    800012e4:	01813403          	ld	s0,24(sp)
    800012e8:	02010113          	addi	sp,sp,32
    800012ec:	00008067          	ret

00000000800012f0 <_Z13thread_createPP7_threadPFvPvES2_>:

int thread_create(thread_t *handle, void(*start_routine)(void *), void *arg) {
    if(!handle)return -1;
    800012f0:	04050263          	beqz	a0,80001334 <_Z13thread_createPP7_threadPFvPvES2_+0x44>
int thread_create(thread_t *handle, void(*start_routine)(void *), void *arg) {
    800012f4:	fe010113          	addi	sp,sp,-32
    800012f8:	00813c23          	sd	s0,24(sp)
    800012fc:	02010413          	addi	s0,sp,32
    __asm__ volatile ("mv a0, %0" : : "r"(a0));
    80001300:	01100793          	li	a5,17
    80001304:	00078513          	mv	a0,a5
    __asm__ volatile ("mv a1, %0" : : "r"(a1));
    80001308:	00058593          	mv	a1,a1
    __asm__ volatile ("ld %0, 12*8(fp)" : "=r"(a2));
    return a2;
}

inline void Riscv::w_a2(uint64 a2) {
    __asm__ volatile ("mv a2, %0" : : "r"(a2));
    8000130c:	00060613          	mv	a2,a2

    Riscv::w_a0(0x11);
    Riscv::w_a1((uint64) start_routine);
    Riscv::w_a2((uint64) arg);

    __asm__ volatile ("ecall");
    80001310:	00000073          	ecall
    __asm__ volatile ("ld %0, 10*8(fp)" : "=r"(a0));
    80001314:	05043783          	ld	a5,80(s0)
    80001318:	fef43423          	sd	a5,-24(s0)
    return a0;
    8000131c:	fe843783          	ld	a5,-24(s0)

    *handle = (thread_t) Riscv::r_a0();
    80001320:	00f53023          	sd	a5,0(a0)

    return 0;
    80001324:	00000513          	li	a0,0

}
    80001328:	01813403          	ld	s0,24(sp)
    8000132c:	02010113          	addi	sp,sp,32
    80001330:	00008067          	ret
    if(!handle)return -1;
    80001334:	fff00513          	li	a0,-1
}
    80001338:	00008067          	ret

000000008000133c <_Z11thread_exitv>:

int thread_exit(){
    8000133c:	fe010113          	addi	sp,sp,-32
    80001340:	00813c23          	sd	s0,24(sp)
    80001344:	02010413          	addi	s0,sp,32
    __asm__ volatile ("mv a0, %0" : : "r"(a0));
    80001348:	01200793          	li	a5,18
    8000134c:	00078513          	mv	a0,a5
    Riscv::w_a0(0x12);
    __asm__ volatile ("ecall");
    80001350:	00000073          	ecall
    __asm__ volatile ("ld %0, 10*8(fp)" : "=r"(a0));
    80001354:	05043783          	ld	a5,80(s0)
    80001358:	fef43023          	sd	a5,-32(s0)
    return a0;
    8000135c:	fe043783          	ld	a5,-32(s0)
    volatile uint64 a0 = Riscv::r_a0();
    80001360:	fef43423          	sd	a5,-24(s0)
    return a0;
    80001364:	fe843503          	ld	a0,-24(s0)
}
    80001368:	0005051b          	sext.w	a0,a0
    8000136c:	01813403          	ld	s0,24(sp)
    80001370:	02010113          	addi	sp,sp,32
    80001374:	00008067          	ret

0000000080001378 <_Z15thread_dispatchv>:

void thread_dispatch(){
    80001378:	ff010113          	addi	sp,sp,-16
    8000137c:	00813423          	sd	s0,8(sp)
    80001380:	01010413          	addi	s0,sp,16
    __asm__ volatile ("mv a0, %0" : : "r"(a0));
    80001384:	01300793          	li	a5,19
    80001388:	00078513          	mv	a0,a5
    Riscv::w_a0(0x13);
    __asm__ volatile ("ecall");
    8000138c:	00000073          	ecall
}
    80001390:	00813403          	ld	s0,8(sp)
    80001394:	01010113          	addi	sp,sp,16
    80001398:	00008067          	ret

000000008000139c <_Z11thread_joinP7_thread>:

void thread_join(thread_t handle){
    8000139c:	ff010113          	addi	sp,sp,-16
    800013a0:	00813423          	sd	s0,8(sp)
    800013a4:	01010413          	addi	s0,sp,16
    800013a8:	01400793          	li	a5,20
    800013ac:	00078513          	mv	a0,a5
    Riscv::w_a0(0x14);

    800013b0:	00813403          	ld	s0,8(sp)
    800013b4:	01010113          	addi	sp,sp,16
    800013b8:	00008067          	ret

00000000800013bc <_ZN3PCB7wrapperEv>:
        return 0;
    }
    return -1;
}

void PCB::wrapper() {
    800013bc:	ff010113          	addi	sp,sp,-16
    800013c0:	00113423          	sd	ra,8(sp)
    800013c4:	00813023          	sd	s0,0(sp)
    800013c8:	01010413          	addi	s0,sp,16
    Riscv::popSppSpie();
    800013cc:	00000097          	auipc	ra,0x0
    800013d0:	6d4080e7          	jalr	1748(ra) # 80001aa0 <_ZN5Riscv10popSppSpieEv>
    running->body(running->args);
    800013d4:	00006797          	auipc	a5,0x6
    800013d8:	fcc7b783          	ld	a5,-52(a5) # 800073a0 <_ZN3PCB7runningE>
    800013dc:	0007b703          	ld	a4,0(a5)
    800013e0:	0107b503          	ld	a0,16(a5)
    800013e4:	000700e7          	jalr	a4
    thread_exit();
    800013e8:	00000097          	auipc	ra,0x0
    800013ec:	f54080e7          	jalr	-172(ra) # 8000133c <_Z11thread_exitv>
    800013f0:	00813083          	ld	ra,8(sp)
    800013f4:	00013403          	ld	s0,0(sp)
    800013f8:	01010113          	addi	sp,sp,16
    800013fc:	00008067          	ret

0000000080001400 <_ZN3PCB12createThreadEPFvPvES0_>:
PCB *PCB::createThread(PCB::Body body, void *args) {
    80001400:	fd010113          	addi	sp,sp,-48
    80001404:	02113423          	sd	ra,40(sp)
    80001408:	02813023          	sd	s0,32(sp)
    8000140c:	00913c23          	sd	s1,24(sp)
    80001410:	01213823          	sd	s2,16(sp)
    80001414:	01313423          	sd	s3,8(sp)
    80001418:	03010413          	addi	s0,sp,48
    8000141c:	00050913          	mv	s2,a0
    80001420:	00058993          	mv	s3,a1
    return new PCB(body, args);
    80001424:	03000513          	li	a0,48
    80001428:	00000097          	auipc	ra,0x0
    8000142c:	3f0080e7          	jalr	1008(ra) # 80001818 <_Znwm>
    80001430:	00050493          	mv	s1,a0
            body(body),
            stack(body != nullptr ? new uint64[DEFAULT_STACK_SIZE] : nullptr),
            context({   (uint64)&wrapper,
                        stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
                    }),
            state(READY)
    80001434:	01253023          	sd	s2,0(a0)
            stack(body != nullptr ? new uint64[DEFAULT_STACK_SIZE] : nullptr),
    80001438:	00090a63          	beqz	s2,8000144c <_ZN3PCB12createThreadEPFvPvES0_+0x4c>
    8000143c:	00008537          	lui	a0,0x8
    80001440:	00000097          	auipc	ra,0x0
    80001444:	400080e7          	jalr	1024(ra) # 80001840 <_Znam>
    80001448:	0080006f          	j	80001450 <_ZN3PCB12createThreadEPFvPvES0_+0x50>
    8000144c:	00000513          	li	a0,0
            state(READY)
    80001450:	00a4b423          	sd	a0,8(s1)
    80001454:	00000797          	auipc	a5,0x0
    80001458:	f6878793          	addi	a5,a5,-152 # 800013bc <_ZN3PCB7wrapperEv>
    8000145c:	00f4bc23          	sd	a5,24(s1)
                        stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
    80001460:	02050c63          	beqz	a0,80001498 <_ZN3PCB12createThreadEPFvPvES0_+0x98>
    80001464:	000087b7          	lui	a5,0x8
    80001468:	00f50533          	add	a0,a0,a5
            state(READY)
    8000146c:	02a4b023          	sd	a0,32(s1)
    80001470:	0204a423          	sw	zero,40(s1)
    {
        this->args=args;
    80001474:	0134b823          	sd	s3,16(s1)
}
    80001478:	00048513          	mv	a0,s1
    8000147c:	02813083          	ld	ra,40(sp)
    80001480:	02013403          	ld	s0,32(sp)
    80001484:	01813483          	ld	s1,24(sp)
    80001488:	01013903          	ld	s2,16(sp)
    8000148c:	00813983          	ld	s3,8(sp)
    80001490:	03010113          	addi	sp,sp,48
    80001494:	00008067          	ret
                        stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
    80001498:	00000513          	li	a0,0
    8000149c:	fd1ff06f          	j	8000146c <_ZN3PCB12createThreadEPFvPvES0_+0x6c>
    800014a0:	00050913          	mv	s2,a0
    return new PCB(body, args);
    800014a4:	00048513          	mv	a0,s1
    800014a8:	00000097          	auipc	ra,0x0
    800014ac:	3c0080e7          	jalr	960(ra) # 80001868 <_ZdlPv>
    800014b0:	00090513          	mv	a0,s2
    800014b4:	00007097          	auipc	ra,0x7
    800014b8:	004080e7          	jalr	4(ra) # 800084b8 <_Unwind_Resume>

00000000800014bc <_ZN3PCB8dispatchEv>:
void PCB::dispatch() {
    800014bc:	fe010113          	addi	sp,sp,-32
    800014c0:	00113c23          	sd	ra,24(sp)
    800014c4:	00813823          	sd	s0,16(sp)
    800014c8:	00913423          	sd	s1,8(sp)
    800014cc:	02010413          	addi	s0,sp,32
    Riscv::pushRegisters();
    800014d0:	00000097          	auipc	ra,0x0
    800014d4:	c70080e7          	jalr	-912(ra) # 80001140 <_ZN5Riscv13pushRegistersEv>
    PCB *old = running;
    800014d8:	00006497          	auipc	s1,0x6
    800014dc:	ec84b483          	ld	s1,-312(s1) # 800073a0 <_ZN3PCB7runningE>
    bool isFinished() const { return state==FINISHED; }
    800014e0:	0284a703          	lw	a4,40(s1)
    if (!old->isFinished()) {
    800014e4:	00300793          	li	a5,3
    800014e8:	04f71463          	bne	a4,a5,80001530 <_ZN3PCB8dispatchEv+0x74>
    running = Scheduler::get();
    800014ec:	00000097          	auipc	ra,0x0
    800014f0:	0e8080e7          	jalr	232(ra) # 800015d4 <_ZN9Scheduler3getEv>
    800014f4:	00006797          	auipc	a5,0x6
    800014f8:	eaa7b623          	sd	a0,-340(a5) # 800073a0 <_ZN3PCB7runningE>
    running->state=RUNNING;
    800014fc:	00100793          	li	a5,1
    80001500:	02f52423          	sw	a5,40(a0) # 8028 <_entry-0x7fff7fd8>
    PCB::contextSwitch(&old->context, &running->context);
    80001504:	01850593          	addi	a1,a0,24
    80001508:	01848513          	addi	a0,s1,24
    8000150c:	00000097          	auipc	ra,0x0
    80001510:	d2c080e7          	jalr	-724(ra) # 80001238 <_ZN3PCB13contextSwitchEPNS_7ContextES1_>
    Riscv::popRegisters();
    80001514:	00000097          	auipc	ra,0x0
    80001518:	ca8080e7          	jalr	-856(ra) # 800011bc <_ZN5Riscv12popRegistersEv>
}
    8000151c:	01813083          	ld	ra,24(sp)
    80001520:	01013403          	ld	s0,16(sp)
    80001524:	00813483          	ld	s1,8(sp)
    80001528:	02010113          	addi	sp,sp,32
    8000152c:	00008067          	ret
        old->state = READY;
    80001530:	0204a423          	sw	zero,40(s1)
        Scheduler::put(old);
    80001534:	00048513          	mv	a0,s1
    80001538:	00000097          	auipc	ra,0x0
    8000153c:	104080e7          	jalr	260(ra) # 8000163c <_ZN9Scheduler3putEP3PCB>
    80001540:	fadff06f          	j	800014ec <_ZN3PCB8dispatchEv+0x30>

0000000080001544 <_ZN3PCB4exitEv>:
    if(running->state==RUNNING){
    80001544:	00006797          	auipc	a5,0x6
    80001548:	e5c7b783          	ld	a5,-420(a5) # 800073a0 <_ZN3PCB7runningE>
    8000154c:	0287a683          	lw	a3,40(a5)
    80001550:	00100713          	li	a4,1
    80001554:	02e69c63          	bne	a3,a4,8000158c <_ZN3PCB4exitEv+0x48>
int PCB::exit() {
    80001558:	ff010113          	addi	sp,sp,-16
    8000155c:	00113423          	sd	ra,8(sp)
    80001560:	00813023          	sd	s0,0(sp)
    80001564:	01010413          	addi	s0,sp,16
        running->state=FINISHED;
    80001568:	00300713          	li	a4,3
    8000156c:	02e7a423          	sw	a4,40(a5)
        dispatch();
    80001570:	00000097          	auipc	ra,0x0
    80001574:	f4c080e7          	jalr	-180(ra) # 800014bc <_ZN3PCB8dispatchEv>
        return 0;
    80001578:	00000513          	li	a0,0
}
    8000157c:	00813083          	ld	ra,8(sp)
    80001580:	00013403          	ld	s0,0(sp)
    80001584:	01010113          	addi	sp,sp,16
    80001588:	00008067          	ret
    return -1;
    8000158c:	fff00513          	li	a0,-1
}
    80001590:	00008067          	ret

0000000080001594 <_Z41__static_initialization_and_destruction_0ii>:
    return Scheduler::readyQueue.removeFirst();
}

void Scheduler::put(PCB *handle) {
    Scheduler::readyQueue.addLast(handle);
    80001594:	ff010113          	addi	sp,sp,-16
    80001598:	00813423          	sd	s0,8(sp)
    8000159c:	01010413          	addi	s0,sp,16
    800015a0:	00100793          	li	a5,1
    800015a4:	00f50863          	beq	a0,a5,800015b4 <_Z41__static_initialization_and_destruction_0ii+0x20>
    800015a8:	00813403          	ld	s0,8(sp)
    800015ac:	01010113          	addi	sp,sp,16
    800015b0:	00008067          	ret
    800015b4:	000107b7          	lui	a5,0x10
    800015b8:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800015bc:	fef596e3          	bne	a1,a5,800015a8 <_Z41__static_initialization_and_destruction_0ii+0x14>
    };

    Elem *head, *tail;

public:
    List() : head(0), tail(0) {}
    800015c0:	00006797          	auipc	a5,0x6
    800015c4:	de878793          	addi	a5,a5,-536 # 800073a8 <_ZN9Scheduler10readyQueueE>
    800015c8:	0007b023          	sd	zero,0(a5)
    800015cc:	0007b423          	sd	zero,8(a5)
    800015d0:	fd9ff06f          	j	800015a8 <_Z41__static_initialization_and_destruction_0ii+0x14>

00000000800015d4 <_ZN9Scheduler3getEv>:
PCB *Scheduler::get() {
    800015d4:	fe010113          	addi	sp,sp,-32
    800015d8:	00113c23          	sd	ra,24(sp)
    800015dc:	00813823          	sd	s0,16(sp)
    800015e0:	00913423          	sd	s1,8(sp)
    800015e4:	02010413          	addi	s0,sp,32
        }
    }

    T *removeFirst()
    {
        if (!head) { return 0; }
    800015e8:	00006517          	auipc	a0,0x6
    800015ec:	dc053503          	ld	a0,-576(a0) # 800073a8 <_ZN9Scheduler10readyQueueE>
    800015f0:	04050263          	beqz	a0,80001634 <_ZN9Scheduler3getEv+0x60>

        Elem *elem = head;
        head = head->next;
    800015f4:	00853783          	ld	a5,8(a0)
    800015f8:	00006717          	auipc	a4,0x6
    800015fc:	daf73823          	sd	a5,-592(a4) # 800073a8 <_ZN9Scheduler10readyQueueE>
        if (!head) { tail = 0; }
    80001600:	02078463          	beqz	a5,80001628 <_ZN9Scheduler3getEv+0x54>

        T *ret = elem->data;
    80001604:	00053483          	ld	s1,0(a0)
        delete elem;
    80001608:	00000097          	auipc	ra,0x0
    8000160c:	260080e7          	jalr	608(ra) # 80001868 <_ZdlPv>
}
    80001610:	00048513          	mv	a0,s1
    80001614:	01813083          	ld	ra,24(sp)
    80001618:	01013403          	ld	s0,16(sp)
    8000161c:	00813483          	ld	s1,8(sp)
    80001620:	02010113          	addi	sp,sp,32
    80001624:	00008067          	ret
        if (!head) { tail = 0; }
    80001628:	00006797          	auipc	a5,0x6
    8000162c:	d807b423          	sd	zero,-632(a5) # 800073b0 <_ZN9Scheduler10readyQueueE+0x8>
    80001630:	fd5ff06f          	j	80001604 <_ZN9Scheduler3getEv+0x30>
        if (!head) { return 0; }
    80001634:	00050493          	mv	s1,a0
    return Scheduler::readyQueue.removeFirst();
    80001638:	fd9ff06f          	j	80001610 <_ZN9Scheduler3getEv+0x3c>

000000008000163c <_ZN9Scheduler3putEP3PCB>:
void Scheduler::put(PCB *handle) {
    8000163c:	fe010113          	addi	sp,sp,-32
    80001640:	00113c23          	sd	ra,24(sp)
    80001644:	00813823          	sd	s0,16(sp)
    80001648:	00913423          	sd	s1,8(sp)
    8000164c:	02010413          	addi	s0,sp,32
    80001650:	00050493          	mv	s1,a0
        Elem *elem = new Elem(data, 0);
    80001654:	01000513          	li	a0,16
    80001658:	00000097          	auipc	ra,0x0
    8000165c:	1c0080e7          	jalr	448(ra) # 80001818 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80001660:	00953023          	sd	s1,0(a0)
    80001664:	00053423          	sd	zero,8(a0)
        if (tail)
    80001668:	00006797          	auipc	a5,0x6
    8000166c:	d487b783          	ld	a5,-696(a5) # 800073b0 <_ZN9Scheduler10readyQueueE+0x8>
    80001670:	02078263          	beqz	a5,80001694 <_ZN9Scheduler3putEP3PCB+0x58>
            tail->next = elem;
    80001674:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80001678:	00006797          	auipc	a5,0x6
    8000167c:	d2a7bc23          	sd	a0,-712(a5) # 800073b0 <_ZN9Scheduler10readyQueueE+0x8>
    80001680:	01813083          	ld	ra,24(sp)
    80001684:	01013403          	ld	s0,16(sp)
    80001688:	00813483          	ld	s1,8(sp)
    8000168c:	02010113          	addi	sp,sp,32
    80001690:	00008067          	ret
            head = tail = elem;
    80001694:	00006797          	auipc	a5,0x6
    80001698:	d1478793          	addi	a5,a5,-748 # 800073a8 <_ZN9Scheduler10readyQueueE>
    8000169c:	00a7b423          	sd	a0,8(a5)
    800016a0:	00a7b023          	sd	a0,0(a5)
    800016a4:	fddff06f          	j	80001680 <_ZN9Scheduler3putEP3PCB+0x44>

00000000800016a8 <_GLOBAL__sub_I__ZN9Scheduler10readyQueueE>:
    800016a8:	ff010113          	addi	sp,sp,-16
    800016ac:	00113423          	sd	ra,8(sp)
    800016b0:	00813023          	sd	s0,0(sp)
    800016b4:	01010413          	addi	s0,sp,16
    800016b8:	000105b7          	lui	a1,0x10
    800016bc:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    800016c0:	00100513          	li	a0,1
    800016c4:	00000097          	auipc	ra,0x0
    800016c8:	ed0080e7          	jalr	-304(ra) # 80001594 <_Z41__static_initialization_and_destruction_0ii>
    800016cc:	00813083          	ld	ra,8(sp)
    800016d0:	00013403          	ld	s0,0(sp)
    800016d4:	01010113          	addi	sp,sp,16
    800016d8:	00008067          	ret

00000000800016dc <main>:
    char d[50];
};

extern void userMain();

int main() {
    800016dc:	fd010113          	addi	sp,sp,-48
    800016e0:	02113423          	sd	ra,40(sp)
    800016e4:	02813023          	sd	s0,32(sp)
    800016e8:	00913c23          	sd	s1,24(sp)
    800016ec:	03010413          	addi	s0,sp,48
public:


    // Get the singleton instance
    static MemoryAllocator &getInstance() {
        static MemoryAllocator instance;
    800016f0:	00006797          	auipc	a5,0x6
    800016f4:	cc87c783          	lbu	a5,-824(a5) # 800073b8 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    800016f8:	00079863          	bnez	a5,80001708 <main+0x2c>
    800016fc:	00100793          	li	a5,1
    80001700:	00006717          	auipc	a4,0x6
    80001704:	caf70c23          	sb	a5,-840(a4) # 800073b8 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
//        printString("\n");
//        uint64 end = (uint64)((Block *) HEAP_END_ADDR);
//        printInteger(end);
//        printString("\n");

        free_list = (Block *) HEAP_START_ADDR;
    80001708:	00006797          	auipc	a5,0x6
    8000170c:	c107b783          	ld	a5,-1008(a5) # 80007318 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001710:	0007b703          	ld	a4,0(a5)
    80001714:	00006697          	auipc	a3,0x6
    80001718:	c346b683          	ld	a3,-972(a3) # 80007348 <_GLOBAL_OFFSET_TABLE_+0x40>
    8000171c:	00e6b023          	sd	a4,0(a3)
        free_list->size = (uint64 *) HEAP_END_ADDR - (uint64 *) HEAP_START_ADDR;
    80001720:	00006797          	auipc	a5,0x6
    80001724:	c207b783          	ld	a5,-992(a5) # 80007340 <_GLOBAL_OFFSET_TABLE_+0x38>
    80001728:	0007b783          	ld	a5,0(a5)
    8000172c:	40e787b3          	sub	a5,a5,a4
    80001730:	4037d793          	srai	a5,a5,0x3
    80001734:	00f73023          	sd	a5,0(a4)
        free_list->next = nullptr;
    80001738:	0006b783          	ld	a5,0(a3)
    8000173c:	0007b423          	sd	zero,8(a5)
        allocated_list = nullptr;
    80001740:	00006797          	auipc	a5,0x6
    80001744:	be87b783          	ld	a5,-1048(a5) # 80007328 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001748:	0007b023          	sd	zero,0(a5)


    MemoryAllocator::getInstance().init();
    PCB::running = PCB::createThread(nullptr, nullptr);
    8000174c:	00000593          	li	a1,0
    80001750:	00000513          	li	a0,0
    80001754:	00000097          	auipc	ra,0x0
    80001758:	cac080e7          	jalr	-852(ra) # 80001400 <_ZN3PCB12createThreadEPFvPvES0_>
    8000175c:	00006797          	auipc	a5,0x6
    80001760:	bdc7b783          	ld	a5,-1060(a5) # 80007338 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001764:	00a7b023          	sd	a0,0(a5)
    Riscv::w_stvec((uint64) &Riscv::supervisorTrap+1);
    80001768:	00006797          	auipc	a5,0x6
    8000176c:	bb87b783          	ld	a5,-1096(a5) # 80007320 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001770:	00178793          	addi	a5,a5,1
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    80001774:	10579073          	csrw	stvec,a5
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001778:	00200793          	li	a5,2
    8000177c:	1007a073          	csrs	sstatus,a5
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);

    //printString("MAIN START\n");

    thread_t t;
    thread_create(&t, (void (*)(void *))(userMain), nullptr);
    80001780:	00000613          	li	a2,0
    80001784:	00006597          	auipc	a1,0x6
    80001788:	b8c5b583          	ld	a1,-1140(a1) # 80007310 <_GLOBAL_OFFSET_TABLE_+0x8>
    8000178c:	fd840513          	addi	a0,s0,-40
    80001790:	00000097          	auipc	ra,0x0
    80001794:	b60080e7          	jalr	-1184(ra) # 800012f0 <_Z13thread_createPP7_threadPFvPvES2_>

    while(!((PCB*)t)->isFinished()){
    80001798:	fd843483          	ld	s1,-40(s0)
    8000179c:	0284a703          	lw	a4,40(s1)
    800017a0:	00300793          	li	a5,3
    800017a4:	00f70863          	beq	a4,a5,800017b4 <main+0xd8>
        thread_dispatch();
    800017a8:	00000097          	auipc	ra,0x0
    800017ac:	bd0080e7          	jalr	-1072(ra) # 80001378 <_Z15thread_dispatchv>
    800017b0:	fe9ff06f          	j	80001798 <main+0xbc>
    }

    delete (PCB*)t;
    800017b4:	02048063          	beqz	s1,800017d4 <main+0xf8>
    ~PCB() { delete[] stack; }
    800017b8:	0084b503          	ld	a0,8(s1)
    800017bc:	00050663          	beqz	a0,800017c8 <main+0xec>
    800017c0:	00000097          	auipc	ra,0x0
    800017c4:	0d0080e7          	jalr	208(ra) # 80001890 <_ZdaPv>
    800017c8:	00048513          	mv	a0,s1
    800017cc:	00000097          	auipc	ra,0x0
    800017d0:	09c080e7          	jalr	156(ra) # 80001868 <_ZdlPv>

    delete PCB::running;
    800017d4:	00006797          	auipc	a5,0x6
    800017d8:	b647b783          	ld	a5,-1180(a5) # 80007338 <_GLOBAL_OFFSET_TABLE_+0x30>
    800017dc:	0007b483          	ld	s1,0(a5)
    800017e0:	02048063          	beqz	s1,80001800 <main+0x124>
    800017e4:	0084b503          	ld	a0,8(s1)
    800017e8:	00050663          	beqz	a0,800017f4 <main+0x118>
    800017ec:	00000097          	auipc	ra,0x0
    800017f0:	0a4080e7          	jalr	164(ra) # 80001890 <_ZdaPv>
    800017f4:	00048513          	mv	a0,s1
    800017f8:	00000097          	auipc	ra,0x0
    800017fc:	070080e7          	jalr	112(ra) # 80001868 <_ZdlPv>


    //printString("Finished\n");

    return 0;
}
    80001800:	00000513          	li	a0,0
    80001804:	02813083          	ld	ra,40(sp)
    80001808:	02013403          	ld	s0,32(sp)
    8000180c:	01813483          	ld	s1,24(sp)
    80001810:	03010113          	addi	sp,sp,48
    80001814:	00008067          	ret

0000000080001818 <_Znwm>:
// Created by os on 2/2/23.
//

#include "../h/syscall_cpp.hpp"

void* operator new(size_t size) {
    80001818:	ff010113          	addi	sp,sp,-16
    8000181c:	00113423          	sd	ra,8(sp)
    80001820:	00813023          	sd	s0,0(sp)
    80001824:	01010413          	addi	s0,sp,16
    return (void*)mem_alloc(size);
    80001828:	00000097          	auipc	ra,0x0
    8000182c:	a44080e7          	jalr	-1468(ra) # 8000126c <_Z9mem_allocm>
}
    80001830:	00813083          	ld	ra,8(sp)
    80001834:	00013403          	ld	s0,0(sp)
    80001838:	01010113          	addi	sp,sp,16
    8000183c:	00008067          	ret

0000000080001840 <_Znam>:

void* operator new[](size_t size) {
    80001840:	ff010113          	addi	sp,sp,-16
    80001844:	00113423          	sd	ra,8(sp)
    80001848:	00813023          	sd	s0,0(sp)
    8000184c:	01010413          	addi	s0,sp,16
    return (void*)mem_alloc(size);
    80001850:	00000097          	auipc	ra,0x0
    80001854:	a1c080e7          	jalr	-1508(ra) # 8000126c <_Z9mem_allocm>
}
    80001858:	00813083          	ld	ra,8(sp)
    8000185c:	00013403          	ld	s0,0(sp)
    80001860:	01010113          	addi	sp,sp,16
    80001864:	00008067          	ret

0000000080001868 <_ZdlPv>:

void operator delete(void *ptr) { mem_free(ptr); }
    80001868:	ff010113          	addi	sp,sp,-16
    8000186c:	00113423          	sd	ra,8(sp)
    80001870:	00813023          	sd	s0,0(sp)
    80001874:	01010413          	addi	s0,sp,16
    80001878:	00000097          	auipc	ra,0x0
    8000187c:	a38080e7          	jalr	-1480(ra) # 800012b0 <_Z8mem_freePv>
    80001880:	00813083          	ld	ra,8(sp)
    80001884:	00013403          	ld	s0,0(sp)
    80001888:	01010113          	addi	sp,sp,16
    8000188c:	00008067          	ret

0000000080001890 <_ZdaPv>:

void operator delete[](void *ptr) { mem_free(ptr); }
    80001890:	ff010113          	addi	sp,sp,-16
    80001894:	00113423          	sd	ra,8(sp)
    80001898:	00813023          	sd	s0,0(sp)
    8000189c:	01010413          	addi	s0,sp,16
    800018a0:	00000097          	auipc	ra,0x0
    800018a4:	a10080e7          	jalr	-1520(ra) # 800012b0 <_Z8mem_freePv>
    800018a8:	00813083          	ld	ra,8(sp)
    800018ac:	00013403          	ld	s0,0(sp)
    800018b0:	01010113          	addi	sp,sp,16
    800018b4:	00008067          	ret

00000000800018b8 <_ZN6ThreadD1Ev>:

void Thread::dispatch() {
    thread_dispatch();
}

Thread::~Thread() {
    800018b8:	fe010113          	addi	sp,sp,-32
    800018bc:	00113c23          	sd	ra,24(sp)
    800018c0:	00813823          	sd	s0,16(sp)
    800018c4:	00913423          	sd	s1,8(sp)
    800018c8:	02010413          	addi	s0,sp,32
    800018cc:	00006797          	auipc	a5,0x6
    800018d0:	96c78793          	addi	a5,a5,-1684 # 80007238 <_ZTV6Thread+0x10>
    800018d4:	00f53023          	sd	a5,0(a0)
    delete (PCB*)myHandle;
    800018d8:	00853483          	ld	s1,8(a0)
    800018dc:	02048063          	beqz	s1,800018fc <_ZN6ThreadD1Ev+0x44>
    800018e0:	0084b503          	ld	a0,8(s1)
    800018e4:	00050663          	beqz	a0,800018f0 <_ZN6ThreadD1Ev+0x38>
    800018e8:	00000097          	auipc	ra,0x0
    800018ec:	fa8080e7          	jalr	-88(ra) # 80001890 <_ZdaPv>
    800018f0:	00048513          	mv	a0,s1
    800018f4:	00000097          	auipc	ra,0x0
    800018f8:	f74080e7          	jalr	-140(ra) # 80001868 <_ZdlPv>
}
    800018fc:	01813083          	ld	ra,24(sp)
    80001900:	01013403          	ld	s0,16(sp)
    80001904:	00813483          	ld	s1,8(sp)
    80001908:	02010113          	addi	sp,sp,32
    8000190c:	00008067          	ret

0000000080001910 <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    80001910:	fe010113          	addi	sp,sp,-32
    80001914:	00113c23          	sd	ra,24(sp)
    80001918:	00813823          	sd	s0,16(sp)
    8000191c:	00913423          	sd	s1,8(sp)
    80001920:	02010413          	addi	s0,sp,32
    80001924:	00050493          	mv	s1,a0
}
    80001928:	00000097          	auipc	ra,0x0
    8000192c:	f90080e7          	jalr	-112(ra) # 800018b8 <_ZN6ThreadD1Ev>
    80001930:	00048513          	mv	a0,s1
    80001934:	00000097          	auipc	ra,0x0
    80001938:	f34080e7          	jalr	-204(ra) # 80001868 <_ZdlPv>
    8000193c:	01813083          	ld	ra,24(sp)
    80001940:	01013403          	ld	s0,16(sp)
    80001944:	00813483          	ld	s1,8(sp)
    80001948:	02010113          	addi	sp,sp,32
    8000194c:	00008067          	ret

0000000080001950 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void*), void* arg) {
    80001950:	ff010113          	addi	sp,sp,-16
    80001954:	00113423          	sd	ra,8(sp)
    80001958:	00813023          	sd	s0,0(sp)
    8000195c:	01010413          	addi	s0,sp,16
    80001960:	00006797          	auipc	a5,0x6
    80001964:	8d878793          	addi	a5,a5,-1832 # 80007238 <_ZTV6Thread+0x10>
    80001968:	00f53023          	sd	a5,0(a0)
    thread_create(&myHandle, body, arg);
    8000196c:	00850513          	addi	a0,a0,8
    80001970:	00000097          	auipc	ra,0x0
    80001974:	980080e7          	jalr	-1664(ra) # 800012f0 <_Z13thread_createPP7_threadPFvPvES2_>
}
    80001978:	00813083          	ld	ra,8(sp)
    8000197c:	00013403          	ld	s0,0(sp)
    80001980:	01010113          	addi	sp,sp,16
    80001984:	00008067          	ret

0000000080001988 <_ZN6ThreadC1Ev>:
Thread::Thread() {
    80001988:	fe010113          	addi	sp,sp,-32
    8000198c:	00113c23          	sd	ra,24(sp)
    80001990:	00813823          	sd	s0,16(sp)
    80001994:	00913423          	sd	s1,8(sp)
    80001998:	01213023          	sd	s2,0(sp)
    8000199c:	02010413          	addi	s0,sp,32
    800019a0:	00006797          	auipc	a5,0x6
    800019a4:	89878793          	addi	a5,a5,-1896 # 80007238 <_ZTV6Thread+0x10>
    800019a8:	00f53023          	sd	a5,0(a0)
    new Thread(nullptr, nullptr);
    800019ac:	02000513          	li	a0,32
    800019b0:	00000097          	auipc	ra,0x0
    800019b4:	e68080e7          	jalr	-408(ra) # 80001818 <_Znwm>
    800019b8:	00050493          	mv	s1,a0
    800019bc:	00000613          	li	a2,0
    800019c0:	00000593          	li	a1,0
    800019c4:	00000097          	auipc	ra,0x0
    800019c8:	f8c080e7          	jalr	-116(ra) # 80001950 <_ZN6ThreadC1EPFvPvES0_>
    800019cc:	0200006f          	j	800019ec <_ZN6ThreadC1Ev+0x64>
    800019d0:	00050913          	mv	s2,a0
    800019d4:	00048513          	mv	a0,s1
    800019d8:	00000097          	auipc	ra,0x0
    800019dc:	e90080e7          	jalr	-368(ra) # 80001868 <_ZdlPv>
    800019e0:	00090513          	mv	a0,s2
    800019e4:	00007097          	auipc	ra,0x7
    800019e8:	ad4080e7          	jalr	-1324(ra) # 800084b8 <_Unwind_Resume>
}
    800019ec:	01813083          	ld	ra,24(sp)
    800019f0:	01013403          	ld	s0,16(sp)
    800019f4:	00813483          	ld	s1,8(sp)
    800019f8:	00013903          	ld	s2,0(sp)
    800019fc:	02010113          	addi	sp,sp,32
    80001a00:	00008067          	ret

0000000080001a04 <_ZN6Thread5startEv>:
int Thread::start() {
    80001a04:	ff010113          	addi	sp,sp,-16
    80001a08:	00113423          	sd	ra,8(sp)
    80001a0c:	00813023          	sd	s0,0(sp)
    80001a10:	01010413          	addi	s0,sp,16
    Scheduler::put((PCB*)myHandle);
    80001a14:	00853503          	ld	a0,8(a0)
    80001a18:	00000097          	auipc	ra,0x0
    80001a1c:	c24080e7          	jalr	-988(ra) # 8000163c <_ZN9Scheduler3putEP3PCB>
}
    80001a20:	00000513          	li	a0,0
    80001a24:	00813083          	ld	ra,8(sp)
    80001a28:	00013403          	ld	s0,0(sp)
    80001a2c:	01010113          	addi	sp,sp,16
    80001a30:	00008067          	ret

0000000080001a34 <_ZN6Thread4joinEv>:
void Thread::join() {
    80001a34:	ff010113          	addi	sp,sp,-16
    80001a38:	00113423          	sd	ra,8(sp)
    80001a3c:	00813023          	sd	s0,0(sp)
    80001a40:	01010413          	addi	s0,sp,16
    thread_join(myHandle);
    80001a44:	00853503          	ld	a0,8(a0)
    80001a48:	00000097          	auipc	ra,0x0
    80001a4c:	954080e7          	jalr	-1708(ra) # 8000139c <_Z11thread_joinP7_thread>
}
    80001a50:	00813083          	ld	ra,8(sp)
    80001a54:	00013403          	ld	s0,0(sp)
    80001a58:	01010113          	addi	sp,sp,16
    80001a5c:	00008067          	ret

0000000080001a60 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80001a60:	ff010113          	addi	sp,sp,-16
    80001a64:	00113423          	sd	ra,8(sp)
    80001a68:	00813023          	sd	s0,0(sp)
    80001a6c:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80001a70:	00000097          	auipc	ra,0x0
    80001a74:	908080e7          	jalr	-1784(ra) # 80001378 <_Z15thread_dispatchv>
}
    80001a78:	00813083          	ld	ra,8(sp)
    80001a7c:	00013403          	ld	s0,0(sp)
    80001a80:	01010113          	addi	sp,sp,16
    80001a84:	00008067          	ret

0000000080001a88 <_ZN6Thread3runEv>:
    static void dispatch();

protected:
    Thread();

    virtual void run() {}
    80001a88:	ff010113          	addi	sp,sp,-16
    80001a8c:	00813423          	sd	s0,8(sp)
    80001a90:	01010413          	addi	s0,sp,16
    80001a94:	00813403          	ld	s0,8(sp)
    80001a98:	01010113          	addi	sp,sp,16
    80001a9c:	00008067          	ret

0000000080001aa0 <_ZN5Riscv10popSppSpieEv>:
#include "../h/riscv.hpp"



void Riscv::popSppSpie()
{
    80001aa0:	ff010113          	addi	sp,sp,-16
    80001aa4:	00813423          	sd	s0,8(sp)
    80001aa8:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    80001aac:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    80001ab0:	10200073          	sret
}
    80001ab4:	00813403          	ld	s0,8(sp)
    80001ab8:	01010113          	addi	sp,sp,16
    80001abc:	00008067          	ret

0000000080001ac0 <_ZN5Riscv11trapHandlerEv>:

void Riscv::trapHandler() {
    80001ac0:	fb010113          	addi	sp,sp,-80
    80001ac4:	04113423          	sd	ra,72(sp)
    80001ac8:	04813023          	sd	s0,64(sp)
    80001acc:	02913c23          	sd	s1,56(sp)
    80001ad0:	03213823          	sd	s2,48(sp)
    80001ad4:	05010413          	addi	s0,sp,80
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80001ad8:	142027f3          	csrr	a5,scause
    80001adc:	fcf43423          	sd	a5,-56(s0)
    return scause;
    80001ae0:	fc843783          	ld	a5,-56(s0)
    __asm__ volatile ("ld %0, 10*8(fp)" : "=r"(a0));
    80001ae4:	05043703          	ld	a4,80(s0)
    80001ae8:	fce43023          	sd	a4,-64(s0)
    return a0;
    80001aec:	fc043683          	ld	a3,-64(s0)
    __asm__ volatile ("ld %0, 11*8(fp)" : "=r"(a1));
    80001af0:	05843703          	ld	a4,88(s0)
    80001af4:	fae43c23          	sd	a4,-72(s0)
    return a1;
    80001af8:	fb843503          	ld	a0,-72(s0)
    __asm__ volatile ("ld %0, 12*8(fp)" : "=r"(a2));
    80001afc:	06043703          	ld	a4,96(s0)
    80001b00:	fae43823          	sd	a4,-80(s0)
    return a2;
    80001b04:	fb043583          	ld	a1,-80(s0)
    uint64 a1 = r_a1();
    uint64 a2 = r_a2();
    uint64 sepc;
    uint64 sstatus;

    switch (scause) {
    80001b08:	fff00713          	li	a4,-1
    80001b0c:	03f71713          	slli	a4,a4,0x3f
    80001b10:	00170713          	addi	a4,a4,1
    80001b14:	10e78a63          	beq	a5,a4,80001c28 <_ZN5Riscv11trapHandlerEv+0x168>
    80001b18:	fff00713          	li	a4,-1
    80001b1c:	03f71713          	slli	a4,a4,0x3f
    80001b20:	00170713          	addi	a4,a4,1
    80001b24:	04f76863          	bltu	a4,a5,80001b74 <_ZN5Riscv11trapHandlerEv+0xb4>
    80001b28:	ff878793          	addi	a5,a5,-8
    80001b2c:	00100713          	li	a4,1
    80001b30:	08f76663          	bltu	a4,a5,80001bbc <_ZN5Riscv11trapHandlerEv+0xfc>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001b34:	141027f3          	csrr	a5,sepc
    80001b38:	fcf43c23          	sd	a5,-40(s0)
    return sepc;
    80001b3c:	fd843483          	ld	s1,-40(s0)
        case 0x08:
        case 0x09:
            //ecall: software interrupt
            sepc = r_sepc() + 4;
    80001b40:	00448493          	addi	s1,s1,4
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001b44:	100027f3          	csrr	a5,sstatus
    80001b48:	fcf43823          	sd	a5,-48(s0)
    return sstatus;
    80001b4c:	fd043903          	ld	s2,-48(s0)
            sstatus = r_sstatus();
            void* mem;

            switch(a0){
    80001b50:	01300793          	li	a5,19
    80001b54:	06d7e063          	bltu	a5,a3,80001bb4 <_ZN5Riscv11trapHandlerEv+0xf4>
    80001b58:	00269693          	slli	a3,a3,0x2
    80001b5c:	00004717          	auipc	a4,0x4
    80001b60:	4c470713          	addi	a4,a4,1220 # 80006020 <CONSOLE_STATUS+0x10>
    80001b64:	00e686b3          	add	a3,a3,a4
    80001b68:	0006a783          	lw	a5,0(a3)
    80001b6c:	00e787b3          	add	a5,a5,a4
    80001b70:	00078067          	jr	a5
    switch (scause) {
    80001b74:	fff00713          	li	a4,-1
    80001b78:	03f71713          	slli	a4,a4,0x3f
    80001b7c:	00970713          	addi	a4,a4,9
    80001b80:	02e79e63          	bne	a5,a4,80001bbc <_ZN5Riscv11trapHandlerEv+0xfc>
            //timer interrupt
            mc_sip(SIP_SSIP);
            break;
        case 0x8000000000000009UL:
            //external hardware interrupt
            console_handler();
    80001b84:	00004097          	auipc	ra,0x4
    80001b88:	dac080e7          	jalr	-596(ra) # 80005930 <console_handler>
        default:
            break;
            //printString("ERROR: Unexpected interrupt!");
    }

    80001b8c:	0300006f          	j	80001bbc <_ZN5Riscv11trapHandlerEv+0xfc>
        static MemoryAllocator instance;
    80001b90:	00006797          	auipc	a5,0x6
    80001b94:	8287c783          	lbu	a5,-2008(a5) # 800073b8 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80001b98:	00079863          	bnez	a5,80001ba8 <_ZN5Riscv11trapHandlerEv+0xe8>
    80001b9c:	00100793          	li	a5,1
    80001ba0:	00006717          	auipc	a4,0x6
    80001ba4:	80f70c23          	sb	a5,-2024(a4) # 800073b8 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
                    mem = MemoryAllocator::getInstance().allocate((size_t) a1);
    80001ba8:	00000097          	auipc	ra,0x0
    80001bac:	08c080e7          	jalr	140(ra) # 80001c34 <_ZN15MemoryAllocator8allocateEm>
inline void Riscv::w_a3(uint64 a3) {
    __asm__ volatile ("mv a3, %0" : : "r"(a3));
}

inline void Riscv::push_a0(long a0) {
    __asm__ volatile ("sd %0, 10*8(fp)" : : "r"(a0));
    80001bb0:	04a43823          	sd	a0,80(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001bb4:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001bb8:	14149073          	csrw	sepc,s1
    80001bbc:	04813083          	ld	ra,72(sp)
    80001bc0:	04013403          	ld	s0,64(sp)
    80001bc4:	03813483          	ld	s1,56(sp)
    80001bc8:	03013903          	ld	s2,48(sp)
    80001bcc:	05010113          	addi	sp,sp,80
    80001bd0:	00008067          	ret
    80001bd4:	00005797          	auipc	a5,0x5
    80001bd8:	7e47c783          	lbu	a5,2020(a5) # 800073b8 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80001bdc:	00079863          	bnez	a5,80001bec <_ZN5Riscv11trapHandlerEv+0x12c>
    80001be0:	00100793          	li	a5,1
    80001be4:	00005717          	auipc	a4,0x5
    80001be8:	7cf70a23          	sb	a5,2004(a4) # 800073b8 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
                    push_a0(MemoryAllocator::getInstance().deallocate((void *)a1));
    80001bec:	00000097          	auipc	ra,0x0
    80001bf0:	130080e7          	jalr	304(ra) # 80001d1c <_ZN15MemoryAllocator10deallocateEPv>
    __asm__ volatile ("sd %0, 10*8(fp)" : : "r"(a0));
    80001bf4:	04a43823          	sd	a0,80(s0)
}
    80001bf8:	fbdff06f          	j	80001bb4 <_ZN5Riscv11trapHandlerEv+0xf4>
                    push_a0((uint64)PCB::createThread((PCB::Body)a1, (void*)a2));
    80001bfc:	00000097          	auipc	ra,0x0
    80001c00:	804080e7          	jalr	-2044(ra) # 80001400 <_ZN3PCB12createThreadEPFvPvES0_>
    __asm__ volatile ("sd %0, 10*8(fp)" : : "r"(a0));
    80001c04:	04a43823          	sd	a0,80(s0)
}
    80001c08:	fadff06f          	j	80001bb4 <_ZN5Riscv11trapHandlerEv+0xf4>
                    push_a0(PCB::exit());
    80001c0c:	00000097          	auipc	ra,0x0
    80001c10:	938080e7          	jalr	-1736(ra) # 80001544 <_ZN3PCB4exitEv>
    __asm__ volatile ("sd %0, 10*8(fp)" : : "r"(a0));
    80001c14:	04a43823          	sd	a0,80(s0)
}
    80001c18:	f9dff06f          	j	80001bb4 <_ZN5Riscv11trapHandlerEv+0xf4>
                    PCB::dispatch();
    80001c1c:	00000097          	auipc	ra,0x0
    80001c20:	8a0080e7          	jalr	-1888(ra) # 800014bc <_ZN3PCB8dispatchEv>
                    break;
    80001c24:	f91ff06f          	j	80001bb4 <_ZN5Riscv11trapHandlerEv+0xf4>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80001c28:	00200793          	li	a5,2
    80001c2c:	1447b073          	csrc	sip,a5
}
    80001c30:	f8dff06f          	j	80001bbc <_ZN5Riscv11trapHandlerEv+0xfc>

0000000080001c34 <_ZN15MemoryAllocator8allocateEm>:
Block *MemoryAllocator::free_list = nullptr;
Block *MemoryAllocator::allocated_list = nullptr;


// Allocate memory
void *MemoryAllocator::allocate(size_t size) {
    80001c34:	ff010113          	addi	sp,sp,-16
    80001c38:	00813423          	sd	s0,8(sp)
    80001c3c:	01010413          	addi	s0,sp,16
    80001c40:	00050613          	mv	a2,a0
    size_t sizeToAllocate = size * MEM_BLOCK_SIZE;
    80001c44:	00651713          	slli	a4,a0,0x6

    Block *prev = nullptr;
    Block *current = free_list;
    80001c48:	00005517          	auipc	a0,0x5
    80001c4c:	77853503          	ld	a0,1912(a0) # 800073c0 <_ZN15MemoryAllocator9free_listE>
    Block *prev = nullptr;
    80001c50:	00000693          	li	a3,0

    // Find a free block that is large enough
    while (current != nullptr) {
    80001c54:	06050e63          	beqz	a0,80001cd0 <_ZN15MemoryAllocator8allocateEm+0x9c>

        if (current->size >= sizeToAllocate) {
    80001c58:	00053783          	ld	a5,0(a0)
    80001c5c:	00e7f863          	bgeu	a5,a4,80001c6c <_ZN15MemoryAllocator8allocateEm+0x38>
            // Return the memory

            void *userPtr = (Block *) ((uint64 *) current + sizeof(Block));
            return userPtr;
        }
        prev = current;
    80001c60:	00050693          	mv	a3,a0
        current = current->next;
    80001c64:	00853503          	ld	a0,8(a0)
    while (current != nullptr) {
    80001c68:	fedff06f          	j	80001c54 <_ZN15MemoryAllocator8allocateEm+0x20>
            if (prev == nullptr) {
    80001c6c:	06068863          	beqz	a3,80001cdc <_ZN15MemoryAllocator8allocateEm+0xa8>
                prev->next = current->next;
    80001c70:	00853783          	ld	a5,8(a0)
    80001c74:	00f6b423          	sd	a5,8(a3)
            if (current->size - sizeToAllocate >= MEM_BLOCK_SIZE) {
    80001c78:	00053783          	ld	a5,0(a0)
    80001c7c:	40e787b3          	sub	a5,a5,a4
    80001c80:	03f00593          	li	a1,63
    80001c84:	02f5f863          	bgeu	a1,a5,80001cb4 <_ZN15MemoryAllocator8allocateEm+0x80>
                Block *newBlock = (Block *) ((uint64 *) current + sizeToAllocate);
    80001c88:	00961613          	slli	a2,a2,0x9
    80001c8c:	00c50633          	add	a2,a0,a2
                newBlock->size = current->size - sizeToAllocate;
    80001c90:	00f63023          	sd	a5,0(a2)
                current->size = sizeToAllocate;
    80001c94:	00e53023          	sd	a4,0(a0)
                if (!free_list) {
    80001c98:	00005797          	auipc	a5,0x5
    80001c9c:	7287b783          	ld	a5,1832(a5) # 800073c0 <_ZN15MemoryAllocator9free_listE>
    80001ca0:	04078663          	beqz	a5,80001cec <_ZN15MemoryAllocator8allocateEm+0xb8>
                } else if (!prev) {
    80001ca4:	04068c63          	beqz	a3,80001cfc <_ZN15MemoryAllocator8allocateEm+0xc8>
                    prev->next = newBlock;
    80001ca8:	00c6b423          	sd	a2,8(a3)
                    newBlock->next = current->next;
    80001cac:	00853783          	ld	a5,8(a0)
    80001cb0:	00f63423          	sd	a5,8(a2)
            if (!allocated_list) {
    80001cb4:	00005797          	auipc	a5,0x5
    80001cb8:	7147b783          	ld	a5,1812(a5) # 800073c8 <_ZN15MemoryAllocator14allocated_listE>
    80001cbc:	04078863          	beqz	a5,80001d0c <_ZN15MemoryAllocator8allocateEm+0xd8>
                current->next = allocated_list;
    80001cc0:	00f53423          	sd	a5,8(a0)
                allocated_list = current;
    80001cc4:	00005797          	auipc	a5,0x5
    80001cc8:	70a7b223          	sd	a0,1796(a5) # 800073c8 <_ZN15MemoryAllocator14allocated_listE>
            void *userPtr = (Block *) ((uint64 *) current + sizeof(Block));
    80001ccc:	08050513          	addi	a0,a0,128
    }

    // No block was found
    return nullptr;
}
    80001cd0:	00813403          	ld	s0,8(sp)
    80001cd4:	01010113          	addi	sp,sp,16
    80001cd8:	00008067          	ret
                free_list = current->next;
    80001cdc:	00853783          	ld	a5,8(a0)
    80001ce0:	00005597          	auipc	a1,0x5
    80001ce4:	6ef5b023          	sd	a5,1760(a1) # 800073c0 <_ZN15MemoryAllocator9free_listE>
    80001ce8:	f91ff06f          	j	80001c78 <_ZN15MemoryAllocator8allocateEm+0x44>
                    free_list = newBlock;
    80001cec:	00005797          	auipc	a5,0x5
    80001cf0:	6cc7ba23          	sd	a2,1748(a5) # 800073c0 <_ZN15MemoryAllocator9free_listE>
                    newBlock->next = nullptr;
    80001cf4:	00063423          	sd	zero,8(a2)
    80001cf8:	fbdff06f          	j	80001cb4 <_ZN15MemoryAllocator8allocateEm+0x80>
                    newBlock->next = free_list;
    80001cfc:	00f63423          	sd	a5,8(a2)
                    free_list = newBlock;
    80001d00:	00005797          	auipc	a5,0x5
    80001d04:	6cc7b023          	sd	a2,1728(a5) # 800073c0 <_ZN15MemoryAllocator9free_listE>
    80001d08:	fadff06f          	j	80001cb4 <_ZN15MemoryAllocator8allocateEm+0x80>
                allocated_list = current;
    80001d0c:	00005797          	auipc	a5,0x5
    80001d10:	6aa7be23          	sd	a0,1724(a5) # 800073c8 <_ZN15MemoryAllocator14allocated_listE>
                allocated_list->next = nullptr;
    80001d14:	00053423          	sd	zero,8(a0)
    80001d18:	fb5ff06f          	j	80001ccc <_ZN15MemoryAllocator8allocateEm+0x98>

0000000080001d1c <_ZN15MemoryAllocator10deallocateEPv>:

// Deallocate memory
int MemoryAllocator::deallocate(void *ptr) {
    80001d1c:	ff010113          	addi	sp,sp,-16
    80001d20:	00813423          	sd	s0,8(sp)
    80001d24:	01010413          	addi	s0,sp,16
    Block *block = (Block *) ((uint64 *) ptr - sizeof(Block));
    80001d28:	f8050713          	addi	a4,a0,-128
    Block *tmpPrev = nullptr;
    Block *tmp = allocated_list;
    80001d2c:	00005797          	auipc	a5,0x5
    80001d30:	69c7b783          	ld	a5,1692(a5) # 800073c8 <_ZN15MemoryAllocator14allocated_listE>
    Block *tmpPrev = nullptr;
    80001d34:	00000693          	li	a3,0
    uint8 flag = 0;

    //Check if the block given was previously allocated
    while (tmp) {
    80001d38:	00078a63          	beqz	a5,80001d4c <_ZN15MemoryAllocator10deallocateEPv+0x30>
        if (tmp == block) {
    80001d3c:	04e78263          	beq	a5,a4,80001d80 <_ZN15MemoryAllocator10deallocateEPv+0x64>
            flag = 1;
            break;
        }
        tmpPrev = tmp;
    80001d40:	00078693          	mv	a3,a5
        tmp = tmp->next;
    80001d44:	0087b783          	ld	a5,8(a5)
    while (tmp) {
    80001d48:	ff1ff06f          	j	80001d38 <_ZN15MemoryAllocator10deallocateEPv+0x1c>
    uint8 flag = 0;
    80001d4c:	00000613          	li	a2,0
    }
    if (flag == 0) return -1;
    80001d50:	0e060263          	beqz	a2,80001e34 <_ZN15MemoryAllocator10deallocateEPv+0x118>

    // Found a block, remove it from the allocated list
    if (tmpPrev != nullptr) {
    80001d54:	02068a63          	beqz	a3,80001d88 <_ZN15MemoryAllocator10deallocateEPv+0x6c>
        tmpPrev->next = tmp->next;
    80001d58:	0087b783          	ld	a5,8(a5)
    80001d5c:	00f6b423          	sd	a5,8(a3)
        allocated_list = tmp->next;
    }


    Block *prev = nullptr;
    Block *current = free_list;
    80001d60:	00005797          	auipc	a5,0x5
    80001d64:	6607b783          	ld	a5,1632(a5) # 800073c0 <_ZN15MemoryAllocator9free_listE>
    Block *prev = nullptr;
    80001d68:	00000693          	li	a3,0

    // Add it to the free_list
    while (current != nullptr) {
    80001d6c:	02078c63          	beqz	a5,80001da4 <_ZN15MemoryAllocator10deallocateEPv+0x88>
        if ((uint64 *) block < (uint64 *) current) {
    80001d70:	02f76463          	bltu	a4,a5,80001d98 <_ZN15MemoryAllocator10deallocateEPv+0x7c>
            } else {
                free_list = block;
            }
            break;
        }
        prev = current;
    80001d74:	00078693          	mv	a3,a5
        current = current->next;
    80001d78:	0087b783          	ld	a5,8(a5)
    while (current != nullptr) {
    80001d7c:	ff1ff06f          	j	80001d6c <_ZN15MemoryAllocator10deallocateEPv+0x50>
            flag = 1;
    80001d80:	00100613          	li	a2,1
    80001d84:	fcdff06f          	j	80001d50 <_ZN15MemoryAllocator10deallocateEPv+0x34>
        allocated_list = tmp->next;
    80001d88:	0087b783          	ld	a5,8(a5)
    80001d8c:	00005697          	auipc	a3,0x5
    80001d90:	62f6be23          	sd	a5,1596(a3) # 800073c8 <_ZN15MemoryAllocator14allocated_listE>
    80001d94:	fcdff06f          	j	80001d60 <_ZN15MemoryAllocator10deallocateEPv+0x44>
            block->next = current;
    80001d98:	f8f53423          	sd	a5,-120(a0)
            if (prev != nullptr) {
    80001d9c:	04068463          	beqz	a3,80001de4 <_ZN15MemoryAllocator10deallocateEPv+0xc8>
                prev->next = block;
    80001da0:	00e6b423          	sd	a4,8(a3)
    }
    if (current == nullptr) {
    80001da4:	04078663          	beqz	a5,80001df0 <_ZN15MemoryAllocator10deallocateEPv+0xd4>
        //current = block;
        block->next = nullptr;
    }

    //Merge it with neighbour blocks if possible
    if (prev != nullptr) {
    80001da8:	00068a63          	beqz	a3,80001dbc <_ZN15MemoryAllocator10deallocateEPv+0xa0>
        if ((uint64 *) prev + prev->size == (uint64 *) block) {
    80001dac:	0006b603          	ld	a2,0(a3)
    80001db0:	00361793          	slli	a5,a2,0x3
    80001db4:	00f687b3          	add	a5,a3,a5
    80001db8:	04e78263          	beq	a5,a4,80001dfc <_ZN15MemoryAllocator10deallocateEPv+0xe0>
            prev->size = prev->size + block->size;
            prev->next = block->next;
            block = prev;
        }
    }
    if (block->next != nullptr) {
    80001dbc:	00873783          	ld	a5,8(a4)
    80001dc0:	06078e63          	beqz	a5,80001e3c <_ZN15MemoryAllocator10deallocateEPv+0x120>
        if ((uint64 *) block + block->size == (uint64 *) block->next) {
    80001dc4:	00073603          	ld	a2,0(a4)
    80001dc8:	00361693          	slli	a3,a2,0x3
    80001dcc:	00d706b3          	add	a3,a4,a3
    80001dd0:	04d78463          	beq	a5,a3,80001e18 <_ZN15MemoryAllocator10deallocateEPv+0xfc>
            block->size += block->next->size;
            block->next = block->next->next;
        }
    }

    return 0;
    80001dd4:	00000513          	li	a0,0

}
    80001dd8:	00813403          	ld	s0,8(sp)
    80001ddc:	01010113          	addi	sp,sp,16
    80001de0:	00008067          	ret
                free_list = block;
    80001de4:	00005617          	auipc	a2,0x5
    80001de8:	5ce63e23          	sd	a4,1500(a2) # 800073c0 <_ZN15MemoryAllocator9free_listE>
    80001dec:	fb9ff06f          	j	80001da4 <_ZN15MemoryAllocator10deallocateEPv+0x88>
        prev->next = block;
    80001df0:	00e6b423          	sd	a4,8(a3)
        block->next = nullptr;
    80001df4:	f8053423          	sd	zero,-120(a0)
    80001df8:	fb1ff06f          	j	80001da8 <_ZN15MemoryAllocator10deallocateEPv+0x8c>
            prev->size = prev->size + block->size;
    80001dfc:	f8053783          	ld	a5,-128(a0)
    80001e00:	00f60633          	add	a2,a2,a5
    80001e04:	00c6b023          	sd	a2,0(a3)
            prev->next = block->next;
    80001e08:	f8853783          	ld	a5,-120(a0)
    80001e0c:	00f6b423          	sd	a5,8(a3)
            block = prev;
    80001e10:	00068713          	mv	a4,a3
    80001e14:	fa9ff06f          	j	80001dbc <_ZN15MemoryAllocator10deallocateEPv+0xa0>
            block->size += block->next->size;
    80001e18:	0007b683          	ld	a3,0(a5)
    80001e1c:	00d60633          	add	a2,a2,a3
    80001e20:	00c73023          	sd	a2,0(a4)
            block->next = block->next->next;
    80001e24:	0087b783          	ld	a5,8(a5)
    80001e28:	00f73423          	sd	a5,8(a4)
    return 0;
    80001e2c:	00000513          	li	a0,0
    80001e30:	fa9ff06f          	j	80001dd8 <_ZN15MemoryAllocator10deallocateEPv+0xbc>
    if (flag == 0) return -1;
    80001e34:	fff00513          	li	a0,-1
    80001e38:	fa1ff06f          	j	80001dd8 <_ZN15MemoryAllocator10deallocateEPv+0xbc>
    return 0;
    80001e3c:	00000513          	li	a0,0
    80001e40:	f99ff06f          	j	80001dd8 <_ZN15MemoryAllocator10deallocateEPv+0xbc>

0000000080001e44 <_Z4putcc>:
//
//    while (--i >= 0)
//        __putc(buf[i]);
//}

void putc(char c){
    80001e44:	ff010113          	addi	sp,sp,-16
    80001e48:	00113423          	sd	ra,8(sp)
    80001e4c:	00813023          	sd	s0,0(sp)
    80001e50:	01010413          	addi	s0,sp,16
    __putc(c);
    80001e54:	00004097          	auipc	ra,0x4
    80001e58:	a68080e7          	jalr	-1432(ra) # 800058bc <__putc>
}
    80001e5c:	00813083          	ld	ra,8(sp)
    80001e60:	00013403          	ld	s0,0(sp)
    80001e64:	01010113          	addi	sp,sp,16
    80001e68:	00008067          	ret

0000000080001e6c <_Z4getcv>:

char getc(){
    80001e6c:	ff010113          	addi	sp,sp,-16
    80001e70:	00113423          	sd	ra,8(sp)
    80001e74:	00813023          	sd	s0,0(sp)
    80001e78:	01010413          	addi	s0,sp,16
    return __getc();
    80001e7c:	00004097          	auipc	ra,0x4
    80001e80:	a7c080e7          	jalr	-1412(ra) # 800058f8 <__getc>
    80001e84:	00813083          	ld	ra,8(sp)
    80001e88:	00013403          	ld	s0,0(sp)
    80001e8c:	01010113          	addi	sp,sp,16
    80001e90:	00008067          	ret

0000000080001e94 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80001e94:	fe010113          	addi	sp,sp,-32
    80001e98:	00113c23          	sd	ra,24(sp)
    80001e9c:	00813823          	sd	s0,16(sp)
    80001ea0:	00913423          	sd	s1,8(sp)
    80001ea4:	01213023          	sd	s2,0(sp)
    80001ea8:	02010413          	addi	s0,sp,32
    80001eac:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80001eb0:	00100793          	li	a5,1
    80001eb4:	02a7f863          	bgeu	a5,a0,80001ee4 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80001eb8:	00a00793          	li	a5,10
    80001ebc:	02f577b3          	remu	a5,a0,a5
    80001ec0:	02078e63          	beqz	a5,80001efc <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80001ec4:	fff48513          	addi	a0,s1,-1
    80001ec8:	00000097          	auipc	ra,0x0
    80001ecc:	fcc080e7          	jalr	-52(ra) # 80001e94 <_ZL9fibonaccim>
    80001ed0:	00050913          	mv	s2,a0
    80001ed4:	ffe48513          	addi	a0,s1,-2
    80001ed8:	00000097          	auipc	ra,0x0
    80001edc:	fbc080e7          	jalr	-68(ra) # 80001e94 <_ZL9fibonaccim>
    80001ee0:	00a90533          	add	a0,s2,a0
}
    80001ee4:	01813083          	ld	ra,24(sp)
    80001ee8:	01013403          	ld	s0,16(sp)
    80001eec:	00813483          	ld	s1,8(sp)
    80001ef0:	00013903          	ld	s2,0(sp)
    80001ef4:	02010113          	addi	sp,sp,32
    80001ef8:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80001efc:	fffff097          	auipc	ra,0xfffff
    80001f00:	47c080e7          	jalr	1148(ra) # 80001378 <_Z15thread_dispatchv>
    80001f04:	fc1ff06f          	j	80001ec4 <_ZL9fibonaccim+0x30>

0000000080001f08 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    80001f08:	fe010113          	addi	sp,sp,-32
    80001f0c:	00113c23          	sd	ra,24(sp)
    80001f10:	00813823          	sd	s0,16(sp)
    80001f14:	00913423          	sd	s1,8(sp)
    80001f18:	01213023          	sd	s2,0(sp)
    80001f1c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80001f20:	00000913          	li	s2,0
    80001f24:	0380006f          	j	80001f5c <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80001f28:	fffff097          	auipc	ra,0xfffff
    80001f2c:	450080e7          	jalr	1104(ra) # 80001378 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80001f30:	00148493          	addi	s1,s1,1
    80001f34:	000027b7          	lui	a5,0x2
    80001f38:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80001f3c:	0097ee63          	bltu	a5,s1,80001f58 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80001f40:	00000713          	li	a4,0
    80001f44:	000077b7          	lui	a5,0x7
    80001f48:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80001f4c:	fce7eee3          	bltu	a5,a4,80001f28 <_ZN7WorkerA11workerBodyAEPv+0x20>
    80001f50:	00170713          	addi	a4,a4,1
    80001f54:	ff1ff06f          	j	80001f44 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80001f58:	00190913          	addi	s2,s2,1
    80001f5c:	00900793          	li	a5,9
    80001f60:	0527e063          	bltu	a5,s2,80001fa0 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80001f64:	00004517          	auipc	a0,0x4
    80001f68:	10c50513          	addi	a0,a0,268 # 80006070 <CONSOLE_STATUS+0x60>
    80001f6c:	00001097          	auipc	ra,0x1
    80001f70:	e9c080e7          	jalr	-356(ra) # 80002e08 <_Z11printStringPKc>
    80001f74:	00000613          	li	a2,0
    80001f78:	00a00593          	li	a1,10
    80001f7c:	0009051b          	sext.w	a0,s2
    80001f80:	00001097          	auipc	ra,0x1
    80001f84:	038080e7          	jalr	56(ra) # 80002fb8 <_Z8printIntiii>
    80001f88:	00004517          	auipc	a0,0x4
    80001f8c:	49050513          	addi	a0,a0,1168 # 80006418 <CONSOLE_STATUS+0x408>
    80001f90:	00001097          	auipc	ra,0x1
    80001f94:	e78080e7          	jalr	-392(ra) # 80002e08 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80001f98:	00000493          	li	s1,0
    80001f9c:	f99ff06f          	j	80001f34 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80001fa0:	00004517          	auipc	a0,0x4
    80001fa4:	0d850513          	addi	a0,a0,216 # 80006078 <CONSOLE_STATUS+0x68>
    80001fa8:	00001097          	auipc	ra,0x1
    80001fac:	e60080e7          	jalr	-416(ra) # 80002e08 <_Z11printStringPKc>
    finishedA = true;
    80001fb0:	00100793          	li	a5,1
    80001fb4:	00005717          	auipc	a4,0x5
    80001fb8:	40f70e23          	sb	a5,1052(a4) # 800073d0 <_ZL9finishedA>
}
    80001fbc:	01813083          	ld	ra,24(sp)
    80001fc0:	01013403          	ld	s0,16(sp)
    80001fc4:	00813483          	ld	s1,8(sp)
    80001fc8:	00013903          	ld	s2,0(sp)
    80001fcc:	02010113          	addi	sp,sp,32
    80001fd0:	00008067          	ret

0000000080001fd4 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80001fd4:	fe010113          	addi	sp,sp,-32
    80001fd8:	00113c23          	sd	ra,24(sp)
    80001fdc:	00813823          	sd	s0,16(sp)
    80001fe0:	00913423          	sd	s1,8(sp)
    80001fe4:	01213023          	sd	s2,0(sp)
    80001fe8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80001fec:	00000913          	li	s2,0
    80001ff0:	0380006f          	j	80002028 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80001ff4:	fffff097          	auipc	ra,0xfffff
    80001ff8:	384080e7          	jalr	900(ra) # 80001378 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80001ffc:	00148493          	addi	s1,s1,1
    80002000:	000027b7          	lui	a5,0x2
    80002004:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80002008:	0097ee63          	bltu	a5,s1,80002024 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    8000200c:	00000713          	li	a4,0
    80002010:	000077b7          	lui	a5,0x7
    80002014:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80002018:	fce7eee3          	bltu	a5,a4,80001ff4 <_ZN7WorkerB11workerBodyBEPv+0x20>
    8000201c:	00170713          	addi	a4,a4,1
    80002020:	ff1ff06f          	j	80002010 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80002024:	00190913          	addi	s2,s2,1
    80002028:	00f00793          	li	a5,15
    8000202c:	0527e063          	bltu	a5,s2,8000206c <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80002030:	00004517          	auipc	a0,0x4
    80002034:	05850513          	addi	a0,a0,88 # 80006088 <CONSOLE_STATUS+0x78>
    80002038:	00001097          	auipc	ra,0x1
    8000203c:	dd0080e7          	jalr	-560(ra) # 80002e08 <_Z11printStringPKc>
    80002040:	00000613          	li	a2,0
    80002044:	00a00593          	li	a1,10
    80002048:	0009051b          	sext.w	a0,s2
    8000204c:	00001097          	auipc	ra,0x1
    80002050:	f6c080e7          	jalr	-148(ra) # 80002fb8 <_Z8printIntiii>
    80002054:	00004517          	auipc	a0,0x4
    80002058:	3c450513          	addi	a0,a0,964 # 80006418 <CONSOLE_STATUS+0x408>
    8000205c:	00001097          	auipc	ra,0x1
    80002060:	dac080e7          	jalr	-596(ra) # 80002e08 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80002064:	00000493          	li	s1,0
    80002068:	f99ff06f          	j	80002000 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    8000206c:	00004517          	auipc	a0,0x4
    80002070:	02450513          	addi	a0,a0,36 # 80006090 <CONSOLE_STATUS+0x80>
    80002074:	00001097          	auipc	ra,0x1
    80002078:	d94080e7          	jalr	-620(ra) # 80002e08 <_Z11printStringPKc>
    finishedB = true;
    8000207c:	00100793          	li	a5,1
    80002080:	00005717          	auipc	a4,0x5
    80002084:	34f708a3          	sb	a5,849(a4) # 800073d1 <_ZL9finishedB>
    thread_dispatch();
    80002088:	fffff097          	auipc	ra,0xfffff
    8000208c:	2f0080e7          	jalr	752(ra) # 80001378 <_Z15thread_dispatchv>
}
    80002090:	01813083          	ld	ra,24(sp)
    80002094:	01013403          	ld	s0,16(sp)
    80002098:	00813483          	ld	s1,8(sp)
    8000209c:	00013903          	ld	s2,0(sp)
    800020a0:	02010113          	addi	sp,sp,32
    800020a4:	00008067          	ret

00000000800020a8 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    800020a8:	fe010113          	addi	sp,sp,-32
    800020ac:	00113c23          	sd	ra,24(sp)
    800020b0:	00813823          	sd	s0,16(sp)
    800020b4:	00913423          	sd	s1,8(sp)
    800020b8:	01213023          	sd	s2,0(sp)
    800020bc:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800020c0:	00000493          	li	s1,0
    800020c4:	0400006f          	j	80002104 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    800020c8:	00004517          	auipc	a0,0x4
    800020cc:	fd850513          	addi	a0,a0,-40 # 800060a0 <CONSOLE_STATUS+0x90>
    800020d0:	00001097          	auipc	ra,0x1
    800020d4:	d38080e7          	jalr	-712(ra) # 80002e08 <_Z11printStringPKc>
    800020d8:	00000613          	li	a2,0
    800020dc:	00a00593          	li	a1,10
    800020e0:	00048513          	mv	a0,s1
    800020e4:	00001097          	auipc	ra,0x1
    800020e8:	ed4080e7          	jalr	-300(ra) # 80002fb8 <_Z8printIntiii>
    800020ec:	00004517          	auipc	a0,0x4
    800020f0:	32c50513          	addi	a0,a0,812 # 80006418 <CONSOLE_STATUS+0x408>
    800020f4:	00001097          	auipc	ra,0x1
    800020f8:	d14080e7          	jalr	-748(ra) # 80002e08 <_Z11printStringPKc>
    for (; i < 3; i++) {
    800020fc:	0014849b          	addiw	s1,s1,1
    80002100:	0ff4f493          	andi	s1,s1,255
    80002104:	00200793          	li	a5,2
    80002108:	fc97f0e3          	bgeu	a5,s1,800020c8 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    8000210c:	00004517          	auipc	a0,0x4
    80002110:	f9c50513          	addi	a0,a0,-100 # 800060a8 <CONSOLE_STATUS+0x98>
    80002114:	00001097          	auipc	ra,0x1
    80002118:	cf4080e7          	jalr	-780(ra) # 80002e08 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    8000211c:	00700313          	li	t1,7
    thread_dispatch();
    80002120:	fffff097          	auipc	ra,0xfffff
    80002124:	258080e7          	jalr	600(ra) # 80001378 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80002128:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    8000212c:	00004517          	auipc	a0,0x4
    80002130:	f8c50513          	addi	a0,a0,-116 # 800060b8 <CONSOLE_STATUS+0xa8>
    80002134:	00001097          	auipc	ra,0x1
    80002138:	cd4080e7          	jalr	-812(ra) # 80002e08 <_Z11printStringPKc>
    8000213c:	00000613          	li	a2,0
    80002140:	00a00593          	li	a1,10
    80002144:	0009051b          	sext.w	a0,s2
    80002148:	00001097          	auipc	ra,0x1
    8000214c:	e70080e7          	jalr	-400(ra) # 80002fb8 <_Z8printIntiii>
    80002150:	00004517          	auipc	a0,0x4
    80002154:	2c850513          	addi	a0,a0,712 # 80006418 <CONSOLE_STATUS+0x408>
    80002158:	00001097          	auipc	ra,0x1
    8000215c:	cb0080e7          	jalr	-848(ra) # 80002e08 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80002160:	00c00513          	li	a0,12
    80002164:	00000097          	auipc	ra,0x0
    80002168:	d30080e7          	jalr	-720(ra) # 80001e94 <_ZL9fibonaccim>
    8000216c:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80002170:	00004517          	auipc	a0,0x4
    80002174:	f5050513          	addi	a0,a0,-176 # 800060c0 <CONSOLE_STATUS+0xb0>
    80002178:	00001097          	auipc	ra,0x1
    8000217c:	c90080e7          	jalr	-880(ra) # 80002e08 <_Z11printStringPKc>
    80002180:	00000613          	li	a2,0
    80002184:	00a00593          	li	a1,10
    80002188:	0009051b          	sext.w	a0,s2
    8000218c:	00001097          	auipc	ra,0x1
    80002190:	e2c080e7          	jalr	-468(ra) # 80002fb8 <_Z8printIntiii>
    80002194:	00004517          	auipc	a0,0x4
    80002198:	28450513          	addi	a0,a0,644 # 80006418 <CONSOLE_STATUS+0x408>
    8000219c:	00001097          	auipc	ra,0x1
    800021a0:	c6c080e7          	jalr	-916(ra) # 80002e08 <_Z11printStringPKc>
    800021a4:	0400006f          	j	800021e4 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    800021a8:	00004517          	auipc	a0,0x4
    800021ac:	ef850513          	addi	a0,a0,-264 # 800060a0 <CONSOLE_STATUS+0x90>
    800021b0:	00001097          	auipc	ra,0x1
    800021b4:	c58080e7          	jalr	-936(ra) # 80002e08 <_Z11printStringPKc>
    800021b8:	00000613          	li	a2,0
    800021bc:	00a00593          	li	a1,10
    800021c0:	00048513          	mv	a0,s1
    800021c4:	00001097          	auipc	ra,0x1
    800021c8:	df4080e7          	jalr	-524(ra) # 80002fb8 <_Z8printIntiii>
    800021cc:	00004517          	auipc	a0,0x4
    800021d0:	24c50513          	addi	a0,a0,588 # 80006418 <CONSOLE_STATUS+0x408>
    800021d4:	00001097          	auipc	ra,0x1
    800021d8:	c34080e7          	jalr	-972(ra) # 80002e08 <_Z11printStringPKc>
    for (; i < 6; i++) {
    800021dc:	0014849b          	addiw	s1,s1,1
    800021e0:	0ff4f493          	andi	s1,s1,255
    800021e4:	00500793          	li	a5,5
    800021e8:	fc97f0e3          	bgeu	a5,s1,800021a8 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    800021ec:	00004517          	auipc	a0,0x4
    800021f0:	e8c50513          	addi	a0,a0,-372 # 80006078 <CONSOLE_STATUS+0x68>
    800021f4:	00001097          	auipc	ra,0x1
    800021f8:	c14080e7          	jalr	-1004(ra) # 80002e08 <_Z11printStringPKc>
    finishedC = true;
    800021fc:	00100793          	li	a5,1
    80002200:	00005717          	auipc	a4,0x5
    80002204:	1cf70923          	sb	a5,466(a4) # 800073d2 <_ZL9finishedC>
    thread_dispatch();
    80002208:	fffff097          	auipc	ra,0xfffff
    8000220c:	170080e7          	jalr	368(ra) # 80001378 <_Z15thread_dispatchv>
}
    80002210:	01813083          	ld	ra,24(sp)
    80002214:	01013403          	ld	s0,16(sp)
    80002218:	00813483          	ld	s1,8(sp)
    8000221c:	00013903          	ld	s2,0(sp)
    80002220:	02010113          	addi	sp,sp,32
    80002224:	00008067          	ret

0000000080002228 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80002228:	fe010113          	addi	sp,sp,-32
    8000222c:	00113c23          	sd	ra,24(sp)
    80002230:	00813823          	sd	s0,16(sp)
    80002234:	00913423          	sd	s1,8(sp)
    80002238:	01213023          	sd	s2,0(sp)
    8000223c:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80002240:	00a00493          	li	s1,10
    80002244:	0400006f          	j	80002284 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80002248:	00004517          	auipc	a0,0x4
    8000224c:	e8850513          	addi	a0,a0,-376 # 800060d0 <CONSOLE_STATUS+0xc0>
    80002250:	00001097          	auipc	ra,0x1
    80002254:	bb8080e7          	jalr	-1096(ra) # 80002e08 <_Z11printStringPKc>
    80002258:	00000613          	li	a2,0
    8000225c:	00a00593          	li	a1,10
    80002260:	00048513          	mv	a0,s1
    80002264:	00001097          	auipc	ra,0x1
    80002268:	d54080e7          	jalr	-684(ra) # 80002fb8 <_Z8printIntiii>
    8000226c:	00004517          	auipc	a0,0x4
    80002270:	1ac50513          	addi	a0,a0,428 # 80006418 <CONSOLE_STATUS+0x408>
    80002274:	00001097          	auipc	ra,0x1
    80002278:	b94080e7          	jalr	-1132(ra) # 80002e08 <_Z11printStringPKc>
    for (; i < 13; i++) {
    8000227c:	0014849b          	addiw	s1,s1,1
    80002280:	0ff4f493          	andi	s1,s1,255
    80002284:	00c00793          	li	a5,12
    80002288:	fc97f0e3          	bgeu	a5,s1,80002248 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    8000228c:	00004517          	auipc	a0,0x4
    80002290:	e4c50513          	addi	a0,a0,-436 # 800060d8 <CONSOLE_STATUS+0xc8>
    80002294:	00001097          	auipc	ra,0x1
    80002298:	b74080e7          	jalr	-1164(ra) # 80002e08 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    8000229c:	00500313          	li	t1,5
    thread_dispatch();
    800022a0:	fffff097          	auipc	ra,0xfffff
    800022a4:	0d8080e7          	jalr	216(ra) # 80001378 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    800022a8:	01000513          	li	a0,16
    800022ac:	00000097          	auipc	ra,0x0
    800022b0:	be8080e7          	jalr	-1048(ra) # 80001e94 <_ZL9fibonaccim>
    800022b4:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800022b8:	00004517          	auipc	a0,0x4
    800022bc:	e3050513          	addi	a0,a0,-464 # 800060e8 <CONSOLE_STATUS+0xd8>
    800022c0:	00001097          	auipc	ra,0x1
    800022c4:	b48080e7          	jalr	-1208(ra) # 80002e08 <_Z11printStringPKc>
    800022c8:	00000613          	li	a2,0
    800022cc:	00a00593          	li	a1,10
    800022d0:	0009051b          	sext.w	a0,s2
    800022d4:	00001097          	auipc	ra,0x1
    800022d8:	ce4080e7          	jalr	-796(ra) # 80002fb8 <_Z8printIntiii>
    800022dc:	00004517          	auipc	a0,0x4
    800022e0:	13c50513          	addi	a0,a0,316 # 80006418 <CONSOLE_STATUS+0x408>
    800022e4:	00001097          	auipc	ra,0x1
    800022e8:	b24080e7          	jalr	-1244(ra) # 80002e08 <_Z11printStringPKc>
    800022ec:	0400006f          	j	8000232c <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800022f0:	00004517          	auipc	a0,0x4
    800022f4:	de050513          	addi	a0,a0,-544 # 800060d0 <CONSOLE_STATUS+0xc0>
    800022f8:	00001097          	auipc	ra,0x1
    800022fc:	b10080e7          	jalr	-1264(ra) # 80002e08 <_Z11printStringPKc>
    80002300:	00000613          	li	a2,0
    80002304:	00a00593          	li	a1,10
    80002308:	00048513          	mv	a0,s1
    8000230c:	00001097          	auipc	ra,0x1
    80002310:	cac080e7          	jalr	-852(ra) # 80002fb8 <_Z8printIntiii>
    80002314:	00004517          	auipc	a0,0x4
    80002318:	10450513          	addi	a0,a0,260 # 80006418 <CONSOLE_STATUS+0x408>
    8000231c:	00001097          	auipc	ra,0x1
    80002320:	aec080e7          	jalr	-1300(ra) # 80002e08 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80002324:	0014849b          	addiw	s1,s1,1
    80002328:	0ff4f493          	andi	s1,s1,255
    8000232c:	00f00793          	li	a5,15
    80002330:	fc97f0e3          	bgeu	a5,s1,800022f0 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    80002334:	00004517          	auipc	a0,0x4
    80002338:	dc450513          	addi	a0,a0,-572 # 800060f8 <CONSOLE_STATUS+0xe8>
    8000233c:	00001097          	auipc	ra,0x1
    80002340:	acc080e7          	jalr	-1332(ra) # 80002e08 <_Z11printStringPKc>
    finishedD = true;
    80002344:	00100793          	li	a5,1
    80002348:	00005717          	auipc	a4,0x5
    8000234c:	08f705a3          	sb	a5,139(a4) # 800073d3 <_ZL9finishedD>
    thread_dispatch();
    80002350:	fffff097          	auipc	ra,0xfffff
    80002354:	028080e7          	jalr	40(ra) # 80001378 <_Z15thread_dispatchv>
}
    80002358:	01813083          	ld	ra,24(sp)
    8000235c:	01013403          	ld	s0,16(sp)
    80002360:	00813483          	ld	s1,8(sp)
    80002364:	00013903          	ld	s2,0(sp)
    80002368:	02010113          	addi	sp,sp,32
    8000236c:	00008067          	ret

0000000080002370 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80002370:	fc010113          	addi	sp,sp,-64
    80002374:	02113c23          	sd	ra,56(sp)
    80002378:	02813823          	sd	s0,48(sp)
    8000237c:	02913423          	sd	s1,40(sp)
    80002380:	03213023          	sd	s2,32(sp)
    80002384:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80002388:	02000513          	li	a0,32
    8000238c:	fffff097          	auipc	ra,0xfffff
    80002390:	48c080e7          	jalr	1164(ra) # 80001818 <_Znwm>
    80002394:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    80002398:	fffff097          	auipc	ra,0xfffff
    8000239c:	5f0080e7          	jalr	1520(ra) # 80001988 <_ZN6ThreadC1Ev>
    800023a0:	00005797          	auipc	a5,0x5
    800023a4:	ec078793          	addi	a5,a5,-320 # 80007260 <_ZTV7WorkerA+0x10>
    800023a8:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    800023ac:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    800023b0:	00004517          	auipc	a0,0x4
    800023b4:	d5850513          	addi	a0,a0,-680 # 80006108 <CONSOLE_STATUS+0xf8>
    800023b8:	00001097          	auipc	ra,0x1
    800023bc:	a50080e7          	jalr	-1456(ra) # 80002e08 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    800023c0:	02000513          	li	a0,32
    800023c4:	fffff097          	auipc	ra,0xfffff
    800023c8:	454080e7          	jalr	1108(ra) # 80001818 <_Znwm>
    800023cc:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    800023d0:	fffff097          	auipc	ra,0xfffff
    800023d4:	5b8080e7          	jalr	1464(ra) # 80001988 <_ZN6ThreadC1Ev>
    800023d8:	00005797          	auipc	a5,0x5
    800023dc:	eb078793          	addi	a5,a5,-336 # 80007288 <_ZTV7WorkerB+0x10>
    800023e0:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    800023e4:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    800023e8:	00004517          	auipc	a0,0x4
    800023ec:	d3850513          	addi	a0,a0,-712 # 80006120 <CONSOLE_STATUS+0x110>
    800023f0:	00001097          	auipc	ra,0x1
    800023f4:	a18080e7          	jalr	-1512(ra) # 80002e08 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    800023f8:	02000513          	li	a0,32
    800023fc:	fffff097          	auipc	ra,0xfffff
    80002400:	41c080e7          	jalr	1052(ra) # 80001818 <_Znwm>
    80002404:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    80002408:	fffff097          	auipc	ra,0xfffff
    8000240c:	580080e7          	jalr	1408(ra) # 80001988 <_ZN6ThreadC1Ev>
    80002410:	00005797          	auipc	a5,0x5
    80002414:	ea078793          	addi	a5,a5,-352 # 800072b0 <_ZTV7WorkerC+0x10>
    80002418:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    8000241c:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80002420:	00004517          	auipc	a0,0x4
    80002424:	d1850513          	addi	a0,a0,-744 # 80006138 <CONSOLE_STATUS+0x128>
    80002428:	00001097          	auipc	ra,0x1
    8000242c:	9e0080e7          	jalr	-1568(ra) # 80002e08 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80002430:	02000513          	li	a0,32
    80002434:	fffff097          	auipc	ra,0xfffff
    80002438:	3e4080e7          	jalr	996(ra) # 80001818 <_Znwm>
    8000243c:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    80002440:	fffff097          	auipc	ra,0xfffff
    80002444:	548080e7          	jalr	1352(ra) # 80001988 <_ZN6ThreadC1Ev>
    80002448:	00005797          	auipc	a5,0x5
    8000244c:	e9078793          	addi	a5,a5,-368 # 800072d8 <_ZTV7WorkerD+0x10>
    80002450:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    80002454:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80002458:	00004517          	auipc	a0,0x4
    8000245c:	cf850513          	addi	a0,a0,-776 # 80006150 <CONSOLE_STATUS+0x140>
    80002460:	00001097          	auipc	ra,0x1
    80002464:	9a8080e7          	jalr	-1624(ra) # 80002e08 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80002468:	00000493          	li	s1,0
    8000246c:	00300793          	li	a5,3
    80002470:	0297c663          	blt	a5,s1,8000249c <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    80002474:	00349793          	slli	a5,s1,0x3
    80002478:	fe040713          	addi	a4,s0,-32
    8000247c:	00f707b3          	add	a5,a4,a5
    80002480:	fe07b503          	ld	a0,-32(a5)
    80002484:	fffff097          	auipc	ra,0xfffff
    80002488:	580080e7          	jalr	1408(ra) # 80001a04 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    8000248c:	0014849b          	addiw	s1,s1,1
    80002490:	fddff06f          	j	8000246c <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80002494:	fffff097          	auipc	ra,0xfffff
    80002498:	5cc080e7          	jalr	1484(ra) # 80001a60 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    8000249c:	00005797          	auipc	a5,0x5
    800024a0:	f347c783          	lbu	a5,-204(a5) # 800073d0 <_ZL9finishedA>
    800024a4:	fe0788e3          	beqz	a5,80002494 <_Z20Threads_CPP_API_testv+0x124>
    800024a8:	00005797          	auipc	a5,0x5
    800024ac:	f297c783          	lbu	a5,-215(a5) # 800073d1 <_ZL9finishedB>
    800024b0:	fe0782e3          	beqz	a5,80002494 <_Z20Threads_CPP_API_testv+0x124>
    800024b4:	00005797          	auipc	a5,0x5
    800024b8:	f1e7c783          	lbu	a5,-226(a5) # 800073d2 <_ZL9finishedC>
    800024bc:	fc078ce3          	beqz	a5,80002494 <_Z20Threads_CPP_API_testv+0x124>
    800024c0:	00005797          	auipc	a5,0x5
    800024c4:	f137c783          	lbu	a5,-237(a5) # 800073d3 <_ZL9finishedD>
    800024c8:	fc0786e3          	beqz	a5,80002494 <_Z20Threads_CPP_API_testv+0x124>
    800024cc:	fc040493          	addi	s1,s0,-64
    800024d0:	0080006f          	j	800024d8 <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    800024d4:	00848493          	addi	s1,s1,8
    800024d8:	fe040793          	addi	a5,s0,-32
    800024dc:	08f48663          	beq	s1,a5,80002568 <_Z20Threads_CPP_API_testv+0x1f8>
    800024e0:	0004b503          	ld	a0,0(s1)
    800024e4:	fe0508e3          	beqz	a0,800024d4 <_Z20Threads_CPP_API_testv+0x164>
    800024e8:	00053783          	ld	a5,0(a0)
    800024ec:	0087b783          	ld	a5,8(a5)
    800024f0:	000780e7          	jalr	a5
    800024f4:	fe1ff06f          	j	800024d4 <_Z20Threads_CPP_API_testv+0x164>
    800024f8:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    800024fc:	00048513          	mv	a0,s1
    80002500:	fffff097          	auipc	ra,0xfffff
    80002504:	368080e7          	jalr	872(ra) # 80001868 <_ZdlPv>
    80002508:	00090513          	mv	a0,s2
    8000250c:	00006097          	auipc	ra,0x6
    80002510:	fac080e7          	jalr	-84(ra) # 800084b8 <_Unwind_Resume>
    80002514:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    80002518:	00048513          	mv	a0,s1
    8000251c:	fffff097          	auipc	ra,0xfffff
    80002520:	34c080e7          	jalr	844(ra) # 80001868 <_ZdlPv>
    80002524:	00090513          	mv	a0,s2
    80002528:	00006097          	auipc	ra,0x6
    8000252c:	f90080e7          	jalr	-112(ra) # 800084b8 <_Unwind_Resume>
    80002530:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    80002534:	00048513          	mv	a0,s1
    80002538:	fffff097          	auipc	ra,0xfffff
    8000253c:	330080e7          	jalr	816(ra) # 80001868 <_ZdlPv>
    80002540:	00090513          	mv	a0,s2
    80002544:	00006097          	auipc	ra,0x6
    80002548:	f74080e7          	jalr	-140(ra) # 800084b8 <_Unwind_Resume>
    8000254c:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80002550:	00048513          	mv	a0,s1
    80002554:	fffff097          	auipc	ra,0xfffff
    80002558:	314080e7          	jalr	788(ra) # 80001868 <_ZdlPv>
    8000255c:	00090513          	mv	a0,s2
    80002560:	00006097          	auipc	ra,0x6
    80002564:	f58080e7          	jalr	-168(ra) # 800084b8 <_Unwind_Resume>
}
    80002568:	03813083          	ld	ra,56(sp)
    8000256c:	03013403          	ld	s0,48(sp)
    80002570:	02813483          	ld	s1,40(sp)
    80002574:	02013903          	ld	s2,32(sp)
    80002578:	04010113          	addi	sp,sp,64
    8000257c:	00008067          	ret

0000000080002580 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80002580:	ff010113          	addi	sp,sp,-16
    80002584:	00113423          	sd	ra,8(sp)
    80002588:	00813023          	sd	s0,0(sp)
    8000258c:	01010413          	addi	s0,sp,16
    80002590:	00005797          	auipc	a5,0x5
    80002594:	cd078793          	addi	a5,a5,-816 # 80007260 <_ZTV7WorkerA+0x10>
    80002598:	00f53023          	sd	a5,0(a0)
    8000259c:	fffff097          	auipc	ra,0xfffff
    800025a0:	31c080e7          	jalr	796(ra) # 800018b8 <_ZN6ThreadD1Ev>
    800025a4:	00813083          	ld	ra,8(sp)
    800025a8:	00013403          	ld	s0,0(sp)
    800025ac:	01010113          	addi	sp,sp,16
    800025b0:	00008067          	ret

00000000800025b4 <_ZN7WorkerAD0Ev>:
    800025b4:	fe010113          	addi	sp,sp,-32
    800025b8:	00113c23          	sd	ra,24(sp)
    800025bc:	00813823          	sd	s0,16(sp)
    800025c0:	00913423          	sd	s1,8(sp)
    800025c4:	02010413          	addi	s0,sp,32
    800025c8:	00050493          	mv	s1,a0
    800025cc:	00005797          	auipc	a5,0x5
    800025d0:	c9478793          	addi	a5,a5,-876 # 80007260 <_ZTV7WorkerA+0x10>
    800025d4:	00f53023          	sd	a5,0(a0)
    800025d8:	fffff097          	auipc	ra,0xfffff
    800025dc:	2e0080e7          	jalr	736(ra) # 800018b8 <_ZN6ThreadD1Ev>
    800025e0:	00048513          	mv	a0,s1
    800025e4:	fffff097          	auipc	ra,0xfffff
    800025e8:	284080e7          	jalr	644(ra) # 80001868 <_ZdlPv>
    800025ec:	01813083          	ld	ra,24(sp)
    800025f0:	01013403          	ld	s0,16(sp)
    800025f4:	00813483          	ld	s1,8(sp)
    800025f8:	02010113          	addi	sp,sp,32
    800025fc:	00008067          	ret

0000000080002600 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80002600:	ff010113          	addi	sp,sp,-16
    80002604:	00113423          	sd	ra,8(sp)
    80002608:	00813023          	sd	s0,0(sp)
    8000260c:	01010413          	addi	s0,sp,16
    80002610:	00005797          	auipc	a5,0x5
    80002614:	c7878793          	addi	a5,a5,-904 # 80007288 <_ZTV7WorkerB+0x10>
    80002618:	00f53023          	sd	a5,0(a0)
    8000261c:	fffff097          	auipc	ra,0xfffff
    80002620:	29c080e7          	jalr	668(ra) # 800018b8 <_ZN6ThreadD1Ev>
    80002624:	00813083          	ld	ra,8(sp)
    80002628:	00013403          	ld	s0,0(sp)
    8000262c:	01010113          	addi	sp,sp,16
    80002630:	00008067          	ret

0000000080002634 <_ZN7WorkerBD0Ev>:
    80002634:	fe010113          	addi	sp,sp,-32
    80002638:	00113c23          	sd	ra,24(sp)
    8000263c:	00813823          	sd	s0,16(sp)
    80002640:	00913423          	sd	s1,8(sp)
    80002644:	02010413          	addi	s0,sp,32
    80002648:	00050493          	mv	s1,a0
    8000264c:	00005797          	auipc	a5,0x5
    80002650:	c3c78793          	addi	a5,a5,-964 # 80007288 <_ZTV7WorkerB+0x10>
    80002654:	00f53023          	sd	a5,0(a0)
    80002658:	fffff097          	auipc	ra,0xfffff
    8000265c:	260080e7          	jalr	608(ra) # 800018b8 <_ZN6ThreadD1Ev>
    80002660:	00048513          	mv	a0,s1
    80002664:	fffff097          	auipc	ra,0xfffff
    80002668:	204080e7          	jalr	516(ra) # 80001868 <_ZdlPv>
    8000266c:	01813083          	ld	ra,24(sp)
    80002670:	01013403          	ld	s0,16(sp)
    80002674:	00813483          	ld	s1,8(sp)
    80002678:	02010113          	addi	sp,sp,32
    8000267c:	00008067          	ret

0000000080002680 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80002680:	ff010113          	addi	sp,sp,-16
    80002684:	00113423          	sd	ra,8(sp)
    80002688:	00813023          	sd	s0,0(sp)
    8000268c:	01010413          	addi	s0,sp,16
    80002690:	00005797          	auipc	a5,0x5
    80002694:	c2078793          	addi	a5,a5,-992 # 800072b0 <_ZTV7WorkerC+0x10>
    80002698:	00f53023          	sd	a5,0(a0)
    8000269c:	fffff097          	auipc	ra,0xfffff
    800026a0:	21c080e7          	jalr	540(ra) # 800018b8 <_ZN6ThreadD1Ev>
    800026a4:	00813083          	ld	ra,8(sp)
    800026a8:	00013403          	ld	s0,0(sp)
    800026ac:	01010113          	addi	sp,sp,16
    800026b0:	00008067          	ret

00000000800026b4 <_ZN7WorkerCD0Ev>:
    800026b4:	fe010113          	addi	sp,sp,-32
    800026b8:	00113c23          	sd	ra,24(sp)
    800026bc:	00813823          	sd	s0,16(sp)
    800026c0:	00913423          	sd	s1,8(sp)
    800026c4:	02010413          	addi	s0,sp,32
    800026c8:	00050493          	mv	s1,a0
    800026cc:	00005797          	auipc	a5,0x5
    800026d0:	be478793          	addi	a5,a5,-1052 # 800072b0 <_ZTV7WorkerC+0x10>
    800026d4:	00f53023          	sd	a5,0(a0)
    800026d8:	fffff097          	auipc	ra,0xfffff
    800026dc:	1e0080e7          	jalr	480(ra) # 800018b8 <_ZN6ThreadD1Ev>
    800026e0:	00048513          	mv	a0,s1
    800026e4:	fffff097          	auipc	ra,0xfffff
    800026e8:	184080e7          	jalr	388(ra) # 80001868 <_ZdlPv>
    800026ec:	01813083          	ld	ra,24(sp)
    800026f0:	01013403          	ld	s0,16(sp)
    800026f4:	00813483          	ld	s1,8(sp)
    800026f8:	02010113          	addi	sp,sp,32
    800026fc:	00008067          	ret

0000000080002700 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80002700:	ff010113          	addi	sp,sp,-16
    80002704:	00113423          	sd	ra,8(sp)
    80002708:	00813023          	sd	s0,0(sp)
    8000270c:	01010413          	addi	s0,sp,16
    80002710:	00005797          	auipc	a5,0x5
    80002714:	bc878793          	addi	a5,a5,-1080 # 800072d8 <_ZTV7WorkerD+0x10>
    80002718:	00f53023          	sd	a5,0(a0)
    8000271c:	fffff097          	auipc	ra,0xfffff
    80002720:	19c080e7          	jalr	412(ra) # 800018b8 <_ZN6ThreadD1Ev>
    80002724:	00813083          	ld	ra,8(sp)
    80002728:	00013403          	ld	s0,0(sp)
    8000272c:	01010113          	addi	sp,sp,16
    80002730:	00008067          	ret

0000000080002734 <_ZN7WorkerDD0Ev>:
    80002734:	fe010113          	addi	sp,sp,-32
    80002738:	00113c23          	sd	ra,24(sp)
    8000273c:	00813823          	sd	s0,16(sp)
    80002740:	00913423          	sd	s1,8(sp)
    80002744:	02010413          	addi	s0,sp,32
    80002748:	00050493          	mv	s1,a0
    8000274c:	00005797          	auipc	a5,0x5
    80002750:	b8c78793          	addi	a5,a5,-1140 # 800072d8 <_ZTV7WorkerD+0x10>
    80002754:	00f53023          	sd	a5,0(a0)
    80002758:	fffff097          	auipc	ra,0xfffff
    8000275c:	160080e7          	jalr	352(ra) # 800018b8 <_ZN6ThreadD1Ev>
    80002760:	00048513          	mv	a0,s1
    80002764:	fffff097          	auipc	ra,0xfffff
    80002768:	104080e7          	jalr	260(ra) # 80001868 <_ZdlPv>
    8000276c:	01813083          	ld	ra,24(sp)
    80002770:	01013403          	ld	s0,16(sp)
    80002774:	00813483          	ld	s1,8(sp)
    80002778:	02010113          	addi	sp,sp,32
    8000277c:	00008067          	ret

0000000080002780 <_ZN7WorkerA3runEv>:
    void run() override {
    80002780:	ff010113          	addi	sp,sp,-16
    80002784:	00113423          	sd	ra,8(sp)
    80002788:	00813023          	sd	s0,0(sp)
    8000278c:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80002790:	00000593          	li	a1,0
    80002794:	fffff097          	auipc	ra,0xfffff
    80002798:	774080e7          	jalr	1908(ra) # 80001f08 <_ZN7WorkerA11workerBodyAEPv>
    }
    8000279c:	00813083          	ld	ra,8(sp)
    800027a0:	00013403          	ld	s0,0(sp)
    800027a4:	01010113          	addi	sp,sp,16
    800027a8:	00008067          	ret

00000000800027ac <_ZN7WorkerB3runEv>:
    void run() override {
    800027ac:	ff010113          	addi	sp,sp,-16
    800027b0:	00113423          	sd	ra,8(sp)
    800027b4:	00813023          	sd	s0,0(sp)
    800027b8:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    800027bc:	00000593          	li	a1,0
    800027c0:	00000097          	auipc	ra,0x0
    800027c4:	814080e7          	jalr	-2028(ra) # 80001fd4 <_ZN7WorkerB11workerBodyBEPv>
    }
    800027c8:	00813083          	ld	ra,8(sp)
    800027cc:	00013403          	ld	s0,0(sp)
    800027d0:	01010113          	addi	sp,sp,16
    800027d4:	00008067          	ret

00000000800027d8 <_ZN7WorkerC3runEv>:
    void run() override {
    800027d8:	ff010113          	addi	sp,sp,-16
    800027dc:	00113423          	sd	ra,8(sp)
    800027e0:	00813023          	sd	s0,0(sp)
    800027e4:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    800027e8:	00000593          	li	a1,0
    800027ec:	00000097          	auipc	ra,0x0
    800027f0:	8bc080e7          	jalr	-1860(ra) # 800020a8 <_ZN7WorkerC11workerBodyCEPv>
    }
    800027f4:	00813083          	ld	ra,8(sp)
    800027f8:	00013403          	ld	s0,0(sp)
    800027fc:	01010113          	addi	sp,sp,16
    80002800:	00008067          	ret

0000000080002804 <_ZN7WorkerD3runEv>:
    void run() override {
    80002804:	ff010113          	addi	sp,sp,-16
    80002808:	00113423          	sd	ra,8(sp)
    8000280c:	00813023          	sd	s0,0(sp)
    80002810:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80002814:	00000593          	li	a1,0
    80002818:	00000097          	auipc	ra,0x0
    8000281c:	a10080e7          	jalr	-1520(ra) # 80002228 <_ZN7WorkerD11workerBodyDEPv>
    }
    80002820:	00813083          	ld	ra,8(sp)
    80002824:	00013403          	ld	s0,0(sp)
    80002828:	01010113          	addi	sp,sp,16
    8000282c:	00008067          	ret

0000000080002830 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80002830:	fe010113          	addi	sp,sp,-32
    80002834:	00113c23          	sd	ra,24(sp)
    80002838:	00813823          	sd	s0,16(sp)
    8000283c:	00913423          	sd	s1,8(sp)
    80002840:	01213023          	sd	s2,0(sp)
    80002844:	02010413          	addi	s0,sp,32
    80002848:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    8000284c:	00100793          	li	a5,1
    80002850:	02a7f863          	bgeu	a5,a0,80002880 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80002854:	00a00793          	li	a5,10
    80002858:	02f577b3          	remu	a5,a0,a5
    8000285c:	02078e63          	beqz	a5,80002898 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80002860:	fff48513          	addi	a0,s1,-1
    80002864:	00000097          	auipc	ra,0x0
    80002868:	fcc080e7          	jalr	-52(ra) # 80002830 <_ZL9fibonaccim>
    8000286c:	00050913          	mv	s2,a0
    80002870:	ffe48513          	addi	a0,s1,-2
    80002874:	00000097          	auipc	ra,0x0
    80002878:	fbc080e7          	jalr	-68(ra) # 80002830 <_ZL9fibonaccim>
    8000287c:	00a90533          	add	a0,s2,a0
}
    80002880:	01813083          	ld	ra,24(sp)
    80002884:	01013403          	ld	s0,16(sp)
    80002888:	00813483          	ld	s1,8(sp)
    8000288c:	00013903          	ld	s2,0(sp)
    80002890:	02010113          	addi	sp,sp,32
    80002894:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80002898:	fffff097          	auipc	ra,0xfffff
    8000289c:	ae0080e7          	jalr	-1312(ra) # 80001378 <_Z15thread_dispatchv>
    800028a0:	fc1ff06f          	j	80002860 <_ZL9fibonaccim+0x30>

00000000800028a4 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    800028a4:	fe010113          	addi	sp,sp,-32
    800028a8:	00113c23          	sd	ra,24(sp)
    800028ac:	00813823          	sd	s0,16(sp)
    800028b0:	00913423          	sd	s1,8(sp)
    800028b4:	01213023          	sd	s2,0(sp)
    800028b8:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800028bc:	00a00493          	li	s1,10
    800028c0:	0400006f          	j	80002900 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800028c4:	00004517          	auipc	a0,0x4
    800028c8:	80c50513          	addi	a0,a0,-2036 # 800060d0 <CONSOLE_STATUS+0xc0>
    800028cc:	00000097          	auipc	ra,0x0
    800028d0:	53c080e7          	jalr	1340(ra) # 80002e08 <_Z11printStringPKc>
    800028d4:	00000613          	li	a2,0
    800028d8:	00a00593          	li	a1,10
    800028dc:	00048513          	mv	a0,s1
    800028e0:	00000097          	auipc	ra,0x0
    800028e4:	6d8080e7          	jalr	1752(ra) # 80002fb8 <_Z8printIntiii>
    800028e8:	00004517          	auipc	a0,0x4
    800028ec:	b3050513          	addi	a0,a0,-1232 # 80006418 <CONSOLE_STATUS+0x408>
    800028f0:	00000097          	auipc	ra,0x0
    800028f4:	518080e7          	jalr	1304(ra) # 80002e08 <_Z11printStringPKc>
    for (; i < 13; i++) {
    800028f8:	0014849b          	addiw	s1,s1,1
    800028fc:	0ff4f493          	andi	s1,s1,255
    80002900:	00c00793          	li	a5,12
    80002904:	fc97f0e3          	bgeu	a5,s1,800028c4 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80002908:	00003517          	auipc	a0,0x3
    8000290c:	7d050513          	addi	a0,a0,2000 # 800060d8 <CONSOLE_STATUS+0xc8>
    80002910:	00000097          	auipc	ra,0x0
    80002914:	4f8080e7          	jalr	1272(ra) # 80002e08 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80002918:	00500313          	li	t1,5
    thread_dispatch();
    8000291c:	fffff097          	auipc	ra,0xfffff
    80002920:	a5c080e7          	jalr	-1444(ra) # 80001378 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80002924:	01000513          	li	a0,16
    80002928:	00000097          	auipc	ra,0x0
    8000292c:	f08080e7          	jalr	-248(ra) # 80002830 <_ZL9fibonaccim>
    80002930:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80002934:	00003517          	auipc	a0,0x3
    80002938:	7b450513          	addi	a0,a0,1972 # 800060e8 <CONSOLE_STATUS+0xd8>
    8000293c:	00000097          	auipc	ra,0x0
    80002940:	4cc080e7          	jalr	1228(ra) # 80002e08 <_Z11printStringPKc>
    80002944:	00000613          	li	a2,0
    80002948:	00a00593          	li	a1,10
    8000294c:	0009051b          	sext.w	a0,s2
    80002950:	00000097          	auipc	ra,0x0
    80002954:	668080e7          	jalr	1640(ra) # 80002fb8 <_Z8printIntiii>
    80002958:	00004517          	auipc	a0,0x4
    8000295c:	ac050513          	addi	a0,a0,-1344 # 80006418 <CONSOLE_STATUS+0x408>
    80002960:	00000097          	auipc	ra,0x0
    80002964:	4a8080e7          	jalr	1192(ra) # 80002e08 <_Z11printStringPKc>
    80002968:	0400006f          	j	800029a8 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    8000296c:	00003517          	auipc	a0,0x3
    80002970:	76450513          	addi	a0,a0,1892 # 800060d0 <CONSOLE_STATUS+0xc0>
    80002974:	00000097          	auipc	ra,0x0
    80002978:	494080e7          	jalr	1172(ra) # 80002e08 <_Z11printStringPKc>
    8000297c:	00000613          	li	a2,0
    80002980:	00a00593          	li	a1,10
    80002984:	00048513          	mv	a0,s1
    80002988:	00000097          	auipc	ra,0x0
    8000298c:	630080e7          	jalr	1584(ra) # 80002fb8 <_Z8printIntiii>
    80002990:	00004517          	auipc	a0,0x4
    80002994:	a8850513          	addi	a0,a0,-1400 # 80006418 <CONSOLE_STATUS+0x408>
    80002998:	00000097          	auipc	ra,0x0
    8000299c:	470080e7          	jalr	1136(ra) # 80002e08 <_Z11printStringPKc>
    for (; i < 16; i++) {
    800029a0:	0014849b          	addiw	s1,s1,1
    800029a4:	0ff4f493          	andi	s1,s1,255
    800029a8:	00f00793          	li	a5,15
    800029ac:	fc97f0e3          	bgeu	a5,s1,8000296c <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    800029b0:	00003517          	auipc	a0,0x3
    800029b4:	74850513          	addi	a0,a0,1864 # 800060f8 <CONSOLE_STATUS+0xe8>
    800029b8:	00000097          	auipc	ra,0x0
    800029bc:	450080e7          	jalr	1104(ra) # 80002e08 <_Z11printStringPKc>
    finishedD = true;
    800029c0:	00100793          	li	a5,1
    800029c4:	00005717          	auipc	a4,0x5
    800029c8:	a0f70823          	sb	a5,-1520(a4) # 800073d4 <_ZL9finishedD>
    thread_dispatch();
    800029cc:	fffff097          	auipc	ra,0xfffff
    800029d0:	9ac080e7          	jalr	-1620(ra) # 80001378 <_Z15thread_dispatchv>
}
    800029d4:	01813083          	ld	ra,24(sp)
    800029d8:	01013403          	ld	s0,16(sp)
    800029dc:	00813483          	ld	s1,8(sp)
    800029e0:	00013903          	ld	s2,0(sp)
    800029e4:	02010113          	addi	sp,sp,32
    800029e8:	00008067          	ret

00000000800029ec <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    800029ec:	fe010113          	addi	sp,sp,-32
    800029f0:	00113c23          	sd	ra,24(sp)
    800029f4:	00813823          	sd	s0,16(sp)
    800029f8:	00913423          	sd	s1,8(sp)
    800029fc:	01213023          	sd	s2,0(sp)
    80002a00:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80002a04:	00000493          	li	s1,0
    80002a08:	0400006f          	j	80002a48 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80002a0c:	00003517          	auipc	a0,0x3
    80002a10:	69450513          	addi	a0,a0,1684 # 800060a0 <CONSOLE_STATUS+0x90>
    80002a14:	00000097          	auipc	ra,0x0
    80002a18:	3f4080e7          	jalr	1012(ra) # 80002e08 <_Z11printStringPKc>
    80002a1c:	00000613          	li	a2,0
    80002a20:	00a00593          	li	a1,10
    80002a24:	00048513          	mv	a0,s1
    80002a28:	00000097          	auipc	ra,0x0
    80002a2c:	590080e7          	jalr	1424(ra) # 80002fb8 <_Z8printIntiii>
    80002a30:	00004517          	auipc	a0,0x4
    80002a34:	9e850513          	addi	a0,a0,-1560 # 80006418 <CONSOLE_STATUS+0x408>
    80002a38:	00000097          	auipc	ra,0x0
    80002a3c:	3d0080e7          	jalr	976(ra) # 80002e08 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80002a40:	0014849b          	addiw	s1,s1,1
    80002a44:	0ff4f493          	andi	s1,s1,255
    80002a48:	00200793          	li	a5,2
    80002a4c:	fc97f0e3          	bgeu	a5,s1,80002a0c <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80002a50:	00003517          	auipc	a0,0x3
    80002a54:	65850513          	addi	a0,a0,1624 # 800060a8 <CONSOLE_STATUS+0x98>
    80002a58:	00000097          	auipc	ra,0x0
    80002a5c:	3b0080e7          	jalr	944(ra) # 80002e08 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80002a60:	00700313          	li	t1,7
    thread_dispatch();
    80002a64:	fffff097          	auipc	ra,0xfffff
    80002a68:	914080e7          	jalr	-1772(ra) # 80001378 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80002a6c:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80002a70:	00003517          	auipc	a0,0x3
    80002a74:	64850513          	addi	a0,a0,1608 # 800060b8 <CONSOLE_STATUS+0xa8>
    80002a78:	00000097          	auipc	ra,0x0
    80002a7c:	390080e7          	jalr	912(ra) # 80002e08 <_Z11printStringPKc>
    80002a80:	00000613          	li	a2,0
    80002a84:	00a00593          	li	a1,10
    80002a88:	0009051b          	sext.w	a0,s2
    80002a8c:	00000097          	auipc	ra,0x0
    80002a90:	52c080e7          	jalr	1324(ra) # 80002fb8 <_Z8printIntiii>
    80002a94:	00004517          	auipc	a0,0x4
    80002a98:	98450513          	addi	a0,a0,-1660 # 80006418 <CONSOLE_STATUS+0x408>
    80002a9c:	00000097          	auipc	ra,0x0
    80002aa0:	36c080e7          	jalr	876(ra) # 80002e08 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80002aa4:	00c00513          	li	a0,12
    80002aa8:	00000097          	auipc	ra,0x0
    80002aac:	d88080e7          	jalr	-632(ra) # 80002830 <_ZL9fibonaccim>
    80002ab0:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80002ab4:	00003517          	auipc	a0,0x3
    80002ab8:	60c50513          	addi	a0,a0,1548 # 800060c0 <CONSOLE_STATUS+0xb0>
    80002abc:	00000097          	auipc	ra,0x0
    80002ac0:	34c080e7          	jalr	844(ra) # 80002e08 <_Z11printStringPKc>
    80002ac4:	00000613          	li	a2,0
    80002ac8:	00a00593          	li	a1,10
    80002acc:	0009051b          	sext.w	a0,s2
    80002ad0:	00000097          	auipc	ra,0x0
    80002ad4:	4e8080e7          	jalr	1256(ra) # 80002fb8 <_Z8printIntiii>
    80002ad8:	00004517          	auipc	a0,0x4
    80002adc:	94050513          	addi	a0,a0,-1728 # 80006418 <CONSOLE_STATUS+0x408>
    80002ae0:	00000097          	auipc	ra,0x0
    80002ae4:	328080e7          	jalr	808(ra) # 80002e08 <_Z11printStringPKc>
    80002ae8:	0400006f          	j	80002b28 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80002aec:	00003517          	auipc	a0,0x3
    80002af0:	5b450513          	addi	a0,a0,1460 # 800060a0 <CONSOLE_STATUS+0x90>
    80002af4:	00000097          	auipc	ra,0x0
    80002af8:	314080e7          	jalr	788(ra) # 80002e08 <_Z11printStringPKc>
    80002afc:	00000613          	li	a2,0
    80002b00:	00a00593          	li	a1,10
    80002b04:	00048513          	mv	a0,s1
    80002b08:	00000097          	auipc	ra,0x0
    80002b0c:	4b0080e7          	jalr	1200(ra) # 80002fb8 <_Z8printIntiii>
    80002b10:	00004517          	auipc	a0,0x4
    80002b14:	90850513          	addi	a0,a0,-1784 # 80006418 <CONSOLE_STATUS+0x408>
    80002b18:	00000097          	auipc	ra,0x0
    80002b1c:	2f0080e7          	jalr	752(ra) # 80002e08 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80002b20:	0014849b          	addiw	s1,s1,1
    80002b24:	0ff4f493          	andi	s1,s1,255
    80002b28:	00500793          	li	a5,5
    80002b2c:	fc97f0e3          	bgeu	a5,s1,80002aec <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80002b30:	00003517          	auipc	a0,0x3
    80002b34:	54850513          	addi	a0,a0,1352 # 80006078 <CONSOLE_STATUS+0x68>
    80002b38:	00000097          	auipc	ra,0x0
    80002b3c:	2d0080e7          	jalr	720(ra) # 80002e08 <_Z11printStringPKc>
    finishedC = true;
    80002b40:	00100793          	li	a5,1
    80002b44:	00005717          	auipc	a4,0x5
    80002b48:	88f708a3          	sb	a5,-1903(a4) # 800073d5 <_ZL9finishedC>
    thread_dispatch();
    80002b4c:	fffff097          	auipc	ra,0xfffff
    80002b50:	82c080e7          	jalr	-2004(ra) # 80001378 <_Z15thread_dispatchv>
}
    80002b54:	01813083          	ld	ra,24(sp)
    80002b58:	01013403          	ld	s0,16(sp)
    80002b5c:	00813483          	ld	s1,8(sp)
    80002b60:	00013903          	ld	s2,0(sp)
    80002b64:	02010113          	addi	sp,sp,32
    80002b68:	00008067          	ret

0000000080002b6c <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80002b6c:	fe010113          	addi	sp,sp,-32
    80002b70:	00113c23          	sd	ra,24(sp)
    80002b74:	00813823          	sd	s0,16(sp)
    80002b78:	00913423          	sd	s1,8(sp)
    80002b7c:	01213023          	sd	s2,0(sp)
    80002b80:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80002b84:	00000913          	li	s2,0
    80002b88:	0380006f          	j	80002bc0 <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    80002b8c:	ffffe097          	auipc	ra,0xffffe
    80002b90:	7ec080e7          	jalr	2028(ra) # 80001378 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80002b94:	00148493          	addi	s1,s1,1
    80002b98:	000027b7          	lui	a5,0x2
    80002b9c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80002ba0:	0097ee63          	bltu	a5,s1,80002bbc <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80002ba4:	00000713          	li	a4,0
    80002ba8:	000077b7          	lui	a5,0x7
    80002bac:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80002bb0:	fce7eee3          	bltu	a5,a4,80002b8c <_ZL11workerBodyBPv+0x20>
    80002bb4:	00170713          	addi	a4,a4,1
    80002bb8:	ff1ff06f          	j	80002ba8 <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80002bbc:	00190913          	addi	s2,s2,1
    80002bc0:	00f00793          	li	a5,15
    80002bc4:	0527e063          	bltu	a5,s2,80002c04 <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80002bc8:	00003517          	auipc	a0,0x3
    80002bcc:	4c050513          	addi	a0,a0,1216 # 80006088 <CONSOLE_STATUS+0x78>
    80002bd0:	00000097          	auipc	ra,0x0
    80002bd4:	238080e7          	jalr	568(ra) # 80002e08 <_Z11printStringPKc>
    80002bd8:	00000613          	li	a2,0
    80002bdc:	00a00593          	li	a1,10
    80002be0:	0009051b          	sext.w	a0,s2
    80002be4:	00000097          	auipc	ra,0x0
    80002be8:	3d4080e7          	jalr	980(ra) # 80002fb8 <_Z8printIntiii>
    80002bec:	00004517          	auipc	a0,0x4
    80002bf0:	82c50513          	addi	a0,a0,-2004 # 80006418 <CONSOLE_STATUS+0x408>
    80002bf4:	00000097          	auipc	ra,0x0
    80002bf8:	214080e7          	jalr	532(ra) # 80002e08 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80002bfc:	00000493          	li	s1,0
    80002c00:	f99ff06f          	j	80002b98 <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    80002c04:	00003517          	auipc	a0,0x3
    80002c08:	48c50513          	addi	a0,a0,1164 # 80006090 <CONSOLE_STATUS+0x80>
    80002c0c:	00000097          	auipc	ra,0x0
    80002c10:	1fc080e7          	jalr	508(ra) # 80002e08 <_Z11printStringPKc>
    finishedB = true;
    80002c14:	00100793          	li	a5,1
    80002c18:	00004717          	auipc	a4,0x4
    80002c1c:	7af70f23          	sb	a5,1982(a4) # 800073d6 <_ZL9finishedB>
    thread_dispatch();
    80002c20:	ffffe097          	auipc	ra,0xffffe
    80002c24:	758080e7          	jalr	1880(ra) # 80001378 <_Z15thread_dispatchv>
}
    80002c28:	01813083          	ld	ra,24(sp)
    80002c2c:	01013403          	ld	s0,16(sp)
    80002c30:	00813483          	ld	s1,8(sp)
    80002c34:	00013903          	ld	s2,0(sp)
    80002c38:	02010113          	addi	sp,sp,32
    80002c3c:	00008067          	ret

0000000080002c40 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80002c40:	fe010113          	addi	sp,sp,-32
    80002c44:	00113c23          	sd	ra,24(sp)
    80002c48:	00813823          	sd	s0,16(sp)
    80002c4c:	00913423          	sd	s1,8(sp)
    80002c50:	01213023          	sd	s2,0(sp)
    80002c54:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80002c58:	00000913          	li	s2,0
    80002c5c:	0380006f          	j	80002c94 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80002c60:	ffffe097          	auipc	ra,0xffffe
    80002c64:	718080e7          	jalr	1816(ra) # 80001378 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80002c68:	00148493          	addi	s1,s1,1
    80002c6c:	000027b7          	lui	a5,0x2
    80002c70:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80002c74:	0097ee63          	bltu	a5,s1,80002c90 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80002c78:	00000713          	li	a4,0
    80002c7c:	000077b7          	lui	a5,0x7
    80002c80:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80002c84:	fce7eee3          	bltu	a5,a4,80002c60 <_ZL11workerBodyAPv+0x20>
    80002c88:	00170713          	addi	a4,a4,1
    80002c8c:	ff1ff06f          	j	80002c7c <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80002c90:	00190913          	addi	s2,s2,1
    80002c94:	00900793          	li	a5,9
    80002c98:	0527e063          	bltu	a5,s2,80002cd8 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80002c9c:	00003517          	auipc	a0,0x3
    80002ca0:	3d450513          	addi	a0,a0,980 # 80006070 <CONSOLE_STATUS+0x60>
    80002ca4:	00000097          	auipc	ra,0x0
    80002ca8:	164080e7          	jalr	356(ra) # 80002e08 <_Z11printStringPKc>
    80002cac:	00000613          	li	a2,0
    80002cb0:	00a00593          	li	a1,10
    80002cb4:	0009051b          	sext.w	a0,s2
    80002cb8:	00000097          	auipc	ra,0x0
    80002cbc:	300080e7          	jalr	768(ra) # 80002fb8 <_Z8printIntiii>
    80002cc0:	00003517          	auipc	a0,0x3
    80002cc4:	75850513          	addi	a0,a0,1880 # 80006418 <CONSOLE_STATUS+0x408>
    80002cc8:	00000097          	auipc	ra,0x0
    80002ccc:	140080e7          	jalr	320(ra) # 80002e08 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80002cd0:	00000493          	li	s1,0
    80002cd4:	f99ff06f          	j	80002c6c <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80002cd8:	00003517          	auipc	a0,0x3
    80002cdc:	3a050513          	addi	a0,a0,928 # 80006078 <CONSOLE_STATUS+0x68>
    80002ce0:	00000097          	auipc	ra,0x0
    80002ce4:	128080e7          	jalr	296(ra) # 80002e08 <_Z11printStringPKc>
    finishedA = true;
    80002ce8:	00100793          	li	a5,1
    80002cec:	00004717          	auipc	a4,0x4
    80002cf0:	6ef705a3          	sb	a5,1771(a4) # 800073d7 <_ZL9finishedA>
}
    80002cf4:	01813083          	ld	ra,24(sp)
    80002cf8:	01013403          	ld	s0,16(sp)
    80002cfc:	00813483          	ld	s1,8(sp)
    80002d00:	00013903          	ld	s2,0(sp)
    80002d04:	02010113          	addi	sp,sp,32
    80002d08:	00008067          	ret

0000000080002d0c <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80002d0c:	fd010113          	addi	sp,sp,-48
    80002d10:	02113423          	sd	ra,40(sp)
    80002d14:	02813023          	sd	s0,32(sp)
    80002d18:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80002d1c:	00000613          	li	a2,0
    80002d20:	00000597          	auipc	a1,0x0
    80002d24:	f2058593          	addi	a1,a1,-224 # 80002c40 <_ZL11workerBodyAPv>
    80002d28:	fd040513          	addi	a0,s0,-48
    80002d2c:	ffffe097          	auipc	ra,0xffffe
    80002d30:	5c4080e7          	jalr	1476(ra) # 800012f0 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadA created\n");
    80002d34:	00003517          	auipc	a0,0x3
    80002d38:	3d450513          	addi	a0,a0,980 # 80006108 <CONSOLE_STATUS+0xf8>
    80002d3c:	00000097          	auipc	ra,0x0
    80002d40:	0cc080e7          	jalr	204(ra) # 80002e08 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80002d44:	00000613          	li	a2,0
    80002d48:	00000597          	auipc	a1,0x0
    80002d4c:	e2458593          	addi	a1,a1,-476 # 80002b6c <_ZL11workerBodyBPv>
    80002d50:	fd840513          	addi	a0,s0,-40
    80002d54:	ffffe097          	auipc	ra,0xffffe
    80002d58:	59c080e7          	jalr	1436(ra) # 800012f0 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadB created\n");
    80002d5c:	00003517          	auipc	a0,0x3
    80002d60:	3c450513          	addi	a0,a0,964 # 80006120 <CONSOLE_STATUS+0x110>
    80002d64:	00000097          	auipc	ra,0x0
    80002d68:	0a4080e7          	jalr	164(ra) # 80002e08 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80002d6c:	00000613          	li	a2,0
    80002d70:	00000597          	auipc	a1,0x0
    80002d74:	c7c58593          	addi	a1,a1,-900 # 800029ec <_ZL11workerBodyCPv>
    80002d78:	fe040513          	addi	a0,s0,-32
    80002d7c:	ffffe097          	auipc	ra,0xffffe
    80002d80:	574080e7          	jalr	1396(ra) # 800012f0 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadC created\n");
    80002d84:	00003517          	auipc	a0,0x3
    80002d88:	3b450513          	addi	a0,a0,948 # 80006138 <CONSOLE_STATUS+0x128>
    80002d8c:	00000097          	auipc	ra,0x0
    80002d90:	07c080e7          	jalr	124(ra) # 80002e08 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80002d94:	00000613          	li	a2,0
    80002d98:	00000597          	auipc	a1,0x0
    80002d9c:	b0c58593          	addi	a1,a1,-1268 # 800028a4 <_ZL11workerBodyDPv>
    80002da0:	fe840513          	addi	a0,s0,-24
    80002da4:	ffffe097          	auipc	ra,0xffffe
    80002da8:	54c080e7          	jalr	1356(ra) # 800012f0 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadD created\n");
    80002dac:	00003517          	auipc	a0,0x3
    80002db0:	3a450513          	addi	a0,a0,932 # 80006150 <CONSOLE_STATUS+0x140>
    80002db4:	00000097          	auipc	ra,0x0
    80002db8:	054080e7          	jalr	84(ra) # 80002e08 <_Z11printStringPKc>
    80002dbc:	00c0006f          	j	80002dc8 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80002dc0:	ffffe097          	auipc	ra,0xffffe
    80002dc4:	5b8080e7          	jalr	1464(ra) # 80001378 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80002dc8:	00004797          	auipc	a5,0x4
    80002dcc:	60f7c783          	lbu	a5,1551(a5) # 800073d7 <_ZL9finishedA>
    80002dd0:	fe0788e3          	beqz	a5,80002dc0 <_Z18Threads_C_API_testv+0xb4>
    80002dd4:	00004797          	auipc	a5,0x4
    80002dd8:	6027c783          	lbu	a5,1538(a5) # 800073d6 <_ZL9finishedB>
    80002ddc:	fe0782e3          	beqz	a5,80002dc0 <_Z18Threads_C_API_testv+0xb4>
    80002de0:	00004797          	auipc	a5,0x4
    80002de4:	5f57c783          	lbu	a5,1525(a5) # 800073d5 <_ZL9finishedC>
    80002de8:	fc078ce3          	beqz	a5,80002dc0 <_Z18Threads_C_API_testv+0xb4>
    80002dec:	00004797          	auipc	a5,0x4
    80002df0:	5e87c783          	lbu	a5,1512(a5) # 800073d4 <_ZL9finishedD>
    80002df4:	fc0786e3          	beqz	a5,80002dc0 <_Z18Threads_C_API_testv+0xb4>
    }

}
    80002df8:	02813083          	ld	ra,40(sp)
    80002dfc:	02013403          	ld	s0,32(sp)
    80002e00:	03010113          	addi	sp,sp,48
    80002e04:	00008067          	ret

0000000080002e08 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80002e08:	fe010113          	addi	sp,sp,-32
    80002e0c:	00113c23          	sd	ra,24(sp)
    80002e10:	00813823          	sd	s0,16(sp)
    80002e14:	00913423          	sd	s1,8(sp)
    80002e18:	02010413          	addi	s0,sp,32
    80002e1c:	00050493          	mv	s1,a0
    LOCK();
    80002e20:	00100613          	li	a2,1
    80002e24:	00000593          	li	a1,0
    80002e28:	00004517          	auipc	a0,0x4
    80002e2c:	5b050513          	addi	a0,a0,1456 # 800073d8 <lockPrint>
    80002e30:	ffffe097          	auipc	ra,0xffffe
    80002e34:	41c080e7          	jalr	1052(ra) # 8000124c <copy_and_swap>
    80002e38:	00050863          	beqz	a0,80002e48 <_Z11printStringPKc+0x40>
    80002e3c:	ffffe097          	auipc	ra,0xffffe
    80002e40:	53c080e7          	jalr	1340(ra) # 80001378 <_Z15thread_dispatchv>
    80002e44:	fddff06f          	j	80002e20 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80002e48:	0004c503          	lbu	a0,0(s1)
    80002e4c:	00050a63          	beqz	a0,80002e60 <_Z11printStringPKc+0x58>
    {
        putc(*string);
    80002e50:	fffff097          	auipc	ra,0xfffff
    80002e54:	ff4080e7          	jalr	-12(ra) # 80001e44 <_Z4putcc>
        string++;
    80002e58:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80002e5c:	fedff06f          	j	80002e48 <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    80002e60:	00000613          	li	a2,0
    80002e64:	00100593          	li	a1,1
    80002e68:	00004517          	auipc	a0,0x4
    80002e6c:	57050513          	addi	a0,a0,1392 # 800073d8 <lockPrint>
    80002e70:	ffffe097          	auipc	ra,0xffffe
    80002e74:	3dc080e7          	jalr	988(ra) # 8000124c <copy_and_swap>
    80002e78:	fe0514e3          	bnez	a0,80002e60 <_Z11printStringPKc+0x58>
}
    80002e7c:	01813083          	ld	ra,24(sp)
    80002e80:	01013403          	ld	s0,16(sp)
    80002e84:	00813483          	ld	s1,8(sp)
    80002e88:	02010113          	addi	sp,sp,32
    80002e8c:	00008067          	ret

0000000080002e90 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80002e90:	fd010113          	addi	sp,sp,-48
    80002e94:	02113423          	sd	ra,40(sp)
    80002e98:	02813023          	sd	s0,32(sp)
    80002e9c:	00913c23          	sd	s1,24(sp)
    80002ea0:	01213823          	sd	s2,16(sp)
    80002ea4:	01313423          	sd	s3,8(sp)
    80002ea8:	01413023          	sd	s4,0(sp)
    80002eac:	03010413          	addi	s0,sp,48
    80002eb0:	00050993          	mv	s3,a0
    80002eb4:	00058a13          	mv	s4,a1
    LOCK();
    80002eb8:	00100613          	li	a2,1
    80002ebc:	00000593          	li	a1,0
    80002ec0:	00004517          	auipc	a0,0x4
    80002ec4:	51850513          	addi	a0,a0,1304 # 800073d8 <lockPrint>
    80002ec8:	ffffe097          	auipc	ra,0xffffe
    80002ecc:	384080e7          	jalr	900(ra) # 8000124c <copy_and_swap>
    80002ed0:	00050863          	beqz	a0,80002ee0 <_Z9getStringPci+0x50>
    80002ed4:	ffffe097          	auipc	ra,0xffffe
    80002ed8:	4a4080e7          	jalr	1188(ra) # 80001378 <_Z15thread_dispatchv>
    80002edc:	fddff06f          	j	80002eb8 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80002ee0:	00000913          	li	s2,0
    80002ee4:	00090493          	mv	s1,s2
    80002ee8:	0019091b          	addiw	s2,s2,1
    80002eec:	03495a63          	bge	s2,s4,80002f20 <_Z9getStringPci+0x90>
        cc = getc();
    80002ef0:	fffff097          	auipc	ra,0xfffff
    80002ef4:	f7c080e7          	jalr	-132(ra) # 80001e6c <_Z4getcv>
        if(cc < 1)
    80002ef8:	02050463          	beqz	a0,80002f20 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    80002efc:	009984b3          	add	s1,s3,s1
    80002f00:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80002f04:	00a00793          	li	a5,10
    80002f08:	00f50a63          	beq	a0,a5,80002f1c <_Z9getStringPci+0x8c>
    80002f0c:	00d00793          	li	a5,13
    80002f10:	fcf51ae3          	bne	a0,a5,80002ee4 <_Z9getStringPci+0x54>
        buf[i++] = c;
    80002f14:	00090493          	mv	s1,s2
    80002f18:	0080006f          	j	80002f20 <_Z9getStringPci+0x90>
    80002f1c:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80002f20:	009984b3          	add	s1,s3,s1
    80002f24:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80002f28:	00000613          	li	a2,0
    80002f2c:	00100593          	li	a1,1
    80002f30:	00004517          	auipc	a0,0x4
    80002f34:	4a850513          	addi	a0,a0,1192 # 800073d8 <lockPrint>
    80002f38:	ffffe097          	auipc	ra,0xffffe
    80002f3c:	314080e7          	jalr	788(ra) # 8000124c <copy_and_swap>
    80002f40:	fe0514e3          	bnez	a0,80002f28 <_Z9getStringPci+0x98>
    return buf;
}
    80002f44:	00098513          	mv	a0,s3
    80002f48:	02813083          	ld	ra,40(sp)
    80002f4c:	02013403          	ld	s0,32(sp)
    80002f50:	01813483          	ld	s1,24(sp)
    80002f54:	01013903          	ld	s2,16(sp)
    80002f58:	00813983          	ld	s3,8(sp)
    80002f5c:	00013a03          	ld	s4,0(sp)
    80002f60:	03010113          	addi	sp,sp,48
    80002f64:	00008067          	ret

0000000080002f68 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80002f68:	ff010113          	addi	sp,sp,-16
    80002f6c:	00813423          	sd	s0,8(sp)
    80002f70:	01010413          	addi	s0,sp,16
    80002f74:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80002f78:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80002f7c:	0006c603          	lbu	a2,0(a3)
    80002f80:	fd06071b          	addiw	a4,a2,-48
    80002f84:	0ff77713          	andi	a4,a4,255
    80002f88:	00900793          	li	a5,9
    80002f8c:	02e7e063          	bltu	a5,a4,80002fac <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80002f90:	0025179b          	slliw	a5,a0,0x2
    80002f94:	00a787bb          	addw	a5,a5,a0
    80002f98:	0017979b          	slliw	a5,a5,0x1
    80002f9c:	00168693          	addi	a3,a3,1
    80002fa0:	00c787bb          	addw	a5,a5,a2
    80002fa4:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80002fa8:	fd5ff06f          	j	80002f7c <_Z11stringToIntPKc+0x14>
    return n;
}
    80002fac:	00813403          	ld	s0,8(sp)
    80002fb0:	01010113          	addi	sp,sp,16
    80002fb4:	00008067          	ret

0000000080002fb8 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80002fb8:	fc010113          	addi	sp,sp,-64
    80002fbc:	02113c23          	sd	ra,56(sp)
    80002fc0:	02813823          	sd	s0,48(sp)
    80002fc4:	02913423          	sd	s1,40(sp)
    80002fc8:	03213023          	sd	s2,32(sp)
    80002fcc:	01313c23          	sd	s3,24(sp)
    80002fd0:	04010413          	addi	s0,sp,64
    80002fd4:	00050493          	mv	s1,a0
    80002fd8:	00058913          	mv	s2,a1
    80002fdc:	00060993          	mv	s3,a2
    LOCK();
    80002fe0:	00100613          	li	a2,1
    80002fe4:	00000593          	li	a1,0
    80002fe8:	00004517          	auipc	a0,0x4
    80002fec:	3f050513          	addi	a0,a0,1008 # 800073d8 <lockPrint>
    80002ff0:	ffffe097          	auipc	ra,0xffffe
    80002ff4:	25c080e7          	jalr	604(ra) # 8000124c <copy_and_swap>
    80002ff8:	00050863          	beqz	a0,80003008 <_Z8printIntiii+0x50>
    80002ffc:	ffffe097          	auipc	ra,0xffffe
    80003000:	37c080e7          	jalr	892(ra) # 80001378 <_Z15thread_dispatchv>
    80003004:	fddff06f          	j	80002fe0 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80003008:	00098463          	beqz	s3,80003010 <_Z8printIntiii+0x58>
    8000300c:	0804c463          	bltz	s1,80003094 <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80003010:	0004851b          	sext.w	a0,s1
    neg = 0;
    80003014:	00000593          	li	a1,0
    }

    i = 0;
    80003018:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    8000301c:	0009079b          	sext.w	a5,s2
    80003020:	0325773b          	remuw	a4,a0,s2
    80003024:	00048613          	mv	a2,s1
    80003028:	0014849b          	addiw	s1,s1,1
    8000302c:	02071693          	slli	a3,a4,0x20
    80003030:	0206d693          	srli	a3,a3,0x20
    80003034:	00004717          	auipc	a4,0x4
    80003038:	2bc70713          	addi	a4,a4,700 # 800072f0 <digits>
    8000303c:	00d70733          	add	a4,a4,a3
    80003040:	00074683          	lbu	a3,0(a4)
    80003044:	fd040713          	addi	a4,s0,-48
    80003048:	00c70733          	add	a4,a4,a2
    8000304c:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80003050:	0005071b          	sext.w	a4,a0
    80003054:	0325553b          	divuw	a0,a0,s2
    80003058:	fcf772e3          	bgeu	a4,a5,8000301c <_Z8printIntiii+0x64>
    if(neg)
    8000305c:	00058c63          	beqz	a1,80003074 <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    80003060:	fd040793          	addi	a5,s0,-48
    80003064:	009784b3          	add	s1,a5,s1
    80003068:	02d00793          	li	a5,45
    8000306c:	fef48823          	sb	a5,-16(s1)
    80003070:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80003074:	fff4849b          	addiw	s1,s1,-1
    80003078:	0204c463          	bltz	s1,800030a0 <_Z8printIntiii+0xe8>
        putc(buf[i]);
    8000307c:	fd040793          	addi	a5,s0,-48
    80003080:	009787b3          	add	a5,a5,s1
    80003084:	ff07c503          	lbu	a0,-16(a5)
    80003088:	fffff097          	auipc	ra,0xfffff
    8000308c:	dbc080e7          	jalr	-580(ra) # 80001e44 <_Z4putcc>
    80003090:	fe5ff06f          	j	80003074 <_Z8printIntiii+0xbc>
        x = -xx;
    80003094:	4090053b          	negw	a0,s1
        neg = 1;
    80003098:	00100593          	li	a1,1
        x = -xx;
    8000309c:	f7dff06f          	j	80003018 <_Z8printIntiii+0x60>

    UNLOCK();
    800030a0:	00000613          	li	a2,0
    800030a4:	00100593          	li	a1,1
    800030a8:	00004517          	auipc	a0,0x4
    800030ac:	33050513          	addi	a0,a0,816 # 800073d8 <lockPrint>
    800030b0:	ffffe097          	auipc	ra,0xffffe
    800030b4:	19c080e7          	jalr	412(ra) # 8000124c <copy_and_swap>
    800030b8:	fe0514e3          	bnez	a0,800030a0 <_Z8printIntiii+0xe8>
    800030bc:	03813083          	ld	ra,56(sp)
    800030c0:	03013403          	ld	s0,48(sp)
    800030c4:	02813483          	ld	s1,40(sp)
    800030c8:	02013903          	ld	s2,32(sp)
    800030cc:	01813983          	ld	s3,24(sp)
    800030d0:	04010113          	addi	sp,sp,64
    800030d4:	00008067          	ret

00000000800030d8 <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    800030d8:	fe010113          	addi	sp,sp,-32
    800030dc:	00113c23          	sd	ra,24(sp)
    800030e0:	00813823          	sd	s0,16(sp)
    800030e4:	00913423          	sd	s1,8(sp)
    800030e8:	01213023          	sd	s2,0(sp)
    800030ec:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    800030f0:	00003517          	auipc	a0,0x3
    800030f4:	07850513          	addi	a0,a0,120 # 80006168 <CONSOLE_STATUS+0x158>
    800030f8:	00000097          	auipc	ra,0x0
    800030fc:	d10080e7          	jalr	-752(ra) # 80002e08 <_Z11printStringPKc>
    int test = getc() - '0';
    80003100:	fffff097          	auipc	ra,0xfffff
    80003104:	d6c080e7          	jalr	-660(ra) # 80001e6c <_Z4getcv>
    80003108:	0005091b          	sext.w	s2,a0
    8000310c:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    80003110:	fffff097          	auipc	ra,0xfffff
    80003114:	d5c080e7          	jalr	-676(ra) # 80001e6c <_Z4getcv>
            printString("Nije navedeno da je zadatak 2 implementiran\n");
            return;
        }
    }

    if (test >= 3 && test <= 4) {
    80003118:	fcd9071b          	addiw	a4,s2,-51
    8000311c:	00100793          	li	a5,1
    80003120:	04e7f663          	bgeu	a5,a4,8000316c <_Z8userMainv+0x94>
            printString("Nije navedeno da je zadatak 3 implementiran\n");
            return;
        }
    }

    if (test >= 5 && test <= 6) {
    80003124:	fcb9091b          	addiw	s2,s2,-53
    80003128:	00100793          	li	a5,1
    8000312c:	0727f463          	bgeu	a5,s2,80003194 <_Z8userMainv+0xbc>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    80003130:	00600793          	li	a5,6
    80003134:	0697ca63          	blt	a5,s1,800031a8 <_Z8userMainv+0xd0>
    80003138:	00300793          	li	a5,3
    8000313c:	04f4d063          	bge	s1,a5,8000317c <_Z8userMainv+0xa4>
    80003140:	00100793          	li	a5,1
    80003144:	08f48c63          	beq	s1,a5,800031dc <_Z8userMainv+0x104>
    80003148:	00200793          	li	a5,2
    8000314c:	0af49663          	bne	s1,a5,800031f8 <_Z8userMainv+0x120>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
#endif
            break;
        case 2:
#if LEVEL_2_IMPLEMENTED == 1
            Threads_CPP_API_test();
    80003150:	fffff097          	auipc	ra,0xfffff
    80003154:	220080e7          	jalr	544(ra) # 80002370 <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    80003158:	00003517          	auipc	a0,0x3
    8000315c:	0d050513          	addi	a0,a0,208 # 80006228 <CONSOLE_STATUS+0x218>
    80003160:	00000097          	auipc	ra,0x0
    80003164:	ca8080e7          	jalr	-856(ra) # 80002e08 <_Z11printStringPKc>
#endif
            break;
    80003168:	0140006f          	j	8000317c <_Z8userMainv+0xa4>
            printString("Nije navedeno da je zadatak 3 implementiran\n");
    8000316c:	00003517          	auipc	a0,0x3
    80003170:	01c50513          	addi	a0,a0,28 # 80006188 <CONSOLE_STATUS+0x178>
    80003174:	00000097          	auipc	ra,0x0
    80003178:	c94080e7          	jalr	-876(ra) # 80002e08 <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    8000317c:	01813083          	ld	ra,24(sp)
    80003180:	01013403          	ld	s0,16(sp)
    80003184:	00813483          	ld	s1,8(sp)
    80003188:	00013903          	ld	s2,0(sp)
    8000318c:	02010113          	addi	sp,sp,32
    80003190:	00008067          	ret
            printString("Nije navedeno da je zadatak 4 implementiran\n");
    80003194:	00003517          	auipc	a0,0x3
    80003198:	02450513          	addi	a0,a0,36 # 800061b8 <CONSOLE_STATUS+0x1a8>
    8000319c:	00000097          	auipc	ra,0x0
    800031a0:	c6c080e7          	jalr	-916(ra) # 80002e08 <_Z11printStringPKc>
            return;
    800031a4:	fd9ff06f          	j	8000317c <_Z8userMainv+0xa4>
    switch (test) {
    800031a8:	00700793          	li	a5,7
    800031ac:	04f49663          	bne	s1,a5,800031f8 <_Z8userMainv+0x120>
            System_Mode_test();
    800031b0:	00000097          	auipc	ra,0x0
    800031b4:	548080e7          	jalr	1352(ra) # 800036f8 <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    800031b8:	00003517          	auipc	a0,0x3
    800031bc:	0b050513          	addi	a0,a0,176 # 80006268 <CONSOLE_STATUS+0x258>
    800031c0:	00000097          	auipc	ra,0x0
    800031c4:	c48080e7          	jalr	-952(ra) # 80002e08 <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    800031c8:	00003517          	auipc	a0,0x3
    800031cc:	0c050513          	addi	a0,a0,192 # 80006288 <CONSOLE_STATUS+0x278>
    800031d0:	00000097          	auipc	ra,0x0
    800031d4:	c38080e7          	jalr	-968(ra) # 80002e08 <_Z11printStringPKc>
            break;
    800031d8:	fa5ff06f          	j	8000317c <_Z8userMainv+0xa4>
            Threads_C_API_test();
    800031dc:	00000097          	auipc	ra,0x0
    800031e0:	b30080e7          	jalr	-1232(ra) # 80002d0c <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    800031e4:	00003517          	auipc	a0,0x3
    800031e8:	00450513          	addi	a0,a0,4 # 800061e8 <CONSOLE_STATUS+0x1d8>
    800031ec:	00000097          	auipc	ra,0x0
    800031f0:	c1c080e7          	jalr	-996(ra) # 80002e08 <_Z11printStringPKc>
            break;
    800031f4:	f89ff06f          	j	8000317c <_Z8userMainv+0xa4>
            printString("Niste uneli odgovarajuci broj za test\n");
    800031f8:	00003517          	auipc	a0,0x3
    800031fc:	0e850513          	addi	a0,a0,232 # 800062e0 <CONSOLE_STATUS+0x2d0>
    80003200:	00000097          	auipc	ra,0x0
    80003204:	c08080e7          	jalr	-1016(ra) # 80002e08 <_Z11printStringPKc>
    80003208:	f75ff06f          	j	8000317c <_Z8userMainv+0xa4>

000000008000320c <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    8000320c:	fe010113          	addi	sp,sp,-32
    80003210:	00113c23          	sd	ra,24(sp)
    80003214:	00813823          	sd	s0,16(sp)
    80003218:	00913423          	sd	s1,8(sp)
    8000321c:	01213023          	sd	s2,0(sp)
    80003220:	02010413          	addi	s0,sp,32
    80003224:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80003228:	00100793          	li	a5,1
    8000322c:	02a7f863          	bgeu	a5,a0,8000325c <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80003230:	00a00793          	li	a5,10
    80003234:	02f577b3          	remu	a5,a0,a5
    80003238:	02078e63          	beqz	a5,80003274 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    8000323c:	fff48513          	addi	a0,s1,-1
    80003240:	00000097          	auipc	ra,0x0
    80003244:	fcc080e7          	jalr	-52(ra) # 8000320c <_ZL9fibonaccim>
    80003248:	00050913          	mv	s2,a0
    8000324c:	ffe48513          	addi	a0,s1,-2
    80003250:	00000097          	auipc	ra,0x0
    80003254:	fbc080e7          	jalr	-68(ra) # 8000320c <_ZL9fibonaccim>
    80003258:	00a90533          	add	a0,s2,a0
}
    8000325c:	01813083          	ld	ra,24(sp)
    80003260:	01013403          	ld	s0,16(sp)
    80003264:	00813483          	ld	s1,8(sp)
    80003268:	00013903          	ld	s2,0(sp)
    8000326c:	02010113          	addi	sp,sp,32
    80003270:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80003274:	ffffe097          	auipc	ra,0xffffe
    80003278:	104080e7          	jalr	260(ra) # 80001378 <_Z15thread_dispatchv>
    8000327c:	fc1ff06f          	j	8000323c <_ZL9fibonaccim+0x30>

0000000080003280 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80003280:	fe010113          	addi	sp,sp,-32
    80003284:	00113c23          	sd	ra,24(sp)
    80003288:	00813823          	sd	s0,16(sp)
    8000328c:	00913423          	sd	s1,8(sp)
    80003290:	01213023          	sd	s2,0(sp)
    80003294:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80003298:	00a00493          	li	s1,10
    8000329c:	0400006f          	j	800032dc <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800032a0:	00003517          	auipc	a0,0x3
    800032a4:	e3050513          	addi	a0,a0,-464 # 800060d0 <CONSOLE_STATUS+0xc0>
    800032a8:	00000097          	auipc	ra,0x0
    800032ac:	b60080e7          	jalr	-1184(ra) # 80002e08 <_Z11printStringPKc>
    800032b0:	00000613          	li	a2,0
    800032b4:	00a00593          	li	a1,10
    800032b8:	00048513          	mv	a0,s1
    800032bc:	00000097          	auipc	ra,0x0
    800032c0:	cfc080e7          	jalr	-772(ra) # 80002fb8 <_Z8printIntiii>
    800032c4:	00003517          	auipc	a0,0x3
    800032c8:	15450513          	addi	a0,a0,340 # 80006418 <CONSOLE_STATUS+0x408>
    800032cc:	00000097          	auipc	ra,0x0
    800032d0:	b3c080e7          	jalr	-1220(ra) # 80002e08 <_Z11printStringPKc>
    for (; i < 13; i++) {
    800032d4:	0014849b          	addiw	s1,s1,1
    800032d8:	0ff4f493          	andi	s1,s1,255
    800032dc:	00c00793          	li	a5,12
    800032e0:	fc97f0e3          	bgeu	a5,s1,800032a0 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    800032e4:	00003517          	auipc	a0,0x3
    800032e8:	df450513          	addi	a0,a0,-524 # 800060d8 <CONSOLE_STATUS+0xc8>
    800032ec:	00000097          	auipc	ra,0x0
    800032f0:	b1c080e7          	jalr	-1252(ra) # 80002e08 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800032f4:	00500313          	li	t1,5
    thread_dispatch();
    800032f8:	ffffe097          	auipc	ra,0xffffe
    800032fc:	080080e7          	jalr	128(ra) # 80001378 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80003300:	01000513          	li	a0,16
    80003304:	00000097          	auipc	ra,0x0
    80003308:	f08080e7          	jalr	-248(ra) # 8000320c <_ZL9fibonaccim>
    8000330c:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80003310:	00003517          	auipc	a0,0x3
    80003314:	dd850513          	addi	a0,a0,-552 # 800060e8 <CONSOLE_STATUS+0xd8>
    80003318:	00000097          	auipc	ra,0x0
    8000331c:	af0080e7          	jalr	-1296(ra) # 80002e08 <_Z11printStringPKc>
    80003320:	00000613          	li	a2,0
    80003324:	00a00593          	li	a1,10
    80003328:	0009051b          	sext.w	a0,s2
    8000332c:	00000097          	auipc	ra,0x0
    80003330:	c8c080e7          	jalr	-884(ra) # 80002fb8 <_Z8printIntiii>
    80003334:	00003517          	auipc	a0,0x3
    80003338:	0e450513          	addi	a0,a0,228 # 80006418 <CONSOLE_STATUS+0x408>
    8000333c:	00000097          	auipc	ra,0x0
    80003340:	acc080e7          	jalr	-1332(ra) # 80002e08 <_Z11printStringPKc>
    80003344:	0400006f          	j	80003384 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003348:	00003517          	auipc	a0,0x3
    8000334c:	d8850513          	addi	a0,a0,-632 # 800060d0 <CONSOLE_STATUS+0xc0>
    80003350:	00000097          	auipc	ra,0x0
    80003354:	ab8080e7          	jalr	-1352(ra) # 80002e08 <_Z11printStringPKc>
    80003358:	00000613          	li	a2,0
    8000335c:	00a00593          	li	a1,10
    80003360:	00048513          	mv	a0,s1
    80003364:	00000097          	auipc	ra,0x0
    80003368:	c54080e7          	jalr	-940(ra) # 80002fb8 <_Z8printIntiii>
    8000336c:	00003517          	auipc	a0,0x3
    80003370:	0ac50513          	addi	a0,a0,172 # 80006418 <CONSOLE_STATUS+0x408>
    80003374:	00000097          	auipc	ra,0x0
    80003378:	a94080e7          	jalr	-1388(ra) # 80002e08 <_Z11printStringPKc>
    for (; i < 16; i++) {
    8000337c:	0014849b          	addiw	s1,s1,1
    80003380:	0ff4f493          	andi	s1,s1,255
    80003384:	00f00793          	li	a5,15
    80003388:	fc97f0e3          	bgeu	a5,s1,80003348 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    8000338c:	00003517          	auipc	a0,0x3
    80003390:	d6c50513          	addi	a0,a0,-660 # 800060f8 <CONSOLE_STATUS+0xe8>
    80003394:	00000097          	auipc	ra,0x0
    80003398:	a74080e7          	jalr	-1420(ra) # 80002e08 <_Z11printStringPKc>
    finishedD = true;
    8000339c:	00100793          	li	a5,1
    800033a0:	00004717          	auipc	a4,0x4
    800033a4:	04f70023          	sb	a5,64(a4) # 800073e0 <_ZL9finishedD>
    thread_dispatch();
    800033a8:	ffffe097          	auipc	ra,0xffffe
    800033ac:	fd0080e7          	jalr	-48(ra) # 80001378 <_Z15thread_dispatchv>
}
    800033b0:	01813083          	ld	ra,24(sp)
    800033b4:	01013403          	ld	s0,16(sp)
    800033b8:	00813483          	ld	s1,8(sp)
    800033bc:	00013903          	ld	s2,0(sp)
    800033c0:	02010113          	addi	sp,sp,32
    800033c4:	00008067          	ret

00000000800033c8 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    800033c8:	fe010113          	addi	sp,sp,-32
    800033cc:	00113c23          	sd	ra,24(sp)
    800033d0:	00813823          	sd	s0,16(sp)
    800033d4:	00913423          	sd	s1,8(sp)
    800033d8:	01213023          	sd	s2,0(sp)
    800033dc:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800033e0:	00000493          	li	s1,0
    800033e4:	0400006f          	j	80003424 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    800033e8:	00003517          	auipc	a0,0x3
    800033ec:	cb850513          	addi	a0,a0,-840 # 800060a0 <CONSOLE_STATUS+0x90>
    800033f0:	00000097          	auipc	ra,0x0
    800033f4:	a18080e7          	jalr	-1512(ra) # 80002e08 <_Z11printStringPKc>
    800033f8:	00000613          	li	a2,0
    800033fc:	00a00593          	li	a1,10
    80003400:	00048513          	mv	a0,s1
    80003404:	00000097          	auipc	ra,0x0
    80003408:	bb4080e7          	jalr	-1100(ra) # 80002fb8 <_Z8printIntiii>
    8000340c:	00003517          	auipc	a0,0x3
    80003410:	00c50513          	addi	a0,a0,12 # 80006418 <CONSOLE_STATUS+0x408>
    80003414:	00000097          	auipc	ra,0x0
    80003418:	9f4080e7          	jalr	-1548(ra) # 80002e08 <_Z11printStringPKc>
    for (; i < 3; i++) {
    8000341c:	0014849b          	addiw	s1,s1,1
    80003420:	0ff4f493          	andi	s1,s1,255
    80003424:	00200793          	li	a5,2
    80003428:	fc97f0e3          	bgeu	a5,s1,800033e8 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    8000342c:	00003517          	auipc	a0,0x3
    80003430:	c7c50513          	addi	a0,a0,-900 # 800060a8 <CONSOLE_STATUS+0x98>
    80003434:	00000097          	auipc	ra,0x0
    80003438:	9d4080e7          	jalr	-1580(ra) # 80002e08 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    8000343c:	00700313          	li	t1,7
    thread_dispatch();
    80003440:	ffffe097          	auipc	ra,0xffffe
    80003444:	f38080e7          	jalr	-200(ra) # 80001378 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80003448:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    8000344c:	00003517          	auipc	a0,0x3
    80003450:	c6c50513          	addi	a0,a0,-916 # 800060b8 <CONSOLE_STATUS+0xa8>
    80003454:	00000097          	auipc	ra,0x0
    80003458:	9b4080e7          	jalr	-1612(ra) # 80002e08 <_Z11printStringPKc>
    8000345c:	00000613          	li	a2,0
    80003460:	00a00593          	li	a1,10
    80003464:	0009051b          	sext.w	a0,s2
    80003468:	00000097          	auipc	ra,0x0
    8000346c:	b50080e7          	jalr	-1200(ra) # 80002fb8 <_Z8printIntiii>
    80003470:	00003517          	auipc	a0,0x3
    80003474:	fa850513          	addi	a0,a0,-88 # 80006418 <CONSOLE_STATUS+0x408>
    80003478:	00000097          	auipc	ra,0x0
    8000347c:	990080e7          	jalr	-1648(ra) # 80002e08 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80003480:	00c00513          	li	a0,12
    80003484:	00000097          	auipc	ra,0x0
    80003488:	d88080e7          	jalr	-632(ra) # 8000320c <_ZL9fibonaccim>
    8000348c:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80003490:	00003517          	auipc	a0,0x3
    80003494:	c3050513          	addi	a0,a0,-976 # 800060c0 <CONSOLE_STATUS+0xb0>
    80003498:	00000097          	auipc	ra,0x0
    8000349c:	970080e7          	jalr	-1680(ra) # 80002e08 <_Z11printStringPKc>
    800034a0:	00000613          	li	a2,0
    800034a4:	00a00593          	li	a1,10
    800034a8:	0009051b          	sext.w	a0,s2
    800034ac:	00000097          	auipc	ra,0x0
    800034b0:	b0c080e7          	jalr	-1268(ra) # 80002fb8 <_Z8printIntiii>
    800034b4:	00003517          	auipc	a0,0x3
    800034b8:	f6450513          	addi	a0,a0,-156 # 80006418 <CONSOLE_STATUS+0x408>
    800034bc:	00000097          	auipc	ra,0x0
    800034c0:	94c080e7          	jalr	-1716(ra) # 80002e08 <_Z11printStringPKc>
    800034c4:	0400006f          	j	80003504 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    800034c8:	00003517          	auipc	a0,0x3
    800034cc:	bd850513          	addi	a0,a0,-1064 # 800060a0 <CONSOLE_STATUS+0x90>
    800034d0:	00000097          	auipc	ra,0x0
    800034d4:	938080e7          	jalr	-1736(ra) # 80002e08 <_Z11printStringPKc>
    800034d8:	00000613          	li	a2,0
    800034dc:	00a00593          	li	a1,10
    800034e0:	00048513          	mv	a0,s1
    800034e4:	00000097          	auipc	ra,0x0
    800034e8:	ad4080e7          	jalr	-1324(ra) # 80002fb8 <_Z8printIntiii>
    800034ec:	00003517          	auipc	a0,0x3
    800034f0:	f2c50513          	addi	a0,a0,-212 # 80006418 <CONSOLE_STATUS+0x408>
    800034f4:	00000097          	auipc	ra,0x0
    800034f8:	914080e7          	jalr	-1772(ra) # 80002e08 <_Z11printStringPKc>
    for (; i < 6; i++) {
    800034fc:	0014849b          	addiw	s1,s1,1
    80003500:	0ff4f493          	andi	s1,s1,255
    80003504:	00500793          	li	a5,5
    80003508:	fc97f0e3          	bgeu	a5,s1,800034c8 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    8000350c:	00003517          	auipc	a0,0x3
    80003510:	b6c50513          	addi	a0,a0,-1172 # 80006078 <CONSOLE_STATUS+0x68>
    80003514:	00000097          	auipc	ra,0x0
    80003518:	8f4080e7          	jalr	-1804(ra) # 80002e08 <_Z11printStringPKc>
    finishedC = true;
    8000351c:	00100793          	li	a5,1
    80003520:	00004717          	auipc	a4,0x4
    80003524:	ecf700a3          	sb	a5,-319(a4) # 800073e1 <_ZL9finishedC>
    thread_dispatch();
    80003528:	ffffe097          	auipc	ra,0xffffe
    8000352c:	e50080e7          	jalr	-432(ra) # 80001378 <_Z15thread_dispatchv>
}
    80003530:	01813083          	ld	ra,24(sp)
    80003534:	01013403          	ld	s0,16(sp)
    80003538:	00813483          	ld	s1,8(sp)
    8000353c:	00013903          	ld	s2,0(sp)
    80003540:	02010113          	addi	sp,sp,32
    80003544:	00008067          	ret

0000000080003548 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80003548:	fe010113          	addi	sp,sp,-32
    8000354c:	00113c23          	sd	ra,24(sp)
    80003550:	00813823          	sd	s0,16(sp)
    80003554:	00913423          	sd	s1,8(sp)
    80003558:	01213023          	sd	s2,0(sp)
    8000355c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80003560:	00000913          	li	s2,0
    80003564:	0400006f          	j	800035a4 <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    80003568:	ffffe097          	auipc	ra,0xffffe
    8000356c:	e10080e7          	jalr	-496(ra) # 80001378 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003570:	00148493          	addi	s1,s1,1
    80003574:	000027b7          	lui	a5,0x2
    80003578:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000357c:	0097ee63          	bltu	a5,s1,80003598 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003580:	00000713          	li	a4,0
    80003584:	000077b7          	lui	a5,0x7
    80003588:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000358c:	fce7eee3          	bltu	a5,a4,80003568 <_ZL11workerBodyBPv+0x20>
    80003590:	00170713          	addi	a4,a4,1
    80003594:	ff1ff06f          	j	80003584 <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    80003598:	00a00793          	li	a5,10
    8000359c:	04f90663          	beq	s2,a5,800035e8 <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    800035a0:	00190913          	addi	s2,s2,1
    800035a4:	00f00793          	li	a5,15
    800035a8:	0527e463          	bltu	a5,s2,800035f0 <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    800035ac:	00003517          	auipc	a0,0x3
    800035b0:	adc50513          	addi	a0,a0,-1316 # 80006088 <CONSOLE_STATUS+0x78>
    800035b4:	00000097          	auipc	ra,0x0
    800035b8:	854080e7          	jalr	-1964(ra) # 80002e08 <_Z11printStringPKc>
    800035bc:	00000613          	li	a2,0
    800035c0:	00a00593          	li	a1,10
    800035c4:	0009051b          	sext.w	a0,s2
    800035c8:	00000097          	auipc	ra,0x0
    800035cc:	9f0080e7          	jalr	-1552(ra) # 80002fb8 <_Z8printIntiii>
    800035d0:	00003517          	auipc	a0,0x3
    800035d4:	e4850513          	addi	a0,a0,-440 # 80006418 <CONSOLE_STATUS+0x408>
    800035d8:	00000097          	auipc	ra,0x0
    800035dc:	830080e7          	jalr	-2000(ra) # 80002e08 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800035e0:	00000493          	li	s1,0
    800035e4:	f91ff06f          	j	80003574 <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    800035e8:	14102ff3          	csrr	t6,sepc
    800035ec:	fb5ff06f          	j	800035a0 <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    800035f0:	00003517          	auipc	a0,0x3
    800035f4:	aa050513          	addi	a0,a0,-1376 # 80006090 <CONSOLE_STATUS+0x80>
    800035f8:	00000097          	auipc	ra,0x0
    800035fc:	810080e7          	jalr	-2032(ra) # 80002e08 <_Z11printStringPKc>
    finishedB = true;
    80003600:	00100793          	li	a5,1
    80003604:	00004717          	auipc	a4,0x4
    80003608:	dcf70f23          	sb	a5,-546(a4) # 800073e2 <_ZL9finishedB>
    thread_dispatch();
    8000360c:	ffffe097          	auipc	ra,0xffffe
    80003610:	d6c080e7          	jalr	-660(ra) # 80001378 <_Z15thread_dispatchv>
}
    80003614:	01813083          	ld	ra,24(sp)
    80003618:	01013403          	ld	s0,16(sp)
    8000361c:	00813483          	ld	s1,8(sp)
    80003620:	00013903          	ld	s2,0(sp)
    80003624:	02010113          	addi	sp,sp,32
    80003628:	00008067          	ret

000000008000362c <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    8000362c:	fe010113          	addi	sp,sp,-32
    80003630:	00113c23          	sd	ra,24(sp)
    80003634:	00813823          	sd	s0,16(sp)
    80003638:	00913423          	sd	s1,8(sp)
    8000363c:	01213023          	sd	s2,0(sp)
    80003640:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80003644:	00000913          	li	s2,0
    80003648:	0380006f          	j	80003680 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    8000364c:	ffffe097          	auipc	ra,0xffffe
    80003650:	d2c080e7          	jalr	-724(ra) # 80001378 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003654:	00148493          	addi	s1,s1,1
    80003658:	000027b7          	lui	a5,0x2
    8000365c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003660:	0097ee63          	bltu	a5,s1,8000367c <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003664:	00000713          	li	a4,0
    80003668:	000077b7          	lui	a5,0x7
    8000366c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003670:	fce7eee3          	bltu	a5,a4,8000364c <_ZL11workerBodyAPv+0x20>
    80003674:	00170713          	addi	a4,a4,1
    80003678:	ff1ff06f          	j	80003668 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    8000367c:	00190913          	addi	s2,s2,1
    80003680:	00900793          	li	a5,9
    80003684:	0527e063          	bltu	a5,s2,800036c4 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80003688:	00003517          	auipc	a0,0x3
    8000368c:	9e850513          	addi	a0,a0,-1560 # 80006070 <CONSOLE_STATUS+0x60>
    80003690:	fffff097          	auipc	ra,0xfffff
    80003694:	778080e7          	jalr	1912(ra) # 80002e08 <_Z11printStringPKc>
    80003698:	00000613          	li	a2,0
    8000369c:	00a00593          	li	a1,10
    800036a0:	0009051b          	sext.w	a0,s2
    800036a4:	00000097          	auipc	ra,0x0
    800036a8:	914080e7          	jalr	-1772(ra) # 80002fb8 <_Z8printIntiii>
    800036ac:	00003517          	auipc	a0,0x3
    800036b0:	d6c50513          	addi	a0,a0,-660 # 80006418 <CONSOLE_STATUS+0x408>
    800036b4:	fffff097          	auipc	ra,0xfffff
    800036b8:	754080e7          	jalr	1876(ra) # 80002e08 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800036bc:	00000493          	li	s1,0
    800036c0:	f99ff06f          	j	80003658 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    800036c4:	00003517          	auipc	a0,0x3
    800036c8:	9b450513          	addi	a0,a0,-1612 # 80006078 <CONSOLE_STATUS+0x68>
    800036cc:	fffff097          	auipc	ra,0xfffff
    800036d0:	73c080e7          	jalr	1852(ra) # 80002e08 <_Z11printStringPKc>
    finishedA = true;
    800036d4:	00100793          	li	a5,1
    800036d8:	00004717          	auipc	a4,0x4
    800036dc:	d0f705a3          	sb	a5,-757(a4) # 800073e3 <_ZL9finishedA>
}
    800036e0:	01813083          	ld	ra,24(sp)
    800036e4:	01013403          	ld	s0,16(sp)
    800036e8:	00813483          	ld	s1,8(sp)
    800036ec:	00013903          	ld	s2,0(sp)
    800036f0:	02010113          	addi	sp,sp,32
    800036f4:	00008067          	ret

00000000800036f8 <_Z16System_Mode_testv>:


void System_Mode_test() {
    800036f8:	fd010113          	addi	sp,sp,-48
    800036fc:	02113423          	sd	ra,40(sp)
    80003700:	02813023          	sd	s0,32(sp)
    80003704:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80003708:	00000613          	li	a2,0
    8000370c:	00000597          	auipc	a1,0x0
    80003710:	f2058593          	addi	a1,a1,-224 # 8000362c <_ZL11workerBodyAPv>
    80003714:	fd040513          	addi	a0,s0,-48
    80003718:	ffffe097          	auipc	ra,0xffffe
    8000371c:	bd8080e7          	jalr	-1064(ra) # 800012f0 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadA created\n");
    80003720:	00003517          	auipc	a0,0x3
    80003724:	9e850513          	addi	a0,a0,-1560 # 80006108 <CONSOLE_STATUS+0xf8>
    80003728:	fffff097          	auipc	ra,0xfffff
    8000372c:	6e0080e7          	jalr	1760(ra) # 80002e08 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80003730:	00000613          	li	a2,0
    80003734:	00000597          	auipc	a1,0x0
    80003738:	e1458593          	addi	a1,a1,-492 # 80003548 <_ZL11workerBodyBPv>
    8000373c:	fd840513          	addi	a0,s0,-40
    80003740:	ffffe097          	auipc	ra,0xffffe
    80003744:	bb0080e7          	jalr	-1104(ra) # 800012f0 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadB created\n");
    80003748:	00003517          	auipc	a0,0x3
    8000374c:	9d850513          	addi	a0,a0,-1576 # 80006120 <CONSOLE_STATUS+0x110>
    80003750:	fffff097          	auipc	ra,0xfffff
    80003754:	6b8080e7          	jalr	1720(ra) # 80002e08 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80003758:	00000613          	li	a2,0
    8000375c:	00000597          	auipc	a1,0x0
    80003760:	c6c58593          	addi	a1,a1,-916 # 800033c8 <_ZL11workerBodyCPv>
    80003764:	fe040513          	addi	a0,s0,-32
    80003768:	ffffe097          	auipc	ra,0xffffe
    8000376c:	b88080e7          	jalr	-1144(ra) # 800012f0 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadC created\n");
    80003770:	00003517          	auipc	a0,0x3
    80003774:	9c850513          	addi	a0,a0,-1592 # 80006138 <CONSOLE_STATUS+0x128>
    80003778:	fffff097          	auipc	ra,0xfffff
    8000377c:	690080e7          	jalr	1680(ra) # 80002e08 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80003780:	00000613          	li	a2,0
    80003784:	00000597          	auipc	a1,0x0
    80003788:	afc58593          	addi	a1,a1,-1284 # 80003280 <_ZL11workerBodyDPv>
    8000378c:	fe840513          	addi	a0,s0,-24
    80003790:	ffffe097          	auipc	ra,0xffffe
    80003794:	b60080e7          	jalr	-1184(ra) # 800012f0 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadD created\n");
    80003798:	00003517          	auipc	a0,0x3
    8000379c:	9b850513          	addi	a0,a0,-1608 # 80006150 <CONSOLE_STATUS+0x140>
    800037a0:	fffff097          	auipc	ra,0xfffff
    800037a4:	668080e7          	jalr	1640(ra) # 80002e08 <_Z11printStringPKc>
    800037a8:	00c0006f          	j	800037b4 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    800037ac:	ffffe097          	auipc	ra,0xffffe
    800037b0:	bcc080e7          	jalr	-1076(ra) # 80001378 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800037b4:	00004797          	auipc	a5,0x4
    800037b8:	c2f7c783          	lbu	a5,-977(a5) # 800073e3 <_ZL9finishedA>
    800037bc:	fe0788e3          	beqz	a5,800037ac <_Z16System_Mode_testv+0xb4>
    800037c0:	00004797          	auipc	a5,0x4
    800037c4:	c227c783          	lbu	a5,-990(a5) # 800073e2 <_ZL9finishedB>
    800037c8:	fe0782e3          	beqz	a5,800037ac <_Z16System_Mode_testv+0xb4>
    800037cc:	00004797          	auipc	a5,0x4
    800037d0:	c157c783          	lbu	a5,-1003(a5) # 800073e1 <_ZL9finishedC>
    800037d4:	fc078ce3          	beqz	a5,800037ac <_Z16System_Mode_testv+0xb4>
    800037d8:	00004797          	auipc	a5,0x4
    800037dc:	c087c783          	lbu	a5,-1016(a5) # 800073e0 <_ZL9finishedD>
    800037e0:	fc0786e3          	beqz	a5,800037ac <_Z16System_Mode_testv+0xb4>
    }

}
    800037e4:	02813083          	ld	ra,40(sp)
    800037e8:	02013403          	ld	s0,32(sp)
    800037ec:	03010113          	addi	sp,sp,48
    800037f0:	00008067          	ret

00000000800037f4 <start>:
    800037f4:	ff010113          	addi	sp,sp,-16
    800037f8:	00813423          	sd	s0,8(sp)
    800037fc:	01010413          	addi	s0,sp,16
    80003800:	300027f3          	csrr	a5,mstatus
    80003804:	ffffe737          	lui	a4,0xffffe
    80003808:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff61af>
    8000380c:	00e7f7b3          	and	a5,a5,a4
    80003810:	00001737          	lui	a4,0x1
    80003814:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80003818:	00e7e7b3          	or	a5,a5,a4
    8000381c:	30079073          	csrw	mstatus,a5
    80003820:	00000797          	auipc	a5,0x0
    80003824:	16078793          	addi	a5,a5,352 # 80003980 <system_main>
    80003828:	34179073          	csrw	mepc,a5
    8000382c:	00000793          	li	a5,0
    80003830:	18079073          	csrw	satp,a5
    80003834:	000107b7          	lui	a5,0x10
    80003838:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    8000383c:	30279073          	csrw	medeleg,a5
    80003840:	30379073          	csrw	mideleg,a5
    80003844:	104027f3          	csrr	a5,sie
    80003848:	2227e793          	ori	a5,a5,546
    8000384c:	10479073          	csrw	sie,a5
    80003850:	fff00793          	li	a5,-1
    80003854:	00a7d793          	srli	a5,a5,0xa
    80003858:	3b079073          	csrw	pmpaddr0,a5
    8000385c:	00f00793          	li	a5,15
    80003860:	3a079073          	csrw	pmpcfg0,a5
    80003864:	f14027f3          	csrr	a5,mhartid
    80003868:	0200c737          	lui	a4,0x200c
    8000386c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80003870:	0007869b          	sext.w	a3,a5
    80003874:	00269713          	slli	a4,a3,0x2
    80003878:	000f4637          	lui	a2,0xf4
    8000387c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80003880:	00d70733          	add	a4,a4,a3
    80003884:	0037979b          	slliw	a5,a5,0x3
    80003888:	020046b7          	lui	a3,0x2004
    8000388c:	00d787b3          	add	a5,a5,a3
    80003890:	00c585b3          	add	a1,a1,a2
    80003894:	00371693          	slli	a3,a4,0x3
    80003898:	00004717          	auipc	a4,0x4
    8000389c:	b5870713          	addi	a4,a4,-1192 # 800073f0 <timer_scratch>
    800038a0:	00b7b023          	sd	a1,0(a5)
    800038a4:	00d70733          	add	a4,a4,a3
    800038a8:	00f73c23          	sd	a5,24(a4)
    800038ac:	02c73023          	sd	a2,32(a4)
    800038b0:	34071073          	csrw	mscratch,a4
    800038b4:	00000797          	auipc	a5,0x0
    800038b8:	6ec78793          	addi	a5,a5,1772 # 80003fa0 <timervec>
    800038bc:	30579073          	csrw	mtvec,a5
    800038c0:	300027f3          	csrr	a5,mstatus
    800038c4:	0087e793          	ori	a5,a5,8
    800038c8:	30079073          	csrw	mstatus,a5
    800038cc:	304027f3          	csrr	a5,mie
    800038d0:	0807e793          	ori	a5,a5,128
    800038d4:	30479073          	csrw	mie,a5
    800038d8:	f14027f3          	csrr	a5,mhartid
    800038dc:	0007879b          	sext.w	a5,a5
    800038e0:	00078213          	mv	tp,a5
    800038e4:	30200073          	mret
    800038e8:	00813403          	ld	s0,8(sp)
    800038ec:	01010113          	addi	sp,sp,16
    800038f0:	00008067          	ret

00000000800038f4 <timerinit>:
    800038f4:	ff010113          	addi	sp,sp,-16
    800038f8:	00813423          	sd	s0,8(sp)
    800038fc:	01010413          	addi	s0,sp,16
    80003900:	f14027f3          	csrr	a5,mhartid
    80003904:	0200c737          	lui	a4,0x200c
    80003908:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    8000390c:	0007869b          	sext.w	a3,a5
    80003910:	00269713          	slli	a4,a3,0x2
    80003914:	000f4637          	lui	a2,0xf4
    80003918:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    8000391c:	00d70733          	add	a4,a4,a3
    80003920:	0037979b          	slliw	a5,a5,0x3
    80003924:	020046b7          	lui	a3,0x2004
    80003928:	00d787b3          	add	a5,a5,a3
    8000392c:	00c585b3          	add	a1,a1,a2
    80003930:	00371693          	slli	a3,a4,0x3
    80003934:	00004717          	auipc	a4,0x4
    80003938:	abc70713          	addi	a4,a4,-1348 # 800073f0 <timer_scratch>
    8000393c:	00b7b023          	sd	a1,0(a5)
    80003940:	00d70733          	add	a4,a4,a3
    80003944:	00f73c23          	sd	a5,24(a4)
    80003948:	02c73023          	sd	a2,32(a4)
    8000394c:	34071073          	csrw	mscratch,a4
    80003950:	00000797          	auipc	a5,0x0
    80003954:	65078793          	addi	a5,a5,1616 # 80003fa0 <timervec>
    80003958:	30579073          	csrw	mtvec,a5
    8000395c:	300027f3          	csrr	a5,mstatus
    80003960:	0087e793          	ori	a5,a5,8
    80003964:	30079073          	csrw	mstatus,a5
    80003968:	304027f3          	csrr	a5,mie
    8000396c:	0807e793          	ori	a5,a5,128
    80003970:	30479073          	csrw	mie,a5
    80003974:	00813403          	ld	s0,8(sp)
    80003978:	01010113          	addi	sp,sp,16
    8000397c:	00008067          	ret

0000000080003980 <system_main>:
    80003980:	fe010113          	addi	sp,sp,-32
    80003984:	00813823          	sd	s0,16(sp)
    80003988:	00913423          	sd	s1,8(sp)
    8000398c:	00113c23          	sd	ra,24(sp)
    80003990:	02010413          	addi	s0,sp,32
    80003994:	00000097          	auipc	ra,0x0
    80003998:	0c4080e7          	jalr	196(ra) # 80003a58 <cpuid>
    8000399c:	00004497          	auipc	s1,0x4
    800039a0:	9d448493          	addi	s1,s1,-1580 # 80007370 <started>
    800039a4:	02050263          	beqz	a0,800039c8 <system_main+0x48>
    800039a8:	0004a783          	lw	a5,0(s1)
    800039ac:	0007879b          	sext.w	a5,a5
    800039b0:	fe078ce3          	beqz	a5,800039a8 <system_main+0x28>
    800039b4:	0ff0000f          	fence
    800039b8:	00003517          	auipc	a0,0x3
    800039bc:	98050513          	addi	a0,a0,-1664 # 80006338 <CONSOLE_STATUS+0x328>
    800039c0:	00001097          	auipc	ra,0x1
    800039c4:	a7c080e7          	jalr	-1412(ra) # 8000443c <panic>
    800039c8:	00001097          	auipc	ra,0x1
    800039cc:	9d0080e7          	jalr	-1584(ra) # 80004398 <consoleinit>
    800039d0:	00001097          	auipc	ra,0x1
    800039d4:	15c080e7          	jalr	348(ra) # 80004b2c <printfinit>
    800039d8:	00003517          	auipc	a0,0x3
    800039dc:	a4050513          	addi	a0,a0,-1472 # 80006418 <CONSOLE_STATUS+0x408>
    800039e0:	00001097          	auipc	ra,0x1
    800039e4:	ab8080e7          	jalr	-1352(ra) # 80004498 <__printf>
    800039e8:	00003517          	auipc	a0,0x3
    800039ec:	92050513          	addi	a0,a0,-1760 # 80006308 <CONSOLE_STATUS+0x2f8>
    800039f0:	00001097          	auipc	ra,0x1
    800039f4:	aa8080e7          	jalr	-1368(ra) # 80004498 <__printf>
    800039f8:	00003517          	auipc	a0,0x3
    800039fc:	a2050513          	addi	a0,a0,-1504 # 80006418 <CONSOLE_STATUS+0x408>
    80003a00:	00001097          	auipc	ra,0x1
    80003a04:	a98080e7          	jalr	-1384(ra) # 80004498 <__printf>
    80003a08:	00001097          	auipc	ra,0x1
    80003a0c:	4b0080e7          	jalr	1200(ra) # 80004eb8 <kinit>
    80003a10:	00000097          	auipc	ra,0x0
    80003a14:	148080e7          	jalr	328(ra) # 80003b58 <trapinit>
    80003a18:	00000097          	auipc	ra,0x0
    80003a1c:	16c080e7          	jalr	364(ra) # 80003b84 <trapinithart>
    80003a20:	00000097          	auipc	ra,0x0
    80003a24:	5c0080e7          	jalr	1472(ra) # 80003fe0 <plicinit>
    80003a28:	00000097          	auipc	ra,0x0
    80003a2c:	5e0080e7          	jalr	1504(ra) # 80004008 <plicinithart>
    80003a30:	00000097          	auipc	ra,0x0
    80003a34:	078080e7          	jalr	120(ra) # 80003aa8 <userinit>
    80003a38:	0ff0000f          	fence
    80003a3c:	00100793          	li	a5,1
    80003a40:	00003517          	auipc	a0,0x3
    80003a44:	8e050513          	addi	a0,a0,-1824 # 80006320 <CONSOLE_STATUS+0x310>
    80003a48:	00f4a023          	sw	a5,0(s1)
    80003a4c:	00001097          	auipc	ra,0x1
    80003a50:	a4c080e7          	jalr	-1460(ra) # 80004498 <__printf>
    80003a54:	0000006f          	j	80003a54 <system_main+0xd4>

0000000080003a58 <cpuid>:
    80003a58:	ff010113          	addi	sp,sp,-16
    80003a5c:	00813423          	sd	s0,8(sp)
    80003a60:	01010413          	addi	s0,sp,16
    80003a64:	00020513          	mv	a0,tp
    80003a68:	00813403          	ld	s0,8(sp)
    80003a6c:	0005051b          	sext.w	a0,a0
    80003a70:	01010113          	addi	sp,sp,16
    80003a74:	00008067          	ret

0000000080003a78 <mycpu>:
    80003a78:	ff010113          	addi	sp,sp,-16
    80003a7c:	00813423          	sd	s0,8(sp)
    80003a80:	01010413          	addi	s0,sp,16
    80003a84:	00020793          	mv	a5,tp
    80003a88:	00813403          	ld	s0,8(sp)
    80003a8c:	0007879b          	sext.w	a5,a5
    80003a90:	00779793          	slli	a5,a5,0x7
    80003a94:	00005517          	auipc	a0,0x5
    80003a98:	98c50513          	addi	a0,a0,-1652 # 80008420 <cpus>
    80003a9c:	00f50533          	add	a0,a0,a5
    80003aa0:	01010113          	addi	sp,sp,16
    80003aa4:	00008067          	ret

0000000080003aa8 <userinit>:
    80003aa8:	ff010113          	addi	sp,sp,-16
    80003aac:	00813423          	sd	s0,8(sp)
    80003ab0:	01010413          	addi	s0,sp,16
    80003ab4:	00813403          	ld	s0,8(sp)
    80003ab8:	01010113          	addi	sp,sp,16
    80003abc:	ffffe317          	auipc	t1,0xffffe
    80003ac0:	c2030067          	jr	-992(t1) # 800016dc <main>

0000000080003ac4 <either_copyout>:
    80003ac4:	ff010113          	addi	sp,sp,-16
    80003ac8:	00813023          	sd	s0,0(sp)
    80003acc:	00113423          	sd	ra,8(sp)
    80003ad0:	01010413          	addi	s0,sp,16
    80003ad4:	02051663          	bnez	a0,80003b00 <either_copyout+0x3c>
    80003ad8:	00058513          	mv	a0,a1
    80003adc:	00060593          	mv	a1,a2
    80003ae0:	0006861b          	sext.w	a2,a3
    80003ae4:	00002097          	auipc	ra,0x2
    80003ae8:	c60080e7          	jalr	-928(ra) # 80005744 <__memmove>
    80003aec:	00813083          	ld	ra,8(sp)
    80003af0:	00013403          	ld	s0,0(sp)
    80003af4:	00000513          	li	a0,0
    80003af8:	01010113          	addi	sp,sp,16
    80003afc:	00008067          	ret
    80003b00:	00003517          	auipc	a0,0x3
    80003b04:	86050513          	addi	a0,a0,-1952 # 80006360 <CONSOLE_STATUS+0x350>
    80003b08:	00001097          	auipc	ra,0x1
    80003b0c:	934080e7          	jalr	-1740(ra) # 8000443c <panic>

0000000080003b10 <either_copyin>:
    80003b10:	ff010113          	addi	sp,sp,-16
    80003b14:	00813023          	sd	s0,0(sp)
    80003b18:	00113423          	sd	ra,8(sp)
    80003b1c:	01010413          	addi	s0,sp,16
    80003b20:	02059463          	bnez	a1,80003b48 <either_copyin+0x38>
    80003b24:	00060593          	mv	a1,a2
    80003b28:	0006861b          	sext.w	a2,a3
    80003b2c:	00002097          	auipc	ra,0x2
    80003b30:	c18080e7          	jalr	-1000(ra) # 80005744 <__memmove>
    80003b34:	00813083          	ld	ra,8(sp)
    80003b38:	00013403          	ld	s0,0(sp)
    80003b3c:	00000513          	li	a0,0
    80003b40:	01010113          	addi	sp,sp,16
    80003b44:	00008067          	ret
    80003b48:	00003517          	auipc	a0,0x3
    80003b4c:	84050513          	addi	a0,a0,-1984 # 80006388 <CONSOLE_STATUS+0x378>
    80003b50:	00001097          	auipc	ra,0x1
    80003b54:	8ec080e7          	jalr	-1812(ra) # 8000443c <panic>

0000000080003b58 <trapinit>:
    80003b58:	ff010113          	addi	sp,sp,-16
    80003b5c:	00813423          	sd	s0,8(sp)
    80003b60:	01010413          	addi	s0,sp,16
    80003b64:	00813403          	ld	s0,8(sp)
    80003b68:	00003597          	auipc	a1,0x3
    80003b6c:	84858593          	addi	a1,a1,-1976 # 800063b0 <CONSOLE_STATUS+0x3a0>
    80003b70:	00005517          	auipc	a0,0x5
    80003b74:	93050513          	addi	a0,a0,-1744 # 800084a0 <tickslock>
    80003b78:	01010113          	addi	sp,sp,16
    80003b7c:	00001317          	auipc	t1,0x1
    80003b80:	5cc30067          	jr	1484(t1) # 80005148 <initlock>

0000000080003b84 <trapinithart>:
    80003b84:	ff010113          	addi	sp,sp,-16
    80003b88:	00813423          	sd	s0,8(sp)
    80003b8c:	01010413          	addi	s0,sp,16
    80003b90:	00000797          	auipc	a5,0x0
    80003b94:	30078793          	addi	a5,a5,768 # 80003e90 <kernelvec>
    80003b98:	10579073          	csrw	stvec,a5
    80003b9c:	00813403          	ld	s0,8(sp)
    80003ba0:	01010113          	addi	sp,sp,16
    80003ba4:	00008067          	ret

0000000080003ba8 <usertrap>:
    80003ba8:	ff010113          	addi	sp,sp,-16
    80003bac:	00813423          	sd	s0,8(sp)
    80003bb0:	01010413          	addi	s0,sp,16
    80003bb4:	00813403          	ld	s0,8(sp)
    80003bb8:	01010113          	addi	sp,sp,16
    80003bbc:	00008067          	ret

0000000080003bc0 <usertrapret>:
    80003bc0:	ff010113          	addi	sp,sp,-16
    80003bc4:	00813423          	sd	s0,8(sp)
    80003bc8:	01010413          	addi	s0,sp,16
    80003bcc:	00813403          	ld	s0,8(sp)
    80003bd0:	01010113          	addi	sp,sp,16
    80003bd4:	00008067          	ret

0000000080003bd8 <kerneltrap>:
    80003bd8:	fe010113          	addi	sp,sp,-32
    80003bdc:	00813823          	sd	s0,16(sp)
    80003be0:	00113c23          	sd	ra,24(sp)
    80003be4:	00913423          	sd	s1,8(sp)
    80003be8:	02010413          	addi	s0,sp,32
    80003bec:	142025f3          	csrr	a1,scause
    80003bf0:	100027f3          	csrr	a5,sstatus
    80003bf4:	0027f793          	andi	a5,a5,2
    80003bf8:	10079c63          	bnez	a5,80003d10 <kerneltrap+0x138>
    80003bfc:	142027f3          	csrr	a5,scause
    80003c00:	0207ce63          	bltz	a5,80003c3c <kerneltrap+0x64>
    80003c04:	00002517          	auipc	a0,0x2
    80003c08:	7f450513          	addi	a0,a0,2036 # 800063f8 <CONSOLE_STATUS+0x3e8>
    80003c0c:	00001097          	auipc	ra,0x1
    80003c10:	88c080e7          	jalr	-1908(ra) # 80004498 <__printf>
    80003c14:	141025f3          	csrr	a1,sepc
    80003c18:	14302673          	csrr	a2,stval
    80003c1c:	00002517          	auipc	a0,0x2
    80003c20:	7ec50513          	addi	a0,a0,2028 # 80006408 <CONSOLE_STATUS+0x3f8>
    80003c24:	00001097          	auipc	ra,0x1
    80003c28:	874080e7          	jalr	-1932(ra) # 80004498 <__printf>
    80003c2c:	00002517          	auipc	a0,0x2
    80003c30:	7f450513          	addi	a0,a0,2036 # 80006420 <CONSOLE_STATUS+0x410>
    80003c34:	00001097          	auipc	ra,0x1
    80003c38:	808080e7          	jalr	-2040(ra) # 8000443c <panic>
    80003c3c:	0ff7f713          	andi	a4,a5,255
    80003c40:	00900693          	li	a3,9
    80003c44:	04d70063          	beq	a4,a3,80003c84 <kerneltrap+0xac>
    80003c48:	fff00713          	li	a4,-1
    80003c4c:	03f71713          	slli	a4,a4,0x3f
    80003c50:	00170713          	addi	a4,a4,1
    80003c54:	fae798e3          	bne	a5,a4,80003c04 <kerneltrap+0x2c>
    80003c58:	00000097          	auipc	ra,0x0
    80003c5c:	e00080e7          	jalr	-512(ra) # 80003a58 <cpuid>
    80003c60:	06050663          	beqz	a0,80003ccc <kerneltrap+0xf4>
    80003c64:	144027f3          	csrr	a5,sip
    80003c68:	ffd7f793          	andi	a5,a5,-3
    80003c6c:	14479073          	csrw	sip,a5
    80003c70:	01813083          	ld	ra,24(sp)
    80003c74:	01013403          	ld	s0,16(sp)
    80003c78:	00813483          	ld	s1,8(sp)
    80003c7c:	02010113          	addi	sp,sp,32
    80003c80:	00008067          	ret
    80003c84:	00000097          	auipc	ra,0x0
    80003c88:	3d0080e7          	jalr	976(ra) # 80004054 <plic_claim>
    80003c8c:	00a00793          	li	a5,10
    80003c90:	00050493          	mv	s1,a0
    80003c94:	06f50863          	beq	a0,a5,80003d04 <kerneltrap+0x12c>
    80003c98:	fc050ce3          	beqz	a0,80003c70 <kerneltrap+0x98>
    80003c9c:	00050593          	mv	a1,a0
    80003ca0:	00002517          	auipc	a0,0x2
    80003ca4:	73850513          	addi	a0,a0,1848 # 800063d8 <CONSOLE_STATUS+0x3c8>
    80003ca8:	00000097          	auipc	ra,0x0
    80003cac:	7f0080e7          	jalr	2032(ra) # 80004498 <__printf>
    80003cb0:	01013403          	ld	s0,16(sp)
    80003cb4:	01813083          	ld	ra,24(sp)
    80003cb8:	00048513          	mv	a0,s1
    80003cbc:	00813483          	ld	s1,8(sp)
    80003cc0:	02010113          	addi	sp,sp,32
    80003cc4:	00000317          	auipc	t1,0x0
    80003cc8:	3c830067          	jr	968(t1) # 8000408c <plic_complete>
    80003ccc:	00004517          	auipc	a0,0x4
    80003cd0:	7d450513          	addi	a0,a0,2004 # 800084a0 <tickslock>
    80003cd4:	00001097          	auipc	ra,0x1
    80003cd8:	498080e7          	jalr	1176(ra) # 8000516c <acquire>
    80003cdc:	00003717          	auipc	a4,0x3
    80003ce0:	69870713          	addi	a4,a4,1688 # 80007374 <ticks>
    80003ce4:	00072783          	lw	a5,0(a4)
    80003ce8:	00004517          	auipc	a0,0x4
    80003cec:	7b850513          	addi	a0,a0,1976 # 800084a0 <tickslock>
    80003cf0:	0017879b          	addiw	a5,a5,1
    80003cf4:	00f72023          	sw	a5,0(a4)
    80003cf8:	00001097          	auipc	ra,0x1
    80003cfc:	540080e7          	jalr	1344(ra) # 80005238 <release>
    80003d00:	f65ff06f          	j	80003c64 <kerneltrap+0x8c>
    80003d04:	00001097          	auipc	ra,0x1
    80003d08:	09c080e7          	jalr	156(ra) # 80004da0 <uartintr>
    80003d0c:	fa5ff06f          	j	80003cb0 <kerneltrap+0xd8>
    80003d10:	00002517          	auipc	a0,0x2
    80003d14:	6a850513          	addi	a0,a0,1704 # 800063b8 <CONSOLE_STATUS+0x3a8>
    80003d18:	00000097          	auipc	ra,0x0
    80003d1c:	724080e7          	jalr	1828(ra) # 8000443c <panic>

0000000080003d20 <clockintr>:
    80003d20:	fe010113          	addi	sp,sp,-32
    80003d24:	00813823          	sd	s0,16(sp)
    80003d28:	00913423          	sd	s1,8(sp)
    80003d2c:	00113c23          	sd	ra,24(sp)
    80003d30:	02010413          	addi	s0,sp,32
    80003d34:	00004497          	auipc	s1,0x4
    80003d38:	76c48493          	addi	s1,s1,1900 # 800084a0 <tickslock>
    80003d3c:	00048513          	mv	a0,s1
    80003d40:	00001097          	auipc	ra,0x1
    80003d44:	42c080e7          	jalr	1068(ra) # 8000516c <acquire>
    80003d48:	00003717          	auipc	a4,0x3
    80003d4c:	62c70713          	addi	a4,a4,1580 # 80007374 <ticks>
    80003d50:	00072783          	lw	a5,0(a4)
    80003d54:	01013403          	ld	s0,16(sp)
    80003d58:	01813083          	ld	ra,24(sp)
    80003d5c:	00048513          	mv	a0,s1
    80003d60:	0017879b          	addiw	a5,a5,1
    80003d64:	00813483          	ld	s1,8(sp)
    80003d68:	00f72023          	sw	a5,0(a4)
    80003d6c:	02010113          	addi	sp,sp,32
    80003d70:	00001317          	auipc	t1,0x1
    80003d74:	4c830067          	jr	1224(t1) # 80005238 <release>

0000000080003d78 <devintr>:
    80003d78:	142027f3          	csrr	a5,scause
    80003d7c:	00000513          	li	a0,0
    80003d80:	0007c463          	bltz	a5,80003d88 <devintr+0x10>
    80003d84:	00008067          	ret
    80003d88:	fe010113          	addi	sp,sp,-32
    80003d8c:	00813823          	sd	s0,16(sp)
    80003d90:	00113c23          	sd	ra,24(sp)
    80003d94:	00913423          	sd	s1,8(sp)
    80003d98:	02010413          	addi	s0,sp,32
    80003d9c:	0ff7f713          	andi	a4,a5,255
    80003da0:	00900693          	li	a3,9
    80003da4:	04d70c63          	beq	a4,a3,80003dfc <devintr+0x84>
    80003da8:	fff00713          	li	a4,-1
    80003dac:	03f71713          	slli	a4,a4,0x3f
    80003db0:	00170713          	addi	a4,a4,1
    80003db4:	00e78c63          	beq	a5,a4,80003dcc <devintr+0x54>
    80003db8:	01813083          	ld	ra,24(sp)
    80003dbc:	01013403          	ld	s0,16(sp)
    80003dc0:	00813483          	ld	s1,8(sp)
    80003dc4:	02010113          	addi	sp,sp,32
    80003dc8:	00008067          	ret
    80003dcc:	00000097          	auipc	ra,0x0
    80003dd0:	c8c080e7          	jalr	-884(ra) # 80003a58 <cpuid>
    80003dd4:	06050663          	beqz	a0,80003e40 <devintr+0xc8>
    80003dd8:	144027f3          	csrr	a5,sip
    80003ddc:	ffd7f793          	andi	a5,a5,-3
    80003de0:	14479073          	csrw	sip,a5
    80003de4:	01813083          	ld	ra,24(sp)
    80003de8:	01013403          	ld	s0,16(sp)
    80003dec:	00813483          	ld	s1,8(sp)
    80003df0:	00200513          	li	a0,2
    80003df4:	02010113          	addi	sp,sp,32
    80003df8:	00008067          	ret
    80003dfc:	00000097          	auipc	ra,0x0
    80003e00:	258080e7          	jalr	600(ra) # 80004054 <plic_claim>
    80003e04:	00a00793          	li	a5,10
    80003e08:	00050493          	mv	s1,a0
    80003e0c:	06f50663          	beq	a0,a5,80003e78 <devintr+0x100>
    80003e10:	00100513          	li	a0,1
    80003e14:	fa0482e3          	beqz	s1,80003db8 <devintr+0x40>
    80003e18:	00048593          	mv	a1,s1
    80003e1c:	00002517          	auipc	a0,0x2
    80003e20:	5bc50513          	addi	a0,a0,1468 # 800063d8 <CONSOLE_STATUS+0x3c8>
    80003e24:	00000097          	auipc	ra,0x0
    80003e28:	674080e7          	jalr	1652(ra) # 80004498 <__printf>
    80003e2c:	00048513          	mv	a0,s1
    80003e30:	00000097          	auipc	ra,0x0
    80003e34:	25c080e7          	jalr	604(ra) # 8000408c <plic_complete>
    80003e38:	00100513          	li	a0,1
    80003e3c:	f7dff06f          	j	80003db8 <devintr+0x40>
    80003e40:	00004517          	auipc	a0,0x4
    80003e44:	66050513          	addi	a0,a0,1632 # 800084a0 <tickslock>
    80003e48:	00001097          	auipc	ra,0x1
    80003e4c:	324080e7          	jalr	804(ra) # 8000516c <acquire>
    80003e50:	00003717          	auipc	a4,0x3
    80003e54:	52470713          	addi	a4,a4,1316 # 80007374 <ticks>
    80003e58:	00072783          	lw	a5,0(a4)
    80003e5c:	00004517          	auipc	a0,0x4
    80003e60:	64450513          	addi	a0,a0,1604 # 800084a0 <tickslock>
    80003e64:	0017879b          	addiw	a5,a5,1
    80003e68:	00f72023          	sw	a5,0(a4)
    80003e6c:	00001097          	auipc	ra,0x1
    80003e70:	3cc080e7          	jalr	972(ra) # 80005238 <release>
    80003e74:	f65ff06f          	j	80003dd8 <devintr+0x60>
    80003e78:	00001097          	auipc	ra,0x1
    80003e7c:	f28080e7          	jalr	-216(ra) # 80004da0 <uartintr>
    80003e80:	fadff06f          	j	80003e2c <devintr+0xb4>
	...

0000000080003e90 <kernelvec>:
    80003e90:	f0010113          	addi	sp,sp,-256
    80003e94:	00113023          	sd	ra,0(sp)
    80003e98:	00213423          	sd	sp,8(sp)
    80003e9c:	00313823          	sd	gp,16(sp)
    80003ea0:	00413c23          	sd	tp,24(sp)
    80003ea4:	02513023          	sd	t0,32(sp)
    80003ea8:	02613423          	sd	t1,40(sp)
    80003eac:	02713823          	sd	t2,48(sp)
    80003eb0:	02813c23          	sd	s0,56(sp)
    80003eb4:	04913023          	sd	s1,64(sp)
    80003eb8:	04a13423          	sd	a0,72(sp)
    80003ebc:	04b13823          	sd	a1,80(sp)
    80003ec0:	04c13c23          	sd	a2,88(sp)
    80003ec4:	06d13023          	sd	a3,96(sp)
    80003ec8:	06e13423          	sd	a4,104(sp)
    80003ecc:	06f13823          	sd	a5,112(sp)
    80003ed0:	07013c23          	sd	a6,120(sp)
    80003ed4:	09113023          	sd	a7,128(sp)
    80003ed8:	09213423          	sd	s2,136(sp)
    80003edc:	09313823          	sd	s3,144(sp)
    80003ee0:	09413c23          	sd	s4,152(sp)
    80003ee4:	0b513023          	sd	s5,160(sp)
    80003ee8:	0b613423          	sd	s6,168(sp)
    80003eec:	0b713823          	sd	s7,176(sp)
    80003ef0:	0b813c23          	sd	s8,184(sp)
    80003ef4:	0d913023          	sd	s9,192(sp)
    80003ef8:	0da13423          	sd	s10,200(sp)
    80003efc:	0db13823          	sd	s11,208(sp)
    80003f00:	0dc13c23          	sd	t3,216(sp)
    80003f04:	0fd13023          	sd	t4,224(sp)
    80003f08:	0fe13423          	sd	t5,232(sp)
    80003f0c:	0ff13823          	sd	t6,240(sp)
    80003f10:	cc9ff0ef          	jal	ra,80003bd8 <kerneltrap>
    80003f14:	00013083          	ld	ra,0(sp)
    80003f18:	00813103          	ld	sp,8(sp)
    80003f1c:	01013183          	ld	gp,16(sp)
    80003f20:	02013283          	ld	t0,32(sp)
    80003f24:	02813303          	ld	t1,40(sp)
    80003f28:	03013383          	ld	t2,48(sp)
    80003f2c:	03813403          	ld	s0,56(sp)
    80003f30:	04013483          	ld	s1,64(sp)
    80003f34:	04813503          	ld	a0,72(sp)
    80003f38:	05013583          	ld	a1,80(sp)
    80003f3c:	05813603          	ld	a2,88(sp)
    80003f40:	06013683          	ld	a3,96(sp)
    80003f44:	06813703          	ld	a4,104(sp)
    80003f48:	07013783          	ld	a5,112(sp)
    80003f4c:	07813803          	ld	a6,120(sp)
    80003f50:	08013883          	ld	a7,128(sp)
    80003f54:	08813903          	ld	s2,136(sp)
    80003f58:	09013983          	ld	s3,144(sp)
    80003f5c:	09813a03          	ld	s4,152(sp)
    80003f60:	0a013a83          	ld	s5,160(sp)
    80003f64:	0a813b03          	ld	s6,168(sp)
    80003f68:	0b013b83          	ld	s7,176(sp)
    80003f6c:	0b813c03          	ld	s8,184(sp)
    80003f70:	0c013c83          	ld	s9,192(sp)
    80003f74:	0c813d03          	ld	s10,200(sp)
    80003f78:	0d013d83          	ld	s11,208(sp)
    80003f7c:	0d813e03          	ld	t3,216(sp)
    80003f80:	0e013e83          	ld	t4,224(sp)
    80003f84:	0e813f03          	ld	t5,232(sp)
    80003f88:	0f013f83          	ld	t6,240(sp)
    80003f8c:	10010113          	addi	sp,sp,256
    80003f90:	10200073          	sret
    80003f94:	00000013          	nop
    80003f98:	00000013          	nop
    80003f9c:	00000013          	nop

0000000080003fa0 <timervec>:
    80003fa0:	34051573          	csrrw	a0,mscratch,a0
    80003fa4:	00b53023          	sd	a1,0(a0)
    80003fa8:	00c53423          	sd	a2,8(a0)
    80003fac:	00d53823          	sd	a3,16(a0)
    80003fb0:	01853583          	ld	a1,24(a0)
    80003fb4:	02053603          	ld	a2,32(a0)
    80003fb8:	0005b683          	ld	a3,0(a1)
    80003fbc:	00c686b3          	add	a3,a3,a2
    80003fc0:	00d5b023          	sd	a3,0(a1)
    80003fc4:	00200593          	li	a1,2
    80003fc8:	14459073          	csrw	sip,a1
    80003fcc:	01053683          	ld	a3,16(a0)
    80003fd0:	00853603          	ld	a2,8(a0)
    80003fd4:	00053583          	ld	a1,0(a0)
    80003fd8:	34051573          	csrrw	a0,mscratch,a0
    80003fdc:	30200073          	mret

0000000080003fe0 <plicinit>:
    80003fe0:	ff010113          	addi	sp,sp,-16
    80003fe4:	00813423          	sd	s0,8(sp)
    80003fe8:	01010413          	addi	s0,sp,16
    80003fec:	00813403          	ld	s0,8(sp)
    80003ff0:	0c0007b7          	lui	a5,0xc000
    80003ff4:	00100713          	li	a4,1
    80003ff8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80003ffc:	00e7a223          	sw	a4,4(a5)
    80004000:	01010113          	addi	sp,sp,16
    80004004:	00008067          	ret

0000000080004008 <plicinithart>:
    80004008:	ff010113          	addi	sp,sp,-16
    8000400c:	00813023          	sd	s0,0(sp)
    80004010:	00113423          	sd	ra,8(sp)
    80004014:	01010413          	addi	s0,sp,16
    80004018:	00000097          	auipc	ra,0x0
    8000401c:	a40080e7          	jalr	-1472(ra) # 80003a58 <cpuid>
    80004020:	0085171b          	slliw	a4,a0,0x8
    80004024:	0c0027b7          	lui	a5,0xc002
    80004028:	00e787b3          	add	a5,a5,a4
    8000402c:	40200713          	li	a4,1026
    80004030:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80004034:	00813083          	ld	ra,8(sp)
    80004038:	00013403          	ld	s0,0(sp)
    8000403c:	00d5151b          	slliw	a0,a0,0xd
    80004040:	0c2017b7          	lui	a5,0xc201
    80004044:	00a78533          	add	a0,a5,a0
    80004048:	00052023          	sw	zero,0(a0)
    8000404c:	01010113          	addi	sp,sp,16
    80004050:	00008067          	ret

0000000080004054 <plic_claim>:
    80004054:	ff010113          	addi	sp,sp,-16
    80004058:	00813023          	sd	s0,0(sp)
    8000405c:	00113423          	sd	ra,8(sp)
    80004060:	01010413          	addi	s0,sp,16
    80004064:	00000097          	auipc	ra,0x0
    80004068:	9f4080e7          	jalr	-1548(ra) # 80003a58 <cpuid>
    8000406c:	00813083          	ld	ra,8(sp)
    80004070:	00013403          	ld	s0,0(sp)
    80004074:	00d5151b          	slliw	a0,a0,0xd
    80004078:	0c2017b7          	lui	a5,0xc201
    8000407c:	00a78533          	add	a0,a5,a0
    80004080:	00452503          	lw	a0,4(a0)
    80004084:	01010113          	addi	sp,sp,16
    80004088:	00008067          	ret

000000008000408c <plic_complete>:
    8000408c:	fe010113          	addi	sp,sp,-32
    80004090:	00813823          	sd	s0,16(sp)
    80004094:	00913423          	sd	s1,8(sp)
    80004098:	00113c23          	sd	ra,24(sp)
    8000409c:	02010413          	addi	s0,sp,32
    800040a0:	00050493          	mv	s1,a0
    800040a4:	00000097          	auipc	ra,0x0
    800040a8:	9b4080e7          	jalr	-1612(ra) # 80003a58 <cpuid>
    800040ac:	01813083          	ld	ra,24(sp)
    800040b0:	01013403          	ld	s0,16(sp)
    800040b4:	00d5179b          	slliw	a5,a0,0xd
    800040b8:	0c201737          	lui	a4,0xc201
    800040bc:	00f707b3          	add	a5,a4,a5
    800040c0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    800040c4:	00813483          	ld	s1,8(sp)
    800040c8:	02010113          	addi	sp,sp,32
    800040cc:	00008067          	ret

00000000800040d0 <consolewrite>:
    800040d0:	fb010113          	addi	sp,sp,-80
    800040d4:	04813023          	sd	s0,64(sp)
    800040d8:	04113423          	sd	ra,72(sp)
    800040dc:	02913c23          	sd	s1,56(sp)
    800040e0:	03213823          	sd	s2,48(sp)
    800040e4:	03313423          	sd	s3,40(sp)
    800040e8:	03413023          	sd	s4,32(sp)
    800040ec:	01513c23          	sd	s5,24(sp)
    800040f0:	05010413          	addi	s0,sp,80
    800040f4:	06c05c63          	blez	a2,8000416c <consolewrite+0x9c>
    800040f8:	00060993          	mv	s3,a2
    800040fc:	00050a13          	mv	s4,a0
    80004100:	00058493          	mv	s1,a1
    80004104:	00000913          	li	s2,0
    80004108:	fff00a93          	li	s5,-1
    8000410c:	01c0006f          	j	80004128 <consolewrite+0x58>
    80004110:	fbf44503          	lbu	a0,-65(s0)
    80004114:	0019091b          	addiw	s2,s2,1
    80004118:	00148493          	addi	s1,s1,1
    8000411c:	00001097          	auipc	ra,0x1
    80004120:	a9c080e7          	jalr	-1380(ra) # 80004bb8 <uartputc>
    80004124:	03298063          	beq	s3,s2,80004144 <consolewrite+0x74>
    80004128:	00048613          	mv	a2,s1
    8000412c:	00100693          	li	a3,1
    80004130:	000a0593          	mv	a1,s4
    80004134:	fbf40513          	addi	a0,s0,-65
    80004138:	00000097          	auipc	ra,0x0
    8000413c:	9d8080e7          	jalr	-1576(ra) # 80003b10 <either_copyin>
    80004140:	fd5518e3          	bne	a0,s5,80004110 <consolewrite+0x40>
    80004144:	04813083          	ld	ra,72(sp)
    80004148:	04013403          	ld	s0,64(sp)
    8000414c:	03813483          	ld	s1,56(sp)
    80004150:	02813983          	ld	s3,40(sp)
    80004154:	02013a03          	ld	s4,32(sp)
    80004158:	01813a83          	ld	s5,24(sp)
    8000415c:	00090513          	mv	a0,s2
    80004160:	03013903          	ld	s2,48(sp)
    80004164:	05010113          	addi	sp,sp,80
    80004168:	00008067          	ret
    8000416c:	00000913          	li	s2,0
    80004170:	fd5ff06f          	j	80004144 <consolewrite+0x74>

0000000080004174 <consoleread>:
    80004174:	f9010113          	addi	sp,sp,-112
    80004178:	06813023          	sd	s0,96(sp)
    8000417c:	04913c23          	sd	s1,88(sp)
    80004180:	05213823          	sd	s2,80(sp)
    80004184:	05313423          	sd	s3,72(sp)
    80004188:	05413023          	sd	s4,64(sp)
    8000418c:	03513c23          	sd	s5,56(sp)
    80004190:	03613823          	sd	s6,48(sp)
    80004194:	03713423          	sd	s7,40(sp)
    80004198:	03813023          	sd	s8,32(sp)
    8000419c:	06113423          	sd	ra,104(sp)
    800041a0:	01913c23          	sd	s9,24(sp)
    800041a4:	07010413          	addi	s0,sp,112
    800041a8:	00060b93          	mv	s7,a2
    800041ac:	00050913          	mv	s2,a0
    800041b0:	00058c13          	mv	s8,a1
    800041b4:	00060b1b          	sext.w	s6,a2
    800041b8:	00004497          	auipc	s1,0x4
    800041bc:	31048493          	addi	s1,s1,784 # 800084c8 <cons>
    800041c0:	00400993          	li	s3,4
    800041c4:	fff00a13          	li	s4,-1
    800041c8:	00a00a93          	li	s5,10
    800041cc:	05705e63          	blez	s7,80004228 <consoleread+0xb4>
    800041d0:	09c4a703          	lw	a4,156(s1)
    800041d4:	0984a783          	lw	a5,152(s1)
    800041d8:	0007071b          	sext.w	a4,a4
    800041dc:	08e78463          	beq	a5,a4,80004264 <consoleread+0xf0>
    800041e0:	07f7f713          	andi	a4,a5,127
    800041e4:	00e48733          	add	a4,s1,a4
    800041e8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    800041ec:	0017869b          	addiw	a3,a5,1
    800041f0:	08d4ac23          	sw	a3,152(s1)
    800041f4:	00070c9b          	sext.w	s9,a4
    800041f8:	0b370663          	beq	a4,s3,800042a4 <consoleread+0x130>
    800041fc:	00100693          	li	a3,1
    80004200:	f9f40613          	addi	a2,s0,-97
    80004204:	000c0593          	mv	a1,s8
    80004208:	00090513          	mv	a0,s2
    8000420c:	f8e40fa3          	sb	a4,-97(s0)
    80004210:	00000097          	auipc	ra,0x0
    80004214:	8b4080e7          	jalr	-1868(ra) # 80003ac4 <either_copyout>
    80004218:	01450863          	beq	a0,s4,80004228 <consoleread+0xb4>
    8000421c:	001c0c13          	addi	s8,s8,1
    80004220:	fffb8b9b          	addiw	s7,s7,-1
    80004224:	fb5c94e3          	bne	s9,s5,800041cc <consoleread+0x58>
    80004228:	000b851b          	sext.w	a0,s7
    8000422c:	06813083          	ld	ra,104(sp)
    80004230:	06013403          	ld	s0,96(sp)
    80004234:	05813483          	ld	s1,88(sp)
    80004238:	05013903          	ld	s2,80(sp)
    8000423c:	04813983          	ld	s3,72(sp)
    80004240:	04013a03          	ld	s4,64(sp)
    80004244:	03813a83          	ld	s5,56(sp)
    80004248:	02813b83          	ld	s7,40(sp)
    8000424c:	02013c03          	ld	s8,32(sp)
    80004250:	01813c83          	ld	s9,24(sp)
    80004254:	40ab053b          	subw	a0,s6,a0
    80004258:	03013b03          	ld	s6,48(sp)
    8000425c:	07010113          	addi	sp,sp,112
    80004260:	00008067          	ret
    80004264:	00001097          	auipc	ra,0x1
    80004268:	1d8080e7          	jalr	472(ra) # 8000543c <push_on>
    8000426c:	0984a703          	lw	a4,152(s1)
    80004270:	09c4a783          	lw	a5,156(s1)
    80004274:	0007879b          	sext.w	a5,a5
    80004278:	fef70ce3          	beq	a4,a5,80004270 <consoleread+0xfc>
    8000427c:	00001097          	auipc	ra,0x1
    80004280:	234080e7          	jalr	564(ra) # 800054b0 <pop_on>
    80004284:	0984a783          	lw	a5,152(s1)
    80004288:	07f7f713          	andi	a4,a5,127
    8000428c:	00e48733          	add	a4,s1,a4
    80004290:	01874703          	lbu	a4,24(a4)
    80004294:	0017869b          	addiw	a3,a5,1
    80004298:	08d4ac23          	sw	a3,152(s1)
    8000429c:	00070c9b          	sext.w	s9,a4
    800042a0:	f5371ee3          	bne	a4,s3,800041fc <consoleread+0x88>
    800042a4:	000b851b          	sext.w	a0,s7
    800042a8:	f96bf2e3          	bgeu	s7,s6,8000422c <consoleread+0xb8>
    800042ac:	08f4ac23          	sw	a5,152(s1)
    800042b0:	f7dff06f          	j	8000422c <consoleread+0xb8>

00000000800042b4 <consputc>:
    800042b4:	10000793          	li	a5,256
    800042b8:	00f50663          	beq	a0,a5,800042c4 <consputc+0x10>
    800042bc:	00001317          	auipc	t1,0x1
    800042c0:	9f430067          	jr	-1548(t1) # 80004cb0 <uartputc_sync>
    800042c4:	ff010113          	addi	sp,sp,-16
    800042c8:	00113423          	sd	ra,8(sp)
    800042cc:	00813023          	sd	s0,0(sp)
    800042d0:	01010413          	addi	s0,sp,16
    800042d4:	00800513          	li	a0,8
    800042d8:	00001097          	auipc	ra,0x1
    800042dc:	9d8080e7          	jalr	-1576(ra) # 80004cb0 <uartputc_sync>
    800042e0:	02000513          	li	a0,32
    800042e4:	00001097          	auipc	ra,0x1
    800042e8:	9cc080e7          	jalr	-1588(ra) # 80004cb0 <uartputc_sync>
    800042ec:	00013403          	ld	s0,0(sp)
    800042f0:	00813083          	ld	ra,8(sp)
    800042f4:	00800513          	li	a0,8
    800042f8:	01010113          	addi	sp,sp,16
    800042fc:	00001317          	auipc	t1,0x1
    80004300:	9b430067          	jr	-1612(t1) # 80004cb0 <uartputc_sync>

0000000080004304 <consoleintr>:
    80004304:	fe010113          	addi	sp,sp,-32
    80004308:	00813823          	sd	s0,16(sp)
    8000430c:	00913423          	sd	s1,8(sp)
    80004310:	01213023          	sd	s2,0(sp)
    80004314:	00113c23          	sd	ra,24(sp)
    80004318:	02010413          	addi	s0,sp,32
    8000431c:	00004917          	auipc	s2,0x4
    80004320:	1ac90913          	addi	s2,s2,428 # 800084c8 <cons>
    80004324:	00050493          	mv	s1,a0
    80004328:	00090513          	mv	a0,s2
    8000432c:	00001097          	auipc	ra,0x1
    80004330:	e40080e7          	jalr	-448(ra) # 8000516c <acquire>
    80004334:	02048c63          	beqz	s1,8000436c <consoleintr+0x68>
    80004338:	0a092783          	lw	a5,160(s2)
    8000433c:	09892703          	lw	a4,152(s2)
    80004340:	07f00693          	li	a3,127
    80004344:	40e7873b          	subw	a4,a5,a4
    80004348:	02e6e263          	bltu	a3,a4,8000436c <consoleintr+0x68>
    8000434c:	00d00713          	li	a4,13
    80004350:	04e48063          	beq	s1,a4,80004390 <consoleintr+0x8c>
    80004354:	07f7f713          	andi	a4,a5,127
    80004358:	00e90733          	add	a4,s2,a4
    8000435c:	0017879b          	addiw	a5,a5,1
    80004360:	0af92023          	sw	a5,160(s2)
    80004364:	00970c23          	sb	s1,24(a4)
    80004368:	08f92e23          	sw	a5,156(s2)
    8000436c:	01013403          	ld	s0,16(sp)
    80004370:	01813083          	ld	ra,24(sp)
    80004374:	00813483          	ld	s1,8(sp)
    80004378:	00013903          	ld	s2,0(sp)
    8000437c:	00004517          	auipc	a0,0x4
    80004380:	14c50513          	addi	a0,a0,332 # 800084c8 <cons>
    80004384:	02010113          	addi	sp,sp,32
    80004388:	00001317          	auipc	t1,0x1
    8000438c:	eb030067          	jr	-336(t1) # 80005238 <release>
    80004390:	00a00493          	li	s1,10
    80004394:	fc1ff06f          	j	80004354 <consoleintr+0x50>

0000000080004398 <consoleinit>:
    80004398:	fe010113          	addi	sp,sp,-32
    8000439c:	00113c23          	sd	ra,24(sp)
    800043a0:	00813823          	sd	s0,16(sp)
    800043a4:	00913423          	sd	s1,8(sp)
    800043a8:	02010413          	addi	s0,sp,32
    800043ac:	00004497          	auipc	s1,0x4
    800043b0:	11c48493          	addi	s1,s1,284 # 800084c8 <cons>
    800043b4:	00048513          	mv	a0,s1
    800043b8:	00002597          	auipc	a1,0x2
    800043bc:	07858593          	addi	a1,a1,120 # 80006430 <CONSOLE_STATUS+0x420>
    800043c0:	00001097          	auipc	ra,0x1
    800043c4:	d88080e7          	jalr	-632(ra) # 80005148 <initlock>
    800043c8:	00000097          	auipc	ra,0x0
    800043cc:	7ac080e7          	jalr	1964(ra) # 80004b74 <uartinit>
    800043d0:	01813083          	ld	ra,24(sp)
    800043d4:	01013403          	ld	s0,16(sp)
    800043d8:	00000797          	auipc	a5,0x0
    800043dc:	d9c78793          	addi	a5,a5,-612 # 80004174 <consoleread>
    800043e0:	0af4bc23          	sd	a5,184(s1)
    800043e4:	00000797          	auipc	a5,0x0
    800043e8:	cec78793          	addi	a5,a5,-788 # 800040d0 <consolewrite>
    800043ec:	0cf4b023          	sd	a5,192(s1)
    800043f0:	00813483          	ld	s1,8(sp)
    800043f4:	02010113          	addi	sp,sp,32
    800043f8:	00008067          	ret

00000000800043fc <console_read>:
    800043fc:	ff010113          	addi	sp,sp,-16
    80004400:	00813423          	sd	s0,8(sp)
    80004404:	01010413          	addi	s0,sp,16
    80004408:	00813403          	ld	s0,8(sp)
    8000440c:	00004317          	auipc	t1,0x4
    80004410:	17433303          	ld	t1,372(t1) # 80008580 <devsw+0x10>
    80004414:	01010113          	addi	sp,sp,16
    80004418:	00030067          	jr	t1

000000008000441c <console_write>:
    8000441c:	ff010113          	addi	sp,sp,-16
    80004420:	00813423          	sd	s0,8(sp)
    80004424:	01010413          	addi	s0,sp,16
    80004428:	00813403          	ld	s0,8(sp)
    8000442c:	00004317          	auipc	t1,0x4
    80004430:	15c33303          	ld	t1,348(t1) # 80008588 <devsw+0x18>
    80004434:	01010113          	addi	sp,sp,16
    80004438:	00030067          	jr	t1

000000008000443c <panic>:
    8000443c:	fe010113          	addi	sp,sp,-32
    80004440:	00113c23          	sd	ra,24(sp)
    80004444:	00813823          	sd	s0,16(sp)
    80004448:	00913423          	sd	s1,8(sp)
    8000444c:	02010413          	addi	s0,sp,32
    80004450:	00050493          	mv	s1,a0
    80004454:	00002517          	auipc	a0,0x2
    80004458:	fe450513          	addi	a0,a0,-28 # 80006438 <CONSOLE_STATUS+0x428>
    8000445c:	00004797          	auipc	a5,0x4
    80004460:	1c07a623          	sw	zero,460(a5) # 80008628 <pr+0x18>
    80004464:	00000097          	auipc	ra,0x0
    80004468:	034080e7          	jalr	52(ra) # 80004498 <__printf>
    8000446c:	00048513          	mv	a0,s1
    80004470:	00000097          	auipc	ra,0x0
    80004474:	028080e7          	jalr	40(ra) # 80004498 <__printf>
    80004478:	00002517          	auipc	a0,0x2
    8000447c:	fa050513          	addi	a0,a0,-96 # 80006418 <CONSOLE_STATUS+0x408>
    80004480:	00000097          	auipc	ra,0x0
    80004484:	018080e7          	jalr	24(ra) # 80004498 <__printf>
    80004488:	00100793          	li	a5,1
    8000448c:	00003717          	auipc	a4,0x3
    80004490:	eef72623          	sw	a5,-276(a4) # 80007378 <panicked>
    80004494:	0000006f          	j	80004494 <panic+0x58>

0000000080004498 <__printf>:
    80004498:	f3010113          	addi	sp,sp,-208
    8000449c:	08813023          	sd	s0,128(sp)
    800044a0:	07313423          	sd	s3,104(sp)
    800044a4:	09010413          	addi	s0,sp,144
    800044a8:	05813023          	sd	s8,64(sp)
    800044ac:	08113423          	sd	ra,136(sp)
    800044b0:	06913c23          	sd	s1,120(sp)
    800044b4:	07213823          	sd	s2,112(sp)
    800044b8:	07413023          	sd	s4,96(sp)
    800044bc:	05513c23          	sd	s5,88(sp)
    800044c0:	05613823          	sd	s6,80(sp)
    800044c4:	05713423          	sd	s7,72(sp)
    800044c8:	03913c23          	sd	s9,56(sp)
    800044cc:	03a13823          	sd	s10,48(sp)
    800044d0:	03b13423          	sd	s11,40(sp)
    800044d4:	00004317          	auipc	t1,0x4
    800044d8:	13c30313          	addi	t1,t1,316 # 80008610 <pr>
    800044dc:	01832c03          	lw	s8,24(t1)
    800044e0:	00b43423          	sd	a1,8(s0)
    800044e4:	00c43823          	sd	a2,16(s0)
    800044e8:	00d43c23          	sd	a3,24(s0)
    800044ec:	02e43023          	sd	a4,32(s0)
    800044f0:	02f43423          	sd	a5,40(s0)
    800044f4:	03043823          	sd	a6,48(s0)
    800044f8:	03143c23          	sd	a7,56(s0)
    800044fc:	00050993          	mv	s3,a0
    80004500:	4a0c1663          	bnez	s8,800049ac <__printf+0x514>
    80004504:	60098c63          	beqz	s3,80004b1c <__printf+0x684>
    80004508:	0009c503          	lbu	a0,0(s3)
    8000450c:	00840793          	addi	a5,s0,8
    80004510:	f6f43c23          	sd	a5,-136(s0)
    80004514:	00000493          	li	s1,0
    80004518:	22050063          	beqz	a0,80004738 <__printf+0x2a0>
    8000451c:	00002a37          	lui	s4,0x2
    80004520:	00018ab7          	lui	s5,0x18
    80004524:	000f4b37          	lui	s6,0xf4
    80004528:	00989bb7          	lui	s7,0x989
    8000452c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80004530:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80004534:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80004538:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000453c:	00148c9b          	addiw	s9,s1,1
    80004540:	02500793          	li	a5,37
    80004544:	01998933          	add	s2,s3,s9
    80004548:	38f51263          	bne	a0,a5,800048cc <__printf+0x434>
    8000454c:	00094783          	lbu	a5,0(s2)
    80004550:	00078c9b          	sext.w	s9,a5
    80004554:	1e078263          	beqz	a5,80004738 <__printf+0x2a0>
    80004558:	0024849b          	addiw	s1,s1,2
    8000455c:	07000713          	li	a4,112
    80004560:	00998933          	add	s2,s3,s1
    80004564:	38e78a63          	beq	a5,a4,800048f8 <__printf+0x460>
    80004568:	20f76863          	bltu	a4,a5,80004778 <__printf+0x2e0>
    8000456c:	42a78863          	beq	a5,a0,8000499c <__printf+0x504>
    80004570:	06400713          	li	a4,100
    80004574:	40e79663          	bne	a5,a4,80004980 <__printf+0x4e8>
    80004578:	f7843783          	ld	a5,-136(s0)
    8000457c:	0007a603          	lw	a2,0(a5)
    80004580:	00878793          	addi	a5,a5,8
    80004584:	f6f43c23          	sd	a5,-136(s0)
    80004588:	42064a63          	bltz	a2,800049bc <__printf+0x524>
    8000458c:	00a00713          	li	a4,10
    80004590:	02e677bb          	remuw	a5,a2,a4
    80004594:	00002d97          	auipc	s11,0x2
    80004598:	eccd8d93          	addi	s11,s11,-308 # 80006460 <digits>
    8000459c:	00900593          	li	a1,9
    800045a0:	0006051b          	sext.w	a0,a2
    800045a4:	00000c93          	li	s9,0
    800045a8:	02079793          	slli	a5,a5,0x20
    800045ac:	0207d793          	srli	a5,a5,0x20
    800045b0:	00fd87b3          	add	a5,s11,a5
    800045b4:	0007c783          	lbu	a5,0(a5)
    800045b8:	02e656bb          	divuw	a3,a2,a4
    800045bc:	f8f40023          	sb	a5,-128(s0)
    800045c0:	14c5d863          	bge	a1,a2,80004710 <__printf+0x278>
    800045c4:	06300593          	li	a1,99
    800045c8:	00100c93          	li	s9,1
    800045cc:	02e6f7bb          	remuw	a5,a3,a4
    800045d0:	02079793          	slli	a5,a5,0x20
    800045d4:	0207d793          	srli	a5,a5,0x20
    800045d8:	00fd87b3          	add	a5,s11,a5
    800045dc:	0007c783          	lbu	a5,0(a5)
    800045e0:	02e6d73b          	divuw	a4,a3,a4
    800045e4:	f8f400a3          	sb	a5,-127(s0)
    800045e8:	12a5f463          	bgeu	a1,a0,80004710 <__printf+0x278>
    800045ec:	00a00693          	li	a3,10
    800045f0:	00900593          	li	a1,9
    800045f4:	02d777bb          	remuw	a5,a4,a3
    800045f8:	02079793          	slli	a5,a5,0x20
    800045fc:	0207d793          	srli	a5,a5,0x20
    80004600:	00fd87b3          	add	a5,s11,a5
    80004604:	0007c503          	lbu	a0,0(a5)
    80004608:	02d757bb          	divuw	a5,a4,a3
    8000460c:	f8a40123          	sb	a0,-126(s0)
    80004610:	48e5f263          	bgeu	a1,a4,80004a94 <__printf+0x5fc>
    80004614:	06300513          	li	a0,99
    80004618:	02d7f5bb          	remuw	a1,a5,a3
    8000461c:	02059593          	slli	a1,a1,0x20
    80004620:	0205d593          	srli	a1,a1,0x20
    80004624:	00bd85b3          	add	a1,s11,a1
    80004628:	0005c583          	lbu	a1,0(a1)
    8000462c:	02d7d7bb          	divuw	a5,a5,a3
    80004630:	f8b401a3          	sb	a1,-125(s0)
    80004634:	48e57263          	bgeu	a0,a4,80004ab8 <__printf+0x620>
    80004638:	3e700513          	li	a0,999
    8000463c:	02d7f5bb          	remuw	a1,a5,a3
    80004640:	02059593          	slli	a1,a1,0x20
    80004644:	0205d593          	srli	a1,a1,0x20
    80004648:	00bd85b3          	add	a1,s11,a1
    8000464c:	0005c583          	lbu	a1,0(a1)
    80004650:	02d7d7bb          	divuw	a5,a5,a3
    80004654:	f8b40223          	sb	a1,-124(s0)
    80004658:	46e57663          	bgeu	a0,a4,80004ac4 <__printf+0x62c>
    8000465c:	02d7f5bb          	remuw	a1,a5,a3
    80004660:	02059593          	slli	a1,a1,0x20
    80004664:	0205d593          	srli	a1,a1,0x20
    80004668:	00bd85b3          	add	a1,s11,a1
    8000466c:	0005c583          	lbu	a1,0(a1)
    80004670:	02d7d7bb          	divuw	a5,a5,a3
    80004674:	f8b402a3          	sb	a1,-123(s0)
    80004678:	46ea7863          	bgeu	s4,a4,80004ae8 <__printf+0x650>
    8000467c:	02d7f5bb          	remuw	a1,a5,a3
    80004680:	02059593          	slli	a1,a1,0x20
    80004684:	0205d593          	srli	a1,a1,0x20
    80004688:	00bd85b3          	add	a1,s11,a1
    8000468c:	0005c583          	lbu	a1,0(a1)
    80004690:	02d7d7bb          	divuw	a5,a5,a3
    80004694:	f8b40323          	sb	a1,-122(s0)
    80004698:	3eeaf863          	bgeu	s5,a4,80004a88 <__printf+0x5f0>
    8000469c:	02d7f5bb          	remuw	a1,a5,a3
    800046a0:	02059593          	slli	a1,a1,0x20
    800046a4:	0205d593          	srli	a1,a1,0x20
    800046a8:	00bd85b3          	add	a1,s11,a1
    800046ac:	0005c583          	lbu	a1,0(a1)
    800046b0:	02d7d7bb          	divuw	a5,a5,a3
    800046b4:	f8b403a3          	sb	a1,-121(s0)
    800046b8:	42eb7e63          	bgeu	s6,a4,80004af4 <__printf+0x65c>
    800046bc:	02d7f5bb          	remuw	a1,a5,a3
    800046c0:	02059593          	slli	a1,a1,0x20
    800046c4:	0205d593          	srli	a1,a1,0x20
    800046c8:	00bd85b3          	add	a1,s11,a1
    800046cc:	0005c583          	lbu	a1,0(a1)
    800046d0:	02d7d7bb          	divuw	a5,a5,a3
    800046d4:	f8b40423          	sb	a1,-120(s0)
    800046d8:	42ebfc63          	bgeu	s7,a4,80004b10 <__printf+0x678>
    800046dc:	02079793          	slli	a5,a5,0x20
    800046e0:	0207d793          	srli	a5,a5,0x20
    800046e4:	00fd8db3          	add	s11,s11,a5
    800046e8:	000dc703          	lbu	a4,0(s11)
    800046ec:	00a00793          	li	a5,10
    800046f0:	00900c93          	li	s9,9
    800046f4:	f8e404a3          	sb	a4,-119(s0)
    800046f8:	00065c63          	bgez	a2,80004710 <__printf+0x278>
    800046fc:	f9040713          	addi	a4,s0,-112
    80004700:	00f70733          	add	a4,a4,a5
    80004704:	02d00693          	li	a3,45
    80004708:	fed70823          	sb	a3,-16(a4)
    8000470c:	00078c93          	mv	s9,a5
    80004710:	f8040793          	addi	a5,s0,-128
    80004714:	01978cb3          	add	s9,a5,s9
    80004718:	f7f40d13          	addi	s10,s0,-129
    8000471c:	000cc503          	lbu	a0,0(s9)
    80004720:	fffc8c93          	addi	s9,s9,-1
    80004724:	00000097          	auipc	ra,0x0
    80004728:	b90080e7          	jalr	-1136(ra) # 800042b4 <consputc>
    8000472c:	ffac98e3          	bne	s9,s10,8000471c <__printf+0x284>
    80004730:	00094503          	lbu	a0,0(s2)
    80004734:	e00514e3          	bnez	a0,8000453c <__printf+0xa4>
    80004738:	1a0c1663          	bnez	s8,800048e4 <__printf+0x44c>
    8000473c:	08813083          	ld	ra,136(sp)
    80004740:	08013403          	ld	s0,128(sp)
    80004744:	07813483          	ld	s1,120(sp)
    80004748:	07013903          	ld	s2,112(sp)
    8000474c:	06813983          	ld	s3,104(sp)
    80004750:	06013a03          	ld	s4,96(sp)
    80004754:	05813a83          	ld	s5,88(sp)
    80004758:	05013b03          	ld	s6,80(sp)
    8000475c:	04813b83          	ld	s7,72(sp)
    80004760:	04013c03          	ld	s8,64(sp)
    80004764:	03813c83          	ld	s9,56(sp)
    80004768:	03013d03          	ld	s10,48(sp)
    8000476c:	02813d83          	ld	s11,40(sp)
    80004770:	0d010113          	addi	sp,sp,208
    80004774:	00008067          	ret
    80004778:	07300713          	li	a4,115
    8000477c:	1ce78a63          	beq	a5,a4,80004950 <__printf+0x4b8>
    80004780:	07800713          	li	a4,120
    80004784:	1ee79e63          	bne	a5,a4,80004980 <__printf+0x4e8>
    80004788:	f7843783          	ld	a5,-136(s0)
    8000478c:	0007a703          	lw	a4,0(a5)
    80004790:	00878793          	addi	a5,a5,8
    80004794:	f6f43c23          	sd	a5,-136(s0)
    80004798:	28074263          	bltz	a4,80004a1c <__printf+0x584>
    8000479c:	00002d97          	auipc	s11,0x2
    800047a0:	cc4d8d93          	addi	s11,s11,-828 # 80006460 <digits>
    800047a4:	00f77793          	andi	a5,a4,15
    800047a8:	00fd87b3          	add	a5,s11,a5
    800047ac:	0007c683          	lbu	a3,0(a5)
    800047b0:	00f00613          	li	a2,15
    800047b4:	0007079b          	sext.w	a5,a4
    800047b8:	f8d40023          	sb	a3,-128(s0)
    800047bc:	0047559b          	srliw	a1,a4,0x4
    800047c0:	0047569b          	srliw	a3,a4,0x4
    800047c4:	00000c93          	li	s9,0
    800047c8:	0ee65063          	bge	a2,a4,800048a8 <__printf+0x410>
    800047cc:	00f6f693          	andi	a3,a3,15
    800047d0:	00dd86b3          	add	a3,s11,a3
    800047d4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    800047d8:	0087d79b          	srliw	a5,a5,0x8
    800047dc:	00100c93          	li	s9,1
    800047e0:	f8d400a3          	sb	a3,-127(s0)
    800047e4:	0cb67263          	bgeu	a2,a1,800048a8 <__printf+0x410>
    800047e8:	00f7f693          	andi	a3,a5,15
    800047ec:	00dd86b3          	add	a3,s11,a3
    800047f0:	0006c583          	lbu	a1,0(a3)
    800047f4:	00f00613          	li	a2,15
    800047f8:	0047d69b          	srliw	a3,a5,0x4
    800047fc:	f8b40123          	sb	a1,-126(s0)
    80004800:	0047d593          	srli	a1,a5,0x4
    80004804:	28f67e63          	bgeu	a2,a5,80004aa0 <__printf+0x608>
    80004808:	00f6f693          	andi	a3,a3,15
    8000480c:	00dd86b3          	add	a3,s11,a3
    80004810:	0006c503          	lbu	a0,0(a3)
    80004814:	0087d813          	srli	a6,a5,0x8
    80004818:	0087d69b          	srliw	a3,a5,0x8
    8000481c:	f8a401a3          	sb	a0,-125(s0)
    80004820:	28b67663          	bgeu	a2,a1,80004aac <__printf+0x614>
    80004824:	00f6f693          	andi	a3,a3,15
    80004828:	00dd86b3          	add	a3,s11,a3
    8000482c:	0006c583          	lbu	a1,0(a3)
    80004830:	00c7d513          	srli	a0,a5,0xc
    80004834:	00c7d69b          	srliw	a3,a5,0xc
    80004838:	f8b40223          	sb	a1,-124(s0)
    8000483c:	29067a63          	bgeu	a2,a6,80004ad0 <__printf+0x638>
    80004840:	00f6f693          	andi	a3,a3,15
    80004844:	00dd86b3          	add	a3,s11,a3
    80004848:	0006c583          	lbu	a1,0(a3)
    8000484c:	0107d813          	srli	a6,a5,0x10
    80004850:	0107d69b          	srliw	a3,a5,0x10
    80004854:	f8b402a3          	sb	a1,-123(s0)
    80004858:	28a67263          	bgeu	a2,a0,80004adc <__printf+0x644>
    8000485c:	00f6f693          	andi	a3,a3,15
    80004860:	00dd86b3          	add	a3,s11,a3
    80004864:	0006c683          	lbu	a3,0(a3)
    80004868:	0147d79b          	srliw	a5,a5,0x14
    8000486c:	f8d40323          	sb	a3,-122(s0)
    80004870:	21067663          	bgeu	a2,a6,80004a7c <__printf+0x5e4>
    80004874:	02079793          	slli	a5,a5,0x20
    80004878:	0207d793          	srli	a5,a5,0x20
    8000487c:	00fd8db3          	add	s11,s11,a5
    80004880:	000dc683          	lbu	a3,0(s11)
    80004884:	00800793          	li	a5,8
    80004888:	00700c93          	li	s9,7
    8000488c:	f8d403a3          	sb	a3,-121(s0)
    80004890:	00075c63          	bgez	a4,800048a8 <__printf+0x410>
    80004894:	f9040713          	addi	a4,s0,-112
    80004898:	00f70733          	add	a4,a4,a5
    8000489c:	02d00693          	li	a3,45
    800048a0:	fed70823          	sb	a3,-16(a4)
    800048a4:	00078c93          	mv	s9,a5
    800048a8:	f8040793          	addi	a5,s0,-128
    800048ac:	01978cb3          	add	s9,a5,s9
    800048b0:	f7f40d13          	addi	s10,s0,-129
    800048b4:	000cc503          	lbu	a0,0(s9)
    800048b8:	fffc8c93          	addi	s9,s9,-1
    800048bc:	00000097          	auipc	ra,0x0
    800048c0:	9f8080e7          	jalr	-1544(ra) # 800042b4 <consputc>
    800048c4:	ff9d18e3          	bne	s10,s9,800048b4 <__printf+0x41c>
    800048c8:	0100006f          	j	800048d8 <__printf+0x440>
    800048cc:	00000097          	auipc	ra,0x0
    800048d0:	9e8080e7          	jalr	-1560(ra) # 800042b4 <consputc>
    800048d4:	000c8493          	mv	s1,s9
    800048d8:	00094503          	lbu	a0,0(s2)
    800048dc:	c60510e3          	bnez	a0,8000453c <__printf+0xa4>
    800048e0:	e40c0ee3          	beqz	s8,8000473c <__printf+0x2a4>
    800048e4:	00004517          	auipc	a0,0x4
    800048e8:	d2c50513          	addi	a0,a0,-724 # 80008610 <pr>
    800048ec:	00001097          	auipc	ra,0x1
    800048f0:	94c080e7          	jalr	-1716(ra) # 80005238 <release>
    800048f4:	e49ff06f          	j	8000473c <__printf+0x2a4>
    800048f8:	f7843783          	ld	a5,-136(s0)
    800048fc:	03000513          	li	a0,48
    80004900:	01000d13          	li	s10,16
    80004904:	00878713          	addi	a4,a5,8
    80004908:	0007bc83          	ld	s9,0(a5)
    8000490c:	f6e43c23          	sd	a4,-136(s0)
    80004910:	00000097          	auipc	ra,0x0
    80004914:	9a4080e7          	jalr	-1628(ra) # 800042b4 <consputc>
    80004918:	07800513          	li	a0,120
    8000491c:	00000097          	auipc	ra,0x0
    80004920:	998080e7          	jalr	-1640(ra) # 800042b4 <consputc>
    80004924:	00002d97          	auipc	s11,0x2
    80004928:	b3cd8d93          	addi	s11,s11,-1220 # 80006460 <digits>
    8000492c:	03ccd793          	srli	a5,s9,0x3c
    80004930:	00fd87b3          	add	a5,s11,a5
    80004934:	0007c503          	lbu	a0,0(a5)
    80004938:	fffd0d1b          	addiw	s10,s10,-1
    8000493c:	004c9c93          	slli	s9,s9,0x4
    80004940:	00000097          	auipc	ra,0x0
    80004944:	974080e7          	jalr	-1676(ra) # 800042b4 <consputc>
    80004948:	fe0d12e3          	bnez	s10,8000492c <__printf+0x494>
    8000494c:	f8dff06f          	j	800048d8 <__printf+0x440>
    80004950:	f7843783          	ld	a5,-136(s0)
    80004954:	0007bc83          	ld	s9,0(a5)
    80004958:	00878793          	addi	a5,a5,8
    8000495c:	f6f43c23          	sd	a5,-136(s0)
    80004960:	000c9a63          	bnez	s9,80004974 <__printf+0x4dc>
    80004964:	1080006f          	j	80004a6c <__printf+0x5d4>
    80004968:	001c8c93          	addi	s9,s9,1
    8000496c:	00000097          	auipc	ra,0x0
    80004970:	948080e7          	jalr	-1720(ra) # 800042b4 <consputc>
    80004974:	000cc503          	lbu	a0,0(s9)
    80004978:	fe0518e3          	bnez	a0,80004968 <__printf+0x4d0>
    8000497c:	f5dff06f          	j	800048d8 <__printf+0x440>
    80004980:	02500513          	li	a0,37
    80004984:	00000097          	auipc	ra,0x0
    80004988:	930080e7          	jalr	-1744(ra) # 800042b4 <consputc>
    8000498c:	000c8513          	mv	a0,s9
    80004990:	00000097          	auipc	ra,0x0
    80004994:	924080e7          	jalr	-1756(ra) # 800042b4 <consputc>
    80004998:	f41ff06f          	j	800048d8 <__printf+0x440>
    8000499c:	02500513          	li	a0,37
    800049a0:	00000097          	auipc	ra,0x0
    800049a4:	914080e7          	jalr	-1772(ra) # 800042b4 <consputc>
    800049a8:	f31ff06f          	j	800048d8 <__printf+0x440>
    800049ac:	00030513          	mv	a0,t1
    800049b0:	00000097          	auipc	ra,0x0
    800049b4:	7bc080e7          	jalr	1980(ra) # 8000516c <acquire>
    800049b8:	b4dff06f          	j	80004504 <__printf+0x6c>
    800049bc:	40c0053b          	negw	a0,a2
    800049c0:	00a00713          	li	a4,10
    800049c4:	02e576bb          	remuw	a3,a0,a4
    800049c8:	00002d97          	auipc	s11,0x2
    800049cc:	a98d8d93          	addi	s11,s11,-1384 # 80006460 <digits>
    800049d0:	ff700593          	li	a1,-9
    800049d4:	02069693          	slli	a3,a3,0x20
    800049d8:	0206d693          	srli	a3,a3,0x20
    800049dc:	00dd86b3          	add	a3,s11,a3
    800049e0:	0006c683          	lbu	a3,0(a3)
    800049e4:	02e557bb          	divuw	a5,a0,a4
    800049e8:	f8d40023          	sb	a3,-128(s0)
    800049ec:	10b65e63          	bge	a2,a1,80004b08 <__printf+0x670>
    800049f0:	06300593          	li	a1,99
    800049f4:	02e7f6bb          	remuw	a3,a5,a4
    800049f8:	02069693          	slli	a3,a3,0x20
    800049fc:	0206d693          	srli	a3,a3,0x20
    80004a00:	00dd86b3          	add	a3,s11,a3
    80004a04:	0006c683          	lbu	a3,0(a3)
    80004a08:	02e7d73b          	divuw	a4,a5,a4
    80004a0c:	00200793          	li	a5,2
    80004a10:	f8d400a3          	sb	a3,-127(s0)
    80004a14:	bca5ece3          	bltu	a1,a0,800045ec <__printf+0x154>
    80004a18:	ce5ff06f          	j	800046fc <__printf+0x264>
    80004a1c:	40e007bb          	negw	a5,a4
    80004a20:	00002d97          	auipc	s11,0x2
    80004a24:	a40d8d93          	addi	s11,s11,-1472 # 80006460 <digits>
    80004a28:	00f7f693          	andi	a3,a5,15
    80004a2c:	00dd86b3          	add	a3,s11,a3
    80004a30:	0006c583          	lbu	a1,0(a3)
    80004a34:	ff100613          	li	a2,-15
    80004a38:	0047d69b          	srliw	a3,a5,0x4
    80004a3c:	f8b40023          	sb	a1,-128(s0)
    80004a40:	0047d59b          	srliw	a1,a5,0x4
    80004a44:	0ac75e63          	bge	a4,a2,80004b00 <__printf+0x668>
    80004a48:	00f6f693          	andi	a3,a3,15
    80004a4c:	00dd86b3          	add	a3,s11,a3
    80004a50:	0006c603          	lbu	a2,0(a3)
    80004a54:	00f00693          	li	a3,15
    80004a58:	0087d79b          	srliw	a5,a5,0x8
    80004a5c:	f8c400a3          	sb	a2,-127(s0)
    80004a60:	d8b6e4e3          	bltu	a3,a1,800047e8 <__printf+0x350>
    80004a64:	00200793          	li	a5,2
    80004a68:	e2dff06f          	j	80004894 <__printf+0x3fc>
    80004a6c:	00002c97          	auipc	s9,0x2
    80004a70:	9d4c8c93          	addi	s9,s9,-1580 # 80006440 <CONSOLE_STATUS+0x430>
    80004a74:	02800513          	li	a0,40
    80004a78:	ef1ff06f          	j	80004968 <__printf+0x4d0>
    80004a7c:	00700793          	li	a5,7
    80004a80:	00600c93          	li	s9,6
    80004a84:	e0dff06f          	j	80004890 <__printf+0x3f8>
    80004a88:	00700793          	li	a5,7
    80004a8c:	00600c93          	li	s9,6
    80004a90:	c69ff06f          	j	800046f8 <__printf+0x260>
    80004a94:	00300793          	li	a5,3
    80004a98:	00200c93          	li	s9,2
    80004a9c:	c5dff06f          	j	800046f8 <__printf+0x260>
    80004aa0:	00300793          	li	a5,3
    80004aa4:	00200c93          	li	s9,2
    80004aa8:	de9ff06f          	j	80004890 <__printf+0x3f8>
    80004aac:	00400793          	li	a5,4
    80004ab0:	00300c93          	li	s9,3
    80004ab4:	dddff06f          	j	80004890 <__printf+0x3f8>
    80004ab8:	00400793          	li	a5,4
    80004abc:	00300c93          	li	s9,3
    80004ac0:	c39ff06f          	j	800046f8 <__printf+0x260>
    80004ac4:	00500793          	li	a5,5
    80004ac8:	00400c93          	li	s9,4
    80004acc:	c2dff06f          	j	800046f8 <__printf+0x260>
    80004ad0:	00500793          	li	a5,5
    80004ad4:	00400c93          	li	s9,4
    80004ad8:	db9ff06f          	j	80004890 <__printf+0x3f8>
    80004adc:	00600793          	li	a5,6
    80004ae0:	00500c93          	li	s9,5
    80004ae4:	dadff06f          	j	80004890 <__printf+0x3f8>
    80004ae8:	00600793          	li	a5,6
    80004aec:	00500c93          	li	s9,5
    80004af0:	c09ff06f          	j	800046f8 <__printf+0x260>
    80004af4:	00800793          	li	a5,8
    80004af8:	00700c93          	li	s9,7
    80004afc:	bfdff06f          	j	800046f8 <__printf+0x260>
    80004b00:	00100793          	li	a5,1
    80004b04:	d91ff06f          	j	80004894 <__printf+0x3fc>
    80004b08:	00100793          	li	a5,1
    80004b0c:	bf1ff06f          	j	800046fc <__printf+0x264>
    80004b10:	00900793          	li	a5,9
    80004b14:	00800c93          	li	s9,8
    80004b18:	be1ff06f          	j	800046f8 <__printf+0x260>
    80004b1c:	00002517          	auipc	a0,0x2
    80004b20:	92c50513          	addi	a0,a0,-1748 # 80006448 <CONSOLE_STATUS+0x438>
    80004b24:	00000097          	auipc	ra,0x0
    80004b28:	918080e7          	jalr	-1768(ra) # 8000443c <panic>

0000000080004b2c <printfinit>:
    80004b2c:	fe010113          	addi	sp,sp,-32
    80004b30:	00813823          	sd	s0,16(sp)
    80004b34:	00913423          	sd	s1,8(sp)
    80004b38:	00113c23          	sd	ra,24(sp)
    80004b3c:	02010413          	addi	s0,sp,32
    80004b40:	00004497          	auipc	s1,0x4
    80004b44:	ad048493          	addi	s1,s1,-1328 # 80008610 <pr>
    80004b48:	00048513          	mv	a0,s1
    80004b4c:	00002597          	auipc	a1,0x2
    80004b50:	90c58593          	addi	a1,a1,-1780 # 80006458 <CONSOLE_STATUS+0x448>
    80004b54:	00000097          	auipc	ra,0x0
    80004b58:	5f4080e7          	jalr	1524(ra) # 80005148 <initlock>
    80004b5c:	01813083          	ld	ra,24(sp)
    80004b60:	01013403          	ld	s0,16(sp)
    80004b64:	0004ac23          	sw	zero,24(s1)
    80004b68:	00813483          	ld	s1,8(sp)
    80004b6c:	02010113          	addi	sp,sp,32
    80004b70:	00008067          	ret

0000000080004b74 <uartinit>:
    80004b74:	ff010113          	addi	sp,sp,-16
    80004b78:	00813423          	sd	s0,8(sp)
    80004b7c:	01010413          	addi	s0,sp,16
    80004b80:	100007b7          	lui	a5,0x10000
    80004b84:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80004b88:	f8000713          	li	a4,-128
    80004b8c:	00e781a3          	sb	a4,3(a5)
    80004b90:	00300713          	li	a4,3
    80004b94:	00e78023          	sb	a4,0(a5)
    80004b98:	000780a3          	sb	zero,1(a5)
    80004b9c:	00e781a3          	sb	a4,3(a5)
    80004ba0:	00700693          	li	a3,7
    80004ba4:	00d78123          	sb	a3,2(a5)
    80004ba8:	00e780a3          	sb	a4,1(a5)
    80004bac:	00813403          	ld	s0,8(sp)
    80004bb0:	01010113          	addi	sp,sp,16
    80004bb4:	00008067          	ret

0000000080004bb8 <uartputc>:
    80004bb8:	00002797          	auipc	a5,0x2
    80004bbc:	7c07a783          	lw	a5,1984(a5) # 80007378 <panicked>
    80004bc0:	00078463          	beqz	a5,80004bc8 <uartputc+0x10>
    80004bc4:	0000006f          	j	80004bc4 <uartputc+0xc>
    80004bc8:	fd010113          	addi	sp,sp,-48
    80004bcc:	02813023          	sd	s0,32(sp)
    80004bd0:	00913c23          	sd	s1,24(sp)
    80004bd4:	01213823          	sd	s2,16(sp)
    80004bd8:	01313423          	sd	s3,8(sp)
    80004bdc:	02113423          	sd	ra,40(sp)
    80004be0:	03010413          	addi	s0,sp,48
    80004be4:	00002917          	auipc	s2,0x2
    80004be8:	79c90913          	addi	s2,s2,1948 # 80007380 <uart_tx_r>
    80004bec:	00093783          	ld	a5,0(s2)
    80004bf0:	00002497          	auipc	s1,0x2
    80004bf4:	79848493          	addi	s1,s1,1944 # 80007388 <uart_tx_w>
    80004bf8:	0004b703          	ld	a4,0(s1)
    80004bfc:	02078693          	addi	a3,a5,32
    80004c00:	00050993          	mv	s3,a0
    80004c04:	02e69c63          	bne	a3,a4,80004c3c <uartputc+0x84>
    80004c08:	00001097          	auipc	ra,0x1
    80004c0c:	834080e7          	jalr	-1996(ra) # 8000543c <push_on>
    80004c10:	00093783          	ld	a5,0(s2)
    80004c14:	0004b703          	ld	a4,0(s1)
    80004c18:	02078793          	addi	a5,a5,32
    80004c1c:	00e79463          	bne	a5,a4,80004c24 <uartputc+0x6c>
    80004c20:	0000006f          	j	80004c20 <uartputc+0x68>
    80004c24:	00001097          	auipc	ra,0x1
    80004c28:	88c080e7          	jalr	-1908(ra) # 800054b0 <pop_on>
    80004c2c:	00093783          	ld	a5,0(s2)
    80004c30:	0004b703          	ld	a4,0(s1)
    80004c34:	02078693          	addi	a3,a5,32
    80004c38:	fce688e3          	beq	a3,a4,80004c08 <uartputc+0x50>
    80004c3c:	01f77693          	andi	a3,a4,31
    80004c40:	00004597          	auipc	a1,0x4
    80004c44:	9f058593          	addi	a1,a1,-1552 # 80008630 <uart_tx_buf>
    80004c48:	00d586b3          	add	a3,a1,a3
    80004c4c:	00170713          	addi	a4,a4,1
    80004c50:	01368023          	sb	s3,0(a3)
    80004c54:	00e4b023          	sd	a4,0(s1)
    80004c58:	10000637          	lui	a2,0x10000
    80004c5c:	02f71063          	bne	a4,a5,80004c7c <uartputc+0xc4>
    80004c60:	0340006f          	j	80004c94 <uartputc+0xdc>
    80004c64:	00074703          	lbu	a4,0(a4)
    80004c68:	00f93023          	sd	a5,0(s2)
    80004c6c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80004c70:	00093783          	ld	a5,0(s2)
    80004c74:	0004b703          	ld	a4,0(s1)
    80004c78:	00f70e63          	beq	a4,a5,80004c94 <uartputc+0xdc>
    80004c7c:	00564683          	lbu	a3,5(a2)
    80004c80:	01f7f713          	andi	a4,a5,31
    80004c84:	00e58733          	add	a4,a1,a4
    80004c88:	0206f693          	andi	a3,a3,32
    80004c8c:	00178793          	addi	a5,a5,1
    80004c90:	fc069ae3          	bnez	a3,80004c64 <uartputc+0xac>
    80004c94:	02813083          	ld	ra,40(sp)
    80004c98:	02013403          	ld	s0,32(sp)
    80004c9c:	01813483          	ld	s1,24(sp)
    80004ca0:	01013903          	ld	s2,16(sp)
    80004ca4:	00813983          	ld	s3,8(sp)
    80004ca8:	03010113          	addi	sp,sp,48
    80004cac:	00008067          	ret

0000000080004cb0 <uartputc_sync>:
    80004cb0:	ff010113          	addi	sp,sp,-16
    80004cb4:	00813423          	sd	s0,8(sp)
    80004cb8:	01010413          	addi	s0,sp,16
    80004cbc:	00002717          	auipc	a4,0x2
    80004cc0:	6bc72703          	lw	a4,1724(a4) # 80007378 <panicked>
    80004cc4:	02071663          	bnez	a4,80004cf0 <uartputc_sync+0x40>
    80004cc8:	00050793          	mv	a5,a0
    80004ccc:	100006b7          	lui	a3,0x10000
    80004cd0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80004cd4:	02077713          	andi	a4,a4,32
    80004cd8:	fe070ce3          	beqz	a4,80004cd0 <uartputc_sync+0x20>
    80004cdc:	0ff7f793          	andi	a5,a5,255
    80004ce0:	00f68023          	sb	a5,0(a3)
    80004ce4:	00813403          	ld	s0,8(sp)
    80004ce8:	01010113          	addi	sp,sp,16
    80004cec:	00008067          	ret
    80004cf0:	0000006f          	j	80004cf0 <uartputc_sync+0x40>

0000000080004cf4 <uartstart>:
    80004cf4:	ff010113          	addi	sp,sp,-16
    80004cf8:	00813423          	sd	s0,8(sp)
    80004cfc:	01010413          	addi	s0,sp,16
    80004d00:	00002617          	auipc	a2,0x2
    80004d04:	68060613          	addi	a2,a2,1664 # 80007380 <uart_tx_r>
    80004d08:	00002517          	auipc	a0,0x2
    80004d0c:	68050513          	addi	a0,a0,1664 # 80007388 <uart_tx_w>
    80004d10:	00063783          	ld	a5,0(a2)
    80004d14:	00053703          	ld	a4,0(a0)
    80004d18:	04f70263          	beq	a4,a5,80004d5c <uartstart+0x68>
    80004d1c:	100005b7          	lui	a1,0x10000
    80004d20:	00004817          	auipc	a6,0x4
    80004d24:	91080813          	addi	a6,a6,-1776 # 80008630 <uart_tx_buf>
    80004d28:	01c0006f          	j	80004d44 <uartstart+0x50>
    80004d2c:	0006c703          	lbu	a4,0(a3)
    80004d30:	00f63023          	sd	a5,0(a2)
    80004d34:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80004d38:	00063783          	ld	a5,0(a2)
    80004d3c:	00053703          	ld	a4,0(a0)
    80004d40:	00f70e63          	beq	a4,a5,80004d5c <uartstart+0x68>
    80004d44:	01f7f713          	andi	a4,a5,31
    80004d48:	00e806b3          	add	a3,a6,a4
    80004d4c:	0055c703          	lbu	a4,5(a1)
    80004d50:	00178793          	addi	a5,a5,1
    80004d54:	02077713          	andi	a4,a4,32
    80004d58:	fc071ae3          	bnez	a4,80004d2c <uartstart+0x38>
    80004d5c:	00813403          	ld	s0,8(sp)
    80004d60:	01010113          	addi	sp,sp,16
    80004d64:	00008067          	ret

0000000080004d68 <uartgetc>:
    80004d68:	ff010113          	addi	sp,sp,-16
    80004d6c:	00813423          	sd	s0,8(sp)
    80004d70:	01010413          	addi	s0,sp,16
    80004d74:	10000737          	lui	a4,0x10000
    80004d78:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80004d7c:	0017f793          	andi	a5,a5,1
    80004d80:	00078c63          	beqz	a5,80004d98 <uartgetc+0x30>
    80004d84:	00074503          	lbu	a0,0(a4)
    80004d88:	0ff57513          	andi	a0,a0,255
    80004d8c:	00813403          	ld	s0,8(sp)
    80004d90:	01010113          	addi	sp,sp,16
    80004d94:	00008067          	ret
    80004d98:	fff00513          	li	a0,-1
    80004d9c:	ff1ff06f          	j	80004d8c <uartgetc+0x24>

0000000080004da0 <uartintr>:
    80004da0:	100007b7          	lui	a5,0x10000
    80004da4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80004da8:	0017f793          	andi	a5,a5,1
    80004dac:	0a078463          	beqz	a5,80004e54 <uartintr+0xb4>
    80004db0:	fe010113          	addi	sp,sp,-32
    80004db4:	00813823          	sd	s0,16(sp)
    80004db8:	00913423          	sd	s1,8(sp)
    80004dbc:	00113c23          	sd	ra,24(sp)
    80004dc0:	02010413          	addi	s0,sp,32
    80004dc4:	100004b7          	lui	s1,0x10000
    80004dc8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80004dcc:	0ff57513          	andi	a0,a0,255
    80004dd0:	fffff097          	auipc	ra,0xfffff
    80004dd4:	534080e7          	jalr	1332(ra) # 80004304 <consoleintr>
    80004dd8:	0054c783          	lbu	a5,5(s1)
    80004ddc:	0017f793          	andi	a5,a5,1
    80004de0:	fe0794e3          	bnez	a5,80004dc8 <uartintr+0x28>
    80004de4:	00002617          	auipc	a2,0x2
    80004de8:	59c60613          	addi	a2,a2,1436 # 80007380 <uart_tx_r>
    80004dec:	00002517          	auipc	a0,0x2
    80004df0:	59c50513          	addi	a0,a0,1436 # 80007388 <uart_tx_w>
    80004df4:	00063783          	ld	a5,0(a2)
    80004df8:	00053703          	ld	a4,0(a0)
    80004dfc:	04f70263          	beq	a4,a5,80004e40 <uartintr+0xa0>
    80004e00:	100005b7          	lui	a1,0x10000
    80004e04:	00004817          	auipc	a6,0x4
    80004e08:	82c80813          	addi	a6,a6,-2004 # 80008630 <uart_tx_buf>
    80004e0c:	01c0006f          	j	80004e28 <uartintr+0x88>
    80004e10:	0006c703          	lbu	a4,0(a3)
    80004e14:	00f63023          	sd	a5,0(a2)
    80004e18:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80004e1c:	00063783          	ld	a5,0(a2)
    80004e20:	00053703          	ld	a4,0(a0)
    80004e24:	00f70e63          	beq	a4,a5,80004e40 <uartintr+0xa0>
    80004e28:	01f7f713          	andi	a4,a5,31
    80004e2c:	00e806b3          	add	a3,a6,a4
    80004e30:	0055c703          	lbu	a4,5(a1)
    80004e34:	00178793          	addi	a5,a5,1
    80004e38:	02077713          	andi	a4,a4,32
    80004e3c:	fc071ae3          	bnez	a4,80004e10 <uartintr+0x70>
    80004e40:	01813083          	ld	ra,24(sp)
    80004e44:	01013403          	ld	s0,16(sp)
    80004e48:	00813483          	ld	s1,8(sp)
    80004e4c:	02010113          	addi	sp,sp,32
    80004e50:	00008067          	ret
    80004e54:	00002617          	auipc	a2,0x2
    80004e58:	52c60613          	addi	a2,a2,1324 # 80007380 <uart_tx_r>
    80004e5c:	00002517          	auipc	a0,0x2
    80004e60:	52c50513          	addi	a0,a0,1324 # 80007388 <uart_tx_w>
    80004e64:	00063783          	ld	a5,0(a2)
    80004e68:	00053703          	ld	a4,0(a0)
    80004e6c:	04f70263          	beq	a4,a5,80004eb0 <uartintr+0x110>
    80004e70:	100005b7          	lui	a1,0x10000
    80004e74:	00003817          	auipc	a6,0x3
    80004e78:	7bc80813          	addi	a6,a6,1980 # 80008630 <uart_tx_buf>
    80004e7c:	01c0006f          	j	80004e98 <uartintr+0xf8>
    80004e80:	0006c703          	lbu	a4,0(a3)
    80004e84:	00f63023          	sd	a5,0(a2)
    80004e88:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80004e8c:	00063783          	ld	a5,0(a2)
    80004e90:	00053703          	ld	a4,0(a0)
    80004e94:	02f70063          	beq	a4,a5,80004eb4 <uartintr+0x114>
    80004e98:	01f7f713          	andi	a4,a5,31
    80004e9c:	00e806b3          	add	a3,a6,a4
    80004ea0:	0055c703          	lbu	a4,5(a1)
    80004ea4:	00178793          	addi	a5,a5,1
    80004ea8:	02077713          	andi	a4,a4,32
    80004eac:	fc071ae3          	bnez	a4,80004e80 <uartintr+0xe0>
    80004eb0:	00008067          	ret
    80004eb4:	00008067          	ret

0000000080004eb8 <kinit>:
    80004eb8:	fc010113          	addi	sp,sp,-64
    80004ebc:	02913423          	sd	s1,40(sp)
    80004ec0:	fffff7b7          	lui	a5,0xfffff
    80004ec4:	00004497          	auipc	s1,0x4
    80004ec8:	78b48493          	addi	s1,s1,1931 # 8000964f <end+0xfff>
    80004ecc:	02813823          	sd	s0,48(sp)
    80004ed0:	01313c23          	sd	s3,24(sp)
    80004ed4:	00f4f4b3          	and	s1,s1,a5
    80004ed8:	02113c23          	sd	ra,56(sp)
    80004edc:	03213023          	sd	s2,32(sp)
    80004ee0:	01413823          	sd	s4,16(sp)
    80004ee4:	01513423          	sd	s5,8(sp)
    80004ee8:	04010413          	addi	s0,sp,64
    80004eec:	000017b7          	lui	a5,0x1
    80004ef0:	01100993          	li	s3,17
    80004ef4:	00f487b3          	add	a5,s1,a5
    80004ef8:	01b99993          	slli	s3,s3,0x1b
    80004efc:	06f9e063          	bltu	s3,a5,80004f5c <kinit+0xa4>
    80004f00:	00003a97          	auipc	s5,0x3
    80004f04:	750a8a93          	addi	s5,s5,1872 # 80008650 <end>
    80004f08:	0754ec63          	bltu	s1,s5,80004f80 <kinit+0xc8>
    80004f0c:	0734fa63          	bgeu	s1,s3,80004f80 <kinit+0xc8>
    80004f10:	00088a37          	lui	s4,0x88
    80004f14:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80004f18:	00002917          	auipc	s2,0x2
    80004f1c:	47890913          	addi	s2,s2,1144 # 80007390 <kmem>
    80004f20:	00ca1a13          	slli	s4,s4,0xc
    80004f24:	0140006f          	j	80004f38 <kinit+0x80>
    80004f28:	000017b7          	lui	a5,0x1
    80004f2c:	00f484b3          	add	s1,s1,a5
    80004f30:	0554e863          	bltu	s1,s5,80004f80 <kinit+0xc8>
    80004f34:	0534f663          	bgeu	s1,s3,80004f80 <kinit+0xc8>
    80004f38:	00001637          	lui	a2,0x1
    80004f3c:	00100593          	li	a1,1
    80004f40:	00048513          	mv	a0,s1
    80004f44:	00000097          	auipc	ra,0x0
    80004f48:	5e4080e7          	jalr	1508(ra) # 80005528 <__memset>
    80004f4c:	00093783          	ld	a5,0(s2)
    80004f50:	00f4b023          	sd	a5,0(s1)
    80004f54:	00993023          	sd	s1,0(s2)
    80004f58:	fd4498e3          	bne	s1,s4,80004f28 <kinit+0x70>
    80004f5c:	03813083          	ld	ra,56(sp)
    80004f60:	03013403          	ld	s0,48(sp)
    80004f64:	02813483          	ld	s1,40(sp)
    80004f68:	02013903          	ld	s2,32(sp)
    80004f6c:	01813983          	ld	s3,24(sp)
    80004f70:	01013a03          	ld	s4,16(sp)
    80004f74:	00813a83          	ld	s5,8(sp)
    80004f78:	04010113          	addi	sp,sp,64
    80004f7c:	00008067          	ret
    80004f80:	00001517          	auipc	a0,0x1
    80004f84:	4f850513          	addi	a0,a0,1272 # 80006478 <digits+0x18>
    80004f88:	fffff097          	auipc	ra,0xfffff
    80004f8c:	4b4080e7          	jalr	1204(ra) # 8000443c <panic>

0000000080004f90 <freerange>:
    80004f90:	fc010113          	addi	sp,sp,-64
    80004f94:	000017b7          	lui	a5,0x1
    80004f98:	02913423          	sd	s1,40(sp)
    80004f9c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80004fa0:	009504b3          	add	s1,a0,s1
    80004fa4:	fffff537          	lui	a0,0xfffff
    80004fa8:	02813823          	sd	s0,48(sp)
    80004fac:	02113c23          	sd	ra,56(sp)
    80004fb0:	03213023          	sd	s2,32(sp)
    80004fb4:	01313c23          	sd	s3,24(sp)
    80004fb8:	01413823          	sd	s4,16(sp)
    80004fbc:	01513423          	sd	s5,8(sp)
    80004fc0:	01613023          	sd	s6,0(sp)
    80004fc4:	04010413          	addi	s0,sp,64
    80004fc8:	00a4f4b3          	and	s1,s1,a0
    80004fcc:	00f487b3          	add	a5,s1,a5
    80004fd0:	06f5e463          	bltu	a1,a5,80005038 <freerange+0xa8>
    80004fd4:	00003a97          	auipc	s5,0x3
    80004fd8:	67ca8a93          	addi	s5,s5,1660 # 80008650 <end>
    80004fdc:	0954e263          	bltu	s1,s5,80005060 <freerange+0xd0>
    80004fe0:	01100993          	li	s3,17
    80004fe4:	01b99993          	slli	s3,s3,0x1b
    80004fe8:	0734fc63          	bgeu	s1,s3,80005060 <freerange+0xd0>
    80004fec:	00058a13          	mv	s4,a1
    80004ff0:	00002917          	auipc	s2,0x2
    80004ff4:	3a090913          	addi	s2,s2,928 # 80007390 <kmem>
    80004ff8:	00002b37          	lui	s6,0x2
    80004ffc:	0140006f          	j	80005010 <freerange+0x80>
    80005000:	000017b7          	lui	a5,0x1
    80005004:	00f484b3          	add	s1,s1,a5
    80005008:	0554ec63          	bltu	s1,s5,80005060 <freerange+0xd0>
    8000500c:	0534fa63          	bgeu	s1,s3,80005060 <freerange+0xd0>
    80005010:	00001637          	lui	a2,0x1
    80005014:	00100593          	li	a1,1
    80005018:	00048513          	mv	a0,s1
    8000501c:	00000097          	auipc	ra,0x0
    80005020:	50c080e7          	jalr	1292(ra) # 80005528 <__memset>
    80005024:	00093703          	ld	a4,0(s2)
    80005028:	016487b3          	add	a5,s1,s6
    8000502c:	00e4b023          	sd	a4,0(s1)
    80005030:	00993023          	sd	s1,0(s2)
    80005034:	fcfa76e3          	bgeu	s4,a5,80005000 <freerange+0x70>
    80005038:	03813083          	ld	ra,56(sp)
    8000503c:	03013403          	ld	s0,48(sp)
    80005040:	02813483          	ld	s1,40(sp)
    80005044:	02013903          	ld	s2,32(sp)
    80005048:	01813983          	ld	s3,24(sp)
    8000504c:	01013a03          	ld	s4,16(sp)
    80005050:	00813a83          	ld	s5,8(sp)
    80005054:	00013b03          	ld	s6,0(sp)
    80005058:	04010113          	addi	sp,sp,64
    8000505c:	00008067          	ret
    80005060:	00001517          	auipc	a0,0x1
    80005064:	41850513          	addi	a0,a0,1048 # 80006478 <digits+0x18>
    80005068:	fffff097          	auipc	ra,0xfffff
    8000506c:	3d4080e7          	jalr	980(ra) # 8000443c <panic>

0000000080005070 <kfree>:
    80005070:	fe010113          	addi	sp,sp,-32
    80005074:	00813823          	sd	s0,16(sp)
    80005078:	00113c23          	sd	ra,24(sp)
    8000507c:	00913423          	sd	s1,8(sp)
    80005080:	02010413          	addi	s0,sp,32
    80005084:	03451793          	slli	a5,a0,0x34
    80005088:	04079c63          	bnez	a5,800050e0 <kfree+0x70>
    8000508c:	00003797          	auipc	a5,0x3
    80005090:	5c478793          	addi	a5,a5,1476 # 80008650 <end>
    80005094:	00050493          	mv	s1,a0
    80005098:	04f56463          	bltu	a0,a5,800050e0 <kfree+0x70>
    8000509c:	01100793          	li	a5,17
    800050a0:	01b79793          	slli	a5,a5,0x1b
    800050a4:	02f57e63          	bgeu	a0,a5,800050e0 <kfree+0x70>
    800050a8:	00001637          	lui	a2,0x1
    800050ac:	00100593          	li	a1,1
    800050b0:	00000097          	auipc	ra,0x0
    800050b4:	478080e7          	jalr	1144(ra) # 80005528 <__memset>
    800050b8:	00002797          	auipc	a5,0x2
    800050bc:	2d878793          	addi	a5,a5,728 # 80007390 <kmem>
    800050c0:	0007b703          	ld	a4,0(a5)
    800050c4:	01813083          	ld	ra,24(sp)
    800050c8:	01013403          	ld	s0,16(sp)
    800050cc:	00e4b023          	sd	a4,0(s1)
    800050d0:	0097b023          	sd	s1,0(a5)
    800050d4:	00813483          	ld	s1,8(sp)
    800050d8:	02010113          	addi	sp,sp,32
    800050dc:	00008067          	ret
    800050e0:	00001517          	auipc	a0,0x1
    800050e4:	39850513          	addi	a0,a0,920 # 80006478 <digits+0x18>
    800050e8:	fffff097          	auipc	ra,0xfffff
    800050ec:	354080e7          	jalr	852(ra) # 8000443c <panic>

00000000800050f0 <kalloc>:
    800050f0:	fe010113          	addi	sp,sp,-32
    800050f4:	00813823          	sd	s0,16(sp)
    800050f8:	00913423          	sd	s1,8(sp)
    800050fc:	00113c23          	sd	ra,24(sp)
    80005100:	02010413          	addi	s0,sp,32
    80005104:	00002797          	auipc	a5,0x2
    80005108:	28c78793          	addi	a5,a5,652 # 80007390 <kmem>
    8000510c:	0007b483          	ld	s1,0(a5)
    80005110:	02048063          	beqz	s1,80005130 <kalloc+0x40>
    80005114:	0004b703          	ld	a4,0(s1)
    80005118:	00001637          	lui	a2,0x1
    8000511c:	00500593          	li	a1,5
    80005120:	00048513          	mv	a0,s1
    80005124:	00e7b023          	sd	a4,0(a5)
    80005128:	00000097          	auipc	ra,0x0
    8000512c:	400080e7          	jalr	1024(ra) # 80005528 <__memset>
    80005130:	01813083          	ld	ra,24(sp)
    80005134:	01013403          	ld	s0,16(sp)
    80005138:	00048513          	mv	a0,s1
    8000513c:	00813483          	ld	s1,8(sp)
    80005140:	02010113          	addi	sp,sp,32
    80005144:	00008067          	ret

0000000080005148 <initlock>:
    80005148:	ff010113          	addi	sp,sp,-16
    8000514c:	00813423          	sd	s0,8(sp)
    80005150:	01010413          	addi	s0,sp,16
    80005154:	00813403          	ld	s0,8(sp)
    80005158:	00b53423          	sd	a1,8(a0)
    8000515c:	00052023          	sw	zero,0(a0)
    80005160:	00053823          	sd	zero,16(a0)
    80005164:	01010113          	addi	sp,sp,16
    80005168:	00008067          	ret

000000008000516c <acquire>:
    8000516c:	fe010113          	addi	sp,sp,-32
    80005170:	00813823          	sd	s0,16(sp)
    80005174:	00913423          	sd	s1,8(sp)
    80005178:	00113c23          	sd	ra,24(sp)
    8000517c:	01213023          	sd	s2,0(sp)
    80005180:	02010413          	addi	s0,sp,32
    80005184:	00050493          	mv	s1,a0
    80005188:	10002973          	csrr	s2,sstatus
    8000518c:	100027f3          	csrr	a5,sstatus
    80005190:	ffd7f793          	andi	a5,a5,-3
    80005194:	10079073          	csrw	sstatus,a5
    80005198:	fffff097          	auipc	ra,0xfffff
    8000519c:	8e0080e7          	jalr	-1824(ra) # 80003a78 <mycpu>
    800051a0:	07852783          	lw	a5,120(a0)
    800051a4:	06078e63          	beqz	a5,80005220 <acquire+0xb4>
    800051a8:	fffff097          	auipc	ra,0xfffff
    800051ac:	8d0080e7          	jalr	-1840(ra) # 80003a78 <mycpu>
    800051b0:	07852783          	lw	a5,120(a0)
    800051b4:	0004a703          	lw	a4,0(s1)
    800051b8:	0017879b          	addiw	a5,a5,1
    800051bc:	06f52c23          	sw	a5,120(a0)
    800051c0:	04071063          	bnez	a4,80005200 <acquire+0x94>
    800051c4:	00100713          	li	a4,1
    800051c8:	00070793          	mv	a5,a4
    800051cc:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    800051d0:	0007879b          	sext.w	a5,a5
    800051d4:	fe079ae3          	bnez	a5,800051c8 <acquire+0x5c>
    800051d8:	0ff0000f          	fence
    800051dc:	fffff097          	auipc	ra,0xfffff
    800051e0:	89c080e7          	jalr	-1892(ra) # 80003a78 <mycpu>
    800051e4:	01813083          	ld	ra,24(sp)
    800051e8:	01013403          	ld	s0,16(sp)
    800051ec:	00a4b823          	sd	a0,16(s1)
    800051f0:	00013903          	ld	s2,0(sp)
    800051f4:	00813483          	ld	s1,8(sp)
    800051f8:	02010113          	addi	sp,sp,32
    800051fc:	00008067          	ret
    80005200:	0104b903          	ld	s2,16(s1)
    80005204:	fffff097          	auipc	ra,0xfffff
    80005208:	874080e7          	jalr	-1932(ra) # 80003a78 <mycpu>
    8000520c:	faa91ce3          	bne	s2,a0,800051c4 <acquire+0x58>
    80005210:	00001517          	auipc	a0,0x1
    80005214:	27050513          	addi	a0,a0,624 # 80006480 <digits+0x20>
    80005218:	fffff097          	auipc	ra,0xfffff
    8000521c:	224080e7          	jalr	548(ra) # 8000443c <panic>
    80005220:	00195913          	srli	s2,s2,0x1
    80005224:	fffff097          	auipc	ra,0xfffff
    80005228:	854080e7          	jalr	-1964(ra) # 80003a78 <mycpu>
    8000522c:	00197913          	andi	s2,s2,1
    80005230:	07252e23          	sw	s2,124(a0)
    80005234:	f75ff06f          	j	800051a8 <acquire+0x3c>

0000000080005238 <release>:
    80005238:	fe010113          	addi	sp,sp,-32
    8000523c:	00813823          	sd	s0,16(sp)
    80005240:	00113c23          	sd	ra,24(sp)
    80005244:	00913423          	sd	s1,8(sp)
    80005248:	01213023          	sd	s2,0(sp)
    8000524c:	02010413          	addi	s0,sp,32
    80005250:	00052783          	lw	a5,0(a0)
    80005254:	00079a63          	bnez	a5,80005268 <release+0x30>
    80005258:	00001517          	auipc	a0,0x1
    8000525c:	23050513          	addi	a0,a0,560 # 80006488 <digits+0x28>
    80005260:	fffff097          	auipc	ra,0xfffff
    80005264:	1dc080e7          	jalr	476(ra) # 8000443c <panic>
    80005268:	01053903          	ld	s2,16(a0)
    8000526c:	00050493          	mv	s1,a0
    80005270:	fffff097          	auipc	ra,0xfffff
    80005274:	808080e7          	jalr	-2040(ra) # 80003a78 <mycpu>
    80005278:	fea910e3          	bne	s2,a0,80005258 <release+0x20>
    8000527c:	0004b823          	sd	zero,16(s1)
    80005280:	0ff0000f          	fence
    80005284:	0f50000f          	fence	iorw,ow
    80005288:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000528c:	ffffe097          	auipc	ra,0xffffe
    80005290:	7ec080e7          	jalr	2028(ra) # 80003a78 <mycpu>
    80005294:	100027f3          	csrr	a5,sstatus
    80005298:	0027f793          	andi	a5,a5,2
    8000529c:	04079a63          	bnez	a5,800052f0 <release+0xb8>
    800052a0:	07852783          	lw	a5,120(a0)
    800052a4:	02f05e63          	blez	a5,800052e0 <release+0xa8>
    800052a8:	fff7871b          	addiw	a4,a5,-1
    800052ac:	06e52c23          	sw	a4,120(a0)
    800052b0:	00071c63          	bnez	a4,800052c8 <release+0x90>
    800052b4:	07c52783          	lw	a5,124(a0)
    800052b8:	00078863          	beqz	a5,800052c8 <release+0x90>
    800052bc:	100027f3          	csrr	a5,sstatus
    800052c0:	0027e793          	ori	a5,a5,2
    800052c4:	10079073          	csrw	sstatus,a5
    800052c8:	01813083          	ld	ra,24(sp)
    800052cc:	01013403          	ld	s0,16(sp)
    800052d0:	00813483          	ld	s1,8(sp)
    800052d4:	00013903          	ld	s2,0(sp)
    800052d8:	02010113          	addi	sp,sp,32
    800052dc:	00008067          	ret
    800052e0:	00001517          	auipc	a0,0x1
    800052e4:	1c850513          	addi	a0,a0,456 # 800064a8 <digits+0x48>
    800052e8:	fffff097          	auipc	ra,0xfffff
    800052ec:	154080e7          	jalr	340(ra) # 8000443c <panic>
    800052f0:	00001517          	auipc	a0,0x1
    800052f4:	1a050513          	addi	a0,a0,416 # 80006490 <digits+0x30>
    800052f8:	fffff097          	auipc	ra,0xfffff
    800052fc:	144080e7          	jalr	324(ra) # 8000443c <panic>

0000000080005300 <holding>:
    80005300:	00052783          	lw	a5,0(a0)
    80005304:	00079663          	bnez	a5,80005310 <holding+0x10>
    80005308:	00000513          	li	a0,0
    8000530c:	00008067          	ret
    80005310:	fe010113          	addi	sp,sp,-32
    80005314:	00813823          	sd	s0,16(sp)
    80005318:	00913423          	sd	s1,8(sp)
    8000531c:	00113c23          	sd	ra,24(sp)
    80005320:	02010413          	addi	s0,sp,32
    80005324:	01053483          	ld	s1,16(a0)
    80005328:	ffffe097          	auipc	ra,0xffffe
    8000532c:	750080e7          	jalr	1872(ra) # 80003a78 <mycpu>
    80005330:	01813083          	ld	ra,24(sp)
    80005334:	01013403          	ld	s0,16(sp)
    80005338:	40a48533          	sub	a0,s1,a0
    8000533c:	00153513          	seqz	a0,a0
    80005340:	00813483          	ld	s1,8(sp)
    80005344:	02010113          	addi	sp,sp,32
    80005348:	00008067          	ret

000000008000534c <push_off>:
    8000534c:	fe010113          	addi	sp,sp,-32
    80005350:	00813823          	sd	s0,16(sp)
    80005354:	00113c23          	sd	ra,24(sp)
    80005358:	00913423          	sd	s1,8(sp)
    8000535c:	02010413          	addi	s0,sp,32
    80005360:	100024f3          	csrr	s1,sstatus
    80005364:	100027f3          	csrr	a5,sstatus
    80005368:	ffd7f793          	andi	a5,a5,-3
    8000536c:	10079073          	csrw	sstatus,a5
    80005370:	ffffe097          	auipc	ra,0xffffe
    80005374:	708080e7          	jalr	1800(ra) # 80003a78 <mycpu>
    80005378:	07852783          	lw	a5,120(a0)
    8000537c:	02078663          	beqz	a5,800053a8 <push_off+0x5c>
    80005380:	ffffe097          	auipc	ra,0xffffe
    80005384:	6f8080e7          	jalr	1784(ra) # 80003a78 <mycpu>
    80005388:	07852783          	lw	a5,120(a0)
    8000538c:	01813083          	ld	ra,24(sp)
    80005390:	01013403          	ld	s0,16(sp)
    80005394:	0017879b          	addiw	a5,a5,1
    80005398:	06f52c23          	sw	a5,120(a0)
    8000539c:	00813483          	ld	s1,8(sp)
    800053a0:	02010113          	addi	sp,sp,32
    800053a4:	00008067          	ret
    800053a8:	0014d493          	srli	s1,s1,0x1
    800053ac:	ffffe097          	auipc	ra,0xffffe
    800053b0:	6cc080e7          	jalr	1740(ra) # 80003a78 <mycpu>
    800053b4:	0014f493          	andi	s1,s1,1
    800053b8:	06952e23          	sw	s1,124(a0)
    800053bc:	fc5ff06f          	j	80005380 <push_off+0x34>

00000000800053c0 <pop_off>:
    800053c0:	ff010113          	addi	sp,sp,-16
    800053c4:	00813023          	sd	s0,0(sp)
    800053c8:	00113423          	sd	ra,8(sp)
    800053cc:	01010413          	addi	s0,sp,16
    800053d0:	ffffe097          	auipc	ra,0xffffe
    800053d4:	6a8080e7          	jalr	1704(ra) # 80003a78 <mycpu>
    800053d8:	100027f3          	csrr	a5,sstatus
    800053dc:	0027f793          	andi	a5,a5,2
    800053e0:	04079663          	bnez	a5,8000542c <pop_off+0x6c>
    800053e4:	07852783          	lw	a5,120(a0)
    800053e8:	02f05a63          	blez	a5,8000541c <pop_off+0x5c>
    800053ec:	fff7871b          	addiw	a4,a5,-1
    800053f0:	06e52c23          	sw	a4,120(a0)
    800053f4:	00071c63          	bnez	a4,8000540c <pop_off+0x4c>
    800053f8:	07c52783          	lw	a5,124(a0)
    800053fc:	00078863          	beqz	a5,8000540c <pop_off+0x4c>
    80005400:	100027f3          	csrr	a5,sstatus
    80005404:	0027e793          	ori	a5,a5,2
    80005408:	10079073          	csrw	sstatus,a5
    8000540c:	00813083          	ld	ra,8(sp)
    80005410:	00013403          	ld	s0,0(sp)
    80005414:	01010113          	addi	sp,sp,16
    80005418:	00008067          	ret
    8000541c:	00001517          	auipc	a0,0x1
    80005420:	08c50513          	addi	a0,a0,140 # 800064a8 <digits+0x48>
    80005424:	fffff097          	auipc	ra,0xfffff
    80005428:	018080e7          	jalr	24(ra) # 8000443c <panic>
    8000542c:	00001517          	auipc	a0,0x1
    80005430:	06450513          	addi	a0,a0,100 # 80006490 <digits+0x30>
    80005434:	fffff097          	auipc	ra,0xfffff
    80005438:	008080e7          	jalr	8(ra) # 8000443c <panic>

000000008000543c <push_on>:
    8000543c:	fe010113          	addi	sp,sp,-32
    80005440:	00813823          	sd	s0,16(sp)
    80005444:	00113c23          	sd	ra,24(sp)
    80005448:	00913423          	sd	s1,8(sp)
    8000544c:	02010413          	addi	s0,sp,32
    80005450:	100024f3          	csrr	s1,sstatus
    80005454:	100027f3          	csrr	a5,sstatus
    80005458:	0027e793          	ori	a5,a5,2
    8000545c:	10079073          	csrw	sstatus,a5
    80005460:	ffffe097          	auipc	ra,0xffffe
    80005464:	618080e7          	jalr	1560(ra) # 80003a78 <mycpu>
    80005468:	07852783          	lw	a5,120(a0)
    8000546c:	02078663          	beqz	a5,80005498 <push_on+0x5c>
    80005470:	ffffe097          	auipc	ra,0xffffe
    80005474:	608080e7          	jalr	1544(ra) # 80003a78 <mycpu>
    80005478:	07852783          	lw	a5,120(a0)
    8000547c:	01813083          	ld	ra,24(sp)
    80005480:	01013403          	ld	s0,16(sp)
    80005484:	0017879b          	addiw	a5,a5,1
    80005488:	06f52c23          	sw	a5,120(a0)
    8000548c:	00813483          	ld	s1,8(sp)
    80005490:	02010113          	addi	sp,sp,32
    80005494:	00008067          	ret
    80005498:	0014d493          	srli	s1,s1,0x1
    8000549c:	ffffe097          	auipc	ra,0xffffe
    800054a0:	5dc080e7          	jalr	1500(ra) # 80003a78 <mycpu>
    800054a4:	0014f493          	andi	s1,s1,1
    800054a8:	06952e23          	sw	s1,124(a0)
    800054ac:	fc5ff06f          	j	80005470 <push_on+0x34>

00000000800054b0 <pop_on>:
    800054b0:	ff010113          	addi	sp,sp,-16
    800054b4:	00813023          	sd	s0,0(sp)
    800054b8:	00113423          	sd	ra,8(sp)
    800054bc:	01010413          	addi	s0,sp,16
    800054c0:	ffffe097          	auipc	ra,0xffffe
    800054c4:	5b8080e7          	jalr	1464(ra) # 80003a78 <mycpu>
    800054c8:	100027f3          	csrr	a5,sstatus
    800054cc:	0027f793          	andi	a5,a5,2
    800054d0:	04078463          	beqz	a5,80005518 <pop_on+0x68>
    800054d4:	07852783          	lw	a5,120(a0)
    800054d8:	02f05863          	blez	a5,80005508 <pop_on+0x58>
    800054dc:	fff7879b          	addiw	a5,a5,-1
    800054e0:	06f52c23          	sw	a5,120(a0)
    800054e4:	07853783          	ld	a5,120(a0)
    800054e8:	00079863          	bnez	a5,800054f8 <pop_on+0x48>
    800054ec:	100027f3          	csrr	a5,sstatus
    800054f0:	ffd7f793          	andi	a5,a5,-3
    800054f4:	10079073          	csrw	sstatus,a5
    800054f8:	00813083          	ld	ra,8(sp)
    800054fc:	00013403          	ld	s0,0(sp)
    80005500:	01010113          	addi	sp,sp,16
    80005504:	00008067          	ret
    80005508:	00001517          	auipc	a0,0x1
    8000550c:	fc850513          	addi	a0,a0,-56 # 800064d0 <digits+0x70>
    80005510:	fffff097          	auipc	ra,0xfffff
    80005514:	f2c080e7          	jalr	-212(ra) # 8000443c <panic>
    80005518:	00001517          	auipc	a0,0x1
    8000551c:	f9850513          	addi	a0,a0,-104 # 800064b0 <digits+0x50>
    80005520:	fffff097          	auipc	ra,0xfffff
    80005524:	f1c080e7          	jalr	-228(ra) # 8000443c <panic>

0000000080005528 <__memset>:
    80005528:	ff010113          	addi	sp,sp,-16
    8000552c:	00813423          	sd	s0,8(sp)
    80005530:	01010413          	addi	s0,sp,16
    80005534:	1a060e63          	beqz	a2,800056f0 <__memset+0x1c8>
    80005538:	40a007b3          	neg	a5,a0
    8000553c:	0077f793          	andi	a5,a5,7
    80005540:	00778693          	addi	a3,a5,7
    80005544:	00b00813          	li	a6,11
    80005548:	0ff5f593          	andi	a1,a1,255
    8000554c:	fff6071b          	addiw	a4,a2,-1
    80005550:	1b06e663          	bltu	a3,a6,800056fc <__memset+0x1d4>
    80005554:	1cd76463          	bltu	a4,a3,8000571c <__memset+0x1f4>
    80005558:	1a078e63          	beqz	a5,80005714 <__memset+0x1ec>
    8000555c:	00b50023          	sb	a1,0(a0)
    80005560:	00100713          	li	a4,1
    80005564:	1ae78463          	beq	a5,a4,8000570c <__memset+0x1e4>
    80005568:	00b500a3          	sb	a1,1(a0)
    8000556c:	00200713          	li	a4,2
    80005570:	1ae78a63          	beq	a5,a4,80005724 <__memset+0x1fc>
    80005574:	00b50123          	sb	a1,2(a0)
    80005578:	00300713          	li	a4,3
    8000557c:	18e78463          	beq	a5,a4,80005704 <__memset+0x1dc>
    80005580:	00b501a3          	sb	a1,3(a0)
    80005584:	00400713          	li	a4,4
    80005588:	1ae78263          	beq	a5,a4,8000572c <__memset+0x204>
    8000558c:	00b50223          	sb	a1,4(a0)
    80005590:	00500713          	li	a4,5
    80005594:	1ae78063          	beq	a5,a4,80005734 <__memset+0x20c>
    80005598:	00b502a3          	sb	a1,5(a0)
    8000559c:	00700713          	li	a4,7
    800055a0:	18e79e63          	bne	a5,a4,8000573c <__memset+0x214>
    800055a4:	00b50323          	sb	a1,6(a0)
    800055a8:	00700e93          	li	t4,7
    800055ac:	00859713          	slli	a4,a1,0x8
    800055b0:	00e5e733          	or	a4,a1,a4
    800055b4:	01059e13          	slli	t3,a1,0x10
    800055b8:	01c76e33          	or	t3,a4,t3
    800055bc:	01859313          	slli	t1,a1,0x18
    800055c0:	006e6333          	or	t1,t3,t1
    800055c4:	02059893          	slli	a7,a1,0x20
    800055c8:	40f60e3b          	subw	t3,a2,a5
    800055cc:	011368b3          	or	a7,t1,a7
    800055d0:	02859813          	slli	a6,a1,0x28
    800055d4:	0108e833          	or	a6,a7,a6
    800055d8:	03059693          	slli	a3,a1,0x30
    800055dc:	003e589b          	srliw	a7,t3,0x3
    800055e0:	00d866b3          	or	a3,a6,a3
    800055e4:	03859713          	slli	a4,a1,0x38
    800055e8:	00389813          	slli	a6,a7,0x3
    800055ec:	00f507b3          	add	a5,a0,a5
    800055f0:	00e6e733          	or	a4,a3,a4
    800055f4:	000e089b          	sext.w	a7,t3
    800055f8:	00f806b3          	add	a3,a6,a5
    800055fc:	00e7b023          	sd	a4,0(a5)
    80005600:	00878793          	addi	a5,a5,8
    80005604:	fed79ce3          	bne	a5,a3,800055fc <__memset+0xd4>
    80005608:	ff8e7793          	andi	a5,t3,-8
    8000560c:	0007871b          	sext.w	a4,a5
    80005610:	01d787bb          	addw	a5,a5,t4
    80005614:	0ce88e63          	beq	a7,a4,800056f0 <__memset+0x1c8>
    80005618:	00f50733          	add	a4,a0,a5
    8000561c:	00b70023          	sb	a1,0(a4)
    80005620:	0017871b          	addiw	a4,a5,1
    80005624:	0cc77663          	bgeu	a4,a2,800056f0 <__memset+0x1c8>
    80005628:	00e50733          	add	a4,a0,a4
    8000562c:	00b70023          	sb	a1,0(a4)
    80005630:	0027871b          	addiw	a4,a5,2
    80005634:	0ac77e63          	bgeu	a4,a2,800056f0 <__memset+0x1c8>
    80005638:	00e50733          	add	a4,a0,a4
    8000563c:	00b70023          	sb	a1,0(a4)
    80005640:	0037871b          	addiw	a4,a5,3
    80005644:	0ac77663          	bgeu	a4,a2,800056f0 <__memset+0x1c8>
    80005648:	00e50733          	add	a4,a0,a4
    8000564c:	00b70023          	sb	a1,0(a4)
    80005650:	0047871b          	addiw	a4,a5,4
    80005654:	08c77e63          	bgeu	a4,a2,800056f0 <__memset+0x1c8>
    80005658:	00e50733          	add	a4,a0,a4
    8000565c:	00b70023          	sb	a1,0(a4)
    80005660:	0057871b          	addiw	a4,a5,5
    80005664:	08c77663          	bgeu	a4,a2,800056f0 <__memset+0x1c8>
    80005668:	00e50733          	add	a4,a0,a4
    8000566c:	00b70023          	sb	a1,0(a4)
    80005670:	0067871b          	addiw	a4,a5,6
    80005674:	06c77e63          	bgeu	a4,a2,800056f0 <__memset+0x1c8>
    80005678:	00e50733          	add	a4,a0,a4
    8000567c:	00b70023          	sb	a1,0(a4)
    80005680:	0077871b          	addiw	a4,a5,7
    80005684:	06c77663          	bgeu	a4,a2,800056f0 <__memset+0x1c8>
    80005688:	00e50733          	add	a4,a0,a4
    8000568c:	00b70023          	sb	a1,0(a4)
    80005690:	0087871b          	addiw	a4,a5,8
    80005694:	04c77e63          	bgeu	a4,a2,800056f0 <__memset+0x1c8>
    80005698:	00e50733          	add	a4,a0,a4
    8000569c:	00b70023          	sb	a1,0(a4)
    800056a0:	0097871b          	addiw	a4,a5,9
    800056a4:	04c77663          	bgeu	a4,a2,800056f0 <__memset+0x1c8>
    800056a8:	00e50733          	add	a4,a0,a4
    800056ac:	00b70023          	sb	a1,0(a4)
    800056b0:	00a7871b          	addiw	a4,a5,10
    800056b4:	02c77e63          	bgeu	a4,a2,800056f0 <__memset+0x1c8>
    800056b8:	00e50733          	add	a4,a0,a4
    800056bc:	00b70023          	sb	a1,0(a4)
    800056c0:	00b7871b          	addiw	a4,a5,11
    800056c4:	02c77663          	bgeu	a4,a2,800056f0 <__memset+0x1c8>
    800056c8:	00e50733          	add	a4,a0,a4
    800056cc:	00b70023          	sb	a1,0(a4)
    800056d0:	00c7871b          	addiw	a4,a5,12
    800056d4:	00c77e63          	bgeu	a4,a2,800056f0 <__memset+0x1c8>
    800056d8:	00e50733          	add	a4,a0,a4
    800056dc:	00b70023          	sb	a1,0(a4)
    800056e0:	00d7879b          	addiw	a5,a5,13
    800056e4:	00c7f663          	bgeu	a5,a2,800056f0 <__memset+0x1c8>
    800056e8:	00f507b3          	add	a5,a0,a5
    800056ec:	00b78023          	sb	a1,0(a5)
    800056f0:	00813403          	ld	s0,8(sp)
    800056f4:	01010113          	addi	sp,sp,16
    800056f8:	00008067          	ret
    800056fc:	00b00693          	li	a3,11
    80005700:	e55ff06f          	j	80005554 <__memset+0x2c>
    80005704:	00300e93          	li	t4,3
    80005708:	ea5ff06f          	j	800055ac <__memset+0x84>
    8000570c:	00100e93          	li	t4,1
    80005710:	e9dff06f          	j	800055ac <__memset+0x84>
    80005714:	00000e93          	li	t4,0
    80005718:	e95ff06f          	j	800055ac <__memset+0x84>
    8000571c:	00000793          	li	a5,0
    80005720:	ef9ff06f          	j	80005618 <__memset+0xf0>
    80005724:	00200e93          	li	t4,2
    80005728:	e85ff06f          	j	800055ac <__memset+0x84>
    8000572c:	00400e93          	li	t4,4
    80005730:	e7dff06f          	j	800055ac <__memset+0x84>
    80005734:	00500e93          	li	t4,5
    80005738:	e75ff06f          	j	800055ac <__memset+0x84>
    8000573c:	00600e93          	li	t4,6
    80005740:	e6dff06f          	j	800055ac <__memset+0x84>

0000000080005744 <__memmove>:
    80005744:	ff010113          	addi	sp,sp,-16
    80005748:	00813423          	sd	s0,8(sp)
    8000574c:	01010413          	addi	s0,sp,16
    80005750:	0e060863          	beqz	a2,80005840 <__memmove+0xfc>
    80005754:	fff6069b          	addiw	a3,a2,-1
    80005758:	0006881b          	sext.w	a6,a3
    8000575c:	0ea5e863          	bltu	a1,a0,8000584c <__memmove+0x108>
    80005760:	00758713          	addi	a4,a1,7
    80005764:	00a5e7b3          	or	a5,a1,a0
    80005768:	40a70733          	sub	a4,a4,a0
    8000576c:	0077f793          	andi	a5,a5,7
    80005770:	00f73713          	sltiu	a4,a4,15
    80005774:	00174713          	xori	a4,a4,1
    80005778:	0017b793          	seqz	a5,a5
    8000577c:	00e7f7b3          	and	a5,a5,a4
    80005780:	10078863          	beqz	a5,80005890 <__memmove+0x14c>
    80005784:	00900793          	li	a5,9
    80005788:	1107f463          	bgeu	a5,a6,80005890 <__memmove+0x14c>
    8000578c:	0036581b          	srliw	a6,a2,0x3
    80005790:	fff8081b          	addiw	a6,a6,-1
    80005794:	02081813          	slli	a6,a6,0x20
    80005798:	01d85893          	srli	a7,a6,0x1d
    8000579c:	00858813          	addi	a6,a1,8
    800057a0:	00058793          	mv	a5,a1
    800057a4:	00050713          	mv	a4,a0
    800057a8:	01088833          	add	a6,a7,a6
    800057ac:	0007b883          	ld	a7,0(a5)
    800057b0:	00878793          	addi	a5,a5,8
    800057b4:	00870713          	addi	a4,a4,8
    800057b8:	ff173c23          	sd	a7,-8(a4)
    800057bc:	ff0798e3          	bne	a5,a6,800057ac <__memmove+0x68>
    800057c0:	ff867713          	andi	a4,a2,-8
    800057c4:	02071793          	slli	a5,a4,0x20
    800057c8:	0207d793          	srli	a5,a5,0x20
    800057cc:	00f585b3          	add	a1,a1,a5
    800057d0:	40e686bb          	subw	a3,a3,a4
    800057d4:	00f507b3          	add	a5,a0,a5
    800057d8:	06e60463          	beq	a2,a4,80005840 <__memmove+0xfc>
    800057dc:	0005c703          	lbu	a4,0(a1)
    800057e0:	00e78023          	sb	a4,0(a5)
    800057e4:	04068e63          	beqz	a3,80005840 <__memmove+0xfc>
    800057e8:	0015c603          	lbu	a2,1(a1)
    800057ec:	00100713          	li	a4,1
    800057f0:	00c780a3          	sb	a2,1(a5)
    800057f4:	04e68663          	beq	a3,a4,80005840 <__memmove+0xfc>
    800057f8:	0025c603          	lbu	a2,2(a1)
    800057fc:	00200713          	li	a4,2
    80005800:	00c78123          	sb	a2,2(a5)
    80005804:	02e68e63          	beq	a3,a4,80005840 <__memmove+0xfc>
    80005808:	0035c603          	lbu	a2,3(a1)
    8000580c:	00300713          	li	a4,3
    80005810:	00c781a3          	sb	a2,3(a5)
    80005814:	02e68663          	beq	a3,a4,80005840 <__memmove+0xfc>
    80005818:	0045c603          	lbu	a2,4(a1)
    8000581c:	00400713          	li	a4,4
    80005820:	00c78223          	sb	a2,4(a5)
    80005824:	00e68e63          	beq	a3,a4,80005840 <__memmove+0xfc>
    80005828:	0055c603          	lbu	a2,5(a1)
    8000582c:	00500713          	li	a4,5
    80005830:	00c782a3          	sb	a2,5(a5)
    80005834:	00e68663          	beq	a3,a4,80005840 <__memmove+0xfc>
    80005838:	0065c703          	lbu	a4,6(a1)
    8000583c:	00e78323          	sb	a4,6(a5)
    80005840:	00813403          	ld	s0,8(sp)
    80005844:	01010113          	addi	sp,sp,16
    80005848:	00008067          	ret
    8000584c:	02061713          	slli	a4,a2,0x20
    80005850:	02075713          	srli	a4,a4,0x20
    80005854:	00e587b3          	add	a5,a1,a4
    80005858:	f0f574e3          	bgeu	a0,a5,80005760 <__memmove+0x1c>
    8000585c:	02069613          	slli	a2,a3,0x20
    80005860:	02065613          	srli	a2,a2,0x20
    80005864:	fff64613          	not	a2,a2
    80005868:	00e50733          	add	a4,a0,a4
    8000586c:	00c78633          	add	a2,a5,a2
    80005870:	fff7c683          	lbu	a3,-1(a5)
    80005874:	fff78793          	addi	a5,a5,-1
    80005878:	fff70713          	addi	a4,a4,-1
    8000587c:	00d70023          	sb	a3,0(a4)
    80005880:	fec798e3          	bne	a5,a2,80005870 <__memmove+0x12c>
    80005884:	00813403          	ld	s0,8(sp)
    80005888:	01010113          	addi	sp,sp,16
    8000588c:	00008067          	ret
    80005890:	02069713          	slli	a4,a3,0x20
    80005894:	02075713          	srli	a4,a4,0x20
    80005898:	00170713          	addi	a4,a4,1
    8000589c:	00e50733          	add	a4,a0,a4
    800058a0:	00050793          	mv	a5,a0
    800058a4:	0005c683          	lbu	a3,0(a1)
    800058a8:	00178793          	addi	a5,a5,1
    800058ac:	00158593          	addi	a1,a1,1
    800058b0:	fed78fa3          	sb	a3,-1(a5)
    800058b4:	fee798e3          	bne	a5,a4,800058a4 <__memmove+0x160>
    800058b8:	f89ff06f          	j	80005840 <__memmove+0xfc>

00000000800058bc <__putc>:
    800058bc:	fe010113          	addi	sp,sp,-32
    800058c0:	00813823          	sd	s0,16(sp)
    800058c4:	00113c23          	sd	ra,24(sp)
    800058c8:	02010413          	addi	s0,sp,32
    800058cc:	00050793          	mv	a5,a0
    800058d0:	fef40593          	addi	a1,s0,-17
    800058d4:	00100613          	li	a2,1
    800058d8:	00000513          	li	a0,0
    800058dc:	fef407a3          	sb	a5,-17(s0)
    800058e0:	fffff097          	auipc	ra,0xfffff
    800058e4:	b3c080e7          	jalr	-1220(ra) # 8000441c <console_write>
    800058e8:	01813083          	ld	ra,24(sp)
    800058ec:	01013403          	ld	s0,16(sp)
    800058f0:	02010113          	addi	sp,sp,32
    800058f4:	00008067          	ret

00000000800058f8 <__getc>:
    800058f8:	fe010113          	addi	sp,sp,-32
    800058fc:	00813823          	sd	s0,16(sp)
    80005900:	00113c23          	sd	ra,24(sp)
    80005904:	02010413          	addi	s0,sp,32
    80005908:	fe840593          	addi	a1,s0,-24
    8000590c:	00100613          	li	a2,1
    80005910:	00000513          	li	a0,0
    80005914:	fffff097          	auipc	ra,0xfffff
    80005918:	ae8080e7          	jalr	-1304(ra) # 800043fc <console_read>
    8000591c:	fe844503          	lbu	a0,-24(s0)
    80005920:	01813083          	ld	ra,24(sp)
    80005924:	01013403          	ld	s0,16(sp)
    80005928:	02010113          	addi	sp,sp,32
    8000592c:	00008067          	ret

0000000080005930 <console_handler>:
    80005930:	fe010113          	addi	sp,sp,-32
    80005934:	00813823          	sd	s0,16(sp)
    80005938:	00113c23          	sd	ra,24(sp)
    8000593c:	00913423          	sd	s1,8(sp)
    80005940:	02010413          	addi	s0,sp,32
    80005944:	14202773          	csrr	a4,scause
    80005948:	100027f3          	csrr	a5,sstatus
    8000594c:	0027f793          	andi	a5,a5,2
    80005950:	06079e63          	bnez	a5,800059cc <console_handler+0x9c>
    80005954:	00074c63          	bltz	a4,8000596c <console_handler+0x3c>
    80005958:	01813083          	ld	ra,24(sp)
    8000595c:	01013403          	ld	s0,16(sp)
    80005960:	00813483          	ld	s1,8(sp)
    80005964:	02010113          	addi	sp,sp,32
    80005968:	00008067          	ret
    8000596c:	0ff77713          	andi	a4,a4,255
    80005970:	00900793          	li	a5,9
    80005974:	fef712e3          	bne	a4,a5,80005958 <console_handler+0x28>
    80005978:	ffffe097          	auipc	ra,0xffffe
    8000597c:	6dc080e7          	jalr	1756(ra) # 80004054 <plic_claim>
    80005980:	00a00793          	li	a5,10
    80005984:	00050493          	mv	s1,a0
    80005988:	02f50c63          	beq	a0,a5,800059c0 <console_handler+0x90>
    8000598c:	fc0506e3          	beqz	a0,80005958 <console_handler+0x28>
    80005990:	00050593          	mv	a1,a0
    80005994:	00001517          	auipc	a0,0x1
    80005998:	a4450513          	addi	a0,a0,-1468 # 800063d8 <CONSOLE_STATUS+0x3c8>
    8000599c:	fffff097          	auipc	ra,0xfffff
    800059a0:	afc080e7          	jalr	-1284(ra) # 80004498 <__printf>
    800059a4:	01013403          	ld	s0,16(sp)
    800059a8:	01813083          	ld	ra,24(sp)
    800059ac:	00048513          	mv	a0,s1
    800059b0:	00813483          	ld	s1,8(sp)
    800059b4:	02010113          	addi	sp,sp,32
    800059b8:	ffffe317          	auipc	t1,0xffffe
    800059bc:	6d430067          	jr	1748(t1) # 8000408c <plic_complete>
    800059c0:	fffff097          	auipc	ra,0xfffff
    800059c4:	3e0080e7          	jalr	992(ra) # 80004da0 <uartintr>
    800059c8:	fddff06f          	j	800059a4 <console_handler+0x74>
    800059cc:	00001517          	auipc	a0,0x1
    800059d0:	b0c50513          	addi	a0,a0,-1268 # 800064d8 <digits+0x78>
    800059d4:	fffff097          	auipc	ra,0xfffff
    800059d8:	a68080e7          	jalr	-1432(ra) # 8000443c <panic>
	...


kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00007117          	auipc	sp,0x7
    80000004:	33813103          	ld	sp,824(sp) # 80007338 <_GLOBAL_OFFSET_TABLE_+0x20>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	089030ef          	jal	ra,800038a4 <start>

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
    800010a8:	2c9000ef          	jal	ra,80001b70 <_ZN5Riscv11trapHandlerEv>

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
    800013d0:	784080e7          	jalr	1924(ra) # 80001b50 <_ZN5Riscv10popSppSpieEv>
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
    8000142c:	4a0080e7          	jalr	1184(ra) # 800018c8 <_Znwm>
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
    80001444:	4b0080e7          	jalr	1200(ra) # 800018f0 <_Znam>
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
    800014ac:	470080e7          	jalr	1136(ra) # 80001918 <_ZdlPv>
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
    8000160c:	310080e7          	jalr	784(ra) # 80001918 <_ZdlPv>
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
    8000165c:	270080e7          	jalr	624(ra) # 800018c8 <_Znwm>
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
    }
};

extern void userMain();

int main() {
    800016dc:	fd010113          	addi	sp,sp,-48
    800016e0:	02113423          	sd	ra,40(sp)
    800016e4:	02813023          	sd	s0,32(sp)
    800016e8:	00913c23          	sd	s1,24(sp)
    800016ec:	01213823          	sd	s2,16(sp)
    800016f0:	01313423          	sd	s3,8(sp)
    800016f4:	03010413          	addi	s0,sp,48
public:


    // Get the singleton instance
    static MemoryAllocator &getInstance() {
        static MemoryAllocator instance;
    800016f8:	00006797          	auipc	a5,0x6
    800016fc:	cc07c783          	lbu	a5,-832(a5) # 800073b8 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80001700:	00079863          	bnez	a5,80001710 <main+0x34>
    80001704:	00100793          	li	a5,1
    80001708:	00006717          	auipc	a4,0x6
    8000170c:	caf70823          	sb	a5,-848(a4) # 800073b8 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
//        printString("\n");
//        uint64 end = (uint64)((Block *) HEAP_END_ADDR);
//        printInteger(end);
//        printString("\n");

        free_list = (Block *) HEAP_START_ADDR;
    80001710:	00006797          	auipc	a5,0x6
    80001714:	c107b783          	ld	a5,-1008(a5) # 80007320 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001718:	0007b703          	ld	a4,0(a5)
    8000171c:	00006697          	auipc	a3,0x6
    80001720:	c346b683          	ld	a3,-972(a3) # 80007350 <_GLOBAL_OFFSET_TABLE_+0x38>
    80001724:	00e6b023          	sd	a4,0(a3)
        free_list->size = (uint64 *) HEAP_END_ADDR - (uint64 *) HEAP_START_ADDR;
    80001728:	00006797          	auipc	a5,0x6
    8000172c:	c207b783          	ld	a5,-992(a5) # 80007348 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001730:	0007b783          	ld	a5,0(a5)
    80001734:	40e787b3          	sub	a5,a5,a4
    80001738:	4037d793          	srai	a5,a5,0x3
    8000173c:	00f73023          	sd	a5,0(a4)
        free_list->next = nullptr;
    80001740:	0006b783          	ld	a5,0(a3)
    80001744:	0007b423          	sd	zero,8(a5)
        allocated_list = nullptr;
    80001748:	00006797          	auipc	a5,0x6
    8000174c:	be87b783          	ld	a5,-1048(a5) # 80007330 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001750:	0007b023          	sd	zero,0(a5)


    MemoryAllocator::getInstance().init();

    Riscv::w_stvec((uint64) &Riscv::supervisorTrap+1);
    80001754:	00006797          	auipc	a5,0x6
    80001758:	bd47b783          	ld	a5,-1068(a5) # 80007328 <_GLOBAL_OFFSET_TABLE_+0x10>
    8000175c:	00178793          	addi	a5,a5,1
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    80001760:	10579073          	csrw	stvec,a5
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001764:	00200793          	li	a5,2
    80001768:	1007a073          	csrs	sstatus,a5
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);

    A* a0 = new A();
    8000176c:	01000513          	li	a0,16
    80001770:	00000097          	auipc	ra,0x0
    80001774:	158080e7          	jalr	344(ra) # 800018c8 <_Znwm>
    80001778:	00050493          	mv	s1,a0
    8000177c:	00052023          	sw	zero,0(a0)
    80001780:	00053423          	sd	zero,8(a0)
    B* b0 = new B();
    80001784:	05000513          	li	a0,80
    80001788:	00000097          	auipc	ra,0x0
    8000178c:	140080e7          	jalr	320(ra) # 800018c8 <_Znwm>
    80001790:	00050913          	mv	s2,a0
    80001794:	00053023          	sd	zero,0(a0)
    80001798:	00053423          	sd	zero,8(a0)
    8000179c:	00053823          	sd	zero,16(a0)
    800017a0:	00053c23          	sd	zero,24(a0)
    800017a4:	02053023          	sd	zero,32(a0)
    800017a8:	02053423          	sd	zero,40(a0)
    800017ac:	02053823          	sd	zero,48(a0)
    800017b0:	02053c23          	sd	zero,56(a0)
    800017b4:	04053023          	sd	zero,64(a0)
    800017b8:	04053423          	sd	zero,72(a0)
    A* a1 = new A();
    800017bc:	01000513          	li	a0,16
    800017c0:	00000097          	auipc	ra,0x0
    800017c4:	108080e7          	jalr	264(ra) # 800018c8 <_Znwm>
    800017c8:	00050993          	mv	s3,a0
    800017cc:	00053423          	sd	zero,8(a0)
    a0->a = 0;
    800017d0:	0004a023          	sw	zero,0(s1)
    a1->a = 1;
    800017d4:	00100793          	li	a5,1
    800017d8:	00f52023          	sw	a5,0(a0)
    b0->a = 10;
    800017dc:	00a00793          	li	a5,10
    800017e0:	00f92023          	sw	a5,0(s2)
    delete(a0);
    800017e4:	00048863          	beqz	s1,800017f4 <main+0x118>
    800017e8:	00048513          	mv	a0,s1
    800017ec:	00000097          	auipc	ra,0x0
    800017f0:	12c080e7          	jalr	300(ra) # 80001918 <_ZdlPv>
    B* b1 = new B();
    800017f4:	05000513          	li	a0,80
    800017f8:	00000097          	auipc	ra,0x0
    800017fc:	0d0080e7          	jalr	208(ra) # 800018c8 <_Znwm>
    80001800:	00050493          	mv	s1,a0
    80001804:	00053023          	sd	zero,0(a0)
    80001808:	00053423          	sd	zero,8(a0)
    8000180c:	00053823          	sd	zero,16(a0)
    80001810:	00053c23          	sd	zero,24(a0)
    80001814:	02053023          	sd	zero,32(a0)
    80001818:	02053423          	sd	zero,40(a0)
    8000181c:	02053823          	sd	zero,48(a0)
    80001820:	02053c23          	sd	zero,56(a0)
    80001824:	04053023          	sd	zero,64(a0)
    80001828:	04053423          	sd	zero,72(a0)
    b1->a = 11;
    8000182c:	00b00793          	li	a5,11
    80001830:	00f52023          	sw	a5,0(a0)
    delete(a1);
    80001834:	00098863          	beqz	s3,80001844 <main+0x168>
    80001838:	00098513          	mv	a0,s3
    8000183c:	00000097          	auipc	ra,0x0
    80001840:	0dc080e7          	jalr	220(ra) # 80001918 <_ZdlPv>
    delete(b0);
    80001844:	00090863          	beqz	s2,80001854 <main+0x178>
    80001848:	00090513          	mv	a0,s2
    8000184c:	00000097          	auipc	ra,0x0
    80001850:	0cc080e7          	jalr	204(ra) # 80001918 <_ZdlPv>
    delete(b1);
    80001854:	00048863          	beqz	s1,80001864 <main+0x188>
    80001858:	00048513          	mv	a0,s1
    8000185c:	00000097          	auipc	ra,0x0
    80001860:	0bc080e7          	jalr	188(ra) # 80001918 <_ZdlPv>
    C* c1 = new C(5);
    80001864:	00800513          	li	a0,8
    80001868:	00000097          	auipc	ra,0x0
    8000186c:	060080e7          	jalr	96(ra) # 800018c8 <_Znwm>
        num=n;
    80001870:	00500793          	li	a5,5
    80001874:	00f53023          	sd	a5,0(a0)
    delete c1;
    80001878:	00050663          	beqz	a0,80001884 <main+0x1a8>
    8000187c:	00000097          	auipc	ra,0x0
    80001880:	09c080e7          	jalr	156(ra) # 80001918 <_ZdlPv>

    PCB::running = PCB::createThread(nullptr, nullptr);
    80001884:	00000593          	li	a1,0
    80001888:	00000513          	li	a0,0
    8000188c:	00000097          	auipc	ra,0x0
    80001890:	b74080e7          	jalr	-1164(ra) # 80001400 <_ZN3PCB12createThreadEPFvPvES0_>
    80001894:	00006797          	auipc	a5,0x6
    80001898:	aac7b783          	ld	a5,-1364(a5) # 80007340 <_GLOBAL_OFFSET_TABLE_+0x28>
    8000189c:	00a7b023          	sd	a0,0(a5)
    void setState(State s) { state = s; }
    800018a0:	00100793          	li	a5,1
    800018a4:	02f52423          	sw	a5,40(a0)
//
//
//    //printString("Finished\n");
//
    return 0;
}
    800018a8:	00000513          	li	a0,0
    800018ac:	02813083          	ld	ra,40(sp)
    800018b0:	02013403          	ld	s0,32(sp)
    800018b4:	01813483          	ld	s1,24(sp)
    800018b8:	01013903          	ld	s2,16(sp)
    800018bc:	00813983          	ld	s3,8(sp)
    800018c0:	03010113          	addi	sp,sp,48
    800018c4:	00008067          	ret

00000000800018c8 <_Znwm>:
// Created by os on 2/2/23.
//

#include "../h/syscall_cpp.hpp"

void* operator new(size_t size) {
    800018c8:	ff010113          	addi	sp,sp,-16
    800018cc:	00113423          	sd	ra,8(sp)
    800018d0:	00813023          	sd	s0,0(sp)
    800018d4:	01010413          	addi	s0,sp,16
    return (void*)mem_alloc(size);
    800018d8:	00000097          	auipc	ra,0x0
    800018dc:	994080e7          	jalr	-1644(ra) # 8000126c <_Z9mem_allocm>
}
    800018e0:	00813083          	ld	ra,8(sp)
    800018e4:	00013403          	ld	s0,0(sp)
    800018e8:	01010113          	addi	sp,sp,16
    800018ec:	00008067          	ret

00000000800018f0 <_Znam>:

void* operator new[](size_t size) {
    800018f0:	ff010113          	addi	sp,sp,-16
    800018f4:	00113423          	sd	ra,8(sp)
    800018f8:	00813023          	sd	s0,0(sp)
    800018fc:	01010413          	addi	s0,sp,16
    return (void*)mem_alloc(size);
    80001900:	00000097          	auipc	ra,0x0
    80001904:	96c080e7          	jalr	-1684(ra) # 8000126c <_Z9mem_allocm>
}
    80001908:	00813083          	ld	ra,8(sp)
    8000190c:	00013403          	ld	s0,0(sp)
    80001910:	01010113          	addi	sp,sp,16
    80001914:	00008067          	ret

0000000080001918 <_ZdlPv>:

void operator delete(void *ptr) { mem_free(ptr); }
    80001918:	ff010113          	addi	sp,sp,-16
    8000191c:	00113423          	sd	ra,8(sp)
    80001920:	00813023          	sd	s0,0(sp)
    80001924:	01010413          	addi	s0,sp,16
    80001928:	00000097          	auipc	ra,0x0
    8000192c:	988080e7          	jalr	-1656(ra) # 800012b0 <_Z8mem_freePv>
    80001930:	00813083          	ld	ra,8(sp)
    80001934:	00013403          	ld	s0,0(sp)
    80001938:	01010113          	addi	sp,sp,16
    8000193c:	00008067          	ret

0000000080001940 <_ZdaPv>:

void operator delete[](void *ptr) { mem_free(ptr); }
    80001940:	ff010113          	addi	sp,sp,-16
    80001944:	00113423          	sd	ra,8(sp)
    80001948:	00813023          	sd	s0,0(sp)
    8000194c:	01010413          	addi	s0,sp,16
    80001950:	00000097          	auipc	ra,0x0
    80001954:	960080e7          	jalr	-1696(ra) # 800012b0 <_Z8mem_freePv>
    80001958:	00813083          	ld	ra,8(sp)
    8000195c:	00013403          	ld	s0,0(sp)
    80001960:	01010113          	addi	sp,sp,16
    80001964:	00008067          	ret

0000000080001968 <_ZN6ThreadD1Ev>:

void Thread::dispatch() {
    thread_dispatch();
}

Thread::~Thread() {
    80001968:	fe010113          	addi	sp,sp,-32
    8000196c:	00113c23          	sd	ra,24(sp)
    80001970:	00813823          	sd	s0,16(sp)
    80001974:	00913423          	sd	s1,8(sp)
    80001978:	02010413          	addi	s0,sp,32
    8000197c:	00006797          	auipc	a5,0x6
    80001980:	8cc78793          	addi	a5,a5,-1844 # 80007248 <_ZTV6Thread+0x10>
    80001984:	00f53023          	sd	a5,0(a0)
    delete (PCB*)myHandle;
    80001988:	00853483          	ld	s1,8(a0)
    8000198c:	02048063          	beqz	s1,800019ac <_ZN6ThreadD1Ev+0x44>
    ~PCB() { delete[] stack; }
    80001990:	0084b503          	ld	a0,8(s1)
    80001994:	00050663          	beqz	a0,800019a0 <_ZN6ThreadD1Ev+0x38>
    80001998:	00000097          	auipc	ra,0x0
    8000199c:	fa8080e7          	jalr	-88(ra) # 80001940 <_ZdaPv>
    800019a0:	00048513          	mv	a0,s1
    800019a4:	00000097          	auipc	ra,0x0
    800019a8:	f74080e7          	jalr	-140(ra) # 80001918 <_ZdlPv>
}
    800019ac:	01813083          	ld	ra,24(sp)
    800019b0:	01013403          	ld	s0,16(sp)
    800019b4:	00813483          	ld	s1,8(sp)
    800019b8:	02010113          	addi	sp,sp,32
    800019bc:	00008067          	ret

00000000800019c0 <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    800019c0:	fe010113          	addi	sp,sp,-32
    800019c4:	00113c23          	sd	ra,24(sp)
    800019c8:	00813823          	sd	s0,16(sp)
    800019cc:	00913423          	sd	s1,8(sp)
    800019d0:	02010413          	addi	s0,sp,32
    800019d4:	00050493          	mv	s1,a0
}
    800019d8:	00000097          	auipc	ra,0x0
    800019dc:	f90080e7          	jalr	-112(ra) # 80001968 <_ZN6ThreadD1Ev>
    800019e0:	00048513          	mv	a0,s1
    800019e4:	00000097          	auipc	ra,0x0
    800019e8:	f34080e7          	jalr	-204(ra) # 80001918 <_ZdlPv>
    800019ec:	01813083          	ld	ra,24(sp)
    800019f0:	01013403          	ld	s0,16(sp)
    800019f4:	00813483          	ld	s1,8(sp)
    800019f8:	02010113          	addi	sp,sp,32
    800019fc:	00008067          	ret

0000000080001a00 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void*), void* arg) {
    80001a00:	ff010113          	addi	sp,sp,-16
    80001a04:	00113423          	sd	ra,8(sp)
    80001a08:	00813023          	sd	s0,0(sp)
    80001a0c:	01010413          	addi	s0,sp,16
    80001a10:	00006797          	auipc	a5,0x6
    80001a14:	83878793          	addi	a5,a5,-1992 # 80007248 <_ZTV6Thread+0x10>
    80001a18:	00f53023          	sd	a5,0(a0)
    thread_create(&myHandle, body, arg);
    80001a1c:	00850513          	addi	a0,a0,8
    80001a20:	00000097          	auipc	ra,0x0
    80001a24:	8d0080e7          	jalr	-1840(ra) # 800012f0 <_Z13thread_createPP7_threadPFvPvES2_>
}
    80001a28:	00813083          	ld	ra,8(sp)
    80001a2c:	00013403          	ld	s0,0(sp)
    80001a30:	01010113          	addi	sp,sp,16
    80001a34:	00008067          	ret

0000000080001a38 <_ZN6ThreadC1Ev>:
Thread::Thread() {
    80001a38:	fe010113          	addi	sp,sp,-32
    80001a3c:	00113c23          	sd	ra,24(sp)
    80001a40:	00813823          	sd	s0,16(sp)
    80001a44:	00913423          	sd	s1,8(sp)
    80001a48:	01213023          	sd	s2,0(sp)
    80001a4c:	02010413          	addi	s0,sp,32
    80001a50:	00005797          	auipc	a5,0x5
    80001a54:	7f878793          	addi	a5,a5,2040 # 80007248 <_ZTV6Thread+0x10>
    80001a58:	00f53023          	sd	a5,0(a0)
    new Thread(nullptr, nullptr);
    80001a5c:	02000513          	li	a0,32
    80001a60:	00000097          	auipc	ra,0x0
    80001a64:	e68080e7          	jalr	-408(ra) # 800018c8 <_Znwm>
    80001a68:	00050493          	mv	s1,a0
    80001a6c:	00000613          	li	a2,0
    80001a70:	00000593          	li	a1,0
    80001a74:	00000097          	auipc	ra,0x0
    80001a78:	f8c080e7          	jalr	-116(ra) # 80001a00 <_ZN6ThreadC1EPFvPvES0_>
    80001a7c:	0200006f          	j	80001a9c <_ZN6ThreadC1Ev+0x64>
    80001a80:	00050913          	mv	s2,a0
    80001a84:	00048513          	mv	a0,s1
    80001a88:	00000097          	auipc	ra,0x0
    80001a8c:	e90080e7          	jalr	-368(ra) # 80001918 <_ZdlPv>
    80001a90:	00090513          	mv	a0,s2
    80001a94:	00007097          	auipc	ra,0x7
    80001a98:	a24080e7          	jalr	-1500(ra) # 800084b8 <_Unwind_Resume>
}
    80001a9c:	01813083          	ld	ra,24(sp)
    80001aa0:	01013403          	ld	s0,16(sp)
    80001aa4:	00813483          	ld	s1,8(sp)
    80001aa8:	00013903          	ld	s2,0(sp)
    80001aac:	02010113          	addi	sp,sp,32
    80001ab0:	00008067          	ret

0000000080001ab4 <_ZN6Thread5startEv>:
int Thread::start() {
    80001ab4:	ff010113          	addi	sp,sp,-16
    80001ab8:	00113423          	sd	ra,8(sp)
    80001abc:	00813023          	sd	s0,0(sp)
    80001ac0:	01010413          	addi	s0,sp,16
    Scheduler::put((PCB*)myHandle);
    80001ac4:	00853503          	ld	a0,8(a0)
    80001ac8:	00000097          	auipc	ra,0x0
    80001acc:	b74080e7          	jalr	-1164(ra) # 8000163c <_ZN9Scheduler3putEP3PCB>
}
    80001ad0:	00000513          	li	a0,0
    80001ad4:	00813083          	ld	ra,8(sp)
    80001ad8:	00013403          	ld	s0,0(sp)
    80001adc:	01010113          	addi	sp,sp,16
    80001ae0:	00008067          	ret

0000000080001ae4 <_ZN6Thread4joinEv>:
void Thread::join() {
    80001ae4:	ff010113          	addi	sp,sp,-16
    80001ae8:	00113423          	sd	ra,8(sp)
    80001aec:	00813023          	sd	s0,0(sp)
    80001af0:	01010413          	addi	s0,sp,16
    thread_join(myHandle);
    80001af4:	00853503          	ld	a0,8(a0)
    80001af8:	00000097          	auipc	ra,0x0
    80001afc:	8a4080e7          	jalr	-1884(ra) # 8000139c <_Z11thread_joinP7_thread>
}
    80001b00:	00813083          	ld	ra,8(sp)
    80001b04:	00013403          	ld	s0,0(sp)
    80001b08:	01010113          	addi	sp,sp,16
    80001b0c:	00008067          	ret

0000000080001b10 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80001b10:	ff010113          	addi	sp,sp,-16
    80001b14:	00113423          	sd	ra,8(sp)
    80001b18:	00813023          	sd	s0,0(sp)
    80001b1c:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80001b20:	00000097          	auipc	ra,0x0
    80001b24:	858080e7          	jalr	-1960(ra) # 80001378 <_Z15thread_dispatchv>
}
    80001b28:	00813083          	ld	ra,8(sp)
    80001b2c:	00013403          	ld	s0,0(sp)
    80001b30:	01010113          	addi	sp,sp,16
    80001b34:	00008067          	ret

0000000080001b38 <_ZN6Thread3runEv>:
    static void dispatch();

protected:
    Thread();

    virtual void run() {}
    80001b38:	ff010113          	addi	sp,sp,-16
    80001b3c:	00813423          	sd	s0,8(sp)
    80001b40:	01010413          	addi	s0,sp,16
    80001b44:	00813403          	ld	s0,8(sp)
    80001b48:	01010113          	addi	sp,sp,16
    80001b4c:	00008067          	ret

0000000080001b50 <_ZN5Riscv10popSppSpieEv>:
#include "../h/riscv.hpp"



void Riscv::popSppSpie()
{
    80001b50:	ff010113          	addi	sp,sp,-16
    80001b54:	00813423          	sd	s0,8(sp)
    80001b58:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    80001b5c:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    80001b60:	10200073          	sret
}
    80001b64:	00813403          	ld	s0,8(sp)
    80001b68:	01010113          	addi	sp,sp,16
    80001b6c:	00008067          	ret

0000000080001b70 <_ZN5Riscv11trapHandlerEv>:

void Riscv::trapHandler() {
    80001b70:	fb010113          	addi	sp,sp,-80
    80001b74:	04113423          	sd	ra,72(sp)
    80001b78:	04813023          	sd	s0,64(sp)
    80001b7c:	02913c23          	sd	s1,56(sp)
    80001b80:	03213823          	sd	s2,48(sp)
    80001b84:	05010413          	addi	s0,sp,80
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80001b88:	142027f3          	csrr	a5,scause
    80001b8c:	fcf43423          	sd	a5,-56(s0)
    return scause;
    80001b90:	fc843783          	ld	a5,-56(s0)
    __asm__ volatile ("ld %0, 10*8(fp)" : "=r"(a0));
    80001b94:	05043703          	ld	a4,80(s0)
    80001b98:	fce43023          	sd	a4,-64(s0)
    return a0;
    80001b9c:	fc043683          	ld	a3,-64(s0)
    __asm__ volatile ("ld %0, 11*8(fp)" : "=r"(a1));
    80001ba0:	05843703          	ld	a4,88(s0)
    80001ba4:	fae43c23          	sd	a4,-72(s0)
    return a1;
    80001ba8:	fb843503          	ld	a0,-72(s0)
    __asm__ volatile ("ld %0, 12*8(fp)" : "=r"(a2));
    80001bac:	06043703          	ld	a4,96(s0)
    80001bb0:	fae43823          	sd	a4,-80(s0)
    return a2;
    80001bb4:	fb043583          	ld	a1,-80(s0)
    uint64 a1 = r_a1();
    uint64 a2 = r_a2();
    uint64 sepc;
    uint64 sstatus;

    switch (scause) {
    80001bb8:	fff00713          	li	a4,-1
    80001bbc:	03f71713          	slli	a4,a4,0x3f
    80001bc0:	00170713          	addi	a4,a4,1
    80001bc4:	10e78a63          	beq	a5,a4,80001cd8 <_ZN5Riscv11trapHandlerEv+0x168>
    80001bc8:	fff00713          	li	a4,-1
    80001bcc:	03f71713          	slli	a4,a4,0x3f
    80001bd0:	00170713          	addi	a4,a4,1
    80001bd4:	04f76663          	bltu	a4,a5,80001c20 <_ZN5Riscv11trapHandlerEv+0xb0>
    80001bd8:	ff878793          	addi	a5,a5,-8
    80001bdc:	00100713          	li	a4,1
    80001be0:	08f76663          	bltu	a4,a5,80001c6c <_ZN5Riscv11trapHandlerEv+0xfc>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001be4:	141027f3          	csrr	a5,sepc
    80001be8:	fcf43c23          	sd	a5,-40(s0)
    return sepc;
    80001bec:	fd843483          	ld	s1,-40(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001bf0:	100027f3          	csrr	a5,sstatus
    80001bf4:	fcf43823          	sd	a5,-48(s0)
    return sstatus;
    80001bf8:	fd043903          	ld	s2,-48(s0)
            //ecall: software interrupt
            sepc = r_sepc();
            sstatus = r_sstatus();
            void* mem;

            switch(a0){
    80001bfc:	01300793          	li	a5,19
    80001c00:	06d7e063          	bltu	a5,a3,80001c60 <_ZN5Riscv11trapHandlerEv+0xf0>
    80001c04:	00269693          	slli	a3,a3,0x2
    80001c08:	00004717          	auipc	a4,0x4
    80001c0c:	41870713          	addi	a4,a4,1048 # 80006020 <CONSOLE_STATUS+0x10>
    80001c10:	00e686b3          	add	a3,a3,a4
    80001c14:	0006a783          	lw	a5,0(a3)
    80001c18:	00e787b3          	add	a5,a5,a4
    80001c1c:	00078067          	jr	a5
    switch (scause) {
    80001c20:	fff00713          	li	a4,-1
    80001c24:	03f71713          	slli	a4,a4,0x3f
    80001c28:	00970713          	addi	a4,a4,9
    80001c2c:	04e79063          	bne	a5,a4,80001c6c <_ZN5Riscv11trapHandlerEv+0xfc>
            //timer interrupt
            mc_sip(SIP_SSIP);
            break;
        case 0x8000000000000009UL:
            //external hardware interrupt
            console_handler();
    80001c30:	00004097          	auipc	ra,0x4
    80001c34:	db0080e7          	jalr	-592(ra) # 800059e0 <console_handler>
        default:
            break;
            //printString("ERROR: Unexpected interrupt!");
    }

    80001c38:	0340006f          	j	80001c6c <_ZN5Riscv11trapHandlerEv+0xfc>
        static MemoryAllocator instance;
    80001c3c:	00005797          	auipc	a5,0x5
    80001c40:	77c7c783          	lbu	a5,1916(a5) # 800073b8 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80001c44:	00079863          	bnez	a5,80001c54 <_ZN5Riscv11trapHandlerEv+0xe4>
    80001c48:	00100793          	li	a5,1
    80001c4c:	00005717          	auipc	a4,0x5
    80001c50:	76f70623          	sb	a5,1900(a4) # 800073b8 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
                    mem = MemoryAllocator::getInstance().allocate((size_t) a1);
    80001c54:	00000097          	auipc	ra,0x0
    80001c58:	090080e7          	jalr	144(ra) # 80001ce4 <_ZN15MemoryAllocator8allocateEm>
inline void Riscv::w_a3(uint64 a3) {
    __asm__ volatile ("mv a3, %0" : : "r"(a3));
}

inline void Riscv::push_a0(long a0) {
    __asm__ volatile ("sd %0, 10*8(fp)" : : "r"(a0));
    80001c5c:	04a43823          	sd	a0,80(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001c60:	10091073          	csrw	sstatus,s2
            w_sepc(sepc + 4);
    80001c64:	00448493          	addi	s1,s1,4
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001c68:	14149073          	csrw	sepc,s1
    80001c6c:	04813083          	ld	ra,72(sp)
    80001c70:	04013403          	ld	s0,64(sp)
    80001c74:	03813483          	ld	s1,56(sp)
    80001c78:	03013903          	ld	s2,48(sp)
    80001c7c:	05010113          	addi	sp,sp,80
    80001c80:	00008067          	ret
    80001c84:	00005797          	auipc	a5,0x5
    80001c88:	7347c783          	lbu	a5,1844(a5) # 800073b8 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80001c8c:	00079863          	bnez	a5,80001c9c <_ZN5Riscv11trapHandlerEv+0x12c>
    80001c90:	00100793          	li	a5,1
    80001c94:	00005717          	auipc	a4,0x5
    80001c98:	72f70223          	sb	a5,1828(a4) # 800073b8 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
                    push_a0(MemoryAllocator::getInstance().deallocate((void *)a1));
    80001c9c:	00000097          	auipc	ra,0x0
    80001ca0:	130080e7          	jalr	304(ra) # 80001dcc <_ZN15MemoryAllocator10deallocateEPv>
    __asm__ volatile ("sd %0, 10*8(fp)" : : "r"(a0));
    80001ca4:	04a43823          	sd	a0,80(s0)
}
    80001ca8:	fb9ff06f          	j	80001c60 <_ZN5Riscv11trapHandlerEv+0xf0>
                    push_a0((uint64)PCB::createThread((PCB::Body)a1, (void*)a2));
    80001cac:	fffff097          	auipc	ra,0xfffff
    80001cb0:	754080e7          	jalr	1876(ra) # 80001400 <_ZN3PCB12createThreadEPFvPvES0_>
    __asm__ volatile ("sd %0, 10*8(fp)" : : "r"(a0));
    80001cb4:	04a43823          	sd	a0,80(s0)
}
    80001cb8:	fa9ff06f          	j	80001c60 <_ZN5Riscv11trapHandlerEv+0xf0>
                    push_a0(PCB::exit());
    80001cbc:	00000097          	auipc	ra,0x0
    80001cc0:	888080e7          	jalr	-1912(ra) # 80001544 <_ZN3PCB4exitEv>
    __asm__ volatile ("sd %0, 10*8(fp)" : : "r"(a0));
    80001cc4:	04a43823          	sd	a0,80(s0)
}
    80001cc8:	f99ff06f          	j	80001c60 <_ZN5Riscv11trapHandlerEv+0xf0>
                    PCB::dispatch();
    80001ccc:	fffff097          	auipc	ra,0xfffff
    80001cd0:	7f0080e7          	jalr	2032(ra) # 800014bc <_ZN3PCB8dispatchEv>
                    break;
    80001cd4:	f8dff06f          	j	80001c60 <_ZN5Riscv11trapHandlerEv+0xf0>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80001cd8:	00200793          	li	a5,2
    80001cdc:	1447b073          	csrc	sip,a5
}
    80001ce0:	f8dff06f          	j	80001c6c <_ZN5Riscv11trapHandlerEv+0xfc>

0000000080001ce4 <_ZN15MemoryAllocator8allocateEm>:
Block *MemoryAllocator::free_list = nullptr;
Block *MemoryAllocator::allocated_list = nullptr;


// Allocate memory
void *MemoryAllocator::allocate(size_t size) {
    80001ce4:	ff010113          	addi	sp,sp,-16
    80001ce8:	00813423          	sd	s0,8(sp)
    80001cec:	01010413          	addi	s0,sp,16
    80001cf0:	00050613          	mv	a2,a0
    size_t sizeToAllocate = size * MEM_BLOCK_SIZE;
    80001cf4:	00651713          	slli	a4,a0,0x6

    Block *prev = nullptr;
    Block *current = free_list;
    80001cf8:	00005517          	auipc	a0,0x5
    80001cfc:	6c853503          	ld	a0,1736(a0) # 800073c0 <_ZN15MemoryAllocator9free_listE>
    Block *prev = nullptr;
    80001d00:	00000693          	li	a3,0

    // Find a free block that is large enough
    while (current != nullptr) {
    80001d04:	06050e63          	beqz	a0,80001d80 <_ZN15MemoryAllocator8allocateEm+0x9c>

        if (current->size >= sizeToAllocate) {
    80001d08:	00053783          	ld	a5,0(a0)
    80001d0c:	00e7f863          	bgeu	a5,a4,80001d1c <_ZN15MemoryAllocator8allocateEm+0x38>
            // Return the memory

            void *userPtr = (Block *) ((uint64 *) current + sizeof(Block));
            return userPtr;
        }
        prev = current;
    80001d10:	00050693          	mv	a3,a0
        current = current->next;
    80001d14:	00853503          	ld	a0,8(a0)
    while (current != nullptr) {
    80001d18:	fedff06f          	j	80001d04 <_ZN15MemoryAllocator8allocateEm+0x20>
            if (prev == nullptr) {
    80001d1c:	06068863          	beqz	a3,80001d8c <_ZN15MemoryAllocator8allocateEm+0xa8>
                prev->next = current->next;
    80001d20:	00853783          	ld	a5,8(a0)
    80001d24:	00f6b423          	sd	a5,8(a3)
            if (current->size - sizeToAllocate >= MEM_BLOCK_SIZE) {
    80001d28:	00053783          	ld	a5,0(a0)
    80001d2c:	40e787b3          	sub	a5,a5,a4
    80001d30:	03f00593          	li	a1,63
    80001d34:	02f5f863          	bgeu	a1,a5,80001d64 <_ZN15MemoryAllocator8allocateEm+0x80>
                Block *newBlock = (Block *) ((uint64 *) current + sizeToAllocate);
    80001d38:	00961613          	slli	a2,a2,0x9
    80001d3c:	00c50633          	add	a2,a0,a2
                newBlock->size = current->size - sizeToAllocate;
    80001d40:	00f63023          	sd	a5,0(a2)
                current->size = sizeToAllocate;
    80001d44:	00e53023          	sd	a4,0(a0)
                if (!free_list) {
    80001d48:	00005797          	auipc	a5,0x5
    80001d4c:	6787b783          	ld	a5,1656(a5) # 800073c0 <_ZN15MemoryAllocator9free_listE>
    80001d50:	04078663          	beqz	a5,80001d9c <_ZN15MemoryAllocator8allocateEm+0xb8>
                } else if (!prev) {
    80001d54:	04068c63          	beqz	a3,80001dac <_ZN15MemoryAllocator8allocateEm+0xc8>
                    prev->next = newBlock;
    80001d58:	00c6b423          	sd	a2,8(a3)
                    newBlock->next = current->next;
    80001d5c:	00853783          	ld	a5,8(a0)
    80001d60:	00f63423          	sd	a5,8(a2)
            if (!allocated_list) {
    80001d64:	00005797          	auipc	a5,0x5
    80001d68:	6647b783          	ld	a5,1636(a5) # 800073c8 <_ZN15MemoryAllocator14allocated_listE>
    80001d6c:	04078863          	beqz	a5,80001dbc <_ZN15MemoryAllocator8allocateEm+0xd8>
                current->next = allocated_list;
    80001d70:	00f53423          	sd	a5,8(a0)
                allocated_list = current;
    80001d74:	00005797          	auipc	a5,0x5
    80001d78:	64a7ba23          	sd	a0,1620(a5) # 800073c8 <_ZN15MemoryAllocator14allocated_listE>
            void *userPtr = (Block *) ((uint64 *) current + sizeof(Block));
    80001d7c:	08050513          	addi	a0,a0,128
    }

    // No block was found
    return nullptr;
}
    80001d80:	00813403          	ld	s0,8(sp)
    80001d84:	01010113          	addi	sp,sp,16
    80001d88:	00008067          	ret
                free_list = current->next;
    80001d8c:	00853783          	ld	a5,8(a0)
    80001d90:	00005597          	auipc	a1,0x5
    80001d94:	62f5b823          	sd	a5,1584(a1) # 800073c0 <_ZN15MemoryAllocator9free_listE>
    80001d98:	f91ff06f          	j	80001d28 <_ZN15MemoryAllocator8allocateEm+0x44>
                    free_list = newBlock;
    80001d9c:	00005797          	auipc	a5,0x5
    80001da0:	62c7b223          	sd	a2,1572(a5) # 800073c0 <_ZN15MemoryAllocator9free_listE>
                    newBlock->next = nullptr;
    80001da4:	00063423          	sd	zero,8(a2)
    80001da8:	fbdff06f          	j	80001d64 <_ZN15MemoryAllocator8allocateEm+0x80>
                    newBlock->next = free_list;
    80001dac:	00f63423          	sd	a5,8(a2)
                    free_list = newBlock;
    80001db0:	00005797          	auipc	a5,0x5
    80001db4:	60c7b823          	sd	a2,1552(a5) # 800073c0 <_ZN15MemoryAllocator9free_listE>
    80001db8:	fadff06f          	j	80001d64 <_ZN15MemoryAllocator8allocateEm+0x80>
                allocated_list = current;
    80001dbc:	00005797          	auipc	a5,0x5
    80001dc0:	60a7b623          	sd	a0,1548(a5) # 800073c8 <_ZN15MemoryAllocator14allocated_listE>
                allocated_list->next = nullptr;
    80001dc4:	00053423          	sd	zero,8(a0)
    80001dc8:	fb5ff06f          	j	80001d7c <_ZN15MemoryAllocator8allocateEm+0x98>

0000000080001dcc <_ZN15MemoryAllocator10deallocateEPv>:

// Deallocate memory
int MemoryAllocator::deallocate(void *ptr) {
    80001dcc:	ff010113          	addi	sp,sp,-16
    80001dd0:	00813423          	sd	s0,8(sp)
    80001dd4:	01010413          	addi	s0,sp,16
    Block *block = (Block *) ((uint64 *) ptr - sizeof(Block));
    80001dd8:	f8050713          	addi	a4,a0,-128
    Block *tmpPrev = nullptr;
    Block *tmp = allocated_list;
    80001ddc:	00005797          	auipc	a5,0x5
    80001de0:	5ec7b783          	ld	a5,1516(a5) # 800073c8 <_ZN15MemoryAllocator14allocated_listE>
    Block *tmpPrev = nullptr;
    80001de4:	00000693          	li	a3,0
    uint8 flag = 0;

    //Check if the block given was previously allocated
    while (tmp) {
    80001de8:	00078a63          	beqz	a5,80001dfc <_ZN15MemoryAllocator10deallocateEPv+0x30>
        if (tmp == block) {
    80001dec:	04e78263          	beq	a5,a4,80001e30 <_ZN15MemoryAllocator10deallocateEPv+0x64>
            flag = 1;
            break;
        }
        tmpPrev = tmp;
    80001df0:	00078693          	mv	a3,a5
        tmp = tmp->next;
    80001df4:	0087b783          	ld	a5,8(a5)
    while (tmp) {
    80001df8:	ff1ff06f          	j	80001de8 <_ZN15MemoryAllocator10deallocateEPv+0x1c>
    uint8 flag = 0;
    80001dfc:	00000613          	li	a2,0
    }
    if (flag == 0) return -1;
    80001e00:	0e060263          	beqz	a2,80001ee4 <_ZN15MemoryAllocator10deallocateEPv+0x118>

    // Found a block, remove it from the allocated list
    if (tmpPrev != nullptr) {
    80001e04:	02068a63          	beqz	a3,80001e38 <_ZN15MemoryAllocator10deallocateEPv+0x6c>
        tmpPrev->next = tmp->next;
    80001e08:	0087b783          	ld	a5,8(a5)
    80001e0c:	00f6b423          	sd	a5,8(a3)
        allocated_list = tmp->next;
    }


    Block *prev = nullptr;
    Block *current = free_list;
    80001e10:	00005797          	auipc	a5,0x5
    80001e14:	5b07b783          	ld	a5,1456(a5) # 800073c0 <_ZN15MemoryAllocator9free_listE>
    Block *prev = nullptr;
    80001e18:	00000693          	li	a3,0

    // Add it to the free_list
    while (current != nullptr) {
    80001e1c:	02078c63          	beqz	a5,80001e54 <_ZN15MemoryAllocator10deallocateEPv+0x88>
        if ((uint64 *) block < (uint64 *) current) {
    80001e20:	02f76463          	bltu	a4,a5,80001e48 <_ZN15MemoryAllocator10deallocateEPv+0x7c>
            } else {
                free_list = block;
            }
            break;
        }
        prev = current;
    80001e24:	00078693          	mv	a3,a5
        current = current->next;
    80001e28:	0087b783          	ld	a5,8(a5)
    while (current != nullptr) {
    80001e2c:	ff1ff06f          	j	80001e1c <_ZN15MemoryAllocator10deallocateEPv+0x50>
            flag = 1;
    80001e30:	00100613          	li	a2,1
    80001e34:	fcdff06f          	j	80001e00 <_ZN15MemoryAllocator10deallocateEPv+0x34>
        allocated_list = tmp->next;
    80001e38:	0087b783          	ld	a5,8(a5)
    80001e3c:	00005697          	auipc	a3,0x5
    80001e40:	58f6b623          	sd	a5,1420(a3) # 800073c8 <_ZN15MemoryAllocator14allocated_listE>
    80001e44:	fcdff06f          	j	80001e10 <_ZN15MemoryAllocator10deallocateEPv+0x44>
            block->next = current;
    80001e48:	f8f53423          	sd	a5,-120(a0)
            if (prev != nullptr) {
    80001e4c:	04068463          	beqz	a3,80001e94 <_ZN15MemoryAllocator10deallocateEPv+0xc8>
                prev->next = block;
    80001e50:	00e6b423          	sd	a4,8(a3)
    }
    if (current == nullptr) {
    80001e54:	04078663          	beqz	a5,80001ea0 <_ZN15MemoryAllocator10deallocateEPv+0xd4>
        //current = block;
        block->next = nullptr;
    }

    //Merge it with neighbour blocks if possible
    if (prev != nullptr) {
    80001e58:	00068a63          	beqz	a3,80001e6c <_ZN15MemoryAllocator10deallocateEPv+0xa0>
        if ((uint64 *) prev + prev->size == (uint64 *) block) {
    80001e5c:	0006b603          	ld	a2,0(a3)
    80001e60:	00361793          	slli	a5,a2,0x3
    80001e64:	00f687b3          	add	a5,a3,a5
    80001e68:	04e78263          	beq	a5,a4,80001eac <_ZN15MemoryAllocator10deallocateEPv+0xe0>
            prev->size = prev->size + block->size;
            prev->next = block->next;
            block = prev;
        }
    }
    if (block->next != nullptr) {
    80001e6c:	00873783          	ld	a5,8(a4)
    80001e70:	06078e63          	beqz	a5,80001eec <_ZN15MemoryAllocator10deallocateEPv+0x120>
        if ((uint64 *) block + block->size == (uint64 *) block->next) {
    80001e74:	00073603          	ld	a2,0(a4)
    80001e78:	00361693          	slli	a3,a2,0x3
    80001e7c:	00d706b3          	add	a3,a4,a3
    80001e80:	04d78463          	beq	a5,a3,80001ec8 <_ZN15MemoryAllocator10deallocateEPv+0xfc>
            block->size += block->next->size;
            block->next = block->next->next;
        }
    }

    return 0;
    80001e84:	00000513          	li	a0,0

}
    80001e88:	00813403          	ld	s0,8(sp)
    80001e8c:	01010113          	addi	sp,sp,16
    80001e90:	00008067          	ret
                free_list = block;
    80001e94:	00005617          	auipc	a2,0x5
    80001e98:	52e63623          	sd	a4,1324(a2) # 800073c0 <_ZN15MemoryAllocator9free_listE>
    80001e9c:	fb9ff06f          	j	80001e54 <_ZN15MemoryAllocator10deallocateEPv+0x88>
        prev->next = block;
    80001ea0:	00e6b423          	sd	a4,8(a3)
        block->next = nullptr;
    80001ea4:	f8053423          	sd	zero,-120(a0)
    80001ea8:	fb1ff06f          	j	80001e58 <_ZN15MemoryAllocator10deallocateEPv+0x8c>
            prev->size = prev->size + block->size;
    80001eac:	f8053783          	ld	a5,-128(a0)
    80001eb0:	00f60633          	add	a2,a2,a5
    80001eb4:	00c6b023          	sd	a2,0(a3)
            prev->next = block->next;
    80001eb8:	f8853783          	ld	a5,-120(a0)
    80001ebc:	00f6b423          	sd	a5,8(a3)
            block = prev;
    80001ec0:	00068713          	mv	a4,a3
    80001ec4:	fa9ff06f          	j	80001e6c <_ZN15MemoryAllocator10deallocateEPv+0xa0>
            block->size += block->next->size;
    80001ec8:	0007b683          	ld	a3,0(a5)
    80001ecc:	00d60633          	add	a2,a2,a3
    80001ed0:	00c73023          	sd	a2,0(a4)
            block->next = block->next->next;
    80001ed4:	0087b783          	ld	a5,8(a5)
    80001ed8:	00f73423          	sd	a5,8(a4)
    return 0;
    80001edc:	00000513          	li	a0,0
    80001ee0:	fa9ff06f          	j	80001e88 <_ZN15MemoryAllocator10deallocateEPv+0xbc>
    if (flag == 0) return -1;
    80001ee4:	fff00513          	li	a0,-1
    80001ee8:	fa1ff06f          	j	80001e88 <_ZN15MemoryAllocator10deallocateEPv+0xbc>
    return 0;
    80001eec:	00000513          	li	a0,0
    80001ef0:	f99ff06f          	j	80001e88 <_ZN15MemoryAllocator10deallocateEPv+0xbc>

0000000080001ef4 <_Z4putcc>:
//
//    while (--i >= 0)
//        __putc(buf[i]);
//}

void putc(char c){
    80001ef4:	ff010113          	addi	sp,sp,-16
    80001ef8:	00113423          	sd	ra,8(sp)
    80001efc:	00813023          	sd	s0,0(sp)
    80001f00:	01010413          	addi	s0,sp,16
    __putc(c);
    80001f04:	00004097          	auipc	ra,0x4
    80001f08:	a68080e7          	jalr	-1432(ra) # 8000596c <__putc>
}
    80001f0c:	00813083          	ld	ra,8(sp)
    80001f10:	00013403          	ld	s0,0(sp)
    80001f14:	01010113          	addi	sp,sp,16
    80001f18:	00008067          	ret

0000000080001f1c <_Z4getcv>:

char getc(){
    80001f1c:	ff010113          	addi	sp,sp,-16
    80001f20:	00113423          	sd	ra,8(sp)
    80001f24:	00813023          	sd	s0,0(sp)
    80001f28:	01010413          	addi	s0,sp,16
    return __getc();
    80001f2c:	00004097          	auipc	ra,0x4
    80001f30:	a7c080e7          	jalr	-1412(ra) # 800059a8 <__getc>
    80001f34:	00813083          	ld	ra,8(sp)
    80001f38:	00013403          	ld	s0,0(sp)
    80001f3c:	01010113          	addi	sp,sp,16
    80001f40:	00008067          	ret

0000000080001f44 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80001f44:	fe010113          	addi	sp,sp,-32
    80001f48:	00113c23          	sd	ra,24(sp)
    80001f4c:	00813823          	sd	s0,16(sp)
    80001f50:	00913423          	sd	s1,8(sp)
    80001f54:	01213023          	sd	s2,0(sp)
    80001f58:	02010413          	addi	s0,sp,32
    80001f5c:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80001f60:	00100793          	li	a5,1
    80001f64:	02a7f863          	bgeu	a5,a0,80001f94 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80001f68:	00a00793          	li	a5,10
    80001f6c:	02f577b3          	remu	a5,a0,a5
    80001f70:	02078e63          	beqz	a5,80001fac <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80001f74:	fff48513          	addi	a0,s1,-1
    80001f78:	00000097          	auipc	ra,0x0
    80001f7c:	fcc080e7          	jalr	-52(ra) # 80001f44 <_ZL9fibonaccim>
    80001f80:	00050913          	mv	s2,a0
    80001f84:	ffe48513          	addi	a0,s1,-2
    80001f88:	00000097          	auipc	ra,0x0
    80001f8c:	fbc080e7          	jalr	-68(ra) # 80001f44 <_ZL9fibonaccim>
    80001f90:	00a90533          	add	a0,s2,a0
}
    80001f94:	01813083          	ld	ra,24(sp)
    80001f98:	01013403          	ld	s0,16(sp)
    80001f9c:	00813483          	ld	s1,8(sp)
    80001fa0:	00013903          	ld	s2,0(sp)
    80001fa4:	02010113          	addi	sp,sp,32
    80001fa8:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80001fac:	fffff097          	auipc	ra,0xfffff
    80001fb0:	3cc080e7          	jalr	972(ra) # 80001378 <_Z15thread_dispatchv>
    80001fb4:	fc1ff06f          	j	80001f74 <_ZL9fibonaccim+0x30>

0000000080001fb8 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    80001fb8:	fe010113          	addi	sp,sp,-32
    80001fbc:	00113c23          	sd	ra,24(sp)
    80001fc0:	00813823          	sd	s0,16(sp)
    80001fc4:	00913423          	sd	s1,8(sp)
    80001fc8:	01213023          	sd	s2,0(sp)
    80001fcc:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80001fd0:	00000913          	li	s2,0
    80001fd4:	0380006f          	j	8000200c <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80001fd8:	fffff097          	auipc	ra,0xfffff
    80001fdc:	3a0080e7          	jalr	928(ra) # 80001378 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80001fe0:	00148493          	addi	s1,s1,1
    80001fe4:	000027b7          	lui	a5,0x2
    80001fe8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80001fec:	0097ee63          	bltu	a5,s1,80002008 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80001ff0:	00000713          	li	a4,0
    80001ff4:	000077b7          	lui	a5,0x7
    80001ff8:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80001ffc:	fce7eee3          	bltu	a5,a4,80001fd8 <_ZN7WorkerA11workerBodyAEPv+0x20>
    80002000:	00170713          	addi	a4,a4,1
    80002004:	ff1ff06f          	j	80001ff4 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80002008:	00190913          	addi	s2,s2,1
    8000200c:	00900793          	li	a5,9
    80002010:	0527e063          	bltu	a5,s2,80002050 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80002014:	00004517          	auipc	a0,0x4
    80002018:	05c50513          	addi	a0,a0,92 # 80006070 <CONSOLE_STATUS+0x60>
    8000201c:	00001097          	auipc	ra,0x1
    80002020:	e9c080e7          	jalr	-356(ra) # 80002eb8 <_Z11printStringPKc>
    80002024:	00000613          	li	a2,0
    80002028:	00a00593          	li	a1,10
    8000202c:	0009051b          	sext.w	a0,s2
    80002030:	00001097          	auipc	ra,0x1
    80002034:	038080e7          	jalr	56(ra) # 80003068 <_Z8printIntiii>
    80002038:	00004517          	auipc	a0,0x4
    8000203c:	3e050513          	addi	a0,a0,992 # 80006418 <CONSOLE_STATUS+0x408>
    80002040:	00001097          	auipc	ra,0x1
    80002044:	e78080e7          	jalr	-392(ra) # 80002eb8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80002048:	00000493          	li	s1,0
    8000204c:	f99ff06f          	j	80001fe4 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80002050:	00004517          	auipc	a0,0x4
    80002054:	02850513          	addi	a0,a0,40 # 80006078 <CONSOLE_STATUS+0x68>
    80002058:	00001097          	auipc	ra,0x1
    8000205c:	e60080e7          	jalr	-416(ra) # 80002eb8 <_Z11printStringPKc>
    finishedA = true;
    80002060:	00100793          	li	a5,1
    80002064:	00005717          	auipc	a4,0x5
    80002068:	36f70623          	sb	a5,876(a4) # 800073d0 <_ZL9finishedA>
}
    8000206c:	01813083          	ld	ra,24(sp)
    80002070:	01013403          	ld	s0,16(sp)
    80002074:	00813483          	ld	s1,8(sp)
    80002078:	00013903          	ld	s2,0(sp)
    8000207c:	02010113          	addi	sp,sp,32
    80002080:	00008067          	ret

0000000080002084 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80002084:	fe010113          	addi	sp,sp,-32
    80002088:	00113c23          	sd	ra,24(sp)
    8000208c:	00813823          	sd	s0,16(sp)
    80002090:	00913423          	sd	s1,8(sp)
    80002094:	01213023          	sd	s2,0(sp)
    80002098:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    8000209c:	00000913          	li	s2,0
    800020a0:	0380006f          	j	800020d8 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    800020a4:	fffff097          	auipc	ra,0xfffff
    800020a8:	2d4080e7          	jalr	724(ra) # 80001378 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800020ac:	00148493          	addi	s1,s1,1
    800020b0:	000027b7          	lui	a5,0x2
    800020b4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800020b8:	0097ee63          	bltu	a5,s1,800020d4 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800020bc:	00000713          	li	a4,0
    800020c0:	000077b7          	lui	a5,0x7
    800020c4:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800020c8:	fce7eee3          	bltu	a5,a4,800020a4 <_ZN7WorkerB11workerBodyBEPv+0x20>
    800020cc:	00170713          	addi	a4,a4,1
    800020d0:	ff1ff06f          	j	800020c0 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    800020d4:	00190913          	addi	s2,s2,1
    800020d8:	00f00793          	li	a5,15
    800020dc:	0527e063          	bltu	a5,s2,8000211c <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    800020e0:	00004517          	auipc	a0,0x4
    800020e4:	fa850513          	addi	a0,a0,-88 # 80006088 <CONSOLE_STATUS+0x78>
    800020e8:	00001097          	auipc	ra,0x1
    800020ec:	dd0080e7          	jalr	-560(ra) # 80002eb8 <_Z11printStringPKc>
    800020f0:	00000613          	li	a2,0
    800020f4:	00a00593          	li	a1,10
    800020f8:	0009051b          	sext.w	a0,s2
    800020fc:	00001097          	auipc	ra,0x1
    80002100:	f6c080e7          	jalr	-148(ra) # 80003068 <_Z8printIntiii>
    80002104:	00004517          	auipc	a0,0x4
    80002108:	31450513          	addi	a0,a0,788 # 80006418 <CONSOLE_STATUS+0x408>
    8000210c:	00001097          	auipc	ra,0x1
    80002110:	dac080e7          	jalr	-596(ra) # 80002eb8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80002114:	00000493          	li	s1,0
    80002118:	f99ff06f          	j	800020b0 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    8000211c:	00004517          	auipc	a0,0x4
    80002120:	f7450513          	addi	a0,a0,-140 # 80006090 <CONSOLE_STATUS+0x80>
    80002124:	00001097          	auipc	ra,0x1
    80002128:	d94080e7          	jalr	-620(ra) # 80002eb8 <_Z11printStringPKc>
    finishedB = true;
    8000212c:	00100793          	li	a5,1
    80002130:	00005717          	auipc	a4,0x5
    80002134:	2af700a3          	sb	a5,673(a4) # 800073d1 <_ZL9finishedB>
    thread_dispatch();
    80002138:	fffff097          	auipc	ra,0xfffff
    8000213c:	240080e7          	jalr	576(ra) # 80001378 <_Z15thread_dispatchv>
}
    80002140:	01813083          	ld	ra,24(sp)
    80002144:	01013403          	ld	s0,16(sp)
    80002148:	00813483          	ld	s1,8(sp)
    8000214c:	00013903          	ld	s2,0(sp)
    80002150:	02010113          	addi	sp,sp,32
    80002154:	00008067          	ret

0000000080002158 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80002158:	fe010113          	addi	sp,sp,-32
    8000215c:	00113c23          	sd	ra,24(sp)
    80002160:	00813823          	sd	s0,16(sp)
    80002164:	00913423          	sd	s1,8(sp)
    80002168:	01213023          	sd	s2,0(sp)
    8000216c:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80002170:	00000493          	li	s1,0
    80002174:	0400006f          	j	800021b4 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80002178:	00004517          	auipc	a0,0x4
    8000217c:	f2850513          	addi	a0,a0,-216 # 800060a0 <CONSOLE_STATUS+0x90>
    80002180:	00001097          	auipc	ra,0x1
    80002184:	d38080e7          	jalr	-712(ra) # 80002eb8 <_Z11printStringPKc>
    80002188:	00000613          	li	a2,0
    8000218c:	00a00593          	li	a1,10
    80002190:	00048513          	mv	a0,s1
    80002194:	00001097          	auipc	ra,0x1
    80002198:	ed4080e7          	jalr	-300(ra) # 80003068 <_Z8printIntiii>
    8000219c:	00004517          	auipc	a0,0x4
    800021a0:	27c50513          	addi	a0,a0,636 # 80006418 <CONSOLE_STATUS+0x408>
    800021a4:	00001097          	auipc	ra,0x1
    800021a8:	d14080e7          	jalr	-748(ra) # 80002eb8 <_Z11printStringPKc>
    for (; i < 3; i++) {
    800021ac:	0014849b          	addiw	s1,s1,1
    800021b0:	0ff4f493          	andi	s1,s1,255
    800021b4:	00200793          	li	a5,2
    800021b8:	fc97f0e3          	bgeu	a5,s1,80002178 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    800021bc:	00004517          	auipc	a0,0x4
    800021c0:	eec50513          	addi	a0,a0,-276 # 800060a8 <CONSOLE_STATUS+0x98>
    800021c4:	00001097          	auipc	ra,0x1
    800021c8:	cf4080e7          	jalr	-780(ra) # 80002eb8 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800021cc:	00700313          	li	t1,7
    thread_dispatch();
    800021d0:	fffff097          	auipc	ra,0xfffff
    800021d4:	1a8080e7          	jalr	424(ra) # 80001378 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800021d8:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    800021dc:	00004517          	auipc	a0,0x4
    800021e0:	edc50513          	addi	a0,a0,-292 # 800060b8 <CONSOLE_STATUS+0xa8>
    800021e4:	00001097          	auipc	ra,0x1
    800021e8:	cd4080e7          	jalr	-812(ra) # 80002eb8 <_Z11printStringPKc>
    800021ec:	00000613          	li	a2,0
    800021f0:	00a00593          	li	a1,10
    800021f4:	0009051b          	sext.w	a0,s2
    800021f8:	00001097          	auipc	ra,0x1
    800021fc:	e70080e7          	jalr	-400(ra) # 80003068 <_Z8printIntiii>
    80002200:	00004517          	auipc	a0,0x4
    80002204:	21850513          	addi	a0,a0,536 # 80006418 <CONSOLE_STATUS+0x408>
    80002208:	00001097          	auipc	ra,0x1
    8000220c:	cb0080e7          	jalr	-848(ra) # 80002eb8 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80002210:	00c00513          	li	a0,12
    80002214:	00000097          	auipc	ra,0x0
    80002218:	d30080e7          	jalr	-720(ra) # 80001f44 <_ZL9fibonaccim>
    8000221c:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80002220:	00004517          	auipc	a0,0x4
    80002224:	ea050513          	addi	a0,a0,-352 # 800060c0 <CONSOLE_STATUS+0xb0>
    80002228:	00001097          	auipc	ra,0x1
    8000222c:	c90080e7          	jalr	-880(ra) # 80002eb8 <_Z11printStringPKc>
    80002230:	00000613          	li	a2,0
    80002234:	00a00593          	li	a1,10
    80002238:	0009051b          	sext.w	a0,s2
    8000223c:	00001097          	auipc	ra,0x1
    80002240:	e2c080e7          	jalr	-468(ra) # 80003068 <_Z8printIntiii>
    80002244:	00004517          	auipc	a0,0x4
    80002248:	1d450513          	addi	a0,a0,468 # 80006418 <CONSOLE_STATUS+0x408>
    8000224c:	00001097          	auipc	ra,0x1
    80002250:	c6c080e7          	jalr	-916(ra) # 80002eb8 <_Z11printStringPKc>
    80002254:	0400006f          	j	80002294 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80002258:	00004517          	auipc	a0,0x4
    8000225c:	e4850513          	addi	a0,a0,-440 # 800060a0 <CONSOLE_STATUS+0x90>
    80002260:	00001097          	auipc	ra,0x1
    80002264:	c58080e7          	jalr	-936(ra) # 80002eb8 <_Z11printStringPKc>
    80002268:	00000613          	li	a2,0
    8000226c:	00a00593          	li	a1,10
    80002270:	00048513          	mv	a0,s1
    80002274:	00001097          	auipc	ra,0x1
    80002278:	df4080e7          	jalr	-524(ra) # 80003068 <_Z8printIntiii>
    8000227c:	00004517          	auipc	a0,0x4
    80002280:	19c50513          	addi	a0,a0,412 # 80006418 <CONSOLE_STATUS+0x408>
    80002284:	00001097          	auipc	ra,0x1
    80002288:	c34080e7          	jalr	-972(ra) # 80002eb8 <_Z11printStringPKc>
    for (; i < 6; i++) {
    8000228c:	0014849b          	addiw	s1,s1,1
    80002290:	0ff4f493          	andi	s1,s1,255
    80002294:	00500793          	li	a5,5
    80002298:	fc97f0e3          	bgeu	a5,s1,80002258 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    8000229c:	00004517          	auipc	a0,0x4
    800022a0:	ddc50513          	addi	a0,a0,-548 # 80006078 <CONSOLE_STATUS+0x68>
    800022a4:	00001097          	auipc	ra,0x1
    800022a8:	c14080e7          	jalr	-1004(ra) # 80002eb8 <_Z11printStringPKc>
    finishedC = true;
    800022ac:	00100793          	li	a5,1
    800022b0:	00005717          	auipc	a4,0x5
    800022b4:	12f70123          	sb	a5,290(a4) # 800073d2 <_ZL9finishedC>
    thread_dispatch();
    800022b8:	fffff097          	auipc	ra,0xfffff
    800022bc:	0c0080e7          	jalr	192(ra) # 80001378 <_Z15thread_dispatchv>
}
    800022c0:	01813083          	ld	ra,24(sp)
    800022c4:	01013403          	ld	s0,16(sp)
    800022c8:	00813483          	ld	s1,8(sp)
    800022cc:	00013903          	ld	s2,0(sp)
    800022d0:	02010113          	addi	sp,sp,32
    800022d4:	00008067          	ret

00000000800022d8 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    800022d8:	fe010113          	addi	sp,sp,-32
    800022dc:	00113c23          	sd	ra,24(sp)
    800022e0:	00813823          	sd	s0,16(sp)
    800022e4:	00913423          	sd	s1,8(sp)
    800022e8:	01213023          	sd	s2,0(sp)
    800022ec:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800022f0:	00a00493          	li	s1,10
    800022f4:	0400006f          	j	80002334 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800022f8:	00004517          	auipc	a0,0x4
    800022fc:	dd850513          	addi	a0,a0,-552 # 800060d0 <CONSOLE_STATUS+0xc0>
    80002300:	00001097          	auipc	ra,0x1
    80002304:	bb8080e7          	jalr	-1096(ra) # 80002eb8 <_Z11printStringPKc>
    80002308:	00000613          	li	a2,0
    8000230c:	00a00593          	li	a1,10
    80002310:	00048513          	mv	a0,s1
    80002314:	00001097          	auipc	ra,0x1
    80002318:	d54080e7          	jalr	-684(ra) # 80003068 <_Z8printIntiii>
    8000231c:	00004517          	auipc	a0,0x4
    80002320:	0fc50513          	addi	a0,a0,252 # 80006418 <CONSOLE_STATUS+0x408>
    80002324:	00001097          	auipc	ra,0x1
    80002328:	b94080e7          	jalr	-1132(ra) # 80002eb8 <_Z11printStringPKc>
    for (; i < 13; i++) {
    8000232c:	0014849b          	addiw	s1,s1,1
    80002330:	0ff4f493          	andi	s1,s1,255
    80002334:	00c00793          	li	a5,12
    80002338:	fc97f0e3          	bgeu	a5,s1,800022f8 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    8000233c:	00004517          	auipc	a0,0x4
    80002340:	d9c50513          	addi	a0,a0,-612 # 800060d8 <CONSOLE_STATUS+0xc8>
    80002344:	00001097          	auipc	ra,0x1
    80002348:	b74080e7          	jalr	-1164(ra) # 80002eb8 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    8000234c:	00500313          	li	t1,5
    thread_dispatch();
    80002350:	fffff097          	auipc	ra,0xfffff
    80002354:	028080e7          	jalr	40(ra) # 80001378 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80002358:	01000513          	li	a0,16
    8000235c:	00000097          	auipc	ra,0x0
    80002360:	be8080e7          	jalr	-1048(ra) # 80001f44 <_ZL9fibonaccim>
    80002364:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80002368:	00004517          	auipc	a0,0x4
    8000236c:	d8050513          	addi	a0,a0,-640 # 800060e8 <CONSOLE_STATUS+0xd8>
    80002370:	00001097          	auipc	ra,0x1
    80002374:	b48080e7          	jalr	-1208(ra) # 80002eb8 <_Z11printStringPKc>
    80002378:	00000613          	li	a2,0
    8000237c:	00a00593          	li	a1,10
    80002380:	0009051b          	sext.w	a0,s2
    80002384:	00001097          	auipc	ra,0x1
    80002388:	ce4080e7          	jalr	-796(ra) # 80003068 <_Z8printIntiii>
    8000238c:	00004517          	auipc	a0,0x4
    80002390:	08c50513          	addi	a0,a0,140 # 80006418 <CONSOLE_STATUS+0x408>
    80002394:	00001097          	auipc	ra,0x1
    80002398:	b24080e7          	jalr	-1244(ra) # 80002eb8 <_Z11printStringPKc>
    8000239c:	0400006f          	j	800023dc <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800023a0:	00004517          	auipc	a0,0x4
    800023a4:	d3050513          	addi	a0,a0,-720 # 800060d0 <CONSOLE_STATUS+0xc0>
    800023a8:	00001097          	auipc	ra,0x1
    800023ac:	b10080e7          	jalr	-1264(ra) # 80002eb8 <_Z11printStringPKc>
    800023b0:	00000613          	li	a2,0
    800023b4:	00a00593          	li	a1,10
    800023b8:	00048513          	mv	a0,s1
    800023bc:	00001097          	auipc	ra,0x1
    800023c0:	cac080e7          	jalr	-852(ra) # 80003068 <_Z8printIntiii>
    800023c4:	00004517          	auipc	a0,0x4
    800023c8:	05450513          	addi	a0,a0,84 # 80006418 <CONSOLE_STATUS+0x408>
    800023cc:	00001097          	auipc	ra,0x1
    800023d0:	aec080e7          	jalr	-1300(ra) # 80002eb8 <_Z11printStringPKc>
    for (; i < 16; i++) {
    800023d4:	0014849b          	addiw	s1,s1,1
    800023d8:	0ff4f493          	andi	s1,s1,255
    800023dc:	00f00793          	li	a5,15
    800023e0:	fc97f0e3          	bgeu	a5,s1,800023a0 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    800023e4:	00004517          	auipc	a0,0x4
    800023e8:	d1450513          	addi	a0,a0,-748 # 800060f8 <CONSOLE_STATUS+0xe8>
    800023ec:	00001097          	auipc	ra,0x1
    800023f0:	acc080e7          	jalr	-1332(ra) # 80002eb8 <_Z11printStringPKc>
    finishedD = true;
    800023f4:	00100793          	li	a5,1
    800023f8:	00005717          	auipc	a4,0x5
    800023fc:	fcf70da3          	sb	a5,-37(a4) # 800073d3 <_ZL9finishedD>
    thread_dispatch();
    80002400:	fffff097          	auipc	ra,0xfffff
    80002404:	f78080e7          	jalr	-136(ra) # 80001378 <_Z15thread_dispatchv>
}
    80002408:	01813083          	ld	ra,24(sp)
    8000240c:	01013403          	ld	s0,16(sp)
    80002410:	00813483          	ld	s1,8(sp)
    80002414:	00013903          	ld	s2,0(sp)
    80002418:	02010113          	addi	sp,sp,32
    8000241c:	00008067          	ret

0000000080002420 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80002420:	fc010113          	addi	sp,sp,-64
    80002424:	02113c23          	sd	ra,56(sp)
    80002428:	02813823          	sd	s0,48(sp)
    8000242c:	02913423          	sd	s1,40(sp)
    80002430:	03213023          	sd	s2,32(sp)
    80002434:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80002438:	02000513          	li	a0,32
    8000243c:	fffff097          	auipc	ra,0xfffff
    80002440:	48c080e7          	jalr	1164(ra) # 800018c8 <_Znwm>
    80002444:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    80002448:	fffff097          	auipc	ra,0xfffff
    8000244c:	5f0080e7          	jalr	1520(ra) # 80001a38 <_ZN6ThreadC1Ev>
    80002450:	00005797          	auipc	a5,0x5
    80002454:	e2078793          	addi	a5,a5,-480 # 80007270 <_ZTV7WorkerA+0x10>
    80002458:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    8000245c:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80002460:	00004517          	auipc	a0,0x4
    80002464:	ca850513          	addi	a0,a0,-856 # 80006108 <CONSOLE_STATUS+0xf8>
    80002468:	00001097          	auipc	ra,0x1
    8000246c:	a50080e7          	jalr	-1456(ra) # 80002eb8 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80002470:	02000513          	li	a0,32
    80002474:	fffff097          	auipc	ra,0xfffff
    80002478:	454080e7          	jalr	1108(ra) # 800018c8 <_Znwm>
    8000247c:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    80002480:	fffff097          	auipc	ra,0xfffff
    80002484:	5b8080e7          	jalr	1464(ra) # 80001a38 <_ZN6ThreadC1Ev>
    80002488:	00005797          	auipc	a5,0x5
    8000248c:	e1078793          	addi	a5,a5,-496 # 80007298 <_ZTV7WorkerB+0x10>
    80002490:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    80002494:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    80002498:	00004517          	auipc	a0,0x4
    8000249c:	c8850513          	addi	a0,a0,-888 # 80006120 <CONSOLE_STATUS+0x110>
    800024a0:	00001097          	auipc	ra,0x1
    800024a4:	a18080e7          	jalr	-1512(ra) # 80002eb8 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    800024a8:	02000513          	li	a0,32
    800024ac:	fffff097          	auipc	ra,0xfffff
    800024b0:	41c080e7          	jalr	1052(ra) # 800018c8 <_Znwm>
    800024b4:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    800024b8:	fffff097          	auipc	ra,0xfffff
    800024bc:	580080e7          	jalr	1408(ra) # 80001a38 <_ZN6ThreadC1Ev>
    800024c0:	00005797          	auipc	a5,0x5
    800024c4:	e0078793          	addi	a5,a5,-512 # 800072c0 <_ZTV7WorkerC+0x10>
    800024c8:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    800024cc:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    800024d0:	00004517          	auipc	a0,0x4
    800024d4:	c6850513          	addi	a0,a0,-920 # 80006138 <CONSOLE_STATUS+0x128>
    800024d8:	00001097          	auipc	ra,0x1
    800024dc:	9e0080e7          	jalr	-1568(ra) # 80002eb8 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    800024e0:	02000513          	li	a0,32
    800024e4:	fffff097          	auipc	ra,0xfffff
    800024e8:	3e4080e7          	jalr	996(ra) # 800018c8 <_Znwm>
    800024ec:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    800024f0:	fffff097          	auipc	ra,0xfffff
    800024f4:	548080e7          	jalr	1352(ra) # 80001a38 <_ZN6ThreadC1Ev>
    800024f8:	00005797          	auipc	a5,0x5
    800024fc:	df078793          	addi	a5,a5,-528 # 800072e8 <_ZTV7WorkerD+0x10>
    80002500:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    80002504:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80002508:	00004517          	auipc	a0,0x4
    8000250c:	c4850513          	addi	a0,a0,-952 # 80006150 <CONSOLE_STATUS+0x140>
    80002510:	00001097          	auipc	ra,0x1
    80002514:	9a8080e7          	jalr	-1624(ra) # 80002eb8 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80002518:	00000493          	li	s1,0
    8000251c:	00300793          	li	a5,3
    80002520:	0297c663          	blt	a5,s1,8000254c <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    80002524:	00349793          	slli	a5,s1,0x3
    80002528:	fe040713          	addi	a4,s0,-32
    8000252c:	00f707b3          	add	a5,a4,a5
    80002530:	fe07b503          	ld	a0,-32(a5)
    80002534:	fffff097          	auipc	ra,0xfffff
    80002538:	580080e7          	jalr	1408(ra) # 80001ab4 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    8000253c:	0014849b          	addiw	s1,s1,1
    80002540:	fddff06f          	j	8000251c <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80002544:	fffff097          	auipc	ra,0xfffff
    80002548:	5cc080e7          	jalr	1484(ra) # 80001b10 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    8000254c:	00005797          	auipc	a5,0x5
    80002550:	e847c783          	lbu	a5,-380(a5) # 800073d0 <_ZL9finishedA>
    80002554:	fe0788e3          	beqz	a5,80002544 <_Z20Threads_CPP_API_testv+0x124>
    80002558:	00005797          	auipc	a5,0x5
    8000255c:	e797c783          	lbu	a5,-391(a5) # 800073d1 <_ZL9finishedB>
    80002560:	fe0782e3          	beqz	a5,80002544 <_Z20Threads_CPP_API_testv+0x124>
    80002564:	00005797          	auipc	a5,0x5
    80002568:	e6e7c783          	lbu	a5,-402(a5) # 800073d2 <_ZL9finishedC>
    8000256c:	fc078ce3          	beqz	a5,80002544 <_Z20Threads_CPP_API_testv+0x124>
    80002570:	00005797          	auipc	a5,0x5
    80002574:	e637c783          	lbu	a5,-413(a5) # 800073d3 <_ZL9finishedD>
    80002578:	fc0786e3          	beqz	a5,80002544 <_Z20Threads_CPP_API_testv+0x124>
    8000257c:	fc040493          	addi	s1,s0,-64
    80002580:	0080006f          	j	80002588 <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    80002584:	00848493          	addi	s1,s1,8
    80002588:	fe040793          	addi	a5,s0,-32
    8000258c:	08f48663          	beq	s1,a5,80002618 <_Z20Threads_CPP_API_testv+0x1f8>
    80002590:	0004b503          	ld	a0,0(s1)
    80002594:	fe0508e3          	beqz	a0,80002584 <_Z20Threads_CPP_API_testv+0x164>
    80002598:	00053783          	ld	a5,0(a0)
    8000259c:	0087b783          	ld	a5,8(a5)
    800025a0:	000780e7          	jalr	a5
    800025a4:	fe1ff06f          	j	80002584 <_Z20Threads_CPP_API_testv+0x164>
    800025a8:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    800025ac:	00048513          	mv	a0,s1
    800025b0:	fffff097          	auipc	ra,0xfffff
    800025b4:	368080e7          	jalr	872(ra) # 80001918 <_ZdlPv>
    800025b8:	00090513          	mv	a0,s2
    800025bc:	00006097          	auipc	ra,0x6
    800025c0:	efc080e7          	jalr	-260(ra) # 800084b8 <_Unwind_Resume>
    800025c4:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    800025c8:	00048513          	mv	a0,s1
    800025cc:	fffff097          	auipc	ra,0xfffff
    800025d0:	34c080e7          	jalr	844(ra) # 80001918 <_ZdlPv>
    800025d4:	00090513          	mv	a0,s2
    800025d8:	00006097          	auipc	ra,0x6
    800025dc:	ee0080e7          	jalr	-288(ra) # 800084b8 <_Unwind_Resume>
    800025e0:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    800025e4:	00048513          	mv	a0,s1
    800025e8:	fffff097          	auipc	ra,0xfffff
    800025ec:	330080e7          	jalr	816(ra) # 80001918 <_ZdlPv>
    800025f0:	00090513          	mv	a0,s2
    800025f4:	00006097          	auipc	ra,0x6
    800025f8:	ec4080e7          	jalr	-316(ra) # 800084b8 <_Unwind_Resume>
    800025fc:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80002600:	00048513          	mv	a0,s1
    80002604:	fffff097          	auipc	ra,0xfffff
    80002608:	314080e7          	jalr	788(ra) # 80001918 <_ZdlPv>
    8000260c:	00090513          	mv	a0,s2
    80002610:	00006097          	auipc	ra,0x6
    80002614:	ea8080e7          	jalr	-344(ra) # 800084b8 <_Unwind_Resume>
}
    80002618:	03813083          	ld	ra,56(sp)
    8000261c:	03013403          	ld	s0,48(sp)
    80002620:	02813483          	ld	s1,40(sp)
    80002624:	02013903          	ld	s2,32(sp)
    80002628:	04010113          	addi	sp,sp,64
    8000262c:	00008067          	ret

0000000080002630 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80002630:	ff010113          	addi	sp,sp,-16
    80002634:	00113423          	sd	ra,8(sp)
    80002638:	00813023          	sd	s0,0(sp)
    8000263c:	01010413          	addi	s0,sp,16
    80002640:	00005797          	auipc	a5,0x5
    80002644:	c3078793          	addi	a5,a5,-976 # 80007270 <_ZTV7WorkerA+0x10>
    80002648:	00f53023          	sd	a5,0(a0)
    8000264c:	fffff097          	auipc	ra,0xfffff
    80002650:	31c080e7          	jalr	796(ra) # 80001968 <_ZN6ThreadD1Ev>
    80002654:	00813083          	ld	ra,8(sp)
    80002658:	00013403          	ld	s0,0(sp)
    8000265c:	01010113          	addi	sp,sp,16
    80002660:	00008067          	ret

0000000080002664 <_ZN7WorkerAD0Ev>:
    80002664:	fe010113          	addi	sp,sp,-32
    80002668:	00113c23          	sd	ra,24(sp)
    8000266c:	00813823          	sd	s0,16(sp)
    80002670:	00913423          	sd	s1,8(sp)
    80002674:	02010413          	addi	s0,sp,32
    80002678:	00050493          	mv	s1,a0
    8000267c:	00005797          	auipc	a5,0x5
    80002680:	bf478793          	addi	a5,a5,-1036 # 80007270 <_ZTV7WorkerA+0x10>
    80002684:	00f53023          	sd	a5,0(a0)
    80002688:	fffff097          	auipc	ra,0xfffff
    8000268c:	2e0080e7          	jalr	736(ra) # 80001968 <_ZN6ThreadD1Ev>
    80002690:	00048513          	mv	a0,s1
    80002694:	fffff097          	auipc	ra,0xfffff
    80002698:	284080e7          	jalr	644(ra) # 80001918 <_ZdlPv>
    8000269c:	01813083          	ld	ra,24(sp)
    800026a0:	01013403          	ld	s0,16(sp)
    800026a4:	00813483          	ld	s1,8(sp)
    800026a8:	02010113          	addi	sp,sp,32
    800026ac:	00008067          	ret

00000000800026b0 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    800026b0:	ff010113          	addi	sp,sp,-16
    800026b4:	00113423          	sd	ra,8(sp)
    800026b8:	00813023          	sd	s0,0(sp)
    800026bc:	01010413          	addi	s0,sp,16
    800026c0:	00005797          	auipc	a5,0x5
    800026c4:	bd878793          	addi	a5,a5,-1064 # 80007298 <_ZTV7WorkerB+0x10>
    800026c8:	00f53023          	sd	a5,0(a0)
    800026cc:	fffff097          	auipc	ra,0xfffff
    800026d0:	29c080e7          	jalr	668(ra) # 80001968 <_ZN6ThreadD1Ev>
    800026d4:	00813083          	ld	ra,8(sp)
    800026d8:	00013403          	ld	s0,0(sp)
    800026dc:	01010113          	addi	sp,sp,16
    800026e0:	00008067          	ret

00000000800026e4 <_ZN7WorkerBD0Ev>:
    800026e4:	fe010113          	addi	sp,sp,-32
    800026e8:	00113c23          	sd	ra,24(sp)
    800026ec:	00813823          	sd	s0,16(sp)
    800026f0:	00913423          	sd	s1,8(sp)
    800026f4:	02010413          	addi	s0,sp,32
    800026f8:	00050493          	mv	s1,a0
    800026fc:	00005797          	auipc	a5,0x5
    80002700:	b9c78793          	addi	a5,a5,-1124 # 80007298 <_ZTV7WorkerB+0x10>
    80002704:	00f53023          	sd	a5,0(a0)
    80002708:	fffff097          	auipc	ra,0xfffff
    8000270c:	260080e7          	jalr	608(ra) # 80001968 <_ZN6ThreadD1Ev>
    80002710:	00048513          	mv	a0,s1
    80002714:	fffff097          	auipc	ra,0xfffff
    80002718:	204080e7          	jalr	516(ra) # 80001918 <_ZdlPv>
    8000271c:	01813083          	ld	ra,24(sp)
    80002720:	01013403          	ld	s0,16(sp)
    80002724:	00813483          	ld	s1,8(sp)
    80002728:	02010113          	addi	sp,sp,32
    8000272c:	00008067          	ret

0000000080002730 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80002730:	ff010113          	addi	sp,sp,-16
    80002734:	00113423          	sd	ra,8(sp)
    80002738:	00813023          	sd	s0,0(sp)
    8000273c:	01010413          	addi	s0,sp,16
    80002740:	00005797          	auipc	a5,0x5
    80002744:	b8078793          	addi	a5,a5,-1152 # 800072c0 <_ZTV7WorkerC+0x10>
    80002748:	00f53023          	sd	a5,0(a0)
    8000274c:	fffff097          	auipc	ra,0xfffff
    80002750:	21c080e7          	jalr	540(ra) # 80001968 <_ZN6ThreadD1Ev>
    80002754:	00813083          	ld	ra,8(sp)
    80002758:	00013403          	ld	s0,0(sp)
    8000275c:	01010113          	addi	sp,sp,16
    80002760:	00008067          	ret

0000000080002764 <_ZN7WorkerCD0Ev>:
    80002764:	fe010113          	addi	sp,sp,-32
    80002768:	00113c23          	sd	ra,24(sp)
    8000276c:	00813823          	sd	s0,16(sp)
    80002770:	00913423          	sd	s1,8(sp)
    80002774:	02010413          	addi	s0,sp,32
    80002778:	00050493          	mv	s1,a0
    8000277c:	00005797          	auipc	a5,0x5
    80002780:	b4478793          	addi	a5,a5,-1212 # 800072c0 <_ZTV7WorkerC+0x10>
    80002784:	00f53023          	sd	a5,0(a0)
    80002788:	fffff097          	auipc	ra,0xfffff
    8000278c:	1e0080e7          	jalr	480(ra) # 80001968 <_ZN6ThreadD1Ev>
    80002790:	00048513          	mv	a0,s1
    80002794:	fffff097          	auipc	ra,0xfffff
    80002798:	184080e7          	jalr	388(ra) # 80001918 <_ZdlPv>
    8000279c:	01813083          	ld	ra,24(sp)
    800027a0:	01013403          	ld	s0,16(sp)
    800027a4:	00813483          	ld	s1,8(sp)
    800027a8:	02010113          	addi	sp,sp,32
    800027ac:	00008067          	ret

00000000800027b0 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    800027b0:	ff010113          	addi	sp,sp,-16
    800027b4:	00113423          	sd	ra,8(sp)
    800027b8:	00813023          	sd	s0,0(sp)
    800027bc:	01010413          	addi	s0,sp,16
    800027c0:	00005797          	auipc	a5,0x5
    800027c4:	b2878793          	addi	a5,a5,-1240 # 800072e8 <_ZTV7WorkerD+0x10>
    800027c8:	00f53023          	sd	a5,0(a0)
    800027cc:	fffff097          	auipc	ra,0xfffff
    800027d0:	19c080e7          	jalr	412(ra) # 80001968 <_ZN6ThreadD1Ev>
    800027d4:	00813083          	ld	ra,8(sp)
    800027d8:	00013403          	ld	s0,0(sp)
    800027dc:	01010113          	addi	sp,sp,16
    800027e0:	00008067          	ret

00000000800027e4 <_ZN7WorkerDD0Ev>:
    800027e4:	fe010113          	addi	sp,sp,-32
    800027e8:	00113c23          	sd	ra,24(sp)
    800027ec:	00813823          	sd	s0,16(sp)
    800027f0:	00913423          	sd	s1,8(sp)
    800027f4:	02010413          	addi	s0,sp,32
    800027f8:	00050493          	mv	s1,a0
    800027fc:	00005797          	auipc	a5,0x5
    80002800:	aec78793          	addi	a5,a5,-1300 # 800072e8 <_ZTV7WorkerD+0x10>
    80002804:	00f53023          	sd	a5,0(a0)
    80002808:	fffff097          	auipc	ra,0xfffff
    8000280c:	160080e7          	jalr	352(ra) # 80001968 <_ZN6ThreadD1Ev>
    80002810:	00048513          	mv	a0,s1
    80002814:	fffff097          	auipc	ra,0xfffff
    80002818:	104080e7          	jalr	260(ra) # 80001918 <_ZdlPv>
    8000281c:	01813083          	ld	ra,24(sp)
    80002820:	01013403          	ld	s0,16(sp)
    80002824:	00813483          	ld	s1,8(sp)
    80002828:	02010113          	addi	sp,sp,32
    8000282c:	00008067          	ret

0000000080002830 <_ZN7WorkerA3runEv>:
    void run() override {
    80002830:	ff010113          	addi	sp,sp,-16
    80002834:	00113423          	sd	ra,8(sp)
    80002838:	00813023          	sd	s0,0(sp)
    8000283c:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80002840:	00000593          	li	a1,0
    80002844:	fffff097          	auipc	ra,0xfffff
    80002848:	774080e7          	jalr	1908(ra) # 80001fb8 <_ZN7WorkerA11workerBodyAEPv>
    }
    8000284c:	00813083          	ld	ra,8(sp)
    80002850:	00013403          	ld	s0,0(sp)
    80002854:	01010113          	addi	sp,sp,16
    80002858:	00008067          	ret

000000008000285c <_ZN7WorkerB3runEv>:
    void run() override {
    8000285c:	ff010113          	addi	sp,sp,-16
    80002860:	00113423          	sd	ra,8(sp)
    80002864:	00813023          	sd	s0,0(sp)
    80002868:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    8000286c:	00000593          	li	a1,0
    80002870:	00000097          	auipc	ra,0x0
    80002874:	814080e7          	jalr	-2028(ra) # 80002084 <_ZN7WorkerB11workerBodyBEPv>
    }
    80002878:	00813083          	ld	ra,8(sp)
    8000287c:	00013403          	ld	s0,0(sp)
    80002880:	01010113          	addi	sp,sp,16
    80002884:	00008067          	ret

0000000080002888 <_ZN7WorkerC3runEv>:
    void run() override {
    80002888:	ff010113          	addi	sp,sp,-16
    8000288c:	00113423          	sd	ra,8(sp)
    80002890:	00813023          	sd	s0,0(sp)
    80002894:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    80002898:	00000593          	li	a1,0
    8000289c:	00000097          	auipc	ra,0x0
    800028a0:	8bc080e7          	jalr	-1860(ra) # 80002158 <_ZN7WorkerC11workerBodyCEPv>
    }
    800028a4:	00813083          	ld	ra,8(sp)
    800028a8:	00013403          	ld	s0,0(sp)
    800028ac:	01010113          	addi	sp,sp,16
    800028b0:	00008067          	ret

00000000800028b4 <_ZN7WorkerD3runEv>:
    void run() override {
    800028b4:	ff010113          	addi	sp,sp,-16
    800028b8:	00113423          	sd	ra,8(sp)
    800028bc:	00813023          	sd	s0,0(sp)
    800028c0:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    800028c4:	00000593          	li	a1,0
    800028c8:	00000097          	auipc	ra,0x0
    800028cc:	a10080e7          	jalr	-1520(ra) # 800022d8 <_ZN7WorkerD11workerBodyDEPv>
    }
    800028d0:	00813083          	ld	ra,8(sp)
    800028d4:	00013403          	ld	s0,0(sp)
    800028d8:	01010113          	addi	sp,sp,16
    800028dc:	00008067          	ret

00000000800028e0 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800028e0:	fe010113          	addi	sp,sp,-32
    800028e4:	00113c23          	sd	ra,24(sp)
    800028e8:	00813823          	sd	s0,16(sp)
    800028ec:	00913423          	sd	s1,8(sp)
    800028f0:	01213023          	sd	s2,0(sp)
    800028f4:	02010413          	addi	s0,sp,32
    800028f8:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800028fc:	00100793          	li	a5,1
    80002900:	02a7f863          	bgeu	a5,a0,80002930 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80002904:	00a00793          	li	a5,10
    80002908:	02f577b3          	remu	a5,a0,a5
    8000290c:	02078e63          	beqz	a5,80002948 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80002910:	fff48513          	addi	a0,s1,-1
    80002914:	00000097          	auipc	ra,0x0
    80002918:	fcc080e7          	jalr	-52(ra) # 800028e0 <_ZL9fibonaccim>
    8000291c:	00050913          	mv	s2,a0
    80002920:	ffe48513          	addi	a0,s1,-2
    80002924:	00000097          	auipc	ra,0x0
    80002928:	fbc080e7          	jalr	-68(ra) # 800028e0 <_ZL9fibonaccim>
    8000292c:	00a90533          	add	a0,s2,a0
}
    80002930:	01813083          	ld	ra,24(sp)
    80002934:	01013403          	ld	s0,16(sp)
    80002938:	00813483          	ld	s1,8(sp)
    8000293c:	00013903          	ld	s2,0(sp)
    80002940:	02010113          	addi	sp,sp,32
    80002944:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80002948:	fffff097          	auipc	ra,0xfffff
    8000294c:	a30080e7          	jalr	-1488(ra) # 80001378 <_Z15thread_dispatchv>
    80002950:	fc1ff06f          	j	80002910 <_ZL9fibonaccim+0x30>

0000000080002954 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80002954:	fe010113          	addi	sp,sp,-32
    80002958:	00113c23          	sd	ra,24(sp)
    8000295c:	00813823          	sd	s0,16(sp)
    80002960:	00913423          	sd	s1,8(sp)
    80002964:	01213023          	sd	s2,0(sp)
    80002968:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    8000296c:	00a00493          	li	s1,10
    80002970:	0400006f          	j	800029b0 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80002974:	00003517          	auipc	a0,0x3
    80002978:	75c50513          	addi	a0,a0,1884 # 800060d0 <CONSOLE_STATUS+0xc0>
    8000297c:	00000097          	auipc	ra,0x0
    80002980:	53c080e7          	jalr	1340(ra) # 80002eb8 <_Z11printStringPKc>
    80002984:	00000613          	li	a2,0
    80002988:	00a00593          	li	a1,10
    8000298c:	00048513          	mv	a0,s1
    80002990:	00000097          	auipc	ra,0x0
    80002994:	6d8080e7          	jalr	1752(ra) # 80003068 <_Z8printIntiii>
    80002998:	00004517          	auipc	a0,0x4
    8000299c:	a8050513          	addi	a0,a0,-1408 # 80006418 <CONSOLE_STATUS+0x408>
    800029a0:	00000097          	auipc	ra,0x0
    800029a4:	518080e7          	jalr	1304(ra) # 80002eb8 <_Z11printStringPKc>
    for (; i < 13; i++) {
    800029a8:	0014849b          	addiw	s1,s1,1
    800029ac:	0ff4f493          	andi	s1,s1,255
    800029b0:	00c00793          	li	a5,12
    800029b4:	fc97f0e3          	bgeu	a5,s1,80002974 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    800029b8:	00003517          	auipc	a0,0x3
    800029bc:	72050513          	addi	a0,a0,1824 # 800060d8 <CONSOLE_STATUS+0xc8>
    800029c0:	00000097          	auipc	ra,0x0
    800029c4:	4f8080e7          	jalr	1272(ra) # 80002eb8 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800029c8:	00500313          	li	t1,5
    thread_dispatch();
    800029cc:	fffff097          	auipc	ra,0xfffff
    800029d0:	9ac080e7          	jalr	-1620(ra) # 80001378 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    800029d4:	01000513          	li	a0,16
    800029d8:	00000097          	auipc	ra,0x0
    800029dc:	f08080e7          	jalr	-248(ra) # 800028e0 <_ZL9fibonaccim>
    800029e0:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800029e4:	00003517          	auipc	a0,0x3
    800029e8:	70450513          	addi	a0,a0,1796 # 800060e8 <CONSOLE_STATUS+0xd8>
    800029ec:	00000097          	auipc	ra,0x0
    800029f0:	4cc080e7          	jalr	1228(ra) # 80002eb8 <_Z11printStringPKc>
    800029f4:	00000613          	li	a2,0
    800029f8:	00a00593          	li	a1,10
    800029fc:	0009051b          	sext.w	a0,s2
    80002a00:	00000097          	auipc	ra,0x0
    80002a04:	668080e7          	jalr	1640(ra) # 80003068 <_Z8printIntiii>
    80002a08:	00004517          	auipc	a0,0x4
    80002a0c:	a1050513          	addi	a0,a0,-1520 # 80006418 <CONSOLE_STATUS+0x408>
    80002a10:	00000097          	auipc	ra,0x0
    80002a14:	4a8080e7          	jalr	1192(ra) # 80002eb8 <_Z11printStringPKc>
    80002a18:	0400006f          	j	80002a58 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80002a1c:	00003517          	auipc	a0,0x3
    80002a20:	6b450513          	addi	a0,a0,1716 # 800060d0 <CONSOLE_STATUS+0xc0>
    80002a24:	00000097          	auipc	ra,0x0
    80002a28:	494080e7          	jalr	1172(ra) # 80002eb8 <_Z11printStringPKc>
    80002a2c:	00000613          	li	a2,0
    80002a30:	00a00593          	li	a1,10
    80002a34:	00048513          	mv	a0,s1
    80002a38:	00000097          	auipc	ra,0x0
    80002a3c:	630080e7          	jalr	1584(ra) # 80003068 <_Z8printIntiii>
    80002a40:	00004517          	auipc	a0,0x4
    80002a44:	9d850513          	addi	a0,a0,-1576 # 80006418 <CONSOLE_STATUS+0x408>
    80002a48:	00000097          	auipc	ra,0x0
    80002a4c:	470080e7          	jalr	1136(ra) # 80002eb8 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80002a50:	0014849b          	addiw	s1,s1,1
    80002a54:	0ff4f493          	andi	s1,s1,255
    80002a58:	00f00793          	li	a5,15
    80002a5c:	fc97f0e3          	bgeu	a5,s1,80002a1c <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80002a60:	00003517          	auipc	a0,0x3
    80002a64:	69850513          	addi	a0,a0,1688 # 800060f8 <CONSOLE_STATUS+0xe8>
    80002a68:	00000097          	auipc	ra,0x0
    80002a6c:	450080e7          	jalr	1104(ra) # 80002eb8 <_Z11printStringPKc>
    finishedD = true;
    80002a70:	00100793          	li	a5,1
    80002a74:	00005717          	auipc	a4,0x5
    80002a78:	96f70023          	sb	a5,-1696(a4) # 800073d4 <_ZL9finishedD>
    thread_dispatch();
    80002a7c:	fffff097          	auipc	ra,0xfffff
    80002a80:	8fc080e7          	jalr	-1796(ra) # 80001378 <_Z15thread_dispatchv>
}
    80002a84:	01813083          	ld	ra,24(sp)
    80002a88:	01013403          	ld	s0,16(sp)
    80002a8c:	00813483          	ld	s1,8(sp)
    80002a90:	00013903          	ld	s2,0(sp)
    80002a94:	02010113          	addi	sp,sp,32
    80002a98:	00008067          	ret

0000000080002a9c <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80002a9c:	fe010113          	addi	sp,sp,-32
    80002aa0:	00113c23          	sd	ra,24(sp)
    80002aa4:	00813823          	sd	s0,16(sp)
    80002aa8:	00913423          	sd	s1,8(sp)
    80002aac:	01213023          	sd	s2,0(sp)
    80002ab0:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80002ab4:	00000493          	li	s1,0
    80002ab8:	0400006f          	j	80002af8 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80002abc:	00003517          	auipc	a0,0x3
    80002ac0:	5e450513          	addi	a0,a0,1508 # 800060a0 <CONSOLE_STATUS+0x90>
    80002ac4:	00000097          	auipc	ra,0x0
    80002ac8:	3f4080e7          	jalr	1012(ra) # 80002eb8 <_Z11printStringPKc>
    80002acc:	00000613          	li	a2,0
    80002ad0:	00a00593          	li	a1,10
    80002ad4:	00048513          	mv	a0,s1
    80002ad8:	00000097          	auipc	ra,0x0
    80002adc:	590080e7          	jalr	1424(ra) # 80003068 <_Z8printIntiii>
    80002ae0:	00004517          	auipc	a0,0x4
    80002ae4:	93850513          	addi	a0,a0,-1736 # 80006418 <CONSOLE_STATUS+0x408>
    80002ae8:	00000097          	auipc	ra,0x0
    80002aec:	3d0080e7          	jalr	976(ra) # 80002eb8 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80002af0:	0014849b          	addiw	s1,s1,1
    80002af4:	0ff4f493          	andi	s1,s1,255
    80002af8:	00200793          	li	a5,2
    80002afc:	fc97f0e3          	bgeu	a5,s1,80002abc <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80002b00:	00003517          	auipc	a0,0x3
    80002b04:	5a850513          	addi	a0,a0,1448 # 800060a8 <CONSOLE_STATUS+0x98>
    80002b08:	00000097          	auipc	ra,0x0
    80002b0c:	3b0080e7          	jalr	944(ra) # 80002eb8 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80002b10:	00700313          	li	t1,7
    thread_dispatch();
    80002b14:	fffff097          	auipc	ra,0xfffff
    80002b18:	864080e7          	jalr	-1948(ra) # 80001378 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80002b1c:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80002b20:	00003517          	auipc	a0,0x3
    80002b24:	59850513          	addi	a0,a0,1432 # 800060b8 <CONSOLE_STATUS+0xa8>
    80002b28:	00000097          	auipc	ra,0x0
    80002b2c:	390080e7          	jalr	912(ra) # 80002eb8 <_Z11printStringPKc>
    80002b30:	00000613          	li	a2,0
    80002b34:	00a00593          	li	a1,10
    80002b38:	0009051b          	sext.w	a0,s2
    80002b3c:	00000097          	auipc	ra,0x0
    80002b40:	52c080e7          	jalr	1324(ra) # 80003068 <_Z8printIntiii>
    80002b44:	00004517          	auipc	a0,0x4
    80002b48:	8d450513          	addi	a0,a0,-1836 # 80006418 <CONSOLE_STATUS+0x408>
    80002b4c:	00000097          	auipc	ra,0x0
    80002b50:	36c080e7          	jalr	876(ra) # 80002eb8 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80002b54:	00c00513          	li	a0,12
    80002b58:	00000097          	auipc	ra,0x0
    80002b5c:	d88080e7          	jalr	-632(ra) # 800028e0 <_ZL9fibonaccim>
    80002b60:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80002b64:	00003517          	auipc	a0,0x3
    80002b68:	55c50513          	addi	a0,a0,1372 # 800060c0 <CONSOLE_STATUS+0xb0>
    80002b6c:	00000097          	auipc	ra,0x0
    80002b70:	34c080e7          	jalr	844(ra) # 80002eb8 <_Z11printStringPKc>
    80002b74:	00000613          	li	a2,0
    80002b78:	00a00593          	li	a1,10
    80002b7c:	0009051b          	sext.w	a0,s2
    80002b80:	00000097          	auipc	ra,0x0
    80002b84:	4e8080e7          	jalr	1256(ra) # 80003068 <_Z8printIntiii>
    80002b88:	00004517          	auipc	a0,0x4
    80002b8c:	89050513          	addi	a0,a0,-1904 # 80006418 <CONSOLE_STATUS+0x408>
    80002b90:	00000097          	auipc	ra,0x0
    80002b94:	328080e7          	jalr	808(ra) # 80002eb8 <_Z11printStringPKc>
    80002b98:	0400006f          	j	80002bd8 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80002b9c:	00003517          	auipc	a0,0x3
    80002ba0:	50450513          	addi	a0,a0,1284 # 800060a0 <CONSOLE_STATUS+0x90>
    80002ba4:	00000097          	auipc	ra,0x0
    80002ba8:	314080e7          	jalr	788(ra) # 80002eb8 <_Z11printStringPKc>
    80002bac:	00000613          	li	a2,0
    80002bb0:	00a00593          	li	a1,10
    80002bb4:	00048513          	mv	a0,s1
    80002bb8:	00000097          	auipc	ra,0x0
    80002bbc:	4b0080e7          	jalr	1200(ra) # 80003068 <_Z8printIntiii>
    80002bc0:	00004517          	auipc	a0,0x4
    80002bc4:	85850513          	addi	a0,a0,-1960 # 80006418 <CONSOLE_STATUS+0x408>
    80002bc8:	00000097          	auipc	ra,0x0
    80002bcc:	2f0080e7          	jalr	752(ra) # 80002eb8 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80002bd0:	0014849b          	addiw	s1,s1,1
    80002bd4:	0ff4f493          	andi	s1,s1,255
    80002bd8:	00500793          	li	a5,5
    80002bdc:	fc97f0e3          	bgeu	a5,s1,80002b9c <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80002be0:	00003517          	auipc	a0,0x3
    80002be4:	49850513          	addi	a0,a0,1176 # 80006078 <CONSOLE_STATUS+0x68>
    80002be8:	00000097          	auipc	ra,0x0
    80002bec:	2d0080e7          	jalr	720(ra) # 80002eb8 <_Z11printStringPKc>
    finishedC = true;
    80002bf0:	00100793          	li	a5,1
    80002bf4:	00004717          	auipc	a4,0x4
    80002bf8:	7ef700a3          	sb	a5,2017(a4) # 800073d5 <_ZL9finishedC>
    thread_dispatch();
    80002bfc:	ffffe097          	auipc	ra,0xffffe
    80002c00:	77c080e7          	jalr	1916(ra) # 80001378 <_Z15thread_dispatchv>
}
    80002c04:	01813083          	ld	ra,24(sp)
    80002c08:	01013403          	ld	s0,16(sp)
    80002c0c:	00813483          	ld	s1,8(sp)
    80002c10:	00013903          	ld	s2,0(sp)
    80002c14:	02010113          	addi	sp,sp,32
    80002c18:	00008067          	ret

0000000080002c1c <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80002c1c:	fe010113          	addi	sp,sp,-32
    80002c20:	00113c23          	sd	ra,24(sp)
    80002c24:	00813823          	sd	s0,16(sp)
    80002c28:	00913423          	sd	s1,8(sp)
    80002c2c:	01213023          	sd	s2,0(sp)
    80002c30:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80002c34:	00000913          	li	s2,0
    80002c38:	0380006f          	j	80002c70 <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    80002c3c:	ffffe097          	auipc	ra,0xffffe
    80002c40:	73c080e7          	jalr	1852(ra) # 80001378 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80002c44:	00148493          	addi	s1,s1,1
    80002c48:	000027b7          	lui	a5,0x2
    80002c4c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80002c50:	0097ee63          	bltu	a5,s1,80002c6c <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80002c54:	00000713          	li	a4,0
    80002c58:	000077b7          	lui	a5,0x7
    80002c5c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80002c60:	fce7eee3          	bltu	a5,a4,80002c3c <_ZL11workerBodyBPv+0x20>
    80002c64:	00170713          	addi	a4,a4,1
    80002c68:	ff1ff06f          	j	80002c58 <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80002c6c:	00190913          	addi	s2,s2,1
    80002c70:	00f00793          	li	a5,15
    80002c74:	0527e063          	bltu	a5,s2,80002cb4 <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80002c78:	00003517          	auipc	a0,0x3
    80002c7c:	41050513          	addi	a0,a0,1040 # 80006088 <CONSOLE_STATUS+0x78>
    80002c80:	00000097          	auipc	ra,0x0
    80002c84:	238080e7          	jalr	568(ra) # 80002eb8 <_Z11printStringPKc>
    80002c88:	00000613          	li	a2,0
    80002c8c:	00a00593          	li	a1,10
    80002c90:	0009051b          	sext.w	a0,s2
    80002c94:	00000097          	auipc	ra,0x0
    80002c98:	3d4080e7          	jalr	980(ra) # 80003068 <_Z8printIntiii>
    80002c9c:	00003517          	auipc	a0,0x3
    80002ca0:	77c50513          	addi	a0,a0,1916 # 80006418 <CONSOLE_STATUS+0x408>
    80002ca4:	00000097          	auipc	ra,0x0
    80002ca8:	214080e7          	jalr	532(ra) # 80002eb8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80002cac:	00000493          	li	s1,0
    80002cb0:	f99ff06f          	j	80002c48 <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    80002cb4:	00003517          	auipc	a0,0x3
    80002cb8:	3dc50513          	addi	a0,a0,988 # 80006090 <CONSOLE_STATUS+0x80>
    80002cbc:	00000097          	auipc	ra,0x0
    80002cc0:	1fc080e7          	jalr	508(ra) # 80002eb8 <_Z11printStringPKc>
    finishedB = true;
    80002cc4:	00100793          	li	a5,1
    80002cc8:	00004717          	auipc	a4,0x4
    80002ccc:	70f70723          	sb	a5,1806(a4) # 800073d6 <_ZL9finishedB>
    thread_dispatch();
    80002cd0:	ffffe097          	auipc	ra,0xffffe
    80002cd4:	6a8080e7          	jalr	1704(ra) # 80001378 <_Z15thread_dispatchv>
}
    80002cd8:	01813083          	ld	ra,24(sp)
    80002cdc:	01013403          	ld	s0,16(sp)
    80002ce0:	00813483          	ld	s1,8(sp)
    80002ce4:	00013903          	ld	s2,0(sp)
    80002ce8:	02010113          	addi	sp,sp,32
    80002cec:	00008067          	ret

0000000080002cf0 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80002cf0:	fe010113          	addi	sp,sp,-32
    80002cf4:	00113c23          	sd	ra,24(sp)
    80002cf8:	00813823          	sd	s0,16(sp)
    80002cfc:	00913423          	sd	s1,8(sp)
    80002d00:	01213023          	sd	s2,0(sp)
    80002d04:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80002d08:	00000913          	li	s2,0
    80002d0c:	0380006f          	j	80002d44 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80002d10:	ffffe097          	auipc	ra,0xffffe
    80002d14:	668080e7          	jalr	1640(ra) # 80001378 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80002d18:	00148493          	addi	s1,s1,1
    80002d1c:	000027b7          	lui	a5,0x2
    80002d20:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80002d24:	0097ee63          	bltu	a5,s1,80002d40 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80002d28:	00000713          	li	a4,0
    80002d2c:	000077b7          	lui	a5,0x7
    80002d30:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80002d34:	fce7eee3          	bltu	a5,a4,80002d10 <_ZL11workerBodyAPv+0x20>
    80002d38:	00170713          	addi	a4,a4,1
    80002d3c:	ff1ff06f          	j	80002d2c <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80002d40:	00190913          	addi	s2,s2,1
    80002d44:	00900793          	li	a5,9
    80002d48:	0527e063          	bltu	a5,s2,80002d88 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80002d4c:	00003517          	auipc	a0,0x3
    80002d50:	32450513          	addi	a0,a0,804 # 80006070 <CONSOLE_STATUS+0x60>
    80002d54:	00000097          	auipc	ra,0x0
    80002d58:	164080e7          	jalr	356(ra) # 80002eb8 <_Z11printStringPKc>
    80002d5c:	00000613          	li	a2,0
    80002d60:	00a00593          	li	a1,10
    80002d64:	0009051b          	sext.w	a0,s2
    80002d68:	00000097          	auipc	ra,0x0
    80002d6c:	300080e7          	jalr	768(ra) # 80003068 <_Z8printIntiii>
    80002d70:	00003517          	auipc	a0,0x3
    80002d74:	6a850513          	addi	a0,a0,1704 # 80006418 <CONSOLE_STATUS+0x408>
    80002d78:	00000097          	auipc	ra,0x0
    80002d7c:	140080e7          	jalr	320(ra) # 80002eb8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80002d80:	00000493          	li	s1,0
    80002d84:	f99ff06f          	j	80002d1c <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80002d88:	00003517          	auipc	a0,0x3
    80002d8c:	2f050513          	addi	a0,a0,752 # 80006078 <CONSOLE_STATUS+0x68>
    80002d90:	00000097          	auipc	ra,0x0
    80002d94:	128080e7          	jalr	296(ra) # 80002eb8 <_Z11printStringPKc>
    finishedA = true;
    80002d98:	00100793          	li	a5,1
    80002d9c:	00004717          	auipc	a4,0x4
    80002da0:	62f70da3          	sb	a5,1595(a4) # 800073d7 <_ZL9finishedA>
}
    80002da4:	01813083          	ld	ra,24(sp)
    80002da8:	01013403          	ld	s0,16(sp)
    80002dac:	00813483          	ld	s1,8(sp)
    80002db0:	00013903          	ld	s2,0(sp)
    80002db4:	02010113          	addi	sp,sp,32
    80002db8:	00008067          	ret

0000000080002dbc <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80002dbc:	fd010113          	addi	sp,sp,-48
    80002dc0:	02113423          	sd	ra,40(sp)
    80002dc4:	02813023          	sd	s0,32(sp)
    80002dc8:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80002dcc:	00000613          	li	a2,0
    80002dd0:	00000597          	auipc	a1,0x0
    80002dd4:	f2058593          	addi	a1,a1,-224 # 80002cf0 <_ZL11workerBodyAPv>
    80002dd8:	fd040513          	addi	a0,s0,-48
    80002ddc:	ffffe097          	auipc	ra,0xffffe
    80002de0:	514080e7          	jalr	1300(ra) # 800012f0 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadA created\n");
    80002de4:	00003517          	auipc	a0,0x3
    80002de8:	32450513          	addi	a0,a0,804 # 80006108 <CONSOLE_STATUS+0xf8>
    80002dec:	00000097          	auipc	ra,0x0
    80002df0:	0cc080e7          	jalr	204(ra) # 80002eb8 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80002df4:	00000613          	li	a2,0
    80002df8:	00000597          	auipc	a1,0x0
    80002dfc:	e2458593          	addi	a1,a1,-476 # 80002c1c <_ZL11workerBodyBPv>
    80002e00:	fd840513          	addi	a0,s0,-40
    80002e04:	ffffe097          	auipc	ra,0xffffe
    80002e08:	4ec080e7          	jalr	1260(ra) # 800012f0 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadB created\n");
    80002e0c:	00003517          	auipc	a0,0x3
    80002e10:	31450513          	addi	a0,a0,788 # 80006120 <CONSOLE_STATUS+0x110>
    80002e14:	00000097          	auipc	ra,0x0
    80002e18:	0a4080e7          	jalr	164(ra) # 80002eb8 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80002e1c:	00000613          	li	a2,0
    80002e20:	00000597          	auipc	a1,0x0
    80002e24:	c7c58593          	addi	a1,a1,-900 # 80002a9c <_ZL11workerBodyCPv>
    80002e28:	fe040513          	addi	a0,s0,-32
    80002e2c:	ffffe097          	auipc	ra,0xffffe
    80002e30:	4c4080e7          	jalr	1220(ra) # 800012f0 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadC created\n");
    80002e34:	00003517          	auipc	a0,0x3
    80002e38:	30450513          	addi	a0,a0,772 # 80006138 <CONSOLE_STATUS+0x128>
    80002e3c:	00000097          	auipc	ra,0x0
    80002e40:	07c080e7          	jalr	124(ra) # 80002eb8 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80002e44:	00000613          	li	a2,0
    80002e48:	00000597          	auipc	a1,0x0
    80002e4c:	b0c58593          	addi	a1,a1,-1268 # 80002954 <_ZL11workerBodyDPv>
    80002e50:	fe840513          	addi	a0,s0,-24
    80002e54:	ffffe097          	auipc	ra,0xffffe
    80002e58:	49c080e7          	jalr	1180(ra) # 800012f0 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadD created\n");
    80002e5c:	00003517          	auipc	a0,0x3
    80002e60:	2f450513          	addi	a0,a0,756 # 80006150 <CONSOLE_STATUS+0x140>
    80002e64:	00000097          	auipc	ra,0x0
    80002e68:	054080e7          	jalr	84(ra) # 80002eb8 <_Z11printStringPKc>
    80002e6c:	00c0006f          	j	80002e78 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80002e70:	ffffe097          	auipc	ra,0xffffe
    80002e74:	508080e7          	jalr	1288(ra) # 80001378 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80002e78:	00004797          	auipc	a5,0x4
    80002e7c:	55f7c783          	lbu	a5,1375(a5) # 800073d7 <_ZL9finishedA>
    80002e80:	fe0788e3          	beqz	a5,80002e70 <_Z18Threads_C_API_testv+0xb4>
    80002e84:	00004797          	auipc	a5,0x4
    80002e88:	5527c783          	lbu	a5,1362(a5) # 800073d6 <_ZL9finishedB>
    80002e8c:	fe0782e3          	beqz	a5,80002e70 <_Z18Threads_C_API_testv+0xb4>
    80002e90:	00004797          	auipc	a5,0x4
    80002e94:	5457c783          	lbu	a5,1349(a5) # 800073d5 <_ZL9finishedC>
    80002e98:	fc078ce3          	beqz	a5,80002e70 <_Z18Threads_C_API_testv+0xb4>
    80002e9c:	00004797          	auipc	a5,0x4
    80002ea0:	5387c783          	lbu	a5,1336(a5) # 800073d4 <_ZL9finishedD>
    80002ea4:	fc0786e3          	beqz	a5,80002e70 <_Z18Threads_C_API_testv+0xb4>
    }

}
    80002ea8:	02813083          	ld	ra,40(sp)
    80002eac:	02013403          	ld	s0,32(sp)
    80002eb0:	03010113          	addi	sp,sp,48
    80002eb4:	00008067          	ret

0000000080002eb8 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80002eb8:	fe010113          	addi	sp,sp,-32
    80002ebc:	00113c23          	sd	ra,24(sp)
    80002ec0:	00813823          	sd	s0,16(sp)
    80002ec4:	00913423          	sd	s1,8(sp)
    80002ec8:	02010413          	addi	s0,sp,32
    80002ecc:	00050493          	mv	s1,a0
    LOCK();
    80002ed0:	00100613          	li	a2,1
    80002ed4:	00000593          	li	a1,0
    80002ed8:	00004517          	auipc	a0,0x4
    80002edc:	50050513          	addi	a0,a0,1280 # 800073d8 <lockPrint>
    80002ee0:	ffffe097          	auipc	ra,0xffffe
    80002ee4:	36c080e7          	jalr	876(ra) # 8000124c <copy_and_swap>
    80002ee8:	00050863          	beqz	a0,80002ef8 <_Z11printStringPKc+0x40>
    80002eec:	ffffe097          	auipc	ra,0xffffe
    80002ef0:	48c080e7          	jalr	1164(ra) # 80001378 <_Z15thread_dispatchv>
    80002ef4:	fddff06f          	j	80002ed0 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80002ef8:	0004c503          	lbu	a0,0(s1)
    80002efc:	00050a63          	beqz	a0,80002f10 <_Z11printStringPKc+0x58>
    {
        putc(*string);
    80002f00:	fffff097          	auipc	ra,0xfffff
    80002f04:	ff4080e7          	jalr	-12(ra) # 80001ef4 <_Z4putcc>
        string++;
    80002f08:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80002f0c:	fedff06f          	j	80002ef8 <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    80002f10:	00000613          	li	a2,0
    80002f14:	00100593          	li	a1,1
    80002f18:	00004517          	auipc	a0,0x4
    80002f1c:	4c050513          	addi	a0,a0,1216 # 800073d8 <lockPrint>
    80002f20:	ffffe097          	auipc	ra,0xffffe
    80002f24:	32c080e7          	jalr	812(ra) # 8000124c <copy_and_swap>
    80002f28:	fe0514e3          	bnez	a0,80002f10 <_Z11printStringPKc+0x58>
}
    80002f2c:	01813083          	ld	ra,24(sp)
    80002f30:	01013403          	ld	s0,16(sp)
    80002f34:	00813483          	ld	s1,8(sp)
    80002f38:	02010113          	addi	sp,sp,32
    80002f3c:	00008067          	ret

0000000080002f40 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80002f40:	fd010113          	addi	sp,sp,-48
    80002f44:	02113423          	sd	ra,40(sp)
    80002f48:	02813023          	sd	s0,32(sp)
    80002f4c:	00913c23          	sd	s1,24(sp)
    80002f50:	01213823          	sd	s2,16(sp)
    80002f54:	01313423          	sd	s3,8(sp)
    80002f58:	01413023          	sd	s4,0(sp)
    80002f5c:	03010413          	addi	s0,sp,48
    80002f60:	00050993          	mv	s3,a0
    80002f64:	00058a13          	mv	s4,a1
    LOCK();
    80002f68:	00100613          	li	a2,1
    80002f6c:	00000593          	li	a1,0
    80002f70:	00004517          	auipc	a0,0x4
    80002f74:	46850513          	addi	a0,a0,1128 # 800073d8 <lockPrint>
    80002f78:	ffffe097          	auipc	ra,0xffffe
    80002f7c:	2d4080e7          	jalr	724(ra) # 8000124c <copy_and_swap>
    80002f80:	00050863          	beqz	a0,80002f90 <_Z9getStringPci+0x50>
    80002f84:	ffffe097          	auipc	ra,0xffffe
    80002f88:	3f4080e7          	jalr	1012(ra) # 80001378 <_Z15thread_dispatchv>
    80002f8c:	fddff06f          	j	80002f68 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80002f90:	00000913          	li	s2,0
    80002f94:	00090493          	mv	s1,s2
    80002f98:	0019091b          	addiw	s2,s2,1
    80002f9c:	03495a63          	bge	s2,s4,80002fd0 <_Z9getStringPci+0x90>
        cc = getc();
    80002fa0:	fffff097          	auipc	ra,0xfffff
    80002fa4:	f7c080e7          	jalr	-132(ra) # 80001f1c <_Z4getcv>
        if(cc < 1)
    80002fa8:	02050463          	beqz	a0,80002fd0 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    80002fac:	009984b3          	add	s1,s3,s1
    80002fb0:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80002fb4:	00a00793          	li	a5,10
    80002fb8:	00f50a63          	beq	a0,a5,80002fcc <_Z9getStringPci+0x8c>
    80002fbc:	00d00793          	li	a5,13
    80002fc0:	fcf51ae3          	bne	a0,a5,80002f94 <_Z9getStringPci+0x54>
        buf[i++] = c;
    80002fc4:	00090493          	mv	s1,s2
    80002fc8:	0080006f          	j	80002fd0 <_Z9getStringPci+0x90>
    80002fcc:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80002fd0:	009984b3          	add	s1,s3,s1
    80002fd4:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80002fd8:	00000613          	li	a2,0
    80002fdc:	00100593          	li	a1,1
    80002fe0:	00004517          	auipc	a0,0x4
    80002fe4:	3f850513          	addi	a0,a0,1016 # 800073d8 <lockPrint>
    80002fe8:	ffffe097          	auipc	ra,0xffffe
    80002fec:	264080e7          	jalr	612(ra) # 8000124c <copy_and_swap>
    80002ff0:	fe0514e3          	bnez	a0,80002fd8 <_Z9getStringPci+0x98>
    return buf;
}
    80002ff4:	00098513          	mv	a0,s3
    80002ff8:	02813083          	ld	ra,40(sp)
    80002ffc:	02013403          	ld	s0,32(sp)
    80003000:	01813483          	ld	s1,24(sp)
    80003004:	01013903          	ld	s2,16(sp)
    80003008:	00813983          	ld	s3,8(sp)
    8000300c:	00013a03          	ld	s4,0(sp)
    80003010:	03010113          	addi	sp,sp,48
    80003014:	00008067          	ret

0000000080003018 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80003018:	ff010113          	addi	sp,sp,-16
    8000301c:	00813423          	sd	s0,8(sp)
    80003020:	01010413          	addi	s0,sp,16
    80003024:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80003028:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    8000302c:	0006c603          	lbu	a2,0(a3)
    80003030:	fd06071b          	addiw	a4,a2,-48
    80003034:	0ff77713          	andi	a4,a4,255
    80003038:	00900793          	li	a5,9
    8000303c:	02e7e063          	bltu	a5,a4,8000305c <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80003040:	0025179b          	slliw	a5,a0,0x2
    80003044:	00a787bb          	addw	a5,a5,a0
    80003048:	0017979b          	slliw	a5,a5,0x1
    8000304c:	00168693          	addi	a3,a3,1
    80003050:	00c787bb          	addw	a5,a5,a2
    80003054:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80003058:	fd5ff06f          	j	8000302c <_Z11stringToIntPKc+0x14>
    return n;
}
    8000305c:	00813403          	ld	s0,8(sp)
    80003060:	01010113          	addi	sp,sp,16
    80003064:	00008067          	ret

0000000080003068 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80003068:	fc010113          	addi	sp,sp,-64
    8000306c:	02113c23          	sd	ra,56(sp)
    80003070:	02813823          	sd	s0,48(sp)
    80003074:	02913423          	sd	s1,40(sp)
    80003078:	03213023          	sd	s2,32(sp)
    8000307c:	01313c23          	sd	s3,24(sp)
    80003080:	04010413          	addi	s0,sp,64
    80003084:	00050493          	mv	s1,a0
    80003088:	00058913          	mv	s2,a1
    8000308c:	00060993          	mv	s3,a2
    LOCK();
    80003090:	00100613          	li	a2,1
    80003094:	00000593          	li	a1,0
    80003098:	00004517          	auipc	a0,0x4
    8000309c:	34050513          	addi	a0,a0,832 # 800073d8 <lockPrint>
    800030a0:	ffffe097          	auipc	ra,0xffffe
    800030a4:	1ac080e7          	jalr	428(ra) # 8000124c <copy_and_swap>
    800030a8:	00050863          	beqz	a0,800030b8 <_Z8printIntiii+0x50>
    800030ac:	ffffe097          	auipc	ra,0xffffe
    800030b0:	2cc080e7          	jalr	716(ra) # 80001378 <_Z15thread_dispatchv>
    800030b4:	fddff06f          	j	80003090 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    800030b8:	00098463          	beqz	s3,800030c0 <_Z8printIntiii+0x58>
    800030bc:	0804c463          	bltz	s1,80003144 <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    800030c0:	0004851b          	sext.w	a0,s1
    neg = 0;
    800030c4:	00000593          	li	a1,0
    }

    i = 0;
    800030c8:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    800030cc:	0009079b          	sext.w	a5,s2
    800030d0:	0325773b          	remuw	a4,a0,s2
    800030d4:	00048613          	mv	a2,s1
    800030d8:	0014849b          	addiw	s1,s1,1
    800030dc:	02071693          	slli	a3,a4,0x20
    800030e0:	0206d693          	srli	a3,a3,0x20
    800030e4:	00004717          	auipc	a4,0x4
    800030e8:	21c70713          	addi	a4,a4,540 # 80007300 <digits>
    800030ec:	00d70733          	add	a4,a4,a3
    800030f0:	00074683          	lbu	a3,0(a4)
    800030f4:	fd040713          	addi	a4,s0,-48
    800030f8:	00c70733          	add	a4,a4,a2
    800030fc:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80003100:	0005071b          	sext.w	a4,a0
    80003104:	0325553b          	divuw	a0,a0,s2
    80003108:	fcf772e3          	bgeu	a4,a5,800030cc <_Z8printIntiii+0x64>
    if(neg)
    8000310c:	00058c63          	beqz	a1,80003124 <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    80003110:	fd040793          	addi	a5,s0,-48
    80003114:	009784b3          	add	s1,a5,s1
    80003118:	02d00793          	li	a5,45
    8000311c:	fef48823          	sb	a5,-16(s1)
    80003120:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80003124:	fff4849b          	addiw	s1,s1,-1
    80003128:	0204c463          	bltz	s1,80003150 <_Z8printIntiii+0xe8>
        putc(buf[i]);
    8000312c:	fd040793          	addi	a5,s0,-48
    80003130:	009787b3          	add	a5,a5,s1
    80003134:	ff07c503          	lbu	a0,-16(a5)
    80003138:	fffff097          	auipc	ra,0xfffff
    8000313c:	dbc080e7          	jalr	-580(ra) # 80001ef4 <_Z4putcc>
    80003140:	fe5ff06f          	j	80003124 <_Z8printIntiii+0xbc>
        x = -xx;
    80003144:	4090053b          	negw	a0,s1
        neg = 1;
    80003148:	00100593          	li	a1,1
        x = -xx;
    8000314c:	f7dff06f          	j	800030c8 <_Z8printIntiii+0x60>

    UNLOCK();
    80003150:	00000613          	li	a2,0
    80003154:	00100593          	li	a1,1
    80003158:	00004517          	auipc	a0,0x4
    8000315c:	28050513          	addi	a0,a0,640 # 800073d8 <lockPrint>
    80003160:	ffffe097          	auipc	ra,0xffffe
    80003164:	0ec080e7          	jalr	236(ra) # 8000124c <copy_and_swap>
    80003168:	fe0514e3          	bnez	a0,80003150 <_Z8printIntiii+0xe8>
    8000316c:	03813083          	ld	ra,56(sp)
    80003170:	03013403          	ld	s0,48(sp)
    80003174:	02813483          	ld	s1,40(sp)
    80003178:	02013903          	ld	s2,32(sp)
    8000317c:	01813983          	ld	s3,24(sp)
    80003180:	04010113          	addi	sp,sp,64
    80003184:	00008067          	ret

0000000080003188 <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    80003188:	fe010113          	addi	sp,sp,-32
    8000318c:	00113c23          	sd	ra,24(sp)
    80003190:	00813823          	sd	s0,16(sp)
    80003194:	00913423          	sd	s1,8(sp)
    80003198:	01213023          	sd	s2,0(sp)
    8000319c:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    800031a0:	00003517          	auipc	a0,0x3
    800031a4:	fc850513          	addi	a0,a0,-56 # 80006168 <CONSOLE_STATUS+0x158>
    800031a8:	00000097          	auipc	ra,0x0
    800031ac:	d10080e7          	jalr	-752(ra) # 80002eb8 <_Z11printStringPKc>
    int test = getc() - '0';
    800031b0:	fffff097          	auipc	ra,0xfffff
    800031b4:	d6c080e7          	jalr	-660(ra) # 80001f1c <_Z4getcv>
    800031b8:	0005091b          	sext.w	s2,a0
    800031bc:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    800031c0:	fffff097          	auipc	ra,0xfffff
    800031c4:	d5c080e7          	jalr	-676(ra) # 80001f1c <_Z4getcv>
            printString("Nije navedeno da je zadatak 2 implementiran\n");
            return;
        }
    }

    if (test >= 3 && test <= 4) {
    800031c8:	fcd9071b          	addiw	a4,s2,-51
    800031cc:	00100793          	li	a5,1
    800031d0:	04e7f663          	bgeu	a5,a4,8000321c <_Z8userMainv+0x94>
            printString("Nije navedeno da je zadatak 3 implementiran\n");
            return;
        }
    }

    if (test >= 5 && test <= 6) {
    800031d4:	fcb9091b          	addiw	s2,s2,-53
    800031d8:	00100793          	li	a5,1
    800031dc:	0727f463          	bgeu	a5,s2,80003244 <_Z8userMainv+0xbc>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    800031e0:	00600793          	li	a5,6
    800031e4:	0697ca63          	blt	a5,s1,80003258 <_Z8userMainv+0xd0>
    800031e8:	00300793          	li	a5,3
    800031ec:	04f4d063          	bge	s1,a5,8000322c <_Z8userMainv+0xa4>
    800031f0:	00100793          	li	a5,1
    800031f4:	08f48c63          	beq	s1,a5,8000328c <_Z8userMainv+0x104>
    800031f8:	00200793          	li	a5,2
    800031fc:	0af49663          	bne	s1,a5,800032a8 <_Z8userMainv+0x120>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
#endif
            break;
        case 2:
#if LEVEL_2_IMPLEMENTED == 1
            Threads_CPP_API_test();
    80003200:	fffff097          	auipc	ra,0xfffff
    80003204:	220080e7          	jalr	544(ra) # 80002420 <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    80003208:	00003517          	auipc	a0,0x3
    8000320c:	02050513          	addi	a0,a0,32 # 80006228 <CONSOLE_STATUS+0x218>
    80003210:	00000097          	auipc	ra,0x0
    80003214:	ca8080e7          	jalr	-856(ra) # 80002eb8 <_Z11printStringPKc>
#endif
            break;
    80003218:	0140006f          	j	8000322c <_Z8userMainv+0xa4>
            printString("Nije navedeno da je zadatak 3 implementiran\n");
    8000321c:	00003517          	auipc	a0,0x3
    80003220:	f6c50513          	addi	a0,a0,-148 # 80006188 <CONSOLE_STATUS+0x178>
    80003224:	00000097          	auipc	ra,0x0
    80003228:	c94080e7          	jalr	-876(ra) # 80002eb8 <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    8000322c:	01813083          	ld	ra,24(sp)
    80003230:	01013403          	ld	s0,16(sp)
    80003234:	00813483          	ld	s1,8(sp)
    80003238:	00013903          	ld	s2,0(sp)
    8000323c:	02010113          	addi	sp,sp,32
    80003240:	00008067          	ret
            printString("Nije navedeno da je zadatak 4 implementiran\n");
    80003244:	00003517          	auipc	a0,0x3
    80003248:	f7450513          	addi	a0,a0,-140 # 800061b8 <CONSOLE_STATUS+0x1a8>
    8000324c:	00000097          	auipc	ra,0x0
    80003250:	c6c080e7          	jalr	-916(ra) # 80002eb8 <_Z11printStringPKc>
            return;
    80003254:	fd9ff06f          	j	8000322c <_Z8userMainv+0xa4>
    switch (test) {
    80003258:	00700793          	li	a5,7
    8000325c:	04f49663          	bne	s1,a5,800032a8 <_Z8userMainv+0x120>
            System_Mode_test();
    80003260:	00000097          	auipc	ra,0x0
    80003264:	548080e7          	jalr	1352(ra) # 800037a8 <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    80003268:	00003517          	auipc	a0,0x3
    8000326c:	00050513          	mv	a0,a0
    80003270:	00000097          	auipc	ra,0x0
    80003274:	c48080e7          	jalr	-952(ra) # 80002eb8 <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    80003278:	00003517          	auipc	a0,0x3
    8000327c:	01050513          	addi	a0,a0,16 # 80006288 <CONSOLE_STATUS+0x278>
    80003280:	00000097          	auipc	ra,0x0
    80003284:	c38080e7          	jalr	-968(ra) # 80002eb8 <_Z11printStringPKc>
            break;
    80003288:	fa5ff06f          	j	8000322c <_Z8userMainv+0xa4>
            Threads_C_API_test();
    8000328c:	00000097          	auipc	ra,0x0
    80003290:	b30080e7          	jalr	-1232(ra) # 80002dbc <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    80003294:	00003517          	auipc	a0,0x3
    80003298:	f5450513          	addi	a0,a0,-172 # 800061e8 <CONSOLE_STATUS+0x1d8>
    8000329c:	00000097          	auipc	ra,0x0
    800032a0:	c1c080e7          	jalr	-996(ra) # 80002eb8 <_Z11printStringPKc>
            break;
    800032a4:	f89ff06f          	j	8000322c <_Z8userMainv+0xa4>
            printString("Niste uneli odgovarajuci broj za test\n");
    800032a8:	00003517          	auipc	a0,0x3
    800032ac:	03850513          	addi	a0,a0,56 # 800062e0 <CONSOLE_STATUS+0x2d0>
    800032b0:	00000097          	auipc	ra,0x0
    800032b4:	c08080e7          	jalr	-1016(ra) # 80002eb8 <_Z11printStringPKc>
    800032b8:	f75ff06f          	j	8000322c <_Z8userMainv+0xa4>

00000000800032bc <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800032bc:	fe010113          	addi	sp,sp,-32
    800032c0:	00113c23          	sd	ra,24(sp)
    800032c4:	00813823          	sd	s0,16(sp)
    800032c8:	00913423          	sd	s1,8(sp)
    800032cc:	01213023          	sd	s2,0(sp)
    800032d0:	02010413          	addi	s0,sp,32
    800032d4:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800032d8:	00100793          	li	a5,1
    800032dc:	02a7f863          	bgeu	a5,a0,8000330c <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800032e0:	00a00793          	li	a5,10
    800032e4:	02f577b3          	remu	a5,a0,a5
    800032e8:	02078e63          	beqz	a5,80003324 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800032ec:	fff48513          	addi	a0,s1,-1
    800032f0:	00000097          	auipc	ra,0x0
    800032f4:	fcc080e7          	jalr	-52(ra) # 800032bc <_ZL9fibonaccim>
    800032f8:	00050913          	mv	s2,a0
    800032fc:	ffe48513          	addi	a0,s1,-2
    80003300:	00000097          	auipc	ra,0x0
    80003304:	fbc080e7          	jalr	-68(ra) # 800032bc <_ZL9fibonaccim>
    80003308:	00a90533          	add	a0,s2,a0
}
    8000330c:	01813083          	ld	ra,24(sp)
    80003310:	01013403          	ld	s0,16(sp)
    80003314:	00813483          	ld	s1,8(sp)
    80003318:	00013903          	ld	s2,0(sp)
    8000331c:	02010113          	addi	sp,sp,32
    80003320:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80003324:	ffffe097          	auipc	ra,0xffffe
    80003328:	054080e7          	jalr	84(ra) # 80001378 <_Z15thread_dispatchv>
    8000332c:	fc1ff06f          	j	800032ec <_ZL9fibonaccim+0x30>

0000000080003330 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80003330:	fe010113          	addi	sp,sp,-32
    80003334:	00113c23          	sd	ra,24(sp)
    80003338:	00813823          	sd	s0,16(sp)
    8000333c:	00913423          	sd	s1,8(sp)
    80003340:	01213023          	sd	s2,0(sp)
    80003344:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80003348:	00a00493          	li	s1,10
    8000334c:	0400006f          	j	8000338c <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003350:	00003517          	auipc	a0,0x3
    80003354:	d8050513          	addi	a0,a0,-640 # 800060d0 <CONSOLE_STATUS+0xc0>
    80003358:	00000097          	auipc	ra,0x0
    8000335c:	b60080e7          	jalr	-1184(ra) # 80002eb8 <_Z11printStringPKc>
    80003360:	00000613          	li	a2,0
    80003364:	00a00593          	li	a1,10
    80003368:	00048513          	mv	a0,s1
    8000336c:	00000097          	auipc	ra,0x0
    80003370:	cfc080e7          	jalr	-772(ra) # 80003068 <_Z8printIntiii>
    80003374:	00003517          	auipc	a0,0x3
    80003378:	0a450513          	addi	a0,a0,164 # 80006418 <CONSOLE_STATUS+0x408>
    8000337c:	00000097          	auipc	ra,0x0
    80003380:	b3c080e7          	jalr	-1220(ra) # 80002eb8 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80003384:	0014849b          	addiw	s1,s1,1
    80003388:	0ff4f493          	andi	s1,s1,255
    8000338c:	00c00793          	li	a5,12
    80003390:	fc97f0e3          	bgeu	a5,s1,80003350 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80003394:	00003517          	auipc	a0,0x3
    80003398:	d4450513          	addi	a0,a0,-700 # 800060d8 <CONSOLE_STATUS+0xc8>
    8000339c:	00000097          	auipc	ra,0x0
    800033a0:	b1c080e7          	jalr	-1252(ra) # 80002eb8 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800033a4:	00500313          	li	t1,5
    thread_dispatch();
    800033a8:	ffffe097          	auipc	ra,0xffffe
    800033ac:	fd0080e7          	jalr	-48(ra) # 80001378 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    800033b0:	01000513          	li	a0,16
    800033b4:	00000097          	auipc	ra,0x0
    800033b8:	f08080e7          	jalr	-248(ra) # 800032bc <_ZL9fibonaccim>
    800033bc:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800033c0:	00003517          	auipc	a0,0x3
    800033c4:	d2850513          	addi	a0,a0,-728 # 800060e8 <CONSOLE_STATUS+0xd8>
    800033c8:	00000097          	auipc	ra,0x0
    800033cc:	af0080e7          	jalr	-1296(ra) # 80002eb8 <_Z11printStringPKc>
    800033d0:	00000613          	li	a2,0
    800033d4:	00a00593          	li	a1,10
    800033d8:	0009051b          	sext.w	a0,s2
    800033dc:	00000097          	auipc	ra,0x0
    800033e0:	c8c080e7          	jalr	-884(ra) # 80003068 <_Z8printIntiii>
    800033e4:	00003517          	auipc	a0,0x3
    800033e8:	03450513          	addi	a0,a0,52 # 80006418 <CONSOLE_STATUS+0x408>
    800033ec:	00000097          	auipc	ra,0x0
    800033f0:	acc080e7          	jalr	-1332(ra) # 80002eb8 <_Z11printStringPKc>
    800033f4:	0400006f          	j	80003434 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800033f8:	00003517          	auipc	a0,0x3
    800033fc:	cd850513          	addi	a0,a0,-808 # 800060d0 <CONSOLE_STATUS+0xc0>
    80003400:	00000097          	auipc	ra,0x0
    80003404:	ab8080e7          	jalr	-1352(ra) # 80002eb8 <_Z11printStringPKc>
    80003408:	00000613          	li	a2,0
    8000340c:	00a00593          	li	a1,10
    80003410:	00048513          	mv	a0,s1
    80003414:	00000097          	auipc	ra,0x0
    80003418:	c54080e7          	jalr	-940(ra) # 80003068 <_Z8printIntiii>
    8000341c:	00003517          	auipc	a0,0x3
    80003420:	ffc50513          	addi	a0,a0,-4 # 80006418 <CONSOLE_STATUS+0x408>
    80003424:	00000097          	auipc	ra,0x0
    80003428:	a94080e7          	jalr	-1388(ra) # 80002eb8 <_Z11printStringPKc>
    for (; i < 16; i++) {
    8000342c:	0014849b          	addiw	s1,s1,1
    80003430:	0ff4f493          	andi	s1,s1,255
    80003434:	00f00793          	li	a5,15
    80003438:	fc97f0e3          	bgeu	a5,s1,800033f8 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    8000343c:	00003517          	auipc	a0,0x3
    80003440:	cbc50513          	addi	a0,a0,-836 # 800060f8 <CONSOLE_STATUS+0xe8>
    80003444:	00000097          	auipc	ra,0x0
    80003448:	a74080e7          	jalr	-1420(ra) # 80002eb8 <_Z11printStringPKc>
    finishedD = true;
    8000344c:	00100793          	li	a5,1
    80003450:	00004717          	auipc	a4,0x4
    80003454:	f8f70823          	sb	a5,-112(a4) # 800073e0 <_ZL9finishedD>
    thread_dispatch();
    80003458:	ffffe097          	auipc	ra,0xffffe
    8000345c:	f20080e7          	jalr	-224(ra) # 80001378 <_Z15thread_dispatchv>
}
    80003460:	01813083          	ld	ra,24(sp)
    80003464:	01013403          	ld	s0,16(sp)
    80003468:	00813483          	ld	s1,8(sp)
    8000346c:	00013903          	ld	s2,0(sp)
    80003470:	02010113          	addi	sp,sp,32
    80003474:	00008067          	ret

0000000080003478 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80003478:	fe010113          	addi	sp,sp,-32
    8000347c:	00113c23          	sd	ra,24(sp)
    80003480:	00813823          	sd	s0,16(sp)
    80003484:	00913423          	sd	s1,8(sp)
    80003488:	01213023          	sd	s2,0(sp)
    8000348c:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80003490:	00000493          	li	s1,0
    80003494:	0400006f          	j	800034d4 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80003498:	00003517          	auipc	a0,0x3
    8000349c:	c0850513          	addi	a0,a0,-1016 # 800060a0 <CONSOLE_STATUS+0x90>
    800034a0:	00000097          	auipc	ra,0x0
    800034a4:	a18080e7          	jalr	-1512(ra) # 80002eb8 <_Z11printStringPKc>
    800034a8:	00000613          	li	a2,0
    800034ac:	00a00593          	li	a1,10
    800034b0:	00048513          	mv	a0,s1
    800034b4:	00000097          	auipc	ra,0x0
    800034b8:	bb4080e7          	jalr	-1100(ra) # 80003068 <_Z8printIntiii>
    800034bc:	00003517          	auipc	a0,0x3
    800034c0:	f5c50513          	addi	a0,a0,-164 # 80006418 <CONSOLE_STATUS+0x408>
    800034c4:	00000097          	auipc	ra,0x0
    800034c8:	9f4080e7          	jalr	-1548(ra) # 80002eb8 <_Z11printStringPKc>
    for (; i < 3; i++) {
    800034cc:	0014849b          	addiw	s1,s1,1
    800034d0:	0ff4f493          	andi	s1,s1,255
    800034d4:	00200793          	li	a5,2
    800034d8:	fc97f0e3          	bgeu	a5,s1,80003498 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    800034dc:	00003517          	auipc	a0,0x3
    800034e0:	bcc50513          	addi	a0,a0,-1076 # 800060a8 <CONSOLE_STATUS+0x98>
    800034e4:	00000097          	auipc	ra,0x0
    800034e8:	9d4080e7          	jalr	-1580(ra) # 80002eb8 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800034ec:	00700313          	li	t1,7
    thread_dispatch();
    800034f0:	ffffe097          	auipc	ra,0xffffe
    800034f4:	e88080e7          	jalr	-376(ra) # 80001378 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800034f8:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    800034fc:	00003517          	auipc	a0,0x3
    80003500:	bbc50513          	addi	a0,a0,-1092 # 800060b8 <CONSOLE_STATUS+0xa8>
    80003504:	00000097          	auipc	ra,0x0
    80003508:	9b4080e7          	jalr	-1612(ra) # 80002eb8 <_Z11printStringPKc>
    8000350c:	00000613          	li	a2,0
    80003510:	00a00593          	li	a1,10
    80003514:	0009051b          	sext.w	a0,s2
    80003518:	00000097          	auipc	ra,0x0
    8000351c:	b50080e7          	jalr	-1200(ra) # 80003068 <_Z8printIntiii>
    80003520:	00003517          	auipc	a0,0x3
    80003524:	ef850513          	addi	a0,a0,-264 # 80006418 <CONSOLE_STATUS+0x408>
    80003528:	00000097          	auipc	ra,0x0
    8000352c:	990080e7          	jalr	-1648(ra) # 80002eb8 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80003530:	00c00513          	li	a0,12
    80003534:	00000097          	auipc	ra,0x0
    80003538:	d88080e7          	jalr	-632(ra) # 800032bc <_ZL9fibonaccim>
    8000353c:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80003540:	00003517          	auipc	a0,0x3
    80003544:	b8050513          	addi	a0,a0,-1152 # 800060c0 <CONSOLE_STATUS+0xb0>
    80003548:	00000097          	auipc	ra,0x0
    8000354c:	970080e7          	jalr	-1680(ra) # 80002eb8 <_Z11printStringPKc>
    80003550:	00000613          	li	a2,0
    80003554:	00a00593          	li	a1,10
    80003558:	0009051b          	sext.w	a0,s2
    8000355c:	00000097          	auipc	ra,0x0
    80003560:	b0c080e7          	jalr	-1268(ra) # 80003068 <_Z8printIntiii>
    80003564:	00003517          	auipc	a0,0x3
    80003568:	eb450513          	addi	a0,a0,-332 # 80006418 <CONSOLE_STATUS+0x408>
    8000356c:	00000097          	auipc	ra,0x0
    80003570:	94c080e7          	jalr	-1716(ra) # 80002eb8 <_Z11printStringPKc>
    80003574:	0400006f          	j	800035b4 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80003578:	00003517          	auipc	a0,0x3
    8000357c:	b2850513          	addi	a0,a0,-1240 # 800060a0 <CONSOLE_STATUS+0x90>
    80003580:	00000097          	auipc	ra,0x0
    80003584:	938080e7          	jalr	-1736(ra) # 80002eb8 <_Z11printStringPKc>
    80003588:	00000613          	li	a2,0
    8000358c:	00a00593          	li	a1,10
    80003590:	00048513          	mv	a0,s1
    80003594:	00000097          	auipc	ra,0x0
    80003598:	ad4080e7          	jalr	-1324(ra) # 80003068 <_Z8printIntiii>
    8000359c:	00003517          	auipc	a0,0x3
    800035a0:	e7c50513          	addi	a0,a0,-388 # 80006418 <CONSOLE_STATUS+0x408>
    800035a4:	00000097          	auipc	ra,0x0
    800035a8:	914080e7          	jalr	-1772(ra) # 80002eb8 <_Z11printStringPKc>
    for (; i < 6; i++) {
    800035ac:	0014849b          	addiw	s1,s1,1
    800035b0:	0ff4f493          	andi	s1,s1,255
    800035b4:	00500793          	li	a5,5
    800035b8:	fc97f0e3          	bgeu	a5,s1,80003578 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    800035bc:	00003517          	auipc	a0,0x3
    800035c0:	abc50513          	addi	a0,a0,-1348 # 80006078 <CONSOLE_STATUS+0x68>
    800035c4:	00000097          	auipc	ra,0x0
    800035c8:	8f4080e7          	jalr	-1804(ra) # 80002eb8 <_Z11printStringPKc>
    finishedC = true;
    800035cc:	00100793          	li	a5,1
    800035d0:	00004717          	auipc	a4,0x4
    800035d4:	e0f708a3          	sb	a5,-495(a4) # 800073e1 <_ZL9finishedC>
    thread_dispatch();
    800035d8:	ffffe097          	auipc	ra,0xffffe
    800035dc:	da0080e7          	jalr	-608(ra) # 80001378 <_Z15thread_dispatchv>
}
    800035e0:	01813083          	ld	ra,24(sp)
    800035e4:	01013403          	ld	s0,16(sp)
    800035e8:	00813483          	ld	s1,8(sp)
    800035ec:	00013903          	ld	s2,0(sp)
    800035f0:	02010113          	addi	sp,sp,32
    800035f4:	00008067          	ret

00000000800035f8 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    800035f8:	fe010113          	addi	sp,sp,-32
    800035fc:	00113c23          	sd	ra,24(sp)
    80003600:	00813823          	sd	s0,16(sp)
    80003604:	00913423          	sd	s1,8(sp)
    80003608:	01213023          	sd	s2,0(sp)
    8000360c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80003610:	00000913          	li	s2,0
    80003614:	0400006f          	j	80003654 <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    80003618:	ffffe097          	auipc	ra,0xffffe
    8000361c:	d60080e7          	jalr	-672(ra) # 80001378 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003620:	00148493          	addi	s1,s1,1
    80003624:	000027b7          	lui	a5,0x2
    80003628:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000362c:	0097ee63          	bltu	a5,s1,80003648 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003630:	00000713          	li	a4,0
    80003634:	000077b7          	lui	a5,0x7
    80003638:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000363c:	fce7eee3          	bltu	a5,a4,80003618 <_ZL11workerBodyBPv+0x20>
    80003640:	00170713          	addi	a4,a4,1
    80003644:	ff1ff06f          	j	80003634 <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    80003648:	00a00793          	li	a5,10
    8000364c:	04f90663          	beq	s2,a5,80003698 <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    80003650:	00190913          	addi	s2,s2,1
    80003654:	00f00793          	li	a5,15
    80003658:	0527e463          	bltu	a5,s2,800036a0 <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    8000365c:	00003517          	auipc	a0,0x3
    80003660:	a2c50513          	addi	a0,a0,-1492 # 80006088 <CONSOLE_STATUS+0x78>
    80003664:	00000097          	auipc	ra,0x0
    80003668:	854080e7          	jalr	-1964(ra) # 80002eb8 <_Z11printStringPKc>
    8000366c:	00000613          	li	a2,0
    80003670:	00a00593          	li	a1,10
    80003674:	0009051b          	sext.w	a0,s2
    80003678:	00000097          	auipc	ra,0x0
    8000367c:	9f0080e7          	jalr	-1552(ra) # 80003068 <_Z8printIntiii>
    80003680:	00003517          	auipc	a0,0x3
    80003684:	d9850513          	addi	a0,a0,-616 # 80006418 <CONSOLE_STATUS+0x408>
    80003688:	00000097          	auipc	ra,0x0
    8000368c:	830080e7          	jalr	-2000(ra) # 80002eb8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003690:	00000493          	li	s1,0
    80003694:	f91ff06f          	j	80003624 <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    80003698:	14102ff3          	csrr	t6,sepc
    8000369c:	fb5ff06f          	j	80003650 <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    800036a0:	00003517          	auipc	a0,0x3
    800036a4:	9f050513          	addi	a0,a0,-1552 # 80006090 <CONSOLE_STATUS+0x80>
    800036a8:	00000097          	auipc	ra,0x0
    800036ac:	810080e7          	jalr	-2032(ra) # 80002eb8 <_Z11printStringPKc>
    finishedB = true;
    800036b0:	00100793          	li	a5,1
    800036b4:	00004717          	auipc	a4,0x4
    800036b8:	d2f70723          	sb	a5,-722(a4) # 800073e2 <_ZL9finishedB>
    thread_dispatch();
    800036bc:	ffffe097          	auipc	ra,0xffffe
    800036c0:	cbc080e7          	jalr	-836(ra) # 80001378 <_Z15thread_dispatchv>
}
    800036c4:	01813083          	ld	ra,24(sp)
    800036c8:	01013403          	ld	s0,16(sp)
    800036cc:	00813483          	ld	s1,8(sp)
    800036d0:	00013903          	ld	s2,0(sp)
    800036d4:	02010113          	addi	sp,sp,32
    800036d8:	00008067          	ret

00000000800036dc <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    800036dc:	fe010113          	addi	sp,sp,-32
    800036e0:	00113c23          	sd	ra,24(sp)
    800036e4:	00813823          	sd	s0,16(sp)
    800036e8:	00913423          	sd	s1,8(sp)
    800036ec:	01213023          	sd	s2,0(sp)
    800036f0:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800036f4:	00000913          	li	s2,0
    800036f8:	0380006f          	j	80003730 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    800036fc:	ffffe097          	auipc	ra,0xffffe
    80003700:	c7c080e7          	jalr	-900(ra) # 80001378 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003704:	00148493          	addi	s1,s1,1
    80003708:	000027b7          	lui	a5,0x2
    8000370c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003710:	0097ee63          	bltu	a5,s1,8000372c <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003714:	00000713          	li	a4,0
    80003718:	000077b7          	lui	a5,0x7
    8000371c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003720:	fce7eee3          	bltu	a5,a4,800036fc <_ZL11workerBodyAPv+0x20>
    80003724:	00170713          	addi	a4,a4,1
    80003728:	ff1ff06f          	j	80003718 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    8000372c:	00190913          	addi	s2,s2,1
    80003730:	00900793          	li	a5,9
    80003734:	0527e063          	bltu	a5,s2,80003774 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80003738:	00003517          	auipc	a0,0x3
    8000373c:	93850513          	addi	a0,a0,-1736 # 80006070 <CONSOLE_STATUS+0x60>
    80003740:	fffff097          	auipc	ra,0xfffff
    80003744:	778080e7          	jalr	1912(ra) # 80002eb8 <_Z11printStringPKc>
    80003748:	00000613          	li	a2,0
    8000374c:	00a00593          	li	a1,10
    80003750:	0009051b          	sext.w	a0,s2
    80003754:	00000097          	auipc	ra,0x0
    80003758:	914080e7          	jalr	-1772(ra) # 80003068 <_Z8printIntiii>
    8000375c:	00003517          	auipc	a0,0x3
    80003760:	cbc50513          	addi	a0,a0,-836 # 80006418 <CONSOLE_STATUS+0x408>
    80003764:	fffff097          	auipc	ra,0xfffff
    80003768:	754080e7          	jalr	1876(ra) # 80002eb8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000376c:	00000493          	li	s1,0
    80003770:	f99ff06f          	j	80003708 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80003774:	00003517          	auipc	a0,0x3
    80003778:	90450513          	addi	a0,a0,-1788 # 80006078 <CONSOLE_STATUS+0x68>
    8000377c:	fffff097          	auipc	ra,0xfffff
    80003780:	73c080e7          	jalr	1852(ra) # 80002eb8 <_Z11printStringPKc>
    finishedA = true;
    80003784:	00100793          	li	a5,1
    80003788:	00004717          	auipc	a4,0x4
    8000378c:	c4f70da3          	sb	a5,-933(a4) # 800073e3 <_ZL9finishedA>
}
    80003790:	01813083          	ld	ra,24(sp)
    80003794:	01013403          	ld	s0,16(sp)
    80003798:	00813483          	ld	s1,8(sp)
    8000379c:	00013903          	ld	s2,0(sp)
    800037a0:	02010113          	addi	sp,sp,32
    800037a4:	00008067          	ret

00000000800037a8 <_Z16System_Mode_testv>:


void System_Mode_test() {
    800037a8:	fd010113          	addi	sp,sp,-48
    800037ac:	02113423          	sd	ra,40(sp)
    800037b0:	02813023          	sd	s0,32(sp)
    800037b4:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    800037b8:	00000613          	li	a2,0
    800037bc:	00000597          	auipc	a1,0x0
    800037c0:	f2058593          	addi	a1,a1,-224 # 800036dc <_ZL11workerBodyAPv>
    800037c4:	fd040513          	addi	a0,s0,-48
    800037c8:	ffffe097          	auipc	ra,0xffffe
    800037cc:	b28080e7          	jalr	-1240(ra) # 800012f0 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadA created\n");
    800037d0:	00003517          	auipc	a0,0x3
    800037d4:	93850513          	addi	a0,a0,-1736 # 80006108 <CONSOLE_STATUS+0xf8>
    800037d8:	fffff097          	auipc	ra,0xfffff
    800037dc:	6e0080e7          	jalr	1760(ra) # 80002eb8 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    800037e0:	00000613          	li	a2,0
    800037e4:	00000597          	auipc	a1,0x0
    800037e8:	e1458593          	addi	a1,a1,-492 # 800035f8 <_ZL11workerBodyBPv>
    800037ec:	fd840513          	addi	a0,s0,-40
    800037f0:	ffffe097          	auipc	ra,0xffffe
    800037f4:	b00080e7          	jalr	-1280(ra) # 800012f0 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadB created\n");
    800037f8:	00003517          	auipc	a0,0x3
    800037fc:	92850513          	addi	a0,a0,-1752 # 80006120 <CONSOLE_STATUS+0x110>
    80003800:	fffff097          	auipc	ra,0xfffff
    80003804:	6b8080e7          	jalr	1720(ra) # 80002eb8 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80003808:	00000613          	li	a2,0
    8000380c:	00000597          	auipc	a1,0x0
    80003810:	c6c58593          	addi	a1,a1,-916 # 80003478 <_ZL11workerBodyCPv>
    80003814:	fe040513          	addi	a0,s0,-32
    80003818:	ffffe097          	auipc	ra,0xffffe
    8000381c:	ad8080e7          	jalr	-1320(ra) # 800012f0 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadC created\n");
    80003820:	00003517          	auipc	a0,0x3
    80003824:	91850513          	addi	a0,a0,-1768 # 80006138 <CONSOLE_STATUS+0x128>
    80003828:	fffff097          	auipc	ra,0xfffff
    8000382c:	690080e7          	jalr	1680(ra) # 80002eb8 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80003830:	00000613          	li	a2,0
    80003834:	00000597          	auipc	a1,0x0
    80003838:	afc58593          	addi	a1,a1,-1284 # 80003330 <_ZL11workerBodyDPv>
    8000383c:	fe840513          	addi	a0,s0,-24
    80003840:	ffffe097          	auipc	ra,0xffffe
    80003844:	ab0080e7          	jalr	-1360(ra) # 800012f0 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadD created\n");
    80003848:	00003517          	auipc	a0,0x3
    8000384c:	90850513          	addi	a0,a0,-1784 # 80006150 <CONSOLE_STATUS+0x140>
    80003850:	fffff097          	auipc	ra,0xfffff
    80003854:	668080e7          	jalr	1640(ra) # 80002eb8 <_Z11printStringPKc>
    80003858:	00c0006f          	j	80003864 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    8000385c:	ffffe097          	auipc	ra,0xffffe
    80003860:	b1c080e7          	jalr	-1252(ra) # 80001378 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80003864:	00004797          	auipc	a5,0x4
    80003868:	b7f7c783          	lbu	a5,-1153(a5) # 800073e3 <_ZL9finishedA>
    8000386c:	fe0788e3          	beqz	a5,8000385c <_Z16System_Mode_testv+0xb4>
    80003870:	00004797          	auipc	a5,0x4
    80003874:	b727c783          	lbu	a5,-1166(a5) # 800073e2 <_ZL9finishedB>
    80003878:	fe0782e3          	beqz	a5,8000385c <_Z16System_Mode_testv+0xb4>
    8000387c:	00004797          	auipc	a5,0x4
    80003880:	b657c783          	lbu	a5,-1179(a5) # 800073e1 <_ZL9finishedC>
    80003884:	fc078ce3          	beqz	a5,8000385c <_Z16System_Mode_testv+0xb4>
    80003888:	00004797          	auipc	a5,0x4
    8000388c:	b587c783          	lbu	a5,-1192(a5) # 800073e0 <_ZL9finishedD>
    80003890:	fc0786e3          	beqz	a5,8000385c <_Z16System_Mode_testv+0xb4>
    }

}
    80003894:	02813083          	ld	ra,40(sp)
    80003898:	02013403          	ld	s0,32(sp)
    8000389c:	03010113          	addi	sp,sp,48
    800038a0:	00008067          	ret

00000000800038a4 <start>:
    800038a4:	ff010113          	addi	sp,sp,-16
    800038a8:	00813423          	sd	s0,8(sp)
    800038ac:	01010413          	addi	s0,sp,16
    800038b0:	300027f3          	csrr	a5,mstatus
    800038b4:	ffffe737          	lui	a4,0xffffe
    800038b8:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff61af>
    800038bc:	00e7f7b3          	and	a5,a5,a4
    800038c0:	00001737          	lui	a4,0x1
    800038c4:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    800038c8:	00e7e7b3          	or	a5,a5,a4
    800038cc:	30079073          	csrw	mstatus,a5
    800038d0:	00000797          	auipc	a5,0x0
    800038d4:	16078793          	addi	a5,a5,352 # 80003a30 <system_main>
    800038d8:	34179073          	csrw	mepc,a5
    800038dc:	00000793          	li	a5,0
    800038e0:	18079073          	csrw	satp,a5
    800038e4:	000107b7          	lui	a5,0x10
    800038e8:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800038ec:	30279073          	csrw	medeleg,a5
    800038f0:	30379073          	csrw	mideleg,a5
    800038f4:	104027f3          	csrr	a5,sie
    800038f8:	2227e793          	ori	a5,a5,546
    800038fc:	10479073          	csrw	sie,a5
    80003900:	fff00793          	li	a5,-1
    80003904:	00a7d793          	srli	a5,a5,0xa
    80003908:	3b079073          	csrw	pmpaddr0,a5
    8000390c:	00f00793          	li	a5,15
    80003910:	3a079073          	csrw	pmpcfg0,a5
    80003914:	f14027f3          	csrr	a5,mhartid
    80003918:	0200c737          	lui	a4,0x200c
    8000391c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80003920:	0007869b          	sext.w	a3,a5
    80003924:	00269713          	slli	a4,a3,0x2
    80003928:	000f4637          	lui	a2,0xf4
    8000392c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80003930:	00d70733          	add	a4,a4,a3
    80003934:	0037979b          	slliw	a5,a5,0x3
    80003938:	020046b7          	lui	a3,0x2004
    8000393c:	00d787b3          	add	a5,a5,a3
    80003940:	00c585b3          	add	a1,a1,a2
    80003944:	00371693          	slli	a3,a4,0x3
    80003948:	00004717          	auipc	a4,0x4
    8000394c:	aa870713          	addi	a4,a4,-1368 # 800073f0 <timer_scratch>
    80003950:	00b7b023          	sd	a1,0(a5)
    80003954:	00d70733          	add	a4,a4,a3
    80003958:	00f73c23          	sd	a5,24(a4)
    8000395c:	02c73023          	sd	a2,32(a4)
    80003960:	34071073          	csrw	mscratch,a4
    80003964:	00000797          	auipc	a5,0x0
    80003968:	6ec78793          	addi	a5,a5,1772 # 80004050 <timervec>
    8000396c:	30579073          	csrw	mtvec,a5
    80003970:	300027f3          	csrr	a5,mstatus
    80003974:	0087e793          	ori	a5,a5,8
    80003978:	30079073          	csrw	mstatus,a5
    8000397c:	304027f3          	csrr	a5,mie
    80003980:	0807e793          	ori	a5,a5,128
    80003984:	30479073          	csrw	mie,a5
    80003988:	f14027f3          	csrr	a5,mhartid
    8000398c:	0007879b          	sext.w	a5,a5
    80003990:	00078213          	mv	tp,a5
    80003994:	30200073          	mret
    80003998:	00813403          	ld	s0,8(sp)
    8000399c:	01010113          	addi	sp,sp,16
    800039a0:	00008067          	ret

00000000800039a4 <timerinit>:
    800039a4:	ff010113          	addi	sp,sp,-16
    800039a8:	00813423          	sd	s0,8(sp)
    800039ac:	01010413          	addi	s0,sp,16
    800039b0:	f14027f3          	csrr	a5,mhartid
    800039b4:	0200c737          	lui	a4,0x200c
    800039b8:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800039bc:	0007869b          	sext.w	a3,a5
    800039c0:	00269713          	slli	a4,a3,0x2
    800039c4:	000f4637          	lui	a2,0xf4
    800039c8:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800039cc:	00d70733          	add	a4,a4,a3
    800039d0:	0037979b          	slliw	a5,a5,0x3
    800039d4:	020046b7          	lui	a3,0x2004
    800039d8:	00d787b3          	add	a5,a5,a3
    800039dc:	00c585b3          	add	a1,a1,a2
    800039e0:	00371693          	slli	a3,a4,0x3
    800039e4:	00004717          	auipc	a4,0x4
    800039e8:	a0c70713          	addi	a4,a4,-1524 # 800073f0 <timer_scratch>
    800039ec:	00b7b023          	sd	a1,0(a5)
    800039f0:	00d70733          	add	a4,a4,a3
    800039f4:	00f73c23          	sd	a5,24(a4)
    800039f8:	02c73023          	sd	a2,32(a4)
    800039fc:	34071073          	csrw	mscratch,a4
    80003a00:	00000797          	auipc	a5,0x0
    80003a04:	65078793          	addi	a5,a5,1616 # 80004050 <timervec>
    80003a08:	30579073          	csrw	mtvec,a5
    80003a0c:	300027f3          	csrr	a5,mstatus
    80003a10:	0087e793          	ori	a5,a5,8
    80003a14:	30079073          	csrw	mstatus,a5
    80003a18:	304027f3          	csrr	a5,mie
    80003a1c:	0807e793          	ori	a5,a5,128
    80003a20:	30479073          	csrw	mie,a5
    80003a24:	00813403          	ld	s0,8(sp)
    80003a28:	01010113          	addi	sp,sp,16
    80003a2c:	00008067          	ret

0000000080003a30 <system_main>:
    80003a30:	fe010113          	addi	sp,sp,-32
    80003a34:	00813823          	sd	s0,16(sp)
    80003a38:	00913423          	sd	s1,8(sp)
    80003a3c:	00113c23          	sd	ra,24(sp)
    80003a40:	02010413          	addi	s0,sp,32
    80003a44:	00000097          	auipc	ra,0x0
    80003a48:	0c4080e7          	jalr	196(ra) # 80003b08 <cpuid>
    80003a4c:	00004497          	auipc	s1,0x4
    80003a50:	92448493          	addi	s1,s1,-1756 # 80007370 <started>
    80003a54:	02050263          	beqz	a0,80003a78 <system_main+0x48>
    80003a58:	0004a783          	lw	a5,0(s1)
    80003a5c:	0007879b          	sext.w	a5,a5
    80003a60:	fe078ce3          	beqz	a5,80003a58 <system_main+0x28>
    80003a64:	0ff0000f          	fence
    80003a68:	00003517          	auipc	a0,0x3
    80003a6c:	8d050513          	addi	a0,a0,-1840 # 80006338 <CONSOLE_STATUS+0x328>
    80003a70:	00001097          	auipc	ra,0x1
    80003a74:	a7c080e7          	jalr	-1412(ra) # 800044ec <panic>
    80003a78:	00001097          	auipc	ra,0x1
    80003a7c:	9d0080e7          	jalr	-1584(ra) # 80004448 <consoleinit>
    80003a80:	00001097          	auipc	ra,0x1
    80003a84:	15c080e7          	jalr	348(ra) # 80004bdc <printfinit>
    80003a88:	00003517          	auipc	a0,0x3
    80003a8c:	99050513          	addi	a0,a0,-1648 # 80006418 <CONSOLE_STATUS+0x408>
    80003a90:	00001097          	auipc	ra,0x1
    80003a94:	ab8080e7          	jalr	-1352(ra) # 80004548 <__printf>
    80003a98:	00003517          	auipc	a0,0x3
    80003a9c:	87050513          	addi	a0,a0,-1936 # 80006308 <CONSOLE_STATUS+0x2f8>
    80003aa0:	00001097          	auipc	ra,0x1
    80003aa4:	aa8080e7          	jalr	-1368(ra) # 80004548 <__printf>
    80003aa8:	00003517          	auipc	a0,0x3
    80003aac:	97050513          	addi	a0,a0,-1680 # 80006418 <CONSOLE_STATUS+0x408>
    80003ab0:	00001097          	auipc	ra,0x1
    80003ab4:	a98080e7          	jalr	-1384(ra) # 80004548 <__printf>
    80003ab8:	00001097          	auipc	ra,0x1
    80003abc:	4b0080e7          	jalr	1200(ra) # 80004f68 <kinit>
    80003ac0:	00000097          	auipc	ra,0x0
    80003ac4:	148080e7          	jalr	328(ra) # 80003c08 <trapinit>
    80003ac8:	00000097          	auipc	ra,0x0
    80003acc:	16c080e7          	jalr	364(ra) # 80003c34 <trapinithart>
    80003ad0:	00000097          	auipc	ra,0x0
    80003ad4:	5c0080e7          	jalr	1472(ra) # 80004090 <plicinit>
    80003ad8:	00000097          	auipc	ra,0x0
    80003adc:	5e0080e7          	jalr	1504(ra) # 800040b8 <plicinithart>
    80003ae0:	00000097          	auipc	ra,0x0
    80003ae4:	078080e7          	jalr	120(ra) # 80003b58 <userinit>
    80003ae8:	0ff0000f          	fence
    80003aec:	00100793          	li	a5,1
    80003af0:	00003517          	auipc	a0,0x3
    80003af4:	83050513          	addi	a0,a0,-2000 # 80006320 <CONSOLE_STATUS+0x310>
    80003af8:	00f4a023          	sw	a5,0(s1)
    80003afc:	00001097          	auipc	ra,0x1
    80003b00:	a4c080e7          	jalr	-1460(ra) # 80004548 <__printf>
    80003b04:	0000006f          	j	80003b04 <system_main+0xd4>

0000000080003b08 <cpuid>:
    80003b08:	ff010113          	addi	sp,sp,-16
    80003b0c:	00813423          	sd	s0,8(sp)
    80003b10:	01010413          	addi	s0,sp,16
    80003b14:	00020513          	mv	a0,tp
    80003b18:	00813403          	ld	s0,8(sp)
    80003b1c:	0005051b          	sext.w	a0,a0
    80003b20:	01010113          	addi	sp,sp,16
    80003b24:	00008067          	ret

0000000080003b28 <mycpu>:
    80003b28:	ff010113          	addi	sp,sp,-16
    80003b2c:	00813423          	sd	s0,8(sp)
    80003b30:	01010413          	addi	s0,sp,16
    80003b34:	00020793          	mv	a5,tp
    80003b38:	00813403          	ld	s0,8(sp)
    80003b3c:	0007879b          	sext.w	a5,a5
    80003b40:	00779793          	slli	a5,a5,0x7
    80003b44:	00005517          	auipc	a0,0x5
    80003b48:	8dc50513          	addi	a0,a0,-1828 # 80008420 <cpus>
    80003b4c:	00f50533          	add	a0,a0,a5
    80003b50:	01010113          	addi	sp,sp,16
    80003b54:	00008067          	ret

0000000080003b58 <userinit>:
    80003b58:	ff010113          	addi	sp,sp,-16
    80003b5c:	00813423          	sd	s0,8(sp)
    80003b60:	01010413          	addi	s0,sp,16
    80003b64:	00813403          	ld	s0,8(sp)
    80003b68:	01010113          	addi	sp,sp,16
    80003b6c:	ffffe317          	auipc	t1,0xffffe
    80003b70:	b7030067          	jr	-1168(t1) # 800016dc <main>

0000000080003b74 <either_copyout>:
    80003b74:	ff010113          	addi	sp,sp,-16
    80003b78:	00813023          	sd	s0,0(sp)
    80003b7c:	00113423          	sd	ra,8(sp)
    80003b80:	01010413          	addi	s0,sp,16
    80003b84:	02051663          	bnez	a0,80003bb0 <either_copyout+0x3c>
    80003b88:	00058513          	mv	a0,a1
    80003b8c:	00060593          	mv	a1,a2
    80003b90:	0006861b          	sext.w	a2,a3
    80003b94:	00002097          	auipc	ra,0x2
    80003b98:	c60080e7          	jalr	-928(ra) # 800057f4 <__memmove>
    80003b9c:	00813083          	ld	ra,8(sp)
    80003ba0:	00013403          	ld	s0,0(sp)
    80003ba4:	00000513          	li	a0,0
    80003ba8:	01010113          	addi	sp,sp,16
    80003bac:	00008067          	ret
    80003bb0:	00002517          	auipc	a0,0x2
    80003bb4:	7b050513          	addi	a0,a0,1968 # 80006360 <CONSOLE_STATUS+0x350>
    80003bb8:	00001097          	auipc	ra,0x1
    80003bbc:	934080e7          	jalr	-1740(ra) # 800044ec <panic>

0000000080003bc0 <either_copyin>:
    80003bc0:	ff010113          	addi	sp,sp,-16
    80003bc4:	00813023          	sd	s0,0(sp)
    80003bc8:	00113423          	sd	ra,8(sp)
    80003bcc:	01010413          	addi	s0,sp,16
    80003bd0:	02059463          	bnez	a1,80003bf8 <either_copyin+0x38>
    80003bd4:	00060593          	mv	a1,a2
    80003bd8:	0006861b          	sext.w	a2,a3
    80003bdc:	00002097          	auipc	ra,0x2
    80003be0:	c18080e7          	jalr	-1000(ra) # 800057f4 <__memmove>
    80003be4:	00813083          	ld	ra,8(sp)
    80003be8:	00013403          	ld	s0,0(sp)
    80003bec:	00000513          	li	a0,0
    80003bf0:	01010113          	addi	sp,sp,16
    80003bf4:	00008067          	ret
    80003bf8:	00002517          	auipc	a0,0x2
    80003bfc:	79050513          	addi	a0,a0,1936 # 80006388 <CONSOLE_STATUS+0x378>
    80003c00:	00001097          	auipc	ra,0x1
    80003c04:	8ec080e7          	jalr	-1812(ra) # 800044ec <panic>

0000000080003c08 <trapinit>:
    80003c08:	ff010113          	addi	sp,sp,-16
    80003c0c:	00813423          	sd	s0,8(sp)
    80003c10:	01010413          	addi	s0,sp,16
    80003c14:	00813403          	ld	s0,8(sp)
    80003c18:	00002597          	auipc	a1,0x2
    80003c1c:	79858593          	addi	a1,a1,1944 # 800063b0 <CONSOLE_STATUS+0x3a0>
    80003c20:	00005517          	auipc	a0,0x5
    80003c24:	88050513          	addi	a0,a0,-1920 # 800084a0 <tickslock>
    80003c28:	01010113          	addi	sp,sp,16
    80003c2c:	00001317          	auipc	t1,0x1
    80003c30:	5cc30067          	jr	1484(t1) # 800051f8 <initlock>

0000000080003c34 <trapinithart>:
    80003c34:	ff010113          	addi	sp,sp,-16
    80003c38:	00813423          	sd	s0,8(sp)
    80003c3c:	01010413          	addi	s0,sp,16
    80003c40:	00000797          	auipc	a5,0x0
    80003c44:	30078793          	addi	a5,a5,768 # 80003f40 <kernelvec>
    80003c48:	10579073          	csrw	stvec,a5
    80003c4c:	00813403          	ld	s0,8(sp)
    80003c50:	01010113          	addi	sp,sp,16
    80003c54:	00008067          	ret

0000000080003c58 <usertrap>:
    80003c58:	ff010113          	addi	sp,sp,-16
    80003c5c:	00813423          	sd	s0,8(sp)
    80003c60:	01010413          	addi	s0,sp,16
    80003c64:	00813403          	ld	s0,8(sp)
    80003c68:	01010113          	addi	sp,sp,16
    80003c6c:	00008067          	ret

0000000080003c70 <usertrapret>:
    80003c70:	ff010113          	addi	sp,sp,-16
    80003c74:	00813423          	sd	s0,8(sp)
    80003c78:	01010413          	addi	s0,sp,16
    80003c7c:	00813403          	ld	s0,8(sp)
    80003c80:	01010113          	addi	sp,sp,16
    80003c84:	00008067          	ret

0000000080003c88 <kerneltrap>:
    80003c88:	fe010113          	addi	sp,sp,-32
    80003c8c:	00813823          	sd	s0,16(sp)
    80003c90:	00113c23          	sd	ra,24(sp)
    80003c94:	00913423          	sd	s1,8(sp)
    80003c98:	02010413          	addi	s0,sp,32
    80003c9c:	142025f3          	csrr	a1,scause
    80003ca0:	100027f3          	csrr	a5,sstatus
    80003ca4:	0027f793          	andi	a5,a5,2
    80003ca8:	10079c63          	bnez	a5,80003dc0 <kerneltrap+0x138>
    80003cac:	142027f3          	csrr	a5,scause
    80003cb0:	0207ce63          	bltz	a5,80003cec <kerneltrap+0x64>
    80003cb4:	00002517          	auipc	a0,0x2
    80003cb8:	74450513          	addi	a0,a0,1860 # 800063f8 <CONSOLE_STATUS+0x3e8>
    80003cbc:	00001097          	auipc	ra,0x1
    80003cc0:	88c080e7          	jalr	-1908(ra) # 80004548 <__printf>
    80003cc4:	141025f3          	csrr	a1,sepc
    80003cc8:	14302673          	csrr	a2,stval
    80003ccc:	00002517          	auipc	a0,0x2
    80003cd0:	73c50513          	addi	a0,a0,1852 # 80006408 <CONSOLE_STATUS+0x3f8>
    80003cd4:	00001097          	auipc	ra,0x1
    80003cd8:	874080e7          	jalr	-1932(ra) # 80004548 <__printf>
    80003cdc:	00002517          	auipc	a0,0x2
    80003ce0:	74450513          	addi	a0,a0,1860 # 80006420 <CONSOLE_STATUS+0x410>
    80003ce4:	00001097          	auipc	ra,0x1
    80003ce8:	808080e7          	jalr	-2040(ra) # 800044ec <panic>
    80003cec:	0ff7f713          	andi	a4,a5,255
    80003cf0:	00900693          	li	a3,9
    80003cf4:	04d70063          	beq	a4,a3,80003d34 <kerneltrap+0xac>
    80003cf8:	fff00713          	li	a4,-1
    80003cfc:	03f71713          	slli	a4,a4,0x3f
    80003d00:	00170713          	addi	a4,a4,1
    80003d04:	fae798e3          	bne	a5,a4,80003cb4 <kerneltrap+0x2c>
    80003d08:	00000097          	auipc	ra,0x0
    80003d0c:	e00080e7          	jalr	-512(ra) # 80003b08 <cpuid>
    80003d10:	06050663          	beqz	a0,80003d7c <kerneltrap+0xf4>
    80003d14:	144027f3          	csrr	a5,sip
    80003d18:	ffd7f793          	andi	a5,a5,-3
    80003d1c:	14479073          	csrw	sip,a5
    80003d20:	01813083          	ld	ra,24(sp)
    80003d24:	01013403          	ld	s0,16(sp)
    80003d28:	00813483          	ld	s1,8(sp)
    80003d2c:	02010113          	addi	sp,sp,32
    80003d30:	00008067          	ret
    80003d34:	00000097          	auipc	ra,0x0
    80003d38:	3d0080e7          	jalr	976(ra) # 80004104 <plic_claim>
    80003d3c:	00a00793          	li	a5,10
    80003d40:	00050493          	mv	s1,a0
    80003d44:	06f50863          	beq	a0,a5,80003db4 <kerneltrap+0x12c>
    80003d48:	fc050ce3          	beqz	a0,80003d20 <kerneltrap+0x98>
    80003d4c:	00050593          	mv	a1,a0
    80003d50:	00002517          	auipc	a0,0x2
    80003d54:	68850513          	addi	a0,a0,1672 # 800063d8 <CONSOLE_STATUS+0x3c8>
    80003d58:	00000097          	auipc	ra,0x0
    80003d5c:	7f0080e7          	jalr	2032(ra) # 80004548 <__printf>
    80003d60:	01013403          	ld	s0,16(sp)
    80003d64:	01813083          	ld	ra,24(sp)
    80003d68:	00048513          	mv	a0,s1
    80003d6c:	00813483          	ld	s1,8(sp)
    80003d70:	02010113          	addi	sp,sp,32
    80003d74:	00000317          	auipc	t1,0x0
    80003d78:	3c830067          	jr	968(t1) # 8000413c <plic_complete>
    80003d7c:	00004517          	auipc	a0,0x4
    80003d80:	72450513          	addi	a0,a0,1828 # 800084a0 <tickslock>
    80003d84:	00001097          	auipc	ra,0x1
    80003d88:	498080e7          	jalr	1176(ra) # 8000521c <acquire>
    80003d8c:	00003717          	auipc	a4,0x3
    80003d90:	5e870713          	addi	a4,a4,1512 # 80007374 <ticks>
    80003d94:	00072783          	lw	a5,0(a4)
    80003d98:	00004517          	auipc	a0,0x4
    80003d9c:	70850513          	addi	a0,a0,1800 # 800084a0 <tickslock>
    80003da0:	0017879b          	addiw	a5,a5,1
    80003da4:	00f72023          	sw	a5,0(a4)
    80003da8:	00001097          	auipc	ra,0x1
    80003dac:	540080e7          	jalr	1344(ra) # 800052e8 <release>
    80003db0:	f65ff06f          	j	80003d14 <kerneltrap+0x8c>
    80003db4:	00001097          	auipc	ra,0x1
    80003db8:	09c080e7          	jalr	156(ra) # 80004e50 <uartintr>
    80003dbc:	fa5ff06f          	j	80003d60 <kerneltrap+0xd8>
    80003dc0:	00002517          	auipc	a0,0x2
    80003dc4:	5f850513          	addi	a0,a0,1528 # 800063b8 <CONSOLE_STATUS+0x3a8>
    80003dc8:	00000097          	auipc	ra,0x0
    80003dcc:	724080e7          	jalr	1828(ra) # 800044ec <panic>

0000000080003dd0 <clockintr>:
    80003dd0:	fe010113          	addi	sp,sp,-32
    80003dd4:	00813823          	sd	s0,16(sp)
    80003dd8:	00913423          	sd	s1,8(sp)
    80003ddc:	00113c23          	sd	ra,24(sp)
    80003de0:	02010413          	addi	s0,sp,32
    80003de4:	00004497          	auipc	s1,0x4
    80003de8:	6bc48493          	addi	s1,s1,1724 # 800084a0 <tickslock>
    80003dec:	00048513          	mv	a0,s1
    80003df0:	00001097          	auipc	ra,0x1
    80003df4:	42c080e7          	jalr	1068(ra) # 8000521c <acquire>
    80003df8:	00003717          	auipc	a4,0x3
    80003dfc:	57c70713          	addi	a4,a4,1404 # 80007374 <ticks>
    80003e00:	00072783          	lw	a5,0(a4)
    80003e04:	01013403          	ld	s0,16(sp)
    80003e08:	01813083          	ld	ra,24(sp)
    80003e0c:	00048513          	mv	a0,s1
    80003e10:	0017879b          	addiw	a5,a5,1
    80003e14:	00813483          	ld	s1,8(sp)
    80003e18:	00f72023          	sw	a5,0(a4)
    80003e1c:	02010113          	addi	sp,sp,32
    80003e20:	00001317          	auipc	t1,0x1
    80003e24:	4c830067          	jr	1224(t1) # 800052e8 <release>

0000000080003e28 <devintr>:
    80003e28:	142027f3          	csrr	a5,scause
    80003e2c:	00000513          	li	a0,0
    80003e30:	0007c463          	bltz	a5,80003e38 <devintr+0x10>
    80003e34:	00008067          	ret
    80003e38:	fe010113          	addi	sp,sp,-32
    80003e3c:	00813823          	sd	s0,16(sp)
    80003e40:	00113c23          	sd	ra,24(sp)
    80003e44:	00913423          	sd	s1,8(sp)
    80003e48:	02010413          	addi	s0,sp,32
    80003e4c:	0ff7f713          	andi	a4,a5,255
    80003e50:	00900693          	li	a3,9
    80003e54:	04d70c63          	beq	a4,a3,80003eac <devintr+0x84>
    80003e58:	fff00713          	li	a4,-1
    80003e5c:	03f71713          	slli	a4,a4,0x3f
    80003e60:	00170713          	addi	a4,a4,1
    80003e64:	00e78c63          	beq	a5,a4,80003e7c <devintr+0x54>
    80003e68:	01813083          	ld	ra,24(sp)
    80003e6c:	01013403          	ld	s0,16(sp)
    80003e70:	00813483          	ld	s1,8(sp)
    80003e74:	02010113          	addi	sp,sp,32
    80003e78:	00008067          	ret
    80003e7c:	00000097          	auipc	ra,0x0
    80003e80:	c8c080e7          	jalr	-884(ra) # 80003b08 <cpuid>
    80003e84:	06050663          	beqz	a0,80003ef0 <devintr+0xc8>
    80003e88:	144027f3          	csrr	a5,sip
    80003e8c:	ffd7f793          	andi	a5,a5,-3
    80003e90:	14479073          	csrw	sip,a5
    80003e94:	01813083          	ld	ra,24(sp)
    80003e98:	01013403          	ld	s0,16(sp)
    80003e9c:	00813483          	ld	s1,8(sp)
    80003ea0:	00200513          	li	a0,2
    80003ea4:	02010113          	addi	sp,sp,32
    80003ea8:	00008067          	ret
    80003eac:	00000097          	auipc	ra,0x0
    80003eb0:	258080e7          	jalr	600(ra) # 80004104 <plic_claim>
    80003eb4:	00a00793          	li	a5,10
    80003eb8:	00050493          	mv	s1,a0
    80003ebc:	06f50663          	beq	a0,a5,80003f28 <devintr+0x100>
    80003ec0:	00100513          	li	a0,1
    80003ec4:	fa0482e3          	beqz	s1,80003e68 <devintr+0x40>
    80003ec8:	00048593          	mv	a1,s1
    80003ecc:	00002517          	auipc	a0,0x2
    80003ed0:	50c50513          	addi	a0,a0,1292 # 800063d8 <CONSOLE_STATUS+0x3c8>
    80003ed4:	00000097          	auipc	ra,0x0
    80003ed8:	674080e7          	jalr	1652(ra) # 80004548 <__printf>
    80003edc:	00048513          	mv	a0,s1
    80003ee0:	00000097          	auipc	ra,0x0
    80003ee4:	25c080e7          	jalr	604(ra) # 8000413c <plic_complete>
    80003ee8:	00100513          	li	a0,1
    80003eec:	f7dff06f          	j	80003e68 <devintr+0x40>
    80003ef0:	00004517          	auipc	a0,0x4
    80003ef4:	5b050513          	addi	a0,a0,1456 # 800084a0 <tickslock>
    80003ef8:	00001097          	auipc	ra,0x1
    80003efc:	324080e7          	jalr	804(ra) # 8000521c <acquire>
    80003f00:	00003717          	auipc	a4,0x3
    80003f04:	47470713          	addi	a4,a4,1140 # 80007374 <ticks>
    80003f08:	00072783          	lw	a5,0(a4)
    80003f0c:	00004517          	auipc	a0,0x4
    80003f10:	59450513          	addi	a0,a0,1428 # 800084a0 <tickslock>
    80003f14:	0017879b          	addiw	a5,a5,1
    80003f18:	00f72023          	sw	a5,0(a4)
    80003f1c:	00001097          	auipc	ra,0x1
    80003f20:	3cc080e7          	jalr	972(ra) # 800052e8 <release>
    80003f24:	f65ff06f          	j	80003e88 <devintr+0x60>
    80003f28:	00001097          	auipc	ra,0x1
    80003f2c:	f28080e7          	jalr	-216(ra) # 80004e50 <uartintr>
    80003f30:	fadff06f          	j	80003edc <devintr+0xb4>
	...

0000000080003f40 <kernelvec>:
    80003f40:	f0010113          	addi	sp,sp,-256
    80003f44:	00113023          	sd	ra,0(sp)
    80003f48:	00213423          	sd	sp,8(sp)
    80003f4c:	00313823          	sd	gp,16(sp)
    80003f50:	00413c23          	sd	tp,24(sp)
    80003f54:	02513023          	sd	t0,32(sp)
    80003f58:	02613423          	sd	t1,40(sp)
    80003f5c:	02713823          	sd	t2,48(sp)
    80003f60:	02813c23          	sd	s0,56(sp)
    80003f64:	04913023          	sd	s1,64(sp)
    80003f68:	04a13423          	sd	a0,72(sp)
    80003f6c:	04b13823          	sd	a1,80(sp)
    80003f70:	04c13c23          	sd	a2,88(sp)
    80003f74:	06d13023          	sd	a3,96(sp)
    80003f78:	06e13423          	sd	a4,104(sp)
    80003f7c:	06f13823          	sd	a5,112(sp)
    80003f80:	07013c23          	sd	a6,120(sp)
    80003f84:	09113023          	sd	a7,128(sp)
    80003f88:	09213423          	sd	s2,136(sp)
    80003f8c:	09313823          	sd	s3,144(sp)
    80003f90:	09413c23          	sd	s4,152(sp)
    80003f94:	0b513023          	sd	s5,160(sp)
    80003f98:	0b613423          	sd	s6,168(sp)
    80003f9c:	0b713823          	sd	s7,176(sp)
    80003fa0:	0b813c23          	sd	s8,184(sp)
    80003fa4:	0d913023          	sd	s9,192(sp)
    80003fa8:	0da13423          	sd	s10,200(sp)
    80003fac:	0db13823          	sd	s11,208(sp)
    80003fb0:	0dc13c23          	sd	t3,216(sp)
    80003fb4:	0fd13023          	sd	t4,224(sp)
    80003fb8:	0fe13423          	sd	t5,232(sp)
    80003fbc:	0ff13823          	sd	t6,240(sp)
    80003fc0:	cc9ff0ef          	jal	ra,80003c88 <kerneltrap>
    80003fc4:	00013083          	ld	ra,0(sp)
    80003fc8:	00813103          	ld	sp,8(sp)
    80003fcc:	01013183          	ld	gp,16(sp)
    80003fd0:	02013283          	ld	t0,32(sp)
    80003fd4:	02813303          	ld	t1,40(sp)
    80003fd8:	03013383          	ld	t2,48(sp)
    80003fdc:	03813403          	ld	s0,56(sp)
    80003fe0:	04013483          	ld	s1,64(sp)
    80003fe4:	04813503          	ld	a0,72(sp)
    80003fe8:	05013583          	ld	a1,80(sp)
    80003fec:	05813603          	ld	a2,88(sp)
    80003ff0:	06013683          	ld	a3,96(sp)
    80003ff4:	06813703          	ld	a4,104(sp)
    80003ff8:	07013783          	ld	a5,112(sp)
    80003ffc:	07813803          	ld	a6,120(sp)
    80004000:	08013883          	ld	a7,128(sp)
    80004004:	08813903          	ld	s2,136(sp)
    80004008:	09013983          	ld	s3,144(sp)
    8000400c:	09813a03          	ld	s4,152(sp)
    80004010:	0a013a83          	ld	s5,160(sp)
    80004014:	0a813b03          	ld	s6,168(sp)
    80004018:	0b013b83          	ld	s7,176(sp)
    8000401c:	0b813c03          	ld	s8,184(sp)
    80004020:	0c013c83          	ld	s9,192(sp)
    80004024:	0c813d03          	ld	s10,200(sp)
    80004028:	0d013d83          	ld	s11,208(sp)
    8000402c:	0d813e03          	ld	t3,216(sp)
    80004030:	0e013e83          	ld	t4,224(sp)
    80004034:	0e813f03          	ld	t5,232(sp)
    80004038:	0f013f83          	ld	t6,240(sp)
    8000403c:	10010113          	addi	sp,sp,256
    80004040:	10200073          	sret
    80004044:	00000013          	nop
    80004048:	00000013          	nop
    8000404c:	00000013          	nop

0000000080004050 <timervec>:
    80004050:	34051573          	csrrw	a0,mscratch,a0
    80004054:	00b53023          	sd	a1,0(a0)
    80004058:	00c53423          	sd	a2,8(a0)
    8000405c:	00d53823          	sd	a3,16(a0)
    80004060:	01853583          	ld	a1,24(a0)
    80004064:	02053603          	ld	a2,32(a0)
    80004068:	0005b683          	ld	a3,0(a1)
    8000406c:	00c686b3          	add	a3,a3,a2
    80004070:	00d5b023          	sd	a3,0(a1)
    80004074:	00200593          	li	a1,2
    80004078:	14459073          	csrw	sip,a1
    8000407c:	01053683          	ld	a3,16(a0)
    80004080:	00853603          	ld	a2,8(a0)
    80004084:	00053583          	ld	a1,0(a0)
    80004088:	34051573          	csrrw	a0,mscratch,a0
    8000408c:	30200073          	mret

0000000080004090 <plicinit>:
    80004090:	ff010113          	addi	sp,sp,-16
    80004094:	00813423          	sd	s0,8(sp)
    80004098:	01010413          	addi	s0,sp,16
    8000409c:	00813403          	ld	s0,8(sp)
    800040a0:	0c0007b7          	lui	a5,0xc000
    800040a4:	00100713          	li	a4,1
    800040a8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    800040ac:	00e7a223          	sw	a4,4(a5)
    800040b0:	01010113          	addi	sp,sp,16
    800040b4:	00008067          	ret

00000000800040b8 <plicinithart>:
    800040b8:	ff010113          	addi	sp,sp,-16
    800040bc:	00813023          	sd	s0,0(sp)
    800040c0:	00113423          	sd	ra,8(sp)
    800040c4:	01010413          	addi	s0,sp,16
    800040c8:	00000097          	auipc	ra,0x0
    800040cc:	a40080e7          	jalr	-1472(ra) # 80003b08 <cpuid>
    800040d0:	0085171b          	slliw	a4,a0,0x8
    800040d4:	0c0027b7          	lui	a5,0xc002
    800040d8:	00e787b3          	add	a5,a5,a4
    800040dc:	40200713          	li	a4,1026
    800040e0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    800040e4:	00813083          	ld	ra,8(sp)
    800040e8:	00013403          	ld	s0,0(sp)
    800040ec:	00d5151b          	slliw	a0,a0,0xd
    800040f0:	0c2017b7          	lui	a5,0xc201
    800040f4:	00a78533          	add	a0,a5,a0
    800040f8:	00052023          	sw	zero,0(a0)
    800040fc:	01010113          	addi	sp,sp,16
    80004100:	00008067          	ret

0000000080004104 <plic_claim>:
    80004104:	ff010113          	addi	sp,sp,-16
    80004108:	00813023          	sd	s0,0(sp)
    8000410c:	00113423          	sd	ra,8(sp)
    80004110:	01010413          	addi	s0,sp,16
    80004114:	00000097          	auipc	ra,0x0
    80004118:	9f4080e7          	jalr	-1548(ra) # 80003b08 <cpuid>
    8000411c:	00813083          	ld	ra,8(sp)
    80004120:	00013403          	ld	s0,0(sp)
    80004124:	00d5151b          	slliw	a0,a0,0xd
    80004128:	0c2017b7          	lui	a5,0xc201
    8000412c:	00a78533          	add	a0,a5,a0
    80004130:	00452503          	lw	a0,4(a0)
    80004134:	01010113          	addi	sp,sp,16
    80004138:	00008067          	ret

000000008000413c <plic_complete>:
    8000413c:	fe010113          	addi	sp,sp,-32
    80004140:	00813823          	sd	s0,16(sp)
    80004144:	00913423          	sd	s1,8(sp)
    80004148:	00113c23          	sd	ra,24(sp)
    8000414c:	02010413          	addi	s0,sp,32
    80004150:	00050493          	mv	s1,a0
    80004154:	00000097          	auipc	ra,0x0
    80004158:	9b4080e7          	jalr	-1612(ra) # 80003b08 <cpuid>
    8000415c:	01813083          	ld	ra,24(sp)
    80004160:	01013403          	ld	s0,16(sp)
    80004164:	00d5179b          	slliw	a5,a0,0xd
    80004168:	0c201737          	lui	a4,0xc201
    8000416c:	00f707b3          	add	a5,a4,a5
    80004170:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80004174:	00813483          	ld	s1,8(sp)
    80004178:	02010113          	addi	sp,sp,32
    8000417c:	00008067          	ret

0000000080004180 <consolewrite>:
    80004180:	fb010113          	addi	sp,sp,-80
    80004184:	04813023          	sd	s0,64(sp)
    80004188:	04113423          	sd	ra,72(sp)
    8000418c:	02913c23          	sd	s1,56(sp)
    80004190:	03213823          	sd	s2,48(sp)
    80004194:	03313423          	sd	s3,40(sp)
    80004198:	03413023          	sd	s4,32(sp)
    8000419c:	01513c23          	sd	s5,24(sp)
    800041a0:	05010413          	addi	s0,sp,80
    800041a4:	06c05c63          	blez	a2,8000421c <consolewrite+0x9c>
    800041a8:	00060993          	mv	s3,a2
    800041ac:	00050a13          	mv	s4,a0
    800041b0:	00058493          	mv	s1,a1
    800041b4:	00000913          	li	s2,0
    800041b8:	fff00a93          	li	s5,-1
    800041bc:	01c0006f          	j	800041d8 <consolewrite+0x58>
    800041c0:	fbf44503          	lbu	a0,-65(s0)
    800041c4:	0019091b          	addiw	s2,s2,1
    800041c8:	00148493          	addi	s1,s1,1
    800041cc:	00001097          	auipc	ra,0x1
    800041d0:	a9c080e7          	jalr	-1380(ra) # 80004c68 <uartputc>
    800041d4:	03298063          	beq	s3,s2,800041f4 <consolewrite+0x74>
    800041d8:	00048613          	mv	a2,s1
    800041dc:	00100693          	li	a3,1
    800041e0:	000a0593          	mv	a1,s4
    800041e4:	fbf40513          	addi	a0,s0,-65
    800041e8:	00000097          	auipc	ra,0x0
    800041ec:	9d8080e7          	jalr	-1576(ra) # 80003bc0 <either_copyin>
    800041f0:	fd5518e3          	bne	a0,s5,800041c0 <consolewrite+0x40>
    800041f4:	04813083          	ld	ra,72(sp)
    800041f8:	04013403          	ld	s0,64(sp)
    800041fc:	03813483          	ld	s1,56(sp)
    80004200:	02813983          	ld	s3,40(sp)
    80004204:	02013a03          	ld	s4,32(sp)
    80004208:	01813a83          	ld	s5,24(sp)
    8000420c:	00090513          	mv	a0,s2
    80004210:	03013903          	ld	s2,48(sp)
    80004214:	05010113          	addi	sp,sp,80
    80004218:	00008067          	ret
    8000421c:	00000913          	li	s2,0
    80004220:	fd5ff06f          	j	800041f4 <consolewrite+0x74>

0000000080004224 <consoleread>:
    80004224:	f9010113          	addi	sp,sp,-112
    80004228:	06813023          	sd	s0,96(sp)
    8000422c:	04913c23          	sd	s1,88(sp)
    80004230:	05213823          	sd	s2,80(sp)
    80004234:	05313423          	sd	s3,72(sp)
    80004238:	05413023          	sd	s4,64(sp)
    8000423c:	03513c23          	sd	s5,56(sp)
    80004240:	03613823          	sd	s6,48(sp)
    80004244:	03713423          	sd	s7,40(sp)
    80004248:	03813023          	sd	s8,32(sp)
    8000424c:	06113423          	sd	ra,104(sp)
    80004250:	01913c23          	sd	s9,24(sp)
    80004254:	07010413          	addi	s0,sp,112
    80004258:	00060b93          	mv	s7,a2
    8000425c:	00050913          	mv	s2,a0
    80004260:	00058c13          	mv	s8,a1
    80004264:	00060b1b          	sext.w	s6,a2
    80004268:	00004497          	auipc	s1,0x4
    8000426c:	26048493          	addi	s1,s1,608 # 800084c8 <cons>
    80004270:	00400993          	li	s3,4
    80004274:	fff00a13          	li	s4,-1
    80004278:	00a00a93          	li	s5,10
    8000427c:	05705e63          	blez	s7,800042d8 <consoleread+0xb4>
    80004280:	09c4a703          	lw	a4,156(s1)
    80004284:	0984a783          	lw	a5,152(s1)
    80004288:	0007071b          	sext.w	a4,a4
    8000428c:	08e78463          	beq	a5,a4,80004314 <consoleread+0xf0>
    80004290:	07f7f713          	andi	a4,a5,127
    80004294:	00e48733          	add	a4,s1,a4
    80004298:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000429c:	0017869b          	addiw	a3,a5,1
    800042a0:	08d4ac23          	sw	a3,152(s1)
    800042a4:	00070c9b          	sext.w	s9,a4
    800042a8:	0b370663          	beq	a4,s3,80004354 <consoleread+0x130>
    800042ac:	00100693          	li	a3,1
    800042b0:	f9f40613          	addi	a2,s0,-97
    800042b4:	000c0593          	mv	a1,s8
    800042b8:	00090513          	mv	a0,s2
    800042bc:	f8e40fa3          	sb	a4,-97(s0)
    800042c0:	00000097          	auipc	ra,0x0
    800042c4:	8b4080e7          	jalr	-1868(ra) # 80003b74 <either_copyout>
    800042c8:	01450863          	beq	a0,s4,800042d8 <consoleread+0xb4>
    800042cc:	001c0c13          	addi	s8,s8,1
    800042d0:	fffb8b9b          	addiw	s7,s7,-1
    800042d4:	fb5c94e3          	bne	s9,s5,8000427c <consoleread+0x58>
    800042d8:	000b851b          	sext.w	a0,s7
    800042dc:	06813083          	ld	ra,104(sp)
    800042e0:	06013403          	ld	s0,96(sp)
    800042e4:	05813483          	ld	s1,88(sp)
    800042e8:	05013903          	ld	s2,80(sp)
    800042ec:	04813983          	ld	s3,72(sp)
    800042f0:	04013a03          	ld	s4,64(sp)
    800042f4:	03813a83          	ld	s5,56(sp)
    800042f8:	02813b83          	ld	s7,40(sp)
    800042fc:	02013c03          	ld	s8,32(sp)
    80004300:	01813c83          	ld	s9,24(sp)
    80004304:	40ab053b          	subw	a0,s6,a0
    80004308:	03013b03          	ld	s6,48(sp)
    8000430c:	07010113          	addi	sp,sp,112
    80004310:	00008067          	ret
    80004314:	00001097          	auipc	ra,0x1
    80004318:	1d8080e7          	jalr	472(ra) # 800054ec <push_on>
    8000431c:	0984a703          	lw	a4,152(s1)
    80004320:	09c4a783          	lw	a5,156(s1)
    80004324:	0007879b          	sext.w	a5,a5
    80004328:	fef70ce3          	beq	a4,a5,80004320 <consoleread+0xfc>
    8000432c:	00001097          	auipc	ra,0x1
    80004330:	234080e7          	jalr	564(ra) # 80005560 <pop_on>
    80004334:	0984a783          	lw	a5,152(s1)
    80004338:	07f7f713          	andi	a4,a5,127
    8000433c:	00e48733          	add	a4,s1,a4
    80004340:	01874703          	lbu	a4,24(a4)
    80004344:	0017869b          	addiw	a3,a5,1
    80004348:	08d4ac23          	sw	a3,152(s1)
    8000434c:	00070c9b          	sext.w	s9,a4
    80004350:	f5371ee3          	bne	a4,s3,800042ac <consoleread+0x88>
    80004354:	000b851b          	sext.w	a0,s7
    80004358:	f96bf2e3          	bgeu	s7,s6,800042dc <consoleread+0xb8>
    8000435c:	08f4ac23          	sw	a5,152(s1)
    80004360:	f7dff06f          	j	800042dc <consoleread+0xb8>

0000000080004364 <consputc>:
    80004364:	10000793          	li	a5,256
    80004368:	00f50663          	beq	a0,a5,80004374 <consputc+0x10>
    8000436c:	00001317          	auipc	t1,0x1
    80004370:	9f430067          	jr	-1548(t1) # 80004d60 <uartputc_sync>
    80004374:	ff010113          	addi	sp,sp,-16
    80004378:	00113423          	sd	ra,8(sp)
    8000437c:	00813023          	sd	s0,0(sp)
    80004380:	01010413          	addi	s0,sp,16
    80004384:	00800513          	li	a0,8
    80004388:	00001097          	auipc	ra,0x1
    8000438c:	9d8080e7          	jalr	-1576(ra) # 80004d60 <uartputc_sync>
    80004390:	02000513          	li	a0,32
    80004394:	00001097          	auipc	ra,0x1
    80004398:	9cc080e7          	jalr	-1588(ra) # 80004d60 <uartputc_sync>
    8000439c:	00013403          	ld	s0,0(sp)
    800043a0:	00813083          	ld	ra,8(sp)
    800043a4:	00800513          	li	a0,8
    800043a8:	01010113          	addi	sp,sp,16
    800043ac:	00001317          	auipc	t1,0x1
    800043b0:	9b430067          	jr	-1612(t1) # 80004d60 <uartputc_sync>

00000000800043b4 <consoleintr>:
    800043b4:	fe010113          	addi	sp,sp,-32
    800043b8:	00813823          	sd	s0,16(sp)
    800043bc:	00913423          	sd	s1,8(sp)
    800043c0:	01213023          	sd	s2,0(sp)
    800043c4:	00113c23          	sd	ra,24(sp)
    800043c8:	02010413          	addi	s0,sp,32
    800043cc:	00004917          	auipc	s2,0x4
    800043d0:	0fc90913          	addi	s2,s2,252 # 800084c8 <cons>
    800043d4:	00050493          	mv	s1,a0
    800043d8:	00090513          	mv	a0,s2
    800043dc:	00001097          	auipc	ra,0x1
    800043e0:	e40080e7          	jalr	-448(ra) # 8000521c <acquire>
    800043e4:	02048c63          	beqz	s1,8000441c <consoleintr+0x68>
    800043e8:	0a092783          	lw	a5,160(s2)
    800043ec:	09892703          	lw	a4,152(s2)
    800043f0:	07f00693          	li	a3,127
    800043f4:	40e7873b          	subw	a4,a5,a4
    800043f8:	02e6e263          	bltu	a3,a4,8000441c <consoleintr+0x68>
    800043fc:	00d00713          	li	a4,13
    80004400:	04e48063          	beq	s1,a4,80004440 <consoleintr+0x8c>
    80004404:	07f7f713          	andi	a4,a5,127
    80004408:	00e90733          	add	a4,s2,a4
    8000440c:	0017879b          	addiw	a5,a5,1
    80004410:	0af92023          	sw	a5,160(s2)
    80004414:	00970c23          	sb	s1,24(a4)
    80004418:	08f92e23          	sw	a5,156(s2)
    8000441c:	01013403          	ld	s0,16(sp)
    80004420:	01813083          	ld	ra,24(sp)
    80004424:	00813483          	ld	s1,8(sp)
    80004428:	00013903          	ld	s2,0(sp)
    8000442c:	00004517          	auipc	a0,0x4
    80004430:	09c50513          	addi	a0,a0,156 # 800084c8 <cons>
    80004434:	02010113          	addi	sp,sp,32
    80004438:	00001317          	auipc	t1,0x1
    8000443c:	eb030067          	jr	-336(t1) # 800052e8 <release>
    80004440:	00a00493          	li	s1,10
    80004444:	fc1ff06f          	j	80004404 <consoleintr+0x50>

0000000080004448 <consoleinit>:
    80004448:	fe010113          	addi	sp,sp,-32
    8000444c:	00113c23          	sd	ra,24(sp)
    80004450:	00813823          	sd	s0,16(sp)
    80004454:	00913423          	sd	s1,8(sp)
    80004458:	02010413          	addi	s0,sp,32
    8000445c:	00004497          	auipc	s1,0x4
    80004460:	06c48493          	addi	s1,s1,108 # 800084c8 <cons>
    80004464:	00048513          	mv	a0,s1
    80004468:	00002597          	auipc	a1,0x2
    8000446c:	fc858593          	addi	a1,a1,-56 # 80006430 <CONSOLE_STATUS+0x420>
    80004470:	00001097          	auipc	ra,0x1
    80004474:	d88080e7          	jalr	-632(ra) # 800051f8 <initlock>
    80004478:	00000097          	auipc	ra,0x0
    8000447c:	7ac080e7          	jalr	1964(ra) # 80004c24 <uartinit>
    80004480:	01813083          	ld	ra,24(sp)
    80004484:	01013403          	ld	s0,16(sp)
    80004488:	00000797          	auipc	a5,0x0
    8000448c:	d9c78793          	addi	a5,a5,-612 # 80004224 <consoleread>
    80004490:	0af4bc23          	sd	a5,184(s1)
    80004494:	00000797          	auipc	a5,0x0
    80004498:	cec78793          	addi	a5,a5,-788 # 80004180 <consolewrite>
    8000449c:	0cf4b023          	sd	a5,192(s1)
    800044a0:	00813483          	ld	s1,8(sp)
    800044a4:	02010113          	addi	sp,sp,32
    800044a8:	00008067          	ret

00000000800044ac <console_read>:
    800044ac:	ff010113          	addi	sp,sp,-16
    800044b0:	00813423          	sd	s0,8(sp)
    800044b4:	01010413          	addi	s0,sp,16
    800044b8:	00813403          	ld	s0,8(sp)
    800044bc:	00004317          	auipc	t1,0x4
    800044c0:	0c433303          	ld	t1,196(t1) # 80008580 <devsw+0x10>
    800044c4:	01010113          	addi	sp,sp,16
    800044c8:	00030067          	jr	t1

00000000800044cc <console_write>:
    800044cc:	ff010113          	addi	sp,sp,-16
    800044d0:	00813423          	sd	s0,8(sp)
    800044d4:	01010413          	addi	s0,sp,16
    800044d8:	00813403          	ld	s0,8(sp)
    800044dc:	00004317          	auipc	t1,0x4
    800044e0:	0ac33303          	ld	t1,172(t1) # 80008588 <devsw+0x18>
    800044e4:	01010113          	addi	sp,sp,16
    800044e8:	00030067          	jr	t1

00000000800044ec <panic>:
    800044ec:	fe010113          	addi	sp,sp,-32
    800044f0:	00113c23          	sd	ra,24(sp)
    800044f4:	00813823          	sd	s0,16(sp)
    800044f8:	00913423          	sd	s1,8(sp)
    800044fc:	02010413          	addi	s0,sp,32
    80004500:	00050493          	mv	s1,a0
    80004504:	00002517          	auipc	a0,0x2
    80004508:	f3450513          	addi	a0,a0,-204 # 80006438 <CONSOLE_STATUS+0x428>
    8000450c:	00004797          	auipc	a5,0x4
    80004510:	1007ae23          	sw	zero,284(a5) # 80008628 <pr+0x18>
    80004514:	00000097          	auipc	ra,0x0
    80004518:	034080e7          	jalr	52(ra) # 80004548 <__printf>
    8000451c:	00048513          	mv	a0,s1
    80004520:	00000097          	auipc	ra,0x0
    80004524:	028080e7          	jalr	40(ra) # 80004548 <__printf>
    80004528:	00002517          	auipc	a0,0x2
    8000452c:	ef050513          	addi	a0,a0,-272 # 80006418 <CONSOLE_STATUS+0x408>
    80004530:	00000097          	auipc	ra,0x0
    80004534:	018080e7          	jalr	24(ra) # 80004548 <__printf>
    80004538:	00100793          	li	a5,1
    8000453c:	00003717          	auipc	a4,0x3
    80004540:	e2f72e23          	sw	a5,-452(a4) # 80007378 <panicked>
    80004544:	0000006f          	j	80004544 <panic+0x58>

0000000080004548 <__printf>:
    80004548:	f3010113          	addi	sp,sp,-208
    8000454c:	08813023          	sd	s0,128(sp)
    80004550:	07313423          	sd	s3,104(sp)
    80004554:	09010413          	addi	s0,sp,144
    80004558:	05813023          	sd	s8,64(sp)
    8000455c:	08113423          	sd	ra,136(sp)
    80004560:	06913c23          	sd	s1,120(sp)
    80004564:	07213823          	sd	s2,112(sp)
    80004568:	07413023          	sd	s4,96(sp)
    8000456c:	05513c23          	sd	s5,88(sp)
    80004570:	05613823          	sd	s6,80(sp)
    80004574:	05713423          	sd	s7,72(sp)
    80004578:	03913c23          	sd	s9,56(sp)
    8000457c:	03a13823          	sd	s10,48(sp)
    80004580:	03b13423          	sd	s11,40(sp)
    80004584:	00004317          	auipc	t1,0x4
    80004588:	08c30313          	addi	t1,t1,140 # 80008610 <pr>
    8000458c:	01832c03          	lw	s8,24(t1)
    80004590:	00b43423          	sd	a1,8(s0)
    80004594:	00c43823          	sd	a2,16(s0)
    80004598:	00d43c23          	sd	a3,24(s0)
    8000459c:	02e43023          	sd	a4,32(s0)
    800045a0:	02f43423          	sd	a5,40(s0)
    800045a4:	03043823          	sd	a6,48(s0)
    800045a8:	03143c23          	sd	a7,56(s0)
    800045ac:	00050993          	mv	s3,a0
    800045b0:	4a0c1663          	bnez	s8,80004a5c <__printf+0x514>
    800045b4:	60098c63          	beqz	s3,80004bcc <__printf+0x684>
    800045b8:	0009c503          	lbu	a0,0(s3)
    800045bc:	00840793          	addi	a5,s0,8
    800045c0:	f6f43c23          	sd	a5,-136(s0)
    800045c4:	00000493          	li	s1,0
    800045c8:	22050063          	beqz	a0,800047e8 <__printf+0x2a0>
    800045cc:	00002a37          	lui	s4,0x2
    800045d0:	00018ab7          	lui	s5,0x18
    800045d4:	000f4b37          	lui	s6,0xf4
    800045d8:	00989bb7          	lui	s7,0x989
    800045dc:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    800045e0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    800045e4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    800045e8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    800045ec:	00148c9b          	addiw	s9,s1,1
    800045f0:	02500793          	li	a5,37
    800045f4:	01998933          	add	s2,s3,s9
    800045f8:	38f51263          	bne	a0,a5,8000497c <__printf+0x434>
    800045fc:	00094783          	lbu	a5,0(s2)
    80004600:	00078c9b          	sext.w	s9,a5
    80004604:	1e078263          	beqz	a5,800047e8 <__printf+0x2a0>
    80004608:	0024849b          	addiw	s1,s1,2
    8000460c:	07000713          	li	a4,112
    80004610:	00998933          	add	s2,s3,s1
    80004614:	38e78a63          	beq	a5,a4,800049a8 <__printf+0x460>
    80004618:	20f76863          	bltu	a4,a5,80004828 <__printf+0x2e0>
    8000461c:	42a78863          	beq	a5,a0,80004a4c <__printf+0x504>
    80004620:	06400713          	li	a4,100
    80004624:	40e79663          	bne	a5,a4,80004a30 <__printf+0x4e8>
    80004628:	f7843783          	ld	a5,-136(s0)
    8000462c:	0007a603          	lw	a2,0(a5)
    80004630:	00878793          	addi	a5,a5,8
    80004634:	f6f43c23          	sd	a5,-136(s0)
    80004638:	42064a63          	bltz	a2,80004a6c <__printf+0x524>
    8000463c:	00a00713          	li	a4,10
    80004640:	02e677bb          	remuw	a5,a2,a4
    80004644:	00002d97          	auipc	s11,0x2
    80004648:	e1cd8d93          	addi	s11,s11,-484 # 80006460 <digits>
    8000464c:	00900593          	li	a1,9
    80004650:	0006051b          	sext.w	a0,a2
    80004654:	00000c93          	li	s9,0
    80004658:	02079793          	slli	a5,a5,0x20
    8000465c:	0207d793          	srli	a5,a5,0x20
    80004660:	00fd87b3          	add	a5,s11,a5
    80004664:	0007c783          	lbu	a5,0(a5)
    80004668:	02e656bb          	divuw	a3,a2,a4
    8000466c:	f8f40023          	sb	a5,-128(s0)
    80004670:	14c5d863          	bge	a1,a2,800047c0 <__printf+0x278>
    80004674:	06300593          	li	a1,99
    80004678:	00100c93          	li	s9,1
    8000467c:	02e6f7bb          	remuw	a5,a3,a4
    80004680:	02079793          	slli	a5,a5,0x20
    80004684:	0207d793          	srli	a5,a5,0x20
    80004688:	00fd87b3          	add	a5,s11,a5
    8000468c:	0007c783          	lbu	a5,0(a5)
    80004690:	02e6d73b          	divuw	a4,a3,a4
    80004694:	f8f400a3          	sb	a5,-127(s0)
    80004698:	12a5f463          	bgeu	a1,a0,800047c0 <__printf+0x278>
    8000469c:	00a00693          	li	a3,10
    800046a0:	00900593          	li	a1,9
    800046a4:	02d777bb          	remuw	a5,a4,a3
    800046a8:	02079793          	slli	a5,a5,0x20
    800046ac:	0207d793          	srli	a5,a5,0x20
    800046b0:	00fd87b3          	add	a5,s11,a5
    800046b4:	0007c503          	lbu	a0,0(a5)
    800046b8:	02d757bb          	divuw	a5,a4,a3
    800046bc:	f8a40123          	sb	a0,-126(s0)
    800046c0:	48e5f263          	bgeu	a1,a4,80004b44 <__printf+0x5fc>
    800046c4:	06300513          	li	a0,99
    800046c8:	02d7f5bb          	remuw	a1,a5,a3
    800046cc:	02059593          	slli	a1,a1,0x20
    800046d0:	0205d593          	srli	a1,a1,0x20
    800046d4:	00bd85b3          	add	a1,s11,a1
    800046d8:	0005c583          	lbu	a1,0(a1)
    800046dc:	02d7d7bb          	divuw	a5,a5,a3
    800046e0:	f8b401a3          	sb	a1,-125(s0)
    800046e4:	48e57263          	bgeu	a0,a4,80004b68 <__printf+0x620>
    800046e8:	3e700513          	li	a0,999
    800046ec:	02d7f5bb          	remuw	a1,a5,a3
    800046f0:	02059593          	slli	a1,a1,0x20
    800046f4:	0205d593          	srli	a1,a1,0x20
    800046f8:	00bd85b3          	add	a1,s11,a1
    800046fc:	0005c583          	lbu	a1,0(a1)
    80004700:	02d7d7bb          	divuw	a5,a5,a3
    80004704:	f8b40223          	sb	a1,-124(s0)
    80004708:	46e57663          	bgeu	a0,a4,80004b74 <__printf+0x62c>
    8000470c:	02d7f5bb          	remuw	a1,a5,a3
    80004710:	02059593          	slli	a1,a1,0x20
    80004714:	0205d593          	srli	a1,a1,0x20
    80004718:	00bd85b3          	add	a1,s11,a1
    8000471c:	0005c583          	lbu	a1,0(a1)
    80004720:	02d7d7bb          	divuw	a5,a5,a3
    80004724:	f8b402a3          	sb	a1,-123(s0)
    80004728:	46ea7863          	bgeu	s4,a4,80004b98 <__printf+0x650>
    8000472c:	02d7f5bb          	remuw	a1,a5,a3
    80004730:	02059593          	slli	a1,a1,0x20
    80004734:	0205d593          	srli	a1,a1,0x20
    80004738:	00bd85b3          	add	a1,s11,a1
    8000473c:	0005c583          	lbu	a1,0(a1)
    80004740:	02d7d7bb          	divuw	a5,a5,a3
    80004744:	f8b40323          	sb	a1,-122(s0)
    80004748:	3eeaf863          	bgeu	s5,a4,80004b38 <__printf+0x5f0>
    8000474c:	02d7f5bb          	remuw	a1,a5,a3
    80004750:	02059593          	slli	a1,a1,0x20
    80004754:	0205d593          	srli	a1,a1,0x20
    80004758:	00bd85b3          	add	a1,s11,a1
    8000475c:	0005c583          	lbu	a1,0(a1)
    80004760:	02d7d7bb          	divuw	a5,a5,a3
    80004764:	f8b403a3          	sb	a1,-121(s0)
    80004768:	42eb7e63          	bgeu	s6,a4,80004ba4 <__printf+0x65c>
    8000476c:	02d7f5bb          	remuw	a1,a5,a3
    80004770:	02059593          	slli	a1,a1,0x20
    80004774:	0205d593          	srli	a1,a1,0x20
    80004778:	00bd85b3          	add	a1,s11,a1
    8000477c:	0005c583          	lbu	a1,0(a1)
    80004780:	02d7d7bb          	divuw	a5,a5,a3
    80004784:	f8b40423          	sb	a1,-120(s0)
    80004788:	42ebfc63          	bgeu	s7,a4,80004bc0 <__printf+0x678>
    8000478c:	02079793          	slli	a5,a5,0x20
    80004790:	0207d793          	srli	a5,a5,0x20
    80004794:	00fd8db3          	add	s11,s11,a5
    80004798:	000dc703          	lbu	a4,0(s11)
    8000479c:	00a00793          	li	a5,10
    800047a0:	00900c93          	li	s9,9
    800047a4:	f8e404a3          	sb	a4,-119(s0)
    800047a8:	00065c63          	bgez	a2,800047c0 <__printf+0x278>
    800047ac:	f9040713          	addi	a4,s0,-112
    800047b0:	00f70733          	add	a4,a4,a5
    800047b4:	02d00693          	li	a3,45
    800047b8:	fed70823          	sb	a3,-16(a4)
    800047bc:	00078c93          	mv	s9,a5
    800047c0:	f8040793          	addi	a5,s0,-128
    800047c4:	01978cb3          	add	s9,a5,s9
    800047c8:	f7f40d13          	addi	s10,s0,-129
    800047cc:	000cc503          	lbu	a0,0(s9)
    800047d0:	fffc8c93          	addi	s9,s9,-1
    800047d4:	00000097          	auipc	ra,0x0
    800047d8:	b90080e7          	jalr	-1136(ra) # 80004364 <consputc>
    800047dc:	ffac98e3          	bne	s9,s10,800047cc <__printf+0x284>
    800047e0:	00094503          	lbu	a0,0(s2)
    800047e4:	e00514e3          	bnez	a0,800045ec <__printf+0xa4>
    800047e8:	1a0c1663          	bnez	s8,80004994 <__printf+0x44c>
    800047ec:	08813083          	ld	ra,136(sp)
    800047f0:	08013403          	ld	s0,128(sp)
    800047f4:	07813483          	ld	s1,120(sp)
    800047f8:	07013903          	ld	s2,112(sp)
    800047fc:	06813983          	ld	s3,104(sp)
    80004800:	06013a03          	ld	s4,96(sp)
    80004804:	05813a83          	ld	s5,88(sp)
    80004808:	05013b03          	ld	s6,80(sp)
    8000480c:	04813b83          	ld	s7,72(sp)
    80004810:	04013c03          	ld	s8,64(sp)
    80004814:	03813c83          	ld	s9,56(sp)
    80004818:	03013d03          	ld	s10,48(sp)
    8000481c:	02813d83          	ld	s11,40(sp)
    80004820:	0d010113          	addi	sp,sp,208
    80004824:	00008067          	ret
    80004828:	07300713          	li	a4,115
    8000482c:	1ce78a63          	beq	a5,a4,80004a00 <__printf+0x4b8>
    80004830:	07800713          	li	a4,120
    80004834:	1ee79e63          	bne	a5,a4,80004a30 <__printf+0x4e8>
    80004838:	f7843783          	ld	a5,-136(s0)
    8000483c:	0007a703          	lw	a4,0(a5)
    80004840:	00878793          	addi	a5,a5,8
    80004844:	f6f43c23          	sd	a5,-136(s0)
    80004848:	28074263          	bltz	a4,80004acc <__printf+0x584>
    8000484c:	00002d97          	auipc	s11,0x2
    80004850:	c14d8d93          	addi	s11,s11,-1004 # 80006460 <digits>
    80004854:	00f77793          	andi	a5,a4,15
    80004858:	00fd87b3          	add	a5,s11,a5
    8000485c:	0007c683          	lbu	a3,0(a5)
    80004860:	00f00613          	li	a2,15
    80004864:	0007079b          	sext.w	a5,a4
    80004868:	f8d40023          	sb	a3,-128(s0)
    8000486c:	0047559b          	srliw	a1,a4,0x4
    80004870:	0047569b          	srliw	a3,a4,0x4
    80004874:	00000c93          	li	s9,0
    80004878:	0ee65063          	bge	a2,a4,80004958 <__printf+0x410>
    8000487c:	00f6f693          	andi	a3,a3,15
    80004880:	00dd86b3          	add	a3,s11,a3
    80004884:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80004888:	0087d79b          	srliw	a5,a5,0x8
    8000488c:	00100c93          	li	s9,1
    80004890:	f8d400a3          	sb	a3,-127(s0)
    80004894:	0cb67263          	bgeu	a2,a1,80004958 <__printf+0x410>
    80004898:	00f7f693          	andi	a3,a5,15
    8000489c:	00dd86b3          	add	a3,s11,a3
    800048a0:	0006c583          	lbu	a1,0(a3)
    800048a4:	00f00613          	li	a2,15
    800048a8:	0047d69b          	srliw	a3,a5,0x4
    800048ac:	f8b40123          	sb	a1,-126(s0)
    800048b0:	0047d593          	srli	a1,a5,0x4
    800048b4:	28f67e63          	bgeu	a2,a5,80004b50 <__printf+0x608>
    800048b8:	00f6f693          	andi	a3,a3,15
    800048bc:	00dd86b3          	add	a3,s11,a3
    800048c0:	0006c503          	lbu	a0,0(a3)
    800048c4:	0087d813          	srli	a6,a5,0x8
    800048c8:	0087d69b          	srliw	a3,a5,0x8
    800048cc:	f8a401a3          	sb	a0,-125(s0)
    800048d0:	28b67663          	bgeu	a2,a1,80004b5c <__printf+0x614>
    800048d4:	00f6f693          	andi	a3,a3,15
    800048d8:	00dd86b3          	add	a3,s11,a3
    800048dc:	0006c583          	lbu	a1,0(a3)
    800048e0:	00c7d513          	srli	a0,a5,0xc
    800048e4:	00c7d69b          	srliw	a3,a5,0xc
    800048e8:	f8b40223          	sb	a1,-124(s0)
    800048ec:	29067a63          	bgeu	a2,a6,80004b80 <__printf+0x638>
    800048f0:	00f6f693          	andi	a3,a3,15
    800048f4:	00dd86b3          	add	a3,s11,a3
    800048f8:	0006c583          	lbu	a1,0(a3)
    800048fc:	0107d813          	srli	a6,a5,0x10
    80004900:	0107d69b          	srliw	a3,a5,0x10
    80004904:	f8b402a3          	sb	a1,-123(s0)
    80004908:	28a67263          	bgeu	a2,a0,80004b8c <__printf+0x644>
    8000490c:	00f6f693          	andi	a3,a3,15
    80004910:	00dd86b3          	add	a3,s11,a3
    80004914:	0006c683          	lbu	a3,0(a3)
    80004918:	0147d79b          	srliw	a5,a5,0x14
    8000491c:	f8d40323          	sb	a3,-122(s0)
    80004920:	21067663          	bgeu	a2,a6,80004b2c <__printf+0x5e4>
    80004924:	02079793          	slli	a5,a5,0x20
    80004928:	0207d793          	srli	a5,a5,0x20
    8000492c:	00fd8db3          	add	s11,s11,a5
    80004930:	000dc683          	lbu	a3,0(s11)
    80004934:	00800793          	li	a5,8
    80004938:	00700c93          	li	s9,7
    8000493c:	f8d403a3          	sb	a3,-121(s0)
    80004940:	00075c63          	bgez	a4,80004958 <__printf+0x410>
    80004944:	f9040713          	addi	a4,s0,-112
    80004948:	00f70733          	add	a4,a4,a5
    8000494c:	02d00693          	li	a3,45
    80004950:	fed70823          	sb	a3,-16(a4)
    80004954:	00078c93          	mv	s9,a5
    80004958:	f8040793          	addi	a5,s0,-128
    8000495c:	01978cb3          	add	s9,a5,s9
    80004960:	f7f40d13          	addi	s10,s0,-129
    80004964:	000cc503          	lbu	a0,0(s9)
    80004968:	fffc8c93          	addi	s9,s9,-1
    8000496c:	00000097          	auipc	ra,0x0
    80004970:	9f8080e7          	jalr	-1544(ra) # 80004364 <consputc>
    80004974:	ff9d18e3          	bne	s10,s9,80004964 <__printf+0x41c>
    80004978:	0100006f          	j	80004988 <__printf+0x440>
    8000497c:	00000097          	auipc	ra,0x0
    80004980:	9e8080e7          	jalr	-1560(ra) # 80004364 <consputc>
    80004984:	000c8493          	mv	s1,s9
    80004988:	00094503          	lbu	a0,0(s2)
    8000498c:	c60510e3          	bnez	a0,800045ec <__printf+0xa4>
    80004990:	e40c0ee3          	beqz	s8,800047ec <__printf+0x2a4>
    80004994:	00004517          	auipc	a0,0x4
    80004998:	c7c50513          	addi	a0,a0,-900 # 80008610 <pr>
    8000499c:	00001097          	auipc	ra,0x1
    800049a0:	94c080e7          	jalr	-1716(ra) # 800052e8 <release>
    800049a4:	e49ff06f          	j	800047ec <__printf+0x2a4>
    800049a8:	f7843783          	ld	a5,-136(s0)
    800049ac:	03000513          	li	a0,48
    800049b0:	01000d13          	li	s10,16
    800049b4:	00878713          	addi	a4,a5,8
    800049b8:	0007bc83          	ld	s9,0(a5)
    800049bc:	f6e43c23          	sd	a4,-136(s0)
    800049c0:	00000097          	auipc	ra,0x0
    800049c4:	9a4080e7          	jalr	-1628(ra) # 80004364 <consputc>
    800049c8:	07800513          	li	a0,120
    800049cc:	00000097          	auipc	ra,0x0
    800049d0:	998080e7          	jalr	-1640(ra) # 80004364 <consputc>
    800049d4:	00002d97          	auipc	s11,0x2
    800049d8:	a8cd8d93          	addi	s11,s11,-1396 # 80006460 <digits>
    800049dc:	03ccd793          	srli	a5,s9,0x3c
    800049e0:	00fd87b3          	add	a5,s11,a5
    800049e4:	0007c503          	lbu	a0,0(a5)
    800049e8:	fffd0d1b          	addiw	s10,s10,-1
    800049ec:	004c9c93          	slli	s9,s9,0x4
    800049f0:	00000097          	auipc	ra,0x0
    800049f4:	974080e7          	jalr	-1676(ra) # 80004364 <consputc>
    800049f8:	fe0d12e3          	bnez	s10,800049dc <__printf+0x494>
    800049fc:	f8dff06f          	j	80004988 <__printf+0x440>
    80004a00:	f7843783          	ld	a5,-136(s0)
    80004a04:	0007bc83          	ld	s9,0(a5)
    80004a08:	00878793          	addi	a5,a5,8
    80004a0c:	f6f43c23          	sd	a5,-136(s0)
    80004a10:	000c9a63          	bnez	s9,80004a24 <__printf+0x4dc>
    80004a14:	1080006f          	j	80004b1c <__printf+0x5d4>
    80004a18:	001c8c93          	addi	s9,s9,1
    80004a1c:	00000097          	auipc	ra,0x0
    80004a20:	948080e7          	jalr	-1720(ra) # 80004364 <consputc>
    80004a24:	000cc503          	lbu	a0,0(s9)
    80004a28:	fe0518e3          	bnez	a0,80004a18 <__printf+0x4d0>
    80004a2c:	f5dff06f          	j	80004988 <__printf+0x440>
    80004a30:	02500513          	li	a0,37
    80004a34:	00000097          	auipc	ra,0x0
    80004a38:	930080e7          	jalr	-1744(ra) # 80004364 <consputc>
    80004a3c:	000c8513          	mv	a0,s9
    80004a40:	00000097          	auipc	ra,0x0
    80004a44:	924080e7          	jalr	-1756(ra) # 80004364 <consputc>
    80004a48:	f41ff06f          	j	80004988 <__printf+0x440>
    80004a4c:	02500513          	li	a0,37
    80004a50:	00000097          	auipc	ra,0x0
    80004a54:	914080e7          	jalr	-1772(ra) # 80004364 <consputc>
    80004a58:	f31ff06f          	j	80004988 <__printf+0x440>
    80004a5c:	00030513          	mv	a0,t1
    80004a60:	00000097          	auipc	ra,0x0
    80004a64:	7bc080e7          	jalr	1980(ra) # 8000521c <acquire>
    80004a68:	b4dff06f          	j	800045b4 <__printf+0x6c>
    80004a6c:	40c0053b          	negw	a0,a2
    80004a70:	00a00713          	li	a4,10
    80004a74:	02e576bb          	remuw	a3,a0,a4
    80004a78:	00002d97          	auipc	s11,0x2
    80004a7c:	9e8d8d93          	addi	s11,s11,-1560 # 80006460 <digits>
    80004a80:	ff700593          	li	a1,-9
    80004a84:	02069693          	slli	a3,a3,0x20
    80004a88:	0206d693          	srli	a3,a3,0x20
    80004a8c:	00dd86b3          	add	a3,s11,a3
    80004a90:	0006c683          	lbu	a3,0(a3)
    80004a94:	02e557bb          	divuw	a5,a0,a4
    80004a98:	f8d40023          	sb	a3,-128(s0)
    80004a9c:	10b65e63          	bge	a2,a1,80004bb8 <__printf+0x670>
    80004aa0:	06300593          	li	a1,99
    80004aa4:	02e7f6bb          	remuw	a3,a5,a4
    80004aa8:	02069693          	slli	a3,a3,0x20
    80004aac:	0206d693          	srli	a3,a3,0x20
    80004ab0:	00dd86b3          	add	a3,s11,a3
    80004ab4:	0006c683          	lbu	a3,0(a3)
    80004ab8:	02e7d73b          	divuw	a4,a5,a4
    80004abc:	00200793          	li	a5,2
    80004ac0:	f8d400a3          	sb	a3,-127(s0)
    80004ac4:	bca5ece3          	bltu	a1,a0,8000469c <__printf+0x154>
    80004ac8:	ce5ff06f          	j	800047ac <__printf+0x264>
    80004acc:	40e007bb          	negw	a5,a4
    80004ad0:	00002d97          	auipc	s11,0x2
    80004ad4:	990d8d93          	addi	s11,s11,-1648 # 80006460 <digits>
    80004ad8:	00f7f693          	andi	a3,a5,15
    80004adc:	00dd86b3          	add	a3,s11,a3
    80004ae0:	0006c583          	lbu	a1,0(a3)
    80004ae4:	ff100613          	li	a2,-15
    80004ae8:	0047d69b          	srliw	a3,a5,0x4
    80004aec:	f8b40023          	sb	a1,-128(s0)
    80004af0:	0047d59b          	srliw	a1,a5,0x4
    80004af4:	0ac75e63          	bge	a4,a2,80004bb0 <__printf+0x668>
    80004af8:	00f6f693          	andi	a3,a3,15
    80004afc:	00dd86b3          	add	a3,s11,a3
    80004b00:	0006c603          	lbu	a2,0(a3)
    80004b04:	00f00693          	li	a3,15
    80004b08:	0087d79b          	srliw	a5,a5,0x8
    80004b0c:	f8c400a3          	sb	a2,-127(s0)
    80004b10:	d8b6e4e3          	bltu	a3,a1,80004898 <__printf+0x350>
    80004b14:	00200793          	li	a5,2
    80004b18:	e2dff06f          	j	80004944 <__printf+0x3fc>
    80004b1c:	00002c97          	auipc	s9,0x2
    80004b20:	924c8c93          	addi	s9,s9,-1756 # 80006440 <CONSOLE_STATUS+0x430>
    80004b24:	02800513          	li	a0,40
    80004b28:	ef1ff06f          	j	80004a18 <__printf+0x4d0>
    80004b2c:	00700793          	li	a5,7
    80004b30:	00600c93          	li	s9,6
    80004b34:	e0dff06f          	j	80004940 <__printf+0x3f8>
    80004b38:	00700793          	li	a5,7
    80004b3c:	00600c93          	li	s9,6
    80004b40:	c69ff06f          	j	800047a8 <__printf+0x260>
    80004b44:	00300793          	li	a5,3
    80004b48:	00200c93          	li	s9,2
    80004b4c:	c5dff06f          	j	800047a8 <__printf+0x260>
    80004b50:	00300793          	li	a5,3
    80004b54:	00200c93          	li	s9,2
    80004b58:	de9ff06f          	j	80004940 <__printf+0x3f8>
    80004b5c:	00400793          	li	a5,4
    80004b60:	00300c93          	li	s9,3
    80004b64:	dddff06f          	j	80004940 <__printf+0x3f8>
    80004b68:	00400793          	li	a5,4
    80004b6c:	00300c93          	li	s9,3
    80004b70:	c39ff06f          	j	800047a8 <__printf+0x260>
    80004b74:	00500793          	li	a5,5
    80004b78:	00400c93          	li	s9,4
    80004b7c:	c2dff06f          	j	800047a8 <__printf+0x260>
    80004b80:	00500793          	li	a5,5
    80004b84:	00400c93          	li	s9,4
    80004b88:	db9ff06f          	j	80004940 <__printf+0x3f8>
    80004b8c:	00600793          	li	a5,6
    80004b90:	00500c93          	li	s9,5
    80004b94:	dadff06f          	j	80004940 <__printf+0x3f8>
    80004b98:	00600793          	li	a5,6
    80004b9c:	00500c93          	li	s9,5
    80004ba0:	c09ff06f          	j	800047a8 <__printf+0x260>
    80004ba4:	00800793          	li	a5,8
    80004ba8:	00700c93          	li	s9,7
    80004bac:	bfdff06f          	j	800047a8 <__printf+0x260>
    80004bb0:	00100793          	li	a5,1
    80004bb4:	d91ff06f          	j	80004944 <__printf+0x3fc>
    80004bb8:	00100793          	li	a5,1
    80004bbc:	bf1ff06f          	j	800047ac <__printf+0x264>
    80004bc0:	00900793          	li	a5,9
    80004bc4:	00800c93          	li	s9,8
    80004bc8:	be1ff06f          	j	800047a8 <__printf+0x260>
    80004bcc:	00002517          	auipc	a0,0x2
    80004bd0:	87c50513          	addi	a0,a0,-1924 # 80006448 <CONSOLE_STATUS+0x438>
    80004bd4:	00000097          	auipc	ra,0x0
    80004bd8:	918080e7          	jalr	-1768(ra) # 800044ec <panic>

0000000080004bdc <printfinit>:
    80004bdc:	fe010113          	addi	sp,sp,-32
    80004be0:	00813823          	sd	s0,16(sp)
    80004be4:	00913423          	sd	s1,8(sp)
    80004be8:	00113c23          	sd	ra,24(sp)
    80004bec:	02010413          	addi	s0,sp,32
    80004bf0:	00004497          	auipc	s1,0x4
    80004bf4:	a2048493          	addi	s1,s1,-1504 # 80008610 <pr>
    80004bf8:	00048513          	mv	a0,s1
    80004bfc:	00002597          	auipc	a1,0x2
    80004c00:	85c58593          	addi	a1,a1,-1956 # 80006458 <CONSOLE_STATUS+0x448>
    80004c04:	00000097          	auipc	ra,0x0
    80004c08:	5f4080e7          	jalr	1524(ra) # 800051f8 <initlock>
    80004c0c:	01813083          	ld	ra,24(sp)
    80004c10:	01013403          	ld	s0,16(sp)
    80004c14:	0004ac23          	sw	zero,24(s1)
    80004c18:	00813483          	ld	s1,8(sp)
    80004c1c:	02010113          	addi	sp,sp,32
    80004c20:	00008067          	ret

0000000080004c24 <uartinit>:
    80004c24:	ff010113          	addi	sp,sp,-16
    80004c28:	00813423          	sd	s0,8(sp)
    80004c2c:	01010413          	addi	s0,sp,16
    80004c30:	100007b7          	lui	a5,0x10000
    80004c34:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80004c38:	f8000713          	li	a4,-128
    80004c3c:	00e781a3          	sb	a4,3(a5)
    80004c40:	00300713          	li	a4,3
    80004c44:	00e78023          	sb	a4,0(a5)
    80004c48:	000780a3          	sb	zero,1(a5)
    80004c4c:	00e781a3          	sb	a4,3(a5)
    80004c50:	00700693          	li	a3,7
    80004c54:	00d78123          	sb	a3,2(a5)
    80004c58:	00e780a3          	sb	a4,1(a5)
    80004c5c:	00813403          	ld	s0,8(sp)
    80004c60:	01010113          	addi	sp,sp,16
    80004c64:	00008067          	ret

0000000080004c68 <uartputc>:
    80004c68:	00002797          	auipc	a5,0x2
    80004c6c:	7107a783          	lw	a5,1808(a5) # 80007378 <panicked>
    80004c70:	00078463          	beqz	a5,80004c78 <uartputc+0x10>
    80004c74:	0000006f          	j	80004c74 <uartputc+0xc>
    80004c78:	fd010113          	addi	sp,sp,-48
    80004c7c:	02813023          	sd	s0,32(sp)
    80004c80:	00913c23          	sd	s1,24(sp)
    80004c84:	01213823          	sd	s2,16(sp)
    80004c88:	01313423          	sd	s3,8(sp)
    80004c8c:	02113423          	sd	ra,40(sp)
    80004c90:	03010413          	addi	s0,sp,48
    80004c94:	00002917          	auipc	s2,0x2
    80004c98:	6ec90913          	addi	s2,s2,1772 # 80007380 <uart_tx_r>
    80004c9c:	00093783          	ld	a5,0(s2)
    80004ca0:	00002497          	auipc	s1,0x2
    80004ca4:	6e848493          	addi	s1,s1,1768 # 80007388 <uart_tx_w>
    80004ca8:	0004b703          	ld	a4,0(s1)
    80004cac:	02078693          	addi	a3,a5,32
    80004cb0:	00050993          	mv	s3,a0
    80004cb4:	02e69c63          	bne	a3,a4,80004cec <uartputc+0x84>
    80004cb8:	00001097          	auipc	ra,0x1
    80004cbc:	834080e7          	jalr	-1996(ra) # 800054ec <push_on>
    80004cc0:	00093783          	ld	a5,0(s2)
    80004cc4:	0004b703          	ld	a4,0(s1)
    80004cc8:	02078793          	addi	a5,a5,32
    80004ccc:	00e79463          	bne	a5,a4,80004cd4 <uartputc+0x6c>
    80004cd0:	0000006f          	j	80004cd0 <uartputc+0x68>
    80004cd4:	00001097          	auipc	ra,0x1
    80004cd8:	88c080e7          	jalr	-1908(ra) # 80005560 <pop_on>
    80004cdc:	00093783          	ld	a5,0(s2)
    80004ce0:	0004b703          	ld	a4,0(s1)
    80004ce4:	02078693          	addi	a3,a5,32
    80004ce8:	fce688e3          	beq	a3,a4,80004cb8 <uartputc+0x50>
    80004cec:	01f77693          	andi	a3,a4,31
    80004cf0:	00004597          	auipc	a1,0x4
    80004cf4:	94058593          	addi	a1,a1,-1728 # 80008630 <uart_tx_buf>
    80004cf8:	00d586b3          	add	a3,a1,a3
    80004cfc:	00170713          	addi	a4,a4,1
    80004d00:	01368023          	sb	s3,0(a3)
    80004d04:	00e4b023          	sd	a4,0(s1)
    80004d08:	10000637          	lui	a2,0x10000
    80004d0c:	02f71063          	bne	a4,a5,80004d2c <uartputc+0xc4>
    80004d10:	0340006f          	j	80004d44 <uartputc+0xdc>
    80004d14:	00074703          	lbu	a4,0(a4)
    80004d18:	00f93023          	sd	a5,0(s2)
    80004d1c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80004d20:	00093783          	ld	a5,0(s2)
    80004d24:	0004b703          	ld	a4,0(s1)
    80004d28:	00f70e63          	beq	a4,a5,80004d44 <uartputc+0xdc>
    80004d2c:	00564683          	lbu	a3,5(a2)
    80004d30:	01f7f713          	andi	a4,a5,31
    80004d34:	00e58733          	add	a4,a1,a4
    80004d38:	0206f693          	andi	a3,a3,32
    80004d3c:	00178793          	addi	a5,a5,1
    80004d40:	fc069ae3          	bnez	a3,80004d14 <uartputc+0xac>
    80004d44:	02813083          	ld	ra,40(sp)
    80004d48:	02013403          	ld	s0,32(sp)
    80004d4c:	01813483          	ld	s1,24(sp)
    80004d50:	01013903          	ld	s2,16(sp)
    80004d54:	00813983          	ld	s3,8(sp)
    80004d58:	03010113          	addi	sp,sp,48
    80004d5c:	00008067          	ret

0000000080004d60 <uartputc_sync>:
    80004d60:	ff010113          	addi	sp,sp,-16
    80004d64:	00813423          	sd	s0,8(sp)
    80004d68:	01010413          	addi	s0,sp,16
    80004d6c:	00002717          	auipc	a4,0x2
    80004d70:	60c72703          	lw	a4,1548(a4) # 80007378 <panicked>
    80004d74:	02071663          	bnez	a4,80004da0 <uartputc_sync+0x40>
    80004d78:	00050793          	mv	a5,a0
    80004d7c:	100006b7          	lui	a3,0x10000
    80004d80:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80004d84:	02077713          	andi	a4,a4,32
    80004d88:	fe070ce3          	beqz	a4,80004d80 <uartputc_sync+0x20>
    80004d8c:	0ff7f793          	andi	a5,a5,255
    80004d90:	00f68023          	sb	a5,0(a3)
    80004d94:	00813403          	ld	s0,8(sp)
    80004d98:	01010113          	addi	sp,sp,16
    80004d9c:	00008067          	ret
    80004da0:	0000006f          	j	80004da0 <uartputc_sync+0x40>

0000000080004da4 <uartstart>:
    80004da4:	ff010113          	addi	sp,sp,-16
    80004da8:	00813423          	sd	s0,8(sp)
    80004dac:	01010413          	addi	s0,sp,16
    80004db0:	00002617          	auipc	a2,0x2
    80004db4:	5d060613          	addi	a2,a2,1488 # 80007380 <uart_tx_r>
    80004db8:	00002517          	auipc	a0,0x2
    80004dbc:	5d050513          	addi	a0,a0,1488 # 80007388 <uart_tx_w>
    80004dc0:	00063783          	ld	a5,0(a2)
    80004dc4:	00053703          	ld	a4,0(a0)
    80004dc8:	04f70263          	beq	a4,a5,80004e0c <uartstart+0x68>
    80004dcc:	100005b7          	lui	a1,0x10000
    80004dd0:	00004817          	auipc	a6,0x4
    80004dd4:	86080813          	addi	a6,a6,-1952 # 80008630 <uart_tx_buf>
    80004dd8:	01c0006f          	j	80004df4 <uartstart+0x50>
    80004ddc:	0006c703          	lbu	a4,0(a3)
    80004de0:	00f63023          	sd	a5,0(a2)
    80004de4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80004de8:	00063783          	ld	a5,0(a2)
    80004dec:	00053703          	ld	a4,0(a0)
    80004df0:	00f70e63          	beq	a4,a5,80004e0c <uartstart+0x68>
    80004df4:	01f7f713          	andi	a4,a5,31
    80004df8:	00e806b3          	add	a3,a6,a4
    80004dfc:	0055c703          	lbu	a4,5(a1)
    80004e00:	00178793          	addi	a5,a5,1
    80004e04:	02077713          	andi	a4,a4,32
    80004e08:	fc071ae3          	bnez	a4,80004ddc <uartstart+0x38>
    80004e0c:	00813403          	ld	s0,8(sp)
    80004e10:	01010113          	addi	sp,sp,16
    80004e14:	00008067          	ret

0000000080004e18 <uartgetc>:
    80004e18:	ff010113          	addi	sp,sp,-16
    80004e1c:	00813423          	sd	s0,8(sp)
    80004e20:	01010413          	addi	s0,sp,16
    80004e24:	10000737          	lui	a4,0x10000
    80004e28:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80004e2c:	0017f793          	andi	a5,a5,1
    80004e30:	00078c63          	beqz	a5,80004e48 <uartgetc+0x30>
    80004e34:	00074503          	lbu	a0,0(a4)
    80004e38:	0ff57513          	andi	a0,a0,255
    80004e3c:	00813403          	ld	s0,8(sp)
    80004e40:	01010113          	addi	sp,sp,16
    80004e44:	00008067          	ret
    80004e48:	fff00513          	li	a0,-1
    80004e4c:	ff1ff06f          	j	80004e3c <uartgetc+0x24>

0000000080004e50 <uartintr>:
    80004e50:	100007b7          	lui	a5,0x10000
    80004e54:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80004e58:	0017f793          	andi	a5,a5,1
    80004e5c:	0a078463          	beqz	a5,80004f04 <uartintr+0xb4>
    80004e60:	fe010113          	addi	sp,sp,-32
    80004e64:	00813823          	sd	s0,16(sp)
    80004e68:	00913423          	sd	s1,8(sp)
    80004e6c:	00113c23          	sd	ra,24(sp)
    80004e70:	02010413          	addi	s0,sp,32
    80004e74:	100004b7          	lui	s1,0x10000
    80004e78:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80004e7c:	0ff57513          	andi	a0,a0,255
    80004e80:	fffff097          	auipc	ra,0xfffff
    80004e84:	534080e7          	jalr	1332(ra) # 800043b4 <consoleintr>
    80004e88:	0054c783          	lbu	a5,5(s1)
    80004e8c:	0017f793          	andi	a5,a5,1
    80004e90:	fe0794e3          	bnez	a5,80004e78 <uartintr+0x28>
    80004e94:	00002617          	auipc	a2,0x2
    80004e98:	4ec60613          	addi	a2,a2,1260 # 80007380 <uart_tx_r>
    80004e9c:	00002517          	auipc	a0,0x2
    80004ea0:	4ec50513          	addi	a0,a0,1260 # 80007388 <uart_tx_w>
    80004ea4:	00063783          	ld	a5,0(a2)
    80004ea8:	00053703          	ld	a4,0(a0)
    80004eac:	04f70263          	beq	a4,a5,80004ef0 <uartintr+0xa0>
    80004eb0:	100005b7          	lui	a1,0x10000
    80004eb4:	00003817          	auipc	a6,0x3
    80004eb8:	77c80813          	addi	a6,a6,1916 # 80008630 <uart_tx_buf>
    80004ebc:	01c0006f          	j	80004ed8 <uartintr+0x88>
    80004ec0:	0006c703          	lbu	a4,0(a3)
    80004ec4:	00f63023          	sd	a5,0(a2)
    80004ec8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80004ecc:	00063783          	ld	a5,0(a2)
    80004ed0:	00053703          	ld	a4,0(a0)
    80004ed4:	00f70e63          	beq	a4,a5,80004ef0 <uartintr+0xa0>
    80004ed8:	01f7f713          	andi	a4,a5,31
    80004edc:	00e806b3          	add	a3,a6,a4
    80004ee0:	0055c703          	lbu	a4,5(a1)
    80004ee4:	00178793          	addi	a5,a5,1
    80004ee8:	02077713          	andi	a4,a4,32
    80004eec:	fc071ae3          	bnez	a4,80004ec0 <uartintr+0x70>
    80004ef0:	01813083          	ld	ra,24(sp)
    80004ef4:	01013403          	ld	s0,16(sp)
    80004ef8:	00813483          	ld	s1,8(sp)
    80004efc:	02010113          	addi	sp,sp,32
    80004f00:	00008067          	ret
    80004f04:	00002617          	auipc	a2,0x2
    80004f08:	47c60613          	addi	a2,a2,1148 # 80007380 <uart_tx_r>
    80004f0c:	00002517          	auipc	a0,0x2
    80004f10:	47c50513          	addi	a0,a0,1148 # 80007388 <uart_tx_w>
    80004f14:	00063783          	ld	a5,0(a2)
    80004f18:	00053703          	ld	a4,0(a0)
    80004f1c:	04f70263          	beq	a4,a5,80004f60 <uartintr+0x110>
    80004f20:	100005b7          	lui	a1,0x10000
    80004f24:	00003817          	auipc	a6,0x3
    80004f28:	70c80813          	addi	a6,a6,1804 # 80008630 <uart_tx_buf>
    80004f2c:	01c0006f          	j	80004f48 <uartintr+0xf8>
    80004f30:	0006c703          	lbu	a4,0(a3)
    80004f34:	00f63023          	sd	a5,0(a2)
    80004f38:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80004f3c:	00063783          	ld	a5,0(a2)
    80004f40:	00053703          	ld	a4,0(a0)
    80004f44:	02f70063          	beq	a4,a5,80004f64 <uartintr+0x114>
    80004f48:	01f7f713          	andi	a4,a5,31
    80004f4c:	00e806b3          	add	a3,a6,a4
    80004f50:	0055c703          	lbu	a4,5(a1)
    80004f54:	00178793          	addi	a5,a5,1
    80004f58:	02077713          	andi	a4,a4,32
    80004f5c:	fc071ae3          	bnez	a4,80004f30 <uartintr+0xe0>
    80004f60:	00008067          	ret
    80004f64:	00008067          	ret

0000000080004f68 <kinit>:
    80004f68:	fc010113          	addi	sp,sp,-64
    80004f6c:	02913423          	sd	s1,40(sp)
    80004f70:	fffff7b7          	lui	a5,0xfffff
    80004f74:	00004497          	auipc	s1,0x4
    80004f78:	6db48493          	addi	s1,s1,1755 # 8000964f <end+0xfff>
    80004f7c:	02813823          	sd	s0,48(sp)
    80004f80:	01313c23          	sd	s3,24(sp)
    80004f84:	00f4f4b3          	and	s1,s1,a5
    80004f88:	02113c23          	sd	ra,56(sp)
    80004f8c:	03213023          	sd	s2,32(sp)
    80004f90:	01413823          	sd	s4,16(sp)
    80004f94:	01513423          	sd	s5,8(sp)
    80004f98:	04010413          	addi	s0,sp,64
    80004f9c:	000017b7          	lui	a5,0x1
    80004fa0:	01100993          	li	s3,17
    80004fa4:	00f487b3          	add	a5,s1,a5
    80004fa8:	01b99993          	slli	s3,s3,0x1b
    80004fac:	06f9e063          	bltu	s3,a5,8000500c <kinit+0xa4>
    80004fb0:	00003a97          	auipc	s5,0x3
    80004fb4:	6a0a8a93          	addi	s5,s5,1696 # 80008650 <end>
    80004fb8:	0754ec63          	bltu	s1,s5,80005030 <kinit+0xc8>
    80004fbc:	0734fa63          	bgeu	s1,s3,80005030 <kinit+0xc8>
    80004fc0:	00088a37          	lui	s4,0x88
    80004fc4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80004fc8:	00002917          	auipc	s2,0x2
    80004fcc:	3c890913          	addi	s2,s2,968 # 80007390 <kmem>
    80004fd0:	00ca1a13          	slli	s4,s4,0xc
    80004fd4:	0140006f          	j	80004fe8 <kinit+0x80>
    80004fd8:	000017b7          	lui	a5,0x1
    80004fdc:	00f484b3          	add	s1,s1,a5
    80004fe0:	0554e863          	bltu	s1,s5,80005030 <kinit+0xc8>
    80004fe4:	0534f663          	bgeu	s1,s3,80005030 <kinit+0xc8>
    80004fe8:	00001637          	lui	a2,0x1
    80004fec:	00100593          	li	a1,1
    80004ff0:	00048513          	mv	a0,s1
    80004ff4:	00000097          	auipc	ra,0x0
    80004ff8:	5e4080e7          	jalr	1508(ra) # 800055d8 <__memset>
    80004ffc:	00093783          	ld	a5,0(s2)
    80005000:	00f4b023          	sd	a5,0(s1)
    80005004:	00993023          	sd	s1,0(s2)
    80005008:	fd4498e3          	bne	s1,s4,80004fd8 <kinit+0x70>
    8000500c:	03813083          	ld	ra,56(sp)
    80005010:	03013403          	ld	s0,48(sp)
    80005014:	02813483          	ld	s1,40(sp)
    80005018:	02013903          	ld	s2,32(sp)
    8000501c:	01813983          	ld	s3,24(sp)
    80005020:	01013a03          	ld	s4,16(sp)
    80005024:	00813a83          	ld	s5,8(sp)
    80005028:	04010113          	addi	sp,sp,64
    8000502c:	00008067          	ret
    80005030:	00001517          	auipc	a0,0x1
    80005034:	44850513          	addi	a0,a0,1096 # 80006478 <digits+0x18>
    80005038:	fffff097          	auipc	ra,0xfffff
    8000503c:	4b4080e7          	jalr	1204(ra) # 800044ec <panic>

0000000080005040 <freerange>:
    80005040:	fc010113          	addi	sp,sp,-64
    80005044:	000017b7          	lui	a5,0x1
    80005048:	02913423          	sd	s1,40(sp)
    8000504c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80005050:	009504b3          	add	s1,a0,s1
    80005054:	fffff537          	lui	a0,0xfffff
    80005058:	02813823          	sd	s0,48(sp)
    8000505c:	02113c23          	sd	ra,56(sp)
    80005060:	03213023          	sd	s2,32(sp)
    80005064:	01313c23          	sd	s3,24(sp)
    80005068:	01413823          	sd	s4,16(sp)
    8000506c:	01513423          	sd	s5,8(sp)
    80005070:	01613023          	sd	s6,0(sp)
    80005074:	04010413          	addi	s0,sp,64
    80005078:	00a4f4b3          	and	s1,s1,a0
    8000507c:	00f487b3          	add	a5,s1,a5
    80005080:	06f5e463          	bltu	a1,a5,800050e8 <freerange+0xa8>
    80005084:	00003a97          	auipc	s5,0x3
    80005088:	5cca8a93          	addi	s5,s5,1484 # 80008650 <end>
    8000508c:	0954e263          	bltu	s1,s5,80005110 <freerange+0xd0>
    80005090:	01100993          	li	s3,17
    80005094:	01b99993          	slli	s3,s3,0x1b
    80005098:	0734fc63          	bgeu	s1,s3,80005110 <freerange+0xd0>
    8000509c:	00058a13          	mv	s4,a1
    800050a0:	00002917          	auipc	s2,0x2
    800050a4:	2f090913          	addi	s2,s2,752 # 80007390 <kmem>
    800050a8:	00002b37          	lui	s6,0x2
    800050ac:	0140006f          	j	800050c0 <freerange+0x80>
    800050b0:	000017b7          	lui	a5,0x1
    800050b4:	00f484b3          	add	s1,s1,a5
    800050b8:	0554ec63          	bltu	s1,s5,80005110 <freerange+0xd0>
    800050bc:	0534fa63          	bgeu	s1,s3,80005110 <freerange+0xd0>
    800050c0:	00001637          	lui	a2,0x1
    800050c4:	00100593          	li	a1,1
    800050c8:	00048513          	mv	a0,s1
    800050cc:	00000097          	auipc	ra,0x0
    800050d0:	50c080e7          	jalr	1292(ra) # 800055d8 <__memset>
    800050d4:	00093703          	ld	a4,0(s2)
    800050d8:	016487b3          	add	a5,s1,s6
    800050dc:	00e4b023          	sd	a4,0(s1)
    800050e0:	00993023          	sd	s1,0(s2)
    800050e4:	fcfa76e3          	bgeu	s4,a5,800050b0 <freerange+0x70>
    800050e8:	03813083          	ld	ra,56(sp)
    800050ec:	03013403          	ld	s0,48(sp)
    800050f0:	02813483          	ld	s1,40(sp)
    800050f4:	02013903          	ld	s2,32(sp)
    800050f8:	01813983          	ld	s3,24(sp)
    800050fc:	01013a03          	ld	s4,16(sp)
    80005100:	00813a83          	ld	s5,8(sp)
    80005104:	00013b03          	ld	s6,0(sp)
    80005108:	04010113          	addi	sp,sp,64
    8000510c:	00008067          	ret
    80005110:	00001517          	auipc	a0,0x1
    80005114:	36850513          	addi	a0,a0,872 # 80006478 <digits+0x18>
    80005118:	fffff097          	auipc	ra,0xfffff
    8000511c:	3d4080e7          	jalr	980(ra) # 800044ec <panic>

0000000080005120 <kfree>:
    80005120:	fe010113          	addi	sp,sp,-32
    80005124:	00813823          	sd	s0,16(sp)
    80005128:	00113c23          	sd	ra,24(sp)
    8000512c:	00913423          	sd	s1,8(sp)
    80005130:	02010413          	addi	s0,sp,32
    80005134:	03451793          	slli	a5,a0,0x34
    80005138:	04079c63          	bnez	a5,80005190 <kfree+0x70>
    8000513c:	00003797          	auipc	a5,0x3
    80005140:	51478793          	addi	a5,a5,1300 # 80008650 <end>
    80005144:	00050493          	mv	s1,a0
    80005148:	04f56463          	bltu	a0,a5,80005190 <kfree+0x70>
    8000514c:	01100793          	li	a5,17
    80005150:	01b79793          	slli	a5,a5,0x1b
    80005154:	02f57e63          	bgeu	a0,a5,80005190 <kfree+0x70>
    80005158:	00001637          	lui	a2,0x1
    8000515c:	00100593          	li	a1,1
    80005160:	00000097          	auipc	ra,0x0
    80005164:	478080e7          	jalr	1144(ra) # 800055d8 <__memset>
    80005168:	00002797          	auipc	a5,0x2
    8000516c:	22878793          	addi	a5,a5,552 # 80007390 <kmem>
    80005170:	0007b703          	ld	a4,0(a5)
    80005174:	01813083          	ld	ra,24(sp)
    80005178:	01013403          	ld	s0,16(sp)
    8000517c:	00e4b023          	sd	a4,0(s1)
    80005180:	0097b023          	sd	s1,0(a5)
    80005184:	00813483          	ld	s1,8(sp)
    80005188:	02010113          	addi	sp,sp,32
    8000518c:	00008067          	ret
    80005190:	00001517          	auipc	a0,0x1
    80005194:	2e850513          	addi	a0,a0,744 # 80006478 <digits+0x18>
    80005198:	fffff097          	auipc	ra,0xfffff
    8000519c:	354080e7          	jalr	852(ra) # 800044ec <panic>

00000000800051a0 <kalloc>:
    800051a0:	fe010113          	addi	sp,sp,-32
    800051a4:	00813823          	sd	s0,16(sp)
    800051a8:	00913423          	sd	s1,8(sp)
    800051ac:	00113c23          	sd	ra,24(sp)
    800051b0:	02010413          	addi	s0,sp,32
    800051b4:	00002797          	auipc	a5,0x2
    800051b8:	1dc78793          	addi	a5,a5,476 # 80007390 <kmem>
    800051bc:	0007b483          	ld	s1,0(a5)
    800051c0:	02048063          	beqz	s1,800051e0 <kalloc+0x40>
    800051c4:	0004b703          	ld	a4,0(s1)
    800051c8:	00001637          	lui	a2,0x1
    800051cc:	00500593          	li	a1,5
    800051d0:	00048513          	mv	a0,s1
    800051d4:	00e7b023          	sd	a4,0(a5)
    800051d8:	00000097          	auipc	ra,0x0
    800051dc:	400080e7          	jalr	1024(ra) # 800055d8 <__memset>
    800051e0:	01813083          	ld	ra,24(sp)
    800051e4:	01013403          	ld	s0,16(sp)
    800051e8:	00048513          	mv	a0,s1
    800051ec:	00813483          	ld	s1,8(sp)
    800051f0:	02010113          	addi	sp,sp,32
    800051f4:	00008067          	ret

00000000800051f8 <initlock>:
    800051f8:	ff010113          	addi	sp,sp,-16
    800051fc:	00813423          	sd	s0,8(sp)
    80005200:	01010413          	addi	s0,sp,16
    80005204:	00813403          	ld	s0,8(sp)
    80005208:	00b53423          	sd	a1,8(a0)
    8000520c:	00052023          	sw	zero,0(a0)
    80005210:	00053823          	sd	zero,16(a0)
    80005214:	01010113          	addi	sp,sp,16
    80005218:	00008067          	ret

000000008000521c <acquire>:
    8000521c:	fe010113          	addi	sp,sp,-32
    80005220:	00813823          	sd	s0,16(sp)
    80005224:	00913423          	sd	s1,8(sp)
    80005228:	00113c23          	sd	ra,24(sp)
    8000522c:	01213023          	sd	s2,0(sp)
    80005230:	02010413          	addi	s0,sp,32
    80005234:	00050493          	mv	s1,a0
    80005238:	10002973          	csrr	s2,sstatus
    8000523c:	100027f3          	csrr	a5,sstatus
    80005240:	ffd7f793          	andi	a5,a5,-3
    80005244:	10079073          	csrw	sstatus,a5
    80005248:	fffff097          	auipc	ra,0xfffff
    8000524c:	8e0080e7          	jalr	-1824(ra) # 80003b28 <mycpu>
    80005250:	07852783          	lw	a5,120(a0)
    80005254:	06078e63          	beqz	a5,800052d0 <acquire+0xb4>
    80005258:	fffff097          	auipc	ra,0xfffff
    8000525c:	8d0080e7          	jalr	-1840(ra) # 80003b28 <mycpu>
    80005260:	07852783          	lw	a5,120(a0)
    80005264:	0004a703          	lw	a4,0(s1)
    80005268:	0017879b          	addiw	a5,a5,1
    8000526c:	06f52c23          	sw	a5,120(a0)
    80005270:	04071063          	bnez	a4,800052b0 <acquire+0x94>
    80005274:	00100713          	li	a4,1
    80005278:	00070793          	mv	a5,a4
    8000527c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80005280:	0007879b          	sext.w	a5,a5
    80005284:	fe079ae3          	bnez	a5,80005278 <acquire+0x5c>
    80005288:	0ff0000f          	fence
    8000528c:	fffff097          	auipc	ra,0xfffff
    80005290:	89c080e7          	jalr	-1892(ra) # 80003b28 <mycpu>
    80005294:	01813083          	ld	ra,24(sp)
    80005298:	01013403          	ld	s0,16(sp)
    8000529c:	00a4b823          	sd	a0,16(s1)
    800052a0:	00013903          	ld	s2,0(sp)
    800052a4:	00813483          	ld	s1,8(sp)
    800052a8:	02010113          	addi	sp,sp,32
    800052ac:	00008067          	ret
    800052b0:	0104b903          	ld	s2,16(s1)
    800052b4:	fffff097          	auipc	ra,0xfffff
    800052b8:	874080e7          	jalr	-1932(ra) # 80003b28 <mycpu>
    800052bc:	faa91ce3          	bne	s2,a0,80005274 <acquire+0x58>
    800052c0:	00001517          	auipc	a0,0x1
    800052c4:	1c050513          	addi	a0,a0,448 # 80006480 <digits+0x20>
    800052c8:	fffff097          	auipc	ra,0xfffff
    800052cc:	224080e7          	jalr	548(ra) # 800044ec <panic>
    800052d0:	00195913          	srli	s2,s2,0x1
    800052d4:	fffff097          	auipc	ra,0xfffff
    800052d8:	854080e7          	jalr	-1964(ra) # 80003b28 <mycpu>
    800052dc:	00197913          	andi	s2,s2,1
    800052e0:	07252e23          	sw	s2,124(a0)
    800052e4:	f75ff06f          	j	80005258 <acquire+0x3c>

00000000800052e8 <release>:
    800052e8:	fe010113          	addi	sp,sp,-32
    800052ec:	00813823          	sd	s0,16(sp)
    800052f0:	00113c23          	sd	ra,24(sp)
    800052f4:	00913423          	sd	s1,8(sp)
    800052f8:	01213023          	sd	s2,0(sp)
    800052fc:	02010413          	addi	s0,sp,32
    80005300:	00052783          	lw	a5,0(a0)
    80005304:	00079a63          	bnez	a5,80005318 <release+0x30>
    80005308:	00001517          	auipc	a0,0x1
    8000530c:	18050513          	addi	a0,a0,384 # 80006488 <digits+0x28>
    80005310:	fffff097          	auipc	ra,0xfffff
    80005314:	1dc080e7          	jalr	476(ra) # 800044ec <panic>
    80005318:	01053903          	ld	s2,16(a0)
    8000531c:	00050493          	mv	s1,a0
    80005320:	fffff097          	auipc	ra,0xfffff
    80005324:	808080e7          	jalr	-2040(ra) # 80003b28 <mycpu>
    80005328:	fea910e3          	bne	s2,a0,80005308 <release+0x20>
    8000532c:	0004b823          	sd	zero,16(s1)
    80005330:	0ff0000f          	fence
    80005334:	0f50000f          	fence	iorw,ow
    80005338:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000533c:	ffffe097          	auipc	ra,0xffffe
    80005340:	7ec080e7          	jalr	2028(ra) # 80003b28 <mycpu>
    80005344:	100027f3          	csrr	a5,sstatus
    80005348:	0027f793          	andi	a5,a5,2
    8000534c:	04079a63          	bnez	a5,800053a0 <release+0xb8>
    80005350:	07852783          	lw	a5,120(a0)
    80005354:	02f05e63          	blez	a5,80005390 <release+0xa8>
    80005358:	fff7871b          	addiw	a4,a5,-1
    8000535c:	06e52c23          	sw	a4,120(a0)
    80005360:	00071c63          	bnez	a4,80005378 <release+0x90>
    80005364:	07c52783          	lw	a5,124(a0)
    80005368:	00078863          	beqz	a5,80005378 <release+0x90>
    8000536c:	100027f3          	csrr	a5,sstatus
    80005370:	0027e793          	ori	a5,a5,2
    80005374:	10079073          	csrw	sstatus,a5
    80005378:	01813083          	ld	ra,24(sp)
    8000537c:	01013403          	ld	s0,16(sp)
    80005380:	00813483          	ld	s1,8(sp)
    80005384:	00013903          	ld	s2,0(sp)
    80005388:	02010113          	addi	sp,sp,32
    8000538c:	00008067          	ret
    80005390:	00001517          	auipc	a0,0x1
    80005394:	11850513          	addi	a0,a0,280 # 800064a8 <digits+0x48>
    80005398:	fffff097          	auipc	ra,0xfffff
    8000539c:	154080e7          	jalr	340(ra) # 800044ec <panic>
    800053a0:	00001517          	auipc	a0,0x1
    800053a4:	0f050513          	addi	a0,a0,240 # 80006490 <digits+0x30>
    800053a8:	fffff097          	auipc	ra,0xfffff
    800053ac:	144080e7          	jalr	324(ra) # 800044ec <panic>

00000000800053b0 <holding>:
    800053b0:	00052783          	lw	a5,0(a0)
    800053b4:	00079663          	bnez	a5,800053c0 <holding+0x10>
    800053b8:	00000513          	li	a0,0
    800053bc:	00008067          	ret
    800053c0:	fe010113          	addi	sp,sp,-32
    800053c4:	00813823          	sd	s0,16(sp)
    800053c8:	00913423          	sd	s1,8(sp)
    800053cc:	00113c23          	sd	ra,24(sp)
    800053d0:	02010413          	addi	s0,sp,32
    800053d4:	01053483          	ld	s1,16(a0)
    800053d8:	ffffe097          	auipc	ra,0xffffe
    800053dc:	750080e7          	jalr	1872(ra) # 80003b28 <mycpu>
    800053e0:	01813083          	ld	ra,24(sp)
    800053e4:	01013403          	ld	s0,16(sp)
    800053e8:	40a48533          	sub	a0,s1,a0
    800053ec:	00153513          	seqz	a0,a0
    800053f0:	00813483          	ld	s1,8(sp)
    800053f4:	02010113          	addi	sp,sp,32
    800053f8:	00008067          	ret

00000000800053fc <push_off>:
    800053fc:	fe010113          	addi	sp,sp,-32
    80005400:	00813823          	sd	s0,16(sp)
    80005404:	00113c23          	sd	ra,24(sp)
    80005408:	00913423          	sd	s1,8(sp)
    8000540c:	02010413          	addi	s0,sp,32
    80005410:	100024f3          	csrr	s1,sstatus
    80005414:	100027f3          	csrr	a5,sstatus
    80005418:	ffd7f793          	andi	a5,a5,-3
    8000541c:	10079073          	csrw	sstatus,a5
    80005420:	ffffe097          	auipc	ra,0xffffe
    80005424:	708080e7          	jalr	1800(ra) # 80003b28 <mycpu>
    80005428:	07852783          	lw	a5,120(a0)
    8000542c:	02078663          	beqz	a5,80005458 <push_off+0x5c>
    80005430:	ffffe097          	auipc	ra,0xffffe
    80005434:	6f8080e7          	jalr	1784(ra) # 80003b28 <mycpu>
    80005438:	07852783          	lw	a5,120(a0)
    8000543c:	01813083          	ld	ra,24(sp)
    80005440:	01013403          	ld	s0,16(sp)
    80005444:	0017879b          	addiw	a5,a5,1
    80005448:	06f52c23          	sw	a5,120(a0)
    8000544c:	00813483          	ld	s1,8(sp)
    80005450:	02010113          	addi	sp,sp,32
    80005454:	00008067          	ret
    80005458:	0014d493          	srli	s1,s1,0x1
    8000545c:	ffffe097          	auipc	ra,0xffffe
    80005460:	6cc080e7          	jalr	1740(ra) # 80003b28 <mycpu>
    80005464:	0014f493          	andi	s1,s1,1
    80005468:	06952e23          	sw	s1,124(a0)
    8000546c:	fc5ff06f          	j	80005430 <push_off+0x34>

0000000080005470 <pop_off>:
    80005470:	ff010113          	addi	sp,sp,-16
    80005474:	00813023          	sd	s0,0(sp)
    80005478:	00113423          	sd	ra,8(sp)
    8000547c:	01010413          	addi	s0,sp,16
    80005480:	ffffe097          	auipc	ra,0xffffe
    80005484:	6a8080e7          	jalr	1704(ra) # 80003b28 <mycpu>
    80005488:	100027f3          	csrr	a5,sstatus
    8000548c:	0027f793          	andi	a5,a5,2
    80005490:	04079663          	bnez	a5,800054dc <pop_off+0x6c>
    80005494:	07852783          	lw	a5,120(a0)
    80005498:	02f05a63          	blez	a5,800054cc <pop_off+0x5c>
    8000549c:	fff7871b          	addiw	a4,a5,-1
    800054a0:	06e52c23          	sw	a4,120(a0)
    800054a4:	00071c63          	bnez	a4,800054bc <pop_off+0x4c>
    800054a8:	07c52783          	lw	a5,124(a0)
    800054ac:	00078863          	beqz	a5,800054bc <pop_off+0x4c>
    800054b0:	100027f3          	csrr	a5,sstatus
    800054b4:	0027e793          	ori	a5,a5,2
    800054b8:	10079073          	csrw	sstatus,a5
    800054bc:	00813083          	ld	ra,8(sp)
    800054c0:	00013403          	ld	s0,0(sp)
    800054c4:	01010113          	addi	sp,sp,16
    800054c8:	00008067          	ret
    800054cc:	00001517          	auipc	a0,0x1
    800054d0:	fdc50513          	addi	a0,a0,-36 # 800064a8 <digits+0x48>
    800054d4:	fffff097          	auipc	ra,0xfffff
    800054d8:	018080e7          	jalr	24(ra) # 800044ec <panic>
    800054dc:	00001517          	auipc	a0,0x1
    800054e0:	fb450513          	addi	a0,a0,-76 # 80006490 <digits+0x30>
    800054e4:	fffff097          	auipc	ra,0xfffff
    800054e8:	008080e7          	jalr	8(ra) # 800044ec <panic>

00000000800054ec <push_on>:
    800054ec:	fe010113          	addi	sp,sp,-32
    800054f0:	00813823          	sd	s0,16(sp)
    800054f4:	00113c23          	sd	ra,24(sp)
    800054f8:	00913423          	sd	s1,8(sp)
    800054fc:	02010413          	addi	s0,sp,32
    80005500:	100024f3          	csrr	s1,sstatus
    80005504:	100027f3          	csrr	a5,sstatus
    80005508:	0027e793          	ori	a5,a5,2
    8000550c:	10079073          	csrw	sstatus,a5
    80005510:	ffffe097          	auipc	ra,0xffffe
    80005514:	618080e7          	jalr	1560(ra) # 80003b28 <mycpu>
    80005518:	07852783          	lw	a5,120(a0)
    8000551c:	02078663          	beqz	a5,80005548 <push_on+0x5c>
    80005520:	ffffe097          	auipc	ra,0xffffe
    80005524:	608080e7          	jalr	1544(ra) # 80003b28 <mycpu>
    80005528:	07852783          	lw	a5,120(a0)
    8000552c:	01813083          	ld	ra,24(sp)
    80005530:	01013403          	ld	s0,16(sp)
    80005534:	0017879b          	addiw	a5,a5,1
    80005538:	06f52c23          	sw	a5,120(a0)
    8000553c:	00813483          	ld	s1,8(sp)
    80005540:	02010113          	addi	sp,sp,32
    80005544:	00008067          	ret
    80005548:	0014d493          	srli	s1,s1,0x1
    8000554c:	ffffe097          	auipc	ra,0xffffe
    80005550:	5dc080e7          	jalr	1500(ra) # 80003b28 <mycpu>
    80005554:	0014f493          	andi	s1,s1,1
    80005558:	06952e23          	sw	s1,124(a0)
    8000555c:	fc5ff06f          	j	80005520 <push_on+0x34>

0000000080005560 <pop_on>:
    80005560:	ff010113          	addi	sp,sp,-16
    80005564:	00813023          	sd	s0,0(sp)
    80005568:	00113423          	sd	ra,8(sp)
    8000556c:	01010413          	addi	s0,sp,16
    80005570:	ffffe097          	auipc	ra,0xffffe
    80005574:	5b8080e7          	jalr	1464(ra) # 80003b28 <mycpu>
    80005578:	100027f3          	csrr	a5,sstatus
    8000557c:	0027f793          	andi	a5,a5,2
    80005580:	04078463          	beqz	a5,800055c8 <pop_on+0x68>
    80005584:	07852783          	lw	a5,120(a0)
    80005588:	02f05863          	blez	a5,800055b8 <pop_on+0x58>
    8000558c:	fff7879b          	addiw	a5,a5,-1
    80005590:	06f52c23          	sw	a5,120(a0)
    80005594:	07853783          	ld	a5,120(a0)
    80005598:	00079863          	bnez	a5,800055a8 <pop_on+0x48>
    8000559c:	100027f3          	csrr	a5,sstatus
    800055a0:	ffd7f793          	andi	a5,a5,-3
    800055a4:	10079073          	csrw	sstatus,a5
    800055a8:	00813083          	ld	ra,8(sp)
    800055ac:	00013403          	ld	s0,0(sp)
    800055b0:	01010113          	addi	sp,sp,16
    800055b4:	00008067          	ret
    800055b8:	00001517          	auipc	a0,0x1
    800055bc:	f1850513          	addi	a0,a0,-232 # 800064d0 <digits+0x70>
    800055c0:	fffff097          	auipc	ra,0xfffff
    800055c4:	f2c080e7          	jalr	-212(ra) # 800044ec <panic>
    800055c8:	00001517          	auipc	a0,0x1
    800055cc:	ee850513          	addi	a0,a0,-280 # 800064b0 <digits+0x50>
    800055d0:	fffff097          	auipc	ra,0xfffff
    800055d4:	f1c080e7          	jalr	-228(ra) # 800044ec <panic>

00000000800055d8 <__memset>:
    800055d8:	ff010113          	addi	sp,sp,-16
    800055dc:	00813423          	sd	s0,8(sp)
    800055e0:	01010413          	addi	s0,sp,16
    800055e4:	1a060e63          	beqz	a2,800057a0 <__memset+0x1c8>
    800055e8:	40a007b3          	neg	a5,a0
    800055ec:	0077f793          	andi	a5,a5,7
    800055f0:	00778693          	addi	a3,a5,7
    800055f4:	00b00813          	li	a6,11
    800055f8:	0ff5f593          	andi	a1,a1,255
    800055fc:	fff6071b          	addiw	a4,a2,-1
    80005600:	1b06e663          	bltu	a3,a6,800057ac <__memset+0x1d4>
    80005604:	1cd76463          	bltu	a4,a3,800057cc <__memset+0x1f4>
    80005608:	1a078e63          	beqz	a5,800057c4 <__memset+0x1ec>
    8000560c:	00b50023          	sb	a1,0(a0)
    80005610:	00100713          	li	a4,1
    80005614:	1ae78463          	beq	a5,a4,800057bc <__memset+0x1e4>
    80005618:	00b500a3          	sb	a1,1(a0)
    8000561c:	00200713          	li	a4,2
    80005620:	1ae78a63          	beq	a5,a4,800057d4 <__memset+0x1fc>
    80005624:	00b50123          	sb	a1,2(a0)
    80005628:	00300713          	li	a4,3
    8000562c:	18e78463          	beq	a5,a4,800057b4 <__memset+0x1dc>
    80005630:	00b501a3          	sb	a1,3(a0)
    80005634:	00400713          	li	a4,4
    80005638:	1ae78263          	beq	a5,a4,800057dc <__memset+0x204>
    8000563c:	00b50223          	sb	a1,4(a0)
    80005640:	00500713          	li	a4,5
    80005644:	1ae78063          	beq	a5,a4,800057e4 <__memset+0x20c>
    80005648:	00b502a3          	sb	a1,5(a0)
    8000564c:	00700713          	li	a4,7
    80005650:	18e79e63          	bne	a5,a4,800057ec <__memset+0x214>
    80005654:	00b50323          	sb	a1,6(a0)
    80005658:	00700e93          	li	t4,7
    8000565c:	00859713          	slli	a4,a1,0x8
    80005660:	00e5e733          	or	a4,a1,a4
    80005664:	01059e13          	slli	t3,a1,0x10
    80005668:	01c76e33          	or	t3,a4,t3
    8000566c:	01859313          	slli	t1,a1,0x18
    80005670:	006e6333          	or	t1,t3,t1
    80005674:	02059893          	slli	a7,a1,0x20
    80005678:	40f60e3b          	subw	t3,a2,a5
    8000567c:	011368b3          	or	a7,t1,a7
    80005680:	02859813          	slli	a6,a1,0x28
    80005684:	0108e833          	or	a6,a7,a6
    80005688:	03059693          	slli	a3,a1,0x30
    8000568c:	003e589b          	srliw	a7,t3,0x3
    80005690:	00d866b3          	or	a3,a6,a3
    80005694:	03859713          	slli	a4,a1,0x38
    80005698:	00389813          	slli	a6,a7,0x3
    8000569c:	00f507b3          	add	a5,a0,a5
    800056a0:	00e6e733          	or	a4,a3,a4
    800056a4:	000e089b          	sext.w	a7,t3
    800056a8:	00f806b3          	add	a3,a6,a5
    800056ac:	00e7b023          	sd	a4,0(a5)
    800056b0:	00878793          	addi	a5,a5,8
    800056b4:	fed79ce3          	bne	a5,a3,800056ac <__memset+0xd4>
    800056b8:	ff8e7793          	andi	a5,t3,-8
    800056bc:	0007871b          	sext.w	a4,a5
    800056c0:	01d787bb          	addw	a5,a5,t4
    800056c4:	0ce88e63          	beq	a7,a4,800057a0 <__memset+0x1c8>
    800056c8:	00f50733          	add	a4,a0,a5
    800056cc:	00b70023          	sb	a1,0(a4)
    800056d0:	0017871b          	addiw	a4,a5,1
    800056d4:	0cc77663          	bgeu	a4,a2,800057a0 <__memset+0x1c8>
    800056d8:	00e50733          	add	a4,a0,a4
    800056dc:	00b70023          	sb	a1,0(a4)
    800056e0:	0027871b          	addiw	a4,a5,2
    800056e4:	0ac77e63          	bgeu	a4,a2,800057a0 <__memset+0x1c8>
    800056e8:	00e50733          	add	a4,a0,a4
    800056ec:	00b70023          	sb	a1,0(a4)
    800056f0:	0037871b          	addiw	a4,a5,3
    800056f4:	0ac77663          	bgeu	a4,a2,800057a0 <__memset+0x1c8>
    800056f8:	00e50733          	add	a4,a0,a4
    800056fc:	00b70023          	sb	a1,0(a4)
    80005700:	0047871b          	addiw	a4,a5,4
    80005704:	08c77e63          	bgeu	a4,a2,800057a0 <__memset+0x1c8>
    80005708:	00e50733          	add	a4,a0,a4
    8000570c:	00b70023          	sb	a1,0(a4)
    80005710:	0057871b          	addiw	a4,a5,5
    80005714:	08c77663          	bgeu	a4,a2,800057a0 <__memset+0x1c8>
    80005718:	00e50733          	add	a4,a0,a4
    8000571c:	00b70023          	sb	a1,0(a4)
    80005720:	0067871b          	addiw	a4,a5,6
    80005724:	06c77e63          	bgeu	a4,a2,800057a0 <__memset+0x1c8>
    80005728:	00e50733          	add	a4,a0,a4
    8000572c:	00b70023          	sb	a1,0(a4)
    80005730:	0077871b          	addiw	a4,a5,7
    80005734:	06c77663          	bgeu	a4,a2,800057a0 <__memset+0x1c8>
    80005738:	00e50733          	add	a4,a0,a4
    8000573c:	00b70023          	sb	a1,0(a4)
    80005740:	0087871b          	addiw	a4,a5,8
    80005744:	04c77e63          	bgeu	a4,a2,800057a0 <__memset+0x1c8>
    80005748:	00e50733          	add	a4,a0,a4
    8000574c:	00b70023          	sb	a1,0(a4)
    80005750:	0097871b          	addiw	a4,a5,9
    80005754:	04c77663          	bgeu	a4,a2,800057a0 <__memset+0x1c8>
    80005758:	00e50733          	add	a4,a0,a4
    8000575c:	00b70023          	sb	a1,0(a4)
    80005760:	00a7871b          	addiw	a4,a5,10
    80005764:	02c77e63          	bgeu	a4,a2,800057a0 <__memset+0x1c8>
    80005768:	00e50733          	add	a4,a0,a4
    8000576c:	00b70023          	sb	a1,0(a4)
    80005770:	00b7871b          	addiw	a4,a5,11
    80005774:	02c77663          	bgeu	a4,a2,800057a0 <__memset+0x1c8>
    80005778:	00e50733          	add	a4,a0,a4
    8000577c:	00b70023          	sb	a1,0(a4)
    80005780:	00c7871b          	addiw	a4,a5,12
    80005784:	00c77e63          	bgeu	a4,a2,800057a0 <__memset+0x1c8>
    80005788:	00e50733          	add	a4,a0,a4
    8000578c:	00b70023          	sb	a1,0(a4)
    80005790:	00d7879b          	addiw	a5,a5,13
    80005794:	00c7f663          	bgeu	a5,a2,800057a0 <__memset+0x1c8>
    80005798:	00f507b3          	add	a5,a0,a5
    8000579c:	00b78023          	sb	a1,0(a5)
    800057a0:	00813403          	ld	s0,8(sp)
    800057a4:	01010113          	addi	sp,sp,16
    800057a8:	00008067          	ret
    800057ac:	00b00693          	li	a3,11
    800057b0:	e55ff06f          	j	80005604 <__memset+0x2c>
    800057b4:	00300e93          	li	t4,3
    800057b8:	ea5ff06f          	j	8000565c <__memset+0x84>
    800057bc:	00100e93          	li	t4,1
    800057c0:	e9dff06f          	j	8000565c <__memset+0x84>
    800057c4:	00000e93          	li	t4,0
    800057c8:	e95ff06f          	j	8000565c <__memset+0x84>
    800057cc:	00000793          	li	a5,0
    800057d0:	ef9ff06f          	j	800056c8 <__memset+0xf0>
    800057d4:	00200e93          	li	t4,2
    800057d8:	e85ff06f          	j	8000565c <__memset+0x84>
    800057dc:	00400e93          	li	t4,4
    800057e0:	e7dff06f          	j	8000565c <__memset+0x84>
    800057e4:	00500e93          	li	t4,5
    800057e8:	e75ff06f          	j	8000565c <__memset+0x84>
    800057ec:	00600e93          	li	t4,6
    800057f0:	e6dff06f          	j	8000565c <__memset+0x84>

00000000800057f4 <__memmove>:
    800057f4:	ff010113          	addi	sp,sp,-16
    800057f8:	00813423          	sd	s0,8(sp)
    800057fc:	01010413          	addi	s0,sp,16
    80005800:	0e060863          	beqz	a2,800058f0 <__memmove+0xfc>
    80005804:	fff6069b          	addiw	a3,a2,-1
    80005808:	0006881b          	sext.w	a6,a3
    8000580c:	0ea5e863          	bltu	a1,a0,800058fc <__memmove+0x108>
    80005810:	00758713          	addi	a4,a1,7
    80005814:	00a5e7b3          	or	a5,a1,a0
    80005818:	40a70733          	sub	a4,a4,a0
    8000581c:	0077f793          	andi	a5,a5,7
    80005820:	00f73713          	sltiu	a4,a4,15
    80005824:	00174713          	xori	a4,a4,1
    80005828:	0017b793          	seqz	a5,a5
    8000582c:	00e7f7b3          	and	a5,a5,a4
    80005830:	10078863          	beqz	a5,80005940 <__memmove+0x14c>
    80005834:	00900793          	li	a5,9
    80005838:	1107f463          	bgeu	a5,a6,80005940 <__memmove+0x14c>
    8000583c:	0036581b          	srliw	a6,a2,0x3
    80005840:	fff8081b          	addiw	a6,a6,-1
    80005844:	02081813          	slli	a6,a6,0x20
    80005848:	01d85893          	srli	a7,a6,0x1d
    8000584c:	00858813          	addi	a6,a1,8
    80005850:	00058793          	mv	a5,a1
    80005854:	00050713          	mv	a4,a0
    80005858:	01088833          	add	a6,a7,a6
    8000585c:	0007b883          	ld	a7,0(a5)
    80005860:	00878793          	addi	a5,a5,8
    80005864:	00870713          	addi	a4,a4,8
    80005868:	ff173c23          	sd	a7,-8(a4)
    8000586c:	ff0798e3          	bne	a5,a6,8000585c <__memmove+0x68>
    80005870:	ff867713          	andi	a4,a2,-8
    80005874:	02071793          	slli	a5,a4,0x20
    80005878:	0207d793          	srli	a5,a5,0x20
    8000587c:	00f585b3          	add	a1,a1,a5
    80005880:	40e686bb          	subw	a3,a3,a4
    80005884:	00f507b3          	add	a5,a0,a5
    80005888:	06e60463          	beq	a2,a4,800058f0 <__memmove+0xfc>
    8000588c:	0005c703          	lbu	a4,0(a1)
    80005890:	00e78023          	sb	a4,0(a5)
    80005894:	04068e63          	beqz	a3,800058f0 <__memmove+0xfc>
    80005898:	0015c603          	lbu	a2,1(a1)
    8000589c:	00100713          	li	a4,1
    800058a0:	00c780a3          	sb	a2,1(a5)
    800058a4:	04e68663          	beq	a3,a4,800058f0 <__memmove+0xfc>
    800058a8:	0025c603          	lbu	a2,2(a1)
    800058ac:	00200713          	li	a4,2
    800058b0:	00c78123          	sb	a2,2(a5)
    800058b4:	02e68e63          	beq	a3,a4,800058f0 <__memmove+0xfc>
    800058b8:	0035c603          	lbu	a2,3(a1)
    800058bc:	00300713          	li	a4,3
    800058c0:	00c781a3          	sb	a2,3(a5)
    800058c4:	02e68663          	beq	a3,a4,800058f0 <__memmove+0xfc>
    800058c8:	0045c603          	lbu	a2,4(a1)
    800058cc:	00400713          	li	a4,4
    800058d0:	00c78223          	sb	a2,4(a5)
    800058d4:	00e68e63          	beq	a3,a4,800058f0 <__memmove+0xfc>
    800058d8:	0055c603          	lbu	a2,5(a1)
    800058dc:	00500713          	li	a4,5
    800058e0:	00c782a3          	sb	a2,5(a5)
    800058e4:	00e68663          	beq	a3,a4,800058f0 <__memmove+0xfc>
    800058e8:	0065c703          	lbu	a4,6(a1)
    800058ec:	00e78323          	sb	a4,6(a5)
    800058f0:	00813403          	ld	s0,8(sp)
    800058f4:	01010113          	addi	sp,sp,16
    800058f8:	00008067          	ret
    800058fc:	02061713          	slli	a4,a2,0x20
    80005900:	02075713          	srli	a4,a4,0x20
    80005904:	00e587b3          	add	a5,a1,a4
    80005908:	f0f574e3          	bgeu	a0,a5,80005810 <__memmove+0x1c>
    8000590c:	02069613          	slli	a2,a3,0x20
    80005910:	02065613          	srli	a2,a2,0x20
    80005914:	fff64613          	not	a2,a2
    80005918:	00e50733          	add	a4,a0,a4
    8000591c:	00c78633          	add	a2,a5,a2
    80005920:	fff7c683          	lbu	a3,-1(a5)
    80005924:	fff78793          	addi	a5,a5,-1
    80005928:	fff70713          	addi	a4,a4,-1
    8000592c:	00d70023          	sb	a3,0(a4)
    80005930:	fec798e3          	bne	a5,a2,80005920 <__memmove+0x12c>
    80005934:	00813403          	ld	s0,8(sp)
    80005938:	01010113          	addi	sp,sp,16
    8000593c:	00008067          	ret
    80005940:	02069713          	slli	a4,a3,0x20
    80005944:	02075713          	srli	a4,a4,0x20
    80005948:	00170713          	addi	a4,a4,1
    8000594c:	00e50733          	add	a4,a0,a4
    80005950:	00050793          	mv	a5,a0
    80005954:	0005c683          	lbu	a3,0(a1)
    80005958:	00178793          	addi	a5,a5,1
    8000595c:	00158593          	addi	a1,a1,1
    80005960:	fed78fa3          	sb	a3,-1(a5)
    80005964:	fee798e3          	bne	a5,a4,80005954 <__memmove+0x160>
    80005968:	f89ff06f          	j	800058f0 <__memmove+0xfc>

000000008000596c <__putc>:
    8000596c:	fe010113          	addi	sp,sp,-32
    80005970:	00813823          	sd	s0,16(sp)
    80005974:	00113c23          	sd	ra,24(sp)
    80005978:	02010413          	addi	s0,sp,32
    8000597c:	00050793          	mv	a5,a0
    80005980:	fef40593          	addi	a1,s0,-17
    80005984:	00100613          	li	a2,1
    80005988:	00000513          	li	a0,0
    8000598c:	fef407a3          	sb	a5,-17(s0)
    80005990:	fffff097          	auipc	ra,0xfffff
    80005994:	b3c080e7          	jalr	-1220(ra) # 800044cc <console_write>
    80005998:	01813083          	ld	ra,24(sp)
    8000599c:	01013403          	ld	s0,16(sp)
    800059a0:	02010113          	addi	sp,sp,32
    800059a4:	00008067          	ret

00000000800059a8 <__getc>:
    800059a8:	fe010113          	addi	sp,sp,-32
    800059ac:	00813823          	sd	s0,16(sp)
    800059b0:	00113c23          	sd	ra,24(sp)
    800059b4:	02010413          	addi	s0,sp,32
    800059b8:	fe840593          	addi	a1,s0,-24
    800059bc:	00100613          	li	a2,1
    800059c0:	00000513          	li	a0,0
    800059c4:	fffff097          	auipc	ra,0xfffff
    800059c8:	ae8080e7          	jalr	-1304(ra) # 800044ac <console_read>
    800059cc:	fe844503          	lbu	a0,-24(s0)
    800059d0:	01813083          	ld	ra,24(sp)
    800059d4:	01013403          	ld	s0,16(sp)
    800059d8:	02010113          	addi	sp,sp,32
    800059dc:	00008067          	ret

00000000800059e0 <console_handler>:
    800059e0:	fe010113          	addi	sp,sp,-32
    800059e4:	00813823          	sd	s0,16(sp)
    800059e8:	00113c23          	sd	ra,24(sp)
    800059ec:	00913423          	sd	s1,8(sp)
    800059f0:	02010413          	addi	s0,sp,32
    800059f4:	14202773          	csrr	a4,scause
    800059f8:	100027f3          	csrr	a5,sstatus
    800059fc:	0027f793          	andi	a5,a5,2
    80005a00:	06079e63          	bnez	a5,80005a7c <console_handler+0x9c>
    80005a04:	00074c63          	bltz	a4,80005a1c <console_handler+0x3c>
    80005a08:	01813083          	ld	ra,24(sp)
    80005a0c:	01013403          	ld	s0,16(sp)
    80005a10:	00813483          	ld	s1,8(sp)
    80005a14:	02010113          	addi	sp,sp,32
    80005a18:	00008067          	ret
    80005a1c:	0ff77713          	andi	a4,a4,255
    80005a20:	00900793          	li	a5,9
    80005a24:	fef712e3          	bne	a4,a5,80005a08 <console_handler+0x28>
    80005a28:	ffffe097          	auipc	ra,0xffffe
    80005a2c:	6dc080e7          	jalr	1756(ra) # 80004104 <plic_claim>
    80005a30:	00a00793          	li	a5,10
    80005a34:	00050493          	mv	s1,a0
    80005a38:	02f50c63          	beq	a0,a5,80005a70 <console_handler+0x90>
    80005a3c:	fc0506e3          	beqz	a0,80005a08 <console_handler+0x28>
    80005a40:	00050593          	mv	a1,a0
    80005a44:	00001517          	auipc	a0,0x1
    80005a48:	99450513          	addi	a0,a0,-1644 # 800063d8 <CONSOLE_STATUS+0x3c8>
    80005a4c:	fffff097          	auipc	ra,0xfffff
    80005a50:	afc080e7          	jalr	-1284(ra) # 80004548 <__printf>
    80005a54:	01013403          	ld	s0,16(sp)
    80005a58:	01813083          	ld	ra,24(sp)
    80005a5c:	00048513          	mv	a0,s1
    80005a60:	00813483          	ld	s1,8(sp)
    80005a64:	02010113          	addi	sp,sp,32
    80005a68:	ffffe317          	auipc	t1,0xffffe
    80005a6c:	6d430067          	jr	1748(t1) # 8000413c <plic_complete>
    80005a70:	fffff097          	auipc	ra,0xfffff
    80005a74:	3e0080e7          	jalr	992(ra) # 80004e50 <uartintr>
    80005a78:	fddff06f          	j	80005a54 <console_handler+0x74>
    80005a7c:	00001517          	auipc	a0,0x1
    80005a80:	a5c50513          	addi	a0,a0,-1444 # 800064d8 <digits+0x78>
    80005a84:	fffff097          	auipc	ra,0xfffff
    80005a88:	a68080e7          	jalr	-1432(ra) # 800044ec <panic>
	...

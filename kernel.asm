
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00007117          	auipc	sp,0x7
    80000004:	35813103          	ld	sp,856(sp) # 80007358 <_GLOBAL_OFFSET_TABLE_+0x20>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	021030ef          	jal	ra,8000383c <start>

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
    800010a8:	1d5000ef          	jal	ra,80001a7c <_ZN5Riscv11trapHandlerEv>

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
    80001294:	fef43423          	sd	a5,-24(s0)
    return a0;
    80001298:	fe843503          	ld	a0,-24(s0)

    uint64 a0 = Riscv::r_a0();
    return (void *) a0;
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
    __asm__ volatile ("ld %0, 10*8(fp)" : "=r"(a0));
    800012c4:	05043783          	ld	a5,80(s0)
    800012c8:	fef43023          	sd	a5,-32(s0)
    return a0;
    800012cc:	fe043783          	ld	a5,-32(s0)

    volatile long a0;
    a0 = Riscv::r_a0();
    800012d0:	fef43423          	sd	a5,-24(s0)
    return a0;
    800012d4:	fe843503          	ld	a0,-24(s0)
}
    800012d8:	0005051b          	sext.w	a0,a0
    800012dc:	01813403          	ld	s0,24(sp)
    800012e0:	02010113          	addi	sp,sp,32
    800012e4:	00008067          	ret

00000000800012e8 <_Z10toUserModev>:

void toUserMode(){
    800012e8:	ff010113          	addi	sp,sp,-16
    800012ec:	00813423          	sd	s0,8(sp)
    800012f0:	01010413          	addi	s0,sp,16
    __asm__ volatile ("mv a0, %0" : : "r"(a0));
    800012f4:	05100793          	li	a5,81
    800012f8:	00078513          	mv	a0,a5
    Riscv::w_a0(0x51);
    __asm__ volatile ("ecall");
    800012fc:	00000073          	ecall
}
    80001300:	00813403          	ld	s0,8(sp)
    80001304:	01010113          	addi	sp,sp,16
    80001308:	00008067          	ret

000000008000130c <_Z13thread_createPP7_threadPFvPvES2_>:

int thread_create(thread_t *handle, void(*start_routine)(void *), void *arg) {
    8000130c:	fe010113          	addi	sp,sp,-32
    80001310:	00813c23          	sd	s0,24(sp)
    80001314:	02010413          	addi	s0,sp,32
    80001318:	01100793          	li	a5,17
    8000131c:	00078513          	mv	a0,a5
    __asm__ volatile ("mv a1, %0" : : "r"(a1));
    80001320:	00058593          	mv	a1,a1
    __asm__ volatile ("ld %0, 12*8(fp)" : "=r"(a2));
    return a2;
}

inline void Riscv::w_a2(uint64 a2) {
    __asm__ volatile ("mv a2, %0" : : "r"(a2));
    80001324:	00060613          	mv	a2,a2

    Riscv::w_a0(0x11);
    Riscv::w_a1((uint64) start_routine);
    Riscv::w_a2((uint64) arg);

    __asm__ volatile ("ecall");
    80001328:	00000073          	ecall
    __asm__ volatile ("ld %0, 10*8(fp)" : "=r"(a0));
    8000132c:	05043783          	ld	a5,80(s0)
    80001330:	fef43423          	sd	a5,-24(s0)
    return a0;
    80001334:	fe843783          	ld	a5,-24(s0)

    handle = (thread_t*) Riscv::r_a0();
    if(handle)return 0;
    80001338:	00078a63          	beqz	a5,8000134c <_Z13thread_createPP7_threadPFvPvES2_+0x40>
    8000133c:	00000513          	li	a0,0
    return -1;

}
    80001340:	01813403          	ld	s0,24(sp)
    80001344:	02010113          	addi	sp,sp,32
    80001348:	00008067          	ret
    return -1;
    8000134c:	fff00513          	li	a0,-1
    80001350:	ff1ff06f          	j	80001340 <_Z13thread_createPP7_threadPFvPvES2_+0x34>

0000000080001354 <_Z11thread_exitv>:

int thread_exit(){
    80001354:	fe010113          	addi	sp,sp,-32
    80001358:	00813c23          	sd	s0,24(sp)
    8000135c:	02010413          	addi	s0,sp,32
    __asm__ volatile ("mv a0, %0" : : "r"(a0));
    80001360:	01200793          	li	a5,18
    80001364:	00078513          	mv	a0,a5
    Riscv::w_a0(0x12);
    __asm__ volatile ("ecall");
    80001368:	00000073          	ecall
    __asm__ volatile ("ld %0, 10*8(fp)" : "=r"(a0));
    8000136c:	05043783          	ld	a5,80(s0)
    80001370:	fef43023          	sd	a5,-32(s0)
    return a0;
    80001374:	fe043783          	ld	a5,-32(s0)
    volatile uint64 a0 = Riscv::r_a0();
    80001378:	fef43423          	sd	a5,-24(s0)
    return a0;
    8000137c:	fe843503          	ld	a0,-24(s0)
}
    80001380:	0005051b          	sext.w	a0,a0
    80001384:	01813403          	ld	s0,24(sp)
    80001388:	02010113          	addi	sp,sp,32
    8000138c:	00008067          	ret

0000000080001390 <_Z15thread_dispatchv>:

void thread_dispatch(){
    80001390:	ff010113          	addi	sp,sp,-16
    80001394:	00813423          	sd	s0,8(sp)
    80001398:	01010413          	addi	s0,sp,16
    __asm__ volatile ("mv a0, %0" : : "r"(a0));
    8000139c:	01300793          	li	a5,19
    800013a0:	00078513          	mv	a0,a5
    Riscv::w_a0(0x13);
    __asm__ volatile ("ecall");
    800013a4:	00000073          	ecall
}
    800013a8:	00813403          	ld	s0,8(sp)
    800013ac:	01010113          	addi	sp,sp,16
    800013b0:	00008067          	ret

00000000800013b4 <_Z11thread_joinP7_thread>:

void thread_join(thread_t handle){
    800013b4:	ff010113          	addi	sp,sp,-16
    800013b8:	00813423          	sd	s0,8(sp)
    800013bc:	01010413          	addi	s0,sp,16
    800013c0:	01400793          	li	a5,20
    800013c4:	00078513          	mv	a0,a5
    Riscv::w_a0(0x14);

    800013c8:	00813403          	ld	s0,8(sp)
    800013cc:	01010113          	addi	sp,sp,16
    800013d0:	00008067          	ret

00000000800013d4 <_ZN3PCB7wrapperEv>:
        return 0;
    }
    return -1;
}

void PCB::wrapper() {
    800013d4:	ff010113          	addi	sp,sp,-16
    800013d8:	00113423          	sd	ra,8(sp)
    800013dc:	00813023          	sd	s0,0(sp)
    800013e0:	01010413          	addi	s0,sp,16
    Riscv::popSppSpie();
    800013e4:	00000097          	auipc	ra,0x0
    800013e8:	678080e7          	jalr	1656(ra) # 80001a5c <_ZN5Riscv10popSppSpieEv>
    running->body(running->args);
    800013ec:	00006797          	auipc	a5,0x6
    800013f0:	fd47b783          	ld	a5,-44(a5) # 800073c0 <_ZN3PCB7runningE>
    800013f4:	0007b703          	ld	a4,0(a5)
    800013f8:	0107b503          	ld	a0,16(a5)
    800013fc:	000700e7          	jalr	a4
    thread_exit();
    80001400:	00000097          	auipc	ra,0x0
    80001404:	f54080e7          	jalr	-172(ra) # 80001354 <_Z11thread_exitv>
    80001408:	00813083          	ld	ra,8(sp)
    8000140c:	00013403          	ld	s0,0(sp)
    80001410:	01010113          	addi	sp,sp,16
    80001414:	00008067          	ret

0000000080001418 <_ZN3PCB12createThreadEPFvPvES0_Pm>:
PCB *PCB::createThread(PCB::Body body, void *args, uint64* stack) {
    80001418:	fd010113          	addi	sp,sp,-48
    8000141c:	02113423          	sd	ra,40(sp)
    80001420:	02813023          	sd	s0,32(sp)
    80001424:	00913c23          	sd	s1,24(sp)
    80001428:	01213823          	sd	s2,16(sp)
    8000142c:	01313423          	sd	s3,8(sp)
    80001430:	03010413          	addi	s0,sp,48
    80001434:	00050993          	mv	s3,a0
    80001438:	00058913          	mv	s2,a1
    8000143c:	00060493          	mv	s1,a2
    return new PCB(body, args, stack);
    80001440:	03000513          	li	a0,48
    80001444:	00000097          	auipc	ra,0x0
    80001448:	368080e7          	jalr	872(ra) # 800017ac <_Znwm>

    static void wrapper();
public:
    PCB(Body body, void* args, uint64* stack)
    {
        this->body = body;
    8000144c:	01353023          	sd	s3,0(a0)
        this->stack = stack;
    80001450:	00953423          	sd	s1,8(a0)
        context = {   (uint64)&wrapper,
                      stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
    80001454:	04048063          	beqz	s1,80001494 <_ZN3PCB12createThreadEPFvPvES0_Pm+0x7c>
    80001458:	00008637          	lui	a2,0x8
    8000145c:	00c484b3          	add	s1,s1,a2
        context = {   (uint64)&wrapper,
    80001460:	00000797          	auipc	a5,0x0
    80001464:	f7478793          	addi	a5,a5,-140 # 800013d4 <_ZN3PCB7wrapperEv>
    80001468:	00f53c23          	sd	a5,24(a0)
    8000146c:	02953023          	sd	s1,32(a0)
        };
        this->args=args;
    80001470:	01253823          	sd	s2,16(a0)
        state = READY;
    80001474:	02052423          	sw	zero,40(a0)
}
    80001478:	02813083          	ld	ra,40(sp)
    8000147c:	02013403          	ld	s0,32(sp)
    80001480:	01813483          	ld	s1,24(sp)
    80001484:	01013903          	ld	s2,16(sp)
    80001488:	00813983          	ld	s3,8(sp)
    8000148c:	03010113          	addi	sp,sp,48
    80001490:	00008067          	ret
                      stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
    80001494:	00000493          	li	s1,0
    80001498:	fc9ff06f          	j	80001460 <_ZN3PCB12createThreadEPFvPvES0_Pm+0x48>

000000008000149c <_ZN3PCB8dispatchEv>:
void PCB::dispatch() {
    8000149c:	fe010113          	addi	sp,sp,-32
    800014a0:	00113c23          	sd	ra,24(sp)
    800014a4:	00813823          	sd	s0,16(sp)
    800014a8:	00913423          	sd	s1,8(sp)
    800014ac:	02010413          	addi	s0,sp,32
    Riscv::pushRegisters();
    800014b0:	00000097          	auipc	ra,0x0
    800014b4:	c90080e7          	jalr	-880(ra) # 80001140 <_ZN5Riscv13pushRegistersEv>
    PCB *old = running;
    800014b8:	00006497          	auipc	s1,0x6
    800014bc:	f084b483          	ld	s1,-248(s1) # 800073c0 <_ZN3PCB7runningE>
    bool isFinished() const { return state==FINISHED; }
    800014c0:	0284a703          	lw	a4,40(s1)
    if (!old->isFinished()) {
    800014c4:	00300793          	li	a5,3
    800014c8:	04f71463          	bne	a4,a5,80001510 <_ZN3PCB8dispatchEv+0x74>
    running = Scheduler::get();
    800014cc:	00000097          	auipc	ra,0x0
    800014d0:	0e8080e7          	jalr	232(ra) # 800015b4 <_ZN9Scheduler3getEv>
    800014d4:	00006797          	auipc	a5,0x6
    800014d8:	eea7b623          	sd	a0,-276(a5) # 800073c0 <_ZN3PCB7runningE>
    running->state=RUNNING;
    800014dc:	00100793          	li	a5,1
    800014e0:	02f52423          	sw	a5,40(a0)
    PCB::contextSwitch(&old->context, &running->context);
    800014e4:	01850593          	addi	a1,a0,24
    800014e8:	01848513          	addi	a0,s1,24
    800014ec:	00000097          	auipc	ra,0x0
    800014f0:	d4c080e7          	jalr	-692(ra) # 80001238 <_ZN3PCB13contextSwitchEPNS_7ContextES1_>
    Riscv::popRegisters();
    800014f4:	00000097          	auipc	ra,0x0
    800014f8:	cc8080e7          	jalr	-824(ra) # 800011bc <_ZN5Riscv12popRegistersEv>
}
    800014fc:	01813083          	ld	ra,24(sp)
    80001500:	01013403          	ld	s0,16(sp)
    80001504:	00813483          	ld	s1,8(sp)
    80001508:	02010113          	addi	sp,sp,32
    8000150c:	00008067          	ret
        old->state = READY;
    80001510:	0204a423          	sw	zero,40(s1)
        Scheduler::put(old);
    80001514:	00048513          	mv	a0,s1
    80001518:	00000097          	auipc	ra,0x0
    8000151c:	104080e7          	jalr	260(ra) # 8000161c <_ZN9Scheduler3putEP3PCB>
    80001520:	fadff06f          	j	800014cc <_ZN3PCB8dispatchEv+0x30>

0000000080001524 <_ZN3PCB4exitEv>:
    if(running->state==RUNNING){
    80001524:	00006797          	auipc	a5,0x6
    80001528:	e9c7b783          	ld	a5,-356(a5) # 800073c0 <_ZN3PCB7runningE>
    8000152c:	0287a683          	lw	a3,40(a5)
    80001530:	00100713          	li	a4,1
    80001534:	02e69c63          	bne	a3,a4,8000156c <_ZN3PCB4exitEv+0x48>
int PCB::exit() {
    80001538:	ff010113          	addi	sp,sp,-16
    8000153c:	00113423          	sd	ra,8(sp)
    80001540:	00813023          	sd	s0,0(sp)
    80001544:	01010413          	addi	s0,sp,16
        running->state=FINISHED;
    80001548:	00300713          	li	a4,3
    8000154c:	02e7a423          	sw	a4,40(a5)
        dispatch();
    80001550:	00000097          	auipc	ra,0x0
    80001554:	f4c080e7          	jalr	-180(ra) # 8000149c <_ZN3PCB8dispatchEv>
        return 0;
    80001558:	00000513          	li	a0,0
}
    8000155c:	00813083          	ld	ra,8(sp)
    80001560:	00013403          	ld	s0,0(sp)
    80001564:	01010113          	addi	sp,sp,16
    80001568:	00008067          	ret
    return -1;
    8000156c:	fff00513          	li	a0,-1
}
    80001570:	00008067          	ret

0000000080001574 <_Z41__static_initialization_and_destruction_0ii>:
    return Scheduler::readyQueue.removeFirst();
}

void Scheduler::put(PCB *handle) {
    Scheduler::readyQueue.addLast(handle);
    80001574:	ff010113          	addi	sp,sp,-16
    80001578:	00813423          	sd	s0,8(sp)
    8000157c:	01010413          	addi	s0,sp,16
    80001580:	00100793          	li	a5,1
    80001584:	00f50863          	beq	a0,a5,80001594 <_Z41__static_initialization_and_destruction_0ii+0x20>
    80001588:	00813403          	ld	s0,8(sp)
    8000158c:	01010113          	addi	sp,sp,16
    80001590:	00008067          	ret
    80001594:	000107b7          	lui	a5,0x10
    80001598:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    8000159c:	fef596e3          	bne	a1,a5,80001588 <_Z41__static_initialization_and_destruction_0ii+0x14>
    };

    Elem *head, *tail;

public:
    List() : head(0), tail(0) {}
    800015a0:	00006797          	auipc	a5,0x6
    800015a4:	e2878793          	addi	a5,a5,-472 # 800073c8 <_ZN9Scheduler10readyQueueE>
    800015a8:	0007b023          	sd	zero,0(a5)
    800015ac:	0007b423          	sd	zero,8(a5)
    800015b0:	fd9ff06f          	j	80001588 <_Z41__static_initialization_and_destruction_0ii+0x14>

00000000800015b4 <_ZN9Scheduler3getEv>:
PCB *Scheduler::get() {
    800015b4:	fe010113          	addi	sp,sp,-32
    800015b8:	00113c23          	sd	ra,24(sp)
    800015bc:	00813823          	sd	s0,16(sp)
    800015c0:	00913423          	sd	s1,8(sp)
    800015c4:	02010413          	addi	s0,sp,32
        }
    }

    T *removeFirst()
    {
        if (!head) { return 0; }
    800015c8:	00006517          	auipc	a0,0x6
    800015cc:	e0053503          	ld	a0,-512(a0) # 800073c8 <_ZN9Scheduler10readyQueueE>
    800015d0:	04050263          	beqz	a0,80001614 <_ZN9Scheduler3getEv+0x60>

        Elem *elem = head;
        head = head->next;
    800015d4:	00853783          	ld	a5,8(a0)
    800015d8:	00006717          	auipc	a4,0x6
    800015dc:	def73823          	sd	a5,-528(a4) # 800073c8 <_ZN9Scheduler10readyQueueE>
        if (!head) { tail = 0; }
    800015e0:	02078463          	beqz	a5,80001608 <_ZN9Scheduler3getEv+0x54>

        T *ret = elem->data;
    800015e4:	00053483          	ld	s1,0(a0)
        delete elem;
    800015e8:	00000097          	auipc	ra,0x0
    800015ec:	214080e7          	jalr	532(ra) # 800017fc <_ZdlPv>
}
    800015f0:	00048513          	mv	a0,s1
    800015f4:	01813083          	ld	ra,24(sp)
    800015f8:	01013403          	ld	s0,16(sp)
    800015fc:	00813483          	ld	s1,8(sp)
    80001600:	02010113          	addi	sp,sp,32
    80001604:	00008067          	ret
        if (!head) { tail = 0; }
    80001608:	00006797          	auipc	a5,0x6
    8000160c:	dc07b423          	sd	zero,-568(a5) # 800073d0 <_ZN9Scheduler10readyQueueE+0x8>
    80001610:	fd5ff06f          	j	800015e4 <_ZN9Scheduler3getEv+0x30>
        if (!head) { return 0; }
    80001614:	00050493          	mv	s1,a0
    return Scheduler::readyQueue.removeFirst();
    80001618:	fd9ff06f          	j	800015f0 <_ZN9Scheduler3getEv+0x3c>

000000008000161c <_ZN9Scheduler3putEP3PCB>:
void Scheduler::put(PCB *handle) {
    8000161c:	fe010113          	addi	sp,sp,-32
    80001620:	00113c23          	sd	ra,24(sp)
    80001624:	00813823          	sd	s0,16(sp)
    80001628:	00913423          	sd	s1,8(sp)
    8000162c:	02010413          	addi	s0,sp,32
    80001630:	00050493          	mv	s1,a0
        Elem *elem = new Elem(data, 0);
    80001634:	01000513          	li	a0,16
    80001638:	00000097          	auipc	ra,0x0
    8000163c:	174080e7          	jalr	372(ra) # 800017ac <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80001640:	00953023          	sd	s1,0(a0)
    80001644:	00053423          	sd	zero,8(a0)
        if (tail)
    80001648:	00006797          	auipc	a5,0x6
    8000164c:	d887b783          	ld	a5,-632(a5) # 800073d0 <_ZN9Scheduler10readyQueueE+0x8>
    80001650:	02078263          	beqz	a5,80001674 <_ZN9Scheduler3putEP3PCB+0x58>
            tail->next = elem;
    80001654:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80001658:	00006797          	auipc	a5,0x6
    8000165c:	d6a7bc23          	sd	a0,-648(a5) # 800073d0 <_ZN9Scheduler10readyQueueE+0x8>
    80001660:	01813083          	ld	ra,24(sp)
    80001664:	01013403          	ld	s0,16(sp)
    80001668:	00813483          	ld	s1,8(sp)
    8000166c:	02010113          	addi	sp,sp,32
    80001670:	00008067          	ret
            head = tail = elem;
    80001674:	00006797          	auipc	a5,0x6
    80001678:	d5478793          	addi	a5,a5,-684 # 800073c8 <_ZN9Scheduler10readyQueueE>
    8000167c:	00a7b423          	sd	a0,8(a5)
    80001680:	00a7b023          	sd	a0,0(a5)
    80001684:	fddff06f          	j	80001660 <_ZN9Scheduler3putEP3PCB+0x44>

0000000080001688 <_GLOBAL__sub_I__ZN9Scheduler10readyQueueE>:
    80001688:	ff010113          	addi	sp,sp,-16
    8000168c:	00113423          	sd	ra,8(sp)
    80001690:	00813023          	sd	s0,0(sp)
    80001694:	01010413          	addi	s0,sp,16
    80001698:	000105b7          	lui	a1,0x10
    8000169c:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    800016a0:	00100513          	li	a0,1
    800016a4:	00000097          	auipc	ra,0x0
    800016a8:	ed0080e7          	jalr	-304(ra) # 80001574 <_Z41__static_initialization_and_destruction_0ii>
    800016ac:	00813083          	ld	ra,8(sp)
    800016b0:	00013403          	ld	s0,0(sp)
    800016b4:	01010113          	addi	sp,sp,16
    800016b8:	00008067          	ret

00000000800016bc <main>:

};

extern void userMain();
extern void switchToUserMode();
int main() {
    800016bc:	fe010113          	addi	sp,sp,-32
    800016c0:	00113c23          	sd	ra,24(sp)
    800016c4:	00813823          	sd	s0,16(sp)
    800016c8:	00913423          	sd	s1,8(sp)
    800016cc:	01213023          	sd	s2,0(sp)
    800016d0:	02010413          	addi	s0,sp,32
public:


    // Get the singleton instance
    static MemoryAllocator &getInstance() {
        static MemoryAllocator instance;
    800016d4:	00006797          	auipc	a5,0x6
    800016d8:	d047c783          	lbu	a5,-764(a5) # 800073d8 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    800016dc:	00079863          	bnez	a5,800016ec <main+0x30>
    800016e0:	00100793          	li	a5,1
    800016e4:	00006717          	auipc	a4,0x6
    800016e8:	cef70a23          	sb	a5,-780(a4) # 800073d8 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
//        printString("\n");
//        uint64 end = (uint64)((Block *) HEAP_END_ADDR);
//        printInteger(end);
//        printString("\n");

        free_list = (Block *) HEAP_START_ADDR;
    800016ec:	00006797          	auipc	a5,0x6
    800016f0:	c547b783          	ld	a5,-940(a5) # 80007340 <_GLOBAL_OFFSET_TABLE_+0x8>
    800016f4:	0007b703          	ld	a4,0(a5)
    800016f8:	00006697          	auipc	a3,0x6
    800016fc:	c706b683          	ld	a3,-912(a3) # 80007368 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001700:	00e6b023          	sd	a4,0(a3)
        free_list->size = (uint64 *) HEAP_END_ADDR - (uint64 *) HEAP_START_ADDR;
    80001704:	00006797          	auipc	a5,0x6
    80001708:	c5c7b783          	ld	a5,-932(a5) # 80007360 <_GLOBAL_OFFSET_TABLE_+0x28>
    8000170c:	0007b783          	ld	a5,0(a5)
    80001710:	40e787b3          	sub	a5,a5,a4
    80001714:	4037d793          	srai	a5,a5,0x3
    80001718:	00f73023          	sd	a5,0(a4)
        free_list->next = nullptr;
    8000171c:	0006b783          	ld	a5,0(a3)
    80001720:	0007b423          	sd	zero,8(a5)
        allocated_list = nullptr;
    80001724:	00006797          	auipc	a5,0x6
    80001728:	c2c7b783          	ld	a5,-980(a5) # 80007350 <_GLOBAL_OFFSET_TABLE_+0x18>
    8000172c:	0007b023          	sd	zero,0(a5)


    MemoryAllocator::getInstance().init();

    Riscv::w_stvec((uint64) &Riscv::supervisorTrap+1);
    80001730:	00006797          	auipc	a5,0x6
    80001734:	c187b783          	ld	a5,-1000(a5) # 80007348 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001738:	00178793          	addi	a5,a5,1
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    8000173c:	10579073          	csrw	stvec,a5
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001740:	00200793          	li	a5,2
    80001744:	1007a073          	csrs	sstatus,a5

//    D* d1 = new D(2);
//    D* d3 = new D(3);
//    D* d4 = new D(5);

    D* d1 = new D();
    80001748:	00800513          	li	a0,8
    8000174c:	00000097          	auipc	ra,0x0
    80001750:	060080e7          	jalr	96(ra) # 800017ac <_Znwm>
    80001754:	00050913          	mv	s2,a0
    80001758:	00053023          	sd	zero,0(a0)
        return new D();
    8000175c:	00800513          	li	a0,8
    80001760:	00000097          	auipc	ra,0x0
    80001764:	04c080e7          	jalr	76(ra) # 800017ac <_Znwm>
    80001768:	00050493          	mv	s1,a0
    8000176c:	00053023          	sd	zero,0(a0)
    D* d2 = D::createD(4);
    delete d1;
    80001770:	00090863          	beqz	s2,80001780 <main+0xc4>
    80001774:	00090513          	mv	a0,s2
    80001778:	00000097          	auipc	ra,0x0
    8000177c:	084080e7          	jalr	132(ra) # 800017fc <_ZdlPv>
    delete d2;
    80001780:	00048863          	beqz	s1,80001790 <main+0xd4>
    80001784:	00048513          	mv	a0,s1
    80001788:	00000097          	auipc	ra,0x0
    8000178c:	074080e7          	jalr	116(ra) # 800017fc <_ZdlPv>
//
//
//    //printString("Finished\n");
//
    return 0;
}
    80001790:	00000513          	li	a0,0
    80001794:	01813083          	ld	ra,24(sp)
    80001798:	01013403          	ld	s0,16(sp)
    8000179c:	00813483          	ld	s1,8(sp)
    800017a0:	00013903          	ld	s2,0(sp)
    800017a4:	02010113          	addi	sp,sp,32
    800017a8:	00008067          	ret

00000000800017ac <_Znwm>:
// Created by os on 2/2/23.
//

#include "../h/syscall_cpp.hpp"

void* operator new(size_t size) {
    800017ac:	ff010113          	addi	sp,sp,-16
    800017b0:	00113423          	sd	ra,8(sp)
    800017b4:	00813023          	sd	s0,0(sp)
    800017b8:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    800017bc:	00000097          	auipc	ra,0x0
    800017c0:	ab0080e7          	jalr	-1360(ra) # 8000126c <_Z9mem_allocm>
}
    800017c4:	00813083          	ld	ra,8(sp)
    800017c8:	00013403          	ld	s0,0(sp)
    800017cc:	01010113          	addi	sp,sp,16
    800017d0:	00008067          	ret

00000000800017d4 <_Znam>:

void* operator new[](size_t size) {
    800017d4:	ff010113          	addi	sp,sp,-16
    800017d8:	00113423          	sd	ra,8(sp)
    800017dc:	00813023          	sd	s0,0(sp)
    800017e0:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    800017e4:	00000097          	auipc	ra,0x0
    800017e8:	a88080e7          	jalr	-1400(ra) # 8000126c <_Z9mem_allocm>
}
    800017ec:	00813083          	ld	ra,8(sp)
    800017f0:	00013403          	ld	s0,0(sp)
    800017f4:	01010113          	addi	sp,sp,16
    800017f8:	00008067          	ret

00000000800017fc <_ZdlPv>:

void operator delete(void *ptr) { mem_free(ptr); }
    800017fc:	ff010113          	addi	sp,sp,-16
    80001800:	00113423          	sd	ra,8(sp)
    80001804:	00813023          	sd	s0,0(sp)
    80001808:	01010413          	addi	s0,sp,16
    8000180c:	00000097          	auipc	ra,0x0
    80001810:	a9c080e7          	jalr	-1380(ra) # 800012a8 <_Z8mem_freePv>
    80001814:	00813083          	ld	ra,8(sp)
    80001818:	00013403          	ld	s0,0(sp)
    8000181c:	01010113          	addi	sp,sp,16
    80001820:	00008067          	ret

0000000080001824 <_ZdaPv>:

void operator delete[](void *ptr) { mem_free(ptr); }
    80001824:	ff010113          	addi	sp,sp,-16
    80001828:	00113423          	sd	ra,8(sp)
    8000182c:	00813023          	sd	s0,0(sp)
    80001830:	01010413          	addi	s0,sp,16
    80001834:	00000097          	auipc	ra,0x0
    80001838:	a74080e7          	jalr	-1420(ra) # 800012a8 <_Z8mem_freePv>
    8000183c:	00813083          	ld	ra,8(sp)
    80001840:	00013403          	ld	s0,0(sp)
    80001844:	01010113          	addi	sp,sp,16
    80001848:	00008067          	ret

000000008000184c <_ZN6ThreadD1Ev>:

void Thread::dispatch() {
    thread_dispatch();
}

Thread::~Thread() {
    8000184c:	fe010113          	addi	sp,sp,-32
    80001850:	00113c23          	sd	ra,24(sp)
    80001854:	00813823          	sd	s0,16(sp)
    80001858:	00913423          	sd	s1,8(sp)
    8000185c:	02010413          	addi	s0,sp,32
    80001860:	00006797          	auipc	a5,0x6
    80001864:	a0078793          	addi	a5,a5,-1536 # 80007260 <_ZTV6Thread+0x10>
    80001868:	00f53023          	sd	a5,0(a0)
    delete (PCB*)myHandle;
    8000186c:	00853483          	ld	s1,8(a0)
    80001870:	02048063          	beqz	s1,80001890 <_ZN6ThreadD1Ev+0x44>
    ~PCB() { delete[] stack; }
    80001874:	0084b503          	ld	a0,8(s1)
    80001878:	00050663          	beqz	a0,80001884 <_ZN6ThreadD1Ev+0x38>
    8000187c:	00000097          	auipc	ra,0x0
    80001880:	fa8080e7          	jalr	-88(ra) # 80001824 <_ZdaPv>
    80001884:	00048513          	mv	a0,s1
    80001888:	00000097          	auipc	ra,0x0
    8000188c:	f74080e7          	jalr	-140(ra) # 800017fc <_ZdlPv>
}
    80001890:	01813083          	ld	ra,24(sp)
    80001894:	01013403          	ld	s0,16(sp)
    80001898:	00813483          	ld	s1,8(sp)
    8000189c:	02010113          	addi	sp,sp,32
    800018a0:	00008067          	ret

00000000800018a4 <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    800018a4:	fe010113          	addi	sp,sp,-32
    800018a8:	00113c23          	sd	ra,24(sp)
    800018ac:	00813823          	sd	s0,16(sp)
    800018b0:	00913423          	sd	s1,8(sp)
    800018b4:	02010413          	addi	s0,sp,32
    800018b8:	00050493          	mv	s1,a0
}
    800018bc:	00000097          	auipc	ra,0x0
    800018c0:	f90080e7          	jalr	-112(ra) # 8000184c <_ZN6ThreadD1Ev>
    800018c4:	00048513          	mv	a0,s1
    800018c8:	00000097          	auipc	ra,0x0
    800018cc:	f34080e7          	jalr	-204(ra) # 800017fc <_ZdlPv>
    800018d0:	01813083          	ld	ra,24(sp)
    800018d4:	01013403          	ld	s0,16(sp)
    800018d8:	00813483          	ld	s1,8(sp)
    800018dc:	02010113          	addi	sp,sp,32
    800018e0:	00008067          	ret

00000000800018e4 <_Z16switchToUserModev>:
void switchToUserMode(){ toUserMode();}
    800018e4:	ff010113          	addi	sp,sp,-16
    800018e8:	00113423          	sd	ra,8(sp)
    800018ec:	00813023          	sd	s0,0(sp)
    800018f0:	01010413          	addi	s0,sp,16
    800018f4:	00000097          	auipc	ra,0x0
    800018f8:	9f4080e7          	jalr	-1548(ra) # 800012e8 <_Z10toUserModev>
    800018fc:	00813083          	ld	ra,8(sp)
    80001900:	00013403          	ld	s0,0(sp)
    80001904:	01010113          	addi	sp,sp,16
    80001908:	00008067          	ret

000000008000190c <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void*), void* arg) {
    8000190c:	ff010113          	addi	sp,sp,-16
    80001910:	00113423          	sd	ra,8(sp)
    80001914:	00813023          	sd	s0,0(sp)
    80001918:	01010413          	addi	s0,sp,16
    8000191c:	00006797          	auipc	a5,0x6
    80001920:	94478793          	addi	a5,a5,-1724 # 80007260 <_ZTV6Thread+0x10>
    80001924:	00f53023          	sd	a5,0(a0)
    thread_create(&myHandle, body, arg);
    80001928:	00850513          	addi	a0,a0,8
    8000192c:	00000097          	auipc	ra,0x0
    80001930:	9e0080e7          	jalr	-1568(ra) # 8000130c <_Z13thread_createPP7_threadPFvPvES2_>
}
    80001934:	00813083          	ld	ra,8(sp)
    80001938:	00013403          	ld	s0,0(sp)
    8000193c:	01010113          	addi	sp,sp,16
    80001940:	00008067          	ret

0000000080001944 <_ZN6ThreadC1Ev>:
Thread::Thread() {
    80001944:	fe010113          	addi	sp,sp,-32
    80001948:	00113c23          	sd	ra,24(sp)
    8000194c:	00813823          	sd	s0,16(sp)
    80001950:	00913423          	sd	s1,8(sp)
    80001954:	01213023          	sd	s2,0(sp)
    80001958:	02010413          	addi	s0,sp,32
    8000195c:	00006797          	auipc	a5,0x6
    80001960:	90478793          	addi	a5,a5,-1788 # 80007260 <_ZTV6Thread+0x10>
    80001964:	00f53023          	sd	a5,0(a0)
    new Thread(nullptr, nullptr);
    80001968:	02000513          	li	a0,32
    8000196c:	00000097          	auipc	ra,0x0
    80001970:	e40080e7          	jalr	-448(ra) # 800017ac <_Znwm>
    80001974:	00050493          	mv	s1,a0
    80001978:	00000613          	li	a2,0
    8000197c:	00000593          	li	a1,0
    80001980:	00000097          	auipc	ra,0x0
    80001984:	f8c080e7          	jalr	-116(ra) # 8000190c <_ZN6ThreadC1EPFvPvES0_>
    80001988:	0200006f          	j	800019a8 <_ZN6ThreadC1Ev+0x64>
    8000198c:	00050913          	mv	s2,a0
    80001990:	00048513          	mv	a0,s1
    80001994:	00000097          	auipc	ra,0x0
    80001998:	e68080e7          	jalr	-408(ra) # 800017fc <_ZdlPv>
    8000199c:	00090513          	mv	a0,s2
    800019a0:	00007097          	auipc	ra,0x7
    800019a4:	b38080e7          	jalr	-1224(ra) # 800084d8 <_Unwind_Resume>
}
    800019a8:	01813083          	ld	ra,24(sp)
    800019ac:	01013403          	ld	s0,16(sp)
    800019b0:	00813483          	ld	s1,8(sp)
    800019b4:	00013903          	ld	s2,0(sp)
    800019b8:	02010113          	addi	sp,sp,32
    800019bc:	00008067          	ret

00000000800019c0 <_ZN6Thread5startEv>:
int Thread::start() {
    800019c0:	ff010113          	addi	sp,sp,-16
    800019c4:	00113423          	sd	ra,8(sp)
    800019c8:	00813023          	sd	s0,0(sp)
    800019cc:	01010413          	addi	s0,sp,16
    Scheduler::put((PCB*)myHandle);
    800019d0:	00853503          	ld	a0,8(a0)
    800019d4:	00000097          	auipc	ra,0x0
    800019d8:	c48080e7          	jalr	-952(ra) # 8000161c <_ZN9Scheduler3putEP3PCB>
}
    800019dc:	00000513          	li	a0,0
    800019e0:	00813083          	ld	ra,8(sp)
    800019e4:	00013403          	ld	s0,0(sp)
    800019e8:	01010113          	addi	sp,sp,16
    800019ec:	00008067          	ret

00000000800019f0 <_ZN6Thread4joinEv>:
void Thread::join() {
    800019f0:	ff010113          	addi	sp,sp,-16
    800019f4:	00113423          	sd	ra,8(sp)
    800019f8:	00813023          	sd	s0,0(sp)
    800019fc:	01010413          	addi	s0,sp,16
    thread_join(myHandle);
    80001a00:	00853503          	ld	a0,8(a0)
    80001a04:	00000097          	auipc	ra,0x0
    80001a08:	9b0080e7          	jalr	-1616(ra) # 800013b4 <_Z11thread_joinP7_thread>
}
    80001a0c:	00813083          	ld	ra,8(sp)
    80001a10:	00013403          	ld	s0,0(sp)
    80001a14:	01010113          	addi	sp,sp,16
    80001a18:	00008067          	ret

0000000080001a1c <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80001a1c:	ff010113          	addi	sp,sp,-16
    80001a20:	00113423          	sd	ra,8(sp)
    80001a24:	00813023          	sd	s0,0(sp)
    80001a28:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80001a2c:	00000097          	auipc	ra,0x0
    80001a30:	964080e7          	jalr	-1692(ra) # 80001390 <_Z15thread_dispatchv>
}
    80001a34:	00813083          	ld	ra,8(sp)
    80001a38:	00013403          	ld	s0,0(sp)
    80001a3c:	01010113          	addi	sp,sp,16
    80001a40:	00008067          	ret

0000000080001a44 <_ZN6Thread3runEv>:
    static void dispatch();

protected:
    Thread();

    virtual void run() {}
    80001a44:	ff010113          	addi	sp,sp,-16
    80001a48:	00813423          	sd	s0,8(sp)
    80001a4c:	01010413          	addi	s0,sp,16
    80001a50:	00813403          	ld	s0,8(sp)
    80001a54:	01010113          	addi	sp,sp,16
    80001a58:	00008067          	ret

0000000080001a5c <_ZN5Riscv10popSppSpieEv>:
#include "../h/riscv.hpp"



void Riscv::popSppSpie()
{
    80001a5c:	ff010113          	addi	sp,sp,-16
    80001a60:	00813423          	sd	s0,8(sp)
    80001a64:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    80001a68:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    80001a6c:	10200073          	sret
}
    80001a70:	00813403          	ld	s0,8(sp)
    80001a74:	01010113          	addi	sp,sp,16
    80001a78:	00008067          	ret

0000000080001a7c <_ZN5Riscv11trapHandlerEv>:

void Riscv::trapHandler() {
    80001a7c:	fa010113          	addi	sp,sp,-96
    80001a80:	04113c23          	sd	ra,88(sp)
    80001a84:	04813823          	sd	s0,80(sp)
    80001a88:	04913423          	sd	s1,72(sp)
    80001a8c:	05213023          	sd	s2,64(sp)
    80001a90:	03313c23          	sd	s3,56(sp)
    80001a94:	03413823          	sd	s4,48(sp)
    80001a98:	06010413          	addi	s0,sp,96
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80001a9c:	142027f3          	csrr	a5,scause
    80001aa0:	faf43c23          	sd	a5,-72(s0)
    return scause;
    80001aa4:	fb843703          	ld	a4,-72(s0)
    __asm__ volatile ("ld %0, 10*8(fp)" : "=r"(a0));
    80001aa8:	05043783          	ld	a5,80(s0)
    80001aac:	faf43823          	sd	a5,-80(s0)
    return a0;
    80001ab0:	fb043783          	ld	a5,-80(s0)
    __asm__ volatile ("ld %0, 11*8(fp)" : "=r"(a1));
    80001ab4:	05843683          	ld	a3,88(s0)
    80001ab8:	fad43423          	sd	a3,-88(s0)
    return a1;
    80001abc:	fa843483          	ld	s1,-88(s0)
    __asm__ volatile ("ld %0, 12*8(fp)" : "=r"(a2));
    80001ac0:	06043683          	ld	a3,96(s0)
    80001ac4:	fad43023          	sd	a3,-96(s0)
    return a2;
    80001ac8:	fa043903          	ld	s2,-96(s0)
    uint64 a2 = r_a2();

    uint64 sepc;
    uint64 sstatus;

    switch (scause) {
    80001acc:	fff00693          	li	a3,-1
    80001ad0:	03f69693          	slli	a3,a3,0x3f
    80001ad4:	00168693          	addi	a3,a3,1
    80001ad8:	16d70e63          	beq	a4,a3,80001c54 <_ZN5Riscv11trapHandlerEv+0x1d8>
    80001adc:	fff00693          	li	a3,-1
    80001ae0:	03f69693          	slli	a3,a3,0x3f
    80001ae4:	00168693          	addi	a3,a3,1
    80001ae8:	04e6ea63          	bltu	a3,a4,80001b3c <_ZN5Riscv11trapHandlerEv+0xc0>
    80001aec:	ff870713          	addi	a4,a4,-8
    80001af0:	00100693          	li	a3,1
    80001af4:	16e6e463          	bltu	a3,a4,80001c5c <_ZN5Riscv11trapHandlerEv+0x1e0>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001af8:	14102773          	csrr	a4,sepc
    80001afc:	fce43423          	sd	a4,-56(s0)
    return sepc;
    80001b00:	fc843983          	ld	s3,-56(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001b04:	10002773          	csrr	a4,sstatus
    80001b08:	fce43023          	sd	a4,-64(s0)
    return sstatus;
    80001b0c:	fc043a03          	ld	s4,-64(s0)
            //ecall: software interrupt
            sepc = r_sepc();
            sstatus = r_sstatus();
            void* mem;
            uint64* stack;
            switch(a0){
    80001b10:	01300713          	li	a4,19
    80001b14:	04f74263          	blt	a4,a5,80001b58 <_ZN5Riscv11trapHandlerEv+0xdc>
    80001b18:	08f05863          	blez	a5,80001ba8 <_ZN5Riscv11trapHandlerEv+0x12c>
    80001b1c:	08f76663          	bltu	a4,a5,80001ba8 <_ZN5Riscv11trapHandlerEv+0x12c>
    80001b20:	00279793          	slli	a5,a5,0x2
    80001b24:	00004717          	auipc	a4,0x4
    80001b28:	4fc70713          	addi	a4,a4,1276 # 80006020 <CONSOLE_STATUS+0x10>
    80001b2c:	00e787b3          	add	a5,a5,a4
    80001b30:	0007a783          	lw	a5,0(a5)
    80001b34:	00e787b3          	add	a5,a5,a4
    80001b38:	00078067          	jr	a5
    switch (scause) {
    80001b3c:	fff00793          	li	a5,-1
    80001b40:	03f79793          	slli	a5,a5,0x3f
    80001b44:	00978793          	addi	a5,a5,9
    80001b48:	10f71a63          	bne	a4,a5,80001c5c <_ZN5Riscv11trapHandlerEv+0x1e0>
            //timer interrupt
            mc_sip(SIP_SSIP);
            break;
        case 0x8000000000000009UL:
            //external hardware interrupt
            console_handler();
    80001b4c:	00004097          	auipc	ra,0x4
    80001b50:	e24080e7          	jalr	-476(ra) # 80005970 <console_handler>
            break;
    80001b54:	1080006f          	j	80001c5c <_ZN5Riscv11trapHandlerEv+0x1e0>
    80001b58:	05100713          	li	a4,81
    80001b5c:	04e79663          	bne	a5,a4,80001ba8 <_ZN5Riscv11trapHandlerEv+0x12c>
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001b60:	100a1073          	csrw	sstatus,s4
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80001b64:	10000793          	li	a5,256
    80001b68:	1007b073          	csrc	sstatus,a5
                    w_sepc(sepc+4);
    80001b6c:	00498993          	addi	s3,s3,4
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001b70:	14199073          	csrw	sepc,s3
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80001b74:	00200793          	li	a5,2
    80001b78:	1447b073          	csrc	sip,a5
}
    80001b7c:	0e00006f          	j	80001c5c <_ZN5Riscv11trapHandlerEv+0x1e0>
        static MemoryAllocator instance;
    80001b80:	00006797          	auipc	a5,0x6
    80001b84:	8587c783          	lbu	a5,-1960(a5) # 800073d8 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80001b88:	00079863          	bnez	a5,80001b98 <_ZN5Riscv11trapHandlerEv+0x11c>
    80001b8c:	00100793          	li	a5,1
    80001b90:	00006717          	auipc	a4,0x6
    80001b94:	84f70423          	sb	a5,-1976(a4) # 800073d8 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
                    mem = MemoryAllocator::getInstance().allocate((size_t) a1);
    80001b98:	00048513          	mv	a0,s1
    80001b9c:	00000097          	auipc	ra,0x0
    80001ba0:	0e0080e7          	jalr	224(ra) # 80001c7c <_ZN15MemoryAllocator8allocateEm>
inline void Riscv::w_a3(uint64 a3) {
    __asm__ volatile ("mv a3, %0" : : "r"(a3));
}

inline void Riscv::push_a0(long a0) {
    __asm__ volatile ("sd %0, 10*8(fp)" : : "r"(a0));
    80001ba4:	04a43823          	sd	a0,80(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001ba8:	100a1073          	csrw	sstatus,s4
            w_sepc(sepc + 4);
    80001bac:	00498993          	addi	s3,s3,4
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001bb0:	14199073          	csrw	sepc,s3
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80001bb4:	00200793          	li	a5,2
    80001bb8:	1447b073          	csrc	sip,a5
}
    80001bbc:	0a00006f          	j	80001c5c <_ZN5Riscv11trapHandlerEv+0x1e0>
    80001bc0:	00006797          	auipc	a5,0x6
    80001bc4:	8187c783          	lbu	a5,-2024(a5) # 800073d8 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80001bc8:	00079863          	bnez	a5,80001bd8 <_ZN5Riscv11trapHandlerEv+0x15c>
    80001bcc:	00100793          	li	a5,1
    80001bd0:	00006717          	auipc	a4,0x6
    80001bd4:	80f70423          	sb	a5,-2040(a4) # 800073d8 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
                    push_a0(MemoryAllocator::getInstance().deallocate((void *)a1));
    80001bd8:	00048513          	mv	a0,s1
    80001bdc:	00000097          	auipc	ra,0x0
    80001be0:	188080e7          	jalr	392(ra) # 80001d64 <_ZN15MemoryAllocator10deallocateEPv>
    __asm__ volatile ("sd %0, 10*8(fp)" : : "r"(a0));
    80001be4:	04a43823          	sd	a0,80(s0)
}
    80001be8:	fc1ff06f          	j	80001ba8 <_ZN5Riscv11trapHandlerEv+0x12c>
                    if((uint64*)a1!= nullptr) stack = (uint64*)MemoryAllocator::getInstance().allocate(((DEFAULT_STACK_SIZE + 16+ MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE));
    80001bec:	04048263          	beqz	s1,80001c30 <_ZN5Riscv11trapHandlerEv+0x1b4>
    80001bf0:	00005797          	auipc	a5,0x5
    80001bf4:	7e87c783          	lbu	a5,2024(a5) # 800073d8 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80001bf8:	00079863          	bnez	a5,80001c08 <_ZN5Riscv11trapHandlerEv+0x18c>
    80001bfc:	00100793          	li	a5,1
    80001c00:	00005717          	auipc	a4,0x5
    80001c04:	7cf70c23          	sb	a5,2008(a4) # 800073d8 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80001c08:	04100513          	li	a0,65
    80001c0c:	00000097          	auipc	ra,0x0
    80001c10:	070080e7          	jalr	112(ra) # 80001c7c <_ZN15MemoryAllocator8allocateEm>
    80001c14:	00050613          	mv	a2,a0
                    push_a0((uint64)PCB::createThread((PCB::Body)a1, (void*)a2, stack));
    80001c18:	00090593          	mv	a1,s2
    80001c1c:	00048513          	mv	a0,s1
    80001c20:	fffff097          	auipc	ra,0xfffff
    80001c24:	7f8080e7          	jalr	2040(ra) # 80001418 <_ZN3PCB12createThreadEPFvPvES0_Pm>
    __asm__ volatile ("sd %0, 10*8(fp)" : : "r"(a0));
    80001c28:	04a43823          	sd	a0,80(s0)
}
    80001c2c:	f7dff06f          	j	80001ba8 <_ZN5Riscv11trapHandlerEv+0x12c>
                    else stack = nullptr;
    80001c30:	00000613          	li	a2,0
    80001c34:	fe5ff06f          	j	80001c18 <_ZN5Riscv11trapHandlerEv+0x19c>
                    push_a0(PCB::exit());
    80001c38:	00000097          	auipc	ra,0x0
    80001c3c:	8ec080e7          	jalr	-1812(ra) # 80001524 <_ZN3PCB4exitEv>
    __asm__ volatile ("sd %0, 10*8(fp)" : : "r"(a0));
    80001c40:	04a43823          	sd	a0,80(s0)
}
    80001c44:	f65ff06f          	j	80001ba8 <_ZN5Riscv11trapHandlerEv+0x12c>
                    PCB::dispatch();
    80001c48:	00000097          	auipc	ra,0x0
    80001c4c:	854080e7          	jalr	-1964(ra) # 8000149c <_ZN3PCB8dispatchEv>
                    break;
    80001c50:	f59ff06f          	j	80001ba8 <_ZN5Riscv11trapHandlerEv+0x12c>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80001c54:	00200793          	li	a5,2
    80001c58:	1447b073          	csrc	sip,a5
        default:
            break;
            //printString("ERROR: Unexpected interrupt!");
    }

    80001c5c:	05813083          	ld	ra,88(sp)
    80001c60:	05013403          	ld	s0,80(sp)
    80001c64:	04813483          	ld	s1,72(sp)
    80001c68:	04013903          	ld	s2,64(sp)
    80001c6c:	03813983          	ld	s3,56(sp)
    80001c70:	03013a03          	ld	s4,48(sp)
    80001c74:	06010113          	addi	sp,sp,96
    80001c78:	00008067          	ret

0000000080001c7c <_ZN15MemoryAllocator8allocateEm>:
Block *MemoryAllocator::free_list = nullptr;
Block *MemoryAllocator::allocated_list = nullptr;


// Allocate memory
void *MemoryAllocator::allocate(size_t size) {
    80001c7c:	ff010113          	addi	sp,sp,-16
    80001c80:	00813423          	sd	s0,8(sp)
    80001c84:	01010413          	addi	s0,sp,16
    80001c88:	00050613          	mv	a2,a0
    size_t sizeToAllocate = size * MEM_BLOCK_SIZE;
    80001c8c:	00651713          	slli	a4,a0,0x6

    Block *prev = nullptr;
    Block *current = free_list;
    80001c90:	00005517          	auipc	a0,0x5
    80001c94:	75053503          	ld	a0,1872(a0) # 800073e0 <_ZN15MemoryAllocator9free_listE>
    Block *prev = nullptr;
    80001c98:	00000693          	li	a3,0

    // Find a free block that is large enough
    while (current != nullptr) {
    80001c9c:	06050e63          	beqz	a0,80001d18 <_ZN15MemoryAllocator8allocateEm+0x9c>

        if (current->size >= sizeToAllocate) {
    80001ca0:	00053783          	ld	a5,0(a0)
    80001ca4:	00e7f863          	bgeu	a5,a4,80001cb4 <_ZN15MemoryAllocator8allocateEm+0x38>
            // Return the memory

            void *userPtr = (Block *) ((uint64 *) current + sizeof(Block));
            return userPtr;
        }
        prev = current;
    80001ca8:	00050693          	mv	a3,a0
        current = current->next;
    80001cac:	00853503          	ld	a0,8(a0)
    while (current != nullptr) {
    80001cb0:	fedff06f          	j	80001c9c <_ZN15MemoryAllocator8allocateEm+0x20>
            if (prev == nullptr) {
    80001cb4:	06068863          	beqz	a3,80001d24 <_ZN15MemoryAllocator8allocateEm+0xa8>
                prev->next = current->next;
    80001cb8:	00853783          	ld	a5,8(a0)
    80001cbc:	00f6b423          	sd	a5,8(a3)
            if (current->size - sizeToAllocate >= MEM_BLOCK_SIZE) {
    80001cc0:	00053783          	ld	a5,0(a0)
    80001cc4:	40e787b3          	sub	a5,a5,a4
    80001cc8:	03f00593          	li	a1,63
    80001ccc:	02f5f863          	bgeu	a1,a5,80001cfc <_ZN15MemoryAllocator8allocateEm+0x80>
                Block *newBlock = (Block *) ((uint64 *) current + sizeToAllocate);
    80001cd0:	00961613          	slli	a2,a2,0x9
    80001cd4:	00c50633          	add	a2,a0,a2
                newBlock->size = current->size - sizeToAllocate;
    80001cd8:	00f63023          	sd	a5,0(a2) # 8000 <_entry-0x7fff8000>
                current->size = sizeToAllocate;
    80001cdc:	00e53023          	sd	a4,0(a0)
                if (!free_list) {
    80001ce0:	00005797          	auipc	a5,0x5
    80001ce4:	7007b783          	ld	a5,1792(a5) # 800073e0 <_ZN15MemoryAllocator9free_listE>
    80001ce8:	04078663          	beqz	a5,80001d34 <_ZN15MemoryAllocator8allocateEm+0xb8>
                } else if (!prev) {
    80001cec:	04068c63          	beqz	a3,80001d44 <_ZN15MemoryAllocator8allocateEm+0xc8>
                    prev->next = newBlock;
    80001cf0:	00c6b423          	sd	a2,8(a3)
                    newBlock->next = current->next;
    80001cf4:	00853783          	ld	a5,8(a0)
    80001cf8:	00f63423          	sd	a5,8(a2)
            if (!allocated_list) {
    80001cfc:	00005797          	auipc	a5,0x5
    80001d00:	6ec7b783          	ld	a5,1772(a5) # 800073e8 <_ZN15MemoryAllocator14allocated_listE>
    80001d04:	04078863          	beqz	a5,80001d54 <_ZN15MemoryAllocator8allocateEm+0xd8>
                current->next = allocated_list;
    80001d08:	00f53423          	sd	a5,8(a0)
                allocated_list = current;
    80001d0c:	00005797          	auipc	a5,0x5
    80001d10:	6ca7be23          	sd	a0,1756(a5) # 800073e8 <_ZN15MemoryAllocator14allocated_listE>
            void *userPtr = (Block *) ((uint64 *) current + sizeof(Block));
    80001d14:	08050513          	addi	a0,a0,128
    }

    // No block was found
    return nullptr;
}
    80001d18:	00813403          	ld	s0,8(sp)
    80001d1c:	01010113          	addi	sp,sp,16
    80001d20:	00008067          	ret
                free_list = current->next;
    80001d24:	00853783          	ld	a5,8(a0)
    80001d28:	00005597          	auipc	a1,0x5
    80001d2c:	6af5bc23          	sd	a5,1720(a1) # 800073e0 <_ZN15MemoryAllocator9free_listE>
    80001d30:	f91ff06f          	j	80001cc0 <_ZN15MemoryAllocator8allocateEm+0x44>
                    free_list = newBlock;
    80001d34:	00005797          	auipc	a5,0x5
    80001d38:	6ac7b623          	sd	a2,1708(a5) # 800073e0 <_ZN15MemoryAllocator9free_listE>
                    newBlock->next = nullptr;
    80001d3c:	00063423          	sd	zero,8(a2)
    80001d40:	fbdff06f          	j	80001cfc <_ZN15MemoryAllocator8allocateEm+0x80>
                    newBlock->next = free_list;
    80001d44:	00f63423          	sd	a5,8(a2)
                    free_list = newBlock;
    80001d48:	00005797          	auipc	a5,0x5
    80001d4c:	68c7bc23          	sd	a2,1688(a5) # 800073e0 <_ZN15MemoryAllocator9free_listE>
    80001d50:	fadff06f          	j	80001cfc <_ZN15MemoryAllocator8allocateEm+0x80>
                allocated_list = current;
    80001d54:	00005797          	auipc	a5,0x5
    80001d58:	68a7ba23          	sd	a0,1684(a5) # 800073e8 <_ZN15MemoryAllocator14allocated_listE>
                allocated_list->next = nullptr;
    80001d5c:	00053423          	sd	zero,8(a0)
    80001d60:	fb5ff06f          	j	80001d14 <_ZN15MemoryAllocator8allocateEm+0x98>

0000000080001d64 <_ZN15MemoryAllocator10deallocateEPv>:

// Deallocate memory
int MemoryAllocator::deallocate(void *ptr) {
    80001d64:	ff010113          	addi	sp,sp,-16
    80001d68:	00813423          	sd	s0,8(sp)
    80001d6c:	01010413          	addi	s0,sp,16
    Block *block = (Block *) ((uint64 *) ptr - sizeof(Block));
    80001d70:	f8050713          	addi	a4,a0,-128
    Block *tmpPrev = nullptr;
    Block *tmp = allocated_list;
    80001d74:	00005797          	auipc	a5,0x5
    80001d78:	6747b783          	ld	a5,1652(a5) # 800073e8 <_ZN15MemoryAllocator14allocated_listE>
    Block *tmpPrev = nullptr;
    80001d7c:	00000693          	li	a3,0
    uint8 flag = 0;

    //Check if the block given was previously allocated
    while (tmp) {
    80001d80:	00078a63          	beqz	a5,80001d94 <_ZN15MemoryAllocator10deallocateEPv+0x30>
        if (tmp == block) {
    80001d84:	04e78263          	beq	a5,a4,80001dc8 <_ZN15MemoryAllocator10deallocateEPv+0x64>
            flag = 1;
            break;
        }
        tmpPrev = tmp;
    80001d88:	00078693          	mv	a3,a5
        tmp = tmp->next;
    80001d8c:	0087b783          	ld	a5,8(a5)
    while (tmp) {
    80001d90:	ff1ff06f          	j	80001d80 <_ZN15MemoryAllocator10deallocateEPv+0x1c>
    uint8 flag = 0;
    80001d94:	00000613          	li	a2,0
    }
    if (flag == 0) return -1;
    80001d98:	0e060263          	beqz	a2,80001e7c <_ZN15MemoryAllocator10deallocateEPv+0x118>

    // Found a block, remove it from the allocated list
    if (tmpPrev != nullptr) {
    80001d9c:	02068a63          	beqz	a3,80001dd0 <_ZN15MemoryAllocator10deallocateEPv+0x6c>
        tmpPrev->next = tmp->next;
    80001da0:	0087b783          	ld	a5,8(a5)
    80001da4:	00f6b423          	sd	a5,8(a3)
        allocated_list = tmp->next;
    }


    Block *prev = nullptr;
    Block *current = free_list;
    80001da8:	00005797          	auipc	a5,0x5
    80001dac:	6387b783          	ld	a5,1592(a5) # 800073e0 <_ZN15MemoryAllocator9free_listE>
    Block *prev = nullptr;
    80001db0:	00000693          	li	a3,0

    // Add it to the free_list
    while (current != nullptr) {
    80001db4:	02078c63          	beqz	a5,80001dec <_ZN15MemoryAllocator10deallocateEPv+0x88>
        if ((uint64 *) block < (uint64 *) current) {
    80001db8:	02f76463          	bltu	a4,a5,80001de0 <_ZN15MemoryAllocator10deallocateEPv+0x7c>
            } else {
                free_list = block;
            }
            break;
        }
        prev = current;
    80001dbc:	00078693          	mv	a3,a5
        current = current->next;
    80001dc0:	0087b783          	ld	a5,8(a5)
    while (current != nullptr) {
    80001dc4:	ff1ff06f          	j	80001db4 <_ZN15MemoryAllocator10deallocateEPv+0x50>
            flag = 1;
    80001dc8:	00100613          	li	a2,1
    80001dcc:	fcdff06f          	j	80001d98 <_ZN15MemoryAllocator10deallocateEPv+0x34>
        allocated_list = tmp->next;
    80001dd0:	0087b783          	ld	a5,8(a5)
    80001dd4:	00005697          	auipc	a3,0x5
    80001dd8:	60f6ba23          	sd	a5,1556(a3) # 800073e8 <_ZN15MemoryAllocator14allocated_listE>
    80001ddc:	fcdff06f          	j	80001da8 <_ZN15MemoryAllocator10deallocateEPv+0x44>
            block->next = current;
    80001de0:	f8f53423          	sd	a5,-120(a0)
            if (prev != nullptr) {
    80001de4:	04068463          	beqz	a3,80001e2c <_ZN15MemoryAllocator10deallocateEPv+0xc8>
                prev->next = block;
    80001de8:	00e6b423          	sd	a4,8(a3)
    }
    if (current == nullptr) {
    80001dec:	04078663          	beqz	a5,80001e38 <_ZN15MemoryAllocator10deallocateEPv+0xd4>
        //current = block;
        block->next = nullptr;
    }

    //Merge it with neighbour blocks if possible
    if (prev != nullptr) {
    80001df0:	00068a63          	beqz	a3,80001e04 <_ZN15MemoryAllocator10deallocateEPv+0xa0>
        if ((uint64 *) prev + prev->size == (uint64 *) block) {
    80001df4:	0006b603          	ld	a2,0(a3)
    80001df8:	00361793          	slli	a5,a2,0x3
    80001dfc:	00f687b3          	add	a5,a3,a5
    80001e00:	04e78263          	beq	a5,a4,80001e44 <_ZN15MemoryAllocator10deallocateEPv+0xe0>
            prev->size = prev->size + block->size;
            prev->next = block->next;
            block = prev;
        }
    }
    if (block->next != nullptr) {
    80001e04:	00873783          	ld	a5,8(a4)
    80001e08:	06078e63          	beqz	a5,80001e84 <_ZN15MemoryAllocator10deallocateEPv+0x120>
        if ((uint64 *) block + block->size == (uint64 *) block->next) {
    80001e0c:	00073603          	ld	a2,0(a4)
    80001e10:	00361693          	slli	a3,a2,0x3
    80001e14:	00d706b3          	add	a3,a4,a3
    80001e18:	04d78463          	beq	a5,a3,80001e60 <_ZN15MemoryAllocator10deallocateEPv+0xfc>
            block->size += block->next->size;
            block->next = block->next->next;
        }
    }

    return 0;
    80001e1c:	00000513          	li	a0,0

}
    80001e20:	00813403          	ld	s0,8(sp)
    80001e24:	01010113          	addi	sp,sp,16
    80001e28:	00008067          	ret
                free_list = block;
    80001e2c:	00005617          	auipc	a2,0x5
    80001e30:	5ae63a23          	sd	a4,1460(a2) # 800073e0 <_ZN15MemoryAllocator9free_listE>
    80001e34:	fb9ff06f          	j	80001dec <_ZN15MemoryAllocator10deallocateEPv+0x88>
        prev->next = block;
    80001e38:	00e6b423          	sd	a4,8(a3)
        block->next = nullptr;
    80001e3c:	f8053423          	sd	zero,-120(a0)
    80001e40:	fb1ff06f          	j	80001df0 <_ZN15MemoryAllocator10deallocateEPv+0x8c>
            prev->size = prev->size + block->size;
    80001e44:	f8053783          	ld	a5,-128(a0)
    80001e48:	00f60633          	add	a2,a2,a5
    80001e4c:	00c6b023          	sd	a2,0(a3)
            prev->next = block->next;
    80001e50:	f8853783          	ld	a5,-120(a0)
    80001e54:	00f6b423          	sd	a5,8(a3)
            block = prev;
    80001e58:	00068713          	mv	a4,a3
    80001e5c:	fa9ff06f          	j	80001e04 <_ZN15MemoryAllocator10deallocateEPv+0xa0>
            block->size += block->next->size;
    80001e60:	0007b683          	ld	a3,0(a5)
    80001e64:	00d60633          	add	a2,a2,a3
    80001e68:	00c73023          	sd	a2,0(a4)
            block->next = block->next->next;
    80001e6c:	0087b783          	ld	a5,8(a5)
    80001e70:	00f73423          	sd	a5,8(a4)
    return 0;
    80001e74:	00000513          	li	a0,0
    80001e78:	fa9ff06f          	j	80001e20 <_ZN15MemoryAllocator10deallocateEPv+0xbc>
    if (flag == 0) return -1;
    80001e7c:	fff00513          	li	a0,-1
    80001e80:	fa1ff06f          	j	80001e20 <_ZN15MemoryAllocator10deallocateEPv+0xbc>
    return 0;
    80001e84:	00000513          	li	a0,0
    80001e88:	f99ff06f          	j	80001e20 <_ZN15MemoryAllocator10deallocateEPv+0xbc>

0000000080001e8c <_Z4putcc>:
//
//    while (--i >= 0)
//        __putc(buf[i]);
//}

void putc(char c){
    80001e8c:	ff010113          	addi	sp,sp,-16
    80001e90:	00113423          	sd	ra,8(sp)
    80001e94:	00813023          	sd	s0,0(sp)
    80001e98:	01010413          	addi	s0,sp,16
    __putc(c);
    80001e9c:	00004097          	auipc	ra,0x4
    80001ea0:	a60080e7          	jalr	-1440(ra) # 800058fc <__putc>
}
    80001ea4:	00813083          	ld	ra,8(sp)
    80001ea8:	00013403          	ld	s0,0(sp)
    80001eac:	01010113          	addi	sp,sp,16
    80001eb0:	00008067          	ret

0000000080001eb4 <_Z4getcv>:

char getc(){
    80001eb4:	ff010113          	addi	sp,sp,-16
    80001eb8:	00113423          	sd	ra,8(sp)
    80001ebc:	00813023          	sd	s0,0(sp)
    80001ec0:	01010413          	addi	s0,sp,16
    return __getc();
    80001ec4:	00004097          	auipc	ra,0x4
    80001ec8:	a74080e7          	jalr	-1420(ra) # 80005938 <__getc>
    80001ecc:	00813083          	ld	ra,8(sp)
    80001ed0:	00013403          	ld	s0,0(sp)
    80001ed4:	01010113          	addi	sp,sp,16
    80001ed8:	00008067          	ret

0000000080001edc <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80001edc:	fe010113          	addi	sp,sp,-32
    80001ee0:	00113c23          	sd	ra,24(sp)
    80001ee4:	00813823          	sd	s0,16(sp)
    80001ee8:	00913423          	sd	s1,8(sp)
    80001eec:	01213023          	sd	s2,0(sp)
    80001ef0:	02010413          	addi	s0,sp,32
    80001ef4:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80001ef8:	00100793          	li	a5,1
    80001efc:	02a7f863          	bgeu	a5,a0,80001f2c <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80001f00:	00a00793          	li	a5,10
    80001f04:	02f577b3          	remu	a5,a0,a5
    80001f08:	02078e63          	beqz	a5,80001f44 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80001f0c:	fff48513          	addi	a0,s1,-1
    80001f10:	00000097          	auipc	ra,0x0
    80001f14:	fcc080e7          	jalr	-52(ra) # 80001edc <_ZL9fibonaccim>
    80001f18:	00050913          	mv	s2,a0
    80001f1c:	ffe48513          	addi	a0,s1,-2
    80001f20:	00000097          	auipc	ra,0x0
    80001f24:	fbc080e7          	jalr	-68(ra) # 80001edc <_ZL9fibonaccim>
    80001f28:	00a90533          	add	a0,s2,a0
}
    80001f2c:	01813083          	ld	ra,24(sp)
    80001f30:	01013403          	ld	s0,16(sp)
    80001f34:	00813483          	ld	s1,8(sp)
    80001f38:	00013903          	ld	s2,0(sp)
    80001f3c:	02010113          	addi	sp,sp,32
    80001f40:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80001f44:	fffff097          	auipc	ra,0xfffff
    80001f48:	44c080e7          	jalr	1100(ra) # 80001390 <_Z15thread_dispatchv>
    80001f4c:	fc1ff06f          	j	80001f0c <_ZL9fibonaccim+0x30>

0000000080001f50 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    80001f50:	fe010113          	addi	sp,sp,-32
    80001f54:	00113c23          	sd	ra,24(sp)
    80001f58:	00813823          	sd	s0,16(sp)
    80001f5c:	00913423          	sd	s1,8(sp)
    80001f60:	01213023          	sd	s2,0(sp)
    80001f64:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80001f68:	00000913          	li	s2,0
    80001f6c:	0380006f          	j	80001fa4 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80001f70:	fffff097          	auipc	ra,0xfffff
    80001f74:	420080e7          	jalr	1056(ra) # 80001390 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80001f78:	00148493          	addi	s1,s1,1
    80001f7c:	000027b7          	lui	a5,0x2
    80001f80:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80001f84:	0097ee63          	bltu	a5,s1,80001fa0 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80001f88:	00000713          	li	a4,0
    80001f8c:	000077b7          	lui	a5,0x7
    80001f90:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80001f94:	fce7eee3          	bltu	a5,a4,80001f70 <_ZN7WorkerA11workerBodyAEPv+0x20>
    80001f98:	00170713          	addi	a4,a4,1
    80001f9c:	ff1ff06f          	j	80001f8c <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80001fa0:	00190913          	addi	s2,s2,1
    80001fa4:	00900793          	li	a5,9
    80001fa8:	0527e063          	bltu	a5,s2,80001fe8 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80001fac:	00004517          	auipc	a0,0x4
    80001fb0:	0c450513          	addi	a0,a0,196 # 80006070 <CONSOLE_STATUS+0x60>
    80001fb4:	00001097          	auipc	ra,0x1
    80001fb8:	e9c080e7          	jalr	-356(ra) # 80002e50 <_Z11printStringPKc>
    80001fbc:	00000613          	li	a2,0
    80001fc0:	00a00593          	li	a1,10
    80001fc4:	0009051b          	sext.w	a0,s2
    80001fc8:	00001097          	auipc	ra,0x1
    80001fcc:	038080e7          	jalr	56(ra) # 80003000 <_Z8printIntiii>
    80001fd0:	00004517          	auipc	a0,0x4
    80001fd4:	44850513          	addi	a0,a0,1096 # 80006418 <CONSOLE_STATUS+0x408>
    80001fd8:	00001097          	auipc	ra,0x1
    80001fdc:	e78080e7          	jalr	-392(ra) # 80002e50 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80001fe0:	00000493          	li	s1,0
    80001fe4:	f99ff06f          	j	80001f7c <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80001fe8:	00004517          	auipc	a0,0x4
    80001fec:	09050513          	addi	a0,a0,144 # 80006078 <CONSOLE_STATUS+0x68>
    80001ff0:	00001097          	auipc	ra,0x1
    80001ff4:	e60080e7          	jalr	-416(ra) # 80002e50 <_Z11printStringPKc>
    finishedA = true;
    80001ff8:	00100793          	li	a5,1
    80001ffc:	00005717          	auipc	a4,0x5
    80002000:	3ef70a23          	sb	a5,1012(a4) # 800073f0 <_ZL9finishedA>
}
    80002004:	01813083          	ld	ra,24(sp)
    80002008:	01013403          	ld	s0,16(sp)
    8000200c:	00813483          	ld	s1,8(sp)
    80002010:	00013903          	ld	s2,0(sp)
    80002014:	02010113          	addi	sp,sp,32
    80002018:	00008067          	ret

000000008000201c <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    8000201c:	fe010113          	addi	sp,sp,-32
    80002020:	00113c23          	sd	ra,24(sp)
    80002024:	00813823          	sd	s0,16(sp)
    80002028:	00913423          	sd	s1,8(sp)
    8000202c:	01213023          	sd	s2,0(sp)
    80002030:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80002034:	00000913          	li	s2,0
    80002038:	0380006f          	j	80002070 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    8000203c:	fffff097          	auipc	ra,0xfffff
    80002040:	354080e7          	jalr	852(ra) # 80001390 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80002044:	00148493          	addi	s1,s1,1
    80002048:	000027b7          	lui	a5,0x2
    8000204c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80002050:	0097ee63          	bltu	a5,s1,8000206c <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80002054:	00000713          	li	a4,0
    80002058:	000077b7          	lui	a5,0x7
    8000205c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80002060:	fce7eee3          	bltu	a5,a4,8000203c <_ZN7WorkerB11workerBodyBEPv+0x20>
    80002064:	00170713          	addi	a4,a4,1
    80002068:	ff1ff06f          	j	80002058 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    8000206c:	00190913          	addi	s2,s2,1
    80002070:	00f00793          	li	a5,15
    80002074:	0527e063          	bltu	a5,s2,800020b4 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80002078:	00004517          	auipc	a0,0x4
    8000207c:	01050513          	addi	a0,a0,16 # 80006088 <CONSOLE_STATUS+0x78>
    80002080:	00001097          	auipc	ra,0x1
    80002084:	dd0080e7          	jalr	-560(ra) # 80002e50 <_Z11printStringPKc>
    80002088:	00000613          	li	a2,0
    8000208c:	00a00593          	li	a1,10
    80002090:	0009051b          	sext.w	a0,s2
    80002094:	00001097          	auipc	ra,0x1
    80002098:	f6c080e7          	jalr	-148(ra) # 80003000 <_Z8printIntiii>
    8000209c:	00004517          	auipc	a0,0x4
    800020a0:	37c50513          	addi	a0,a0,892 # 80006418 <CONSOLE_STATUS+0x408>
    800020a4:	00001097          	auipc	ra,0x1
    800020a8:	dac080e7          	jalr	-596(ra) # 80002e50 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800020ac:	00000493          	li	s1,0
    800020b0:	f99ff06f          	j	80002048 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    800020b4:	00004517          	auipc	a0,0x4
    800020b8:	fdc50513          	addi	a0,a0,-36 # 80006090 <CONSOLE_STATUS+0x80>
    800020bc:	00001097          	auipc	ra,0x1
    800020c0:	d94080e7          	jalr	-620(ra) # 80002e50 <_Z11printStringPKc>
    finishedB = true;
    800020c4:	00100793          	li	a5,1
    800020c8:	00005717          	auipc	a4,0x5
    800020cc:	32f704a3          	sb	a5,809(a4) # 800073f1 <_ZL9finishedB>
    thread_dispatch();
    800020d0:	fffff097          	auipc	ra,0xfffff
    800020d4:	2c0080e7          	jalr	704(ra) # 80001390 <_Z15thread_dispatchv>
}
    800020d8:	01813083          	ld	ra,24(sp)
    800020dc:	01013403          	ld	s0,16(sp)
    800020e0:	00813483          	ld	s1,8(sp)
    800020e4:	00013903          	ld	s2,0(sp)
    800020e8:	02010113          	addi	sp,sp,32
    800020ec:	00008067          	ret

00000000800020f0 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    800020f0:	fe010113          	addi	sp,sp,-32
    800020f4:	00113c23          	sd	ra,24(sp)
    800020f8:	00813823          	sd	s0,16(sp)
    800020fc:	00913423          	sd	s1,8(sp)
    80002100:	01213023          	sd	s2,0(sp)
    80002104:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80002108:	00000493          	li	s1,0
    8000210c:	0400006f          	j	8000214c <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80002110:	00004517          	auipc	a0,0x4
    80002114:	f9050513          	addi	a0,a0,-112 # 800060a0 <CONSOLE_STATUS+0x90>
    80002118:	00001097          	auipc	ra,0x1
    8000211c:	d38080e7          	jalr	-712(ra) # 80002e50 <_Z11printStringPKc>
    80002120:	00000613          	li	a2,0
    80002124:	00a00593          	li	a1,10
    80002128:	00048513          	mv	a0,s1
    8000212c:	00001097          	auipc	ra,0x1
    80002130:	ed4080e7          	jalr	-300(ra) # 80003000 <_Z8printIntiii>
    80002134:	00004517          	auipc	a0,0x4
    80002138:	2e450513          	addi	a0,a0,740 # 80006418 <CONSOLE_STATUS+0x408>
    8000213c:	00001097          	auipc	ra,0x1
    80002140:	d14080e7          	jalr	-748(ra) # 80002e50 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80002144:	0014849b          	addiw	s1,s1,1
    80002148:	0ff4f493          	andi	s1,s1,255
    8000214c:	00200793          	li	a5,2
    80002150:	fc97f0e3          	bgeu	a5,s1,80002110 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80002154:	00004517          	auipc	a0,0x4
    80002158:	f5450513          	addi	a0,a0,-172 # 800060a8 <CONSOLE_STATUS+0x98>
    8000215c:	00001097          	auipc	ra,0x1
    80002160:	cf4080e7          	jalr	-780(ra) # 80002e50 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80002164:	00700313          	li	t1,7
    thread_dispatch();
    80002168:	fffff097          	auipc	ra,0xfffff
    8000216c:	228080e7          	jalr	552(ra) # 80001390 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80002170:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80002174:	00004517          	auipc	a0,0x4
    80002178:	f4450513          	addi	a0,a0,-188 # 800060b8 <CONSOLE_STATUS+0xa8>
    8000217c:	00001097          	auipc	ra,0x1
    80002180:	cd4080e7          	jalr	-812(ra) # 80002e50 <_Z11printStringPKc>
    80002184:	00000613          	li	a2,0
    80002188:	00a00593          	li	a1,10
    8000218c:	0009051b          	sext.w	a0,s2
    80002190:	00001097          	auipc	ra,0x1
    80002194:	e70080e7          	jalr	-400(ra) # 80003000 <_Z8printIntiii>
    80002198:	00004517          	auipc	a0,0x4
    8000219c:	28050513          	addi	a0,a0,640 # 80006418 <CONSOLE_STATUS+0x408>
    800021a0:	00001097          	auipc	ra,0x1
    800021a4:	cb0080e7          	jalr	-848(ra) # 80002e50 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    800021a8:	00c00513          	li	a0,12
    800021ac:	00000097          	auipc	ra,0x0
    800021b0:	d30080e7          	jalr	-720(ra) # 80001edc <_ZL9fibonaccim>
    800021b4:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    800021b8:	00004517          	auipc	a0,0x4
    800021bc:	f0850513          	addi	a0,a0,-248 # 800060c0 <CONSOLE_STATUS+0xb0>
    800021c0:	00001097          	auipc	ra,0x1
    800021c4:	c90080e7          	jalr	-880(ra) # 80002e50 <_Z11printStringPKc>
    800021c8:	00000613          	li	a2,0
    800021cc:	00a00593          	li	a1,10
    800021d0:	0009051b          	sext.w	a0,s2
    800021d4:	00001097          	auipc	ra,0x1
    800021d8:	e2c080e7          	jalr	-468(ra) # 80003000 <_Z8printIntiii>
    800021dc:	00004517          	auipc	a0,0x4
    800021e0:	23c50513          	addi	a0,a0,572 # 80006418 <CONSOLE_STATUS+0x408>
    800021e4:	00001097          	auipc	ra,0x1
    800021e8:	c6c080e7          	jalr	-916(ra) # 80002e50 <_Z11printStringPKc>
    800021ec:	0400006f          	j	8000222c <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    800021f0:	00004517          	auipc	a0,0x4
    800021f4:	eb050513          	addi	a0,a0,-336 # 800060a0 <CONSOLE_STATUS+0x90>
    800021f8:	00001097          	auipc	ra,0x1
    800021fc:	c58080e7          	jalr	-936(ra) # 80002e50 <_Z11printStringPKc>
    80002200:	00000613          	li	a2,0
    80002204:	00a00593          	li	a1,10
    80002208:	00048513          	mv	a0,s1
    8000220c:	00001097          	auipc	ra,0x1
    80002210:	df4080e7          	jalr	-524(ra) # 80003000 <_Z8printIntiii>
    80002214:	00004517          	auipc	a0,0x4
    80002218:	20450513          	addi	a0,a0,516 # 80006418 <CONSOLE_STATUS+0x408>
    8000221c:	00001097          	auipc	ra,0x1
    80002220:	c34080e7          	jalr	-972(ra) # 80002e50 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80002224:	0014849b          	addiw	s1,s1,1
    80002228:	0ff4f493          	andi	s1,s1,255
    8000222c:	00500793          	li	a5,5
    80002230:	fc97f0e3          	bgeu	a5,s1,800021f0 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    80002234:	00004517          	auipc	a0,0x4
    80002238:	e4450513          	addi	a0,a0,-444 # 80006078 <CONSOLE_STATUS+0x68>
    8000223c:	00001097          	auipc	ra,0x1
    80002240:	c14080e7          	jalr	-1004(ra) # 80002e50 <_Z11printStringPKc>
    finishedC = true;
    80002244:	00100793          	li	a5,1
    80002248:	00005717          	auipc	a4,0x5
    8000224c:	1af70523          	sb	a5,426(a4) # 800073f2 <_ZL9finishedC>
    thread_dispatch();
    80002250:	fffff097          	auipc	ra,0xfffff
    80002254:	140080e7          	jalr	320(ra) # 80001390 <_Z15thread_dispatchv>
}
    80002258:	01813083          	ld	ra,24(sp)
    8000225c:	01013403          	ld	s0,16(sp)
    80002260:	00813483          	ld	s1,8(sp)
    80002264:	00013903          	ld	s2,0(sp)
    80002268:	02010113          	addi	sp,sp,32
    8000226c:	00008067          	ret

0000000080002270 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80002270:	fe010113          	addi	sp,sp,-32
    80002274:	00113c23          	sd	ra,24(sp)
    80002278:	00813823          	sd	s0,16(sp)
    8000227c:	00913423          	sd	s1,8(sp)
    80002280:	01213023          	sd	s2,0(sp)
    80002284:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80002288:	00a00493          	li	s1,10
    8000228c:	0400006f          	j	800022cc <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80002290:	00004517          	auipc	a0,0x4
    80002294:	e4050513          	addi	a0,a0,-448 # 800060d0 <CONSOLE_STATUS+0xc0>
    80002298:	00001097          	auipc	ra,0x1
    8000229c:	bb8080e7          	jalr	-1096(ra) # 80002e50 <_Z11printStringPKc>
    800022a0:	00000613          	li	a2,0
    800022a4:	00a00593          	li	a1,10
    800022a8:	00048513          	mv	a0,s1
    800022ac:	00001097          	auipc	ra,0x1
    800022b0:	d54080e7          	jalr	-684(ra) # 80003000 <_Z8printIntiii>
    800022b4:	00004517          	auipc	a0,0x4
    800022b8:	16450513          	addi	a0,a0,356 # 80006418 <CONSOLE_STATUS+0x408>
    800022bc:	00001097          	auipc	ra,0x1
    800022c0:	b94080e7          	jalr	-1132(ra) # 80002e50 <_Z11printStringPKc>
    for (; i < 13; i++) {
    800022c4:	0014849b          	addiw	s1,s1,1
    800022c8:	0ff4f493          	andi	s1,s1,255
    800022cc:	00c00793          	li	a5,12
    800022d0:	fc97f0e3          	bgeu	a5,s1,80002290 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    800022d4:	00004517          	auipc	a0,0x4
    800022d8:	e0450513          	addi	a0,a0,-508 # 800060d8 <CONSOLE_STATUS+0xc8>
    800022dc:	00001097          	auipc	ra,0x1
    800022e0:	b74080e7          	jalr	-1164(ra) # 80002e50 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800022e4:	00500313          	li	t1,5
    thread_dispatch();
    800022e8:	fffff097          	auipc	ra,0xfffff
    800022ec:	0a8080e7          	jalr	168(ra) # 80001390 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    800022f0:	01000513          	li	a0,16
    800022f4:	00000097          	auipc	ra,0x0
    800022f8:	be8080e7          	jalr	-1048(ra) # 80001edc <_ZL9fibonaccim>
    800022fc:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80002300:	00004517          	auipc	a0,0x4
    80002304:	de850513          	addi	a0,a0,-536 # 800060e8 <CONSOLE_STATUS+0xd8>
    80002308:	00001097          	auipc	ra,0x1
    8000230c:	b48080e7          	jalr	-1208(ra) # 80002e50 <_Z11printStringPKc>
    80002310:	00000613          	li	a2,0
    80002314:	00a00593          	li	a1,10
    80002318:	0009051b          	sext.w	a0,s2
    8000231c:	00001097          	auipc	ra,0x1
    80002320:	ce4080e7          	jalr	-796(ra) # 80003000 <_Z8printIntiii>
    80002324:	00004517          	auipc	a0,0x4
    80002328:	0f450513          	addi	a0,a0,244 # 80006418 <CONSOLE_STATUS+0x408>
    8000232c:	00001097          	auipc	ra,0x1
    80002330:	b24080e7          	jalr	-1244(ra) # 80002e50 <_Z11printStringPKc>
    80002334:	0400006f          	j	80002374 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80002338:	00004517          	auipc	a0,0x4
    8000233c:	d9850513          	addi	a0,a0,-616 # 800060d0 <CONSOLE_STATUS+0xc0>
    80002340:	00001097          	auipc	ra,0x1
    80002344:	b10080e7          	jalr	-1264(ra) # 80002e50 <_Z11printStringPKc>
    80002348:	00000613          	li	a2,0
    8000234c:	00a00593          	li	a1,10
    80002350:	00048513          	mv	a0,s1
    80002354:	00001097          	auipc	ra,0x1
    80002358:	cac080e7          	jalr	-852(ra) # 80003000 <_Z8printIntiii>
    8000235c:	00004517          	auipc	a0,0x4
    80002360:	0bc50513          	addi	a0,a0,188 # 80006418 <CONSOLE_STATUS+0x408>
    80002364:	00001097          	auipc	ra,0x1
    80002368:	aec080e7          	jalr	-1300(ra) # 80002e50 <_Z11printStringPKc>
    for (; i < 16; i++) {
    8000236c:	0014849b          	addiw	s1,s1,1
    80002370:	0ff4f493          	andi	s1,s1,255
    80002374:	00f00793          	li	a5,15
    80002378:	fc97f0e3          	bgeu	a5,s1,80002338 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    8000237c:	00004517          	auipc	a0,0x4
    80002380:	d7c50513          	addi	a0,a0,-644 # 800060f8 <CONSOLE_STATUS+0xe8>
    80002384:	00001097          	auipc	ra,0x1
    80002388:	acc080e7          	jalr	-1332(ra) # 80002e50 <_Z11printStringPKc>
    finishedD = true;
    8000238c:	00100793          	li	a5,1
    80002390:	00005717          	auipc	a4,0x5
    80002394:	06f701a3          	sb	a5,99(a4) # 800073f3 <_ZL9finishedD>
    thread_dispatch();
    80002398:	fffff097          	auipc	ra,0xfffff
    8000239c:	ff8080e7          	jalr	-8(ra) # 80001390 <_Z15thread_dispatchv>
}
    800023a0:	01813083          	ld	ra,24(sp)
    800023a4:	01013403          	ld	s0,16(sp)
    800023a8:	00813483          	ld	s1,8(sp)
    800023ac:	00013903          	ld	s2,0(sp)
    800023b0:	02010113          	addi	sp,sp,32
    800023b4:	00008067          	ret

00000000800023b8 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    800023b8:	fc010113          	addi	sp,sp,-64
    800023bc:	02113c23          	sd	ra,56(sp)
    800023c0:	02813823          	sd	s0,48(sp)
    800023c4:	02913423          	sd	s1,40(sp)
    800023c8:	03213023          	sd	s2,32(sp)
    800023cc:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    800023d0:	02000513          	li	a0,32
    800023d4:	fffff097          	auipc	ra,0xfffff
    800023d8:	3d8080e7          	jalr	984(ra) # 800017ac <_Znwm>
    800023dc:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    800023e0:	fffff097          	auipc	ra,0xfffff
    800023e4:	564080e7          	jalr	1380(ra) # 80001944 <_ZN6ThreadC1Ev>
    800023e8:	00005797          	auipc	a5,0x5
    800023ec:	ea878793          	addi	a5,a5,-344 # 80007290 <_ZTV7WorkerA+0x10>
    800023f0:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    800023f4:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    800023f8:	00004517          	auipc	a0,0x4
    800023fc:	d1050513          	addi	a0,a0,-752 # 80006108 <CONSOLE_STATUS+0xf8>
    80002400:	00001097          	auipc	ra,0x1
    80002404:	a50080e7          	jalr	-1456(ra) # 80002e50 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80002408:	02000513          	li	a0,32
    8000240c:	fffff097          	auipc	ra,0xfffff
    80002410:	3a0080e7          	jalr	928(ra) # 800017ac <_Znwm>
    80002414:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    80002418:	fffff097          	auipc	ra,0xfffff
    8000241c:	52c080e7          	jalr	1324(ra) # 80001944 <_ZN6ThreadC1Ev>
    80002420:	00005797          	auipc	a5,0x5
    80002424:	e9878793          	addi	a5,a5,-360 # 800072b8 <_ZTV7WorkerB+0x10>
    80002428:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    8000242c:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    80002430:	00004517          	auipc	a0,0x4
    80002434:	cf050513          	addi	a0,a0,-784 # 80006120 <CONSOLE_STATUS+0x110>
    80002438:	00001097          	auipc	ra,0x1
    8000243c:	a18080e7          	jalr	-1512(ra) # 80002e50 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80002440:	02000513          	li	a0,32
    80002444:	fffff097          	auipc	ra,0xfffff
    80002448:	368080e7          	jalr	872(ra) # 800017ac <_Znwm>
    8000244c:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    80002450:	fffff097          	auipc	ra,0xfffff
    80002454:	4f4080e7          	jalr	1268(ra) # 80001944 <_ZN6ThreadC1Ev>
    80002458:	00005797          	auipc	a5,0x5
    8000245c:	e8878793          	addi	a5,a5,-376 # 800072e0 <_ZTV7WorkerC+0x10>
    80002460:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    80002464:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80002468:	00004517          	auipc	a0,0x4
    8000246c:	cd050513          	addi	a0,a0,-816 # 80006138 <CONSOLE_STATUS+0x128>
    80002470:	00001097          	auipc	ra,0x1
    80002474:	9e0080e7          	jalr	-1568(ra) # 80002e50 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80002478:	02000513          	li	a0,32
    8000247c:	fffff097          	auipc	ra,0xfffff
    80002480:	330080e7          	jalr	816(ra) # 800017ac <_Znwm>
    80002484:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    80002488:	fffff097          	auipc	ra,0xfffff
    8000248c:	4bc080e7          	jalr	1212(ra) # 80001944 <_ZN6ThreadC1Ev>
    80002490:	00005797          	auipc	a5,0x5
    80002494:	e7878793          	addi	a5,a5,-392 # 80007308 <_ZTV7WorkerD+0x10>
    80002498:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    8000249c:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    800024a0:	00004517          	auipc	a0,0x4
    800024a4:	cb050513          	addi	a0,a0,-848 # 80006150 <CONSOLE_STATUS+0x140>
    800024a8:	00001097          	auipc	ra,0x1
    800024ac:	9a8080e7          	jalr	-1624(ra) # 80002e50 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    800024b0:	00000493          	li	s1,0
    800024b4:	00300793          	li	a5,3
    800024b8:	0297c663          	blt	a5,s1,800024e4 <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    800024bc:	00349793          	slli	a5,s1,0x3
    800024c0:	fe040713          	addi	a4,s0,-32
    800024c4:	00f707b3          	add	a5,a4,a5
    800024c8:	fe07b503          	ld	a0,-32(a5)
    800024cc:	fffff097          	auipc	ra,0xfffff
    800024d0:	4f4080e7          	jalr	1268(ra) # 800019c0 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    800024d4:	0014849b          	addiw	s1,s1,1
    800024d8:	fddff06f          	j	800024b4 <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    800024dc:	fffff097          	auipc	ra,0xfffff
    800024e0:	540080e7          	jalr	1344(ra) # 80001a1c <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800024e4:	00005797          	auipc	a5,0x5
    800024e8:	f0c7c783          	lbu	a5,-244(a5) # 800073f0 <_ZL9finishedA>
    800024ec:	fe0788e3          	beqz	a5,800024dc <_Z20Threads_CPP_API_testv+0x124>
    800024f0:	00005797          	auipc	a5,0x5
    800024f4:	f017c783          	lbu	a5,-255(a5) # 800073f1 <_ZL9finishedB>
    800024f8:	fe0782e3          	beqz	a5,800024dc <_Z20Threads_CPP_API_testv+0x124>
    800024fc:	00005797          	auipc	a5,0x5
    80002500:	ef67c783          	lbu	a5,-266(a5) # 800073f2 <_ZL9finishedC>
    80002504:	fc078ce3          	beqz	a5,800024dc <_Z20Threads_CPP_API_testv+0x124>
    80002508:	00005797          	auipc	a5,0x5
    8000250c:	eeb7c783          	lbu	a5,-277(a5) # 800073f3 <_ZL9finishedD>
    80002510:	fc0786e3          	beqz	a5,800024dc <_Z20Threads_CPP_API_testv+0x124>
    80002514:	fc040493          	addi	s1,s0,-64
    80002518:	0080006f          	j	80002520 <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    8000251c:	00848493          	addi	s1,s1,8
    80002520:	fe040793          	addi	a5,s0,-32
    80002524:	08f48663          	beq	s1,a5,800025b0 <_Z20Threads_CPP_API_testv+0x1f8>
    80002528:	0004b503          	ld	a0,0(s1)
    8000252c:	fe0508e3          	beqz	a0,8000251c <_Z20Threads_CPP_API_testv+0x164>
    80002530:	00053783          	ld	a5,0(a0)
    80002534:	0087b783          	ld	a5,8(a5)
    80002538:	000780e7          	jalr	a5
    8000253c:	fe1ff06f          	j	8000251c <_Z20Threads_CPP_API_testv+0x164>
    80002540:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    80002544:	00048513          	mv	a0,s1
    80002548:	fffff097          	auipc	ra,0xfffff
    8000254c:	2b4080e7          	jalr	692(ra) # 800017fc <_ZdlPv>
    80002550:	00090513          	mv	a0,s2
    80002554:	00006097          	auipc	ra,0x6
    80002558:	f84080e7          	jalr	-124(ra) # 800084d8 <_Unwind_Resume>
    8000255c:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    80002560:	00048513          	mv	a0,s1
    80002564:	fffff097          	auipc	ra,0xfffff
    80002568:	298080e7          	jalr	664(ra) # 800017fc <_ZdlPv>
    8000256c:	00090513          	mv	a0,s2
    80002570:	00006097          	auipc	ra,0x6
    80002574:	f68080e7          	jalr	-152(ra) # 800084d8 <_Unwind_Resume>
    80002578:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    8000257c:	00048513          	mv	a0,s1
    80002580:	fffff097          	auipc	ra,0xfffff
    80002584:	27c080e7          	jalr	636(ra) # 800017fc <_ZdlPv>
    80002588:	00090513          	mv	a0,s2
    8000258c:	00006097          	auipc	ra,0x6
    80002590:	f4c080e7          	jalr	-180(ra) # 800084d8 <_Unwind_Resume>
    80002594:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80002598:	00048513          	mv	a0,s1
    8000259c:	fffff097          	auipc	ra,0xfffff
    800025a0:	260080e7          	jalr	608(ra) # 800017fc <_ZdlPv>
    800025a4:	00090513          	mv	a0,s2
    800025a8:	00006097          	auipc	ra,0x6
    800025ac:	f30080e7          	jalr	-208(ra) # 800084d8 <_Unwind_Resume>
}
    800025b0:	03813083          	ld	ra,56(sp)
    800025b4:	03013403          	ld	s0,48(sp)
    800025b8:	02813483          	ld	s1,40(sp)
    800025bc:	02013903          	ld	s2,32(sp)
    800025c0:	04010113          	addi	sp,sp,64
    800025c4:	00008067          	ret

00000000800025c8 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    800025c8:	ff010113          	addi	sp,sp,-16
    800025cc:	00113423          	sd	ra,8(sp)
    800025d0:	00813023          	sd	s0,0(sp)
    800025d4:	01010413          	addi	s0,sp,16
    800025d8:	00005797          	auipc	a5,0x5
    800025dc:	cb878793          	addi	a5,a5,-840 # 80007290 <_ZTV7WorkerA+0x10>
    800025e0:	00f53023          	sd	a5,0(a0)
    800025e4:	fffff097          	auipc	ra,0xfffff
    800025e8:	268080e7          	jalr	616(ra) # 8000184c <_ZN6ThreadD1Ev>
    800025ec:	00813083          	ld	ra,8(sp)
    800025f0:	00013403          	ld	s0,0(sp)
    800025f4:	01010113          	addi	sp,sp,16
    800025f8:	00008067          	ret

00000000800025fc <_ZN7WorkerAD0Ev>:
    800025fc:	fe010113          	addi	sp,sp,-32
    80002600:	00113c23          	sd	ra,24(sp)
    80002604:	00813823          	sd	s0,16(sp)
    80002608:	00913423          	sd	s1,8(sp)
    8000260c:	02010413          	addi	s0,sp,32
    80002610:	00050493          	mv	s1,a0
    80002614:	00005797          	auipc	a5,0x5
    80002618:	c7c78793          	addi	a5,a5,-900 # 80007290 <_ZTV7WorkerA+0x10>
    8000261c:	00f53023          	sd	a5,0(a0)
    80002620:	fffff097          	auipc	ra,0xfffff
    80002624:	22c080e7          	jalr	556(ra) # 8000184c <_ZN6ThreadD1Ev>
    80002628:	00048513          	mv	a0,s1
    8000262c:	fffff097          	auipc	ra,0xfffff
    80002630:	1d0080e7          	jalr	464(ra) # 800017fc <_ZdlPv>
    80002634:	01813083          	ld	ra,24(sp)
    80002638:	01013403          	ld	s0,16(sp)
    8000263c:	00813483          	ld	s1,8(sp)
    80002640:	02010113          	addi	sp,sp,32
    80002644:	00008067          	ret

0000000080002648 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80002648:	ff010113          	addi	sp,sp,-16
    8000264c:	00113423          	sd	ra,8(sp)
    80002650:	00813023          	sd	s0,0(sp)
    80002654:	01010413          	addi	s0,sp,16
    80002658:	00005797          	auipc	a5,0x5
    8000265c:	c6078793          	addi	a5,a5,-928 # 800072b8 <_ZTV7WorkerB+0x10>
    80002660:	00f53023          	sd	a5,0(a0)
    80002664:	fffff097          	auipc	ra,0xfffff
    80002668:	1e8080e7          	jalr	488(ra) # 8000184c <_ZN6ThreadD1Ev>
    8000266c:	00813083          	ld	ra,8(sp)
    80002670:	00013403          	ld	s0,0(sp)
    80002674:	01010113          	addi	sp,sp,16
    80002678:	00008067          	ret

000000008000267c <_ZN7WorkerBD0Ev>:
    8000267c:	fe010113          	addi	sp,sp,-32
    80002680:	00113c23          	sd	ra,24(sp)
    80002684:	00813823          	sd	s0,16(sp)
    80002688:	00913423          	sd	s1,8(sp)
    8000268c:	02010413          	addi	s0,sp,32
    80002690:	00050493          	mv	s1,a0
    80002694:	00005797          	auipc	a5,0x5
    80002698:	c2478793          	addi	a5,a5,-988 # 800072b8 <_ZTV7WorkerB+0x10>
    8000269c:	00f53023          	sd	a5,0(a0)
    800026a0:	fffff097          	auipc	ra,0xfffff
    800026a4:	1ac080e7          	jalr	428(ra) # 8000184c <_ZN6ThreadD1Ev>
    800026a8:	00048513          	mv	a0,s1
    800026ac:	fffff097          	auipc	ra,0xfffff
    800026b0:	150080e7          	jalr	336(ra) # 800017fc <_ZdlPv>
    800026b4:	01813083          	ld	ra,24(sp)
    800026b8:	01013403          	ld	s0,16(sp)
    800026bc:	00813483          	ld	s1,8(sp)
    800026c0:	02010113          	addi	sp,sp,32
    800026c4:	00008067          	ret

00000000800026c8 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    800026c8:	ff010113          	addi	sp,sp,-16
    800026cc:	00113423          	sd	ra,8(sp)
    800026d0:	00813023          	sd	s0,0(sp)
    800026d4:	01010413          	addi	s0,sp,16
    800026d8:	00005797          	auipc	a5,0x5
    800026dc:	c0878793          	addi	a5,a5,-1016 # 800072e0 <_ZTV7WorkerC+0x10>
    800026e0:	00f53023          	sd	a5,0(a0)
    800026e4:	fffff097          	auipc	ra,0xfffff
    800026e8:	168080e7          	jalr	360(ra) # 8000184c <_ZN6ThreadD1Ev>
    800026ec:	00813083          	ld	ra,8(sp)
    800026f0:	00013403          	ld	s0,0(sp)
    800026f4:	01010113          	addi	sp,sp,16
    800026f8:	00008067          	ret

00000000800026fc <_ZN7WorkerCD0Ev>:
    800026fc:	fe010113          	addi	sp,sp,-32
    80002700:	00113c23          	sd	ra,24(sp)
    80002704:	00813823          	sd	s0,16(sp)
    80002708:	00913423          	sd	s1,8(sp)
    8000270c:	02010413          	addi	s0,sp,32
    80002710:	00050493          	mv	s1,a0
    80002714:	00005797          	auipc	a5,0x5
    80002718:	bcc78793          	addi	a5,a5,-1076 # 800072e0 <_ZTV7WorkerC+0x10>
    8000271c:	00f53023          	sd	a5,0(a0)
    80002720:	fffff097          	auipc	ra,0xfffff
    80002724:	12c080e7          	jalr	300(ra) # 8000184c <_ZN6ThreadD1Ev>
    80002728:	00048513          	mv	a0,s1
    8000272c:	fffff097          	auipc	ra,0xfffff
    80002730:	0d0080e7          	jalr	208(ra) # 800017fc <_ZdlPv>
    80002734:	01813083          	ld	ra,24(sp)
    80002738:	01013403          	ld	s0,16(sp)
    8000273c:	00813483          	ld	s1,8(sp)
    80002740:	02010113          	addi	sp,sp,32
    80002744:	00008067          	ret

0000000080002748 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80002748:	ff010113          	addi	sp,sp,-16
    8000274c:	00113423          	sd	ra,8(sp)
    80002750:	00813023          	sd	s0,0(sp)
    80002754:	01010413          	addi	s0,sp,16
    80002758:	00005797          	auipc	a5,0x5
    8000275c:	bb078793          	addi	a5,a5,-1104 # 80007308 <_ZTV7WorkerD+0x10>
    80002760:	00f53023          	sd	a5,0(a0)
    80002764:	fffff097          	auipc	ra,0xfffff
    80002768:	0e8080e7          	jalr	232(ra) # 8000184c <_ZN6ThreadD1Ev>
    8000276c:	00813083          	ld	ra,8(sp)
    80002770:	00013403          	ld	s0,0(sp)
    80002774:	01010113          	addi	sp,sp,16
    80002778:	00008067          	ret

000000008000277c <_ZN7WorkerDD0Ev>:
    8000277c:	fe010113          	addi	sp,sp,-32
    80002780:	00113c23          	sd	ra,24(sp)
    80002784:	00813823          	sd	s0,16(sp)
    80002788:	00913423          	sd	s1,8(sp)
    8000278c:	02010413          	addi	s0,sp,32
    80002790:	00050493          	mv	s1,a0
    80002794:	00005797          	auipc	a5,0x5
    80002798:	b7478793          	addi	a5,a5,-1164 # 80007308 <_ZTV7WorkerD+0x10>
    8000279c:	00f53023          	sd	a5,0(a0)
    800027a0:	fffff097          	auipc	ra,0xfffff
    800027a4:	0ac080e7          	jalr	172(ra) # 8000184c <_ZN6ThreadD1Ev>
    800027a8:	00048513          	mv	a0,s1
    800027ac:	fffff097          	auipc	ra,0xfffff
    800027b0:	050080e7          	jalr	80(ra) # 800017fc <_ZdlPv>
    800027b4:	01813083          	ld	ra,24(sp)
    800027b8:	01013403          	ld	s0,16(sp)
    800027bc:	00813483          	ld	s1,8(sp)
    800027c0:	02010113          	addi	sp,sp,32
    800027c4:	00008067          	ret

00000000800027c8 <_ZN7WorkerA3runEv>:
    void run() override {
    800027c8:	ff010113          	addi	sp,sp,-16
    800027cc:	00113423          	sd	ra,8(sp)
    800027d0:	00813023          	sd	s0,0(sp)
    800027d4:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    800027d8:	00000593          	li	a1,0
    800027dc:	fffff097          	auipc	ra,0xfffff
    800027e0:	774080e7          	jalr	1908(ra) # 80001f50 <_ZN7WorkerA11workerBodyAEPv>
    }
    800027e4:	00813083          	ld	ra,8(sp)
    800027e8:	00013403          	ld	s0,0(sp)
    800027ec:	01010113          	addi	sp,sp,16
    800027f0:	00008067          	ret

00000000800027f4 <_ZN7WorkerB3runEv>:
    void run() override {
    800027f4:	ff010113          	addi	sp,sp,-16
    800027f8:	00113423          	sd	ra,8(sp)
    800027fc:	00813023          	sd	s0,0(sp)
    80002800:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80002804:	00000593          	li	a1,0
    80002808:	00000097          	auipc	ra,0x0
    8000280c:	814080e7          	jalr	-2028(ra) # 8000201c <_ZN7WorkerB11workerBodyBEPv>
    }
    80002810:	00813083          	ld	ra,8(sp)
    80002814:	00013403          	ld	s0,0(sp)
    80002818:	01010113          	addi	sp,sp,16
    8000281c:	00008067          	ret

0000000080002820 <_ZN7WorkerC3runEv>:
    void run() override {
    80002820:	ff010113          	addi	sp,sp,-16
    80002824:	00113423          	sd	ra,8(sp)
    80002828:	00813023          	sd	s0,0(sp)
    8000282c:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    80002830:	00000593          	li	a1,0
    80002834:	00000097          	auipc	ra,0x0
    80002838:	8bc080e7          	jalr	-1860(ra) # 800020f0 <_ZN7WorkerC11workerBodyCEPv>
    }
    8000283c:	00813083          	ld	ra,8(sp)
    80002840:	00013403          	ld	s0,0(sp)
    80002844:	01010113          	addi	sp,sp,16
    80002848:	00008067          	ret

000000008000284c <_ZN7WorkerD3runEv>:
    void run() override {
    8000284c:	ff010113          	addi	sp,sp,-16
    80002850:	00113423          	sd	ra,8(sp)
    80002854:	00813023          	sd	s0,0(sp)
    80002858:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    8000285c:	00000593          	li	a1,0
    80002860:	00000097          	auipc	ra,0x0
    80002864:	a10080e7          	jalr	-1520(ra) # 80002270 <_ZN7WorkerD11workerBodyDEPv>
    }
    80002868:	00813083          	ld	ra,8(sp)
    8000286c:	00013403          	ld	s0,0(sp)
    80002870:	01010113          	addi	sp,sp,16
    80002874:	00008067          	ret

0000000080002878 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80002878:	fe010113          	addi	sp,sp,-32
    8000287c:	00113c23          	sd	ra,24(sp)
    80002880:	00813823          	sd	s0,16(sp)
    80002884:	00913423          	sd	s1,8(sp)
    80002888:	01213023          	sd	s2,0(sp)
    8000288c:	02010413          	addi	s0,sp,32
    80002890:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80002894:	00100793          	li	a5,1
    80002898:	02a7f863          	bgeu	a5,a0,800028c8 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    8000289c:	00a00793          	li	a5,10
    800028a0:	02f577b3          	remu	a5,a0,a5
    800028a4:	02078e63          	beqz	a5,800028e0 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800028a8:	fff48513          	addi	a0,s1,-1
    800028ac:	00000097          	auipc	ra,0x0
    800028b0:	fcc080e7          	jalr	-52(ra) # 80002878 <_ZL9fibonaccim>
    800028b4:	00050913          	mv	s2,a0
    800028b8:	ffe48513          	addi	a0,s1,-2
    800028bc:	00000097          	auipc	ra,0x0
    800028c0:	fbc080e7          	jalr	-68(ra) # 80002878 <_ZL9fibonaccim>
    800028c4:	00a90533          	add	a0,s2,a0
}
    800028c8:	01813083          	ld	ra,24(sp)
    800028cc:	01013403          	ld	s0,16(sp)
    800028d0:	00813483          	ld	s1,8(sp)
    800028d4:	00013903          	ld	s2,0(sp)
    800028d8:	02010113          	addi	sp,sp,32
    800028dc:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800028e0:	fffff097          	auipc	ra,0xfffff
    800028e4:	ab0080e7          	jalr	-1360(ra) # 80001390 <_Z15thread_dispatchv>
    800028e8:	fc1ff06f          	j	800028a8 <_ZL9fibonaccim+0x30>

00000000800028ec <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    800028ec:	fe010113          	addi	sp,sp,-32
    800028f0:	00113c23          	sd	ra,24(sp)
    800028f4:	00813823          	sd	s0,16(sp)
    800028f8:	00913423          	sd	s1,8(sp)
    800028fc:	01213023          	sd	s2,0(sp)
    80002900:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80002904:	00a00493          	li	s1,10
    80002908:	0400006f          	j	80002948 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    8000290c:	00003517          	auipc	a0,0x3
    80002910:	7c450513          	addi	a0,a0,1988 # 800060d0 <CONSOLE_STATUS+0xc0>
    80002914:	00000097          	auipc	ra,0x0
    80002918:	53c080e7          	jalr	1340(ra) # 80002e50 <_Z11printStringPKc>
    8000291c:	00000613          	li	a2,0
    80002920:	00a00593          	li	a1,10
    80002924:	00048513          	mv	a0,s1
    80002928:	00000097          	auipc	ra,0x0
    8000292c:	6d8080e7          	jalr	1752(ra) # 80003000 <_Z8printIntiii>
    80002930:	00004517          	auipc	a0,0x4
    80002934:	ae850513          	addi	a0,a0,-1304 # 80006418 <CONSOLE_STATUS+0x408>
    80002938:	00000097          	auipc	ra,0x0
    8000293c:	518080e7          	jalr	1304(ra) # 80002e50 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80002940:	0014849b          	addiw	s1,s1,1
    80002944:	0ff4f493          	andi	s1,s1,255
    80002948:	00c00793          	li	a5,12
    8000294c:	fc97f0e3          	bgeu	a5,s1,8000290c <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80002950:	00003517          	auipc	a0,0x3
    80002954:	78850513          	addi	a0,a0,1928 # 800060d8 <CONSOLE_STATUS+0xc8>
    80002958:	00000097          	auipc	ra,0x0
    8000295c:	4f8080e7          	jalr	1272(ra) # 80002e50 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80002960:	00500313          	li	t1,5
    thread_dispatch();
    80002964:	fffff097          	auipc	ra,0xfffff
    80002968:	a2c080e7          	jalr	-1492(ra) # 80001390 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    8000296c:	01000513          	li	a0,16
    80002970:	00000097          	auipc	ra,0x0
    80002974:	f08080e7          	jalr	-248(ra) # 80002878 <_ZL9fibonaccim>
    80002978:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    8000297c:	00003517          	auipc	a0,0x3
    80002980:	76c50513          	addi	a0,a0,1900 # 800060e8 <CONSOLE_STATUS+0xd8>
    80002984:	00000097          	auipc	ra,0x0
    80002988:	4cc080e7          	jalr	1228(ra) # 80002e50 <_Z11printStringPKc>
    8000298c:	00000613          	li	a2,0
    80002990:	00a00593          	li	a1,10
    80002994:	0009051b          	sext.w	a0,s2
    80002998:	00000097          	auipc	ra,0x0
    8000299c:	668080e7          	jalr	1640(ra) # 80003000 <_Z8printIntiii>
    800029a0:	00004517          	auipc	a0,0x4
    800029a4:	a7850513          	addi	a0,a0,-1416 # 80006418 <CONSOLE_STATUS+0x408>
    800029a8:	00000097          	auipc	ra,0x0
    800029ac:	4a8080e7          	jalr	1192(ra) # 80002e50 <_Z11printStringPKc>
    800029b0:	0400006f          	j	800029f0 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800029b4:	00003517          	auipc	a0,0x3
    800029b8:	71c50513          	addi	a0,a0,1820 # 800060d0 <CONSOLE_STATUS+0xc0>
    800029bc:	00000097          	auipc	ra,0x0
    800029c0:	494080e7          	jalr	1172(ra) # 80002e50 <_Z11printStringPKc>
    800029c4:	00000613          	li	a2,0
    800029c8:	00a00593          	li	a1,10
    800029cc:	00048513          	mv	a0,s1
    800029d0:	00000097          	auipc	ra,0x0
    800029d4:	630080e7          	jalr	1584(ra) # 80003000 <_Z8printIntiii>
    800029d8:	00004517          	auipc	a0,0x4
    800029dc:	a4050513          	addi	a0,a0,-1472 # 80006418 <CONSOLE_STATUS+0x408>
    800029e0:	00000097          	auipc	ra,0x0
    800029e4:	470080e7          	jalr	1136(ra) # 80002e50 <_Z11printStringPKc>
    for (; i < 16; i++) {
    800029e8:	0014849b          	addiw	s1,s1,1
    800029ec:	0ff4f493          	andi	s1,s1,255
    800029f0:	00f00793          	li	a5,15
    800029f4:	fc97f0e3          	bgeu	a5,s1,800029b4 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    800029f8:	00003517          	auipc	a0,0x3
    800029fc:	70050513          	addi	a0,a0,1792 # 800060f8 <CONSOLE_STATUS+0xe8>
    80002a00:	00000097          	auipc	ra,0x0
    80002a04:	450080e7          	jalr	1104(ra) # 80002e50 <_Z11printStringPKc>
    finishedD = true;
    80002a08:	00100793          	li	a5,1
    80002a0c:	00005717          	auipc	a4,0x5
    80002a10:	9ef70423          	sb	a5,-1560(a4) # 800073f4 <_ZL9finishedD>
    thread_dispatch();
    80002a14:	fffff097          	auipc	ra,0xfffff
    80002a18:	97c080e7          	jalr	-1668(ra) # 80001390 <_Z15thread_dispatchv>
}
    80002a1c:	01813083          	ld	ra,24(sp)
    80002a20:	01013403          	ld	s0,16(sp)
    80002a24:	00813483          	ld	s1,8(sp)
    80002a28:	00013903          	ld	s2,0(sp)
    80002a2c:	02010113          	addi	sp,sp,32
    80002a30:	00008067          	ret

0000000080002a34 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80002a34:	fe010113          	addi	sp,sp,-32
    80002a38:	00113c23          	sd	ra,24(sp)
    80002a3c:	00813823          	sd	s0,16(sp)
    80002a40:	00913423          	sd	s1,8(sp)
    80002a44:	01213023          	sd	s2,0(sp)
    80002a48:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80002a4c:	00000493          	li	s1,0
    80002a50:	0400006f          	j	80002a90 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80002a54:	00003517          	auipc	a0,0x3
    80002a58:	64c50513          	addi	a0,a0,1612 # 800060a0 <CONSOLE_STATUS+0x90>
    80002a5c:	00000097          	auipc	ra,0x0
    80002a60:	3f4080e7          	jalr	1012(ra) # 80002e50 <_Z11printStringPKc>
    80002a64:	00000613          	li	a2,0
    80002a68:	00a00593          	li	a1,10
    80002a6c:	00048513          	mv	a0,s1
    80002a70:	00000097          	auipc	ra,0x0
    80002a74:	590080e7          	jalr	1424(ra) # 80003000 <_Z8printIntiii>
    80002a78:	00004517          	auipc	a0,0x4
    80002a7c:	9a050513          	addi	a0,a0,-1632 # 80006418 <CONSOLE_STATUS+0x408>
    80002a80:	00000097          	auipc	ra,0x0
    80002a84:	3d0080e7          	jalr	976(ra) # 80002e50 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80002a88:	0014849b          	addiw	s1,s1,1
    80002a8c:	0ff4f493          	andi	s1,s1,255
    80002a90:	00200793          	li	a5,2
    80002a94:	fc97f0e3          	bgeu	a5,s1,80002a54 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80002a98:	00003517          	auipc	a0,0x3
    80002a9c:	61050513          	addi	a0,a0,1552 # 800060a8 <CONSOLE_STATUS+0x98>
    80002aa0:	00000097          	auipc	ra,0x0
    80002aa4:	3b0080e7          	jalr	944(ra) # 80002e50 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80002aa8:	00700313          	li	t1,7
    thread_dispatch();
    80002aac:	fffff097          	auipc	ra,0xfffff
    80002ab0:	8e4080e7          	jalr	-1820(ra) # 80001390 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80002ab4:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80002ab8:	00003517          	auipc	a0,0x3
    80002abc:	60050513          	addi	a0,a0,1536 # 800060b8 <CONSOLE_STATUS+0xa8>
    80002ac0:	00000097          	auipc	ra,0x0
    80002ac4:	390080e7          	jalr	912(ra) # 80002e50 <_Z11printStringPKc>
    80002ac8:	00000613          	li	a2,0
    80002acc:	00a00593          	li	a1,10
    80002ad0:	0009051b          	sext.w	a0,s2
    80002ad4:	00000097          	auipc	ra,0x0
    80002ad8:	52c080e7          	jalr	1324(ra) # 80003000 <_Z8printIntiii>
    80002adc:	00004517          	auipc	a0,0x4
    80002ae0:	93c50513          	addi	a0,a0,-1732 # 80006418 <CONSOLE_STATUS+0x408>
    80002ae4:	00000097          	auipc	ra,0x0
    80002ae8:	36c080e7          	jalr	876(ra) # 80002e50 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80002aec:	00c00513          	li	a0,12
    80002af0:	00000097          	auipc	ra,0x0
    80002af4:	d88080e7          	jalr	-632(ra) # 80002878 <_ZL9fibonaccim>
    80002af8:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80002afc:	00003517          	auipc	a0,0x3
    80002b00:	5c450513          	addi	a0,a0,1476 # 800060c0 <CONSOLE_STATUS+0xb0>
    80002b04:	00000097          	auipc	ra,0x0
    80002b08:	34c080e7          	jalr	844(ra) # 80002e50 <_Z11printStringPKc>
    80002b0c:	00000613          	li	a2,0
    80002b10:	00a00593          	li	a1,10
    80002b14:	0009051b          	sext.w	a0,s2
    80002b18:	00000097          	auipc	ra,0x0
    80002b1c:	4e8080e7          	jalr	1256(ra) # 80003000 <_Z8printIntiii>
    80002b20:	00004517          	auipc	a0,0x4
    80002b24:	8f850513          	addi	a0,a0,-1800 # 80006418 <CONSOLE_STATUS+0x408>
    80002b28:	00000097          	auipc	ra,0x0
    80002b2c:	328080e7          	jalr	808(ra) # 80002e50 <_Z11printStringPKc>
    80002b30:	0400006f          	j	80002b70 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80002b34:	00003517          	auipc	a0,0x3
    80002b38:	56c50513          	addi	a0,a0,1388 # 800060a0 <CONSOLE_STATUS+0x90>
    80002b3c:	00000097          	auipc	ra,0x0
    80002b40:	314080e7          	jalr	788(ra) # 80002e50 <_Z11printStringPKc>
    80002b44:	00000613          	li	a2,0
    80002b48:	00a00593          	li	a1,10
    80002b4c:	00048513          	mv	a0,s1
    80002b50:	00000097          	auipc	ra,0x0
    80002b54:	4b0080e7          	jalr	1200(ra) # 80003000 <_Z8printIntiii>
    80002b58:	00004517          	auipc	a0,0x4
    80002b5c:	8c050513          	addi	a0,a0,-1856 # 80006418 <CONSOLE_STATUS+0x408>
    80002b60:	00000097          	auipc	ra,0x0
    80002b64:	2f0080e7          	jalr	752(ra) # 80002e50 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80002b68:	0014849b          	addiw	s1,s1,1
    80002b6c:	0ff4f493          	andi	s1,s1,255
    80002b70:	00500793          	li	a5,5
    80002b74:	fc97f0e3          	bgeu	a5,s1,80002b34 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80002b78:	00003517          	auipc	a0,0x3
    80002b7c:	50050513          	addi	a0,a0,1280 # 80006078 <CONSOLE_STATUS+0x68>
    80002b80:	00000097          	auipc	ra,0x0
    80002b84:	2d0080e7          	jalr	720(ra) # 80002e50 <_Z11printStringPKc>
    finishedC = true;
    80002b88:	00100793          	li	a5,1
    80002b8c:	00005717          	auipc	a4,0x5
    80002b90:	86f704a3          	sb	a5,-1943(a4) # 800073f5 <_ZL9finishedC>
    thread_dispatch();
    80002b94:	ffffe097          	auipc	ra,0xffffe
    80002b98:	7fc080e7          	jalr	2044(ra) # 80001390 <_Z15thread_dispatchv>
}
    80002b9c:	01813083          	ld	ra,24(sp)
    80002ba0:	01013403          	ld	s0,16(sp)
    80002ba4:	00813483          	ld	s1,8(sp)
    80002ba8:	00013903          	ld	s2,0(sp)
    80002bac:	02010113          	addi	sp,sp,32
    80002bb0:	00008067          	ret

0000000080002bb4 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80002bb4:	fe010113          	addi	sp,sp,-32
    80002bb8:	00113c23          	sd	ra,24(sp)
    80002bbc:	00813823          	sd	s0,16(sp)
    80002bc0:	00913423          	sd	s1,8(sp)
    80002bc4:	01213023          	sd	s2,0(sp)
    80002bc8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80002bcc:	00000913          	li	s2,0
    80002bd0:	0380006f          	j	80002c08 <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    80002bd4:	ffffe097          	auipc	ra,0xffffe
    80002bd8:	7bc080e7          	jalr	1980(ra) # 80001390 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80002bdc:	00148493          	addi	s1,s1,1
    80002be0:	000027b7          	lui	a5,0x2
    80002be4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80002be8:	0097ee63          	bltu	a5,s1,80002c04 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80002bec:	00000713          	li	a4,0
    80002bf0:	000077b7          	lui	a5,0x7
    80002bf4:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80002bf8:	fce7eee3          	bltu	a5,a4,80002bd4 <_ZL11workerBodyBPv+0x20>
    80002bfc:	00170713          	addi	a4,a4,1
    80002c00:	ff1ff06f          	j	80002bf0 <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80002c04:	00190913          	addi	s2,s2,1
    80002c08:	00f00793          	li	a5,15
    80002c0c:	0527e063          	bltu	a5,s2,80002c4c <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80002c10:	00003517          	auipc	a0,0x3
    80002c14:	47850513          	addi	a0,a0,1144 # 80006088 <CONSOLE_STATUS+0x78>
    80002c18:	00000097          	auipc	ra,0x0
    80002c1c:	238080e7          	jalr	568(ra) # 80002e50 <_Z11printStringPKc>
    80002c20:	00000613          	li	a2,0
    80002c24:	00a00593          	li	a1,10
    80002c28:	0009051b          	sext.w	a0,s2
    80002c2c:	00000097          	auipc	ra,0x0
    80002c30:	3d4080e7          	jalr	980(ra) # 80003000 <_Z8printIntiii>
    80002c34:	00003517          	auipc	a0,0x3
    80002c38:	7e450513          	addi	a0,a0,2020 # 80006418 <CONSOLE_STATUS+0x408>
    80002c3c:	00000097          	auipc	ra,0x0
    80002c40:	214080e7          	jalr	532(ra) # 80002e50 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80002c44:	00000493          	li	s1,0
    80002c48:	f99ff06f          	j	80002be0 <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    80002c4c:	00003517          	auipc	a0,0x3
    80002c50:	44450513          	addi	a0,a0,1092 # 80006090 <CONSOLE_STATUS+0x80>
    80002c54:	00000097          	auipc	ra,0x0
    80002c58:	1fc080e7          	jalr	508(ra) # 80002e50 <_Z11printStringPKc>
    finishedB = true;
    80002c5c:	00100793          	li	a5,1
    80002c60:	00004717          	auipc	a4,0x4
    80002c64:	78f70b23          	sb	a5,1942(a4) # 800073f6 <_ZL9finishedB>
    thread_dispatch();
    80002c68:	ffffe097          	auipc	ra,0xffffe
    80002c6c:	728080e7          	jalr	1832(ra) # 80001390 <_Z15thread_dispatchv>
}
    80002c70:	01813083          	ld	ra,24(sp)
    80002c74:	01013403          	ld	s0,16(sp)
    80002c78:	00813483          	ld	s1,8(sp)
    80002c7c:	00013903          	ld	s2,0(sp)
    80002c80:	02010113          	addi	sp,sp,32
    80002c84:	00008067          	ret

0000000080002c88 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80002c88:	fe010113          	addi	sp,sp,-32
    80002c8c:	00113c23          	sd	ra,24(sp)
    80002c90:	00813823          	sd	s0,16(sp)
    80002c94:	00913423          	sd	s1,8(sp)
    80002c98:	01213023          	sd	s2,0(sp)
    80002c9c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80002ca0:	00000913          	li	s2,0
    80002ca4:	0380006f          	j	80002cdc <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80002ca8:	ffffe097          	auipc	ra,0xffffe
    80002cac:	6e8080e7          	jalr	1768(ra) # 80001390 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80002cb0:	00148493          	addi	s1,s1,1
    80002cb4:	000027b7          	lui	a5,0x2
    80002cb8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80002cbc:	0097ee63          	bltu	a5,s1,80002cd8 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80002cc0:	00000713          	li	a4,0
    80002cc4:	000077b7          	lui	a5,0x7
    80002cc8:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80002ccc:	fce7eee3          	bltu	a5,a4,80002ca8 <_ZL11workerBodyAPv+0x20>
    80002cd0:	00170713          	addi	a4,a4,1
    80002cd4:	ff1ff06f          	j	80002cc4 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80002cd8:	00190913          	addi	s2,s2,1
    80002cdc:	00900793          	li	a5,9
    80002ce0:	0527e063          	bltu	a5,s2,80002d20 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80002ce4:	00003517          	auipc	a0,0x3
    80002ce8:	38c50513          	addi	a0,a0,908 # 80006070 <CONSOLE_STATUS+0x60>
    80002cec:	00000097          	auipc	ra,0x0
    80002cf0:	164080e7          	jalr	356(ra) # 80002e50 <_Z11printStringPKc>
    80002cf4:	00000613          	li	a2,0
    80002cf8:	00a00593          	li	a1,10
    80002cfc:	0009051b          	sext.w	a0,s2
    80002d00:	00000097          	auipc	ra,0x0
    80002d04:	300080e7          	jalr	768(ra) # 80003000 <_Z8printIntiii>
    80002d08:	00003517          	auipc	a0,0x3
    80002d0c:	71050513          	addi	a0,a0,1808 # 80006418 <CONSOLE_STATUS+0x408>
    80002d10:	00000097          	auipc	ra,0x0
    80002d14:	140080e7          	jalr	320(ra) # 80002e50 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80002d18:	00000493          	li	s1,0
    80002d1c:	f99ff06f          	j	80002cb4 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80002d20:	00003517          	auipc	a0,0x3
    80002d24:	35850513          	addi	a0,a0,856 # 80006078 <CONSOLE_STATUS+0x68>
    80002d28:	00000097          	auipc	ra,0x0
    80002d2c:	128080e7          	jalr	296(ra) # 80002e50 <_Z11printStringPKc>
    finishedA = true;
    80002d30:	00100793          	li	a5,1
    80002d34:	00004717          	auipc	a4,0x4
    80002d38:	6cf701a3          	sb	a5,1731(a4) # 800073f7 <_ZL9finishedA>
}
    80002d3c:	01813083          	ld	ra,24(sp)
    80002d40:	01013403          	ld	s0,16(sp)
    80002d44:	00813483          	ld	s1,8(sp)
    80002d48:	00013903          	ld	s2,0(sp)
    80002d4c:	02010113          	addi	sp,sp,32
    80002d50:	00008067          	ret

0000000080002d54 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80002d54:	fd010113          	addi	sp,sp,-48
    80002d58:	02113423          	sd	ra,40(sp)
    80002d5c:	02813023          	sd	s0,32(sp)
    80002d60:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80002d64:	00000613          	li	a2,0
    80002d68:	00000597          	auipc	a1,0x0
    80002d6c:	f2058593          	addi	a1,a1,-224 # 80002c88 <_ZL11workerBodyAPv>
    80002d70:	fd040513          	addi	a0,s0,-48
    80002d74:	ffffe097          	auipc	ra,0xffffe
    80002d78:	598080e7          	jalr	1432(ra) # 8000130c <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadA created\n");
    80002d7c:	00003517          	auipc	a0,0x3
    80002d80:	38c50513          	addi	a0,a0,908 # 80006108 <CONSOLE_STATUS+0xf8>
    80002d84:	00000097          	auipc	ra,0x0
    80002d88:	0cc080e7          	jalr	204(ra) # 80002e50 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80002d8c:	00000613          	li	a2,0
    80002d90:	00000597          	auipc	a1,0x0
    80002d94:	e2458593          	addi	a1,a1,-476 # 80002bb4 <_ZL11workerBodyBPv>
    80002d98:	fd840513          	addi	a0,s0,-40
    80002d9c:	ffffe097          	auipc	ra,0xffffe
    80002da0:	570080e7          	jalr	1392(ra) # 8000130c <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadB created\n");
    80002da4:	00003517          	auipc	a0,0x3
    80002da8:	37c50513          	addi	a0,a0,892 # 80006120 <CONSOLE_STATUS+0x110>
    80002dac:	00000097          	auipc	ra,0x0
    80002db0:	0a4080e7          	jalr	164(ra) # 80002e50 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80002db4:	00000613          	li	a2,0
    80002db8:	00000597          	auipc	a1,0x0
    80002dbc:	c7c58593          	addi	a1,a1,-900 # 80002a34 <_ZL11workerBodyCPv>
    80002dc0:	fe040513          	addi	a0,s0,-32
    80002dc4:	ffffe097          	auipc	ra,0xffffe
    80002dc8:	548080e7          	jalr	1352(ra) # 8000130c <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadC created\n");
    80002dcc:	00003517          	auipc	a0,0x3
    80002dd0:	36c50513          	addi	a0,a0,876 # 80006138 <CONSOLE_STATUS+0x128>
    80002dd4:	00000097          	auipc	ra,0x0
    80002dd8:	07c080e7          	jalr	124(ra) # 80002e50 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80002ddc:	00000613          	li	a2,0
    80002de0:	00000597          	auipc	a1,0x0
    80002de4:	b0c58593          	addi	a1,a1,-1268 # 800028ec <_ZL11workerBodyDPv>
    80002de8:	fe840513          	addi	a0,s0,-24
    80002dec:	ffffe097          	auipc	ra,0xffffe
    80002df0:	520080e7          	jalr	1312(ra) # 8000130c <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadD created\n");
    80002df4:	00003517          	auipc	a0,0x3
    80002df8:	35c50513          	addi	a0,a0,860 # 80006150 <CONSOLE_STATUS+0x140>
    80002dfc:	00000097          	auipc	ra,0x0
    80002e00:	054080e7          	jalr	84(ra) # 80002e50 <_Z11printStringPKc>
    80002e04:	00c0006f          	j	80002e10 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80002e08:	ffffe097          	auipc	ra,0xffffe
    80002e0c:	588080e7          	jalr	1416(ra) # 80001390 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80002e10:	00004797          	auipc	a5,0x4
    80002e14:	5e77c783          	lbu	a5,1511(a5) # 800073f7 <_ZL9finishedA>
    80002e18:	fe0788e3          	beqz	a5,80002e08 <_Z18Threads_C_API_testv+0xb4>
    80002e1c:	00004797          	auipc	a5,0x4
    80002e20:	5da7c783          	lbu	a5,1498(a5) # 800073f6 <_ZL9finishedB>
    80002e24:	fe0782e3          	beqz	a5,80002e08 <_Z18Threads_C_API_testv+0xb4>
    80002e28:	00004797          	auipc	a5,0x4
    80002e2c:	5cd7c783          	lbu	a5,1485(a5) # 800073f5 <_ZL9finishedC>
    80002e30:	fc078ce3          	beqz	a5,80002e08 <_Z18Threads_C_API_testv+0xb4>
    80002e34:	00004797          	auipc	a5,0x4
    80002e38:	5c07c783          	lbu	a5,1472(a5) # 800073f4 <_ZL9finishedD>
    80002e3c:	fc0786e3          	beqz	a5,80002e08 <_Z18Threads_C_API_testv+0xb4>
    }

}
    80002e40:	02813083          	ld	ra,40(sp)
    80002e44:	02013403          	ld	s0,32(sp)
    80002e48:	03010113          	addi	sp,sp,48
    80002e4c:	00008067          	ret

0000000080002e50 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80002e50:	fe010113          	addi	sp,sp,-32
    80002e54:	00113c23          	sd	ra,24(sp)
    80002e58:	00813823          	sd	s0,16(sp)
    80002e5c:	00913423          	sd	s1,8(sp)
    80002e60:	02010413          	addi	s0,sp,32
    80002e64:	00050493          	mv	s1,a0
    LOCK();
    80002e68:	00100613          	li	a2,1
    80002e6c:	00000593          	li	a1,0
    80002e70:	00004517          	auipc	a0,0x4
    80002e74:	58850513          	addi	a0,a0,1416 # 800073f8 <lockPrint>
    80002e78:	ffffe097          	auipc	ra,0xffffe
    80002e7c:	3d4080e7          	jalr	980(ra) # 8000124c <copy_and_swap>
    80002e80:	00050863          	beqz	a0,80002e90 <_Z11printStringPKc+0x40>
    80002e84:	ffffe097          	auipc	ra,0xffffe
    80002e88:	50c080e7          	jalr	1292(ra) # 80001390 <_Z15thread_dispatchv>
    80002e8c:	fddff06f          	j	80002e68 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80002e90:	0004c503          	lbu	a0,0(s1)
    80002e94:	00050a63          	beqz	a0,80002ea8 <_Z11printStringPKc+0x58>
    {
        putc(*string);
    80002e98:	fffff097          	auipc	ra,0xfffff
    80002e9c:	ff4080e7          	jalr	-12(ra) # 80001e8c <_Z4putcc>
        string++;
    80002ea0:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80002ea4:	fedff06f          	j	80002e90 <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    80002ea8:	00000613          	li	a2,0
    80002eac:	00100593          	li	a1,1
    80002eb0:	00004517          	auipc	a0,0x4
    80002eb4:	54850513          	addi	a0,a0,1352 # 800073f8 <lockPrint>
    80002eb8:	ffffe097          	auipc	ra,0xffffe
    80002ebc:	394080e7          	jalr	916(ra) # 8000124c <copy_and_swap>
    80002ec0:	fe0514e3          	bnez	a0,80002ea8 <_Z11printStringPKc+0x58>
}
    80002ec4:	01813083          	ld	ra,24(sp)
    80002ec8:	01013403          	ld	s0,16(sp)
    80002ecc:	00813483          	ld	s1,8(sp)
    80002ed0:	02010113          	addi	sp,sp,32
    80002ed4:	00008067          	ret

0000000080002ed8 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80002ed8:	fd010113          	addi	sp,sp,-48
    80002edc:	02113423          	sd	ra,40(sp)
    80002ee0:	02813023          	sd	s0,32(sp)
    80002ee4:	00913c23          	sd	s1,24(sp)
    80002ee8:	01213823          	sd	s2,16(sp)
    80002eec:	01313423          	sd	s3,8(sp)
    80002ef0:	01413023          	sd	s4,0(sp)
    80002ef4:	03010413          	addi	s0,sp,48
    80002ef8:	00050993          	mv	s3,a0
    80002efc:	00058a13          	mv	s4,a1
    LOCK();
    80002f00:	00100613          	li	a2,1
    80002f04:	00000593          	li	a1,0
    80002f08:	00004517          	auipc	a0,0x4
    80002f0c:	4f050513          	addi	a0,a0,1264 # 800073f8 <lockPrint>
    80002f10:	ffffe097          	auipc	ra,0xffffe
    80002f14:	33c080e7          	jalr	828(ra) # 8000124c <copy_and_swap>
    80002f18:	00050863          	beqz	a0,80002f28 <_Z9getStringPci+0x50>
    80002f1c:	ffffe097          	auipc	ra,0xffffe
    80002f20:	474080e7          	jalr	1140(ra) # 80001390 <_Z15thread_dispatchv>
    80002f24:	fddff06f          	j	80002f00 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80002f28:	00000913          	li	s2,0
    80002f2c:	00090493          	mv	s1,s2
    80002f30:	0019091b          	addiw	s2,s2,1
    80002f34:	03495a63          	bge	s2,s4,80002f68 <_Z9getStringPci+0x90>
        cc = getc();
    80002f38:	fffff097          	auipc	ra,0xfffff
    80002f3c:	f7c080e7          	jalr	-132(ra) # 80001eb4 <_Z4getcv>
        if(cc < 1)
    80002f40:	02050463          	beqz	a0,80002f68 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    80002f44:	009984b3          	add	s1,s3,s1
    80002f48:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80002f4c:	00a00793          	li	a5,10
    80002f50:	00f50a63          	beq	a0,a5,80002f64 <_Z9getStringPci+0x8c>
    80002f54:	00d00793          	li	a5,13
    80002f58:	fcf51ae3          	bne	a0,a5,80002f2c <_Z9getStringPci+0x54>
        buf[i++] = c;
    80002f5c:	00090493          	mv	s1,s2
    80002f60:	0080006f          	j	80002f68 <_Z9getStringPci+0x90>
    80002f64:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80002f68:	009984b3          	add	s1,s3,s1
    80002f6c:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80002f70:	00000613          	li	a2,0
    80002f74:	00100593          	li	a1,1
    80002f78:	00004517          	auipc	a0,0x4
    80002f7c:	48050513          	addi	a0,a0,1152 # 800073f8 <lockPrint>
    80002f80:	ffffe097          	auipc	ra,0xffffe
    80002f84:	2cc080e7          	jalr	716(ra) # 8000124c <copy_and_swap>
    80002f88:	fe0514e3          	bnez	a0,80002f70 <_Z9getStringPci+0x98>
    return buf;
}
    80002f8c:	00098513          	mv	a0,s3
    80002f90:	02813083          	ld	ra,40(sp)
    80002f94:	02013403          	ld	s0,32(sp)
    80002f98:	01813483          	ld	s1,24(sp)
    80002f9c:	01013903          	ld	s2,16(sp)
    80002fa0:	00813983          	ld	s3,8(sp)
    80002fa4:	00013a03          	ld	s4,0(sp)
    80002fa8:	03010113          	addi	sp,sp,48
    80002fac:	00008067          	ret

0000000080002fb0 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80002fb0:	ff010113          	addi	sp,sp,-16
    80002fb4:	00813423          	sd	s0,8(sp)
    80002fb8:	01010413          	addi	s0,sp,16
    80002fbc:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80002fc0:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80002fc4:	0006c603          	lbu	a2,0(a3)
    80002fc8:	fd06071b          	addiw	a4,a2,-48
    80002fcc:	0ff77713          	andi	a4,a4,255
    80002fd0:	00900793          	li	a5,9
    80002fd4:	02e7e063          	bltu	a5,a4,80002ff4 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80002fd8:	0025179b          	slliw	a5,a0,0x2
    80002fdc:	00a787bb          	addw	a5,a5,a0
    80002fe0:	0017979b          	slliw	a5,a5,0x1
    80002fe4:	00168693          	addi	a3,a3,1
    80002fe8:	00c787bb          	addw	a5,a5,a2
    80002fec:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80002ff0:	fd5ff06f          	j	80002fc4 <_Z11stringToIntPKc+0x14>
    return n;
}
    80002ff4:	00813403          	ld	s0,8(sp)
    80002ff8:	01010113          	addi	sp,sp,16
    80002ffc:	00008067          	ret

0000000080003000 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80003000:	fc010113          	addi	sp,sp,-64
    80003004:	02113c23          	sd	ra,56(sp)
    80003008:	02813823          	sd	s0,48(sp)
    8000300c:	02913423          	sd	s1,40(sp)
    80003010:	03213023          	sd	s2,32(sp)
    80003014:	01313c23          	sd	s3,24(sp)
    80003018:	04010413          	addi	s0,sp,64
    8000301c:	00050493          	mv	s1,a0
    80003020:	00058913          	mv	s2,a1
    80003024:	00060993          	mv	s3,a2
    LOCK();
    80003028:	00100613          	li	a2,1
    8000302c:	00000593          	li	a1,0
    80003030:	00004517          	auipc	a0,0x4
    80003034:	3c850513          	addi	a0,a0,968 # 800073f8 <lockPrint>
    80003038:	ffffe097          	auipc	ra,0xffffe
    8000303c:	214080e7          	jalr	532(ra) # 8000124c <copy_and_swap>
    80003040:	00050863          	beqz	a0,80003050 <_Z8printIntiii+0x50>
    80003044:	ffffe097          	auipc	ra,0xffffe
    80003048:	34c080e7          	jalr	844(ra) # 80001390 <_Z15thread_dispatchv>
    8000304c:	fddff06f          	j	80003028 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80003050:	00098463          	beqz	s3,80003058 <_Z8printIntiii+0x58>
    80003054:	0804c463          	bltz	s1,800030dc <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80003058:	0004851b          	sext.w	a0,s1
    neg = 0;
    8000305c:	00000593          	li	a1,0
    }

    i = 0;
    80003060:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80003064:	0009079b          	sext.w	a5,s2
    80003068:	0325773b          	remuw	a4,a0,s2
    8000306c:	00048613          	mv	a2,s1
    80003070:	0014849b          	addiw	s1,s1,1
    80003074:	02071693          	slli	a3,a4,0x20
    80003078:	0206d693          	srli	a3,a3,0x20
    8000307c:	00004717          	auipc	a4,0x4
    80003080:	2a470713          	addi	a4,a4,676 # 80007320 <digits>
    80003084:	00d70733          	add	a4,a4,a3
    80003088:	00074683          	lbu	a3,0(a4)
    8000308c:	fd040713          	addi	a4,s0,-48
    80003090:	00c70733          	add	a4,a4,a2
    80003094:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80003098:	0005071b          	sext.w	a4,a0
    8000309c:	0325553b          	divuw	a0,a0,s2
    800030a0:	fcf772e3          	bgeu	a4,a5,80003064 <_Z8printIntiii+0x64>
    if(neg)
    800030a4:	00058c63          	beqz	a1,800030bc <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    800030a8:	fd040793          	addi	a5,s0,-48
    800030ac:	009784b3          	add	s1,a5,s1
    800030b0:	02d00793          	li	a5,45
    800030b4:	fef48823          	sb	a5,-16(s1)
    800030b8:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    800030bc:	fff4849b          	addiw	s1,s1,-1
    800030c0:	0204c463          	bltz	s1,800030e8 <_Z8printIntiii+0xe8>
        putc(buf[i]);
    800030c4:	fd040793          	addi	a5,s0,-48
    800030c8:	009787b3          	add	a5,a5,s1
    800030cc:	ff07c503          	lbu	a0,-16(a5)
    800030d0:	fffff097          	auipc	ra,0xfffff
    800030d4:	dbc080e7          	jalr	-580(ra) # 80001e8c <_Z4putcc>
    800030d8:	fe5ff06f          	j	800030bc <_Z8printIntiii+0xbc>
        x = -xx;
    800030dc:	4090053b          	negw	a0,s1
        neg = 1;
    800030e0:	00100593          	li	a1,1
        x = -xx;
    800030e4:	f7dff06f          	j	80003060 <_Z8printIntiii+0x60>

    UNLOCK();
    800030e8:	00000613          	li	a2,0
    800030ec:	00100593          	li	a1,1
    800030f0:	00004517          	auipc	a0,0x4
    800030f4:	30850513          	addi	a0,a0,776 # 800073f8 <lockPrint>
    800030f8:	ffffe097          	auipc	ra,0xffffe
    800030fc:	154080e7          	jalr	340(ra) # 8000124c <copy_and_swap>
    80003100:	fe0514e3          	bnez	a0,800030e8 <_Z8printIntiii+0xe8>
    80003104:	03813083          	ld	ra,56(sp)
    80003108:	03013403          	ld	s0,48(sp)
    8000310c:	02813483          	ld	s1,40(sp)
    80003110:	02013903          	ld	s2,32(sp)
    80003114:	01813983          	ld	s3,24(sp)
    80003118:	04010113          	addi	sp,sp,64
    8000311c:	00008067          	ret

0000000080003120 <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    80003120:	fe010113          	addi	sp,sp,-32
    80003124:	00113c23          	sd	ra,24(sp)
    80003128:	00813823          	sd	s0,16(sp)
    8000312c:	00913423          	sd	s1,8(sp)
    80003130:	01213023          	sd	s2,0(sp)
    80003134:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    80003138:	00003517          	auipc	a0,0x3
    8000313c:	03050513          	addi	a0,a0,48 # 80006168 <CONSOLE_STATUS+0x158>
    80003140:	00000097          	auipc	ra,0x0
    80003144:	d10080e7          	jalr	-752(ra) # 80002e50 <_Z11printStringPKc>
    int test = getc() - '0';
    80003148:	fffff097          	auipc	ra,0xfffff
    8000314c:	d6c080e7          	jalr	-660(ra) # 80001eb4 <_Z4getcv>
    80003150:	0005091b          	sext.w	s2,a0
    80003154:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    80003158:	fffff097          	auipc	ra,0xfffff
    8000315c:	d5c080e7          	jalr	-676(ra) # 80001eb4 <_Z4getcv>
            printString("Nije navedeno da je zadatak 2 implementiran\n");
            return;
        }
    }

    if (test >= 3 && test <= 4) {
    80003160:	fcd9071b          	addiw	a4,s2,-51
    80003164:	00100793          	li	a5,1
    80003168:	04e7f663          	bgeu	a5,a4,800031b4 <_Z8userMainv+0x94>
            printString("Nije navedeno da je zadatak 3 implementiran\n");
            return;
        }
    }

    if (test >= 5 && test <= 6) {
    8000316c:	fcb9091b          	addiw	s2,s2,-53
    80003170:	00100793          	li	a5,1
    80003174:	0727f463          	bgeu	a5,s2,800031dc <_Z8userMainv+0xbc>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    80003178:	00600793          	li	a5,6
    8000317c:	0697ca63          	blt	a5,s1,800031f0 <_Z8userMainv+0xd0>
    80003180:	00300793          	li	a5,3
    80003184:	04f4d063          	bge	s1,a5,800031c4 <_Z8userMainv+0xa4>
    80003188:	00100793          	li	a5,1
    8000318c:	08f48c63          	beq	s1,a5,80003224 <_Z8userMainv+0x104>
    80003190:	00200793          	li	a5,2
    80003194:	0af49663          	bne	s1,a5,80003240 <_Z8userMainv+0x120>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
#endif
            break;
        case 2:
#if LEVEL_2_IMPLEMENTED == 1
            Threads_CPP_API_test();
    80003198:	fffff097          	auipc	ra,0xfffff
    8000319c:	220080e7          	jalr	544(ra) # 800023b8 <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    800031a0:	00003517          	auipc	a0,0x3
    800031a4:	08850513          	addi	a0,a0,136 # 80006228 <CONSOLE_STATUS+0x218>
    800031a8:	00000097          	auipc	ra,0x0
    800031ac:	ca8080e7          	jalr	-856(ra) # 80002e50 <_Z11printStringPKc>
#endif
            break;
    800031b0:	0140006f          	j	800031c4 <_Z8userMainv+0xa4>
            printString("Nije navedeno da je zadatak 3 implementiran\n");
    800031b4:	00003517          	auipc	a0,0x3
    800031b8:	fd450513          	addi	a0,a0,-44 # 80006188 <CONSOLE_STATUS+0x178>
    800031bc:	00000097          	auipc	ra,0x0
    800031c0:	c94080e7          	jalr	-876(ra) # 80002e50 <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    800031c4:	01813083          	ld	ra,24(sp)
    800031c8:	01013403          	ld	s0,16(sp)
    800031cc:	00813483          	ld	s1,8(sp)
    800031d0:	00013903          	ld	s2,0(sp)
    800031d4:	02010113          	addi	sp,sp,32
    800031d8:	00008067          	ret
            printString("Nije navedeno da je zadatak 4 implementiran\n");
    800031dc:	00003517          	auipc	a0,0x3
    800031e0:	fdc50513          	addi	a0,a0,-36 # 800061b8 <CONSOLE_STATUS+0x1a8>
    800031e4:	00000097          	auipc	ra,0x0
    800031e8:	c6c080e7          	jalr	-916(ra) # 80002e50 <_Z11printStringPKc>
            return;
    800031ec:	fd9ff06f          	j	800031c4 <_Z8userMainv+0xa4>
    switch (test) {
    800031f0:	00700793          	li	a5,7
    800031f4:	04f49663          	bne	s1,a5,80003240 <_Z8userMainv+0x120>
            System_Mode_test();
    800031f8:	00000097          	auipc	ra,0x0
    800031fc:	548080e7          	jalr	1352(ra) # 80003740 <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    80003200:	00003517          	auipc	a0,0x3
    80003204:	06850513          	addi	a0,a0,104 # 80006268 <CONSOLE_STATUS+0x258>
    80003208:	00000097          	auipc	ra,0x0
    8000320c:	c48080e7          	jalr	-952(ra) # 80002e50 <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    80003210:	00003517          	auipc	a0,0x3
    80003214:	07850513          	addi	a0,a0,120 # 80006288 <CONSOLE_STATUS+0x278>
    80003218:	00000097          	auipc	ra,0x0
    8000321c:	c38080e7          	jalr	-968(ra) # 80002e50 <_Z11printStringPKc>
            break;
    80003220:	fa5ff06f          	j	800031c4 <_Z8userMainv+0xa4>
            Threads_C_API_test();
    80003224:	00000097          	auipc	ra,0x0
    80003228:	b30080e7          	jalr	-1232(ra) # 80002d54 <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    8000322c:	00003517          	auipc	a0,0x3
    80003230:	fbc50513          	addi	a0,a0,-68 # 800061e8 <CONSOLE_STATUS+0x1d8>
    80003234:	00000097          	auipc	ra,0x0
    80003238:	c1c080e7          	jalr	-996(ra) # 80002e50 <_Z11printStringPKc>
            break;
    8000323c:	f89ff06f          	j	800031c4 <_Z8userMainv+0xa4>
            printString("Niste uneli odgovarajuci broj za test\n");
    80003240:	00003517          	auipc	a0,0x3
    80003244:	0a050513          	addi	a0,a0,160 # 800062e0 <CONSOLE_STATUS+0x2d0>
    80003248:	00000097          	auipc	ra,0x0
    8000324c:	c08080e7          	jalr	-1016(ra) # 80002e50 <_Z11printStringPKc>
    80003250:	f75ff06f          	j	800031c4 <_Z8userMainv+0xa4>

0000000080003254 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80003254:	fe010113          	addi	sp,sp,-32
    80003258:	00113c23          	sd	ra,24(sp)
    8000325c:	00813823          	sd	s0,16(sp)
    80003260:	00913423          	sd	s1,8(sp)
    80003264:	01213023          	sd	s2,0(sp)
    80003268:	02010413          	addi	s0,sp,32
    8000326c:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80003270:	00100793          	li	a5,1
    80003274:	02a7f863          	bgeu	a5,a0,800032a4 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80003278:	00a00793          	li	a5,10
    8000327c:	02f577b3          	remu	a5,a0,a5
    80003280:	02078e63          	beqz	a5,800032bc <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80003284:	fff48513          	addi	a0,s1,-1
    80003288:	00000097          	auipc	ra,0x0
    8000328c:	fcc080e7          	jalr	-52(ra) # 80003254 <_ZL9fibonaccim>
    80003290:	00050913          	mv	s2,a0
    80003294:	ffe48513          	addi	a0,s1,-2
    80003298:	00000097          	auipc	ra,0x0
    8000329c:	fbc080e7          	jalr	-68(ra) # 80003254 <_ZL9fibonaccim>
    800032a0:	00a90533          	add	a0,s2,a0
}
    800032a4:	01813083          	ld	ra,24(sp)
    800032a8:	01013403          	ld	s0,16(sp)
    800032ac:	00813483          	ld	s1,8(sp)
    800032b0:	00013903          	ld	s2,0(sp)
    800032b4:	02010113          	addi	sp,sp,32
    800032b8:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800032bc:	ffffe097          	auipc	ra,0xffffe
    800032c0:	0d4080e7          	jalr	212(ra) # 80001390 <_Z15thread_dispatchv>
    800032c4:	fc1ff06f          	j	80003284 <_ZL9fibonaccim+0x30>

00000000800032c8 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    800032c8:	fe010113          	addi	sp,sp,-32
    800032cc:	00113c23          	sd	ra,24(sp)
    800032d0:	00813823          	sd	s0,16(sp)
    800032d4:	00913423          	sd	s1,8(sp)
    800032d8:	01213023          	sd	s2,0(sp)
    800032dc:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800032e0:	00a00493          	li	s1,10
    800032e4:	0400006f          	j	80003324 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800032e8:	00003517          	auipc	a0,0x3
    800032ec:	de850513          	addi	a0,a0,-536 # 800060d0 <CONSOLE_STATUS+0xc0>
    800032f0:	00000097          	auipc	ra,0x0
    800032f4:	b60080e7          	jalr	-1184(ra) # 80002e50 <_Z11printStringPKc>
    800032f8:	00000613          	li	a2,0
    800032fc:	00a00593          	li	a1,10
    80003300:	00048513          	mv	a0,s1
    80003304:	00000097          	auipc	ra,0x0
    80003308:	cfc080e7          	jalr	-772(ra) # 80003000 <_Z8printIntiii>
    8000330c:	00003517          	auipc	a0,0x3
    80003310:	10c50513          	addi	a0,a0,268 # 80006418 <CONSOLE_STATUS+0x408>
    80003314:	00000097          	auipc	ra,0x0
    80003318:	b3c080e7          	jalr	-1220(ra) # 80002e50 <_Z11printStringPKc>
    for (; i < 13; i++) {
    8000331c:	0014849b          	addiw	s1,s1,1
    80003320:	0ff4f493          	andi	s1,s1,255
    80003324:	00c00793          	li	a5,12
    80003328:	fc97f0e3          	bgeu	a5,s1,800032e8 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    8000332c:	00003517          	auipc	a0,0x3
    80003330:	dac50513          	addi	a0,a0,-596 # 800060d8 <CONSOLE_STATUS+0xc8>
    80003334:	00000097          	auipc	ra,0x0
    80003338:	b1c080e7          	jalr	-1252(ra) # 80002e50 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    8000333c:	00500313          	li	t1,5
    thread_dispatch();
    80003340:	ffffe097          	auipc	ra,0xffffe
    80003344:	050080e7          	jalr	80(ra) # 80001390 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80003348:	01000513          	li	a0,16
    8000334c:	00000097          	auipc	ra,0x0
    80003350:	f08080e7          	jalr	-248(ra) # 80003254 <_ZL9fibonaccim>
    80003354:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80003358:	00003517          	auipc	a0,0x3
    8000335c:	d9050513          	addi	a0,a0,-624 # 800060e8 <CONSOLE_STATUS+0xd8>
    80003360:	00000097          	auipc	ra,0x0
    80003364:	af0080e7          	jalr	-1296(ra) # 80002e50 <_Z11printStringPKc>
    80003368:	00000613          	li	a2,0
    8000336c:	00a00593          	li	a1,10
    80003370:	0009051b          	sext.w	a0,s2
    80003374:	00000097          	auipc	ra,0x0
    80003378:	c8c080e7          	jalr	-884(ra) # 80003000 <_Z8printIntiii>
    8000337c:	00003517          	auipc	a0,0x3
    80003380:	09c50513          	addi	a0,a0,156 # 80006418 <CONSOLE_STATUS+0x408>
    80003384:	00000097          	auipc	ra,0x0
    80003388:	acc080e7          	jalr	-1332(ra) # 80002e50 <_Z11printStringPKc>
    8000338c:	0400006f          	j	800033cc <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003390:	00003517          	auipc	a0,0x3
    80003394:	d4050513          	addi	a0,a0,-704 # 800060d0 <CONSOLE_STATUS+0xc0>
    80003398:	00000097          	auipc	ra,0x0
    8000339c:	ab8080e7          	jalr	-1352(ra) # 80002e50 <_Z11printStringPKc>
    800033a0:	00000613          	li	a2,0
    800033a4:	00a00593          	li	a1,10
    800033a8:	00048513          	mv	a0,s1
    800033ac:	00000097          	auipc	ra,0x0
    800033b0:	c54080e7          	jalr	-940(ra) # 80003000 <_Z8printIntiii>
    800033b4:	00003517          	auipc	a0,0x3
    800033b8:	06450513          	addi	a0,a0,100 # 80006418 <CONSOLE_STATUS+0x408>
    800033bc:	00000097          	auipc	ra,0x0
    800033c0:	a94080e7          	jalr	-1388(ra) # 80002e50 <_Z11printStringPKc>
    for (; i < 16; i++) {
    800033c4:	0014849b          	addiw	s1,s1,1
    800033c8:	0ff4f493          	andi	s1,s1,255
    800033cc:	00f00793          	li	a5,15
    800033d0:	fc97f0e3          	bgeu	a5,s1,80003390 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    800033d4:	00003517          	auipc	a0,0x3
    800033d8:	d2450513          	addi	a0,a0,-732 # 800060f8 <CONSOLE_STATUS+0xe8>
    800033dc:	00000097          	auipc	ra,0x0
    800033e0:	a74080e7          	jalr	-1420(ra) # 80002e50 <_Z11printStringPKc>
    finishedD = true;
    800033e4:	00100793          	li	a5,1
    800033e8:	00004717          	auipc	a4,0x4
    800033ec:	00f70c23          	sb	a5,24(a4) # 80007400 <_ZL9finishedD>
    thread_dispatch();
    800033f0:	ffffe097          	auipc	ra,0xffffe
    800033f4:	fa0080e7          	jalr	-96(ra) # 80001390 <_Z15thread_dispatchv>
}
    800033f8:	01813083          	ld	ra,24(sp)
    800033fc:	01013403          	ld	s0,16(sp)
    80003400:	00813483          	ld	s1,8(sp)
    80003404:	00013903          	ld	s2,0(sp)
    80003408:	02010113          	addi	sp,sp,32
    8000340c:	00008067          	ret

0000000080003410 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80003410:	fe010113          	addi	sp,sp,-32
    80003414:	00113c23          	sd	ra,24(sp)
    80003418:	00813823          	sd	s0,16(sp)
    8000341c:	00913423          	sd	s1,8(sp)
    80003420:	01213023          	sd	s2,0(sp)
    80003424:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80003428:	00000493          	li	s1,0
    8000342c:	0400006f          	j	8000346c <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80003430:	00003517          	auipc	a0,0x3
    80003434:	c7050513          	addi	a0,a0,-912 # 800060a0 <CONSOLE_STATUS+0x90>
    80003438:	00000097          	auipc	ra,0x0
    8000343c:	a18080e7          	jalr	-1512(ra) # 80002e50 <_Z11printStringPKc>
    80003440:	00000613          	li	a2,0
    80003444:	00a00593          	li	a1,10
    80003448:	00048513          	mv	a0,s1
    8000344c:	00000097          	auipc	ra,0x0
    80003450:	bb4080e7          	jalr	-1100(ra) # 80003000 <_Z8printIntiii>
    80003454:	00003517          	auipc	a0,0x3
    80003458:	fc450513          	addi	a0,a0,-60 # 80006418 <CONSOLE_STATUS+0x408>
    8000345c:	00000097          	auipc	ra,0x0
    80003460:	9f4080e7          	jalr	-1548(ra) # 80002e50 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80003464:	0014849b          	addiw	s1,s1,1
    80003468:	0ff4f493          	andi	s1,s1,255
    8000346c:	00200793          	li	a5,2
    80003470:	fc97f0e3          	bgeu	a5,s1,80003430 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80003474:	00003517          	auipc	a0,0x3
    80003478:	c3450513          	addi	a0,a0,-972 # 800060a8 <CONSOLE_STATUS+0x98>
    8000347c:	00000097          	auipc	ra,0x0
    80003480:	9d4080e7          	jalr	-1580(ra) # 80002e50 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80003484:	00700313          	li	t1,7
    thread_dispatch();
    80003488:	ffffe097          	auipc	ra,0xffffe
    8000348c:	f08080e7          	jalr	-248(ra) # 80001390 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80003490:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80003494:	00003517          	auipc	a0,0x3
    80003498:	c2450513          	addi	a0,a0,-988 # 800060b8 <CONSOLE_STATUS+0xa8>
    8000349c:	00000097          	auipc	ra,0x0
    800034a0:	9b4080e7          	jalr	-1612(ra) # 80002e50 <_Z11printStringPKc>
    800034a4:	00000613          	li	a2,0
    800034a8:	00a00593          	li	a1,10
    800034ac:	0009051b          	sext.w	a0,s2
    800034b0:	00000097          	auipc	ra,0x0
    800034b4:	b50080e7          	jalr	-1200(ra) # 80003000 <_Z8printIntiii>
    800034b8:	00003517          	auipc	a0,0x3
    800034bc:	f6050513          	addi	a0,a0,-160 # 80006418 <CONSOLE_STATUS+0x408>
    800034c0:	00000097          	auipc	ra,0x0
    800034c4:	990080e7          	jalr	-1648(ra) # 80002e50 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    800034c8:	00c00513          	li	a0,12
    800034cc:	00000097          	auipc	ra,0x0
    800034d0:	d88080e7          	jalr	-632(ra) # 80003254 <_ZL9fibonaccim>
    800034d4:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    800034d8:	00003517          	auipc	a0,0x3
    800034dc:	be850513          	addi	a0,a0,-1048 # 800060c0 <CONSOLE_STATUS+0xb0>
    800034e0:	00000097          	auipc	ra,0x0
    800034e4:	970080e7          	jalr	-1680(ra) # 80002e50 <_Z11printStringPKc>
    800034e8:	00000613          	li	a2,0
    800034ec:	00a00593          	li	a1,10
    800034f0:	0009051b          	sext.w	a0,s2
    800034f4:	00000097          	auipc	ra,0x0
    800034f8:	b0c080e7          	jalr	-1268(ra) # 80003000 <_Z8printIntiii>
    800034fc:	00003517          	auipc	a0,0x3
    80003500:	f1c50513          	addi	a0,a0,-228 # 80006418 <CONSOLE_STATUS+0x408>
    80003504:	00000097          	auipc	ra,0x0
    80003508:	94c080e7          	jalr	-1716(ra) # 80002e50 <_Z11printStringPKc>
    8000350c:	0400006f          	j	8000354c <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80003510:	00003517          	auipc	a0,0x3
    80003514:	b9050513          	addi	a0,a0,-1136 # 800060a0 <CONSOLE_STATUS+0x90>
    80003518:	00000097          	auipc	ra,0x0
    8000351c:	938080e7          	jalr	-1736(ra) # 80002e50 <_Z11printStringPKc>
    80003520:	00000613          	li	a2,0
    80003524:	00a00593          	li	a1,10
    80003528:	00048513          	mv	a0,s1
    8000352c:	00000097          	auipc	ra,0x0
    80003530:	ad4080e7          	jalr	-1324(ra) # 80003000 <_Z8printIntiii>
    80003534:	00003517          	auipc	a0,0x3
    80003538:	ee450513          	addi	a0,a0,-284 # 80006418 <CONSOLE_STATUS+0x408>
    8000353c:	00000097          	auipc	ra,0x0
    80003540:	914080e7          	jalr	-1772(ra) # 80002e50 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80003544:	0014849b          	addiw	s1,s1,1
    80003548:	0ff4f493          	andi	s1,s1,255
    8000354c:	00500793          	li	a5,5
    80003550:	fc97f0e3          	bgeu	a5,s1,80003510 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80003554:	00003517          	auipc	a0,0x3
    80003558:	b2450513          	addi	a0,a0,-1244 # 80006078 <CONSOLE_STATUS+0x68>
    8000355c:	00000097          	auipc	ra,0x0
    80003560:	8f4080e7          	jalr	-1804(ra) # 80002e50 <_Z11printStringPKc>
    finishedC = true;
    80003564:	00100793          	li	a5,1
    80003568:	00004717          	auipc	a4,0x4
    8000356c:	e8f70ca3          	sb	a5,-359(a4) # 80007401 <_ZL9finishedC>
    thread_dispatch();
    80003570:	ffffe097          	auipc	ra,0xffffe
    80003574:	e20080e7          	jalr	-480(ra) # 80001390 <_Z15thread_dispatchv>
}
    80003578:	01813083          	ld	ra,24(sp)
    8000357c:	01013403          	ld	s0,16(sp)
    80003580:	00813483          	ld	s1,8(sp)
    80003584:	00013903          	ld	s2,0(sp)
    80003588:	02010113          	addi	sp,sp,32
    8000358c:	00008067          	ret

0000000080003590 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80003590:	fe010113          	addi	sp,sp,-32
    80003594:	00113c23          	sd	ra,24(sp)
    80003598:	00813823          	sd	s0,16(sp)
    8000359c:	00913423          	sd	s1,8(sp)
    800035a0:	01213023          	sd	s2,0(sp)
    800035a4:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800035a8:	00000913          	li	s2,0
    800035ac:	0400006f          	j	800035ec <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    800035b0:	ffffe097          	auipc	ra,0xffffe
    800035b4:	de0080e7          	jalr	-544(ra) # 80001390 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800035b8:	00148493          	addi	s1,s1,1
    800035bc:	000027b7          	lui	a5,0x2
    800035c0:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800035c4:	0097ee63          	bltu	a5,s1,800035e0 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800035c8:	00000713          	li	a4,0
    800035cc:	000077b7          	lui	a5,0x7
    800035d0:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800035d4:	fce7eee3          	bltu	a5,a4,800035b0 <_ZL11workerBodyBPv+0x20>
    800035d8:	00170713          	addi	a4,a4,1
    800035dc:	ff1ff06f          	j	800035cc <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    800035e0:	00a00793          	li	a5,10
    800035e4:	04f90663          	beq	s2,a5,80003630 <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    800035e8:	00190913          	addi	s2,s2,1
    800035ec:	00f00793          	li	a5,15
    800035f0:	0527e463          	bltu	a5,s2,80003638 <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    800035f4:	00003517          	auipc	a0,0x3
    800035f8:	a9450513          	addi	a0,a0,-1388 # 80006088 <CONSOLE_STATUS+0x78>
    800035fc:	00000097          	auipc	ra,0x0
    80003600:	854080e7          	jalr	-1964(ra) # 80002e50 <_Z11printStringPKc>
    80003604:	00000613          	li	a2,0
    80003608:	00a00593          	li	a1,10
    8000360c:	0009051b          	sext.w	a0,s2
    80003610:	00000097          	auipc	ra,0x0
    80003614:	9f0080e7          	jalr	-1552(ra) # 80003000 <_Z8printIntiii>
    80003618:	00003517          	auipc	a0,0x3
    8000361c:	e0050513          	addi	a0,a0,-512 # 80006418 <CONSOLE_STATUS+0x408>
    80003620:	00000097          	auipc	ra,0x0
    80003624:	830080e7          	jalr	-2000(ra) # 80002e50 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003628:	00000493          	li	s1,0
    8000362c:	f91ff06f          	j	800035bc <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    80003630:	14102ff3          	csrr	t6,sepc
    80003634:	fb5ff06f          	j	800035e8 <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    80003638:	00003517          	auipc	a0,0x3
    8000363c:	a5850513          	addi	a0,a0,-1448 # 80006090 <CONSOLE_STATUS+0x80>
    80003640:	00000097          	auipc	ra,0x0
    80003644:	810080e7          	jalr	-2032(ra) # 80002e50 <_Z11printStringPKc>
    finishedB = true;
    80003648:	00100793          	li	a5,1
    8000364c:	00004717          	auipc	a4,0x4
    80003650:	daf70b23          	sb	a5,-586(a4) # 80007402 <_ZL9finishedB>
    thread_dispatch();
    80003654:	ffffe097          	auipc	ra,0xffffe
    80003658:	d3c080e7          	jalr	-708(ra) # 80001390 <_Z15thread_dispatchv>
}
    8000365c:	01813083          	ld	ra,24(sp)
    80003660:	01013403          	ld	s0,16(sp)
    80003664:	00813483          	ld	s1,8(sp)
    80003668:	00013903          	ld	s2,0(sp)
    8000366c:	02010113          	addi	sp,sp,32
    80003670:	00008067          	ret

0000000080003674 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80003674:	fe010113          	addi	sp,sp,-32
    80003678:	00113c23          	sd	ra,24(sp)
    8000367c:	00813823          	sd	s0,16(sp)
    80003680:	00913423          	sd	s1,8(sp)
    80003684:	01213023          	sd	s2,0(sp)
    80003688:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    8000368c:	00000913          	li	s2,0
    80003690:	0380006f          	j	800036c8 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80003694:	ffffe097          	auipc	ra,0xffffe
    80003698:	cfc080e7          	jalr	-772(ra) # 80001390 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    8000369c:	00148493          	addi	s1,s1,1
    800036a0:	000027b7          	lui	a5,0x2
    800036a4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800036a8:	0097ee63          	bltu	a5,s1,800036c4 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800036ac:	00000713          	li	a4,0
    800036b0:	000077b7          	lui	a5,0x7
    800036b4:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800036b8:	fce7eee3          	bltu	a5,a4,80003694 <_ZL11workerBodyAPv+0x20>
    800036bc:	00170713          	addi	a4,a4,1
    800036c0:	ff1ff06f          	j	800036b0 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    800036c4:	00190913          	addi	s2,s2,1
    800036c8:	00900793          	li	a5,9
    800036cc:	0527e063          	bltu	a5,s2,8000370c <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    800036d0:	00003517          	auipc	a0,0x3
    800036d4:	9a050513          	addi	a0,a0,-1632 # 80006070 <CONSOLE_STATUS+0x60>
    800036d8:	fffff097          	auipc	ra,0xfffff
    800036dc:	778080e7          	jalr	1912(ra) # 80002e50 <_Z11printStringPKc>
    800036e0:	00000613          	li	a2,0
    800036e4:	00a00593          	li	a1,10
    800036e8:	0009051b          	sext.w	a0,s2
    800036ec:	00000097          	auipc	ra,0x0
    800036f0:	914080e7          	jalr	-1772(ra) # 80003000 <_Z8printIntiii>
    800036f4:	00003517          	auipc	a0,0x3
    800036f8:	d2450513          	addi	a0,a0,-732 # 80006418 <CONSOLE_STATUS+0x408>
    800036fc:	fffff097          	auipc	ra,0xfffff
    80003700:	754080e7          	jalr	1876(ra) # 80002e50 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003704:	00000493          	li	s1,0
    80003708:	f99ff06f          	j	800036a0 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    8000370c:	00003517          	auipc	a0,0x3
    80003710:	96c50513          	addi	a0,a0,-1684 # 80006078 <CONSOLE_STATUS+0x68>
    80003714:	fffff097          	auipc	ra,0xfffff
    80003718:	73c080e7          	jalr	1852(ra) # 80002e50 <_Z11printStringPKc>
    finishedA = true;
    8000371c:	00100793          	li	a5,1
    80003720:	00004717          	auipc	a4,0x4
    80003724:	cef701a3          	sb	a5,-797(a4) # 80007403 <_ZL9finishedA>
}
    80003728:	01813083          	ld	ra,24(sp)
    8000372c:	01013403          	ld	s0,16(sp)
    80003730:	00813483          	ld	s1,8(sp)
    80003734:	00013903          	ld	s2,0(sp)
    80003738:	02010113          	addi	sp,sp,32
    8000373c:	00008067          	ret

0000000080003740 <_Z16System_Mode_testv>:


void System_Mode_test() {
    80003740:	fd010113          	addi	sp,sp,-48
    80003744:	02113423          	sd	ra,40(sp)
    80003748:	02813023          	sd	s0,32(sp)
    8000374c:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80003750:	00000613          	li	a2,0
    80003754:	00000597          	auipc	a1,0x0
    80003758:	f2058593          	addi	a1,a1,-224 # 80003674 <_ZL11workerBodyAPv>
    8000375c:	fd040513          	addi	a0,s0,-48
    80003760:	ffffe097          	auipc	ra,0xffffe
    80003764:	bac080e7          	jalr	-1108(ra) # 8000130c <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadA created\n");
    80003768:	00003517          	auipc	a0,0x3
    8000376c:	9a050513          	addi	a0,a0,-1632 # 80006108 <CONSOLE_STATUS+0xf8>
    80003770:	fffff097          	auipc	ra,0xfffff
    80003774:	6e0080e7          	jalr	1760(ra) # 80002e50 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80003778:	00000613          	li	a2,0
    8000377c:	00000597          	auipc	a1,0x0
    80003780:	e1458593          	addi	a1,a1,-492 # 80003590 <_ZL11workerBodyBPv>
    80003784:	fd840513          	addi	a0,s0,-40
    80003788:	ffffe097          	auipc	ra,0xffffe
    8000378c:	b84080e7          	jalr	-1148(ra) # 8000130c <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadB created\n");
    80003790:	00003517          	auipc	a0,0x3
    80003794:	99050513          	addi	a0,a0,-1648 # 80006120 <CONSOLE_STATUS+0x110>
    80003798:	fffff097          	auipc	ra,0xfffff
    8000379c:	6b8080e7          	jalr	1720(ra) # 80002e50 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    800037a0:	00000613          	li	a2,0
    800037a4:	00000597          	auipc	a1,0x0
    800037a8:	c6c58593          	addi	a1,a1,-916 # 80003410 <_ZL11workerBodyCPv>
    800037ac:	fe040513          	addi	a0,s0,-32
    800037b0:	ffffe097          	auipc	ra,0xffffe
    800037b4:	b5c080e7          	jalr	-1188(ra) # 8000130c <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadC created\n");
    800037b8:	00003517          	auipc	a0,0x3
    800037bc:	98050513          	addi	a0,a0,-1664 # 80006138 <CONSOLE_STATUS+0x128>
    800037c0:	fffff097          	auipc	ra,0xfffff
    800037c4:	690080e7          	jalr	1680(ra) # 80002e50 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    800037c8:	00000613          	li	a2,0
    800037cc:	00000597          	auipc	a1,0x0
    800037d0:	afc58593          	addi	a1,a1,-1284 # 800032c8 <_ZL11workerBodyDPv>
    800037d4:	fe840513          	addi	a0,s0,-24
    800037d8:	ffffe097          	auipc	ra,0xffffe
    800037dc:	b34080e7          	jalr	-1228(ra) # 8000130c <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadD created\n");
    800037e0:	00003517          	auipc	a0,0x3
    800037e4:	97050513          	addi	a0,a0,-1680 # 80006150 <CONSOLE_STATUS+0x140>
    800037e8:	fffff097          	auipc	ra,0xfffff
    800037ec:	668080e7          	jalr	1640(ra) # 80002e50 <_Z11printStringPKc>
    800037f0:	00c0006f          	j	800037fc <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    800037f4:	ffffe097          	auipc	ra,0xffffe
    800037f8:	b9c080e7          	jalr	-1124(ra) # 80001390 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800037fc:	00004797          	auipc	a5,0x4
    80003800:	c077c783          	lbu	a5,-1017(a5) # 80007403 <_ZL9finishedA>
    80003804:	fe0788e3          	beqz	a5,800037f4 <_Z16System_Mode_testv+0xb4>
    80003808:	00004797          	auipc	a5,0x4
    8000380c:	bfa7c783          	lbu	a5,-1030(a5) # 80007402 <_ZL9finishedB>
    80003810:	fe0782e3          	beqz	a5,800037f4 <_Z16System_Mode_testv+0xb4>
    80003814:	00004797          	auipc	a5,0x4
    80003818:	bed7c783          	lbu	a5,-1043(a5) # 80007401 <_ZL9finishedC>
    8000381c:	fc078ce3          	beqz	a5,800037f4 <_Z16System_Mode_testv+0xb4>
    80003820:	00004797          	auipc	a5,0x4
    80003824:	be07c783          	lbu	a5,-1056(a5) # 80007400 <_ZL9finishedD>
    80003828:	fc0786e3          	beqz	a5,800037f4 <_Z16System_Mode_testv+0xb4>
    }

}
    8000382c:	02813083          	ld	ra,40(sp)
    80003830:	02013403          	ld	s0,32(sp)
    80003834:	03010113          	addi	sp,sp,48
    80003838:	00008067          	ret

000000008000383c <start>:
    8000383c:	ff010113          	addi	sp,sp,-16
    80003840:	00813423          	sd	s0,8(sp)
    80003844:	01010413          	addi	s0,sp,16
    80003848:	300027f3          	csrr	a5,mstatus
    8000384c:	ffffe737          	lui	a4,0xffffe
    80003850:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff618f>
    80003854:	00e7f7b3          	and	a5,a5,a4
    80003858:	00001737          	lui	a4,0x1
    8000385c:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80003860:	00e7e7b3          	or	a5,a5,a4
    80003864:	30079073          	csrw	mstatus,a5
    80003868:	00000797          	auipc	a5,0x0
    8000386c:	16078793          	addi	a5,a5,352 # 800039c8 <system_main>
    80003870:	34179073          	csrw	mepc,a5
    80003874:	00000793          	li	a5,0
    80003878:	18079073          	csrw	satp,a5
    8000387c:	000107b7          	lui	a5,0x10
    80003880:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80003884:	30279073          	csrw	medeleg,a5
    80003888:	30379073          	csrw	mideleg,a5
    8000388c:	104027f3          	csrr	a5,sie
    80003890:	2227e793          	ori	a5,a5,546
    80003894:	10479073          	csrw	sie,a5
    80003898:	fff00793          	li	a5,-1
    8000389c:	00a7d793          	srli	a5,a5,0xa
    800038a0:	3b079073          	csrw	pmpaddr0,a5
    800038a4:	00f00793          	li	a5,15
    800038a8:	3a079073          	csrw	pmpcfg0,a5
    800038ac:	f14027f3          	csrr	a5,mhartid
    800038b0:	0200c737          	lui	a4,0x200c
    800038b4:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800038b8:	0007869b          	sext.w	a3,a5
    800038bc:	00269713          	slli	a4,a3,0x2
    800038c0:	000f4637          	lui	a2,0xf4
    800038c4:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800038c8:	00d70733          	add	a4,a4,a3
    800038cc:	0037979b          	slliw	a5,a5,0x3
    800038d0:	020046b7          	lui	a3,0x2004
    800038d4:	00d787b3          	add	a5,a5,a3
    800038d8:	00c585b3          	add	a1,a1,a2
    800038dc:	00371693          	slli	a3,a4,0x3
    800038e0:	00004717          	auipc	a4,0x4
    800038e4:	b3070713          	addi	a4,a4,-1232 # 80007410 <timer_scratch>
    800038e8:	00b7b023          	sd	a1,0(a5)
    800038ec:	00d70733          	add	a4,a4,a3
    800038f0:	00f73c23          	sd	a5,24(a4)
    800038f4:	02c73023          	sd	a2,32(a4)
    800038f8:	34071073          	csrw	mscratch,a4
    800038fc:	00000797          	auipc	a5,0x0
    80003900:	6e478793          	addi	a5,a5,1764 # 80003fe0 <timervec>
    80003904:	30579073          	csrw	mtvec,a5
    80003908:	300027f3          	csrr	a5,mstatus
    8000390c:	0087e793          	ori	a5,a5,8
    80003910:	30079073          	csrw	mstatus,a5
    80003914:	304027f3          	csrr	a5,mie
    80003918:	0807e793          	ori	a5,a5,128
    8000391c:	30479073          	csrw	mie,a5
    80003920:	f14027f3          	csrr	a5,mhartid
    80003924:	0007879b          	sext.w	a5,a5
    80003928:	00078213          	mv	tp,a5
    8000392c:	30200073          	mret
    80003930:	00813403          	ld	s0,8(sp)
    80003934:	01010113          	addi	sp,sp,16
    80003938:	00008067          	ret

000000008000393c <timerinit>:
    8000393c:	ff010113          	addi	sp,sp,-16
    80003940:	00813423          	sd	s0,8(sp)
    80003944:	01010413          	addi	s0,sp,16
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
    80003980:	a9470713          	addi	a4,a4,-1388 # 80007410 <timer_scratch>
    80003984:	00b7b023          	sd	a1,0(a5)
    80003988:	00d70733          	add	a4,a4,a3
    8000398c:	00f73c23          	sd	a5,24(a4)
    80003990:	02c73023          	sd	a2,32(a4)
    80003994:	34071073          	csrw	mscratch,a4
    80003998:	00000797          	auipc	a5,0x0
    8000399c:	64878793          	addi	a5,a5,1608 # 80003fe0 <timervec>
    800039a0:	30579073          	csrw	mtvec,a5
    800039a4:	300027f3          	csrr	a5,mstatus
    800039a8:	0087e793          	ori	a5,a5,8
    800039ac:	30079073          	csrw	mstatus,a5
    800039b0:	304027f3          	csrr	a5,mie
    800039b4:	0807e793          	ori	a5,a5,128
    800039b8:	30479073          	csrw	mie,a5
    800039bc:	00813403          	ld	s0,8(sp)
    800039c0:	01010113          	addi	sp,sp,16
    800039c4:	00008067          	ret

00000000800039c8 <system_main>:
    800039c8:	fe010113          	addi	sp,sp,-32
    800039cc:	00813823          	sd	s0,16(sp)
    800039d0:	00913423          	sd	s1,8(sp)
    800039d4:	00113c23          	sd	ra,24(sp)
    800039d8:	02010413          	addi	s0,sp,32
    800039dc:	00000097          	auipc	ra,0x0
    800039e0:	0c4080e7          	jalr	196(ra) # 80003aa0 <cpuid>
    800039e4:	00004497          	auipc	s1,0x4
    800039e8:	9ac48493          	addi	s1,s1,-1620 # 80007390 <started>
    800039ec:	02050263          	beqz	a0,80003a10 <system_main+0x48>
    800039f0:	0004a783          	lw	a5,0(s1)
    800039f4:	0007879b          	sext.w	a5,a5
    800039f8:	fe078ce3          	beqz	a5,800039f0 <system_main+0x28>
    800039fc:	0ff0000f          	fence
    80003a00:	00003517          	auipc	a0,0x3
    80003a04:	93850513          	addi	a0,a0,-1736 # 80006338 <CONSOLE_STATUS+0x328>
    80003a08:	00001097          	auipc	ra,0x1
    80003a0c:	a74080e7          	jalr	-1420(ra) # 8000447c <panic>
    80003a10:	00001097          	auipc	ra,0x1
    80003a14:	9c8080e7          	jalr	-1592(ra) # 800043d8 <consoleinit>
    80003a18:	00001097          	auipc	ra,0x1
    80003a1c:	154080e7          	jalr	340(ra) # 80004b6c <printfinit>
    80003a20:	00003517          	auipc	a0,0x3
    80003a24:	9f850513          	addi	a0,a0,-1544 # 80006418 <CONSOLE_STATUS+0x408>
    80003a28:	00001097          	auipc	ra,0x1
    80003a2c:	ab0080e7          	jalr	-1360(ra) # 800044d8 <__printf>
    80003a30:	00003517          	auipc	a0,0x3
    80003a34:	8d850513          	addi	a0,a0,-1832 # 80006308 <CONSOLE_STATUS+0x2f8>
    80003a38:	00001097          	auipc	ra,0x1
    80003a3c:	aa0080e7          	jalr	-1376(ra) # 800044d8 <__printf>
    80003a40:	00003517          	auipc	a0,0x3
    80003a44:	9d850513          	addi	a0,a0,-1576 # 80006418 <CONSOLE_STATUS+0x408>
    80003a48:	00001097          	auipc	ra,0x1
    80003a4c:	a90080e7          	jalr	-1392(ra) # 800044d8 <__printf>
    80003a50:	00001097          	auipc	ra,0x1
    80003a54:	4a8080e7          	jalr	1192(ra) # 80004ef8 <kinit>
    80003a58:	00000097          	auipc	ra,0x0
    80003a5c:	148080e7          	jalr	328(ra) # 80003ba0 <trapinit>
    80003a60:	00000097          	auipc	ra,0x0
    80003a64:	16c080e7          	jalr	364(ra) # 80003bcc <trapinithart>
    80003a68:	00000097          	auipc	ra,0x0
    80003a6c:	5b8080e7          	jalr	1464(ra) # 80004020 <plicinit>
    80003a70:	00000097          	auipc	ra,0x0
    80003a74:	5d8080e7          	jalr	1496(ra) # 80004048 <plicinithart>
    80003a78:	00000097          	auipc	ra,0x0
    80003a7c:	078080e7          	jalr	120(ra) # 80003af0 <userinit>
    80003a80:	0ff0000f          	fence
    80003a84:	00100793          	li	a5,1
    80003a88:	00003517          	auipc	a0,0x3
    80003a8c:	89850513          	addi	a0,a0,-1896 # 80006320 <CONSOLE_STATUS+0x310>
    80003a90:	00f4a023          	sw	a5,0(s1)
    80003a94:	00001097          	auipc	ra,0x1
    80003a98:	a44080e7          	jalr	-1468(ra) # 800044d8 <__printf>
    80003a9c:	0000006f          	j	80003a9c <system_main+0xd4>

0000000080003aa0 <cpuid>:
    80003aa0:	ff010113          	addi	sp,sp,-16
    80003aa4:	00813423          	sd	s0,8(sp)
    80003aa8:	01010413          	addi	s0,sp,16
    80003aac:	00020513          	mv	a0,tp
    80003ab0:	00813403          	ld	s0,8(sp)
    80003ab4:	0005051b          	sext.w	a0,a0
    80003ab8:	01010113          	addi	sp,sp,16
    80003abc:	00008067          	ret

0000000080003ac0 <mycpu>:
    80003ac0:	ff010113          	addi	sp,sp,-16
    80003ac4:	00813423          	sd	s0,8(sp)
    80003ac8:	01010413          	addi	s0,sp,16
    80003acc:	00020793          	mv	a5,tp
    80003ad0:	00813403          	ld	s0,8(sp)
    80003ad4:	0007879b          	sext.w	a5,a5
    80003ad8:	00779793          	slli	a5,a5,0x7
    80003adc:	00005517          	auipc	a0,0x5
    80003ae0:	96450513          	addi	a0,a0,-1692 # 80008440 <cpus>
    80003ae4:	00f50533          	add	a0,a0,a5
    80003ae8:	01010113          	addi	sp,sp,16
    80003aec:	00008067          	ret

0000000080003af0 <userinit>:
    80003af0:	ff010113          	addi	sp,sp,-16
    80003af4:	00813423          	sd	s0,8(sp)
    80003af8:	01010413          	addi	s0,sp,16
    80003afc:	00813403          	ld	s0,8(sp)
    80003b00:	01010113          	addi	sp,sp,16
    80003b04:	ffffe317          	auipc	t1,0xffffe
    80003b08:	bb830067          	jr	-1096(t1) # 800016bc <main>

0000000080003b0c <either_copyout>:
    80003b0c:	ff010113          	addi	sp,sp,-16
    80003b10:	00813023          	sd	s0,0(sp)
    80003b14:	00113423          	sd	ra,8(sp)
    80003b18:	01010413          	addi	s0,sp,16
    80003b1c:	02051663          	bnez	a0,80003b48 <either_copyout+0x3c>
    80003b20:	00058513          	mv	a0,a1
    80003b24:	00060593          	mv	a1,a2
    80003b28:	0006861b          	sext.w	a2,a3
    80003b2c:	00002097          	auipc	ra,0x2
    80003b30:	c58080e7          	jalr	-936(ra) # 80005784 <__memmove>
    80003b34:	00813083          	ld	ra,8(sp)
    80003b38:	00013403          	ld	s0,0(sp)
    80003b3c:	00000513          	li	a0,0
    80003b40:	01010113          	addi	sp,sp,16
    80003b44:	00008067          	ret
    80003b48:	00003517          	auipc	a0,0x3
    80003b4c:	81850513          	addi	a0,a0,-2024 # 80006360 <CONSOLE_STATUS+0x350>
    80003b50:	00001097          	auipc	ra,0x1
    80003b54:	92c080e7          	jalr	-1748(ra) # 8000447c <panic>

0000000080003b58 <either_copyin>:
    80003b58:	ff010113          	addi	sp,sp,-16
    80003b5c:	00813023          	sd	s0,0(sp)
    80003b60:	00113423          	sd	ra,8(sp)
    80003b64:	01010413          	addi	s0,sp,16
    80003b68:	02059463          	bnez	a1,80003b90 <either_copyin+0x38>
    80003b6c:	00060593          	mv	a1,a2
    80003b70:	0006861b          	sext.w	a2,a3
    80003b74:	00002097          	auipc	ra,0x2
    80003b78:	c10080e7          	jalr	-1008(ra) # 80005784 <__memmove>
    80003b7c:	00813083          	ld	ra,8(sp)
    80003b80:	00013403          	ld	s0,0(sp)
    80003b84:	00000513          	li	a0,0
    80003b88:	01010113          	addi	sp,sp,16
    80003b8c:	00008067          	ret
    80003b90:	00002517          	auipc	a0,0x2
    80003b94:	7f850513          	addi	a0,a0,2040 # 80006388 <CONSOLE_STATUS+0x378>
    80003b98:	00001097          	auipc	ra,0x1
    80003b9c:	8e4080e7          	jalr	-1820(ra) # 8000447c <panic>

0000000080003ba0 <trapinit>:
    80003ba0:	ff010113          	addi	sp,sp,-16
    80003ba4:	00813423          	sd	s0,8(sp)
    80003ba8:	01010413          	addi	s0,sp,16
    80003bac:	00813403          	ld	s0,8(sp)
    80003bb0:	00003597          	auipc	a1,0x3
    80003bb4:	80058593          	addi	a1,a1,-2048 # 800063b0 <CONSOLE_STATUS+0x3a0>
    80003bb8:	00005517          	auipc	a0,0x5
    80003bbc:	90850513          	addi	a0,a0,-1784 # 800084c0 <tickslock>
    80003bc0:	01010113          	addi	sp,sp,16
    80003bc4:	00001317          	auipc	t1,0x1
    80003bc8:	5c430067          	jr	1476(t1) # 80005188 <initlock>

0000000080003bcc <trapinithart>:
    80003bcc:	ff010113          	addi	sp,sp,-16
    80003bd0:	00813423          	sd	s0,8(sp)
    80003bd4:	01010413          	addi	s0,sp,16
    80003bd8:	00000797          	auipc	a5,0x0
    80003bdc:	2f878793          	addi	a5,a5,760 # 80003ed0 <kernelvec>
    80003be0:	10579073          	csrw	stvec,a5
    80003be4:	00813403          	ld	s0,8(sp)
    80003be8:	01010113          	addi	sp,sp,16
    80003bec:	00008067          	ret

0000000080003bf0 <usertrap>:
    80003bf0:	ff010113          	addi	sp,sp,-16
    80003bf4:	00813423          	sd	s0,8(sp)
    80003bf8:	01010413          	addi	s0,sp,16
    80003bfc:	00813403          	ld	s0,8(sp)
    80003c00:	01010113          	addi	sp,sp,16
    80003c04:	00008067          	ret

0000000080003c08 <usertrapret>:
    80003c08:	ff010113          	addi	sp,sp,-16
    80003c0c:	00813423          	sd	s0,8(sp)
    80003c10:	01010413          	addi	s0,sp,16
    80003c14:	00813403          	ld	s0,8(sp)
    80003c18:	01010113          	addi	sp,sp,16
    80003c1c:	00008067          	ret

0000000080003c20 <kerneltrap>:
    80003c20:	fe010113          	addi	sp,sp,-32
    80003c24:	00813823          	sd	s0,16(sp)
    80003c28:	00113c23          	sd	ra,24(sp)
    80003c2c:	00913423          	sd	s1,8(sp)
    80003c30:	02010413          	addi	s0,sp,32
    80003c34:	142025f3          	csrr	a1,scause
    80003c38:	100027f3          	csrr	a5,sstatus
    80003c3c:	0027f793          	andi	a5,a5,2
    80003c40:	10079c63          	bnez	a5,80003d58 <kerneltrap+0x138>
    80003c44:	142027f3          	csrr	a5,scause
    80003c48:	0207ce63          	bltz	a5,80003c84 <kerneltrap+0x64>
    80003c4c:	00002517          	auipc	a0,0x2
    80003c50:	7ac50513          	addi	a0,a0,1964 # 800063f8 <CONSOLE_STATUS+0x3e8>
    80003c54:	00001097          	auipc	ra,0x1
    80003c58:	884080e7          	jalr	-1916(ra) # 800044d8 <__printf>
    80003c5c:	141025f3          	csrr	a1,sepc
    80003c60:	14302673          	csrr	a2,stval
    80003c64:	00002517          	auipc	a0,0x2
    80003c68:	7a450513          	addi	a0,a0,1956 # 80006408 <CONSOLE_STATUS+0x3f8>
    80003c6c:	00001097          	auipc	ra,0x1
    80003c70:	86c080e7          	jalr	-1940(ra) # 800044d8 <__printf>
    80003c74:	00002517          	auipc	a0,0x2
    80003c78:	7ac50513          	addi	a0,a0,1964 # 80006420 <CONSOLE_STATUS+0x410>
    80003c7c:	00001097          	auipc	ra,0x1
    80003c80:	800080e7          	jalr	-2048(ra) # 8000447c <panic>
    80003c84:	0ff7f713          	andi	a4,a5,255
    80003c88:	00900693          	li	a3,9
    80003c8c:	04d70063          	beq	a4,a3,80003ccc <kerneltrap+0xac>
    80003c90:	fff00713          	li	a4,-1
    80003c94:	03f71713          	slli	a4,a4,0x3f
    80003c98:	00170713          	addi	a4,a4,1
    80003c9c:	fae798e3          	bne	a5,a4,80003c4c <kerneltrap+0x2c>
    80003ca0:	00000097          	auipc	ra,0x0
    80003ca4:	e00080e7          	jalr	-512(ra) # 80003aa0 <cpuid>
    80003ca8:	06050663          	beqz	a0,80003d14 <kerneltrap+0xf4>
    80003cac:	144027f3          	csrr	a5,sip
    80003cb0:	ffd7f793          	andi	a5,a5,-3
    80003cb4:	14479073          	csrw	sip,a5
    80003cb8:	01813083          	ld	ra,24(sp)
    80003cbc:	01013403          	ld	s0,16(sp)
    80003cc0:	00813483          	ld	s1,8(sp)
    80003cc4:	02010113          	addi	sp,sp,32
    80003cc8:	00008067          	ret
    80003ccc:	00000097          	auipc	ra,0x0
    80003cd0:	3c8080e7          	jalr	968(ra) # 80004094 <plic_claim>
    80003cd4:	00a00793          	li	a5,10
    80003cd8:	00050493          	mv	s1,a0
    80003cdc:	06f50863          	beq	a0,a5,80003d4c <kerneltrap+0x12c>
    80003ce0:	fc050ce3          	beqz	a0,80003cb8 <kerneltrap+0x98>
    80003ce4:	00050593          	mv	a1,a0
    80003ce8:	00002517          	auipc	a0,0x2
    80003cec:	6f050513          	addi	a0,a0,1776 # 800063d8 <CONSOLE_STATUS+0x3c8>
    80003cf0:	00000097          	auipc	ra,0x0
    80003cf4:	7e8080e7          	jalr	2024(ra) # 800044d8 <__printf>
    80003cf8:	01013403          	ld	s0,16(sp)
    80003cfc:	01813083          	ld	ra,24(sp)
    80003d00:	00048513          	mv	a0,s1
    80003d04:	00813483          	ld	s1,8(sp)
    80003d08:	02010113          	addi	sp,sp,32
    80003d0c:	00000317          	auipc	t1,0x0
    80003d10:	3c030067          	jr	960(t1) # 800040cc <plic_complete>
    80003d14:	00004517          	auipc	a0,0x4
    80003d18:	7ac50513          	addi	a0,a0,1964 # 800084c0 <tickslock>
    80003d1c:	00001097          	auipc	ra,0x1
    80003d20:	490080e7          	jalr	1168(ra) # 800051ac <acquire>
    80003d24:	00003717          	auipc	a4,0x3
    80003d28:	67070713          	addi	a4,a4,1648 # 80007394 <ticks>
    80003d2c:	00072783          	lw	a5,0(a4)
    80003d30:	00004517          	auipc	a0,0x4
    80003d34:	79050513          	addi	a0,a0,1936 # 800084c0 <tickslock>
    80003d38:	0017879b          	addiw	a5,a5,1
    80003d3c:	00f72023          	sw	a5,0(a4)
    80003d40:	00001097          	auipc	ra,0x1
    80003d44:	538080e7          	jalr	1336(ra) # 80005278 <release>
    80003d48:	f65ff06f          	j	80003cac <kerneltrap+0x8c>
    80003d4c:	00001097          	auipc	ra,0x1
    80003d50:	094080e7          	jalr	148(ra) # 80004de0 <uartintr>
    80003d54:	fa5ff06f          	j	80003cf8 <kerneltrap+0xd8>
    80003d58:	00002517          	auipc	a0,0x2
    80003d5c:	66050513          	addi	a0,a0,1632 # 800063b8 <CONSOLE_STATUS+0x3a8>
    80003d60:	00000097          	auipc	ra,0x0
    80003d64:	71c080e7          	jalr	1820(ra) # 8000447c <panic>

0000000080003d68 <clockintr>:
    80003d68:	fe010113          	addi	sp,sp,-32
    80003d6c:	00813823          	sd	s0,16(sp)
    80003d70:	00913423          	sd	s1,8(sp)
    80003d74:	00113c23          	sd	ra,24(sp)
    80003d78:	02010413          	addi	s0,sp,32
    80003d7c:	00004497          	auipc	s1,0x4
    80003d80:	74448493          	addi	s1,s1,1860 # 800084c0 <tickslock>
    80003d84:	00048513          	mv	a0,s1
    80003d88:	00001097          	auipc	ra,0x1
    80003d8c:	424080e7          	jalr	1060(ra) # 800051ac <acquire>
    80003d90:	00003717          	auipc	a4,0x3
    80003d94:	60470713          	addi	a4,a4,1540 # 80007394 <ticks>
    80003d98:	00072783          	lw	a5,0(a4)
    80003d9c:	01013403          	ld	s0,16(sp)
    80003da0:	01813083          	ld	ra,24(sp)
    80003da4:	00048513          	mv	a0,s1
    80003da8:	0017879b          	addiw	a5,a5,1
    80003dac:	00813483          	ld	s1,8(sp)
    80003db0:	00f72023          	sw	a5,0(a4)
    80003db4:	02010113          	addi	sp,sp,32
    80003db8:	00001317          	auipc	t1,0x1
    80003dbc:	4c030067          	jr	1216(t1) # 80005278 <release>

0000000080003dc0 <devintr>:
    80003dc0:	142027f3          	csrr	a5,scause
    80003dc4:	00000513          	li	a0,0
    80003dc8:	0007c463          	bltz	a5,80003dd0 <devintr+0x10>
    80003dcc:	00008067          	ret
    80003dd0:	fe010113          	addi	sp,sp,-32
    80003dd4:	00813823          	sd	s0,16(sp)
    80003dd8:	00113c23          	sd	ra,24(sp)
    80003ddc:	00913423          	sd	s1,8(sp)
    80003de0:	02010413          	addi	s0,sp,32
    80003de4:	0ff7f713          	andi	a4,a5,255
    80003de8:	00900693          	li	a3,9
    80003dec:	04d70c63          	beq	a4,a3,80003e44 <devintr+0x84>
    80003df0:	fff00713          	li	a4,-1
    80003df4:	03f71713          	slli	a4,a4,0x3f
    80003df8:	00170713          	addi	a4,a4,1
    80003dfc:	00e78c63          	beq	a5,a4,80003e14 <devintr+0x54>
    80003e00:	01813083          	ld	ra,24(sp)
    80003e04:	01013403          	ld	s0,16(sp)
    80003e08:	00813483          	ld	s1,8(sp)
    80003e0c:	02010113          	addi	sp,sp,32
    80003e10:	00008067          	ret
    80003e14:	00000097          	auipc	ra,0x0
    80003e18:	c8c080e7          	jalr	-884(ra) # 80003aa0 <cpuid>
    80003e1c:	06050663          	beqz	a0,80003e88 <devintr+0xc8>
    80003e20:	144027f3          	csrr	a5,sip
    80003e24:	ffd7f793          	andi	a5,a5,-3
    80003e28:	14479073          	csrw	sip,a5
    80003e2c:	01813083          	ld	ra,24(sp)
    80003e30:	01013403          	ld	s0,16(sp)
    80003e34:	00813483          	ld	s1,8(sp)
    80003e38:	00200513          	li	a0,2
    80003e3c:	02010113          	addi	sp,sp,32
    80003e40:	00008067          	ret
    80003e44:	00000097          	auipc	ra,0x0
    80003e48:	250080e7          	jalr	592(ra) # 80004094 <plic_claim>
    80003e4c:	00a00793          	li	a5,10
    80003e50:	00050493          	mv	s1,a0
    80003e54:	06f50663          	beq	a0,a5,80003ec0 <devintr+0x100>
    80003e58:	00100513          	li	a0,1
    80003e5c:	fa0482e3          	beqz	s1,80003e00 <devintr+0x40>
    80003e60:	00048593          	mv	a1,s1
    80003e64:	00002517          	auipc	a0,0x2
    80003e68:	57450513          	addi	a0,a0,1396 # 800063d8 <CONSOLE_STATUS+0x3c8>
    80003e6c:	00000097          	auipc	ra,0x0
    80003e70:	66c080e7          	jalr	1644(ra) # 800044d8 <__printf>
    80003e74:	00048513          	mv	a0,s1
    80003e78:	00000097          	auipc	ra,0x0
    80003e7c:	254080e7          	jalr	596(ra) # 800040cc <plic_complete>
    80003e80:	00100513          	li	a0,1
    80003e84:	f7dff06f          	j	80003e00 <devintr+0x40>
    80003e88:	00004517          	auipc	a0,0x4
    80003e8c:	63850513          	addi	a0,a0,1592 # 800084c0 <tickslock>
    80003e90:	00001097          	auipc	ra,0x1
    80003e94:	31c080e7          	jalr	796(ra) # 800051ac <acquire>
    80003e98:	00003717          	auipc	a4,0x3
    80003e9c:	4fc70713          	addi	a4,a4,1276 # 80007394 <ticks>
    80003ea0:	00072783          	lw	a5,0(a4)
    80003ea4:	00004517          	auipc	a0,0x4
    80003ea8:	61c50513          	addi	a0,a0,1564 # 800084c0 <tickslock>
    80003eac:	0017879b          	addiw	a5,a5,1
    80003eb0:	00f72023          	sw	a5,0(a4)
    80003eb4:	00001097          	auipc	ra,0x1
    80003eb8:	3c4080e7          	jalr	964(ra) # 80005278 <release>
    80003ebc:	f65ff06f          	j	80003e20 <devintr+0x60>
    80003ec0:	00001097          	auipc	ra,0x1
    80003ec4:	f20080e7          	jalr	-224(ra) # 80004de0 <uartintr>
    80003ec8:	fadff06f          	j	80003e74 <devintr+0xb4>
    80003ecc:	0000                	unimp
	...

0000000080003ed0 <kernelvec>:
    80003ed0:	f0010113          	addi	sp,sp,-256
    80003ed4:	00113023          	sd	ra,0(sp)
    80003ed8:	00213423          	sd	sp,8(sp)
    80003edc:	00313823          	sd	gp,16(sp)
    80003ee0:	00413c23          	sd	tp,24(sp)
    80003ee4:	02513023          	sd	t0,32(sp)
    80003ee8:	02613423          	sd	t1,40(sp)
    80003eec:	02713823          	sd	t2,48(sp)
    80003ef0:	02813c23          	sd	s0,56(sp)
    80003ef4:	04913023          	sd	s1,64(sp)
    80003ef8:	04a13423          	sd	a0,72(sp)
    80003efc:	04b13823          	sd	a1,80(sp)
    80003f00:	04c13c23          	sd	a2,88(sp)
    80003f04:	06d13023          	sd	a3,96(sp)
    80003f08:	06e13423          	sd	a4,104(sp)
    80003f0c:	06f13823          	sd	a5,112(sp)
    80003f10:	07013c23          	sd	a6,120(sp)
    80003f14:	09113023          	sd	a7,128(sp)
    80003f18:	09213423          	sd	s2,136(sp)
    80003f1c:	09313823          	sd	s3,144(sp)
    80003f20:	09413c23          	sd	s4,152(sp)
    80003f24:	0b513023          	sd	s5,160(sp)
    80003f28:	0b613423          	sd	s6,168(sp)
    80003f2c:	0b713823          	sd	s7,176(sp)
    80003f30:	0b813c23          	sd	s8,184(sp)
    80003f34:	0d913023          	sd	s9,192(sp)
    80003f38:	0da13423          	sd	s10,200(sp)
    80003f3c:	0db13823          	sd	s11,208(sp)
    80003f40:	0dc13c23          	sd	t3,216(sp)
    80003f44:	0fd13023          	sd	t4,224(sp)
    80003f48:	0fe13423          	sd	t5,232(sp)
    80003f4c:	0ff13823          	sd	t6,240(sp)
    80003f50:	cd1ff0ef          	jal	ra,80003c20 <kerneltrap>
    80003f54:	00013083          	ld	ra,0(sp)
    80003f58:	00813103          	ld	sp,8(sp)
    80003f5c:	01013183          	ld	gp,16(sp)
    80003f60:	02013283          	ld	t0,32(sp)
    80003f64:	02813303          	ld	t1,40(sp)
    80003f68:	03013383          	ld	t2,48(sp)
    80003f6c:	03813403          	ld	s0,56(sp)
    80003f70:	04013483          	ld	s1,64(sp)
    80003f74:	04813503          	ld	a0,72(sp)
    80003f78:	05013583          	ld	a1,80(sp)
    80003f7c:	05813603          	ld	a2,88(sp)
    80003f80:	06013683          	ld	a3,96(sp)
    80003f84:	06813703          	ld	a4,104(sp)
    80003f88:	07013783          	ld	a5,112(sp)
    80003f8c:	07813803          	ld	a6,120(sp)
    80003f90:	08013883          	ld	a7,128(sp)
    80003f94:	08813903          	ld	s2,136(sp)
    80003f98:	09013983          	ld	s3,144(sp)
    80003f9c:	09813a03          	ld	s4,152(sp)
    80003fa0:	0a013a83          	ld	s5,160(sp)
    80003fa4:	0a813b03          	ld	s6,168(sp)
    80003fa8:	0b013b83          	ld	s7,176(sp)
    80003fac:	0b813c03          	ld	s8,184(sp)
    80003fb0:	0c013c83          	ld	s9,192(sp)
    80003fb4:	0c813d03          	ld	s10,200(sp)
    80003fb8:	0d013d83          	ld	s11,208(sp)
    80003fbc:	0d813e03          	ld	t3,216(sp)
    80003fc0:	0e013e83          	ld	t4,224(sp)
    80003fc4:	0e813f03          	ld	t5,232(sp)
    80003fc8:	0f013f83          	ld	t6,240(sp)
    80003fcc:	10010113          	addi	sp,sp,256
    80003fd0:	10200073          	sret
    80003fd4:	00000013          	nop
    80003fd8:	00000013          	nop
    80003fdc:	00000013          	nop

0000000080003fe0 <timervec>:
    80003fe0:	34051573          	csrrw	a0,mscratch,a0
    80003fe4:	00b53023          	sd	a1,0(a0)
    80003fe8:	00c53423          	sd	a2,8(a0)
    80003fec:	00d53823          	sd	a3,16(a0)
    80003ff0:	01853583          	ld	a1,24(a0)
    80003ff4:	02053603          	ld	a2,32(a0)
    80003ff8:	0005b683          	ld	a3,0(a1)
    80003ffc:	00c686b3          	add	a3,a3,a2
    80004000:	00d5b023          	sd	a3,0(a1)
    80004004:	00200593          	li	a1,2
    80004008:	14459073          	csrw	sip,a1
    8000400c:	01053683          	ld	a3,16(a0)
    80004010:	00853603          	ld	a2,8(a0)
    80004014:	00053583          	ld	a1,0(a0)
    80004018:	34051573          	csrrw	a0,mscratch,a0
    8000401c:	30200073          	mret

0000000080004020 <plicinit>:
    80004020:	ff010113          	addi	sp,sp,-16
    80004024:	00813423          	sd	s0,8(sp)
    80004028:	01010413          	addi	s0,sp,16
    8000402c:	00813403          	ld	s0,8(sp)
    80004030:	0c0007b7          	lui	a5,0xc000
    80004034:	00100713          	li	a4,1
    80004038:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000403c:	00e7a223          	sw	a4,4(a5)
    80004040:	01010113          	addi	sp,sp,16
    80004044:	00008067          	ret

0000000080004048 <plicinithart>:
    80004048:	ff010113          	addi	sp,sp,-16
    8000404c:	00813023          	sd	s0,0(sp)
    80004050:	00113423          	sd	ra,8(sp)
    80004054:	01010413          	addi	s0,sp,16
    80004058:	00000097          	auipc	ra,0x0
    8000405c:	a48080e7          	jalr	-1464(ra) # 80003aa0 <cpuid>
    80004060:	0085171b          	slliw	a4,a0,0x8
    80004064:	0c0027b7          	lui	a5,0xc002
    80004068:	00e787b3          	add	a5,a5,a4
    8000406c:	40200713          	li	a4,1026
    80004070:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80004074:	00813083          	ld	ra,8(sp)
    80004078:	00013403          	ld	s0,0(sp)
    8000407c:	00d5151b          	slliw	a0,a0,0xd
    80004080:	0c2017b7          	lui	a5,0xc201
    80004084:	00a78533          	add	a0,a5,a0
    80004088:	00052023          	sw	zero,0(a0)
    8000408c:	01010113          	addi	sp,sp,16
    80004090:	00008067          	ret

0000000080004094 <plic_claim>:
    80004094:	ff010113          	addi	sp,sp,-16
    80004098:	00813023          	sd	s0,0(sp)
    8000409c:	00113423          	sd	ra,8(sp)
    800040a0:	01010413          	addi	s0,sp,16
    800040a4:	00000097          	auipc	ra,0x0
    800040a8:	9fc080e7          	jalr	-1540(ra) # 80003aa0 <cpuid>
    800040ac:	00813083          	ld	ra,8(sp)
    800040b0:	00013403          	ld	s0,0(sp)
    800040b4:	00d5151b          	slliw	a0,a0,0xd
    800040b8:	0c2017b7          	lui	a5,0xc201
    800040bc:	00a78533          	add	a0,a5,a0
    800040c0:	00452503          	lw	a0,4(a0)
    800040c4:	01010113          	addi	sp,sp,16
    800040c8:	00008067          	ret

00000000800040cc <plic_complete>:
    800040cc:	fe010113          	addi	sp,sp,-32
    800040d0:	00813823          	sd	s0,16(sp)
    800040d4:	00913423          	sd	s1,8(sp)
    800040d8:	00113c23          	sd	ra,24(sp)
    800040dc:	02010413          	addi	s0,sp,32
    800040e0:	00050493          	mv	s1,a0
    800040e4:	00000097          	auipc	ra,0x0
    800040e8:	9bc080e7          	jalr	-1604(ra) # 80003aa0 <cpuid>
    800040ec:	01813083          	ld	ra,24(sp)
    800040f0:	01013403          	ld	s0,16(sp)
    800040f4:	00d5179b          	slliw	a5,a0,0xd
    800040f8:	0c201737          	lui	a4,0xc201
    800040fc:	00f707b3          	add	a5,a4,a5
    80004100:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80004104:	00813483          	ld	s1,8(sp)
    80004108:	02010113          	addi	sp,sp,32
    8000410c:	00008067          	ret

0000000080004110 <consolewrite>:
    80004110:	fb010113          	addi	sp,sp,-80
    80004114:	04813023          	sd	s0,64(sp)
    80004118:	04113423          	sd	ra,72(sp)
    8000411c:	02913c23          	sd	s1,56(sp)
    80004120:	03213823          	sd	s2,48(sp)
    80004124:	03313423          	sd	s3,40(sp)
    80004128:	03413023          	sd	s4,32(sp)
    8000412c:	01513c23          	sd	s5,24(sp)
    80004130:	05010413          	addi	s0,sp,80
    80004134:	06c05c63          	blez	a2,800041ac <consolewrite+0x9c>
    80004138:	00060993          	mv	s3,a2
    8000413c:	00050a13          	mv	s4,a0
    80004140:	00058493          	mv	s1,a1
    80004144:	00000913          	li	s2,0
    80004148:	fff00a93          	li	s5,-1
    8000414c:	01c0006f          	j	80004168 <consolewrite+0x58>
    80004150:	fbf44503          	lbu	a0,-65(s0)
    80004154:	0019091b          	addiw	s2,s2,1
    80004158:	00148493          	addi	s1,s1,1
    8000415c:	00001097          	auipc	ra,0x1
    80004160:	a9c080e7          	jalr	-1380(ra) # 80004bf8 <uartputc>
    80004164:	03298063          	beq	s3,s2,80004184 <consolewrite+0x74>
    80004168:	00048613          	mv	a2,s1
    8000416c:	00100693          	li	a3,1
    80004170:	000a0593          	mv	a1,s4
    80004174:	fbf40513          	addi	a0,s0,-65
    80004178:	00000097          	auipc	ra,0x0
    8000417c:	9e0080e7          	jalr	-1568(ra) # 80003b58 <either_copyin>
    80004180:	fd5518e3          	bne	a0,s5,80004150 <consolewrite+0x40>
    80004184:	04813083          	ld	ra,72(sp)
    80004188:	04013403          	ld	s0,64(sp)
    8000418c:	03813483          	ld	s1,56(sp)
    80004190:	02813983          	ld	s3,40(sp)
    80004194:	02013a03          	ld	s4,32(sp)
    80004198:	01813a83          	ld	s5,24(sp)
    8000419c:	00090513          	mv	a0,s2
    800041a0:	03013903          	ld	s2,48(sp)
    800041a4:	05010113          	addi	sp,sp,80
    800041a8:	00008067          	ret
    800041ac:	00000913          	li	s2,0
    800041b0:	fd5ff06f          	j	80004184 <consolewrite+0x74>

00000000800041b4 <consoleread>:
    800041b4:	f9010113          	addi	sp,sp,-112
    800041b8:	06813023          	sd	s0,96(sp)
    800041bc:	04913c23          	sd	s1,88(sp)
    800041c0:	05213823          	sd	s2,80(sp)
    800041c4:	05313423          	sd	s3,72(sp)
    800041c8:	05413023          	sd	s4,64(sp)
    800041cc:	03513c23          	sd	s5,56(sp)
    800041d0:	03613823          	sd	s6,48(sp)
    800041d4:	03713423          	sd	s7,40(sp)
    800041d8:	03813023          	sd	s8,32(sp)
    800041dc:	06113423          	sd	ra,104(sp)
    800041e0:	01913c23          	sd	s9,24(sp)
    800041e4:	07010413          	addi	s0,sp,112
    800041e8:	00060b93          	mv	s7,a2
    800041ec:	00050913          	mv	s2,a0
    800041f0:	00058c13          	mv	s8,a1
    800041f4:	00060b1b          	sext.w	s6,a2
    800041f8:	00004497          	auipc	s1,0x4
    800041fc:	2f048493          	addi	s1,s1,752 # 800084e8 <cons>
    80004200:	00400993          	li	s3,4
    80004204:	fff00a13          	li	s4,-1
    80004208:	00a00a93          	li	s5,10
    8000420c:	05705e63          	blez	s7,80004268 <consoleread+0xb4>
    80004210:	09c4a703          	lw	a4,156(s1)
    80004214:	0984a783          	lw	a5,152(s1)
    80004218:	0007071b          	sext.w	a4,a4
    8000421c:	08e78463          	beq	a5,a4,800042a4 <consoleread+0xf0>
    80004220:	07f7f713          	andi	a4,a5,127
    80004224:	00e48733          	add	a4,s1,a4
    80004228:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000422c:	0017869b          	addiw	a3,a5,1
    80004230:	08d4ac23          	sw	a3,152(s1)
    80004234:	00070c9b          	sext.w	s9,a4
    80004238:	0b370663          	beq	a4,s3,800042e4 <consoleread+0x130>
    8000423c:	00100693          	li	a3,1
    80004240:	f9f40613          	addi	a2,s0,-97
    80004244:	000c0593          	mv	a1,s8
    80004248:	00090513          	mv	a0,s2
    8000424c:	f8e40fa3          	sb	a4,-97(s0)
    80004250:	00000097          	auipc	ra,0x0
    80004254:	8bc080e7          	jalr	-1860(ra) # 80003b0c <either_copyout>
    80004258:	01450863          	beq	a0,s4,80004268 <consoleread+0xb4>
    8000425c:	001c0c13          	addi	s8,s8,1
    80004260:	fffb8b9b          	addiw	s7,s7,-1
    80004264:	fb5c94e3          	bne	s9,s5,8000420c <consoleread+0x58>
    80004268:	000b851b          	sext.w	a0,s7
    8000426c:	06813083          	ld	ra,104(sp)
    80004270:	06013403          	ld	s0,96(sp)
    80004274:	05813483          	ld	s1,88(sp)
    80004278:	05013903          	ld	s2,80(sp)
    8000427c:	04813983          	ld	s3,72(sp)
    80004280:	04013a03          	ld	s4,64(sp)
    80004284:	03813a83          	ld	s5,56(sp)
    80004288:	02813b83          	ld	s7,40(sp)
    8000428c:	02013c03          	ld	s8,32(sp)
    80004290:	01813c83          	ld	s9,24(sp)
    80004294:	40ab053b          	subw	a0,s6,a0
    80004298:	03013b03          	ld	s6,48(sp)
    8000429c:	07010113          	addi	sp,sp,112
    800042a0:	00008067          	ret
    800042a4:	00001097          	auipc	ra,0x1
    800042a8:	1d8080e7          	jalr	472(ra) # 8000547c <push_on>
    800042ac:	0984a703          	lw	a4,152(s1)
    800042b0:	09c4a783          	lw	a5,156(s1)
    800042b4:	0007879b          	sext.w	a5,a5
    800042b8:	fef70ce3          	beq	a4,a5,800042b0 <consoleread+0xfc>
    800042bc:	00001097          	auipc	ra,0x1
    800042c0:	234080e7          	jalr	564(ra) # 800054f0 <pop_on>
    800042c4:	0984a783          	lw	a5,152(s1)
    800042c8:	07f7f713          	andi	a4,a5,127
    800042cc:	00e48733          	add	a4,s1,a4
    800042d0:	01874703          	lbu	a4,24(a4)
    800042d4:	0017869b          	addiw	a3,a5,1
    800042d8:	08d4ac23          	sw	a3,152(s1)
    800042dc:	00070c9b          	sext.w	s9,a4
    800042e0:	f5371ee3          	bne	a4,s3,8000423c <consoleread+0x88>
    800042e4:	000b851b          	sext.w	a0,s7
    800042e8:	f96bf2e3          	bgeu	s7,s6,8000426c <consoleread+0xb8>
    800042ec:	08f4ac23          	sw	a5,152(s1)
    800042f0:	f7dff06f          	j	8000426c <consoleread+0xb8>

00000000800042f4 <consputc>:
    800042f4:	10000793          	li	a5,256
    800042f8:	00f50663          	beq	a0,a5,80004304 <consputc+0x10>
    800042fc:	00001317          	auipc	t1,0x1
    80004300:	9f430067          	jr	-1548(t1) # 80004cf0 <uartputc_sync>
    80004304:	ff010113          	addi	sp,sp,-16
    80004308:	00113423          	sd	ra,8(sp)
    8000430c:	00813023          	sd	s0,0(sp)
    80004310:	01010413          	addi	s0,sp,16
    80004314:	00800513          	li	a0,8
    80004318:	00001097          	auipc	ra,0x1
    8000431c:	9d8080e7          	jalr	-1576(ra) # 80004cf0 <uartputc_sync>
    80004320:	02000513          	li	a0,32
    80004324:	00001097          	auipc	ra,0x1
    80004328:	9cc080e7          	jalr	-1588(ra) # 80004cf0 <uartputc_sync>
    8000432c:	00013403          	ld	s0,0(sp)
    80004330:	00813083          	ld	ra,8(sp)
    80004334:	00800513          	li	a0,8
    80004338:	01010113          	addi	sp,sp,16
    8000433c:	00001317          	auipc	t1,0x1
    80004340:	9b430067          	jr	-1612(t1) # 80004cf0 <uartputc_sync>

0000000080004344 <consoleintr>:
    80004344:	fe010113          	addi	sp,sp,-32
    80004348:	00813823          	sd	s0,16(sp)
    8000434c:	00913423          	sd	s1,8(sp)
    80004350:	01213023          	sd	s2,0(sp)
    80004354:	00113c23          	sd	ra,24(sp)
    80004358:	02010413          	addi	s0,sp,32
    8000435c:	00004917          	auipc	s2,0x4
    80004360:	18c90913          	addi	s2,s2,396 # 800084e8 <cons>
    80004364:	00050493          	mv	s1,a0
    80004368:	00090513          	mv	a0,s2
    8000436c:	00001097          	auipc	ra,0x1
    80004370:	e40080e7          	jalr	-448(ra) # 800051ac <acquire>
    80004374:	02048c63          	beqz	s1,800043ac <consoleintr+0x68>
    80004378:	0a092783          	lw	a5,160(s2)
    8000437c:	09892703          	lw	a4,152(s2)
    80004380:	07f00693          	li	a3,127
    80004384:	40e7873b          	subw	a4,a5,a4
    80004388:	02e6e263          	bltu	a3,a4,800043ac <consoleintr+0x68>
    8000438c:	00d00713          	li	a4,13
    80004390:	04e48063          	beq	s1,a4,800043d0 <consoleintr+0x8c>
    80004394:	07f7f713          	andi	a4,a5,127
    80004398:	00e90733          	add	a4,s2,a4
    8000439c:	0017879b          	addiw	a5,a5,1
    800043a0:	0af92023          	sw	a5,160(s2)
    800043a4:	00970c23          	sb	s1,24(a4)
    800043a8:	08f92e23          	sw	a5,156(s2)
    800043ac:	01013403          	ld	s0,16(sp)
    800043b0:	01813083          	ld	ra,24(sp)
    800043b4:	00813483          	ld	s1,8(sp)
    800043b8:	00013903          	ld	s2,0(sp)
    800043bc:	00004517          	auipc	a0,0x4
    800043c0:	12c50513          	addi	a0,a0,300 # 800084e8 <cons>
    800043c4:	02010113          	addi	sp,sp,32
    800043c8:	00001317          	auipc	t1,0x1
    800043cc:	eb030067          	jr	-336(t1) # 80005278 <release>
    800043d0:	00a00493          	li	s1,10
    800043d4:	fc1ff06f          	j	80004394 <consoleintr+0x50>

00000000800043d8 <consoleinit>:
    800043d8:	fe010113          	addi	sp,sp,-32
    800043dc:	00113c23          	sd	ra,24(sp)
    800043e0:	00813823          	sd	s0,16(sp)
    800043e4:	00913423          	sd	s1,8(sp)
    800043e8:	02010413          	addi	s0,sp,32
    800043ec:	00004497          	auipc	s1,0x4
    800043f0:	0fc48493          	addi	s1,s1,252 # 800084e8 <cons>
    800043f4:	00048513          	mv	a0,s1
    800043f8:	00002597          	auipc	a1,0x2
    800043fc:	03858593          	addi	a1,a1,56 # 80006430 <CONSOLE_STATUS+0x420>
    80004400:	00001097          	auipc	ra,0x1
    80004404:	d88080e7          	jalr	-632(ra) # 80005188 <initlock>
    80004408:	00000097          	auipc	ra,0x0
    8000440c:	7ac080e7          	jalr	1964(ra) # 80004bb4 <uartinit>
    80004410:	01813083          	ld	ra,24(sp)
    80004414:	01013403          	ld	s0,16(sp)
    80004418:	00000797          	auipc	a5,0x0
    8000441c:	d9c78793          	addi	a5,a5,-612 # 800041b4 <consoleread>
    80004420:	0af4bc23          	sd	a5,184(s1)
    80004424:	00000797          	auipc	a5,0x0
    80004428:	cec78793          	addi	a5,a5,-788 # 80004110 <consolewrite>
    8000442c:	0cf4b023          	sd	a5,192(s1)
    80004430:	00813483          	ld	s1,8(sp)
    80004434:	02010113          	addi	sp,sp,32
    80004438:	00008067          	ret

000000008000443c <console_read>:
    8000443c:	ff010113          	addi	sp,sp,-16
    80004440:	00813423          	sd	s0,8(sp)
    80004444:	01010413          	addi	s0,sp,16
    80004448:	00813403          	ld	s0,8(sp)
    8000444c:	00004317          	auipc	t1,0x4
    80004450:	15433303          	ld	t1,340(t1) # 800085a0 <devsw+0x10>
    80004454:	01010113          	addi	sp,sp,16
    80004458:	00030067          	jr	t1

000000008000445c <console_write>:
    8000445c:	ff010113          	addi	sp,sp,-16
    80004460:	00813423          	sd	s0,8(sp)
    80004464:	01010413          	addi	s0,sp,16
    80004468:	00813403          	ld	s0,8(sp)
    8000446c:	00004317          	auipc	t1,0x4
    80004470:	13c33303          	ld	t1,316(t1) # 800085a8 <devsw+0x18>
    80004474:	01010113          	addi	sp,sp,16
    80004478:	00030067          	jr	t1

000000008000447c <panic>:
    8000447c:	fe010113          	addi	sp,sp,-32
    80004480:	00113c23          	sd	ra,24(sp)
    80004484:	00813823          	sd	s0,16(sp)
    80004488:	00913423          	sd	s1,8(sp)
    8000448c:	02010413          	addi	s0,sp,32
    80004490:	00050493          	mv	s1,a0
    80004494:	00002517          	auipc	a0,0x2
    80004498:	fa450513          	addi	a0,a0,-92 # 80006438 <CONSOLE_STATUS+0x428>
    8000449c:	00004797          	auipc	a5,0x4
    800044a0:	1a07a623          	sw	zero,428(a5) # 80008648 <pr+0x18>
    800044a4:	00000097          	auipc	ra,0x0
    800044a8:	034080e7          	jalr	52(ra) # 800044d8 <__printf>
    800044ac:	00048513          	mv	a0,s1
    800044b0:	00000097          	auipc	ra,0x0
    800044b4:	028080e7          	jalr	40(ra) # 800044d8 <__printf>
    800044b8:	00002517          	auipc	a0,0x2
    800044bc:	f6050513          	addi	a0,a0,-160 # 80006418 <CONSOLE_STATUS+0x408>
    800044c0:	00000097          	auipc	ra,0x0
    800044c4:	018080e7          	jalr	24(ra) # 800044d8 <__printf>
    800044c8:	00100793          	li	a5,1
    800044cc:	00003717          	auipc	a4,0x3
    800044d0:	ecf72623          	sw	a5,-308(a4) # 80007398 <panicked>
    800044d4:	0000006f          	j	800044d4 <panic+0x58>

00000000800044d8 <__printf>:
    800044d8:	f3010113          	addi	sp,sp,-208
    800044dc:	08813023          	sd	s0,128(sp)
    800044e0:	07313423          	sd	s3,104(sp)
    800044e4:	09010413          	addi	s0,sp,144
    800044e8:	05813023          	sd	s8,64(sp)
    800044ec:	08113423          	sd	ra,136(sp)
    800044f0:	06913c23          	sd	s1,120(sp)
    800044f4:	07213823          	sd	s2,112(sp)
    800044f8:	07413023          	sd	s4,96(sp)
    800044fc:	05513c23          	sd	s5,88(sp)
    80004500:	05613823          	sd	s6,80(sp)
    80004504:	05713423          	sd	s7,72(sp)
    80004508:	03913c23          	sd	s9,56(sp)
    8000450c:	03a13823          	sd	s10,48(sp)
    80004510:	03b13423          	sd	s11,40(sp)
    80004514:	00004317          	auipc	t1,0x4
    80004518:	11c30313          	addi	t1,t1,284 # 80008630 <pr>
    8000451c:	01832c03          	lw	s8,24(t1)
    80004520:	00b43423          	sd	a1,8(s0)
    80004524:	00c43823          	sd	a2,16(s0)
    80004528:	00d43c23          	sd	a3,24(s0)
    8000452c:	02e43023          	sd	a4,32(s0)
    80004530:	02f43423          	sd	a5,40(s0)
    80004534:	03043823          	sd	a6,48(s0)
    80004538:	03143c23          	sd	a7,56(s0)
    8000453c:	00050993          	mv	s3,a0
    80004540:	4a0c1663          	bnez	s8,800049ec <__printf+0x514>
    80004544:	60098c63          	beqz	s3,80004b5c <__printf+0x684>
    80004548:	0009c503          	lbu	a0,0(s3)
    8000454c:	00840793          	addi	a5,s0,8
    80004550:	f6f43c23          	sd	a5,-136(s0)
    80004554:	00000493          	li	s1,0
    80004558:	22050063          	beqz	a0,80004778 <__printf+0x2a0>
    8000455c:	00002a37          	lui	s4,0x2
    80004560:	00018ab7          	lui	s5,0x18
    80004564:	000f4b37          	lui	s6,0xf4
    80004568:	00989bb7          	lui	s7,0x989
    8000456c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80004570:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80004574:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80004578:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000457c:	00148c9b          	addiw	s9,s1,1
    80004580:	02500793          	li	a5,37
    80004584:	01998933          	add	s2,s3,s9
    80004588:	38f51263          	bne	a0,a5,8000490c <__printf+0x434>
    8000458c:	00094783          	lbu	a5,0(s2)
    80004590:	00078c9b          	sext.w	s9,a5
    80004594:	1e078263          	beqz	a5,80004778 <__printf+0x2a0>
    80004598:	0024849b          	addiw	s1,s1,2
    8000459c:	07000713          	li	a4,112
    800045a0:	00998933          	add	s2,s3,s1
    800045a4:	38e78a63          	beq	a5,a4,80004938 <__printf+0x460>
    800045a8:	20f76863          	bltu	a4,a5,800047b8 <__printf+0x2e0>
    800045ac:	42a78863          	beq	a5,a0,800049dc <__printf+0x504>
    800045b0:	06400713          	li	a4,100
    800045b4:	40e79663          	bne	a5,a4,800049c0 <__printf+0x4e8>
    800045b8:	f7843783          	ld	a5,-136(s0)
    800045bc:	0007a603          	lw	a2,0(a5)
    800045c0:	00878793          	addi	a5,a5,8
    800045c4:	f6f43c23          	sd	a5,-136(s0)
    800045c8:	42064a63          	bltz	a2,800049fc <__printf+0x524>
    800045cc:	00a00713          	li	a4,10
    800045d0:	02e677bb          	remuw	a5,a2,a4
    800045d4:	00002d97          	auipc	s11,0x2
    800045d8:	e8cd8d93          	addi	s11,s11,-372 # 80006460 <digits>
    800045dc:	00900593          	li	a1,9
    800045e0:	0006051b          	sext.w	a0,a2
    800045e4:	00000c93          	li	s9,0
    800045e8:	02079793          	slli	a5,a5,0x20
    800045ec:	0207d793          	srli	a5,a5,0x20
    800045f0:	00fd87b3          	add	a5,s11,a5
    800045f4:	0007c783          	lbu	a5,0(a5)
    800045f8:	02e656bb          	divuw	a3,a2,a4
    800045fc:	f8f40023          	sb	a5,-128(s0)
    80004600:	14c5d863          	bge	a1,a2,80004750 <__printf+0x278>
    80004604:	06300593          	li	a1,99
    80004608:	00100c93          	li	s9,1
    8000460c:	02e6f7bb          	remuw	a5,a3,a4
    80004610:	02079793          	slli	a5,a5,0x20
    80004614:	0207d793          	srli	a5,a5,0x20
    80004618:	00fd87b3          	add	a5,s11,a5
    8000461c:	0007c783          	lbu	a5,0(a5)
    80004620:	02e6d73b          	divuw	a4,a3,a4
    80004624:	f8f400a3          	sb	a5,-127(s0)
    80004628:	12a5f463          	bgeu	a1,a0,80004750 <__printf+0x278>
    8000462c:	00a00693          	li	a3,10
    80004630:	00900593          	li	a1,9
    80004634:	02d777bb          	remuw	a5,a4,a3
    80004638:	02079793          	slli	a5,a5,0x20
    8000463c:	0207d793          	srli	a5,a5,0x20
    80004640:	00fd87b3          	add	a5,s11,a5
    80004644:	0007c503          	lbu	a0,0(a5)
    80004648:	02d757bb          	divuw	a5,a4,a3
    8000464c:	f8a40123          	sb	a0,-126(s0)
    80004650:	48e5f263          	bgeu	a1,a4,80004ad4 <__printf+0x5fc>
    80004654:	06300513          	li	a0,99
    80004658:	02d7f5bb          	remuw	a1,a5,a3
    8000465c:	02059593          	slli	a1,a1,0x20
    80004660:	0205d593          	srli	a1,a1,0x20
    80004664:	00bd85b3          	add	a1,s11,a1
    80004668:	0005c583          	lbu	a1,0(a1)
    8000466c:	02d7d7bb          	divuw	a5,a5,a3
    80004670:	f8b401a3          	sb	a1,-125(s0)
    80004674:	48e57263          	bgeu	a0,a4,80004af8 <__printf+0x620>
    80004678:	3e700513          	li	a0,999
    8000467c:	02d7f5bb          	remuw	a1,a5,a3
    80004680:	02059593          	slli	a1,a1,0x20
    80004684:	0205d593          	srli	a1,a1,0x20
    80004688:	00bd85b3          	add	a1,s11,a1
    8000468c:	0005c583          	lbu	a1,0(a1)
    80004690:	02d7d7bb          	divuw	a5,a5,a3
    80004694:	f8b40223          	sb	a1,-124(s0)
    80004698:	46e57663          	bgeu	a0,a4,80004b04 <__printf+0x62c>
    8000469c:	02d7f5bb          	remuw	a1,a5,a3
    800046a0:	02059593          	slli	a1,a1,0x20
    800046a4:	0205d593          	srli	a1,a1,0x20
    800046a8:	00bd85b3          	add	a1,s11,a1
    800046ac:	0005c583          	lbu	a1,0(a1)
    800046b0:	02d7d7bb          	divuw	a5,a5,a3
    800046b4:	f8b402a3          	sb	a1,-123(s0)
    800046b8:	46ea7863          	bgeu	s4,a4,80004b28 <__printf+0x650>
    800046bc:	02d7f5bb          	remuw	a1,a5,a3
    800046c0:	02059593          	slli	a1,a1,0x20
    800046c4:	0205d593          	srli	a1,a1,0x20
    800046c8:	00bd85b3          	add	a1,s11,a1
    800046cc:	0005c583          	lbu	a1,0(a1)
    800046d0:	02d7d7bb          	divuw	a5,a5,a3
    800046d4:	f8b40323          	sb	a1,-122(s0)
    800046d8:	3eeaf863          	bgeu	s5,a4,80004ac8 <__printf+0x5f0>
    800046dc:	02d7f5bb          	remuw	a1,a5,a3
    800046e0:	02059593          	slli	a1,a1,0x20
    800046e4:	0205d593          	srli	a1,a1,0x20
    800046e8:	00bd85b3          	add	a1,s11,a1
    800046ec:	0005c583          	lbu	a1,0(a1)
    800046f0:	02d7d7bb          	divuw	a5,a5,a3
    800046f4:	f8b403a3          	sb	a1,-121(s0)
    800046f8:	42eb7e63          	bgeu	s6,a4,80004b34 <__printf+0x65c>
    800046fc:	02d7f5bb          	remuw	a1,a5,a3
    80004700:	02059593          	slli	a1,a1,0x20
    80004704:	0205d593          	srli	a1,a1,0x20
    80004708:	00bd85b3          	add	a1,s11,a1
    8000470c:	0005c583          	lbu	a1,0(a1)
    80004710:	02d7d7bb          	divuw	a5,a5,a3
    80004714:	f8b40423          	sb	a1,-120(s0)
    80004718:	42ebfc63          	bgeu	s7,a4,80004b50 <__printf+0x678>
    8000471c:	02079793          	slli	a5,a5,0x20
    80004720:	0207d793          	srli	a5,a5,0x20
    80004724:	00fd8db3          	add	s11,s11,a5
    80004728:	000dc703          	lbu	a4,0(s11)
    8000472c:	00a00793          	li	a5,10
    80004730:	00900c93          	li	s9,9
    80004734:	f8e404a3          	sb	a4,-119(s0)
    80004738:	00065c63          	bgez	a2,80004750 <__printf+0x278>
    8000473c:	f9040713          	addi	a4,s0,-112
    80004740:	00f70733          	add	a4,a4,a5
    80004744:	02d00693          	li	a3,45
    80004748:	fed70823          	sb	a3,-16(a4)
    8000474c:	00078c93          	mv	s9,a5
    80004750:	f8040793          	addi	a5,s0,-128
    80004754:	01978cb3          	add	s9,a5,s9
    80004758:	f7f40d13          	addi	s10,s0,-129
    8000475c:	000cc503          	lbu	a0,0(s9)
    80004760:	fffc8c93          	addi	s9,s9,-1
    80004764:	00000097          	auipc	ra,0x0
    80004768:	b90080e7          	jalr	-1136(ra) # 800042f4 <consputc>
    8000476c:	ffac98e3          	bne	s9,s10,8000475c <__printf+0x284>
    80004770:	00094503          	lbu	a0,0(s2)
    80004774:	e00514e3          	bnez	a0,8000457c <__printf+0xa4>
    80004778:	1a0c1663          	bnez	s8,80004924 <__printf+0x44c>
    8000477c:	08813083          	ld	ra,136(sp)
    80004780:	08013403          	ld	s0,128(sp)
    80004784:	07813483          	ld	s1,120(sp)
    80004788:	07013903          	ld	s2,112(sp)
    8000478c:	06813983          	ld	s3,104(sp)
    80004790:	06013a03          	ld	s4,96(sp)
    80004794:	05813a83          	ld	s5,88(sp)
    80004798:	05013b03          	ld	s6,80(sp)
    8000479c:	04813b83          	ld	s7,72(sp)
    800047a0:	04013c03          	ld	s8,64(sp)
    800047a4:	03813c83          	ld	s9,56(sp)
    800047a8:	03013d03          	ld	s10,48(sp)
    800047ac:	02813d83          	ld	s11,40(sp)
    800047b0:	0d010113          	addi	sp,sp,208
    800047b4:	00008067          	ret
    800047b8:	07300713          	li	a4,115
    800047bc:	1ce78a63          	beq	a5,a4,80004990 <__printf+0x4b8>
    800047c0:	07800713          	li	a4,120
    800047c4:	1ee79e63          	bne	a5,a4,800049c0 <__printf+0x4e8>
    800047c8:	f7843783          	ld	a5,-136(s0)
    800047cc:	0007a703          	lw	a4,0(a5)
    800047d0:	00878793          	addi	a5,a5,8
    800047d4:	f6f43c23          	sd	a5,-136(s0)
    800047d8:	28074263          	bltz	a4,80004a5c <__printf+0x584>
    800047dc:	00002d97          	auipc	s11,0x2
    800047e0:	c84d8d93          	addi	s11,s11,-892 # 80006460 <digits>
    800047e4:	00f77793          	andi	a5,a4,15
    800047e8:	00fd87b3          	add	a5,s11,a5
    800047ec:	0007c683          	lbu	a3,0(a5)
    800047f0:	00f00613          	li	a2,15
    800047f4:	0007079b          	sext.w	a5,a4
    800047f8:	f8d40023          	sb	a3,-128(s0)
    800047fc:	0047559b          	srliw	a1,a4,0x4
    80004800:	0047569b          	srliw	a3,a4,0x4
    80004804:	00000c93          	li	s9,0
    80004808:	0ee65063          	bge	a2,a4,800048e8 <__printf+0x410>
    8000480c:	00f6f693          	andi	a3,a3,15
    80004810:	00dd86b3          	add	a3,s11,a3
    80004814:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80004818:	0087d79b          	srliw	a5,a5,0x8
    8000481c:	00100c93          	li	s9,1
    80004820:	f8d400a3          	sb	a3,-127(s0)
    80004824:	0cb67263          	bgeu	a2,a1,800048e8 <__printf+0x410>
    80004828:	00f7f693          	andi	a3,a5,15
    8000482c:	00dd86b3          	add	a3,s11,a3
    80004830:	0006c583          	lbu	a1,0(a3)
    80004834:	00f00613          	li	a2,15
    80004838:	0047d69b          	srliw	a3,a5,0x4
    8000483c:	f8b40123          	sb	a1,-126(s0)
    80004840:	0047d593          	srli	a1,a5,0x4
    80004844:	28f67e63          	bgeu	a2,a5,80004ae0 <__printf+0x608>
    80004848:	00f6f693          	andi	a3,a3,15
    8000484c:	00dd86b3          	add	a3,s11,a3
    80004850:	0006c503          	lbu	a0,0(a3)
    80004854:	0087d813          	srli	a6,a5,0x8
    80004858:	0087d69b          	srliw	a3,a5,0x8
    8000485c:	f8a401a3          	sb	a0,-125(s0)
    80004860:	28b67663          	bgeu	a2,a1,80004aec <__printf+0x614>
    80004864:	00f6f693          	andi	a3,a3,15
    80004868:	00dd86b3          	add	a3,s11,a3
    8000486c:	0006c583          	lbu	a1,0(a3)
    80004870:	00c7d513          	srli	a0,a5,0xc
    80004874:	00c7d69b          	srliw	a3,a5,0xc
    80004878:	f8b40223          	sb	a1,-124(s0)
    8000487c:	29067a63          	bgeu	a2,a6,80004b10 <__printf+0x638>
    80004880:	00f6f693          	andi	a3,a3,15
    80004884:	00dd86b3          	add	a3,s11,a3
    80004888:	0006c583          	lbu	a1,0(a3)
    8000488c:	0107d813          	srli	a6,a5,0x10
    80004890:	0107d69b          	srliw	a3,a5,0x10
    80004894:	f8b402a3          	sb	a1,-123(s0)
    80004898:	28a67263          	bgeu	a2,a0,80004b1c <__printf+0x644>
    8000489c:	00f6f693          	andi	a3,a3,15
    800048a0:	00dd86b3          	add	a3,s11,a3
    800048a4:	0006c683          	lbu	a3,0(a3)
    800048a8:	0147d79b          	srliw	a5,a5,0x14
    800048ac:	f8d40323          	sb	a3,-122(s0)
    800048b0:	21067663          	bgeu	a2,a6,80004abc <__printf+0x5e4>
    800048b4:	02079793          	slli	a5,a5,0x20
    800048b8:	0207d793          	srli	a5,a5,0x20
    800048bc:	00fd8db3          	add	s11,s11,a5
    800048c0:	000dc683          	lbu	a3,0(s11)
    800048c4:	00800793          	li	a5,8
    800048c8:	00700c93          	li	s9,7
    800048cc:	f8d403a3          	sb	a3,-121(s0)
    800048d0:	00075c63          	bgez	a4,800048e8 <__printf+0x410>
    800048d4:	f9040713          	addi	a4,s0,-112
    800048d8:	00f70733          	add	a4,a4,a5
    800048dc:	02d00693          	li	a3,45
    800048e0:	fed70823          	sb	a3,-16(a4)
    800048e4:	00078c93          	mv	s9,a5
    800048e8:	f8040793          	addi	a5,s0,-128
    800048ec:	01978cb3          	add	s9,a5,s9
    800048f0:	f7f40d13          	addi	s10,s0,-129
    800048f4:	000cc503          	lbu	a0,0(s9)
    800048f8:	fffc8c93          	addi	s9,s9,-1
    800048fc:	00000097          	auipc	ra,0x0
    80004900:	9f8080e7          	jalr	-1544(ra) # 800042f4 <consputc>
    80004904:	ff9d18e3          	bne	s10,s9,800048f4 <__printf+0x41c>
    80004908:	0100006f          	j	80004918 <__printf+0x440>
    8000490c:	00000097          	auipc	ra,0x0
    80004910:	9e8080e7          	jalr	-1560(ra) # 800042f4 <consputc>
    80004914:	000c8493          	mv	s1,s9
    80004918:	00094503          	lbu	a0,0(s2)
    8000491c:	c60510e3          	bnez	a0,8000457c <__printf+0xa4>
    80004920:	e40c0ee3          	beqz	s8,8000477c <__printf+0x2a4>
    80004924:	00004517          	auipc	a0,0x4
    80004928:	d0c50513          	addi	a0,a0,-756 # 80008630 <pr>
    8000492c:	00001097          	auipc	ra,0x1
    80004930:	94c080e7          	jalr	-1716(ra) # 80005278 <release>
    80004934:	e49ff06f          	j	8000477c <__printf+0x2a4>
    80004938:	f7843783          	ld	a5,-136(s0)
    8000493c:	03000513          	li	a0,48
    80004940:	01000d13          	li	s10,16
    80004944:	00878713          	addi	a4,a5,8
    80004948:	0007bc83          	ld	s9,0(a5)
    8000494c:	f6e43c23          	sd	a4,-136(s0)
    80004950:	00000097          	auipc	ra,0x0
    80004954:	9a4080e7          	jalr	-1628(ra) # 800042f4 <consputc>
    80004958:	07800513          	li	a0,120
    8000495c:	00000097          	auipc	ra,0x0
    80004960:	998080e7          	jalr	-1640(ra) # 800042f4 <consputc>
    80004964:	00002d97          	auipc	s11,0x2
    80004968:	afcd8d93          	addi	s11,s11,-1284 # 80006460 <digits>
    8000496c:	03ccd793          	srli	a5,s9,0x3c
    80004970:	00fd87b3          	add	a5,s11,a5
    80004974:	0007c503          	lbu	a0,0(a5)
    80004978:	fffd0d1b          	addiw	s10,s10,-1
    8000497c:	004c9c93          	slli	s9,s9,0x4
    80004980:	00000097          	auipc	ra,0x0
    80004984:	974080e7          	jalr	-1676(ra) # 800042f4 <consputc>
    80004988:	fe0d12e3          	bnez	s10,8000496c <__printf+0x494>
    8000498c:	f8dff06f          	j	80004918 <__printf+0x440>
    80004990:	f7843783          	ld	a5,-136(s0)
    80004994:	0007bc83          	ld	s9,0(a5)
    80004998:	00878793          	addi	a5,a5,8
    8000499c:	f6f43c23          	sd	a5,-136(s0)
    800049a0:	000c9a63          	bnez	s9,800049b4 <__printf+0x4dc>
    800049a4:	1080006f          	j	80004aac <__printf+0x5d4>
    800049a8:	001c8c93          	addi	s9,s9,1
    800049ac:	00000097          	auipc	ra,0x0
    800049b0:	948080e7          	jalr	-1720(ra) # 800042f4 <consputc>
    800049b4:	000cc503          	lbu	a0,0(s9)
    800049b8:	fe0518e3          	bnez	a0,800049a8 <__printf+0x4d0>
    800049bc:	f5dff06f          	j	80004918 <__printf+0x440>
    800049c0:	02500513          	li	a0,37
    800049c4:	00000097          	auipc	ra,0x0
    800049c8:	930080e7          	jalr	-1744(ra) # 800042f4 <consputc>
    800049cc:	000c8513          	mv	a0,s9
    800049d0:	00000097          	auipc	ra,0x0
    800049d4:	924080e7          	jalr	-1756(ra) # 800042f4 <consputc>
    800049d8:	f41ff06f          	j	80004918 <__printf+0x440>
    800049dc:	02500513          	li	a0,37
    800049e0:	00000097          	auipc	ra,0x0
    800049e4:	914080e7          	jalr	-1772(ra) # 800042f4 <consputc>
    800049e8:	f31ff06f          	j	80004918 <__printf+0x440>
    800049ec:	00030513          	mv	a0,t1
    800049f0:	00000097          	auipc	ra,0x0
    800049f4:	7bc080e7          	jalr	1980(ra) # 800051ac <acquire>
    800049f8:	b4dff06f          	j	80004544 <__printf+0x6c>
    800049fc:	40c0053b          	negw	a0,a2
    80004a00:	00a00713          	li	a4,10
    80004a04:	02e576bb          	remuw	a3,a0,a4
    80004a08:	00002d97          	auipc	s11,0x2
    80004a0c:	a58d8d93          	addi	s11,s11,-1448 # 80006460 <digits>
    80004a10:	ff700593          	li	a1,-9
    80004a14:	02069693          	slli	a3,a3,0x20
    80004a18:	0206d693          	srli	a3,a3,0x20
    80004a1c:	00dd86b3          	add	a3,s11,a3
    80004a20:	0006c683          	lbu	a3,0(a3)
    80004a24:	02e557bb          	divuw	a5,a0,a4
    80004a28:	f8d40023          	sb	a3,-128(s0)
    80004a2c:	10b65e63          	bge	a2,a1,80004b48 <__printf+0x670>
    80004a30:	06300593          	li	a1,99
    80004a34:	02e7f6bb          	remuw	a3,a5,a4
    80004a38:	02069693          	slli	a3,a3,0x20
    80004a3c:	0206d693          	srli	a3,a3,0x20
    80004a40:	00dd86b3          	add	a3,s11,a3
    80004a44:	0006c683          	lbu	a3,0(a3)
    80004a48:	02e7d73b          	divuw	a4,a5,a4
    80004a4c:	00200793          	li	a5,2
    80004a50:	f8d400a3          	sb	a3,-127(s0)
    80004a54:	bca5ece3          	bltu	a1,a0,8000462c <__printf+0x154>
    80004a58:	ce5ff06f          	j	8000473c <__printf+0x264>
    80004a5c:	40e007bb          	negw	a5,a4
    80004a60:	00002d97          	auipc	s11,0x2
    80004a64:	a00d8d93          	addi	s11,s11,-1536 # 80006460 <digits>
    80004a68:	00f7f693          	andi	a3,a5,15
    80004a6c:	00dd86b3          	add	a3,s11,a3
    80004a70:	0006c583          	lbu	a1,0(a3)
    80004a74:	ff100613          	li	a2,-15
    80004a78:	0047d69b          	srliw	a3,a5,0x4
    80004a7c:	f8b40023          	sb	a1,-128(s0)
    80004a80:	0047d59b          	srliw	a1,a5,0x4
    80004a84:	0ac75e63          	bge	a4,a2,80004b40 <__printf+0x668>
    80004a88:	00f6f693          	andi	a3,a3,15
    80004a8c:	00dd86b3          	add	a3,s11,a3
    80004a90:	0006c603          	lbu	a2,0(a3)
    80004a94:	00f00693          	li	a3,15
    80004a98:	0087d79b          	srliw	a5,a5,0x8
    80004a9c:	f8c400a3          	sb	a2,-127(s0)
    80004aa0:	d8b6e4e3          	bltu	a3,a1,80004828 <__printf+0x350>
    80004aa4:	00200793          	li	a5,2
    80004aa8:	e2dff06f          	j	800048d4 <__printf+0x3fc>
    80004aac:	00002c97          	auipc	s9,0x2
    80004ab0:	994c8c93          	addi	s9,s9,-1644 # 80006440 <CONSOLE_STATUS+0x430>
    80004ab4:	02800513          	li	a0,40
    80004ab8:	ef1ff06f          	j	800049a8 <__printf+0x4d0>
    80004abc:	00700793          	li	a5,7
    80004ac0:	00600c93          	li	s9,6
    80004ac4:	e0dff06f          	j	800048d0 <__printf+0x3f8>
    80004ac8:	00700793          	li	a5,7
    80004acc:	00600c93          	li	s9,6
    80004ad0:	c69ff06f          	j	80004738 <__printf+0x260>
    80004ad4:	00300793          	li	a5,3
    80004ad8:	00200c93          	li	s9,2
    80004adc:	c5dff06f          	j	80004738 <__printf+0x260>
    80004ae0:	00300793          	li	a5,3
    80004ae4:	00200c93          	li	s9,2
    80004ae8:	de9ff06f          	j	800048d0 <__printf+0x3f8>
    80004aec:	00400793          	li	a5,4
    80004af0:	00300c93          	li	s9,3
    80004af4:	dddff06f          	j	800048d0 <__printf+0x3f8>
    80004af8:	00400793          	li	a5,4
    80004afc:	00300c93          	li	s9,3
    80004b00:	c39ff06f          	j	80004738 <__printf+0x260>
    80004b04:	00500793          	li	a5,5
    80004b08:	00400c93          	li	s9,4
    80004b0c:	c2dff06f          	j	80004738 <__printf+0x260>
    80004b10:	00500793          	li	a5,5
    80004b14:	00400c93          	li	s9,4
    80004b18:	db9ff06f          	j	800048d0 <__printf+0x3f8>
    80004b1c:	00600793          	li	a5,6
    80004b20:	00500c93          	li	s9,5
    80004b24:	dadff06f          	j	800048d0 <__printf+0x3f8>
    80004b28:	00600793          	li	a5,6
    80004b2c:	00500c93          	li	s9,5
    80004b30:	c09ff06f          	j	80004738 <__printf+0x260>
    80004b34:	00800793          	li	a5,8
    80004b38:	00700c93          	li	s9,7
    80004b3c:	bfdff06f          	j	80004738 <__printf+0x260>
    80004b40:	00100793          	li	a5,1
    80004b44:	d91ff06f          	j	800048d4 <__printf+0x3fc>
    80004b48:	00100793          	li	a5,1
    80004b4c:	bf1ff06f          	j	8000473c <__printf+0x264>
    80004b50:	00900793          	li	a5,9
    80004b54:	00800c93          	li	s9,8
    80004b58:	be1ff06f          	j	80004738 <__printf+0x260>
    80004b5c:	00002517          	auipc	a0,0x2
    80004b60:	8ec50513          	addi	a0,a0,-1812 # 80006448 <CONSOLE_STATUS+0x438>
    80004b64:	00000097          	auipc	ra,0x0
    80004b68:	918080e7          	jalr	-1768(ra) # 8000447c <panic>

0000000080004b6c <printfinit>:
    80004b6c:	fe010113          	addi	sp,sp,-32
    80004b70:	00813823          	sd	s0,16(sp)
    80004b74:	00913423          	sd	s1,8(sp)
    80004b78:	00113c23          	sd	ra,24(sp)
    80004b7c:	02010413          	addi	s0,sp,32
    80004b80:	00004497          	auipc	s1,0x4
    80004b84:	ab048493          	addi	s1,s1,-1360 # 80008630 <pr>
    80004b88:	00048513          	mv	a0,s1
    80004b8c:	00002597          	auipc	a1,0x2
    80004b90:	8cc58593          	addi	a1,a1,-1844 # 80006458 <CONSOLE_STATUS+0x448>
    80004b94:	00000097          	auipc	ra,0x0
    80004b98:	5f4080e7          	jalr	1524(ra) # 80005188 <initlock>
    80004b9c:	01813083          	ld	ra,24(sp)
    80004ba0:	01013403          	ld	s0,16(sp)
    80004ba4:	0004ac23          	sw	zero,24(s1)
    80004ba8:	00813483          	ld	s1,8(sp)
    80004bac:	02010113          	addi	sp,sp,32
    80004bb0:	00008067          	ret

0000000080004bb4 <uartinit>:
    80004bb4:	ff010113          	addi	sp,sp,-16
    80004bb8:	00813423          	sd	s0,8(sp)
    80004bbc:	01010413          	addi	s0,sp,16
    80004bc0:	100007b7          	lui	a5,0x10000
    80004bc4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80004bc8:	f8000713          	li	a4,-128
    80004bcc:	00e781a3          	sb	a4,3(a5)
    80004bd0:	00300713          	li	a4,3
    80004bd4:	00e78023          	sb	a4,0(a5)
    80004bd8:	000780a3          	sb	zero,1(a5)
    80004bdc:	00e781a3          	sb	a4,3(a5)
    80004be0:	00700693          	li	a3,7
    80004be4:	00d78123          	sb	a3,2(a5)
    80004be8:	00e780a3          	sb	a4,1(a5)
    80004bec:	00813403          	ld	s0,8(sp)
    80004bf0:	01010113          	addi	sp,sp,16
    80004bf4:	00008067          	ret

0000000080004bf8 <uartputc>:
    80004bf8:	00002797          	auipc	a5,0x2
    80004bfc:	7a07a783          	lw	a5,1952(a5) # 80007398 <panicked>
    80004c00:	00078463          	beqz	a5,80004c08 <uartputc+0x10>
    80004c04:	0000006f          	j	80004c04 <uartputc+0xc>
    80004c08:	fd010113          	addi	sp,sp,-48
    80004c0c:	02813023          	sd	s0,32(sp)
    80004c10:	00913c23          	sd	s1,24(sp)
    80004c14:	01213823          	sd	s2,16(sp)
    80004c18:	01313423          	sd	s3,8(sp)
    80004c1c:	02113423          	sd	ra,40(sp)
    80004c20:	03010413          	addi	s0,sp,48
    80004c24:	00002917          	auipc	s2,0x2
    80004c28:	77c90913          	addi	s2,s2,1916 # 800073a0 <uart_tx_r>
    80004c2c:	00093783          	ld	a5,0(s2)
    80004c30:	00002497          	auipc	s1,0x2
    80004c34:	77848493          	addi	s1,s1,1912 # 800073a8 <uart_tx_w>
    80004c38:	0004b703          	ld	a4,0(s1)
    80004c3c:	02078693          	addi	a3,a5,32
    80004c40:	00050993          	mv	s3,a0
    80004c44:	02e69c63          	bne	a3,a4,80004c7c <uartputc+0x84>
    80004c48:	00001097          	auipc	ra,0x1
    80004c4c:	834080e7          	jalr	-1996(ra) # 8000547c <push_on>
    80004c50:	00093783          	ld	a5,0(s2)
    80004c54:	0004b703          	ld	a4,0(s1)
    80004c58:	02078793          	addi	a5,a5,32
    80004c5c:	00e79463          	bne	a5,a4,80004c64 <uartputc+0x6c>
    80004c60:	0000006f          	j	80004c60 <uartputc+0x68>
    80004c64:	00001097          	auipc	ra,0x1
    80004c68:	88c080e7          	jalr	-1908(ra) # 800054f0 <pop_on>
    80004c6c:	00093783          	ld	a5,0(s2)
    80004c70:	0004b703          	ld	a4,0(s1)
    80004c74:	02078693          	addi	a3,a5,32
    80004c78:	fce688e3          	beq	a3,a4,80004c48 <uartputc+0x50>
    80004c7c:	01f77693          	andi	a3,a4,31
    80004c80:	00004597          	auipc	a1,0x4
    80004c84:	9d058593          	addi	a1,a1,-1584 # 80008650 <uart_tx_buf>
    80004c88:	00d586b3          	add	a3,a1,a3
    80004c8c:	00170713          	addi	a4,a4,1
    80004c90:	01368023          	sb	s3,0(a3)
    80004c94:	00e4b023          	sd	a4,0(s1)
    80004c98:	10000637          	lui	a2,0x10000
    80004c9c:	02f71063          	bne	a4,a5,80004cbc <uartputc+0xc4>
    80004ca0:	0340006f          	j	80004cd4 <uartputc+0xdc>
    80004ca4:	00074703          	lbu	a4,0(a4)
    80004ca8:	00f93023          	sd	a5,0(s2)
    80004cac:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80004cb0:	00093783          	ld	a5,0(s2)
    80004cb4:	0004b703          	ld	a4,0(s1)
    80004cb8:	00f70e63          	beq	a4,a5,80004cd4 <uartputc+0xdc>
    80004cbc:	00564683          	lbu	a3,5(a2)
    80004cc0:	01f7f713          	andi	a4,a5,31
    80004cc4:	00e58733          	add	a4,a1,a4
    80004cc8:	0206f693          	andi	a3,a3,32
    80004ccc:	00178793          	addi	a5,a5,1
    80004cd0:	fc069ae3          	bnez	a3,80004ca4 <uartputc+0xac>
    80004cd4:	02813083          	ld	ra,40(sp)
    80004cd8:	02013403          	ld	s0,32(sp)
    80004cdc:	01813483          	ld	s1,24(sp)
    80004ce0:	01013903          	ld	s2,16(sp)
    80004ce4:	00813983          	ld	s3,8(sp)
    80004ce8:	03010113          	addi	sp,sp,48
    80004cec:	00008067          	ret

0000000080004cf0 <uartputc_sync>:
    80004cf0:	ff010113          	addi	sp,sp,-16
    80004cf4:	00813423          	sd	s0,8(sp)
    80004cf8:	01010413          	addi	s0,sp,16
    80004cfc:	00002717          	auipc	a4,0x2
    80004d00:	69c72703          	lw	a4,1692(a4) # 80007398 <panicked>
    80004d04:	02071663          	bnez	a4,80004d30 <uartputc_sync+0x40>
    80004d08:	00050793          	mv	a5,a0
    80004d0c:	100006b7          	lui	a3,0x10000
    80004d10:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80004d14:	02077713          	andi	a4,a4,32
    80004d18:	fe070ce3          	beqz	a4,80004d10 <uartputc_sync+0x20>
    80004d1c:	0ff7f793          	andi	a5,a5,255
    80004d20:	00f68023          	sb	a5,0(a3)
    80004d24:	00813403          	ld	s0,8(sp)
    80004d28:	01010113          	addi	sp,sp,16
    80004d2c:	00008067          	ret
    80004d30:	0000006f          	j	80004d30 <uartputc_sync+0x40>

0000000080004d34 <uartstart>:
    80004d34:	ff010113          	addi	sp,sp,-16
    80004d38:	00813423          	sd	s0,8(sp)
    80004d3c:	01010413          	addi	s0,sp,16
    80004d40:	00002617          	auipc	a2,0x2
    80004d44:	66060613          	addi	a2,a2,1632 # 800073a0 <uart_tx_r>
    80004d48:	00002517          	auipc	a0,0x2
    80004d4c:	66050513          	addi	a0,a0,1632 # 800073a8 <uart_tx_w>
    80004d50:	00063783          	ld	a5,0(a2)
    80004d54:	00053703          	ld	a4,0(a0)
    80004d58:	04f70263          	beq	a4,a5,80004d9c <uartstart+0x68>
    80004d5c:	100005b7          	lui	a1,0x10000
    80004d60:	00004817          	auipc	a6,0x4
    80004d64:	8f080813          	addi	a6,a6,-1808 # 80008650 <uart_tx_buf>
    80004d68:	01c0006f          	j	80004d84 <uartstart+0x50>
    80004d6c:	0006c703          	lbu	a4,0(a3)
    80004d70:	00f63023          	sd	a5,0(a2)
    80004d74:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80004d78:	00063783          	ld	a5,0(a2)
    80004d7c:	00053703          	ld	a4,0(a0)
    80004d80:	00f70e63          	beq	a4,a5,80004d9c <uartstart+0x68>
    80004d84:	01f7f713          	andi	a4,a5,31
    80004d88:	00e806b3          	add	a3,a6,a4
    80004d8c:	0055c703          	lbu	a4,5(a1)
    80004d90:	00178793          	addi	a5,a5,1
    80004d94:	02077713          	andi	a4,a4,32
    80004d98:	fc071ae3          	bnez	a4,80004d6c <uartstart+0x38>
    80004d9c:	00813403          	ld	s0,8(sp)
    80004da0:	01010113          	addi	sp,sp,16
    80004da4:	00008067          	ret

0000000080004da8 <uartgetc>:
    80004da8:	ff010113          	addi	sp,sp,-16
    80004dac:	00813423          	sd	s0,8(sp)
    80004db0:	01010413          	addi	s0,sp,16
    80004db4:	10000737          	lui	a4,0x10000
    80004db8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80004dbc:	0017f793          	andi	a5,a5,1
    80004dc0:	00078c63          	beqz	a5,80004dd8 <uartgetc+0x30>
    80004dc4:	00074503          	lbu	a0,0(a4)
    80004dc8:	0ff57513          	andi	a0,a0,255
    80004dcc:	00813403          	ld	s0,8(sp)
    80004dd0:	01010113          	addi	sp,sp,16
    80004dd4:	00008067          	ret
    80004dd8:	fff00513          	li	a0,-1
    80004ddc:	ff1ff06f          	j	80004dcc <uartgetc+0x24>

0000000080004de0 <uartintr>:
    80004de0:	100007b7          	lui	a5,0x10000
    80004de4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80004de8:	0017f793          	andi	a5,a5,1
    80004dec:	0a078463          	beqz	a5,80004e94 <uartintr+0xb4>
    80004df0:	fe010113          	addi	sp,sp,-32
    80004df4:	00813823          	sd	s0,16(sp)
    80004df8:	00913423          	sd	s1,8(sp)
    80004dfc:	00113c23          	sd	ra,24(sp)
    80004e00:	02010413          	addi	s0,sp,32
    80004e04:	100004b7          	lui	s1,0x10000
    80004e08:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80004e0c:	0ff57513          	andi	a0,a0,255
    80004e10:	fffff097          	auipc	ra,0xfffff
    80004e14:	534080e7          	jalr	1332(ra) # 80004344 <consoleintr>
    80004e18:	0054c783          	lbu	a5,5(s1)
    80004e1c:	0017f793          	andi	a5,a5,1
    80004e20:	fe0794e3          	bnez	a5,80004e08 <uartintr+0x28>
    80004e24:	00002617          	auipc	a2,0x2
    80004e28:	57c60613          	addi	a2,a2,1404 # 800073a0 <uart_tx_r>
    80004e2c:	00002517          	auipc	a0,0x2
    80004e30:	57c50513          	addi	a0,a0,1404 # 800073a8 <uart_tx_w>
    80004e34:	00063783          	ld	a5,0(a2)
    80004e38:	00053703          	ld	a4,0(a0)
    80004e3c:	04f70263          	beq	a4,a5,80004e80 <uartintr+0xa0>
    80004e40:	100005b7          	lui	a1,0x10000
    80004e44:	00004817          	auipc	a6,0x4
    80004e48:	80c80813          	addi	a6,a6,-2036 # 80008650 <uart_tx_buf>
    80004e4c:	01c0006f          	j	80004e68 <uartintr+0x88>
    80004e50:	0006c703          	lbu	a4,0(a3)
    80004e54:	00f63023          	sd	a5,0(a2)
    80004e58:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80004e5c:	00063783          	ld	a5,0(a2)
    80004e60:	00053703          	ld	a4,0(a0)
    80004e64:	00f70e63          	beq	a4,a5,80004e80 <uartintr+0xa0>
    80004e68:	01f7f713          	andi	a4,a5,31
    80004e6c:	00e806b3          	add	a3,a6,a4
    80004e70:	0055c703          	lbu	a4,5(a1)
    80004e74:	00178793          	addi	a5,a5,1
    80004e78:	02077713          	andi	a4,a4,32
    80004e7c:	fc071ae3          	bnez	a4,80004e50 <uartintr+0x70>
    80004e80:	01813083          	ld	ra,24(sp)
    80004e84:	01013403          	ld	s0,16(sp)
    80004e88:	00813483          	ld	s1,8(sp)
    80004e8c:	02010113          	addi	sp,sp,32
    80004e90:	00008067          	ret
    80004e94:	00002617          	auipc	a2,0x2
    80004e98:	50c60613          	addi	a2,a2,1292 # 800073a0 <uart_tx_r>
    80004e9c:	00002517          	auipc	a0,0x2
    80004ea0:	50c50513          	addi	a0,a0,1292 # 800073a8 <uart_tx_w>
    80004ea4:	00063783          	ld	a5,0(a2)
    80004ea8:	00053703          	ld	a4,0(a0)
    80004eac:	04f70263          	beq	a4,a5,80004ef0 <uartintr+0x110>
    80004eb0:	100005b7          	lui	a1,0x10000
    80004eb4:	00003817          	auipc	a6,0x3
    80004eb8:	79c80813          	addi	a6,a6,1948 # 80008650 <uart_tx_buf>
    80004ebc:	01c0006f          	j	80004ed8 <uartintr+0xf8>
    80004ec0:	0006c703          	lbu	a4,0(a3)
    80004ec4:	00f63023          	sd	a5,0(a2)
    80004ec8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80004ecc:	00063783          	ld	a5,0(a2)
    80004ed0:	00053703          	ld	a4,0(a0)
    80004ed4:	02f70063          	beq	a4,a5,80004ef4 <uartintr+0x114>
    80004ed8:	01f7f713          	andi	a4,a5,31
    80004edc:	00e806b3          	add	a3,a6,a4
    80004ee0:	0055c703          	lbu	a4,5(a1)
    80004ee4:	00178793          	addi	a5,a5,1
    80004ee8:	02077713          	andi	a4,a4,32
    80004eec:	fc071ae3          	bnez	a4,80004ec0 <uartintr+0xe0>
    80004ef0:	00008067          	ret
    80004ef4:	00008067          	ret

0000000080004ef8 <kinit>:
    80004ef8:	fc010113          	addi	sp,sp,-64
    80004efc:	02913423          	sd	s1,40(sp)
    80004f00:	fffff7b7          	lui	a5,0xfffff
    80004f04:	00004497          	auipc	s1,0x4
    80004f08:	76b48493          	addi	s1,s1,1899 # 8000966f <end+0xfff>
    80004f0c:	02813823          	sd	s0,48(sp)
    80004f10:	01313c23          	sd	s3,24(sp)
    80004f14:	00f4f4b3          	and	s1,s1,a5
    80004f18:	02113c23          	sd	ra,56(sp)
    80004f1c:	03213023          	sd	s2,32(sp)
    80004f20:	01413823          	sd	s4,16(sp)
    80004f24:	01513423          	sd	s5,8(sp)
    80004f28:	04010413          	addi	s0,sp,64
    80004f2c:	000017b7          	lui	a5,0x1
    80004f30:	01100993          	li	s3,17
    80004f34:	00f487b3          	add	a5,s1,a5
    80004f38:	01b99993          	slli	s3,s3,0x1b
    80004f3c:	06f9e063          	bltu	s3,a5,80004f9c <kinit+0xa4>
    80004f40:	00003a97          	auipc	s5,0x3
    80004f44:	730a8a93          	addi	s5,s5,1840 # 80008670 <end>
    80004f48:	0754ec63          	bltu	s1,s5,80004fc0 <kinit+0xc8>
    80004f4c:	0734fa63          	bgeu	s1,s3,80004fc0 <kinit+0xc8>
    80004f50:	00088a37          	lui	s4,0x88
    80004f54:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80004f58:	00002917          	auipc	s2,0x2
    80004f5c:	45890913          	addi	s2,s2,1112 # 800073b0 <kmem>
    80004f60:	00ca1a13          	slli	s4,s4,0xc
    80004f64:	0140006f          	j	80004f78 <kinit+0x80>
    80004f68:	000017b7          	lui	a5,0x1
    80004f6c:	00f484b3          	add	s1,s1,a5
    80004f70:	0554e863          	bltu	s1,s5,80004fc0 <kinit+0xc8>
    80004f74:	0534f663          	bgeu	s1,s3,80004fc0 <kinit+0xc8>
    80004f78:	00001637          	lui	a2,0x1
    80004f7c:	00100593          	li	a1,1
    80004f80:	00048513          	mv	a0,s1
    80004f84:	00000097          	auipc	ra,0x0
    80004f88:	5e4080e7          	jalr	1508(ra) # 80005568 <__memset>
    80004f8c:	00093783          	ld	a5,0(s2)
    80004f90:	00f4b023          	sd	a5,0(s1)
    80004f94:	00993023          	sd	s1,0(s2)
    80004f98:	fd4498e3          	bne	s1,s4,80004f68 <kinit+0x70>
    80004f9c:	03813083          	ld	ra,56(sp)
    80004fa0:	03013403          	ld	s0,48(sp)
    80004fa4:	02813483          	ld	s1,40(sp)
    80004fa8:	02013903          	ld	s2,32(sp)
    80004fac:	01813983          	ld	s3,24(sp)
    80004fb0:	01013a03          	ld	s4,16(sp)
    80004fb4:	00813a83          	ld	s5,8(sp)
    80004fb8:	04010113          	addi	sp,sp,64
    80004fbc:	00008067          	ret
    80004fc0:	00001517          	auipc	a0,0x1
    80004fc4:	4b850513          	addi	a0,a0,1208 # 80006478 <digits+0x18>
    80004fc8:	fffff097          	auipc	ra,0xfffff
    80004fcc:	4b4080e7          	jalr	1204(ra) # 8000447c <panic>

0000000080004fd0 <freerange>:
    80004fd0:	fc010113          	addi	sp,sp,-64
    80004fd4:	000017b7          	lui	a5,0x1
    80004fd8:	02913423          	sd	s1,40(sp)
    80004fdc:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80004fe0:	009504b3          	add	s1,a0,s1
    80004fe4:	fffff537          	lui	a0,0xfffff
    80004fe8:	02813823          	sd	s0,48(sp)
    80004fec:	02113c23          	sd	ra,56(sp)
    80004ff0:	03213023          	sd	s2,32(sp)
    80004ff4:	01313c23          	sd	s3,24(sp)
    80004ff8:	01413823          	sd	s4,16(sp)
    80004ffc:	01513423          	sd	s5,8(sp)
    80005000:	01613023          	sd	s6,0(sp)
    80005004:	04010413          	addi	s0,sp,64
    80005008:	00a4f4b3          	and	s1,s1,a0
    8000500c:	00f487b3          	add	a5,s1,a5
    80005010:	06f5e463          	bltu	a1,a5,80005078 <freerange+0xa8>
    80005014:	00003a97          	auipc	s5,0x3
    80005018:	65ca8a93          	addi	s5,s5,1628 # 80008670 <end>
    8000501c:	0954e263          	bltu	s1,s5,800050a0 <freerange+0xd0>
    80005020:	01100993          	li	s3,17
    80005024:	01b99993          	slli	s3,s3,0x1b
    80005028:	0734fc63          	bgeu	s1,s3,800050a0 <freerange+0xd0>
    8000502c:	00058a13          	mv	s4,a1
    80005030:	00002917          	auipc	s2,0x2
    80005034:	38090913          	addi	s2,s2,896 # 800073b0 <kmem>
    80005038:	00002b37          	lui	s6,0x2
    8000503c:	0140006f          	j	80005050 <freerange+0x80>
    80005040:	000017b7          	lui	a5,0x1
    80005044:	00f484b3          	add	s1,s1,a5
    80005048:	0554ec63          	bltu	s1,s5,800050a0 <freerange+0xd0>
    8000504c:	0534fa63          	bgeu	s1,s3,800050a0 <freerange+0xd0>
    80005050:	00001637          	lui	a2,0x1
    80005054:	00100593          	li	a1,1
    80005058:	00048513          	mv	a0,s1
    8000505c:	00000097          	auipc	ra,0x0
    80005060:	50c080e7          	jalr	1292(ra) # 80005568 <__memset>
    80005064:	00093703          	ld	a4,0(s2)
    80005068:	016487b3          	add	a5,s1,s6
    8000506c:	00e4b023          	sd	a4,0(s1)
    80005070:	00993023          	sd	s1,0(s2)
    80005074:	fcfa76e3          	bgeu	s4,a5,80005040 <freerange+0x70>
    80005078:	03813083          	ld	ra,56(sp)
    8000507c:	03013403          	ld	s0,48(sp)
    80005080:	02813483          	ld	s1,40(sp)
    80005084:	02013903          	ld	s2,32(sp)
    80005088:	01813983          	ld	s3,24(sp)
    8000508c:	01013a03          	ld	s4,16(sp)
    80005090:	00813a83          	ld	s5,8(sp)
    80005094:	00013b03          	ld	s6,0(sp)
    80005098:	04010113          	addi	sp,sp,64
    8000509c:	00008067          	ret
    800050a0:	00001517          	auipc	a0,0x1
    800050a4:	3d850513          	addi	a0,a0,984 # 80006478 <digits+0x18>
    800050a8:	fffff097          	auipc	ra,0xfffff
    800050ac:	3d4080e7          	jalr	980(ra) # 8000447c <panic>

00000000800050b0 <kfree>:
    800050b0:	fe010113          	addi	sp,sp,-32
    800050b4:	00813823          	sd	s0,16(sp)
    800050b8:	00113c23          	sd	ra,24(sp)
    800050bc:	00913423          	sd	s1,8(sp)
    800050c0:	02010413          	addi	s0,sp,32
    800050c4:	03451793          	slli	a5,a0,0x34
    800050c8:	04079c63          	bnez	a5,80005120 <kfree+0x70>
    800050cc:	00003797          	auipc	a5,0x3
    800050d0:	5a478793          	addi	a5,a5,1444 # 80008670 <end>
    800050d4:	00050493          	mv	s1,a0
    800050d8:	04f56463          	bltu	a0,a5,80005120 <kfree+0x70>
    800050dc:	01100793          	li	a5,17
    800050e0:	01b79793          	slli	a5,a5,0x1b
    800050e4:	02f57e63          	bgeu	a0,a5,80005120 <kfree+0x70>
    800050e8:	00001637          	lui	a2,0x1
    800050ec:	00100593          	li	a1,1
    800050f0:	00000097          	auipc	ra,0x0
    800050f4:	478080e7          	jalr	1144(ra) # 80005568 <__memset>
    800050f8:	00002797          	auipc	a5,0x2
    800050fc:	2b878793          	addi	a5,a5,696 # 800073b0 <kmem>
    80005100:	0007b703          	ld	a4,0(a5)
    80005104:	01813083          	ld	ra,24(sp)
    80005108:	01013403          	ld	s0,16(sp)
    8000510c:	00e4b023          	sd	a4,0(s1)
    80005110:	0097b023          	sd	s1,0(a5)
    80005114:	00813483          	ld	s1,8(sp)
    80005118:	02010113          	addi	sp,sp,32
    8000511c:	00008067          	ret
    80005120:	00001517          	auipc	a0,0x1
    80005124:	35850513          	addi	a0,a0,856 # 80006478 <digits+0x18>
    80005128:	fffff097          	auipc	ra,0xfffff
    8000512c:	354080e7          	jalr	852(ra) # 8000447c <panic>

0000000080005130 <kalloc>:
    80005130:	fe010113          	addi	sp,sp,-32
    80005134:	00813823          	sd	s0,16(sp)
    80005138:	00913423          	sd	s1,8(sp)
    8000513c:	00113c23          	sd	ra,24(sp)
    80005140:	02010413          	addi	s0,sp,32
    80005144:	00002797          	auipc	a5,0x2
    80005148:	26c78793          	addi	a5,a5,620 # 800073b0 <kmem>
    8000514c:	0007b483          	ld	s1,0(a5)
    80005150:	02048063          	beqz	s1,80005170 <kalloc+0x40>
    80005154:	0004b703          	ld	a4,0(s1)
    80005158:	00001637          	lui	a2,0x1
    8000515c:	00500593          	li	a1,5
    80005160:	00048513          	mv	a0,s1
    80005164:	00e7b023          	sd	a4,0(a5)
    80005168:	00000097          	auipc	ra,0x0
    8000516c:	400080e7          	jalr	1024(ra) # 80005568 <__memset>
    80005170:	01813083          	ld	ra,24(sp)
    80005174:	01013403          	ld	s0,16(sp)
    80005178:	00048513          	mv	a0,s1
    8000517c:	00813483          	ld	s1,8(sp)
    80005180:	02010113          	addi	sp,sp,32
    80005184:	00008067          	ret

0000000080005188 <initlock>:
    80005188:	ff010113          	addi	sp,sp,-16
    8000518c:	00813423          	sd	s0,8(sp)
    80005190:	01010413          	addi	s0,sp,16
    80005194:	00813403          	ld	s0,8(sp)
    80005198:	00b53423          	sd	a1,8(a0)
    8000519c:	00052023          	sw	zero,0(a0)
    800051a0:	00053823          	sd	zero,16(a0)
    800051a4:	01010113          	addi	sp,sp,16
    800051a8:	00008067          	ret

00000000800051ac <acquire>:
    800051ac:	fe010113          	addi	sp,sp,-32
    800051b0:	00813823          	sd	s0,16(sp)
    800051b4:	00913423          	sd	s1,8(sp)
    800051b8:	00113c23          	sd	ra,24(sp)
    800051bc:	01213023          	sd	s2,0(sp)
    800051c0:	02010413          	addi	s0,sp,32
    800051c4:	00050493          	mv	s1,a0
    800051c8:	10002973          	csrr	s2,sstatus
    800051cc:	100027f3          	csrr	a5,sstatus
    800051d0:	ffd7f793          	andi	a5,a5,-3
    800051d4:	10079073          	csrw	sstatus,a5
    800051d8:	fffff097          	auipc	ra,0xfffff
    800051dc:	8e8080e7          	jalr	-1816(ra) # 80003ac0 <mycpu>
    800051e0:	07852783          	lw	a5,120(a0)
    800051e4:	06078e63          	beqz	a5,80005260 <acquire+0xb4>
    800051e8:	fffff097          	auipc	ra,0xfffff
    800051ec:	8d8080e7          	jalr	-1832(ra) # 80003ac0 <mycpu>
    800051f0:	07852783          	lw	a5,120(a0)
    800051f4:	0004a703          	lw	a4,0(s1)
    800051f8:	0017879b          	addiw	a5,a5,1
    800051fc:	06f52c23          	sw	a5,120(a0)
    80005200:	04071063          	bnez	a4,80005240 <acquire+0x94>
    80005204:	00100713          	li	a4,1
    80005208:	00070793          	mv	a5,a4
    8000520c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80005210:	0007879b          	sext.w	a5,a5
    80005214:	fe079ae3          	bnez	a5,80005208 <acquire+0x5c>
    80005218:	0ff0000f          	fence
    8000521c:	fffff097          	auipc	ra,0xfffff
    80005220:	8a4080e7          	jalr	-1884(ra) # 80003ac0 <mycpu>
    80005224:	01813083          	ld	ra,24(sp)
    80005228:	01013403          	ld	s0,16(sp)
    8000522c:	00a4b823          	sd	a0,16(s1)
    80005230:	00013903          	ld	s2,0(sp)
    80005234:	00813483          	ld	s1,8(sp)
    80005238:	02010113          	addi	sp,sp,32
    8000523c:	00008067          	ret
    80005240:	0104b903          	ld	s2,16(s1)
    80005244:	fffff097          	auipc	ra,0xfffff
    80005248:	87c080e7          	jalr	-1924(ra) # 80003ac0 <mycpu>
    8000524c:	faa91ce3          	bne	s2,a0,80005204 <acquire+0x58>
    80005250:	00001517          	auipc	a0,0x1
    80005254:	23050513          	addi	a0,a0,560 # 80006480 <digits+0x20>
    80005258:	fffff097          	auipc	ra,0xfffff
    8000525c:	224080e7          	jalr	548(ra) # 8000447c <panic>
    80005260:	00195913          	srli	s2,s2,0x1
    80005264:	fffff097          	auipc	ra,0xfffff
    80005268:	85c080e7          	jalr	-1956(ra) # 80003ac0 <mycpu>
    8000526c:	00197913          	andi	s2,s2,1
    80005270:	07252e23          	sw	s2,124(a0)
    80005274:	f75ff06f          	j	800051e8 <acquire+0x3c>

0000000080005278 <release>:
    80005278:	fe010113          	addi	sp,sp,-32
    8000527c:	00813823          	sd	s0,16(sp)
    80005280:	00113c23          	sd	ra,24(sp)
    80005284:	00913423          	sd	s1,8(sp)
    80005288:	01213023          	sd	s2,0(sp)
    8000528c:	02010413          	addi	s0,sp,32
    80005290:	00052783          	lw	a5,0(a0)
    80005294:	00079a63          	bnez	a5,800052a8 <release+0x30>
    80005298:	00001517          	auipc	a0,0x1
    8000529c:	1f050513          	addi	a0,a0,496 # 80006488 <digits+0x28>
    800052a0:	fffff097          	auipc	ra,0xfffff
    800052a4:	1dc080e7          	jalr	476(ra) # 8000447c <panic>
    800052a8:	01053903          	ld	s2,16(a0)
    800052ac:	00050493          	mv	s1,a0
    800052b0:	fffff097          	auipc	ra,0xfffff
    800052b4:	810080e7          	jalr	-2032(ra) # 80003ac0 <mycpu>
    800052b8:	fea910e3          	bne	s2,a0,80005298 <release+0x20>
    800052bc:	0004b823          	sd	zero,16(s1)
    800052c0:	0ff0000f          	fence
    800052c4:	0f50000f          	fence	iorw,ow
    800052c8:	0804a02f          	amoswap.w	zero,zero,(s1)
    800052cc:	ffffe097          	auipc	ra,0xffffe
    800052d0:	7f4080e7          	jalr	2036(ra) # 80003ac0 <mycpu>
    800052d4:	100027f3          	csrr	a5,sstatus
    800052d8:	0027f793          	andi	a5,a5,2
    800052dc:	04079a63          	bnez	a5,80005330 <release+0xb8>
    800052e0:	07852783          	lw	a5,120(a0)
    800052e4:	02f05e63          	blez	a5,80005320 <release+0xa8>
    800052e8:	fff7871b          	addiw	a4,a5,-1
    800052ec:	06e52c23          	sw	a4,120(a0)
    800052f0:	00071c63          	bnez	a4,80005308 <release+0x90>
    800052f4:	07c52783          	lw	a5,124(a0)
    800052f8:	00078863          	beqz	a5,80005308 <release+0x90>
    800052fc:	100027f3          	csrr	a5,sstatus
    80005300:	0027e793          	ori	a5,a5,2
    80005304:	10079073          	csrw	sstatus,a5
    80005308:	01813083          	ld	ra,24(sp)
    8000530c:	01013403          	ld	s0,16(sp)
    80005310:	00813483          	ld	s1,8(sp)
    80005314:	00013903          	ld	s2,0(sp)
    80005318:	02010113          	addi	sp,sp,32
    8000531c:	00008067          	ret
    80005320:	00001517          	auipc	a0,0x1
    80005324:	18850513          	addi	a0,a0,392 # 800064a8 <digits+0x48>
    80005328:	fffff097          	auipc	ra,0xfffff
    8000532c:	154080e7          	jalr	340(ra) # 8000447c <panic>
    80005330:	00001517          	auipc	a0,0x1
    80005334:	16050513          	addi	a0,a0,352 # 80006490 <digits+0x30>
    80005338:	fffff097          	auipc	ra,0xfffff
    8000533c:	144080e7          	jalr	324(ra) # 8000447c <panic>

0000000080005340 <holding>:
    80005340:	00052783          	lw	a5,0(a0)
    80005344:	00079663          	bnez	a5,80005350 <holding+0x10>
    80005348:	00000513          	li	a0,0
    8000534c:	00008067          	ret
    80005350:	fe010113          	addi	sp,sp,-32
    80005354:	00813823          	sd	s0,16(sp)
    80005358:	00913423          	sd	s1,8(sp)
    8000535c:	00113c23          	sd	ra,24(sp)
    80005360:	02010413          	addi	s0,sp,32
    80005364:	01053483          	ld	s1,16(a0)
    80005368:	ffffe097          	auipc	ra,0xffffe
    8000536c:	758080e7          	jalr	1880(ra) # 80003ac0 <mycpu>
    80005370:	01813083          	ld	ra,24(sp)
    80005374:	01013403          	ld	s0,16(sp)
    80005378:	40a48533          	sub	a0,s1,a0
    8000537c:	00153513          	seqz	a0,a0
    80005380:	00813483          	ld	s1,8(sp)
    80005384:	02010113          	addi	sp,sp,32
    80005388:	00008067          	ret

000000008000538c <push_off>:
    8000538c:	fe010113          	addi	sp,sp,-32
    80005390:	00813823          	sd	s0,16(sp)
    80005394:	00113c23          	sd	ra,24(sp)
    80005398:	00913423          	sd	s1,8(sp)
    8000539c:	02010413          	addi	s0,sp,32
    800053a0:	100024f3          	csrr	s1,sstatus
    800053a4:	100027f3          	csrr	a5,sstatus
    800053a8:	ffd7f793          	andi	a5,a5,-3
    800053ac:	10079073          	csrw	sstatus,a5
    800053b0:	ffffe097          	auipc	ra,0xffffe
    800053b4:	710080e7          	jalr	1808(ra) # 80003ac0 <mycpu>
    800053b8:	07852783          	lw	a5,120(a0)
    800053bc:	02078663          	beqz	a5,800053e8 <push_off+0x5c>
    800053c0:	ffffe097          	auipc	ra,0xffffe
    800053c4:	700080e7          	jalr	1792(ra) # 80003ac0 <mycpu>
    800053c8:	07852783          	lw	a5,120(a0)
    800053cc:	01813083          	ld	ra,24(sp)
    800053d0:	01013403          	ld	s0,16(sp)
    800053d4:	0017879b          	addiw	a5,a5,1
    800053d8:	06f52c23          	sw	a5,120(a0)
    800053dc:	00813483          	ld	s1,8(sp)
    800053e0:	02010113          	addi	sp,sp,32
    800053e4:	00008067          	ret
    800053e8:	0014d493          	srli	s1,s1,0x1
    800053ec:	ffffe097          	auipc	ra,0xffffe
    800053f0:	6d4080e7          	jalr	1748(ra) # 80003ac0 <mycpu>
    800053f4:	0014f493          	andi	s1,s1,1
    800053f8:	06952e23          	sw	s1,124(a0)
    800053fc:	fc5ff06f          	j	800053c0 <push_off+0x34>

0000000080005400 <pop_off>:
    80005400:	ff010113          	addi	sp,sp,-16
    80005404:	00813023          	sd	s0,0(sp)
    80005408:	00113423          	sd	ra,8(sp)
    8000540c:	01010413          	addi	s0,sp,16
    80005410:	ffffe097          	auipc	ra,0xffffe
    80005414:	6b0080e7          	jalr	1712(ra) # 80003ac0 <mycpu>
    80005418:	100027f3          	csrr	a5,sstatus
    8000541c:	0027f793          	andi	a5,a5,2
    80005420:	04079663          	bnez	a5,8000546c <pop_off+0x6c>
    80005424:	07852783          	lw	a5,120(a0)
    80005428:	02f05a63          	blez	a5,8000545c <pop_off+0x5c>
    8000542c:	fff7871b          	addiw	a4,a5,-1
    80005430:	06e52c23          	sw	a4,120(a0)
    80005434:	00071c63          	bnez	a4,8000544c <pop_off+0x4c>
    80005438:	07c52783          	lw	a5,124(a0)
    8000543c:	00078863          	beqz	a5,8000544c <pop_off+0x4c>
    80005440:	100027f3          	csrr	a5,sstatus
    80005444:	0027e793          	ori	a5,a5,2
    80005448:	10079073          	csrw	sstatus,a5
    8000544c:	00813083          	ld	ra,8(sp)
    80005450:	00013403          	ld	s0,0(sp)
    80005454:	01010113          	addi	sp,sp,16
    80005458:	00008067          	ret
    8000545c:	00001517          	auipc	a0,0x1
    80005460:	04c50513          	addi	a0,a0,76 # 800064a8 <digits+0x48>
    80005464:	fffff097          	auipc	ra,0xfffff
    80005468:	018080e7          	jalr	24(ra) # 8000447c <panic>
    8000546c:	00001517          	auipc	a0,0x1
    80005470:	02450513          	addi	a0,a0,36 # 80006490 <digits+0x30>
    80005474:	fffff097          	auipc	ra,0xfffff
    80005478:	008080e7          	jalr	8(ra) # 8000447c <panic>

000000008000547c <push_on>:
    8000547c:	fe010113          	addi	sp,sp,-32
    80005480:	00813823          	sd	s0,16(sp)
    80005484:	00113c23          	sd	ra,24(sp)
    80005488:	00913423          	sd	s1,8(sp)
    8000548c:	02010413          	addi	s0,sp,32
    80005490:	100024f3          	csrr	s1,sstatus
    80005494:	100027f3          	csrr	a5,sstatus
    80005498:	0027e793          	ori	a5,a5,2
    8000549c:	10079073          	csrw	sstatus,a5
    800054a0:	ffffe097          	auipc	ra,0xffffe
    800054a4:	620080e7          	jalr	1568(ra) # 80003ac0 <mycpu>
    800054a8:	07852783          	lw	a5,120(a0)
    800054ac:	02078663          	beqz	a5,800054d8 <push_on+0x5c>
    800054b0:	ffffe097          	auipc	ra,0xffffe
    800054b4:	610080e7          	jalr	1552(ra) # 80003ac0 <mycpu>
    800054b8:	07852783          	lw	a5,120(a0)
    800054bc:	01813083          	ld	ra,24(sp)
    800054c0:	01013403          	ld	s0,16(sp)
    800054c4:	0017879b          	addiw	a5,a5,1
    800054c8:	06f52c23          	sw	a5,120(a0)
    800054cc:	00813483          	ld	s1,8(sp)
    800054d0:	02010113          	addi	sp,sp,32
    800054d4:	00008067          	ret
    800054d8:	0014d493          	srli	s1,s1,0x1
    800054dc:	ffffe097          	auipc	ra,0xffffe
    800054e0:	5e4080e7          	jalr	1508(ra) # 80003ac0 <mycpu>
    800054e4:	0014f493          	andi	s1,s1,1
    800054e8:	06952e23          	sw	s1,124(a0)
    800054ec:	fc5ff06f          	j	800054b0 <push_on+0x34>

00000000800054f0 <pop_on>:
    800054f0:	ff010113          	addi	sp,sp,-16
    800054f4:	00813023          	sd	s0,0(sp)
    800054f8:	00113423          	sd	ra,8(sp)
    800054fc:	01010413          	addi	s0,sp,16
    80005500:	ffffe097          	auipc	ra,0xffffe
    80005504:	5c0080e7          	jalr	1472(ra) # 80003ac0 <mycpu>
    80005508:	100027f3          	csrr	a5,sstatus
    8000550c:	0027f793          	andi	a5,a5,2
    80005510:	04078463          	beqz	a5,80005558 <pop_on+0x68>
    80005514:	07852783          	lw	a5,120(a0)
    80005518:	02f05863          	blez	a5,80005548 <pop_on+0x58>
    8000551c:	fff7879b          	addiw	a5,a5,-1
    80005520:	06f52c23          	sw	a5,120(a0)
    80005524:	07853783          	ld	a5,120(a0)
    80005528:	00079863          	bnez	a5,80005538 <pop_on+0x48>
    8000552c:	100027f3          	csrr	a5,sstatus
    80005530:	ffd7f793          	andi	a5,a5,-3
    80005534:	10079073          	csrw	sstatus,a5
    80005538:	00813083          	ld	ra,8(sp)
    8000553c:	00013403          	ld	s0,0(sp)
    80005540:	01010113          	addi	sp,sp,16
    80005544:	00008067          	ret
    80005548:	00001517          	auipc	a0,0x1
    8000554c:	f8850513          	addi	a0,a0,-120 # 800064d0 <digits+0x70>
    80005550:	fffff097          	auipc	ra,0xfffff
    80005554:	f2c080e7          	jalr	-212(ra) # 8000447c <panic>
    80005558:	00001517          	auipc	a0,0x1
    8000555c:	f5850513          	addi	a0,a0,-168 # 800064b0 <digits+0x50>
    80005560:	fffff097          	auipc	ra,0xfffff
    80005564:	f1c080e7          	jalr	-228(ra) # 8000447c <panic>

0000000080005568 <__memset>:
    80005568:	ff010113          	addi	sp,sp,-16
    8000556c:	00813423          	sd	s0,8(sp)
    80005570:	01010413          	addi	s0,sp,16
    80005574:	1a060e63          	beqz	a2,80005730 <__memset+0x1c8>
    80005578:	40a007b3          	neg	a5,a0
    8000557c:	0077f793          	andi	a5,a5,7
    80005580:	00778693          	addi	a3,a5,7
    80005584:	00b00813          	li	a6,11
    80005588:	0ff5f593          	andi	a1,a1,255
    8000558c:	fff6071b          	addiw	a4,a2,-1
    80005590:	1b06e663          	bltu	a3,a6,8000573c <__memset+0x1d4>
    80005594:	1cd76463          	bltu	a4,a3,8000575c <__memset+0x1f4>
    80005598:	1a078e63          	beqz	a5,80005754 <__memset+0x1ec>
    8000559c:	00b50023          	sb	a1,0(a0)
    800055a0:	00100713          	li	a4,1
    800055a4:	1ae78463          	beq	a5,a4,8000574c <__memset+0x1e4>
    800055a8:	00b500a3          	sb	a1,1(a0)
    800055ac:	00200713          	li	a4,2
    800055b0:	1ae78a63          	beq	a5,a4,80005764 <__memset+0x1fc>
    800055b4:	00b50123          	sb	a1,2(a0)
    800055b8:	00300713          	li	a4,3
    800055bc:	18e78463          	beq	a5,a4,80005744 <__memset+0x1dc>
    800055c0:	00b501a3          	sb	a1,3(a0)
    800055c4:	00400713          	li	a4,4
    800055c8:	1ae78263          	beq	a5,a4,8000576c <__memset+0x204>
    800055cc:	00b50223          	sb	a1,4(a0)
    800055d0:	00500713          	li	a4,5
    800055d4:	1ae78063          	beq	a5,a4,80005774 <__memset+0x20c>
    800055d8:	00b502a3          	sb	a1,5(a0)
    800055dc:	00700713          	li	a4,7
    800055e0:	18e79e63          	bne	a5,a4,8000577c <__memset+0x214>
    800055e4:	00b50323          	sb	a1,6(a0)
    800055e8:	00700e93          	li	t4,7
    800055ec:	00859713          	slli	a4,a1,0x8
    800055f0:	00e5e733          	or	a4,a1,a4
    800055f4:	01059e13          	slli	t3,a1,0x10
    800055f8:	01c76e33          	or	t3,a4,t3
    800055fc:	01859313          	slli	t1,a1,0x18
    80005600:	006e6333          	or	t1,t3,t1
    80005604:	02059893          	slli	a7,a1,0x20
    80005608:	40f60e3b          	subw	t3,a2,a5
    8000560c:	011368b3          	or	a7,t1,a7
    80005610:	02859813          	slli	a6,a1,0x28
    80005614:	0108e833          	or	a6,a7,a6
    80005618:	03059693          	slli	a3,a1,0x30
    8000561c:	003e589b          	srliw	a7,t3,0x3
    80005620:	00d866b3          	or	a3,a6,a3
    80005624:	03859713          	slli	a4,a1,0x38
    80005628:	00389813          	slli	a6,a7,0x3
    8000562c:	00f507b3          	add	a5,a0,a5
    80005630:	00e6e733          	or	a4,a3,a4
    80005634:	000e089b          	sext.w	a7,t3
    80005638:	00f806b3          	add	a3,a6,a5
    8000563c:	00e7b023          	sd	a4,0(a5)
    80005640:	00878793          	addi	a5,a5,8
    80005644:	fed79ce3          	bne	a5,a3,8000563c <__memset+0xd4>
    80005648:	ff8e7793          	andi	a5,t3,-8
    8000564c:	0007871b          	sext.w	a4,a5
    80005650:	01d787bb          	addw	a5,a5,t4
    80005654:	0ce88e63          	beq	a7,a4,80005730 <__memset+0x1c8>
    80005658:	00f50733          	add	a4,a0,a5
    8000565c:	00b70023          	sb	a1,0(a4)
    80005660:	0017871b          	addiw	a4,a5,1
    80005664:	0cc77663          	bgeu	a4,a2,80005730 <__memset+0x1c8>
    80005668:	00e50733          	add	a4,a0,a4
    8000566c:	00b70023          	sb	a1,0(a4)
    80005670:	0027871b          	addiw	a4,a5,2
    80005674:	0ac77e63          	bgeu	a4,a2,80005730 <__memset+0x1c8>
    80005678:	00e50733          	add	a4,a0,a4
    8000567c:	00b70023          	sb	a1,0(a4)
    80005680:	0037871b          	addiw	a4,a5,3
    80005684:	0ac77663          	bgeu	a4,a2,80005730 <__memset+0x1c8>
    80005688:	00e50733          	add	a4,a0,a4
    8000568c:	00b70023          	sb	a1,0(a4)
    80005690:	0047871b          	addiw	a4,a5,4
    80005694:	08c77e63          	bgeu	a4,a2,80005730 <__memset+0x1c8>
    80005698:	00e50733          	add	a4,a0,a4
    8000569c:	00b70023          	sb	a1,0(a4)
    800056a0:	0057871b          	addiw	a4,a5,5
    800056a4:	08c77663          	bgeu	a4,a2,80005730 <__memset+0x1c8>
    800056a8:	00e50733          	add	a4,a0,a4
    800056ac:	00b70023          	sb	a1,0(a4)
    800056b0:	0067871b          	addiw	a4,a5,6
    800056b4:	06c77e63          	bgeu	a4,a2,80005730 <__memset+0x1c8>
    800056b8:	00e50733          	add	a4,a0,a4
    800056bc:	00b70023          	sb	a1,0(a4)
    800056c0:	0077871b          	addiw	a4,a5,7
    800056c4:	06c77663          	bgeu	a4,a2,80005730 <__memset+0x1c8>
    800056c8:	00e50733          	add	a4,a0,a4
    800056cc:	00b70023          	sb	a1,0(a4)
    800056d0:	0087871b          	addiw	a4,a5,8
    800056d4:	04c77e63          	bgeu	a4,a2,80005730 <__memset+0x1c8>
    800056d8:	00e50733          	add	a4,a0,a4
    800056dc:	00b70023          	sb	a1,0(a4)
    800056e0:	0097871b          	addiw	a4,a5,9
    800056e4:	04c77663          	bgeu	a4,a2,80005730 <__memset+0x1c8>
    800056e8:	00e50733          	add	a4,a0,a4
    800056ec:	00b70023          	sb	a1,0(a4)
    800056f0:	00a7871b          	addiw	a4,a5,10
    800056f4:	02c77e63          	bgeu	a4,a2,80005730 <__memset+0x1c8>
    800056f8:	00e50733          	add	a4,a0,a4
    800056fc:	00b70023          	sb	a1,0(a4)
    80005700:	00b7871b          	addiw	a4,a5,11
    80005704:	02c77663          	bgeu	a4,a2,80005730 <__memset+0x1c8>
    80005708:	00e50733          	add	a4,a0,a4
    8000570c:	00b70023          	sb	a1,0(a4)
    80005710:	00c7871b          	addiw	a4,a5,12
    80005714:	00c77e63          	bgeu	a4,a2,80005730 <__memset+0x1c8>
    80005718:	00e50733          	add	a4,a0,a4
    8000571c:	00b70023          	sb	a1,0(a4)
    80005720:	00d7879b          	addiw	a5,a5,13
    80005724:	00c7f663          	bgeu	a5,a2,80005730 <__memset+0x1c8>
    80005728:	00f507b3          	add	a5,a0,a5
    8000572c:	00b78023          	sb	a1,0(a5)
    80005730:	00813403          	ld	s0,8(sp)
    80005734:	01010113          	addi	sp,sp,16
    80005738:	00008067          	ret
    8000573c:	00b00693          	li	a3,11
    80005740:	e55ff06f          	j	80005594 <__memset+0x2c>
    80005744:	00300e93          	li	t4,3
    80005748:	ea5ff06f          	j	800055ec <__memset+0x84>
    8000574c:	00100e93          	li	t4,1
    80005750:	e9dff06f          	j	800055ec <__memset+0x84>
    80005754:	00000e93          	li	t4,0
    80005758:	e95ff06f          	j	800055ec <__memset+0x84>
    8000575c:	00000793          	li	a5,0
    80005760:	ef9ff06f          	j	80005658 <__memset+0xf0>
    80005764:	00200e93          	li	t4,2
    80005768:	e85ff06f          	j	800055ec <__memset+0x84>
    8000576c:	00400e93          	li	t4,4
    80005770:	e7dff06f          	j	800055ec <__memset+0x84>
    80005774:	00500e93          	li	t4,5
    80005778:	e75ff06f          	j	800055ec <__memset+0x84>
    8000577c:	00600e93          	li	t4,6
    80005780:	e6dff06f          	j	800055ec <__memset+0x84>

0000000080005784 <__memmove>:
    80005784:	ff010113          	addi	sp,sp,-16
    80005788:	00813423          	sd	s0,8(sp)
    8000578c:	01010413          	addi	s0,sp,16
    80005790:	0e060863          	beqz	a2,80005880 <__memmove+0xfc>
    80005794:	fff6069b          	addiw	a3,a2,-1
    80005798:	0006881b          	sext.w	a6,a3
    8000579c:	0ea5e863          	bltu	a1,a0,8000588c <__memmove+0x108>
    800057a0:	00758713          	addi	a4,a1,7
    800057a4:	00a5e7b3          	or	a5,a1,a0
    800057a8:	40a70733          	sub	a4,a4,a0
    800057ac:	0077f793          	andi	a5,a5,7
    800057b0:	00f73713          	sltiu	a4,a4,15
    800057b4:	00174713          	xori	a4,a4,1
    800057b8:	0017b793          	seqz	a5,a5
    800057bc:	00e7f7b3          	and	a5,a5,a4
    800057c0:	10078863          	beqz	a5,800058d0 <__memmove+0x14c>
    800057c4:	00900793          	li	a5,9
    800057c8:	1107f463          	bgeu	a5,a6,800058d0 <__memmove+0x14c>
    800057cc:	0036581b          	srliw	a6,a2,0x3
    800057d0:	fff8081b          	addiw	a6,a6,-1
    800057d4:	02081813          	slli	a6,a6,0x20
    800057d8:	01d85893          	srli	a7,a6,0x1d
    800057dc:	00858813          	addi	a6,a1,8
    800057e0:	00058793          	mv	a5,a1
    800057e4:	00050713          	mv	a4,a0
    800057e8:	01088833          	add	a6,a7,a6
    800057ec:	0007b883          	ld	a7,0(a5)
    800057f0:	00878793          	addi	a5,a5,8
    800057f4:	00870713          	addi	a4,a4,8
    800057f8:	ff173c23          	sd	a7,-8(a4)
    800057fc:	ff0798e3          	bne	a5,a6,800057ec <__memmove+0x68>
    80005800:	ff867713          	andi	a4,a2,-8
    80005804:	02071793          	slli	a5,a4,0x20
    80005808:	0207d793          	srli	a5,a5,0x20
    8000580c:	00f585b3          	add	a1,a1,a5
    80005810:	40e686bb          	subw	a3,a3,a4
    80005814:	00f507b3          	add	a5,a0,a5
    80005818:	06e60463          	beq	a2,a4,80005880 <__memmove+0xfc>
    8000581c:	0005c703          	lbu	a4,0(a1)
    80005820:	00e78023          	sb	a4,0(a5)
    80005824:	04068e63          	beqz	a3,80005880 <__memmove+0xfc>
    80005828:	0015c603          	lbu	a2,1(a1)
    8000582c:	00100713          	li	a4,1
    80005830:	00c780a3          	sb	a2,1(a5)
    80005834:	04e68663          	beq	a3,a4,80005880 <__memmove+0xfc>
    80005838:	0025c603          	lbu	a2,2(a1)
    8000583c:	00200713          	li	a4,2
    80005840:	00c78123          	sb	a2,2(a5)
    80005844:	02e68e63          	beq	a3,a4,80005880 <__memmove+0xfc>
    80005848:	0035c603          	lbu	a2,3(a1)
    8000584c:	00300713          	li	a4,3
    80005850:	00c781a3          	sb	a2,3(a5)
    80005854:	02e68663          	beq	a3,a4,80005880 <__memmove+0xfc>
    80005858:	0045c603          	lbu	a2,4(a1)
    8000585c:	00400713          	li	a4,4
    80005860:	00c78223          	sb	a2,4(a5)
    80005864:	00e68e63          	beq	a3,a4,80005880 <__memmove+0xfc>
    80005868:	0055c603          	lbu	a2,5(a1)
    8000586c:	00500713          	li	a4,5
    80005870:	00c782a3          	sb	a2,5(a5)
    80005874:	00e68663          	beq	a3,a4,80005880 <__memmove+0xfc>
    80005878:	0065c703          	lbu	a4,6(a1)
    8000587c:	00e78323          	sb	a4,6(a5)
    80005880:	00813403          	ld	s0,8(sp)
    80005884:	01010113          	addi	sp,sp,16
    80005888:	00008067          	ret
    8000588c:	02061713          	slli	a4,a2,0x20
    80005890:	02075713          	srli	a4,a4,0x20
    80005894:	00e587b3          	add	a5,a1,a4
    80005898:	f0f574e3          	bgeu	a0,a5,800057a0 <__memmove+0x1c>
    8000589c:	02069613          	slli	a2,a3,0x20
    800058a0:	02065613          	srli	a2,a2,0x20
    800058a4:	fff64613          	not	a2,a2
    800058a8:	00e50733          	add	a4,a0,a4
    800058ac:	00c78633          	add	a2,a5,a2
    800058b0:	fff7c683          	lbu	a3,-1(a5)
    800058b4:	fff78793          	addi	a5,a5,-1
    800058b8:	fff70713          	addi	a4,a4,-1
    800058bc:	00d70023          	sb	a3,0(a4)
    800058c0:	fec798e3          	bne	a5,a2,800058b0 <__memmove+0x12c>
    800058c4:	00813403          	ld	s0,8(sp)
    800058c8:	01010113          	addi	sp,sp,16
    800058cc:	00008067          	ret
    800058d0:	02069713          	slli	a4,a3,0x20
    800058d4:	02075713          	srli	a4,a4,0x20
    800058d8:	00170713          	addi	a4,a4,1
    800058dc:	00e50733          	add	a4,a0,a4
    800058e0:	00050793          	mv	a5,a0
    800058e4:	0005c683          	lbu	a3,0(a1)
    800058e8:	00178793          	addi	a5,a5,1
    800058ec:	00158593          	addi	a1,a1,1
    800058f0:	fed78fa3          	sb	a3,-1(a5)
    800058f4:	fee798e3          	bne	a5,a4,800058e4 <__memmove+0x160>
    800058f8:	f89ff06f          	j	80005880 <__memmove+0xfc>

00000000800058fc <__putc>:
    800058fc:	fe010113          	addi	sp,sp,-32
    80005900:	00813823          	sd	s0,16(sp)
    80005904:	00113c23          	sd	ra,24(sp)
    80005908:	02010413          	addi	s0,sp,32
    8000590c:	00050793          	mv	a5,a0
    80005910:	fef40593          	addi	a1,s0,-17
    80005914:	00100613          	li	a2,1
    80005918:	00000513          	li	a0,0
    8000591c:	fef407a3          	sb	a5,-17(s0)
    80005920:	fffff097          	auipc	ra,0xfffff
    80005924:	b3c080e7          	jalr	-1220(ra) # 8000445c <console_write>
    80005928:	01813083          	ld	ra,24(sp)
    8000592c:	01013403          	ld	s0,16(sp)
    80005930:	02010113          	addi	sp,sp,32
    80005934:	00008067          	ret

0000000080005938 <__getc>:
    80005938:	fe010113          	addi	sp,sp,-32
    8000593c:	00813823          	sd	s0,16(sp)
    80005940:	00113c23          	sd	ra,24(sp)
    80005944:	02010413          	addi	s0,sp,32
    80005948:	fe840593          	addi	a1,s0,-24
    8000594c:	00100613          	li	a2,1
    80005950:	00000513          	li	a0,0
    80005954:	fffff097          	auipc	ra,0xfffff
    80005958:	ae8080e7          	jalr	-1304(ra) # 8000443c <console_read>
    8000595c:	fe844503          	lbu	a0,-24(s0)
    80005960:	01813083          	ld	ra,24(sp)
    80005964:	01013403          	ld	s0,16(sp)
    80005968:	02010113          	addi	sp,sp,32
    8000596c:	00008067          	ret

0000000080005970 <console_handler>:
    80005970:	fe010113          	addi	sp,sp,-32
    80005974:	00813823          	sd	s0,16(sp)
    80005978:	00113c23          	sd	ra,24(sp)
    8000597c:	00913423          	sd	s1,8(sp)
    80005980:	02010413          	addi	s0,sp,32
    80005984:	14202773          	csrr	a4,scause
    80005988:	100027f3          	csrr	a5,sstatus
    8000598c:	0027f793          	andi	a5,a5,2
    80005990:	06079e63          	bnez	a5,80005a0c <console_handler+0x9c>
    80005994:	00074c63          	bltz	a4,800059ac <console_handler+0x3c>
    80005998:	01813083          	ld	ra,24(sp)
    8000599c:	01013403          	ld	s0,16(sp)
    800059a0:	00813483          	ld	s1,8(sp)
    800059a4:	02010113          	addi	sp,sp,32
    800059a8:	00008067          	ret
    800059ac:	0ff77713          	andi	a4,a4,255
    800059b0:	00900793          	li	a5,9
    800059b4:	fef712e3          	bne	a4,a5,80005998 <console_handler+0x28>
    800059b8:	ffffe097          	auipc	ra,0xffffe
    800059bc:	6dc080e7          	jalr	1756(ra) # 80004094 <plic_claim>
    800059c0:	00a00793          	li	a5,10
    800059c4:	00050493          	mv	s1,a0
    800059c8:	02f50c63          	beq	a0,a5,80005a00 <console_handler+0x90>
    800059cc:	fc0506e3          	beqz	a0,80005998 <console_handler+0x28>
    800059d0:	00050593          	mv	a1,a0
    800059d4:	00001517          	auipc	a0,0x1
    800059d8:	a0450513          	addi	a0,a0,-1532 # 800063d8 <CONSOLE_STATUS+0x3c8>
    800059dc:	fffff097          	auipc	ra,0xfffff
    800059e0:	afc080e7          	jalr	-1284(ra) # 800044d8 <__printf>
    800059e4:	01013403          	ld	s0,16(sp)
    800059e8:	01813083          	ld	ra,24(sp)
    800059ec:	00048513          	mv	a0,s1
    800059f0:	00813483          	ld	s1,8(sp)
    800059f4:	02010113          	addi	sp,sp,32
    800059f8:	ffffe317          	auipc	t1,0xffffe
    800059fc:	6d430067          	jr	1748(t1) # 800040cc <plic_complete>
    80005a00:	fffff097          	auipc	ra,0xfffff
    80005a04:	3e0080e7          	jalr	992(ra) # 80004de0 <uartintr>
    80005a08:	fddff06f          	j	800059e4 <console_handler+0x74>
    80005a0c:	00001517          	auipc	a0,0x1
    80005a10:	acc50513          	addi	a0,a0,-1332 # 800064d8 <digits+0x78>
    80005a14:	fffff097          	auipc	ra,0xfffff
    80005a18:	a68080e7          	jalr	-1432(ra) # 8000447c <panic>
	...

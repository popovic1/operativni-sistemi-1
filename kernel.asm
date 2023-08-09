
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00007117          	auipc	sp,0x7
    80000004:	3a813103          	ld	sp,936(sp) # 800073a8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	0b1030ef          	jal	ra,800038cc <start>

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
    800010a8:	215000ef          	jal	ra,80001abc <_ZN5Riscv11trapHandlerEv>

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
    80001304:	fd010113          	addi	sp,sp,-48
    80001308:	02813423          	sd	s0,40(sp)
    8000130c:	03010413          	addi	s0,sp,48
    80001310:	fca43c23          	sd	a0,-40(s0)
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
    80001324:	fd840793          	addi	a5,s0,-40
    __asm__ volatile ("ld %0, 13*8(fp)" : "=r"(a3));
    return a3;
}

inline void Riscv::w_a3(uint64 a3) {
    __asm__ volatile ("mv a3, %0" : : "r"(a3));
    80001328:	00078693          	mv	a3,a5

    __asm__ volatile ("ecall");
    8000132c:	00000073          	ecall
    __asm__ volatile ("ld %0, 10*8(fp)" : "=r"(a0));
    80001330:	05043783          	ld	a5,80(s0)
    80001334:	fef43423          	sd	a5,-24(s0)
    return a0;
    80001338:	fe843783          	ld	a5,-24(s0)

    handle = (thread_t*) Riscv::r_a0();
    if(handle)return 0;
    8000133c:	00078a63          	beqz	a5,80001350 <_Z13thread_createPP7_threadPFvPvES2_+0x4c>
    80001340:	00000513          	li	a0,0
    return -1;

}
    80001344:	02813403          	ld	s0,40(sp)
    80001348:	03010113          	addi	sp,sp,48
    8000134c:	00008067          	ret
    return -1;
    80001350:	fff00513          	li	a0,-1
    80001354:	ff1ff06f          	j	80001344 <_Z13thread_createPP7_threadPFvPvES2_+0x40>

0000000080001358 <_Z11thread_exitv>:

int thread_exit(){
    80001358:	fe010113          	addi	sp,sp,-32
    8000135c:	00813c23          	sd	s0,24(sp)
    80001360:	02010413          	addi	s0,sp,32
    __asm__ volatile ("mv a0, %0" : : "r"(a0));
    80001364:	01200793          	li	a5,18
    80001368:	00078513          	mv	a0,a5
    Riscv::w_a0(0x12);
    __asm__ volatile ("ecall");
    8000136c:	00000073          	ecall
    __asm__ volatile ("ld %0, 10*8(fp)" : "=r"(a0));
    80001370:	05043783          	ld	a5,80(s0)
    80001374:	fef43023          	sd	a5,-32(s0)
    return a0;
    80001378:	fe043783          	ld	a5,-32(s0)
    volatile uint64 a0 = Riscv::r_a0();
    8000137c:	fef43423          	sd	a5,-24(s0)
    return a0;
    80001380:	fe843503          	ld	a0,-24(s0)
}
    80001384:	0005051b          	sext.w	a0,a0
    80001388:	01813403          	ld	s0,24(sp)
    8000138c:	02010113          	addi	sp,sp,32
    80001390:	00008067          	ret

0000000080001394 <_Z15thread_dispatchv>:

void thread_dispatch(){
    80001394:	ff010113          	addi	sp,sp,-16
    80001398:	00813423          	sd	s0,8(sp)
    8000139c:	01010413          	addi	s0,sp,16
    __asm__ volatile ("mv a0, %0" : : "r"(a0));
    800013a0:	01300793          	li	a5,19
    800013a4:	00078513          	mv	a0,a5
    Riscv::w_a0(0x13);
    __asm__ volatile ("ecall");
    800013a8:	00000073          	ecall
}
    800013ac:	00813403          	ld	s0,8(sp)
    800013b0:	01010113          	addi	sp,sp,16
    800013b4:	00008067          	ret

00000000800013b8 <_Z11thread_joinP7_thread>:

void thread_join(thread_t handle){
    800013b8:	ff010113          	addi	sp,sp,-16
    800013bc:	00813423          	sd	s0,8(sp)
    800013c0:	01010413          	addi	s0,sp,16
    800013c4:	01400793          	li	a5,20
    800013c8:	00078513          	mv	a0,a5
    Riscv::w_a0(0x14);

    800013cc:	00813403          	ld	s0,8(sp)
    800013d0:	01010113          	addi	sp,sp,16
    800013d4:	00008067          	ret

00000000800013d8 <_ZN3PCB8dispatchEv>:
PCB* PCB::running;




void PCB::dispatch() {
    800013d8:	fe010113          	addi	sp,sp,-32
    800013dc:	00113c23          	sd	ra,24(sp)
    800013e0:	00813823          	sd	s0,16(sp)
    800013e4:	00913423          	sd	s1,8(sp)
    800013e8:	02010413          	addi	s0,sp,32
    Riscv::pushRegisters();
    800013ec:	00000097          	auipc	ra,0x0
    800013f0:	d54080e7          	jalr	-684(ra) # 80001140 <_ZN5Riscv13pushRegistersEv>

    PCB *old = running;
    800013f4:	00006497          	auipc	s1,0x6
    800013f8:	01c4b483          	ld	s1,28(s1) # 80007410 <_ZN3PCB7runningE>
        FINISHED
    };

    ~PCB() { delete[] stack; }

    bool isFinished() const { return state == FINISHED; }
    800013fc:	0284a703          	lw	a4,40(s1)
    if (!old->isFinished()) {
    80001400:	00300793          	li	a5,3
    80001404:	04f71463          	bne	a4,a5,8000144c <_ZN3PCB8dispatchEv+0x74>
        old->state = READY;
        Scheduler::put(old);
    }
    running = Scheduler::get();
    80001408:	00000097          	auipc	ra,0x0
    8000140c:	12c080e7          	jalr	300(ra) # 80001534 <_ZN9Scheduler3getEv>
    80001410:	00006797          	auipc	a5,0x6
    80001414:	00a7b023          	sd	a0,0(a5) # 80007410 <_ZN3PCB7runningE>
    running->state=RUNNING;
    80001418:	00100793          	li	a5,1
    8000141c:	02f52423          	sw	a5,40(a0)

    PCB::contextSwitch(&old->context, &running->context);
    80001420:	01850593          	addi	a1,a0,24
    80001424:	01848513          	addi	a0,s1,24
    80001428:	00000097          	auipc	ra,0x0
    8000142c:	e10080e7          	jalr	-496(ra) # 80001238 <_ZN3PCB13contextSwitchEPNS_7ContextES1_>

    Riscv::popRegisters();
    80001430:	00000097          	auipc	ra,0x0
    80001434:	d8c080e7          	jalr	-628(ra) # 800011bc <_ZN5Riscv12popRegistersEv>
}
    80001438:	01813083          	ld	ra,24(sp)
    8000143c:	01013403          	ld	s0,16(sp)
    80001440:	00813483          	ld	s1,8(sp)
    80001444:	02010113          	addi	sp,sp,32
    80001448:	00008067          	ret
        old->state = READY;
    8000144c:	0204a423          	sw	zero,40(s1)
        Scheduler::put(old);
    80001450:	00048513          	mv	a0,s1
    80001454:	00000097          	auipc	ra,0x0
    80001458:	148080e7          	jalr	328(ra) # 8000159c <_ZN9Scheduler3putEP3PCB>
    8000145c:	fadff06f          	j	80001408 <_ZN3PCB8dispatchEv+0x30>

0000000080001460 <_ZN3PCB4exitEv>:

int PCB::exit() {
    if(running->state==RUNNING){
    80001460:	00006797          	auipc	a5,0x6
    80001464:	fb07b783          	ld	a5,-80(a5) # 80007410 <_ZN3PCB7runningE>
    80001468:	0287a683          	lw	a3,40(a5)
    8000146c:	00100713          	li	a4,1
    80001470:	02e69c63          	bne	a3,a4,800014a8 <_ZN3PCB4exitEv+0x48>
int PCB::exit() {
    80001474:	ff010113          	addi	sp,sp,-16
    80001478:	00113423          	sd	ra,8(sp)
    8000147c:	00813023          	sd	s0,0(sp)
    80001480:	01010413          	addi	s0,sp,16
        running->state=FINISHED;
    80001484:	00300713          	li	a4,3
    80001488:	02e7a423          	sw	a4,40(a5)
        dispatch();
    8000148c:	00000097          	auipc	ra,0x0
    80001490:	f4c080e7          	jalr	-180(ra) # 800013d8 <_ZN3PCB8dispatchEv>
        return 0;
    80001494:	00000513          	li	a0,0
    }
    return -1;
}
    80001498:	00813083          	ld	ra,8(sp)
    8000149c:	00013403          	ld	s0,0(sp)
    800014a0:	01010113          	addi	sp,sp,16
    800014a4:	00008067          	ret
    return -1;
    800014a8:	fff00513          	li	a0,-1
}
    800014ac:	00008067          	ret

00000000800014b0 <_ZN3PCB7wrapperEv>:

void PCB::wrapper() {
    800014b0:	ff010113          	addi	sp,sp,-16
    800014b4:	00113423          	sd	ra,8(sp)
    800014b8:	00813023          	sd	s0,0(sp)
    800014bc:	01010413          	addi	s0,sp,16
    Riscv::popSppSpie();
    800014c0:	00000097          	auipc	ra,0x0
    800014c4:	5dc080e7          	jalr	1500(ra) # 80001a9c <_ZN5Riscv10popSppSpieEv>
    running->body(running->args);
    800014c8:	00006797          	auipc	a5,0x6
    800014cc:	f487b783          	ld	a5,-184(a5) # 80007410 <_ZN3PCB7runningE>
    800014d0:	0007b703          	ld	a4,0(a5)
    800014d4:	0107b503          	ld	a0,16(a5)
    800014d8:	000700e7          	jalr	a4
    thread_exit();
    800014dc:	00000097          	auipc	ra,0x0
    800014e0:	e7c080e7          	jalr	-388(ra) # 80001358 <_Z11thread_exitv>
}
    800014e4:	00813083          	ld	ra,8(sp)
    800014e8:	00013403          	ld	s0,0(sp)
    800014ec:	01010113          	addi	sp,sp,16
    800014f0:	00008067          	ret

00000000800014f4 <_Z41__static_initialization_and_destruction_0ii>:
    return Scheduler::readyQueue.removeFirst();
}

void Scheduler::put(PCB *handle) {
    Scheduler::readyQueue.addLast(handle);
    800014f4:	ff010113          	addi	sp,sp,-16
    800014f8:	00813423          	sd	s0,8(sp)
    800014fc:	01010413          	addi	s0,sp,16
    80001500:	00100793          	li	a5,1
    80001504:	00f50863          	beq	a0,a5,80001514 <_Z41__static_initialization_and_destruction_0ii+0x20>
    80001508:	00813403          	ld	s0,8(sp)
    8000150c:	01010113          	addi	sp,sp,16
    80001510:	00008067          	ret
    80001514:	000107b7          	lui	a5,0x10
    80001518:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    8000151c:	fef596e3          	bne	a1,a5,80001508 <_Z41__static_initialization_and_destruction_0ii+0x14>
    };

    Elem *head, *tail;

public:
    List() : head(0), tail(0) {}
    80001520:	00006797          	auipc	a5,0x6
    80001524:	ef878793          	addi	a5,a5,-264 # 80007418 <_ZN9Scheduler10readyQueueE>
    80001528:	0007b023          	sd	zero,0(a5)
    8000152c:	0007b423          	sd	zero,8(a5)
    80001530:	fd9ff06f          	j	80001508 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080001534 <_ZN9Scheduler3getEv>:
PCB *Scheduler::get() {
    80001534:	fe010113          	addi	sp,sp,-32
    80001538:	00113c23          	sd	ra,24(sp)
    8000153c:	00813823          	sd	s0,16(sp)
    80001540:	00913423          	sd	s1,8(sp)
    80001544:	02010413          	addi	s0,sp,32
        }
    }

    T *removeFirst()
    {
        if (!head) { return 0; }
    80001548:	00006517          	auipc	a0,0x6
    8000154c:	ed053503          	ld	a0,-304(a0) # 80007418 <_ZN9Scheduler10readyQueueE>
    80001550:	04050263          	beqz	a0,80001594 <_ZN9Scheduler3getEv+0x60>

        Elem *elem = head;
        head = head->next;
    80001554:	00853783          	ld	a5,8(a0)
    80001558:	00006717          	auipc	a4,0x6
    8000155c:	ecf73023          	sd	a5,-320(a4) # 80007418 <_ZN9Scheduler10readyQueueE>
        if (!head) { tail = 0; }
    80001560:	02078463          	beqz	a5,80001588 <_ZN9Scheduler3getEv+0x54>

        T *ret = elem->data;
    80001564:	00053483          	ld	s1,0(a0)
        delete elem;
    80001568:	00000097          	auipc	ra,0x0
    8000156c:	2d4080e7          	jalr	724(ra) # 8000183c <_ZdlPv>
}
    80001570:	00048513          	mv	a0,s1
    80001574:	01813083          	ld	ra,24(sp)
    80001578:	01013403          	ld	s0,16(sp)
    8000157c:	00813483          	ld	s1,8(sp)
    80001580:	02010113          	addi	sp,sp,32
    80001584:	00008067          	ret
        if (!head) { tail = 0; }
    80001588:	00006797          	auipc	a5,0x6
    8000158c:	e807bc23          	sd	zero,-360(a5) # 80007420 <_ZN9Scheduler10readyQueueE+0x8>
    80001590:	fd5ff06f          	j	80001564 <_ZN9Scheduler3getEv+0x30>
        if (!head) { return 0; }
    80001594:	00050493          	mv	s1,a0
    return Scheduler::readyQueue.removeFirst();
    80001598:	fd9ff06f          	j	80001570 <_ZN9Scheduler3getEv+0x3c>

000000008000159c <_ZN9Scheduler3putEP3PCB>:
void Scheduler::put(PCB *handle) {
    8000159c:	fe010113          	addi	sp,sp,-32
    800015a0:	00113c23          	sd	ra,24(sp)
    800015a4:	00813823          	sd	s0,16(sp)
    800015a8:	00913423          	sd	s1,8(sp)
    800015ac:	02010413          	addi	s0,sp,32
    800015b0:	00050493          	mv	s1,a0
        Elem *elem = new Elem(data, 0);
    800015b4:	01000513          	li	a0,16
    800015b8:	00000097          	auipc	ra,0x0
    800015bc:	234080e7          	jalr	564(ra) # 800017ec <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    800015c0:	00953023          	sd	s1,0(a0)
    800015c4:	00053423          	sd	zero,8(a0)
        if (tail)
    800015c8:	00006797          	auipc	a5,0x6
    800015cc:	e587b783          	ld	a5,-424(a5) # 80007420 <_ZN9Scheduler10readyQueueE+0x8>
    800015d0:	02078263          	beqz	a5,800015f4 <_ZN9Scheduler3putEP3PCB+0x58>
            tail->next = elem;
    800015d4:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    800015d8:	00006797          	auipc	a5,0x6
    800015dc:	e4a7b423          	sd	a0,-440(a5) # 80007420 <_ZN9Scheduler10readyQueueE+0x8>
    800015e0:	01813083          	ld	ra,24(sp)
    800015e4:	01013403          	ld	s0,16(sp)
    800015e8:	00813483          	ld	s1,8(sp)
    800015ec:	02010113          	addi	sp,sp,32
    800015f0:	00008067          	ret
            head = tail = elem;
    800015f4:	00006797          	auipc	a5,0x6
    800015f8:	e2478793          	addi	a5,a5,-476 # 80007418 <_ZN9Scheduler10readyQueueE>
    800015fc:	00a7b423          	sd	a0,8(a5)
    80001600:	00a7b023          	sd	a0,0(a5)
    80001604:	fddff06f          	j	800015e0 <_ZN9Scheduler3putEP3PCB+0x44>

0000000080001608 <_GLOBAL__sub_I__ZN9Scheduler10readyQueueE>:
    80001608:	ff010113          	addi	sp,sp,-16
    8000160c:	00113423          	sd	ra,8(sp)
    80001610:	00813023          	sd	s0,0(sp)
    80001614:	01010413          	addi	s0,sp,16
    80001618:	000105b7          	lui	a1,0x10
    8000161c:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80001620:	00100513          	li	a0,1
    80001624:	00000097          	auipc	ra,0x0
    80001628:	ed0080e7          	jalr	-304(ra) # 800014f4 <_Z41__static_initialization_and_destruction_0ii>
    8000162c:	00813083          	ld	ra,8(sp)
    80001630:	00013403          	ld	s0,0(sp)
    80001634:	01010113          	addi	sp,sp,16
    80001638:	00008067          	ret

000000008000163c <_Z7createCm>:



};

C* createC(uint64 n){
    8000163c:	fe010113          	addi	sp,sp,-32
    80001640:	00113c23          	sd	ra,24(sp)
    80001644:	00813823          	sd	s0,16(sp)
    80001648:	00913423          	sd	s1,8(sp)
    8000164c:	02010413          	addi	s0,sp,32
    80001650:	00050493          	mv	s1,a0
    return new C(n);
    80001654:	00800513          	li	a0,8
    80001658:	00000097          	auipc	ra,0x0
    8000165c:	194080e7          	jalr	404(ra) # 800017ec <_Znwm>
        num = n;
    80001660:	00953023          	sd	s1,0(a0)
}
    80001664:	01813083          	ld	ra,24(sp)
    80001668:	01013403          	ld	s0,16(sp)
    8000166c:	00813483          	ld	s1,8(sp)
    80001670:	02010113          	addi	sp,sp,32
    80001674:	00008067          	ret

0000000080001678 <main>:

extern void userMain();

int main() {
    80001678:	fe010113          	addi	sp,sp,-32
    8000167c:	00113c23          	sd	ra,24(sp)
    80001680:	00813823          	sd	s0,16(sp)
    80001684:	00913423          	sd	s1,8(sp)
    80001688:	01213023          	sd	s2,0(sp)
    8000168c:	02010413          	addi	s0,sp,32
public:


    // Get the singleton instance
    static MemoryAllocator &getInstance() {
        static MemoryAllocator instance;
    80001690:	00006797          	auipc	a5,0x6
    80001694:	d987c783          	lbu	a5,-616(a5) # 80007428 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80001698:	00079863          	bnez	a5,800016a8 <main+0x30>
    8000169c:	00100793          	li	a5,1
    800016a0:	00006717          	auipc	a4,0x6
    800016a4:	d8f70423          	sb	a5,-632(a4) # 80007428 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
//        printString("\n");
//        uint64 end = (uint64)((Block *) HEAP_END_ADDR);
//        printInteger(end);
//        printString("\n");

        free_list = (Block *) HEAP_START_ADDR;
    800016a8:	00006797          	auipc	a5,0x6
    800016ac:	ce87b783          	ld	a5,-792(a5) # 80007390 <_GLOBAL_OFFSET_TABLE_+0x18>
    800016b0:	0007b703          	ld	a4,0(a5)
    800016b4:	00006697          	auipc	a3,0x6
    800016b8:	d0c6b683          	ld	a3,-756(a3) # 800073c0 <_GLOBAL_OFFSET_TABLE_+0x48>
    800016bc:	00e6b023          	sd	a4,0(a3)
        free_list->size = (uint64 *) HEAP_END_ADDR - (uint64 *) HEAP_START_ADDR;
    800016c0:	00006797          	auipc	a5,0x6
    800016c4:	cf87b783          	ld	a5,-776(a5) # 800073b8 <_GLOBAL_OFFSET_TABLE_+0x40>
    800016c8:	0007b783          	ld	a5,0(a5)
    800016cc:	40e787b3          	sub	a5,a5,a4
    800016d0:	4037d793          	srai	a5,a5,0x3
    800016d4:	00f73023          	sd	a5,0(a4)
        free_list->next = nullptr;
    800016d8:	0006b783          	ld	a5,0(a3)
    800016dc:	0007b423          	sd	zero,8(a5)
        allocated_list = nullptr;
    800016e0:	00006797          	auipc	a5,0x6
    800016e4:	cc07b783          	ld	a5,-832(a5) # 800073a0 <_GLOBAL_OFFSET_TABLE_+0x28>
    800016e8:	0007b023          	sd	zero,0(a5)


    MemoryAllocator::getInstance().init();
    Riscv::w_stvec((uint64) &Riscv::supervisorTrap+1);
    800016ec:	00006797          	auipc	a5,0x6
    800016f0:	cac7b783          	ld	a5,-852(a5) # 80007398 <_GLOBAL_OFFSET_TABLE_+0x20>
    800016f4:	00178793          	addi	a5,a5,1
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    800016f8:	10579073          	csrw	stvec,a5
    PCB* pcb = new PCB(nullptr, nullptr, nullptr);
    800016fc:	03000513          	li	a0,48
    80001700:	00000097          	auipc	ra,0x0
    80001704:	0ec080e7          	jalr	236(ra) # 800017ec <_Znwm>
    80001708:	00050493          	mv	s1,a0

    static void wrapper();

public:
    PCB(Body body, void *args, uint64 *stack) {
        this->body = body;
    8000170c:	00053023          	sd	zero,0(a0)
        this->stack = stack;
    80001710:	00053423          	sd	zero,8(a0)
        context = {(uint64) &wrapper,
    80001714:	00006797          	auipc	a5,0x6
    80001718:	c747b783          	ld	a5,-908(a5) # 80007388 <_GLOBAL_OFFSET_TABLE_+0x10>
    8000171c:	00f53c23          	sd	a5,24(a0)
    80001720:	02053023          	sd	zero,32(a0)
                   stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
        };
        this->args = args;
    80001724:	00053823          	sd	zero,16(a0)
        state = READY;
    80001728:	02052423          	sw	zero,40(a0)
    PCB::running=pcb;
    8000172c:	00006797          	auipc	a5,0x6
    80001730:	c847b783          	ld	a5,-892(a5) # 800073b0 <_GLOBAL_OFFSET_TABLE_+0x38>
    80001734:	00a7b023          	sd	a0,0(a5)
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001738:	00200793          	li	a5,2
    8000173c:	1007a073          	csrs	sstatus,a5
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);

    switchToUserMode();
    80001740:	00000097          	auipc	ra,0x0
    80001744:	1e4080e7          	jalr	484(ra) # 80001924 <_Z16switchToUserModev>

    Thread* userThread = new Thread((void (*)(void *))(userMain), nullptr);
    80001748:	02000513          	li	a0,32
    8000174c:	00000097          	auipc	ra,0x0
    80001750:	0a0080e7          	jalr	160(ra) # 800017ec <_Znwm>
    80001754:	00050913          	mv	s2,a0
    80001758:	00000613          	li	a2,0
    8000175c:	00006597          	auipc	a1,0x6
    80001760:	c245b583          	ld	a1,-988(a1) # 80007380 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001764:	00000097          	auipc	ra,0x0
    80001768:	1e8080e7          	jalr	488(ra) # 8000194c <_ZN6ThreadC1EPFvPvES0_>
    userThread->start();
    8000176c:	00090513          	mv	a0,s2
    80001770:	00000097          	auipc	ra,0x0
    80001774:	290080e7          	jalr	656(ra) # 80001a00 <_ZN6Thread5startEv>

    thread_dispatch();
    80001778:	00000097          	auipc	ra,0x0
    8000177c:	c1c080e7          	jalr	-996(ra) # 80001394 <_Z15thread_dispatchv>

    delete userThread;
    80001780:	00090a63          	beqz	s2,80001794 <main+0x11c>
    80001784:	00093783          	ld	a5,0(s2)
    80001788:	0087b783          	ld	a5,8(a5)
    8000178c:	00090513          	mv	a0,s2
    80001790:	000780e7          	jalr	a5
    delete pcb;
    80001794:	02048063          	beqz	s1,800017b4 <main+0x13c>
    ~PCB() { delete[] stack; }
    80001798:	0084b503          	ld	a0,8(s1)
    8000179c:	00050663          	beqz	a0,800017a8 <main+0x130>
    800017a0:	00000097          	auipc	ra,0x0
    800017a4:	0c4080e7          	jalr	196(ra) # 80001864 <_ZdaPv>
    800017a8:	00048513          	mv	a0,s1
    800017ac:	00000097          	auipc	ra,0x0
    800017b0:	090080e7          	jalr	144(ra) # 8000183c <_ZdlPv>


    //printString("Finished\n");

    return 0;
    800017b4:	00000513          	li	a0,0
    800017b8:	01813083          	ld	ra,24(sp)
    800017bc:	01013403          	ld	s0,16(sp)
    800017c0:	00813483          	ld	s1,8(sp)
    800017c4:	00013903          	ld	s2,0(sp)
    800017c8:	02010113          	addi	sp,sp,32
    800017cc:	00008067          	ret
    800017d0:	00050493          	mv	s1,a0
    Thread* userThread = new Thread((void (*)(void *))(userMain), nullptr);
    800017d4:	00090513          	mv	a0,s2
    800017d8:	00000097          	auipc	ra,0x0
    800017dc:	064080e7          	jalr	100(ra) # 8000183c <_ZdlPv>
    800017e0:	00048513          	mv	a0,s1
    800017e4:	00007097          	auipc	ra,0x7
    800017e8:	d44080e7          	jalr	-700(ra) # 80008528 <_Unwind_Resume>

00000000800017ec <_Znwm>:
// Created by os on 2/2/23.
//

#include "../h/syscall_cpp.hpp"

void* operator new(size_t size) {
    800017ec:	ff010113          	addi	sp,sp,-16
    800017f0:	00113423          	sd	ra,8(sp)
    800017f4:	00813023          	sd	s0,0(sp)
    800017f8:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    800017fc:	00000097          	auipc	ra,0x0
    80001800:	a70080e7          	jalr	-1424(ra) # 8000126c <_Z9mem_allocm>
}
    80001804:	00813083          	ld	ra,8(sp)
    80001808:	00013403          	ld	s0,0(sp)
    8000180c:	01010113          	addi	sp,sp,16
    80001810:	00008067          	ret

0000000080001814 <_Znam>:

void* operator new[](size_t size) {
    80001814:	ff010113          	addi	sp,sp,-16
    80001818:	00113423          	sd	ra,8(sp)
    8000181c:	00813023          	sd	s0,0(sp)
    80001820:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80001824:	00000097          	auipc	ra,0x0
    80001828:	a48080e7          	jalr	-1464(ra) # 8000126c <_Z9mem_allocm>
}
    8000182c:	00813083          	ld	ra,8(sp)
    80001830:	00013403          	ld	s0,0(sp)
    80001834:	01010113          	addi	sp,sp,16
    80001838:	00008067          	ret

000000008000183c <_ZdlPv>:

void operator delete(void *ptr) { mem_free(ptr); }
    8000183c:	ff010113          	addi	sp,sp,-16
    80001840:	00113423          	sd	ra,8(sp)
    80001844:	00813023          	sd	s0,0(sp)
    80001848:	01010413          	addi	s0,sp,16
    8000184c:	00000097          	auipc	ra,0x0
    80001850:	a5c080e7          	jalr	-1444(ra) # 800012a8 <_Z8mem_freePv>
    80001854:	00813083          	ld	ra,8(sp)
    80001858:	00013403          	ld	s0,0(sp)
    8000185c:	01010113          	addi	sp,sp,16
    80001860:	00008067          	ret

0000000080001864 <_ZdaPv>:

void operator delete[](void *ptr) { mem_free(ptr); }
    80001864:	ff010113          	addi	sp,sp,-16
    80001868:	00113423          	sd	ra,8(sp)
    8000186c:	00813023          	sd	s0,0(sp)
    80001870:	01010413          	addi	s0,sp,16
    80001874:	00000097          	auipc	ra,0x0
    80001878:	a34080e7          	jalr	-1484(ra) # 800012a8 <_Z8mem_freePv>
    8000187c:	00813083          	ld	ra,8(sp)
    80001880:	00013403          	ld	s0,0(sp)
    80001884:	01010113          	addi	sp,sp,16
    80001888:	00008067          	ret

000000008000188c <_ZN6ThreadD1Ev>:

void Thread::dispatch() {
    thread_dispatch();
}

Thread::~Thread() {
    8000188c:	fe010113          	addi	sp,sp,-32
    80001890:	00113c23          	sd	ra,24(sp)
    80001894:	00813823          	sd	s0,16(sp)
    80001898:	00913423          	sd	s1,8(sp)
    8000189c:	02010413          	addi	s0,sp,32
    800018a0:	00006797          	auipc	a5,0x6
    800018a4:	a0878793          	addi	a5,a5,-1528 # 800072a8 <_ZTV6Thread+0x10>
    800018a8:	00f53023          	sd	a5,0(a0)
    delete (PCB*)myHandle;
    800018ac:	00853483          	ld	s1,8(a0)
    800018b0:	02048063          	beqz	s1,800018d0 <_ZN6ThreadD1Ev+0x44>
    800018b4:	0084b503          	ld	a0,8(s1)
    800018b8:	00050663          	beqz	a0,800018c4 <_ZN6ThreadD1Ev+0x38>
    800018bc:	00000097          	auipc	ra,0x0
    800018c0:	fa8080e7          	jalr	-88(ra) # 80001864 <_ZdaPv>
    800018c4:	00048513          	mv	a0,s1
    800018c8:	00000097          	auipc	ra,0x0
    800018cc:	f74080e7          	jalr	-140(ra) # 8000183c <_ZdlPv>
}
    800018d0:	01813083          	ld	ra,24(sp)
    800018d4:	01013403          	ld	s0,16(sp)
    800018d8:	00813483          	ld	s1,8(sp)
    800018dc:	02010113          	addi	sp,sp,32
    800018e0:	00008067          	ret

00000000800018e4 <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    800018e4:	fe010113          	addi	sp,sp,-32
    800018e8:	00113c23          	sd	ra,24(sp)
    800018ec:	00813823          	sd	s0,16(sp)
    800018f0:	00913423          	sd	s1,8(sp)
    800018f4:	02010413          	addi	s0,sp,32
    800018f8:	00050493          	mv	s1,a0
}
    800018fc:	00000097          	auipc	ra,0x0
    80001900:	f90080e7          	jalr	-112(ra) # 8000188c <_ZN6ThreadD1Ev>
    80001904:	00048513          	mv	a0,s1
    80001908:	00000097          	auipc	ra,0x0
    8000190c:	f34080e7          	jalr	-204(ra) # 8000183c <_ZdlPv>
    80001910:	01813083          	ld	ra,24(sp)
    80001914:	01013403          	ld	s0,16(sp)
    80001918:	00813483          	ld	s1,8(sp)
    8000191c:	02010113          	addi	sp,sp,32
    80001920:	00008067          	ret

0000000080001924 <_Z16switchToUserModev>:
void switchToUserMode(){ toUserMode();}
    80001924:	ff010113          	addi	sp,sp,-16
    80001928:	00113423          	sd	ra,8(sp)
    8000192c:	00813023          	sd	s0,0(sp)
    80001930:	01010413          	addi	s0,sp,16
    80001934:	00000097          	auipc	ra,0x0
    80001938:	9ac080e7          	jalr	-1620(ra) # 800012e0 <_Z10toUserModev>
    8000193c:	00813083          	ld	ra,8(sp)
    80001940:	00013403          	ld	s0,0(sp)
    80001944:	01010113          	addi	sp,sp,16
    80001948:	00008067          	ret

000000008000194c <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void*), void* arg) {
    8000194c:	ff010113          	addi	sp,sp,-16
    80001950:	00113423          	sd	ra,8(sp)
    80001954:	00813023          	sd	s0,0(sp)
    80001958:	01010413          	addi	s0,sp,16
    8000195c:	00006797          	auipc	a5,0x6
    80001960:	94c78793          	addi	a5,a5,-1716 # 800072a8 <_ZTV6Thread+0x10>
    80001964:	00f53023          	sd	a5,0(a0)
    thread_create(&myHandle, body, arg);
    80001968:	00850513          	addi	a0,a0,8
    8000196c:	00000097          	auipc	ra,0x0
    80001970:	998080e7          	jalr	-1640(ra) # 80001304 <_Z13thread_createPP7_threadPFvPvES2_>
}
    80001974:	00813083          	ld	ra,8(sp)
    80001978:	00013403          	ld	s0,0(sp)
    8000197c:	01010113          	addi	sp,sp,16
    80001980:	00008067          	ret

0000000080001984 <_ZN6ThreadC1Ev>:
Thread::Thread() {
    80001984:	fe010113          	addi	sp,sp,-32
    80001988:	00113c23          	sd	ra,24(sp)
    8000198c:	00813823          	sd	s0,16(sp)
    80001990:	00913423          	sd	s1,8(sp)
    80001994:	01213023          	sd	s2,0(sp)
    80001998:	02010413          	addi	s0,sp,32
    8000199c:	00006797          	auipc	a5,0x6
    800019a0:	90c78793          	addi	a5,a5,-1780 # 800072a8 <_ZTV6Thread+0x10>
    800019a4:	00f53023          	sd	a5,0(a0)
    new Thread(nullptr, nullptr);
    800019a8:	02000513          	li	a0,32
    800019ac:	00000097          	auipc	ra,0x0
    800019b0:	e40080e7          	jalr	-448(ra) # 800017ec <_Znwm>
    800019b4:	00050493          	mv	s1,a0
    800019b8:	00000613          	li	a2,0
    800019bc:	00000593          	li	a1,0
    800019c0:	00000097          	auipc	ra,0x0
    800019c4:	f8c080e7          	jalr	-116(ra) # 8000194c <_ZN6ThreadC1EPFvPvES0_>
    800019c8:	0200006f          	j	800019e8 <_ZN6ThreadC1Ev+0x64>
    800019cc:	00050913          	mv	s2,a0
    800019d0:	00048513          	mv	a0,s1
    800019d4:	00000097          	auipc	ra,0x0
    800019d8:	e68080e7          	jalr	-408(ra) # 8000183c <_ZdlPv>
    800019dc:	00090513          	mv	a0,s2
    800019e0:	00007097          	auipc	ra,0x7
    800019e4:	b48080e7          	jalr	-1208(ra) # 80008528 <_Unwind_Resume>
}
    800019e8:	01813083          	ld	ra,24(sp)
    800019ec:	01013403          	ld	s0,16(sp)
    800019f0:	00813483          	ld	s1,8(sp)
    800019f4:	00013903          	ld	s2,0(sp)
    800019f8:	02010113          	addi	sp,sp,32
    800019fc:	00008067          	ret

0000000080001a00 <_ZN6Thread5startEv>:
int Thread::start() {
    80001a00:	ff010113          	addi	sp,sp,-16
    80001a04:	00113423          	sd	ra,8(sp)
    80001a08:	00813023          	sd	s0,0(sp)
    80001a0c:	01010413          	addi	s0,sp,16
    Scheduler::put((PCB*)myHandle);
    80001a10:	00853503          	ld	a0,8(a0)
    80001a14:	00000097          	auipc	ra,0x0
    80001a18:	b88080e7          	jalr	-1144(ra) # 8000159c <_ZN9Scheduler3putEP3PCB>
}
    80001a1c:	00000513          	li	a0,0
    80001a20:	00813083          	ld	ra,8(sp)
    80001a24:	00013403          	ld	s0,0(sp)
    80001a28:	01010113          	addi	sp,sp,16
    80001a2c:	00008067          	ret

0000000080001a30 <_ZN6Thread4joinEv>:
void Thread::join() {
    80001a30:	ff010113          	addi	sp,sp,-16
    80001a34:	00113423          	sd	ra,8(sp)
    80001a38:	00813023          	sd	s0,0(sp)
    80001a3c:	01010413          	addi	s0,sp,16
    thread_join(myHandle);
    80001a40:	00853503          	ld	a0,8(a0)
    80001a44:	00000097          	auipc	ra,0x0
    80001a48:	974080e7          	jalr	-1676(ra) # 800013b8 <_Z11thread_joinP7_thread>
}
    80001a4c:	00813083          	ld	ra,8(sp)
    80001a50:	00013403          	ld	s0,0(sp)
    80001a54:	01010113          	addi	sp,sp,16
    80001a58:	00008067          	ret

0000000080001a5c <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80001a5c:	ff010113          	addi	sp,sp,-16
    80001a60:	00113423          	sd	ra,8(sp)
    80001a64:	00813023          	sd	s0,0(sp)
    80001a68:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80001a6c:	00000097          	auipc	ra,0x0
    80001a70:	928080e7          	jalr	-1752(ra) # 80001394 <_Z15thread_dispatchv>
}
    80001a74:	00813083          	ld	ra,8(sp)
    80001a78:	00013403          	ld	s0,0(sp)
    80001a7c:	01010113          	addi	sp,sp,16
    80001a80:	00008067          	ret

0000000080001a84 <_ZN6Thread3runEv>:


protected:
    Thread();

    virtual void run() {}
    80001a84:	ff010113          	addi	sp,sp,-16
    80001a88:	00813423          	sd	s0,8(sp)
    80001a8c:	01010413          	addi	s0,sp,16
    80001a90:	00813403          	ld	s0,8(sp)
    80001a94:	01010113          	addi	sp,sp,16
    80001a98:	00008067          	ret

0000000080001a9c <_ZN5Riscv10popSppSpieEv>:
#include "../h/riscv.hpp"



void Riscv::popSppSpie()
{
    80001a9c:	ff010113          	addi	sp,sp,-16
    80001aa0:	00813423          	sd	s0,8(sp)
    80001aa4:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    80001aa8:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    80001aac:	10200073          	sret
}
    80001ab0:	00813403          	ld	s0,8(sp)
    80001ab4:	01010113          	addi	sp,sp,16
    80001ab8:	00008067          	ret

0000000080001abc <_ZN5Riscv11trapHandlerEv>:

void Riscv::trapHandler() {
    80001abc:	f8010113          	addi	sp,sp,-128
    80001ac0:	06113c23          	sd	ra,120(sp)
    80001ac4:	06813823          	sd	s0,112(sp)
    80001ac8:	06913423          	sd	s1,104(sp)
    80001acc:	07213023          	sd	s2,96(sp)
    80001ad0:	05313c23          	sd	s3,88(sp)
    80001ad4:	05413823          	sd	s4,80(sp)
    80001ad8:	05513423          	sd	s5,72(sp)
    80001adc:	05613023          	sd	s6,64(sp)
    80001ae0:	08010413          	addi	s0,sp,128
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80001ae4:	142027f3          	csrr	a5,scause
    80001ae8:	faf43423          	sd	a5,-88(s0)
    return scause;
    80001aec:	fa843703          	ld	a4,-88(s0)
    __asm__ volatile ("ld %0, 10*8(fp)" : "=r"(a0));
    80001af0:	05043783          	ld	a5,80(s0)
    80001af4:	faf43023          	sd	a5,-96(s0)
    return a0;
    80001af8:	fa043783          	ld	a5,-96(s0)
    __asm__ volatile ("ld %0, 11*8(fp)" : "=r"(a1));
    80001afc:	05843683          	ld	a3,88(s0)
    80001b00:	f8d43c23          	sd	a3,-104(s0)
    return a1;
    80001b04:	f9843483          	ld	s1,-104(s0)
    __asm__ volatile ("ld %0, 12*8(fp)" : "=r"(a2));
    80001b08:	06043683          	ld	a3,96(s0)
    80001b0c:	f8d43823          	sd	a3,-112(s0)
    return a2;
    80001b10:	f9043983          	ld	s3,-112(s0)
    __asm__ volatile ("ld %0, 13*8(fp)" : "=r"(a3));
    80001b14:	06843683          	ld	a3,104(s0)
    80001b18:	f8d43423          	sd	a3,-120(s0)
    return a3;
    80001b1c:	f8843903          	ld	s2,-120(s0)
    uint64 a3 = r_a3();

    uint64 sepc;
    uint64 sstatus;

    switch (scause) {
    80001b20:	fff00693          	li	a3,-1
    80001b24:	03f69693          	slli	a3,a3,0x3f
    80001b28:	00168693          	addi	a3,a3,1
    80001b2c:	1ad70863          	beq	a4,a3,80001cdc <_ZN5Riscv11trapHandlerEv+0x220>
    80001b30:	fff00693          	li	a3,-1
    80001b34:	03f69693          	slli	a3,a3,0x3f
    80001b38:	00168693          	addi	a3,a3,1
    80001b3c:	04e6ee63          	bltu	a3,a4,80001b98 <_ZN5Riscv11trapHandlerEv+0xdc>
    80001b40:	ff870713          	addi	a4,a4,-8
    80001b44:	00100693          	li	a3,1
    80001b48:	18e6ee63          	bltu	a3,a4,80001ce4 <_ZN5Riscv11trapHandlerEv+0x228>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001b4c:	14102773          	csrr	a4,sepc
    80001b50:	fae43c23          	sd	a4,-72(s0)
    return sepc;
    80001b54:	fb843703          	ld	a4,-72(s0)
        case 0x08:
        case 0x09:
            //ecall: software interrupt
            sepc = r_sepc() + 4;
    80001b58:	00470a93          	addi	s5,a4,4
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001b5c:	100026f3          	csrr	a3,sstatus
    80001b60:	fad43823          	sd	a3,-80(s0)
    return sstatus;
    80001b64:	fb043a03          	ld	s4,-80(s0)
            sstatus = r_sstatus();
            void* mem;
            uint64* stack;
            PCB** handle;
            switch(a0){
    80001b68:	01300693          	li	a3,19
    80001b6c:	04f6c463          	blt	a3,a5,80001bb4 <_ZN5Riscv11trapHandlerEv+0xf8>
    80001b70:	08f05a63          	blez	a5,80001c04 <_ZN5Riscv11trapHandlerEv+0x148>
    80001b74:	01300713          	li	a4,19
    80001b78:	08f76663          	bltu	a4,a5,80001c04 <_ZN5Riscv11trapHandlerEv+0x148>
    80001b7c:	00279793          	slli	a5,a5,0x2
    80001b80:	00004717          	auipc	a4,0x4
    80001b84:	4a070713          	addi	a4,a4,1184 # 80006020 <CONSOLE_STATUS+0x10>
    80001b88:	00e787b3          	add	a5,a5,a4
    80001b8c:	0007a783          	lw	a5,0(a5)
    80001b90:	00e787b3          	add	a5,a5,a4
    80001b94:	00078067          	jr	a5
    switch (scause) {
    80001b98:	fff00793          	li	a5,-1
    80001b9c:	03f79793          	slli	a5,a5,0x3f
    80001ba0:	00978793          	addi	a5,a5,9
    80001ba4:	14f71063          	bne	a4,a5,80001ce4 <_ZN5Riscv11trapHandlerEv+0x228>
            //timer interrupt
            mc_sip(SIP_SSIP);
            break;
        case 0x8000000000000009UL:
            //external hardware interrupt
            console_handler();
    80001ba8:	00004097          	auipc	ra,0x4
    80001bac:	e58080e7          	jalr	-424(ra) # 80005a00 <console_handler>
            break;
    80001bb0:	1340006f          	j	80001ce4 <_ZN5Riscv11trapHandlerEv+0x228>
    80001bb4:	05100693          	li	a3,81
    80001bb8:	04d79663          	bne	a5,a3,80001c04 <_ZN5Riscv11trapHandlerEv+0x148>
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001bbc:	100a1073          	csrw	sstatus,s4
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80001bc0:	10000793          	li	a5,256
    80001bc4:	1007b073          	csrc	sstatus,a5
                    w_sepc(sepc+4);
    80001bc8:	00870713          	addi	a4,a4,8
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001bcc:	14171073          	csrw	sepc,a4
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80001bd0:	00200793          	li	a5,2
    80001bd4:	1447b073          	csrc	sip,a5
}
    80001bd8:	10c0006f          	j	80001ce4 <_ZN5Riscv11trapHandlerEv+0x228>
        static MemoryAllocator instance;
    80001bdc:	00006797          	auipc	a5,0x6
    80001be0:	84c7c783          	lbu	a5,-1972(a5) # 80007428 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80001be4:	00079863          	bnez	a5,80001bf4 <_ZN5Riscv11trapHandlerEv+0x138>
    80001be8:	00100793          	li	a5,1
    80001bec:	00006717          	auipc	a4,0x6
    80001bf0:	82f70e23          	sb	a5,-1988(a4) # 80007428 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
                    mem = MemoryAllocator::getInstance().allocate((size_t) a1);
    80001bf4:	00048513          	mv	a0,s1
    80001bf8:	00000097          	auipc	ra,0x0
    80001bfc:	114080e7          	jalr	276(ra) # 80001d0c <_ZN15MemoryAllocator8allocateEm>
}

inline void Riscv::push_a0(long a0) {
    __asm__ volatile ("sd %0, 10*8(fp)" : : "r"(a0));
    80001c00:	04a43823          	sd	a0,80(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001c04:	100a1073          	csrw	sstatus,s4
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001c08:	141a9073          	csrw	sepc,s5
}
    80001c0c:	0d80006f          	j	80001ce4 <_ZN5Riscv11trapHandlerEv+0x228>
    80001c10:	00006797          	auipc	a5,0x6
    80001c14:	8187c783          	lbu	a5,-2024(a5) # 80007428 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80001c18:	00079863          	bnez	a5,80001c28 <_ZN5Riscv11trapHandlerEv+0x16c>
    80001c1c:	00100793          	li	a5,1
    80001c20:	00006717          	auipc	a4,0x6
    80001c24:	80f70423          	sb	a5,-2040(a4) # 80007428 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
                    push_a0(MemoryAllocator::getInstance().deallocate((void *)a1));
    80001c28:	00048513          	mv	a0,s1
    80001c2c:	00000097          	auipc	ra,0x0
    80001c30:	1c8080e7          	jalr	456(ra) # 80001df4 <_ZN15MemoryAllocator10deallocateEPv>
    __asm__ volatile ("sd %0, 10*8(fp)" : : "r"(a0));
    80001c34:	04a43823          	sd	a0,80(s0)
}
    80001c38:	fcdff06f          	j	80001c04 <_ZN5Riscv11trapHandlerEv+0x148>
                    if((uint64*)a1!= nullptr) stack = (uint64*)MemoryAllocator::getInstance().allocate(((DEFAULT_STACK_SIZE + 16+ MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE));
    80001c3c:	06048a63          	beqz	s1,80001cb0 <_ZN5Riscv11trapHandlerEv+0x1f4>
    80001c40:	00005797          	auipc	a5,0x5
    80001c44:	7e87c783          	lbu	a5,2024(a5) # 80007428 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80001c48:	00079863          	bnez	a5,80001c58 <_ZN5Riscv11trapHandlerEv+0x19c>
    80001c4c:	00100793          	li	a5,1
    80001c50:	00005717          	auipc	a4,0x5
    80001c54:	7cf70c23          	sb	a5,2008(a4) # 80007428 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80001c58:	04100513          	li	a0,65
    80001c5c:	00000097          	auipc	ra,0x0
    80001c60:	0b0080e7          	jalr	176(ra) # 80001d0c <_ZN15MemoryAllocator8allocateEm>
    80001c64:	00050b13          	mv	s6,a0
                    *handle = new PCB((PCB::Body)a1, (void*)a2, stack);
    80001c68:	03000513          	li	a0,48
    80001c6c:	00000097          	auipc	ra,0x0
    80001c70:	b80080e7          	jalr	-1152(ra) # 800017ec <_Znwm>
        this->body = body;
    80001c74:	00953023          	sd	s1,0(a0)
        this->stack = stack;
    80001c78:	01653423          	sd	s6,8(a0)
                   stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
    80001c7c:	020b0e63          	beqz	s6,80001cb8 <_ZN5Riscv11trapHandlerEv+0x1fc>
    80001c80:	000087b7          	lui	a5,0x8
    80001c84:	00fb0b33          	add	s6,s6,a5
        context = {(uint64) &wrapper,
    80001c88:	00005797          	auipc	a5,0x5
    80001c8c:	7007b783          	ld	a5,1792(a5) # 80007388 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001c90:	00f53c23          	sd	a5,24(a0)
    80001c94:	03653023          	sd	s6,32(a0)
        this->args = args;
    80001c98:	01353823          	sd	s3,16(a0)
        state = READY;
    80001c9c:	02052423          	sw	zero,40(a0)
    80001ca0:	00a93023          	sd	a0,0(s2)
    __asm__ volatile ("sd %0, 10*8(fp)" : : "r"(a0));
    80001ca4:	00000793          	li	a5,0
    80001ca8:	04f43823          	sd	a5,80(s0)
}
    80001cac:	f59ff06f          	j	80001c04 <_ZN5Riscv11trapHandlerEv+0x148>
                    else stack = nullptr;
    80001cb0:	00000b13          	li	s6,0
    80001cb4:	fb5ff06f          	j	80001c68 <_ZN5Riscv11trapHandlerEv+0x1ac>
                   stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
    80001cb8:	00000b13          	li	s6,0
    80001cbc:	fcdff06f          	j	80001c88 <_ZN5Riscv11trapHandlerEv+0x1cc>
                    push_a0(PCB::exit());
    80001cc0:	fffff097          	auipc	ra,0xfffff
    80001cc4:	7a0080e7          	jalr	1952(ra) # 80001460 <_ZN3PCB4exitEv>
    __asm__ volatile ("sd %0, 10*8(fp)" : : "r"(a0));
    80001cc8:	04a43823          	sd	a0,80(s0)
}
    80001ccc:	f39ff06f          	j	80001c04 <_ZN5Riscv11trapHandlerEv+0x148>
                    PCB::dispatch();
    80001cd0:	fffff097          	auipc	ra,0xfffff
    80001cd4:	708080e7          	jalr	1800(ra) # 800013d8 <_ZN3PCB8dispatchEv>
                    break;
    80001cd8:	f2dff06f          	j	80001c04 <_ZN5Riscv11trapHandlerEv+0x148>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80001cdc:	00200793          	li	a5,2
    80001ce0:	1447b073          	csrc	sip,a5
        default:
            return;
            //printString("ERROR: Unexpected interrupt!");
    }

    80001ce4:	07813083          	ld	ra,120(sp)
    80001ce8:	07013403          	ld	s0,112(sp)
    80001cec:	06813483          	ld	s1,104(sp)
    80001cf0:	06013903          	ld	s2,96(sp)
    80001cf4:	05813983          	ld	s3,88(sp)
    80001cf8:	05013a03          	ld	s4,80(sp)
    80001cfc:	04813a83          	ld	s5,72(sp)
    80001d00:	04013b03          	ld	s6,64(sp)
    80001d04:	08010113          	addi	sp,sp,128
    80001d08:	00008067          	ret

0000000080001d0c <_ZN15MemoryAllocator8allocateEm>:
Block *MemoryAllocator::free_list = nullptr;
Block *MemoryAllocator::allocated_list = nullptr;


// Allocate memory
void *MemoryAllocator::allocate(size_t size) {
    80001d0c:	ff010113          	addi	sp,sp,-16
    80001d10:	00813423          	sd	s0,8(sp)
    80001d14:	01010413          	addi	s0,sp,16
    80001d18:	00050613          	mv	a2,a0
    size_t sizeToAllocate = size * MEM_BLOCK_SIZE;
    80001d1c:	00651713          	slli	a4,a0,0x6

    Block *prev = nullptr;
    Block *current = free_list;
    80001d20:	00005517          	auipc	a0,0x5
    80001d24:	71053503          	ld	a0,1808(a0) # 80007430 <_ZN15MemoryAllocator9free_listE>
    Block *prev = nullptr;
    80001d28:	00000693          	li	a3,0

    // Find a free block that is large enough
    while (current != nullptr) {
    80001d2c:	06050e63          	beqz	a0,80001da8 <_ZN15MemoryAllocator8allocateEm+0x9c>

        if (current->size >= sizeToAllocate) {
    80001d30:	00053783          	ld	a5,0(a0)
    80001d34:	00e7f863          	bgeu	a5,a4,80001d44 <_ZN15MemoryAllocator8allocateEm+0x38>
            // Return the memory

            void *userPtr = (Block *) ((uint64 *) current + sizeof(Block));
            return userPtr;
        }
        prev = current;
    80001d38:	00050693          	mv	a3,a0
        current = current->next;
    80001d3c:	00853503          	ld	a0,8(a0)
    while (current != nullptr) {
    80001d40:	fedff06f          	j	80001d2c <_ZN15MemoryAllocator8allocateEm+0x20>
            if (prev == nullptr) {
    80001d44:	06068863          	beqz	a3,80001db4 <_ZN15MemoryAllocator8allocateEm+0xa8>
                prev->next = current->next;
    80001d48:	00853783          	ld	a5,8(a0)
    80001d4c:	00f6b423          	sd	a5,8(a3)
            if (current->size - sizeToAllocate >= MEM_BLOCK_SIZE) {
    80001d50:	00053783          	ld	a5,0(a0)
    80001d54:	40e787b3          	sub	a5,a5,a4
    80001d58:	03f00593          	li	a1,63
    80001d5c:	02f5f863          	bgeu	a1,a5,80001d8c <_ZN15MemoryAllocator8allocateEm+0x80>
                Block *newBlock = (Block *) ((uint64 *) current + sizeToAllocate);
    80001d60:	00961613          	slli	a2,a2,0x9
    80001d64:	00c50633          	add	a2,a0,a2
                newBlock->size = current->size - sizeToAllocate;
    80001d68:	00f63023          	sd	a5,0(a2)
                current->size = sizeToAllocate;
    80001d6c:	00e53023          	sd	a4,0(a0)
                if (!free_list) {
    80001d70:	00005797          	auipc	a5,0x5
    80001d74:	6c07b783          	ld	a5,1728(a5) # 80007430 <_ZN15MemoryAllocator9free_listE>
    80001d78:	04078663          	beqz	a5,80001dc4 <_ZN15MemoryAllocator8allocateEm+0xb8>
                } else if (!prev) {
    80001d7c:	04068c63          	beqz	a3,80001dd4 <_ZN15MemoryAllocator8allocateEm+0xc8>
                    prev->next = newBlock;
    80001d80:	00c6b423          	sd	a2,8(a3)
                    newBlock->next = current->next;
    80001d84:	00853783          	ld	a5,8(a0)
    80001d88:	00f63423          	sd	a5,8(a2)
            if (!allocated_list) {
    80001d8c:	00005797          	auipc	a5,0x5
    80001d90:	6ac7b783          	ld	a5,1708(a5) # 80007438 <_ZN15MemoryAllocator14allocated_listE>
    80001d94:	04078863          	beqz	a5,80001de4 <_ZN15MemoryAllocator8allocateEm+0xd8>
                current->next = allocated_list;
    80001d98:	00f53423          	sd	a5,8(a0)
                allocated_list = current;
    80001d9c:	00005797          	auipc	a5,0x5
    80001da0:	68a7be23          	sd	a0,1692(a5) # 80007438 <_ZN15MemoryAllocator14allocated_listE>
            void *userPtr = (Block *) ((uint64 *) current + sizeof(Block));
    80001da4:	08050513          	addi	a0,a0,128
    }

    // No block was found
    return nullptr;
}
    80001da8:	00813403          	ld	s0,8(sp)
    80001dac:	01010113          	addi	sp,sp,16
    80001db0:	00008067          	ret
                free_list = current->next;
    80001db4:	00853783          	ld	a5,8(a0)
    80001db8:	00005597          	auipc	a1,0x5
    80001dbc:	66f5bc23          	sd	a5,1656(a1) # 80007430 <_ZN15MemoryAllocator9free_listE>
    80001dc0:	f91ff06f          	j	80001d50 <_ZN15MemoryAllocator8allocateEm+0x44>
                    free_list = newBlock;
    80001dc4:	00005797          	auipc	a5,0x5
    80001dc8:	66c7b623          	sd	a2,1644(a5) # 80007430 <_ZN15MemoryAllocator9free_listE>
                    newBlock->next = nullptr;
    80001dcc:	00063423          	sd	zero,8(a2)
    80001dd0:	fbdff06f          	j	80001d8c <_ZN15MemoryAllocator8allocateEm+0x80>
                    newBlock->next = free_list;
    80001dd4:	00f63423          	sd	a5,8(a2)
                    free_list = newBlock;
    80001dd8:	00005797          	auipc	a5,0x5
    80001ddc:	64c7bc23          	sd	a2,1624(a5) # 80007430 <_ZN15MemoryAllocator9free_listE>
    80001de0:	fadff06f          	j	80001d8c <_ZN15MemoryAllocator8allocateEm+0x80>
                allocated_list = current;
    80001de4:	00005797          	auipc	a5,0x5
    80001de8:	64a7ba23          	sd	a0,1620(a5) # 80007438 <_ZN15MemoryAllocator14allocated_listE>
                allocated_list->next = nullptr;
    80001dec:	00053423          	sd	zero,8(a0)
    80001df0:	fb5ff06f          	j	80001da4 <_ZN15MemoryAllocator8allocateEm+0x98>

0000000080001df4 <_ZN15MemoryAllocator10deallocateEPv>:

// Deallocate memory
int MemoryAllocator::deallocate(void *ptr) {
    80001df4:	ff010113          	addi	sp,sp,-16
    80001df8:	00813423          	sd	s0,8(sp)
    80001dfc:	01010413          	addi	s0,sp,16
    Block *block = (Block *) ((uint64 *) ptr - sizeof(Block));
    80001e00:	f8050713          	addi	a4,a0,-128
    Block *tmpPrev = nullptr;
    Block *tmp = allocated_list;
    80001e04:	00005797          	auipc	a5,0x5
    80001e08:	6347b783          	ld	a5,1588(a5) # 80007438 <_ZN15MemoryAllocator14allocated_listE>
    Block *tmpPrev = nullptr;
    80001e0c:	00000693          	li	a3,0
    uint8 flag = 0;

    //Check if the block given was previously allocated
    while (tmp) {
    80001e10:	00078a63          	beqz	a5,80001e24 <_ZN15MemoryAllocator10deallocateEPv+0x30>
        if (tmp == block) {
    80001e14:	04e78263          	beq	a5,a4,80001e58 <_ZN15MemoryAllocator10deallocateEPv+0x64>
            flag = 1;
            break;
        }
        tmpPrev = tmp;
    80001e18:	00078693          	mv	a3,a5
        tmp = tmp->next;
    80001e1c:	0087b783          	ld	a5,8(a5)
    while (tmp) {
    80001e20:	ff1ff06f          	j	80001e10 <_ZN15MemoryAllocator10deallocateEPv+0x1c>
    uint8 flag = 0;
    80001e24:	00000613          	li	a2,0
    }
    if (flag == 0) return -1;
    80001e28:	0e060263          	beqz	a2,80001f0c <_ZN15MemoryAllocator10deallocateEPv+0x118>

    // Found a block, remove it from the allocated list
    if (tmpPrev != nullptr) {
    80001e2c:	02068a63          	beqz	a3,80001e60 <_ZN15MemoryAllocator10deallocateEPv+0x6c>
        tmpPrev->next = tmp->next;
    80001e30:	0087b783          	ld	a5,8(a5)
    80001e34:	00f6b423          	sd	a5,8(a3)
        allocated_list = tmp->next;
    }


    Block *prev = nullptr;
    Block *current = free_list;
    80001e38:	00005797          	auipc	a5,0x5
    80001e3c:	5f87b783          	ld	a5,1528(a5) # 80007430 <_ZN15MemoryAllocator9free_listE>
    Block *prev = nullptr;
    80001e40:	00000693          	li	a3,0

    // Add it to the free_list
    while (current != nullptr) {
    80001e44:	02078c63          	beqz	a5,80001e7c <_ZN15MemoryAllocator10deallocateEPv+0x88>
        if ((uint64 *) block < (uint64 *) current) {
    80001e48:	02f76463          	bltu	a4,a5,80001e70 <_ZN15MemoryAllocator10deallocateEPv+0x7c>
            } else {
                free_list = block;
            }
            break;
        }
        prev = current;
    80001e4c:	00078693          	mv	a3,a5
        current = current->next;
    80001e50:	0087b783          	ld	a5,8(a5)
    while (current != nullptr) {
    80001e54:	ff1ff06f          	j	80001e44 <_ZN15MemoryAllocator10deallocateEPv+0x50>
            flag = 1;
    80001e58:	00100613          	li	a2,1
    80001e5c:	fcdff06f          	j	80001e28 <_ZN15MemoryAllocator10deallocateEPv+0x34>
        allocated_list = tmp->next;
    80001e60:	0087b783          	ld	a5,8(a5)
    80001e64:	00005697          	auipc	a3,0x5
    80001e68:	5cf6ba23          	sd	a5,1492(a3) # 80007438 <_ZN15MemoryAllocator14allocated_listE>
    80001e6c:	fcdff06f          	j	80001e38 <_ZN15MemoryAllocator10deallocateEPv+0x44>
            block->next = current;
    80001e70:	f8f53423          	sd	a5,-120(a0)
            if (prev != nullptr) {
    80001e74:	04068463          	beqz	a3,80001ebc <_ZN15MemoryAllocator10deallocateEPv+0xc8>
                prev->next = block;
    80001e78:	00e6b423          	sd	a4,8(a3)
    }
    if (current == nullptr) {
    80001e7c:	04078663          	beqz	a5,80001ec8 <_ZN15MemoryAllocator10deallocateEPv+0xd4>
        //current = block;
        block->next = nullptr;
    }

    //Merge it with neighbour blocks if possible
    if (prev != nullptr) {
    80001e80:	00068a63          	beqz	a3,80001e94 <_ZN15MemoryAllocator10deallocateEPv+0xa0>
        if ((uint64 *) prev + prev->size == (uint64 *) block) {
    80001e84:	0006b603          	ld	a2,0(a3)
    80001e88:	00361793          	slli	a5,a2,0x3
    80001e8c:	00f687b3          	add	a5,a3,a5
    80001e90:	04e78263          	beq	a5,a4,80001ed4 <_ZN15MemoryAllocator10deallocateEPv+0xe0>
            prev->size = prev->size + block->size;
            prev->next = block->next;
            block = prev;
        }
    }
    if (block->next != nullptr) {
    80001e94:	00873783          	ld	a5,8(a4)
    80001e98:	06078e63          	beqz	a5,80001f14 <_ZN15MemoryAllocator10deallocateEPv+0x120>
        if ((uint64 *) block + block->size == (uint64 *) block->next) {
    80001e9c:	00073603          	ld	a2,0(a4)
    80001ea0:	00361693          	slli	a3,a2,0x3
    80001ea4:	00d706b3          	add	a3,a4,a3
    80001ea8:	04d78463          	beq	a5,a3,80001ef0 <_ZN15MemoryAllocator10deallocateEPv+0xfc>
            block->size += block->next->size;
            block->next = block->next->next;
        }
    }

    return 0;
    80001eac:	00000513          	li	a0,0

}
    80001eb0:	00813403          	ld	s0,8(sp)
    80001eb4:	01010113          	addi	sp,sp,16
    80001eb8:	00008067          	ret
                free_list = block;
    80001ebc:	00005617          	auipc	a2,0x5
    80001ec0:	56e63a23          	sd	a4,1396(a2) # 80007430 <_ZN15MemoryAllocator9free_listE>
    80001ec4:	fb9ff06f          	j	80001e7c <_ZN15MemoryAllocator10deallocateEPv+0x88>
        prev->next = block;
    80001ec8:	00e6b423          	sd	a4,8(a3)
        block->next = nullptr;
    80001ecc:	f8053423          	sd	zero,-120(a0)
    80001ed0:	fb1ff06f          	j	80001e80 <_ZN15MemoryAllocator10deallocateEPv+0x8c>
            prev->size = prev->size + block->size;
    80001ed4:	f8053783          	ld	a5,-128(a0)
    80001ed8:	00f60633          	add	a2,a2,a5
    80001edc:	00c6b023          	sd	a2,0(a3)
            prev->next = block->next;
    80001ee0:	f8853783          	ld	a5,-120(a0)
    80001ee4:	00f6b423          	sd	a5,8(a3)
            block = prev;
    80001ee8:	00068713          	mv	a4,a3
    80001eec:	fa9ff06f          	j	80001e94 <_ZN15MemoryAllocator10deallocateEPv+0xa0>
            block->size += block->next->size;
    80001ef0:	0007b683          	ld	a3,0(a5)
    80001ef4:	00d60633          	add	a2,a2,a3
    80001ef8:	00c73023          	sd	a2,0(a4)
            block->next = block->next->next;
    80001efc:	0087b783          	ld	a5,8(a5)
    80001f00:	00f73423          	sd	a5,8(a4)
    return 0;
    80001f04:	00000513          	li	a0,0
    80001f08:	fa9ff06f          	j	80001eb0 <_ZN15MemoryAllocator10deallocateEPv+0xbc>
    if (flag == 0) return -1;
    80001f0c:	fff00513          	li	a0,-1
    80001f10:	fa1ff06f          	j	80001eb0 <_ZN15MemoryAllocator10deallocateEPv+0xbc>
    return 0;
    80001f14:	00000513          	li	a0,0
    80001f18:	f99ff06f          	j	80001eb0 <_ZN15MemoryAllocator10deallocateEPv+0xbc>

0000000080001f1c <_Z4putcc>:
//
//    while (--i >= 0)
//        __putc(buf[i]);
//}

void putc(char c){
    80001f1c:	ff010113          	addi	sp,sp,-16
    80001f20:	00113423          	sd	ra,8(sp)
    80001f24:	00813023          	sd	s0,0(sp)
    80001f28:	01010413          	addi	s0,sp,16
    __putc(c);
    80001f2c:	00004097          	auipc	ra,0x4
    80001f30:	a60080e7          	jalr	-1440(ra) # 8000598c <__putc>
}
    80001f34:	00813083          	ld	ra,8(sp)
    80001f38:	00013403          	ld	s0,0(sp)
    80001f3c:	01010113          	addi	sp,sp,16
    80001f40:	00008067          	ret

0000000080001f44 <_Z4getcv>:

char getc(){
    80001f44:	ff010113          	addi	sp,sp,-16
    80001f48:	00113423          	sd	ra,8(sp)
    80001f4c:	00813023          	sd	s0,0(sp)
    80001f50:	01010413          	addi	s0,sp,16
    return __getc();
    80001f54:	00004097          	auipc	ra,0x4
    80001f58:	a74080e7          	jalr	-1420(ra) # 800059c8 <__getc>
    80001f5c:	00813083          	ld	ra,8(sp)
    80001f60:	00013403          	ld	s0,0(sp)
    80001f64:	01010113          	addi	sp,sp,16
    80001f68:	00008067          	ret

0000000080001f6c <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80001f6c:	fe010113          	addi	sp,sp,-32
    80001f70:	00113c23          	sd	ra,24(sp)
    80001f74:	00813823          	sd	s0,16(sp)
    80001f78:	00913423          	sd	s1,8(sp)
    80001f7c:	01213023          	sd	s2,0(sp)
    80001f80:	02010413          	addi	s0,sp,32
    80001f84:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80001f88:	00100793          	li	a5,1
    80001f8c:	02a7f863          	bgeu	a5,a0,80001fbc <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80001f90:	00a00793          	li	a5,10
    80001f94:	02f577b3          	remu	a5,a0,a5
    80001f98:	02078e63          	beqz	a5,80001fd4 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80001f9c:	fff48513          	addi	a0,s1,-1
    80001fa0:	00000097          	auipc	ra,0x0
    80001fa4:	fcc080e7          	jalr	-52(ra) # 80001f6c <_ZL9fibonaccim>
    80001fa8:	00050913          	mv	s2,a0
    80001fac:	ffe48513          	addi	a0,s1,-2
    80001fb0:	00000097          	auipc	ra,0x0
    80001fb4:	fbc080e7          	jalr	-68(ra) # 80001f6c <_ZL9fibonaccim>
    80001fb8:	00a90533          	add	a0,s2,a0
}
    80001fbc:	01813083          	ld	ra,24(sp)
    80001fc0:	01013403          	ld	s0,16(sp)
    80001fc4:	00813483          	ld	s1,8(sp)
    80001fc8:	00013903          	ld	s2,0(sp)
    80001fcc:	02010113          	addi	sp,sp,32
    80001fd0:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80001fd4:	fffff097          	auipc	ra,0xfffff
    80001fd8:	3c0080e7          	jalr	960(ra) # 80001394 <_Z15thread_dispatchv>
    80001fdc:	fc1ff06f          	j	80001f9c <_ZL9fibonaccim+0x30>

0000000080001fe0 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    80001fe0:	fe010113          	addi	sp,sp,-32
    80001fe4:	00113c23          	sd	ra,24(sp)
    80001fe8:	00813823          	sd	s0,16(sp)
    80001fec:	00913423          	sd	s1,8(sp)
    80001ff0:	01213023          	sd	s2,0(sp)
    80001ff4:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80001ff8:	00000913          	li	s2,0
    80001ffc:	0380006f          	j	80002034 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80002000:	fffff097          	auipc	ra,0xfffff
    80002004:	394080e7          	jalr	916(ra) # 80001394 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80002008:	00148493          	addi	s1,s1,1
    8000200c:	000027b7          	lui	a5,0x2
    80002010:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80002014:	0097ee63          	bltu	a5,s1,80002030 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80002018:	00000713          	li	a4,0
    8000201c:	000077b7          	lui	a5,0x7
    80002020:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80002024:	fce7eee3          	bltu	a5,a4,80002000 <_ZN7WorkerA11workerBodyAEPv+0x20>
    80002028:	00170713          	addi	a4,a4,1
    8000202c:	ff1ff06f          	j	8000201c <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80002030:	00190913          	addi	s2,s2,1
    80002034:	00900793          	li	a5,9
    80002038:	0527e063          	bltu	a5,s2,80002078 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    8000203c:	00004517          	auipc	a0,0x4
    80002040:	03450513          	addi	a0,a0,52 # 80006070 <CONSOLE_STATUS+0x60>
    80002044:	00001097          	auipc	ra,0x1
    80002048:	e9c080e7          	jalr	-356(ra) # 80002ee0 <_Z11printStringPKc>
    8000204c:	00000613          	li	a2,0
    80002050:	00a00593          	li	a1,10
    80002054:	0009051b          	sext.w	a0,s2
    80002058:	00001097          	auipc	ra,0x1
    8000205c:	038080e7          	jalr	56(ra) # 80003090 <_Z8printIntiii>
    80002060:	00004517          	auipc	a0,0x4
    80002064:	3b850513          	addi	a0,a0,952 # 80006418 <CONSOLE_STATUS+0x408>
    80002068:	00001097          	auipc	ra,0x1
    8000206c:	e78080e7          	jalr	-392(ra) # 80002ee0 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80002070:	00000493          	li	s1,0
    80002074:	f99ff06f          	j	8000200c <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80002078:	00004517          	auipc	a0,0x4
    8000207c:	00050513          	mv	a0,a0
    80002080:	00001097          	auipc	ra,0x1
    80002084:	e60080e7          	jalr	-416(ra) # 80002ee0 <_Z11printStringPKc>
    finishedA = true;
    80002088:	00100793          	li	a5,1
    8000208c:	00005717          	auipc	a4,0x5
    80002090:	3af70a23          	sb	a5,948(a4) # 80007440 <_ZL9finishedA>
}
    80002094:	01813083          	ld	ra,24(sp)
    80002098:	01013403          	ld	s0,16(sp)
    8000209c:	00813483          	ld	s1,8(sp)
    800020a0:	00013903          	ld	s2,0(sp)
    800020a4:	02010113          	addi	sp,sp,32
    800020a8:	00008067          	ret

00000000800020ac <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    800020ac:	fe010113          	addi	sp,sp,-32
    800020b0:	00113c23          	sd	ra,24(sp)
    800020b4:	00813823          	sd	s0,16(sp)
    800020b8:	00913423          	sd	s1,8(sp)
    800020bc:	01213023          	sd	s2,0(sp)
    800020c0:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800020c4:	00000913          	li	s2,0
    800020c8:	0380006f          	j	80002100 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    800020cc:	fffff097          	auipc	ra,0xfffff
    800020d0:	2c8080e7          	jalr	712(ra) # 80001394 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800020d4:	00148493          	addi	s1,s1,1
    800020d8:	000027b7          	lui	a5,0x2
    800020dc:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800020e0:	0097ee63          	bltu	a5,s1,800020fc <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800020e4:	00000713          	li	a4,0
    800020e8:	000077b7          	lui	a5,0x7
    800020ec:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800020f0:	fce7eee3          	bltu	a5,a4,800020cc <_ZN7WorkerB11workerBodyBEPv+0x20>
    800020f4:	00170713          	addi	a4,a4,1
    800020f8:	ff1ff06f          	j	800020e8 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    800020fc:	00190913          	addi	s2,s2,1
    80002100:	00f00793          	li	a5,15
    80002104:	0527e063          	bltu	a5,s2,80002144 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80002108:	00004517          	auipc	a0,0x4
    8000210c:	f8050513          	addi	a0,a0,-128 # 80006088 <CONSOLE_STATUS+0x78>
    80002110:	00001097          	auipc	ra,0x1
    80002114:	dd0080e7          	jalr	-560(ra) # 80002ee0 <_Z11printStringPKc>
    80002118:	00000613          	li	a2,0
    8000211c:	00a00593          	li	a1,10
    80002120:	0009051b          	sext.w	a0,s2
    80002124:	00001097          	auipc	ra,0x1
    80002128:	f6c080e7          	jalr	-148(ra) # 80003090 <_Z8printIntiii>
    8000212c:	00004517          	auipc	a0,0x4
    80002130:	2ec50513          	addi	a0,a0,748 # 80006418 <CONSOLE_STATUS+0x408>
    80002134:	00001097          	auipc	ra,0x1
    80002138:	dac080e7          	jalr	-596(ra) # 80002ee0 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000213c:	00000493          	li	s1,0
    80002140:	f99ff06f          	j	800020d8 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80002144:	00004517          	auipc	a0,0x4
    80002148:	f4c50513          	addi	a0,a0,-180 # 80006090 <CONSOLE_STATUS+0x80>
    8000214c:	00001097          	auipc	ra,0x1
    80002150:	d94080e7          	jalr	-620(ra) # 80002ee0 <_Z11printStringPKc>
    finishedB = true;
    80002154:	00100793          	li	a5,1
    80002158:	00005717          	auipc	a4,0x5
    8000215c:	2ef704a3          	sb	a5,745(a4) # 80007441 <_ZL9finishedB>
    thread_dispatch();
    80002160:	fffff097          	auipc	ra,0xfffff
    80002164:	234080e7          	jalr	564(ra) # 80001394 <_Z15thread_dispatchv>
}
    80002168:	01813083          	ld	ra,24(sp)
    8000216c:	01013403          	ld	s0,16(sp)
    80002170:	00813483          	ld	s1,8(sp)
    80002174:	00013903          	ld	s2,0(sp)
    80002178:	02010113          	addi	sp,sp,32
    8000217c:	00008067          	ret

0000000080002180 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80002180:	fe010113          	addi	sp,sp,-32
    80002184:	00113c23          	sd	ra,24(sp)
    80002188:	00813823          	sd	s0,16(sp)
    8000218c:	00913423          	sd	s1,8(sp)
    80002190:	01213023          	sd	s2,0(sp)
    80002194:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80002198:	00000493          	li	s1,0
    8000219c:	0400006f          	j	800021dc <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    800021a0:	00004517          	auipc	a0,0x4
    800021a4:	f0050513          	addi	a0,a0,-256 # 800060a0 <CONSOLE_STATUS+0x90>
    800021a8:	00001097          	auipc	ra,0x1
    800021ac:	d38080e7          	jalr	-712(ra) # 80002ee0 <_Z11printStringPKc>
    800021b0:	00000613          	li	a2,0
    800021b4:	00a00593          	li	a1,10
    800021b8:	00048513          	mv	a0,s1
    800021bc:	00001097          	auipc	ra,0x1
    800021c0:	ed4080e7          	jalr	-300(ra) # 80003090 <_Z8printIntiii>
    800021c4:	00004517          	auipc	a0,0x4
    800021c8:	25450513          	addi	a0,a0,596 # 80006418 <CONSOLE_STATUS+0x408>
    800021cc:	00001097          	auipc	ra,0x1
    800021d0:	d14080e7          	jalr	-748(ra) # 80002ee0 <_Z11printStringPKc>
    for (; i < 3; i++) {
    800021d4:	0014849b          	addiw	s1,s1,1
    800021d8:	0ff4f493          	andi	s1,s1,255
    800021dc:	00200793          	li	a5,2
    800021e0:	fc97f0e3          	bgeu	a5,s1,800021a0 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    800021e4:	00004517          	auipc	a0,0x4
    800021e8:	ec450513          	addi	a0,a0,-316 # 800060a8 <CONSOLE_STATUS+0x98>
    800021ec:	00001097          	auipc	ra,0x1
    800021f0:	cf4080e7          	jalr	-780(ra) # 80002ee0 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800021f4:	00700313          	li	t1,7
    thread_dispatch();
    800021f8:	fffff097          	auipc	ra,0xfffff
    800021fc:	19c080e7          	jalr	412(ra) # 80001394 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80002200:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80002204:	00004517          	auipc	a0,0x4
    80002208:	eb450513          	addi	a0,a0,-332 # 800060b8 <CONSOLE_STATUS+0xa8>
    8000220c:	00001097          	auipc	ra,0x1
    80002210:	cd4080e7          	jalr	-812(ra) # 80002ee0 <_Z11printStringPKc>
    80002214:	00000613          	li	a2,0
    80002218:	00a00593          	li	a1,10
    8000221c:	0009051b          	sext.w	a0,s2
    80002220:	00001097          	auipc	ra,0x1
    80002224:	e70080e7          	jalr	-400(ra) # 80003090 <_Z8printIntiii>
    80002228:	00004517          	auipc	a0,0x4
    8000222c:	1f050513          	addi	a0,a0,496 # 80006418 <CONSOLE_STATUS+0x408>
    80002230:	00001097          	auipc	ra,0x1
    80002234:	cb0080e7          	jalr	-848(ra) # 80002ee0 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80002238:	00c00513          	li	a0,12
    8000223c:	00000097          	auipc	ra,0x0
    80002240:	d30080e7          	jalr	-720(ra) # 80001f6c <_ZL9fibonaccim>
    80002244:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80002248:	00004517          	auipc	a0,0x4
    8000224c:	e7850513          	addi	a0,a0,-392 # 800060c0 <CONSOLE_STATUS+0xb0>
    80002250:	00001097          	auipc	ra,0x1
    80002254:	c90080e7          	jalr	-880(ra) # 80002ee0 <_Z11printStringPKc>
    80002258:	00000613          	li	a2,0
    8000225c:	00a00593          	li	a1,10
    80002260:	0009051b          	sext.w	a0,s2
    80002264:	00001097          	auipc	ra,0x1
    80002268:	e2c080e7          	jalr	-468(ra) # 80003090 <_Z8printIntiii>
    8000226c:	00004517          	auipc	a0,0x4
    80002270:	1ac50513          	addi	a0,a0,428 # 80006418 <CONSOLE_STATUS+0x408>
    80002274:	00001097          	auipc	ra,0x1
    80002278:	c6c080e7          	jalr	-916(ra) # 80002ee0 <_Z11printStringPKc>
    8000227c:	0400006f          	j	800022bc <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80002280:	00004517          	auipc	a0,0x4
    80002284:	e2050513          	addi	a0,a0,-480 # 800060a0 <CONSOLE_STATUS+0x90>
    80002288:	00001097          	auipc	ra,0x1
    8000228c:	c58080e7          	jalr	-936(ra) # 80002ee0 <_Z11printStringPKc>
    80002290:	00000613          	li	a2,0
    80002294:	00a00593          	li	a1,10
    80002298:	00048513          	mv	a0,s1
    8000229c:	00001097          	auipc	ra,0x1
    800022a0:	df4080e7          	jalr	-524(ra) # 80003090 <_Z8printIntiii>
    800022a4:	00004517          	auipc	a0,0x4
    800022a8:	17450513          	addi	a0,a0,372 # 80006418 <CONSOLE_STATUS+0x408>
    800022ac:	00001097          	auipc	ra,0x1
    800022b0:	c34080e7          	jalr	-972(ra) # 80002ee0 <_Z11printStringPKc>
    for (; i < 6; i++) {
    800022b4:	0014849b          	addiw	s1,s1,1
    800022b8:	0ff4f493          	andi	s1,s1,255
    800022bc:	00500793          	li	a5,5
    800022c0:	fc97f0e3          	bgeu	a5,s1,80002280 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    800022c4:	00004517          	auipc	a0,0x4
    800022c8:	db450513          	addi	a0,a0,-588 # 80006078 <CONSOLE_STATUS+0x68>
    800022cc:	00001097          	auipc	ra,0x1
    800022d0:	c14080e7          	jalr	-1004(ra) # 80002ee0 <_Z11printStringPKc>
    finishedC = true;
    800022d4:	00100793          	li	a5,1
    800022d8:	00005717          	auipc	a4,0x5
    800022dc:	16f70523          	sb	a5,362(a4) # 80007442 <_ZL9finishedC>
    thread_dispatch();
    800022e0:	fffff097          	auipc	ra,0xfffff
    800022e4:	0b4080e7          	jalr	180(ra) # 80001394 <_Z15thread_dispatchv>
}
    800022e8:	01813083          	ld	ra,24(sp)
    800022ec:	01013403          	ld	s0,16(sp)
    800022f0:	00813483          	ld	s1,8(sp)
    800022f4:	00013903          	ld	s2,0(sp)
    800022f8:	02010113          	addi	sp,sp,32
    800022fc:	00008067          	ret

0000000080002300 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80002300:	fe010113          	addi	sp,sp,-32
    80002304:	00113c23          	sd	ra,24(sp)
    80002308:	00813823          	sd	s0,16(sp)
    8000230c:	00913423          	sd	s1,8(sp)
    80002310:	01213023          	sd	s2,0(sp)
    80002314:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80002318:	00a00493          	li	s1,10
    8000231c:	0400006f          	j	8000235c <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80002320:	00004517          	auipc	a0,0x4
    80002324:	db050513          	addi	a0,a0,-592 # 800060d0 <CONSOLE_STATUS+0xc0>
    80002328:	00001097          	auipc	ra,0x1
    8000232c:	bb8080e7          	jalr	-1096(ra) # 80002ee0 <_Z11printStringPKc>
    80002330:	00000613          	li	a2,0
    80002334:	00a00593          	li	a1,10
    80002338:	00048513          	mv	a0,s1
    8000233c:	00001097          	auipc	ra,0x1
    80002340:	d54080e7          	jalr	-684(ra) # 80003090 <_Z8printIntiii>
    80002344:	00004517          	auipc	a0,0x4
    80002348:	0d450513          	addi	a0,a0,212 # 80006418 <CONSOLE_STATUS+0x408>
    8000234c:	00001097          	auipc	ra,0x1
    80002350:	b94080e7          	jalr	-1132(ra) # 80002ee0 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80002354:	0014849b          	addiw	s1,s1,1
    80002358:	0ff4f493          	andi	s1,s1,255
    8000235c:	00c00793          	li	a5,12
    80002360:	fc97f0e3          	bgeu	a5,s1,80002320 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80002364:	00004517          	auipc	a0,0x4
    80002368:	d7450513          	addi	a0,a0,-652 # 800060d8 <CONSOLE_STATUS+0xc8>
    8000236c:	00001097          	auipc	ra,0x1
    80002370:	b74080e7          	jalr	-1164(ra) # 80002ee0 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80002374:	00500313          	li	t1,5
    thread_dispatch();
    80002378:	fffff097          	auipc	ra,0xfffff
    8000237c:	01c080e7          	jalr	28(ra) # 80001394 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80002380:	01000513          	li	a0,16
    80002384:	00000097          	auipc	ra,0x0
    80002388:	be8080e7          	jalr	-1048(ra) # 80001f6c <_ZL9fibonaccim>
    8000238c:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80002390:	00004517          	auipc	a0,0x4
    80002394:	d5850513          	addi	a0,a0,-680 # 800060e8 <CONSOLE_STATUS+0xd8>
    80002398:	00001097          	auipc	ra,0x1
    8000239c:	b48080e7          	jalr	-1208(ra) # 80002ee0 <_Z11printStringPKc>
    800023a0:	00000613          	li	a2,0
    800023a4:	00a00593          	li	a1,10
    800023a8:	0009051b          	sext.w	a0,s2
    800023ac:	00001097          	auipc	ra,0x1
    800023b0:	ce4080e7          	jalr	-796(ra) # 80003090 <_Z8printIntiii>
    800023b4:	00004517          	auipc	a0,0x4
    800023b8:	06450513          	addi	a0,a0,100 # 80006418 <CONSOLE_STATUS+0x408>
    800023bc:	00001097          	auipc	ra,0x1
    800023c0:	b24080e7          	jalr	-1244(ra) # 80002ee0 <_Z11printStringPKc>
    800023c4:	0400006f          	j	80002404 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800023c8:	00004517          	auipc	a0,0x4
    800023cc:	d0850513          	addi	a0,a0,-760 # 800060d0 <CONSOLE_STATUS+0xc0>
    800023d0:	00001097          	auipc	ra,0x1
    800023d4:	b10080e7          	jalr	-1264(ra) # 80002ee0 <_Z11printStringPKc>
    800023d8:	00000613          	li	a2,0
    800023dc:	00a00593          	li	a1,10
    800023e0:	00048513          	mv	a0,s1
    800023e4:	00001097          	auipc	ra,0x1
    800023e8:	cac080e7          	jalr	-852(ra) # 80003090 <_Z8printIntiii>
    800023ec:	00004517          	auipc	a0,0x4
    800023f0:	02c50513          	addi	a0,a0,44 # 80006418 <CONSOLE_STATUS+0x408>
    800023f4:	00001097          	auipc	ra,0x1
    800023f8:	aec080e7          	jalr	-1300(ra) # 80002ee0 <_Z11printStringPKc>
    for (; i < 16; i++) {
    800023fc:	0014849b          	addiw	s1,s1,1
    80002400:	0ff4f493          	andi	s1,s1,255
    80002404:	00f00793          	li	a5,15
    80002408:	fc97f0e3          	bgeu	a5,s1,800023c8 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    8000240c:	00004517          	auipc	a0,0x4
    80002410:	cec50513          	addi	a0,a0,-788 # 800060f8 <CONSOLE_STATUS+0xe8>
    80002414:	00001097          	auipc	ra,0x1
    80002418:	acc080e7          	jalr	-1332(ra) # 80002ee0 <_Z11printStringPKc>
    finishedD = true;
    8000241c:	00100793          	li	a5,1
    80002420:	00005717          	auipc	a4,0x5
    80002424:	02f701a3          	sb	a5,35(a4) # 80007443 <_ZL9finishedD>
    thread_dispatch();
    80002428:	fffff097          	auipc	ra,0xfffff
    8000242c:	f6c080e7          	jalr	-148(ra) # 80001394 <_Z15thread_dispatchv>
}
    80002430:	01813083          	ld	ra,24(sp)
    80002434:	01013403          	ld	s0,16(sp)
    80002438:	00813483          	ld	s1,8(sp)
    8000243c:	00013903          	ld	s2,0(sp)
    80002440:	02010113          	addi	sp,sp,32
    80002444:	00008067          	ret

0000000080002448 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80002448:	fc010113          	addi	sp,sp,-64
    8000244c:	02113c23          	sd	ra,56(sp)
    80002450:	02813823          	sd	s0,48(sp)
    80002454:	02913423          	sd	s1,40(sp)
    80002458:	03213023          	sd	s2,32(sp)
    8000245c:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80002460:	02000513          	li	a0,32
    80002464:	fffff097          	auipc	ra,0xfffff
    80002468:	388080e7          	jalr	904(ra) # 800017ec <_Znwm>
    8000246c:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    80002470:	fffff097          	auipc	ra,0xfffff
    80002474:	514080e7          	jalr	1300(ra) # 80001984 <_ZN6ThreadC1Ev>
    80002478:	00005797          	auipc	a5,0x5
    8000247c:	e5878793          	addi	a5,a5,-424 # 800072d0 <_ZTV7WorkerA+0x10>
    80002480:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    80002484:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80002488:	00004517          	auipc	a0,0x4
    8000248c:	c8050513          	addi	a0,a0,-896 # 80006108 <CONSOLE_STATUS+0xf8>
    80002490:	00001097          	auipc	ra,0x1
    80002494:	a50080e7          	jalr	-1456(ra) # 80002ee0 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80002498:	02000513          	li	a0,32
    8000249c:	fffff097          	auipc	ra,0xfffff
    800024a0:	350080e7          	jalr	848(ra) # 800017ec <_Znwm>
    800024a4:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    800024a8:	fffff097          	auipc	ra,0xfffff
    800024ac:	4dc080e7          	jalr	1244(ra) # 80001984 <_ZN6ThreadC1Ev>
    800024b0:	00005797          	auipc	a5,0x5
    800024b4:	e4878793          	addi	a5,a5,-440 # 800072f8 <_ZTV7WorkerB+0x10>
    800024b8:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    800024bc:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    800024c0:	00004517          	auipc	a0,0x4
    800024c4:	c6050513          	addi	a0,a0,-928 # 80006120 <CONSOLE_STATUS+0x110>
    800024c8:	00001097          	auipc	ra,0x1
    800024cc:	a18080e7          	jalr	-1512(ra) # 80002ee0 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    800024d0:	02000513          	li	a0,32
    800024d4:	fffff097          	auipc	ra,0xfffff
    800024d8:	318080e7          	jalr	792(ra) # 800017ec <_Znwm>
    800024dc:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    800024e0:	fffff097          	auipc	ra,0xfffff
    800024e4:	4a4080e7          	jalr	1188(ra) # 80001984 <_ZN6ThreadC1Ev>
    800024e8:	00005797          	auipc	a5,0x5
    800024ec:	e3878793          	addi	a5,a5,-456 # 80007320 <_ZTV7WorkerC+0x10>
    800024f0:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    800024f4:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    800024f8:	00004517          	auipc	a0,0x4
    800024fc:	c4050513          	addi	a0,a0,-960 # 80006138 <CONSOLE_STATUS+0x128>
    80002500:	00001097          	auipc	ra,0x1
    80002504:	9e0080e7          	jalr	-1568(ra) # 80002ee0 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80002508:	02000513          	li	a0,32
    8000250c:	fffff097          	auipc	ra,0xfffff
    80002510:	2e0080e7          	jalr	736(ra) # 800017ec <_Znwm>
    80002514:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    80002518:	fffff097          	auipc	ra,0xfffff
    8000251c:	46c080e7          	jalr	1132(ra) # 80001984 <_ZN6ThreadC1Ev>
    80002520:	00005797          	auipc	a5,0x5
    80002524:	e2878793          	addi	a5,a5,-472 # 80007348 <_ZTV7WorkerD+0x10>
    80002528:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    8000252c:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80002530:	00004517          	auipc	a0,0x4
    80002534:	c2050513          	addi	a0,a0,-992 # 80006150 <CONSOLE_STATUS+0x140>
    80002538:	00001097          	auipc	ra,0x1
    8000253c:	9a8080e7          	jalr	-1624(ra) # 80002ee0 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80002540:	00000493          	li	s1,0
    80002544:	00300793          	li	a5,3
    80002548:	0297c663          	blt	a5,s1,80002574 <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    8000254c:	00349793          	slli	a5,s1,0x3
    80002550:	fe040713          	addi	a4,s0,-32
    80002554:	00f707b3          	add	a5,a4,a5
    80002558:	fe07b503          	ld	a0,-32(a5)
    8000255c:	fffff097          	auipc	ra,0xfffff
    80002560:	4a4080e7          	jalr	1188(ra) # 80001a00 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    80002564:	0014849b          	addiw	s1,s1,1
    80002568:	fddff06f          	j	80002544 <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    8000256c:	fffff097          	auipc	ra,0xfffff
    80002570:	4f0080e7          	jalr	1264(ra) # 80001a5c <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80002574:	00005797          	auipc	a5,0x5
    80002578:	ecc7c783          	lbu	a5,-308(a5) # 80007440 <_ZL9finishedA>
    8000257c:	fe0788e3          	beqz	a5,8000256c <_Z20Threads_CPP_API_testv+0x124>
    80002580:	00005797          	auipc	a5,0x5
    80002584:	ec17c783          	lbu	a5,-319(a5) # 80007441 <_ZL9finishedB>
    80002588:	fe0782e3          	beqz	a5,8000256c <_Z20Threads_CPP_API_testv+0x124>
    8000258c:	00005797          	auipc	a5,0x5
    80002590:	eb67c783          	lbu	a5,-330(a5) # 80007442 <_ZL9finishedC>
    80002594:	fc078ce3          	beqz	a5,8000256c <_Z20Threads_CPP_API_testv+0x124>
    80002598:	00005797          	auipc	a5,0x5
    8000259c:	eab7c783          	lbu	a5,-341(a5) # 80007443 <_ZL9finishedD>
    800025a0:	fc0786e3          	beqz	a5,8000256c <_Z20Threads_CPP_API_testv+0x124>
    800025a4:	fc040493          	addi	s1,s0,-64
    800025a8:	0080006f          	j	800025b0 <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    800025ac:	00848493          	addi	s1,s1,8
    800025b0:	fe040793          	addi	a5,s0,-32
    800025b4:	08f48663          	beq	s1,a5,80002640 <_Z20Threads_CPP_API_testv+0x1f8>
    800025b8:	0004b503          	ld	a0,0(s1)
    800025bc:	fe0508e3          	beqz	a0,800025ac <_Z20Threads_CPP_API_testv+0x164>
    800025c0:	00053783          	ld	a5,0(a0)
    800025c4:	0087b783          	ld	a5,8(a5)
    800025c8:	000780e7          	jalr	a5
    800025cc:	fe1ff06f          	j	800025ac <_Z20Threads_CPP_API_testv+0x164>
    800025d0:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    800025d4:	00048513          	mv	a0,s1
    800025d8:	fffff097          	auipc	ra,0xfffff
    800025dc:	264080e7          	jalr	612(ra) # 8000183c <_ZdlPv>
    800025e0:	00090513          	mv	a0,s2
    800025e4:	00006097          	auipc	ra,0x6
    800025e8:	f44080e7          	jalr	-188(ra) # 80008528 <_Unwind_Resume>
    800025ec:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    800025f0:	00048513          	mv	a0,s1
    800025f4:	fffff097          	auipc	ra,0xfffff
    800025f8:	248080e7          	jalr	584(ra) # 8000183c <_ZdlPv>
    800025fc:	00090513          	mv	a0,s2
    80002600:	00006097          	auipc	ra,0x6
    80002604:	f28080e7          	jalr	-216(ra) # 80008528 <_Unwind_Resume>
    80002608:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    8000260c:	00048513          	mv	a0,s1
    80002610:	fffff097          	auipc	ra,0xfffff
    80002614:	22c080e7          	jalr	556(ra) # 8000183c <_ZdlPv>
    80002618:	00090513          	mv	a0,s2
    8000261c:	00006097          	auipc	ra,0x6
    80002620:	f0c080e7          	jalr	-244(ra) # 80008528 <_Unwind_Resume>
    80002624:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80002628:	00048513          	mv	a0,s1
    8000262c:	fffff097          	auipc	ra,0xfffff
    80002630:	210080e7          	jalr	528(ra) # 8000183c <_ZdlPv>
    80002634:	00090513          	mv	a0,s2
    80002638:	00006097          	auipc	ra,0x6
    8000263c:	ef0080e7          	jalr	-272(ra) # 80008528 <_Unwind_Resume>
}
    80002640:	03813083          	ld	ra,56(sp)
    80002644:	03013403          	ld	s0,48(sp)
    80002648:	02813483          	ld	s1,40(sp)
    8000264c:	02013903          	ld	s2,32(sp)
    80002650:	04010113          	addi	sp,sp,64
    80002654:	00008067          	ret

0000000080002658 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80002658:	ff010113          	addi	sp,sp,-16
    8000265c:	00113423          	sd	ra,8(sp)
    80002660:	00813023          	sd	s0,0(sp)
    80002664:	01010413          	addi	s0,sp,16
    80002668:	00005797          	auipc	a5,0x5
    8000266c:	c6878793          	addi	a5,a5,-920 # 800072d0 <_ZTV7WorkerA+0x10>
    80002670:	00f53023          	sd	a5,0(a0)
    80002674:	fffff097          	auipc	ra,0xfffff
    80002678:	218080e7          	jalr	536(ra) # 8000188c <_ZN6ThreadD1Ev>
    8000267c:	00813083          	ld	ra,8(sp)
    80002680:	00013403          	ld	s0,0(sp)
    80002684:	01010113          	addi	sp,sp,16
    80002688:	00008067          	ret

000000008000268c <_ZN7WorkerAD0Ev>:
    8000268c:	fe010113          	addi	sp,sp,-32
    80002690:	00113c23          	sd	ra,24(sp)
    80002694:	00813823          	sd	s0,16(sp)
    80002698:	00913423          	sd	s1,8(sp)
    8000269c:	02010413          	addi	s0,sp,32
    800026a0:	00050493          	mv	s1,a0
    800026a4:	00005797          	auipc	a5,0x5
    800026a8:	c2c78793          	addi	a5,a5,-980 # 800072d0 <_ZTV7WorkerA+0x10>
    800026ac:	00f53023          	sd	a5,0(a0)
    800026b0:	fffff097          	auipc	ra,0xfffff
    800026b4:	1dc080e7          	jalr	476(ra) # 8000188c <_ZN6ThreadD1Ev>
    800026b8:	00048513          	mv	a0,s1
    800026bc:	fffff097          	auipc	ra,0xfffff
    800026c0:	180080e7          	jalr	384(ra) # 8000183c <_ZdlPv>
    800026c4:	01813083          	ld	ra,24(sp)
    800026c8:	01013403          	ld	s0,16(sp)
    800026cc:	00813483          	ld	s1,8(sp)
    800026d0:	02010113          	addi	sp,sp,32
    800026d4:	00008067          	ret

00000000800026d8 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    800026d8:	ff010113          	addi	sp,sp,-16
    800026dc:	00113423          	sd	ra,8(sp)
    800026e0:	00813023          	sd	s0,0(sp)
    800026e4:	01010413          	addi	s0,sp,16
    800026e8:	00005797          	auipc	a5,0x5
    800026ec:	c1078793          	addi	a5,a5,-1008 # 800072f8 <_ZTV7WorkerB+0x10>
    800026f0:	00f53023          	sd	a5,0(a0)
    800026f4:	fffff097          	auipc	ra,0xfffff
    800026f8:	198080e7          	jalr	408(ra) # 8000188c <_ZN6ThreadD1Ev>
    800026fc:	00813083          	ld	ra,8(sp)
    80002700:	00013403          	ld	s0,0(sp)
    80002704:	01010113          	addi	sp,sp,16
    80002708:	00008067          	ret

000000008000270c <_ZN7WorkerBD0Ev>:
    8000270c:	fe010113          	addi	sp,sp,-32
    80002710:	00113c23          	sd	ra,24(sp)
    80002714:	00813823          	sd	s0,16(sp)
    80002718:	00913423          	sd	s1,8(sp)
    8000271c:	02010413          	addi	s0,sp,32
    80002720:	00050493          	mv	s1,a0
    80002724:	00005797          	auipc	a5,0x5
    80002728:	bd478793          	addi	a5,a5,-1068 # 800072f8 <_ZTV7WorkerB+0x10>
    8000272c:	00f53023          	sd	a5,0(a0)
    80002730:	fffff097          	auipc	ra,0xfffff
    80002734:	15c080e7          	jalr	348(ra) # 8000188c <_ZN6ThreadD1Ev>
    80002738:	00048513          	mv	a0,s1
    8000273c:	fffff097          	auipc	ra,0xfffff
    80002740:	100080e7          	jalr	256(ra) # 8000183c <_ZdlPv>
    80002744:	01813083          	ld	ra,24(sp)
    80002748:	01013403          	ld	s0,16(sp)
    8000274c:	00813483          	ld	s1,8(sp)
    80002750:	02010113          	addi	sp,sp,32
    80002754:	00008067          	ret

0000000080002758 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80002758:	ff010113          	addi	sp,sp,-16
    8000275c:	00113423          	sd	ra,8(sp)
    80002760:	00813023          	sd	s0,0(sp)
    80002764:	01010413          	addi	s0,sp,16
    80002768:	00005797          	auipc	a5,0x5
    8000276c:	bb878793          	addi	a5,a5,-1096 # 80007320 <_ZTV7WorkerC+0x10>
    80002770:	00f53023          	sd	a5,0(a0)
    80002774:	fffff097          	auipc	ra,0xfffff
    80002778:	118080e7          	jalr	280(ra) # 8000188c <_ZN6ThreadD1Ev>
    8000277c:	00813083          	ld	ra,8(sp)
    80002780:	00013403          	ld	s0,0(sp)
    80002784:	01010113          	addi	sp,sp,16
    80002788:	00008067          	ret

000000008000278c <_ZN7WorkerCD0Ev>:
    8000278c:	fe010113          	addi	sp,sp,-32
    80002790:	00113c23          	sd	ra,24(sp)
    80002794:	00813823          	sd	s0,16(sp)
    80002798:	00913423          	sd	s1,8(sp)
    8000279c:	02010413          	addi	s0,sp,32
    800027a0:	00050493          	mv	s1,a0
    800027a4:	00005797          	auipc	a5,0x5
    800027a8:	b7c78793          	addi	a5,a5,-1156 # 80007320 <_ZTV7WorkerC+0x10>
    800027ac:	00f53023          	sd	a5,0(a0)
    800027b0:	fffff097          	auipc	ra,0xfffff
    800027b4:	0dc080e7          	jalr	220(ra) # 8000188c <_ZN6ThreadD1Ev>
    800027b8:	00048513          	mv	a0,s1
    800027bc:	fffff097          	auipc	ra,0xfffff
    800027c0:	080080e7          	jalr	128(ra) # 8000183c <_ZdlPv>
    800027c4:	01813083          	ld	ra,24(sp)
    800027c8:	01013403          	ld	s0,16(sp)
    800027cc:	00813483          	ld	s1,8(sp)
    800027d0:	02010113          	addi	sp,sp,32
    800027d4:	00008067          	ret

00000000800027d8 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    800027d8:	ff010113          	addi	sp,sp,-16
    800027dc:	00113423          	sd	ra,8(sp)
    800027e0:	00813023          	sd	s0,0(sp)
    800027e4:	01010413          	addi	s0,sp,16
    800027e8:	00005797          	auipc	a5,0x5
    800027ec:	b6078793          	addi	a5,a5,-1184 # 80007348 <_ZTV7WorkerD+0x10>
    800027f0:	00f53023          	sd	a5,0(a0)
    800027f4:	fffff097          	auipc	ra,0xfffff
    800027f8:	098080e7          	jalr	152(ra) # 8000188c <_ZN6ThreadD1Ev>
    800027fc:	00813083          	ld	ra,8(sp)
    80002800:	00013403          	ld	s0,0(sp)
    80002804:	01010113          	addi	sp,sp,16
    80002808:	00008067          	ret

000000008000280c <_ZN7WorkerDD0Ev>:
    8000280c:	fe010113          	addi	sp,sp,-32
    80002810:	00113c23          	sd	ra,24(sp)
    80002814:	00813823          	sd	s0,16(sp)
    80002818:	00913423          	sd	s1,8(sp)
    8000281c:	02010413          	addi	s0,sp,32
    80002820:	00050493          	mv	s1,a0
    80002824:	00005797          	auipc	a5,0x5
    80002828:	b2478793          	addi	a5,a5,-1244 # 80007348 <_ZTV7WorkerD+0x10>
    8000282c:	00f53023          	sd	a5,0(a0)
    80002830:	fffff097          	auipc	ra,0xfffff
    80002834:	05c080e7          	jalr	92(ra) # 8000188c <_ZN6ThreadD1Ev>
    80002838:	00048513          	mv	a0,s1
    8000283c:	fffff097          	auipc	ra,0xfffff
    80002840:	000080e7          	jalr	ra # 8000183c <_ZdlPv>
    80002844:	01813083          	ld	ra,24(sp)
    80002848:	01013403          	ld	s0,16(sp)
    8000284c:	00813483          	ld	s1,8(sp)
    80002850:	02010113          	addi	sp,sp,32
    80002854:	00008067          	ret

0000000080002858 <_ZN7WorkerA3runEv>:
    void run() override {
    80002858:	ff010113          	addi	sp,sp,-16
    8000285c:	00113423          	sd	ra,8(sp)
    80002860:	00813023          	sd	s0,0(sp)
    80002864:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80002868:	00000593          	li	a1,0
    8000286c:	fffff097          	auipc	ra,0xfffff
    80002870:	774080e7          	jalr	1908(ra) # 80001fe0 <_ZN7WorkerA11workerBodyAEPv>
    }
    80002874:	00813083          	ld	ra,8(sp)
    80002878:	00013403          	ld	s0,0(sp)
    8000287c:	01010113          	addi	sp,sp,16
    80002880:	00008067          	ret

0000000080002884 <_ZN7WorkerB3runEv>:
    void run() override {
    80002884:	ff010113          	addi	sp,sp,-16
    80002888:	00113423          	sd	ra,8(sp)
    8000288c:	00813023          	sd	s0,0(sp)
    80002890:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80002894:	00000593          	li	a1,0
    80002898:	00000097          	auipc	ra,0x0
    8000289c:	814080e7          	jalr	-2028(ra) # 800020ac <_ZN7WorkerB11workerBodyBEPv>
    }
    800028a0:	00813083          	ld	ra,8(sp)
    800028a4:	00013403          	ld	s0,0(sp)
    800028a8:	01010113          	addi	sp,sp,16
    800028ac:	00008067          	ret

00000000800028b0 <_ZN7WorkerC3runEv>:
    void run() override {
    800028b0:	ff010113          	addi	sp,sp,-16
    800028b4:	00113423          	sd	ra,8(sp)
    800028b8:	00813023          	sd	s0,0(sp)
    800028bc:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    800028c0:	00000593          	li	a1,0
    800028c4:	00000097          	auipc	ra,0x0
    800028c8:	8bc080e7          	jalr	-1860(ra) # 80002180 <_ZN7WorkerC11workerBodyCEPv>
    }
    800028cc:	00813083          	ld	ra,8(sp)
    800028d0:	00013403          	ld	s0,0(sp)
    800028d4:	01010113          	addi	sp,sp,16
    800028d8:	00008067          	ret

00000000800028dc <_ZN7WorkerD3runEv>:
    void run() override {
    800028dc:	ff010113          	addi	sp,sp,-16
    800028e0:	00113423          	sd	ra,8(sp)
    800028e4:	00813023          	sd	s0,0(sp)
    800028e8:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    800028ec:	00000593          	li	a1,0
    800028f0:	00000097          	auipc	ra,0x0
    800028f4:	a10080e7          	jalr	-1520(ra) # 80002300 <_ZN7WorkerD11workerBodyDEPv>
    }
    800028f8:	00813083          	ld	ra,8(sp)
    800028fc:	00013403          	ld	s0,0(sp)
    80002900:	01010113          	addi	sp,sp,16
    80002904:	00008067          	ret

0000000080002908 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80002908:	fe010113          	addi	sp,sp,-32
    8000290c:	00113c23          	sd	ra,24(sp)
    80002910:	00813823          	sd	s0,16(sp)
    80002914:	00913423          	sd	s1,8(sp)
    80002918:	01213023          	sd	s2,0(sp)
    8000291c:	02010413          	addi	s0,sp,32
    80002920:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80002924:	00100793          	li	a5,1
    80002928:	02a7f863          	bgeu	a5,a0,80002958 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    8000292c:	00a00793          	li	a5,10
    80002930:	02f577b3          	remu	a5,a0,a5
    80002934:	02078e63          	beqz	a5,80002970 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80002938:	fff48513          	addi	a0,s1,-1
    8000293c:	00000097          	auipc	ra,0x0
    80002940:	fcc080e7          	jalr	-52(ra) # 80002908 <_ZL9fibonaccim>
    80002944:	00050913          	mv	s2,a0
    80002948:	ffe48513          	addi	a0,s1,-2
    8000294c:	00000097          	auipc	ra,0x0
    80002950:	fbc080e7          	jalr	-68(ra) # 80002908 <_ZL9fibonaccim>
    80002954:	00a90533          	add	a0,s2,a0
}
    80002958:	01813083          	ld	ra,24(sp)
    8000295c:	01013403          	ld	s0,16(sp)
    80002960:	00813483          	ld	s1,8(sp)
    80002964:	00013903          	ld	s2,0(sp)
    80002968:	02010113          	addi	sp,sp,32
    8000296c:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80002970:	fffff097          	auipc	ra,0xfffff
    80002974:	a24080e7          	jalr	-1500(ra) # 80001394 <_Z15thread_dispatchv>
    80002978:	fc1ff06f          	j	80002938 <_ZL9fibonaccim+0x30>

000000008000297c <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    8000297c:	fe010113          	addi	sp,sp,-32
    80002980:	00113c23          	sd	ra,24(sp)
    80002984:	00813823          	sd	s0,16(sp)
    80002988:	00913423          	sd	s1,8(sp)
    8000298c:	01213023          	sd	s2,0(sp)
    80002990:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80002994:	00a00493          	li	s1,10
    80002998:	0400006f          	j	800029d8 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    8000299c:	00003517          	auipc	a0,0x3
    800029a0:	73450513          	addi	a0,a0,1844 # 800060d0 <CONSOLE_STATUS+0xc0>
    800029a4:	00000097          	auipc	ra,0x0
    800029a8:	53c080e7          	jalr	1340(ra) # 80002ee0 <_Z11printStringPKc>
    800029ac:	00000613          	li	a2,0
    800029b0:	00a00593          	li	a1,10
    800029b4:	00048513          	mv	a0,s1
    800029b8:	00000097          	auipc	ra,0x0
    800029bc:	6d8080e7          	jalr	1752(ra) # 80003090 <_Z8printIntiii>
    800029c0:	00004517          	auipc	a0,0x4
    800029c4:	a5850513          	addi	a0,a0,-1448 # 80006418 <CONSOLE_STATUS+0x408>
    800029c8:	00000097          	auipc	ra,0x0
    800029cc:	518080e7          	jalr	1304(ra) # 80002ee0 <_Z11printStringPKc>
    for (; i < 13; i++) {
    800029d0:	0014849b          	addiw	s1,s1,1
    800029d4:	0ff4f493          	andi	s1,s1,255
    800029d8:	00c00793          	li	a5,12
    800029dc:	fc97f0e3          	bgeu	a5,s1,8000299c <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    800029e0:	00003517          	auipc	a0,0x3
    800029e4:	6f850513          	addi	a0,a0,1784 # 800060d8 <CONSOLE_STATUS+0xc8>
    800029e8:	00000097          	auipc	ra,0x0
    800029ec:	4f8080e7          	jalr	1272(ra) # 80002ee0 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800029f0:	00500313          	li	t1,5
    thread_dispatch();
    800029f4:	fffff097          	auipc	ra,0xfffff
    800029f8:	9a0080e7          	jalr	-1632(ra) # 80001394 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    800029fc:	01000513          	li	a0,16
    80002a00:	00000097          	auipc	ra,0x0
    80002a04:	f08080e7          	jalr	-248(ra) # 80002908 <_ZL9fibonaccim>
    80002a08:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80002a0c:	00003517          	auipc	a0,0x3
    80002a10:	6dc50513          	addi	a0,a0,1756 # 800060e8 <CONSOLE_STATUS+0xd8>
    80002a14:	00000097          	auipc	ra,0x0
    80002a18:	4cc080e7          	jalr	1228(ra) # 80002ee0 <_Z11printStringPKc>
    80002a1c:	00000613          	li	a2,0
    80002a20:	00a00593          	li	a1,10
    80002a24:	0009051b          	sext.w	a0,s2
    80002a28:	00000097          	auipc	ra,0x0
    80002a2c:	668080e7          	jalr	1640(ra) # 80003090 <_Z8printIntiii>
    80002a30:	00004517          	auipc	a0,0x4
    80002a34:	9e850513          	addi	a0,a0,-1560 # 80006418 <CONSOLE_STATUS+0x408>
    80002a38:	00000097          	auipc	ra,0x0
    80002a3c:	4a8080e7          	jalr	1192(ra) # 80002ee0 <_Z11printStringPKc>
    80002a40:	0400006f          	j	80002a80 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80002a44:	00003517          	auipc	a0,0x3
    80002a48:	68c50513          	addi	a0,a0,1676 # 800060d0 <CONSOLE_STATUS+0xc0>
    80002a4c:	00000097          	auipc	ra,0x0
    80002a50:	494080e7          	jalr	1172(ra) # 80002ee0 <_Z11printStringPKc>
    80002a54:	00000613          	li	a2,0
    80002a58:	00a00593          	li	a1,10
    80002a5c:	00048513          	mv	a0,s1
    80002a60:	00000097          	auipc	ra,0x0
    80002a64:	630080e7          	jalr	1584(ra) # 80003090 <_Z8printIntiii>
    80002a68:	00004517          	auipc	a0,0x4
    80002a6c:	9b050513          	addi	a0,a0,-1616 # 80006418 <CONSOLE_STATUS+0x408>
    80002a70:	00000097          	auipc	ra,0x0
    80002a74:	470080e7          	jalr	1136(ra) # 80002ee0 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80002a78:	0014849b          	addiw	s1,s1,1
    80002a7c:	0ff4f493          	andi	s1,s1,255
    80002a80:	00f00793          	li	a5,15
    80002a84:	fc97f0e3          	bgeu	a5,s1,80002a44 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80002a88:	00003517          	auipc	a0,0x3
    80002a8c:	67050513          	addi	a0,a0,1648 # 800060f8 <CONSOLE_STATUS+0xe8>
    80002a90:	00000097          	auipc	ra,0x0
    80002a94:	450080e7          	jalr	1104(ra) # 80002ee0 <_Z11printStringPKc>
    finishedD = true;
    80002a98:	00100793          	li	a5,1
    80002a9c:	00005717          	auipc	a4,0x5
    80002aa0:	9af70423          	sb	a5,-1624(a4) # 80007444 <_ZL9finishedD>
    thread_dispatch();
    80002aa4:	fffff097          	auipc	ra,0xfffff
    80002aa8:	8f0080e7          	jalr	-1808(ra) # 80001394 <_Z15thread_dispatchv>
}
    80002aac:	01813083          	ld	ra,24(sp)
    80002ab0:	01013403          	ld	s0,16(sp)
    80002ab4:	00813483          	ld	s1,8(sp)
    80002ab8:	00013903          	ld	s2,0(sp)
    80002abc:	02010113          	addi	sp,sp,32
    80002ac0:	00008067          	ret

0000000080002ac4 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80002ac4:	fe010113          	addi	sp,sp,-32
    80002ac8:	00113c23          	sd	ra,24(sp)
    80002acc:	00813823          	sd	s0,16(sp)
    80002ad0:	00913423          	sd	s1,8(sp)
    80002ad4:	01213023          	sd	s2,0(sp)
    80002ad8:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80002adc:	00000493          	li	s1,0
    80002ae0:	0400006f          	j	80002b20 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80002ae4:	00003517          	auipc	a0,0x3
    80002ae8:	5bc50513          	addi	a0,a0,1468 # 800060a0 <CONSOLE_STATUS+0x90>
    80002aec:	00000097          	auipc	ra,0x0
    80002af0:	3f4080e7          	jalr	1012(ra) # 80002ee0 <_Z11printStringPKc>
    80002af4:	00000613          	li	a2,0
    80002af8:	00a00593          	li	a1,10
    80002afc:	00048513          	mv	a0,s1
    80002b00:	00000097          	auipc	ra,0x0
    80002b04:	590080e7          	jalr	1424(ra) # 80003090 <_Z8printIntiii>
    80002b08:	00004517          	auipc	a0,0x4
    80002b0c:	91050513          	addi	a0,a0,-1776 # 80006418 <CONSOLE_STATUS+0x408>
    80002b10:	00000097          	auipc	ra,0x0
    80002b14:	3d0080e7          	jalr	976(ra) # 80002ee0 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80002b18:	0014849b          	addiw	s1,s1,1
    80002b1c:	0ff4f493          	andi	s1,s1,255
    80002b20:	00200793          	li	a5,2
    80002b24:	fc97f0e3          	bgeu	a5,s1,80002ae4 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80002b28:	00003517          	auipc	a0,0x3
    80002b2c:	58050513          	addi	a0,a0,1408 # 800060a8 <CONSOLE_STATUS+0x98>
    80002b30:	00000097          	auipc	ra,0x0
    80002b34:	3b0080e7          	jalr	944(ra) # 80002ee0 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80002b38:	00700313          	li	t1,7
    thread_dispatch();
    80002b3c:	fffff097          	auipc	ra,0xfffff
    80002b40:	858080e7          	jalr	-1960(ra) # 80001394 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80002b44:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80002b48:	00003517          	auipc	a0,0x3
    80002b4c:	57050513          	addi	a0,a0,1392 # 800060b8 <CONSOLE_STATUS+0xa8>
    80002b50:	00000097          	auipc	ra,0x0
    80002b54:	390080e7          	jalr	912(ra) # 80002ee0 <_Z11printStringPKc>
    80002b58:	00000613          	li	a2,0
    80002b5c:	00a00593          	li	a1,10
    80002b60:	0009051b          	sext.w	a0,s2
    80002b64:	00000097          	auipc	ra,0x0
    80002b68:	52c080e7          	jalr	1324(ra) # 80003090 <_Z8printIntiii>
    80002b6c:	00004517          	auipc	a0,0x4
    80002b70:	8ac50513          	addi	a0,a0,-1876 # 80006418 <CONSOLE_STATUS+0x408>
    80002b74:	00000097          	auipc	ra,0x0
    80002b78:	36c080e7          	jalr	876(ra) # 80002ee0 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80002b7c:	00c00513          	li	a0,12
    80002b80:	00000097          	auipc	ra,0x0
    80002b84:	d88080e7          	jalr	-632(ra) # 80002908 <_ZL9fibonaccim>
    80002b88:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80002b8c:	00003517          	auipc	a0,0x3
    80002b90:	53450513          	addi	a0,a0,1332 # 800060c0 <CONSOLE_STATUS+0xb0>
    80002b94:	00000097          	auipc	ra,0x0
    80002b98:	34c080e7          	jalr	844(ra) # 80002ee0 <_Z11printStringPKc>
    80002b9c:	00000613          	li	a2,0
    80002ba0:	00a00593          	li	a1,10
    80002ba4:	0009051b          	sext.w	a0,s2
    80002ba8:	00000097          	auipc	ra,0x0
    80002bac:	4e8080e7          	jalr	1256(ra) # 80003090 <_Z8printIntiii>
    80002bb0:	00004517          	auipc	a0,0x4
    80002bb4:	86850513          	addi	a0,a0,-1944 # 80006418 <CONSOLE_STATUS+0x408>
    80002bb8:	00000097          	auipc	ra,0x0
    80002bbc:	328080e7          	jalr	808(ra) # 80002ee0 <_Z11printStringPKc>
    80002bc0:	0400006f          	j	80002c00 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80002bc4:	00003517          	auipc	a0,0x3
    80002bc8:	4dc50513          	addi	a0,a0,1244 # 800060a0 <CONSOLE_STATUS+0x90>
    80002bcc:	00000097          	auipc	ra,0x0
    80002bd0:	314080e7          	jalr	788(ra) # 80002ee0 <_Z11printStringPKc>
    80002bd4:	00000613          	li	a2,0
    80002bd8:	00a00593          	li	a1,10
    80002bdc:	00048513          	mv	a0,s1
    80002be0:	00000097          	auipc	ra,0x0
    80002be4:	4b0080e7          	jalr	1200(ra) # 80003090 <_Z8printIntiii>
    80002be8:	00004517          	auipc	a0,0x4
    80002bec:	83050513          	addi	a0,a0,-2000 # 80006418 <CONSOLE_STATUS+0x408>
    80002bf0:	00000097          	auipc	ra,0x0
    80002bf4:	2f0080e7          	jalr	752(ra) # 80002ee0 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80002bf8:	0014849b          	addiw	s1,s1,1
    80002bfc:	0ff4f493          	andi	s1,s1,255
    80002c00:	00500793          	li	a5,5
    80002c04:	fc97f0e3          	bgeu	a5,s1,80002bc4 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80002c08:	00003517          	auipc	a0,0x3
    80002c0c:	47050513          	addi	a0,a0,1136 # 80006078 <CONSOLE_STATUS+0x68>
    80002c10:	00000097          	auipc	ra,0x0
    80002c14:	2d0080e7          	jalr	720(ra) # 80002ee0 <_Z11printStringPKc>
    finishedC = true;
    80002c18:	00100793          	li	a5,1
    80002c1c:	00005717          	auipc	a4,0x5
    80002c20:	82f704a3          	sb	a5,-2007(a4) # 80007445 <_ZL9finishedC>
    thread_dispatch();
    80002c24:	ffffe097          	auipc	ra,0xffffe
    80002c28:	770080e7          	jalr	1904(ra) # 80001394 <_Z15thread_dispatchv>
}
    80002c2c:	01813083          	ld	ra,24(sp)
    80002c30:	01013403          	ld	s0,16(sp)
    80002c34:	00813483          	ld	s1,8(sp)
    80002c38:	00013903          	ld	s2,0(sp)
    80002c3c:	02010113          	addi	sp,sp,32
    80002c40:	00008067          	ret

0000000080002c44 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80002c44:	fe010113          	addi	sp,sp,-32
    80002c48:	00113c23          	sd	ra,24(sp)
    80002c4c:	00813823          	sd	s0,16(sp)
    80002c50:	00913423          	sd	s1,8(sp)
    80002c54:	01213023          	sd	s2,0(sp)
    80002c58:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80002c5c:	00000913          	li	s2,0
    80002c60:	0380006f          	j	80002c98 <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    80002c64:	ffffe097          	auipc	ra,0xffffe
    80002c68:	730080e7          	jalr	1840(ra) # 80001394 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80002c6c:	00148493          	addi	s1,s1,1
    80002c70:	000027b7          	lui	a5,0x2
    80002c74:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80002c78:	0097ee63          	bltu	a5,s1,80002c94 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80002c7c:	00000713          	li	a4,0
    80002c80:	000077b7          	lui	a5,0x7
    80002c84:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80002c88:	fce7eee3          	bltu	a5,a4,80002c64 <_ZL11workerBodyBPv+0x20>
    80002c8c:	00170713          	addi	a4,a4,1
    80002c90:	ff1ff06f          	j	80002c80 <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80002c94:	00190913          	addi	s2,s2,1
    80002c98:	00f00793          	li	a5,15
    80002c9c:	0527e063          	bltu	a5,s2,80002cdc <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80002ca0:	00003517          	auipc	a0,0x3
    80002ca4:	3e850513          	addi	a0,a0,1000 # 80006088 <CONSOLE_STATUS+0x78>
    80002ca8:	00000097          	auipc	ra,0x0
    80002cac:	238080e7          	jalr	568(ra) # 80002ee0 <_Z11printStringPKc>
    80002cb0:	00000613          	li	a2,0
    80002cb4:	00a00593          	li	a1,10
    80002cb8:	0009051b          	sext.w	a0,s2
    80002cbc:	00000097          	auipc	ra,0x0
    80002cc0:	3d4080e7          	jalr	980(ra) # 80003090 <_Z8printIntiii>
    80002cc4:	00003517          	auipc	a0,0x3
    80002cc8:	75450513          	addi	a0,a0,1876 # 80006418 <CONSOLE_STATUS+0x408>
    80002ccc:	00000097          	auipc	ra,0x0
    80002cd0:	214080e7          	jalr	532(ra) # 80002ee0 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80002cd4:	00000493          	li	s1,0
    80002cd8:	f99ff06f          	j	80002c70 <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    80002cdc:	00003517          	auipc	a0,0x3
    80002ce0:	3b450513          	addi	a0,a0,948 # 80006090 <CONSOLE_STATUS+0x80>
    80002ce4:	00000097          	auipc	ra,0x0
    80002ce8:	1fc080e7          	jalr	508(ra) # 80002ee0 <_Z11printStringPKc>
    finishedB = true;
    80002cec:	00100793          	li	a5,1
    80002cf0:	00004717          	auipc	a4,0x4
    80002cf4:	74f70b23          	sb	a5,1878(a4) # 80007446 <_ZL9finishedB>
    thread_dispatch();
    80002cf8:	ffffe097          	auipc	ra,0xffffe
    80002cfc:	69c080e7          	jalr	1692(ra) # 80001394 <_Z15thread_dispatchv>
}
    80002d00:	01813083          	ld	ra,24(sp)
    80002d04:	01013403          	ld	s0,16(sp)
    80002d08:	00813483          	ld	s1,8(sp)
    80002d0c:	00013903          	ld	s2,0(sp)
    80002d10:	02010113          	addi	sp,sp,32
    80002d14:	00008067          	ret

0000000080002d18 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80002d18:	fe010113          	addi	sp,sp,-32
    80002d1c:	00113c23          	sd	ra,24(sp)
    80002d20:	00813823          	sd	s0,16(sp)
    80002d24:	00913423          	sd	s1,8(sp)
    80002d28:	01213023          	sd	s2,0(sp)
    80002d2c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80002d30:	00000913          	li	s2,0
    80002d34:	0380006f          	j	80002d6c <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80002d38:	ffffe097          	auipc	ra,0xffffe
    80002d3c:	65c080e7          	jalr	1628(ra) # 80001394 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80002d40:	00148493          	addi	s1,s1,1
    80002d44:	000027b7          	lui	a5,0x2
    80002d48:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80002d4c:	0097ee63          	bltu	a5,s1,80002d68 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80002d50:	00000713          	li	a4,0
    80002d54:	000077b7          	lui	a5,0x7
    80002d58:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80002d5c:	fce7eee3          	bltu	a5,a4,80002d38 <_ZL11workerBodyAPv+0x20>
    80002d60:	00170713          	addi	a4,a4,1
    80002d64:	ff1ff06f          	j	80002d54 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80002d68:	00190913          	addi	s2,s2,1
    80002d6c:	00900793          	li	a5,9
    80002d70:	0527e063          	bltu	a5,s2,80002db0 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80002d74:	00003517          	auipc	a0,0x3
    80002d78:	2fc50513          	addi	a0,a0,764 # 80006070 <CONSOLE_STATUS+0x60>
    80002d7c:	00000097          	auipc	ra,0x0
    80002d80:	164080e7          	jalr	356(ra) # 80002ee0 <_Z11printStringPKc>
    80002d84:	00000613          	li	a2,0
    80002d88:	00a00593          	li	a1,10
    80002d8c:	0009051b          	sext.w	a0,s2
    80002d90:	00000097          	auipc	ra,0x0
    80002d94:	300080e7          	jalr	768(ra) # 80003090 <_Z8printIntiii>
    80002d98:	00003517          	auipc	a0,0x3
    80002d9c:	68050513          	addi	a0,a0,1664 # 80006418 <CONSOLE_STATUS+0x408>
    80002da0:	00000097          	auipc	ra,0x0
    80002da4:	140080e7          	jalr	320(ra) # 80002ee0 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80002da8:	00000493          	li	s1,0
    80002dac:	f99ff06f          	j	80002d44 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80002db0:	00003517          	auipc	a0,0x3
    80002db4:	2c850513          	addi	a0,a0,712 # 80006078 <CONSOLE_STATUS+0x68>
    80002db8:	00000097          	auipc	ra,0x0
    80002dbc:	128080e7          	jalr	296(ra) # 80002ee0 <_Z11printStringPKc>
    finishedA = true;
    80002dc0:	00100793          	li	a5,1
    80002dc4:	00004717          	auipc	a4,0x4
    80002dc8:	68f701a3          	sb	a5,1667(a4) # 80007447 <_ZL9finishedA>
}
    80002dcc:	01813083          	ld	ra,24(sp)
    80002dd0:	01013403          	ld	s0,16(sp)
    80002dd4:	00813483          	ld	s1,8(sp)
    80002dd8:	00013903          	ld	s2,0(sp)
    80002ddc:	02010113          	addi	sp,sp,32
    80002de0:	00008067          	ret

0000000080002de4 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80002de4:	fd010113          	addi	sp,sp,-48
    80002de8:	02113423          	sd	ra,40(sp)
    80002dec:	02813023          	sd	s0,32(sp)
    80002df0:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80002df4:	00000613          	li	a2,0
    80002df8:	00000597          	auipc	a1,0x0
    80002dfc:	f2058593          	addi	a1,a1,-224 # 80002d18 <_ZL11workerBodyAPv>
    80002e00:	fd040513          	addi	a0,s0,-48
    80002e04:	ffffe097          	auipc	ra,0xffffe
    80002e08:	500080e7          	jalr	1280(ra) # 80001304 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadA created\n");
    80002e0c:	00003517          	auipc	a0,0x3
    80002e10:	2fc50513          	addi	a0,a0,764 # 80006108 <CONSOLE_STATUS+0xf8>
    80002e14:	00000097          	auipc	ra,0x0
    80002e18:	0cc080e7          	jalr	204(ra) # 80002ee0 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80002e1c:	00000613          	li	a2,0
    80002e20:	00000597          	auipc	a1,0x0
    80002e24:	e2458593          	addi	a1,a1,-476 # 80002c44 <_ZL11workerBodyBPv>
    80002e28:	fd840513          	addi	a0,s0,-40
    80002e2c:	ffffe097          	auipc	ra,0xffffe
    80002e30:	4d8080e7          	jalr	1240(ra) # 80001304 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadB created\n");
    80002e34:	00003517          	auipc	a0,0x3
    80002e38:	2ec50513          	addi	a0,a0,748 # 80006120 <CONSOLE_STATUS+0x110>
    80002e3c:	00000097          	auipc	ra,0x0
    80002e40:	0a4080e7          	jalr	164(ra) # 80002ee0 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80002e44:	00000613          	li	a2,0
    80002e48:	00000597          	auipc	a1,0x0
    80002e4c:	c7c58593          	addi	a1,a1,-900 # 80002ac4 <_ZL11workerBodyCPv>
    80002e50:	fe040513          	addi	a0,s0,-32
    80002e54:	ffffe097          	auipc	ra,0xffffe
    80002e58:	4b0080e7          	jalr	1200(ra) # 80001304 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadC created\n");
    80002e5c:	00003517          	auipc	a0,0x3
    80002e60:	2dc50513          	addi	a0,a0,732 # 80006138 <CONSOLE_STATUS+0x128>
    80002e64:	00000097          	auipc	ra,0x0
    80002e68:	07c080e7          	jalr	124(ra) # 80002ee0 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80002e6c:	00000613          	li	a2,0
    80002e70:	00000597          	auipc	a1,0x0
    80002e74:	b0c58593          	addi	a1,a1,-1268 # 8000297c <_ZL11workerBodyDPv>
    80002e78:	fe840513          	addi	a0,s0,-24
    80002e7c:	ffffe097          	auipc	ra,0xffffe
    80002e80:	488080e7          	jalr	1160(ra) # 80001304 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadD created\n");
    80002e84:	00003517          	auipc	a0,0x3
    80002e88:	2cc50513          	addi	a0,a0,716 # 80006150 <CONSOLE_STATUS+0x140>
    80002e8c:	00000097          	auipc	ra,0x0
    80002e90:	054080e7          	jalr	84(ra) # 80002ee0 <_Z11printStringPKc>
    80002e94:	00c0006f          	j	80002ea0 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80002e98:	ffffe097          	auipc	ra,0xffffe
    80002e9c:	4fc080e7          	jalr	1276(ra) # 80001394 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80002ea0:	00004797          	auipc	a5,0x4
    80002ea4:	5a77c783          	lbu	a5,1447(a5) # 80007447 <_ZL9finishedA>
    80002ea8:	fe0788e3          	beqz	a5,80002e98 <_Z18Threads_C_API_testv+0xb4>
    80002eac:	00004797          	auipc	a5,0x4
    80002eb0:	59a7c783          	lbu	a5,1434(a5) # 80007446 <_ZL9finishedB>
    80002eb4:	fe0782e3          	beqz	a5,80002e98 <_Z18Threads_C_API_testv+0xb4>
    80002eb8:	00004797          	auipc	a5,0x4
    80002ebc:	58d7c783          	lbu	a5,1421(a5) # 80007445 <_ZL9finishedC>
    80002ec0:	fc078ce3          	beqz	a5,80002e98 <_Z18Threads_C_API_testv+0xb4>
    80002ec4:	00004797          	auipc	a5,0x4
    80002ec8:	5807c783          	lbu	a5,1408(a5) # 80007444 <_ZL9finishedD>
    80002ecc:	fc0786e3          	beqz	a5,80002e98 <_Z18Threads_C_API_testv+0xb4>
    }

}
    80002ed0:	02813083          	ld	ra,40(sp)
    80002ed4:	02013403          	ld	s0,32(sp)
    80002ed8:	03010113          	addi	sp,sp,48
    80002edc:	00008067          	ret

0000000080002ee0 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80002ee0:	fe010113          	addi	sp,sp,-32
    80002ee4:	00113c23          	sd	ra,24(sp)
    80002ee8:	00813823          	sd	s0,16(sp)
    80002eec:	00913423          	sd	s1,8(sp)
    80002ef0:	02010413          	addi	s0,sp,32
    80002ef4:	00050493          	mv	s1,a0
    LOCK();
    80002ef8:	00100613          	li	a2,1
    80002efc:	00000593          	li	a1,0
    80002f00:	00004517          	auipc	a0,0x4
    80002f04:	54850513          	addi	a0,a0,1352 # 80007448 <lockPrint>
    80002f08:	ffffe097          	auipc	ra,0xffffe
    80002f0c:	344080e7          	jalr	836(ra) # 8000124c <copy_and_swap>
    80002f10:	00050863          	beqz	a0,80002f20 <_Z11printStringPKc+0x40>
    80002f14:	ffffe097          	auipc	ra,0xffffe
    80002f18:	480080e7          	jalr	1152(ra) # 80001394 <_Z15thread_dispatchv>
    80002f1c:	fddff06f          	j	80002ef8 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80002f20:	0004c503          	lbu	a0,0(s1)
    80002f24:	00050a63          	beqz	a0,80002f38 <_Z11printStringPKc+0x58>
    {
        putc(*string);
    80002f28:	fffff097          	auipc	ra,0xfffff
    80002f2c:	ff4080e7          	jalr	-12(ra) # 80001f1c <_Z4putcc>
        string++;
    80002f30:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80002f34:	fedff06f          	j	80002f20 <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    80002f38:	00000613          	li	a2,0
    80002f3c:	00100593          	li	a1,1
    80002f40:	00004517          	auipc	a0,0x4
    80002f44:	50850513          	addi	a0,a0,1288 # 80007448 <lockPrint>
    80002f48:	ffffe097          	auipc	ra,0xffffe
    80002f4c:	304080e7          	jalr	772(ra) # 8000124c <copy_and_swap>
    80002f50:	fe0514e3          	bnez	a0,80002f38 <_Z11printStringPKc+0x58>
}
    80002f54:	01813083          	ld	ra,24(sp)
    80002f58:	01013403          	ld	s0,16(sp)
    80002f5c:	00813483          	ld	s1,8(sp)
    80002f60:	02010113          	addi	sp,sp,32
    80002f64:	00008067          	ret

0000000080002f68 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80002f68:	fd010113          	addi	sp,sp,-48
    80002f6c:	02113423          	sd	ra,40(sp)
    80002f70:	02813023          	sd	s0,32(sp)
    80002f74:	00913c23          	sd	s1,24(sp)
    80002f78:	01213823          	sd	s2,16(sp)
    80002f7c:	01313423          	sd	s3,8(sp)
    80002f80:	01413023          	sd	s4,0(sp)
    80002f84:	03010413          	addi	s0,sp,48
    80002f88:	00050993          	mv	s3,a0
    80002f8c:	00058a13          	mv	s4,a1
    LOCK();
    80002f90:	00100613          	li	a2,1
    80002f94:	00000593          	li	a1,0
    80002f98:	00004517          	auipc	a0,0x4
    80002f9c:	4b050513          	addi	a0,a0,1200 # 80007448 <lockPrint>
    80002fa0:	ffffe097          	auipc	ra,0xffffe
    80002fa4:	2ac080e7          	jalr	684(ra) # 8000124c <copy_and_swap>
    80002fa8:	00050863          	beqz	a0,80002fb8 <_Z9getStringPci+0x50>
    80002fac:	ffffe097          	auipc	ra,0xffffe
    80002fb0:	3e8080e7          	jalr	1000(ra) # 80001394 <_Z15thread_dispatchv>
    80002fb4:	fddff06f          	j	80002f90 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80002fb8:	00000913          	li	s2,0
    80002fbc:	00090493          	mv	s1,s2
    80002fc0:	0019091b          	addiw	s2,s2,1
    80002fc4:	03495a63          	bge	s2,s4,80002ff8 <_Z9getStringPci+0x90>
        cc = getc();
    80002fc8:	fffff097          	auipc	ra,0xfffff
    80002fcc:	f7c080e7          	jalr	-132(ra) # 80001f44 <_Z4getcv>
        if(cc < 1)
    80002fd0:	02050463          	beqz	a0,80002ff8 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    80002fd4:	009984b3          	add	s1,s3,s1
    80002fd8:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80002fdc:	00a00793          	li	a5,10
    80002fe0:	00f50a63          	beq	a0,a5,80002ff4 <_Z9getStringPci+0x8c>
    80002fe4:	00d00793          	li	a5,13
    80002fe8:	fcf51ae3          	bne	a0,a5,80002fbc <_Z9getStringPci+0x54>
        buf[i++] = c;
    80002fec:	00090493          	mv	s1,s2
    80002ff0:	0080006f          	j	80002ff8 <_Z9getStringPci+0x90>
    80002ff4:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80002ff8:	009984b3          	add	s1,s3,s1
    80002ffc:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80003000:	00000613          	li	a2,0
    80003004:	00100593          	li	a1,1
    80003008:	00004517          	auipc	a0,0x4
    8000300c:	44050513          	addi	a0,a0,1088 # 80007448 <lockPrint>
    80003010:	ffffe097          	auipc	ra,0xffffe
    80003014:	23c080e7          	jalr	572(ra) # 8000124c <copy_and_swap>
    80003018:	fe0514e3          	bnez	a0,80003000 <_Z9getStringPci+0x98>
    return buf;
}
    8000301c:	00098513          	mv	a0,s3
    80003020:	02813083          	ld	ra,40(sp)
    80003024:	02013403          	ld	s0,32(sp)
    80003028:	01813483          	ld	s1,24(sp)
    8000302c:	01013903          	ld	s2,16(sp)
    80003030:	00813983          	ld	s3,8(sp)
    80003034:	00013a03          	ld	s4,0(sp)
    80003038:	03010113          	addi	sp,sp,48
    8000303c:	00008067          	ret

0000000080003040 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80003040:	ff010113          	addi	sp,sp,-16
    80003044:	00813423          	sd	s0,8(sp)
    80003048:	01010413          	addi	s0,sp,16
    8000304c:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80003050:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80003054:	0006c603          	lbu	a2,0(a3)
    80003058:	fd06071b          	addiw	a4,a2,-48
    8000305c:	0ff77713          	andi	a4,a4,255
    80003060:	00900793          	li	a5,9
    80003064:	02e7e063          	bltu	a5,a4,80003084 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80003068:	0025179b          	slliw	a5,a0,0x2
    8000306c:	00a787bb          	addw	a5,a5,a0
    80003070:	0017979b          	slliw	a5,a5,0x1
    80003074:	00168693          	addi	a3,a3,1
    80003078:	00c787bb          	addw	a5,a5,a2
    8000307c:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80003080:	fd5ff06f          	j	80003054 <_Z11stringToIntPKc+0x14>
    return n;
}
    80003084:	00813403          	ld	s0,8(sp)
    80003088:	01010113          	addi	sp,sp,16
    8000308c:	00008067          	ret

0000000080003090 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80003090:	fc010113          	addi	sp,sp,-64
    80003094:	02113c23          	sd	ra,56(sp)
    80003098:	02813823          	sd	s0,48(sp)
    8000309c:	02913423          	sd	s1,40(sp)
    800030a0:	03213023          	sd	s2,32(sp)
    800030a4:	01313c23          	sd	s3,24(sp)
    800030a8:	04010413          	addi	s0,sp,64
    800030ac:	00050493          	mv	s1,a0
    800030b0:	00058913          	mv	s2,a1
    800030b4:	00060993          	mv	s3,a2
    LOCK();
    800030b8:	00100613          	li	a2,1
    800030bc:	00000593          	li	a1,0
    800030c0:	00004517          	auipc	a0,0x4
    800030c4:	38850513          	addi	a0,a0,904 # 80007448 <lockPrint>
    800030c8:	ffffe097          	auipc	ra,0xffffe
    800030cc:	184080e7          	jalr	388(ra) # 8000124c <copy_and_swap>
    800030d0:	00050863          	beqz	a0,800030e0 <_Z8printIntiii+0x50>
    800030d4:	ffffe097          	auipc	ra,0xffffe
    800030d8:	2c0080e7          	jalr	704(ra) # 80001394 <_Z15thread_dispatchv>
    800030dc:	fddff06f          	j	800030b8 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    800030e0:	00098463          	beqz	s3,800030e8 <_Z8printIntiii+0x58>
    800030e4:	0804c463          	bltz	s1,8000316c <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    800030e8:	0004851b          	sext.w	a0,s1
    neg = 0;
    800030ec:	00000593          	li	a1,0
    }

    i = 0;
    800030f0:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    800030f4:	0009079b          	sext.w	a5,s2
    800030f8:	0325773b          	remuw	a4,a0,s2
    800030fc:	00048613          	mv	a2,s1
    80003100:	0014849b          	addiw	s1,s1,1
    80003104:	02071693          	slli	a3,a4,0x20
    80003108:	0206d693          	srli	a3,a3,0x20
    8000310c:	00004717          	auipc	a4,0x4
    80003110:	25470713          	addi	a4,a4,596 # 80007360 <digits>
    80003114:	00d70733          	add	a4,a4,a3
    80003118:	00074683          	lbu	a3,0(a4)
    8000311c:	fd040713          	addi	a4,s0,-48
    80003120:	00c70733          	add	a4,a4,a2
    80003124:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80003128:	0005071b          	sext.w	a4,a0
    8000312c:	0325553b          	divuw	a0,a0,s2
    80003130:	fcf772e3          	bgeu	a4,a5,800030f4 <_Z8printIntiii+0x64>
    if(neg)
    80003134:	00058c63          	beqz	a1,8000314c <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    80003138:	fd040793          	addi	a5,s0,-48
    8000313c:	009784b3          	add	s1,a5,s1
    80003140:	02d00793          	li	a5,45
    80003144:	fef48823          	sb	a5,-16(s1)
    80003148:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    8000314c:	fff4849b          	addiw	s1,s1,-1
    80003150:	0204c463          	bltz	s1,80003178 <_Z8printIntiii+0xe8>
        putc(buf[i]);
    80003154:	fd040793          	addi	a5,s0,-48
    80003158:	009787b3          	add	a5,a5,s1
    8000315c:	ff07c503          	lbu	a0,-16(a5)
    80003160:	fffff097          	auipc	ra,0xfffff
    80003164:	dbc080e7          	jalr	-580(ra) # 80001f1c <_Z4putcc>
    80003168:	fe5ff06f          	j	8000314c <_Z8printIntiii+0xbc>
        x = -xx;
    8000316c:	4090053b          	negw	a0,s1
        neg = 1;
    80003170:	00100593          	li	a1,1
        x = -xx;
    80003174:	f7dff06f          	j	800030f0 <_Z8printIntiii+0x60>

    UNLOCK();
    80003178:	00000613          	li	a2,0
    8000317c:	00100593          	li	a1,1
    80003180:	00004517          	auipc	a0,0x4
    80003184:	2c850513          	addi	a0,a0,712 # 80007448 <lockPrint>
    80003188:	ffffe097          	auipc	ra,0xffffe
    8000318c:	0c4080e7          	jalr	196(ra) # 8000124c <copy_and_swap>
    80003190:	fe0514e3          	bnez	a0,80003178 <_Z8printIntiii+0xe8>
    80003194:	03813083          	ld	ra,56(sp)
    80003198:	03013403          	ld	s0,48(sp)
    8000319c:	02813483          	ld	s1,40(sp)
    800031a0:	02013903          	ld	s2,32(sp)
    800031a4:	01813983          	ld	s3,24(sp)
    800031a8:	04010113          	addi	sp,sp,64
    800031ac:	00008067          	ret

00000000800031b0 <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    800031b0:	fe010113          	addi	sp,sp,-32
    800031b4:	00113c23          	sd	ra,24(sp)
    800031b8:	00813823          	sd	s0,16(sp)
    800031bc:	00913423          	sd	s1,8(sp)
    800031c0:	01213023          	sd	s2,0(sp)
    800031c4:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    800031c8:	00003517          	auipc	a0,0x3
    800031cc:	fa050513          	addi	a0,a0,-96 # 80006168 <CONSOLE_STATUS+0x158>
    800031d0:	00000097          	auipc	ra,0x0
    800031d4:	d10080e7          	jalr	-752(ra) # 80002ee0 <_Z11printStringPKc>
    int test = getc() - '0';
    800031d8:	fffff097          	auipc	ra,0xfffff
    800031dc:	d6c080e7          	jalr	-660(ra) # 80001f44 <_Z4getcv>
    800031e0:	0005091b          	sext.w	s2,a0
    800031e4:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    800031e8:	fffff097          	auipc	ra,0xfffff
    800031ec:	d5c080e7          	jalr	-676(ra) # 80001f44 <_Z4getcv>
            printString("Nije navedeno da je zadatak 2 implementiran\n");
            return;
        }
    }

    if (test >= 3 && test <= 4) {
    800031f0:	fcd9071b          	addiw	a4,s2,-51
    800031f4:	00100793          	li	a5,1
    800031f8:	04e7f663          	bgeu	a5,a4,80003244 <_Z8userMainv+0x94>
            printString("Nije navedeno da je zadatak 3 implementiran\n");
            return;
        }
    }

    if (test >= 5 && test <= 6) {
    800031fc:	fcb9091b          	addiw	s2,s2,-53
    80003200:	00100793          	li	a5,1
    80003204:	0727f463          	bgeu	a5,s2,8000326c <_Z8userMainv+0xbc>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    80003208:	00600793          	li	a5,6
    8000320c:	0697ca63          	blt	a5,s1,80003280 <_Z8userMainv+0xd0>
    80003210:	00300793          	li	a5,3
    80003214:	04f4d063          	bge	s1,a5,80003254 <_Z8userMainv+0xa4>
    80003218:	00100793          	li	a5,1
    8000321c:	08f48c63          	beq	s1,a5,800032b4 <_Z8userMainv+0x104>
    80003220:	00200793          	li	a5,2
    80003224:	0af49663          	bne	s1,a5,800032d0 <_Z8userMainv+0x120>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
#endif
            break;
        case 2:
#if LEVEL_2_IMPLEMENTED == 1
            Threads_CPP_API_test();
    80003228:	fffff097          	auipc	ra,0xfffff
    8000322c:	220080e7          	jalr	544(ra) # 80002448 <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    80003230:	00003517          	auipc	a0,0x3
    80003234:	ff850513          	addi	a0,a0,-8 # 80006228 <CONSOLE_STATUS+0x218>
    80003238:	00000097          	auipc	ra,0x0
    8000323c:	ca8080e7          	jalr	-856(ra) # 80002ee0 <_Z11printStringPKc>
#endif
            break;
    80003240:	0140006f          	j	80003254 <_Z8userMainv+0xa4>
            printString("Nije navedeno da je zadatak 3 implementiran\n");
    80003244:	00003517          	auipc	a0,0x3
    80003248:	f4450513          	addi	a0,a0,-188 # 80006188 <CONSOLE_STATUS+0x178>
    8000324c:	00000097          	auipc	ra,0x0
    80003250:	c94080e7          	jalr	-876(ra) # 80002ee0 <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    80003254:	01813083          	ld	ra,24(sp)
    80003258:	01013403          	ld	s0,16(sp)
    8000325c:	00813483          	ld	s1,8(sp)
    80003260:	00013903          	ld	s2,0(sp)
    80003264:	02010113          	addi	sp,sp,32
    80003268:	00008067          	ret
            printString("Nije navedeno da je zadatak 4 implementiran\n");
    8000326c:	00003517          	auipc	a0,0x3
    80003270:	f4c50513          	addi	a0,a0,-180 # 800061b8 <CONSOLE_STATUS+0x1a8>
    80003274:	00000097          	auipc	ra,0x0
    80003278:	c6c080e7          	jalr	-916(ra) # 80002ee0 <_Z11printStringPKc>
            return;
    8000327c:	fd9ff06f          	j	80003254 <_Z8userMainv+0xa4>
    switch (test) {
    80003280:	00700793          	li	a5,7
    80003284:	04f49663          	bne	s1,a5,800032d0 <_Z8userMainv+0x120>
            System_Mode_test();
    80003288:	00000097          	auipc	ra,0x0
    8000328c:	548080e7          	jalr	1352(ra) # 800037d0 <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    80003290:	00003517          	auipc	a0,0x3
    80003294:	fd850513          	addi	a0,a0,-40 # 80006268 <CONSOLE_STATUS+0x258>
    80003298:	00000097          	auipc	ra,0x0
    8000329c:	c48080e7          	jalr	-952(ra) # 80002ee0 <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    800032a0:	00003517          	auipc	a0,0x3
    800032a4:	fe850513          	addi	a0,a0,-24 # 80006288 <CONSOLE_STATUS+0x278>
    800032a8:	00000097          	auipc	ra,0x0
    800032ac:	c38080e7          	jalr	-968(ra) # 80002ee0 <_Z11printStringPKc>
            break;
    800032b0:	fa5ff06f          	j	80003254 <_Z8userMainv+0xa4>
            Threads_C_API_test();
    800032b4:	00000097          	auipc	ra,0x0
    800032b8:	b30080e7          	jalr	-1232(ra) # 80002de4 <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    800032bc:	00003517          	auipc	a0,0x3
    800032c0:	f2c50513          	addi	a0,a0,-212 # 800061e8 <CONSOLE_STATUS+0x1d8>
    800032c4:	00000097          	auipc	ra,0x0
    800032c8:	c1c080e7          	jalr	-996(ra) # 80002ee0 <_Z11printStringPKc>
            break;
    800032cc:	f89ff06f          	j	80003254 <_Z8userMainv+0xa4>
            printString("Niste uneli odgovarajuci broj za test\n");
    800032d0:	00003517          	auipc	a0,0x3
    800032d4:	01050513          	addi	a0,a0,16 # 800062e0 <CONSOLE_STATUS+0x2d0>
    800032d8:	00000097          	auipc	ra,0x0
    800032dc:	c08080e7          	jalr	-1016(ra) # 80002ee0 <_Z11printStringPKc>
    800032e0:	f75ff06f          	j	80003254 <_Z8userMainv+0xa4>

00000000800032e4 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800032e4:	fe010113          	addi	sp,sp,-32
    800032e8:	00113c23          	sd	ra,24(sp)
    800032ec:	00813823          	sd	s0,16(sp)
    800032f0:	00913423          	sd	s1,8(sp)
    800032f4:	01213023          	sd	s2,0(sp)
    800032f8:	02010413          	addi	s0,sp,32
    800032fc:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80003300:	00100793          	li	a5,1
    80003304:	02a7f863          	bgeu	a5,a0,80003334 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80003308:	00a00793          	li	a5,10
    8000330c:	02f577b3          	remu	a5,a0,a5
    80003310:	02078e63          	beqz	a5,8000334c <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80003314:	fff48513          	addi	a0,s1,-1
    80003318:	00000097          	auipc	ra,0x0
    8000331c:	fcc080e7          	jalr	-52(ra) # 800032e4 <_ZL9fibonaccim>
    80003320:	00050913          	mv	s2,a0
    80003324:	ffe48513          	addi	a0,s1,-2
    80003328:	00000097          	auipc	ra,0x0
    8000332c:	fbc080e7          	jalr	-68(ra) # 800032e4 <_ZL9fibonaccim>
    80003330:	00a90533          	add	a0,s2,a0
}
    80003334:	01813083          	ld	ra,24(sp)
    80003338:	01013403          	ld	s0,16(sp)
    8000333c:	00813483          	ld	s1,8(sp)
    80003340:	00013903          	ld	s2,0(sp)
    80003344:	02010113          	addi	sp,sp,32
    80003348:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    8000334c:	ffffe097          	auipc	ra,0xffffe
    80003350:	048080e7          	jalr	72(ra) # 80001394 <_Z15thread_dispatchv>
    80003354:	fc1ff06f          	j	80003314 <_ZL9fibonaccim+0x30>

0000000080003358 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80003358:	fe010113          	addi	sp,sp,-32
    8000335c:	00113c23          	sd	ra,24(sp)
    80003360:	00813823          	sd	s0,16(sp)
    80003364:	00913423          	sd	s1,8(sp)
    80003368:	01213023          	sd	s2,0(sp)
    8000336c:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80003370:	00a00493          	li	s1,10
    80003374:	0400006f          	j	800033b4 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003378:	00003517          	auipc	a0,0x3
    8000337c:	d5850513          	addi	a0,a0,-680 # 800060d0 <CONSOLE_STATUS+0xc0>
    80003380:	00000097          	auipc	ra,0x0
    80003384:	b60080e7          	jalr	-1184(ra) # 80002ee0 <_Z11printStringPKc>
    80003388:	00000613          	li	a2,0
    8000338c:	00a00593          	li	a1,10
    80003390:	00048513          	mv	a0,s1
    80003394:	00000097          	auipc	ra,0x0
    80003398:	cfc080e7          	jalr	-772(ra) # 80003090 <_Z8printIntiii>
    8000339c:	00003517          	auipc	a0,0x3
    800033a0:	07c50513          	addi	a0,a0,124 # 80006418 <CONSOLE_STATUS+0x408>
    800033a4:	00000097          	auipc	ra,0x0
    800033a8:	b3c080e7          	jalr	-1220(ra) # 80002ee0 <_Z11printStringPKc>
    for (; i < 13; i++) {
    800033ac:	0014849b          	addiw	s1,s1,1
    800033b0:	0ff4f493          	andi	s1,s1,255
    800033b4:	00c00793          	li	a5,12
    800033b8:	fc97f0e3          	bgeu	a5,s1,80003378 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    800033bc:	00003517          	auipc	a0,0x3
    800033c0:	d1c50513          	addi	a0,a0,-740 # 800060d8 <CONSOLE_STATUS+0xc8>
    800033c4:	00000097          	auipc	ra,0x0
    800033c8:	b1c080e7          	jalr	-1252(ra) # 80002ee0 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800033cc:	00500313          	li	t1,5
    thread_dispatch();
    800033d0:	ffffe097          	auipc	ra,0xffffe
    800033d4:	fc4080e7          	jalr	-60(ra) # 80001394 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    800033d8:	01000513          	li	a0,16
    800033dc:	00000097          	auipc	ra,0x0
    800033e0:	f08080e7          	jalr	-248(ra) # 800032e4 <_ZL9fibonaccim>
    800033e4:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800033e8:	00003517          	auipc	a0,0x3
    800033ec:	d0050513          	addi	a0,a0,-768 # 800060e8 <CONSOLE_STATUS+0xd8>
    800033f0:	00000097          	auipc	ra,0x0
    800033f4:	af0080e7          	jalr	-1296(ra) # 80002ee0 <_Z11printStringPKc>
    800033f8:	00000613          	li	a2,0
    800033fc:	00a00593          	li	a1,10
    80003400:	0009051b          	sext.w	a0,s2
    80003404:	00000097          	auipc	ra,0x0
    80003408:	c8c080e7          	jalr	-884(ra) # 80003090 <_Z8printIntiii>
    8000340c:	00003517          	auipc	a0,0x3
    80003410:	00c50513          	addi	a0,a0,12 # 80006418 <CONSOLE_STATUS+0x408>
    80003414:	00000097          	auipc	ra,0x0
    80003418:	acc080e7          	jalr	-1332(ra) # 80002ee0 <_Z11printStringPKc>
    8000341c:	0400006f          	j	8000345c <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003420:	00003517          	auipc	a0,0x3
    80003424:	cb050513          	addi	a0,a0,-848 # 800060d0 <CONSOLE_STATUS+0xc0>
    80003428:	00000097          	auipc	ra,0x0
    8000342c:	ab8080e7          	jalr	-1352(ra) # 80002ee0 <_Z11printStringPKc>
    80003430:	00000613          	li	a2,0
    80003434:	00a00593          	li	a1,10
    80003438:	00048513          	mv	a0,s1
    8000343c:	00000097          	auipc	ra,0x0
    80003440:	c54080e7          	jalr	-940(ra) # 80003090 <_Z8printIntiii>
    80003444:	00003517          	auipc	a0,0x3
    80003448:	fd450513          	addi	a0,a0,-44 # 80006418 <CONSOLE_STATUS+0x408>
    8000344c:	00000097          	auipc	ra,0x0
    80003450:	a94080e7          	jalr	-1388(ra) # 80002ee0 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80003454:	0014849b          	addiw	s1,s1,1
    80003458:	0ff4f493          	andi	s1,s1,255
    8000345c:	00f00793          	li	a5,15
    80003460:	fc97f0e3          	bgeu	a5,s1,80003420 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80003464:	00003517          	auipc	a0,0x3
    80003468:	c9450513          	addi	a0,a0,-876 # 800060f8 <CONSOLE_STATUS+0xe8>
    8000346c:	00000097          	auipc	ra,0x0
    80003470:	a74080e7          	jalr	-1420(ra) # 80002ee0 <_Z11printStringPKc>
    finishedD = true;
    80003474:	00100793          	li	a5,1
    80003478:	00004717          	auipc	a4,0x4
    8000347c:	fcf70c23          	sb	a5,-40(a4) # 80007450 <_ZL9finishedD>
    thread_dispatch();
    80003480:	ffffe097          	auipc	ra,0xffffe
    80003484:	f14080e7          	jalr	-236(ra) # 80001394 <_Z15thread_dispatchv>
}
    80003488:	01813083          	ld	ra,24(sp)
    8000348c:	01013403          	ld	s0,16(sp)
    80003490:	00813483          	ld	s1,8(sp)
    80003494:	00013903          	ld	s2,0(sp)
    80003498:	02010113          	addi	sp,sp,32
    8000349c:	00008067          	ret

00000000800034a0 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    800034a0:	fe010113          	addi	sp,sp,-32
    800034a4:	00113c23          	sd	ra,24(sp)
    800034a8:	00813823          	sd	s0,16(sp)
    800034ac:	00913423          	sd	s1,8(sp)
    800034b0:	01213023          	sd	s2,0(sp)
    800034b4:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800034b8:	00000493          	li	s1,0
    800034bc:	0400006f          	j	800034fc <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    800034c0:	00003517          	auipc	a0,0x3
    800034c4:	be050513          	addi	a0,a0,-1056 # 800060a0 <CONSOLE_STATUS+0x90>
    800034c8:	00000097          	auipc	ra,0x0
    800034cc:	a18080e7          	jalr	-1512(ra) # 80002ee0 <_Z11printStringPKc>
    800034d0:	00000613          	li	a2,0
    800034d4:	00a00593          	li	a1,10
    800034d8:	00048513          	mv	a0,s1
    800034dc:	00000097          	auipc	ra,0x0
    800034e0:	bb4080e7          	jalr	-1100(ra) # 80003090 <_Z8printIntiii>
    800034e4:	00003517          	auipc	a0,0x3
    800034e8:	f3450513          	addi	a0,a0,-204 # 80006418 <CONSOLE_STATUS+0x408>
    800034ec:	00000097          	auipc	ra,0x0
    800034f0:	9f4080e7          	jalr	-1548(ra) # 80002ee0 <_Z11printStringPKc>
    for (; i < 3; i++) {
    800034f4:	0014849b          	addiw	s1,s1,1
    800034f8:	0ff4f493          	andi	s1,s1,255
    800034fc:	00200793          	li	a5,2
    80003500:	fc97f0e3          	bgeu	a5,s1,800034c0 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80003504:	00003517          	auipc	a0,0x3
    80003508:	ba450513          	addi	a0,a0,-1116 # 800060a8 <CONSOLE_STATUS+0x98>
    8000350c:	00000097          	auipc	ra,0x0
    80003510:	9d4080e7          	jalr	-1580(ra) # 80002ee0 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80003514:	00700313          	li	t1,7
    thread_dispatch();
    80003518:	ffffe097          	auipc	ra,0xffffe
    8000351c:	e7c080e7          	jalr	-388(ra) # 80001394 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80003520:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80003524:	00003517          	auipc	a0,0x3
    80003528:	b9450513          	addi	a0,a0,-1132 # 800060b8 <CONSOLE_STATUS+0xa8>
    8000352c:	00000097          	auipc	ra,0x0
    80003530:	9b4080e7          	jalr	-1612(ra) # 80002ee0 <_Z11printStringPKc>
    80003534:	00000613          	li	a2,0
    80003538:	00a00593          	li	a1,10
    8000353c:	0009051b          	sext.w	a0,s2
    80003540:	00000097          	auipc	ra,0x0
    80003544:	b50080e7          	jalr	-1200(ra) # 80003090 <_Z8printIntiii>
    80003548:	00003517          	auipc	a0,0x3
    8000354c:	ed050513          	addi	a0,a0,-304 # 80006418 <CONSOLE_STATUS+0x408>
    80003550:	00000097          	auipc	ra,0x0
    80003554:	990080e7          	jalr	-1648(ra) # 80002ee0 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80003558:	00c00513          	li	a0,12
    8000355c:	00000097          	auipc	ra,0x0
    80003560:	d88080e7          	jalr	-632(ra) # 800032e4 <_ZL9fibonaccim>
    80003564:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80003568:	00003517          	auipc	a0,0x3
    8000356c:	b5850513          	addi	a0,a0,-1192 # 800060c0 <CONSOLE_STATUS+0xb0>
    80003570:	00000097          	auipc	ra,0x0
    80003574:	970080e7          	jalr	-1680(ra) # 80002ee0 <_Z11printStringPKc>
    80003578:	00000613          	li	a2,0
    8000357c:	00a00593          	li	a1,10
    80003580:	0009051b          	sext.w	a0,s2
    80003584:	00000097          	auipc	ra,0x0
    80003588:	b0c080e7          	jalr	-1268(ra) # 80003090 <_Z8printIntiii>
    8000358c:	00003517          	auipc	a0,0x3
    80003590:	e8c50513          	addi	a0,a0,-372 # 80006418 <CONSOLE_STATUS+0x408>
    80003594:	00000097          	auipc	ra,0x0
    80003598:	94c080e7          	jalr	-1716(ra) # 80002ee0 <_Z11printStringPKc>
    8000359c:	0400006f          	j	800035dc <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    800035a0:	00003517          	auipc	a0,0x3
    800035a4:	b0050513          	addi	a0,a0,-1280 # 800060a0 <CONSOLE_STATUS+0x90>
    800035a8:	00000097          	auipc	ra,0x0
    800035ac:	938080e7          	jalr	-1736(ra) # 80002ee0 <_Z11printStringPKc>
    800035b0:	00000613          	li	a2,0
    800035b4:	00a00593          	li	a1,10
    800035b8:	00048513          	mv	a0,s1
    800035bc:	00000097          	auipc	ra,0x0
    800035c0:	ad4080e7          	jalr	-1324(ra) # 80003090 <_Z8printIntiii>
    800035c4:	00003517          	auipc	a0,0x3
    800035c8:	e5450513          	addi	a0,a0,-428 # 80006418 <CONSOLE_STATUS+0x408>
    800035cc:	00000097          	auipc	ra,0x0
    800035d0:	914080e7          	jalr	-1772(ra) # 80002ee0 <_Z11printStringPKc>
    for (; i < 6; i++) {
    800035d4:	0014849b          	addiw	s1,s1,1
    800035d8:	0ff4f493          	andi	s1,s1,255
    800035dc:	00500793          	li	a5,5
    800035e0:	fc97f0e3          	bgeu	a5,s1,800035a0 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    800035e4:	00003517          	auipc	a0,0x3
    800035e8:	a9450513          	addi	a0,a0,-1388 # 80006078 <CONSOLE_STATUS+0x68>
    800035ec:	00000097          	auipc	ra,0x0
    800035f0:	8f4080e7          	jalr	-1804(ra) # 80002ee0 <_Z11printStringPKc>
    finishedC = true;
    800035f4:	00100793          	li	a5,1
    800035f8:	00004717          	auipc	a4,0x4
    800035fc:	e4f70ca3          	sb	a5,-423(a4) # 80007451 <_ZL9finishedC>
    thread_dispatch();
    80003600:	ffffe097          	auipc	ra,0xffffe
    80003604:	d94080e7          	jalr	-620(ra) # 80001394 <_Z15thread_dispatchv>
}
    80003608:	01813083          	ld	ra,24(sp)
    8000360c:	01013403          	ld	s0,16(sp)
    80003610:	00813483          	ld	s1,8(sp)
    80003614:	00013903          	ld	s2,0(sp)
    80003618:	02010113          	addi	sp,sp,32
    8000361c:	00008067          	ret

0000000080003620 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80003620:	fe010113          	addi	sp,sp,-32
    80003624:	00113c23          	sd	ra,24(sp)
    80003628:	00813823          	sd	s0,16(sp)
    8000362c:	00913423          	sd	s1,8(sp)
    80003630:	01213023          	sd	s2,0(sp)
    80003634:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80003638:	00000913          	li	s2,0
    8000363c:	0400006f          	j	8000367c <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    80003640:	ffffe097          	auipc	ra,0xffffe
    80003644:	d54080e7          	jalr	-684(ra) # 80001394 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003648:	00148493          	addi	s1,s1,1
    8000364c:	000027b7          	lui	a5,0x2
    80003650:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003654:	0097ee63          	bltu	a5,s1,80003670 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003658:	00000713          	li	a4,0
    8000365c:	000077b7          	lui	a5,0x7
    80003660:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003664:	fce7eee3          	bltu	a5,a4,80003640 <_ZL11workerBodyBPv+0x20>
    80003668:	00170713          	addi	a4,a4,1
    8000366c:	ff1ff06f          	j	8000365c <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    80003670:	00a00793          	li	a5,10
    80003674:	04f90663          	beq	s2,a5,800036c0 <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    80003678:	00190913          	addi	s2,s2,1
    8000367c:	00f00793          	li	a5,15
    80003680:	0527e463          	bltu	a5,s2,800036c8 <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    80003684:	00003517          	auipc	a0,0x3
    80003688:	a0450513          	addi	a0,a0,-1532 # 80006088 <CONSOLE_STATUS+0x78>
    8000368c:	00000097          	auipc	ra,0x0
    80003690:	854080e7          	jalr	-1964(ra) # 80002ee0 <_Z11printStringPKc>
    80003694:	00000613          	li	a2,0
    80003698:	00a00593          	li	a1,10
    8000369c:	0009051b          	sext.w	a0,s2
    800036a0:	00000097          	auipc	ra,0x0
    800036a4:	9f0080e7          	jalr	-1552(ra) # 80003090 <_Z8printIntiii>
    800036a8:	00003517          	auipc	a0,0x3
    800036ac:	d7050513          	addi	a0,a0,-656 # 80006418 <CONSOLE_STATUS+0x408>
    800036b0:	00000097          	auipc	ra,0x0
    800036b4:	830080e7          	jalr	-2000(ra) # 80002ee0 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800036b8:	00000493          	li	s1,0
    800036bc:	f91ff06f          	j	8000364c <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    800036c0:	14102ff3          	csrr	t6,sepc
    800036c4:	fb5ff06f          	j	80003678 <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    800036c8:	00003517          	auipc	a0,0x3
    800036cc:	9c850513          	addi	a0,a0,-1592 # 80006090 <CONSOLE_STATUS+0x80>
    800036d0:	00000097          	auipc	ra,0x0
    800036d4:	810080e7          	jalr	-2032(ra) # 80002ee0 <_Z11printStringPKc>
    finishedB = true;
    800036d8:	00100793          	li	a5,1
    800036dc:	00004717          	auipc	a4,0x4
    800036e0:	d6f70b23          	sb	a5,-650(a4) # 80007452 <_ZL9finishedB>
    thread_dispatch();
    800036e4:	ffffe097          	auipc	ra,0xffffe
    800036e8:	cb0080e7          	jalr	-848(ra) # 80001394 <_Z15thread_dispatchv>
}
    800036ec:	01813083          	ld	ra,24(sp)
    800036f0:	01013403          	ld	s0,16(sp)
    800036f4:	00813483          	ld	s1,8(sp)
    800036f8:	00013903          	ld	s2,0(sp)
    800036fc:	02010113          	addi	sp,sp,32
    80003700:	00008067          	ret

0000000080003704 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80003704:	fe010113          	addi	sp,sp,-32
    80003708:	00113c23          	sd	ra,24(sp)
    8000370c:	00813823          	sd	s0,16(sp)
    80003710:	00913423          	sd	s1,8(sp)
    80003714:	01213023          	sd	s2,0(sp)
    80003718:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    8000371c:	00000913          	li	s2,0
    80003720:	0380006f          	j	80003758 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80003724:	ffffe097          	auipc	ra,0xffffe
    80003728:	c70080e7          	jalr	-912(ra) # 80001394 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    8000372c:	00148493          	addi	s1,s1,1
    80003730:	000027b7          	lui	a5,0x2
    80003734:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003738:	0097ee63          	bltu	a5,s1,80003754 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    8000373c:	00000713          	li	a4,0
    80003740:	000077b7          	lui	a5,0x7
    80003744:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003748:	fce7eee3          	bltu	a5,a4,80003724 <_ZL11workerBodyAPv+0x20>
    8000374c:	00170713          	addi	a4,a4,1
    80003750:	ff1ff06f          	j	80003740 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80003754:	00190913          	addi	s2,s2,1
    80003758:	00900793          	li	a5,9
    8000375c:	0527e063          	bltu	a5,s2,8000379c <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80003760:	00003517          	auipc	a0,0x3
    80003764:	91050513          	addi	a0,a0,-1776 # 80006070 <CONSOLE_STATUS+0x60>
    80003768:	fffff097          	auipc	ra,0xfffff
    8000376c:	778080e7          	jalr	1912(ra) # 80002ee0 <_Z11printStringPKc>
    80003770:	00000613          	li	a2,0
    80003774:	00a00593          	li	a1,10
    80003778:	0009051b          	sext.w	a0,s2
    8000377c:	00000097          	auipc	ra,0x0
    80003780:	914080e7          	jalr	-1772(ra) # 80003090 <_Z8printIntiii>
    80003784:	00003517          	auipc	a0,0x3
    80003788:	c9450513          	addi	a0,a0,-876 # 80006418 <CONSOLE_STATUS+0x408>
    8000378c:	fffff097          	auipc	ra,0xfffff
    80003790:	754080e7          	jalr	1876(ra) # 80002ee0 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003794:	00000493          	li	s1,0
    80003798:	f99ff06f          	j	80003730 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    8000379c:	00003517          	auipc	a0,0x3
    800037a0:	8dc50513          	addi	a0,a0,-1828 # 80006078 <CONSOLE_STATUS+0x68>
    800037a4:	fffff097          	auipc	ra,0xfffff
    800037a8:	73c080e7          	jalr	1852(ra) # 80002ee0 <_Z11printStringPKc>
    finishedA = true;
    800037ac:	00100793          	li	a5,1
    800037b0:	00004717          	auipc	a4,0x4
    800037b4:	caf701a3          	sb	a5,-861(a4) # 80007453 <_ZL9finishedA>
}
    800037b8:	01813083          	ld	ra,24(sp)
    800037bc:	01013403          	ld	s0,16(sp)
    800037c0:	00813483          	ld	s1,8(sp)
    800037c4:	00013903          	ld	s2,0(sp)
    800037c8:	02010113          	addi	sp,sp,32
    800037cc:	00008067          	ret

00000000800037d0 <_Z16System_Mode_testv>:


void System_Mode_test() {
    800037d0:	fd010113          	addi	sp,sp,-48
    800037d4:	02113423          	sd	ra,40(sp)
    800037d8:	02813023          	sd	s0,32(sp)
    800037dc:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    800037e0:	00000613          	li	a2,0
    800037e4:	00000597          	auipc	a1,0x0
    800037e8:	f2058593          	addi	a1,a1,-224 # 80003704 <_ZL11workerBodyAPv>
    800037ec:	fd040513          	addi	a0,s0,-48
    800037f0:	ffffe097          	auipc	ra,0xffffe
    800037f4:	b14080e7          	jalr	-1260(ra) # 80001304 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadA created\n");
    800037f8:	00003517          	auipc	a0,0x3
    800037fc:	91050513          	addi	a0,a0,-1776 # 80006108 <CONSOLE_STATUS+0xf8>
    80003800:	fffff097          	auipc	ra,0xfffff
    80003804:	6e0080e7          	jalr	1760(ra) # 80002ee0 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80003808:	00000613          	li	a2,0
    8000380c:	00000597          	auipc	a1,0x0
    80003810:	e1458593          	addi	a1,a1,-492 # 80003620 <_ZL11workerBodyBPv>
    80003814:	fd840513          	addi	a0,s0,-40
    80003818:	ffffe097          	auipc	ra,0xffffe
    8000381c:	aec080e7          	jalr	-1300(ra) # 80001304 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadB created\n");
    80003820:	00003517          	auipc	a0,0x3
    80003824:	90050513          	addi	a0,a0,-1792 # 80006120 <CONSOLE_STATUS+0x110>
    80003828:	fffff097          	auipc	ra,0xfffff
    8000382c:	6b8080e7          	jalr	1720(ra) # 80002ee0 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80003830:	00000613          	li	a2,0
    80003834:	00000597          	auipc	a1,0x0
    80003838:	c6c58593          	addi	a1,a1,-916 # 800034a0 <_ZL11workerBodyCPv>
    8000383c:	fe040513          	addi	a0,s0,-32
    80003840:	ffffe097          	auipc	ra,0xffffe
    80003844:	ac4080e7          	jalr	-1340(ra) # 80001304 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadC created\n");
    80003848:	00003517          	auipc	a0,0x3
    8000384c:	8f050513          	addi	a0,a0,-1808 # 80006138 <CONSOLE_STATUS+0x128>
    80003850:	fffff097          	auipc	ra,0xfffff
    80003854:	690080e7          	jalr	1680(ra) # 80002ee0 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80003858:	00000613          	li	a2,0
    8000385c:	00000597          	auipc	a1,0x0
    80003860:	afc58593          	addi	a1,a1,-1284 # 80003358 <_ZL11workerBodyDPv>
    80003864:	fe840513          	addi	a0,s0,-24
    80003868:	ffffe097          	auipc	ra,0xffffe
    8000386c:	a9c080e7          	jalr	-1380(ra) # 80001304 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadD created\n");
    80003870:	00003517          	auipc	a0,0x3
    80003874:	8e050513          	addi	a0,a0,-1824 # 80006150 <CONSOLE_STATUS+0x140>
    80003878:	fffff097          	auipc	ra,0xfffff
    8000387c:	668080e7          	jalr	1640(ra) # 80002ee0 <_Z11printStringPKc>
    80003880:	00c0006f          	j	8000388c <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80003884:	ffffe097          	auipc	ra,0xffffe
    80003888:	b10080e7          	jalr	-1264(ra) # 80001394 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    8000388c:	00004797          	auipc	a5,0x4
    80003890:	bc77c783          	lbu	a5,-1081(a5) # 80007453 <_ZL9finishedA>
    80003894:	fe0788e3          	beqz	a5,80003884 <_Z16System_Mode_testv+0xb4>
    80003898:	00004797          	auipc	a5,0x4
    8000389c:	bba7c783          	lbu	a5,-1094(a5) # 80007452 <_ZL9finishedB>
    800038a0:	fe0782e3          	beqz	a5,80003884 <_Z16System_Mode_testv+0xb4>
    800038a4:	00004797          	auipc	a5,0x4
    800038a8:	bad7c783          	lbu	a5,-1107(a5) # 80007451 <_ZL9finishedC>
    800038ac:	fc078ce3          	beqz	a5,80003884 <_Z16System_Mode_testv+0xb4>
    800038b0:	00004797          	auipc	a5,0x4
    800038b4:	ba07c783          	lbu	a5,-1120(a5) # 80007450 <_ZL9finishedD>
    800038b8:	fc0786e3          	beqz	a5,80003884 <_Z16System_Mode_testv+0xb4>
    }

}
    800038bc:	02813083          	ld	ra,40(sp)
    800038c0:	02013403          	ld	s0,32(sp)
    800038c4:	03010113          	addi	sp,sp,48
    800038c8:	00008067          	ret

00000000800038cc <start>:
    800038cc:	ff010113          	addi	sp,sp,-16
    800038d0:	00813423          	sd	s0,8(sp)
    800038d4:	01010413          	addi	s0,sp,16
    800038d8:	300027f3          	csrr	a5,mstatus
    800038dc:	ffffe737          	lui	a4,0xffffe
    800038e0:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff613f>
    800038e4:	00e7f7b3          	and	a5,a5,a4
    800038e8:	00001737          	lui	a4,0x1
    800038ec:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    800038f0:	00e7e7b3          	or	a5,a5,a4
    800038f4:	30079073          	csrw	mstatus,a5
    800038f8:	00000797          	auipc	a5,0x0
    800038fc:	16078793          	addi	a5,a5,352 # 80003a58 <system_main>
    80003900:	34179073          	csrw	mepc,a5
    80003904:	00000793          	li	a5,0
    80003908:	18079073          	csrw	satp,a5
    8000390c:	000107b7          	lui	a5,0x10
    80003910:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80003914:	30279073          	csrw	medeleg,a5
    80003918:	30379073          	csrw	mideleg,a5
    8000391c:	104027f3          	csrr	a5,sie
    80003920:	2227e793          	ori	a5,a5,546
    80003924:	10479073          	csrw	sie,a5
    80003928:	fff00793          	li	a5,-1
    8000392c:	00a7d793          	srli	a5,a5,0xa
    80003930:	3b079073          	csrw	pmpaddr0,a5
    80003934:	00f00793          	li	a5,15
    80003938:	3a079073          	csrw	pmpcfg0,a5
    8000393c:	f14027f3          	csrr	a5,mhartid
    80003940:	0200c737          	lui	a4,0x200c
    80003944:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80003948:	0007869b          	sext.w	a3,a5
    8000394c:	00269713          	slli	a4,a3,0x2
    80003950:	000f4637          	lui	a2,0xf4
    80003954:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80003958:	00d70733          	add	a4,a4,a3
    8000395c:	0037979b          	slliw	a5,a5,0x3
    80003960:	020046b7          	lui	a3,0x2004
    80003964:	00d787b3          	add	a5,a5,a3
    80003968:	00c585b3          	add	a1,a1,a2
    8000396c:	00371693          	slli	a3,a4,0x3
    80003970:	00004717          	auipc	a4,0x4
    80003974:	af070713          	addi	a4,a4,-1296 # 80007460 <timer_scratch>
    80003978:	00b7b023          	sd	a1,0(a5)
    8000397c:	00d70733          	add	a4,a4,a3
    80003980:	00f73c23          	sd	a5,24(a4)
    80003984:	02c73023          	sd	a2,32(a4)
    80003988:	34071073          	csrw	mscratch,a4
    8000398c:	00000797          	auipc	a5,0x0
    80003990:	6e478793          	addi	a5,a5,1764 # 80004070 <timervec>
    80003994:	30579073          	csrw	mtvec,a5
    80003998:	300027f3          	csrr	a5,mstatus
    8000399c:	0087e793          	ori	a5,a5,8
    800039a0:	30079073          	csrw	mstatus,a5
    800039a4:	304027f3          	csrr	a5,mie
    800039a8:	0807e793          	ori	a5,a5,128
    800039ac:	30479073          	csrw	mie,a5
    800039b0:	f14027f3          	csrr	a5,mhartid
    800039b4:	0007879b          	sext.w	a5,a5
    800039b8:	00078213          	mv	tp,a5
    800039bc:	30200073          	mret
    800039c0:	00813403          	ld	s0,8(sp)
    800039c4:	01010113          	addi	sp,sp,16
    800039c8:	00008067          	ret

00000000800039cc <timerinit>:
    800039cc:	ff010113          	addi	sp,sp,-16
    800039d0:	00813423          	sd	s0,8(sp)
    800039d4:	01010413          	addi	s0,sp,16
    800039d8:	f14027f3          	csrr	a5,mhartid
    800039dc:	0200c737          	lui	a4,0x200c
    800039e0:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800039e4:	0007869b          	sext.w	a3,a5
    800039e8:	00269713          	slli	a4,a3,0x2
    800039ec:	000f4637          	lui	a2,0xf4
    800039f0:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800039f4:	00d70733          	add	a4,a4,a3
    800039f8:	0037979b          	slliw	a5,a5,0x3
    800039fc:	020046b7          	lui	a3,0x2004
    80003a00:	00d787b3          	add	a5,a5,a3
    80003a04:	00c585b3          	add	a1,a1,a2
    80003a08:	00371693          	slli	a3,a4,0x3
    80003a0c:	00004717          	auipc	a4,0x4
    80003a10:	a5470713          	addi	a4,a4,-1452 # 80007460 <timer_scratch>
    80003a14:	00b7b023          	sd	a1,0(a5)
    80003a18:	00d70733          	add	a4,a4,a3
    80003a1c:	00f73c23          	sd	a5,24(a4)
    80003a20:	02c73023          	sd	a2,32(a4)
    80003a24:	34071073          	csrw	mscratch,a4
    80003a28:	00000797          	auipc	a5,0x0
    80003a2c:	64878793          	addi	a5,a5,1608 # 80004070 <timervec>
    80003a30:	30579073          	csrw	mtvec,a5
    80003a34:	300027f3          	csrr	a5,mstatus
    80003a38:	0087e793          	ori	a5,a5,8
    80003a3c:	30079073          	csrw	mstatus,a5
    80003a40:	304027f3          	csrr	a5,mie
    80003a44:	0807e793          	ori	a5,a5,128
    80003a48:	30479073          	csrw	mie,a5
    80003a4c:	00813403          	ld	s0,8(sp)
    80003a50:	01010113          	addi	sp,sp,16
    80003a54:	00008067          	ret

0000000080003a58 <system_main>:
    80003a58:	fe010113          	addi	sp,sp,-32
    80003a5c:	00813823          	sd	s0,16(sp)
    80003a60:	00913423          	sd	s1,8(sp)
    80003a64:	00113c23          	sd	ra,24(sp)
    80003a68:	02010413          	addi	s0,sp,32
    80003a6c:	00000097          	auipc	ra,0x0
    80003a70:	0c4080e7          	jalr	196(ra) # 80003b30 <cpuid>
    80003a74:	00004497          	auipc	s1,0x4
    80003a78:	96c48493          	addi	s1,s1,-1684 # 800073e0 <started>
    80003a7c:	02050263          	beqz	a0,80003aa0 <system_main+0x48>
    80003a80:	0004a783          	lw	a5,0(s1)
    80003a84:	0007879b          	sext.w	a5,a5
    80003a88:	fe078ce3          	beqz	a5,80003a80 <system_main+0x28>
    80003a8c:	0ff0000f          	fence
    80003a90:	00003517          	auipc	a0,0x3
    80003a94:	8a850513          	addi	a0,a0,-1880 # 80006338 <CONSOLE_STATUS+0x328>
    80003a98:	00001097          	auipc	ra,0x1
    80003a9c:	a74080e7          	jalr	-1420(ra) # 8000450c <panic>
    80003aa0:	00001097          	auipc	ra,0x1
    80003aa4:	9c8080e7          	jalr	-1592(ra) # 80004468 <consoleinit>
    80003aa8:	00001097          	auipc	ra,0x1
    80003aac:	154080e7          	jalr	340(ra) # 80004bfc <printfinit>
    80003ab0:	00003517          	auipc	a0,0x3
    80003ab4:	96850513          	addi	a0,a0,-1688 # 80006418 <CONSOLE_STATUS+0x408>
    80003ab8:	00001097          	auipc	ra,0x1
    80003abc:	ab0080e7          	jalr	-1360(ra) # 80004568 <__printf>
    80003ac0:	00003517          	auipc	a0,0x3
    80003ac4:	84850513          	addi	a0,a0,-1976 # 80006308 <CONSOLE_STATUS+0x2f8>
    80003ac8:	00001097          	auipc	ra,0x1
    80003acc:	aa0080e7          	jalr	-1376(ra) # 80004568 <__printf>
    80003ad0:	00003517          	auipc	a0,0x3
    80003ad4:	94850513          	addi	a0,a0,-1720 # 80006418 <CONSOLE_STATUS+0x408>
    80003ad8:	00001097          	auipc	ra,0x1
    80003adc:	a90080e7          	jalr	-1392(ra) # 80004568 <__printf>
    80003ae0:	00001097          	auipc	ra,0x1
    80003ae4:	4a8080e7          	jalr	1192(ra) # 80004f88 <kinit>
    80003ae8:	00000097          	auipc	ra,0x0
    80003aec:	148080e7          	jalr	328(ra) # 80003c30 <trapinit>
    80003af0:	00000097          	auipc	ra,0x0
    80003af4:	16c080e7          	jalr	364(ra) # 80003c5c <trapinithart>
    80003af8:	00000097          	auipc	ra,0x0
    80003afc:	5b8080e7          	jalr	1464(ra) # 800040b0 <plicinit>
    80003b00:	00000097          	auipc	ra,0x0
    80003b04:	5d8080e7          	jalr	1496(ra) # 800040d8 <plicinithart>
    80003b08:	00000097          	auipc	ra,0x0
    80003b0c:	078080e7          	jalr	120(ra) # 80003b80 <userinit>
    80003b10:	0ff0000f          	fence
    80003b14:	00100793          	li	a5,1
    80003b18:	00003517          	auipc	a0,0x3
    80003b1c:	80850513          	addi	a0,a0,-2040 # 80006320 <CONSOLE_STATUS+0x310>
    80003b20:	00f4a023          	sw	a5,0(s1)
    80003b24:	00001097          	auipc	ra,0x1
    80003b28:	a44080e7          	jalr	-1468(ra) # 80004568 <__printf>
    80003b2c:	0000006f          	j	80003b2c <system_main+0xd4>

0000000080003b30 <cpuid>:
    80003b30:	ff010113          	addi	sp,sp,-16
    80003b34:	00813423          	sd	s0,8(sp)
    80003b38:	01010413          	addi	s0,sp,16
    80003b3c:	00020513          	mv	a0,tp
    80003b40:	00813403          	ld	s0,8(sp)
    80003b44:	0005051b          	sext.w	a0,a0
    80003b48:	01010113          	addi	sp,sp,16
    80003b4c:	00008067          	ret

0000000080003b50 <mycpu>:
    80003b50:	ff010113          	addi	sp,sp,-16
    80003b54:	00813423          	sd	s0,8(sp)
    80003b58:	01010413          	addi	s0,sp,16
    80003b5c:	00020793          	mv	a5,tp
    80003b60:	00813403          	ld	s0,8(sp)
    80003b64:	0007879b          	sext.w	a5,a5
    80003b68:	00779793          	slli	a5,a5,0x7
    80003b6c:	00005517          	auipc	a0,0x5
    80003b70:	92450513          	addi	a0,a0,-1756 # 80008490 <cpus>
    80003b74:	00f50533          	add	a0,a0,a5
    80003b78:	01010113          	addi	sp,sp,16
    80003b7c:	00008067          	ret

0000000080003b80 <userinit>:
    80003b80:	ff010113          	addi	sp,sp,-16
    80003b84:	00813423          	sd	s0,8(sp)
    80003b88:	01010413          	addi	s0,sp,16
    80003b8c:	00813403          	ld	s0,8(sp)
    80003b90:	01010113          	addi	sp,sp,16
    80003b94:	ffffe317          	auipc	t1,0xffffe
    80003b98:	ae430067          	jr	-1308(t1) # 80001678 <main>

0000000080003b9c <either_copyout>:
    80003b9c:	ff010113          	addi	sp,sp,-16
    80003ba0:	00813023          	sd	s0,0(sp)
    80003ba4:	00113423          	sd	ra,8(sp)
    80003ba8:	01010413          	addi	s0,sp,16
    80003bac:	02051663          	bnez	a0,80003bd8 <either_copyout+0x3c>
    80003bb0:	00058513          	mv	a0,a1
    80003bb4:	00060593          	mv	a1,a2
    80003bb8:	0006861b          	sext.w	a2,a3
    80003bbc:	00002097          	auipc	ra,0x2
    80003bc0:	c58080e7          	jalr	-936(ra) # 80005814 <__memmove>
    80003bc4:	00813083          	ld	ra,8(sp)
    80003bc8:	00013403          	ld	s0,0(sp)
    80003bcc:	00000513          	li	a0,0
    80003bd0:	01010113          	addi	sp,sp,16
    80003bd4:	00008067          	ret
    80003bd8:	00002517          	auipc	a0,0x2
    80003bdc:	78850513          	addi	a0,a0,1928 # 80006360 <CONSOLE_STATUS+0x350>
    80003be0:	00001097          	auipc	ra,0x1
    80003be4:	92c080e7          	jalr	-1748(ra) # 8000450c <panic>

0000000080003be8 <either_copyin>:
    80003be8:	ff010113          	addi	sp,sp,-16
    80003bec:	00813023          	sd	s0,0(sp)
    80003bf0:	00113423          	sd	ra,8(sp)
    80003bf4:	01010413          	addi	s0,sp,16
    80003bf8:	02059463          	bnez	a1,80003c20 <either_copyin+0x38>
    80003bfc:	00060593          	mv	a1,a2
    80003c00:	0006861b          	sext.w	a2,a3
    80003c04:	00002097          	auipc	ra,0x2
    80003c08:	c10080e7          	jalr	-1008(ra) # 80005814 <__memmove>
    80003c0c:	00813083          	ld	ra,8(sp)
    80003c10:	00013403          	ld	s0,0(sp)
    80003c14:	00000513          	li	a0,0
    80003c18:	01010113          	addi	sp,sp,16
    80003c1c:	00008067          	ret
    80003c20:	00002517          	auipc	a0,0x2
    80003c24:	76850513          	addi	a0,a0,1896 # 80006388 <CONSOLE_STATUS+0x378>
    80003c28:	00001097          	auipc	ra,0x1
    80003c2c:	8e4080e7          	jalr	-1820(ra) # 8000450c <panic>

0000000080003c30 <trapinit>:
    80003c30:	ff010113          	addi	sp,sp,-16
    80003c34:	00813423          	sd	s0,8(sp)
    80003c38:	01010413          	addi	s0,sp,16
    80003c3c:	00813403          	ld	s0,8(sp)
    80003c40:	00002597          	auipc	a1,0x2
    80003c44:	77058593          	addi	a1,a1,1904 # 800063b0 <CONSOLE_STATUS+0x3a0>
    80003c48:	00005517          	auipc	a0,0x5
    80003c4c:	8c850513          	addi	a0,a0,-1848 # 80008510 <tickslock>
    80003c50:	01010113          	addi	sp,sp,16
    80003c54:	00001317          	auipc	t1,0x1
    80003c58:	5c430067          	jr	1476(t1) # 80005218 <initlock>

0000000080003c5c <trapinithart>:
    80003c5c:	ff010113          	addi	sp,sp,-16
    80003c60:	00813423          	sd	s0,8(sp)
    80003c64:	01010413          	addi	s0,sp,16
    80003c68:	00000797          	auipc	a5,0x0
    80003c6c:	2f878793          	addi	a5,a5,760 # 80003f60 <kernelvec>
    80003c70:	10579073          	csrw	stvec,a5
    80003c74:	00813403          	ld	s0,8(sp)
    80003c78:	01010113          	addi	sp,sp,16
    80003c7c:	00008067          	ret

0000000080003c80 <usertrap>:
    80003c80:	ff010113          	addi	sp,sp,-16
    80003c84:	00813423          	sd	s0,8(sp)
    80003c88:	01010413          	addi	s0,sp,16
    80003c8c:	00813403          	ld	s0,8(sp)
    80003c90:	01010113          	addi	sp,sp,16
    80003c94:	00008067          	ret

0000000080003c98 <usertrapret>:
    80003c98:	ff010113          	addi	sp,sp,-16
    80003c9c:	00813423          	sd	s0,8(sp)
    80003ca0:	01010413          	addi	s0,sp,16
    80003ca4:	00813403          	ld	s0,8(sp)
    80003ca8:	01010113          	addi	sp,sp,16
    80003cac:	00008067          	ret

0000000080003cb0 <kerneltrap>:
    80003cb0:	fe010113          	addi	sp,sp,-32
    80003cb4:	00813823          	sd	s0,16(sp)
    80003cb8:	00113c23          	sd	ra,24(sp)
    80003cbc:	00913423          	sd	s1,8(sp)
    80003cc0:	02010413          	addi	s0,sp,32
    80003cc4:	142025f3          	csrr	a1,scause
    80003cc8:	100027f3          	csrr	a5,sstatus
    80003ccc:	0027f793          	andi	a5,a5,2
    80003cd0:	10079c63          	bnez	a5,80003de8 <kerneltrap+0x138>
    80003cd4:	142027f3          	csrr	a5,scause
    80003cd8:	0207ce63          	bltz	a5,80003d14 <kerneltrap+0x64>
    80003cdc:	00002517          	auipc	a0,0x2
    80003ce0:	71c50513          	addi	a0,a0,1820 # 800063f8 <CONSOLE_STATUS+0x3e8>
    80003ce4:	00001097          	auipc	ra,0x1
    80003ce8:	884080e7          	jalr	-1916(ra) # 80004568 <__printf>
    80003cec:	141025f3          	csrr	a1,sepc
    80003cf0:	14302673          	csrr	a2,stval
    80003cf4:	00002517          	auipc	a0,0x2
    80003cf8:	71450513          	addi	a0,a0,1812 # 80006408 <CONSOLE_STATUS+0x3f8>
    80003cfc:	00001097          	auipc	ra,0x1
    80003d00:	86c080e7          	jalr	-1940(ra) # 80004568 <__printf>
    80003d04:	00002517          	auipc	a0,0x2
    80003d08:	71c50513          	addi	a0,a0,1820 # 80006420 <CONSOLE_STATUS+0x410>
    80003d0c:	00001097          	auipc	ra,0x1
    80003d10:	800080e7          	jalr	-2048(ra) # 8000450c <panic>
    80003d14:	0ff7f713          	andi	a4,a5,255
    80003d18:	00900693          	li	a3,9
    80003d1c:	04d70063          	beq	a4,a3,80003d5c <kerneltrap+0xac>
    80003d20:	fff00713          	li	a4,-1
    80003d24:	03f71713          	slli	a4,a4,0x3f
    80003d28:	00170713          	addi	a4,a4,1
    80003d2c:	fae798e3          	bne	a5,a4,80003cdc <kerneltrap+0x2c>
    80003d30:	00000097          	auipc	ra,0x0
    80003d34:	e00080e7          	jalr	-512(ra) # 80003b30 <cpuid>
    80003d38:	06050663          	beqz	a0,80003da4 <kerneltrap+0xf4>
    80003d3c:	144027f3          	csrr	a5,sip
    80003d40:	ffd7f793          	andi	a5,a5,-3
    80003d44:	14479073          	csrw	sip,a5
    80003d48:	01813083          	ld	ra,24(sp)
    80003d4c:	01013403          	ld	s0,16(sp)
    80003d50:	00813483          	ld	s1,8(sp)
    80003d54:	02010113          	addi	sp,sp,32
    80003d58:	00008067          	ret
    80003d5c:	00000097          	auipc	ra,0x0
    80003d60:	3c8080e7          	jalr	968(ra) # 80004124 <plic_claim>
    80003d64:	00a00793          	li	a5,10
    80003d68:	00050493          	mv	s1,a0
    80003d6c:	06f50863          	beq	a0,a5,80003ddc <kerneltrap+0x12c>
    80003d70:	fc050ce3          	beqz	a0,80003d48 <kerneltrap+0x98>
    80003d74:	00050593          	mv	a1,a0
    80003d78:	00002517          	auipc	a0,0x2
    80003d7c:	66050513          	addi	a0,a0,1632 # 800063d8 <CONSOLE_STATUS+0x3c8>
    80003d80:	00000097          	auipc	ra,0x0
    80003d84:	7e8080e7          	jalr	2024(ra) # 80004568 <__printf>
    80003d88:	01013403          	ld	s0,16(sp)
    80003d8c:	01813083          	ld	ra,24(sp)
    80003d90:	00048513          	mv	a0,s1
    80003d94:	00813483          	ld	s1,8(sp)
    80003d98:	02010113          	addi	sp,sp,32
    80003d9c:	00000317          	auipc	t1,0x0
    80003da0:	3c030067          	jr	960(t1) # 8000415c <plic_complete>
    80003da4:	00004517          	auipc	a0,0x4
    80003da8:	76c50513          	addi	a0,a0,1900 # 80008510 <tickslock>
    80003dac:	00001097          	auipc	ra,0x1
    80003db0:	490080e7          	jalr	1168(ra) # 8000523c <acquire>
    80003db4:	00003717          	auipc	a4,0x3
    80003db8:	63070713          	addi	a4,a4,1584 # 800073e4 <ticks>
    80003dbc:	00072783          	lw	a5,0(a4)
    80003dc0:	00004517          	auipc	a0,0x4
    80003dc4:	75050513          	addi	a0,a0,1872 # 80008510 <tickslock>
    80003dc8:	0017879b          	addiw	a5,a5,1
    80003dcc:	00f72023          	sw	a5,0(a4)
    80003dd0:	00001097          	auipc	ra,0x1
    80003dd4:	538080e7          	jalr	1336(ra) # 80005308 <release>
    80003dd8:	f65ff06f          	j	80003d3c <kerneltrap+0x8c>
    80003ddc:	00001097          	auipc	ra,0x1
    80003de0:	094080e7          	jalr	148(ra) # 80004e70 <uartintr>
    80003de4:	fa5ff06f          	j	80003d88 <kerneltrap+0xd8>
    80003de8:	00002517          	auipc	a0,0x2
    80003dec:	5d050513          	addi	a0,a0,1488 # 800063b8 <CONSOLE_STATUS+0x3a8>
    80003df0:	00000097          	auipc	ra,0x0
    80003df4:	71c080e7          	jalr	1820(ra) # 8000450c <panic>

0000000080003df8 <clockintr>:
    80003df8:	fe010113          	addi	sp,sp,-32
    80003dfc:	00813823          	sd	s0,16(sp)
    80003e00:	00913423          	sd	s1,8(sp)
    80003e04:	00113c23          	sd	ra,24(sp)
    80003e08:	02010413          	addi	s0,sp,32
    80003e0c:	00004497          	auipc	s1,0x4
    80003e10:	70448493          	addi	s1,s1,1796 # 80008510 <tickslock>
    80003e14:	00048513          	mv	a0,s1
    80003e18:	00001097          	auipc	ra,0x1
    80003e1c:	424080e7          	jalr	1060(ra) # 8000523c <acquire>
    80003e20:	00003717          	auipc	a4,0x3
    80003e24:	5c470713          	addi	a4,a4,1476 # 800073e4 <ticks>
    80003e28:	00072783          	lw	a5,0(a4)
    80003e2c:	01013403          	ld	s0,16(sp)
    80003e30:	01813083          	ld	ra,24(sp)
    80003e34:	00048513          	mv	a0,s1
    80003e38:	0017879b          	addiw	a5,a5,1
    80003e3c:	00813483          	ld	s1,8(sp)
    80003e40:	00f72023          	sw	a5,0(a4)
    80003e44:	02010113          	addi	sp,sp,32
    80003e48:	00001317          	auipc	t1,0x1
    80003e4c:	4c030067          	jr	1216(t1) # 80005308 <release>

0000000080003e50 <devintr>:
    80003e50:	142027f3          	csrr	a5,scause
    80003e54:	00000513          	li	a0,0
    80003e58:	0007c463          	bltz	a5,80003e60 <devintr+0x10>
    80003e5c:	00008067          	ret
    80003e60:	fe010113          	addi	sp,sp,-32
    80003e64:	00813823          	sd	s0,16(sp)
    80003e68:	00113c23          	sd	ra,24(sp)
    80003e6c:	00913423          	sd	s1,8(sp)
    80003e70:	02010413          	addi	s0,sp,32
    80003e74:	0ff7f713          	andi	a4,a5,255
    80003e78:	00900693          	li	a3,9
    80003e7c:	04d70c63          	beq	a4,a3,80003ed4 <devintr+0x84>
    80003e80:	fff00713          	li	a4,-1
    80003e84:	03f71713          	slli	a4,a4,0x3f
    80003e88:	00170713          	addi	a4,a4,1
    80003e8c:	00e78c63          	beq	a5,a4,80003ea4 <devintr+0x54>
    80003e90:	01813083          	ld	ra,24(sp)
    80003e94:	01013403          	ld	s0,16(sp)
    80003e98:	00813483          	ld	s1,8(sp)
    80003e9c:	02010113          	addi	sp,sp,32
    80003ea0:	00008067          	ret
    80003ea4:	00000097          	auipc	ra,0x0
    80003ea8:	c8c080e7          	jalr	-884(ra) # 80003b30 <cpuid>
    80003eac:	06050663          	beqz	a0,80003f18 <devintr+0xc8>
    80003eb0:	144027f3          	csrr	a5,sip
    80003eb4:	ffd7f793          	andi	a5,a5,-3
    80003eb8:	14479073          	csrw	sip,a5
    80003ebc:	01813083          	ld	ra,24(sp)
    80003ec0:	01013403          	ld	s0,16(sp)
    80003ec4:	00813483          	ld	s1,8(sp)
    80003ec8:	00200513          	li	a0,2
    80003ecc:	02010113          	addi	sp,sp,32
    80003ed0:	00008067          	ret
    80003ed4:	00000097          	auipc	ra,0x0
    80003ed8:	250080e7          	jalr	592(ra) # 80004124 <plic_claim>
    80003edc:	00a00793          	li	a5,10
    80003ee0:	00050493          	mv	s1,a0
    80003ee4:	06f50663          	beq	a0,a5,80003f50 <devintr+0x100>
    80003ee8:	00100513          	li	a0,1
    80003eec:	fa0482e3          	beqz	s1,80003e90 <devintr+0x40>
    80003ef0:	00048593          	mv	a1,s1
    80003ef4:	00002517          	auipc	a0,0x2
    80003ef8:	4e450513          	addi	a0,a0,1252 # 800063d8 <CONSOLE_STATUS+0x3c8>
    80003efc:	00000097          	auipc	ra,0x0
    80003f00:	66c080e7          	jalr	1644(ra) # 80004568 <__printf>
    80003f04:	00048513          	mv	a0,s1
    80003f08:	00000097          	auipc	ra,0x0
    80003f0c:	254080e7          	jalr	596(ra) # 8000415c <plic_complete>
    80003f10:	00100513          	li	a0,1
    80003f14:	f7dff06f          	j	80003e90 <devintr+0x40>
    80003f18:	00004517          	auipc	a0,0x4
    80003f1c:	5f850513          	addi	a0,a0,1528 # 80008510 <tickslock>
    80003f20:	00001097          	auipc	ra,0x1
    80003f24:	31c080e7          	jalr	796(ra) # 8000523c <acquire>
    80003f28:	00003717          	auipc	a4,0x3
    80003f2c:	4bc70713          	addi	a4,a4,1212 # 800073e4 <ticks>
    80003f30:	00072783          	lw	a5,0(a4)
    80003f34:	00004517          	auipc	a0,0x4
    80003f38:	5dc50513          	addi	a0,a0,1500 # 80008510 <tickslock>
    80003f3c:	0017879b          	addiw	a5,a5,1
    80003f40:	00f72023          	sw	a5,0(a4)
    80003f44:	00001097          	auipc	ra,0x1
    80003f48:	3c4080e7          	jalr	964(ra) # 80005308 <release>
    80003f4c:	f65ff06f          	j	80003eb0 <devintr+0x60>
    80003f50:	00001097          	auipc	ra,0x1
    80003f54:	f20080e7          	jalr	-224(ra) # 80004e70 <uartintr>
    80003f58:	fadff06f          	j	80003f04 <devintr+0xb4>
    80003f5c:	0000                	unimp
	...

0000000080003f60 <kernelvec>:
    80003f60:	f0010113          	addi	sp,sp,-256
    80003f64:	00113023          	sd	ra,0(sp)
    80003f68:	00213423          	sd	sp,8(sp)
    80003f6c:	00313823          	sd	gp,16(sp)
    80003f70:	00413c23          	sd	tp,24(sp)
    80003f74:	02513023          	sd	t0,32(sp)
    80003f78:	02613423          	sd	t1,40(sp)
    80003f7c:	02713823          	sd	t2,48(sp)
    80003f80:	02813c23          	sd	s0,56(sp)
    80003f84:	04913023          	sd	s1,64(sp)
    80003f88:	04a13423          	sd	a0,72(sp)
    80003f8c:	04b13823          	sd	a1,80(sp)
    80003f90:	04c13c23          	sd	a2,88(sp)
    80003f94:	06d13023          	sd	a3,96(sp)
    80003f98:	06e13423          	sd	a4,104(sp)
    80003f9c:	06f13823          	sd	a5,112(sp)
    80003fa0:	07013c23          	sd	a6,120(sp)
    80003fa4:	09113023          	sd	a7,128(sp)
    80003fa8:	09213423          	sd	s2,136(sp)
    80003fac:	09313823          	sd	s3,144(sp)
    80003fb0:	09413c23          	sd	s4,152(sp)
    80003fb4:	0b513023          	sd	s5,160(sp)
    80003fb8:	0b613423          	sd	s6,168(sp)
    80003fbc:	0b713823          	sd	s7,176(sp)
    80003fc0:	0b813c23          	sd	s8,184(sp)
    80003fc4:	0d913023          	sd	s9,192(sp)
    80003fc8:	0da13423          	sd	s10,200(sp)
    80003fcc:	0db13823          	sd	s11,208(sp)
    80003fd0:	0dc13c23          	sd	t3,216(sp)
    80003fd4:	0fd13023          	sd	t4,224(sp)
    80003fd8:	0fe13423          	sd	t5,232(sp)
    80003fdc:	0ff13823          	sd	t6,240(sp)
    80003fe0:	cd1ff0ef          	jal	ra,80003cb0 <kerneltrap>
    80003fe4:	00013083          	ld	ra,0(sp)
    80003fe8:	00813103          	ld	sp,8(sp)
    80003fec:	01013183          	ld	gp,16(sp)
    80003ff0:	02013283          	ld	t0,32(sp)
    80003ff4:	02813303          	ld	t1,40(sp)
    80003ff8:	03013383          	ld	t2,48(sp)
    80003ffc:	03813403          	ld	s0,56(sp)
    80004000:	04013483          	ld	s1,64(sp)
    80004004:	04813503          	ld	a0,72(sp)
    80004008:	05013583          	ld	a1,80(sp)
    8000400c:	05813603          	ld	a2,88(sp)
    80004010:	06013683          	ld	a3,96(sp)
    80004014:	06813703          	ld	a4,104(sp)
    80004018:	07013783          	ld	a5,112(sp)
    8000401c:	07813803          	ld	a6,120(sp)
    80004020:	08013883          	ld	a7,128(sp)
    80004024:	08813903          	ld	s2,136(sp)
    80004028:	09013983          	ld	s3,144(sp)
    8000402c:	09813a03          	ld	s4,152(sp)
    80004030:	0a013a83          	ld	s5,160(sp)
    80004034:	0a813b03          	ld	s6,168(sp)
    80004038:	0b013b83          	ld	s7,176(sp)
    8000403c:	0b813c03          	ld	s8,184(sp)
    80004040:	0c013c83          	ld	s9,192(sp)
    80004044:	0c813d03          	ld	s10,200(sp)
    80004048:	0d013d83          	ld	s11,208(sp)
    8000404c:	0d813e03          	ld	t3,216(sp)
    80004050:	0e013e83          	ld	t4,224(sp)
    80004054:	0e813f03          	ld	t5,232(sp)
    80004058:	0f013f83          	ld	t6,240(sp)
    8000405c:	10010113          	addi	sp,sp,256
    80004060:	10200073          	sret
    80004064:	00000013          	nop
    80004068:	00000013          	nop
    8000406c:	00000013          	nop

0000000080004070 <timervec>:
    80004070:	34051573          	csrrw	a0,mscratch,a0
    80004074:	00b53023          	sd	a1,0(a0)
    80004078:	00c53423          	sd	a2,8(a0)
    8000407c:	00d53823          	sd	a3,16(a0)
    80004080:	01853583          	ld	a1,24(a0)
    80004084:	02053603          	ld	a2,32(a0)
    80004088:	0005b683          	ld	a3,0(a1)
    8000408c:	00c686b3          	add	a3,a3,a2
    80004090:	00d5b023          	sd	a3,0(a1)
    80004094:	00200593          	li	a1,2
    80004098:	14459073          	csrw	sip,a1
    8000409c:	01053683          	ld	a3,16(a0)
    800040a0:	00853603          	ld	a2,8(a0)
    800040a4:	00053583          	ld	a1,0(a0)
    800040a8:	34051573          	csrrw	a0,mscratch,a0
    800040ac:	30200073          	mret

00000000800040b0 <plicinit>:
    800040b0:	ff010113          	addi	sp,sp,-16
    800040b4:	00813423          	sd	s0,8(sp)
    800040b8:	01010413          	addi	s0,sp,16
    800040bc:	00813403          	ld	s0,8(sp)
    800040c0:	0c0007b7          	lui	a5,0xc000
    800040c4:	00100713          	li	a4,1
    800040c8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    800040cc:	00e7a223          	sw	a4,4(a5)
    800040d0:	01010113          	addi	sp,sp,16
    800040d4:	00008067          	ret

00000000800040d8 <plicinithart>:
    800040d8:	ff010113          	addi	sp,sp,-16
    800040dc:	00813023          	sd	s0,0(sp)
    800040e0:	00113423          	sd	ra,8(sp)
    800040e4:	01010413          	addi	s0,sp,16
    800040e8:	00000097          	auipc	ra,0x0
    800040ec:	a48080e7          	jalr	-1464(ra) # 80003b30 <cpuid>
    800040f0:	0085171b          	slliw	a4,a0,0x8
    800040f4:	0c0027b7          	lui	a5,0xc002
    800040f8:	00e787b3          	add	a5,a5,a4
    800040fc:	40200713          	li	a4,1026
    80004100:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80004104:	00813083          	ld	ra,8(sp)
    80004108:	00013403          	ld	s0,0(sp)
    8000410c:	00d5151b          	slliw	a0,a0,0xd
    80004110:	0c2017b7          	lui	a5,0xc201
    80004114:	00a78533          	add	a0,a5,a0
    80004118:	00052023          	sw	zero,0(a0)
    8000411c:	01010113          	addi	sp,sp,16
    80004120:	00008067          	ret

0000000080004124 <plic_claim>:
    80004124:	ff010113          	addi	sp,sp,-16
    80004128:	00813023          	sd	s0,0(sp)
    8000412c:	00113423          	sd	ra,8(sp)
    80004130:	01010413          	addi	s0,sp,16
    80004134:	00000097          	auipc	ra,0x0
    80004138:	9fc080e7          	jalr	-1540(ra) # 80003b30 <cpuid>
    8000413c:	00813083          	ld	ra,8(sp)
    80004140:	00013403          	ld	s0,0(sp)
    80004144:	00d5151b          	slliw	a0,a0,0xd
    80004148:	0c2017b7          	lui	a5,0xc201
    8000414c:	00a78533          	add	a0,a5,a0
    80004150:	00452503          	lw	a0,4(a0)
    80004154:	01010113          	addi	sp,sp,16
    80004158:	00008067          	ret

000000008000415c <plic_complete>:
    8000415c:	fe010113          	addi	sp,sp,-32
    80004160:	00813823          	sd	s0,16(sp)
    80004164:	00913423          	sd	s1,8(sp)
    80004168:	00113c23          	sd	ra,24(sp)
    8000416c:	02010413          	addi	s0,sp,32
    80004170:	00050493          	mv	s1,a0
    80004174:	00000097          	auipc	ra,0x0
    80004178:	9bc080e7          	jalr	-1604(ra) # 80003b30 <cpuid>
    8000417c:	01813083          	ld	ra,24(sp)
    80004180:	01013403          	ld	s0,16(sp)
    80004184:	00d5179b          	slliw	a5,a0,0xd
    80004188:	0c201737          	lui	a4,0xc201
    8000418c:	00f707b3          	add	a5,a4,a5
    80004190:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80004194:	00813483          	ld	s1,8(sp)
    80004198:	02010113          	addi	sp,sp,32
    8000419c:	00008067          	ret

00000000800041a0 <consolewrite>:
    800041a0:	fb010113          	addi	sp,sp,-80
    800041a4:	04813023          	sd	s0,64(sp)
    800041a8:	04113423          	sd	ra,72(sp)
    800041ac:	02913c23          	sd	s1,56(sp)
    800041b0:	03213823          	sd	s2,48(sp)
    800041b4:	03313423          	sd	s3,40(sp)
    800041b8:	03413023          	sd	s4,32(sp)
    800041bc:	01513c23          	sd	s5,24(sp)
    800041c0:	05010413          	addi	s0,sp,80
    800041c4:	06c05c63          	blez	a2,8000423c <consolewrite+0x9c>
    800041c8:	00060993          	mv	s3,a2
    800041cc:	00050a13          	mv	s4,a0
    800041d0:	00058493          	mv	s1,a1
    800041d4:	00000913          	li	s2,0
    800041d8:	fff00a93          	li	s5,-1
    800041dc:	01c0006f          	j	800041f8 <consolewrite+0x58>
    800041e0:	fbf44503          	lbu	a0,-65(s0)
    800041e4:	0019091b          	addiw	s2,s2,1
    800041e8:	00148493          	addi	s1,s1,1
    800041ec:	00001097          	auipc	ra,0x1
    800041f0:	a9c080e7          	jalr	-1380(ra) # 80004c88 <uartputc>
    800041f4:	03298063          	beq	s3,s2,80004214 <consolewrite+0x74>
    800041f8:	00048613          	mv	a2,s1
    800041fc:	00100693          	li	a3,1
    80004200:	000a0593          	mv	a1,s4
    80004204:	fbf40513          	addi	a0,s0,-65
    80004208:	00000097          	auipc	ra,0x0
    8000420c:	9e0080e7          	jalr	-1568(ra) # 80003be8 <either_copyin>
    80004210:	fd5518e3          	bne	a0,s5,800041e0 <consolewrite+0x40>
    80004214:	04813083          	ld	ra,72(sp)
    80004218:	04013403          	ld	s0,64(sp)
    8000421c:	03813483          	ld	s1,56(sp)
    80004220:	02813983          	ld	s3,40(sp)
    80004224:	02013a03          	ld	s4,32(sp)
    80004228:	01813a83          	ld	s5,24(sp)
    8000422c:	00090513          	mv	a0,s2
    80004230:	03013903          	ld	s2,48(sp)
    80004234:	05010113          	addi	sp,sp,80
    80004238:	00008067          	ret
    8000423c:	00000913          	li	s2,0
    80004240:	fd5ff06f          	j	80004214 <consolewrite+0x74>

0000000080004244 <consoleread>:
    80004244:	f9010113          	addi	sp,sp,-112
    80004248:	06813023          	sd	s0,96(sp)
    8000424c:	04913c23          	sd	s1,88(sp)
    80004250:	05213823          	sd	s2,80(sp)
    80004254:	05313423          	sd	s3,72(sp)
    80004258:	05413023          	sd	s4,64(sp)
    8000425c:	03513c23          	sd	s5,56(sp)
    80004260:	03613823          	sd	s6,48(sp)
    80004264:	03713423          	sd	s7,40(sp)
    80004268:	03813023          	sd	s8,32(sp)
    8000426c:	06113423          	sd	ra,104(sp)
    80004270:	01913c23          	sd	s9,24(sp)
    80004274:	07010413          	addi	s0,sp,112
    80004278:	00060b93          	mv	s7,a2
    8000427c:	00050913          	mv	s2,a0
    80004280:	00058c13          	mv	s8,a1
    80004284:	00060b1b          	sext.w	s6,a2
    80004288:	00004497          	auipc	s1,0x4
    8000428c:	2b048493          	addi	s1,s1,688 # 80008538 <cons>
    80004290:	00400993          	li	s3,4
    80004294:	fff00a13          	li	s4,-1
    80004298:	00a00a93          	li	s5,10
    8000429c:	05705e63          	blez	s7,800042f8 <consoleread+0xb4>
    800042a0:	09c4a703          	lw	a4,156(s1)
    800042a4:	0984a783          	lw	a5,152(s1)
    800042a8:	0007071b          	sext.w	a4,a4
    800042ac:	08e78463          	beq	a5,a4,80004334 <consoleread+0xf0>
    800042b0:	07f7f713          	andi	a4,a5,127
    800042b4:	00e48733          	add	a4,s1,a4
    800042b8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    800042bc:	0017869b          	addiw	a3,a5,1
    800042c0:	08d4ac23          	sw	a3,152(s1)
    800042c4:	00070c9b          	sext.w	s9,a4
    800042c8:	0b370663          	beq	a4,s3,80004374 <consoleread+0x130>
    800042cc:	00100693          	li	a3,1
    800042d0:	f9f40613          	addi	a2,s0,-97
    800042d4:	000c0593          	mv	a1,s8
    800042d8:	00090513          	mv	a0,s2
    800042dc:	f8e40fa3          	sb	a4,-97(s0)
    800042e0:	00000097          	auipc	ra,0x0
    800042e4:	8bc080e7          	jalr	-1860(ra) # 80003b9c <either_copyout>
    800042e8:	01450863          	beq	a0,s4,800042f8 <consoleread+0xb4>
    800042ec:	001c0c13          	addi	s8,s8,1
    800042f0:	fffb8b9b          	addiw	s7,s7,-1
    800042f4:	fb5c94e3          	bne	s9,s5,8000429c <consoleread+0x58>
    800042f8:	000b851b          	sext.w	a0,s7
    800042fc:	06813083          	ld	ra,104(sp)
    80004300:	06013403          	ld	s0,96(sp)
    80004304:	05813483          	ld	s1,88(sp)
    80004308:	05013903          	ld	s2,80(sp)
    8000430c:	04813983          	ld	s3,72(sp)
    80004310:	04013a03          	ld	s4,64(sp)
    80004314:	03813a83          	ld	s5,56(sp)
    80004318:	02813b83          	ld	s7,40(sp)
    8000431c:	02013c03          	ld	s8,32(sp)
    80004320:	01813c83          	ld	s9,24(sp)
    80004324:	40ab053b          	subw	a0,s6,a0
    80004328:	03013b03          	ld	s6,48(sp)
    8000432c:	07010113          	addi	sp,sp,112
    80004330:	00008067          	ret
    80004334:	00001097          	auipc	ra,0x1
    80004338:	1d8080e7          	jalr	472(ra) # 8000550c <push_on>
    8000433c:	0984a703          	lw	a4,152(s1)
    80004340:	09c4a783          	lw	a5,156(s1)
    80004344:	0007879b          	sext.w	a5,a5
    80004348:	fef70ce3          	beq	a4,a5,80004340 <consoleread+0xfc>
    8000434c:	00001097          	auipc	ra,0x1
    80004350:	234080e7          	jalr	564(ra) # 80005580 <pop_on>
    80004354:	0984a783          	lw	a5,152(s1)
    80004358:	07f7f713          	andi	a4,a5,127
    8000435c:	00e48733          	add	a4,s1,a4
    80004360:	01874703          	lbu	a4,24(a4)
    80004364:	0017869b          	addiw	a3,a5,1
    80004368:	08d4ac23          	sw	a3,152(s1)
    8000436c:	00070c9b          	sext.w	s9,a4
    80004370:	f5371ee3          	bne	a4,s3,800042cc <consoleread+0x88>
    80004374:	000b851b          	sext.w	a0,s7
    80004378:	f96bf2e3          	bgeu	s7,s6,800042fc <consoleread+0xb8>
    8000437c:	08f4ac23          	sw	a5,152(s1)
    80004380:	f7dff06f          	j	800042fc <consoleread+0xb8>

0000000080004384 <consputc>:
    80004384:	10000793          	li	a5,256
    80004388:	00f50663          	beq	a0,a5,80004394 <consputc+0x10>
    8000438c:	00001317          	auipc	t1,0x1
    80004390:	9f430067          	jr	-1548(t1) # 80004d80 <uartputc_sync>
    80004394:	ff010113          	addi	sp,sp,-16
    80004398:	00113423          	sd	ra,8(sp)
    8000439c:	00813023          	sd	s0,0(sp)
    800043a0:	01010413          	addi	s0,sp,16
    800043a4:	00800513          	li	a0,8
    800043a8:	00001097          	auipc	ra,0x1
    800043ac:	9d8080e7          	jalr	-1576(ra) # 80004d80 <uartputc_sync>
    800043b0:	02000513          	li	a0,32
    800043b4:	00001097          	auipc	ra,0x1
    800043b8:	9cc080e7          	jalr	-1588(ra) # 80004d80 <uartputc_sync>
    800043bc:	00013403          	ld	s0,0(sp)
    800043c0:	00813083          	ld	ra,8(sp)
    800043c4:	00800513          	li	a0,8
    800043c8:	01010113          	addi	sp,sp,16
    800043cc:	00001317          	auipc	t1,0x1
    800043d0:	9b430067          	jr	-1612(t1) # 80004d80 <uartputc_sync>

00000000800043d4 <consoleintr>:
    800043d4:	fe010113          	addi	sp,sp,-32
    800043d8:	00813823          	sd	s0,16(sp)
    800043dc:	00913423          	sd	s1,8(sp)
    800043e0:	01213023          	sd	s2,0(sp)
    800043e4:	00113c23          	sd	ra,24(sp)
    800043e8:	02010413          	addi	s0,sp,32
    800043ec:	00004917          	auipc	s2,0x4
    800043f0:	14c90913          	addi	s2,s2,332 # 80008538 <cons>
    800043f4:	00050493          	mv	s1,a0
    800043f8:	00090513          	mv	a0,s2
    800043fc:	00001097          	auipc	ra,0x1
    80004400:	e40080e7          	jalr	-448(ra) # 8000523c <acquire>
    80004404:	02048c63          	beqz	s1,8000443c <consoleintr+0x68>
    80004408:	0a092783          	lw	a5,160(s2)
    8000440c:	09892703          	lw	a4,152(s2)
    80004410:	07f00693          	li	a3,127
    80004414:	40e7873b          	subw	a4,a5,a4
    80004418:	02e6e263          	bltu	a3,a4,8000443c <consoleintr+0x68>
    8000441c:	00d00713          	li	a4,13
    80004420:	04e48063          	beq	s1,a4,80004460 <consoleintr+0x8c>
    80004424:	07f7f713          	andi	a4,a5,127
    80004428:	00e90733          	add	a4,s2,a4
    8000442c:	0017879b          	addiw	a5,a5,1
    80004430:	0af92023          	sw	a5,160(s2)
    80004434:	00970c23          	sb	s1,24(a4)
    80004438:	08f92e23          	sw	a5,156(s2)
    8000443c:	01013403          	ld	s0,16(sp)
    80004440:	01813083          	ld	ra,24(sp)
    80004444:	00813483          	ld	s1,8(sp)
    80004448:	00013903          	ld	s2,0(sp)
    8000444c:	00004517          	auipc	a0,0x4
    80004450:	0ec50513          	addi	a0,a0,236 # 80008538 <cons>
    80004454:	02010113          	addi	sp,sp,32
    80004458:	00001317          	auipc	t1,0x1
    8000445c:	eb030067          	jr	-336(t1) # 80005308 <release>
    80004460:	00a00493          	li	s1,10
    80004464:	fc1ff06f          	j	80004424 <consoleintr+0x50>

0000000080004468 <consoleinit>:
    80004468:	fe010113          	addi	sp,sp,-32
    8000446c:	00113c23          	sd	ra,24(sp)
    80004470:	00813823          	sd	s0,16(sp)
    80004474:	00913423          	sd	s1,8(sp)
    80004478:	02010413          	addi	s0,sp,32
    8000447c:	00004497          	auipc	s1,0x4
    80004480:	0bc48493          	addi	s1,s1,188 # 80008538 <cons>
    80004484:	00048513          	mv	a0,s1
    80004488:	00002597          	auipc	a1,0x2
    8000448c:	fa858593          	addi	a1,a1,-88 # 80006430 <CONSOLE_STATUS+0x420>
    80004490:	00001097          	auipc	ra,0x1
    80004494:	d88080e7          	jalr	-632(ra) # 80005218 <initlock>
    80004498:	00000097          	auipc	ra,0x0
    8000449c:	7ac080e7          	jalr	1964(ra) # 80004c44 <uartinit>
    800044a0:	01813083          	ld	ra,24(sp)
    800044a4:	01013403          	ld	s0,16(sp)
    800044a8:	00000797          	auipc	a5,0x0
    800044ac:	d9c78793          	addi	a5,a5,-612 # 80004244 <consoleread>
    800044b0:	0af4bc23          	sd	a5,184(s1)
    800044b4:	00000797          	auipc	a5,0x0
    800044b8:	cec78793          	addi	a5,a5,-788 # 800041a0 <consolewrite>
    800044bc:	0cf4b023          	sd	a5,192(s1)
    800044c0:	00813483          	ld	s1,8(sp)
    800044c4:	02010113          	addi	sp,sp,32
    800044c8:	00008067          	ret

00000000800044cc <console_read>:
    800044cc:	ff010113          	addi	sp,sp,-16
    800044d0:	00813423          	sd	s0,8(sp)
    800044d4:	01010413          	addi	s0,sp,16
    800044d8:	00813403          	ld	s0,8(sp)
    800044dc:	00004317          	auipc	t1,0x4
    800044e0:	11433303          	ld	t1,276(t1) # 800085f0 <devsw+0x10>
    800044e4:	01010113          	addi	sp,sp,16
    800044e8:	00030067          	jr	t1

00000000800044ec <console_write>:
    800044ec:	ff010113          	addi	sp,sp,-16
    800044f0:	00813423          	sd	s0,8(sp)
    800044f4:	01010413          	addi	s0,sp,16
    800044f8:	00813403          	ld	s0,8(sp)
    800044fc:	00004317          	auipc	t1,0x4
    80004500:	0fc33303          	ld	t1,252(t1) # 800085f8 <devsw+0x18>
    80004504:	01010113          	addi	sp,sp,16
    80004508:	00030067          	jr	t1

000000008000450c <panic>:
    8000450c:	fe010113          	addi	sp,sp,-32
    80004510:	00113c23          	sd	ra,24(sp)
    80004514:	00813823          	sd	s0,16(sp)
    80004518:	00913423          	sd	s1,8(sp)
    8000451c:	02010413          	addi	s0,sp,32
    80004520:	00050493          	mv	s1,a0
    80004524:	00002517          	auipc	a0,0x2
    80004528:	f1450513          	addi	a0,a0,-236 # 80006438 <CONSOLE_STATUS+0x428>
    8000452c:	00004797          	auipc	a5,0x4
    80004530:	1607a623          	sw	zero,364(a5) # 80008698 <pr+0x18>
    80004534:	00000097          	auipc	ra,0x0
    80004538:	034080e7          	jalr	52(ra) # 80004568 <__printf>
    8000453c:	00048513          	mv	a0,s1
    80004540:	00000097          	auipc	ra,0x0
    80004544:	028080e7          	jalr	40(ra) # 80004568 <__printf>
    80004548:	00002517          	auipc	a0,0x2
    8000454c:	ed050513          	addi	a0,a0,-304 # 80006418 <CONSOLE_STATUS+0x408>
    80004550:	00000097          	auipc	ra,0x0
    80004554:	018080e7          	jalr	24(ra) # 80004568 <__printf>
    80004558:	00100793          	li	a5,1
    8000455c:	00003717          	auipc	a4,0x3
    80004560:	e8f72623          	sw	a5,-372(a4) # 800073e8 <panicked>
    80004564:	0000006f          	j	80004564 <panic+0x58>

0000000080004568 <__printf>:
    80004568:	f3010113          	addi	sp,sp,-208
    8000456c:	08813023          	sd	s0,128(sp)
    80004570:	07313423          	sd	s3,104(sp)
    80004574:	09010413          	addi	s0,sp,144
    80004578:	05813023          	sd	s8,64(sp)
    8000457c:	08113423          	sd	ra,136(sp)
    80004580:	06913c23          	sd	s1,120(sp)
    80004584:	07213823          	sd	s2,112(sp)
    80004588:	07413023          	sd	s4,96(sp)
    8000458c:	05513c23          	sd	s5,88(sp)
    80004590:	05613823          	sd	s6,80(sp)
    80004594:	05713423          	sd	s7,72(sp)
    80004598:	03913c23          	sd	s9,56(sp)
    8000459c:	03a13823          	sd	s10,48(sp)
    800045a0:	03b13423          	sd	s11,40(sp)
    800045a4:	00004317          	auipc	t1,0x4
    800045a8:	0dc30313          	addi	t1,t1,220 # 80008680 <pr>
    800045ac:	01832c03          	lw	s8,24(t1)
    800045b0:	00b43423          	sd	a1,8(s0)
    800045b4:	00c43823          	sd	a2,16(s0)
    800045b8:	00d43c23          	sd	a3,24(s0)
    800045bc:	02e43023          	sd	a4,32(s0)
    800045c0:	02f43423          	sd	a5,40(s0)
    800045c4:	03043823          	sd	a6,48(s0)
    800045c8:	03143c23          	sd	a7,56(s0)
    800045cc:	00050993          	mv	s3,a0
    800045d0:	4a0c1663          	bnez	s8,80004a7c <__printf+0x514>
    800045d4:	60098c63          	beqz	s3,80004bec <__printf+0x684>
    800045d8:	0009c503          	lbu	a0,0(s3)
    800045dc:	00840793          	addi	a5,s0,8
    800045e0:	f6f43c23          	sd	a5,-136(s0)
    800045e4:	00000493          	li	s1,0
    800045e8:	22050063          	beqz	a0,80004808 <__printf+0x2a0>
    800045ec:	00002a37          	lui	s4,0x2
    800045f0:	00018ab7          	lui	s5,0x18
    800045f4:	000f4b37          	lui	s6,0xf4
    800045f8:	00989bb7          	lui	s7,0x989
    800045fc:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80004600:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80004604:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80004608:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000460c:	00148c9b          	addiw	s9,s1,1
    80004610:	02500793          	li	a5,37
    80004614:	01998933          	add	s2,s3,s9
    80004618:	38f51263          	bne	a0,a5,8000499c <__printf+0x434>
    8000461c:	00094783          	lbu	a5,0(s2)
    80004620:	00078c9b          	sext.w	s9,a5
    80004624:	1e078263          	beqz	a5,80004808 <__printf+0x2a0>
    80004628:	0024849b          	addiw	s1,s1,2
    8000462c:	07000713          	li	a4,112
    80004630:	00998933          	add	s2,s3,s1
    80004634:	38e78a63          	beq	a5,a4,800049c8 <__printf+0x460>
    80004638:	20f76863          	bltu	a4,a5,80004848 <__printf+0x2e0>
    8000463c:	42a78863          	beq	a5,a0,80004a6c <__printf+0x504>
    80004640:	06400713          	li	a4,100
    80004644:	40e79663          	bne	a5,a4,80004a50 <__printf+0x4e8>
    80004648:	f7843783          	ld	a5,-136(s0)
    8000464c:	0007a603          	lw	a2,0(a5)
    80004650:	00878793          	addi	a5,a5,8
    80004654:	f6f43c23          	sd	a5,-136(s0)
    80004658:	42064a63          	bltz	a2,80004a8c <__printf+0x524>
    8000465c:	00a00713          	li	a4,10
    80004660:	02e677bb          	remuw	a5,a2,a4
    80004664:	00002d97          	auipc	s11,0x2
    80004668:	dfcd8d93          	addi	s11,s11,-516 # 80006460 <digits>
    8000466c:	00900593          	li	a1,9
    80004670:	0006051b          	sext.w	a0,a2
    80004674:	00000c93          	li	s9,0
    80004678:	02079793          	slli	a5,a5,0x20
    8000467c:	0207d793          	srli	a5,a5,0x20
    80004680:	00fd87b3          	add	a5,s11,a5
    80004684:	0007c783          	lbu	a5,0(a5)
    80004688:	02e656bb          	divuw	a3,a2,a4
    8000468c:	f8f40023          	sb	a5,-128(s0)
    80004690:	14c5d863          	bge	a1,a2,800047e0 <__printf+0x278>
    80004694:	06300593          	li	a1,99
    80004698:	00100c93          	li	s9,1
    8000469c:	02e6f7bb          	remuw	a5,a3,a4
    800046a0:	02079793          	slli	a5,a5,0x20
    800046a4:	0207d793          	srli	a5,a5,0x20
    800046a8:	00fd87b3          	add	a5,s11,a5
    800046ac:	0007c783          	lbu	a5,0(a5)
    800046b0:	02e6d73b          	divuw	a4,a3,a4
    800046b4:	f8f400a3          	sb	a5,-127(s0)
    800046b8:	12a5f463          	bgeu	a1,a0,800047e0 <__printf+0x278>
    800046bc:	00a00693          	li	a3,10
    800046c0:	00900593          	li	a1,9
    800046c4:	02d777bb          	remuw	a5,a4,a3
    800046c8:	02079793          	slli	a5,a5,0x20
    800046cc:	0207d793          	srli	a5,a5,0x20
    800046d0:	00fd87b3          	add	a5,s11,a5
    800046d4:	0007c503          	lbu	a0,0(a5)
    800046d8:	02d757bb          	divuw	a5,a4,a3
    800046dc:	f8a40123          	sb	a0,-126(s0)
    800046e0:	48e5f263          	bgeu	a1,a4,80004b64 <__printf+0x5fc>
    800046e4:	06300513          	li	a0,99
    800046e8:	02d7f5bb          	remuw	a1,a5,a3
    800046ec:	02059593          	slli	a1,a1,0x20
    800046f0:	0205d593          	srli	a1,a1,0x20
    800046f4:	00bd85b3          	add	a1,s11,a1
    800046f8:	0005c583          	lbu	a1,0(a1)
    800046fc:	02d7d7bb          	divuw	a5,a5,a3
    80004700:	f8b401a3          	sb	a1,-125(s0)
    80004704:	48e57263          	bgeu	a0,a4,80004b88 <__printf+0x620>
    80004708:	3e700513          	li	a0,999
    8000470c:	02d7f5bb          	remuw	a1,a5,a3
    80004710:	02059593          	slli	a1,a1,0x20
    80004714:	0205d593          	srli	a1,a1,0x20
    80004718:	00bd85b3          	add	a1,s11,a1
    8000471c:	0005c583          	lbu	a1,0(a1)
    80004720:	02d7d7bb          	divuw	a5,a5,a3
    80004724:	f8b40223          	sb	a1,-124(s0)
    80004728:	46e57663          	bgeu	a0,a4,80004b94 <__printf+0x62c>
    8000472c:	02d7f5bb          	remuw	a1,a5,a3
    80004730:	02059593          	slli	a1,a1,0x20
    80004734:	0205d593          	srli	a1,a1,0x20
    80004738:	00bd85b3          	add	a1,s11,a1
    8000473c:	0005c583          	lbu	a1,0(a1)
    80004740:	02d7d7bb          	divuw	a5,a5,a3
    80004744:	f8b402a3          	sb	a1,-123(s0)
    80004748:	46ea7863          	bgeu	s4,a4,80004bb8 <__printf+0x650>
    8000474c:	02d7f5bb          	remuw	a1,a5,a3
    80004750:	02059593          	slli	a1,a1,0x20
    80004754:	0205d593          	srli	a1,a1,0x20
    80004758:	00bd85b3          	add	a1,s11,a1
    8000475c:	0005c583          	lbu	a1,0(a1)
    80004760:	02d7d7bb          	divuw	a5,a5,a3
    80004764:	f8b40323          	sb	a1,-122(s0)
    80004768:	3eeaf863          	bgeu	s5,a4,80004b58 <__printf+0x5f0>
    8000476c:	02d7f5bb          	remuw	a1,a5,a3
    80004770:	02059593          	slli	a1,a1,0x20
    80004774:	0205d593          	srli	a1,a1,0x20
    80004778:	00bd85b3          	add	a1,s11,a1
    8000477c:	0005c583          	lbu	a1,0(a1)
    80004780:	02d7d7bb          	divuw	a5,a5,a3
    80004784:	f8b403a3          	sb	a1,-121(s0)
    80004788:	42eb7e63          	bgeu	s6,a4,80004bc4 <__printf+0x65c>
    8000478c:	02d7f5bb          	remuw	a1,a5,a3
    80004790:	02059593          	slli	a1,a1,0x20
    80004794:	0205d593          	srli	a1,a1,0x20
    80004798:	00bd85b3          	add	a1,s11,a1
    8000479c:	0005c583          	lbu	a1,0(a1)
    800047a0:	02d7d7bb          	divuw	a5,a5,a3
    800047a4:	f8b40423          	sb	a1,-120(s0)
    800047a8:	42ebfc63          	bgeu	s7,a4,80004be0 <__printf+0x678>
    800047ac:	02079793          	slli	a5,a5,0x20
    800047b0:	0207d793          	srli	a5,a5,0x20
    800047b4:	00fd8db3          	add	s11,s11,a5
    800047b8:	000dc703          	lbu	a4,0(s11)
    800047bc:	00a00793          	li	a5,10
    800047c0:	00900c93          	li	s9,9
    800047c4:	f8e404a3          	sb	a4,-119(s0)
    800047c8:	00065c63          	bgez	a2,800047e0 <__printf+0x278>
    800047cc:	f9040713          	addi	a4,s0,-112
    800047d0:	00f70733          	add	a4,a4,a5
    800047d4:	02d00693          	li	a3,45
    800047d8:	fed70823          	sb	a3,-16(a4)
    800047dc:	00078c93          	mv	s9,a5
    800047e0:	f8040793          	addi	a5,s0,-128
    800047e4:	01978cb3          	add	s9,a5,s9
    800047e8:	f7f40d13          	addi	s10,s0,-129
    800047ec:	000cc503          	lbu	a0,0(s9)
    800047f0:	fffc8c93          	addi	s9,s9,-1
    800047f4:	00000097          	auipc	ra,0x0
    800047f8:	b90080e7          	jalr	-1136(ra) # 80004384 <consputc>
    800047fc:	ffac98e3          	bne	s9,s10,800047ec <__printf+0x284>
    80004800:	00094503          	lbu	a0,0(s2)
    80004804:	e00514e3          	bnez	a0,8000460c <__printf+0xa4>
    80004808:	1a0c1663          	bnez	s8,800049b4 <__printf+0x44c>
    8000480c:	08813083          	ld	ra,136(sp)
    80004810:	08013403          	ld	s0,128(sp)
    80004814:	07813483          	ld	s1,120(sp)
    80004818:	07013903          	ld	s2,112(sp)
    8000481c:	06813983          	ld	s3,104(sp)
    80004820:	06013a03          	ld	s4,96(sp)
    80004824:	05813a83          	ld	s5,88(sp)
    80004828:	05013b03          	ld	s6,80(sp)
    8000482c:	04813b83          	ld	s7,72(sp)
    80004830:	04013c03          	ld	s8,64(sp)
    80004834:	03813c83          	ld	s9,56(sp)
    80004838:	03013d03          	ld	s10,48(sp)
    8000483c:	02813d83          	ld	s11,40(sp)
    80004840:	0d010113          	addi	sp,sp,208
    80004844:	00008067          	ret
    80004848:	07300713          	li	a4,115
    8000484c:	1ce78a63          	beq	a5,a4,80004a20 <__printf+0x4b8>
    80004850:	07800713          	li	a4,120
    80004854:	1ee79e63          	bne	a5,a4,80004a50 <__printf+0x4e8>
    80004858:	f7843783          	ld	a5,-136(s0)
    8000485c:	0007a703          	lw	a4,0(a5)
    80004860:	00878793          	addi	a5,a5,8
    80004864:	f6f43c23          	sd	a5,-136(s0)
    80004868:	28074263          	bltz	a4,80004aec <__printf+0x584>
    8000486c:	00002d97          	auipc	s11,0x2
    80004870:	bf4d8d93          	addi	s11,s11,-1036 # 80006460 <digits>
    80004874:	00f77793          	andi	a5,a4,15
    80004878:	00fd87b3          	add	a5,s11,a5
    8000487c:	0007c683          	lbu	a3,0(a5)
    80004880:	00f00613          	li	a2,15
    80004884:	0007079b          	sext.w	a5,a4
    80004888:	f8d40023          	sb	a3,-128(s0)
    8000488c:	0047559b          	srliw	a1,a4,0x4
    80004890:	0047569b          	srliw	a3,a4,0x4
    80004894:	00000c93          	li	s9,0
    80004898:	0ee65063          	bge	a2,a4,80004978 <__printf+0x410>
    8000489c:	00f6f693          	andi	a3,a3,15
    800048a0:	00dd86b3          	add	a3,s11,a3
    800048a4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    800048a8:	0087d79b          	srliw	a5,a5,0x8
    800048ac:	00100c93          	li	s9,1
    800048b0:	f8d400a3          	sb	a3,-127(s0)
    800048b4:	0cb67263          	bgeu	a2,a1,80004978 <__printf+0x410>
    800048b8:	00f7f693          	andi	a3,a5,15
    800048bc:	00dd86b3          	add	a3,s11,a3
    800048c0:	0006c583          	lbu	a1,0(a3)
    800048c4:	00f00613          	li	a2,15
    800048c8:	0047d69b          	srliw	a3,a5,0x4
    800048cc:	f8b40123          	sb	a1,-126(s0)
    800048d0:	0047d593          	srli	a1,a5,0x4
    800048d4:	28f67e63          	bgeu	a2,a5,80004b70 <__printf+0x608>
    800048d8:	00f6f693          	andi	a3,a3,15
    800048dc:	00dd86b3          	add	a3,s11,a3
    800048e0:	0006c503          	lbu	a0,0(a3)
    800048e4:	0087d813          	srli	a6,a5,0x8
    800048e8:	0087d69b          	srliw	a3,a5,0x8
    800048ec:	f8a401a3          	sb	a0,-125(s0)
    800048f0:	28b67663          	bgeu	a2,a1,80004b7c <__printf+0x614>
    800048f4:	00f6f693          	andi	a3,a3,15
    800048f8:	00dd86b3          	add	a3,s11,a3
    800048fc:	0006c583          	lbu	a1,0(a3)
    80004900:	00c7d513          	srli	a0,a5,0xc
    80004904:	00c7d69b          	srliw	a3,a5,0xc
    80004908:	f8b40223          	sb	a1,-124(s0)
    8000490c:	29067a63          	bgeu	a2,a6,80004ba0 <__printf+0x638>
    80004910:	00f6f693          	andi	a3,a3,15
    80004914:	00dd86b3          	add	a3,s11,a3
    80004918:	0006c583          	lbu	a1,0(a3)
    8000491c:	0107d813          	srli	a6,a5,0x10
    80004920:	0107d69b          	srliw	a3,a5,0x10
    80004924:	f8b402a3          	sb	a1,-123(s0)
    80004928:	28a67263          	bgeu	a2,a0,80004bac <__printf+0x644>
    8000492c:	00f6f693          	andi	a3,a3,15
    80004930:	00dd86b3          	add	a3,s11,a3
    80004934:	0006c683          	lbu	a3,0(a3)
    80004938:	0147d79b          	srliw	a5,a5,0x14
    8000493c:	f8d40323          	sb	a3,-122(s0)
    80004940:	21067663          	bgeu	a2,a6,80004b4c <__printf+0x5e4>
    80004944:	02079793          	slli	a5,a5,0x20
    80004948:	0207d793          	srli	a5,a5,0x20
    8000494c:	00fd8db3          	add	s11,s11,a5
    80004950:	000dc683          	lbu	a3,0(s11)
    80004954:	00800793          	li	a5,8
    80004958:	00700c93          	li	s9,7
    8000495c:	f8d403a3          	sb	a3,-121(s0)
    80004960:	00075c63          	bgez	a4,80004978 <__printf+0x410>
    80004964:	f9040713          	addi	a4,s0,-112
    80004968:	00f70733          	add	a4,a4,a5
    8000496c:	02d00693          	li	a3,45
    80004970:	fed70823          	sb	a3,-16(a4)
    80004974:	00078c93          	mv	s9,a5
    80004978:	f8040793          	addi	a5,s0,-128
    8000497c:	01978cb3          	add	s9,a5,s9
    80004980:	f7f40d13          	addi	s10,s0,-129
    80004984:	000cc503          	lbu	a0,0(s9)
    80004988:	fffc8c93          	addi	s9,s9,-1
    8000498c:	00000097          	auipc	ra,0x0
    80004990:	9f8080e7          	jalr	-1544(ra) # 80004384 <consputc>
    80004994:	ff9d18e3          	bne	s10,s9,80004984 <__printf+0x41c>
    80004998:	0100006f          	j	800049a8 <__printf+0x440>
    8000499c:	00000097          	auipc	ra,0x0
    800049a0:	9e8080e7          	jalr	-1560(ra) # 80004384 <consputc>
    800049a4:	000c8493          	mv	s1,s9
    800049a8:	00094503          	lbu	a0,0(s2)
    800049ac:	c60510e3          	bnez	a0,8000460c <__printf+0xa4>
    800049b0:	e40c0ee3          	beqz	s8,8000480c <__printf+0x2a4>
    800049b4:	00004517          	auipc	a0,0x4
    800049b8:	ccc50513          	addi	a0,a0,-820 # 80008680 <pr>
    800049bc:	00001097          	auipc	ra,0x1
    800049c0:	94c080e7          	jalr	-1716(ra) # 80005308 <release>
    800049c4:	e49ff06f          	j	8000480c <__printf+0x2a4>
    800049c8:	f7843783          	ld	a5,-136(s0)
    800049cc:	03000513          	li	a0,48
    800049d0:	01000d13          	li	s10,16
    800049d4:	00878713          	addi	a4,a5,8
    800049d8:	0007bc83          	ld	s9,0(a5)
    800049dc:	f6e43c23          	sd	a4,-136(s0)
    800049e0:	00000097          	auipc	ra,0x0
    800049e4:	9a4080e7          	jalr	-1628(ra) # 80004384 <consputc>
    800049e8:	07800513          	li	a0,120
    800049ec:	00000097          	auipc	ra,0x0
    800049f0:	998080e7          	jalr	-1640(ra) # 80004384 <consputc>
    800049f4:	00002d97          	auipc	s11,0x2
    800049f8:	a6cd8d93          	addi	s11,s11,-1428 # 80006460 <digits>
    800049fc:	03ccd793          	srli	a5,s9,0x3c
    80004a00:	00fd87b3          	add	a5,s11,a5
    80004a04:	0007c503          	lbu	a0,0(a5)
    80004a08:	fffd0d1b          	addiw	s10,s10,-1
    80004a0c:	004c9c93          	slli	s9,s9,0x4
    80004a10:	00000097          	auipc	ra,0x0
    80004a14:	974080e7          	jalr	-1676(ra) # 80004384 <consputc>
    80004a18:	fe0d12e3          	bnez	s10,800049fc <__printf+0x494>
    80004a1c:	f8dff06f          	j	800049a8 <__printf+0x440>
    80004a20:	f7843783          	ld	a5,-136(s0)
    80004a24:	0007bc83          	ld	s9,0(a5)
    80004a28:	00878793          	addi	a5,a5,8
    80004a2c:	f6f43c23          	sd	a5,-136(s0)
    80004a30:	000c9a63          	bnez	s9,80004a44 <__printf+0x4dc>
    80004a34:	1080006f          	j	80004b3c <__printf+0x5d4>
    80004a38:	001c8c93          	addi	s9,s9,1
    80004a3c:	00000097          	auipc	ra,0x0
    80004a40:	948080e7          	jalr	-1720(ra) # 80004384 <consputc>
    80004a44:	000cc503          	lbu	a0,0(s9)
    80004a48:	fe0518e3          	bnez	a0,80004a38 <__printf+0x4d0>
    80004a4c:	f5dff06f          	j	800049a8 <__printf+0x440>
    80004a50:	02500513          	li	a0,37
    80004a54:	00000097          	auipc	ra,0x0
    80004a58:	930080e7          	jalr	-1744(ra) # 80004384 <consputc>
    80004a5c:	000c8513          	mv	a0,s9
    80004a60:	00000097          	auipc	ra,0x0
    80004a64:	924080e7          	jalr	-1756(ra) # 80004384 <consputc>
    80004a68:	f41ff06f          	j	800049a8 <__printf+0x440>
    80004a6c:	02500513          	li	a0,37
    80004a70:	00000097          	auipc	ra,0x0
    80004a74:	914080e7          	jalr	-1772(ra) # 80004384 <consputc>
    80004a78:	f31ff06f          	j	800049a8 <__printf+0x440>
    80004a7c:	00030513          	mv	a0,t1
    80004a80:	00000097          	auipc	ra,0x0
    80004a84:	7bc080e7          	jalr	1980(ra) # 8000523c <acquire>
    80004a88:	b4dff06f          	j	800045d4 <__printf+0x6c>
    80004a8c:	40c0053b          	negw	a0,a2
    80004a90:	00a00713          	li	a4,10
    80004a94:	02e576bb          	remuw	a3,a0,a4
    80004a98:	00002d97          	auipc	s11,0x2
    80004a9c:	9c8d8d93          	addi	s11,s11,-1592 # 80006460 <digits>
    80004aa0:	ff700593          	li	a1,-9
    80004aa4:	02069693          	slli	a3,a3,0x20
    80004aa8:	0206d693          	srli	a3,a3,0x20
    80004aac:	00dd86b3          	add	a3,s11,a3
    80004ab0:	0006c683          	lbu	a3,0(a3)
    80004ab4:	02e557bb          	divuw	a5,a0,a4
    80004ab8:	f8d40023          	sb	a3,-128(s0)
    80004abc:	10b65e63          	bge	a2,a1,80004bd8 <__printf+0x670>
    80004ac0:	06300593          	li	a1,99
    80004ac4:	02e7f6bb          	remuw	a3,a5,a4
    80004ac8:	02069693          	slli	a3,a3,0x20
    80004acc:	0206d693          	srli	a3,a3,0x20
    80004ad0:	00dd86b3          	add	a3,s11,a3
    80004ad4:	0006c683          	lbu	a3,0(a3)
    80004ad8:	02e7d73b          	divuw	a4,a5,a4
    80004adc:	00200793          	li	a5,2
    80004ae0:	f8d400a3          	sb	a3,-127(s0)
    80004ae4:	bca5ece3          	bltu	a1,a0,800046bc <__printf+0x154>
    80004ae8:	ce5ff06f          	j	800047cc <__printf+0x264>
    80004aec:	40e007bb          	negw	a5,a4
    80004af0:	00002d97          	auipc	s11,0x2
    80004af4:	970d8d93          	addi	s11,s11,-1680 # 80006460 <digits>
    80004af8:	00f7f693          	andi	a3,a5,15
    80004afc:	00dd86b3          	add	a3,s11,a3
    80004b00:	0006c583          	lbu	a1,0(a3)
    80004b04:	ff100613          	li	a2,-15
    80004b08:	0047d69b          	srliw	a3,a5,0x4
    80004b0c:	f8b40023          	sb	a1,-128(s0)
    80004b10:	0047d59b          	srliw	a1,a5,0x4
    80004b14:	0ac75e63          	bge	a4,a2,80004bd0 <__printf+0x668>
    80004b18:	00f6f693          	andi	a3,a3,15
    80004b1c:	00dd86b3          	add	a3,s11,a3
    80004b20:	0006c603          	lbu	a2,0(a3)
    80004b24:	00f00693          	li	a3,15
    80004b28:	0087d79b          	srliw	a5,a5,0x8
    80004b2c:	f8c400a3          	sb	a2,-127(s0)
    80004b30:	d8b6e4e3          	bltu	a3,a1,800048b8 <__printf+0x350>
    80004b34:	00200793          	li	a5,2
    80004b38:	e2dff06f          	j	80004964 <__printf+0x3fc>
    80004b3c:	00002c97          	auipc	s9,0x2
    80004b40:	904c8c93          	addi	s9,s9,-1788 # 80006440 <CONSOLE_STATUS+0x430>
    80004b44:	02800513          	li	a0,40
    80004b48:	ef1ff06f          	j	80004a38 <__printf+0x4d0>
    80004b4c:	00700793          	li	a5,7
    80004b50:	00600c93          	li	s9,6
    80004b54:	e0dff06f          	j	80004960 <__printf+0x3f8>
    80004b58:	00700793          	li	a5,7
    80004b5c:	00600c93          	li	s9,6
    80004b60:	c69ff06f          	j	800047c8 <__printf+0x260>
    80004b64:	00300793          	li	a5,3
    80004b68:	00200c93          	li	s9,2
    80004b6c:	c5dff06f          	j	800047c8 <__printf+0x260>
    80004b70:	00300793          	li	a5,3
    80004b74:	00200c93          	li	s9,2
    80004b78:	de9ff06f          	j	80004960 <__printf+0x3f8>
    80004b7c:	00400793          	li	a5,4
    80004b80:	00300c93          	li	s9,3
    80004b84:	dddff06f          	j	80004960 <__printf+0x3f8>
    80004b88:	00400793          	li	a5,4
    80004b8c:	00300c93          	li	s9,3
    80004b90:	c39ff06f          	j	800047c8 <__printf+0x260>
    80004b94:	00500793          	li	a5,5
    80004b98:	00400c93          	li	s9,4
    80004b9c:	c2dff06f          	j	800047c8 <__printf+0x260>
    80004ba0:	00500793          	li	a5,5
    80004ba4:	00400c93          	li	s9,4
    80004ba8:	db9ff06f          	j	80004960 <__printf+0x3f8>
    80004bac:	00600793          	li	a5,6
    80004bb0:	00500c93          	li	s9,5
    80004bb4:	dadff06f          	j	80004960 <__printf+0x3f8>
    80004bb8:	00600793          	li	a5,6
    80004bbc:	00500c93          	li	s9,5
    80004bc0:	c09ff06f          	j	800047c8 <__printf+0x260>
    80004bc4:	00800793          	li	a5,8
    80004bc8:	00700c93          	li	s9,7
    80004bcc:	bfdff06f          	j	800047c8 <__printf+0x260>
    80004bd0:	00100793          	li	a5,1
    80004bd4:	d91ff06f          	j	80004964 <__printf+0x3fc>
    80004bd8:	00100793          	li	a5,1
    80004bdc:	bf1ff06f          	j	800047cc <__printf+0x264>
    80004be0:	00900793          	li	a5,9
    80004be4:	00800c93          	li	s9,8
    80004be8:	be1ff06f          	j	800047c8 <__printf+0x260>
    80004bec:	00002517          	auipc	a0,0x2
    80004bf0:	85c50513          	addi	a0,a0,-1956 # 80006448 <CONSOLE_STATUS+0x438>
    80004bf4:	00000097          	auipc	ra,0x0
    80004bf8:	918080e7          	jalr	-1768(ra) # 8000450c <panic>

0000000080004bfc <printfinit>:
    80004bfc:	fe010113          	addi	sp,sp,-32
    80004c00:	00813823          	sd	s0,16(sp)
    80004c04:	00913423          	sd	s1,8(sp)
    80004c08:	00113c23          	sd	ra,24(sp)
    80004c0c:	02010413          	addi	s0,sp,32
    80004c10:	00004497          	auipc	s1,0x4
    80004c14:	a7048493          	addi	s1,s1,-1424 # 80008680 <pr>
    80004c18:	00048513          	mv	a0,s1
    80004c1c:	00002597          	auipc	a1,0x2
    80004c20:	83c58593          	addi	a1,a1,-1988 # 80006458 <CONSOLE_STATUS+0x448>
    80004c24:	00000097          	auipc	ra,0x0
    80004c28:	5f4080e7          	jalr	1524(ra) # 80005218 <initlock>
    80004c2c:	01813083          	ld	ra,24(sp)
    80004c30:	01013403          	ld	s0,16(sp)
    80004c34:	0004ac23          	sw	zero,24(s1)
    80004c38:	00813483          	ld	s1,8(sp)
    80004c3c:	02010113          	addi	sp,sp,32
    80004c40:	00008067          	ret

0000000080004c44 <uartinit>:
    80004c44:	ff010113          	addi	sp,sp,-16
    80004c48:	00813423          	sd	s0,8(sp)
    80004c4c:	01010413          	addi	s0,sp,16
    80004c50:	100007b7          	lui	a5,0x10000
    80004c54:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80004c58:	f8000713          	li	a4,-128
    80004c5c:	00e781a3          	sb	a4,3(a5)
    80004c60:	00300713          	li	a4,3
    80004c64:	00e78023          	sb	a4,0(a5)
    80004c68:	000780a3          	sb	zero,1(a5)
    80004c6c:	00e781a3          	sb	a4,3(a5)
    80004c70:	00700693          	li	a3,7
    80004c74:	00d78123          	sb	a3,2(a5)
    80004c78:	00e780a3          	sb	a4,1(a5)
    80004c7c:	00813403          	ld	s0,8(sp)
    80004c80:	01010113          	addi	sp,sp,16
    80004c84:	00008067          	ret

0000000080004c88 <uartputc>:
    80004c88:	00002797          	auipc	a5,0x2
    80004c8c:	7607a783          	lw	a5,1888(a5) # 800073e8 <panicked>
    80004c90:	00078463          	beqz	a5,80004c98 <uartputc+0x10>
    80004c94:	0000006f          	j	80004c94 <uartputc+0xc>
    80004c98:	fd010113          	addi	sp,sp,-48
    80004c9c:	02813023          	sd	s0,32(sp)
    80004ca0:	00913c23          	sd	s1,24(sp)
    80004ca4:	01213823          	sd	s2,16(sp)
    80004ca8:	01313423          	sd	s3,8(sp)
    80004cac:	02113423          	sd	ra,40(sp)
    80004cb0:	03010413          	addi	s0,sp,48
    80004cb4:	00002917          	auipc	s2,0x2
    80004cb8:	73c90913          	addi	s2,s2,1852 # 800073f0 <uart_tx_r>
    80004cbc:	00093783          	ld	a5,0(s2)
    80004cc0:	00002497          	auipc	s1,0x2
    80004cc4:	73848493          	addi	s1,s1,1848 # 800073f8 <uart_tx_w>
    80004cc8:	0004b703          	ld	a4,0(s1)
    80004ccc:	02078693          	addi	a3,a5,32
    80004cd0:	00050993          	mv	s3,a0
    80004cd4:	02e69c63          	bne	a3,a4,80004d0c <uartputc+0x84>
    80004cd8:	00001097          	auipc	ra,0x1
    80004cdc:	834080e7          	jalr	-1996(ra) # 8000550c <push_on>
    80004ce0:	00093783          	ld	a5,0(s2)
    80004ce4:	0004b703          	ld	a4,0(s1)
    80004ce8:	02078793          	addi	a5,a5,32
    80004cec:	00e79463          	bne	a5,a4,80004cf4 <uartputc+0x6c>
    80004cf0:	0000006f          	j	80004cf0 <uartputc+0x68>
    80004cf4:	00001097          	auipc	ra,0x1
    80004cf8:	88c080e7          	jalr	-1908(ra) # 80005580 <pop_on>
    80004cfc:	00093783          	ld	a5,0(s2)
    80004d00:	0004b703          	ld	a4,0(s1)
    80004d04:	02078693          	addi	a3,a5,32
    80004d08:	fce688e3          	beq	a3,a4,80004cd8 <uartputc+0x50>
    80004d0c:	01f77693          	andi	a3,a4,31
    80004d10:	00004597          	auipc	a1,0x4
    80004d14:	99058593          	addi	a1,a1,-1648 # 800086a0 <uart_tx_buf>
    80004d18:	00d586b3          	add	a3,a1,a3
    80004d1c:	00170713          	addi	a4,a4,1
    80004d20:	01368023          	sb	s3,0(a3)
    80004d24:	00e4b023          	sd	a4,0(s1)
    80004d28:	10000637          	lui	a2,0x10000
    80004d2c:	02f71063          	bne	a4,a5,80004d4c <uartputc+0xc4>
    80004d30:	0340006f          	j	80004d64 <uartputc+0xdc>
    80004d34:	00074703          	lbu	a4,0(a4)
    80004d38:	00f93023          	sd	a5,0(s2)
    80004d3c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80004d40:	00093783          	ld	a5,0(s2)
    80004d44:	0004b703          	ld	a4,0(s1)
    80004d48:	00f70e63          	beq	a4,a5,80004d64 <uartputc+0xdc>
    80004d4c:	00564683          	lbu	a3,5(a2)
    80004d50:	01f7f713          	andi	a4,a5,31
    80004d54:	00e58733          	add	a4,a1,a4
    80004d58:	0206f693          	andi	a3,a3,32
    80004d5c:	00178793          	addi	a5,a5,1
    80004d60:	fc069ae3          	bnez	a3,80004d34 <uartputc+0xac>
    80004d64:	02813083          	ld	ra,40(sp)
    80004d68:	02013403          	ld	s0,32(sp)
    80004d6c:	01813483          	ld	s1,24(sp)
    80004d70:	01013903          	ld	s2,16(sp)
    80004d74:	00813983          	ld	s3,8(sp)
    80004d78:	03010113          	addi	sp,sp,48
    80004d7c:	00008067          	ret

0000000080004d80 <uartputc_sync>:
    80004d80:	ff010113          	addi	sp,sp,-16
    80004d84:	00813423          	sd	s0,8(sp)
    80004d88:	01010413          	addi	s0,sp,16
    80004d8c:	00002717          	auipc	a4,0x2
    80004d90:	65c72703          	lw	a4,1628(a4) # 800073e8 <panicked>
    80004d94:	02071663          	bnez	a4,80004dc0 <uartputc_sync+0x40>
    80004d98:	00050793          	mv	a5,a0
    80004d9c:	100006b7          	lui	a3,0x10000
    80004da0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80004da4:	02077713          	andi	a4,a4,32
    80004da8:	fe070ce3          	beqz	a4,80004da0 <uartputc_sync+0x20>
    80004dac:	0ff7f793          	andi	a5,a5,255
    80004db0:	00f68023          	sb	a5,0(a3)
    80004db4:	00813403          	ld	s0,8(sp)
    80004db8:	01010113          	addi	sp,sp,16
    80004dbc:	00008067          	ret
    80004dc0:	0000006f          	j	80004dc0 <uartputc_sync+0x40>

0000000080004dc4 <uartstart>:
    80004dc4:	ff010113          	addi	sp,sp,-16
    80004dc8:	00813423          	sd	s0,8(sp)
    80004dcc:	01010413          	addi	s0,sp,16
    80004dd0:	00002617          	auipc	a2,0x2
    80004dd4:	62060613          	addi	a2,a2,1568 # 800073f0 <uart_tx_r>
    80004dd8:	00002517          	auipc	a0,0x2
    80004ddc:	62050513          	addi	a0,a0,1568 # 800073f8 <uart_tx_w>
    80004de0:	00063783          	ld	a5,0(a2)
    80004de4:	00053703          	ld	a4,0(a0)
    80004de8:	04f70263          	beq	a4,a5,80004e2c <uartstart+0x68>
    80004dec:	100005b7          	lui	a1,0x10000
    80004df0:	00004817          	auipc	a6,0x4
    80004df4:	8b080813          	addi	a6,a6,-1872 # 800086a0 <uart_tx_buf>
    80004df8:	01c0006f          	j	80004e14 <uartstart+0x50>
    80004dfc:	0006c703          	lbu	a4,0(a3)
    80004e00:	00f63023          	sd	a5,0(a2)
    80004e04:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80004e08:	00063783          	ld	a5,0(a2)
    80004e0c:	00053703          	ld	a4,0(a0)
    80004e10:	00f70e63          	beq	a4,a5,80004e2c <uartstart+0x68>
    80004e14:	01f7f713          	andi	a4,a5,31
    80004e18:	00e806b3          	add	a3,a6,a4
    80004e1c:	0055c703          	lbu	a4,5(a1)
    80004e20:	00178793          	addi	a5,a5,1
    80004e24:	02077713          	andi	a4,a4,32
    80004e28:	fc071ae3          	bnez	a4,80004dfc <uartstart+0x38>
    80004e2c:	00813403          	ld	s0,8(sp)
    80004e30:	01010113          	addi	sp,sp,16
    80004e34:	00008067          	ret

0000000080004e38 <uartgetc>:
    80004e38:	ff010113          	addi	sp,sp,-16
    80004e3c:	00813423          	sd	s0,8(sp)
    80004e40:	01010413          	addi	s0,sp,16
    80004e44:	10000737          	lui	a4,0x10000
    80004e48:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80004e4c:	0017f793          	andi	a5,a5,1
    80004e50:	00078c63          	beqz	a5,80004e68 <uartgetc+0x30>
    80004e54:	00074503          	lbu	a0,0(a4)
    80004e58:	0ff57513          	andi	a0,a0,255
    80004e5c:	00813403          	ld	s0,8(sp)
    80004e60:	01010113          	addi	sp,sp,16
    80004e64:	00008067          	ret
    80004e68:	fff00513          	li	a0,-1
    80004e6c:	ff1ff06f          	j	80004e5c <uartgetc+0x24>

0000000080004e70 <uartintr>:
    80004e70:	100007b7          	lui	a5,0x10000
    80004e74:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80004e78:	0017f793          	andi	a5,a5,1
    80004e7c:	0a078463          	beqz	a5,80004f24 <uartintr+0xb4>
    80004e80:	fe010113          	addi	sp,sp,-32
    80004e84:	00813823          	sd	s0,16(sp)
    80004e88:	00913423          	sd	s1,8(sp)
    80004e8c:	00113c23          	sd	ra,24(sp)
    80004e90:	02010413          	addi	s0,sp,32
    80004e94:	100004b7          	lui	s1,0x10000
    80004e98:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80004e9c:	0ff57513          	andi	a0,a0,255
    80004ea0:	fffff097          	auipc	ra,0xfffff
    80004ea4:	534080e7          	jalr	1332(ra) # 800043d4 <consoleintr>
    80004ea8:	0054c783          	lbu	a5,5(s1)
    80004eac:	0017f793          	andi	a5,a5,1
    80004eb0:	fe0794e3          	bnez	a5,80004e98 <uartintr+0x28>
    80004eb4:	00002617          	auipc	a2,0x2
    80004eb8:	53c60613          	addi	a2,a2,1340 # 800073f0 <uart_tx_r>
    80004ebc:	00002517          	auipc	a0,0x2
    80004ec0:	53c50513          	addi	a0,a0,1340 # 800073f8 <uart_tx_w>
    80004ec4:	00063783          	ld	a5,0(a2)
    80004ec8:	00053703          	ld	a4,0(a0)
    80004ecc:	04f70263          	beq	a4,a5,80004f10 <uartintr+0xa0>
    80004ed0:	100005b7          	lui	a1,0x10000
    80004ed4:	00003817          	auipc	a6,0x3
    80004ed8:	7cc80813          	addi	a6,a6,1996 # 800086a0 <uart_tx_buf>
    80004edc:	01c0006f          	j	80004ef8 <uartintr+0x88>
    80004ee0:	0006c703          	lbu	a4,0(a3)
    80004ee4:	00f63023          	sd	a5,0(a2)
    80004ee8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80004eec:	00063783          	ld	a5,0(a2)
    80004ef0:	00053703          	ld	a4,0(a0)
    80004ef4:	00f70e63          	beq	a4,a5,80004f10 <uartintr+0xa0>
    80004ef8:	01f7f713          	andi	a4,a5,31
    80004efc:	00e806b3          	add	a3,a6,a4
    80004f00:	0055c703          	lbu	a4,5(a1)
    80004f04:	00178793          	addi	a5,a5,1
    80004f08:	02077713          	andi	a4,a4,32
    80004f0c:	fc071ae3          	bnez	a4,80004ee0 <uartintr+0x70>
    80004f10:	01813083          	ld	ra,24(sp)
    80004f14:	01013403          	ld	s0,16(sp)
    80004f18:	00813483          	ld	s1,8(sp)
    80004f1c:	02010113          	addi	sp,sp,32
    80004f20:	00008067          	ret
    80004f24:	00002617          	auipc	a2,0x2
    80004f28:	4cc60613          	addi	a2,a2,1228 # 800073f0 <uart_tx_r>
    80004f2c:	00002517          	auipc	a0,0x2
    80004f30:	4cc50513          	addi	a0,a0,1228 # 800073f8 <uart_tx_w>
    80004f34:	00063783          	ld	a5,0(a2)
    80004f38:	00053703          	ld	a4,0(a0)
    80004f3c:	04f70263          	beq	a4,a5,80004f80 <uartintr+0x110>
    80004f40:	100005b7          	lui	a1,0x10000
    80004f44:	00003817          	auipc	a6,0x3
    80004f48:	75c80813          	addi	a6,a6,1884 # 800086a0 <uart_tx_buf>
    80004f4c:	01c0006f          	j	80004f68 <uartintr+0xf8>
    80004f50:	0006c703          	lbu	a4,0(a3)
    80004f54:	00f63023          	sd	a5,0(a2)
    80004f58:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80004f5c:	00063783          	ld	a5,0(a2)
    80004f60:	00053703          	ld	a4,0(a0)
    80004f64:	02f70063          	beq	a4,a5,80004f84 <uartintr+0x114>
    80004f68:	01f7f713          	andi	a4,a5,31
    80004f6c:	00e806b3          	add	a3,a6,a4
    80004f70:	0055c703          	lbu	a4,5(a1)
    80004f74:	00178793          	addi	a5,a5,1
    80004f78:	02077713          	andi	a4,a4,32
    80004f7c:	fc071ae3          	bnez	a4,80004f50 <uartintr+0xe0>
    80004f80:	00008067          	ret
    80004f84:	00008067          	ret

0000000080004f88 <kinit>:
    80004f88:	fc010113          	addi	sp,sp,-64
    80004f8c:	02913423          	sd	s1,40(sp)
    80004f90:	fffff7b7          	lui	a5,0xfffff
    80004f94:	00004497          	auipc	s1,0x4
    80004f98:	72b48493          	addi	s1,s1,1835 # 800096bf <end+0xfff>
    80004f9c:	02813823          	sd	s0,48(sp)
    80004fa0:	01313c23          	sd	s3,24(sp)
    80004fa4:	00f4f4b3          	and	s1,s1,a5
    80004fa8:	02113c23          	sd	ra,56(sp)
    80004fac:	03213023          	sd	s2,32(sp)
    80004fb0:	01413823          	sd	s4,16(sp)
    80004fb4:	01513423          	sd	s5,8(sp)
    80004fb8:	04010413          	addi	s0,sp,64
    80004fbc:	000017b7          	lui	a5,0x1
    80004fc0:	01100993          	li	s3,17
    80004fc4:	00f487b3          	add	a5,s1,a5
    80004fc8:	01b99993          	slli	s3,s3,0x1b
    80004fcc:	06f9e063          	bltu	s3,a5,8000502c <kinit+0xa4>
    80004fd0:	00003a97          	auipc	s5,0x3
    80004fd4:	6f0a8a93          	addi	s5,s5,1776 # 800086c0 <end>
    80004fd8:	0754ec63          	bltu	s1,s5,80005050 <kinit+0xc8>
    80004fdc:	0734fa63          	bgeu	s1,s3,80005050 <kinit+0xc8>
    80004fe0:	00088a37          	lui	s4,0x88
    80004fe4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80004fe8:	00002917          	auipc	s2,0x2
    80004fec:	41890913          	addi	s2,s2,1048 # 80007400 <kmem>
    80004ff0:	00ca1a13          	slli	s4,s4,0xc
    80004ff4:	0140006f          	j	80005008 <kinit+0x80>
    80004ff8:	000017b7          	lui	a5,0x1
    80004ffc:	00f484b3          	add	s1,s1,a5
    80005000:	0554e863          	bltu	s1,s5,80005050 <kinit+0xc8>
    80005004:	0534f663          	bgeu	s1,s3,80005050 <kinit+0xc8>
    80005008:	00001637          	lui	a2,0x1
    8000500c:	00100593          	li	a1,1
    80005010:	00048513          	mv	a0,s1
    80005014:	00000097          	auipc	ra,0x0
    80005018:	5e4080e7          	jalr	1508(ra) # 800055f8 <__memset>
    8000501c:	00093783          	ld	a5,0(s2)
    80005020:	00f4b023          	sd	a5,0(s1)
    80005024:	00993023          	sd	s1,0(s2)
    80005028:	fd4498e3          	bne	s1,s4,80004ff8 <kinit+0x70>
    8000502c:	03813083          	ld	ra,56(sp)
    80005030:	03013403          	ld	s0,48(sp)
    80005034:	02813483          	ld	s1,40(sp)
    80005038:	02013903          	ld	s2,32(sp)
    8000503c:	01813983          	ld	s3,24(sp)
    80005040:	01013a03          	ld	s4,16(sp)
    80005044:	00813a83          	ld	s5,8(sp)
    80005048:	04010113          	addi	sp,sp,64
    8000504c:	00008067          	ret
    80005050:	00001517          	auipc	a0,0x1
    80005054:	42850513          	addi	a0,a0,1064 # 80006478 <digits+0x18>
    80005058:	fffff097          	auipc	ra,0xfffff
    8000505c:	4b4080e7          	jalr	1204(ra) # 8000450c <panic>

0000000080005060 <freerange>:
    80005060:	fc010113          	addi	sp,sp,-64
    80005064:	000017b7          	lui	a5,0x1
    80005068:	02913423          	sd	s1,40(sp)
    8000506c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80005070:	009504b3          	add	s1,a0,s1
    80005074:	fffff537          	lui	a0,0xfffff
    80005078:	02813823          	sd	s0,48(sp)
    8000507c:	02113c23          	sd	ra,56(sp)
    80005080:	03213023          	sd	s2,32(sp)
    80005084:	01313c23          	sd	s3,24(sp)
    80005088:	01413823          	sd	s4,16(sp)
    8000508c:	01513423          	sd	s5,8(sp)
    80005090:	01613023          	sd	s6,0(sp)
    80005094:	04010413          	addi	s0,sp,64
    80005098:	00a4f4b3          	and	s1,s1,a0
    8000509c:	00f487b3          	add	a5,s1,a5
    800050a0:	06f5e463          	bltu	a1,a5,80005108 <freerange+0xa8>
    800050a4:	00003a97          	auipc	s5,0x3
    800050a8:	61ca8a93          	addi	s5,s5,1564 # 800086c0 <end>
    800050ac:	0954e263          	bltu	s1,s5,80005130 <freerange+0xd0>
    800050b0:	01100993          	li	s3,17
    800050b4:	01b99993          	slli	s3,s3,0x1b
    800050b8:	0734fc63          	bgeu	s1,s3,80005130 <freerange+0xd0>
    800050bc:	00058a13          	mv	s4,a1
    800050c0:	00002917          	auipc	s2,0x2
    800050c4:	34090913          	addi	s2,s2,832 # 80007400 <kmem>
    800050c8:	00002b37          	lui	s6,0x2
    800050cc:	0140006f          	j	800050e0 <freerange+0x80>
    800050d0:	000017b7          	lui	a5,0x1
    800050d4:	00f484b3          	add	s1,s1,a5
    800050d8:	0554ec63          	bltu	s1,s5,80005130 <freerange+0xd0>
    800050dc:	0534fa63          	bgeu	s1,s3,80005130 <freerange+0xd0>
    800050e0:	00001637          	lui	a2,0x1
    800050e4:	00100593          	li	a1,1
    800050e8:	00048513          	mv	a0,s1
    800050ec:	00000097          	auipc	ra,0x0
    800050f0:	50c080e7          	jalr	1292(ra) # 800055f8 <__memset>
    800050f4:	00093703          	ld	a4,0(s2)
    800050f8:	016487b3          	add	a5,s1,s6
    800050fc:	00e4b023          	sd	a4,0(s1)
    80005100:	00993023          	sd	s1,0(s2)
    80005104:	fcfa76e3          	bgeu	s4,a5,800050d0 <freerange+0x70>
    80005108:	03813083          	ld	ra,56(sp)
    8000510c:	03013403          	ld	s0,48(sp)
    80005110:	02813483          	ld	s1,40(sp)
    80005114:	02013903          	ld	s2,32(sp)
    80005118:	01813983          	ld	s3,24(sp)
    8000511c:	01013a03          	ld	s4,16(sp)
    80005120:	00813a83          	ld	s5,8(sp)
    80005124:	00013b03          	ld	s6,0(sp)
    80005128:	04010113          	addi	sp,sp,64
    8000512c:	00008067          	ret
    80005130:	00001517          	auipc	a0,0x1
    80005134:	34850513          	addi	a0,a0,840 # 80006478 <digits+0x18>
    80005138:	fffff097          	auipc	ra,0xfffff
    8000513c:	3d4080e7          	jalr	980(ra) # 8000450c <panic>

0000000080005140 <kfree>:
    80005140:	fe010113          	addi	sp,sp,-32
    80005144:	00813823          	sd	s0,16(sp)
    80005148:	00113c23          	sd	ra,24(sp)
    8000514c:	00913423          	sd	s1,8(sp)
    80005150:	02010413          	addi	s0,sp,32
    80005154:	03451793          	slli	a5,a0,0x34
    80005158:	04079c63          	bnez	a5,800051b0 <kfree+0x70>
    8000515c:	00003797          	auipc	a5,0x3
    80005160:	56478793          	addi	a5,a5,1380 # 800086c0 <end>
    80005164:	00050493          	mv	s1,a0
    80005168:	04f56463          	bltu	a0,a5,800051b0 <kfree+0x70>
    8000516c:	01100793          	li	a5,17
    80005170:	01b79793          	slli	a5,a5,0x1b
    80005174:	02f57e63          	bgeu	a0,a5,800051b0 <kfree+0x70>
    80005178:	00001637          	lui	a2,0x1
    8000517c:	00100593          	li	a1,1
    80005180:	00000097          	auipc	ra,0x0
    80005184:	478080e7          	jalr	1144(ra) # 800055f8 <__memset>
    80005188:	00002797          	auipc	a5,0x2
    8000518c:	27878793          	addi	a5,a5,632 # 80007400 <kmem>
    80005190:	0007b703          	ld	a4,0(a5)
    80005194:	01813083          	ld	ra,24(sp)
    80005198:	01013403          	ld	s0,16(sp)
    8000519c:	00e4b023          	sd	a4,0(s1)
    800051a0:	0097b023          	sd	s1,0(a5)
    800051a4:	00813483          	ld	s1,8(sp)
    800051a8:	02010113          	addi	sp,sp,32
    800051ac:	00008067          	ret
    800051b0:	00001517          	auipc	a0,0x1
    800051b4:	2c850513          	addi	a0,a0,712 # 80006478 <digits+0x18>
    800051b8:	fffff097          	auipc	ra,0xfffff
    800051bc:	354080e7          	jalr	852(ra) # 8000450c <panic>

00000000800051c0 <kalloc>:
    800051c0:	fe010113          	addi	sp,sp,-32
    800051c4:	00813823          	sd	s0,16(sp)
    800051c8:	00913423          	sd	s1,8(sp)
    800051cc:	00113c23          	sd	ra,24(sp)
    800051d0:	02010413          	addi	s0,sp,32
    800051d4:	00002797          	auipc	a5,0x2
    800051d8:	22c78793          	addi	a5,a5,556 # 80007400 <kmem>
    800051dc:	0007b483          	ld	s1,0(a5)
    800051e0:	02048063          	beqz	s1,80005200 <kalloc+0x40>
    800051e4:	0004b703          	ld	a4,0(s1)
    800051e8:	00001637          	lui	a2,0x1
    800051ec:	00500593          	li	a1,5
    800051f0:	00048513          	mv	a0,s1
    800051f4:	00e7b023          	sd	a4,0(a5)
    800051f8:	00000097          	auipc	ra,0x0
    800051fc:	400080e7          	jalr	1024(ra) # 800055f8 <__memset>
    80005200:	01813083          	ld	ra,24(sp)
    80005204:	01013403          	ld	s0,16(sp)
    80005208:	00048513          	mv	a0,s1
    8000520c:	00813483          	ld	s1,8(sp)
    80005210:	02010113          	addi	sp,sp,32
    80005214:	00008067          	ret

0000000080005218 <initlock>:
    80005218:	ff010113          	addi	sp,sp,-16
    8000521c:	00813423          	sd	s0,8(sp)
    80005220:	01010413          	addi	s0,sp,16
    80005224:	00813403          	ld	s0,8(sp)
    80005228:	00b53423          	sd	a1,8(a0)
    8000522c:	00052023          	sw	zero,0(a0)
    80005230:	00053823          	sd	zero,16(a0)
    80005234:	01010113          	addi	sp,sp,16
    80005238:	00008067          	ret

000000008000523c <acquire>:
    8000523c:	fe010113          	addi	sp,sp,-32
    80005240:	00813823          	sd	s0,16(sp)
    80005244:	00913423          	sd	s1,8(sp)
    80005248:	00113c23          	sd	ra,24(sp)
    8000524c:	01213023          	sd	s2,0(sp)
    80005250:	02010413          	addi	s0,sp,32
    80005254:	00050493          	mv	s1,a0
    80005258:	10002973          	csrr	s2,sstatus
    8000525c:	100027f3          	csrr	a5,sstatus
    80005260:	ffd7f793          	andi	a5,a5,-3
    80005264:	10079073          	csrw	sstatus,a5
    80005268:	fffff097          	auipc	ra,0xfffff
    8000526c:	8e8080e7          	jalr	-1816(ra) # 80003b50 <mycpu>
    80005270:	07852783          	lw	a5,120(a0)
    80005274:	06078e63          	beqz	a5,800052f0 <acquire+0xb4>
    80005278:	fffff097          	auipc	ra,0xfffff
    8000527c:	8d8080e7          	jalr	-1832(ra) # 80003b50 <mycpu>
    80005280:	07852783          	lw	a5,120(a0)
    80005284:	0004a703          	lw	a4,0(s1)
    80005288:	0017879b          	addiw	a5,a5,1
    8000528c:	06f52c23          	sw	a5,120(a0)
    80005290:	04071063          	bnez	a4,800052d0 <acquire+0x94>
    80005294:	00100713          	li	a4,1
    80005298:	00070793          	mv	a5,a4
    8000529c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    800052a0:	0007879b          	sext.w	a5,a5
    800052a4:	fe079ae3          	bnez	a5,80005298 <acquire+0x5c>
    800052a8:	0ff0000f          	fence
    800052ac:	fffff097          	auipc	ra,0xfffff
    800052b0:	8a4080e7          	jalr	-1884(ra) # 80003b50 <mycpu>
    800052b4:	01813083          	ld	ra,24(sp)
    800052b8:	01013403          	ld	s0,16(sp)
    800052bc:	00a4b823          	sd	a0,16(s1)
    800052c0:	00013903          	ld	s2,0(sp)
    800052c4:	00813483          	ld	s1,8(sp)
    800052c8:	02010113          	addi	sp,sp,32
    800052cc:	00008067          	ret
    800052d0:	0104b903          	ld	s2,16(s1)
    800052d4:	fffff097          	auipc	ra,0xfffff
    800052d8:	87c080e7          	jalr	-1924(ra) # 80003b50 <mycpu>
    800052dc:	faa91ce3          	bne	s2,a0,80005294 <acquire+0x58>
    800052e0:	00001517          	auipc	a0,0x1
    800052e4:	1a050513          	addi	a0,a0,416 # 80006480 <digits+0x20>
    800052e8:	fffff097          	auipc	ra,0xfffff
    800052ec:	224080e7          	jalr	548(ra) # 8000450c <panic>
    800052f0:	00195913          	srli	s2,s2,0x1
    800052f4:	fffff097          	auipc	ra,0xfffff
    800052f8:	85c080e7          	jalr	-1956(ra) # 80003b50 <mycpu>
    800052fc:	00197913          	andi	s2,s2,1
    80005300:	07252e23          	sw	s2,124(a0)
    80005304:	f75ff06f          	j	80005278 <acquire+0x3c>

0000000080005308 <release>:
    80005308:	fe010113          	addi	sp,sp,-32
    8000530c:	00813823          	sd	s0,16(sp)
    80005310:	00113c23          	sd	ra,24(sp)
    80005314:	00913423          	sd	s1,8(sp)
    80005318:	01213023          	sd	s2,0(sp)
    8000531c:	02010413          	addi	s0,sp,32
    80005320:	00052783          	lw	a5,0(a0)
    80005324:	00079a63          	bnez	a5,80005338 <release+0x30>
    80005328:	00001517          	auipc	a0,0x1
    8000532c:	16050513          	addi	a0,a0,352 # 80006488 <digits+0x28>
    80005330:	fffff097          	auipc	ra,0xfffff
    80005334:	1dc080e7          	jalr	476(ra) # 8000450c <panic>
    80005338:	01053903          	ld	s2,16(a0)
    8000533c:	00050493          	mv	s1,a0
    80005340:	fffff097          	auipc	ra,0xfffff
    80005344:	810080e7          	jalr	-2032(ra) # 80003b50 <mycpu>
    80005348:	fea910e3          	bne	s2,a0,80005328 <release+0x20>
    8000534c:	0004b823          	sd	zero,16(s1)
    80005350:	0ff0000f          	fence
    80005354:	0f50000f          	fence	iorw,ow
    80005358:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000535c:	ffffe097          	auipc	ra,0xffffe
    80005360:	7f4080e7          	jalr	2036(ra) # 80003b50 <mycpu>
    80005364:	100027f3          	csrr	a5,sstatus
    80005368:	0027f793          	andi	a5,a5,2
    8000536c:	04079a63          	bnez	a5,800053c0 <release+0xb8>
    80005370:	07852783          	lw	a5,120(a0)
    80005374:	02f05e63          	blez	a5,800053b0 <release+0xa8>
    80005378:	fff7871b          	addiw	a4,a5,-1
    8000537c:	06e52c23          	sw	a4,120(a0)
    80005380:	00071c63          	bnez	a4,80005398 <release+0x90>
    80005384:	07c52783          	lw	a5,124(a0)
    80005388:	00078863          	beqz	a5,80005398 <release+0x90>
    8000538c:	100027f3          	csrr	a5,sstatus
    80005390:	0027e793          	ori	a5,a5,2
    80005394:	10079073          	csrw	sstatus,a5
    80005398:	01813083          	ld	ra,24(sp)
    8000539c:	01013403          	ld	s0,16(sp)
    800053a0:	00813483          	ld	s1,8(sp)
    800053a4:	00013903          	ld	s2,0(sp)
    800053a8:	02010113          	addi	sp,sp,32
    800053ac:	00008067          	ret
    800053b0:	00001517          	auipc	a0,0x1
    800053b4:	0f850513          	addi	a0,a0,248 # 800064a8 <digits+0x48>
    800053b8:	fffff097          	auipc	ra,0xfffff
    800053bc:	154080e7          	jalr	340(ra) # 8000450c <panic>
    800053c0:	00001517          	auipc	a0,0x1
    800053c4:	0d050513          	addi	a0,a0,208 # 80006490 <digits+0x30>
    800053c8:	fffff097          	auipc	ra,0xfffff
    800053cc:	144080e7          	jalr	324(ra) # 8000450c <panic>

00000000800053d0 <holding>:
    800053d0:	00052783          	lw	a5,0(a0)
    800053d4:	00079663          	bnez	a5,800053e0 <holding+0x10>
    800053d8:	00000513          	li	a0,0
    800053dc:	00008067          	ret
    800053e0:	fe010113          	addi	sp,sp,-32
    800053e4:	00813823          	sd	s0,16(sp)
    800053e8:	00913423          	sd	s1,8(sp)
    800053ec:	00113c23          	sd	ra,24(sp)
    800053f0:	02010413          	addi	s0,sp,32
    800053f4:	01053483          	ld	s1,16(a0)
    800053f8:	ffffe097          	auipc	ra,0xffffe
    800053fc:	758080e7          	jalr	1880(ra) # 80003b50 <mycpu>
    80005400:	01813083          	ld	ra,24(sp)
    80005404:	01013403          	ld	s0,16(sp)
    80005408:	40a48533          	sub	a0,s1,a0
    8000540c:	00153513          	seqz	a0,a0
    80005410:	00813483          	ld	s1,8(sp)
    80005414:	02010113          	addi	sp,sp,32
    80005418:	00008067          	ret

000000008000541c <push_off>:
    8000541c:	fe010113          	addi	sp,sp,-32
    80005420:	00813823          	sd	s0,16(sp)
    80005424:	00113c23          	sd	ra,24(sp)
    80005428:	00913423          	sd	s1,8(sp)
    8000542c:	02010413          	addi	s0,sp,32
    80005430:	100024f3          	csrr	s1,sstatus
    80005434:	100027f3          	csrr	a5,sstatus
    80005438:	ffd7f793          	andi	a5,a5,-3
    8000543c:	10079073          	csrw	sstatus,a5
    80005440:	ffffe097          	auipc	ra,0xffffe
    80005444:	710080e7          	jalr	1808(ra) # 80003b50 <mycpu>
    80005448:	07852783          	lw	a5,120(a0)
    8000544c:	02078663          	beqz	a5,80005478 <push_off+0x5c>
    80005450:	ffffe097          	auipc	ra,0xffffe
    80005454:	700080e7          	jalr	1792(ra) # 80003b50 <mycpu>
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
    80005480:	6d4080e7          	jalr	1748(ra) # 80003b50 <mycpu>
    80005484:	0014f493          	andi	s1,s1,1
    80005488:	06952e23          	sw	s1,124(a0)
    8000548c:	fc5ff06f          	j	80005450 <push_off+0x34>

0000000080005490 <pop_off>:
    80005490:	ff010113          	addi	sp,sp,-16
    80005494:	00813023          	sd	s0,0(sp)
    80005498:	00113423          	sd	ra,8(sp)
    8000549c:	01010413          	addi	s0,sp,16
    800054a0:	ffffe097          	auipc	ra,0xffffe
    800054a4:	6b0080e7          	jalr	1712(ra) # 80003b50 <mycpu>
    800054a8:	100027f3          	csrr	a5,sstatus
    800054ac:	0027f793          	andi	a5,a5,2
    800054b0:	04079663          	bnez	a5,800054fc <pop_off+0x6c>
    800054b4:	07852783          	lw	a5,120(a0)
    800054b8:	02f05a63          	blez	a5,800054ec <pop_off+0x5c>
    800054bc:	fff7871b          	addiw	a4,a5,-1
    800054c0:	06e52c23          	sw	a4,120(a0)
    800054c4:	00071c63          	bnez	a4,800054dc <pop_off+0x4c>
    800054c8:	07c52783          	lw	a5,124(a0)
    800054cc:	00078863          	beqz	a5,800054dc <pop_off+0x4c>
    800054d0:	100027f3          	csrr	a5,sstatus
    800054d4:	0027e793          	ori	a5,a5,2
    800054d8:	10079073          	csrw	sstatus,a5
    800054dc:	00813083          	ld	ra,8(sp)
    800054e0:	00013403          	ld	s0,0(sp)
    800054e4:	01010113          	addi	sp,sp,16
    800054e8:	00008067          	ret
    800054ec:	00001517          	auipc	a0,0x1
    800054f0:	fbc50513          	addi	a0,a0,-68 # 800064a8 <digits+0x48>
    800054f4:	fffff097          	auipc	ra,0xfffff
    800054f8:	018080e7          	jalr	24(ra) # 8000450c <panic>
    800054fc:	00001517          	auipc	a0,0x1
    80005500:	f9450513          	addi	a0,a0,-108 # 80006490 <digits+0x30>
    80005504:	fffff097          	auipc	ra,0xfffff
    80005508:	008080e7          	jalr	8(ra) # 8000450c <panic>

000000008000550c <push_on>:
    8000550c:	fe010113          	addi	sp,sp,-32
    80005510:	00813823          	sd	s0,16(sp)
    80005514:	00113c23          	sd	ra,24(sp)
    80005518:	00913423          	sd	s1,8(sp)
    8000551c:	02010413          	addi	s0,sp,32
    80005520:	100024f3          	csrr	s1,sstatus
    80005524:	100027f3          	csrr	a5,sstatus
    80005528:	0027e793          	ori	a5,a5,2
    8000552c:	10079073          	csrw	sstatus,a5
    80005530:	ffffe097          	auipc	ra,0xffffe
    80005534:	620080e7          	jalr	1568(ra) # 80003b50 <mycpu>
    80005538:	07852783          	lw	a5,120(a0)
    8000553c:	02078663          	beqz	a5,80005568 <push_on+0x5c>
    80005540:	ffffe097          	auipc	ra,0xffffe
    80005544:	610080e7          	jalr	1552(ra) # 80003b50 <mycpu>
    80005548:	07852783          	lw	a5,120(a0)
    8000554c:	01813083          	ld	ra,24(sp)
    80005550:	01013403          	ld	s0,16(sp)
    80005554:	0017879b          	addiw	a5,a5,1
    80005558:	06f52c23          	sw	a5,120(a0)
    8000555c:	00813483          	ld	s1,8(sp)
    80005560:	02010113          	addi	sp,sp,32
    80005564:	00008067          	ret
    80005568:	0014d493          	srli	s1,s1,0x1
    8000556c:	ffffe097          	auipc	ra,0xffffe
    80005570:	5e4080e7          	jalr	1508(ra) # 80003b50 <mycpu>
    80005574:	0014f493          	andi	s1,s1,1
    80005578:	06952e23          	sw	s1,124(a0)
    8000557c:	fc5ff06f          	j	80005540 <push_on+0x34>

0000000080005580 <pop_on>:
    80005580:	ff010113          	addi	sp,sp,-16
    80005584:	00813023          	sd	s0,0(sp)
    80005588:	00113423          	sd	ra,8(sp)
    8000558c:	01010413          	addi	s0,sp,16
    80005590:	ffffe097          	auipc	ra,0xffffe
    80005594:	5c0080e7          	jalr	1472(ra) # 80003b50 <mycpu>
    80005598:	100027f3          	csrr	a5,sstatus
    8000559c:	0027f793          	andi	a5,a5,2
    800055a0:	04078463          	beqz	a5,800055e8 <pop_on+0x68>
    800055a4:	07852783          	lw	a5,120(a0)
    800055a8:	02f05863          	blez	a5,800055d8 <pop_on+0x58>
    800055ac:	fff7879b          	addiw	a5,a5,-1
    800055b0:	06f52c23          	sw	a5,120(a0)
    800055b4:	07853783          	ld	a5,120(a0)
    800055b8:	00079863          	bnez	a5,800055c8 <pop_on+0x48>
    800055bc:	100027f3          	csrr	a5,sstatus
    800055c0:	ffd7f793          	andi	a5,a5,-3
    800055c4:	10079073          	csrw	sstatus,a5
    800055c8:	00813083          	ld	ra,8(sp)
    800055cc:	00013403          	ld	s0,0(sp)
    800055d0:	01010113          	addi	sp,sp,16
    800055d4:	00008067          	ret
    800055d8:	00001517          	auipc	a0,0x1
    800055dc:	ef850513          	addi	a0,a0,-264 # 800064d0 <digits+0x70>
    800055e0:	fffff097          	auipc	ra,0xfffff
    800055e4:	f2c080e7          	jalr	-212(ra) # 8000450c <panic>
    800055e8:	00001517          	auipc	a0,0x1
    800055ec:	ec850513          	addi	a0,a0,-312 # 800064b0 <digits+0x50>
    800055f0:	fffff097          	auipc	ra,0xfffff
    800055f4:	f1c080e7          	jalr	-228(ra) # 8000450c <panic>

00000000800055f8 <__memset>:
    800055f8:	ff010113          	addi	sp,sp,-16
    800055fc:	00813423          	sd	s0,8(sp)
    80005600:	01010413          	addi	s0,sp,16
    80005604:	1a060e63          	beqz	a2,800057c0 <__memset+0x1c8>
    80005608:	40a007b3          	neg	a5,a0
    8000560c:	0077f793          	andi	a5,a5,7
    80005610:	00778693          	addi	a3,a5,7
    80005614:	00b00813          	li	a6,11
    80005618:	0ff5f593          	andi	a1,a1,255
    8000561c:	fff6071b          	addiw	a4,a2,-1
    80005620:	1b06e663          	bltu	a3,a6,800057cc <__memset+0x1d4>
    80005624:	1cd76463          	bltu	a4,a3,800057ec <__memset+0x1f4>
    80005628:	1a078e63          	beqz	a5,800057e4 <__memset+0x1ec>
    8000562c:	00b50023          	sb	a1,0(a0)
    80005630:	00100713          	li	a4,1
    80005634:	1ae78463          	beq	a5,a4,800057dc <__memset+0x1e4>
    80005638:	00b500a3          	sb	a1,1(a0)
    8000563c:	00200713          	li	a4,2
    80005640:	1ae78a63          	beq	a5,a4,800057f4 <__memset+0x1fc>
    80005644:	00b50123          	sb	a1,2(a0)
    80005648:	00300713          	li	a4,3
    8000564c:	18e78463          	beq	a5,a4,800057d4 <__memset+0x1dc>
    80005650:	00b501a3          	sb	a1,3(a0)
    80005654:	00400713          	li	a4,4
    80005658:	1ae78263          	beq	a5,a4,800057fc <__memset+0x204>
    8000565c:	00b50223          	sb	a1,4(a0)
    80005660:	00500713          	li	a4,5
    80005664:	1ae78063          	beq	a5,a4,80005804 <__memset+0x20c>
    80005668:	00b502a3          	sb	a1,5(a0)
    8000566c:	00700713          	li	a4,7
    80005670:	18e79e63          	bne	a5,a4,8000580c <__memset+0x214>
    80005674:	00b50323          	sb	a1,6(a0)
    80005678:	00700e93          	li	t4,7
    8000567c:	00859713          	slli	a4,a1,0x8
    80005680:	00e5e733          	or	a4,a1,a4
    80005684:	01059e13          	slli	t3,a1,0x10
    80005688:	01c76e33          	or	t3,a4,t3
    8000568c:	01859313          	slli	t1,a1,0x18
    80005690:	006e6333          	or	t1,t3,t1
    80005694:	02059893          	slli	a7,a1,0x20
    80005698:	40f60e3b          	subw	t3,a2,a5
    8000569c:	011368b3          	or	a7,t1,a7
    800056a0:	02859813          	slli	a6,a1,0x28
    800056a4:	0108e833          	or	a6,a7,a6
    800056a8:	03059693          	slli	a3,a1,0x30
    800056ac:	003e589b          	srliw	a7,t3,0x3
    800056b0:	00d866b3          	or	a3,a6,a3
    800056b4:	03859713          	slli	a4,a1,0x38
    800056b8:	00389813          	slli	a6,a7,0x3
    800056bc:	00f507b3          	add	a5,a0,a5
    800056c0:	00e6e733          	or	a4,a3,a4
    800056c4:	000e089b          	sext.w	a7,t3
    800056c8:	00f806b3          	add	a3,a6,a5
    800056cc:	00e7b023          	sd	a4,0(a5)
    800056d0:	00878793          	addi	a5,a5,8
    800056d4:	fed79ce3          	bne	a5,a3,800056cc <__memset+0xd4>
    800056d8:	ff8e7793          	andi	a5,t3,-8
    800056dc:	0007871b          	sext.w	a4,a5
    800056e0:	01d787bb          	addw	a5,a5,t4
    800056e4:	0ce88e63          	beq	a7,a4,800057c0 <__memset+0x1c8>
    800056e8:	00f50733          	add	a4,a0,a5
    800056ec:	00b70023          	sb	a1,0(a4)
    800056f0:	0017871b          	addiw	a4,a5,1
    800056f4:	0cc77663          	bgeu	a4,a2,800057c0 <__memset+0x1c8>
    800056f8:	00e50733          	add	a4,a0,a4
    800056fc:	00b70023          	sb	a1,0(a4)
    80005700:	0027871b          	addiw	a4,a5,2
    80005704:	0ac77e63          	bgeu	a4,a2,800057c0 <__memset+0x1c8>
    80005708:	00e50733          	add	a4,a0,a4
    8000570c:	00b70023          	sb	a1,0(a4)
    80005710:	0037871b          	addiw	a4,a5,3
    80005714:	0ac77663          	bgeu	a4,a2,800057c0 <__memset+0x1c8>
    80005718:	00e50733          	add	a4,a0,a4
    8000571c:	00b70023          	sb	a1,0(a4)
    80005720:	0047871b          	addiw	a4,a5,4
    80005724:	08c77e63          	bgeu	a4,a2,800057c0 <__memset+0x1c8>
    80005728:	00e50733          	add	a4,a0,a4
    8000572c:	00b70023          	sb	a1,0(a4)
    80005730:	0057871b          	addiw	a4,a5,5
    80005734:	08c77663          	bgeu	a4,a2,800057c0 <__memset+0x1c8>
    80005738:	00e50733          	add	a4,a0,a4
    8000573c:	00b70023          	sb	a1,0(a4)
    80005740:	0067871b          	addiw	a4,a5,6
    80005744:	06c77e63          	bgeu	a4,a2,800057c0 <__memset+0x1c8>
    80005748:	00e50733          	add	a4,a0,a4
    8000574c:	00b70023          	sb	a1,0(a4)
    80005750:	0077871b          	addiw	a4,a5,7
    80005754:	06c77663          	bgeu	a4,a2,800057c0 <__memset+0x1c8>
    80005758:	00e50733          	add	a4,a0,a4
    8000575c:	00b70023          	sb	a1,0(a4)
    80005760:	0087871b          	addiw	a4,a5,8
    80005764:	04c77e63          	bgeu	a4,a2,800057c0 <__memset+0x1c8>
    80005768:	00e50733          	add	a4,a0,a4
    8000576c:	00b70023          	sb	a1,0(a4)
    80005770:	0097871b          	addiw	a4,a5,9
    80005774:	04c77663          	bgeu	a4,a2,800057c0 <__memset+0x1c8>
    80005778:	00e50733          	add	a4,a0,a4
    8000577c:	00b70023          	sb	a1,0(a4)
    80005780:	00a7871b          	addiw	a4,a5,10
    80005784:	02c77e63          	bgeu	a4,a2,800057c0 <__memset+0x1c8>
    80005788:	00e50733          	add	a4,a0,a4
    8000578c:	00b70023          	sb	a1,0(a4)
    80005790:	00b7871b          	addiw	a4,a5,11
    80005794:	02c77663          	bgeu	a4,a2,800057c0 <__memset+0x1c8>
    80005798:	00e50733          	add	a4,a0,a4
    8000579c:	00b70023          	sb	a1,0(a4)
    800057a0:	00c7871b          	addiw	a4,a5,12
    800057a4:	00c77e63          	bgeu	a4,a2,800057c0 <__memset+0x1c8>
    800057a8:	00e50733          	add	a4,a0,a4
    800057ac:	00b70023          	sb	a1,0(a4)
    800057b0:	00d7879b          	addiw	a5,a5,13
    800057b4:	00c7f663          	bgeu	a5,a2,800057c0 <__memset+0x1c8>
    800057b8:	00f507b3          	add	a5,a0,a5
    800057bc:	00b78023          	sb	a1,0(a5)
    800057c0:	00813403          	ld	s0,8(sp)
    800057c4:	01010113          	addi	sp,sp,16
    800057c8:	00008067          	ret
    800057cc:	00b00693          	li	a3,11
    800057d0:	e55ff06f          	j	80005624 <__memset+0x2c>
    800057d4:	00300e93          	li	t4,3
    800057d8:	ea5ff06f          	j	8000567c <__memset+0x84>
    800057dc:	00100e93          	li	t4,1
    800057e0:	e9dff06f          	j	8000567c <__memset+0x84>
    800057e4:	00000e93          	li	t4,0
    800057e8:	e95ff06f          	j	8000567c <__memset+0x84>
    800057ec:	00000793          	li	a5,0
    800057f0:	ef9ff06f          	j	800056e8 <__memset+0xf0>
    800057f4:	00200e93          	li	t4,2
    800057f8:	e85ff06f          	j	8000567c <__memset+0x84>
    800057fc:	00400e93          	li	t4,4
    80005800:	e7dff06f          	j	8000567c <__memset+0x84>
    80005804:	00500e93          	li	t4,5
    80005808:	e75ff06f          	j	8000567c <__memset+0x84>
    8000580c:	00600e93          	li	t4,6
    80005810:	e6dff06f          	j	8000567c <__memset+0x84>

0000000080005814 <__memmove>:
    80005814:	ff010113          	addi	sp,sp,-16
    80005818:	00813423          	sd	s0,8(sp)
    8000581c:	01010413          	addi	s0,sp,16
    80005820:	0e060863          	beqz	a2,80005910 <__memmove+0xfc>
    80005824:	fff6069b          	addiw	a3,a2,-1
    80005828:	0006881b          	sext.w	a6,a3
    8000582c:	0ea5e863          	bltu	a1,a0,8000591c <__memmove+0x108>
    80005830:	00758713          	addi	a4,a1,7
    80005834:	00a5e7b3          	or	a5,a1,a0
    80005838:	40a70733          	sub	a4,a4,a0
    8000583c:	0077f793          	andi	a5,a5,7
    80005840:	00f73713          	sltiu	a4,a4,15
    80005844:	00174713          	xori	a4,a4,1
    80005848:	0017b793          	seqz	a5,a5
    8000584c:	00e7f7b3          	and	a5,a5,a4
    80005850:	10078863          	beqz	a5,80005960 <__memmove+0x14c>
    80005854:	00900793          	li	a5,9
    80005858:	1107f463          	bgeu	a5,a6,80005960 <__memmove+0x14c>
    8000585c:	0036581b          	srliw	a6,a2,0x3
    80005860:	fff8081b          	addiw	a6,a6,-1
    80005864:	02081813          	slli	a6,a6,0x20
    80005868:	01d85893          	srli	a7,a6,0x1d
    8000586c:	00858813          	addi	a6,a1,8
    80005870:	00058793          	mv	a5,a1
    80005874:	00050713          	mv	a4,a0
    80005878:	01088833          	add	a6,a7,a6
    8000587c:	0007b883          	ld	a7,0(a5)
    80005880:	00878793          	addi	a5,a5,8
    80005884:	00870713          	addi	a4,a4,8
    80005888:	ff173c23          	sd	a7,-8(a4)
    8000588c:	ff0798e3          	bne	a5,a6,8000587c <__memmove+0x68>
    80005890:	ff867713          	andi	a4,a2,-8
    80005894:	02071793          	slli	a5,a4,0x20
    80005898:	0207d793          	srli	a5,a5,0x20
    8000589c:	00f585b3          	add	a1,a1,a5
    800058a0:	40e686bb          	subw	a3,a3,a4
    800058a4:	00f507b3          	add	a5,a0,a5
    800058a8:	06e60463          	beq	a2,a4,80005910 <__memmove+0xfc>
    800058ac:	0005c703          	lbu	a4,0(a1)
    800058b0:	00e78023          	sb	a4,0(a5)
    800058b4:	04068e63          	beqz	a3,80005910 <__memmove+0xfc>
    800058b8:	0015c603          	lbu	a2,1(a1)
    800058bc:	00100713          	li	a4,1
    800058c0:	00c780a3          	sb	a2,1(a5)
    800058c4:	04e68663          	beq	a3,a4,80005910 <__memmove+0xfc>
    800058c8:	0025c603          	lbu	a2,2(a1)
    800058cc:	00200713          	li	a4,2
    800058d0:	00c78123          	sb	a2,2(a5)
    800058d4:	02e68e63          	beq	a3,a4,80005910 <__memmove+0xfc>
    800058d8:	0035c603          	lbu	a2,3(a1)
    800058dc:	00300713          	li	a4,3
    800058e0:	00c781a3          	sb	a2,3(a5)
    800058e4:	02e68663          	beq	a3,a4,80005910 <__memmove+0xfc>
    800058e8:	0045c603          	lbu	a2,4(a1)
    800058ec:	00400713          	li	a4,4
    800058f0:	00c78223          	sb	a2,4(a5)
    800058f4:	00e68e63          	beq	a3,a4,80005910 <__memmove+0xfc>
    800058f8:	0055c603          	lbu	a2,5(a1)
    800058fc:	00500713          	li	a4,5
    80005900:	00c782a3          	sb	a2,5(a5)
    80005904:	00e68663          	beq	a3,a4,80005910 <__memmove+0xfc>
    80005908:	0065c703          	lbu	a4,6(a1)
    8000590c:	00e78323          	sb	a4,6(a5)
    80005910:	00813403          	ld	s0,8(sp)
    80005914:	01010113          	addi	sp,sp,16
    80005918:	00008067          	ret
    8000591c:	02061713          	slli	a4,a2,0x20
    80005920:	02075713          	srli	a4,a4,0x20
    80005924:	00e587b3          	add	a5,a1,a4
    80005928:	f0f574e3          	bgeu	a0,a5,80005830 <__memmove+0x1c>
    8000592c:	02069613          	slli	a2,a3,0x20
    80005930:	02065613          	srli	a2,a2,0x20
    80005934:	fff64613          	not	a2,a2
    80005938:	00e50733          	add	a4,a0,a4
    8000593c:	00c78633          	add	a2,a5,a2
    80005940:	fff7c683          	lbu	a3,-1(a5)
    80005944:	fff78793          	addi	a5,a5,-1
    80005948:	fff70713          	addi	a4,a4,-1
    8000594c:	00d70023          	sb	a3,0(a4)
    80005950:	fec798e3          	bne	a5,a2,80005940 <__memmove+0x12c>
    80005954:	00813403          	ld	s0,8(sp)
    80005958:	01010113          	addi	sp,sp,16
    8000595c:	00008067          	ret
    80005960:	02069713          	slli	a4,a3,0x20
    80005964:	02075713          	srli	a4,a4,0x20
    80005968:	00170713          	addi	a4,a4,1
    8000596c:	00e50733          	add	a4,a0,a4
    80005970:	00050793          	mv	a5,a0
    80005974:	0005c683          	lbu	a3,0(a1)
    80005978:	00178793          	addi	a5,a5,1
    8000597c:	00158593          	addi	a1,a1,1
    80005980:	fed78fa3          	sb	a3,-1(a5)
    80005984:	fee798e3          	bne	a5,a4,80005974 <__memmove+0x160>
    80005988:	f89ff06f          	j	80005910 <__memmove+0xfc>

000000008000598c <__putc>:
    8000598c:	fe010113          	addi	sp,sp,-32
    80005990:	00813823          	sd	s0,16(sp)
    80005994:	00113c23          	sd	ra,24(sp)
    80005998:	02010413          	addi	s0,sp,32
    8000599c:	00050793          	mv	a5,a0
    800059a0:	fef40593          	addi	a1,s0,-17
    800059a4:	00100613          	li	a2,1
    800059a8:	00000513          	li	a0,0
    800059ac:	fef407a3          	sb	a5,-17(s0)
    800059b0:	fffff097          	auipc	ra,0xfffff
    800059b4:	b3c080e7          	jalr	-1220(ra) # 800044ec <console_write>
    800059b8:	01813083          	ld	ra,24(sp)
    800059bc:	01013403          	ld	s0,16(sp)
    800059c0:	02010113          	addi	sp,sp,32
    800059c4:	00008067          	ret

00000000800059c8 <__getc>:
    800059c8:	fe010113          	addi	sp,sp,-32
    800059cc:	00813823          	sd	s0,16(sp)
    800059d0:	00113c23          	sd	ra,24(sp)
    800059d4:	02010413          	addi	s0,sp,32
    800059d8:	fe840593          	addi	a1,s0,-24
    800059dc:	00100613          	li	a2,1
    800059e0:	00000513          	li	a0,0
    800059e4:	fffff097          	auipc	ra,0xfffff
    800059e8:	ae8080e7          	jalr	-1304(ra) # 800044cc <console_read>
    800059ec:	fe844503          	lbu	a0,-24(s0)
    800059f0:	01813083          	ld	ra,24(sp)
    800059f4:	01013403          	ld	s0,16(sp)
    800059f8:	02010113          	addi	sp,sp,32
    800059fc:	00008067          	ret

0000000080005a00 <console_handler>:
    80005a00:	fe010113          	addi	sp,sp,-32
    80005a04:	00813823          	sd	s0,16(sp)
    80005a08:	00113c23          	sd	ra,24(sp)
    80005a0c:	00913423          	sd	s1,8(sp)
    80005a10:	02010413          	addi	s0,sp,32
    80005a14:	14202773          	csrr	a4,scause
    80005a18:	100027f3          	csrr	a5,sstatus
    80005a1c:	0027f793          	andi	a5,a5,2
    80005a20:	06079e63          	bnez	a5,80005a9c <console_handler+0x9c>
    80005a24:	00074c63          	bltz	a4,80005a3c <console_handler+0x3c>
    80005a28:	01813083          	ld	ra,24(sp)
    80005a2c:	01013403          	ld	s0,16(sp)
    80005a30:	00813483          	ld	s1,8(sp)
    80005a34:	02010113          	addi	sp,sp,32
    80005a38:	00008067          	ret
    80005a3c:	0ff77713          	andi	a4,a4,255
    80005a40:	00900793          	li	a5,9
    80005a44:	fef712e3          	bne	a4,a5,80005a28 <console_handler+0x28>
    80005a48:	ffffe097          	auipc	ra,0xffffe
    80005a4c:	6dc080e7          	jalr	1756(ra) # 80004124 <plic_claim>
    80005a50:	00a00793          	li	a5,10
    80005a54:	00050493          	mv	s1,a0
    80005a58:	02f50c63          	beq	a0,a5,80005a90 <console_handler+0x90>
    80005a5c:	fc0506e3          	beqz	a0,80005a28 <console_handler+0x28>
    80005a60:	00050593          	mv	a1,a0
    80005a64:	00001517          	auipc	a0,0x1
    80005a68:	97450513          	addi	a0,a0,-1676 # 800063d8 <CONSOLE_STATUS+0x3c8>
    80005a6c:	fffff097          	auipc	ra,0xfffff
    80005a70:	afc080e7          	jalr	-1284(ra) # 80004568 <__printf>
    80005a74:	01013403          	ld	s0,16(sp)
    80005a78:	01813083          	ld	ra,24(sp)
    80005a7c:	00048513          	mv	a0,s1
    80005a80:	00813483          	ld	s1,8(sp)
    80005a84:	02010113          	addi	sp,sp,32
    80005a88:	ffffe317          	auipc	t1,0xffffe
    80005a8c:	6d430067          	jr	1748(t1) # 8000415c <plic_complete>
    80005a90:	fffff097          	auipc	ra,0xfffff
    80005a94:	3e0080e7          	jalr	992(ra) # 80004e70 <uartintr>
    80005a98:	fddff06f          	j	80005a74 <console_handler+0x74>
    80005a9c:	00001517          	auipc	a0,0x1
    80005aa0:	a3c50513          	addi	a0,a0,-1476 # 800064d8 <digits+0x78>
    80005aa4:	fffff097          	auipc	ra,0xfffff
    80005aa8:	a68080e7          	jalr	-1432(ra) # 8000450c <panic>
	...

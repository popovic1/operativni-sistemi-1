
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00004117          	auipc	sp,0x4
    80000004:	50013103          	ld	sp,1280(sp) # 80004500 <_GLOBAL_OFFSET_TABLE_+0x20>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	099010ef          	jal	ra,800018b4 <start>

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
    800010a8:	3e8000ef          	jal	ra,80001490 <_ZN5Riscv11trapHandlerEv>

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

0000000080001140 <_Z9mem_allocm>:
#include "../h/syscall_c.hpp"
#include "../h/riscv.hpp"


void *mem_alloc(size_t size) {
    80001140:	fe010113          	addi	sp,sp,-32
    80001144:	00813c23          	sd	s0,24(sp)
    80001148:	02010413          	addi	s0,sp,32
    size_t sizeInBlocks = ((size + 16 + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE);
    8000114c:	04f50513          	addi	a0,a0,79 # 104f <_entry-0x7fffefb1>
    80001150:	00655513          	srli	a0,a0,0x6
    __asm__ volatile ("ld %0, 10*8(fp)" : "=r"(a0));
    return a0;
}

inline void Riscv::w_a0(long a0) {
    __asm__ volatile ("mv a0, %0" : : "r"(a0));
    80001154:	00100793          	li	a5,1
    80001158:	00078513          	mv	a0,a5
    __asm__ volatile ("ld %0, 11*8(fp)" : "=r"(a1));
    return a1;
}

inline void Riscv::w_a1(uint64 a1) {
    __asm__ volatile ("mv a1, %0" : : "r"(a1));
    8000115c:	00050593          	mv	a1,a0
    Riscv::w_a0(0x01);
    Riscv::w_a1((uint64)sizeInBlocks);

    __asm__ volatile ("ecall");
    80001160:	00000073          	ecall

    volatile long a0;
    __asm__ volatile ("mv %0, a0" : "=r"(a0));
    80001164:	00050793          	mv	a5,a0
    80001168:	fef43423          	sd	a5,-24(s0)
    return (void*)a0;
    8000116c:	fe843503          	ld	a0,-24(s0)
}
    80001170:	01813403          	ld	s0,24(sp)
    80001174:	02010113          	addi	sp,sp,32
    80001178:	00008067          	ret

000000008000117c <_Z8mem_freePv>:

int mem_free(void * ptr) {
    8000117c:	fe010113          	addi	sp,sp,-32
    80001180:	00813c23          	sd	s0,24(sp)
    80001184:	02010413          	addi	s0,sp,32
    __asm__ volatile ("mv a0, %0" : : "r"(a0));
    80001188:	00200793          	li	a5,2
    8000118c:	00078513          	mv	a0,a5
    __asm__ volatile ("mv a1, %0" : : "r"(a1));
    80001190:	00050593          	mv	a1,a0
    Riscv::w_a0(0x02);
    Riscv::w_a1((uint64)ptr);

    __asm__ volatile ("ecall");
    80001194:	00000073          	ecall

    volatile long a0;
    __asm__ volatile ("mv %0, a0" : "=r"(a0));
    80001198:	00050793          	mv	a5,a0
    8000119c:	fef43423          	sd	a5,-24(s0)
    return a0;
    800011a0:	fe843503          	ld	a0,-24(s0)
}
    800011a4:	0005051b          	sext.w	a0,a0
    800011a8:	01813403          	ld	s0,24(sp)
    800011ac:	02010113          	addi	sp,sp,32
    800011b0:	00008067          	ret

00000000800011b4 <_Z7createCm>:



};

C* createC(uint64 n){
    800011b4:	fe010113          	addi	sp,sp,-32
    800011b8:	00113c23          	sd	ra,24(sp)
    800011bc:	00813823          	sd	s0,16(sp)
    800011c0:	00913423          	sd	s1,8(sp)
    800011c4:	02010413          	addi	s0,sp,32
    800011c8:	00050493          	mv	s1,a0
    return new C(n);
    800011cc:	00800513          	li	a0,8
    800011d0:	00000097          	auipc	ra,0x0
    800011d4:	200080e7          	jalr	512(ra) # 800013d0 <_Znwm>
        num = n;
    800011d8:	00953023          	sd	s1,0(a0)
}
    800011dc:	01813083          	ld	ra,24(sp)
    800011e0:	01013403          	ld	s0,16(sp)
    800011e4:	00813483          	ld	s1,8(sp)
    800011e8:	02010113          	addi	sp,sp,32
    800011ec:	00008067          	ret

00000000800011f0 <main>:


int main() {
    800011f0:	fd010113          	addi	sp,sp,-48
    800011f4:	02113423          	sd	ra,40(sp)
    800011f8:	02813023          	sd	s0,32(sp)
    800011fc:	00913c23          	sd	s1,24(sp)
    80001200:	01213823          	sd	s2,16(sp)
    80001204:	01313423          	sd	s3,8(sp)
    80001208:	03010413          	addi	s0,sp,48
public:


    // Get the singleton instance
    static MemoryAllocator &getInstance() {
        static MemoryAllocator instance;
    8000120c:	00003797          	auipc	a5,0x3
    80001210:	3547c783          	lbu	a5,852(a5) # 80004560 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80001214:	00079863          	bnez	a5,80001224 <main+0x34>
    80001218:	00100793          	li	a5,1
    8000121c:	00003717          	auipc	a4,0x3
    80001220:	34f70223          	sb	a5,836(a4) # 80004560 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
//        printString("\n");
//        uint64 end = (uint64)((Block *) HEAP_END_ADDR);
//        printInteger(end);
//        printString("\n");

        free_list = (Block *) HEAP_START_ADDR;
    80001224:	00003797          	auipc	a5,0x3
    80001228:	2c47b783          	ld	a5,708(a5) # 800044e8 <_GLOBAL_OFFSET_TABLE_+0x8>
    8000122c:	0007b703          	ld	a4,0(a5)
    80001230:	00003697          	auipc	a3,0x3
    80001234:	2e06b683          	ld	a3,736(a3) # 80004510 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001238:	00e6b023          	sd	a4,0(a3)
        free_list->size = (uint64 *) HEAP_END_ADDR - (uint64 *) HEAP_START_ADDR;
    8000123c:	00003797          	auipc	a5,0x3
    80001240:	2cc7b783          	ld	a5,716(a5) # 80004508 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001244:	0007b783          	ld	a5,0(a5)
    80001248:	40e787b3          	sub	a5,a5,a4
    8000124c:	4037d793          	srai	a5,a5,0x3
    80001250:	00f73023          	sd	a5,0(a4)
        free_list->next = nullptr;
    80001254:	0006b783          	ld	a5,0(a3)
    80001258:	0007b423          	sd	zero,8(a5)
        allocated_list = nullptr;
    8000125c:	00003797          	auipc	a5,0x3
    80001260:	29c7b783          	ld	a5,668(a5) # 800044f8 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001264:	0007b023          	sd	zero,0(a5)


    MemoryAllocator::getInstance().init();
    Riscv::w_stvec((uint64) &Riscv::supervisorTrap+1);
    80001268:	00003797          	auipc	a5,0x3
    8000126c:	2887b783          	ld	a5,648(a5) # 800044f0 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001270:	00178793          	addi	a5,a5,1
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    80001274:	10579073          	csrw	stvec,a5
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001278:	00200793          	li	a5,2
    8000127c:	1007a073          	csrs	sstatus,a5
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);

    printString("MAIN START\n");
    80001280:	00003517          	auipc	a0,0x3
    80001284:	da050513          	addi	a0,a0,-608 # 80004020 <CONSOLE_STATUS+0x10>
    80001288:	00000097          	auipc	ra,0x0
    8000128c:	558080e7          	jalr	1368(ra) # 800017e0 <_Z11printStringPKc>

    A* a0 = new A();
    80001290:	01000513          	li	a0,16
    80001294:	00000097          	auipc	ra,0x0
    80001298:	13c080e7          	jalr	316(ra) # 800013d0 <_Znwm>
    8000129c:	00050493          	mv	s1,a0
    800012a0:	00052023          	sw	zero,0(a0)
    800012a4:	00053423          	sd	zero,8(a0)
    B* b0 = new B();
    800012a8:	05000513          	li	a0,80
    800012ac:	00000097          	auipc	ra,0x0
    800012b0:	124080e7          	jalr	292(ra) # 800013d0 <_Znwm>
    800012b4:	00050913          	mv	s2,a0
    800012b8:	00053023          	sd	zero,0(a0)
    800012bc:	00053423          	sd	zero,8(a0)
    800012c0:	00053823          	sd	zero,16(a0)
    800012c4:	00053c23          	sd	zero,24(a0)
    800012c8:	02053023          	sd	zero,32(a0)
    800012cc:	02053423          	sd	zero,40(a0)
    800012d0:	02053823          	sd	zero,48(a0)
    800012d4:	02053c23          	sd	zero,56(a0)
    800012d8:	04053023          	sd	zero,64(a0)
    800012dc:	04053423          	sd	zero,72(a0)
    A* a1 = new A();
    800012e0:	01000513          	li	a0,16
    800012e4:	00000097          	auipc	ra,0x0
    800012e8:	0ec080e7          	jalr	236(ra) # 800013d0 <_Znwm>
    800012ec:	00050993          	mv	s3,a0
    800012f0:	00053423          	sd	zero,8(a0)
    a0->a = 0;
    800012f4:	0004a023          	sw	zero,0(s1)
    a1->a = 1;
    800012f8:	00100793          	li	a5,1
    800012fc:	00f52023          	sw	a5,0(a0)
    b0->a = 10;
    80001300:	00a00793          	li	a5,10
    80001304:	00f92023          	sw	a5,0(s2)
    delete(a0);
    80001308:	00048863          	beqz	s1,80001318 <main+0x128>
    8000130c:	00048513          	mv	a0,s1
    80001310:	00000097          	auipc	ra,0x0
    80001314:	110080e7          	jalr	272(ra) # 80001420 <_ZdlPv>
    B* b1 = new B();
    80001318:	05000513          	li	a0,80
    8000131c:	00000097          	auipc	ra,0x0
    80001320:	0b4080e7          	jalr	180(ra) # 800013d0 <_Znwm>
    80001324:	00050493          	mv	s1,a0
    80001328:	00053023          	sd	zero,0(a0)
    8000132c:	00053423          	sd	zero,8(a0)
    80001330:	00053823          	sd	zero,16(a0)
    80001334:	00053c23          	sd	zero,24(a0)
    80001338:	02053023          	sd	zero,32(a0)
    8000133c:	02053423          	sd	zero,40(a0)
    80001340:	02053823          	sd	zero,48(a0)
    80001344:	02053c23          	sd	zero,56(a0)
    80001348:	04053023          	sd	zero,64(a0)
    8000134c:	04053423          	sd	zero,72(a0)
    b1->a = 11;
    80001350:	00b00793          	li	a5,11
    80001354:	00f52023          	sw	a5,0(a0)
    delete(a1);
    80001358:	00098863          	beqz	s3,80001368 <main+0x178>
    8000135c:	00098513          	mv	a0,s3
    80001360:	00000097          	auipc	ra,0x0
    80001364:	0c0080e7          	jalr	192(ra) # 80001420 <_ZdlPv>
    delete(b0);
    80001368:	00090863          	beqz	s2,80001378 <main+0x188>
    8000136c:	00090513          	mv	a0,s2
    80001370:	00000097          	auipc	ra,0x0
    80001374:	0b0080e7          	jalr	176(ra) # 80001420 <_ZdlPv>
    delete(b1);
    80001378:	00048863          	beqz	s1,80001388 <main+0x198>
    8000137c:	00048513          	mv	a0,s1
    80001380:	00000097          	auipc	ra,0x0
    80001384:	0a0080e7          	jalr	160(ra) # 80001420 <_ZdlPv>
    C* c1 = createC(5);
    80001388:	00500513          	li	a0,5
    8000138c:	00000097          	auipc	ra,0x0
    80001390:	e28080e7          	jalr	-472(ra) # 800011b4 <_Z7createCm>
    delete c1;
    80001394:	00050663          	beqz	a0,800013a0 <main+0x1b0>
    80001398:	00000097          	auipc	ra,0x0
    8000139c:	088080e7          	jalr	136(ra) # 80001420 <_ZdlPv>


    printString("Finished\n");
    800013a0:	00003517          	auipc	a0,0x3
    800013a4:	c9050513          	addi	a0,a0,-880 # 80004030 <CONSOLE_STATUS+0x20>
    800013a8:	00000097          	auipc	ra,0x0
    800013ac:	438080e7          	jalr	1080(ra) # 800017e0 <_Z11printStringPKc>

    return 0;
}
    800013b0:	00000513          	li	a0,0
    800013b4:	02813083          	ld	ra,40(sp)
    800013b8:	02013403          	ld	s0,32(sp)
    800013bc:	01813483          	ld	s1,24(sp)
    800013c0:	01013903          	ld	s2,16(sp)
    800013c4:	00813983          	ld	s3,8(sp)
    800013c8:	03010113          	addi	sp,sp,48
    800013cc:	00008067          	ret

00000000800013d0 <_Znwm>:
// Created by os on 2/2/23.
//

#include "../h/syscall_cpp.hpp"

void* operator new(size_t size) {
    800013d0:	ff010113          	addi	sp,sp,-16
    800013d4:	00113423          	sd	ra,8(sp)
    800013d8:	00813023          	sd	s0,0(sp)
    800013dc:	01010413          	addi	s0,sp,16
    return (void*)mem_alloc(size);
    800013e0:	00000097          	auipc	ra,0x0
    800013e4:	d60080e7          	jalr	-672(ra) # 80001140 <_Z9mem_allocm>
}
    800013e8:	00813083          	ld	ra,8(sp)
    800013ec:	00013403          	ld	s0,0(sp)
    800013f0:	01010113          	addi	sp,sp,16
    800013f4:	00008067          	ret

00000000800013f8 <_Znam>:

void* operator new[](size_t size) {
    800013f8:	ff010113          	addi	sp,sp,-16
    800013fc:	00113423          	sd	ra,8(sp)
    80001400:	00813023          	sd	s0,0(sp)
    80001404:	01010413          	addi	s0,sp,16
    return (void*)mem_alloc(size);
    80001408:	00000097          	auipc	ra,0x0
    8000140c:	d38080e7          	jalr	-712(ra) # 80001140 <_Z9mem_allocm>
}
    80001410:	00813083          	ld	ra,8(sp)
    80001414:	00013403          	ld	s0,0(sp)
    80001418:	01010113          	addi	sp,sp,16
    8000141c:	00008067          	ret

0000000080001420 <_ZdlPv>:

void operator delete(void *ptr) { mem_free(ptr); }
    80001420:	ff010113          	addi	sp,sp,-16
    80001424:	00113423          	sd	ra,8(sp)
    80001428:	00813023          	sd	s0,0(sp)
    8000142c:	01010413          	addi	s0,sp,16
    80001430:	00000097          	auipc	ra,0x0
    80001434:	d4c080e7          	jalr	-692(ra) # 8000117c <_Z8mem_freePv>
    80001438:	00813083          	ld	ra,8(sp)
    8000143c:	00013403          	ld	s0,0(sp)
    80001440:	01010113          	addi	sp,sp,16
    80001444:	00008067          	ret

0000000080001448 <_ZdaPv>:

void operator delete[](void *ptr) { mem_free(ptr); }
    80001448:	ff010113          	addi	sp,sp,-16
    8000144c:	00113423          	sd	ra,8(sp)
    80001450:	00813023          	sd	s0,0(sp)
    80001454:	01010413          	addi	s0,sp,16
    80001458:	00000097          	auipc	ra,0x0
    8000145c:	d24080e7          	jalr	-732(ra) # 8000117c <_Z8mem_freePv>
    80001460:	00813083          	ld	ra,8(sp)
    80001464:	00013403          	ld	s0,0(sp)
    80001468:	01010113          	addi	sp,sp,16
    8000146c:	00008067          	ret

0000000080001470 <_ZN5Riscv10popSppSpieEv>:
#include "../h/riscv.hpp"



void Riscv::popSppSpie()
{
    80001470:	ff010113          	addi	sp,sp,-16
    80001474:	00813423          	sd	s0,8(sp)
    80001478:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    8000147c:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    80001480:	10200073          	sret
}
    80001484:	00813403          	ld	s0,8(sp)
    80001488:	01010113          	addi	sp,sp,16
    8000148c:	00008067          	ret

0000000080001490 <_ZN5Riscv11trapHandlerEv>:

void Riscv::trapHandler() {
    80001490:	fb010113          	addi	sp,sp,-80
    80001494:	04113423          	sd	ra,72(sp)
    80001498:	04813023          	sd	s0,64(sp)
    8000149c:	02913c23          	sd	s1,56(sp)
    800014a0:	03213823          	sd	s2,48(sp)
    800014a4:	05010413          	addi	s0,sp,80
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    800014a8:	142027f3          	csrr	a5,scause
    800014ac:	fcf43423          	sd	a5,-56(s0)
    return scause;
    800014b0:	fc843783          	ld	a5,-56(s0)
    __asm__ volatile ("ld %0, 10*8(fp)" : "=r"(a0));
    800014b4:	05043703          	ld	a4,80(s0)
    800014b8:	fce43023          	sd	a4,-64(s0)
    return a0;
    800014bc:	fc043683          	ld	a3,-64(s0)
    __asm__ volatile ("ld %0, 11*8(fp)" : "=r"(a1));
    800014c0:	05843703          	ld	a4,88(s0)
    800014c4:	fae43c23          	sd	a4,-72(s0)
    return a1;
    800014c8:	fb843503          	ld	a0,-72(s0)
    uint64 a0 = r_a0();
    uint64 a1 = r_a1();
    uint64 sepc;
    uint64 sstatus;

    switch (scause) {
    800014cc:	fff00713          	li	a4,-1
    800014d0:	03f71713          	slli	a4,a4,0x3f
    800014d4:	00170713          	addi	a4,a4,1
    800014d8:	0ce78263          	beq	a5,a4,8000159c <_ZN5Riscv11trapHandlerEv+0x10c>
    800014dc:	fff00713          	li	a4,-1
    800014e0:	03f71713          	slli	a4,a4,0x3f
    800014e4:	00170713          	addi	a4,a4,1
    800014e8:	04f76463          	bltu	a4,a5,80001530 <_ZN5Riscv11trapHandlerEv+0xa0>
    800014ec:	ff878793          	addi	a5,a5,-8
    800014f0:	00100713          	li	a4,1
    800014f4:	0cf76463          	bltu	a4,a5,800015bc <_ZN5Riscv11trapHandlerEv+0x12c>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    800014f8:	141027f3          	csrr	a5,sepc
    800014fc:	fcf43c23          	sd	a5,-40(s0)
    return sepc;
    80001500:	fd843483          	ld	s1,-40(s0)
        case 0x08:
        case 0x09:
            //ecall: software interrupt
            sepc = r_sepc() + 4;
    80001504:	00448493          	addi	s1,s1,4
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001508:	100027f3          	csrr	a5,sstatus
    8000150c:	fcf43823          	sd	a5,-48(s0)
    return sstatus;
    80001510:	fd043903          	ld	s2,-48(s0)
            sstatus = r_sstatus();
            void* mem;

            switch(a0){
    80001514:	00100793          	li	a5,1
    80001518:	02f68a63          	beq	a3,a5,8000154c <_ZN5Riscv11trapHandlerEv+0xbc>
    8000151c:	00200793          	li	a5,2
    80001520:	04f68a63          	beq	a3,a5,80001574 <_ZN5Riscv11trapHandlerEv+0xe4>
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001524:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001528:	14149073          	csrw	sepc,s1
}
    8000152c:	0780006f          	j	800015a4 <_ZN5Riscv11trapHandlerEv+0x114>
    switch (scause) {
    80001530:	fff00713          	li	a4,-1
    80001534:	03f71713          	slli	a4,a4,0x3f
    80001538:	00970713          	addi	a4,a4,9
    8000153c:	08e79063          	bne	a5,a4,800015bc <_ZN5Riscv11trapHandlerEv+0x12c>
            //timer interrupt
            mc_sip(SIP_SSIP);
            break;
        case 0x8000000000000009UL:
            //external hardware interrupt
            console_handler();
    80001540:	00002097          	auipc	ra,0x2
    80001544:	4b0080e7          	jalr	1200(ra) # 800039f0 <console_handler>
            break;
    80001548:	05c0006f          	j	800015a4 <_ZN5Riscv11trapHandlerEv+0x114>
        static MemoryAllocator instance;
    8000154c:	00003797          	auipc	a5,0x3
    80001550:	0147c783          	lbu	a5,20(a5) # 80004560 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80001554:	00079863          	bnez	a5,80001564 <_ZN5Riscv11trapHandlerEv+0xd4>
    80001558:	00100793          	li	a5,1
    8000155c:	00003717          	auipc	a4,0x3
    80001560:	00f70223          	sb	a5,4(a4) # 80004560 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
                    mem = MemoryAllocator::getInstance().allocate((size_t) a1);
    80001564:	00000097          	auipc	ra,0x0
    80001568:	06c080e7          	jalr	108(ra) # 800015d0 <_ZN15MemoryAllocator8allocateEm>
}

inline void Riscv::push_a0(long a0) {
    __asm__ volatile ("sd %0, 10*8(fp)" : : "r"(a0));
    8000156c:	04a43823          	sd	a0,80(s0)
}
    80001570:	fb5ff06f          	j	80001524 <_ZN5Riscv11trapHandlerEv+0x94>
    80001574:	00003797          	auipc	a5,0x3
    80001578:	fec7c783          	lbu	a5,-20(a5) # 80004560 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    8000157c:	00079863          	bnez	a5,8000158c <_ZN5Riscv11trapHandlerEv+0xfc>
    80001580:	00100793          	li	a5,1
    80001584:	00003717          	auipc	a4,0x3
    80001588:	fcf70e23          	sb	a5,-36(a4) # 80004560 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
                    push_a0(MemoryAllocator::getInstance().deallocate((void *)a1));
    8000158c:	00000097          	auipc	ra,0x0
    80001590:	12c080e7          	jalr	300(ra) # 800016b8 <_ZN15MemoryAllocator10deallocateEPv>
    __asm__ volatile ("sd %0, 10*8(fp)" : : "r"(a0));
    80001594:	04a43823          	sd	a0,80(s0)
}
    80001598:	f8dff06f          	j	80001524 <_ZN5Riscv11trapHandlerEv+0x94>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    8000159c:	00200793          	li	a5,2
    800015a0:	1447b073          	csrc	sip,a5
        default:
            printString("ERROR: Unexpected interrupt!");
    }

    800015a4:	04813083          	ld	ra,72(sp)
    800015a8:	04013403          	ld	s0,64(sp)
    800015ac:	03813483          	ld	s1,56(sp)
    800015b0:	03013903          	ld	s2,48(sp)
    800015b4:	05010113          	addi	sp,sp,80
    800015b8:	00008067          	ret
            printString("ERROR: Unexpected interrupt!");
    800015bc:	00003517          	auipc	a0,0x3
    800015c0:	a8450513          	addi	a0,a0,-1404 # 80004040 <CONSOLE_STATUS+0x30>
    800015c4:	00000097          	auipc	ra,0x0
    800015c8:	21c080e7          	jalr	540(ra) # 800017e0 <_Z11printStringPKc>
    800015cc:	fd9ff06f          	j	800015a4 <_ZN5Riscv11trapHandlerEv+0x114>

00000000800015d0 <_ZN15MemoryAllocator8allocateEm>:
Block *MemoryAllocator::free_list = nullptr;
Block *MemoryAllocator::allocated_list = nullptr;


// Allocate memory
void *MemoryAllocator::allocate(size_t size) {
    800015d0:	ff010113          	addi	sp,sp,-16
    800015d4:	00813423          	sd	s0,8(sp)
    800015d8:	01010413          	addi	s0,sp,16
    800015dc:	00050613          	mv	a2,a0
    size_t sizeToAllocate = size * MEM_BLOCK_SIZE;
    800015e0:	00651713          	slli	a4,a0,0x6

    Block *prev = nullptr;
    Block *current = free_list;
    800015e4:	00003517          	auipc	a0,0x3
    800015e8:	f8453503          	ld	a0,-124(a0) # 80004568 <_ZN15MemoryAllocator9free_listE>
    Block *prev = nullptr;
    800015ec:	00000693          	li	a3,0

    // Find a free block that is large enough
    while (current != nullptr) {
    800015f0:	06050e63          	beqz	a0,8000166c <_ZN15MemoryAllocator8allocateEm+0x9c>

        if (current->size >= sizeToAllocate) {
    800015f4:	00053783          	ld	a5,0(a0)
    800015f8:	00e7f863          	bgeu	a5,a4,80001608 <_ZN15MemoryAllocator8allocateEm+0x38>
            // Return the memory

            void *userPtr = (Block *) ((uint64 *) current + sizeof(Block));
            return userPtr;
        }
        prev = current;
    800015fc:	00050693          	mv	a3,a0
        current = current->next;
    80001600:	00853503          	ld	a0,8(a0)
    while (current != nullptr) {
    80001604:	fedff06f          	j	800015f0 <_ZN15MemoryAllocator8allocateEm+0x20>
            if (prev == nullptr) {
    80001608:	06068863          	beqz	a3,80001678 <_ZN15MemoryAllocator8allocateEm+0xa8>
                prev->next = current->next;
    8000160c:	00853783          	ld	a5,8(a0)
    80001610:	00f6b423          	sd	a5,8(a3)
            if (current->size - sizeToAllocate >= MEM_BLOCK_SIZE) {
    80001614:	00053783          	ld	a5,0(a0)
    80001618:	40e787b3          	sub	a5,a5,a4
    8000161c:	03f00593          	li	a1,63
    80001620:	02f5f863          	bgeu	a1,a5,80001650 <_ZN15MemoryAllocator8allocateEm+0x80>
                Block *newBlock = (Block *) ((uint64 *) current + sizeToAllocate);
    80001624:	00961613          	slli	a2,a2,0x9
    80001628:	00c50633          	add	a2,a0,a2
                newBlock->size = current->size - sizeToAllocate;
    8000162c:	00f63023          	sd	a5,0(a2)
                current->size = sizeToAllocate;
    80001630:	00e53023          	sd	a4,0(a0)
                if (!free_list) {
    80001634:	00003797          	auipc	a5,0x3
    80001638:	f347b783          	ld	a5,-204(a5) # 80004568 <_ZN15MemoryAllocator9free_listE>
    8000163c:	04078663          	beqz	a5,80001688 <_ZN15MemoryAllocator8allocateEm+0xb8>
                } else if (!prev) {
    80001640:	04068c63          	beqz	a3,80001698 <_ZN15MemoryAllocator8allocateEm+0xc8>
                    prev->next = newBlock;
    80001644:	00c6b423          	sd	a2,8(a3)
                    newBlock->next = current->next;
    80001648:	00853783          	ld	a5,8(a0)
    8000164c:	00f63423          	sd	a5,8(a2)
            if (!allocated_list) {
    80001650:	00003797          	auipc	a5,0x3
    80001654:	f207b783          	ld	a5,-224(a5) # 80004570 <_ZN15MemoryAllocator14allocated_listE>
    80001658:	04078863          	beqz	a5,800016a8 <_ZN15MemoryAllocator8allocateEm+0xd8>
                current->next = allocated_list;
    8000165c:	00f53423          	sd	a5,8(a0)
                allocated_list = current;
    80001660:	00003797          	auipc	a5,0x3
    80001664:	f0a7b823          	sd	a0,-240(a5) # 80004570 <_ZN15MemoryAllocator14allocated_listE>
            void *userPtr = (Block *) ((uint64 *) current + sizeof(Block));
    80001668:	08050513          	addi	a0,a0,128
    }

    // No block was found
    return nullptr;
}
    8000166c:	00813403          	ld	s0,8(sp)
    80001670:	01010113          	addi	sp,sp,16
    80001674:	00008067          	ret
                free_list = current->next;
    80001678:	00853783          	ld	a5,8(a0)
    8000167c:	00003597          	auipc	a1,0x3
    80001680:	eef5b623          	sd	a5,-276(a1) # 80004568 <_ZN15MemoryAllocator9free_listE>
    80001684:	f91ff06f          	j	80001614 <_ZN15MemoryAllocator8allocateEm+0x44>
                    free_list = newBlock;
    80001688:	00003797          	auipc	a5,0x3
    8000168c:	eec7b023          	sd	a2,-288(a5) # 80004568 <_ZN15MemoryAllocator9free_listE>
                    newBlock->next = nullptr;
    80001690:	00063423          	sd	zero,8(a2)
    80001694:	fbdff06f          	j	80001650 <_ZN15MemoryAllocator8allocateEm+0x80>
                    newBlock->next = free_list;
    80001698:	00f63423          	sd	a5,8(a2)
                    free_list = newBlock;
    8000169c:	00003797          	auipc	a5,0x3
    800016a0:	ecc7b623          	sd	a2,-308(a5) # 80004568 <_ZN15MemoryAllocator9free_listE>
    800016a4:	fadff06f          	j	80001650 <_ZN15MemoryAllocator8allocateEm+0x80>
                allocated_list = current;
    800016a8:	00003797          	auipc	a5,0x3
    800016ac:	eca7b423          	sd	a0,-312(a5) # 80004570 <_ZN15MemoryAllocator14allocated_listE>
                allocated_list->next = nullptr;
    800016b0:	00053423          	sd	zero,8(a0)
    800016b4:	fb5ff06f          	j	80001668 <_ZN15MemoryAllocator8allocateEm+0x98>

00000000800016b8 <_ZN15MemoryAllocator10deallocateEPv>:

// Deallocate memory
int MemoryAllocator::deallocate(void *ptr) {
    800016b8:	ff010113          	addi	sp,sp,-16
    800016bc:	00813423          	sd	s0,8(sp)
    800016c0:	01010413          	addi	s0,sp,16
    Block *block = (Block *) ((uint64 *) ptr - sizeof(Block));
    800016c4:	f8050713          	addi	a4,a0,-128
    Block *tmpPrev = nullptr;
    Block *tmp = allocated_list;
    800016c8:	00003797          	auipc	a5,0x3
    800016cc:	ea87b783          	ld	a5,-344(a5) # 80004570 <_ZN15MemoryAllocator14allocated_listE>
    Block *tmpPrev = nullptr;
    800016d0:	00000693          	li	a3,0
    uint8 flag = 0;

    //Check if the block given was previously allocated
    while (tmp) {
    800016d4:	00078a63          	beqz	a5,800016e8 <_ZN15MemoryAllocator10deallocateEPv+0x30>
        if (tmp == block) {
    800016d8:	04e78263          	beq	a5,a4,8000171c <_ZN15MemoryAllocator10deallocateEPv+0x64>
            flag = 1;
            break;
        }
        tmpPrev = tmp;
    800016dc:	00078693          	mv	a3,a5
        tmp = tmp->next;
    800016e0:	0087b783          	ld	a5,8(a5)
    while (tmp) {
    800016e4:	ff1ff06f          	j	800016d4 <_ZN15MemoryAllocator10deallocateEPv+0x1c>
    uint8 flag = 0;
    800016e8:	00000613          	li	a2,0
    }
    if (flag == 0) return -1;
    800016ec:	0e060263          	beqz	a2,800017d0 <_ZN15MemoryAllocator10deallocateEPv+0x118>

    // Found a block, remove it from the allocated list
    if (tmpPrev != nullptr) {
    800016f0:	02068a63          	beqz	a3,80001724 <_ZN15MemoryAllocator10deallocateEPv+0x6c>
        tmpPrev->next = tmp->next;
    800016f4:	0087b783          	ld	a5,8(a5)
    800016f8:	00f6b423          	sd	a5,8(a3)
        allocated_list = tmp->next;
    }


    Block *prev = nullptr;
    Block *current = free_list;
    800016fc:	00003797          	auipc	a5,0x3
    80001700:	e6c7b783          	ld	a5,-404(a5) # 80004568 <_ZN15MemoryAllocator9free_listE>
    Block *prev = nullptr;
    80001704:	00000693          	li	a3,0

    // Add it to the free_list
    while (current != nullptr) {
    80001708:	02078c63          	beqz	a5,80001740 <_ZN15MemoryAllocator10deallocateEPv+0x88>
        if ((uint64 *) block < (uint64 *) current) {
    8000170c:	02f76463          	bltu	a4,a5,80001734 <_ZN15MemoryAllocator10deallocateEPv+0x7c>
            } else {
                free_list = block;
            }
            break;
        }
        prev = current;
    80001710:	00078693          	mv	a3,a5
        current = current->next;
    80001714:	0087b783          	ld	a5,8(a5)
    while (current != nullptr) {
    80001718:	ff1ff06f          	j	80001708 <_ZN15MemoryAllocator10deallocateEPv+0x50>
            flag = 1;
    8000171c:	00100613          	li	a2,1
    80001720:	fcdff06f          	j	800016ec <_ZN15MemoryAllocator10deallocateEPv+0x34>
        allocated_list = tmp->next;
    80001724:	0087b783          	ld	a5,8(a5)
    80001728:	00003697          	auipc	a3,0x3
    8000172c:	e4f6b423          	sd	a5,-440(a3) # 80004570 <_ZN15MemoryAllocator14allocated_listE>
    80001730:	fcdff06f          	j	800016fc <_ZN15MemoryAllocator10deallocateEPv+0x44>
            block->next = current;
    80001734:	f8f53423          	sd	a5,-120(a0)
            if (prev != nullptr) {
    80001738:	04068463          	beqz	a3,80001780 <_ZN15MemoryAllocator10deallocateEPv+0xc8>
                prev->next = block;
    8000173c:	00e6b423          	sd	a4,8(a3)
    }
    if (current == nullptr) {
    80001740:	04078663          	beqz	a5,8000178c <_ZN15MemoryAllocator10deallocateEPv+0xd4>
        //current = block;
        block->next = nullptr;
    }

    //Merge it with neighbour blocks if possible
    if (prev != nullptr) {
    80001744:	00068a63          	beqz	a3,80001758 <_ZN15MemoryAllocator10deallocateEPv+0xa0>
        if ((uint64 *) prev + prev->size == (uint64 *) block) {
    80001748:	0006b603          	ld	a2,0(a3)
    8000174c:	00361793          	slli	a5,a2,0x3
    80001750:	00f687b3          	add	a5,a3,a5
    80001754:	04e78263          	beq	a5,a4,80001798 <_ZN15MemoryAllocator10deallocateEPv+0xe0>
            prev->size = prev->size + block->size;
            prev->next = block->next;
            block = prev;
        }
    }
    if (block->next != nullptr) {
    80001758:	00873783          	ld	a5,8(a4)
    8000175c:	06078e63          	beqz	a5,800017d8 <_ZN15MemoryAllocator10deallocateEPv+0x120>
        if ((uint64 *) block + block->size == (uint64 *) block->next) {
    80001760:	00073603          	ld	a2,0(a4)
    80001764:	00361693          	slli	a3,a2,0x3
    80001768:	00d706b3          	add	a3,a4,a3
    8000176c:	04d78463          	beq	a5,a3,800017b4 <_ZN15MemoryAllocator10deallocateEPv+0xfc>
            block->size += block->next->size;
            block->next = block->next->next;
        }
    }

    return 0;
    80001770:	00000513          	li	a0,0

}
    80001774:	00813403          	ld	s0,8(sp)
    80001778:	01010113          	addi	sp,sp,16
    8000177c:	00008067          	ret
                free_list = block;
    80001780:	00003617          	auipc	a2,0x3
    80001784:	dee63423          	sd	a4,-536(a2) # 80004568 <_ZN15MemoryAllocator9free_listE>
    80001788:	fb9ff06f          	j	80001740 <_ZN15MemoryAllocator10deallocateEPv+0x88>
        prev->next = block;
    8000178c:	00e6b423          	sd	a4,8(a3)
        block->next = nullptr;
    80001790:	f8053423          	sd	zero,-120(a0)
    80001794:	fb1ff06f          	j	80001744 <_ZN15MemoryAllocator10deallocateEPv+0x8c>
            prev->size = prev->size + block->size;
    80001798:	f8053783          	ld	a5,-128(a0)
    8000179c:	00f60633          	add	a2,a2,a5
    800017a0:	00c6b023          	sd	a2,0(a3)
            prev->next = block->next;
    800017a4:	f8853783          	ld	a5,-120(a0)
    800017a8:	00f6b423          	sd	a5,8(a3)
            block = prev;
    800017ac:	00068713          	mv	a4,a3
    800017b0:	fa9ff06f          	j	80001758 <_ZN15MemoryAllocator10deallocateEPv+0xa0>
            block->size += block->next->size;
    800017b4:	0007b683          	ld	a3,0(a5)
    800017b8:	00d60633          	add	a2,a2,a3
    800017bc:	00c73023          	sd	a2,0(a4)
            block->next = block->next->next;
    800017c0:	0087b783          	ld	a5,8(a5)
    800017c4:	00f73423          	sd	a5,8(a4)
    return 0;
    800017c8:	00000513          	li	a0,0
    800017cc:	fa9ff06f          	j	80001774 <_ZN15MemoryAllocator10deallocateEPv+0xbc>
    if (flag == 0) return -1;
    800017d0:	fff00513          	li	a0,-1
    800017d4:	fa1ff06f          	j	80001774 <_ZN15MemoryAllocator10deallocateEPv+0xbc>
    return 0;
    800017d8:	00000513          	li	a0,0
    800017dc:	f99ff06f          	j	80001774 <_ZN15MemoryAllocator10deallocateEPv+0xbc>

00000000800017e0 <_Z11printStringPKc>:
#include "../h/print.hpp"

void printString(char const *string)
{
    800017e0:	fe010113          	addi	sp,sp,-32
    800017e4:	00113c23          	sd	ra,24(sp)
    800017e8:	00813823          	sd	s0,16(sp)
    800017ec:	00913423          	sd	s1,8(sp)
    800017f0:	02010413          	addi	s0,sp,32
    800017f4:	00050493          	mv	s1,a0
    while (*string != '\0')
    800017f8:	0004c503          	lbu	a0,0(s1)
    800017fc:	00050a63          	beqz	a0,80001810 <_Z11printStringPKc+0x30>
    {
        __putc(*string);
    80001800:	00002097          	auipc	ra,0x2
    80001804:	17c080e7          	jalr	380(ra) # 8000397c <__putc>
        string++;
    80001808:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    8000180c:	fedff06f          	j	800017f8 <_Z11printStringPKc+0x18>
    }
}
    80001810:	01813083          	ld	ra,24(sp)
    80001814:	01013403          	ld	s0,16(sp)
    80001818:	00813483          	ld	s1,8(sp)
    8000181c:	02010113          	addi	sp,sp,32
    80001820:	00008067          	ret

0000000080001824 <_Z12printIntegerm>:

void printInteger(uint64 integer)
{
    80001824:	fd010113          	addi	sp,sp,-48
    80001828:	02113423          	sd	ra,40(sp)
    8000182c:	02813023          	sd	s0,32(sp)
    80001830:	00913c23          	sd	s1,24(sp)
    80001834:	03010413          	addi	s0,sp,48
    {
        neg = 1;
        x = -integer;
    } else
    {
        x = integer;
    80001838:	0005051b          	sext.w	a0,a0
    }

    i = 0;
    8000183c:	00000493          	li	s1,0
    do
    {
        buf[i++] = digits[x % 10];
    80001840:	00a00613          	li	a2,10
    80001844:	02c5773b          	remuw	a4,a0,a2
    80001848:	02071693          	slli	a3,a4,0x20
    8000184c:	0206d693          	srli	a3,a3,0x20
    80001850:	00003717          	auipc	a4,0x3
    80001854:	81070713          	addi	a4,a4,-2032 # 80004060 <_ZZ12printIntegermE6digits>
    80001858:	00d70733          	add	a4,a4,a3
    8000185c:	00074703          	lbu	a4,0(a4)
    80001860:	fe040693          	addi	a3,s0,-32
    80001864:	009687b3          	add	a5,a3,s1
    80001868:	0014849b          	addiw	s1,s1,1
    8000186c:	fee78823          	sb	a4,-16(a5)
    } while ((x /= 10) != 0);
    80001870:	0005071b          	sext.w	a4,a0
    80001874:	02c5553b          	divuw	a0,a0,a2
    80001878:	00900793          	li	a5,9
    8000187c:	fce7e2e3          	bltu	a5,a4,80001840 <_Z12printIntegerm+0x1c>
    if (neg)
        buf[i++] = '-';

    while (--i >= 0)
    80001880:	fff4849b          	addiw	s1,s1,-1
    80001884:	0004ce63          	bltz	s1,800018a0 <_Z12printIntegerm+0x7c>
        __putc(buf[i]);
    80001888:	fe040793          	addi	a5,s0,-32
    8000188c:	009787b3          	add	a5,a5,s1
    80001890:	ff07c503          	lbu	a0,-16(a5)
    80001894:	00002097          	auipc	ra,0x2
    80001898:	0e8080e7          	jalr	232(ra) # 8000397c <__putc>
    8000189c:	fe5ff06f          	j	80001880 <_Z12printIntegerm+0x5c>
    800018a0:	02813083          	ld	ra,40(sp)
    800018a4:	02013403          	ld	s0,32(sp)
    800018a8:	01813483          	ld	s1,24(sp)
    800018ac:	03010113          	addi	sp,sp,48
    800018b0:	00008067          	ret

00000000800018b4 <start>:
    800018b4:	ff010113          	addi	sp,sp,-16
    800018b8:	00813423          	sd	s0,8(sp)
    800018bc:	01010413          	addi	s0,sp,16
    800018c0:	300027f3          	csrr	a5,mstatus
    800018c4:	ffffe737          	lui	a4,0xffffe
    800018c8:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff902f>
    800018cc:	00e7f7b3          	and	a5,a5,a4
    800018d0:	00001737          	lui	a4,0x1
    800018d4:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    800018d8:	00e7e7b3          	or	a5,a5,a4
    800018dc:	30079073          	csrw	mstatus,a5
    800018e0:	00000797          	auipc	a5,0x0
    800018e4:	16078793          	addi	a5,a5,352 # 80001a40 <system_main>
    800018e8:	34179073          	csrw	mepc,a5
    800018ec:	00000793          	li	a5,0
    800018f0:	18079073          	csrw	satp,a5
    800018f4:	000107b7          	lui	a5,0x10
    800018f8:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800018fc:	30279073          	csrw	medeleg,a5
    80001900:	30379073          	csrw	mideleg,a5
    80001904:	104027f3          	csrr	a5,sie
    80001908:	2227e793          	ori	a5,a5,546
    8000190c:	10479073          	csrw	sie,a5
    80001910:	fff00793          	li	a5,-1
    80001914:	00a7d793          	srli	a5,a5,0xa
    80001918:	3b079073          	csrw	pmpaddr0,a5
    8000191c:	00f00793          	li	a5,15
    80001920:	3a079073          	csrw	pmpcfg0,a5
    80001924:	f14027f3          	csrr	a5,mhartid
    80001928:	0200c737          	lui	a4,0x200c
    8000192c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80001930:	0007869b          	sext.w	a3,a5
    80001934:	00269713          	slli	a4,a3,0x2
    80001938:	000f4637          	lui	a2,0xf4
    8000193c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80001940:	00d70733          	add	a4,a4,a3
    80001944:	0037979b          	slliw	a5,a5,0x3
    80001948:	020046b7          	lui	a3,0x2004
    8000194c:	00d787b3          	add	a5,a5,a3
    80001950:	00c585b3          	add	a1,a1,a2
    80001954:	00371693          	slli	a3,a4,0x3
    80001958:	00003717          	auipc	a4,0x3
    8000195c:	c2870713          	addi	a4,a4,-984 # 80004580 <timer_scratch>
    80001960:	00b7b023          	sd	a1,0(a5)
    80001964:	00d70733          	add	a4,a4,a3
    80001968:	00f73c23          	sd	a5,24(a4)
    8000196c:	02c73023          	sd	a2,32(a4)
    80001970:	34071073          	csrw	mscratch,a4
    80001974:	00000797          	auipc	a5,0x0
    80001978:	6ec78793          	addi	a5,a5,1772 # 80002060 <timervec>
    8000197c:	30579073          	csrw	mtvec,a5
    80001980:	300027f3          	csrr	a5,mstatus
    80001984:	0087e793          	ori	a5,a5,8
    80001988:	30079073          	csrw	mstatus,a5
    8000198c:	304027f3          	csrr	a5,mie
    80001990:	0807e793          	ori	a5,a5,128
    80001994:	30479073          	csrw	mie,a5
    80001998:	f14027f3          	csrr	a5,mhartid
    8000199c:	0007879b          	sext.w	a5,a5
    800019a0:	00078213          	mv	tp,a5
    800019a4:	30200073          	mret
    800019a8:	00813403          	ld	s0,8(sp)
    800019ac:	01010113          	addi	sp,sp,16
    800019b0:	00008067          	ret

00000000800019b4 <timerinit>:
    800019b4:	ff010113          	addi	sp,sp,-16
    800019b8:	00813423          	sd	s0,8(sp)
    800019bc:	01010413          	addi	s0,sp,16
    800019c0:	f14027f3          	csrr	a5,mhartid
    800019c4:	0200c737          	lui	a4,0x200c
    800019c8:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800019cc:	0007869b          	sext.w	a3,a5
    800019d0:	00269713          	slli	a4,a3,0x2
    800019d4:	000f4637          	lui	a2,0xf4
    800019d8:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800019dc:	00d70733          	add	a4,a4,a3
    800019e0:	0037979b          	slliw	a5,a5,0x3
    800019e4:	020046b7          	lui	a3,0x2004
    800019e8:	00d787b3          	add	a5,a5,a3
    800019ec:	00c585b3          	add	a1,a1,a2
    800019f0:	00371693          	slli	a3,a4,0x3
    800019f4:	00003717          	auipc	a4,0x3
    800019f8:	b8c70713          	addi	a4,a4,-1140 # 80004580 <timer_scratch>
    800019fc:	00b7b023          	sd	a1,0(a5)
    80001a00:	00d70733          	add	a4,a4,a3
    80001a04:	00f73c23          	sd	a5,24(a4)
    80001a08:	02c73023          	sd	a2,32(a4)
    80001a0c:	34071073          	csrw	mscratch,a4
    80001a10:	00000797          	auipc	a5,0x0
    80001a14:	65078793          	addi	a5,a5,1616 # 80002060 <timervec>
    80001a18:	30579073          	csrw	mtvec,a5
    80001a1c:	300027f3          	csrr	a5,mstatus
    80001a20:	0087e793          	ori	a5,a5,8
    80001a24:	30079073          	csrw	mstatus,a5
    80001a28:	304027f3          	csrr	a5,mie
    80001a2c:	0807e793          	ori	a5,a5,128
    80001a30:	30479073          	csrw	mie,a5
    80001a34:	00813403          	ld	s0,8(sp)
    80001a38:	01010113          	addi	sp,sp,16
    80001a3c:	00008067          	ret

0000000080001a40 <system_main>:
    80001a40:	fe010113          	addi	sp,sp,-32
    80001a44:	00813823          	sd	s0,16(sp)
    80001a48:	00913423          	sd	s1,8(sp)
    80001a4c:	00113c23          	sd	ra,24(sp)
    80001a50:	02010413          	addi	s0,sp,32
    80001a54:	00000097          	auipc	ra,0x0
    80001a58:	0c4080e7          	jalr	196(ra) # 80001b18 <cpuid>
    80001a5c:	00003497          	auipc	s1,0x3
    80001a60:	ad448493          	addi	s1,s1,-1324 # 80004530 <started>
    80001a64:	02050263          	beqz	a0,80001a88 <system_main+0x48>
    80001a68:	0004a783          	lw	a5,0(s1)
    80001a6c:	0007879b          	sext.w	a5,a5
    80001a70:	fe078ce3          	beqz	a5,80001a68 <system_main+0x28>
    80001a74:	0ff0000f          	fence
    80001a78:	00002517          	auipc	a0,0x2
    80001a7c:	62850513          	addi	a0,a0,1576 # 800040a0 <_ZZ12printIntegermE6digits+0x40>
    80001a80:	00001097          	auipc	ra,0x1
    80001a84:	a7c080e7          	jalr	-1412(ra) # 800024fc <panic>
    80001a88:	00001097          	auipc	ra,0x1
    80001a8c:	9d0080e7          	jalr	-1584(ra) # 80002458 <consoleinit>
    80001a90:	00001097          	auipc	ra,0x1
    80001a94:	15c080e7          	jalr	348(ra) # 80002bec <printfinit>
    80001a98:	00002517          	auipc	a0,0x2
    80001a9c:	5a050513          	addi	a0,a0,1440 # 80004038 <CONSOLE_STATUS+0x28>
    80001aa0:	00001097          	auipc	ra,0x1
    80001aa4:	ab8080e7          	jalr	-1352(ra) # 80002558 <__printf>
    80001aa8:	00002517          	auipc	a0,0x2
    80001aac:	5c850513          	addi	a0,a0,1480 # 80004070 <_ZZ12printIntegermE6digits+0x10>
    80001ab0:	00001097          	auipc	ra,0x1
    80001ab4:	aa8080e7          	jalr	-1368(ra) # 80002558 <__printf>
    80001ab8:	00002517          	auipc	a0,0x2
    80001abc:	58050513          	addi	a0,a0,1408 # 80004038 <CONSOLE_STATUS+0x28>
    80001ac0:	00001097          	auipc	ra,0x1
    80001ac4:	a98080e7          	jalr	-1384(ra) # 80002558 <__printf>
    80001ac8:	00001097          	auipc	ra,0x1
    80001acc:	4b0080e7          	jalr	1200(ra) # 80002f78 <kinit>
    80001ad0:	00000097          	auipc	ra,0x0
    80001ad4:	148080e7          	jalr	328(ra) # 80001c18 <trapinit>
    80001ad8:	00000097          	auipc	ra,0x0
    80001adc:	16c080e7          	jalr	364(ra) # 80001c44 <trapinithart>
    80001ae0:	00000097          	auipc	ra,0x0
    80001ae4:	5c0080e7          	jalr	1472(ra) # 800020a0 <plicinit>
    80001ae8:	00000097          	auipc	ra,0x0
    80001aec:	5e0080e7          	jalr	1504(ra) # 800020c8 <plicinithart>
    80001af0:	00000097          	auipc	ra,0x0
    80001af4:	078080e7          	jalr	120(ra) # 80001b68 <userinit>
    80001af8:	0ff0000f          	fence
    80001afc:	00100793          	li	a5,1
    80001b00:	00002517          	auipc	a0,0x2
    80001b04:	58850513          	addi	a0,a0,1416 # 80004088 <_ZZ12printIntegermE6digits+0x28>
    80001b08:	00f4a023          	sw	a5,0(s1)
    80001b0c:	00001097          	auipc	ra,0x1
    80001b10:	a4c080e7          	jalr	-1460(ra) # 80002558 <__printf>
    80001b14:	0000006f          	j	80001b14 <system_main+0xd4>

0000000080001b18 <cpuid>:
    80001b18:	ff010113          	addi	sp,sp,-16
    80001b1c:	00813423          	sd	s0,8(sp)
    80001b20:	01010413          	addi	s0,sp,16
    80001b24:	00020513          	mv	a0,tp
    80001b28:	00813403          	ld	s0,8(sp)
    80001b2c:	0005051b          	sext.w	a0,a0
    80001b30:	01010113          	addi	sp,sp,16
    80001b34:	00008067          	ret

0000000080001b38 <mycpu>:
    80001b38:	ff010113          	addi	sp,sp,-16
    80001b3c:	00813423          	sd	s0,8(sp)
    80001b40:	01010413          	addi	s0,sp,16
    80001b44:	00020793          	mv	a5,tp
    80001b48:	00813403          	ld	s0,8(sp)
    80001b4c:	0007879b          	sext.w	a5,a5
    80001b50:	00779793          	slli	a5,a5,0x7
    80001b54:	00004517          	auipc	a0,0x4
    80001b58:	a5c50513          	addi	a0,a0,-1444 # 800055b0 <cpus>
    80001b5c:	00f50533          	add	a0,a0,a5
    80001b60:	01010113          	addi	sp,sp,16
    80001b64:	00008067          	ret

0000000080001b68 <userinit>:
    80001b68:	ff010113          	addi	sp,sp,-16
    80001b6c:	00813423          	sd	s0,8(sp)
    80001b70:	01010413          	addi	s0,sp,16
    80001b74:	00813403          	ld	s0,8(sp)
    80001b78:	01010113          	addi	sp,sp,16
    80001b7c:	fffff317          	auipc	t1,0xfffff
    80001b80:	67430067          	jr	1652(t1) # 800011f0 <main>

0000000080001b84 <either_copyout>:
    80001b84:	ff010113          	addi	sp,sp,-16
    80001b88:	00813023          	sd	s0,0(sp)
    80001b8c:	00113423          	sd	ra,8(sp)
    80001b90:	01010413          	addi	s0,sp,16
    80001b94:	02051663          	bnez	a0,80001bc0 <either_copyout+0x3c>
    80001b98:	00058513          	mv	a0,a1
    80001b9c:	00060593          	mv	a1,a2
    80001ba0:	0006861b          	sext.w	a2,a3
    80001ba4:	00002097          	auipc	ra,0x2
    80001ba8:	c60080e7          	jalr	-928(ra) # 80003804 <__memmove>
    80001bac:	00813083          	ld	ra,8(sp)
    80001bb0:	00013403          	ld	s0,0(sp)
    80001bb4:	00000513          	li	a0,0
    80001bb8:	01010113          	addi	sp,sp,16
    80001bbc:	00008067          	ret
    80001bc0:	00002517          	auipc	a0,0x2
    80001bc4:	50850513          	addi	a0,a0,1288 # 800040c8 <_ZZ12printIntegermE6digits+0x68>
    80001bc8:	00001097          	auipc	ra,0x1
    80001bcc:	934080e7          	jalr	-1740(ra) # 800024fc <panic>

0000000080001bd0 <either_copyin>:
    80001bd0:	ff010113          	addi	sp,sp,-16
    80001bd4:	00813023          	sd	s0,0(sp)
    80001bd8:	00113423          	sd	ra,8(sp)
    80001bdc:	01010413          	addi	s0,sp,16
    80001be0:	02059463          	bnez	a1,80001c08 <either_copyin+0x38>
    80001be4:	00060593          	mv	a1,a2
    80001be8:	0006861b          	sext.w	a2,a3
    80001bec:	00002097          	auipc	ra,0x2
    80001bf0:	c18080e7          	jalr	-1000(ra) # 80003804 <__memmove>
    80001bf4:	00813083          	ld	ra,8(sp)
    80001bf8:	00013403          	ld	s0,0(sp)
    80001bfc:	00000513          	li	a0,0
    80001c00:	01010113          	addi	sp,sp,16
    80001c04:	00008067          	ret
    80001c08:	00002517          	auipc	a0,0x2
    80001c0c:	4e850513          	addi	a0,a0,1256 # 800040f0 <_ZZ12printIntegermE6digits+0x90>
    80001c10:	00001097          	auipc	ra,0x1
    80001c14:	8ec080e7          	jalr	-1812(ra) # 800024fc <panic>

0000000080001c18 <trapinit>:
    80001c18:	ff010113          	addi	sp,sp,-16
    80001c1c:	00813423          	sd	s0,8(sp)
    80001c20:	01010413          	addi	s0,sp,16
    80001c24:	00813403          	ld	s0,8(sp)
    80001c28:	00002597          	auipc	a1,0x2
    80001c2c:	4f058593          	addi	a1,a1,1264 # 80004118 <_ZZ12printIntegermE6digits+0xb8>
    80001c30:	00004517          	auipc	a0,0x4
    80001c34:	a0050513          	addi	a0,a0,-1536 # 80005630 <tickslock>
    80001c38:	01010113          	addi	sp,sp,16
    80001c3c:	00001317          	auipc	t1,0x1
    80001c40:	5cc30067          	jr	1484(t1) # 80003208 <initlock>

0000000080001c44 <trapinithart>:
    80001c44:	ff010113          	addi	sp,sp,-16
    80001c48:	00813423          	sd	s0,8(sp)
    80001c4c:	01010413          	addi	s0,sp,16
    80001c50:	00000797          	auipc	a5,0x0
    80001c54:	30078793          	addi	a5,a5,768 # 80001f50 <kernelvec>
    80001c58:	10579073          	csrw	stvec,a5
    80001c5c:	00813403          	ld	s0,8(sp)
    80001c60:	01010113          	addi	sp,sp,16
    80001c64:	00008067          	ret

0000000080001c68 <usertrap>:
    80001c68:	ff010113          	addi	sp,sp,-16
    80001c6c:	00813423          	sd	s0,8(sp)
    80001c70:	01010413          	addi	s0,sp,16
    80001c74:	00813403          	ld	s0,8(sp)
    80001c78:	01010113          	addi	sp,sp,16
    80001c7c:	00008067          	ret

0000000080001c80 <usertrapret>:
    80001c80:	ff010113          	addi	sp,sp,-16
    80001c84:	00813423          	sd	s0,8(sp)
    80001c88:	01010413          	addi	s0,sp,16
    80001c8c:	00813403          	ld	s0,8(sp)
    80001c90:	01010113          	addi	sp,sp,16
    80001c94:	00008067          	ret

0000000080001c98 <kerneltrap>:
    80001c98:	fe010113          	addi	sp,sp,-32
    80001c9c:	00813823          	sd	s0,16(sp)
    80001ca0:	00113c23          	sd	ra,24(sp)
    80001ca4:	00913423          	sd	s1,8(sp)
    80001ca8:	02010413          	addi	s0,sp,32
    80001cac:	142025f3          	csrr	a1,scause
    80001cb0:	100027f3          	csrr	a5,sstatus
    80001cb4:	0027f793          	andi	a5,a5,2
    80001cb8:	10079c63          	bnez	a5,80001dd0 <kerneltrap+0x138>
    80001cbc:	142027f3          	csrr	a5,scause
    80001cc0:	0207ce63          	bltz	a5,80001cfc <kerneltrap+0x64>
    80001cc4:	00002517          	auipc	a0,0x2
    80001cc8:	49c50513          	addi	a0,a0,1180 # 80004160 <_ZZ12printIntegermE6digits+0x100>
    80001ccc:	00001097          	auipc	ra,0x1
    80001cd0:	88c080e7          	jalr	-1908(ra) # 80002558 <__printf>
    80001cd4:	141025f3          	csrr	a1,sepc
    80001cd8:	14302673          	csrr	a2,stval
    80001cdc:	00002517          	auipc	a0,0x2
    80001ce0:	49450513          	addi	a0,a0,1172 # 80004170 <_ZZ12printIntegermE6digits+0x110>
    80001ce4:	00001097          	auipc	ra,0x1
    80001ce8:	874080e7          	jalr	-1932(ra) # 80002558 <__printf>
    80001cec:	00002517          	auipc	a0,0x2
    80001cf0:	49c50513          	addi	a0,a0,1180 # 80004188 <_ZZ12printIntegermE6digits+0x128>
    80001cf4:	00001097          	auipc	ra,0x1
    80001cf8:	808080e7          	jalr	-2040(ra) # 800024fc <panic>
    80001cfc:	0ff7f713          	andi	a4,a5,255
    80001d00:	00900693          	li	a3,9
    80001d04:	04d70063          	beq	a4,a3,80001d44 <kerneltrap+0xac>
    80001d08:	fff00713          	li	a4,-1
    80001d0c:	03f71713          	slli	a4,a4,0x3f
    80001d10:	00170713          	addi	a4,a4,1
    80001d14:	fae798e3          	bne	a5,a4,80001cc4 <kerneltrap+0x2c>
    80001d18:	00000097          	auipc	ra,0x0
    80001d1c:	e00080e7          	jalr	-512(ra) # 80001b18 <cpuid>
    80001d20:	06050663          	beqz	a0,80001d8c <kerneltrap+0xf4>
    80001d24:	144027f3          	csrr	a5,sip
    80001d28:	ffd7f793          	andi	a5,a5,-3
    80001d2c:	14479073          	csrw	sip,a5
    80001d30:	01813083          	ld	ra,24(sp)
    80001d34:	01013403          	ld	s0,16(sp)
    80001d38:	00813483          	ld	s1,8(sp)
    80001d3c:	02010113          	addi	sp,sp,32
    80001d40:	00008067          	ret
    80001d44:	00000097          	auipc	ra,0x0
    80001d48:	3d0080e7          	jalr	976(ra) # 80002114 <plic_claim>
    80001d4c:	00a00793          	li	a5,10
    80001d50:	00050493          	mv	s1,a0
    80001d54:	06f50863          	beq	a0,a5,80001dc4 <kerneltrap+0x12c>
    80001d58:	fc050ce3          	beqz	a0,80001d30 <kerneltrap+0x98>
    80001d5c:	00050593          	mv	a1,a0
    80001d60:	00002517          	auipc	a0,0x2
    80001d64:	3e050513          	addi	a0,a0,992 # 80004140 <_ZZ12printIntegermE6digits+0xe0>
    80001d68:	00000097          	auipc	ra,0x0
    80001d6c:	7f0080e7          	jalr	2032(ra) # 80002558 <__printf>
    80001d70:	01013403          	ld	s0,16(sp)
    80001d74:	01813083          	ld	ra,24(sp)
    80001d78:	00048513          	mv	a0,s1
    80001d7c:	00813483          	ld	s1,8(sp)
    80001d80:	02010113          	addi	sp,sp,32
    80001d84:	00000317          	auipc	t1,0x0
    80001d88:	3c830067          	jr	968(t1) # 8000214c <plic_complete>
    80001d8c:	00004517          	auipc	a0,0x4
    80001d90:	8a450513          	addi	a0,a0,-1884 # 80005630 <tickslock>
    80001d94:	00001097          	auipc	ra,0x1
    80001d98:	498080e7          	jalr	1176(ra) # 8000322c <acquire>
    80001d9c:	00002717          	auipc	a4,0x2
    80001da0:	79870713          	addi	a4,a4,1944 # 80004534 <ticks>
    80001da4:	00072783          	lw	a5,0(a4)
    80001da8:	00004517          	auipc	a0,0x4
    80001dac:	88850513          	addi	a0,a0,-1912 # 80005630 <tickslock>
    80001db0:	0017879b          	addiw	a5,a5,1
    80001db4:	00f72023          	sw	a5,0(a4)
    80001db8:	00001097          	auipc	ra,0x1
    80001dbc:	540080e7          	jalr	1344(ra) # 800032f8 <release>
    80001dc0:	f65ff06f          	j	80001d24 <kerneltrap+0x8c>
    80001dc4:	00001097          	auipc	ra,0x1
    80001dc8:	09c080e7          	jalr	156(ra) # 80002e60 <uartintr>
    80001dcc:	fa5ff06f          	j	80001d70 <kerneltrap+0xd8>
    80001dd0:	00002517          	auipc	a0,0x2
    80001dd4:	35050513          	addi	a0,a0,848 # 80004120 <_ZZ12printIntegermE6digits+0xc0>
    80001dd8:	00000097          	auipc	ra,0x0
    80001ddc:	724080e7          	jalr	1828(ra) # 800024fc <panic>

0000000080001de0 <clockintr>:
    80001de0:	fe010113          	addi	sp,sp,-32
    80001de4:	00813823          	sd	s0,16(sp)
    80001de8:	00913423          	sd	s1,8(sp)
    80001dec:	00113c23          	sd	ra,24(sp)
    80001df0:	02010413          	addi	s0,sp,32
    80001df4:	00004497          	auipc	s1,0x4
    80001df8:	83c48493          	addi	s1,s1,-1988 # 80005630 <tickslock>
    80001dfc:	00048513          	mv	a0,s1
    80001e00:	00001097          	auipc	ra,0x1
    80001e04:	42c080e7          	jalr	1068(ra) # 8000322c <acquire>
    80001e08:	00002717          	auipc	a4,0x2
    80001e0c:	72c70713          	addi	a4,a4,1836 # 80004534 <ticks>
    80001e10:	00072783          	lw	a5,0(a4)
    80001e14:	01013403          	ld	s0,16(sp)
    80001e18:	01813083          	ld	ra,24(sp)
    80001e1c:	00048513          	mv	a0,s1
    80001e20:	0017879b          	addiw	a5,a5,1
    80001e24:	00813483          	ld	s1,8(sp)
    80001e28:	00f72023          	sw	a5,0(a4)
    80001e2c:	02010113          	addi	sp,sp,32
    80001e30:	00001317          	auipc	t1,0x1
    80001e34:	4c830067          	jr	1224(t1) # 800032f8 <release>

0000000080001e38 <devintr>:
    80001e38:	142027f3          	csrr	a5,scause
    80001e3c:	00000513          	li	a0,0
    80001e40:	0007c463          	bltz	a5,80001e48 <devintr+0x10>
    80001e44:	00008067          	ret
    80001e48:	fe010113          	addi	sp,sp,-32
    80001e4c:	00813823          	sd	s0,16(sp)
    80001e50:	00113c23          	sd	ra,24(sp)
    80001e54:	00913423          	sd	s1,8(sp)
    80001e58:	02010413          	addi	s0,sp,32
    80001e5c:	0ff7f713          	andi	a4,a5,255
    80001e60:	00900693          	li	a3,9
    80001e64:	04d70c63          	beq	a4,a3,80001ebc <devintr+0x84>
    80001e68:	fff00713          	li	a4,-1
    80001e6c:	03f71713          	slli	a4,a4,0x3f
    80001e70:	00170713          	addi	a4,a4,1
    80001e74:	00e78c63          	beq	a5,a4,80001e8c <devintr+0x54>
    80001e78:	01813083          	ld	ra,24(sp)
    80001e7c:	01013403          	ld	s0,16(sp)
    80001e80:	00813483          	ld	s1,8(sp)
    80001e84:	02010113          	addi	sp,sp,32
    80001e88:	00008067          	ret
    80001e8c:	00000097          	auipc	ra,0x0
    80001e90:	c8c080e7          	jalr	-884(ra) # 80001b18 <cpuid>
    80001e94:	06050663          	beqz	a0,80001f00 <devintr+0xc8>
    80001e98:	144027f3          	csrr	a5,sip
    80001e9c:	ffd7f793          	andi	a5,a5,-3
    80001ea0:	14479073          	csrw	sip,a5
    80001ea4:	01813083          	ld	ra,24(sp)
    80001ea8:	01013403          	ld	s0,16(sp)
    80001eac:	00813483          	ld	s1,8(sp)
    80001eb0:	00200513          	li	a0,2
    80001eb4:	02010113          	addi	sp,sp,32
    80001eb8:	00008067          	ret
    80001ebc:	00000097          	auipc	ra,0x0
    80001ec0:	258080e7          	jalr	600(ra) # 80002114 <plic_claim>
    80001ec4:	00a00793          	li	a5,10
    80001ec8:	00050493          	mv	s1,a0
    80001ecc:	06f50663          	beq	a0,a5,80001f38 <devintr+0x100>
    80001ed0:	00100513          	li	a0,1
    80001ed4:	fa0482e3          	beqz	s1,80001e78 <devintr+0x40>
    80001ed8:	00048593          	mv	a1,s1
    80001edc:	00002517          	auipc	a0,0x2
    80001ee0:	26450513          	addi	a0,a0,612 # 80004140 <_ZZ12printIntegermE6digits+0xe0>
    80001ee4:	00000097          	auipc	ra,0x0
    80001ee8:	674080e7          	jalr	1652(ra) # 80002558 <__printf>
    80001eec:	00048513          	mv	a0,s1
    80001ef0:	00000097          	auipc	ra,0x0
    80001ef4:	25c080e7          	jalr	604(ra) # 8000214c <plic_complete>
    80001ef8:	00100513          	li	a0,1
    80001efc:	f7dff06f          	j	80001e78 <devintr+0x40>
    80001f00:	00003517          	auipc	a0,0x3
    80001f04:	73050513          	addi	a0,a0,1840 # 80005630 <tickslock>
    80001f08:	00001097          	auipc	ra,0x1
    80001f0c:	324080e7          	jalr	804(ra) # 8000322c <acquire>
    80001f10:	00002717          	auipc	a4,0x2
    80001f14:	62470713          	addi	a4,a4,1572 # 80004534 <ticks>
    80001f18:	00072783          	lw	a5,0(a4)
    80001f1c:	00003517          	auipc	a0,0x3
    80001f20:	71450513          	addi	a0,a0,1812 # 80005630 <tickslock>
    80001f24:	0017879b          	addiw	a5,a5,1
    80001f28:	00f72023          	sw	a5,0(a4)
    80001f2c:	00001097          	auipc	ra,0x1
    80001f30:	3cc080e7          	jalr	972(ra) # 800032f8 <release>
    80001f34:	f65ff06f          	j	80001e98 <devintr+0x60>
    80001f38:	00001097          	auipc	ra,0x1
    80001f3c:	f28080e7          	jalr	-216(ra) # 80002e60 <uartintr>
    80001f40:	fadff06f          	j	80001eec <devintr+0xb4>
	...

0000000080001f50 <kernelvec>:
    80001f50:	f0010113          	addi	sp,sp,-256
    80001f54:	00113023          	sd	ra,0(sp)
    80001f58:	00213423          	sd	sp,8(sp)
    80001f5c:	00313823          	sd	gp,16(sp)
    80001f60:	00413c23          	sd	tp,24(sp)
    80001f64:	02513023          	sd	t0,32(sp)
    80001f68:	02613423          	sd	t1,40(sp)
    80001f6c:	02713823          	sd	t2,48(sp)
    80001f70:	02813c23          	sd	s0,56(sp)
    80001f74:	04913023          	sd	s1,64(sp)
    80001f78:	04a13423          	sd	a0,72(sp)
    80001f7c:	04b13823          	sd	a1,80(sp)
    80001f80:	04c13c23          	sd	a2,88(sp)
    80001f84:	06d13023          	sd	a3,96(sp)
    80001f88:	06e13423          	sd	a4,104(sp)
    80001f8c:	06f13823          	sd	a5,112(sp)
    80001f90:	07013c23          	sd	a6,120(sp)
    80001f94:	09113023          	sd	a7,128(sp)
    80001f98:	09213423          	sd	s2,136(sp)
    80001f9c:	09313823          	sd	s3,144(sp)
    80001fa0:	09413c23          	sd	s4,152(sp)
    80001fa4:	0b513023          	sd	s5,160(sp)
    80001fa8:	0b613423          	sd	s6,168(sp)
    80001fac:	0b713823          	sd	s7,176(sp)
    80001fb0:	0b813c23          	sd	s8,184(sp)
    80001fb4:	0d913023          	sd	s9,192(sp)
    80001fb8:	0da13423          	sd	s10,200(sp)
    80001fbc:	0db13823          	sd	s11,208(sp)
    80001fc0:	0dc13c23          	sd	t3,216(sp)
    80001fc4:	0fd13023          	sd	t4,224(sp)
    80001fc8:	0fe13423          	sd	t5,232(sp)
    80001fcc:	0ff13823          	sd	t6,240(sp)
    80001fd0:	cc9ff0ef          	jal	ra,80001c98 <kerneltrap>
    80001fd4:	00013083          	ld	ra,0(sp)
    80001fd8:	00813103          	ld	sp,8(sp)
    80001fdc:	01013183          	ld	gp,16(sp)
    80001fe0:	02013283          	ld	t0,32(sp)
    80001fe4:	02813303          	ld	t1,40(sp)
    80001fe8:	03013383          	ld	t2,48(sp)
    80001fec:	03813403          	ld	s0,56(sp)
    80001ff0:	04013483          	ld	s1,64(sp)
    80001ff4:	04813503          	ld	a0,72(sp)
    80001ff8:	05013583          	ld	a1,80(sp)
    80001ffc:	05813603          	ld	a2,88(sp)
    80002000:	06013683          	ld	a3,96(sp)
    80002004:	06813703          	ld	a4,104(sp)
    80002008:	07013783          	ld	a5,112(sp)
    8000200c:	07813803          	ld	a6,120(sp)
    80002010:	08013883          	ld	a7,128(sp)
    80002014:	08813903          	ld	s2,136(sp)
    80002018:	09013983          	ld	s3,144(sp)
    8000201c:	09813a03          	ld	s4,152(sp)
    80002020:	0a013a83          	ld	s5,160(sp)
    80002024:	0a813b03          	ld	s6,168(sp)
    80002028:	0b013b83          	ld	s7,176(sp)
    8000202c:	0b813c03          	ld	s8,184(sp)
    80002030:	0c013c83          	ld	s9,192(sp)
    80002034:	0c813d03          	ld	s10,200(sp)
    80002038:	0d013d83          	ld	s11,208(sp)
    8000203c:	0d813e03          	ld	t3,216(sp)
    80002040:	0e013e83          	ld	t4,224(sp)
    80002044:	0e813f03          	ld	t5,232(sp)
    80002048:	0f013f83          	ld	t6,240(sp)
    8000204c:	10010113          	addi	sp,sp,256
    80002050:	10200073          	sret
    80002054:	00000013          	nop
    80002058:	00000013          	nop
    8000205c:	00000013          	nop

0000000080002060 <timervec>:
    80002060:	34051573          	csrrw	a0,mscratch,a0
    80002064:	00b53023          	sd	a1,0(a0)
    80002068:	00c53423          	sd	a2,8(a0)
    8000206c:	00d53823          	sd	a3,16(a0)
    80002070:	01853583          	ld	a1,24(a0)
    80002074:	02053603          	ld	a2,32(a0)
    80002078:	0005b683          	ld	a3,0(a1)
    8000207c:	00c686b3          	add	a3,a3,a2
    80002080:	00d5b023          	sd	a3,0(a1)
    80002084:	00200593          	li	a1,2
    80002088:	14459073          	csrw	sip,a1
    8000208c:	01053683          	ld	a3,16(a0)
    80002090:	00853603          	ld	a2,8(a0)
    80002094:	00053583          	ld	a1,0(a0)
    80002098:	34051573          	csrrw	a0,mscratch,a0
    8000209c:	30200073          	mret

00000000800020a0 <plicinit>:
    800020a0:	ff010113          	addi	sp,sp,-16
    800020a4:	00813423          	sd	s0,8(sp)
    800020a8:	01010413          	addi	s0,sp,16
    800020ac:	00813403          	ld	s0,8(sp)
    800020b0:	0c0007b7          	lui	a5,0xc000
    800020b4:	00100713          	li	a4,1
    800020b8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    800020bc:	00e7a223          	sw	a4,4(a5)
    800020c0:	01010113          	addi	sp,sp,16
    800020c4:	00008067          	ret

00000000800020c8 <plicinithart>:
    800020c8:	ff010113          	addi	sp,sp,-16
    800020cc:	00813023          	sd	s0,0(sp)
    800020d0:	00113423          	sd	ra,8(sp)
    800020d4:	01010413          	addi	s0,sp,16
    800020d8:	00000097          	auipc	ra,0x0
    800020dc:	a40080e7          	jalr	-1472(ra) # 80001b18 <cpuid>
    800020e0:	0085171b          	slliw	a4,a0,0x8
    800020e4:	0c0027b7          	lui	a5,0xc002
    800020e8:	00e787b3          	add	a5,a5,a4
    800020ec:	40200713          	li	a4,1026
    800020f0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    800020f4:	00813083          	ld	ra,8(sp)
    800020f8:	00013403          	ld	s0,0(sp)
    800020fc:	00d5151b          	slliw	a0,a0,0xd
    80002100:	0c2017b7          	lui	a5,0xc201
    80002104:	00a78533          	add	a0,a5,a0
    80002108:	00052023          	sw	zero,0(a0)
    8000210c:	01010113          	addi	sp,sp,16
    80002110:	00008067          	ret

0000000080002114 <plic_claim>:
    80002114:	ff010113          	addi	sp,sp,-16
    80002118:	00813023          	sd	s0,0(sp)
    8000211c:	00113423          	sd	ra,8(sp)
    80002120:	01010413          	addi	s0,sp,16
    80002124:	00000097          	auipc	ra,0x0
    80002128:	9f4080e7          	jalr	-1548(ra) # 80001b18 <cpuid>
    8000212c:	00813083          	ld	ra,8(sp)
    80002130:	00013403          	ld	s0,0(sp)
    80002134:	00d5151b          	slliw	a0,a0,0xd
    80002138:	0c2017b7          	lui	a5,0xc201
    8000213c:	00a78533          	add	a0,a5,a0
    80002140:	00452503          	lw	a0,4(a0)
    80002144:	01010113          	addi	sp,sp,16
    80002148:	00008067          	ret

000000008000214c <plic_complete>:
    8000214c:	fe010113          	addi	sp,sp,-32
    80002150:	00813823          	sd	s0,16(sp)
    80002154:	00913423          	sd	s1,8(sp)
    80002158:	00113c23          	sd	ra,24(sp)
    8000215c:	02010413          	addi	s0,sp,32
    80002160:	00050493          	mv	s1,a0
    80002164:	00000097          	auipc	ra,0x0
    80002168:	9b4080e7          	jalr	-1612(ra) # 80001b18 <cpuid>
    8000216c:	01813083          	ld	ra,24(sp)
    80002170:	01013403          	ld	s0,16(sp)
    80002174:	00d5179b          	slliw	a5,a0,0xd
    80002178:	0c201737          	lui	a4,0xc201
    8000217c:	00f707b3          	add	a5,a4,a5
    80002180:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80002184:	00813483          	ld	s1,8(sp)
    80002188:	02010113          	addi	sp,sp,32
    8000218c:	00008067          	ret

0000000080002190 <consolewrite>:
    80002190:	fb010113          	addi	sp,sp,-80
    80002194:	04813023          	sd	s0,64(sp)
    80002198:	04113423          	sd	ra,72(sp)
    8000219c:	02913c23          	sd	s1,56(sp)
    800021a0:	03213823          	sd	s2,48(sp)
    800021a4:	03313423          	sd	s3,40(sp)
    800021a8:	03413023          	sd	s4,32(sp)
    800021ac:	01513c23          	sd	s5,24(sp)
    800021b0:	05010413          	addi	s0,sp,80
    800021b4:	06c05c63          	blez	a2,8000222c <consolewrite+0x9c>
    800021b8:	00060993          	mv	s3,a2
    800021bc:	00050a13          	mv	s4,a0
    800021c0:	00058493          	mv	s1,a1
    800021c4:	00000913          	li	s2,0
    800021c8:	fff00a93          	li	s5,-1
    800021cc:	01c0006f          	j	800021e8 <consolewrite+0x58>
    800021d0:	fbf44503          	lbu	a0,-65(s0)
    800021d4:	0019091b          	addiw	s2,s2,1
    800021d8:	00148493          	addi	s1,s1,1
    800021dc:	00001097          	auipc	ra,0x1
    800021e0:	a9c080e7          	jalr	-1380(ra) # 80002c78 <uartputc>
    800021e4:	03298063          	beq	s3,s2,80002204 <consolewrite+0x74>
    800021e8:	00048613          	mv	a2,s1
    800021ec:	00100693          	li	a3,1
    800021f0:	000a0593          	mv	a1,s4
    800021f4:	fbf40513          	addi	a0,s0,-65
    800021f8:	00000097          	auipc	ra,0x0
    800021fc:	9d8080e7          	jalr	-1576(ra) # 80001bd0 <either_copyin>
    80002200:	fd5518e3          	bne	a0,s5,800021d0 <consolewrite+0x40>
    80002204:	04813083          	ld	ra,72(sp)
    80002208:	04013403          	ld	s0,64(sp)
    8000220c:	03813483          	ld	s1,56(sp)
    80002210:	02813983          	ld	s3,40(sp)
    80002214:	02013a03          	ld	s4,32(sp)
    80002218:	01813a83          	ld	s5,24(sp)
    8000221c:	00090513          	mv	a0,s2
    80002220:	03013903          	ld	s2,48(sp)
    80002224:	05010113          	addi	sp,sp,80
    80002228:	00008067          	ret
    8000222c:	00000913          	li	s2,0
    80002230:	fd5ff06f          	j	80002204 <consolewrite+0x74>

0000000080002234 <consoleread>:
    80002234:	f9010113          	addi	sp,sp,-112
    80002238:	06813023          	sd	s0,96(sp)
    8000223c:	04913c23          	sd	s1,88(sp)
    80002240:	05213823          	sd	s2,80(sp)
    80002244:	05313423          	sd	s3,72(sp)
    80002248:	05413023          	sd	s4,64(sp)
    8000224c:	03513c23          	sd	s5,56(sp)
    80002250:	03613823          	sd	s6,48(sp)
    80002254:	03713423          	sd	s7,40(sp)
    80002258:	03813023          	sd	s8,32(sp)
    8000225c:	06113423          	sd	ra,104(sp)
    80002260:	01913c23          	sd	s9,24(sp)
    80002264:	07010413          	addi	s0,sp,112
    80002268:	00060b93          	mv	s7,a2
    8000226c:	00050913          	mv	s2,a0
    80002270:	00058c13          	mv	s8,a1
    80002274:	00060b1b          	sext.w	s6,a2
    80002278:	00003497          	auipc	s1,0x3
    8000227c:	3d048493          	addi	s1,s1,976 # 80005648 <cons>
    80002280:	00400993          	li	s3,4
    80002284:	fff00a13          	li	s4,-1
    80002288:	00a00a93          	li	s5,10
    8000228c:	05705e63          	blez	s7,800022e8 <consoleread+0xb4>
    80002290:	09c4a703          	lw	a4,156(s1)
    80002294:	0984a783          	lw	a5,152(s1)
    80002298:	0007071b          	sext.w	a4,a4
    8000229c:	08e78463          	beq	a5,a4,80002324 <consoleread+0xf0>
    800022a0:	07f7f713          	andi	a4,a5,127
    800022a4:	00e48733          	add	a4,s1,a4
    800022a8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    800022ac:	0017869b          	addiw	a3,a5,1
    800022b0:	08d4ac23          	sw	a3,152(s1)
    800022b4:	00070c9b          	sext.w	s9,a4
    800022b8:	0b370663          	beq	a4,s3,80002364 <consoleread+0x130>
    800022bc:	00100693          	li	a3,1
    800022c0:	f9f40613          	addi	a2,s0,-97
    800022c4:	000c0593          	mv	a1,s8
    800022c8:	00090513          	mv	a0,s2
    800022cc:	f8e40fa3          	sb	a4,-97(s0)
    800022d0:	00000097          	auipc	ra,0x0
    800022d4:	8b4080e7          	jalr	-1868(ra) # 80001b84 <either_copyout>
    800022d8:	01450863          	beq	a0,s4,800022e8 <consoleread+0xb4>
    800022dc:	001c0c13          	addi	s8,s8,1
    800022e0:	fffb8b9b          	addiw	s7,s7,-1
    800022e4:	fb5c94e3          	bne	s9,s5,8000228c <consoleread+0x58>
    800022e8:	000b851b          	sext.w	a0,s7
    800022ec:	06813083          	ld	ra,104(sp)
    800022f0:	06013403          	ld	s0,96(sp)
    800022f4:	05813483          	ld	s1,88(sp)
    800022f8:	05013903          	ld	s2,80(sp)
    800022fc:	04813983          	ld	s3,72(sp)
    80002300:	04013a03          	ld	s4,64(sp)
    80002304:	03813a83          	ld	s5,56(sp)
    80002308:	02813b83          	ld	s7,40(sp)
    8000230c:	02013c03          	ld	s8,32(sp)
    80002310:	01813c83          	ld	s9,24(sp)
    80002314:	40ab053b          	subw	a0,s6,a0
    80002318:	03013b03          	ld	s6,48(sp)
    8000231c:	07010113          	addi	sp,sp,112
    80002320:	00008067          	ret
    80002324:	00001097          	auipc	ra,0x1
    80002328:	1d8080e7          	jalr	472(ra) # 800034fc <push_on>
    8000232c:	0984a703          	lw	a4,152(s1)
    80002330:	09c4a783          	lw	a5,156(s1)
    80002334:	0007879b          	sext.w	a5,a5
    80002338:	fef70ce3          	beq	a4,a5,80002330 <consoleread+0xfc>
    8000233c:	00001097          	auipc	ra,0x1
    80002340:	234080e7          	jalr	564(ra) # 80003570 <pop_on>
    80002344:	0984a783          	lw	a5,152(s1)
    80002348:	07f7f713          	andi	a4,a5,127
    8000234c:	00e48733          	add	a4,s1,a4
    80002350:	01874703          	lbu	a4,24(a4)
    80002354:	0017869b          	addiw	a3,a5,1
    80002358:	08d4ac23          	sw	a3,152(s1)
    8000235c:	00070c9b          	sext.w	s9,a4
    80002360:	f5371ee3          	bne	a4,s3,800022bc <consoleread+0x88>
    80002364:	000b851b          	sext.w	a0,s7
    80002368:	f96bf2e3          	bgeu	s7,s6,800022ec <consoleread+0xb8>
    8000236c:	08f4ac23          	sw	a5,152(s1)
    80002370:	f7dff06f          	j	800022ec <consoleread+0xb8>

0000000080002374 <consputc>:
    80002374:	10000793          	li	a5,256
    80002378:	00f50663          	beq	a0,a5,80002384 <consputc+0x10>
    8000237c:	00001317          	auipc	t1,0x1
    80002380:	9f430067          	jr	-1548(t1) # 80002d70 <uartputc_sync>
    80002384:	ff010113          	addi	sp,sp,-16
    80002388:	00113423          	sd	ra,8(sp)
    8000238c:	00813023          	sd	s0,0(sp)
    80002390:	01010413          	addi	s0,sp,16
    80002394:	00800513          	li	a0,8
    80002398:	00001097          	auipc	ra,0x1
    8000239c:	9d8080e7          	jalr	-1576(ra) # 80002d70 <uartputc_sync>
    800023a0:	02000513          	li	a0,32
    800023a4:	00001097          	auipc	ra,0x1
    800023a8:	9cc080e7          	jalr	-1588(ra) # 80002d70 <uartputc_sync>
    800023ac:	00013403          	ld	s0,0(sp)
    800023b0:	00813083          	ld	ra,8(sp)
    800023b4:	00800513          	li	a0,8
    800023b8:	01010113          	addi	sp,sp,16
    800023bc:	00001317          	auipc	t1,0x1
    800023c0:	9b430067          	jr	-1612(t1) # 80002d70 <uartputc_sync>

00000000800023c4 <consoleintr>:
    800023c4:	fe010113          	addi	sp,sp,-32
    800023c8:	00813823          	sd	s0,16(sp)
    800023cc:	00913423          	sd	s1,8(sp)
    800023d0:	01213023          	sd	s2,0(sp)
    800023d4:	00113c23          	sd	ra,24(sp)
    800023d8:	02010413          	addi	s0,sp,32
    800023dc:	00003917          	auipc	s2,0x3
    800023e0:	26c90913          	addi	s2,s2,620 # 80005648 <cons>
    800023e4:	00050493          	mv	s1,a0
    800023e8:	00090513          	mv	a0,s2
    800023ec:	00001097          	auipc	ra,0x1
    800023f0:	e40080e7          	jalr	-448(ra) # 8000322c <acquire>
    800023f4:	02048c63          	beqz	s1,8000242c <consoleintr+0x68>
    800023f8:	0a092783          	lw	a5,160(s2)
    800023fc:	09892703          	lw	a4,152(s2)
    80002400:	07f00693          	li	a3,127
    80002404:	40e7873b          	subw	a4,a5,a4
    80002408:	02e6e263          	bltu	a3,a4,8000242c <consoleintr+0x68>
    8000240c:	00d00713          	li	a4,13
    80002410:	04e48063          	beq	s1,a4,80002450 <consoleintr+0x8c>
    80002414:	07f7f713          	andi	a4,a5,127
    80002418:	00e90733          	add	a4,s2,a4
    8000241c:	0017879b          	addiw	a5,a5,1
    80002420:	0af92023          	sw	a5,160(s2)
    80002424:	00970c23          	sb	s1,24(a4)
    80002428:	08f92e23          	sw	a5,156(s2)
    8000242c:	01013403          	ld	s0,16(sp)
    80002430:	01813083          	ld	ra,24(sp)
    80002434:	00813483          	ld	s1,8(sp)
    80002438:	00013903          	ld	s2,0(sp)
    8000243c:	00003517          	auipc	a0,0x3
    80002440:	20c50513          	addi	a0,a0,524 # 80005648 <cons>
    80002444:	02010113          	addi	sp,sp,32
    80002448:	00001317          	auipc	t1,0x1
    8000244c:	eb030067          	jr	-336(t1) # 800032f8 <release>
    80002450:	00a00493          	li	s1,10
    80002454:	fc1ff06f          	j	80002414 <consoleintr+0x50>

0000000080002458 <consoleinit>:
    80002458:	fe010113          	addi	sp,sp,-32
    8000245c:	00113c23          	sd	ra,24(sp)
    80002460:	00813823          	sd	s0,16(sp)
    80002464:	00913423          	sd	s1,8(sp)
    80002468:	02010413          	addi	s0,sp,32
    8000246c:	00003497          	auipc	s1,0x3
    80002470:	1dc48493          	addi	s1,s1,476 # 80005648 <cons>
    80002474:	00048513          	mv	a0,s1
    80002478:	00002597          	auipc	a1,0x2
    8000247c:	d2058593          	addi	a1,a1,-736 # 80004198 <_ZZ12printIntegermE6digits+0x138>
    80002480:	00001097          	auipc	ra,0x1
    80002484:	d88080e7          	jalr	-632(ra) # 80003208 <initlock>
    80002488:	00000097          	auipc	ra,0x0
    8000248c:	7ac080e7          	jalr	1964(ra) # 80002c34 <uartinit>
    80002490:	01813083          	ld	ra,24(sp)
    80002494:	01013403          	ld	s0,16(sp)
    80002498:	00000797          	auipc	a5,0x0
    8000249c:	d9c78793          	addi	a5,a5,-612 # 80002234 <consoleread>
    800024a0:	0af4bc23          	sd	a5,184(s1)
    800024a4:	00000797          	auipc	a5,0x0
    800024a8:	cec78793          	addi	a5,a5,-788 # 80002190 <consolewrite>
    800024ac:	0cf4b023          	sd	a5,192(s1)
    800024b0:	00813483          	ld	s1,8(sp)
    800024b4:	02010113          	addi	sp,sp,32
    800024b8:	00008067          	ret

00000000800024bc <console_read>:
    800024bc:	ff010113          	addi	sp,sp,-16
    800024c0:	00813423          	sd	s0,8(sp)
    800024c4:	01010413          	addi	s0,sp,16
    800024c8:	00813403          	ld	s0,8(sp)
    800024cc:	00003317          	auipc	t1,0x3
    800024d0:	23433303          	ld	t1,564(t1) # 80005700 <devsw+0x10>
    800024d4:	01010113          	addi	sp,sp,16
    800024d8:	00030067          	jr	t1

00000000800024dc <console_write>:
    800024dc:	ff010113          	addi	sp,sp,-16
    800024e0:	00813423          	sd	s0,8(sp)
    800024e4:	01010413          	addi	s0,sp,16
    800024e8:	00813403          	ld	s0,8(sp)
    800024ec:	00003317          	auipc	t1,0x3
    800024f0:	21c33303          	ld	t1,540(t1) # 80005708 <devsw+0x18>
    800024f4:	01010113          	addi	sp,sp,16
    800024f8:	00030067          	jr	t1

00000000800024fc <panic>:
    800024fc:	fe010113          	addi	sp,sp,-32
    80002500:	00113c23          	sd	ra,24(sp)
    80002504:	00813823          	sd	s0,16(sp)
    80002508:	00913423          	sd	s1,8(sp)
    8000250c:	02010413          	addi	s0,sp,32
    80002510:	00050493          	mv	s1,a0
    80002514:	00002517          	auipc	a0,0x2
    80002518:	c8c50513          	addi	a0,a0,-884 # 800041a0 <_ZZ12printIntegermE6digits+0x140>
    8000251c:	00003797          	auipc	a5,0x3
    80002520:	2807a623          	sw	zero,652(a5) # 800057a8 <pr+0x18>
    80002524:	00000097          	auipc	ra,0x0
    80002528:	034080e7          	jalr	52(ra) # 80002558 <__printf>
    8000252c:	00048513          	mv	a0,s1
    80002530:	00000097          	auipc	ra,0x0
    80002534:	028080e7          	jalr	40(ra) # 80002558 <__printf>
    80002538:	00002517          	auipc	a0,0x2
    8000253c:	b0050513          	addi	a0,a0,-1280 # 80004038 <CONSOLE_STATUS+0x28>
    80002540:	00000097          	auipc	ra,0x0
    80002544:	018080e7          	jalr	24(ra) # 80002558 <__printf>
    80002548:	00100793          	li	a5,1
    8000254c:	00002717          	auipc	a4,0x2
    80002550:	fef72623          	sw	a5,-20(a4) # 80004538 <panicked>
    80002554:	0000006f          	j	80002554 <panic+0x58>

0000000080002558 <__printf>:
    80002558:	f3010113          	addi	sp,sp,-208
    8000255c:	08813023          	sd	s0,128(sp)
    80002560:	07313423          	sd	s3,104(sp)
    80002564:	09010413          	addi	s0,sp,144
    80002568:	05813023          	sd	s8,64(sp)
    8000256c:	08113423          	sd	ra,136(sp)
    80002570:	06913c23          	sd	s1,120(sp)
    80002574:	07213823          	sd	s2,112(sp)
    80002578:	07413023          	sd	s4,96(sp)
    8000257c:	05513c23          	sd	s5,88(sp)
    80002580:	05613823          	sd	s6,80(sp)
    80002584:	05713423          	sd	s7,72(sp)
    80002588:	03913c23          	sd	s9,56(sp)
    8000258c:	03a13823          	sd	s10,48(sp)
    80002590:	03b13423          	sd	s11,40(sp)
    80002594:	00003317          	auipc	t1,0x3
    80002598:	1fc30313          	addi	t1,t1,508 # 80005790 <pr>
    8000259c:	01832c03          	lw	s8,24(t1)
    800025a0:	00b43423          	sd	a1,8(s0)
    800025a4:	00c43823          	sd	a2,16(s0)
    800025a8:	00d43c23          	sd	a3,24(s0)
    800025ac:	02e43023          	sd	a4,32(s0)
    800025b0:	02f43423          	sd	a5,40(s0)
    800025b4:	03043823          	sd	a6,48(s0)
    800025b8:	03143c23          	sd	a7,56(s0)
    800025bc:	00050993          	mv	s3,a0
    800025c0:	4a0c1663          	bnez	s8,80002a6c <__printf+0x514>
    800025c4:	60098c63          	beqz	s3,80002bdc <__printf+0x684>
    800025c8:	0009c503          	lbu	a0,0(s3)
    800025cc:	00840793          	addi	a5,s0,8
    800025d0:	f6f43c23          	sd	a5,-136(s0)
    800025d4:	00000493          	li	s1,0
    800025d8:	22050063          	beqz	a0,800027f8 <__printf+0x2a0>
    800025dc:	00002a37          	lui	s4,0x2
    800025e0:	00018ab7          	lui	s5,0x18
    800025e4:	000f4b37          	lui	s6,0xf4
    800025e8:	00989bb7          	lui	s7,0x989
    800025ec:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    800025f0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    800025f4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    800025f8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    800025fc:	00148c9b          	addiw	s9,s1,1
    80002600:	02500793          	li	a5,37
    80002604:	01998933          	add	s2,s3,s9
    80002608:	38f51263          	bne	a0,a5,8000298c <__printf+0x434>
    8000260c:	00094783          	lbu	a5,0(s2)
    80002610:	00078c9b          	sext.w	s9,a5
    80002614:	1e078263          	beqz	a5,800027f8 <__printf+0x2a0>
    80002618:	0024849b          	addiw	s1,s1,2
    8000261c:	07000713          	li	a4,112
    80002620:	00998933          	add	s2,s3,s1
    80002624:	38e78a63          	beq	a5,a4,800029b8 <__printf+0x460>
    80002628:	20f76863          	bltu	a4,a5,80002838 <__printf+0x2e0>
    8000262c:	42a78863          	beq	a5,a0,80002a5c <__printf+0x504>
    80002630:	06400713          	li	a4,100
    80002634:	40e79663          	bne	a5,a4,80002a40 <__printf+0x4e8>
    80002638:	f7843783          	ld	a5,-136(s0)
    8000263c:	0007a603          	lw	a2,0(a5)
    80002640:	00878793          	addi	a5,a5,8
    80002644:	f6f43c23          	sd	a5,-136(s0)
    80002648:	42064a63          	bltz	a2,80002a7c <__printf+0x524>
    8000264c:	00a00713          	li	a4,10
    80002650:	02e677bb          	remuw	a5,a2,a4
    80002654:	00002d97          	auipc	s11,0x2
    80002658:	b74d8d93          	addi	s11,s11,-1164 # 800041c8 <digits>
    8000265c:	00900593          	li	a1,9
    80002660:	0006051b          	sext.w	a0,a2
    80002664:	00000c93          	li	s9,0
    80002668:	02079793          	slli	a5,a5,0x20
    8000266c:	0207d793          	srli	a5,a5,0x20
    80002670:	00fd87b3          	add	a5,s11,a5
    80002674:	0007c783          	lbu	a5,0(a5)
    80002678:	02e656bb          	divuw	a3,a2,a4
    8000267c:	f8f40023          	sb	a5,-128(s0)
    80002680:	14c5d863          	bge	a1,a2,800027d0 <__printf+0x278>
    80002684:	06300593          	li	a1,99
    80002688:	00100c93          	li	s9,1
    8000268c:	02e6f7bb          	remuw	a5,a3,a4
    80002690:	02079793          	slli	a5,a5,0x20
    80002694:	0207d793          	srli	a5,a5,0x20
    80002698:	00fd87b3          	add	a5,s11,a5
    8000269c:	0007c783          	lbu	a5,0(a5)
    800026a0:	02e6d73b          	divuw	a4,a3,a4
    800026a4:	f8f400a3          	sb	a5,-127(s0)
    800026a8:	12a5f463          	bgeu	a1,a0,800027d0 <__printf+0x278>
    800026ac:	00a00693          	li	a3,10
    800026b0:	00900593          	li	a1,9
    800026b4:	02d777bb          	remuw	a5,a4,a3
    800026b8:	02079793          	slli	a5,a5,0x20
    800026bc:	0207d793          	srli	a5,a5,0x20
    800026c0:	00fd87b3          	add	a5,s11,a5
    800026c4:	0007c503          	lbu	a0,0(a5)
    800026c8:	02d757bb          	divuw	a5,a4,a3
    800026cc:	f8a40123          	sb	a0,-126(s0)
    800026d0:	48e5f263          	bgeu	a1,a4,80002b54 <__printf+0x5fc>
    800026d4:	06300513          	li	a0,99
    800026d8:	02d7f5bb          	remuw	a1,a5,a3
    800026dc:	02059593          	slli	a1,a1,0x20
    800026e0:	0205d593          	srli	a1,a1,0x20
    800026e4:	00bd85b3          	add	a1,s11,a1
    800026e8:	0005c583          	lbu	a1,0(a1)
    800026ec:	02d7d7bb          	divuw	a5,a5,a3
    800026f0:	f8b401a3          	sb	a1,-125(s0)
    800026f4:	48e57263          	bgeu	a0,a4,80002b78 <__printf+0x620>
    800026f8:	3e700513          	li	a0,999
    800026fc:	02d7f5bb          	remuw	a1,a5,a3
    80002700:	02059593          	slli	a1,a1,0x20
    80002704:	0205d593          	srli	a1,a1,0x20
    80002708:	00bd85b3          	add	a1,s11,a1
    8000270c:	0005c583          	lbu	a1,0(a1)
    80002710:	02d7d7bb          	divuw	a5,a5,a3
    80002714:	f8b40223          	sb	a1,-124(s0)
    80002718:	46e57663          	bgeu	a0,a4,80002b84 <__printf+0x62c>
    8000271c:	02d7f5bb          	remuw	a1,a5,a3
    80002720:	02059593          	slli	a1,a1,0x20
    80002724:	0205d593          	srli	a1,a1,0x20
    80002728:	00bd85b3          	add	a1,s11,a1
    8000272c:	0005c583          	lbu	a1,0(a1)
    80002730:	02d7d7bb          	divuw	a5,a5,a3
    80002734:	f8b402a3          	sb	a1,-123(s0)
    80002738:	46ea7863          	bgeu	s4,a4,80002ba8 <__printf+0x650>
    8000273c:	02d7f5bb          	remuw	a1,a5,a3
    80002740:	02059593          	slli	a1,a1,0x20
    80002744:	0205d593          	srli	a1,a1,0x20
    80002748:	00bd85b3          	add	a1,s11,a1
    8000274c:	0005c583          	lbu	a1,0(a1)
    80002750:	02d7d7bb          	divuw	a5,a5,a3
    80002754:	f8b40323          	sb	a1,-122(s0)
    80002758:	3eeaf863          	bgeu	s5,a4,80002b48 <__printf+0x5f0>
    8000275c:	02d7f5bb          	remuw	a1,a5,a3
    80002760:	02059593          	slli	a1,a1,0x20
    80002764:	0205d593          	srli	a1,a1,0x20
    80002768:	00bd85b3          	add	a1,s11,a1
    8000276c:	0005c583          	lbu	a1,0(a1)
    80002770:	02d7d7bb          	divuw	a5,a5,a3
    80002774:	f8b403a3          	sb	a1,-121(s0)
    80002778:	42eb7e63          	bgeu	s6,a4,80002bb4 <__printf+0x65c>
    8000277c:	02d7f5bb          	remuw	a1,a5,a3
    80002780:	02059593          	slli	a1,a1,0x20
    80002784:	0205d593          	srli	a1,a1,0x20
    80002788:	00bd85b3          	add	a1,s11,a1
    8000278c:	0005c583          	lbu	a1,0(a1)
    80002790:	02d7d7bb          	divuw	a5,a5,a3
    80002794:	f8b40423          	sb	a1,-120(s0)
    80002798:	42ebfc63          	bgeu	s7,a4,80002bd0 <__printf+0x678>
    8000279c:	02079793          	slli	a5,a5,0x20
    800027a0:	0207d793          	srli	a5,a5,0x20
    800027a4:	00fd8db3          	add	s11,s11,a5
    800027a8:	000dc703          	lbu	a4,0(s11)
    800027ac:	00a00793          	li	a5,10
    800027b0:	00900c93          	li	s9,9
    800027b4:	f8e404a3          	sb	a4,-119(s0)
    800027b8:	00065c63          	bgez	a2,800027d0 <__printf+0x278>
    800027bc:	f9040713          	addi	a4,s0,-112
    800027c0:	00f70733          	add	a4,a4,a5
    800027c4:	02d00693          	li	a3,45
    800027c8:	fed70823          	sb	a3,-16(a4)
    800027cc:	00078c93          	mv	s9,a5
    800027d0:	f8040793          	addi	a5,s0,-128
    800027d4:	01978cb3          	add	s9,a5,s9
    800027d8:	f7f40d13          	addi	s10,s0,-129
    800027dc:	000cc503          	lbu	a0,0(s9)
    800027e0:	fffc8c93          	addi	s9,s9,-1
    800027e4:	00000097          	auipc	ra,0x0
    800027e8:	b90080e7          	jalr	-1136(ra) # 80002374 <consputc>
    800027ec:	ffac98e3          	bne	s9,s10,800027dc <__printf+0x284>
    800027f0:	00094503          	lbu	a0,0(s2)
    800027f4:	e00514e3          	bnez	a0,800025fc <__printf+0xa4>
    800027f8:	1a0c1663          	bnez	s8,800029a4 <__printf+0x44c>
    800027fc:	08813083          	ld	ra,136(sp)
    80002800:	08013403          	ld	s0,128(sp)
    80002804:	07813483          	ld	s1,120(sp)
    80002808:	07013903          	ld	s2,112(sp)
    8000280c:	06813983          	ld	s3,104(sp)
    80002810:	06013a03          	ld	s4,96(sp)
    80002814:	05813a83          	ld	s5,88(sp)
    80002818:	05013b03          	ld	s6,80(sp)
    8000281c:	04813b83          	ld	s7,72(sp)
    80002820:	04013c03          	ld	s8,64(sp)
    80002824:	03813c83          	ld	s9,56(sp)
    80002828:	03013d03          	ld	s10,48(sp)
    8000282c:	02813d83          	ld	s11,40(sp)
    80002830:	0d010113          	addi	sp,sp,208
    80002834:	00008067          	ret
    80002838:	07300713          	li	a4,115
    8000283c:	1ce78a63          	beq	a5,a4,80002a10 <__printf+0x4b8>
    80002840:	07800713          	li	a4,120
    80002844:	1ee79e63          	bne	a5,a4,80002a40 <__printf+0x4e8>
    80002848:	f7843783          	ld	a5,-136(s0)
    8000284c:	0007a703          	lw	a4,0(a5)
    80002850:	00878793          	addi	a5,a5,8
    80002854:	f6f43c23          	sd	a5,-136(s0)
    80002858:	28074263          	bltz	a4,80002adc <__printf+0x584>
    8000285c:	00002d97          	auipc	s11,0x2
    80002860:	96cd8d93          	addi	s11,s11,-1684 # 800041c8 <digits>
    80002864:	00f77793          	andi	a5,a4,15
    80002868:	00fd87b3          	add	a5,s11,a5
    8000286c:	0007c683          	lbu	a3,0(a5)
    80002870:	00f00613          	li	a2,15
    80002874:	0007079b          	sext.w	a5,a4
    80002878:	f8d40023          	sb	a3,-128(s0)
    8000287c:	0047559b          	srliw	a1,a4,0x4
    80002880:	0047569b          	srliw	a3,a4,0x4
    80002884:	00000c93          	li	s9,0
    80002888:	0ee65063          	bge	a2,a4,80002968 <__printf+0x410>
    8000288c:	00f6f693          	andi	a3,a3,15
    80002890:	00dd86b3          	add	a3,s11,a3
    80002894:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80002898:	0087d79b          	srliw	a5,a5,0x8
    8000289c:	00100c93          	li	s9,1
    800028a0:	f8d400a3          	sb	a3,-127(s0)
    800028a4:	0cb67263          	bgeu	a2,a1,80002968 <__printf+0x410>
    800028a8:	00f7f693          	andi	a3,a5,15
    800028ac:	00dd86b3          	add	a3,s11,a3
    800028b0:	0006c583          	lbu	a1,0(a3)
    800028b4:	00f00613          	li	a2,15
    800028b8:	0047d69b          	srliw	a3,a5,0x4
    800028bc:	f8b40123          	sb	a1,-126(s0)
    800028c0:	0047d593          	srli	a1,a5,0x4
    800028c4:	28f67e63          	bgeu	a2,a5,80002b60 <__printf+0x608>
    800028c8:	00f6f693          	andi	a3,a3,15
    800028cc:	00dd86b3          	add	a3,s11,a3
    800028d0:	0006c503          	lbu	a0,0(a3)
    800028d4:	0087d813          	srli	a6,a5,0x8
    800028d8:	0087d69b          	srliw	a3,a5,0x8
    800028dc:	f8a401a3          	sb	a0,-125(s0)
    800028e0:	28b67663          	bgeu	a2,a1,80002b6c <__printf+0x614>
    800028e4:	00f6f693          	andi	a3,a3,15
    800028e8:	00dd86b3          	add	a3,s11,a3
    800028ec:	0006c583          	lbu	a1,0(a3)
    800028f0:	00c7d513          	srli	a0,a5,0xc
    800028f4:	00c7d69b          	srliw	a3,a5,0xc
    800028f8:	f8b40223          	sb	a1,-124(s0)
    800028fc:	29067a63          	bgeu	a2,a6,80002b90 <__printf+0x638>
    80002900:	00f6f693          	andi	a3,a3,15
    80002904:	00dd86b3          	add	a3,s11,a3
    80002908:	0006c583          	lbu	a1,0(a3)
    8000290c:	0107d813          	srli	a6,a5,0x10
    80002910:	0107d69b          	srliw	a3,a5,0x10
    80002914:	f8b402a3          	sb	a1,-123(s0)
    80002918:	28a67263          	bgeu	a2,a0,80002b9c <__printf+0x644>
    8000291c:	00f6f693          	andi	a3,a3,15
    80002920:	00dd86b3          	add	a3,s11,a3
    80002924:	0006c683          	lbu	a3,0(a3)
    80002928:	0147d79b          	srliw	a5,a5,0x14
    8000292c:	f8d40323          	sb	a3,-122(s0)
    80002930:	21067663          	bgeu	a2,a6,80002b3c <__printf+0x5e4>
    80002934:	02079793          	slli	a5,a5,0x20
    80002938:	0207d793          	srli	a5,a5,0x20
    8000293c:	00fd8db3          	add	s11,s11,a5
    80002940:	000dc683          	lbu	a3,0(s11)
    80002944:	00800793          	li	a5,8
    80002948:	00700c93          	li	s9,7
    8000294c:	f8d403a3          	sb	a3,-121(s0)
    80002950:	00075c63          	bgez	a4,80002968 <__printf+0x410>
    80002954:	f9040713          	addi	a4,s0,-112
    80002958:	00f70733          	add	a4,a4,a5
    8000295c:	02d00693          	li	a3,45
    80002960:	fed70823          	sb	a3,-16(a4)
    80002964:	00078c93          	mv	s9,a5
    80002968:	f8040793          	addi	a5,s0,-128
    8000296c:	01978cb3          	add	s9,a5,s9
    80002970:	f7f40d13          	addi	s10,s0,-129
    80002974:	000cc503          	lbu	a0,0(s9)
    80002978:	fffc8c93          	addi	s9,s9,-1
    8000297c:	00000097          	auipc	ra,0x0
    80002980:	9f8080e7          	jalr	-1544(ra) # 80002374 <consputc>
    80002984:	ff9d18e3          	bne	s10,s9,80002974 <__printf+0x41c>
    80002988:	0100006f          	j	80002998 <__printf+0x440>
    8000298c:	00000097          	auipc	ra,0x0
    80002990:	9e8080e7          	jalr	-1560(ra) # 80002374 <consputc>
    80002994:	000c8493          	mv	s1,s9
    80002998:	00094503          	lbu	a0,0(s2)
    8000299c:	c60510e3          	bnez	a0,800025fc <__printf+0xa4>
    800029a0:	e40c0ee3          	beqz	s8,800027fc <__printf+0x2a4>
    800029a4:	00003517          	auipc	a0,0x3
    800029a8:	dec50513          	addi	a0,a0,-532 # 80005790 <pr>
    800029ac:	00001097          	auipc	ra,0x1
    800029b0:	94c080e7          	jalr	-1716(ra) # 800032f8 <release>
    800029b4:	e49ff06f          	j	800027fc <__printf+0x2a4>
    800029b8:	f7843783          	ld	a5,-136(s0)
    800029bc:	03000513          	li	a0,48
    800029c0:	01000d13          	li	s10,16
    800029c4:	00878713          	addi	a4,a5,8
    800029c8:	0007bc83          	ld	s9,0(a5)
    800029cc:	f6e43c23          	sd	a4,-136(s0)
    800029d0:	00000097          	auipc	ra,0x0
    800029d4:	9a4080e7          	jalr	-1628(ra) # 80002374 <consputc>
    800029d8:	07800513          	li	a0,120
    800029dc:	00000097          	auipc	ra,0x0
    800029e0:	998080e7          	jalr	-1640(ra) # 80002374 <consputc>
    800029e4:	00001d97          	auipc	s11,0x1
    800029e8:	7e4d8d93          	addi	s11,s11,2020 # 800041c8 <digits>
    800029ec:	03ccd793          	srli	a5,s9,0x3c
    800029f0:	00fd87b3          	add	a5,s11,a5
    800029f4:	0007c503          	lbu	a0,0(a5)
    800029f8:	fffd0d1b          	addiw	s10,s10,-1
    800029fc:	004c9c93          	slli	s9,s9,0x4
    80002a00:	00000097          	auipc	ra,0x0
    80002a04:	974080e7          	jalr	-1676(ra) # 80002374 <consputc>
    80002a08:	fe0d12e3          	bnez	s10,800029ec <__printf+0x494>
    80002a0c:	f8dff06f          	j	80002998 <__printf+0x440>
    80002a10:	f7843783          	ld	a5,-136(s0)
    80002a14:	0007bc83          	ld	s9,0(a5)
    80002a18:	00878793          	addi	a5,a5,8
    80002a1c:	f6f43c23          	sd	a5,-136(s0)
    80002a20:	000c9a63          	bnez	s9,80002a34 <__printf+0x4dc>
    80002a24:	1080006f          	j	80002b2c <__printf+0x5d4>
    80002a28:	001c8c93          	addi	s9,s9,1
    80002a2c:	00000097          	auipc	ra,0x0
    80002a30:	948080e7          	jalr	-1720(ra) # 80002374 <consputc>
    80002a34:	000cc503          	lbu	a0,0(s9)
    80002a38:	fe0518e3          	bnez	a0,80002a28 <__printf+0x4d0>
    80002a3c:	f5dff06f          	j	80002998 <__printf+0x440>
    80002a40:	02500513          	li	a0,37
    80002a44:	00000097          	auipc	ra,0x0
    80002a48:	930080e7          	jalr	-1744(ra) # 80002374 <consputc>
    80002a4c:	000c8513          	mv	a0,s9
    80002a50:	00000097          	auipc	ra,0x0
    80002a54:	924080e7          	jalr	-1756(ra) # 80002374 <consputc>
    80002a58:	f41ff06f          	j	80002998 <__printf+0x440>
    80002a5c:	02500513          	li	a0,37
    80002a60:	00000097          	auipc	ra,0x0
    80002a64:	914080e7          	jalr	-1772(ra) # 80002374 <consputc>
    80002a68:	f31ff06f          	j	80002998 <__printf+0x440>
    80002a6c:	00030513          	mv	a0,t1
    80002a70:	00000097          	auipc	ra,0x0
    80002a74:	7bc080e7          	jalr	1980(ra) # 8000322c <acquire>
    80002a78:	b4dff06f          	j	800025c4 <__printf+0x6c>
    80002a7c:	40c0053b          	negw	a0,a2
    80002a80:	00a00713          	li	a4,10
    80002a84:	02e576bb          	remuw	a3,a0,a4
    80002a88:	00001d97          	auipc	s11,0x1
    80002a8c:	740d8d93          	addi	s11,s11,1856 # 800041c8 <digits>
    80002a90:	ff700593          	li	a1,-9
    80002a94:	02069693          	slli	a3,a3,0x20
    80002a98:	0206d693          	srli	a3,a3,0x20
    80002a9c:	00dd86b3          	add	a3,s11,a3
    80002aa0:	0006c683          	lbu	a3,0(a3)
    80002aa4:	02e557bb          	divuw	a5,a0,a4
    80002aa8:	f8d40023          	sb	a3,-128(s0)
    80002aac:	10b65e63          	bge	a2,a1,80002bc8 <__printf+0x670>
    80002ab0:	06300593          	li	a1,99
    80002ab4:	02e7f6bb          	remuw	a3,a5,a4
    80002ab8:	02069693          	slli	a3,a3,0x20
    80002abc:	0206d693          	srli	a3,a3,0x20
    80002ac0:	00dd86b3          	add	a3,s11,a3
    80002ac4:	0006c683          	lbu	a3,0(a3)
    80002ac8:	02e7d73b          	divuw	a4,a5,a4
    80002acc:	00200793          	li	a5,2
    80002ad0:	f8d400a3          	sb	a3,-127(s0)
    80002ad4:	bca5ece3          	bltu	a1,a0,800026ac <__printf+0x154>
    80002ad8:	ce5ff06f          	j	800027bc <__printf+0x264>
    80002adc:	40e007bb          	negw	a5,a4
    80002ae0:	00001d97          	auipc	s11,0x1
    80002ae4:	6e8d8d93          	addi	s11,s11,1768 # 800041c8 <digits>
    80002ae8:	00f7f693          	andi	a3,a5,15
    80002aec:	00dd86b3          	add	a3,s11,a3
    80002af0:	0006c583          	lbu	a1,0(a3)
    80002af4:	ff100613          	li	a2,-15
    80002af8:	0047d69b          	srliw	a3,a5,0x4
    80002afc:	f8b40023          	sb	a1,-128(s0)
    80002b00:	0047d59b          	srliw	a1,a5,0x4
    80002b04:	0ac75e63          	bge	a4,a2,80002bc0 <__printf+0x668>
    80002b08:	00f6f693          	andi	a3,a3,15
    80002b0c:	00dd86b3          	add	a3,s11,a3
    80002b10:	0006c603          	lbu	a2,0(a3)
    80002b14:	00f00693          	li	a3,15
    80002b18:	0087d79b          	srliw	a5,a5,0x8
    80002b1c:	f8c400a3          	sb	a2,-127(s0)
    80002b20:	d8b6e4e3          	bltu	a3,a1,800028a8 <__printf+0x350>
    80002b24:	00200793          	li	a5,2
    80002b28:	e2dff06f          	j	80002954 <__printf+0x3fc>
    80002b2c:	00001c97          	auipc	s9,0x1
    80002b30:	67cc8c93          	addi	s9,s9,1660 # 800041a8 <_ZZ12printIntegermE6digits+0x148>
    80002b34:	02800513          	li	a0,40
    80002b38:	ef1ff06f          	j	80002a28 <__printf+0x4d0>
    80002b3c:	00700793          	li	a5,7
    80002b40:	00600c93          	li	s9,6
    80002b44:	e0dff06f          	j	80002950 <__printf+0x3f8>
    80002b48:	00700793          	li	a5,7
    80002b4c:	00600c93          	li	s9,6
    80002b50:	c69ff06f          	j	800027b8 <__printf+0x260>
    80002b54:	00300793          	li	a5,3
    80002b58:	00200c93          	li	s9,2
    80002b5c:	c5dff06f          	j	800027b8 <__printf+0x260>
    80002b60:	00300793          	li	a5,3
    80002b64:	00200c93          	li	s9,2
    80002b68:	de9ff06f          	j	80002950 <__printf+0x3f8>
    80002b6c:	00400793          	li	a5,4
    80002b70:	00300c93          	li	s9,3
    80002b74:	dddff06f          	j	80002950 <__printf+0x3f8>
    80002b78:	00400793          	li	a5,4
    80002b7c:	00300c93          	li	s9,3
    80002b80:	c39ff06f          	j	800027b8 <__printf+0x260>
    80002b84:	00500793          	li	a5,5
    80002b88:	00400c93          	li	s9,4
    80002b8c:	c2dff06f          	j	800027b8 <__printf+0x260>
    80002b90:	00500793          	li	a5,5
    80002b94:	00400c93          	li	s9,4
    80002b98:	db9ff06f          	j	80002950 <__printf+0x3f8>
    80002b9c:	00600793          	li	a5,6
    80002ba0:	00500c93          	li	s9,5
    80002ba4:	dadff06f          	j	80002950 <__printf+0x3f8>
    80002ba8:	00600793          	li	a5,6
    80002bac:	00500c93          	li	s9,5
    80002bb0:	c09ff06f          	j	800027b8 <__printf+0x260>
    80002bb4:	00800793          	li	a5,8
    80002bb8:	00700c93          	li	s9,7
    80002bbc:	bfdff06f          	j	800027b8 <__printf+0x260>
    80002bc0:	00100793          	li	a5,1
    80002bc4:	d91ff06f          	j	80002954 <__printf+0x3fc>
    80002bc8:	00100793          	li	a5,1
    80002bcc:	bf1ff06f          	j	800027bc <__printf+0x264>
    80002bd0:	00900793          	li	a5,9
    80002bd4:	00800c93          	li	s9,8
    80002bd8:	be1ff06f          	j	800027b8 <__printf+0x260>
    80002bdc:	00001517          	auipc	a0,0x1
    80002be0:	5d450513          	addi	a0,a0,1492 # 800041b0 <_ZZ12printIntegermE6digits+0x150>
    80002be4:	00000097          	auipc	ra,0x0
    80002be8:	918080e7          	jalr	-1768(ra) # 800024fc <panic>

0000000080002bec <printfinit>:
    80002bec:	fe010113          	addi	sp,sp,-32
    80002bf0:	00813823          	sd	s0,16(sp)
    80002bf4:	00913423          	sd	s1,8(sp)
    80002bf8:	00113c23          	sd	ra,24(sp)
    80002bfc:	02010413          	addi	s0,sp,32
    80002c00:	00003497          	auipc	s1,0x3
    80002c04:	b9048493          	addi	s1,s1,-1136 # 80005790 <pr>
    80002c08:	00048513          	mv	a0,s1
    80002c0c:	00001597          	auipc	a1,0x1
    80002c10:	5b458593          	addi	a1,a1,1460 # 800041c0 <_ZZ12printIntegermE6digits+0x160>
    80002c14:	00000097          	auipc	ra,0x0
    80002c18:	5f4080e7          	jalr	1524(ra) # 80003208 <initlock>
    80002c1c:	01813083          	ld	ra,24(sp)
    80002c20:	01013403          	ld	s0,16(sp)
    80002c24:	0004ac23          	sw	zero,24(s1)
    80002c28:	00813483          	ld	s1,8(sp)
    80002c2c:	02010113          	addi	sp,sp,32
    80002c30:	00008067          	ret

0000000080002c34 <uartinit>:
    80002c34:	ff010113          	addi	sp,sp,-16
    80002c38:	00813423          	sd	s0,8(sp)
    80002c3c:	01010413          	addi	s0,sp,16
    80002c40:	100007b7          	lui	a5,0x10000
    80002c44:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80002c48:	f8000713          	li	a4,-128
    80002c4c:	00e781a3          	sb	a4,3(a5)
    80002c50:	00300713          	li	a4,3
    80002c54:	00e78023          	sb	a4,0(a5)
    80002c58:	000780a3          	sb	zero,1(a5)
    80002c5c:	00e781a3          	sb	a4,3(a5)
    80002c60:	00700693          	li	a3,7
    80002c64:	00d78123          	sb	a3,2(a5)
    80002c68:	00e780a3          	sb	a4,1(a5)
    80002c6c:	00813403          	ld	s0,8(sp)
    80002c70:	01010113          	addi	sp,sp,16
    80002c74:	00008067          	ret

0000000080002c78 <uartputc>:
    80002c78:	00002797          	auipc	a5,0x2
    80002c7c:	8c07a783          	lw	a5,-1856(a5) # 80004538 <panicked>
    80002c80:	00078463          	beqz	a5,80002c88 <uartputc+0x10>
    80002c84:	0000006f          	j	80002c84 <uartputc+0xc>
    80002c88:	fd010113          	addi	sp,sp,-48
    80002c8c:	02813023          	sd	s0,32(sp)
    80002c90:	00913c23          	sd	s1,24(sp)
    80002c94:	01213823          	sd	s2,16(sp)
    80002c98:	01313423          	sd	s3,8(sp)
    80002c9c:	02113423          	sd	ra,40(sp)
    80002ca0:	03010413          	addi	s0,sp,48
    80002ca4:	00002917          	auipc	s2,0x2
    80002ca8:	89c90913          	addi	s2,s2,-1892 # 80004540 <uart_tx_r>
    80002cac:	00093783          	ld	a5,0(s2)
    80002cb0:	00002497          	auipc	s1,0x2
    80002cb4:	89848493          	addi	s1,s1,-1896 # 80004548 <uart_tx_w>
    80002cb8:	0004b703          	ld	a4,0(s1)
    80002cbc:	02078693          	addi	a3,a5,32
    80002cc0:	00050993          	mv	s3,a0
    80002cc4:	02e69c63          	bne	a3,a4,80002cfc <uartputc+0x84>
    80002cc8:	00001097          	auipc	ra,0x1
    80002ccc:	834080e7          	jalr	-1996(ra) # 800034fc <push_on>
    80002cd0:	00093783          	ld	a5,0(s2)
    80002cd4:	0004b703          	ld	a4,0(s1)
    80002cd8:	02078793          	addi	a5,a5,32
    80002cdc:	00e79463          	bne	a5,a4,80002ce4 <uartputc+0x6c>
    80002ce0:	0000006f          	j	80002ce0 <uartputc+0x68>
    80002ce4:	00001097          	auipc	ra,0x1
    80002ce8:	88c080e7          	jalr	-1908(ra) # 80003570 <pop_on>
    80002cec:	00093783          	ld	a5,0(s2)
    80002cf0:	0004b703          	ld	a4,0(s1)
    80002cf4:	02078693          	addi	a3,a5,32
    80002cf8:	fce688e3          	beq	a3,a4,80002cc8 <uartputc+0x50>
    80002cfc:	01f77693          	andi	a3,a4,31
    80002d00:	00003597          	auipc	a1,0x3
    80002d04:	ab058593          	addi	a1,a1,-1360 # 800057b0 <uart_tx_buf>
    80002d08:	00d586b3          	add	a3,a1,a3
    80002d0c:	00170713          	addi	a4,a4,1
    80002d10:	01368023          	sb	s3,0(a3)
    80002d14:	00e4b023          	sd	a4,0(s1)
    80002d18:	10000637          	lui	a2,0x10000
    80002d1c:	02f71063          	bne	a4,a5,80002d3c <uartputc+0xc4>
    80002d20:	0340006f          	j	80002d54 <uartputc+0xdc>
    80002d24:	00074703          	lbu	a4,0(a4)
    80002d28:	00f93023          	sd	a5,0(s2)
    80002d2c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80002d30:	00093783          	ld	a5,0(s2)
    80002d34:	0004b703          	ld	a4,0(s1)
    80002d38:	00f70e63          	beq	a4,a5,80002d54 <uartputc+0xdc>
    80002d3c:	00564683          	lbu	a3,5(a2)
    80002d40:	01f7f713          	andi	a4,a5,31
    80002d44:	00e58733          	add	a4,a1,a4
    80002d48:	0206f693          	andi	a3,a3,32
    80002d4c:	00178793          	addi	a5,a5,1
    80002d50:	fc069ae3          	bnez	a3,80002d24 <uartputc+0xac>
    80002d54:	02813083          	ld	ra,40(sp)
    80002d58:	02013403          	ld	s0,32(sp)
    80002d5c:	01813483          	ld	s1,24(sp)
    80002d60:	01013903          	ld	s2,16(sp)
    80002d64:	00813983          	ld	s3,8(sp)
    80002d68:	03010113          	addi	sp,sp,48
    80002d6c:	00008067          	ret

0000000080002d70 <uartputc_sync>:
    80002d70:	ff010113          	addi	sp,sp,-16
    80002d74:	00813423          	sd	s0,8(sp)
    80002d78:	01010413          	addi	s0,sp,16
    80002d7c:	00001717          	auipc	a4,0x1
    80002d80:	7bc72703          	lw	a4,1980(a4) # 80004538 <panicked>
    80002d84:	02071663          	bnez	a4,80002db0 <uartputc_sync+0x40>
    80002d88:	00050793          	mv	a5,a0
    80002d8c:	100006b7          	lui	a3,0x10000
    80002d90:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80002d94:	02077713          	andi	a4,a4,32
    80002d98:	fe070ce3          	beqz	a4,80002d90 <uartputc_sync+0x20>
    80002d9c:	0ff7f793          	andi	a5,a5,255
    80002da0:	00f68023          	sb	a5,0(a3)
    80002da4:	00813403          	ld	s0,8(sp)
    80002da8:	01010113          	addi	sp,sp,16
    80002dac:	00008067          	ret
    80002db0:	0000006f          	j	80002db0 <uartputc_sync+0x40>

0000000080002db4 <uartstart>:
    80002db4:	ff010113          	addi	sp,sp,-16
    80002db8:	00813423          	sd	s0,8(sp)
    80002dbc:	01010413          	addi	s0,sp,16
    80002dc0:	00001617          	auipc	a2,0x1
    80002dc4:	78060613          	addi	a2,a2,1920 # 80004540 <uart_tx_r>
    80002dc8:	00001517          	auipc	a0,0x1
    80002dcc:	78050513          	addi	a0,a0,1920 # 80004548 <uart_tx_w>
    80002dd0:	00063783          	ld	a5,0(a2)
    80002dd4:	00053703          	ld	a4,0(a0)
    80002dd8:	04f70263          	beq	a4,a5,80002e1c <uartstart+0x68>
    80002ddc:	100005b7          	lui	a1,0x10000
    80002de0:	00003817          	auipc	a6,0x3
    80002de4:	9d080813          	addi	a6,a6,-1584 # 800057b0 <uart_tx_buf>
    80002de8:	01c0006f          	j	80002e04 <uartstart+0x50>
    80002dec:	0006c703          	lbu	a4,0(a3)
    80002df0:	00f63023          	sd	a5,0(a2)
    80002df4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80002df8:	00063783          	ld	a5,0(a2)
    80002dfc:	00053703          	ld	a4,0(a0)
    80002e00:	00f70e63          	beq	a4,a5,80002e1c <uartstart+0x68>
    80002e04:	01f7f713          	andi	a4,a5,31
    80002e08:	00e806b3          	add	a3,a6,a4
    80002e0c:	0055c703          	lbu	a4,5(a1)
    80002e10:	00178793          	addi	a5,a5,1
    80002e14:	02077713          	andi	a4,a4,32
    80002e18:	fc071ae3          	bnez	a4,80002dec <uartstart+0x38>
    80002e1c:	00813403          	ld	s0,8(sp)
    80002e20:	01010113          	addi	sp,sp,16
    80002e24:	00008067          	ret

0000000080002e28 <uartgetc>:
    80002e28:	ff010113          	addi	sp,sp,-16
    80002e2c:	00813423          	sd	s0,8(sp)
    80002e30:	01010413          	addi	s0,sp,16
    80002e34:	10000737          	lui	a4,0x10000
    80002e38:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80002e3c:	0017f793          	andi	a5,a5,1
    80002e40:	00078c63          	beqz	a5,80002e58 <uartgetc+0x30>
    80002e44:	00074503          	lbu	a0,0(a4)
    80002e48:	0ff57513          	andi	a0,a0,255
    80002e4c:	00813403          	ld	s0,8(sp)
    80002e50:	01010113          	addi	sp,sp,16
    80002e54:	00008067          	ret
    80002e58:	fff00513          	li	a0,-1
    80002e5c:	ff1ff06f          	j	80002e4c <uartgetc+0x24>

0000000080002e60 <uartintr>:
    80002e60:	100007b7          	lui	a5,0x10000
    80002e64:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80002e68:	0017f793          	andi	a5,a5,1
    80002e6c:	0a078463          	beqz	a5,80002f14 <uartintr+0xb4>
    80002e70:	fe010113          	addi	sp,sp,-32
    80002e74:	00813823          	sd	s0,16(sp)
    80002e78:	00913423          	sd	s1,8(sp)
    80002e7c:	00113c23          	sd	ra,24(sp)
    80002e80:	02010413          	addi	s0,sp,32
    80002e84:	100004b7          	lui	s1,0x10000
    80002e88:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80002e8c:	0ff57513          	andi	a0,a0,255
    80002e90:	fffff097          	auipc	ra,0xfffff
    80002e94:	534080e7          	jalr	1332(ra) # 800023c4 <consoleintr>
    80002e98:	0054c783          	lbu	a5,5(s1)
    80002e9c:	0017f793          	andi	a5,a5,1
    80002ea0:	fe0794e3          	bnez	a5,80002e88 <uartintr+0x28>
    80002ea4:	00001617          	auipc	a2,0x1
    80002ea8:	69c60613          	addi	a2,a2,1692 # 80004540 <uart_tx_r>
    80002eac:	00001517          	auipc	a0,0x1
    80002eb0:	69c50513          	addi	a0,a0,1692 # 80004548 <uart_tx_w>
    80002eb4:	00063783          	ld	a5,0(a2)
    80002eb8:	00053703          	ld	a4,0(a0)
    80002ebc:	04f70263          	beq	a4,a5,80002f00 <uartintr+0xa0>
    80002ec0:	100005b7          	lui	a1,0x10000
    80002ec4:	00003817          	auipc	a6,0x3
    80002ec8:	8ec80813          	addi	a6,a6,-1812 # 800057b0 <uart_tx_buf>
    80002ecc:	01c0006f          	j	80002ee8 <uartintr+0x88>
    80002ed0:	0006c703          	lbu	a4,0(a3)
    80002ed4:	00f63023          	sd	a5,0(a2)
    80002ed8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80002edc:	00063783          	ld	a5,0(a2)
    80002ee0:	00053703          	ld	a4,0(a0)
    80002ee4:	00f70e63          	beq	a4,a5,80002f00 <uartintr+0xa0>
    80002ee8:	01f7f713          	andi	a4,a5,31
    80002eec:	00e806b3          	add	a3,a6,a4
    80002ef0:	0055c703          	lbu	a4,5(a1)
    80002ef4:	00178793          	addi	a5,a5,1
    80002ef8:	02077713          	andi	a4,a4,32
    80002efc:	fc071ae3          	bnez	a4,80002ed0 <uartintr+0x70>
    80002f00:	01813083          	ld	ra,24(sp)
    80002f04:	01013403          	ld	s0,16(sp)
    80002f08:	00813483          	ld	s1,8(sp)
    80002f0c:	02010113          	addi	sp,sp,32
    80002f10:	00008067          	ret
    80002f14:	00001617          	auipc	a2,0x1
    80002f18:	62c60613          	addi	a2,a2,1580 # 80004540 <uart_tx_r>
    80002f1c:	00001517          	auipc	a0,0x1
    80002f20:	62c50513          	addi	a0,a0,1580 # 80004548 <uart_tx_w>
    80002f24:	00063783          	ld	a5,0(a2)
    80002f28:	00053703          	ld	a4,0(a0)
    80002f2c:	04f70263          	beq	a4,a5,80002f70 <uartintr+0x110>
    80002f30:	100005b7          	lui	a1,0x10000
    80002f34:	00003817          	auipc	a6,0x3
    80002f38:	87c80813          	addi	a6,a6,-1924 # 800057b0 <uart_tx_buf>
    80002f3c:	01c0006f          	j	80002f58 <uartintr+0xf8>
    80002f40:	0006c703          	lbu	a4,0(a3)
    80002f44:	00f63023          	sd	a5,0(a2)
    80002f48:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80002f4c:	00063783          	ld	a5,0(a2)
    80002f50:	00053703          	ld	a4,0(a0)
    80002f54:	02f70063          	beq	a4,a5,80002f74 <uartintr+0x114>
    80002f58:	01f7f713          	andi	a4,a5,31
    80002f5c:	00e806b3          	add	a3,a6,a4
    80002f60:	0055c703          	lbu	a4,5(a1)
    80002f64:	00178793          	addi	a5,a5,1
    80002f68:	02077713          	andi	a4,a4,32
    80002f6c:	fc071ae3          	bnez	a4,80002f40 <uartintr+0xe0>
    80002f70:	00008067          	ret
    80002f74:	00008067          	ret

0000000080002f78 <kinit>:
    80002f78:	fc010113          	addi	sp,sp,-64
    80002f7c:	02913423          	sd	s1,40(sp)
    80002f80:	fffff7b7          	lui	a5,0xfffff
    80002f84:	00004497          	auipc	s1,0x4
    80002f88:	84b48493          	addi	s1,s1,-1973 # 800067cf <end+0xfff>
    80002f8c:	02813823          	sd	s0,48(sp)
    80002f90:	01313c23          	sd	s3,24(sp)
    80002f94:	00f4f4b3          	and	s1,s1,a5
    80002f98:	02113c23          	sd	ra,56(sp)
    80002f9c:	03213023          	sd	s2,32(sp)
    80002fa0:	01413823          	sd	s4,16(sp)
    80002fa4:	01513423          	sd	s5,8(sp)
    80002fa8:	04010413          	addi	s0,sp,64
    80002fac:	000017b7          	lui	a5,0x1
    80002fb0:	01100993          	li	s3,17
    80002fb4:	00f487b3          	add	a5,s1,a5
    80002fb8:	01b99993          	slli	s3,s3,0x1b
    80002fbc:	06f9e063          	bltu	s3,a5,8000301c <kinit+0xa4>
    80002fc0:	00003a97          	auipc	s5,0x3
    80002fc4:	810a8a93          	addi	s5,s5,-2032 # 800057d0 <end>
    80002fc8:	0754ec63          	bltu	s1,s5,80003040 <kinit+0xc8>
    80002fcc:	0734fa63          	bgeu	s1,s3,80003040 <kinit+0xc8>
    80002fd0:	00088a37          	lui	s4,0x88
    80002fd4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80002fd8:	00001917          	auipc	s2,0x1
    80002fdc:	57890913          	addi	s2,s2,1400 # 80004550 <kmem>
    80002fe0:	00ca1a13          	slli	s4,s4,0xc
    80002fe4:	0140006f          	j	80002ff8 <kinit+0x80>
    80002fe8:	000017b7          	lui	a5,0x1
    80002fec:	00f484b3          	add	s1,s1,a5
    80002ff0:	0554e863          	bltu	s1,s5,80003040 <kinit+0xc8>
    80002ff4:	0534f663          	bgeu	s1,s3,80003040 <kinit+0xc8>
    80002ff8:	00001637          	lui	a2,0x1
    80002ffc:	00100593          	li	a1,1
    80003000:	00048513          	mv	a0,s1
    80003004:	00000097          	auipc	ra,0x0
    80003008:	5e4080e7          	jalr	1508(ra) # 800035e8 <__memset>
    8000300c:	00093783          	ld	a5,0(s2)
    80003010:	00f4b023          	sd	a5,0(s1)
    80003014:	00993023          	sd	s1,0(s2)
    80003018:	fd4498e3          	bne	s1,s4,80002fe8 <kinit+0x70>
    8000301c:	03813083          	ld	ra,56(sp)
    80003020:	03013403          	ld	s0,48(sp)
    80003024:	02813483          	ld	s1,40(sp)
    80003028:	02013903          	ld	s2,32(sp)
    8000302c:	01813983          	ld	s3,24(sp)
    80003030:	01013a03          	ld	s4,16(sp)
    80003034:	00813a83          	ld	s5,8(sp)
    80003038:	04010113          	addi	sp,sp,64
    8000303c:	00008067          	ret
    80003040:	00001517          	auipc	a0,0x1
    80003044:	1a050513          	addi	a0,a0,416 # 800041e0 <digits+0x18>
    80003048:	fffff097          	auipc	ra,0xfffff
    8000304c:	4b4080e7          	jalr	1204(ra) # 800024fc <panic>

0000000080003050 <freerange>:
    80003050:	fc010113          	addi	sp,sp,-64
    80003054:	000017b7          	lui	a5,0x1
    80003058:	02913423          	sd	s1,40(sp)
    8000305c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80003060:	009504b3          	add	s1,a0,s1
    80003064:	fffff537          	lui	a0,0xfffff
    80003068:	02813823          	sd	s0,48(sp)
    8000306c:	02113c23          	sd	ra,56(sp)
    80003070:	03213023          	sd	s2,32(sp)
    80003074:	01313c23          	sd	s3,24(sp)
    80003078:	01413823          	sd	s4,16(sp)
    8000307c:	01513423          	sd	s5,8(sp)
    80003080:	01613023          	sd	s6,0(sp)
    80003084:	04010413          	addi	s0,sp,64
    80003088:	00a4f4b3          	and	s1,s1,a0
    8000308c:	00f487b3          	add	a5,s1,a5
    80003090:	06f5e463          	bltu	a1,a5,800030f8 <freerange+0xa8>
    80003094:	00002a97          	auipc	s5,0x2
    80003098:	73ca8a93          	addi	s5,s5,1852 # 800057d0 <end>
    8000309c:	0954e263          	bltu	s1,s5,80003120 <freerange+0xd0>
    800030a0:	01100993          	li	s3,17
    800030a4:	01b99993          	slli	s3,s3,0x1b
    800030a8:	0734fc63          	bgeu	s1,s3,80003120 <freerange+0xd0>
    800030ac:	00058a13          	mv	s4,a1
    800030b0:	00001917          	auipc	s2,0x1
    800030b4:	4a090913          	addi	s2,s2,1184 # 80004550 <kmem>
    800030b8:	00002b37          	lui	s6,0x2
    800030bc:	0140006f          	j	800030d0 <freerange+0x80>
    800030c0:	000017b7          	lui	a5,0x1
    800030c4:	00f484b3          	add	s1,s1,a5
    800030c8:	0554ec63          	bltu	s1,s5,80003120 <freerange+0xd0>
    800030cc:	0534fa63          	bgeu	s1,s3,80003120 <freerange+0xd0>
    800030d0:	00001637          	lui	a2,0x1
    800030d4:	00100593          	li	a1,1
    800030d8:	00048513          	mv	a0,s1
    800030dc:	00000097          	auipc	ra,0x0
    800030e0:	50c080e7          	jalr	1292(ra) # 800035e8 <__memset>
    800030e4:	00093703          	ld	a4,0(s2)
    800030e8:	016487b3          	add	a5,s1,s6
    800030ec:	00e4b023          	sd	a4,0(s1)
    800030f0:	00993023          	sd	s1,0(s2)
    800030f4:	fcfa76e3          	bgeu	s4,a5,800030c0 <freerange+0x70>
    800030f8:	03813083          	ld	ra,56(sp)
    800030fc:	03013403          	ld	s0,48(sp)
    80003100:	02813483          	ld	s1,40(sp)
    80003104:	02013903          	ld	s2,32(sp)
    80003108:	01813983          	ld	s3,24(sp)
    8000310c:	01013a03          	ld	s4,16(sp)
    80003110:	00813a83          	ld	s5,8(sp)
    80003114:	00013b03          	ld	s6,0(sp)
    80003118:	04010113          	addi	sp,sp,64
    8000311c:	00008067          	ret
    80003120:	00001517          	auipc	a0,0x1
    80003124:	0c050513          	addi	a0,a0,192 # 800041e0 <digits+0x18>
    80003128:	fffff097          	auipc	ra,0xfffff
    8000312c:	3d4080e7          	jalr	980(ra) # 800024fc <panic>

0000000080003130 <kfree>:
    80003130:	fe010113          	addi	sp,sp,-32
    80003134:	00813823          	sd	s0,16(sp)
    80003138:	00113c23          	sd	ra,24(sp)
    8000313c:	00913423          	sd	s1,8(sp)
    80003140:	02010413          	addi	s0,sp,32
    80003144:	03451793          	slli	a5,a0,0x34
    80003148:	04079c63          	bnez	a5,800031a0 <kfree+0x70>
    8000314c:	00002797          	auipc	a5,0x2
    80003150:	68478793          	addi	a5,a5,1668 # 800057d0 <end>
    80003154:	00050493          	mv	s1,a0
    80003158:	04f56463          	bltu	a0,a5,800031a0 <kfree+0x70>
    8000315c:	01100793          	li	a5,17
    80003160:	01b79793          	slli	a5,a5,0x1b
    80003164:	02f57e63          	bgeu	a0,a5,800031a0 <kfree+0x70>
    80003168:	00001637          	lui	a2,0x1
    8000316c:	00100593          	li	a1,1
    80003170:	00000097          	auipc	ra,0x0
    80003174:	478080e7          	jalr	1144(ra) # 800035e8 <__memset>
    80003178:	00001797          	auipc	a5,0x1
    8000317c:	3d878793          	addi	a5,a5,984 # 80004550 <kmem>
    80003180:	0007b703          	ld	a4,0(a5)
    80003184:	01813083          	ld	ra,24(sp)
    80003188:	01013403          	ld	s0,16(sp)
    8000318c:	00e4b023          	sd	a4,0(s1)
    80003190:	0097b023          	sd	s1,0(a5)
    80003194:	00813483          	ld	s1,8(sp)
    80003198:	02010113          	addi	sp,sp,32
    8000319c:	00008067          	ret
    800031a0:	00001517          	auipc	a0,0x1
    800031a4:	04050513          	addi	a0,a0,64 # 800041e0 <digits+0x18>
    800031a8:	fffff097          	auipc	ra,0xfffff
    800031ac:	354080e7          	jalr	852(ra) # 800024fc <panic>

00000000800031b0 <kalloc>:
    800031b0:	fe010113          	addi	sp,sp,-32
    800031b4:	00813823          	sd	s0,16(sp)
    800031b8:	00913423          	sd	s1,8(sp)
    800031bc:	00113c23          	sd	ra,24(sp)
    800031c0:	02010413          	addi	s0,sp,32
    800031c4:	00001797          	auipc	a5,0x1
    800031c8:	38c78793          	addi	a5,a5,908 # 80004550 <kmem>
    800031cc:	0007b483          	ld	s1,0(a5)
    800031d0:	02048063          	beqz	s1,800031f0 <kalloc+0x40>
    800031d4:	0004b703          	ld	a4,0(s1)
    800031d8:	00001637          	lui	a2,0x1
    800031dc:	00500593          	li	a1,5
    800031e0:	00048513          	mv	a0,s1
    800031e4:	00e7b023          	sd	a4,0(a5)
    800031e8:	00000097          	auipc	ra,0x0
    800031ec:	400080e7          	jalr	1024(ra) # 800035e8 <__memset>
    800031f0:	01813083          	ld	ra,24(sp)
    800031f4:	01013403          	ld	s0,16(sp)
    800031f8:	00048513          	mv	a0,s1
    800031fc:	00813483          	ld	s1,8(sp)
    80003200:	02010113          	addi	sp,sp,32
    80003204:	00008067          	ret

0000000080003208 <initlock>:
    80003208:	ff010113          	addi	sp,sp,-16
    8000320c:	00813423          	sd	s0,8(sp)
    80003210:	01010413          	addi	s0,sp,16
    80003214:	00813403          	ld	s0,8(sp)
    80003218:	00b53423          	sd	a1,8(a0)
    8000321c:	00052023          	sw	zero,0(a0)
    80003220:	00053823          	sd	zero,16(a0)
    80003224:	01010113          	addi	sp,sp,16
    80003228:	00008067          	ret

000000008000322c <acquire>:
    8000322c:	fe010113          	addi	sp,sp,-32
    80003230:	00813823          	sd	s0,16(sp)
    80003234:	00913423          	sd	s1,8(sp)
    80003238:	00113c23          	sd	ra,24(sp)
    8000323c:	01213023          	sd	s2,0(sp)
    80003240:	02010413          	addi	s0,sp,32
    80003244:	00050493          	mv	s1,a0
    80003248:	10002973          	csrr	s2,sstatus
    8000324c:	100027f3          	csrr	a5,sstatus
    80003250:	ffd7f793          	andi	a5,a5,-3
    80003254:	10079073          	csrw	sstatus,a5
    80003258:	fffff097          	auipc	ra,0xfffff
    8000325c:	8e0080e7          	jalr	-1824(ra) # 80001b38 <mycpu>
    80003260:	07852783          	lw	a5,120(a0)
    80003264:	06078e63          	beqz	a5,800032e0 <acquire+0xb4>
    80003268:	fffff097          	auipc	ra,0xfffff
    8000326c:	8d0080e7          	jalr	-1840(ra) # 80001b38 <mycpu>
    80003270:	07852783          	lw	a5,120(a0)
    80003274:	0004a703          	lw	a4,0(s1)
    80003278:	0017879b          	addiw	a5,a5,1
    8000327c:	06f52c23          	sw	a5,120(a0)
    80003280:	04071063          	bnez	a4,800032c0 <acquire+0x94>
    80003284:	00100713          	li	a4,1
    80003288:	00070793          	mv	a5,a4
    8000328c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80003290:	0007879b          	sext.w	a5,a5
    80003294:	fe079ae3          	bnez	a5,80003288 <acquire+0x5c>
    80003298:	0ff0000f          	fence
    8000329c:	fffff097          	auipc	ra,0xfffff
    800032a0:	89c080e7          	jalr	-1892(ra) # 80001b38 <mycpu>
    800032a4:	01813083          	ld	ra,24(sp)
    800032a8:	01013403          	ld	s0,16(sp)
    800032ac:	00a4b823          	sd	a0,16(s1)
    800032b0:	00013903          	ld	s2,0(sp)
    800032b4:	00813483          	ld	s1,8(sp)
    800032b8:	02010113          	addi	sp,sp,32
    800032bc:	00008067          	ret
    800032c0:	0104b903          	ld	s2,16(s1)
    800032c4:	fffff097          	auipc	ra,0xfffff
    800032c8:	874080e7          	jalr	-1932(ra) # 80001b38 <mycpu>
    800032cc:	faa91ce3          	bne	s2,a0,80003284 <acquire+0x58>
    800032d0:	00001517          	auipc	a0,0x1
    800032d4:	f1850513          	addi	a0,a0,-232 # 800041e8 <digits+0x20>
    800032d8:	fffff097          	auipc	ra,0xfffff
    800032dc:	224080e7          	jalr	548(ra) # 800024fc <panic>
    800032e0:	00195913          	srli	s2,s2,0x1
    800032e4:	fffff097          	auipc	ra,0xfffff
    800032e8:	854080e7          	jalr	-1964(ra) # 80001b38 <mycpu>
    800032ec:	00197913          	andi	s2,s2,1
    800032f0:	07252e23          	sw	s2,124(a0)
    800032f4:	f75ff06f          	j	80003268 <acquire+0x3c>

00000000800032f8 <release>:
    800032f8:	fe010113          	addi	sp,sp,-32
    800032fc:	00813823          	sd	s0,16(sp)
    80003300:	00113c23          	sd	ra,24(sp)
    80003304:	00913423          	sd	s1,8(sp)
    80003308:	01213023          	sd	s2,0(sp)
    8000330c:	02010413          	addi	s0,sp,32
    80003310:	00052783          	lw	a5,0(a0)
    80003314:	00079a63          	bnez	a5,80003328 <release+0x30>
    80003318:	00001517          	auipc	a0,0x1
    8000331c:	ed850513          	addi	a0,a0,-296 # 800041f0 <digits+0x28>
    80003320:	fffff097          	auipc	ra,0xfffff
    80003324:	1dc080e7          	jalr	476(ra) # 800024fc <panic>
    80003328:	01053903          	ld	s2,16(a0)
    8000332c:	00050493          	mv	s1,a0
    80003330:	fffff097          	auipc	ra,0xfffff
    80003334:	808080e7          	jalr	-2040(ra) # 80001b38 <mycpu>
    80003338:	fea910e3          	bne	s2,a0,80003318 <release+0x20>
    8000333c:	0004b823          	sd	zero,16(s1)
    80003340:	0ff0000f          	fence
    80003344:	0f50000f          	fence	iorw,ow
    80003348:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000334c:	ffffe097          	auipc	ra,0xffffe
    80003350:	7ec080e7          	jalr	2028(ra) # 80001b38 <mycpu>
    80003354:	100027f3          	csrr	a5,sstatus
    80003358:	0027f793          	andi	a5,a5,2
    8000335c:	04079a63          	bnez	a5,800033b0 <release+0xb8>
    80003360:	07852783          	lw	a5,120(a0)
    80003364:	02f05e63          	blez	a5,800033a0 <release+0xa8>
    80003368:	fff7871b          	addiw	a4,a5,-1
    8000336c:	06e52c23          	sw	a4,120(a0)
    80003370:	00071c63          	bnez	a4,80003388 <release+0x90>
    80003374:	07c52783          	lw	a5,124(a0)
    80003378:	00078863          	beqz	a5,80003388 <release+0x90>
    8000337c:	100027f3          	csrr	a5,sstatus
    80003380:	0027e793          	ori	a5,a5,2
    80003384:	10079073          	csrw	sstatus,a5
    80003388:	01813083          	ld	ra,24(sp)
    8000338c:	01013403          	ld	s0,16(sp)
    80003390:	00813483          	ld	s1,8(sp)
    80003394:	00013903          	ld	s2,0(sp)
    80003398:	02010113          	addi	sp,sp,32
    8000339c:	00008067          	ret
    800033a0:	00001517          	auipc	a0,0x1
    800033a4:	e7050513          	addi	a0,a0,-400 # 80004210 <digits+0x48>
    800033a8:	fffff097          	auipc	ra,0xfffff
    800033ac:	154080e7          	jalr	340(ra) # 800024fc <panic>
    800033b0:	00001517          	auipc	a0,0x1
    800033b4:	e4850513          	addi	a0,a0,-440 # 800041f8 <digits+0x30>
    800033b8:	fffff097          	auipc	ra,0xfffff
    800033bc:	144080e7          	jalr	324(ra) # 800024fc <panic>

00000000800033c0 <holding>:
    800033c0:	00052783          	lw	a5,0(a0)
    800033c4:	00079663          	bnez	a5,800033d0 <holding+0x10>
    800033c8:	00000513          	li	a0,0
    800033cc:	00008067          	ret
    800033d0:	fe010113          	addi	sp,sp,-32
    800033d4:	00813823          	sd	s0,16(sp)
    800033d8:	00913423          	sd	s1,8(sp)
    800033dc:	00113c23          	sd	ra,24(sp)
    800033e0:	02010413          	addi	s0,sp,32
    800033e4:	01053483          	ld	s1,16(a0)
    800033e8:	ffffe097          	auipc	ra,0xffffe
    800033ec:	750080e7          	jalr	1872(ra) # 80001b38 <mycpu>
    800033f0:	01813083          	ld	ra,24(sp)
    800033f4:	01013403          	ld	s0,16(sp)
    800033f8:	40a48533          	sub	a0,s1,a0
    800033fc:	00153513          	seqz	a0,a0
    80003400:	00813483          	ld	s1,8(sp)
    80003404:	02010113          	addi	sp,sp,32
    80003408:	00008067          	ret

000000008000340c <push_off>:
    8000340c:	fe010113          	addi	sp,sp,-32
    80003410:	00813823          	sd	s0,16(sp)
    80003414:	00113c23          	sd	ra,24(sp)
    80003418:	00913423          	sd	s1,8(sp)
    8000341c:	02010413          	addi	s0,sp,32
    80003420:	100024f3          	csrr	s1,sstatus
    80003424:	100027f3          	csrr	a5,sstatus
    80003428:	ffd7f793          	andi	a5,a5,-3
    8000342c:	10079073          	csrw	sstatus,a5
    80003430:	ffffe097          	auipc	ra,0xffffe
    80003434:	708080e7          	jalr	1800(ra) # 80001b38 <mycpu>
    80003438:	07852783          	lw	a5,120(a0)
    8000343c:	02078663          	beqz	a5,80003468 <push_off+0x5c>
    80003440:	ffffe097          	auipc	ra,0xffffe
    80003444:	6f8080e7          	jalr	1784(ra) # 80001b38 <mycpu>
    80003448:	07852783          	lw	a5,120(a0)
    8000344c:	01813083          	ld	ra,24(sp)
    80003450:	01013403          	ld	s0,16(sp)
    80003454:	0017879b          	addiw	a5,a5,1
    80003458:	06f52c23          	sw	a5,120(a0)
    8000345c:	00813483          	ld	s1,8(sp)
    80003460:	02010113          	addi	sp,sp,32
    80003464:	00008067          	ret
    80003468:	0014d493          	srli	s1,s1,0x1
    8000346c:	ffffe097          	auipc	ra,0xffffe
    80003470:	6cc080e7          	jalr	1740(ra) # 80001b38 <mycpu>
    80003474:	0014f493          	andi	s1,s1,1
    80003478:	06952e23          	sw	s1,124(a0)
    8000347c:	fc5ff06f          	j	80003440 <push_off+0x34>

0000000080003480 <pop_off>:
    80003480:	ff010113          	addi	sp,sp,-16
    80003484:	00813023          	sd	s0,0(sp)
    80003488:	00113423          	sd	ra,8(sp)
    8000348c:	01010413          	addi	s0,sp,16
    80003490:	ffffe097          	auipc	ra,0xffffe
    80003494:	6a8080e7          	jalr	1704(ra) # 80001b38 <mycpu>
    80003498:	100027f3          	csrr	a5,sstatus
    8000349c:	0027f793          	andi	a5,a5,2
    800034a0:	04079663          	bnez	a5,800034ec <pop_off+0x6c>
    800034a4:	07852783          	lw	a5,120(a0)
    800034a8:	02f05a63          	blez	a5,800034dc <pop_off+0x5c>
    800034ac:	fff7871b          	addiw	a4,a5,-1
    800034b0:	06e52c23          	sw	a4,120(a0)
    800034b4:	00071c63          	bnez	a4,800034cc <pop_off+0x4c>
    800034b8:	07c52783          	lw	a5,124(a0)
    800034bc:	00078863          	beqz	a5,800034cc <pop_off+0x4c>
    800034c0:	100027f3          	csrr	a5,sstatus
    800034c4:	0027e793          	ori	a5,a5,2
    800034c8:	10079073          	csrw	sstatus,a5
    800034cc:	00813083          	ld	ra,8(sp)
    800034d0:	00013403          	ld	s0,0(sp)
    800034d4:	01010113          	addi	sp,sp,16
    800034d8:	00008067          	ret
    800034dc:	00001517          	auipc	a0,0x1
    800034e0:	d3450513          	addi	a0,a0,-716 # 80004210 <digits+0x48>
    800034e4:	fffff097          	auipc	ra,0xfffff
    800034e8:	018080e7          	jalr	24(ra) # 800024fc <panic>
    800034ec:	00001517          	auipc	a0,0x1
    800034f0:	d0c50513          	addi	a0,a0,-756 # 800041f8 <digits+0x30>
    800034f4:	fffff097          	auipc	ra,0xfffff
    800034f8:	008080e7          	jalr	8(ra) # 800024fc <panic>

00000000800034fc <push_on>:
    800034fc:	fe010113          	addi	sp,sp,-32
    80003500:	00813823          	sd	s0,16(sp)
    80003504:	00113c23          	sd	ra,24(sp)
    80003508:	00913423          	sd	s1,8(sp)
    8000350c:	02010413          	addi	s0,sp,32
    80003510:	100024f3          	csrr	s1,sstatus
    80003514:	100027f3          	csrr	a5,sstatus
    80003518:	0027e793          	ori	a5,a5,2
    8000351c:	10079073          	csrw	sstatus,a5
    80003520:	ffffe097          	auipc	ra,0xffffe
    80003524:	618080e7          	jalr	1560(ra) # 80001b38 <mycpu>
    80003528:	07852783          	lw	a5,120(a0)
    8000352c:	02078663          	beqz	a5,80003558 <push_on+0x5c>
    80003530:	ffffe097          	auipc	ra,0xffffe
    80003534:	608080e7          	jalr	1544(ra) # 80001b38 <mycpu>
    80003538:	07852783          	lw	a5,120(a0)
    8000353c:	01813083          	ld	ra,24(sp)
    80003540:	01013403          	ld	s0,16(sp)
    80003544:	0017879b          	addiw	a5,a5,1
    80003548:	06f52c23          	sw	a5,120(a0)
    8000354c:	00813483          	ld	s1,8(sp)
    80003550:	02010113          	addi	sp,sp,32
    80003554:	00008067          	ret
    80003558:	0014d493          	srli	s1,s1,0x1
    8000355c:	ffffe097          	auipc	ra,0xffffe
    80003560:	5dc080e7          	jalr	1500(ra) # 80001b38 <mycpu>
    80003564:	0014f493          	andi	s1,s1,1
    80003568:	06952e23          	sw	s1,124(a0)
    8000356c:	fc5ff06f          	j	80003530 <push_on+0x34>

0000000080003570 <pop_on>:
    80003570:	ff010113          	addi	sp,sp,-16
    80003574:	00813023          	sd	s0,0(sp)
    80003578:	00113423          	sd	ra,8(sp)
    8000357c:	01010413          	addi	s0,sp,16
    80003580:	ffffe097          	auipc	ra,0xffffe
    80003584:	5b8080e7          	jalr	1464(ra) # 80001b38 <mycpu>
    80003588:	100027f3          	csrr	a5,sstatus
    8000358c:	0027f793          	andi	a5,a5,2
    80003590:	04078463          	beqz	a5,800035d8 <pop_on+0x68>
    80003594:	07852783          	lw	a5,120(a0)
    80003598:	02f05863          	blez	a5,800035c8 <pop_on+0x58>
    8000359c:	fff7879b          	addiw	a5,a5,-1
    800035a0:	06f52c23          	sw	a5,120(a0)
    800035a4:	07853783          	ld	a5,120(a0)
    800035a8:	00079863          	bnez	a5,800035b8 <pop_on+0x48>
    800035ac:	100027f3          	csrr	a5,sstatus
    800035b0:	ffd7f793          	andi	a5,a5,-3
    800035b4:	10079073          	csrw	sstatus,a5
    800035b8:	00813083          	ld	ra,8(sp)
    800035bc:	00013403          	ld	s0,0(sp)
    800035c0:	01010113          	addi	sp,sp,16
    800035c4:	00008067          	ret
    800035c8:	00001517          	auipc	a0,0x1
    800035cc:	c7050513          	addi	a0,a0,-912 # 80004238 <digits+0x70>
    800035d0:	fffff097          	auipc	ra,0xfffff
    800035d4:	f2c080e7          	jalr	-212(ra) # 800024fc <panic>
    800035d8:	00001517          	auipc	a0,0x1
    800035dc:	c4050513          	addi	a0,a0,-960 # 80004218 <digits+0x50>
    800035e0:	fffff097          	auipc	ra,0xfffff
    800035e4:	f1c080e7          	jalr	-228(ra) # 800024fc <panic>

00000000800035e8 <__memset>:
    800035e8:	ff010113          	addi	sp,sp,-16
    800035ec:	00813423          	sd	s0,8(sp)
    800035f0:	01010413          	addi	s0,sp,16
    800035f4:	1a060e63          	beqz	a2,800037b0 <__memset+0x1c8>
    800035f8:	40a007b3          	neg	a5,a0
    800035fc:	0077f793          	andi	a5,a5,7
    80003600:	00778693          	addi	a3,a5,7
    80003604:	00b00813          	li	a6,11
    80003608:	0ff5f593          	andi	a1,a1,255
    8000360c:	fff6071b          	addiw	a4,a2,-1
    80003610:	1b06e663          	bltu	a3,a6,800037bc <__memset+0x1d4>
    80003614:	1cd76463          	bltu	a4,a3,800037dc <__memset+0x1f4>
    80003618:	1a078e63          	beqz	a5,800037d4 <__memset+0x1ec>
    8000361c:	00b50023          	sb	a1,0(a0)
    80003620:	00100713          	li	a4,1
    80003624:	1ae78463          	beq	a5,a4,800037cc <__memset+0x1e4>
    80003628:	00b500a3          	sb	a1,1(a0)
    8000362c:	00200713          	li	a4,2
    80003630:	1ae78a63          	beq	a5,a4,800037e4 <__memset+0x1fc>
    80003634:	00b50123          	sb	a1,2(a0)
    80003638:	00300713          	li	a4,3
    8000363c:	18e78463          	beq	a5,a4,800037c4 <__memset+0x1dc>
    80003640:	00b501a3          	sb	a1,3(a0)
    80003644:	00400713          	li	a4,4
    80003648:	1ae78263          	beq	a5,a4,800037ec <__memset+0x204>
    8000364c:	00b50223          	sb	a1,4(a0)
    80003650:	00500713          	li	a4,5
    80003654:	1ae78063          	beq	a5,a4,800037f4 <__memset+0x20c>
    80003658:	00b502a3          	sb	a1,5(a0)
    8000365c:	00700713          	li	a4,7
    80003660:	18e79e63          	bne	a5,a4,800037fc <__memset+0x214>
    80003664:	00b50323          	sb	a1,6(a0)
    80003668:	00700e93          	li	t4,7
    8000366c:	00859713          	slli	a4,a1,0x8
    80003670:	00e5e733          	or	a4,a1,a4
    80003674:	01059e13          	slli	t3,a1,0x10
    80003678:	01c76e33          	or	t3,a4,t3
    8000367c:	01859313          	slli	t1,a1,0x18
    80003680:	006e6333          	or	t1,t3,t1
    80003684:	02059893          	slli	a7,a1,0x20
    80003688:	40f60e3b          	subw	t3,a2,a5
    8000368c:	011368b3          	or	a7,t1,a7
    80003690:	02859813          	slli	a6,a1,0x28
    80003694:	0108e833          	or	a6,a7,a6
    80003698:	03059693          	slli	a3,a1,0x30
    8000369c:	003e589b          	srliw	a7,t3,0x3
    800036a0:	00d866b3          	or	a3,a6,a3
    800036a4:	03859713          	slli	a4,a1,0x38
    800036a8:	00389813          	slli	a6,a7,0x3
    800036ac:	00f507b3          	add	a5,a0,a5
    800036b0:	00e6e733          	or	a4,a3,a4
    800036b4:	000e089b          	sext.w	a7,t3
    800036b8:	00f806b3          	add	a3,a6,a5
    800036bc:	00e7b023          	sd	a4,0(a5)
    800036c0:	00878793          	addi	a5,a5,8
    800036c4:	fed79ce3          	bne	a5,a3,800036bc <__memset+0xd4>
    800036c8:	ff8e7793          	andi	a5,t3,-8
    800036cc:	0007871b          	sext.w	a4,a5
    800036d0:	01d787bb          	addw	a5,a5,t4
    800036d4:	0ce88e63          	beq	a7,a4,800037b0 <__memset+0x1c8>
    800036d8:	00f50733          	add	a4,a0,a5
    800036dc:	00b70023          	sb	a1,0(a4)
    800036e0:	0017871b          	addiw	a4,a5,1
    800036e4:	0cc77663          	bgeu	a4,a2,800037b0 <__memset+0x1c8>
    800036e8:	00e50733          	add	a4,a0,a4
    800036ec:	00b70023          	sb	a1,0(a4)
    800036f0:	0027871b          	addiw	a4,a5,2
    800036f4:	0ac77e63          	bgeu	a4,a2,800037b0 <__memset+0x1c8>
    800036f8:	00e50733          	add	a4,a0,a4
    800036fc:	00b70023          	sb	a1,0(a4)
    80003700:	0037871b          	addiw	a4,a5,3
    80003704:	0ac77663          	bgeu	a4,a2,800037b0 <__memset+0x1c8>
    80003708:	00e50733          	add	a4,a0,a4
    8000370c:	00b70023          	sb	a1,0(a4)
    80003710:	0047871b          	addiw	a4,a5,4
    80003714:	08c77e63          	bgeu	a4,a2,800037b0 <__memset+0x1c8>
    80003718:	00e50733          	add	a4,a0,a4
    8000371c:	00b70023          	sb	a1,0(a4)
    80003720:	0057871b          	addiw	a4,a5,5
    80003724:	08c77663          	bgeu	a4,a2,800037b0 <__memset+0x1c8>
    80003728:	00e50733          	add	a4,a0,a4
    8000372c:	00b70023          	sb	a1,0(a4)
    80003730:	0067871b          	addiw	a4,a5,6
    80003734:	06c77e63          	bgeu	a4,a2,800037b0 <__memset+0x1c8>
    80003738:	00e50733          	add	a4,a0,a4
    8000373c:	00b70023          	sb	a1,0(a4)
    80003740:	0077871b          	addiw	a4,a5,7
    80003744:	06c77663          	bgeu	a4,a2,800037b0 <__memset+0x1c8>
    80003748:	00e50733          	add	a4,a0,a4
    8000374c:	00b70023          	sb	a1,0(a4)
    80003750:	0087871b          	addiw	a4,a5,8
    80003754:	04c77e63          	bgeu	a4,a2,800037b0 <__memset+0x1c8>
    80003758:	00e50733          	add	a4,a0,a4
    8000375c:	00b70023          	sb	a1,0(a4)
    80003760:	0097871b          	addiw	a4,a5,9
    80003764:	04c77663          	bgeu	a4,a2,800037b0 <__memset+0x1c8>
    80003768:	00e50733          	add	a4,a0,a4
    8000376c:	00b70023          	sb	a1,0(a4)
    80003770:	00a7871b          	addiw	a4,a5,10
    80003774:	02c77e63          	bgeu	a4,a2,800037b0 <__memset+0x1c8>
    80003778:	00e50733          	add	a4,a0,a4
    8000377c:	00b70023          	sb	a1,0(a4)
    80003780:	00b7871b          	addiw	a4,a5,11
    80003784:	02c77663          	bgeu	a4,a2,800037b0 <__memset+0x1c8>
    80003788:	00e50733          	add	a4,a0,a4
    8000378c:	00b70023          	sb	a1,0(a4)
    80003790:	00c7871b          	addiw	a4,a5,12
    80003794:	00c77e63          	bgeu	a4,a2,800037b0 <__memset+0x1c8>
    80003798:	00e50733          	add	a4,a0,a4
    8000379c:	00b70023          	sb	a1,0(a4)
    800037a0:	00d7879b          	addiw	a5,a5,13
    800037a4:	00c7f663          	bgeu	a5,a2,800037b0 <__memset+0x1c8>
    800037a8:	00f507b3          	add	a5,a0,a5
    800037ac:	00b78023          	sb	a1,0(a5)
    800037b0:	00813403          	ld	s0,8(sp)
    800037b4:	01010113          	addi	sp,sp,16
    800037b8:	00008067          	ret
    800037bc:	00b00693          	li	a3,11
    800037c0:	e55ff06f          	j	80003614 <__memset+0x2c>
    800037c4:	00300e93          	li	t4,3
    800037c8:	ea5ff06f          	j	8000366c <__memset+0x84>
    800037cc:	00100e93          	li	t4,1
    800037d0:	e9dff06f          	j	8000366c <__memset+0x84>
    800037d4:	00000e93          	li	t4,0
    800037d8:	e95ff06f          	j	8000366c <__memset+0x84>
    800037dc:	00000793          	li	a5,0
    800037e0:	ef9ff06f          	j	800036d8 <__memset+0xf0>
    800037e4:	00200e93          	li	t4,2
    800037e8:	e85ff06f          	j	8000366c <__memset+0x84>
    800037ec:	00400e93          	li	t4,4
    800037f0:	e7dff06f          	j	8000366c <__memset+0x84>
    800037f4:	00500e93          	li	t4,5
    800037f8:	e75ff06f          	j	8000366c <__memset+0x84>
    800037fc:	00600e93          	li	t4,6
    80003800:	e6dff06f          	j	8000366c <__memset+0x84>

0000000080003804 <__memmove>:
    80003804:	ff010113          	addi	sp,sp,-16
    80003808:	00813423          	sd	s0,8(sp)
    8000380c:	01010413          	addi	s0,sp,16
    80003810:	0e060863          	beqz	a2,80003900 <__memmove+0xfc>
    80003814:	fff6069b          	addiw	a3,a2,-1
    80003818:	0006881b          	sext.w	a6,a3
    8000381c:	0ea5e863          	bltu	a1,a0,8000390c <__memmove+0x108>
    80003820:	00758713          	addi	a4,a1,7
    80003824:	00a5e7b3          	or	a5,a1,a0
    80003828:	40a70733          	sub	a4,a4,a0
    8000382c:	0077f793          	andi	a5,a5,7
    80003830:	00f73713          	sltiu	a4,a4,15
    80003834:	00174713          	xori	a4,a4,1
    80003838:	0017b793          	seqz	a5,a5
    8000383c:	00e7f7b3          	and	a5,a5,a4
    80003840:	10078863          	beqz	a5,80003950 <__memmove+0x14c>
    80003844:	00900793          	li	a5,9
    80003848:	1107f463          	bgeu	a5,a6,80003950 <__memmove+0x14c>
    8000384c:	0036581b          	srliw	a6,a2,0x3
    80003850:	fff8081b          	addiw	a6,a6,-1
    80003854:	02081813          	slli	a6,a6,0x20
    80003858:	01d85893          	srli	a7,a6,0x1d
    8000385c:	00858813          	addi	a6,a1,8
    80003860:	00058793          	mv	a5,a1
    80003864:	00050713          	mv	a4,a0
    80003868:	01088833          	add	a6,a7,a6
    8000386c:	0007b883          	ld	a7,0(a5)
    80003870:	00878793          	addi	a5,a5,8
    80003874:	00870713          	addi	a4,a4,8
    80003878:	ff173c23          	sd	a7,-8(a4)
    8000387c:	ff0798e3          	bne	a5,a6,8000386c <__memmove+0x68>
    80003880:	ff867713          	andi	a4,a2,-8
    80003884:	02071793          	slli	a5,a4,0x20
    80003888:	0207d793          	srli	a5,a5,0x20
    8000388c:	00f585b3          	add	a1,a1,a5
    80003890:	40e686bb          	subw	a3,a3,a4
    80003894:	00f507b3          	add	a5,a0,a5
    80003898:	06e60463          	beq	a2,a4,80003900 <__memmove+0xfc>
    8000389c:	0005c703          	lbu	a4,0(a1)
    800038a0:	00e78023          	sb	a4,0(a5)
    800038a4:	04068e63          	beqz	a3,80003900 <__memmove+0xfc>
    800038a8:	0015c603          	lbu	a2,1(a1)
    800038ac:	00100713          	li	a4,1
    800038b0:	00c780a3          	sb	a2,1(a5)
    800038b4:	04e68663          	beq	a3,a4,80003900 <__memmove+0xfc>
    800038b8:	0025c603          	lbu	a2,2(a1)
    800038bc:	00200713          	li	a4,2
    800038c0:	00c78123          	sb	a2,2(a5)
    800038c4:	02e68e63          	beq	a3,a4,80003900 <__memmove+0xfc>
    800038c8:	0035c603          	lbu	a2,3(a1)
    800038cc:	00300713          	li	a4,3
    800038d0:	00c781a3          	sb	a2,3(a5)
    800038d4:	02e68663          	beq	a3,a4,80003900 <__memmove+0xfc>
    800038d8:	0045c603          	lbu	a2,4(a1)
    800038dc:	00400713          	li	a4,4
    800038e0:	00c78223          	sb	a2,4(a5)
    800038e4:	00e68e63          	beq	a3,a4,80003900 <__memmove+0xfc>
    800038e8:	0055c603          	lbu	a2,5(a1)
    800038ec:	00500713          	li	a4,5
    800038f0:	00c782a3          	sb	a2,5(a5)
    800038f4:	00e68663          	beq	a3,a4,80003900 <__memmove+0xfc>
    800038f8:	0065c703          	lbu	a4,6(a1)
    800038fc:	00e78323          	sb	a4,6(a5)
    80003900:	00813403          	ld	s0,8(sp)
    80003904:	01010113          	addi	sp,sp,16
    80003908:	00008067          	ret
    8000390c:	02061713          	slli	a4,a2,0x20
    80003910:	02075713          	srli	a4,a4,0x20
    80003914:	00e587b3          	add	a5,a1,a4
    80003918:	f0f574e3          	bgeu	a0,a5,80003820 <__memmove+0x1c>
    8000391c:	02069613          	slli	a2,a3,0x20
    80003920:	02065613          	srli	a2,a2,0x20
    80003924:	fff64613          	not	a2,a2
    80003928:	00e50733          	add	a4,a0,a4
    8000392c:	00c78633          	add	a2,a5,a2
    80003930:	fff7c683          	lbu	a3,-1(a5)
    80003934:	fff78793          	addi	a5,a5,-1
    80003938:	fff70713          	addi	a4,a4,-1
    8000393c:	00d70023          	sb	a3,0(a4)
    80003940:	fec798e3          	bne	a5,a2,80003930 <__memmove+0x12c>
    80003944:	00813403          	ld	s0,8(sp)
    80003948:	01010113          	addi	sp,sp,16
    8000394c:	00008067          	ret
    80003950:	02069713          	slli	a4,a3,0x20
    80003954:	02075713          	srli	a4,a4,0x20
    80003958:	00170713          	addi	a4,a4,1
    8000395c:	00e50733          	add	a4,a0,a4
    80003960:	00050793          	mv	a5,a0
    80003964:	0005c683          	lbu	a3,0(a1)
    80003968:	00178793          	addi	a5,a5,1
    8000396c:	00158593          	addi	a1,a1,1
    80003970:	fed78fa3          	sb	a3,-1(a5)
    80003974:	fee798e3          	bne	a5,a4,80003964 <__memmove+0x160>
    80003978:	f89ff06f          	j	80003900 <__memmove+0xfc>

000000008000397c <__putc>:
    8000397c:	fe010113          	addi	sp,sp,-32
    80003980:	00813823          	sd	s0,16(sp)
    80003984:	00113c23          	sd	ra,24(sp)
    80003988:	02010413          	addi	s0,sp,32
    8000398c:	00050793          	mv	a5,a0
    80003990:	fef40593          	addi	a1,s0,-17
    80003994:	00100613          	li	a2,1
    80003998:	00000513          	li	a0,0
    8000399c:	fef407a3          	sb	a5,-17(s0)
    800039a0:	fffff097          	auipc	ra,0xfffff
    800039a4:	b3c080e7          	jalr	-1220(ra) # 800024dc <console_write>
    800039a8:	01813083          	ld	ra,24(sp)
    800039ac:	01013403          	ld	s0,16(sp)
    800039b0:	02010113          	addi	sp,sp,32
    800039b4:	00008067          	ret

00000000800039b8 <__getc>:
    800039b8:	fe010113          	addi	sp,sp,-32
    800039bc:	00813823          	sd	s0,16(sp)
    800039c0:	00113c23          	sd	ra,24(sp)
    800039c4:	02010413          	addi	s0,sp,32
    800039c8:	fe840593          	addi	a1,s0,-24
    800039cc:	00100613          	li	a2,1
    800039d0:	00000513          	li	a0,0
    800039d4:	fffff097          	auipc	ra,0xfffff
    800039d8:	ae8080e7          	jalr	-1304(ra) # 800024bc <console_read>
    800039dc:	fe844503          	lbu	a0,-24(s0)
    800039e0:	01813083          	ld	ra,24(sp)
    800039e4:	01013403          	ld	s0,16(sp)
    800039e8:	02010113          	addi	sp,sp,32
    800039ec:	00008067          	ret

00000000800039f0 <console_handler>:
    800039f0:	fe010113          	addi	sp,sp,-32
    800039f4:	00813823          	sd	s0,16(sp)
    800039f8:	00113c23          	sd	ra,24(sp)
    800039fc:	00913423          	sd	s1,8(sp)
    80003a00:	02010413          	addi	s0,sp,32
    80003a04:	14202773          	csrr	a4,scause
    80003a08:	100027f3          	csrr	a5,sstatus
    80003a0c:	0027f793          	andi	a5,a5,2
    80003a10:	06079e63          	bnez	a5,80003a8c <console_handler+0x9c>
    80003a14:	00074c63          	bltz	a4,80003a2c <console_handler+0x3c>
    80003a18:	01813083          	ld	ra,24(sp)
    80003a1c:	01013403          	ld	s0,16(sp)
    80003a20:	00813483          	ld	s1,8(sp)
    80003a24:	02010113          	addi	sp,sp,32
    80003a28:	00008067          	ret
    80003a2c:	0ff77713          	andi	a4,a4,255
    80003a30:	00900793          	li	a5,9
    80003a34:	fef712e3          	bne	a4,a5,80003a18 <console_handler+0x28>
    80003a38:	ffffe097          	auipc	ra,0xffffe
    80003a3c:	6dc080e7          	jalr	1756(ra) # 80002114 <plic_claim>
    80003a40:	00a00793          	li	a5,10
    80003a44:	00050493          	mv	s1,a0
    80003a48:	02f50c63          	beq	a0,a5,80003a80 <console_handler+0x90>
    80003a4c:	fc0506e3          	beqz	a0,80003a18 <console_handler+0x28>
    80003a50:	00050593          	mv	a1,a0
    80003a54:	00000517          	auipc	a0,0x0
    80003a58:	6ec50513          	addi	a0,a0,1772 # 80004140 <_ZZ12printIntegermE6digits+0xe0>
    80003a5c:	fffff097          	auipc	ra,0xfffff
    80003a60:	afc080e7          	jalr	-1284(ra) # 80002558 <__printf>
    80003a64:	01013403          	ld	s0,16(sp)
    80003a68:	01813083          	ld	ra,24(sp)
    80003a6c:	00048513          	mv	a0,s1
    80003a70:	00813483          	ld	s1,8(sp)
    80003a74:	02010113          	addi	sp,sp,32
    80003a78:	ffffe317          	auipc	t1,0xffffe
    80003a7c:	6d430067          	jr	1748(t1) # 8000214c <plic_complete>
    80003a80:	fffff097          	auipc	ra,0xfffff
    80003a84:	3e0080e7          	jalr	992(ra) # 80002e60 <uartintr>
    80003a88:	fddff06f          	j	80003a64 <console_handler+0x74>
    80003a8c:	00000517          	auipc	a0,0x0
    80003a90:	7b450513          	addi	a0,a0,1972 # 80004240 <digits+0x78>
    80003a94:	fffff097          	auipc	ra,0xfffff
    80003a98:	a68080e7          	jalr	-1432(ra) # 800024fc <panic>
	...

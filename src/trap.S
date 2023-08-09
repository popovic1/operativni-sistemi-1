.extern interruptHandler
.global supervisorTrap
.align 4

supervisorTrap:
            addi sp, sp, -256
            sd sp, 0x00(sp)
            sd ra, 0x08(sp)
            sd s0, 0x10(sp)
            sd s1, 0x18(sp)
            sd s2, 0x20(sp)
            sd s3, 0x28(sp)
            sd s4, 0x30(sp)
            sd s5, 0x38(sp)
            sd s6, 0x40(sp)
            sd s7, 0x48(sp)
            sd s8, 0x50(sp)
            sd s9, 0x58(sp)
            sd s10, 0x60(sp)
            sd s11, 0x68(sp)

            sd a2, 0x80(sp)
            sd a3, 0x88(sp)
            sd a4, 0x90(sp)
            sd a5, 0x98(sp)
            sd a6, 0xA0(sp)
            sd a7, 0xA8(sp)
            sd t0, 0xB0(sp)
            sd t1, 0xB8(sp)
            sd t2, 0xC0(sp)
            sd t3, 0xC8(sp)
            sd t4, 0xD0(sp)
            sd t5, 0xD8(sp)
            sd t6, 0xE0(sp)
            sd zero, 0xE8(sp)
            sd gp, 0xF0(sp)
            sd tp, 0xF8(sp)

            call interruptHandler

            ld sp, 0x00(sp)
            ld ra, 0x08(sp)
            ld s0, 0x10(sp)
            ld s1, 0x18(sp)
            ld s2, 0x20(sp)
            ld s3, 0x28(sp)
            ld s4, 0x30(sp)
            ld s5, 0x38(sp)
            ld s6, 0x40(sp)
            ld s7, 0x48(sp)
            ld s8, 0x50(sp)
            ld s9, 0x58(sp)
            ld s10, 0x60(sp)
            ld s11, 0x68(sp)

            ld a2, 0x80(sp)
            ld a3, 0x88(sp)
            ld a4, 0x90(sp)
            ld a5, 0x98(sp)
            ld a6, 0xA0(sp)
            ld a7, 0xA8(sp)
            ld t0, 0xB0(sp)
            ld t1, 0xB8(sp)
            ld t2, 0xC0(sp)
            ld t3, 0xC8(sp)
            ld t4, 0xD0(sp)
            ld t5, 0xD8(sp)
            ld t6, 0xE0(sp)
            ld zero, 0xE8(sp)
            ld gp, 0xF0(sp)
            ld tp, 0xF8(sp)

            addi sp, sp, 256



            sret



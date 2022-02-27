.include "asm/gba_constants.inc"
.include "asm/macro.inc"
.syntax unified

	thumb_func_start ArcTan2
ArcTan2: @ 0x0803D340
	svc #10
	bx lr

	thumb_func_start BgAffineSet
BgAffineSet: @ 0x0803D344
	svc #14
	bx lr

	thumb_func_start CpuSet
CpuSet: @ 0x0803D348
	svc #11
	bx lr

	thumb_func_start Div
Div: @ 0x0803D34C
	svc #6
	bx lr

	thumb_func_start DivRem
DivRem: @ 0x0803D350
	svc #6
	adds r0, r1, #0
	bx lr
	.align 2, 0

	thumb_func_start LZ77UnCompVram
LZ77UnCompVram: @ 0x0803D358
	svc #18
	bx lr

	thumb_func_start LZ77UnCompWram
LZ77UnCompWram: @ 0x0803D35C
	svc #17
	bx lr

	thumb_func_start ObjAffineSet
ObjAffineSet: @ 0x0803D360
	svc #15
	bx lr

	thumb_func_start SoftReset
SoftReset: @ 0x0803D364
	ldr r3, _0803D374 @ =REG_IME
	movs r2, #0
	strb r2, [r3]
	ldr r1, _0803D378 @ =gUnknown_03007F00
	mov sp, r1
	svc #1
	svc #0
	movs r0, r0
	.align 2, 0
_0803D374: .4byte REG_IME
_0803D378: .4byte gUnknown_03007F00

	thumb_func_start Sqrt
Sqrt: @ 0x0803D37C
	svc #8
	bx lr

	thumb_func_start VBlankIntrWait
VBlankIntrWait: @ 0x0803D380
	movs r2, #0
	svc #5
	bx lr
	.align 2, 0

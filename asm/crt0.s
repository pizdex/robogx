.include "asm/macro.inc"
.syntax unified

	arm_func_start Start
Start: @ 0x08000000
	b Init

.include "asm/rom_header.inc"

	arm_func_start Init
Init: @ 0x080000C0
	b sub_080000C8
	.byte 0x00, 0x00, 0x00, 0x00

	arm_func_start sub_080000C8
sub_080000C8: @ 0x080000C8
	mov r0, #0x12
	msr cpsr_fc, r0
	ldr sp, _08000514 @ =0x03007FA0
	mov r0, #0x1f
	msr cpsr_fc, r0
	ldr sp, _08000518 @ =0x03007800
	ldr r1, _0800051C @ =0x08000AF5
	mov lr, pc
	bx r1
	b sub_080000C8

	arm_func_start sub_080000F0
sub_080000F0: @ 0x080000F0
	ldr r3, _08000520 @ =0x04000200
	ldr r2, [r3]
	and r1, r2, r2, lsr #16
	ands r0, r1, #4
	bne _08000208
	ands r0, r1, #1
	bne _0800019C
	ands r0, r1, #0xa0
	bne _08000138
	ands r0, r1, #0x1000
	bne _08000180
	ands r0, r1, #0x40
	bne _08000160
	ands r0, r1, #0x2000
	bne _08000274
	ldr r0, _08000524 @ =0x0000FFFF
	strh r0, [r3, #2]
	bx lr
_08000138:
	strh r0, [r3, #2]
	ldr r0, _08000528 @ =0x03000B60
	ldr r1, [r0]
	add r2, r0, #4
	ldr r2, [r2, r1, lsl #2]
	stmdb sp!, {lr}
	mov lr, pc
	bx r2
	ldmia sp!, {lr}
	bx lr
_08000160:
	strh r0, [r3, #2]
	ldr r0, _0800052C @ =0x03001370
	ldr r0, [r0]
	stmdb sp!, {lr}
	mov lr, pc
	bx r0
	ldmia sp!, {lr}
	bx lr
_08000180:
	strh r0, [r3, #2]
	ldr r0, _08000530 @ =0x080008A9
	stmdb sp!, {lr}
	mov lr, pc
	bx r0
	ldmia sp!, {lr}
	bx lr
_0800019C:
	strh r0, [r3, #2]
	ldrh r1, [r3, #8]
	mov r0, #1
	strh r0, [r3, #8]
	mrs r0, spsr
	push {r0, r1, r2, lr}
	bic r0, r2, #5
	strh r0, [r3]
	mrs r0, apsr
	bic r0, r0, #0xdf
	orr r0, r0, #0x1f
	msr cpsr_fc, r0
	stmdb sp!, {lr}
	ldr r0, _08000534 @ =0x08000909
	mov lr, pc
	bx r0
	ldm sp!, {lr}
	mrs r0, apsr
	bic r0, r0, #0xdf
	orr r0, r0, #0x92
	msr cpsr_fc, r0
	pop {r0, r1, r2, lr}
	ldr r3, _08000520 @ =0x04000200
	strh r2, [r3]
	strh r1, [r3, #8]
	msr spsr_fc, r0
	bx lr
_08000208:
	strh r0, [r3, #2]
	ldrh r1, [r3, #8]
	mov r0, #1
	strh r0, [r3, #8]
	mrs r0, spsr
	push {r0, r1, r2, lr}
	bic r0, r2, #5
	strh r0, [r3]
	mrs r0, apsr
	bic r0, r0, #0xdf
	orr r0, r0, #0x1f
	msr cpsr_fc, r0
	stmdb sp!, {lr}
	ldr r0, _08000538 @ =0x08000985
	mov lr, pc
	bx r0
	ldm sp!, {lr}
	mrs r0, apsr
	bic r0, r0, #0xdf
	orr r0, r0, #0x92
	msr cpsr_fc, r0
	pop {r0, r1, r2, lr}
	ldr r3, _08000520 @ =0x04000200
	strh r2, [r3]
	strh r1, [r3, #8]
	msr spsr_fc, r0
	bx lr
_08000274:
	ldr r0, _0800053C @ =0x04000084
	mov r1, #0
	strh r1, [r0]
	b _08000284
_08000284:
	mov r0, #0x4000000
	mov r1, #0
	strh r1, [r0]
	mov r0, #0x5000000
	mov r1, #0x1f
	strh r1, [r0]
_0800029C:
	b _0800029C
	b _0800029C
	b _0800029C

	arm_func_start sub_080002A8
sub_080002A8: @ 0x080002A8
	mov r0, #0x4000000
	mov r1, #0
	strh r1, [r0]
	mov r0, #0x5000000
	mov r1, #0x7c00
	strh r1, [r0]
	b _0800029C

	thumb_func_start sub_080002C4
sub_080002C4: @ 0x080002C4
	ldr r3, _080002D0 @ =0x03002DD4
	bx r3
	.align 4, 0
_080002D0: .4byte 0x03002DD4

	arm_func_start sub_080002D4
sub_080002D4: @ 0x080002D4
	add r2, r1, r2
_080002D8:
	ldm r1!, {r3}
	stm r0!, {r3}
	cmp r1, r2
	bne _080002D8
	bx lr

	thumb_func_start sub_080002EC
sub_080002EC: @ 0x080002EC
	ldr r3, _080002F0 @ =0x03002DF4
	bx r3
	.align 2, 0
_080002F0: .4byte 0x03002DF4

	arm_func_start sub_080002F4
sub_080002F4: @ 0x080002F4
	add r2, r1, r2
_080002F8:
	ldrh r3, [r1]
	strh r3, [r0]
	add r1, r1, #2
	add r0, r0, #2
	cmp r1, r2
	bne _080002F8
	bx lr

	thumb_func_start sub_08000314
sub_08000314: @ 0x08000314
	ldr r3, _08000320 @ =0x03002E24
	bx r3
	.align 4, 0
_08000320: .4byte 0x03002E24

	arm_func_start sub_08000324
sub_08000324: @ 0x08000324
	add r2, r1, r2
_08000328:
	ldm r1!, {r3}
	stm r0!, {r3}
	ldm r1!, {r3}
	stm r0!, {r3}
	ldm r1!, {r3}
	stm r0!, {r3}
	ldm r1!, {r3}
	stm r0!, {r3}
	ldm r1!, {r3}
	stm r0!, {r3}
	ldm r1!, {r3}
	stm r0!, {r3}
	ldm r1!, {r3}
	stm r0!, {r3}
	ldm r1!, {r3}
	stm r0!, {r3}
	ldm r1!, {r3}
	stm r0!, {r3}
	ldm r1!, {r3}
	stm r0!, {r3}
	ldm r1!, {r3}
	stm r0!, {r3}
	ldm r1!, {r3}
	stm r0!, {r3}
	ldm r1!, {r3}
	stm r0!, {r3}
	ldm r1!, {r3}
	stm r0!, {r3}
	ldm r1!, {r3}
	stm r0!, {r3}
	ldm r1!, {r3}
	stm r0!, {r3}
	cmp r1, r2
	bne _08000328
	bx lr

	thumb_func_start sub_080003B4
sub_080003B4: @ 0x080003B4
	ldr r3, _080003C0 @ =0x03002EC4
	bx r3
	.align 4, 0
_080003C0: .4byte 0x03002EC4

	arm_func_start sub_080003C4
sub_080003C4: @ 0x080003C4
	mov r3, r1
	add r0, r0, r2
	add r1, r1, r2
_080003D0:
	ldmdb r1!, {r2}
	stmdb r0!, {r2}
	ldmdb r1!, {r2}
	stmdb r0!, {r2}
	ldmdb r1!, {r2}
	stmdb r0!, {r2}
	ldmdb r1!, {r2}
	stmdb r0!, {r2}
	ldmdb r1!, {r2}
	stmdb r0!, {r2}
	ldmdb r1!, {r2}
	stmdb r0!, {r2}
	ldmdb r1!, {r2}
	stmdb r0!, {r2}
	ldmdb r1!, {r2}
	stmdb r0!, {r2}
	ldmdb r1!, {r2}
	stmdb r0!, {r2}
	ldmdb r1!, {r2}
	stmdb r0!, {r2}
	ldmdb r1!, {r2}
	stmdb r0!, {r2}
	ldmdb r1!, {r2}
	stmdb r0!, {r2}
	ldmdb r1!, {r2}
	stmdb r0!, {r2}
	ldmdb r1!, {r2}
	stmdb r0!, {r2}
	ldmdb r1!, {r2}
	stmdb r0!, {r2}
	ldmdb r1!, {r2}
	stmdb r0!, {r2}
	cmp r1, r3
	bne _080003D0
	bx lr

	thumb_func_start sub_0800045C
sub_0800045C: @ 0x0800045C
	push {r4, r5}
	ldr r4, _08000470 @ =0x03002F74
	bx r4
	.align 4, 0
_08000470: .4byte 0x03002F74

	arm_func_start sub_08000474
sub_08000474: @ 0x08000474
	add r3, r1, r3
_08000478:
	ldm r1!, {r4}
	ldm r2!, {r5}
	add r4, r4, r5
	stm r0!, {r4}
	cmp r1, r3
	bne _08000478
	pop {r4, r5}
	bx lr

	thumb_func_start sub_08000498
sub_08000498: @ 0x08000498
	ldr r3, _080004A0 @ =0x03002FA4
	bx r3
	.align 4, 0
_080004A0: .4byte 0x03002FA4

	arm_func_start sub_080004A4
sub_080004A4: @ 0x080004A4
	add r1, r0, r1
_080004A8:
	stm r0!, {r2}
	cmp r0, r1
	bne _080004A8
	bx lr

	thumb_func_start sub_080004B8
sub_080004B8: @ 0x080004B8
	ldr r3, _080004C0 @ =0x03002FC4
	bx r3
	.align 4, 0
_080004C0: .4byte 0x03002FC4

	arm_func_start sub_080004C4
sub_080004C4: @ 0x080004C4
	add r1, r0, r1
_080004C8:
	stm r0!, {r2}
	stm r0!, {r2}
	stm r0!, {r2}
	stm r0!, {r2}
	stm r0!, {r2}
	stm r0!, {r2}
	stm r0!, {r2}
	stm r0!, {r2}
	stm r0!, {r2}
	stm r0!, {r2}
	stm r0!, {r2}
	stm r0!, {r2}
	stm r0!, {r2}
	stm r0!, {r2}
	stm r0!, {r2}
	stm r0!, {r2}
	cmp r0, r1
	bne _080004C8
	bx lr
	.align 2, 0
_08000514: .4byte 0x03007FA0
_08000518: .4byte 0x03007800
_0800051C: .4byte 0x08000AF5
_08000520: .4byte 0x04000200
_08000524: .4byte 0x0000FFFF
_08000528: .4byte 0x03000B60
_0800052C: .4byte 0x03001370
_08000530: .4byte 0x080008A9
_08000534: .4byte 0x08000909
_08000538: .4byte 0x08000985
_0800053C: .4byte 0x04000084
_08000540: .byte 0x68, 0x46, 0x70, 0x47
_08000544: .byte 0x70, 0x46, 0x70, 0x47

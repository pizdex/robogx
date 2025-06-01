.include "asm/gba_constants.inc"
.include "asm/macro.inc"
.syntax unified

	thumb_func_start sub_0800A554
sub_0800A554: @ 0x0800A554
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r4, r0, #0
	lsrs r6, r1, #2
	lsls r0, r6, #2
	subs r7, r1, r0
	movs r5, #0
	cmp r5, r6
	bhs _0800A586
_0800A566:
	ldrb r0, [r4, #3]
	lsls r0, r0, #0x18
	ldrb r1, [r4, #2]
	lsls r1, r1, #0x10
	orrs r0, r1
	ldrb r1, [r4, #1]
	lsls r1, r1, #8
	orrs r0, r1
	ldrb r1, [r4]
	orrs r0, r1
	adds r4, #4
	bl sub_0800A4EC
	adds r5, #1
	cmp r5, r6
	blo _0800A566
_0800A586:
	cmp r7, #0
	beq _0800A5AA
	movs r0, #0
	str r0, [sp]
	movs r5, #0
	cmp r5, r7
	bhs _0800A5A4
	mov r2, sp
_0800A596:
	ldrb r1, [r4]
	adds r4, #1
	adds r0, r5, r2
	strb r1, [r0]
	adds r5, #1
	cmp r5, r7
	blo _0800A596
_0800A5A4:
	ldr r0, [sp]
	bl sub_0800A4EC
_0800A5AA:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800A5B4
sub_0800A5B4: @ 0x0800A5B4
	push {r4, r5, r6, lr}
	sub sp, #4
	lsrs r6, r1, #2
	lsls r2, r6, #2
	subs r4, r1, r2
	adds r5, r0, r1
	cmp r4, #0
	beq _0800A5E0
	bl sub_0800A520
	str r0, [sp]
	subs r4, #1
	cmp r4, #0
	blt _0800A5E0
	mov r1, sp
_0800A5D2:
	adds r0, r4, r1
	ldrb r0, [r0]
	subs r5, #1
	strb r0, [r5]
	subs r4, #1
	cmp r4, #0
	bge _0800A5D2
_0800A5E0:
	movs r4, #0
	cmp r4, r6
	bhs _0800A600
_0800A5E6:
	bl sub_0800A520
	subs r5, #4
	strb r0, [r5]
	lsrs r1, r0, #8
	strb r1, [r5, #1]
	lsrs r1, r0, #0x10
	strb r1, [r5, #2]
	lsrs r1, r0, #0x18
	strb r1, [r5, #3]
	adds r4, #1
	cmp r4, r6
	blo _0800A5E6
_0800A600:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_0800A608
sub_0800A608: @ 0x0800A608
	ldr r1, _0800A624 @ =gUnknown_0200C1A0
	movs r2, #0xb2
	lsls r2, r2, #4
	adds r0, r1, r2
	movs r2, #0
	strb r2, [r0]
	ldr r3, _0800A628 @ =0x000027B0
	adds r0, r1, r3
	strb r2, [r0]
	ldr r0, _0800A62C @ =0x00000C24
	adds r1, r1, r0
	strb r2, [r1]
	bx lr
	.align 2, 0
_0800A624: .4byte gUnknown_0200C1A0
_0800A628: .4byte 0x000027B0
_0800A62C: .4byte 0x00000C24

	thumb_func_start sub_0800A630
sub_0800A630: @ 0x0800A630
	push {r4, r5, lr}
	adds r3, r0, #0
	adds r1, #1
	ldrb r2, [r1]
	adds r1, #1
	cmp r2, #0
	beq _0800A65A
	movs r5, #0x3f
	movs r4, #0x7e
_0800A642:
	ldrb r0, [r1]
	adds r1, #1
	eors r2, r5
	eors r0, r4
	strb r2, [r3]
	adds r3, #1
	strb r0, [r3]
	adds r3, #1
	ldrb r2, [r1]
	adds r1, #1
	cmp r2, #0
	bne _0800A642
_0800A65A:
	movs r0, #0
	strb r0, [r3]
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_0800A664
sub_0800A664: @ 0x0800A664
	push {r4, lr}
	bl sub_08011880
	adds r1, r0, #0
	movs r2, #0
	ldrb r0, [r1]
	cmp r0, #0xff
	bne _0800A676
	movs r2, #1
_0800A676:
	cmp r2, #0
	bne _0800A67E
	adds r0, r1, #0
	b _0800A688
_0800A67E:
	ldr r4, _0800A690 @ =gUnknown_0200E954
	adds r0, r4, #0
	bl sub_0800A630
	adds r0, r4, #0
_0800A688:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0800A690: .4byte gUnknown_0200E954

	thumb_func_start sub_0800A694
sub_0800A694: @ 0x0800A694
	push {lr}
	adds r2, r0, #0
	ldr r0, _0800A728 @ =0x00008340
	movs r3, #0
	cmp r0, r2
	bgt _0800A6A8
	adds r0, #0x3e
	cmp r2, r0
	bgt _0800A6A8
	movs r3, #1
_0800A6A8:
	cmp r3, #0
	beq _0800A6AE
	subs r2, #0xa1
_0800A6AE:
	ldr r0, _0800A728 @ =0x00008340
	movs r3, #0
	cmp r0, r1
	bgt _0800A6BE
	adds r0, #0x3e
	cmp r1, r0
	bgt _0800A6BE
	movs r3, #1
_0800A6BE:
	cmp r3, #0
	beq _0800A6C4
	subs r1, #0xa1
_0800A6C4:
	ldr r0, _0800A72C @ =0x00008380
	movs r3, #0
	cmp r0, r2
	bgt _0800A6D4
	adds r0, #0x13
	cmp r2, r0
	bgt _0800A6D4
	movs r3, #1
_0800A6D4:
	cmp r3, #0
	beq _0800A6DA
	subs r2, #0xa2
_0800A6DA:
	ldr r0, _0800A72C @ =0x00008380
	movs r3, #0
	cmp r0, r1
	bgt _0800A6EA
	adds r0, #0x13
	cmp r1, r0
	bgt _0800A6EA
	movs r3, #1
_0800A6EA:
	cmp r3, #0
	beq _0800A6F0
	subs r1, #0xa2
_0800A6F0:
	ldr r0, _0800A730 @ =0x00008281
	movs r3, #0
	cmp r0, r2
	bgt _0800A700
	adds r0, #0x19
	cmp r2, r0
	bgt _0800A700
	movs r3, #1
_0800A700:
	cmp r3, #0
	beq _0800A706
	subs r2, #0x21
_0800A706:
	ldr r0, _0800A730 @ =0x00008281
	movs r3, #0
	cmp r0, r1
	bgt _0800A716
	adds r0, #0x19
	cmp r1, r0
	bgt _0800A716
	movs r3, #1
_0800A716:
	cmp r3, #0
	beq _0800A71C
	subs r1, #0x21
_0800A71C:
	movs r0, #0
	cmp r2, r1
	bne _0800A724
	movs r0, #1
_0800A724:
	pop {r1}
	bx r1
	.align 2, 0
_0800A728: .4byte 0x00008340
_0800A72C: .4byte 0x00008380
_0800A730: .4byte 0x00008281

	thumb_func_start sub_0800A734
sub_0800A734: @ 0x0800A734
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
_0800A73A:
	ldrb r0, [r5]
	adds r5, #1
	ldrb r3, [r4]
	adds r4, #1
	cmp r0, #0
	bne _0800A74E
	cmp r3, #0
	bne _0800A770
	movs r0, #1
	b _0800A772
_0800A74E:
	cmp r0, #0x7f
	bhi _0800A758
	cmp r0, r3
	beq _0800A73A
	b _0800A770
_0800A758:
	ldrb r1, [r5]
	adds r5, #1
	ldrb r2, [r4]
	adds r4, #1
	lsls r0, r0, #8
	orrs r0, r1
	lsls r1, r3, #8
	orrs r1, r2
	bl sub_0800A694
	cmp r0, #0
	bne _0800A73A
_0800A770:
	movs r0, #0
_0800A772:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0800A778
sub_0800A778: @ 0x0800A778
	push {r4, lr}
	adds r3, r0, #0
	ldr r4, _0800A7B4 @ =gUnknown_0200E9C4
	str r3, [r4]
	ldrb r0, [r3, #4]
	adds r2, r3, #5
	movs r1, #2
	cmp r0, #0
	beq _0800A78C
	movs r1, #3
_0800A78C:
	strb r1, [r4, #4]
	ldrb r0, [r2, #1]
	lsls r0, r0, #8
	ldrb r1, [r3, #5]
	orrs r0, r1
	strh r0, [r4, #6]
	adds r2, r3, #7
	ldrb r1, [r2, #1]
	lsls r1, r1, #8
	ldrb r0, [r3, #7]
	orrs r1, r0
	strh r1, [r4, #8]
	adds r2, #2
	str r2, [r4, #0xc]
	ldrb r0, [r4, #4]
	muls r0, r1, r0
	strh r0, [r4, #0x10]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800A7B4: .4byte gUnknown_0200E9C4

	thumb_func_start sub_0800A7B8
sub_0800A7B8: @ 0x0800A7B8
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	ldr r4, _0800A7F0 @ =gUnknown_0200E9C4
	ldrb r0, [r4, #4]
	cmp r0, #0
	bne _0800A7CC
	ldr r0, _0800A7F4 @ =gUnknown_0831B048
	bl sub_080050A8
_0800A7CC:
	ldrh r0, [r4, #0x10]
	adds r1, r0, #0
	muls r1, r5, r1
	ldr r0, [r4, #0xc]
	adds r0, r0, r1
	ldrb r2, [r4, #4]
	adds r1, r2, #0
	muls r1, r6, r1
	adds r1, r0, r1
	cmp r2, #2
	bne _0800A7F8
	ldrb r0, [r1, #1]
	lsls r0, r0, #8
	ldrb r1, [r1]
	orrs r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	b _0800A818
	.align 2, 0
_0800A7F0: .4byte gUnknown_0200E9C4
_0800A7F4: .4byte gUnknown_0831B048
_0800A7F8:
	ldrb r0, [r1, #2]
	lsls r2, r0, #0x10
	ldrb r0, [r1, #1]
	lsls r0, r0, #8
	orrs r2, r0
	ldrb r0, [r1]
	orrs r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x10
	ands r0, r2
	cmp r0, #0
	beq _0800A816
	movs r0, #0xff
	lsls r0, r0, #0x18
	orrs r2, r0
_0800A816:
	adds r0, r2, #0
_0800A818:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0800A820
sub_0800A820: @ 0x0800A820
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	ldr r4, _0800A854 @ =gUnknown_0200E9C4
	ldrb r0, [r4, #4]
	cmp r0, #0
	bne _0800A834
	ldr r0, _0800A858 @ =gUnknown_0831B06C
	bl sub_080050A8
_0800A834:
	ldrh r0, [r4, #0x10]
	muls r0, r5, r0
	ldr r1, [r4, #0xc]
	adds r1, r1, r0
	ldrb r0, [r4, #4]
	muls r0, r6, r0
	adds r1, r1, r0
	ldrb r0, [r1, #1]
	lsls r0, r0, #8
	ldrb r1, [r1]
	orrs r0, r1
	bl sub_0800A664
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0800A854: .4byte gUnknown_0200E9C4
_0800A858: .4byte gUnknown_0831B06C

	thumb_func_start sub_0800A85C
sub_0800A85C: @ 0x0800A85C
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r7, r1, #0
	ldr r6, _0800A880 @ =gUnknown_0200E9C4
	ldrb r0, [r6, #4]
	cmp r0, #0
	bne _0800A870
	ldr r0, _0800A884 @ =gUnknown_0831B094
	bl sub_080050A8
_0800A870:
	ldrb r0, [r6, #4]
	adds r1, r0, #0
	muls r1, r4, r1
	ldr r0, [r6, #0xc]
	adds r4, r0, r1
	movs r5, #0
	b _0800A8A8
	.align 2, 0
_0800A880: .4byte gUnknown_0200E9C4
_0800A884: .4byte gUnknown_0831B094
_0800A888:
	ldrb r0, [r4, #1]
	lsls r0, r0, #8
	ldrb r1, [r4]
	orrs r0, r1
	bl sub_0800A664
	adds r1, r7, #0
	bl sub_08000D80
	cmp r0, #0
	beq _0800A8A2
	adds r0, r5, #0
	b _0800A8B2
_0800A8A2:
	ldrh r0, [r6, #0x10]
	adds r4, r4, r0
	adds r5, #1
_0800A8A8:
	ldrh r0, [r6, #6]
	cmp r5, r0
	blo _0800A888
	movs r0, #1
	rsbs r0, r0, #0
_0800A8B2:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0800A8B8
sub_0800A8B8: @ 0x0800A8B8
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r7, r1, #0
	ldr r6, _0800A8DC @ =gUnknown_0200E9C4
	ldrb r0, [r6, #4]
	cmp r0, #0
	bne _0800A8CC
	ldr r0, _0800A8E0 @ =gUnknown_0831B0BC
	bl sub_080050A8
_0800A8CC:
	ldrb r0, [r6, #4]
	adds r1, r0, #0
	muls r1, r4, r1
	ldr r0, [r6, #0xc]
	adds r4, r0, r1
	movs r5, #0
	b _0800A904
	.align 2, 0
_0800A8DC: .4byte gUnknown_0200E9C4
_0800A8E0: .4byte gUnknown_0831B0BC
_0800A8E4:
	ldrb r0, [r4, #1]
	lsls r0, r0, #8
	ldrb r1, [r4]
	orrs r0, r1
	bl sub_0800A664
	adds r1, r7, #0
	bl sub_0800A734
	cmp r0, #0
	beq _0800A8FE
	adds r0, r5, #0
	b _0800A90E
_0800A8FE:
	ldrh r0, [r6, #0x10]
	adds r4, r4, r0
	adds r5, #1
_0800A904:
	ldrh r0, [r6, #6]
	cmp r5, r0
	blo _0800A8E4
	movs r0, #1
	rsbs r0, r0, #0
_0800A90E:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0800A914
sub_0800A914: @ 0x0800A914
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov r8, r0
	mov sb, r2
	adds r0, #0x2f
	ldrb r0, [r0]
	mov r2, r8
	adds r5, r2, r0
	adds r6, r1, #0
	movs r0, #0x2e
	add r0, r8
	mov sl, r0
	movs r7, #0
	b _0800A97C
_0800A936:
	cmp r4, #0x24
	bne _0800A93E
	adds r6, #2
	b _0800A97C
_0800A93E:
	cmp r5, sl
	blo _0800A948
	ldr r0, _0800A964 @ =gUnknown_0831B0E4
	bl sub_0800A9BC
_0800A948:
	cmp r4, #0x23
	beq _0800A958
	ldr r0, _0800A968 @ =gUnknown_083D6088
	lsrs r1, r4, #4
	adds r1, r1, r0
	ldrb r0, [r1]
	cmp r0, #0
	beq _0800A96C
_0800A958:
	strb r4, [r5]
	ldrb r0, [r6, #1]
	strb r0, [r5, #1]
	adds r6, #2
	adds r5, #2
	b _0800A972
	.align 2, 0
_0800A964: .4byte gUnknown_0831B0E4
_0800A968: .4byte gUnknown_083D6088
_0800A96C:
	strb r4, [r5]
	adds r6, #1
	adds r5, #1
_0800A972:
	adds r7, #1
	mov r4, r8
	adds r4, #0x2f
	cmp r7, sb
	beq _0800A9A0
_0800A97C:
	ldrb r4, [r6]
	cmp r4, #0
	bne _0800A936
	mov r4, r8
	adds r4, #0x2f
	cmp r7, sb
	bhs _0800A9A0
	movs r6, #0x20
_0800A98C:
	cmp r5, sl
	blo _0800A996
	ldr r0, _0800A9B8 @ =gUnknown_0831B0E4
	bl sub_0800A9BC
_0800A996:
	strb r6, [r5]
	adds r5, #1
	adds r7, #1
	cmp r7, sb
	blo _0800A98C
_0800A9A0:
	movs r0, #0
	strb r0, [r5]
	mov r1, r8
	subs r0, r5, r1
	strb r0, [r4]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800A9B8: .4byte gUnknown_0831B0E4

	thumb_func_start sub_0800A9BC
sub_0800A9BC: @ 0x0800A9BC
	push {lr}
	sub sp, #0x100
	ldr r1, _0800A9D8 @ =gUnknown_0831B0F8
	mov r0, sp
	mov r2, sp
	bl sprintf
	mov r0, sp
	bl sub_080050A8
	add sp, #0x100
	pop {r0}
	bx r0
	.align 2, 0
_0800A9D8: .4byte gUnknown_0831B0F8

	thumb_func_start sub_0800A9DC
sub_0800A9DC: @ 0x0800A9DC
	push {lr}
	ldr r0, _0800A9E8 @ =gUnknown_0831B118
	bl sub_0800A9BC
	pop {r0}
	bx r0
	.align 2, 0
_0800A9E8: .4byte gUnknown_0831B118

	thumb_func_start sub_0800A9EC
sub_0800A9EC: @ 0x0800A9EC
	push {r4, r5, r6, r7, lr}
	ldr r3, _0800AA20 @ =gUnknown_020132E0
	movs r2, #0
	ldr r7, _0800AA24 @ =0x0000017F
	movs r6, #0
	movs r5, #0x58
	movs r4, #1
	adds r1, r3, #0
	adds r1, #0x2f
	adds r0, r3, #0
_0800AA00:
	strb r5, [r0]
	strb r6, [r0, #1]
	strb r4, [r1]
	adds r1, #0x30
	adds r0, #0x30
	adds r2, #1
	cmp r2, r7
	bls _0800AA00
	movs r1, #0x90
	lsls r1, r1, #7
	adds r0, r3, r1
	str r3, [r0]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800AA20: .4byte gUnknown_020132E0
_0800AA24: .4byte 0x0000017F

	thumb_func_start sub_0800AA28
sub_0800AA28: @ 0x0800AA28
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, _0800AA50 @ =gUnknown_020132E0
	ldr r0, _0800AA54 @ =0x0000017F
	cmp r4, r0
	bls _0800AA3A
	ldr r0, _0800AA58 @ =gUnknown_0831B134
	bl sub_0800A9BC
_0800AA3A:
	movs r0, #0x90
	lsls r0, r0, #7
	adds r1, r5, r0
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #4
	adds r0, r0, r5
	str r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800AA50: .4byte gUnknown_020132E0
_0800AA54: .4byte 0x0000017F
_0800AA58: .4byte gUnknown_0831B134

	thumb_func_start sub_0800AA5C
sub_0800AA5C: @ 0x0800AA5C
	push {lr}
	ldr r0, _0800AA78 @ =gUnknown_020132E0
	movs r1, #0x90
	lsls r1, r1, #7
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	bne _0800AA72
	bl sub_0800A9DC
	movs r0, #0
_0800AA72:
	pop {r1}
	bx r1
	.align 2, 0
_0800AA78: .4byte gUnknown_020132E0

	thumb_func_start sub_0800AA7C
sub_0800AA7C: @ 0x0800AA7C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0800AA9C @ =0x0000017F
	cmp r4, r0
	bls _0800AA8C
	ldr r0, _0800AAA0 @ =gUnknown_0831B134
	bl sub_0800A9BC
_0800AA8C:
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #4
	ldr r1, _0800AAA4 @ =gUnknown_020132E0
	adds r0, r0, r1
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0800AA9C: .4byte 0x0000017F
_0800AAA0: .4byte gUnknown_0831B134
_0800AAA4: .4byte gUnknown_020132E0

	thumb_func_start sub_0800AAA8
sub_0800AAA8: @ 0x0800AAA8
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	ldr r0, _0800AAD8 @ =gUnknown_020132E0
	movs r1, #0x90
	lsls r1, r1, #7
	adds r0, r0, r1
	ldr r4, [r0]
	cmp r4, #0
	bne _0800AAC0
	bl sub_0800A9DC
_0800AAC0:
	adds r1, r4, #0
	adds r1, #0x2f
	movs r0, #0
	strb r0, [r1]
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_0800A914
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800AAD8: .4byte gUnknown_020132E0

	thumb_func_start sub_0800AADC
sub_0800AADC: @ 0x0800AADC
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _0800AAFC @ =0x0000017F
	cmp r4, r0
	bls _0800AAEE
	ldr r0, _0800AB00 @ =gUnknown_0831B134
	bl sub_0800A9BC
_0800AAEE:
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #4
	ldr r1, _0800AB04 @ =gUnknown_020132E0
	adds r6, r0, r1
	movs r7, #0
	b _0800AB18
	.align 2, 0
_0800AAFC: .4byte 0x0000017F
_0800AB00: .4byte gUnknown_0831B134
_0800AB04: .4byte gUnknown_020132E0
_0800AB08:
	cmp r7, #0x2d
	bls _0800AB12
	ldr r0, _0800AB2C @ =gUnknown_0831B140
	bl sub_080050A8
_0800AB12:
	strb r4, [r6]
	adds r6, #1
	adds r7, #1
_0800AB18:
	ldrb r4, [r5]
	adds r5, #1
	cmp r4, #0
	bne _0800AB08
	movs r0, #0
	strb r0, [r6]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800AB2C: .4byte gUnknown_0831B140

	thumb_func_start sub_0800AB30
sub_0800AB30: @ 0x0800AB30
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	ldr r0, _0800AB58 @ =gUnknown_020132E0
	movs r1, #0x90
	lsls r1, r1, #7
	adds r0, r0, r1
	ldr r4, [r0]
	cmp r4, #0
	bne _0800AB48
	bl sub_0800A9DC
_0800AB48:
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_0800A914
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800AB58: .4byte gUnknown_020132E0

	thumb_func_start sub_0800AB5C
sub_0800AB5C: @ 0x0800AB5C
	push {r4, r5, r6, lr}
	sub sp, #0x4c
	adds r6, r0, #0
	adds r4, r1, #0
	ldr r0, _0800AB9C @ =gUnknown_020132E0
	movs r1, #0x90
	lsls r1, r1, #7
	adds r0, r0, r1
	ldr r5, [r0]
	cmp r5, #0
	bne _0800AB76
	bl sub_0800A9DC
_0800AB76:
	cmp r4, #0x20
	bls _0800AB80
	ldr r0, _0800ABA0 @ =gUnknown_0831B15C
	bl sub_080050A8
_0800AB80:
	mov r0, sp
	adds r1, r6, #0
	adds r2, r4, #0
	bl sub_0800D0D0
	adds r0, r5, #0
	mov r1, sp
	adds r2, r4, #0
	bl sub_0800A914
	add sp, #0x4c
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800AB9C: .4byte gUnknown_020132E0
_0800ABA0: .4byte gUnknown_0831B15C

	thumb_func_start sub_0800ABA4
sub_0800ABA4: @ 0x0800ABA4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x40
	adds r4, r0, #0
	mov r8, r1
	ldr r0, _0800ABF4 @ =gUnknown_020132E0
	movs r1, #0x90
	lsls r1, r1, #7
	adds r0, r0, r1
	ldr r7, [r0]
	cmp r7, #0
	bne _0800ABC4
	bl sub_0800A9DC
_0800ABC4:
	ldr r1, _0800ABF8 @ =gUnknown_0831B180
	mov r0, sp
	adds r2, r4, #0
	bl sprintf
	mov r0, sp
	bl strlen
	adds r4, r0, #0
	cmp r4, r8
	blo _0800ABFC
	mov r2, r8
	subs r0, r4, r2
	add r4, sp, #0x10
	mov r2, sp
	adds r1, r2, r0
	adds r0, r4, #0
	bl strcpy
	mov sb, r4
	adds r6, r7, #0
	adds r6, #0x2f
	b _0800AC34
	.align 2, 0
_0800ABF4: .4byte gUnknown_020132E0
_0800ABF8: .4byte gUnknown_0831B180
_0800ABFC:
	mov r1, r8
	subs r0, r1, r4
	mov r3, sp
	add r1, sp, #0x10
	movs r2, #0
	mov sb, r1
	adds r6, r7, #0
	adds r6, #0x2f
	cmp r2, r0
	bhs _0800AC1C
	movs r5, #0x20
_0800AC12:
	strb r5, [r1]
	adds r1, #1
	adds r2, #1
	cmp r2, r0
	blo _0800AC12
_0800AC1C:
	movs r2, #0
	cmp r2, r4
	bhs _0800AC30
_0800AC22:
	ldrb r0, [r3]
	strb r0, [r1]
	adds r3, #1
	adds r1, #1
	adds r2, #1
	cmp r2, r4
	blo _0800AC22
_0800AC30:
	movs r0, #0
	strb r0, [r1]
_0800AC34:
	ldrb r0, [r6]
	adds r5, r7, r0
	add r0, r8
	adds r0, #1
	cmp r0, #0x2f
	bls _0800AC46
	ldr r0, _0800AC64 @ =gUnknown_0831B0E4
	bl sub_0800A9BC
_0800AC46:
	adds r0, r5, #0
	mov r1, sb
	bl strcpy
	ldrb r0, [r6]
	add r0, r8
	strb r0, [r6]
	add sp, #0x40
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800AC64: .4byte gUnknown_0831B0E4

	thumb_func_start sub_0800AC68
sub_0800AC68: @ 0x0800AC68
	push {lr}
	ldr r1, _0800AC80 @ =gUnknown_0200E594
	ldr r0, _0800AC84 @ =0x0000FFFF
	strh r0, [r1]
	movs r0, #1
	rsbs r0, r0, #0
	strh r0, [r1, #2]
	strh r0, [r1, #4]
	bl sub_080006F8
	pop {r0}
	bx r0
	.align 2, 0
_0800AC80: .4byte gUnknown_0200E594
_0800AC84: .4byte 0x0000FFFF

	thumb_func_start sub_0800AC88
sub_0800AC88: @ 0x0800AC88
	push {lr}
	subs r0, #1
	cmp r0, #1
	bhi _0800AC96
	adds r0, r1, #0
	bl sub_0800ACD0
_0800AC96:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800AC9C
sub_0800AC9C: @ 0x0800AC9C
	push {lr}
	cmp r0, #1
	beq _0800ACA6
	cmp r0, #3
	bne _0800ACAC
_0800ACA6:
	adds r0, r1, #0
	bl sub_0800AD4C
_0800ACAC:
	pop {r0}
	bx r0

	thumb_func_start sub_0800ACB0
sub_0800ACB0: @ 0x0800ACB0
	push {r4, lr}
	adds r1, r0, #0
	ldr r4, _0800ACC8 @ =gUnknown_0200E594
	movs r0, #0
	bl sub_08000694
	ldr r0, _0800ACCC @ =0x0000FFFF
	strh r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800ACC8: .4byte gUnknown_0200E594
_0800ACCC: .4byte 0x0000FFFF

	thumb_func_start sub_0800ACD0
sub_0800ACD0: @ 0x0800ACD0
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, _0800ACE4 @ =gUnknown_0200E594
	movs r0, #1
	rsbs r0, r0, #0
	cmp r4, r0
	bne _0800ACEC
	ldr r0, _0800ACE8 @ =0x0000FFFF
	strh r0, [r5]
	b _0800ACFE
	.align 2, 0
_0800ACE4: .4byte gUnknown_0200E594
_0800ACE8: .4byte 0x0000FFFF
_0800ACEC:
	movs r1, #0
	ldrsh r0, [r5, r1]
	cmp r4, r0
	beq _0800ACFE
	movs r0, #0
	adds r1, r4, #0
	bl sub_08000634
	strh r4, [r5]
_0800ACFE:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_0800AD04
sub_0800AD04: @ 0x0800AD04
	push {r4, lr}
	ldr r4, _0800AD20 @ =gUnknown_0200E594
	movs r0, #0
	bl sub_0800065C
	ldrh r0, [r4]
	strh r0, [r4, #2]
	ldr r2, _0800AD24 @ =0x0000FFFF
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800AD20: .4byte gUnknown_0200E594
_0800AD24: .4byte 0x0000FFFF

	thumb_func_start sub_0800AD28
sub_0800AD28: @ 0x0800AD28
	push {r4, lr}
	ldr r4, _0800AD48 @ =gUnknown_0200E594
	movs r0, #0
	ldrsh r1, [r4, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0800AD42
	movs r0, #0
	bl sub_08000678
	ldrh r0, [r4, #2]
	strh r0, [r4]
_0800AD42:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800AD48: .4byte gUnknown_0200E594

	thumb_func_start sub_0800AD4C
sub_0800AD4C: @ 0x0800AD4C
	push {r4, lr}
	adds r2, r0, #0
	ldr r4, _0800AD74 @ =gUnknown_0200E594
	movs r0, #0
	ldrsh r1, [r4, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0800AD6E
	ldr r0, _0800AD78 @ =gUnknown_083E7C5C
	adds r0, r2, r0
	ldrb r1, [r0]
	movs r0, #0
	bl sub_08000694
	ldr r0, _0800AD7C @ =0x0000FFFF
	strh r0, [r4]
_0800AD6E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800AD74: .4byte gUnknown_0200E594
_0800AD78: .4byte gUnknown_083E7C5C
_0800AD7C: .4byte 0x0000FFFF

	thumb_func_start sub_0800AD80
sub_0800AD80: @ 0x0800AD80
	push {lr}
	adds r1, r0, #0
	lsls r0, r1, #8
	movs r1, #0x64
	bl Div
	adds r1, r0, #0
	ldr r0, _0800ADA4 @ =0x000003FF
	cmp r0, r1
	ble _0800AD96
	adds r0, r1, #0
_0800AD96:
	adds r1, r0, #0
	movs r0, #0
	bl sub_080006B4
	pop {r0}
	bx r0
	.align 2, 0
_0800ADA4: .4byte 0x000003FF

	thumb_func_start sub_0800ADA8
sub_0800ADA8: @ 0x0800ADA8
	push {r4, r5, lr}
	ldr r5, _0800ADC8 @ =gUnknown_0200E594
	movs r1, #0
	ldrsh r0, [r5, r1]
	movs r4, #1
	rsbs r4, r4, #0
	cmp r0, r4
	beq _0800ADC2
	movs r0, #0
	bl sub_080006DC
	cmp r0, #0
	bne _0800ADCC
_0800ADC2:
	adds r0, r4, #0
	b _0800ADD0
	.align 2, 0
_0800ADC8: .4byte gUnknown_0200E594
_0800ADCC:
	movs r1, #0
	ldrsh r0, [r5, r1]
_0800ADD0:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0800ADD8
sub_0800ADD8: @ 0x0800ADD8
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #1
	adds r1, r4, #0
	bl sub_08000634
	ldr r0, _0800ADF4 @ =gUnknown_0200C1A0
	ldr r1, _0800ADF8 @ =0x000023F8
	adds r0, r0, r1
	strh r4, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800ADF4: .4byte gUnknown_0200C1A0
_0800ADF8: .4byte 0x000023F8

	thumb_func_start sub_0800ADFC
sub_0800ADFC: @ 0x0800ADFC
	push {lr}
	movs r0, #1
	bl sub_0800065C
	ldr r0, _0800AE14 @ =gUnknown_0200C1A0
	ldr r1, _0800AE18 @ =0x000023F8
	adds r0, r0, r1
	ldr r1, _0800AE1C @ =0x0000FFFF
	strh r1, [r0]
	pop {r0}
	bx r0
	.align 2, 0
_0800AE14: .4byte gUnknown_0200C1A0
_0800AE18: .4byte 0x000023F8
_0800AE1C: .4byte 0x0000FFFF

	thumb_func_start sub_0800AE20
sub_0800AE20: @ 0x0800AE20
	push {lr}
	ldr r1, _0800AE3C @ =gUnknown_083E7C5C
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #1
	bl sub_08000694
	ldr r0, _0800AE40 @ =gUnknown_0200C1A0
	ldr r1, _0800AE44 @ =0x000023F8
	adds r0, r0, r1
	ldr r1, _0800AE48 @ =0x0000FFFF
	strh r1, [r0]
	pop {r0}
	bx r0
	.align 2, 0
_0800AE3C: .4byte gUnknown_083E7C5C
_0800AE40: .4byte gUnknown_0200C1A0
_0800AE44: .4byte 0x000023F8
_0800AE48: .4byte 0x0000FFFF

	thumb_func_start sub_0800AE4C
sub_0800AE4C: @ 0x0800AE4C
	push {r4, r5, lr}
	ldr r5, _0800AE6C @ =gUnknown_0200E594
	movs r1, #4
	ldrsh r0, [r5, r1]
	movs r4, #1
	rsbs r4, r4, #0
	cmp r0, r4
	beq _0800AE66
	movs r0, #1
	bl sub_080006DC
	cmp r0, #0
	bne _0800AE70
_0800AE66:
	adds r0, r4, #0
	b _0800AE74
	.align 2, 0
_0800AE6C: .4byte gUnknown_0200E594
_0800AE70:
	movs r1, #4
	ldrsh r0, [r5, r1]
_0800AE74:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0800AE7C
sub_0800AE7C: @ 0x0800AE7C
	push {lr}
	adds r1, r0, #0
	movs r0, #2
	bl sub_08000634
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800AE8C
sub_0800AE8C: @ 0x0800AE8C
	push {lr}
	movs r0, #2
	bl sub_0800065C
	pop {r0}
	bx r0

	thumb_func_start sub_0800AE98
sub_0800AE98: @ 0x0800AE98
	push {lr}
	ldr r1, _0800AEAC @ =gUnknown_083E7C5C
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #2
	bl sub_08000694
	pop {r0}
	bx r0
	.align 2, 0
_0800AEAC: .4byte gUnknown_083E7C5C

	thumb_func_start sub_0800AEB0
sub_0800AEB0: @ 0x0800AEB0
	push {r4, lr}
	ldr r4, _0800AED8 @ =gUnknown_0200E594
	bl sub_080006F8
	movs r0, #0
	bl sub_0800065C
	ldrh r0, [r4]
	strh r0, [r4, #2]
	ldr r2, _0800AEDC @ =0x0000FFFF
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4]
	ldrh r0, [r4, #4]
	orrs r0, r1
	strh r0, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800AED8: .4byte gUnknown_0200E594
_0800AEDC: .4byte 0x0000FFFF

	thumb_func_start sub_0800AEE0
sub_0800AEE0: @ 0x0800AEE0
	push {r4, lr}
	ldr r4, _0800AF00 @ =gUnknown_0200E594
	ldr r1, _0800AF04 @ =gUnknown_083E7C5C
	adds r0, r0, r1
	ldrb r0, [r0]
	bl sub_08000704
	ldr r0, _0800AF08 @ =0x0000FFFF
	strh r0, [r4]
	movs r0, #1
	rsbs r0, r0, #0
	strh r0, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800AF00: .4byte gUnknown_0200E594
_0800AF04: .4byte gUnknown_083E7C5C
_0800AF08: .4byte 0x0000FFFF

	thumb_func_start sub_0800AF0C
sub_0800AF0C: @ 0x0800AF0C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	mov sb, r0
	ldr r2, _0800AFA4 @ =gUnknown_083E7C5F
	movs r3, #0x34
	ldrsh r0, [r0, r3]
	adds r0, r0, r2
	ldrb r0, [r0]
	mov sl, r0
	mov r4, sb
	ldrh r2, [r4, #0x36]
	mov r5, sp
	movs r4, #0x1f
	adds r0, r2, #0
	ands r0, r4
	mov r3, sp
	strb r0, [r3]
	lsrs r0, r2, #5
	ands r0, r4
	strb r0, [r5, #1]
	lsrs r2, r2, #0xa
	ands r2, r4
	strb r2, [r5, #2]
	movs r7, #1
	add r6, sp, #4
	mov r8, r4
	add r4, sp, #8
	adds r5, r1, #2
_0800AF4C:
	lsls r1, r7, #1
	mov r0, sb
	adds r0, #0x36
	adds r0, r0, r1
	ldrh r2, [r0]
	adds r0, r2, #0
	mov r1, r8
	ands r0, r1
	add r1, sp, #4
	strb r0, [r1]
	lsrs r0, r2, #5
	mov r3, r8
	ands r0, r3
	strb r0, [r6, #1]
	lsrs r2, r2, #0xa
	ands r2, r3
	strb r2, [r6, #2]
	adds r0, r4, #0
	mov r1, sp
	adds r2, r6, #0
	mov r3, sl
	bl sub_0800A3BC
	ldrb r1, [r4, #2]
	lsls r1, r1, #0xa
	ldrb r0, [r4, #1]
	lsls r0, r0, #5
	orrs r1, r0
	add r0, sp, #8
	ldrb r0, [r0]
	orrs r1, r0
	strh r1, [r5]
	adds r5, #2
	adds r7, #1
	cmp r7, #3
	bls _0800AF4C
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800AFA4: .4byte gUnknown_083E7C5F

	thumb_func_start sub_0800AFA8
sub_0800AFA8: @ 0x0800AFA8
	push {r4, r5, lr}
	adds r2, r0, #0
	ldr r0, _0800AFD0 @ =gUnknown_02001DBC
	ldrb r0, [r0]
	ldr r4, _0800AFD4 @ =0x05000098
	cmp r0, #0
	beq _0800AFB8
	subs r4, #0x18
_0800AFB8:
	cmp r1, #0
	bne _0800AFD8
	ldrh r0, [r4]
	strh r0, [r2, #0x36]
	ldrh r0, [r4, #2]
	strh r0, [r2, #0x38]
	ldrh r0, [r4, #4]
	strh r0, [r2, #0x3a]
	ldrh r0, [r4, #6]
	strh r0, [r2, #0x3c]
	strh r1, [r2, #0x34]
	b _0800B01E
	.align 2, 0
_0800AFD0: .4byte gUnknown_02001DBC
_0800AFD4: .4byte 0x05000098
_0800AFD8:
	cmp r1, #1
	bne _0800B002
	ldrh r5, [r2, #0x34]
	lsls r3, r5, #0x10
	asrs r1, r3, #0x10
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0800B01E
	lsrs r0, r3, #0x10
	cmp r0, #0x3b
	beq _0800AFF4
	adds r0, r5, #1
	b _0800AFF6
_0800AFF4:
	movs r0, #0
_0800AFF6:
	strh r0, [r2, #0x34]
	adds r0, r2, #0
	adds r1, r4, #0
	bl sub_0800AF0C
	b _0800B01E
_0800B002:
	cmp r1, #2
	bne _0800B01E
	movs r0, #0x34
	ldrsh r1, [r2, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0800B01E
	ldrh r0, [r2, #0x38]
	strh r0, [r4, #2]
	ldrh r0, [r2, #0x3a]
	strh r0, [r4, #4]
	ldrh r0, [r2, #0x3c]
	strh r0, [r4, #6]
_0800B01E:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_0800B024
sub_0800B024: @ 0x0800B024
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	movs r3, #0
	movs r1, #0
_0800B02E:
	mov r2, sp
	adds r0, r2, r3
	strb r1, [r0]
	adds r3, #1
	cmp r3, #0xf
	bls _0800B02E
	bl sub_08010118
	adds r1, r0, #0
	mov r0, sp
	bl strcpy
	movs r3, #0
	adds r4, #0x44
	mov r2, sp
_0800B04C:
	ldrb r1, [r2]
	ldrb r0, [r2, #1]
	lsls r0, r0, #8
	orrs r0, r1
	stm r4!, {r0}
	adds r2, #2
	adds r3, #1
	cmp r3, #6
	bls _0800B04C
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800B068
sub_0800B068: @ 0x0800B068
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl sub_08010154
	adds r2, r0, #0
	cmp r4, #0
	beq _0800B07E
	movs r1, #0xa0
	lsls r1, r1, #1
	b _0800B082
_0800B07E:
	movs r1, #0xd2
	lsls r1, r1, #2
_0800B082:
	adds r0, r5, r1
	movs r4, #0
	movs r5, #0xff
	adds r3, r0, #0
_0800B08A:
	ldr r1, [r3, #4]
	adds r0, r1, #0
	ands r0, r5
	strb r0, [r2]
	adds r2, #1
	lsrs r1, r1, #8
	ands r1, r5
	strb r1, [r2]
	adds r2, #1
	adds r3, #4
	adds r4, #1
	cmp r4, #6
	bls _0800B08A
	movs r0, #0
	strb r0, [r2]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800B0B0
sub_0800B0B0: @ 0x0800B0B0
	push {r4, r5, lr}
	cmp r1, #0
	beq _0800B0BC
	movs r1, #0xd2
	lsls r1, r1, #2
	b _0800B0C0
_0800B0BC:
	movs r1, #0xa0
	lsls r1, r1, #1
_0800B0C0:
	adds r5, r0, r1
	movs r0, #6
	bl sub_08010170
	adds r4, r0, #0
	movs r0, #5
	bl sub_08010170
	lsls r4, r4, #8
	orrs r4, r0
	str r4, [r5, #4]
	movs r0, #8
	bl sub_08010170
	adds r4, r0, #0
	movs r0, #7
	bl sub_08010170
	lsls r4, r4, #8
	orrs r4, r0
	str r4, [r5, #8]
	movs r0, #9
	bl sub_08010170
	str r0, [r5, #0xc]
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_0800B0F8
sub_0800B0F8: @ 0x0800B0F8
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	cmp r1, #0
	beq _0800B108
	movs r1, #0xa0
	lsls r1, r1, #1
	b _0800B10C
_0800B108:
	movs r1, #0xd2
	lsls r1, r1, #2
_0800B10C:
	adds r0, r0, r1
	ldr r4, [r0, #4]
	ldr r5, [r0, #8]
	ldr r0, [r0, #0xc]
	mov r8, r0
	movs r6, #0xff
	adds r1, r4, #0
	ands r1, r6
	movs r0, #0xa
	bl sub_08010180
	lsrs r4, r4, #8
	ands r4, r6
	movs r0, #0xb
	adds r1, r4, #0
	bl sub_08010180
	adds r1, r5, #0
	ands r1, r6
	movs r0, #0xc
	bl sub_08010180
	lsrs r5, r5, #8
	ands r5, r6
	movs r0, #0xd
	adds r1, r5, #0
	bl sub_08010180
	mov r0, r8
	ands r0, r6
	mov r8, r0
	movs r0, #0xe
	mov r1, r8
	bl sub_08010180
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_0800B15C
sub_0800B15C: @ 0x0800B15C
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	ldrb r0, [r2, #9]
	cmp r0, #0
	bne _0800B1A8
	ldrb r3, [r2, #0xa]
	ldrb r0, [r2, #0x13]
	cmp r0, #1
	bne _0800B18C
	movs r1, #1
	subs r3, #2
	cmp r1, r3
	bhi _0800B1A8
	adds r5, r2, #0
	adds r5, #0x44
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r4, r2, r0
_0800B180:
	ldm r5!, {r0}
	stm r4!, {r0}
	adds r1, #1
	cmp r1, r3
	bls _0800B180
	b _0800B1A8
_0800B18C:
	movs r1, #1
	subs r3, #2
	cmp r1, r3
	bhi _0800B1A8
	adds r5, r2, #0
	adds r5, #0x44
	movs r0, #0xd3
	lsls r0, r0, #2
	adds r4, r2, r0
_0800B19E:
	ldm r5!, {r0}
	stm r4!, {r0}
	adds r1, #1
	cmp r1, r3
	bls _0800B19E
_0800B1A8:
	ldr r3, [r2, #0x18]
	ldr r4, [r2, #0x1c]
	ldrb r0, [r2, #0x13]
	cmp r0, #1
	bne _0800B1C4
	movs r5, #0
	movs r4, #0xa0
	lsls r4, r4, #1
	adds r1, r2, r4
	movs r4, #0x80
	lsls r4, r4, #0x18
	adds r0, r3, r4
	str r0, [r1]
	b _0800B1D8
_0800B1C4:
	movs r5, #1
	movs r0, #0xd2
	lsls r0, r0, #2
	adds r1, r2, r0
	str r3, [r1]
	ldrb r0, [r2, #0xa]
	subs r0, #1
	lsls r0, r0, #2
	adds r1, r1, r0
	str r4, [r1]
_0800B1D8:
	ldrb r0, [r2, #8]
	cmp r0, #2
	bne _0800B1FA
	cmp r5, #0
	bne _0800B1FA
	movs r6, #0x18
	movs r4, #0
	movs r0, #0xb0
	lsls r0, r0, #1
	adds r5, r2, r0
_0800B1EC:
	adds r0, r6, r4
	bl sub_08010170
	stm r5!, {r0}
	adds r4, #1
	cmp r4, #5
	bls _0800B1EC
_0800B1FA:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_0800B200
sub_0800B200: @ 0x0800B200
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r6, r0, #0
	movs r0, #0
	mov r8, r0
	bl VBlankIntrWait
	ldr r0, [r6, #0x2c]
	adds r0, #1
	str r0, [r6, #0x2c]
	bl sub_08000BC0
	ldrb r0, [r6, #0xe]
	cmp r0, #0
	beq _0800B24A
	ldr r0, _0800B29C @ =gUnknown_02000020
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0800B24A
	ldrb r0, [r6, #8]
	cmp r0, #4
	bne _0800B240
	movs r2, #0x34
	ldrsh r1, [r6, r2]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0800B24A
_0800B240:
	adds r1, r6, #0
	adds r1, #0x31
	movs r0, #1
	strb r0, [r1]
	mov r8, r0
_0800B24A:
	ldrb r0, [r6, #0x10]
	cmp r0, #1
	bne _0800B262
	ldr r1, _0800B2A0 @ =gUnknown_02001D0C
	ldrb r0, [r1]
	cmp r0, #0xf
	bhi _0800B262
	adds r0, #2
	strb r0, [r1]
	ldrb r0, [r1]
	bl sub_0800A124
_0800B262:
	ldrb r0, [r6, #0x10]
	movs r1, #0
	cmp r0, #1
	ble _0800B270
	cmp r0, #3
	bgt _0800B270
	movs r1, #1
_0800B270:
	cmp r1, #0
	beq _0800B2C6
	ldr r4, _0800B2A0 @ =gUnknown_02001D0C
	ldrb r1, [r4]
	adds r0, r1, #0
	cmp r0, #0x10
	bne _0800B2A4
	ldr r0, [r6, #0x2c]
	ldrb r2, [r6, #0x11]
	cmp r0, r2
	bne _0800B2C6
	adds r0, r6, #0
	adds r0, #0x30
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800B2C6
	subs r0, r1, #2
	strb r0, [r4]
	ldrb r0, [r4]
	bl sub_0800A124
	b _0800B2C6
	.align 2, 0
_0800B29C: .4byte gUnknown_02000020
_0800B2A0: .4byte gUnknown_02001D0C
_0800B2A4:
	cmp r0, #0
	beq _0800B2C6
	subs r0, r1, #2
	strb r0, [r4]
	ldrb r0, [r4]
	bl sub_0800A124
	ldrb r0, [r6, #0x10]
	cmp r0, #3
	bne _0800B2C6
	ldrb r0, [r4]
	cmp r0, #0
	bne _0800B2C6
	adds r0, r6, #0
	movs r1, #0
	bl sub_0800AFA8
_0800B2C6:
	adds r0, r6, #0
	movs r1, #1
	bl sub_0800AFA8
	ldrb r0, [r6, #0x12]
	cmp r0, #0
	beq _0800B2DA
	adds r0, r6, #0
	bl sub_0800BD94
_0800B2DA:
	ldrb r0, [r6, #8]
	cmp r0, #4
	bne _0800B33E
	movs r4, #0
	ldr r0, [r6, #0x2c]
	ldrb r1, [r6, #0x11]
	cmp r0, r1
	bne _0800B2F6
	adds r0, r6, #0
	adds r0, #0x30
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800B2F6
	movs r4, #1
_0800B2F6:
	adds r0, r6, #0
	adds r0, #0x32
	ldrb r3, [r0]
	movs r2, #0x34
	ldrsh r1, [r6, r2]
	mvns r1, r1
	rsbs r2, r1, #0
	orrs r2, r1
	adds r7, r0, #0
	cmp r2, #0
	blt _0800B33A
	cmp r4, #0
	bne _0800B314
	cmp r3, #0
	beq _0800B33A
_0800B314:
	ldr r4, _0800B34C @ =gUnknown_030013B0
	ldr r5, _0800B350 @ =gUnknown_0831B184
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	bl sub_08004CF0
	movs r0, #0x1e
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x12
	adds r3, r5, #0
	bl sub_08004EC0
	adds r0, r6, #0
	movs r1, #0
	bl sub_0800AFA8
_0800B33A:
	movs r0, #0
	strb r0, [r7]
_0800B33E:
	mov r0, r8
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0800B34C: .4byte gUnknown_030013B0
_0800B350: .4byte gUnknown_0831B184

	thumb_func_start sub_0800B354
sub_0800B354: @ 0x0800B354
	push {lr}
	adds r2, r0, #0
	movs r0, #0xe2
	lsls r0, r0, #2
	adds r1, r2, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r1, [r2, #0xa]
	cmp r0, r1
	blo _0800B39C
	movs r0, #0xd2
	lsls r0, r0, #2
	adds r3, r2, r0
	ldr r1, [r3]
	ldr r0, [r2, #0x18]
	cmp r1, r0
	bne _0800B38C
	ldrb r0, [r2, #0xa]
	subs r0, #1
	lsls r0, r0, #2
	adds r0, r3, r0
	ldr r1, [r0]
	ldr r0, [r2, #0x1c]
	cmp r1, r0
	beq _0800B390
_0800B38C:
	movs r0, #2
	b _0800B39E
_0800B390:
	movs r0, #0xe4
	lsls r0, r0, #2
	adds r1, r2, r0
	movs r0, #1
	strb r0, [r1]
	b _0800B39E
_0800B39C:
	movs r0, #0
_0800B39E:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0800B3A4
sub_0800B3A4: @ 0x0800B3A4
	push {lr}
	adds r2, r0, #0
	movs r0, #0x90
	lsls r0, r0, #2
	adds r1, r2, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0800B3DE
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r2, r1
	ldr r1, [r2, #0x18]
	movs r3, #0x80
	lsls r3, r3, #0x18
	adds r1, r1, r3
	ldr r0, [r0]
	cmp r0, r1
	beq _0800B3D2
	movs r0, #2
	b _0800B3E0
_0800B3D2:
	movs r0, #0xd1
	lsls r0, r0, #2
	adds r1, r2, r0
	movs r0, #1
	strb r0, [r1]
	b _0800B3E0
_0800B3DE:
	movs r0, #0
_0800B3E0:
	pop {r1}
	bx r1

	thumb_func_start sub_0800B3E4
sub_0800B3E4: @ 0x0800B3E4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r5, r0, #0
	ldrb r0, [r5, #8]
	cmp r0, #8
	bls _0800B3FE
	ldr r0, _0800B434 @ =gUnknown_0831B1C0
	bl sub_080050A8
_0800B3FE:
	ldrb r1, [r5, #8]
	ldr r0, _0800B438 @ =0x0007A5B4
	adds r1, r1, r0
	str r1, [r5, #0x18]
	ldr r0, _0800B43C @ =0x0007FFFF
	bics r0, r1
	str r0, [r5, #0x1c]
	adds r2, r5, #0
	adds r2, #0x31
	movs r0, #0
	strb r0, [r2]
	adds r1, r5, #0
	adds r1, #0x32
	strb r0, [r1]
	ldr r0, _0800B440 @ =0x0000FFFF
	strh r0, [r5, #0x34]
	ldrb r0, [r5, #0xf]
	mov sb, r2
	mov sl, r1
	cmp r0, #0
	beq _0800B45E
	adds r0, r5, #0
	movs r1, #0
	bl sub_0800AFA8
	b _0800B45E
	.align 2, 0
_0800B434: .4byte gUnknown_0831B1C0
_0800B438: .4byte 0x0007A5B4
_0800B43C: .4byte 0x0007FFFF
_0800B440: .4byte 0x0000FFFF
_0800B444:
	ldrb r0, [r5, #8]
	cmp r0, #4
	bne _0800B450
	movs r0, #1
	mov r1, sl
	strb r0, [r1]
_0800B450:
	movs r4, #0
_0800B452:
	adds r0, r5, #0
	bl sub_0800B200
	adds r4, #1
	cmp r4, #1
	bls _0800B452
_0800B45E:
	bl sub_0800134C
	mov r2, sb
	ldrb r1, [r2]
	cmp r1, #0
	beq _0800B46C
	b _0800B6D2
_0800B46C:
	strb r1, [r5, #0x13]
	strb r1, [r5, #0x14]
	str r1, [r5, #0x2c]
	adds r4, r5, #0
	adds r4, #0x30
	strb r1, [r4]
	movs r2, #0x90
	lsls r2, r2, #2
	adds r0, r5, r2
	strb r1, [r0]
	movs r2, #0xd1
	lsls r2, r2, #2
	adds r0, r5, r2
	strb r1, [r0]
	adds r2, #0x44
	adds r0, r5, r2
	strb r1, [r0]
	adds r2, #8
	adds r0, r5, r2
	strb r1, [r0]
	adds r0, r5, #0
	bl sub_0800B200
	cmp r0, #0
	beq _0800B4A0
	b _0800B6D2
_0800B4A0:
	bl sub_080013A8
	b _0800B4B6
_0800B4A6:
	ldrh r0, [r5, #0xc]
	cmp r0, #0
	beq _0800B4B6
	ldr r0, [r5, #0x2c]
	ldrh r1, [r5, #0xc]
	cmp r0, r1
	blo _0800B4B6
	b _0800B6E0
_0800B4B6:
	adds r0, r5, #0
	bl sub_0800B200
	cmp r0, #0
	beq _0800B4C2
	b _0800B6D2
_0800B4C2:
	ldr r1, _0800B4D8 @ =gUnknown_03000B50
	ldr r0, [r1]
	cmp r0, #0
	beq _0800B4DC
	ldr r0, [r1]
	cmp r0, #1
	beq _0800B51A
	ldr r0, [r1]
	cmp r0, #2
	beq _0800B51A
	b _0800B68A
	.align 2, 0
_0800B4D8: .4byte gUnknown_03000B50
_0800B4DC:
	ldr r1, _0800B4F8 @ =gUnknown_03000B58
	ldr r0, [r1]
	cmp r0, #0
	beq _0800B4A6
	movs r0, #1
	strb r0, [r4]
	ldr r0, [r1]
	cmp r0, #1
	bne _0800B4FC
	strb r0, [r5, #0x13]
	ldrb r0, [r5, #9]
	cmp r0, #2
	bne _0800B508
	b _0800B68A
	.align 2, 0
_0800B4F8: .4byte gUnknown_03000B58
_0800B4FC:
	movs r0, #2
	strb r0, [r5, #0x13]
	ldrb r0, [r5, #9]
	cmp r0, #1
	bne _0800B508
	b _0800B68A
_0800B508:
	adds r0, r5, #0
	bl sub_0800B15C
	ldrb r0, [r5, #0x13]
	cmp r0, #1
	beq _0800B52C
	add r2, sp, #4
	mov r8, r2
	b _0800B63E
_0800B51A:
	bl sub_0800134C
_0800B51E:
	adds r0, r5, #0
	bl sub_0800B200
	cmp r0, #0
	beq _0800B52A
	b _0800B6D2
_0800B52A:
	b _0800B51E
_0800B52C:
	movs r0, #0xe4
	lsls r0, r0, #2
	adds r6, r5, r0
	b _0800B58A
_0800B534:
	movs r1, #0xd1
	lsls r1, r1, #2
	adds r4, r5, r1
	ldrb r0, [r4]
	cmp r0, #0
	bne _0800B574
	ldr r0, _0800B594 @ =gUnknown_03001364
	ldr r0, [r0]
	cmp r0, #0
	beq _0800B568
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r0, r5, r2
	bl sub_08001A28
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _0800B55C
	b _0800B68A
_0800B55C:
	movs r0, #0x90
	lsls r0, r0, #2
	adds r1, r5, r0
	movs r0, #1
	strb r0, [r1]
	strb r0, [r4]
_0800B568:
	movs r1, #0xd1
	lsls r1, r1, #2
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800B584
_0800B574:
	ldrb r0, [r6]
	cmp r0, #0
	beq _0800B584
	mov r2, r8
	cmp r2, #0
	bne _0800B584
	bl sub_080013F8
_0800B584:
	adds r0, r5, #0
	bl sub_0800B200
_0800B58A:
	movs r7, #0
	movs r0, #0
	mov r8, r0
	b _0800B5B4
	.align 2, 0
_0800B594: .4byte gUnknown_03001364
_0800B598:
	ldr r0, [sp]
	cmp r0, #0
	beq _0800B5B0
	ldrb r0, [r6]
	cmp r0, #0
	bne _0800B5B0
	adds r0, r5, #0
	bl sub_0800B354
	cmp r0, #2
	bne _0800B5B0
	b _0800B444
_0800B5B0:
	cmp r4, #1
	beq _0800B5EA
_0800B5B4:
	ldrb r0, [r6]
	cmp r0, #0
	beq _0800B5C2
	movs r2, #0xe3
	lsls r2, r2, #2
	adds r1, r5, r2
	b _0800B5D4
_0800B5C2:
	movs r1, #0xe2
	lsls r1, r1, #2
	adds r0, r5, r1
	ldrb r0, [r0]
	lsls r0, r0, #2
	movs r2, #0xd2
	lsls r2, r2, #2
	adds r0, r0, r2
	adds r1, r5, r0
_0800B5D4:
	mov r0, sp
	bl sub_08001C60
	adds r4, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r4, r0
	beq _0800B68A
	cmp r4, #0
	bne _0800B598
	movs r7, #1
_0800B5EA:
	cmp r7, #0
	beq _0800B534
	b _0800B69E
_0800B5F0:
	movs r0, #0xe4
	lsls r0, r0, #2
	adds r6, r5, r0
	ldrb r0, [r6]
	cmp r0, #0
	bne _0800B638
	ldr r0, _0800B648 @ =gUnknown_03001364
	ldr r0, [r0]
	cmp r0, #0
	beq _0800B638
	movs r1, #0xe2
	lsls r1, r1, #2
	adds r4, r5, r1
	ldrb r1, [r4]
	lsls r1, r1, #2
	movs r2, #0xd2
	lsls r2, r2, #2
	adds r0, r5, r2
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_08001BD0
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _0800B68A
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r1, [r5, #0xa]
	cmp r0, r1
	blo _0800B638
	movs r0, #1
	strb r0, [r6]
_0800B638:
	adds r0, r5, #0
	bl sub_0800B200
_0800B63E:
	movs r7, #0
	movs r2, #0xd1
	lsls r2, r2, #2
	adds r6, r5, r2
	b _0800B668
	.align 2, 0
_0800B648: .4byte gUnknown_03001364
_0800B64C:
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _0800B664
	ldrb r0, [r6]
	cmp r0, #0
	bne _0800B664
	adds r0, r5, #0
	bl sub_0800B3A4
	cmp r0, #2
	bne _0800B664
	b _0800B444
_0800B664:
	cmp r4, #1
	beq _0800B69A
_0800B668:
	ldrb r0, [r6]
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r1, r5, r2
	cmp r0, #0
	beq _0800B67A
	movs r0, #0x91
	lsls r0, r0, #2
	adds r1, r5, r0
_0800B67A:
	mov r0, r8
	bl sub_08001AE0
	adds r4, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r4, r0
	bne _0800B694
_0800B68A:
	ldrh r0, [r5, #0xc]
	cmp r0, #0
	bne _0800B692
	b _0800B444
_0800B692:
	b _0800B6E0
_0800B694:
	cmp r4, #0
	bne _0800B64C
	movs r7, #1
_0800B69A:
	cmp r7, #0
	beq _0800B5F0
_0800B69E:
	ldrb r0, [r5, #8]
	cmp r0, #1
	bne _0800B6CE
	ldrb r0, [r5, #0x13]
	cmp r0, #1
	bne _0800B6B2
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r5, r1
	b _0800B6B8
_0800B6B2:
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r0, r5, r2
_0800B6B8:
	ldr r0, [r0]
	str r0, [r5, #0x28]
	ldr r1, [r5, #0x24]
	ldr r0, [r5, #0x28]
	cmp r1, r0
	beq _0800B6CE
	mov r1, sb
	ldrb r0, [r1]
	cmp r0, #0
	bne _0800B6D2
	b _0800B444
_0800B6CE:
	movs r0, #0
	b _0800B6E6
_0800B6D2:
	bl sub_0800134C
	movs r0, #0x79
	bl sub_0800ADD8
	movs r0, #1
	b _0800B6E6
_0800B6E0:
	bl sub_0800134C
	movs r0, #2
_0800B6E6:
	strb r0, [r5, #0x14]
	adds r0, r5, #0
	movs r1, #2
	bl sub_0800AFA8
	ldrb r0, [r5, #0x10]
	cmp r0, #1
	bne _0800B70C
	ldr r1, _0800B748 @ =gUnknown_02001D0C
	ldrb r0, [r1]
	cmp r0, #0xf
	bhi _0800B70C
	adds r4, r1, #0
_0800B700:
	adds r0, r5, #0
	bl sub_0800B200
	ldrb r0, [r4]
	cmp r0, #0xf
	bls _0800B700
_0800B70C:
	ldrb r0, [r5, #0x10]
	movs r1, #0
	cmp r0, #1
	ble _0800B71A
	cmp r0, #3
	bgt _0800B71A
	movs r1, #1
_0800B71A:
	cmp r1, #0
	beq _0800B738
	ldr r1, _0800B748 @ =gUnknown_02001D0C
	ldrb r0, [r1]
	cmp r0, #0xf
	bhi _0800B738
	cmp r0, #0
	beq _0800B738
	adds r4, r1, #0
_0800B72C:
	adds r0, r5, #0
	bl sub_0800B200
	ldrb r0, [r4]
	cmp r0, #0
	bne _0800B72C
_0800B738:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800B748: .4byte gUnknown_02001D0C

	thumb_func_start sub_0800B74C
sub_0800B74C: @ 0x0800B74C
	push {lr}
	ldr r0, _0800B760 @ =gUnknown_0200E59C
	movs r1, #0xe5
	lsls r1, r1, #2
	movs r2, #0
	bl sub_08000498
	pop {r0}
	bx r0
	.align 2, 0
_0800B760: .4byte gUnknown_0200E59C

	thumb_func_start sub_0800B764
sub_0800B764: @ 0x0800B764
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, _0800B780 @ =gUnknown_0200E59C
	cmp r4, #7
	bls _0800B774
	ldr r0, _0800B784 @ =gUnknown_0831B1D4
	bl sub_080050A8
_0800B774:
	adds r0, r4, r5
	ldrb r0, [r0]
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0800B780: .4byte gUnknown_0200E59C
_0800B784: .4byte gUnknown_0831B1D4

	thumb_func_start sub_0800B788
sub_0800B788: @ 0x0800B788
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r6, _0800B7A4 @ =gUnknown_0200E59C
	cmp r4, #7
	bls _0800B79A
	ldr r0, _0800B7A8 @ =gUnknown_0831B1D4
	bl sub_080050A8
_0800B79A:
	adds r0, r4, r6
	strb r5, [r0]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800B7A4: .4byte gUnknown_0200E59C
_0800B7A8: .4byte gUnknown_0831B1D4

	thumb_func_start sub_0800B7AC
sub_0800B7AC: @ 0x0800B7AC
	push {r4, r5, r6, r7, lr}
	adds r1, r0, #0
	ldr r4, _0800B810 @ =gUnknown_0200E59C
	movs r3, #0x1e
	movs r0, #0
	strb r1, [r4, #8]
	movs r2, #0
	strh r0, [r4, #0xc]
	movs r6, #1
	strb r6, [r4, #0xe]
	strb r6, [r4, #0xf]
	strb r2, [r4, #0x10]
	strb r2, [r4, #0x11]
	strb r2, [r4, #0x12]
	cmp r1, #0
	bne _0800B838
	ldr r0, _0800B814 @ =gUnknown_0300136C
	ldr r1, [r0]
	ldr r0, _0800B818 @ =0x0007FFFF
	ands r1, r0
	str r1, [r4, #0x20]
	strb r2, [r4, #9]
	movs r0, #4
	strb r0, [r4, #0xa]
	ldrb r2, [r4, #1]
	ldrb r0, [r4, #2]
	lsls r0, r0, #8
	orrs r0, r2
	str r0, [r4, #0x44]
	str r1, [r4, #0x48]
	adds r0, r4, #0
	bl sub_0800B3E4
	ldrb r0, [r4, #0x14]
	cmp r0, #0
	beq _0800B7F6
	b _0800BAB2
_0800B7F6:
	ldrb r0, [r4, #0x13]
	subs r5, r0, #1
	strb r5, [r4]
	cmp r5, #0
	bne _0800B81C
	movs r1, #0xd3
	lsls r1, r1, #2
	adds r0, r4, r1
	ldr r1, [r0]
	movs r2, #0xd4
	lsls r2, r2, #2
	b _0800B828
	.align 2, 0
_0800B810: .4byte gUnknown_0200E59C
_0800B814: .4byte gUnknown_0300136C
_0800B818: .4byte 0x0007FFFF
_0800B81C:
	movs r3, #0xa2
	lsls r3, r3, #1
	adds r0, r4, r3
	ldr r1, [r0]
	movs r2, #0xa4
	lsls r2, r2, #1
_0800B828:
	adds r0, r4, r2
	ldr r2, [r0]
	strb r1, [r4, #1]
	lsrs r0, r1, #8
	strb r0, [r4, #2]
	str r2, [r4, #0x24]
_0800B834:
	ldrb r0, [r4, #0x14]
	b _0800BAB2
_0800B838:
	cmp r1, #1
	bne _0800B89C
	ldrb r5, [r4]
	movs r0, #4
	strb r0, [r4, #0xa]
	ldrb r0, [r4, #3]
	adds r1, r6, #0
	ands r1, r0
	ldr r2, [r4, #0x20]
	cmp r5, #0
	bne _0800B85E
	strb r6, [r4, #9]
	movs r3, #0xa2
	lsls r3, r3, #1
	adds r0, r4, r3
	str r1, [r0]
	movs r1, #0xa4
	lsls r1, r1, #1
	b _0800B86E
_0800B85E:
	movs r0, #2
	strb r0, [r4, #9]
	movs r3, #0xd3
	lsls r3, r3, #2
	adds r0, r4, r3
	str r1, [r0]
	movs r1, #0xd4
	lsls r1, r1, #2
_0800B86E:
	adds r0, r4, r1
	str r2, [r0]
	adds r0, r4, #0
	bl sub_0800B3E4
	ldrb r0, [r4, #0x14]
	cmp r0, #0
	beq _0800B880
	b _0800BAB2
_0800B880:
	cmp r5, #0
	bne _0800B88C
	movs r2, #0xd3
	lsls r2, r2, #2
	adds r0, r4, r2
	b _0800B892
_0800B88C:
	movs r3, #0xa2
	lsls r3, r3, #1
	adds r0, r4, r3
_0800B892:
	ldr r1, [r0]
	movs r0, #1
	ands r1, r0
	strb r1, [r4, #3]
	b _0800B834
_0800B89C:
	cmp r1, #5
	bne _0800B8CC
	strb r2, [r4, #0xe]
	strb r2, [r4, #9]
	movs r0, #9
	strb r0, [r4, #0xa]
	adds r0, r4, #0
	bl sub_0800B024
	adds r0, r4, #0
	bl sub_0800B3E4
	ldrb r0, [r4, #0x14]
	cmp r0, #0
	beq _0800B8BC
	b _0800BAB2
_0800B8BC:
	ldrb r0, [r4, #0x13]
	subs r5, r0, #1
	strb r5, [r4]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0800B068
	b _0800B834
_0800B8CC:
	cmp r1, #6
	bne _0800B918
	ldrb r5, [r4]
	strb r2, [r4, #0xe]
	movs r0, #3
	strb r0, [r4, #0xa]
	cmp r5, #0
	bne _0800B8F2
	strh r3, [r4, #0xc]
	strb r2, [r4, #0xf]
	strb r6, [r4, #9]
	movs r0, #0xf
	bl sub_08010170
	movs r2, #0xa2
	lsls r2, r2, #1
	adds r1, r4, r2
	str r0, [r1]
	b _0800B8F6
_0800B8F2:
	movs r0, #2
	strb r0, [r4, #9]
_0800B8F6:
	adds r0, r4, #0
	bl sub_0800B3E4
	ldrb r0, [r4, #0x14]
	cmp r0, #0
	beq _0800B904
	b _0800BAB2
_0800B904:
	cmp r5, #0
	beq _0800B834
	movs r3, #0xa2
	lsls r3, r3, #1
	adds r0, r4, r3
	ldrb r1, [r0]
	movs r0, #0xf
	bl sub_08010180
	b _0800B834
_0800B918:
	cmp r1, #7
	bne _0800B93C
	ldrb r5, [r4]
	strb r2, [r4, #0xe]
	strb r2, [r4, #0xf]
	movs r0, #3
	strb r0, [r4, #0x10]
	strb r3, [r4, #0x11]
	movs r0, #5
	strb r0, [r4, #0xa]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0800B0B0
	cmp r5, #0
	bne _0800B93A
	b _0800BA4E
_0800B93A:
	b _0800BA52
_0800B93C:
	cmp r1, #2
	bne _0800B98E
	strb r6, [r4, #0xe]
	strb r2, [r4, #0xf]
	strb r6, [r4, #0x12]
	strb r2, [r4, #9]
	movs r0, #9
	strb r0, [r4, #0xa]
	adds r0, r4, #0
	bl sub_0800B024
	adds r0, r4, #0
	bl sub_0800B3E4
	ldrb r0, [r4, #0x14]
	cmp r0, #0
	beq _0800B960
	b _0800BAB2
_0800B960:
	ldrb r0, [r4, #0x13]
	subs r5, r0, #1
	strb r5, [r4]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0800B068
	cmp r5, #0
	bne _0800B974
	b _0800B834
_0800B974:
	movs r7, #0x18
	movs r5, #0
	movs r0, #0xb0
	lsls r0, r0, #1
	adds r6, r4, r0
_0800B97E:
	ldm r6!, {r1}
	adds r0, r7, r5
	bl sub_08010180
	adds r5, #1
	cmp r5, #5
	bls _0800B97E
	b _0800B834
_0800B98E:
	cmp r1, #3
	bne _0800BA34
	ldrb r5, [r4]
	ldrb r6, [r4, #4]
	ldrb r1, [r4, #6]
	cmp r6, #0
	beq _0800B9A2
	cmp r1, #0
	bne _0800B9A2
	strb r2, [r4, #0xe]
_0800B9A2:
	movs r0, #0
	strb r0, [r4, #0xf]
	movs r0, #3
	strb r0, [r4, #0xa]
	cmp r5, #0
	bne _0800B9B2
	movs r0, #1
	b _0800B9B4
_0800B9B2:
	movs r0, #2
_0800B9B4:
	strb r0, [r4, #9]
	cmp r6, #0
	beq _0800B9F6
	cmp r1, #0
	bne _0800B9C6
	strh r3, [r4, #0xc]
	movs r0, #1
	strb r0, [r4, #0x10]
	b _0800B9CA
_0800B9C6:
	movs r0, #1
	strb r0, [r4, #0x12]
_0800B9CA:
	movs r0, #0xf
	bl sub_08010170
	adds r1, r0, #0
	ldrb r0, [r4, #5]
	cmp r0, #0
	beq _0800B9DE
	movs r0, #0x80
	lsls r0, r0, #1
	orrs r1, r0
_0800B9DE:
	cmp r5, #0
	bne _0800B9EC
	movs r2, #0xa2
	lsls r2, r2, #1
	adds r0, r4, r2
	str r1, [r0]
	b _0800B9FA
_0800B9EC:
	movs r3, #0xd3
	lsls r3, r3, #2
	adds r0, r4, r3
	str r1, [r0]
	b _0800B9FA
_0800B9F6:
	movs r0, #1
	strb r0, [r4, #0x12]
_0800B9FA:
	adds r0, r4, #0
	bl sub_0800B3E4
	ldrb r0, [r4, #0x14]
	cmp r0, #0
	bne _0800BAB2
	cmp r6, #0
	beq _0800BA0C
	b _0800B834
_0800BA0C:
	cmp r5, #0
	bne _0800BA18
	movs r1, #0xd3
	lsls r1, r1, #2
	adds r0, r4, r1
	b _0800BA1E
_0800BA18:
	movs r2, #0xa2
	lsls r2, r2, #1
	adds r0, r4, r2
_0800BA1E:
	ldr r5, [r0]
	movs r1, #0xff
	ands r1, r5
	movs r0, #0xf
	bl sub_08010180
	lsrs r0, r5, #8
	movs r1, #1
	ands r0, r1
	strb r0, [r4, #5]
	b _0800B834
_0800BA34:
	cmp r1, #4
	bne _0800BA6C
	ldrb r5, [r4]
	strb r2, [r4, #0xf]
	strb r3, [r4, #0x11]
	movs r0, #5
	strb r0, [r4, #0xa]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0800B0B0
	cmp r5, #0
	bne _0800BA52
_0800BA4E:
	strb r6, [r4, #9]
	b _0800BA56
_0800BA52:
	movs r0, #2
	strb r0, [r4, #9]
_0800BA56:
	adds r0, r4, #0
	bl sub_0800B3E4
	ldrb r0, [r4, #0x14]
	cmp r0, #0
	bne _0800BAB2
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0800B0F8
	b _0800B834
_0800BA6C:
	cmp r1, #8
	bne _0800BAAA
	ldrb r5, [r4]
	movs r0, #3
	strb r0, [r4, #0xa]
	cmp r5, #0
	bne _0800BA88
	strb r6, [r4, #9]
	movs r3, #0xa2
	lsls r3, r3, #1
	adds r1, r4, r3
	ldrb r0, [r4, #7]
	str r0, [r1]
	b _0800BA8C
_0800BA88:
	movs r0, #2
	strb r0, [r4, #9]
_0800BA8C:
	adds r0, r4, #0
	bl sub_0800B3E4
	ldrb r0, [r4, #0x14]
	cmp r0, #0
	bne _0800BAB2
	cmp r5, #0
	bne _0800BA9E
	b _0800B834
_0800BA9E:
	movs r1, #0xa2
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r0, [r0]
	strb r0, [r4, #7]
	b _0800B834
_0800BAAA:
	ldr r0, _0800BAB8 @ =gUnknown_0831B1C0
	bl sub_080050A8
	movs r0, #0
_0800BAB2:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0800BAB8: .4byte gUnknown_0831B1C0

	thumb_func_start sub_0800BABC
sub_0800BABC: @ 0x0800BABC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r6, r0, #0
	adds r5, r1, #0
	mov sb, r2
	movs r0, #0
	mov r8, r0
	mov r4, sp
	movs r7, #0x1f
_0800BAD4:
	ldrh r2, [r5]
	lsls r1, r2, #0x10
	adds r5, #2
	adds r0, r7, #0
	ands r0, r2
	strb r0, [r4]
	lsrs r0, r1, #0x15
	ands r0, r7
	strb r0, [r4, #1]
	lsrs r1, r1, #0x1a
	ands r1, r7
	strb r1, [r4, #2]
	mov r0, sp
	movs r1, #0x10
	movs r2, #0x10
	bl sub_0800A37C
	mov r0, sp
	mov r1, sb
	bl sub_0800A358
	ldrb r1, [r4, #2]
	lsls r1, r1, #0xa
	ldrb r0, [r4, #1]
	lsls r0, r0, #5
	orrs r1, r0
	ldrb r0, [r4]
	orrs r1, r0
	strh r1, [r6]
	adds r6, #2
	movs r0, #1
	add r8, r0
	mov r0, r8
	cmp r0, #0xf
	bls _0800BAD4
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0800BB28
sub_0800BB28: @ 0x0800BB28
	push {lr}
	lsls r1, r0, #4
	ldr r3, _0800BB5C @ =0x0600E800
	adds r2, r1, r3
	movs r3, #0x96
	lsls r3, r3, #2
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _0800BB3E
	adds r3, #0x20
_0800BB3E:
	movs r1, #0
_0800BB40:
	movs r0, #0
	adds r1, #1
_0800BB44:
	strh r3, [r2]
	adds r2, #2
	adds r3, #1
	adds r0, #1
	cmp r0, #7
	bls _0800BB44
	adds r2, #0x30
	cmp r1, #3
	bls _0800BB40
	pop {r0}
	bx r0
	.align 2, 0
_0800BB5C: .4byte 0x0600E800

	thumb_func_start sub_0800BB60
sub_0800BB60: @ 0x0800BB60
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r1, #0
	movs r1, #0x20
	subs r1, r1, r7
	lsls r1, r1, #1
	ldr r2, _0800BBEC @ =0x0600E800
	adds r1, r1, r2
	lsls r0, r0, #8
	adds r2, r0, r2
	adds r4, r7, #0
	movs r5, #0
	mov r8, r0
	lsls r0, r4, #1
	mov ip, r0
	rsbs r6, r0, #0
_0800BB82:
	movs r3, #0
	cmp r3, r4
	bhs _0800BB96
_0800BB88:
	ldrh r0, [r1]
	strh r0, [r2]
	adds r2, #2
	adds r1, #2
	adds r3, #1
	cmp r3, r4
	blo _0800BB88
_0800BB96:
	adds r0, r1, #0
	adds r0, #0x40
	adds r1, r0, r6
	adds r0, r2, #0
	adds r0, #0x40
	adds r2, r0, r6
	adds r5, #1
	cmp r5, #3
	bls _0800BB82
	ldr r1, _0800BBEC @ =0x0600E800
	mov r2, ip
	adds r0, r2, r1
	mov r3, r8
	adds r2, r3, r0
	movs r0, #0x20
	subs r4, r0, r7
	movs r5, #0
	lsls r0, r4, #1
	rsbs r6, r0, #0
_0800BBBC:
	movs r3, #0
	adds r5, #1
	cmp r3, r4
	bhs _0800BBD2
_0800BBC4:
	ldrh r0, [r1]
	strh r0, [r2]
	adds r2, #2
	adds r1, #2
	adds r3, #1
	cmp r3, r4
	blo _0800BBC4
_0800BBD2:
	adds r0, r1, #0
	adds r0, #0x40
	adds r1, r0, r6
	adds r0, r2, #0
	adds r0, #0x40
	adds r2, r0, r6
	cmp r5, #3
	bls _0800BBBC
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800BBEC: .4byte 0x0600E800

	thumb_func_start sub_0800BBF0
sub_0800BBF0: @ 0x0800BBF0
	push {lr}
	movs r0, #0
	bl sub_0800BB28
	movs r0, #1
	bl sub_0800BB28
	movs r0, #2
	bl sub_0800BB28
	movs r0, #3
	bl sub_0800BB28
	movs r0, #1
	movs r1, #4
	bl sub_0800BB60
	movs r0, #2
	movs r1, #8
	bl sub_0800BB60
	movs r0, #3
	movs r1, #0xc
	bl sub_0800BB60
	movs r0, #4
	movs r1, #0x10
	bl sub_0800BB60
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800BC30
sub_0800BC30: @ 0x0800BC30
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r7, r1, #0
	ldr r1, _0800BC58 @ =gUnknown_030013B0
	mov sl, r1
	movs r1, #0
	strh r1, [r0, #0x3e]
	bl sub_08011C18
	cmp r7, #0
	bne _0800BC60
	movs r2, #0x14
	movs r3, #4
	ldr r0, _0800BC5C @ =gUnknown_0831B1F4
	b _0800BC7A
	.align 2, 0
_0800BC58: .4byte gUnknown_030013B0
_0800BC5C: .4byte gUnknown_0831B1F4
_0800BC60:
	cmp r7, #1
	bne _0800BC74
	movs r2, #0x14
	movs r3, #6
	ldr r1, _0800BC70 @ =gUnknown_0831B218
	mov r8, r1
	b _0800BC7C
	.align 2, 0
_0800BC70: .4byte gUnknown_0831B218
_0800BC74:
	movs r2, #0x14
	movs r3, #4
	ldr r0, _0800BD50 @ =gUnknown_0831B258
_0800BC7A:
	mov r8, r0
_0800BC7C:
	movs r4, #0x14
	movs r5, #1
	adds r0, r2, #0
	ands r0, r5
	cmp r0, #0
	beq _0800BC8A
	adds r4, r2, #1
_0800BC8A:
	movs r1, #0xf
	lsrs r0, r4, #1
	subs r6, r1, r0
	adds r1, r3, #0
	adds r0, r3, #0
	ands r0, r5
	cmp r0, #0
	beq _0800BC9C
	adds r1, r3, #1
_0800BC9C:
	movs r4, #0xa
	lsrs r0, r1, #1
	subs r4, r4, r0
	movs r1, #0
	mov sb, r1
	str r1, [sp]
	str r1, [sp, #4]
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_0800C06C
	mov r0, sl
	movs r1, #0
	movs r2, #0
	bl sub_08004CF0
	adds r1, r6, #1
	adds r4, #1
	mov r0, sl
	adds r2, r4, #0
	mov r3, r8
	bl sub_08004E28
	ldr r1, _0800BD54 @ =gUnknown_083E6C3C
	ldr r5, _0800BD58 @ =0x06009600
	movs r4, #0x80
	lsls r4, r4, #4
	adds r0, r5, #0
	adds r2, r4, #0
	bl sub_08000314
	adds r5, r5, r4
	ldr r1, _0800BD5C @ =gUnknown_083E745C
	adds r0, r5, #0
	adds r2, r4, #0
	bl sub_08000314
	movs r4, #4
	cmp r7, #0
	bne _0800BCEE
	movs r4, #1
_0800BCEE:
	ldr r1, _0800BD60 @ =gUnknown_083E6C1C
	ldr r5, _0800BD64 @ =0x05000100
	adds r0, r5, #0
	adds r2, r4, #0
	bl sub_0800BABC
	adds r5, #0x20
	ldr r1, _0800BD68 @ =gUnknown_083E743C
	adds r0, r5, #0
	adds r2, r4, #0
	bl sub_0800BABC
	bl sub_0800BBF0
	movs r2, #0x80
	lsls r2, r2, #0x13
	movs r0, #0x80
	lsls r0, r0, #3
	ldrh r1, [r2]
	orrs r0, r1
	strh r0, [r2]
	adds r2, #8
	ldrh r1, [r2]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strh r0, [r2]
	adds r2, #4
	movs r0, #0xec
	lsls r0, r0, #5
	adds r1, r0, #0
	movs r0, #3
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _0800BD6C @ =REG_BG2HOFS
	mov r1, sb
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800BD50: .4byte gUnknown_0831B258
_0800BD54: .4byte gUnknown_083E6C3C
_0800BD58: .4byte 0x06009600
_0800BD5C: .4byte gUnknown_083E745C
_0800BD60: .4byte gUnknown_083E6C1C
_0800BD64: .4byte 0x05000100
_0800BD68: .4byte gUnknown_083E743C
_0800BD6C: .4byte REG_BG2HOFS

	thumb_func_start sub_0800BD70
sub_0800BD70: @ 0x0800BD70
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldr r0, _0800BD90 @ =0xFFFFFBFF
	ldrh r1, [r2]
	ands r0, r1
	strh r0, [r2]
	adds r2, #8
	ldrh r1, [r2]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strh r0, [r2]
	bx lr
	.align 2, 0
_0800BD90: .4byte 0xFFFFFBFF

	thumb_func_start sub_0800BD94
sub_0800BD94: @ 0x0800BD94
	ldrh r3, [r0, #0x3e]
	adds r1, r3, #1
	movs r2, #0xff
	ands r1, r2
	strh r1, [r0, #0x3e]
	ldr r0, _0800BDA8 @ =REG_BG2HOFS
	rsbs r3, r3, #0
	strh r3, [r0]
	bx lr
	.align 2, 0
_0800BDA8: .4byte REG_BG2HOFS

	thumb_func_start sub_0800BDAC
sub_0800BDAC: @ 0x0800BDAC
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
_0800BDB2:
	adds r0, r4, #5
	adds r1, r5, r4
	ldrb r1, [r1]
	bl sub_08010180
	adds r4, #1
	cmp r4, #4
	bls _0800BDB2
	movs r0, #4
	bl sub_0800B7AC
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0800BDD0
sub_0800BDD0: @ 0x0800BDD0
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	bl sub_08011C70
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_0800BC30
	movs r4, #7
_0800BDE6:
	bl VBlankIntrWait
	lsls r0, r4, #1
	bl sub_0800A124
	adds r0, r5, #0
	bl sub_0800BD94
	subs r4, #1
	cmp r4, #0
	bge _0800BDE6
	ldr r0, _0800BE18 @ =0x00000391
	adds r4, r5, r0
	ldrb r0, [r4]
	cmp r0, #0
	beq _0800BE20
	ldr r1, _0800BE1C @ =0x00000392
	adds r0, r5, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	bl sub_0800ACD0
	movs r0, #0
	strb r0, [r4]
	b _0800BE2E
	.align 2, 0
_0800BE18: .4byte 0x00000391
_0800BE1C: .4byte 0x00000392
_0800BE20:
	movs r1, #0xb6
	cmp r6, #0
	bne _0800BE28
	movs r1, #0xb4
_0800BE28:
	adds r0, r7, #0
	bl sub_0800AC88
_0800BE2E:
	movs r0, #3
	cmp r6, #0
	bne _0800BE36
	movs r0, #2
_0800BE36:
	bl sub_0800B7AC
	adds r6, r0, #0
	cmp r6, #0
	beq _0800BE52
	ldr r0, _0800BE84 @ =0x00000391
	adds r1, r5, r0
	movs r0, #1
	strb r0, [r1]
	bl sub_0800ADA8
	ldr r2, _0800BE88 @ =0x00000392
	adds r1, r5, r2
	strh r0, [r1]
_0800BE52:
	cmp r6, #1
	beq _0800BE5E
	adds r0, r7, #0
	movs r1, #0
	bl sub_0800AC9C
_0800BE5E:
	movs r4, #0
_0800BE60:
	bl VBlankIntrWait
	lsls r0, r4, #1
	bl sub_0800A124
	adds r0, r5, #0
	bl sub_0800BD94
	adds r4, #1
	cmp r4, #8
	ble _0800BE60
	bl sub_0800BD70
	adds r0, r6, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0800BE84: .4byte 0x00000391
_0800BE88: .4byte 0x00000392

	thumb_func_start sub_0800BE8C
sub_0800BE8C: @ 0x0800BE8C
	push {lr}
	adds r2, r0, #0
	ldr r0, _0800BEA4 @ =gUnknown_0200E59C
	ldr r1, _0800BEA8 @ =0x00000391
	adds r3, r0, r1
	movs r1, #0
	strb r1, [r3]
	bl sub_0800BDD0
	pop {r1}
	bx r1
	.align 2, 0
_0800BEA4: .4byte gUnknown_0200E59C
_0800BEA8: .4byte 0x00000391

	thumb_func_start sub_0800BEAC
sub_0800BEAC: @ 0x0800BEAC
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r4, _0800BEE4 @ =gUnknown_0200E59C
	ldrb r1, [r4, #4]
	ldr r2, _0800BEE8 @ =0x00000391
	adds r0, r4, r2
	movs r2, #0
	strb r2, [r0]
	cmp r1, #0
	beq _0800BEEC
	strb r2, [r4, #6]
	movs r0, #3
	bl sub_0800B7AC
	cmp r0, #0
	beq _0800BEFC
	movs r0, #1
	strb r0, [r4, #6]
	movs r5, #2
_0800BED2:
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_0800BDD0
	cmp r0, #0
	bne _0800BED2
	strb r0, [r4, #6]
	b _0800BEFC
	.align 2, 0
_0800BEE4: .4byte gUnknown_0200E59C
_0800BEE8: .4byte 0x00000391
_0800BEEC:
	movs r5, #1
_0800BEEE:
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_0800BDD0
	cmp r0, #0
	bne _0800BEEE
_0800BEFC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800BF04
sub_0800BF04: @ 0x0800BF04
	push {r4, lr}
	ldr r4, _0800BF2C @ =gUnknown_0200EC1C
	ldr r2, _0800BF30 @ =gUnknown_083E7C9B
	adds r2, r0, r2
	ldr r1, _0800BF34 @ =gUnknown_083E7C9E
	adds r0, r0, r1
	ldrb r3, [r0]
	ldrb r1, [r2]
	cmp r1, r3
	bhi _0800BF24
	movs r2, #0
_0800BF1A:
	adds r0, r4, r1
	strb r2, [r0]
	adds r1, #1
	cmp r1, r3
	bls _0800BF1A
_0800BF24:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800BF2C: .4byte gUnknown_0200EC1C
_0800BF30: .4byte gUnknown_083E7C9B
_0800BF34: .4byte gUnknown_083E7C9E

	thumb_func_start sub_0800BF38
sub_0800BF38: @ 0x0800BF38
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r3, _0800BF84 @ =gUnknown_0200E9DC
	movs r2, #0
	ldr r1, _0800BF88 @ =0xFFFFFB08
	adds r0, r3, r1
	ldrb r0, [r0]
	cmp r0, #2
	bne _0800BF4C
	movs r2, #1
_0800BF4C:
	ldr r1, _0800BF8C @ =gUnknown_083E7C9B
	adds r1, r2, r1
	ldr r0, _0800BF90 @ =gUnknown_083E7C9E
	adds r0, r2, r0
	ldrb r2, [r0]
	ldrb r4, [r1]
	cmp r4, r2
	bhi _0800BF9C
	lsls r0, r4, #3
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r1, r0, r3
_0800BF64:
	movs r5, #0x90
	lsls r5, r5, #2
	adds r0, r3, r5
	adds r5, r0, r4
	ldrb r0, [r5]
	cmp r0, #0
	bne _0800BF94
	adds r0, r1, #0
	adds r1, r6, #0
	movs r2, #0x48
	bl sub_080002C4
	movs r0, #1
	strb r0, [r5]
	adds r0, r4, #0
	b _0800BFA4
	.align 2, 0
_0800BF84: .4byte gUnknown_0200E9DC
_0800BF88: .4byte 0xFFFFFB08
_0800BF8C: .4byte gUnknown_083E7C9B
_0800BF90: .4byte gUnknown_083E7C9E
_0800BF94:
	adds r1, #0x48
	adds r4, #1
	cmp r4, r2
	bls _0800BF64
_0800BF9C:
	ldr r0, _0800BFAC @ =gUnknown_0831B27C
	bl sub_080050A8
	movs r0, #0
_0800BFA4:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0800BFAC: .4byte gUnknown_0831B27C

	thumb_func_start sub_0800BFB0
sub_0800BFB0: @ 0x0800BFB0
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0800BFD0 @ =gUnknown_0200E9DC
	movs r1, #0
	cmp r1, r4
	bgt _0800BFC2
	cmp r4, #7
	bgt _0800BFC2
	movs r1, #1
_0800BFC2:
	cmp r1, #0
	bne _0800BFD8
	ldr r0, _0800BFD4 @ =gUnknown_0831B2A4
	bl sub_080050A8
	movs r0, #0
	b _0800BFF6
	.align 2, 0
_0800BFD0: .4byte gUnknown_0200E9DC
_0800BFD4: .4byte gUnknown_0831B2A4
_0800BFD8:
	movs r1, #0x90
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r0, r0, r4
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800BFEC
	ldr r0, _0800BFFC @ =gUnknown_0831B2D4
	bl sub_080050A8
_0800BFEC:
	lsls r0, r4, #3
	adds r0, r0, r4
	lsls r0, r0, #3
	ldr r1, _0800C000 @ =gUnknown_0200E9DC
	adds r0, r0, r1
_0800BFF6:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0800BFFC: .4byte gUnknown_0831B2D4
_0800C000: .4byte gUnknown_0200E9DC

	thumb_func_start sub_0800C004
sub_0800C004: @ 0x0800C004
	ldr r1, _0800C014 @ =gUnknown_0200C1A0
	ldr r2, _0800C018 @ =0x00002A7C
	adds r1, r1, r2
	adds r0, r0, r1
	movs r1, #0
	strb r1, [r0]
	bx lr
	.align 2, 0
_0800C014: .4byte gUnknown_0200C1A0
_0800C018: .4byte 0x00002A7C

	thumb_func_start sub_0800C01C
sub_0800C01C: @ 0x0800C01C
	push {r4, r5, lr}
	ldr r5, _0800C04C @ =gUnknown_0200EC1C
	movs r4, #0
	ldr r2, _0800C050 @ =gUnknown_083E7C9B
	adds r2, r0, r2
	ldr r1, _0800C054 @ =gUnknown_083E7C9E
	adds r0, r0, r1
	ldrb r3, [r0]
	ldrb r1, [r2]
	cmp r1, r3
	bhi _0800C042
_0800C032:
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800C03C
	adds r4, #1
_0800C03C:
	adds r1, #1
	cmp r1, r3
	bls _0800C032
_0800C042:
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0800C04C: .4byte gUnknown_0200EC1C
_0800C050: .4byte gUnknown_083E7C9B
_0800C054: .4byte gUnknown_083E7C9E

	thumb_func_start sub_0800C058
sub_0800C058: @ 0x0800C058
	ldr r0, _0800C068 @ =gUnknown_0200E9D8
	movs r1, #0
	strb r1, [r0]
	strb r1, [r0, #1]
	movs r1, #8
	strb r1, [r0, #2]
	strb r1, [r0, #3]
	bx lr
	.align 2, 0
_0800C068: .4byte gUnknown_0200E9D8

	thumb_func_start sub_0800C06C
sub_0800C06C: @ 0x0800C06C
	push {r4, r5, lr}
	sub sp, #0x48
	ldr r5, [sp, #0x54]
	mov r4, sp
	strb r0, [r4]
	mov r0, sp
	strb r1, [r0, #1]
	strb r2, [r0, #2]
	strb r3, [r0, #3]
	mov r2, sp
	movs r1, #1
	adds r0, r5, #0
	ands r0, r1
	strb r0, [r2, #4]
	lsrs r0, r5, #1
	ands r0, r1
	strb r0, [r2, #5]
	lsrs r0, r5, #2
	ands r0, r1
	strb r0, [r2, #6]
	lsrs r0, r5, #3
	ands r0, r1
	strb r0, [r2, #7]
	ldr r0, _0800C0AC @ =gUnknown_0200C1A0
	ldr r1, _0800C0B0 @ =0x00002344
	adds r0, r0, r1
	ldrb r1, [r0]
	cmp r1, #2
	bne _0800C0B4
	mov r0, sp
	strb r1, [r0, #8]
	b _0800C0BA
	.align 2, 0
_0800C0AC: .4byte gUnknown_0200C1A0
_0800C0B0: .4byte 0x00002344
_0800C0B4:
	mov r1, sp
	movs r0, #1
	strb r0, [r1, #8]
_0800C0BA:
	str r5, [sp, #0x44]
	mov r0, sp
	bl sub_08005E9C
	mov r0, sp
	ldrb r0, [r0, #4]
	cmp r0, #0
	beq _0800C0D0
	movs r0, #1
	bl sub_080059C4
_0800C0D0:
	ldr r0, [sp, #0x58]
	cmp r0, #0
	bne _0800C0DC
	movs r0, #1
	rsbs r0, r0, #0
	b _0800C0E2
_0800C0DC:
	mov r0, sp
	bl sub_0800BF38
_0800C0E2:
	add sp, #0x48
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0800C0EC
sub_0800C0EC: @ 0x0800C0EC
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r6, _0800C170 @ =gUnknown_0200E9D8
	movs r0, #2
	rsbs r0, r0, #0
	cmp r4, r0
	bne _0800C10E
	adds r1, r2, #0
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	beq _0800C108
	adds r1, r2, #1
_0800C108:
	lsrs r1, r1, #1
	movs r0, #0xf
	subs r4, r0, r1
_0800C10E:
	movs r0, #2
	rsbs r0, r0, #0
	cmp r5, r0
	bne _0800C128
	adds r1, r3, #0
	movs r0, #1
	ands r0, r3
	cmp r0, #0
	beq _0800C122
	adds r1, r3, #1
_0800C122:
	lsrs r1, r1, #1
	movs r0, #0xa
	subs r5, r0, r1
_0800C128:
	adds r0, r4, r2
	subs r2, r0, #1
	adds r0, r5, r3
	subs r0, #1
	movs r1, #1
	rsbs r1, r1, #0
	cmp r1, r4
	bge _0800C13A
	adds r1, r4, #0
_0800C13A:
	adds r4, r1, #0
	movs r1, #0x1e
	cmp r1, r2
	ble _0800C144
	adds r1, r2, #0
_0800C144:
	adds r2, r1, #0
	movs r1, #1
	rsbs r1, r1, #0
	cmp r1, r5
	bge _0800C150
	adds r1, r5, #0
_0800C150:
	adds r5, r1, #0
	movs r1, #0x14
	cmp r1, r0
	ble _0800C15A
	adds r1, r0, #0
_0800C15A:
	subs r0, r2, r4
	adds r2, r0, #1
	subs r0, r1, r5
	adds r3, r0, #1
	strb r4, [r6]
	strb r5, [r6, #1]
	strb r2, [r6, #2]
	strb r3, [r6, #3]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800C170: .4byte gUnknown_0200E9D8

	thumb_func_start sub_0800C174
sub_0800C174: @ 0x0800C174
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	ldr r5, [sp, #0x14]
	ldr r4, _0800C1AC @ =gUnknown_0200E9D8
	bl sub_0800C0EC
	movs r0, #0
	ldrsb r0, [r4, r0]
	adds r6, r0, #1
	movs r0, #1
	ldrsb r0, [r4, r0]
	adds r1, r0, #1
	movs r0, #2
	ldrsb r0, [r4, r0]
	subs r2, r0, #2
	movs r0, #3
	ldrsb r0, [r4, r0]
	subs r3, r0, #2
	str r5, [sp]
	adds r0, r6, #0
	bl sub_0800D328
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800C1AC: .4byte gUnknown_0200E9D8

	thumb_func_start sub_0800C1B0
sub_0800C1B0: @ 0x0800C1B0
	push {r4, r5, lr}
	sub sp, #8
	ldr r3, _0800C1E0 @ =gUnknown_0200E9D8
	lsrs r4, r0, #2
	movs r1, #1
	ands r4, r1
	movs r5, #0
	ldrsb r5, [r3, r5]
	movs r1, #1
	ldrsb r1, [r3, r1]
	movs r2, #2
	ldrsb r2, [r3, r2]
	ldrb r3, [r3, #3]
	lsls r3, r3, #0x18
	asrs r3, r3, #0x18
	str r0, [sp]
	str r4, [sp, #4]
	adds r0, r5, #0
	bl sub_0800C06C
	add sp, #8
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0800C1E0: .4byte gUnknown_0200E9D8

	thumb_func_start sub_0800C1E4
sub_0800C1E4: @ 0x0800C1E4
	push {r4, r5, lr}
	adds r5, r0, #0
	cmp r5, #0
	blt _0800C21E
	bl sub_0800BFB0
	adds r0, r5, #0
	bl sub_0800BFB0
	adds r4, r0, #0
	bl sub_08005F9C
	ldrb r0, [r4, #4]
	cmp r0, #0
	beq _0800C218
	bl sub_0800C5C0
	movs r1, #0
	cmp r0, #1
	bhi _0800C20E
	movs r1, #1
_0800C20E:
	cmp r1, #0
	beq _0800C218
	movs r0, #0
	bl sub_080059C4
_0800C218:
	adds r0, r5, #0
	bl sub_0800C004
_0800C21E:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_0800C224
sub_0800C224: @ 0x0800C224
	push {r4, r5, r6, r7, lr}
	adds r1, r0, #0
	movs r6, #0
	movs r5, #0
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r1, r2
	ldrh r0, [r0]
	cmp r6, r0
	bhs _0800C252
	adds r4, r1, #0
	adds r7, r4, r2
_0800C23C:
	ldr r0, [r4]
	bl sub_08004954
	cmp r0, r6
	bls _0800C248
	adds r6, r0, #0
_0800C248:
	adds r4, #8
	adds r5, #1
	ldrh r0, [r7]
	cmp r5, r0
	blo _0800C23C
_0800C252:
	adds r0, r6, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0800C25C
sub_0800C25C: @ 0x0800C25C
	push {r4, lr}
	adds r1, r0, #0
	ldr r2, _0800C274 @ =0x00000802
	adds r0, r1, r2
	movs r4, #0
	ldrsh r3, [r0, r4]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r3, r0
	bne _0800C27C
	b _0800C2A0
	.align 2, 0
_0800C274: .4byte 0x00000802
_0800C278:
	adds r0, r2, #0
	b _0800C2A2
_0800C27C:
	movs r2, #0
	movs r4, #0x80
	lsls r4, r4, #4
	adds r0, r1, r4
	ldrh r0, [r0]
	cmp r2, r0
	bhs _0800C29A
	adds r4, r0, #0
_0800C28C:
	ldrh r0, [r1, #4]
	cmp r0, r3
	beq _0800C278
	adds r1, #8
	adds r2, #1
	cmp r2, r4
	blo _0800C28C
_0800C29A:
	ldr r0, _0800C2A8 @ =gUnknown_0831B330
	bl sub_080050A8
_0800C2A0:
	movs r0, #0
_0800C2A2:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0800C2A8: .4byte gUnknown_0831B330

	thumb_func_start sub_0800C2AC
sub_0800C2AC: @ 0x0800C2AC
	push {r4, lr}
	adds r2, r0, #0
	adds r4, r1, #0
	movs r3, #0
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r2, r1
	ldrh r0, [r0]
	cmp r3, r0
	bhs _0800C2D4
	adds r1, r0, #0
_0800C2C2:
	ldrh r0, [r2, #4]
	cmp r0, r4
	bne _0800C2CC
	adds r0, r3, #0
	b _0800C2DC
_0800C2CC:
	adds r2, #8
	adds r3, #1
	cmp r3, r1
	blo _0800C2C2
_0800C2D4:
	ldr r0, _0800C2E4 @ =gUnknown_0831B35C
	bl sub_080050A8
	movs r0, #0
_0800C2DC:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0800C2E4: .4byte gUnknown_0831B35C

	thumb_func_start sub_0800C2E8
sub_0800C2E8: @ 0x0800C2E8
	ldr r1, _0800C300 @ =gUnknown_0200EC24
	movs r0, #0x80
	lsls r0, r0, #4
	adds r2, r1, r0
	movs r0, #0
	strh r0, [r2]
	ldr r0, _0800C304 @ =0x00000802
	adds r1, r1, r0
	ldr r0, _0800C308 @ =0x0000FFFF
	strh r0, [r1]
	bx lr
	.align 2, 0
_0800C300: .4byte gUnknown_0200EC24
_0800C304: .4byte 0x00000802
_0800C308: .4byte 0x0000FFFF

	thumb_func_start sub_0800C30C
sub_0800C30C: @ 0x0800C30C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	ldr r0, _0800C350 @ =gUnknown_0200EC24
	mov r8, r0
	movs r4, #0x80
	lsls r4, r4, #4
	add r4, r8
	ldrh r1, [r4]
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	bne _0800C332
	ldr r0, _0800C354 @ =gUnknown_0831B38C
	bl sub_080050A8
_0800C332:
	ldrh r0, [r4]
	adds r1, r0, #1
	strh r1, [r4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xd
	add r0, r8
	str r5, [r0]
	strh r6, [r0, #4]
	strb r7, [r0, #6]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800C350: .4byte gUnknown_0200EC24
_0800C354: .4byte gUnknown_0831B38C

	thumb_func_start sub_0800C358
sub_0800C358: @ 0x0800C358
	ldr r1, _0800C364 @ =gUnknown_0200EC24
	ldr r2, _0800C368 @ =0x00000802
	adds r1, r1, r2
	strh r0, [r1]
	bx lr
	.align 2, 0
_0800C364: .4byte gUnknown_0200EC24
_0800C368: .4byte 0x00000802

	thumb_func_start sub_0800C36C
sub_0800C36C: @ 0x0800C36C
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	adds r5, r1, #0
	adds r6, r2, #0
	mov r8, r3
	bl sub_0800C51C
	adds r4, r0, #0
	ldr r0, _0800C3B4 @ =0x0000080C
	adds r0, r0, r4
	mov sb, r0
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0800C2AC
	adds r1, r0, #0
	lsls r0, r1, #3
	adds r0, r4, r0
	str r6, [r0]
	mov r2, r8
	strb r2, [r0, #6]
	ldr r0, _0800C3B8 @ =gUnknown_0200C1A0
	ldr r2, _0800C3BC @ =0x00006610
	adds r0, r0, r2
	str r4, [r0]
	mov r0, sb
	bl sub_080069B8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800C3B4: .4byte 0x0000080C
_0800C3B8: .4byte gUnknown_0200C1A0
_0800C3BC: .4byte 0x00006610

	thumb_func_start sub_0800C3C0
sub_0800C3C0: @ 0x0800C3C0
	push {r4, r5, lr}
	adds r2, r0, #0
	adds r5, r1, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	bne _0800C408
	movs r2, #0
	ldr r1, _0800C3F8 @ =gUnknown_0200C1A0
	ldr r3, _0800C3FC @ =0x00002344
	adds r0, r1, r3
	ldrb r0, [r0]
	cmp r0, #2
	bne _0800C3DE
	movs r2, #1
_0800C3DE:
	lsls r0, r2, #2
	ldr r2, _0800C400 @ =0x00006614
	adds r1, r1, r2
	adds r0, r0, r1
	ldr r4, [r0]
	cmp r4, #0
	bne _0800C410
	ldr r0, _0800C404 @ =gUnknown_0831B3C0
	bl sub_080050A8
	movs r0, #0
	b _0800C41E
	.align 2, 0
_0800C3F8: .4byte gUnknown_0200C1A0
_0800C3FC: .4byte 0x00002344
_0800C400: .4byte 0x00006614
_0800C404: .4byte gUnknown_0831B3C0
_0800C408:
	adds r0, r2, #0
	bl sub_0800C51C
	adds r4, r0, #0
_0800C410:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0800C2AC
	lsls r0, r0, #3
	adds r0, r4, r0
	ldr r0, [r0]
_0800C41E:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0800C424
sub_0800C424: @ 0x0800C424
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	ldr r5, _0800C458 @ =gUnknown_020127A8
	ldr r1, _0800C45C @ =gUnknown_083E7CA1
	adds r1, r3, r1
	ldr r0, _0800C460 @ =gUnknown_083E7CA4
	adds r0, r3, r0
	ldrb r2, [r0]
	ldrb r1, [r1]
	ldr r0, _0800C464 @ =0xFFFF99F8
	adds r6, r5, r0
	cmp r1, r2
	bhi _0800C44A
	movs r4, #0
_0800C440:
	adds r0, r5, r1
	strb r4, [r0]
	adds r1, #1
	cmp r1, r2
	bls _0800C440
_0800C44A:
	cmp r3, #0
	bne _0800C46C
	ldr r1, _0800C468 @ =0x00006614
	adds r0, r6, r1
	str r3, [r0]
	b _0800C48E
	.align 2, 0
_0800C458: .4byte gUnknown_020127A8
_0800C45C: .4byte gUnknown_083E7CA1
_0800C460: .4byte gUnknown_083E7CA4
_0800C464: .4byte 0xFFFF99F8
_0800C468: .4byte 0x00006614
_0800C46C:
	cmp r3, #1
	bne _0800C480
	ldr r2, _0800C47C @ =0x00006618
	adds r1, r6, r2
	movs r0, #0
	str r0, [r1]
	b _0800C48E
	.align 2, 0
_0800C47C: .4byte 0x00006618
_0800C480:
	ldr r1, _0800C494 @ =0x00006614
	adds r0, r6, r1
	movs r1, #0
	str r1, [r0]
	ldr r2, _0800C498 @ =0x00006618
	adds r0, r6, r2
	str r1, [r0]
_0800C48E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800C494: .4byte 0x00006614
_0800C498: .4byte 0x00006618

	thumb_func_start sub_0800C49C
sub_0800C49C: @ 0x0800C49C
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldr r6, _0800C4E4 @ =gUnknown_0200F430
	movs r2, #0
	ldr r1, _0800C4E8 @ =0xFFFFF0B4
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #2
	bne _0800C4B0
	movs r2, #1
_0800C4B0:
	ldr r1, _0800C4EC @ =gUnknown_083E7CA1
	adds r1, r2, r1
	ldr r0, _0800C4F0 @ =gUnknown_083E7CA4
	adds r0, r2, r0
	ldrb r3, [r0]
	ldrb r4, [r1]
	cmp r4, r3
	bhi _0800C506
	ldr r2, _0800C4F4 @ =0x00000894
	adds r0, r4, #0
	muls r0, r2, r0
	adds r1, r0, r6
_0800C4C8:
	ldr r5, _0800C4F8 @ =0x00003378
	adds r0, r6, r5
	adds r5, r0, r4
	ldrb r0, [r5]
	cmp r0, #0
	bne _0800C4FC
	adds r0, r1, #0
	adds r1, r7, #0
	bl sub_080002C4
	movs r0, #1
	strb r0, [r5]
	adds r0, r4, #0
	b _0800C50E
	.align 2, 0
_0800C4E4: .4byte gUnknown_0200F430
_0800C4E8: .4byte 0xFFFFF0B4
_0800C4EC: .4byte gUnknown_083E7CA1
_0800C4F0: .4byte gUnknown_083E7CA4
_0800C4F4: .4byte 0x00000894
_0800C4F8: .4byte 0x00003378
_0800C4FC:
	ldr r0, _0800C514 @ =0x00000894
	adds r1, r1, r0
	adds r4, #1
	cmp r4, r3
	bls _0800C4C8
_0800C506:
	ldr r0, _0800C518 @ =gUnknown_0831B3F0
	bl sub_080050A8
	movs r0, #0
_0800C50E:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0800C514: .4byte 0x00000894
_0800C518: .4byte gUnknown_0831B3F0

	thumb_func_start sub_0800C51C
sub_0800C51C: @ 0x0800C51C
	push {lr}
	adds r1, r0, #0
	ldr r2, _0800C538 @ =gUnknown_0200F430
	movs r0, #0
	cmp r0, r1
	bgt _0800C52E
	cmp r1, #5
	bgt _0800C52E
	movs r0, #1
_0800C52E:
	cmp r0, #0
	bne _0800C540
	ldr r0, _0800C53C @ =gUnknown_0831B41C
	b _0800C55E
	.align 2, 0
_0800C538: .4byte gUnknown_0200F430
_0800C53C: .4byte gUnknown_0831B41C
_0800C540:
	ldr r3, _0800C554 @ =0x00003378
	adds r0, r2, r3
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800C55C
	ldr r0, _0800C558 @ =0x00000894
	muls r0, r1, r0
	adds r0, r2, r0
	b _0800C564
	.align 2, 0
_0800C554: .4byte 0x00003378
_0800C558: .4byte 0x00000894
_0800C55C:
	ldr r0, _0800C568 @ =gUnknown_0831B44C
_0800C55E:
	bl sub_080050A8
	movs r0, #0
_0800C564:
	pop {r1}
	bx r1
	.align 2, 0
_0800C568: .4byte gUnknown_0831B44C

	thumb_func_start sub_0800C56C
sub_0800C56C: @ 0x0800C56C
	ldr r1, _0800C57C @ =gUnknown_0200C1A0
	ldr r2, _0800C580 @ =0x00006608
	adds r1, r1, r2
	adds r0, r0, r1
	movs r1, #0
	strb r1, [r0]
	bx lr
	.align 2, 0
_0800C57C: .4byte gUnknown_0200C1A0
_0800C580: .4byte 0x00006608

	thumb_func_start sub_0800C584
sub_0800C584: @ 0x0800C584
	push {r4, r5, lr}
	ldr r5, _0800C5B4 @ =gUnknown_020127A8
	movs r4, #0
	ldr r2, _0800C5B8 @ =gUnknown_083E7CA1
	adds r2, r0, r2
	ldr r1, _0800C5BC @ =gUnknown_083E7CA4
	adds r0, r0, r1
	ldrb r3, [r0]
	ldrb r1, [r2]
	cmp r1, r3
	bhi _0800C5AA
_0800C59A:
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800C5A4
	adds r4, #1
_0800C5A4:
	adds r1, #1
	cmp r1, r3
	bls _0800C59A
_0800C5AA:
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0800C5B4: .4byte gUnknown_020127A8
_0800C5B8: .4byte gUnknown_083E7CA1
_0800C5BC: .4byte gUnknown_083E7CA4

	thumb_func_start sub_0800C5C0
sub_0800C5C0: @ 0x0800C5C0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r2, _0800C660 @ =gUnknown_0200E9DC
	ldr r0, _0800C664 @ =0x00000A54
	adds r0, r0, r2
	mov r8, r0
	movs r4, #0
	movs r5, #0
	ldr r1, _0800C668 @ =0xFFFFFB08
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #2
	bne _0800C5DE
	movs r5, #1
_0800C5DE:
	ldr r1, _0800C66C @ =gUnknown_083E7C9B
	adds r1, r5, r1
	ldr r0, _0800C670 @ =gUnknown_083E7C9E
	adds r0, r5, r0
	ldrb r3, [r0]
	ldrb r1, [r1]
	ldr r7, _0800C674 @ =gUnknown_083E7CA1
	ldr r6, _0800C678 @ =gUnknown_083E7CA4
	mov ip, r6
	cmp r1, r3
	bhi _0800C61A
	movs r0, #0x90
	lsls r0, r0, #2
	adds r6, r2, r0
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r2, r0, r2
_0800C602:
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800C612
	ldrb r0, [r2, #4]
	cmp r0, #0
	beq _0800C612
	adds r4, #1
_0800C612:
	adds r2, #0x48
	adds r1, #1
	cmp r1, r3
	bls _0800C602
_0800C61A:
	adds r1, r5, r7
	mov r2, ip
	adds r0, r5, r2
	ldrb r3, [r0]
	ldrb r1, [r1]
	cmp r1, r3
	bhi _0800C652
	ldr r5, _0800C67C @ =0x00003378
	add r5, r8
	ldr r0, _0800C680 @ =0x00000894
	muls r0, r1, r0
	ldr r6, _0800C684 @ =0x0000081A
	adds r0, r0, r6
	mov r6, r8
	adds r2, r0, r6
_0800C638:
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800C648
	ldrb r0, [r2]
	cmp r0, #0
	beq _0800C648
	adds r4, #1
_0800C648:
	ldr r0, _0800C680 @ =0x00000894
	adds r2, r2, r0
	adds r1, #1
	cmp r1, r3
	bls _0800C638
_0800C652:
	adds r0, r4, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0800C660: .4byte gUnknown_0200E9DC
_0800C664: .4byte 0x00000A54
_0800C668: .4byte 0xFFFFFB08
_0800C66C: .4byte gUnknown_083E7C9B
_0800C670: .4byte gUnknown_083E7C9E
_0800C674: .4byte gUnknown_083E7CA1
_0800C678: .4byte gUnknown_083E7CA4
_0800C67C: .4byte 0x00003378
_0800C680: .4byte 0x00000894
_0800C684: .4byte 0x0000081A

	thumb_func_start sub_0800C688
sub_0800C688: @ 0x0800C688
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r4, r3, #0
	ldr r7, _0800C78C @ =gUnknown_0200EC24
	ldr r0, _0800C790 @ =0xFFFFFDB4
	adds r0, r0, r7
	mov sb, r0
	movs r1, #2
	rsbs r1, r1, #0
	mov r8, r1
	cmp r2, r8
	bne _0800C6B0
	adds r0, r7, #0
	bl sub_0800C224
	adds r2, r0, #2
_0800C6B0:
	movs r0, #3
	cmp r0, r2
	bge _0800C6B8
	adds r0, r2, #0
_0800C6B8:
	adds r2, r0, #0
	cmp r4, r8
	bne _0800C6CA
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r7, r1
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r4, r0, #2
_0800C6CA:
	movs r0, #4
	cmp r0, r4
	bge _0800C6D2
	adds r0, r4, #0
_0800C6D2:
	adds r4, r0, #0
	cmp r5, r8
	bne _0800C6EA
	adds r1, r2, #0
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	beq _0800C6E4
	adds r1, r2, #1
_0800C6E4:
	lsrs r1, r1, #1
	movs r0, #0xf
	subs r5, r0, r1
_0800C6EA:
	movs r0, #3
	rsbs r0, r0, #0
	cmp r5, r0
	bne _0800C6F6
	movs r0, #0x1d
	subs r5, r0, r2
_0800C6F6:
	movs r0, #4
	rsbs r0, r0, #0
	cmp r5, r0
	bne _0800C702
	movs r0, #0x1f
	subs r5, r0, r2
_0800C702:
	movs r0, #2
	rsbs r0, r0, #0
	cmp r6, r0
	bne _0800C71C
	adds r1, r4, #0
	movs r0, #1
	ands r0, r4
	cmp r0, #0
	beq _0800C716
	adds r1, r4, #1
_0800C716:
	lsrs r1, r1, #1
	movs r0, #0xa
	subs r6, r0, r1
_0800C71C:
	movs r0, #3
	rsbs r0, r0, #0
	cmp r6, r0
	bne _0800C728
	movs r0, #0xe
	subs r6, r0, r4
_0800C728:
	adds r0, r5, r2
	subs r2, r0, #1
	adds r3, r6, r4
	subs r4, r3, #1
	cmp r2, #0x1e
	ble _0800C738
	subs r0, #0x1f
	subs r5, r5, r0
_0800C738:
	cmp r4, #0x14
	ble _0800C742
	adds r0, r3, #0
	subs r0, #0x15
	subs r6, r6, r0
_0800C742:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r0, r5
	bge _0800C74C
	adds r0, r5, #0
_0800C74C:
	adds r5, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r0, r6
	bge _0800C758
	adds r0, r6, #0
_0800C758:
	adds r6, r0, #0
	movs r0, #0x1e
	cmp r0, r2
	ble _0800C762
	adds r0, r2, #0
_0800C762:
	adds r2, r0, #0
	movs r1, #0x14
	cmp r1, r4
	ble _0800C76C
	adds r1, r4, #0
_0800C76C:
	subs r0, r2, r5
	adds r2, r0, #1
	subs r0, r1, r6
	adds r4, r0, #1
	mov r0, sb
	strb r5, [r0]
	strb r6, [r0, #1]
	strb r2, [r0, #2]
	strb r4, [r0, #3]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800C78C: .4byte gUnknown_0200EC24
_0800C790: .4byte 0xFFFFFDB4

	thumb_func_start sub_0800C794
sub_0800C794: @ 0x0800C794
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r7, r1, #0
	mov r8, r2
	adds r6, r3, #0
	ldr r1, _0800C7D0 @ =gUnknown_0200C1A0
	ldr r2, _0800C7D4 @ =0x00006610
	adds r1, r1, r2
	ldr r2, [r1]
	ldr r3, _0800C7D8 @ =0x00000804
	adds r1, r2, r3
	ldrb r3, [r1]
	ldr r4, _0800C7DC @ =0x00000808
	adds r1, r2, r4
	ldr r4, [r1]
	lsls r0, r0, #3
	adds r2, r2, r0
	ldr r5, [r2]
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	bne _0800C7E0
	adds r0, r4, #0
	adds r1, r7, #0
	mov r2, r8
	adds r3, r6, #0
	bl sub_08004D2C
	b _0800C808
	.align 2, 0
_0800C7D0: .4byte gUnknown_0200C1A0
_0800C7D4: .4byte 0x00006610
_0800C7D8: .4byte 0x00000804
_0800C7DC: .4byte 0x00000808
_0800C7E0:
	movs r2, #0
	ldr r0, [sp, #0x20]
	cmp r0, #1
	bne _0800C7EA
	movs r2, #3
_0800C7EA:
	ldr r1, [sp, #0x1c]
	cmp r1, #1
	bne _0800C7F2
	movs r2, #1
_0800C7F2:
	adds r0, r4, #0
	adds r1, r3, #0
	bl sub_08004CF0
	str r6, [sp]
	adds r0, r4, #0
	adds r1, r7, #0
	mov r2, r8
	adds r3, r5, #0
	bl sub_08004E6C
_0800C808:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0800C814
sub_0800C814: @ 0x0800C814
	ldr r1, _0800C824 @ =gUnknown_0200C1A0
	ldr r2, _0800C828 @ =0x00006610
	adds r1, r1, r2
	ldr r1, [r1]
	lsls r0, r0, #3
	adds r1, r1, r0
	ldrb r0, [r1, #6]
	bx lr
	.align 2, 0
_0800C824: .4byte gUnknown_0200C1A0
_0800C828: .4byte 0x00006610

	thumb_func_start sub_0800C82C
sub_0800C82C: @ 0x0800C82C
	push {r4, r5, r6, r7, lr}
	ldr r4, _0800C864 @ =0xFFFFF76C
	add sp, r4
	adds r6, r0, #0
	ldr r5, _0800C868 @ =gUnknown_0200E9D8
	movs r0, #0x93
	lsls r0, r0, #2
	adds r7, r5, r0
	ldr r2, _0800C86C @ =0x0000080C
	mov r0, sp
	adds r1, r7, #0
	bl sub_080002C4
	movs r1, #1
	adds r0, r6, #0
	ands r0, r1
	ldr r1, _0800C870 @ =0x00000804
	add r1, sp
	strb r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r6
	cmp r0, #0
	beq _0800C87C
	ldr r1, _0800C874 @ =0x00000808
	add r1, sp
	ldr r0, _0800C878 @ =gUnknown_030013D0
	b _0800C882
	.align 2, 0
_0800C864: .4byte 0xFFFFF76C
_0800C868: .4byte gUnknown_0200E9D8
_0800C86C: .4byte 0x0000080C
_0800C870: .4byte 0x00000804
_0800C874: .4byte 0x00000808
_0800C878: .4byte gUnknown_030013D0
_0800C87C:
	ldr r1, _0800C918 @ =0x00000808
	add r1, sp
	ldr r0, _0800C91C @ =gUnknown_030013B0
_0800C882:
	str r0, [r1]
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r7, r1
	ldrh r0, [r0]
	ldr r4, _0800C920 @ =0x0000080C
	add r4, sp
	strh r0, [r4]
	ldrb r1, [r5]
	ldr r0, _0800C924 @ =0x0000080E
	add r0, sp
	strb r1, [r0]
	ldrb r1, [r5, #1]
	ldr r0, _0800C928 @ =0x0000080F
	add r0, sp
	strb r1, [r0]
	ldrb r0, [r5, #2]
	subs r0, #2
	movs r1, #0x81
	lsls r1, r1, #4
	add r1, sp
	strb r0, [r1]
	movs r0, #3
	ldrsb r0, [r5, r0]
	subs r0, #2
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	ldr r1, _0800C92C @ =0x00000811
	add r1, sp
	strb r0, [r1]
	ldr r1, _0800C930 @ =0x00000814
	add r1, sp
	ldr r0, _0800C934 @ =sub_0800C794
	str r0, [r1]
	adds r0, r7, #0
	bl sub_0800C25C
	ldr r1, _0800C938 @ =0x00000818
	add r1, sp
	strh r0, [r1]
	adds r0, r4, #0
	bl sub_0800663C
	movs r2, #1
	adds r0, r6, #0
	ands r0, r2
	ldr r1, _0800C93C @ =0x0000081A
	add r1, sp
	strb r0, [r1]
	lsrs r0, r6, #1
	ands r0, r2
	ldr r1, _0800C940 @ =0x0000081B
	add r1, sp
	strb r0, [r1]
	lsrs r0, r6, #2
	ands r0, r2
	ldr r1, _0800C944 @ =0x0000081C
	add r1, sp
	strb r0, [r1]
	lsrs r0, r6, #3
	ands r0, r2
	ldr r1, _0800C948 @ =0x0000081D
	add r1, sp
	strb r0, [r1]
	ldr r0, _0800C94C @ =gUnknown_0200C1A0
	ldr r2, _0800C950 @ =0x00002344
	adds r0, r0, r2
	ldrb r1, [r0]
	cmp r1, #2
	bne _0800C958
	ldr r0, _0800C954 @ =0x0000081E
	add r0, sp
	strb r1, [r0]
	b _0800C960
	.align 2, 0
_0800C918: .4byte 0x00000808
_0800C91C: .4byte gUnknown_030013B0
_0800C920: .4byte 0x0000080C
_0800C924: .4byte 0x0000080E
_0800C928: .4byte 0x0000080F
_0800C92C: .4byte 0x00000811
_0800C930: .4byte 0x00000814
_0800C934: .4byte sub_0800C794
_0800C938: .4byte 0x00000818
_0800C93C: .4byte 0x0000081A
_0800C940: .4byte 0x0000081B
_0800C944: .4byte 0x0000081C
_0800C948: .4byte 0x0000081D
_0800C94C: .4byte gUnknown_0200C1A0
_0800C950: .4byte 0x00002344
_0800C954: .4byte 0x0000081E
_0800C958:
	ldr r1, _0800C9A0 @ =0x0000081E
	add r1, sp
	movs r0, #1
	strb r0, [r1]
_0800C960:
	ldr r1, _0800C9A4 @ =0x00000821
	add r1, sp
	movs r3, #0
	movs r2, #1
	movs r0, #1
	strb r0, [r1]
	lsrs r0, r6, #6
	ands r0, r2
	ldr r1, _0800C9A8 @ =0x00000823
	add r1, sp
	strb r0, [r1]
	ldr r0, _0800C9AC @ =0x00000824
	add r0, sp
	strb r3, [r0]
	lsrs r0, r6, #7
	ands r0, r2
	ldr r1, _0800C9B0 @ =0x00000825
	add r1, sp
	strb r0, [r1]
	ldr r0, _0800C9B4 @ =0x00000826
	add r0, sp
	strh r3, [r0]
	movs r1, #0x80
	lsls r1, r1, #2
	ands r1, r6
	cmp r1, #0
	beq _0800C9BC
	ldr r1, _0800C9B8 @ =0x00000828
	add r1, sp
	movs r0, #0x72
	strh r0, [r1]
	b _0800C9C2
	.align 2, 0
_0800C9A0: .4byte 0x0000081E
_0800C9A4: .4byte 0x00000821
_0800C9A8: .4byte 0x00000823
_0800C9AC: .4byte 0x00000824
_0800C9B0: .4byte 0x00000825
_0800C9B4: .4byte 0x00000826
_0800C9B8: .4byte 0x00000828
_0800C9BC:
	ldr r0, _0800C9D8 @ =0x00000828
	add r0, sp
	strh r1, [r0]
_0800C9C2:
	movs r1, #0x80
	lsls r1, r1, #3
	ands r1, r6
	cmp r1, #0
	beq _0800C9E0
	ldr r1, _0800C9DC @ =0x0000082A
	add r1, sp
	movs r0, #0x79
	strh r0, [r1]
	b _0800C9E6
	.align 2, 0
_0800C9D8: .4byte 0x00000828
_0800C9DC: .4byte 0x0000082A
_0800C9E0:
	ldr r0, _0800CA54 @ =0x0000082A
	add r0, sp
	strh r1, [r0]
_0800C9E6:
	ldr r1, _0800CA58 @ =0x0000082C
	add r1, sp
	movs r0, #0x73
	strh r0, [r1]
	ldr r1, _0800CA5C @ =0x0000082E
	add r1, sp
	movs r0, #0x77
	strh r0, [r1]
	ldr r1, _0800CA60 @ =0x00000834
	add r1, sp
	ldr r0, _0800CA64 @ =sub_0800C814
	str r0, [r1]
	ldr r0, _0800CA68 @ =0x00000884
	add r0, sp
	str r6, [r0]
	mov r0, sp
	bl sub_0800C49C
	adds r7, r0, #0
	bl sub_0800C51C
	adds r4, r0, #0
	ldr r1, _0800CA6C @ =0x0000080C
	adds r0, r4, r1
	ldr r5, _0800CA70 @ =gUnknown_0200C1A0
	ldr r2, _0800CA74 @ =0x00006610
	adds r1, r5, r2
	str r4, [r1]
	bl sub_08006768
	movs r1, #0
	ldr r2, _0800CA78 @ =0x00002344
	adds r0, r5, r2
	ldrb r0, [r0]
	cmp r0, #2
	bne _0800CA30
	movs r1, #1
_0800CA30:
	lsls r0, r1, #2
	ldr r2, _0800CA7C @ =0x00006614
	adds r1, r5, r2
	adds r0, r0, r1
	str r4, [r0]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r6
	cmp r0, #0
	beq _0800CA48
	bl sub_08011C80
_0800CA48:
	adds r0, r7, #0
	ldr r3, _0800CA80 @ =0x00000894
	add sp, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0800CA54: .4byte 0x0000082A
_0800CA58: .4byte 0x0000082C
_0800CA5C: .4byte 0x0000082E
_0800CA60: .4byte 0x00000834
_0800CA64: .4byte sub_0800C814
_0800CA68: .4byte 0x00000884
_0800CA6C: .4byte 0x0000080C
_0800CA70: .4byte gUnknown_0200C1A0
_0800CA74: .4byte 0x00006610
_0800CA78: .4byte 0x00002344
_0800CA7C: .4byte 0x00006614
_0800CA80: .4byte 0x00000894

	thumb_func_start sub_0800CA84
sub_0800CA84: @ 0x0800CA84
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r7, _0800CAD8 @ =gUnknown_0200C1A0
	ldr r0, _0800CADC @ =0x00002344
	adds r1, r7, r0
	ldrb r0, [r1]
	cmp r0, #3
	bne _0800CA9E
	ldr r2, _0800CAE0 @ =0x000023F0
	adds r0, r7, r2
	ldr r6, [r0]
	movs r0, #0
	strb r0, [r1]
_0800CA9E:
	adds r0, r6, #0
	bl sub_0800C51C
	ldr r1, _0800CAE4 @ =0x0000080C
	adds r5, r0, r1
	ldr r4, [r5, #0x78]
	ldr r2, _0800CAE8 @ =0x00006610
	adds r1, r7, r2
	str r0, [r1]
	adds r0, r5, #0
	bl sub_080067EC
	bl sub_08011E9C
	movs r0, #0x80
	lsls r0, r0, #6
	ands r4, r0
	cmp r4, #0
	beq _0800CAEC
	bl sub_0800FA6C
	cmp r0, #0
	beq _0800CAEC
	ldr r1, _0800CAE0 @ =0x000023F0
	adds r0, r7, r1
	str r6, [r0]
	movs r0, #0
	b _0800CB1A
	.align 2, 0
_0800CAD8: .4byte gUnknown_0200C1A0
_0800CADC: .4byte 0x00002344
_0800CAE0: .4byte 0x000023F0
_0800CAE4: .4byte 0x0000080C
_0800CAE8: .4byte 0x00006610
_0800CAEC:
	adds r0, r5, #0
	adds r0, #0x30
	ldrb r0, [r0]
	cmp r0, #1
	bne _0800CAFA
	movs r0, #2
	b _0800CB1A
_0800CAFA:
	cmp r0, #2
	bne _0800CB02
	movs r0, #3
	b _0800CB1A
_0800CB02:
	cmp r0, #3
	bne _0800CB0A
	movs r0, #4
	b _0800CB1A
_0800CB0A:
	adds r0, r5, #0
	adds r0, #0x2e
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800CB18
	movs r0, #0
	b _0800CB1A
_0800CB18:
	movs r0, #1
_0800CB1A:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0800CB20
sub_0800CB20: @ 0x0800CB20
	push {lr}
	bl sub_0800C51C
	ldr r2, _0800CB38 @ =0x00000888
	adds r1, r0, r2
	ldrh r1, [r1]
	lsls r1, r1, #3
	adds r0, r0, r1
	ldrh r0, [r0, #4]
	pop {r1}
	bx r1
	.align 2, 0
_0800CB38: .4byte 0x00000888

	thumb_func_start sub_0800CB3C
sub_0800CB3C: @ 0x0800CB3C
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_0800C51C
	ldr r1, _0800CB80 @ =0x0000080C
	adds r4, r0, r1
	ldr r0, [r4, #0x78]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _0800CB58
	bl sub_08011C70
_0800CB58:
	bl sub_0800C5C0
	cmp r0, #1
	bls _0800CB64
	movs r0, #1
	strb r0, [r4, #0x13]
_0800CB64:
	adds r0, r4, #0
	movs r1, #0
	bl sub_080066D4
	movs r0, #0xe0
	lsls r0, r0, #0x13
	bl sub_08005C74
	adds r0, r5, #0
	bl sub_0800C56C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800CB80: .4byte 0x0000080C

	thumb_func_start sub_0800CB84
sub_0800CB84: @ 0x0800CB84
	push {r4, r5, lr}
	adds r1, r0, #0
	ldr r2, _0800CBA4 @ =gUnknown_0200C1A0
	ldr r3, _0800CBA8 @ =0x00002344
	adds r0, r2, r3
	ldrb r0, [r0]
	cmp r0, #3
	bne _0800CBBC
	ldr r1, _0800CBAC @ =0x000023F0
	adds r0, r2, r1
	ldr r5, [r0]
	adds r0, r5, #0
	bl sub_0800C51C
	b _0800CBC4
	.align 2, 0
_0800CBA4: .4byte gUnknown_0200C1A0
_0800CBA8: .4byte 0x00002344
_0800CBAC: .4byte 0x000023F0
_0800CBB0:
	adds r0, r5, #0
	bl sub_0800CB3C
	movs r0, #1
	rsbs r0, r0, #0
	b _0800CBF6
_0800CBBC:
	adds r0, r1, #0
	bl sub_0800C82C
	adds r5, r0, #0
_0800CBC4:
	ldr r4, _0800CBC8 @ =gUnknown_0200E4E4
	b _0800CBD0
	.align 2, 0
_0800CBC8: .4byte gUnknown_0200E4E4
_0800CBCC:
	cmp r1, #3
	beq _0800CBB0
_0800CBD0:
	adds r0, r5, #0
	bl sub_0800CA84
	adds r1, r0, #0
	ldrb r0, [r4]
	cmp r0, #1
	beq _0800CBF4
	cmp r1, #2
	bne _0800CBCC
	adds r0, r5, #0
	bl sub_0800CB20
	adds r4, r0, #0
	adds r0, r5, #0
	bl sub_0800CB3C
	adds r0, r4, #0
	b _0800CBF6
_0800CBF4:
	movs r0, #0
_0800CBF6:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0800CBFC
sub_0800CBFC: @ 0x0800CBFC
	push {r4, r5, lr}
	movs r1, #3
	rsbs r1, r1, #0
	movs r3, #2
	rsbs r3, r3, #0
	adds r0, r1, #0
	adds r2, r3, #0
	bl sub_0800C688
	movs r0, #6
	bl sub_0800C82C
	adds r5, r0, #0
_0800CC16:
	adds r0, r5, #0
	bl sub_0800CA84
	cmp r0, #2
	bne _0800CC16
	adds r0, r5, #0
	bl sub_0800CB20
	adds r4, r0, #0
	adds r0, r5, #0
	bl sub_0800CB3C
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0800CC38
sub_0800CC38: @ 0x0800CC38
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl sub_0800C2E8
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl sub_0800C30C
	adds r0, r5, #0
	movs r1, #1
	movs r2, #1
	bl sub_0800C30C
	bl sub_0800CBFC
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0800CC60
sub_0800CC60: @ 0x0800CC60
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0800C2E8
	ldr r0, _0800CC8C @ =gUnknown_08318598
	movs r1, #0
	movs r2, #1
	bl sub_0800C30C
	ldr r0, _0800CC90 @ =gUnknown_08318590
	movs r1, #1
	movs r2, #1
	bl sub_0800C30C
	adds r0, r4, #0
	bl sub_0800C358
	bl sub_0800CBFC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0800CC8C: .4byte gUnknown_08318598
_0800CC90: .4byte gUnknown_08318590

	thumb_func_start sub_0800CC94
sub_0800CC94: @ 0x0800CC94
	push {r4, r5, r6, r7, lr}
	ldr r7, _0800CCC0 @ =gUnknown_030013B0
	ldr r4, _0800CCC4 @ =gUnknown_083E7CA8
	movs r6, #0
	ldr r5, _0800CCC8 @ =gUnknown_020127CC
_0800CC9E:
	ldrb r1, [r4]
	adds r4, #1
	ldrb r0, [r4]
	adds r4, #1
	lsls r1, r1, #8
	orrs r1, r0
	adds r0, r7, #0
	bl sub_08004918
	strh r0, [r5]
	adds r5, #2
	adds r6, #1
	cmp r6, #0x18
	bls _0800CC9E
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800CCC0: .4byte gUnknown_030013B0
_0800CCC4: .4byte gUnknown_083E7CA8
_0800CCC8: .4byte gUnknown_020127CC

	thumb_func_start sub_0800CCCC
sub_0800CCCC: @ 0x0800CCCC
	push {lr}
	movs r2, #0
	ldr r1, _0800CCDC @ =gUnknown_020127CC
_0800CCD2:
	ldrh r3, [r1]
	cmp r0, r3
	bne _0800CCE0
	movs r0, #1
	b _0800CCEA
	.align 2, 0
_0800CCDC: .4byte gUnknown_020127CC
_0800CCE0:
	adds r1, #2
	adds r2, #1
	cmp r2, #0x18
	bls _0800CCD2
	movs r0, #0
_0800CCEA:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0800CCF0
sub_0800CCF0: @ 0x0800CCF0
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	mov r8, r1
	adds r6, r2, #0
	adds r4, r3, #0
	ldr r5, [r0, #0xc]
	ldrb r1, [r0, #5]
	ldrb r2, [r0, #8]
	adds r0, r5, #0
	bl sub_08004CF0
	lsls r4, r4, #5
	ldr r2, [r5]
	adds r2, r2, r4
	ldrh r0, [r5, #0x14]
	muls r0, r6, r0
	add r0, r8
	lsls r0, r0, #6
	ldr r1, [r5, #0x10]
	adds r1, r1, r0
	adds r0, r5, #0
	bl sub_08004990
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800CD2C
sub_0800CD2C: @ 0x0800CD2C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldrb r0, [r4, #2]
	ldrb r1, [r4, #6]
	cmp r0, r1
	bls _0800CD52
	ldrb r0, [r4, #4]
	cmp r0, #0
	beq _0800CD58
	ldrb r0, [r4, #2]
	subs r0, #1
	cmp r0, r1
	bgt _0800CD58
	adds r0, r5, #0
	bl sub_0800CCCC
	cmp r0, #0
	bne _0800CD58
_0800CD52:
	adds r0, r4, #0
	bl sub_0800D000
_0800CD58:
	ldrb r1, [r4]
	ldrb r0, [r4, #6]
	adds r1, r1, r0
	ldrb r2, [r4, #7]
	lsls r2, r2, #1
	ldrb r0, [r4, #1]
	adds r2, r2, r0
	adds r0, r4, #0
	adds r3, r5, #0
	bl sub_0800CCF0
	ldrb r0, [r4, #6]
	adds r0, #1
	strb r0, [r4, #6]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800CD7C
sub_0800CD7C: @ 0x0800CD7C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	ldr r5, [r4, #0xc]
	ldrb r0, [r4, #2]
	ldrb r1, [r4, #6]
	cmp r0, r1
	bhi _0800CD92
	adds r0, r4, #0
	bl sub_0800D000
_0800CD92:
	ldrb r2, [r4]
	ldrb r0, [r4, #6]
	adds r2, r2, r0
	ldrb r0, [r4, #7]
	lsls r0, r0, #1
	ldrb r1, [r4, #1]
	adds r0, r0, r1
	ldrh r1, [r5, #0x14]
	muls r0, r1, r0
	adds r0, r0, r2
	lsls r0, r0, #6
	ldr r1, [r5, #0x10]
	adds r1, r1, r0
	ldrb r0, [r4, #5]
	movs r2, #0x10
	cmp r0, #0
	beq _0800CDB6
	movs r2, #0x40
_0800CDB6:
	strh r2, [r5, #0x18]
	adds r0, r5, #0
	adds r2, r6, #0
	bl sub_08004824
	ldrb r0, [r4, #6]
	adds r0, #1
	strb r0, [r4, #6]
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_0800CDCC
sub_0800CDCC: @ 0x0800CDCC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	ldr r4, _0800CDFC @ =gUnknown_030013B0
	ldrb r0, [r6]
	adds r0, r0, r1
	mov r8, r0
	lsls r2, r2, #1
	ldrb r0, [r6, #1]
	adds r7, r2, r0
	mov r0, r8
	cmp r0, #0x1d
	bhi _0800CE1E
	cmp r7, #0x13
	bhi _0800CE1E
	cmp r3, #0
	beq _0800CE04
	ldr r1, _0800CE00 @ =0x000081A5
	adds r0, r4, #0
	bl sub_08004918
	adds r3, r0, #0
	b _0800CE06
	.align 2, 0
_0800CDFC: .4byte gUnknown_030013B0
_0800CE00: .4byte 0x000081A5
_0800CE04:
	movs r3, #1
_0800CE06:
	ldr r5, [r6, #0xc]
	str r4, [r6, #0xc]
	ldrb r4, [r6, #8]
	movs r0, #0
	strb r0, [r6, #8]
	adds r0, r6, #0
	mov r1, r8
	adds r2, r7, #0
	bl sub_0800CCF0
	str r5, [r6, #0xc]
	strb r4, [r6, #8]
_0800CE1E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0800CE28
sub_0800CE28: @ 0x0800CE28
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	ldr r0, _0800CEAC @ =gUnknown_030013B0
	mov r8, r0
	ldrb r0, [r6, #3]
	movs r7, #0
	cmp r0, #1
	beq _0800CE80
_0800CE3C:
	lsls r0, r7, #1
	ldrb r1, [r6, #1]
	adds r0, r0, r1
	mov r2, r8
	ldrh r1, [r2, #0x14]
	muls r0, r1, r0
	ldrb r1, [r6]
	adds r0, r0, r1
	lsls r0, r0, #6
	ldr r4, [r2, #0x10]
	adds r4, r4, r0
	movs r2, #0xf0
	lsls r2, r2, #4
	adds r1, r4, r2
	ldrb r5, [r6, #2]
	lsls r5, r5, #6
	adds r0, r4, #0
	adds r2, r5, #0
	bl sub_08000314
	movs r1, #0xf0
	lsls r1, r1, #3
	adds r0, r4, r1
	movs r2, #0xb4
	lsls r2, r2, #5
	adds r1, r4, r2
	adds r2, r5, #0
	bl sub_08000314
	adds r7, #1
	ldrb r0, [r6, #3]
	subs r0, #1
	cmp r7, r0
	blo _0800CE3C
_0800CE80:
	ldrb r0, [r6, #3]
	subs r0, #1
	lsls r0, r0, #1
	ldrb r1, [r6, #1]
	adds r2, r0, r1
	ldrb r0, [r6, #5]
	movs r1, #0x10
	cmp r0, #0
	beq _0800CE94
	movs r1, #0x40
_0800CE94:
	mov r0, r8
	strh r1, [r0, #0x18]
	ldrb r1, [r6]
	ldrb r3, [r6, #2]
	bl sub_08004D2C
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800CEAC: .4byte gUnknown_030013B0

	thumb_func_start sub_0800CEB0
sub_0800CEB0: @ 0x0800CEB0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	mov sb, r1
	ldrb r1, [r7, #1]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #1
	ldrb r1, [r7]
	adds r0, r0, r1
	lsls r0, r0, #6
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r6, r0, r1
	movs r0, #0
	mov r8, r0
	ldrb r1, [r7, #3]
	cmp r8, r1
	bhs _0800CF20
	movs r0, #0xf0
	lsls r0, r0, #3
	mov sl, r0
_0800CEE2:
	mov r1, sb
	lsls r4, r1, #6
	adds r4, r6, r4
	ldrb r5, [r7, #2]
	subs r5, r5, r1
	lsls r5, r5, #6
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl sub_080003B4
	mov r0, sl
	adds r1, r6, r0
	add r4, sl
	adds r0, r4, #0
	adds r2, r5, #0
	bl sub_080003B4
	ldr r0, _0800CF30 @ =gUnknown_030013B0
	adds r1, r6, #0
	mov r2, sb
	bl sub_08004B58
	movs r1, #0xf0
	lsls r1, r1, #4
	adds r6, r6, r1
	movs r0, #1
	add r8, r0
	ldrb r1, [r7, #3]
	cmp r8, r1
	blo _0800CEE2
_0800CF20:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800CF30: .4byte gUnknown_030013B0

	thumb_func_start sub_0800CF34
sub_0800CF34: @ 0x0800CF34
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sb, r0
	adds r7, r1, #0
	ldrb r2, [r0]
	subs r2, r2, r7
	ldrb r0, [r0, #2]
	adds r3, r0, r7
	mov r0, sb
	ldrb r1, [r0, #1]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #1
	adds r0, r0, r2
	lsls r0, r0, #6
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r5, r0, r1
	movs r0, #0
	mov r8, r0
	mov r1, sb
	ldrb r1, [r1, #3]
	cmp r8, r1
	bhs _0800CFAE
	subs r0, r3, r7
	lsls r6, r0, #6
	movs r0, #0xf0
	lsls r0, r0, #3
	mov sl, r0
_0800CF74:
	lsls r4, r7, #6
	adds r4, r5, r4
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl sub_08000314
	add r4, sl
	mov r0, sl
	adds r1, r5, r0
	adds r0, r1, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl sub_08000314
	adds r1, r5, r6
	ldr r0, _0800CFBC @ =gUnknown_030013B0
	adds r2, r7, #0
	bl sub_08004B58
	movs r1, #0xf0
	lsls r1, r1, #4
	adds r5, r5, r1
	movs r0, #1
	add r8, r0
	mov r1, sb
	ldrb r1, [r1, #3]
	cmp r8, r1
	blo _0800CF74
_0800CFAE:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800CFBC: .4byte gUnknown_030013B0

	thumb_func_start sub_0800CFC0
sub_0800CFC0: @ 0x0800CFC0
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _0800CFE4 @ =gUnknown_02001D0C
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800CFF8
	cmp r1, #0
	beq _0800CFDE
	ldr r0, _0800CFE8 @ =gUnknown_02000008
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0800CFF8
_0800CFDE:
	movs r4, #0
	b _0800CFF2
	.align 2, 0
_0800CFE4: .4byte gUnknown_02001D0C
_0800CFE8: .4byte gUnknown_02000008
_0800CFEC:
	bl sub_08011E9C
	adds r4, #1
_0800CFF2:
	ldrb r0, [r5, #9]
	cmp r4, r0
	blo _0800CFEC
_0800CFF8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800D000
sub_0800D000: @ 0x0800D000
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r5, #0
	strb r5, [r4, #6]
	ldrb r0, [r4, #7]
	adds r0, #1
	strb r0, [r4, #7]
	ldrb r1, [r4, #3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r1, r0
	bhi _0800D026
	adds r0, r4, #0
	bl sub_0800CE28
	strb r5, [r4, #6]
	ldrb r0, [r4, #3]
	subs r0, #1
	strb r0, [r4, #7]
_0800D026:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_0800D02C
sub_0800D02C: @ 0x0800D02C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r6, _0800D048 @ =gUnknown_030013B0
	movs r0, #0
	strb r0, [r4, #7]
	strb r0, [r4, #6]
	ldrb r0, [r4, #5]
	movs r1, #0x10
	cmp r0, #0
	beq _0800D042
	movs r1, #0x40
_0800D042:
	strh r1, [r6, #0x18]
	movs r5, #0
	b _0800D05E
	.align 2, 0
_0800D048: .4byte gUnknown_030013B0
_0800D04C:
	lsls r2, r5, #1
	ldrb r0, [r4, #1]
	adds r2, r2, r0
	ldrb r1, [r4]
	ldrb r3, [r4, #2]
	adds r0, r6, #0
	bl sub_08004D2C
	adds r5, #1
_0800D05E:
	ldrb r0, [r4, #3]
	cmp r5, r0
	blo _0800D04C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800D06C
sub_0800D06C: @ 0x0800D06C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r2, #0
	movs r2, #0
	ldrb r3, [r1]
	cmp r3, #0
	beq _0800D0B4
	ldr r6, _0800D084 @ =gUnknown_083D6088
_0800D07C:
	cmp r3, #0x24
	bne _0800D088
	adds r1, #2
	b _0800D0AE
	.align 2, 0
_0800D084: .4byte gUnknown_083D6088
_0800D088:
	cmp r3, #0x23
	beq _0800D096
	lsrs r0, r3, #4
	adds r0, r0, r6
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800D0A2
_0800D096:
	strb r3, [r4]
	ldrb r0, [r1, #1]
	strb r0, [r4, #1]
	adds r1, #2
	adds r4, #2
	b _0800D0A8
_0800D0A2:
	strb r3, [r4]
	adds r1, #1
	adds r4, #1
_0800D0A8:
	adds r2, #1
	cmp r2, r5
	beq _0800D0C4
_0800D0AE:
	ldrb r3, [r1]
	cmp r3, #0
	bne _0800D07C
_0800D0B4:
	cmp r2, r5
	bhs _0800D0C4
	movs r0, #0x20
_0800D0BA:
	strb r0, [r4]
	adds r4, #1
	adds r2, #1
	cmp r2, r5
	blo _0800D0BA
_0800D0C4:
	movs r0, #0
	strb r0, [r4]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800D0D0
sub_0800D0D0: @ 0x0800D0D0
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r7, r2, #0
	movs r6, #0
	adds r0, r4, #0
	bl sub_08004954
	cmp r0, r7
	bhs _0800D0FA
	movs r2, #0
	subs r1, r7, r0
	cmp r6, r1
	bhs _0800D0FA
	movs r3, #0x20
_0800D0EE:
	strb r3, [r5]
	adds r5, #1
	adds r6, #1
	adds r2, #1
	cmp r2, r1
	blo _0800D0EE
_0800D0FA:
	cmp r0, #0
	beq _0800D18A
	ldrb r1, [r4]
	cmp r0, r7
	bls _0800D14A
	subs r3, r0, r7
	movs r2, #0
	cmp r2, r3
	bhs _0800D14A
	adds r0, r1, #0
	cmp r1, #0
	beq _0800D14A
	ldr r1, _0800D120 @ =gUnknown_083D6088
	mov ip, r1
_0800D116:
	cmp r0, #0x24
	bne _0800D124
	adds r4, #2
	b _0800D13E
	.align 2, 0
_0800D120: .4byte gUnknown_083D6088
_0800D124:
	cmp r0, #0x23
	bne _0800D12C
	adds r4, #2
	b _0800D13C
_0800D12C:
	lsrs r0, r0, #4
	add r0, ip
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800D13A
	adds r4, #2
	b _0800D13C
_0800D13A:
	adds r4, #1
_0800D13C:
	adds r2, #1
_0800D13E:
	ldrb r1, [r4]
	cmp r2, r3
	bhs _0800D14A
	adds r0, r1, #0
	cmp r1, #0
	bne _0800D116
_0800D14A:
	cmp r1, #0
	beq _0800D188
	ldr r2, _0800D158 @ =gUnknown_083D6088
_0800D150:
	cmp r1, #0x24
	bne _0800D15C
	adds r4, #2
	b _0800D182
	.align 2, 0
_0800D158: .4byte gUnknown_083D6088
_0800D15C:
	cmp r1, #0x23
	beq _0800D16A
	lsrs r0, r1, #4
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800D176
_0800D16A:
	strb r1, [r5]
	ldrb r0, [r4, #1]
	strb r0, [r5, #1]
	adds r4, #2
	adds r5, #2
	b _0800D17C
_0800D176:
	strb r1, [r5]
	adds r4, #1
	adds r5, #1
_0800D17C:
	adds r6, #1
	cmp r6, r7
	beq _0800D188
_0800D182:
	ldrb r1, [r4]
	cmp r1, #0
	bne _0800D150
_0800D188:
	movs r0, #0
_0800D18A:
	strb r0, [r5]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800D194
sub_0800D194: @ 0x0800D194
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	adds r5, r2, #0
	ldr r1, [sp, #0x14]
	movs r7, #1
	adds r0, r1, #0
	ands r0, r7
	cmp r0, #0
	beq _0800D1AA
	adds r1, #1
_0800D1AA:
	movs r0, #2
	cmp r0, r1
	bge _0800D1B2
	adds r0, r1, #0
_0800D1B2:
	adds r1, r0, #0
	movs r0, #2
	cmp r0, r3
	bge _0800D1BC
	adds r0, r3, #0
_0800D1BC:
	adds r3, r6, r0
	subs r3, #1
	movs r2, #0x1d
	cmp r2, r3
	ble _0800D1C8
	adds r2, r3, #0
_0800D1C8:
	adds r0, r5, r1
	subs r0, #1
	movs r1, #0x13
	cmp r1, r0
	ble _0800D1D4
	adds r1, r0, #0
_0800D1D4:
	subs r0, r2, r6
	adds r3, r0, #1
	subs r0, r1, r5
	adds r1, r0, #1
	adds r0, r1, #0
	ands r0, r7
	cmp r0, #0
	beq _0800D1E8
	subs r5, #1
	adds r1, #1
_0800D1E8:
	movs r2, #0
	strb r6, [r4]
	strb r5, [r4, #1]
	strb r3, [r4, #2]
	lsrs r0, r1, #1
	strb r0, [r4, #3]
	ldr r0, [sp, #0x18]
	strb r0, [r4, #4]
	ldr r0, [sp, #0x1c]
	strb r0, [r4, #5]
	strb r2, [r4, #6]
	strb r2, [r4, #7]
	ldr r0, [sp, #0x20]
	cmp r0, #0
	beq _0800D20E
	strb r2, [r4, #8]
	strb r7, [r4, #9]
	ldr r0, _0800D214 @ =gUnknown_030013B0
	str r0, [r4, #0xc]
_0800D20E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800D214: .4byte gUnknown_030013B0

	thumb_func_start sub_0800D218
sub_0800D218: @ 0x0800D218
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r6, #0
	b _0800D238
_0800D220:
	adds r0, r6, #0
	movs r1, #0xf
	bl Div
	ands r4, r0
	ldrb r1, [r5, #6]
	ldrb r2, [r5, #7]
	adds r0, r5, #0
	adds r3, r4, #0
	bl sub_0800CDCC
	adds r6, #1
_0800D238:
	bl sub_08011E9C
	bl sub_0800FA6C
	cmp r0, #0
	bne _0800D268
	ldr r0, _0800D264 @ =gUnknown_02000020
	ldrh r1, [r0]
	movs r4, #1
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _0800D220
	ldrb r1, [r5, #6]
	ldrb r2, [r5, #7]
	adds r0, r5, #0
	movs r3, #0
	bl sub_0800CDCC
	movs r0, #0
	b _0800D26A
	.align 2, 0
_0800D264: .4byte gUnknown_02000020
_0800D268:
	movs r0, #1
_0800D26A:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_0800D270
sub_0800D270: @ 0x0800D270
	push {r4, lr}
	adds r4, r0, #0
	ldrh r1, [r4]
	ldr r0, _0800D2A4 @ =0x00000E01
	cmp r1, r0
	bne _0800D29C
	ldrb r0, [r4, #2]
	cmp r0, #7
	bls _0800D29C
	ldrb r0, [r4, #3]
	cmp r0, #3
	bne _0800D29C
	adds r0, r4, #0
	movs r1, #6
	bl sub_0800CEB0
	ldrb r0, [r4]
	adds r0, #6
	strb r0, [r4]
	ldrb r0, [r4, #2]
	subs r0, #6
	strb r0, [r4, #2]
_0800D29C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800D2A4: .4byte 0x00000E01

	thumb_func_start sub_0800D2A8
sub_0800D2A8: @ 0x0800D2A8
	push {r4, lr}
	adds r4, r0, #0
	ldrh r1, [r4]
	ldr r0, _0800D2DC @ =0x00000E07
	cmp r1, r0
	bne _0800D2D4
	ldrb r0, [r4, #2]
	cmp r0, #7
	bls _0800D2D4
	ldrb r0, [r4, #3]
	cmp r0, #3
	bne _0800D2D4
	adds r0, r4, #0
	movs r1, #6
	bl sub_0800CF34
	ldrb r0, [r4]
	subs r0, #6
	strb r0, [r4]
	ldrb r0, [r4, #2]
	adds r0, #6
	strb r0, [r4, #2]
_0800D2D4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800D2DC: .4byte 0x00000E07

	thumb_func_start sub_0800D2E0
sub_0800D2E0: @ 0x0800D2E0
	push {r4, lr}
	sub sp, #0x10
	ldr r4, _0800D324 @ =gUnknown_020127BC
	movs r2, #1
	rsbs r2, r2, #0
	cmp r0, #0
	beq _0800D300
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	adds r0, r2, #0
	movs r1, #0xd
	movs r2, #0x20
	movs r3, #8
	bl sub_0800C06C
_0800D300:
	movs r2, #1
	movs r0, #6
	movs r1, #0
	str r0, [sp]
	str r2, [sp, #4]
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0xe
	movs r3, #0x1d
	bl sub_0800D194
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800D324: .4byte gUnknown_020127BC

	thumb_func_start sub_0800D328
sub_0800D328: @ 0x0800D328
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	ldr r2, [sp, #0x20]
	ldr r0, _0800D354 @ =gUnknown_020127BC
	movs r1, #0
	str r3, [sp]
	str r1, [sp, #4]
	str r2, [sp, #8]
	str r1, [sp, #0xc]
	adds r1, r4, #0
	adds r2, r5, #0
	adds r3, r6, #0
	bl sub_0800D194
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800D354: .4byte gUnknown_020127BC

	thumb_func_start sub_0800D358
sub_0800D358: @ 0x0800D358
	ldr r1, _0800D360 @ =gUnknown_020127BC
	movs r0, #1
	strb r0, [r1, #4]
	bx lr
	.align 2, 0
_0800D360: .4byte gUnknown_020127BC

	thumb_func_start sub_0800D364
sub_0800D364: @ 0x0800D364
	push {r4, r5, lr}
	ldr r4, _0800D390 @ =gUnknown_020127BC
	ldrb r5, [r4]
	adds r2, r5, r0
	movs r0, #0x1d
	cmp r0, r2
	ble _0800D374
	adds r0, r2, #0
_0800D374:
	ldrb r3, [r4, #1]
	adds r1, r3, r1
	movs r2, #0x12
	cmp r2, r1
	ble _0800D380
	adds r2, r1, #0
_0800D380:
	subs r0, r0, r5
	strb r0, [r4, #6]
	subs r0, r2, r3
	lsrs r0, r0, #1
	strb r0, [r4, #7]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800D390: .4byte gUnknown_020127BC

	thumb_func_start sub_0800D394
sub_0800D394: @ 0x0800D394
	push {lr}
	ldr r2, _0800D3A8 @ =gUnknown_020127BC
	movs r1, #3
	cmp r1, r0
	ble _0800D3A0
	adds r1, r0, #0
_0800D3A0:
	strb r1, [r2, #8]
	pop {r0}
	bx r0
	.align 2, 0
_0800D3A8: .4byte gUnknown_020127BC

	thumb_func_start sub_0800D3AC
sub_0800D3AC: @ 0x0800D3AC
	ldr r1, _0800D3B4 @ =gUnknown_020127BC
	strb r0, [r1, #9]
	bx lr
	.align 2, 0
_0800D3B4: .4byte gUnknown_020127BC

	thumb_func_start sub_0800D3B8
sub_0800D3B8: @ 0x0800D3B8
	push {lr}
	ldr r0, _0800D3C8 @ =gUnknown_020127BC
	movs r1, #0xc
	bl sub_0800A554
	pop {r0}
	bx r0
	.align 2, 0
_0800D3C8: .4byte gUnknown_020127BC

	thumb_func_start sub_0800D3CC
sub_0800D3CC: @ 0x0800D3CC
	push {lr}
	ldr r0, _0800D3DC @ =gUnknown_020127BC
	movs r1, #0xc
	bl sub_0800A5B4
	pop {r0}
	bx r0
	.align 2, 0
_0800D3DC: .4byte gUnknown_020127BC

	thumb_func_start sub_0800D3E0
sub_0800D3E0: @ 0x0800D3E0
	push {lr}
	ldr r0, _0800D3EC @ =gUnknown_020127BC
	bl sub_0800D000
	pop {r0}
	bx r0
	.align 2, 0
_0800D3EC: .4byte gUnknown_020127BC

	thumb_func_start sub_0800D3F0
sub_0800D3F0: @ 0x0800D3F0
	push {lr}
	ldr r0, _0800D3FC @ =gUnknown_020127BC
	bl sub_0800D02C
	pop {r0}
	bx r0
	.align 2, 0
_0800D3FC: .4byte gUnknown_020127BC

	thumb_func_start sub_0800D400
sub_0800D400: @ 0x0800D400
	push {r4, lr}
	ldr r4, _0800D418 @ =gUnknown_020127BC
	adds r0, r4, #0
	bl sub_0800D218
	cmp r0, #0
	bne _0800D41C
	adds r0, r4, #0
	bl sub_0800D02C
	movs r0, #0
	b _0800D41E
	.align 2, 0
_0800D418: .4byte gUnknown_020127BC
_0800D41C:
	movs r0, #1
_0800D41E:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_0800D424
sub_0800D424: @ 0x0800D424
	push {lr}
	ldr r0, _0800D430 @ =gUnknown_020127BC
	bl sub_0800D218
	pop {r1}
	bx r1
	.align 2, 0
_0800D430: .4byte gUnknown_020127BC

	thumb_func_start sub_0800D434
sub_0800D434: @ 0x0800D434
	push {r4, lr}
	adds r4, r0, #0
	cmp r1, #1
	bne _0800D442
	movs r0, #3
	strb r0, [r4, #8]
	b _0800D4B4
_0800D442:
	cmp r1, #2
	bne _0800D44A
	strb r1, [r4, #8]
	b _0800D4B4
_0800D44A:
	cmp r1, #3
	bne _0800D454
	movs r0, #1
	strb r0, [r4, #8]
	b _0800D4B4
_0800D454:
	cmp r1, #4
	bne _0800D45E
	movs r0, #0
	strb r0, [r4, #8]
	b _0800D4B6
_0800D45E:
	cmp r1, #5
	bne _0800D46A
	adds r0, r4, #0
	bl sub_0800D000
	b _0800D4B4
_0800D46A:
	cmp r1, #6
	bne _0800D476
	adds r0, r4, #0
	bl sub_0800D02C
	b _0800D4B4
_0800D476:
	cmp r1, #7
	bne _0800D490
	adds r0, r4, #0
	bl sub_0800D218
	cmp r0, #0
	beq _0800D488
	movs r0, #1
	b _0800D4B6
_0800D488:
	adds r0, r4, #0
	bl sub_0800D02C
	b _0800D4B4
_0800D490:
	cmp r1, #8
	bne _0800D49C
	adds r0, r4, #0
	bl sub_0800D218
	b _0800D4B6
_0800D49C:
	cmp r1, #9
	bne _0800D4A8
	movs r0, #0x14
	bl sub_08011B68
	b _0800D4B4
_0800D4A8:
	cmp r1, #0xa
	bne _0800D4B4
	ldr r0, _0800D4BC @ =gUnknown_0200C1B4
	movs r1, #0
	bl sub_0800D55C
_0800D4B4:
	movs r0, #0
_0800D4B6:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0800D4BC: .4byte gUnknown_0200C1B4

	thumb_func_start sub_0800D4C0
sub_0800D4C0: @ 0x0800D4C0
	push {r4, r5, r6, r7, lr}
	ldr r5, _0800D4F0 @ =gUnknown_020127BC
	ldr r7, _0800D4F4 @ =gUnknown_030013B0
	adds r4, r0, #0
	ldr r0, _0800D4F8 @ =0xFFFFBD28
	adds r1, r5, r0
	ldrb r0, [r1]
	cmp r0, #3
	bne _0800D4DC
	ldr r2, _0800D4FC @ =0xFFFFBDD0
	adds r0, r5, r2
	ldr r4, [r0]
	movs r0, #0
	strb r0, [r1]
_0800D4DC:
	ldr r0, _0800D4FC @ =0xFFFFBDD0
	adds r6, r5, r0
_0800D4E0:
	ldrb r0, [r4]
	adds r2, r0, #0
	adds r4, #1
	cmp r2, #0
	bne _0800D500
	adds r0, r4, #0
	b _0800D556
	.align 2, 0
_0800D4F0: .4byte gUnknown_020127BC
_0800D4F4: .4byte gUnknown_030013B0
_0800D4F8: .4byte 0xFFFFBD28
_0800D4FC: .4byte 0xFFFFBDD0
_0800D500:
	cmp r2, #1
	bne _0800D528
	ldrb r0, [r4]
	adds r1, r0, #0
	adds r4, #1
	cmp r1, #0xa
	bhi _0800D520
	adds r0, r5, #0
	bl sub_0800D434
	cmp r0, #0
	beq _0800D4E0
	subs r0, r4, #2
	str r0, [r6]
	movs r0, #0
	b _0800D556
_0800D520:
	adds r0, r5, #0
	bl sub_0800CD7C
	b _0800D4E0
_0800D528:
	cmp r2, #0xf7
	bhi _0800D538
	ldr r0, [r7, #0xc]
	lsls r1, r2, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r2, r0, #1
	b _0800D544
_0800D538:
	ldrb r1, [r4]
	adds r4, #1
	adds r0, r2, #0
	subs r0, #0xf8
	lsls r2, r0, #8
	orrs r2, r1
_0800D544:
	adds r0, r5, #0
	adds r1, r2, #0
	bl sub_0800CD2C
	adds r0, r5, #0
	movs r1, #1
	bl sub_0800CFC0
	b _0800D4E0
_0800D556:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0800D55C
sub_0800D55C: @ 0x0800D55C
	push {r4, r5, r6, r7, lr}
	ldr r5, _0800D574 @ =gUnknown_020127BC
	adds r4, r0, #0
	cmp r1, #0
	beq _0800D57C
	ldr r0, _0800D578 @ =gUnknown_030013D0
	str r0, [r5, #0xc]
	adds r6, r0, #0
	movs r0, #0
	strb r0, [r5, #4]
	b _0800D582
	.align 2, 0
_0800D574: .4byte gUnknown_020127BC
_0800D578: .4byte gUnknown_030013D0
_0800D57C:
	ldr r0, _0800D5B0 @ =gUnknown_030013B0
	str r0, [r5, #0xc]
	adds r6, r0, #0
_0800D582:
	ldr r1, _0800D5B4 @ =gUnknown_0200C1A0
	ldr r0, _0800D5B8 @ =0x00002344
	adds r2, r1, r0
	ldrb r0, [r2]
	cmp r0, #3
	bne _0800D598
	ldr r3, _0800D5BC @ =0x000023EC
	adds r0, r1, r3
	ldr r4, [r0]
	movs r0, #0
	strb r0, [r2]
_0800D598:
	ldr r0, _0800D5BC @ =0x000023EC
	adds r7, r1, r0
_0800D59C:
	ldrb r0, [r4]
	adds r2, r0, #0
	adds r4, #1
	cmp r2, #0
	bne _0800D5C0
	ldr r0, _0800D5B0 @ =gUnknown_030013B0
	str r0, [r5, #0xc]
	movs r0, #0
	b _0800D6BC
	.align 2, 0
_0800D5B0: .4byte gUnknown_030013B0
_0800D5B4: .4byte gUnknown_0200C1A0
_0800D5B8: .4byte 0x00002344
_0800D5BC: .4byte 0x000023EC
_0800D5C0:
	cmp r2, #0xa
	bne _0800D5CE
	adds r0, r5, #0
	movs r1, #5
	bl sub_0800D434
	b _0800D59C
_0800D5CE:
	cmp r2, #0x24
	bne _0800D66A
	ldrb r0, [r4]
	adds r1, r0, #0
	movs r3, #0
	cmp r0, #0x60
	ble _0800D5E2
	cmp r0, #0x7a
	bgt _0800D5E2
	movs r3, #1
_0800D5E2:
	adds r0, r1, #0
	cmp r3, #0
	beq _0800D5EA
	subs r0, #0x20
_0800D5EA:
	cmp r0, #0x52
	bne _0800D5F4
	adds r0, r5, #0
	movs r1, #1
	b _0800D662
_0800D5F4:
	cmp r0, #0x47
	bne _0800D5FE
	adds r0, r5, #0
	movs r1, #2
	b _0800D662
_0800D5FE:
	cmp r0, #0x59
	bne _0800D608
	adds r0, r5, #0
	movs r1, #3
	b _0800D662
_0800D608:
	cmp r0, #0x42
	bne _0800D612
	adds r0, r5, #0
	movs r1, #4
	b _0800D662
_0800D612:
	cmp r0, #0x4e
	bne _0800D61C
	adds r0, r5, #0
	movs r1, #5
	b _0800D662
_0800D61C:
	cmp r0, #0x43
	bne _0800D626
	adds r0, r5, #0
	movs r1, #6
	b _0800D662
_0800D626:
	cmp r0, #0x50
	bne _0800D638
	adds r0, r5, #0
	movs r1, #7
	bl sub_0800D434
	cmp r0, #0
	bne _0800D648
	b _0800D666
_0800D638:
	cmp r0, #0x57
	bne _0800D650
	adds r0, r5, #0
	movs r1, #8
	bl sub_0800D434
	cmp r0, #0
	beq _0800D666
_0800D648:
	subs r0, r4, #1
	str r0, [r7]
	movs r0, #1
	b _0800D6BC
_0800D650:
	cmp r0, #0x4d
	bne _0800D65A
	adds r0, r5, #0
	movs r1, #9
	b _0800D662
_0800D65A:
	cmp r0, #0x48
	bne _0800D66A
	adds r0, r5, #0
	movs r1, #0xa
_0800D662:
	bl sub_0800D434
_0800D666:
	adds r4, #1
	b _0800D59C
_0800D66A:
	cmp r2, #0x23
	bne _0800D680
	ldrb r0, [r4]
	adds r4, #1
	bl sub_08004788
	adds r1, r0, #0
	adds r0, r5, #0
	bl sub_0800CD7C
	b _0800D59C
_0800D680:
	ldr r0, _0800D6A0 @ =gUnknown_083D6088
	lsrs r1, r2, #4
	adds r1, r1, r0
	ldrb r0, [r1]
	cmp r0, #0
	beq _0800D6A4
	ldrb r0, [r4]
	adds r4, #1
	lsls r1, r2, #8
	orrs r1, r0
	adds r0, r6, #0
	bl sub_08004918
	adds r1, r0, #0
	b _0800D6AC
	.align 2, 0
_0800D6A0: .4byte gUnknown_083D6088
_0800D6A4:
	ldr r1, [r6, #8]
	lsls r0, r2, #1
	adds r0, r0, r1
	ldrh r1, [r0]
_0800D6AC:
	adds r0, r5, #0
	bl sub_0800CD2C
	adds r0, r5, #0
	movs r1, #1
	bl sub_0800CFC0
	b _0800D59C
_0800D6BC:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0800D6C4
sub_0800D6C4: @ 0x0800D6C4
	push {r4, r5, lr}
	sub sp, #0x44
	adds r5, r0, #0
	adds r4, r1, #0
	cmp r4, #0x20
	bls _0800D6D6
	ldr r0, _0800D6F0 @ =gUnknown_0831B4A4
	bl sub_080050A8
_0800D6D6:
	mov r0, sp
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_0800D06C
	mov r0, sp
	movs r1, #0
	bl sub_0800D55C
	add sp, #0x44
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800D6F0: .4byte gUnknown_0831B4A4

	thumb_func_start sub_0800D6F4
sub_0800D6F4: @ 0x0800D6F4
	push {r4, r5, lr}
	sub sp, #0x44
	adds r5, r0, #0
	adds r4, r1, #0
	cmp r4, #0x20
	bls _0800D706
	ldr r0, _0800D720 @ =gUnknown_0831B4C0
	bl sub_080050A8
_0800D706:
	mov r0, sp
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_0800D0D0
	mov r0, sp
	movs r1, #0
	bl sub_0800D55C
	add sp, #0x44
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800D720: .4byte gUnknown_0831B4C0

	thumb_func_start sub_0800D724
sub_0800D724: @ 0x0800D724
	push {lr}
	sub sp, #0x10
	adds r2, r0, #0
	ldr r1, _0800D740 @ =gUnknown_0831B180
	mov r0, sp
	bl sprintf
	mov r0, sp
	movs r1, #0
	bl sub_0800D55C
	add sp, #0x10
	pop {r0}
	bx r0
	.align 2, 0
_0800D740: .4byte gUnknown_0831B180

	thumb_func_start sub_0800D744
sub_0800D744: @ 0x0800D744
	push {r4, r5, lr}
	sub sp, #0x14
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r1, _0800D778 @ =gUnknown_0831B4E4
	mov r0, sp
	movs r2, #4
	bl memcpy
	mov r0, sp
	adds r4, #0x30
	strb r4, [r0, #1]
	add r4, sp, #4
	adds r0, r4, #0
	mov r1, sp
	adds r2, r5, #0
	bl sprintf
	adds r0, r4, #0
	movs r1, #0
	bl sub_0800D55C
	add sp, #0x14
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800D778: .4byte gUnknown_0831B4E4

	thumb_func_start sub_0800D77C
sub_0800D77C: @ 0x0800D77C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	adds r5, r0, #0
	adds r6, r1, #0
	adds r4, r2, #0
	ldr r1, _0800D818 @ =gUnknown_0831B4E8
	mov r0, sp
	movs r2, #4
	bl memcpy
	subs r1, r4, #2
	movs r0, #1
	cmp r0, r6
	bge _0800D79A
	adds r0, r6, #0
_0800D79A:
	cmp r1, r0
	ble _0800D7A0
	adds r1, r0, #0
_0800D7A0:
	adds r6, r1, #0
	mov r1, sp
	adds r0, r4, #0
	adds r0, #0x2f
	strb r0, [r1, #1]
	add r4, sp, #4
	adds r0, r4, #0
	adds r2, r5, #0
	bl sprintf
	adds r0, r4, #0
	bl strlen
	adds r5, r0, #0
	subs r0, r5, r6
	subs r2, r0, #1
	subs r1, r5, #1
	mov ip, r4
	add r7, sp, #0x18
	cmp r2, r1
	bhi _0800D7DE
	adds r0, r1, #0
_0800D7CC:
	adds r3, r4, r2
	ldrb r1, [r3]
	cmp r1, #0x20
	bne _0800D7D6
	movs r1, #0x30
_0800D7D6:
	strb r1, [r3]
	adds r2, #1
	cmp r2, r0
	bls _0800D7CC
_0800D7DE:
	adds r3, r7, #0
	movs r2, #0
	cmp r2, r5
	bhs _0800D802
	subs r1, r5, r6
	movs r6, #0x2e
	mov r4, ip
_0800D7EC:
	cmp r2, r1
	bne _0800D7F4
	strb r6, [r3]
	adds r3, #1
_0800D7F4:
	adds r0, r4, r2
	ldrb r0, [r0]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	cmp r2, r5
	blo _0800D7EC
_0800D802:
	movs r0, #0
	strb r0, [r3]
	adds r0, r7, #0
	movs r1, #0
	bl sub_0800D55C
	add sp, #0x2c
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800D818: .4byte gUnknown_0831B4E8

	thumb_func_start sub_0800D81C
sub_0800D81C: @ 0x0800D81C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x10
	mov ip, r2
	mov r8, r3
	ldr r6, _0800D878 @ =gUnknown_0200C1A0
	ldr r2, _0800D87C @ =0x0000661C
	adds r6, r6, r2
	mov r5, sp
	adds r4, r6, #0
	ldm r4!, {r2, r3, r7}
	stm r5!, {r2, r3, r7}
	ldr r4, [r4]
	str r4, [r5]
	movs r5, #0
	strb r0, [r6]
	strb r1, [r6, #1]
	movs r4, #0x1e
	subs r4, r4, r0
	strb r4, [r6, #2]
	movs r0, #0x14
	subs r0, r0, r1
	strb r0, [r6, #3]
	mov r3, ip
	strb r3, [r6, #5]
	strb r5, [r6, #6]
	strb r5, [r6, #7]
	strb r5, [r6, #8]
	strb r5, [r6, #9]
	mov r0, r8
	movs r1, #0
	bl sub_0800D55C
	mov r0, sp
	ldm r0!, {r1, r2, r7}
	stm r6!, {r1, r2, r7}
	ldr r0, [r0]
	str r0, [r6]
	add sp, #0x10
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800D878: .4byte gUnknown_0200C1A0
_0800D87C: .4byte 0x0000661C

	thumb_func_start sub_0800D880
sub_0800D880: @ 0x0800D880
	push {lr}
	ldr r1, _0800D8A0 @ =gUnknown_02012800
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	movs r0, #0x70
	strh r0, [r1, #2]
	strb r2, [r1, #4]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl sub_0800D8E0
	pop {r0}
	bx r0
	.align 2, 0
_0800D8A0: .4byte gUnknown_02012800

	thumb_func_start sub_0800D8A4
sub_0800D8A4: @ 0x0800D8A4
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0800D8C0 @ =gUnknown_083E3E74
	movs r1, #0x36
	adds r2, r4, #0
	bl BinarySearchStr
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0800D8C4
	adds r0, r1, #0
	b _0800D8D0
	.align 2, 0
_0800D8C0: .4byte gUnknown_083E3E74
_0800D8C4:
	ldr r0, _0800D8D8 @ =gUnknown_0831B4EC
	ldr r2, _0800D8DC @ =gUnknown_0831B4F8
	adds r1, r4, #0
	bl sub_080050E4
	movs r0, #0
_0800D8D0:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0800D8D8: .4byte gUnknown_0831B4EC
_0800D8DC: .4byte gUnknown_0831B4F8

	thumb_func_start sub_0800D8E0
sub_0800D8E0: @ 0x0800D8E0
	push {r4, lr}
	adds r3, r0, #0
	ldr r4, _0800D910 @ =0x07000048
	cmp r2, #0
	beq _0800D91C
	movs r0, #0xff
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r2, #0
	orrs r1, r0
	strh r1, [r4]
	ldr r1, _0800D914 @ =0x000001FF
	adds r0, r1, #0
	ands r3, r0
	ldr r2, _0800D918 @ =0xFFFFC000
	adds r0, r2, #0
	orrs r3, r0
	strh r3, [r4, #2]
	movs r1, #0xe6
	lsls r1, r1, #4
	adds r0, r1, #0
	strh r0, [r4, #4]
	b _0800D920
	.align 2, 0
_0800D910: .4byte 0x07000048
_0800D914: .4byte 0x000001FF
_0800D918: .4byte 0xFFFFC000
_0800D91C:
	movs r0, #0xa0
	strh r0, [r4]
_0800D920:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800D928
sub_0800D928: @ 0x0800D928
	push {r4, r5, r6, r7, lr}
	sub sp, #0x80
	adds r5, r0, #0
	ldrb r0, [r5, #4]
	cmp r0, #0
	beq _0800D9A0
	ldr r3, _0800D98C @ =gUnknown_085371D8
	ldr r1, _0800D990 @ =gUnknown_083E4F04
	ldrb r0, [r5, #5]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r2, [r1]
	ldr r0, [r1, #4]
	adds r7, r0, r3
	ldrb r4, [r5, #6]
	lsls r0, r4, #2
	adds r0, r0, r1
	ldr r0, [r0, #8]
	adds r6, r0, r3
	cmp r4, r2
	blo _0800D966
	ldr r1, _0800D994 @ =gUnknown_0831B508
	ldr r2, [r5, #8]
	mov r0, sp
	adds r3, r4, #0
	bl sprintf
	mov r0, sp
	bl sub_080050A8
_0800D966:
	ldr r1, _0800D998 @ =0x05000300
	adds r0, r1, #0
	adds r1, r7, #0
	movs r2, #0x40
	bl sub_08000314
	ldr r1, _0800D99C @ =0x06014C00
	adds r0, r6, #0
	bl LZ77UnCompVram
	movs r1, #0
	ldrsh r0, [r5, r1]
	movs r2, #2
	ldrsh r1, [r5, r2]
	movs r2, #1
	bl sub_0800D8E0
	b _0800D9AA
	.align 2, 0
_0800D98C: .4byte gUnknown_085371D8
_0800D990: .4byte gUnknown_083E4F04
_0800D994: .4byte gUnknown_0831B508
_0800D998: .4byte 0x05000300
_0800D99C: .4byte 0x06014C00
_0800D9A0:
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl sub_0800D8E0
_0800D9AA:
	add sp, #0x80
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800D9B4
sub_0800D9B4: @ 0x0800D9B4
	push {lr}
	adds r2, r0, #0
	ldr r0, _0800D9D0 @ =gUnknown_02012800
	strh r2, [r0]
	strh r1, [r0, #2]
	ldrb r0, [r0, #4]
	cmp r0, #0
	beq _0800D9CC
	adds r0, r2, #0
	movs r2, #1
	bl sub_0800D8E0
_0800D9CC:
	pop {r0}
	bx r0
	.align 2, 0
_0800D9D0: .4byte gUnknown_02012800

	thumb_func_start sub_0800D9D4
sub_0800D9D4: @ 0x0800D9D4
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	ldr r4, _0800D9E8 @ =gUnknown_02012800
	ldrb r0, [r5]
	cmp r0, #0
	bne _0800D9EC
	bl sub_0800DA40
	b _0800DA38
	.align 2, 0
_0800D9E8: .4byte gUnknown_02012800
_0800D9EC:
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_0800F008
	ldr r1, [r4]
	movs r0, #0xe0
	lsls r0, r0, #0xf
	cmp r1, r0
	bne _0800DA06
	adds r0, r4, #0
	subs r0, #0x44
	bl sub_0800D270
_0800DA06:
	adds r0, r5, #0
	bl sub_0800D8A4
	adds r1, r0, #0
	movs r2, #0
	ldrb r0, [r4, #4]
	cmp r0, #0
	beq _0800DA22
	ldrb r0, [r4, #5]
	cmp r1, r0
	bne _0800DA22
	ldrb r0, [r4, #6]
	cmp r6, r0
	beq _0800DA24
_0800DA22:
	movs r2, #1
_0800DA24:
	movs r0, #1
	strb r0, [r4, #4]
	strb r1, [r4, #5]
	strb r6, [r4, #6]
	str r5, [r4, #8]
	cmp r2, #0
	beq _0800DA38
	adds r0, r4, #0
	bl sub_0800D928
_0800DA38:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800DA40
sub_0800DA40: @ 0x0800DA40
	push {r4, lr}
	ldr r4, _0800DA6C @ =gUnknown_02012800
	bl sub_0800F028
	movs r0, #0
	strb r0, [r4, #4]
	movs r1, #0
	movs r2, #0
	bl sub_0800D8E0
	ldr r1, [r4]
	movs r0, #0xe0
	lsls r0, r0, #0xf
	cmp r1, r0
	bne _0800DA66
	adds r0, r4, #0
	subs r0, #0x44
	bl sub_0800D2A8
_0800DA66:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800DA6C: .4byte gUnknown_02012800

	thumb_func_start sub_0800DA70
sub_0800DA70: @ 0x0800DA70
	push {lr}
	ldr r1, _0800DA84 @ =gUnknown_0201280C
	movs r0, #0
	strb r0, [r1]
	movs r1, #0
	movs r2, #0
	bl sub_0800DAC4
	pop {r0}
	bx r0
	.align 2, 0
_0800DA84: .4byte gUnknown_0201280C

	thumb_func_start sub_0800DA88
sub_0800DA88: @ 0x0800DA88
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0800DAA4 @ =gUnknown_083E3F4C
	movs r1, #0x1f
	adds r2, r4, #0
	bl BinarySearchStr
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0800DAA8
	adds r0, r1, #0
	b _0800DAB4
	.align 2, 0
_0800DAA4: .4byte gUnknown_083E3F4C
_0800DAA8:
	ldr r0, _0800DABC @ =gUnknown_0831B528
	ldr r2, _0800DAC0 @ =gUnknown_0831B4F8
	adds r1, r4, #0
	bl sub_080050E4
	movs r0, #0
_0800DAB4:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0800DABC: .4byte gUnknown_0831B528
_0800DAC0: .4byte gUnknown_0831B4F8

	thumb_func_start sub_0800DAC4
sub_0800DAC4: @ 0x0800DAC4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sl, r0
	mov ip, r1
	str r2, [sp]
	ldr r7, _0800DC20 @ =0x07000050
	cmp r2, #0
	bne _0800DADE
	b _0800DC48
_0800DADE:
	movs r6, #0
	cmp r2, #0xf
	bhi _0800DAE8
	movs r6, #0x80
	lsls r6, r6, #3
_0800DAE8:
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r1, #0
	mov r1, ip
	orrs r1, r0
	orrs r1, r6
	strh r1, [r7]
	movs r0, #0xc0
	lsls r0, r0, #8
	adds r2, r0, #0
	mov r5, sl
	orrs r5, r2
	strh r5, [r7, #2]
	ldr r0, _0800DC24 @ =0x00000C8C
	strh r0, [r7, #4]
	adds r7, #8
	strh r1, [r7]
	movs r1, #0x40
	add r1, sl
	mov r8, r1
	mov r4, r8
	orrs r4, r2
	strh r4, [r7, #2]
	adds r0, #0x80
	strh r0, [r7, #4]
	adds r7, #8
	mov r0, ip
	movs r2, #0xa0
	lsls r2, r2, #8
	orrs r0, r2
	orrs r0, r6
	strh r0, [r7]
	mov r0, sl
	adds r0, #0x80
	str r0, [sp, #4]
	movs r1, #0x80
	lsls r1, r1, #8
	adds r0, r1, #0
	ldr r3, [sp, #4]
	orrs r3, r0
	strh r3, [r7, #2]
	ldr r0, _0800DC28 @ =0x00000D8C
	strh r0, [r7, #4]
	adds r7, #8
	mov r0, ip
	adds r0, #0x20
	orrs r0, r2
	orrs r0, r6
	strh r0, [r7]
	strh r3, [r7, #2]
	ldr r0, _0800DC2C @ =0x00000D9C
	strh r0, [r7, #4]
	adds r7, #8
	mov r2, ip
	adds r2, #0x40
	movs r0, #0xc0
	lsls r0, r0, #7
	mov sb, r0
	adds r1, r2, #0
	mov r0, sb
	orrs r1, r0
	orrs r1, r6
	strh r1, [r7]
	strh r5, [r7, #2]
	ldr r0, _0800DC30 @ =0x00000DAC
	strh r0, [r7, #4]
	adds r7, #8
	strh r1, [r7]
	strh r4, [r7, #2]
	movs r1, #0xc0
	lsls r1, r1, #4
	adds r4, r1, #0
	adds r0, #0x40
	strh r0, [r7, #4]
	adds r7, #8
	movs r1, #0x8b
	lsls r1, r1, #1
	movs r0, #0xa0
	lsls r0, r0, #8
	orrs r2, r0
	orrs r2, r6
	strh r2, [r7]
	strh r3, [r7, #2]
	lsls r0, r1, #1
	orrs r0, r4
	strh r0, [r7, #4]
	adds r7, #8
	adds r1, #8
	mov r2, ip
	adds r2, #0x60
	mov r0, sb
	orrs r2, r0
	orrs r2, r6
	strh r2, [r7]
	movs r0, #0x80
	lsls r0, r0, #7
	adds r3, r0, #0
	mov r0, sl
	orrs r0, r3
	strh r0, [r7, #2]
	lsls r0, r1, #1
	orrs r0, r4
	strh r0, [r7, #4]
	adds r7, #8
	adds r1, #4
	strh r2, [r7]
	mov r0, sl
	adds r0, #0x20
	orrs r0, r3
	strh r0, [r7, #2]
	lsls r0, r1, #1
	orrs r0, r4
	strh r0, [r7, #4]
	adds r7, #8
	adds r1, #4
	strh r2, [r7]
	mov r0, r8
	orrs r0, r3
	strh r0, [r7, #2]
	lsls r0, r1, #1
	orrs r0, r4
	strh r0, [r7, #4]
	adds r7, #8
	adds r1, #4
	strh r2, [r7]
	mov r0, sl
	adds r0, #0x60
	orrs r0, r3
	strh r0, [r7, #2]
	lsls r0, r1, #1
	orrs r0, r4
	strh r0, [r7, #4]
	adds r7, #8
	adds r1, #4
	strh r2, [r7]
	mov r2, sp
	ldrh r2, [r2, #4]
	strh r2, [r7, #2]
	lsls r1, r1, #1
	orrs r1, r4
	strh r1, [r7, #4]
	ldr r0, [sp]
	cmp r0, #0xf
	bhi _0800DC3C
	movs r1, #0xbd
	lsls r1, r1, #6
	ldr r0, _0800DC34 @ =REG_BLDCNT
	strh r1, [r0]
	movs r0, #0x10
	ldr r1, [sp]
	subs r0, r0, r1
	lsls r0, r0, #8
	orrs r0, r1
	ldr r1, _0800DC38 @ =REG_BLDALPHA
	strh r0, [r1]
	b _0800DC68
	.align 2, 0
_0800DC20: .4byte 0x07000050
_0800DC24: .4byte 0x00000C8C
_0800DC28: .4byte 0x00000D8C
_0800DC2C: .4byte 0x00000D9C
_0800DC30: .4byte 0x00000DAC
_0800DC34: .4byte REG_BLDCNT
_0800DC38: .4byte REG_BLDALPHA
_0800DC3C:
	ldr r0, _0800DC44 @ =gUnknown_02001D0C
	ldrb r1, [r0]
	b _0800DC5A
	.align 2, 0
_0800DC44: .4byte gUnknown_02001D0C
_0800DC48:
	movs r0, #0
	ldr r2, _0800DC78 @ =gUnknown_02001D0C
	movs r1, #0xa0
_0800DC4E:
	strh r1, [r7]
	adds r7, #8
	adds r0, #1
	cmp r0, #0xb
	bls _0800DC4E
	ldrb r1, [r2]
_0800DC5A:
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r1, r0, #0x1f
	cmp r1, #0
	bne _0800DC68
	ldr r0, _0800DC7C @ =REG_BLDCNT
	strh r1, [r0]
_0800DC68:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800DC78: .4byte gUnknown_02001D0C
_0800DC7C: .4byte REG_BLDCNT

	thumb_func_start sub_0800DC80
sub_0800DC80: @ 0x0800DC80
	push {r4, lr}
	ldr r2, _0800DCAC @ =gUnknown_08572050
	ldr r1, _0800DCB0 @ =gUnknown_083E4FDC
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r1, r1, r2
	adds r4, r1, #0
	adds r4, #0x40
	ldr r2, _0800DCB4 @ =0x050002C0
	adds r0, r2, #0
	movs r2, #0x40
	bl sub_08000314
	ldr r2, _0800DCB8 @ =0x06011180
	adds r0, r4, #0
	adds r1, r2, #0
	bl LZ77UnCompVram
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800DCAC: .4byte gUnknown_08572050
_0800DCB0: .4byte gUnknown_083E4FDC
_0800DCB4: .4byte 0x050002C0
_0800DCB8: .4byte 0x06011180

	thumb_func_start sub_0800DCBC
sub_0800DCBC: @ 0x0800DCBC
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1]
	cmp r0, #0
	beq _0800DCD8
	ldrb r0, [r1, #1]
	bl sub_0800DC80
	movs r0, #0x30
	movs r1, #0
	movs r2, #0x10
	bl sub_0800DAC4
	b _0800DCE2
_0800DCD8:
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl sub_0800DAC4
_0800DCE2:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800DCE8
sub_0800DCE8: @ 0x0800DCE8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	ldr r0, _0800DD08 @ =gUnknown_0201280C
	mov sb, r0
	movs r7, #0x30
	movs r1, #0
	mov r8, r1
	ldrb r0, [r4]
	cmp r0, #0
	bne _0800DD0C
	bl sub_0800DD94
	b _0800DD86
	.align 2, 0
_0800DD08: .4byte gUnknown_0201280C
_0800DD0C:
	adds r0, r4, #0
	bl sub_0800F038
	adds r0, r4, #0
	bl sub_0800DA88
	adds r6, r0, #0
	mov r1, sb
	ldrb r0, [r1]
	cmp r0, #0
	beq _0800DD48
	ldrb r0, [r1, #1]
	cmp r6, r0
	beq _0800DD86
	ldr r0, _0800DD64 @ =gUnknown_02001D0C
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800DD48
	movs r4, #0
	movs r5, #0x10
_0800DD34:
	bl sub_08011E9C
	subs r2, r5, r4
	adds r0, r7, #0
	mov r1, r8
	bl sub_0800DAC4
	adds r4, #2
	cmp r4, #0x10
	bls _0800DD34
_0800DD48:
	adds r0, r6, #0
	bl sub_0800DC80
	ldr r0, _0800DD64 @ =gUnknown_02001D0C
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800DD68
	adds r0, r7, #0
	mov r1, r8
	movs r2, #0x10
	bl sub_0800DAC4
	b _0800DD7E
	.align 2, 0
_0800DD64: .4byte gUnknown_02001D0C
_0800DD68:
	movs r4, #2
_0800DD6A:
	bl sub_08011E9C
	adds r0, r7, #0
	mov r1, r8
	adds r2, r4, #0
	bl sub_0800DAC4
	adds r4, #2
	cmp r4, #0x10
	bls _0800DD6A
_0800DD7E:
	movs r0, #1
	mov r1, sb
	strb r0, [r1]
	strb r6, [r1, #1]
_0800DD86:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800DD94
sub_0800DD94: @ 0x0800DD94
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _0800DDC4 @ =gUnknown_0201280C
	mov r8, r0
	movs r7, #0x30
	movs r6, #0
	bl sub_0800F04C
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #0
	beq _0800DDEA
	ldr r0, _0800DDC8 @ =gUnknown_02001D0C
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800DDCC
	movs r0, #0x30
	movs r1, #0
	movs r2, #0
	bl sub_0800DAC4
	b _0800DDE4
	.align 2, 0
_0800DDC4: .4byte gUnknown_0201280C
_0800DDC8: .4byte gUnknown_02001D0C
_0800DDCC:
	movs r4, #0
	movs r5, #0x10
_0800DDD0:
	bl sub_08011E9C
	subs r2, r5, r4
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_0800DAC4
	adds r4, #2
	cmp r4, #0x10
	bls _0800DDD0
_0800DDE4:
	movs r0, #0
	mov r1, r8
	strb r0, [r1]
_0800DDEA:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0800DDF4
sub_0800DDF4: @ 0x0800DDF4
	push {r4, lr}
	adds r4, r1, #0
	cmp r0, #0
	bne _0800DE1C
	ldr r0, _0800DE14 @ =gUnknown_083E4120
	movs r1, #0x25
	adds r2, r4, #0
	bl BinarySearchStr
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0800DE50
	ldr r0, _0800DE18 @ =gUnknown_0831B534
	b _0800DE36
	.align 2, 0
_0800DE14: .4byte gUnknown_083E4120
_0800DE18: .4byte gUnknown_0831B534
_0800DE1C:
	cmp r0, #5
	bne _0800DE54
	ldr r0, _0800DE44 @ =gUnknown_083E411C
	movs r1, #1
	adds r2, r4, #0
	bl BinarySearchStr
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0800DE50
	ldr r0, _0800DE48 @ =gUnknown_0831B544
_0800DE36:
	ldr r2, _0800DE4C @ =gUnknown_0831B4F8
	adds r1, r4, #0
	bl sub_080050E4
	movs r0, #0
	b _0800DE5A
	.align 2, 0
_0800DE44: .4byte gUnknown_083E411C
_0800DE48: .4byte gUnknown_0831B544
_0800DE4C: .4byte gUnknown_0831B4F8
_0800DE50:
	adds r0, r1, #0
	b _0800DE5A
_0800DE54:
	adds r1, r4, #0
	bl sub_0800FD50
_0800DE5A:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_0800DE60
sub_0800DE60: @ 0x0800DE60
	push {lr}
	ldr r0, _0800DE70 @ =0x07000018
	movs r1, #6
	bl sub_08000FEC
	pop {r0}
	bx r0
	.align 2, 0
_0800DE70: .4byte 0x07000018

	thumb_func_start sub_0800DE74
sub_0800DE74: @ 0x0800DE74
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r5, r1, #0
	adds r4, r2, #0
	ldr r7, _0800DF30 @ =0x07000018
	movs r6, #0xb8
	lsls r6, r6, #1
	cmp r0, #3
	bne _0800DF3C
	lsls r0, r3, #3
	adds r0, r0, r3
	lsls r0, r0, #2
	mov r8, r0
	add r6, r8
	movs r0, #0x80
	lsls r0, r0, #6
	mov sb, r0
	adds r0, r4, #0
	mov r1, sb
	orrs r0, r1
	strh r0, [r7]
	ldr r0, _0800DF34 @ =0xFFFF8000
	adds r2, r0, #0
	adds r1, r5, #0
	orrs r1, r2
	str r1, [sp]
	strh r1, [r7, #2]
	lsls r0, r6, #1
	movs r1, #0xc0
	lsls r1, r1, #4
	mov ip, r1
	mov r1, ip
	orrs r0, r1
	strh r0, [r7, #4]
	adds r7, #8
	movs r6, #0xc0
	lsls r6, r6, #1
	add r6, r8
	ldr r0, _0800DF38 @ =0xFFFFA000
	adds r1, r0, #0
	adds r0, r4, #0
	orrs r0, r1
	strh r0, [r7]
	adds r3, r5, #0
	adds r3, #0x20
	adds r0, r3, #0
	orrs r0, r2
	strh r0, [r7, #2]
	lsls r0, r6, #1
	mov r1, ip
	orrs r0, r1
	strh r0, [r7, #4]
	adds r7, #8
	movs r6, #0xc4
	lsls r6, r6, #1
	add r6, r8
	adds r2, r4, #0
	adds r2, #0x20
	movs r5, #0xc0
	lsls r5, r5, #7
	adds r1, r5, #0
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r7]
	mov r0, sp
	ldrh r0, [r0]
	strh r0, [r7, #2]
	lsls r0, r6, #1
	mov r1, ip
	orrs r0, r1
	strh r0, [r7, #4]
	adds r7, #8
	movs r6, #0xc8
	lsls r6, r6, #1
	add r6, r8
	mov r5, sb
	orrs r2, r5
	strh r2, [r7]
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r1, #0
	orrs r3, r0
	strh r3, [r7, #2]
	lsls r0, r6, #1
	mov r2, ip
	orrs r0, r2
	strh r0, [r7, #4]
	adds r7, #8
	movs r0, #0xa0
	b _0800DF70
	.align 2, 0
_0800DF30: .4byte 0x07000018
_0800DF34: .4byte 0xFFFF8000
_0800DF38: .4byte 0xFFFFA000
_0800DF3C:
	subs r0, #4
	cmp r0, #1
	bhi _0800DF7C
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r1, #0
	orrs r4, r0
	strh r4, [r7]
	ldr r2, _0800DF78 @ =0xFFFF8000
	adds r0, r2, #0
	orrs r5, r0
	strh r5, [r7, #2]
	lsls r0, r6, #1
	movs r5, #0xc0
	lsls r5, r5, #4
	adds r1, r5, #0
	orrs r0, r1
	strh r0, [r7, #4]
	adds r7, #8
	movs r0, #0xa0
	strh r0, [r7]
	adds r7, #8
	strh r0, [r7]
	adds r7, #8
	strh r0, [r7]
	adds r7, #8
_0800DF70:
	strh r0, [r7]
	adds r7, #8
	strh r0, [r7]
	b _0800E02C
	.align 2, 0
_0800DF78: .4byte 0xFFFF8000
_0800DF7C:
	movs r0, #0x80
	lsls r0, r0, #6
	mov sl, r0
	adds r0, r4, #0
	mov r1, sl
	orrs r0, r1
	strh r0, [r7]
	ldr r2, _0800E03C @ =0xFFFF8000
	adds r1, r2, #0
	adds r3, r5, #0
	orrs r3, r1
	strh r3, [r7, #2]
	lsls r0, r6, #1
	movs r2, #0xc0
	lsls r2, r2, #4
	mov sb, r2
	mov r2, sb
	orrs r0, r2
	strh r0, [r7, #4]
	adds r7, #8
	adds r6, #0x10
	ldr r0, _0800E040 @ =0xFFFFA000
	mov r8, r0
	adds r0, r4, #0
	mov r2, r8
	orrs r0, r2
	strh r0, [r7]
	adds r5, #0x20
	mov ip, r5
	mov r2, ip
	orrs r2, r1
	strh r2, [r7, #2]
	lsls r0, r6, #1
	mov r5, sb
	orrs r0, r5
	strh r0, [r7, #4]
	adds r7, #8
	adds r6, #8
	adds r1, r4, #0
	adds r1, #0x20
	adds r0, r1, #0
	mov r5, sl
	orrs r0, r5
	strh r0, [r7]
	strh r3, [r7, #2]
	lsls r0, r6, #1
	mov r5, sb
	orrs r0, r5
	strh r0, [r7, #4]
	adds r7, #8
	adds r6, #0x10
	mov r0, r8
	orrs r1, r0
	strh r1, [r7]
	strh r2, [r7, #2]
	lsls r0, r6, #1
	orrs r0, r5
	strh r0, [r7, #4]
	adds r7, #8
	adds r6, #8
	adds r2, r4, #0
	adds r2, #0x40
	movs r5, #0xc0
	lsls r5, r5, #7
	adds r1, r5, #0
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r7]
	strh r3, [r7, #2]
	lsls r0, r6, #1
	mov r1, sb
	orrs r0, r1
	strh r0, [r7, #4]
	adds r7, #8
	adds r6, #8
	mov r5, sl
	orrs r2, r5
	strh r2, [r7]
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r1, #0
	mov r2, ip
	orrs r2, r0
	strh r2, [r7, #2]
	lsls r0, r6, #1
	mov r5, sb
	orrs r0, r5
	strh r0, [r7, #4]
_0800E02C:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800E03C: .4byte 0xFFFF8000
_0800E040: .4byte 0xFFFFA000

	thumb_func_start sub_0800E044
sub_0800E044: @ 0x0800E044
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	lsls r6, r2, #5
	movs r0, #0xa0
	subs r5, r0, r3
	movs r2, #0
	cmp r2, r6
	bhs _0800E07C
	movs r7, #0xff
_0800E056:
	ldrb r0, [r1]
	adds r3, r0, #0
	adds r1, #1
	cmp r3, #0
	beq _0800E064
	adds r3, r3, r5
	ands r3, r7
_0800E064:
	ldrb r0, [r1]
	adds r1, #1
	cmp r0, #0
	beq _0800E06E
	adds r0, r0, r5
_0800E06E:
	lsls r0, r0, #8
	orrs r0, r3
	strh r0, [r4]
	adds r4, #2
	adds r2, #1
	cmp r2, r6
	blo _0800E056
_0800E07C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800E084
sub_0800E084: @ 0x0800E084
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	lsls r5, r1, #5
	movs r0, #0xa0
	subs r4, r0, r2
	movs r1, #0
	cmp r1, r5
	bhs _0800E0BA
	movs r6, #0xff
_0800E096:
	ldrh r0, [r3]
	adds r2, r6, #0
	ands r2, r0
	lsrs r0, r0, #8
	cmp r2, #0
	beq _0800E0A6
	adds r2, r2, r4
	ands r2, r6
_0800E0A6:
	cmp r0, #0
	beq _0800E0AC
	adds r0, r0, r4
_0800E0AC:
	lsls r0, r0, #8
	orrs r0, r2
	strh r0, [r3]
	adds r3, #2
	adds r1, #1
	cmp r1, r5
	blo _0800E096
_0800E0BA:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_0800E0C0
sub_0800E0C0: @ 0x0800E0C0
	push {r4, r5, r6, r7, lr}
	adds r3, r1, #0
	ldr r1, _0800E0D8 @ =0x05000340
	mov ip, r1
	ldr r7, _0800E0DC @ =0x06015C00
	cmp r0, #5
	bhi _0800E1A6
	lsls r0, r0, #2
	ldr r1, _0800E0E0 @ =_0800E0E4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800E0D8: .4byte 0x05000340
_0800E0DC: .4byte 0x06015C00
_0800E0E0: .4byte _0800E0E4
_0800E0E4: @ jump table
	.4byte _0800E0FC @ case 0
	.4byte _0800E10C @ case 1
	.4byte _0800E120 @ case 2
	.4byte _0800E134 @ case 3
	.4byte _0800E148 @ case 4
	.4byte _0800E15C @ case 5
_0800E0FC:
	ldr r2, _0800E104 @ =gUnknown_0858E944
	ldr r0, _0800E108 @ =gUnknown_083E51B0
	b _0800E160
	.align 2, 0
_0800E104: .4byte gUnknown_0858E944
_0800E108: .4byte gUnknown_083E51B0
_0800E10C:
	ldr r2, _0800E11C @ =gUnknown_08486E54
	lsls r0, r3, #2
	adds r0, r0, r2
	ldr r0, [r0]
	adds r1, r0, r2
	movs r6, #0x3c
	movs r5, #0x80
	b _0800E188
	.align 2, 0
_0800E11C: .4byte gUnknown_08486E54
_0800E120:
	ldr r2, _0800E130 @ =gUnknown_084912AC
	lsls r0, r3, #2
	adds r0, r0, r2
	ldr r0, [r0]
	adds r1, r0, r2
	movs r6, #0x3c
	movs r5, #0xa0
	b _0800E188
	.align 2, 0
_0800E130: .4byte gUnknown_084912AC
_0800E134:
	ldr r2, _0800E144 @ =gUnknown_0849CE78
	lsls r0, r3, #2
	adds r0, r0, r2
	ldr r0, [r0]
	adds r1, r0, r2
	movs r6, #0x90
	movs r5, #0xc0
	b _0800E188
	.align 2, 0
_0800E144: .4byte gUnknown_0849CE78
_0800E148:
	ldr r2, _0800E158 @ =gUnknown_084B51A4
	lsls r0, r3, #2
	adds r0, r0, r2
	ldr r0, [r0]
	adds r1, r0, r2
	movs r6, #0x10
	movs r5, #0xe0
	b _0800E188
	.align 2, 0
_0800E158: .4byte gUnknown_084B51A4
_0800E15C:
	ldr r2, _0800E180 @ =gUnknown_0858E804
	ldr r0, _0800E184 @ =gUnknown_083E51AC
_0800E160:
	lsls r1, r3, #2
	adds r1, r1, r0
	ldr r0, [r1]
	adds r1, r0, r2
	adds r4, r1, #0
	adds r4, #0xc0
	mov r0, ip
	movs r2, #0xc0
	bl sub_080002C4
	adds r0, r4, #0
	adds r1, r7, #0
	bl LZ77UnCompVram
	b _0800E1A6
	.align 2, 0
_0800E180: .4byte gUnknown_0858E804
_0800E184: .4byte gUnknown_083E51AC
_0800E188:
	adds r4, r1, #0
	adds r4, #0x40
	mov r0, ip
	movs r2, #0x40
	bl sub_080002C4
	adds r0, r4, #0
	adds r1, r7, #0
	bl LZ77UnCompVram
	adds r0, r7, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl sub_0800E084
_0800E1A6:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0800E1AC
sub_0800E1AC: @ 0x0800E1AC
	push {lr}
	adds r2, r0, #0
	cmp r2, #3
	bhi _0800E1D8
	cmp r1, #3
	bhi _0800E1BE
	lsls r0, r1, #2
	adds r0, r0, r2
	b _0800E202
_0800E1BE:
	cmp r1, #7
	bhi _0800E1CC
	subs r0, r1, #4
	lsls r1, r0, #2
	adds r0, r2, #0
	adds r0, #0x18
	b _0800E200
_0800E1CC:
	adds r0, r1, #0
	subs r0, #8
	lsls r1, r0, #2
	adds r0, r2, #0
	adds r0, #0x30
	b _0800E200
_0800E1D8:
	cmp r1, #3
	bhi _0800E1E4
	lsls r1, r1, #1
	adds r0, r2, #0
	adds r0, #0xc
	b _0800E200
_0800E1E4:
	cmp r1, #7
	bhi _0800E1F6
	subs r0, r1, #4
	lsls r1, r0, #1
	adds r0, r2, #0
	adds r0, #0x24
	b _0800E200
_0800E1F2:
	movs r0, #0
	b _0800E21A
_0800E1F6:
	adds r0, r1, #0
	subs r0, #8
	lsls r1, r0, #1
	adds r0, r2, #0
	adds r0, #0x34
_0800E200:
	adds r0, r1, r0
_0800E202:
	lsls r0, r0, #6
	ldr r2, _0800E220 @ =0x06015C00
	adds r1, r0, r2
	movs r2, #0
_0800E20A:
	ldr r0, [r1]
	cmp r0, #0
	bne _0800E1F2
	adds r1, #4
	adds r2, #1
	cmp r2, #0xf
	bls _0800E20A
	movs r0, #1
_0800E21A:
	pop {r1}
	bx r1
	.align 2, 0
_0800E220: .4byte 0x06015C00

	thumb_func_start sub_0800E224
sub_0800E224: @ 0x0800E224
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
_0800E22A:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0800E1AC
	cmp r0, #0
	bne _0800E23A
	movs r0, #0
	b _0800E242
_0800E23A:
	adds r4, #1
	cmp r4, #5
	bls _0800E22A
	movs r0, #1
_0800E242:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0800E248
sub_0800E248: @ 0x0800E248
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r2, #0
	adds r4, r1, #0
	cmp r4, r5
	bhi _0800E26A
_0800E254:
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_0800E1AC
	cmp r0, #0
	bne _0800E264
	movs r0, #0
	b _0800E26C
_0800E264:
	adds r4, #1
	cmp r4, r5
	bls _0800E254
_0800E26A:
	movs r0, #1
_0800E26C:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0800E274
sub_0800E274: @ 0x0800E274
	push {r4, lr}
	movs r4, #0
_0800E278:
	adds r0, r4, #0
	bl sub_0800E224
	cmp r0, #0
	bne _0800E286
	adds r0, r4, #0
	b _0800E28E
_0800E286:
	adds r4, #1
	cmp r4, #9
	bls _0800E278
	movs r0, #9
_0800E28E:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_0800E294
sub_0800E294: @ 0x0800E294
	push {r4, r5, lr}
	movs r4, #9
	adds r0, #1
	cmp r4, r0
	blo _0800E2B4
	adds r5, r0, #0
_0800E2A0:
	adds r0, r4, #0
	bl sub_0800E224
	cmp r0, #0
	bne _0800E2AE
	adds r0, r4, #0
	b _0800E2B6
_0800E2AE:
	subs r4, #1
	cmp r4, r5
	bhs _0800E2A0
_0800E2B4:
	movs r0, #9
_0800E2B6:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0800E2BC
sub_0800E2BC: @ 0x0800E2BC
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	movs r4, #0
_0800E2C4:
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl sub_0800E248
	cmp r0, #0
	bne _0800E2D6
	adds r0, r4, #0
	b _0800E2DE
_0800E2D6:
	adds r4, #1
	cmp r4, #5
	bls _0800E2C4
	movs r0, #5
_0800E2DE:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_0800E2E4
sub_0800E2E4: @ 0x0800E2E4
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r6, r1, #0
	movs r4, #5
	adds r2, #1
	cmp r4, r2
	blo _0800E30C
	adds r5, r2, #0
_0800E2F4:
	adds r0, r4, #0
	adds r1, r7, #0
	adds r2, r6, #0
	bl sub_0800E248
	cmp r0, #0
	bne _0800E306
	adds r0, r4, #0
	b _0800E30E
_0800E306:
	subs r4, #1
	cmp r4, r5
	bhs _0800E2F4
_0800E30C:
	movs r0, #5
_0800E30E:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0800E314
sub_0800E314: @ 0x0800E314
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	cmp r1, #3
	beq _0800E36A
	cmp r1, #3
	bhi _0800E364
	cmp r1, #1
	blo _0800E37A
	bl sub_0800E274
	adds r6, r0, #0
	bl sub_0800E294
	adds r4, r0, #0
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_0800E2BC
	adds r5, r0, #0
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_0800E2E4
	subs r0, r0, r5
	adds r0, #1
	lsls r0, r0, #2
	movs r1, #0x18
	subs r1, r1, r0
	lsls r5, r5, #3
	subs r1, r1, r5
	strh r1, [r7, #8]
	subs r4, r4, r6
	adds r4, #1
	lsls r4, r4, #2
	movs r0, #0x28
	subs r0, r0, r4
	lsls r6, r6, #3
	subs r0, r0, r6
	b _0800E37E
_0800E364:
	cmp r1, #4
	beq _0800E372
	b _0800E37A
_0800E36A:
	movs r0, #0
	strh r0, [r7, #8]
	movs r0, #0x10
	b _0800E37E
_0800E372:
	movs r0, #8
	strh r0, [r7, #8]
	movs r0, #0x18
	b _0800E37E
_0800E37A:
	movs r0, #0
	strh r0, [r7, #8]
_0800E37E:
	strh r0, [r7, #0xa]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800E388
sub_0800E388: @ 0x0800E388
	push {lr}
	ldr r1, _0800E39C @ =gUnknown_02012810
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #0xc]
	strb r0, [r1, #0xd]
	bl sub_0800DE60
	pop {r0}
	bx r0
	.align 2, 0
_0800E39C: .4byte gUnknown_02012810

	thumb_func_start sub_0800E3A0
sub_0800E3A0: @ 0x0800E3A0
	push {r4, lr}
	ldr r3, _0800E3E8 @ =gUnknown_02012810
	ldrb r0, [r3]
	cmp r0, #0
	beq _0800E3E2
	ldrb r0, [r3, #1]
	cmp r0, #3
	bne _0800E3E2
	ldrb r0, [r3, #0xc]
	adds r0, #1
	movs r1, #0
	strb r0, [r3, #0xc]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #7
	bls _0800E3E2
	strb r1, [r3, #0xc]
	ldrb r0, [r3, #0xd]
	adds r0, #1
	strb r0, [r3, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bls _0800E3D2
	strb r1, [r3, #0xd]
_0800E3D2:
	ldrb r0, [r3, #1]
	movs r2, #4
	ldrsh r1, [r3, r2]
	movs r4, #6
	ldrsh r2, [r3, r4]
	ldrb r3, [r3, #0xd]
	bl sub_0800DE74
_0800E3E2:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800E3E8: .4byte gUnknown_02012810

	thumb_func_start sub_0800E3EC
sub_0800E3EC: @ 0x0800E3EC
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	strb r0, [r4, #0xc]
	strb r0, [r4, #0xd]
	ldrb r0, [r4]
	cmp r0, #0
	beq _0800E416
	ldrb r0, [r4, #1]
	ldrb r1, [r4, #2]
	bl sub_0800E0C0
	ldrb r0, [r4, #1]
	movs r2, #4
	ldrsh r1, [r4, r2]
	movs r3, #6
	ldrsh r2, [r4, r3]
	ldrb r3, [r4, #0xd]
	bl sub_0800DE74
	b _0800E41A
_0800E416:
	bl sub_0800DE60
_0800E41A:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0800E420
sub_0800E420: @ 0x0800E420
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r7, r2, #0
	mov r8, r3
	ldr r4, _0800E464 @ =gUnknown_02012810
	bl sub_0800DDF4
	adds r6, r0, #0
	ldrb r0, [r4]
	cmp r0, #0
	beq _0800E446
	ldrb r0, [r4, #1]
	cmp r5, r0
	bne _0800E446
	ldrb r1, [r4, #2]
	cmp r6, r1
	beq _0800E474
_0800E446:
	bl sub_0800DE60
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_0800E0C0
	ldr r0, [sp, #0x18]
	cmp r0, #0
	beq _0800E468
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0800E314
	b _0800E474
	.align 2, 0
_0800E464: .4byte gUnknown_02012810
_0800E468:
	mov r1, sp
	ldrh r1, [r1, #0x18]
	strh r1, [r4, #0xa]
	mov r0, sp
	ldrh r0, [r0, #0x18]
	strh r0, [r4, #8]
_0800E474:
	movs r1, #8
	ldrsh r0, [r4, r1]
	adds r7, r7, r0
	movs r1, #0xa
	ldrsh r0, [r4, r1]
	add r8, r0
	adds r0, r5, #0
	adds r1, r7, #0
	mov r2, r8
	movs r3, #0
	bl sub_0800DE74
	movs r0, #1
	strb r0, [r4]
	strb r5, [r4, #1]
	strb r6, [r4, #2]
	movs r0, #0
	strh r7, [r4, #4]
	mov r1, r8
	strh r1, [r4, #6]
	strb r0, [r4, #0xc]
	strb r0, [r4, #0xd]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800E4AC
sub_0800E4AC: @ 0x0800E4AC
	push {r4, lr}
	sub sp, #4
	movs r4, #0
	str r4, [sp]
	bl sub_0800E420
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0800E4C0
sub_0800E4C0: @ 0x0800E4C0
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #4
	adds r5, r0, #0
	adds r6, r2, #0
	mov r8, r3
	movs r4, #0
	bl sub_0800FD0C
	adds r1, r0, #0
	str r4, [sp]
	adds r0, r5, #0
	adds r2, r6, #0
	mov r3, r8
	bl sub_0800E420
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800E4F0
sub_0800E4F0: @ 0x0800E4F0
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #4
	adds r5, r0, #0
	adds r6, r2, #0
	mov r8, r3
	movs r4, #1
	bl sub_0800FD0C
	adds r1, r0, #0
	str r4, [sp]
	adds r0, r5, #0
	adds r2, r6, #0
	mov r3, r8
	bl sub_0800E420
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800E520
sub_0800E520: @ 0x0800E520
	push {lr}
	ldr r0, _0800E534 @ =gUnknown_02012810
	movs r1, #0
	strb r1, [r0]
	ldr r0, _0800E538 @ =0x07000018
	movs r1, #6
	bl sub_08000FEC
	pop {r0}
	bx r0
	.align 2, 0
_0800E534: .4byte gUnknown_02012810
_0800E538: .4byte 0x07000018

	thumb_func_start sub_0800E53C
sub_0800E53C: @ 0x0800E53C
	push {lr}
	ldr r0, _0800E554 @ =gUnknown_02012820
	movs r1, #0x44
	movs r2, #0
	bl sub_08000498
	ldr r0, _0800E558 @ =0x070000B0
	movs r1, #8
	bl sub_08000FEC
	pop {r0}
	bx r0
	.align 2, 0
_0800E554: .4byte gUnknown_02012820
_0800E558: .4byte 0x070000B0

	thumb_func_start sub_0800E55C
sub_0800E55C: @ 0x0800E55C
	push {r4, r5, r6, lr}
	adds r4, r2, #0
	ldr r2, [sp, #0x10]
	lsls r0, r0, #3
	ldr r6, _0800E5A0 @ =0x070000B0
	adds r5, r0, r6
	lsls r1, r1, #2
	adds r1, #0x3a
	movs r6, #3
	cmp r2, #0
	beq _0800E574
	movs r6, #2
_0800E574:
	movs r0, #0xff
	ands r3, r0
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r2, #0
	orrs r3, r0
	strh r3, [r5]
	ldr r2, _0800E5A4 @ =0x000001FF
	adds r0, r2, #0
	ands r4, r0
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r2, #0
	orrs r4, r0
	strh r4, [r5, #2]
	lsls r0, r6, #0xa
	lsls r1, r1, #1
	orrs r0, r1
	strh r0, [r5, #4]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800E5A0: .4byte 0x070000B0
_0800E5A4: .4byte 0x000001FF

	thumb_func_start sub_0800E5A8
sub_0800E5A8: @ 0x0800E5A8
	lsls r0, r0, #3
	ldr r1, _0800E5B4 @ =0x070000B0
	adds r0, r0, r1
	movs r1, #0xa0
	strh r1, [r0]
	bx lr
	.align 2, 0
_0800E5B4: .4byte 0x070000B0

	thumb_func_start sub_0800E5B8
sub_0800E5B8: @ 0x0800E5B8
	push {r4, r5, lr}
	ldr r1, _0800E5F4 @ =gUnknown_083E5460
	ldr r5, _0800E5F8 @ =0x050002A0
	adds r0, r5, #0
	movs r2, #0x20
	bl sub_080002C4
	ldr r1, _0800E5FC @ =gUnknown_083E5480
	ldr r5, _0800E600 @ =0x06010E80
	movs r4, #0x80
	lsls r4, r4, #1
	adds r0, r5, #0
	adds r2, r4, #0
	bl sub_08000314
	adds r5, r5, r4
	ldr r1, _0800E604 @ =gUnknown_083E5580
	adds r0, r5, #0
	adds r2, r4, #0
	bl sub_08000314
	adds r5, r5, r4
	ldr r1, _0800E608 @ =gUnknown_083E5680
	adds r0, r5, #0
	adds r2, r4, #0
	bl sub_08000314
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800E5F4: .4byte gUnknown_083E5460
_0800E5F8: .4byte 0x050002A0
_0800E5FC: .4byte gUnknown_083E5480
_0800E600: .4byte 0x06010E80
_0800E604: .4byte gUnknown_083E5580
_0800E608: .4byte gUnknown_083E5680

	thumb_func_start sub_0800E60C
sub_0800E60C: @ 0x0800E60C
	push {r4, r5, lr}
	sub sp, #4
	adds r0, #0x40
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800E61C
	bl sub_0800E5B8
_0800E61C:
	movs r5, #0
_0800E61E:
	lsls r0, r5, #3
	ldr r1, _0800E640 @ =gUnknown_02012820
	adds r4, r0, r1
	ldrb r0, [r4]
	cmp r0, #0
	beq _0800E644
	ldrb r1, [r4, #1]
	movs r0, #2
	ldrsh r2, [r4, r0]
	movs r0, #4
	ldrsh r3, [r4, r0]
	ldrb r0, [r4, #6]
	str r0, [sp]
	adds r0, r5, #0
	bl sub_0800E55C
	b _0800E64A
	.align 2, 0
_0800E640: .4byte gUnknown_02012820
_0800E644:
	adds r0, r5, #0
	bl sub_0800E5A8
_0800E64A:
	adds r5, #1
	cmp r5, #7
	bls _0800E61E
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_0800E658
sub_0800E658: @ 0x0800E658
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	adds r7, r3, #0
	ldr r0, _0800E6B0 @ =gUnknown_0200C1A0
	mov r8, r0
	ldr r0, _0800E6B4 @ =0x000066C0
	add r0, r8
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800E67A
	bl sub_0800E5B8
_0800E67A:
	ldr r1, [sp, #0x1c]
	str r1, [sp]
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	adds r3, r7, #0
	bl sub_0800E55C
	lsls r0, r4, #3
	movs r1, #0xcd
	lsls r1, r1, #7
	add r1, r8
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0]
	strb r5, [r0, #1]
	strh r6, [r0, #2]
	strh r7, [r0, #4]
	mov r2, sp
	ldrb r2, [r2, #0x1c]
	strb r2, [r0, #6]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800E6B0: .4byte gUnknown_0200C1A0
_0800E6B4: .4byte 0x000066C0

	thumb_func_start sub_0800E6B8
sub_0800E6B8: @ 0x0800E6B8
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0800E5A8
	lsls r4, r4, #3
	ldr r0, _0800E6D0 @ =gUnknown_02012820
	adds r4, r4, r0
	movs r0, #0
	strb r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800E6D0: .4byte gUnknown_02012820

	thumb_func_start sub_0800E6D4
sub_0800E6D4: @ 0x0800E6D4
	ldr r0, _0800E6E0 @ =gUnknown_0200C1A0
	ldr r1, _0800E6E4 @ =0x000066C4
	adds r0, r0, r1
	movs r1, #0
	strb r1, [r0]
	bx lr
	.align 2, 0
_0800E6E0: .4byte gUnknown_0200C1A0
_0800E6E4: .4byte 0x000066C4

	thumb_func_start sub_0800E6E8
sub_0800E6E8: @ 0x0800E6E8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0800E704 @ =gUnknown_083E3FC8
	movs r1, #0x37
	adds r2, r4, #0
	bl BinarySearchStr
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0800E708
	adds r0, r1, #0
	b _0800E714
	.align 2, 0
_0800E704: .4byte gUnknown_083E3FC8
_0800E708:
	ldr r0, _0800E71C @ =gUnknown_0831B554
	ldr r2, _0800E720 @ =gUnknown_0831B4F8
	adds r1, r4, #0
	bl sub_080050E4
	movs r0, #0
_0800E714:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0800E71C: .4byte gUnknown_0831B554
_0800E720: .4byte gUnknown_0831B4F8

	thumb_func_start sub_0800E724
sub_0800E724: @ 0x0800E724
	push {r4, lr}
	adds r4, r0, #0
	ldr r3, _0800E748 @ =gUnknown_085A072C
	ldr r0, _0800E74C @ =gUnknown_083E5058
	lsls r2, r2, #2
	adds r2, r2, r0
	ldr r2, [r2]
	adds r2, r2, r3
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r2, r3
	str r2, [r4, #4]
	bl LZ77UnCompWram
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800E748: .4byte gUnknown_085A072C
_0800E74C: .4byte gUnknown_083E5058

	thumb_func_start sub_0800E750
sub_0800E750: @ 0x0800E750
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r4, r1, #0
	adds r6, r2, #0
	mov r8, r3
	ldr r3, _0800E7C8 @ =0x05000100
	movs r5, #0x80
	lsls r5, r5, #1
	ldr r1, [r0, #4]
	adds r0, r3, #0
	adds r2, r5, #0
	bl sub_08000314
	movs r3, #0xc0
	lsls r3, r3, #0x13
	movs r0, #0x1e
	subs r2, r0, r6
	movs r0, #0xd
	mov r1, r8
	subs r1, r0, r1
	mov sb, r1
	movs r7, #0
	cmp r7, r8
	bhs _0800E7A6
	lsls r6, r6, #6
	lsls r5, r2, #6
_0800E78A:
	adds r4, r4, r6
	adds r3, r3, r6
	adds r0, r3, #0
	adds r1, r4, #0
	adds r2, r5, #0
	str r3, [sp]
	bl sub_08000314
	adds r4, r4, r5
	ldr r3, [sp]
	adds r3, r3, r5
	adds r7, #1
	cmp r7, r8
	blo _0800E78A
_0800E7A6:
	mov r1, sb
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r5, r0, #7
	adds r0, r3, #0
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_08000314
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800E7C8: .4byte 0x05000100

	thumb_func_start sub_0800E7CC
sub_0800E7CC: @ 0x0800E7CC
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1]
	cmp r0, #0
	beq _0800E7E2
	ldr r0, _0800E7E8 @ =0x05000100
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r1, [r1, #4]
	bl sub_08000314
_0800E7E2:
	pop {r0}
	bx r0
	.align 2, 0
_0800E7E8: .4byte 0x05000100

	thumb_func_start sub_0800E7EC
sub_0800E7EC: @ 0x0800E7EC
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #8
	adds r6, r0, #0
	mov r8, r1
	mov sb, r2
	bl sub_08011A78
	adds r5, r0, #0
	adds r0, r6, #0
	bl sub_08011AD8
	adds r4, r0, #0
	lsls r4, r4, #1
	movs r0, #0
	movs r1, #1
	rsbs r1, r1, #0
	adds r5, #2
	adds r3, r4, #2
	str r0, [sp]
	str r0, [sp, #4]
	adds r2, r5, #0
	bl sub_08009C50
	mov r0, r8
	str r5, [r0]
	adds r4, #1
	mov r0, sb
	str r4, [r0]
	movs r0, #1
	movs r1, #0
	movs r2, #0
	adds r3, r6, #0
	bl sub_0800D81C
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_0800E844
sub_0800E844: @ 0x0800E844
	push {lr}
	movs r1, #0
	bl sub_0800E850
	pop {r0}
	bx r0

	thumb_func_start sub_0800E850
sub_0800E850: @ 0x0800E850
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r6, r0, #0
	adds r4, r1, #0
	ldr r7, _0800E86C @ =gUnknown_02012864
	bl sub_0800F05C
	ldrb r0, [r6]
	cmp r0, #0
	bne _0800E870
	bl sub_0800E6D4
	b _0800E8D2
	.align 2, 0
_0800E86C: .4byte gUnknown_02012864
_0800E870:
	cmp r4, #0
	beq _0800E87C
	ldrb r0, [r4]
	cmp r0, #0
	bne _0800E87C
	movs r4, #0
_0800E87C:
	movs r1, #0xc3
	lsls r1, r1, #7
	ldr r0, _0800E8B8 @ =gUnknown_02001CC0
	bl sub_0800459C
	adds r5, r0, #0
	adds r0, r6, #0
	bl sub_0800E6E8
	adds r2, r0, #0
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_0800E724
	bl VBlankIntrWait
	cmp r4, #0
	beq _0800E8BC
	add r2, sp, #4
	adds r0, r4, #0
	mov r1, sp
	bl sub_0800E7EC
	ldr r2, [sp]
	ldr r3, [sp, #4]
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_0800E750
	b _0800E8C8
	.align 2, 0
_0800E8B8: .4byte gUnknown_02001CC0
_0800E8BC:
	adds r0, r7, #0
	adds r1, r5, #0
	movs r2, #0
	movs r3, #0
	bl sub_0800E750
_0800E8C8:
	ldr r0, _0800E8DC @ =gUnknown_02001CC0
	bl sub_08004604
	movs r0, #1
	strb r0, [r7]
_0800E8D2:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800E8DC: .4byte gUnknown_02001CC0

	thumb_func_start sub_0800E8E0
sub_0800E8E0: @ 0x0800E8E0
	ldr r0, _0800E8EC @ =gUnknown_0200C1A0
	ldr r1, _0800E8F0 @ =0x000066CC
	adds r0, r0, r1
	movs r1, #0
	strb r1, [r0]
	bx lr
	.align 2, 0
_0800E8EC: .4byte gUnknown_0200C1A0
_0800E8F0: .4byte 0x000066CC

	thumb_func_start sub_0800E8F4
sub_0800E8F4: @ 0x0800E8F4
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0800E910 @ =gUnknown_083E40A4
	movs r1, #0x1e
	adds r2, r4, #0
	bl BinarySearchStr
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0800E914
	adds r0, r1, #0
	b _0800E920
	.align 2, 0
_0800E910: .4byte gUnknown_083E40A4
_0800E914:
	ldr r0, _0800E928 @ =gUnknown_0831B560
	ldr r2, _0800E92C @ =gUnknown_0831B4F8
	adds r1, r4, #0
	bl sub_080050E4
	movs r0, #0
_0800E920:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0800E928: .4byte gUnknown_0831B560
_0800E92C: .4byte gUnknown_0831B4F8

	thumb_func_start sub_0800E930
sub_0800E930: @ 0x0800E930
	push {r4, lr}
	adds r4, r0, #0
	ldr r3, _0800E954 @ =gUnknown_0864C180
	ldr r0, _0800E958 @ =gUnknown_083E5134
	lsls r2, r2, #2
	adds r2, r2, r0
	ldr r2, [r2]
	adds r2, r2, r3
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r2, r3
	str r2, [r4, #4]
	bl LZ77UnCompWram
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800E954: .4byte gUnknown_0864C180
_0800E958: .4byte gUnknown_083E5134

	thumb_func_start sub_0800E95C
sub_0800E95C: @ 0x0800E95C
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r7, r1, #0
	adds r5, r2, #0
	adds r4, r3, #0
	ldr r6, _0800E9B4 @ =0x05000100
	movs r3, #0x80
	lsls r3, r3, #1
	ldr r1, [r0, #4]
	adds r0, r6, #0
	adds r2, r3, #0
	bl sub_08000314
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #1
	adds r0, r0, r5
	lsls r0, r0, #6
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r6, r0, r1
	movs r5, #0xa
	movs r3, #0xe0
	lsls r3, r3, #2
	movs r4, #0
_0800E98E:
	adds r0, r6, #0
	adds r1, r7, #0
	adds r2, r3, #0
	str r3, [sp]
	bl sub_08000314
	movs r0, #0xf0
	lsls r0, r0, #3
	adds r6, r6, r0
	ldr r3, [sp]
	adds r7, r7, r3
	adds r4, #1
	cmp r4, r5
	blo _0800E98E
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800E9B4: .4byte 0x05000100

	thumb_func_start sub_0800E9B8
sub_0800E9B8: @ 0x0800E9B8
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1]
	cmp r0, #0
	beq _0800E9CE
	ldr r0, _0800E9D4 @ =0x05000100
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r1, [r1, #4]
	bl sub_08000314
_0800E9CE:
	pop {r0}
	bx r0
	.align 2, 0
_0800E9D4: .4byte 0x05000100

	thumb_func_start sub_0800E9D8
sub_0800E9D8: @ 0x0800E9D8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov r8, r0
	adds r7, r1, #0
	adds r5, r2, #0
	ldr r6, _0800EA44 @ =gUnknown_0201286C
	adds r0, r7, #0
	adds r0, #0xe
	cmp r0, #0x1e
	bhi _0800E9F8
	adds r0, r5, #0
	adds r0, #0xa
	cmp r0, #0x14
	bls _0800E9FE
_0800E9F8:
	ldr r0, _0800EA48 @ =gUnknown_0831B56C
	bl sub_080050A8
_0800E9FE:
	movs r0, #0xa
	lsls r0, r0, #6
	movs r1, #0xe
	muls r1, r0, r1
	ldr r0, _0800EA4C @ =gUnknown_02001CC0
	mov sb, r0
	bl sub_0800459C
	adds r4, r0, #0
	mov r0, r8
	bl sub_0800E8F4
	adds r2, r0, #0
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_0800E930
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r7, #0
	adds r3, r5, #0
	bl sub_0800E95C
	mov r0, sb
	bl sub_08004604
	movs r0, #1
	strb r0, [r6]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800EA44: .4byte gUnknown_0201286C
_0800EA48: .4byte gUnknown_0831B56C
_0800EA4C: .4byte gUnknown_02001CC0

	thumb_func_start sub_0800EA50
sub_0800EA50: @ 0x0800EA50
	ldr r0, _0800EA5C @ =gUnknown_0200C1A0
	ldr r1, _0800EA60 @ =0x000066D4
	adds r0, r0, r1
	movs r1, #0
	strb r1, [r0]
	bx lr
	.align 2, 0
_0800EA5C: .4byte gUnknown_0200C1A0
_0800EA60: .4byte 0x000066D4

	thumb_func_start sub_0800EA64
sub_0800EA64: @ 0x0800EA64
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0800EA80 @ =gUnknown_083E41B4
	movs r1, #0x2d
	adds r2, r4, #0
	bl BinarySearchStr
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0800EA84
	adds r0, r1, #0
	b _0800EA90
	.align 2, 0
_0800EA80: .4byte gUnknown_083E41B4
_0800EA84:
	ldr r0, _0800EA98 @ =gUnknown_0831B58C
	ldr r2, _0800EA9C @ =gUnknown_0831B4F8
	adds r1, r4, #0
	bl sub_080050E4
	movs r0, #0
_0800EA90:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0800EA98: .4byte gUnknown_0831B58C
_0800EA9C: .4byte gUnknown_0831B4F8

	thumb_func_start sub_0800EAA0
sub_0800EAA0: @ 0x0800EAA0
	push {r4, lr}
	adds r4, r0, #0
	ldr r3, _0800EAC4 @ =gUnknown_0866F730
	ldr r0, _0800EAC8 @ =gUnknown_083E53AC
	lsls r2, r2, #2
	adds r2, r2, r0
	ldr r2, [r2]
	adds r2, r2, r3
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r2, r3
	str r2, [r4, #4]
	bl LZ77UnCompWram
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800EAC4: .4byte gUnknown_0866F730
_0800EAC8: .4byte gUnknown_083E53AC

	thumb_func_start sub_0800EACC
sub_0800EACC: @ 0x0800EACC
	push {lr}
	ldr r1, [r0, #4]
	ldr r0, _0800EAE0 @ =0x05000100
	movs r2, #0x80
	lsls r2, r2, #1
	bl sub_08000314
	pop {r0}
	bx r0
	.align 2, 0
_0800EAE0: .4byte 0x05000100

	thumb_func_start sub_0800EAE4
sub_0800EAE4: @ 0x0800EAE4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r1, #0
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #0x1c]
	mov r8, r0
	lsls r0, r3, #4
	subs r0, r0, r3
	lsls r0, r0, #1
	adds r0, r0, r2
	lsls r0, r0, #6
	movs r2, #0xc0
	lsls r2, r2, #0x13
	adds r4, r0, r2
	lsls r6, r1, #6
	movs r5, #0
	cmp r5, r8
	bhs _0800EB22
_0800EB0A:
	adds r0, r4, #0
	adds r1, r7, #0
	adds r2, r6, #0
	bl sub_08000314
	movs r0, #0xf0
	lsls r0, r0, #3
	adds r4, r4, r0
	adds r7, r7, r6
	adds r5, #1
	cmp r5, r8
	blo _0800EB0A
_0800EB22:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0800EB2C
sub_0800EB2C: @ 0x0800EB2C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sb, r1
	str r2, [sp]
	str r3, [sp, #4]
	movs r0, #0x80
	mov r8, r0
	mov r1, r8
	lsls r1, r1, #0x10
	mov sl, r1
	movs r5, #0x80
	lsls r5, r5, #0x18
	orrs r5, r1
	movs r0, #0x80
	lsls r0, r0, #8
	orrs r5, r0
	mov r1, r8
	orrs r5, r1
	movs r2, #0
	ldr r0, [sp, #0x2c]
	cmp r2, r0
	bhs _0800EBEC
	ldr r0, [sp, #0x28]
	lsls r7, r0, #4
_0800EB64:
	ldr r0, [sp, #4]
	adds r1, r0, r2
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #1
	ldr r1, [sp]
	adds r0, r0, r1
	lsls r0, r0, #6
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r4, r0, r1
	movs r6, #0
	adds r2, #1
	mov ip, r2
	cmp r6, r7
	bhs _0800EBE4
_0800EB84:
	mov r0, sb
	adds r0, #4
	mov sb, r0
	subs r0, #4
	ldm r0!, {r3}
	cmp r3, r5
	beq _0800EBDC
	ldr r1, [r4]
	movs r2, #0xff
	ands r2, r3
	cmp r2, r8
	beq _0800EBA2
	ldr r0, _0800EBFC @ =0xFFFFFF00
	ands r1, r0
	orrs r1, r2
_0800EBA2:
	movs r2, #0xff
	lsls r2, r2, #8
	ands r2, r3
	movs r0, #0x80
	lsls r0, r0, #8
	cmp r2, r0
	beq _0800EBB6
	ldr r0, _0800EC00 @ =0xFFFF00FF
	ands r1, r0
	orrs r1, r2
_0800EBB6:
	movs r2, #0xff
	lsls r2, r2, #0x10
	ands r2, r3
	cmp r2, sl
	beq _0800EBC6
	ldr r0, _0800EC04 @ =0xFF00FFFF
	ands r1, r0
	orrs r1, r2
_0800EBC6:
	movs r2, #0xff
	lsls r2, r2, #0x18
	ands r2, r3
	movs r0, #0x80
	lsls r0, r0, #0x18
	cmp r2, r0
	beq _0800EBDA
	ldr r0, _0800EC08 @ =0x00FFFFFF
	ands r1, r0
	orrs r1, r2
_0800EBDA:
	str r1, [r4]
_0800EBDC:
	adds r4, #4
	adds r6, #1
	cmp r6, r7
	blo _0800EB84
_0800EBE4:
	mov r2, ip
	ldr r1, [sp, #0x2c]
	cmp r2, r1
	blo _0800EB64
_0800EBEC:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800EBFC: .4byte 0xFFFFFF00
_0800EC00: .4byte 0xFFFF00FF
_0800EC04: .4byte 0xFF00FFFF
_0800EC08: .4byte 0x00FFFFFF

	thumb_func_start sub_0800EC0C
sub_0800EC0C: @ 0x0800EC0C
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1]
	cmp r0, #0
	beq _0800EC22
	ldr r0, _0800EC28 @ =0x05000100
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r1, [r1, #4]
	bl sub_08000314
_0800EC22:
	pop {r0}
	bx r0
	.align 2, 0
_0800EC28: .4byte 0x05000100

	thumb_func_start sub_0800EC2C
sub_0800EC2C: @ 0x0800EC2C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	mov r8, r1
	mov sb, r2
	str r3, [sp, #8]
	ldr r1, _0800ECB4 @ =gUnknown_02012874
	mov sl, r1
	bl sub_0800EA64
	adds r5, r0, #0
	ldr r1, _0800ECB8 @ =gUnknown_083E5244
	lsls r0, r5, #3
	adds r0, r0, r1
	ldr r7, [r0]
	lsls r0, r5, #1
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r6, [r0]
	mov r1, r8
	adds r0, r1, r7
	cmp r0, #0x1e
	bhi _0800EC6A
	mov r1, sb
	adds r0, r1, r6
	cmp r0, #0x14
	bls _0800EC70
_0800EC6A:
	ldr r0, _0800ECBC @ =gUnknown_0831B59C
	bl sub_080050A8
_0800EC70:
	lsls r0, r6, #6
	adds r1, r7, #0
	muls r1, r0, r1
	ldr r0, _0800ECC0 @ =gUnknown_02001CC0
	bl sub_0800459C
	adds r4, r0, #0
	mov r0, sl
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_0800EAA0
	ldr r0, _0800ECC4 @ =gUnknown_0200C1A0
	ldr r1, _0800ECC8 @ =0x000068B9
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800EC9A
	mov r0, sl
	bl sub_0800EACC
_0800EC9A:
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _0800ECCC
	str r7, [sp]
	str r6, [sp, #4]
	mov r0, sl
	adds r1, r4, #0
	mov r2, r8
	mov r3, sb
	bl sub_0800EB2C
	b _0800ECDC
	.align 2, 0
_0800ECB4: .4byte gUnknown_02012874
_0800ECB8: .4byte gUnknown_083E5244
_0800ECBC: .4byte gUnknown_0831B59C
_0800ECC0: .4byte gUnknown_02001CC0
_0800ECC4: .4byte gUnknown_0200C1A0
_0800ECC8: .4byte 0x000068B9
_0800ECCC:
	str r7, [sp]
	str r6, [sp, #4]
	mov r0, sl
	adds r1, r4, #0
	mov r2, r8
	mov r3, sb
	bl sub_0800EAE4
_0800ECDC:
	ldr r0, _0800ECF8 @ =gUnknown_02001CC0
	bl sub_08004604
	movs r0, #1
	mov r1, sl
	strb r0, [r1]
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800ECF8: .4byte gUnknown_02001CC0

	thumb_func_start sub_0800ECFC
sub_0800ECFC: @ 0x0800ECFC
	push {lr}
	movs r3, #0
	bl sub_0800EC2C
	pop {r0}
	bx r0

	thumb_func_start sub_0800ED08
sub_0800ED08: @ 0x0800ED08
	push {lr}
	movs r3, #1
	bl sub_0800EC2C
	pop {r0}
	bx r0

	thumb_func_start sub_0800ED14
sub_0800ED14: @ 0x0800ED14
	push {r4, lr}
	adds r4, r0, #0
	cmp r4, #2
	bls _0800ED22
	ldr r0, _0800ED34 @ =gUnknown_0831B5BC
	bl sub_080050A8
_0800ED22:
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #2
	ldr r1, _0800ED38 @ =gUnknown_083E7CDC
	adds r0, r0, r1
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0800ED34: .4byte gUnknown_0831B5BC
_0800ED38: .4byte gUnknown_083E7CDC

	thumb_func_start sub_0800ED3C
sub_0800ED3C: @ 0x0800ED3C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r2, [r4, #4]
	ldrb r0, [r4, #2]
	lsls r0, r0, #1
	movs r1, #0xa0
	lsls r1, r1, #0x13
	adds r1, r0, r1
	adds r0, r1, #0
	adds r1, r2, #0
	movs r2, #0x40
	bl sub_080002C4
	ldr r2, [r4, #8]
	ldr r1, _0800ED78 @ =0x06009600
	adds r0, r2, #0
	bl LZ77UnCompVram
	movs r5, #0x96
	lsls r5, r5, #2
	movs r3, #0
	ldrb r0, [r4, #1]
	cmp r3, r0
	bhs _0800ED96
	ldr r6, _0800ED7C @ =0x0600E800
_0800ED6E:
	lsls r0, r3, #6
	adds r1, r0, r6
	movs r2, #0
	adds r0, r3, #1
	b _0800ED88
	.align 2, 0
_0800ED78: .4byte 0x06009600
_0800ED7C: .4byte 0x0600E800
_0800ED80:
	strh r5, [r1]
	adds r1, #2
	adds r5, #1
	adds r2, #1
_0800ED88:
	ldrb r3, [r4]
	cmp r2, r3
	blo _0800ED80
	adds r3, r0, #0
	ldrb r0, [r4, #1]
	cmp r3, r0
	blo _0800ED6E
_0800ED96:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_0800ED9C
sub_0800ED9C: @ 0x0800ED9C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	adds r4, r1, #0
	adds r5, r2, #0
	ldr r6, [sp, #0x18]
	ldr r1, _0800EE5C @ =REG_BG2HOFS
	rsbs r0, r4, #0
	ldr r7, _0800EE60 @ =0x000001FF
	adds r2, r7, #0
	ands r0, r2
	strh r0, [r1]
	adds r1, #2
	rsbs r0, r5, #0
	ands r0, r2
	strh r0, [r1]
	movs r1, #0
	cmp r1, r4
	bge _0800EDC6
	adds r1, r4, #0
_0800EDC6:
	movs r0, #0xf0
	mov ip, r0
	cmp ip, r1
	ble _0800EDD0
	mov ip, r1
_0800EDD0:
	movs r2, #0
	cmp r2, r5
	bge _0800EDD8
	adds r2, r5, #0
_0800EDD8:
	movs r7, #0xa0
	cmp r7, r2
	ble _0800EDE0
	adds r7, r2, #0
_0800EDE0:
	adds r1, r4, r3
	movs r0, #0
	cmp r0, r1
	bge _0800EDEA
	adds r0, r1, #0
_0800EDEA:
	movs r2, #0xf0
	cmp r2, r0
	ble _0800EDF2
	adds r2, r0, #0
_0800EDF2:
	adds r0, r5, r6
	movs r1, #0
	cmp r1, r0
	bge _0800EDFC
	adds r1, r0, #0
_0800EDFC:
	movs r0, #0xa0
	cmp r0, r1
	ble _0800EE04
	adds r0, r1, #0
_0800EE04:
	mov r1, ip
	subs r3, r2, r1
	subs r6, r0, r7
	mov r0, ip
	adds r1, r7, #0
	adds r2, r3, #0
	adds r3, r6, #0
	bl sub_08000E98
	mov r2, r8
	cmp r2, #0
	bne _0800EE50
	ldr r1, _0800EE64 @ =REG_BG2CNT
	ldr r7, _0800EE68 @ =0x00001D81
	adds r0, r7, #0
	strh r0, [r1]
	adds r1, #0x3c
	movs r0, #0x1f
	strh r0, [r1]
	adds r1, #2
	movs r0, #0x1b
	strh r0, [r1]
	ldr r0, _0800EE6C @ =gUnknown_02001D0C
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800EE3C
	bl VBlankIntrWait
_0800EE3C:
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r1, [r2]
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	strh r0, [r2]
_0800EE50:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800EE5C: .4byte REG_BG2HOFS
_0800EE60: .4byte 0x000001FF
_0800EE64: .4byte REG_BG2CNT
_0800EE68: .4byte 0x00001D81
_0800EE6C: .4byte gUnknown_02001D0C

	thumb_func_start sub_0800EE70
sub_0800EE70: @ 0x0800EE70
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r1, [r2]
	ldr r0, _0800EE84 @ =0xFFFFFBFF
	ands r0, r1
	ldr r1, _0800EE88 @ =0xFFFFDFFF
	ands r0, r1
	strh r0, [r2]
	bx lr
	.align 2, 0
_0800EE84: .4byte 0xFFFFFBFF
_0800EE88: .4byte 0xFFFFDFFF

	thumb_func_start sub_0800EE8C
sub_0800EE8C: @ 0x0800EE8C
	push {lr}
	ldr r1, _0800EE9C @ =gUnknown_0201287C
	movs r0, #0
	strb r0, [r1]
	bl sub_0800EE70
	pop {r0}
	bx r0
	.align 2, 0
_0800EE9C: .4byte gUnknown_0201287C

	thumb_func_start sub_0800EEA0
sub_0800EEA0: @ 0x0800EEA0
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldrb r0, [r4]
	cmp r0, #0
	beq _0800EEC8
	ldr r0, [r4, #8]
	bl sub_0800ED3C
	movs r0, #2
	ldrsh r1, [r4, r0]
	movs r0, #4
	ldrsh r2, [r4, r0]
	ldrh r3, [r4, #0xc]
	ldrh r0, [r4, #0xe]
	str r0, [sp]
	movs r0, #0
	bl sub_0800ED9C
	b _0800EECC
_0800EEC8:
	bl sub_0800EE70
_0800EECC:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0800EED4
sub_0800EED4: @ 0x0800EED4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r6, r0, #0
	adds r7, r1, #0
	mov r8, r2
	ldr r4, _0800EF00 @ =gUnknown_0201287C
	ldrb r0, [r4]
	cmp r0, #0
	beq _0800EF04
	ldrh r3, [r4, #0xc]
	ldrh r0, [r4, #0xe]
	str r0, [sp]
	movs r0, #1
	bl sub_0800ED9C
	strh r7, [r4, #2]
	mov r0, r8
	strh r0, [r4, #4]
	b _0800EF66
	.align 2, 0
_0800EF00: .4byte gUnknown_0201287C
_0800EF04:
	adds r0, r6, #0
	bl sub_0800ED14
	adds r5, r0, #0
	movs r0, #1
	mov sb, r0
	mov r0, sb
	strb r0, [r4]
	strb r6, [r4, #1]
	movs r1, #0
	strh r7, [r4, #2]
	mov r0, r8
	strh r0, [r4, #4]
	str r5, [r4, #8]
	ldrb r0, [r5]
	lsls r0, r0, #3
	strh r0, [r4, #0xc]
	ldrb r0, [r5, #1]
	lsls r0, r0, #3
	strh r0, [r4, #0xe]
	adds r6, r4, #0
	adds r6, #0x50
	strb r1, [r6]
	ldrb r0, [r5, #2]
	cmp r0, #0x30
	bne _0800EF50
	adds r1, r0, #0
	lsls r1, r1, #1
	movs r0, #0xa0
	lsls r0, r0, #0x13
	adds r1, r1, r0
	adds r0, r4, #0
	adds r0, #0x10
	movs r2, #0x40
	bl sub_080002C4
	mov r0, sb
	strb r0, [r6]
_0800EF50:
	adds r0, r5, #0
	bl sub_0800ED3C
	ldrh r3, [r4, #0xc]
	ldrh r0, [r4, #0xe]
	str r0, [sp]
	movs r0, #0
	adds r1, r7, #0
	mov r2, r8
	bl sub_0800ED9C
_0800EF66:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0800EF74
sub_0800EF74: @ 0x0800EF74
	push {r4, r5, lr}
	ldr r4, _0800EFB0 @ =gUnknown_0201287C
	ldrb r0, [r4]
	cmp r0, #0
	beq _0800EFA8
	adds r5, r4, #0
	adds r5, #0x50
	ldrb r0, [r5]
	cmp r0, #0
	beq _0800EF9E
	ldr r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x10
	ldrb r0, [r0, #2]
	lsls r0, r0, #1
	movs r2, #0xa0
	lsls r2, r2, #0x13
	adds r0, r0, r2
	movs r2, #0x40
	bl sub_080002C4
_0800EF9E:
	movs r0, #0
	strb r0, [r4]
	strb r0, [r5]
	bl sub_0800EE70
_0800EFA8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800EFB0: .4byte gUnknown_0201287C

	thumb_func_start sub_0800EFB4
sub_0800EFB4: @ 0x0800EFB4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x100
	adds r6, r0, #0
	adds r4, r1, #0
	movs r7, #0
	b _0800EFDA
_0800EFC0:
	cmp r7, #0x2e
	bls _0800EFD4
	mov r0, sp
	ldr r1, _0800EFF0 @ =gUnknown_0831B5DC
	adds r2, r4, #0
	bl sprintf
	mov r0, sp
	bl sub_080050A8
_0800EFD4:
	strb r5, [r6]
	adds r6, #1
	adds r7, #1
_0800EFDA:
	ldrb r5, [r4]
	adds r4, #1
	cmp r5, #0
	bne _0800EFC0
	movs r0, #0
	strb r0, [r6]
	add sp, #0x100
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800EFF0: .4byte gUnknown_0831B5DC

	thumb_func_start sub_0800EFF4
sub_0800EFF4: @ 0x0800EFF4
	push {lr}
	ldr r0, _0800F004 @ =gUnknown_0200C4FC
	movs r1, #0xc4
	movs r2, #0
	bl sub_08000498
	pop {r0}
	bx r0
	.align 2, 0
_0800F004: .4byte gUnknown_0200C4FC

	thumb_func_start sub_0800F008
sub_0800F008: @ 0x0800F008
	push {r4, r5, lr}
	adds r2, r0, #0
	adds r5, r1, #0
	ldr r4, _0800F024 @ =gUnknown_0200C4FC
	adds r0, r4, #0
	adds r1, r2, #0
	bl sub_0800EFB4
	adds r4, #0x30
	strb r5, [r4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800F024: .4byte gUnknown_0200C4FC

	thumb_func_start sub_0800F028
sub_0800F028: @ 0x0800F028
	ldr r0, _0800F034 @ =gUnknown_0200C4FC
	movs r1, #0
	strb r1, [r0]
	adds r0, #0x30
	strb r1, [r0]
	bx lr
	.align 2, 0
_0800F034: .4byte gUnknown_0200C4FC

	thumb_func_start sub_0800F038
sub_0800F038: @ 0x0800F038
	push {lr}
	adds r1, r0, #0
	ldr r0, _0800F048 @ =gUnknown_0200C4FC
	adds r0, #0x31
	bl sub_0800EFB4
	pop {r0}
	bx r0
	.align 2, 0
_0800F048: .4byte gUnknown_0200C4FC

	thumb_func_start sub_0800F04C
sub_0800F04C: @ 0x0800F04C
	ldr r0, _0800F058 @ =gUnknown_0200C4FC
	adds r0, #0x31
	movs r1, #0
	strb r1, [r0]
	bx lr
	.align 2, 0
_0800F058: .4byte gUnknown_0200C4FC

	thumb_func_start sub_0800F05C
sub_0800F05C: @ 0x0800F05C
	push {r4, r5, lr}
	adds r2, r0, #0
	adds r4, r1, #0
	ldr r5, _0800F080 @ =gUnknown_0200C4FC
	adds r0, r5, #0
	adds r0, #0x61
	adds r1, r2, #0
	bl sub_0800EFB4
	cmp r4, #0
	beq _0800F084
	adds r0, r5, #0
	adds r0, #0x91
	adds r1, r4, #0
	bl sub_0800EFB4
	b _0800F08A
	.align 2, 0
_0800F080: .4byte gUnknown_0200C4FC
_0800F084:
	adds r0, r5, #0
	adds r0, #0x91
	strb r4, [r0]
_0800F08A:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_0800F090
sub_0800F090: @ 0x0800F090
	push {r4, lr}
	ldr r4, _0800F0BC @ =gUnknown_0200C4FC
	adds r0, r4, #0
	adds r0, #0x30
	ldrb r1, [r0]
	adds r0, r4, #0
	bl sub_0800D9D4
	adds r0, r4, #0
	adds r0, #0x31
	bl sub_0800DCE8
	adds r0, r4, #0
	adds r0, #0x61
	adds r4, #0x91
	adds r1, r4, #0
	bl sub_0800E850
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800F0BC: .4byte gUnknown_0200C4FC

	thumb_func_start sub_0800F0C0
sub_0800F0C0: @ 0x0800F0C0
	push {lr}
	adds r0, r1, #0
	bl sub_080059C4
	pop {r0}
	bx r0

	thumb_func_start sub_0800F0CC
sub_0800F0CC: @ 0x0800F0CC
	push {r4, lr}
	adds r2, r0, #0
	ldrb r0, [r2, #1]
	cmp r0, #0
	bne _0800F0FC
	cmp r1, #0
	beq _0800F112
	movs r0, #1
	strb r0, [r2, #1]
	ldr r4, _0800F0F8 @ =0x05000100
	adds r0, r2, #0
	adds r0, #8
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r4, #0
	bl sub_080002C4
	adds r0, r4, #0
	movs r1, #0x80
	bl sub_08005964
	b _0800F112
	.align 2, 0
_0800F0F8: .4byte 0x05000100
_0800F0FC:
	cmp r1, #0
	bne _0800F112
	strb r1, [r2, #1]
	adds r4, r2, #0
	adds r4, #8
	ldr r0, _0800F118 @ =0x05000100
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r4, #0
	bl sub_080002C4
_0800F112:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800F118: .4byte 0x05000100

	thumb_func_start sub_0800F11C
sub_0800F11C: @ 0x0800F11C
	push {r4, lr}
	adds r2, r0, #0
	ldrb r0, [r2, #2]
	cmp r0, #0
	bne _0800F14C
	cmp r1, #0
	beq _0800F162
	movs r0, #1
	strb r0, [r2, #2]
	ldr r4, _0800F148 @ =0x05000300
	movs r1, #0x84
	lsls r1, r1, #1
	adds r0, r2, r1
	adds r1, r4, #0
	movs r2, #0x40
	bl sub_080002C4
	adds r0, r4, #0
	movs r1, #0x20
	bl sub_08005964
	b _0800F162
	.align 2, 0
_0800F148: .4byte 0x05000300
_0800F14C:
	cmp r1, #0
	bne _0800F162
	strb r1, [r2, #2]
	movs r0, #0x84
	lsls r0, r0, #1
	adds r4, r2, r0
	ldr r0, _0800F168 @ =0x05000300
	adds r1, r4, #0
	movs r2, #0x40
	bl sub_080002C4
_0800F162:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800F168: .4byte 0x05000300

	thumb_func_start sub_0800F16C
sub_0800F16C: @ 0x0800F16C
	push {r4, lr}
	adds r2, r0, #0
	ldrb r0, [r2, #3]
	cmp r0, #0
	bne _0800F19C
	cmp r1, #0
	beq _0800F1B2
	movs r0, #1
	strb r0, [r2, #3]
	ldr r4, _0800F198 @ =0x050002C0
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r2, r1
	adds r1, r4, #0
	movs r2, #0x40
	bl sub_080002C4
	adds r0, r4, #0
	movs r1, #0x20
	bl sub_08005964
	b _0800F1B2
	.align 2, 0
_0800F198: .4byte 0x050002C0
_0800F19C:
	cmp r1, #0
	bne _0800F1B2
	strb r1, [r2, #3]
	movs r0, #0xa4
	lsls r0, r0, #1
	adds r4, r2, r0
	ldr r0, _0800F1B8 @ =0x050002C0
	adds r1, r4, #0
	movs r2, #0x40
	bl sub_080002C4
_0800F1B2:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800F1B8: .4byte 0x050002C0

	thumb_func_start sub_0800F1BC
sub_0800F1BC: @ 0x0800F1BC
	push {r4, lr}
	movs r1, #0
	ldr r4, _0800F1DC @ =gUnknown_020128D0
	movs r2, #0
	ldr r3, _0800F1E0 @ =gUnknown_0200C188
_0800F1C6:
	adds r0, r1, r4
	strb r2, [r0]
	adds r0, r1, r3
	strb r2, [r0]
	adds r1, #1
	cmp r1, #3
	bls _0800F1C6
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800F1DC: .4byte gUnknown_020128D0
_0800F1E0: .4byte gUnknown_0200C188

	thumb_func_start sub_0800F1E4
sub_0800F1E4: @ 0x0800F1E4
	push {lr}
	ldr r1, _0800F218 @ =gUnknown_020128D0
	ldr r3, _0800F21C @ =gUnknown_0200C188
	movs r2, #0
	adds r0, r1, #0
	subs r0, #0xcc
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800F1FC
	ldrb r0, [r1, #2]
	rsbs r0, r0, #0
	lsrs r2, r0, #0x1f
_0800F1FC:
	strb r2, [r3, #2]
	movs r2, #0
	adds r0, r1, #0
	subs r0, #0xc4
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800F210
	ldrb r0, [r1, #3]
	rsbs r0, r0, #0
	lsrs r2, r0, #0x1f
_0800F210:
	strb r2, [r3, #3]
	pop {r0}
	bx r0
	.align 2, 0
_0800F218: .4byte gUnknown_020128D0
_0800F21C: .4byte gUnknown_0200C188

	thumb_func_start sub_0800F220
sub_0800F220: @ 0x0800F220
	push {r4, lr}
	ldr r4, _0800F248 @ =gUnknown_0200C188
	ldrb r0, [r4, #2]
	cmp r0, #0
	beq _0800F232
	ldr r0, _0800F24C @ =0x05000300
	movs r1, #0x20
	bl sub_08005964
_0800F232:
	ldrb r0, [r4, #3]
	cmp r0, #0
	beq _0800F240
	ldr r0, _0800F250 @ =0x050002C0
	movs r1, #0x20
	bl sub_08005964
_0800F240:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800F248: .4byte gUnknown_0200C188
_0800F24C: .4byte 0x05000300
_0800F250: .4byte 0x050002C0

	thumb_func_start sub_0800F254
sub_0800F254: @ 0x0800F254
	push {lr}
	ldr r2, _0800F270 @ =gUnknown_020128D0
	cmp r0, #1
	beq _0800F280
	cmp r0, #1
	blo _0800F278
	cmp r0, #2
	beq _0800F288
	cmp r0, #3
	beq _0800F290
	ldr r0, _0800F274 @ =gUnknown_0831B5F4
	bl sub_080050A8
	b _0800F296
	.align 2, 0
_0800F270: .4byte gUnknown_020128D0
_0800F274: .4byte gUnknown_0831B5F4
_0800F278:
	adds r0, r2, #0
	bl sub_0800F0C0
	b _0800F296
_0800F280:
	adds r0, r2, #0
	bl sub_0800F0CC
	b _0800F296
_0800F288:
	adds r0, r2, #0
	bl sub_0800F11C
	b _0800F296
_0800F290:
	adds r0, r2, #0
	bl sub_0800F16C
_0800F296:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800F29C
sub_0800F29C: @ 0x0800F29C
	push {r4, lr}
	adds r3, r0, #0
	adds r4, r1, #0
	strb r4, [r3]
	cmp r4, #0
	bne _0800F2C4
	movs r2, #2
	strb r2, [r3, #2]
	movs r0, #0xc0
	strb r0, [r3, #3]
	movs r1, #0x10
	strb r1, [r3, #5]
	strb r4, [r3, #7]
	movs r0, #0xf0
	strb r0, [r3, #4]
	strb r1, [r3, #6]
	movs r0, #1
	strb r0, [r3, #8]
	strb r2, [r3, #9]
	strb r1, [r3, #0xa]
_0800F2C4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800F2CC
sub_0800F2CC: @ 0x0800F2CC
	push {r4, lr}
	adds r4, r1, #0
	adds r1, r0, #3
	adds r1, r1, r4
	ldrb r1, [r1]
	lsls r1, r1, #1
	movs r2, #0xa0
	lsls r2, r2, #0x13
	adds r1, r1, r2
	lsls r3, r4, #5
	adds r3, #0xc
	adds r3, r0, r3
	adds r0, #5
	adds r0, r0, r4
	ldrb r2, [r0]
	lsls r2, r2, #1
	adds r0, r3, #0
	bl sub_080002C4
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0800F2F8
sub_0800F2F8: @ 0x0800F2F8
	push {r4, lr}
	adds r4, r1, #0
	lsls r1, r4, #5
	adds r1, #0xc
	adds r1, r0, r1
	adds r2, r0, #3
	adds r2, r2, r4
	ldrb r3, [r2]
	lsls r3, r3, #1
	movs r2, #0xa0
	lsls r2, r2, #0x13
	adds r3, r3, r2
	adds r0, #5
	adds r0, r0, r4
	ldrb r2, [r0]
	lsls r2, r2, #1
	adds r0, r3, #0
	bl sub_080002C4
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0800F324
sub_0800F324: @ 0x0800F324
	push {r4, r5, r6, r7, lr}
	adds r3, r0, #0
	lsls r0, r1, #5
	adds r0, #0xc
	adds r0, r0, r3
	mov ip, r0
	adds r0, r3, #3
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #1
	movs r2, #0xa0
	lsls r2, r2, #0x13
	adds r6, r0, r2
	adds r0, r3, #5
	adds r0, r0, r1
	ldrb r4, [r0]
	adds r0, r3, #7
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800F374
	movs r2, #0
	cmp r2, r4
	bhs _0800F398
	adds r7, r3, #0
	adds r7, #0x4d
	subs r5, r4, #1
	mov r3, ip
_0800F35C:
	ldrb r0, [r7]
	adds r0, r2, r0
	ands r0, r5
	lsls r0, r0, #1
	adds r0, r0, r6
	ldrh r1, [r3]
	strh r1, [r0]
	adds r3, #2
	adds r2, #1
	cmp r2, r4
	blo _0800F35C
	b _0800F398
_0800F374:
	movs r2, #0
	cmp r2, r4
	bhs _0800F398
	adds r7, r3, #0
	adds r7, #0x4d
	subs r5, r4, #1
	mov r3, ip
_0800F382:
	ldrb r0, [r7]
	subs r0, r2, r0
	ands r0, r5
	lsls r0, r0, #1
	adds r0, r0, r6
	ldrh r1, [r3]
	strh r1, [r0]
	adds r3, #2
	adds r2, #1
	cmp r2, r4
	blo _0800F382
_0800F398:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800F3A0
sub_0800F3A0: @ 0x0800F3A0
	push {lr}
	ldr r1, _0800F3B0 @ =sub_0800F3EC
	cmp r0, #0
	beq _0800F3B4
	adds r0, r1, #0
	bl sub_080008FC
	b _0800F3C2
	.align 2, 0
_0800F3B0: .4byte sub_0800F3EC
_0800F3B4:
	ldr r0, _0800F3C8 @ =gUnknown_03000B54
	ldr r0, [r0]
	cmp r0, r1
	bne _0800F3C2
	movs r0, #0
	bl sub_080008FC
_0800F3C2:
	pop {r0}
	bx r0
	.align 2, 0
_0800F3C8: .4byte gUnknown_03000B54

	thumb_func_start sub_0800F3CC
sub_0800F3CC: @ 0x0800F3CC
	push {lr}
	ldr r0, _0800F3E4 @ =gUnknown_0200C1A0
	ldr r1, _0800F3E8 @ =0x000068B9
	adds r0, r0, r1
	movs r1, #0
	strb r1, [r0]
	movs r0, #0
	bl sub_0800F3A0
	pop {r0}
	bx r0
	.align 2, 0
_0800F3E4: .4byte gUnknown_0200C1A0
_0800F3E8: .4byte 0x000068B9

	thumb_func_start sub_0800F3EC
sub_0800F3EC: @ 0x0800F3EC
	push {r4, r5, lr}
	ldr r4, _0800F438 @ =gUnknown_02012A58
	ldrb r2, [r4]
	adds r1, r4, #0
	adds r1, #0x4c
	ldrb r0, [r1]
	adds r0, #1
	movs r3, #0
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r5, [r4, #9]
	cmp r0, r5
	blo _0800F41E
	strb r3, [r1]
	adds r1, #1
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r5, [r4, #0xa]
	cmp r0, r5
	blo _0800F41E
	strb r3, [r1]
_0800F41E:
	cmp r2, #0
	bne _0800F432
	adds r0, r4, #0
	movs r1, #0
	bl sub_0800F324
	adds r0, r4, #0
	movs r1, #1
	bl sub_0800F324
_0800F432:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800F438: .4byte gUnknown_02012A58

	thumb_func_start sub_0800F43C
sub_0800F43C: @ 0x0800F43C
	push {r4, r5, lr}
	adds r2, r0, #0
	ldr r5, _0800F45C @ =gUnknown_02012A58
	ldrb r0, [r5, #1]
	cmp r0, r1
	beq _0800F492
	strb r1, [r5, #1]
	cmp r1, #0
	beq _0800F478
	adds r0, r5, #0
	adds r1, r2, #0
	bl sub_0800F29C
	movs r4, #0
	b _0800F46A
	.align 2, 0
_0800F45C: .4byte gUnknown_02012A58
_0800F460:
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0800F2CC
	adds r4, #1
_0800F46A:
	ldrb r0, [r5, #2]
	cmp r4, r0
	blo _0800F460
	movs r0, #1
	bl sub_0800F3A0
	b _0800F492
_0800F478:
	movs r0, #0
	bl sub_0800F3A0
	movs r4, #0
	b _0800F48C
_0800F482:
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0800F2F8
	adds r4, #1
_0800F48C:
	ldrb r0, [r5, #2]
	cmp r4, r0
	blo _0800F482
_0800F492:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_0800F498
sub_0800F498: @ 0x0800F498
	adds r2, r1, #0
	adds r1, #0x41
	ldrb r1, [r1]
	strb r1, [r0]
	adds r1, r2, #0
	adds r1, #0x42
	ldrh r1, [r1]
	strh r1, [r0, #2]
	adds r1, r2, #0
	adds r1, #0x44
	ldrh r1, [r1]
	strh r1, [r0, #4]
	adds r1, r2, #0
	adds r1, #0x46
	ldrh r1, [r1]
	strh r1, [r0, #6]
	bx lr
	.align 2, 0

	thumb_func_start sub_0800F4BC
sub_0800F4BC: @ 0x0800F4BC
	push {r4, r5, lr}
	sub sp, #0x100
	adds r5, r0, #0
	bl sub_0803D320
	adds r4, r0, #0
	bl sub_0803D31C
	adds r1, r0, #0
	adds r0, r4, #0
	adds r2, r5, #0
	bl BinarySearchStr
	adds r4, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r4, r0
	bne _0800F4F0
	ldr r1, _0800F500 @ =gUnknown_0831B608
	mov r0, sp
	adds r2, r5, #0
	bl sprintf
	mov r0, sp
	bl sub_080050A8
_0800F4F0:
	adds r0, r4, #0
	bl sub_0803D328
	add sp, #0x100
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0800F500: .4byte gUnknown_0831B608

	thumb_func_start sub_0800F504
sub_0800F504: @ 0x0800F504
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r7, r1, #0
	adds r5, r4, #0
	adds r5, #0x20
	adds r6, r7, #0
	adds r6, #0x18
	movs r0, #0
	adds r1, r6, #0
	bl sub_0800FCA4
	str r6, [r4, #0x20]
	adds r6, #0x18
	movs r0, #1
	adds r1, r6, #0
	bl sub_0800FCA4
	str r6, [r5, #4]
	adds r6, #0x18
	movs r0, #2
	adds r1, r6, #0
	bl sub_0800FCA4
	str r6, [r5, #8]
	adds r6, #0x18
	movs r0, #3
	adds r1, r6, #0
	bl sub_0800FCA4
	str r6, [r5, #0xc]
	adds r6, #0x18
	movs r0, #4
	adds r1, r6, #0
	bl sub_0800FCA4
	str r6, [r5, #0x10]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800F554
sub_0800F554: @ 0x0800F554
	push {lr}
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	movs r1, #0x64
	bl Div
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0800F56C
sub_0800F56C: @ 0x0800F56C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r6, r0, #0
	adds r4, r3, #0
	movs r0, #0
	str r0, [sp]
	mov sl, r0
	cmp r1, #0
	bne _0800F58A
	movs r0, #1
	mov sl, r0
_0800F58A:
	movs r0, #0
	str r0, [sp, #4]
	cmp r1, #3
	bne _0800F596
	movs r0, #1
	str r0, [sp, #4]
_0800F596:
	movs r0, #0
	mov r8, r0
	cmp r1, #2
	bne _0800F5A2
	movs r0, #1
	mov r8, r0
_0800F5A2:
	movs r0, #0
	str r0, [sp, #8]
	cmp r1, #1
	bne _0800F5AE
	movs r0, #1
	str r0, [sp, #8]
_0800F5AE:
	strb r1, [r6]
	movs r0, #0
	mov r1, sl
	cmp r1, #0
	bne _0800F5C4
	mov r1, r8
	cmp r1, #0
	bne _0800F5C4
	ldr r1, [sp, #8]
	cmp r1, #0
	beq _0800F5C6
_0800F5C4:
	movs r0, #1
_0800F5C6:
	strb r0, [r6, #1]
	cmp r0, #0
	beq _0800F5D2
	movs r0, #0
	strb r0, [r6, #2]
	b _0800F5D4
_0800F5D2:
	strb r2, [r6, #2]
_0800F5D4:
	ldrb r0, [r6, #1]
	cmp r0, #0
	beq _0800F5EC
	adds r0, r4, #0
	bl sub_0800F4BC
	str r0, [sp]
	ldrb r0, [r6, #1]
	cmp r0, #0
	beq _0800F5EC
	str r4, [r6, #4]
	b _0800F5F0
_0800F5EC:
	ldr r0, _0800F604 @ =gUnknown_0831A0A8
	str r0, [r6, #4]
_0800F5F0:
	mov r2, sl
	cmp r2, #0
	bne _0800F5FC
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _0800F608
_0800F5FC:
	ldr r1, [sp]
	str r1, [r6, #8]
	b _0800F618
	.align 2, 0
_0800F604: .4byte gUnknown_0831A0A8
_0800F608:
	movs r0, #0xf
	bl sub_08010170
	adds r1, r0, #0
	movs r0, #6
	bl sub_0800FD0C
	str r0, [r6, #8]
_0800F618:
	movs r4, #0
	adds r2, r6, #0
	adds r2, #0x3a
	str r2, [sp, #0xc]
	movs r0, #0x40
	adds r0, r0, r6
	mov sb, r0
	adds r5, r6, #0
	adds r5, #0x20
	adds r7, r6, #0
	adds r7, #0xc
_0800F62E:
	adds r0, r4, #5
	bl sub_08010170
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_0800FD0C
	str r0, [r7]
	mov r1, sl
	cmp r1, #0
	bne _0800F64A
	ldr r2, [sp, #8]
	cmp r2, #0
	beq _0800F654
_0800F64A:
	adds r0, r6, #0
	ldr r1, [sp]
	bl sub_0800F504
	b _0800F672
_0800F654:
	mov r0, r8
	cmp r0, #0
	beq _0800F660
	adds r0, r4, #0
	adds r0, #0x24
	b _0800F664
_0800F660:
	adds r0, r4, #0
	adds r0, #0xa
_0800F664:
	bl sub_08010170
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_0800FD0C
	str r0, [r5]
_0800F672:
	adds r5, #4
	adds r7, #4
	adds r4, #1
	cmp r4, #4
	bls _0800F62E
	mov r1, sl
	cmp r1, #0
	beq _0800F688
	ldr r0, [sp, #0x38]
	strh r0, [r6, #0x34]
	b _0800F6A6
_0800F688:
	ldr r2, [sp, #4]
	cmp r2, #0
	beq _0800F692
	movs r0, #0x1d
	b _0800F69A
_0800F692:
	mov r0, r8
	cmp r0, #0
	beq _0800F6A2
	movs r0, #0x23
_0800F69A:
	bl sub_08010170
	strh r0, [r6, #0x34]
	b _0800F6A6
_0800F6A2:
	mov r1, r8
	strh r1, [r6, #0x34]
_0800F6A6:
	mov r2, sl
	cmp r2, #0
	beq _0800F6B6
	ldr r0, [sp, #0x30]
	strh r0, [r6, #0x36]
	ldr r0, [sp, #0x34]
	strh r0, [r6, #0x38]
	b _0800F71C
_0800F6B6:
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _0800F6EE
	movs r0, #0x1b
	bl sub_08010170
	adds r5, r0, #0
	movs r0, #0x1c
	bl sub_08010170
	adds r4, r0, #0
	adds r0, r5, #0
	bl sub_0800F554
	adds r5, r0, #0
	adds r0, r4, #0
	bl sub_0800F554
	adds r4, r0, #0
	ldrb r0, [r6, #2]
	cmp r0, #0
	bne _0800F6E8
	strh r5, [r6, #0x36]
	strh r4, [r6, #0x38]
	b _0800F71C
_0800F6E8:
	strh r4, [r6, #0x36]
	strh r5, [r6, #0x38]
	b _0800F71C
_0800F6EE:
	mov r1, r8
	cmp r1, #0
	beq _0800F716
	movs r0, #0x21
	bl sub_08010170
	adds r4, r0, #0
	movs r0, #0x22
	bl sub_08010170
	adds r5, r0, #0
	adds r0, r4, #0
	bl sub_0800F554
	strh r0, [r6, #0x36]
	adds r0, r5, #0
	bl sub_0800F554
	strh r0, [r6, #0x38]
	b _0800F71C
_0800F716:
	mov r2, r8
	strh r2, [r6, #0x36]
	strh r2, [r6, #0x38]
_0800F71C:
	movs r4, #0
_0800F71E:
	adds r0, r4, #0
	adds r0, #0x12
	bl sub_08010170
	ldr r2, [sp, #0xc]
	adds r1, r2, r4
	strb r0, [r1]
	adds r4, #1
	cmp r4, #5
	bls _0800F71E
	mov r0, sl
	cmp r0, #0
	beq _0800F73C
	ldr r0, [sp, #0x3c]
	b _0800F744
_0800F73C:
	ldr r2, [sp, #4]
	cmp r2, #0
	beq _0800F74A
	movs r0, #1
_0800F744:
	mov r1, sb
	strb r0, [r1]
	b _0800F760
_0800F74A:
	mov r2, r8
	cmp r2, #0
	beq _0800F75A
	mov r0, sp
	ldrb r1, [r0, #4]
	mov r0, sb
	strb r1, [r0]
	b _0800F760
_0800F75A:
	mov r0, r8
	mov r2, sb
	strb r0, [r2]
_0800F760:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0800F770
sub_0800F770: @ 0x0800F770
	push {lr}
	adds r3, r0, #0
	ldr r1, _0800F784 @ =gUnknown_08312798
	movs r0, #3
	movs r2, #1
	bl sub_0800F8B0
	pop {r0}
	bx r0
	.align 2, 0
_0800F784: .4byte gUnknown_08312798

	thumb_func_start sub_0800F788
sub_0800F788: @ 0x0800F788
	push {r4, lr}
	bl sub_0800F4BC
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x18
	movs r0, #0
	bl sub_0800FD50
	adds r1, r0, #0
	movs r0, #0xa
	bl sub_08010180
	adds r1, r4, #0
	adds r1, #0x30
	movs r0, #1
	bl sub_0800FD50
	adds r1, r0, #0
	movs r0, #0xb
	bl sub_08010180
	adds r1, r4, #0
	adds r1, #0x48
	movs r0, #2
	bl sub_0800FD50
	adds r1, r0, #0
	movs r0, #0xc
	bl sub_08010180
	adds r1, r4, #0
	adds r1, #0x60
	movs r0, #3
	bl sub_0800FD50
	adds r1, r0, #0
	movs r0, #0xd
	bl sub_08010180
	adds r1, r4, #0
	adds r1, #0x78
	movs r0, #4
	bl sub_0800FD50
	adds r1, r0, #0
	movs r0, #0xe
	bl sub_08010180
	movs r0, #6
	adds r1, r4, #0
	bl sub_0800FD50
	adds r1, r0, #0
	movs r0, #0x10
	bl sub_08010180
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0800F800
sub_0800F800: @ 0x0800F800
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x58
	mov r8, r0
	adds r4, r1, #0
	adds r5, r2, #0
	adds r6, r3, #0
	ldr r7, [sp, #0x74]
	ldr r0, _0800F8A8 @ =gUnknown_02012B50
	mov sb, r0
	movs r0, #0xa
	bl sub_0800F9E8
	movs r0, #0
	bl sub_0800AD4C
	bl sub_08011C70
	bl sub_0800AEB0
	str r4, [sp]
	str r5, [sp, #4]
	str r6, [sp, #8]
	str r7, [sp, #0xc]
	add r0, sp, #0x10
	movs r1, #0
	movs r2, #0
	mov r3, r8
	bl sub_0800F56C
	add r0, sp, #0x10
	bl sub_0801E5A4
	bl sub_0800FA04
	bl sub_08011E44
	bl sub_080006F8
	movs r0, #0
	bl sub_0800056C
	ldr r0, [sp, #0x18]
	ldr r1, _0800F8AC @ =gUnknown_0831AD10
	bl sub_08000D80
	cmp r0, #0
	bne _0800F874
	ldr r1, [sp, #0x18]
	movs r0, #6
	bl sub_0800FD50
	adds r1, r0, #0
	movs r0, #6
	bl sub_0800FCB0
_0800F874:
	mov r0, r8
	bl sub_0800FA10
	mov r4, sp
	adds r4, #0x51
	cmp r0, #0
	bne _0800F888
	ldrb r0, [r4]
	bl sub_08010250
_0800F888:
	mov r0, sb
	add r1, sp, #0x10
	bl sub_0800F498
	ldrb r0, [r4]
	cmp r0, #1
	bls _0800F898
	movs r0, #2
_0800F898:
	add sp, #0x58
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0800F8A8: .4byte gUnknown_02012B50
_0800F8AC: .4byte gUnknown_0831AD10

	thumb_func_start sub_0800F8B0
sub_0800F8B0: @ 0x0800F8B0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x58
	adds r7, r0, #0
	adds r5, r1, #0
	mov r8, r2
	mov sb, r3
	ldr r0, _0800F8F0 @ =gUnknown_02012B50
	mov sl, r0
	adds r0, r7, #0
	adds r0, #0xa
	bl sub_0800F9E8
	movs r0, #0
	bl sub_0800AD4C
	bl sub_08011C70
	bl sub_0800AEB0
	cmp r7, #1
	bne _0800F8F4
	movs r4, #3
	movs r0, #0
	bl sub_0800B764
	adds r2, r0, #0
	b _0800F900
	.align 2, 0
_0800F8F0: .4byte gUnknown_02012B50
_0800F8F4:
	cmp r7, #2
	bne _0800F8FC
	movs r4, #2
	b _0800F8FE
_0800F8FC:
	movs r4, #1
_0800F8FE:
	movs r2, #0
_0800F900:
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	add r0, sp, #0x10
	adds r1, r4, #0
	adds r3, r5, #0
	bl sub_0800F56C
	mov r5, sp
	adds r5, #0x51
	mov r1, r8
	cmp r1, #0
	beq _0800F936
	movs r4, #0
	add r6, sp, #0x1c
_0800F922:
	mov r1, sb
	adds r0, r1, r4
	ldrb r1, [r0]
	adds r0, r4, #0
	bl sub_0800FD0C
	stm r6!, {r0}
	adds r4, #1
	cmp r4, #4
	bls _0800F922
_0800F936:
	add r0, sp, #0x10
	bl sub_0801E5A4
	mov r0, r8
	cmp r0, #0
	bne _0800F946
	bl sub_0800FA04
_0800F946:
	ldrb r0, [r5]
	cmp r0, #3
	bls _0800F956
	movs r0, #4
	bl sub_08000B68
	bl sub_0800134C
_0800F956:
	bl sub_0800A0F0
	mov r1, r8
	cmp r1, #0
	bne _0800F964
	bl sub_08011E44
_0800F964:
	bl sub_080006F8
	movs r0, #0
	bl sub_0800056C
	cmp r7, #1
	bne _0800F97C
	ldrb r0, [r5]
	cmp r0, #3
	bhi _0800F982
	bl sub_0801027C
_0800F97C:
	ldrb r0, [r5]
	cmp r0, #3
	bls _0800F986
_0800F982:
	movs r0, #3
	strb r0, [r5]
_0800F986:
	mov r0, r8
	cmp r0, #0
	bne _0800F994
	mov r0, sl
	add r1, sp, #0x10
	bl sub_0800F498
_0800F994:
	ldrb r0, [r5]
	add sp, #0x58
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0800F9A8
sub_0800F9A8: @ 0x0800F9A8
	push {lr}
	ldr r1, _0800F9BC @ =gUnknown_0831A0A8
	movs r0, #1
	movs r2, #0
	movs r3, #0
	bl sub_0800F8B0
	pop {r1}
	bx r1
	.align 2, 0
_0800F9BC: .4byte gUnknown_0831A0A8

	thumb_func_start sub_0800F9C0
sub_0800F9C0: @ 0x0800F9C0
	push {lr}
	adds r1, r0, #0
	movs r0, #2
	movs r2, #0
	movs r3, #0
	bl sub_0800F8B0
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0800F9D4
sub_0800F9D4: @ 0x0800F9D4
	push {lr}
	adds r1, r0, #0
	movs r0, #3
	movs r2, #0
	movs r3, #0
	bl sub_0800F8B0
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800F9E8
sub_0800F9E8: @ 0x0800F9E8
	push {lr}
	adds r1, r0, #0
	ldr r0, _0800FA00 @ =gUnknown_02001D70
	ldrh r0, [r0, #8]
	cmp r0, #0
	beq _0800F9FA
	adds r0, r1, #0
	bl sub_080052AC
_0800F9FA:
	pop {r0}
	bx r0
	.align 2, 0
_0800FA00: .4byte gUnknown_02001D70

	thumb_func_start sub_0800FA04
sub_0800FA04: @ 0x0800FA04
	push {lr}
	bl sub_0800A9EC
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800FA10
sub_0800FA10: @ 0x0800FA10
	push {lr}
	ldr r1, _0800FA1C @ =gUnknown_08319014
	bl sub_08000D80
	pop {r1}
	bx r1
	.align 2, 0
_0800FA1C: .4byte gUnknown_08319014

	thumb_func_start sub_0800FA20
sub_0800FA20: @ 0x0800FA20
	push {lr}
	ldr r1, _0800FA2C @ =gUnknown_02012B50
	cmp r0, #0
	bne _0800FA30
	ldrb r0, [r1]
	b _0800FA56
	.align 2, 0
_0800FA2C: .4byte gUnknown_02012B50
_0800FA30:
	cmp r0, #1
	bne _0800FA38
	ldrh r0, [r1, #2]
	b _0800FA56
_0800FA38:
	cmp r0, #2
	bne _0800FA40
	ldrh r0, [r1, #4]
	b _0800FA56
_0800FA40:
	cmp r0, #3
	beq _0800FA54
	ldr r0, _0800FA50 @ =gUnknown_0831B624
	bl sub_080050A8
	movs r0, #0
	b _0800FA56
	.align 2, 0
_0800FA50: .4byte gUnknown_0831B624
_0800FA54:
	ldrh r0, [r1, #6]
_0800FA56:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0800FA5C
sub_0800FA5C: @ 0x0800FA5C
	ldr r0, _0800FA68 @ =gUnknown_0200E4E4
	movs r1, #0
	strb r1, [r0]
	movs r1, #1
	strb r1, [r0, #1]
	bx lr
	.align 2, 0
_0800FA68: .4byte gUnknown_0200E4E4

	thumb_func_start sub_0800FA6C
sub_0800FA6C: @ 0x0800FA6C
	push {r4, lr}
	ldr r4, _0800FA8C @ =gUnknown_0200E4E4
	ldrb r0, [r4]
	cmp r0, #0
	bne _0800FA88
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _0800FA88
	ldr r0, _0800FA90 @ =gUnknown_02000020
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _0800FA94
_0800FA88:
	movs r0, #0
	b _0800FAFE
	.align 2, 0
_0800FA8C: .4byte gUnknown_0200E4E4
_0800FA90: .4byte gUnknown_02000020
_0800FA94:
	ldr r1, _0800FB04 @ =0xFFFFE8E4
	adds r0, r4, r1
	ldr r0, [r0]
	subs r0, #1
	movs r1, #1
	strb r1, [r4]
	str r0, [r4, #4]
	ldrb r0, [r0]
	strb r0, [r4, #8]
	ldr r2, _0800FB08 @ =0xFFFFE8E0
	adds r0, r4, r2
	ldrb r0, [r0]
	strb r0, [r4, #9]
	adds r0, r4, #0
	adds r0, #0xc
	movs r2, #0x8e
	lsls r2, r2, #3
	adds r1, r4, r2
	movs r2, #0x70
	bl sub_080002C4
	ldr r0, _0800FB0C @ =gUnknown_020132E0
	movs r1, #0x90
	lsls r1, r1, #7
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r4, #0x7c]
	adds r0, r4, #0
	adds r0, #0x80
	movs r2, #0x9c
	lsls r2, r2, #3
	adds r1, r4, r2
	movs r2, #0x14
	bl sub_080002C4
	adds r0, r4, #0
	adds r0, #0x94
	ldr r2, _0800FB10 @ =0x000004F4
	adds r1, r4, r2
	movs r2, #4
	bl sub_080002C4
	adds r0, r4, #0
	adds r0, #0x98
	ldr r2, _0800FB14 @ =0x000042D8
	adds r1, r4, r2
	movs r2, #0x10
	bl sub_080002C4
	movs r0, #0
	bl sub_0800D2E0
	movs r0, #1
_0800FAFE:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0800FB04: .4byte 0xFFFFE8E4
_0800FB08: .4byte 0xFFFFE8E0
_0800FB0C: .4byte gUnknown_020132E0
_0800FB10: .4byte 0x000004F4
_0800FB14: .4byte 0x000042D8

	thumb_func_start sub_0800FB18
sub_0800FB18: @ 0x0800FB18
	ldr r1, _0800FB20 @ =gUnknown_0200E4E4
	strb r0, [r1, #1]
	bx lr
	.align 2, 0
_0800FB20: .4byte gUnknown_0200E4E4

	thumb_func_start sub_0800FB24
sub_0800FB24: @ 0x0800FB24
	ldr r0, _0800FB2C @ =gUnknown_0200E4E4
	ldrb r0, [r0, #1]
	bx lr
	.align 2, 0
_0800FB2C: .4byte gUnknown_0200E4E4

	thumb_func_start sub_0800FB30
sub_0800FB30: @ 0x0800FB30
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r5, _0800FB5C @ =gUnknown_0200E4E4
	ldr r0, _0800FB60 @ =0xFFFFDCBC
	adds r6, r5, r0
	ldrb r0, [r5]
	cmp r0, #2
	beq _0800FB46
	ldr r0, _0800FB64 @ =gUnknown_0831B644
	bl sub_080050A8
_0800FB46:
	cmp r4, #0
	bne _0800FBD4
	ldrb r0, [r5, #8]
	adds r0, #0x69
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _0800FB68
	strb r4, [r5]
	b _0800FB6C
	.align 2, 0
_0800FB5C: .4byte gUnknown_0200E4E4
_0800FB60: .4byte 0xFFFFDCBC
_0800FB64: .4byte gUnknown_0831B644
_0800FB68:
	movs r0, #3
	strb r0, [r5]
_0800FB6C:
	ldr r2, _0800FBC4 @ =0x00000C28
	adds r1, r6, r2
	ldr r0, [r5, #4]
	str r0, [r1]
	ldrb r1, [r5, #9]
	subs r2, #4
	adds r0, r6, r2
	strb r1, [r0]
	ldr r4, _0800FBC8 @ =gUnknown_0200E954
	adds r1, r5, #0
	adds r1, #0xc
	adds r0, r4, #0
	movs r2, #0x70
	bl sub_080002C4
	ldr r0, _0800FBCC @ =gUnknown_020132E0
	movs r1, #0x90
	lsls r1, r1, #7
	adds r0, r0, r1
	ldr r1, [r5, #0x7c]
	str r1, [r0]
	adds r0, r4, #0
	adds r0, #0x70
	adds r1, r5, #0
	adds r1, #0x80
	movs r2, #0x14
	bl sub_080002C4
	adds r0, r4, #0
	adds r0, #0x84
	adds r1, r5, #0
	adds r1, #0x94
	movs r2, #4
	bl sub_080002C4
	ldr r2, _0800FBD0 @ =0x00003E68
	adds r4, r4, r2
	adds r1, r5, #0
	adds r1, #0x98
	adds r0, r4, #0
	movs r2, #0x10
	bl sub_080002C4
	b _0800FBEE
	.align 2, 0
_0800FBC4: .4byte 0x00000C28
_0800FBC8: .4byte gUnknown_0200E954
_0800FBCC: .4byte gUnknown_020132E0
_0800FBD0: .4byte 0x00003E68
_0800FBD4:
	movs r0, #0
	strb r0, [r5]
	bl sub_08011C70
	movs r0, #0
	bl sub_08011D8C
	ldr r0, _0800FBF4 @ =gUnknown_0831AF6C
	bl sub_080117CC
	ldr r2, _0800FBF8 @ =0xFFFFE8E4
	adds r1, r5, r2
	str r0, [r1]
_0800FBEE:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800FBF4: .4byte gUnknown_0831AF6C
_0800FBF8: .4byte 0xFFFFE8E4

	thumb_func_start sub_0800FBFC
sub_0800FBFC: @ 0x0800FBFC
	push {lr}
	ldr r0, _0800FC08 @ =gUnknown_0831B69C
	bl sub_080050A8
	pop {r0}
	bx r0
	.align 2, 0
_0800FC08: .4byte gUnknown_0831B69C

	thumb_func_start sub_0800FC0C
sub_0800FC0C: @ 0x0800FC0C
	push {lr}
	sub sp, #0x80
	adds r3, r1, #0
	ldr r1, _0800FC30 @ =gUnknown_083E7D00
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r1, _0800FC34 @ =gUnknown_0831B6B8
	mov r0, sp
	bl sprintf
	mov r0, sp
	bl sub_080050A8
	add sp, #0x80
	pop {r0}
	bx r0
	.align 2, 0
_0800FC30: .4byte gUnknown_083E7D00
_0800FC34: .4byte gUnknown_0831B6B8

	thumb_func_start sub_0800FC38
sub_0800FC38: @ 0x0800FC38
	push {lr}
	sub sp, #0x80
	adds r3, r1, #0
	ldr r1, _0800FC5C @ =gUnknown_083E7D00
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r1, _0800FC60 @ =gUnknown_0831B6DC
	mov r0, sp
	bl sprintf
	mov r0, sp
	bl sub_080050A8
	add sp, #0x80
	pop {r0}
	bx r0
	.align 2, 0
_0800FC5C: .4byte gUnknown_083E7D00
_0800FC60: .4byte gUnknown_0831B6DC

	thumb_func_start sub_0800FC64
sub_0800FC64: @ 0x0800FC64
	push {lr}
	adds r2, r0, #0
	adds r3, r1, #0
	cmp r2, #6
	bls _0800FC74
	bl sub_0800FBFC
	b _0800FC9C
_0800FC74:
	ldr r0, _0800FC8C @ =gUnknown_083E7D1C
	adds r0, r2, r0
	ldrb r0, [r0]
	cmp r3, r0
	bhs _0800FC94
	ldr r1, _0800FC90 @ =gUnknown_083E7D40
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r0, [r0]
	lsls r1, r3, #1
	adds r0, r0, r1
	b _0800FC9E
	.align 2, 0
_0800FC8C: .4byte gUnknown_083E7D1C
_0800FC90: .4byte gUnknown_083E7D40
_0800FC94:
	adds r0, r2, #0
	adds r1, r3, #0
	bl sub_0800FC0C
_0800FC9C:
	movs r0, #0
_0800FC9E:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0800FCA4
sub_0800FCA4: @ 0x0800FCA4
	push {lr}
	bl sub_0800FD50
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800FCB0
sub_0800FCB0: @ 0x0800FCB0
	ldr r2, _0800FCC4 @ =gUnknown_083E7D40
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r2, _0800FCC8 @ =0x00000101
	adds r1, r2, #0
	strh r1, [r0]
	bx lr
	.align 2, 0
_0800FCC4: .4byte gUnknown_083E7D40
_0800FCC8: .4byte 0x00000101

	thumb_func_start sub_0800FCCC
sub_0800FCCC: @ 0x0800FCCC
	push {lr}
	ldr r1, _0800FCE4 @ =gUnknown_083E7D24
	ldr r1, [r1, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _0800FCE8 @ =gUnknown_0831B700
	bl FindSubstring
	pop {r1}
	bx r1
	.align 2, 0
_0800FCE4: .4byte gUnknown_083E7D24
_0800FCE8: .4byte gUnknown_0831B700

	thumb_func_start sub_0800FCEC
sub_0800FCEC: @ 0x0800FCEC
	push {lr}
	adds r1, r0, #0
	cmp r1, #6
	bhi _0800FD00
	ldr r0, _0800FCFC @ =gUnknown_083E7D1C
	adds r0, r1, r0
	ldrb r0, [r0]
	b _0800FD06
	.align 2, 0
_0800FCFC: .4byte gUnknown_083E7D1C
_0800FD00:
	bl sub_0800FBFC
	movs r0, #0
_0800FD06:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0800FD0C
sub_0800FD0C: @ 0x0800FD0C
	push {lr}
	adds r2, r0, #0
	adds r3, r1, #0
	cmp r2, #6
	bls _0800FD1C
	bl sub_0800FBFC
	b _0800FD48
_0800FD1C:
	ldr r0, _0800FD38 @ =gUnknown_083E7D1C
	adds r0, r2, r0
	ldrb r0, [r0]
	cmp r3, r0
	bhs _0800FD40
	ldr r1, _0800FD3C @ =gUnknown_083E7D24
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r1, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r0, [r0]
	b _0800FD4A
	.align 2, 0
_0800FD38: .4byte gUnknown_083E7D1C
_0800FD3C: .4byte gUnknown_083E7D24
_0800FD40:
	adds r0, r2, #0
	adds r1, r3, #0
	bl sub_0800FC0C
_0800FD48:
	movs r0, #0
_0800FD4A:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0800FD50
sub_0800FD50: @ 0x0800FD50
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	mov r8, r1
	cmp r7, #6
	bls _0800FD68
	bl sub_0800FBFC
	b _0800FD9A
_0800FD64:
	adds r0, r5, #0
	b _0800FD9C
_0800FD68:
	ldr r0, _0800FDA8 @ =gUnknown_083E7D1C
	adds r0, r7, r0
	ldrb r6, [r0]
	ldr r1, _0800FDAC @ =gUnknown_083E7D24
	lsls r0, r7, #2
	adds r0, r0, r1
	ldr r0, [r0]
	movs r5, #0
	cmp r5, r6
	bhs _0800FD92
	adds r4, r0, #0
_0800FD7E:
	ldr r1, [r4]
	mov r0, r8
	bl sub_08000D80
	cmp r0, #0
	bne _0800FD64
	adds r4, #4
	adds r5, #1
	cmp r5, r6
	blo _0800FD7E
_0800FD92:
	adds r0, r7, #0
	mov r1, r8
	bl sub_0800FC38
_0800FD9A:
	movs r0, #0
_0800FD9C:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0800FDA8: .4byte gUnknown_083E7D1C
_0800FDAC: .4byte gUnknown_083E7D24

	thumb_func_start sub_0800FDB0
sub_0800FDB0: @ 0x0800FDB0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	movs r6, #0
_0800FDBA:
	ldr r0, _0800FDE0 @ =gUnknown_083E7D1C
	adds r0, r6, r0
	ldrb r7, [r0]
	ldr r1, _0800FDE4 @ =gUnknown_083E7D24
	lsls r0, r6, #2
	adds r0, r0, r1
	ldr r0, [r0]
	movs r5, #0
	cmp r5, r7
	bhs _0800FDF0
	adds r4, r0, #0
_0800FDD0:
	ldr r1, [r4]
	mov r0, r8
	bl sub_08000D80
	cmp r0, #0
	beq _0800FDE8
	adds r0, r6, #0
	b _0800FDFA
	.align 2, 0
_0800FDE0: .4byte gUnknown_083E7D1C
_0800FDE4: .4byte gUnknown_083E7D24
_0800FDE8:
	adds r4, #4
	adds r5, #1
	cmp r5, r7
	blo _0800FDD0
_0800FDF0:
	adds r6, #1
	cmp r6, #6
	bls _0800FDBA
	movs r0, #1
	rsbs r0, r0, #0
_0800FDFA:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0800FE04
sub_0800FE04: @ 0x0800FE04
	push {lr}
	adds r2, r0, #0
	adds r3, r1, #0
	cmp r2, #6
	bls _0800FE14
	bl sub_0800FBFC
	b _0800FE54
_0800FE14:
	ldr r0, _0800FE28 @ =gUnknown_083E7D1C
	adds r0, r2, r0
	ldrb r0, [r0]
	cmp r3, r0
	blo _0800FE2C
	adds r0, r2, #0
	adds r1, r3, #0
	bl sub_0800FC0C
	b _0800FE54
	.align 2, 0
_0800FE28: .4byte gUnknown_083E7D1C
_0800FE2C:
	ldr r1, _0800FE50 @ =gUnknown_083E7D24
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r1, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldrb r0, [r1]
	cmp r0, #0x23
	bne _0800FE54
	ldrb r0, [r1, #1]
	cmp r0, #0x49
	beq _0800FE4A
	cmp r0, #0x41
	bne _0800FE54
_0800FE4A:
	movs r0, #1
	b _0800FE56
	.align 2, 0
_0800FE50: .4byte gUnknown_083E7D24
_0800FE54:
	movs r0, #0
_0800FE56:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0800FE5C
sub_0800FE5C: @ 0x0800FE5C
	push {lr}
	bl sub_0800FC64
	ldrb r0, [r0]
	pop {r1}
	bx r1

	thumb_func_start sub_0800FE68
sub_0800FE68: @ 0x0800FE68
	push {r4, lr}
	adds r4, r2, #0
	bl sub_0800FC64
	adds r3, r0, #0
	ldrb r1, [r3]
	adds r1, r1, r4
	movs r2, #0
	cmp r2, r1
	bge _0800FE7E
	adds r2, r1, #0
_0800FE7E:
	movs r1, #0x63
	cmp r1, r2
	ble _0800FE86
	adds r1, r2, #0
_0800FE86:
	strb r1, [r3]
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0800FE90
sub_0800FE90: @ 0x0800FE90
	push {r4, lr}
	adds r4, r2, #0
	bl sub_0800FC64
	adds r3, r0, #0
	ldrb r1, [r3]
	adds r1, r1, r4
	movs r2, #0
	cmp r2, r1
	bge _0800FEA6
	adds r2, r1, #0
_0800FEA6:
	movs r1, #0x63
	cmp r1, r2
	ble _0800FEAE
	adds r1, r2, #0
_0800FEAE:
	strb r1, [r3]
	ldrb r1, [r3, #1]
	movs r2, #1
	orrs r1, r2
	strb r1, [r3, #1]
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0800FEC0
sub_0800FEC0: @ 0x0800FEC0
	push {lr}
	bl sub_0800FC64
	ldrb r0, [r0, #1]
	movs r1, #1
	ands r0, r1
	pop {r1}
	bx r1

	thumb_func_start sub_0800FED0
sub_0800FED0: @ 0x0800FED0
	push {r4, lr}
	adds r4, r2, #0
	bl sub_0800FC64
	movs r1, #2
	rsbs r1, r1, #0
	ldrb r2, [r0, #1]
	ands r1, r2
	orrs r1, r4
	strb r1, [r0, #1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800FEEC
sub_0800FEEC: @ 0x0800FEEC
	push {lr}
	bl sub_0800FC64
	ldrb r0, [r0, #1]
	asrs r0, r0, #1
	movs r1, #1
	ands r0, r1
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0800FF00
sub_0800FF00: @ 0x0800FF00
	push {r4, lr}
	adds r4, r2, #0
	bl sub_0800FC64
	movs r1, #3
	rsbs r1, r1, #0
	ldrb r2, [r0, #1]
	ands r1, r2
	lsls r4, r4, #1
	orrs r1, r4
	strb r1, [r0, #1]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0800FF1C
sub_0800FF1C: @ 0x0800FF1C
	push {r4, r5, lr}
	movs r4, #0xd6
	ldr r5, _0800FF3C @ =0xFFFFFDFF
	movs r3, #0
	ldr r2, _0800FF40 @ =gUnknown_0200C208
_0800FF26:
	ldrh r1, [r2]
	adds r0, r5, #0
	ands r0, r1
	strh r0, [r2]
	adds r2, #2
	adds r3, #1
	cmp r3, r4
	blo _0800FF26
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800FF3C: .4byte 0xFFFFFDFF
_0800FF40: .4byte gUnknown_0200C208

	thumb_func_start sub_0800FF44
sub_0800FF44: @ 0x0800FF44
	push {lr}
	bl sub_0800FC64
	ldrb r0, [r0, #1]
	asrs r0, r0, #2
	movs r1, #1
	ands r0, r1
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0800FF58
sub_0800FF58: @ 0x0800FF58
	push {r4, lr}
	adds r4, r2, #0
	bl sub_0800FC64
	movs r1, #5
	rsbs r1, r1, #0
	ldrb r2, [r0, #1]
	ands r1, r2
	lsls r4, r4, #2
	orrs r1, r4
	strb r1, [r0, #1]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0800FF74
sub_0800FF74: @ 0x0800FF74
	push {r4, r5, lr}
	movs r4, #0xd6
	ldr r5, _0800FF94 @ =0xFFFFFBFF
	movs r3, #0
	ldr r2, _0800FF98 @ =gUnknown_0200C208
_0800FF7E:
	ldrh r1, [r2]
	adds r0, r5, #0
	ands r0, r1
	strh r0, [r2]
	adds r2, #2
	adds r3, #1
	cmp r3, r4
	blo _0800FF7E
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800FF94: .4byte 0xFFFFFBFF
_0800FF98: .4byte gUnknown_0200C208

	thumb_func_start sub_0800FF9C
sub_0800FF9C: @ 0x0800FF9C
	push {lr}
	bl sub_0800FC64
	ldrb r0, [r0, #1]
	asrs r0, r0, #3
	movs r1, #1
	ands r0, r1
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0800FFB0
sub_0800FFB0: @ 0x0800FFB0
	push {r4, lr}
	adds r4, r2, #0
	bl sub_0800FC64
	movs r1, #9
	rsbs r1, r1, #0
	ldrb r2, [r0, #1]
	ands r1, r2
	lsls r4, r4, #3
	orrs r1, r4
	strb r1, [r0, #1]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0800FFCC
sub_0800FFCC: @ 0x0800FFCC
	push {lr}
	bl sub_0800FC64
	ldrb r0, [r0, #1]
	asrs r0, r0, #4
	movs r1, #1
	ands r0, r1
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0800FFE0
sub_0800FFE0: @ 0x0800FFE0
	push {r4, lr}
	adds r4, r2, #0
	bl sub_0800FC64
	movs r1, #0x11
	rsbs r1, r1, #0
	ldrb r2, [r0, #1]
	ands r1, r2
	lsls r4, r4, #4
	orrs r1, r4
	strb r1, [r0, #1]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0800FFFC
sub_0800FFFC: @ 0x0800FFFC
	push {lr}
	ldr r0, _08010010 @ =gUnknown_0200C208
	movs r1, #0xd6
	lsls r1, r1, #1
	movs r2, #0
	bl sub_08000498
	pop {r0}
	bx r0
	.align 2, 0
_08010010: .4byte gUnknown_0200C208

	thumb_func_start sub_08010014
sub_08010014: @ 0x08010014
	push {r4, r5, r6, lr}
	ldr r2, _0801004C @ =gUnknown_083E7D40
	lsls r1, r0, #2
	adds r1, r1, r2
	ldr r2, [r1]
	ldr r1, _08010050 @ =gUnknown_083E7D1C
	adds r0, r0, r1
	ldrb r3, [r0]
	movs r5, #0
	movs r4, #0
	cmp r5, r3
	bhs _08010042
	movs r6, #0xff
_0801002E:
	ldrh r1, [r2]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _0801003A
	adds r5, #1
_0801003A:
	adds r2, #2
	adds r4, #1
	cmp r4, r3
	blo _0801002E
_08010042:
	adds r0, r5, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0801004C: .4byte gUnknown_083E7D40
_08010050: .4byte gUnknown_083E7D1C

	thumb_func_start sub_08010054
sub_08010054: @ 0x08010054
	push {r4, r5, r6, r7, lr}
	ldr r2, _08010094 @ =gUnknown_083E7D40
	lsls r1, r0, #2
	adds r1, r1, r2
	ldr r2, [r1]
	ldr r1, _08010098 @ =gUnknown_083E7D1C
	adds r0, r0, r1
	ldrb r3, [r0]
	movs r5, #0
	movs r4, #0
	cmp r5, r3
	bhs _0801008C
	movs r7, #0xff
	movs r6, #1
_08010070:
	ldrh r1, [r2]
	adds r0, r1, #0
	ands r0, r7
	lsrs r1, r1, #9
	ands r1, r6
	cmp r0, #0
	beq _08010084
	cmp r1, #0
	bne _08010084
	adds r5, #1
_08010084:
	adds r2, #2
	adds r4, #1
	cmp r4, r3
	blo _08010070
_0801008C:
	adds r0, r5, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08010094: .4byte gUnknown_083E7D40
_08010098: .4byte gUnknown_083E7D1C

	thumb_func_start sub_0801009C
sub_0801009C: @ 0x0801009C
	push {r4, r5, r6, r7, lr}
	ldr r2, _080100DC @ =gUnknown_083E7D40
	lsls r1, r0, #2
	adds r1, r1, r2
	ldr r2, [r1]
	ldr r1, _080100E0 @ =gUnknown_083E7D1C
	adds r0, r0, r1
	ldrb r3, [r0]
	movs r5, #0
	movs r4, #0
	cmp r5, r3
	bhs _080100D4
	movs r7, #0xff
	movs r6, #1
_080100B8:
	ldrh r1, [r2]
	adds r0, r1, #0
	ands r0, r7
	lsrs r1, r1, #0xa
	ands r1, r6
	cmp r0, #0
	beq _080100CC
	cmp r1, #0
	bne _080100CC
	adds r5, #1
_080100CC:
	adds r2, #2
	adds r4, #1
	cmp r4, r3
	blo _080100B8
_080100D4:
	adds r0, r5, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080100DC: .4byte gUnknown_083E7D40
_080100E0: .4byte gUnknown_083E7D1C

	thumb_func_start sub_080100E4
sub_080100E4: @ 0x080100E4
	ldr r1, _080100EC @ =gUnknown_0200C1D8
	adds r0, r0, r1
	bx lr
	.align 2, 0
_080100EC: .4byte gUnknown_0200C1D8

	thumb_func_start sub_080100F0
sub_080100F0: @ 0x080100F0
	ldr r0, _080100FC @ =gUnknown_0200C1A0
	movs r1, #0xd6
	lsls r1, r1, #2
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_080100FC: .4byte gUnknown_0200C1A0

	thumb_func_start sub_08010100
sub_08010100: @ 0x08010100
	ldr r2, _08010114 @ =gUnknown_0200C1A0
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	movs r0, #0xd6
	lsls r0, r0, #2
	adds r2, r2, r0
	strb r1, [r2]
	bx lr
	.align 2, 0
_08010114: .4byte gUnknown_0200C1A0

	thumb_func_start sub_08010118
sub_08010118: @ 0x08010118
	ldr r0, _0801011C @ =gUnknown_0200C1B4
	bx lr
	.align 2, 0
_0801011C: .4byte gUnknown_0200C1B4

	thumb_func_start sub_08010120
sub_08010120: @ 0x08010120
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004954
	movs r1, #0
	cmp r0, #0
	ble _08010134
	cmp r0, #7
	bgt _08010134
	movs r1, #1
_08010134:
	cmp r1, #0
	bne _0801013E
	ldr r0, _0801014C @ =gUnknown_0831B708
	bl sub_080050A8
_0801013E:
	ldr r0, _08010150 @ =gUnknown_0200C1B4
	adds r1, r4, #0
	bl strcpy
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801014C: .4byte gUnknown_0831B708
_08010150: .4byte gUnknown_0200C1B4

	thumb_func_start sub_08010154
sub_08010154: @ 0x08010154
	ldr r0, _08010158 @ =gUnknown_0200C1C4
	bx lr
	.align 2, 0
_08010158: .4byte gUnknown_0200C1C4

	thumb_func_start sub_0801015C
sub_0801015C: @ 0x0801015C
	push {lr}
	adds r1, r0, #0
	ldr r0, _0801016C @ =gUnknown_0200C1C4
	bl strcpy
	pop {r0}
	bx r0
	.align 2, 0
_0801016C: .4byte gUnknown_0200C1C4

	thumb_func_start sub_08010170
sub_08010170: @ 0x08010170
	ldr r1, _0801017C @ =gUnknown_0200C1B4
	adds r1, #0x24
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0801017C: .4byte gUnknown_0200C1B4

	thumb_func_start sub_08010180
sub_08010180: @ 0x08010180
	ldr r2, _0801018C @ =gUnknown_0200C1B4
	adds r2, #0x24
	adds r0, r0, r2
	strb r1, [r0]
	bx lr
	.align 2, 0
_0801018C: .4byte gUnknown_0200C1B4

	thumb_func_start sub_08010190
sub_08010190: @ 0x08010190
	ldr r0, _08010198 @ =gUnknown_0200C1A0
	ldr r0, [r0, #0x34]
	bx lr
	.align 2, 0
_08010198: .4byte gUnknown_0200C1A0

	thumb_func_start sub_0801019C
sub_0801019C: @ 0x0801019C
	push {lr}
	ldr r2, _080101B8 @ =gUnknown_0200C1B4
	movs r1, #0
	cmp r1, r0
	bge _080101A8
	adds r1, r0, #0
_080101A8:
	ldr r0, _080101BC @ =0x0098967F
	cmp r0, r1
	ble _080101B0
	adds r0, r1, #0
_080101B0:
	str r0, [r2, #0x20]
	pop {r0}
	bx r0
	.align 2, 0
_080101B8: .4byte gUnknown_0200C1B4
_080101BC: .4byte 0x0098967F

	thumb_func_start sub_080101C0
sub_080101C0: @ 0x080101C0
	push {lr}
	adds r1, r0, #0
	ldr r3, _080101E0 @ =gUnknown_0200C1B4
	ldr r0, [r3, #0x20]
	adds r1, r1, r0
	movs r2, #0
	cmp r2, r1
	bge _080101D2
	adds r2, r1, #0
_080101D2:
	ldr r0, _080101E4 @ =0x0098967F
	cmp r0, r2
	ble _080101DA
	adds r0, r2, #0
_080101DA:
	str r0, [r3, #0x20]
	pop {r0}
	bx r0
	.align 2, 0
_080101E0: .4byte gUnknown_0200C1B4
_080101E4: .4byte 0x0098967F

	thumb_func_start sub_080101E8
sub_080101E8: @ 0x080101E8
	push {lr}
	cmp r0, #0
	beq _080101F8
	ldr r0, _080101F4 @ =gUnknown_0200E200
	b _080101FA
	.align 2, 0
_080101F4: .4byte gUnknown_0200E200
_080101F8:
	ldr r0, _08010200 @ =gUnknown_0200E0C8
_080101FA:
	pop {r1}
	bx r1
	.align 2, 0
_08010200: .4byte gUnknown_0200E0C8

	thumb_func_start sub_08010204
sub_08010204: @ 0x08010204
	push {lr}
	adds r2, r0, #0
	ldrh r3, [r2]
	ldr r0, _08010224 @ =0x0000270E
	cmp r3, r0
	bhi _0801021E
	adds r0, r3, #1
	strh r0, [r2]
	cmp r1, #0
	beq _0801021E
	ldrh r0, [r2, #2]
	adds r0, #1
	strh r0, [r2, #2]
_0801021E:
	pop {r0}
	bx r0
	.align 2, 0
_08010224: .4byte 0x0000270E

	thumb_func_start sub_08010228
sub_08010228: @ 0x08010228
	push {r4, lr}
	movs r4, #0
_0801022C:
	adds r0, r4, #5
	bl sub_08010170
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_0800FE04
	cmp r0, #0
	beq _08010242
	movs r0, #1
	b _0801024A
_08010242:
	adds r4, #1
	cmp r4, #4
	bls _0801022C
	movs r0, #0
_0801024A:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_08010250
sub_08010250: @ 0x08010250
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	bl sub_08010228
	adds r5, r0, #0
	movs r0, #5
	bl sub_08010170
	adds r4, r0, #0
	movs r0, #6
	bl sub_08010170
	adds r3, r0, #0
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_08010430
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0801027C
sub_0801027C: @ 0x0801027C
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #8
	mov sb, r0
	bl sub_08010228
	mov r8, r0
	movs r0, #5
	bl sub_08010170
	adds r6, r0, #0
	movs r0, #6
	bl sub_08010170
	adds r5, r0, #0
	movs r0, #0xf
	bl sub_08010170
	adds r4, r0, #0
	bl sub_08010154
	str r4, [sp]
	str r0, [sp, #4]
	mov r0, sb
	mov r1, r8
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_08010490
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080102C8
sub_080102C8: @ 0x080102C8
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r4, r1, #0
	ldr r5, _080102F0 @ =gUnknown_0200E088
	bl sub_08000588
	cmp r4, #0
	beq _080102F8
	ldr r0, _080102F4 @ =0xFFFFE338
	adds r1, r5, r0
	adds r2, r5, #0
	adds r2, #0x40
	movs r3, #0x9c
	lsls r3, r3, #1
	adds r0, r2, #0
	adds r2, r3, #0
	bl sub_080002C4
	b _08010318
	.align 2, 0
_080102F0: .4byte gUnknown_0200E088
_080102F4: .4byte 0xFFFFE338
_080102F8:
	adds r0, r6, #0
	movs r1, #3
	bl SceEeprom_GetSubFileAdr
	adds r1, r0, #0
	movs r0, #0x88
	lsls r0, r0, #2
	adds r1, r1, r0
	adds r2, r5, #0
	adds r2, #0x40
	movs r3, #0x9c
	lsls r3, r3, #1
	adds r0, r2, #0
	adds r2, r3, #0
	bl sub_08010764
_08010318:
	movs r0, #0xbc
	lsls r0, r0, #1
	adds r2, r5, r0
	adds r0, r6, #0
	movs r1, #2
	bl sub_080109C0
	bl sub_080005B4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08010330
sub_08010330: @ 0x08010330
	push {r4, lr}
	adds r4, r1, #0
	bl sub_080101E8
	cmp r4, #0
	bne _08010340
	ldrh r0, [r0]
	b _08010342
_08010340:
	ldrh r0, [r0, #4]
_08010342:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_08010348
sub_08010348: @ 0x08010348
	push {r4, lr}
	adds r4, r1, #0
	bl sub_080101E8
	cmp r4, #0
	bne _08010358
	ldrh r0, [r0, #2]
	b _0801035A
_08010358:
	ldrh r0, [r0, #6]
_0801035A:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_08010360
sub_08010360: @ 0x08010360
	push {r4, r5, lr}
	adds r4, r1, #0
	adds r5, r2, #0
	cmp r4, #6
	bne _08010380
	ldr r0, _0801037C @ =gUnknown_0200E200
	lsls r1, r5, #2
	movs r2, #0x98
	lsls r2, r2, #1
	adds r0, r0, r2
	adds r1, r1, r0
	ldrh r0, [r1]
	b _080103A0
	.align 2, 0
_0801037C: .4byte gUnknown_0200E200
_08010380:
	bl sub_080101E8
	adds r1, r0, #0
	cmp r4, #0
	bne _08010394
	lsls r0, r5, #2
	adds r1, #8
	adds r1, r1, r0
	ldrh r0, [r1]
	b _080103A0
_08010394:
	cmp r4, #1
	bne _080103A0
	lsls r0, r5, #2
	adds r1, #0x9c
	adds r1, r1, r0
	ldrh r0, [r1]
_080103A0:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080103A8
sub_080103A8: @ 0x080103A8
	push {r4, r5, lr}
	adds r4, r1, #0
	adds r5, r2, #0
	cmp r4, #6
	bne _080103C8
	ldr r0, _080103C4 @ =gUnknown_0200E200
	lsls r1, r5, #2
	movs r2, #0x99
	lsls r2, r2, #1
	adds r0, r0, r2
	adds r1, r1, r0
	ldrh r0, [r1]
	b _080103E8
	.align 2, 0
_080103C4: .4byte gUnknown_0200E200
_080103C8:
	bl sub_080101E8
	adds r1, r0, #0
	cmp r4, #0
	bne _080103DC
	lsls r0, r5, #2
	adds r1, #0xa
	adds r1, r1, r0
	ldrh r0, [r1]
	b _080103E8
_080103DC:
	cmp r4, #1
	bne _080103E8
	lsls r0, r5, #2
	adds r1, #0x9e
	adds r1, r1, r0
	ldrh r0, [r1]
_080103E8:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080103F0
sub_080103F0: @ 0x080103F0
	ldr r0, _080103FC @ =gUnknown_0200E200
	movs r1, #0xb4
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bx lr
	.align 2, 0
_080103FC: .4byte gUnknown_0200E200

	thumb_func_start sub_08010400
sub_08010400: @ 0x08010400
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, _08010428 @ =gUnknown_0200E200
	movs r1, #0xb4
	lsls r1, r1, #2
	adds r0, r5, r1
	ldr r0, [r0]
	cmp r4, r0
	blo _08010418
	ldr r0, _0801042C @ =gUnknown_0831B72C
	bl sub_080050A8
_08010418:
	lsls r0, r4, #4
	movs r1, #0xc8
	lsls r1, r1, #1
	adds r0, r0, r1
	adds r0, r0, r5
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08010428: .4byte gUnknown_0200E200
_0801042C: .4byte gUnknown_0831B72C

	thumb_func_start sub_08010430
sub_08010430: @ 0x08010430
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r6, r2, #0
	adds r7, r3, #0
	ldr r5, _0801046C @ =gUnknown_0200C3C0
	cmp r4, #1
	bls _08010440
	movs r4, #0
_08010440:
	adds r0, r5, #0
	cmp r1, #0
	beq _08010448
	adds r0, #4
_08010448:
	adds r1, r4, #0
	bl sub_08010204
	lsls r0, r6, #2
	adds r0, #8
	adds r0, r0, r5
	adds r1, r4, #0
	bl sub_08010204
	lsls r0, r7, #2
	adds r0, #0x9c
	adds r0, r0, r5
	adds r1, r4, #0
	bl sub_08010204
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801046C: .4byte gUnknown_0200C3C0

	thumb_func_start sub_08010470
sub_08010470: @ 0x08010470
	push {lr}
	ldr r0, _0801048C @ =gUnknown_0200E088
	adds r2, r0, #0
	adds r2, #0x2c
	movs r1, #0
	strb r1, [r2]
	strb r1, [r0]
	adds r0, #0x30
	movs r1, #0x10
	movs r2, #0
	bl sub_08000498
	pop {r0}
	bx r0
	.align 2, 0
_0801048C: .4byte gUnknown_0200E088

	thumb_func_start sub_08010490
sub_08010490: @ 0x08010490
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	ldr r5, _080104B4 @ =gUnknown_0200E088
	cmp r4, #2
	bhi _080104D8
	adds r2, r5, #0
	adds r2, #0x2c
	ldrb r0, [r2]
	adds r1, r0, #0
	cmp r1, #4
	bls _080104BC
	ldr r0, _080104B8 @ =gUnknown_0831B748
	bl sub_080050A8
	b _080104E8
	.align 2, 0
_080104B4: .4byte gUnknown_0200E088
_080104B8: .4byte gUnknown_0831B748
_080104BC:
	cmp r4, #2
	bne _080104C2
	movs r4, #0
_080104C2:
	adds r0, #1
	strb r0, [r2]
	lsls r0, r1, #3
	adds r0, #4
	adds r0, r0, r5
	strb r4, [r0]
	strb r6, [r0, #4]
	strb r7, [r0, #1]
	strb r3, [r0, #2]
	ldr r1, [sp, #0x14]
	strb r1, [r0, #3]
_080104D8:
	adds r0, r5, #0
	adds r0, #0x30
	ldr r1, [sp, #0x18]
	movs r2, #0x10
	bl SafeStrcpy
	movs r0, #1
	strb r0, [r5]
_080104E8:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080104F0
sub_080104F0: @ 0x080104F0
	push {r4, lr}
	adds r4, r2, #0
	subs r1, r4, r1
	adds r2, r0, r1
	lsrs r0, r3, #2
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0801050C
	adds r3, #4
	movs r0, #5
	rsbs r0, r0, #0
	ands r4, r0
	ands r2, r0
_0801050C:
	adds r0, r2, #0
	adds r1, r4, #0
	adds r2, r3, #0
	bl sub_08010770
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0801051C
sub_0801051C: @ 0x0801051C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	mov r8, r1
	movs r1, #0xb4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r5, [r0]
	cmp r5, #0x13
	bls _08010538
_08010532:
	movs r0, #1
	rsbs r0, r0, #0
	b _08010574
_08010538:
	movs r6, #0
	cmp r6, r5
	bhs _08010558
	movs r0, #0xc8
	lsls r0, r0, #1
	adds r4, r7, r0
_08010544:
	adds r0, r4, #0
	mov r1, r8
	bl sub_08000D80
	cmp r0, #0
	bne _08010532
	adds r4, #0x10
	adds r6, #1
	cmp r6, r5
	blo _08010544
_08010558:
	lsls r0, r5, #4
	movs r1, #0xc8
	lsls r1, r1, #1
	adds r0, r0, r1
	adds r0, r7, r0
	mov r1, r8
	bl strcpy
	movs r0, #0xb4
	lsls r0, r0, #2
	adds r1, r7, r0
	adds r0, r5, #1
	str r0, [r1]
	adds r0, r5, #0
_08010574:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08010580
sub_08010580: @ 0x08010580
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	str r0, [sp]
	ldr r0, _080105E0 @ =gUnknown_0200E088
	mov sl, r0
	ldrb r0, [r0]
	cmp r0, #0
	bne _0801059A
	b _0801071C
_0801059A:
	ldr r0, [sp]
	movs r1, #2
	bl SceEeprom_GetSubFileAdr
	mov sb, r0
	movs r1, #0xb8
	lsls r1, r1, #2
	ldr r0, _080105E4 @ =gUnknown_02001CC0
	bl sub_0800459C
	mov r8, r0
	bl sub_08000588
	ldr r0, [sp]
	movs r1, #2
	mov r2, r8
	bl sub_080109C0
	mov r5, r8
	movs r7, #0
	ldr r1, _080105E8 @ =gUnknown_0200E0B4
	ldrb r1, [r1]
	cmp r7, r1
	bhs _0801062E
	mov r6, sl
	adds r6, #4
_080105CE:
	ldrb r4, [r6]
	ldrb r0, [r6, #4]
	cmp r0, #0
	beq _080105EC
	adds r0, r5, #4
	adds r1, r4, #0
	bl sub_08010204
	b _080105F4
	.align 2, 0
_080105E0: .4byte gUnknown_0200E088
_080105E4: .4byte gUnknown_02001CC0
_080105E8: .4byte gUnknown_0200E0B4
_080105EC:
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08010204
_080105F4:
	ldrb r0, [r6, #1]
	lsls r0, r0, #2
	adds r0, #8
	adds r0, r5, r0
	adds r1, r4, #0
	bl sub_08010204
	ldrb r0, [r6, #2]
	lsls r0, r0, #2
	adds r0, #0x9c
	adds r0, r5, r0
	adds r1, r4, #0
	bl sub_08010204
	ldrb r0, [r6, #3]
	lsls r0, r0, #2
	movs r1, #0x98
	lsls r1, r1, #1
	adds r0, r0, r1
	adds r0, r5, r0
	adds r1, r4, #0
	bl sub_08010204
	adds r6, #8
	adds r7, #1
	ldr r0, _0801072C @ =gUnknown_0200E0B4
	ldrb r0, [r0]
	cmp r7, r0
	blo _080105CE
_0801062E:
	adds r0, r5, #0
	ldr r1, _08010730 @ =gUnknown_0200E0B8
	bl sub_0801051C
	adds r6, r0, #0
	adds r2, r5, #0
	mov r0, sb
	mov r1, r8
	movs r3, #8
	bl sub_080104F0
	movs r7, #0
	ldr r1, _0801072C @ =gUnknown_0200E0B4
	ldrb r1, [r1]
	cmp r7, r1
	bhs _08010698
	mov r4, sl
	adds r4, #5
_08010652:
	ldrb r0, [r4]
	lsls r0, r0, #2
	adds r0, #8
	adds r2, r5, r0
	mov r0, sb
	mov r1, r8
	movs r3, #4
	bl sub_080104F0
	ldrb r0, [r4, #1]
	lsls r0, r0, #2
	adds r0, #0x9c
	adds r2, r5, r0
	mov r0, sb
	mov r1, r8
	movs r3, #4
	bl sub_080104F0
	ldrb r0, [r4, #2]
	lsls r0, r0, #2
	movs r1, #0x98
	lsls r1, r1, #1
	adds r0, r0, r1
	adds r2, r5, r0
	mov r0, sb
	mov r1, r8
	movs r3, #4
	bl sub_080104F0
	adds r4, #8
	adds r7, #1
	ldr r0, _0801072C @ =gUnknown_0200E0B4
	ldrb r0, [r0]
	cmp r7, r0
	blo _08010652
_08010698:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r6, r0
	beq _080106C4
	lsls r0, r6, #4
	movs r1, #0xc8
	lsls r1, r1, #1
	adds r0, r0, r1
	adds r2, r5, r0
	mov r0, sb
	mov r1, r8
	movs r3, #0x10
	bl sub_080104F0
	movs r0, #0xb4
	lsls r0, r0, #2
	adds r2, r5, r0
	mov r0, sb
	mov r1, r8
	movs r3, #8
	bl sub_080104F0
_080106C4:
	mov r2, r8
	ldr r0, [sp]
	movs r1, #2
	bl sub_08010C64
	movs r1, #0xb4
	lsls r1, r1, #2
	adds r0, r5, r1
	ldr r1, [r0]
	movs r0, #2
	bl sub_08010180
	ldrh r0, [r5]
	movs r1, #0xff
	cmp r1, r0
	ble _080106E6
	adds r1, r0, #0
_080106E6:
	movs r0, #3
	bl sub_08010180
	ldrh r0, [r5, #4]
	movs r1, #0xff
	cmp r1, r0
	ble _080106F6
	adds r1, r0, #0
_080106F6:
	movs r0, #4
	bl sub_08010180
	movs r0, #2
	bl sub_080100E4
	adds r2, r0, #0
	ldr r0, [sp]
	adds r1, r2, #0
	movs r2, #3
	bl sub_08011380
	bl sub_080005B4
	ldr r0, _08010734 @ =gUnknown_02001CC0
	bl sub_08004604
	bl sub_08010470
_0801071C:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801072C: .4byte gUnknown_0200E0B4
_08010730: .4byte gUnknown_0200E0B8
_08010734: .4byte gUnknown_02001CC0

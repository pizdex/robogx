.include "asm/macro.inc"
.syntax unified

	thumb_func_start sub_0803D388
sub_0803D388: @ 0x0803D388
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r2, #0
	cmp r0, #4
	bne _0803D3A4
	ldr r1, _0803D39C @ =gUnknown_0203C560
	ldr r0, _0803D3A0 @ =gUnknown_083D4774
	str r0, [r1]
	b _0803D3C0
	.align 2, 0
_0803D39C: .4byte gUnknown_0203C560
_0803D3A0: .4byte gUnknown_083D4774
_0803D3A4:
	cmp r0, #0x40
	bne _0803D3B8
	ldr r1, _0803D3B0 @ =gUnknown_0203C560
	ldr r0, _0803D3B4 @ =gUnknown_083D4780
	str r0, [r1]
	b _0803D3C0
	.align 2, 0
_0803D3B0: .4byte gUnknown_0203C560
_0803D3B4: .4byte gUnknown_083D4780
_0803D3B8:
	ldr r1, _0803D3C4 @ =gUnknown_0203C560
	ldr r0, _0803D3C8 @ =gUnknown_083D4774
	str r0, [r1]
	movs r2, #1
_0803D3C0:
	adds r0, r2, #0
	bx lr
	.align 2, 0
_0803D3C4: .4byte gUnknown_0203C560
_0803D3C8: .4byte gUnknown_083D4774

	thumb_func_start sub_0803D3CC
sub_0803D3CC: @ 0x0803D3CC
	ldr r1, _0803D3E8 @ =0x0203C47A
	ldrh r0, [r1]
	cmp r0, #0
	beq _0803D3E6
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0803D3E6
	ldr r1, _0803D3EC @ =0x0203C47C
	movs r0, #1
	strb r0, [r1]
_0803D3E6:
	bx lr
	.align 2, 0
_0803D3E8: .4byte 0x0203C47A
_0803D3EC: .4byte 0x0203C47C

	thumb_func_start sub_0803D3F0
sub_0803D3F0: @ 0x0803D3F0
	adds r2, r1, #0
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #3
	bhi _0803D424
	ldr r0, _0803D414 @ =gUnknown_0203C478
	strb r1, [r0]
	ldr r1, _0803D418 @ =gUnknown_0203C480
	ldrb r0, [r0]
	lsls r0, r0, #2
	ldr r3, _0803D41C @ =0x04000100
	adds r0, r0, r3
	str r0, [r1]
	ldr r0, _0803D420 @ =sub_0803D3CC+1
	str r0, [r2]
	movs r0, #0
	b _0803D426
	.align 2, 0
_0803D414: .4byte gUnknown_0203C478
_0803D418: .4byte gUnknown_0203C480
_0803D41C: .4byte 0x04000100
_0803D420: .4byte sub_0803D3CC+1
_0803D424:
	movs r0, #1
_0803D426:
	bx lr

	thumb_func_start sub_0803D428
sub_0803D428: @ 0x0803D428
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r2, _0803D494 @ =gUnknown_0203C484
	ldr r1, _0803D498 @ =0x04000208
	mov sb, r1
	ldrh r1, [r1]
	strh r1, [r2]
	movs r6, #0
	mov r2, sb
	strh r6, [r2]
	ldr r3, _0803D49C @ =gUnknown_0203C480
	mov r8, r3
	ldr r5, [r3]
	strh r6, [r5, #2]
	ldr r3, _0803D4A0 @ =0x04000202
	ldr r4, _0803D4A4 @ =gUnknown_0203C478
	ldrb r1, [r4]
	movs r2, #8
	adds r7, r2, #0
	lsls r7, r1
	adds r1, r7, #0
	strh r1, [r3]
	subs r3, #2
	ldrb r1, [r4]
	lsls r2, r1
	ldrh r1, [r3]
	orrs r1, r2
	strh r1, [r3]
	ldr r1, _0803D4A8 @ =gUnknown_0203C47C
	strb r6, [r1]
	ldr r2, _0803D4AC @ =gUnknown_0203C47A
	ldrh r1, [r0]
	strh r1, [r2]
	adds r0, #2
	ldrh r1, [r0]
	strh r1, [r5]
	adds r1, r5, #2
	mov r2, r8
	str r1, [r2]
	ldrh r0, [r0, #2]
	strh r0, [r5, #2]
	str r5, [r2]
	movs r0, #1
	mov r3, sb
	strh r0, [r3]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803D494: .4byte gUnknown_0203C484
_0803D498: .4byte 0x04000208
_0803D49C: .4byte gUnknown_0203C480
_0803D4A0: .4byte 0x04000202
_0803D4A4: .4byte gUnknown_0203C478
_0803D4A8: .4byte gUnknown_0203C47C
_0803D4AC: .4byte gUnknown_0203C47A

	thumb_func_start sub_0803D4B0
sub_0803D4B0: @ 0x0803D4B0
	ldr r3, _0803D4E0 @ =0x04000208
	movs r1, #0
	strh r1, [r3]
	ldr r2, _0803D4E4 @ =gUnknown_0203C480
	ldr r0, [r2]
	strh r1, [r0]
	adds r0, #2
	str r0, [r2]
	strh r1, [r0]
	subs r0, #2
	str r0, [r2]
	ldr r2, _0803D4E8 @ =0x04000200
	ldr r0, _0803D4EC @ =gUnknown_0203C478
	ldrb r0, [r0]
	movs r1, #8
	lsls r1, r0
	ldrh r0, [r2]
	bics r0, r1
	strh r0, [r2]
	ldr r0, _0803D4F0 @ =gUnknown_0203C484
	ldrh r0, [r0]
	strh r0, [r3]
	bx lr
	.align 2, 0
_0803D4E0: .4byte 0x04000208
_0803D4E4: .4byte gUnknown_0203C480
_0803D4E8: .4byte 0x04000200
_0803D4EC: .4byte gUnknown_0203C478
_0803D4F0: .4byte gUnknown_0203C484

	thumb_func_start sub_0803D4F4
sub_0803D4F4: @ 0x0803D4F4
	push {r4, r5, r6, lr}
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldr r4, _0803D554 @ =0x04000208
	ldrh r3, [r4]
	adds r6, r3, #0
	movs r3, #0
	strh r3, [r4]
	ldr r5, _0803D558 @ =0x04000204
	ldrh r4, [r5]
	ldr r3, _0803D55C @ =0x0000F8FF
	ands r4, r3
	ldr r3, _0803D560 @ =gUnknown_0203C560
	ldr r3, [r3]
	ldrh r3, [r3, #6]
	orrs r4, r3
	strh r4, [r5]
	ldr r3, _0803D564 @ =0x040000D4
	str r0, [r3]
	ldr r0, _0803D568 @ =0x040000D8
	str r1, [r0]
	ldr r1, _0803D56C @ =0x040000DC
	movs r0, #0x80
	lsls r0, r0, #0x18
	orrs r2, r0
	str r2, [r1]
	adds r1, #2
	movs r2, #0x80
	lsls r2, r2, #8
	adds r0, r2, #0
	ldrh r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _0803D548
	ldr r2, _0803D570 @ =0x040000DE
	movs r0, #0x80
	lsls r0, r0, #8
	adds r1, r0, #0
_0803D540:
	ldrh r0, [r2]
	ands r0, r1
	cmp r0, #0
	bne _0803D540
_0803D548:
	ldr r0, _0803D554 @ =0x04000208
	strh r6, [r0]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803D554: .4byte 0x04000208
_0803D558: .4byte 0x04000204
_0803D55C: .4byte 0x0000F8FF
_0803D560: .4byte gUnknown_0203C560
_0803D564: .4byte 0x040000D4
_0803D568: .4byte 0x040000D8
_0803D56C: .4byte 0x040000DC
_0803D570: .4byte 0x040000DE

	thumb_func_start sub_0803D574
sub_0803D574: @ 0x0803D574
	push {r4, r5, r6, lr}
	sub sp, #0x88
	adds r5, r1, #0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r0, _0803D58C @ =gUnknown_0203C560
	ldr r0, [r0]
	ldrh r0, [r0, #4]
	cmp r3, r0
	blo _0803D594
	ldr r0, _0803D590 @ =0x000080FF
	b _0803D616
	.align 2, 0
_0803D58C: .4byte gUnknown_0203C560
_0803D590: .4byte 0x000080FF
_0803D594:
	ldr r0, _0803D620 @ =gUnknown_0203C560
	adds r6, r0, #0
	ldr r0, [r0]
	ldrb r1, [r0, #8]
	lsls r0, r1, #1
	mov r4, sp
	adds r2, r0, r4
	adds r2, #2
	movs r4, #0
	cmp r4, r1
	bhs _0803D5BE
_0803D5AA:
	strh r3, [r2]
	subs r2, #2
	lsrs r3, r3, #1
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r0, [r6]
	ldrb r0, [r0, #8]
	cmp r4, r0
	blo _0803D5AA
_0803D5BE:
	movs r0, #1
	strh r0, [r2]
	subs r2, #2
	strh r0, [r2]
	movs r4, #0xd0
	lsls r4, r4, #0x14
	ldr r0, _0803D620 @ =gUnknown_0203C560
	ldr r0, [r0]
	ldrb r2, [r0, #8]
	adds r2, #3
	mov r0, sp
	adds r1, r4, #0
	bl sub_0803D4F4
	adds r0, r4, #0
	mov r1, sp
	movs r2, #0x44
	bl sub_0803D4F4
	add r2, sp, #8
	adds r5, #6
	movs r4, #0
	movs r6, #1
_0803D5EC:
	movs r1, #0
	movs r3, #0
_0803D5F0:
	lsls r1, r1, #0x11
	ldrh r0, [r2]
	ands r0, r6
	lsrs r1, r1, #0x10
	orrs r1, r0
	adds r2, #2
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0xf
	bls _0803D5F0
	strh r1, [r5]
	subs r5, #2
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _0803D5EC
	movs r0, #0
_0803D616:
	add sp, #0x88
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0803D620: .4byte gUnknown_0203C560

	thumb_func_start sub_0803D624
sub_0803D624: @ 0x0803D624
	push {r4, r5, lr}
	sub sp, #0xa4
	adds r5, r1, #0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r0, _0803D63C @ =gUnknown_0203C560
	ldr r0, [r0]
	ldrh r0, [r0, #4]
	cmp r4, r0
	blo _0803D644
	ldr r0, _0803D640 @ =0x000080FF
	b _0803D6E8
	.align 2, 0
_0803D63C: .4byte gUnknown_0203C560
_0803D640: .4byte 0x000080FF
_0803D644:
	ldr r0, _0803D684 @ =gUnknown_0203C560
	ldr r0, [r0]
	ldrb r0, [r0, #8]
	lsls r0, r0, #1
	mov r1, sp
	adds r3, r0, r1
	adds r3, #0x84
	movs r0, #0
	strh r0, [r3]
	subs r3, #2
	movs r1, #0
_0803D65A:
	ldrh r2, [r5]
	adds r5, #2
	movs r0, #0
_0803D660:
	strh r2, [r3]
	subs r3, #2
	lsrs r2, r2, #1
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xf
	bls _0803D660
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #3
	bls _0803D65A
	movs r1, #0
	ldr r0, _0803D684 @ =gUnknown_0203C560
	adds r2, r0, #0
	ldr r0, [r0]
	b _0803D696
	.align 2, 0
_0803D684: .4byte gUnknown_0203C560
_0803D688:
	strh r4, [r3]
	subs r3, #2
	lsrs r4, r4, #1
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	ldr r0, [r2]
_0803D696:
	ldrb r0, [r0, #8]
	cmp r1, r0
	blo _0803D688
	movs r0, #0
	strh r0, [r3]
	subs r3, #2
	movs r0, #1
	strh r0, [r3]
	movs r1, #0xd0
	lsls r1, r1, #0x14
	ldr r0, _0803D6F0 @ =gUnknown_0203C560
	ldr r0, [r0]
	ldrb r2, [r0, #8]
	adds r2, #0x43
	mov r0, sp
	bl sub_0803D4F4
	ldr r0, _0803D6F4 @ =gUnknown_083D478C
	bl sub_0803D428
	movs r4, #0
	movs r1, #0xd0
	lsls r1, r1, #0x14
	movs r3, #1
	ldr r2, _0803D6F8 @ =gUnknown_0203C47C
_0803D6C8:
	ldrh r0, [r1]
	ands r0, r3
	cmp r0, #0
	bne _0803D6E2
	ldrb r0, [r2]
	cmp r0, #0
	beq _0803D6C8
	ldrh r0, [r1]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0803D6E2
	ldr r4, _0803D6FC @ =0x0000C001
_0803D6E2:
	bl sub_0803D4B0
	adds r0, r4, #0
_0803D6E8:
	add sp, #0xa4
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0803D6F0: .4byte gUnknown_0203C560
_0803D6F4: .4byte gUnknown_083D478C
_0803D6F8: .4byte gUnknown_0203C47C
_0803D6FC: .4byte 0x0000C001

	thumb_func_start sub_0803D700
sub_0803D700: @ 0x0803D700
	push {r4, r5, lr}
	sub sp, #8
	adds r4, r1, #0
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	movs r5, #0
	ldr r0, _0803D71C @ =gUnknown_0203C560
	ldr r0, [r0]
	ldrh r0, [r0, #4]
	cmp r1, r0
	blo _0803D724
	ldr r0, _0803D720 @ =0x000080FF
	b _0803D74E
	.align 2, 0
_0803D71C: .4byte gUnknown_0203C560
_0803D720: .4byte 0x000080FF
_0803D724:
	adds r0, r1, #0
	mov r1, sp
	bl sub_0803D574
	mov r2, sp
	movs r3, #0
	b _0803D73C
_0803D732:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #3
	bhi _0803D74C
_0803D73C:
	ldrh r1, [r4]
	ldrh r0, [r2]
	adds r2, #2
	adds r4, #2
	cmp r1, r0
	beq _0803D732
	movs r5, #0x80
	lsls r5, r5, #8
_0803D74C:
	adds r0, r5, #0
_0803D74E:
	add sp, #8
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0803D758
sub_0803D758: @ 0x0803D758
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r6, #0
	b _0803D76A
_0803D764:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_0803D76A:
	cmp r6, #2
	bhi _0803D78E
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0803D624
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	bne _0803D764
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0803D700
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	bne _0803D764
_0803D78E:
	adds r0, r2, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0803D798
sub_0803D798: @ 0x0803D798
	bx r0
	nop

	thumb_func_start sub_0803D79C
sub_0803D79C: @ 0x0803D79C
	bx r1
	nop

	thumb_func_start sub_0803D7A0
sub_0803D7A0: @ 0x0803D7A0
	bx r2
	nop

	thumb_func_start sub_0803D7A4
sub_0803D7A4: @ 0x0803D7A4
	bx r3
	nop

	thumb_func_start sub_0803D7A8
sub_0803D7A8: @ 0x0803D7A8
	bx r4
	nop

	thumb_func_start sub_0803D7AC
sub_0803D7AC: @ 0x0803D7AC
	bx r5
	nop

	thumb_func_start sub_0803D7B0
sub_0803D7B0: @ 0x0803D7B0
	bx r6
	nop

	thumb_func_start sub_0803D7B4
sub_0803D7B4: @ 0x0803D7B4
	bx r7
	nop

	thumb_func_start sub_0803D7B8
sub_0803D7B8: @ 0x0803D7B8
	bx r8
	nop

	thumb_func_start sub_0803D7BC
sub_0803D7BC: @ 0x0803D7BC
	bx sb
	nop

	thumb_func_start sub_0803D7C0
sub_0803D7C0: @ 0x0803D7C0
	bx sl
	nop

	thumb_func_start sub_0803D7C4
sub_0803D7C4: @ 0x0803D7C4
	bx fp
	nop

	thumb_func_start sub_0803D7C8
sub_0803D7C8: @ 0x0803D7C8
	bx ip
	nop

	thumb_func_start sub_0803D7CC
sub_0803D7CC: @ 0x0803D7CC
	bx sp
	nop

	thumb_func_start sub_0803D7D0
sub_0803D7D0: @ 0x0803D7D0
	bx lr
	nop

	thumb_func_start sub_0803D7D4
sub_0803D7D4: @ 0x0803D7D4
	cmp r1, #0
	beq _0803D85C
	push {r4}
	adds r4, r0, #0
	eors r4, r1
	mov ip, r4
	movs r3, #1
	movs r2, #0
	cmp r1, #0
	bpl _0803D7EA
	rsbs r1, r1, #0
_0803D7EA:
	cmp r0, #0
	bpl _0803D7F0
	rsbs r0, r0, #0
_0803D7F0:
	cmp r0, r1
	blo _0803D84E
	movs r4, #1
	lsls r4, r4, #0x1c
_0803D7F8:
	cmp r1, r4
	bhs _0803D806
	cmp r1, r0
	bhs _0803D806
	lsls r1, r1, #4
	lsls r3, r3, #4
	b _0803D7F8
_0803D806:
	lsls r4, r4, #3
_0803D808:
	cmp r1, r4
	bhs _0803D816
	cmp r1, r0
	bhs _0803D816
	lsls r1, r1, #1
	lsls r3, r3, #1
	b _0803D808
_0803D816:
	cmp r0, r1
	blo _0803D81E
	subs r0, r0, r1
	orrs r2, r3
_0803D81E:
	lsrs r4, r1, #1
	cmp r0, r4
	blo _0803D82A
	subs r0, r0, r4
	lsrs r4, r3, #1
	orrs r2, r4
_0803D82A:
	lsrs r4, r1, #2
	cmp r0, r4
	blo _0803D836
	subs r0, r0, r4
	lsrs r4, r3, #2
	orrs r2, r4
_0803D836:
	lsrs r4, r1, #3
	cmp r0, r4
	blo _0803D842
	subs r0, r0, r4
	lsrs r4, r3, #3
	orrs r2, r4
_0803D842:
	cmp r0, #0
	beq _0803D84E
	lsrs r3, r3, #4
	beq _0803D84E
	lsrs r1, r1, #4
	b _0803D816
_0803D84E:
	adds r0, r2, #0
	mov r4, ip
	cmp r4, #0
	bpl _0803D858
	rsbs r0, r0, #0
_0803D858:
	pop {r4}
	mov pc, lr
_0803D85C:
	push {lr}
	bl sub_0803D868
	movs r0, #0
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0803D868
sub_0803D868: @ 0x0803D868
	mov pc, lr
	.align 2, 0

	thumb_func_start sub_0803D86C
sub_0803D86C: @ 0x0803D86C
	movs r3, #1
	cmp r1, #0
	beq _0803D930
	bpl _0803D876
	rsbs r1, r1, #0
_0803D876:
	push {r4}
	push {r0}
	cmp r0, #0
	bpl _0803D880
	rsbs r0, r0, #0
_0803D880:
	cmp r0, r1
	blo _0803D924
	movs r4, #1
	lsls r4, r4, #0x1c
_0803D888:
	cmp r1, r4
	bhs _0803D896
	cmp r1, r0
	bhs _0803D896
	lsls r1, r1, #4
	lsls r3, r3, #4
	b _0803D888
_0803D896:
	lsls r4, r4, #3
_0803D898:
	cmp r1, r4
	bhs _0803D8A6
	cmp r1, r0
	bhs _0803D8A6
	lsls r1, r1, #1
	lsls r3, r3, #1
	b _0803D898
_0803D8A6:
	movs r2, #0
	cmp r0, r1
	blo _0803D8AE
	subs r0, r0, r1
_0803D8AE:
	lsrs r4, r1, #1
	cmp r0, r4
	blo _0803D8C0
	subs r0, r0, r4
	mov ip, r3
	movs r4, #1
	rors r3, r4
	orrs r2, r3
	mov r3, ip
_0803D8C0:
	lsrs r4, r1, #2
	cmp r0, r4
	blo _0803D8D2
	subs r0, r0, r4
	mov ip, r3
	movs r4, #2
	rors r3, r4
	orrs r2, r3
	mov r3, ip
_0803D8D2:
	lsrs r4, r1, #3
	cmp r0, r4
	blo _0803D8E4
	subs r0, r0, r4
	mov ip, r3
	movs r4, #3
	rors r3, r4
	orrs r2, r3
	mov r3, ip
_0803D8E4:
	mov ip, r3
	cmp r0, #0
	beq _0803D8F2
	lsrs r3, r3, #4
	beq _0803D8F2
	lsrs r1, r1, #4
	b _0803D8A6
_0803D8F2:
	movs r4, #0xe
	lsls r4, r4, #0x1c
	ands r2, r4
	beq _0803D924
	mov r3, ip
	movs r4, #3
	rors r3, r4
	tst r2, r3
	beq _0803D908
	lsrs r4, r1, #3
	adds r0, r0, r4
_0803D908:
	mov r3, ip
	movs r4, #2
	rors r3, r4
	tst r2, r3
	beq _0803D916
	lsrs r4, r1, #2
	adds r0, r0, r4
_0803D916:
	mov r3, ip
	movs r4, #1
	rors r3, r4
	tst r2, r3
	beq _0803D924
	lsrs r4, r1, #1
	adds r0, r0, r4
_0803D924:
	pop {r4}
	cmp r4, #0
	bpl _0803D92C
	rsbs r0, r0, #0
_0803D92C:
	pop {r4}
	mov pc, lr
_0803D930:
	push {lr}
	bl sub_0803D868
	movs r0, #0
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0803D93C
sub_0803D93C: @ 0x0803D93C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp]
	str r1, [sp, #4]
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	ldr r3, [sp]
	ldr r0, _0803D9A8 @ =0x0000FFFF
	mov ip, r0
	adds r2, r3, #0
	ands r2, r0
	lsrs r3, r3, #0x10
	ldr r1, [sp, #8]
	adds r0, r1, #0
	mov r4, ip
	ands r0, r4
	lsrs r1, r1, #0x10
	adds r5, r2, #0
	muls r5, r0, r5
	adds r4, r2, #0
	muls r4, r1, r4
	adds r2, r3, #0
	muls r2, r0, r2
	muls r3, r1, r3
	lsrs r0, r5, #0x10
	adds r4, r4, r0
	adds r4, r4, r2
	cmp r4, r2
	bhs _0803D97C
	movs r0, #0x80
	lsls r0, r0, #9
	adds r3, r3, r0
_0803D97C:
	lsrs r0, r4, #0x10
	adds r7, r3, r0
	mov r1, ip
	ands r4, r1
	lsls r0, r4, #0x10
	ands r5, r1
	adds r6, r0, #0
	orrs r6, r5
	adds r1, r7, #0
	adds r0, r6, #0
	ldr r3, [sp]
	ldr r4, [sp, #0xc]
	adds r2, r3, #0
	muls r2, r4, r2
	ldr r5, [sp, #4]
	ldr r4, [sp, #8]
	adds r3, r5, #0
	muls r3, r4, r3
	adds r2, r2, r3
	adds r1, r7, r2
	add sp, #0x10
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0803D9A8: .4byte 0x0000FFFF

	thumb_func_start sub_0803D9AC
sub_0803D9AC: @ 0x0803D9AC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	adds r7, r2, #0
	adds r6, r3, #0
	mov sl, r0
	mov r8, r1
	cmp r6, #0
	beq _0803D9C6
	b _0803DC14
_0803D9C6:
	cmp r7, r8
	bls _0803DAA0
	ldr r0, _0803D9DC @ =0x0000FFFF
	cmp r7, r0
	bhi _0803D9E0
	movs r1, #0
	cmp r7, #0xff
	bls _0803D9EA
	movs r1, #8
	b _0803D9EA
	.align 2, 0
_0803D9DC: .4byte 0x0000FFFF
_0803D9E0:
	ldr r0, _0803DA94 @ =0x00FFFFFF
	movs r1, #0x18
	cmp r7, r0
	bhi _0803D9EA
	movs r1, #0x10
_0803D9EA:
	ldr r0, _0803DA98 @ =gUnknown_083D47EC
	lsrs r2, r1
	adds r0, r2, r0
	ldrb r0, [r0]
	adds r0, r0, r1
	movs r1, #0x20
	subs r2, r1, r0
	cmp r2, #0
	beq _0803DA16
	lsls r7, r2
	mov r0, r8
	lsls r0, r2
	mov r8, r0
	subs r1, r1, r2
	mov r0, sl
	lsrs r0, r1
	mov r1, r8
	orrs r1, r0
	mov r8, r1
	mov r3, sl
	lsls r3, r2
	mov sl, r3
_0803DA16:
	lsrs r4, r7, #0x10
	mov sb, r4
	ldr r0, _0803DA9C @ =0x0000FFFF
	ands r0, r7
	str r0, [sp]
	mov r0, r8
	mov r1, sb
	bl sub_0803DDFC
	adds r4, r0, #0
	mov r0, r8
	mov r1, sb
	bl sub_0803DD84
	adds r6, r0, #0
	ldr r1, [sp]
	adds r2, r6, #0
	muls r2, r1, r2
	lsls r4, r4, #0x10
	mov r3, sl
	lsrs r0, r3, #0x10
	orrs r4, r0
	cmp r4, r2
	bhs _0803DA56
	subs r6, #1
	adds r4, r4, r7
	cmp r4, r7
	blo _0803DA56
	cmp r4, r2
	bhs _0803DA56
	subs r6, #1
	adds r4, r4, r7
_0803DA56:
	subs r4, r4, r2
	adds r0, r4, #0
	mov r1, sb
	bl sub_0803DDFC
	adds r5, r0, #0
	adds r0, r4, #0
	mov r1, sb
	bl sub_0803DD84
	adds r1, r0, #0
	ldr r4, [sp]
	adds r2, r1, #0
	muls r2, r4, r2
	lsls r5, r5, #0x10
	ldr r0, _0803DA9C @ =0x0000FFFF
	mov r3, sl
	ands r3, r0
	orrs r5, r3
	cmp r5, r2
	bhs _0803DA8E
	subs r1, #1
	adds r5, r5, r7
	cmp r5, r7
	blo _0803DA8E
	cmp r5, r2
	bhs _0803DA8E
	subs r1, #1
_0803DA8E:
	lsls r6, r6, #0x10
	orrs r6, r1
	b _0803DC1A
	.align 2, 0
_0803DA94: .4byte 0x00FFFFFF
_0803DA98: .4byte gUnknown_083D47EC
_0803DA9C: .4byte 0x0000FFFF
_0803DAA0:
	cmp r2, #0
	bne _0803DAAE
	movs r0, #1
	movs r1, #0
	bl sub_0803DD84
	adds r7, r0, #0
_0803DAAE:
	adds r1, r7, #0
	ldr r0, _0803DAC0 @ =0x0000FFFF
	cmp r7, r0
	bhi _0803DAC4
	movs r2, #0
	cmp r7, #0xff
	bls _0803DACE
	movs r2, #8
	b _0803DACE
	.align 2, 0
_0803DAC0: .4byte 0x0000FFFF
_0803DAC4:
	ldr r0, _0803DAEC @ =0x00FFFFFF
	movs r2, #0x18
	cmp r7, r0
	bhi _0803DACE
	movs r2, #0x10
_0803DACE:
	ldr r0, _0803DAF0 @ =gUnknown_083D47EC
	lsrs r1, r2
	adds r0, r1, r0
	ldrb r0, [r0]
	adds r0, r0, r2
	movs r1, #0x20
	subs r2, r1, r0
	cmp r2, #0
	bne _0803DAF4
	mov r0, r8
	subs r0, r0, r7
	mov r8, r0
	movs r1, #1
	str r1, [sp, #4]
	b _0803DB92
	.align 2, 0
_0803DAEC: .4byte 0x00FFFFFF
_0803DAF0: .4byte gUnknown_083D47EC
_0803DAF4:
	subs r1, r1, r2
	lsls r7, r2
	mov r5, r8
	lsrs r5, r1
	mov r3, r8
	lsls r3, r2
	mov r0, sl
	lsrs r0, r1
	orrs r3, r0
	mov r8, r3
	mov r4, sl
	lsls r4, r2
	mov sl, r4
	lsrs r0, r7, #0x10
	mov sb, r0
	ldr r1, _0803DC10 @ =0x0000FFFF
	ands r1, r7
	str r1, [sp, #8]
	adds r0, r5, #0
	mov r1, sb
	bl sub_0803DDFC
	adds r4, r0, #0
	adds r0, r5, #0
	mov r1, sb
	bl sub_0803DD84
	adds r6, r0, #0
	ldr r2, [sp, #8]
	adds r1, r6, #0
	muls r1, r2, r1
	lsls r4, r4, #0x10
	mov r3, r8
	lsrs r0, r3, #0x10
	orrs r4, r0
	cmp r4, r1
	bhs _0803DB4E
	subs r6, #1
	adds r4, r4, r7
	cmp r4, r7
	blo _0803DB4E
	cmp r4, r1
	bhs _0803DB4E
	subs r6, #1
	adds r4, r4, r7
_0803DB4E:
	subs r4, r4, r1
	adds r0, r4, #0
	mov r1, sb
	bl sub_0803DDFC
	adds r5, r0, #0
	adds r0, r4, #0
	mov r1, sb
	bl sub_0803DD84
	adds r2, r0, #0
	ldr r4, [sp, #8]
	adds r1, r2, #0
	muls r1, r4, r1
	lsls r5, r5, #0x10
	ldr r0, _0803DC10 @ =0x0000FFFF
	mov r3, r8
	ands r3, r0
	orrs r5, r3
	cmp r5, r1
	bhs _0803DB88
	subs r2, #1
	adds r5, r5, r7
	cmp r5, r7
	blo _0803DB88
	cmp r5, r1
	bhs _0803DB88
	subs r2, #1
	adds r5, r5, r7
_0803DB88:
	lsls r6, r6, #0x10
	orrs r6, r2
	str r6, [sp, #4]
	subs r1, r5, r1
	mov r8, r1
_0803DB92:
	lsrs r4, r7, #0x10
	mov sb, r4
	ldr r0, _0803DC10 @ =0x0000FFFF
	ands r0, r7
	str r0, [sp, #0xc]
	mov r0, r8
	mov r1, sb
	bl sub_0803DDFC
	adds r4, r0, #0
	mov r0, r8
	mov r1, sb
	bl sub_0803DD84
	adds r6, r0, #0
	ldr r1, [sp, #0xc]
	adds r2, r6, #0
	muls r2, r1, r2
	lsls r4, r4, #0x10
	mov r3, sl
	lsrs r0, r3, #0x10
	orrs r4, r0
	cmp r4, r2
	bhs _0803DBD2
	subs r6, #1
	adds r4, r4, r7
	cmp r4, r7
	blo _0803DBD2
	cmp r4, r2
	bhs _0803DBD2
	subs r6, #1
	adds r4, r4, r7
_0803DBD2:
	subs r4, r4, r2
	adds r0, r4, #0
	mov r1, sb
	bl sub_0803DDFC
	adds r5, r0, #0
	adds r0, r4, #0
	mov r1, sb
	bl sub_0803DD84
	adds r1, r0, #0
	ldr r4, [sp, #0xc]
	adds r2, r1, #0
	muls r2, r4, r2
	lsls r5, r5, #0x10
	ldr r0, _0803DC10 @ =0x0000FFFF
	mov r3, sl
	ands r3, r0
	orrs r5, r3
	cmp r5, r2
	bhs _0803DC0A
	subs r1, #1
	adds r5, r5, r7
	cmp r5, r7
	blo _0803DC0A
	cmp r5, r2
	bhs _0803DC0A
	subs r1, #1
_0803DC0A:
	lsls r6, r6, #0x10
	orrs r6, r1
	b _0803DD6A
	.align 2, 0
_0803DC10: .4byte 0x0000FFFF
_0803DC14:
	cmp r6, r8
	bls _0803DC20
	movs r6, #0
_0803DC1A:
	movs r4, #0
	str r4, [sp, #4]
	b _0803DD6A
_0803DC20:
	adds r1, r6, #0
	ldr r0, _0803DC34 @ =0x0000FFFF
	cmp r6, r0
	bhi _0803DC38
	movs r2, #0
	cmp r6, #0xff
	bls _0803DC42
	movs r2, #8
	b _0803DC42
	.align 2, 0
_0803DC34: .4byte 0x0000FFFF
_0803DC38:
	ldr r0, _0803DC64 @ =0x00FFFFFF
	movs r2, #0x18
	cmp r6, r0
	bhi _0803DC42
	movs r2, #0x10
_0803DC42:
	ldr r0, _0803DC68 @ =gUnknown_083D47EC
	lsrs r1, r2
	adds r0, r1, r0
	ldrb r0, [r0]
	adds r0, r0, r2
	movs r1, #0x20
	subs r2, r1, r0
	cmp r2, #0
	bne _0803DC70
	cmp r8, r6
	bhi _0803DC5C
	cmp sl, r7
	blo _0803DC6C
_0803DC5C:
	movs r6, #1
	mov r1, sl
	b _0803DD64
	.align 2, 0
_0803DC64: .4byte 0x00FFFFFF
_0803DC68: .4byte gUnknown_083D47EC
_0803DC6C:
	movs r6, #0
	b _0803DD66
_0803DC70:
	subs r1, r1, r2
	lsls r6, r2
	adds r0, r7, #0
	lsrs r0, r1
	orrs r6, r0
	lsls r7, r2
	mov r5, r8
	lsrs r5, r1
	mov r3, r8
	lsls r3, r2
	mov r0, sl
	lsrs r0, r1
	orrs r3, r0
	mov r8, r3
	mov r4, sl
	lsls r4, r2
	mov sl, r4
	lsrs r0, r6, #0x10
	mov sb, r0
	ldr r1, _0803DD80 @ =0x0000FFFF
	ands r1, r6
	str r1, [sp, #0x10]
	adds r0, r5, #0
	mov r1, sb
	bl sub_0803DDFC
	adds r4, r0, #0
	adds r0, r5, #0
	mov r1, sb
	bl sub_0803DD84
	adds r3, r0, #0
	ldr r2, [sp, #0x10]
	adds r1, r3, #0
	muls r1, r2, r1
	lsls r4, r4, #0x10
	mov r2, r8
	lsrs r0, r2, #0x10
	orrs r4, r0
	cmp r4, r1
	bhs _0803DCD2
	subs r3, #1
	adds r4, r4, r6
	cmp r4, r6
	blo _0803DCD2
	cmp r4, r1
	bhs _0803DCD2
	subs r3, #1
	adds r4, r4, r6
_0803DCD2:
	subs r4, r4, r1
	adds r0, r4, #0
	mov r1, sb
	str r3, [sp, #0x1c]
	bl sub_0803DDFC
	adds r5, r0, #0
	adds r0, r4, #0
	mov r1, sb
	bl sub_0803DD84
	adds r2, r0, #0
	ldr r4, [sp, #0x10]
	adds r1, r2, #0
	muls r1, r4, r1
	lsls r5, r5, #0x10
	ldr r0, _0803DD80 @ =0x0000FFFF
	mov r4, r8
	ands r4, r0
	orrs r5, r4
	ldr r3, [sp, #0x1c]
	cmp r5, r1
	bhs _0803DD10
	subs r2, #1
	adds r5, r5, r6
	cmp r5, r6
	blo _0803DD10
	cmp r5, r1
	bhs _0803DD10
	subs r2, #1
	adds r5, r5, r6
_0803DD10:
	lsls r6, r3, #0x10
	orrs r6, r2
	subs r1, r5, r1
	mov r8, r1
	ldr r0, _0803DD80 @ =0x0000FFFF
	mov sb, r0
	adds r1, r6, #0
	ands r1, r0
	lsrs r3, r6, #0x10
	adds r0, r7, #0
	mov r2, sb
	ands r0, r2
	lsrs r2, r7, #0x10
	adds r5, r1, #0
	muls r5, r0, r5
	adds r4, r1, #0
	muls r4, r2, r4
	adds r1, r3, #0
	muls r1, r0, r1
	muls r3, r2, r3
	lsrs r0, r5, #0x10
	adds r4, r4, r0
	adds r4, r4, r1
	cmp r4, r1
	bhs _0803DD48
	movs r0, #0x80
	lsls r0, r0, #9
	adds r3, r3, r0
_0803DD48:
	lsrs r0, r4, #0x10
	adds r3, r3, r0
	mov r1, sb
	ands r4, r1
	lsls r0, r4, #0x10
	ands r5, r1
	adds r1, r0, r5
	cmp r3, r8
	bhi _0803DD62
	cmp r3, r8
	bne _0803DD66
	cmp r1, sl
	bls _0803DD66
_0803DD62:
	subs r6, #1
_0803DD64:
	subs r0, r1, r7
_0803DD66:
	movs r2, #0
	str r2, [sp, #4]
_0803DD6A:
	str r6, [sp, #0x14]
	ldr r3, [sp, #4]
	str r3, [sp, #0x18]
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0803DD80: .4byte 0x0000FFFF

	thumb_func_start sub_0803DD84
sub_0803DD84: @ 0x0803DD84
	cmp r1, #0
	beq _0803DDF2
	movs r3, #1
	movs r2, #0
	push {r4}
	cmp r0, r1
	blo _0803DDEC
	movs r4, #1
	lsls r4, r4, #0x1c
_0803DD96:
	cmp r1, r4
	bhs _0803DDA4
	cmp r1, r0
	bhs _0803DDA4
	lsls r1, r1, #4
	lsls r3, r3, #4
	b _0803DD96
_0803DDA4:
	lsls r4, r4, #3
_0803DDA6:
	cmp r1, r4
	bhs _0803DDB4
	cmp r1, r0
	bhs _0803DDB4
	lsls r1, r1, #1
	lsls r3, r3, #1
	b _0803DDA6
_0803DDB4:
	cmp r0, r1
	blo _0803DDBC
	subs r0, r0, r1
	orrs r2, r3
_0803DDBC:
	lsrs r4, r1, #1
	cmp r0, r4
	blo _0803DDC8
	subs r0, r0, r4
	lsrs r4, r3, #1
	orrs r2, r4
_0803DDC8:
	lsrs r4, r1, #2
	cmp r0, r4
	blo _0803DDD4
	subs r0, r0, r4
	lsrs r4, r3, #2
	orrs r2, r4
_0803DDD4:
	lsrs r4, r1, #3
	cmp r0, r4
	blo _0803DDE0
	subs r0, r0, r4
	lsrs r4, r3, #3
	orrs r2, r4
_0803DDE0:
	cmp r0, #0
	beq _0803DDEC
	lsrs r3, r3, #4
	beq _0803DDEC
	lsrs r1, r1, #4
	b _0803DDB4
_0803DDEC:
	adds r0, r2, #0
	pop {r4}
	mov pc, lr
_0803DDF2:
	push {lr}
	bl sub_0803D868
	movs r0, #0
	pop {pc}

	thumb_func_start sub_0803DDFC
sub_0803DDFC: @ 0x0803DDFC
	cmp r1, #0
	beq _0803DEB2
	movs r3, #1
	cmp r0, r1
	bhs _0803DE08
	mov pc, lr
_0803DE08:
	push {r4}
	movs r4, #1
	lsls r4, r4, #0x1c
_0803DE0E:
	cmp r1, r4
	bhs _0803DE1C
	cmp r1, r0
	bhs _0803DE1C
	lsls r1, r1, #4
	lsls r3, r3, #4
	b _0803DE0E
_0803DE1C:
	lsls r4, r4, #3
_0803DE1E:
	cmp r1, r4
	bhs _0803DE2C
	cmp r1, r0
	bhs _0803DE2C
	lsls r1, r1, #1
	lsls r3, r3, #1
	b _0803DE1E
_0803DE2C:
	movs r2, #0
	cmp r0, r1
	blo _0803DE34
	subs r0, r0, r1
_0803DE34:
	lsrs r4, r1, #1
	cmp r0, r4
	blo _0803DE46
	subs r0, r0, r4
	mov ip, r3
	movs r4, #1
	rors r3, r4
	orrs r2, r3
	mov r3, ip
_0803DE46:
	lsrs r4, r1, #2
	cmp r0, r4
	blo _0803DE58
	subs r0, r0, r4
	mov ip, r3
	movs r4, #2
	rors r3, r4
	orrs r2, r3
	mov r3, ip
_0803DE58:
	lsrs r4, r1, #3
	cmp r0, r4
	blo _0803DE6A
	subs r0, r0, r4
	mov ip, r3
	movs r4, #3
	rors r3, r4
	orrs r2, r3
	mov r3, ip
_0803DE6A:
	mov ip, r3
	cmp r0, #0
	beq _0803DE78
	lsrs r3, r3, #4
	beq _0803DE78
	lsrs r1, r1, #4
	b _0803DE2C
_0803DE78:
	movs r4, #0xe
	lsls r4, r4, #0x1c
	ands r2, r4
	bne _0803DE84
	pop {r4}
	mov pc, lr
_0803DE84:
	mov r3, ip
	movs r4, #3
	rors r3, r4
	tst r2, r3
	beq _0803DE92
	lsrs r4, r1, #3
	adds r0, r0, r4
_0803DE92:
	mov r3, ip
	movs r4, #2
	rors r3, r4
	tst r2, r3
	beq _0803DEA0
	lsrs r4, r1, #2
	adds r0, r0, r4
_0803DEA0:
	mov r3, ip
	movs r4, #1
	rors r3, r4
	tst r2, r3
	beq _0803DEAE
	lsrs r4, r1, #1
	adds r0, r0, r4
_0803DEAE:
	pop {r4}
	mov pc, lr
_0803DEB2:
	push {lr}
	bl sub_0803D868
	movs r0, #0
	pop {pc}

	thumb_func_start sub_0803DEBC
sub_0803DEBC: @ 0x0803DEBC
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r5, #0
	adds r3, r1, #0
	cmp r2, #0xf
	bls _0803DEFC
	adds r0, r3, #0
	orrs r0, r5
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _0803DEFC
	adds r1, r5, #0
_0803DED6:
	ldm r3!, {r0}
	stm r1!, {r0}
	ldm r3!, {r0}
	stm r1!, {r0}
	ldm r3!, {r0}
	stm r1!, {r0}
	ldm r3!, {r0}
	stm r1!, {r0}
	subs r2, #0x10
	cmp r2, #0xf
	bhi _0803DED6
	cmp r2, #3
	bls _0803DEFA
_0803DEF0:
	ldm r3!, {r0}
	stm r1!, {r0}
	subs r2, #4
	cmp r2, #3
	bhi _0803DEF0
_0803DEFA:
	adds r4, r1, #0
_0803DEFC:
	subs r2, #1
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	beq _0803DF16
	adds r1, r0, #0
_0803DF08:
	ldrb r0, [r3]
	strb r0, [r4]
	adds r3, #1
	adds r4, #1
	subs r2, #1
	cmp r2, r1
	bne _0803DF08
_0803DF16:
	adds r0, r5, #0
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0803DF1C
sub_0803DF1C: @ 0x0803DF1C
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r3, r5, #0
	cmp r2, #3
	bls _0803DF62
	movs r0, #3
	ands r0, r5
	cmp r0, #0
	bne _0803DF62
	adds r1, r5, #0
	movs r0, #0xff
	ands r4, r0
	lsls r3, r4, #8
	orrs r3, r4
	lsls r0, r3, #0x10
	orrs r3, r0
	cmp r2, #0xf
	bls _0803DF56
_0803DF42:
	stm r1!, {r3}
	stm r1!, {r3}
	stm r1!, {r3}
	stm r1!, {r3}
	subs r2, #0x10
	cmp r2, #0xf
	bhi _0803DF42
	b _0803DF56
_0803DF52:
	stm r1!, {r3}
	subs r2, #4
_0803DF56:
	cmp r2, #3
	bhi _0803DF52
	adds r3, r1, #0
	b _0803DF62
_0803DF5E:
	strb r4, [r3]
	adds r3, #1
_0803DF62:
	adds r0, r2, #0
	subs r2, #1
	cmp r0, #0
	bne _0803DF5E
	adds r0, r5, #0
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0803DF70
sub_0803DF70: @ 0x0803DF70
	ldr r1, _0803DF78 @ =gUnknown_030002EC
	ldr r1, [r1]
	str r0, [r1, #0x58]
	bx lr
	.align 2, 0
_0803DF78: .4byte gUnknown_030002EC

	thumb_func_start sub_0803DF7C
sub_0803DF7C: @ 0x0803DF7C
	ldr r0, _0803DF94 @ =gUnknown_030002EC
	ldr r2, [r0]
	ldr r1, [r2, #0x58]
	ldr r0, _0803DF98 @ =0x41C64E6D
	muls r0, r1, r0
	ldr r1, _0803DF9C @ =0x00003039
	adds r0, r0, r1
	str r0, [r2, #0x58]
	ldr r1, _0803DFA0 @ =0x7FFFFFFF
	ands r0, r1
	bx lr
	.align 2, 0
_0803DF94: .4byte gUnknown_030002EC
_0803DF98: .4byte 0x41C64E6D
_0803DF9C: .4byte 0x00003039
_0803DFA0: .4byte 0x7FFFFFFF

	thumb_func_start sub_0803DFA4
sub_0803DFA4: @ 0x0803DFA4
	push {r2, r3}
	push {r4, r5, lr}
	sub sp, #0x58
	ldr r4, [sp, #0x64]
	mov r3, sp
	movs r5, #0
	movs r2, #0x82
	lsls r2, r2, #2
	strh r2, [r3, #0xc]
	str r1, [sp]
	str r1, [sp, #0x10]
	ldr r1, _0803DFDC @ =0x7FFFFFFF
	str r1, [sp, #8]
	str r1, [sp, #0x14]
	str r0, [sp, #0x54]
	add r2, sp, #0x68
	mov r0, sp
	adds r1, r4, #0
	bl sub_0803E2A4
	ldr r1, [sp]
	strb r5, [r1]
	add sp, #0x58
	pop {r4, r5}
	pop {r3}
	add sp, #8
	bx r3
	.align 2, 0
_0803DFDC: .4byte 0x7FFFFFFF

	thumb_func_start sub_0803DFE0
sub_0803DFE0: @ 0x0803DFE0
	push {r1, r2, r3}
	push {r4, lr}
	sub sp, #0x58
	ldr r1, [sp, #0x60]
	mov r3, sp
	movs r4, #0
	movs r2, #0x82
	lsls r2, r2, #2
	strh r2, [r3, #0xc]
	str r0, [sp]
	str r0, [sp, #0x10]
	ldr r0, _0803E018 @ =0x7FFFFFFF
	str r0, [sp, #8]
	str r0, [sp, #0x14]
	ldr r0, _0803E01C @ =gUnknown_030002EC
	ldr r0, [r0]
	str r0, [sp, #0x54]
	add r2, sp, #0x64
	mov r0, sp
	bl sub_0803E2A4
	ldr r1, [sp]
	strb r4, [r1]
	add sp, #0x58
	pop {r4}
	pop {r3}
	add sp, #0xc
	bx r3
	.align 2, 0
_0803E018: .4byte 0x7FFFFFFF
_0803E01C: .4byte gUnknown_030002EC

	thumb_func_start sub_0803E020
sub_0803E020: @ 0x0803E020
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r3, r6, #0
	adds r2, r1, #0
	adds r0, r2, #0
	orrs r0, r6
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _0803E058
	ldr r1, [r2]
	ldr r5, _0803E040 @ =0xFEFEFEFF
	adds r0, r1, r5
	bics r0, r1
	ldr r4, _0803E044 @ =0x80808080
	b _0803E052
	.align 2, 0
_0803E040: .4byte 0xFEFEFEFF
_0803E044: .4byte 0x80808080
_0803E048:
	ldm r2!, {r0}
	stm r3!, {r0}
	ldr r1, [r2]
	adds r0, r1, r5
	bics r0, r1
_0803E052:
	ands r0, r4
	cmp r0, #0
	beq _0803E048
_0803E058:
	ldrb r0, [r2]
	strb r0, [r3]
	lsls r0, r0, #0x18
	adds r2, #1
	adds r3, #1
	cmp r0, #0
	bne _0803E058
	adds r0, r6, #0
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_0803E06C
sub_0803E06C: @ 0x0803E06C
	push {r4, r5, lr}
	adds r1, r0, #0
	adds r5, r1, #0
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _0803E0A4
	adds r2, r1, #0
	ldr r1, [r2]
	ldr r4, _0803E088 @ =0xFEFEFEFF
	adds r0, r1, r4
	bics r0, r1
	ldr r3, _0803E08C @ =0x80808080
	b _0803E098
	.align 2, 0
_0803E088: .4byte 0xFEFEFEFF
_0803E08C: .4byte 0x80808080
_0803E090:
	adds r2, #4
	ldr r1, [r2]
	adds r0, r1, r4
	bics r0, r1
_0803E098:
	ands r0, r3
	cmp r0, #0
	beq _0803E090
	adds r1, r2, #0
	b _0803E0A4
_0803E0A2:
	adds r1, #1
_0803E0A4:
	ldrb r0, [r1]
	cmp r0, #0
	bne _0803E0A2
	subs r0, r1, r5
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0803E0B0
sub_0803E0B0: @ 0x0803E0B0
	push {r4, r5, r6, r7, lr}
	adds r3, r0, #0
	adds r4, r1, #0
	adds r7, r3, #0
	movs r0, #3
	ands r0, r7
	cmp r0, #0
	bne _0803E0E2
	ldr r1, [r7]
	ldr r6, _0803E0CC @ =0xFEFEFEFF
	adds r0, r1, r6
	bics r0, r1
	ldr r5, _0803E0D0 @ =0x80808080
	b _0803E0DC
	.align 2, 0
_0803E0CC: .4byte 0xFEFEFEFF
_0803E0D0: .4byte 0x80808080
_0803E0D4:
	adds r3, #4
	ldr r1, [r3]
	adds r0, r1, r6
	bics r0, r1
_0803E0DC:
	ands r0, r5
	cmp r0, #0
	beq _0803E0D4
_0803E0E2:
	ldrb r0, [r3]
	subs r1, r2, #1
	cmp r0, #0
	beq _0803E0F2
_0803E0EA:
	adds r3, #1
	ldrb r0, [r3]
	cmp r0, #0
	bne _0803E0EA
_0803E0F2:
	adds r0, r2, #0
	adds r2, r1, #0
	b _0803E102
_0803E0F8:
	cmp r2, #0
	bne _0803E0FE
	strb r2, [r3]
_0803E0FE:
	adds r0, r2, #0
	subs r2, #1
_0803E102:
	cmp r0, #0
	beq _0803E114
	ldrb r0, [r4]
	strb r0, [r3]
	lsls r0, r0, #0x18
	adds r4, #1
	adds r3, #1
	cmp r0, #0
	bne _0803E0F8
_0803E114:
	adds r0, r7, #0
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_0803E118
sub_0803E118: @ 0x0803E118
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r4, r1, #0
	cmp r2, #0
	beq _0803E184
	adds r0, r6, #0
	orrs r0, r4
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _0803E168
	adds r3, r6, #0
	adds r5, r4, #0
	cmp r2, #3
	bls _0803E164
	ldr r1, [r6]
	ldr r0, [r4]
	cmp r1, r0
	bne _0803E164
	ldr r6, _0803E174 @ =0xFEFEFEFF
	ldr r4, _0803E178 @ =0x80808080
_0803E142:
	subs r2, #4
	cmp r2, #0
	beq _0803E184
	ldr r1, [r3]
	adds r0, r1, r6
	bics r0, r1
	ands r0, r4
	cmp r0, #0
	bne _0803E184
	adds r3, #4
	adds r5, #4
	cmp r2, #3
	bls _0803E164
	ldr r1, [r3]
	ldr r0, [r5]
	cmp r1, r0
	beq _0803E142
_0803E164:
	adds r6, r3, #0
	adds r4, r5, #0
_0803E168:
	adds r0, r2, #0
	subs r2, #1
	cmp r0, #0
	beq _0803E196
	b _0803E18E
	.align 2, 0
_0803E174: .4byte 0xFEFEFEFF
_0803E178: .4byte 0x80808080
_0803E17C:
	cmp r2, #0
	beq _0803E184
	cmp r0, #0
	bne _0803E188
_0803E184:
	movs r0, #0
	b _0803E19C
_0803E188:
	adds r6, #1
	adds r4, #1
	subs r2, #1
_0803E18E:
	ldrb r0, [r6]
	ldrb r1, [r4]
	cmp r0, r1
	beq _0803E17C
_0803E196:
	ldrb r6, [r6]
	ldrb r4, [r4]
	subs r0, r6, r4
_0803E19C:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_0803E1A0
sub_0803E1A0: @ 0x0803E1A0
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r4, r7, #0
	adds r3, r1, #0
	adds r0, r3, #0
	orrs r0, r7
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _0803E1E2
	cmp r2, #3
	bls _0803E1E2
	ldr r1, [r3]
	ldr r6, _0803E1C4 @ =0xFEFEFEFF
	adds r0, r1, r6
	bics r0, r1
	ldr r5, _0803E1C8 @ =0x80808080
	b _0803E1DC
	.align 2, 0
_0803E1C4: .4byte 0xFEFEFEFF
_0803E1C8: .4byte 0x80808080
_0803E1CC:
	subs r2, #4
	ldm r3!, {r0}
	stm r4!, {r0}
	cmp r2, #3
	bls _0803E1E2
	ldr r1, [r3]
	adds r0, r1, r6
	bics r0, r1
_0803E1DC:
	ands r0, r5
	cmp r0, #0
	beq _0803E1CC
_0803E1E2:
	cmp r2, #0
	beq _0803E1F6
	subs r2, #1
	ldrb r0, [r3]
	strb r0, [r4]
	lsls r0, r0, #0x18
	adds r3, #1
	adds r4, #1
	cmp r0, #0
	bne _0803E1E2
_0803E1F6:
	adds r0, r2, #0
	subs r2, #1
	cmp r0, #0
	beq _0803E20C
	movs r1, #0
_0803E200:
	strb r1, [r4]
	adds r4, #1
	adds r0, r2, #0
	subs r2, #1
	cmp r0, #0
	bne _0803E200
_0803E20C:
	adds r0, r7, #0
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_0803E210
sub_0803E210: @ 0x0803E210
	push {r4, lr}
	adds r4, r1, #0
	ldr r1, [r4, #8]
	cmp r1, #0
	beq _0803E228
	adds r1, r4, #0
	bl sub_080406EC
	movs r1, #0
	str r1, [r4, #8]
	str r1, [r4, #4]
	b _0803E22C
_0803E228:
	str r1, [r4, #4]
	movs r0, #0
_0803E22C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0803E230
sub_0803E230: @ 0x0803E230
	push {r4, r5, lr}
	ldr r4, _0803E2A0 @ =0xFFFFFBA8
	add sp, r4
	adds r5, r0, #0
	ldr r0, [r5, #0x54]
	str r0, [sp, #0x54]
	mov r3, sp
	movs r0, #3
	rsbs r0, r0, #0
	ldrh r4, [r5, #0xc]
	ands r0, r4
	movs r4, #0
	strh r0, [r3, #0xc]
	ldrh r0, [r5, #0xe]
	strh r0, [r3, #0xe]
	ldr r0, [r5, #0x1c]
	str r0, [sp, #0x1c]
	ldr r0, [r5, #0x24]
	str r0, [sp, #0x24]
	add r0, sp, #0x58
	str r0, [sp]
	str r0, [sp, #0x10]
	movs r0, #0x80
	lsls r0, r0, #3
	str r0, [sp, #8]
	str r0, [sp, #0x14]
	str r4, [sp, #0x18]
	mov r0, sp
	bl sub_0803E2A4
	adds r4, r0, #0
	cmp r4, #0
	blt _0803E280
	mov r0, sp
	bl sub_0804027C
	cmp r0, #0
	beq _0803E280
	movs r4, #1
	rsbs r4, r4, #0
_0803E280:
	mov r1, sp
	movs r0, #0x40
	ldrh r1, [r1, #0xc]
	ands r0, r1
	cmp r0, #0
	beq _0803E294
	movs r0, #0x40
	ldrh r1, [r5, #0xc]
	orrs r0, r1
	strh r0, [r5, #0xc]
_0803E294:
	adds r0, r4, #0
	movs r3, #0x8b
	lsls r3, r3, #3
	add sp, r3
	pop {r4, r5, pc}
	.align 2, 0
_0803E2A0: .4byte 0xFFFFFBA8

	thumb_func_start sub_0803E2A4
sub_0803E2A4: @ 0x0803E2A4
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r3, r2, #0
	ldr r0, [r4, #0x54]
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_0803E2B8
	pop {r4, r5, pc}

	thumb_func_start sub_0803E2B8
sub_0803E2B8: @ 0x0803E2B8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r4, _0803E320 @ =0xFFFFFDE0
	add sp, r4
	str r0, [sp, #0x1dc]
	str r1, [sp, #0x1e0]
	adds r4, r2, #0
	mov sl, r3
	bl sub_080409B4
	ldr r0, [r0]
	str r0, [sp, #0x1f8]
	movs r1, #0
	add r0, sp, #0x1d0
	str r1, [r0]
	ldr r1, [sp, #0x1e0]
	ldr r0, [r1, #0x54]
	cmp r0, #0
	bne _0803E2EA
	ldr r0, _0803E324 @ =gUnknown_030002EC
	ldr r0, [r0]
	str r0, [r1, #0x54]
_0803E2EA:
	ldr r2, [sp, #0x1e0]
	ldr r1, [r2, #0x54]
	ldr r0, [r1, #0x38]
	cmp r0, #0
	bne _0803E2FA
	adds r0, r1, #0
	bl sub_0804040C
_0803E2FA:
	movs r0, #8
	ldr r1, [sp, #0x1e0]
	ldrh r1, [r1, #0xc]
	ands r0, r1
	cmp r0, #0
	beq _0803E30E
	ldr r2, [sp, #0x1e0]
	ldr r0, [r2, #0x10]
	cmp r0, #0
	bne _0803E328
_0803E30E:
	ldr r0, [sp, #0x1e0]
	bl sub_0803F37C
	cmp r0, #0
	beq _0803E328
	movs r0, #1
	rsbs r0, r0, #0
	bl sub_0803F208
	.align 2, 0
_0803E320: .4byte 0xFFFFFDE0
_0803E324: .4byte gUnknown_030002EC
_0803E328:
	movs r0, #0x1a
	ldr r1, [sp, #0x1e0]
	ldrh r1, [r1, #0xc]
	ands r0, r1
	cmp r0, #0xa
	bne _0803E34C
	ldr r2, [sp, #0x1e0]
	movs r1, #0xe
	ldrsh r0, [r2, r1]
	cmp r0, #0
	blt _0803E34C
	adds r0, r2, #0
	adds r1, r4, #0
	mov r2, sl
	bl sub_0803E230
	bl sub_0803F208
_0803E34C:
	str r4, [sp, #0x1e4]
	add r1, sp, #0x1c
	add r5, sp, #0x28
	str r5, [sp, #0x1c]
	movs r0, #0
	str r0, [r1, #8]
	str r0, [r1, #4]
	movs r2, #0
	str r2, [sp, #0x1f0]
	mov sb, r1
	movs r4, #0xe6
	lsls r4, r4, #1
	add r4, sp
	str r4, [sp, #0x214]
	movs r0, #0xe8
	lsls r0, r0, #1
	add r0, sp
	str r0, [sp, #0x218]
_0803E370:
	ldr r1, [sp, #0x1e4]
	mov r8, r1
_0803E374:
	ldr r0, _0803E420 @ =gUnknown_030002EC
	ldr r0, [r0]
	ldr r1, _0803E424 @ =gUnknown_030002F0
	ldr r3, [r1]
	ldr r2, [sp, #0x218]
	str r2, [sp]
	ldr r1, [sp, #0x214]
	ldr r2, [sp, #0x1e4]
	bl sub_08040FBC
	adds r4, r0, #0
	cmp r4, #0
	ble _0803E3A2
	ldr r0, [sp, #0x1e4]
	adds r0, r0, r4
	str r0, [sp, #0x1e4]
	add r0, sp, #0x1cc
	ldr r0, [r0]
	cmp r0, #0x25
	bne _0803E374
	ldr r1, [sp, #0x1e4]
	subs r1, #1
	str r1, [sp, #0x1e4]
_0803E3A2:
	ldr r2, [sp, #0x1e4]
	mov r0, r8
	subs r6, r2, r0
	cmp r6, #0
	beq _0803E3DA
	str r0, [r5]
	str r6, [r5, #4]
	mov r1, sb
	ldr r0, [r1, #8]
	adds r0, r0, r6
	str r0, [r1, #8]
	adds r5, #8
	ldr r0, [r1, #4]
	adds r0, #1
	str r0, [r1, #4]
	cmp r0, #7
	ble _0803E3D4
	ldr r0, [sp, #0x1e0]
	bl sub_0803E210
	cmp r0, #0
	beq _0803E3D2
	bl _0803F1F4
_0803E3D2:
	add r5, sp, #0x28
_0803E3D4:
	ldr r2, [sp, #0x1f0]
	adds r2, r2, r6
	str r2, [sp, #0x1f0]
_0803E3DA:
	cmp r4, #0
	bgt _0803E3E2
	bl _0803F1DC
_0803E3E2:
	ldr r4, [sp, #0x1e4]
	adds r4, #1
	str r4, [sp, #0x1e4]
	movs r0, #0
	str r0, [sp, #0x1ec]
	movs r1, #0
	str r1, [sp, #0x208]
	movs r2, #0
	str r2, [sp, #0x1f4]
	movs r6, #1
	rsbs r6, r6, #0
	ldr r0, _0803E428 @ =0x000001C9
	add r0, sp
	strb r2, [r0]
_0803E3FE:
	ldr r0, [sp, #0x1e4]
	ldrb r0, [r0]
	str r0, [sp, #0x1e8]
	ldr r1, [sp, #0x1e4]
	adds r1, #1
	str r1, [sp, #0x1e4]
_0803E40A:
	ldr r0, [sp, #0x1e8]
	subs r0, #0x20
	cmp r0, #0x58
	bls _0803E414
	b _0803EAC6
_0803E414:
	lsls r0, r0, #2
	ldr r1, _0803E42C @ =_0803E430
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0803E420: .4byte gUnknown_030002EC
_0803E424: .4byte gUnknown_030002F0
_0803E428: .4byte 0x000001C9
_0803E42C: .4byte _0803E430
_0803E430: @ jump table
	.4byte _0803E594 @ case 0
	.4byte _0803EAC6 @ case 1
	.4byte _0803EAC6 @ case 2
	.4byte _0803E5AC @ case 3
	.4byte _0803EAC6 @ case 4
	.4byte _0803EAC6 @ case 5
	.4byte _0803EAC6 @ case 6
	.4byte _0803EAC6 @ case 7
	.4byte _0803EAC6 @ case 8
	.4byte _0803EAC6 @ case 9
	.4byte _0803E5B0 @ case 10
	.4byte _0803E5CA @ case 11
	.4byte _0803EAC6 @ case 12
	.4byte _0803E5C6 @ case 13
	.4byte _0803E5D8 @ case 14
	.4byte _0803EAC6 @ case 15
	.4byte _0803E638 @ case 16
	.4byte _0803E63C @ case 17
	.4byte _0803E63C @ case 18
	.4byte _0803E63C @ case 19
	.4byte _0803E63C @ case 20
	.4byte _0803E63C @ case 21
	.4byte _0803E63C @ case 22
	.4byte _0803E63C @ case 23
	.4byte _0803E63C @ case 24
	.4byte _0803E63C @ case 25
	.4byte _0803EAC6 @ case 26
	.4byte _0803EAC6 @ case 27
	.4byte _0803EAC6 @ case 28
	.4byte _0803EAC6 @ case 29
	.4byte _0803EAC6 @ case 30
	.4byte _0803EAC6 @ case 31
	.4byte _0803EAC6 @ case 32
	.4byte _0803EAC6 @ case 33
	.4byte _0803EAC6 @ case 34
	.4byte _0803EAC6 @ case 35
	.4byte _0803E6A6 @ case 36
	.4byte _0803E6F8 @ case 37
	.4byte _0803EAC6 @ case 38
	.4byte _0803E6F8 @ case 39
	.4byte _0803EAC6 @ case 40
	.4byte _0803EAC6 @ case 41
	.4byte _0803EAC6 @ case 42
	.4byte _0803EAC6 @ case 43
	.4byte _0803E660 @ case 44
	.4byte _0803EAC6 @ case 45
	.4byte _0803EAC6 @ case 46
	.4byte _0803E8AE @ case 47
	.4byte _0803EAC6 @ case 48
	.4byte _0803EAC6 @ case 49
	.4byte _0803EAC6 @ case 50
	.4byte _0803EAC6 @ case 51
	.4byte _0803EAC6 @ case 52
	.4byte _0803E946 @ case 53
	.4byte _0803EAC6 @ case 54
	.4byte _0803EAC6 @ case 55
	.4byte _0803E982 @ case 56
	.4byte _0803EAC6 @ case 57
	.4byte _0803EAC6 @ case 58
	.4byte _0803EAC6 @ case 59
	.4byte _0803EAC6 @ case 60
	.4byte _0803EAC6 @ case 61
	.4byte _0803EAC6 @ case 62
	.4byte _0803EAC6 @ case 63
	.4byte _0803EAC6 @ case 64
	.4byte _0803EAC6 @ case 65
	.4byte _0803EAC6 @ case 66
	.4byte _0803E694 @ case 67
	.4byte _0803E6AE @ case 68
	.4byte _0803E6F8 @ case 69
	.4byte _0803E6F8 @ case 70
	.4byte _0803E6F8 @ case 71
	.4byte _0803E664 @ case 72
	.4byte _0803E6AE @ case 73
	.4byte _0803EAC6 @ case 74
	.4byte _0803EAC6 @ case 75
	.4byte _0803E668 @ case 76
	.4byte _0803EAC6 @ case 77
	.4byte _0803E868 @ case 78
	.4byte _0803E8B6 @ case 79
	.4byte _0803E8E4 @ case 80
	.4byte _0803E68A @ case 81
	.4byte _0803EAC6 @ case 82
	.4byte _0803E904 @ case 83
	.4byte _0803EAC6 @ case 84
	.4byte _0803E94E @ case 85
	.4byte _0803EAC6 @ case 86
	.4byte _0803EAC6 @ case 87
	.4byte _0803E98C @ case 88
_0803E594:
	ldr r1, _0803E5A8 @ =0x000001C9
	add r1, sp
	ldrb r0, [r1]
	cmp r0, #0
	beq _0803E5A0
	b _0803E3FE
_0803E5A0:
	movs r0, #0x20
	strb r0, [r1]
	b _0803E3FE
	.align 2, 0
_0803E5A8: .4byte 0x000001C9
_0803E5AC:
	movs r0, #1
	b _0803E678
_0803E5B0:
	movs r4, #4
	add sl, r4
	mov r0, sl
	subs r0, #4
	ldr r0, [r0]
	str r0, [sp, #0x1f4]
	cmp r0, #0
	blt _0803E5C2
	b _0803E3FE
_0803E5C2:
	rsbs r0, r0, #0
	str r0, [sp, #0x1f4]
_0803E5C6:
	movs r0, #4
	b _0803E68C
_0803E5CA:
	ldr r1, _0803E5D4 @ =0x000001C9
	add r1, sp
	movs r0, #0x2b
	strb r0, [r1]
	b _0803E3FE
	.align 2, 0
_0803E5D4: .4byte 0x000001C9
_0803E5D8:
	ldr r2, [sp, #0x1e4]
	ldrb r2, [r2]
	str r2, [sp, #0x1e8]
	ldr r4, [sp, #0x1e4]
	adds r4, #1
	str r4, [sp, #0x1e4]
	cmp r2, #0x2a
	bne _0803E602
	movs r0, #4
	add sl, r0
	mov r0, sl
	subs r0, #4
	ldr r4, [r0]
	adds r6, r4, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r6, r0
	blt _0803E5FE
	b _0803E3FE
_0803E5FE:
	adds r6, r0, #0
	b _0803E3FE
_0803E602:
	movs r4, #0
	ldr r0, [sp, #0x1e8]
	b _0803E622
_0803E608:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #1
	subs r0, #0x30
	ldr r1, [sp, #0x1e8]
	adds r4, r0, r1
	ldr r2, [sp, #0x1e4]
	ldrb r2, [r2]
	str r2, [sp, #0x1e8]
	ldr r0, [sp, #0x1e4]
	adds r0, #1
	str r0, [sp, #0x1e4]
	adds r0, r2, #0
_0803E622:
	subs r0, #0x30
	cmp r0, #9
	bls _0803E608
	adds r6, r4, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r6, r0
	blt _0803E634
	b _0803E40A
_0803E634:
	adds r6, r0, #0
	b _0803E40A
_0803E638:
	movs r0, #0x80
	b _0803E68C
_0803E63C:
	movs r4, #0
_0803E63E:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #1
	subs r0, #0x30
	ldr r2, [sp, #0x1e8]
	adds r4, r0, r2
	ldr r0, [sp, #0x1e4]
	ldrb r0, [r0]
	str r0, [sp, #0x1e8]
	ldr r1, [sp, #0x1e4]
	adds r1, #1
	str r1, [sp, #0x1e4]
	subs r0, #0x30
	cmp r0, #9
	bls _0803E63E
	str r4, [sp, #0x1f4]
	b _0803E40A
_0803E660:
	movs r0, #8
	b _0803E678
_0803E664:
	movs r0, #0x40
	b _0803E682
_0803E668:
	ldr r0, [sp, #0x1e4]
	ldrb r0, [r0]
	cmp r0, #0x6c
	bne _0803E680
	ldr r1, [sp, #0x1e4]
	adds r1, #1
	str r1, [sp, #0x1e4]
	movs r0, #0x20
_0803E678:
	ldr r2, [sp, #0x1ec]
	orrs r2, r0
	str r2, [sp, #0x1ec]
	b _0803E3FE
_0803E680:
	movs r0, #0x10
_0803E682:
	ldr r4, [sp, #0x1ec]
	orrs r4, r0
	str r4, [sp, #0x1ec]
	b _0803E3FE
_0803E68A:
	movs r0, #0x20
_0803E68C:
	ldr r1, [sp, #0x1ec]
	orrs r1, r0
	str r1, [sp, #0x1ec]
	b _0803E3FE
_0803E694:
	add r2, sp, #0x68
	mov r8, r2
	movs r4, #4
	add sl, r4
	mov r0, sl
	subs r0, #4
	ldr r0, [r0]
	strb r0, [r2]
	b _0803EAD4
_0803E6A6:
	movs r0, #0x10
	ldr r1, [sp, #0x1ec]
	orrs r1, r0
	str r1, [sp, #0x1ec]
_0803E6AE:
	movs r0, #0x10
	ldr r2, [sp, #0x1ec]
	ands r0, r2
	cmp r0, #0
	beq _0803E6BE
	movs r4, #4
	add sl, r4
	b _0803E6DA
_0803E6BE:
	movs r0, #0x40
	ldr r1, [sp, #0x1ec]
	ands r0, r1
	cmp r0, #0
	beq _0803E6D6
	movs r2, #4
	add sl, r2
	mov r0, sl
	subs r0, #4
	movs r1, #0
	ldrsh r4, [r0, r1]
	b _0803E6E0
_0803E6D6:
	movs r2, #4
	add sl, r2
_0803E6DA:
	mov r0, sl
	subs r0, #4
	ldr r4, [r0]
_0803E6E0:
	cmp r4, #0
	bge _0803E6EE
	rsbs r4, r4, #0
	ldr r1, _0803E6F4 @ =0x000001C9
	add r1, sp
	movs r0, #0x2d
	strb r0, [r1]
_0803E6EE:
	movs r2, #1
	b _0803E9DA
	.align 2, 0
_0803E6F4: .4byte 0x000001C9
_0803E6F8:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r6, r0
	bne _0803E704
	movs r6, #6
	b _0803E714
_0803E704:
	ldr r4, [sp, #0x1e8]
	cmp r4, #0x67
	beq _0803E70E
	cmp r4, #0x47
	bne _0803E714
_0803E70E:
	cmp r6, #0
	bne _0803E714
	movs r6, #1
_0803E714:
	movs r0, #8
	ldr r1, [sp, #0x1ec]
	ands r0, r1
	movs r2, #8
	add sl, r2
	mov r0, sl
	subs r0, #8
	ldr r1, [r0]
	ldr r2, [r0, #4]
	str r1, [sp, #0x1fc]
	str r2, [sp, #0x200]
	ldr r0, [sp, #0x1fc]
	ldr r1, [sp, #0x200]
	bl sub_080419C8
	cmp r0, #0
	beq _0803E768
	ldr r3, _0803E75C @ =0x00000000
	ldr r2, _0803E758 @ =0x00000000
	ldr r0, [sp, #0x1fc]
	ldr r1, [sp, #0x200]
	bl sub_08042CB0
	cmp r0, #0
	bge _0803E74E
	ldr r1, _0803E760 @ =0x000001C9
	add r1, sp
	movs r0, #0x2d
	strb r0, [r1]
_0803E74E:
	ldr r2, _0803E764 @ =gUnknown_083D490C
	mov r8, r2
	movs r3, #3
	b _0803EADE
	.align 2, 0
_0803E758: .4byte 0x00000000
_0803E75C: .4byte 0x00000000
_0803E760: .4byte 0x000001C9
_0803E764: .4byte gUnknown_083D490C
_0803E768:
	ldr r0, [sp, #0x1fc]
	ldr r1, [sp, #0x200]
	bl sub_080419EC
	cmp r0, #0
	beq _0803E780
	ldr r4, _0803E77C @ =gUnknown_083D4910
	mov r8, r4
	movs r3, #3
	b _0803EADE
	.align 2, 0
_0803E77C: .4byte gUnknown_083D4910
_0803E780:
	movs r0, #0x80
	lsls r0, r0, #1
	ldr r1, [sp, #0x1ec]
	orrs r1, r0
	str r1, [sp, #0x1ec]
	str r1, [sp]
	add r0, sp, #0x1c8
	str r0, [sp, #4]
	add r0, sp, #0x1d4
	str r0, [sp, #8]
	ldr r2, [sp, #0x1e8]
	str r2, [sp, #0xc]
	add r0, sp, #0x1d8
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x1dc]
	ldr r1, [sp, #0x1fc]
	ldr r2, [sp, #0x200]
	adds r3, r6, #0
	bl sub_0803F218
	mov r8, r0
	ldr r4, [sp, #0x1e8]
	cmp r4, #0x67
	beq _0803E7B4
	cmp r4, #0x47
	bne _0803E7D6
_0803E7B4:
	add r0, sp, #0x1d4
	ldr r1, [r0]
	movs r0, #4
	rsbs r0, r0, #0
	cmp r1, r0
	ble _0803E7C4
	cmp r1, r6
	ble _0803E7D2
_0803E7C4:
	movs r0, #0x45
	ldr r1, [sp, #0x1e8]
	cmp r1, #0x67
	bne _0803E7CE
	movs r0, #0x65
_0803E7CE:
	str r0, [sp, #0x1e8]
	b _0803E7D6
_0803E7D2:
	movs r2, #0x67
	str r2, [sp, #0x1e8]
_0803E7D6:
	ldr r4, [sp, #0x1e8]
	cmp r4, #0x65
	bgt _0803E7FC
	add r0, sp, #0x1d4
	ldr r1, [r0]
	subs r1, #1
	str r1, [r0]
	add r0, sp, #0x14
	ldr r2, [sp, #0x1e8]
	bl sub_0803F30C
	str r0, [sp, #0x204]
	add r0, sp, #0x1d8
	ldr r0, [r0]
	ldr r1, [sp, #0x204]
	adds r3, r1, r0
	cmp r0, #1
	bgt _0803E83C
	b _0803E832
_0803E7FC:
	ldr r4, [sp, #0x1e8]
	cmp r4, #0x66
	bne _0803E824
	add r0, sp, #0x1d4
	ldr r0, [r0]
	cmp r0, #0
	ble _0803E820
	adds r3, r0, #0
	cmp r6, #0
	bne _0803E81A
	movs r0, #1
	ldr r1, [sp, #0x1ec]
	ands r0, r1
	cmp r0, #0
	beq _0803E84C
_0803E81A:
	adds r0, r3, #1
	adds r3, r0, r6
	b _0803E84C
_0803E820:
	adds r3, r6, #2
	b _0803E84C
_0803E824:
	add r0, sp, #0x1d4
	ldr r1, [r0]
	add r0, sp, #0x1d8
	ldr r0, [r0]
	cmp r1, r0
	blt _0803E840
	adds r3, r1, #0
_0803E832:
	movs r0, #1
	ldr r2, [sp, #0x1ec]
	ands r0, r2
	cmp r0, #0
	beq _0803E84C
_0803E83C:
	adds r3, #1
	b _0803E84C
_0803E840:
	cmp r1, #0
	bgt _0803E84A
	adds r0, #2
	subs r3, r0, r1
	b _0803E84C
_0803E84A:
	adds r3, r0, #1
_0803E84C:
	add r0, sp, #0x1c8
	ldrb r0, [r0]
	adds r7, r5, #0
	adds r7, #8
	cmp r0, #0
	bne _0803E85A
	b _0803EAE2
_0803E85A:
	ldr r1, _0803E864 @ =0x000001C9
	add r1, sp
	movs r0, #0x2d
	strb r0, [r1]
	b _0803EAE2
	.align 2, 0
_0803E864: .4byte 0x000001C9
_0803E868:
	movs r0, #0x10
	ldr r4, [sp, #0x1ec]
	ands r0, r4
	cmp r0, #0
	beq _0803E882
	movs r0, #4
	add sl, r0
	mov r0, sl
	subs r0, #4
	ldr r0, [r0]
	ldr r1, [sp, #0x1f0]
	str r1, [r0]
	b _0803E370
_0803E882:
	movs r0, #0x40
	ldr r2, [sp, #0x1ec]
	ands r2, r0
	cmp r2, #0
	beq _0803E89E
	movs r4, #4
	add sl, r4
	mov r0, sl
	subs r0, #4
	ldr r0, [r0]
	add r1, sp, #0x1f0
	ldrh r1, [r1]
	strh r1, [r0]
	b _0803E370
_0803E89E:
	movs r2, #4
	add sl, r2
	mov r0, sl
	subs r0, #4
	ldr r0, [r0]
	ldr r4, [sp, #0x1f0]
	str r4, [r0]
	b _0803E370
_0803E8AE:
	movs r0, #0x10
	ldr r1, [sp, #0x1ec]
	orrs r1, r0
	str r1, [sp, #0x1ec]
_0803E8B6:
	movs r0, #0x10
	ldr r2, [sp, #0x1ec]
	ands r0, r2
	cmp r0, #0
	bne _0803E8D6
	movs r0, #0x40
	ldr r1, [sp, #0x1ec]
	ands r0, r1
	cmp r0, #0
	beq _0803E8D6
	movs r2, #4
	add sl, r2
	mov r0, sl
	subs r0, #4
	ldrh r4, [r0]
	b _0803E8E0
_0803E8D6:
	movs r4, #4
	add sl, r4
	mov r0, sl
	subs r0, #4
	ldr r4, [r0]
_0803E8E0:
	movs r2, #0
	b _0803E9D2
_0803E8E4:
	movs r0, #4
	add sl, r0
	mov r0, sl
	subs r0, #4
	ldr r4, [r0]
	movs r2, #2
	ldr r1, _0803E900 @ =gUnknown_083D4914
	str r1, [sp, #0x210]
	ldr r0, [sp, #0x1ec]
	orrs r0, r2
	str r0, [sp, #0x1ec]
	movs r1, #0x78
	str r1, [sp, #0x1e8]
	b _0803E9D2
	.align 2, 0
_0803E900: .4byte gUnknown_083D4914
_0803E904:
	movs r2, #4
	add sl, r2
	mov r0, sl
	subs r0, #4
	ldr r0, [r0]
	mov r8, r0
	cmp r0, #0
	bne _0803E918
	ldr r4, _0803E938 @ =gUnknown_083D4928
	mov r8, r4
_0803E918:
	cmp r6, #0
	blt _0803E93C
	mov r0, r8
	movs r1, #0
	adds r2, r6, #0
	bl sub_08040FE8
	cmp r0, #0
	beq _0803E934
	mov r1, r8
	subs r3, r0, r1
	cmp r3, r6
	bgt _0803E934
	b _0803EAD6
_0803E934:
	adds r3, r6, #0
	b _0803EAD6
	.align 2, 0
_0803E938: .4byte gUnknown_083D4928
_0803E93C:
	mov r0, r8
	bl sub_0803E06C
	adds r3, r0, #0
	b _0803EAD6
_0803E946:
	movs r0, #0x10
	ldr r2, [sp, #0x1ec]
	orrs r2, r0
	str r2, [sp, #0x1ec]
_0803E94E:
	movs r0, #0x10
	ldr r4, [sp, #0x1ec]
	ands r0, r4
	cmp r0, #0
	beq _0803E95E
	movs r0, #4
	add sl, r0
	b _0803E978
_0803E95E:
	movs r0, #0x40
	ldr r1, [sp, #0x1ec]
	ands r0, r1
	cmp r0, #0
	beq _0803E974
	movs r2, #4
	add sl, r2
	mov r0, sl
	subs r0, #4
	ldrh r4, [r0]
	b _0803E97E
_0803E974:
	movs r4, #4
	add sl, r4
_0803E978:
	mov r0, sl
	subs r0, #4
	ldr r4, [r0]
_0803E97E:
	movs r2, #1
	b _0803E9D2
_0803E982:
	ldr r0, _0803E988 @ =gUnknown_083D4930
	str r0, [sp, #0x210]
	b _0803E990
	.align 2, 0
_0803E988: .4byte gUnknown_083D4930
_0803E98C:
	ldr r1, _0803E9B0 @ =gUnknown_083D4914
	str r1, [sp, #0x210]
_0803E990:
	movs r0, #0x10
	ldr r2, [sp, #0x1ec]
	ands r0, r2
	cmp r0, #0
	bne _0803E9B4
	movs r0, #0x40
	ldr r1, [sp, #0x1ec]
	ands r0, r1
	cmp r0, #0
	beq _0803E9B4
	movs r2, #4
	add sl, r2
	mov r0, sl
	subs r0, #4
	ldrh r4, [r0]
	b _0803E9BE
	.align 2, 0
_0803E9B0: .4byte gUnknown_083D4914
_0803E9B4:
	movs r4, #4
	add sl, r4
	mov r0, sl
	subs r0, #4
	ldr r4, [r0]
_0803E9BE:
	movs r2, #2
	movs r0, #1
	ldr r1, [sp, #0x1ec]
	ands r0, r1
	cmp r0, #0
	beq _0803E9D2
	cmp r4, #0
	beq _0803E9D2
	orrs r1, r2
	str r1, [sp, #0x1ec]
_0803E9D2:
	ldr r1, _0803EA1C @ =0x000001C9
	add r1, sp
	movs r0, #0
	strb r0, [r1]
_0803E9DA:
	str r6, [sp, #0x208]
	cmp r6, #0
	blt _0803E9EA
	movs r0, #0x81
	rsbs r0, r0, #0
	ldr r1, [sp, #0x1ec]
	ands r1, r0
	str r1, [sp, #0x1ec]
_0803E9EA:
	movs r0, #0xe2
	lsls r0, r0, #1
	add r0, sp
	mov r8, r0
	cmp r4, #0
	bne _0803EA00
	adds r7, r5, #0
	adds r7, #8
	ldr r1, [sp, #0x208]
	cmp r1, #0
	beq _0803EAB8
_0803EA00:
	cmp r2, #1
	beq _0803EA5E
	cmp r2, #1
	blo _0803EA24
	cmp r2, #2
	beq _0803EA98
	ldr r2, _0803EA20 @ =gUnknown_083D4944
	mov r8, r2
	mov r0, r8
	bl sub_0803E06C
	adds r3, r0, #0
	b _0803EADE
	.align 2, 0
_0803EA1C: .4byte 0x000001C9
_0803EA20: .4byte gUnknown_083D4944
_0803EA24:
	adds r7, r5, #0
	adds r7, #8
	movs r2, #7
_0803EA2A:
	movs r0, #1
	rsbs r0, r0, #0
	add r8, r0
	adds r0, r4, #0
	ands r0, r2
	adds r1, r0, #0
	adds r1, #0x30
	mov r0, r8
	strb r1, [r0]
	lsrs r4, r4, #3
	cmp r4, #0
	bne _0803EA2A
	movs r0, #1
	ldr r2, [sp, #0x1ec]
	ands r0, r2
	cmp r0, #0
	beq _0803EAB8
	cmp r1, #0x30
	beq _0803EAB8
	movs r4, #1
	rsbs r4, r4, #0
	add r8, r4
	movs r0, #0x30
	mov r1, r8
	strb r0, [r1]
	b _0803EAB8
_0803EA5E:
	adds r7, r5, #0
	adds r7, #8
	cmp r4, #9
	bls _0803EA88
_0803EA66:
	movs r2, #1
	rsbs r2, r2, #0
	add r8, r2
	adds r0, r4, #0
	movs r1, #0xa
	bl sub_0803DDFC
	adds r0, #0x30
	mov r1, r8
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #0xa
	bl sub_0803DD84
	adds r4, r0, #0
	cmp r4, #9
	bhi _0803EA66
_0803EA88:
	movs r2, #1
	rsbs r2, r2, #0
	add r8, r2
	adds r0, r4, #0
	adds r0, #0x30
	mov r4, r8
	strb r0, [r4]
	b _0803EAB8
_0803EA98:
	adds r7, r5, #0
	adds r7, #8
	movs r1, #0xf
_0803EA9E:
	movs r0, #1
	rsbs r0, r0, #0
	add r8, r0
	adds r0, r4, #0
	ands r0, r1
	ldr r2, [sp, #0x210]
	adds r0, r2, r0
	ldrb r0, [r0]
	mov r2, r8
	strb r0, [r2]
	lsrs r4, r4, #4
	cmp r4, #0
	bne _0803EA9E
_0803EAB8:
	add r4, sp, #0x14
	mov r1, r8
	subs r0, r4, r1
	movs r2, #0xd8
	lsls r2, r2, #1
	adds r3, r0, r2
	b _0803EAE2
_0803EAC6:
	ldr r4, [sp, #0x1e8]
	cmp r4, #0
	bne _0803EACE
	b _0803F1DC
_0803EACE:
	add r0, sp, #0x68
	mov r8, r0
	strb r4, [r0]
_0803EAD4:
	movs r3, #1
_0803EAD6:
	ldr r1, _0803EB00 @ =0x000001C9
	add r1, sp
	movs r0, #0
	strb r0, [r1]
_0803EADE:
	adds r7, r5, #0
	adds r7, #8
_0803EAE2:
	str r3, [sp, #0x20c]
	ldr r2, [sp, #0x208]
	cmp r3, r2
	bge _0803EAEC
	str r2, [sp, #0x20c]
_0803EAEC:
	ldr r0, _0803EB00 @ =0x000001C9
	add r0, sp
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803EB04
	ldr r4, [sp, #0x20c]
	adds r4, #1
	str r4, [sp, #0x20c]
	b _0803EB14
	.align 2, 0
_0803EB00: .4byte 0x000001C9
_0803EB04:
	movs r0, #2
	ldr r1, [sp, #0x1ec]
	ands r0, r1
	cmp r0, #0
	beq _0803EB14
	ldr r2, [sp, #0x20c]
	adds r2, #2
	str r2, [sp, #0x20c]
_0803EB14:
	movs r0, #0x84
	ldr r4, [sp, #0x1ec]
	ands r0, r4
	cmp r0, #0
	bne _0803EB94
	ldr r0, [sp, #0x1f4]
	ldr r1, [sp, #0x20c]
	subs r4, r0, r1
	cmp r4, #0
	ble _0803EB94
	ldr r1, _0803EBC0 @ =gUnknown_083D48EC
	cmp r4, #0x10
	ble _0803EB68
	mov r6, sb
_0803EB30:
	str r1, [r5]
	movs r0, #0x10
	str r0, [r5, #4]
	ldr r0, [r6, #8]
	adds r0, #0x10
	str r0, [r6, #8]
	adds r5, r7, #0
	ldr r0, [r6, #4]
	adds r0, #1
	str r0, [r6, #4]
	cmp r0, #7
	ble _0803EB5E
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	str r3, [sp, #0x21c]
	bl sub_0803E210
	ldr r3, [sp, #0x21c]
	cmp r0, #0
	beq _0803EB5A
	b _0803F1F4
_0803EB5A:
	add r5, sp, #0x28
	ldr r1, _0803EBC0 @ =gUnknown_083D48EC
_0803EB5E:
	subs r4, #0x10
	adds r7, r5, #0
	adds r7, #8
	cmp r4, #0x10
	bgt _0803EB30
_0803EB68:
	str r1, [r5]
	str r4, [r5, #4]
	mov r2, sb
	ldr r0, [r2, #8]
	adds r0, r0, r4
	str r0, [r2, #8]
	adds r5, r7, #0
	ldr r0, [r2, #4]
	adds r0, #1
	str r0, [r2, #4]
	cmp r0, #7
	ble _0803EB94
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	str r3, [sp, #0x21c]
	bl sub_0803E210
	ldr r3, [sp, #0x21c]
	cmp r0, #0
	beq _0803EB92
	b _0803F1F4
_0803EB92:
	add r5, sp, #0x28
_0803EB94:
	ldr r1, _0803EBC4 @ =0x000001C9
	add r1, sp
	ldrb r0, [r1]
	cmp r0, #0
	beq _0803EBC8
	str r1, [r5]
	movs r0, #1
	str r0, [r5, #4]
	mov r4, sb
	ldr r0, [r4, #8]
	adds r0, #1
	str r0, [r4, #8]
	adds r5, #8
	ldr r0, [r4, #4]
	adds r0, #1
	str r0, [r4, #4]
	cmp r0, #7
	ble _0803EC08
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	b _0803EBF8
	.align 2, 0
_0803EBC0: .4byte gUnknown_083D48EC
_0803EBC4: .4byte 0x000001C9
_0803EBC8:
	movs r2, #2
	ldr r0, [sp, #0x1ec]
	ands r0, r2
	cmp r0, #0
	beq _0803EC08
	add r1, sp, #0x1c4
	movs r0, #0x30
	strb r0, [r1]
	add r0, sp, #0x1e8
	ldrb r0, [r0]
	strb r0, [r1, #1]
	str r1, [r5]
	str r2, [r5, #4]
	mov r1, sb
	ldr r0, [r1, #8]
	adds r0, #2
	str r0, [r1, #8]
	adds r5, #8
	ldr r0, [r1, #4]
	adds r0, #1
	str r0, [r1, #4]
	cmp r0, #7
	ble _0803EC08
	ldr r0, [sp, #0x1e0]
_0803EBF8:
	str r3, [sp, #0x21c]
	bl sub_0803E210
	ldr r3, [sp, #0x21c]
	cmp r0, #0
	beq _0803EC06
	b _0803F1F4
_0803EC06:
	add r5, sp, #0x28
_0803EC08:
	movs r0, #0x84
	ldr r2, [sp, #0x1ec]
	ands r0, r2
	cmp r0, #0x80
	bne _0803EC84
	ldr r0, [sp, #0x1f4]
	ldr r1, [sp, #0x20c]
	subs r4, r0, r1
	cmp r4, #0
	ble _0803EC84
	ldr r1, _0803ED20 @ =gUnknown_083D48FC
	cmp r4, #0x10
	ble _0803EC58
	mov r6, sb
_0803EC24:
	str r1, [r5]
	movs r0, #0x10
	str r0, [r5, #4]
	ldr r0, [r6, #8]
	adds r0, #0x10
	str r0, [r6, #8]
	adds r5, #8
	ldr r0, [r6, #4]
	adds r0, #1
	str r0, [r6, #4]
	cmp r0, #7
	ble _0803EC52
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	str r3, [sp, #0x21c]
	bl sub_0803E210
	ldr r3, [sp, #0x21c]
	cmp r0, #0
	beq _0803EC4E
	b _0803F1F4
_0803EC4E:
	add r5, sp, #0x28
	ldr r1, _0803ED20 @ =gUnknown_083D48FC
_0803EC52:
	subs r4, #0x10
	cmp r4, #0x10
	bgt _0803EC24
_0803EC58:
	str r1, [r5]
	str r4, [r5, #4]
	mov r2, sb
	ldr r0, [r2, #8]
	adds r0, r0, r4
	str r0, [r2, #8]
	adds r5, #8
	ldr r0, [r2, #4]
	adds r0, #1
	str r0, [r2, #4]
	cmp r0, #7
	ble _0803EC84
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	str r3, [sp, #0x21c]
	bl sub_0803E210
	ldr r3, [sp, #0x21c]
	cmp r0, #0
	beq _0803EC82
	b _0803F1F4
_0803EC82:
	add r5, sp, #0x28
_0803EC84:
	ldr r0, [sp, #0x208]
	subs r4, r0, r3
	cmp r4, #0
	ble _0803ECF2
	ldr r1, _0803ED20 @ =gUnknown_083D48FC
	cmp r4, #0x10
	ble _0803ECC8
	mov r6, sb
_0803EC94:
	str r1, [r5]
	movs r0, #0x10
	str r0, [r5, #4]
	ldr r0, [r6, #8]
	adds r0, #0x10
	str r0, [r6, #8]
	adds r5, #8
	ldr r0, [r6, #4]
	adds r0, #1
	str r0, [r6, #4]
	cmp r0, #7
	ble _0803ECC2
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	str r3, [sp, #0x21c]
	bl sub_0803E210
	ldr r3, [sp, #0x21c]
	cmp r0, #0
	beq _0803ECBE
	b _0803F1F4
_0803ECBE:
	add r5, sp, #0x28
	ldr r1, _0803ED20 @ =gUnknown_083D48FC
_0803ECC2:
	subs r4, #0x10
	cmp r4, #0x10
	bgt _0803EC94
_0803ECC8:
	str r1, [r5]
	str r4, [r5, #4]
	mov r1, sb
	ldr r0, [r1, #8]
	adds r0, r0, r4
	str r0, [r1, #8]
	adds r5, #8
	ldr r0, [r1, #4]
	adds r0, #1
	str r0, [r1, #4]
	cmp r0, #7
	ble _0803ECF2
	ldr r0, [sp, #0x1e0]
	str r3, [sp, #0x21c]
	bl sub_0803E210
	ldr r3, [sp, #0x21c]
	cmp r0, #0
	beq _0803ECF0
	b _0803F1F4
_0803ECF0:
	add r5, sp, #0x28
_0803ECF2:
	movs r0, #0x80
	lsls r0, r0, #1
	ldr r2, [sp, #0x1ec]
	ands r0, r2
	cmp r0, #0
	bne _0803ED24
	mov r4, r8
	str r4, [r5]
	str r3, [r5, #4]
	mov r1, sb
	ldr r0, [r1, #8]
	adds r0, r0, r3
	str r0, [r1, #8]
	adds r5, #8
	ldr r0, [r1, #4]
	adds r0, #1
	str r0, [r1, #4]
	cmp r0, #7
	bgt _0803ED1A
	b _0803F13A
_0803ED1A:
	ldr r0, [sp, #0x1e0]
	b _0803F130
	.align 2, 0
_0803ED20: .4byte gUnknown_083D48FC
_0803ED24:
	ldr r2, [sp, #0x1e8]
	cmp r2, #0x65
	bgt _0803ED2C
	b _0803F010
_0803ED2C:
	ldr r3, _0803EDF8 @ =0x00000000
	ldr r2, _0803EDF4 @ =0x00000000
	ldr r0, [sp, #0x1fc]
	ldr r1, [sp, #0x200]
	bl sub_08042B80
	cmp r0, #0
	bne _0803EE04
	ldr r0, _0803EDFC @ =gUnknown_083D4960
	str r0, [r5]
	movs r6, #1
	str r6, [r5, #4]
	mov r4, sb
	ldr r0, [r4, #8]
	adds r0, #1
	str r0, [r4, #8]
	adds r5, #8
	ldr r0, [r4, #4]
	adds r0, #1
	str r0, [r4, #4]
	cmp r0, #7
	ble _0803ED68
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	bl sub_0803E210
	cmp r0, #0
	beq _0803ED66
	b _0803F1F4
_0803ED66:
	add r5, sp, #0x28
_0803ED68:
	add r0, sp, #0x1d4
	ldr r1, [r0]
	add r4, sp, #0x1d8
	ldr r0, [r4]
	cmp r1, r0
	blt _0803ED7E
	ldr r0, [sp, #0x1ec]
	ands r0, r6
	cmp r0, #0
	bne _0803ED7E
	b _0803F13A
_0803ED7E:
	ldr r0, [sp, #0x1f8]
	str r0, [r5]
	str r6, [r5, #4]
	mov r1, sb
	ldr r0, [r1, #8]
	adds r0, #1
	str r0, [r1, #8]
	adds r5, #8
	ldr r0, [r1, #4]
	adds r0, #1
	str r0, [r1, #4]
	cmp r0, #7
	ble _0803EDA6
	ldr r0, [sp, #0x1e0]
	bl sub_0803E210
	cmp r0, #0
	beq _0803EDA4
	b _0803F1F4
_0803EDA4:
	add r5, sp, #0x28
_0803EDA6:
	ldr r0, [r4]
	subs r4, r0, #1
	cmp r4, #0
	bgt _0803EDB0
	b _0803F13A
_0803EDB0:
	ldr r1, _0803EE00 @ =gUnknown_083D48FC
	cmp r4, #0x10
	ble _0803EDE8
	mov r6, sb
_0803EDB8:
	str r1, [r5]
	movs r0, #0x10
	str r0, [r5, #4]
	ldr r0, [r6, #8]
	adds r0, #0x10
	str r0, [r6, #8]
	adds r5, #8
	ldr r0, [r6, #4]
	adds r0, #1
	str r0, [r6, #4]
	cmp r0, #7
	ble _0803EDE2
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	bl sub_0803E210
	cmp r0, #0
	beq _0803EDDE
	b _0803F1F4
_0803EDDE:
	add r5, sp, #0x28
	ldr r1, _0803EE00 @ =gUnknown_083D48FC
_0803EDE2:
	subs r4, #0x10
	cmp r4, #0x10
	bgt _0803EDB8
_0803EDE8:
	str r1, [r5]
	str r4, [r5, #4]
	mov r2, sb
	ldr r0, [r2, #8]
	adds r0, r0, r4
	b _0803F11E
	.align 2, 0
_0803EDF4: .4byte 0x00000000
_0803EDF8: .4byte 0x00000000
_0803EDFC: .4byte gUnknown_083D4960
_0803EE00: .4byte gUnknown_083D48FC
_0803EE04:
	add r6, sp, #0x1d4
	ldr r2, [r6]
	cmp r2, #0
	bgt _0803EEEC
	ldr r0, _0803EEE4 @ =gUnknown_083D4960
	str r0, [r5]
	movs r4, #1
	str r4, [r5, #4]
	mov r1, sb
	ldr r0, [r1, #8]
	adds r0, #1
	str r0, [r1, #8]
	adds r5, #8
	ldr r0, [r1, #4]
	adds r0, #1
	str r0, [r1, #4]
	cmp r0, #7
	ble _0803EE36
	ldr r0, [sp, #0x1e0]
	bl sub_0803E210
	cmp r0, #0
	beq _0803EE34
	b _0803F1F4
_0803EE34:
	add r5, sp, #0x28
_0803EE36:
	ldr r2, [sp, #0x1f8]
	str r2, [r5]
	str r4, [r5, #4]
	mov r4, sb
	ldr r0, [r4, #8]
	adds r0, #1
	str r0, [r4, #8]
	adds r5, #8
	ldr r0, [r4, #4]
	adds r0, #1
	str r0, [r4, #4]
	cmp r0, #7
	ble _0803EE60
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	bl sub_0803E210
	cmp r0, #0
	beq _0803EE5E
	b _0803F1F4
_0803EE5E:
	add r5, sp, #0x28
_0803EE60:
	ldr r0, [r6]
	rsbs r4, r0, #0
	cmp r4, #0
	ble _0803EEC6
	ldr r1, _0803EEE8 @ =gUnknown_083D48FC
	cmp r4, #0x10
	ble _0803EEA0
	mov r6, sb
_0803EE70:
	str r1, [r5]
	movs r0, #0x10
	str r0, [r5, #4]
	ldr r0, [r6, #8]
	adds r0, #0x10
	str r0, [r6, #8]
	adds r5, #8
	ldr r0, [r6, #4]
	adds r0, #1
	str r0, [r6, #4]
	cmp r0, #7
	ble _0803EE9A
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	bl sub_0803E210
	cmp r0, #0
	beq _0803EE96
	b _0803F1F4
_0803EE96:
	add r5, sp, #0x28
	ldr r1, _0803EEE8 @ =gUnknown_083D48FC
_0803EE9A:
	subs r4, #0x10
	cmp r4, #0x10
	bgt _0803EE70
_0803EEA0:
	str r1, [r5]
	str r4, [r5, #4]
	mov r1, sb
	ldr r0, [r1, #8]
	adds r0, r0, r4
	str r0, [r1, #8]
	adds r5, #8
	ldr r0, [r1, #4]
	adds r0, #1
	str r0, [r1, #4]
	cmp r0, #7
	ble _0803EEC6
	ldr r0, [sp, #0x1e0]
	bl sub_0803E210
	cmp r0, #0
	beq _0803EEC4
	b _0803F1F4
_0803EEC4:
	add r5, sp, #0x28
_0803EEC6:
	mov r2, r8
	str r2, [r5]
	add r0, sp, #0x1d8
	ldr r1, [r0]
	str r1, [r5, #4]
	mov r4, sb
	ldr r0, [r4, #8]
	adds r0, r0, r1
	str r0, [r4, #8]
	adds r5, #8
	ldr r0, [r4, #4]
	adds r0, #1
	str r0, [r4, #4]
	b _0803F128
	.align 2, 0
_0803EEE4: .4byte gUnknown_083D4960
_0803EEE8: .4byte gUnknown_083D48FC
_0803EEEC:
	add r4, sp, #0x1d8
	ldr r1, [r4]
	cmp r2, r1
	blt _0803EFA8
	mov r0, r8
	str r0, [r5]
	str r1, [r5, #4]
	mov r2, sb
	ldr r0, [r2, #8]
	adds r0, r0, r1
	str r0, [r2, #8]
	adds r5, #8
	ldr r0, [r2, #4]
	adds r0, #1
	str r0, [r2, #4]
	cmp r0, #7
	ble _0803EF1E
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	bl sub_0803E210
	cmp r0, #0
	beq _0803EF1C
	b _0803F1F4
_0803EF1C:
	add r5, sp, #0x28
_0803EF1E:
	ldr r1, [r6]
	ldr r0, [r4]
	subs r4, r1, r0
	cmp r4, #0
	ble _0803EF86
	ldr r1, _0803EFA0 @ =gUnknown_083D48FC
	cmp r4, #0x10
	ble _0803EF60
	mov r6, sb
_0803EF30:
	str r1, [r5]
	movs r0, #0x10
	str r0, [r5, #4]
	ldr r0, [r6, #8]
	adds r0, #0x10
	str r0, [r6, #8]
	adds r5, #8
	ldr r0, [r6, #4]
	adds r0, #1
	str r0, [r6, #4]
	cmp r0, #7
	ble _0803EF5A
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	bl sub_0803E210
	cmp r0, #0
	beq _0803EF56
	b _0803F1F4
_0803EF56:
	add r5, sp, #0x28
	ldr r1, _0803EFA0 @ =gUnknown_083D48FC
_0803EF5A:
	subs r4, #0x10
	cmp r4, #0x10
	bgt _0803EF30
_0803EF60:
	str r1, [r5]
	str r4, [r5, #4]
	mov r1, sb
	ldr r0, [r1, #8]
	adds r0, r0, r4
	str r0, [r1, #8]
	adds r5, #8
	ldr r0, [r1, #4]
	adds r0, #1
	str r0, [r1, #4]
	cmp r0, #7
	ble _0803EF86
	ldr r0, [sp, #0x1e0]
	bl sub_0803E210
	cmp r0, #0
	beq _0803EF84
	b _0803F1F4
_0803EF84:
	add r5, sp, #0x28
_0803EF86:
	movs r1, #1
	ldr r0, [sp, #0x1ec]
	ands r0, r1
	cmp r0, #0
	bne _0803EF92
	b _0803F13A
_0803EF92:
	ldr r0, _0803EFA4 @ =gUnknown_083D4964
	str r0, [r5]
	str r1, [r5, #4]
	mov r2, sb
	ldr r0, [r2, #8]
	adds r0, #1
	b _0803F11E
	.align 2, 0
_0803EFA0: .4byte gUnknown_083D48FC
_0803EFA4: .4byte gUnknown_083D4964
_0803EFA8:
	mov r0, r8
	str r0, [r5]
	str r2, [r5, #4]
	mov r1, sb
	ldr r0, [r1, #8]
	adds r0, r0, r2
	str r0, [r1, #8]
	adds r5, #8
	ldr r0, [r1, #4]
	adds r0, #1
	str r0, [r1, #4]
	cmp r0, #7
	ble _0803EFD0
	ldr r0, [sp, #0x1e0]
	bl sub_0803E210
	cmp r0, #0
	beq _0803EFCE
	b _0803F1F4
_0803EFCE:
	add r5, sp, #0x28
_0803EFD0:
	ldr r0, [r6]
	add r8, r0
	ldr r0, _0803F00C @ =gUnknown_083D4964
	str r0, [r5]
	movs r0, #1
	str r0, [r5, #4]
	mov r2, sb
	ldr r0, [r2, #8]
	adds r0, #1
	str r0, [r2, #8]
	adds r5, #8
	ldr r0, [r2, #4]
	adds r0, #1
	str r0, [r2, #4]
	cmp r0, #7
	ble _0803F000
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	bl sub_0803E210
	cmp r0, #0
	beq _0803EFFE
	b _0803F1F4
_0803EFFE:
	add r5, sp, #0x28
_0803F000:
	mov r0, r8
	str r0, [r5]
	ldr r1, [r4]
	ldr r0, [r6]
	subs r1, r1, r0
	b _0803F116
	.align 2, 0
_0803F00C: .4byte gUnknown_083D4964
_0803F010:
	add r4, sp, #0x1d8
	ldr r0, [r4]
	cmp r0, #1
	bgt _0803F022
	movs r1, #1
	ldr r0, [sp, #0x1ec]
	ands r0, r1
	cmp r0, #0
	beq _0803F0E8
_0803F022:
	add r1, sp, #0x1c4
	mov r2, r8
	ldrb r0, [r2]
	strb r0, [r1]
	movs r0, #1
	add r8, r0
	movs r0, #0x2e
	strb r0, [r1, #1]
	str r1, [r5]
	movs r0, #2
	str r0, [r5, #4]
	mov r1, sb
	ldr r0, [r1, #8]
	adds r0, #2
	str r0, [r1, #8]
	adds r5, #8
	ldr r0, [r1, #4]
	adds r0, #1
	str r0, [r1, #4]
	cmp r0, #7
	ble _0803F05A
	ldr r0, [sp, #0x1e0]
	bl sub_0803E210
	cmp r0, #0
	beq _0803F058
	b _0803F1F4
_0803F058:
	add r5, sp, #0x28
_0803F05A:
	ldr r3, _0803F084 @ =0x00000000
	ldr r2, _0803F080 @ =0x00000000
	ldr r0, [sp, #0x1fc]
	ldr r1, [sp, #0x200]
	bl sub_08042BCC
	cmp r0, #0
	beq _0803F088
	mov r2, r8
	str r2, [r5]
	ldr r1, [r4]
	subs r0, r1, #1
	str r0, [r5, #4]
	mov r4, sb
	ldr r0, [r4, #8]
	subs r0, #1
	adds r0, r0, r1
	b _0803F0F4
	.align 2, 0
_0803F080: .4byte 0x00000000
_0803F084: .4byte 0x00000000
_0803F088:
	ldr r0, [r4]
	subs r4, r0, #1
	cmp r4, #0
	ble _0803F110
	ldr r1, _0803F0E4 @ =gUnknown_083D48FC
	cmp r4, #0x10
	ble _0803F0C8
	mov r6, sb
_0803F098:
	str r1, [r5]
	movs r0, #0x10
	str r0, [r5, #4]
	ldr r0, [r6, #8]
	adds r0, #0x10
	str r0, [r6, #8]
	adds r5, #8
	ldr r0, [r6, #4]
	adds r0, #1
	str r0, [r6, #4]
	cmp r0, #7
	ble _0803F0C2
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	bl sub_0803E210
	cmp r0, #0
	beq _0803F0BE
	b _0803F1F4
_0803F0BE:
	add r5, sp, #0x28
	ldr r1, _0803F0E4 @ =gUnknown_083D48FC
_0803F0C2:
	subs r4, #0x10
	cmp r4, #0x10
	bgt _0803F098
_0803F0C8:
	str r1, [r5]
	str r4, [r5, #4]
	mov r1, sb
	ldr r0, [r1, #8]
	adds r0, r0, r4
	str r0, [r1, #8]
	adds r5, #8
	ldr r0, [r1, #4]
	adds r0, #1
	str r0, [r1, #4]
	cmp r0, #7
	ble _0803F110
	ldr r0, [sp, #0x1e0]
	b _0803F106
	.align 2, 0
_0803F0E4: .4byte gUnknown_083D48FC
_0803F0E8:
	mov r2, r8
	str r2, [r5]
	str r1, [r5, #4]
	mov r4, sb
	ldr r0, [r4, #8]
	adds r0, #1
_0803F0F4:
	str r0, [r4, #8]
	adds r5, #8
	ldr r0, [r4, #4]
	adds r0, #1
	str r0, [r4, #4]
	cmp r0, #7
	ble _0803F110
	ldr r0, [sp, #0x1e0]
	mov r1, sb
_0803F106:
	bl sub_0803E210
	cmp r0, #0
	bne _0803F1F4
	add r5, sp, #0x28
_0803F110:
	add r0, sp, #0x14
	str r0, [r5]
	ldr r1, [sp, #0x204]
_0803F116:
	str r1, [r5, #4]
	mov r2, sb
	ldr r0, [r2, #8]
	adds r0, r0, r1
_0803F11E:
	str r0, [r2, #8]
	adds r5, #8
	ldr r0, [r2, #4]
	adds r0, #1
	str r0, [r2, #4]
_0803F128:
	cmp r0, #7
	ble _0803F13A
	ldr r0, [sp, #0x1e0]
	mov r1, sb
_0803F130:
	bl sub_0803E210
	cmp r0, #0
	bne _0803F1F4
	add r5, sp, #0x28
_0803F13A:
	movs r0, #4
	ldr r4, [sp, #0x1ec]
	ands r4, r0
	cmp r4, #0
	beq _0803F1A6
	ldr r0, [sp, #0x1f4]
	ldr r1, [sp, #0x20c]
	subs r4, r0, r1
	cmp r4, #0
	ble _0803F1A6
	ldr r1, _0803F1D8 @ =gUnknown_083D48EC
	cmp r4, #0x10
	ble _0803F184
	mov r6, sb
_0803F156:
	str r1, [r5]
	movs r0, #0x10
	str r0, [r5, #4]
	ldr r0, [r6, #8]
	adds r0, #0x10
	str r0, [r6, #8]
	adds r5, #8
	ldr r0, [r6, #4]
	adds r0, #1
	str r0, [r6, #4]
	cmp r0, #7
	ble _0803F17E
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	bl sub_0803E210
	cmp r0, #0
	bne _0803F1F4
	add r5, sp, #0x28
	ldr r1, _0803F1D8 @ =gUnknown_083D48EC
_0803F17E:
	subs r4, #0x10
	cmp r4, #0x10
	bgt _0803F156
_0803F184:
	str r1, [r5]
	str r4, [r5, #4]
	mov r2, sb
	ldr r0, [r2, #8]
	adds r0, r0, r4
	str r0, [r2, #8]
	ldr r0, [r2, #4]
	adds r0, #1
	str r0, [r2, #4]
	cmp r0, #7
	ble _0803F1A6
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	bl sub_0803E210
	cmp r0, #0
	bne _0803F1F4
_0803F1A6:
	ldr r0, [sp, #0x20c]
	ldr r4, [sp, #0x1f4]
	cmp r0, r4
	bge _0803F1B0
	adds r0, r4, #0
_0803F1B0:
	ldr r1, [sp, #0x1f0]
	adds r1, r1, r0
	str r1, [sp, #0x1f0]
	mov r2, sb
	ldr r0, [r2, #8]
	cmp r0, #0
	beq _0803F1CA
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	bl sub_0803E210
	cmp r0, #0
	bne _0803F1F4
_0803F1CA:
	movs r0, #0
	mov r4, sb
	str r0, [r4, #4]
	add r5, sp, #0x28
	bl _0803E370
	.align 2, 0
_0803F1D8: .4byte gUnknown_083D48EC
_0803F1DC:
	mov r1, sb
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _0803F1EE
	ldr r0, [sp, #0x1e0]
	bl sub_0803E210
	cmp r0, #0
	bne _0803F1F4
_0803F1EE:
	movs r0, #0
	mov r1, sb
	str r0, [r1, #4]
_0803F1F4:
	movs r0, #0x40
	ldr r2, [sp, #0x1e0]
	ldrh r2, [r2, #0xc]
	ands r0, r2
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, #0
	bne _0803F206
	ldr r1, [sp, #0x1f0]
_0803F206:
	adds r0, r1, #0
sub_0803F208:
	movs r3, #0x88
	lsls r3, r3, #2
	add sp, r3
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_0803F218
sub_0803F218: @ 0x0803F218
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	str r0, [sp, #0x18]
	adds r5, r2, #0
	adds r4, r1, #0
	mov r8, r3
	ldr r6, [sp, #0x3c]
	ldr r0, [sp, #0x44]
	mov sl, r0
	ldr r1, [sp, #0x48]
	mov sb, r1
	cmp r1, #0x66
	bne _0803F23E
	movs r7, #3
	b _0803F24E
_0803F23E:
	mov r0, sb
	cmp r0, #0x65
	beq _0803F248
	cmp r0, #0x45
	bne _0803F24C
_0803F248:
	movs r1, #1
	add r8, r1
_0803F24C:
	movs r7, #2
_0803F24E:
	lsls r0, r4, #0x1f
	lsrs r0, r0, #0x1f
	cmp r0, #0
	beq _0803F264
	adds r1, r5, #0
	adds r0, r4, #0
	bl sub_08042E38
	adds r5, r1, #0
	adds r4, r0, #0
	movs r0, #0x2d
_0803F264:
	ldr r1, [sp, #0x40]
	strb r0, [r1]
	mov r0, r8
	str r0, [sp]
	mov r1, sl
	str r1, [sp, #4]
	add r0, sp, #0x10
	str r0, [sp, #8]
	add r0, sp, #0x14
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x18]
	adds r2, r5, #0
	adds r1, r4, #0
	adds r3, r7, #0
	bl sub_0803F584
	adds r7, r0, #0
	mov r1, sb
	cmp r1, #0x67
	beq _0803F290
	cmp r1, #0x47
	bne _0803F298
_0803F290:
	movs r0, #1
	ands r6, r0
	cmp r6, #0
	beq _0803F2EC
_0803F298:
	mov r0, r8
	adds r6, r7, r0
	mov r1, sb
	cmp r1, #0x66
	bne _0803F2C8
	ldrb r0, [r7]
	cmp r0, #0x30
	bne _0803F2C2
	ldr r3, _0803F308 @ =0x00000000
	ldr r2, _0803F304 @ =0x00000000
	adds r1, r5, #0
	adds r0, r4, #0
	bl sub_08042BCC
	cmp r0, #0
	beq _0803F2C2
	mov r1, r8
	rsbs r0, r1, #0
	adds r0, #1
	mov r1, sl
	str r0, [r1]
_0803F2C2:
	mov r1, sl
	ldr r0, [r1]
	adds r6, r6, r0
_0803F2C8:
	ldr r3, _0803F308 @ =0x00000000
	ldr r2, _0803F304 @ =0x00000000
	adds r1, r5, #0
	adds r0, r4, #0
	bl sub_08042B80
	cmp r0, #0
	bne _0803F2DA
	str r6, [sp, #0x14]
_0803F2DA:
	ldr r0, [sp, #0x14]
	cmp r0, r6
	bhs _0803F2EC
	movs r1, #0x30
_0803F2E2:
	strb r1, [r0]
	adds r0, #1
	str r0, [sp, #0x14]
	cmp r0, r6
	blo _0803F2E2
_0803F2EC:
	ldr r0, [sp, #0x14]
	subs r0, r0, r7
	ldr r1, [sp, #0x4c]
	str r0, [r1]
	adds r0, r7, #0
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0803F304: .4byte 0x00000000
_0803F308: .4byte 0x00000000

	thumb_func_start sub_0803F30C
sub_0803F30C: @ 0x0803F30C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x134
	adds r7, r0, #0
	adds r6, r1, #0
	strb r2, [r7]
	adds r5, r7, #1
	cmp r6, #0
	bge _0803F322
	rsbs r6, r6, #0
	movs r0, #0x2d
	b _0803F324
_0803F322:
	movs r0, #0x2b
_0803F324:
	strb r0, [r7, #1]
	adds r5, #1
	add r4, sp, #0x134
	cmp r6, #9
	ble _0803F366
_0803F32E:
	subs r4, #1
	adds r0, r6, #0
	movs r1, #0xa
	bl sub_0803D86C
	adds r0, #0x30
	strb r0, [r4]
	adds r0, r6, #0
	movs r1, #0xa
	bl sub_0803D7D4
	adds r6, r0, #0
	cmp r6, #9
	bgt _0803F32E
	subs r4, #1
	adds r0, #0x30
	strb r0, [r4]
	add r0, sp, #0x134
	cmp r4, r0
	bhs _0803F374
	adds r1, r0, #0
_0803F358:
	ldrb r0, [r4]
	strb r0, [r5]
	adds r4, #1
	adds r5, #1
	cmp r4, r1
	blo _0803F358
	b _0803F374
_0803F366:
	movs r0, #0x30
	strb r0, [r5]
	adds r5, #1
	adds r0, r6, #0
	adds r0, #0x30
	strb r0, [r5]
	adds r5, #1
_0803F374:
	subs r0, r5, r7
	add sp, #0x134
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_0803F37C
sub_0803F37C: @ 0x0803F37C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x54]
	cmp r0, #0
	bne _0803F38C
	ldr r0, _0803F3B8 @ =gUnknown_030002EC
	ldr r0, [r0]
	str r0, [r4, #0x54]
_0803F38C:
	ldr r1, [r4, #0x54]
	ldr r0, [r1, #0x38]
	cmp r0, #0
	bne _0803F39A
	adds r0, r1, #0
	bl sub_0804040C
_0803F39A:
	ldrh r1, [r4, #0xc]
	movs r0, #8
	ands r0, r1
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	cmp r5, #0
	bne _0803F3F4
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _0803F3BC
	movs r0, #1
	rsbs r0, r0, #0
	b _0803F426
	.align 2, 0
_0803F3B8: .4byte gUnknown_030002EC
_0803F3BC:
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0803F3EC
	ldr r1, [r4, #0x30]
	cmp r1, #0
	beq _0803F3DA
	adds r0, r4, #0
	adds r0, #0x40
	cmp r1, r0
	beq _0803F3D8
	ldr r0, [r4, #0x54]
	bl sub_0804046C
_0803F3D8:
	str r5, [r4, #0x30]
_0803F3DA:
	movs r0, #0x25
	rsbs r0, r0, #0
	ldrh r1, [r4, #0xc]
	ands r0, r1
	movs r1, #0
	strh r0, [r4, #0xc]
	str r1, [r4, #4]
	ldr r0, [r4, #0x10]
	str r0, [r4]
_0803F3EC:
	movs r0, #8
	ldrh r1, [r4, #0xc]
	orrs r0, r1
	strh r0, [r4, #0xc]
_0803F3F4:
	ldr r0, [r4, #0x10]
	cmp r0, #0
	bne _0803F400
	adds r0, r4, #0
	bl sub_080409C4
_0803F400:
	ldrh r1, [r4, #0xc]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0803F416
	movs r0, #0
	str r0, [r4, #8]
	ldr r0, [r4, #0x14]
	rsbs r0, r0, #0
	str r0, [r4, #0x18]
	b _0803F424
_0803F416:
	movs r0, #2
	ands r0, r1
	movs r1, #0
	cmp r0, #0
	bne _0803F422
	ldr r1, [r4, #0x14]
_0803F422:
	str r1, [r4, #8]
_0803F424:
	movs r0, #0
_0803F426:
	pop {r4, r5, pc}

	thumb_func_start sub_0803F428
sub_0803F428: @ 0x0803F428
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	str r0, [sp]
	str r1, [sp, #4]
	ldr r7, [r1, #0x10]
	ldr r0, [r0, #0x10]
	cmp r0, r7
	bge _0803F444
	movs r0, #0
	b _0803F578
_0803F444:
	ldr r0, [sp, #4]
	adds r0, #0x14
	mov r8, r0
	subs r7, #1
	lsls r0, r7, #2
	mov r1, r8
	adds r1, r1, r0
	str r1, [sp, #0xc]
	ldr r4, [sp]
	adds r4, #0x14
	adds r5, r4, r0
	ldr r1, [r1]
	adds r1, #1
	ldr r2, [r5]
	mov sl, r2
	mov r0, sl
	bl sub_0803DD84
	str r0, [sp, #8]
	mov r3, r8
	str r3, [sp, #0x14]
	str r4, [sp, #0x10]
	cmp r0, #0
	beq _0803F4EE
	movs r6, #0
	mov sb, r6
	ldr r0, _0803F4D8 @ =0x0000FFFF
	mov ip, r0
_0803F47C:
	mov r2, r8
	adds r2, #4
	mov r8, r2
	subs r2, #4
	ldm r2!, {r1}
	adds r0, r1, #0
	mov r3, ip
	ands r0, r3
	ldr r2, [sp, #8]
	muls r0, r2, r0
	mov r3, sb
	adds r2, r0, r3
	lsrs r0, r1, #0x10
	ldr r3, [sp, #8]
	adds r1, r0, #0
	muls r1, r3, r1
	lsrs r0, r2, #0x10
	adds r3, r1, r0
	lsrs r0, r3, #0x10
	mov sb, r0
	ldr r0, [r4]
	mov r1, ip
	ands r0, r1
	ands r2, r1
	subs r0, r0, r2
	adds r2, r0, r6
	asrs r6, r2, #0x10
	ldr r0, [r4]
	lsrs r1, r0, #0x10
	mov r0, ip
	ands r3, r0
	subs r1, r1, r3
	adds r0, r1, r6
	asrs r6, r0, #0x10
	strh r0, [r4]
	strh r2, [r4, #2]
	adds r4, #4
	ldr r1, [sp, #0xc]
	cmp r8, r1
	bls _0803F47C
	mov r2, sl
	cmp r2, #0
	bne _0803F4EE
	ldr r4, [sp, #0x10]
	b _0803F4DE
	.align 2, 0
_0803F4D8: .4byte 0x0000FFFF
_0803F4DC:
	subs r7, #1
_0803F4DE:
	subs r5, #4
	cmp r5, r4
	bls _0803F4EA
	ldr r0, [r5]
	cmp r0, #0
	beq _0803F4DC
_0803F4EA:
	ldr r3, [sp]
	str r7, [r3, #0x10]
_0803F4EE:
	ldr r0, [sp]
	ldr r1, [sp, #4]
	bl sub_08041618
	cmp r0, #0
	blt _0803F576
	ldr r0, [sp, #8]
	adds r0, #1
	str r0, [sp, #8]
	movs r6, #0
	mov sb, r6
	ldr r4, [sp, #0x10]
	ldr r1, [sp, #0x14]
	mov r8, r1
	lsls r2, r7, #2
	mov sl, r2
	ldr r5, _0803F560 @ =0x0000FFFF
_0803F510:
	mov r3, r8
	adds r3, #4
	mov r8, r3
	subs r3, #4
	ldm r3!, {r1}
	adds r0, r1, #0
	ands r0, r5
	mov r3, sb
	adds r2, r0, r3
	lsrs r1, r1, #0x10
	lsrs r0, r2, #0x10
	adds r3, r1, r0
	lsrs r0, r3, #0x10
	mov sb, r0
	ldr r1, [r4]
	adds r0, r1, #0
	ands r0, r5
	ands r2, r5
	subs r0, r0, r2
	adds r2, r0, r6
	asrs r6, r2, #0x10
	lsrs r1, r1, #0x10
	ands r3, r5
	subs r1, r1, r3
	adds r0, r1, r6
	asrs r6, r0, #0x10
	strh r0, [r4]
	strh r2, [r4, #2]
	adds r4, #4
	ldr r1, [sp, #0xc]
	cmp r8, r1
	bls _0803F510
	ldr r4, [sp, #0x10]
	mov r2, sl
	adds r5, r4, r2
	ldr r0, [r5]
	cmp r0, #0
	bne _0803F576
	b _0803F566
	.align 2, 0
_0803F560: .4byte 0x0000FFFF
_0803F564:
	subs r7, #1
_0803F566:
	subs r5, #4
	cmp r5, r4
	bls _0803F572
	ldr r0, [r5]
	cmp r0, #0
	beq _0803F564
_0803F572:
	ldr r3, [sp]
	str r7, [r3, #0x10]
_0803F576:
	ldr r0, [sp, #8]
_0803F578:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_0803F584
sub_0803F584: @ 0x0803F584
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x84
	mov sl, r0
	str r3, [sp, #0xc]
	ldr r4, [sp, #0xac]
	str r1, [sp, #0x40]
	str r2, [sp, #0x44]
	ldr r2, [r0, #0x40]
	cmp r2, #0
	beq _0803F5BC
	ldr r0, [r0, #0x44]
	str r0, [r2, #4]
	mov r0, sl
	ldr r1, [r0, #0x44]
	movs r0, #1
	lsls r0, r1
	str r0, [r2, #8]
	mov r0, sl
	adds r1, r2, #0
	bl sub_08041150
	movs r0, #0
	mov r1, sl
	str r0, [r1, #0x40]
_0803F5BC:
	movs r0, #0x80
	lsls r0, r0, #0x18
	ldr r1, [sp, #0x40]
	ands r0, r1
	cmp r0, #0
	beq _0803F5D8
	movs r0, #1
	str r0, [r4]
	ldr r0, _0803F5D4 @ =0x7FFFFFFF
	ands r1, r0
	str r1, [sp, #0x40]
	b _0803F5DA
	.align 2, 0
_0803F5D4: .4byte 0x7FFFFFFF
_0803F5D8:
	str r0, [r4]
_0803F5DA:
	ldr r1, _0803F61C @ =0x7FF00000
	ldr r2, [sp, #0x40]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, r1
	bne _0803F630
	ldr r0, _0803F620 @ =0x0000270F
	ldr r3, [sp, #0xa8]
	str r0, [r3]
	ldr r0, _0803F624 @ =gUnknown_083D4974
	mov sb, r0
	ldr r1, [sp, #0x44]
	cmp r1, #0
	bne _0803F602
	ldr r0, _0803F628 @ =0x000FFFFF
	ands r2, r0
	cmp r2, #0
	bne _0803F602
	ldr r2, _0803F62C @ =gUnknown_083D4968
	mov sb, r2
_0803F602:
	ldr r3, [sp, #0xb0]
	cmp r3, #0
	beq _0803F654
	mov r1, sb
	ldrb r0, [r1, #3]
	adds r1, #3
	cmp r0, #0
	beq _0803F614
	adds r1, #5
_0803F614:
	ldr r2, [sp, #0xb0]
	str r1, [r2]
	b _0803F654
	.align 2, 0
_0803F61C: .4byte 0x7FF00000
_0803F620: .4byte 0x0000270F
_0803F624: .4byte gUnknown_083D4974
_0803F628: .4byte 0x000FFFFF
_0803F62C: .4byte gUnknown_083D4968
_0803F630:
	ldr r3, _0803F660 @ =0x00000000
	ldr r2, _0803F65C @ =0x00000000
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	bl sub_08042B80
	cmp r0, #0
	bne _0803F668
	movs r0, #1
	ldr r3, [sp, #0xa8]
	str r0, [r3]
	ldr r0, _0803F664 @ =gUnknown_083D4978
	mov sb, r0
	ldr r1, [sp, #0xb0]
	cmp r1, #0
	beq _0803F654
	adds r0, #1
	str r0, [r1]
_0803F654:
	mov r0, sb
	bl sub_0804026E
	.align 2, 0
_0803F65C: .4byte 0x00000000
_0803F660: .4byte 0x00000000
_0803F664: .4byte gUnknown_083D4978
_0803F668:
	add r0, sp, #8
	str r0, [sp]
	mov r0, sl
	ldr r1, [sp, #0x40]
	ldr r2, [sp, #0x44]
	add r3, sp, #4
	bl sub_08041850
	str r0, [sp, #0x5c]
	ldr r2, [sp, #0x40]
	lsls r0, r2, #1
	lsrs r0, r0, #0x15
	mov r8, r0
	cmp r0, #0
	beq _0803F6B8
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	str r0, [sp, #0x48]
	str r1, [sp, #0x4c]
	ldr r0, _0803F6AC @ =0x000FFFFF
	ldr r1, [sp, #0x48]
	ands r1, r0
	str r1, [sp, #0x48]
	ldr r0, _0803F6B0 @ =0x3FF00000
	adds r2, r1, #0
	orrs r2, r0
	str r2, [sp, #0x48]
	ldr r3, _0803F6B4 @ =0xFFFFFC01
	add r8, r3
	movs r0, #0
	str r0, [sp, #0x58]
	ldr r6, [sp, #8]
	b _0803F718
	.align 2, 0
_0803F6AC: .4byte 0x000FFFFF
_0803F6B0: .4byte 0x3FF00000
_0803F6B4: .4byte 0xFFFFFC01
_0803F6B8:
	ldr r1, [sp, #8]
	ldr r0, [sp, #4]
	adds r2, r1, r0
	ldr r3, _0803F6E0 @ =0x00000432
	adds r3, r3, r2
	mov r8, r3
	adds r6, r1, #0
	cmp r3, #0x20
	ble _0803F6E8
	movs r0, #0x40
	subs r0, r0, r3
	ldr r4, [sp, #0x40]
	lsls r4, r0
	ldr r1, _0803F6E4 @ =0x00000412
	adds r0, r2, r1
	ldr r2, [sp, #0x44]
	lsrs r2, r0
	adds r0, r2, #0
	orrs r4, r0
	b _0803F6F2
	.align 2, 0
_0803F6E0: .4byte 0x00000432
_0803F6E4: .4byte 0x00000412
_0803F6E8:
	movs r0, #0x20
	mov r3, r8
	subs r0, r0, r3
	ldr r4, [sp, #0x44]
	lsls r4, r0
_0803F6F2:
	adds r0, r4, #0
	bl sub_08042D48
	cmp r4, #0
	bge _0803F704
	ldr r3, _0803F7C8 @ =0x00000000
	ldr r2, _0803F7C4 @ =0x41F00000
	bl sub_080425BC
_0803F704:
	str r0, [sp, #0x48]
	str r1, [sp, #0x4c]
	ldr r1, _0803F7CC @ =0xFE100000
	ldr r0, [sp, #0x48]
	adds r1, r0, r1
	str r1, [sp, #0x48]
	ldr r2, _0803F7D0 @ =0xFFFFFBCD
	add r8, r2
	movs r3, #1
	str r3, [sp, #0x58]
_0803F718:
	ldr r2, _0803F7D4 @ =0x3FF80000
	ldr r3, _0803F7D8 @ =0x00000000
	ldr r0, [sp, #0x48]
	ldr r1, [sp, #0x4c]
	bl sub_080425EC
	ldr r2, _0803F7DC @ =0x3FD287A7
	ldr r3, _0803F7E0 @ =0x636F4361
	bl sub_08042624
	ldr r2, _0803F7E4 @ =0x3FC68A28
	ldr r3, _0803F7E8 @ =0x8B60C8B3
	bl sub_080425BC
	adds r5, r1, #0
	adds r4, r0, #0
	mov r0, r8
	bl sub_08042D48
	ldr r2, _0803F7EC @ =0x3FD34413
	ldr r3, _0803F7F0 @ =0x509F79FB
	bl sub_08042624
	adds r3, r1, #0
	adds r2, r0, #0
	adds r1, r5, #0
	adds r0, r4, #0
	bl sub_080425BC
	str r0, [sp, #0x6c]
	str r1, [sp, #0x70]
	bl sub_08042DC4
	str r0, [sp, #0x24]
	ldr r2, _0803F7F4 @ =0x00000000
	ldr r3, _0803F7F8 @ =0x00000000
	ldr r0, [sp, #0x6c]
	ldr r1, [sp, #0x70]
	bl sub_08042CB0
	cmp r0, #0
	bge _0803F788
	ldr r0, [sp, #0x24]
	bl sub_08042D48
	adds r3, r1, #0
	adds r2, r0, #0
	ldr r0, [sp, #0x6c]
	ldr r1, [sp, #0x70]
	bl sub_08042BCC
	cmp r0, #0
	beq _0803F788
	ldr r0, [sp, #0x24]
	subs r0, #1
	str r0, [sp, #0x24]
_0803F788:
	movs r1, #1
	str r1, [sp, #0x2c]
	ldr r2, [sp, #0x24]
	cmp r2, #0x16
	bhi _0803F7B2
	ldr r1, _0803F7FC @ =gUnknown_083D49C8
	lsls r0, r2, #3
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r3, [r0, #4]
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	bl sub_08042CB0
	cmp r0, #0
	bge _0803F7AE
	ldr r3, [sp, #0x24]
	subs r3, #1
	str r3, [sp, #0x24]
_0803F7AE:
	movs r0, #0
	str r0, [sp, #0x2c]
_0803F7B2:
	mov r1, r8
	subs r0, r6, r1
	subs r4, r0, #1
	cmp r4, #0
	blt _0803F800
	movs r2, #0
	str r2, [sp, #0x10]
	str r4, [sp, #0x34]
	b _0803F808
	.align 2, 0
_0803F7C4: .4byte 0x41F00000
_0803F7C8: .4byte 0x00000000
_0803F7CC: .4byte 0xFE100000
_0803F7D0: .4byte 0xFFFFFBCD
_0803F7D4: .4byte 0x3FF80000
_0803F7D8: .4byte 0x00000000
_0803F7DC: .4byte 0x3FD287A7
_0803F7E0: .4byte 0x636F4361
_0803F7E4: .4byte 0x3FC68A28
_0803F7E8: .4byte 0x8B60C8B3
_0803F7EC: .4byte 0x3FD34413
_0803F7F0: .4byte 0x509F79FB
_0803F7F4: .4byte 0x00000000
_0803F7F8: .4byte 0x00000000
_0803F7FC: .4byte gUnknown_083D49C8
_0803F800:
	rsbs r4, r4, #0
	str r4, [sp, #0x10]
	movs r3, #0
	str r3, [sp, #0x34]
_0803F808:
	ldr r0, [sp, #0x24]
	cmp r0, #0
	blt _0803F81C
	movs r1, #0
	str r1, [sp, #0x14]
	str r0, [sp, #0x38]
	ldr r2, [sp, #0x34]
	adds r2, r2, r0
	str r2, [sp, #0x34]
	b _0803F82C
_0803F81C:
	ldr r3, [sp, #0x10]
	ldr r0, [sp, #0x24]
	subs r3, r3, r0
	str r3, [sp, #0x10]
	rsbs r1, r0, #0
	str r1, [sp, #0x14]
	movs r2, #0
	str r2, [sp, #0x38]
_0803F82C:
	ldr r3, [sp, #0xc]
	cmp r3, #9
	bls _0803F836
	movs r0, #0
	str r0, [sp, #0xc]
_0803F836:
	movs r5, #1
	ldr r1, [sp, #0xc]
	cmp r1, #5
	ble _0803F844
	subs r1, #4
	str r1, [sp, #0xc]
	movs r5, #0
_0803F844:
	movs r2, #1
	str r2, [sp, #0x30]
	ldr r3, [sp, #0xc]
	cmp r3, #5
	bhi _0803F8BE
	lsls r0, r3, #2
	ldr r1, _0803F858 @ =_0803F85C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0803F858: .4byte _0803F85C
_0803F85C: @ jump table
	.4byte _0803F874 @ case 0
	.4byte _0803F874 @ case 1
	.4byte _0803F886 @ case 2
	.4byte _0803F8A2 @ case 3
	.4byte _0803F88A @ case 4
	.4byte _0803F8A6 @ case 5
_0803F874:
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [sp, #0x18]
	str r0, [sp, #0x20]
	movs r1, #0x12
	mov r8, r1
	movs r2, #0
	str r2, [sp, #0xa4]
	b _0803F8BE
_0803F886:
	movs r3, #0
	str r3, [sp, #0x30]
_0803F88A:
	ldr r0, [sp, #0xa4]
	cmp r0, #0
	bgt _0803F894
	movs r1, #1
	str r1, [sp, #0xa4]
_0803F894:
	ldr r2, [sp, #0xa4]
	mov r8, r2
	mov r3, r8
	str r3, [sp, #0x20]
	mov r0, r8
	str r0, [sp, #0x18]
	b _0803F8BE
_0803F8A2:
	movs r1, #0
	str r1, [sp, #0x30]
_0803F8A6:
	ldr r2, [sp, #0xa4]
	ldr r3, [sp, #0x24]
	adds r0, r2, r3
	adds r1, r0, #1
	mov r8, r1
	mov r2, r8
	str r2, [sp, #0x18]
	str r0, [sp, #0x20]
	cmp r1, #0
	bgt _0803F8BE
	movs r3, #1
	mov r8, r3
_0803F8BE:
	movs r4, #4
	movs r0, #0
	mov r1, sl
	str r0, [r1, #0x44]
	mov r2, r8
	cmp r2, #0x17
	bls _0803F8DE
	movs r1, #0
_0803F8CE:
	adds r1, #1
	lsls r4, r4, #1
	adds r0, r4, #0
	adds r0, #0x14
	cmp r0, r8
	bls _0803F8CE
	mov r3, sl
	str r1, [r3, #0x44]
_0803F8DE:
	mov r0, sl
	ldr r1, [r0, #0x44]
	bl sub_080410F8
	mov r1, sl
	str r0, [r1, #0x40]
	str r0, [sp, #0x74]
	mov sb, r0
	ldr r2, [sp, #0x18]
	cmp r2, #0xe
	bls _0803F8F6
	b _0803FC68
_0803F8F6:
	cmp r5, #0
	bne _0803F8FC
	b _0803FC68
_0803F8FC:
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	str r0, [sp, #0x78]
	str r1, [sp, #0x7c]
	str r0, [sp, #0x48]
	str r1, [sp, #0x4c]
	ldr r1, [sp, #0x24]
	str r1, [sp, #0x28]
	str r2, [sp, #0x1c]
	movs r7, #2
	cmp r1, #0
	ble _0803F98C
	ldr r0, _0803F984 @ =gUnknown_083D49C8
	movs r2, #0xf
	ands r1, r2
	lsls r1, r1, #3
	adds r3, r1, r0
	ldr r0, [r3]
	ldr r1, [r3, #4]
	str r0, [sp, #0x6c]
	str r1, [sp, #0x70]
	ldr r1, [sp, #0x24]
	asrs r4, r1, #4
	movs r0, #0x10
	ands r0, r4
	cmp r0, #0
	beq _0803F948
	ands r4, r2
	ldr r0, _0803F988 @ =gUnknown_083D4A90
	ldr r2, [r0, #0x20]
	ldr r3, [r0, #0x24]
	ldr r0, [sp, #0x78]
	ldr r1, [sp, #0x7c]
	bl sub_080428CC
	str r0, [sp, #0x40]
	str r1, [sp, #0x44]
	movs r7, #3
_0803F948:
	cmp r4, #0
	beq _0803F970
	ldr r5, _0803F988 @ =gUnknown_083D4A90
_0803F94E:
	movs r0, #1
	ands r0, r4
	cmp r0, #0
	beq _0803F968
	adds r7, #1
	ldr r2, [r5]
	ldr r3, [r5, #4]
	ldr r0, [sp, #0x6c]
	ldr r1, [sp, #0x70]
	bl sub_08042624
	str r0, [sp, #0x6c]
	str r1, [sp, #0x70]
_0803F968:
	asrs r4, r4, #1
	adds r5, #8
	cmp r4, #0
	bne _0803F94E
_0803F970:
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	ldr r2, [sp, #0x6c]
	ldr r3, [sp, #0x70]
	bl sub_080428CC
	str r0, [sp, #0x40]
	str r1, [sp, #0x44]
	b _0803F9D8
	.align 2, 0
_0803F984: .4byte gUnknown_083D49C8
_0803F988: .4byte gUnknown_083D4A90
_0803F98C:
	ldr r2, [sp, #0x24]
	rsbs r6, r2, #0
	cmp r6, #0
	beq _0803F9D8
	ldr r1, _0803FA80 @ =gUnknown_083D49C8
	movs r0, #0xf
	ands r0, r6
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r1, [r0, #4]
	ldr r0, [r0]
	ldr r2, [sp, #0x78]
	ldr r3, [sp, #0x7c]
	bl sub_08042624
	str r0, [sp, #0x40]
	str r1, [sp, #0x44]
	asrs r4, r6, #4
	cmp r4, #0
	beq _0803F9D8
	ldr r5, _0803FA84 @ =gUnknown_083D4A90
_0803F9B6:
	movs r0, #1
	ands r0, r4
	cmp r0, #0
	beq _0803F9D0
	adds r7, #1
	ldr r0, [r5]
	ldr r1, [r5, #4]
	ldr r2, [sp, #0x40]
	ldr r3, [sp, #0x44]
	bl sub_08042624
	str r0, [sp, #0x40]
	str r1, [sp, #0x44]
_0803F9D0:
	asrs r4, r4, #1
	adds r5, #8
	cmp r4, #0
	bne _0803F9B6
_0803F9D8:
	ldr r3, [sp, #0x2c]
	cmp r3, #0
	beq _0803FA16
	ldr r2, _0803FA88 @ =0x3FF00000
	ldr r3, _0803FA8C @ =0x00000000
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	bl sub_08042CB0
	cmp r0, #0
	bge _0803FA16
	ldr r0, [sp, #0x18]
	cmp r0, #0
	ble _0803FA16
	ldr r1, [sp, #0x20]
	cmp r1, #0
	bgt _0803F9FC
	b _0803FC54
_0803F9FC:
	str r1, [sp, #0x18]
	ldr r2, [sp, #0x24]
	subs r2, #1
	str r2, [sp, #0x24]
	ldr r0, _0803FA90 @ =0x40240000
	ldr r1, _0803FA94 @ =0x00000000
	ldr r2, [sp, #0x40]
	ldr r3, [sp, #0x44]
	bl sub_08042624
	str r0, [sp, #0x40]
	str r1, [sp, #0x44]
	adds r7, #1
_0803FA16:
	adds r0, r7, #0
	bl sub_08042D48
	ldr r2, [sp, #0x40]
	ldr r3, [sp, #0x44]
	bl sub_08042624
	ldr r2, _0803FA98 @ =0x401C0000
	ldr r3, _0803FA9C @ =0x00000000
	bl sub_080425BC
	str r0, [sp, #0x50]
	str r1, [sp, #0x54]
	ldr r0, _0803FAA0 @ =0xFCC00000
	ldr r3, [sp, #0x50]
	adds r0, r3, r0
	str r0, [sp, #0x50]
	ldr r1, [sp, #0x18]
	cmp r1, #0
	bne _0803FAAC
	movs r2, #0
	str r2, [sp, #0x64]
	movs r3, #0
	str r3, [sp, #0x68]
	ldr r2, _0803FAA4 @ =0x40140000
	ldr r3, _0803FAA8 @ =0x00000000
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	bl sub_080425EC
	adds r5, r1, #0
	adds r4, r0, #0
	ldr r2, [sp, #0x50]
	ldr r3, [sp, #0x54]
	bl sub_08042C18
	cmp r0, #0
	ble _0803FA64
	b _0803FFDE
_0803FA64:
	ldr r0, [sp, #0x50]
	ldr r1, [sp, #0x54]
	bl sub_08042E38
	adds r3, r1, #0
	adds r2, r0, #0
	adds r1, r5, #0
	adds r0, r4, #0
	bl sub_08042CB0
	cmp r0, #0
	bge _0803FA7E
	b _0803FFD6
_0803FA7E:
	b _0803FC54
	.align 2, 0
_0803FA80: .4byte gUnknown_083D49C8
_0803FA84: .4byte gUnknown_083D4A90
_0803FA88: .4byte 0x3FF00000
_0803FA8C: .4byte 0x00000000
_0803FA90: .4byte 0x40240000
_0803FA94: .4byte 0x00000000
_0803FA98: .4byte 0x401C0000
_0803FA9C: .4byte 0x00000000
_0803FAA0: .4byte 0xFCC00000
_0803FAA4: .4byte 0x40140000
_0803FAA8: .4byte 0x00000000
_0803FAAC:
	ldr r0, [sp, #0x30]
	cmp r0, #0
	beq _0803FB7C
	ldr r1, _0803FADC @ =gUnknown_083D49C8
	ldr r0, [sp, #0x18]
	subs r0, #1
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r3, [r0, #4]
	ldr r0, _0803FAE0 @ =0x3FE00000
	ldr r1, _0803FAE4 @ =0x00000000
	bl sub_080428CC
	ldr r2, [sp, #0x50]
	ldr r3, [sp, #0x54]
	bl sub_080425EC
	str r0, [sp, #0x50]
	str r1, [sp, #0x54]
	movs r1, #0
	mov r8, r1
	b _0803FB08
	.align 2, 0
_0803FADC: .4byte gUnknown_083D49C8
_0803FAE0: .4byte 0x3FE00000
_0803FAE4: .4byte 0x00000000
_0803FAE8:
	ldr r1, _0803FB70 @ =0x00000000
	ldr r0, _0803FB6C @ =0x40240000
	ldr r2, [sp, #0x50]
	ldr r3, [sp, #0x54]
	bl sub_08042624
	str r0, [sp, #0x50]
	str r1, [sp, #0x54]
	ldr r1, _0803FB70 @ =0x00000000
	ldr r0, _0803FB6C @ =0x40240000
	adds r3, r5, #0
	adds r2, r4, #0
	bl sub_08042624
	str r0, [sp, #0x40]
	str r1, [sp, #0x44]
_0803FB08:
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	bl sub_08042DC4
	adds r6, r0, #0
	bl sub_08042D48
	adds r3, r1, #0
	adds r2, r0, #0
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	bl sub_080425EC
	adds r5, r1, #0
	adds r4, r0, #0
	adds r0, r6, #0
	adds r0, #0x30
	mov r2, sb
	strb r0, [r2]
	movs r3, #1
	add sb, r3
	adds r1, r5, #0
	adds r0, r4, #0
	ldr r2, [sp, #0x50]
	ldr r3, [sp, #0x54]
	bl sub_08042CB0
	cmp r0, #0
	bge _0803FB44
	b _0804024E
_0803FB44:
	ldr r0, _0803FB74 @ =0x3FF00000
	ldr r1, _0803FB78 @ =0x00000000
	adds r3, r5, #0
	adds r2, r4, #0
	bl sub_080425EC
	ldr r2, [sp, #0x50]
	ldr r3, [sp, #0x54]
	bl sub_08042CB0
	cmp r0, #0
	bge _0803FB5E
	b _0803FD68
_0803FB5E:
	movs r0, #1
	add r8, r0
	ldr r1, [sp, #0x18]
	cmp r8, r1
	blt _0803FAE8
	b _0803FC54
	.align 2, 0
_0803FB6C: .4byte 0x40240000
_0803FB70: .4byte 0x00000000
_0803FB74: .4byte 0x3FF00000
_0803FB78: .4byte 0x00000000
_0803FB7C:
	ldr r1, _0803FB9C @ =gUnknown_083D49C8
	ldr r0, [sp, #0x18]
	subs r0, #1
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r1, [r0, #4]
	ldr r0, [r0]
	ldr r2, [sp, #0x50]
	ldr r3, [sp, #0x54]
	bl sub_08042624
	str r0, [sp, #0x50]
	str r1, [sp, #0x54]
	movs r2, #1
	mov r8, r2
	b _0803FBB4
	.align 2, 0
_0803FB9C: .4byte gUnknown_083D49C8
_0803FBA0:
	movs r3, #1
	add r8, r3
	ldr r1, _0803FC48 @ =0x00000000
	ldr r0, _0803FC44 @ =0x40240000
	adds r3, r5, #0
	adds r2, r4, #0
	bl sub_08042624
	str r0, [sp, #0x40]
	str r1, [sp, #0x44]
_0803FBB4:
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	bl sub_08042DC4
	adds r6, r0, #0
	bl sub_08042D48
	adds r3, r1, #0
	adds r2, r0, #0
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	bl sub_080425EC
	adds r5, r1, #0
	adds r4, r0, #0
	adds r0, r6, #0
	adds r0, #0x30
	mov r1, sb
	strb r0, [r1]
	movs r2, #1
	add sb, r2
	ldr r3, [sp, #0x18]
	cmp r8, r3
	bne _0803FBA0
	ldr r6, _0803FC4C @ =0x3FE00000
	ldr r7, _0803FC50 @ =0x00000000
	adds r1, r7, #0
	adds r0, r6, #0
	ldr r2, [sp, #0x50]
	ldr r3, [sp, #0x54]
	bl sub_080425BC
	adds r3, r1, #0
	adds r2, r0, #0
	adds r1, r5, #0
	adds r0, r4, #0
	bl sub_08042C18
	cmp r0, #0
	ble _0803FC06
	b _0803FD68
_0803FC06:
	adds r1, r7, #0
	adds r0, r6, #0
	ldr r2, [sp, #0x50]
	ldr r3, [sp, #0x54]
	bl sub_080425EC
	adds r3, r1, #0
	adds r2, r0, #0
	adds r1, r5, #0
	adds r0, r4, #0
	bl sub_08042CB0
	cmp r0, #0
	bge _0803FC54
	movs r0, #1
	rsbs r0, r0, #0
	add sb, r0
	mov r1, sb
	ldrb r1, [r1]
	cmp r1, #0x30
	beq _0803FC32
	b _0803FD8E
_0803FC32:
	movs r2, #1
	rsbs r2, r2, #0
	add sb, r2
	mov r3, sb
	ldrb r3, [r3]
	cmp r3, #0x30
	beq _0803FC32
	b _0803FD8E
	.align 2, 0
_0803FC44: .4byte 0x40240000
_0803FC48: .4byte 0x00000000
_0803FC4C: .4byte 0x3FE00000
_0803FC50: .4byte 0x00000000
_0803FC54:
	ldr r1, [sp, #0x74]
	mov sb, r1
	ldr r2, [sp, #0x48]
	ldr r3, [sp, #0x4c]
	str r2, [sp, #0x40]
	str r3, [sp, #0x44]
	ldr r3, [sp, #0x28]
	str r3, [sp, #0x24]
	ldr r0, [sp, #0x1c]
	str r0, [sp, #0x18]
_0803FC68:
	ldr r0, [sp, #4]
	cmp r0, #0
	bge _0803FC70
	b _0803FDA4
_0803FC70:
	ldr r1, [sp, #0x24]
	cmp r1, #0xe
	ble _0803FC78
	b _0803FDA4
_0803FC78:
	ldr r1, _0803FCC4 @ =gUnknown_083D49C8
	ldr r2, [sp, #0x24]
	lsls r0, r2, #3
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r2, [r0, #4]
	str r1, [sp, #0x6c]
	str r2, [sp, #0x70]
	ldr r2, [sp, #0xa4]
	cmp r2, #0
	bge _0803FCD0
	ldr r3, [sp, #0x18]
	cmp r3, #0
	bgt _0803FCD0
	movs r0, #0
	str r0, [sp, #0x64]
	movs r1, #0
	str r1, [sp, #0x68]
	cmp r3, #0
	bge _0803FCA2
	b _0803FFD6
_0803FCA2:
	ldr r2, _0803FCC8 @ =0x40140000
	ldr r3, _0803FCCC @ =0x00000000
	ldr r0, [sp, #0x6c]
	ldr r1, [sp, #0x70]
	bl sub_08042624
	adds r3, r1, #0
	adds r2, r0, #0
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	bl sub_08042CFC
	cmp r0, #0
	bgt _0803FCC0
	b _0803FFD6
_0803FCC0:
	b _0803FFDE
	.align 2, 0
_0803FCC4: .4byte gUnknown_083D49C8
_0803FCC8: .4byte 0x40140000
_0803FCCC: .4byte 0x00000000
_0803FCD0:
	movs r2, #1
	mov r8, r2
	b _0803FCF4
_0803FCD6:
	ldr r1, _0803FD98 @ =0x00000000
	ldr r0, _0803FD94 @ =0x40240000
	bl sub_08042624
	str r0, [sp, #0x40]
	str r1, [sp, #0x44]
	ldr r2, _0803FD9C @ =0x00000000
	ldr r3, _0803FDA0 @ =0x00000000
	bl sub_08042B80
	cmp r0, #0
	bne _0803FCF0
	b _0804024E
_0803FCF0:
	movs r3, #1
	add r8, r3
_0803FCF4:
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	ldr r2, [sp, #0x6c]
	ldr r3, [sp, #0x70]
	bl sub_080428CC
	bl sub_08042DC4
	adds r6, r0, #0
	bl sub_08042D48
	ldr r2, [sp, #0x6c]
	ldr r3, [sp, #0x70]
	bl sub_08042624
	adds r3, r1, #0
	adds r2, r0, #0
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	bl sub_080425EC
	adds r3, r1, #0
	adds r2, r0, #0
	adds r0, r6, #0
	adds r0, #0x30
	mov r1, sb
	strb r0, [r1]
	movs r0, #1
	add sb, r0
	ldr r1, [sp, #0x18]
	cmp r8, r1
	bne _0803FCD6
	adds r1, r3, #0
	adds r0, r2, #0
	bl sub_080425BC
	adds r5, r1, #0
	adds r4, r0, #0
	ldr r2, [sp, #0x6c]
	ldr r3, [sp, #0x70]
	bl sub_08042C18
	cmp r0, #0
	bgt _0803FD68
	adds r1, r5, #0
	adds r0, r4, #0
	ldr r2, [sp, #0x6c]
	ldr r3, [sp, #0x70]
	bl sub_08042B80
	cmp r0, #0
	beq _0803FD5E
	b _0804024E
_0803FD5E:
	movs r0, #1
	ands r0, r6
	cmp r0, #0
	bne _0803FD68
	b _0804024E
_0803FD68:
	movs r0, #0x30
_0803FD6A:
	movs r2, #1
	rsbs r2, r2, #0
	add sb, r2
	mov r3, sb
	ldrb r3, [r3]
	cmp r3, #0x39
	bne _0803FD86
	ldr r1, [sp, #0x74]
	cmp sb, r1
	bne _0803FD6A
	ldr r2, [sp, #0x24]
	adds r2, #1
	str r2, [sp, #0x24]
	strb r0, [r1]
_0803FD86:
	mov r3, sb
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
_0803FD8E:
	movs r0, #1
	add sb, r0
	b _0804024E
	.align 2, 0
_0803FD94: .4byte 0x40240000
_0803FD98: .4byte 0x00000000
_0803FD9C: .4byte 0x00000000
_0803FDA0: .4byte 0x00000000
_0803FDA4:
	ldr r5, [sp, #0x10]
	ldr r6, [sp, #0x14]
	movs r1, #0
	str r1, [sp, #0x60]
	movs r2, #0
	str r2, [sp, #0x64]
	ldr r3, [sp, #0x30]
	cmp r3, #0
	beq _0803FE1A
	ldr r1, [sp, #0xc]
	cmp r1, #1
	bgt _0803FDD8
	ldr r2, [sp, #0x58]
	cmp r2, #0
	beq _0803FDD0
	ldr r3, _0803FDCC @ =0x00000433
	adds r3, r3, r0
	mov r8, r3
	b _0803FE04
	.align 2, 0
_0803FDCC: .4byte 0x00000433
_0803FDD0:
	ldr r1, [sp, #8]
	movs r0, #0x36
	subs r0, r0, r1
	b _0803FE02
_0803FDD8:
	ldr r4, [sp, #0x18]
	subs r4, #1
	ldr r0, [sp, #0x14]
	cmp r0, r4
	blt _0803FDE6
	subs r6, r0, r4
	b _0803FDF6
_0803FDE6:
	ldr r1, [sp, #0x14]
	subs r4, r4, r1
	ldr r2, [sp, #0x38]
	adds r2, r2, r4
	str r2, [sp, #0x38]
	adds r1, r1, r4
	str r1, [sp, #0x14]
	movs r6, #0
_0803FDF6:
	ldr r3, [sp, #0x18]
	mov r8, r3
	cmp r3, #0
	bge _0803FE04
	subs r5, r5, r3
	movs r0, #0
_0803FE02:
	mov r8, r0
_0803FE04:
	ldr r1, [sp, #0x10]
	add r1, r8
	str r1, [sp, #0x10]
	ldr r2, [sp, #0x34]
	add r2, r8
	str r2, [sp, #0x34]
	mov r0, sl
	movs r1, #1
	bl sub_08041360
	str r0, [sp, #0x64]
_0803FE1A:
	cmp r5, #0
	ble _0803FE3C
	ldr r3, [sp, #0x34]
	cmp r3, #0
	ble _0803FE3C
	mov r8, r3
	cmp r8, r5
	ble _0803FE2C
	mov r8, r5
_0803FE2C:
	ldr r0, [sp, #0x10]
	mov r1, r8
	subs r0, r0, r1
	str r0, [sp, #0x10]
	subs r5, r5, r1
	ldr r2, [sp, #0x34]
	subs r2, r2, r1
	str r2, [sp, #0x34]
_0803FE3C:
	ldr r3, [sp, #0x14]
	cmp r3, #0
	ble _0803FE8A
	ldr r0, [sp, #0x30]
	cmp r0, #0
	beq _0803FE7E
	cmp r6, #0
	ble _0803FE6E
	mov r0, sl
	ldr r1, [sp, #0x64]
	adds r2, r6, #0
	bl sub_080414E0
	str r0, [sp, #0x64]
	mov r0, sl
	ldr r1, [sp, #0x64]
	ldr r2, [sp, #0x5c]
	bl sub_08041374
	adds r4, r0, #0
	mov r0, sl
	ldr r1, [sp, #0x5c]
	bl sub_08041150
	str r4, [sp, #0x5c]
_0803FE6E:
	ldr r1, [sp, #0x14]
	subs r4, r1, r6
	cmp r4, #0
	beq _0803FE8A
	mov r0, sl
	ldr r1, [sp, #0x5c]
	adds r2, r4, #0
	b _0803FE84
_0803FE7E:
	mov r0, sl
	ldr r1, [sp, #0x5c]
	ldr r2, [sp, #0x14]
_0803FE84:
	bl sub_080414E0
	str r0, [sp, #0x5c]
_0803FE8A:
	mov r0, sl
	movs r1, #1
	bl sub_08041360
	str r0, [sp, #0x68]
	ldr r2, [sp, #0x38]
	cmp r2, #0
	ble _0803FEA4
	mov r0, sl
	ldr r1, [sp, #0x68]
	bl sub_080414E0
	str r0, [sp, #0x68]
_0803FEA4:
	ldr r3, [sp, #0xc]
	cmp r3, #1
	bgt _0803FEE0
	ldr r0, [sp, #0x44]
	cmp r0, #0
	bne _0803FEDC
	ldr r0, _0803FED4 @ =0x000FFFFF
	ldr r1, [sp, #0x40]
	ands r0, r1
	cmp r0, #0
	bne _0803FEDC
	ldr r0, _0803FED8 @ =0x7FF00000
	ands r1, r0
	cmp r1, #0
	beq _0803FEDC
	ldr r1, [sp, #0x10]
	adds r1, #1
	str r1, [sp, #0x10]
	ldr r2, [sp, #0x34]
	adds r2, #1
	str r2, [sp, #0x34]
	movs r3, #1
	str r3, [sp, #0x3c]
	b _0803FEE0
	.align 2, 0
_0803FED4: .4byte 0x000FFFFF
_0803FED8: .4byte 0x7FF00000
_0803FEDC:
	movs r0, #0
	str r0, [sp, #0x3c]
_0803FEE0:
	ldr r1, [sp, #0x38]
	cmp r1, #0
	beq _0803FF0C
	ldr r2, [sp, #0x68]
	ldr r1, [r2, #0x10]
	subs r1, #1
	lsls r1, r1, #2
	adds r0, r2, #0
	adds r0, #0x14
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_08041284
	ldr r1, [sp, #0x34]
	adds r1, #0x20
	subs r1, r1, r0
	mov r8, r1
	movs r0, #0x1f
	mov r3, r8
	ands r3, r0
	mov r8, r3
	b _0803FF1A
_0803FF0C:
	ldr r0, [sp, #0x34]
	adds r0, #1
	mov r8, r0
	movs r0, #0x1f
	mov r1, r8
	ands r1, r0
	mov r8, r1
_0803FF1A:
	mov r2, r8
	cmp r2, #0
	beq _0803FF26
	movs r0, #0x20
	subs r2, r0, r2
	mov r8, r2
_0803FF26:
	mov r3, r8
	cmp r3, #4
	ble _0803FF32
	movs r0, #4
	rsbs r0, r0, #0
	b _0803FF3A
_0803FF32:
	mov r3, r8
	cmp r3, #3
	bgt _0803FF4A
	movs r0, #0x1c
_0803FF3A:
	add r8, r0
	ldr r1, [sp, #0x10]
	add r1, r8
	str r1, [sp, #0x10]
	add r5, r8
	ldr r2, [sp, #0x34]
	add r2, r8
	str r2, [sp, #0x34]
_0803FF4A:
	ldr r3, [sp, #0x10]
	cmp r3, #0
	ble _0803FF5C
	mov r0, sl
	ldr r1, [sp, #0x5c]
	adds r2, r3, #0
	bl sub_08041578
	str r0, [sp, #0x5c]
_0803FF5C:
	ldr r0, [sp, #0x34]
	cmp r0, #0
	ble _0803FF6E
	mov r0, sl
	ldr r1, [sp, #0x68]
	ldr r2, [sp, #0x34]
	bl sub_08041578
	str r0, [sp, #0x68]
_0803FF6E:
	ldr r1, [sp, #0x2c]
	cmp r1, #0
	beq _0803FFAC
	ldr r0, [sp, #0x5c]
	ldr r1, [sp, #0x68]
	bl sub_08041618
	cmp r0, #0
	bge _0803FFAC
	ldr r2, [sp, #0x24]
	subs r2, #1
	str r2, [sp, #0x24]
	mov r0, sl
	ldr r1, [sp, #0x5c]
	movs r2, #0xa
	movs r3, #0
	bl sub_08041168
	str r0, [sp, #0x5c]
	ldr r3, [sp, #0x30]
	cmp r3, #0
	beq _0803FFA8
	mov r0, sl
	ldr r1, [sp, #0x64]
	movs r2, #0xa
	movs r3, #0
	bl sub_08041168
	str r0, [sp, #0x64]
_0803FFA8:
	ldr r0, [sp, #0x20]
	str r0, [sp, #0x18]
_0803FFAC:
	ldr r1, [sp, #0x18]
	cmp r1, #0
	bgt _0803FFF0
	ldr r2, [sp, #0xc]
	cmp r2, #2
	ble _0803FFF0
	cmp r1, #0
	blt _0803FFD6
	mov r0, sl
	ldr r1, [sp, #0x68]
	movs r2, #5
	movs r3, #0
	bl sub_08041168
	str r0, [sp, #0x68]
	ldr r0, [sp, #0x5c]
	ldr r1, [sp, #0x68]
	bl sub_08041618
	cmp r0, #0
	bgt _0803FFDE
_0803FFD6:
	ldr r3, [sp, #0xa4]
	mvns r3, r3
	str r3, [sp, #0x24]
	b _08040226
_0803FFDE:
	movs r0, #0x31
	mov r1, sb
	strb r0, [r1]
	movs r2, #1
	add sb, r2
	ldr r3, [sp, #0x24]
	adds r3, #1
	str r3, [sp, #0x24]
	b _08040226
_0803FFF0:
	ldr r0, [sp, #0x30]
	cmp r0, #0
	bne _0803FFF8
	b _0804016E
_0803FFF8:
	cmp r5, #0
	ble _08040008
	mov r0, sl
	ldr r1, [sp, #0x64]
	adds r2, r5, #0
	bl sub_08041578
	str r0, [sp, #0x64]
_08040008:
	ldr r1, [sp, #0x64]
	str r1, [sp, #0x60]
	ldr r2, [sp, #0x3c]
	cmp r2, #0
	beq _0804003A
	ldr r1, [r1, #4]
	mov r0, sl
	bl sub_080410F8
	str r0, [sp, #0x64]
	adds r0, #0xc
	ldr r1, [sp, #0x60]
	adds r1, #0xc
	ldr r3, [sp, #0x60]
	ldr r2, [r3, #0x10]
	lsls r2, r2, #2
	adds r2, #8
	bl sub_0803DEBC
	mov r0, sl
	ldr r1, [sp, #0x64]
	movs r2, #1
	bl sub_08041578
	str r0, [sp, #0x64]
_0804003A:
	movs r0, #1
	mov r8, r0
	mov r1, r8
	ldr r2, [sp, #0x44]
	ands r2, r1
	str r2, [sp, #0x80]
	b _08040090
_08040048:
	mov r0, sl
	ldr r1, [sp, #0x5c]
	movs r2, #0xa
	movs r3, #0
	bl sub_08041168
	str r0, [sp, #0x5c]
	ldr r3, [sp, #0x60]
	ldr r0, [sp, #0x64]
	cmp r3, r0
	bne _08040070
	mov r0, sl
	ldr r1, [sp, #0x64]
	movs r2, #0xa
	movs r3, #0
	bl sub_08041168
	str r0, [sp, #0x64]
	str r0, [sp, #0x60]
	b _0804008C
_08040070:
	mov r0, sl
	ldr r1, [sp, #0x60]
	movs r2, #0xa
	movs r3, #0
	bl sub_08041168
	str r0, [sp, #0x60]
	mov r0, sl
	ldr r1, [sp, #0x64]
	movs r2, #0xa
	movs r3, #0
	bl sub_08041168
	str r0, [sp, #0x64]
_0804008C:
	movs r1, #1
	add r8, r1
_08040090:
	ldr r0, [sp, #0x5c]
	ldr r1, [sp, #0x68]
	bl sub_0803F428
	adds r7, r0, #0
	adds r7, #0x30
	ldr r0, [sp, #0x5c]
	ldr r1, [sp, #0x60]
	bl sub_08041618
	adds r4, r0, #0
	mov r0, sl
	ldr r1, [sp, #0x68]
	ldr r2, [sp, #0x64]
	bl sub_08041658
	adds r5, r0, #0
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _080400C4
	ldr r0, [sp, #0x5c]
	adds r1, r5, #0
	bl sub_08041618
	adds r6, r0, #0
	b _080400C6
_080400C4:
	movs r6, #1
_080400C6:
	mov r0, sl
	adds r1, r5, #0
	bl sub_08041150
	cmp r6, #0
	bne _080400F2
	ldr r2, [sp, #0xc]
	cmp r2, #0
	bne _080400F2
	ldr r3, [sp, #0x80]
	cmp r3, #0
	bne _080400F2
	cmp r7, #0x39
	beq _08040144
	cmp r4, #0
	ble _080400E8
	adds r7, #1
_080400E8:
	mov r0, sb
	strb r7, [r0]
	movs r1, #1
	add sb, r1
	b _08040226
_080400F2:
	cmp r4, #0
	blt _08040106
	cmp r4, #0
	bne _0804013C
	ldr r2, [sp, #0xc]
	cmp r2, #0
	bne _0804013C
	ldr r3, [sp, #0x80]
	cmp r3, #0
	bne _0804013C
_08040106:
	cmp r6, #0
	ble _08040136
	mov r0, sl
	ldr r1, [sp, #0x5c]
	movs r2, #1
	bl sub_08041578
	str r0, [sp, #0x5c]
	ldr r1, [sp, #0x68]
	bl sub_08041618
	adds r6, r0, #0
	cmp r6, #0
	bgt _08040130
	cmp r6, #0
	bne _08040136
	adds r0, r7, #0
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08040136
_08040130:
	adds r7, #1
	cmp r7, #0x3a
	beq _08040144
_08040136:
	mov r2, sb
	strb r7, [r2]
	b _080401EE
_0804013C:
	cmp r6, #0
	ble _0804015C
	cmp r7, #0x39
	bne _08040150
_08040144:
	movs r0, #0x39
	mov r1, sb
	strb r0, [r1]
	movs r2, #1
	add sb, r2
	b _080401C4
_08040150:
	adds r0, r7, #1
	mov r3, sb
	strb r0, [r3]
	movs r0, #1
	add sb, r0
	b _08040226
_0804015C:
	mov r1, sb
	strb r7, [r1]
	movs r2, #1
	add sb, r2
	ldr r3, [sp, #0x18]
	cmp r8, r3
	beq _0804016C
	b _08040048
_0804016C:
	b _080401A0
_0804016E:
	movs r0, #1
	mov r8, r0
	b _08040186
_08040174:
	mov r0, sl
	ldr r1, [sp, #0x5c]
	movs r2, #0xa
	movs r3, #0
	bl sub_08041168
	str r0, [sp, #0x5c]
	movs r1, #1
	add r8, r1
_08040186:
	ldr r0, [sp, #0x5c]
	ldr r1, [sp, #0x68]
	bl sub_0803F428
	adds r7, r0, #0
	adds r7, #0x30
	mov r2, sb
	strb r7, [r2]
	movs r3, #1
	add sb, r3
	ldr r0, [sp, #0x18]
	cmp r8, r0
	blt _08040174
_080401A0:
	mov r0, sl
	ldr r1, [sp, #0x5c]
	movs r2, #1
	bl sub_08041578
	str r0, [sp, #0x5c]
	ldr r1, [sp, #0x68]
	bl sub_08041618
	adds r4, r0, #0
	cmp r4, #0
	bgt _080401C4
	cmp r4, #0
	bne _08040206
	movs r0, #1
	ands r7, r0
	cmp r7, #0
	beq _08040206
_080401C4:
	movs r1, #1
	rsbs r1, r1, #0
	add sb, r1
	mov r2, sb
	ldrb r2, [r2]
	cmp r2, #0x39
	bne _080401E6
_080401D2:
	ldr r3, [sp, #0x74]
	cmp sb, r3
	beq _080401F4
	movs r0, #1
	rsbs r0, r0, #0
	add sb, r0
	mov r1, sb
	ldrb r1, [r1]
	cmp r1, #0x39
	beq _080401D2
_080401E6:
	mov r2, sb
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
_080401EE:
	movs r3, #1
	add sb, r3
	b _08040226
_080401F4:
	ldr r0, [sp, #0x24]
	adds r0, #1
	str r0, [sp, #0x24]
	movs r0, #0x31
	ldr r1, [sp, #0x74]
	strb r0, [r1]
	adds r1, #1
	mov sb, r1
	b _08040226
_08040206:
	movs r2, #1
	rsbs r2, r2, #0
	add sb, r2
	mov r3, sb
	ldrb r3, [r3]
	cmp r3, #0x30
	bne _08040222
_08040214:
	movs r0, #1
	rsbs r0, r0, #0
	add sb, r0
	mov r1, sb
	ldrb r1, [r1]
	cmp r1, #0x30
	beq _08040214
_08040222:
	movs r2, #1
	add sb, r2
_08040226:
	mov r0, sl
	ldr r1, [sp, #0x68]
	bl sub_08041150
	ldr r3, [sp, #0x64]
	cmp r3, #0
	beq _0804024E
	ldr r0, [sp, #0x60]
	cmp r0, #0
	beq _08040246
	cmp r0, r3
	beq _08040246
	mov r0, sl
	ldr r1, [sp, #0x60]
	bl sub_08041150
_08040246:
	mov r0, sl
	ldr r1, [sp, #0x64]
	bl sub_08041150
_0804024E:
	mov r0, sl
	ldr r1, [sp, #0x5c]
	bl sub_08041150
	movs r0, #0
	mov r1, sb
	strb r0, [r1]
	ldr r0, [sp, #0x24]
	adds r0, #1
	ldr r2, [sp, #0xa8]
	str r0, [r2]
	ldr r3, [sp, #0xb0]
	cmp r3, #0
	beq _0804026C
	str r1, [r3]
_0804026C:
	ldr r0, [sp, #0x74]
sub_0804026E:
	add sp, #0x84
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_0804027C
sub_0804027C: @ 0x0804027C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	cmp r4, #0
	bne _08040298
	ldr r0, _08040290 @ =gUnknown_030002EC
	ldr r0, [r0]
	ldr r1, _08040294 @ =sub_0804027C
	bl sub_08040918
	b _0804030E
	.align 2, 0
_08040290: .4byte gUnknown_030002EC
_08040294: .4byte sub_0804027C
_08040298:
	ldr r0, [r4, #0x54]
	cmp r0, #0
	bne _080402A4
	ldr r0, _080402D8 @ =gUnknown_030002EC
	ldr r0, [r0]
	str r0, [r4, #0x54]
_080402A4:
	ldr r1, [r4, #0x54]
	ldr r0, [r1, #0x38]
	cmp r0, #0
	bne _080402B2
	adds r0, r1, #0
	bl sub_0804040C
_080402B2:
	movs r0, #0xc
	ldrsh r1, [r4, r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0804030C
	ldr r6, [r4, #0x10]
	cmp r6, #0
	beq _0804030C
	ldr r0, [r4]
	subs r5, r0, r6
	str r6, [r4]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _080402EA
	ldr r0, [r4, #0x14]
	b _080402EC
	.align 2, 0
_080402D8: .4byte gUnknown_030002EC
_080402DC:
	movs r0, #0x40
	ldrh r1, [r4, #0xc]
	orrs r0, r1
	strh r0, [r4, #0xc]
	movs r0, #1
	rsbs r0, r0, #0
	b _0804030E
_080402EA:
	movs r0, #0
_080402EC:
	str r0, [r4, #8]
	cmp r5, #0
	ble _0804030C
_080402F2:
	ldr r0, [r4, #0x1c]
	ldr r3, [r4, #0x24]
	adds r1, r6, #0
	adds r2, r5, #0
	bl sub_0803D7A4
	adds r1, r0, #0
	cmp r1, #0
	ble _080402DC
	adds r6, r6, r1
	subs r5, r5, r1
	cmp r5, #0
	bgt _080402F2
_0804030C:
	movs r0, #0
_0804030E:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_08040310
sub_08040310: @ 0x08040310
	push {r4, lr}
	movs r4, #0
	str r4, [r0]
	str r4, [r0, #4]
	str r4, [r0, #8]
	strh r1, [r0, #0xc]
	strh r2, [r0, #0xe]
	str r4, [r0, #0x10]
	str r4, [r0, #0x18]
	str r0, [r0, #0x1c]
	ldr r1, _08040338 @ =sub_08041A38
	str r1, [r0, #0x20]
	ldr r1, _0804033C @ =sub_08041A6C
	str r1, [r0, #0x24]
	ldr r1, _08040340 @ =sub_08041AAC
	str r1, [r0, #0x28]
	ldr r1, _08040344 @ =sub_08041AEC
	str r1, [r0, #0x2c]
	str r3, [r0, #0x54]
	pop {r4, pc}
	.align 2, 0
_08040338: .4byte sub_08041A38
_0804033C: .4byte sub_08041A6C
_08040340: .4byte sub_08041AAC
_08040344: .4byte sub_08041AEC

	thumb_func_start sub_08040348
sub_08040348: @ 0x08040348
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	movs r1, #0x58
	adds r6, r5, #0
	muls r6, r1, r6
	adds r1, r6, #0
	adds r1, #0xc
	bl sub_08040BFC
	adds r4, r0, #0
	cmp r4, #0
	beq _08040374
	adds r0, #0xc
	movs r1, #0
	str r1, [r4]
	str r5, [r4, #4]
	str r0, [r4, #8]
	adds r2, r6, #0
	bl sub_0803DF1C
	adds r0, r4, #0
	b _08040376
_08040374:
	movs r0, #0
_08040376:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_08040378
sub_08040378: @ 0x08040378
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x38]
	cmp r0, #0
	bne _08040388
	adds r0, r5, #0
	bl sub_0804040C
_08040388:
	movs r0, #0xec
	lsls r0, r0, #1
	adds r4, r5, r0
	b _08040392
_08040390:
	ldr r4, [r4]
_08040392:
	ldr r2, [r4, #8]
	ldr r0, [r4, #4]
	b _080403A2
_08040398:
	movs r3, #0xc
	ldrsh r1, [r2, r3]
	cmp r1, #0
	beq _080403C4
	adds r2, #0x58
_080403A2:
	subs r0, #1
	cmp r0, #0
	bge _08040398
	ldr r0, [r4]
	cmp r0, #0
	bne _08040390
	adds r0, r5, #0
	movs r1, #4
	bl sub_08040348
	str r0, [r4]
	cmp r0, #0
	bne _08040390
	movs r0, #0xc
	str r0, [r5]
	movs r0, #0
	b _080403E4
_080403C4:
	movs r0, #1
	strh r0, [r2, #0xc]
	str r1, [r2]
	str r1, [r2, #8]
	str r1, [r2, #4]
	str r1, [r2, #0x10]
	str r1, [r2, #0x14]
	str r1, [r2, #0x18]
	ldr r0, _080403E8 @ =0x0000FFFF
	strh r0, [r2, #0xe]
	str r1, [r2, #0x30]
	str r1, [r2, #0x34]
	str r1, [r2, #0x44]
	str r1, [r2, #0x48]
	str r5, [r2, #0x54]
	adds r0, r2, #0
_080403E4:
	pop {r4, r5, pc}
	.align 2, 0
_080403E8: .4byte 0x0000FFFF

	thumb_func_start sub_080403EC
sub_080403EC: @ 0x080403EC
	push {lr}
	ldr r1, _080403F8 @ =sub_0804027C
	bl sub_08040918
	pop {pc}
	.align 2, 0
_080403F8: .4byte sub_0804027C

	thumb_func_start sub_080403FC
sub_080403FC: @ 0x080403FC
	push {lr}
	ldr r0, _08040408 @ =gUnknown_030002EC
	ldr r0, [r0]
	bl sub_080403EC
	pop {pc}
	.align 2, 0
_08040408: .4byte gUnknown_030002EC

	thumb_func_start sub_0804040C
sub_0804040C: @ 0x0804040C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _08040468 @ =sub_080403EC
	str r0, [r5, #0x3c]
	movs r0, #1
	str r0, [r5, #0x38]
	movs r0, #0xf2
	lsls r0, r0, #1
	adds r4, r5, r0
	adds r0, r4, #0
	movs r1, #4
	movs r2, #0
	adds r3, r5, #0
	bl sub_08040310
	movs r1, #0x8f
	lsls r1, r1, #2
	adds r0, r5, r1
	movs r1, #9
	movs r2, #1
	adds r3, r5, #0
	bl sub_08040310
	movs r1, #0xa5
	lsls r1, r1, #2
	adds r0, r5, r1
	movs r1, #0xa
	movs r2, #2
	adds r3, r5, #0
	bl sub_08040310
	movs r0, #0xec
	lsls r0, r0, #1
	adds r1, r5, r0
	movs r0, #0
	str r0, [r1]
	movs r0, #0xee
	lsls r0, r0, #1
	adds r1, r5, r0
	movs r0, #3
	str r0, [r1]
	movs r1, #0xf0
	lsls r1, r1, #1
	adds r0, r5, r1
	str r4, [r0]
	pop {r4, r5, pc}
	.align 2, 0
_08040468: .4byte sub_080403EC

	thumb_func_start sub_0804046C
sub_0804046C: @ 0x0804046C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov sb, r0
	adds r4, r1, #0
	cmp r4, #0
	bne _0804047E
	b _08040622
_0804047E:
	bl sub_080410F0
	adds r5, r4, #0
	subs r5, #8
	ldr r1, [r5, #4]
	movs r6, #2
	rsbs r6, r6, #0
	ands r6, r1
	adds r7, r5, r6
	ldr r4, [r7, #4]
	movs r0, #4
	rsbs r0, r0, #0
	ands r4, r0
	ldr r0, _080404E0 @ =gUnknown_03000304
	mov ip, r0
	ldr r0, [r0, #8]
	cmp r7, r0
	bne _080404EC
	adds r6, r6, r4
	movs r4, #1
	ands r1, r4
	cmp r1, #0
	bne _080404BA
	ldr r0, [r5]
	subs r5, r5, r0
	adds r6, r6, r0
	ldr r3, [r5, #0xc]
	ldr r2, [r5, #8]
	str r3, [r2, #0xc]
	str r2, [r3, #8]
_080404BA:
	adds r0, r6, #0
	orrs r0, r4
	str r0, [r5, #4]
	mov r2, ip
	str r5, [r2, #8]
	ldr r0, _080404E4 @ =gUnknown_0300070C
	ldr r0, [r0]
	cmp r6, r0
	blo _080404D6
	ldr r0, _080404E8 @ =gUnknown_03000710
	ldr r1, [r0]
	mov r0, sb
	bl sub_0804062C
_080404D6:
	mov r0, sb
	bl sub_080410F4
	b _08040622
	.align 2, 0
_080404E0: .4byte gUnknown_03000304
_080404E4: .4byte gUnknown_0300070C
_080404E8: .4byte gUnknown_03000710
_080404EC:
	str r4, [r7, #4]
	movs r0, #0
	mov r8, r0
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	bne _08040518
	ldr r0, [r5]
	subs r5, r5, r0
	adds r6, r6, r0
	ldr r1, [r5, #8]
	mov r0, ip
	adds r0, #8
	cmp r1, r0
	bne _08040510
	movs r2, #1
	mov r8, r2
	b _08040518
_08040510:
	ldr r3, [r5, #0xc]
	adds r2, r1, #0
	str r3, [r2, #0xc]
	str r2, [r3, #8]
_08040518:
	adds r0, r7, r4
	ldr r0, [r0, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08040550
	adds r6, r6, r4
	ldr r1, [r7, #8]
	mov r0, r8
	cmp r0, #0
	bne _08040548
	ldr r0, _08040544 @ =gUnknown_0300030C
	cmp r1, r0
	bne _08040548
	movs r2, #1
	mov r8, r2
	str r5, [r1, #0xc]
	str r5, [r1, #8]
	str r1, [r5, #0xc]
	str r1, [r5, #8]
	b _08040550
	.align 2, 0
_08040544: .4byte gUnknown_0300030C
_08040548:
	ldr r3, [r7, #0xc]
	adds r2, r1, #0
	str r3, [r2, #0xc]
	str r2, [r3, #8]
_08040550:
	movs r1, #1
	adds r0, r6, #0
	orrs r0, r1
	str r0, [r5, #4]
	adds r0, r5, r6
	str r6, [r0]
	mov r0, r8
	cmp r0, #0
	bne _0804061C
	ldr r0, _08040580 @ =0x000001FF
	cmp r6, r0
	bhi _08040588
	lsrs r4, r6, #3
	ldr r2, _08040584 @ =gUnknown_03000304
	adds r0, r4, #0
	asrs r0, r0, #2
	lsls r1, r0
	ldr r0, [r2, #4]
	orrs r0, r1
	str r0, [r2, #4]
	lsls r0, r4, #3
	adds r3, r0, r2
	ldr r2, [r3, #8]
	b _08040614
	.align 2, 0
_08040580: .4byte 0x000001FF
_08040584: .4byte gUnknown_03000304
_08040588:
	lsrs r1, r6, #9
	cmp r1, #0
	bne _08040592
	lsrs r4, r6, #3
	b _080405DA
_08040592:
	cmp r1, #4
	bhi _0804059E
	lsrs r0, r6, #6
	adds r4, r0, #0
	adds r4, #0x38
	b _080405DA
_0804059E:
	cmp r1, #0x14
	bhi _080405A8
	adds r4, r1, #0
	adds r4, #0x5b
	b _080405DA
_080405A8:
	cmp r1, #0x54
	bhi _080405B4
	lsrs r0, r6, #0xc
	adds r4, r0, #0
	adds r4, #0x6e
	b _080405DA
_080405B4:
	movs r0, #0xaa
	lsls r0, r0, #1
	cmp r1, r0
	bhi _080405C4
	lsrs r0, r6, #0xf
	adds r4, r0, #0
	adds r4, #0x77
	b _080405DA
_080405C4:
	ldr r0, _080405D4 @ =0x00000554
	cmp r1, r0
	bhi _080405D8
	lsrs r0, r6, #0x12
	adds r4, r0, #0
	adds r4, #0x7c
	b _080405DA
	.align 2, 0
_080405D4: .4byte 0x00000554
_080405D8:
	movs r4, #0x7e
_080405DA:
	lsls r0, r4, #3
	ldr r7, _080405F8 @ =gUnknown_03000304
	adds r3, r0, r7
	ldr r2, [r3, #8]
	cmp r2, r3
	bne _080405FC
	adds r0, r4, #0
	asrs r0, r0, #2
	movs r1, #1
	lsls r1, r0
	ldr r0, [r7, #4]
	orrs r0, r1
	str r0, [r7, #4]
	b _08040614
	.align 2, 0
_080405F8: .4byte gUnknown_03000304
_080405FC:
	ldr r0, [r2, #4]
	movs r1, #4
	rsbs r1, r1, #0
	b _0804060C
_08040604:
	ldr r2, [r2, #8]
	cmp r2, r3
	beq _08040612
	ldr r0, [r2, #4]
_0804060C:
	ands r0, r1
	cmp r6, r0
	blo _08040604
_08040612:
	ldr r3, [r2, #0xc]
_08040614:
	str r3, [r5, #0xc]
	str r2, [r5, #8]
	str r5, [r3, #8]
	str r5, [r2, #0xc]
_0804061C:
	mov r0, sb
	bl sub_080410F4
_08040622:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_0804062C
sub_0804062C: @ 0x0804062C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	adds r4, r1, #0
	bl sub_080410F0
	ldr r0, _080406B4 @ =gUnknown_03000304
	mov r8, r0
	ldr r0, [r0, #8]
	ldr r6, [r0, #4]
	movs r0, #4
	rsbs r0, r0, #0
	ands r6, r0
	subs r4, r6, r4
	movs r5, #0x80
	lsls r5, r5, #5
	ldr r1, _080406B8 @ =0x00000FEF
	adds r4, r4, r1
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0803DD84
	subs r0, #1
	lsls r4, r0, #0xc
	cmp r4, r5
	blt _080406AA
	adds r0, r7, #0
	movs r1, #0
	bl sub_08041A0C
	adds r2, r0, #0
	mov r1, r8
	ldr r0, [r1, #8]
	adds r0, r0, r6
	cmp r2, r0
	bne _080406AA
	rsbs r1, r4, #0
	adds r0, r7, #0
	bl sub_08041A0C
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _080406C4
	adds r0, r7, #0
	movs r1, #0
	bl sub_08041A0C
	adds r2, r0, #0
	mov r0, r8
	ldr r3, [r0, #8]
	subs r6, r2, r3
	cmp r6, #0xf
	ble _080406AA
	ldr r1, _080406BC @ =gUnknown_03000720
	ldr r0, _080406C0 @ =gUnknown_03000714
	ldr r0, [r0]
	subs r0, r2, r0
	str r0, [r1]
	movs r0, #1
	orrs r6, r0
	str r6, [r3, #4]
_080406AA:
	adds r0, r7, #0
	bl sub_080410F4
	movs r0, #0
	b _080406E0
	.align 2, 0
_080406B4: .4byte gUnknown_03000304
_080406B8: .4byte 0x00000FEF
_080406BC: .4byte gUnknown_03000720
_080406C0: .4byte gUnknown_03000714
_080406C4:
	mov r1, r8
	ldr r2, [r1, #8]
	subs r0, r6, r4
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #4]
	ldr r1, _080406E8 @ =gUnknown_03000720
	ldr r0, [r1]
	subs r0, r0, r4
	str r0, [r1]
	adds r0, r7, #0
	bl sub_080410F4
	movs r0, #1
_080406E0:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080406E8: .4byte gUnknown_03000720

	thumb_func_start sub_080406EC
sub_080406EC: @ 0x080406EC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r5, r0, #0
	mov sl, r1
	ldr r6, [r1, #8]
	cmp r6, #0
	bne _08040704
	b _080408FA
_08040704:
	movs r0, #8
	ldrh r1, [r5, #0xc]
	ands r0, r1
	cmp r0, #0
	beq _08040714
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _08040720
_08040714:
	adds r0, r5, #0
	bl sub_0803F37C
	cmp r0, #0
	beq _08040720
	b _08040906
_08040720:
	mov r2, sl
	ldr r2, [r2]
	mov r8, r2
	movs r6, #0
	ldrh r1, [r5, #0xc]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08040774
_08040732:
	ldr r0, [r5, #0x1c]
	ldr r3, [r5, #0x24]
	cmp r6, #0
	bne _08040748
_0804073A:
	mov r1, r8
	ldr r7, [r1]
	ldr r6, [r1, #4]
	movs r2, #8
	add r8, r2
	cmp r6, #0
	beq _0804073A
_08040748:
	adds r2, r6, #0
	movs r1, #0x80
	lsls r1, r1, #3
	cmp r6, r1
	bls _08040754
	adds r2, r1, #0
_08040754:
	adds r1, r7, #0
	bl sub_0803D7A4
	adds r4, r0, #0
	cmp r4, #0
	bgt _08040762
	b _080408FE
_08040762:
	adds r7, r7, r4
	subs r6, r6, r4
	mov r1, sl
	ldr r0, [r1, #8]
	subs r0, r0, r4
	str r0, [r1, #8]
	cmp r0, #0
	bne _08040732
	b _080408FA
_08040774:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0804082E
_0804077C:
	ldrh r1, [r5, #0xc]
	ldr r0, [r5, #8]
	ldr r3, [r5]
	cmp r6, #0
	bne _08040794
_08040786:
	mov r2, r8
	ldr r7, [r2]
	ldr r6, [r2, #4]
	movs r2, #8
	add r8, r2
	cmp r6, #0
	beq _08040786
_08040794:
	adds r4, r0, #0
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _080407C2
	cmp r6, r4
	bhs _080407A8
	adds r4, r6, #0
_080407A8:
	adds r0, r3, #0
	adds r1, r7, #0
	adds r2, r4, #0
	bl sub_08041068
	ldr r0, [r5, #8]
	subs r0, r0, r4
	str r0, [r5, #8]
	ldr r0, [r5]
	adds r0, r0, r4
	str r0, [r5]
	adds r4, r6, #0
	b _0804081C
_080407C2:
	ldr r0, [r5, #0x10]
	cmp r3, r0
	bls _080407EA
	cmp r6, r4
	bls _080407EA
	adds r0, r3, #0
	adds r1, r7, #0
	adds r2, r4, #0
	bl sub_08041068
	ldr r0, [r5]
	adds r0, r0, r4
	str r0, [r5]
	adds r0, r5, #0
	bl sub_0804027C
	cmp r0, #0
	beq _080407E8
	b _080408FE
_080407E8:
	b _0804081C
_080407EA:
	ldr r4, [r5, #0x14]
	cmp r6, r4
	blo _08040804
	ldr r0, [r5, #0x1c]
	ldr r3, [r5, #0x24]
	adds r1, r7, #0
	adds r2, r4, #0
	bl sub_0803D7A4
	adds r4, r0, #0
	cmp r4, #0
	ble _080408FE
	b _0804081C
_08040804:
	adds r4, r6, #0
	adds r0, r3, #0
	adds r1, r7, #0
	adds r2, r4, #0
	bl sub_08041068
	ldr r0, [r5, #8]
	subs r0, r0, r4
	str r0, [r5, #8]
	ldr r0, [r5]
	adds r0, r0, r4
	str r0, [r5]
_0804081C:
	adds r7, r7, r4
	subs r6, r6, r4
	mov r1, sl
	ldr r0, [r1, #8]
	subs r0, r0, r4
	str r0, [r1, #8]
	cmp r0, #0
	bne _0804077C
	b _080408FA
_0804082E:
	movs r2, #0
	str r2, [sp]
_08040832:
	cmp r6, #0
	bne _08040848
	movs r0, #0
	str r0, [sp]
_0804083A:
	mov r1, r8
	ldr r7, [r1]
	ldr r6, [r1, #4]
	movs r2, #8
	add r8, r2
	cmp r6, #0
	beq _0804083A
_08040848:
	ldr r0, [sp]
	cmp r0, #0
	bne _0804086C
	adds r0, r7, #0
	movs r1, #0xa
	adds r2, r6, #0
	bl sub_08040FE8
	adds r1, r0, #0
	cmp r1, #0
	beq _08040864
	subs r0, r7, #1
	subs r1, r1, r0
	b _08040866
_08040864:
	adds r1, r6, #1
_08040866:
	mov sb, r1
	movs r2, #1
	str r2, [sp]
_0804086C:
	mov r2, sb
	cmp sb, r6
	bls _08040874
	adds r2, r6, #0
_08040874:
	ldr r0, [r5, #8]
	ldr r1, [r5, #0x14]
	adds r4, r0, r1
	ldr r0, [r5, #0x10]
	ldr r3, [r5]
	cmp r3, r0
	bls _080408A2
	cmp r2, r4
	ble _080408A2
	adds r0, r3, #0
	adds r1, r7, #0
	adds r2, r4, #0
	bl sub_08041068
	ldr r0, [r5]
	adds r0, r0, r4
	str r0, [r5]
	adds r0, r5, #0
	bl sub_0804027C
	cmp r0, #0
	bne _080408FE
	b _080408D2
_080408A2:
	adds r4, r1, #0
	cmp r2, r4
	blt _080408BC
	ldr r0, [r5, #0x1c]
	ldr r3, [r5, #0x24]
	adds r1, r7, #0
	adds r2, r4, #0
	bl sub_0803D7A4
	adds r4, r0, #0
	cmp r4, #0
	ble _080408FE
	b _080408D2
_080408BC:
	adds r4, r2, #0
	adds r0, r3, #0
	adds r1, r7, #0
	bl sub_08041068
	ldr r0, [r5, #8]
	subs r0, r0, r4
	str r0, [r5, #8]
	ldr r0, [r5]
	adds r0, r0, r4
	str r0, [r5]
_080408D2:
	mov r0, sb
	subs r0, r0, r4
	mov sb, r0
	cmp r0, #0
	bne _080408EA
	adds r0, r5, #0
	bl sub_0804027C
	cmp r0, #0
	bne _080408FE
	movs r1, #0
	str r1, [sp]
_080408EA:
	adds r7, r7, r4
	subs r6, r6, r4
	mov r2, sl
	ldr r0, [r2, #8]
	subs r0, r0, r4
	str r0, [r2, #8]
	cmp r0, #0
	bne _08040832
_080408FA:
	movs r0, #0
	b _0804090A
_080408FE:
	movs r0, #0x40
	ldrh r1, [r5, #0xc]
	orrs r0, r1
	strh r0, [r5, #0xc]
_08040906:
	movs r0, #1
	rsbs r0, r0, #0
_0804090A:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_08040918
sub_08040918: @ 0x08040918
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r1
	movs r7, #0
	movs r1, #0xec
	lsls r1, r1, #1
	adds r6, r0, r1
	cmp r6, #0
	beq _08040950
_0804092C:
	ldr r5, [r6, #8]
	ldr r4, [r6, #4]
	b _08040944
_08040932:
	movs r1, #0xc
	ldrsh r0, [r5, r1]
	cmp r0, #0
	beq _08040942
	adds r0, r5, #0
	bl sub_0803D7B8
	orrs r7, r0
_08040942:
	adds r5, #0x58
_08040944:
	subs r4, #1
	cmp r4, #0
	bge _08040932
	ldr r6, [r6]
	cmp r6, #0
	bne _0804092C
_08040950:
	adds r0, r7, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_08040958
sub_08040958: @ 0x08040958
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r4, r2, #0
	cmp r4, #0
	beq _0804098C
	ldr r1, _08040980 @ =gUnknown_083D49B8
	adds r0, r4, #0
	bl sub_08041AFC
	cmp r0, #0
	beq _08040988
	ldr r1, _08040984 @ =gUnknown_083D49B0
	adds r0, r4, #0
	bl sub_08041AFC
	cmp r0, #0
	beq _08040988
	movs r0, #0
	b _0804098E
	.align 2, 0
_08040980: .4byte gUnknown_083D49B8
_08040984: .4byte gUnknown_083D49B0
_08040988:
	str r6, [r5, #0x30]
	str r4, [r5, #0x34]
_0804098C:
	ldr r0, _08040990 @ =gUnknown_083D49B8
_0804098E:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08040990: .4byte gUnknown_083D49B8

	thumb_func_start sub_08040994
sub_08040994: @ 0x08040994
	ldr r0, _08040998 @ =gUnknown_083D4980
	bx lr
	.align 2, 0
_08040998: .4byte gUnknown_083D4980

	thumb_func_start sub_0804099C
sub_0804099C: @ 0x0804099C
	push {lr}
	adds r3, r0, #0
	adds r2, r1, #0
	ldr r0, _080409B0 @ =gUnknown_030002EC
	ldr r0, [r0]
	adds r1, r3, #0
	bl sub_08040958
	pop {pc}
	.align 2, 0
_080409B0: .4byte gUnknown_030002EC

	thumb_func_start sub_080409B4
sub_080409B4: @ 0x080409B4
	push {lr}
	ldr r0, _080409C0 @ =gUnknown_030002EC
	ldr r0, [r0]
	bl sub_08040994
	pop {pc}
	.align 2, 0
_080409C0: .4byte gUnknown_030002EC

	thumb_func_start sub_080409C4
sub_080409C4: @ 0x080409C4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	adds r4, r0, #0
	movs r0, #2
	ldrh r1, [r4, #0xc]
	ands r0, r1
	cmp r0, #0
	bne _08040A5A
	movs r2, #0xe
	ldrsh r0, [r4, r2]
	cmp r0, #0
	blt _080409EC
	ldr r0, [r4, #0x54]
	movs r2, #0xe
	ldrsh r1, [r4, r2]
	mov r2, sp
	bl sub_0804207C
	cmp r0, #0
	bge _080409FE
_080409EC:
	movs r7, #0
	movs r6, #0x80
	lsls r6, r6, #3
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r1, #0
	ldrh r2, [r4, #0xc]
	orrs r0, r2
	b _08040A42
_080409FE:
	movs r7, #0
	ldr r1, [sp, #4]
	movs r0, #0xf0
	lsls r0, r0, #8
	ands r1, r0
	movs r0, #0x80
	lsls r0, r0, #6
	cmp r1, r0
	bne _08040A12
	movs r7, #1
_08040A12:
	movs r6, #0x80
	lsls r6, r6, #3
	movs r0, #0x80
	lsls r0, r0, #8
	cmp r1, r0
	bne _08040A38
	ldr r1, [r4, #0x28]
	ldr r0, _08040A34 @ =sub_08041AAC
	cmp r1, r0
	bne _08040A38
	adds r0, r6, #0
	ldrh r1, [r4, #0xc]
	orrs r0, r1
	strh r0, [r4, #0xc]
	str r6, [r4, #0x4c]
	b _08040A44
	.align 2, 0
_08040A34: .4byte sub_08041AAC
_08040A38:
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r2, #0
	ldrh r1, [r4, #0xc]
	orrs r0, r1
_08040A42:
	strh r0, [r4, #0xc]
_08040A44:
	ldr r0, [r4, #0x54]
	adds r1, r6, #0
	bl sub_08040BFC
	adds r2, r0, #0
	cmp r2, #0
	bne _08040A68
	movs r0, #2
	ldrh r2, [r4, #0xc]
	orrs r0, r2
	strh r0, [r4, #0xc]
_08040A5A:
	adds r0, r4, #0
	adds r0, #0x43
	str r0, [r4]
	str r0, [r4, #0x10]
	movs r0, #1
	str r0, [r4, #0x14]
	b _08040A96
_08040A68:
	ldr r1, [r4, #0x54]
	ldr r0, _08040A9C @ =sub_080403EC
	str r0, [r1, #0x3c]
	movs r0, #0x80
	movs r5, #0
	ldrh r1, [r4, #0xc]
	orrs r0, r1
	strh r0, [r4, #0xc]
	str r2, [r4]
	str r2, [r4, #0x10]
	str r6, [r4, #0x14]
	cmp r7, #0
	beq _08040A96
	movs r2, #0xe
	ldrsh r0, [r4, r2]
	bl sub_080420C8
	cmp r0, #0
	beq _08040A96
	movs r0, #1
	ldrh r1, [r4, #0xc]
	orrs r0, r1
	strh r0, [r4, #0xc]
_08040A96:
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08040A9C: .4byte sub_080403EC

	thumb_func_start sub_08040AA0
sub_08040AA0: @ 0x08040AA0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	str r0, [sp]
	ldr r0, _08040B14 @ =gUnknown_03000304
	ldr r0, [r0, #8]
	mov r8, r0
	ldr r7, [r0, #4]
	movs r0, #4
	rsbs r0, r0, #0
	ands r7, r0
	mov r2, r8
	adds r4, r2, r7
	ldr r0, _08040B18 @ =gUnknown_03000710
	ldr r0, [r0]
	adds r1, r1, r0
	adds r6, r1, #0
	adds r6, #0x10
	ldr r3, _08040B1C @ =gUnknown_03000714
	mov sl, r3
	ldr r0, [r3]
	movs r2, #1
	rsbs r2, r2, #0
	mov sb, r2
	cmp r0, sb
	beq _08040AE2
	ldr r3, _08040B20 @ =0x0000100F
	adds r6, r1, r3
	ldr r0, _08040B24 @ =0xFFFFF000
	ands r6, r0
_08040AE2:
	ldr r0, [sp]
	adds r1, r6, #0
	bl sub_08041A0C
	adds r5, r0, #0
	cmp r5, sb
	beq _08040BE4
	cmp r5, r4
	bhs _08040AFA
	ldr r0, _08040B14 @ =gUnknown_03000304
	cmp r8, r0
	bne _08040BE4
_08040AFA:
	ldr r1, _08040B28 @ =gUnknown_03000720
	ldr r0, [r1]
	adds r2, r0, r6
	str r2, [r1]
	cmp r5, r4
	bne _08040B2C
	adds r2, r6, r7
	ldr r3, _08040B14 @ =gUnknown_03000304
	ldr r1, [r3, #8]
	movs r0, #1
	orrs r2, r0
	str r2, [r1, #4]
	b _08040BCC
	.align 2, 0
_08040B14: .4byte gUnknown_03000304
_08040B18: .4byte gUnknown_03000710
_08040B1C: .4byte gUnknown_03000714
_08040B20: .4byte 0x0000100F
_08040B24: .4byte 0xFFFFF000
_08040B28: .4byte gUnknown_03000720
_08040B2C:
	mov r3, sl
	ldr r0, [r3]
	cmp r0, sb
	bne _08040B38
	str r5, [r3]
	b _08040B3E
_08040B38:
	subs r0, r5, r4
	adds r0, r2, r0
	str r0, [r1]
_08040B3E:
	adds r1, r5, #0
	adds r1, #8
	movs r0, #7
	ands r1, r0
	cmp r1, #0
	beq _08040B52
	movs r0, #8
	subs r4, r0, r1
	adds r5, r5, r4
	b _08040B54
_08040B52:
	movs r4, #0
_08040B54:
	adds r0, r5, r6
	movs r1, #0x80
	lsls r1, r1, #5
	subs r1, #1
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #5
	subs r0, r1, r0
	adds r4, r4, r0
	ldr r0, [sp]
	adds r1, r4, #0
	bl sub_08041A0C
	adds r2, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	beq _08040BE4
	ldr r1, _08040B9C @ =gUnknown_03000720
	ldr r0, [r1]
	adds r0, r0, r4
	str r0, [r1]
	ldr r1, _08040BA0 @ =gUnknown_03000304
	str r5, [r1, #8]
	subs r0, r2, r5
	adds r2, r0, r4
	movs r3, #1
	orrs r2, r3
	str r2, [r5, #4]
	cmp r8, r1
	beq _08040BCC
	cmp r7, #0xf
	bhi _08040BA4
	str r3, [r5, #4]
	b _08040BE4
	.align 2, 0
_08040B9C: .4byte gUnknown_03000720
_08040BA0: .4byte gUnknown_03000304
_08040BA4:
	subs r7, #0xc
	movs r0, #8
	rsbs r0, r0, #0
	ands r7, r0
	mov r2, r8
	ldr r0, [r2, #4]
	ands r0, r3
	orrs r0, r7
	str r0, [r2, #4]
	adds r1, r2, r7
	movs r0, #5
	str r0, [r1, #4]
	str r0, [r1, #8]
	cmp r7, #0xf
	bls _08040BCC
	mov r1, r8
	adds r1, #8
	ldr r0, [sp]
	bl sub_0804046C
_08040BCC:
	ldr r0, _08040BF0 @ =gUnknown_03000720
	ldr r2, _08040BF4 @ =gUnknown_03000718
	ldr r1, [r0]
	ldr r0, [r2]
	cmp r1, r0
	bls _08040BDA
	str r1, [r2]
_08040BDA:
	ldr r2, _08040BF8 @ =gUnknown_0300071C
	ldr r0, [r2]
	cmp r1, r0
	bls _08040BE4
	str r1, [r2]
_08040BE4:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08040BF0: .4byte gUnknown_03000720
_08040BF4: .4byte gUnknown_03000718
_08040BF8: .4byte gUnknown_0300071C

	thumb_func_start sub_08040BFC
sub_08040BFC: @ 0x08040BFC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	str r0, [sp]
	adds r1, #0xb
	cmp r1, #0x16
	ble _08040C1E
	movs r0, #8
	rsbs r0, r0, #0
	mov r8, r0
	mov r2, r8
	ands r2, r1
	mov r8, r2
	b _08040C22
_08040C1E:
	movs r3, #0x10
	mov r8, r3
_08040C22:
	ldr r0, [sp]
	bl sub_080410F0
	ldr r0, _08040C68 @ =0x000001F7
	cmp r8, r0
	bhi _08040C76
	mov r4, r8
	lsrs r4, r4, #3
	mov ip, r4
	ldr r0, _08040C6C @ =gUnknown_03000304
	mov r7, r8
	adds r2, r7, r0
	ldr r5, [r2, #0xc]
	cmp r5, r2
	bne _08040C4A
	adds r2, r5, #0
	adds r2, #8
	ldr r5, [r2, #0xc]
	cmp r5, r2
	beq _08040C70
_08040C4A:
	ldr r2, [r5, #4]
	movs r0, #4
	rsbs r0, r0, #0
	ands r2, r0
	ldr r6, [r5, #0xc]
	ldr r4, [r5, #8]
	str r6, [r4, #0xc]
	str r4, [r6, #8]
	adds r2, r5, r2
	ldr r0, [r2, #4]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #4]
	b _08040FA2
	.align 2, 0
_08040C68: .4byte 0x000001F7
_08040C6C: .4byte gUnknown_03000304
_08040C70:
	movs r0, #2
	add ip, r0
	b _08040D22
_08040C76:
	mov r2, r8
	lsrs r1, r2, #9
	cmp r1, #0
	bne _08040C82
	lsrs r2, r2, #3
	b _08040CD2
_08040C82:
	cmp r1, #4
	bhi _08040C90
	mov r3, r8
	lsrs r0, r3, #6
	adds r0, #0x38
	mov ip, r0
	b _08040CD4
_08040C90:
	cmp r1, #0x14
	bhi _08040C9A
	adds r1, #0x5b
	mov ip, r1
	b _08040CD4
_08040C9A:
	cmp r1, #0x54
	bhi _08040CA8
	mov r4, r8
	lsrs r0, r4, #0xc
	adds r0, #0x6e
	mov ip, r0
	b _08040CD4
_08040CA8:
	movs r0, #0xaa
	lsls r0, r0, #1
	cmp r1, r0
	bhi _08040CBA
	mov r7, r8
	lsrs r0, r7, #0xf
	adds r0, #0x77
	mov ip, r0
	b _08040CD4
_08040CBA:
	ldr r0, _08040CCC @ =0x00000554
	cmp r1, r0
	bhi _08040CD0
	mov r1, r8
	lsrs r0, r1, #0x12
	adds r0, #0x7c
	mov ip, r0
	b _08040CD4
	.align 2, 0
_08040CCC: .4byte 0x00000554
_08040CD0:
	movs r2, #0x7e
_08040CD2:
	mov ip, r2
_08040CD4:
	mov r3, ip
	lsls r0, r3, #3
	ldr r1, _08040CF8 @ =gUnknown_03000304
	adds r4, r0, r1
	ldr r5, [r4, #0xc]
	cmp r5, r4
	beq _08040D1E
	ldr r1, [r5, #4]
	movs r0, #4
	rsbs r0, r0, #0
	ands r1, r0
	mov r7, r8
	subs r3, r1, r7
	cmp r3, #0xf
	ble _08040CFC
	adds r0, #3
	add ip, r0
	b _08040D1E
	.align 2, 0
_08040CF8: .4byte gUnknown_03000304
_08040CFC:
	cmp r3, #0
	blt _08040D02
	b _08040F3C
_08040D02:
	ldr r5, [r5, #0xc]
	cmp r5, r4
	beq _08040D1E
	ldr r1, [r5, #4]
	movs r0, #4
	rsbs r0, r0, #0
	ands r1, r0
	mov r2, r8
	subs r3, r1, r2
	cmp r3, #0xf
	ble _08040CFC
	movs r3, #1
	rsbs r3, r3, #0
	add ip, r3
_08040D1E:
	movs r4, #1
	add ip, r4
_08040D22:
	ldr r0, _08040D60 @ =gUnknown_0300030C
	ldr r5, [r0, #8]
	mov sl, r0
	cmp r5, sl
	bne _08040D2E
	b _08040E30
_08040D2E:
	ldr r1, [r5, #4]
	movs r0, #4
	rsbs r0, r0, #0
	ands r1, r0
	mov r7, r8
	subs r3, r1, r7
	cmp r3, #0xf
	ble _08040D64
	adds r2, r5, r7
	movs r1, #1
	adds r0, r7, #0
	orrs r0, r1
	str r0, [r5, #4]
	mov r4, sl
	str r2, [r4, #0xc]
	str r2, [r4, #8]
	str r4, [r2, #0xc]
	str r4, [r2, #8]
	adds r0, r3, #0
	orrs r0, r1
	str r0, [r2, #4]
	adds r0, r2, r3
	str r3, [r0]
	b _08040FA2
	.align 2, 0
_08040D60: .4byte gUnknown_0300030C
_08040D64:
	mov r7, sl
	str r7, [r7, #0xc]
	str r7, [r7, #8]
	cmp r3, #0
	blt _08040D7A
	adds r2, r5, r1
	ldr r0, [r2, #4]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #4]
	b _08040FA2
_08040D7A:
	ldr r0, _08040D9C @ =0x000001FF
	cmp r1, r0
	bhi _08040DA0
	lsrs r2, r1, #3
	mov r3, sl
	subs r3, #8
	adds r0, r2, #0
	asrs r0, r0, #2
	movs r1, #1
	lsls r1, r0
	ldr r0, [r3, #4]
	orrs r0, r1
	str r0, [r3, #4]
	lsls r0, r2, #3
	adds r6, r0, r3
	ldr r4, [r6, #8]
	b _08040E28
	.align 2, 0
_08040D9C: .4byte 0x000001FF
_08040DA0:
	lsrs r2, r1, #9
	cmp r2, #0
	bne _08040DAA
	lsrs r2, r1, #3
	b _08040DEE
_08040DAA:
	cmp r2, #4
	bhi _08040DB6
	lsrs r0, r1, #6
	adds r2, r0, #0
	adds r2, #0x38
	b _08040DEE
_08040DB6:
	cmp r2, #0x14
	bhi _08040DBE
	adds r2, #0x5b
	b _08040DEE
_08040DBE:
	cmp r2, #0x54
	bhi _08040DCA
	lsrs r0, r1, #0xc
	adds r2, r0, #0
	adds r2, #0x6e
	b _08040DEE
_08040DCA:
	movs r0, #0xaa
	lsls r0, r0, #1
	cmp r2, r0
	bhi _08040DDA
	lsrs r0, r1, #0xf
	adds r2, r0, #0
	adds r2, #0x77
	b _08040DEE
_08040DDA:
	ldr r0, _08040DE8 @ =0x00000554
	cmp r2, r0
	bhi _08040DEC
	lsrs r0, r1, #0x12
	adds r2, r0, #0
	adds r2, #0x7c
	b _08040DEE
	.align 2, 0
_08040DE8: .4byte 0x00000554
_08040DEC:
	movs r2, #0x7e
_08040DEE:
	lsls r0, r2, #3
	ldr r3, _08040E0C @ =gUnknown_03000304
	adds r6, r0, r3
	ldr r4, [r6, #8]
	cmp r4, r6
	bne _08040E10
	adds r0, r2, #0
	asrs r0, r0, #2
	movs r1, #1
	lsls r1, r0
	ldr r7, _08040E0C @ =gUnknown_03000304
	ldr r0, [r7, #4]
	orrs r0, r1
	str r0, [r7, #4]
	b _08040E28
	.align 2, 0
_08040E0C: .4byte gUnknown_03000304
_08040E10:
	ldr r0, [r4, #4]
	movs r2, #4
	rsbs r2, r2, #0
	b _08040E20
_08040E18:
	ldr r4, [r4, #8]
	cmp r4, r6
	beq _08040E26
	ldr r0, [r4, #4]
_08040E20:
	ands r0, r2
	cmp r1, r0
	blo _08040E18
_08040E26:
	ldr r6, [r4, #0xc]
_08040E28:
	str r6, [r5, #0xc]
	str r4, [r5, #8]
	str r5, [r6, #8]
	str r5, [r4, #0xc]
_08040E30:
	mov r0, ip
	cmp r0, #0
	bge _08040E38
	adds r0, #3
_08040E38:
	asrs r0, r0, #2
	movs r6, #1
	lsls r6, r0
	ldr r0, _08040E5C @ =gUnknown_03000304
	ldr r1, [r0, #4]
	cmp r6, r1
	bhi _08040EFA
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	bne _08040E6E
	movs r0, #4
	rsbs r0, r0, #0
	mov r2, ip
	ands r0, r2
	adds r0, #4
	mov ip, r0
	b _08040E64
	.align 2, 0
_08040E5C: .4byte gUnknown_03000304
_08040E60:
	movs r3, #4
	add ip, r3
_08040E64:
	lsls r6, r6, #1
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _08040E60
_08040E6E:
	ldr r4, _08040EEC @ =gUnknown_03000304
	mov sb, r4
_08040E72:
	mov r7, ip
	str r7, [sp, #4]
	mov r1, ip
	lsls r0, r1, #3
	mov r3, sb
	adds r2, r0, r3
	adds r4, r2, #0
_08040E80:
	ldr r5, [r4, #0xc]
	cmp r5, r4
	beq _08040EA0
	movs r0, #4
	rsbs r0, r0, #0
_08040E8A:
	ldr r1, [r5, #4]
	ands r1, r0
	mov r7, r8
	subs r3, r1, r7
	cmp r3, #0xf
	bgt _08040F50
	cmp r3, #0
	bge _08040F78
	ldr r5, [r5, #0xc]
	cmp r5, r4
	bne _08040E8A
_08040EA0:
	adds r4, #8
	movs r0, #1
	add ip, r0
	mov r0, ip
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _08040E80
_08040EB0:
	ldr r0, [sp, #4]
	ands r0, r1
	cmp r0, #0
	beq _08040EF0
	ldr r3, [sp, #4]
	subs r3, #1
	str r3, [sp, #4]
	subs r2, #8
	ldr r0, [r2, #8]
	cmp r0, r2
	beq _08040EB0
_08040EC6:
	lsls r6, r6, #1
	mov r4, sb
	ldr r1, [r4, #4]
	cmp r6, r1
	bhi _08040EFA
	cmp r6, #0
	beq _08040EFA
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	bne _08040E72
_08040EDC:
	movs r7, #4
	add ip, r7
	lsls r6, r6, #1
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _08040EDC
	b _08040E72
	.align 2, 0
_08040EEC: .4byte gUnknown_03000304
_08040EF0:
	mov r1, sb
	ldr r0, [r1, #4]
	bics r0, r6
	str r0, [r1, #4]
	b _08040EC6
_08040EFA:
	ldr r2, _08040F38 @ =gUnknown_03000304
	ldr r0, [r2, #8]
	ldr r0, [r0, #4]
	movs r4, #4
	rsbs r4, r4, #0
	ands r0, r4
	mov r7, r8
	subs r3, r0, r7
	cmp r0, r8
	blo _08040F12
	cmp r3, #0xf
	bgt _08040F8C
_08040F12:
	ldr r0, [sp]
	mov r1, r8
	bl sub_08040AA0
	ldr r1, _08040F38 @ =gUnknown_03000304
	ldr r0, [r1, #8]
	ldr r0, [r0, #4]
	ands r0, r4
	mov r2, r8
	subs r3, r0, r2
	cmp r0, r8
	blo _08040F2E
	cmp r3, #0xf
	bgt _08040F8C
_08040F2E:
	ldr r0, [sp]
	bl sub_080410F4
	movs r0, #0
	b _08040FAC
	.align 2, 0
_08040F38: .4byte gUnknown_03000304
_08040F3C:
	ldr r6, [r5, #0xc]
	ldr r4, [r5, #8]
	str r6, [r4, #0xc]
	str r4, [r6, #8]
	adds r2, r5, r1
	ldr r0, [r2, #4]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #4]
	b _08040FA2
_08040F50:
	mov r4, r8
	adds r2, r5, r4
	movs r1, #1
	orrs r4, r1
	str r4, [r5, #4]
	ldr r6, [r5, #0xc]
	ldr r4, [r5, #8]
	str r6, [r4, #0xc]
	str r4, [r6, #8]
	mov r7, sl
	str r2, [r7, #0xc]
	str r2, [r7, #8]
	str r7, [r2, #0xc]
	str r7, [r2, #8]
	adds r0, r3, #0
	orrs r0, r1
	str r0, [r2, #4]
	adds r0, r2, r3
	str r3, [r0]
	b _08040FA2
_08040F78:
	adds r2, r5, r1
	ldr r0, [r2, #4]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #4]
	ldr r6, [r5, #0xc]
	ldr r4, [r5, #8]
	str r6, [r4, #0xc]
	str r4, [r6, #8]
	b _08040FA2
_08040F8C:
	ldr r2, _08040FB8 @ =gUnknown_03000304
	ldr r5, [r2, #8]
	movs r1, #1
	mov r0, r8
	orrs r0, r1
	str r0, [r5, #4]
	mov r4, r8
	adds r0, r5, r4
	str r0, [r2, #8]
	orrs r3, r1
	str r3, [r0, #4]
_08040FA2:
	ldr r0, [sp]
	bl sub_080410F4
	adds r0, r5, #0
	adds r0, #8
_08040FAC:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08040FB8: .4byte gUnknown_03000304

	thumb_func_start sub_08040FBC
sub_08040FBC: @ 0x08040FBC
	sub sp, #4
	cmp r1, #0
	bne _08040FC4
	mov r1, sp
_08040FC4:
	cmp r2, #0
	beq _08040FE0
	cmp r3, #0
	bne _08040FD2
	movs r0, #1
	rsbs r0, r0, #0
	b _08040FE2
_08040FD2:
	ldrb r0, [r2]
	str r0, [r1]
	ldrb r0, [r2]
	cmp r0, #0
	beq _08040FE0
	movs r0, #1
	b _08040FE2
_08040FE0:
	movs r0, #0
_08040FE2:
	add sp, #4
	bx lr
	.align 2, 0

	thumb_func_start sub_08040FE8
sub_08040FE8: @ 0x08040FE8
	push {r4, r5, r6, r7, lr}
	adds r5, r1, #0
	adds r1, r0, #0
	movs r0, #0xff
	ands r5, r0
	cmp r2, #3
	bls _0804105C
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _0804105C
	adds r4, r1, #0
	movs r6, #0
	movs r1, #0
_08041004:
	lsls r0, r6, #8
	adds r6, r0, r5
	adds r1, #1
	cmp r1, #3
	bls _08041004
	cmp r2, #3
	bls _08041042
	ldr r0, _08041048 @ =0xFEFEFEFF
	mov ip, r0
	ldr r7, _0804104C @ =0x80808080
_08041018:
	ldr r1, [r4]
	eors r1, r6
	mov r3, ip
	adds r0, r1, r3
	bics r0, r1
	ands r0, r7
	cmp r0, #0
	beq _0804103A
	adds r1, r4, #0
	movs r3, #0
_0804102C:
	ldrb r0, [r1]
	cmp r0, r5
	beq _08041056
	adds r1, #1
	adds r3, #1
	cmp r3, #3
	bls _0804102C
_0804103A:
	subs r2, #4
	adds r4, #4
	cmp r2, #3
	bhi _08041018
_08041042:
	adds r1, r4, #0
	b _0804105C
	.align 2, 0
_08041048: .4byte 0xFEFEFEFF
_0804104C: .4byte 0x80808080
_08041050:
	ldrb r0, [r1]
	cmp r0, r5
	bne _0804105A
_08041056:
	adds r0, r1, #0
	b _08041066
_0804105A:
	adds r1, #1
_0804105C:
	adds r0, r2, #0
	subs r2, #1
	cmp r0, #0
	bne _08041050
	movs r0, #0
_08041066:
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_08041068
sub_08041068: @ 0x08041068
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r5, #0
	adds r3, r1, #0
	cmp r3, r5
	bhs _0804109A
	adds r0, r3, r2
	cmp r5, r0
	bhs _0804109A
	adds r3, r0, #0
	adds r4, r5, r2
	subs r2, #1
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	beq _080410EC
	adds r1, r0, #0
_0804108A:
	subs r4, #1
	subs r3, #1
	ldrb r0, [r3]
	strb r0, [r4]
	subs r2, #1
	cmp r2, r1
	bne _0804108A
	b _080410EC
_0804109A:
	cmp r2, #0xf
	bls _080410D2
	adds r0, r3, #0
	orrs r0, r4
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _080410D2
	adds r1, r3, #0
_080410AC:
	ldm r1!, {r0}
	stm r4!, {r0}
	ldm r1!, {r0}
	stm r4!, {r0}
	ldm r1!, {r0}
	stm r4!, {r0}
	ldm r1!, {r0}
	stm r4!, {r0}
	subs r2, #0x10
	cmp r2, #0xf
	bhi _080410AC
	cmp r2, #3
	bls _080410D0
_080410C6:
	ldm r1!, {r0}
	stm r4!, {r0}
	subs r2, #4
	cmp r2, #3
	bhi _080410C6
_080410D0:
	adds r3, r1, #0
_080410D2:
	subs r2, #1
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	beq _080410EC
	adds r1, r0, #0
_080410DE:
	ldrb r0, [r3]
	strb r0, [r4]
	adds r3, #1
	adds r4, #1
	subs r2, #1
	cmp r2, r1
	bne _080410DE
_080410EC:
	adds r0, r5, #0
	pop {r4, r5, pc}

	thumb_func_start sub_080410F0
sub_080410F0: @ 0x080410F0
	bx lr
	.align 2, 0

	thumb_func_start sub_080410F4
sub_080410F4: @ 0x080410F4
	bx lr
	.align 2, 0

	thumb_func_start sub_080410F8
sub_080410F8: @ 0x080410F8
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	ldr r0, [r4, #0x4c]
	cmp r0, #0
	bne _08041114
	adds r0, r4, #0
	movs r1, #4
	movs r2, #0x10
	bl sub_08041FEC
	str r0, [r4, #0x4c]
	cmp r0, #0
	beq _0804113C
_08041114:
	ldr r1, [r4, #0x4c]
	lsls r0, r6, #2
	adds r2, r0, r1
	ldr r1, [r2]
	cmp r1, #0
	beq _08041126
	ldr r0, [r1]
	str r0, [r2]
	b _08041144
_08041126:
	movs r5, #1
	lsls r5, r6
	lsls r2, r5, #2
	adds r2, #0x14
	adds r0, r4, #0
	movs r1, #1
	bl sub_08041FEC
	adds r1, r0, #0
	cmp r1, #0
	bne _08041140
_0804113C:
	movs r0, #0
	b _0804114C
_08041140:
	str r6, [r1, #4]
	str r5, [r1, #8]
_08041144:
	movs r0, #0
	str r0, [r1, #0x10]
	str r0, [r1, #0xc]
	adds r0, r1, #0
_0804114C:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_08041150
sub_08041150: @ 0x08041150
	adds r3, r0, #0
	adds r2, r1, #0
	cmp r2, #0
	beq _08041166
	ldr r0, [r2, #4]
	ldr r1, [r3, #0x4c]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	str r1, [r2]
	str r2, [r0]
_08041166:
	bx lr

	thumb_func_start sub_08041168
sub_08041168: @ 0x08041168
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov sb, r0
	adds r5, r1, #0
	adds r4, r2, #0
	mov r8, r3
	ldr r6, [r5, #0x10]
	adds r3, r5, #0
	adds r3, #0x14
	movs r7, #0
	ldr r0, _080411FC @ =0x0000FFFF
	mov ip, r0
_08041184:
	ldr r1, [r3]
	adds r0, r1, #0
	mov r2, ip
	ands r0, r2
	adds r2, r0, #0
	muls r2, r4, r2
	add r2, r8
	lsrs r1, r1, #0x10
	adds r0, r1, #0
	muls r0, r4, r0
	lsrs r1, r2, #0x10
	adds r0, r0, r1
	lsrs r1, r0, #0x10
	mov r8, r1
	lsls r0, r0, #0x10
	mov r1, ip
	ands r2, r1
	adds r0, r0, r2
	stm r3!, {r0}
	adds r7, #1
	cmp r7, r6
	blt _08041184
	mov r2, r8
	cmp r2, #0
	beq _080411F2
	ldr r0, [r5, #8]
	cmp r6, r0
	blt _080411E2
	ldr r1, [r5, #4]
	adds r1, #1
	mov r0, sb
	bl sub_080410F8
	adds r4, r0, #0
	adds r0, #0xc
	adds r1, r5, #0
	adds r1, #0xc
	ldr r2, [r5, #0x10]
	lsls r2, r2, #2
	adds r2, #8
	bl sub_0803DEBC
	mov r0, sb
	adds r1, r5, #0
	bl sub_08041150
	adds r5, r4, #0
_080411E2:
	lsls r1, r6, #2
	adds r0, r5, #0
	adds r0, #0x14
	adds r0, r0, r1
	mov r1, r8
	str r1, [r0]
	adds r6, #1
	str r6, [r5, #0x10]
_080411F2:
	adds r0, r5, #0
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080411FC: .4byte 0x0000FFFF

	thumb_func_start sub_08041200
sub_08041200: @ 0x08041200
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	mov r8, r3
	mov r0, r8
	adds r0, #8
	movs r1, #9
	bl sub_0803D7D4
	movs r1, #0
	movs r2, #1
	cmp r0, #1
	ble _08041228
_08041220:
	lsls r2, r2, #1
	adds r1, #1
	cmp r0, r2
	bgt _08041220
_08041228:
	adds r0, r7, #0
	bl sub_080410F8
	adds r1, r0, #0
	ldr r0, [sp, #0x18]
	str r0, [r1, #0x14]
	movs r0, #1
	str r0, [r1, #0x10]
	movs r5, #9
	cmp r6, #9
	ble _0804125A
	adds r4, #9
_08041240:
	ldrb r3, [r4]
	subs r3, #0x30
	adds r4, #1
	adds r0, r7, #0
	movs r2, #0xa
	bl sub_08041168
	adds r1, r0, #0
	adds r5, #1
	cmp r5, r6
	blt _08041240
	adds r4, #1
	b _0804125C
_0804125A:
	adds r4, #0xa
_0804125C:
	cmp r5, r8
	bge _0804127A
	mov r0, r8
	subs r5, r0, r5
_08041264:
	ldrb r3, [r4]
	subs r3, #0x30
	adds r4, #1
	adds r0, r7, #0
	movs r2, #0xa
	bl sub_08041168
	adds r1, r0, #0
	subs r5, #1
	cmp r5, #0
	bne _08041264
_0804127A:
	adds r0, r1, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_08041284
sub_08041284: @ 0x08041284
	adds r1, r0, #0
	movs r2, #0
	ldr r0, _080412D4 @ =0xFFFF0000
	ands r0, r1
	cmp r0, #0
	bne _08041294
	movs r2, #0x10
	lsls r1, r1, #0x10
_08041294:
	movs r0, #0xff
	lsls r0, r0, #0x18
	ands r0, r1
	cmp r0, #0
	bne _080412A2
	adds r2, #8
	lsls r1, r1, #8
_080412A2:
	movs r0, #0xf0
	lsls r0, r0, #0x18
	ands r0, r1
	cmp r0, #0
	bne _080412B0
	adds r2, #4
	lsls r1, r1, #4
_080412B0:
	movs r0, #0xc0
	lsls r0, r0, #0x18
	ands r0, r1
	cmp r0, #0
	bne _080412BE
	adds r2, #2
	lsls r1, r1, #2
_080412BE:
	cmp r1, #0
	blt _080412D8
	adds r2, #1
	movs r0, #0x80
	lsls r0, r0, #0x17
	ands r0, r1
	cmp r0, #0
	bne _080412D8
	movs r0, #0x20
	b _080412DA
	.align 2, 0
_080412D4: .4byte 0xFFFF0000
_080412D8:
	adds r0, r2, #0
_080412DA:
	bx lr

	thumb_func_start sub_080412DC
sub_080412DC: @ 0x080412DC
	adds r3, r0, #0
	ldr r1, [r3]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	beq _0804130C
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080412F4
	movs r0, #0
	b _0804135C
_080412F4:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08041304
	lsrs r0, r1, #1
	str r0, [r3]
	movs r0, #1
	b _0804135C
_08041304:
	lsrs r0, r1, #2
	str r0, [r3]
	movs r0, #2
	b _0804135C
_0804130C:
	movs r2, #0
	ldr r0, _08041354 @ =0x0000FFFF
	ands r0, r1
	cmp r0, #0
	bne _0804131A
	movs r2, #0x10
	lsrs r1, r1, #0x10
_0804131A:
	movs r0, #0xff
	ands r0, r1
	cmp r0, #0
	bne _08041326
	adds r2, #8
	lsrs r1, r1, #8
_08041326:
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	bne _08041332
	adds r2, #4
	lsrs r1, r1, #4
_08041332:
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _0804133E
	adds r2, #2
	lsrs r1, r1, #2
_0804133E:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08041358
	adds r2, #1
	lsrs r1, r1, #1
	cmp r1, #0
	bne _08041358
	movs r0, #0x20
	b _0804135C
	.align 2, 0
_08041354: .4byte 0x0000FFFF
_08041358:
	str r1, [r3]
	adds r0, r2, #0
_0804135C:
	bx lr
	.align 2, 0

	thumb_func_start sub_08041360
sub_08041360: @ 0x08041360
	push {r4, lr}
	adds r4, r1, #0
	movs r1, #1
	bl sub_080410F8
	str r4, [r0, #0x14]
	movs r1, #1
	str r1, [r0, #0x10]
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08041374
sub_08041374: @ 0x08041374
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	adds r3, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	ldr r1, [r4, #0x10]
	ldr r0, [r5, #0x10]
	cmp r1, r0
	bge _08041394
	str r4, [sp]
	adds r4, r5, #0
	ldr r5, [sp]
_08041394:
	ldr r1, [r4, #4]
	ldr r6, [r4, #0x10]
	ldr r0, [r5, #0x10]
	mov r8, r0
	mov r2, r8
	adds r2, r6, r2
	str r2, [sp, #4]
	ldr r0, [r4, #8]
	cmp r2, r0
	ble _080413AA
	adds r1, #1
_080413AA:
	adds r0, r3, #0
	bl sub_080410F8
	str r0, [sp]
	adds r7, r0, #0
	adds r7, #0x14
	ldr r1, [sp, #4]
	lsls r0, r1, #2
	adds r2, r7, r0
	str r2, [sp, #8]
	str r0, [sp, #0x18]
	adds r1, r4, #0
	adds r1, #0x14
	lsls r3, r6, #2
	adds r2, r5, #0
	adds r2, #0x14
	mov r5, r8
	lsls r4, r5, #2
	ldr r0, [sp, #8]
	cmp r7, r0
	bhs _080413DE
	movs r0, #0
_080413D6:
	stm r7!, {r0}
	ldr r5, [sp, #8]
	cmp r7, r5
	blo _080413D6
_080413DE:
	str r1, [sp, #8]
	adds r3, r1, r3
	str r3, [sp, #0xc]
	mov r8, r2
	add r4, r8
	str r4, [sp, #0x10]
	ldr r0, [sp]
	adds r0, #0x14
	mov sb, r0
	mov r1, sb
	str r1, [sp, #0x20]
	cmp r8, r4
	bhs _080414A6
_080413F8:
	mov r2, r8
	ldm r2!, {r6}
	str r2, [sp, #0x14]
	ldr r0, _080414B4 @ =0x0000FFFF
	ands r6, r0
	mov r4, sb
	adds r4, #4
	str r4, [sp, #0x1c]
	cmp r6, #0
	beq _08041450
	ldr r7, [sp, #8]
	mov r5, sb
	movs r1, #0
	mov ip, r1
	mov sl, r0
_08041416:
	ldm r7!, {r3}
	adds r0, r3, #0
	mov r2, sl
	ands r0, r2
	adds r1, r0, #0
	muls r1, r6, r1
	ldr r2, [r5]
	adds r0, r2, #0
	mov r4, sl
	ands r0, r4
	adds r1, r1, r0
	mov r0, ip
	adds r4, r1, r0
	lsrs r1, r4, #0x10
	lsrs r3, r3, #0x10
	adds r0, r3, #0
	muls r0, r6, r0
	lsrs r2, r2, #0x10
	adds r0, r0, r2
	adds r2, r0, r1
	lsrs r0, r2, #0x10
	mov ip, r0
	strh r2, [r5]
	strh r4, [r5, #2]
	adds r5, #4
	ldr r1, [sp, #0xc]
	cmp r7, r1
	blo _08041416
	str r0, [r5]
_08041450:
	mov r2, r8
	ldrh r6, [r2, #2]
	cmp r6, #0
	beq _08041498
	ldr r7, [sp, #8]
	mov r5, sb
	movs r4, #0
	mov ip, r4
	ldr r2, [r5]
	ldr r3, _080414B4 @ =0x0000FFFF
_08041464:
	ldm r7!, {r1}
	adds r0, r1, #0
	ands r0, r3
	muls r0, r6, r0
	ldrh r4, [r5, #2]
	adds r4, r4, r0
	mov r8, r4
	add r4, ip
	lsrs r0, r4, #0x10
	mov ip, r0
	strh r4, [r5]
	strh r2, [r5, #2]
	adds r5, #4
	lsrs r1, r1, #0x10
	muls r1, r6, r1
	ldr r0, [r5]
	ands r0, r3
	adds r1, r1, r0
	mov r4, ip
	adds r2, r1, r4
	lsrs r0, r2, #0x10
	mov ip, r0
	ldr r1, [sp, #0xc]
	cmp r7, r1
	blo _08041464
	str r2, [r5]
_08041498:
	ldr r2, [sp, #0x14]
	mov r8, r2
	ldr r4, [sp, #0x1c]
	mov sb, r4
	ldr r5, [sp, #0x10]
	cmp r8, r5
	blo _080413F8
_080414A6:
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x18]
	adds r5, r0, r1
	ldr r2, [sp, #4]
	cmp r2, #0
	ble _080414CA
	b _080414C2
	.align 2, 0
_080414B4: .4byte 0x0000FFFF
_080414B8:
	ldr r4, [sp, #4]
	subs r4, #1
	str r4, [sp, #4]
	cmp r4, #0
	ble _080414CA
_080414C2:
	subs r5, #4
	ldr r0, [r5]
	cmp r0, #0
	beq _080414B8
_080414CA:
	ldr r5, [sp, #4]
	ldr r0, [sp]
	str r5, [r0, #0x10]
	ldr r0, [sp]
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_080414E0
sub_080414E0: @ 0x080414E0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	adds r7, r1, #0
	adds r6, r2, #0
	movs r1, #3
	ands r1, r6
	cmp r1, #0
	beq _0804150A
	ldr r0, _0804152C @ =gUnknown_083D49BC
	subs r1, #1
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r2, [r1]
	mov r0, r8
	adds r1, r7, #0
	movs r3, #0
	bl sub_08041168
	adds r7, r0, #0
_0804150A:
	asrs r6, r6, #2
	cmp r6, #0
	beq _08041570
	mov r0, r8
	ldr r5, [r0, #0x48]
	adds r4, r5, #0
	cmp r5, #0
	bne _0804154C
	ldr r1, _08041530 @ =0x00000271
	bl sub_08041360
	mov r1, r8
	str r0, [r1, #0x48]
	adds r5, r0, #0
	str r4, [r5]
	b _0804154C
	.align 2, 0
_0804152C: .4byte gUnknown_083D49BC
_08041530: .4byte 0x00000271
_08041534:
	ldr r0, [r5]
	adds r4, r0, #0
	cmp r0, #0
	bne _0804154A
	mov r0, r8
	adds r1, r5, #0
	adds r2, r5, #0
	bl sub_08041374
	str r0, [r5]
	str r4, [r0]
_0804154A:
	adds r5, r0, #0
_0804154C:
	movs r0, #1
	ands r0, r6
	cmp r0, #0
	beq _0804156A
	mov r0, r8
	adds r1, r7, #0
	adds r2, r5, #0
	bl sub_08041374
	adds r4, r0, #0
	mov r0, r8
	adds r1, r7, #0
	bl sub_08041150
	adds r7, r4, #0
_0804156A:
	asrs r6, r6, #1
	cmp r6, #0
	bne _08041534
_08041570:
	adds r0, r7, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_08041578
sub_08041578: @ 0x08041578
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sl, r0
	mov r8, r1
	adds r5, r2, #0
	asrs r6, r5, #5
	ldr r1, [r1, #4]
	mov r2, r8
	ldr r0, [r2, #0x10]
	adds r0, r6, r0
	adds r7, r0, #1
	ldr r2, [r2, #8]
	cmp r7, r2
	ble _080415A2
_0804159A:
	adds r1, #1
	lsls r2, r2, #1
	cmp r7, r2
	bgt _0804159A
_080415A2:
	mov r0, sl
	bl sub_080410F8
	mov sb, r0
	mov r4, sb
	adds r4, #0x14
	mov r0, r8
	adds r0, #0x14
	cmp r6, #0
	ble _080415C2
	movs r1, #0
	adds r2, r6, #0
_080415BA:
	stm r4!, {r1}
	subs r2, #1
	cmp r2, #0
	bne _080415BA
_080415C2:
	adds r3, r0, #0
	mov r1, r8
	ldr r0, [r1, #0x10]
	lsls r0, r0, #2
	adds r6, r3, r0
	movs r0, #0x1f
	ands r5, r0
	cmp r5, #0
	beq _080415F4
	movs r0, #0x20
	subs r1, r0, r5
	movs r2, #0
_080415DA:
	ldr r0, [r3]
	lsls r0, r5
	orrs r0, r2
	stm r4!, {r0}
	ldm r3!, {r2}
	lsrs r2, r1
	cmp r3, r6
	blo _080415DA
	str r2, [r4]
	cmp r2, #0
	beq _080415FC
	adds r7, #1
	b _080415FC
_080415F4:
	ldm r3!, {r0}
	stm r4!, {r0}
	cmp r3, r6
	blo _080415F4
_080415FC:
	subs r0, r7, #1
	mov r2, sb
	str r0, [r2, #0x10]
	mov r0, sl
	mov r1, r8
	bl sub_08041150
	mov r0, sb
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_08041618
sub_08041618: @ 0x08041618
	push {r4, r5, lr}
	adds r2, r0, #0
	adds r5, r1, #0
	ldr r0, [r2, #0x10]
	ldr r1, [r5, #0x10]
	subs r0, r0, r1
	cmp r0, #0
	bne _08041654
	adds r4, r2, #0
	adds r4, #0x14
	lsls r1, r1, #2
	adds r3, r4, r1
	adds r0, r5, #0
	adds r0, #0x14
	adds r1, r0, r1
_08041636:
	subs r3, #4
	subs r1, #4
	ldr r0, [r3]
	ldr r2, [r1]
	cmp r0, r2
	beq _0804164E
	movs r1, #1
	cmp r0, r2
	bhs _0804164A
	subs r1, #2
_0804164A:
	adds r0, r1, #0
	b _08041654
_0804164E:
	cmp r3, r4
	bhi _08041636
	movs r0, #0
_08041654:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08041658
sub_08041658: @ 0x08041658
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r6, r0, #0
	adds r5, r1, #0
	mov r8, r2
	adds r0, r5, #0
	mov r1, r8
	bl sub_08041618
	adds r4, r0, #0
	cmp r4, #0
	bne _0804168A
	adds r0, r6, #0
	movs r1, #0
	bl sub_080410F8
	adds r7, r0, #0
	movs r0, #1
	str r0, [r7, #0x10]
	str r4, [r7, #0x14]
	b _0804173A
_0804168A:
	cmp r4, #0
	bge _08041698
	adds r7, r5, #0
	mov r5, r8
	mov r8, r7
	movs r4, #1
	b _0804169A
_08041698:
	movs r4, #0
_0804169A:
	ldr r1, [r5, #4]
	adds r0, r6, #0
	bl sub_080410F8
	adds r7, r0, #0
	str r4, [r7, #0xc]
	ldr r0, [r5, #0x10]
	mov sb, r0
	adds r6, r5, #0
	adds r6, #0x14
	lsls r0, r0, #2
	adds r0, r0, r6
	mov sl, r0
	mov r1, r8
	ldr r0, [r1, #0x10]
	movs r3, #0x14
	add r3, r8
	mov ip, r3
	lsls r0, r0, #2
	add r0, ip
	str r0, [sp]
	adds r4, r7, #0
	adds r4, #0x14
	movs r5, #0
	ldr r0, _08041724 @ =0x0000FFFF
	mov r8, r0
_080416CE:
	ldm r6!, {r1}
	str r1, [sp, #4]
	mov r3, r8
	ands r1, r3
	mov r0, ip
	adds r0, #4
	mov ip, r0
	subs r0, #4
	ldm r0!, {r2}
	adds r0, r2, #0
	ands r0, r3
	subs r1, r1, r0
	adds r0, r1, r5
	asrs r5, r0, #0x10
	ldr r1, [sp, #4]
	lsrs r3, r1, #0x10
	lsrs r2, r2, #0x10
	subs r3, r3, r2
	adds r1, r3, r5
	asrs r5, r1, #0x10
	strh r1, [r4]
	strh r0, [r4, #2]
	adds r4, #4
	ldr r3, [sp]
	cmp ip, r3
	blo _080416CE
	cmp r6, sl
	bhs _0804172E
	ldr r2, _08041724 @ =0x0000FFFF
_08041708:
	ldm r6!, {r1}
	adds r0, r1, #0
	ands r0, r2
	adds r0, r0, r5
	asrs r5, r0, #0x10
	lsrs r1, r1, #0x10
	adds r1, r1, r5
	asrs r5, r1, #0x10
	strh r1, [r4]
	strh r0, [r4, #2]
	adds r4, #4
	cmp r6, sl
	blo _08041708
	b _0804172E
	.align 2, 0
_08041724: .4byte 0x0000FFFF
_08041728:
	movs r0, #1
	rsbs r0, r0, #0
	add sb, r0
_0804172E:
	subs r4, #4
	ldr r0, [r4]
	cmp r0, #0
	beq _08041728
	mov r1, sb
	str r1, [r7, #0x10]
_0804173A:
	adds r0, r7, #0
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_08041748
sub_08041748: @ 0x08041748
	push {r4, lr}
	ldr r2, _0804175C @ =0x7FF00000
	ands r2, r0
	ldr r0, _08041760 @ =0xFCC00000
	adds r2, r2, r0
	cmp r2, #0
	ble _08041764
	adds r3, r2, #0
	movs r4, #0
	b _0804178E
	.align 2, 0
_0804175C: .4byte 0x7FF00000
_08041760: .4byte 0xFCC00000
_08041764:
	rsbs r0, r2, #0
	asrs r2, r0, #0x14
	cmp r2, #0x13
	bgt _08041778
	movs r0, #0x80
	lsls r0, r0, #0xc
	adds r3, r0, #0
	asrs r3, r2
	movs r4, #0
	b _0804178E
_08041778:
	movs r3, #0
	subs r2, #0x14
	cmp r2, #0x1e
	bgt _0804178A
	movs r0, #0x1f
	subs r0, r0, r2
	movs r1, #1
	lsls r1, r0
	b _0804178C
_0804178A:
	movs r1, #1
_0804178C:
	adds r4, r1, #0
_0804178E:
	adds r1, r4, #0
	adds r0, r3, #0
	pop {r4, pc}

	thumb_func_start sub_08041794
sub_08041794: @ 0x08041794
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r4, r1, #0
	movs r1, #0x14
	adds r1, r1, r0
	mov r8, r1
	ldr r0, [r0, #0x10]
	lsls r0, r0, #2
	adds r5, r1, r0
	subs r5, #4
	ldr r2, [r5]
	adds r0, r2, #0
	str r2, [sp]
	bl sub_08041284
	adds r3, r0, #0
	movs r0, #0x20
	subs r0, r0, r3
	str r0, [r4]
	ldr r2, [sp]
	cmp r3, #0xa
	bgt _080417F4
	movs r0, #0xb
	subs r0, r0, r3
	adds r1, r2, #0
	lsrs r1, r0
	ldr r0, _080417DC @ =0x3FF00000
	adds r6, r1, #0
	orrs r6, r0
	cmp r5, r8
	bls _080417E0
	subs r5, #4
	ldr r1, [r5]
	b _080417E2
	.align 2, 0
_080417DC: .4byte 0x3FF00000
_080417E0:
	movs r1, #0
_080417E2:
	adds r0, r3, #0
	adds r0, #0x15
	lsls r2, r0
	movs r0, #0xb
	subs r0, r0, r3
	lsrs r1, r0
	adds r7, r2, #0
	orrs r7, r1
	b _08041840
_080417F4:
	cmp r5, r8
	bls _080417FE
	subs r5, #4
	ldr r4, [r5]
	b _08041800
_080417FE:
	movs r4, #0
_08041800:
	subs r3, #0xb
	cmp r3, #0
	beq _08041838
	lsls r2, r3
	movs r0, #0x20
	subs r0, r0, r3
	adds r1, r4, #0
	lsrs r1, r0
	ldr r0, _08041824 @ =0x3FF00000
	orrs r1, r0
	adds r6, r2, #0
	orrs r6, r1
	cmp r5, r8
	bls _08041828
	subs r5, #4
	ldr r2, [r5]
	b _0804182A
	.align 2, 0
_08041824: .4byte 0x3FF00000
_08041828:
	movs r2, #0
_0804182A:
	lsls r4, r3
	movs r0, #0x20
	subs r0, r0, r3
	lsrs r2, r0
	adds r7, r4, #0
	orrs r7, r2
	b _08041840
_08041838:
	ldr r0, _0804184C @ =0x3FF00000
	adds r6, r2, #0
	orrs r6, r0
	adds r7, r4, #0
_08041840:
	adds r1, r7, #0
	adds r0, r6, #0
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0804184C: .4byte 0x3FF00000

	thumb_func_start sub_08041850
sub_08041850: @ 0x08041850
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sb, r3
	ldr r3, [sp, #0x28]
	mov sl, r3
	adds r5, r2, #0
	adds r4, r1, #0
	movs r1, #1
	bl sub_080410F8
	adds r6, r0, #0
	movs r0, #0x14
	adds r0, r0, r6
	mov r8, r0
	ldr r2, _080418B8 @ =0x000FFFFF
	adds r1, r4, #0
	ands r2, r1
	str r2, [sp, #4]
	ldr r0, _080418BC @ =0x7FFFFFFF
	ands r4, r0
	lsrs r7, r4, #0x14
	cmp r7, #0
	beq _0804188E
	movs r0, #0x80
	lsls r0, r0, #0xd
	orrs r0, r2
	str r0, [sp, #4]
_0804188E:
	str r5, [sp]
	cmp r5, #0
	beq _080418D8
	mov r0, sp
	bl sub_080412DC
	adds r2, r0, #0
	cmp r2, #0
	beq _080418C0
	movs r0, #0x20
	subs r0, r0, r2
	ldr r1, [sp, #4]
	lsls r1, r0
	ldr r0, [sp]
	orrs r0, r1
	str r0, [r6, #0x14]
	ldr r0, [sp, #4]
	lsrs r0, r2
	str r0, [sp, #4]
	b _080418C4
	.align 2, 0
_080418B8: .4byte 0x000FFFFF
_080418BC: .4byte 0x7FFFFFFF
_080418C0:
	ldr r0, [sp]
	str r0, [r6, #0x14]
_080418C4:
	ldr r0, [sp, #4]
	mov r1, r8
	str r0, [r1, #4]
	movs r1, #1
	cmp r0, #0
	beq _080418D2
	movs r1, #2
_080418D2:
	str r1, [r6, #0x10]
	adds r4, r1, #0
	b _080418EC
_080418D8:
	add r0, sp, #4
	bl sub_080412DC
	adds r2, r0, #0
	ldr r0, [sp, #4]
	str r0, [r6, #0x14]
	movs r0, #1
	str r0, [r6, #0x10]
	movs r4, #1
	adds r2, #0x20
_080418EC:
	cmp r7, #0
	beq _08041908
	ldr r3, _08041904 @ =0xFFFFFBCD
	adds r0, r2, r3
	adds r0, r7, r0
	mov r1, sb
	str r0, [r1]
	movs r0, #0x35
	subs r0, r0, r2
	mov r3, sl
	str r0, [r3]
	b _08041924
	.align 2, 0
_08041904: .4byte 0xFFFFFBCD
_08041908:
	ldr r1, _08041934 @ =0xFFFFFBCE
	adds r0, r2, r1
	mov r3, sb
	str r0, [r3]
	lsls r0, r4, #2
	add r0, r8
	subs r0, #4
	ldr r0, [r0]
	bl sub_08041284
	lsls r1, r4, #5
	subs r1, r1, r0
	mov r0, sl
	str r1, [r0]
_08041924:
	adds r0, r6, #0
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08041934: .4byte 0xFFFFFBCE

	thumb_func_start sub_08041938
sub_08041938: @ 0x08041938
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r4, r0, #0
	adds r5, r1, #0
	mov r1, sp
	bl sub_08041794
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	add r1, sp, #4
	adds r0, r5, #0
	bl sub_08041794
	adds r7, r1, #0
	adds r6, r0, #0
	ldr r2, [sp]
	ldr r0, [sp, #4]
	subs r2, r2, r0
	ldr r0, [r4, #0x10]
	ldr r1, [r5, #0x10]
	subs r0, r0, r1
	lsls r0, r0, #5
	adds r0, r2, r0
	cmp r0, #0
	ble _08041974
	lsls r0, r0, #0x14
	ldr r1, [sp, #8]
	adds r0, r1, r0
	str r0, [sp, #8]
	b _08041978
_08041974:
	lsls r0, r0, #0x14
	subs r6, r6, r0
_08041978:
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	adds r3, r7, #0
	adds r2, r6, #0
	bl sub_080428CC
	add sp, #0x10
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_08041988
sub_08041988: @ 0x08041988
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _080419A4 @ =0x00000000
	ldr r0, _080419A0 @ =0x3FF00000
	cmp r4, #0x17
	bgt _080419AC
	ldr r0, _080419A8 @ =gUnknown_083D49C8
	lsls r1, r4, #3
	adds r1, r1, r0
	ldr r0, [r1]
	ldr r1, [r1, #4]
	b _080419BE
	.align 2, 0
_080419A0: .4byte 0x3FF00000
_080419A4: .4byte 0x00000000
_080419A8: .4byte gUnknown_083D49C8
_080419AC:
	cmp r4, #0
	ble _080419BE
_080419B0:
	ldr r3, _080419C4 @ =0x00000000
	ldr r2, _080419C0 @ =0x40240000
	bl sub_08042624
	subs r4, #1
	cmp r4, #0
	bgt _080419B0
_080419BE:
	pop {r4, pc}
	.align 2, 0
_080419C0: .4byte 0x40240000
_080419C4: .4byte 0x00000000

	thumb_func_start sub_080419C8
sub_080419C8: @ 0x080419C8
	ldr r3, _080419E4 @ =0x7FFFFFFF
	ands r3, r0
	rsbs r2, r1, #0
	orrs r2, r1
	lsrs r2, r2, #0x1f
	orrs r3, r2
	ldr r0, _080419E8 @ =0x7FF00000
	subs r3, r0, r3
	rsbs r0, r3, #0
	orrs r3, r0
	lsrs r3, r3, #0x1f
	movs r0, #1
	subs r0, r0, r3
	bx lr
	.align 2, 0
_080419E4: .4byte 0x7FFFFFFF
_080419E8: .4byte 0x7FF00000

	thumb_func_start sub_080419EC
sub_080419EC: @ 0x080419EC
	ldr r3, _08041A04 @ =0x7FFFFFFF
	ands r3, r0
	rsbs r2, r1, #0
	orrs r2, r1
	lsrs r2, r2, #0x1f
	orrs r3, r2
	ldr r0, _08041A08 @ =0x7FF00000
	subs r3, r0, r3
	lsrs r3, r3, #0x1f
	adds r0, r3, #0
	bx lr
	.align 2, 0
_08041A04: .4byte 0x7FFFFFFF
_08041A08: .4byte 0x7FF00000

	thumb_func_start sub_08041A0C
sub_08041A0C: @ 0x08041A0C
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, r1, #0
	ldr r4, _08041A34 @ =gUnknown_0203C564
	movs r1, #0
	str r1, [r4]
	bl sub_08041F18
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08041A2E
	ldr r0, [r4]
	cmp r0, #0
	beq _08041A2E
	str r0, [r5]
_08041A2E:
	adds r0, r1, #0
	pop {r4, r5, pc}
	.align 2, 0
_08041A34: .4byte gUnknown_0203C564

	thumb_func_start sub_08041A38
sub_08041A38: @ 0x08041A38
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r3, r2, #0
	ldr r0, [r5, #0x54]
	movs r2, #0xe
	ldrsh r1, [r5, r2]
	adds r2, r4, #0
	bl sub_08042100
	adds r1, r0, #0
	cmp r1, #0
	blt _08041A5A
	ldr r0, [r5, #0x50]
	adds r0, r0, r1
	str r0, [r5, #0x50]
	b _08041A62
_08041A5A:
	ldr r0, _08041A68 @ =0xFFFFEFFF
	ldrh r2, [r5, #0xc]
	ands r0, r2
	strh r0, [r5, #0xc]
_08041A62:
	adds r0, r1, #0
	pop {r4, r5, pc}
	.align 2, 0
_08041A68: .4byte 0xFFFFEFFF

	thumb_func_start sub_08041A6C
sub_08041A6C: @ 0x08041A6C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	movs r0, #0x80
	lsls r0, r0, #1
	ldrh r1, [r4, #0xc]
	ands r0, r1
	cmp r0, #0
	beq _08041A8E
	ldr r0, [r4, #0x54]
	movs r2, #0xe
	ldrsh r1, [r4, r2]
	movs r2, #0
	movs r3, #2
	bl sub_080420D0
_08041A8E:
	ldr r0, _08041AA8 @ =0xFFFFEFFF
	ldrh r1, [r4, #0xc]
	ands r0, r1
	strh r0, [r4, #0xc]
	ldr r0, [r4, #0x54]
	movs r2, #0xe
	ldrsh r1, [r4, r2]
	adds r2, r5, #0
	adds r3, r6, #0
	bl sub_08041FBC
	pop {r4, r5, r6, pc}
	.align 2, 0
_08041AA8: .4byte 0xFFFFEFFF

	thumb_func_start sub_08041AAC
sub_08041AAC: @ 0x08041AAC
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r3, r2, #0
	ldr r0, [r5, #0x54]
	movs r2, #0xe
	ldrsh r1, [r5, r2]
	adds r2, r4, #0
	bl sub_080420D0
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08041AD8
	ldr r0, _08041AD4 @ =0xFFFFEFFF
	ldrh r2, [r5, #0xc]
	ands r0, r2
	strh r0, [r5, #0xc]
	b _08041AE6
	.align 2, 0
_08041AD4: .4byte 0xFFFFEFFF
_08041AD8:
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	ldrh r2, [r5, #0xc]
	orrs r0, r2
	strh r0, [r5, #0xc]
	str r1, [r5, #0x50]
_08041AE6:
	adds r0, r1, #0
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08041AEC
sub_08041AEC: @ 0x08041AEC
	push {lr}
	ldr r2, [r0, #0x54]
	movs r3, #0xe
	ldrsh r1, [r0, r3]
	adds r0, r2, #0
	bl sub_08042044
	pop {pc}

	thumb_func_start sub_08041AFC
sub_08041AFC: @ 0x08041AFC
	push {r4, r5, lr}
	adds r2, r0, #0
	adds r3, r1, #0
	orrs r0, r3
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _08041B42
	ldr r1, [r2]
	ldr r0, [r3]
	cmp r1, r0
	bne _08041B42
	ldr r5, _08041B28 @ =0xFEFEFEFF
	ldr r4, _08041B2C @ =0x80808080
_08041B18:
	ldr r1, [r2]
	adds r0, r1, r5
	bics r0, r1
	ands r0, r4
	cmp r0, #0
	beq _08041B30
	movs r0, #0
	b _08041B54
	.align 2, 0
_08041B28: .4byte 0xFEFEFEFF
_08041B2C: .4byte 0x80808080
_08041B30:
	adds r2, #4
	adds r3, #4
	ldr r1, [r2]
	ldr r0, [r3]
	cmp r1, r0
	beq _08041B18
	b _08041B42
_08041B3E:
	adds r2, #1
	adds r3, #1
_08041B42:
	ldrb r0, [r2]
	cmp r0, #0
	beq _08041B4E
	ldrb r1, [r3]
	cmp r0, r1
	beq _08041B3E
_08041B4E:
	ldrb r2, [r2]
	ldrb r3, [r3]
	subs r0, r2, r3
_08041B54:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08041B58
sub_08041B58: @ 0x08041B58
	adds r3, r0, #0
	movs r1, #0
	ldr r2, _08041B60 @ =gUnknown_0203C498
	b _08041B6C
	.align 2, 0
_08041B60: .4byte gUnknown_0203C498
_08041B64:
	adds r2, #8
	adds r1, #1
	cmp r1, #0x13
	bgt _08041B72
_08041B6C:
	ldr r0, [r2]
	cmp r0, r3
	bne _08041B64
_08041B72:
	adds r0, r1, #0
	bx lr
	.align 2, 0

	thumb_func_start sub_08041B78
sub_08041B78: @ 0x08041B78
	adds r2, r0, #0
	ldr r0, _08041B8C @ =gUnknown_030002EC
	ldr r1, [r0]
	ldr r0, [r1, #4]
	movs r3, #0xe
	ldrsh r0, [r0, r3]
	cmp r2, r0
	bne _08041B94
	ldr r0, _08041B90 @ =gUnknown_0203C48C
	b _08041BBA
	.align 2, 0
_08041B8C: .4byte gUnknown_030002EC
_08041B90: .4byte gUnknown_0203C48C
_08041B94:
	ldr r0, [r1, #8]
	movs r3, #0xe
	ldrsh r0, [r0, r3]
	cmp r2, r0
	bne _08041BA8
	ldr r0, _08041BA4 @ =gUnknown_0203C490
	b _08041BBA
	.align 2, 0
_08041BA4: .4byte gUnknown_0203C490
_08041BA8:
	ldr r0, [r1, #0xc]
	movs r1, #0xe
	ldrsh r0, [r0, r1]
	cmp r2, r0
	beq _08041BB8
	adds r0, r2, #0
	subs r0, #0x20
	b _08041BBC
_08041BB8:
	ldr r0, _08041BC0 @ =gUnknown_0203C494
_08041BBA:
	ldr r0, [r0]
_08041BBC:
	bx lr
	.align 2, 0
_08041BC0: .4byte gUnknown_0203C494

	thumb_func_start sub_08041BC4
sub_08041BC4: @ 0x08041BC4
	push {r4, r5, lr}
	sub sp, #0xc
	ldr r4, _08041C20 @ =gUnknown_083D4AE0
	str r4, [sp]
	movs r3, #3
	str r3, [sp, #8]
	movs r0, #0
	str r0, [sp, #4]
	movs r5, #1
	adds r0, r5, #0
	mov r1, sp
	svc #0xab
	adds r2, r0, #0
	ldr r5, _08041C24 @ =gUnknown_0203C48C
	str r2, [r5]
	str r4, [sp]
	str r3, [sp, #8]
	movs r0, #4
	str r0, [sp, #4]
	ldr r3, _08041C28 @ =gUnknown_0203C490
	movs r4, #1
	adds r0, r4, #0
	mov r1, sp
	svc #0xab
	adds r2, r0, #0
	ldr r0, _08041C2C @ =gUnknown_0203C494
	str r2, [r0]
	str r2, [r3]
	ldr r2, _08041C30 @ =gUnknown_0203C498
	adds r1, r2, #0
	subs r4, #2
	adds r0, r2, #0
	adds r0, #0x98
_08041C06:
	str r4, [r0]
	subs r0, #8
	cmp r0, r1
	bge _08041C06
	movs r0, #0
	ldr r1, [r5]
	str r1, [r2]
	str r0, [r2, #4]
	ldr r1, [r3]
	str r1, [r2, #8]
	str r0, [r2, #0xc]
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
_08041C20: .4byte gUnknown_083D4AE0
_08041C24: .4byte gUnknown_0203C48C
_08041C28: .4byte gUnknown_0203C490
_08041C2C: .4byte gUnknown_0203C494
_08041C30: .4byte gUnknown_0203C498

	thumb_func_start sub_08041C34
sub_08041C34: @ 0x08041C34
	push {r4, lr}
	movs r3, #0x13
	movs r4, #0
	adds r0, r3, #0
	adds r1, r4, #0
	svc #0xab
	adds r2, r0, #0
	adds r0, r2, #0
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08041C48
sub_08041C48: @ 0x08041C48
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_08042070
	adds r4, r0, #0
	bl sub_08041C34
	str r0, [r4]
	adds r0, r5, #0
	pop {r4, r5, pc}

	thumb_func_start sub_08041C5C
sub_08041C5C: @ 0x08041C5C
	push {lr}
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08041C6C
	adds r0, r1, #0
	b _08041C72
_08041C6C:
	adds r0, r1, #0
	bl sub_08041C48
_08041C72:
	pop {pc}

	thumb_func_start sub_08041C74
sub_08041C74: @ 0x08041C74
	push {r4, r5, lr}
	sub sp, #0xc
	adds r4, r1, #0
	adds r5, r2, #0
	bl sub_08041B78
	str r0, [sp]
	str r4, [sp, #4]
	str r5, [sp, #8]
	movs r3, #6
	adds r0, r3, #0
	mov r1, sp
	svc #0xab
	adds r2, r0, #0
	adds r0, r2, #0
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08041C98
sub_08041C98: @ 0x08041C98
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r7, r2, #0
	bl sub_08041B78
	bl sub_08041B58
	adds r6, r0, #0
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r7, #0
	bl sub_08041C74
	cmp r0, #0
	bge _08041CC2
	movs r0, #1
	rsbs r0, r0, #0
	bl sub_08041C48
	b _08041CD8
_08041CC2:
	subs r2, r7, r0
	cmp r6, #0x14
	beq _08041CD6
	ldr r0, _08041CDC @ =gUnknown_0203C498
	lsls r1, r6, #3
	adds r0, #4
	adds r1, r1, r0
	ldr r0, [r1]
	adds r0, r0, r2
	str r0, [r1]
_08041CD6:
	adds r0, r2, #0
_08041CD8:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08041CDC: .4byte gUnknown_0203C498

	thumb_func_start sub_08041CE0
sub_08041CE0: @ 0x08041CE0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	mov r8, r0
	adds r5, r1, #0
	adds r4, r2, #0
	bl sub_08041B78
	adds r7, r0, #0
	bl sub_08041B58
	adds r6, r0, #0
	cmp r4, #1
	bne _08041D16
	cmp r6, #0x14
	bne _08041D08
	movs r0, #1
	rsbs r0, r0, #0
	b _08041D58
_08041D08:
	ldr r0, _08041D60 @ =gUnknown_0203C498
	lsls r1, r6, #3
	adds r0, #4
	adds r1, r1, r0
	ldr r0, [r1]
	adds r5, r5, r0
	movs r4, #0
_08041D16:
	cmp r4, #2
	bne _08041D28
	str r7, [sp]
	movs r3, #0xc
	adds r0, r3, #0
	mov r1, sp
	svc #0xab
	adds r2, r0, #0
	adds r5, r5, r2
_08041D28:
	mov r0, r8
	bl sub_08041B78
	str r0, [sp]
	str r5, [sp, #4]
	movs r3, #0xa
	adds r0, r3, #0
	mov r1, sp
	svc #0xab
	adds r2, r0, #0
	cmp r6, #0x14
	beq _08041D4E
	cmp r2, #0
	bne _08041D4E
	ldr r0, _08041D60 @ =gUnknown_0203C498
	lsls r1, r6, #3
	adds r0, #4
	adds r1, r1, r0
	str r5, [r1]
_08041D4E:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, #0
	bne _08041D58
	adds r0, r5, #0
_08041D58:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08041D60: .4byte gUnknown_0203C498

	thumb_func_start sub_08041D64
sub_08041D64: @ 0x08041D64
	push {lr}
	bl sub_08041CE0
	bl sub_08041C5C
	pop {pc}

	thumb_func_start sub_08041D70
sub_08041D70: @ 0x08041D70
	push {r4, r5, lr}
	sub sp, #0xc
	adds r4, r1, #0
	adds r5, r2, #0
	bl sub_08041B78
	str r0, [sp]
	str r4, [sp, #4]
	str r5, [sp, #8]
	movs r3, #5
	adds r0, r3, #0
	mov r1, sp
	svc #0xab
	adds r2, r0, #0
	adds r0, r2, #0
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08041D94
sub_08041D94: @ 0x08041D94
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	bl sub_08041B78
	bl sub_08041B58
	adds r7, r0, #0
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_08041D70
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _08041DBC
	cmp r0, r6
	bne _08041DC4
_08041DBC:
	adds r0, r1, #0
	bl sub_08041C48
	b _08041DDA
_08041DC4:
	subs r2, r6, r0
	cmp r7, #0x14
	beq _08041DD8
	ldr r0, _08041DDC @ =gUnknown_0203C498
	lsls r1, r7, #3
	adds r0, #4
	adds r1, r1, r0
	ldr r0, [r1]
	adds r0, r0, r2
	str r0, [r1]
_08041DD8:
	adds r0, r2, #0
_08041DDA:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08041DDC: .4byte gUnknown_0203C498

	thumb_func_start sub_08041DE0
sub_08041DE0: @ 0x08041DE0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0xc
	adds r7, r0, #0
	adds r4, r1, #0
	movs r5, #0
	movs r6, #1
	rsbs r6, r6, #0
	adds r0, r6, #0
	bl sub_08041B58
	mov r8, r0
	cmp r0, #0x14
	bne _08041E02
	adds r0, r6, #0
	b _08041E76
_08041E02:
	movs r0, #2
	ands r0, r4
	cmp r0, #0
	beq _08041E0C
	movs r5, #2
_08041E0C:
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r4
	cmp r0, #0
	beq _08041E1A
	movs r0, #4
	orrs r5, r0
_08041E1A:
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r4
	cmp r0, #0
	beq _08041E28
	movs r0, #4
	orrs r5, r0
_08041E28:
	movs r1, #8
	ands r4, r1
	cmp r4, #0
	beq _08041E38
	movs r0, #5
	rsbs r0, r0, #0
	ands r5, r0
	orrs r5, r1
_08041E38:
	str r7, [sp]
	adds r0, r7, #0
	bl sub_0803E06C
	str r0, [sp, #8]
	str r5, [sp, #4]
	movs r2, #1
	adds r0, r2, #0
	mov r1, sp
	svc #0xab
	adds r3, r0, #0
	cmp r3, #0
	blt _08041E70
	ldr r0, _08041E6C @ =gUnknown_0203C498
	mov r1, r8
	lsls r2, r1, #3
	adds r1, r2, r0
	str r3, [r1]
	adds r0, #4
	adds r2, r2, r0
	movs r0, #0
	str r0, [r2]
	adds r0, r3, #0
	adds r0, #0x20
	b _08041E76
	.align 2, 0
_08041E6C: .4byte gUnknown_0203C498
_08041E70:
	adds r0, r3, #0
	bl sub_08041C48
_08041E76:
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_08041E80
sub_08041E80: @ 0x08041E80
	push {r1, r2, r3}
	push {lr}
	ldr r1, [sp, #4]
	bl sub_08041DE0
	bl sub_08041C5C
	pop {r3}
	add sp, #0xc
	bx r3

	thumb_func_start sub_08041E94
sub_08041E94: @ 0x08041E94
	push {lr}
	sub sp, #4
	bl sub_08041B78
	str r0, [sp]
	bl sub_08041B58
	adds r1, r0, #0
	cmp r1, #0x14
	beq _08041EB4
	ldr r0, _08041EC4 @ =gUnknown_0203C498
	lsls r1, r1, #3
	adds r1, r1, r0
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r1]
_08041EB4:
	movs r3, #2
	adds r0, r3, #0
	mov r1, sp
	svc #0xab
	adds r2, r0, #0
	adds r0, r2, #0
	add sp, #4
	pop {pc}
	.align 2, 0
_08041EC4: .4byte gUnknown_0203C498

	thumb_func_start sub_08041EC8
sub_08041EC8: @ 0x08041EC8
	push {lr}
	bl sub_08041E94
	bl sub_08041C5C
	pop {pc}

	thumb_func_start sub_08041ED4
sub_08041ED4: @ 0x08041ED4
	mov ip, r3
	mov r3, r8
	push {r3}
	mov r3, ip
	movs r2, #0x18
	ldr r3, _08041EF0 @ =0x00020026
	adds r0, r2, #0
	adds r1, r3, #0
	svc #0xab
	mov r8, r0
	pop {r3}
	mov r8, r3
	bx lr
	.align 2, 0
_08041EF0: .4byte 0x00020026

	thumb_func_start sub_08041EF4
sub_08041EF4: @ 0x08041EF4
	mov ip, r3
	mov r3, r8
	push {r3}
	mov r3, ip
	movs r2, #0x18
	ldr r3, _08041F10 @ =0x00020026
	adds r0, r2, #0
	adds r1, r3, #0
	svc #0xab
	mov r8, r0
	pop {r3}
	mov r8, r3
	bx lr
	.align 2, 0
_08041F10: .4byte 0x00020026
_08041F14:
	.byte 0x01, 0x20, 0x70, 0x47

	thumb_func_start sub_08041F18
sub_08041F18: @ 0x08041F18
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r4, _08041F48 @ =gUnknown_0203C488
	ldr r0, [r4]
	cmp r0, #0
	bne _08041F28
	ldr r0, _08041F4C @ =gUnknown_0203C568
	str r0, [r4]
_08041F28:
	ldr r5, [r4]
	adds r0, r5, r6
	cmp r0, sp
	bls _08041F3E
	ldr r1, _08041F50 @ =gUnknown_083D4AE4
	movs r0, #1
	movs r2, #0x20
	bl sub_08041D94
	bl sub_080420A8
_08041F3E:
	ldr r0, [r4]
	adds r0, r0, r6
	str r0, [r4]
	adds r0, r5, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_08041F48: .4byte gUnknown_0203C488
_08041F4C: .4byte gUnknown_0203C568
_08041F50: .4byte gUnknown_083D4AE4

	thumb_func_start sub_08041F54
sub_08041F54: @ 0x08041F54
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r1, #4]
	movs r0, #0
	bx lr
	.align 2, 0
_08041F60:
	.byte 0x01, 0x20, 0x40, 0x42, 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00

	thumb_func_start sub_08041F6C
sub_08041F6C: @ 0x08041F6C
	push {r4, r5, lr}
	adds r2, r0, #0
	adds r3, r1, #0
	cmp r2, #0
	beq _08041F8A
	movs r4, #0x11
	movs r5, #0
	adds r0, r4, #0
	adds r1, r5, #0
	svc #0xab
	adds r5, r0, #0
	adds r4, r5, #0
	str r4, [r2]
	movs r0, #0
	str r0, [r2, #4]
_08041F8A:
	cmp r3, #0
	beq _08041F94
	movs r0, #0
	str r0, [r3]
	str r0, [r3, #4]
_08041F94:
	movs r0, #0
	pop {r4, r5, pc}

	thumb_func_start sub_08041F98
sub_08041F98: @ 0x08041F98
	push {r4, r5, lr}
	adds r2, r0, #0
	movs r4, #0x10
	movs r5, #0
	adds r0, r4, #0
	adds r1, r5, #0
	svc #0xab
	adds r3, r0, #0
	cmp r2, #0
	beq _08041FB6
	str r3, [r2]
	movs r0, #0
	str r0, [r2, #4]
	str r0, [r2, #8]
	str r0, [r2, #0xc]
_08041FB6:
	adds r0, r3, #0
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08041FBC
sub_08041FBC: @ 0x08041FBC
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, r1, #0
	adds r1, r2, #0
	adds r2, r3, #0
	ldr r4, _08041FE8 @ =gUnknown_0203C564
	movs r3, #0
	str r3, [r4]
	bl sub_08041D94
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08041FE2
	ldr r0, [r4]
	cmp r0, #0
	beq _08041FE2
	str r0, [r5]
_08041FE2:
	adds r0, r1, #0
	pop {r4, r5, pc}
	.align 2, 0
_08041FE8: .4byte gUnknown_0203C564

	thumb_func_start sub_08041FEC
sub_08041FEC: @ 0x08041FEC
	push {r4, lr}
	muls r1, r2, r1
	bl sub_08040BFC
	adds r4, r0, #0
	cmp r4, #0
	bne _08041FFE
	movs r0, #0
	b _08042042
_08041FFE:
	adds r0, r4, #0
	subs r0, #8
	ldr r0, [r0, #4]
	movs r1, #4
	rsbs r1, r1, #0
	ands r0, r1
	subs r2, r0, #4
	cmp r2, #0x24
	bhi _08042038
	adds r1, r4, #0
	cmp r2, #0x13
	bls _0804202E
	movs r0, #0
	stm r1!, {r0}
	str r0, [r4, #4]
	adds r1, #4
	cmp r2, #0x1b
	bls _0804202E
	stm r1!, {r0}
	stm r1!, {r0}
	cmp r2, #0x23
	bls _0804202E
	stm r1!, {r0}
	stm r1!, {r0}
_0804202E:
	movs r0, #0
	stm r1!, {r0}
	stm r1!, {r0}
	str r0, [r1]
	b _08042040
_08042038:
	adds r0, r4, #0
	movs r1, #0
	bl sub_0803DF1C
_08042040:
	adds r0, r4, #0
_08042042:
	pop {r4, pc}

	thumb_func_start sub_08042044
sub_08042044: @ 0x08042044
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, r1, #0
	ldr r4, _0804206C @ =gUnknown_0203C564
	movs r1, #0
	str r1, [r4]
	bl sub_08041EC8
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08042066
	ldr r0, [r4]
	cmp r0, #0
	beq _08042066
	str r0, [r5]
_08042066:
	adds r0, r1, #0
	pop {r4, r5, pc}
	.align 2, 0
_0804206C: .4byte gUnknown_0203C564

	thumb_func_start sub_08042070
sub_08042070: @ 0x08042070
	ldr r0, _08042078 @ =gUnknown_030002EC
	ldr r0, [r0]
	bx lr
	.align 2, 0
_08042078: .4byte gUnknown_030002EC

	thumb_func_start sub_0804207C
sub_0804207C: @ 0x0804207C
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, r1, #0
	adds r1, r2, #0
	ldr r4, _080420A4 @ =gUnknown_0203C564
	movs r2, #0
	str r2, [r4]
	bl sub_08041F54
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080420A0
	ldr r0, [r4]
	cmp r0, #0
	beq _080420A0
	str r0, [r5]
_080420A0:
	adds r0, r1, #0
	pop {r4, r5, pc}
	.align 2, 0
_080420A4: .4byte gUnknown_0203C564

	thumb_func_start sub_080420A8
sub_080420A8: @ 0x080420A8
	mov ip, r3
	mov r3, r8
	push {r3}
	mov r3, ip
	movs r2, #0x18
	ldr r3, _080420C4 @ =0x00020022
	adds r0, r2, #0
	adds r1, r3, #0
	svc #0xab
	mov r8, r0
	pop {r3}
	mov r8, r3
	bx lr
	.align 2, 0
_080420C4: .4byte 0x00020022

	thumb_func_start sub_080420C8
sub_080420C8: @ 0x080420C8
	movs r0, #1
	bx lr
_080420CC:
	.byte 0x70, 0x47, 0x00, 0x00

	thumb_func_start sub_080420D0
sub_080420D0: @ 0x080420D0
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, r1, #0
	adds r1, r2, #0
	adds r2, r3, #0
	ldr r4, _080420FC @ =gUnknown_0203C564
	movs r3, #0
	str r3, [r4]
	bl sub_08041D64
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080420F6
	ldr r0, [r4]
	cmp r0, #0
	beq _080420F6
	str r0, [r5]
_080420F6:
	adds r0, r1, #0
	pop {r4, r5, pc}
	.align 2, 0
_080420FC: .4byte gUnknown_0203C564

	thumb_func_start sub_08042100
sub_08042100: @ 0x08042100
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, r1, #0
	adds r1, r2, #0
	adds r2, r3, #0
	ldr r4, _0804212C @ =gUnknown_0203C564
	movs r3, #0
	str r3, [r4]
	bl sub_08041C98
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08042126
	ldr r0, [r4]
	cmp r0, #0
	beq _08042126
	str r0, [r5]
_08042126:
	adds r0, r1, #0
	pop {r4, r5, pc}
	.align 2, 0
_0804212C: .4byte gUnknown_0203C564

	thumb_func_start sub_08042130
sub_08042130: @ 0x08042130
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r1, r0, #0
	ldr r4, [r1, #0xc]
	ldr r5, [r1, #0x10]
	ldr r7, [r1, #4]
	movs r6, #0
	movs r2, #0
	ldr r0, [r1]
	cmp r0, #1
	bhi _08042148
	movs r2, #1
_08042148:
	cmp r2, #0
	beq _08042168
	ldr r6, _0804215C @ =0x000007FF
	ldr r2, _08042160 @ =0x00000000
	ldr r3, _08042164 @ =0x00080000
	adds r0, r4, #0
	adds r1, r5, #0
	orrs r1, r3
	b _08042220
	.align 2, 0
_0804215C: .4byte 0x000007FF
_08042160: .4byte 0x00000000
_08042164: .4byte 0x00080000
_08042168:
	movs r2, #0
	cmp r0, #4
	bne _08042170
	movs r2, #1
_08042170:
	cmp r2, #0
	bne _080421BC
	movs r2, #0
	cmp r0, #2
	bne _0804217C
	movs r2, #1
_0804217C:
	cmp r2, #0
	beq _08042186
	movs r4, #0
	movs r5, #0
	b _08042224
_08042186:
	adds r0, r5, #0
	orrs r0, r4
	cmp r0, #0
	beq _08042224
	ldr r2, [r1, #8]
	ldr r0, _080421A4 @ =0xFFFFFC02
	cmp r2, r0
	bge _080421B6
	subs r2, r0, r2
	cmp r2, #0x38
	ble _080421A8
	movs r4, #0
	movs r5, #0
	b _08042216
	.align 2, 0
_080421A4: .4byte 0xFFFFFC02
_080421A8:
	adds r1, r5, #0
	adds r0, r4, #0
	bl sub_08043818
	adds r5, r1, #0
	adds r4, r0, #0
	b _08042216
_080421B6:
	ldr r0, _080421C4 @ =0x000003FF
	cmp r2, r0
	ble _080421CC
_080421BC:
	ldr r6, _080421C8 @ =0x000007FF
	movs r4, #0
	movs r5, #0
	b _08042224
	.align 2, 0
_080421C4: .4byte 0x000003FF
_080421C8: .4byte 0x000007FF
_080421CC:
	ldr r0, _080421F4 @ =0x000003FF
	adds r6, r2, r0
	movs r0, #0xff
	adds r1, r4, #0
	ands r1, r0
	movs r2, #0
	cmp r1, #0x80
	bne _080421F8
	cmp r2, #0
	bne _080421F8
	adds r0, #1
	adds r1, r4, #0
	ands r1, r0
	adds r0, r2, #0
	orrs r0, r1
	cmp r0, #0
	beq _08042200
	movs r0, #0x80
	movs r1, #0
	b _080421FC
	.align 2, 0
_080421F4: .4byte 0x000003FF
_080421F8:
	movs r0, #0x7f
	movs r1, #0
_080421FC:
	adds r4, r4, r0
	adcs r5, r1
_08042200:
	ldr r0, _08042264 @ =0x1FFFFFFF
	cmp r5, r0
	bls _08042216
	lsls r3, r5, #0x1f
	lsrs r2, r4, #1
	adds r0, r3, #0
	orrs r0, r2
	lsrs r1, r5, #1
	adds r5, r1, #0
	adds r4, r0, #0
	adds r6, #1
_08042216:
	lsls r3, r5, #0x18
	lsrs r2, r4, #8
	adds r0, r3, #0
	orrs r0, r2
	lsrs r1, r5, #8
_08042220:
	adds r5, r1, #0
	adds r4, r0, #0
_08042224:
	str r4, [sp]
	ldr r2, _08042268 @ =0x000FFFFF
	ands r2, r5
	ldr r0, [sp, #4]
	ldr r1, _0804226C @ =0xFFF00000
	ands r0, r1
	orrs r0, r2
	str r0, [sp, #4]
	mov r2, sp
	ldr r1, _08042270 @ =0x000007FF
	adds r0, r1, #0
	ands r6, r0
	lsls r1, r6, #4
	ldr r0, _08042274 @ =0xFFFF800F
	ldrh r3, [r2, #6]
	ands r0, r3
	orrs r0, r1
	strh r0, [r2, #6]
	lsls r1, r7, #7
	movs r0, #0x7f
	ldrb r3, [r2, #7]
	ands r0, r3
	orrs r0, r1
	strb r0, [r2, #7]
	ldr r1, [sp]
	ldr r0, [sp, #4]
	str r0, [sp]
	str r1, [sp, #4]
	ldr r0, [sp]
	ldr r1, [sp, #4]
	add sp, #8
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08042264: .4byte 0x1FFFFFFF
_08042268: .4byte 0x000FFFFF
_0804226C: .4byte 0xFFF00000
_08042270: .4byte 0x000007FF
_08042274: .4byte 0xFFFF800F

	thumb_func_start sub_08042278
sub_08042278: @ 0x08042278
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r2, r0, #0
	adds r6, r1, #0
	ldr r1, [r2, #4]
	str r1, [sp]
	ldr r0, [r2]
	str r0, [sp, #4]
	mov r2, sp
	adds r4, r1, #0
	lsls r0, r0, #0xc
	lsrs r5, r0, #0xc
	ldrh r3, [r2, #6]
	lsls r0, r3, #0x11
	lsrs r3, r0, #0x15
	ldrb r2, [r2, #7]
	lsrs r0, r2, #7
	str r0, [r6, #4]
	cmp r3, #0
	bne _080422EC
	orrs r1, r5
	cmp r1, #0
	bne _080422AC
	movs r0, #2
	str r0, [r6]
	b _08042340
_080422AC:
	ldr r0, _080422E4 @ =0xFFFFFC02
	str r0, [r6, #8]
	lsrs r3, r4, #0x18
	lsls r2, r5, #8
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r4, #8
	adds r5, r1, #0
	adds r4, r0, #0
	movs r0, #3
	str r0, [r6]
	ldr r0, _080422E8 @ =0x0FFFFFFF
	cmp r5, r0
	bhi _0804231C
	adds r7, r0, #0
_080422CA:
	lsrs r3, r4, #0x1f
	lsls r2, r5, #1
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r4, #1
	adds r5, r1, #0
	adds r4, r0, #0
	ldr r0, [r6, #8]
	subs r0, #1
	str r0, [r6, #8]
	cmp r5, r7
	bls _080422CA
	b _0804231C
	.align 2, 0
_080422E4: .4byte 0xFFFFFC02
_080422E8: .4byte 0x0FFFFFFF
_080422EC:
	ldr r0, _08042300 @ =0x000007FF
	cmp r3, r0
	bne _08042322
	orrs r1, r5
	cmp r1, #0
	bne _08042304
	movs r0, #4
	str r0, [r6]
	b _08042340
	.align 2, 0
_08042300: .4byte 0x000007FF
_08042304:
	movs r2, #0x80
	lsls r2, r2, #0xc
	movs r0, #0
	adds r1, r5, #0
	ands r1, r2
	orrs r1, r0
	cmp r1, #0
	beq _0804231A
	movs r0, #1
	str r0, [r6]
	b _0804231C
_0804231A:
	str r1, [r6]
_0804231C:
	str r4, [r6, #0xc]
	str r5, [r6, #0x10]
	b _08042340
_08042322:
	ldr r1, _08042344 @ =0xFFFFFC01
	adds r0, r3, r1
	str r0, [r6, #8]
	movs r0, #3
	str r0, [r6]
	lsrs r3, r4, #0x18
	lsls r2, r5, #8
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r4, #8
	ldr r2, _08042348 @ =0x00000000
	ldr r3, _0804234C @ =0x10000000
	orrs r1, r3
	str r0, [r6, #0xc]
	str r1, [r6, #0x10]
_08042340:
	add sp, #8
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08042344: .4byte 0xFFFFFC01
_08042348: .4byte 0x00000000
_0804234C: .4byte 0x10000000

	thumb_func_start sub_08042350
sub_08042350: @ 0x08042350
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r3, r0, #0
	adds r4, r1, #0
	mov sl, r2
	movs r0, #0
	ldr r2, [r3]
	cmp r2, #1
	bhi _0804236C
	movs r0, #1
_0804236C:
	cmp r0, #0
	beq _08042374
_08042370:
	adds r0, r3, #0
	b _080425AC
_08042374:
	movs r1, #0
	ldr r0, [r4]
	cmp r0, #1
	bhi _0804237E
	movs r1, #1
_0804237E:
	cmp r1, #0
	bne _080423F6
	movs r1, #0
	cmp r2, #4
	bne _0804238A
	movs r1, #1
_0804238A:
	cmp r1, #0
	beq _080423AC
	movs r1, #0
	cmp r0, #4
	bne _08042396
	movs r1, #1
_08042396:
	cmp r1, #0
	beq _08042370
	ldr r1, [r3, #4]
	ldr r0, [r4, #4]
	cmp r1, r0
	beq _08042370
	ldr r0, _080423A8 @ =gUnknown_0203C538
	b _080425AC
	.align 2, 0
_080423A8: .4byte gUnknown_0203C538
_080423AC:
	movs r1, #0
	cmp r0, #4
	bne _080423B4
	movs r1, #1
_080423B4:
	cmp r1, #0
	bne _080423F6
	movs r1, #0
	cmp r0, #2
	bne _080423C0
	movs r1, #1
_080423C0:
	cmp r1, #0
	beq _080423E8
	movs r0, #0
	cmp r2, #2
	bne _080423CC
	movs r0, #1
_080423CC:
	cmp r0, #0
	beq _08042370
	mov r1, sl
	adds r0, r3, #0
	ldm r0!, {r2, r5, r6}
	stm r1!, {r2, r5, r6}
	ldm r0!, {r2, r5}
	stm r1!, {r2, r5}
	ldr r0, [r3, #4]
	ldr r1, [r4, #4]
	ands r0, r1
	mov r6, sl
	str r0, [r6, #4]
	b _080425AA
_080423E8:
	movs r1, #0
	ldr r0, [r3]
	cmp r0, #2
	bne _080423F2
	movs r1, #1
_080423F2:
	cmp r1, #0
	beq _080423FA
_080423F6:
	adds r0, r4, #0
	b _080425AC
_080423FA:
	ldr r0, [r3, #8]
	mov sb, r0
	ldr r1, [r4, #8]
	mov r8, r1
	ldr r6, [r3, #0xc]
	ldr r7, [r3, #0x10]
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x10]
	str r0, [sp]
	str r1, [sp, #4]
	mov r1, sb
	mov r2, r8
	subs r0, r1, r2
	cmp r0, #0
	bge _0804241A
	rsbs r0, r0, #0
_0804241A:
	cmp r0, #0x3f
	bgt _08042498
	ldr r3, [r3, #4]
	mov ip, r3
	ldr r4, [r4, #4]
	str r4, [sp, #8]
	cmp sb, r8
	ble _08042464
	mov r3, sb
	mov r4, r8
	subs r3, r3, r4
	mov r8, r3
_08042432:
	movs r5, #1
	rsbs r5, r5, #0
	add r8, r5
	ldr r2, [sp]
	movs r0, #1
	ands r2, r0
	movs r3, #0
	ldr r1, [sp, #4]
	lsls r5, r1, #0x1f
	ldr r0, [sp]
	lsrs r4, r0, #1
	adds r0, r5, #0
	orrs r0, r4
	adds r4, r1, #0
	lsrs r1, r4, #1
	adds r5, r2, #0
	orrs r5, r0
	str r5, [sp]
	adds r4, r3, #0
	orrs r4, r1
	str r4, [sp, #4]
	mov r5, r8
	cmp r5, #0
	bne _08042432
	mov r8, sb
_08042464:
	cmp r8, sb
	ble _080424B4
	mov r0, r8
	mov r1, sb
	subs r0, r0, r1
	mov sb, r0
_08042470:
	movs r2, #1
	rsbs r2, r2, #0
	add sb, r2
	movs r2, #1
	ands r2, r6
	movs r3, #0
	lsls r5, r7, #0x1f
	lsrs r4, r6, #1
	adds r0, r5, #0
	orrs r0, r4
	lsrs r1, r7, #1
	adds r6, r2, #0
	orrs r6, r0
	adds r7, r3, #0
	orrs r7, r1
	mov r3, sb
	cmp r3, #0
	bne _08042470
	mov sb, r8
	b _080424B4
_08042498:
	cmp sb, r8
	ble _080424A6
	movs r0, #0
	movs r1, #0
	str r0, [sp]
	str r1, [sp, #4]
	b _080424AC
_080424A6:
	mov sb, r8
	movs r6, #0
	movs r7, #0
_080424AC:
	ldr r3, [r3, #4]
	mov ip, r3
	ldr r4, [r4, #4]
	str r4, [sp, #8]
_080424B4:
	ldr r1, [sp, #8]
	cmp ip, r1
	beq _0804255C
	mov r2, ip
	cmp r2, #0
	beq _080424D6
	adds r1, r7, #0
	adds r0, r6, #0
	bl sub_0804384C
	adds r3, r1, #0
	adds r2, r0, #0
	ldr r4, [sp]
	ldr r5, [sp, #4]
	adds r2, r2, r4
	adcs r3, r5
	b _080424E2
_080424D6:
	adds r3, r7, #0
	adds r2, r6, #0
	ldr r0, [sp]
	ldr r1, [sp, #4]
	subs r2, r2, r0
	sbcs r3, r1
_080424E2:
	cmp r3, #0
	blt _080424F8
	movs r0, #0
	mov r1, sl
	str r0, [r1, #4]
	mov r4, sb
	str r4, [r1, #8]
	mov r5, sl
	str r2, [r5, #0xc]
	str r3, [r5, #0x10]
	b _08042510
_080424F8:
	movs r0, #1
	mov r6, sl
	str r0, [r6, #4]
	mov r0, sb
	str r0, [r6, #8]
	adds r1, r3, #0
	adds r0, r2, #0
	bl sub_0804384C
	mov r2, sl
	str r0, [r2, #0xc]
	str r1, [r2, #0x10]
_08042510:
	mov r4, sl
	ldr r2, [r4, #0xc]
	ldr r3, [r4, #0x10]
	movs r0, #1
	rsbs r0, r0, #0
	asrs r1, r0, #0x1f
_0804251C:
	adds r2, r2, r0
	adcs r3, r1
	ldr r0, _08042558 @ =0x0FFFFFFF
	cmp r3, r0
	bhi _08042574
	cmp r3, r0
	bne _08042532
	movs r0, #2
	rsbs r0, r0, #0
	cmp r2, r0
	bhi _08042574
_08042532:
	mov r5, sl
	ldr r0, [r5, #0xc]
	ldr r1, [r5, #0x10]
	lsrs r3, r0, #0x1f
	lsls r2, r1, #1
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r0, #1
	mov r6, sl
	str r0, [r6, #0xc]
	str r1, [r6, #0x10]
	ldr r2, [r6, #8]
	subs r2, #1
	str r2, [r6, #8]
	movs r2, #1
	rsbs r2, r2, #0
	asrs r3, r2, #0x1f
	b _0804251C
	.align 2, 0
_08042558: .4byte 0x0FFFFFFF
_0804255C:
	mov r0, ip
	mov r1, sl
	str r0, [r1, #4]
	mov r2, sb
	str r2, [r1, #8]
	ldr r3, [sp]
	ldr r4, [sp, #4]
	adds r6, r6, r3
	adcs r7, r4
	mov r4, sl
	str r6, [r4, #0xc]
	str r7, [r4, #0x10]
_08042574:
	movs r0, #3
	mov r5, sl
	str r0, [r5]
	ldr r1, [r5, #0x10]
	ldr r0, _080425B8 @ =0x1FFFFFFF
	cmp r1, r0
	bls _080425AA
	ldr r4, [r5, #0xc]
	ldr r5, [r5, #0x10]
	movs r2, #1
	adds r0, r4, #0
	ands r0, r2
	movs r1, #0
	lsls r6, r5, #0x1f
	mov r8, r6
	lsrs r6, r4, #1
	mov r2, r8
	orrs r2, r6
	lsrs r3, r5, #1
	orrs r0, r2
	orrs r1, r3
	mov r2, sl
	str r0, [r2, #0xc]
	str r1, [r2, #0x10]
	ldr r0, [r2, #8]
	adds r0, #1
	str r0, [r2, #8]
_080425AA:
	mov r0, sl
_080425AC:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080425B8: .4byte 0x1FFFFFFF

	thumb_func_start sub_080425BC
sub_080425BC: @ 0x080425BC
	push {r4, lr}
	sub sp, #0x4c
	str r0, [sp, #0x3c]
	str r1, [sp, #0x40]
	str r2, [sp, #0x44]
	str r3, [sp, #0x48]
	add r0, sp, #0x3c
	mov r1, sp
	bl sub_08042278
	add r0, sp, #0x44
	add r4, sp, #0x14
	adds r1, r4, #0
	bl sub_08042278
	add r2, sp, #0x28
	mov r0, sp
	adds r1, r4, #0
	bl sub_08042350
	bl sub_08042130
	add sp, #0x4c
	pop {r4, pc}

	thumb_func_start sub_080425EC
sub_080425EC: @ 0x080425EC
	push {r4, lr}
	sub sp, #0x4c
	str r0, [sp, #0x3c]
	str r1, [sp, #0x40]
	str r2, [sp, #0x44]
	str r3, [sp, #0x48]
	add r0, sp, #0x3c
	mov r1, sp
	bl sub_08042278
	add r0, sp, #0x44
	add r4, sp, #0x14
	adds r1, r4, #0
	bl sub_08042278
	ldr r0, [r4, #4]
	movs r1, #1
	eors r0, r1
	str r0, [r4, #4]
	add r2, sp, #0x28
	mov r0, sp
	adds r1, r4, #0
	bl sub_08042350
	bl sub_08042130
	add sp, #0x4c
	pop {r4, pc}

	thumb_func_start sub_08042624
sub_08042624: @ 0x08042624
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x74
	str r0, [sp, #0x3c]
	str r1, [sp, #0x40]
	str r2, [sp, #0x44]
	str r3, [sp, #0x48]
	add r0, sp, #0x3c
	mov r1, sp
	bl sub_08042278
	add r0, sp, #0x44
	add r4, sp, #0x14
	adds r1, r4, #0
	bl sub_08042278
	mov r8, sp
	add r0, sp, #0x28
	mov sl, r0
	movs r0, #0
	ldr r1, [sp]
	cmp r1, #1
	bhi _0804265A
	movs r0, #1
_0804265A:
	cmp r0, #0
	bne _080426BE
	movs r2, #0
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bhi _08042668
	movs r2, #1
_08042668:
	cmp r2, #0
	beq _08042670
	ldr r0, [sp, #4]
	b _080426E0
_08042670:
	movs r2, #0
	cmp r1, #4
	bne _08042678
	movs r2, #1
_08042678:
	cmp r2, #0
	beq _0804268A
	movs r1, #0
	cmp r0, #2
	bne _08042684
	movs r1, #1
_08042684:
	cmp r1, #0
	bne _080426A2
	b _080426BE
_0804268A:
	movs r2, #0
	cmp r0, #4
	bne _08042692
	movs r2, #1
_08042692:
	cmp r2, #0
	beq _080426B2
	movs r0, #0
	cmp r1, #2
	bne _0804269E
	movs r0, #1
_0804269E:
	cmp r0, #0
	beq _080426AC
_080426A2:
	ldr r0, _080426A8 @ =gUnknown_0203C538
	b _080428AA
	.align 2, 0
_080426A8: .4byte gUnknown_0203C538
_080426AC:
	mov r1, r8
	ldr r0, [r1, #4]
	b _080426E0
_080426B2:
	movs r2, #0
	cmp r1, #2
	bne _080426BA
	movs r2, #1
_080426BA:
	cmp r2, #0
	beq _080426D0
_080426BE:
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x18]
	eors r0, r1
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	str r1, [sp, #4]
	mov r0, sp
	b _080428AA
_080426D0:
	movs r1, #0
	cmp r0, #2
	bne _080426D8
	movs r1, #1
_080426D8:
	cmp r1, #0
	beq _080426F0
	mov r2, r8
	ldr r0, [r2, #4]
_080426E0:
	ldr r1, [sp, #0x18]
	eors r0, r1
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	str r1, [sp, #0x18]
	adds r0, r4, #0
	b _080428AA
_080426F0:
	mov r4, r8
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x10]
	adds r6, r0, #0
	movs r7, #0
	str r1, [sp, #0x4c]
	movs r5, #0
	str r5, [sp, #0x50]
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x24]
	adds r4, r0, #0
	str r1, [sp, #0x54]
	movs r0, #0
	str r0, [sp, #0x58]
	adds r1, r5, #0
	adds r0, r4, #0
	adds r3, r7, #0
	adds r2, r6, #0
	bl sub_0803D93C
	str r0, [sp, #0x5c]
	str r1, [sp, #0x60]
	ldr r0, [sp, #0x54]
	ldr r1, [sp, #0x58]
	adds r3, r7, #0
	adds r2, r6, #0
	bl sub_0803D93C
	adds r7, r1, #0
	adds r6, r0, #0
	adds r1, r5, #0
	adds r0, r4, #0
	ldr r2, [sp, #0x4c]
	ldr r3, [sp, #0x50]
	bl sub_0803D93C
	adds r5, r1, #0
	adds r4, r0, #0
	ldr r0, [sp, #0x54]
	ldr r1, [sp, #0x58]
	ldr r2, [sp, #0x4c]
	ldr r3, [sp, #0x50]
	bl sub_0803D93C
	str r0, [sp, #0x64]
	str r1, [sp, #0x68]
	movs r1, #0
	movs r2, #0
	str r1, [sp, #0x6c]
	str r2, [sp, #0x70]
	adds r3, r7, #0
	adds r2, r6, #0
	adds r2, r2, r4
	adcs r3, r5
	cmp r7, r3
	bhi _08042768
	cmp r7, r3
	bne _08042770
	cmp r6, r2
	bls _08042770
_08042768:
	ldr r5, _080428C0 @ =0x00000001
	ldr r4, _080428BC @ =0x00000000
	str r4, [sp, #0x6c]
	str r5, [sp, #0x70]
_08042770:
	adds r1, r2, #0
	movs r6, #0
	adds r7, r1, #0
	ldr r0, [sp, #0x5c]
	ldr r1, [sp, #0x60]
	adds r6, r6, r0
	adcs r7, r1
	cmp r1, r7
	bhi _0804278C
	ldr r1, [sp, #0x60]
	cmp r1, r7
	bne _0804279C
	cmp r0, r6
	bls _0804279C
_0804278C:
	movs r0, #1
	movs r1, #0
	ldr r4, [sp, #0x6c]
	ldr r5, [sp, #0x70]
	adds r4, r4, r0
	adcs r5, r1
	str r4, [sp, #0x6c]
	str r5, [sp, #0x70]
_0804279C:
	adds r0, r3, #0
	adds r2, r0, #0
	movs r3, #0
	adds r5, r3, #0
	adds r4, r2, #0
	ldr r0, [sp, #0x64]
	ldr r1, [sp, #0x68]
	adds r4, r4, r0
	adcs r5, r1
	ldr r1, [sp, #0x6c]
	ldr r2, [sp, #0x70]
	adds r4, r4, r1
	adcs r5, r2
	mov r0, r8
	ldr r2, [r0, #8]
	ldr r0, [sp, #0x1c]
	adds r2, r2, r0
	str r2, [sp, #0x30]
	mov r0, r8
	ldr r1, [r0, #4]
	ldr r0, [sp, #0x18]
	eors r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	str r0, [sp, #0x2c]
	adds r2, #4
	str r2, [sp, #0x30]
	ldr r0, _080428C4 @ =0x1FFFFFFF
	cmp r5, r0
	bls _0804281E
	movs r1, #1
	mov sb, r1
	mov r8, r0
	mov ip, r2
_080427E2:
	movs r2, #1
	add ip, r2
	mov r0, sb
	ands r0, r4
	cmp r0, #0
	beq _08042808
	lsls r3, r7, #0x1f
	lsrs r2, r6, #1
	adds r0, r3, #0
	orrs r0, r2
	lsrs r1, r7, #1
	adds r7, r1, #0
	adds r6, r0, #0
	adds r0, r6, #0
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r1, r7
	adds r7, r1, #0
	adds r6, r0, #0
_08042808:
	lsls r3, r5, #0x1f
	lsrs r2, r4, #1
	adds r0, r3, #0
	orrs r0, r2
	lsrs r1, r5, #1
	adds r5, r1, #0
	adds r4, r0, #0
	cmp r5, r8
	bhi _080427E2
	mov r0, ip
	str r0, [sp, #0x30]
_0804281E:
	ldr r0, _080428C8 @ =0x0FFFFFFF
	cmp r5, r0
	bhi _08042870
	movs r1, #0x80
	lsls r1, r1, #0x18
	mov sb, r1
	mov r8, r0
	ldr r2, [sp, #0x30]
	mov ip, r2
_08042830:
	movs r0, #1
	rsbs r0, r0, #0
	add ip, r0
	lsrs r3, r4, #0x1f
	lsls r2, r5, #1
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r4, #1
	adds r5, r1, #0
	adds r4, r0, #0
	movs r0, #0
	mov r1, sb
	ands r1, r7
	orrs r0, r1
	cmp r0, #0
	beq _0804285A
	movs r0, #1
	orrs r0, r4
	adds r1, r5, #0
	adds r5, r1, #0
	adds r4, r0, #0
_0804285A:
	lsrs r3, r6, #0x1f
	lsls r2, r7, #1
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r6, #1
	adds r7, r1, #0
	adds r6, r0, #0
	cmp r5, r8
	bls _08042830
	mov r1, ip
	str r1, [sp, #0x30]
_08042870:
	movs r0, #0xff
	adds r1, r4, #0
	ands r1, r0
	movs r2, #0
	cmp r1, #0x80
	bne _0804289E
	cmp r2, #0
	bne _0804289E
	adds r0, #1
	adds r1, r4, #0
	ands r1, r0
	adds r0, r2, #0
	orrs r0, r1
	cmp r0, #0
	bne _08042896
	adds r0, r7, #0
	orrs r0, r6
	cmp r0, #0
	beq _0804289E
_08042896:
	movs r0, #0x80
	movs r1, #0
	adds r4, r4, r0
	adcs r5, r1
_0804289E:
	str r4, [sp, #0x34]
	str r5, [sp, #0x38]
	movs r0, #3
	mov r2, sl
	str r0, [r2]
	add r0, sp, #0x28
_080428AA:
	bl sub_08042130
	add sp, #0x74
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080428BC: .4byte 0x00000000
_080428C0: .4byte 0x00000001
_080428C4: .4byte 0x1FFFFFFF
_080428C8: .4byte 0x0FFFFFFF

	thumb_func_start sub_080428CC
sub_080428CC: @ 0x080428CC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x48
	str r0, [sp, #0x28]
	str r1, [sp, #0x2c]
	str r2, [sp, #0x30]
	str r3, [sp, #0x34]
	add r0, sp, #0x28
	mov r1, sp
	bl sub_08042278
	add r0, sp, #0x30
	add r4, sp, #0x14
	adds r1, r4, #0
	bl sub_08042278
	mov ip, sp
	movs r0, #0
	ldr r3, [sp]
	cmp r3, #1
	bhi _080428F6
	movs r0, #1
_080428F6:
	cmp r0, #0
	beq _080428FE
	mov r1, sp
	b _08042A40
_080428FE:
	movs r0, #0
	ldr r2, [sp, #0x14]
	adds r5, r2, #0
	cmp r2, #1
	bhi _0804290A
	movs r0, #1
_0804290A:
	cmp r0, #0
	beq _08042912
	adds r1, r4, #0
	b _08042A40
_08042912:
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x18]
	eors r0, r1
	str r0, [sp, #4]
	movs r0, #0
	cmp r3, #4
	bne _08042922
	movs r0, #1
_08042922:
	cmp r0, #0
	bne _08042932
	movs r4, #0
	cmp r3, #2
	bne _0804292E
	movs r4, #1
_0804292E:
	cmp r4, #0
	beq _08042944
_08042932:
	mov r1, ip
	ldr r0, [r1]
	cmp r0, r5
	beq _0804293C
	b _08042A40
_0804293C:
	ldr r1, _08042940 @ =gUnknown_0203C538
	b _08042A40
	.align 2, 0
_08042940: .4byte gUnknown_0203C538
_08042944:
	movs r0, #0
	cmp r2, #4
	bne _0804294C
	movs r0, #1
_0804294C:
	cmp r0, #0
	beq _0804295E
	movs r0, #0
	movs r1, #0
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	str r4, [sp, #8]
	mov r1, sp
	b _08042A40
_0804295E:
	movs r0, #0
	cmp r2, #2
	bne _08042966
	movs r0, #1
_08042966:
	cmp r0, #0
	beq _08042972
	movs r0, #4
	mov r2, ip
	str r0, [r2]
	b _08042A3E
_08042972:
	mov r3, ip
	ldr r1, [r3, #8]
	ldr r0, [sp, #0x1c]
	subs r6, r1, r0
	str r6, [r3, #8]
	ldr r4, [r3, #0xc]
	ldr r5, [r3, #0x10]
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x24]
	str r0, [sp, #0x38]
	str r1, [sp, #0x3c]
	cmp r1, r5
	bhi _08042996
	ldr r1, [sp, #0x3c]
	cmp r1, r5
	bne _080429AA
	cmp r0, r4
	bls _080429AA
_08042996:
	lsrs r3, r4, #0x1f
	lsls r2, r5, #1
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r4, #1
	adds r5, r1, #0
	adds r4, r0, #0
	subs r0, r6, #1
	mov r2, ip
	str r0, [r2, #8]
_080429AA:
	ldr r7, _08042A50 @ =0x10000000
	ldr r6, _08042A4C @ =0x00000000
	movs r0, #0
	movs r1, #0
	str r0, [sp, #0x40]
	str r1, [sp, #0x44]
_080429B6:
	ldr r1, [sp, #0x3c]
	cmp r1, r5
	bhi _080429DA
	cmp r1, r5
	bne _080429C6
	ldr r2, [sp, #0x38]
	cmp r2, r4
	bhi _080429DA
_080429C6:
	ldr r0, [sp, #0x40]
	orrs r0, r6
	ldr r1, [sp, #0x44]
	orrs r1, r7
	str r0, [sp, #0x40]
	str r1, [sp, #0x44]
	ldr r0, [sp, #0x38]
	ldr r1, [sp, #0x3c]
	subs r4, r4, r0
	sbcs r5, r1
_080429DA:
	lsls r3, r7, #0x1f
	lsrs r2, r6, #1
	adds r0, r3, #0
	orrs r0, r2
	lsrs r1, r7, #1
	adds r7, r1, #0
	adds r6, r0, #0
	lsrs r3, r4, #0x1f
	lsls r2, r5, #1
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r4, #1
	adds r5, r1, #0
	adds r4, r0, #0
	adds r0, r7, #0
	orrs r0, r6
	cmp r0, #0
	bne _080429B6
	movs r0, #0xff
	ldr r1, [sp, #0x40]
	ands r1, r0
	movs r2, #0
	cmp r1, #0x80
	bne _08042A34
	cmp r2, #0
	bne _08042A34
	adds r0, #1
	ldr r1, [sp, #0x40]
	ands r1, r0
	adds r0, r2, #0
	orrs r0, r1
	cmp r0, #0
	bne _08042A24
	adds r0, r5, #0
	orrs r0, r4
	cmp r0, #0
	beq _08042A34
_08042A24:
	movs r0, #0x80
	movs r1, #0
	ldr r2, [sp, #0x40]
	ldr r3, [sp, #0x44]
	adds r2, r2, r0
	adcs r3, r1
	str r2, [sp, #0x40]
	str r3, [sp, #0x44]
_08042A34:
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	mov r2, ip
	str r0, [r2, #0xc]
	str r1, [r2, #0x10]
_08042A3E:
	mov r1, ip
_08042A40:
	adds r0, r1, #0
	bl sub_08042130
	add sp, #0x48
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08042A4C: .4byte 0x00000000
_08042A50: .4byte 0x10000000

	thumb_func_start sub_08042A54
sub_08042A54: @ 0x08042A54
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	movs r0, #0
	ldr r1, [r5]
	cmp r1, #1
	bhi _08042A64
	movs r0, #1
_08042A64:
	cmp r0, #0
	bne _08042A76
	movs r0, #0
	ldr r2, [r6]
	cmp r2, #1
	bhi _08042A72
	movs r0, #1
_08042A72:
	cmp r0, #0
	beq _08042A7A
_08042A76:
	movs r0, #1
	b _08042B50
_08042A7A:
	movs r0, #0
	cmp r1, #4
	bne _08042A82
	movs r0, #1
_08042A82:
	cmp r0, #0
	beq _08042A9A
	movs r0, #0
	cmp r2, #4
	bne _08042A8E
	movs r0, #1
_08042A8E:
	cmp r0, #0
	beq _08042A9A
	ldr r0, [r6, #4]
	ldr r1, [r5, #4]
	subs r0, r0, r1
	b _08042B50
_08042A9A:
	movs r1, #0
	ldr r0, [r5]
	cmp r0, #4
	bne _08042AA4
	movs r1, #1
_08042AA4:
	cmp r1, #0
	bne _08042AF2
	movs r1, #0
	cmp r2, #4
	bne _08042AB0
	movs r1, #1
_08042AB0:
	cmp r1, #0
	beq _08042AC2
_08042AB4:
	ldr r0, [r6, #4]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, #0
	beq _08042AFC
	movs r1, #1
	b _08042AFC
_08042AC2:
	movs r1, #0
	cmp r0, #2
	bne _08042ACA
	movs r1, #1
_08042ACA:
	cmp r1, #0
	beq _08042ADA
	movs r1, #0
	cmp r2, #2
	bne _08042AD6
	movs r1, #1
_08042AD6:
	cmp r1, #0
	bne _08042B4E
_08042ADA:
	movs r1, #0
	cmp r0, #2
	bne _08042AE2
	movs r1, #1
_08042AE2:
	cmp r1, #0
	bne _08042AB4
	movs r0, #0
	cmp r2, #2
	bne _08042AEE
	movs r0, #1
_08042AEE:
	cmp r0, #0
	beq _08042B00
_08042AF2:
	ldr r0, [r5, #4]
	movs r1, #1
	cmp r0, #0
	beq _08042AFC
	subs r1, #2
_08042AFC:
	adds r0, r1, #0
	b _08042B50
_08042B00:
	ldr r0, [r6, #4]
	ldr r4, [r5, #4]
	cmp r4, r0
	beq _08042B12
_08042B08:
	movs r0, #1
	cmp r4, #0
	beq _08042B50
	subs r0, #2
	b _08042B50
_08042B12:
	ldr r1, [r5, #8]
	ldr r0, [r6, #8]
	cmp r1, r0
	bgt _08042B08
	cmp r1, r0
	bge _08042B2A
_08042B1E:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r4, #0
	beq _08042B50
	movs r0, #1
	b _08042B50
_08042B2A:
	ldr r3, [r5, #0x10]
	ldr r2, [r6, #0x10]
	cmp r3, r2
	bhi _08042B08
	cmp r3, r2
	bne _08042B3E
	ldr r1, [r5, #0xc]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	bhi _08042B08
_08042B3E:
	cmp r2, r3
	bhi _08042B1E
	cmp r2, r3
	bne _08042B4E
	ldr r1, [r6, #0xc]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	bhi _08042B1E
_08042B4E:
	movs r0, #0
_08042B50:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_08042B54
sub_08042B54: @ 0x08042B54
	push {r4, lr}
	sub sp, #0x38
	str r0, [sp, #0x28]
	str r1, [sp, #0x2c]
	str r2, [sp, #0x30]
	str r3, [sp, #0x34]
	add r0, sp, #0x28
	mov r1, sp
	bl sub_08042278
	add r0, sp, #0x30
	add r4, sp, #0x14
	adds r1, r4, #0
	bl sub_08042278
	mov r0, sp
	adds r1, r4, #0
	bl sub_08042A54
	add sp, #0x38
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08042B80
sub_08042B80: @ 0x08042B80
	push {r4, lr}
	sub sp, #0x38
	str r0, [sp, #0x28]
	str r1, [sp, #0x2c]
	str r2, [sp, #0x30]
	str r3, [sp, #0x34]
	add r0, sp, #0x28
	mov r1, sp
	bl sub_08042278
	add r0, sp, #0x30
	add r4, sp, #0x14
	adds r1, r4, #0
	bl sub_08042278
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _08042BA8
	movs r1, #1
_08042BA8:
	cmp r1, #0
	bne _08042BBA
	movs r1, #0
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bhi _08042BB6
	movs r1, #1
_08042BB6:
	cmp r1, #0
	beq _08042BBE
_08042BBA:
	movs r0, #1
	b _08042BC6
_08042BBE:
	mov r0, sp
	adds r1, r4, #0
	bl sub_08042A54
_08042BC6:
	add sp, #0x38
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08042BCC
sub_08042BCC: @ 0x08042BCC
	push {r4, lr}
	sub sp, #0x38
	str r0, [sp, #0x28]
	str r1, [sp, #0x2c]
	str r2, [sp, #0x30]
	str r3, [sp, #0x34]
	add r0, sp, #0x28
	mov r1, sp
	bl sub_08042278
	add r0, sp, #0x30
	add r4, sp, #0x14
	adds r1, r4, #0
	bl sub_08042278
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _08042BF4
	movs r1, #1
_08042BF4:
	cmp r1, #0
	bne _08042C06
	movs r1, #0
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bhi _08042C02
	movs r1, #1
_08042C02:
	cmp r1, #0
	beq _08042C0A
_08042C06:
	movs r0, #1
	b _08042C12
_08042C0A:
	mov r0, sp
	adds r1, r4, #0
	bl sub_08042A54
_08042C12:
	add sp, #0x38
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08042C18
sub_08042C18: @ 0x08042C18
	push {r4, lr}
	sub sp, #0x38
	str r0, [sp, #0x28]
	str r1, [sp, #0x2c]
	str r2, [sp, #0x30]
	str r3, [sp, #0x34]
	add r0, sp, #0x28
	mov r1, sp
	bl sub_08042278
	add r0, sp, #0x30
	add r4, sp, #0x14
	adds r1, r4, #0
	bl sub_08042278
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _08042C40
	movs r1, #1
_08042C40:
	cmp r1, #0
	bne _08042C52
	movs r1, #0
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bhi _08042C4E
	movs r1, #1
_08042C4E:
	cmp r1, #0
	beq _08042C58
_08042C52:
	movs r0, #1
	rsbs r0, r0, #0
	b _08042C60
_08042C58:
	mov r0, sp
	adds r1, r4, #0
	bl sub_08042A54
_08042C60:
	add sp, #0x38
	pop {r4, pc}

	thumb_func_start sub_08042C64
sub_08042C64: @ 0x08042C64
	push {r4, lr}
	sub sp, #0x38
	str r0, [sp, #0x28]
	str r1, [sp, #0x2c]
	str r2, [sp, #0x30]
	str r3, [sp, #0x34]
	add r0, sp, #0x28
	mov r1, sp
	bl sub_08042278
	add r0, sp, #0x30
	add r4, sp, #0x14
	adds r1, r4, #0
	bl sub_08042278
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _08042C8C
	movs r1, #1
_08042C8C:
	cmp r1, #0
	bne _08042C9E
	movs r1, #0
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bhi _08042C9A
	movs r1, #1
_08042C9A:
	cmp r1, #0
	beq _08042CA4
_08042C9E:
	movs r0, #1
	rsbs r0, r0, #0
	b _08042CAC
_08042CA4:
	mov r0, sp
	adds r1, r4, #0
	bl sub_08042A54
_08042CAC:
	add sp, #0x38
	pop {r4, pc}

	thumb_func_start sub_08042CB0
sub_08042CB0: @ 0x08042CB0
	push {r4, lr}
	sub sp, #0x38
	str r0, [sp, #0x28]
	str r1, [sp, #0x2c]
	str r2, [sp, #0x30]
	str r3, [sp, #0x34]
	add r0, sp, #0x28
	mov r1, sp
	bl sub_08042278
	add r0, sp, #0x30
	add r4, sp, #0x14
	adds r1, r4, #0
	bl sub_08042278
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _08042CD8
	movs r1, #1
_08042CD8:
	cmp r1, #0
	bne _08042CEA
	movs r1, #0
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bhi _08042CE6
	movs r1, #1
_08042CE6:
	cmp r1, #0
	beq _08042CEE
_08042CEA:
	movs r0, #1
	b _08042CF6
_08042CEE:
	mov r0, sp
	adds r1, r4, #0
	bl sub_08042A54
_08042CF6:
	add sp, #0x38
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08042CFC
sub_08042CFC: @ 0x08042CFC
	push {r4, lr}
	sub sp, #0x38
	str r0, [sp, #0x28]
	str r1, [sp, #0x2c]
	str r2, [sp, #0x30]
	str r3, [sp, #0x34]
	add r0, sp, #0x28
	mov r1, sp
	bl sub_08042278
	add r0, sp, #0x30
	add r4, sp, #0x14
	adds r1, r4, #0
	bl sub_08042278
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _08042D24
	movs r1, #1
_08042D24:
	cmp r1, #0
	bne _08042D36
	movs r1, #0
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bhi _08042D32
	movs r1, #1
_08042D32:
	cmp r1, #0
	beq _08042D3A
_08042D36:
	movs r0, #1
	b _08042D42
_08042D3A:
	mov r0, sp
	adds r1, r4, #0
	bl sub_08042A54
_08042D42:
	add sp, #0x38
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08042D48
sub_08042D48: @ 0x08042D48
	push {r4, r5, lr}
	sub sp, #0x14
	adds r2, r0, #0
	movs r0, #3
	str r0, [sp]
	lsrs r1, r2, #0x1f
	str r1, [sp, #4]
	cmp r2, #0
	bne _08042D60
	movs r0, #2
	str r0, [sp]
	b _08042DB6
_08042D60:
	movs r0, #0x3c
	str r0, [sp, #8]
	cmp r1, #0
	beq _08042D86
	movs r0, #0x80
	lsls r0, r0, #0x18
	cmp r2, r0
	bne _08042D80
	ldr r1, _08042D7C @ =0x00000000
	ldr r0, _08042D78 @ =0xC1E00000
	b _08042DBC
	.align 2, 0
_08042D78: .4byte 0xC1E00000
_08042D7C: .4byte 0x00000000
_08042D80:
	rsbs r0, r2, #0
	asrs r1, r0, #0x1f
	b _08042D8A
_08042D86:
	adds r0, r2, #0
	asrs r1, r2, #0x1f
_08042D8A:
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	ldr r0, [sp, #0x10]
	ldr r1, _08042DC0 @ =0x0FFFFFFF
	cmp r0, r1
	bhi _08042DB6
	adds r5, r1, #0
	ldr r4, [sp, #8]
_08042D9A:
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	lsrs r3, r0, #0x1f
	lsls r2, r1, #1
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r0, #1
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	subs r4, #1
	ldr r0, [sp, #0x10]
	cmp r0, r5
	bls _08042D9A
	str r4, [sp, #8]
_08042DB6:
	mov r0, sp
	bl sub_08042130
_08042DBC:
	add sp, #0x14
	pop {r4, r5, pc}
	.align 2, 0
_08042DC0: .4byte 0x0FFFFFFF

	thumb_func_start sub_08042DC4
sub_08042DC4: @ 0x08042DC4
	push {lr}
	sub sp, #0x1c
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	add r0, sp, #0x14
	mov r1, sp
	bl sub_08042278
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #2
	bne _08042DDE
	movs r1, #1
_08042DDE:
	cmp r1, #0
	bne _08042E12
	movs r1, #0
	cmp r0, #1
	bhi _08042DEA
	movs r1, #1
_08042DEA:
	cmp r1, #0
	bne _08042E12
	movs r1, #0
	cmp r0, #4
	bne _08042DF6
	movs r1, #1
_08042DF6:
	cmp r1, #0
	beq _08042E0C
_08042DFA:
	ldr r0, [sp, #4]
	ldr r1, _08042E08 @ =0x7FFFFFFF
	cmp r0, #0
	beq _08042E30
	adds r1, #1
	b _08042E30
	.align 2, 0
_08042E08: .4byte 0x7FFFFFFF
_08042E0C:
	ldr r0, [sp, #8]
	cmp r0, #0
	bge _08042E16
_08042E12:
	movs r0, #0
	b _08042E32
_08042E16:
	cmp r0, #0x1e
	bgt _08042DFA
	movs r2, #0x3c
	subs r2, r2, r0
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	bl sub_08043818
	adds r1, r0, #0
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _08042E30
	rsbs r1, r1, #0
_08042E30:
	adds r0, r1, #0
_08042E32:
	add sp, #0x1c
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08042E38
sub_08042E38: @ 0x08042E38
	push {lr}
	sub sp, #0x1c
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	add r0, sp, #0x14
	mov r1, sp
	bl sub_08042278
	movs r1, #0
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _08042E52
	movs r1, #1
_08042E52:
	str r1, [sp, #4]
	mov r0, sp
	bl sub_08042130
	add sp, #0x1c
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08042E60
sub_08042E60: @ 0x08042E60
	sub sp, #4
	push {r4, lr}
	sub sp, #0x14
	str r3, [sp, #0x1c]
	ldr r3, [sp, #0x1c]
	ldr r4, [sp, #0x20]
	str r0, [sp]
	str r1, [sp, #4]
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	str r4, [sp, #0x10]
	mov r0, sp
	bl sub_08042130
	add sp, #0x14
	pop {r4}
	pop {r3}
	add sp, #4
	bx r3
	.align 2, 0

	thumb_func_start sub_08042E88
sub_08042E88: @ 0x08042E88
	push {r4, r5, lr}
	sub sp, #0x1c
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	add r0, sp, #0x14
	mov r1, sp
	bl sub_08042278
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x10]
	lsls r5, r3, #2
	lsrs r4, r2, #0x1e
	adds r0, r5, #0
	orrs r0, r4
	adds r5, r0, #0
	ldr r4, _08042EC8 @ =0x3FFFFFFF
	adds r0, r2, #0
	ands r0, r4
	movs r1, #0
	orrs r0, r1
	cmp r0, #0
	beq _08042EB8
	movs r0, #1
	orrs r5, r0
_08042EB8:
	ldr r0, [sp]
	ldr r1, [sp, #4]
	ldr r2, [sp, #8]
	adds r3, r5, #0
	bl sub_080437D4
	add sp, #0x1c
	pop {r4, r5, pc}
	.align 2, 0
_08042EC8: .4byte 0x3FFFFFFF

	thumb_func_start sub_08042ECC
sub_08042ECC: @ 0x08042ECC
	push {r4, r5, r6, lr}
	ldr r2, [r0, #0xc]
	ldr r6, [r0, #4]
	movs r5, #0
	movs r1, #0
	ldr r3, [r0]
	cmp r3, #1
	bhi _08042EDE
	movs r1, #1
_08042EDE:
	cmp r1, #0
	beq _08042EEC
	movs r5, #0xff
	movs r0, #0x80
	lsls r0, r0, #0xd
	orrs r2, r0
	b _08042F52
_08042EEC:
	movs r1, #0
	cmp r3, #4
	bne _08042EF4
	movs r1, #1
_08042EF4:
	cmp r1, #0
	bne _08042F28
	movs r1, #0
	cmp r3, #2
	bne _08042F00
	movs r1, #1
_08042F00:
	cmp r1, #0
	beq _08042F08
	movs r2, #0
	b _08042F52
_08042F08:
	cmp r2, #0
	beq _08042F52
	ldr r0, [r0, #8]
	movs r3, #0x7e
	rsbs r3, r3, #0
	cmp r0, r3
	bge _08042F24
	subs r0, r3, r0
	cmp r0, #0x19
	ble _08042F20
	movs r2, #0
	b _08042F50
_08042F20:
	lsrs r2, r0
	b _08042F50
_08042F24:
	cmp r0, #0x7f
	ble _08042F2E
_08042F28:
	movs r5, #0xff
	movs r2, #0
	b _08042F52
_08042F2E:
	adds r5, r0, #0
	adds r5, #0x7f
	movs r0, #0x7f
	ands r0, r2
	cmp r0, #0x40
	bne _08042F46
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	beq _08042F48
	adds r2, #0x40
	b _08042F48
_08042F46:
	adds r2, #0x3f
_08042F48:
	cmp r2, #0
	bge _08042F50
	lsrs r2, r2, #1
	adds r5, #1
_08042F50:
	lsrs r2, r2, #7
_08042F52:
	ldr r0, _08042F74 @ =0x007FFFFF
	ands r2, r0
	ldr r0, _08042F78 @ =0xFF800000
	ands r4, r0
	orrs r4, r2
	movs r0, #0xff
	ands r5, r0
	lsls r1, r5, #0x17
	ldr r0, _08042F7C @ =0x807FFFFF
	ands r4, r0
	orrs r4, r1
	lsls r1, r6, #0x1f
	ldr r0, _08042F80 @ =0x7FFFFFFF
	ands r4, r0
	orrs r4, r1
	adds r0, r4, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_08042F74: .4byte 0x007FFFFF
_08042F78: .4byte 0xFF800000
_08042F7C: .4byte 0x807FFFFF
_08042F80: .4byte 0x7FFFFFFF

	thumb_func_start sub_08042F84
sub_08042F84: @ 0x08042F84
	push {r4, lr}
	adds r3, r1, #0
	ldr r0, [r0]
	lsls r1, r0, #9
	lsrs r2, r1, #9
	lsls r1, r0, #1
	lsrs r1, r1, #0x18
	lsrs r0, r0, #0x1f
	str r0, [r3, #4]
	cmp r1, #0
	bne _08042FC8
	cmp r2, #0
	bne _08042FA4
	movs r0, #2
	str r0, [r3]
	b _08042FFC
_08042FA4:
	adds r4, r1, #0
	subs r4, #0x7e
	str r4, [r3, #8]
	lsls r2, r2, #7
	movs r0, #3
	str r0, [r3]
	ldr r1, _08042FC4 @ =0x3FFFFFFF
	cmp r2, r1
	bhi _08042FE4
	adds r0, r4, #0
_08042FB8:
	lsls r2, r2, #1
	subs r0, #1
	cmp r2, r1
	bls _08042FB8
	str r0, [r3, #8]
	b _08042FE4
	.align 2, 0
_08042FC4: .4byte 0x3FFFFFFF
_08042FC8:
	cmp r1, #0xff
	bne _08042FE8
	cmp r2, #0
	bne _08042FD6
	movs r0, #4
	str r0, [r3]
	b _08042FFC
_08042FD6:
	movs r0, #0x80
	lsls r0, r0, #0xd
	ands r0, r2
	cmp r0, #0
	beq _08042FE2
	movs r0, #1
_08042FE2:
	str r0, [r3]
_08042FE4:
	str r2, [r3, #0xc]
	b _08042FFC
_08042FE8:
	adds r0, r1, #0
	subs r0, #0x7f
	str r0, [r3, #8]
	movs r0, #3
	str r0, [r3]
	lsls r0, r2, #7
	movs r1, #0x80
	lsls r1, r1, #0x17
	orrs r0, r1
	str r0, [r3, #0xc]
_08042FFC:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08043000
sub_08043000: @ 0x08043000
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	adds r7, r1, #0
	adds r5, r2, #0
	movs r0, #0
	ldr r2, [r6]
	cmp r2, #1
	bhi _08043016
	movs r0, #1
_08043016:
	cmp r0, #0
	beq _0804301E
_0804301A:
	adds r0, r6, #0
	b _08043174
_0804301E:
	movs r1, #0
	ldr r0, [r7]
	cmp r0, #1
	bhi _08043028
	movs r1, #1
_08043028:
	cmp r1, #0
	bne _0804309C
	movs r1, #0
	cmp r2, #4
	bne _08043034
	movs r1, #1
_08043034:
	cmp r1, #0
	beq _08043054
	movs r1, #0
	cmp r0, #4
	bne _08043040
	movs r1, #1
_08043040:
	cmp r1, #0
	beq _0804301A
	ldr r1, [r6, #4]
	ldr r0, [r7, #4]
	cmp r1, r0
	beq _0804301A
	ldr r0, _08043050 @ =gUnknown_0203C550
	b _08043174
	.align 2, 0
_08043050: .4byte gUnknown_0203C550
_08043054:
	movs r1, #0
	cmp r0, #4
	bne _0804305C
	movs r1, #1
_0804305C:
	cmp r1, #0
	bne _0804309C
	movs r1, #0
	cmp r0, #2
	bne _08043068
	movs r1, #1
_08043068:
	cmp r1, #0
	beq _0804308E
	movs r0, #0
	cmp r2, #2
	bne _08043074
	movs r0, #1
_08043074:
	cmp r0, #0
	beq _0804301A
	adds r1, r5, #0
	adds r0, r6, #0
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldr r0, [r0]
	str r0, [r1]
	ldr r0, [r6, #4]
	ldr r1, [r7, #4]
	ands r0, r1
	str r0, [r5, #4]
	b _08043172
_0804308E:
	movs r1, #0
	ldr r0, [r6]
	cmp r0, #2
	bne _08043098
	movs r1, #1
_08043098:
	cmp r1, #0
	beq _080430A0
_0804309C:
	adds r0, r7, #0
	b _08043174
_080430A0:
	ldr r1, [r6, #8]
	ldr r3, [r7, #8]
	ldr r2, [r6, #0xc]
	ldr r4, [r7, #0xc]
	subs r0, r1, r3
	cmp r0, #0
	bge _080430B0
	rsbs r0, r0, #0
_080430B0:
	cmp r0, #0x1f
	bgt _080430F4
	ldr r6, [r6, #4]
	ldr r7, [r7, #4]
	mov r8, r7
	cmp r1, r3
	ble _080430D6
	movs r7, #1
	mov ip, r7
	subs r3, r1, r3
_080430C4:
	subs r3, #1
	adds r0, r4, #0
	mov r7, ip
	ands r0, r7
	lsrs r4, r4, #1
	orrs r4, r0
	cmp r3, #0
	bne _080430C4
	adds r3, r1, #0
_080430D6:
	cmp r3, r1
	ble _08043106
	movs r0, #1
	mov ip, r0
	subs r1, r3, r1
_080430E0:
	subs r1, #1
	adds r0, r2, #0
	mov r7, ip
	ands r0, r7
	lsrs r2, r2, #1
	orrs r2, r0
	cmp r1, #0
	bne _080430E0
	adds r1, r3, #0
	b _08043106
_080430F4:
	cmp r1, r3
	ble _080430FC
	movs r4, #0
	b _08043100
_080430FC:
	adds r1, r3, #0
	movs r2, #0
_08043100:
	ldr r6, [r6, #4]
	ldr r7, [r7, #4]
	mov r8, r7
_08043106:
	cmp r6, r8
	beq _08043150
	cmp r6, #0
	beq _08043112
	subs r3, r4, r2
	b _08043114
_08043112:
	subs r3, r2, r4
_08043114:
	cmp r3, #0
	blt _08043122
	movs r0, #0
	str r0, [r5, #4]
	str r1, [r5, #8]
	str r3, [r5, #0xc]
	b _0804312C
_08043122:
	movs r0, #1
	str r0, [r5, #4]
	str r1, [r5, #8]
	rsbs r0, r3, #0
	str r0, [r5, #0xc]
_0804312C:
	ldr r1, [r5, #0xc]
	subs r0, r1, #1
	ldr r2, _0804314C @ =0x3FFFFFFE
	cmp r0, r2
	bhi _08043158
_08043136:
	lsls r0, r1, #1
	str r0, [r5, #0xc]
	ldr r1, [r5, #8]
	subs r1, #1
	str r1, [r5, #8]
	adds r1, r0, #0
	subs r0, r1, #1
	cmp r0, r2
	bls _08043136
	b _08043158
	.align 2, 0
_0804314C: .4byte 0x3FFFFFFE
_08043150:
	str r6, [r5, #4]
	str r1, [r5, #8]
	adds r0, r2, r4
	str r0, [r5, #0xc]
_08043158:
	movs r0, #3
	str r0, [r5]
	ldr r1, [r5, #0xc]
	cmp r1, #0
	bge _08043172
	movs r0, #1
	ands r0, r1
	lsrs r1, r1, #1
	orrs r0, r1
	str r0, [r5, #0xc]
	ldr r0, [r5, #8]
	adds r0, #1
	str r0, [r5, #8]
_08043172:
	adds r0, r5, #0
_08043174:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_0804317C
sub_0804317C: @ 0x0804317C
	push {r4, lr}
	sub sp, #0x38
	str r0, [sp, #0x30]
	str r1, [sp, #0x34]
	add r0, sp, #0x30
	mov r1, sp
	bl sub_08042F84
	add r0, sp, #0x34
	add r4, sp, #0x10
	adds r1, r4, #0
	bl sub_08042F84
	add r2, sp, #0x20
	mov r0, sp
	adds r1, r4, #0
	bl sub_08043000
	bl sub_08042ECC
	add sp, #0x38
	pop {r4, pc}

	thumb_func_start sub_080431A8
sub_080431A8: @ 0x080431A8
	push {r4, lr}
	sub sp, #0x38
	str r0, [sp, #0x30]
	str r1, [sp, #0x34]
	add r0, sp, #0x30
	mov r1, sp
	bl sub_08042F84
	add r0, sp, #0x34
	add r4, sp, #0x10
	adds r1, r4, #0
	bl sub_08042F84
	ldr r0, [r4, #4]
	movs r1, #1
	eors r0, r1
	str r0, [r4, #4]
	add r2, sp, #0x20
	mov r0, sp
	adds r1, r4, #0
	bl sub_08043000
	bl sub_08042ECC
	add sp, #0x38
	pop {r4, pc}

	thumb_func_start sub_080431DC
sub_080431DC: @ 0x080431DC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x38
	str r0, [sp, #0x30]
	str r1, [sp, #0x34]
	add r0, sp, #0x30
	mov r1, sp
	bl sub_08042F84
	add r0, sp, #0x34
	add r4, sp, #0x10
	adds r1, r4, #0
	bl sub_08042F84
	mov r7, sp
	add r0, sp, #0x20
	mov r8, r0
	movs r0, #0
	ldr r1, [sp]
	mov sb, r8
	cmp r1, #1
	bhi _0804320E
	movs r0, #1
_0804320E:
	cmp r0, #0
	bne _0804326C
	movs r2, #0
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bhi _0804321C
	movs r2, #1
_0804321C:
	cmp r2, #0
	beq _08043224
	ldr r0, [sp, #4]
	b _0804328C
_08043224:
	movs r2, #0
	cmp r1, #4
	bne _0804322C
	movs r2, #1
_0804322C:
	cmp r2, #0
	beq _0804323E
	movs r1, #0
	cmp r0, #2
	bne _08043238
	movs r1, #1
_08043238:
	cmp r1, #0
	bne _08043256
	b _0804326C
_0804323E:
	movs r2, #0
	cmp r0, #4
	bne _08043246
	movs r2, #1
_08043246:
	cmp r2, #0
	beq _08043260
	movs r0, #0
	cmp r1, #2
	bne _08043252
	movs r0, #1
_08043252:
	cmp r0, #0
	beq _0804328A
_08043256:
	ldr r0, _0804325C @ =gUnknown_0203C550
	b _0804332E
	.align 2, 0
_0804325C: .4byte gUnknown_0203C550
_08043260:
	movs r2, #0
	cmp r1, #2
	bne _08043268
	movs r2, #1
_08043268:
	cmp r2, #0
	beq _0804327E
_0804326C:
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x14]
	eors r0, r1
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	str r1, [sp, #4]
	mov r0, sp
	b _0804332E
_0804327E:
	movs r1, #0
	cmp r0, #2
	bne _08043286
	movs r1, #1
_08043286:
	cmp r1, #0
	beq _0804329C
_0804328A:
	ldr r0, [r7, #4]
_0804328C:
	ldr r1, [sp, #0x14]
	eors r0, r1
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	str r1, [sp, #0x14]
	adds r0, r4, #0
	b _0804332E
_0804329C:
	ldr r0, [r7, #0xc]
	movs r1, #0
	ldr r2, [sp, #0x1c]
	movs r3, #0
	bl sub_0803D93C
	adds r2, r1, #0
	adds r5, r2, #0
	adds r6, r0, #0
	ldr r4, [r7, #8]
	ldr r0, [sp, #0x18]
	adds r4, r4, r0
	str r4, [sp, #0x28]
	ldr r1, [r7, #4]
	ldr r0, [sp, #0x14]
	eors r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	str r0, [sp, #0x24]
	adds r4, #2
	str r4, [sp, #0x28]
	cmp r2, #0
	bge _080432E8
	movs r2, #1
	movs r1, #0x80
	lsls r1, r1, #0x18
_080432D2:
	adds r4, #1
	adds r0, r5, #0
	ands r0, r2
	cmp r0, #0
	beq _080432E0
	lsrs r6, r6, #1
	orrs r6, r1
_080432E0:
	lsrs r5, r5, #1
	cmp r5, #0
	blt _080432D2
	str r4, [sp, #0x28]
_080432E8:
	ldr r0, _0804333C @ =0x3FFFFFFF
	cmp r5, r0
	bhi _0804330E
	movs r4, #0x80
	lsls r4, r4, #0x18
	movs r3, #1
	adds r2, r0, #0
	ldr r1, [sp, #0x28]
_080432F8:
	subs r1, #1
	lsls r5, r5, #1
	adds r0, r6, #0
	ands r0, r4
	cmp r0, #0
	beq _08043306
	orrs r5, r3
_08043306:
	lsls r6, r6, #1
	cmp r5, r2
	bls _080432F8
	str r1, [sp, #0x28]
_0804330E:
	movs r0, #0x7f
	ands r0, r5
	cmp r0, #0x40
	bne _08043324
	movs r0, #0x80
	ands r0, r5
	cmp r0, #0
	bne _08043322
	cmp r6, #0
	beq _08043324
_08043322:
	adds r5, #0x40
_08043324:
	str r5, [sp, #0x2c]
	movs r0, #3
	mov r1, r8
	str r0, [r1]
	mov r0, sb
_0804332E:
	bl sub_08042ECC
	add sp, #0x38
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0804333C: .4byte 0x3FFFFFFF

	thumb_func_start sub_08043340
sub_08043340: @ 0x08043340
	push {r4, r5, r6, lr}
	sub sp, #0x28
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	add r0, sp, #0x20
	mov r1, sp
	bl sub_08042F84
	add r0, sp, #0x24
	add r5, sp, #0x10
	adds r1, r5, #0
	bl sub_08042F84
	mov r4, sp
	movs r0, #0
	ldr r3, [sp]
	cmp r3, #1
	bhi _08043366
	movs r0, #1
_08043366:
	cmp r0, #0
	beq _0804336E
	mov r1, sp
	b _08043420
_0804336E:
	movs r0, #0
	ldr r2, [sp, #0x10]
	adds r6, r2, #0
	cmp r2, #1
	bhi _0804337A
	movs r0, #1
_0804337A:
	cmp r0, #0
	beq _08043382
	adds r1, r5, #0
	b _08043420
_08043382:
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x14]
	eors r0, r1
	str r0, [sp, #4]
	movs r0, #0
	cmp r3, #4
	bne _08043392
	movs r0, #1
_08043392:
	cmp r0, #0
	bne _080433A2
	movs r0, #0
	cmp r3, #2
	bne _0804339E
	movs r0, #1
_0804339E:
	cmp r0, #0
	beq _080433B4
_080433A2:
	ldr r0, [r4]
	adds r1, r4, #0
	cmp r0, r6
	bne _08043420
	ldr r1, _080433B0 @ =gUnknown_0203C550
	b _08043420
	.align 2, 0
_080433B0: .4byte gUnknown_0203C550
_080433B4:
	movs r1, #0
	cmp r2, #4
	bne _080433BC
	movs r1, #1
_080433BC:
	cmp r1, #0
	beq _080433C8
	str r0, [sp, #0xc]
	str r0, [sp, #8]
	mov r1, sp
	b _08043420
_080433C8:
	movs r0, #0
	cmp r2, #2
	bne _080433D0
	movs r0, #1
_080433D0:
	cmp r0, #0
	beq _080433DA
	movs r0, #4
	str r0, [r4]
	b _0804341E
_080433DA:
	ldr r1, [r4, #8]
	ldr r0, [sp, #0x18]
	subs r0, r1, r0
	str r0, [r4, #8]
	ldr r2, [r4, #0xc]
	ldr r3, [sp, #0x1c]
	cmp r2, r3
	bhs _080433F0
	lsls r2, r2, #1
	subs r0, #1
	str r0, [r4, #8]
_080433F0:
	movs r0, #0x80
	lsls r0, r0, #0x17
	movs r1, #0
_080433F6:
	cmp r2, r3
	blo _080433FE
	orrs r1, r0
	subs r2, r2, r3
_080433FE:
	lsrs r0, r0, #1
	lsls r2, r2, #1
	cmp r0, #0
	bne _080433F6
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0x40
	bne _0804341C
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0804341A
	cmp r2, #0
	beq _0804341C
_0804341A:
	adds r1, #0x40
_0804341C:
	str r1, [r4, #0xc]
_0804341E:
	adds r1, r4, #0
_08043420:
	adds r0, r1, #0
	bl sub_08042ECC
	add sp, #0x28
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_0804342C
sub_0804342C: @ 0x0804342C
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	ldr r2, [r4]
	cmp r2, #1
	bhi _0804343A
	movs r0, #1
_0804343A:
	cmp r0, #0
	bne _0804344C
	movs r0, #0
	ldr r3, [r1]
	cmp r3, #1
	bhi _08043448
	movs r0, #1
_08043448:
	cmp r0, #0
	beq _08043450
_0804344C:
	movs r0, #1
	b _0804350E
_08043450:
	movs r0, #0
	cmp r2, #4
	bne _08043458
	movs r0, #1
_08043458:
	cmp r0, #0
	beq _08043470
	movs r0, #0
	cmp r3, #4
	bne _08043464
	movs r0, #1
_08043464:
	cmp r0, #0
	beq _08043470
	ldr r0, [r1, #4]
	ldr r1, [r4, #4]
	subs r0, r0, r1
	b _0804350E
_08043470:
	movs r2, #0
	ldr r0, [r4]
	cmp r0, #4
	bne _0804347A
	movs r2, #1
_0804347A:
	cmp r2, #0
	bne _080434C8
	movs r2, #0
	cmp r3, #4
	bne _08043486
	movs r2, #1
_08043486:
	cmp r2, #0
	beq _08043498
_0804348A:
	ldr r0, [r1, #4]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, #0
	beq _080434D2
	movs r1, #1
	b _080434D2
_08043498:
	movs r2, #0
	cmp r0, #2
	bne _080434A0
	movs r2, #1
_080434A0:
	cmp r2, #0
	beq _080434B0
	movs r2, #0
	cmp r3, #2
	bne _080434AC
	movs r2, #1
_080434AC:
	cmp r2, #0
	bne _0804350C
_080434B0:
	movs r2, #0
	cmp r0, #2
	bne _080434B8
	movs r2, #1
_080434B8:
	cmp r2, #0
	bne _0804348A
	movs r0, #0
	cmp r3, #2
	bne _080434C4
	movs r0, #1
_080434C4:
	cmp r0, #0
	beq _080434D6
_080434C8:
	ldr r0, [r4, #4]
	movs r1, #1
	cmp r0, #0
	beq _080434D2
	subs r1, #2
_080434D2:
	adds r0, r1, #0
	b _0804350E
_080434D6:
	ldr r3, [r4, #4]
	ldr r0, [r1, #4]
	cmp r3, r0
	beq _080434E8
_080434DE:
	movs r0, #1
	cmp r3, #0
	beq _0804350E
	subs r0, #2
	b _0804350E
_080434E8:
	ldr r2, [r4, #8]
	ldr r0, [r1, #8]
	cmp r2, r0
	bgt _080434DE
	cmp r2, r0
	bge _08043500
_080434F4:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r3, #0
	beq _0804350E
	movs r0, #1
	b _0804350E
_08043500:
	ldr r0, [r4, #0xc]
	ldr r1, [r1, #0xc]
	cmp r0, r1
	bhi _080434DE
	cmp r0, r1
	blo _080434F4
_0804350C:
	movs r0, #0
_0804350E:
	pop {r4, pc}

	thumb_func_start sub_08043510
sub_08043510: @ 0x08043510
	push {r4, lr}
	sub sp, #0x28
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	add r0, sp, #0x20
	mov r1, sp
	bl sub_08042F84
	add r0, sp, #0x24
	add r4, sp, #0x10
	adds r1, r4, #0
	bl sub_08042F84
	mov r0, sp
	adds r1, r4, #0
	bl sub_0804342C
	add sp, #0x28
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08043538
sub_08043538: @ 0x08043538
	push {r4, lr}
	sub sp, #0x28
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	add r0, sp, #0x20
	mov r1, sp
	bl sub_08042F84
	add r0, sp, #0x24
	add r4, sp, #0x10
	adds r1, r4, #0
	bl sub_08042F84
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _0804355C
	movs r1, #1
_0804355C:
	cmp r1, #0
	bne _0804356E
	movs r1, #0
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bhi _0804356A
	movs r1, #1
_0804356A:
	cmp r1, #0
	beq _08043572
_0804356E:
	movs r0, #1
	b _0804357A
_08043572:
	mov r0, sp
	adds r1, r4, #0
	bl sub_0804342C
_0804357A:
	add sp, #0x28
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08043580
sub_08043580: @ 0x08043580
	push {r4, lr}
	sub sp, #0x28
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	add r0, sp, #0x20
	mov r1, sp
	bl sub_08042F84
	add r0, sp, #0x24
	add r4, sp, #0x10
	adds r1, r4, #0
	bl sub_08042F84
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _080435A4
	movs r1, #1
_080435A4:
	cmp r1, #0
	bne _080435B6
	movs r1, #0
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bhi _080435B2
	movs r1, #1
_080435B2:
	cmp r1, #0
	beq _080435BA
_080435B6:
	movs r0, #1
	b _080435C2
_080435BA:
	mov r0, sp
	adds r1, r4, #0
	bl sub_0804342C
_080435C2:
	add sp, #0x28
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080435C8
sub_080435C8: @ 0x080435C8
	push {r4, lr}
	sub sp, #0x28
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	add r0, sp, #0x20
	mov r1, sp
	bl sub_08042F84
	add r0, sp, #0x24
	add r4, sp, #0x10
	adds r1, r4, #0
	bl sub_08042F84
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _080435EC
	movs r1, #1
_080435EC:
	cmp r1, #0
	bne _080435FE
	movs r1, #0
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bhi _080435FA
	movs r1, #1
_080435FA:
	cmp r1, #0
	beq _08043604
_080435FE:
	movs r0, #1
	rsbs r0, r0, #0
	b _0804360C
_08043604:
	mov r0, sp
	adds r1, r4, #0
	bl sub_0804342C
_0804360C:
	add sp, #0x28
	pop {r4, pc}

	thumb_func_start sub_08043610
sub_08043610: @ 0x08043610
	push {r4, lr}
	sub sp, #0x28
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	add r0, sp, #0x20
	mov r1, sp
	bl sub_08042F84
	add r0, sp, #0x24
	add r4, sp, #0x10
	adds r1, r4, #0
	bl sub_08042F84
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _08043634
	movs r1, #1
_08043634:
	cmp r1, #0
	bne _08043646
	movs r1, #0
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bhi _08043642
	movs r1, #1
_08043642:
	cmp r1, #0
	beq _0804364C
_08043646:
	movs r0, #1
	rsbs r0, r0, #0
	b _08043654
_0804364C:
	mov r0, sp
	adds r1, r4, #0
	bl sub_0804342C
_08043654:
	add sp, #0x28
	pop {r4, pc}

	thumb_func_start sub_08043658
sub_08043658: @ 0x08043658
	push {r4, lr}
	sub sp, #0x28
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	add r0, sp, #0x20
	mov r1, sp
	bl sub_08042F84
	add r0, sp, #0x24
	add r4, sp, #0x10
	adds r1, r4, #0
	bl sub_08042F84
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _0804367C
	movs r1, #1
_0804367C:
	cmp r1, #0
	bne _0804368E
	movs r1, #0
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bhi _0804368A
	movs r1, #1
_0804368A:
	cmp r1, #0
	beq _08043692
_0804368E:
	movs r0, #1
	b _0804369A
_08043692:
	mov r0, sp
	adds r1, r4, #0
	bl sub_0804342C
_0804369A:
	add sp, #0x28
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080436A0
sub_080436A0: @ 0x080436A0
	push {r4, lr}
	sub sp, #0x28
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	add r0, sp, #0x20
	mov r1, sp
	bl sub_08042F84
	add r0, sp, #0x24
	add r4, sp, #0x10
	adds r1, r4, #0
	bl sub_08042F84
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _080436C4
	movs r1, #1
_080436C4:
	cmp r1, #0
	bne _080436D6
	movs r1, #0
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bhi _080436D2
	movs r1, #1
_080436D2:
	cmp r1, #0
	beq _080436DA
_080436D6:
	movs r0, #1
	b _080436E2
_080436DA:
	mov r0, sp
	adds r1, r4, #0
	bl sub_0804342C
_080436E2:
	add sp, #0x28
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080436E8
sub_080436E8: @ 0x080436E8
	push {lr}
	sub sp, #0x10
	adds r1, r0, #0
	movs r0, #3
	str r0, [sp]
	lsrs r2, r1, #0x1f
	str r2, [sp, #4]
	cmp r1, #0
	bne _08043700
	movs r0, #2
	str r0, [sp]
	b _08043738
_08043700:
	movs r0, #0x1e
	str r0, [sp, #8]
	cmp r2, #0
	beq _0804371E
	movs r0, #0x80
	lsls r0, r0, #0x18
	cmp r1, r0
	bne _08043718
	ldr r0, _08043714 @ =0xCF000000
	b _0804373E
	.align 2, 0
_08043714: .4byte 0xCF000000
_08043718:
	rsbs r0, r1, #0
	str r0, [sp, #0xc]
	b _08043720
_0804371E:
	str r1, [sp, #0xc]
_08043720:
	ldr r2, [sp, #0xc]
	ldr r3, _08043744 @ =0x3FFFFFFF
	cmp r2, r3
	bhi _08043738
	ldr r1, [sp, #8]
_0804372A:
	lsls r0, r2, #1
	subs r1, #1
	adds r2, r0, #0
	cmp r0, r3
	bls _0804372A
	str r1, [sp, #8]
	str r0, [sp, #0xc]
_08043738:
	mov r0, sp
	bl sub_08042ECC
_0804373E:
	add sp, #0x10
	pop {pc}
	.align 2, 0
_08043744: .4byte 0x3FFFFFFF

	thumb_func_start sub_08043748
sub_08043748: @ 0x08043748
	push {lr}
	sub sp, #0x14
	str r0, [sp, #0x10]
	add r0, sp, #0x10
	mov r1, sp
	bl sub_08042F84
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #2
	bne _08043760
	movs r1, #1
_08043760:
	cmp r1, #0
	bne _08043792
	movs r1, #0
	cmp r0, #1
	bhi _0804376C
	movs r1, #1
_0804376C:
	cmp r1, #0
	bne _08043792
	movs r1, #0
	cmp r0, #4
	bne _08043778
	movs r1, #1
_08043778:
	cmp r1, #0
	beq _0804378C
_0804377C:
	ldr r0, [sp, #4]
	ldr r1, _08043788 @ =0x7FFFFFFF
	cmp r0, #0
	beq _080437AA
	adds r1, #1
	b _080437AA
	.align 2, 0
_08043788: .4byte 0x7FFFFFFF
_0804378C:
	ldr r1, [sp, #8]
	cmp r1, #0
	bge _08043796
_08043792:
	movs r0, #0
	b _080437AC
_08043796:
	cmp r1, #0x1e
	bgt _0804377C
	movs r0, #0x1e
	subs r0, r0, r1
	ldr r1, [sp, #0xc]
	lsrs r1, r0
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _080437AA
	rsbs r1, r1, #0
_080437AA:
	adds r0, r1, #0
_080437AC:
	add sp, #0x14
	pop {pc}

	thumb_func_start sub_080437B0
sub_080437B0: @ 0x080437B0
	push {lr}
	sub sp, #0x14
	str r0, [sp, #0x10]
	add r0, sp, #0x10
	mov r1, sp
	bl sub_08042F84
	movs r1, #0
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _080437C8
	movs r1, #1
_080437C8:
	str r1, [sp, #4]
	mov r0, sp
	bl sub_08042ECC
	add sp, #0x14
	pop {pc}

	thumb_func_start sub_080437D4
sub_080437D4: @ 0x080437D4
	push {lr}
	sub sp, #0x10
	str r0, [sp]
	str r1, [sp, #4]
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	mov r0, sp
	bl sub_08042ECC
	add sp, #0x10
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080437EC
sub_080437EC: @ 0x080437EC
	push {r4, r5, r6, lr}
	sub sp, #0x18
	str r0, [sp, #0x14]
	add r0, sp, #0x14
	add r1, sp, #4
	bl sub_08042F84
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x10]
	movs r4, #0
	lsrs r6, r3, #2
	lsls r5, r4, #0x1e
	adds r4, r6, #0
	orrs r4, r5
	lsls r3, r3, #0x1e
	str r4, [sp]
	bl sub_08042E60
	add sp, #0x18
	pop {r4, r5, r6, pc}

	thumb_func_start sub_08043818
sub_08043818: @ 0x08043818
	push {r4, r5, r6, lr}
	adds r6, r1, #0
	adds r5, r0, #0
	cmp r2, #0
	beq _08043848
	movs r0, #0x20
	subs r0, r0, r2
	cmp r0, #0
	bgt _08043834
	movs r4, #0
	rsbs r0, r0, #0
	adds r3, r6, #0
	lsrs r3, r0
	b _08043844
_08043834:
	adds r1, r6, #0
	lsls r1, r0
	adds r4, r6, #0
	lsrs r4, r2
	adds r0, r5, #0
	lsrs r0, r2
	adds r3, r0, #0
	orrs r3, r1
_08043844:
	adds r1, r4, #0
	adds r0, r3, #0
_08043848:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_0804384C
sub_0804384C: @ 0x0804384C
	push {r4, lr}
	rsbs r2, r0, #0
	adds r3, r2, #0
	rsbs r1, r1, #0
	cmp r2, #0
	beq _0804385A
	subs r1, #1
_0804385A:
	adds r4, r1, #0
	adds r1, r4, #0
	adds r0, r3, #0
	pop {r4, pc}
	.align 2, 0

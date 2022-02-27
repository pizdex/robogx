.include "asm/macro.inc"
.syntax unified

	thumb_func_start IdentifyEeprom
IdentifyEeprom: @ 0x0803D388
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

	thumb_func_start EepromTimerIntr
EepromTimerIntr: @ 0x0803D3CC
	ldr r1, _0803D3E8 @ =gUnknown_0203C47A
	ldrh r0, [r1]
	cmp r0, #0
	beq _0803D3E6
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0803D3E6
	ldr r1, _0803D3EC @ =gUnknown_0203C47C
	movs r0, #1
	strb r0, [r1]
_0803D3E6:
	bx lr
	.align 2, 0
_0803D3E8: .4byte gUnknown_0203C47A
_0803D3EC: .4byte gUnknown_0203C47C

	thumb_func_start SetEepromTimerIntr
SetEepromTimerIntr: @ 0x0803D3F0
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
	ldr r0, _0803D420 @ =EepromTimerIntr+1
	str r0, [r2]
	movs r0, #0
	b _0803D426
	.align 2, 0
_0803D414: .4byte gUnknown_0203C478
_0803D418: .4byte gUnknown_0203C480
_0803D41C: .4byte 0x04000100
_0803D420: .4byte EepromTimerIntr+1
_0803D424:
	movs r0, #1
_0803D426:
	bx lr

	thumb_func_start StartEepromTimer
StartEepromTimer: @ 0x0803D428
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

	thumb_func_start StopEepromTimer
StopEepromTimer: @ 0x0803D4B0
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

	thumb_func_start Dma3Transmit
Dma3Transmit: @ 0x0803D4F4
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

	thumb_func_start ReadEepromDword
ReadEepromDword: @ 0x0803D574
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
	bl Dma3Transmit
	adds r0, r4, #0
	mov r1, sp
	movs r2, #0x44
	bl Dma3Transmit
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

	thumb_func_start ProgramEepromDword
ProgramEepromDword: @ 0x0803D624
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
	bl Dma3Transmit
	ldr r0, _0803D6F4 @ =gUnknown_083D478C
	bl StartEepromTimer
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
	bl StopEepromTimer
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

	thumb_func_start VerifyEepromDword
VerifyEepromDword: @ 0x0803D700
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
	bl ReadEepromDword
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

	thumb_func_start ProgramEepromDwordEx
ProgramEepromDwordEx: @ 0x0803D758
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
	bl ProgramEepromDword
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	bne _0803D764
	adds r0, r4, #0
	adds r1, r5, #0
	bl VerifyEepromDword
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

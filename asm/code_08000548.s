.include "asm/macro.inc"
.syntax unified

	thumb_func_start sub_08000548
sub_08000548: @ 0x08000548
	push {lr}
	bl sub_08003094
	movs r0, #0xc0
	lsls r0, r0, #0xb
	bl sub_08003630
	bl sub_08000588
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08000560
sub_08000560: @ 0x08000560
	ldr r0, _08000568 @ =0x000000D9
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bx lr
	.align 2, 0
_08000568: .4byte 0x000000D9

	thumb_func_start sub_0800056C
sub_0800056C: @ 0x0800056C
	push {lr}
	cmp r0, #0
	bne _0800057C
	movs r0, #0xc0
	lsls r0, r0, #0xb
	bl sub_08003630
	b _08000584
_0800057C:
	movs r0, #0xc0
	lsls r0, r0, #0xa
	bl sub_08003630
_08000584:
	pop {r0}
	bx r0

	thumb_func_start sub_08000588
sub_08000588: @ 0x08000588
	push {r4, lr}
	ldr r1, _080005A8 @ =0x02000024
	movs r0, #1
	strh r0, [r1]
	ldr r1, _080005AC @ =0x02000034
	ldr r4, _080005B0 @ =0x04000080
	ldrh r0, [r4]
	strh r0, [r1]
	bl sub_0800371C
	movs r0, #0
	strh r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080005A8: .4byte 0x02000024
_080005AC: .4byte 0x02000034
_080005B0: .4byte 0x04000080

	thumb_func_start sub_080005B4
sub_080005B4: @ 0x080005B4
	push {lr}
	ldr r1, _080005CC @ =0x04000080
	ldr r0, _080005D0 @ =0x02000034
	ldrh r0, [r0]
	strh r0, [r1]
	bl sub_08003798
	ldr r1, _080005D4 @ =0x02000024
	movs r0, #0
	strh r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_080005CC: .4byte 0x04000080
_080005D0: .4byte 0x02000034
_080005D4: .4byte 0x02000024

	thumb_func_start sub_080005D8
sub_080005D8: @ 0x080005D8
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_08003118
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080005E8
sub_080005E8: @ 0x080005E8
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_08003118
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080005F8
sub_080005F8: @ 0x080005F8
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_080031E4
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08000608
sub_08000608: @ 0x08000608
	push {lr}
	ldr r2, _0800062C @ =0x080451B8
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrh r2, [r0, #4]
	ldr r3, _08000630 @ =0x08045158
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_080032B0
	pop {r0}
	bx r0
	.align 2, 0
_0800062C: .4byte 0x080451B8
_08000630: .4byte 0x08045158

	thumb_func_start sub_08000634
sub_08000634: @ 0x08000634
	push {lr}
	ldr r3, _08000654 @ =0x08045158
	lsls r2, r0, #1
	adds r2, r2, r0
	lsls r2, r2, #2
	adds r2, r2, r3
	ldr r0, [r2]
	ldr r2, _08000658 @ =0x080451B8
	lsls r1, r1, #3
	adds r1, r1, r2
	ldr r1, [r1]
	bl sub_0800384C
	pop {r0}
	bx r0
	.align 2, 0
_08000654: .4byte 0x08045158
_08000658: .4byte 0x080451B8

	thumb_func_start sub_0800065C
sub_0800065C: @ 0x0800065C
	push {lr}
	ldr r2, _08000674 @ =0x08045158
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r0, [r1]
	bl sub_08003930
	pop {r0}
	bx r0
	.align 2, 0
_08000674: .4byte 0x08045158

	thumb_func_start sub_08000678
sub_08000678: @ 0x08000678
	push {lr}
	ldr r2, _08000690 @ =0x08045158
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r0, [r1]
	bl sub_08003278
	pop {r0}
	bx r0
	.align 2, 0
_08000690: .4byte 0x08045158

	thumb_func_start sub_08000694
sub_08000694: @ 0x08000694
	push {lr}
	ldr r3, _080006B0 @ =0x08045158
	lsls r2, r0, #1
	adds r2, r2, r0
	lsls r2, r2, #2
	adds r2, r2, r3
	ldr r0, [r2]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_080032B0
	pop {r0}
	bx r0
	.align 2, 0
_080006B0: .4byte 0x08045158

	thumb_func_start sub_080006B4
sub_080006B4: @ 0x080006B4
	push {lr}
	adds r2, r1, #0
	ldr r3, _080006D4 @ =0x08045158
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r3
	ldr r0, [r1]
	ldr r1, _080006D8 @ =0x0000FFFF
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_080040C0
	pop {r0}
	bx r0
	.align 2, 0
_080006D4: .4byte 0x08045158
_080006D8: .4byte 0x0000FFFF

	thumb_func_start sub_080006DC
sub_080006DC: @ 0x080006DC
	ldr r2, _080006F4 @ =0x08045158
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r0, [r1]
	ldr r0, [r0, #4]
	movs r1, #1
	lsrs r0, r0, #0x1f
	eors r0, r1
	bx lr
	.align 2, 0
_080006F4: .4byte 0x08045158

	thumb_func_start sub_080006F8
sub_080006F8: @ 0x080006F8
	push {lr}
	bl sub_0800324C
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08000704
sub_08000704: @ 0x08000704
	push {r4, r5, r6, r7, lr}
	adds r1, r0, #0
	ldr r0, _08000730 @ =0x00000008
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	movs r4, #0
	cmp r4, r6
	bhs _08000728
	ldr r5, _08000734 @ =0x08045158
	lsls r7, r1, #0x10
_08000718:
	ldr r0, [r5]
	lsrs r1, r7, #0x10
	bl sub_080032B0
	adds r5, #0xc
	adds r4, #1
	cmp r4, r6
	blo _08000718
_08000728:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08000730: .4byte 0x00000008
_08000734: .4byte 0x08045158

	thumb_func_start sub_08000738
sub_08000738: @ 0x08000738
	push {lr}
	movs r0, #0x40
	bl sub_0803D388
	ldr r1, _0800074C @ =0x03001370
	movs r0, #3
	bl sub_0803D3F0
	pop {r0}
	bx r0
	.align 2, 0
_0800074C: .4byte 0x03001370

	thumb_func_start sub_08000750
sub_08000750: @ 0x08000750
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	adds r4, r1, #0
	mov r8, r2
	mov sb, r3
	cmp r3, #0
	beq _08000768
	bl sub_08000588
_08000768:
	lsrs r4, r4, #3
	mov r0, r8
	lsrs r0, r0, #3
	mov r8, r0
	movs r7, #0
	b _08000776
_08000774:
	adds r7, #1
_08000776:
	cmp r7, r8
	bhs _08000790
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	adds r1, r5, #0
	bl sub_0803D574
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r5, #8
	adds r4, #1
	cmp r6, #0
	beq _08000774
_08000790:
	mov r0, sb
	cmp r0, #0
	beq _0800079A
	bl sub_080005B4
_0800079A:
	adds r0, r6, #0
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_080007A8
sub_080007A8: @ 0x080007A8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	adds r4, r1, #0
	mov r8, r2
	mov sb, r3
	cmp r3, #0
	beq _080007C0
	bl sub_08000588
_080007C0:
	lsrs r4, r4, #3
	mov r0, r8
	lsrs r0, r0, #3
	mov r8, r0
	movs r7, #0
	b _080007CE
_080007CC:
	adds r7, #1
_080007CE:
	cmp r7, r8
	bhs _080007E8
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	adds r1, r5, #0
	bl sub_0803D758
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r5, #8
	adds r4, #1
	cmp r6, #0
	beq _080007CC
_080007E8:
	mov r0, sb
	cmp r0, #0
	beq _080007F2
	bl sub_080005B4
_080007F2:
	adds r0, r6, #0
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08000800
sub_08000800: @ 0x08000800
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r4, r0, #0
	adds r7, r1, #0
	mov r8, r3
	mov r0, sp
	strh r2, [r0]
	strh r2, [r0, #2]
	strh r2, [r0, #4]
	strh r2, [r0, #6]
	cmp r3, #0
	beq _08000820
	bl sub_08000588
_08000820:
	lsrs r4, r4, #3
	lsrs r7, r7, #3
	movs r5, #0
	b _0800082A
_08000828:
	adds r5, #1
_0800082A:
	cmp r5, r7
	bhs _08000842
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	mov r1, sp
	bl sub_0803D758
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r4, #1
	cmp r6, #0
	beq _08000828
_08000842:
	mov r0, r8
	cmp r0, #0
	beq _0800084C
	bl sub_080005B4
_0800084C:
	adds r0, r6, #0
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0800085C
sub_0800085C: @ 0x0800085C
	ldr r1, _08000870 @ =0x0400010C
	movs r0, #0
	strh r0, [r1]
	adds r1, #2
	movs r0, #1
	strh r0, [r1]
	movs r0, #0x81
	strh r0, [r1]
	bx lr
	.align 2, 0
_08000870: .4byte 0x0400010C

	thumb_func_start sub_08000874
sub_08000874: @ 0x08000874
	push {lr}
	ldr r0, _08000894 @ =0x0400010C
	ldrh r2, [r0]
	adds r0, r2, #0
	movs r1, #0
	ldr r2, _08000898 @ =0x00002710
	ldr r3, _0800089C @ =0x00000000
	bl sub_0803D93C
	ldr r2, _080008A0 @ =0x00001125
	ldr r3, _080008A4 @ =0x00000000
	bl sub_0803D9AC
	pop {r1}
	bx r1
	.align 2, 0
_08000894: .4byte 0x0400010C
_08000898: .4byte 0x00002710
_0800089C: .4byte 0x00000000
_080008A0: .4byte 0x00001125
_080008A4: .4byte 0x00000000

	thumb_func_start sub_080008A8
sub_080008A8: @ 0x080008A8
	ldr r0, _080008B4 @ =0x02000038
	ldr r1, _080008B8 @ =0x0400010C
	ldrh r1, [r1]
	strh r1, [r0]
	bx lr
	.align 2, 0
_080008B4: .4byte 0x02000038
_080008B8: .4byte 0x0400010C

	thumb_func_start sub_080008BC
sub_080008BC: @ 0x080008BC
	push {lr}
	adds r1, r0, #0
	cmp r1, #0
	beq _080008EC
	ldr r0, _080008DC @ =0x0400010C
	movs r1, #0
	strh r1, [r0]
	ldr r2, _080008E0 @ =0x0400010E
	strh r1, [r2]
	movs r0, #0x80
	strh r0, [r2]
	ldr r1, _080008E4 @ =0x04000132
	ldr r2, _080008E8 @ =0x00004008
	adds r0, r2, #0
	strh r0, [r1]
	b _080008F4
	.align 2, 0
_080008DC: .4byte 0x0400010C
_080008E0: .4byte 0x0400010E
_080008E4: .4byte 0x04000132
_080008E8: .4byte 0x00004008
_080008EC:
	ldr r0, _080008F8 @ =0x04000132
	strh r1, [r0]
	subs r0, #0x24
	strh r1, [r0]
_080008F4:
	pop {r0}
	bx r0
	.align 2, 0
_080008F8: .4byte 0x04000132

	thumb_func_start sub_080008FC
sub_080008FC: @ 0x080008FC
	ldr r1, _08000904 @ =0x03000B54
	str r0, [r1]
	bx lr
	.align 2, 0
_08000904: .4byte 0x03000B54

	thumb_func_start sub_08000908
sub_08000908: @ 0x08000908
	push {lr}
	bl sub_08002A38
	bl sub_0800142C
	ldr r0, _08000968 @ =0x03000B54
	ldr r0, [r0]
	cmp r0, #0
	beq _0800091E
	bl sub_0803D798
_0800091E:
	ldr r1, _0800096C @ =0x0300136C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _08000970 @ =0x02000024
	ldrh r0, [r0]
	cmp r0, #0
	bne _0800095C
	ldr r0, _08000974 @ =0x04000130
	ldrh r1, [r0]
	ldr r2, _08000978 @ =0x000003FF
	adds r0, r2, #0
	eors r0, r1
	cmp r0, #0
	beq _0800095C
	cmp r0, #0xf
	bne _0800095C
	bl sub_08000588
	ldr r1, _0800097C @ =0x04000050
	movs r0, #0xff
	strh r0, [r1]
	adds r1, #4
	movs r0, #0x10
	strh r0, [r1]
	movs r0, #2
	bl sub_08000C90
	movs r0, #0xff
	bl sub_0803D364
_0800095C:
	ldr r1, _08000980 @ =0x03007FF8
	movs r0, #1
	strh r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_08000968: .4byte 0x03000B54
_0800096C: .4byte 0x0300136C
_08000970: .4byte 0x02000024
_08000974: .4byte 0x04000130
_08000978: .4byte 0x000003FF
_0800097C: .4byte 0x04000050
_08000980: .4byte 0x03007FF8

	thumb_func_start sub_08000984
sub_08000984: @ 0x08000984
	push {lr}
	bl sub_0800310C
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08000990
sub_08000990: @ 0x08000990
	push {r4, r5, r6, lr}
	ldr r0, _080009F4 @ =0x02000024
	movs r6, #1
	strh r6, [r0]
	ldr r3, _080009F8 @ =sub_080000F0
	ldr r0, _080009FC @ =0x08000540
	subs r0, r0, r3
	ldr r1, _08000A00 @ =0x03002BF0
	lsrs r2, r0, #2
	ldr r5, _08000A04 @ =0x001FFFFF
	ands r2, r5
	movs r4, #0x80
	lsls r4, r4, #0x13
	orrs r2, r4
	adds r0, r3, #0
	bl sub_0803D348
	ldr r3, _08000A08 @ =0x08001A18
	ldr r0, _08000A0C @ =0x080023D4
	subs r0, r0, r3
	ldr r1, _08000A10 @ =0x03003040
	lsrs r2, r0, #2
	ands r2, r5
	orrs r2, r4
	adds r0, r3, #0
	bl sub_0803D348
	ldr r1, _08000A14 @ =0x03007FFC
	ldr r0, _080009F8 @ =sub_080000F0
	str r0, [r1]
	ldr r0, _08000A18 @ =0x0300136C
	movs r1, #0
	str r1, [r0]
	ldr r0, _08000A1C @ =0x03000B54
	ldr r0, [r0]
	str r1, [r0]
	ldr r1, _08000A20 @ =0x04000004
	ldr r2, _08000A24 @ =0x00000A28
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _08000A28 @ =0x04000200
	ldr r2, _08000A2C @ =0x00003005
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _08000A30 @ =0x04000208
	strh r6, [r0]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080009F4: .4byte 0x02000024
_080009F8: .4byte sub_080000F0
_080009FC: .4byte 0x08000540
_08000A00: .4byte 0x03002BF0
_08000A04: .4byte 0x001FFFFF
_08000A08: .4byte 0x08001A18
_08000A0C: .4byte 0x080023D4
_08000A10: .4byte 0x03003040
_08000A14: .4byte 0x03007FFC
_08000A18: .4byte 0x0300136C
_08000A1C: .4byte 0x03000B54
_08000A20: .4byte 0x04000004
_08000A24: .4byte 0x00000A28
_08000A28: .4byte 0x04000200
_08000A2C: .4byte 0x00003005
_08000A30: .4byte 0x04000208

	thumb_func_start sub_08000A34
sub_08000A34: @ 0x08000A34
	ldr r0, _08000A50 @ =0x08043864
	movs r3, #0xc0
	lsls r3, r3, #0x12
	ldr r1, _08000A54 @ =0x00000748
	ldr r2, _08000A58 @ =0x040000D4
	str r0, [r2]
	str r3, [r2, #4]
	lsrs r1, r1, #2
	movs r0, #0x84
	lsls r0, r0, #0x18
	orrs r1, r0
	str r1, [r2, #8]
	ldr r0, [r2, #8]
	bx lr
	.align 2, 0
_08000A50: .4byte 0x08043864
_08000A54: .4byte 0x00000748
_08000A58: .4byte 0x040000D4

	thumb_func_start sub_08000A5C
sub_08000A5C: @ 0x08000A5C
	push {r4, lr}
	sub sp, #4
	ldr r1, _08000ADC @ =0x04000050
	movs r0, #0xbf
	strh r0, [r1]
	adds r1, #4
	movs r0, #0x10
	strh r0, [r1]
	subs r1, #0x54
	movs r0, #0
	strh r0, [r1]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	ldr r0, _08000AE0 @ =0x03007700
	movs r3, #0
	str r3, [sp]
	ldr r2, _08000AE4 @ =0x040000D4
	mov r4, sp
	str r4, [r2]
	str r1, [r2, #4]
	subs r0, r0, r1
	lsrs r0, r0, #2
	movs r1, #0x85
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	str r3, [sp]
	str r4, [r2]
	movs r0, #0x80
	lsls r0, r0, #0x12
	str r0, [r2, #4]
	ldr r0, _08000AE8 @ =0x85010000
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	bl sub_08000A34
	ldr r1, _08000AEC @ =0x04000204
	ldr r2, _08000AF0 @ =0x00004014
	adds r0, r2, #0
	strh r0, [r1]
	bl sub_08000548
	bl sub_08000990
	bl sub_080012B8
	movs r0, #0xe0
	lsls r0, r0, #0x13
	movs r1, #0x80
	bl sub_08000FEC
	bl sub_08000738
	movs r0, #0
	bl sub_0803DF70
	bl sub_080005B4
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08000ADC: .4byte 0x04000050
_08000AE0: .4byte 0x03007700
_08000AE4: .4byte 0x040000D4
_08000AE8: .4byte 0x85010000
_08000AEC: .4byte 0x04000204
_08000AF0: .4byte 0x00004014

	thumb_func_start sub_08000AF4
sub_08000AF4: @ 0x08000AF4
	push {lr}
	bl sub_08000A5C
	bl sub_0803D308
_08000AFE:
	b _08000AFE

	thumb_func_start sub_08000B00
sub_08000B00: @ 0x08000B00
	push {lr}
	ldr r1, _08000B18 @ =0x000005DC
	muls r0, r1, r0
	movs r1, #0
	cmp r1, r0
	bhs _08000B12
_08000B0C:
	adds r1, #1
	cmp r1, r0
	blo _08000B0C
_08000B12:
	pop {r0}
	bx r0
	.align 2, 0
_08000B18: .4byte 0x000005DC

	thumb_func_start sub_08000B1C
sub_08000B1C: @ 0x08000B1C
	push {lr}
	ldr r1, _08000B34 @ =0x04000006
_08000B20:
	ldrh r0, [r1]
	cmp r0, #0x9f
	bne _08000B20
	ldr r1, _08000B34 @ =0x04000006
_08000B28:
	ldrh r0, [r1]
	cmp r0, #0x9f
	bls _08000B28
	pop {r0}
	bx r0
	.align 2, 0
_08000B34: .4byte 0x04000006

	thumb_func_start sub_08000B38
sub_08000B38: @ 0x08000B38
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
	cmp r4, r5
	bhs _08000B4C
_08000B42:
	bl sub_08000B1C
	adds r4, #1
	cmp r4, r5
	blo _08000B42
_08000B4C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08000B54:
	.byte 0x00, 0xB5, 0x03, 0x49, 0x08, 0x88, 0x9F, 0x28, 0xFC, 0xD8, 0x01, 0xBC
	.byte 0x00, 0x47, 0x00, 0x00, 0x06, 0x00, 0x00, 0x04

	thumb_func_start sub_08000B68
sub_08000B68: @ 0x08000B68
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
	cmp r4, r5
	bhs _08000B7C
_08000B72:
	bl sub_0803D380
	adds r4, #1
	cmp r4, r5
	blo _08000B72
_08000B7C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08000B84
sub_08000B84: @ 0x08000B84
	ldr r1, _08000BA8 @ =0x02000008
	ldr r2, _08000BAC @ =0x000003FF
	adds r0, r2, #0
	strh r0, [r1]
	ldr r3, _08000BB0 @ =0x02000000
	ldr r2, _08000BB4 @ =0x02000020
	ldr r1, _08000BB8 @ =0x02000004
	movs r0, #0
	strh r0, [r1]
	strh r0, [r2]
	strh r0, [r3]
	ldr r1, _08000BBC @ =0x02000010
	movs r0, #0
	strh r0, [r1, #6]
	strh r0, [r1, #4]
	strh r0, [r1, #2]
	strh r0, [r1]
	bx lr
	.align 2, 0
_08000BA8: .4byte 0x02000008
_08000BAC: .4byte 0x000003FF
_08000BB0: .4byte 0x02000000
_08000BB4: .4byte 0x02000020
_08000BB8: .4byte 0x02000004
_08000BBC: .4byte 0x02000010

	thumb_func_start sub_08000BC0
sub_08000BC0: @ 0x08000BC0
	push {r4, r5, r6, lr}
	movs r6, #0
	ldr r0, _08000BF8 @ =0x02000000
	ldr r2, _08000BFC @ =0x02000008
	ldrh r3, [r2]
	strh r3, [r0]
	ldr r0, _08000C00 @ =0x04000130
	ldrh r0, [r0]
	ldr r4, _08000C04 @ =0x000003FF
	adds r1, r4, #0
	eors r0, r1
	strh r0, [r2]
	ldr r1, _08000C08 @ =0x02000020
	bics r0, r3
	strh r0, [r1]
	movs r4, #0
	movs r5, #1
	ldr r3, _08000C0C @ =0x02000010
_08000BE4:
	ldrh r1, [r2]
	adds r0, r4, #4
	lsrs r1, r0
	ands r1, r5
	cmp r1, #0
	beq _08000C10
	ldrh r0, [r3]
	adds r0, #1
	strh r0, [r3]
	b _08000C12
	.align 2, 0
_08000BF8: .4byte 0x02000000
_08000BFC: .4byte 0x02000008
_08000C00: .4byte 0x04000130
_08000C04: .4byte 0x000003FF
_08000C08: .4byte 0x02000020
_08000C0C: .4byte 0x02000010
_08000C10:
	strh r1, [r3]
_08000C12:
	adds r3, #2
	adds r4, #1
	cmp r4, #5
	bls _08000BE4
	movs r4, #0
	ldr r5, _08000C50 @ =0x02000010
_08000C1E:
	ldrh r0, [r5]
	subs r0, #0x1e
	cmp r0, #0
	blt _08000C38
	movs r1, #6
	bl sub_0803D350
	cmp r0, #0
	bne _08000C38
	adds r1, r4, #4
	movs r0, #1
	lsls r0, r1
	orrs r6, r0
_08000C38:
	adds r5, #2
	adds r4, #1
	cmp r4, #5
	bls _08000C1E
	ldr r0, _08000C54 @ =0x02000004
	ldr r1, _08000C58 @ =0x02000020
	ldrh r1, [r1]
	orrs r6, r1
	strh r6, [r0]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08000C50: .4byte 0x02000010
_08000C54: .4byte 0x02000004
_08000C58: .4byte 0x02000020

	thumb_func_start sub_08000C5C
sub_08000C5C: @ 0x08000C5C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r2, _08000C88 @ =0x04000130
	ldrh r0, [r2]
	ldr r3, _08000C8C @ =0x000003FF
	adds r1, r3, #0
	eors r0, r1
	ands r0, r4
	cmp r0, #0
	bne _08000C82
	adds r6, r2, #0
	adds r5, r1, #0
_08000C74:
	bl sub_08000B1C
	ldrh r0, [r6]
	eors r0, r5
	ands r0, r4
	cmp r0, #0
	beq _08000C74
_08000C82:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08000C88: .4byte 0x04000130
_08000C8C: .4byte 0x000003FF

	thumb_func_start sub_08000C90
sub_08000C90: @ 0x08000C90
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
	b _08000C9C
_08000C98:
	bl sub_08000B1C
_08000C9C:
	ldr r0, _08000CB8 @ =0x04000130
	ldrh r1, [r0]
	ldr r2, _08000CBC @ =0x000003FF
	adds r0, r2, #0
	adds r4, #1
	cmp r1, r0
	beq _08000CAC
	movs r4, #0
_08000CAC:
	cmp r4, r5
	blo _08000C98
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08000CB8: .4byte 0x04000130
_08000CBC: .4byte 0x000003FF

	thumb_func_start sub_08000CC0
sub_08000CC0: @ 0x08000CC0
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #1
	bl sub_08000C90
	adds r0, r4, #0
	bl sub_08000C5C
	movs r0, #1
	bl sub_08000C90
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08000CDC
sub_08000CDC: @ 0x08000CDC
	push {r4, lr}
	adds r4, r0, #0
	subs r0, r1, r4
	cmp r0, #0
	bge _08000CF4
	rsbs r0, r0, #0
	muls r0, r3, r0
	adds r1, r2, #0
	bl sub_0803D34C
	subs r0, r4, r0
	b _08000CFE
_08000CF4:
	muls r0, r3, r0
	adds r1, r2, #0
	bl sub_0803D34C
	adds r0, r4, r0
_08000CFE:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_08000D04
sub_08000D04: @ 0x08000D04
	push {r4, r5, r6, r7, lr}
	ldr r7, [sp, #0x14]
	ldr r6, [sp, #0x1c]
	movs r4, #0x20
	subs r4, r4, r6
	adds r5, r0, #0
	muls r5, r4, r5
	adds r0, r3, #0
	muls r0, r6, r0
	adds r5, r5, r0
	muls r1, r4, r1
	adds r0, r7, #0
	muls r0, r6, r0
	adds r1, r1, r0
	adds r0, r2, #0
	muls r0, r4, r0
	ldr r3, [sp, #0x18]
	adds r2, r3, #0
	muls r2, r6, r2
	adds r0, r0, r2
	lsrs r0, r0, #8
	movs r2, #0x1f
	ands r0, r2
	lsls r0, r0, #0xa
	lsrs r1, r1, #8
	ands r1, r2
	lsls r1, r1, #5
	orrs r0, r1
	lsrs r5, r5, #8
	ands r5, r2
	orrs r0, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08000D48
sub_08000D48: @ 0x08000D48
	push {r4, lr}
	adds r4, r0, #0
	movs r3, #0
	cmp r3, r2
	bhs _08000D60
_08000D52:
	ldrb r0, [r1]
	adds r1, #1
	strb r0, [r4]
	adds r4, #1
	adds r3, #1
	cmp r3, r2
	blo _08000D52
_08000D60:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08000D68
sub_08000D68: @ 0x08000D68
	push {lr}
	movs r2, #0
	cmp r2, r1
	bhs _08000D7C
	movs r3, #0
_08000D72:
	strb r3, [r0]
	adds r0, #1
	adds r2, #1
	cmp r2, r1
	blo _08000D72
_08000D7C:
	pop {r0}
	bx r0

	thumb_func_start sub_08000D80
sub_08000D80: @ 0x08000D80
	push {lr}
_08000D82:
	ldrb r2, [r0]
	cmp r2, #0
	bne _08000D92
	ldrb r0, [r1]
	cmp r0, #0
	bne _08000D9E
	movs r0, #1
	b _08000DA0
_08000D92:
	ldrb r3, [r1]
	cmp r2, r3
	bne _08000D9E
	adds r0, #1
	adds r1, #1
	b _08000D82
_08000D9E:
	movs r0, #0
_08000DA0:
	pop {r1}
	bx r1

	thumb_func_start sub_08000DA4
sub_08000DA4: @ 0x08000DA4
	push {r4, r5, lr}
	adds r5, r0, #0
_08000DA8:
	ldrb r3, [r5]
	adds r4, r3, #0
	ldrb r2, [r1]
	adds r0, r2, #0
	cmp r3, #0
	bne _08000DBC
	cmp r2, #0
	bne _08000DD2
	movs r0, #0
	b _08000DD6
_08000DBC:
	cmp r2, #0
	beq _08000DC4
	cmp r3, r2
	bls _08000DC8
_08000DC4:
	movs r0, #1
	b _08000DD6
_08000DC8:
	cmp r4, r0
	blo _08000DD2
	adds r5, #1
	adds r1, #1
	b _08000DA8
_08000DD2:
	movs r0, #1
	rsbs r0, r0, #0
_08000DD6:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_08000DDC
sub_08000DDC: @ 0x08000DDC
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	adds r4, r0, #0
	ldrb r6, [r5]
	b _08000E06
_08000DE6:
	cmp r0, r6
	bne _08000E04
	adds r1, r4, #0
	adds r3, r5, #0
	b _08000DF4
_08000DF0:
	adds r1, #1
	adds r3, #1
_08000DF4:
	ldrb r2, [r3]
	cmp r2, #0
	bne _08000DFE
	movs r0, #1
	b _08000E0E
_08000DFE:
	ldrb r0, [r1]
	cmp r0, r2
	beq _08000DF0
_08000E04:
	adds r4, #1
_08000E06:
	ldrb r0, [r4]
	cmp r0, #0
	bne _08000DE6
	movs r0, #0
_08000E0E:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_08000E14
sub_08000E14: @ 0x08000E14
	push {r4, r5, r6, lr}
	adds r4, r2, #0
	movs r2, #0
	ldrb r3, [r1]
	adds r1, #1
	cmp r3, #0
	beq _08000E3C
	subs r5, r4, #1
	movs r6, #0
_08000E26:
	cmp r2, r5
	bne _08000E2E
	strb r6, [r0]
	b _08000E4C
_08000E2E:
	strb r3, [r0]
	adds r0, #1
	adds r2, #1
	ldrb r3, [r1]
	adds r1, #1
	cmp r3, #0
	bne _08000E26
_08000E3C:
	cmp r2, r4
	bhs _08000E4C
	movs r1, #0
_08000E42:
	strb r1, [r0]
	adds r0, #1
	adds r2, #1
	cmp r2, r4
	blo _08000E42
_08000E4C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08000E54
sub_08000E54: @ 0x08000E54
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	adds r7, r2, #0
	movs r6, #0
	subs r5, r1, #1
_08000E62:
	cmp r6, r5
	bgt _08000E8A
	adds r0, r6, r5
	asrs r4, r0, #1
	lsls r0, r4, #2
	add r0, r8
	ldr r1, [r0]
	adds r0, r7, #0
	bl sub_08000DA4
	cmp r0, #0
	bne _08000E7E
	adds r0, r4, #0
	b _08000E8E
_08000E7E:
	cmp r0, #1
	bne _08000E86
	adds r6, r4, #1
	b _08000E62
_08000E86:
	subs r5, r4, #1
	b _08000E62
_08000E8A:
	movs r0, #1
	rsbs r0, r0, #0
_08000E8E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08000E98
sub_08000E98: @ 0x08000E98
	push {r4, r5, lr}
	ldr r5, _08000EB4 @ =0x04000040
	lsls r4, r0, #8
	adds r0, r0, r2
	orrs r4, r0
	strh r4, [r5]
	ldr r2, _08000EB8 @ =0x04000044
	lsls r0, r1, #8
	adds r1, r1, r3
	orrs r0, r1
	strh r0, [r2]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08000EB4: .4byte 0x04000040
_08000EB8: .4byte 0x04000044

	thumb_func_start sub_08000EBC
sub_08000EBC: @ 0x08000EBC
	push {r4, r5, lr}
	ldr r5, _08000ED8 @ =0x04000042
	lsls r4, r0, #8
	adds r0, r0, r2
	orrs r4, r0
	strh r4, [r5]
	ldr r2, _08000EDC @ =0x04000046
	lsls r0, r1, #8
	adds r1, r1, r3
	orrs r0, r1
	strh r0, [r2]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08000ED8: .4byte 0x04000042
_08000EDC: .4byte 0x04000046

	thumb_func_start sub_08000EE0
sub_08000EE0: @ 0x08000EE0
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r7, r1, #0
	movs r6, #0
	movs r5, #0xf
_08000EEA:
	ldm r7!, {r1}
	adds r3, r1, #0
	ands r3, r5
	lsrs r1, r1, #4
	cmp r3, #0
	beq _08000EF8
	adds r3, r3, r2
_08000EF8:
	adds r0, r1, #0
	ands r0, r5
	lsrs r1, r1, #4
	cmp r0, #0
	beq _08000F04
	adds r0, r0, r2
_08000F04:
	lsls r0, r0, #8
	orrs r0, r3
	strh r0, [r4]
	adds r4, #2
	adds r3, r1, #0
	ands r3, r5
	lsrs r1, r1, #4
	cmp r3, #0
	beq _08000F18
	adds r3, r3, r2
_08000F18:
	adds r0, r1, #0
	ands r0, r5
	lsrs r1, r1, #4
	cmp r0, #0
	beq _08000F24
	adds r0, r0, r2
_08000F24:
	lsls r0, r0, #8
	orrs r0, r3
	strh r0, [r4]
	adds r4, #2
	adds r3, r1, #0
	ands r3, r5
	lsrs r1, r1, #4
	cmp r3, #0
	beq _08000F38
	adds r3, r3, r2
_08000F38:
	adds r0, r1, #0
	ands r0, r5
	lsrs r1, r1, #4
	cmp r0, #0
	beq _08000F44
	adds r0, r0, r2
_08000F44:
	lsls r0, r0, #8
	orrs r0, r3
	strh r0, [r4]
	adds r4, #2
	adds r3, r1, #0
	ands r3, r5
	lsrs r1, r1, #4
	cmp r3, #0
	beq _08000F58
	adds r3, r3, r2
_08000F58:
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _08000F62
	adds r0, r0, r2
_08000F62:
	lsls r0, r0, #8
	orrs r0, r3
	strh r0, [r4]
	adds r4, #2
	adds r6, #1
	cmp r6, #7
	bls _08000EEA
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08000F78
sub_08000F78: @ 0x08000F78
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r7, r1, #0
	movs r6, #0
	movs r5, #0xf
_08000F82:
	ldm r7!, {r1}
	adds r3, r1, #0
	ands r3, r5
	lsrs r1, r1, #4
	adds r3, r3, r2
	adds r0, r1, #0
	ands r0, r5
	lsrs r1, r1, #4
	adds r0, r0, r2
	lsls r0, r0, #8
	orrs r0, r3
	strh r0, [r4]
	adds r4, #2
	adds r3, r1, #0
	ands r3, r5
	lsrs r1, r1, #4
	adds r3, r3, r2
	adds r0, r1, #0
	ands r0, r5
	lsrs r1, r1, #4
	adds r0, r0, r2
	lsls r0, r0, #8
	orrs r0, r3
	strh r0, [r4]
	adds r4, #2
	adds r3, r1, #0
	ands r3, r5
	lsrs r1, r1, #4
	adds r3, r3, r2
	adds r0, r1, #0
	ands r0, r5
	lsrs r1, r1, #4
	adds r0, r0, r2
	lsls r0, r0, #8
	orrs r0, r3
	strh r0, [r4]
	adds r4, #2
	adds r3, r1, #0
	ands r3, r5
	lsrs r0, r1, #4
	adds r3, r3, r2
	ands r0, r5
	adds r0, r0, r2
	lsls r0, r0, #8
	orrs r0, r3
	strh r0, [r4]
	adds r4, #2
	adds r6, #1
	cmp r6, #7
	bls _08000F82
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08000FEC
sub_08000FEC: @ 0x08000FEC
	push {lr}
	movs r2, #0
	cmp r2, r1
	bhs _08001000
	movs r3, #0xa0
_08000FF6:
	strh r3, [r0]
	adds r0, #8
	adds r2, #1
	cmp r2, r1
	blo _08000FF6
_08001000:
	pop {r0}
	bx r0

	thumb_func_start sub_08001004
sub_08001004: @ 0x08001004
	push {lr}
	movs r1, #0xe0
	lsls r1, r1, #0x13
	movs r0, #0
	movs r2, #0xa0
_0800100E:
	strh r2, [r1]
	adds r1, #8
	adds r0, #1
	cmp r0, #0x7f
	bls _0800100E
	pop {r0}
	bx r0

	thumb_func_start sub_0800101C
sub_0800101C: @ 0x0800101C
	push {lr}
	bl sub_0803D380
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r0, #0
	strh r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_08001030:
	.byte 0x30, 0xB5, 0x80, 0x22, 0xD2, 0x04, 0x00, 0x21, 0x11, 0x80, 0xA0, 0x25, 0xED, 0x04, 0x01, 0x24
	.byte 0x01, 0x1C, 0x21, 0x40, 0x4B, 0x01, 0x5B, 0x1A, 0x9B, 0x02, 0x82, 0x08, 0x22, 0x40, 0x51, 0x01
	.byte 0x89, 0x1A, 0x49, 0x01, 0x0B, 0x43, 0x40, 0x08, 0x20, 0x40, 0x41, 0x01, 0x09, 0x1A, 0x0B, 0x43
	.byte 0x2B, 0x80, 0x30, 0xBC, 0x01, 0xBC, 0x00, 0x47

	thumb_func_start sub_08001068
sub_08001068: @ 0x08001068
	push {r4, lr}
	movs r1, #0xf8
	lsls r1, r1, #3
	adds r2, r0, r1
	subs r1, #8
	adds r4, r0, r1
	adds r1, #4
	adds r3, r0, r1
	subs r1, #8
	adds r0, r0, r1
	movs r1, #0
	str r1, [r0]
	str r1, [r3]
	str r1, [r4]
	str r1, [r2, #0x10]
	str r1, [r2, #0x18]
	str r1, [r2, #0x14]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08001090
sub_08001090: @ 0x08001090
	ldr r2, _080010B4 @ =0x04000134
	movs r3, #0x80
	lsls r3, r3, #8
	adds r1, r3, #0
	strh r1, [r2]
	subs r2, #0x2a
	movs r1, #0
	strh r1, [r2]
	ldr r1, _080010B8 @ =0x03000B50
	str r0, [r1]
	ldr r1, _080010BC @ =0x03000B58
	movs r0, #3
	str r0, [r1]
	ldr r1, _080010C0 @ =0x03001364
	movs r0, #0
	str r0, [r1]
	bx lr
	.align 2, 0
_080010B4: .4byte 0x04000134
_080010B8: .4byte 0x03000B50
_080010BC: .4byte 0x03000B58
_080010C0: .4byte 0x03001364

	thumb_func_start sub_080010C4
sub_080010C4: @ 0x080010C4
	push {r4, r5, r6, r7, lr}
	ldr r1, _080010E0 @ =0x04000006
	ldrh r0, [r1]
	cmp r0, #0x9f
	bhi _080010D0
	adds r0, #0xe4
_080010D0:
	adds r6, r0, #0
	movs r3, #1
	movs r4, #1
	movs r5, #1
	movs r2, #1
	adds r7, r1, #0
	b _08001104
	.align 2, 0
_080010E0: .4byte 0x04000006
_080010E4:
	ldr r0, _0800111C @ =0x04000128
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x13
	ands r1, r2
	lsrs r0, r0, #0x12
	ands r0, r2
	cmp r1, #0
	bne _080010F8
	movs r3, #0
_080010F8:
	cmp r0, #0
	bne _080010FE
	movs r5, #0
_080010FE:
	cmp r0, #1
	bne _08001104
	movs r4, #0
_08001104:
	ldrh r0, [r7]
	cmp r0, #0x9f
	bhi _0800110C
	adds r0, #0xe4
_0800110C:
	subs r0, r0, r6
	cmp r0, #3
	bls _080010E4
	cmp r3, #0
	bne _08001120
	movs r0, #0
	b _08001132
	.align 2, 0
_0800111C: .4byte 0x04000128
_08001120:
	cmp r4, #1
	bne _08001128
	movs r0, #2
	b _08001132
_08001128:
	cmp r5, #1
	beq _08001130
	movs r0, #1
	b _08001132
_08001130:
	movs r0, #3
_08001132:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08001138
sub_08001138: @ 0x08001138
	push {r4, lr}
	movs r4, #0
_0800113C:
	bl sub_080010C4
	cmp r0, #2
	bne _08001148
	movs r0, #2
	b _08001158
_08001148:
	cmp r0, #3
	bne _08001150
	movs r0, #3
	b _08001158
_08001150:
	adds r4, #1
	cmp r4, #2
	bls _0800113C
	movs r0, #0
_08001158:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08001160
sub_08001160: @ 0x08001160
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	mov ip, r0
	ldr r0, _080011B8 @ =0x04000006
	ldrh r0, [r0]
	cmp r0, #0x9f
	bhi _08001178
	adds r0, #0xe4
_08001178:
	str r0, [sp]
	ldr r0, _080011BC @ =0x04000128
	ldrh r0, [r0]
	lsrs r3, r0, #7
	movs r0, #1
	ands r3, r0
	movs r0, #0xd1
	lsls r0, r0, #2
	add r0, ip
	str r0, [sp, #4]
	movs r1, #0xd2
	lsls r1, r1, #2
	add r1, ip
	str r1, [sp, #8]
	movs r2, #0xd3
	lsls r2, r2, #2
	add r2, ip
	mov sl, r2
	movs r0, #0xd4
	lsls r0, r0, #2
	add r0, ip
	mov sb, r0
	movs r6, #3
	movs r1, #0xcd
	lsls r1, r1, #2
	add r1, ip
	mov r8, r1
	movs r7, #0xce
	lsls r7, r7, #2
	add r7, ip
	movs r4, #1
	b _080011C2
	.align 2, 0
_080011B8: .4byte 0x04000006
_080011BC: .4byte 0x04000128
_080011C0:
	adds r3, r5, #0
_080011C2:
	ldr r0, _08001278 @ =0x04000006
	ldrh r0, [r0]
	cmp r0, #0x9f
	bhi _080011CC
	adds r0, #0xe4
_080011CC:
	ldr r2, [sp]
	subs r0, r0, r2
	cmp r0, #9
	bhi _08001298
	ldr r0, _0800127C @ =0x04000120
	ldrh r0, [r0]
	ldr r1, [sp, #4]
	str r0, [r1]
	ldr r0, _08001280 @ =0x04000122
	ldrh r0, [r0]
	ldr r2, [sp, #8]
	str r0, [r2]
	ldr r0, _08001284 @ =0x04000124
	ldrh r0, [r0]
	mov r1, sl
	str r0, [r1]
	ldr r0, _08001288 @ =0x04000126
	ldrh r0, [r0]
	mov r2, sb
	str r0, [r2]
	ldr r0, _0800128C @ =0x04000128
	ldrh r1, [r0]
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x12
	ands r0, r6
	mov r2, r8
	str r0, [r2]
	lsrs r0, r1, #0x14
	ands r0, r6
	str r0, [r7]
	lsrs r0, r1, #0x16
	ands r0, r4
	movs r2, #0xcf
	lsls r2, r2, #2
	add r2, ip
	str r0, [r2]
	lsrs r5, r1, #0x17
	ands r5, r4
	cmp r3, #0
	bne _080011C0
	cmp r5, #0
	bne _080011C0
	movs r0, #0xd0
	lsls r0, r0, #2
	add r0, ip
	movs r1, #0
	str r1, [r0]
	ldr r0, [r2]
	cmp r0, #0
	beq _08001252
	movs r4, #0xd1
	lsls r4, r4, #2
	add r4, ip
	movs r3, #0xd2
	lsls r3, r3, #2
	add r3, ip
	movs r2, #0xd3
	lsls r2, r2, #2
	add r2, ip
	movs r1, #0xd4
	lsls r1, r1, #2
	add r1, ip
	ldr r0, _08001290 @ =0x0000FFFE
	str r0, [r1]
	str r0, [r2]
	str r0, [r3]
	str r0, [r4]
_08001252:
	movs r0, #0xd3
	lsls r0, r0, #2
	add r0, ip
	ldr r1, [r0]
	ldr r0, _08001294 @ =0x0000FFFF
	cmp r1, r0
	bne _0800129E
	movs r0, #0xd4
	lsls r0, r0, #2
	add r0, ip
	ldr r0, [r0]
	cmp r0, r1
	bne _0800129E
	movs r0, #0xd5
	lsls r0, r0, #2
	add r0, ip
	str r5, [r0]
	b _080012A8
	.align 2, 0
_08001278: .4byte 0x04000006
_0800127C: .4byte 0x04000120
_08001280: .4byte 0x04000122
_08001284: .4byte 0x04000124
_08001288: .4byte 0x04000126
_0800128C: .4byte 0x04000128
_08001290: .4byte 0x0000FFFE
_08001294: .4byte 0x0000FFFF
_08001298:
	movs r1, #0xd0
	lsls r1, r1, #2
	b _080012A2
_0800129E:
	movs r1, #0xd5
	lsls r1, r1, #2
_080012A2:
	add r1, ip
	movs r0, #1
	str r0, [r1]
_080012A8:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080012B8
sub_080012B8: @ 0x080012B8
	push {r4, r5, lr}
	ldr r5, _0800131C @ =0x03000B60
	ldr r1, _08001320 @ =0x00000804
	adds r0, r5, #0
	movs r2, #0
	bl sub_08000498
	ldr r1, _08001324 @ =sub_08001FF4
	ldr r2, _08001328 @ =0x08001A18
	subs r1, r1, r2
	ldr r0, _0800132C @ =0x03003040
	adds r1, r1, r0
	ldr r4, _08001330 @ =sub_08002340
	subs r4, r4, r2
	adds r4, r4, r0
	adds r0, r5, #0
	bl sub_0803D79C
	adds r0, r5, #0
	bl sub_0803D7A8
	ldr r0, _08001334 @ =0x03000B58
	movs r1, #0
	str r1, [r0]
	ldr r0, _08001338 @ =0x03001364
	str r1, [r0]
	ldr r0, _0800133C @ =0x03001368
	str r1, [r0]
	ldr r0, _08001340 @ =0x03000B50
	str r1, [r0]
	ldr r2, _08001344 @ =0x04000134
	movs r3, #0x80
	lsls r3, r3, #8
	adds r0, r3, #0
	strh r0, [r2]
	ldr r0, _08001348 @ =0x0400010A
	strh r1, [r0]
	adds r2, #0xcc
	ldrh r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strh r0, [r2]
	ldrh r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	strh r0, [r2]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800131C: .4byte 0x03000B60
_08001320: .4byte 0x00000804
_08001324: .4byte sub_08001FF4
_08001328: .4byte 0x08001A18
_0800132C: .4byte 0x03003040
_08001330: .4byte sub_08002340
_08001334: .4byte 0x03000B58
_08001338: .4byte 0x03001364
_0800133C: .4byte 0x03001368
_08001340: .4byte 0x03000B50
_08001344: .4byte 0x04000134
_08001348: .4byte 0x0400010A

	thumb_func_start sub_0800134C
sub_0800134C: @ 0x0800134C
	ldr r2, _0800138C @ =0x03000B60
	movs r1, #0xc9
	lsls r1, r1, #2
	adds r0, r2, r1
	movs r1, #0
	str r1, [r0]
	movs r3, #0xca
	lsls r3, r3, #2
	adds r0, r2, r3
	str r1, [r0]
	adds r3, #4
	adds r0, r2, r3
	str r1, [r0]
	adds r3, #4
	adds r0, r2, r3
	str r1, [r0]
	ldr r0, _08001390 @ =0x03000B58
	str r1, [r0]
	ldr r0, _08001394 @ =0x03001364
	str r1, [r0]
	ldr r0, _08001398 @ =0x03001368
	str r1, [r0]
	ldr r0, _0800139C @ =0x03000B50
	str r1, [r0]
	ldr r2, _080013A0 @ =0x04000134
	movs r3, #0x80
	lsls r3, r3, #8
	adds r0, r3, #0
	strh r0, [r2]
	ldr r0, _080013A4 @ =0x0400010A
	strh r1, [r0]
	bx lr
	.align 2, 0
_0800138C: .4byte 0x03000B60
_08001390: .4byte 0x03000B58
_08001394: .4byte 0x03001364
_08001398: .4byte 0x03001368
_0800139C: .4byte 0x03000B50
_080013A0: .4byte 0x04000134
_080013A4: .4byte 0x0400010A

	thumb_func_start sub_080013A8
sub_080013A8: @ 0x080013A8
	push {r4, r5, lr}
	ldr r5, _080013E4 @ =0x03000B60
	ldr r0, _080013E8 @ =0x03000B58
	movs r4, #0
	str r4, [r0]
	ldr r0, _080013EC @ =0x03001364
	str r4, [r0]
	ldr r0, _080013F0 @ =0x03000B50
	str r4, [r0]
	ldr r0, _080013F4 @ =0x03001368
	str r4, [r0]
	adds r0, r5, #0
	bl sub_08001068
	movs r1, #0xfc
	lsls r1, r1, #3
	adds r0, r5, r1
	str r4, [r0]
	adds r1, #4
	adds r0, r5, r1
	str r4, [r0]
	movs r0, #0xcc
	lsls r0, r0, #2
	adds r5, r5, r0
	movs r0, #1
	str r0, [r5]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080013E4: .4byte 0x03000B60
_080013E8: .4byte 0x03000B58
_080013EC: .4byte 0x03001364
_080013F0: .4byte 0x03000B50
_080013F4: .4byte 0x03001368

	thumb_func_start sub_080013F8
sub_080013F8: @ 0x080013F8
	push {lr}
	ldr r1, _08001420 @ =0x03000B58
	ldr r0, [r1]
	cmp r0, #1
	beq _08001408
	ldr r0, [r1]
	cmp r0, #2
	bne _0800141A
_08001408:
	ldr r1, _08001424 @ =0x03000B60
	ldr r2, _08001428 @ =0x03001364
	movs r0, #0
	str r0, [r2]
	movs r0, #0xcc
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r0, #2
	str r0, [r1]
_0800141A:
	pop {r0}
	bx r0
	.align 2, 0
_08001420: .4byte 0x03000B58
_08001424: .4byte 0x03000B60
_08001428: .4byte 0x03001364

	thumb_func_start sub_0800142C
sub_0800142C: @ 0x0800142C
	push {r4, r5, lr}
	ldr r4, _08001454 @ =0x03000B60
	movs r1, #0xcb
	lsls r1, r1, #2
	adds r0, r4, r1
	ldr r1, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08001458
	movs r2, #0xc9
	lsls r2, r2, #2
	adds r0, r4, r2
	str r1, [r0]
	movs r3, #0xca
	lsls r3, r3, #2
	adds r1, r4, r3
	movs r0, #0
	b _08001462
	.align 2, 0
_08001454: .4byte 0x03000B60
_08001458:
	movs r5, #0xca
	lsls r5, r5, #2
	adds r1, r4, r5
	ldr r0, [r1]
	adds r0, #1
_08001462:
	str r0, [r1]
	movs r0, #0xcb
	lsls r0, r0, #2
	adds r1, r4, r0
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r1]
	movs r1, #0xd7
	lsls r1, r1, #2
	adds r2, r4, r1
	ldr r0, [r2]
	movs r1, #1
	eors r0, r1
	str r0, [r2]
	movs r2, #0xc9
	lsls r2, r2, #2
	adds r0, r4, r2
	ldr r0, [r0]
	cmp r0, #0x19
	bls _0800148C
	b _080019E6
_0800148C:
	lsls r0, r0, #2
	ldr r1, _08001498 @ =_0800149C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08001498: .4byte _0800149C
_0800149C: @ jump table
	.4byte _08001504 @ case 0
	.4byte _0800155C @ case 1
	.4byte _080015AC @ case 2
	.4byte _080019E6 @ case 3
	.4byte _080019E6 @ case 4
	.4byte _080019E6 @ case 5
	.4byte _080019E6 @ case 6
	.4byte _080019E6 @ case 7
	.4byte _080019E6 @ case 8
	.4byte _080019E6 @ case 9
	.4byte _08001678 @ case 10
	.4byte _0800171E @ case 11
	.4byte _080017DC @ case 12
	.4byte _080019E6 @ case 13
	.4byte _080019E6 @ case 14
	.4byte _080017F6 @ case 15
	.4byte _08001868 @ case 16
	.4byte _080019E6 @ case 17
	.4byte _080019E6 @ case 18
	.4byte _080019E6 @ case 19
	.4byte _08001870 @ case 20
	.4byte _08001920 @ case 21
	.4byte _08001938 @ case 22
	.4byte _080019E6 @ case 23
	.4byte _080019E6 @ case 24
	.4byte _08001960 @ case 25
_08001504:
	movs r3, #0xca
	lsls r3, r3, #2
	adds r0, r4, r3
	ldr r2, [r0]
	cmp r2, #0
	bne _08001544
	ldr r1, _08001538 @ =0x04000134
	movs r5, #0x80
	lsls r5, r5, #8
	adds r0, r5, #0
	strh r0, [r1]
	ldr r0, _0800153C @ =0x0400010A
	strh r2, [r0]
	ldr r1, _08001540 @ =0x03000B58
	ldr r0, [r1]
	cmp r0, #3
	bne _08001528
	str r2, [r1]
_08001528:
	movs r0, #0xcc
	lsls r0, r0, #2
	adds r1, r4, r0
	ldr r0, [r1]
	cmp r0, #2
	bne _08001544
	str r2, [r1]
	b _080019E6
	.align 2, 0
_08001538: .4byte 0x04000134
_0800153C: .4byte 0x0400010A
_08001540: .4byte 0x03000B58
_08001544:
	movs r1, #0xcc
	lsls r1, r1, #2
	adds r0, r4, r1
	ldr r1, [r0]
	cmp r1, #1
	beq _08001552
	b _080019E6
_08001552:
	movs r2, #0xcb
	lsls r2, r2, #2
	adds r0, r4, r2
	str r1, [r0]
	b _080019E6
_0800155C:
	movs r3, #0xca
	lsls r3, r3, #2
	adds r0, r4, r3
	ldr r2, [r0]
	cmp r2, #0
	bne _08001572
	ldr r0, _08001584 @ =0x00002003
	ldr r1, _08001588 @ =0x04000134
	strh r2, [r1]
	subs r1, #0xc
	strh r0, [r1]
_08001572:
	bl sub_08001138
	cmp r0, #2
	bne _0800158C
	movs r5, #0xcb
	lsls r5, r5, #2
	adds r1, r4, r5
	movs r0, #0xa
	b _08001598
	.align 2, 0
_08001584: .4byte 0x00002003
_08001588: .4byte 0x04000134
_0800158C:
	cmp r0, #3
	bne _0800159A
	movs r0, #0xcb
	lsls r0, r0, #2
	adds r1, r4, r0
	movs r0, #2
_08001598:
	str r0, [r1]
_0800159A:
	movs r1, #0xd7
	lsls r1, r1, #2
	adds r0, r4, r1
	ldr r0, [r0]
	ldr r2, _080015A8 @ =0x00001111
	b _08001910
	.align 2, 0
_080015A8: .4byte 0x00001111
_080015AC:
	movs r3, #0xca
	lsls r3, r3, #2
	adds r0, r4, r3
	ldr r1, [r0]
	cmp r1, #0
	bne _080015C0
	movs r5, #0xd6
	lsls r5, r5, #2
	adds r0, r4, r5
	str r1, [r0]
_080015C0:
	bl sub_08001138
	cmp r0, #2
	bne _080015D2
	movs r0, #0xcb
	lsls r0, r0, #2
	adds r1, r4, r0
	movs r0, #0xa
	b _08001662
_080015D2:
	adds r0, r4, #0
	bl sub_08001160
	movs r1, #0xd0
	lsls r1, r1, #2
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #0
	bne _08001664
	ldr r2, _08001600 @ =0x00000123
	movs r3, #0xd6
	lsls r3, r3, #2
	adds r1, r4, r3
	ldr r3, [r1]
	movs r5, #0xd1
	lsls r5, r5, #2
	adds r0, r4, r5
	ldr r5, [r0]
	cmp r5, r2
	bne _08001604
	movs r0, #1
	b _0800160E
	.align 2, 0
_08001600: .4byte 0x00000123
_08001604:
	movs r0, #0x92
	lsls r0, r0, #1
	cmp r5, r0
	bne _08001610
	movs r0, #2
_0800160E:
	orrs r3, r0
_08001610:
	str r3, [r1]
	movs r1, #0xd6
	lsls r1, r1, #2
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #3
	bne _08001664
	movs r2, #0xce
	lsls r2, r2, #2
	adds r0, r4, r2
	ldr r0, [r0]
	cmp r0, #0
	bne _08001634
	movs r3, #0xcb
	lsls r3, r3, #2
	adds r1, r4, r3
	movs r0, #0xa
	b _08001662
_08001634:
	cmp r0, #1
	bls _0800164E
	movs r1, #2
	cmp r0, #2
	bne _08001640
	movs r1, #1
_08001640:
	adds r0, r1, #0
	bl sub_08001090
	movs r5, #0xcb
	lsls r5, r5, #2
	adds r1, r4, r5
	b _0800196E
_0800164E:
	movs r1, #0xd5
	lsls r1, r1, #2
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #0
	bne _08001664
	movs r2, #0xcb
	lsls r2, r2, #2
	adds r1, r4, r2
	movs r0, #0x14
_08001662:
	str r0, [r1]
_08001664:
	movs r3, #0xd7
	lsls r3, r3, #2
	adds r0, r4, r3
	ldr r0, [r0]
	ldr r5, _08001674 @ =0x00001234
	adds r0, r0, r5
	b _08001912
	.align 2, 0
_08001674: .4byte 0x00001234
_08001678:
	movs r1, #0xca
	lsls r1, r1, #2
	adds r0, r4, r1
	ldr r1, [r0]
	cmp r1, #0
	bne _0800168C
	movs r2, #0xd6
	lsls r2, r2, #2
	adds r0, r4, r2
	str r1, [r0]
_0800168C:
	adds r0, r4, #0
	bl sub_08001160
	movs r3, #0xd0
	lsls r3, r3, #2
	adds r0, r4, r3
	ldr r0, [r0]
	cmp r0, #0
	beq _080016A0
	b _080017B6
_080016A0:
	movs r5, #0xcd
	lsls r5, r5, #2
	adds r0, r4, r5
	ldr r1, [r0]
	cmp r1, #1
	bne _080016B6
	movs r2, #0xcb
	lsls r2, r2, #2
	adds r0, r4, r2
	str r1, [r0]
	b _080017B6
_080016B6:
	ldr r2, _080016D0 @ =0x00001234
	movs r3, #0xd6
	lsls r3, r3, #2
	adds r1, r4, r3
	ldr r3, [r1]
	movs r5, #0xd2
	lsls r5, r5, #2
	adds r0, r4, r5
	ldr r5, [r0]
	cmp r5, r2
	bne _080016D4
	movs r0, #1
	b _080016DC
	.align 2, 0
_080016D0: .4byte 0x00001234
_080016D4:
	ldr r0, _08001704 @ =0x00001235
	cmp r5, r0
	bne _080016DE
	movs r0, #2
_080016DC:
	orrs r3, r0
_080016DE:
	str r3, [r1]
	movs r1, #0xd6
	lsls r1, r1, #2
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #3
	bne _08001708
	movs r2, #0xd5
	lsls r2, r2, #2
	adds r0, r4, r2
	ldr r0, [r0]
	cmp r0, #0
	bne _08001708
	movs r3, #0xcb
	lsls r3, r3, #2
	adds r1, r4, r3
	movs r0, #0xb
	b _080017B4
	.align 2, 0
_08001704: .4byte 0x00001235
_08001708:
	movs r5, #0xca
	lsls r5, r5, #2
	adds r0, r4, r5
	ldr r0, [r0]
	cmp r0, #0x1d
	bne _080017B6
	movs r0, #0xcb
	lsls r0, r0, #2
	adds r1, r4, r0
	movs r0, #1
	b _080017B4
_0800171E:
	movs r5, #0xca
	lsls r5, r5, #2
	adds r0, r4, r5
	ldr r1, [r0]
	cmp r1, #0
	bne _08001732
	movs r2, #0xd6
	lsls r2, r2, #2
	adds r0, r4, r2
	str r1, [r0]
_08001732:
	adds r0, r4, #0
	bl sub_08001160
	movs r3, #0xd0
	lsls r3, r3, #2
	adds r0, r4, r3
	ldr r0, [r0]
	cmp r0, #0
	bne _080017B6
	movs r5, #0xd5
	lsls r5, r5, #2
	adds r0, r4, r5
	ldr r0, [r0]
	cmp r0, #0
	beq _0800175A
	movs r0, #0xcb
	lsls r0, r0, #2
	adds r1, r4, r0
	movs r0, #0xa
	b _080017B4
_0800175A:
	ldr r2, _08001774 @ =0x00001234
	movs r3, #0xd6
	lsls r3, r3, #2
	adds r1, r4, r3
	ldr r3, [r1]
	movs r5, #0xd2
	lsls r5, r5, #2
	adds r0, r4, r5
	ldr r5, [r0]
	cmp r5, r2
	bne _08001778
	movs r0, #1
	b _08001780
	.align 2, 0
_08001774: .4byte 0x00001234
_08001778:
	ldr r0, _080017A8 @ =0x00001235
	cmp r5, r0
	bne _08001782
	movs r0, #2
_08001780:
	orrs r3, r0
_08001782:
	str r3, [r1]
	movs r1, #0xca
	lsls r1, r1, #2
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #5
	bne _080017B6
	movs r2, #0xd6
	lsls r2, r2, #2
	adds r0, r4, r2
	ldr r0, [r0]
	cmp r0, #3
	beq _080017AC
	movs r3, #0xcb
	lsls r3, r3, #2
	adds r1, r4, r3
	movs r0, #1
	b _080017B4
	.align 2, 0
_080017A8: .4byte 0x00001235
_080017AC:
	movs r5, #0xcb
	lsls r5, r5, #2
	adds r1, r4, r5
	movs r0, #0xc
_080017B4:
	str r0, [r1]
_080017B6:
	movs r1, #0xd7
	lsls r1, r1, #2
	adds r0, r4, r1
	ldr r0, [r0]
	ldr r2, _080017D0 @ =0x00000123
	adds r0, r0, r2
	ldr r1, _080017D4 @ =0x0400012A
	strh r0, [r1]
	subs r1, #2
	ldr r3, _080017D8 @ =0x00002083
	adds r0, r3, #0
	strh r0, [r1]
	b _080019E6
	.align 2, 0
_080017D0: .4byte 0x00000123
_080017D4: .4byte 0x0400012A
_080017D8: .4byte 0x00002083
_080017DC:
	movs r5, #0xca
	lsls r5, r5, #2
	adds r0, r4, r5
	ldr r0, [r0]
	cmp r0, #0xd
	beq _080017EA
	b _080019E6
_080017EA:
	movs r0, #0xcb
	lsls r0, r0, #2
	adds r1, r4, r0
	movs r0, #0xf
	str r0, [r1]
	b _080019E6
_080017F6:
	ldr r0, _08001828 @ =0x03000B50
	ldr r0, [r0]
	cmp r0, #0
	beq _08001800
	b _08001968
_08001800:
	movs r3, #0xca
	lsls r3, r3, #2
	adds r0, r4, r3
	ldr r0, [r0]
	cmp r0, #0
	bne _08001834
	movs r5, #0xcc
	lsls r5, r5, #2
	adds r2, r4, r5
	ldr r1, [r2]
	cmp r1, #1
	beq _0800181A
	b _080019E6
_0800181A:
	str r0, [r2]
	ldr r0, _0800182C @ =0x03000B58
	str r1, [r0]
	ldr r0, _08001830 @ =0x03001364
	str r1, [r0]
	b _080019E6
	.align 2, 0
_08001828: .4byte 0x03000B50
_0800182C: .4byte 0x03000B58
_08001830: .4byte 0x03001364
_08001834:
	movs r1, #0xcc
	lsls r1, r1, #2
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #2
	beq _08001842
	b _080019E6
_08001842:
	movs r1, #0
	ldr r2, _08001864 @ =0x000007B4
	adds r0, r4, r2
	ldr r0, [r0]
	cmp r0, #0
	bne _08001850
	movs r1, #1
_08001850:
	cmp r1, #0
	bne _08001856
	b _080019E6
_08001856:
	movs r3, #0xcb
	lsls r3, r3, #2
	adds r1, r4, r3
	movs r0, #0x10
	str r0, [r1]
	b _080019E6
	.align 2, 0
_08001864: .4byte 0x000007B4
_08001868:
	movs r5, #0xcb
	lsls r5, r5, #2
	adds r1, r4, r5
	b _0800196E
_08001870:
	movs r1, #0xca
	lsls r1, r1, #2
	adds r0, r4, r1
	ldr r1, [r0]
	cmp r1, #0
	bne _08001884
	movs r2, #0xd6
	lsls r2, r2, #2
	adds r0, r4, r2
	str r1, [r0]
_08001884:
	adds r0, r4, #0
	bl sub_08001160
	movs r3, #0xd0
	lsls r3, r3, #2
	adds r0, r4, r3
	ldr r0, [r0]
	cmp r0, #0
	bne _08001906
	movs r5, #0xd5
	lsls r5, r5, #2
	adds r0, r4, r5
	ldr r0, [r0]
	cmp r0, #0
	beq _080018AC
	movs r0, #0xcb
	lsls r0, r0, #2
	adds r1, r4, r0
	movs r0, #2
	b _08001904
_080018AC:
	ldr r2, _080018C8 @ =0x00000123
	movs r3, #0xd6
	lsls r3, r3, #2
	adds r1, r4, r3
	ldr r3, [r1]
	movs r5, #0xd1
	lsls r5, r5, #2
	adds r0, r4, r5
	ldr r5, [r0]
	cmp r5, r2
	bne _080018CC
	movs r0, #1
	b _080018D6
	.align 2, 0
_080018C8: .4byte 0x00000123
_080018CC:
	movs r0, #0x92
	lsls r0, r0, #1
	cmp r5, r0
	bne _080018D8
	movs r0, #2
_080018D6:
	orrs r3, r0
_080018D8:
	str r3, [r1]
	movs r1, #0xca
	lsls r1, r1, #2
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #5
	bne _08001906
	movs r2, #0xd6
	lsls r2, r2, #2
	adds r0, r4, r2
	ldr r0, [r0]
	cmp r0, #3
	beq _080018FC
	movs r3, #0xcb
	lsls r3, r3, #2
	adds r1, r4, r3
	movs r0, #1
	b _08001904
_080018FC:
	movs r5, #0xcb
	lsls r5, r5, #2
	adds r1, r4, r5
	movs r0, #0x15
_08001904:
	str r0, [r1]
_08001906:
	movs r1, #0xd7
	lsls r1, r1, #2
	adds r0, r4, r1
	ldr r0, [r0]
	ldr r2, _08001918 @ =0x00001234
_08001910:
	adds r0, r0, r2
_08001912:
	ldr r1, _0800191C @ =0x0400012A
	strh r0, [r1]
	b _080019E6
	.align 2, 0
_08001918: .4byte 0x00001234
_0800191C: .4byte 0x0400012A
_08001920:
	movs r3, #0xca
	lsls r3, r3, #2
	adds r0, r4, r3
	ldr r0, [r0]
	cmp r0, #5
	bne _080019E6
	movs r5, #0xcb
	lsls r5, r5, #2
	adds r1, r4, r5
	movs r0, #0x16
	str r0, [r1]
	b _080019E6
_08001938:
	movs r0, #0x64
	str r0, [r4]
	ldr r2, _08001954 @ =0x00006003
	ldr r1, _08001958 @ =0x04000134
	movs r0, #0
	strh r0, [r1]
	ldr r0, _0800195C @ =0x04000128
	strh r2, [r0]
	movs r0, #0xcb
	lsls r0, r0, #2
	adds r1, r4, r0
	movs r0, #0x19
	str r0, [r1]
	b _080019E6
	.align 2, 0
_08001954: .4byte 0x00006003
_08001958: .4byte 0x04000134
_0800195C: .4byte 0x04000128
_08001960:
	ldr r0, _08001974 @ =0x03000B50
	ldr r3, [r0]
	cmp r3, #0
	beq _08001978
_08001968:
	movs r2, #0xcb
	lsls r2, r2, #2
	adds r1, r4, r2
_0800196E:
	movs r0, #0
	str r0, [r1]
	b _080019E6
	.align 2, 0
_08001974: .4byte 0x03000B50
_08001978:
	movs r5, #0xca
	lsls r5, r5, #2
	adds r0, r4, r5
	ldr r2, [r0]
	cmp r2, #0
	bne _080019A0
	movs r0, #0xcc
	lsls r0, r0, #2
	adds r1, r4, r0
	ldr r0, [r1]
	cmp r0, #1
	bne _080019E6
	str r2, [r1]
	ldr r1, _0800199C @ =0x03000B58
	movs r0, #2
	str r0, [r1]
	b _080019E6
	.align 2, 0
_0800199C: .4byte 0x03000B58
_080019A0:
	ldr r5, _080019B8 @ =0x000007E4
	adds r1, r4, r5
	ldr r0, [r1]
	cmp r0, #0
	beq _080019BC
	str r3, [r1]
	movs r1, #0xcb
	lsls r1, r1, #2
	adds r0, r4, r1
	str r3, [r0]
	b _080019E6
	.align 2, 0
_080019B8: .4byte 0x000007E4
_080019BC:
	cmp r2, #0xf
	bls _080019E6
	movs r5, #3
	ands r5, r2
	cmp r5, #0
	bne _080019E6
	movs r2, #0xfc
	lsls r2, r2, #3
	adds r1, r4, r2
	ldr r0, [r1]
	cmp r0, #0
	bne _080019E4
	movs r0, #8
	bl sub_08001090
	movs r3, #0xcb
	lsls r3, r3, #2
	adds r0, r4, r3
	str r5, [r0]
	b _080019E6
_080019E4:
	str r5, [r1]
_080019E6:
	movs r5, #0xc9
	lsls r5, r5, #2
	adds r0, r4, r5
	ldr r0, [r0]
	subs r0, #0xf
	cmp r0, #1
	bhi _08001A04
	ldr r1, _08001A0C @ =sub_08001D40
	ldr r0, _08001A10 @ =0x08001A18
	subs r1, r1, r0
	ldr r0, _08001A14 @ =0x03003040
	adds r1, r1, r0
	adds r0, r4, #0
	bl sub_0803D79C
_08001A04:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08001A0C: .4byte sub_08001D40
_08001A10: .4byte 0x08001A18
_08001A14: .4byte 0x03003040

	thumb_func_start sub_08001A18
sub_08001A18: @ 0x08001A18
	bx r0

	non_word_aligned_thumb_func_start sub_08001A1A
sub_08001A1A: @ 0x08001A1A
	adds r3, r0, #0
	adds r0, r1, #0
	bx r3

	thumb_func_start sub_08001A20
sub_08001A20: @ 0x08001A20
	adds r3, r0, #0
	adds r0, r1, #0
	adds r1, r2, #0
	bx r3

	thumb_func_start sub_08001A28
sub_08001A28: @ 0x08001A28
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r2, _08001A44 @ =0x03000B60
	movs r0, #0xe1
	lsls r0, r0, #2
	adds r3, r2, r0
	ldr r0, _08001A48 @ =0x03000B50
	ldr r0, [r0]
	cmp r0, #0
	beq _08001A4C
	movs r0, #1
	rsbs r0, r0, #0
	b _08001AD0
	.align 2, 0
_08001A44: .4byte 0x03000B60
_08001A48: .4byte 0x03000B50
_08001A4C:
	ldr r0, _08001A58 @ =0x03001364
	ldr r0, [r0]
	cmp r0, #0
	bne _08001A5C
	movs r0, #0
	b _08001AD0
	.align 2, 0
_08001A58: .4byte 0x03001364
_08001A5C:
	movs r4, #0
	ldr r0, _08001A7C @ =0x000007B4
	adds r5, r2, r0
	ldr r0, [r5]
	cmp r0, #3
	bls _08001A6A
	movs r4, #1
_08001A6A:
	cmp r4, #0
	beq _08001A84
	ldr r0, _08001A80 @ =sub_08001090
	movs r1, #3
	bl sub_08001A1A
	movs r0, #1
	rsbs r0, r0, #0
	b _08001AD0
	.align 2, 0
_08001A7C: .4byte 0x000007B4
_08001A80: .4byte sub_08001090
_08001A84:
	movs r0, #0xf7
	lsls r0, r0, #3
	adds r2, r2, r0
	ldr r1, [r2]
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r3, r0, r3
	ldr r0, _08001AD8 @ =0x0000789A
	stm r3!, {r0}
	stm r3!, {r4}
	movs r0, #0x80
	lsls r0, r0, #8
	stm r3!, {r0}
	movs r1, #0
	adds r4, r2, #0
	adds r2, r6, #0
_08001AAA:
	ldm r2!, {r0}
	stm r3!, {r0}
	adds r1, #1
	cmp r1, #0x3f
	bls _08001AAA
	ldr r2, _08001ADC @ =0x04000208
	movs r0, #0
	strh r0, [r2]
	ldr r0, [r4]
	adds r0, #1
	movs r1, #3
	ands r0, r1
	str r0, [r4]
	ldr r0, [r5]
	adds r0, #1
	str r0, [r5]
	movs r0, #1
	strh r0, [r2]
	movs r0, #1
_08001AD0:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08001AD8: .4byte 0x0000789A
_08001ADC: .4byte 0x04000208

	thumb_func_start sub_08001AE0
sub_08001AE0: @ 0x08001AE0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov ip, r0
	mov sb, r1
	ldr r1, _08001B08 @ =0x03000B60
	movs r0, #0xe1
	lsls r0, r0, #2
	adds r2, r1, r0
	movs r0, #0
	mov r3, ip
	str r0, [r3]
	ldr r0, _08001B0C @ =0x03000B50
	ldr r0, [r0]
	cmp r0, #0
	beq _08001B10
	movs r0, #1
	rsbs r0, r0, #0
	b _08001BC4
	.align 2, 0
_08001B08: .4byte 0x03000B60
_08001B0C: .4byte 0x03000B50
_08001B10:
	ldr r0, _08001B54 @ =0x000007B4
	adds r6, r1, r0
	ldr r3, [r6]
	mov r8, r3
	cmp r3, #0
	beq _08001BC2
	ldr r0, _08001B58 @ =0x000007BC
	adds r3, r1, r0
	ldr r1, [r3]
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r4, r0, r2
	ldr r7, [r4]
	ldr r0, [r4, #8]
	lsrs r0, r0, #0xf
	movs r2, #1
	ands r0, r2
	ldr r1, [r4, #4]
	lsrs r1, r1, #0xf
	ands r1, r2
	lsls r0, r0, #1
	orrs r0, r1
	cmp r0, #2
	beq _08001B60
	ldr r0, _08001B5C @ =sub_08001090
	movs r1, #5
	bl sub_08001A1A
	movs r0, #1
	rsbs r0, r0, #0
	b _08001BC4
	.align 2, 0
_08001B54: .4byte 0x000007B4
_08001B58: .4byte 0x000007BC
_08001B5C: .4byte sub_08001090
_08001B60:
	ldr r0, _08001BA8 @ =0x0000789A
	adds r5, r3, #0
	cmp r7, r0
	bne _08001B80
	movs r3, #0
	adds r2, r4, #0
	mov r1, sb
_08001B6E:
	ldr r0, [r2, #0xc]
	stm r1!, {r0}
	adds r2, #4
	adds r3, #1
	cmp r3, #0x3f
	bls _08001B6E
	movs r0, #1
	mov r1, ip
	str r0, [r1]
_08001B80:
	ldr r2, _08001BAC @ =0x04000208
	movs r0, #0
	strh r0, [r2]
	ldr r0, [r5]
	adds r0, #1
	movs r1, #3
	ands r0, r1
	str r0, [r5]
	ldr r0, [r6]
	subs r0, #1
	str r0, [r6]
	movs r0, #1
	strh r0, [r2]
	ldr r0, _08001BB0 @ =0x00009ABC
	cmp r7, r0
	bne _08001BB8
	ldr r1, _08001BB4 @ =0x03000B58
	movs r0, #0
	str r0, [r1]
	b _08001BC4
	.align 2, 0
_08001BA8: .4byte 0x0000789A
_08001BAC: .4byte 0x04000208
_08001BB0: .4byte 0x00009ABC
_08001BB4: .4byte 0x03000B58
_08001BB8:
	mov r3, r8
	cmp r3, #1
	beq _08001BC2
	movs r0, #2
	b _08001BC4
_08001BC2:
	movs r0, #1
_08001BC4:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08001BD0
sub_08001BD0: @ 0x08001BD0
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldr r0, _08001BF0 @ =0x03000B60
	movs r1, #0xf8
	lsls r1, r1, #3
	adds r5, r0, r1
	ldr r0, _08001BF4 @ =0x03000B50
	ldr r0, [r0]
	cmp r0, #0
	bne _08001C50
	ldr r0, _08001BF8 @ =0x03001364
	ldr r0, [r0]
	cmp r0, #0
	bne _08001BFC
	movs r0, #0
	b _08001C54
	.align 2, 0
_08001BF0: .4byte 0x03000B60
_08001BF4: .4byte 0x03000B50
_08001BF8: .4byte 0x03001364
_08001BFC:
	movs r4, #0
	ldr r6, [r5, #0x10]
	cmp r6, #3
	bls _08001C06
	movs r4, #1
_08001C06:
	cmp r4, #0
	bne _08001C48
	ldr r3, [r5, #0x14]
	lsls r2, r3, #2
	adds r2, r2, r5
	ldr r0, _08001C3C @ =0x00007FFF
	ands r0, r7
	strh r0, [r2]
	movs r1, #0xf
	lsrs r0, r7, #0xf
	ands r0, r1
	ldr r7, _08001C40 @ =0x00008010
	adds r1, r7, #0
	orrs r0, r1
	strh r0, [r2, #2]
	ldr r1, _08001C44 @ =0x04000208
	strh r4, [r1]
	adds r3, #1
	movs r0, #3
	ands r3, r0
	str r3, [r5, #0x14]
	adds r0, r6, #1
	str r0, [r5, #0x10]
	movs r0, #1
	strh r0, [r1]
	movs r0, #1
	b _08001C54
	.align 2, 0
_08001C3C: .4byte 0x00007FFF
_08001C40: .4byte 0x00008010
_08001C44: .4byte 0x04000208
_08001C48:
	ldr r0, _08001C5C @ =sub_08001090
	movs r1, #3
	bl sub_08001A1A
_08001C50:
	movs r0, #1
	rsbs r0, r0, #0
_08001C54:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08001C5C: .4byte sub_08001090

	thumb_func_start sub_08001C60
sub_08001C60: @ 0x08001C60
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov sl, r0
	str r1, [sp]
	ldr r1, _08001C90 @ =0x03000B60
	movs r0, #0xf8
	lsls r0, r0, #3
	adds r0, r0, r1
	mov r8, r0
	movs r0, #0
	mov r2, sl
	str r0, [r2]
	ldr r0, _08001C94 @ =0x03000B50
	ldr r0, [r0]
	mov sb, r0
	cmp r0, #0
	beq _08001C98
	movs r0, #1
	rsbs r0, r0, #0
	b _08001D30
	.align 2, 0
_08001C90: .4byte 0x03000B60
_08001C94: .4byte 0x03000B50
_08001C98:
	mov r0, r8
	ldr r0, [r0, #0x10]
	mov ip, r0
	cmp r0, #0
	bne _08001CBC
	movs r2, #0xc9
	lsls r2, r2, #2
	adds r0, r1, r2
	ldr r0, [r0]
	cmp r0, #0
	bne _08001D2E
	ldr r0, _08001CB8 @ =0x03000B58
	mov r1, ip
	str r1, [r0]
	movs r0, #0
	b _08001D30
	.align 2, 0
_08001CB8: .4byte 0x03000B58
_08001CBC:
	mov r2, r8
	ldr r3, [r2, #0x18]
	lsls r0, r3, #2
	add r0, r8
	ldrh r2, [r0]
	ldrh r1, [r0, #2]
	lsrs r4, r1, #0xf
	movs r7, #1
	lsrs r0, r2, #0xf
	lsls r4, r4, #1
	orrs r4, r0
	lsrs r6, r1, #4
	ands r6, r7
	movs r0, #0xf
	ands r1, r0
	ldr r0, _08001D0C @ =0x00007FFF
	ands r2, r0
	lsls r5, r1, #0xf
	orrs r5, r2
	ldr r1, _08001D10 @ =0x04000208
	mov r0, sb
	strh r0, [r1]
	adds r3, #1
	movs r0, #3
	ands r3, r0
	mov r2, r8
	str r3, [r2, #0x18]
	mov r0, ip
	subs r0, #1
	str r0, [r2, #0x10]
	strh r7, [r1]
	cmp r4, #2
	beq _08001D18
	ldr r0, _08001D14 @ =sub_08001090
	movs r1, #5
	bl sub_08001A1A
	movs r0, #1
	rsbs r0, r0, #0
	b _08001D30
	.align 2, 0
_08001D0C: .4byte 0x00007FFF
_08001D10: .4byte 0x04000208
_08001D14: .4byte sub_08001090
_08001D18:
	cmp r6, #0
	beq _08001D24
	ldr r0, [sp]
	str r5, [r0]
	mov r1, sl
	str r7, [r1]
_08001D24:
	mov r2, ip
	cmp r2, #1
	beq _08001D2E
	movs r0, #2
	b _08001D30
_08001D2E:
	movs r0, #1
_08001D30:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08001D40
sub_08001D40: @ 0x08001D40
	push {r4, r5, lr}
	adds r3, r0, #0
	movs r1, #0xc9
	lsls r1, r1, #2
	adds r0, r3, r1
	ldr r0, [r0]
	cmp r0, #0xf
	bne _08001DEC
	movs r2, #0xe1
	lsls r2, r2, #2
	adds r4, r3, r2
	movs r1, #0
	ldr r5, _08001D8C @ =0x000007B4
	adds r0, r3, r5
	ldr r0, [r0]
	cmp r0, #0
	bne _08001D64
	movs r1, #1
_08001D64:
	cmp r1, #0
	beq _08001DA4
	ldr r2, _08001D90 @ =0x000089AB
	ldr r0, _08001D94 @ =0x0400012A
	strh r2, [r0]
	ldr r1, _08001D98 @ =0x04000128
	ldr r4, _08001D9C @ =0x00002083
	adds r0, r4, #0
	strh r0, [r1]
	ldr r5, _08001DA0 @ =0x000007DC
	adds r0, r3, r5
	str r2, [r0]
	movs r0, #0xfd
	lsls r0, r0, #3
	adds r1, r3, r0
	movs r2, #0xfe
	lsls r2, r2, #3
	adds r0, r3, r2
	b _08001E0C
	.align 2, 0
_08001D8C: .4byte 0x000007B4
_08001D90: .4byte 0x000089AB
_08001D94: .4byte 0x0400012A
_08001D98: .4byte 0x04000128
_08001D9C: .4byte 0x00002083
_08001DA0: .4byte 0x000007DC
_08001DA4:
	ldr r2, _08001DD4 @ =0x0000789A
	ldr r0, _08001DD8 @ =0x0400012A
	strh r2, [r0]
	ldr r1, _08001DDC @ =0x04000128
	ldr r5, _08001DE0 @ =0x00002083
	adds r0, r5, #0
	strh r0, [r1]
	ldr r1, _08001DE4 @ =0x000007DC
	adds r0, r3, r1
	str r2, [r0]
	ldr r2, _08001DE8 @ =0x000007BC
	adds r0, r3, r2
	ldr r1, [r0]
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r4, r0
	movs r4, #0xfd
	lsls r4, r4, #3
	adds r1, r3, r4
	adds r0, #4
	b _08001E0C
	.align 2, 0
_08001DD4: .4byte 0x0000789A
_08001DD8: .4byte 0x0400012A
_08001DDC: .4byte 0x04000128
_08001DE0: .4byte 0x00002083
_08001DE4: .4byte 0x000007DC
_08001DE8: .4byte 0x000007BC
_08001DEC:
	ldr r2, _08001E2C @ =0x00009ABC
	ldr r0, _08001E30 @ =0x0400012A
	strh r2, [r0]
	ldr r1, _08001E34 @ =0x04000128
	ldr r5, _08001E38 @ =0x00002083
	adds r0, r5, #0
	strh r0, [r1]
	ldr r1, _08001E3C @ =0x000007DC
	adds r0, r3, r1
	str r2, [r0]
	movs r2, #0xfd
	lsls r2, r2, #3
	adds r1, r3, r2
	movs r4, #0xfe
	lsls r4, r4, #3
	adds r0, r3, r4
_08001E0C:
	str r0, [r1]
	movs r5, #0xf8
	lsls r5, r5, #3
	adds r1, r3, r5
	movs r2, #0
	ldr r0, [r1, #0x10]
	cmp r0, #3
	bls _08001E1E
	movs r2, #1
_08001E1E:
	cmp r2, #0
	beq _08001E44
	ldr r0, _08001E40 @ =sub_08001090
	movs r1, #4
	bl sub_08001A1A
	b _08001E5A
	.align 2, 0
_08001E2C: .4byte 0x00009ABC
_08001E30: .4byte 0x0400012A
_08001E34: .4byte 0x04000128
_08001E38: .4byte 0x00002083
_08001E3C: .4byte 0x000007DC
_08001E40: .4byte sub_08001090
_08001E44:
	ldr r0, [r1, #0x14]
	lsls r0, r0, #2
	adds r0, r1, r0
	ldr r2, _08001E60 @ =0x000007FC
	adds r1, r3, r2
	str r0, [r1]
	ldr r1, _08001E64 @ =0x04000108
	ldr r0, _08001E68 @ =0x00C0D4B0
	str r0, [r1]
	movs r0, #1
	str r0, [r3]
_08001E5A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08001E60: .4byte 0x000007FC
_08001E64: .4byte 0x04000108
_08001E68: .4byte 0x00C0D4B0

	thumb_func_start sub_08001E6C
sub_08001E6C: @ 0x08001E6C
	movs r1, #0xfd
	lsls r1, r1, #3
	adds r2, r0, r1
	ldr r1, [r2]
	ldm r1!, {r3}
	str r1, [r2]
	ldr r1, _08001E8C @ =0x0400012A
	strh r3, [r1]
	ldr r2, _08001E90 @ =0x04000128
	ldr r3, _08001E94 @ =0x00002083
	adds r1, r3, #0
	strh r1, [r2]
	movs r1, #2
	str r1, [r0]
	bx lr
	.align 2, 0
_08001E8C: .4byte 0x0400012A
_08001E90: .4byte 0x04000128
_08001E94: .4byte 0x00002083

	thumb_func_start sub_08001E98
sub_08001E98: @ 0x08001E98
	ldr r1, _08001EC4 @ =0x04000122
	ldrh r2, [r1]
	ldr r3, _08001EC8 @ =0x000007FC
	adds r1, r0, r3
	ldr r1, [r1]
	strh r2, [r1]
	movs r1, #0xfd
	lsls r1, r1, #3
	adds r2, r0, r1
	ldr r1, [r2]
	ldm r1!, {r3}
	str r1, [r2]
	ldr r1, _08001ECC @ =0x0400012A
	strh r3, [r1]
	ldr r2, _08001ED0 @ =0x04000128
	ldr r3, _08001ED4 @ =0x00002083
	adds r1, r3, #0
	strh r1, [r2]
	movs r1, #3
	str r1, [r0]
	bx lr
	.align 2, 0
_08001EC4: .4byte 0x04000122
_08001EC8: .4byte 0x000007FC
_08001ECC: .4byte 0x0400012A
_08001ED0: .4byte 0x04000128
_08001ED4: .4byte 0x00002083

	thumb_func_start sub_08001ED8
sub_08001ED8: @ 0x08001ED8
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _08001F14 @ =0x04000122
	ldrh r0, [r0]
	adds r5, r0, #0
	ldr r1, _08001F18 @ =0x000007FC
	adds r0, r4, r1
	ldr r0, [r0]
	strh r5, [r0, #2]
	movs r0, #0xf8
	lsls r0, r0, #3
	adds r2, r4, r0
	ldr r0, [r2, #0x14]
	adds r0, #1
	movs r1, #3
	ands r0, r1
	str r0, [r2, #0x14]
	ldr r0, [r2, #0x10]
	adds r0, #1
	str r0, [r2, #0x10]
	ldr r1, _08001F1C @ =0x000007DC
	adds r0, r4, r1
	ldr r1, [r0]
	ldr r0, _08001F20 @ =0x0000789A
	cmp r1, r0
	beq _08001F28
	ldr r1, _08001F24 @ =0x0400010A
	movs r0, #0
	strh r0, [r1]
	b _08001F52
	.align 2, 0
_08001F14: .4byte 0x04000122
_08001F18: .4byte 0x000007FC
_08001F1C: .4byte 0x000007DC
_08001F20: .4byte 0x0000789A
_08001F24: .4byte 0x0400010A
_08001F28:
	ldr r1, _08001F64 @ =0x04000134
	movs r0, #0
	strh r0, [r1]
	ldr r3, _08001F68 @ =0x04000128
	ldr r1, _08001F6C @ =0x00001001
	adds r0, r1, #0
	strh r0, [r3]
	movs r0, #0xfd
	lsls r0, r0, #3
	adds r1, r4, r0
	ldr r0, [r1]
	ldm r0!, {r2}
	str r0, [r1]
	ldr r0, _08001F70 @ =0x04000120
	str r2, [r0]
	ldr r1, _08001F74 @ =0x00001081
	adds r0, r1, #0
	strh r0, [r3]
	ldr r1, _08001F78 @ =0x04000108
	ldr r0, _08001F7C @ =0x00C0F3F8
	str r0, [r1]
_08001F52:
	lsls r0, r5, #0x11
	lsrs r0, r0, #0x16
	ldr r1, _08001F80 @ =0x03001368
	str r0, [r1]
	movs r0, #4
	str r0, [r4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08001F64: .4byte 0x04000134
_08001F68: .4byte 0x04000128
_08001F6C: .4byte 0x00001001
_08001F70: .4byte 0x04000120
_08001F74: .4byte 0x00001081
_08001F78: .4byte 0x04000108
_08001F7C: .4byte 0x00C0F3F8
_08001F80: .4byte 0x03001368

	thumb_func_start sub_08001F84
sub_08001F84: @ 0x08001F84
	push {r4, lr}
	movs r2, #0xfd
	lsls r2, r2, #3
	adds r3, r0, r2
	ldr r2, [r3]
	ldm r2!, {r4}
	str r2, [r3]
	ldr r2, _08001FA8 @ =0x04000120
	str r4, [r2]
	ldr r3, _08001FAC @ =0x04000128
	ldr r4, _08001FB0 @ =0x00001081
	adds r2, r4, #0
	strh r2, [r3]
	adds r1, #1
	str r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08001FA8: .4byte 0x04000120
_08001FAC: .4byte 0x04000128
_08001FB0: .4byte 0x00001081

	thumb_func_start sub_08001FB4
sub_08001FB4: @ 0x08001FB4
	ldr r1, _08001FE4 @ =0x000007BC
	adds r3, r0, r1
	ldr r1, [r3]
	adds r1, #1
	movs r2, #3
	ands r1, r2
	str r1, [r3]
	ldr r1, _08001FE8 @ =0x000007B4
	adds r2, r0, r1
	ldr r1, [r2]
	subs r1, #1
	str r1, [r2]
	ldr r3, _08001FEC @ =0x00002003
	ldr r1, _08001FF0 @ =0x04000134
	movs r2, #0
	strh r2, [r1]
	subs r1, #0xc
	strh r3, [r1]
	subs r1, #0x1e
	strh r2, [r1]
	movs r1, #0
	str r1, [r0]
	bx lr
	.align 2, 0
_08001FE4: .4byte 0x000007BC
_08001FE8: .4byte 0x000007B4
_08001FEC: .4byte 0x00002003
_08001FF0: .4byte 0x04000134

	thumb_func_start sub_08001FF4
sub_08001FF4: @ 0x08001FF4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r3, r0, #0
	movs r2, #0
	ldr r6, _08002028 @ =0x08001A18
	ldr r5, _0800202C @ =0x03003040
	ldr r7, _08002030 @ =sub_08001D40
	ldr r0, _08002034 @ =sub_08001E6C
	mov ip, r0
	ldr r1, _08002038 @ =sub_08001E98
	mov r8, r1
	ldr r4, _0800203C @ =sub_08001ED8
	mov sb, r4
	ldr r0, _08002040 @ =sub_08001FB4
	subs r0, r0, r6
	adds r4, r0, r5
	ldr r0, _08002044 @ =sub_08001F84
	subs r0, r0, r6
	adds r0, r0, r5
	adds r1, r3, #4
_08002020:
	cmp r2, #0x42
	bls _08002048
	str r4, [r1]
	b _0800204A
	.align 2, 0
_08002028: .4byte 0x08001A18
_0800202C: .4byte 0x03003040
_08002030: .4byte sub_08001D40
_08002034: .4byte sub_08001E6C
_08002038: .4byte sub_08001E98
_0800203C: .4byte sub_08001ED8
_08002040: .4byte sub_08001FB4
_08002044: .4byte sub_08001F84
_08002048:
	str r0, [r1]
_0800204A:
	adds r1, #4
	adds r2, #1
	cmp r2, #0x63
	bls _08002020
	movs r2, #0
	subs r0, r7, r6
	adds r0, r0, r5
	str r0, [r3, #4]
	mov r1, ip
	subs r0, r1, r6
	adds r0, r0, r5
	str r0, [r3, #8]
	mov r4, r8
	subs r0, r4, r6
	adds r0, r0, r5
	str r0, [r3, #0xc]
	mov r1, sb
	subs r0, r1, r6
	adds r0, r0, r5
	str r0, [r3, #0x10]
	movs r4, #0xfe
	lsls r4, r4, #3
	adds r0, r3, r4
	str r2, [r0]
	ldr r1, _0800209C @ =0x000007F4
	adds r0, r3, r1
	movs r1, #0x80
	lsls r1, r1, #8
	str r1, [r0]
	adds r4, #0x10
	adds r0, r3, r4
	strh r2, [r0]
	ldr r2, _080020A0 @ =0x00000802
	adds r0, r3, r2
	strh r1, [r0]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800209C: .4byte 0x000007F4
_080020A0: .4byte 0x00000802

	thumb_func_start sub_080020A4
sub_080020A4: @ 0x080020A4
	push {r4, r5, lr}
	adds r3, r0, #0
	movs r0, #0xe1
	lsls r0, r0, #2
	adds r2, r3, r0
	movs r1, #0xf8
	lsls r1, r1, #3
	adds r4, r3, r1
	movs r1, #0
	ldr r5, _080020D0 @ =0x000007B4
	adds r0, r3, r5
	ldr r0, [r0]
	cmp r0, #3
	bls _080020C2
	movs r1, #1
_080020C2:
	cmp r1, #0
	beq _080020D8
	ldr r0, _080020D4 @ =sub_08001090
	movs r1, #4
	bl sub_08001A1A
	b _08002148
	.align 2, 0
_080020D0: .4byte 0x000007B4
_080020D4: .4byte sub_08001090
_080020D8:
	movs r1, #0xf7
	lsls r1, r1, #3
	adds r0, r3, r1
	ldr r1, [r0]
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r2, r0
	ldr r5, _0800211C @ =0x000007EC
	adds r2, r3, r5
	ldr r1, _08002120 @ =0x04000120
	ldrh r1, [r1]
	stm r0!, {r1}
	str r0, [r2]
	ldr r2, _08002124 @ =0x000007DC
	adds r0, r3, r2
	str r1, [r0]
	movs r1, #0
	ldr r0, [r4, #0x10]
	cmp r0, #0
	bne _08002108
	movs r1, #1
_08002108:
	cmp r1, #0
	beq _08002128
	movs r5, #0xff
	lsls r5, r5, #3
	adds r1, r3, r5
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r3, r2
	b _08002134
	.align 2, 0
_0800211C: .4byte 0x000007EC
_08002120: .4byte 0x04000120
_08002124: .4byte 0x000007DC
_08002128:
	ldr r0, [r4, #0x18]
	lsls r0, r0, #2
	adds r0, r4, r0
	movs r5, #0xff
	lsls r5, r5, #3
	adds r1, r3, r5
_08002134:
	str r0, [r1]
	movs r1, #0xff
	lsls r1, r1, #3
	adds r0, r3, r1
	ldr r0, [r0]
	ldrh r1, [r0]
	ldr r0, _08002150 @ =0x0400012A
	strh r1, [r0]
	movs r0, #0x65
	str r0, [r3]
_08002148:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08002150: .4byte 0x0400012A

	thumb_func_start sub_08002154
sub_08002154: @ 0x08002154
	push {lr}
	adds r3, r0, #0
	ldr r0, _080021C0 @ =0x04000120
	ldrh r2, [r0]
	ldr r0, _080021C4 @ =0x000007EC
	adds r1, r3, r0
	ldr r0, [r1]
	stm r0!, {r2}
	str r0, [r1]
	ldr r0, _080021C8 @ =0x04000130
	ldrh r1, [r0]
	ldr r2, _080021CC @ =0x000003FF
	adds r0, r2, #0
	eors r0, r1
	movs r1, #0xff
	lsls r1, r1, #3
	adds r2, r3, r1
	ldr r1, [r2]
	ldrh r1, [r1, #2]
	lsls r0, r0, #5
	orrs r1, r0
	ldr r0, _080021D0 @ =0x0400012A
	strh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #4
	adds r1, r3, r0
	ldr r0, [r2]
	cmp r0, r1
	beq _080021A4
	movs r1, #0xf8
	lsls r1, r1, #3
	adds r2, r3, r1
	ldr r0, [r2, #0x18]
	adds r0, #1
	movs r1, #3
	ands r0, r1
	str r0, [r2, #0x18]
	ldr r0, [r2, #0x10]
	subs r0, #1
	str r0, [r2, #0x10]
_080021A4:
	movs r2, #0xfc
	lsls r2, r2, #3
	adds r0, r3, r2
	movs r2, #1
	str r2, [r0]
	ldr r1, _080021D4 @ =0x03001364
	ldr r0, [r1]
	cmp r0, #0
	bne _080021B8
	str r2, [r1]
_080021B8:
	movs r0, #0x66
	str r0, [r3]
	pop {r0}
	bx r0
	.align 2, 0
_080021C0: .4byte 0x04000120
_080021C4: .4byte 0x000007EC
_080021C8: .4byte 0x04000130
_080021CC: .4byte 0x000003FF
_080021D0: .4byte 0x0400012A
_080021D4: .4byte 0x03001364

	thumb_func_start sub_080021D8
sub_080021D8: @ 0x080021D8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08002210 @ =0x04000120
	ldrh r2, [r0]
	ldr r0, _08002214 @ =0x000007EC
	adds r1, r4, r0
	ldr r0, [r1]
	stm r0!, {r2}
	str r0, [r1]
	ldr r1, _08002218 @ =0x000007DC
	adds r0, r4, r1
	ldr r1, [r0]
	ldr r0, _0800221C @ =0x0000789A
	cmp r1, r0
	bne _08002224
	movs r2, #0xa0
	lsls r2, r2, #7
	ldr r1, _08002220 @ =0x04000134
	movs r0, #0
	strh r0, [r1]
	subs r1, #0xc
	strh r2, [r1]
	movs r0, #0xa1
	lsls r0, r0, #7
	strh r0, [r1]
	movs r0, #0x67
	b _080022B2
	.align 2, 0
_08002210: .4byte 0x04000120
_08002214: .4byte 0x000007EC
_08002218: .4byte 0x000007DC
_0800221C: .4byte 0x0000789A
_08002220: .4byte 0x04000134
_08002224:
	ldr r0, _08002248 @ =0x000089AB
	cmp r1, r0
	bne _08002250
	movs r0, #0xf7
	lsls r0, r0, #3
	adds r2, r4, r0
	ldr r0, [r2]
	adds r0, #1
	movs r1, #3
	ands r0, r1
	str r0, [r2]
	ldr r0, _0800224C @ =0x000007B4
	adds r1, r4, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	b _080022B0
	.align 2, 0
_08002248: .4byte 0x000089AB
_0800224C: .4byte 0x000007B4
_08002250:
	ldr r0, _0800228C @ =0x00009ABC
	cmp r1, r0
	bne _080022A8
	movs r1, #0xf7
	lsls r1, r1, #3
	adds r2, r4, r1
	ldr r0, [r2]
	adds r0, #1
	movs r1, #3
	ands r0, r1
	str r0, [r2]
	ldr r0, _08002290 @ =0x000007B4
	adds r1, r4, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r2, _08002294 @ =0x00002003
	ldr r1, _08002298 @ =0x04000134
	movs r0, #0
	strh r0, [r1]
	ldr r0, _0800229C @ =0x04000128
	strh r2, [r0]
	ldr r1, _080022A0 @ =0x03001364
	movs r0, #0
	str r0, [r1]
	ldr r0, _080022A4 @ =0x000007E4
	adds r1, r4, r0
	movs r0, #1
	str r0, [r1]
	b _080022B0
	.align 2, 0
_0800228C: .4byte 0x00009ABC
_08002290: .4byte 0x000007B4
_08002294: .4byte 0x00002003
_08002298: .4byte 0x04000134
_0800229C: .4byte 0x04000128
_080022A0: .4byte 0x03001364
_080022A4: .4byte 0x000007E4
_080022A8:
	ldr r0, _080022BC @ =sub_08001090
	movs r1, #7
	bl sub_08001A1A
_080022B0:
	movs r0, #0x64
_080022B2:
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080022BC: .4byte sub_08001090

	thumb_func_start sub_080022C0
sub_080022C0: @ 0x080022C0
	push {r4, lr}
	ldr r2, _080022E4 @ =0x04000120
	ldr r4, [r2]
	ldr r2, _080022E8 @ =0x000007EC
	adds r3, r0, r2
	ldr r2, [r3]
	stm r2!, {r4}
	str r2, [r3]
	movs r3, #0xa1
	lsls r3, r3, #7
	ldr r2, _080022EC @ =0x04000128
	strh r3, [r2]
	adds r1, #1
	str r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080022E4: .4byte 0x04000120
_080022E8: .4byte 0x000007EC
_080022EC: .4byte 0x04000128

	thumb_func_start sub_080022F0
sub_080022F0: @ 0x080022F0
	ldr r1, _08002328 @ =0x04000120
	ldr r2, [r1]
	ldr r3, _0800232C @ =0x000007EC
	adds r1, r0, r3
	ldr r1, [r1]
	str r2, [r1]
	movs r1, #0xf7
	lsls r1, r1, #3
	adds r3, r0, r1
	ldr r1, [r3]
	adds r1, #1
	movs r2, #3
	ands r1, r2
	str r1, [r3]
	ldr r3, _08002330 @ =0x000007B4
	adds r2, r0, r3
	ldr r1, [r2]
	adds r1, #1
	str r1, [r2]
	ldr r3, _08002334 @ =0x00006003
	ldr r2, _08002338 @ =0x04000134
	movs r1, #0
	strh r1, [r2]
	ldr r1, _0800233C @ =0x04000128
	strh r3, [r1]
	movs r1, #0x64
	str r1, [r0]
	bx lr
	.align 2, 0
_08002328: .4byte 0x04000120
_0800232C: .4byte 0x000007EC
_08002330: .4byte 0x000007B4
_08002334: .4byte 0x00006003
_08002338: .4byte 0x04000134
_0800233C: .4byte 0x04000128

	thumb_func_start sub_08002340
sub_08002340: @ 0x08002340
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r3, r0, #0
	movs r2, #0
	ldr r5, _08002378 @ =0x08001A18
	ldr r6, _0800237C @ =0x03003040
	ldr r0, _08002380 @ =sub_080020A4
	mov sb, r0
	ldr r7, _08002384 @ =sub_08002154
	mov ip, r7
	ldr r0, _08002388 @ =sub_080021D8
	mov r8, r0
	ldr r0, _0800238C @ =sub_080022F0
	subs r0, r0, r5
	adds r4, r0, r6
	ldr r0, _08002390 @ =sub_080022C0
	subs r0, r0, r5
	adds r0, r0, r6
	movs r7, #0xca
	lsls r7, r7, #1
	adds r1, r3, r7
_0800236E:
	cmp r2, #0x41
	bls _08002394
	str r4, [r1]
	b _08002396
	.align 2, 0
_08002378: .4byte 0x08001A18
_0800237C: .4byte 0x03003040
_08002380: .4byte sub_080020A4
_08002384: .4byte sub_08002154
_08002388: .4byte sub_080021D8
_0800238C: .4byte sub_080022F0
_08002390: .4byte sub_080022C0
_08002394:
	str r0, [r1]
_08002396:
	adds r1, #4
	adds r2, #1
	cmp r2, #0x63
	bls _0800236E
	movs r0, #0xca
	lsls r0, r0, #1
	adds r1, r3, r0
	mov r2, sb
	subs r0, r2, r5
	adds r0, r0, r6
	str r0, [r1]
	movs r7, #0xcc
	lsls r7, r7, #1
	adds r1, r3, r7
	mov r2, ip
	subs r0, r2, r5
	adds r0, r0, r6
	str r0, [r1]
	adds r7, #4
	adds r1, r3, r7
	mov r2, r8
	subs r0, r2, r5
	adds r0, r0, r6
	str r0, [r1]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080023D4
sub_080023D4: @ 0x080023D4
	add r2, pc, #0x0 @ =sub_080023D8
	bx r2

	arm_func_start sub_080023D8
sub_080023D8: @ 0x080023D8
	umull r2, r3, r0, r1
	add r0, r3, #0
	bx lr

	thumb_func_start sub_080023E4
sub_080023E4: @ 0x080023E4
	ldr r0, _08002450 @ =0x03007FF0
	ldr r0, [r0]
	ldr r2, _08002454 @ =0x68736D53
	ldr r3, [r0]
	cmp r2, r3
	beq _080023F2
	bx lr
_080023F2:
	adds r3, #1
	str r3, [r0]
	push {r4, r5, r6, r7, lr}
	mov r1, r8
	mov r2, sb
	mov r3, sl
	mov r4, fp
	push {r0, r1, r2, r3, r4}
	sub sp, #0x18
	ldrb r1, [r0, #0xc]
	cmp r1, #0
	beq _08002416
	ldr r2, _0800245C @ =0x04000006
	ldrb r2, [r2]
	cmp r2, #0xa0
	bhs _08002414
	adds r2, #0xe4
_08002414:
	adds r1, r1, r2
_08002416:
	str r1, [sp, #0x14]
	ldr r3, [r0, #0x20]
	cmp r3, #0
	beq _08002426
	ldr r0, [r0, #0x24]
	bl sub_08002806
	ldr r0, [sp, #0x18]
_08002426:
	ldr r3, [r0, #0x28]
	bl sub_08002806
	ldr r0, [sp, #0x18]
	ldr r3, [r0, #0x10]
	mov r8, r3
	ldr r5, _08002460 @ =0x00000350
	adds r5, r5, r0
	ldrb r4, [r0, #4]
	subs r7, r4, #1
	bls _08002446
	ldrb r1, [r0, #0xb]
	subs r1, r1, r7
	mov r2, r8
	muls r2, r1, r2
	adds r5, r5, r2
_08002446:
	str r5, [sp, #8]
	ldr r6, _08002464 @ =0x00000630
	ldr r3, _08002458 @ =0x03000749
	bx r3
	.align 2, 0
_08002450: .4byte 0x03007FF0
_08002454: .4byte 0x68736D53
_08002458: .4byte 0x03000749
_0800245C: .4byte 0x04000006
_08002460: .4byte 0x00000350
_08002464: .4byte 0x00000630

	thumb_func_start sub_08002468
sub_08002468: @ 0x08002468
	ldrb r3, [r0, #5]
	cmp r3, #0
	beq sub_080024C8
	add r1, pc, #0x4 @ =sub_08002474
	bx r1
	.align 2, 0

	arm_func_start sub_08002474
sub_08002474: @ 0x08002474
	cmp r4, #2
	addeq r7, r0, #0x350
	addne r7, r5, r8
	mov r4, r8
_08002484:
	ldrsb r0, [r5, r6]
	ldrsb r1, [r5]
	add r0, r0, r1
	ldrsb r1, [r7, r6]
	add r0, r0, r1
	ldrsb r1, [r7], #1
	add r0, r0, r1
	mul r1, r0, r3
	asr r0, r1, #9
	tst r0, #0x80
	addne r0, r0, #1
	strb r0, [r5, r6]
	strb r0, [r5], #1
	subs r4, r4, #1
	bgt _08002484
	add r0, pc, #0x2F @ =sub_080024F6
	bx r0

	thumb_func_start sub_080024C8
sub_080024C8: @ 0x080024C8
	movs r0, #0
	mov r1, r8
	adds r6, r6, r5
	lsrs r1, r1, #3
	blo _080024D6
	stm r5!, {r0}
	stm r6!, {r0}
_080024D6:
	lsrs r1, r1, #1
	blo _080024E2
	stm r5!, {r0}
	stm r6!, {r0}
	stm r5!, {r0}
	stm r6!, {r0}
_080024E2:
	stm r5!, {r0}
	stm r6!, {r0}
	stm r5!, {r0}
	stm r6!, {r0}
	stm r5!, {r0}
	stm r6!, {r0}
	stm r5!, {r0}
	stm r6!, {r0}
	subs r1, #1
	bgt _080024E2

	non_word_aligned_thumb_func_start sub_080024F6
sub_080024F6: @ 0x080024F6
	ldr r4, [sp, #0x18]
	ldr r0, [r4, #0x18]
	mov ip, r0
	ldrb r0, [r4, #6]
	adds r4, #0x50
_08002500:
	str r0, [sp, #4]
	ldr r3, [r4, #0x24]
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _08002520
	ldr r1, _0800251C @ =0x04000006
	ldrb r1, [r1]
	cmp r1, #0xa0
	bhs _08002514
	adds r1, #0xe4
_08002514:
	cmp r1, r0
	blo _08002520
	b _080027F2
	.align 2, 0
_0800251C: .4byte 0x04000006
_08002520:
	ldrb r6, [r4]
	movs r0, #0xc7
	tst r0, r6
	bne _0800252A
	b sub_080027E8
_0800252A:
	movs r0, #0x80
	tst r0, r6
	beq _0800255A
	movs r0, #0x40
	tst r0, r6
	bne _0800256A
	movs r6, #3
	strb r6, [r4]
	adds r0, r3, #0
	adds r0, #0x10
	str r0, [r4, #0x28]
	ldr r0, [r3, #0xc]
	str r0, [r4, #0x18]
	movs r5, #0
	strb r5, [r4, #9]
	str r5, [r4, #0x1c]
	ldrb r2, [r3, #3]
	movs r0, #0xc0
	tst r0, r2
	beq _080025B2
	movs r0, #0x10
	orrs r6, r0
	strb r6, [r4]
	b _080025B2
_0800255A:
	ldrb r5, [r4, #9]
	movs r0, #4
	tst r0, r6
	beq _08002570
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	bhi _080025C0
_0800256A:
	movs r0, #0
	strb r0, [r4]
	b sub_080027E8
_08002570:
	movs r0, #0x40
	tst r0, r6
	beq _08002590
	ldrb r0, [r4, #7]
	muls r5, r0, r5
	lsrs r5, r5, #8
	ldrb r0, [r4, #0xc]
	cmp r5, r0
	bhi _080025C0
_08002582:
	ldrb r5, [r4, #0xc]
	cmp r5, #0
	beq _0800256A
	movs r0, #4
	orrs r6, r0
	strb r6, [r4]
	b _080025C0
_08002590:
	movs r2, #3
	ands r2, r6
	cmp r2, #2
	bne _080025AE
	ldrb r0, [r4, #5]
	muls r5, r0, r5
	lsrs r5, r5, #8
	ldrb r0, [r4, #6]
	cmp r5, r0
	bhi _080025C0
	adds r5, r0, #0
	beq _08002582
	subs r6, #1
	strb r6, [r4]
	b _080025C0
_080025AE:
	cmp r2, #3
	bne _080025C0
_080025B2:
	ldrb r0, [r4, #4]
	adds r5, r5, r0
	cmp r5, #0xff
	blo _080025C0
	movs r5, #0xff
	subs r6, #1
	strb r6, [r4]
_080025C0:
	strb r5, [r4, #9]
	ldr r0, [sp, #0x18]
	ldrb r0, [r0, #7]
	adds r0, #1
	muls r0, r5, r0
	lsrs r5, r0, #4
	ldrb r0, [r4, #2]
	muls r0, r5, r0
	lsrs r0, r0, #8
	strb r0, [r4, #0xa]
	ldrb r0, [r4, #3]
	muls r0, r5, r0
	lsrs r0, r0, #8
	strb r0, [r4, #0xb]
	movs r0, #0x10
	ands r0, r6
	str r0, [sp, #0x10]
	beq _080025F4
	adds r0, r3, #0
	adds r0, #0x10
	ldr r1, [r3, #8]
	adds r0, r0, r1
	str r0, [sp, #0xc]
	ldr r0, [r3, #0xc]
	subs r0, r0, r1
	str r0, [sp, #0x10]
_080025F4:
	ldr r5, [sp, #8]
	ldr r2, [r4, #0x18]
	ldr r3, [r4, #0x28]
	add r0, pc, #0x4 @ =sub_08002600
	bx r0
	.align 2, 0

	arm_func_start sub_08002600
sub_08002600: @ 0x08002600
	str r8, [sp]
	ldrb sl, [r4, #0xa]
	ldrb fp, [r4, #0xb]
	lsl sl, sl, #0x10
	lsl fp, fp, #0x10
	ldrb r0, [r4, #1]
	tst r0, #8
	beq _08002740
_08002620:
	cmp r2, #4
	ble _08002690
	subs r2, r2, r8
	movgt lr, #0
	bgt _0800264C
	mov lr, r8
	add r2, r2, r8
	sub r8, r2, #4
	sub lr, lr, r8
	ands r2, r2, #3
	moveq r2, #4
_0800264C:
	ldr r6, [r5]
	ldr r7, [r5, #0x630]
_08002654:
	ldrsb r0, [r3], #1
	mul r1, sl, r0
	bic r1, r1, #0xff0000
	add r6, r1, r6, ror #8
	mul r1, fp, r0
	bic r1, r1, #0xff0000
	add r7, r1, r7, ror #8
	adds r5, r5, #0x40000000
	blo _08002654
	str r7, [r5, #0x630]
	str r6, [r5], #4
	subs r8, r8, #4
	bgt _0800264C
	adds r8, r8, lr
	beq _080027D4
_08002690:
	ldr r6, [r5]
	ldr r7, [r5, #0x630]
_08002698:
	ldrsb r0, [r3], #1
	mul r1, sl, r0
	bic r1, r1, #0xff0000
	add r6, r1, r6, ror #8
	mul r1, fp, r0
	bic r1, r1, #0xff0000
	add r7, r1, r7, ror #8
	subs r2, r2, #1
	beq _08002708
_080026BC:
	adds r5, r5, #0x40000000
	blo _08002698
	str r7, [r5, #0x630]
	str r6, [r5], #4
	subs r8, r8, #4
	bgt _08002620
	b _080027D4
_080026D8:
	ldr r0, [sp, #0x18]
	cmp r0, #0
	beq _080026FC
	ldr r3, [sp, #0x14]
	rsb sb, r2, #0
_080026EC:
	adds r2, r0, r2
	bgt _080027A4
	sub sb, sb, r0
	b _080026EC
_080026FC:
	pop {r4, ip}
	mov r2, #0
	b _08002718
_08002708:
	ldr r2, [sp, #0x10]
	cmp r2, #0
	ldrne r3, [sp, #0xc]
	bne _080026BC
_08002718:
	strb r2, [r4]
	lsr r0, r5, #0x1e
	bic r5, r5, #0xc0000000
	rsb r0, r0, #3
	lsl r0, r0, #3
	ror r6, r6, r0
	ror r7, r7, r0
	str r7, [r5, #0x630]
	str r6, [r5], #4
	b _080027DC
_08002740:
	push {r4, ip}
	ldr lr, [r4, #0x1c]
	ldr r1, [r4, #0x20]
	mul r4, ip, r1
	ldrsb r0, [r3]
	ldrsb r1, [r3, #1]!
	sub r1, r1, r0
_0800275C:
	ldr r6, [r5]
	ldr r7, [r5, #0x630]
_08002764:
	mul sb, lr, r1
	add sb, r0, sb, asr #23
	mul ip, sl, sb
	bic ip, ip, #0xff0000
	add r6, ip, r6, ror #8
	mul ip, fp, sb
	bic ip, ip, #0xff0000
	add r7, ip, r7, ror #8
	add lr, lr, r4
	lsrs sb, lr, #0x17
	beq _080027B0
	bic lr, lr, #0x3f800000
	subs r2, r2, sb
	ble _080026D8
	subs sb, sb, #1
	addeq r0, r0, r1
_080027A4:
	ldrsbne r0, [r3, sb]!
	ldrsb r1, [r3, #1]!
	sub r1, r1, r0
_080027B0:
	adds r5, r5, #0x40000000
	blo _08002764
	str r7, [r5, #0x630]
	str r6, [r5], #4
	subs r8, r8, #4
	bgt _0800275C
	sub r3, r3, #1
	pop {r4, ip}
	str lr, [r4, #0x1c]
_080027D4:
	str r2, [r4, #0x18]
	str r3, [r4, #0x28]
_080027DC:
	ldr r8, [sp]
	add r0, pc, #0x1 @ =sub_080027E8
	bx r0

	thumb_func_start sub_080027E8
sub_080027E8: @ 0x080027E8
	ldr r0, [sp, #4]
	subs r0, #1
	ble _080027F2
	adds r4, #0x40
	b _08002500
_080027F2:
	ldr r0, [sp, #0x18]
	ldr r3, _08002808 @ =0x68736D53
	str r3, [r0]
	add sp, #0x1c
	pop {r0, r1, r2, r3, r4, r5, r6, r7}
	mov r8, r0
	mov sb, r1
	mov sl, r2
	mov fp, r3
	pop {r3}

	non_word_aligned_thumb_func_start sub_08002806
sub_08002806: @ 0x08002806
	bx r3
	.align 2, 0
_08002808: .4byte 0x68736D53

	thumb_func_start sub_0800280C
sub_0800280C: @ 0x0800280C
	mov ip, r4
	movs r1, #0
	movs r2, #0
	movs r3, #0
	movs r4, #0
	stm r0!, {r1, r2, r3, r4}
	stm r0!, {r1, r2, r3, r4}
	stm r0!, {r1, r2, r3, r4}
	stm r0!, {r1, r2, r3, r4}
	mov r4, ip
	bx lr
	.align 2, 0

	thumb_func_start sub_08002824
sub_08002824: @ 0x08002824
	ldr r3, [r0, #0x2c]
	cmp r3, #0
	beq _08002842
	ldr r1, [r0, #0x34]
	ldr r2, [r0, #0x30]
	cmp r2, #0
	beq _08002836
	str r1, [r2, #0x34]
	b _08002838
_08002836:
	str r1, [r3, #0x20]
_08002838:
	cmp r1, #0
	beq _0800283E
	str r2, [r1, #0x30]
_0800283E:
	movs r1, #0
	str r1, [r0, #0x2c]
_08002842:
	bx lr
_08002844:
	push {r4, r5, lr}
	adds r5, r1, #0
	ldr r4, [r5, #0x20]
	cmp r4, #0
	beq _08002868
_0800284E:
	ldrb r1, [r4]
	movs r0, #0xc7
	tst r0, r1
	beq _0800285C
	movs r0, #0x40
	orrs r1, r0
	strb r1, [r4]
_0800285C:
	adds r0, r4, #0
	bl sub_08002824
	ldr r4, [r4, #0x34]
	cmp r4, #0
	bne _0800284E
_08002868:
	movs r0, #0
	strb r0, [r5]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08002874
sub_08002874: @ 0x08002874
	mov ip, lr
	movs r1, #0x24
	ldr r2, _080028A4 @ =0x08043FAC
_0800287A:
	ldr r3, [r2]
	bl _0800288E
	stm r0!, {r3}
	adds r2, #4
	subs r1, #1
	bgt _0800287A
	bx ip
	.align 2, 0

	thumb_func_start sub_0800288C
sub_0800288C: @ 0x0800288C
	ldrb r3, [r2]
_0800288E:
	push {r0}
	lsrs r0, r2, #0x19
	bne _080028A0
	ldr r0, _080028A4 @ =0x08043FAC
	cmp r2, r0
	blo _0800289E
	lsrs r0, r2, #0xe
	beq _080028A0
_0800289E:
	movs r3, #0
_080028A0:
	pop {r0}
	bx lr
	.align 2, 0
_080028A4: .4byte 0x08043FAC

	thumb_func_start sub_080028A8
sub_080028A8: @ 0x080028A8
	ldr r2, [r1, #0x40]

	non_word_aligned_thumb_func_start sub_080028AA
sub_080028AA: @ 0x080028AA
	adds r3, r2, #1
	str r3, [r1, #0x40]
	ldrb r3, [r2]
	b _0800288E
	.align 2, 0
_080028B4:
	push {lr}
_080028B6:
	ldr r2, [r1, #0x40]
	ldrb r0, [r2, #3]
	lsls r0, r0, #8
	ldrb r3, [r2, #2]
	orrs r0, r3
	lsls r0, r0, #8
	ldrb r3, [r2, #1]
	orrs r0, r3
	lsls r0, r0, #8
	bl sub_0800288C
	orrs r0, r3
	str r0, [r1, #0x40]
	pop {r0}
	bx r0

	thumb_func_start sub_080028D4
sub_080028D4: @ 0x080028D4
	ldrb r2, [r1, #2]
	cmp r2, #3
	bhs _080028EC
	lsls r2, r2, #2
	adds r3, r1, r2
	ldr r2, [r1, #0x40]
	adds r2, #4
	str r2, [r3, #0x44]
	ldrb r2, [r1, #2]
	adds r2, #1
	strb r2, [r1, #2]
	b _080028B4
_080028EC:
	b _08002844
	.align 2, 0

	thumb_func_start sub_080028F0
sub_080028F0: @ 0x080028F0
	ldrb r2, [r1, #2]
	cmp r2, #0
	beq _08002902
	subs r2, #1
	strb r2, [r1, #2]
	lsls r2, r2, #2
	adds r3, r1, r2
	ldr r2, [r3, #0x44]
	str r2, [r1, #0x40]
_08002902:
	bx lr

	thumb_func_start sub_08002904
sub_08002904: @ 0x08002904
	push {lr}
	ldr r2, [r1, #0x40]
	ldrb r3, [r2]
	cmp r3, #0
	bne _08002914
	adds r2, #1
	str r2, [r1, #0x40]
	b _080028B6
_08002914:
	ldrb r3, [r1, #3]
	adds r3, #1
	strb r3, [r1, #3]
	mov ip, r3
	bl sub_080028A8
	cmp ip, r3
	bhs _08002926
	b _080028B6
_08002926:
	movs r3, #0
	strb r3, [r1, #3]
	adds r2, #5
	str r2, [r1, #0x40]
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08002934
sub_08002934: @ 0x08002934
	mov ip, lr
	bl sub_080028A8
	strb r3, [r1, #0x1d]
	bx ip
	.align 2, 0

	thumb_func_start sub_08002940
sub_08002940: @ 0x08002940
	mov ip, lr
	bl sub_080028A8
	lsls r3, r3, #1
	strh r3, [r0, #0x1c]
	ldrh r2, [r0, #0x1e]
	muls r3, r2, r3
	lsrs r3, r3, #8
	strh r3, [r0, #0x20]
	bx ip

	thumb_func_start sub_08002954
sub_08002954: @ 0x08002954
	mov ip, lr
	bl sub_080028A8
	strb r3, [r1, #0xa]
	ldrb r3, [r1]
	movs r2, #0xc
	orrs r3, r2
	strb r3, [r1]
	bx ip
	.align 2, 0

	thumb_func_start sub_08002968
sub_08002968: @ 0x08002968
	mov ip, lr
	ldr r2, [r1, #0x40]
	ldrb r3, [r2]
	adds r2, #1
	str r2, [r1, #0x40]
	lsls r2, r3, #1
	adds r2, r2, r3
	lsls r2, r2, #2
	ldr r3, [r0, #0x30]
	adds r2, r2, r3
	ldr r3, [r2]
	bl _0800288E
	str r3, [r1, #0x24]
	ldr r3, [r2, #4]
	bl _0800288E
	str r3, [r1, #0x28]
	ldr r3, [r2, #8]
	bl _0800288E
	str r3, [r1, #0x2c]
	bx ip
	.align 2, 0

	thumb_func_start sub_08002998
sub_08002998: @ 0x08002998
	mov ip, lr
	bl sub_080028A8
	strb r3, [r1, #0x12]
	ldrb r3, [r1]
	movs r2, #3
	orrs r3, r2
	strb r3, [r1]
	bx ip
	.align 2, 0

	thumb_func_start sub_080029AC
sub_080029AC: @ 0x080029AC
	mov ip, lr
	bl sub_080028A8
	subs r3, #0x40
	strb r3, [r1, #0x14]
	ldrb r3, [r1]
	movs r2, #3
	orrs r3, r2
	strb r3, [r1]
	bx ip

	thumb_func_start sub_080029C0
sub_080029C0: @ 0x080029C0
	mov ip, lr
	bl sub_080028A8
	subs r3, #0x40
	strb r3, [r1, #0xe]
	ldrb r3, [r1]
	movs r2, #0xc
	orrs r3, r2
	strb r3, [r1]
	bx ip

	thumb_func_start sub_080029D4
sub_080029D4: @ 0x080029D4
	mov ip, lr
	bl sub_080028A8
	strb r3, [r1, #0xf]
	ldrb r3, [r1]
	movs r2, #0xc
	orrs r3, r2
	strb r3, [r1]
	bx ip
	.align 2, 0

	thumb_func_start sub_080029E8
sub_080029E8: @ 0x080029E8
	mov ip, lr
	bl sub_080028A8
	strb r3, [r1, #0x1b]
	bx ip
	.align 2, 0

	thumb_func_start sub_080029F4
sub_080029F4: @ 0x080029F4
	mov ip, lr
	bl sub_080028A8
	ldrb r0, [r1, #0x18]
	cmp r0, r3
	beq _08002A0A
	strb r3, [r1, #0x18]
	ldrb r3, [r1]
	movs r2, #0xf
	orrs r3, r2
	strb r3, [r1]
_08002A0A:
	bx ip

	thumb_func_start sub_08002A0C
sub_08002A0C: @ 0x08002A0C
	mov ip, lr
	bl sub_080028A8
	subs r3, #0x40
	strb r3, [r1, #0xc]
	ldrb r3, [r1]
	movs r2, #0xc
	orrs r3, r2
	strb r3, [r1]
	bx ip

	thumb_func_start sub_08002A20
sub_08002A20: @ 0x08002A20
	mov ip, lr
	ldr r2, [r1, #0x40]
	ldrb r3, [r2]
	adds r2, #1
	ldr r0, _08002A34 @ =0x04000060
	adds r0, r0, r3
	bl sub_080028AA
	strb r3, [r0]
	bx ip
	.align 2, 0
_08002A34: .4byte 0x04000060

	thumb_func_start sub_08002A38
sub_08002A38: @ 0x08002A38
	ldr r0, _08002CE4 @ =0x03007FF0
	ldr r0, [r0]
	ldr r2, _08002CE8 @ =0x68736D53
	ldr r3, [r0]
	subs r3, r3, r2
	cmp r3, #1
	bhi _08002A78
	ldrb r1, [r0, #4]
	subs r1, #1
	strb r1, [r0, #4]
	bgt _08002A78
	ldrb r1, [r0, #0xb]
	strb r1, [r0, #4]
	ldr r2, _08002A7C @ =0x040000BC
	ldr r1, [r2, #8]
	lsls r1, r1, #7
	blo _08002A5E
	ldr r1, _08002A80 @ =0x84400004
	str r1, [r2, #8]
_08002A5E:
	ldr r1, [r2, #0x14]
	lsls r1, r1, #7
	blo _08002A68
	ldr r1, _08002A80 @ =0x84400004
	str r1, [r2, #0x14]
_08002A68:
	movs r1, #4
	lsls r1, r1, #8
	strh r1, [r2, #0xa]
	strh r1, [r2, #0x16]
	movs r1, #0xb6
	lsls r1, r1, #8
	strh r1, [r2, #0xa]
	strh r1, [r2, #0x16]
_08002A78:
	bx lr
	.align 2, 0
_08002A7C: .4byte 0x040000BC
_08002A80: .4byte 0x84400004

	thumb_func_start sub_08002A84
sub_08002A84: @ 0x08002A84
	ldr r2, _08002CE8 @ =0x68736D53
	ldr r3, [r0, #0x34]
	cmp r2, r3
	beq _08002A8E
	bx lr
_08002A8E:
	adds r3, #1
	str r3, [r0, #0x34]
	push {r0, lr}
	ldr r3, [r0, #0x38]
	cmp r3, #0
	beq _08002AA0
	ldr r0, [r0, #0x3c]
	bl sub_08002CDC
_08002AA0:
	pop {r0}
	push {r4, r5, r6, r7}
	mov r4, r8
	mov r5, sb
	mov r6, sl
	mov r7, fp
	push {r4, r5, r6, r7}
	adds r7, r0, #0
	ldr r0, [r7, #4]
	cmp r0, #0
	bge _08002AB8
	b _08002CCC
_08002AB8:
	ldr r0, _08002CE4 @ =0x03007FF0
	ldr r0, [r0]
	mov r8, r0
	adds r0, r7, #0
	bl sub_08003970
	ldr r0, [r7, #4]
	cmp r0, #0
	bge _08002ACC
	b _08002CCC
_08002ACC:
	ldrh r0, [r7, #0x22]
	ldrh r1, [r7, #0x20]
	adds r0, r0, r1
	b _08002C1C
_08002AD4:
	ldrb r6, [r7, #8]
	ldr r5, [r7, #0x2c]
	movs r3, #1
	movs r4, #0
_08002ADC:
	ldrb r0, [r5]
	movs r1, #0x80
	tst r1, r0
	bne _08002AE6
	b _08002BF8
_08002AE6:
	mov sl, r3
	orrs r4, r3
	mov fp, r4
	ldr r4, [r5, #0x20]
	cmp r4, #0
	beq _08002B1A
_08002AF2:
	ldrb r1, [r4]
	movs r0, #0xc7
	tst r0, r1
	beq _08002B0E
	ldrb r0, [r4, #0x10]
	cmp r0, #0
	beq _08002B14
	subs r0, #1
	strb r0, [r4, #0x10]
	bne _08002B14
	movs r0, #0x40
	orrs r1, r0
	strb r1, [r4]
	b _08002B14
_08002B0E:
	adds r0, r4, #0
	bl sub_0800346C
_08002B14:
	ldr r4, [r4, #0x34]
	cmp r4, #0
	bne _08002AF2
_08002B1A:
	ldrb r3, [r5]
	movs r0, #0x40
	tst r0, r3
	beq _08002B98
	adds r0, r5, #0
	bl sub_08003480
	movs r0, #0x80
	strb r0, [r5]
	movs r0, #2
	strb r0, [r5, #0xf]
	movs r0, #0x40
	strb r0, [r5, #0x13]
	movs r0, #0x16
	strb r0, [r5, #0x19]
	movs r0, #1
	adds r1, r5, #6
	strb r0, [r1, #0x1e]
	b _08002B98
_08002B40:
	ldr r2, [r5, #0x40]
	ldrb r1, [r2]
	cmp r1, #0x80
	bhs _08002B4C
	ldrb r1, [r5, #7]
	b _08002B56
_08002B4C:
	adds r2, #1
	str r2, [r5, #0x40]
	cmp r1, #0xbd
	blo _08002B56
	strb r1, [r5, #7]
_08002B56:
	cmp r1, #0xcf
	blo _08002B6C
	mov r0, r8
	ldr r3, [r0, #0x38]
	adds r0, r1, #0
	subs r0, #0xcf
	adds r1, r7, #0
	adds r2, r5, #0
	bl sub_08002CDC
	b _08002B98
_08002B6C:
	cmp r1, #0xb0
	bls _08002B8E
	adds r0, r1, #0
	subs r0, #0xb1
	strb r0, [r7, #0xa]
	mov r3, r8
	ldr r3, [r3, #0x34]
	lsls r0, r0, #2
	ldr r3, [r3, r0]
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_08002CDC
	ldrb r0, [r5]
	cmp r0, #0
	beq _08002BF4
	b _08002B98
_08002B8E:
	ldr r0, _08002CE0 @ =0x08044220
	subs r1, #0x80
	adds r1, r1, r0
	ldrb r0, [r1]
	strb r0, [r5, #1]
_08002B98:
	ldrb r0, [r5, #1]
	cmp r0, #0
	beq _08002B40
	subs r0, #1
	strb r0, [r5, #1]
	ldrb r1, [r5, #0x19]
	cmp r1, #0
	beq _08002BF4
	ldrb r0, [r5, #0x17]
	cmp r0, #0
	beq _08002BF4
	ldrb r0, [r5, #0x1c]
	cmp r0, #0
	beq _08002BBA
	subs r0, #1
	strb r0, [r5, #0x1c]
	b _08002BF4
_08002BBA:
	ldrb r0, [r5, #0x1a]
	adds r0, r0, r1
	strb r0, [r5, #0x1a]
	adds r1, r0, #0
	subs r0, #0x40
	lsls r0, r0, #0x18
	bpl _08002BCE
	lsls r2, r1, #0x18
	asrs r2, r2, #0x18
	b _08002BD2
_08002BCE:
	movs r0, #0x80
	subs r2, r0, r1
_08002BD2:
	ldrb r0, [r5, #0x17]
	muls r0, r2, r0
	asrs r2, r0, #6
	ldrb r0, [r5, #0x16]
	eors r0, r2
	lsls r0, r0, #0x18
	beq _08002BF4
	strb r2, [r5, #0x16]
	ldrb r0, [r5]
	ldrb r1, [r5, #0x18]
	cmp r1, #0
	bne _08002BEE
	movs r1, #0xc
	b _08002BF0
_08002BEE:
	movs r1, #3
_08002BF0:
	orrs r0, r1
	strb r0, [r5]
_08002BF4:
	mov r3, sl
	mov r4, fp
_08002BF8:
	subs r6, #1
	ble _08002C04
	movs r0, #0x50
	adds r5, r5, r0
	lsls r3, r3, #1
	b _08002ADC
_08002C04:
	ldr r0, [r7, #0xc]
	adds r0, #1
	str r0, [r7, #0xc]
	cmp r4, #0
	bne _08002C16
	movs r0, #0x80
	lsls r0, r0, #0x18
	str r0, [r7, #4]
	b _08002CCC
_08002C16:
	str r4, [r7, #4]
	ldrh r0, [r7, #0x22]
	subs r0, #0x96
_08002C1C:
	strh r0, [r7, #0x22]
	cmp r0, #0x96
	blo _08002C24
	b _08002AD4
_08002C24:
	ldrb r2, [r7, #8]
	ldr r5, [r7, #0x2c]
_08002C28:
	ldrb r0, [r5]
	movs r1, #0x80
	tst r1, r0
	beq _08002CC2
	movs r1, #0xf
	tst r1, r0
	beq _08002CC2
	mov sb, r2
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_08003A38
	ldr r4, [r5, #0x20]
	cmp r4, #0
	beq _08002CB8
_08002C46:
	ldrb r1, [r4]
	movs r0, #0xc7
	tst r0, r1
	bne _08002C56
	adds r0, r4, #0
	bl sub_0800346C
	b _08002CB2
_08002C56:
	ldrb r0, [r4, #1]
	movs r6, #7
	ands r6, r0
	ldrb r3, [r5]
	movs r0, #3
	tst r0, r3
	beq _08002C74
	bl sub_08002D30
	cmp r6, #0
	beq _08002C74
	ldrb r0, [r4, #0x1d]
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x1d]
_08002C74:
	ldrb r3, [r5]
	movs r0, #0xc
	tst r0, r3
	beq _08002CB2
	ldrb r1, [r4, #8]
	movs r0, #8
	ldrsb r0, [r5, r0]
	adds r2, r1, r0
	bpl _08002C88
	movs r2, #0
_08002C88:
	cmp r6, #0
	beq _08002CA6
	mov r0, r8
	ldr r3, [r0, #0x30]
	adds r1, r2, #0
	ldrb r2, [r5, #9]
	adds r0, r6, #0
	bl sub_08002CDC
	str r0, [r4, #0x20]
	ldrb r0, [r4, #0x1d]
	movs r1, #2
	orrs r0, r1
	strb r0, [r4, #0x1d]
	b _08002CB2
_08002CA6:
	adds r1, r2, #0
	ldrb r2, [r5, #9]
	ldr r0, [r4, #0x24]
	bl sub_08002FF0
	str r0, [r4, #0x20]
_08002CB2:
	ldr r4, [r4, #0x34]
	cmp r4, #0
	bne _08002C46
_08002CB8:
	ldrb r0, [r5]
	movs r1, #0xf0
	ands r0, r1
	strb r0, [r5]
	mov r2, sb
_08002CC2:
	subs r2, #1
	ble _08002CCC
	movs r0, #0x50
	adds r5, r5, r0
	bgt _08002C28
_08002CCC:
	ldr r0, _08002CE8 @ =0x68736D53
	str r0, [r7, #0x34]
	pop {r0, r1, r2, r3, r4, r5, r6, r7}
	mov r8, r0
	mov sb, r1
	mov sl, r2
	mov fp, r3
	pop {r3}

	thumb_func_start sub_08002CDC
sub_08002CDC: @ 0x08002CDC
	bx r3
	.align 2, 0
_08002CE0: .4byte 0x08044220
_08002CE4: .4byte 0x03007FF0
_08002CE8: .4byte 0x68736D53

	thumb_func_start sub_08002CEC
sub_08002CEC: @ 0x08002CEC
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	ldrb r1, [r5]
	movs r0, #0x80
	tst r0, r1
	beq _08002D24
	ldr r4, [r5, #0x20]
	cmp r4, #0
	beq _08002D22
	movs r6, #0
_08002D00:
	ldrb r0, [r4]
	cmp r0, #0
	beq _08002D1A
	ldrb r0, [r4, #1]
	movs r3, #7
	ands r0, r3
	beq _08002D18
	ldr r3, _08002D2C @ =0x03007FF0
	ldr r3, [r3]
	ldr r3, [r3, #0x2c]
	bl sub_08002CDC
_08002D18:
	strb r6, [r4]
_08002D1A:
	str r6, [r4, #0x2c]
	ldr r4, [r4, #0x34]
	cmp r4, #0
	bne _08002D00
_08002D22:
	str r4, [r5, #0x20]
_08002D24:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08002D2C: .4byte 0x03007FF0

	thumb_func_start sub_08002D30
sub_08002D30: @ 0x08002D30
	ldrb r1, [r4, #0x12]
	movs r0, #0x14
	ldrsb r2, [r4, r0]
	movs r3, #0x80
	adds r3, r3, r2
	muls r3, r1, r3
	ldrb r0, [r5, #0x10]
	muls r0, r3, r0
	asrs r0, r0, #0xe
	cmp r0, #0xff
	bls _08002D48
	movs r0, #0xff
_08002D48:
	strb r0, [r4, #2]
	movs r3, #0x7f
	subs r3, r3, r2
	muls r3, r1, r3
	ldrb r0, [r5, #0x11]
	muls r0, r3, r0
	asrs r0, r0, #0xe
	cmp r0, #0xff
	bls _08002D5C
	movs r0, #0xff
_08002D5C:
	strb r0, [r4, #3]
	bx lr

	thumb_func_start sub_08002D60
sub_08002D60: @ 0x08002D60
	push {r4, r5, r6, r7, lr}
	mov r4, r8
	mov r5, sb
	mov r6, sl
	mov r7, fp
	push {r4, r5, r6, r7}
	sub sp, #0x18
	str r1, [sp]
	adds r5, r2, #0
	ldr r1, _08002F58 @ =0x03007FF0
	ldr r1, [r1]
	str r1, [sp, #4]
	ldr r1, _08002F5C @ =0x08044220
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r5, #4]
	ldr r3, [r5, #0x40]
	ldrb r0, [r3]
	cmp r0, #0x80
	bhs _08002DA6
	strb r0, [r5, #5]
	adds r3, #1
	ldrb r0, [r3]
	cmp r0, #0x80
	bhs _08002DA4
	strb r0, [r5, #6]
	adds r3, #1
	ldrb r0, [r3]
	cmp r0, #0x80
	bhs _08002DA4
	ldrb r1, [r5, #4]
	adds r1, r1, r0
	strb r1, [r5, #4]
	adds r3, #1
_08002DA4:
	str r3, [r5, #0x40]
_08002DA6:
	movs r0, #0
	str r0, [sp, #0x14]
	adds r4, r5, #0
	adds r4, #0x24
	ldrb r2, [r4]
	movs r0, #0xc0
	tst r0, r2
	beq _08002DF8
	ldrb r3, [r5, #5]
	movs r0, #0x40
	tst r0, r2
	beq _08002DC6
	ldr r1, [r5, #0x2c]
	adds r1, r1, r3
	ldrb r0, [r1]
	b _08002DC8
_08002DC6:
	adds r0, r3, #0
_08002DC8:
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, [r5, #0x28]
	adds r1, r1, r0
	mov sb, r1
	mov r6, sb
	ldrb r1, [r6]
	movs r0, #0xc0
	tst r0, r1
	beq _08002DE0
	b _08002F46
_08002DE0:
	movs r0, #0x80
	tst r0, r2
	beq _08002DFC
	ldrb r1, [r6, #3]
	movs r0, #0x80
	tst r0, r1
	beq _08002DF4
	subs r1, #0xc0
	lsls r1, r1, #1
	str r1, [sp, #0x14]
_08002DF4:
	ldrb r3, [r6, #1]
	b _08002DFC
_08002DF8:
	mov sb, r4
	ldrb r3, [r5, #5]
_08002DFC:
	str r3, [sp, #8]
	ldr r6, [sp]
	ldrb r1, [r6, #9]
	ldrb r0, [r5, #0x1d]
	adds r0, r0, r1
	cmp r0, #0xff
	bls _08002E0C
	movs r0, #0xff
_08002E0C:
	str r0, [sp, #0x10]
	mov r6, sb
	ldrb r0, [r6]
	movs r6, #7
	ands r6, r0
	str r6, [sp, #0xc]
	beq _08002E4C
	ldr r0, [sp, #4]
	ldr r4, [r0, #0x1c]
	cmp r4, #0
	bne _08002E24
	b _08002F46
_08002E24:
	subs r6, #1
	lsls r0, r6, #6
	adds r4, r4, r0
	ldrb r1, [r4]
	movs r0, #0xc7
	tst r0, r1
	beq _08002EA0
	movs r0, #0x40
	tst r0, r1
	bne _08002EA0
	ldrb r1, [r4, #0x13]
	ldr r0, [sp, #0x10]
	cmp r1, r0
	blo _08002EA0
	beq _08002E44
	b _08002F46
_08002E44:
	ldr r0, [r4, #0x2c]
	cmp r0, r5
	bhs _08002EA0
	b _08002F46
_08002E4C:
	ldr r6, [sp, #0x10]
	adds r7, r5, #0
	movs r2, #0
	mov r8, r2
	ldr r4, [sp, #4]
	ldrb r3, [r4, #6]
	adds r4, #0x50
_08002E5A:
	ldrb r1, [r4]
	movs r0, #0xc7
	tst r0, r1
	beq _08002EA0
	movs r0, #0x40
	tst r0, r1
	beq _08002E74
	cmp r2, #0
	bne _08002E78
	adds r2, #1
	ldrb r6, [r4, #0x13]
	ldr r7, [r4, #0x2c]
	b _08002E92
_08002E74:
	cmp r2, #0
	bne _08002E94
_08002E78:
	ldrb r0, [r4, #0x13]
	cmp r0, r6
	bhs _08002E84
	adds r6, r0, #0
	ldr r7, [r4, #0x2c]
	b _08002E92
_08002E84:
	bhi _08002E94
	ldr r0, [r4, #0x2c]
	cmp r0, r7
	bls _08002E90
	adds r7, r0, #0
	b _08002E92
_08002E90:
	blo _08002E94
_08002E92:
	mov r8, r4
_08002E94:
	adds r4, #0x40
	subs r3, #1
	bgt _08002E5A
	mov r4, r8
	cmp r4, #0
	beq _08002F46
_08002EA0:
	adds r0, r4, #0
	bl sub_0800346C
	movs r1, #0
	str r1, [r4, #0x30]
	ldr r3, [r5, #0x20]
	str r3, [r4, #0x34]
	cmp r3, #0
	beq _08002EB4
	str r4, [r3, #0x30]
_08002EB4:
	str r4, [r5, #0x20]
	str r5, [r4, #0x2c]
	ldrb r0, [r5, #0x1b]
	strb r0, [r5, #0x1c]
	cmp r0, r1
	beq _08002EC6
	adds r1, r5, #0
	bl sub_08002FA0
_08002EC6:
	ldr r0, [sp]
	adds r1, r5, #0
	bl sub_08003A38
	ldr r0, [r5, #4]
	str r0, [r4, #0x10]
	ldr r0, [sp, #0x10]
	strb r0, [r4, #0x13]
	ldr r0, [sp, #8]
	strb r0, [r4, #8]
	ldr r0, [sp, #0x14]
	strb r0, [r4, #0x14]
	mov r6, sb
	ldrb r0, [r6]
	strb r0, [r4, #1]
	ldr r7, [r6, #4]
	str r7, [r4, #0x24]
	ldr r0, [r6, #8]
	str r0, [r4, #4]
	ldrh r0, [r5, #0x1e]
	strh r0, [r4, #0xc]
	bl sub_08002D30
	ldrb r1, [r4, #8]
	movs r0, #8
	ldrsb r0, [r5, r0]
	adds r3, r1, r0
	bpl _08002F00
	movs r3, #0
_08002F00:
	ldr r6, [sp, #0xc]
	cmp r6, #0
	beq _08002F2E
	mov r6, sb
	ldrb r0, [r6, #2]
	strb r0, [r4, #0x1e]
	ldrb r1, [r6, #3]
	movs r0, #0x80
	tst r0, r1
	bne _08002F1A
	movs r0, #0x70
	tst r0, r1
	bne _08002F1C
_08002F1A:
	movs r1, #8
_08002F1C:
	strb r1, [r4, #0x1f]
	ldrb r2, [r5, #9]
	adds r1, r3, #0
	ldr r0, [sp, #0xc]
	ldr r3, [sp, #4]
	ldr r3, [r3, #0x30]
	bl sub_08002CDC
	b _08002F38
_08002F2E:
	ldrb r2, [r5, #9]
	adds r1, r3, #0
	adds r0, r7, #0
	bl sub_08002FF0
_08002F38:
	str r0, [r4, #0x20]
	movs r0, #0x80
	strb r0, [r4]
	ldrb r1, [r5]
	movs r0, #0xf0
	ands r0, r1
	strb r0, [r5]
_08002F46:
	add sp, #0x18
	pop {r0, r1, r2, r3, r4, r5, r6, r7}
	mov r8, r0
	mov sb, r1
	mov sl, r2
	mov fp, r3
	pop {r0}
	bx r0
	.align 2, 0
_08002F58: .4byte 0x03007FF0
_08002F5C: .4byte 0x08044220

	thumb_func_start sub_08002F60
sub_08002F60: @ 0x08002F60
	push {r4, r5}
	ldr r2, [r1, #0x40]
	ldrb r3, [r2]
	cmp r3, #0x80
	bhs _08002F72
	strb r3, [r1, #5]
	adds r2, #1
	str r2, [r1, #0x40]
	b _08002F74
_08002F72:
	ldrb r3, [r1, #5]
_08002F74:
	ldr r1, [r1, #0x20]
	cmp r1, #0
	beq _08002F9C
	movs r4, #0x83
	movs r5, #0x40
_08002F7E:
	ldrb r2, [r1]
	tst r2, r4
	beq _08002F96
	tst r2, r5
	bne _08002F96
	ldrb r0, [r1, #0x11]
	cmp r0, r3
	bne _08002F96
	movs r0, #0x40
	orrs r2, r0
	strb r2, [r1]
	b _08002F9C
_08002F96:
	ldr r1, [r1, #0x34]
	cmp r1, #0
	bne _08002F7E
_08002F9C:
	pop {r4, r5}
	bx lr

	thumb_func_start sub_08002FA0
sub_08002FA0: @ 0x08002FA0
	movs r2, #0
	strb r2, [r1, #0x16]
	strb r2, [r1, #0x1a]
	ldrb r2, [r1, #0x18]
	cmp r2, #0
	bne _08002FB0
	movs r2, #0xc
	b _08002FB2
_08002FB0:
	movs r2, #3
_08002FB2:
	ldrb r3, [r1]
	orrs r3, r2
	strb r3, [r1]
	bx lr
	.align 2, 0

	thumb_func_start sub_08002FBC
sub_08002FBC: @ 0x08002FBC
	ldr r2, [r1, #0x40]
	adds r3, r2, #1
	str r3, [r1, #0x40]
	ldrb r3, [r2]
	bx lr
	.align 2, 0

	thumb_func_start sub_08002FC8
sub_08002FC8: @ 0x08002FC8
	mov ip, lr
	bl sub_08002FBC
	strb r3, [r1, #0x19]
	cmp r3, #0
	bne _08002FD8
	bl sub_08002FA0
_08002FD8:
	bx ip
	.align 2, 0

	thumb_func_start sub_08002FDC
sub_08002FDC: @ 0x08002FDC
	mov ip, lr
	bl sub_08002FBC
	strb r3, [r1, #0x17]
	cmp r3, #0
	bne _08002FEC
	bl sub_08002FA0
_08002FEC:
	bx ip
	.align 2, 0

	thumb_func_start sub_08002FF0
sub_08002FF0: @ 0x08002FF0
	push {r4, r5, r6, r7, lr}
	mov ip, r0
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	lsls r7, r2, #0x18
	cmp r6, #0xb2
	bls _08003004
	movs r6, #0xb2
	movs r7, #0xff
	lsls r7, r7, #0x18
_08003004:
	ldr r3, _0800304C @ =0x0804403C
	adds r0, r6, r3
	ldrb r5, [r0]
	ldr r4, _08003050 @ =0x080440F0
	movs r2, #0xf
	adds r0, r5, #0
	ands r0, r2
	lsls r0, r0, #2
	adds r0, r0, r4
	lsrs r1, r5, #4
	ldr r5, [r0]
	lsrs r5, r1
	adds r0, r6, #1
	adds r0, r0, r3
	ldrb r1, [r0]
	adds r0, r1, #0
	ands r0, r2
	lsls r0, r0, #2
	adds r0, r0, r4
	lsrs r1, r1, #4
	ldr r0, [r0]
	lsrs r0, r1
	mov r1, ip
	ldr r4, [r1, #4]
	subs r0, r0, r5
	adds r1, r7, #0
	bl sub_080023D4
	adds r1, r0, #0
	adds r1, r5, r1
	adds r0, r4, #0
	bl sub_080023D4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0800304C: .4byte 0x0804403C
_08003050: .4byte 0x080440F0
_08003054:
	.byte 0x70, 0x47, 0x00, 0x00

	thumb_func_start sub_08003058
sub_08003058: @ 0x08003058
	adds r2, r0, #0
	ldr r3, [r2, #0x34]
	ldr r0, _0800306C @ =0x68736D53
	cmp r3, r0
	bne _0800306A
	ldr r0, [r2, #4]
	ldr r1, _08003070 @ =0x7FFFFFFF
	ands r0, r1
	str r0, [r2, #4]
_0800306A:
	bx lr
	.align 2, 0
_0800306C: .4byte 0x68736D53
_08003070: .4byte 0x7FFFFFFF

	thumb_func_start sub_08003074
sub_08003074: @ 0x08003074
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, [r2, #0x34]
	ldr r0, _08003090 @ =0x68736D53
	cmp r3, r0
	bne _0800308C
	strh r1, [r2, #0x26]
	strh r1, [r2, #0x24]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r2, #0x28]
_0800308C:
	bx lr
	.align 2, 0
_08003090: .4byte 0x68736D53

	thumb_func_start sub_08003094
sub_08003094: @ 0x08003094
	push {r4, r5, r6, lr}
	ldr r0, _080030E8 @ =sub_08002468
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	ldr r1, _080030EC @ =0x03000748
	ldr r2, _080030F0 @ =0x04000100
	bl sub_0803D348
	ldr r0, _080030F4 @ =0x02000860
	bl sub_08003494
	ldr r0, _080030F8 @ =0x02001960
	bl sub_08003350
	ldr r0, _080030FC @ =0x0096EC00
	bl sub_08003630
	ldr r0, _08003100 @ =0x00000008
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	beq _080030E2
	ldr r5, _08003104 @ =0x08045158
	adds r6, r0, #0
_080030C6:
	ldr r4, [r5]
	ldr r1, [r5, #4]
	ldrb r2, [r5, #8]
	adds r0, r4, #0
	bl sub_080037D4
	ldrh r0, [r5, #0xa]
	strb r0, [r4, #0xb]
	ldr r0, _08003108 @ =0x02001B60
	str r0, [r4, #0x18]
	adds r5, #0xc
	subs r6, #1
	cmp r6, #0
	bne _080030C6
_080030E2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080030E8: .4byte sub_08002468
_080030EC: .4byte 0x03000748
_080030F0: .4byte 0x04000100
_080030F4: .4byte 0x02000860
_080030F8: .4byte 0x02001960
_080030FC: .4byte 0x0096EC00
_08003100: .4byte 0x00000008
_08003104: .4byte 0x08045158
_08003108: .4byte 0x02001B60

	thumb_func_start sub_0800310C
sub_0800310C: @ 0x0800310C
	push {lr}
	bl sub_080023E4
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08003118
sub_08003118: @ 0x08003118
	push {lr}
	lsls r0, r0, #0x10
	ldr r2, _0800313C @ =0x08045158
	ldr r1, _08003140 @ =0x080451B8
	lsrs r0, r0, #0xd
	adds r0, r0, r1
	ldrh r3, [r0, #4]
	lsls r1, r3, #1
	adds r1, r1, r3
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r2, [r1]
	ldr r1, [r0]
	adds r0, r2, #0
	bl sub_0800384C
	pop {r0}
	bx r0
	.align 2, 0
_0800313C: .4byte 0x08045158
_08003140: .4byte 0x080451B8

	thumb_func_start sub_08003144
sub_08003144: @ 0x08003144
	push {lr}
	lsls r0, r0, #0x10
	ldr r2, _08003170 @ =0x08045158
	ldr r1, _08003174 @ =0x080451B8
	lsrs r0, r0, #0xd
	adds r0, r0, r1
	ldrh r3, [r0, #4]
	lsls r1, r3, #1
	adds r1, r1, r3
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	ldr r3, [r1]
	ldr r2, [r0]
	cmp r3, r2
	beq _08003178
	adds r0, r1, #0
	adds r1, r2, #0
	bl sub_0800384C
	b _0800318C
	.align 2, 0
_08003170: .4byte 0x08045158
_08003174: .4byte 0x080451B8
_08003178:
	ldr r2, [r1, #4]
	ldrh r0, [r1, #4]
	cmp r0, #0
	beq _08003184
	cmp r2, #0
	bge _0800318C
_08003184:
	adds r0, r1, #0
	adds r1, r3, #0
	bl sub_0800384C
_0800318C:
	pop {r0}
	bx r0

	thumb_func_start sub_08003190
sub_08003190: @ 0x08003190
	push {lr}
	lsls r0, r0, #0x10
	ldr r2, _080031BC @ =0x08045158
	ldr r1, _080031C0 @ =0x080451B8
	lsrs r0, r0, #0xd
	adds r0, r0, r1
	ldrh r3, [r0, #4]
	lsls r1, r3, #1
	adds r1, r1, r3
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	ldr r3, [r1]
	ldr r2, [r0]
	cmp r3, r2
	beq _080031C4
	adds r0, r1, #0
	adds r1, r2, #0
	bl sub_0800384C
	b _080031E0
	.align 2, 0
_080031BC: .4byte 0x08045158
_080031C0: .4byte 0x080451B8
_080031C4:
	ldr r2, [r1, #4]
	ldrh r0, [r1, #4]
	cmp r0, #0
	bne _080031D6
	adds r0, r1, #0
	adds r1, r3, #0
	bl sub_0800384C
	b _080031E0
_080031D6:
	cmp r2, #0
	bge _080031E0
	adds r0, r1, #0
	bl sub_08003058
_080031E0:
	pop {r0}
	bx r0

	thumb_func_start sub_080031E4
sub_080031E4: @ 0x080031E4
	push {lr}
	lsls r0, r0, #0x10
	ldr r2, _08003210 @ =0x08045158
	ldr r1, _08003214 @ =0x080451B8
	lsrs r0, r0, #0xd
	adds r0, r0, r1
	ldrh r3, [r0, #4]
	lsls r1, r3, #1
	adds r1, r1, r3
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r2, [r1]
	ldr r1, [r2]
	ldr r0, [r0]
	cmp r1, r0
	bne _0800320A
	adds r0, r2, #0
	bl sub_08003930
_0800320A:
	pop {r0}
	bx r0
	.align 2, 0
_08003210: .4byte 0x08045158
_08003214: .4byte 0x080451B8

	thumb_func_start sub_08003218
sub_08003218: @ 0x08003218
	push {lr}
	lsls r0, r0, #0x10
	ldr r2, _08003244 @ =0x08045158
	ldr r1, _08003248 @ =0x080451B8
	lsrs r0, r0, #0xd
	adds r0, r0, r1
	ldrh r3, [r0, #4]
	lsls r1, r3, #1
	adds r1, r1, r3
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r2, [r1]
	ldr r1, [r2]
	ldr r0, [r0]
	cmp r1, r0
	bne _0800323E
	adds r0, r2, #0
	bl sub_08003058
_0800323E:
	pop {r0}
	bx r0
	.align 2, 0
_08003244: .4byte 0x08045158
_08003248: .4byte 0x080451B8

	thumb_func_start sub_0800324C
sub_0800324C: @ 0x0800324C
	push {r4, r5, lr}
	ldr r0, _08003270 @ =0x00000008
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	beq _0800326A
	ldr r5, _08003274 @ =0x08045158
	adds r4, r0, #0
_0800325C:
	ldr r0, [r5]
	bl sub_08003930
	adds r5, #0xc
	subs r4, #1
	cmp r4, #0
	bne _0800325C
_0800326A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08003270: .4byte 0x00000008
_08003274: .4byte 0x08045158

	thumb_func_start sub_08003278
sub_08003278: @ 0x08003278
	push {lr}
	bl sub_08003058
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08003284
sub_08003284: @ 0x08003284
	push {r4, r5, lr}
	ldr r0, _080032A8 @ =0x00000008
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	beq _080032A2
	ldr r5, _080032AC @ =0x08045158
	adds r4, r0, #0
_08003294:
	ldr r0, [r5]
	bl sub_08003058
	adds r5, #0xc
	subs r4, #1
	cmp r4, #0
	bne _08003294
_080032A2:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080032A8: .4byte 0x00000008
_080032AC: .4byte 0x08045158

	thumb_func_start sub_080032B0
sub_080032B0: @ 0x080032B0
	push {lr}
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08003074
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080032C0
sub_080032C0: @ 0x080032C0
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, [r2, #0x34]
	ldr r0, _080032D8 @ =0x68736D53
	cmp r3, r0
	bne _080032D6
	strh r1, [r2, #0x26]
	strh r1, [r2, #0x24]
	ldr r0, _080032DC @ =0x00000101
	strh r0, [r2, #0x28]
_080032D6:
	bx lr
	.align 2, 0
_080032D8: .4byte 0x68736D53
_080032DC: .4byte 0x00000101

	thumb_func_start sub_080032E0
sub_080032E0: @ 0x080032E0
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, [r2, #0x34]
	ldr r0, _08003300 @ =0x68736D53
	cmp r3, r0
	bne _080032FE
	strh r1, [r2, #0x26]
	strh r1, [r2, #0x24]
	movs r0, #2
	strh r0, [r2, #0x28]
	ldr r0, [r2, #4]
	ldr r1, _08003304 @ =0x7FFFFFFF
	ands r0, r1
	str r0, [r2, #4]
_080032FE:
	bx lr
	.align 2, 0
_08003300: .4byte 0x68736D53
_08003304: .4byte 0x7FFFFFFF

	thumb_func_start sub_08003308
sub_08003308: @ 0x08003308
	push {r4, r5, r6, r7, lr}
	ldrb r5, [r0, #8]
	ldr r4, [r0, #0x2c]
	cmp r5, #0
	ble _0800334A
	movs r7, #0x80
_08003314:
	ldrb r1, [r4]
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq _08003342
	movs r6, #0x40
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _08003342
	adds r0, r4, #0
	bl sub_08003480
	strb r7, [r4]
	movs r0, #2
	strb r0, [r4, #0xf]
	strb r6, [r4, #0x13]
	movs r0, #0x16
	strb r0, [r4, #0x19]
	adds r1, r4, #0
	adds r1, #0x24
	movs r0, #1
	strb r0, [r1]
_08003342:
	subs r5, #1
	adds r4, #0x50
	cmp r5, #0
	bgt _08003314
_0800334A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08003350
sub_08003350: @ 0x08003350
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r1, _08003418 @ =0x04000084
	movs r0, #0x8f
	strh r0, [r1]
	ldr r3, _0800341C @ =0x04000080
	movs r2, #0
	strh r2, [r3]
	ldr r0, _08003420 @ =0x04000063
	movs r1, #8
	strb r1, [r0]
	adds r0, #6
	strb r1, [r0]
	adds r0, #0x10
	strb r1, [r0]
	subs r0, #0x14
	movs r1, #0x80
	strb r1, [r0]
	adds r0, #8
	strb r1, [r0]
	adds r0, #0x10
	strb r1, [r0]
	subs r0, #0xd
	strb r2, [r0]
	movs r0, #0x77
	strb r0, [r3]
	ldr r0, _08003424 @ =0x03007FF0
	ldr r4, [r0]
	ldr r6, [r4]
	ldr r0, _08003428 @ =0x68736D53
	cmp r6, r0
	bne _08003410
	adds r0, r6, #1
	str r0, [r4]
	ldr r1, _0800342C @ =0x020018D0
	ldr r0, _08003430 @ =sub_0800430C
	str r0, [r1, #0x20]
	ldr r0, _08003434 @ =sub_08002FC8
	str r0, [r1, #0x44]
	ldr r0, _08003438 @ =sub_08002FDC
	str r0, [r1, #0x4c]
	ldr r0, _0800343C @ =sub_08004464
	str r0, [r1, #0x70]
	ldr r0, _08003440 @ =sub_08002F60
	str r0, [r1, #0x74]
	ldr r0, _08003444 @ =sub_0800358C
	str r0, [r1, #0x78]
	ldr r0, _08003448 @ =sub_08002CEC
	str r0, [r1, #0x7c]
	adds r2, r1, #0
	adds r2, #0x80
	ldr r0, _0800344C @ =sub_08003970
	str r0, [r2]
	adds r1, #0x84
	ldr r0, _08003450 @ =sub_08003A38
	str r0, [r1]
	str r5, [r4, #0x1c]
	ldr r0, _08003454 @ =sub_08003C4C
	str r0, [r4, #0x28]
	ldr r0, _08003458 @ =sub_08003B94
	str r0, [r4, #0x2c]
	ldr r0, _0800345C @ =0x08003AED
	str r0, [r4, #0x30]
	ldr r0, _08003460 @ =0x00000000
	movs r1, #0
	strb r0, [r4, #0xc]
	str r1, [sp]
	ldr r2, _08003464 @ =0x05000040
	mov r0, sp
	adds r1, r5, #0
	bl sub_0803D348
	movs r0, #1
	strb r0, [r5, #1]
	movs r0, #0x11
	strb r0, [r5, #0x1c]
	adds r1, r5, #0
	adds r1, #0x41
	movs r0, #2
	strb r0, [r1]
	adds r1, #0x1b
	movs r0, #0x22
	strb r0, [r1]
	adds r1, #0x25
	movs r0, #3
	strb r0, [r1]
	adds r1, #0x1b
	movs r0, #0x44
	strb r0, [r1]
	adds r1, #0x24
	movs r0, #4
	strb r0, [r1, #1]
	movs r0, #0x88
	strb r0, [r1, #0x1c]
	str r6, [r4]
_08003410:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08003418: .4byte 0x04000084
_0800341C: .4byte 0x04000080
_08003420: .4byte 0x04000063
_08003424: .4byte 0x03007FF0
_08003428: .4byte 0x68736D53
_0800342C: .4byte 0x020018D0
_08003430: .4byte sub_0800430C
_08003434: .4byte sub_08002FC8
_08003438: .4byte sub_08002FDC
_0800343C: .4byte sub_08004464
_08003440: .4byte sub_08002F60
_08003444: .4byte sub_0800358C
_08003448: .4byte sub_08002CEC
_0800344C: .4byte sub_08003970
_08003450: .4byte sub_08003A38
_08003454: .4byte sub_08003C4C
_08003458: .4byte sub_08003B94
_0800345C: .4byte 0x08003AED
_08003460: .4byte 0x00000000
_08003464: .4byte 0x05000040
_08003468:
	.byte 0x2A, 0xDF, 0x70, 0x47

	thumb_func_start sub_0800346C
sub_0800346C: @ 0x0800346C
	push {lr}
	ldr r1, _0800347C @ =0x02001958
	ldr r1, [r1]
	bl sub_0803D79C
	pop {r0}
	bx r0
	.align 2, 0
_0800347C: .4byte 0x02001958

	thumb_func_start sub_08003480
sub_08003480: @ 0x08003480
	push {lr}
	ldr r1, _08003490 @ =0x0200195C
	ldr r1, [r1]
	bl sub_0803D79C
	pop {r0}
	bx r0
	.align 2, 0
_08003490: .4byte 0x0200195C

	thumb_func_start sub_08003494
sub_08003494: @ 0x08003494
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	movs r3, #0
	str r3, [r5]
	ldr r1, _0800354C @ =0x040000C4
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #0x12
	ands r0, r2
	cmp r0, #0
	beq _080034B0
	ldr r0, _08003550 @ =0x84400004
	str r0, [r1]
_080034B0:
	ldr r1, _08003554 @ =0x040000D0
	ldr r0, [r1]
	ands r0, r2
	cmp r0, #0
	beq _080034BE
	ldr r0, _08003550 @ =0x84400004
	str r0, [r1]
_080034BE:
	ldr r0, _08003558 @ =0x040000C6
	movs r2, #0x80
	lsls r2, r2, #3
	adds r1, r2, #0
	strh r1, [r0]
	adds r0, #0xc
	strh r1, [r0]
	ldr r1, _0800355C @ =0x04000084
	movs r0, #0x8f
	strh r0, [r1]
	subs r1, #2
	ldr r2, _08003560 @ =0x0000A90E
	adds r0, r2, #0
	strh r0, [r1]
	ldr r2, _08003564 @ =0x04000089
	ldrb r1, [r2]
	movs r0, #0x3f
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _08003568 @ =0x040000BC
	movs r2, #0xd4
	lsls r2, r2, #2
	adds r0, r5, r2
	str r0, [r1]
	adds r1, #4
	ldr r0, _0800356C @ =0x040000A0
	str r0, [r1]
	adds r1, #8
	movs r2, #0x98
	lsls r2, r2, #4
	adds r0, r5, r2
	str r0, [r1]
	adds r1, #4
	ldr r0, _08003570 @ =0x040000A4
	str r0, [r1]
	ldr r0, _08003574 @ =0x03007FF0
	str r5, [r0]
	str r3, [sp]
	ldr r2, _08003578 @ =0x050003EC
	mov r0, sp
	adds r1, r5, #0
	bl sub_0803D348
	movs r0, #8
	strb r0, [r5, #6]
	movs r0, #0xf
	strb r0, [r5, #7]
	ldr r0, _0800357C @ =sub_08002D60
	str r0, [r5, #0x38]
	ldr r0, _08003580 @ =sub_08004584
	str r0, [r5, #0x28]
	str r0, [r5, #0x2c]
	str r0, [r5, #0x30]
	str r0, [r5, #0x3c]
	ldr r4, _08003584 @ =0x020018D0
	adds r0, r4, #0
	bl sub_08002874
	str r4, [r5, #0x34]
	movs r0, #0x80
	lsls r0, r0, #0xb
	bl sub_0800358C
	ldr r0, _08003588 @ =0x68736D53
	str r0, [r5]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800354C: .4byte 0x040000C4
_08003550: .4byte 0x84400004
_08003554: .4byte 0x040000D0
_08003558: .4byte 0x040000C6
_0800355C: .4byte 0x04000084
_08003560: .4byte 0x0000A90E
_08003564: .4byte 0x04000089
_08003568: .4byte 0x040000BC
_0800356C: .4byte 0x040000A0
_08003570: .4byte 0x040000A4
_08003574: .4byte 0x03007FF0
_08003578: .4byte 0x050003EC
_0800357C: .4byte sub_08002D60
_08003580: .4byte sub_08004584
_08003584: .4byte 0x020018D0
_08003588: .4byte 0x68736D53

	thumb_func_start sub_0800358C
sub_0800358C: @ 0x0800358C
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	ldr r0, _0800360C @ =0x03007FF0
	ldr r4, [r0]
	movs r0, #0xf0
	lsls r0, r0, #0xc
	ands r0, r2
	lsrs r2, r0, #0x10
	movs r6, #0
	strb r2, [r4, #8]
	ldr r1, _08003610 @ =0x08044120
	subs r0, r2, #1
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r5, [r0]
	str r5, [r4, #0x10]
	movs r0, #0xc6
	lsls r0, r0, #3
	adds r1, r5, #0
	bl sub_0803D7D4
	strb r0, [r4, #0xb]
	ldr r0, _08003614 @ =0x00091D1B
	muls r0, r5, r0
	ldr r1, _08003618 @ =0x00001388
	adds r0, r0, r1
	ldr r1, _0800361C @ =0x00002710
	bl sub_0803D7D4
	adds r1, r0, #0
	str r1, [r4, #0x14]
	movs r0, #0x80
	lsls r0, r0, #0x11
	bl sub_0803D7D4
	adds r0, #1
	asrs r0, r0, #1
	str r0, [r4, #0x18]
	ldr r0, _08003620 @ =0x04000102
	strh r6, [r0]
	ldr r4, _08003624 @ =0x04000100
	ldr r0, _08003628 @ =0x00044940
	adds r1, r5, #0
	bl sub_0803D7D4
	rsbs r0, r0, #0
	strh r0, [r4]
	bl sub_08003798
	ldr r1, _0800362C @ =0x04000006
_080035F0:
	ldrb r0, [r1]
	cmp r0, #0x9f
	beq _080035F0
	ldr r1, _0800362C @ =0x04000006
_080035F8:
	ldrb r0, [r1]
	cmp r0, #0x9f
	bne _080035F8
	ldr r1, _08003620 @ =0x04000102
	movs r0, #0x80
	strh r0, [r1]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800360C: .4byte 0x03007FF0
_08003610: .4byte 0x08044120
_08003614: .4byte 0x00091D1B
_08003618: .4byte 0x00001388
_0800361C: .4byte 0x00002710
_08003620: .4byte 0x04000102
_08003624: .4byte 0x04000100
_08003628: .4byte 0x00044940
_0800362C: .4byte 0x04000006

	thumb_func_start sub_08003630
sub_08003630: @ 0x08003630
	push {r4, r5, lr}
	adds r3, r0, #0
	ldr r0, _080036BC @ =0x03007FF0
	ldr r5, [r0]
	ldr r1, [r5]
	ldr r0, _080036C0 @ =0x68736D53
	cmp r1, r0
	bne _080036B6
	adds r0, r1, #1
	str r0, [r5]
	movs r4, #0xff
	ands r4, r3
	cmp r4, #0
	beq _08003652
	movs r0, #0x7f
	ands r4, r0
	strb r4, [r5, #5]
_08003652:
	movs r4, #0xf0
	lsls r4, r4, #4
	ands r4, r3
	cmp r4, #0
	beq _08003672
	lsrs r0, r4, #8
	strb r0, [r5, #6]
	movs r4, #0xc
	adds r0, r5, #0
	adds r0, #0x50
	movs r1, #0
_08003668:
	strb r1, [r0]
	subs r4, #1
	adds r0, #0x40
	cmp r4, #0
	bne _08003668
_08003672:
	movs r4, #0xf0
	lsls r4, r4, #8
	ands r4, r3
	cmp r4, #0
	beq _08003680
	lsrs r0, r4, #0xc
	strb r0, [r5, #7]
_08003680:
	movs r4, #0xb0
	lsls r4, r4, #0x10
	ands r4, r3
	cmp r4, #0
	beq _0800369E
	movs r0, #0xc0
	lsls r0, r0, #0xe
	ands r0, r4
	lsrs r4, r0, #0xe
	ldr r2, _080036C4 @ =0x04000089
	ldrb r1, [r2]
	movs r0, #0x3f
	ands r0, r1
	orrs r0, r4
	strb r0, [r2]
_0800369E:
	movs r4, #0xf0
	lsls r4, r4, #0xc
	ands r4, r3
	cmp r4, #0
	beq _080036B2
	bl sub_0800371C
	adds r0, r4, #0
	bl sub_0800358C
_080036B2:
	ldr r0, _080036C0 @ =0x68736D53
	str r0, [r5]
_080036B6:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080036BC: .4byte 0x03007FF0
_080036C0: .4byte 0x68736D53
_080036C4: .4byte 0x04000089

	thumb_func_start sub_080036C8
sub_080036C8: @ 0x080036C8
	push {r4, r5, r6, r7, lr}
	ldr r0, _08003714 @ =0x03007FF0
	ldr r6, [r0]
	ldr r1, [r6]
	ldr r0, _08003718 @ =0x68736D53
	cmp r1, r0
	bne _0800370E
	adds r0, r1, #1
	str r0, [r6]
	movs r5, #0xc
	adds r4, r6, #0
	adds r4, #0x50
	movs r0, #0
_080036E2:
	strb r0, [r4]
	subs r5, #1
	adds r4, #0x40
	cmp r5, #0
	bgt _080036E2
	ldr r4, [r6, #0x1c]
	cmp r4, #0
	beq _0800370A
	movs r5, #1
	movs r7, #0
_080036F6:
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	ldr r1, [r6, #0x2c]
	bl sub_0803D79C
	strb r7, [r4]
	adds r5, #1
	adds r4, #0x40
	cmp r5, #4
	ble _080036F6
_0800370A:
	ldr r0, _08003718 @ =0x68736D53
	str r0, [r6]
_0800370E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08003714: .4byte 0x03007FF0
_08003718: .4byte 0x68736D53

	thumb_func_start sub_0800371C
sub_0800371C: @ 0x0800371C
	push {lr}
	sub sp, #4
	ldr r0, _0800377C @ =0x03007FF0
	ldr r2, [r0]
	ldr r1, [r2]
	ldr r3, _08003780 @ =0x978C92AD
	adds r0, r1, r3
	cmp r0, #1
	bhi _08003774
	adds r0, r1, #0
	adds r0, #0xa
	str r0, [r2]
	ldr r1, _08003784 @ =0x040000C4
	ldr r0, [r1]
	movs r3, #0x80
	lsls r3, r3, #0x12
	ands r0, r3
	cmp r0, #0
	beq _08003746
	ldr r0, _08003788 @ =0x84400004
	str r0, [r1]
_08003746:
	ldr r1, _0800378C @ =0x040000D0
	ldr r0, [r1]
	ands r0, r3
	cmp r0, #0
	beq _08003754
	ldr r0, _08003788 @ =0x84400004
	str r0, [r1]
_08003754:
	ldr r0, _08003790 @ =0x040000C6
	movs r3, #0x80
	lsls r3, r3, #3
	adds r1, r3, #0
	strh r1, [r0]
	adds r0, #0xc
	strh r1, [r0]
	movs r0, #0
	str r0, [sp]
	movs r0, #0xd4
	lsls r0, r0, #2
	adds r1, r2, r0
	ldr r2, _08003794 @ =0x05000318
	mov r0, sp
	bl sub_0803D348
_08003774:
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_0800377C: .4byte 0x03007FF0
_08003780: .4byte 0x978C92AD
_08003784: .4byte 0x040000C4
_08003788: .4byte 0x84400004
_0800378C: .4byte 0x040000D0
_08003790: .4byte 0x040000C6
_08003794: .4byte 0x05000318

	thumb_func_start sub_08003798
sub_08003798: @ 0x08003798
	push {r4, lr}
	ldr r0, _080037C8 @ =0x03007FF0
	ldr r2, [r0]
	ldr r3, [r2]
	ldr r0, _080037CC @ =0x68736D53
	cmp r3, r0
	beq _080037C0
	ldr r0, _080037D0 @ =0x040000C6
	movs r4, #0xb6
	lsls r4, r4, #8
	adds r1, r4, #0
	strh r1, [r0]
	adds r0, #0xc
	strh r1, [r0]
	ldrb r0, [r2, #4]
	movs r0, #0
	strb r0, [r2, #4]
	adds r0, r3, #0
	subs r0, #0xa
	str r0, [r2]
_080037C0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080037C8: .4byte 0x03007FF0
_080037CC: .4byte 0x68736D53
_080037D0: .4byte 0x040000C6

	thumb_func_start sub_080037D4
sub_080037D4: @ 0x080037D4
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r6, r1, #0
	lsls r2, r2, #0x18
	lsrs r4, r2, #0x18
	cmp r4, #0
	beq _08003838
	cmp r4, #0x10
	bls _080037E8
	movs r4, #0x10
_080037E8:
	ldr r0, _08003840 @ =0x03007FF0
	ldr r5, [r0]
	ldr r1, [r5]
	ldr r0, _08003844 @ =0x68736D53
	cmp r1, r0
	bne _08003838
	adds r0, r1, #1
	str r0, [r5]
	adds r0, r7, #0
	bl sub_08003480
	str r6, [r7, #0x2c]
	strb r4, [r7, #8]
	movs r0, #0x80
	lsls r0, r0, #0x18
	str r0, [r7, #4]
	cmp r4, #0
	beq _0800381C
	movs r1, #0
_0800380E:
	strb r1, [r6]
	subs r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r6, #0x50
	cmp r4, #0
	bne _0800380E
_0800381C:
	ldr r0, [r5, #0x20]
	cmp r0, #0
	beq _0800382C
	str r0, [r7, #0x38]
	ldr r0, [r5, #0x24]
	str r0, [r7, #0x3c]
	movs r0, #0
	str r0, [r5, #0x20]
_0800382C:
	str r7, [r5, #0x24]
	ldr r0, _08003848 @ =sub_08002A84
	str r0, [r5, #0x20]
	ldr r0, _08003844 @ =0x68736D53
	str r0, [r5]
	str r0, [r7, #0x34]
_08003838:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08003840: .4byte 0x03007FF0
_08003844: .4byte 0x68736D53
_08003848: .4byte sub_08002A84

	thumb_func_start sub_0800384C
sub_0800384C: @ 0x0800384C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r7, r1, #0
	ldr r1, [r5, #0x34]
	ldr r0, _0800392C @ =0x68736D53
	cmp r1, r0
	bne _08003922
	ldrb r0, [r5, #0xb]
	ldrb r2, [r7, #2]
	cmp r0, #0
	beq _0800388E
	ldr r0, [r5]
	cmp r0, #0
	beq _08003878
	ldr r1, [r5, #0x2c]
	movs r0, #0x40
	ldrb r1, [r1]
	ands r0, r1
	cmp r0, #0
	bne _08003884
_08003878:
	ldr r1, [r5, #4]
	ldrh r0, [r5, #4]
	cmp r0, #0
	beq _0800388E
	cmp r1, #0
	blt _0800388E
_08003884:
	ldrb r0, [r7, #2]
	adds r2, r0, #0
	ldrb r0, [r5, #9]
	cmp r0, r2
	bhi _08003922
_0800388E:
	ldr r0, [r5, #0x34]
	adds r0, #1
	str r0, [r5, #0x34]
	movs r1, #0
	str r1, [r5, #4]
	str r7, [r5]
	ldr r0, [r7, #4]
	str r0, [r5, #0x30]
	strb r2, [r5, #9]
	str r1, [r5, #0xc]
	movs r0, #0x96
	strh r0, [r5, #0x1c]
	strh r0, [r5, #0x20]
	adds r0, #0x6a
	strh r0, [r5, #0x1e]
	strh r1, [r5, #0x22]
	strh r1, [r5, #0x24]
	movs r6, #0
	ldr r4, [r5, #0x2c]
	ldrb r1, [r7]
	cmp r6, r1
	bge _080038EE
	ldrb r0, [r5, #8]
	cmp r6, r0
	bge _0800390E
	mov r8, r6
_080038C2:
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08002CEC
	movs r0, #0xc0
	strb r0, [r4]
	mov r1, r8
	str r1, [r4, #0x20]
	lsls r1, r6, #2
	adds r0, r7, #0
	adds r0, #8
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r4, #0x40]
	adds r6, #1
	adds r4, #0x50
	ldrb r0, [r7]
	cmp r6, r0
	bge _080038EE
	ldrb r1, [r5, #8]
	cmp r6, r1
	blt _080038C2
_080038EE:
	ldrb r0, [r5, #8]
	cmp r6, r0
	bge _0800390E
	movs r1, #0
	mov r8, r1
_080038F8:
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08002CEC
	mov r0, r8
	strb r0, [r4]
	adds r6, #1
	adds r4, #0x50
	ldrb r1, [r5, #8]
	cmp r6, r1
	blt _080038F8
_0800390E:
	movs r0, #0x80
	ldrb r1, [r7, #3]
	ands r0, r1
	cmp r0, #0
	beq _0800391E
	ldrb r0, [r7, #3]
	bl sub_08003630
_0800391E:
	ldr r0, _0800392C @ =0x68736D53
	str r0, [r5, #0x34]
_08003922:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800392C: .4byte 0x68736D53

	thumb_func_start sub_08003930
sub_08003930: @ 0x08003930
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r1, [r6, #0x34]
	ldr r0, _0800396C @ =0x68736D53
	cmp r1, r0
	bne _08003966
	adds r0, r1, #1
	str r0, [r6, #0x34]
	ldr r0, [r6, #4]
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r6, #4]
	ldrb r4, [r6, #8]
	ldr r5, [r6, #0x2c]
	cmp r4, #0
	ble _08003962
_08003952:
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_08002CEC
	subs r4, #1
	adds r5, #0x50
	cmp r4, #0
	bgt _08003952
_08003962:
	ldr r0, _0800396C @ =0x68736D53
	str r0, [r6, #0x34]
_08003966:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800396C: .4byte 0x68736D53

	thumb_func_start sub_08003970
sub_08003970: @ 0x08003970
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldrh r1, [r6, #0x24]
	cmp r1, #0
	beq _08003A32
	ldrh r0, [r6, #0x26]
	subs r0, #1
	strh r0, [r6, #0x26]
	ldr r3, _080039B0 @ =0x0000FFFF
	adds r2, r3, #0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	bne _08003A32
	strh r1, [r6, #0x26]
	ldrh r1, [r6, #0x28]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080039B4
	adds r0, r1, #0
	adds r0, #0x10
	strh r0, [r6, #0x28]
	ands r0, r2
	cmp r0, #0xff
	bls _08003A06
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r6, #0x28]
	strh r3, [r6, #0x24]
	b _08003A06
	.align 2, 0
_080039B0: .4byte 0x0000FFFF
_080039B4:
	adds r0, r1, #0
	subs r0, #0x10
	strh r0, [r6, #0x28]
	ands r0, r2
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _08003A06
	ldrb r5, [r6, #8]
	ldr r4, [r6, #0x2c]
	cmp r5, #0
	ble _080039E6
_080039CA:
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_08002CEC
	movs r0, #1
	ldrh r7, [r6, #0x28]
	ands r0, r7
	cmp r0, #0
	bne _080039DE
	strb r0, [r4]
_080039DE:
	subs r5, #1
	adds r4, #0x50
	cmp r5, #0
	bgt _080039CA
_080039E6:
	movs r0, #1
	ldrh r1, [r6, #0x28]
	ands r0, r1
	cmp r0, #0
	beq _080039FA
	ldr r0, [r6, #4]
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	b _080039FE
_080039FA:
	movs r0, #0x80
	lsls r0, r0, #0x18
_080039FE:
	str r0, [r6, #4]
	movs r0, #0
	strh r0, [r6, #0x24]
	b _08003A32
_08003A06:
	ldrb r5, [r6, #8]
	ldr r4, [r6, #0x2c]
	cmp r5, #0
	ble _08003A32
	movs r3, #0x80
	movs r7, #0
	movs r2, #3
_08003A14:
	ldrb r1, [r4]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _08003A2A
	ldrh r7, [r6, #0x28]
	lsrs r0, r7, #2
	strb r0, [r4, #0x13]
	adds r0, r1, #0
	orrs r0, r2
	strb r0, [r4]
_08003A2A:
	subs r5, #1
	adds r4, #0x50
	cmp r5, #0
	bgt _08003A14
_08003A32:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08003A38
sub_08003A38: @ 0x08003A38
	push {r4, lr}
	adds r2, r1, #0
	movs r0, #1
	ldrb r1, [r2]
	ands r0, r1
	cmp r0, #0
	beq _08003A9C
	ldrb r3, [r2, #0x13]
	ldrb r1, [r2, #0x12]
	adds r0, r3, #0
	muls r0, r1, r0
	lsrs r3, r0, #5
	ldrb r4, [r2, #0x18]
	cmp r4, #1
	bne _08003A60
	movs r0, #0x16
	ldrsb r0, [r2, r0]
	adds r0, #0x80
	muls r0, r3, r0
	lsrs r3, r0, #7
_08003A60:
	movs r0, #0x14
	ldrsb r0, [r2, r0]
	lsls r0, r0, #1
	movs r1, #0x15
	ldrsb r1, [r2, r1]
	adds r1, r0, r1
	cmp r4, #2
	bne _08003A76
	movs r0, #0x16
	ldrsb r0, [r2, r0]
	adds r1, r1, r0
_08003A76:
	movs r0, #0x80
	rsbs r0, r0, #0
	cmp r1, r0
	bge _08003A82
	adds r1, r0, #0
	b _08003A88
_08003A82:
	cmp r1, #0x7f
	ble _08003A88
	movs r1, #0x7f
_08003A88:
	adds r0, r1, #0
	adds r0, #0x80
	muls r0, r3, r0
	lsrs r0, r0, #8
	strb r0, [r2, #0x10]
	movs r0, #0x7f
	subs r0, r0, r1
	muls r0, r3, r0
	lsrs r0, r0, #8
	strb r0, [r2, #0x11]
_08003A9C:
	ldrb r1, [r2]
	movs r0, #4
	ands r0, r1
	adds r3, r1, #0
	cmp r0, #0
	beq _08003AE0
	movs r0, #0xe
	ldrsb r0, [r2, r0]
	ldrb r1, [r2, #0xf]
	muls r0, r1, r0
	movs r1, #0xc
	ldrsb r1, [r2, r1]
	adds r1, r1, r0
	lsls r1, r1, #2
	movs r0, #0xa
	ldrsb r0, [r2, r0]
	lsls r0, r0, #8
	adds r1, r1, r0
	movs r0, #0xb
	ldrsb r0, [r2, r0]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldrb r0, [r2, #0xd]
	adds r1, r0, r1
	ldrb r0, [r2, #0x18]
	cmp r0, #0
	bne _08003ADA
	movs r0, #0x16
	ldrsb r0, [r2, r0]
	lsls r0, r0, #4
	adds r1, r1, r0
_08003ADA:
	asrs r0, r1, #8
	strb r0, [r2, #8]
	strb r1, [r2, #9]
_08003AE0:
	movs r0, #0xfa
	ands r0, r3
	strb r0, [r2]
	pop {r4}
	pop {r0}
	bx r0
_08003AEC:
	.byte 0xF0, 0xB5, 0x00, 0x06
	.byte 0x00, 0x0E, 0x09, 0x06, 0x0D, 0x0E, 0x12, 0x06, 0x12, 0x0E, 0x94, 0x46, 0x04, 0x28, 0x11, 0xD1
	.byte 0x14, 0x2D, 0x01, 0xD8, 0x00, 0x25, 0x06, 0xE0, 0x28, 0x1C, 0x15, 0x38, 0x00, 0x06, 0x05, 0x0E
	.byte 0x3B, 0x2D, 0x00, 0xD9, 0x3B, 0x25, 0x02, 0x48, 0x28, 0x18, 0x00, 0x78, 0x33, 0xE0, 0x00, 0x00
	.byte 0xD4, 0x41, 0x04, 0x08, 0x23, 0x2D, 0x03, 0xD8, 0x00, 0x20, 0x84, 0x46, 0x00, 0x25, 0x08, 0xE0
	.byte 0x28, 0x1C, 0x24, 0x38, 0x00, 0x06, 0x05, 0x0E, 0x82, 0x2D, 0x02, 0xD9, 0x82, 0x25, 0xFF, 0x21
	.byte 0x8C, 0x46, 0x12, 0x4B, 0xE8, 0x18, 0x06, 0x78, 0x11, 0x4C, 0x0F, 0x22, 0x30, 0x1C, 0x10, 0x40
	.byte 0x40, 0x00, 0x00, 0x19, 0x00, 0x27, 0xC1, 0x5F, 0x30, 0x11, 0x0E, 0x1C, 0x06, 0x41, 0x68, 0x1C
	.byte 0xC0, 0x18, 0x01, 0x78, 0x08, 0x1C, 0x10, 0x40, 0x40, 0x00, 0x00, 0x19, 0x00, 0x22, 0x80, 0x5E
	.byte 0x09, 0x11, 0x08, 0x41, 0x80, 0x1B, 0x67, 0x46, 0x47, 0x43, 0x38, 0x1C, 0x00, 0x12, 0x30, 0x18
	.byte 0x80, 0x21, 0x09, 0x01, 0x40, 0x18, 0xF0, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0x38, 0x41, 0x04, 0x08
	.byte 0xBC, 0x41, 0x04, 0x08

	thumb_func_start sub_08003B94
sub_08003B94: @ 0x08003B94
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r0, #0
	cmp r0, #2
	beq _08003BBC
	cmp r0, #2
	bgt _08003BA8
	cmp r0, #1
	beq _08003BAE
	b _08003BD0
_08003BA8:
	cmp r1, #3
	beq _08003BC4
	b _08003BD0
_08003BAE:
	ldr r1, _08003BB8 @ =0x04000063
	movs r0, #8
	strb r0, [r1]
	adds r1, #2
	b _08003BD8
	.align 2, 0
_08003BB8: .4byte 0x04000063
_08003BBC:
	ldr r1, _08003BC0 @ =0x04000069
	b _08003BD2
	.align 2, 0
_08003BC0: .4byte 0x04000069
_08003BC4:
	ldr r1, _08003BCC @ =0x04000070
	movs r0, #0
	b _08003BDA
	.align 2, 0
_08003BCC: .4byte 0x04000070
_08003BD0:
	ldr r1, _08003BE0 @ =0x04000079
_08003BD2:
	movs r0, #8
	strb r0, [r1]
	adds r1, #4
_08003BD8:
	movs r0, #0x80
_08003BDA:
	strb r0, [r1]
	bx lr
	.align 2, 0
_08003BE0: .4byte 0x04000079

	thumb_func_start sub_08003BE4
sub_08003BE4: @ 0x08003BE4
	push {r4, lr}
	adds r1, r0, #0
	ldrb r0, [r1, #2]
	lsls r2, r0, #0x18
	lsrs r4, r2, #0x18
	ldrb r3, [r1, #3]
	lsls r0, r3, #0x18
	lsrs r3, r0, #0x18
	cmp r4, r3
	blo _08003C04
	lsrs r0, r2, #0x19
	cmp r0, r3
	blo _08003C10
	movs r0, #0xf
	strb r0, [r1, #0x1b]
	b _08003C1E
_08003C04:
	lsrs r0, r0, #0x19
	cmp r0, r4
	blo _08003C10
	movs r0, #0xf0
	strb r0, [r1, #0x1b]
	b _08003C1E
_08003C10:
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	ldrb r2, [r1, #3]
	ldrb r3, [r1, #2]
	adds r0, r2, r3
	lsrs r0, r0, #4
	b _08003C2E
_08003C1E:
	ldrb r2, [r1, #3]
	ldrb r3, [r1, #2]
	adds r0, r2, r3
	lsrs r0, r0, #4
	strb r0, [r1, #0xa]
	cmp r0, #0xf
	bls _08003C30
	movs r0, #0xf
_08003C2E:
	strb r0, [r1, #0xa]
_08003C30:
	ldrb r2, [r1, #6]
	ldrb r3, [r1, #0xa]
	adds r0, r2, #0
	muls r0, r3, r0
	adds r0, #0xf
	asrs r0, r0, #4
	strb r0, [r1, #0x19]
	ldrb r0, [r1, #0x1c]
	ldrb r2, [r1, #0x1b]
	ands r0, r2
	strb r0, [r1, #0x1b]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08003C4C
sub_08003C4C: @ 0x08003C4C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	ldr r0, _08003C6C @ =0x03007FF0
	ldr r0, [r0]
	str r0, [sp, #4]
	ldrb r0, [r0, #0xa]
	cmp r0, #0
	beq _08003C70
	subs r0, #1
	ldr r1, [sp, #4]
	strb r0, [r1, #0xa]
	b _08003C76
	.align 2, 0
_08003C6C: .4byte 0x03007FF0
_08003C70:
	movs r0, #0xe
	ldr r2, [sp, #4]
	strb r0, [r2, #0xa]
_08003C76:
	movs r6, #1
	ldr r0, [sp, #4]
	ldr r4, [r0, #0x1c]
_08003C7C:
	ldrb r1, [r4]
	movs r0, #0xc7
	ands r0, r1
	adds r2, r6, #1
	mov sl, r2
	movs r2, #0x40
	adds r2, r2, r4
	mov sb, r2
	cmp r0, #0
	bne _08003C92
	b _0800407C
_08003C92:
	cmp r6, #2
	beq _08003CC4
	cmp r6, #2
	bgt _08003CA0
	cmp r6, #1
	beq _08003CA6
	b _08003CFC
_08003CA0:
	cmp r6, #3
	beq _08003CDC
	b _08003CFC
_08003CA6:
	ldr r0, _08003CB8 @ =0x04000060
	str r0, [sp, #8]
	ldr r7, _08003CBC @ =0x04000062
	ldr r2, _08003CC0 @ =0x04000063
	str r2, [sp, #0xc]
	adds r0, #4
	str r0, [sp, #0x10]
	adds r2, #2
	b _08003D0C
	.align 2, 0
_08003CB8: .4byte 0x04000060
_08003CBC: .4byte 0x04000062
_08003CC0: .4byte 0x04000063
_08003CC4:
	ldr r0, _08003CD0 @ =0x04000061
	str r0, [sp, #8]
	ldr r7, _08003CD4 @ =0x04000068
	ldr r2, _08003CD8 @ =0x04000069
	b _08003D04
	.align 2, 0
_08003CD0: .4byte 0x04000061
_08003CD4: .4byte 0x04000068
_08003CD8: .4byte 0x04000069
_08003CDC:
	ldr r0, _08003CF0 @ =0x04000070
	str r0, [sp, #8]
	ldr r7, _08003CF4 @ =0x04000072
	ldr r2, _08003CF8 @ =0x04000073
	str r2, [sp, #0xc]
	adds r0, #4
	str r0, [sp, #0x10]
	adds r2, #2
	b _08003D0C
	.align 2, 0
_08003CF0: .4byte 0x04000070
_08003CF4: .4byte 0x04000072
_08003CF8: .4byte 0x04000073
_08003CFC:
	ldr r0, _08003D5C @ =0x04000071
	str r0, [sp, #8]
	ldr r7, _08003D60 @ =0x04000078
	ldr r2, _08003D64 @ =0x04000079
_08003D04:
	str r2, [sp, #0xc]
	adds r0, #0xb
	str r0, [sp, #0x10]
	adds r2, #4
_08003D0C:
	str r2, [sp, #0x14]
	ldr r0, [sp, #4]
	ldrb r0, [r0, #0xa]
	str r0, [sp]
	ldr r2, [sp, #0xc]
	ldrb r0, [r2]
	mov r8, r0
	adds r2, r1, #0
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	beq _08003E02
	movs r3, #0x40
	adds r0, r3, #0
	ands r0, r2
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	adds r0, r6, #1
	mov sl, r0
	movs r1, #0x40
	adds r1, r1, r4
	mov sb, r1
	cmp r5, #0
	bne _08003E26
	movs r0, #3
	strb r0, [r4]
	strb r0, [r4, #0x1d]
	adds r0, r4, #0
	str r3, [sp, #0x18]
	bl sub_08003BE4
	ldr r3, [sp, #0x18]
	cmp r6, #2
	beq _08003D74
	cmp r6, #2
	bgt _08003D68
	cmp r6, #1
	beq _08003D6E
	b _08003DC8
	.align 2, 0
_08003D5C: .4byte 0x04000071
_08003D60: .4byte 0x04000078
_08003D64: .4byte 0x04000079
_08003D68:
	cmp r6, #3
	beq _08003D80
	b _08003DC8
_08003D6E:
	ldrb r0, [r4, #0x1f]
	ldr r2, [sp, #8]
	strb r0, [r2]
_08003D74:
	ldr r0, [r4, #0x24]
	lsls r0, r0, #6
	ldrb r1, [r4, #0x1e]
	adds r0, r1, r0
	strb r0, [r7]
	b _08003DD4
_08003D80:
	ldr r1, [r4, #0x24]
	ldr r0, [r4, #0x28]
	cmp r1, r0
	beq _08003DA8
	ldr r2, [sp, #8]
	strb r3, [r2]
	ldr r1, _08003DBC @ =0x04000090
	ldr r2, [r4, #0x24]
	ldr r0, [r2]
	str r0, [r1]
	adds r1, #4
	ldr r0, [r2, #4]
	str r0, [r1]
	adds r1, #4
	ldr r0, [r2, #8]
	str r0, [r1]
	adds r1, #4
	ldr r0, [r2, #0xc]
	str r0, [r1]
	str r2, [r4, #0x28]
_08003DA8:
	ldr r0, [sp, #8]
	strb r5, [r0]
	ldrb r0, [r4, #0x1e]
	strb r0, [r7]
	ldrb r0, [r4, #0x1e]
	cmp r0, #0
	beq _08003DC0
	movs r0, #0xc0
	b _08003DE2
	.align 2, 0
_08003DBC: .4byte 0x04000090
_08003DC0:
	movs r1, #0x80
	rsbs r1, r1, #0
	strb r1, [r4, #0x1a]
	b _08003DE4
_08003DC8:
	ldrb r0, [r4, #0x1e]
	strb r0, [r7]
	ldr r0, [r4, #0x24]
	lsls r0, r0, #3
	ldr r2, [sp, #0x10]
	strb r0, [r2]
_08003DD4:
	ldrb r0, [r4, #4]
	adds r0, #8
	mov r8, r0
	ldrb r0, [r4, #0x1e]
	cmp r0, #0
	beq _08003DE2
	movs r0, #0x40
_08003DE2:
	strb r0, [r4, #0x1a]
_08003DE4:
	ldrb r1, [r4, #4]
	movs r2, #0
	strb r1, [r4, #0xb]
	movs r0, #0xff
	ands r0, r1
	adds r1, r6, #1
	mov sl, r1
	movs r1, #0x40
	adds r1, r1, r4
	mov sb, r1
	cmp r0, #0
	bne _08003DFE
	b _08003F3A
_08003DFE:
	strb r2, [r4, #9]
	b _08003F68
_08003E02:
	movs r0, #4
	ands r0, r2
	cmp r0, #0
	beq _08003E34
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	movs r2, #0xff
	ands r0, r2
	lsls r0, r0, #0x18
	adds r1, r6, #1
	mov sl, r1
	movs r2, #0x40
	adds r2, r2, r4
	mov sb, r2
	cmp r0, #0
	ble _08003E26
	b _08003F7A
_08003E26:
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	bl sub_08003B94
	movs r0, #0
	strb r0, [r4]
	b _08004078
_08003E34:
	movs r0, #0x40
	ands r0, r1
	adds r2, r6, #1
	mov sl, r2
	movs r2, #0x40
	adds r2, r2, r4
	mov sb, r2
	cmp r0, #0
	beq _08003E74
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _08003E74
	movs r0, #0xfc
	ands r0, r1
	movs r2, #0
	strb r0, [r4]
	ldrb r1, [r4, #7]
	strb r1, [r4, #0xb]
	movs r0, #0xff
	ands r0, r1
	cmp r0, #0
	beq _08003EA6
	movs r0, #1
	ldrb r1, [r4, #0x1d]
	orrs r0, r1
	strb r0, [r4, #0x1d]
	cmp r6, #3
	beq _08003F68
	ldrb r2, [r4, #7]
	mov r8, r2
	b _08003F68
_08003E74:
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _08003F68
	cmp r6, #3
	bne _08003E86
	movs r0, #1
	ldrb r1, [r4, #0x1d]
	orrs r0, r1
	strb r0, [r4, #0x1d]
_08003E86:
	adds r0, r4, #0
	bl sub_08003BE4
	movs r0, #3
	ldrb r2, [r4]
	ands r0, r2
	cmp r0, #0
	bne _08003EDA
	ldrb r0, [r4, #9]
	subs r0, #1
	strb r0, [r4, #9]
	movs r1, #0xff
	ands r0, r1
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _08003ED6
_08003EA6:
	ldrb r2, [r4, #0xc]
	ldrb r1, [r4, #0xa]
	adds r0, r2, #0
	muls r0, r1, r0
	adds r0, #0xff
	asrs r0, r0, #8
	movs r1, #0
	strb r0, [r4, #9]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08003E26
	movs r0, #4
	ldrb r2, [r4]
	orrs r0, r2
	strb r0, [r4]
	movs r0, #1
	ldrb r1, [r4, #0x1d]
	orrs r0, r1
	strb r0, [r4, #0x1d]
	cmp r6, #3
	beq _08003F7A
	movs r2, #8
	mov r8, r2
	b _08003F7A
_08003ED6:
	ldrb r0, [r4, #7]
	b _08003F66
_08003EDA:
	cmp r0, #1
	bne _08003EE6
_08003EDE:
	ldrb r0, [r4, #0x19]
	strb r0, [r4, #9]
	movs r0, #7
	b _08003F66
_08003EE6:
	cmp r0, #2
	bne _08003F2A
	ldrb r0, [r4, #9]
	subs r0, #1
	strb r0, [r4, #9]
	movs r1, #0xff
	ands r0, r1
	lsls r0, r0, #0x18
	ldrb r2, [r4, #0x19]
	lsls r1, r2, #0x18
	cmp r0, r1
	bgt _08003F26
_08003EFE:
	ldrb r0, [r4, #6]
	cmp r0, #0
	bne _08003F0E
	movs r0, #0xfc
	ldrb r1, [r4]
	ands r0, r1
	strb r0, [r4]
	b _08003EA6
_08003F0E:
	ldrb r0, [r4]
	subs r0, #1
	strb r0, [r4]
	movs r0, #1
	ldrb r2, [r4, #0x1d]
	orrs r0, r2
	strb r0, [r4, #0x1d]
	cmp r6, #3
	beq _08003EDE
	movs r0, #8
	mov r8, r0
	b _08003EDE
_08003F26:
	ldrb r0, [r4, #5]
	b _08003F66
_08003F2A:
	ldrb r0, [r4, #9]
	adds r0, #1
	strb r0, [r4, #9]
	movs r1, #0xff
	ands r0, r1
	ldrb r2, [r4, #0xa]
	cmp r0, r2
	blo _08003F64
_08003F3A:
	ldrb r0, [r4]
	subs r0, #1
	movs r2, #0
	strb r0, [r4]
	ldrb r1, [r4, #5]
	strb r1, [r4, #0xb]
	movs r0, #0xff
	ands r0, r1
	cmp r0, #0
	beq _08003EFE
	movs r0, #1
	ldrb r1, [r4, #0x1d]
	orrs r0, r1
	strb r0, [r4, #0x1d]
	ldrb r0, [r4, #0xa]
	strb r0, [r4, #9]
	cmp r6, #3
	beq _08003F68
	ldrb r2, [r4, #5]
	mov r8, r2
	b _08003F68
_08003F64:
	ldrb r0, [r4, #4]
_08003F66:
	strb r0, [r4, #0xb]
_08003F68:
	ldrb r0, [r4, #0xb]
	subs r0, #1
	strb r0, [r4, #0xb]
	ldr r0, [sp]
	cmp r0, #0
	bne _08003F7A
	subs r0, #1
	str r0, [sp]
	b _08003E74
_08003F7A:
	movs r0, #2
	ldrb r1, [r4, #0x1d]
	ands r0, r1
	cmp r0, #0
	beq _08003FF2
	cmp r6, #3
	bgt _08003FBA
	movs r0, #8
	ldrb r2, [r4, #1]
	ands r0, r2
	cmp r0, #0
	beq _08003FBA
	ldr r0, _08003FA4 @ =0x04000089
	ldrb r0, [r0]
	cmp r0, #0x3f
	bgt _08003FAC
	ldr r0, [r4, #0x20]
	adds r0, #2
	ldr r1, _08003FA8 @ =0x000007FC
	b _08003FB6
	.align 2, 0
_08003FA4: .4byte 0x04000089
_08003FA8: .4byte 0x000007FC
_08003FAC:
	cmp r0, #0x7f
	bgt _08003FBA
	ldr r0, [r4, #0x20]
	adds r0, #1
	ldr r1, _08003FC8 @ =0x000007FE
_08003FB6:
	ands r0, r1
	str r0, [r4, #0x20]
_08003FBA:
	cmp r6, #4
	beq _08003FCC
	ldr r0, [r4, #0x20]
	ldr r1, [sp, #0x10]
	strb r0, [r1]
	b _08003FDA
	.align 2, 0
_08003FC8: .4byte 0x000007FE
_08003FCC:
	ldr r2, [sp, #0x10]
	ldrb r0, [r2]
	movs r1, #8
	ands r1, r0
	ldr r0, [r4, #0x20]
	orrs r0, r1
	strb r0, [r2]
_08003FDA:
	movs r0, #0xc0
	ldrb r1, [r4, #0x1a]
	ands r0, r1
	adds r1, r4, #0
	adds r1, #0x21
	ldrb r1, [r1]
	adds r0, r1, r0
	strb r0, [r4, #0x1a]
	movs r2, #0xff
	ands r0, r2
	ldr r1, [sp, #0x14]
	strb r0, [r1]
_08003FF2:
	movs r0, #1
	ldrb r2, [r4, #0x1d]
	ands r0, r2
	cmp r0, #0
	beq _08004078
	ldr r1, _0800403C @ =0x04000081
	ldrb r0, [r1]
	ldrb r2, [r4, #0x1c]
	bics r0, r2
	ldrb r2, [r4, #0x1b]
	orrs r0, r2
	strb r0, [r1]
	cmp r6, #3
	bne _08004044
	ldr r0, _08004040 @ =0x08044210
	ldrb r1, [r4, #9]
	adds r0, r1, r0
	ldrb r0, [r0]
	ldr r2, [sp, #0xc]
	strb r0, [r2]
	movs r1, #0x80
	adds r0, r1, #0
	ldrb r2, [r4, #0x1a]
	ands r0, r2
	cmp r0, #0
	beq _08004078
	ldr r0, [sp, #8]
	strb r1, [r0]
	ldrb r0, [r4, #0x1a]
	ldr r1, [sp, #0x14]
	strb r0, [r1]
	movs r0, #0x7f
	ldrb r2, [r4, #0x1a]
	ands r0, r2
	strb r0, [r4, #0x1a]
	b _08004078
	.align 2, 0
_0800403C: .4byte 0x04000081
_08004040: .4byte 0x08044210
_08004044:
	movs r0, #0xf
	mov r1, r8
	ands r1, r0
	mov r8, r1
	ldrb r2, [r4, #9]
	lsls r0, r2, #4
	add r0, r8
	ldr r1, [sp, #0xc]
	strb r0, [r1]
	movs r2, #0x80
	ldrb r0, [r4, #0x1a]
	orrs r0, r2
	ldr r1, [sp, #0x14]
	strb r0, [r1]
	cmp r6, #1
	bne _08004078
	ldr r0, [sp, #8]
	ldrb r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _08004078
	ldrb r0, [r4, #0x1a]
	orrs r0, r2
	ldr r1, [sp, #0x14]
	strb r0, [r1]
_08004078:
	movs r0, #0
	strb r0, [r4, #0x1d]
_0800407C:
	mov r6, sl
	mov r4, sb
	cmp r6, #4
	bgt _08004086
	b _08003C7C
_08004086:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08004098:
	.byte 0x10, 0xB5, 0x02, 0x1C, 0x09, 0x04, 0x09, 0x0C
	.byte 0x53, 0x6B, 0x06, 0x48, 0x83, 0x42, 0x05, 0xD1, 0xD1, 0x83, 0x94, 0x8B, 0x08, 0x1C, 0x60, 0x43
	.byte 0x00, 0x12, 0x10, 0x84, 0x10, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0x53, 0x6D, 0x73, 0x68

	thumb_func_start sub_080040C0
sub_080040C0: @ 0x080040C0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r6, r2, #0x10
	ldr r3, [r4, #0x34]
	ldr r0, _08004124 @ =0x68736D53
	cmp r3, r0
	bne _08004118
	adds r0, r3, #1
	str r0, [r4, #0x34]
	ldrb r2, [r4, #8]
	ldr r1, [r4, #0x2c]
	movs r5, #1
	cmp r2, #0
	ble _08004114
	movs r0, #0x80
	mov r8, r0
	lsrs r6, r6, #0x12
	movs r0, #3
	mov ip, r0
_080040F0:
	adds r0, r7, #0
	ands r0, r5
	cmp r0, #0
	beq _0800410A
	ldrb r3, [r1]
	mov r0, r8
	ands r0, r3
	cmp r0, #0
	beq _0800410A
	strb r6, [r1, #0x13]
	mov r0, ip
	orrs r0, r3
	strb r0, [r1]
_0800410A:
	subs r2, #1
	adds r1, #0x50
	lsls r5, r5, #1
	cmp r2, #0
	bgt _080040F0
_08004114:
	ldr r0, _08004124 @ =0x68736D53
	str r0, [r4, #0x34]
_08004118:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08004124: .4byte 0x68736D53

	thumb_func_start sub_08004128
sub_08004128: @ 0x08004128
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov ip, r1
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	ldr r3, [r4, #0x34]
	ldr r0, _08004198 @ =0x68736D53
	cmp r3, r0
	bne _0800418A
	adds r0, r3, #1
	str r0, [r4, #0x34]
	ldrb r2, [r4, #8]
	ldr r3, [r4, #0x2c]
	movs r5, #1
	cmp r2, #0
	ble _08004186
	movs r0, #0x80
	mov sb, r0
	lsls r0, r6, #0x10
	asrs r7, r0, #0x18
	movs r0, #0xc
	mov r8, r0
_08004160:
	mov r0, ip
	ands r0, r5
	cmp r0, #0
	beq _0800417C
	ldrb r1, [r3]
	mov r0, sb
	ands r0, r1
	cmp r0, #0
	beq _0800417C
	strb r7, [r3, #0xb]
	strb r6, [r3, #0xd]
	mov r0, r8
	orrs r0, r1
	strb r0, [r3]
_0800417C:
	subs r2, #1
	adds r3, #0x50
	lsls r5, r5, #1
	cmp r2, #0
	bgt _08004160
_08004186:
	ldr r0, _08004198 @ =0x68736D53
	str r0, [r4, #0x34]
_0800418A:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08004198: .4byte 0x68736D53

	thumb_func_start sub_0800419C
sub_0800419C: @ 0x0800419C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r2, r2, #0x18
	lsrs r6, r2, #0x18
	ldr r3, [r4, #0x34]
	ldr r0, _08004200 @ =0x68736D53
	cmp r3, r0
	bne _080041F4
	adds r0, r3, #1
	str r0, [r4, #0x34]
	ldrb r2, [r4, #8]
	ldr r1, [r4, #0x2c]
	movs r5, #1
	cmp r2, #0
	ble _080041F0
	movs r0, #0x80
	mov r8, r0
	movs r0, #3
	mov ip, r0
_080041CC:
	adds r0, r7, #0
	ands r0, r5
	cmp r0, #0
	beq _080041E6
	ldrb r3, [r1]
	mov r0, r8
	ands r0, r3
	cmp r0, #0
	beq _080041E6
	strb r6, [r1, #0x15]
	mov r0, ip
	orrs r0, r3
	strb r0, [r1]
_080041E6:
	subs r2, #1
	adds r1, #0x50
	lsls r5, r5, #1
	cmp r2, #0
	bgt _080041CC
_080041F0:
	ldr r0, _08004200 @ =0x68736D53
	str r0, [r4, #0x34]
_080041F4:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08004200: .4byte 0x68736D53

	thumb_func_start sub_08004204
sub_08004204: @ 0x08004204
	adds r1, r0, #0
	movs r2, #0
	movs r0, #0
	strb r0, [r1, #0x1a]
	strb r0, [r1, #0x16]
	ldrb r0, [r1, #0x18]
	cmp r0, #0
	bne _08004218
	movs r0, #0xc
	b _0800421A
_08004218:
	movs r0, #3
_0800421A:
	ldrb r2, [r1]
	orrs r0, r2
	strb r0, [r1]
	bx lr
	.align 2, 0

	thumb_func_start sub_08004224
sub_08004224: @ 0x08004224
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sl, r1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov r8, r2
	ldr r1, [r6, #0x34]
	ldr r0, _08004294 @ =0x68736D53
	cmp r1, r0
	bne _08004284
	adds r0, r1, #1
	str r0, [r6, #0x34]
	ldrb r5, [r6, #8]
	ldr r4, [r6, #0x2c]
	movs r7, #1
	cmp r5, #0
	ble _08004280
	mov sb, r8
_08004254:
	mov r0, sl
	ands r0, r7
	cmp r0, #0
	beq _08004276
	movs r0, #0x80
	ldrb r1, [r4]
	ands r0, r1
	cmp r0, #0
	beq _08004276
	mov r0, r8
	strb r0, [r4, #0x17]
	mov r1, sb
	cmp r1, #0
	bne _08004276
	adds r0, r4, #0
	bl sub_08004204
_08004276:
	subs r5, #1
	adds r4, #0x50
	lsls r7, r7, #1
	cmp r5, #0
	bgt _08004254
_08004280:
	ldr r0, _08004294 @ =0x68736D53
	str r0, [r6, #0x34]
_08004284:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08004294: .4byte 0x68736D53

	thumb_func_start sub_08004298
sub_08004298: @ 0x08004298
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sl, r1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov r8, r2
	ldr r1, [r6, #0x34]
	ldr r0, _08004308 @ =0x68736D53
	cmp r1, r0
	bne _080042F8
	adds r0, r1, #1
	str r0, [r6, #0x34]
	ldrb r5, [r6, #8]
	ldr r4, [r6, #0x2c]
	movs r7, #1
	cmp r5, #0
	ble _080042F4
	mov sb, r8
_080042C8:
	mov r0, sl
	ands r0, r7
	cmp r0, #0
	beq _080042EA
	movs r0, #0x80
	ldrb r1, [r4]
	ands r0, r1
	cmp r0, #0
	beq _080042EA
	mov r0, r8
	strb r0, [r4, #0x19]
	mov r1, sb
	cmp r1, #0
	bne _080042EA
	adds r0, r4, #0
	bl sub_08004204
_080042EA:
	subs r5, #1
	adds r4, #0x50
	lsls r7, r7, #1
	cmp r5, #0
	bgt _080042C8
_080042F4:
	ldr r0, _08004308 @ =0x68736D53
	str r0, [r6, #0x34]
_080042F8:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08004308: .4byte 0x68736D53

	thumb_func_start sub_0800430C
sub_0800430C: @ 0x0800430C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	ldr r1, [r6, #0x40]
	ldrb r5, [r1]
	adds r2, r1, #1
	str r2, [r6, #0x40]
	ldr r0, [r4, #0x18]
	ldrb r1, [r1, #1]
	adds r3, r1, r0
	adds r0, r2, #1
	str r0, [r6, #0x40]
	ldrb r2, [r2, #1]
	adds r0, #1
	str r0, [r6, #0x40]
	cmp r5, #0x11
	bls _08004330
	b _0800445E
_08004330:
	lsls r0, r5, #2
	ldr r1, _0800433C @ =_08004340
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800433C: .4byte _08004340
_08004340: @ jump table
	.4byte _08004388 @ case 0
	.4byte _0800438C @ case 1
	.4byte _08004394 @ case 2
	.4byte _0800439C @ case 3
	.4byte _080043A6 @ case 4
	.4byte _080043B4 @ case 5
	.4byte _080043C2 @ case 6
	.4byte _080043CA @ case 7
	.4byte _080043D2 @ case 8
	.4byte _080043DA @ case 9
	.4byte _080043E2 @ case 10
	.4byte _080043EA @ case 11
	.4byte _080043F2 @ case 12
	.4byte _08004400 @ case 13
	.4byte _0800440E @ case 14
	.4byte _0800441C @ case 15
	.4byte _0800442A @ case 16
	.4byte _08004438 @ case 17
_08004388:
	strb r2, [r3]
	b _0800445E
_0800438C:
	ldrb r1, [r3]
	adds r0, r1, r2
	strb r0, [r3]
	b _0800445E
_08004394:
	ldrb r1, [r3]
	subs r0, r1, r2
	strb r0, [r3]
	b _0800445E
_0800439C:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r3]
	b _0800445E
_080043A6:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r1, [r3]
	ldrb r0, [r0]
	adds r0, r1, r0
	strb r0, [r3]
	b _0800445E
_080043B4:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r1, [r3]
	ldrb r0, [r0]
	subs r0, r1, r0
	strb r0, [r3]
	b _0800445E
_080043C2:
	ldrb r3, [r3]
	cmp r3, r2
	beq _08004444
	b _08004458
_080043CA:
	ldrb r3, [r3]
	cmp r3, r2
	bne _08004444
	b _08004458
_080043D2:
	ldrb r3, [r3]
	cmp r3, r2
	bhi _08004444
	b _08004458
_080043DA:
	ldrb r3, [r3]
	cmp r3, r2
	bhs _08004444
	b _08004458
_080043E2:
	ldrb r3, [r3]
	cmp r3, r2
	bls _08004444
	b _08004458
_080043EA:
	ldrb r3, [r3]
	cmp r3, r2
	blo _08004444
	b _08004458
_080043F2:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	beq _08004444
	b _08004458
_08004400:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	bne _08004444
	b _08004458
_0800440E:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	bhi _08004444
	b _08004458
_0800441C:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	bhs _08004444
	b _08004458
_0800442A:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	bls _08004444
	b _08004458
_08004438:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	bhs _08004458
_08004444:
	ldr r0, _08004454 @ =0x020018D4
	ldr r2, [r0]
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_0803D7A0
	b _0800445E
	.align 2, 0
_08004454: .4byte 0x020018D4
_08004458:
	ldr r0, [r6, #0x40]
	adds r0, #4
	str r0, [r6, #0x40]
_0800445E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08004464
sub_08004464: @ 0x08004464
	push {lr}
	ldr r2, [r1, #0x40]
	ldrb r3, [r2]
	adds r2, #1
	str r2, [r1, #0x40]
	ldr r2, _08004480 @ =0x08044254
	lsls r3, r3, #2
	adds r3, r3, r2
	ldr r2, [r3]
	bl sub_0803D7A0
	pop {r0}
	bx r0
	.align 2, 0
_08004480: .4byte 0x08044254

	thumb_func_start sub_08004484
sub_08004484: @ 0x08004484
	push {lr}
	ldr r2, _08004494 @ =0x020018D0
	ldr r2, [r2]
	bl sub_0803D7A0
	pop {r0}
	bx r0
	.align 2, 0
_08004494: .4byte 0x020018D0

	thumb_func_start sub_08004498
sub_08004498: @ 0x08004498
	push {r4, lr}
	ldr r2, [r1, #0x40]
	ldr r0, _080044D0 @ =0xFFFFFF00
	ands r4, r0
	ldrb r0, [r2]
	orrs r4, r0
	ldrb r0, [r2, #1]
	lsls r3, r0, #8
	ldr r0, _080044D4 @ =0xFFFF00FF
	ands r4, r0
	orrs r4, r3
	ldrb r0, [r2, #2]
	lsls r3, r0, #0x10
	ldr r0, _080044D8 @ =0xFF00FFFF
	ands r4, r0
	orrs r4, r3
	ldrb r0, [r2, #3]
	lsls r3, r0, #0x18
	ldr r0, _080044DC @ =0x00FFFFFF
	ands r4, r0
	orrs r4, r3
	str r4, [r1, #0x28]
	adds r2, #4
	str r2, [r1, #0x40]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080044D0: .4byte 0xFFFFFF00
_080044D4: .4byte 0xFFFF00FF
_080044D8: .4byte 0xFF00FFFF
_080044DC: .4byte 0x00FFFFFF

	thumb_func_start sub_080044E0
sub_080044E0: @ 0x080044E0
	ldr r0, [r1, #0x40]
	ldrb r2, [r0]
	adds r0, r1, #0
	adds r0, #0x24
	strb r2, [r0]
	ldr r0, [r1, #0x40]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr
	.align 2, 0

	thumb_func_start sub_080044F4
sub_080044F4: @ 0x080044F4
	ldr r0, [r1, #0x40]
	ldrb r2, [r0]
	adds r0, r1, #0
	adds r0, #0x2c
	strb r2, [r0]
	ldr r0, [r1, #0x40]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr
	.align 2, 0

	thumb_func_start sub_08004508
sub_08004508: @ 0x08004508
	ldr r0, [r1, #0x40]
	ldrb r0, [r0]
	adds r2, r1, #0
	adds r2, #0x2d
	strb r0, [r2]
	ldr r0, [r1, #0x40]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr
	.align 2, 0

	thumb_func_start sub_0800451C
sub_0800451C: @ 0x0800451C
	ldr r0, [r1, #0x40]
	ldrb r0, [r0]
	adds r2, r1, #0
	adds r2, #0x2e
	strb r0, [r2]
	ldr r0, [r1, #0x40]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr
	.align 2, 0

	thumb_func_start sub_08004530
sub_08004530: @ 0x08004530
	ldr r0, [r1, #0x40]
	ldrb r0, [r0]
	adds r2, r1, #0
	adds r2, #0x2f
	strb r0, [r2]
	ldr r0, [r1, #0x40]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr
	.align 2, 0

	thumb_func_start sub_08004544
sub_08004544: @ 0x08004544
	ldr r0, [r1, #0x40]
	ldrb r2, [r0]
	strb r2, [r1, #0x1e]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr

	thumb_func_start sub_08004550
sub_08004550: @ 0x08004550
	ldr r0, [r1, #0x40]
	ldrb r2, [r0]
	strb r2, [r1, #0x1f]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr

	thumb_func_start sub_0800455C
sub_0800455C: @ 0x0800455C
	ldr r0, [r1, #0x40]
	ldrb r0, [r0]
	adds r2, r1, #0
	adds r2, #0x26
	strb r0, [r2]
	ldr r0, [r1, #0x40]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr
	.align 2, 0

	thumb_func_start sub_08004570
sub_08004570: @ 0x08004570
	ldr r0, [r1, #0x40]
	ldrb r0, [r0]
	adds r2, r1, #0
	adds r2, #0x27
	strb r0, [r2]
	ldr r0, [r1, #0x40]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr
	.align 2, 0

	thumb_func_start sub_08004584
sub_08004584: @ 0x08004584
	bx lr
	.align 2, 0

	thumb_func_start sub_08004588
sub_08004588: @ 0x08004588
	str r1, [r0]
	adds r1, r1, r2
	str r1, [r0, #4]
	movs r1, #0
	strh r1, [r0, #8]
	bx lr

	thumb_func_start sub_08004594
sub_08004594: @ 0x08004594
	movs r1, #0
	strh r1, [r0, #8]
	bx lr
	.align 2, 0

	thumb_func_start sub_0800459C
sub_0800459C: @ 0x0800459C
	push {r4, r5, lr}
	adds r3, r0, #0
	adds r5, r1, #0
	ldrh r4, [r3, #8]
	cmp r4, #8
	bne _080045B0
	ldr r0, _080045AC @ =0x08308C44
	b _080045F2
	.align 2, 0
_080045AC: .4byte 0x08308C44
_080045B0:
	cmp r4, #0
	bne _080045B8
	ldr r2, [r3]
	b _080045CE
_080045B8:
	subs r1, r4, #1
	lsls r1, r1, #2
	adds r2, r3, #0
	adds r2, #0xc
	adds r2, r2, r1
	adds r0, r3, #0
	adds r0, #0x2c
	adds r0, r0, r1
	ldr r1, [r2]
	ldr r0, [r0]
	adds r2, r1, r0
_080045CE:
	adds r1, r2, r5
	ldr r0, [r3, #4]
	cmp r1, r0
	bhi _080045F0
	lsls r0, r4, #2
	adds r1, r3, #0
	adds r1, #0xc
	adds r1, r1, r0
	str r2, [r1]
	adds r1, r3, #0
	adds r1, #0x2c
	adds r1, r1, r0
	str r5, [r1]
	adds r4, #1
	strh r4, [r3, #8]
	adds r0, r2, #0
	b _080045F8
_080045F0:
	ldr r0, _08004600 @ =0x08308C6C
_080045F2:
	bl sub_080052CC
	movs r0, #0
_080045F8:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08004600: .4byte 0x08308C6C

	thumb_func_start sub_08004604
sub_08004604: @ 0x08004604
	push {lr}
	adds r1, r0, #0
	ldrh r0, [r1, #8]
	cmp r0, #0
	beq _08004612
	subs r0, #1
	strh r0, [r1, #8]
_08004612:
	pop {r0}
	bx r0
	.align 2, 0
_08004618:
	.byte 0xF0, 0xB5, 0x04, 0x1C, 0x0F, 0x1C, 0x22, 0x89
	.byte 0x00, 0x23, 0x93, 0x42, 0x21, 0xD2, 0x25, 0x1C, 0x0C, 0x35, 0x96, 0x1E, 0xAC, 0x46, 0x00, 0x21
	.byte 0x68, 0x18, 0x00, 0x68, 0xB8, 0x42, 0x14, 0xD1, 0x50, 0x1E, 0x83, 0x42, 0x0D, 0xD0, 0x35, 0x1C
	.byte 0xAB, 0x42, 0x0A, 0xD8, 0x08, 0x1C, 0x2C, 0x30, 0x02, 0x19, 0x61, 0x44, 0x48, 0x68, 0x01, 0xC1
	.byte 0x50, 0x68, 0x01, 0xC2, 0x01, 0x33, 0xAB, 0x42, 0xF8, 0xD9, 0x20, 0x89, 0x01, 0x38, 0x20, 0x81
	.byte 0x03, 0xE0, 0x04, 0x31, 0x01, 0x33, 0x93, 0x42, 0xE2, 0xD3, 0xF0, 0xBC, 0x01, 0xBC, 0x00, 0x47
	.byte 0x00, 0xB5, 0x03, 0x1C, 0x18, 0x89, 0x00, 0x28, 0x0D, 0xD0, 0x01, 0x38, 0x80, 0x00, 0x1A, 0x1C
	.byte 0x0C, 0x32, 0x12, 0x18, 0x19, 0x1C, 0x2C, 0x31, 0x09, 0x18, 0x10, 0x68, 0x09, 0x68, 0x40, 0x18
	.byte 0x19, 0x68, 0x40, 0x1A, 0x00, 0xE0, 0x00, 0x20, 0x02, 0xBC, 0x08, 0x47

	thumb_func_start sub_0800469C
sub_0800469C: @ 0x0800469C
	push {lr}
	ldr r0, _080046B0 @ =0x02001CC0
	ldr r1, _080046B4 @ =0x02017AF0
	movs r2, #0x8c
	lsls r2, r2, #9
	bl sub_08004588
	pop {r0}
	bx r0
	.align 2, 0
_080046B0: .4byte 0x02001CC0
_080046B4: .4byte 0x02017AF0

	thumb_func_start sub_080046B8
sub_080046B8: @ 0x080046B8
	push {lr}
	ldr r0, _080046CC @ =0x02001D70
	ldr r1, _080046D0 @ =0x020292F0
	movs r2, #0xa0
	lsls r2, r2, #8
	bl sub_08004588
	pop {r0}
	bx r0
	.align 2, 0
_080046CC: .4byte 0x02001D70
_080046D0: .4byte 0x020292F0

	thumb_func_start sub_080046D4
sub_080046D4: @ 0x080046D4
	push {lr}
	ldr r0, _080046E8 @ =0x02001D20
	ldr r1, _080046EC @ =0x020332F0
	movs r2, #0x80
	lsls r2, r2, #7
	bl sub_08004588
	pop {r0}
	bx r0
	.align 2, 0
_080046E8: .4byte 0x02001D20
_080046EC: .4byte 0x020332F0

	thumb_func_start sub_080046F0
sub_080046F0: @ 0x080046F0
	push {lr}
	movs r1, #0
	ldr r0, _0800470C @ =0x02001D70
	ldrh r0, [r0, #8]
	cmp r0, #0
	bne _08004704
	ldr r0, _08004710 @ =0x02001D20
	ldrh r0, [r0, #8]
	cmp r0, #0
	beq _08004706
_08004704:
	movs r1, #1
_08004706:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0
_0800470C: .4byte 0x02001D70
_08004710: .4byte 0x02001D20

	thumb_func_start sub_08004714
sub_08004714: @ 0x08004714
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r2, #0
	cmp r0, #0x60
	ble _08004726
	cmp r0, #0x7a
	bgt _08004726
	movs r2, #1
_08004726:
	adds r1, r0, #0
	cmp r2, #0
	beq _0800472E
	subs r1, #0x20
_0800472E:
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x52
	bne _0800473A
	movs r0, #1
	b _08004784
_0800473A:
	cmp r0, #0x47
	bne _08004742
	movs r0, #2
	b _08004784
_08004742:
	cmp r0, #0x59
	bne _0800474A
	movs r0, #3
	b _08004784
_0800474A:
	cmp r0, #0x42
	bne _08004752
	movs r0, #4
	b _08004784
_08004752:
	cmp r0, #0x4e
	bne _0800475A
	movs r0, #5
	b _08004784
_0800475A:
	cmp r0, #0x43
	bne _08004762
	movs r0, #6
	b _08004784
_08004762:
	cmp r0, #0x50
	bne _0800476A
	movs r0, #7
	b _08004784
_0800476A:
	cmp r0, #0x57
	bne _08004772
	movs r0, #8
	b _08004784
_08004772:
	cmp r0, #0x4d
	bne _0800477A
	movs r0, #9
	b _08004784
_0800477A:
	cmp r0, #0x48
	beq _08004782
	movs r0, #0
	b _08004784
_08004782:
	movs r0, #0xa
_08004784:
	pop {r1}
	bx r1

	thumb_func_start sub_08004788
sub_08004788: @ 0x08004788
	push {lr}
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0x49
	bne _08004796
	movs r0, #0x10
	b _080047F2
_08004796:
	cmp r1, #0x55
	bne _0800479E
	movs r0, #0x11
	b _080047F2
_0800479E:
	cmp r1, #0x44
	bne _080047A6
	movs r0, #0x12
	b _080047F2
_080047A6:
	cmp r1, #0x50
	bne _080047AE
	movs r0, #0x13
	b _080047F2
_080047AE:
	cmp r1, #0x52
	bne _080047B6
	movs r0, #0x14
	b _080047F2
_080047B6:
	cmp r1, #0x46
	bne _080047BE
	movs r0, #0x15
	b _080047F2
_080047BE:
	cmp r1, #0x42
	bne _080047C6
	movs r0, #0x16
	b _080047F2
_080047C6:
	cmp r1, #0x53
	bne _080047CE
	movs r0, #0x17
	b _080047F2
_080047CE:
	cmp r1, #0x47
	bne _080047D6
	movs r0, #0x18
	b _080047F2
_080047D6:
	cmp r1, #0x41
	bne _080047DE
	movs r0, #0x19
	b _080047F2
_080047DE:
	adds r0, r1, #0
	subs r0, #0x30
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #9
	bls _080047EE
	movs r0, #0
	b _080047F2
_080047EE:
	adds r0, r1, #0
	subs r0, #0x16
_080047F2:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080047F8
sub_080047F8: @ 0x080047F8
	push {r4, lr}
	ldr r4, _08004818 @ =0x083D4B68
	ldr r0, _0800481C @ =0x05000040
	adds r1, r4, #0
	movs r2, #0x20
	bl sub_080002C4
	ldr r0, _08004820 @ =0x050000A0
	adds r1, r4, #0
	movs r2, #0x20
	bl sub_080002C4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08004818: .4byte 0x083D4B68
_0800481C: .4byte 0x05000040
_08004820: .4byte 0x050000A0

	thumb_func_start sub_08004824
sub_08004824: @ 0x08004824
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r3, r0, #0
	mov ip, r1
	movs r0, #0
	cmp r2, #0xf
	ble _0800483A
	cmp r2, #0x19
	bgt _0800483A
	movs r0, #1
_0800483A:
	cmp r0, #0
	beq _08004860
	movs r4, #0xb
	ldrh r0, [r3, #0x18]
	ldr r7, _08004858 @ =0x083D5108
	cmp r0, #0x10
	bne _0800484A
	ldr r7, _0800485C @ =0x083D4B88
_0800484A:
	adds r0, r2, #0
	subs r0, #0x10
	cmp r0, #0
	beq _08004880
	adds r0, #1
	b _08004880
	.align 2, 0
_08004858: .4byte 0x083D5108
_0800485C: .4byte 0x083D4B88
_08004860:
	movs r0, #0
	cmp r2, #0x19
	ble _0800486C
	cmp r2, #0x23
	bgt _0800486C
	movs r0, #1
_0800486C:
	cmp r0, #0
	beq _08004890
	movs r4, #0xa
	ldrh r0, [r3, #0x18]
	ldr r7, _08004888 @ =0x083D5B88
	cmp r0, #0x10
	bne _0800487C
	ldr r7, _0800488C @ =0x083D5688
_0800487C:
	adds r0, r2, #0
	subs r0, #0x1a
_08004880:
	lsls r0, r0, #6
	adds r7, r7, r0
	b _0800489C
	.align 2, 0
_08004888: .4byte 0x083D5B88
_0800488C: .4byte 0x083D5688
_08004890:
	ldr r2, [r3]
	adds r0, r3, #0
	mov r1, ip
	bl sub_08004990
	b _0800490C
_0800489C:
	ldrh r5, [r3, #0x18]
	adds r2, r7, #0
	mov r1, ip
	movs r6, #0
	lsls r4, r4, #6
	mov r8, r4
_080048A8:
	movs r4, #0
_080048AA:
	ldrb r0, [r2]
	adds r3, r0, #0
	adds r2, #1
	ldrb r0, [r2]
	adds r2, #1
	cmp r3, #0
	bne _080048BA
	adds r3, r5, #0
_080048BA:
	cmp r0, #0
	bne _080048C0
	adds r0, r5, #0
_080048C0:
	lsls r0, r0, #8
	orrs r0, r3
	strh r0, [r1]
	adds r1, #2
	adds r4, #1
	cmp r4, #3
	bls _080048AA
	adds r6, #1
	cmp r6, #7
	bls _080048A8
	mov r0, r8
	adds r2, r7, r0
	movs r1, #0xf0
	lsls r1, r1, #3
	add r1, ip
	movs r6, #0
_080048E0:
	movs r4, #0
	adds r6, #1
_080048E4:
	ldrb r0, [r2]
	adds r3, r0, #0
	adds r2, #1
	ldrb r0, [r2]
	adds r2, #1
	cmp r3, #0
	bne _080048F4
	adds r3, r5, #0
_080048F4:
	cmp r0, #0
	bne _080048FA
	adds r0, r5, #0
_080048FA:
	lsls r0, r0, #8
	orrs r0, r3
	strh r0, [r1]
	adds r1, #2
	adds r4, #1
	cmp r4, #3
	bls _080048E4
	cmp r6, #7
	bls _080048E0
_0800490C:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08004918
sub_08004918: @ 0x08004918
	push {r4, r5, lr}
	adds r4, r1, #0
	movs r3, #0
	ldrh r1, [r0, #0x16]
	subs r2, r1, #1
	ldr r5, [r0, #4]
_08004924:
	cmp r3, r2
	bgt _0800494A
	adds r0, r3, r2
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r1, r0, #1
	lsls r0, r1, #1
	adds r0, r0, r5
	ldrh r0, [r0]
	cmp r0, r4
	bne _0800493E
	adds r0, r1, #1
	b _0800494C
_0800493E:
	cmp r0, r4
	bhs _08004946
	adds r3, r1, #1
	b _08004924
_08004946:
	subs r2, r1, #1
	b _08004924
_0800494A:
	movs r0, #0
_0800494C:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08004954
sub_08004954: @ 0x08004954
	push {lr}
	adds r1, r0, #0
	movs r2, #0
	ldrb r0, [r1]
	adds r1, #1
	cmp r0, #0
	beq _0800498A
	ldr r3, _08004970 @ =0x083D6088
_08004964:
	cmp r0, #0x23
	beq _0800497E
	cmp r0, #0x24
	bne _08004974
	adds r1, #1
	b _08004982
	.align 2, 0
_08004970: .4byte 0x083D6088
_08004974:
	lsrs r0, r0, #4
	adds r0, r0, r3
	ldrb r0, [r0]
	cmp r0, #0
	beq _08004980
_0800497E:
	adds r1, #1
_08004980:
	adds r2, #1
_08004982:
	ldrb r0, [r1]
	adds r1, #1
	cmp r0, #0
	bne _08004964
_0800498A:
	adds r0, r2, #0
	pop {r1}
	bx r1

	thumb_func_start sub_08004990
sub_08004990: @ 0x08004990
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov ip, r0
	adds r4, r1, #0
	adds r7, r2, #0
	ldrh r2, [r0, #0x1a]
	ldrh r0, [r0, #0x1c]
	mov r8, r0
	movs r6, #0
	movs r5, #3
_080049A6:
	ldrh r0, [r7]
	adds r7, #2
	mov r1, r8
	eors r1, r0
	adds r3, r1, #0
	ands r3, r5
	lsrs r1, r1, #2
	adds r3, r3, r2
	adds r0, r1, #0
	ands r0, r5
	lsrs r1, r1, #2
	adds r0, r0, r2
	lsls r0, r0, #8
	orrs r0, r3
	strh r0, [r4]
	adds r4, #2
	adds r3, r1, #0
	ands r3, r5
	lsrs r1, r1, #2
	adds r3, r3, r2
	adds r0, r1, #0
	ands r0, r5
	lsrs r1, r1, #2
	adds r0, r0, r2
	lsls r0, r0, #8
	orrs r0, r3
	strh r0, [r4]
	adds r4, #2
	adds r3, r1, #0
	ands r3, r5
	lsrs r1, r1, #2
	adds r3, r3, r2
	adds r0, r1, #0
	ands r0, r5
	lsrs r1, r1, #2
	adds r0, r0, r2
	lsls r0, r0, #8
	orrs r0, r3
	strh r0, [r4]
	adds r4, #2
	adds r3, r1, #0
	ands r3, r5
	lsrs r0, r1, #2
	adds r3, r3, r2
	ands r0, r5
	adds r0, r0, r2
	lsls r0, r0, #8
	orrs r0, r3
	strh r0, [r4]
	adds r4, #2
	cmp r6, #7
	bne _08004A1A
	adds r1, r4, #0
	subs r1, #0x40
	mov r3, ip
	ldrh r0, [r3, #0x14]
	lsls r0, r0, #6
	adds r4, r1, r0
_08004A1A:
	adds r6, #1
	cmp r6, #0xf
	bls _080049A6
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08004A2C
sub_08004A2C: @ 0x08004A2C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov r8, r0
	adds r4, r1, #0
	mov sl, r2
	ldrh r6, [r0, #0x1a]
	movs r5, #0
	movs r0, #3
	mov sb, r0
_08004A44:
	mov r1, sl
	ldrh r0, [r1]
	adds r1, r0, #0
	movs r2, #2
	add sl, r2
	movs r2, #0
	adds r7, r5, #1
	mov ip, r7
_08004A54:
	adds r3, r1, #0
	mov r0, sb
	ands r3, r0
	lsrs r1, r1, #2
	adds r0, r1, #0
	mov r7, sb
	ands r0, r7
	lsrs r1, r1, #2
	cmp r3, #3
	beq _08004A6A
	movs r3, #0
_08004A6A:
	cmp r0, #3
	beq _08004A70
	movs r0, #0
_08004A70:
	adds r3, r3, r6
	adds r0, r0, r6
	lsls r0, r0, #8
	orrs r0, r3
	strh r0, [r4]
	adds r4, #2
	adds r2, #1
	cmp r2, #3
	bls _08004A54
	cmp r5, #7
	bne _08004A92
	adds r1, r4, #0
	subs r1, #0x40
	mov r2, r8
	ldrh r0, [r2, #0x14]
	lsls r0, r0, #6
	adds r4, r1, r0
_08004A92:
	mov r5, ip
	cmp r5, #0xf
	bls _08004A44
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08004AA8
sub_08004AA8: @ 0x08004AA8
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldrb r3, [r2]
	cmp r3, #0
	bne _08004AB8
	movs r0, #0
	b _08004B14
_08004AB8:
	ldr r0, _08004AE0 @ =0x083D6088
	lsrs r1, r3, #4
	adds r1, r1, r0
	ldrb r0, [r1]
	cmp r0, #0
	beq _08004AE4
	lsls r1, r3, #8
	ldrb r0, [r2, #1]
	orrs r1, r0
	adds r0, r4, #0
	bl sub_08004918
	lsls r0, r0, #5
	ldr r2, [r4]
	adds r2, r2, r0
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08004990
	b _08004B12
	.align 2, 0
_08004AE0: .4byte 0x083D6088
_08004AE4:
	cmp r3, #0x23
	beq _08004B02
	ldr r1, [r4, #8]
	lsls r0, r3, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #5
	ldr r2, [r4]
	adds r2, r2, r0
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08004990
	movs r0, #1
	b _08004B14
_08004B02:
	ldrb r0, [r2, #1]
	bl sub_08004788
	adds r2, r0, #0
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08004824
_08004B12:
	movs r0, #2
_08004B14:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08004B1C
sub_08004B1C: @ 0x08004B1C
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	ldrh r1, [r6, #0x18]
	ldrh r0, [r6, #0x1c]
	cmp r0, #0
	beq _08004B2C
	adds r1, #3
_08004B2C:
	lsls r4, r1, #0x18
	lsls r0, r1, #0x10
	orrs r4, r0
	lsls r0, r1, #8
	orrs r4, r0
	orrs r4, r1
	adds r0, r5, #0
	movs r1, #0x40
	adds r2, r4, #0
	bl sub_080004B8
	ldrh r0, [r6, #0x14]
	lsls r0, r0, #6
	adds r5, r5, r0
	adds r0, r5, #0
	movs r1, #0x40
	adds r2, r4, #0
	bl sub_080004B8
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08004B58
sub_08004B58: @ 0x08004B58
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	ldrh r3, [r6, #0x18]
	lsls r7, r2, #6
	ldrh r0, [r6, #0x1c]
	cmp r0, #0
	beq _08004B6A
	adds r3, #3
_08004B6A:
	lsls r4, r3, #0x18
	lsls r0, r3, #0x10
	orrs r4, r0
	lsls r0, r3, #8
	orrs r4, r0
	orrs r4, r3
	adds r0, r5, #0
	adds r1, r7, #0
	adds r2, r4, #0
	bl sub_080004B8
	ldrh r0, [r6, #0x14]
	lsls r0, r0, #6
	adds r5, r5, r0
	adds r0, r5, #0
	adds r1, r7, #0
	adds r2, r4, #0
	bl sub_080004B8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08004B98
sub_08004B98: @ 0x08004B98
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r6, r0, #0
	movs r4, #0
	movs r3, #0
	ldr r1, _08004C60 @ =0x083D4B08
	ldr r5, _08004C64 @ =0x0600F800
_08004BA8:
	lsls r0, r3, #6
	adds r0, r0, r5
	movs r2, #0
	adds r3, #1
_08004BB0:
	strh r4, [r0]
	adds r0, #2
	adds r4, #1
	adds r2, #1
	cmp r2, #0x1d
	bls _08004BB0
	cmp r3, #0x13
	bls _08004BA8
	adds r4, r1, #0
	cmp r6, #0
	bne _08004BC8
	ldr r4, _08004C68 @ =0x083D4B48
_08004BC8:
	ldr r0, _08004C6C @ =0x05000020
	adds r1, r4, #0
	movs r2, #0x20
	bl sub_080002C4
	ldr r0, _08004C70 @ =0x05000080
	adds r1, r4, #0
	movs r2, #0x20
	bl sub_080002C4
	cmp r6, #0
	beq _08004BEC
	ldr r4, _08004C74 @ =0x083D4B28
	ldr r0, _08004C78 @ =0x050000C0
	adds r1, r4, #0
	movs r2, #0x20
	bl sub_080002C4
_08004BEC:
	bl sub_080047F8
	ldr r1, _08004C7C @ =0x030013B0
	ldr r0, _08004C80 @ =0x083E7D5E
	str r0, [r1]
	ldr r0, _08004C84 @ =0x083F543E
	str r0, [r1, #4]
	ldr r0, _08004C88 @ =0x083F61AA
	str r0, [r1, #8]
	ldr r6, _08004C8C @ =0x083F63AA
	str r6, [r1, #0xc]
	movs r5, #0xc0
	lsls r5, r5, #0x13
	str r5, [r1, #0x10]
	movs r0, #0
	mov r8, r0
	movs r4, #0x1e
	strh r4, [r1, #0x14]
	ldr r0, _08004C90 @ =0x083E7D5C
	ldrh r0, [r0]
	strh r0, [r1, #0x16]
	movs r3, #0x10
	strh r3, [r1, #0x18]
	strh r3, [r1, #0x1a]
	mov r2, r8
	strh r2, [r1, #0x1c]
	ldr r0, _08004C94 @ =0x030013D0
	ldr r2, _08004C98 @ =0x083F659E
	str r2, [r0]
	ldr r2, _08004C9C @ =0x083F831E
	str r2, [r0, #4]
	ldr r2, _08004CA0 @ =0x083F84F4
	str r2, [r0, #8]
	str r6, [r0, #0xc]
	str r5, [r0, #0x10]
	strh r4, [r0, #0x14]
	ldr r2, _08004CA4 @ =0x083F659C
	ldrh r2, [r2]
	strh r2, [r0, #0x16]
	strh r3, [r0, #0x18]
	strh r3, [r0, #0x1a]
	mov r3, r8
	strh r3, [r0, #0x1c]
	ldr r2, _08004CA8 @ =0x03001390
	adds r0, r2, #0
	ldm r1!, {r3, r4, r5}
	stm r0!, {r3, r4, r5}
	ldm r1!, {r3, r4, r5}
	stm r0!, {r3, r4, r5}
	ldm r1!, {r4, r5}
	stm r0!, {r4, r5}
	movs r0, #0x40
	strh r0, [r2, #0x18]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08004C60: .4byte 0x083D4B08
_08004C64: .4byte 0x0600F800
_08004C68: .4byte 0x083D4B48
_08004C6C: .4byte 0x05000020
_08004C70: .4byte 0x05000080
_08004C74: .4byte 0x083D4B28
_08004C78: .4byte 0x050000C0
_08004C7C: .4byte 0x030013B0
_08004C80: .4byte 0x083E7D5E
_08004C84: .4byte 0x083F543E
_08004C88: .4byte 0x083F61AA
_08004C8C: .4byte 0x083F63AA
_08004C90: .4byte 0x083E7D5C
_08004C94: .4byte 0x030013D0
_08004C98: .4byte 0x083F659E
_08004C9C: .4byte 0x083F831E
_08004CA0: .4byte 0x083F84F4
_08004CA4: .4byte 0x083F659C
_08004CA8: .4byte 0x03001390

	thumb_func_start sub_08004CAC
sub_08004CAC: @ 0x08004CAC
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #8
	movs r2, #0xfc
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _08004CEC @ =0x04000010
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	movs r0, #0xc0
	lsls r0, r0, #0x13
	movs r1, #0x80
	lsls r1, r1, #9
	movs r2, #0
	bl sub_080004B8
	adds r0, r4, #0
	bl sub_08004B98
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08004CEC: .4byte 0x04000010

	thumb_func_start sub_08004CF0
sub_08004CF0: @ 0x08004CF0
	push {r4, lr}
	adds r4, r0, #0
	movs r3, #0x10
	cmp r1, #0
	beq _08004CFC
	movs r3, #0x40
_08004CFC:
	strh r3, [r4, #0x18]
	lsls r0, r2, #2
	adds r0, r3, r0
	strh r0, [r4, #0x1a]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08004D0C
sub_08004D0C: @ 0x08004D0C
	push {lr}
	adds r2, r0, #0
	cmp r1, #3
	bhi _08004D18
	movs r0, #0x40
	b _08004D1A
_08004D18:
	movs r0, #0x60
_08004D1A:
	strh r0, [r2, #0x18]
	movs r0, #3
	ands r0, r1
	lsls r0, r0, #2
	ldrh r1, [r2, #0x18]
	adds r0, r0, r1
	strh r0, [r2, #0x1a]
	pop {r0}
	bx r0

	thumb_func_start sub_08004D2C
sub_08004D2C: @ 0x08004D2C
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r7, r3, #0
	ldrh r0, [r6, #0x14]
	muls r0, r2, r0
	adds r0, r0, r1
	lsls r0, r0, #6
	ldr r1, [r6, #0x10]
	adds r4, r1, r0
	movs r5, #0
	cmp r5, r7
	bhs _08004D54
_08004D44:
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_08004B1C
	adds r4, #0x40
	adds r5, #1
	cmp r5, r7
	blo _08004D44
_08004D54:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08004D5C
sub_08004D5C: @ 0x08004D5C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r3, #0
	ldr r5, [sp, #0x20]
	ldrh r3, [r0, #0x18]
	adds r5, r5, r3
	lsls r4, r5, #8
	orrs r4, r5
	lsls r3, r4, #0x10
	orrs r4, r3
	ldrh r3, [r0, #0x14]
	muls r2, r3, r2
	adds r2, r2, r1
	lsls r2, r2, #6
	ldr r0, [r0, #0x10]
	adds r2, r0, r2
	mov sl, r2
	movs r0, #0xf7
	lsls r0, r0, #3
	adds r3, r2, r0
	movs r0, #0
	cmp r0, r6
	bhs _08004DA2
_08004D90:
	stm r2!, {r4}
	str r4, [r2]
	adds r2, #0x3c
	stm r3!, {r4}
	str r4, [r3]
	adds r3, #0x3c
	adds r0, #1
	cmp r0, r6
	blo _08004D90
_08004DA2:
	mov r2, sl
	adds r2, #8
	subs r1, r6, #1
	lsls r0, r1, #6
	adds r0, r2, r0
	adds r3, r0, #6
	movs r4, #0
	lsls r7, r5, #8
	mov ip, r1
	movs r1, #0xff
	lsls r1, r1, #8
	mov sb, r1
	movs r0, #0xff
	mov r8, r0
	adds r6, r7, #0
_08004DC0:
	ldrh r1, [r2]
	mov r0, sb
	ands r0, r1
	orrs r0, r5
	strh r0, [r2]
	adds r2, #8
	ldrh r1, [r3]
	mov r0, r8
	ands r0, r1
	orrs r0, r6
	strh r0, [r3]
	adds r3, #8
	adds r4, #1
	cmp r4, #6
	bls _08004DC0
	movs r2, #0xf0
	lsls r2, r2, #3
	add r2, sl
	mov r1, ip
	lsls r0, r1, #6
	adds r0, r2, r0
	adds r3, r0, #6
	movs r4, #0
	movs r0, #0xff
	lsls r0, r0, #8
	mov sb, r0
	movs r1, #0xff
	mov r8, r1
	adds r6, r7, #0
_08004DFA:
	ldrh r1, [r2]
	mov r0, sb
	ands r0, r1
	orrs r0, r5
	strh r0, [r2]
	adds r2, #8
	ldrh r1, [r3]
	mov r0, r8
	ands r0, r1
	orrs r0, r6
	strh r0, [r3]
	adds r3, #8
	adds r4, #1
	cmp r4, #6
	bls _08004DFA
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08004E28
sub_08004E28: @ 0x08004E28
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	mov r8, r1
	adds r7, r2, #0
	adds r5, r3, #0
	b _08004E46
_08004E38:
	adds r5, r5, r0
	adds r4, #0x40
_08004E3C:
	ldrb r0, [r5]
	cmp r0, #0xa
	bne _08004E54
	adds r5, #1
	adds r7, #2
_08004E46:
	ldrh r0, [r6, #0x14]
	muls r0, r7, r0
	add r0, r8
	lsls r0, r0, #6
	ldr r1, [r6, #0x10]
	adds r4, r1, r0
	b _08004E3C
_08004E54:
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_08004AA8
	cmp r0, #0
	bne _08004E38
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08004E6C
sub_08004E6C: @ 0x08004E6C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	adds r6, r3, #0
	ldr r0, [sp, #0x18]
	mov r8, r0
	ldrh r0, [r7, #0x14]
	muls r0, r2, r0
	adds r0, r0, r1
	lsls r0, r0, #6
	ldr r1, [r7, #0x10]
	adds r4, r1, r0
	movs r5, #0
	b _08004E94
_08004E8A:
	adds r6, r6, r0
	adds r4, #0x40
	adds r5, #1
	cmp r5, r8
	bhs _08004EB6
_08004E94:
	adds r0, r7, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl sub_08004AA8
	cmp r0, #0
	bne _08004E8A
	cmp r5, r8
	bhs _08004EB6
_08004EA6:
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_08004B1C
	adds r4, #0x40
	adds r5, #1
	cmp r5, r8
	blo _08004EA6
_08004EB6:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08004EC0
sub_08004EC0: @ 0x08004EC0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov r8, r0
	mov sl, r1
	adds r5, r2, #0
	adds r7, r3, #0
	ldr r4, [sp, #0x24]
	adds r0, r7, #0
	bl sub_08004954
	adds r2, r0, #0
	cmp r2, r4
	blo _08004EF2
	str r4, [sp]
	mov r0, r8
	mov r1, sl
	adds r2, r5, #0
	adds r3, r7, #0
	bl sub_08004E6C
	b _08004F56
_08004EF2:
	lsrs r0, r4, #1
	lsrs r1, r2, #1
	subs r6, r0, r1
	subs r0, r4, r6
	subs r0, r0, r2
	mov sb, r0
	cmp r6, sb
	bls _08004F08
	subs r6, #1
	movs r0, #1
	add sb, r0
_08004F08:
	mov r1, r8
	ldrh r0, [r1, #0x14]
	muls r0, r5, r0
	add r0, sl
	lsls r0, r0, #6
	ldr r1, [r1, #0x10]
	adds r4, r1, r0
	movs r5, #0
	cmp r5, r6
	bhs _08004F32
_08004F1C:
	mov r0, r8
	adds r1, r4, #0
	bl sub_08004B1C
	adds r4, #0x40
	adds r5, #1
	cmp r5, r6
	blo _08004F1C
	b _08004F32
_08004F2E:
	adds r7, r7, r0
	adds r4, #0x40
_08004F32:
	mov r0, r8
	adds r1, r4, #0
	adds r2, r7, #0
	bl sub_08004AA8
	cmp r0, #0
	bne _08004F2E
	movs r5, #0
	cmp r5, sb
	bhs _08004F56
_08004F46:
	mov r0, r8
	adds r1, r4, #0
	bl sub_08004B1C
	adds r4, #0x40
	adds r5, #1
	cmp r5, sb
	blo _08004F46
_08004F56:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08004F68
sub_08004F68: @ 0x08004F68
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r4, r0, #0
	adds r6, r1, #0
	mov r8, r2
	adds r5, r3, #0
	ldrh r0, [r4, #0x14]
	mov r1, r8
	muls r1, r0, r1
	adds r0, r1, #0
	adds r0, r0, r6
	lsls r0, r0, #6
	ldr r1, [r4, #0x10]
	adds r7, r1, r0
	adds r3, r6, #0
_08004F8A:
	ldrb r2, [r5]
	cmp r2, #0
	beq _08005002
	cmp r6, #0x1d
	bls _08004FAA
	adds r6, r3, #0
	movs r0, #2
	add r8, r0
	ldrh r0, [r4, #0x14]
	mov r1, r8
	muls r1, r0, r1
	adds r0, r1, #0
	adds r0, r0, r6
	lsls r0, r0, #6
	ldr r1, [r4, #0x10]
	adds r7, r1, r0
_08004FAA:
	cmp r2, #0x1f
	bhi _08004FEC
	cmp r2, #4
	bhi _08004FC0
	subs r0, r2, #1
	lsls r0, r0, #2
	ldrh r1, [r4, #0x18]
	adds r0, r0, r1
	strh r0, [r4, #0x1a]
	adds r5, #1
	b _08004F8A
_08004FC0:
	cmp r2, #0xd
	bne _08004FCE
	ldrh r0, [r4, #0x1c]
	mvns r0, r0
	strh r0, [r4, #0x1c]
	adds r5, #1
	b _08004F8A
_08004FCE:
	cmp r2, #0xa
	bne _08004FEC
	adds r6, r3, #0
	movs r0, #2
	add r8, r0
	ldrh r0, [r4, #0x14]
	mov r1, r8
	muls r1, r0, r1
	adds r0, r1, #0
	adds r0, r0, r6
	lsls r0, r0, #6
	ldr r1, [r4, #0x10]
	adds r7, r1, r0
	adds r5, #1
	b _08004F8A
_08004FEC:
	adds r0, r4, #0
	adds r1, r7, #0
	adds r2, r5, #0
	str r3, [sp]
	bl sub_08004AA8
	adds r5, r5, r0
	adds r7, #0x40
	adds r6, #1
	ldr r3, [sp]
	b _08004F8A
_08005002:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08005010:
	.byte 0x00, 0xB5, 0xFB, 0xF7, 0xB9, 0xFA, 0x03, 0x49, 0x00, 0x20, 0x08, 0x80, 0x05, 0xF0, 0x68, 0xF8
	.byte 0xFE, 0xE7, 0x00, 0x00, 0x00, 0x02, 0x00, 0x04

	thumb_func_start sub_08005028
sub_08005028: @ 0x08005028
	push {r4, r5, r6, lr}
	ldr r4, _08005068 @ =0xFFFFFE00
	add sp, r4
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r6, _0800506C @ =0x03001390
	bl sub_08000588
	ldr r1, _08005070 @ =0x04000200
	movs r0, #0
	strh r0, [r1]
	bl sub_0800A110
	movs r0, #1
	bl sub_08004CAC
	cmp r4, #0
	beq _08005078
	ldr r1, _08005074 @ =0x08308C90
	mov r0, sp
	adds r2, r5, #0
	adds r3, r4, #0
	bl sub_0803DFE0
	adds r0, r6, #0
	movs r1, #0
	movs r2, #0
	mov r3, sp
	bl sub_08004F68
	b _08005084
	.align 2, 0
_08005068: .4byte 0xFFFFFE00
_0800506C: .4byte 0x03001390
_08005070: .4byte 0x04000200
_08005074: .4byte 0x08308C90
_08005078:
	adds r0, r6, #0
	movs r1, #0
	movs r2, #0
	adds r3, r5, #0
	bl sub_08004F68
_08005084:
	movs r0, #1
	bl sub_08000C90
	movs r0, #8
	bl sub_08000C5C
	movs r0, #1
	bl sub_08000C90
	movs r0, #0xff
	bl sub_0803D364
	movs r3, #0x80
	lsls r3, r3, #2
	add sp, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080050A8
sub_080050A8: @ 0x080050A8
	push {lr}
	ldr r1, _080050B4 @ =0x08308C98
	bl sub_08005028
	pop {r0}
	bx r0
	.align 2, 0
_080050B4: .4byte 0x08308C98

	thumb_func_start sub_080050B8
sub_080050B8: @ 0x080050B8
	push {lr}
	movs r1, #0
	bl sub_08005028
	pop {r0}
	bx r0

	thumb_func_start sub_080050C4
sub_080050C4: @ 0x080050C4
	push {lr}
	sub sp, #0x100
	adds r2, r0, #0
	adds r3, r1, #0
	ldr r1, _080050E0 @ =0x08308CC0
	mov r0, sp
	bl sub_0803DFE0
	mov r0, sp
	bl sub_080050A8
	add sp, #0x100
	pop {r0}
	bx r0
	.align 2, 0
_080050E0: .4byte 0x08308CC0

	thumb_func_start sub_080050E4
sub_080050E4: @ 0x080050E4
	push {r4, lr}
	sub sp, #0x104
	adds r4, r0, #0
	adds r3, r1, #0
	ldr r1, _08005108 @ =0x08308CC8
	str r2, [sp]
	add r0, sp, #4
	adds r2, r4, #0
	bl sub_0803DFE0
	add r0, sp, #4
	bl sub_080050A8
	add sp, #0x104
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08005108: .4byte 0x08308CC8

	thumb_func_start sub_0800510C
sub_0800510C: @ 0x0800510C
	push {lr}
	sub sp, #0x80
	adds r2, r0, #0
	adds r3, r1, #0
	ldr r1, _08005128 @ =0x08308CD0
	mov r0, sp
	bl sub_0803DFE0
	mov r0, sp
	bl sub_080050A8
	add sp, #0x80
	pop {r0}
	bx r0
	.align 2, 0
_08005128: .4byte 0x08308CD0

	thumb_func_start sub_0800512C
sub_0800512C: @ 0x0800512C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r3, r2, #0
	ldr r0, _08005144 @ =0x03001390
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_08004E28
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08005144: .4byte 0x03001390

	thumb_func_start sub_08005148
sub_08005148: @ 0x08005148
	push {r4, r5, lr}
	sub sp, #0x80
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, _0800516C @ =0x08308CD8
	mov r0, sp
	bl sub_0803DFE0
	adds r0, r4, #0
	adds r1, r5, #0
	mov r2, sp
	bl sub_0800512C
	add sp, #0x80
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800516C: .4byte 0x08308CD8

	thumb_func_start sub_08005170
sub_08005170: @ 0x08005170
	push {r4, r5, lr}
	sub sp, #0x80
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, _08005194 @ =0x08308CE0
	mov r0, sp
	bl sub_0803DFE0
	adds r0, r4, #0
	adds r1, r5, #0
	mov r2, sp
	bl sub_0800512C
	add sp, #0x80
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08005194: .4byte 0x08308CE0

	thumb_func_start sub_08005198
sub_08005198: @ 0x08005198
	push {lr}
	adds r2, r0, #0
	ldr r0, _080051AC @ =0x03001390
	movs r1, #0
	movs r3, #0x1e
	bl sub_08004D2C
	pop {r0}
	bx r0
	.align 2, 0
_080051AC: .4byte 0x03001390

	thumb_func_start sub_080051B0
sub_080051B0: @ 0x080051B0
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _080051F0 @ =0x03001390
	bl sub_0800A110
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0x1e
	bl sub_08004D2C
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	adds r3, r5, #0
	bl sub_08004E28
	movs r0, #0x78
	bl sub_08000B68
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0x1e
	bl sub_08004D2C
	movs r0, #0x1e
	bl sub_08000B68
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080051F0: .4byte 0x03001390

	thumb_func_start sub_080051F4
sub_080051F4: @ 0x080051F4
	push {lr}
	sub sp, #0x80
	adds r2, r0, #0
	adds r3, r1, #0
	ldr r1, _08005210 @ =0x08308CE8
	mov r0, sp
	bl sub_0803DFE0
	mov r0, sp
	bl sub_080051B0
	add sp, #0x80
	pop {r0}
	bx r0
	.align 2, 0
_08005210: .4byte 0x08308CE8

	thumb_func_start sub_08005214
sub_08005214: @ 0x08005214
	push {lr}
	sub sp, #0x80
	adds r2, r0, #0
	adds r3, r1, #0
	ldr r1, _08005230 @ =0x08308CE0
	mov r0, sp
	bl sub_0803DFE0
	mov r0, sp
	bl sub_080051B0
	add sp, #0x80
	pop {r0}
	bx r0
	.align 2, 0
_08005230: .4byte 0x08308CE0

	thumb_func_start sub_08005234
sub_08005234: @ 0x08005234
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	mov r8, r0
	ldr r4, _080052A0 @ =0x03001390
	bl sub_0800A110
	movs r5, #0x80
	lsls r5, r5, #0x13
	ldrh r6, [r5]
	ldr r0, _080052A4 @ =0xFFFFEFFF
	ldrh r1, [r5]
	ands r0, r1
	strh r0, [r5]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0x1e
	bl sub_08004D2C
	adds r0, r4, #0
	movs r1, #0
	movs r2, #2
	movs r3, #0x1e
	bl sub_08004D2C
	adds r0, r4, #0
	movs r1, #0
	movs r2, #4
	movs r3, #0x1e
	bl sub_08004D2C
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	mov r3, r8
	bl sub_08004E28
	ldr r3, _080052A8 @ =0x08308CF0
	adds r0, r4, #0
	movs r1, #0
	movs r2, #4
	bl sub_08004E28
	movs r0, #8
	bl sub_08000CC0
	strh r6, [r5]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080052A0: .4byte 0x03001390
_080052A4: .4byte 0xFFFFEFFF
_080052A8: .4byte 0x08308CF0

	thumb_func_start sub_080052AC
sub_080052AC: @ 0x080052AC
	push {lr}
	sub sp, #0x80
	adds r2, r0, #0
	ldr r1, _080052C8 @ =0x08308D08
	mov r0, sp
	bl sub_0803DFE0
	mov r0, sp
	bl sub_08005234
	add sp, #0x80
	pop {r0}
	bx r0
	.align 2, 0
_080052C8: .4byte 0x08308D08

	thumb_func_start sub_080052CC
sub_080052CC: @ 0x080052CC
	push {lr}
	bl sub_080050A8
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080052D8
sub_080052D8: @ 0x080052D8
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	adds r4, r1, #0
	ldr r0, _080052F4 @ =0x02001DBC
	ldrb r1, [r0]
	adds r5, r0, #0
	cmp r1, #0
	bne _08005300
	ldr r1, _080052F8 @ =0x083D6558
	cmp r4, #0
	beq _08005308
	ldr r1, _080052FC @ =0x083D6798
	b _08005308
	.align 2, 0
_080052F4: .4byte 0x02001DBC
_080052F8: .4byte 0x083D6558
_080052FC: .4byte 0x083D6798
_08005300:
	ldr r1, _08005340 @ =0x083D60B8
	cmp r4, #0
	beq _08005308
	ldr r1, _08005344 @ =0x083D62F8
_08005308:
	str r1, [r3]
	adds r0, r1, #0
	adds r0, #0x40
	str r0, [r3, #4]
	adds r0, #0x40
	str r0, [r3, #8]
	adds r0, #0x40
	str r0, [r3, #0xc]
	movs r6, #0x80
	lsls r6, r6, #1
	adds r0, r1, r6
	str r0, [r3, #0x10]
	adds r6, #0x40
	adds r0, r1, r6
	str r0, [r3, #0x14]
	adds r6, #0x40
	adds r0, r1, r6
	str r0, [r3, #0x18]
	adds r6, #0x40
	adds r0, r1, r6
	str r0, [r3, #0x1c]
	adds r6, #0x40
	adds r0, r1, r6
	str r0, [r3, #0x20]
	cmp r4, #0
	beq _0800534C
	ldr r0, _08005348 @ =0x083D6A58
	b _0800534E
	.align 2, 0
_08005340: .4byte 0x083D60B8
_08005344: .4byte 0x083D62F8
_08005348: .4byte 0x083D6A58
_0800534C:
	ldr r0, _08005358 @ =0x083D69D8
_0800534E:
	str r0, [r3, #0x24]
	cmp r4, #0
	beq _08005360
	ldr r0, _0800535C @ =0x083D6B98
	b _08005362
	.align 2, 0
_08005358: .4byte 0x083D69D8
_0800535C: .4byte 0x083D6B98
_08005360:
	ldr r0, _08005378 @ =0x083D6AD8
_08005362:
	str r0, [r3, #0x28]
	ldrb r0, [r5]
	cmp r0, #0
	bne _08005384
	cmp r2, #0
	beq _0800537C
	adds r1, r3, #0
	adds r1, #0x2c
	movs r0, #2
	b _0800538A
	.align 2, 0
_08005378: .4byte 0x083D6AD8
_0800537C:
	adds r1, r3, #0
	adds r1, #0x2c
	movs r0, #3
	b _0800538A
_08005384:
	adds r1, r3, #0
	adds r1, #0x2c
	movs r0, #0
_0800538A:
	strb r0, [r1]
	adds r0, r3, #0
	adds r0, #0x2d
	strb r2, [r0]
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08005398
sub_08005398: @ 0x08005398
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r7, r1, #0
	adds r5, r2, #0
	adds r1, r3, #0
	lsls r0, r5, #4
	subs r0, r0, r5
	lsls r0, r0, #1
	adds r6, r0, r7
	lsls r0, r6, #6
	movs r2, #0xc0
	lsls r2, r2, #0x13
	adds r0, r0, r2
	movs r2, #0x40
	bl sub_08000314
	adds r4, #0x2d
	ldrb r0, [r4]
	cmp r0, #0
	beq _080053CC
	lsls r1, r5, #6
	lsls r0, r7, #1
	ldr r2, _080053D4 @ =0x0600F000
	adds r0, r0, r2
	adds r0, r1, r0
	strh r6, [r0]
_080053CC:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080053D4: .4byte 0x0600F000

	thumb_func_start sub_080053D8
sub_080053D8: @ 0x080053D8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r1, #0
	mov r8, r3
	ldr r1, [sp, #0x1c]
	mov sb, r1
	lsls r1, r2, #4
	subs r1, r1, r2
	lsls r1, r1, #1
	adds r3, r1, r4
	lsls r1, r3, #6
	movs r6, #0xc0
	lsls r6, r6, #0x13
	adds r5, r1, r6
	adds r0, #0x2d
	ldrb r0, [r0]
	cmp r0, #0
	beq _08005430
	lsls r1, r2, #6
	lsls r0, r4, #1
	ldr r2, _0800542C @ =0x0600F000
	adds r0, r0, r2
	adds r7, r1, r0
	adds r6, r3, #0
	movs r4, #0
	cmp r4, r8
	bhs _08005448
_08005412:
	adds r0, r5, #0
	mov r1, sb
	movs r2, #0x40
	bl sub_08000314
	adds r5, #0x40
	strh r6, [r7]
	adds r7, #2
	adds r6, #1
	adds r4, #1
	cmp r4, r8
	blo _08005412
	b _08005448
	.align 2, 0
_0800542C: .4byte 0x0600F000
_08005430:
	movs r4, #0
	cmp r4, r8
	bhs _08005448
_08005436:
	adds r0, r5, #0
	mov r1, sb
	movs r2, #0x40
	bl sub_08000314
	adds r5, #0x40
	adds r4, #1
	cmp r4, r8
	blo _08005436
_08005448:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08005454
sub_08005454: @ 0x08005454
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r1, #0
	mov r8, r3
	ldr r1, [sp, #0x1c]
	mov sb, r1
	lsls r1, r2, #4
	subs r1, r1, r2
	lsls r1, r1, #1
	adds r3, r1, r4
	lsls r1, r3, #6
	movs r6, #0xc0
	lsls r6, r6, #0x13
	adds r5, r1, r6
	adds r0, #0x2d
	ldrb r0, [r0]
	cmp r0, #0
	beq _080054B0
	lsls r1, r2, #6
	lsls r0, r4, #1
	ldr r2, _080054AC @ =0x0600F000
	adds r0, r0, r2
	adds r7, r1, r0
	adds r6, r3, #0
	movs r4, #0
	cmp r4, r8
	bhs _080054CC
_0800548E:
	adds r0, r5, #0
	mov r1, sb
	movs r2, #0x40
	bl sub_08000314
	movs r0, #0xf0
	lsls r0, r0, #3
	adds r5, r5, r0
	strh r6, [r7]
	adds r7, #0x3c
	adds r6, #0x1e
	adds r4, #1
	cmp r4, r8
	blo _0800548E
	b _080054CC
	.align 2, 0
_080054AC: .4byte 0x0600F000
_080054B0:
	movs r4, #0
	cmp r4, r8
	bhs _080054CC
_080054B6:
	adds r0, r5, #0
	mov r1, sb
	movs r2, #0x40
	bl sub_08000314
	movs r1, #0xf0
	lsls r1, r1, #3
	adds r5, r5, r1
	adds r4, #1
	cmp r4, r8
	blo _080054B6
_080054CC:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080054D8
sub_080054D8: @ 0x080054D8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r4, [sp, #0x24]
	mov sl, r4
	adds r6, r1, #0
	adds r0, #0x2d
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800555C
	lsls r1, r3, #6
	lsls r0, r2, #1
	ldr r4, _08005558 @ =0x0600F000
	adds r0, r0, r4
	adds r1, r1, r0
	lsls r0, r3, #4
	subs r0, r0, r3
	lsls r0, r0, #1
	adds r0, r0, r2
	lsls r0, r0, #6
	movs r2, #0xc0
	lsls r2, r2, #0x13
	adds r3, r0, r2
	movs r0, #0
	ldr r4, [sp, #0x28]
	cmp r0, r4
	bhs _08005592
_08005514:
	adds r4, r1, #0
	adds r5, r3, #0
	movs r7, #0
	movs r1, #0x40
	adds r1, r1, r4
	mov r8, r1
	adds r0, #1
	mov sb, r0
	cmp r7, sl
	bhs _08005546
_08005528:
	ldrh r0, [r4]
	adds r4, #2
	stm r6!, {r0}
	adds r0, r6, #0
	adds r1, r5, #0
	movs r2, #0x40
	str r3, [sp]
	bl sub_08000314
	adds r6, #0x40
	adds r5, #0x40
	adds r7, #1
	ldr r3, [sp]
	cmp r7, sl
	blo _08005528
_08005546:
	mov r1, r8
	movs r2, #0xf0
	lsls r2, r2, #3
	adds r3, r3, r2
	mov r0, sb
	ldr r4, [sp, #0x28]
	cmp r0, r4
	blo _08005514
	b _08005592
	.align 2, 0
_08005558: .4byte 0x0600F000
_0800555C:
	lsls r0, r3, #4
	subs r0, r0, r3
	lsls r0, r0, #1
	adds r0, r0, r2
	lsls r0, r0, #6
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r4, r0, r1
	mov r2, sl
	lsls r7, r2, #6
	movs r5, #0
	ldr r0, [sp, #0x28]
	cmp r5, r0
	bhs _08005592
_08005578:
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r7, #0
	bl sub_08000314
	adds r6, r6, r7
	movs r1, #0xf0
	lsls r1, r1, #3
	adds r4, r4, r1
	adds r5, #1
	ldr r2, [sp, #0x28]
	cmp r5, r2
	blo _08005578
_08005592:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080055A4
sub_080055A4: @ 0x080055A4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r4, [sp, #0x24]
	mov sl, r4
	adds r6, r1, #0
	adds r0, #0x2d
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800562C
	lsls r1, r3, #6
	lsls r0, r2, #1
	ldr r4, _08005628 @ =0x0600F000
	adds r0, r0, r4
	adds r1, r1, r0
	lsls r0, r3, #4
	subs r0, r0, r3
	lsls r0, r0, #1
	adds r0, r0, r2
	lsls r0, r0, #6
	movs r2, #0xc0
	lsls r2, r2, #0x13
	adds r3, r0, r2
	movs r0, #0
	ldr r4, [sp, #0x28]
	cmp r0, r4
	bhs _08005662
_080055E0:
	adds r4, r1, #0
	adds r5, r3, #0
	movs r7, #0
	movs r1, #0x40
	adds r1, r1, r4
	mov r8, r1
	adds r0, #1
	mov sb, r0
	cmp r7, sl
	bhs _08005614
_080055F4:
	ldrh r0, [r6]
	adds r6, #4
	strh r0, [r4]
	adds r4, #2
	adds r0, r5, #0
	adds r1, r6, #0
	movs r2, #0x40
	str r3, [sp]
	bl sub_08000314
	adds r5, #0x40
	adds r6, #0x40
	adds r7, #1
	ldr r3, [sp]
	cmp r7, sl
	blo _080055F4
_08005614:
	mov r1, r8
	movs r2, #0xf0
	lsls r2, r2, #3
	adds r3, r3, r2
	mov r0, sb
	ldr r4, [sp, #0x28]
	cmp r0, r4
	blo _080055E0
	b _08005662
	.align 2, 0
_08005628: .4byte 0x0600F000
_0800562C:
	lsls r0, r3, #4
	subs r0, r0, r3
	lsls r0, r0, #1
	adds r0, r0, r2
	lsls r0, r0, #6
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r4, r0, r1
	mov r2, sl
	lsls r7, r2, #6
	movs r5, #0
	ldr r0, [sp, #0x28]
	cmp r5, r0
	bhs _08005662
_08005648:
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r7, #0
	bl sub_08000314
	movs r1, #0xf0
	lsls r1, r1, #3
	adds r4, r4, r1
	adds r6, r6, r7
	adds r5, #1
	ldr r2, [sp, #0x28]
	cmp r5, r2
	blo _08005648
_08005662:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08005674
sub_08005674: @ 0x08005674
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r5, r0, #0
	adds r4, r1, #0
	adds r7, r2, #0
	adds r6, r3, #0
	adds r0, r4, r6
	subs r0, #1
	mov r8, r0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r7, r0
	beq _080056CC
	subs r6, #2
	cmp r4, r0
	bne _0800569C
	movs r4, #0
	b _080056AA
_0800569C:
	ldr r3, [r5]
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r7, #0
	bl sub_08005398
	adds r4, #1
_080056AA:
	ldr r0, [r5, #4]
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_080053D8
	mov r0, r8
	cmp r0, #0x1e
	beq _080056CC
	ldr r3, [r5, #8]
	adds r0, r5, #0
	mov r1, r8
	adds r2, r7, #0
	bl sub_08005398
_080056CC:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080056D8
sub_080056D8: @ 0x080056D8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r5, r0, #0
	adds r4, r1, #0
	adds r7, r2, #0
	adds r6, r3, #0
	adds r0, r4, r6
	subs r0, #1
	mov r8, r0
	subs r6, #2
	movs r0, #1
	rsbs r0, r0, #0
	cmp r4, r0
	bne _080056FC
	movs r4, #0
	b _0800570A
_080056FC:
	ldr r3, [r5, #0xc]
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r7, #0
	bl sub_08005398
	adds r4, #1
_0800570A:
	ldr r0, [r5, #0x10]
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_080053D8
	mov r0, r8
	cmp r0, #0x1e
	beq _0800572C
	ldr r3, [r5, #0x14]
	adds r0, r5, #0
	mov r1, r8
	adds r2, r7, #0
	bl sub_08005398
_0800572C:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08005738
sub_08005738: @ 0x08005738
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r5, r0, #0
	adds r4, r1, #0
	adds r7, r2, #0
	adds r6, r3, #0
	adds r0, r4, r6
	subs r0, #1
	mov r8, r0
	cmp r7, #0x14
	beq _08005790
	subs r6, #2
	movs r0, #1
	rsbs r0, r0, #0
	cmp r4, r0
	bne _08005760
	movs r4, #0
	b _0800576E
_08005760:
	ldr r3, [r5, #0x18]
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r7, #0
	bl sub_08005398
	adds r4, #1
_0800576E:
	ldr r0, [r5, #0x1c]
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_080053D8
	mov r0, r8
	cmp r0, #0x1e
	beq _08005790
	ldr r3, [r5, #0x20]
	adds r0, r5, #0
	mov r1, r8
	adds r2, r7, #0
	bl sub_08005398
_08005790:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0800579C
sub_0800579C: @ 0x0800579C
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r7, r1, #0
	adds r6, r2, #0
	cmp r6, #0
	blt _080057BE
	ldr r4, [r5, #0x24]
	adds r3, r4, #0
	bl sub_08005398
	adds r4, #0x40
	adds r1, r7, #1
	adds r0, r5, #0
	adds r2, r6, #0
	adds r3, r4, #0
	bl sub_08005398
_080057BE:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080057C4
sub_080057C4: @ 0x080057C4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r7, r0, #0
	mov r8, r1
	adds r4, r2, #0
	mov sb, r3
	ldr r6, [sp, #0x20]
	ldr r5, [r7, #0x28]
	movs r0, #1
	ands r0, r6
	cmp r0, #0
	beq _080057EE
	cmp r4, #0
	blt _080057EE
	adds r0, r7, #0
	adds r3, r5, #0
	bl sub_08005398
_080057EE:
	adds r5, #0x40
	movs r0, #2
	ands r0, r6
	cmp r0, #0
	beq _08005808
	adds r2, r4, #1
	mov r3, sb
	subs r3, #2
	str r5, [sp]
	adds r0, r7, #0
	mov r1, r8
	bl sub_08005454
_08005808:
	adds r5, #0x40
	movs r0, #4
	ands r6, r0
	cmp r6, #0
	beq _08005828
	mov r1, sb
	adds r0, r4, r1
	subs r4, r0, #1
	cmp r4, #0x13
	bgt _08005828
	adds r0, r7, #0
	mov r1, r8
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_08005398
_08005828:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08005838:
	.byte 0xF0, 0xB5, 0x4F, 0x46, 0x46, 0x46, 0xC0, 0xB4
	.byte 0x81, 0xB0, 0x14, 0x1C, 0x98, 0x46, 0x0A, 0x01, 0x52, 0x1A, 0x52, 0x00, 0x12, 0x18, 0x92, 0x01
	.byte 0xC0, 0x20, 0xC0, 0x04, 0x16, 0x18, 0x12, 0x48, 0x15, 0x18, 0x01, 0x20, 0x40, 0x42, 0x80, 0x44
	.byte 0x00, 0x27, 0x47, 0x45, 0x14, 0xD2, 0x24, 0x01, 0x0E, 0x48, 0x04, 0x40, 0x80, 0x20, 0xC0, 0x04
	.byte 0x81, 0x46, 0xF0, 0x23, 0x1B, 0x01, 0x28, 0x1C, 0x31, 0x1C, 0x4A, 0x46, 0x22, 0x43, 0x00, 0x93
	.byte 0x37, 0xF0, 0x62, 0xFD, 0x00, 0x9B, 0xED, 0x18, 0xF6, 0x18, 0x01, 0x37, 0x47, 0x45, 0xF2, 0xD3
	.byte 0x01, 0xB0, 0x18, 0xBC, 0x98, 0x46, 0xA1, 0x46, 0xF0, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00
	.byte 0x00, 0x0F, 0x00, 0x06, 0xFF, 0xFF, 0x1F, 0x00, 0xF0, 0xB5, 0x4F, 0x46, 0x46, 0x46, 0xC0, 0xB4
	.byte 0x81, 0xB0, 0x14, 0x1C, 0x98, 0x46, 0x41, 0x44, 0x02, 0x39, 0x0A, 0x01, 0x52, 0x1A, 0x52, 0x00
	.byte 0x12, 0x18, 0x92, 0x01, 0xC0, 0x20, 0xC0, 0x04, 0x16, 0x18, 0x11, 0x48, 0x15, 0x18, 0x01, 0x20
	.byte 0x40, 0x42, 0x80, 0x44, 0x00, 0x27, 0x47, 0x45, 0x13, 0xD2, 0x24, 0x01, 0x0D, 0x48, 0x04, 0x40
	.byte 0x80, 0x20, 0xC0, 0x04, 0x81, 0x46, 0x0C, 0x4B, 0x28, 0x1C, 0x31, 0x1C, 0x4A, 0x46, 0x22, 0x43
	.byte 0x00, 0x93, 0x37, 0xF0, 0x29, 0xFD, 0x00, 0x9B, 0xED, 0x18, 0xF6, 0x18, 0x01, 0x37, 0x47, 0x45
	.byte 0xF2, 0xD3, 0x01, 0xB0, 0x18, 0xBC, 0x98, 0x46, 0xA1, 0x46, 0xF0, 0xBC, 0x01, 0xBC, 0x00, 0x47
	.byte 0x00, 0xF1, 0xFF, 0x05, 0xFF, 0xFF, 0x1F, 0x00, 0x00, 0xF1, 0xFF, 0xFF

	thumb_func_start sub_0800591C
sub_0800591C: @ 0x0800591C
	push {r4, r5, r6, lr}
	lsls r0, r0, #1
	movs r1, #0xa0
	lsls r1, r1, #0x13
	adds r4, r0, r1
	movs r6, #0
	movs r5, #0x1f
_0800592A:
	ldrh r0, [r4]
	lsls r1, r0, #0x10
	adds r3, r5, #0
	ands r3, r0
	lsrs r2, r1, #0x15
	ands r2, r5
	lsrs r1, r1, #0x1a
	ands r1, r5
	lsls r0, r3, #1
	adds r0, r0, r3
	lsrs r3, r0, #2
	lsls r0, r2, #1
	adds r0, r0, r2
	lsrs r2, r0, #2
	lsls r0, r1, #1
	adds r0, r0, r1
	lsrs r1, r0, #2
	lsls r0, r1, #0xa
	lsls r1, r2, #5
	orrs r0, r1
	orrs r0, r3
	strh r0, [r4]
	adds r4, #2
	adds r6, #1
	cmp r6, #0xf
	bls _0800592A
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08005964
sub_08005964: @ 0x08005964
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	movs r5, #0
	cmp r5, r6
	bhs _080059A6
	movs r7, #0x1f
_08005972:
	ldrh r0, [r4]
	lsls r1, r0, #0x10
	adds r3, r7, #0
	ands r3, r0
	lsrs r2, r1, #0x15
	ands r2, r7
	lsrs r1, r1, #0x1a
	ands r1, r7
	lsls r0, r3, #1
	adds r0, r0, r3
	lsrs r3, r0, #2
	lsls r0, r2, #1
	adds r0, r0, r2
	lsrs r2, r0, #2
	lsls r0, r1, #1
	adds r0, r0, r1
	lsrs r1, r0, #2
	lsls r0, r1, #0xa
	lsls r1, r2, #5
	orrs r0, r1
	orrs r0, r3
	strh r0, [r4]
	adds r4, #2
	adds r5, #1
	cmp r5, r6
	blo _08005972
_080059A6:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080059AC
sub_080059AC: @ 0x080059AC
	push {lr}
	lsls r1, r1, #1
	movs r2, #0xa0
	lsls r2, r2, #0x13
	adds r1, r1, r2
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r2, #0x20
	bl sub_080002C4
	pop {r0}
	bx r0

	thumb_func_start sub_080059C4
sub_080059C4: @ 0x080059C4
	push {lr}
	adds r1, r0, #0
	ldr r2, _080059EC @ =0x02001D6C
	ldrb r0, [r2]
	cmp r0, r1
	beq _08005A08
	strb r1, [r2]
	cmp r1, #0
	beq _080059F0
	movs r0, #0
	bl sub_0800591C
	movs r0, #0x10
	bl sub_0800591C
	movs r0, #0x20
	bl sub_0800591C
	b _08005A08
	.align 2, 0
_080059EC: .4byte 0x02001D6C
_080059F0:
	movs r0, #0
	movs r1, #0x30
	bl sub_080059AC
	movs r0, #0x10
	movs r1, #0x40
	bl sub_080059AC
	movs r0, #0x20
	movs r1, #0x50
	bl sub_080059AC
_08005A08:
	pop {r0}
	bx r0

	thumb_func_start sub_08005A0C
sub_08005A0C: @ 0x08005A0C
	push {lr}
	ldr r1, _08005A30 @ =0x0600F800
	movs r3, #0
	movs r2, #0
_08005A14:
	movs r0, #0
	adds r2, #1
_08005A18:
	strh r3, [r1]
	adds r1, #2
	adds r3, #1
	adds r0, #1
	cmp r0, #0x1d
	bls _08005A18
	adds r1, #4
	cmp r2, #0x13
	bls _08005A14
	pop {r0}
	bx r0
	.align 2, 0
_08005A30: .4byte 0x0600F800

	thumb_func_start sub_08005A34
sub_08005A34: @ 0x08005A34
	push {lr}
	ldr r0, _08005A48 @ =0x0600F000
	ldr r2, _08005A4C @ =0x03FF03FF
	movs r1, #0x80
	lsls r1, r1, #4
	bl sub_080004B8
	pop {r0}
	bx r0
	.align 2, 0
_08005A48: .4byte 0x0600F000
_08005A4C: .4byte 0x03FF03FF

	thumb_func_start sub_08005A50
sub_08005A50: @ 0x08005A50
	push {lr}
	movs r0, #0xc0
	lsls r0, r0, #0x13
	movs r1, #0x96
	lsls r1, r1, #8
	movs r2, #0
	bl sub_080004B8
	pop {r0}
	bx r0

	thumb_func_start sub_08005A64
sub_08005A64: @ 0x08005A64
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r0, r5, r2
	subs r0, #1
	movs r4, #0x1d
	cmp r4, r0
	ble _08005A74
	adds r4, r0, #0
_08005A74:
	adds r3, r1, r3
	subs r3, #1
	movs r2, #0x13
	cmp r2, r3
	ble _08005A80
	adds r2, r3, #0
_08005A80:
	adds r6, r2, #0
	subs r0, r4, r5
	adds r2, r0, #1
	cmp r2, #0
	beq _08005AB8
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #1
	adds r0, r0, r5
	lsls r0, r0, #6
	movs r3, #0xc0
	lsls r3, r3, #0x13
	adds r5, r0, r3
	lsls r7, r2, #6
	adds r4, r1, #0
	cmp r4, r6
	bgt _08005AB8
_08005AA2:
	adds r0, r5, #0
	adds r1, r7, #0
	movs r2, #0
	bl sub_080004B8
	movs r0, #0xf0
	lsls r0, r0, #3
	adds r5, r5, r0
	adds r4, #1
	cmp r4, r6
	ble _08005AA2
_08005AB8:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08005AC0
sub_08005AC0: @ 0x08005AC0
	push {r4, lr}
	movs r4, #3
	ands r4, r0
	ldr r2, _08005AF0 @ =0x083D7F98
	adds r2, r1, r2
	ldrb r3, [r2]
	lsrs r0, r0, #2
	movs r2, #1
	ands r0, r2
	ldr r2, _08005AF4 @ =0x083D7FAC
	adds r1, r1, r2
	ldrb r1, [r1]
	eors r0, r1
	lsls r3, r3, #2
	adds r3, r3, r4
	ldr r1, _08005AF8 @ =0x083D7FC0
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r3, r3, #6
	ldr r0, [r0]
	adds r0, r0, r3
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08005AF0: .4byte 0x083D7F98
_08005AF4: .4byte 0x083D7FAC
_08005AF8: .4byte 0x083D7FC0

	thumb_func_start sub_08005AFC
sub_08005AFC: @ 0x08005AFC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	movs r5, #0xc0
	lsls r5, r5, #0x13
	movs r6, #0
	movs r0, #0x80
	lsls r0, r0, #1
	mov r8, r0
_08005B0E:
	movs r4, #0
	adds r7, r6, #1
_08005B12:
	lsls r0, r4, #2
	adds r1, r6, #0
	bl sub_08005AC0
	adds r1, r0, #0
	adds r0, r5, #0
	mov r2, r8
	bl sub_08000314
	add r5, r8
	adds r4, #1
	cmp r4, #6
	bls _08005B12
	movs r0, #0x1c
	adds r1, r6, #0
	bl sub_08005AC0
	adds r1, r0, #0
	adds r0, r5, #0
	movs r2, #0x80
	bl sub_08000314
	adds r5, #0x80
	adds r6, r7, #0
	cmp r6, #0x13
	bls _08005B0E
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08005B50
sub_08005B50: @ 0x08005B50
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	str r0, [sp]
	adds r5, r1, #0
	adds r0, r0, r2
	subs r0, #1
	movs r4, #0x1d
	cmp r4, r0
	ble _08005B6C
	adds r4, r0, #0
_08005B6C:
	adds r3, r5, r3
	subs r3, #1
	movs r0, #0x13
	cmp r0, r3
	ble _08005B78
	adds r0, r3, #0
_08005B78:
	str r0, [sp, #4]
	ldr r1, [sp]
	subs r0, r4, r1
	adds r2, r0, #1
	movs r3, #3
	adds r0, r1, #0
	ands r0, r3
	movs r1, #4
	subs r1, r1, r0
	mov sb, r1
	mov r0, sb
	ands r0, r3
	mov sb, r0
	adds r0, r2, #0
	cmp r2, sb
	ble _08005B9A
	mov r0, sb
_08005B9A:
	mov sb, r0
	mov r1, sb
	subs r1, r2, r1
	mov sl, r1
	ands r4, r3
	adds r4, #1
	ands r4, r3
	str r4, [sp, #8]
	mov r0, sl
	cmp sl, r4
	ble _08005BB2
	adds r0, r4, #0
_08005BB2:
	str r0, [sp, #8]
	mov r1, sl
	subs r1, r1, r0
	lsrs r1, r1, #2
	mov sl, r1
	lsls r0, r5, #4
	subs r0, r0, r5
	lsls r0, r0, #1
	ldr r1, [sp]
	adds r0, r0, r1
	lsls r0, r0, #6
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r1, r1, r0
	mov r8, r1
	adds r7, r5, #0
	b _08005C4C
_08005BD4:
	ldr r5, [sp]
	mov r6, r8
	mov r1, sb
	cmp r1, #0
	beq _08005BFA
	adds r0, r5, #0
	adds r1, r7, #0
	bl sub_08005AC0
	adds r1, r0, #0
	mov r0, sb
	lsls r4, r0, #6
	mov r0, r8
	adds r2, r4, #0
	bl sub_08000314
	mov r1, r8
	adds r6, r1, r4
	add r5, sb
_08005BFA:
	movs r3, #0
	adds r0, r7, #1
	str r0, [sp, #0xc]
	cmp r3, sl
	bhs _08005C28
	movs r4, #0x80
	lsls r4, r4, #1
_08005C08:
	adds r0, r5, #0
	adds r1, r7, #0
	str r3, [sp, #0x10]
	bl sub_08005AC0
	adds r1, r0, #0
	adds r0, r6, #0
	adds r2, r4, #0
	bl sub_08000314
	adds r6, r6, r4
	adds r5, #4
	ldr r3, [sp, #0x10]
	adds r3, #1
	cmp r3, sl
	blo _08005C08
_08005C28:
	ldr r1, [sp, #8]
	cmp r1, #0
	beq _08005C44
	adds r0, r5, #0
	adds r1, r7, #0
	bl sub_08005AC0
	adds r1, r0, #0
	ldr r0, [sp, #8]
	lsls r4, r0, #6
	adds r0, r6, #0
	adds r2, r4, #0
	bl sub_08000314
_08005C44:
	movs r1, #0xf0
	lsls r1, r1, #3
	add r8, r1
	ldr r7, [sp, #0xc]
_08005C4C:
	ldr r0, [sp, #4]
	cmp r7, r0
	ble _08005BD4
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08005C64
sub_08005C64: @ 0x08005C64
	ldr r1, _08005C70 @ =0x02001CA0
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #8]
	strh r0, [r1, #0x10]
	bx lr
	.align 2, 0
_08005C70: .4byte 0x02001CA0

	thumb_func_start sub_08005C74
sub_08005C74: @ 0x08005C74
	push {r4, lr}
	adds r1, r0, #0
	movs r3, #0
	movs r4, #0xa0
	ldr r2, _08005C90 @ =0x02001CA0
_08005C7E:
	ldrh r0, [r2]
	cmp r0, #0
	beq _08005C94
	ldrh r0, [r2, #2]
	strh r0, [r1]
	ldrh r0, [r2, #4]
	strh r0, [r1, #2]
	ldrh r0, [r2, #6]
	b _08005C98
	.align 2, 0
_08005C90: .4byte 0x02001CA0
_08005C94:
	strh r4, [r1]
	strh r0, [r1, #2]
_08005C98:
	strh r0, [r1, #4]
	adds r1, #8
	adds r2, #8
	adds r3, #1
	cmp r3, #2
	bls _08005C7E
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08005CAC
sub_08005CAC: @ 0x08005CAC
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _08005D68 @ =0x02001DBC
	strb r4, [r0]
	ldr r1, _08005D6C @ =0x02001D6C
	movs r0, #0
	strb r0, [r1]
	bl sub_08005C64
	movs r1, #0
	movs r0, #0xa0
	lsls r0, r0, #0x13
	strh r1, [r0]
	adds r0, #0x60
	strh r1, [r0]
	ldr r5, _08005D70 @ =0x083D653A
	cmp r4, #0
	beq _08005CD2
	ldr r5, _08005D74 @ =0x083D609A
_08005CD2:
	ldr r0, _08005D78 @ =0x05000002
	adds r1, r5, #0
	movs r2, #0x1e
	bl sub_080002EC
	ldr r0, _08005D7C @ =0x05000062
	adds r1, r5, #0
	movs r2, #0x1e
	bl sub_080002EC
	ldr r5, _08005D80 @ =0x083D7378
	ldr r0, _08005D84 @ =0x050000E0
	adds r1, r5, #0
	movs r2, #0x20
	bl sub_080002C4
	ldr r5, _08005D88 @ =0x06010000
	ldr r1, _08005D8C @ =0x083D6C78
	movs r4, #0x80
	lsls r4, r4, #1
	adds r0, r5, #0
	adds r2, r4, #0
	bl sub_08000314
	movs r0, #0xc0
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r1, _08005D90 @ =0x083D6D78
	adds r2, r4, #0
	bl sub_08000314
	movs r0, #0x80
	lsls r0, r0, #3
	adds r0, r0, r5
	ldr r1, _08005D94 @ =0x083D6E78
	adds r2, r4, #0
	bl sub_08000314
	adds r0, r4, r5
	ldr r1, _08005D98 @ =0x083D6F78
	adds r2, r4, #0
	bl sub_08000314
	movs r0, #0x80
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r1, _08005D9C @ =0x083D7078
	adds r2, r4, #0
	bl sub_08000314
	movs r0, #0xa0
	lsls r0, r0, #3
	adds r0, r0, r5
	ldr r1, _08005DA0 @ =0x083D7178
	adds r2, r4, #0
	bl sub_08000314
	movs r0, #0xc0
	lsls r0, r0, #3
	adds r0, r0, r5
	ldr r1, _08005DA4 @ =0x083D7278
	adds r2, r4, #0
	bl sub_08000314
	ldr r0, _08005DA8 @ =0x05000200
	ldr r1, _08005DAC @ =0x083D6C58
	movs r2, #0x20
	bl sub_080002C4
	bl sub_08001004
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08005D68: .4byte 0x02001DBC
_08005D6C: .4byte 0x02001D6C
_08005D70: .4byte 0x083D653A
_08005D74: .4byte 0x083D609A
_08005D78: .4byte 0x05000002
_08005D7C: .4byte 0x05000062
_08005D80: .4byte 0x083D7378
_08005D84: .4byte 0x050000E0
_08005D88: .4byte 0x06010000
_08005D8C: .4byte 0x083D6C78
_08005D90: .4byte 0x083D6D78
_08005D94: .4byte 0x083D6E78
_08005D98: .4byte 0x083D6F78
_08005D9C: .4byte 0x083D7078
_08005DA0: .4byte 0x083D7178
_08005DA4: .4byte 0x083D7278
_08005DA8: .4byte 0x05000200
_08005DAC: .4byte 0x083D6C58

	thumb_func_start sub_08005DB0
sub_08005DB0: @ 0x08005DB0
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl sub_08005CAC
	adds r0, r4, #0
	bl sub_08004B98
	bl sub_08005A34
	ldr r0, _08005E10 @ =0x0600FFC0
	movs r1, #0x40
	movs r2, #0
	bl sub_080004B8
	movs r0, #0
	bl sub_08005E18
	cmp r5, #1
	bne _08005DEC
	ldr r0, _08005E14 @ =0x02001D0C
	ldrb r0, [r0]
	cmp r0, #0
	bne _08005DE4
	bl sub_0803D380
_08005DE4:
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r0, #0
	strh r0, [r1]
_08005DEC:
	cmp r5, #2
	bne _08005E08
	ldr r0, _08005E14 @ =0x02001D0C
	ldrb r0, [r0]
	cmp r0, #0
	bne _08005DFC
	bl sub_0803D380
_08005DFC:
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r2, #0x9a
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
_08005E08:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08005E10: .4byte 0x0600FFC0
_08005E14: .4byte 0x02001D0C

	thumb_func_start sub_08005E18
sub_08005E18: @ 0x08005E18
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, _08005E2C @ =0x02001DBC
	ldrb r0, [r0]
	cmp r0, #0
	beq _08005E30
	movs r2, #1
	movs r4, #2
	movs r3, #0
	b _08005E36
	.align 2, 0
_08005E2C: .4byte 0x02001DBC
_08005E30:
	movs r2, #3
	movs r4, #2
	movs r3, #1
_08005E36:
	ldr r1, _08005E94 @ =0x04000008
	movs r6, #0xfc
	lsls r6, r6, #5
	adds r0, r6, #0
	orrs r2, r0
	strh r2, [r1]
	adds r1, #2
	movs r2, #0xf4
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r4, r0
	strh r4, [r1]
	adds r1, #2
	movs r6, #0xec
	lsls r6, r6, #5
	adds r0, r6, #0
	orrs r3, r0
	strh r3, [r1]
	ldr r0, _08005E98 @ =0x04000010
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #0x2e
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	cmp r5, #0
	beq _08005E8C
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r2, #0x9a
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
_08005E8C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08005E94: .4byte 0x04000008
_08005E98: .4byte 0x04000010

	thumb_func_start sub_08005E9C
sub_08005E9C: @ 0x08005E9C
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r4, r0, #0
	adds r7, r4, #0
	adds r7, #0x14
	movs r2, #0
	ldrsb r2, [r4, r2]
	ldrb r0, [r4, #2]
	adds r1, r2, r0
	subs r1, #1
	movs r3, #0x1d
	cmp r3, r1
	ble _08005EB8
	adds r3, r1, #0
_08005EB8:
	movs r0, #0
	cmp r0, r2
	bge _08005EC0
	adds r0, r2, #0
_08005EC0:
	strb r0, [r4, #9]
	subs r0, r3, r0
	adds r0, #1
	strb r0, [r4, #0xb]
	movs r2, #1
	ldrsb r2, [r4, r2]
	ldrb r0, [r4, #3]
	adds r1, r2, r0
	subs r1, #1
	movs r3, #0x13
	cmp r3, r1
	ble _08005EDA
	adds r3, r1, #0
_08005EDA:
	movs r0, #0
	cmp r0, r2
	bge _08005EE2
	adds r0, r2, #0
_08005EE2:
	strb r0, [r4, #0xa]
	subs r0, r3, r0
	adds r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #4]
	ldrb r2, [r4, #5]
	adds r0, r7, #0
	bl sub_080052D8
	ldrb r0, [r4, #6]
	cmp r0, #0
	beq _08005F48
	ldrb r1, [r4, #0xb]
	ldrb r2, [r4, #0xc]
	ldrb r0, [r4, #5]
	cmp r0, #0
	beq _08005F0C
	lsls r0, r2, #4
	adds r0, r0, r2
	lsls r0, r0, #2
	b _08005F0E
_08005F0C:
	lsls r0, r2, #6
_08005F0E:
	muls r1, r0, r1
	ldrb r0, [r4, #8]
	cmp r0, #0
	bne _08005F20
	ldr r0, _08005F1C @ =0x02001CC0
	b _08005F2E
	.align 2, 0
_08005F1C: .4byte 0x02001CC0
_08005F20:
	cmp r0, #1
	bne _08005F2C
	ldr r0, _08005F28 @ =0x02001D70
	b _08005F2E
	.align 2, 0
_08005F28: .4byte 0x02001D70
_08005F2C:
	ldr r0, _08005F68 @ =0x02001D20
_08005F2E:
	bl sub_0800459C
	str r0, [r4, #0x10]
	ldr r1, [r4, #0x10]
	ldrb r2, [r4, #9]
	ldrb r3, [r4, #0xa]
	ldrb r0, [r4, #0xb]
	str r0, [sp]
	ldrb r0, [r4, #0xc]
	str r0, [sp, #4]
	adds r0, r7, #0
	bl sub_080054D8
_08005F48:
	ldrb r0, [r4, #7]
	cmp r0, #0
	bne _08005F94
	movs r5, #1
	ldrsb r5, [r4, r5]
	movs r1, #0
	ldrsb r1, [r4, r1]
	ldrb r3, [r4, #2]
	adds r0, r7, #0
	adds r2, r5, #0
	bl sub_08005674
	adds r5, #1
	movs r6, #0
	b _08005F7E
	.align 2, 0
_08005F68: .4byte 0x02001D20
_08005F6C:
	movs r1, #0
	ldrsb r1, [r4, r1]
	ldrb r3, [r4, #2]
	adds r0, r7, #0
	adds r2, r5, #0
	bl sub_080056D8
	adds r5, #1
	adds r6, #1
_08005F7E:
	ldrb r0, [r4, #3]
	subs r0, #2
	cmp r6, r0
	blt _08005F6C
	movs r1, #0
	ldrsb r1, [r4, r1]
	ldrb r3, [r4, #2]
	adds r0, r7, #0
	adds r2, r5, #0
	bl sub_08005738
_08005F94:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08005F9C
sub_08005F9C: @ 0x08005F9C
	push {r4, r5, lr}
	sub sp, #8
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x14
	ldrb r0, [r4, #6]
	cmp r0, #0
	beq _08005FEA
	ldr r1, [r4, #0x10]
	ldrb r2, [r4, #9]
	ldrb r3, [r4, #0xa]
	ldrb r0, [r4, #0xb]
	str r0, [sp]
	ldrb r0, [r4, #0xc]
	str r0, [sp, #4]
	adds r0, r5, #0
	bl sub_080055A4
	ldrb r0, [r4, #8]
	cmp r0, #0
	bne _08005FD4
	ldr r0, _08005FD0 @ =0x02001CC0
	bl sub_08004604
	b _08005FEA
	.align 2, 0
_08005FD0: .4byte 0x02001CC0
_08005FD4:
	cmp r0, #1
	bne _08005FE4
	ldr r0, _08005FE0 @ =0x02001D70
	bl sub_08004604
	b _08005FEA
	.align 2, 0
_08005FE0: .4byte 0x02001D70
_08005FE4:
	ldr r0, _08005FF4 @ =0x02001D20
	bl sub_08004604
_08005FEA:
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08005FF4: .4byte 0x02001D20

	thumb_func_start sub_08005FF8
sub_08005FF8: @ 0x08005FF8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r4, r0, #0
	mov r8, r1
	adds r0, #0x7e
	ldrh r0, [r0]
	adds r5, r0, r1
	movs r7, #2
	ldrh r0, [r4]
	cmp r5, r0
	bhs _08006038
	ldr r1, [r4, #0x28]
	cmp r1, #0
	beq _08006020
	adds r0, r5, #0
	bl sub_0803D79C
	b _08006022
_08006020:
	movs r0, #1
_08006022:
	cmp r0, #0
	bne _08006028
	movs r7, #1
_08006028:
	movs r6, #0
	adds r0, r4, #0
	adds r0, #0x7c
	ldrh r0, [r0]
	cmp r5, r0
	bne _0800603C
	movs r6, #1
	b _0800603C
_08006038:
	movs r7, #0
	movs r6, #0
_0800603C:
	adds r0, r4, #0
	adds r0, #0x26
	ldrb r1, [r0]
	adds r0, #1
	mov r3, r8
	lsls r2, r3, #1
	ldrb r0, [r0]
	adds r2, r2, r0
	ldrb r3, [r4, #4]
	str r7, [sp]
	str r6, [sp, #4]
	ldr r4, [r4, #8]
	adds r0, r5, #0
	bl sub_0803D7A8
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08006068
sub_08006068: @ 0x08006068
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
	b _0800607A
_08006070:
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08005FF8
	adds r4, #1
_0800607A:
	ldrb r0, [r5, #5]
	cmp r4, r0
	blo _08006070
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08006088
sub_08006088: @ 0x08006088
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r4, r2, #0
	adds r6, r5, #0
	adds r6, #0x48
	movs r0, #2
	ldrsb r0, [r5, r0]
	adds r7, r0, #1
	movs r0, #3
	ldrsb r0, [r5, r0]
	mov r8, r0
	adds r0, r5, #0
	adds r0, #0x24
	ldrb r0, [r0]
	subs r0, #4
	adds r2, r0, #0
	cmp r0, r1
	ble _080060B2
	adds r2, r1, #0
_080060B2:
	adds r1, r2, #0
	cmp r0, r4
	ble _080060BA
	adds r0, r4, #0
_080060BA:
	adds r4, r0, #0
	cmp r1, r4
	bhs _080060CE
	adds r1, r7, r1
	ldr r3, [r6, #4]
	adds r0, r6, #0
	mov r2, r8
	bl sub_08005398
	b _080060E0
_080060CE:
	cmp r4, r1
	bhs _080060E0
	adds r0, r7, r1
	adds r1, r0, #1
	ldr r3, [r6, #4]
	adds r0, r6, #0
	mov r2, r8
	bl sub_08005398
_080060E0:
	adds r1, r7, r4
	adds r0, r6, #0
	mov r2, r8
	bl sub_0800579C
	adds r0, r5, #0
	adds r0, #0x2c
	ldrb r0, [r0]
	cmp r0, #1
	bne _0800610E
	adds r2, r4, #0
	cmp r4, #6
	bls _080060FC
	subs r2, r4, #1
_080060FC:
	movs r0, #2
	ldrsb r0, [r5, r0]
	adds r0, #1
	movs r1, #3
	ldrsb r1, [r5, r1]
	adds r1, #1
	bl sub_08008B08
	b _0800612A
_0800610E:
	cmp r0, #2
	bne _0800612A
	movs r2, #8
	cmp r4, #4
	bhi _0800611A
	movs r2, #9
_0800611A:
	movs r0, #2
	ldrsb r0, [r5, r0]
	adds r0, #1
	movs r1, #3
	ldrsb r1, [r5, r1]
	adds r1, #1
	bl sub_08008B08
_0800612A:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08006134
sub_08006134: @ 0x08006134
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x80
	ldrh r6, [r5]
	adds r0, #0x7c
	ldrh r0, [r0]
	ldrb r1, [r4, #5]
	bl sub_0803D34C
	adds r2, r0, #0
	cmp r6, r2
	beq _08006158
	strh r2, [r5]
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08006088
_08006158:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08006160
sub_08006160: @ 0x08006160
	push {lr}
	adds r2, r0, #0
	ldrb r3, [r2, #5]
	ldrh r0, [r2]
	cmp r0, r3
	bhs _08006170
	movs r0, #0
	b _08006192
_08006170:
	ldrh r1, [r2, #0xc]
	lsrs r0, r3, #1
	subs r1, r1, r0
	movs r0, #1
	bics r0, r3
	cmp r0, #0
	beq _08006180
	adds r1, #1
_08006180:
	cmp r1, #0
	bge _08006186
	movs r1, #0
_08006186:
	adds r0, r1, r3
	ldrh r2, [r2]
	cmp r0, r2
	ble _08006190
	subs r1, r2, r3
_08006190:
	adds r0, r1, #0
_08006192:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08006198
sub_08006198: @ 0x08006198
	push {lr}
	movs r2, #0
	ldrb r1, [r0, #5]
	ldrh r3, [r0, #0xc]
	cmp r1, r3
	bhi _080061AC
_080061A4:
	adds r2, r2, r1
	adds r0, r2, r1
	cmp r0, r3
	bls _080061A4
_080061AC:
	adds r0, r2, #0
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080061B4
sub_080061B4: @ 0x080061B4
	push {lr}
	adds r2, r0, #0
	cmp r1, #0
	bne _080061DA
	adds r1, r2, #0
	adds r1, #0x7c
	ldrh r0, [r1]
	cmp r0, #0
	beq _08006206
	subs r0, #1
	strh r0, [r1]
	ldrh r3, [r1]
	adds r1, #2
	ldrh r0, [r1]
	subs r0, #1
	cmp r3, r0
	bne _08006206
	strh r3, [r1]
	b _08006206
_080061DA:
	adds r1, r2, #0
	adds r1, #0x7c
	ldrh r3, [r1]
	ldrh r0, [r2]
	subs r0, #1
	cmp r3, r0
	bge _08006206
	adds r0, r3, #1
	strh r0, [r1]
	movs r0, #0x7e
	adds r0, r0, r2
	mov ip, r0
	ldrh r3, [r0]
	ldrb r0, [r2, #5]
	adds r0, r3, r0
	subs r0, #1
	ldrh r1, [r1]
	cmp r0, r1
	bge _08006206
	adds r0, r3, #1
	mov r1, ip
	strh r0, [r1]
_08006206:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800620C
sub_0800620C: @ 0x0800620C
	push {r4, lr}
	adds r4, r0, #0
	adds r3, r1, #0
	adds r0, #0x2c
	ldrb r0, [r0]
	cmp r0, #1
	bne _0800623C
	adds r0, r4, #0
	adds r0, #0x7c
	ldrh r1, [r0]
	adds r2, r0, #0
	cmp r1, #0x20
	bne _0800622E
	cmp r3, #0
	bne _0800622E
	movs r0, #0x1e
	b _08006280
_0800622E:
	ldrh r0, [r2]
	cmp r0, #0x1e
	bne _0800623C
	cmp r3, #1
	bne _0800623C
	movs r0, #0x20
	b _08006280
_0800623C:
	adds r0, r4, #0
	adds r0, #0x2c
	ldrb r0, [r0]
	adds r2, r4, #0
	adds r2, #0x7c
	cmp r0, #2
	bne _08006266
	ldrh r0, [r2]
	cmp r0, #0x1e
	bne _08006258
	cmp r3, #0
	bne _08006258
	movs r0, #0x1b
	b _08006280
_08006258:
	ldrh r0, [r2]
	cmp r0, #0x1b
	bne _08006266
	cmp r3, #1
	bne _08006266
	movs r0, #0x1e
	b _08006280
_08006266:
	cmp r3, #0
	bne _08006274
	ldrh r0, [r2]
	cmp r0, #0
	beq _08006282
	subs r0, #1
	b _08006280
_08006274:
	ldrh r1, [r2]
	ldrh r0, [r4]
	subs r0, #1
	cmp r1, r0
	bge _08006282
	adds r0, r1, #1
_08006280:
	strh r0, [r2]
_08006282:
	ldrh r0, [r2]
	ldrb r1, [r4, #5]
	bl sub_0803D34C
	ldrb r1, [r4, #5]
	muls r1, r0, r1
	adds r0, r4, #0
	adds r0, #0x7e
	strh r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800629C
sub_0800629C: @ 0x0800629C
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r6, #0x7c
	ldrh r2, [r6]
	adds r7, r0, #0
	adds r7, #0x7e
	ldrh r3, [r7]
	cmp r1, #0
	bne _080062C6
	ldrb r0, [r0, #5]
	subs r2, r2, r0
	movs r0, #0
	cmp r0, r2
	bge _080062BA
	adds r0, r2, #0
_080062BA:
	adds r2, r0, #0
	adds r5, r7, #0
	cmp r2, r3
	bge _08006302
	adds r3, r2, #0
	b _08006302
_080062C6:
	ldrb r4, [r0, #5]
	adds r2, r2, r4
	ldrh r0, [r0]
	subs r1, r0, #1
	adds r5, r4, #0
	cmp r1, r2
	ble _080062D6
	adds r1, r2, #0
_080062D6:
	adds r2, r1, #0
	subs r1, r0, r5
	movs r0, #0
	cmp r0, r1
	bge _080062E2
	adds r0, r1, #0
_080062E2:
	adds r1, r0, #0
	adds r0, r3, r4
	subs r0, #1
	adds r5, r7, #0
	cmp r0, r2
	bge _08006302
	cmp r3, r1
	beq _08006302
	subs r0, r3, #1
	adds r0, r0, r4
_080062F6:
	adds r0, #1
	adds r3, #1
	cmp r0, r2
	bge _08006302
	cmp r3, r1
	bne _080062F6
_08006302:
	strh r2, [r6]
	strh r3, [r5]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0800630C
sub_0800630C: @ 0x0800630C
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r7, r1, #0
	adds r6, r4, #0
	adds r6, #0x7c
	ldrh r0, [r6]
	ldrb r1, [r4, #5]
	bl sub_0803D34C
	adds r5, r0, #0
	ldrh r0, [r4]
	subs r0, #1
	ldrb r1, [r4, #5]
	bl sub_0803D34C
	mov ip, r0
	adds r0, r4, #0
	adds r0, #0x2c
	ldrb r0, [r0]
	cmp r0, #1
	bne _08006348
	ldrh r0, [r6]
	cmp r0, #0x1b
	bne _08006348
	cmp r7, #1
	bne _08006348
	movs r0, #0x1e
	strh r0, [r6]
	adds r5, #1
	b _080063B6
_08006348:
	adds r0, r4, #0
	adds r0, #0x2c
	ldrb r0, [r0]
	cmp r0, #2
	bne _08006382
	adds r0, r4, #0
	adds r0, #0x7c
	ldrh r2, [r0]
	adds r1, r2, #0
	subs r1, #0x16
	adds r3, r0, #0
	cmp r1, #1
	bhi _0800636E
	cmp r7, #1
	bne _0800636E
	movs r0, #0x1b
	strh r0, [r3]
	adds r5, #1
	b _080063B6
_0800636E:
	adds r0, r2, #0
	subs r0, #0x22
	cmp r0, #1
	bhi _08006382
	cmp r7, #0
	bne _0800639A
	movs r0, #0x1b
	strh r0, [r3]
	subs r5, #1
	b _080063B6
_08006382:
	cmp r7, #0
	bne _0800639A
	cmp r5, #0
	beq _080063B6
	subs r5, #1
	adds r2, r4, #0
	adds r2, #0x7c
	ldrb r1, [r4, #5]
	ldrh r0, [r2]
	subs r0, r0, r1
	strh r0, [r2]
	b _080063B6
_0800639A:
	cmp r5, ip
	bhs _080063B6
	adds r5, #1
	adds r3, r4, #0
	adds r3, #0x7c
	ldrh r0, [r3]
	ldrb r1, [r4, #5]
	ldrh r2, [r4]
	adds r0, r0, r1
	subs r2, #1
	cmp r2, r0
	ble _080063B4
	adds r2, r0, #0
_080063B4:
	strh r2, [r3]
_080063B6:
	ldrb r0, [r4, #5]
	adds r1, r0, #0
	muls r1, r5, r1
	adds r0, r4, #0
	adds r0, #0x7e
	strh r1, [r0]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080063C8
sub_080063C8: @ 0x080063C8
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r0, #0x74
	ldrb r6, [r0]
	bl sub_08005C64
	ldrb r0, [r5, #0x14]
	cmp r0, #0
	bne _0800644A
	adds r0, r5, #0
	adds r0, #0x7c
	ldrh r0, [r0]
	adds r1, r5, #0
	adds r1, #0x7e
	ldrh r1, [r1]
	subs r0, r0, r1
	adds r1, r5, #0
	adds r1, #0x26
	ldrb r1, [r1]
	lsls r1, r1, #3
	adds r2, r5, #0
	adds r2, #0x27
	lsls r0, r0, #1
	ldrb r2, [r2]
	adds r0, r0, r2
	lsls r2, r0, #3
	adds r3, r1, #0
	subs r3, #0xc
	movs r4, #1
	rsbs r4, r4, #0
	cmp r4, r3
	bge _0800640A
	adds r4, r3, #0
_0800640A:
	ldr r1, _080064A0 @ =0x083D7FC8
	adds r0, r5, #0
	adds r0, #0x84
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r3, r4, r0
	ldr r1, _080064A4 @ =0x02001CA0
	movs r0, #1
	strh r0, [r1]
	adds r4, r1, #2
	movs r0, #0xff
	ands r2, r0
	movs r7, #0x80
	lsls r7, r7, #6
	adds r0, r7, #0
	orrs r2, r0
	strh r2, [r1, #2]
	ldr r1, _080064A8 @ =0x000001FF
	adds r0, r1, #0
	ands r3, r0
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r2, #0
	orrs r3, r0
	strh r3, [r4, #2]
	lsls r0, r6, #0xa
	movs r1, #0x28
	orrs r0, r1
	strh r0, [r4, #4]
_0800644A:
	adds r0, r5, #0
	adds r0, #0x7e
	ldrh r1, [r0]
	mov ip, r0
	cmp r1, #0
	beq _08006510
	ldr r0, _080064A4 @ =0x02001CA0
	movs r1, #1
	strh r1, [r0, #8]
	ldrb r0, [r5, #0x14]
	cmp r0, #0
	bne _080064AC
	movs r1, #2
	ldrsb r1, [r5, r1]
	lsls r1, r1, #3
	adds r0, r5, #0
	adds r0, #0x24
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r1, r1, r0
	adds r3, r1, #0
	subs r3, #8
	movs r0, #3
	ldrsb r0, [r5, r0]
	lsls r0, r0, #3
	subs r2, r0, #7
	movs r4, #5
	rsbs r4, r4, #0
	cmp r4, r2
	bge _08006488
	adds r4, r2, #0
_08006488:
	ldr r1, _080064A0 @ =0x083D7FC8
	adds r0, r5, #0
	adds r0, #0x84
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r7, #0
	ldrsh r0, [r0, r7]
	adds r2, r4, r0
	movs r1, #4
	b _080064E8
	.align 2, 0
_080064A0: .4byte 0x083D7FC8
_080064A4: .4byte 0x02001CA0
_080064A8: .4byte 0x000001FF
_080064AC:
	movs r0, #2
	ldrsb r0, [r5, r0]
	lsls r0, r0, #3
	adds r3, r0, #0
	subs r3, #8
	movs r1, #3
	ldrsb r1, [r5, r1]
	lsls r1, r1, #3
	adds r0, r5, #0
	adds r0, #0x25
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r1, r1, r0
	adds r2, r1, #0
	subs r2, #8
	movs r4, #5
	rsbs r4, r4, #0
	cmp r4, r3
	bge _080064D4
	adds r4, r3, #0
_080064D4:
	ldr r1, _08006574 @ =0x083D7FC8
	adds r0, r5, #0
	adds r0, #0x84
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r3, r4, r0
	movs r1, #0xc
_080064E8:
	ldr r4, _08006578 @ =0x02001CAA
	movs r0, #0xff
	ands r2, r0
	movs r7, #0x80
	lsls r7, r7, #6
	adds r0, r7, #0
	orrs r2, r0
	strh r2, [r4]
	ldr r2, _0800657C @ =0x000001FF
	adds r0, r2, #0
	ands r3, r0
	movs r7, #0x80
	lsls r7, r7, #7
	adds r0, r7, #0
	orrs r3, r0
	strh r3, [r4, #2]
	lsls r0, r6, #0xa
	lsls r1, r1, #1
	orrs r0, r1
	strh r0, [r4, #4]
_08006510:
	mov r1, ip
	ldrh r0, [r1]
	ldrb r1, [r5, #5]
	adds r0, r0, r1
	subs r0, #1
	ldrh r1, [r5]
	subs r1, #1
	cmp r0, r1
	bge _080065EE
	ldr r0, _08006580 @ =0x02001CA0
	movs r1, #1
	strh r1, [r0, #0x10]
	ldrb r0, [r5, #0x14]
	cmp r0, #0
	bne _08006584
	movs r1, #2
	ldrsb r1, [r5, r1]
	lsls r1, r1, #3
	adds r0, r5, #0
	adds r0, #0x24
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r1, r1, r0
	adds r3, r1, #0
	subs r3, #8
	adds r1, r5, #0
	adds r1, #0x25
	movs r0, #3
	ldrsb r0, [r5, r0]
	ldrb r1, [r1]
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r2, r0, #0
	subs r2, #9
	movs r4, #0x94
	cmp r4, r2
	ble _0800655C
	adds r4, r2, #0
_0800655C:
	ldr r1, _08006574 @ =0x083D7FC8
	adds r0, r5, #0
	adds r0, #0x84
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	subs r2, r4, r0
	movs r1, #8
	b _080065C6
	.align 2, 0
_08006574: .4byte 0x083D7FC8
_08006578: .4byte 0x02001CAA
_0800657C: .4byte 0x000001FF
_08006580: .4byte 0x02001CA0
_08006584:
	adds r1, r5, #0
	adds r1, #0x24
	movs r0, #2
	ldrsb r0, [r5, r0]
	ldrb r1, [r1]
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r3, r0, #0
	subs r3, #8
	movs r1, #3
	ldrsb r1, [r5, r1]
	lsls r1, r1, #3
	adds r0, r5, #0
	adds r0, #0x25
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r1, r1, r0
	adds r2, r1, #0
	subs r2, #8
	movs r4, #0xe5
	cmp r4, r3
	ble _080065B2
	adds r4, r3, #0
_080065B2:
	ldr r1, _0800660C @ =0x083D7FC8
	adds r0, r5, #0
	adds r0, #0x84
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r7, #0
	ldrsh r0, [r0, r7]
	subs r3, r4, r0
	movs r1, #0x10
_080065C6:
	ldr r4, _08006610 @ =0x02001CB2
	movs r0, #0xff
	ands r2, r0
	movs r7, #0x80
	lsls r7, r7, #6
	adds r0, r7, #0
	orrs r2, r0
	strh r2, [r4]
	ldr r2, _08006614 @ =0x000001FF
	adds r0, r2, #0
	ands r3, r0
	movs r7, #0x80
	lsls r7, r7, #7
	adds r0, r7, #0
	orrs r3, r0
	strh r3, [r4, #2]
	lsls r0, r6, #0xa
	lsls r1, r1, #1
	orrs r0, r1
	strh r0, [r4, #4]
_080065EE:
	adds r0, r5, #0
	adds r0, #0x82
	ldrh r0, [r0]
	movs r1, #6
	bl sub_0803D350
	cmp r0, #0
	bne _0800661C
	adds r0, r5, #0
	adds r0, #0x84
	ldrb r2, [r0]
	cmp r2, #3
	beq _08006618
	adds r2, #1
	b _0800661A
	.align 2, 0
_0800660C: .4byte 0x083D7FC8
_08006610: .4byte 0x02001CB2
_08006614: .4byte 0x000001FF
_08006618:
	movs r2, #0
_0800661A:
	strb r2, [r0]
_0800661C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08006624
sub_08006624: @ 0x08006624
	adds r2, r0, #0
	adds r2, #0x2d
	movs r1, #0
	strb r1, [r2]
	adds r2, #1
	strb r1, [r2]
	adds r2, #1
	strb r1, [r2]
	adds r0, #0x30
	strb r1, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_0800663C
sub_0800663C: @ 0x0800663C
	mov ip, r0
	movs r2, #0
	strb r2, [r0, #0xe]
	strb r2, [r0, #0xf]
	movs r0, #1
	mov r1, ip
	strb r0, [r1, #0x10]
	strb r2, [r1, #0x11]
	strb r2, [r1, #0x12]
	strb r2, [r1, #0x13]
	strb r2, [r1, #0x14]
	strb r2, [r1, #0x15]
	strb r2, [r1, #0x16]
	strb r0, [r1, #0x17]
	strb r0, [r1, #0x18]
	strb r2, [r1, #0x19]
	movs r3, #0
	movs r0, #0x53
	strh r0, [r1, #0x1a]
	movs r0, #0x54
	strh r0, [r1, #0x1c]
	movs r0, #0x52
	strh r0, [r1, #0x1e]
	movs r0, #0x50
	strh r0, [r1, #0x20]
	movs r0, #0x77
	strh r0, [r1, #0x22]
	ldrb r0, [r1, #4]
	adds r0, #2
	adds r1, #0x24
	strb r0, [r1]
	mov r1, ip
	ldrb r0, [r1, #5]
	lsls r0, r0, #1
	adds r0, #2
	adds r1, #0x25
	strb r0, [r1]
	mov r1, ip
	ldrb r0, [r1, #2]
	adds r0, #1
	adds r1, #0x26
	strb r0, [r1]
	mov r1, ip
	ldrb r0, [r1, #3]
	adds r0, #1
	adds r1, #0x27
	strb r0, [r1]
	mov r0, ip
	str r2, [r0, #0x28]
	adds r0, #0x2c
	strb r3, [r0]
	bx lr

	thumb_func_start sub_080066A4
sub_080066A4: @ 0x080066A4
	push {lr}
	ldrb r2, [r0, #5]
	ldrh r1, [r0]
	cmp r1, r2
	ble _080066B0
	adds r1, r2, #0
_080066B0:
	strb r1, [r0, #5]
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080066B8
sub_080066B8: @ 0x080066B8
	ldrb r3, [r0, #4]
	ldrb r2, [r0, #5]
	lsls r2, r2, #1
	adds r3, #3
	lsrs r3, r3, #1
	movs r1, #0xf
	subs r1, r1, r3
	strb r1, [r0, #2]
	adds r2, #3
	lsrs r2, r2, #1
	movs r1, #0xa
	subs r1, r1, r2
	strb r1, [r0, #3]
	bx lr

	thumb_func_start sub_080066D4
sub_080066D4: @ 0x080066D4
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x2d
	ldrb r2, [r0]
	cmp r1, r2
	beq _08006760
	cmp r1, #2
	bne _08006730
	strb r1, [r0]
	cmp r2, #0
	bne _0800671C
	adds r0, #7
	ldrb r1, [r4, #2]
	strb r1, [r0]
	ldrb r1, [r4, #3]
	strb r1, [r0, #1]
	adds r1, r4, #0
	adds r1, #0x24
	ldrb r1, [r1]
	strb r1, [r0, #2]
	adds r1, r4, #0
	adds r1, #0x25
	ldrb r1, [r1]
	strb r1, [r0, #3]
	ldrb r1, [r4, #0xe]
	strb r1, [r0, #4]
	ldrb r1, [r4, #0xf]
	strb r1, [r0, #5]
	ldrb r1, [r4, #0x10]
	strb r1, [r0, #6]
	ldrb r1, [r4, #0x11]
	strb r1, [r0, #7]
	ldrb r1, [r4, #0x12]
	strb r1, [r0, #8]
	bl sub_08005E9C
_0800671C:
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _08006760
	ldrb r0, [r4, #0x13]
	cmp r0, #0
	bne _08006760
	movs r0, #1
	bl sub_080059C4
	b _08006760
_08006730:
	cmp r1, #1
	bne _0800673C
	strb r1, [r0]
	bl sub_08005C64
	b _08006760
_0800673C:
	cmp r1, #0
	bne _08006760
	strb r1, [r0]
	bl sub_08005C64
	adds r0, r4, #0
	adds r0, #0x34
	bl sub_08005F9C
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _08006760
	ldrb r0, [r4, #0x13]
	cmp r0, #0
	bne _08006760
	movs r0, #0
	bl sub_080059C4
_08006760:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08006768
sub_08006768: @ 0x08006768
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_08006624
	ldr r0, _080067A0 @ =0x02000020
	movs r1, #0
	strh r1, [r0]
	ldrh r0, [r4, #0x1a]
	cmp r0, #0
	beq _08006780
	bl sub_080005D8
_08006780:
	adds r0, r4, #0
	movs r1, #2
	bl sub_080066D4
	ldrh r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x7c
	strh r0, [r1]
	ldrb r0, [r4, #0x14]
	adds r5, r1, #0
	cmp r0, #0
	bne _080067A4
	adds r0, r4, #0
	bl sub_08006160
	b _080067AA
	.align 2, 0
_080067A0: .4byte 0x02000020
_080067A4:
	adds r0, r4, #0
	bl sub_08006198
_080067AA:
	adds r1, r4, #0
	adds r1, #0x7e
	strh r0, [r1]
	adds r2, r4, #0
	adds r2, #0x82
	movs r1, #0
	movs r0, #0
	strh r0, [r2]
	adds r0, r4, #0
	adds r0, #0x84
	strb r1, [r0]
	ldrb r0, [r4, #0x16]
	cmp r0, #0
	beq _080067DE
	ldrh r0, [r5]
	ldrb r1, [r4, #5]
	bl sub_0803D34C
	adds r1, r4, #0
	adds r1, #0x80
	strh r0, [r1]
	ldrh r2, [r1]
	adds r0, r4, #0
	adds r1, r2, #0
	bl sub_08006088
_080067DE:
	adds r0, r4, #0
	bl sub_08006068
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080067EC
sub_080067EC: @ 0x080067EC
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x2e
	movs r0, #0
	strb r0, [r1]
	adds r6, r4, #0
	adds r6, #0x2f
	strb r0, [r6]
	adds r5, r4, #0
	adds r5, #0x30
	strb r0, [r5]
	adds r0, r4, #0
	adds r0, #0x2d
	ldrb r1, [r0]
	cmp r1, #2
	beq _08006810
	b _080069B0
_08006810:
	movs r3, #1
	ldrb r0, [r4, #0x18]
	cmp r0, #0
	beq _0800681A
	movs r3, #9
_0800681A:
	ldr r0, _0800683C @ =0x02000020
	ldrh r2, [r0]
	ands r3, r2
	adds r7, r0, #0
	cmp r3, #0
	beq _08006878
	adds r0, r4, #0
	adds r0, #0x7c
	ldrh r2, [r0]
	ldr r1, [r4, #0x28]
	adds r6, r0, #0
	cmp r1, #0
	beq _08006840
	adds r0, r2, #0
	bl sub_0803D79C
	b _08006842
	.align 2, 0
_0800683C: .4byte 0x02000020
_08006840:
	movs r0, #1
_08006842:
	cmp r0, #0
	beq _0800686A
	adds r0, r4, #0
	adds r0, #0x30
	movs r5, #1
	strb r5, [r0]
	ldrh r0, [r4, #0x1c]
	cmp r0, #0
	beq _08006858
	bl sub_080005D8
_08006858:
	ldrb r0, [r4, #0x15]
	cmp r0, #0
	bne _080068C0
	adds r0, r4, #0
	adds r0, #0x2f
	strb r5, [r0]
	ldrh r0, [r6]
	strh r0, [r4, #0xc]
	b _0800689C
_0800686A:
	ldrh r0, [r4, #0x22]
	cmp r0, #0
	bne _08006872
	b _080069A0
_08006872:
	bl sub_080005D8
	b _080069A0
_08006878:
	ldrb r0, [r4, #0x17]
	cmp r0, #0
	beq _080068A6
	ands r2, r1
	cmp r2, #0
	beq _080068A6
	movs r0, #2
	strb r0, [r5]
	ldrh r0, [r4, #0x1e]
	cmp r0, #0
	beq _08006892
	bl sub_080005D8
_08006892:
	ldrb r0, [r4, #0x15]
	cmp r0, #0
	bne _080068C0
	movs r0, #1
	strb r0, [r6]
_0800689C:
	adds r0, r4, #0
	movs r1, #0
	bl sub_080066D4
	b _080069B0
_080068A6:
	ldrb r0, [r4, #0x19]
	cmp r0, #0
	beq _080068C6
	ldrh r1, [r7]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080068C6
	adds r1, r4, #0
	adds r1, #0x30
	movs r0, #3
	strb r0, [r1]
_080068C0:
	bl sub_08005C64
	b _080069A0
_080068C6:
	adds r0, r4, #0
	adds r0, #0x7c
	ldrh r5, [r0]
	ldrb r1, [r4, #0x14]
	adds r6, r0, #0
	cmp r1, #0
	bne _08006926
	ldr r0, _080068EC @ =0x02000004
	ldrh r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080068F0
	adds r0, r4, #0
	movs r1, #0
	bl sub_080061B4
	b _08006974
	.align 2, 0
_080068EC: .4byte 0x02000004
_080068F0:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08006902
	adds r0, r4, #0
	movs r1, #1
	bl sub_080061B4
	b _08006974
_08006902:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08006914
	adds r0, r4, #0
	movs r1, #0
	bl sub_0800629C
	b _08006974
_08006914:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08006974
	adds r0, r4, #0
	movs r1, #1
	bl sub_0800629C
	b _08006974
_08006926:
	ldr r0, _0800693C @ =0x02000004
	ldrh r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08006940
	adds r0, r4, #0
	movs r1, #0
	bl sub_0800620C
	b _08006974
	.align 2, 0
_0800693C: .4byte 0x02000004
_08006940:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08006952
	adds r0, r4, #0
	movs r1, #1
	bl sub_0800620C
	b _08006974
_08006952:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08006964
	adds r0, r4, #0
	movs r1, #0
	bl sub_0800630C
	b _08006974
_08006964:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08006974
	adds r0, r4, #0
	movs r1, #1
	bl sub_0800630C
_08006974:
	ldrh r0, [r6]
	cmp r0, r5
	beq _080069A0
	ldrh r0, [r4, #0x20]
	cmp r0, #0
	beq _08006984
	bl sub_080005D8
_08006984:
	ldrb r0, [r4, #0x16]
	cmp r0, #0
	beq _08006992
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08006134
_08006992:
	adds r0, r4, #0
	bl sub_08006068
	adds r1, r4, #0
	adds r1, #0x2e
	movs r0, #1
	strb r0, [r1]
_080069A0:
	adds r0, r4, #0
	bl sub_080063C8
	adds r1, r4, #0
	adds r1, #0x82
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
_080069B0:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080069B8
sub_080069B8: @ 0x080069B8
	push {lr}
	adds r3, r0, #0
	adds r0, #0x7e
	ldrh r0, [r0]
	subs r1, r1, r0
	ldrb r0, [r3, #5]
	subs r0, #1
	movs r2, #0
	cmp r2, r1
	bgt _080069D2
	cmp r1, r0
	bgt _080069D2
	movs r2, #1
_080069D2:
	cmp r2, #0
	beq _080069DC
	adds r0, r3, #0
	bl sub_08005FF8
_080069DC:
	pop {r0}
	bx r0

	thumb_func_start sub_080069E0
sub_080069E0: @ 0x080069E0
	movs r0, #0x25
	bx lr

	thumb_func_start sub_080069E4
sub_080069E4: @ 0x080069E4
	movs r0, #0x25
	bx lr

	thumb_func_start sub_080069E8
sub_080069E8: @ 0x080069E8
	movs r0, #0x2c
	bx lr

	thumb_func_start sub_080069EC
sub_080069EC: @ 0x080069EC
	movs r0, #0x2e
	bx lr

	thumb_func_start sub_080069F0
sub_080069F0: @ 0x080069F0
	movs r0, #0xb
	bx lr

	thumb_func_start sub_080069F4
sub_080069F4: @ 0x080069F4
	movs r0, #0x18
	bx lr

	thumb_func_start sub_080069F8
sub_080069F8: @ 0x080069F8
	push {lr}
	cmp r0, #0
	beq _08006A02
	cmp r0, #1
	bne _08006A06
_08006A02:
	movs r0, #0x25
	b _08006A18
_08006A06:
	cmp r0, #2
	bne _08006A0E
	movs r0, #0x2c
	b _08006A18
_08006A0E:
	cmp r0, #3
	beq _08006A16
	movs r0, #0xb
	b _08006A18
_08006A16:
	movs r0, #0x2e
_08006A18:
	pop {r1}
	bx r1

	thumb_func_start sub_08006A1C
sub_08006A1C: @ 0x08006A1C
	ldr r1, _08006A28 @ =0x083D7FD0
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bx lr
	.align 2, 0
_08006A28: .4byte 0x083D7FD0

	thumb_func_start sub_08006A2C
sub_08006A2C: @ 0x08006A2C
	ldr r1, _08006A38 @ =0x083D808C
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bx lr
	.align 2, 0
_08006A38: .4byte 0x083D808C

	thumb_func_start sub_08006A3C
sub_08006A3C: @ 0x08006A3C
	ldr r1, _08006A48 @ =0x083D8200
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bx lr
	.align 2, 0
_08006A48: .4byte 0x083D8200

	thumb_func_start sub_08006A4C
sub_08006A4C: @ 0x08006A4C
	ldr r1, _08006A58 @ =0x083D83B8
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bx lr
	.align 2, 0
_08006A58: .4byte 0x083D83B8

	thumb_func_start sub_08006A5C
sub_08006A5C: @ 0x08006A5C
	ldr r1, _08006A68 @ =0x083D8470
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bx lr
	.align 2, 0
_08006A68: .4byte 0x083D8470

	thumb_func_start sub_08006A6C
sub_08006A6C: @ 0x08006A6C
	ldr r1, _08006A78 @ =0x083D849C
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bx lr
	.align 2, 0
_08006A78: .4byte 0x083D849C

	thumb_func_start sub_08006A7C
sub_08006A7C: @ 0x08006A7C
	push {lr}
	cmp r0, #0
	bne _08006A8C
	ldr r0, _08006A88 @ =0x083D7FD0
	b _08006AB2
	.align 2, 0
_08006A88: .4byte 0x083D7FD0
_08006A8C:
	cmp r0, #1
	bne _08006A98
	ldr r0, _08006A94 @ =0x083D808C
	b _08006AB2
	.align 2, 0
_08006A94: .4byte 0x083D808C
_08006A98:
	cmp r0, #2
	bne _08006AA4
	ldr r0, _08006AA0 @ =0x083D8200
	b _08006AB2
	.align 2, 0
_08006AA0: .4byte 0x083D8200
_08006AA4:
	cmp r0, #3
	beq _08006AB0
	ldr r0, _08006AAC @ =0x083D8470
	b _08006AB2
	.align 2, 0
_08006AAC: .4byte 0x083D8470
_08006AB0:
	ldr r0, _08006ABC @ =0x083D83B8
_08006AB2:
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	pop {r1}
	bx r1
	.align 2, 0
_08006ABC: .4byte 0x083D83B8

	thumb_func_start sub_08006AC0
sub_08006AC0: @ 0x08006AC0
	ldr r1, _08006AC8 @ =0x083D8064
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_08006AC8: .4byte 0x083D8064

	thumb_func_start sub_08006ACC
sub_08006ACC: @ 0x08006ACC
	ldr r1, _08006AD4 @ =0x083D8064
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_08006AD4: .4byte 0x083D8064

	thumb_func_start sub_08006AD8
sub_08006AD8: @ 0x08006AD8
	push {r4, lr}
	lsls r4, r1, #1
	adds r4, r4, r1
	adds r0, r0, r4
	lsls r0, r0, #1
	ldr r4, _08006B00 @ =0x083D8120
	adds r1, r0, r4
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, #1
	adds r0, r0, r4
	ldrb r0, [r0]
	adds r1, #0x78
	str r1, [r2]
	str r0, [r3]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08006B00: .4byte 0x083D8120

	thumb_func_start sub_08006B04
sub_08006B04: @ 0x08006B04
	push {r4, lr}
	lsls r4, r1, #1
	adds r4, r4, r1
	adds r0, r0, r4
	lsls r0, r0, #1
	ldr r4, _08006B2C @ =0x083D82B0
	adds r1, r0, r4
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, #1
	adds r0, r0, r4
	ldrb r0, [r0]
	adds r1, #0x78
	str r1, [r2]
	str r0, [r3]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08006B2C: .4byte 0x083D82B0

	thumb_func_start sub_08006B30
sub_08006B30: @ 0x08006B30
	push {r4, r5, lr}
	movs r4, #0
	lsls r3, r2, #1
	adds r3, r3, r2
	adds r3, #3
	lsls r3, r3, #3
	movs r2, #0xff
	ands r3, r2
	movs r5, #0x80
	lsls r5, r5, #6
	adds r2, r5, #0
	orrs r3, r2
	strh r3, [r0]
	ldr r3, _08006B64 @ =0x000001FF
	adds r2, r3, #0
	ands r1, r2
	movs r5, #0x80
	lsls r5, r5, #7
	adds r2, r5, #0
	orrs r1, r2
	strh r1, [r0, #2]
	strh r4, [r0, #4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08006B64: .4byte 0x000001FF

	thumb_func_start sub_08006B68
sub_08006B68: @ 0x08006B68
	push {lr}
	movs r0, #0xe0
	lsls r0, r0, #0x13
	movs r1, #4
	bl sub_08000FEC
	pop {r0}
	bx r0

	thumb_func_start sub_08006B78
sub_08006B78: @ 0x08006B78
	push {r4, lr}
	ldr r2, _08006B9C @ =0x083F86F4
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	adds r1, r1, r2
	ldrh r3, [r1]
	ldr r4, _08006BA0 @ =0x00000619
	adds r2, r0, r4
	strb r3, [r2]
	ldr r2, _08006BA4 @ =0x0000061C
	adds r0, r0, r2
	adds r1, #8
	str r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08006B9C: .4byte 0x083F86F4
_08006BA0: .4byte 0x00000619
_08006BA4: .4byte 0x0000061C

	thumb_func_start sub_08006BA8
sub_08006BA8: @ 0x08006BA8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08006BD8 @ =0x083F86F4
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r1, r1, r0
	lsls r2, r2, #1
	adds r2, r2, r1
	ldrh r0, [r2, #2]
	adds r0, r0, r1
	movs r2, #0xc5
	lsls r2, r2, #3
	adds r1, r4, r2
	ldr r1, [r1]
	bl sub_0803D35C
	ldr r0, _08006BDC @ =0x0000062C
	adds r4, r4, r0
	movs r0, #1
	strb r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08006BD8: .4byte 0x083F86F4
_08006BDC: .4byte 0x0000062C

	thumb_func_start sub_08006BE0
sub_08006BE0: @ 0x08006BE0
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _08006C14 @ =0x0000062C
	adds r5, r4, r0
	ldrb r0, [r5]
	cmp r0, #1
	bne _08006C24
	ldr r1, _08006C18 @ =0x0000061C
	adds r0, r4, r1
	ldr r1, [r0]
	ldr r0, _08006C1C @ =0x05000240
	movs r2, #0xc0
	bl sub_08000314
	movs r1, #0xc5
	lsls r1, r1, #3
	adds r0, r4, r1
	ldr r1, [r0]
	ldr r0, _08006C20 @ =0x06010D00
	movs r2, #0x90
	lsls r2, r2, #7
	bl sub_08000314
	movs r0, #0
	strb r0, [r5]
	b _08006C3E
	.align 2, 0
_08006C14: .4byte 0x0000062C
_08006C18: .4byte 0x0000061C
_08006C1C: .4byte 0x05000240
_08006C20: .4byte 0x06010D00
_08006C24:
	ldr r0, _08006C44 @ =0x00000636
	adds r5, r4, r0
	ldr r1, _08006C48 @ =0x00000635
	adds r4, r4, r1
	ldrb r0, [r5]
	ldrb r1, [r4]
	cmp r0, r1
	beq _08006C3E
	movs r1, #0
	bl sub_08007264
	ldrb r0, [r5]
	strb r0, [r4]
_08006C3E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08006C44: .4byte 0x00000636
_08006C48: .4byte 0x00000635

	thumb_func_start sub_08006C4C
sub_08006C4C: @ 0x08006C4C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08006BA8
	bl sub_0803D380
	adds r0, r4, #0
	bl sub_08006BE0
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08006C64
sub_08006C64: @ 0x08006C64
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	adds r6, r1, #0
	mov r8, r2
	ldr r1, _08006CC0 @ =0x0849CE78
	lsls r0, r6, #2
	adds r0, r0, r1
	ldr r0, [r0]
	adds r5, r0, r1
	movs r1, #0xc6
	lsls r1, r1, #3
	adds r0, r4, r1
	ldr r7, [r0]
	ldr r1, _08006CC4 @ =0x05000380
	ldr r2, _08006CC8 @ =0x04000010
	adds r0, r5, #0
	bl sub_0803D348
	adds r5, #0x40
	ldr r0, _08006CCC @ =0x00000634
	adds r4, r4, r0
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r6, r0
	beq _08006CA4
	strb r6, [r4]
	adds r0, r5, #0
	adds r1, r7, #0
	bl sub_0803D35C
_08006CA4:
	movs r2, #0x90
	lsls r2, r2, #4
	mov r0, r8
	muls r0, r2, r0
	adds r5, r7, r0
	ldr r0, _08006CD0 @ =0x06017300
	adds r1, r5, #0
	bl sub_08000314
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08006CC0: .4byte 0x0849CE78
_08006CC4: .4byte 0x05000380
_08006CC8: .4byte 0x04000010
_08006CCC: .4byte 0x00000634
_08006CD0: .4byte 0x06017300

	thumb_func_start sub_08006CD4
sub_08006CD4: @ 0x08006CD4
	push {r4, lr}
	ldr r1, _08006CFC @ =0x08486E54
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r4, [r0]
	adds r4, r4, r1
	ldr r1, _08006D00 @ =0x05000300
	ldr r2, _08006D04 @ =0x04000010
	adds r0, r4, #0
	bl sub_0803D348
	adds r4, #0x40
	ldr r1, _08006D08 @ =0x06015500
	adds r0, r4, #0
	bl sub_0803D358
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08006CFC: .4byte 0x08486E54
_08006D00: .4byte 0x05000300
_08006D04: .4byte 0x04000010
_08006D08: .4byte 0x06015500

	thumb_func_start sub_08006D0C
sub_08006D0C: @ 0x08006D0C
	push {r4, lr}
	ldr r1, _08006D34 @ =0x084912AC
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r4, [r0]
	adds r4, r4, r1
	ldr r1, _08006D38 @ =0x05000340
	ldr r2, _08006D3C @ =0x04000010
	adds r0, r4, #0
	bl sub_0803D348
	adds r4, #0x40
	ldr r1, _08006D40 @ =0x06016400
	adds r0, r4, #0
	bl sub_0803D358
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08006D34: .4byte 0x084912AC
_08006D38: .4byte 0x05000340
_08006D3C: .4byte 0x04000010
_08006D40: .4byte 0x06016400

	thumb_func_start sub_08006D44
sub_08006D44: @ 0x08006D44
	push {r4, lr}
	ldr r1, _08006D6C @ =0x084B51A4
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r4, [r0]
	adds r4, r4, r1
	ldr r1, _08006D70 @ =0x050003C0
	ldr r2, _08006D74 @ =0x04000010
	adds r0, r4, #0
	bl sub_0803D348
	adds r4, #0x40
	ldr r1, _08006D78 @ =0x06017C00
	adds r0, r4, #0
	bl sub_0803D358
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08006D6C: .4byte 0x084B51A4
_08006D70: .4byte 0x050003C0
_08006D74: .4byte 0x04000010
_08006D78: .4byte 0x06017C00

	thumb_func_start sub_08006D7C
sub_08006D7C: @ 0x08006D7C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r4, [r0]
	movs r7, #0xff
	adds r5, r2, #0
	ands r5, r7
	movs r3, #0x80
	lsls r3, r3, #6
	orrs r5, r3
	strh r5, [r4]
	mov r8, r1
	mov r6, r8
	ldr r3, _08006E74 @ =0x000001FF
	ands r6, r3
	mov r8, r6
	ldr r6, _08006E78 @ =0xFFFFC000
	mov ip, r6
	mov sl, r8
	mov r3, sl
	mov r6, ip
	orrs r3, r6
	mov sl, r3
	strh r3, [r4, #2]
	ldr r3, _08006E7C @ =0x00000868
	strh r3, [r4, #4]
	adds r4, #8
	movs r3, #0x40
	adds r3, r3, r1
	strh r5, [r4]
	ldr r5, _08006E74 @ =0x000001FF
	ands r3, r5
	mov sb, r3
	mov r6, sb
	mov r3, ip
	orrs r6, r3
	strh r6, [r4, #2]
	ldr r3, _08006E80 @ =0x000008E8
	strh r3, [r4, #4]
	adds r4, #8
	adds r5, r2, #0
	adds r5, #0x40
	ands r5, r7
	movs r3, #0x80
	lsls r3, r3, #6
	orrs r5, r3
	strh r5, [r4]
	mov r3, sl
	strh r3, [r4, #2]
	ldr r3, _08006E84 @ =0x00000968
	strh r3, [r4, #4]
	adds r4, #8
	strh r5, [r4]
	strh r6, [r4, #2]
	movs r5, #0x80
	lsls r5, r5, #4
	mov sl, r5
	adds r3, #0x80
	strh r3, [r4, #4]
	adds r4, #8
	movs r5, #0x9a
	lsls r5, r5, #1
	adds r2, #0x80
	ands r2, r7
	movs r6, #0xc0
	lsls r6, r6, #7
	adds r3, r6, #0
	orrs r2, r3
	strh r2, [r4]
	ldr r7, _08006E88 @ =0xFFFF8000
	adds r6, r7, #0
	mov r3, r8
	orrs r3, r6
	strh r3, [r4, #2]
	lsls r3, r5, #1
	mov r7, sl
	orrs r3, r7
	strh r3, [r4, #4]
	adds r4, #8
	adds r5, #8
	adds r3, r1, #0
	adds r3, #0x20
	strh r2, [r4]
	ldr r7, _08006E74 @ =0x000001FF
	ands r3, r7
	orrs r3, r6
	strh r3, [r4, #2]
	lsls r3, r5, #1
	mov r7, sl
	orrs r3, r7
	strh r3, [r4, #4]
	adds r4, #8
	adds r5, #8
	strh r2, [r4]
	mov r3, sb
	orrs r3, r6
	strh r3, [r4, #2]
	lsls r3, r5, #1
	orrs r3, r7
	strh r3, [r4, #4]
	adds r4, #8
	adds r5, #8
	adds r1, #0x60
	strh r2, [r4]
	ldr r2, _08006E74 @ =0x000001FF
	ands r1, r2
	orrs r1, r6
	strh r1, [r4, #2]
	lsls r5, r5, #1
	mov r3, sl
	orrs r5, r3
	strh r5, [r4, #4]
	adds r4, #8
	str r4, [r0]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08006E74: .4byte 0x000001FF
_08006E78: .4byte 0xFFFFC000
_08006E7C: .4byte 0x00000868
_08006E80: .4byte 0x000008E8
_08006E84: .4byte 0x00000968
_08006E88: .4byte 0xFFFF8000

	thumb_func_start sub_08006E8C
sub_08006E8C: @ 0x08006E8C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r5, [r0]
	movs r6, #0xaa
	lsls r6, r6, #1
	adds r4, r2, #0
	movs r3, #0xff
	ands r4, r3
	adds r3, r4, #0
	movs r7, #0x80
	lsls r7, r7, #6
	orrs r3, r7
	strh r3, [r5]
	ldr r3, _08006F88 @ =0x000001FF
	mov sb, r3
	mov r8, r1
	mov r7, r8
	mov r3, sb
	ands r7, r3
	mov r8, r7
	ldr r7, _08006F8C @ =0xFFFF8000
	mov ip, r7
	mov r3, r8
	mov r7, ip
	orrs r3, r7
	mov r8, r3
	strh r3, [r5, #2]
	lsls r3, r6, #1
	movs r7, #0x80
	lsls r7, r7, #4
	orrs r3, r7
	strh r3, [r5, #4]
	adds r5, #8
	adds r6, #0x10
	adds r1, #0x20
	ldr r3, _08006F90 @ =0xFFFFA000
	mov sl, r3
	mov r7, sl
	orrs r4, r7
	strh r4, [r5]
	mov r3, sb
	ands r1, r3
	mov sb, r1
	mov r4, sb
	mov r7, ip
	orrs r4, r7
	mov sb, r4
	strh r4, [r5, #2]
	lsls r3, r6, #1
	movs r4, #0x80
	lsls r4, r4, #4
	orrs r3, r4
	strh r3, [r5, #4]
	adds r5, #8
	adds r6, #8
	adds r4, r2, #0
	adds r4, #0x20
	movs r7, #0xff
	ands r4, r7
	adds r3, r4, #0
	movs r7, #0x80
	lsls r7, r7, #6
	orrs r3, r7
	strh r3, [r5]
	mov r3, r8
	strh r3, [r5, #2]
	lsls r3, r6, #1
	movs r7, #0x80
	lsls r7, r7, #4
	orrs r3, r7
	strh r3, [r5, #4]
	adds r5, #8
	adds r6, #0x10
	mov r3, sl
	orrs r4, r3
	strh r4, [r5]
	mov r4, sb
	strh r4, [r5, #2]
	lsls r3, r6, #1
	orrs r3, r7
	strh r3, [r5, #4]
	adds r5, #8
	adds r6, #8
	adds r2, #0x40
	movs r3, #0xff
	ands r2, r3
	movs r7, #0xc0
	lsls r7, r7, #7
	adds r4, r7, #0
	adds r3, r2, #0
	orrs r3, r4
	strh r3, [r5]
	mov r3, r8
	strh r3, [r5, #2]
	lsls r3, r6, #1
	movs r4, #0x80
	lsls r4, r4, #4
	orrs r3, r4
	strh r3, [r5, #4]
	adds r5, #8
	adds r6, #8
	movs r7, #0x80
	lsls r7, r7, #6
	orrs r2, r7
	strh r2, [r5]
	movs r3, #0x80
	lsls r3, r3, #7
	adds r2, r3, #0
	orrs r1, r2
	strh r1, [r5, #2]
	lsls r6, r6, #1
	orrs r6, r4
	strh r6, [r5, #4]
	adds r5, #8
	str r5, [r0]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08006F88: .4byte 0x000001FF
_08006F8C: .4byte 0xFFFF8000
_08006F90: .4byte 0xFFFFA000

	thumb_func_start sub_08006F94
sub_08006F94: @ 0x08006F94
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r5, [r0]
	movs r6, #0xc8
	lsls r6, r6, #1
	adds r4, r2, #0
	movs r3, #0xff
	ands r4, r3
	adds r3, r4, #0
	movs r7, #0x80
	lsls r7, r7, #6
	orrs r3, r7
	strh r3, [r5]
	ldr r3, _08007090 @ =0x000001FF
	mov sb, r3
	mov r8, r1
	mov r7, r8
	mov r3, sb
	ands r7, r3
	mov r8, r7
	ldr r7, _08007094 @ =0xFFFF8000
	mov ip, r7
	mov r3, r8
	mov r7, ip
	orrs r3, r7
	mov r8, r3
	strh r3, [r5, #2]
	lsls r3, r6, #1
	movs r7, #0x80
	lsls r7, r7, #4
	orrs r3, r7
	strh r3, [r5, #4]
	adds r5, #8
	adds r6, #0x10
	adds r1, #0x20
	ldr r3, _08007098 @ =0xFFFFA000
	mov sl, r3
	mov r7, sl
	orrs r4, r7
	strh r4, [r5]
	mov r3, sb
	ands r1, r3
	mov sb, r1
	mov r4, sb
	mov r7, ip
	orrs r4, r7
	mov sb, r4
	strh r4, [r5, #2]
	lsls r3, r6, #1
	movs r4, #0x80
	lsls r4, r4, #4
	orrs r3, r4
	strh r3, [r5, #4]
	adds r5, #8
	adds r6, #8
	adds r4, r2, #0
	adds r4, #0x20
	movs r7, #0xff
	ands r4, r7
	adds r3, r4, #0
	movs r7, #0x80
	lsls r7, r7, #6
	orrs r3, r7
	strh r3, [r5]
	mov r3, r8
	strh r3, [r5, #2]
	lsls r3, r6, #1
	movs r7, #0x80
	lsls r7, r7, #4
	orrs r3, r7
	strh r3, [r5, #4]
	adds r5, #8
	adds r6, #0x10
	mov r3, sl
	orrs r4, r3
	strh r4, [r5]
	mov r4, sb
	strh r4, [r5, #2]
	lsls r3, r6, #1
	orrs r3, r7
	strh r3, [r5, #4]
	adds r5, #8
	adds r6, #8
	adds r2, #0x40
	movs r3, #0xff
	ands r2, r3
	movs r7, #0xc0
	lsls r7, r7, #7
	adds r4, r7, #0
	adds r3, r2, #0
	orrs r3, r4
	strh r3, [r5]
	mov r3, r8
	strh r3, [r5, #2]
	lsls r3, r6, #1
	movs r4, #0x80
	lsls r4, r4, #4
	orrs r3, r4
	strh r3, [r5, #4]
	adds r5, #8
	adds r6, #8
	movs r7, #0x80
	lsls r7, r7, #6
	orrs r2, r7
	strh r2, [r5]
	movs r3, #0x80
	lsls r3, r3, #7
	adds r2, r3, #0
	orrs r1, r2
	strh r1, [r5, #2]
	lsls r6, r6, #1
	orrs r6, r4
	strh r6, [r5, #4]
	adds r5, #8
	str r5, [r0]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08007090: .4byte 0x000001FF
_08007094: .4byte 0xFFFF8000
_08007098: .4byte 0xFFFFA000

	thumb_func_start sub_0800709C
sub_0800709C: @ 0x0800709C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r4, [r0]
	movs r6, #0xe6
	lsls r6, r6, #1
	adds r5, r2, #0
	movs r3, #0xff
	ands r5, r3
	adds r3, r5, #0
	movs r7, #0x80
	lsls r7, r7, #6
	orrs r3, r7
	strh r3, [r4]
	ldr r3, _08007158 @ =0x000001FF
	mov ip, r3
	mov r8, r1
	mov r7, r8
	mov r3, ip
	ands r7, r3
	mov r8, r7
	ldr r7, _0800715C @ =0xFFFF8000
	mov sl, r7
	mov r3, r8
	mov r7, sl
	orrs r3, r7
	mov r8, r3
	strh r3, [r4, #2]
	lsls r3, r6, #1
	movs r7, #0x80
	lsls r7, r7, #4
	mov sb, r7
	mov r7, sb
	orrs r3, r7
	strh r3, [r4, #4]
	adds r4, #8
	adds r6, #0x10
	adds r1, #0x20
	ldr r7, _08007160 @ =0xFFFFA000
	adds r3, r7, #0
	orrs r5, r3
	strh r5, [r4]
	mov r3, ip
	ands r1, r3
	adds r3, r1, #0
	mov r5, sl
	orrs r3, r5
	strh r3, [r4, #2]
	lsls r3, r6, #1
	mov r7, sb
	orrs r3, r7
	strh r3, [r4, #4]
	adds r4, #8
	adds r6, #8
	adds r2, #0x20
	movs r3, #0xff
	ands r2, r3
	movs r7, #0xc0
	lsls r7, r7, #7
	adds r5, r7, #0
	adds r3, r2, #0
	orrs r3, r5
	strh r3, [r4]
	mov r3, r8
	strh r3, [r4, #2]
	lsls r3, r6, #1
	mov r5, sb
	orrs r3, r5
	strh r3, [r4, #4]
	adds r4, #8
	adds r6, #8
	movs r7, #0x80
	lsls r7, r7, #6
	orrs r2, r7
	strh r2, [r4]
	movs r3, #0x80
	lsls r3, r3, #7
	adds r2, r3, #0
	orrs r1, r2
	strh r1, [r4, #2]
	lsls r6, r6, #1
	orrs r6, r5
	strh r6, [r4, #4]
	adds r4, #8
	str r4, [r0]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08007158: .4byte 0x000001FF
_0800715C: .4byte 0xFFFF8000
_08007160: .4byte 0xFFFFA000

	thumb_func_start sub_08007164
sub_08007164: @ 0x08007164
	push {r4, r5, lr}
	ldr r4, [r0]
	movs r3, #0xff
	ands r2, r3
	movs r5, #0x80
	lsls r5, r5, #6
	adds r3, r5, #0
	orrs r2, r3
	strh r2, [r4]
	ldr r3, _08007194 @ =0x000001FF
	adds r2, r3, #0
	ands r1, r2
	ldr r5, _08007198 @ =0xFFFF8000
	adds r2, r5, #0
	orrs r1, r2
	strh r1, [r4, #2]
	movs r1, #0xbe
	lsls r1, r1, #4
	strh r1, [r4, #4]
	adds r4, #8
	str r4, [r0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08007194: .4byte 0x000001FF
_08007198: .4byte 0xFFFF8000

	thumb_func_start sub_0800719C
sub_0800719C: @ 0x0800719C
	push {lr}
	bl sub_08006AD8
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080071A8
sub_080071A8: @ 0x080071A8
	push {lr}
	bl sub_08006B04
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080071B4
sub_080071B4: @ 0x080071B4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	movs r6, #0
	movs r1, #0
_080071C0:
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #7
	ldr r2, _0800721C @ =0x060003C0
	adds r4, r0, r2
	movs r5, #0
	adds r7, r1, #1
_080071CE:
	ldr r0, _08007220 @ =0x083DB0DC
	adds r0, r6, r0
	ldrb r1, [r0]
	adds r6, #1
	lsls r1, r1, #5
	ldr r0, _08007224 @ =0x083DAB7C
	adds r1, r1, r0
	adds r0, r4, #0
	movs r2, #0xa0
	bl sub_08000EE0
	adds r4, #0x40
	adds r5, #1
	cmp r5, #0xe
	bls _080071CE
	adds r1, r7, #0
	cmp r1, #0x11
	bls _080071C0
	mov r0, r8
	cmp r0, #0
	beq _08007210
	ldr r0, _08007228 @ =0x05000140
	ldr r2, _0800722C @ =0x000003FF
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r2, [r0]
	adds r0, #2
	strh r2, [r0]
	adds r0, #2
	strh r2, [r0]
	adds r0, #2
	strh r2, [r0]
_08007210:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800721C: .4byte 0x060003C0
_08007220: .4byte 0x083DB0DC
_08007224: .4byte 0x083DAB7C
_08007228: .4byte 0x05000140
_0800722C: .4byte 0x000003FF

	thumb_func_start sub_08007230
sub_08007230: @ 0x08007230
	push {r4, r5, r6, lr}
	sub sp, #4
	movs r5, #0
	ldr r4, _0800725C @ =0x060003C0
	movs r6, #0
_0800723A:
	str r6, [sp]
	mov r0, sp
	adds r1, r4, #0
	ldr r2, _08007260 @ =0x050000F0
	bl sub_0803D348
	movs r0, #0xf0
	lsls r0, r0, #3
	adds r4, r4, r0
	adds r5, #1
	cmp r5, #0x11
	bls _0800723A
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800725C: .4byte 0x060003C0
_08007260: .4byte 0x050000F0

	thumb_func_start sub_08007264
sub_08007264: @ 0x08007264
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0xc
	mov r8, r0
	adds r4, r1, #0
	cmp r0, #2
	bne _08007284
	ldr r5, _08007280 @ =0x05000120
	movs r0, #0
	strh r0, [r5]
	b _08007298
	.align 2, 0
_08007280: .4byte 0x05000120
_08007284:
	ldr r6, _080072F4 @ =0x083D8C04
	mov r0, r8
	cmp r0, #1
	bne _0800728E
	ldr r6, _080072F8 @ =0x083D9AC0
_0800728E:
	ldr r1, _080072FC @ =0x05000120
	ldr r2, _08007300 @ =0x04000008
	adds r0, r6, #0
	bl sub_0803D348
_08007298:
	cmp r4, #0
	beq _080072CC
	ldr r5, _08007304 @ =0x0600F000
	movs r4, #0
	add r0, sp, #4
	mov sb, r0
	mov r6, sp
	ldr r0, _08007308 @ =0x000003FF
	adds r7, r0, #0
_080072AA:
	strh r7, [r6]
	mov r0, sp
	adds r1, r5, #0
	ldr r2, _0800730C @ =0x0100000F
	bl sub_0803D348
	adds r5, #0x40
	adds r4, #1
	cmp r4, #0x11
	bls _080072AA
	ldr r0, _08007310 @ =0x03FF03FF
	str r0, [sp, #4]
	ldr r2, _08007314 @ =0x0500001E
	mov r0, sb
	adds r1, r5, #0
	bl sub_0803D348
_080072CC:
	mov r0, r8
	cmp r0, #2
	bne _0800731C
	ldr r5, _08007318 @ =0x0600F01E
	movs r7, #0x96
	lsls r7, r7, #2
	movs r4, #0
	add r6, sp, #8
_080072DC:
	strh r7, [r6]
	adds r0, r6, #0
	adds r1, r5, #0
	ldr r2, _0800730C @ =0x0100000F
	bl sub_0803D348
	adds r5, #0x40
	adds r4, #1
	cmp r4, #0x11
	bls _080072DC
	b _0800733E
	.align 2, 0
_080072F4: .4byte 0x083D8C04
_080072F8: .4byte 0x083D9AC0
_080072FC: .4byte 0x05000120
_08007300: .4byte 0x04000008
_08007304: .4byte 0x0600F000
_08007308: .4byte 0x000003FF
_0800730C: .4byte 0x0100000F
_08007310: .4byte 0x03FF03FF
_08007314: .4byte 0x0500001E
_08007318: .4byte 0x0600F01E
_0800731C:
	ldr r6, _08007354 @ =0x083D98A4
	mov r0, r8
	cmp r0, #1
	bne _08007326
	ldr r6, _08007358 @ =0x083DA960
_08007326:
	ldr r5, _0800735C @ =0x0600F01E
	movs r4, #0
_0800732A:
	adds r0, r6, #0
	adds r1, r5, #0
	movs r2, #0xf
	bl sub_0803D348
	adds r6, #0x1e
	adds r5, #0x40
	adds r4, #1
	cmp r4, #0x11
	bls _0800732A
_0800733E:
	mov r0, r8
	cmp r0, #2
	bne _08007368
	ldr r5, _08007360 @ =0x06009600
	ldr r7, _08007364 @ =0x90909090
	adds r0, r5, #0
	movs r1, #0x40
	adds r2, r7, #0
	bl sub_08000498
	b _0800738C
	.align 2, 0
_08007354: .4byte 0x083D98A4
_08007358: .4byte 0x083DA960
_0800735C: .4byte 0x0600F01E
_08007360: .4byte 0x06009600
_08007364: .4byte 0x90909090
_08007368:
	mov r0, r8
	cmp r0, #0
	beq _08007378
	ldr r6, _08007374 @ =0x083D9AE0
	movs r2, #0x3a
	b _0800737C
	.align 2, 0
_08007374: .4byte 0x083D9AE0
_08007378:
	ldr r6, _0800739C @ =0x083D8C24
	movs r2, #0x32
_0800737C:
	ldr r1, _080073A0 @ =0x06009600
	lsls r2, r2, #4
	movs r0, #0x80
	lsls r0, r0, #0x13
	orrs r2, r0
	adds r0, r6, #0
	bl sub_0803D348
_0800738C:
	add sp, #0xc
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800739C: .4byte 0x083D8C24
_080073A0: .4byte 0x06009600

	thumb_func_start sub_080073A4
sub_080073A4: @ 0x080073A4
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r4, r2, #0
	lsls r2, r0, #1
	adds r2, r2, r0
	adds r7, r2, #3
	ldr r5, _080073C8 @ =0x030013D0
	bl sub_08006A7C
	adds r6, r0, #0
	cmp r4, #0
	beq _080073CC
	adds r0, r5, #0
	movs r1, #0
	movs r2, #3
	bl sub_08004CF0
	b _080073D6
	.align 2, 0
_080073C8: .4byte 0x030013D0
_080073CC:
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	bl sub_08004CF0
_080073D6:
	movs r0, #0xb
	str r0, [sp]
	adds r0, r5, #0
	movs r1, #2
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_08004E6C
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080073F0
sub_080073F0: @ 0x080073F0
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
_080073F6:
	movs r2, #0
	ldrb r0, [r5]
	cmp r4, r0
	bne _08007400
	movs r2, #1
_08007400:
	ldr r1, _0800743C @ =0x0000060C
	adds r0, r5, r1
	adds r0, r0, r4
	ldrb r1, [r0]
	adds r0, r4, #0
	bl sub_080073A4
	adds r4, #1
	cmp r4, #4
	bls _080073F6
	ldr r1, _0800743C @ =0x0000060C
	adds r0, r5, r1
	ldrb r1, [r0]
	adds r0, r5, #0
	bl sub_08006B78
	ldr r1, _08007440 @ =0x00000604
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08007430
	ldrb r0, [r5, #9]
	cmp r0, #0
	beq _08007448
_08007430:
	ldr r1, _08007444 @ =0x00000619
	adds r0, r5, r1
	ldrb r0, [r0]
	subs r2, r0, #1
	b _0800744A
	.align 2, 0
_0800743C: .4byte 0x0000060C
_08007440: .4byte 0x00000604
_08007444: .4byte 0x00000619
_08007448:
	movs r2, #0
_0800744A:
	ldr r1, _08007490 @ =0x0000060C
	adds r0, r5, r1
	ldrb r1, [r0]
	adds r0, r5, #0
	bl sub_08006BA8
	adds r0, r5, #0
	bl sub_08006BE0
	ldr r1, _08007494 @ =0x0000060D
	adds r0, r5, r1
	ldrb r0, [r0]
	bl sub_08006CD4
	ldr r1, _08007498 @ =0x0000060E
	adds r0, r5, r1
	ldrb r0, [r0]
	bl sub_08006D0C
	ldr r1, _0800749C @ =0x0000060F
	adds r0, r5, r1
	ldrb r1, [r0]
	adds r0, r5, #0
	movs r2, #0
	bl sub_08006C64
	movs r1, #0xc2
	lsls r1, r1, #3
	adds r0, r5, r1
	ldrb r0, [r0]
	bl sub_08006D44
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08007490: .4byte 0x0000060C
_08007494: .4byte 0x0000060D
_08007498: .4byte 0x0000060E
_0800749C: .4byte 0x0000060F

	thumb_func_start sub_080074A0
sub_080074A0: @ 0x080074A0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov r8, r0
	bl sub_0803D380
	bl sub_0800A110
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r1, [r2]
	ldr r0, _08007558 @ =0xFFFF9FFF
	ands r0, r1
	movs r1, #0xc0
	lsls r1, r1, #7
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _0800755C @ =0x04000048
	ldr r2, _08007560 @ =0x00001211
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	movs r0, #0
	strh r0, [r1]
	movs r6, #0x78
	ldr r0, _08007564 @ =0x04000010
	mov sl, r0
	ldr r1, _08007568 @ =0x000001FF
	adds r7, r1, #0
	ldr r2, _0800756C @ =0x04000014
	mov sb, r2
_080074E4:
	movs r0, #0xf
	subs r6, r6, r0
	movs r4, #0x78
	subs r4, r4, r6
	adds r0, r6, #0
	ands r0, r7
	mov r1, sl
	strh r0, [r1]
	rsbs r5, r6, #0
	adds r0, r5, #0
	ands r0, r7
	mov r2, sb
	strh r0, [r2]
	movs r0, #0
	movs r1, #0
	adds r2, r4, #0
	movs r3, #0x90
	bl sub_08000E98
	adds r0, r6, #0
	adds r0, #0x78
	movs r1, #0
	adds r2, r4, #0
	movs r3, #0x90
	bl sub_08000EBC
	add r0, sp, #4
	ldr r1, _08007570 @ =0x0830E99F
	movs r2, #3
	bl sub_0803DEBC
	str r6, [sp]
	mov r0, r8
	movs r1, #1
	add r2, sp, #4
	adds r3, r5, #0
	bl sub_08007794
	bl sub_0803D380
	cmp r6, #0
	bne _080074E4
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r1, [r2]
	ldr r0, _08007558 @ =0xFFFF9FFF
	ands r0, r1
	strh r0, [r2]
	bl sub_0803D380
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08007558: .4byte 0xFFFF9FFF
_0800755C: .4byte 0x04000048
_08007560: .4byte 0x00001211
_08007564: .4byte 0x04000010
_08007568: .4byte 0x000001FF
_0800756C: .4byte 0x04000014
_08007570: .4byte 0x0830E99F

	thumb_func_start sub_08007574
sub_08007574: @ 0x08007574
	push {r4, r5, lr}
	sub sp, #0xc
	adds r5, r1, #0
	adds r4, r2, #0
	ldr r1, _080075B4 @ =0x00000614
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x18
	bl sub_0803D350
	adds r1, r0, #0
	cmp r5, #0
	beq _080075C6
	cmp r4, #0
	beq _080075BC
	ldr r0, _080075B8 @ =0x083E2564
	adds r0, r1, r0
	ldrb r0, [r0]
	movs r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	lsls r0, r0, #1
	str r0, [sp, #8]
	movs r0, #0xff
	movs r1, #0xff
	movs r2, #0
	movs r3, #0
	bl sub_08000D04
	adds r1, r0, #0
	b _080075BE
	.align 2, 0
_080075B4: .4byte 0x00000614
_080075B8: .4byte 0x083E2564
_080075BC:
	ldr r1, _080075D0 @ =0x000003FF
_080075BE:
	lsls r0, r5, #1
	ldr r2, _080075D4 @ =0x05000140
	adds r0, r0, r2
	strh r1, [r0]
_080075C6:
	add sp, #0xc
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080075D0: .4byte 0x000003FF
_080075D4: .4byte 0x05000140

	thumb_func_start sub_080075D8
sub_080075D8: @ 0x080075D8
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	adds r6, r0, #0
	mov r8, r1
	adds r5, r2, #0
	movs r0, #0
	mov sb, r0
	strb r5, [r6]
	movs r0, #0x50
	bl sub_080005D8
	ldr r1, _0800763C @ =0x0000060C
	adds r4, r6, r1
	mov r1, r8
	adds r0, r4, r1
	ldrb r1, [r0]
	mov r0, r8
	movs r2, #0
	bl sub_080073A4
	adds r4, r4, r5
	ldrb r1, [r4]
	adds r0, r5, #0
	movs r2, #1
	bl sub_080073A4
	adds r0, r6, #0
	mov r1, r8
	movs r2, #0
	bl sub_08007574
	ldr r1, _08007640 @ =0x00000621
	adds r0, r6, r1
	mov r1, sb
	strb r1, [r0]
	ldr r1, _08007644 @ =0x0000060F
	adds r0, r6, r1
	ldrb r1, [r0]
	adds r0, r6, #0
	movs r2, #0
	bl sub_08006C64
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800763C: .4byte 0x0000060C
_08007640: .4byte 0x00000621
_08007644: .4byte 0x0000060F

	thumb_func_start sub_08007648
sub_08007648: @ 0x08007648
	push {lr}
	ldrb r3, [r0]
	adds r2, r3, r1
	cmp r2, #0
	bge _08007654
	movs r2, #0
_08007654:
	cmp r2, #4
	ble _0800765A
	movs r2, #4
_0800765A:
	cmp r3, r2
	beq _08007664
	adds r1, r3, #0
	bl sub_080075D8
_08007664:
	pop {r0}
	bx r0

	thumb_func_start sub_08007668
sub_08007668: @ 0x08007668
	push {r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r5, r0, #0
	adds r7, r1, #0
	adds r4, r3, #0
	adds r0, r5, #1
	adds r0, r0, r7
	strb r2, [r0]
	adds r0, r5, #0
	bl sub_08008CA8
	adds r6, r0, #0
	ldr r1, _080076C4 @ =0x0000060C
	adds r0, r5, r1
	adds r0, r0, r7
	strb r6, [r0]
	cmp r4, #0
	beq _0800769E
	movs r2, #0
	ldrb r0, [r5]
	cmp r7, r0
	bne _08007696
	movs r2, #1
_08007696:
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_080073A4
_0800769E:
	ldr r0, [sp, #0x2c]
	cmp r0, #0
	beq _08007786
	cmp r7, #0
	bne _080076EC
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_08006B78
	ldr r1, _080076C8 @ =0x00000612
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _080076D0
	ldr r2, _080076CC @ =0x00000619
	adds r0, r5, r2
	ldrb r0, [r0]
	subs r4, r0, #1
	b _080076D2
	.align 2, 0
_080076C4: .4byte 0x0000060C
_080076C8: .4byte 0x00000612
_080076CC: .4byte 0x00000619
_080076D0:
	movs r4, #0
_080076D2:
	adds r0, r6, #0
	bl sub_08006AC0
	movs r2, #0xc4
	lsls r2, r2, #3
	adds r1, r5, r2
	strb r0, [r1]
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl sub_08006BA8
	b _08007776
_080076EC:
	cmp r7, #1
	bne _0800771E
	adds r0, r6, #0
	bl sub_08006CD4
	movs r1, #0xc7
	lsls r1, r1, #3
	adds r0, r5, r1
	ldr r0, [r0]
	str r0, [sp, #8]
	movs r2, #0xc4
	lsls r2, r2, #3
	adds r0, r5, r2
	ldrb r0, [r0]
	add r3, sp, #4
	adds r1, r6, #0
	mov r2, sp
	bl sub_0800719C
	add r0, sp, #8
	ldr r1, [sp]
	ldr r2, [sp, #4]
	bl sub_08006E8C
	b _08007776
_0800771E:
	cmp r7, #2
	bne _08007754
	adds r0, r6, #0
	bl sub_08006D0C
	ldr r1, _08007750 @ =0x0000063C
	adds r0, r5, r1
	ldr r0, [r0]
	str r0, [sp, #0x14]
	movs r2, #0xc4
	lsls r2, r2, #3
	adds r0, r5, r2
	ldrb r0, [r0]
	add r2, sp, #0xc
	add r3, sp, #0x10
	adds r1, r6, #0
	bl sub_080071A8
	add r0, sp, #0x14
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	bl sub_08006F94
	b _08007776
	.align 2, 0
_08007750: .4byte 0x0000063C
_08007754:
	cmp r7, #3
	bne _08007770
	ldr r0, _0800776C @ =0x00000621
	adds r1, r5, r0
	movs r0, #0
	strb r0, [r1]
	adds r0, r5, #0
	adds r1, r6, #0
	movs r2, #0
	bl sub_08006C64
	b _08007776
	.align 2, 0
_0800776C: .4byte 0x00000621
_08007770:
	adds r0, r6, #0
	bl sub_08006D44
_08007776:
	cmp r7, #0
	bne _08007786
	adds r0, r6, #0
	bl sub_08006ACC
	ldr r2, _08007790 @ =0x00000636
	adds r1, r5, r2
	strb r0, [r1]
_08007786:
	add sp, #0x18
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08007790: .4byte 0x00000636

	thumb_func_start sub_08007794
sub_08007794: @ 0x08007794
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r6, r0, #0
	str r1, [sp, #0xc]
	adds r5, r2, #0
	adds r7, r3, #0
	ldr r0, [sp, #0x30]
	mov sl, r0
	movs r1, #0xe0
	lsls r1, r1, #0x13
	str r1, [sp, #8]
	ldrb r0, [r5, #2]
	cmp r0, #0
	beq _080077C0
	adds r0, r1, #0
	bl sub_08005C74
	b _080077C8
_080077C0:
	adds r0, r1, #0
	movs r1, #3
	bl sub_08000FEC
_080077C8:
	ldr r0, [sp, #8]
	adds r3, r0, #0
	adds r3, #0x18
	str r3, [sp, #8]
	ldrb r0, [r5, #1]
	cmp r0, #0
	beq _08007824
	ldr r1, _08007810 @ =0x083E2584
	movs r2, #0xc3
	lsls r2, r2, #3
	adds r4, r6, r2
	ldrb r0, [r4]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r1, r1, r7
	ldrb r2, [r6]
	adds r0, r3, #0
	bl sub_08006B30
	ldr r1, _08007814 @ =0x00000614
	adds r0, r6, r1
	ldr r0, [r0]
	movs r2, #0
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _08007802
	movs r2, #1
_08007802:
	cmp r2, #0
	beq _0800782C
	ldrb r0, [r4]
	cmp r0, #5
	beq _08007818
	adds r1, r0, #1
	b _0800781A
	.align 2, 0
_08007810: .4byte 0x083E2584
_08007814: .4byte 0x00000614
_08007818:
	movs r1, #0
_0800781A:
	movs r2, #0xc3
	lsls r2, r2, #3
	adds r0, r6, r2
	strb r1, [r0]
	b _0800782C
_08007824:
	adds r0, r3, #0
	movs r1, #1
	bl sub_08000FEC
_0800782C:
	ldr r0, [sp, #8]
	adds r0, #8
	str r0, [sp, #8]
	ldrb r0, [r5]
	cmp r0, #0
	beq _08007904
	ldr r1, _08007914 @ =0x0000060C
	adds r0, r6, r1
	ldrb r0, [r0]
	bl sub_08006AC0
	adds r7, r0, #0
	movs r2, #0
	mov r8, r2
	ldr r0, [sp, #0xc]
	cmp r0, #3
	bne _08007852
	movs r1, #1
	mov r8, r1
_08007852:
	movs r2, #0
	mov sb, r2
	ldr r0, [sp, #0xc]
	cmp r0, #4
	bne _08007860
	movs r1, #1
	mov sb, r1
_08007860:
	movs r2, #0xc7
	lsls r2, r2, #3
	adds r1, r6, r2
	ldr r0, [sp, #8]
	str r0, [r1]
	ldr r1, _08007918 @ =0x0000060D
	adds r0, r6, r1
	ldrb r1, [r0]
	add r4, sp, #4
	adds r0, r7, #0
	mov r2, sp
	adds r3, r4, #0
	bl sub_0800719C
	ldr r1, [sp]
	add r1, sl
	str r1, [sp]
	add r5, sp, #8
	ldr r2, [sp, #4]
	adds r0, r5, #0
	bl sub_08006E8C
	ldr r2, _0800791C @ =0x0000063C
	adds r1, r6, r2
	ldr r0, [sp, #8]
	str r0, [r1]
	ldr r1, _08007920 @ =0x0000060E
	adds r0, r6, r1
	ldrb r1, [r0]
	adds r0, r7, #0
	mov r2, sp
	adds r3, r4, #0
	bl sub_080071A8
	ldr r1, [sp]
	add r1, sl
	str r1, [sp]
	ldr r2, [sp, #4]
	adds r0, r5, #0
	bl sub_08006F94
	mov r4, sl
	adds r4, #0x78
	mov r2, r8
	cmp r2, #0
	beq _080078C6
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #8
	bl sub_0800709C
_080078C6:
	mov r0, sb
	cmp r0, #0
	beq _080078D8
	mov r1, sl
	adds r1, #0xce
	adds r0, r5, #0
	movs r2, #0xa
	bl sub_08007164
_080078D8:
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	bl sub_08006D7C
	mov r1, r8
	cmp r1, #0
	bne _080078F2
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #8
	bl sub_0800709C
_080078F2:
	mov r2, sb
	cmp r2, #0
	bne _08007904
	mov r1, sl
	adds r1, #0xce
	adds r0, r5, #0
	movs r2, #0xa
	bl sub_08007164
_08007904:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08007914: .4byte 0x0000060C
_08007918: .4byte 0x0000060D
_0800791C: .4byte 0x0000063C
_08007920: .4byte 0x0000060E

	thumb_func_start sub_08007924
sub_08007924: @ 0x08007924
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4]
	cmp r0, #3
	bne _08007974
	ldr r1, _08007960 @ =0x0000060F
	adds r0, r4, r1
	ldrb r1, [r0]
	ldr r2, _08007964 @ =0x00000621
	adds r5, r4, r2
	ldrb r2, [r5]
	adds r0, r4, #0
	bl sub_08006C64
	ldr r1, _08007968 @ =0x00000614
	adds r0, r4, r1
	ldr r0, [r0]
	movs r2, #0
	movs r1, #7
	ands r0, r1
	cmp r0, #0
	bne _08007952
	movs r2, #1
_08007952:
	cmp r2, #0
	beq _08007974
	ldrb r0, [r5]
	cmp r0, #3
	beq _0800796C
	adds r1, r0, #1
	b _0800796E
	.align 2, 0
_08007960: .4byte 0x0000060F
_08007964: .4byte 0x00000621
_08007968: .4byte 0x00000614
_0800796C:
	movs r1, #0
_0800796E:
	ldr r2, _0800797C @ =0x00000621
	adds r0, r4, r2
	strb r1, [r0]
_08007974:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800797C: .4byte 0x00000621

	thumb_func_start sub_08007980
sub_08007980: @ 0x08007980
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r4, r0, #0
	ldr r2, _080079F8 @ =0x0000060C
	adds r0, r4, r2
	ldrb r7, [r0]
	cmp r1, #0
	beq _08007A08
	bl sub_08007230
	ldr r1, _080079FC @ =0x00000619
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #3
	bne _080079E4
	adds r0, r4, #0
	adds r1, r7, #0
	movs r2, #1
	bl sub_08006BA8
	movs r6, #0
	ldr r2, _08007A00 @ =0x00000614
	adds r5, r4, r2
_080079AE:
	add r0, sp, #4
	ldr r1, _08007A04 @ =0x0830E9A2
	movs r2, #3
	bl sub_0803DEBC
	bl sub_0803D380
	adds r0, r4, #0
	bl sub_08006BE0
	ldrb r1, [r4]
	movs r0, #0
	str r0, [sp]
	adds r0, r4, #0
	add r2, sp, #4
	movs r3, #0
	bl sub_08007794
	adds r0, r4, #0
	bl sub_08007924
	ldr r0, [r5]
	adds r0, #1
	str r0, [r5]
	adds r6, #1
	cmp r6, #7
	bls _080079AE
_080079E4:
	ldr r1, _080079FC @ =0x00000619
	adds r0, r4, r1
	ldrb r2, [r0]
	subs r2, #1
	adds r0, r4, #0
	adds r1, r7, #0
	bl sub_08006BA8
	b _08007A22
	.align 2, 0
_080079F8: .4byte 0x0000060C
_080079FC: .4byte 0x00000619
_08007A00: .4byte 0x00000614
_08007A04: .4byte 0x0830E9A2
_08007A08:
	ldr r2, _08007A34 @ =0x00000603
	adds r0, r4, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _08007A18
	movs r0, #0
	bl sub_080071B4
_08007A18:
	adds r0, r4, #0
	adds r1, r7, #0
	movs r2, #0
	bl sub_08006BA8
_08007A22:
	adds r0, r4, #0
	movs r1, #0
	bl sub_08007B0C
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08007A34: .4byte 0x00000603

	thumb_func_start sub_08007A38
sub_08007A38: @ 0x08007A38
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r1, _08007A54 @ =0x0000060C
	adds r0, r4, r1
	ldrb r7, [r0]
	adds r1, #0xd
	adds r0, r4, r1
	ldrb r1, [r0]
	movs r0, #0x18
	bl sub_0803D34C
	adds r6, r0, #0
	movs r5, #1
	b _08007A64
	.align 2, 0
_08007A54: .4byte 0x0000060C
_08007A58:
	adds r0, r4, #0
	adds r1, r7, #0
	adds r2, r5, #0
	bl sub_08006BA8
	adds r5, #1
_08007A64:
	adds r0, r6, #0
	bl sub_08000B68
	adds r0, r4, #0
	bl sub_08006BE0
	ldr r1, _08007A8C @ =0x00000619
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r5, r0
	blo _08007A58
	adds r1, #0x13
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08007A58
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08007A8C: .4byte 0x00000619

	thumb_func_start sub_08007A90
sub_08007A90: @ 0x08007A90
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	movs r0, #0xa0
	mov sb, r0
	movs r0, #0x30
	mov r8, r0
	movs r6, #4
	movs r5, #0
	ldr r7, _08007AD0 @ =0x0400001A
_08007AA6:
	adds r5, #1
	mov r0, sb
	mov r1, r8
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_08000CDC
	adds r4, r0, #0
	bl sub_0803D380
	rsbs r4, r4, #0
	strh r4, [r7]
	cmp r5, r6
	blo _08007AA6
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08007AD0: .4byte 0x0400001A

	thumb_func_start sub_08007AD4
sub_08007AD4: @ 0x08007AD4
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r5, _08007B04 @ =0x030013B0
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0
	bl sub_08004CF0
	ldr r0, _08007B08 @ =0x083E259C
	lsls r4, r4, #2
	adds r4, r4, r0
	ldr r3, [r4]
	movs r0, #0x1e
	str r0, [sp]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0x12
	bl sub_08004EC0
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08007B04: .4byte 0x030013B0
_08007B08: .4byte 0x083E259C

	thumb_func_start sub_08007B0C
sub_08007B0C: @ 0x08007B0C
	push {lr}
	adds r3, r0, #0
	adds r2, r1, #0
	ldr r1, _08007B2C @ =0x00000622
	adds r0, r3, r1
	strb r2, [r0]
	ldr r0, _08007B30 @ =0x00000624
	adds r1, r3, r0
	movs r0, #1
	strh r0, [r1]
	cmp r2, #0
	bne _08007B34
	movs r0, #0
	bl sub_08007AD4
	b _08007B4E
	.align 2, 0
_08007B2C: .4byte 0x00000622
_08007B30: .4byte 0x00000624
_08007B34:
	cmp r2, #1
	bne _08007B48
	movs r1, #0xbf
	lsls r1, r1, #3
	adds r0, r3, r1
	ldrb r0, [r0]
	adds r0, #6
	bl sub_08007AD4
	b _08007B4E
_08007B48:
	movs r0, #8
	bl sub_08007AD4
_08007B4E:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08007B54
sub_08007B54: @ 0x08007B54
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, _08007B78 @ =0x00000622
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08007BF0
	movs r5, #0x78
	ldr r2, _08007B7C @ =0x00000624
	adds r1, r4, r2
	ldrh r0, [r1]
	cmp r0, #0
	bne _08007B80
	movs r0, #0
	bl sub_08007AD4
	b _08007BCE
	.align 2, 0
_08007B78: .4byte 0x00000622
_08007B7C: .4byte 0x00000624
_08007B80:
	ldrh r0, [r1]
	cmp r0, #0x78
	bne _08007BC4
	ldr r1, _08007B98 @ =0x00000612
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08007B9C
	movs r0, #3
	bl sub_08007AD4
	b _08007BCE
	.align 2, 0
_08007B98: .4byte 0x00000612
_08007B9C:
	ldr r2, _08007BB0 @ =0x00000604
	adds r0, r4, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _08007BB4
	movs r0, #4
	bl sub_08007AD4
	b _08007BCE
	.align 2, 0
_08007BB0: .4byte 0x00000604
_08007BB4:
	movs r1, #0xbf
	lsls r1, r1, #3
	adds r0, r4, r1
	ldrb r0, [r0]
	adds r0, #1
	bl sub_08007AD4
	b _08007BCE
_08007BC4:
	cmp r0, #0xf0
	bne _08007BCE
	movs r0, #5
	bl sub_08007AD4
_08007BCE:
	ldr r2, _08007BE4 @ =0x00000624
	adds r0, r4, r2
	ldrh r1, [r0]
	lsls r0, r5, #1
	adds r0, r0, r5
	subs r0, #1
	cmp r1, r0
	beq _08007BE8
	adds r1, #1
	b _08007BEA
	.align 2, 0
_08007BE4: .4byte 0x00000624
_08007BE8:
	movs r1, #0
_08007BEA:
	ldr r2, _08007BF8 @ =0x00000624
	adds r0, r4, r2
	strh r1, [r0]
_08007BF0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08007BF8: .4byte 0x00000624

	thumb_func_start sub_08007BFC
sub_08007BFC: @ 0x08007BFC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	adds r7, r3, #0
	ldr r0, [sp, #0x1c]
	ldr r1, _08007C20 @ =0x030013D0
	mov r8, r1
	cmp r0, #0
	bne _08007C24
	mov r0, r8
	adds r1, r5, #0
	bl sub_08004D2C
	b _08007C92
	.align 2, 0
_08007C20: .4byte 0x030013D0
_08007C24:
	ldr r0, _08007C4C @ =0x0200C190
	ldr r0, [r0]
	ldrb r1, [r0]
	lsls r1, r1, #2
	ldr r2, _08007C50 @ =0x000005E4
	adds r0, r0, r2
	adds r0, r0, r1
	ldr r1, [r0]
	lsls r0, r4, #3
	adds r4, r1, r0
	ldrb r1, [r4, #1]
	cmp r1, #4
	bne _08007C54
	mov r0, r8
	adds r1, r5, #0
	adds r2, r6, #0
	adds r3, r7, #0
	bl sub_08004D2C
	b _08007C7C
	.align 2, 0
_08007C4C: .4byte 0x0200C190
_08007C50: .4byte 0x000005E4
_08007C54:
	movs r0, #3
	eors r0, r1
	rsbs r2, r0, #0
	orrs r2, r0
	lsrs r2, r2, #0x1f
	mov r0, r8
	movs r1, #1
	bl sub_08004CF0
	ldrb r0, [r4, #1]
	ldr r3, _08007CA0 @ =0x0830EB38
	cmp r0, #1
	beq _08007C70
	ldr r3, [r4, #4]
_08007C70:
	str r7, [sp]
	mov r0, r8
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_08004E6C
_08007C7C:
	ldr r0, [sp, #0x20]
	cmp r0, #0
	beq _08007C92
	movs r0, #0xf
	str r0, [sp]
	mov r0, r8
	adds r1, r5, #0
	adds r2, r6, #0
	adds r3, r7, #0
	bl sub_08004D5C
_08007C92:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08007CA0: .4byte 0x0830EB38

	thumb_func_start sub_08007CA4
sub_08007CA4: @ 0x08007CA4
	push {lr}
	ldr r1, _08007CCC @ =0x0200C190
	ldr r1, [r1]
	ldrb r2, [r1]
	lsls r2, r2, #2
	ldr r3, _08007CD0 @ =0x000005E4
	adds r1, r1, r3
	adds r1, r1, r2
	ldr r1, [r1]
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrb r0, [r1, #1]
	cmp r0, #3
	bne _08007CC4
	movs r2, #1
_08007CC4:
	adds r0, r2, #0
	pop {r1}
	bx r1
	.align 2, 0
_08007CCC: .4byte 0x0200C190
_08007CD0: .4byte 0x000005E4

	thumb_func_start sub_08007CD4
sub_08007CD4: @ 0x08007CD4
	push {lr}
	bl sub_08006624
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08007CE0
sub_08007CE0: @ 0x08007CE0
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r7, r1, #0
	movs r1, #0xc1
	lsls r1, r1, #3
	adds r0, r6, r1
	ldr r4, [r0]
	ldrb r5, [r6]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r7, r0
	bne _08007D04
	adds r0, r6, #1
	adds r0, r0, r5
	ldrb r1, [r0]
	ldr r2, _08007D28 @ =0x00000611
	adds r0, r6, r2
	strb r1, [r0]
_08007D04:
	adds r0, r6, #0
	adds r0, #0x14
	adds r0, r0, r5
	ldrb r0, [r0]
	strh r0, [r4]
	movs r0, #1
	strb r0, [r4, #2]
	cmp r5, #0
	bne _08007D18
	movs r0, #3
_08007D18:
	strb r0, [r4, #3]
	movs r0, #0xb
	strb r0, [r4, #4]
	cmp r5, #0
	bne _08007D2C
	movs r0, #4
	b _08007D36
	.align 2, 0
_08007D28: .4byte 0x00000611
_08007D2C:
	cmp r5, #3
	bne _08007D34
	movs r0, #6
	b _08007D36
_08007D34:
	movs r0, #7
_08007D36:
	strb r0, [r4, #5]
	ldr r0, _08007D50 @ =sub_08007BFC
	str r0, [r4, #8]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r7, r0
	bne _08007D54
	adds r0, r6, #1
	adds r0, r0, r5
	ldrb r0, [r0]
	strh r0, [r4, #0xc]
	b _08007D56
	.align 2, 0
_08007D50: .4byte sub_08007BFC
_08007D54:
	strh r7, [r4, #0xc]
_08007D56:
	adds r0, r4, #0
	bl sub_0800663C
	movs r1, #0
	movs r0, #1
	strb r0, [r4, #0xe]
	strb r0, [r4, #0x14]
	strb r0, [r4, #0x16]
	strb r1, [r4, #0x18]
	subs r0, #2
	cmp r7, r0
	beq _08007D70
	strh r1, [r4, #0x1a]
_08007D70:
	movs r0, #0x51
	strh r0, [r4, #0x20]
	cmp r5, #0
	beq _08007D7C
	cmp r5, #3
	bne _08007D8E
_08007D7C:
	adds r1, r4, #0
	adds r1, #0x25
	ldrb r0, [r1]
	adds r0, #3
	strb r0, [r1]
	adds r1, #2
	ldrb r0, [r1]
	adds r0, #3
	strb r0, [r1]
_08007D8E:
	ldr r0, _08007DA0 @ =sub_08007CA4
	str r0, [r4, #0x28]
	cmp r5, #0
	bne _08007DA4
	adds r1, r4, #0
	adds r1, #0x2c
	movs r0, #1
	b _08007DB6
	.align 2, 0
_08007DA0: .4byte sub_08007CA4
_08007DA4:
	cmp r5, #3
	bne _08007DB0
	adds r1, r4, #0
	adds r1, #0x2c
	movs r0, #2
	b _08007DB6
_08007DB0:
	adds r1, r4, #0
	adds r1, #0x2c
	movs r0, #0
_08007DB6:
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_08006768
	movs r0, #0x80
	bl sub_0800591C
	adds r0, r6, #0
	movs r1, #1
	bl sub_08007B0C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08007DD4
sub_08007DD4: @ 0x08007DD4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r5, r0, #0
	movs r1, #0xc1
	lsls r1, r1, #3
	adds r0, r5, r1
	ldr r4, [r0]
	ldrb r7, [r5]
	adds r0, r4, #0
	adds r0, #0x2d
	ldrb r0, [r0]
	cmp r0, #0
	beq _08007EA2
	adds r0, r4, #0
	bl sub_080067EC
	adds r1, r4, #0
	adds r1, #0x2f
	ldrb r0, [r1]
	cmp r0, #0
	beq _08007E74
	movs r0, #0
	mov r8, r0
	mov r0, r8
	strb r0, [r1]
	ldr r0, _08007E68 @ =0x05000100
	ldr r1, _08007E6C @ =0x083D8534
	movs r2, #0x20
	bl sub_080002C4
	adds r6, r4, #0
	adds r6, #0x30
	ldrb r0, [r6]
	cmp r0, #1
	bne _08007E34
	adds r0, r5, #1
	adds r0, r0, r7
	ldrb r4, [r0]
	mov r1, r8
	str r1, [sp]
	adds r0, r5, #0
	adds r1, r7, #0
	adds r2, r4, #0
	movs r3, #1
	bl sub_08007668
_08007E34:
	ldrb r0, [r6]
	cmp r0, #2
	bne _08007E5C
	adds r0, r5, #1
	adds r0, r0, r7
	ldr r1, _08007E70 @ =0x00000611
	adds r2, r5, r1
	ldrb r0, [r0]
	ldrb r1, [r2]
	cmp r0, r1
	beq _08007E5C
	ldrb r4, [r2]
	movs r0, #1
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r7, #0
	adds r2, r4, #0
	movs r3, #1
	bl sub_08007668
_08007E5C:
	adds r0, r5, #0
	movs r1, #0
	bl sub_08007B0C
	b _08007EA2
	.align 2, 0
_08007E68: .4byte 0x05000100
_08007E6C: .4byte 0x083D8534
_08007E70: .4byte 0x00000611
_08007E74:
	adds r0, r4, #0
	adds r0, #0x2e
	ldrb r0, [r0]
	cmp r0, #0
	beq _08007EA2
	adds r0, r4, #0
	adds r0, #0x7c
	ldrh r4, [r0]
	adds r0, r5, #0
	adds r1, r7, #0
	adds r2, r4, #0
	bl sub_08008CC0
	cmp r0, #0
	beq _08007EA2
	movs r0, #1
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r7, #0
	adds r2, r4, #0
	movs r3, #0
	bl sub_08007668
_08007EA2:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08007EB0
sub_08007EB0: @ 0x08007EB0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r2, #0
	adds r6, r3, #0
	movs r2, #0
	str r2, [r4]
	movs r0, #0xc
	str r0, [r4, #4]
	str r2, [r4, #8]
	str r2, [r4, #0xc]
	str r2, [r4, #0x10]
	strb r1, [r4, #0x14]
	strb r5, [r4, #0x15]
	strb r6, [r4, #0x16]
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_0800FD0C
	str r0, [r4, #0x18]
	cmp r5, #4
	bhi _08007F1E
	lsls r0, r5, #2
	ldr r1, _08007EE4 @ =_08007EE8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08007EE4: .4byte _08007EE8
_08007EE8: @ jump table
	.4byte _08007EFC @ case 0
	.4byte _08007F00 @ case 1
	.4byte _08007F04 @ case 2
	.4byte _08007F08 @ case 3
	.4byte _08007F1A @ case 4
_08007EFC:
	movs r0, #0
	b _08007F1C
_08007F00:
	movs r0, #1
	b _08007F1C
_08007F04:
	movs r0, #2
	b _08007F1C
_08007F08:
	adds r0, r6, #0
	bl sub_0800FCCC
	cmp r0, #0
	beq _08007F16
	movs r0, #3
	b _08007F1C
_08007F16:
	movs r0, #4
	b _08007F1C
_08007F1A:
	movs r0, #5
_08007F1C:
	strb r0, [r4, #0x17]
_08007F1E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08007F24
sub_08007F24: @ 0x08007F24
	push {lr}
	sub sp, #0x100
	adds r3, r1, #0
	ldr r1, _08007F40 @ =0x0830EB40
	ldr r2, [r0, #0x18]
	mov r0, sp
	bl sub_0803DFE0
	mov r0, sp
	bl sub_080050A8
	add sp, #0x100
	pop {r0}
	bx r0
	.align 2, 0
_08007F40: .4byte 0x0830EB40

	thumb_func_start sub_08007F44
sub_08007F44: @ 0x08007F44
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0x17]
	cmp r0, #5
	bhi _08007FB4
	lsls r0, r0, #2
	ldr r1, _08007F58 @ =_08007F5C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08007F58: .4byte _08007F5C
_08007F5C: @ jump table
	.4byte _08007F74 @ case 0
	.4byte _08007F80 @ case 1
	.4byte _08007F8C @ case 2
	.4byte _08007F98 @ case 3
	.4byte _08007FA4 @ case 4
	.4byte _08007FB0 @ case 5
_08007F74:
	ldr r4, _08007F7C @ =0x083E1994
	movs r6, #0x14
	b _08007FB4
	.align 2, 0
_08007F7C: .4byte 0x083E1994
_08007F80:
	ldr r4, _08007F88 @ =0x083E1C78
	movs r6, #0x14
	b _08007FB4
	.align 2, 0
_08007F88: .4byte 0x083E1C78
_08007F8C:
	ldr r4, _08007F94 @ =0x083E1F5C
	movs r6, #0x10
	b _08007FB4
	.align 2, 0
_08007F94: .4byte 0x083E1F5C
_08007F98:
	ldr r4, _08007FA0 @ =0x083E221C
	movs r6, #0x10
	b _08007FB4
	.align 2, 0
_08007FA0: .4byte 0x083E221C
_08007FA4:
	ldr r4, _08007FAC @ =0x083E23EC
	movs r6, #0x10
	b _08007FB4
	.align 2, 0
_08007FAC: .4byte 0x083E23EC
_08007FB0:
	ldr r4, _08007FC0 @ =0x083E250C
	movs r6, #8
_08007FB4:
	ldr r5, [r2, #0x18]
_08007FB6:
	ldr r0, [r4]
	cmp r0, #0
	bne _08007FC4
	movs r0, #0
	b _08007FD4
	.align 2, 0
_08007FC0: .4byte 0x083E250C
_08007FC4:
	adds r1, r5, #0
	bl sub_08000D80
	cmp r0, #0
	bne _08007FD2
	adds r4, r4, r6
	b _08007FB6
_08007FD2:
	adds r0, r4, #0
_08007FD4:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08007FDC
sub_08007FDC: @ 0x08007FDC
	str r1, [r0]
	str r2, [r0, #4]
	str r1, [r0, #8]
	movs r1, #0
	str r1, [r0, #0xc]
	bx lr

	thumb_func_start sub_08007FE8
sub_08007FE8: @ 0x08007FE8
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2]
	str r0, [r2, #8]
	ldr r0, [r2, #0xc]
	adds r0, #1
	str r0, [r2, #0xc]
	adds r1, r2, #0
	adds r1, #0x21
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	lsls r0, r0, #1
	adds r0, #1
	adds r1, r1, r0
	cmp r1, #0x12
	bls _08008012
	ldr r1, _08008018 @ =0x0830EB48
	adds r0, r2, #0
	bl sub_08007F24
_08008012:
	pop {r0}
	bx r0
	.align 2, 0
_08008018: .4byte 0x0830EB48

	thumb_func_start sub_0800801C
sub_0800801C: @ 0x0800801C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, [r4, #4]
	ldr r0, [r4, #8]
	cmp r1, r0
	bhi _08008048
	adds r0, r4, #0
	bl sub_08007FE8
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _08008048
	ldrb r0, [r5]
	cmp r0, #0x81
	bne _08008042
	ldrb r0, [r5, #1]
	cmp r0, #0x45
	beq _08008048
_08008042:
	ldr r0, [r4, #8]
	adds r0, #1
	str r0, [r4, #8]
_08008048:
	ldr r1, [r4, #0xc]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r2, [r4, #8]
	adds r2, r2, r0
	lsls r2, r2, #6
	ldr r1, [r4, #0x68]
	adds r1, r1, r2
	ldr r0, [r4, #0x1c]
	adds r2, r5, #0
	bl sub_08004AA8
	ldr r1, [r4, #8]
	adds r1, #1
	str r1, [r4, #8]
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08008070
sub_08008070: @ 0x08008070
	push {lr}
	sub sp, #4
	mov r2, sp
	adds r1, #0x30
	movs r3, #0
	strb r1, [r2]
	mov r1, sp
	strb r3, [r1, #1]
	bl sub_0800801C
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800808C
sub_0800808C: @ 0x0800808C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	movs r1, #0
	ldrb r0, [r5]
	cmp r0, #0x81
	bne _080080A2
	ldrb r0, [r5, #1]
	cmp r0, #0x45
	bne _080080A2
	movs r1, #1
_080080A2:
	str r1, [r4, #0x10]
	b _0800818A
_080080A6:
	cmp r0, #0x24
	bne _08008180
	ldrb r0, [r5, #1]
	subs r0, #0x62
	cmp r0, #0x17
	bhi _0800816E
	lsls r0, r0, #2
	ldr r1, _080080BC @ =_080080C0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080080BC: .4byte _080080C0
_080080C0: @ jump table
	.4byte _08008120 @ case 0
	.4byte _08008148 @ case 1
	.4byte _0800816E @ case 2
	.4byte _0800816E @ case 3
	.4byte _0800816E @ case 4
	.4byte _0800813E @ case 5
	.4byte _0800816E @ case 6
	.4byte _0800816E @ case 7
	.4byte _0800816E @ case 8
	.4byte _0800816E @ case 9
	.4byte _0800816E @ case 10
	.4byte _08008134 @ case 11
	.4byte _08008166 @ case 12
	.4byte _0800816E @ case 13
	.4byte _0800816E @ case 14
	.4byte _0800816E @ case 15
	.4byte _0800812A @ case 16
	.4byte _0800816E @ case 17
	.4byte _0800816E @ case 18
	.4byte _0800816E @ case 19
	.4byte _0800816E @ case 20
	.4byte _0800815C @ case 21
	.4byte _0800816E @ case 22
	.4byte _08008152 @ case 23
_08008120:
	ldr r0, [r4, #0x1c]
	movs r1, #4
	bl sub_08004D0C
	b _08008176
_0800812A:
	ldr r0, [r4, #0x1c]
	movs r1, #5
	bl sub_08004D0C
	b _08008176
_08008134:
	ldr r0, [r4, #0x1c]
	movs r1, #6
	bl sub_08004D0C
	b _08008176
_0800813E:
	ldr r0, [r4, #0x1c]
	movs r1, #7
	bl sub_08004D0C
	b _08008176
_08008148:
	ldr r0, [r4, #0x1c]
	movs r1, #3
	bl sub_08004D0C
	b _08008176
_08008152:
	ldr r0, [r4, #0x1c]
	movs r1, #2
	bl sub_08004D0C
	b _08008176
_0800815C:
	ldr r0, [r4, #0x1c]
	movs r1, #0
	bl sub_08004D0C
	b _08008176
_08008166:
	adds r0, r4, #0
	bl sub_08007FE8
	b _08008176
_0800816E:
	ldr r1, _0800817C @ =0x0830EB70
	adds r0, r4, #0
	bl sub_08007F24
_08008176:
	adds r5, #2
	b _0800818A
	.align 2, 0
_0800817C: .4byte 0x0830EB70
_08008180:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0800801C
	adds r5, r5, r0
_0800818A:
	ldrb r0, [r5]
	cmp r0, #0
	bne _080080A6
	movs r0, #0
	str r0, [r4, #0x10]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800819C
sub_0800819C: @ 0x0800819C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0800808C
	adds r0, r4, #0
	bl sub_08007FE8
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080081B0
sub_080081B0: @ 0x080081B0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	adds r4, r1, #0
	adds r7, r2, #0
	movs r0, #0
	cmp r7, #0
	ble _080081C8
	cmp r7, #0xa
	bgt _080081C8
	movs r0, #1
_080081C8:
	cmp r0, #0
	bne _080081D4
	ldr r1, _08008238 @ =0x0830EB88
	adds r0, r6, #0
	bl sub_08007F24
_080081D4:
	ldr r0, [r6, #0x1c]
	movs r1, #3
	bl sub_08004D0C
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_0800808C
	ldr r0, [r6, #8]
	mov r8, r0
	ldr r0, [r6, #0x1c]
	movs r1, #5
	bl sub_08004D0C
	movs r4, #0
	lsrs r5, r7, #1
	cmp r4, r5
	bhs _08008206
_080081F8:
	adds r0, r6, #0
	ldr r1, _0800823C @ =0x0830EBA0
	bl sub_0800801C
	adds r4, #1
	cmp r4, r5
	blo _080081F8
_08008206:
	movs r0, #1
	ands r0, r7
	cmp r0, #0
	beq _08008216
	ldr r1, _08008240 @ =0x0830EBA4
	adds r0, r6, #0
	bl sub_0800801C
_08008216:
	ldrb r0, [r6, #0x17]
	cmp r0, #0
	bne _08008256
	ldr r0, [r6, #0x1c]
	movs r1, #0
	bl sub_08004D0C
	cmp r7, #0xa
	bne _08008248
	mov r0, r8
	adds r0, #5
	str r0, [r6, #8]
	ldr r1, _08008244 @ =0x0830EBA8
	adds r0, r6, #0
	bl sub_0800808C
	b _08008256
	.align 2, 0
_08008238: .4byte 0x0830EB88
_0800823C: .4byte 0x0830EBA0
_08008240: .4byte 0x0830EBA4
_08008244: .4byte 0x0830EBA8
_08008248:
	mov r0, r8
	adds r0, #6
	str r0, [r6, #8]
	adds r0, r6, #0
	adds r1, r7, #0
	bl sub_08008070
_08008256:
	adds r0, r6, #0
	bl sub_08007FE8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08008268
sub_08008268: @ 0x08008268
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	movs r0, #0
	cmp r6, #0
	ble _0800827C
	cmp r6, #5
	bgt _0800827C
	movs r0, #1
_0800827C:
	cmp r0, #0
	bne _08008288
	ldr r1, _080082C0 @ =0x0830EBAC
	adds r0, r5, #0
	bl sub_08007F24
_08008288:
	ldr r0, [r5, #0x1c]
	movs r1, #3
	bl sub_08004D0C
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0800808C
	ldr r0, [r5, #0x1c]
	movs r1, #5
	bl sub_08004D0C
	movs r4, #0
	cmp r4, r6
	bhs _080082B4
_080082A6:
	adds r0, r5, #0
	ldr r1, _080082C4 @ =0x0830EBC4
	bl sub_0800801C
	adds r4, #1
	cmp r4, r6
	blo _080082A6
_080082B4:
	adds r0, r5, #0
	bl sub_08007FE8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080082C0: .4byte 0x0830EBAC
_080082C4: .4byte 0x0830EBC4

	thumb_func_start sub_080082C8
sub_080082C8: @ 0x080082C8
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r6, r1, #0
	lsls r2, r2, #0x18
	lsrs r5, r2, #0x18
	movs r0, #0
	cmp r5, #0x40
	ble _080082E0
	cmp r5, #0x43
	bgt _080082E0
	movs r0, #1
_080082E0:
	cmp r0, #0
	bne _080082EC
	ldr r1, _08008324 @ =0x0830EBC8
	adds r0, r4, #0
	bl sub_08007F24
_080082EC:
	ldr r0, [r4, #0x1c]
	movs r1, #3
	bl sub_08004D0C
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_0800808C
	ldr r0, [r4, #0x1c]
	movs r1, #0
	bl sub_08004D0C
	mov r0, sp
	movs r1, #0
	strb r5, [r0]
	strb r1, [r0, #1]
	adds r0, r4, #0
	mov r1, sp
	bl sub_0800801C
	adds r0, r4, #0
	bl sub_08007FE8
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08008324: .4byte 0x0830EBC8

	thumb_func_start sub_08008328
sub_08008328: @ 0x08008328
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	adds r5, r2, #0
	ldrb r0, [r4, #0x17]
	cmp r0, #2
	bne _08008354
	movs r0, #0
	cmp r5, #0
	ble _08008342
	cmp r5, #6
	bgt _08008342
	movs r0, #1
_08008342:
	cmp r0, #0
	bne _0800836C
	ldr r1, _08008350 @ =0x0830EBE4
	adds r0, r4, #0
	bl sub_08007F24
	b _0800836C
	.align 2, 0
_08008350: .4byte 0x0830EBE4
_08008354:
	movs r0, #0
	cmp r5, #0
	ble _08008360
	cmp r5, #2
	bgt _08008360
	movs r0, #1
_08008360:
	cmp r0, #0
	bne _0800836C
	ldr r1, _080083A0 @ =0x0830EC04
	adds r0, r4, #0
	bl sub_08007F24
_0800836C:
	ldr r0, [r4, #0x1c]
	movs r1, #3
	bl sub_08004D0C
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_0800808C
	ldr r0, [r4, #0x1c]
	movs r1, #0
	bl sub_08004D0C
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08008070
	ldr r1, _080083A4 @ =0x0830EC24
	adds r0, r4, #0
	bl sub_0800808C
	adds r0, r4, #0
	bl sub_08007FE8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080083A0: .4byte 0x0830EC04
_080083A4: .4byte 0x0830EC24

	thumb_func_start sub_080083A8
sub_080083A8: @ 0x080083A8
	push {r4, lr}
	movs r2, #0x30
	lsls r3, r2, #0x18
	lsls r0, r2, #0x10
	orrs r3, r0
	lsls r0, r2, #8
	orrs r3, r0
	orrs r3, r2
	cmp r1, #0
	beq _080083BE
	rsbs r3, r3, #0
_080083BE:
	ldr r1, _080083EC @ =0x06008700
	movs r4, #0xf0
	movs r2, #0
_080083C4:
	ldr r0, [r1]
	adds r0, r0, r3
	str r0, [r1]
	ldr r0, [r1, #4]
	adds r0, r0, r3
	str r0, [r1, #4]
	ldr r0, [r1, #8]
	adds r0, r0, r3
	str r0, [r1, #8]
	ldr r0, [r1, #0xc]
	adds r0, r0, r3
	str r0, [r1, #0xc]
	adds r1, #0x10
	adds r2, #1
	cmp r2, r4
	blo _080083C4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080083EC: .4byte 0x06008700

	thumb_func_start sub_080083F0
sub_080083F0: @ 0x080083F0
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r4, r5, #0
	adds r4, #0x20
	adds r6, r5, #0
	adds r6, #0x34
	ldr r0, _08008414 @ =0x030013B0
	str r0, [r5, #0x1c]
	ldrb r0, [r5, #0x17]
	cmp r0, #5
	bhi _08008464
	lsls r0, r0, #2
	ldr r1, _08008418 @ =_0800841C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08008414: .4byte 0x030013B0
_08008418: .4byte _0800841C
_0800841C: @ jump table
	.4byte _08008434 @ case 0
	.4byte _08008444 @ case 1
	.4byte _08008444 @ case 2
	.4byte _08008454 @ case 3
	.4byte _08008454 @ case 4
	.4byte _08008444 @ case 5
_08008434:
	movs r0, #0
	strb r0, [r4]
	movs r0, #2
	strb r0, [r4, #1]
	movs r0, #0x1e
	strb r0, [r4, #2]
	movs r0, #0x10
	b _08008462
_08008444:
	movs r0, #1
	strb r0, [r4]
	movs r0, #2
	strb r0, [r4, #1]
	movs r0, #0x1c
	strb r0, [r4, #2]
	movs r0, #0x10
	b _08008462
_08008454:
	movs r0, #1
	strb r0, [r4]
	movs r0, #3
	strb r0, [r4, #1]
	movs r0, #0x1c
	strb r0, [r4, #2]
	movs r0, #0xe
_08008462:
	strb r0, [r4, #3]
_08008464:
	movs r1, #0
	movs r0, #1
	strb r0, [r4, #4]
	strb r1, [r4, #5]
	movs r2, #0
	ldrb r0, [r5, #0x14]
	cmp r0, #0
	bne _08008476
	movs r2, #1
_08008476:
	strb r2, [r4, #6]
	strb r1, [r4, #7]
	strb r1, [r4, #8]
	movs r0, #1
	ldrsb r0, [r4, r0]
	adds r0, #1
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #1
	adds r1, #1
	movs r0, #0
	ldrsb r0, [r4, r0]
	adds r1, r1, r0
	lsls r1, r1, #6
	movs r0, #0xc0
	lsls r0, r0, #0x13
	adds r1, r1, r0
	str r1, [r5, #0x68]
	adds r0, r4, #0
	bl sub_08005E9C
	ldrb r0, [r5, #0x17]
	cmp r0, #5
	bhi _08008502
	lsls r0, r0, #2
	ldr r1, _080084B0 @ =_080084B4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080084B0: .4byte _080084B4
_080084B4: @ jump table
	.4byte _080084CC @ case 0
	.4byte _080084D4 @ case 1
	.4byte _080084D4 @ case 2
	.4byte _080084D4 @ case 3
	.4byte _080084EC @ case 4
	.4byte _08008502 @ case 5
_080084CC:
	movs r1, #0
	ldrsb r1, [r4, r1]
	adds r1, #0xd
	b _080084DA
_080084D4:
	movs r1, #0
	ldrsb r1, [r4, r1]
	adds r1, #0xb
_080084DA:
	movs r2, #1
	ldrsb r2, [r4, r2]
	ldrb r3, [r4, #3]
	movs r0, #7
	str r0, [sp]
	adds r0, r6, #0
	bl sub_080057C4
	b _08008502
_080084EC:
	movs r1, #0
	ldrsb r1, [r4, r1]
	adds r1, #0xc
	movs r2, #1
	ldrsb r2, [r4, r2]
	ldrb r3, [r4, #3]
	movs r0, #7
	str r0, [sp]
	adds r0, r6, #0
	bl sub_080057C4
_08008502:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800850C
sub_0800850C: @ 0x0800850C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	movs r1, #0
	movs r2, #0xc
	bl sub_08007FDC
	movs r0, #0
	movs r1, #1
	str r0, [r4, #8]
	str r1, [r4, #0xc]
	ldr r0, [r4, #0x1c]
	movs r1, #7
	bl sub_08004D0C
	ldr r1, [r5, #4]
	adds r0, r4, #0
	bl sub_0800819C
	ldr r0, [r4, #0x1c]
	movs r1, #6
	bl sub_08004D0C
	ldr r1, _0800858C @ =0x0830EC28
	adds r0, r4, #0
	bl sub_0800808C
	ldr r1, [r5, #8]
	adds r0, r4, #0
	bl sub_0800819C
	ldr r1, _08008590 @ =0x0830EC34
	ldrb r2, [r5, #0xc]
	adds r0, r4, #0
	bl sub_080081B0
	ldr r1, _08008594 @ =0x0830EC40
	ldrb r2, [r5, #0xd]
	adds r0, r4, #0
	bl sub_080081B0
	ldr r1, _08008598 @ =0x0830EC4C
	ldrb r2, [r5, #0xe]
	adds r0, r4, #0
	bl sub_080081B0
	ldr r1, _0800859C @ =0x0830EC58
	ldrb r2, [r5, #0xf]
	adds r0, r4, #0
	bl sub_080081B0
	adds r0, r4, #0
	movs r1, #0xd
	movs r2, #0x1c
	bl sub_08007FDC
	ldr r1, [r5, #0x10]
	adds r0, r4, #0
	bl sub_0800808C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800858C: .4byte 0x0830EC28
_08008590: .4byte 0x0830EC34
_08008594: .4byte 0x0830EC40
_08008598: .4byte 0x0830EC4C
_0800859C: .4byte 0x0830EC58

	thumb_func_start sub_080085A0
sub_080085A0: @ 0x080085A0
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	movs r1, #0
	movs r2, #0xa
	bl sub_08007FDC
	movs r0, #0
	movs r1, #1
	str r0, [r4, #8]
	str r1, [r4, #0xc]
	ldr r1, _08008620 @ =0x0830EC64
	ldrb r2, [r5, #4]
	adds r0, r4, #0
	bl sub_08008268
	ldr r1, _08008624 @ =0x0830EC70
	ldrb r2, [r5, #5]
	adds r0, r4, #0
	bl sub_08008268
	ldr r1, _08008628 @ =0x0830EC7C
	ldrb r2, [r5, #6]
	adds r0, r4, #0
	bl sub_08008268
	ldr r1, _0800862C @ =0x0830EC88
	ldrb r2, [r5, #7]
	adds r0, r4, #0
	bl sub_08008268
	ldr r1, _08008630 @ =0x0830EC94
	ldrb r2, [r5, #8]
	adds r0, r4, #0
	bl sub_08008268
	ldr r0, [r4, #0x1c]
	movs r1, #3
	bl sub_08004D0C
	ldr r1, _08008634 @ =0x0830ECA0
	adds r0, r4, #0
	bl sub_0800808C
	ldr r0, [r4, #0x1c]
	movs r1, #0
	bl sub_08004D0C
	ldr r1, [r5, #0xc]
	adds r0, r4, #0
	bl sub_0800819C
	adds r0, r4, #0
	movs r1, #0xb
	movs r2, #0x1a
	bl sub_08007FDC
	ldr r1, [r5, #0x10]
	adds r0, r4, #0
	bl sub_0800808C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08008620: .4byte 0x0830EC64
_08008624: .4byte 0x0830EC70
_08008628: .4byte 0x0830EC7C
_0800862C: .4byte 0x0830EC88
_08008630: .4byte 0x0830EC94
_08008634: .4byte 0x0830ECA0

	thumb_func_start sub_08008638
sub_08008638: @ 0x08008638
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	movs r1, #0
	movs r2, #0xa
	bl sub_08007FDC
	movs r0, #0
	movs r1, #1
	str r0, [r4, #8]
	str r1, [r4, #0xc]
	ldr r1, _08008694 @ =0x0830EC64
	ldrb r2, [r5, #4]
	adds r0, r4, #0
	bl sub_080082C8
	ldr r1, _08008698 @ =0x0830ECAC
	ldrb r2, [r5, #5]
	adds r0, r4, #0
	bl sub_08008328
	ldr r1, _0800869C @ =0x0830EC70
	ldrb r2, [r5, #6]
	adds r0, r4, #0
	bl sub_080082C8
	ldr r0, [r4, #0x1c]
	movs r1, #3
	bl sub_08004D0C
	ldr r1, _080086A0 @ =0x0830ECB8
	adds r0, r4, #0
	bl sub_0800808C
	ldr r0, [r4, #0x1c]
	movs r1, #0
	bl sub_08004D0C
	ldrb r0, [r5, #7]
	cmp r0, #0
	beq _080086A8
	ldr r1, _080086A4 @ =0x0830ECC4
	adds r0, r4, #0
	bl sub_0800819C
	b _080086B0
	.align 2, 0
_08008694: .4byte 0x0830EC64
_08008698: .4byte 0x0830ECAC
_0800869C: .4byte 0x0830EC70
_080086A0: .4byte 0x0830ECB8
_080086A4: .4byte 0x0830ECC4
_080086A8:
	ldr r1, _080086E8 @ =0x0830ECCC
	adds r0, r4, #0
	bl sub_0800819C
_080086B0:
	ldr r0, [r4, #0x1c]
	movs r1, #3
	bl sub_08004D0C
	ldr r1, _080086EC @ =0x0830ECD4
	adds r0, r4, #0
	bl sub_0800808C
	ldr r0, [r4, #0x1c]
	movs r1, #0
	bl sub_08004D0C
	ldr r1, [r5, #8]
	adds r0, r4, #0
	bl sub_0800808C
	adds r0, r4, #0
	movs r1, #0xb
	movs r2, #0x1a
	bl sub_08007FDC
	ldr r1, [r5, #0xc]
	adds r0, r4, #0
	bl sub_0800808C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080086E8: .4byte 0x0830ECCC
_080086EC: .4byte 0x0830ECD4

	thumb_func_start sub_080086F0
sub_080086F0: @ 0x080086F0
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	movs r1, #0
	movs r2, #0xa
	bl sub_08007FDC
	movs r0, #0
	movs r1, #1
	str r0, [r4, #8]
	str r1, [r4, #0xc]
	ldr r1, _0800875C @ =0x0830ECDC
	ldrb r2, [r5, #4]
	adds r0, r4, #0
	bl sub_080082C8
	ldr r1, _08008760 @ =0x0830ECEC
	ldrb r2, [r5, #5]
	adds r0, r4, #0
	bl sub_080082C8
	ldr r1, _08008764 @ =0x0830ECFC
	ldrb r2, [r5, #6]
	adds r0, r4, #0
	bl sub_080082C8
	ldr r0, [r4, #0x1c]
	movs r1, #3
	bl sub_08004D0C
	ldr r1, _08008768 @ =0x0830ECD4
	adds r0, r4, #0
	bl sub_0800808C
	ldr r0, [r4, #0x1c]
	movs r1, #0
	bl sub_08004D0C
	ldr r1, [r5, #8]
	adds r0, r4, #0
	bl sub_0800808C
	adds r0, r4, #0
	movs r1, #0xb
	movs r2, #0x1a
	bl sub_08007FDC
	ldr r1, [r5, #0xc]
	adds r0, r4, #0
	bl sub_0800808C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800875C: .4byte 0x0830ECDC
_08008760: .4byte 0x0830ECEC
_08008764: .4byte 0x0830ECFC
_08008768: .4byte 0x0830ECD4

	thumb_func_start sub_0800876C
sub_0800876C: @ 0x0800876C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	movs r1, #0
	movs r2, #0xb
	bl sub_08007FDC
	movs r0, #0
	movs r1, #1
	str r0, [r4, #8]
	str r1, [r4, #0xc]
	ldr r1, _080087C4 @ =0x0830ED0C
	ldrb r2, [r5, #4]
	adds r0, r4, #0
	bl sub_08008328
	ldr r0, [r4, #0x1c]
	movs r1, #3
	bl sub_08004D0C
	ldr r1, _080087C8 @ =0x0830ED20
	adds r0, r4, #0
	bl sub_0800808C
	ldr r0, [r4, #0x1c]
	movs r1, #0
	bl sub_08004D0C
	ldr r1, [r5, #8]
	adds r0, r4, #0
	bl sub_0800808C
	adds r0, r4, #0
	movs r1, #0xc
	movs r2, #0x1a
	bl sub_08007FDC
	ldr r1, [r5, #0xc]
	adds r0, r4, #0
	bl sub_0800808C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080087C4: .4byte 0x0830ED0C
_080087C8: .4byte 0x0830ED20

	thumb_func_start sub_080087CC
sub_080087CC: @ 0x080087CC
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	movs r1, #0
	movs r2, #0x1a
	bl sub_08007FDC
	movs r0, #0
	movs r1, #1
	str r0, [r4, #8]
	str r1, [r4, #0xc]
	ldr r0, [r4, #0x1c]
	movs r1, #0
	bl sub_08004D0C
	ldr r1, [r5, #4]
	adds r0, r4, #0
	bl sub_0800808C
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080087F8
sub_080087F8: @ 0x080087F8
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_08007EB0
	adds r0, r4, #0
	bl sub_08007F44
	adds r5, r0, #0
	adds r0, r4, #0
	bl sub_080083F0
	movs r0, #0
	str r0, [r4, #8]
	str r0, [r4, #0xc]
	ldr r0, [r4, #0x1c]
	movs r1, #2
	bl sub_08004D0C
	ldr r1, [r4, #0x18]
	adds r0, r4, #0
	bl sub_0800819C
	cmp r5, #0
	bne _08008844
	adds r0, r4, #0
	bl sub_08007FE8
	ldr r0, [r4, #0x1c]
	movs r1, #0
	bl sub_08004D0C
	ldr r1, _08008840 @ =0x0830ED2C
	adds r0, r4, #0
	bl sub_0800819C
	b _080088AA
	.align 2, 0
_08008840: .4byte 0x0830ED2C
_08008844:
	ldrb r0, [r4, #0x17]
	cmp r0, #5
	bhi _080088AA
	lsls r0, r0, #2
	ldr r1, _08008854 @ =_08008858
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08008854: .4byte _08008858
_08008858: @ jump table
	.4byte _08008870 @ case 0
	.4byte _0800887A @ case 1
	.4byte _08008884 @ case 2
	.4byte _0800888E @ case 3
	.4byte _08008898 @ case 4
	.4byte _080088A2 @ case 5
_08008870:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0800850C
	b _080088AA
_0800887A:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_080085A0
	b _080088AA
_08008884:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08008638
	b _080088AA
_0800888E:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_080086F0
	b _080088AA
_08008898:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0800876C
	b _080088AA
_080088A2:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_080087CC
_080088AA:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080088B0
sub_080088B0: @ 0x080088B0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x74
	adds r7, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	mov r8, r3
	add r4, sp, #0x70
	ldr r1, _08008958 @ =0x0830ED43
	adds r0, r4, #0
	movs r2, #3
	bl sub_0803DEBC
	movs r0, #0
	str r0, [sp]
	adds r0, r7, #0
	adds r1, r5, #0
	adds r2, r4, #0
	movs r3, #0
	bl sub_08007794
	add r0, sp, #4
	movs r1, #0
	adds r2, r5, #0
	adds r3, r6, #0
	bl sub_080087F8
	mov r0, r8
	cmp r0, #0
	bne _080088FA
	movs r0, #1
	bl sub_080059C4
	movs r0, #0x80
	bl sub_0800591C
_080088FA:
	add r0, sp, #4
	movs r1, #1
	bl sub_080083A8
	ldr r3, _0800895C @ =0x02000008
	ldrh r1, [r3]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r2, #0
	ands r0, r1
	add r6, sp, #0x24
	cmp r0, #0
	beq _08008928
	adds r5, r3, #0
	adds r4, r2, #0
_08008918:
	adds r0, r7, #0
	movs r1, #1
	bl sub_08009018
	ldrh r0, [r5]
	ands r0, r4
	cmp r0, #0
	bne _08008918
_08008928:
	mov r0, r8
	cmp r0, #0
	bne _0800893E
	ldr r0, _08008960 @ =0x05000100
	ldr r1, _08008964 @ =0x083D8534
	movs r2, #0x20
	bl sub_080002C4
	movs r0, #0
	bl sub_080059C4
_0800893E:
	adds r0, r6, #0
	bl sub_08005F9C
	add r0, sp, #4
	movs r1, #0
	bl sub_080083A8
	add sp, #0x74
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08008958: .4byte 0x0830ED43
_0800895C: .4byte 0x02000008
_08008960: .4byte 0x05000100
_08008964: .4byte 0x083D8534

	thumb_func_start sub_08008968
sub_08008968: @ 0x08008968
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	movs r1, #0xc1
	lsls r1, r1, #3
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r5, [r4]
	adds r0, r1, #0
	adds r0, #0x2d
	ldrb r0, [r0]
	cmp r0, #0
	bne _08008986
	movs r0, #1
	movs r6, #0
	b _08008998
_08008986:
	adds r0, r1, #0
	adds r0, #0x7c
	ldrh r7, [r0]
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r7, #0
	bl sub_08008CE4
	movs r6, #1
_08008998:
	cmp r0, #0
	beq _080089C8
	cmp r6, #0
	bne _080089B0
	ldr r1, _080089AC @ =0x0000060C
	adds r0, r4, r1
	adds r0, r0, r5
	ldrb r2, [r0]
	b _080089BC
	.align 2, 0
_080089AC: .4byte 0x0000060C
_080089B0:
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r7, #0
	bl sub_08008CA8
	adds r2, r0, #0
_080089BC:
	adds r0, r4, #0
	adds r1, r5, #0
	adds r3, r6, #0
	bl sub_080088B0
	b _080089CE
_080089C8:
	movs r0, #0x77
	bl sub_080005D8
_080089CE:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080089D4
sub_080089D4: @ 0x080089D4
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	movs r1, #0xc1
	lsls r1, r1, #3
	adds r0, r4, r1
	ldr r2, [r0]
	ldrb r5, [r4]
	subs r1, #0xe
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _080089F2
	movs r0, #1
	rsbs r0, r0, #0
	b _08008A3A
_080089F2:
	adds r0, r2, #0
	adds r0, #0x2d
	ldrb r1, [r0]
	adds r6, r0, #0
	cmp r1, #0
	beq _08008A1C
	adds r0, #0x4f
	ldrh r7, [r0]
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r7, #0
	bl sub_08008CC0
	cmp r0, #0
	bne _08008A1C
	movs r0, #0x77
	bl sub_080005D8
	movs r0, #1
	rsbs r0, r0, #0
	b _08008A3A
_08008A1C:
	ldrb r0, [r6]
	cmp r0, #0
	bne _08008A30
	ldr r1, _08008A2C @ =0x0000060C
	adds r0, r4, r1
	adds r0, r0, r5
	ldrb r0, [r0]
	b _08008A3A
	.align 2, 0
_08008A2C: .4byte 0x0000060C
_08008A30:
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r7, #0
	bl sub_08008CA8
_08008A3A:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08008A40
sub_08008A40: @ 0x08008A40
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	movs r1, #0xc1
	lsls r1, r1, #3
	adds r0, r5, r1
	ldr r4, [r0]
	ldrb r2, [r5]
	mov r8, r2
	adds r0, r5, #0
	bl sub_080089D4
	adds r7, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r7, r0
	beq _08008AD8
	movs r0, #1
	strb r0, [r5, #6]
	adds r0, r4, #0
	adds r0, #0x2d
	ldrb r0, [r0]
	rsbs r0, r0, #0
	lsrs r0, r0, #0x1f
	strb r0, [r5, #7]
	adds r0, r4, #0
	adds r0, #0x7c
	ldrh r0, [r0]
	strb r0, [r5, #8]
	ldr r1, _08008AE4 @ =0x00000612
	adds r0, r5, r1
	ldrb r0, [r0]
	strb r0, [r5, #9]
	bl sub_0800ADA8
	strh r0, [r5, #0xa]
	movs r4, #0
	adds r6, r5, #0
	adds r6, #0xc
	adds r3, r6, #0
	ldr r0, _08008AE8 @ =0x0000060C
	adds r2, r5, r0
_08008A96:
	adds r0, r3, r4
	adds r1, r2, r4
	ldrb r1, [r1]
	strb r1, [r0]
	adds r4, #1
	cmp r4, #4
	bls _08008A96
	mov r1, r8
	adds r0, r6, r1
	strb r7, [r0]
	movs r0, #0
	bl sub_0800AD4C
	movs r4, #0
_08008AB2:
	adds r0, r5, #0
	movs r1, #0
	bl sub_08009018
	lsls r0, r4, #1
	bl sub_0800A124
	adds r4, #1
	cmp r4, #8
	bls _08008AB2
	ldrb r0, [r5, #7]
	cmp r0, #0
	beq _08008AD8
	adds r0, r5, #1
	add r0, r8
	ldr r2, _08008AEC @ =0x00000611
	adds r1, r5, r2
	ldrb r1, [r1]
	strb r1, [r0]
_08008AD8:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08008AE4: .4byte 0x00000612
_08008AE8: .4byte 0x0000060C
_08008AEC: .4byte 0x00000611

	thumb_func_start sub_08008AF0
sub_08008AF0: @ 0x08008AF0
	push {lr}
	ldr r0, _08008B00 @ =0x05000180
	ldr r1, _08008B04 @ =0x083DC6D4
	movs r2, #0x40
	bl sub_080002C4
	pop {r0}
	bx r0
	.align 2, 0
_08008B00: .4byte 0x05000180
_08008B04: .4byte 0x083DC6D4

	thumb_func_start sub_08008B08
sub_08008B08: @ 0x08008B08
	push {r4, r5, r6, r7, lr}
	lsls r3, r2, #5
	adds r3, r3, r2
	lsls r3, r3, #6
	ldr r2, _08008B48 @ =0x083DC714
	adds r5, r3, r2
	movs r6, #0
	movs r7, #0xb0
	lsls r7, r7, #2
	lsls r2, r1, #4
	subs r2, r2, r1
	lsls r2, r2, #1
	adds r2, r2, r0
	lsls r2, r2, #6
	movs r0, #0xc0
	lsls r0, r0, #0x13
	adds r4, r2, r0
_08008B2A:
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r7, #0
	bl sub_08000314
	adds r5, r5, r7
	movs r0, #0xf0
	lsls r0, r0, #3
	adds r4, r4, r0
	adds r6, #1
	cmp r6, #2
	bls _08008B2A
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08008B48: .4byte 0x083DC714

	thumb_func_start sub_08008B4C
sub_08008B4C: @ 0x08008B4C
	push {r4, r5, r6, r7, lr}
	adds r5, r1, #0
	lsls r3, r2, #2
	ldr r4, _08008B94 @ =0x000005E4
	adds r1, r0, r4
	adds r1, r1, r3
	ldr r7, [r1]
	adds r1, r0, #1
	adds r1, r1, r2
	ldrb r1, [r1]
	strb r1, [r5]
	adds r0, #0x14
	adds r0, r0, r2
	ldrb r4, [r0]
	movs r3, #0
	movs r2, #0
	cmp r3, r4
	bhs _08008B88
	adds r6, r5, #1
	adds r1, r7, #0
_08008B74:
	ldrb r0, [r1, #1]
	cmp r0, #3
	bne _08008B80
	adds r0, r6, r3
	strb r2, [r0]
	adds r3, #1
_08008B80:
	adds r1, #8
	adds r2, #1
	cmp r2, r4
	blo _08008B74
_08008B88:
	adds r0, r5, #0
	adds r0, #0x65
	strb r3, [r0]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08008B94: .4byte 0x000005E4

	thumb_func_start sub_08008B98
sub_08008B98: @ 0x08008B98
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sl, r0
	adds r4, r1, #0
	mov sb, r2
	adds r0, r4, #0
	adds r0, #0x65
	ldrb r6, [r0]
	cmp r6, #1
	beq _08008BC2
	cmp r6, #2
	bne _08008BCE
	ldrb r0, [r4, #1]
	ldrb r1, [r4]
	cmp r0, r1
	bne _08008BC2
	ldrb r3, [r4, #2]
	b _08008BC4
_08008BC2:
	ldrb r3, [r4, #1]
_08008BC4:
	adds r5, r4, #0
	adds r5, #0x66
	adds r7, r4, #0
	adds r7, #0x67
	b _08008BFE
_08008BCE:
	movs r0, #0
	mov r8, r0
	adds r5, r4, #0
	adds r5, #0x66
	adds r7, r4, #0
	adds r7, #0x67
	b _08008BE0
_08008BDC:
	movs r1, #1
	add r8, r1
_08008BE0:
	mov r0, r8
	cmp r0, #4
	bhi _08008BFE
	bl sub_0803DF7C
	asrs r0, r0, #8
	adds r1, r6, #0
	bl sub_0803D350
	adds r1, r4, #1
	adds r1, r1, r0
	ldrb r3, [r1]
	ldrb r1, [r4]
	cmp r3, r1
	beq _08008BDC
_08008BFE:
	strb r3, [r5]
	mov r0, sl
	mov r1, sb
	adds r2, r3, #0
	bl sub_08008CA8
	strb r0, [r7]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08008C1C
sub_08008C1C: @ 0x08008C1C
	push {r4, r5, r6, lr}
	ldr r4, _08008CA4 @ =0xFFFFFDF4
	add sp, r4
	adds r6, r0, #0
	movs r0, #0x75
	bl sub_080005D8
	movs r5, #0
_08008C2C:
	movs r0, #0x68
	muls r0, r5, r0
	mov r4, sp
	adds r4, r4, r0
	adds r4, #4
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_08008B4C
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_08008B98
	adds r5, #1
	cmp r5, #4
	bls _08008C2C
	movs r5, #0
_08008C52:
	movs r0, #0x68
	muls r0, r5, r0
	add r0, sp
	adds r0, #4
	adds r0, #0x67
	ldrb r1, [r0]
	movs r2, #0
	ldrb r0, [r6]
	cmp r5, r0
	bne _08008C68
	movs r2, #1
_08008C68:
	adds r0, r5, #0
	bl sub_080073A4
	adds r5, #1
	cmp r5, #4
	bls _08008C52
	movs r5, #0
_08008C76:
	movs r0, #0x68
	muls r0, r5, r0
	add r0, sp
	adds r0, #4
	adds r0, #0x66
	ldrb r2, [r0]
	movs r0, #1
	str r0, [sp]
	adds r0, r6, #0
	adds r1, r5, #0
	movs r3, #0
	bl sub_08007668
	adds r5, #1
	cmp r5, #4
	bls _08008C76
	movs r3, #0x83
	lsls r3, r3, #2
	add sp, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08008CA4: .4byte 0xFFFFFDF4

	thumb_func_start sub_08008CA8
sub_08008CA8: @ 0x08008CA8
	lsls r1, r1, #2
	ldr r3, _08008CBC @ =0x000005E4
	adds r0, r0, r3
	adds r0, r0, r1
	ldr r0, [r0]
	lsls r2, r2, #3
	adds r0, r0, r2
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_08008CBC: .4byte 0x000005E4

	thumb_func_start sub_08008CC0
sub_08008CC0: @ 0x08008CC0
	push {lr}
	lsls r1, r1, #2
	ldr r3, _08008CE0 @ =0x000005E4
	adds r0, r0, r3
	adds r0, r0, r1
	ldr r0, [r0]
	lsls r2, r2, #3
	adds r0, r0, r2
	movs r1, #0
	ldrb r0, [r0, #1]
	cmp r0, #3
	bne _08008CDA
	movs r1, #1
_08008CDA:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0
_08008CE0: .4byte 0x000005E4

	thumb_func_start sub_08008CE4
sub_08008CE4: @ 0x08008CE4
	push {lr}
	lsls r1, r1, #2
	ldr r3, _08008D08 @ =0x000005E4
	adds r0, r0, r3
	adds r0, r0, r1
	ldr r0, [r0]
	lsls r2, r2, #3
	adds r0, r0, r2
	ldrb r0, [r0, #1]
	movs r1, #0
	subs r0, #2
	cmp r0, #1
	bhi _08008D00
	movs r1, #1
_08008D00:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0
_08008D08: .4byte 0x000005E4

	thumb_func_start sub_08008D0C
sub_08008D0C: @ 0x08008D0C
	push {r4, r5, r6, lr}
	sub sp, #0x100
	adds r5, r1, #0
	adds r6, r2, #0
	lsls r2, r5, #2
	ldr r3, _08008D3C @ =0x000005E4
	adds r1, r0, r3
	adds r1, r1, r2
	ldr r1, [r1]
	adds r0, #0x14
	adds r0, r0, r5
	ldrb r3, [r0]
	movs r2, #0
	cmp r2, r3
	bhs _08008D48
_08008D2A:
	ldrb r0, [r1, #1]
	cmp r0, #3
	bne _08008D40
	ldrb r0, [r1]
	cmp r0, r6
	bne _08008D40
	adds r0, r2, #0
	b _08008D64
	.align 2, 0
_08008D3C: .4byte 0x000005E4
_08008D40:
	adds r1, #8
	adds r2, #1
	cmp r2, r3
	blo _08008D2A
_08008D48:
	ldr r4, _08008D6C @ =0x0830ED48
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_0800FD0C
	adds r2, r0, #0
	mov r0, sp
	adds r1, r4, #0
	bl sub_0803DFE0
	mov r0, sp
	bl sub_080050A8
	movs r0, #0
_08008D64:
	add sp, #0x100
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08008D6C: .4byte 0x0830ED48

	thumb_func_start sub_08008D70
sub_08008D70: @ 0x08008D70
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	mov r8, r0
	movs r0, #1
	movs r1, #0
	bl sub_08005DB0
	bl sub_08005A50
	ldr r1, _08008E24 @ =0x04000008
	ldr r2, _08008E28 @ =0x00001F81
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	ldr r3, _08008E2C @ =0x00001E82
	adds r0, r3, #0
	strh r0, [r1]
	adds r1, #2
	movs r2, #0xec
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	subs r1, #0xc
	movs r3, #0xba
	lsls r3, r3, #5
	adds r0, r3, #0
	strh r0, [r1]
	movs r7, #0
	movs r2, #0
_08008DB2:
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #7
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r4, r0, r1
	movs r6, #0
	adds r3, r2, #1
_08008DC2:
	ldr r0, _08008E30 @ =0x083D8AF4
	adds r0, r7, r0
	ldrb r1, [r0]
	adds r7, #1
	lsls r1, r1, #5
	ldr r0, _08008E34 @ =0x083D8554
	adds r5, r1, r0
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x80
	str r3, [sp, #0xc]
	bl sub_08000F78
	adds r4, #0x40
	adds r6, #1
	ldr r3, [sp, #0xc]
	cmp r6, #0xe
	bls _08008DC2
	adds r2, r3, #0
	cmp r2, #0x11
	bls _08008DB2
	ldr r0, _08008E38 @ =0x083D8534
	ldr r1, _08008E3C @ =0x05000100
	ldr r2, _08008E24 @ =0x04000008
	bl sub_0803D348
	ldr r0, _08008E40 @ =0x00000603
	add r0, r8
	ldrb r0, [r0]
	cmp r0, #0
	beq _08008E0E
	mov r2, r8
	ldrb r0, [r2, #9]
	cmp r0, #0
	bne _08008E0E
	movs r0, #1
	bl sub_080071B4
_08008E0E:
	ldr r0, _08008E44 @ =0x00000601
	add r0, r8
	ldrb r0, [r0]
	cmp r0, #0
	beq _08008E48
	mov r0, r8
	movs r1, #2
	bl sub_08007B0C
	b _08008E50
	.align 2, 0
_08008E24: .4byte 0x04000008
_08008E28: .4byte 0x00001F81
_08008E2C: .4byte 0x00001E82
_08008E30: .4byte 0x083D8AF4
_08008E34: .4byte 0x083D8554
_08008E38: .4byte 0x083D8534
_08008E3C: .4byte 0x05000100
_08008E40: .4byte 0x00000603
_08008E44: .4byte 0x00000601
_08008E48:
	mov r0, r8
	movs r1, #0
	bl sub_08007B0C
_08008E50:
	ldr r4, _08008FA8 @ =0x030013B0
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	bl sub_08004CF0
	ldr r0, _08008FAC @ =0x000005FC
	add r0, r8
	ldr r3, [r0]
	movs r0, #7
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #7
	movs r2, #0
	bl sub_08004E6C
	bl sub_08008AF0
	ldr r0, _08008FB0 @ =0x0000060C
	add r0, r8
	ldrb r0, [r0]
	bl sub_08006ACC
	adds r4, r0, #0
	movs r1, #1
	bl sub_08007264
	ldr r0, _08008FB4 @ =0x00000635
	add r0, r8
	strb r4, [r0]
	ldr r0, _08008FB8 @ =0x00000636
	add r0, r8
	strb r4, [r0]
	ldr r5, _08008FBC @ =0x083DB20C
	ldr r4, _08008FC0 @ =0x0600A500
	movs r7, #0
_08008E98:
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0xb0
	bl sub_08000EE0
	adds r4, #0x40
	adds r5, #0x20
	adds r7, #1
	cmp r7, #0x9f
	bls _08008E98
	ldr r4, _08008FC4 @ =0x0600E800
	ldr r0, _08008FC8 @ =0x03FF03FF
	str r0, [sp, #4]
	ldr r2, _08008FCC @ =0x05000200
	add r0, sp, #4
	adds r1, r4, #0
	bl sub_0803D348
	movs r3, #0
	mov sb, r3
	movs r7, #0
	movs r2, #0
	adds r4, #6
	mov ip, r4
	ldr r0, _08008FD0 @ =0x083DB1EC
	mov sl, r0
	ldr r1, _08008FD4 @ =0x083DC60C
	movs r5, #0xa5
	lsls r5, r5, #2
_08008ED2:
	mov r3, sb
	adds r0, r3, r2
	lsls r0, r0, #6
	mov r3, ip
	adds r4, r0, r3
	movs r6, #0
	adds r3, r2, #1
_08008EE0:
	adds r0, r7, r1
	ldrb r0, [r0]
	adds r0, r0, r5
	adds r7, #1
	strh r0, [r4]
	adds r4, #2
	adds r6, #1
	cmp r6, #0x18
	bls _08008EE0
	adds r2, r3, #0
	cmp r2, #7
	bls _08008ED2
	mov r5, sl
	ldr r1, _08008FD8 @ =0x05000160
	ldr r2, _08008FDC @ =0x04000008
	adds r0, r5, #0
	bl sub_0803D348
	ldr r1, _08008FE0 @ =0x0400001A
	ldr r2, _08008FE4 @ =0x0000FF60
	adds r0, r2, #0
	strh r0, [r1]
	ldr r5, _08008FB0 @ =0x0000060C
	add r5, r8
	ldrb r0, [r5]
	bl sub_08006AC0
	movs r1, #0xc4
	lsls r1, r1, #3
	add r1, r8
	movs r6, #0
	strb r0, [r1]
	mov r3, r8
	ldrb r0, [r3, #7]
	cmp r0, #0
	beq _08008F40
	ldrb r4, [r3]
	ldrb r2, [r3, #8]
	mov r0, r8
	adds r0, #1
	adds r0, r0, r4
	strb r2, [r0]
	mov r0, r8
	adds r1, r4, #0
	bl sub_08008CA8
	adds r4, r5, r4
	strb r0, [r4]
_08008F40:
	mov r0, r8
	bl sub_080073F0
	ldr r5, _08008FE8 @ =0x00000602
	add r5, r8
	ldrb r0, [r5]
	cmp r0, #0
	bne _08008F6A
	add r4, sp, #8
	ldr r1, _08008FEC @ =0x0830E99F
	adds r0, r4, #0
	movs r2, #3
	bl sub_0803DEBC
	str r6, [sp]
	mov r0, r8
	movs r1, #0
	adds r2, r4, #0
	movs r3, #0
	bl sub_08007794
_08008F6A:
	mov r1, r8
	ldrb r0, [r1, #7]
	cmp r0, #0
	beq _08008F82
	ldrb r1, [r1, #8]
	mov r0, r8
	bl sub_08007CE0
	bl sub_08006B68
	mov r2, r8
	strb r6, [r2, #7]
_08008F82:
	mov r3, r8
	ldrb r0, [r3, #6]
	cmp r0, #0
	beq _08008FF0
	movs r7, #0
	movs r4, #0x10
_08008F8E:
	mov r0, r8
	movs r1, #0
	bl sub_08009018
	adds r0, r4, #0
	bl sub_0800A124
	subs r4, #2
	adds r7, #1
	cmp r7, #8
	bls _08008F8E
	b _08009004
	.align 2, 0
_08008FA8: .4byte 0x030013B0
_08008FAC: .4byte 0x000005FC
_08008FB0: .4byte 0x0000060C
_08008FB4: .4byte 0x00000635
_08008FB8: .4byte 0x00000636
_08008FBC: .4byte 0x083DB20C
_08008FC0: .4byte 0x0600A500
_08008FC4: .4byte 0x0600E800
_08008FC8: .4byte 0x03FF03FF
_08008FCC: .4byte 0x05000200
_08008FD0: .4byte 0x083DB1EC
_08008FD4: .4byte 0x083DC60C
_08008FD8: .4byte 0x05000160
_08008FDC: .4byte 0x04000008
_08008FE0: .4byte 0x0400001A
_08008FE4: .4byte 0x0000FF60
_08008FE8: .4byte 0x00000602
_08008FEC: .4byte 0x0830E99F
_08008FF0:
	ldrb r0, [r5]
	cmp r0, #0
	beq _08008FFE
	mov r0, r8
	bl sub_080074A0
	b _08009004
_08008FFE:
	ldr r0, _08009014 @ =sub_0803D380
	bl sub_0800A1A4
_08009004:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08009014: .4byte sub_0803D380

	thumb_func_start sub_08009018
sub_08009018: @ 0x08009018
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r5, r0, #0
	adds r6, r1, #0
	movs r1, #0xc1
	lsls r1, r1, #3
	adds r0, r5, r1
	ldr r4, [r0]
	bl sub_0803D380
	bl sub_08000BC0
	adds r0, r5, #0
	bl sub_08006BE0
	ldr r1, _0800909C @ =0x0830E99F
	add r0, sp, #4
	movs r2, #3
	bl sub_0803DEBC
	adds r4, #0x2d
	ldrb r0, [r4]
	cmp r0, #0
	beq _08009052
	add r1, sp, #4
	movs r0, #0
	strb r0, [r1, #1]
	movs r0, #1
	strb r0, [r1, #2]
_08009052:
	cmp r6, #1
	bne _0800905E
	add r0, sp, #4
	movs r1, #0
	strb r1, [r0, #1]
	strb r1, [r0, #2]
_0800905E:
	ldrb r1, [r5]
	movs r0, #0
	str r0, [sp]
	adds r0, r5, #0
	add r2, sp, #4
	movs r3, #0
	bl sub_08007794
	ldr r1, _080090A0 @ =0x00000603
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08009082
	ldrb r1, [r5]
	adds r0, r5, #0
	movs r2, #1
	bl sub_08007574
_08009082:
	adds r0, r5, #0
	bl sub_08007924
	ldr r0, _080090A4 @ =0x00000614
	adds r1, r5, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800909C: .4byte 0x0830E99F
_080090A0: .4byte 0x00000603
_080090A4: .4byte 0x00000614

	thumb_func_start sub_080090A8
sub_080090A8: @ 0x080090A8
	push {r4, r5, r6, lr}
	sub sp, #0x8c
	adds r5, r0, #0
	ldr r0, _08009164 @ =0x0200C190
	str r5, [r0]
	bl sub_08000B84
	bl sub_0800469C
	ldr r4, _08009168 @ =0x02001CC0
	movs r1, #0x90
	lsls r1, r1, #7
	adds r0, r4, #0
	bl sub_0800459C
	movs r2, #0xc5
	lsls r2, r2, #3
	adds r1, r5, r2
	str r0, [r1]
	movs r1, #0x90
	lsls r1, r1, #6
	adds r0, r4, #0
	bl sub_0800459C
	movs r2, #0xc6
	lsls r2, r2, #3
	adds r1, r5, r2
	str r0, [r1]
	ldr r0, _0800916C @ =0x00000607
	adds r1, r5, r0
	movs r0, #0
	strb r0, [r1]
	movs r1, #0xc1
	lsls r1, r1, #3
	adds r0, r5, r1
	add r2, sp, #4
	str r2, [r0]
	movs r4, #0
	mov r6, sp
	adds r6, #0x31
_080090F8:
	adds r0, r5, #1
	adds r0, r0, r4
	ldrb r2, [r0]
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08008CA8
	ldr r2, _08009170 @ =0x0000060C
	adds r1, r5, r2
	adds r1, r1, r4
	strb r0, [r1]
	adds r4, #1
	cmp r4, #4
	bls _080090F8
	ldr r1, _08009174 @ =0x00000612
	adds r0, r5, r1
	movs r1, #0
	strb r1, [r0]
	adds r2, #8
	adds r0, r5, r2
	str r1, [r0]
	adds r2, #4
	adds r0, r5, r2
	strb r1, [r0]
	adds r2, #9
	adds r0, r5, r2
	strb r1, [r0]
	adds r2, #0xb
	adds r0, r5, r2
	strb r1, [r0]
	ldr r0, _08009178 @ =0x00000634
	adds r1, r5, r0
	movs r0, #0xff
	strb r0, [r1]
	add r0, sp, #4
	bl sub_08007CD4
	adds r0, r5, #0
	bl sub_08008D70
	ldrb r4, [r5, #6]
	cmp r4, #0
	beq _0800917C
	movs r2, #0xa
	ldrsh r1, [r5, r2]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _080091AA
	adds r0, r1, #0
	bl sub_0800ACD0
	b _080091AA
	.align 2, 0
_08009164: .4byte 0x0200C190
_08009168: .4byte 0x02001CC0
_0800916C: .4byte 0x00000607
_08009170: .4byte 0x0000060C
_08009174: .4byte 0x00000612
_08009178: .4byte 0x00000634
_0800917C:
	ldrb r0, [r5, #0x11]
	cmp r0, #0
	beq _0800919C
	movs r1, #0x12
	ldrsh r0, [r5, r1]
	bl sub_0800ACD0
	strb r4, [r5, #0x11]
	b _080091AA
_0800918E:
	ldr r2, _08009198 @ =0x00000607
	adds r1, r5, r2
	movs r0, #1
	strb r0, [r1]
	b _080092EA
	.align 2, 0
_08009198: .4byte 0x00000607
_0800919C:
	movs r1, #0xc0
	lsls r1, r1, #3
	adds r0, r5, r1
	ldrb r0, [r0]
	movs r1, #0xb6
	bl sub_0800AC88
_080091AA:
	ldrb r0, [r5, #9]
	cmp r0, #0
	beq _080091BC
	ldr r2, _080091C4 @ =0x00000612
	adds r0, r5, r2
	movs r2, #0
	movs r1, #1
	strb r1, [r0]
	strb r2, [r5, #9]
_080091BC:
	movs r0, #0
	strb r0, [r5, #6]
	b _080092A4
	.align 2, 0
_080091C4: .4byte 0x00000612
_080091C8:
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	bne _0800918E
	ldr r1, _080091F8 @ =0x00000604
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08009200
	movs r0, #4
	ands r0, r2
	cmp r0, #0
	beq _08009200
	ldr r0, _080091FC @ =0x00000612
	adds r2, r5, r0
	ldrb r0, [r2]
	movs r1, #1
	eors r0, r1
	strb r0, [r2]
	ldrb r1, [r2]
	adds r0, r5, #0
	bl sub_08007980
	b _08009296
	.align 2, 0
_080091F8: .4byte 0x00000604
_080091FC: .4byte 0x00000612
_08009200:
	ldr r0, _08009228 @ =0x02000008
	ldrh r1, [r0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08009230
	ldrh r1, [r3]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08009230
	ldr r1, _0800922C @ =0x00000601
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08009230
	adds r0, r5, #0
	bl sub_08008C1C
	b _08009296
	.align 2, 0
_08009228: .4byte 0x02000008
_0800922C: .4byte 0x00000601
_08009230:
	ldrb r0, [r6]
	cmp r0, #0
	bne _08009254
	ldrh r1, [r3]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08009254
	ldr r2, _08009274 @ =0x00000601
	adds r0, r5, r2
	ldrb r0, [r0]
	cmp r0, #0
	bne _080092EA
	adds r0, r5, #0
	movs r1, #1
	rsbs r1, r1, #0
	bl sub_08007CE0
_08009254:
	adds r0, r5, #0
	bl sub_08007DD4
	ldr r0, _08009278 @ =0x02000020
	ldrh r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _0800927C
	adds r0, r5, #0
	bl sub_08008968
	b _08009296
	.align 2, 0
_08009274: .4byte 0x00000601
_08009278: .4byte 0x02000020
_0800927C:
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08009296
	adds r0, r5, #0
	bl sub_08008A40
	ldrb r0, [r5, #6]
	cmp r0, #0
	beq _08009296
	b _08009432
_08009296:
	adds r0, r5, #0
	bl sub_08007B54
	adds r0, r5, #0
	movs r1, #0
	bl sub_08009018
_080092A4:
	ldrb r0, [r6]
	cmp r0, #0
	bne _08009254
	ldr r0, _080092C4 @ =0x02000004
	ldrh r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080092C8
	adds r0, r5, #0
	movs r1, #1
	rsbs r1, r1, #0
	bl sub_08007648
	b _08009296
	.align 2, 0
_080092C4: .4byte 0x02000004
_080092C8:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080092DA
	adds r0, r5, #0
	movs r1, #1
	bl sub_08007648
	b _08009296
_080092DA:
	ldr r1, _08009440 @ =0x02000020
	ldrh r2, [r1]
	movs r0, #8
	ands r0, r2
	adds r3, r1, #0
	cmp r0, #0
	bne _080092EA
	b _080091C8
_080092EA:
	bl sub_0803D380
	movs r0, #0
	str r0, [sp]
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl sub_08007794
	movs r1, #0xc0
	lsls r1, r1, #3
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #1
	beq _0800930E
	cmp r0, #3
	bne _0800932C
_0800930E:
	ldr r2, _08009444 @ =0x000005F9
	adds r0, r5, r2
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800932C
	movs r1, #1
	adds r2, #0xb
	adds r0, r5, r2
	ldrb r0, [r0]
	cmp r0, #0
	bne _08009326
	movs r1, #4
_08009326:
	adds r0, r1, #0
	bl sub_0800ACB0
_0800932C:
	ldr r1, _08009448 @ =0x00000601
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800933C
	movs r0, #0x58
	bl sub_080005D8
_0800933C:
	bl sub_08006B68
	movs r1, #0
	ldr r2, _0800944C @ =0x00000604
	adds r0, r5, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _08009358
	adds r2, #1
	adds r0, r5, r2
	ldrb r0, [r0]
	cmp r0, #0
	bne _08009358
	movs r1, #1
_08009358:
	cmp r1, #0
	bne _0800936E
	ldrb r4, [r5]
	ldr r1, _08009450 @ =0x0000060C
	adds r0, r5, r1
	adds r0, r0, r4
	ldrb r1, [r0]
	adds r0, r4, #0
	movs r2, #0
	bl sub_080073A4
_0800936E:
	ldr r2, _0800944C @ =0x00000604
	adds r4, r5, r2
	ldrb r0, [r4]
	cmp r0, #0
	beq _08009382
	ldr r1, _08009454 @ =0x00000605
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08009422
_08009382:
	ldr r2, _08009458 @ =0x00000612
	adds r0, r5, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800939A
	ldr r1, _08009450 @ =0x0000060C
	adds r0, r5, r1
	ldrb r1, [r0]
	adds r0, r5, #0
	movs r2, #0
	bl sub_08006C4C
_0800939A:
	ldr r2, _0800945C @ =0x00000603
	adds r0, r5, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _080093A8
	bl sub_08007230
_080093A8:
	ldr r0, _08009460 @ =0x030013B0
	movs r1, #0
	movs r2, #0x12
	movs r3, #0x1e
	bl sub_08004D2C
	ldrb r0, [r4]
	cmp r0, #0
	bne _080093D6
	adds r0, r5, #0
	bl sub_08007A38
	movs r0, #0x14
	bl sub_08000B68
	ldr r1, _08009454 @ =0x00000605
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _080093E0
	movs r0, #0xa
	bl sub_08000B68
_080093D6:
	ldr r2, _08009454 @ =0x00000605
	adds r0, r5, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _080093F4
_080093E0:
	bl sub_08007A90
	ldr r1, _08009444 @ =0x000005F9
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _080093FE
	movs r0, #0x21
	bl sub_08000B68
_080093F4:
	ldr r2, _08009444 @ =0x000005F9
	adds r0, r5, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _08009422
_080093FE:
	ldr r1, _08009450 @ =0x0000060C
	adds r0, r5, r1
	bl sub_0800BDAC
	cmp r0, #0
	beq _08009414
	movs r0, #1
	strb r0, [r5, #0x11]
	bl sub_0800ADA8
	strh r0, [r5, #0x12]
_08009414:
	movs r2, #0xc0
	lsls r2, r2, #3
	adds r0, r5, r2
	ldrb r0, [r0]
	movs r1, #0
	bl sub_0800AC9C
_08009422:
	ldr r1, _08009464 @ =0x00000606
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08009432
	ldr r0, _08009468 @ =sub_0803D380
	bl sub_0800A160
_08009432:
	ldr r0, _0800946C @ =0x02001CC0
	bl sub_08004594
	add sp, #0x8c
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08009440: .4byte 0x02000020
_08009444: .4byte 0x000005F9
_08009448: .4byte 0x00000601
_0800944C: .4byte 0x00000604
_08009450: .4byte 0x0000060C
_08009454: .4byte 0x00000605
_08009458: .4byte 0x00000612
_0800945C: .4byte 0x00000603
_08009460: .4byte 0x030013B0
_08009464: .4byte 0x00000606
_08009468: .4byte sub_0803D380
_0800946C: .4byte 0x02001CC0

	thumb_func_start sub_08009470
sub_08009470: @ 0x08009470
	push {r4, lr}
	ldr r4, _080094B4 @ =0xFFFFF9C0
	add sp, r4
	adds r4, r0, #0
	bl sub_0800A0F0
	mov r0, sp
	adds r1, r4, #0
	bl sub_080139A4
	mov r0, sp
	bl sub_080090A8
	mov r0, sp
	ldrb r0, [r0, #1]
	str r0, [r4]
	mov r0, sp
	ldrb r0, [r0, #2]
	str r0, [r4, #4]
	mov r0, sp
	ldrb r0, [r0, #3]
	str r0, [r4, #8]
	mov r0, sp
	ldrb r0, [r0, #4]
	str r0, [r4, #0xc]
	mov r0, sp
	ldrb r0, [r0, #5]
	str r0, [r4, #0x10]
	movs r3, #0xc8
	lsls r3, r3, #3
	add sp, r3
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080094B4: .4byte 0xFFFFF9C0

	thumb_func_start sub_080094B8
sub_080094B8: @ 0x080094B8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	mov r8, r0
	adds r6, r1, #0
	adds r7, r2, #0
	adds r5, r3, #0
	ldr r1, [sp, #0x1c]
	ldr r4, _080094DC @ =0x030013D0
	cmp r1, #0
	bne _080094E0
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08004D2C
	b _0800950C
	.align 2, 0
_080094DC: .4byte 0x030013D0
_080094E0:
	movs r2, #0
	ldr r0, [sp, #0x20]
	cmp r0, #1
	bne _080094EA
	movs r2, #3
_080094EA:
	cmp r1, #1
	bne _080094F0
	movs r2, #1
_080094F0:
	adds r0, r4, #0
	movs r1, #1
	bl sub_08004CF0
	mov r0, r8
	bl sub_08006A6C
	adds r3, r0, #0
	str r5, [sp]
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r7, #0
	bl sub_08004E6C
_0800950C:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08009518
sub_08009518: @ 0x08009518
	push {r4, r5, r6, lr}
	sub sp, #0x8c
	adds r6, r0, #0
	bl sub_08000B84
	bl sub_0800469C
	movs r0, #0
	movs r1, #2
	bl sub_08005DB0
	bl sub_08005A50
	ldr r5, _080095F8 @ =0x0830ED58
	ldr r4, _080095FC @ =0x030013B0
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
	bl sub_080069F4
	add r1, sp, #4
	movs r2, #0
	strh r0, [r1]
	strb r2, [r1, #2]
	strb r2, [r1, #3]
	adds r2, r1, #0
	movs r1, #0xc
	strb r1, [r2, #4]
	movs r1, #7
	strb r1, [r2, #5]
	ldr r1, _08009600 @ =sub_080094B8
	str r1, [sp, #0xc]
	ldr r2, [r6]
	subs r1, r0, #1
	cmp r1, r2
	ble _08009576
	adds r1, r2, #0
_08009576:
	add r0, sp, #4
	strh r1, [r0, #0xc]
	bl sub_080066B8
	add r0, sp, #4
	movs r4, #1
	strb r4, [r0, #3]
	bl sub_0800663C
	add r0, sp, #4
	strb r4, [r0, #0xe]
	bl sub_08006768
	mov r4, sp
	adds r4, #0x33
_08009594:
	add r0, sp, #4
	bl sub_080067EC
	bl sub_0803D380
	bl sub_08000BC0
	movs r0, #0xe0
	lsls r0, r0, #0x13
	bl sub_08005C74
	ldrb r0, [r4]
	cmp r0, #0
	beq _08009594
	add r0, sp, #4
	ldrh r0, [r0, #0xc]
	bl sub_08006A6C
	adds r5, r0, #0
	ldr r4, _080095FC @ =0x030013B0
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
	movs r0, #0xb6
	movs r1, #6
	bl sub_08000608
	movs r0, #0x28
	bl sub_08000B68
	bl sub_080006F8
	add r0, sp, #4
	ldrh r0, [r0, #0xc]
	str r0, [r6]
	add sp, #0x8c
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080095F8: .4byte 0x0830ED58
_080095FC: .4byte 0x030013B0
_08009600: .4byte sub_080094B8

	thumb_func_start sub_08009604
sub_08009604: @ 0x08009604
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	mov r8, r0
	adds r4, r1, #0
	adds r5, r2, #0
	adds r6, r3, #0
	ldr r0, [sp, #0x1c]
	ldr r7, _08009624 @ =0x030013B0
	cmp r0, #0
	bne _08009628
	adds r0, r7, #0
	bl sub_08004D2C
	b _08009666
	.align 2, 0
_08009624: .4byte 0x030013B0
_08009628:
	movs r2, #0
	cmp r0, #1
	bne _08009630
	movs r2, #2
_08009630:
	adds r0, r7, #0
	movs r1, #1
	bl sub_08004CF0
	ldr r0, _08009674 @ =0x02001D10
	ldr r1, [r0]
	mov r2, r8
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r3, [r0]
	str r6, [sp]
	adds r0, r7, #0
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_08004E6C
	ldr r0, [sp, #0x20]
	cmp r0, #0
	beq _08009666
	movs r0, #0xf
	str r0, [sp]
	adds r0, r7, #0
	adds r1, r4, #0
	adds r2, r5, #0
	adds r3, r6, #0
	bl sub_08004D5C
_08009666:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08009674: .4byte 0x02001D10

	thumb_func_start sub_08009678
sub_08009678: @ 0x08009678
	push {lr}
	adds r1, r0, #0
	movs r2, #0
	b _08009684
_08009680:
	adds r1, #4
	adds r2, #1
_08009684:
	ldr r0, [r1]
	cmp r0, #0
	bne _08009680
	adds r0, r2, #0
	pop {r1}
	bx r1

	thumb_func_start sub_08009690
sub_08009690: @ 0x08009690
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r6, #0
	movs r4, #0
	ldrh r0, [r5, #0xa]
	cmp r6, r0
	bhs _080096B8
_0800969E:
	ldr r0, [r5, #4]
	lsls r1, r4, #2
	adds r1, r1, r0
	ldr r0, [r1]
	bl sub_08004954
	cmp r0, r6
	bls _080096B0
	adds r6, r0, #0
_080096B0:
	adds r4, #1
	ldrh r0, [r5, #0xa]
	cmp r4, r0
	blo _0800969E
_080096B8:
	adds r0, r6, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_080096C0
sub_080096C0: @ 0x080096C0
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	ldr r4, _080096F4 @ =0x030013B0
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	bl sub_08004CF0
	movs r5, #0
	ldr r0, _080096F8 @ =0x0000FFFF
	strh r0, [r4, #0x1c]
	movs r0, #0x1e
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x12
	adds r3, r6, #0
	bl sub_08004EC0
	strh r5, [r4, #0x1c]
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080096F4: .4byte 0x030013B0
_080096F8: .4byte 0x0000FFFF

	thumb_func_start sub_080096FC
sub_080096FC: @ 0x080096FC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x88
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	cmp r6, #0
	bne _0800970E
	bl sub_0800101C
_0800970E:
	ldr r0, [r5, #4]
	bl sub_08009678
	movs r7, #0
	strh r0, [r5, #0xa]
	ldrh r1, [r5, #8]
	ldrh r0, [r5, #0xa]
	subs r0, #1
	cmp r0, r1
	ble _08009724
	adds r0, r1, #0
_08009724:
	strh r0, [r5, #8]
	ldr r1, _080097BC @ =0x02001D10
	ldr r0, [r5, #4]
	str r0, [r1]
	bl sub_08000B84
	bl sub_0800469C
	cmp r6, #0
	bne _0800974A
	movs r0, #1
	movs r1, #2
	bl sub_08005DB0
	bl sub_08005A50
	adds r0, r4, #0
	bl sub_080096C0
_0800974A:
	adds r0, r5, #0
	bl sub_08009690
	adds r3, r0, #0
	movs r1, #8
	cmp r1, r3
	bge _0800975A
	adds r1, r3, #0
_0800975A:
	movs r0, #0x1c
	cmp r0, r1
	ble _08009762
	adds r0, r1, #0
_08009762:
	adds r3, r0, #0
	movs r0, #9
	cmp r6, #0
	bne _0800976C
	movs r0, #8
_0800976C:
	ldrh r1, [r5, #0xa]
	adds r2, r0, #0
	cmp r2, r1
	ble _08009776
	adds r2, r1, #0
_08009776:
	mov r0, sp
	strh r1, [r0]
	strb r7, [r0, #2]
	strb r7, [r0, #3]
	strb r3, [r0, #4]
	strb r2, [r0, #5]
	ldr r0, _080097C0 @ =sub_08009604
	str r0, [sp, #8]
	mov r1, sp
	ldrh r0, [r5, #8]
	strh r0, [r1, #0xc]
	mov r0, sp
	bl sub_080066B8
	cmp r6, #0
	bne _080097A0
	mov r1, sp
	mov r0, sp
	ldrb r0, [r0, #3]
	subs r0, #1
	strb r0, [r1, #3]
_080097A0:
	mov r0, sp
	bl sub_0800663C
	mov r0, sp
	movs r1, #1
	strb r1, [r0, #0xe]
	strb r1, [r0, #0x14]
	strb r1, [r0, #0x16]
	bl sub_08006768
	mov r4, sp
	adds r4, #0x2f
	b _080097CA
	.align 2, 0
_080097BC: .4byte 0x02001D10
_080097C0: .4byte sub_08009604
_080097C4:
	mov r0, sp
	bl sub_080067EC
_080097CA:
	bl sub_0803D380
	bl sub_08000BC0
	movs r0, #0xe0
	lsls r0, r0, #0x13
	bl sub_08005C74
	ldrb r1, [r4]
	cmp r1, #0
	beq _080097C4
	cmp r6, #0
	bne _080097FA
	mov r0, sp
	ldrh r0, [r0, #0xc]
	ldr r1, [r5, #4]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_080096C0
	movs r0, #0x14
	bl sub_08000B68
_080097FA:
	mov r1, sp
	ldrh r1, [r1, #0xc]
	strh r1, [r5, #8]
	add sp, #0x88
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08009808
sub_08009808: @ 0x08009808
	push {lr}
	adds r3, r0, #0
	adds r2, r1, #0
	movs r0, #0
	adds r1, r3, #0
	bl sub_080096FC
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0800981C
sub_0800981C: @ 0x0800981C
	push {lr}
	sub sp, #0x10
	str r1, [sp, #4]
	mov r1, sp
	strh r2, [r1, #8]
	bl sub_08009808
	mov r0, sp
	ldrh r0, [r0, #8]
	add sp, #0x10
	pop {r1}
	bx r1

	thumb_func_start sub_08009834
sub_08009834: @ 0x08009834
	push {lr}
	adds r2, r0, #0
	movs r3, #0
	b _08009840
_0800983C:
	adds r2, #4
	adds r3, #1
_08009840:
	ldr r0, [r2]
	cmp r0, #0
	bne _0800983C
	adds r0, r1, #0
	cmp r0, r3
	ble _0800984E
	adds r0, r3, #0
_0800984E:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08009854
sub_08009854: @ 0x08009854
	push {lr}
	ldrb r2, [r0, #1]
	cmp r1, r2
	bhs _0800987C
	ldr r0, [r0, #4]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	ldr r0, [r1, #4]
	cmp r0, #0
	beq _0800986E
	movs r0, #1
	b _0800987E
_0800986E:
	ldrh r0, [r1, #8]
	cmp r0, #0
	bne _08009878
	movs r0, #2
	b _0800987E
_08009878:
	movs r0, #3
	b _0800987E
_0800987C:
	movs r0, #0
_0800987E:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08009884
sub_08009884: @ 0x08009884
	push {r4, r5, r6, r7, lr}
	adds r4, r1, #0
	adds r5, r2, #0
	adds r6, r3, #0
	ldr r7, [sp, #0x14]
	ldrb r0, [r0]
	cmp r0, #1
	bne _080098A0
	movs r0, #0
	str r0, [r5]
	lsls r0, r4, #1
	str r0, [r6]
	movs r0, #0x1e
	b _080098C6
_080098A0:
	adds r0, r4, #0
	movs r1, #0xa
	bl sub_0803D34C
	lsls r1, r0, #4
	subs r1, r1, r0
	str r1, [r5]
	adds r0, r4, #0
	movs r1, #0xa
	bl sub_0803D350
	lsls r0, r0, #1
	str r0, [r6]
	movs r0, #0xf
	str r0, [r7]
	ldr r0, [r5]
	cmp r0, #0
	bne _080098C8
	movs r0, #0xe
_080098C6:
	str r0, [r7]
_080098C8:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080098D0
sub_080098D0: @ 0x080098D0
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r4, r2, #0
	adds r6, r3, #0
	ldr r5, _080098F8 @ =0x030013B0
	add r3, sp, #8
	add r2, sp, #0xc
	str r2, [sp]
	add r2, sp, #4
	bl sub_08009884
	cmp r4, #0
	bne _080098FC
	ldr r1, [sp, #4]
	ldr r2, [sp, #8]
	ldr r3, [sp, #0xc]
	adds r0, r5, #0
	bl sub_08004D2C
	b _0800991C
	.align 2, 0
_080098F8: .4byte 0x030013B0
_080098FC:
	movs r2, #0
	cmp r4, #1
	bne _08009904
	movs r2, #2
_08009904:
	adds r0, r5, #0
	movs r1, #0
	bl sub_08004CF0
	ldr r1, [sp, #4]
	ldr r2, [sp, #8]
	ldr r0, [sp, #0xc]
	str r0, [sp]
	adds r0, r5, #0
	ldr r3, [sp, #0x20]
	bl sub_08004E6C
_0800991C:
	cmp r6, #0
	beq _08009930
	ldr r1, [sp, #4]
	ldr r2, [sp, #8]
	ldr r3, [sp, #0xc]
	movs r0, #0xf
	str r0, [sp]
	adds r0, r5, #0
	bl sub_08004D5C
_08009930:
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08009938
sub_08009938: @ 0x08009938
	push {r4, r5, r6, r7, lr}
	sub sp, #0x84
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	ldr r1, [r5, #4]
	lsls r0, r6, #2
	adds r0, r0, r1
	ldr r4, [r0]
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_08009854
	cmp r0, #0
	bne _0800995A
	movs r2, #0
	b _08009996
_0800995A:
	cmp r0, #1
	bne _0800997C
	ldr r2, [r4]
	ldrh r0, [r4, #8]
	ldr r1, [r4, #4]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r3, [r0]
	ldr r1, _08009978 @ =0x0830ED7C
	add r0, sp, #4
	bl sub_0803DFE0
	movs r2, #2
	b _08009996
	.align 2, 0
_08009978: .4byte 0x0830ED7C
_0800997C:
	cmp r0, #2
	bne _0800998C
	ldr r1, [r4]
	add r0, sp, #4
	bl sub_0803E020
	movs r2, #2
	b _08009996
_0800998C:
	ldr r1, [r4]
	add r0, sp, #4
	bl sub_0803E020
	movs r2, #1
_08009996:
	add r0, sp, #4
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	adds r3, r7, #0
	bl sub_080098D0
	add sp, #0x84
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080099AC
sub_080099AC: @ 0x080099AC
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrb r6, [r4, #8]
	adds r0, r6, #0
	movs r1, #0xa
	bl sub_0803D34C
	adds r5, r0, #0
	ldrb r0, [r4, #8]
	movs r1, #0xa
	bl sub_0803D350
	adds r2, r0, #0
	ldr r0, _08009A78 @ =0x02000004
	ldrh r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080099D4
	subs r2, #1
_080099D4:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080099DE
	adds r2, #1
_080099DE:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080099E8
	subs r5, #1
_080099E8:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080099F2
	adds r5, #1
_080099F2:
	ldrb r0, [r4]
	subs r0, #1
	movs r1, #0
	cmp r1, r5
	bge _080099FE
	adds r1, r5, #0
_080099FE:
	cmp r0, r1
	ble _08009A04
	adds r0, r1, #0
_08009A04:
	adds r5, r0, #0
	movs r0, #0
	cmp r0, r2
	bge _08009A0E
	adds r0, r2, #0
_08009A0E:
	movs r1, #9
	cmp r1, r0
	ble _08009A16
	adds r1, r0, #0
_08009A16:
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #1
	adds r0, r0, r1
	strb r0, [r4, #8]
	ldrb r0, [r4, #8]
	cmp r0, r6
	beq _08009A40
	movs r0, #0x51
	bl sub_080005D8
	adds r0, r4, #0
	adds r1, r6, #0
	movs r2, #0
	bl sub_08009938
	ldrb r1, [r4, #8]
	adds r0, r4, #0
	movs r2, #1
	bl sub_08009938
_08009A40:
	ldr r0, _08009A7C @ =0x02000020
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08009A8A
	ldrb r1, [r4, #8]
	adds r0, r4, #0
	bl sub_08009854
	cmp r0, #1
	bne _08009A80
	ldrb r0, [r4, #8]
	ldr r1, [r4, #4]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r2, [r0]
	movs r0, #1
	movs r1, #0
	bl sub_080096FC
	ldrb r1, [r4, #8]
	adds r0, r4, #0
	movs r2, #1
	bl sub_08009938
	b _08009A8A
	.align 2, 0
_08009A78: .4byte 0x02000004
_08009A7C: .4byte 0x02000020
_08009A80:
	cmp r0, #2
	beq _08009AA0
	movs r0, #0x77
	bl sub_080005D8
_08009A8A:
	ldr r0, _08009A9C @ =0x02000020
	ldrh r1, [r0]
	movs r0, #0xa
	ands r0, r1
	cmp r0, #0
	bne _08009AA0
	movs r0, #0
	b _08009AB2
	.align 2, 0
_08009A9C: .4byte 0x02000020
_08009AA0:
	movs r0, #0x54
	bl sub_080005D8
	ldrb r1, [r4, #8]
	adds r0, r4, #0
	movs r2, #0
	bl sub_08009938
	movs r0, #1
_08009AB2:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_08009AB8
sub_08009AB8: @ 0x08009AB8
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_0800101C
	ldrb r1, [r5, #2]
	ldrb r0, [r5, #1]
	subs r0, #1
	cmp r0, r1
	ble _08009ACC
	adds r0, r1, #0
_08009ACC:
	strb r0, [r5, #8]
	movs r4, #0
	b _08009AE0
_08009AD2:
	ldr r1, [r5, #4]
	lsls r0, r4, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldrh r0, [r1, #8]
	strh r0, [r1, #0xc]
	adds r4, #1
_08009AE0:
	ldrb r0, [r5, #1]
	cmp r4, r0
	blo _08009AD2
	bl sub_08000B84
	movs r0, #1
	movs r1, #2
	bl sub_08005DB0
	bl sub_08005A50
	movs r4, #0
	b _08009B0E
_08009AFA:
	movs r2, #0
	ldrb r0, [r5, #8]
	cmp r4, r0
	bne _08009B04
	movs r2, #1
_08009B04:
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08009938
	adds r4, #1
_08009B0E:
	ldrb r0, [r5, #1]
	cmp r4, r0
	blo _08009AFA
	movs r0, #0x53
	bl sub_080005D8
_08009B1A:
	bl sub_0803D380
	bl sub_08000BC0
	adds r0, r5, #0
	bl sub_080099AC
	cmp r0, #0
	beq _08009B1A
	movs r0, #0x14
	bl sub_08000B68
	ldrb r0, [r5, #8]
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08009B3C
sub_08009B3C: @ 0x08009B3C
	push {r4, r5, lr}
	sub sp, #0xc
	adds r4, r0, #0
	adds r5, r1, #0
	mov r1, sp
	movs r0, #1
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #0xa
	bl sub_08009834
	mov r1, sp
	strb r0, [r1, #1]
	str r4, [sp, #4]
	mov r0, sp
	strb r5, [r0, #2]
	bl sub_08009AB8
	add sp, #0xc
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_08009B68
sub_08009B68: @ 0x08009B68
	push {r4, r5, lr}
	sub sp, #0xc
	adds r4, r0, #0
	adds r5, r1, #0
	mov r1, sp
	movs r0, #2
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #0x14
	bl sub_08009834
	mov r1, sp
	strb r0, [r1, #1]
	str r4, [sp, #4]
	mov r0, sp
	strb r5, [r0, #2]
	bl sub_08009AB8
	add sp, #0xc
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_08009B94
sub_08009B94: @ 0x08009B94
	push {lr}
	movs r0, #0
	movs r1, #2
	bl sub_08005DB0
	bl sub_08005A50
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl sub_08009CD4
	ldr r1, _08009BC4 @ =0x04000008
	ldr r2, _08009BC8 @ =0x00001F82
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	ldr r2, _08009BCC @ =0x00001E81
	adds r0, r2, #0
	strh r0, [r1]
	bl sub_0800469C
	pop {r0}
	bx r0
	.align 2, 0
_08009BC4: .4byte 0x04000008
_08009BC8: .4byte 0x00001F82
_08009BCC: .4byte 0x00001E81

	thumb_func_start sub_08009BD0
sub_08009BD0: @ 0x08009BD0
	push {lr}
	bl sub_0803D380
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08009BDC
sub_08009BDC: @ 0x08009BDC
	push {lr}
	bl sub_0800A0F0
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08009BE8
sub_08009BE8: @ 0x08009BE8
	push {lr}
	bl sub_0800A110
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08009BF4
sub_08009BF4: @ 0x08009BF4
	push {lr}
	ldr r0, _08009C00 @ =sub_0803D380
	bl sub_0800A160
	pop {r0}
	bx r0
	.align 2, 0
_08009C00: .4byte sub_0803D380

	thumb_func_start sub_08009C04
sub_08009C04: @ 0x08009C04
	push {lr}
	ldr r0, _08009C10 @ =sub_0803D380
	bl sub_0800A1A4
	pop {r0}
	bx r0
	.align 2, 0
_08009C10: .4byte sub_0803D380

	thumb_func_start sub_08009C14
sub_08009C14: @ 0x08009C14
	push {lr}
	bl sub_0800A264
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08009C20
sub_08009C20: @ 0x08009C20
	push {lr}
	bl sub_0800A2CC
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08009C2C
sub_08009C2C: @ 0x08009C2C
	push {lr}
	bl sub_08005A50
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08009C38
sub_08009C38: @ 0x08009C38
	push {lr}
	bl sub_08005AFC
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08009C44
sub_08009C44: @ 0x08009C44
	push {lr}
	bl sub_08005B50
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08009C50
sub_08009C50: @ 0x08009C50
	push {r4, r5, r6, r7, lr}
	sub sp, #0x48
	ldr r6, [sp, #0x5c]
	ldr r7, [sp, #0x60]
	mov r4, sp
	movs r5, #0
	strb r0, [r4]
	mov r0, sp
	strb r1, [r0, #1]
	strb r2, [r0, #2]
	strb r3, [r0, #3]
	strb r6, [r0, #4]
	strb r7, [r0, #5]
	strb r5, [r0, #6]
	strb r5, [r0, #7]
	strb r5, [r0, #8]
	bl sub_08005E9C
	add sp, #0x48
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08009C7C
sub_08009C7C: @ 0x08009C7C
	push {r4, r5, r6, r7, lr}
	ldr r5, [sp, #0x14]
	ldr r6, [sp, #0x18]
	ldr r7, [sp, #0x1c]
	movs r4, #0
	strb r1, [r0]
	strb r2, [r0, #1]
	strb r3, [r0, #2]
	strb r5, [r0, #3]
	strb r6, [r0, #4]
	strb r7, [r0, #5]
	movs r1, #1
	strb r1, [r0, #6]
	strb r4, [r0, #7]
	strb r4, [r0, #8]
	bl sub_08005E9C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08009CA4
sub_08009CA4: @ 0x08009CA4
	push {lr}
	bl sub_08005F9C
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08009CB0
sub_08009CB0: @ 0x08009CB0
	push {lr}
	bl sub_080059C4
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08009CBC
sub_08009CBC: @ 0x08009CBC
	push {lr}
	bl sub_08011A78
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08009CC8
sub_08009CC8: @ 0x08009CC8
	push {lr}
	bl sub_08011AD8
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08009CD4
sub_08009CD4: @ 0x08009CD4
	push {r4, lr}
	adds r4, r1, #0
	cmp r0, #0
	beq _08009CEC
	ldr r1, _08009CE4 @ =0x03001380
	ldr r0, _08009CE8 @ =0x030013D0
	b _08009CF0
	.align 2, 0
_08009CE4: .4byte 0x03001380
_08009CE8: .4byte 0x030013D0
_08009CEC:
	ldr r1, _08009D0C @ =0x03001380
	ldr r0, _08009D10 @ =0x030013B0
_08009CF0:
	str r0, [r1]
	ldr r1, [r1]
	movs r3, #0x10
	cmp r4, #0
	beq _08009CFC
	movs r3, #0x40
_08009CFC:
	strh r3, [r1, #0x18]
	lsls r0, r2, #2
	adds r0, r3, r0
	strh r0, [r1, #0x1a]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08009D0C: .4byte 0x03001380
_08009D10: .4byte 0x030013B0

	thumb_func_start sub_08009D14
sub_08009D14: @ 0x08009D14
	ldr r1, _08009D24 @ =0x03001380
	ldr r1, [r1]
	lsls r0, r0, #2
	ldrh r2, [r1, #0x18]
	adds r0, r0, r2
	strh r0, [r1, #0x1a]
	bx lr
	.align 2, 0
_08009D24: .4byte 0x03001380

	thumb_func_start sub_08009D28
sub_08009D28: @ 0x08009D28
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08009D48 @ =0x03001380
	ldr r0, [r0]
	ldrh r3, [r0, #0x14]
	muls r3, r1, r3
	adds r3, r3, r4
	lsls r3, r3, #6
	ldr r1, [r0, #0x10]
	adds r1, r1, r3
	bl sub_08004AA8
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08009D48: .4byte 0x03001380

	thumb_func_start sub_08009D4C
sub_08009D4C: @ 0x08009D4C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r3, r2, #0
	ldr r0, _08009D68 @ =0x03001380
	ldr r0, [r0]
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_08004E28
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08009D68: .4byte 0x03001380

	thumb_func_start sub_08009D6C
sub_08009D6C: @ 0x08009D6C
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	ldr r0, _08009D90 @ =0x03001380
	ldr r0, [r0]
	str r3, [sp]
	adds r1, r4, #0
	adds r2, r5, #0
	adds r3, r6, #0
	bl sub_08004E6C
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08009D90: .4byte 0x03001380

	thumb_func_start sub_08009D94
sub_08009D94: @ 0x08009D94
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r3, r2, #0
	ldr r0, _08009DB0 @ =0x03001380
	ldr r0, [r0]
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_08004D2C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08009DB0: .4byte 0x03001380

	thumb_func_start sub_08009DB4
sub_08009DB4: @ 0x08009DB4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	str r0, [sp]
	adds r4, r1, #0
	str r2, [sp, #4]
	movs r6, #0
	movs r0, #3
	mov sl, r0
	adds r3, #3
	mov r8, r3
	mov r1, r8
	lsls r1, r1, #8
	mov sb, r1
_08009DD6:
	ldr r2, [sp, #4]
	ldrh r0, [r2]
	adds r3, r0, #0
	adds r2, #2
	str r2, [sp, #4]
	movs r5, #0
	adds r7, r6, #1
	mov ip, r7
_08009DE6:
	ldrh r0, [r4]
	adds r1, r0, #0
	adds r0, r3, #0
	mov r2, sl
	ands r0, r2
	lsrs r3, r3, #2
	adds r2, r3, #0
	mov r7, sl
	ands r2, r7
	lsrs r3, r3, #2
	cmp r0, #3
	bne _08009E08
	movs r0, #0xff
	lsls r0, r0, #8
	ands r1, r0
	mov r7, r8
	orrs r1, r7
_08009E08:
	cmp r2, #3
	bne _08009E14
	movs r0, #0xff
	ands r1, r0
	mov r2, sb
	orrs r1, r2
_08009E14:
	strh r1, [r4]
	adds r4, #2
	adds r5, #1
	cmp r5, #3
	bls _08009DE6
	cmp r6, #7
	bne _08009E2E
	adds r1, r4, #0
	subs r1, #0x40
	ldr r7, [sp]
	ldrh r0, [r7, #0x14]
	lsls r0, r0, #6
	adds r4, r1, r0
_08009E2E:
	mov r6, ip
	cmp r6, #0xf
	bls _08009DD6
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08009E44
sub_08009E44: @ 0x08009E44
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r3, r2, #0
	ldr r0, _08009E60 @ =0x03001380
	ldr r0, [r0]
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_08009E64
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08009E60: .4byte 0x03001380

	thumb_func_start sub_08009E64
sub_08009E64: @ 0x08009E64
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r4, r3, #0
	ldrh r0, [r5, #0x14]
	muls r0, r2, r0
	adds r0, r0, r1
	lsls r0, r0, #6
	ldr r1, [r5, #0x10]
	adds r6, r1, r0
	ldrh r7, [r5, #0x1a]
	b _08009E9A
_08009E7A:
	ldrb r0, [r4]
	adds r4, #1
	lsls r1, r1, #8
	orrs r1, r0
	adds r0, r5, #0
	bl sub_08004918
	lsls r0, r0, #5
	ldr r2, [r5]
	adds r2, r2, r0
	adds r0, r5, #0
	adds r1, r6, #0
	adds r3, r7, #0
	bl sub_08009DB4
	adds r6, #0x40
_08009E9A:
	ldrb r1, [r4]
	adds r4, #1
	cmp r1, #0
	bne _08009E7A
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08009EA8
sub_08009EA8: @ 0x08009EA8
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r7, r1, #0
	adds r4, r3, #0
	adds r5, r2, #0
	adds r0, r5, #0
	bl sub_08004954
	adds r3, r0, #0
	cmp r3, r4
	bls _08009EC4
	subs r0, r3, r4
	lsls r0, r0, #1
	adds r5, r5, r0
_08009EC4:
	cmp r3, r4
	bhs _08009ECC
	subs r0, r4, r3
	adds r6, r6, r0
_08009ECC:
	adds r0, r6, #0
	adds r1, r7, #0
	adds r2, r5, #0
	bl sub_08009E44
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08009EDC
sub_08009EDC: @ 0x08009EDC
	push {r4, lr}
	lsls r0, r0, #3
	movs r3, #0xe0
	lsls r3, r3, #0x13
	adds r0, r0, r3
	movs r3, #0xff
	ands r2, r3
	movs r4, #0x80
	lsls r4, r4, #6
	adds r3, r4, #0
	orrs r2, r3
	strh r2, [r0]
	ldr r3, _08009F10 @ =0x000001FF
	adds r2, r3, #0
	ands r1, r2
	movs r4, #0x80
	lsls r4, r4, #7
	adds r2, r4, #0
	orrs r1, r2
	strh r1, [r0, #2]
	ldr r1, _08009F14 @ =0x00000828
	strh r1, [r0, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08009F10: .4byte 0x000001FF
_08009F14: .4byte 0x00000828

	thumb_func_start sub_08009F18
sub_08009F18: @ 0x08009F18
	push {r4, lr}
	lsls r0, r0, #3
	movs r3, #0xe0
	lsls r3, r3, #0x13
	adds r0, r0, r3
	movs r3, #0xff
	ands r2, r3
	movs r4, #0x80
	lsls r4, r4, #6
	adds r3, r4, #0
	orrs r2, r3
	strh r2, [r0]
	ldr r3, _08009F4C @ =0x000001FF
	adds r2, r3, #0
	ands r1, r2
	movs r4, #0x80
	lsls r4, r4, #7
	adds r2, r4, #0
	orrs r1, r2
	strh r1, [r0, #2]
	movs r1, #0x83
	lsls r1, r1, #4
	strh r1, [r0, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08009F4C: .4byte 0x000001FF

	thumb_func_start sub_08009F50
sub_08009F50: @ 0x08009F50
	push {lr}
	movs r1, #6
	bl sub_0803D34C
	ldr r2, _08009F68 @ =0x083E25D0
	movs r1, #3
	ands r1, r0
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r0, [r1]
	pop {r1}
	bx r1
	.align 2, 0
_08009F68: .4byte 0x083E25D0
_08009F6C:
	.byte 0x00, 0xB5, 0xFB, 0xF7
	.byte 0x9B, 0xF8, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00

	thumb_func_start sub_08009F78
sub_08009F78: @ 0x08009F78
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r1, #0
	mov r8, r2
	adds r7, r3, #0
	ldr r4, _08009FFC @ =0x085371D8
	bl sub_0800D8A4
	ldr r1, _0800A000 @ =0x083E4F04
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r2, [r1]
	ldr r0, [r1, #4]
	adds r6, r0, r4
	lsls r0, r5, #2
	adds r0, r0, r1
	ldr r0, [r0, #8]
	adds r0, r0, r4
	mov sb, r0
	cmp r5, r2
	blo _08009FAE
	ldr r0, _0800A004 @ =0x0830ED84
	bl sub_080050A8
_08009FAE:
	mov r0, r8
	cmp r0, #0
	beq _0800A008
	adds r5, r6, #0
	adds r3, r7, #0
	movs r7, #0
	ldr r1, [sp, #0x20]
	lsls r1, r1, #8
	mov r8, r1
	movs r6, #0x1f
_08009FC2:
	ldrh r0, [r5]
	lsls r1, r0, #0x10
	adds r5, #2
	adds r4, r6, #0
	ands r4, r0
	lsrs r2, r1, #0x15
	ands r2, r6
	lsrs r1, r1, #0x1a
	ands r1, r6
	lsls r0, r4, #1
	adds r0, r0, r4
	lsrs r4, r0, #2
	lsls r0, r2, #1
	adds r0, r0, r2
	lsrs r2, r0, #2
	lsls r0, r1, #1
	adds r0, r0, r1
	lsrs r1, r0, #2
	lsls r0, r1, #0xa
	lsls r1, r2, #5
	orrs r0, r1
	orrs r0, r4
	strh r0, [r3]
	adds r3, #2
	adds r7, #1
	cmp r7, #0x1f
	bls _08009FC2
	b _0800A018
	.align 2, 0
_08009FFC: .4byte 0x085371D8
_0800A000: .4byte 0x083E4F04
_0800A004: .4byte 0x0830ED84
_0800A008:
	adds r0, r7, #0
	adds r1, r6, #0
	movs r2, #0x40
	bl sub_080002C4
	ldr r0, [sp, #0x20]
	lsls r0, r0, #8
	mov r8, r0
_0800A018:
	movs r6, #0x80
	lsls r6, r6, #5
	ldr r0, _0800A08C @ =0x02001CC0
	adds r1, r6, #0
	bl sub_0800459C
	adds r4, r0, #0
	mov r0, sb
	adds r1, r4, #0
	bl sub_0803D358
	mov r0, r8
	ldr r1, [sp, #0x20]
	orrs r0, r1
	lsls r1, r0, #0x10
	orrs r0, r1
	ldr r1, _0800A090 @ =0x7F7F7F80
	adds r1, r1, r0
	mov r8, r1
	ldr r5, [sp, #0x1c]
	movs r6, #0x60
	movs r0, #0
_0800A044:
	movs r1, #0
	adds r7, r0, #1
	cmp r1, r6
	bhs _0800A058
_0800A04C:
	ldm r4!, {r0}
	add r0, r8
	stm r5!, {r0}
	adds r1, #1
	cmp r1, r6
	blo _0800A04C
_0800A058:
	adds r0, r5, #0
	movs r1, #0x80
	movs r2, #0
	bl sub_08000498
	adds r4, #0x80
	adds r5, #0x80
	adds r0, r7, #0
	cmp r0, #5
	bls _0800A044
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r5, #0
	movs r2, #0
	bl sub_08000498
	ldr r0, _0800A08C @ =0x02001CC0
	bl sub_08004604
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800A08C: .4byte 0x02001CC0
_0800A090: .4byte 0x7F7F7F80

	thumb_func_start sub_0800A094
sub_0800A094: @ 0x0800A094
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	adds r1, r4, #0
	bl sub_08000634
	ldr r0, _0800A0B0 @ =0x0200C1A0
	ldr r1, _0800A0B4 @ =0x000023F4
	adds r0, r0, r1
	strh r4, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800A0B0: .4byte 0x0200C1A0
_0800A0B4: .4byte 0x000023F4

	thumb_func_start sub_0800A0B8
sub_0800A0B8: @ 0x0800A0B8
	push {lr}
	movs r0, #0
	movs r1, #1
	bl sub_08000694
	ldr r0, _0800A0D0 @ =0x0200C1A0
	ldr r1, _0800A0D4 @ =0x000023F4
	adds r0, r0, r1
	ldr r1, _0800A0D8 @ =0x0000FFFF
	strh r1, [r0]
	pop {r0}
	bx r0
	.align 2, 0
_0800A0D0: .4byte 0x0200C1A0
_0800A0D4: .4byte 0x000023F4
_0800A0D8: .4byte 0x0000FFFF

	thumb_func_start sub_0800A0DC
sub_0800A0DC: @ 0x0800A0DC
	ldr r0, _0800A0E8 @ =0x0200C1A0
	ldr r1, _0800A0EC @ =0x000023F4
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	bx lr
	.align 2, 0
_0800A0E8: .4byte 0x0200C1A0
_0800A0EC: .4byte 0x000023F4

	thumb_func_start sub_0800A0F0
sub_0800A0F0: @ 0x0800A0F0
	ldr r1, _0800A104 @ =0x04000050
	movs r0, #0xff
	strh r0, [r1]
	ldr r0, _0800A108 @ =0x04000054
	movs r1, #0x10
	strh r1, [r0]
	ldr r0, _0800A10C @ =0x02001D0C
	strb r1, [r0]
	bx lr
	.align 2, 0
_0800A104: .4byte 0x04000050
_0800A108: .4byte 0x04000054
_0800A10C: .4byte 0x02001D0C

	thumb_func_start sub_0800A110
sub_0800A110: @ 0x0800A110
	ldr r0, _0800A11C @ =0x04000050
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0800A120 @ =0x02001D0C
	strb r1, [r0]
	bx lr
	.align 2, 0
_0800A11C: .4byte 0x04000050
_0800A120: .4byte 0x02001D0C

	thumb_func_start sub_0800A124
sub_0800A124: @ 0x0800A124
	push {lr}
	adds r1, r0, #0
	ldr r2, _0800A144 @ =0x02001D0C
	movs r0, #0x10
	cmp r0, r1
	ble _0800A132
	adds r0, r1, #0
_0800A132:
	strb r0, [r2]
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _0800A14C
	ldr r0, _0800A148 @ =0x04000050
	strh r1, [r0]
	b _0800A158
	.align 2, 0
_0800A144: .4byte 0x02001D0C
_0800A148: .4byte 0x04000050
_0800A14C:
	ldr r1, _0800A15C @ =0x04000050
	movs r0, #0xff
	strh r0, [r1]
	adds r1, #4
	ldrb r0, [r2]
	strh r0, [r1]
_0800A158:
	pop {r0}
	bx r0
	.align 2, 0
_0800A15C: .4byte 0x04000050

	thumb_func_start sub_0800A160
sub_0800A160: @ 0x0800A160
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, _0800A19C @ =0x02001D0C
	ldrb r1, [r0]
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r4, r0, #0x1f
	cmp r4, #0
	bne _0800A196
	bl sub_0803D7AC
	ldr r0, _0800A1A0 @ =0x04000050
	movs r1, #0xff
	strh r1, [r0]
	adds r0, #4
	strh r4, [r0]
	movs r4, #2
	adds r6, r0, #0
_0800A184:
	bl sub_0803D7AC
	strh r4, [r6]
	adds r4, #2
	cmp r4, #0x10
	bls _0800A184
	ldr r1, _0800A19C @ =0x02001D0C
	movs r0, #0x10
	strb r0, [r1]
_0800A196:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800A19C: .4byte 0x02001D0C
_0800A1A0: .4byte 0x04000050

	thumb_func_start sub_0800A1A4
sub_0800A1A4: @ 0x0800A1A4
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, _0800A1E4 @ =0x02001D0C
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800A1DE
	bl sub_0803D7AC
	ldr r1, _0800A1E8 @ =0x04000050
	movs r0, #0xff
	strh r0, [r1]
	adds r1, #4
	movs r0, #0x10
	strh r0, [r1]
	movs r4, #2
	adds r7, r1, #0
	movs r6, #0x10
_0800A1C6:
	bl sub_0803D7AC
	subs r0, r6, r4
	strh r0, [r7]
	adds r4, #2
	cmp r4, #0x10
	bls _0800A1C6
	ldr r0, _0800A1E8 @ =0x04000050
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0800A1E4 @ =0x02001D0C
	strb r1, [r0]
_0800A1DE:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800A1E4: .4byte 0x02001D0C
_0800A1E8: .4byte 0x04000050

	thumb_func_start sub_0800A1EC
sub_0800A1EC: @ 0x0800A1EC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08000BC0
	cmp r4, #0
	bne _0800A20C
	ldr r0, _0800A208 @ =0x02000020
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800A238
_0800A204:
	movs r0, #1
	b _0800A23A
	.align 2, 0
_0800A208: .4byte 0x02000020
_0800A20C:
	cmp r4, #1
	beq _0800A224
	ldr r0, _0800A220 @ =0x02000020
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800A228
	b _0800A204
	.align 2, 0
_0800A220: .4byte 0x02000020
_0800A224:
	ldr r0, _0800A234 @ =0x02000020
	ldrh r1, [r0]
_0800A228:
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0800A238
	movs r0, #2
	b _0800A23A
	.align 2, 0
_0800A234: .4byte 0x02000020
_0800A238:
	movs r0, #0
_0800A23A:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_0800A240
sub_0800A240: @ 0x0800A240
	push {r4, r5, lr}
	adds r5, r1, #0
	bl sub_0800A1EC
	adds r4, r0, #0
	cmp r4, #0
	beq _0800A25C
	cmp r5, #0
	beq _0800A258
	bl sub_0800A110
	b _0800A25C
_0800A258:
	bl sub_0800A0F0
_0800A25C:
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0800A264
sub_0800A264: @ 0x0800A264
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r1, _0800A284 @ =0x02001D0C
	ldrb r1, [r1]
	cmp r1, #0
	bne _0800A2BC
	bl sub_0803D380
	adds r0, r5, #0
	movs r1, #0
	bl sub_0800A240
	adds r2, r0, #0
	cmp r2, #0
	beq _0800A28C
	b _0800A2BC
	.align 2, 0
_0800A284: .4byte 0x02001D0C
_0800A288:
	adds r0, r2, #0
	b _0800A2BC
_0800A28C:
	ldr r0, _0800A2C4 @ =0x04000050
	movs r1, #0xff
	strh r1, [r0]
	adds r0, #4
	strh r2, [r0]
	movs r4, #2
	adds r6, r0, #0
_0800A29A:
	bl sub_0803D380
	adds r0, r5, #0
	movs r1, #0
	bl sub_0800A240
	adds r2, r0, #0
	cmp r2, #0
	bne _0800A288
	strh r4, [r6]
	adds r4, #2
	cmp r4, #0x10
	bls _0800A29A
	ldr r1, _0800A2C8 @ =0x02001D0C
	movs r0, #0x10
	strb r0, [r1]
	movs r0, #0
_0800A2BC:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0800A2C4: .4byte 0x04000050
_0800A2C8: .4byte 0x02001D0C

	thumb_func_start sub_0800A2CC
sub_0800A2CC: @ 0x0800A2CC
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r1, _0800A2EC @ =0x02001D0C
	ldrb r1, [r1]
	cmp r1, #0
	beq _0800A32E
	bl sub_0803D380
	adds r0, r5, #0
	movs r1, #1
	bl sub_0800A240
	adds r2, r0, #0
	cmp r2, #0
	beq _0800A2F4
	b _0800A32E
	.align 2, 0
_0800A2EC: .4byte 0x02001D0C
_0800A2F0:
	adds r0, r2, #0
	b _0800A32E
_0800A2F4:
	ldr r1, _0800A334 @ =0x04000050
	movs r0, #0xff
	strh r0, [r1]
	adds r1, #4
	movs r0, #0x10
	strh r0, [r1]
	movs r4, #2
	adds r7, r1, #0
	movs r6, #0x10
_0800A306:
	bl sub_0803D380
	adds r0, r5, #0
	movs r1, #1
	bl sub_0800A240
	adds r2, r0, #0
	cmp r2, #0
	bne _0800A2F0
	subs r0, r6, r4
	strh r0, [r7]
	adds r4, #2
	cmp r4, #0x10
	bls _0800A306
	ldr r0, _0800A334 @ =0x04000050
	movs r1, #0
	strh r2, [r0]
	ldr r0, _0800A338 @ =0x02001D0C
	strb r1, [r0]
	movs r0, #0
_0800A32E:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0800A334: .4byte 0x04000050
_0800A338: .4byte 0x02001D0C
_0800A33C:
	.byte 0x01, 0x78, 0x51, 0x43
	.byte 0x49, 0x09, 0x01, 0x70, 0x41, 0x78, 0x51, 0x43, 0x49, 0x09, 0x41, 0x70, 0x81, 0x78, 0x51, 0x43
	.byte 0x49, 0x09, 0x81, 0x70, 0x70, 0x47, 0x00, 0x00

	thumb_func_start sub_0800A358
sub_0800A358: @ 0x0800A358
	push {lr}
	movs r2, #1
	ands r2, r1
	cmp r2, #0
	bne _0800A364
	strb r2, [r0, #2]
_0800A364:
	movs r2, #2
	ands r2, r1
	cmp r2, #0
	bne _0800A36E
	strb r2, [r0]
_0800A36E:
	movs r2, #4
	ands r2, r1
	cmp r2, #0
	bne _0800A378
	strb r2, [r0, #1]
_0800A378:
	pop {r0}
	bx r0

	thumb_func_start sub_0800A37C
sub_0800A37C: @ 0x0800A37C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4]
	muls r0, r1, r0
	lsrs r0, r0, #5
	adds r0, r0, r2
	movs r3, #0x1f
	cmp r3, r0
	ble _0800A390
	adds r3, r0, #0
_0800A390:
	strb r3, [r4]
	ldrb r0, [r4, #1]
	muls r0, r1, r0
	lsrs r0, r0, #5
	adds r0, r0, r2
	movs r3, #0x1f
	cmp r3, r0
	ble _0800A3A2
	adds r3, r0, #0
_0800A3A2:
	strb r3, [r4, #1]
	ldrb r0, [r4, #2]
	muls r0, r1, r0
	lsrs r0, r0, #5
	adds r0, r0, r2
	movs r3, #0x1f
	cmp r3, r0
	ble _0800A3B4
	adds r3, r0, #0
_0800A3B4:
	strb r3, [r4, #2]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0800A3BC
sub_0800A3BC: @ 0x0800A3BC
	push {r4, r5, lr}
	ldrb r4, [r2]
	ldrb r5, [r1]
	subs r4, r4, r5
	muls r4, r3, r4
	lsrs r4, r4, #5
	adds r5, r5, r4
	strb r5, [r0]
	ldrb r4, [r2, #1]
	ldrb r5, [r1, #1]
	subs r4, r4, r5
	muls r4, r3, r4
	lsrs r4, r4, #5
	adds r5, r5, r4
	strb r5, [r0, #1]
	ldrb r2, [r2, #2]
	ldrb r4, [r1, #2]
	subs r2, r2, r4
	adds r1, r2, #0
	muls r1, r3, r1
	lsrs r1, r1, #5
	adds r4, r4, r1
	strb r4, [r0, #2]
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_0800A3F0
sub_0800A3F0: @ 0x0800A3F0
	bx lr
	.align 2, 0

	thumb_func_start sub_0800A3F4
sub_0800A3F4: @ 0x0800A3F4
	push {lr}
	bl sub_080051B0
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800A400
sub_0800A400: @ 0x0800A400
	ldr r0, _0800A40C @ =0x0200CC80
	adds r0, #0x40
	movs r1, #0
	strb r1, [r0]
	bx lr
	.align 2, 0
_0800A40C: .4byte 0x0200CC80

	thumb_func_start sub_0800A410
sub_0800A410: @ 0x0800A410
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r6, _0800A43C @ =0x0200CC80
	adds r4, r6, #0
	adds r4, #0x40
	ldrb r0, [r4]
	cmp r0, #0x10
	bne _0800A426
	ldr r0, _0800A440 @ =0x0831AFA0
	bl sub_080050A8
_0800A426:
	ldrb r0, [r4]
	adds r1, r0, #1
	strb r1, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r6
	str r5, [r0]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800A43C: .4byte 0x0200CC80
_0800A440: .4byte 0x0831AFA0

	thumb_func_start sub_0800A444
sub_0800A444: @ 0x0800A444
	push {r4, r5, lr}
	ldr r5, _0800A46C @ =0x0200CC80
	adds r4, r5, #0
	adds r4, #0x40
	ldrb r0, [r4]
	cmp r0, #0
	bne _0800A458
	ldr r0, _0800A470 @ =0x0831AFB8
	bl sub_080050A8
_0800A458:
	ldrb r0, [r4]
	subs r0, #1
	strb r0, [r4]
	ldrb r0, [r4]
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0800A46C: .4byte 0x0200CC80
_0800A470: .4byte 0x0831AFB8

	thumb_func_start sub_0800A474
sub_0800A474: @ 0x0800A474
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r6, _0800A4A0 @ =0x0200E930
	adds r4, r6, #0
	adds r4, #0x20
	ldrb r0, [r4]
	cmp r0, #8
	bne _0800A48A
	ldr r0, _0800A4A4 @ =0x0831AFD8
	bl sub_080050A8
_0800A48A:
	ldrb r0, [r4]
	adds r1, r0, #1
	strb r1, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r6
	str r5, [r0]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800A4A0: .4byte 0x0200E930
_0800A4A4: .4byte 0x0831AFD8

	thumb_func_start sub_0800A4A8
sub_0800A4A8: @ 0x0800A4A8
	push {r4, r5, lr}
	ldr r5, _0800A4D0 @ =0x0200E930
	adds r4, r5, #0
	adds r4, #0x20
	ldrb r0, [r4]
	cmp r0, #0
	bne _0800A4BC
	ldr r0, _0800A4D4 @ =0x0831AFF0
	bl sub_080050A8
_0800A4BC:
	ldrb r0, [r4]
	subs r0, #1
	strb r0, [r4]
	ldrb r0, [r4]
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0800A4D0: .4byte 0x0200E930
_0800A4D4: .4byte 0x0831AFF0

	thumb_func_start sub_0800A4D8
sub_0800A4D8: @ 0x0800A4D8
	ldr r0, _0800A4E4 @ =0x0200C1A0
	ldr r1, _0800A4E8 @ =0x00000C24
	adds r0, r0, r1
	movs r1, #0
	strb r1, [r0]
	bx lr
	.align 2, 0
_0800A4E4: .4byte 0x0200C1A0
_0800A4E8: .4byte 0x00000C24

	thumb_func_start sub_0800A4EC
sub_0800A4EC: @ 0x0800A4EC
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r6, _0800A518 @ =0x0200CCC4
	movs r0, #0x80
	lsls r0, r0, #1
	adds r4, r6, r0
	ldrb r0, [r4]
	cmp r0, #0x40
	bne _0800A504
	ldr r0, _0800A51C @ =0x0831B010
	bl sub_080050A8
_0800A504:
	ldrb r0, [r4]
	adds r1, r0, #1
	strb r1, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r6
	str r5, [r0]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800A518: .4byte 0x0200CCC4
_0800A51C: .4byte 0x0831B010

	thumb_func_start sub_0800A520
sub_0800A520: @ 0x0800A520
	push {r4, r5, lr}
	ldr r5, _0800A54C @ =0x0200CCC4
	movs r0, #0x80
	lsls r0, r0, #1
	adds r4, r5, r0
	ldrb r0, [r4]
	cmp r0, #0
	bne _0800A536
	ldr r0, _0800A550 @ =0x0831B028
	bl sub_080050A8
_0800A536:
	ldrb r0, [r4]
	subs r0, #1
	strb r0, [r4]
	ldrb r0, [r4]
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0800A54C: .4byte 0x0200CCC4
_0800A550: .4byte 0x0831B028

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
	ldr r1, _0800A624 @ =0x0200C1A0
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
_0800A624: .4byte 0x0200C1A0
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
	ldr r4, _0800A690 @ =0x0200E954
	adds r0, r4, #0
	bl sub_0800A630
	adds r0, r4, #0
_0800A688:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0800A690: .4byte 0x0200E954

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
	ldr r4, _0800A7B4 @ =0x0200E9C4
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
_0800A7B4: .4byte 0x0200E9C4

	thumb_func_start sub_0800A7B8
sub_0800A7B8: @ 0x0800A7B8
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	ldr r4, _0800A7F0 @ =0x0200E9C4
	ldrb r0, [r4, #4]
	cmp r0, #0
	bne _0800A7CC
	ldr r0, _0800A7F4 @ =0x0831B048
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
_0800A7F0: .4byte 0x0200E9C4
_0800A7F4: .4byte 0x0831B048
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
	ldr r4, _0800A854 @ =0x0200E9C4
	ldrb r0, [r4, #4]
	cmp r0, #0
	bne _0800A834
	ldr r0, _0800A858 @ =0x0831B06C
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
_0800A854: .4byte 0x0200E9C4
_0800A858: .4byte 0x0831B06C

	thumb_func_start sub_0800A85C
sub_0800A85C: @ 0x0800A85C
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r7, r1, #0
	ldr r6, _0800A880 @ =0x0200E9C4
	ldrb r0, [r6, #4]
	cmp r0, #0
	bne _0800A870
	ldr r0, _0800A884 @ =0x0831B094
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
_0800A880: .4byte 0x0200E9C4
_0800A884: .4byte 0x0831B094
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
	ldr r6, _0800A8DC @ =0x0200E9C4
	ldrb r0, [r6, #4]
	cmp r0, #0
	bne _0800A8CC
	ldr r0, _0800A8E0 @ =0x0831B0BC
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
_0800A8DC: .4byte 0x0200E9C4
_0800A8E0: .4byte 0x0831B0BC
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
	ldr r0, _0800A964 @ =0x0831B0E4
	bl sub_0800A9BC
_0800A948:
	cmp r4, #0x23
	beq _0800A958
	ldr r0, _0800A968 @ =0x083D6088
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
_0800A964: .4byte 0x0831B0E4
_0800A968: .4byte 0x083D6088
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
	ldr r0, _0800A9B8 @ =0x0831B0E4
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
_0800A9B8: .4byte 0x0831B0E4

	thumb_func_start sub_0800A9BC
sub_0800A9BC: @ 0x0800A9BC
	push {lr}
	sub sp, #0x100
	ldr r1, _0800A9D8 @ =0x0831B0F8
	mov r0, sp
	mov r2, sp
	bl sub_0803DFE0
	mov r0, sp
	bl sub_080050A8
	add sp, #0x100
	pop {r0}
	bx r0
	.align 2, 0
_0800A9D8: .4byte 0x0831B0F8

	thumb_func_start sub_0800A9DC
sub_0800A9DC: @ 0x0800A9DC
	push {lr}
	ldr r0, _0800A9E8 @ =0x0831B118
	bl sub_0800A9BC
	pop {r0}
	bx r0
	.align 2, 0
_0800A9E8: .4byte 0x0831B118

	thumb_func_start sub_0800A9EC
sub_0800A9EC: @ 0x0800A9EC
	push {r4, r5, r6, r7, lr}
	ldr r3, _0800AA20 @ =0x020132E0
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
_0800AA20: .4byte 0x020132E0
_0800AA24: .4byte 0x0000017F

	thumb_func_start sub_0800AA28
sub_0800AA28: @ 0x0800AA28
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, _0800AA50 @ =0x020132E0
	ldr r0, _0800AA54 @ =0x0000017F
	cmp r4, r0
	bls _0800AA3A
	ldr r0, _0800AA58 @ =0x0831B134
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
_0800AA50: .4byte 0x020132E0
_0800AA54: .4byte 0x0000017F
_0800AA58: .4byte 0x0831B134

	thumb_func_start sub_0800AA5C
sub_0800AA5C: @ 0x0800AA5C
	push {lr}
	ldr r0, _0800AA78 @ =0x020132E0
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
_0800AA78: .4byte 0x020132E0

	thumb_func_start sub_0800AA7C
sub_0800AA7C: @ 0x0800AA7C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0800AA9C @ =0x0000017F
	cmp r4, r0
	bls _0800AA8C
	ldr r0, _0800AAA0 @ =0x0831B134
	bl sub_0800A9BC
_0800AA8C:
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #4
	ldr r1, _0800AAA4 @ =0x020132E0
	adds r0, r0, r1
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0800AA9C: .4byte 0x0000017F
_0800AAA0: .4byte 0x0831B134
_0800AAA4: .4byte 0x020132E0

	thumb_func_start sub_0800AAA8
sub_0800AAA8: @ 0x0800AAA8
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	ldr r0, _0800AAD8 @ =0x020132E0
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
_0800AAD8: .4byte 0x020132E0

	thumb_func_start sub_0800AADC
sub_0800AADC: @ 0x0800AADC
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _0800AAFC @ =0x0000017F
	cmp r4, r0
	bls _0800AAEE
	ldr r0, _0800AB00 @ =0x0831B134
	bl sub_0800A9BC
_0800AAEE:
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #4
	ldr r1, _0800AB04 @ =0x020132E0
	adds r6, r0, r1
	movs r7, #0
	b _0800AB18
	.align 2, 0
_0800AAFC: .4byte 0x0000017F
_0800AB00: .4byte 0x0831B134
_0800AB04: .4byte 0x020132E0
_0800AB08:
	cmp r7, #0x2d
	bls _0800AB12
	ldr r0, _0800AB2C @ =0x0831B140
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
_0800AB2C: .4byte 0x0831B140

	thumb_func_start sub_0800AB30
sub_0800AB30: @ 0x0800AB30
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	ldr r0, _0800AB58 @ =0x020132E0
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
_0800AB58: .4byte 0x020132E0

	thumb_func_start sub_0800AB5C
sub_0800AB5C: @ 0x0800AB5C
	push {r4, r5, r6, lr}
	sub sp, #0x4c
	adds r6, r0, #0
	adds r4, r1, #0
	ldr r0, _0800AB9C @ =0x020132E0
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
	ldr r0, _0800ABA0 @ =0x0831B15C
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
_0800AB9C: .4byte 0x020132E0
_0800ABA0: .4byte 0x0831B15C

	thumb_func_start sub_0800ABA4
sub_0800ABA4: @ 0x0800ABA4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x40
	adds r4, r0, #0
	mov r8, r1
	ldr r0, _0800ABF4 @ =0x020132E0
	movs r1, #0x90
	lsls r1, r1, #7
	adds r0, r0, r1
	ldr r7, [r0]
	cmp r7, #0
	bne _0800ABC4
	bl sub_0800A9DC
_0800ABC4:
	ldr r1, _0800ABF8 @ =0x0831B180
	mov r0, sp
	adds r2, r4, #0
	bl sub_0803DFE0
	mov r0, sp
	bl sub_0803E06C
	adds r4, r0, #0
	cmp r4, r8
	blo _0800ABFC
	mov r2, r8
	subs r0, r4, r2
	add r4, sp, #0x10
	mov r2, sp
	adds r1, r2, r0
	adds r0, r4, #0
	bl sub_0803E020
	mov sb, r4
	adds r6, r7, #0
	adds r6, #0x2f
	b _0800AC34
	.align 2, 0
_0800ABF4: .4byte 0x020132E0
_0800ABF8: .4byte 0x0831B180
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
	ldr r0, _0800AC64 @ =0x0831B0E4
	bl sub_0800A9BC
_0800AC46:
	adds r0, r5, #0
	mov r1, sb
	bl sub_0803E020
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
_0800AC64: .4byte 0x0831B0E4

	thumb_func_start sub_0800AC68
sub_0800AC68: @ 0x0800AC68
	push {lr}
	ldr r1, _0800AC80 @ =0x0200E594
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
_0800AC80: .4byte 0x0200E594
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
	ldr r4, _0800ACC8 @ =0x0200E594
	movs r0, #0
	bl sub_08000694
	ldr r0, _0800ACCC @ =0x0000FFFF
	strh r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800ACC8: .4byte 0x0200E594
_0800ACCC: .4byte 0x0000FFFF

	thumb_func_start sub_0800ACD0
sub_0800ACD0: @ 0x0800ACD0
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, _0800ACE4 @ =0x0200E594
	movs r0, #1
	rsbs r0, r0, #0
	cmp r4, r0
	bne _0800ACEC
	ldr r0, _0800ACE8 @ =0x0000FFFF
	strh r0, [r5]
	b _0800ACFE
	.align 2, 0
_0800ACE4: .4byte 0x0200E594
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
	ldr r4, _0800AD20 @ =0x0200E594
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
_0800AD20: .4byte 0x0200E594
_0800AD24: .4byte 0x0000FFFF

	thumb_func_start sub_0800AD28
sub_0800AD28: @ 0x0800AD28
	push {r4, lr}
	ldr r4, _0800AD48 @ =0x0200E594
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
_0800AD48: .4byte 0x0200E594

	thumb_func_start sub_0800AD4C
sub_0800AD4C: @ 0x0800AD4C
	push {r4, lr}
	adds r2, r0, #0
	ldr r4, _0800AD74 @ =0x0200E594
	movs r0, #0
	ldrsh r1, [r4, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0800AD6E
	ldr r0, _0800AD78 @ =0x083E7C5C
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
_0800AD74: .4byte 0x0200E594
_0800AD78: .4byte 0x083E7C5C
_0800AD7C: .4byte 0x0000FFFF

	thumb_func_start sub_0800AD80
sub_0800AD80: @ 0x0800AD80
	push {lr}
	adds r1, r0, #0
	lsls r0, r1, #8
	movs r1, #0x64
	bl sub_0803D34C
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
	ldr r5, _0800ADC8 @ =0x0200E594
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
_0800ADC8: .4byte 0x0200E594
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
	ldr r0, _0800ADF4 @ =0x0200C1A0
	ldr r1, _0800ADF8 @ =0x000023F8
	adds r0, r0, r1
	strh r4, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800ADF4: .4byte 0x0200C1A0
_0800ADF8: .4byte 0x000023F8

	thumb_func_start sub_0800ADFC
sub_0800ADFC: @ 0x0800ADFC
	push {lr}
	movs r0, #1
	bl sub_0800065C
	ldr r0, _0800AE14 @ =0x0200C1A0
	ldr r1, _0800AE18 @ =0x000023F8
	adds r0, r0, r1
	ldr r1, _0800AE1C @ =0x0000FFFF
	strh r1, [r0]
	pop {r0}
	bx r0
	.align 2, 0
_0800AE14: .4byte 0x0200C1A0
_0800AE18: .4byte 0x000023F8
_0800AE1C: .4byte 0x0000FFFF

	thumb_func_start sub_0800AE20
sub_0800AE20: @ 0x0800AE20
	push {lr}
	ldr r1, _0800AE3C @ =0x083E7C5C
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #1
	bl sub_08000694
	ldr r0, _0800AE40 @ =0x0200C1A0
	ldr r1, _0800AE44 @ =0x000023F8
	adds r0, r0, r1
	ldr r1, _0800AE48 @ =0x0000FFFF
	strh r1, [r0]
	pop {r0}
	bx r0
	.align 2, 0
_0800AE3C: .4byte 0x083E7C5C
_0800AE40: .4byte 0x0200C1A0
_0800AE44: .4byte 0x000023F8
_0800AE48: .4byte 0x0000FFFF

	thumb_func_start sub_0800AE4C
sub_0800AE4C: @ 0x0800AE4C
	push {r4, r5, lr}
	ldr r5, _0800AE6C @ =0x0200E594
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
_0800AE6C: .4byte 0x0200E594
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
	ldr r1, _0800AEAC @ =0x083E7C5C
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #2
	bl sub_08000694
	pop {r0}
	bx r0
	.align 2, 0
_0800AEAC: .4byte 0x083E7C5C

	thumb_func_start sub_0800AEB0
sub_0800AEB0: @ 0x0800AEB0
	push {r4, lr}
	ldr r4, _0800AED8 @ =0x0200E594
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
_0800AED8: .4byte 0x0200E594
_0800AEDC: .4byte 0x0000FFFF

	thumb_func_start sub_0800AEE0
sub_0800AEE0: @ 0x0800AEE0
	push {r4, lr}
	ldr r4, _0800AF00 @ =0x0200E594
	ldr r1, _0800AF04 @ =0x083E7C5C
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
_0800AF00: .4byte 0x0200E594
_0800AF04: .4byte 0x083E7C5C
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
	ldr r2, _0800AFA4 @ =0x083E7C5F
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
_0800AFA4: .4byte 0x083E7C5F

	thumb_func_start sub_0800AFA8
sub_0800AFA8: @ 0x0800AFA8
	push {r4, r5, lr}
	adds r2, r0, #0
	ldr r0, _0800AFD0 @ =0x02001DBC
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
_0800AFD0: .4byte 0x02001DBC
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
	bl sub_0803E020
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
	bl sub_0803D380
	ldr r0, [r6, #0x2c]
	adds r0, #1
	str r0, [r6, #0x2c]
	bl sub_08000BC0
	ldrb r0, [r6, #0xe]
	cmp r0, #0
	beq _0800B24A
	ldr r0, _0800B29C @ =0x02000020
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
	ldr r1, _0800B2A0 @ =0x02001D0C
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
	ldr r4, _0800B2A0 @ =0x02001D0C
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
_0800B29C: .4byte 0x02000020
_0800B2A0: .4byte 0x02001D0C
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
	ldr r4, _0800B34C @ =0x030013B0
	ldr r5, _0800B350 @ =0x0831B184
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
_0800B34C: .4byte 0x030013B0
_0800B350: .4byte 0x0831B184

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
	ldr r0, _0800B434 @ =0x0831B1C0
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
_0800B434: .4byte 0x0831B1C0
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
	ldr r1, _0800B4D8 @ =0x03000B50
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
_0800B4D8: .4byte 0x03000B50
_0800B4DC:
	ldr r1, _0800B4F8 @ =0x03000B58
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
_0800B4F8: .4byte 0x03000B58
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
	ldr r0, _0800B594 @ =0x03001364
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
_0800B594: .4byte 0x03001364
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
	ldr r0, _0800B648 @ =0x03001364
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
_0800B648: .4byte 0x03001364
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
	ldr r1, _0800B748 @ =0x02001D0C
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
	ldr r1, _0800B748 @ =0x02001D0C
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
_0800B748: .4byte 0x02001D0C

	thumb_func_start sub_0800B74C
sub_0800B74C: @ 0x0800B74C
	push {lr}
	ldr r0, _0800B760 @ =0x0200E59C
	movs r1, #0xe5
	lsls r1, r1, #2
	movs r2, #0
	bl sub_08000498
	pop {r0}
	bx r0
	.align 2, 0
_0800B760: .4byte 0x0200E59C

	thumb_func_start sub_0800B764
sub_0800B764: @ 0x0800B764
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, _0800B780 @ =0x0200E59C
	cmp r4, #7
	bls _0800B774
	ldr r0, _0800B784 @ =0x0831B1D4
	bl sub_080050A8
_0800B774:
	adds r0, r4, r5
	ldrb r0, [r0]
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0800B780: .4byte 0x0200E59C
_0800B784: .4byte 0x0831B1D4

	thumb_func_start sub_0800B788
sub_0800B788: @ 0x0800B788
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r6, _0800B7A4 @ =0x0200E59C
	cmp r4, #7
	bls _0800B79A
	ldr r0, _0800B7A8 @ =0x0831B1D4
	bl sub_080050A8
_0800B79A:
	adds r0, r4, r6
	strb r5, [r0]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800B7A4: .4byte 0x0200E59C
_0800B7A8: .4byte 0x0831B1D4

	thumb_func_start sub_0800B7AC
sub_0800B7AC: @ 0x0800B7AC
	push {r4, r5, r6, r7, lr}
	adds r1, r0, #0
	ldr r4, _0800B810 @ =0x0200E59C
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
	ldr r0, _0800B814 @ =0x0300136C
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
_0800B810: .4byte 0x0200E59C
_0800B814: .4byte 0x0300136C
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
	ldr r0, _0800BAB8 @ =0x0831B1C0
	bl sub_080050A8
	movs r0, #0
_0800BAB2:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0800BAB8: .4byte 0x0831B1C0

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
	ldr r1, _0800BC58 @ =0x030013B0
	mov sl, r1
	movs r1, #0
	strh r1, [r0, #0x3e]
	bl sub_08011C18
	cmp r7, #0
	bne _0800BC60
	movs r2, #0x14
	movs r3, #4
	ldr r0, _0800BC5C @ =0x0831B1F4
	b _0800BC7A
	.align 2, 0
_0800BC58: .4byte 0x030013B0
_0800BC5C: .4byte 0x0831B1F4
_0800BC60:
	cmp r7, #1
	bne _0800BC74
	movs r2, #0x14
	movs r3, #6
	ldr r1, _0800BC70 @ =0x0831B218
	mov r8, r1
	b _0800BC7C
	.align 2, 0
_0800BC70: .4byte 0x0831B218
_0800BC74:
	movs r2, #0x14
	movs r3, #4
	ldr r0, _0800BD50 @ =0x0831B258
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
	ldr r1, _0800BD54 @ =0x083E6C3C
	ldr r5, _0800BD58 @ =0x06009600
	movs r4, #0x80
	lsls r4, r4, #4
	adds r0, r5, #0
	adds r2, r4, #0
	bl sub_08000314
	adds r5, r5, r4
	ldr r1, _0800BD5C @ =0x083E745C
	adds r0, r5, #0
	adds r2, r4, #0
	bl sub_08000314
	movs r4, #4
	cmp r7, #0
	bne _0800BCEE
	movs r4, #1
_0800BCEE:
	ldr r1, _0800BD60 @ =0x083E6C1C
	ldr r5, _0800BD64 @ =0x05000100
	adds r0, r5, #0
	adds r2, r4, #0
	bl sub_0800BABC
	adds r5, #0x20
	ldr r1, _0800BD68 @ =0x083E743C
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
	ldr r0, _0800BD6C @ =0x04000018
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
_0800BD50: .4byte 0x0831B258
_0800BD54: .4byte 0x083E6C3C
_0800BD58: .4byte 0x06009600
_0800BD5C: .4byte 0x083E745C
_0800BD60: .4byte 0x083E6C1C
_0800BD64: .4byte 0x05000100
_0800BD68: .4byte 0x083E743C
_0800BD6C: .4byte 0x04000018

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
	ldr r0, _0800BDA8 @ =0x04000018
	rsbs r3, r3, #0
	strh r3, [r0]
	bx lr
	.align 2, 0
_0800BDA8: .4byte 0x04000018

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
	bl sub_0803D380
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
	bl sub_0803D380
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
	ldr r0, _0800BEA4 @ =0x0200E59C
	ldr r1, _0800BEA8 @ =0x00000391
	adds r3, r0, r1
	movs r1, #0
	strb r1, [r3]
	bl sub_0800BDD0
	pop {r1}
	bx r1
	.align 2, 0
_0800BEA4: .4byte 0x0200E59C
_0800BEA8: .4byte 0x00000391

	thumb_func_start sub_0800BEAC
sub_0800BEAC: @ 0x0800BEAC
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r4, _0800BEE4 @ =0x0200E59C
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
_0800BEE4: .4byte 0x0200E59C
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
	ldr r4, _0800BF2C @ =0x0200EC1C
	ldr r2, _0800BF30 @ =0x083E7C9B
	adds r2, r0, r2
	ldr r1, _0800BF34 @ =0x083E7C9E
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
_0800BF2C: .4byte 0x0200EC1C
_0800BF30: .4byte 0x083E7C9B
_0800BF34: .4byte 0x083E7C9E

	thumb_func_start sub_0800BF38
sub_0800BF38: @ 0x0800BF38
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r3, _0800BF84 @ =0x0200E9DC
	movs r2, #0
	ldr r1, _0800BF88 @ =0xFFFFFB08
	adds r0, r3, r1
	ldrb r0, [r0]
	cmp r0, #2
	bne _0800BF4C
	movs r2, #1
_0800BF4C:
	ldr r1, _0800BF8C @ =0x083E7C9B
	adds r1, r2, r1
	ldr r0, _0800BF90 @ =0x083E7C9E
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
_0800BF84: .4byte 0x0200E9DC
_0800BF88: .4byte 0xFFFFFB08
_0800BF8C: .4byte 0x083E7C9B
_0800BF90: .4byte 0x083E7C9E
_0800BF94:
	adds r1, #0x48
	adds r4, #1
	cmp r4, r2
	bls _0800BF64
_0800BF9C:
	ldr r0, _0800BFAC @ =0x0831B27C
	bl sub_080050A8
	movs r0, #0
_0800BFA4:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0800BFAC: .4byte 0x0831B27C

	thumb_func_start sub_0800BFB0
sub_0800BFB0: @ 0x0800BFB0
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0800BFD0 @ =0x0200E9DC
	movs r1, #0
	cmp r1, r4
	bgt _0800BFC2
	cmp r4, #7
	bgt _0800BFC2
	movs r1, #1
_0800BFC2:
	cmp r1, #0
	bne _0800BFD8
	ldr r0, _0800BFD4 @ =0x0831B2A4
	bl sub_080050A8
	movs r0, #0
	b _0800BFF6
	.align 2, 0
_0800BFD0: .4byte 0x0200E9DC
_0800BFD4: .4byte 0x0831B2A4
_0800BFD8:
	movs r1, #0x90
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r0, r0, r4
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800BFEC
	ldr r0, _0800BFFC @ =0x0831B2D4
	bl sub_080050A8
_0800BFEC:
	lsls r0, r4, #3
	adds r0, r0, r4
	lsls r0, r0, #3
	ldr r1, _0800C000 @ =0x0200E9DC
	adds r0, r0, r1
_0800BFF6:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0800BFFC: .4byte 0x0831B2D4
_0800C000: .4byte 0x0200E9DC

	thumb_func_start sub_0800C004
sub_0800C004: @ 0x0800C004
	ldr r1, _0800C014 @ =0x0200C1A0
	ldr r2, _0800C018 @ =0x00002A7C
	adds r1, r1, r2
	adds r0, r0, r1
	movs r1, #0
	strb r1, [r0]
	bx lr
	.align 2, 0
_0800C014: .4byte 0x0200C1A0
_0800C018: .4byte 0x00002A7C

	thumb_func_start sub_0800C01C
sub_0800C01C: @ 0x0800C01C
	push {r4, r5, lr}
	ldr r5, _0800C04C @ =0x0200EC1C
	movs r4, #0
	ldr r2, _0800C050 @ =0x083E7C9B
	adds r2, r0, r2
	ldr r1, _0800C054 @ =0x083E7C9E
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
_0800C04C: .4byte 0x0200EC1C
_0800C050: .4byte 0x083E7C9B
_0800C054: .4byte 0x083E7C9E

	thumb_func_start sub_0800C058
sub_0800C058: @ 0x0800C058
	ldr r0, _0800C068 @ =0x0200E9D8
	movs r1, #0
	strb r1, [r0]
	strb r1, [r0, #1]
	movs r1, #8
	strb r1, [r0, #2]
	strb r1, [r0, #3]
	bx lr
	.align 2, 0
_0800C068: .4byte 0x0200E9D8

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
	ldr r0, _0800C0AC @ =0x0200C1A0
	ldr r1, _0800C0B0 @ =0x00002344
	adds r0, r0, r1
	ldrb r1, [r0]
	cmp r1, #2
	bne _0800C0B4
	mov r0, sp
	strb r1, [r0, #8]
	b _0800C0BA
	.align 2, 0
_0800C0AC: .4byte 0x0200C1A0
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
	ldr r6, _0800C170 @ =0x0200E9D8
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
_0800C170: .4byte 0x0200E9D8

	thumb_func_start sub_0800C174
sub_0800C174: @ 0x0800C174
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	ldr r5, [sp, #0x14]
	ldr r4, _0800C1AC @ =0x0200E9D8
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
_0800C1AC: .4byte 0x0200E9D8

	thumb_func_start sub_0800C1B0
sub_0800C1B0: @ 0x0800C1B0
	push {r4, r5, lr}
	sub sp, #8
	ldr r3, _0800C1E0 @ =0x0200E9D8
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
_0800C1E0: .4byte 0x0200E9D8

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
	ldr r0, _0800C2A8 @ =0x0831B330
	bl sub_080050A8
_0800C2A0:
	movs r0, #0
_0800C2A2:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0800C2A8: .4byte 0x0831B330

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
	ldr r0, _0800C2E4 @ =0x0831B35C
	bl sub_080050A8
	movs r0, #0
_0800C2DC:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0800C2E4: .4byte 0x0831B35C

	thumb_func_start sub_0800C2E8
sub_0800C2E8: @ 0x0800C2E8
	ldr r1, _0800C300 @ =0x0200EC24
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
_0800C300: .4byte 0x0200EC24
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
	ldr r0, _0800C350 @ =0x0200EC24
	mov r8, r0
	movs r4, #0x80
	lsls r4, r4, #4
	add r4, r8
	ldrh r1, [r4]
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	bne _0800C332
	ldr r0, _0800C354 @ =0x0831B38C
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
_0800C350: .4byte 0x0200EC24
_0800C354: .4byte 0x0831B38C

	thumb_func_start sub_0800C358
sub_0800C358: @ 0x0800C358
	ldr r1, _0800C364 @ =0x0200EC24
	ldr r2, _0800C368 @ =0x00000802
	adds r1, r1, r2
	strh r0, [r1]
	bx lr
	.align 2, 0
_0800C364: .4byte 0x0200EC24
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
	ldr r0, _0800C3B8 @ =0x0200C1A0
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
_0800C3B8: .4byte 0x0200C1A0
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
	ldr r1, _0800C3F8 @ =0x0200C1A0
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
	ldr r0, _0800C404 @ =0x0831B3C0
	bl sub_080050A8
	movs r0, #0
	b _0800C41E
	.align 2, 0
_0800C3F8: .4byte 0x0200C1A0
_0800C3FC: .4byte 0x00002344
_0800C400: .4byte 0x00006614
_0800C404: .4byte 0x0831B3C0
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
	ldr r5, _0800C458 @ =0x020127A8
	ldr r1, _0800C45C @ =0x083E7CA1
	adds r1, r3, r1
	ldr r0, _0800C460 @ =0x083E7CA4
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
_0800C458: .4byte 0x020127A8
_0800C45C: .4byte 0x083E7CA1
_0800C460: .4byte 0x083E7CA4
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
	ldr r6, _0800C4E4 @ =0x0200F430
	movs r2, #0
	ldr r1, _0800C4E8 @ =0xFFFFF0B4
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #2
	bne _0800C4B0
	movs r2, #1
_0800C4B0:
	ldr r1, _0800C4EC @ =0x083E7CA1
	adds r1, r2, r1
	ldr r0, _0800C4F0 @ =0x083E7CA4
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
_0800C4E4: .4byte 0x0200F430
_0800C4E8: .4byte 0xFFFFF0B4
_0800C4EC: .4byte 0x083E7CA1
_0800C4F0: .4byte 0x083E7CA4
_0800C4F4: .4byte 0x00000894
_0800C4F8: .4byte 0x00003378
_0800C4FC:
	ldr r0, _0800C514 @ =0x00000894
	adds r1, r1, r0
	adds r4, #1
	cmp r4, r3
	bls _0800C4C8
_0800C506:
	ldr r0, _0800C518 @ =0x0831B3F0
	bl sub_080050A8
	movs r0, #0
_0800C50E:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0800C514: .4byte 0x00000894
_0800C518: .4byte 0x0831B3F0

	thumb_func_start sub_0800C51C
sub_0800C51C: @ 0x0800C51C
	push {lr}
	adds r1, r0, #0
	ldr r2, _0800C538 @ =0x0200F430
	movs r0, #0
	cmp r0, r1
	bgt _0800C52E
	cmp r1, #5
	bgt _0800C52E
	movs r0, #1
_0800C52E:
	cmp r0, #0
	bne _0800C540
	ldr r0, _0800C53C @ =0x0831B41C
	b _0800C55E
	.align 2, 0
_0800C538: .4byte 0x0200F430
_0800C53C: .4byte 0x0831B41C
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
	ldr r0, _0800C568 @ =0x0831B44C
_0800C55E:
	bl sub_080050A8
	movs r0, #0
_0800C564:
	pop {r1}
	bx r1
	.align 2, 0
_0800C568: .4byte 0x0831B44C

	thumb_func_start sub_0800C56C
sub_0800C56C: @ 0x0800C56C
	ldr r1, _0800C57C @ =0x0200C1A0
	ldr r2, _0800C580 @ =0x00006608
	adds r1, r1, r2
	adds r0, r0, r1
	movs r1, #0
	strb r1, [r0]
	bx lr
	.align 2, 0
_0800C57C: .4byte 0x0200C1A0
_0800C580: .4byte 0x00006608

	thumb_func_start sub_0800C584
sub_0800C584: @ 0x0800C584
	push {r4, r5, lr}
	ldr r5, _0800C5B4 @ =0x020127A8
	movs r4, #0
	ldr r2, _0800C5B8 @ =0x083E7CA1
	adds r2, r0, r2
	ldr r1, _0800C5BC @ =0x083E7CA4
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
_0800C5B4: .4byte 0x020127A8
_0800C5B8: .4byte 0x083E7CA1
_0800C5BC: .4byte 0x083E7CA4

	thumb_func_start sub_0800C5C0
sub_0800C5C0: @ 0x0800C5C0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r2, _0800C660 @ =0x0200E9DC
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
	ldr r1, _0800C66C @ =0x083E7C9B
	adds r1, r5, r1
	ldr r0, _0800C670 @ =0x083E7C9E
	adds r0, r5, r0
	ldrb r3, [r0]
	ldrb r1, [r1]
	ldr r7, _0800C674 @ =0x083E7CA1
	ldr r6, _0800C678 @ =0x083E7CA4
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
_0800C660: .4byte 0x0200E9DC
_0800C664: .4byte 0x00000A54
_0800C668: .4byte 0xFFFFFB08
_0800C66C: .4byte 0x083E7C9B
_0800C670: .4byte 0x083E7C9E
_0800C674: .4byte 0x083E7CA1
_0800C678: .4byte 0x083E7CA4
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
	ldr r7, _0800C78C @ =0x0200EC24
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
_0800C78C: .4byte 0x0200EC24
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
	ldr r1, _0800C7D0 @ =0x0200C1A0
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
_0800C7D0: .4byte 0x0200C1A0
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
	ldr r1, _0800C824 @ =0x0200C1A0
	ldr r2, _0800C828 @ =0x00006610
	adds r1, r1, r2
	ldr r1, [r1]
	lsls r0, r0, #3
	adds r1, r1, r0
	ldrb r0, [r1, #6]
	bx lr
	.align 2, 0
_0800C824: .4byte 0x0200C1A0
_0800C828: .4byte 0x00006610

	thumb_func_start sub_0800C82C
sub_0800C82C: @ 0x0800C82C
	push {r4, r5, r6, r7, lr}
	ldr r4, _0800C864 @ =0xFFFFF76C
	add sp, r4
	adds r6, r0, #0
	ldr r5, _0800C868 @ =0x0200E9D8
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
	ldr r0, _0800C878 @ =0x030013D0
	b _0800C882
	.align 2, 0
_0800C864: .4byte 0xFFFFF76C
_0800C868: .4byte 0x0200E9D8
_0800C86C: .4byte 0x0000080C
_0800C870: .4byte 0x00000804
_0800C874: .4byte 0x00000808
_0800C878: .4byte 0x030013D0
_0800C87C:
	ldr r1, _0800C918 @ =0x00000808
	add r1, sp
	ldr r0, _0800C91C @ =0x030013B0
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
	ldr r0, _0800C94C @ =0x0200C1A0
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
_0800C91C: .4byte 0x030013B0
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
_0800C94C: .4byte 0x0200C1A0
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
	ldr r0, _0800CA64 @ =0x0800C815
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
	ldr r5, _0800CA70 @ =0x0200C1A0
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
_0800CA64: .4byte 0x0800C815
_0800CA68: .4byte 0x00000884
_0800CA6C: .4byte 0x0000080C
_0800CA70: .4byte 0x0200C1A0
_0800CA74: .4byte 0x00006610
_0800CA78: .4byte 0x00002344
_0800CA7C: .4byte 0x00006614
_0800CA80: .4byte 0x00000894

	thumb_func_start sub_0800CA84
sub_0800CA84: @ 0x0800CA84
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r7, _0800CAD8 @ =0x0200C1A0
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
_0800CAD8: .4byte 0x0200C1A0
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
	ldr r2, _0800CBA4 @ =0x0200C1A0
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
_0800CBA4: .4byte 0x0200C1A0
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
	ldr r4, _0800CBC8 @ =0x0200E4E4
	b _0800CBD0
	.align 2, 0
_0800CBC8: .4byte 0x0200E4E4
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
	ldr r0, _0800CC8C @ =0x08318598
	movs r1, #0
	movs r2, #1
	bl sub_0800C30C
	ldr r0, _0800CC90 @ =0x08318590
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
_0800CC8C: .4byte 0x08318598
_0800CC90: .4byte 0x08318590

	thumb_func_start sub_0800CC94
sub_0800CC94: @ 0x0800CC94
	push {r4, r5, r6, r7, lr}
	ldr r7, _0800CCC0 @ =0x030013B0
	ldr r4, _0800CCC4 @ =0x083E7CA8
	movs r6, #0
	ldr r5, _0800CCC8 @ =0x020127CC
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
_0800CCC0: .4byte 0x030013B0
_0800CCC4: .4byte 0x083E7CA8
_0800CCC8: .4byte 0x020127CC

	thumb_func_start sub_0800CCCC
sub_0800CCCC: @ 0x0800CCCC
	push {lr}
	movs r2, #0
	ldr r1, _0800CCDC @ =0x020127CC
_0800CCD2:
	ldrh r3, [r1]
	cmp r0, r3
	bne _0800CCE0
	movs r0, #1
	b _0800CCEA
	.align 2, 0
_0800CCDC: .4byte 0x020127CC
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
	ldr r4, _0800CDFC @ =0x030013B0
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
_0800CDFC: .4byte 0x030013B0
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
	ldr r0, _0800CEAC @ =0x030013B0
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
_0800CEAC: .4byte 0x030013B0

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
	ldr r0, _0800CF30 @ =0x030013B0
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
_0800CF30: .4byte 0x030013B0

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
	ldr r0, _0800CFBC @ =0x030013B0
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
_0800CFBC: .4byte 0x030013B0

	thumb_func_start sub_0800CFC0
sub_0800CFC0: @ 0x0800CFC0
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _0800CFE4 @ =0x02001D0C
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800CFF8
	cmp r1, #0
	beq _0800CFDE
	ldr r0, _0800CFE8 @ =0x02000008
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
_0800CFE4: .4byte 0x02001D0C
_0800CFE8: .4byte 0x02000008
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
	ldr r6, _0800D048 @ =0x030013B0
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
_0800D048: .4byte 0x030013B0
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
	ldr r6, _0800D084 @ =0x083D6088
_0800D07C:
	cmp r3, #0x24
	bne _0800D088
	adds r1, #2
	b _0800D0AE
	.align 2, 0
_0800D084: .4byte 0x083D6088
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
	ldr r1, _0800D120 @ =0x083D6088
	mov ip, r1
_0800D116:
	cmp r0, #0x24
	bne _0800D124
	adds r4, #2
	b _0800D13E
	.align 2, 0
_0800D120: .4byte 0x083D6088
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
	ldr r2, _0800D158 @ =0x083D6088
_0800D150:
	cmp r1, #0x24
	bne _0800D15C
	adds r4, #2
	b _0800D182
	.align 2, 0
_0800D158: .4byte 0x083D6088
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
	ldr r0, _0800D214 @ =0x030013B0
	str r0, [r4, #0xc]
_0800D20E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800D214: .4byte 0x030013B0

	thumb_func_start sub_0800D218
sub_0800D218: @ 0x0800D218
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r6, #0
	b _0800D238
_0800D220:
	adds r0, r6, #0
	movs r1, #0xf
	bl sub_0803D34C
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
	ldr r0, _0800D264 @ =0x02000020
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
_0800D264: .4byte 0x02000020
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
	ldr r4, _0800D324 @ =0x020127BC
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
_0800D324: .4byte 0x020127BC

	thumb_func_start sub_0800D328
sub_0800D328: @ 0x0800D328
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	ldr r2, [sp, #0x20]
	ldr r0, _0800D354 @ =0x020127BC
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
_0800D354: .4byte 0x020127BC

	thumb_func_start sub_0800D358
sub_0800D358: @ 0x0800D358
	ldr r1, _0800D360 @ =0x020127BC
	movs r0, #1
	strb r0, [r1, #4]
	bx lr
	.align 2, 0
_0800D360: .4byte 0x020127BC

	thumb_func_start sub_0800D364
sub_0800D364: @ 0x0800D364
	push {r4, r5, lr}
	ldr r4, _0800D390 @ =0x020127BC
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
_0800D390: .4byte 0x020127BC

	thumb_func_start sub_0800D394
sub_0800D394: @ 0x0800D394
	push {lr}
	ldr r2, _0800D3A8 @ =0x020127BC
	movs r1, #3
	cmp r1, r0
	ble _0800D3A0
	adds r1, r0, #0
_0800D3A0:
	strb r1, [r2, #8]
	pop {r0}
	bx r0
	.align 2, 0
_0800D3A8: .4byte 0x020127BC

	thumb_func_start sub_0800D3AC
sub_0800D3AC: @ 0x0800D3AC
	ldr r1, _0800D3B4 @ =0x020127BC
	strb r0, [r1, #9]
	bx lr
	.align 2, 0
_0800D3B4: .4byte 0x020127BC

	thumb_func_start sub_0800D3B8
sub_0800D3B8: @ 0x0800D3B8
	push {lr}
	ldr r0, _0800D3C8 @ =0x020127BC
	movs r1, #0xc
	bl sub_0800A554
	pop {r0}
	bx r0
	.align 2, 0
_0800D3C8: .4byte 0x020127BC

	thumb_func_start sub_0800D3CC
sub_0800D3CC: @ 0x0800D3CC
	push {lr}
	ldr r0, _0800D3DC @ =0x020127BC
	movs r1, #0xc
	bl sub_0800A5B4
	pop {r0}
	bx r0
	.align 2, 0
_0800D3DC: .4byte 0x020127BC

	thumb_func_start sub_0800D3E0
sub_0800D3E0: @ 0x0800D3E0
	push {lr}
	ldr r0, _0800D3EC @ =0x020127BC
	bl sub_0800D000
	pop {r0}
	bx r0
	.align 2, 0
_0800D3EC: .4byte 0x020127BC

	thumb_func_start sub_0800D3F0
sub_0800D3F0: @ 0x0800D3F0
	push {lr}
	ldr r0, _0800D3FC @ =0x020127BC
	bl sub_0800D02C
	pop {r0}
	bx r0
	.align 2, 0
_0800D3FC: .4byte 0x020127BC

	thumb_func_start sub_0800D400
sub_0800D400: @ 0x0800D400
	push {r4, lr}
	ldr r4, _0800D418 @ =0x020127BC
	adds r0, r4, #0
	bl sub_0800D218
	cmp r0, #0
	bne _0800D41C
	adds r0, r4, #0
	bl sub_0800D02C
	movs r0, #0
	b _0800D41E
	.align 2, 0
_0800D418: .4byte 0x020127BC
_0800D41C:
	movs r0, #1
_0800D41E:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_0800D424
sub_0800D424: @ 0x0800D424
	push {lr}
	ldr r0, _0800D430 @ =0x020127BC
	bl sub_0800D218
	pop {r1}
	bx r1
	.align 2, 0
_0800D430: .4byte 0x020127BC

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
	ldr r0, _0800D4BC @ =0x0200C1B4
	movs r1, #0
	bl sub_0800D55C
_0800D4B4:
	movs r0, #0
_0800D4B6:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0800D4BC: .4byte 0x0200C1B4

	thumb_func_start sub_0800D4C0
sub_0800D4C0: @ 0x0800D4C0
	push {r4, r5, r6, r7, lr}
	ldr r5, _0800D4F0 @ =0x020127BC
	ldr r7, _0800D4F4 @ =0x030013B0
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
_0800D4F0: .4byte 0x020127BC
_0800D4F4: .4byte 0x030013B0
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
	ldr r5, _0800D574 @ =0x020127BC
	adds r4, r0, #0
	cmp r1, #0
	beq _0800D57C
	ldr r0, _0800D578 @ =0x030013D0
	str r0, [r5, #0xc]
	adds r6, r0, #0
	movs r0, #0
	strb r0, [r5, #4]
	b _0800D582
	.align 2, 0
_0800D574: .4byte 0x020127BC
_0800D578: .4byte 0x030013D0
_0800D57C:
	ldr r0, _0800D5B0 @ =0x030013B0
	str r0, [r5, #0xc]
	adds r6, r0, #0
_0800D582:
	ldr r1, _0800D5B4 @ =0x0200C1A0
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
	ldr r0, _0800D5B0 @ =0x030013B0
	str r0, [r5, #0xc]
	movs r0, #0
	b _0800D6BC
	.align 2, 0
_0800D5B0: .4byte 0x030013B0
_0800D5B4: .4byte 0x0200C1A0
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
	ldr r0, _0800D6A0 @ =0x083D6088
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
_0800D6A0: .4byte 0x083D6088
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
	ldr r0, _0800D6F0 @ =0x0831B4A4
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
_0800D6F0: .4byte 0x0831B4A4

	thumb_func_start sub_0800D6F4
sub_0800D6F4: @ 0x0800D6F4
	push {r4, r5, lr}
	sub sp, #0x44
	adds r5, r0, #0
	adds r4, r1, #0
	cmp r4, #0x20
	bls _0800D706
	ldr r0, _0800D720 @ =0x0831B4C0
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
_0800D720: .4byte 0x0831B4C0

	thumb_func_start sub_0800D724
sub_0800D724: @ 0x0800D724
	push {lr}
	sub sp, #0x10
	adds r2, r0, #0
	ldr r1, _0800D740 @ =0x0831B180
	mov r0, sp
	bl sub_0803DFE0
	mov r0, sp
	movs r1, #0
	bl sub_0800D55C
	add sp, #0x10
	pop {r0}
	bx r0
	.align 2, 0
_0800D740: .4byte 0x0831B180

	thumb_func_start sub_0800D744
sub_0800D744: @ 0x0800D744
	push {r4, r5, lr}
	sub sp, #0x14
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r1, _0800D778 @ =0x0831B4E4
	mov r0, sp
	movs r2, #4
	bl sub_0803DEBC
	mov r0, sp
	adds r4, #0x30
	strb r4, [r0, #1]
	add r4, sp, #4
	adds r0, r4, #0
	mov r1, sp
	adds r2, r5, #0
	bl sub_0803DFE0
	adds r0, r4, #0
	movs r1, #0
	bl sub_0800D55C
	add sp, #0x14
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800D778: .4byte 0x0831B4E4

	thumb_func_start sub_0800D77C
sub_0800D77C: @ 0x0800D77C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	adds r5, r0, #0
	adds r6, r1, #0
	adds r4, r2, #0
	ldr r1, _0800D818 @ =0x0831B4E8
	mov r0, sp
	movs r2, #4
	bl sub_0803DEBC
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
	bl sub_0803DFE0
	adds r0, r4, #0
	bl sub_0803E06C
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
_0800D818: .4byte 0x0831B4E8

	thumb_func_start sub_0800D81C
sub_0800D81C: @ 0x0800D81C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x10
	mov ip, r2
	mov r8, r3
	ldr r6, _0800D878 @ =0x0200C1A0
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
_0800D878: .4byte 0x0200C1A0
_0800D87C: .4byte 0x0000661C

	thumb_func_start sub_0800D880
sub_0800D880: @ 0x0800D880
	push {lr}
	ldr r1, _0800D8A0 @ =0x02012800
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
_0800D8A0: .4byte 0x02012800

	thumb_func_start sub_0800D8A4
sub_0800D8A4: @ 0x0800D8A4
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0800D8C0 @ =0x083E3E74
	movs r1, #0x36
	adds r2, r4, #0
	bl sub_08000E54
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0800D8C4
	adds r0, r1, #0
	b _0800D8D0
	.align 2, 0
_0800D8C0: .4byte 0x083E3E74
_0800D8C4:
	ldr r0, _0800D8D8 @ =0x0831B4EC
	ldr r2, _0800D8DC @ =0x0831B4F8
	adds r1, r4, #0
	bl sub_080050E4
	movs r0, #0
_0800D8D0:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0800D8D8: .4byte 0x0831B4EC
_0800D8DC: .4byte 0x0831B4F8

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
	ldr r3, _0800D98C @ =0x085371D8
	ldr r1, _0800D990 @ =0x083E4F04
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
	ldr r1, _0800D994 @ =0x0831B508
	ldr r2, [r5, #8]
	mov r0, sp
	adds r3, r4, #0
	bl sub_0803DFE0
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
	bl sub_0803D358
	movs r1, #0
	ldrsh r0, [r5, r1]
	movs r2, #2
	ldrsh r1, [r5, r2]
	movs r2, #1
	bl sub_0800D8E0
	b _0800D9AA
	.align 2, 0
_0800D98C: .4byte 0x085371D8
_0800D990: .4byte 0x083E4F04
_0800D994: .4byte 0x0831B508
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
	ldr r0, _0800D9D0 @ =0x02012800
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
_0800D9D0: .4byte 0x02012800

	thumb_func_start sub_0800D9D4
sub_0800D9D4: @ 0x0800D9D4
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	ldr r4, _0800D9E8 @ =0x02012800
	ldrb r0, [r5]
	cmp r0, #0
	bne _0800D9EC
	bl sub_0800DA40
	b _0800DA38
	.align 2, 0
_0800D9E8: .4byte 0x02012800
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
	ldr r4, _0800DA6C @ =0x02012800
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
_0800DA6C: .4byte 0x02012800

	thumb_func_start sub_0800DA70
sub_0800DA70: @ 0x0800DA70
	push {lr}
	ldr r1, _0800DA84 @ =0x0201280C
	movs r0, #0
	strb r0, [r1]
	movs r1, #0
	movs r2, #0
	bl sub_0800DAC4
	pop {r0}
	bx r0
	.align 2, 0
_0800DA84: .4byte 0x0201280C

	thumb_func_start sub_0800DA88
sub_0800DA88: @ 0x0800DA88
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0800DAA4 @ =0x083E3F4C
	movs r1, #0x1f
	adds r2, r4, #0
	bl sub_08000E54
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0800DAA8
	adds r0, r1, #0
	b _0800DAB4
	.align 2, 0
_0800DAA4: .4byte 0x083E3F4C
_0800DAA8:
	ldr r0, _0800DABC @ =0x0831B528
	ldr r2, _0800DAC0 @ =0x0831B4F8
	adds r1, r4, #0
	bl sub_080050E4
	movs r0, #0
_0800DAB4:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0800DABC: .4byte 0x0831B528
_0800DAC0: .4byte 0x0831B4F8

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
	ldr r0, _0800DC34 @ =0x04000050
	strh r1, [r0]
	movs r0, #0x10
	ldr r1, [sp]
	subs r0, r0, r1
	lsls r0, r0, #8
	orrs r0, r1
	ldr r1, _0800DC38 @ =0x04000052
	strh r0, [r1]
	b _0800DC68
	.align 2, 0
_0800DC20: .4byte 0x07000050
_0800DC24: .4byte 0x00000C8C
_0800DC28: .4byte 0x00000D8C
_0800DC2C: .4byte 0x00000D9C
_0800DC30: .4byte 0x00000DAC
_0800DC34: .4byte 0x04000050
_0800DC38: .4byte 0x04000052
_0800DC3C:
	ldr r0, _0800DC44 @ =0x02001D0C
	ldrb r1, [r0]
	b _0800DC5A
	.align 2, 0
_0800DC44: .4byte 0x02001D0C
_0800DC48:
	movs r0, #0
	ldr r2, _0800DC78 @ =0x02001D0C
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
	ldr r0, _0800DC7C @ =0x04000050
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
_0800DC78: .4byte 0x02001D0C
_0800DC7C: .4byte 0x04000050

	thumb_func_start sub_0800DC80
sub_0800DC80: @ 0x0800DC80
	push {r4, lr}
	ldr r2, _0800DCAC @ =0x08572050
	ldr r1, _0800DCB0 @ =0x083E4FDC
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
	bl sub_0803D358
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800DCAC: .4byte 0x08572050
_0800DCB0: .4byte 0x083E4FDC
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
	ldr r0, _0800DD08 @ =0x0201280C
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
_0800DD08: .4byte 0x0201280C
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
	ldr r0, _0800DD64 @ =0x02001D0C
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
	ldr r0, _0800DD64 @ =0x02001D0C
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800DD68
	adds r0, r7, #0
	mov r1, r8
	movs r2, #0x10
	bl sub_0800DAC4
	b _0800DD7E
	.align 2, 0
_0800DD64: .4byte 0x02001D0C
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
	ldr r0, _0800DDC4 @ =0x0201280C
	mov r8, r0
	movs r7, #0x30
	movs r6, #0
	bl sub_0800F04C
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #0
	beq _0800DDEA
	ldr r0, _0800DDC8 @ =0x02001D0C
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800DDCC
	movs r0, #0x30
	movs r1, #0
	movs r2, #0
	bl sub_0800DAC4
	b _0800DDE4
	.align 2, 0
_0800DDC4: .4byte 0x0201280C
_0800DDC8: .4byte 0x02001D0C
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
	ldr r0, _0800DE14 @ =0x083E4120
	movs r1, #0x25
	adds r2, r4, #0
	bl sub_08000E54
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0800DE50
	ldr r0, _0800DE18 @ =0x0831B534
	b _0800DE36
	.align 2, 0
_0800DE14: .4byte 0x083E4120
_0800DE18: .4byte 0x0831B534
_0800DE1C:
	cmp r0, #5
	bne _0800DE54
	ldr r0, _0800DE44 @ =0x083E411C
	movs r1, #1
	adds r2, r4, #0
	bl sub_08000E54
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0800DE50
	ldr r0, _0800DE48 @ =0x0831B544
_0800DE36:
	ldr r2, _0800DE4C @ =0x0831B4F8
	adds r1, r4, #0
	bl sub_080050E4
	movs r0, #0
	b _0800DE5A
	.align 2, 0
_0800DE44: .4byte 0x083E411C
_0800DE48: .4byte 0x0831B544
_0800DE4C: .4byte 0x0831B4F8
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
	ldr r2, _0800E104 @ =0x0858E944
	ldr r0, _0800E108 @ =0x083E51B0
	b _0800E160
	.align 2, 0
_0800E104: .4byte 0x0858E944
_0800E108: .4byte 0x083E51B0
_0800E10C:
	ldr r2, _0800E11C @ =0x08486E54
	lsls r0, r3, #2
	adds r0, r0, r2
	ldr r0, [r0]
	adds r1, r0, r2
	movs r6, #0x3c
	movs r5, #0x80
	b _0800E188
	.align 2, 0
_0800E11C: .4byte 0x08486E54
_0800E120:
	ldr r2, _0800E130 @ =0x084912AC
	lsls r0, r3, #2
	adds r0, r0, r2
	ldr r0, [r0]
	adds r1, r0, r2
	movs r6, #0x3c
	movs r5, #0xa0
	b _0800E188
	.align 2, 0
_0800E130: .4byte 0x084912AC
_0800E134:
	ldr r2, _0800E144 @ =0x0849CE78
	lsls r0, r3, #2
	adds r0, r0, r2
	ldr r0, [r0]
	adds r1, r0, r2
	movs r6, #0x90
	movs r5, #0xc0
	b _0800E188
	.align 2, 0
_0800E144: .4byte 0x0849CE78
_0800E148:
	ldr r2, _0800E158 @ =0x084B51A4
	lsls r0, r3, #2
	adds r0, r0, r2
	ldr r0, [r0]
	adds r1, r0, r2
	movs r6, #0x10
	movs r5, #0xe0
	b _0800E188
	.align 2, 0
_0800E158: .4byte 0x084B51A4
_0800E15C:
	ldr r2, _0800E180 @ =0x0858E804
	ldr r0, _0800E184 @ =0x083E51AC
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
	bl sub_0803D358
	b _0800E1A6
	.align 2, 0
_0800E180: .4byte 0x0858E804
_0800E184: .4byte 0x083E51AC
_0800E188:
	adds r4, r1, #0
	adds r4, #0x40
	mov r0, ip
	movs r2, #0x40
	bl sub_080002C4
	adds r0, r4, #0
	adds r1, r7, #0
	bl sub_0803D358
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
	ldr r1, _0800E39C @ =0x02012810
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #0xc]
	strb r0, [r1, #0xd]
	bl sub_0800DE60
	pop {r0}
	bx r0
	.align 2, 0
_0800E39C: .4byte 0x02012810

	thumb_func_start sub_0800E3A0
sub_0800E3A0: @ 0x0800E3A0
	push {r4, lr}
	ldr r3, _0800E3E8 @ =0x02012810
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
_0800E3E8: .4byte 0x02012810

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
	ldr r4, _0800E464 @ =0x02012810
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
_0800E464: .4byte 0x02012810
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
	ldr r0, _0800E534 @ =0x02012810
	movs r1, #0
	strb r1, [r0]
	ldr r0, _0800E538 @ =0x07000018
	movs r1, #6
	bl sub_08000FEC
	pop {r0}
	bx r0
	.align 2, 0
_0800E534: .4byte 0x02012810
_0800E538: .4byte 0x07000018

	thumb_func_start sub_0800E53C
sub_0800E53C: @ 0x0800E53C
	push {lr}
	ldr r0, _0800E554 @ =0x02012820
	movs r1, #0x44
	movs r2, #0
	bl sub_08000498
	ldr r0, _0800E558 @ =0x070000B0
	movs r1, #8
	bl sub_08000FEC
	pop {r0}
	bx r0
	.align 2, 0
_0800E554: .4byte 0x02012820
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
	ldr r1, _0800E5F4 @ =0x083E5460
	ldr r5, _0800E5F8 @ =0x050002A0
	adds r0, r5, #0
	movs r2, #0x20
	bl sub_080002C4
	ldr r1, _0800E5FC @ =0x083E5480
	ldr r5, _0800E600 @ =0x06010E80
	movs r4, #0x80
	lsls r4, r4, #1
	adds r0, r5, #0
	adds r2, r4, #0
	bl sub_08000314
	adds r5, r5, r4
	ldr r1, _0800E604 @ =0x083E5580
	adds r0, r5, #0
	adds r2, r4, #0
	bl sub_08000314
	adds r5, r5, r4
	ldr r1, _0800E608 @ =0x083E5680
	adds r0, r5, #0
	adds r2, r4, #0
	bl sub_08000314
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800E5F4: .4byte 0x083E5460
_0800E5F8: .4byte 0x050002A0
_0800E5FC: .4byte 0x083E5480
_0800E600: .4byte 0x06010E80
_0800E604: .4byte 0x083E5580
_0800E608: .4byte 0x083E5680

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
	ldr r1, _0800E640 @ =0x02012820
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
_0800E640: .4byte 0x02012820
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
	ldr r0, _0800E6B0 @ =0x0200C1A0
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
_0800E6B0: .4byte 0x0200C1A0
_0800E6B4: .4byte 0x000066C0

	thumb_func_start sub_0800E6B8
sub_0800E6B8: @ 0x0800E6B8
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0800E5A8
	lsls r4, r4, #3
	ldr r0, _0800E6D0 @ =0x02012820
	adds r4, r4, r0
	movs r0, #0
	strb r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800E6D0: .4byte 0x02012820

	thumb_func_start sub_0800E6D4
sub_0800E6D4: @ 0x0800E6D4
	ldr r0, _0800E6E0 @ =0x0200C1A0
	ldr r1, _0800E6E4 @ =0x000066C4
	adds r0, r0, r1
	movs r1, #0
	strb r1, [r0]
	bx lr
	.align 2, 0
_0800E6E0: .4byte 0x0200C1A0
_0800E6E4: .4byte 0x000066C4

	thumb_func_start sub_0800E6E8
sub_0800E6E8: @ 0x0800E6E8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0800E704 @ =0x083E3FC8
	movs r1, #0x37
	adds r2, r4, #0
	bl sub_08000E54
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0800E708
	adds r0, r1, #0
	b _0800E714
	.align 2, 0
_0800E704: .4byte 0x083E3FC8
_0800E708:
	ldr r0, _0800E71C @ =0x0831B554
	ldr r2, _0800E720 @ =0x0831B4F8
	adds r1, r4, #0
	bl sub_080050E4
	movs r0, #0
_0800E714:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0800E71C: .4byte 0x0831B554
_0800E720: .4byte 0x0831B4F8

	thumb_func_start sub_0800E724
sub_0800E724: @ 0x0800E724
	push {r4, lr}
	adds r4, r0, #0
	ldr r3, _0800E748 @ =0x085A072C
	ldr r0, _0800E74C @ =0x083E5058
	lsls r2, r2, #2
	adds r2, r2, r0
	ldr r2, [r2]
	adds r2, r2, r3
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r2, r3
	str r2, [r4, #4]
	bl sub_0803D35C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800E748: .4byte 0x085A072C
_0800E74C: .4byte 0x083E5058

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
	ldr r7, _0800E86C @ =0x02012864
	bl sub_0800F05C
	ldrb r0, [r6]
	cmp r0, #0
	bne _0800E870
	bl sub_0800E6D4
	b _0800E8D2
	.align 2, 0
_0800E86C: .4byte 0x02012864
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
	ldr r0, _0800E8B8 @ =0x02001CC0
	bl sub_0800459C
	adds r5, r0, #0
	adds r0, r6, #0
	bl sub_0800E6E8
	adds r2, r0, #0
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_0800E724
	bl sub_0803D380
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
_0800E8B8: .4byte 0x02001CC0
_0800E8BC:
	adds r0, r7, #0
	adds r1, r5, #0
	movs r2, #0
	movs r3, #0
	bl sub_0800E750
_0800E8C8:
	ldr r0, _0800E8DC @ =0x02001CC0
	bl sub_08004604
	movs r0, #1
	strb r0, [r7]
_0800E8D2:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800E8DC: .4byte 0x02001CC0

	thumb_func_start sub_0800E8E0
sub_0800E8E0: @ 0x0800E8E0
	ldr r0, _0800E8EC @ =0x0200C1A0
	ldr r1, _0800E8F0 @ =0x000066CC
	adds r0, r0, r1
	movs r1, #0
	strb r1, [r0]
	bx lr
	.align 2, 0
_0800E8EC: .4byte 0x0200C1A0
_0800E8F0: .4byte 0x000066CC

	thumb_func_start sub_0800E8F4
sub_0800E8F4: @ 0x0800E8F4
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0800E910 @ =0x083E40A4
	movs r1, #0x1e
	adds r2, r4, #0
	bl sub_08000E54
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0800E914
	adds r0, r1, #0
	b _0800E920
	.align 2, 0
_0800E910: .4byte 0x083E40A4
_0800E914:
	ldr r0, _0800E928 @ =0x0831B560
	ldr r2, _0800E92C @ =0x0831B4F8
	adds r1, r4, #0
	bl sub_080050E4
	movs r0, #0
_0800E920:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0800E928: .4byte 0x0831B560
_0800E92C: .4byte 0x0831B4F8

	thumb_func_start sub_0800E930
sub_0800E930: @ 0x0800E930
	push {r4, lr}
	adds r4, r0, #0
	ldr r3, _0800E954 @ =0x0864C180
	ldr r0, _0800E958 @ =0x083E5134
	lsls r2, r2, #2
	adds r2, r2, r0
	ldr r2, [r2]
	adds r2, r2, r3
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r2, r3
	str r2, [r4, #4]
	bl sub_0803D35C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800E954: .4byte 0x0864C180
_0800E958: .4byte 0x083E5134

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
	ldr r6, _0800EA44 @ =0x0201286C
	adds r0, r7, #0
	adds r0, #0xe
	cmp r0, #0x1e
	bhi _0800E9F8
	adds r0, r5, #0
	adds r0, #0xa
	cmp r0, #0x14
	bls _0800E9FE
_0800E9F8:
	ldr r0, _0800EA48 @ =0x0831B56C
	bl sub_080050A8
_0800E9FE:
	movs r0, #0xa
	lsls r0, r0, #6
	movs r1, #0xe
	muls r1, r0, r1
	ldr r0, _0800EA4C @ =0x02001CC0
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
_0800EA44: .4byte 0x0201286C
_0800EA48: .4byte 0x0831B56C
_0800EA4C: .4byte 0x02001CC0

	thumb_func_start sub_0800EA50
sub_0800EA50: @ 0x0800EA50
	ldr r0, _0800EA5C @ =0x0200C1A0
	ldr r1, _0800EA60 @ =0x000066D4
	adds r0, r0, r1
	movs r1, #0
	strb r1, [r0]
	bx lr
	.align 2, 0
_0800EA5C: .4byte 0x0200C1A0
_0800EA60: .4byte 0x000066D4

	thumb_func_start sub_0800EA64
sub_0800EA64: @ 0x0800EA64
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0800EA80 @ =0x083E41B4
	movs r1, #0x2d
	adds r2, r4, #0
	bl sub_08000E54
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0800EA84
	adds r0, r1, #0
	b _0800EA90
	.align 2, 0
_0800EA80: .4byte 0x083E41B4
_0800EA84:
	ldr r0, _0800EA98 @ =0x0831B58C
	ldr r2, _0800EA9C @ =0x0831B4F8
	adds r1, r4, #0
	bl sub_080050E4
	movs r0, #0
_0800EA90:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0800EA98: .4byte 0x0831B58C
_0800EA9C: .4byte 0x0831B4F8

	thumb_func_start sub_0800EAA0
sub_0800EAA0: @ 0x0800EAA0
	push {r4, lr}
	adds r4, r0, #0
	ldr r3, _0800EAC4 @ =0x0866F730
	ldr r0, _0800EAC8 @ =0x083E53AC
	lsls r2, r2, #2
	adds r2, r2, r0
	ldr r2, [r2]
	adds r2, r2, r3
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r2, r3
	str r2, [r4, #4]
	bl sub_0803D35C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800EAC4: .4byte 0x0866F730
_0800EAC8: .4byte 0x083E53AC

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
	ldr r1, _0800ECB4 @ =0x02012874
	mov sl, r1
	bl sub_0800EA64
	adds r5, r0, #0
	ldr r1, _0800ECB8 @ =0x083E5244
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
	ldr r0, _0800ECBC @ =0x0831B59C
	bl sub_080050A8
_0800EC70:
	lsls r0, r6, #6
	adds r1, r7, #0
	muls r1, r0, r1
	ldr r0, _0800ECC0 @ =0x02001CC0
	bl sub_0800459C
	adds r4, r0, #0
	mov r0, sl
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_0800EAA0
	ldr r0, _0800ECC4 @ =0x0200C1A0
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
_0800ECB4: .4byte 0x02012874
_0800ECB8: .4byte 0x083E5244
_0800ECBC: .4byte 0x0831B59C
_0800ECC0: .4byte 0x02001CC0
_0800ECC4: .4byte 0x0200C1A0
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
	ldr r0, _0800ECF8 @ =0x02001CC0
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
_0800ECF8: .4byte 0x02001CC0

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
	ldr r0, _0800ED34 @ =0x0831B5BC
	bl sub_080050A8
_0800ED22:
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #2
	ldr r1, _0800ED38 @ =0x083E7CDC
	adds r0, r0, r1
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0800ED34: .4byte 0x0831B5BC
_0800ED38: .4byte 0x083E7CDC

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
	bl sub_0803D358
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
	ldr r1, _0800EE5C @ =0x04000018
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
	ldr r1, _0800EE64 @ =0x0400000C
	ldr r7, _0800EE68 @ =0x00001D81
	adds r0, r7, #0
	strh r0, [r1]
	adds r1, #0x3c
	movs r0, #0x1f
	strh r0, [r1]
	adds r1, #2
	movs r0, #0x1b
	strh r0, [r1]
	ldr r0, _0800EE6C @ =0x02001D0C
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800EE3C
	bl sub_0803D380
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
_0800EE5C: .4byte 0x04000018
_0800EE60: .4byte 0x000001FF
_0800EE64: .4byte 0x0400000C
_0800EE68: .4byte 0x00001D81
_0800EE6C: .4byte 0x02001D0C

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
	ldr r1, _0800EE9C @ =0x0201287C
	movs r0, #0
	strb r0, [r1]
	bl sub_0800EE70
	pop {r0}
	bx r0
	.align 2, 0
_0800EE9C: .4byte 0x0201287C

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
	ldr r4, _0800EF00 @ =0x0201287C
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
_0800EF00: .4byte 0x0201287C
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
	ldr r4, _0800EFB0 @ =0x0201287C
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
_0800EFB0: .4byte 0x0201287C

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
	ldr r1, _0800EFF0 @ =0x0831B5DC
	adds r2, r4, #0
	bl sub_0803DFE0
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
_0800EFF0: .4byte 0x0831B5DC

	thumb_func_start sub_0800EFF4
sub_0800EFF4: @ 0x0800EFF4
	push {lr}
	ldr r0, _0800F004 @ =0x0200C4FC
	movs r1, #0xc4
	movs r2, #0
	bl sub_08000498
	pop {r0}
	bx r0
	.align 2, 0
_0800F004: .4byte 0x0200C4FC

	thumb_func_start sub_0800F008
sub_0800F008: @ 0x0800F008
	push {r4, r5, lr}
	adds r2, r0, #0
	adds r5, r1, #0
	ldr r4, _0800F024 @ =0x0200C4FC
	adds r0, r4, #0
	adds r1, r2, #0
	bl sub_0800EFB4
	adds r4, #0x30
	strb r5, [r4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800F024: .4byte 0x0200C4FC

	thumb_func_start sub_0800F028
sub_0800F028: @ 0x0800F028
	ldr r0, _0800F034 @ =0x0200C4FC
	movs r1, #0
	strb r1, [r0]
	adds r0, #0x30
	strb r1, [r0]
	bx lr
	.align 2, 0
_0800F034: .4byte 0x0200C4FC

	thumb_func_start sub_0800F038
sub_0800F038: @ 0x0800F038
	push {lr}
	adds r1, r0, #0
	ldr r0, _0800F048 @ =0x0200C4FC
	adds r0, #0x31
	bl sub_0800EFB4
	pop {r0}
	bx r0
	.align 2, 0
_0800F048: .4byte 0x0200C4FC

	thumb_func_start sub_0800F04C
sub_0800F04C: @ 0x0800F04C
	ldr r0, _0800F058 @ =0x0200C4FC
	adds r0, #0x31
	movs r1, #0
	strb r1, [r0]
	bx lr
	.align 2, 0
_0800F058: .4byte 0x0200C4FC

	thumb_func_start sub_0800F05C
sub_0800F05C: @ 0x0800F05C
	push {r4, r5, lr}
	adds r2, r0, #0
	adds r4, r1, #0
	ldr r5, _0800F080 @ =0x0200C4FC
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
_0800F080: .4byte 0x0200C4FC
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
	ldr r4, _0800F0BC @ =0x0200C4FC
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
_0800F0BC: .4byte 0x0200C4FC

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
	ldr r4, _0800F1DC @ =0x020128D0
	movs r2, #0
	ldr r3, _0800F1E0 @ =0x0200C188
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
_0800F1DC: .4byte 0x020128D0
_0800F1E0: .4byte 0x0200C188

	thumb_func_start sub_0800F1E4
sub_0800F1E4: @ 0x0800F1E4
	push {lr}
	ldr r1, _0800F218 @ =0x020128D0
	ldr r3, _0800F21C @ =0x0200C188
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
_0800F218: .4byte 0x020128D0
_0800F21C: .4byte 0x0200C188

	thumb_func_start sub_0800F220
sub_0800F220: @ 0x0800F220
	push {r4, lr}
	ldr r4, _0800F248 @ =0x0200C188
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
_0800F248: .4byte 0x0200C188
_0800F24C: .4byte 0x05000300
_0800F250: .4byte 0x050002C0

	thumb_func_start sub_0800F254
sub_0800F254: @ 0x0800F254
	push {lr}
	ldr r2, _0800F270 @ =0x020128D0
	cmp r0, #1
	beq _0800F280
	cmp r0, #1
	blo _0800F278
	cmp r0, #2
	beq _0800F288
	cmp r0, #3
	beq _0800F290
	ldr r0, _0800F274 @ =0x0831B5F4
	bl sub_080050A8
	b _0800F296
	.align 2, 0
_0800F270: .4byte 0x020128D0
_0800F274: .4byte 0x0831B5F4
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
	ldr r0, _0800F3C8 @ =0x03000B54
	ldr r0, [r0]
	cmp r0, r1
	bne _0800F3C2
	movs r0, #0
	bl sub_080008FC
_0800F3C2:
	pop {r0}
	bx r0
	.align 2, 0
_0800F3C8: .4byte 0x03000B54

	thumb_func_start sub_0800F3CC
sub_0800F3CC: @ 0x0800F3CC
	push {lr}
	ldr r0, _0800F3E4 @ =0x0200C1A0
	ldr r1, _0800F3E8 @ =0x000068B9
	adds r0, r0, r1
	movs r1, #0
	strb r1, [r0]
	movs r0, #0
	bl sub_0800F3A0
	pop {r0}
	bx r0
	.align 2, 0
_0800F3E4: .4byte 0x0200C1A0
_0800F3E8: .4byte 0x000068B9

	thumb_func_start sub_0800F3EC
sub_0800F3EC: @ 0x0800F3EC
	push {r4, r5, lr}
	ldr r4, _0800F438 @ =0x02012A58
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
_0800F438: .4byte 0x02012A58

	thumb_func_start sub_0800F43C
sub_0800F43C: @ 0x0800F43C
	push {r4, r5, lr}
	adds r2, r0, #0
	ldr r5, _0800F45C @ =0x02012A58
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
_0800F45C: .4byte 0x02012A58
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
	bl sub_08000E54
	adds r4, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r4, r0
	bne _0800F4F0
	ldr r1, _0800F500 @ =0x0831B608
	mov r0, sp
	adds r2, r5, #0
	bl sub_0803DFE0
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
_0800F500: .4byte 0x0831B608

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
	bl sub_0803D34C
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
	ldr r0, _0800F604 @ =0x0831A0A8
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
_0800F604: .4byte 0x0831A0A8
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
	ldr r1, _0800F784 @ =0x08312798
	movs r0, #3
	movs r2, #1
	bl sub_0800F8B0
	pop {r0}
	bx r0
	.align 2, 0
_0800F784: .4byte 0x08312798

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
	ldr r0, _0800F8A8 @ =0x02012B50
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
	ldr r1, _0800F8AC @ =0x0831AD10
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
_0800F8A8: .4byte 0x02012B50
_0800F8AC: .4byte 0x0831AD10

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
	ldr r0, _0800F8F0 @ =0x02012B50
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
_0800F8F0: .4byte 0x02012B50
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
	ldr r1, _0800F9BC @ =0x0831A0A8
	movs r0, #1
	movs r2, #0
	movs r3, #0
	bl sub_0800F8B0
	pop {r1}
	bx r1
	.align 2, 0
_0800F9BC: .4byte 0x0831A0A8

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
	ldr r0, _0800FA00 @ =0x02001D70
	ldrh r0, [r0, #8]
	cmp r0, #0
	beq _0800F9FA
	adds r0, r1, #0
	bl sub_080052AC
_0800F9FA:
	pop {r0}
	bx r0
	.align 2, 0
_0800FA00: .4byte 0x02001D70

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
	ldr r1, _0800FA1C @ =0x08319014
	bl sub_08000D80
	pop {r1}
	bx r1
	.align 2, 0
_0800FA1C: .4byte 0x08319014

	thumb_func_start sub_0800FA20
sub_0800FA20: @ 0x0800FA20
	push {lr}
	ldr r1, _0800FA2C @ =0x02012B50
	cmp r0, #0
	bne _0800FA30
	ldrb r0, [r1]
	b _0800FA56
	.align 2, 0
_0800FA2C: .4byte 0x02012B50
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
	ldr r0, _0800FA50 @ =0x0831B624
	bl sub_080050A8
	movs r0, #0
	b _0800FA56
	.align 2, 0
_0800FA50: .4byte 0x0831B624
_0800FA54:
	ldrh r0, [r1, #6]
_0800FA56:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0800FA5C
sub_0800FA5C: @ 0x0800FA5C
	ldr r0, _0800FA68 @ =0x0200E4E4
	movs r1, #0
	strb r1, [r0]
	movs r1, #1
	strb r1, [r0, #1]
	bx lr
	.align 2, 0
_0800FA68: .4byte 0x0200E4E4

	thumb_func_start sub_0800FA6C
sub_0800FA6C: @ 0x0800FA6C
	push {r4, lr}
	ldr r4, _0800FA8C @ =0x0200E4E4
	ldrb r0, [r4]
	cmp r0, #0
	bne _0800FA88
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _0800FA88
	ldr r0, _0800FA90 @ =0x02000020
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _0800FA94
_0800FA88:
	movs r0, #0
	b _0800FAFE
	.align 2, 0
_0800FA8C: .4byte 0x0200E4E4
_0800FA90: .4byte 0x02000020
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
	ldr r0, _0800FB0C @ =0x020132E0
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
_0800FB0C: .4byte 0x020132E0
_0800FB10: .4byte 0x000004F4
_0800FB14: .4byte 0x000042D8

	thumb_func_start sub_0800FB18
sub_0800FB18: @ 0x0800FB18
	ldr r1, _0800FB20 @ =0x0200E4E4
	strb r0, [r1, #1]
	bx lr
	.align 2, 0
_0800FB20: .4byte 0x0200E4E4

	thumb_func_start sub_0800FB24
sub_0800FB24: @ 0x0800FB24
	ldr r0, _0800FB2C @ =0x0200E4E4
	ldrb r0, [r0, #1]
	bx lr
	.align 2, 0
_0800FB2C: .4byte 0x0200E4E4

	thumb_func_start sub_0800FB30
sub_0800FB30: @ 0x0800FB30
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r5, _0800FB5C @ =0x0200E4E4
	ldr r0, _0800FB60 @ =0xFFFFDCBC
	adds r6, r5, r0
	ldrb r0, [r5]
	cmp r0, #2
	beq _0800FB46
	ldr r0, _0800FB64 @ =0x0831B644
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
_0800FB5C: .4byte 0x0200E4E4
_0800FB60: .4byte 0xFFFFDCBC
_0800FB64: .4byte 0x0831B644
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
	ldr r4, _0800FBC8 @ =0x0200E954
	adds r1, r5, #0
	adds r1, #0xc
	adds r0, r4, #0
	movs r2, #0x70
	bl sub_080002C4
	ldr r0, _0800FBCC @ =0x020132E0
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
_0800FBC8: .4byte 0x0200E954
_0800FBCC: .4byte 0x020132E0
_0800FBD0: .4byte 0x00003E68
_0800FBD4:
	movs r0, #0
	strb r0, [r5]
	bl sub_08011C70
	movs r0, #0
	bl sub_08011D8C
	ldr r0, _0800FBF4 @ =0x0831AF6C
	bl sub_080117CC
	ldr r2, _0800FBF8 @ =0xFFFFE8E4
	adds r1, r5, r2
	str r0, [r1]
_0800FBEE:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800FBF4: .4byte 0x0831AF6C
_0800FBF8: .4byte 0xFFFFE8E4

	thumb_func_start sub_0800FBFC
sub_0800FBFC: @ 0x0800FBFC
	push {lr}
	ldr r0, _0800FC08 @ =0x0831B69C
	bl sub_080050A8
	pop {r0}
	bx r0
	.align 2, 0
_0800FC08: .4byte 0x0831B69C

	thumb_func_start sub_0800FC0C
sub_0800FC0C: @ 0x0800FC0C
	push {lr}
	sub sp, #0x80
	adds r3, r1, #0
	ldr r1, _0800FC30 @ =0x083E7D00
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r1, _0800FC34 @ =0x0831B6B8
	mov r0, sp
	bl sub_0803DFE0
	mov r0, sp
	bl sub_080050A8
	add sp, #0x80
	pop {r0}
	bx r0
	.align 2, 0
_0800FC30: .4byte 0x083E7D00
_0800FC34: .4byte 0x0831B6B8

	thumb_func_start sub_0800FC38
sub_0800FC38: @ 0x0800FC38
	push {lr}
	sub sp, #0x80
	adds r3, r1, #0
	ldr r1, _0800FC5C @ =0x083E7D00
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r1, _0800FC60 @ =0x0831B6DC
	mov r0, sp
	bl sub_0803DFE0
	mov r0, sp
	bl sub_080050A8
	add sp, #0x80
	pop {r0}
	bx r0
	.align 2, 0
_0800FC5C: .4byte 0x083E7D00
_0800FC60: .4byte 0x0831B6DC

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
	ldr r0, _0800FC8C @ =0x083E7D1C
	adds r0, r2, r0
	ldrb r0, [r0]
	cmp r3, r0
	bhs _0800FC94
	ldr r1, _0800FC90 @ =0x083E7D40
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r0, [r0]
	lsls r1, r3, #1
	adds r0, r0, r1
	b _0800FC9E
	.align 2, 0
_0800FC8C: .4byte 0x083E7D1C
_0800FC90: .4byte 0x083E7D40
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
	ldr r2, _0800FCC4 @ =0x083E7D40
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
_0800FCC4: .4byte 0x083E7D40
_0800FCC8: .4byte 0x00000101

	thumb_func_start sub_0800FCCC
sub_0800FCCC: @ 0x0800FCCC
	push {lr}
	ldr r1, _0800FCE4 @ =0x083E7D24
	ldr r1, [r1, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _0800FCE8 @ =0x0831B700
	bl sub_08000DDC
	pop {r1}
	bx r1
	.align 2, 0
_0800FCE4: .4byte 0x083E7D24
_0800FCE8: .4byte 0x0831B700

	thumb_func_start sub_0800FCEC
sub_0800FCEC: @ 0x0800FCEC
	push {lr}
	adds r1, r0, #0
	cmp r1, #6
	bhi _0800FD00
	ldr r0, _0800FCFC @ =0x083E7D1C
	adds r0, r1, r0
	ldrb r0, [r0]
	b _0800FD06
	.align 2, 0
_0800FCFC: .4byte 0x083E7D1C
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
	ldr r0, _0800FD38 @ =0x083E7D1C
	adds r0, r2, r0
	ldrb r0, [r0]
	cmp r3, r0
	bhs _0800FD40
	ldr r1, _0800FD3C @ =0x083E7D24
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r1, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r0, [r0]
	b _0800FD4A
	.align 2, 0
_0800FD38: .4byte 0x083E7D1C
_0800FD3C: .4byte 0x083E7D24
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
	ldr r0, _0800FDA8 @ =0x083E7D1C
	adds r0, r7, r0
	ldrb r6, [r0]
	ldr r1, _0800FDAC @ =0x083E7D24
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
_0800FDA8: .4byte 0x083E7D1C
_0800FDAC: .4byte 0x083E7D24

	thumb_func_start sub_0800FDB0
sub_0800FDB0: @ 0x0800FDB0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	movs r6, #0
_0800FDBA:
	ldr r0, _0800FDE0 @ =0x083E7D1C
	adds r0, r6, r0
	ldrb r7, [r0]
	ldr r1, _0800FDE4 @ =0x083E7D24
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
_0800FDE0: .4byte 0x083E7D1C
_0800FDE4: .4byte 0x083E7D24
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
	ldr r0, _0800FE28 @ =0x083E7D1C
	adds r0, r2, r0
	ldrb r0, [r0]
	cmp r3, r0
	blo _0800FE2C
	adds r0, r2, #0
	adds r1, r3, #0
	bl sub_0800FC0C
	b _0800FE54
	.align 2, 0
_0800FE28: .4byte 0x083E7D1C
_0800FE2C:
	ldr r1, _0800FE50 @ =0x083E7D24
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
_0800FE50: .4byte 0x083E7D24
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
	ldr r2, _0800FF40 @ =0x0200C208
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
_0800FF40: .4byte 0x0200C208

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
	ldr r2, _0800FF98 @ =0x0200C208
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
_0800FF98: .4byte 0x0200C208

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
	ldr r0, _08010010 @ =0x0200C208
	movs r1, #0xd6
	lsls r1, r1, #1
	movs r2, #0
	bl sub_08000498
	pop {r0}
	bx r0
	.align 2, 0
_08010010: .4byte 0x0200C208

	thumb_func_start sub_08010014
sub_08010014: @ 0x08010014
	push {r4, r5, r6, lr}
	ldr r2, _0801004C @ =0x083E7D40
	lsls r1, r0, #2
	adds r1, r1, r2
	ldr r2, [r1]
	ldr r1, _08010050 @ =0x083E7D1C
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
_0801004C: .4byte 0x083E7D40
_08010050: .4byte 0x083E7D1C

	thumb_func_start sub_08010054
sub_08010054: @ 0x08010054
	push {r4, r5, r6, r7, lr}
	ldr r2, _08010094 @ =0x083E7D40
	lsls r1, r0, #2
	adds r1, r1, r2
	ldr r2, [r1]
	ldr r1, _08010098 @ =0x083E7D1C
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
_08010094: .4byte 0x083E7D40
_08010098: .4byte 0x083E7D1C

	thumb_func_start sub_0801009C
sub_0801009C: @ 0x0801009C
	push {r4, r5, r6, r7, lr}
	ldr r2, _080100DC @ =0x083E7D40
	lsls r1, r0, #2
	adds r1, r1, r2
	ldr r2, [r1]
	ldr r1, _080100E0 @ =0x083E7D1C
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
_080100DC: .4byte 0x083E7D40
_080100E0: .4byte 0x083E7D1C

	thumb_func_start sub_080100E4
sub_080100E4: @ 0x080100E4
	ldr r1, _080100EC @ =0x0200C1D8
	adds r0, r0, r1
	bx lr
	.align 2, 0
_080100EC: .4byte 0x0200C1D8

	thumb_func_start sub_080100F0
sub_080100F0: @ 0x080100F0
	ldr r0, _080100FC @ =0x0200C1A0
	movs r1, #0xd6
	lsls r1, r1, #2
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_080100FC: .4byte 0x0200C1A0

	thumb_func_start sub_08010100
sub_08010100: @ 0x08010100
	ldr r2, _08010114 @ =0x0200C1A0
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	movs r0, #0xd6
	lsls r0, r0, #2
	adds r2, r2, r0
	strb r1, [r2]
	bx lr
	.align 2, 0
_08010114: .4byte 0x0200C1A0

	thumb_func_start sub_08010118
sub_08010118: @ 0x08010118
	ldr r0, _0801011C @ =0x0200C1B4
	bx lr
	.align 2, 0
_0801011C: .4byte 0x0200C1B4

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
	ldr r0, _0801014C @ =0x0831B708
	bl sub_080050A8
_0801013E:
	ldr r0, _08010150 @ =0x0200C1B4
	adds r1, r4, #0
	bl sub_0803E020
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801014C: .4byte 0x0831B708
_08010150: .4byte 0x0200C1B4

	thumb_func_start sub_08010154
sub_08010154: @ 0x08010154
	ldr r0, _08010158 @ =0x0200C1C4
	bx lr
	.align 2, 0
_08010158: .4byte 0x0200C1C4

	thumb_func_start sub_0801015C
sub_0801015C: @ 0x0801015C
	push {lr}
	adds r1, r0, #0
	ldr r0, _0801016C @ =0x0200C1C4
	bl sub_0803E020
	pop {r0}
	bx r0
	.align 2, 0
_0801016C: .4byte 0x0200C1C4

	thumb_func_start sub_08010170
sub_08010170: @ 0x08010170
	ldr r1, _0801017C @ =0x0200C1B4
	adds r1, #0x24
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0801017C: .4byte 0x0200C1B4

	thumb_func_start sub_08010180
sub_08010180: @ 0x08010180
	ldr r2, _0801018C @ =0x0200C1B4
	adds r2, #0x24
	adds r0, r0, r2
	strb r1, [r0]
	bx lr
	.align 2, 0
_0801018C: .4byte 0x0200C1B4

	thumb_func_start sub_08010190
sub_08010190: @ 0x08010190
	ldr r0, _08010198 @ =0x0200C1A0
	ldr r0, [r0, #0x34]
	bx lr
	.align 2, 0
_08010198: .4byte 0x0200C1A0

	thumb_func_start sub_0801019C
sub_0801019C: @ 0x0801019C
	push {lr}
	ldr r2, _080101B8 @ =0x0200C1B4
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
_080101B8: .4byte 0x0200C1B4
_080101BC: .4byte 0x0098967F

	thumb_func_start sub_080101C0
sub_080101C0: @ 0x080101C0
	push {lr}
	adds r1, r0, #0
	ldr r3, _080101E0 @ =0x0200C1B4
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
_080101E0: .4byte 0x0200C1B4
_080101E4: .4byte 0x0098967F

	thumb_func_start sub_080101E8
sub_080101E8: @ 0x080101E8
	push {lr}
	cmp r0, #0
	beq _080101F8
	ldr r0, _080101F4 @ =0x0200E200
	b _080101FA
	.align 2, 0
_080101F4: .4byte 0x0200E200
_080101F8:
	ldr r0, _08010200 @ =0x0200E0C8
_080101FA:
	pop {r1}
	bx r1
	.align 2, 0
_08010200: .4byte 0x0200E0C8

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
	ldr r5, _080102F0 @ =0x0200E088
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
_080102F0: .4byte 0x0200E088
_080102F4: .4byte 0xFFFFE338
_080102F8:
	adds r0, r6, #0
	movs r1, #3
	bl sub_080107DC
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
	ldr r0, _0801037C @ =0x0200E200
	lsls r1, r5, #2
	movs r2, #0x98
	lsls r2, r2, #1
	adds r0, r0, r2
	adds r1, r1, r0
	ldrh r0, [r1]
	b _080103A0
	.align 2, 0
_0801037C: .4byte 0x0200E200
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
	ldr r0, _080103C4 @ =0x0200E200
	lsls r1, r5, #2
	movs r2, #0x99
	lsls r2, r2, #1
	adds r0, r0, r2
	adds r1, r1, r0
	ldrh r0, [r1]
	b _080103E8
	.align 2, 0
_080103C4: .4byte 0x0200E200
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
	ldr r0, _080103FC @ =0x0200E200
	movs r1, #0xb4
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bx lr
	.align 2, 0
_080103FC: .4byte 0x0200E200

	thumb_func_start sub_08010400
sub_08010400: @ 0x08010400
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, _08010428 @ =0x0200E200
	movs r1, #0xb4
	lsls r1, r1, #2
	adds r0, r5, r1
	ldr r0, [r0]
	cmp r4, r0
	blo _08010418
	ldr r0, _0801042C @ =0x0831B72C
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
_08010428: .4byte 0x0200E200
_0801042C: .4byte 0x0831B72C

	thumb_func_start sub_08010430
sub_08010430: @ 0x08010430
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r6, r2, #0
	adds r7, r3, #0
	ldr r5, _0801046C @ =0x0200C3C0
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
_0801046C: .4byte 0x0200C3C0

	thumb_func_start sub_08010470
sub_08010470: @ 0x08010470
	push {lr}
	ldr r0, _0801048C @ =0x0200E088
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
_0801048C: .4byte 0x0200E088

	thumb_func_start sub_08010490
sub_08010490: @ 0x08010490
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	ldr r5, _080104B4 @ =0x0200E088
	cmp r4, #2
	bhi _080104D8
	adds r2, r5, #0
	adds r2, #0x2c
	ldrb r0, [r2]
	adds r1, r0, #0
	cmp r1, #4
	bls _080104BC
	ldr r0, _080104B8 @ =0x0831B748
	bl sub_080050A8
	b _080104E8
	.align 2, 0
_080104B4: .4byte 0x0200E088
_080104B8: .4byte 0x0831B748
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
	bl sub_08000E14
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
	bl sub_0803E020
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
	ldr r0, _080105E0 @ =0x0200E088
	mov sl, r0
	ldrb r0, [r0]
	cmp r0, #0
	bne _0801059A
	b _0801071C
_0801059A:
	ldr r0, [sp]
	movs r1, #2
	bl sub_080107DC
	mov sb, r0
	movs r1, #0xb8
	lsls r1, r1, #2
	ldr r0, _080105E4 @ =0x02001CC0
	bl sub_0800459C
	mov r8, r0
	bl sub_08000588
	ldr r0, [sp]
	movs r1, #2
	mov r2, r8
	bl sub_080109C0
	mov r5, r8
	movs r7, #0
	ldr r1, _080105E8 @ =0x0200E0B4
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
_080105E0: .4byte 0x0200E088
_080105E4: .4byte 0x02001CC0
_080105E8: .4byte 0x0200E0B4
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
	ldr r0, _0801072C @ =0x0200E0B4
	ldrb r0, [r0]
	cmp r7, r0
	blo _080105CE
_0801062E:
	adds r0, r5, #0
	ldr r1, _08010730 @ =0x0200E0B8
	bl sub_0801051C
	adds r6, r0, #0
	adds r2, r5, #0
	mov r0, sb
	mov r1, r8
	movs r3, #8
	bl sub_080104F0
	movs r7, #0
	ldr r1, _0801072C @ =0x0200E0B4
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
	ldr r0, _0801072C @ =0x0200E0B4
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
	ldr r0, _08010734 @ =0x02001CC0
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
_0801072C: .4byte 0x0200E0B4
_08010730: .4byte 0x0200E0B8
_08010734: .4byte 0x02001CC0

	thumb_func_start sub_08010738
sub_08010738: @ 0x08010738
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08000588
	adds r0, r4, #0
	movs r1, #2
	bl sub_08010AF0
	bl sub_080005B4
	ldr r0, _08010760 @ =0x0200E200
	movs r1, #0xb8
	lsls r1, r1, #2
	movs r2, #0
	bl sub_08000498
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08010760: .4byte 0x0200E200

	thumb_func_start sub_08010764
sub_08010764: @ 0x08010764
	push {lr}
	movs r3, #0
	bl sub_08000750
	pop {r0}
	bx r0

	thumb_func_start sub_08010770
sub_08010770: @ 0x08010770
	push {lr}
	adds r3, r0, #0
	adds r0, r1, #0
	adds r1, r3, #0
	movs r3, #0
	bl sub_080007A8
	cmp r0, #0
	beq _08010788
	ldr r0, _0801078C @ =0x0831B768
	bl sub_080050B8
_08010788:
	pop {r0}
	bx r0
	.align 2, 0
_0801078C: .4byte 0x0831B768

	thumb_func_start sub_08010790
sub_08010790: @ 0x08010790
	push {lr}
	movs r3, #0
	bl sub_08000800
	cmp r0, #0
	beq _080107A2
	ldr r0, _080107A8 @ =0x0831B768
	bl sub_080050B8
_080107A2:
	pop {r0}
	bx r0
	.align 2, 0
_080107A8: .4byte 0x0831B768

	thumb_func_start sub_080107AC
sub_080107AC: @ 0x080107AC
	push {lr}
	sub sp, #8
	adds r1, r0, #0
	mov r0, sp
	movs r2, #8
	bl sub_08010764
	ldr r0, [sp]
	ldr r1, [sp, #4]
	add sp, #8
	pop {r2}
	bx r2

	thumb_func_start sub_080107C4
sub_080107C4: @ 0x080107C4
	push {lr}
	sub sp, #8
	str r2, [sp]
	str r1, [sp, #4]
	mov r1, sp
	movs r2, #8
	bl sub_08010770
	add sp, #8
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080107DC
sub_080107DC: @ 0x080107DC
	push {r4, r5, r6, lr}
	sub sp, #0x100
	adds r5, r0, #0
	adds r2, r1, #0
	cmp r2, #0
	beq _080107EC
	cmp r2, #3
	bne _080107F0
_080107EC:
	movs r6, #0
	b _08010816
_080107F0:
	cmp r2, #1
	bne _080107FA
	movs r6, #0x88
	lsls r6, r6, #2
	b _08010816
_080107FA:
	cmp r2, #2
	bne _08010808
	ldr r6, _08010804 @ =0x00000C38
	b _08010816
	.align 2, 0
_08010804: .4byte 0x00000C38
_08010808:
	ldr r1, _0801083C @ =0x0831B780
	mov r0, sp
	bl sub_0803DFE0
	mov r0, sp
	bl sub_080050A8
_08010816:
	cmp r5, #1
	bls _0801082C
	add r4, sp, #0x80
	ldr r1, _08010840 @ =0x0831B7A4
	adds r0, r4, #0
	adds r2, r5, #0
	bl sub_0803DFE0
	adds r0, r4, #0
	bl sub_080050A8
_0801082C:
	ldr r0, _08010844 @ =0x00000F18
	muls r0, r5, r0
	adds r6, r6, r0
	adds r0, r6, #0
	add sp, #0x100
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0801083C: .4byte 0x0831B780
_08010840: .4byte 0x0831B7A4
_08010844: .4byte 0x00000F18

	thumb_func_start sub_08010848
sub_08010848: @ 0x08010848
	push {r4, lr}
	sub sp, #0x80
	adds r2, r0, #0
	cmp r2, #0
	bne _08010858
	movs r4, #0x88
	lsls r4, r4, #2
	b _08010896
_08010858:
	cmp r2, #1
	bne _08010864
	ldr r4, _08010860 @ =0x00000A18
	b _08010896
	.align 2, 0
_08010860: .4byte 0x00000A18
_08010864:
	cmp r2, #2
	bne _0801086E
	movs r4, #0xb8
	lsls r4, r4, #2
	b _08010896
_0801086E:
	cmp r2, #3
	bne _0801087C
	ldr r4, _08010878 @ =0x00000C38
	b _08010896
	.align 2, 0
_08010878: .4byte 0x00000C38
_0801087C:
	cmp r2, #4
	bne _08010888
	ldr r4, _08010884 @ =0x00000F18
	b _08010896
	.align 2, 0
_08010884: .4byte 0x00000F18
_08010888:
	ldr r1, _080108A0 @ =0x0831B7C8
	mov r0, sp
	bl sub_0803DFE0
	mov r0, sp
	bl sub_080050A8
_08010896:
	adds r0, r4, #0
	add sp, #0x80
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080108A0: .4byte 0x0831B7C8

	thumb_func_start sub_080108A4
sub_080108A4: @ 0x080108A4
	ldr r1, _080108B0 @ =0x084B5FA0
	ldr r0, _080108B4 @ =0x085371D8
	subs r0, r0, r1
	ldr r1, _080108B8 @ =0x00000F18
	adds r0, r0, r1
	bx lr
	.align 2, 0
_080108B0: .4byte 0x084B5FA0
_080108B4: .4byte 0x085371D8
_080108B8: .4byte 0x00000F18

	thumb_func_start sub_080108BC
sub_080108BC: @ 0x080108BC
	push {r4, r5, lr}
	adds r4, r0, #0
	str r1, [r4]
	movs r5, #0
	str r5, [r4, #4]
	bl sub_080108A4
	adds r1, r0, #0
	str r1, [r4, #8]
	str r5, [r4, #0xc]
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080108D8
sub_080108D8: @ 0x080108D8
	push {r4, lr}
	adds r4, r1, #0
	bl sub_08010848
	adds r1, r0, #0
	subs r1, #8
	lsrs r1, r1, #2
	movs r3, #0
	movs r2, #0
	cmp r3, r1
	bhs _080108F8
_080108EE:
	ldm r4!, {r0}
	adds r3, r3, r0
	adds r2, #1
	cmp r2, r1
	blo _080108EE
_080108F8:
	adds r0, r3, #0
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_08010900
sub_08010900: @ 0x08010900
	adds r0, r0, r1
	adds r1, r0, #0
	subs r1, #8
	str r2, [r1]
	subs r1, r0, #4
	movs r0, #0
	str r0, [r1]
	bx lr

	thumb_func_start sub_08010910
sub_08010910: @ 0x08010910
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x80
	mov r8, r0
	adds r5, r1, #0
	adds r4, r2, #0
	adds r7, r3, #0
	adds r0, r5, #0
	bl sub_08010848
	adds r6, r0, #0
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_080108D8
	adds r4, r4, r6
	adds r1, r4, #0
	subs r1, #8
	ldr r3, [r1]
	subs r4, #4
	ldr r2, [r4]
	rsbs r1, r2, #0
	orrs r1, r2
	lsrs r1, r1, #0x1f
	cmp r0, r3
	beq _08010948
	movs r1, #1
_08010948:
	cmp r1, #0
	beq _0801096C
	cmp r7, #0
	beq _08010962
	ldr r1, _08010968 @ =0x0831B7F0
	mov r2, r8
	adds r2, #1
	mov r0, sp
	bl sub_0803DFE0
	mov r0, sp
	bl sub_080050B8
_08010962:
	movs r0, #1
	b _0801096E
	.align 2, 0
_08010968: .4byte 0x0831B7F0
_0801096C:
	movs r0, #0
_0801096E:
	add sp, #0x80
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0801097C
sub_0801097C: @ 0x0801097C
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r4, r1, #0
	adds r7, r2, #0
	bl sub_080107DC
	adds r5, r0, #0
	adds r0, r4, #0
	bl sub_08010848
	adds r2, r0, #0
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_08010764
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r7, #0
	movs r3, #1
	bl sub_08010910
	cmp r4, #0
	bne _080109B6
	ldr r0, [r7]
	cmp r0, #2
	beq _080109B6
	ldr r0, _080109BC @ =0x0831B80C
	bl sub_080050A8
_080109B6:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080109BC: .4byte 0x0831B80C

	thumb_func_start sub_080109C0
sub_080109C0: @ 0x080109C0
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r2, #0
	cmp r1, #3
	bne _080109E2
	movs r1, #0
	bl sub_0801097C
	movs r0, #0x88
	lsls r0, r0, #2
	adds r4, r4, r0
	adds r0, r5, #0
	movs r1, #1
	adds r2, r4, #0
	bl sub_0801097C
	b _080109EA
_080109E2:
	adds r0, r5, #0
	adds r2, r4, #0
	bl sub_0801097C
_080109EA:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080109F0
sub_080109F0: @ 0x080109F0
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	cmp r4, #0
	bne _08010A04
	adds r0, r5, #0
	movs r1, #2
	bl sub_080108BC
_08010A04:
	adds r0, r4, #0
	bl sub_08010848
	adds r6, r0, #0
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_080108D8
	adds r2, r0, #0
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_08010900
	cmp r4, #0
	bne _08010A30
	adds r0, r7, #0
	bl sub_08011124
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_080002C4
_08010A30:
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_080107DC
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_08010770
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08010A48
sub_08010A48: @ 0x08010A48
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r2, #0
	cmp r1, #3
	bne _08010A6A
	movs r1, #0
	bl sub_080109F0
	movs r0, #0x88
	lsls r0, r0, #2
	adds r4, r4, r0
	adds r0, r5, #0
	movs r1, #1
	adds r2, r4, #0
	bl sub_080109F0
	b _08010A72
_08010A6A:
	adds r0, r5, #0
	adds r2, r4, #0
	bl sub_080109F0
_08010A72:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08010A78
sub_08010A78: @ 0x08010A78
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r5, r1, #0
	cmp r5, #0
	bne _08010AD0
	bl sub_08011124
	adds r6, r0, #0
	movs r0, #0
	bl sub_08010848
	adds r4, r0, #0
	adds r0, r6, #0
	adds r1, r4, #0
	movs r2, #0
	bl sub_08000498
	adds r0, r6, #0
	movs r1, #0
	bl sub_080108BC
	movs r0, #0
	adds r1, r6, #0
	bl sub_080108D8
	adds r2, r0, #0
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_08010900
	adds r0, r7, #0
	bl sub_08011124
	adds r5, r0, #0
	adds r0, r7, #0
	movs r1, #0
	bl sub_080107DC
	adds r6, r0, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_08010770
	b _08010AEA
_08010AD0:
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_080107DC
	adds r4, r0, #0
	adds r0, r5, #0
	bl sub_08010848
	adds r1, r0, #0
	adds r0, r4, #0
	movs r2, #0
	bl sub_08010790
_08010AEA:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08010AF0
sub_08010AF0: @ 0x08010AF0
	push {r4, lr}
	adds r4, r0, #0
	cmp r1, #3
	bne _08010B08
	movs r1, #0
	bl sub_08010A78
	adds r0, r4, #0
	movs r1, #1
	bl sub_08010A78
	b _08010B2C
_08010B08:
	cmp r1, #4
	bne _08010B26
	adds r0, r4, #0
	movs r1, #0
	bl sub_08010A78
	adds r0, r4, #0
	movs r1, #1
	bl sub_08010A78
	adds r0, r4, #0
	movs r1, #2
	bl sub_08010A78
	b _08010B2C
_08010B26:
	adds r0, r4, #0
	bl sub_08010A78
_08010B2C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08010B34
sub_08010B34: @ 0x08010B34
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	bl sub_08011124
	adds r7, r0, #0
	movs r0, #0
	bl sub_08010848
	adds r6, r0, #0
	adds r0, r7, #0
	adds r1, r6, #0
	movs r2, #0
	bl sub_08000498
	adds r0, r7, #0
	movs r1, #2
	bl sub_080108BC
	movs r0, #0
	adds r1, r7, #0
	bl sub_080108D8
	adds r2, r0, #0
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_08010900
	adds r0, r5, #0
	bl sub_08011124
	adds r4, r0, #0
	adds r0, r5, #0
	movs r1, #0
	bl sub_080107DC
	adds r7, r0, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl sub_08010770
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08010B8C
sub_08010B8C: @ 0x08010B8C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	mov sb, r1
	adds r6, r2, #0
	adds r0, r6, #0
	bl sub_08010848
	adds r7, r0, #0
	ldr r0, _08010C0C @ =0x02001CC0
	adds r1, r7, #0
	bl sub_0800459C
	mov r8, r0
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_080107DC
	adds r5, r0, #0
	mov r4, r8
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r7, #0
	bl sub_08010764
	cmp r6, #0
	bne _08010BE4
	ldr r0, [r4]
	cmp r0, #2
	beq _08010BD2
	ldr r0, _08010C10 @ =0x0831B830
	bl sub_080050A8
_08010BD2:
	adds r5, r4, #0
	mov r0, sb
	bl sub_08011124
	adds r4, r0, #0
	adds r1, r5, #0
	adds r2, r7, #0
	bl sub_080002C4
_08010BE4:
	mov r5, r8
	mov r0, sb
	adds r1, r6, #0
	bl sub_080107DC
	adds r4, r0, #0
	adds r1, r5, #0
	adds r2, r7, #0
	bl sub_08010770
	ldr r0, _08010C0C @ =0x02001CC0
	bl sub_08004604
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08010C0C: .4byte 0x02001CC0
_08010C10: .4byte 0x0831B830

	thumb_func_start sub_08010C14
sub_08010C14: @ 0x08010C14
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	cmp r2, #3
	bne _08010C30
	movs r2, #0
	bl sub_08010B8C
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #1
	bl sub_08010B8C
	b _08010C5C
_08010C30:
	cmp r2, #4
	bne _08010C54
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0
	bl sub_08010B8C
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #1
	bl sub_08010B8C
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #2
	bl sub_08010B8C
	b _08010C5C
_08010C54:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08010B8C
_08010C5C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08010C64
sub_08010C64: @ 0x08010C64
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	adds r5, r1, #0
	adds r1, r2, #0
	adds r0, r5, #0
	bl sub_080108D8
	adds r7, r0, #0
	mov r0, r8
	adds r1, r5, #0
	bl sub_080107DC
	adds r4, r0, #0
	adds r0, r5, #0
	bl sub_08010848
	adds r6, r0, #0
	adds r0, r4, r6
	adds r4, r0, #0
	subs r4, #8
	adds r0, r4, #0
	movs r1, #0
	adds r2, r7, #0
	bl sub_080107C4
	cmp r5, #0
	bne _08010CB2
	mov r0, r8
	bl sub_08011124
	adds r4, r0, #0
	adds r0, r4, r6
	adds r4, r0, #0
	subs r4, #8
	str r7, [r4]
	subs r4, r0, #4
	str r5, [r4]
_08010CB2:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08010CBC
sub_08010CBC: @ 0x08010CBC
	push {r4, lr}
	adds r2, r0, #0
	adds r3, r1, #0
	ldr r4, _08010CEC @ =0x0200E080
	cmp r2, #0
	bne _08010CD0
	adds r0, r3, #0
	movs r1, #0
	str r0, [r4]
	str r1, [r4, #4]
_08010CD0:
	cmp r2, #1
	bne _08010CE4
	adds r2, r3, #1
	cmp r2, #1
	bls _08010CDC
	movs r2, #0
_08010CDC:
	adds r0, r2, #0
	movs r1, #0
	str r0, [r4]
	str r1, [r4, #4]
_08010CE4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08010CEC: .4byte 0x0200E080

	thumb_func_start sub_08010CF0
sub_08010CF0: @ 0x08010CF0
	push {lr}
	ldr r1, _08010D00 @ =0x00001FF8
	ldr r0, _08010D04 @ =0x0200E080
	movs r2, #8
	bl sub_08010764
	pop {r0}
	bx r0
	.align 2, 0
_08010D00: .4byte 0x00001FF8
_08010D04: .4byte 0x0200E080

	thumb_func_start sub_08010D08
sub_08010D08: @ 0x08010D08
	push {lr}
	ldr r1, _08010D18 @ =0x0200E080
	ldr r0, _08010D1C @ =0x00001FF8
	movs r2, #8
	bl sub_08010770
	pop {r0}
	bx r0
	.align 2, 0
_08010D18: .4byte 0x0200E080
_08010D1C: .4byte 0x00001FF8

	thumb_func_start sub_08010D20
sub_08010D20: @ 0x08010D20
	push {lr}
	adds r1, r0, #0
	movs r0, #0
	bl sub_08010CBC
	bl sub_08010D08
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08010D34
sub_08010D34: @ 0x08010D34
	push {lr}
	sub sp, #8
	str r1, [sp]
	str r0, [sp, #4]
	ldr r1, _08010D58 @ =0x00001FF0
	mov r0, sp
	movs r2, #8
	movs r3, #0
	bl sub_080007A8
	cmp r0, #0
	beq _08010D52
	ldr r0, _08010D5C @ =0x0831B768
	bl sub_080050B8
_08010D52:
	add sp, #8
	pop {r0}
	bx r0
	.align 2, 0
_08010D58: .4byte 0x00001FF0
_08010D5C: .4byte 0x0831B768

	thumb_func_start sub_08010D60
sub_08010D60: @ 0x08010D60
	push {lr}
	ldr r0, _08010D78 @ =0x2F7E8D36
	ldr r1, _08010D7C @ =0x51A7B3C5
	bl sub_08010D34
	ldr r0, _08010D80 @ =0x3C0A5DE2
	ldr r1, _08010D84 @ =0x17FC43DA
	bl sub_08010D34
	pop {r0}
	bx r0
	.align 2, 0
_08010D78: .4byte 0x2F7E8D36
_08010D7C: .4byte 0x51A7B3C5
_08010D80: .4byte 0x3C0A5DE2
_08010D84: .4byte 0x17FC43DA

	thumb_func_start sub_08010D88
sub_08010D88: @ 0x08010D88
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r5, r1, #0
	adds r0, r5, #0
	movs r1, #0
	bl sub_080107DC
	adds r6, r0, #0
	adds r4, r7, r6
	ldr r0, [r4]
	cmp r0, #2
	bne _08010DE4
	bl sub_080108A4
	ldr r1, [r4, #8]
	cmp r1, r0
	beq _08010DC2
	adds r0, r6, #0
	movs r1, #0
	movs r2, #1
	bl sub_080107C4
	b _08010DE4
_08010DB6:
	adds r0, r6, #0
	movs r1, #0
	movs r2, #3
	bl sub_080107C4
	b _08010DE4
_08010DC2:
	movs r4, #0
_08010DC4:
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_080107DC
	adds r2, r0, #0
	adds r2, r7, r2
	adds r0, r5, #0
	adds r1, r4, #0
	movs r3, #0
	bl sub_08010910
	cmp r0, #0
	bne _08010DB6
	adds r4, #1
	cmp r4, #2
	bls _08010DC4
_08010DE4:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08010DEC
sub_08010DEC: @ 0x08010DEC
	push {r4, lr}
	ldr r4, _08010E3C @ =0x02017AF0
	bl sub_08000588
	movs r0, #4
	bl sub_08010848
	adds r2, r0, #0
	lsls r2, r2, #1
	adds r0, r4, #0
	movs r1, #0
	bl sub_08010764
	bl sub_08010D60
	ldr r0, _08010E40 @ =0x00001FE8
	bl sub_080107AC
	ldr r2, _08010E44 @ =0x74E38D14
	cmp r0, r2
	beq _08010E48
	movs r4, #0
_08010E18:
	adds r0, r4, #0
	movs r1, #0
	bl sub_080107DC
	movs r1, #0
	movs r2, #0
	bl sub_080107C4
	adds r4, #1
	cmp r4, #1
	bls _08010E18
	ldr r0, _08010E40 @ =0x00001FE8
	ldr r2, _08010E44 @ =0x74E38D14
	movs r1, #0
	bl sub_080107C4
	b _08010E58
	.align 2, 0
_08010E3C: .4byte 0x02017AF0
_08010E40: .4byte 0x00001FE8
_08010E44: .4byte 0x74E38D14
_08010E48:
	adds r0, r4, #0
	movs r1, #0
	bl sub_08010D88
	adds r0, r4, #0
	movs r1, #1
	bl sub_08010D88
_08010E58:
	bl sub_080005B4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08010E64
sub_08010E64: @ 0x08010E64
	push {lr}
	ldr r2, _08010E78 @ =0x084B5FA0
	cmp r1, #0
	beq _08010E80
	ldr r3, _08010E7C @ =0x00000C28
	adds r1, r0, r3
	ldr r0, [r1]
	adds r0, r0, r2
	b _08010E88
	.align 2, 0
_08010E78: .4byte 0x084B5FA0
_08010E7C: .4byte 0x00000C28
_08010E80:
	ldr r3, _08010E90 @ =0x00000C28
	adds r1, r0, r3
	ldr r0, [r1]
	subs r0, r0, r2
_08010E88:
	str r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_08010E90: .4byte 0x00000C28

	thumb_func_start sub_08010E94
sub_08010E94: @ 0x08010E94
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r4, _08010EC8 @ =0x0200CDD8
	ldr r0, _08010ECC @ =0xFFFFF3C8
	adds r1, r4, r0
	ldr r5, _08010ED0 @ =0x00000C38
	adds r0, r4, #0
	adds r2, r5, #0
	bl sub_080002C4
	adds r0, r4, #0
	movs r1, #0
	bl sub_08010E64
	ldr r0, _08010ED4 @ =0x00000C28
	adds r1, r4, r0
	ldr r0, [r1]
	adds r0, r0, r6
	str r0, [r1]
	adds r4, r4, r5
	movs r0, #1
	strb r0, [r4]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08010EC8: .4byte 0x0200CDD8
_08010ECC: .4byte 0xFFFFF3C8
_08010ED0: .4byte 0x00000C38
_08010ED4: .4byte 0x00000C28

	thumb_func_start sub_08010ED8
sub_08010ED8: @ 0x08010ED8
	push {r4, lr}
	ldr r2, _08010F1C @ =0x0200C1A0
	adds r1, r2, #0
	adds r1, #0x14
	ldr r0, _08010F20 @ =0x0831B854
	ldm r0!, {r3, r4}
	stm r1!, {r3, r4}
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _08010F24 @ =0x0831B860
	adds r3, r2, #0
	adds r3, #0x24
	ldr r0, [r1]
	str r0, [r2, #0x24]
	ldrh r0, [r1, #4]
	strh r0, [r3, #4]
	ldrb r0, [r1, #6]
	strb r0, [r3, #6]
	movs r0, #0xd6
	lsls r0, r0, #2
	adds r1, r2, r0
	movs r3, #0
	movs r0, #1
	strb r0, [r1]
	ldr r1, _08010F28 @ =0x00001870
	adds r0, r2, r1
	strb r3, [r0]
	ldr r4, _08010F2C @ =0x00001871
	adds r2, r2, r4
	strb r3, [r2]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08010F1C: .4byte 0x0200C1A0
_08010F20: .4byte 0x0831B854
_08010F24: .4byte 0x0831B860
_08010F28: .4byte 0x00001870
_08010F2C: .4byte 0x00001871

	thumb_func_start sub_08010F30
sub_08010F30: @ 0x08010F30
	push {r4, lr}
	ldr r4, _08010F50 @ =0x0200CDD8
	ldr r0, _08010F54 @ =0x00000C39
	adds r1, r4, r0
	ldrb r0, [r1]
	cmp r0, #0
	bne _08010F58
	movs r0, #1
	rsbs r0, r0, #0
	bl sub_08010E94
	bl sub_08011CD8
	str r0, [r4, #0x10]
	movs r0, #0
	b _08010F5E
	.align 2, 0
_08010F50: .4byte 0x0200CDD8
_08010F54: .4byte 0x00000C39
_08010F58:
	movs r0, #0
	strb r0, [r1]
	movs r0, #1
_08010F5E:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_08010F64
sub_08010F64: @ 0x08010F64
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r6, r0, #0
	ldr r5, _08010FCC @ =0x00000C38
	ldr r0, _08010FD0 @ =0x02001CC0
	mov r8, r0
	adds r1, r5, #0
	bl sub_0800459C
	adds r4, r0, #0
	adds r1, r5, #0
	movs r2, #0
	bl sub_08000498
	ldr r1, _08010FD4 @ =0x0200C1A0
	movs r2, #0x88
	lsls r2, r2, #2
	adds r0, r4, #0
	bl sub_080002C4
	movs r0, #0
	str r0, [r4, #0x10]
	movs r0, #0xd6
	lsls r0, r0, #2
	adds r1, r4, r0
	movs r0, #1
	strb r0, [r1]
	bl sub_08000588
	adds r0, r6, #0
	bl sub_08010D20
	adds r0, r6, #0
	movs r1, #3
	adds r2, r4, #0
	bl sub_08010A48
	adds r0, r6, #0
	movs r1, #2
	bl sub_08010AF0
	bl sub_080005B4
	mov r0, r8
	bl sub_08004604
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08010FCC: .4byte 0x00000C38
_08010FD0: .4byte 0x02001CC0
_08010FD4: .4byte 0x0200C1A0

	thumb_func_start sub_08010FD8
sub_08010FD8: @ 0x08010FD8
	push {lr}
	adds r1, r0, #0
	bl sub_08010FE4
	pop {r0}
	bx r0

	thumb_func_start sub_08010FE4
sub_08010FE4: @ 0x08010FE4
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r7, r1, #0
	ldr r5, _08011048 @ =0x0200CDD8
	ldr r1, _0801104C @ =0x00000C38
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08010FFC
	ldr r0, _08011050 @ =0x0831B868
	bl sub_080050A8
_08010FFC:
	bl sub_08011CD8
	str r0, [r5, #0x10]
	ldr r0, _08011054 @ =0xFFFFF400
	adds r6, r5, r0
	adds r3, r5, #0
	adds r3, #0x38
	movs r2, #5
_0801100C:
	adds r0, r3, r2
	adds r1, r6, r2
	ldrb r1, [r1]
	strb r1, [r0]
	adds r2, #1
	cmp r2, #0x2d
	bls _0801100C
	bl sub_08000588
	adds r0, r4, #0
	bl sub_08010D20
	adds r0, r4, #0
	movs r1, #3
	adds r2, r5, #0
	bl sub_08010A48
	cmp r4, r7
	beq _0801103C
	adds r0, r7, #0
	adds r1, r4, #0
	movs r2, #2
	bl sub_08010C14
_0801103C:
	bl sub_080005B4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08011048: .4byte 0x0200CDD8
_0801104C: .4byte 0x00000C38
_08011050: .4byte 0x0831B868
_08011054: .4byte 0xFFFFF400

	thumb_func_start sub_08011058
sub_08011058: @ 0x08011058
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	bl sub_08011C70
	movs r0, #0
	bl sub_08011D8C
	bl sub_08000588
	ldr r4, _08011098 @ =0x0200C1A0
	adds r0, r7, #0
	movs r1, #3
	adds r2, r4, #0
	bl sub_080109C0
	bl sub_080005B4
	movs r5, #0
	ldr r0, _0801109C @ =0x00000C28
	adds r6, r4, r0
	ldr r0, [r6]
	cmp r0, #0
	bne _08011088
	movs r5, #1
_08011088:
	cmp r5, #0
	beq _080110A4
	ldr r0, _080110A0 @ =0x0831AF84
	bl sub_080117CC
	str r0, [r6]
	b _080110AC
	.align 2, 0
_08011098: .4byte 0x0200C1A0
_0801109C: .4byte 0x00000C28
_080110A0: .4byte 0x0831AF84
_080110A4:
	adds r0, r4, #0
	movs r1, #1
	bl sub_08010E64
_080110AC:
	ldr r4, _080110D4 @ =0x0200C1A0
	ldr r0, [r4, #0x10]
	bl sub_08011CF4
	movs r0, #0
	bl sub_08010E94
	movs r0, #0
	adds r1, r7, #0
	bl sub_08010CBC
	cmp r5, #0
	bne _080110CE
	ldr r0, _080110D8 @ =0x00001871
	adds r1, r4, r0
	movs r0, #1
	strb r0, [r1]
_080110CE:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080110D4: .4byte 0x0200C1A0
_080110D8: .4byte 0x00001871

	thumb_func_start sub_080110DC
sub_080110DC: @ 0x080110DC
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl sub_08000588
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #4
	bl sub_08010C14
	bl sub_080005B4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080110FC
sub_080110FC: @ 0x080110FC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08000588
	adds r0, r4, #0
	movs r1, #0
	bl sub_08010AF0
	movs r0, #1
	adds r1, r4, #0
	bl sub_08010CBC
	bl sub_08010D08
	bl sub_080005B4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08011124
sub_08011124: @ 0x08011124
	adds r1, r0, #0
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #5
	ldr r1, _08011134 @ =0x0200DA18
	adds r0, r0, r1
	bx lr
	.align 2, 0
_08011134: .4byte 0x0200DA18

	thumb_func_start sub_08011138
sub_08011138: @ 0x08011138
	push {r4, r5, r6, lr}
	bl sub_08000588
	movs r6, #0
_08011140:
	adds r0, r6, #0
	movs r1, #0
	bl sub_080107DC
	adds r5, r0, #0
	adds r0, r6, #0
	bl sub_08011124
	adds r4, r0, #0
	movs r0, #0
	bl sub_08010848
	adds r2, r0, #0
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08010764
	adds r6, #1
	cmp r6, #1
	bls _08011140
	bl sub_08010CF0
	bl sub_080005B4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08011178
sub_08011178: @ 0x08011178
	push {lr}
	bl sub_08011124
	adds r1, r0, #0
	ldr r0, _08011190 @ =0x0200C1A0
	movs r2, #0x88
	lsls r2, r2, #2
	bl sub_080002C4
	pop {r0}
	bx r0
	.align 2, 0
_08011190: .4byte 0x0200C1A0

	thumb_func_start sub_08011194
sub_08011194: @ 0x08011194
	lsls r1, r0, #4
	adds r1, r1, r0
	lsls r1, r1, #5
	ldr r0, _080111A4 @ =0x0200DA18
	adds r1, r1, r0
	ldr r0, [r1, #0x10]
	bx lr
	.align 2, 0
_080111A4: .4byte 0x0200DA18

	thumb_func_start sub_080111A8
sub_080111A8: @ 0x080111A8
	push {r4, r5, r6, r7, lr}
	ldr r4, _08011228 @ =0xFFFFFDD8
	add sp, r4
	adds r6, r0, #0
	ldr r0, _0801122C @ =0x0200C1A0
	mov ip, r0
	lsls r0, r6, #4
	adds r0, r0, r6
	lsls r0, r0, #5
	ldr r1, _08011230 @ =0x00001878
	add r1, ip
	adds r0, r0, r1
	ldr r7, [r0, #0x34]
	adds r4, r0, #0
	adds r4, #0x38
	movs r2, #0
	add r5, sp, #0x38
	add r3, sp, #0x220
_080111CC:
	adds r0, r3, r2
	adds r1, r4, r2
	ldrb r1, [r1]
	strb r1, [r0]
	adds r2, #1
	cmp r2, #4
	bls _080111CC
	movs r4, #0x88
	lsls r4, r4, #2
	mov r0, sp
	mov r1, ip
	adds r2, r4, #0
	bl sub_080002C4
	movs r2, #0
	mov r0, sp
	adds r3, r0, r4
_080111EE:
	adds r0, r5, r2
	adds r1, r3, r2
	ldrb r1, [r1]
	strb r1, [r0]
	adds r2, #1
	cmp r2, #4
	bls _080111EE
	str r7, [sp, #0x34]
	bl sub_08011CD8
	str r0, [sp, #0x10]
	bl sub_08000588
	adds r0, r6, #0
	bl sub_08010D20
	adds r0, r6, #0
	movs r1, #0
	mov r2, sp
	bl sub_08010A48
	bl sub_080005B4
	movs r3, #0x8a
	lsls r3, r3, #2
	add sp, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08011228: .4byte 0xFFFFFDD8
_0801122C: .4byte 0x0200C1A0
_08011230: .4byte 0x00001878

	thumb_func_start sub_08011234
sub_08011234: @ 0x08011234
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	adds r1, r4, #0
	bl sub_08010CBC
	bl sub_08000588
	ldr r2, _08011258 @ =0x0200C1A0
	adds r0, r4, #0
	movs r1, #0
	bl sub_080109C0
	bl sub_080005B4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08011258: .4byte 0x0200C1A0

	thumb_func_start sub_0801125C
sub_0801125C: @ 0x0801125C
	push {r4, lr}
	ldr r4, _0801127C @ =0x0200C1A0
	ldr r1, _08011280 @ =0x00001CB8
	adds r0, r4, r1
	movs r2, #0x88
	lsls r2, r2, #2
	adds r1, r4, #0
	bl sub_080002C4
	ldr r0, _08011284 @ =0x00001ED8
	adds r4, r4, r0
	movs r0, #1
	strb r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801127C: .4byte 0x0200C1A0
_08011280: .4byte 0x00001CB8
_08011284: .4byte 0x00001ED8

	thumb_func_start sub_08011288
sub_08011288: @ 0x08011288
	push {r4, lr}
	ldr r4, _080112B0 @ =0x0200C1A0
	ldr r1, _080112B4 @ =0x00001ED8
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _0801129C
	ldr r0, _080112B8 @ =0x0831B884
	bl sub_080050A8
_0801129C:
	ldr r0, _080112BC @ =0x00001CB8
	adds r1, r4, r0
	movs r2, #0x88
	lsls r2, r2, #2
	adds r0, r4, #0
	bl sub_080002C4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080112B0: .4byte 0x0200C1A0
_080112B4: .4byte 0x00001ED8
_080112B8: .4byte 0x0831B884
_080112BC: .4byte 0x00001CB8

	thumb_func_start sub_080112C0
sub_080112C0: @ 0x080112C0
	push {lr}
	ldr r0, _080112D0 @ =0x0200C1A0
	ldr r0, [r0]
	cmp r0, #3
	bls _080112CC
	movs r0, #3
_080112CC:
	pop {r1}
	bx r1
	.align 2, 0
_080112D0: .4byte 0x0200C1A0

	thumb_func_start sub_080112D4
sub_080112D4: @ 0x080112D4
	push {lr}
	ldr r0, _080112F0 @ =0x0200C1A0
	movs r1, #0xf7
	lsls r1, r1, #5
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0
	cmp r0, #1
	bne _080112E8
	movs r1, #1
_080112E8:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0
_080112F0: .4byte 0x0200C1A0

	thumb_func_start sub_080112F4
sub_080112F4: @ 0x080112F4
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	adds r6, r2, #0
	adds r1, r3, #0
	ldr r2, [sp, #0x10]
	cmp r2, #0
	beq _08011322
	subs r4, r1, r0
	adds r4, r5, r4
	adds r0, r4, #0
	bl sub_08000D48
	subs r0, r4, r5
	movs r1, #8
	rsbs r1, r1, #0
	bics r0, r1
	subs r4, r4, r0
	subs r0, r4, r5
	adds r0, r6, r0
	adds r1, r4, #0
	movs r2, #8
	bl sub_08010770
_08011322:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08011328
sub_08011328: @ 0x08011328
	push {r4, r5, r6, r7, lr}
	adds r5, r1, #0
	adds r7, r2, #0
	adds r1, r3, #0
	ldr r6, [sp, #0x14]
	cmp r6, #0
	beq _0801134E
	subs r4, r1, r0
	adds r5, r5, r4
	adds r0, r5, #0
	adds r2, r6, #0
	bl sub_080002C4
	adds r4, r7, r4
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_08010770
_0801134E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08011354
sub_08011354: @ 0x08011354
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	adds r6, r2, #0
	adds r1, r3, #0
	ldr r2, [sp, #0x10]
	cmp r2, #0
	beq _08011378
	subs r4, r1, r0
	adds r5, r5, r4
	adds r0, r5, #0
	bl sub_08000D48
	adds r4, r6, r4
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #8
	bl sub_08010770
_08011378:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08011380
sub_08011380: @ 0x08011380
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov sl, r0
	adds r6, r1, #0
	adds r5, r2, #0
	bl sub_08011124
	mov sb, r0
	mov r0, sl
	movs r1, #0
	bl sub_080107DC
	mov r8, r0
	ldr r1, _080113BC @ =0x0200C1A0
	subs r0, r6, r1
	movs r1, #8
	subs r4, r1, r0
	movs r0, #7
	ands r4, r0
	cmp r4, r5
	blo _080113C0
	adds r4, r5, #0
	movs r5, #0
	movs r7, #0
	b _080113C8
	.align 2, 0
_080113BC: .4byte 0x0200C1A0
_080113C0:
	subs r5, r5, r4
	lsrs r0, r5, #3
	lsls r7, r0, #3
	subs r5, r5, r7
_080113C8:
	str r4, [sp]
	ldr r0, _08011410 @ =0x0200C1A0
	mov r1, sb
	mov r2, r8
	adds r3, r6, #0
	bl sub_080112F4
	adds r6, r6, r4
	str r7, [sp]
	ldr r0, _08011410 @ =0x0200C1A0
	mov r1, sb
	mov r2, r8
	adds r3, r6, #0
	bl sub_08011328
	adds r6, r6, r7
	str r5, [sp]
	ldr r0, _08011410 @ =0x0200C1A0
	mov r1, sb
	mov r2, r8
	adds r3, r6, #0
	bl sub_08011354
	mov r0, sl
	movs r1, #0
	mov r2, sb
	bl sub_08010C64
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08011410: .4byte 0x0200C1A0

	thumb_func_start sub_08011414
sub_08011414: @ 0x08011414
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _08011434 @ =0x0200C1A0
	bl sub_08011CD8
	str r0, [r4, #0x10]
	adds r4, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #4
	bl sub_08011380
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08011434: .4byte 0x0200C1A0

	thumb_func_start sub_08011438
sub_08011438: @ 0x08011438
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	ldr r7, _080114EC @ =0x0200C1A0
	bl sub_08000588
	bl sub_08011CD8
	str r0, [r7, #0x10]
	cmp r6, #0
	bne _0801145E
	movs r0, #0x18
	bl sub_080100E4
	adds r1, r0, #0
	adds r0, r5, #0
	movs r2, #6
	bl sub_08011380
_0801145E:
	cmp r6, #1
	bne _08011488
	adds r0, r5, #0
	bl sub_08011414
	movs r0, #5
	bl sub_080100E4
	adds r1, r0, #0
	adds r0, r5, #0
	movs r2, #5
	bl sub_08011380
	movs r0, #0x1e
	bl sub_080100E4
	adds r1, r0, #0
	adds r0, r5, #0
	movs r2, #0xc
	bl sub_08011380
_08011488:
	subs r0, r6, #2
	cmp r0, #1
	bhi _080114CE
	cmp r6, #3
	bne _080114AA
	movs r0, #1
	movs r1, #1
	bl sub_08010180
	movs r0, #1
	bl sub_080100E4
	adds r1, r0, #0
	adds r0, r5, #0
	movs r2, #1
	bl sub_08011380
_080114AA:
	ldr r1, _080114F0 @ =0x0831AD80
	movs r0, #6
	bl sub_0800FD50
	adds r4, r0, #0
	movs r0, #6
	adds r1, r4, #0
	bl sub_0800FCB0
	lsls r4, r4, #1
	movs r0, #0xf1
	lsls r0, r0, #1
	adds r4, r4, r0
	adds r1, r4, r7
	adds r0, r5, #0
	movs r2, #2
	bl sub_08011380
_080114CE:
	cmp r6, #4
	bne _080114E2
	movs r0, #0x11
	bl sub_080100E4
	adds r1, r0, #0
	adds r0, r5, #0
	movs r2, #7
	bl sub_08011380
_080114E2:
	bl sub_080005B4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080114EC: .4byte 0x0200C1A0
_080114F0: .4byte 0x0831AD80

	thumb_func_start sub_080114F4
sub_080114F4: @ 0x080114F4
	ldr r1, _080114FC @ =0x02001DC0
	movs r0, #0
	strb r0, [r1]
	bx lr
	.align 2, 0
_080114FC: .4byte 0x02001DC0

	thumb_func_start sub_08011500
sub_08011500: @ 0x08011500
	push {r4, r5, lr}
	movs r1, #0xc0
	lsls r1, r1, #0x13
	ldr r4, _080115FC @ =0x02001DC8
	movs r2, #0x96
	lsls r2, r2, #8
	adds r0, r4, #0
	bl sub_08000314
	ldr r1, _08011600 @ =0x0600F000
	movs r0, #0x96
	lsls r0, r0, #8
	adds r4, r4, r0
	movs r2, #0xa0
	lsls r2, r2, #3
	adds r0, r4, #0
	bl sub_08000314
	movs r1, #0xa0
	lsls r1, r1, #0x13
	movs r3, #0xa0
	lsls r3, r3, #3
	adds r4, r4, r3
	adds r0, r4, #0
	movs r2, #0xc0
	bl sub_08000314
	ldr r1, _08011604 @ =0x06010000
	adds r4, #0xc0
	movs r2, #0xe0
	lsls r2, r2, #3
	adds r0, r4, #0
	bl sub_08000314
	ldr r1, _08011608 @ =0x05000200
	movs r0, #0xe0
	lsls r0, r0, #3
	adds r4, r4, r0
	adds r0, r4, #0
	movs r2, #0x20
	bl sub_080002C4
	adds r0, r4, #0
	adds r0, #0x20
	ldr r5, _0801160C @ =0x020127BC
	adds r1, r5, #0
	movs r2, #0x10
	bl sub_080002C4
	adds r0, r4, #0
	adds r0, #0x30
	adds r1, r5, #0
	adds r1, #0x44
	movs r2, #0xc
	bl sub_080002C4
	adds r0, r4, #0
	adds r0, #0x3c
	adds r1, r5, #0
	adds r1, #0x50
	movs r2, #4
	bl sub_080002C4
	adds r0, r4, #0
	adds r0, #0x40
	adds r1, r5, #0
	adds r1, #0x54
	movs r2, #0x10
	bl sub_080002C4
	adds r0, r4, #0
	adds r0, #0x50
	adds r1, r5, #0
	adds r1, #0x64
	movs r2, #0x44
	bl sub_080002C4
	adds r0, r4, #0
	adds r0, #0x94
	adds r1, r5, #0
	adds r1, #0xa8
	movs r2, #8
	bl sub_080002C4
	adds r0, r4, #0
	adds r0, #0x9c
	adds r1, r5, #0
	adds r1, #0xb0
	movs r2, #8
	bl sub_080002C4
	adds r0, r4, #0
	adds r0, #0xa4
	adds r1, r5, #0
	adds r1, #0xb8
	movs r2, #8
	bl sub_080002C4
	adds r0, r4, #0
	adds r0, #0xac
	adds r1, r5, #0
	adds r1, #0xc0
	movs r2, #0x54
	bl sub_080002C4
	bl sub_0800F1E4
	ldr r3, _08011610 @ =0xFFFF5D38
	adds r2, r4, r3
	ldr r0, _08011614 @ =0x02001DBC
	ldrb r1, [r0]
	movs r3, #0x82
	lsls r3, r3, #1
	adds r0, r4, r3
	strb r1, [r0]
	ldr r0, _08011618 @ =0x02001D6C
	ldrb r0, [r0]
	adds r3, #1
	adds r1, r4, r3
	strb r0, [r1]
	movs r0, #1
	strb r0, [r2]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080115FC: .4byte 0x02001DC8
_08011600: .4byte 0x0600F000
_08011604: .4byte 0x06010000
_08011608: .4byte 0x05000200
_0801160C: .4byte 0x020127BC
_08011610: .4byte 0xFFFF5D38
_08011614: .4byte 0x02001DBC
_08011618: .4byte 0x02001D6C

	thumb_func_start sub_0801161C
sub_0801161C: @ 0x0801161C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r7, _0801176C @ =0x02001DC0
	ldrb r0, [r7]
	cmp r0, #0
	bne _08011634
	ldr r0, _08011770 @ =0x0831B8B4
	bl sub_080050A8
_08011634:
	bl sub_08005A0C
	bl sub_08001004
	bl sub_08005C64
	movs r0, #0xc0
	lsls r0, r0, #0x13
	adds r1, r7, #0
	adds r1, #8
	movs r2, #0x96
	lsls r2, r2, #8
	bl sub_08000314
	ldr r0, _08011774 @ =0x0600F000
	ldr r2, _08011778 @ =0x00009608
	adds r1, r7, r2
	movs r2, #0xa0
	lsls r2, r2, #3
	bl sub_08000314
	movs r0, #0xa0
	lsls r0, r0, #0x13
	ldr r2, _0801177C @ =0x00009B08
	adds r1, r7, r2
	movs r2, #0xc0
	bl sub_08000314
	ldr r0, _08011780 @ =0x06010000
	ldr r2, _08011784 @ =0x00009BC8
	adds r1, r7, r2
	movs r2, #0xe0
	lsls r2, r2, #3
	bl sub_08000314
	ldr r0, _08011788 @ =0x05000200
	ldr r2, _0801178C @ =0x0000A2C8
	adds r1, r7, r2
	movs r2, #0x20
	bl sub_080002C4
	ldr r4, _08011790 @ =0x020127BC
	ldr r0, _08011794 @ =0x0000A2E8
	adds r1, r7, r0
	adds r0, r4, #0
	movs r2, #0x10
	bl sub_080002C4
	ldr r2, _08011798 @ =0x0000A2F8
	adds r1, r7, r2
	ldr r0, _0801179C @ =0x02012800
	movs r2, #0xc
	bl sub_080002C4
	ldr r0, _080117A0 @ =0x0000A304
	adds r1, r7, r0
	ldr r0, _080117A4 @ =0x0201280C
	movs r2, #4
	bl sub_080002C4
	movs r2, #0x54
	adds r2, r2, r4
	mov sl, r2
	ldr r0, _080117A8 @ =0x0000A308
	adds r1, r7, r0
	mov r0, sl
	movs r2, #0x10
	bl sub_080002C4
	movs r2, #0x64
	adds r2, r2, r4
	mov sb, r2
	ldr r0, _080117AC @ =0x0000A318
	adds r1, r7, r0
	mov r0, sb
	movs r2, #0x44
	bl sub_080002C4
	movs r2, #0xa8
	adds r2, r2, r4
	mov r8, r2
	ldr r0, _080117B0 @ =0x0000A35C
	adds r1, r7, r0
	mov r0, r8
	movs r2, #8
	bl sub_080002C4
	adds r6, r4, #0
	adds r6, #0xb0
	ldr r2, _080117B4 @ =0x0000A364
	adds r1, r7, r2
	adds r0, r6, #0
	movs r2, #8
	bl sub_080002C4
	adds r5, r4, #0
	adds r5, #0xb8
	ldr r0, _080117B8 @ =0x0000A36C
	adds r1, r7, r0
	adds r0, r5, #0
	movs r2, #8
	bl sub_080002C4
	adds r4, #0xc0
	ldr r2, _080117BC @ =0x0000A374
	adds r1, r7, r2
	adds r0, r4, #0
	movs r2, #0x54
	bl sub_080002C4
	ldr r1, _080117C0 @ =0x02001DBC
	ldr r2, _080117C4 @ =0x0000A3CC
	adds r0, r7, r2
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _080117C8 @ =0x02001D6C
	adds r2, #1
	adds r0, r7, r2
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _0801179C @ =0x02012800
	bl sub_0800D928
	ldr r0, _080117A4 @ =0x0201280C
	bl sub_0800DCBC
	mov r0, sl
	bl sub_0800E3EC
	mov r0, sb
	bl sub_0800E60C
	mov r0, r8
	bl sub_0800E7CC
	adds r0, r6, #0
	bl sub_0800E9B8
	adds r0, r5, #0
	bl sub_0800EC0C
	adds r0, r4, #0
	bl sub_0800EEA0
	bl sub_0800F220
	movs r0, #1
	bl sub_08005E18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801176C: .4byte 0x02001DC0
_08011770: .4byte 0x0831B8B4
_08011774: .4byte 0x0600F000
_08011778: .4byte 0x00009608
_0801177C: .4byte 0x00009B08
_08011780: .4byte 0x06010000
_08011784: .4byte 0x00009BC8
_08011788: .4byte 0x05000200
_0801178C: .4byte 0x0000A2C8
_08011790: .4byte 0x020127BC
_08011794: .4byte 0x0000A2E8
_08011798: .4byte 0x0000A2F8
_0801179C: .4byte 0x02012800
_080117A0: .4byte 0x0000A304
_080117A4: .4byte 0x0201280C
_080117A8: .4byte 0x0000A308
_080117AC: .4byte 0x0000A318
_080117B0: .4byte 0x0000A35C
_080117B4: .4byte 0x0000A364
_080117B8: .4byte 0x0000A36C
_080117BC: .4byte 0x0000A374
_080117C0: .4byte 0x02001DBC
_080117C4: .4byte 0x0000A3CC
_080117C8: .4byte 0x02001D6C

	thumb_func_start sub_080117CC
sub_080117CC: @ 0x080117CC
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x82
	lsls r1, r1, #1
	ldr r0, _080117F4 @ =0x083E42A0
	adds r2, r4, #0
	bl sub_08000E54
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08011800
	ldr r0, _080117F8 @ =0x084B5FA0
	ldr r2, _080117FC @ =0x083E46B0
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	adds r0, r1, r0
	b _0801180C
	.align 2, 0
_080117F4: .4byte 0x083E42A0
_080117F8: .4byte 0x084B5FA0
_080117FC: .4byte 0x083E46B0
_08011800:
	ldr r0, _08011814 @ =0x0831B8E0
	ldr r2, _08011818 @ =0x0831B8E8
	adds r1, r4, #0
	bl sub_080050E4
	movs r0, #0
_0801180C:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08011814: .4byte 0x0831B8E0
_08011818: .4byte 0x0831B8E8

	thumb_func_start sub_0801181C
sub_0801181C: @ 0x0801181C
	push {r4, r5, r6, lr}
	sub sp, #0x80
	adds r6, r0, #0
	adds r5, r1, #0
	adds r4, r2, #0
	cmp r4, #3
	bls _0801183C
	ldr r1, _08011868 @ =0x0831B900
	mov r0, sp
	adds r2, r5, #0
	adds r3, r4, #0
	bl sub_0803DFE0
	mov r0, sp
	bl sub_080050A8
_0801183C:
	movs r1, #3
	adds r0, r5, #0
	ands r0, r1
	lsls r0, r0, #1
	adds r2, r1, #0
	lsls r2, r0
	ands r4, r1
	lsls r4, r0
	lsrs r0, r5, #2
	movs r3, #0x9a
	lsls r3, r3, #4
	adds r1, r6, r3
	adds r1, r1, r0
	ldrb r0, [r1]
	bics r0, r2
	orrs r0, r4
	strb r0, [r1]
	add sp, #0x80
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08011868: .4byte 0x0831B900

	thumb_func_start sub_0801186C
sub_0801186C: @ 0x0801186C
	push {lr}
	bl sub_08005C64
	movs r0, #0xe0
	lsls r0, r0, #0x13
	movs r1, #3
	bl sub_08000FEC
	pop {r0}
	bx r0

	thumb_func_start sub_08011880
sub_08011880: @ 0x08011880
	lsrs r2, r0, #0xc
	ldr r1, _08011898 @ =0x00000FFF
	ands r1, r0
	ldr r0, _0801189C @ =0x083E4268
	lsls r2, r2, #2
	adds r2, r2, r0
	ldr r0, [r2]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	bx lr
	.align 2, 0
_08011898: .4byte 0x00000FFF
_0801189C: .4byte 0x083E4268

	thumb_func_start sub_080118A0
sub_080118A0: @ 0x080118A0
	push {lr}
	adds r1, r0, #0
	ldr r0, _080118BC @ =0x0000015F
	cmp r1, r0
	bhi _080118C4
	ldr r0, _080118C0 @ =0x0200C1A0
	lsls r1, r1, #2
	movs r2, #0x84
	lsls r2, r2, #3
	adds r0, r0, r2
	adds r1, r1, r0
	ldr r0, [r1]
	b _080118CC
	.align 2, 0
_080118BC: .4byte 0x0000015F
_080118C0: .4byte 0x0200C1A0
_080118C4:
	ldr r0, _080118D0 @ =0x0831B924
	bl sub_080050A8
	movs r0, #0
_080118CC:
	pop {r1}
	bx r1
	.align 2, 0
_080118D0: .4byte 0x0831B924

	thumb_func_start sub_080118D4
sub_080118D4: @ 0x080118D4
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _080118FC @ =0x0000015F
	cmp r4, r0
	bls _080118E6
	ldr r0, _08011900 @ =0x0831B940
	bl sub_080050A8
_080118E6:
	ldr r0, _08011904 @ =0x0200C1A0
	lsls r1, r4, #2
	movs r2, #0x84
	lsls r2, r2, #3
	adds r0, r0, r2
	adds r1, r1, r0
	str r5, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080118FC: .4byte 0x0000015F
_08011900: .4byte 0x0831B940
_08011904: .4byte 0x0200C1A0

	thumb_func_start sub_08011908
sub_08011908: @ 0x08011908
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08011930 @ =0x000002FF
	cmp r4, r0
	bhi _08011938
	ldr r2, _08011934 @ =0x0200C1A0
	movs r3, #3
	adds r1, r4, #0
	ands r1, r3
	lsls r1, r1, #1
	lsrs r0, r4, #2
	movs r4, #0x9a
	lsls r4, r4, #4
	adds r2, r2, r4
	adds r0, r0, r2
	ldrb r0, [r0]
	lsrs r0, r1
	ands r0, r3
	b _08011940
	.align 2, 0
_08011930: .4byte 0x000002FF
_08011934: .4byte 0x0200C1A0
_08011938:
	ldr r0, _08011948 @ =0x0831B95C
	bl sub_080050A8
	movs r0, #0
_08011940:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08011948: .4byte 0x0831B95C

	thumb_func_start sub_0801194C
sub_0801194C: @ 0x0801194C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _08011970 @ =0x000002FF
	cmp r4, r0
	bls _0801195E
	ldr r0, _08011974 @ =0x0831B97C
	bl sub_080050A8
_0801195E:
	ldr r0, _08011978 @ =0x0200C1A0
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_0801181C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08011970: .4byte 0x000002FF
_08011974: .4byte 0x0831B97C
_08011978: .4byte 0x0200C1A0

	thumb_func_start sub_0801197C
sub_0801197C: @ 0x0801197C
	push {lr}
	adds r1, r0, #0
	cmp r1, #0x1f
	bhi _08011998
	ldr r0, _08011994 @ =0x0200C1A0
	lsls r1, r1, #2
	movs r2, #0xa6
	lsls r2, r2, #4
	adds r0, r0, r2
	adds r1, r1, r0
	ldr r0, [r1]
	b _080119A0
	.align 2, 0
_08011994: .4byte 0x0200C1A0
_08011998:
	ldr r0, _080119A4 @ =0x0831B99C
	bl sub_080050A8
	movs r0, #0
_080119A0:
	pop {r1}
	bx r1
	.align 2, 0
_080119A4: .4byte 0x0831B99C

	thumb_func_start sub_080119A8
sub_080119A8: @ 0x080119A8
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	cmp r4, #0x1f
	bls _080119B8
	ldr r0, _080119CC @ =0x0831B9BC
	bl sub_080050A8
_080119B8:
	ldr r0, _080119D0 @ =0x0200C1A0
	lsls r1, r4, #2
	movs r2, #0xa6
	lsls r2, r2, #4
	adds r0, r0, r2
	adds r1, r1, r0
	str r5, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080119CC: .4byte 0x0831B9BC
_080119D0: .4byte 0x0200C1A0

	thumb_func_start sub_080119D4
sub_080119D4: @ 0x080119D4
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080119FC @ =0x0000015F
	cmp r4, r0
	bls _080119E4
	ldr r0, _08011A00 @ =0x0831B9DC
	bl sub_080050A8
_080119E4:
	ldr r0, _08011A04 @ =0x0200C1A0
	lsls r1, r4, #2
	movs r2, #0x84
	lsls r2, r2, #3
	adds r0, r0, r2
	adds r1, r1, r0
	ldr r0, [r1]
	bl sub_0800A4EC
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080119FC: .4byte 0x0000015F
_08011A00: .4byte 0x0831B9DC
_08011A04: .4byte 0x0200C1A0

	thumb_func_start sub_08011A08
sub_08011A08: @ 0x08011A08
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08011A30 @ =0x0000015F
	cmp r4, r0
	bls _08011A18
	ldr r0, _08011A34 @ =0x0831B9F8
	bl sub_080050A8
_08011A18:
	bl sub_0800A520
	ldr r1, _08011A38 @ =0x0200C1A0
	lsls r2, r4, #2
	movs r3, #0x84
	lsls r3, r3, #3
	adds r1, r1, r3
	adds r2, r2, r1
	str r0, [r2]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08011A30: .4byte 0x0000015F
_08011A34: .4byte 0x0831B9F8
_08011A38: .4byte 0x0200C1A0

	thumb_func_start sub_08011A3C
sub_08011A3C: @ 0x08011A3C
	push {lr}
	ldr r0, _08011A50 @ =0x0200C5C0
	movs r1, #0xd8
	lsls r1, r1, #3
	movs r2, #0
	bl sub_08000498
	pop {r0}
	bx r0
	.align 2, 0
_08011A50: .4byte 0x0200C5C0

	thumb_func_start sub_08011A54
sub_08011A54: @ 0x08011A54
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0803DF7C
	asrs r0, r0, #8
	adds r1, r4, #0
	bl sub_0803D350
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08011A6C
sub_08011A6C: @ 0x08011A6C
	push {lr}
	bl sub_0803DF70
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08011A78
sub_08011A78: @ 0x08011A78
	push {r4, lr}
	movs r3, #0
	movs r2, #0
	adds r1, r0, #0
	ldrb r0, [r1]
	adds r1, #1
	cmp r0, #0
	beq _08011ACE
	ldr r4, _08011AA0 @ =0x083D6088
_08011A8A:
	cmp r0, #0x23
	beq _08011ABC
	cmp r0, #0x24
	bne _08011AA4
	ldrb r0, [r1]
	adds r1, #1
	cmp r0, #0x4e
	beq _08011AA8
	cmp r0, #0x6e
	bne _08011AC0
	b _08011AA8
	.align 2, 0
_08011AA0: .4byte 0x083D6088
_08011AA4:
	cmp r0, #0xa
	bne _08011AB2
_08011AA8:
	cmp r2, r3
	bls _08011AAE
	adds r3, r2, #0
_08011AAE:
	movs r2, #0
	b _08011AC0
_08011AB2:
	lsrs r0, r0, #4
	adds r0, r0, r4
	ldrb r0, [r0]
	cmp r0, #0
	beq _08011ABE
_08011ABC:
	adds r1, #1
_08011ABE:
	adds r2, #1
_08011AC0:
	ldrb r0, [r1]
	adds r1, #1
	cmp r0, #0
	bne _08011A8A
	cmp r2, r3
	bls _08011ACE
	adds r3, r2, #0
_08011ACE:
	adds r0, r3, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08011AD8
sub_08011AD8: @ 0x08011AD8
	push {lr}
	movs r2, #0
	adds r1, r0, #0
	b _08011AF6
_08011AE0:
	cmp r0, #0xa
	beq _08011AF4
	cmp r0, #0x24
	bne _08011AF6
	ldrb r0, [r1]
	adds r1, #1
	cmp r0, #0x4e
	beq _08011AF4
	cmp r0, #0x6e
	bne _08011AF6
_08011AF4:
	adds r2, #1
_08011AF6:
	ldrb r0, [r1]
	adds r1, #1
	cmp r0, #0
	bne _08011AE0
	adds r0, r2, #1
	pop {r1}
	bx r1

	thumb_func_start sub_08011B04
sub_08011B04: @ 0x08011B04
	push {lr}
	movs r3, #0
	cmp r1, #0
	beq _08011B26
_08011B0C:
	ldrb r2, [r0]
	adds r0, #1
	cmp r2, #0
	bne _08011B1C
	ldr r0, _08011B18 @ =0x0831BA14
	b _08011B3A
	.align 2, 0
_08011B18: .4byte 0x0831BA14
_08011B1C:
	cmp r2, #0x20
	bne _08011B0C
	adds r3, #1
	cmp r1, r3
	bne _08011B0C
_08011B26:
	ldr r2, _08011B30 @ =0x0200E954
	adds r3, r2, #0
	adds r3, #0x3f
	b _08011B4C
	.align 2, 0
_08011B30: .4byte 0x0200E954
_08011B34:
	cmp r2, r3
	bne _08011B48
	ldr r0, _08011B44 @ =0x0831BA2C
_08011B3A:
	bl sub_080050A8
	movs r0, #0
	b _08011B5E
	.align 2, 0
_08011B44: .4byte 0x0831BA2C
_08011B48:
	strb r1, [r2]
	adds r2, #1
_08011B4C:
	ldrb r1, [r0]
	adds r0, #1
	cmp r1, #0
	beq _08011B58
	cmp r1, #0x20
	bne _08011B34
_08011B58:
	movs r0, #0
	strb r0, [r2]
	ldr r0, _08011B64 @ =0x0200E954
_08011B5E:
	pop {r1}
	bx r1
	.align 2, 0
_08011B64: .4byte 0x0200E954

	thumb_func_start sub_08011B68
sub_08011B68: @ 0x08011B68
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
	cmp r4, r5
	bhs _08011B7C
_08011B72:
	bl sub_08011E9C
	adds r4, #1
	cmp r4, r5
	blo _08011B72
_08011B7C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08011B84
sub_08011B84: @ 0x08011B84
	ldr r0, _08011B90 @ =0x0200C1A0
	ldr r1, _08011B94 @ =0x00000C24
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_08011B90: .4byte 0x0200C1A0
_08011B94: .4byte 0x00000C24

	thumb_func_start sub_08011B98
sub_08011B98: @ 0x08011B98
	ldr r0, _08011B9C @ =0x083E4288
	bx lr
	.align 2, 0
_08011B9C: .4byte 0x083E4288

	thumb_func_start sub_08011BA0
sub_08011BA0: @ 0x08011BA0
	push {lr}
	ldr r1, _08011BB4 @ =0x02000008
	ldrh r1, [r1]
	ands r1, r0
	cmp r1, #0
	beq _08011BAE
	movs r1, #1
_08011BAE:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0
_08011BB4: .4byte 0x02000008

	thumb_func_start sub_08011BB8
sub_08011BB8: @ 0x08011BB8
	push {lr}
	ldr r1, _08011BCC @ =0x02000020
	ldrh r1, [r1]
	ands r1, r0
	cmp r1, #0
	beq _08011BC6
	movs r1, #1
_08011BC6:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0
_08011BCC: .4byte 0x02000020

	thumb_func_start sub_08011BD0
sub_08011BD0: @ 0x08011BD0
	push {lr}
	ldr r1, _08011BE4 @ =0x02000004
	ldrh r1, [r1]
	ands r1, r0
	cmp r1, #0
	beq _08011BDE
	movs r1, #1
_08011BDE:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0
_08011BE4: .4byte 0x02000004

	thumb_func_start sub_08011BE8
sub_08011BE8: @ 0x08011BE8
	push {r4, lr}
	movs r4, #0
	ldr r0, _08011C10 @ =0x0200C1A0
	ldr r1, _08011C14 @ =0x00002344
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #2
	bne _08011BFA
	movs r4, #1
_08011BFA:
	bl sub_08005A50
	bl sub_08005A34
	adds r0, r4, #0
	bl sub_08011D10
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08011C10: .4byte 0x0200C1A0
_08011C14: .4byte 0x00002344

	thumb_func_start sub_08011C18
sub_08011C18: @ 0x08011C18
	push {lr}
	bl sub_08005A50
	bl sub_08005A34
	movs r0, #3
	bl sub_08011D10
	pop {r0}
	bx r0

	thumb_func_start sub_08011C2C
sub_08011C2C: @ 0x08011C2C
	push {r4, lr}
	movs r4, #0
	ldr r0, _08011C54 @ =0x0200C1A0
	ldr r1, _08011C58 @ =0x00002344
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #2
	bne _08011C3E
	movs r4, #1
_08011C3E:
	bl sub_08005AFC
	bl sub_08005A34
	adds r0, r4, #0
	bl sub_08011D10
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08011C54: .4byte 0x0200C1A0
_08011C58: .4byte 0x00002344

	thumb_func_start sub_08011C5C
sub_08011C5C: @ 0x08011C5C
	push {lr}
	bl sub_08005AFC
	bl sub_08005A34
	movs r0, #3
	bl sub_08011D10
	pop {r0}
	bx r0

	thumb_func_start sub_08011C70
sub_08011C70: @ 0x08011C70
	push {lr}
	ldr r0, _08011C7C @ =sub_08011E9C
	bl sub_0800A160
	pop {r0}
	bx r0
	.align 2, 0
_08011C7C: .4byte sub_08011E9C

	thumb_func_start sub_08011C80
sub_08011C80: @ 0x08011C80
	push {lr}
	ldr r0, _08011C8C @ =sub_08011E9C
	bl sub_0800A1A4
	pop {r0}
	bx r0
	.align 2, 0
_08011C8C: .4byte sub_08011E9C

	thumb_func_start sub_08011C90
sub_08011C90: @ 0x08011C90
	push {lr}
	ldr r1, _08011CA0 @ =0x00000DFF
	adds r0, r0, r1
	adds r1, #1
	bl sub_0803D34C
	pop {r1}
	bx r1
	.align 2, 0
_08011CA0: .4byte 0x00000DFF

	thumb_func_start sub_08011CA4
sub_08011CA4: @ 0x08011CA4
	push {r4, r5, lr}
	ldr r5, _08011CD0 @ =0x0200E994
	bl sub_08011C90
	adds r4, r0, #0
	movs r1, #0x3c
	bl sub_0803D34C
	adds r2, r0, #0
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #2
	subs r4, r4, r0
	ldr r1, _08011CD4 @ =0x0831BA44
	adds r0, r5, #0
	adds r3, r4, #0
	bl sub_0803DFE0
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08011CD0: .4byte 0x0200E994
_08011CD4: .4byte 0x0831BA44

	thumb_func_start sub_08011CD8
sub_08011CD8: @ 0x08011CD8
	ldr r0, _08011CEC @ =0x0300136C
	ldr r1, _08011CF0 @ =0x0200C1A0
	movs r2, #0x8d
	lsls r2, r2, #6
	adds r1, r1, r2
	ldr r0, [r0]
	ldr r1, [r1]
	subs r0, r0, r1
	bx lr
	.align 2, 0
_08011CEC: .4byte 0x0300136C
_08011CF0: .4byte 0x0200C1A0

	thumb_func_start sub_08011CF4
sub_08011CF4: @ 0x08011CF4
	ldr r2, _08011D08 @ =0x0200C1A0
	movs r1, #0x8d
	lsls r1, r1, #6
	adds r2, r2, r1
	ldr r1, _08011D0C @ =0x0300136C
	ldr r1, [r1]
	subs r1, r1, r0
	str r1, [r2]
	bx lr
	.align 2, 0
_08011D08: .4byte 0x0200C1A0
_08011D0C: .4byte 0x0300136C

	thumb_func_start sub_08011D10
sub_08011D10: @ 0x08011D10
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0800C058
	cmp r4, #2
	bhi _08011D28
	adds r0, r4, #0
	bl sub_0800BF04
	adds r0, r4, #0
	bl sub_0800C424
_08011D28:
	movs r0, #0
	bl sub_0800D2E0
	bl sub_0800D880
	bl sub_0800DA70
	bl sub_0800E388
	bl sub_0800E53C
	bl sub_0800E6D4
	bl sub_0800E8E0
	bl sub_0800EA50
	bl sub_0800EE8C
	bl sub_0800EFF4
	bl sub_0800F1BC
	bl sub_0800F3CC
	bl sub_0800469C
	cmp r4, #0
	beq _08011D66
	cmp r4, #2
	bne _08011D6A
_08011D66:
	bl sub_080046B8
_08011D6A:
	subs r0, r4, #1
	cmp r0, #1
	bhi _08011D74
	bl sub_080046D4
_08011D74:
	movs r0, #1
	bl sub_08005E18
	movs r0, #0
	bl sub_080059C4
	bl sub_0801186C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08011D8C
sub_08011D8C: @ 0x08011D8C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0
	cmp r7, #0
	beq _08011DB0
	ldr r0, _08011DA8 @ =0x0200C1A0
	ldr r1, _08011DAC @ =0x000069B8
	movs r2, #0
	bl sub_08000498
	b _08011DE6
	.align 2, 0
_08011DA8: .4byte 0x0200C1A0
_08011DAC: .4byte 0x000069B8
_08011DB0:
	ldr r6, _08011E28 @ =0x0200DA18
	ldr r0, _08011E2C @ =0x02017AF0
	mov r8, r0
	movs r1, #0x88
	lsls r1, r1, #3
	mov sb, r1
	adds r1, r6, #0
	mov r2, sb
	bl sub_080002C4
	ldr r1, _08011E30 @ =0xFFFFE788
	adds r0, r6, r1
	ldr r1, _08011E34 @ =0xFFFFF268
	adds r5, r6, r1
	ldr r1, _08011E38 @ =0x00005140
	adds r4, r6, r1
	movs r1, #0x84
	lsls r1, r1, #3
	movs r2, #0
	bl sub_08000498
	subs r4, r4, r5
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	bl sub_08000498
_08011DE6:
	cmp r7, #0
	bne _08011DF4
	adds r0, r6, #0
	mov r1, r8
	mov r2, sb
	bl sub_080002C4
_08011DF4:
	movs r0, #2
	bl sub_08011D10
	bl sub_0800CC94
	bl sub_08010ED8
	bl sub_0800FA5C
	bl sub_0800AC68
	bl sub_0800B74C
	ldr r0, _08011E3C @ =0x020132E0
	ldr r1, _08011E40 @ =0x00004804
	movs r2, #0
	bl sub_08000498
	bl sub_080114F4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08011E28: .4byte 0x0200DA18
_08011E2C: .4byte 0x02017AF0
_08011E30: .4byte 0xFFFFE788
_08011E34: .4byte 0xFFFFF268
_08011E38: .4byte 0x00005140
_08011E3C: .4byte 0x020132E0
_08011E40: .4byte 0x00004804

	thumb_func_start sub_08011E44
sub_08011E44: @ 0x08011E44
	push {lr}
	bl sub_0800A0F0
	movs r0, #0
	movs r1, #0
	bl sub_08005DB0
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r2, #0x9a
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08011E64
sub_08011E64: @ 0x08011E64
	push {r4, lr}
	ldr r4, _08011E90 @ =0x0200C1A0
	bl sub_08011E44
	bl sub_08005A50
	bl sub_08000B84
	movs r0, #1
	bl sub_08011D8C
	movs r0, #0
	bl sub_08011CF4
	ldr r0, _08011E94 @ =0x00000C28
	adds r4, r4, r0
	ldr r0, _08011E98 @ =0x084B5FA0
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08011E90: .4byte 0x0200C1A0
_08011E94: .4byte 0x00000C28
_08011E98: .4byte 0x084B5FA0

	thumb_func_start sub_08011E9C
sub_08011E9C: @ 0x08011E9C
	push {lr}
	bl sub_0803D380
	bl sub_08000BC0
	movs r0, #0xe0
	lsls r0, r0, #0x13
	bl sub_08005C74
	bl sub_0800E3A0
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08011EB8
sub_08011EB8: @ 0x08011EB8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18c
	ldr r7, _08011EF8 @ =0x0200C1A0
_08011EC6:
	ldr r0, _08011EFC @ =0x00000C28
	adds r2, r7, r0
	ldr r1, [r2]
	ldrb r0, [r1]
	adds r3, r0, #0
	adds r1, #1
	str r1, [r2]
	cmp r3, #1
	bne _08011EE4
	ldrb r0, [r1]
	movs r3, #0x80
	lsls r3, r3, #1
	orrs r3, r0
	adds r0, r1, #1
	str r0, [r2]
_08011EE4:
	ldr r0, _08011F00 @ =0x00000117
	cmp r3, r0
	bls _08011EEE
	bl _080137B6
_08011EEE:
	lsls r0, r3, #2
	ldr r1, _08011F04 @ =_08011F08
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08011EF8: .4byte 0x0200C1A0
_08011EFC: .4byte 0x00000C28
_08011F00: .4byte 0x00000117
_08011F04: .4byte _08011F08
_08011F08: @ jump table
	.4byte _08012368 @ case 0
	.4byte _080137B6 @ case 1
	.4byte _08012374 @ case 2
	.4byte _0801238C @ case 3
	.4byte _080123A8 @ case 4
	.4byte _080123CC @ case 5
	.4byte _080123EC @ case 6
	.4byte _08012410 @ case 7
	.4byte _08012434 @ case 8
	.4byte _08012460 @ case 9
	.4byte _0801248C @ case 10
	.4byte _080124BC @ case 11
	.4byte _080124D8 @ case 12
	.4byte _08012518 @ case 13
	.4byte _08012530 @ case 14
	.4byte _08012536 @ case 15
	.4byte _0801254A @ case 16
	.4byte _08012552 @ case 17
	.4byte _08012560 @ case 18
	.4byte _0801257A @ case 19
	.4byte _0801258C @ case 20
	.4byte _0801259A @ case 21
	.4byte _080125A8 @ case 22
	.4byte _080125C2 @ case 23
	.4byte _080125D8 @ case 24
	.4byte _080125F2 @ case 25
	.4byte _0801260C @ case 26
	.4byte _08012626 @ case 27
	.4byte _0801263C @ case 28
	.4byte _0801264A @ case 29
	.4byte _08012658 @ case 30
	.4byte _08012666 @ case 31
	.4byte _08012680 @ case 32
	.4byte _0801269A @ case 33
	.4byte _080126AC @ case 34
	.4byte _080126C8 @ case 35
	.4byte _080126D4 @ case 36
	.4byte _08012710 @ case 37
	.4byte _08012718 @ case 38
	.4byte _08012738 @ case 39
	.4byte _08012788 @ case 40
	.4byte _08012790 @ case 41
	.4byte _080127C8 @ case 42
	.4byte _080127E8 @ case 43
	.4byte _0801280C @ case 44
	.4byte _08012844 @ case 45
	.4byte _0801286C @ case 46
	.4byte _08012890 @ case 47
	.4byte _080128B4 @ case 48
	.4byte _08011EC6 @ case 49
	.4byte _080128BC @ case 50
	.4byte _080128BC @ case 51
	.4byte _080128C4 @ case 52
	.4byte _080128D0 @ case 53
	.4byte _080128DC @ case 54
	.4byte _080128E6 @ case 55
	.4byte _080128FA @ case 56
	.4byte _08012904 @ case 57
	.4byte _08012918 @ case 58
	.4byte _08012928 @ case 59
	.4byte _0801293C @ case 60
	.4byte _08012948 @ case 61
	.4byte _08012954 @ case 62
	.4byte _0801295C @ case 63
	.4byte _08012968 @ case 64
	.4byte _08012974 @ case 65
	.4byte _08012984 @ case 66
	.4byte _08012998 @ case 67
	.4byte _080129AC @ case 68
	.4byte _080129C0 @ case 69
	.4byte _080129D4 @ case 70
	.4byte _080129E8 @ case 71
	.4byte _080129FA @ case 72
	.4byte _08012A12 @ case 73
	.4byte _08012A24 @ case 74
	.4byte _08012A36 @ case 75
	.4byte _08012A4C @ case 76
	.4byte _08012A6C @ case 77
	.4byte _08012A7C @ case 78
	.4byte _08012A8A @ case 79
	.4byte _08012A96 @ case 80
	.4byte _08012AA2 @ case 81
	.4byte _08012AAC @ case 82
	.4byte _08012AB8 @ case 83
	.4byte _08012AC2 @ case 84
	.4byte _08012ACC @ case 85
	.4byte _08012AE4 @ case 86
	.4byte _08012AF0 @ case 87
	.4byte _08012AF8 @ case 88
	.4byte _08012AFE @ case 89
	.4byte _08012B0A @ case 90
	.4byte _08012B14 @ case 91
	.4byte _08012B1E @ case 92
	.4byte _08012B28 @ case 93
	.4byte _08012B34 @ case 94
	.4byte _08012B3C @ case 95
	.4byte _08012B44 @ case 96
	.4byte _08012B50 @ case 97
	.4byte _08012B5C @ case 98
	.4byte _08012B64 @ case 99
	.4byte _08012B70 @ case 100
	.4byte _08012B78 @ case 101
	.4byte _08012B84 @ case 102
	.4byte _08012B8C @ case 103
	.4byte _08012B98 @ case 104
	.4byte _08012BA0 @ case 105
	.4byte _08012BAC @ case 106
	.4byte _08012BB4 @ case 107
	.4byte _08012BC0 @ case 108
	.4byte _08012BCC @ case 109
	.4byte _08012BE0 @ case 110
	.4byte _08012BEC @ case 111
	.4byte _08012BF8 @ case 112
	.4byte _08012C04 @ case 113
	.4byte _08012C0C @ case 114
	.4byte _08012C14 @ case 115
	.4byte _08012C38 @ case 116
	.4byte _08012C40 @ case 117
	.4byte _08012C48 @ case 118
	.4byte _08012C6C @ case 119
	.4byte _08012C74 @ case 120
	.4byte _08012C7C @ case 121
	.4byte _08012C84 @ case 122
	.4byte _08012C8C @ case 123
	.4byte _08012CB0 @ case 124
	.4byte _08012CDC @ case 125
	.4byte _08012CE8 @ case 126
	.4byte _08012CF4 @ case 127
	.4byte _08012CFC @ case 128
	.4byte _08012D18 @ case 129
	.4byte _08012D24 @ case 130
	.4byte _08012D48 @ case 131
	.4byte _08012D60 @ case 132
	.4byte _08012D84 @ case 133
	.4byte _08012D90 @ case 134
	.4byte _08012DBA @ case 135
	.4byte _08012DC6 @ case 136
	.4byte _08012DD2 @ case 137
	.4byte _08012E14 @ case 138
	.4byte _08012E1C @ case 139
	.4byte _08012E30 @ case 140
	.4byte _08012E3C @ case 141
	.4byte _08012E48 @ case 142
	.4byte _08012E74 @ case 143
	.4byte _08012E7C @ case 144
	.4byte _08012E90 @ case 145
	.4byte _08012E9C @ case 146
	.4byte _08012EA8 @ case 147
	.4byte _08012EB0 @ case 148
	.4byte _08012EB8 @ case 149
	.4byte _08012EC0 @ case 150
	.4byte _08012EC8 @ case 151
	.4byte _08012ECE @ case 152
	.4byte _08012ED4 @ case 153
	.4byte _08012EF0 @ case 154
	.4byte _08012F16 @ case 155
	.4byte _08012F48 @ case 156
	.4byte _08012F5C @ case 157
	.4byte _08012F70 @ case 158
	.4byte _08012F7C @ case 159
	.4byte _08012F90 @ case 160
	.4byte _08012FAC @ case 161
	.4byte _08012FB4 @ case 162
	.4byte _08012FC8 @ case 163
	.4byte _08012FDC @ case 164
	.4byte _08012FE4 @ case 165
	.4byte _08012FF0 @ case 166
	.4byte _08012FF8 @ case 167
	.4byte _0801301C @ case 168
	.4byte _08013040 @ case 169
	.4byte _08013064 @ case 170
	.4byte _0801306C @ case 171
	.4byte _08013098 @ case 172
	.4byte _080130A4 @ case 173
	.4byte _080130B0 @ case 174
	.4byte _080130C4 @ case 175
	.4byte _080130E0 @ case 176
	.4byte _080130FC @ case 177
	.4byte _08013118 @ case 178
	.4byte _08013134 @ case 179
	.4byte _0801313C @ case 180
	.4byte _0801314C @ case 181
	.4byte _08013160 @ case 182
	.4byte _08013170 @ case 183
	.4byte _08013180 @ case 184
	.4byte _08013190 @ case 185
	.4byte _08013198 @ case 186
	.4byte _080131AC @ case 187
	.4byte _080131C0 @ case 188
	.4byte _080131CC @ case 189
	.4byte _080131E4 @ case 190
	.4byte _080131F8 @ case 191
	.4byte _08013204 @ case 192
	.4byte _08013218 @ case 193
	.4byte _0801322C @ case 194
	.4byte _08013248 @ case 195
	.4byte _08013264 @ case 196
	.4byte _08013278 @ case 197
	.4byte _08013294 @ case 198
	.4byte _080132A8 @ case 199
	.4byte _080132C4 @ case 200
	.4byte _080132CC @ case 201
	.4byte _080132E0 @ case 202
	.4byte _080132FC @ case 203
	.4byte _08013304 @ case 204
	.4byte _08013318 @ case 205
	.4byte _08013334 @ case 206
	.4byte _08013348 @ case 207
	.4byte _08013364 @ case 208
	.4byte _0801336C @ case 209
	.4byte _08013378 @ case 210
	.4byte _08013384 @ case 211
	.4byte _08013390 @ case 212
	.4byte _0801339C @ case 213
	.4byte _080133AC @ case 214
	.4byte _080133B4 @ case 215
	.4byte _080133C0 @ case 216
	.4byte _080133C8 @ case 217
	.4byte _080133D4 @ case 218
	.4byte _080133E0 @ case 219
	.4byte _080133EC @ case 220
	.4byte _080133F8 @ case 221
	.4byte _08013404 @ case 222
	.4byte _08013410 @ case 223
	.4byte _08013424 @ case 224
	.4byte _0801342C @ case 225
	.4byte _08013438 @ case 226
	.4byte _08013444 @ case 227
	.4byte _0801344C @ case 228
	.4byte _08013458 @ case 229
	.4byte _08013464 @ case 230
	.4byte _08013478 @ case 231
	.4byte _08013484 @ case 232
	.4byte _08013498 @ case 233
	.4byte _080134A4 @ case 234
	.4byte _080134AC @ case 235
	.4byte _080134B8 @ case 236
	.4byte _080134C4 @ case 237
	.4byte _080134D0 @ case 238
	.4byte _080134DC @ case 239
	.4byte _080134E4 @ case 240
	.4byte _080134EC @ case 241
	.4byte _080134F4 @ case 242
	.4byte _080134FC @ case 243
	.4byte _08013510 @ case 244
	.4byte _0801351C @ case 245
	.4byte _08013524 @ case 246
	.4byte _08013530 @ case 247
	.4byte _0801353C @ case 248
	.4byte _08013550 @ case 249
	.4byte _08013564 @ case 250
	.4byte _0801356E @ case 251
	.4byte _08013586 @ case 252
	.4byte _0801358E @ case 253
	.4byte _080135AA @ case 254
	.4byte _080135B2 @ case 255
	.4byte _080135BA @ case 256
	.4byte _080135CE @ case 257
	.4byte _080135E2 @ case 258
	.4byte _080135F6 @ case 259
	.4byte _0801360A @ case 260
	.4byte _08013640 @ case 261
	.4byte _0801364C @ case 262
	.4byte _08013658 @ case 263
	.4byte _08013684 @ case 264
	.4byte _0801368C @ case 265
	.4byte _08013698 @ case 266
	.4byte _080136A4 @ case 267
	.4byte _080136B0 @ case 268
	.4byte _080136C4 @ case 269
	.4byte _080136D8 @ case 270
	.4byte _080136EC @ case 271
	.4byte _08013708 @ case 272
	.4byte _08013724 @ case 273
	.4byte _0801372C @ case 274
	.4byte _0801373C @ case 275
	.4byte _08013760 @ case 276
	.4byte _08013768 @ case 277
	.4byte _0801379E @ case 278
	.4byte _080137AA @ case 279
_08012368:
	ldr r0, _08012370 @ =0x0831BA4C
	bl sub_080050A8
	b _08011EC6
	.align 2, 0
_08012370: .4byte 0x0831BA4C
_08012374:
	ldr r2, _08012388 @ =0x00000C28
	adds r1, r7, r2
	ldr r2, [r1]
	ldrb r0, [r2]
	adds r2, #1
	str r2, [r1]
_08012380:
	bl sub_0800A410
	b _08011EC6
	.align 2, 0
_08012388: .4byte 0x00000C28
_0801238C:
	ldr r4, _080123A4 @ =0x00000C28
	adds r3, r7, r4
	ldr r2, [r3]
	ldrb r0, [r2, #1]
	lsls r0, r0, #8
	ldrb r1, [r2]
	orrs r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r2, #2
	b _080123C4
	.align 2, 0
_080123A4: .4byte 0x00000C28
_080123A8:
	ldr r0, _080123C8 @ =0x00000C28
	adds r3, r7, r0
	ldr r2, [r3]
	ldrb r0, [r2, #3]
	lsls r0, r0, #0x18
	ldrb r1, [r2, #2]
	lsls r1, r1, #0x10
	orrs r0, r1
	ldrb r1, [r2, #1]
	lsls r1, r1, #8
	orrs r0, r1
	ldrb r1, [r2]
	orrs r0, r1
	adds r2, #4
_080123C4:
	str r2, [r3]
	b _08012380
	.align 2, 0
_080123C8: .4byte 0x00000C28
_080123CC:
	ldr r1, _080123E8 @ =0x00000C28
	adds r3, r7, r1
	ldr r2, [r3]
	ldrb r0, [r2, #1]
	lsls r0, r0, #8
	ldrb r1, [r2]
	orrs r0, r1
	adds r2, #2
	str r2, [r3]
	bl sub_08011880
	bl sub_0800A474
	b _08011EC6
	.align 2, 0
_080123E8: .4byte 0x00000C28
_080123EC:
	ldr r2, _0801240C @ =0x00000C28
	adds r3, r7, r2
	ldr r2, [r3]
	ldrb r1, [r2, #1]
	lsls r1, r1, #8
	ldrb r0, [r2]
	orrs r1, r0
	adds r2, #2
	str r2, [r3]
	lsls r1, r1, #2
	movs r4, #0x84
	lsls r4, r4, #3
	adds r0, r7, r4
	adds r0, r0, r1
	ldr r0, [r0]
	b _08012380
	.align 2, 0
_0801240C: .4byte 0x00000C28
_08012410:
	ldr r0, _08012430 @ =0x00000C28
	adds r2, r7, r0
	ldr r1, [r2]
	ldrb r4, [r1, #1]
	lsls r4, r4, #8
	ldrb r0, [r1]
	orrs r4, r0
	adds r1, #2
	str r1, [r2]
	bl sub_0800A444
	lsls r4, r4, #2
	movs r2, #0x84
	lsls r2, r2, #3
	b _080128A6
	.align 2, 0
_08012430: .4byte 0x00000C28
_08012434:
	ldr r4, _0801245C @ =0x00000C28
	adds r2, r7, r4
	ldr r1, [r2]
	ldrb r4, [r1, #1]
	lsls r4, r4, #8
	ldrb r0, [r1]
	orrs r4, r0
	adds r1, #2
	str r1, [r2]
	bl sub_0800A444
	lsls r4, r4, #2
	movs r1, #0x84
	lsls r1, r1, #3
	adds r2, r7, r1
	adds r2, r2, r4
	ldr r1, [r2]
	adds r1, r1, r0
	str r1, [r2]
	b _08011EC6
	.align 2, 0
_0801245C: .4byte 0x00000C28
_08012460:
	ldr r4, _08012488 @ =0x00000C28
	adds r2, r7, r4
	ldr r1, [r2]
	ldrb r4, [r1, #1]
	lsls r4, r4, #8
	ldrb r0, [r1]
	orrs r4, r0
	adds r1, #2
	str r1, [r2]
	bl sub_0800A444
	lsls r4, r4, #2
	movs r1, #0x84
	lsls r1, r1, #3
	adds r2, r7, r1
	adds r2, r2, r4
	ldr r1, [r2]
	subs r1, r1, r0
	str r1, [r2]
	b _08011EC6
	.align 2, 0
_08012488: .4byte 0x00000C28
_0801248C:
	ldr r2, _080124B8 @ =0x00000C28
	adds r3, r7, r2
	ldr r1, [r3]
	ldrb r2, [r1, #1]
	lsls r2, r2, #8
	ldrb r0, [r1]
	orrs r2, r0
	adds r1, #2
	str r1, [r3]
	movs r3, #3
	adds r1, r2, #0
	ands r1, r3
	lsls r1, r1, #1
	lsrs r2, r2, #2
	movs r4, #0x9a
	lsls r4, r4, #4
	adds r0, r7, r4
	adds r0, r0, r2
	ldrb r0, [r0]
	lsrs r0, r1
	ands r0, r3
	b _08012380
	.align 2, 0
_080124B8: .4byte 0x00000C28
_080124BC:
	ldr r0, _080124D4 @ =0x00000C28
	adds r2, r7, r0
	ldr r1, [r2]
	ldrb r4, [r1, #1]
	lsls r4, r4, #8
	ldrb r0, [r1]
	orrs r4, r0
	adds r1, #2
	str r1, [r2]
	bl sub_0800A444
	b _0801285A
	.align 2, 0
_080124D4: .4byte 0x00000C28
_080124D8:
	ldr r1, _08012510 @ =0x00000C28
	adds r2, r7, r1
	ldr r1, [r2]
	ldrb r0, [r1]
	adds r3, r0, #0
	adds r1, #1
	str r1, [r2]
	lsls r1, r3, #2
	movs r2, #0xa6
	lsls r2, r2, #4
	adds r0, r7, r2
	adds r0, r0, r1
	ldr r4, [r0]
	cmp r4, #0
	bne _08012506
	ldr r1, _08012514 @ =0x0831BA8C
	add r0, sp, #8
	adds r2, r3, #0
	bl sub_0803DFE0
	add r0, sp, #8
	bl sub_080050A8
_08012506:
	adds r0, r4, #0
	bl sub_0800A474
	b _08011EC6
	.align 2, 0
_08012510: .4byte 0x00000C28
_08012514: .4byte 0x0831BA8C
_08012518:
	ldr r4, _0801252C @ =0x00000C28
	adds r1, r7, r4
	ldr r0, [r1]
	ldrb r4, [r0]
	adds r0, #1
	str r0, [r1]
	bl sub_0800A4A8
	b _080128A0
	.align 2, 0
_0801252C: .4byte 0x00000C28
_08012530:
	bl sub_0800A444
	b _08012A86
_08012536:
	bl sub_0800A444
	movs r1, #0
	cmp r0, #0
	beq _08012544
	bl _08012E06
_08012544:
	movs r1, #1
	bl _08012E06
_0801254A:
	bl sub_0800A444
	mvns r0, r0
	b _08012380
_08012552:
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	muls r0, r4, r0
	b _08012380
_08012560:
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	cmp r4, #2
	bne _08012572
	asrs r0, r0, #1
	b _08012380
_08012572:
	adds r1, r4, #0
	bl sub_0803D34C
	b _08012380
_0801257A:
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	adds r1, r4, #0
	bl sub_0803D350
	b _08012380
_0801258C:
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	adds r0, r0, r4
	b _08012380
_0801259A:
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	subs r0, r0, r4
	b _08012380
_080125A8:
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	movs r1, #0
	cmp r0, r4
	beq _080125BC
	bl _08012E06
_080125BC:
	movs r1, #1
	bl _08012E06
_080125C2:
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	adds r1, r0, #0
	eors r1, r4
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	b _08012380
_080125D8:
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	movs r1, #0
	cmp r0, r4
	bge _080125EC
	bl _08012E06
_080125EC:
	movs r1, #1
	bl _08012E06
_080125F2:
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	movs r1, #0
	cmp r0, r4
	ble _08012606
	bl _08012E06
_08012606:
	movs r1, #1
	bl _08012E06
_0801260C:
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	movs r1, #0
	cmp r0, r4
	bgt _08012620
	bl _08012E06
_08012620:
	movs r1, #1
	bl _08012E06
_08012626:
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	movs r1, #0
	cmp r0, r4
	blt _08012638
	b _08012E06
_08012638:
	movs r1, #1
	b _08012E06
_0801263C:
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	ands r0, r4
	b _08012380
_0801264A:
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	orrs r0, r4
	b _08012380
_08012658:
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	eors r0, r4
	b _08012380
_08012666:
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	movs r1, #0
	cmp r0, #0
	bne _08012678
	b _08012E06
_08012678:
	rsbs r0, r4, #0
	orrs r0, r4
	lsrs r1, r0, #0x1f
	b _08012E06
_08012680:
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	movs r1, #0
	cmp r0, #0
	bne _08012696
	cmp r4, #0
	bne _08012696
	b _08012E06
_08012696:
	movs r1, #1
	b _08012E06
_0801269A:
	bl sub_0800A4A8
	adds r4, r0, #0
	bl sub_0800A4A8
	adds r1, r4, #0
	bl sub_08000D80
	b _08012380
_080126AC:
	bl sub_0800A4A8
	adds r4, r0, #0
	bl sub_0800A4A8
	adds r1, r4, #0
	bl sub_08000D80
	movs r1, #0
	cmp r0, #0
	beq _080126C4
	b _08012E06
_080126C4:
	movs r1, #1
	b _08012E06
_080126C8:
	ldr r4, _080126D0 @ =0x00000C28
	adds r3, r7, r4
	b _08012744
	.align 2, 0
_080126D0: .4byte 0x00000C28
_080126D4:
	ldr r0, _0801270C @ =0x00000C28
	adds r5, r7, r0
	ldr r1, [r5]
	ldrb r0, [r1, #2]
	lsls r4, r0, #0x10
	ldrb r0, [r1, #1]
	lsls r0, r0, #8
	orrs r4, r0
	ldrb r0, [r1]
	orrs r4, r0
	movs r0, #0x80
	lsls r0, r0, #0x10
	ands r0, r4
	cmp r0, #0
	beq _080126F8
	movs r0, #0xff
	lsls r0, r0, #0x18
	orrs r4, r0
_080126F8:
	adds r0, r1, #3
	str r0, [r5]
	bl sub_0800A4EC
	ldr r0, [r5]
	adds r0, r0, r4
	str r0, [r5]
	bl _08011EC6
	.align 2, 0
_0801270C: .4byte 0x00000C28
_08012710:
	bl sub_0800A520
	bl sub_080137E6
_08012718:
	bl sub_0800A444
	cmp r0, #0
	beq _0801272C
	ldr r4, _08012728 @ =0x00000C28
	adds r3, r7, r4
	b _08012744
	.align 2, 0
_08012728: .4byte 0x00000C28
_0801272C:
	ldr r0, _08012734 @ =0x00000C28
	adds r1, r7, r0
	b _08012778
	.align 2, 0
_08012734: .4byte 0x00000C28
_08012738:
	bl sub_0800A444
	cmp r0, #0
	bne _08012774
	ldr r1, _08012770 @ =0x00000C28
	adds r3, r7, r1
_08012744:
	ldr r2, [r3]
	ldrb r0, [r2, #2]
	lsls r1, r0, #0x10
	ldrb r0, [r2, #1]
	lsls r0, r0, #8
	orrs r1, r0
	ldrb r0, [r2]
	orrs r1, r0
	movs r0, #0x80
	lsls r0, r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08012764
	movs r0, #0xff
	lsls r0, r0, #0x18
	orrs r1, r0
_08012764:
	adds r0, r2, #3
	adds r0, r0, r1
	str r0, [r3]
	bl _08011EC6
	.align 2, 0
_08012770: .4byte 0x00000C28
_08012774:
	ldr r2, _08012784 @ =0x00000C28
	adds r1, r7, r2
_08012778:
	ldr r0, [r1]
	adds r0, #3
	str r0, [r1]
	bl _08011EC6
	.align 2, 0
_08012784: .4byte 0x00000C28
_08012788:
	bl sub_0800A400
	bl _08011EC6
_08012790:
	ldr r4, _080127C4 @ =0x00000C28
	adds r3, r7, r4
	ldr r2, [r3]
	ldrb r0, [r2, #2]
	lsls r1, r0, #0x10
	ldrb r0, [r2, #1]
	lsls r0, r0, #8
	orrs r1, r0
	ldrb r0, [r2]
	orrs r1, r0
	movs r0, #0x80
	lsls r0, r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080127B4
	movs r0, #0xff
	lsls r0, r0, #0x18
	orrs r1, r0
_080127B4:
	adds r0, r2, #3
	str r0, [r3]
	adds r0, r0, r1
	bl sub_0800A778
	bl _08011EC6
	.align 2, 0
_080127C4: .4byte 0x00000C28
_080127C8:
	ldr r0, _080127E4 @ =0x00000C28
	adds r3, r7, r0
	ldr r2, [r3]
	ldrb r1, [r2, #1]
	lsls r1, r1, #8
	ldrb r0, [r2]
	orrs r1, r0
	adds r2, #2
	str r2, [r3]
	lsls r1, r1, #2
	movs r2, #0x84
	lsls r2, r2, #3
	b _0801287E
	.align 2, 0
_080127E4: .4byte 0x00000C28
_080127E8:
	ldr r4, _08012808 @ =0x00000C28
	adds r2, r7, r4
	ldr r1, [r2]
	ldrb r4, [r1, #1]
	lsls r4, r4, #8
	ldrb r0, [r1]
	orrs r4, r0
	adds r1, #2
	str r1, [r2]
	bl sub_0800A520
	lsls r4, r4, #2
	movs r2, #0x84
	lsls r2, r2, #3
	b _080128A6
	.align 2, 0
_08012808: .4byte 0x00000C28
_0801280C:
	ldr r4, _08012840 @ =0x00000C28
	adds r3, r7, r4
	ldr r1, [r3]
	ldrb r2, [r1, #1]
	lsls r2, r2, #8
	ldrb r0, [r1]
	orrs r2, r0
	adds r1, #2
	str r1, [r3]
	movs r3, #3
	adds r1, r2, #0
	ands r1, r3
	lsls r1, r1, #1
	lsrs r2, r2, #2
	movs r4, #0x9a
	lsls r4, r4, #4
	adds r0, r7, r4
	adds r0, r0, r2
	ldrb r0, [r0]
	lsrs r0, r1
	ands r0, r3
	bl sub_0800A4EC
	bl _08011EC6
	.align 2, 0
_08012840: .4byte 0x00000C28
_08012844:
	ldr r0, _08012868 @ =0x00000C28
	adds r2, r7, r0
	ldr r1, [r2]
	ldrb r4, [r1, #1]
	lsls r4, r4, #8
	ldrb r0, [r1]
	orrs r4, r0
	adds r1, #2
	str r1, [r2]
	bl sub_0800A520
_0801285A:
	adds r2, r0, #0
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_0801181C
	bl _08011EC6
	.align 2, 0
_08012868: .4byte 0x00000C28
_0801286C:
	ldr r1, _0801288C @ =0x00000C28
	adds r2, r7, r1
	ldr r0, [r2]
	ldrb r1, [r0]
	adds r0, #1
	str r0, [r2]
	lsls r1, r1, #2
	movs r2, #0xa6
	lsls r2, r2, #4
_0801287E:
	adds r0, r7, r2
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_0800A4EC
	bl _08011EC6
	.align 2, 0
_0801288C: .4byte 0x00000C28
_08012890:
	ldr r4, _080128B0 @ =0x00000C28
	adds r1, r7, r4
	ldr r0, [r1]
	ldrb r4, [r0]
	adds r0, #1
	str r0, [r1]
	bl sub_0800A520
_080128A0:
	lsls r4, r4, #2
	movs r2, #0xa6
	lsls r2, r2, #4
_080128A6:
	adds r1, r7, r2
	adds r1, r1, r4
	str r0, [r1]
	bl _08011EC6
	.align 2, 0
_080128B0: .4byte 0x00000C28
_080128B4:
	bl sub_0800A4A8
	bl _08011EC6
_080128BC:
	bl sub_0800A444
	bl _08011EC6
_080128C4:
	bl sub_0800A444
	bl sub_0800A3F0
	bl _08011EC6
_080128D0:
	bl sub_0800A4A8
	bl sub_0800A3F4
	bl _08011EC6
_080128DC:
	bl sub_0800A444
	bl sub_080118A0
	b _08012380
_080128E6:
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	adds r1, r4, #0
	bl sub_080118D4
	bl _08011EC6
_080128FA:
	bl sub_0800A444
	bl sub_08011908
	b _08012380
_08012904:
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	adds r1, r4, #0
	bl sub_0801194C
	bl _08011EC6
_08012918:
	bl sub_0800A444
	bl sub_0801197C
	bl sub_0800A474
	bl _08011EC6
_08012928:
	bl sub_0800A4A8
	adds r4, r0, #0
	bl sub_0800A444
	adds r1, r4, #0
	bl sub_080119A8
	bl _08011EC6
_0801293C:
	bl sub_0800A444
	bl sub_080119D4
	bl _08011EC6
_08012948:
	bl sub_0800A444
	bl sub_08011A08
	bl _08011EC6
_08012954:
	bl sub_08011A3C
	bl _08011EC6
_0801295C:
	bl sub_0800A444
	bl sub_0800AA28
	bl _08011EC6
_08012968:
	bl sub_0800AA5C
	bl sub_0800A474
	bl _08011EC6
_08012974:
	bl sub_0800A444
	bl sub_0800AA7C
	bl sub_0800A474
	bl _08011EC6
_08012984:
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A4A8
	adds r1, r4, #0
	bl sub_0800AAA8
	bl _08011EC6
_08012998:
	bl sub_0800A4A8
	adds r4, r0, #0
	bl sub_0800A444
	adds r1, r4, #0
	bl sub_0800AADC
	bl _08011EC6
_080129AC:
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A4A8
	adds r1, r4, #0
	bl sub_0800AB30
	bl _08011EC6
_080129C0:
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A4A8
	adds r1, r4, #0
	bl sub_0800AB5C
	bl _08011EC6
_080129D4:
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	adds r1, r4, #0
	bl sub_0800ABA4
	bl _08011EC6
_080129E8:
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	adds r1, r4, #0
	bl sub_0800A7B8
	b _08012380
_080129FA:
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	adds r1, r4, #0
	bl sub_0800A820
	bl sub_0800A474
	bl _08011EC6
_08012A12:
	bl sub_0800A4A8
	adds r4, r0, #0
	bl sub_0800A444
	adds r1, r4, #0
	bl sub_0800A85C
	b _08012380
_08012A24:
	bl sub_0800A4A8
	adds r4, r0, #0
	bl sub_0800A444
	adds r1, r4, #0
	bl sub_0800A8B8
	b _08012380
_08012A36:
	bl sub_0800A4A8
	bl sub_080117CC
	ldr r4, _08012A48 @ =0x00000C28
	adds r1, r7, r4
	str r0, [r1]
	bl _08011EC6
	.align 2, 0
_08012A48: .4byte 0x00000C28
_08012A4C:
	bl sub_0800A4A8
	adds r5, r0, #0
	ldr r0, _08012A68 @ =0x00000C28
	adds r4, r7, r0
	ldr r0, [r4]
	bl sub_0800A4EC
	adds r0, r5, #0
	bl sub_080117CC
	str r0, [r4]
	bl _08011EC6
	.align 2, 0
_08012A68: .4byte 0x00000C28
_08012A6C:
	bl sub_0800A4A8
	bl sub_080117CC
	bl sub_0800A778
	bl _08011EC6
_08012A7C:
	bl sub_0800A444
	cmp r0, #0
	blt _08012A86
	b _08012380
_08012A86:
	rsbs r0, r0, #0
	b _08012380
_08012A8A:
	bl sub_0800A444
	adds r1, r0, #0
	movs r0, #1
	bics r0, r1
	b _08012380
_08012A96:
	bl sub_0800A444
	adds r1, r0, #0
	movs r0, #1
	ands r0, r1
	b _08012380
_08012AA2:
	bl sub_0800A444
	bl sub_08011A54
	b _08012380
_08012AAC:
	bl sub_0800A444
	bl sub_08011A6C
	bl _08011EC6
_08012AB8:
	bl sub_0800A4A8
	bl sub_08011A78
	b _08012380
_08012AC2:
	bl sub_0800A4A8
	bl sub_08011AD8
	b _08012380
_08012ACC:
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A4A8
	adds r1, r4, #0
	bl sub_08011B04
	bl sub_0800A474
	bl _08011EC6
_08012AE4:
	bl sub_0800A444
	bl sub_08011B68
	bl _08011EC6
_08012AF0:
	bl sub_0800A4D8
	bl _08011EC6
_08012AF8:
	bl sub_08011B84
	b _08012380
_08012AFE:
	bl sub_08011B98
	bl sub_0800A474
	bl _08011EC6
_08012B0A:
	bl sub_0800A444
	bl sub_08011BA0
	b _08012380
_08012B14:
	bl sub_0800A444
	bl sub_08011BB8
	b _08012380
_08012B1E:
	bl sub_0800A444
	bl sub_08011BD0
	b _08012380
_08012B28:
	bl sub_0800A444
	bl sub_0800ACD0
	bl _08011EC6
_08012B34:
	bl sub_0800AD04
	bl _08011EC6
_08012B3C:
	bl sub_0800AD28
	bl _08011EC6
_08012B44:
	bl sub_0800A444
	bl sub_0800AD4C
	bl _08011EC6
_08012B50:
	bl sub_0800A444
	bl sub_0800AD80
	bl _08011EC6
_08012B5C:
	bl sub_0800ADA8
	bl _08012380
_08012B64:
	bl sub_0800A444
	bl sub_0800ADD8
	bl _08011EC6
_08012B70:
	bl sub_0800ADFC
	bl _08011EC6
_08012B78:
	bl sub_0800A444
	bl sub_0800AE20
	bl _08011EC6
_08012B84:
	bl sub_0800AE4C
	bl _08012380
_08012B8C:
	bl sub_0800A444
	bl sub_0800AE7C
	bl _08011EC6
_08012B98:
	bl sub_0800AE8C
	bl _08011EC6
_08012BA0:
	bl sub_0800A444
	bl sub_0800AE98
	bl _08011EC6
_08012BAC:
	bl sub_0800AEB0
	bl _08011EC6
_08012BB4:
	bl sub_0800A444
	bl sub_0800AEE0
	bl _08011EC6
_08012BC0:
	bl sub_0800A444
	bl sub_0800B764
	bl _08012380
_08012BCC:
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	adds r1, r4, #0
	bl sub_0800B788
	bl _08011EC6
_08012BE0:
	bl sub_0800A444
	bl sub_0800B7AC
	bl _08012380
_08012BEC:
	bl sub_0800A444
	bl sub_0800BE8C
	bl _08012380
_08012BF8:
	bl sub_0800A444
	bl sub_0800BEAC
	bl _08011EC6
_08012C04:
	bl sub_08011BE8
	bl _08011EC6
_08012C0C:
	bl sub_08011C18
	bl _08011EC6
_08012C14:
	bl sub_0800A444
	adds r6, r0, #0
	bl sub_0800A444
	adds r5, r0, #0
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	adds r1, r4, #0
	adds r2, r5, #0
	adds r3, r6, #0
	bl sub_08005A64
	bl _08011EC6
_08012C38:
	bl sub_08011C2C
	bl _08011EC6
_08012C40:
	bl sub_08011C5C
	bl _08011EC6
_08012C48:
	bl sub_0800A444
	adds r6, r0, #0
	bl sub_0800A444
	adds r5, r0, #0
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	adds r1, r4, #0
	adds r2, r5, #0
	adds r3, r6, #0
	bl sub_08005B50
	bl _08011EC6
_08012C6C:
	bl sub_08011500
	bl _08011EC6
_08012C74:
	bl sub_0801161C
	bl _08011EC6
_08012C7C:
	bl sub_08011C70
	bl _08011EC6
_08012C84:
	bl sub_08011C80
	bl _08011EC6
_08012C8C:
	bl sub_0800A444
	adds r6, r0, #0
	bl sub_0800A444
	adds r5, r0, #0
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	adds r1, r4, #0
	adds r2, r5, #0
	adds r3, r6, #0
	bl sub_0800C0EC
	bl _08011EC6
_08012CB0:
	bl sub_0800A444
	adds r6, r0, #0
	bl sub_0800A444
	mov r8, r0
	bl sub_0800A444
	adds r5, r0, #0
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	str r6, [sp]
	adds r1, r4, #0
	adds r2, r5, #0
	mov r3, r8
	bl sub_0800C174
	bl _08011EC6
_08012CDC:
	bl sub_0800A444
	bl sub_0800C1B0
	bl _08012380
_08012CE8:
	bl sub_0800A444
	bl sub_0800C1E4
	bl _08011EC6
_08012CF4:
	bl sub_0800C2E8
	bl _08011EC6
_08012CFC:
	bl sub_0800A444
	adds r5, r0, #0
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A4A8
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_0800C30C
	bl _08011EC6
_08012D18:
	bl sub_0800A444
	bl sub_0800C358
	bl _08011EC6
_08012D24:
	bl sub_0800A444
	adds r6, r0, #0
	bl sub_0800A4A8
	adds r5, r0, #0
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	adds r1, r4, #0
	adds r2, r5, #0
	adds r3, r6, #0
	bl sub_0800C36C
	bl _08011EC6
_08012D48:
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	adds r1, r4, #0
	bl sub_0800C3C0
	bl sub_0800A474
	bl _08011EC6
_08012D60:
	bl sub_0800A444
	adds r6, r0, #0
	bl sub_0800A444
	adds r5, r0, #0
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	adds r1, r4, #0
	adds r2, r5, #0
	adds r3, r6, #0
	bl sub_0800C688
	bl _08011EC6
_08012D84:
	bl sub_0800A444
	bl sub_0800C82C
	bl _08012380
_08012D90:
	ldr r1, _08012DA4 @ =0x0200C1A0
	ldr r2, _08012DA8 @ =0x00002344
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #3
	bne _08012DB0
	ldr r4, _08012DAC @ =0x000023F0
	adds r0, r1, r4
	ldr r0, [r0]
	b _08012DB4
	.align 2, 0
_08012DA4: .4byte 0x0200C1A0
_08012DA8: .4byte 0x00002344
_08012DAC: .4byte 0x000023F0
_08012DB0:
	bl sub_0800A444
_08012DB4:
	bl sub_0800CA84
	b _08012DF4
_08012DBA:
	bl sub_0800A444
	bl sub_0800CB20
	bl _08012380
_08012DC6:
	bl sub_0800A444
	bl sub_0800CB3C
	bl _08011EC6
_08012DD2:
	ldr r0, _08012DE4 @ =0x0200C1A0
	ldr r4, _08012DE8 @ =0x00002344
	adds r0, r0, r4
	ldrb r0, [r0]
	cmp r0, #3
	bne _08012DEC
	movs r0, #0
	b _08012DF0
	.align 2, 0
_08012DE4: .4byte 0x0200C1A0
_08012DE8: .4byte 0x00002344
_08012DEC:
	bl sub_0800A444
_08012DF0:
	bl sub_0800CB84
_08012DF4:
	adds r1, r0, #0
	ldr r0, _08012E0C @ =0x0200C1A0
	ldr r2, _08012E10 @ =0x00002344
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r0, #1
	bne _08012E06
	bl sub_080137D6
_08012E06:
	adds r0, r1, #0
	bl _08012380
	.align 2, 0
_08012E0C: .4byte 0x0200C1A0
_08012E10: .4byte 0x00002344
_08012E14:
	bl sub_0800CBFC
	bl _08012380
_08012E1C:
	bl sub_0800A4A8
	adds r4, r0, #0
	bl sub_0800A4A8
	adds r1, r4, #0
	bl sub_0800CC38
	bl _08012380
_08012E30:
	bl sub_0800A444
	bl sub_0800CC60
	bl _08012380
_08012E3C:
	bl sub_0800A444
	bl sub_0800D2E0
	bl _08011EC6
_08012E48:
	bl sub_0800A444
	adds r6, r0, #0
	bl sub_0800A444
	mov r8, r0
	bl sub_0800A444
	adds r5, r0, #0
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	str r6, [sp]
	adds r1, r4, #0
	adds r2, r5, #0
	mov r3, r8
	bl sub_0800D328
	bl _08011EC6
_08012E74:
	bl sub_0800D358
	bl _08011EC6
_08012E7C:
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	adds r1, r4, #0
	bl sub_0800D364
	bl _08011EC6
_08012E90:
	bl sub_0800A444
	bl sub_0800D394
	bl _08011EC6
_08012E9C:
	bl sub_0800A444
	bl sub_0800D3AC
	bl _08011EC6
_08012EA8:
	bl sub_0800D3B8
	bl _08011EC6
_08012EB0:
	bl sub_0800D3CC
	bl _08011EC6
_08012EB8:
	bl sub_0800D3E0
	bl _08011EC6
_08012EC0:
	bl sub_0800D3F0
	bl _08011EC6
_08012EC8:
	bl sub_0800D400
	b _08012F3C
_08012ECE:
	bl sub_0800D424
	b _08012F3C
_08012ED4:
	ldr r0, _08012EEC @ =0x00000C28
	adds r4, r7, r0
	ldr r0, [r4]
	bl sub_0800D4C0
	cmp r0, #0
	bne _08012EE6
	bl sub_080137D6
_08012EE6:
	str r0, [r4]
	bl _08011EC6
	.align 2, 0
_08012EEC: .4byte 0x00000C28
_08012EF0:
	ldr r0, _08012F04 @ =0x0200C1A0
	ldr r1, _08012F08 @ =0x00002344
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #3
	bne _08012F0C
	mov r0, sl
	movs r1, #0
	b _08012F38
	.align 2, 0
_08012F04: .4byte 0x0200C1A0
_08012F08: .4byte 0x00002344
_08012F0C:
	bl sub_0800A4A8
	mov sl, r0
	movs r1, #0
	b _08012F38
_08012F16:
	ldr r0, _08012F28 @ =0x0200C1A0
	ldr r2, _08012F2C @ =0x00002344
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r0, #3
	bne _08012F30
	ldr r0, [sp, #0x188]
	b _08012F36
	.align 2, 0
_08012F28: .4byte 0x0200C1A0
_08012F2C: .4byte 0x00002344
_08012F30:
	bl sub_0800A4A8
	str r0, [sp, #0x188]
_08012F36:
	movs r1, #1
_08012F38:
	bl sub_0800D55C
_08012F3C:
	cmp r0, #0
	beq _08012F44
	bl sub_080137D6
_08012F44:
	bl _08011EC6
_08012F48:
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A4A8
	adds r1, r4, #0
	bl sub_0800D6C4
	bl _08011EC6
_08012F5C:
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A4A8
	adds r1, r4, #0
	bl sub_0800D6F4
	bl _08011EC6
_08012F70:
	bl sub_0800A444
	bl sub_0800D724
	bl _08011EC6
_08012F7C:
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	adds r1, r4, #0
	bl sub_0800D744
	bl _08011EC6
_08012F90:
	bl sub_0800A444
	adds r5, r0, #0
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_0800D77C
	bl _08011EC6
_08012FAC:
	bl sub_0800D880
	bl _08011EC6
_08012FB4:
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	adds r1, r4, #0
	bl sub_0800D9B4
	bl _08011EC6
_08012FC8:
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A4A8
	adds r1, r4, #0
	bl sub_0800D9D4
	bl _08011EC6
_08012FDC:
	bl sub_0800DA40
	bl _08011EC6
_08012FE4:
	bl sub_0800A4A8
	bl sub_0800DCE8
	bl _08011EC6
_08012FF0:
	bl sub_0800DD94
	bl _08011EC6
_08012FF8:
	bl sub_0800A444
	adds r6, r0, #0
	bl sub_0800A444
	adds r5, r0, #0
	bl sub_0800A4A8
	adds r4, r0, #0
	bl sub_0800A444
	adds r1, r4, #0
	adds r2, r5, #0
	adds r3, r6, #0
	bl sub_0800E4AC
	bl _08011EC6
_0801301C:
	bl sub_0800A444
	adds r6, r0, #0
	bl sub_0800A444
	adds r5, r0, #0
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	adds r1, r4, #0
	adds r2, r5, #0
	adds r3, r6, #0
	bl sub_0800E4C0
	bl _08011EC6
_08013040:
	bl sub_0800A444
	adds r6, r0, #0
	bl sub_0800A444
	adds r5, r0, #0
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	adds r1, r4, #0
	adds r2, r5, #0
	adds r3, r6, #0
	bl sub_0800E4F0
	bl _08011EC6
_08013064:
	bl sub_0800E520
	bl _08011EC6
_0801306C:
	bl sub_0800A444
	adds r6, r0, #0
	bl sub_0800A444
	mov r8, r0
	bl sub_0800A444
	adds r5, r0, #0
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	str r6, [sp]
	adds r1, r4, #0
	adds r2, r5, #0
	mov r3, r8
	bl sub_0800E658
	bl _08011EC6
_08013098:
	bl sub_0800A444
	bl sub_0800E6B8
	bl _08011EC6
_080130A4:
	bl sub_0800A4A8
	bl sub_0800E844
	bl _08011EC6
_080130B0:
	bl sub_0800A4A8
	adds r4, r0, #0
	bl sub_0800A4A8
	adds r1, r4, #0
	bl sub_0800E850
	bl _08011EC6
_080130C4:
	bl sub_0800A444
	adds r5, r0, #0
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A4A8
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_0800E9D8
	bl _08011EC6
_080130E0:
	bl sub_0800A444
	adds r5, r0, #0
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A4A8
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_0800ECFC
	bl _08011EC6
_080130FC:
	bl sub_0800A444
	adds r5, r0, #0
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A4A8
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_0800ED08
	bl _08011EC6
_08013118:
	bl sub_0800A444
	adds r5, r0, #0
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_0800EED4
	bl _08011EC6
_08013134:
	bl sub_0800EF74
	bl _08011EC6
_0801313C:
	ldr r0, _08013148 @ =0x0200C4FC
	bl sub_0800A474
	bl _08011EC6
	.align 2, 0
_08013148: .4byte 0x0200C4FC
_0801314C:
	ldr r0, _0801315C @ =0x0200C1A0
	movs r4, #0xe3
	lsls r4, r4, #2
	adds r0, r0, r4
	ldrb r0, [r0]
	bl _08012380
	.align 2, 0
_0801315C: .4byte 0x0200C1A0
_08013160:
	ldr r0, _0801316C @ =0x0200C52D
	bl sub_0800A474
	bl _08011EC6
	.align 2, 0
_0801316C: .4byte 0x0200C52D
_08013170:
	ldr r0, _0801317C @ =0x0200C55D
	bl sub_0800A474
	bl _08011EC6
	.align 2, 0
_0801317C: .4byte 0x0200C55D
_08013180:
	ldr r0, _0801318C @ =0x0200C58D
	bl sub_0800A474
	bl _08011EC6
	.align 2, 0
_0801318C: .4byte 0x0200C58D
_08013190:
	bl sub_0800F090
	bl _08011EC6
_08013198:
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	adds r1, r4, #0
	bl sub_0800F254
	bl _08011EC6
_080131AC:
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	adds r1, r4, #0
	bl sub_0800F43C
	bl _08011EC6
_080131C0:
	bl sub_0800A444
	bl sub_0800FCEC
	bl _08012380
_080131CC:
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	adds r1, r4, #0
	bl sub_0800FD0C
	bl sub_0800A474
	bl _08011EC6
_080131E4:
	bl sub_0800A4A8
	adds r4, r0, #0
	bl sub_0800A444
	adds r1, r4, #0
	bl sub_0800FD50
	bl _08012380
_080131F8:
	bl sub_0800A4A8
	bl sub_0800FDB0
	bl _08012380
_08013204:
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	adds r1, r4, #0
	bl sub_0800FE04
	bl _08012380
_08013218:
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	adds r1, r4, #0
	bl sub_0800FE5C
	bl _08012380
_0801322C:
	bl sub_0800A444
	adds r5, r0, #0
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_0800FE68
	bl _08011EC6
_08013248:
	bl sub_0800A444
	adds r5, r0, #0
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_0800FE90
	bl _08011EC6
_08013264:
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	adds r1, r4, #0
	bl sub_0800FEC0
	bl _08012380
_08013278:
	bl sub_0800A444
	adds r5, r0, #0
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_0800FED0
	bl _08011EC6
_08013294:
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	adds r1, r4, #0
	bl sub_0800FEEC
	bl _08012380
_080132A8:
	bl sub_0800A444
	adds r5, r0, #0
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_0800FF00
	bl _08011EC6
_080132C4:
	bl sub_0800FF1C
	bl _08011EC6
_080132CC:
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	adds r1, r4, #0
	bl sub_0800FF44
	bl _08012380
_080132E0:
	bl sub_0800A444
	adds r5, r0, #0
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_0800FF58
	bl _08011EC6
_080132FC:
	bl sub_0800FF74
	bl _08011EC6
_08013304:
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	adds r1, r4, #0
	bl sub_0800FF9C
	bl _08012380
_08013318:
	bl sub_0800A444
	adds r5, r0, #0
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_0800FFB0
	bl _08011EC6
_08013334:
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	adds r1, r4, #0
	bl sub_0800FFCC
	bl _08012380
_08013348:
	bl sub_0800A444
	adds r5, r0, #0
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_0800FFE0
	bl _08011EC6
_08013364:
	bl sub_0800FFFC
	bl _08011EC6
_0801336C:
	bl sub_0800A444
	bl sub_08010014
	bl _08012380
_08013378:
	bl sub_0800A444
	bl sub_08010054
	bl _08012380
_08013384:
	bl sub_0800A444
	bl sub_0801009C
	bl _08012380
_08013390:
	bl sub_0800A444
	bl sub_08011C90
	bl _08012380
_0801339C:
	bl sub_0800A444
	bl sub_08011CA4
	bl sub_0800A474
	bl _08011EC6
_080133AC:
	bl sub_08011CD8
	bl _08012380
_080133B4:
	bl sub_0800A444
	bl sub_08011CF4
	bl _08011EC6
_080133C0:
	bl sub_080100F0
	bl _08012380
_080133C8:
	bl sub_0800A444
	bl sub_08010100
	bl _08011EC6
_080133D4:
	bl sub_08010118
	bl sub_0800A474
	bl _08011EC6
_080133E0:
	bl sub_0800A4A8
	bl sub_08010120
	bl _08011EC6
_080133EC:
	bl sub_08010154
	bl sub_0800A474
	bl _08011EC6
_080133F8:
	bl sub_0800A4A8
	bl sub_0801015C
	bl _08011EC6
_08013404:
	bl sub_0800A444
	bl sub_08010170
	bl _08012380
_08013410:
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	adds r1, r4, #0
	bl sub_08010180
	bl _08011EC6
_08013424:
	bl sub_08010190
	bl _08012380
_0801342C:
	bl sub_0800A444
	bl sub_0801019C
	bl _08011EC6
_08013438:
	bl sub_0800A444
	bl sub_080101C0
	bl _08011EC6
_08013444:
	bl sub_08010F30
	bl _08012380
_0801344C:
	bl sub_0800A444
	bl sub_08010F64
	bl _08011EC6
_08013458:
	bl sub_0800A444
	bl sub_08010FD8
	bl _08011EC6
_08013464:
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	adds r1, r4, #0
	bl sub_08010FE4
	bl _08011EC6
_08013478:
	bl sub_0800A444
	bl sub_08011058
	bl _08011EC6
_08013484:
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	adds r1, r4, #0
	bl sub_080110DC
	bl _08011EC6
_08013498:
	bl sub_0800A444
	bl sub_080110FC
	bl _08011EC6
_080134A4:
	bl sub_08011138
	bl _08011EC6
_080134AC:
	bl sub_0800A444
	bl sub_08011178
	bl _08011EC6
_080134B8:
	bl sub_0800A444
	bl sub_08011194
	bl _08012380
_080134C4:
	bl sub_0800A444
	bl sub_080111A8
	bl _08011EC6
_080134D0:
	bl sub_0800A444
	bl sub_08011234
	bl _08011EC6
_080134DC:
	bl sub_0801125C
	bl _08011EC6
_080134E4:
	bl sub_08011288
	bl _08011EC6
_080134EC:
	bl sub_080112C0
	bl _08012380
_080134F4:
	bl sub_080112D4
	bl _08012380
_080134FC:
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	adds r1, r4, #0
	bl sub_08011438
	bl _08011EC6
_08013510:
	bl sub_0800A444
	bl sub_0800FB18
	bl _08011EC6
_0801351C:
	bl sub_0800FB24
	bl _08012380
_08013524:
	bl sub_0800A444
	bl sub_0800FB30
	bl _08011EC6
_08013530:
	bl sub_0800A444
	bl sub_08013AD8
	bl _08012380
_0801353C:
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	adds r1, r4, #0
	bl sub_08013BB4
	bl _08012380
_08013550:
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	adds r1, r4, #0
	bl sub_08013EE8
	bl _08011EC6
_08013564:
	movs r0, #0
	bl sub_08013F38
	bl _08011EC6
_0801356E:
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A4A8
	adds r1, r4, #0
	bl sub_08013F74
	bl sub_0800A474
	bl _08011EC6
_08013586:
	bl sub_08013FAC
	bl _08011EC6
_0801358E:
	bl sub_0800A444
	adds r5, r0, #0
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_08013FC0
	bl _08011EC6
_080135AA:
	bl sub_08013FF0
	bl _08012380
_080135B2:
	bl sub_08014030
	bl _08011EC6
_080135BA:
	bl sub_0800A4A8
	adds r4, r0, #0
	bl sub_0800A444
	adds r1, r4, #0
	bl sub_08014058
	bl _08011EC6
_080135CE:
	bl sub_0800A4A8
	adds r4, r0, #0
	bl sub_0800A444
	adds r1, r4, #0
	bl sub_08014068
	bl _08011EC6
_080135E2:
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	adds r1, r4, #0
	bl sub_08014088
	bl _08011EC6
_080135F6:
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	adds r1, r4, #0
	bl sub_08014098
	bl _08011EC6
_0801360A:
	bl sub_0800A444
	mov r8, r0
	bl sub_0800A4A8
	adds r5, r0, #0
	bl sub_0800A444
	mov sb, r0
	bl sub_0800A444
	adds r6, r0, #0
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	str r5, [sp]
	mov r1, r8
	str r1, [sp, #4]
	adds r1, r4, #0
	adds r2, r6, #0
	mov r3, sb
	bl sub_080140AC
	bl _08012380
_08013640:
	bl sub_0800A444
	bl sub_080142D0
	bl _08011EC6
_0801364C:
	bl sub_0800A4A8
	bl sub_0800F788
	bl _08011EC6
_08013658:
	bl sub_0800A444
	adds r6, r0, #0
	bl sub_0800A444
	mov r8, r0
	bl sub_0800A444
	adds r5, r0, #0
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A4A8
	str r6, [sp]
	adds r1, r4, #0
	adds r2, r5, #0
	mov r3, r8
	bl sub_0800F800
	bl _08012380
_08013684:
	bl sub_0800F9A8
	bl _08012380
_0801368C:
	bl sub_0800A4A8
	bl sub_0800F9C0
	bl _08012380
_08013698:
	bl sub_0800A4A8
	bl sub_0800F9D4
	bl _08011EC6
_080136A4:
	bl sub_0800A444
	bl sub_0800FA20
	bl _08012380
_080136B0:
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	adds r1, r4, #0
	bl sub_080102C8
	bl _08011EC6
_080136C4:
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	adds r1, r4, #0
	bl sub_08010330
	bl _08012380
_080136D8:
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	adds r1, r4, #0
	bl sub_08010348
	bl _08012380
_080136EC:
	bl sub_0800A444
	adds r5, r0, #0
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_08010360
	bl _08012380
_08013708:
	bl sub_0800A444
	adds r5, r0, #0
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080103A8
	bl _08012380
_08013724:
	bl sub_080103F0
	bl _08012380
_0801372C:
	bl sub_0800A444
	bl sub_08010400
	bl sub_0800A474
	bl _08011EC6
_0801373C:
	bl sub_0800A444
	adds r6, r0, #0
	bl sub_0800A444
	adds r5, r0, #0
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	adds r1, r4, #0
	adds r2, r5, #0
	adds r3, r6, #0
	bl sub_08010430
	bl _08011EC6
_08013760:
	bl sub_08010470
	bl _08011EC6
_08013768:
	bl sub_0800A4A8
	mov r8, r0
	bl sub_0800A444
	adds r5, r0, #0
	bl sub_0800A444
	mov sb, r0
	bl sub_0800A444
	adds r6, r0, #0
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	str r5, [sp]
	mov r2, r8
	str r2, [sp, #4]
	adds r1, r4, #0
	adds r2, r6, #0
	mov r3, sb
	bl sub_08010490
	bl _08011EC6
_0801379E:
	bl sub_0800A444
	bl sub_08010580
	bl _08011EC6
_080137AA:
	bl sub_0800A444
	bl sub_08010738
	bl _08011EC6
_080137B6:
	ldr r4, _080137F0 @ =0x00000C28
	adds r0, r7, r4
	ldr r2, [r0]
	subs r2, #1
	ldr r0, _080137F4 @ =0x084B5FA0
	subs r2, r2, r0
	add r4, sp, #0x88
	ldr r1, _080137F8 @ =0x0831BABC
	str r2, [sp]
	adds r0, r4, #0
	adds r2, r3, #0
	bl sub_0803DFE0
	adds r0, r4, #0
	bl sub_080050A8

	non_word_aligned_thumb_func_start sub_080137D6
sub_080137D6: @ 0x080137D6
	ldr r0, _080137FC @ =0x0200C1A0
	ldr r1, _08013800 @ =0x00002344
	adds r0, r0, r1
	movs r1, #2
	strb r1, [r0]
	ldr r0, _08013804 @ =0x0831AF54
	bl sub_080117CC

	non_word_aligned_thumb_func_start sub_080137E6
sub_080137E6: @ 0x080137E6
	ldr r2, _080137F0 @ =0x00000C28
	adds r1, r7, r2
	str r0, [r1]
	bl _08011EC6
	.align 2, 0
_080137F0: .4byte 0x00000C28
_080137F4: .4byte 0x084B5FA0
_080137F8: .4byte 0x0831BABC
_080137FC: .4byte 0x0200C1A0
_08013800: .4byte 0x00002344
_08013804: .4byte 0x0831AF54

	thumb_func_start sub_08013808
sub_08013808: @ 0x08013808
	push {lr}
	bl sub_08011E64
	bl sub_08011EB8
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08013818
sub_08013818: @ 0x08013818
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	cmp r6, #0
	beq _080138B0
	cmp r6, #3
	beq _080138B0
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0800FEC0
	cmp r0, #0
	bne _08013848
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0800FF9C
	cmp r0, #1
	bne _08013844
	movs r0, #0
	b _080138B2
_08013844:
	movs r0, #1
	b _080138B2
_08013848:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0800FE5C
	cmp r0, #0
	beq _080138AC
	subs r0, r6, #1
	cmp r0, #1
	bhi _08013868
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0800FEEC
	cmp r0, #1
	beq _080138AC
	b _080138B0
_08013868:
	cmp r6, #6
	bne _08013890
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0800FF44
	cmp r0, #1
	beq _080138AC
	movs r0, #0x19
	bl sub_08010170
	cmp r0, #0
	bne _080138B0
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0800FE04
	cmp r0, #0
	bne _080138AC
	b _080138B0
_08013890:
	subs r0, r6, #4
	cmp r0, #1
	bhi _080138B0
	movs r0, #0x20
	bl sub_08010170
	cmp r0, #0
	bne _080138B0
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0800FE04
	cmp r0, #0
	beq _080138B0
_080138AC:
	movs r0, #2
	b _080138B2
_080138B0:
	movs r0, #3
_080138B2:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_080138B8
sub_080138B8: @ 0x080138B8
	push {r4, r5, r6, lr}
	sub sp, #0x100
	adds r5, r1, #0
	adds r6, r2, #0
	bl sub_08013818
	cmp r0, #3
	beq _080138E2
	ldr r4, _080138EC @ =0x0831BAEC
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_0800FD0C
	adds r2, r0, #0
	mov r0, sp
	adds r1, r4, #0
	bl sub_0803DFE0
	mov r0, sp
	bl sub_080050A8
_080138E2:
	add sp, #0x100
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080138EC: .4byte 0x0831BAEC

	thumb_func_start sub_080138F0
sub_080138F0: @ 0x080138F0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x100
	adds r7, r0, #0
	adds r5, r1, #0
	movs r0, #0
	mov sb, r0
	cmp r7, #5
	bne _0801390A
	movs r0, #1
	mov sb, r0
_0801390A:
	cmp r7, #3
	beq _08013994
	adds r0, r5, #0
	bl sub_0800FCEC
	mov r8, r0
	movs r0, #0
	cmp r7, #0
	beq _08013920
	cmp r7, #3
	bne _08013922
_08013920:
	movs r0, #1
_08013922:
	cmp r0, #0
	bne _0801392C
	movs r0, #3
	rsbs r0, r0, #0
	add r8, r0
_0801392C:
	mov r0, sb
	cmp r0, #0
	beq _08013938
	adds r0, r5, #0
	adds r0, #0x24
	b _0801393A
_08013938:
	adds r0, r5, #5
_0801393A:
	bl sub_08010170
	adds r6, r0, #0
	adds r4, r6, #0
	b _08013960
_08013944:
	adds r4, #1
	cmp r4, r8
	blo _0801394C
	movs r4, #0
_0801394C:
	cmp r4, r6
	bne _08013960
	mov r0, sp
	ldr r1, _08013984 @ =0x0831BAFC
	adds r2, r5, #0
	bl sub_0803DFE0
	mov r0, sp
	bl sub_080050A8
_08013960:
	adds r0, r7, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_08013818
	cmp r0, #3
	bne _08013944
	cmp r4, r6
	beq _08013994
	mov r0, sb
	cmp r0, #0
	beq _08013988
	adds r0, r5, #0
	adds r0, #0x24
	adds r1, r4, #0
	bl sub_08010180
	b _08013990
	.align 2, 0
_08013984: .4byte 0x0831BAFC
_08013988:
	adds r0, r5, #5
	adds r1, r4, #0
	bl sub_08010180
_08013990:
	movs r0, #1
	b _08013996
_08013994:
	movs r0, #0
_08013996:
	add sp, #0x100
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_080139A4
sub_080139A4: @ 0x080139A4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r3, r0, #0
	movs r0, #0
	strb r0, [r3]
	movs r7, #0
	adds r2, r3, #1
	adds r4, r1, #0
_080139BA:
	adds r1, r2, r7
	ldm r4!, {r0}
	strb r0, [r1]
	adds r7, #1
	cmp r7, #4
	bls _080139BA
	movs r0, #0
	strb r0, [r3, #6]
	strb r0, [r3, #7]
	strb r0, [r3, #9]
	strb r0, [r3, #0x11]
	ldr r0, _08013ABC @ =0x000005E4
	adds r1, r3, r0
	adds r0, r3, #0
	adds r0, #0x1c
	str r0, [r1]
	movs r2, #0xbd
	lsls r2, r2, #3
	adds r1, r3, r2
	movs r4, #0xb6
	lsls r4, r4, #1
	adds r0, r3, r4
	str r0, [r1]
	ldr r0, _08013AC0 @ =0x000005EC
	adds r1, r3, r0
	movs r2, #0xa5
	lsls r2, r2, #2
	adds r0, r3, r2
	str r0, [r1]
	movs r4, #0xbe
	lsls r4, r4, #3
	adds r1, r3, r4
	movs r2, #0xfd
	lsls r2, r2, #2
	adds r0, r3, r2
	str r0, [r1]
	adds r4, #4
	adds r1, r3, r4
	ldr r2, _08013AC4 @ =0x0000058C
	adds r0, r3, r2
	str r0, [r1]
	movs r7, #0
	movs r4, #0x14
	adds r4, r4, r3
	mov sb, r4
_08013A14:
	lsls r0, r7, #2
	ldr r2, _08013ABC @ =0x000005E4
	adds r1, r3, r2
	adds r1, r1, r0
	ldr r4, [r1]
	adds r0, r7, #0
	str r3, [sp, #4]
	bl sub_0800FCEC
	adds r6, r0, #0
	mov r1, sb
	adds r0, r1, r7
	strb r6, [r0]
	movs r5, #0
	adds r2, r7, #1
	mov r8, r2
	ldr r3, [sp, #4]
	cmp r5, r6
	bhs _08013A5A
	movs r2, #3
_08013A3C:
	strb r5, [r4]
	strb r2, [r4, #1]
	adds r0, r7, #0
	adds r1, r5, #0
	str r2, [sp]
	str r3, [sp, #4]
	bl sub_0800FD0C
	str r0, [r4, #4]
	adds r4, #8
	adds r5, #1
	ldr r2, [sp]
	ldr r3, [sp, #4]
	cmp r5, r6
	blo _08013A3C
_08013A5A:
	mov r7, r8
	cmp r7, #4
	bls _08013A14
	movs r4, #0xbf
	lsls r4, r4, #3
	adds r0, r3, r4
	movs r2, #0
	strb r2, [r0]
	ldr r1, _08013AC8 @ =0x000005F9
	adds r0, r3, r1
	strb r2, [r0]
	adds r4, #2
	adds r0, r3, r4
	strb r2, [r0]
	ldr r0, _08013ACC @ =0x000005FC
	adds r1, r3, r0
	ldr r0, _08013AD0 @ =0x0831BB30
	str r0, [r1]
	movs r1, #0xc0
	lsls r1, r1, #3
	adds r0, r3, r1
	movs r1, #1
	strb r1, [r0]
	adds r4, #7
	adds r0, r3, r4
	strb r2, [r0]
	adds r4, #1
	adds r0, r3, r4
	strb r1, [r0]
	adds r4, #1
	adds r0, r3, r4
	strb r1, [r0]
	adds r4, #1
	adds r0, r3, r4
	strb r2, [r0]
	adds r4, #1
	adds r0, r3, r4
	strb r1, [r0]
	ldr r1, _08013AD4 @ =0x00000606
	adds r0, r3, r1
	strb r2, [r0]
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08013ABC: .4byte 0x000005E4
_08013AC0: .4byte 0x000005EC
_08013AC4: .4byte 0x0000058C
_08013AC8: .4byte 0x000005F9
_08013ACC: .4byte 0x000005FC
_08013AD0: .4byte 0x0831BB30
_08013AD4: .4byte 0x00000606

	thumb_func_start sub_08013AD8
sub_08013AD8: @ 0x08013AD8
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r5, #0
	movs r4, #0
_08013AE0:
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_080138F0
	cmp r0, #0
	beq _08013AEE
	movs r5, #1
_08013AEE:
	adds r4, #1
	cmp r4, #4
	bls _08013AE0
	adds r0, r5, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_08013AFC
sub_08013AFC: @ 0x08013AFC
	push {r4, lr}
	lsls r3, r1, #2
	ldr r4, _08013B28 @ =0x000005E4
	adds r2, r0, r4
	adds r2, r2, r3
	ldr r2, [r2]
	adds r0, #0x14
	adds r0, r0, r1
	ldrb r3, [r0]
	lsls r1, r3, #3
	adds r2, r2, r1
	movs r1, #0
	strb r1, [r2]
	movs r1, #4
	strb r1, [r2, #1]
	ldr r1, _08013B2C @ =0x0831BB38
	str r1, [r2, #4]
	adds r3, #1
	strb r3, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08013B28: .4byte 0x000005E4
_08013B2C: .4byte 0x0831BB38

	thumb_func_start sub_08013B30
sub_08013B30: @ 0x08013B30
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov sb, r0
	adds r0, r1, #0
	adds r7, r2, #0
	mov r8, r3
	adds r1, r7, #0
	mov r2, r8
	bl sub_08013818
	adds r2, r0, #0
	cmp r2, #0
	beq _08013BA4
	lsls r1, r7, #2
	ldr r0, _08013BB0 @ =0x000005E4
	add r0, sb
	adds r0, r0, r1
	ldr r4, [r0]
	mov r6, sb
	adds r6, #0x14
	adds r6, r6, r7
	ldrb r5, [r6]
	lsls r0, r5, #3
	adds r4, r4, r0
	mov r0, r8
	strb r0, [r4]
	strb r2, [r4, #1]
	adds r0, r7, #0
	mov r1, r8
	bl sub_0800FD0C
	str r0, [r4, #4]
	adds r5, #1
	strb r5, [r6]
	cmp r7, #0
	bne _08013B8A
	mov r0, r8
	cmp r0, #0x1e
	bne _08013B8A
	mov r0, sb
	movs r1, #0
	bl sub_08013AFC
_08013B8A:
	cmp r7, #3
	bne _08013BA4
	mov r0, r8
	cmp r0, #0x1b
	bne _08013BA4
	mov r0, sb
	movs r1, #3
	bl sub_08013AFC
	mov r0, sb
	movs r1, #3
	bl sub_08013AFC
_08013BA4:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08013BB0: .4byte 0x000005E4

	thumb_func_start sub_08013BB4
sub_08013BB4: @ 0x08013BB4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r4, _08013D08 @ =0xFFFFF9A8
	add sp, r4
	adds r7, r0, #0
	movs r0, #0xc8
	lsls r0, r0, #3
	add r0, sp
	str r1, [r0]
	ldr r0, _08013D0C @ =0x0200C1A0
	ldr r1, _08013D10 @ =0x00002344
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #2
	eors r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	mov sl, r0
	cmp r7, #3
	bne _08013BE8
	movs r2, #0
	mov sl, r2
_08013BE8:
	mov r0, sl
	cmp r0, #0
	beq _08013BF6
	adds r0, r7, #0
	adds r0, #0x14
	bl sub_0800F9E8
_08013BF6:
	bl sub_08011C70
	movs r1, #0
	ldr r2, _08013D14 @ =0x00000644
	add r2, sp
	str r1, [r2]
	cmp r7, #3
	bne _08013C0A
	movs r0, #1
	str r0, [r2]
_08013C0A:
	movs r1, #0
	movs r2, #0xc9
	lsls r2, r2, #3
	add r2, sp
	str r1, [r2]
	cmp r7, #5
	bne _08013C1C
	movs r0, #1
	str r0, [r2]
_08013C1C:
	movs r1, #0
	ldr r2, _08013D18 @ =0x0000064C
	add r2, sp
	str r1, [r2]
	ldr r0, _08013D14 @ =0x00000644
	add r0, sp
	ldr r0, [r0]
	cmp r0, #0
	bne _08013C3A
	movs r1, #0xc9
	lsls r1, r1, #3
	add r1, sp
	ldr r1, [r1]
	cmp r1, #0
	beq _08013C42
_08013C3A:
	movs r2, #1
	ldr r0, _08013D18 @ =0x0000064C
	add r0, sp
	str r2, [r0]
_08013C42:
	movs r1, #3
	eors r1, r7
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	movs r1, #0xca
	lsls r1, r1, #3
	add r1, sp
	str r0, [r1]
	movs r0, #0
	cmp r7, #0
	beq _08013C5E
	cmp r7, #3
	bne _08013C60
_08013C5E:
	movs r0, #1
_08013C60:
	ldr r2, _08013D1C @ =0x00000654
	add r2, sp
	str r0, [r2]
	mov r0, sp
	movs r1, #0
	strb r1, [r0]
	strb r1, [r0, #6]
	strb r1, [r0, #7]
	strb r1, [r0, #9]
	strb r1, [r0, #0x11]
	mov r1, sp
	movs r2, #0
	movs r0, #0xb7
	strh r0, [r1, #0x12]
	mov r0, sp
	strb r2, [r0, #6]
	ldr r1, _08013D20 @ =0x000005E4
	add r1, sp
	add r0, sp, #0x1c
	str r0, [r1]
	movs r1, #0xbd
	lsls r1, r1, #3
	add r1, sp
	add r0, sp, #0x16c
	str r0, [r1]
	ldr r1, _08013D24 @ =0x000005EC
	add r1, sp
	add r0, sp, #0x294
	str r0, [r1]
	movs r1, #0xbe
	lsls r1, r1, #3
	add r1, sp
	add r0, sp, #0x3f4
	str r0, [r1]
	ldr r1, _08013D28 @ =0x000005F4
	add r1, sp
	ldr r0, _08013D2C @ =0x0000058C
	add r0, sp
	str r0, [r1]
	movs r6, #0
	add r0, sp, #0x14
	mov r8, r0
	movs r1, #1
	add r1, sp
	mov sb, r1
_08013CBA:
	adds r0, r6, #0
	bl sub_0800FCEC
	adds r5, r0, #0
	ldr r2, _08013D1C @ =0x00000654
	add r2, sp
	ldr r2, [r2]
	cmp r2, #0
	bne _08013CCE
	subs r5, #3
_08013CCE:
	mov r0, r8
	adds r1, r0, r6
	movs r0, #0
	strb r0, [r1]
	movs r4, #0
	cmp r4, r5
	bhs _08013CEE
_08013CDC:
	mov r0, sp
	adds r1, r7, #0
	adds r2, r6, #0
	adds r3, r4, #0
	bl sub_08013B30
	adds r4, #1
	cmp r4, r5
	blo _08013CDC
_08013CEE:
	adds r6, #1
	cmp r6, #4
	bls _08013CBA
	movs r6, #0
_08013CF6:
	ldr r1, _08013D14 @ =0x00000644
	add r1, sp
	ldr r1, [r1]
	cmp r1, #0
	beq _08013D30
	adds r0, r6, #0
	adds r0, #0xa
	b _08013D44
	.align 2, 0
_08013D08: .4byte 0xFFFFF9A8
_08013D0C: .4byte 0x0200C1A0
_08013D10: .4byte 0x00002344
_08013D14: .4byte 0x00000644
_08013D18: .4byte 0x0000064C
_08013D1C: .4byte 0x00000654
_08013D20: .4byte 0x000005E4
_08013D24: .4byte 0x000005EC
_08013D28: .4byte 0x000005F4
_08013D2C: .4byte 0x0000058C
_08013D30:
	movs r2, #0xc9
	lsls r2, r2, #3
	add r2, sp
	ldr r2, [r2]
	cmp r2, #0
	beq _08013D42
	adds r0, r6, #0
	adds r0, #0x24
	b _08013D44
_08013D42:
	adds r0, r6, #5
_08013D44:
	bl sub_08010170
	adds r2, r0, #0
	mov r0, sp
	adds r1, r6, #0
	bl sub_08008D0C
	mov r2, sb
	adds r1, r2, r6
	strb r0, [r1]
	adds r6, #1
	cmp r6, #4
	bls _08013CF6
	movs r1, #0
	ldr r0, _08013D9C @ =0x0200C1A0
	ldr r2, _08013DA0 @ =0x00002344
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r0, #2
	bne _08013D6E
	movs r1, #1
_08013D6E:
	movs r0, #0xbf
	lsls r0, r0, #3
	add r0, sp
	strb r1, [r0]
	movs r1, #0
	cmp r7, #6
	bne _08013D7E
	movs r1, #1
_08013D7E:
	ldr r0, _08013DA4 @ =0x000005F9
	add r0, sp
	strb r1, [r0]
	ldr r0, _08013DA8 @ =0x000005FA
	add r0, sp
	mov r1, sl
	strb r1, [r0]
	ldr r2, _08013DAC @ =0x0000064C
	add r2, sp
	ldr r2, [r2]
	cmp r2, #0
	beq _08013DB0
	bl sub_08010154
	b _08013DB4
	.align 2, 0
_08013D9C: .4byte 0x0200C1A0
_08013DA0: .4byte 0x00002344
_08013DA4: .4byte 0x000005F9
_08013DA8: .4byte 0x000005FA
_08013DAC: .4byte 0x0000064C
_08013DB0:
	bl sub_08010118
_08013DB4:
	ldr r1, _08013E38 @ =0x000005FC
	add r1, sp
	str r0, [r1]
	movs r0, #0xc0
	lsls r0, r0, #3
	add r0, sp
	movs r1, #0xc8
	lsls r1, r1, #3
	add r1, sp
	ldrb r1, [r1]
	strb r1, [r0]
	movs r1, #0
	cmp r7, #3
	bne _08013DD2
	movs r1, #1
_08013DD2:
	ldr r0, _08013E3C @ =0x00000601
	add r0, sp
	strb r1, [r0]
	mov r0, sp
	movs r1, #0
	cmp r7, #2
	beq _08013DE4
	cmp r7, #6
	bne _08013DE6
_08013DE4:
	movs r1, #1
_08013DE6:
	ldr r2, _08013E40 @ =0x00000602
	adds r0, r0, r2
	strb r1, [r0]
	movs r0, #3
	eors r0, r7
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	ldr r0, _08013E44 @ =0x00000603
	add r0, sp
	strb r1, [r0]
	movs r1, #0
	cmp r7, #3
	bne _08013E04
	movs r1, #1
_08013E04:
	ldr r0, _08013E48 @ =0x00000604
	add r0, sp
	strb r1, [r0]
	movs r1, #0
	cmp r7, #6
	bne _08013E12
	movs r1, #1
_08013E12:
	ldr r0, _08013E4C @ =0x00000605
	add r0, sp
	strb r1, [r0]
	ldr r1, _08013E50 @ =0x00000606
	add r1, sp
	movs r0, #1
	strb r0, [r1]
_08013E20:
	mov r0, sp
	bl sub_080090A8
	mov r0, sp
	ldrb r0, [r0, #6]
	cmp r0, #0
	beq _08013E54
	add r0, sp, #0xc
	bl sub_0800F770
	b _08013E20
	.align 2, 0
_08013E38: .4byte 0x000005FC
_08013E3C: .4byte 0x00000601
_08013E40: .4byte 0x00000602
_08013E44: .4byte 0x00000603
_08013E48: .4byte 0x00000604
_08013E4C: .4byte 0x00000605
_08013E50: .4byte 0x00000606
_08013E54:
	mov r0, sp
	ldrb r0, [r0, #0x11]
	cmp r0, #0
	bne _08013E20
	movs r0, #0xca
	lsls r0, r0, #3
	add r0, sp
	ldr r0, [r0]
	cmp r0, #0
	beq _08013EB2
	movs r6, #0
_08013E6A:
	ldr r0, _08013E88 @ =0x0000060C
	add r0, sp
	adds r0, r0, r6
	ldrb r1, [r0]
	ldr r2, _08013E8C @ =0x00000644
	add r2, sp
	ldr r2, [r2]
	cmp r2, #0
	beq _08013E90
	adds r0, r6, #0
	adds r0, #0xa
	bl sub_08010180
	b _08013EAC
	.align 2, 0
_08013E88: .4byte 0x0000060C
_08013E8C: .4byte 0x00000644
_08013E90:
	movs r0, #0xc9
	lsls r0, r0, #3
	add r0, sp
	ldr r0, [r0]
	cmp r0, #0
	beq _08013EA6
	adds r0, r6, #0
	adds r0, #0x24
	bl sub_08010180
	b _08013EAC
_08013EA6:
	adds r0, r6, #5
	bl sub_08010180
_08013EAC:
	adds r6, #1
	cmp r6, #4
	bls _08013E6A
_08013EB2:
	ldr r0, _08013EE0 @ =0x000005FA
	add r0, sp
	ldrb r0, [r0]
	cmp r0, #0
	beq _08013EC0
	bl sub_0800FA04
_08013EC0:
	bl sub_08011E44
	ldr r0, _08013EE4 @ =0x00000607
	add r0, sp
	ldrb r0, [r0]
	movs r3, #0xcb
	lsls r3, r3, #3
	add sp, r3
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08013EE0: .4byte 0x000005FA
_08013EE4: .4byte 0x00000607

	thumb_func_start sub_08013EE8
sub_08013EE8: @ 0x08013EE8
	push {r4, r5, lr}
	sub sp, #0x6c
	adds r4, r0, #0
	adds r5, r1, #0
	bl sub_08011C70
	movs r0, #1
	movs r1, #0
	bl sub_08005DB0
	bl sub_08005AFC
	mov r0, sp
	movs r1, #1
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_080087F8
	bl sub_08011C80
	ldr r5, _08013F34 @ =0x02000008
	movs r0, #0x80
	lsls r0, r0, #1
	adds r4, r0, #0
_08013F18:
	bl sub_08011E9C
	ldrh r0, [r5]
	ands r0, r4
	cmp r0, #0
	bne _08013F18
	bl sub_08011C70
	bl sub_08011E44
	add sp, #0x6c
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08013F34: .4byte 0x02000008

	thumb_func_start sub_08013F38
sub_08013F38: @ 0x08013F38
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #1
	bl sub_080008BC
	cmp r4, #0
	beq _08013F4E
	movs r0, #1
	bl sub_080155BC
	b _08013F5C
_08013F4E:
	bl sub_08011C70
	movs r0, #0
	bl sub_080155BC
	bl sub_08011E44
_08013F5C:
	movs r0, #0
	bl sub_080008BC
	ldr r0, _08013F70 @ =0x02000038
	ldrh r0, [r0]
	bl sub_0803DF70
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08013F70: .4byte 0x02000038

	thumb_func_start sub_08013F74
sub_08013F74: @ 0x08013F74
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	cmp r5, #0xa
	bls _08013F84
	ldr r0, _08013FA4 @ =0x0831BB3C
	bl sub_080050A8
_08013F84:
	bl sub_08011C70
	ldr r4, _08013FA8 @ =0x0200E9AC
	adds r0, r4, #0
	movs r1, #0x16
	bl sub_08000D68
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_08015438
	adds r0, r4, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08013FA4: .4byte 0x0831BB3C
_08013FA8: .4byte 0x0200E9AC

	thumb_func_start sub_08013FAC
sub_08013FAC: @ 0x08013FAC
	push {lr}
	ldr r0, _08013FBC @ =0x02012AA8
	movs r1, #0x44
	movs r2, #0
	bl sub_08000498
	pop {r0}
	bx r0
	.align 2, 0
_08013FBC: .4byte 0x02012AA8

	thumb_func_start sub_08013FC0
sub_08013FC0: @ 0x08013FC0
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	ldr r7, _08013FE8 @ =0x02012AA8
	cmp r4, #0x1f
	bls _08013FD4
	ldr r0, _08013FEC @ =0x0831BB54
	bl sub_080050A8
_08013FD4:
	adds r0, r4, r7
	strb r5, [r0]
	adds r0, r7, #0
	adds r0, #0x20
	adds r0, r4, r0
	strb r6, [r0]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08013FE8: .4byte 0x02012AA8
_08013FEC: .4byte 0x0831BB54

	thumb_func_start sub_08013FF0
sub_08013FF0: @ 0x08013FF0
	push {r4, r5, lr}
	ldr r4, _0801402C @ =0x02012AA8
	bl sub_08011C70
	movs r0, #0
	bl sub_08010170
	adds r5, r0, #0
	bl sub_08010190
	str r0, [r4, #0x40]
	adds r2, r4, #0
	adds r2, #0x40
	adds r3, r4, #0
	adds r3, #0x20
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0801857C
	adds r4, r0, #0
	bl sub_08011E44
	movs r0, #0
	adds r1, r4, #0
	bl sub_08010180
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0801402C: .4byte 0x02012AA8

	thumb_func_start sub_08014030
sub_08014030: @ 0x08014030
	push {r4, lr}
	ldr r4, _08014050 @ =0x02012AA8
	adds r0, r4, #0
	movs r1, #0xa8
	movs r2, #0
	bl sub_08000498
	movs r0, #0
	ldr r1, _08014054 @ =0x0831BB6C
_08014042:
	stm r4!, {r1}
	adds r0, #1
	cmp r0, #0xf
	bls _08014042
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08014050: .4byte 0x02012AA8
_08014054: .4byte 0x0831BB6C

	thumb_func_start sub_08014058
sub_08014058: @ 0x08014058
	ldr r2, _08014064 @ =0x02012AA8
	lsls r0, r0, #2
	adds r0, r0, r2
	str r1, [r0]
	bx lr
	.align 2, 0
_08014064: .4byte 0x02012AA8

	thumb_func_start sub_08014068
sub_08014068: @ 0x08014068
	push {r4, lr}
	ldr r4, _08014084 @ =0x02012AA8
	lsls r2, r0, #2
	adds r3, r4, #0
	adds r3, #0x40
	adds r2, r2, r3
	str r1, [r2]
	adds r4, #0x80
	adds r0, r0, r4
	movs r1, #1
	strb r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08014084: .4byte 0x02012AA8

	thumb_func_start sub_08014088
sub_08014088: @ 0x08014088
	ldr r2, _08014094 @ =0x02012AA8
	adds r2, #0x90
	adds r0, r0, r2
	strb r1, [r0]
	bx lr
	.align 2, 0
_08014094: .4byte 0x02012AA8

	thumb_func_start sub_08014098
sub_08014098: @ 0x08014098
	ldr r2, _080140A8 @ =0x02012AA8
	adds r3, r2, #0
	adds r3, #0xa0
	str r0, [r3]
	adds r2, #0xa4
	str r1, [r2]
	bx lr
	.align 2, 0
_080140A8: .4byte 0x02012AA8

	thumb_func_start sub_080140AC
sub_080140AC: @ 0x080140AC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x34
	mov sb, r0
	str r1, [sp, #0x1c]
	str r2, [sp, #0x20]
	mov sl, r3
	ldr r5, _08014164 @ =0x02012AA8
	movs r0, #0
	str r0, [sp, #0x24]
	mov r1, sb
	cmp r1, #2
	bne _080140D4
	cmp r3, #7
	bne _080140D4
	movs r2, #1
	str r2, [sp, #0x24]
_080140D4:
	ldr r0, [sp, #0x24]
	cmp r0, #0
	bne _080140DE
	bl sub_08011C70
_080140DE:
	movs r2, #0
	adds r1, r5, #0
	adds r1, #0x80
	str r1, [sp, #0x28]
	movs r0, #0x40
	adds r0, r0, r5
	mov r8, r0
	movs r3, #0
	adds r4, r5, #0
	mov r7, r8
_080140F2:
	ldr r1, [sp, #0x28]
	adds r0, r1, r2
	ldrb r0, [r0]
	lsls r6, r2, #2
	cmp r0, #0
	bne _08014102
	ldr r0, [r4]
	str r0, [r7]
_08014102:
	ldr r0, [r4]
	ldr r1, _08014168 @ =0x0831BB78
	str r2, [sp, #0x2c]
	str r3, [sp, #0x30]
	bl sub_08000D80
	ldr r2, [sp, #0x2c]
	ldr r3, [sp, #0x30]
	cmp r0, #0
	beq _0801411E
	str r3, [r4]
	mov r1, r8
	adds r0, r1, r6
	str r3, [r0]
_0801411E:
	adds r4, #4
	adds r7, #4
	adds r2, #1
	cmp r2, #0xf
	bls _080140F2
	bl sub_08010118
	mov r1, r8
	movs r4, #0
	mov r2, sb
	cmp r2, #0
	bne _0801416C
	ldr r2, [sp, #0x58]
	str r2, [sp]
	str r0, [sp, #4]
	str r5, [sp, #8]
	str r1, [sp, #0xc]
	adds r0, r5, #0
	adds r0, #0x90
	str r0, [sp, #0x10]
	adds r0, #0x10
	ldr r0, [r0]
	str r0, [sp, #0x14]
	adds r0, r5, #0
	adds r0, #0xa4
	ldr r0, [r0]
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x20]
	mov r2, sl
	ldr r3, [sp, #0x54]
	bl sub_0801A924
	b _08014204
	.align 2, 0
_08014164: .4byte 0x02012AA8
_08014168: .4byte 0x0831BB78
_0801416C:
	mov r2, sb
	cmp r2, #1
	bne _0801419E
	ldr r2, [sp, #0x58]
	str r2, [sp]
	str r0, [sp, #4]
	str r5, [sp, #8]
	str r1, [sp, #0xc]
	adds r0, r5, #0
	adds r0, #0x90
	str r0, [sp, #0x10]
	adds r0, #0x10
	ldr r0, [r0]
	str r0, [sp, #0x14]
	adds r0, r5, #0
	adds r0, #0xa4
	ldr r0, [r0]
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x20]
	mov r2, sl
	ldr r3, [sp, #0x54]
	bl sub_0801A990
	b _08014204
_0801419E:
	mov r2, sb
	cmp r2, #2
	bne _080141D2
	ldr r2, [sp, #0x58]
	str r2, [sp]
	str r0, [sp, #4]
	str r5, [sp, #8]
	str r1, [sp, #0xc]
	adds r0, r5, #0
	adds r0, #0x90
	str r0, [sp, #0x10]
	adds r0, #0x10
	ldr r0, [r0]
	str r0, [sp, #0x14]
	adds r0, r5, #0
	adds r0, #0xa4
	ldr r0, [r0]
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x20]
	mov r2, sl
	ldr r3, [sp, #0x54]
	bl sub_0801B114
	adds r4, r0, #0
	b _08014204
_080141D2:
	mov r1, sb
	cmp r1, #3
	bne _08014204
	ldr r2, [sp, #0x58]
	str r2, [sp]
	str r0, [sp, #4]
	str r5, [sp, #8]
	mov r0, r8
	str r0, [sp, #0xc]
	adds r0, r5, #0
	adds r0, #0x90
	str r0, [sp, #0x10]
	adds r0, #0x10
	ldr r0, [r0]
	str r0, [sp, #0x14]
	adds r0, r5, #0
	adds r0, #0xa4
	ldr r0, [r0]
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x20]
	mov r2, sl
	ldr r3, [sp, #0x54]
	bl sub_0801B6CC
_08014204:
	ldr r1, [sp, #0x24]
	cmp r1, #0
	bne _0801420E
	bl sub_08011E44
_0801420E:
	adds r0, r4, #0
	add sp, #0x34
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08014220
sub_08014220: @ 0x08014220
	push {r4, r5, r6, r7, lr}
	ldr r7, _080142A0 @ =0x00004AB6
	ldr r0, _080142A4 @ =0x06009600
	ldr r2, _080142A8 @ =0x30303030
	movs r1, #0x40
	bl sub_080004B8
	ldr r0, _080142AC @ =0x0600E800
	movs r1, #0x80
	lsls r1, r1, #4
	ldr r2, _080142B0 @ =0x02580258
	bl sub_080004B8
	ldr r0, _080142B4 @ =0x05000060
	strh r7, [r0]
	ldr r1, _080142B8 @ =0x0400000C
	movs r2, #0xec
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _080142BC @ =0x04000018
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	bl sub_0803D380
	movs r2, #0x80
	lsls r2, r2, #0x13
	movs r0, #0x80
	lsls r0, r0, #3
	ldrh r1, [r2]
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _080142C0 @ =0x04000050
	ldr r2, _080142C4 @ =0x00003F44
	adds r0, r2, #0
	strh r0, [r1]
	movs r4, #0
	movs r6, #0x10
	ldr r5, _080142C8 @ =0x04000052
_08014272:
	lsrs r1, r4, #2
	subs r0, r6, r1
	lsls r0, r0, #8
	orrs r0, r1
	strh r0, [r5]
	bl sub_0803D380
	adds r4, #1
	cmp r4, #0x40
	bls _08014272
	ldr r1, _080142C0 @ =0x04000050
	ldr r2, _080142CC @ =0x00003F3F
	adds r0, r2, #0
	strh r0, [r1]
	movs r0, #0xa0
	lsls r0, r0, #0x13
	strh r7, [r0]
	subs r1, #0x50
	movs r0, #0
	strh r0, [r1]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080142A0: .4byte 0x00004AB6
_080142A4: .4byte 0x06009600
_080142A8: .4byte 0x30303030
_080142AC: .4byte 0x0600E800
_080142B0: .4byte 0x02580258
_080142B4: .4byte 0x05000060
_080142B8: .4byte 0x0400000C
_080142BC: .4byte 0x04000018
_080142C0: .4byte 0x04000050
_080142C4: .4byte 0x00003F44
_080142C8: .4byte 0x04000052
_080142CC: .4byte 0x00003F3F

	thumb_func_start sub_080142D0
sub_080142D0: @ 0x080142D0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0800EF74
	bl sub_08014220
	adds r0, r4, #0
	bl sub_0801D8CC
	bl sub_0800A0F0
	bl sub_08011E44
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080142F0
sub_080142F0: @ 0x080142F0
	push {r4, r5, r6, lr}
	sub sp, #8
	bl sub_08000B84
	bl sub_08009B94
	movs r0, #1
	movs r1, #1
	movs r2, #0x1c
	movs r3, #0x12
	bl sub_08009C44
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #5
	movs r1, #5
	movs r2, #0x14
	movs r3, #0xa
	bl sub_08009C50
	movs r0, #3
	bl sub_08009D14
	ldr r2, _08014390 @ =0x08324E50
	movs r0, #6
	movs r1, #6
	bl sub_08009D4C
	movs r0, #0
	bl sub_08009D14
	ldr r2, _08014394 @ =0x08324E5C
	movs r0, #6
	movs r1, #8
	bl sub_08009D4C
	bl sub_08009C04
	movs r4, #0
	movs r5, #0
	movs r6, #0
_08014344:
	bl sub_08009BD0
	bl sub_08000BC0
	movs r0, #0
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_08009EDC
	adds r4, #2
	adds r5, #1
	cmp r4, #0xe0
	ble _08014362
	movs r4, #0
	movs r5, #0
_08014362:
	adds r0, r6, #0
	adds r6, #1
	bl sub_08009F50
	adds r2, r0, #0
	adds r2, #8
	movs r0, #1
	movs r1, #8
	bl sub_08009F18
	ldr r0, _08014398 @ =0x02000020
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08014344
	bl sub_08009BF4
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08014390: .4byte 0x08324E50
_08014394: .4byte 0x08324E5C
_08014398: .4byte 0x02000020

	thumb_func_start sub_0801439C
sub_0801439C: @ 0x0801439C
	push {r4, lr}
	sub sp, #0x54
	bl sub_08000B84
	bl sub_08009B94
	bl sub_08009C38
	movs r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	movs r0, #5
	movs r1, #5
	movs r2, #0x14
	movs r3, #0xa
	bl sub_08009C50
	movs r0, #3
	bl sub_08009D14
	ldr r2, _08014448 @ =0x08324E6C
	movs r0, #6
	movs r1, #6
	bl sub_08009D4C
	movs r0, #0
	bl sub_08009D14
	ldr r2, _0801444C @ =0x08324E78
	movs r0, #6
	movs r1, #8
	bl sub_08009D4C
	ldr r2, _08014450 @ =0x08324E5C
	movs r0, #6
	movs r1, #0xa
	bl sub_08009D4C
	bl sub_08009C04
	ldr r4, _08014454 @ =0x02000020
_080143EE:
	bl sub_08009BD0
	bl sub_08000BC0
	ldrh r1, [r4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08014430
	movs r0, #6
	movs r1, #1
	movs r2, #0
	str r0, [sp]
	str r1, [sp, #4]
	str r2, [sp, #8]
	add r0, sp, #0xc
	movs r1, #3
	movs r2, #7
	movs r3, #0x18
	bl sub_08009C7C
	movs r0, #1
	bl sub_08009CB0
	movs r0, #0x1e
	bl sub_08000B68
	add r0, sp, #0xc
	bl sub_08009CA4
	movs r0, #0
	bl sub_08009CB0
_08014430:
	ldrh r1, [r4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080143EE
	bl sub_08009BF4
	add sp, #0x54
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08014448: .4byte 0x08324E6C
_0801444C: .4byte 0x08324E78
_08014450: .4byte 0x08324E5C
_08014454: .4byte 0x02000020

	thumb_func_start sub_08014458
sub_08014458: @ 0x08014458
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	bl sub_08000B84
	bl sub_08009B94
	bl sub_08009C38
	movs r0, #3
	bl sub_08009D14
	ldr r2, _08014560 @ =0x08324E90
	movs r0, #0
	movs r1, #0
	bl sub_08009E44
	movs r0, #2
	bl sub_08009D14
	ldr r2, _08014564 @ =0x08324E5C
	movs r0, #0
	movs r1, #2
	bl sub_08009E44
	movs r0, #1
	bl sub_08009D14
	ldr r2, _08014568 @ =0x08324E9C
	movs r0, #0
	movs r1, #4
	movs r3, #6
	bl sub_08009EA8
	movs r1, #0x20
	movs r0, #0x40
	mov r8, r0
	ldr r0, _0801456C @ =0x05000200
	mov sl, r0
	mov r3, sl
	adds r3, #0x40
	lsls r0, r1, #6
	ldr r5, _08014570 @ =0x06010000
	adds r2, r0, r5
	ldr r6, _08014574 @ =0x08324EA8
	str r2, [sp]
	str r1, [sp, #4]
	adds r0, r6, #0
	movs r1, #0
	movs r2, #0
	bl sub_08009F78
	movs r7, #0xe0
	lsls r7, r7, #0x13
	adds r1, r7, #0
	adds r1, #0x40
	movs r4, #0x81
	lsls r4, r4, #6
	strh r4, [r1]
	ldr r0, _08014578 @ =0x0000C008
	strh r0, [r1, #2]
	mov r0, r8
	strh r0, [r1, #4]
	mov r3, sl
	adds r3, #0x80
	movs r1, #0x60
	mov sb, r1
	movs r0, #0xc0
	lsls r0, r0, #5
	adds r2, r0, r5
	str r2, [sp]
	mov r0, r8
	str r0, [sp, #4]
	adds r0, r6, #0
	movs r1, #0
	movs r2, #1
	bl sub_08009F78
	adds r1, r7, #0
	adds r1, #0x48
	strh r4, [r1]
	ldr r0, _0801457C @ =0xFFFFC040
	strh r0, [r1, #2]
	movs r0, #0xc0
	strh r0, [r1, #4]
	mov r3, sl
	adds r3, #0xc0
	movs r0, #0xa0
	lsls r0, r0, #6
	adds r2, r0, r5
	ldr r0, _08014580 @ =0x08324EB0
	str r2, [sp]
	mov r1, sb
	str r1, [sp, #4]
	movs r1, #1
	movs r2, #0
	bl sub_08009F78
	adds r1, r7, #0
	adds r1, #0x50
	strh r4, [r1]
	ldr r0, _08014584 @ =0xFFFFC078
	strh r0, [r1, #2]
	movs r0, #0xa0
	lsls r0, r0, #1
	strh r0, [r1, #4]
	bl sub_08009C04
	ldr r4, _08014588 @ =0x02000020
	movs r5, #1
_0801453A:
	bl sub_08009BD0
	bl sub_08000BC0
	ldrh r1, [r4]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _0801453A
	bl sub_08009BF4
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08014560: .4byte 0x08324E90
_08014564: .4byte 0x08324E5C
_08014568: .4byte 0x08324E9C
_0801456C: .4byte 0x05000200
_08014570: .4byte 0x06010000
_08014574: .4byte 0x08324EA8
_08014578: .4byte 0x0000C008
_0801457C: .4byte 0xFFFFC040
_08014580: .4byte 0x08324EB0
_08014584: .4byte 0xFFFFC078
_08014588: .4byte 0x02000020

	thumb_func_start sub_0801458C
sub_0801458C: @ 0x0801458C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	ldrb r0, [r6, #0x18]
	lsls r0, r0, #0x1a
	asrs r0, r0, #0x1a
	adds r4, r0, #1
	ldrh r0, [r6, #0x18]
	lsls r0, r0, #0x14
	asrs r0, r0, #0x1a
	adds r7, r0, #1
	ldr r0, [r6, #0x14]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x18
	mov r8, r0
	movs r5, #0
	cmp r5, r8
	bhs _080145F2
_080145B2:
	ldr r0, [r6, #0x10]
	adds r0, r0, r5
	ldrb r0, [r0]
	cmp r0, #0
	bne _080145D4
	movs r0, #1
	bl sub_08009D14
	adds r0, r4, #0
	adds r1, r7, #0
	ldr r2, _080145D0 @ =0x08324EBC
	bl sub_08009D28
	b _080145E6
	.align 2, 0
_080145D0: .4byte 0x08324EBC
_080145D4:
	movs r0, #0
	bl sub_08009D14
	ldr r2, [r6, #0x10]
	adds r2, r2, r5
	adds r0, r4, #0
	adds r1, r7, #0
	bl sub_08009D28
_080145E6:
	adds r4, #1
	adds r0, r5, #2
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, r8
	blo _080145B2
_080145F2:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080145FC
sub_080145FC: @ 0x080145FC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	adds r0, #0x24
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1c
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, [r6, #0x1c]
	adds r7, r0, r1
	ldr r4, [r7]
	ldrb r1, [r7, #4]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	ldrh r0, [r7, #4]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1b
	adds r2, r1, #0
	muls r2, r0, r2
	adds r0, r2, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	movs r5, #0
	cmp r5, r8
	bhs _080146A2
_08014636:
	ldrh r1, [r6, #0x22]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1b
	adds r0, r6, #0
	adds r0, #0x23
	ldrb r2, [r0]
	lsrs r2, r2, #3
	ldrb r0, [r7, #4]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	muls r0, r2, r0
	adds r1, r1, r0
	cmp r5, r1
	bne _08014658
	ldrb r0, [r4, #9]
	lsls r0, r0, #0x1c
	b _0801465C
_08014658:
	ldrb r0, [r4, #9]
	lsls r0, r0, #0x1e
_0801465C:
	lsrs r0, r0, #0x1e
	bl sub_08009D14
	ldrh r1, [r4, #0xa]
	movs r2, #0xe0
	lsls r2, r2, #1
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0xc0
	bne _08014684
	ldr r0, [r4, #8]
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x1b
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1b
	movs r2, #1
	bl sub_08009D94
	b _08014696
_08014684:
	ldr r0, [r4, #8]
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x1b
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1b
	adds r2, r4, #0
	bl sub_08009D4C
_08014696:
	adds r4, #0xc
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, r8
	blo _08014636
_080146A2:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080146AC
sub_080146AC: @ 0x080146AC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	mov r8, r1
	adds r0, #0x24
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1c
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, [r5, #0x1c]
	adds r0, r0, r1
	ldr r3, [r0]
	ldrh r1, [r5, #0x22]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1b
	adds r2, r5, #0
	adds r2, #0x23
	ldrb r2, [r2]
	lsrs r2, r2, #3
	ldrb r0, [r0, #4]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	muls r0, r2, r0
	adds r1, r1, r0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r3, r3, r0
	ldr r0, [r3, #8]
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x1b
	lsls r0, r0, #3
	adds r6, r0, #0
	subs r6, #0xc
	ldrb r0, [r3, #0xa]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1b
	lsls r4, r0, #3
	mov r0, r8
	bl sub_08009F50
	adds r1, r0, #0
	adds r1, r6, r1
	movs r0, #0
	adds r2, r4, #0
	bl sub_08009EDC
	ldr r0, [r5, #0x14]
	lsls r0, r0, #0x19
	lsrs r2, r0, #0x18
	movs r1, #0
	cmp r1, r2
	bhs _0801473E
	ldr r3, [r5, #0x10]
	ldrb r0, [r3]
	ldrb r4, [r5, #0x18]
	ldrh r7, [r5, #0x18]
	cmp r0, #0
	beq _0801473A
_08014728:
	adds r0, r1, #2
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, r2
	bhs _0801473E
	adds r0, r3, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08014728
_0801473A:
	cmp r1, r2
	blo _08014748
_0801473E:
	subs r0, r2, #2
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	ldrb r4, [r5, #0x18]
	ldrh r7, [r5, #0x18]
_08014748:
	lsls r0, r4, #0x1a
	asrs r0, r0, #0x1a
	lsrs r1, r1, #1
	adds r0, r0, r1
	adds r0, #1
	lsls r0, r0, #3
	subs r6, r0, #4
	lsls r0, r7, #0x14
	asrs r0, r0, #0x1a
	lsls r0, r0, #3
	subs r4, r0, #2
	mov r0, r8
	bl sub_08009F50
	adds r2, r0, #0
	adds r2, r4, r2
	movs r0, #1
	adds r1, r6, #0
	bl sub_08009F18
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0801477C
sub_0801477C: @ 0x0801477C
	push {r4, lr}
	sub sp, #8
	ldrb r4, [r0, #0x18]
	lsls r4, r4, #0x1a
	asrs r4, r4, #0x1a
	ldrh r1, [r0, #0x18]
	lsls r1, r1, #0x14
	asrs r1, r1, #0x1a
	ldr r2, [r0, #0x18]
	lsls r2, r2, #0xe
	asrs r2, r2, #0x1a
	ldrb r3, [r0, #0x1a]
	lsls r3, r3, #0x18
	asrs r3, r3, #0x1a
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	adds r0, r4, #0
	bl sub_08009C50
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080147AC
sub_080147AC: @ 0x080147AC
	push {r4, r5, lr}
	sub sp, #8
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #0x1a
	asrs r0, r0, #0x1a
	ldrh r1, [r4, #0xc]
	lsls r1, r1, #0x14
	asrs r1, r1, #0x1a
	ldr r2, [r4, #0xc]
	lsls r2, r2, #0xe
	asrs r2, r2, #0x1a
	ldrb r3, [r4, #0xe]
	lsls r3, r3, #0x18
	asrs r3, r3, #0x1a
	movs r5, #0
	str r5, [sp]
	str r5, [sp, #4]
	bl sub_08009C50
	movs r0, #0
	bl sub_08009D14
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #0x1a
	asrs r0, r0, #0x1a
	adds r0, #1
	ldrh r1, [r4, #0xc]
	lsls r1, r1, #0x14
	asrs r1, r1, #0x1a
	adds r1, #1
	ldr r2, [r4, #8]
	bl sub_08009D4C
	ldrb r0, [r4, #4]
	lsls r0, r0, #0x1a
	asrs r0, r0, #0x1a
	ldrh r1, [r4, #4]
	lsls r1, r1, #0x14
	asrs r1, r1, #0x1a
	ldr r2, [r4, #4]
	lsls r2, r2, #0xe
	asrs r2, r2, #0x1a
	ldrb r3, [r4, #6]
	lsls r3, r3, #0x18
	asrs r3, r3, #0x1a
	str r5, [sp]
	str r5, [sp, #4]
	bl sub_08009C50
	movs r0, #0
	bl sub_08009D14
	ldrb r0, [r4, #4]
	lsls r0, r0, #0x1a
	asrs r0, r0, #0x1a
	adds r0, #1
	ldrh r1, [r4, #4]
	lsls r1, r1, #0x14
	asrs r1, r1, #0x1a
	adds r1, #1
	ldr r2, [r4]
	bl sub_08009D4C
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08014834
sub_08014834: @ 0x08014834
	push {r4, lr}
	sub sp, #8
	adds r1, r0, #0
	adds r1, #0x20
	ldrb r4, [r1]
	lsls r4, r4, #0x1a
	asrs r4, r4, #0x1a
	ldrh r1, [r0, #0x20]
	lsls r1, r1, #0x14
	asrs r1, r1, #0x1a
	ldr r2, [r0, #0x20]
	lsls r2, r2, #0xf
	lsrs r2, r2, #0x1b
	adds r0, #0x22
	ldrb r3, [r0]
	lsls r3, r3, #0x1a
	lsrs r3, r3, #0x1b
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	adds r0, r4, #0
	bl sub_08009C50
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0801486C
sub_0801486C: @ 0x0801486C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r7, r0, #0
	adds r0, r1, #0
	adds r5, r2, #0
	str r3, [sp]
	str r0, [r7]
	ldrb r2, [r7, #4]
	movs r6, #0x40
	rsbs r6, r6, #0
	adds r1, r6, #0
	ands r1, r2
	strb r1, [r7, #4]
	ldrh r1, [r7, #4]
	movs r2, #0xfc
	lsls r2, r2, #4
	mov sl, r2
	mov r2, sl
	orrs r1, r2
	strh r1, [r7, #4]
	bl sub_08009CBC
	adds r0, #2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x3f
	mov sb, r1
	ands r0, r1
	lsls r0, r0, #0xc
	ldr r1, [r7, #4]
	ldr r2, _08014A08 @ =0xFFFC0FFF
	mov r8, r2
	ands r1, r2
	orrs r1, r0
	str r1, [r7, #4]
	ldr r0, [r7]
	bl sub_08009CC8
	lsls r0, r0, #3
	adds r0, #8
	ldrb r2, [r7, #6]
	movs r4, #3
	adds r1, r4, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r7, #6]
	ldr r0, _08014A0C @ =0x087B632C
	str r0, [r7, #8]
	ldrb r2, [r7, #0xc]
	adds r1, r6, #0
	ands r1, r2
	movs r2, #0x13
	orrs r1, r2
	strb r1, [r7, #0xc]
	ldrh r1, [r7, #0xc]
	mov r2, sl
	orrs r1, r2
	strh r1, [r7, #0xc]
	bl sub_08009CBC
	adds r0, #2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r1, sb
	ands r0, r1
	lsls r0, r0, #0xc
	ldr r1, [r7, #0xc]
	mov r2, r8
	ands r1, r2
	orrs r1, r0
	str r1, [r7, #0xc]
	ldr r0, [r7, #8]
	bl sub_08009CC8
	lsls r0, r0, #3
	adds r0, #8
	ldrb r2, [r7, #0xe]
	adds r1, r4, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r7, #0xe]
	ldr r0, [sp]
	str r0, [r7, #0x10]
	str r5, [r7, #0x14]
	adds r5, #2
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	mov r1, sb
	ands r5, r1
	lsls r5, r5, #0xc
	ldr r0, [r7, #0x18]
	mov r2, r8
	ands r0, r2
	orrs r0, r5
	str r0, [r7, #0x18]
	ldrb r0, [r7, #0x1a]
	ands r4, r0
	movs r0, #0x10
	orrs r4, r0
	strb r4, [r7, #0x1a]
	ldr r0, [r7, #0x18]
	lsls r0, r0, #0xe
	asrs r0, r0, #0x1a
	movs r1, #2
	bl sub_0803D350
	ldr r1, [r7, #0x18]
	lsls r1, r1, #0xe
	asrs r1, r1, #0x1b
	adds r1, r1, r0
	movs r2, #0xf
	subs r2, r2, r1
	movs r0, #0x3f
	ands r2, r0
	ldrb r1, [r7, #0x18]
	adds r0, r6, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r7, #0x18]
	ldrh r1, [r7, #0x18]
	ldr r2, _08014A10 @ =0xFFFFF03F
	adds r0, r2, #0
	ands r0, r1
	movs r1, #0x80
	orrs r0, r1
	strh r0, [r7, #0x18]
	ldr r0, _08014A14 @ =0x087B6FDC
	str r0, [r7, #0x1c]
	adds r1, r7, #0
	adds r1, #0x20
	ldrb r0, [r1]
	ands r6, r0
	movs r3, #1
	orrs r6, r3
	strb r6, [r1]
	ldrh r0, [r7, #0x20]
	ands r2, r0
	movs r1, #0xc0
	lsls r1, r1, #1
	adds r0, r1, #0
	orrs r2, r0
	strh r2, [r7, #0x20]
	ldr r0, [r7, #0x20]
	ldr r1, _08014A18 @ =0xFFFE0FFF
	ands r0, r1
	movs r1, #0xe8
	lsls r1, r1, #9
	orrs r0, r1
	str r0, [r7, #0x20]
	adds r2, r7, #0
	adds r2, #0x22
	ldrb r1, [r2]
	movs r0, #0x3f
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x1c
	orrs r0, r1
	strb r0, [r2]
	ldrh r1, [r7, #0x22]
	ldr r0, _08014A1C @ =0xFFFFF83F
	ands r0, r1
	strh r0, [r7, #0x22]
	adds r2, #1
	ldrb r1, [r2]
	movs r0, #7
	ands r0, r1
	strb r0, [r2]
	adds r2, #1
	ldrb r0, [r2]
	orrs r0, r3
	movs r1, #0x1f
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r2]
	adds r1, r7, #0
	adds r1, #0x25
	movs r0, #4
	strb r0, [r1]
	adds r2, #2
	ldrb r1, [r2]
	subs r0, #6
	ands r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	subs r1, #2
	ands r0, r1
	subs r1, #4
	ands r0, r1
	subs r1, #8
	ands r0, r1
	subs r1, #0x10
	ands r0, r1
	strb r0, [r2]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08014A08: .4byte 0xFFFC0FFF
_08014A0C: .4byte 0x087B632C
_08014A10: .4byte 0xFFFFF03F
_08014A14: .4byte 0x087B6FDC
_08014A18: .4byte 0xFFFE0FFF
_08014A1C: .4byte 0xFFFFF83F

	thumb_func_start sub_08014A20
sub_08014A20: @ 0x08014A20
	push {r4, r5, lr}
	adds r5, r2, #0
	cmp r3, #0
	beq _08014A58
	adds r2, r0, r3
	ldr r0, [sp, #0xc]
	cmp r0, #0
	bne _08014A44
	cmp r3, #0
	ble _08014A3C
	cmp r2, r5
	ble _08014A56
	adds r2, r5, #0
	b _08014A56
_08014A3C:
	cmp r2, r1
	bge _08014A56
	adds r2, r1, #0
	b _08014A56
_08014A44:
	rsbs r4, r1, #0
	subs r1, r5, r1
	adds r1, #1
	adds r0, r2, r1
	adds r0, r0, r4
	bl sub_0803D350
	adds r2, r0, #0
	subs r2, r2, r4
_08014A56:
	adds r0, r2, #0
_08014A58:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08014A60
sub_08014A60: @ 0x08014A60
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	adds r6, r0, #0
	str r1, [sp, #4]
	str r2, [sp, #8]
	adds r0, #0x24
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1c
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, [r6, #0x1c]
	adds r7, r0, r1
	movs r0, #0
	mov sb, r0
	ldr r1, [sp, #4]
	cmp r1, #0
	bne _08014A92
	movs r0, #1
	mov sb, r0
_08014A92:
	movs r1, #0
	mov r8, r1
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _08014AA0
	movs r1, #1
	mov r8, r1
_08014AA0:
	ldrh r0, [r6, #0x22]
	lsls r0, r0, #0x15
	lsrs r4, r0, #0x1b
	str r4, [sp, #0xc]
	adds r1, r6, #0
	adds r1, #0x23
	ldrb r0, [r1]
	lsrs r5, r0, #3
	mov sl, r5
	str r1, [sp, #0x10]
	mov r0, sb
	cmp r0, #1
	bne _08014AC0
	mov r1, r8
	cmp r1, #1
	beq _08014B7E
_08014AC0:
	mov r0, sb
	cmp r0, #0
	bne _08014AE6
	ldrb r2, [r7, #4]
	lsls r2, r2, #0x1b
	lsrs r2, r2, #0x1b
	subs r2, #1
	adds r0, r6, #0
	adds r0, #0x24
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0
	ldr r3, [sp, #4]
	bl sub_08014A20
	adds r4, r0, #0
_08014AE6:
	mov r1, r8
	cmp r1, #0
	bne _08014B0C
	ldrh r2, [r7, #4]
	lsls r2, r2, #0x16
	lsrs r2, r2, #0x1b
	subs r2, #1
	adds r0, r6, #0
	adds r0, #0x24
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	str r0, [sp]
	adds r0, r5, #0
	movs r1, #0
	ldr r3, [sp, #8]
	bl sub_08014A20
	adds r5, r0, #0
_08014B0C:
	ldrb r0, [r7, #4]
	lsls r2, r0, #0x1b
	lsrs r0, r2, #0x1b
	muls r0, r5, r0
	adds r0, r4, r0
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, [r7]
	adds r0, r0, r1
	ldrh r1, [r0, #0xa]
	movs r0, #0xe0
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0xc0
	bne _08014B6C
	adds r0, r6, #0
	adds r0, #0x24
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08014B62
	cmp r4, #0
	beq _08014B46
	lsrs r0, r2, #0x1b
	subs r0, #1
	cmp r4, r0
	blo _08014B4C
_08014B46:
	ldr r4, [sp, #0xc]
	movs r1, #1
	mov sb, r1
_08014B4C:
	cmp r5, #0
	beq _08014B5C
	ldrh r0, [r7, #4]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1b
	subs r0, #1
	cmp r5, r0
	blo _08014B72
_08014B5C:
	mov r5, sl
	movs r0, #1
	b _08014B70
_08014B62:
	ldr r1, [sp, #0xc]
	cmp r4, r1
	bne _08014B72
	cmp r5, sl
	bne _08014B72
_08014B6C:
	movs r0, #1
	mov sb, r0
_08014B70:
	mov r8, r0
_08014B72:
	mov r1, sb
	cmp r1, #1
	bne _08014AC0
	mov r0, r8
	cmp r0, #1
	bne _08014AC0
_08014B7E:
	movs r0, #0x1f
	ands r4, r0
	lsls r2, r4, #6
	ldrh r1, [r6, #0x22]
	ldr r0, _08014BB0 @ =0xFFFFF83F
	ands r0, r1
	orrs r0, r2
	strh r0, [r6, #0x22]
	lsls r2, r5, #3
	ldr r0, [sp, #0x10]
	ldrb r1, [r0]
	movs r0, #7
	ands r0, r1
	orrs r0, r2
	ldr r1, [sp, #0x10]
	strb r0, [r1]
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08014BB0: .4byte 0xFFFFF83F

	thumb_func_start sub_08014BB4
sub_08014BB4: @ 0x08014BB4
	push {r4, lr}
	adds r4, r0, #0
	adds r4, #0x26
	ldrb r1, [r4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08014BD6
	movs r0, #1
	movs r1, #0x50
	bl sub_08000634
	ldrb r1, [r4]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4]
_08014BD6:
	ldrb r1, [r4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08014BF2
	movs r0, #1
	movs r1, #0x78
	bl sub_08000634
	ldrb r1, [r4]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4]
_08014BF2:
	ldrb r1, [r4]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08014C0E
	movs r0, #1
	movs r1, #0x79
	bl sub_08000634
	ldrb r1, [r4]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4]
_08014C0E:
	ldrb r1, [r4]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08014C2A
	movs r0, #1
	movs r1, #0x52
	bl sub_08000634
	ldrb r1, [r4]
	movs r0, #9
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4]
_08014C2A:
	ldrb r1, [r4]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08014C46
	movs r0, #1
	movs r1, #0x7b
	bl sub_08000634
	ldrb r1, [r4]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4]
_08014C46:
	ldrb r1, [r4]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08014C62
	movs r0, #1
	movs r1, #0x7c
	bl sub_08000634
	ldrb r1, [r4]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4]
_08014C62:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08014C68
sub_08014C68: @ 0x08014C68
	push {r4, r5, r6, lr}
	mov ip, r0
	adds r6, r1, #0
	mov r1, ip
	adds r1, #0x24
	ldrb r4, [r1]
	lsls r4, r4, #0x1b
	lsrs r2, r4, #0x1c
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	mov r3, ip
	ldr r2, [r3, #0x1c]
	adds r5, r2, r1
	ldrh r2, [r3, #0x22]
	lsls r2, r2, #0x15
	lsrs r2, r2, #0x1b
	mov r1, ip
	adds r1, #0x23
	ldrb r3, [r1]
	lsrs r3, r3, #3
	ldrb r1, [r5, #4]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	muls r1, r3, r1
	adds r2, r2, r1
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	ldr r2, [r5]
	adds r3, r2, r1
	lsrs r4, r4, #0x1c
	ldr r1, _08014CC8 @ =0x02000020
	ldrh r2, [r1]
	movs r1, #1
	ands r1, r2
	cmp r1, #0
	beq _08014CCC
	ldrh r2, [r3, #0xa]
	movs r1, #0xe0
	lsls r1, r1, #1
	ands r1, r2
	cmp r1, #0x40
	bne _08014CCC
	ldrb r0, [r3, #0xb]
	lsls r0, r0, #0x1c
	lsrs r4, r0, #0x1d
	b _08014CD2
	.align 2, 0
_08014CC8: .4byte 0x02000020
_08014CCC:
	cmp r6, #0
	beq _08014D34
	adds r4, r4, r6
_08014CD2:
	mov r0, ip
	adds r0, #0x25
	ldrb r0, [r0]
	subs r0, #1
	cmp r4, r0
	ble _08014CE0
	movs r4, #0
_08014CE0:
	cmp r4, #0
	bge _08014CE6
	adds r4, r0, #0
_08014CE6:
	mov r3, ip
	adds r3, #0x24
	movs r0, #0xf
	ands r4, r0
	lsls r2, r4, #1
	ldrb r1, [r3]
	movs r0, #0x1f
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1c
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	mov r2, ip
	ldr r0, [r2, #0x1c]
	adds r5, r0, r1
	ldrh r1, [r2, #0x22]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1b
	mov r0, ip
	adds r0, #0x23
	ldrb r2, [r0]
	lsrs r2, r2, #3
	ldrb r0, [r5, #4]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	muls r0, r2, r0
	adds r1, r1, r0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, [r5]
	adds r3, r1, r0
	ldrh r0, [r3, #0xa]
	lsls r0, r0, #0x17
	lsrs r0, r0, #0x1d
_08014D34:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08014D3C
sub_08014D3C: @ 0x08014D3C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov sl, r0
	mov sb, r1
	adds r6, r3, #0
	cmp r1, #0
	bne _08014D5A
	movs r7, #3
	movs r0, #0
	str r0, [sp]
	b _08014D60
_08014D5A:
	movs r7, #0
	movs r1, #3
	str r1, [sp]
_08014D60:
	movs r0, #3
	movs r1, #2
	bl sub_0803D350
	adds r0, #1
	movs r1, #0xf
	mov r8, r1
	subs r5, r1, r0
	adds r6, #2
	adds r0, r7, #0
	bl sub_08009D14
	ldr r2, _08014DC4 @ =0x087B6350
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_08009D4C
	lsls r0, r5, #3
	adds r7, r0, #0
	subs r7, #0xc
	lsls r4, r6, #3
	movs r0, #3
	movs r1, #2
	bl sub_0803D350
	adds r0, #1
	mov r1, r8
	subs r5, r1, r0
	adds r6, #2
	ldr r0, [sp]
	bl sub_08009D14
	ldr r2, _08014DC8 @ =0x087B6358
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_08009D4C
	mov r0, sb
	cmp r0, #0
	bne _08014DCC
	ldr r0, [sp, #0x24]
	bl sub_08009F50
	adds r1, r0, #0
	adds r1, r7, r1
	mov r0, sl
	adds r2, r4, #0
	bl sub_08009EDC
	b _08014DE0
	.align 2, 0
_08014DC4: .4byte 0x087B6350
_08014DC8: .4byte 0x087B6358
_08014DCC:
	ldr r0, [sp, #0x24]
	bl sub_08009F50
	adds r1, r0, #0
	adds r1, r7, r1
	adds r2, r4, #0
	adds r2, #0x10
	mov r0, sl
	bl sub_08009EDC
_08014DE0:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08014DF0
sub_08014DF0: @ 0x08014DF0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x70
	mov sb, r0
	mov r8, r1
	cmp r1, #0
	bne _08014E40
	ldr r0, [r0, #0x10]
	bl sub_08009CBC
	adds r6, r0, #2
	ldr r4, _08014E3C @ =0x087B6340
	adds r0, r4, #0
	bl sub_08009CBC
	adds r0, #2
	cmp r6, r0
	bhs _08014E22
	adds r0, r4, #0
	bl sub_08009CBC
	adds r6, r0, #2
_08014E22:
	movs r0, #0xa
	str r0, [sp, #0x6c]
	adds r0, r6, #0
	movs r1, #2
	bl sub_0803D350
	asrs r1, r6, #1
	adds r1, r1, r0
	movs r0, #0xf
	subs r7, r0, r1
	str r7, [sp, #0x64]
	str r6, [sp, #0x60]
	b _08014E52
	.align 2, 0
_08014E3C: .4byte 0x087B6340
_08014E40:
	movs r6, #0xf
	movs r1, #4
	str r1, [sp, #0x6c]
	movs r0, #0xf
	movs r1, #2
	bl sub_0803D350
	adds r0, #7
	subs r7, r6, r0
_08014E52:
	movs r2, #0
	str r2, [sp, #0x68]
	movs r3, #0
	str r3, [sp, #0x5c]
	mov sl, r3
	bl sub_08009BD0
	movs r3, #0xe0
	lsls r3, r3, #0x13
	add r4, sp, #0x54
	ldrh r2, [r3]
	ldr r1, _08014F30 @ =0x0000FCFF
	adds r0, r1, #0
	ands r0, r2
	strh r0, [r4]
	ldrh r0, [r4]
	movs r5, #0x80
	lsls r5, r5, #2
	adds r2, r5, #0
	orrs r0, r2
	strh r0, [r4]
	ldrh r0, [r4]
	strh r0, [r3]
	adds r3, #8
	ldrh r0, [r3]
	ands r1, r0
	strh r1, [r4]
	ldrh r0, [r4]
	orrs r0, r2
	strh r0, [r4]
	ldrh r0, [r4]
	strh r0, [r3]
	ldr r0, [sp, #0x6c]
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	mov r1, sl
	str r1, [sp, #8]
	add r0, sp, #0xc
	adds r1, r7, #0
	movs r2, #7
	adds r3, r6, #0
	bl sub_08009C7C
	movs r0, #1
	bl sub_08009CB0
	movs r0, #0
	movs r1, #1
	movs r2, #0
	bl sub_08009CD4
	movs r2, #8
	str r2, [sp, #0x58]
	mov r3, r8
	cmp r3, #0
	bne _08014F38
	mov r5, sb
	ldr r0, [r5, #0x10]
	bl sub_08009CBC
	adds r6, r0, #0
	movs r1, #2
	bl sub_0803D350
	asrs r1, r6, #1
	adds r1, r1, r0
	movs r0, #0xf
	subs r7, r0, r1
	movs r0, #2
	bl sub_08009D14
	ldr r2, [r5, #0x10]
	adds r0, r7, #0
	movs r1, #8
	bl sub_08009D4C
	ldr r4, _08014F34 @ =0x087B6340
	adds r0, r4, #0
	bl sub_08009CBC
	ldr r2, [sp, #0x64]
	ldr r3, [sp, #0x60]
	adds r1, r2, r3
	subs r1, r1, r0
	subs r7, r1, #1
	movs r5, #0xa
	str r5, [sp, #0x58]
	movs r0, #0
	bl sub_08009D14
	adds r0, r7, #0
	movs r1, #0xa
	adds r2, r4, #0
	bl sub_08009D4C
	mov r4, sb
	adds r4, #0x26
	ldrb r0, [r4]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r4]
	mov r0, r8
	str r0, [sp]
	movs r0, #2
	movs r1, #0
	adds r2, r7, #0
	movs r3, #0xa
	bl sub_08014D3C
	b _08014F66
	.align 2, 0
_08014F30: .4byte 0x0000FCFF
_08014F34: .4byte 0x087B6340
_08014F38:
	ldr r5, _08014FEC @ =0x087B6360
	adds r0, r5, #0
	bl sub_08009CBC
	adds r6, r0, #0
	movs r1, #2
	bl sub_0803D350
	asrs r1, r6, #1
	adds r1, r1, r0
	movs r0, #0xf
	subs r7, r0, r1
	mov r4, sb
	adds r4, #0x26
	ldrb r0, [r4]
	movs r1, #8
	orrs r0, r1
	strb r0, [r4]
	adds r0, r7, #0
	movs r1, #8
	adds r2, r5, #0
	bl sub_08009D4C
_08014F66:
	ldr r6, _08014FF0 @ =0x02000020
	adds r5, r4, #0
_08014F6A:
	bl sub_08000BC0
	mov r1, r8
	cmp r1, #0
	bne _08014FB2
	ldrh r1, [r6]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08014F94
	movs r2, #0
	str r2, [sp, #0x5c]
	ldr r3, [sp, #0x68]
	cmp r3, #0
	beq _08014F90
	ldrb r0, [r5]
	movs r1, #1
	orrs r0, r1
	strb r0, [r5]
_08014F90:
	movs r0, #0
	str r0, [sp, #0x68]
_08014F94:
	ldrh r1, [r6]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08014FB2
	movs r1, #1
	str r1, [sp, #0x5c]
	ldr r2, [sp, #0x68]
	cmp r2, #1
	beq _08014FAE
	ldrb r0, [r5]
	orrs r0, r1
	strb r0, [r5]
_08014FAE:
	movs r3, #1
	str r3, [sp, #0x68]
_08014FB2:
	bl sub_08009BD0
	mov r0, r8
	cmp r0, #0
	bne _08014FCC
	mov r1, sl
	str r1, [sp]
	movs r0, #2
	ldr r1, [sp, #0x5c]
	adds r2, r7, #0
	ldr r3, [sp, #0x58]
	bl sub_08014D3C
_08014FCC:
	ldrh r1, [r6]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08015006
	ldr r2, [sp, #0x5c]
	cmp r2, #0
	bne _08014FF4
	movs r6, #1
	mov r3, r8
	cmp r3, #0
	bne _0801502A
	ldrb r0, [r5]
	movs r1, #2
	b _08015000
	.align 2, 0
_08014FEC: .4byte 0x087B6360
_08014FF0: .4byte 0x02000020
_08014FF4:
	movs r6, #0
	mov r0, r8
	cmp r0, #0
	bne _0801502A
	ldrb r0, [r5]
	movs r1, #4
_08015000:
	orrs r0, r1
	strb r0, [r5]
	b _0801502A
_08015006:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0801501A
	mov r0, sb
	bl sub_08014BB4
	movs r1, #1
	add sl, r1
	b _08014F6A
_0801501A:
	movs r6, #0
	mov r2, r8
	cmp r2, #0
	bne _0801502A
	ldrb r0, [r4]
	movs r1, #4
	orrs r0, r1
	strb r0, [r4]
_0801502A:
	add r0, sp, #0xc
	bl sub_08009CA4
	movs r0, #0
	bl sub_08009CB0
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl sub_08009CD4
	mov r3, r8
	cmp r3, #0
	bne _0801506C
	ldr r3, _08015064 @ =0x07000010
	ldrh r1, [r3]
	ldr r0, _08015068 @ =0x0000FCFF
	ands r0, r1
	add r5, sp, #0x54
	strh r0, [r5]
	ldrh r0, [r5]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r5]
	ldrh r0, [r5]
	strh r0, [r3]
	b _08015074
	.align 2, 0
_08015064: .4byte 0x07000010
_08015068: .4byte 0x0000FCFF
_0801506C:
	ldrb r0, [r4]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r4]
_08015074:
	adds r0, r6, #0
	add sp, #0x70
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08015088
sub_08015088: @ 0x08015088
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r0, #0x24
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1c
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r3, [r4, #0x1c]
	adds r3, r3, r1
	ldrh r1, [r4, #0x22]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1b
	adds r0, r4, #0
	adds r0, #0x23
	ldrb r2, [r0]
	lsrs r2, r2, #3
	ldrb r0, [r3, #4]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	muls r0, r2, r0
	adds r1, r1, r0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, [r3]
	adds r5, r1, r0
	ldr r0, [r4, #0x10]
	bl sub_08009CBC
	adds r3, r0, #0
	movs r6, #0
	ldr r0, _08015100 @ =0x02000020
	ldrh r2, [r0]
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	beq _080150E2
	ldrh r1, [r5, #0xa]
	movs r0, #0xe0
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0x80
	beq _080150EA
_080150E2:
	movs r0, #8
	ands r0, r2
	cmp r0, #0
	beq _0801510C
_080150EA:
	cmp r3, #0
	beq _08015104
	adds r0, r4, #0
	movs r1, #0
	bl sub_08014DF0
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0801510C
	movs r6, #1
	b _0801510C
	.align 2, 0
_08015100: .4byte 0x02000020
_08015104:
	adds r0, r4, #0
	movs r1, #1
	bl sub_08014DF0
_0801510C:
	adds r0, r6, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_08015114
sub_08015114: @ 0x08015114
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sb, r0
	adds r0, r1, #0
	mov r8, r2
	movs r1, #0
	str r1, [sp]
	mov sl, r1
	cmp r1, r8
	bhs _08015174
	mov r7, sb
	adds r1, r7, #1
	str r1, [sp, #4]
	adds r6, r0, #4
	adds r5, r0, #3
	adds r4, r0, #0
_0801513C:
	adds r0, r4, #0
	bl sub_0803E06C
	adds r2, r0, #0
	mov r0, sb
	adds r1, r4, #0
	bl sub_0803E118
	cmp r0, #0
	bne _08015166
	movs r0, #2
	subs r0, #2
	adds r0, r5, r0
	ldrb r0, [r0]
	strb r0, [r7]
	ldrb r0, [r6]
	ldr r1, [sp, #4]
	strb r0, [r1]
	movs r0, #1
	str r0, [sp]
	b _08015174
_08015166:
	adds r6, #8
	adds r5, #8
	adds r4, #8
	movs r1, #1
	add sl, r1
	cmp sl, r8
	blo _0801513C
_08015174:
	ldr r0, [sp]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08015188
sub_08015188: @ 0x08015188
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r0, #0x24
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1c
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r3, [r5, #0x1c]
	adds r3, r3, r1
	ldrh r1, [r5, #0x22]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1b
	adds r0, r5, #0
	adds r0, #0x23
	ldrb r2, [r0]
	lsrs r2, r2, #3
	ldrb r0, [r3, #4]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	muls r0, r2, r0
	adds r1, r1, r0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, [r3]
	adds r6, r1, r0
	movs r7, #0
	ldr r0, [r5, #0x10]
	bl sub_08009CBC
	adds r4, r0, #0
	ldr r0, _08015208 @ =0x02000020
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08015274
	ldrh r0, [r6, #0xa]
	movs r1, #0xe0
	lsls r1, r1, #1
	ands r1, r0
	cmp r1, #0
	bne _0801520C
_080151E2:
	ldr r0, [r5, #0x14]
	cmp r4, r0
	bhs _080152A2
	ldr r4, [r5, #0x10]
	adds r0, r6, #0
	bl sub_0803E06C
	adds r2, r0, #0
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_0803E0B0
	movs r7, #1
	adds r2, r5, #0
	adds r2, #0x26
	ldrb r0, [r2]
	movs r1, #2
	b _0801529C
	.align 2, 0
_08015208: .4byte 0x02000020
_0801520C:
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	bne _08015240
	cmp r4, #0
	beq _080151E2
	lsls r1, r4, #1
	subs r1, #2
	ldr r0, [r5, #0x10]
	adds r0, r0, r1
	ldr r1, _0801523C @ =0x087B700C
	movs r2, #0x29
	bl sub_08015114
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080151E2
	movs r7, #1
	adds r0, r5, #0
	adds r0, #0x26
	ldrb r1, [r0]
	movs r2, #2
	b _080152AA
	.align 2, 0
_0801523C: .4byte 0x087B700C
_08015240:
	movs r0, #0xa0
	lsls r0, r0, #1
	cmp r1, r0
	bne _080152AE
	cmp r4, #0
	beq _080151E2
	lsls r1, r4, #1
	subs r1, #2
	ldr r0, [r5, #0x10]
	adds r0, r0, r1
	ldr r1, _08015270 @ =0x087B7154
	movs r2, #0xa
	bl sub_08015114
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080151E2
	movs r7, #1
	adds r0, r5, #0
	adds r0, #0x26
	ldrb r1, [r0]
	movs r2, #2
	b _080152AA
	.align 2, 0
_08015270: .4byte 0x087B7154
_08015274:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080152AE
	cmp r4, #0
	beq _080152A2
	ldr r0, [r5, #0x10]
	lsls r1, r4, #1
	adds r0, r1, r0
	subs r0, #1
	strb r7, [r0]
	ldr r0, [r5, #0x10]
	adds r1, r1, r0
	subs r1, #2
	strb r7, [r1]
	movs r7, #1
	adds r2, r5, #0
	adds r2, #0x26
	ldrb r0, [r2]
	movs r1, #4
_0801529C:
	orrs r0, r1
	strb r0, [r2]
	b _080152AE
_080152A2:
	adds r0, r5, #0
	adds r0, #0x26
	ldrb r1, [r0]
	movs r2, #8
_080152AA:
	orrs r1, r2
	strb r1, [r0]
_080152AE:
	adds r0, r7, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080152B8
sub_080152B8: @ 0x080152B8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r4, r0, #0
	movs r0, #0
	str r0, [sp, #8]
	adds r1, r4, #0
	adds r1, #0x24
	str r1, [sp, #0xc]
	adds r6, r4, #0
	adds r6, #0x26
_080152D4:
	movs r2, #0
	str r2, [sp]
	mov sl, r2
	mov sb, r2
	bl sub_08000BC0
	ldr r3, [sp, #0xc]
	ldrb r0, [r3]
	lsls r0, r0, #0x1b
	lsrs r5, r0, #0x1c
	movs r0, #0
	str r0, [sp, #4]
	ldr r0, _08015414 @ =0x02000020
	ldrh r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r2, #0
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsrs r2, r0, #0x1f
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r3, #0
	ands r1, r0
	cmp r1, #0
	beq _0801530E
	ldr r2, _08015418 @ =0x0000FFFF
_0801530E:
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_08014C68
	cmp r0, #3
	bne _08015320
	movs r0, #1
	str r0, [sp, #4]
_08015320:
	ldr r1, [sp, #0xc]
	ldrb r0, [r1]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1c
	cmp r5, r0
	beq _08015338
	movs r2, #1
	mov sl, r2
	ldrb r0, [r6]
	movs r1, #2
	orrs r0, r1
	strb r0, [r6]
_08015338:
	ldrh r0, [r4, #0x22]
	lsls r0, r0, #0x15
	lsrs r7, r0, #0x1b
	adds r5, r4, #0
	adds r5, #0x23
	ldrb r0, [r5]
	lsrs r0, r0, #3
	mov r8, r0
	movs r2, #0
	ldr r0, _0801541C @ =0x02000004
	ldrh r3, [r0]
	movs r0, #0x10
	ands r0, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsrs r1, r0, #0x1f
	movs r0, #0x20
	ands r0, r3
	cmp r0, #0
	beq _08015364
	ldr r1, _08015418 @ =0x0000FFFF
_08015364:
	movs r0, #0x40
	ands r0, r3
	cmp r0, #0
	beq _0801536E
	ldr r2, _08015418 @ =0x0000FFFF
_0801536E:
	movs r0, #0x80
	ands r0, r3
	cmp r0, #0
	beq _08015378
	movs r2, #1
_08015378:
	ldr r3, [sp, #4]
	cmp r3, #1
	bne _08015380
	ldr r2, _08015418 @ =0x0000FFFF
_08015380:
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r4, #0
	bl sub_08014A60
	ldrh r0, [r4, #0x22]
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1b
	cmp r7, r0
	beq _0801539C
	movs r0, #1
	mov sb, r0
_0801539C:
	ldrb r0, [r5]
	lsrs r0, r0, #3
	cmp r8, r0
	beq _080153A8
	movs r1, #1
	mov sb, r1
_080153A8:
	mov r2, sb
	cmp r2, #0
	beq _080153B6
	ldrb r0, [r6]
	movs r1, #1
	orrs r0, r1
	strb r0, [r6]
_080153B6:
	adds r0, r4, #0
	bl sub_08015188
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080153C8
	movs r3, #1
	str r3, [sp]
_080153C8:
	bl sub_08009BD0
	ldr r0, [sp]
	cmp r0, #1
	bne _080153D8
	adds r0, r4, #0
	bl sub_0801458C
_080153D8:
	adds r0, r4, #0
	ldr r1, [sp, #8]
	bl sub_080146AC
	mov r1, sb
	cmp r1, #1
	bne _080153EA
	movs r2, #1
	mov sl, r2
_080153EA:
	mov r3, sl
	cmp r3, #1
	bne _080153F6
	adds r0, r4, #0
	bl sub_080145FC
_080153F6:
	adds r0, r4, #0
	bl sub_08015088
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08015420
	adds r0, r4, #0
	bl sub_08014BB4
	ldr r0, [sp, #8]
	adds r0, #1
	str r0, [sp, #8]
	b _080152D4
	.align 2, 0
_08015414: .4byte 0x02000020
_08015418: .4byte 0x0000FFFF
_0801541C: .4byte 0x02000004
_08015420:
	adds r0, r4, #0
	bl sub_08014BB4
	movs r0, #0
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08015438
sub_08015438: @ 0x08015438
	push {r4, r5, r6, lr}
	sub sp, #0x28
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	bl sub_08009B94
	bl sub_08000B84
	mov r0, sp
	adds r1, r4, #0
	adds r2, r5, #0
	adds r3, r6, #0
	bl sub_0801486C
	movs r0, #0
	movs r1, #0
	movs r2, #0x1e
	movs r3, #0x14
	bl sub_08009C44
	mov r0, sp
	bl sub_0801477C
	mov r0, sp
	bl sub_080147AC
	mov r0, sp
	bl sub_08014834
	mov r0, sp
	bl sub_0801458C
	mov r0, sp
	bl sub_080145FC
	mov r0, sp
	movs r1, #0
	bl sub_080146AC
	bl sub_08009C04
	mov r0, sp
	bl sub_080152B8
	adds r4, r0, #0
	bl sub_08009BF4
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r1, [r2]
	ldr r0, _080154B0 @ =0x000080FF
	ands r0, r1
	strh r0, [r2]
	adds r0, r4, #0
	add sp, #0x28
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080154B0: .4byte 0x000080FF

	thumb_func_start sub_080154B4
sub_080154B4: @ 0x080154B4
	push {lr}
	ldr r0, _080154C8 @ =0x02000020
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _080154CC
	movs r0, #0
	b _080154CE
	.align 2, 0
_080154C8: .4byte 0x02000020
_080154CC:
	movs r0, #1
_080154CE:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080154D4
sub_080154D4: @ 0x080154D4
	ldr r1, _080154DC @ =0x04000050
	movs r0, #0
	strh r0, [r1]
	bx lr
	.align 2, 0
_080154DC: .4byte 0x04000050

	thumb_func_start sub_080154E0
sub_080154E0: @ 0x080154E0
	ldr r1, _080154E8 @ =0x04000050
	movs r0, #0xbf
	strh r0, [r1]
	bx lr
	.align 2, 0
_080154E8: .4byte 0x04000050

	thumb_func_start sub_080154EC
sub_080154EC: @ 0x080154EC
	ldr r1, _080154F4 @ =0x04000050
	movs r0, #0xff
	strh r0, [r1]
	bx lr
	.align 2, 0
_080154F4: .4byte 0x04000050

	thumb_func_start sub_080154F8
sub_080154F8: @ 0x080154F8
	ldr r1, _08015500 @ =0x04000054
	strh r0, [r1]
	bx lr
	.align 2, 0
_08015500: .4byte 0x04000054

	thumb_func_start sub_08015504
sub_08015504: @ 0x08015504
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov r8, r1
	adds r6, r2, #0
	mov sl, r3
	cmp r0, #0
	bne _0801551E
	bl sub_080154EC
	b _08015522
_0801551E:
	bl sub_080154E0
_08015522:
	movs r0, #0
	mov sb, r0
	movs r7, #0
	cmp sb, r6
	bhs _0801558C
	subs r5, r6, #1
	movs r4, #0
_08015530:
	bl sub_08000BC0
	bl sub_08009BD0
	mov r0, r8
	cmp r0, #0
	bne _0801555C
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0803DD84
	lsls r0, r0, #4
	movs r1, #0xfa
	lsls r1, r1, #2
	bl sub_0803DD84
	adds r1, r0, #0
	movs r0, #0x10
	subs r0, r0, r1
	bl sub_080154F8
	b _08015572
_0801555C:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0803DD84
	lsls r0, r0, #4
	movs r1, #0xfa
	lsls r1, r1, #2
	bl sub_0803DD84
	bl sub_080154F8
_08015572:
	mov r0, sl
	cmp r0, #1
	bne _08015580
	bl sub_080154B4
	cmp r0, #1
	beq _080155A0
_08015580:
	movs r0, #0xfa
	lsls r0, r0, #2
	adds r4, r4, r0
	adds r7, #1
	cmp r7, r6
	blo _08015530
_0801558C:
	mov r0, sb
	cmp r0, #0
	bne _080155AC
	mov r0, r8
	cmp r0, #0
	bne _080155A6
	movs r0, #0
	bl sub_080154F8
	b _080155AC
_080155A0:
	movs r0, #1
	mov sb, r0
	b _080155AC
_080155A6:
	movs r0, #0x10
	bl sub_080154F8
_080155AC:
	mov r0, sb
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_080155BC
sub_080155BC: @ 0x080155BC
	push {r4, lr}
	movs r4, #0
	cmp r0, #0
	beq _080155DC
	movs r0, #1
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl sub_08015504
	bl sub_08017040
	cmp r0, #1
	bne _080155DC
	b _080155E4
_080155DA:
	movs r4, #0
_080155DC:
	bl sub_08016D88
	cmp r0, #1
	bne _080155E6
_080155E4:
	movs r4, #1
_080155E6:
	adds r0, r4, #0
	bl sub_08017440
	cmp r0, #0
	bne _080155DA
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080155F8
sub_080155F8: @ 0x080155F8
	push {r4, r5, lr}
	movs r0, #0xa0
	lsls r0, r0, #0x13
	ldr r4, _0801561C @ =0x0834C008
	movs r5, #0x80
	lsls r5, r5, #2
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080002C4
	ldr r0, _08015620 @ =0x05000200
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080002C4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801561C: .4byte 0x0834C008
_08015620: .4byte 0x05000200

	thumb_func_start sub_08015624
sub_08015624: @ 0x08015624
	push {r4, r5, r6, lr}
	ldr r1, _08015678 @ =0x02038750
	movs r0, #0
	str r0, [r1]
	ldr r1, _0801567C @ =0x0400000C
	ldr r2, _08015680 @ =0x00004085
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	ldr r0, _08015684 @ =0x0000408A
	strh r0, [r1]
	movs r3, #0
	movs r0, #0
	movs r6, #0xc0
	lsls r6, r6, #0x13
_08015642:
	movs r2, #0
	adds r5, r0, #1
	lsls r4, r0, #5
_08015648:
	adds r1, r3, #1
	lsls r1, r1, #8
	orrs r1, r3
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, r2
	adds r0, r0, r6
	strh r1, [r0]
	adds r0, r3, #2
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r0, r2, #2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0xf
	bls _08015648
	lsls r0, r5, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xf
	bls _08015642
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08015678: .4byte 0x02038750
_0801567C: .4byte 0x0400000C
_08015680: .4byte 0x00004085
_08015684: .4byte 0x0000408A

	thumb_func_start sub_08015688
sub_08015688: @ 0x08015688
	push {lr}
	sub sp, #4
	adds r2, r1, #0
	cmp r0, #0
	bne _0801569A
	mov r1, sp
	movs r3, #0x80
	lsls r3, r3, #3
	b _080156A0
_0801569A:
	mov r1, sp
	movs r3, #0x80
	lsls r3, r3, #4
_080156A0:
	adds r0, r3, #0
	strh r0, [r1]
	cmp r2, #1
	bne _080156B6
	movs r2, #0x80
	lsls r2, r2, #0x13
	mov r1, sp
	ldrh r0, [r2]
	ldrh r1, [r1]
	orrs r0, r1
	b _080156C2
_080156B6:
	movs r2, #0x80
	lsls r2, r2, #0x13
	mov r0, sp
	ldrh r1, [r0]
	ldrh r0, [r2]
	bics r0, r1
_080156C2:
	strh r0, [r2]
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080156CC
sub_080156CC: @ 0x080156CC
	push {r4, lr}
	adds r4, r1, #0
	adds r1, r3, #0
	cmp r0, #0
	bne _080156E0
	ldr r0, _080156DC @ =0x06004000
	b _080156EE
	.align 2, 0
_080156DC: .4byte 0x06004000
_080156E0:
	cmp r4, #0
	bne _080156EC
	ldr r0, _080156E8 @ =0x06008000
	b _080156EE
	.align 2, 0
_080156E8: .4byte 0x06008000
_080156EC:
	ldr r0, _08015704 @ =0x0600C000
_080156EE:
	adds r1, r1, r0
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _08015708
	adds r0, r1, #0
	adds r1, r2, #0
	ldr r2, [sp, #0xc]
	bl sub_080002C4
	b _0801570E
	.align 2, 0
_08015704: .4byte 0x0600C000
_08015708:
	adds r0, r2, #0
	bl sub_0803D358
_0801570E:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08015714
sub_08015714: @ 0x08015714
	push {lr}
	sub sp, #4
	mov r2, sp
	ldr r0, _0801573C @ =0x0400000E
	ldrh r1, [r0]
	ldr r0, _08015740 @ =0x0000FFF3
	ands r0, r1
	strh r0, [r2]
	ldr r3, _08015744 @ =0x02038750
	ldr r0, [r3]
	cmp r0, #0
	bne _08015748
	mov r0, sp
	ldrh r0, [r0]
	movs r1, #0xc
	orrs r0, r1
	strh r0, [r2]
	movs r0, #1
	b _08015756
	.align 2, 0
_0801573C: .4byte 0x0400000E
_08015740: .4byte 0x0000FFF3
_08015744: .4byte 0x02038750
_08015748:
	mov r2, sp
	mov r0, sp
	ldrh r0, [r0]
	movs r1, #8
	orrs r0, r1
	strh r0, [r2]
	movs r0, #0
_08015756:
	str r0, [r3]
	ldr r0, _08015768 @ =0x0400000E
	mov r1, sp
	ldrh r1, [r1]
	strh r1, [r0]
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_08015768: .4byte 0x0400000E

	thumb_func_start sub_0801576C
sub_0801576C: @ 0x0801576C
	ldr r0, _08015774 @ =0x02038750
	ldr r0, [r0]
	bx lr
	.align 2, 0
_08015774: .4byte 0x02038750

	thumb_func_start sub_08015778
sub_08015778: @ 0x08015778
	push {lr}
	ldr r0, _08015788 @ =0x02038750
	ldr r0, [r0]
	cmp r0, #0
	beq _0801578C
	movs r0, #0
	b _0801578E
	.align 2, 0
_08015788: .4byte 0x02038750
_0801578C:
	movs r0, #1
_0801578E:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08015794
sub_08015794: @ 0x08015794
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	str r0, [sp, #0x14]
	mov r8, r1
	mov sb, r2
	mov sl, r3
	ldr r7, [sp, #0x38]
	ldr r4, [sp, #0x3c]
	ldr r5, [sp, #0x40]
	ldr r6, [sp, #0x44]
	movs r0, #0x80
	movs r1, #2
	bl sub_0803D34C
	add r0, r8
	lsls r0, r0, #8
	str r0, [sp]
	movs r0, #0x80
	movs r1, #2
	bl sub_0803D34C
	add r0, sb
	lsls r0, r0, #8
	str r0, [sp, #4]
	mov r0, sp
	mov r1, sl
	strh r1, [r0, #8]
	strh r7, [r0, #0xa]
	movs r0, #0x80
	lsls r0, r0, #9
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r1, r4, #0
	bl sub_0803D7D4
	mov r1, sp
	strh r0, [r1, #0xc]
	movs r0, #0x80
	lsls r0, r0, #9
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	adds r1, r5, #0
	bl sub_0803D7D4
	mov r1, sp
	strh r0, [r1, #0xe]
	mov r0, sp
	lsls r6, r6, #8
	strh r6, [r0, #0x10]
	ldr r1, [sp, #0x14]
	movs r2, #1
	bl sub_0803D344
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08015818
sub_08015818: @ 0x08015818
	push {r4, r5, lr}
	sub sp, #0x10
	adds r5, r1, #0
	ldr r1, [sp, #0x1c]
	ldr r4, [sp, #0x20]
	str r2, [sp]
	str r3, [sp, #4]
	str r1, [sp, #8]
	str r4, [sp, #0xc]
	movs r1, #0
	movs r2, #0
	adds r3, r5, #0
	bl sub_08015794
	add sp, #0x10
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_0801583C
sub_0801583C: @ 0x0801583C
	push {lr}
	adds r3, r1, #0
	cmp r0, #0
	bne _0801584C
	ldr r1, _08015848 @ =0x04000020
	b _0801584E
	.align 2, 0
_08015848: .4byte 0x04000020
_0801584C:
	ldr r1, _08015888 @ =0x04000030
_0801584E:
	ldrh r0, [r3]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r3, #2]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r3, #4]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r3, #6]
	strh r0, [r1]
	adds r1, #2
	ldr r0, [r3, #8]
	strh r0, [r1]
	adds r1, #2
	ldr r2, _0801588C @ =0x0FFF0000
	ands r0, r2
	asrs r0, r0, #0x10
	strh r0, [r1]
	adds r1, #2
	ldr r0, [r3, #0xc]
	strh r0, [r1]
	adds r1, #2
	ands r0, r2
	asrs r0, r0, #0x10
	strh r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_08015888: .4byte 0x04000030
_0801588C: .4byte 0x0FFF0000

	thumb_func_start sub_08015890
sub_08015890: @ 0x08015890
	push {r4, lr}
	sub sp, #4
	cmp r0, #0
	bne _080158D8
	mov r3, sp
	ldr r4, _080158CC @ =0x0400000C
	ldrh r1, [r4]
	ldr r2, _080158D0 @ =0x0000FFFC
	adds r0, r2, #0
	ands r0, r1
	strh r0, [r3]
	mov r0, sp
	ldrh r0, [r0]
	movs r1, #1
	orrs r0, r1
	strh r0, [r3]
	mov r0, sp
	ldrh r0, [r0]
	strh r0, [r4]
	mov r1, sp
	ldr r3, _080158D4 @ =0x0400000E
	ldrh r0, [r3]
	ands r2, r0
	strh r2, [r1]
	mov r2, sp
	mov r0, sp
	ldrh r0, [r0]
	movs r1, #2
	b _08015908
	.align 2, 0
_080158CC: .4byte 0x0400000C
_080158D0: .4byte 0x0000FFFC
_080158D4: .4byte 0x0400000E
_080158D8:
	mov r3, sp
	ldr r4, _0801591C @ =0x0400000C
	ldrh r1, [r4]
	ldr r2, _08015920 @ =0x0000FFFC
	adds r0, r2, #0
	ands r0, r1
	strh r0, [r3]
	mov r0, sp
	ldrh r0, [r0]
	movs r1, #2
	orrs r0, r1
	strh r0, [r3]
	mov r0, sp
	ldrh r0, [r0]
	strh r0, [r4]
	mov r1, sp
	ldr r3, _08015924 @ =0x0400000E
	ldrh r0, [r3]
	ands r2, r0
	strh r2, [r1]
	mov r2, sp
	mov r0, sp
	ldrh r0, [r0]
	movs r1, #1
_08015908:
	orrs r0, r1
	strh r0, [r2]
	mov r0, sp
	ldrh r0, [r0]
	strh r0, [r3]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801591C: .4byte 0x0400000C
_08015920: .4byte 0x0000FFFC
_08015924: .4byte 0x0400000E

	thumb_func_start sub_08015928
sub_08015928: @ 0x08015928
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _08015944 @ =0x02039E20
	ldr r0, [r0]
	lsls r0, r0, #5
	ldr r5, _08015948 @ =0x06010000
	adds r3, r0, r5
	cmp r1, #0
	bne _0801594C
	adds r0, r3, #0
	adds r1, r4, #0
	bl sub_080002C4
	b _08015954
	.align 2, 0
_08015944: .4byte 0x02039E20
_08015948: .4byte 0x06010000
_0801594C:
	adds r0, r4, #0
	adds r1, r3, #0
	bl sub_0803D358
_08015954:
	ldr r1, _08015964 @ =0x02039E20
	ldr r0, [r1]
	adds r2, r0, #0
	adds r2, #0x20
	str r2, [r1]
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08015964: .4byte 0x02039E20

	thumb_func_start sub_08015968
sub_08015968: @ 0x08015968
	push {r4, r5, lr}
	adds r3, r0, #0
	adds r4, r1, #0
	adds r1, r2, #0
	cmp r3, #0x20
	bhi _0801599C
	lsls r2, r3, #3
	movs r0, #0xe0
	lsls r0, r0, #0x13
	adds r2, r2, r0
	movs r5, #0x84
	lsls r5, r5, #6
	adds r0, r5, #0
	orrs r1, r0
	strh r1, [r2]
	lsls r0, r3, #9
	movs r3, #0x80
	lsls r3, r3, #8
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2, #2]
	movs r5, #0x80
	lsls r5, r5, #3
	adds r0, r5, #0
	orrs r4, r0
	strh r4, [r2, #4]
_0801599C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080159A4
sub_080159A4: @ 0x080159A4
	push {lr}
	cmp r0, #0x20
	bhi _080159C0
	lsls r0, r0, #3
	movs r1, #0xe0
	lsls r1, r1, #0x13
	adds r0, r0, r1
	movs r2, #0x80
	lsls r2, r2, #2
	adds r1, r2, #0
	strh r1, [r0]
	movs r1, #0
	strh r1, [r0, #2]
	strh r1, [r0, #4]
_080159C0:
	pop {r0}
	bx r0

	thumb_func_start sub_080159C4
sub_080159C4: @ 0x080159C4
	push {r4, lr}
	sub sp, #4
	adds r3, r1, #0
	cmp r0, #0x20
	bhi _08015A0A
	lsls r0, r0, #3
	movs r1, #0xe0
	lsls r1, r1, #0x13
	adds r4, r0, r1
	mov r2, sp
	ldrh r1, [r4]
	ldr r0, _080159F0 @ =0x0000FCFF
	ands r0, r1
	strh r0, [r2]
	cmp r3, #0
	bne _080159F4
	mov r0, sp
	ldrh r0, [r0]
	movs r3, #0x80
	lsls r3, r3, #2
	b _080159FE
	.align 2, 0
_080159F0: .4byte 0x0000FCFF
_080159F4:
	mov r2, sp
	mov r0, sp
	ldrh r0, [r0]
	movs r3, #0x80
	lsls r3, r3, #1
_080159FE:
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	mov r0, sp
	ldrh r0, [r0]
	strh r0, [r4]
_08015A0A:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08015A14
sub_08015A14: @ 0x08015A14
	push {r4, r5, lr}
	sub sp, #8
	ldr r1, _08015A88 @ =0x02039E20
	movs r0, #0
	str r0, [r1]
	ldr r0, _08015A8C @ =0x0834BE88
	movs r1, #1
	movs r2, #0
	bl sub_08015928
	str r0, [sp]
	ldr r0, _08015A90 @ =0x0834C208
	movs r1, #1
	movs r2, #0
	bl sub_08015928
	str r0, [sp, #4]
	movs r4, #0xe0
	lsls r4, r4, #0x13
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r4, #0
	movs r2, #0
	bl sub_08000498
	movs r5, #0
	movs r0, #0x80
	lsls r0, r0, #2
	adds r1, r0, #0
_08015A4E:
	lsls r0, r5, #3
	adds r0, r0, r4
	strh r1, [r0]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r0, #0
	bge _08015A4E
	movs r5, #0
_08015A60:
	lsls r0, r5, #2
	add r0, sp
	ldr r1, [r0]
	adds r0, r5, #0
	movs r2, #0
	bl sub_08015968
	adds r0, r5, #0
	movs r1, #0
	bl sub_080159C4
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bls _08015A60
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08015A88: .4byte 0x02039E20
_08015A8C: .4byte 0x0834BE88
_08015A90: .4byte 0x0834C208

	thumb_func_start sub_08015A94
sub_08015A94: @ 0x08015A94
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #8
	mov r8, r0
	adds r4, r2, #0
	adds r5, r3, #0
	movs r0, #0x80
	lsls r0, r0, #9
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0803D7D4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r6, _08015AFC @ =0xFFFF0000
	ldr r1, [sp]
	ands r1, r6
	orrs r1, r0
	str r1, [sp]
	movs r0, #0x80
	lsls r0, r0, #9
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r1, r4, #0
	bl sub_0803D7D4
	lsls r0, r0, #0x10
	ldr r2, _08015B00 @ =0x0000FFFF
	ldr r1, [sp]
	ands r1, r2
	orrs r1, r0
	str r1, [sp]
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x10
	ldr r0, [sp, #4]
	ands r0, r6
	orrs r0, r5
	str r0, [sp, #4]
	mov r0, sp
	mov r1, r8
	movs r2, #1
	movs r3, #2
	bl sub_0803D360
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08015AFC: .4byte 0xFFFF0000
_08015B00: .4byte 0x0000FFFF

	thumb_func_start sub_08015B04
sub_08015B04: @ 0x08015B04
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	adds r4, r2, #0
	cmp r6, #0x20
	bhi _08015B50
	lsls r2, r6, #3
	movs r0, #0xe0
	lsls r0, r0, #0x13
	adds r2, r2, r0
	ldrh r1, [r2]
	movs r0, #0xff
	lsls r0, r0, #8
	ands r0, r1
	movs r1, #0xff
	ands r4, r1
	orrs r0, r4
	strh r0, [r2]
	ldrh r1, [r2, #2]
	movs r0, #0xfe
	lsls r0, r0, #8
	ands r0, r1
	ldr r4, _08015B58 @ =0x000001FF
	adds r1, r4, #0
	ands r5, r1
	orrs r0, r5
	strh r0, [r2, #2]
	lsls r1, r6, #5
	ldr r0, _08015B5C @ =0x07000006
	adds r1, r1, r0
	ldrh r0, [r3]
	strh r0, [r1]
	ldrh r0, [r3, #2]
	strh r0, [r1, #8]
	ldrh r0, [r3, #4]
	strh r0, [r1, #0x10]
	ldrh r0, [r3, #6]
	strh r0, [r1, #0x18]
_08015B50:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08015B58: .4byte 0x000001FF
_08015B5C: .4byte 0x07000006

	thumb_func_start sub_08015B60
sub_08015B60: @ 0x08015B60
	ldr r1, _08015B68 @ =0x04000050
	movs r0, #0
	strh r0, [r1]
	bx lr
	.align 2, 0
_08015B68: .4byte 0x04000050

	thumb_func_start sub_08015B6C
sub_08015B6C: @ 0x08015B6C
	ldr r1, _08015B78 @ =0x04000050
	ldr r2, _08015B7C @ =0x00002050
	adds r0, r2, #0
	strh r0, [r1]
	bx lr
	.align 2, 0
_08015B78: .4byte 0x04000050
_08015B7C: .4byte 0x00002050

	thumb_func_start sub_08015B80
sub_08015B80: @ 0x08015B80
	push {lr}
	cmp r0, #0
	bne _08015B94
	ldr r1, _08015B8C @ =0x04000050
	ldr r2, _08015B90 @ =0x00002044
	b _08015B98
	.align 2, 0
_08015B8C: .4byte 0x04000050
_08015B90: .4byte 0x00002044
_08015B94:
	ldr r1, _08015BA0 @ =0x04000050
	ldr r2, _08015BA4 @ =0x00002048
_08015B98:
	adds r0, r2, #0
	strh r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_08015BA0: .4byte 0x04000050
_08015BA4: .4byte 0x00002048

	thumb_func_start sub_08015BA8
sub_08015BA8: @ 0x08015BA8
	push {lr}
	cmp r0, #0
	bne _08015BBC
	ldr r1, _08015BB4 @ =0x04000050
	ldr r2, _08015BB8 @ =0x00002054
	b _08015BC0
	.align 2, 0
_08015BB4: .4byte 0x04000050
_08015BB8: .4byte 0x00002054
_08015BBC:
	ldr r1, _08015BC8 @ =0x04000050
	ldr r2, _08015BCC @ =0x00002058
_08015BC0:
	adds r0, r2, #0
	strh r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_08015BC8: .4byte 0x04000050
_08015BCC: .4byte 0x00002058

	thumb_func_start sub_08015BD0
sub_08015BD0: @ 0x08015BD0
	ldr r1, _08015BDC @ =0x04000050
	ldr r2, _08015BE0 @ =0x00002448
	adds r0, r2, #0
	strh r0, [r1]
	bx lr
	.align 2, 0
_08015BDC: .4byte 0x04000050
_08015BE0: .4byte 0x00002448

	thumb_func_start sub_08015BE4
sub_08015BE4: @ 0x08015BE4
	ldr r1, _08015BF0 @ =0x04000050
	ldr r2, _08015BF4 @ =0x0000207F
	adds r0, r2, #0
	strh r0, [r1]
	bx lr
	.align 2, 0
_08015BF0: .4byte 0x04000050
_08015BF4: .4byte 0x0000207F

	thumb_func_start sub_08015BF8
sub_08015BF8: @ 0x08015BF8
	ldr r2, _08015C04 @ =0x04000052
	lsls r1, r1, #8
	orrs r1, r0
	strh r1, [r2]
	bx lr
	.align 2, 0
_08015C04: .4byte 0x04000052

	thumb_func_start sub_08015C08
sub_08015C08: @ 0x08015C08
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r6, r1, #0
	ldr r4, [sp, #0x20]
	ldr r5, [sp, #0x24]
	movs r1, #0x60
	rsbs r1, r1, #0
	str r2, [sp]
	str r3, [sp, #4]
	str r4, [sp, #8]
	str r5, [sp, #0xc]
	movs r2, #0
	adds r3, r6, #0
	bl sub_08015794
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08015C30
sub_08015C30: @ 0x08015C30
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r6, r1, #0
	ldr r4, [sp, #0x20]
	ldr r5, [sp, #0x24]
	movs r1, #0x60
	rsbs r1, r1, #0
	str r2, [sp]
	str r3, [sp, #4]
	str r4, [sp, #8]
	str r5, [sp, #0xc]
	movs r2, #0
	adds r3, r6, #0
	bl sub_08015794
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08015C58
sub_08015C58: @ 0x08015C58
	push {r4, r5, lr}
	sub sp, #0x10
	adds r5, r1, #0
	ldr r1, [sp, #0x1c]
	ldr r4, [sp, #0x20]
	str r2, [sp]
	str r3, [sp, #4]
	str r1, [sp, #8]
	str r4, [sp, #0xc]
	movs r1, #0x10
	movs r2, #0x20
	adds r3, r5, #0
	bl sub_08015794
	add sp, #0x10
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_08015C7C
sub_08015C7C: @ 0x08015C7C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x5c
	ldr r1, _08015D04 @ =0x08324EC0
	add r0, sp, #8
	movs r2, #2
	bl sub_0803DEBC
	add r4, sp, #0xc
	ldr r1, _08015D08 @ =0x08324EC2
	adds r0, r4, #0
	movs r2, #2
	bl sub_0803DEBC
	movs r0, #0xc8
	str r0, [sp, #0x30]
	subs r0, #0xcc
	str r0, [sp, #0x34]
	movs r7, #0x97
	movs r6, #0x97
	movs r0, #0
	mov sl, r0
	movs r0, #0x80
	lsls r0, r0, #7
	movs r1, #2
	bl sub_0803D34C
	str r0, [sp, #0x44]
	movs r1, #0
	mov r8, r1
	movs r0, #0
	str r0, [sp, #0x48]
	movs r1, #0x80
	lsls r1, r1, #5
	str r1, [sp, #0x4c]
	str r0, [sp, #0x50]
	movs r1, #0
	bl sub_08015688
	movs r0, #1
	movs r1, #0
	bl sub_08015688
	movs r5, #0
	mov r1, sp
	adds r1, #0x10
	str r1, [sp, #0x54]
	mov r0, sp
	adds r0, #0x20
	str r0, [sp, #0x58]
	movs r1, #1
	mov sb, r1
	movs r4, #0
_08015CEC:
	bl sub_08000BC0
	cmp r5, #0
	bne _08015D10
	mov r0, sb
	str r0, [sp]
	str r5, [sp, #4]
	movs r0, #0
	movs r1, #0
	ldr r2, _08015D0C @ =0x08370BDC
	b _08015D74
	.align 2, 0
_08015D04: .4byte 0x08324EC0
_08015D08: .4byte 0x08324EC2
_08015D0C: .4byte 0x08370BDC
_08015D10:
	cmp r5, #1
	bne _08015D24
	str r5, [sp]
	str r4, [sp, #4]
	movs r0, #0
	movs r1, #0
	ldr r2, _08015D20 @ =0x08371490
	b _08015D54
	.align 2, 0
_08015D20: .4byte 0x08371490
_08015D24:
	cmp r5, #2
	bne _08015D40
	bl sub_0801576C
	adds r1, r0, #0
	mov r0, sb
	str r0, [sp]
	str r4, [sp, #4]
	movs r0, #1
	ldr r2, _08015D3C @ =0x0832C2DC
	b _08015D74
	.align 2, 0
_08015D3C: .4byte 0x0832C2DC
_08015D40:
	cmp r5, #3
	bne _08015D60
	bl sub_0801576C
	adds r1, r0, #0
	mov r0, sb
	str r0, [sp]
	str r4, [sp, #4]
	movs r0, #1
	ldr r2, _08015D5C @ =0x0832C7A8
_08015D54:
	ldr r3, [sp, #0x44]
	bl sub_080156CC
	b _08015D9A
	.align 2, 0
_08015D5C: .4byte 0x0832C7A8
_08015D60:
	cmp r5, #4
	bne _08015D80
	bl sub_08015778
	adds r1, r0, #0
	mov r0, sb
	str r0, [sp]
	str r4, [sp, #4]
	movs r0, #1
	ldr r2, _08015D7C @ =0x0832CC30
_08015D74:
	movs r3, #0
	bl sub_080156CC
	b _08015D9A
	.align 2, 0
_08015D7C: .4byte 0x0832CC30
_08015D80:
	cmp r5, #5
	bne _08015D9A
	bl sub_08015778
	adds r1, r0, #0
	mov r0, sb
	str r0, [sp]
	str r4, [sp, #4]
	movs r0, #1
	ldr r2, _08015E4C @ =0x0832D0DC
	ldr r3, [sp, #0x44]
	bl sub_080156CC
_08015D9A:
	ldr r1, [sp, #0x30]
	adds r1, #0x78
	ldr r2, [sp, #0x34]
	adds r2, #0x50
	str r6, [sp]
	mov r0, sl
	str r0, [sp, #4]
	add r0, sp, #0x10
	adds r3, r7, #0
	bl sub_08015818
	ldr r1, [sp, #0x30]
	adds r1, #0x78
	ldr r2, [sp, #0x34]
	adds r2, #0x50
	str r6, [sp]
	mov r0, sl
	str r0, [sp, #4]
	add r0, sp, #0x20
	adds r3, r7, #0
	bl sub_08015C08
	bl sub_08009BD0
	movs r0, #0
	add r1, sp, #0x10
	bl sub_0801583C
	movs r0, #1
	add r1, sp, #0x20
	bl sub_0801583C
	bl sub_080154B4
	cmp r0, #1
	bne _08015DE4
	b _08015FD8
_08015DE4:
	adds r5, #1
	cmp r5, #5
	bhi _08015DEC
	b _08015CEC
_08015DEC:
	movs r0, #1
	bl sub_08015890
	bl sub_08015BD0
	ldr r1, [sp, #0x4c]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x18
	movs r1, #0x10
	subs r1, r1, r0
	bl sub_08015BF8
	movs r0, #0
	movs r1, #1
	bl sub_08015688
	movs r0, #1
	movs r1, #1
	bl sub_08015688
	bl sub_08015714
	movs r0, #0xd2
	bl sub_0801B750
	movs r0, #6
	rsbs r0, r0, #0
	str r0, [sp, #0x38]
	movs r0, #0
	str r0, [sp, #0x3c]
	ldr r5, [sp, #0x54]
	ldr r4, [sp, #0x58]
_08015E2C:
	bl sub_08000BC0
	ldr r0, [sp, #0x30]
	cmp r0, #0xa0
	ble _08015E50
	movs r0, #0x10
	rsbs r0, r0, #0
	str r0, [sp, #0x38]
	adds r0, r7, #0
	movs r1, #0x12
	bl sub_0803D34C
	adds r7, r7, r0
	adds r0, r6, #0
	movs r1, #0x12
	b _08015EBE
	.align 2, 0
_08015E4C: .4byte 0x0832D0DC
_08015E50:
	ldr r0, [sp, #0x30]
	cmp r0, #0x64
	ble _08015E6C
	movs r0, #0xe
	rsbs r0, r0, #0
	str r0, [sp, #0x38]
	adds r0, r7, #0
	movs r1, #0x18
	bl sub_0803D34C
	adds r7, r7, r0
	adds r0, r6, #0
	movs r1, #0x18
	b _08015EBE
_08015E6C:
	ldr r0, [sp, #0x30]
	cmp r0, #0x50
	ble _08015E88
	movs r0, #0xc
	rsbs r0, r0, #0
	str r0, [sp, #0x38]
	adds r0, r7, #0
	movs r1, #0x1a
	bl sub_0803D34C
	adds r7, r7, r0
	adds r0, r6, #0
	movs r1, #0x1a
	b _08015EBE
_08015E88:
	ldr r0, [sp, #0x30]
	cmp r0, #0x28
	ble _08015EA4
	movs r0, #8
	rsbs r0, r0, #0
	str r0, [sp, #0x38]
	adds r0, r7, #0
	movs r1, #0x20
	bl sub_0803D34C
	adds r7, r7, r0
	adds r0, r6, #0
	movs r1, #0x20
	b _08015EBE
_08015EA4:
	ldr r0, [sp, #0x30]
	cmp r0, #0x14
	ble _08015EC6
	movs r0, #6
	rsbs r0, r0, #0
	str r0, [sp, #0x38]
	adds r0, r7, #0
	movs r1, #0x30
	bl sub_0803D34C
	adds r7, r7, r0
	adds r0, r6, #0
	movs r1, #0x30
_08015EBE:
	bl sub_0803D34C
	adds r6, r6, r0
	b _08015EDE
_08015EC6:
	ldr r0, [sp, #0x30]
	cmp r0, #6
	ble _08015ED2
	movs r0, #2
	rsbs r0, r0, #0
	b _08015EDC
_08015ED2:
	ldr r0, [sp, #0x30]
	cmp r0, #0
	ble _08015EDE
	movs r0, #1
	rsbs r0, r0, #0
_08015EDC:
	str r0, [sp, #0x38]
_08015EDE:
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r7, r0
	ble _08015EE8
	adds r7, r0, #0
_08015EE8:
	cmp r6, r0
	ble _08015EEE
	adds r6, r0, #0
_08015EEE:
	ldr r0, [sp, #0x30]
	cmp r0, #0
	bgt _08015F54
	movs r0, #0
	str r0, [sp, #0x30]
	ldr r1, [sp, #0x30]
	adds r1, #0x78
	ldr r2, [sp, #0x34]
	adds r2, #0x50
	str r6, [sp]
	mov r0, sl
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r3, r7, #0
	bl sub_08015818
	ldr r1, [sp, #0x30]
	adds r1, #0x78
	ldr r2, [sp, #0x34]
	adds r2, #0x50
	str r6, [sp]
	mov r0, sl
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r3, r7, #0
	bl sub_08015C08
	bl sub_08009BD0
	movs r0, #0
	adds r1, r5, #0
	bl sub_0801583C
	movs r0, #1
	adds r1, r4, #0
	bl sub_0801583C
	mov r0, sp
	add r0, r8
	adds r0, #0xc
	ldrb r0, [r0]
	ldr r1, [sp, #0x48]
	cmp r0, r1
	bhi _08015FDC
	movs r0, #1
	add r8, r0
	movs r1, #0
	str r1, [sp, #0x48]
	bl sub_08015714
	b _08015FDC
_08015F54:
	ldr r0, [sp, #0x30]
	ldr r1, [sp, #0x38]
	adds r0, r0, r1
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x34]
	ldr r1, [sp, #0x3c]
	adds r0, r0, r1
	str r0, [sp, #0x34]
	ldr r1, [sp, #0x30]
	adds r1, #0x78
	ldr r2, [sp, #0x34]
	adds r2, #0x50
	str r6, [sp]
	mov r0, sl
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r3, r7, #0
	bl sub_08015818
	ldr r1, [sp, #0x30]
	adds r1, #0x78
	ldr r2, [sp, #0x34]
	adds r2, #0x50
	str r6, [sp]
	mov r0, sl
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r3, r7, #0
	bl sub_08015C08
	bl sub_08009BD0
	movs r0, #0
	adds r1, r5, #0
	bl sub_0801583C
	movs r0, #1
	adds r1, r4, #0
	bl sub_0801583C
	mov r0, sp
	add r0, r8
	adds r0, #0xc
	ldrb r0, [r0]
	ldr r1, [sp, #0x48]
	cmp r0, r1
	bhi _08015FBE
	movs r0, #1
	add r8, r0
	movs r1, #0
	str r1, [sp, #0x48]
	bl sub_08015714
_08015FBE:
	mov r0, r8
	cmp r0, #1
	bls _08015FC8
	movs r1, #0
	mov r8, r1
_08015FC8:
	ldr r0, [sp, #0x48]
	adds r0, #1
	str r0, [sp, #0x48]
	bl sub_080154B4
	cmp r0, #1
	beq _08015FD8
	b _08015E2C
_08015FD8:
	movs r0, #1
	b _0801657E
_08015FDC:
	mov r1, r8
	cmp r1, #1
	bls _08015FE6
	movs r0, #0
	mov r8, r0
_08015FE6:
	ldr r1, [sp, #0x48]
	adds r1, #1
	str r1, [sp, #0x48]
	bl sub_080154B4
	cmp r0, #1
	beq _08015FD8
	movs r0, #0xc8
	rsbs r0, r0, #0
	str r0, [sp, #0x38]
	ldr r1, [sp, #0x30]
	lsls r0, r1, #5
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	str r0, [sp, #0x40]
	movs r5, #0
	ldr r0, [sp, #0x54]
	mov sb, r0
	ldr r4, [sp, #0x58]
_08016010:
	bl sub_08000BC0
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x38]
	adds r0, r0, r1
	str r0, [sp, #0x40]
	ldr r0, [sp, #0x40]
	movs r1, #0xfa
	lsls r1, r1, #2
	bl sub_0803D34C
	str r0, [sp, #0x30]
	ldr r1, [sp, #0x38]
	movs r0, #0xf5
	lsls r0, r0, #2
	muls r0, r1, r0
	movs r1, #0xfa
	lsls r1, r1, #2
	bl sub_0803D34C
	str r0, [sp, #0x38]
	ldr r0, [sp, #0x30]
	movs r1, #4
	rsbs r1, r1, #0
	cmp r0, r1
	bge _0801604C
	str r1, [sp, #0x30]
	movs r0, #0xc8
	lsls r0, r0, #1
	str r0, [sp, #0x38]
_0801604C:
	ldr r0, [sp, #0x30]
	cmp r0, #6
	ble _0801605A
	movs r0, #6
	str r0, [sp, #0x30]
	subs r0, #0xce
	str r0, [sp, #0x38]
_0801605A:
	ldr r1, [sp, #0x30]
	adds r1, #0x78
	ldr r2, [sp, #0x34]
	adds r2, #0x50
	str r6, [sp]
	mov r0, sl
	str r0, [sp, #4]
	mov r0, sb
	adds r3, r7, #0
	bl sub_08015818
	ldr r1, [sp, #0x30]
	adds r1, #0x78
	ldr r2, [sp, #0x34]
	adds r2, #0x50
	str r6, [sp]
	mov r0, sl
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r3, r7, #0
	bl sub_08015C08
	bl sub_08009BD0
	movs r0, #0
	mov r1, sb
	bl sub_0801583C
	movs r0, #1
	adds r1, r4, #0
	bl sub_0801583C
	mov r0, sp
	add r0, r8
	adds r0, #0xc
	ldrb r0, [r0]
	ldr r1, [sp, #0x48]
	cmp r0, r1
	bhi _080160B4
	movs r0, #1
	add r8, r0
	movs r1, #0
	str r1, [sp, #0x48]
	bl sub_08015714
_080160B4:
	mov r0, r8
	cmp r0, #1
	bls _080160BE
	movs r1, #0
	mov r8, r1
_080160BE:
	ldr r0, [sp, #0x48]
	adds r0, #1
	str r0, [sp, #0x48]
	bl sub_080154B4
	cmp r0, #1
	beq _08015FD8
	adds r5, #1
	cmp r5, #0x95
	bls _08016010
	movs r0, #1
	str r0, [sp, #0x3c]
	str r0, [sp, #0x38]
	mov sb, r0
	ldr r5, [sp, #0x54]
	ldr r4, [sp, #0x58]
_080160DE:
	bl sub_08000BC0
	ldr r0, [sp, #0x34]
	cmp r0, #0
	ble _080160FC
	ldr r0, [sp, #0x34]
	cmp r0, #0xb
	bgt _080160F6
	movs r0, #2
	str r0, [sp, #0x3c]
	mov r0, sb
	b _08016110
_080160F6:
	ldr r0, [sp, #0x34]
	cmp r0, #0xd
	bgt _08016104
_080160FC:
	mov r1, sb
	str r1, [sp, #0x3c]
	str r1, [sp, #0x38]
	b _08016112
_08016104:
	ldr r0, [sp, #0x34]
	cmp r0, #0xf
	bgt _08016112
	mov r0, sb
	str r0, [sp, #0x3c]
	movs r0, #0
_08016110:
	str r0, [sp, #0x38]
_08016112:
	ldr r0, [sp, #0x34]
	cmp r0, #0xf
	ble _08016178
	movs r0, #0x10
	str r0, [sp, #0x34]
	ldr r1, [sp, #0x30]
	adds r1, #0x78
	ldr r2, [sp, #0x34]
	adds r2, #0x50
	str r6, [sp]
	mov r0, sl
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r3, r7, #0
	bl sub_08015818
	ldr r1, [sp, #0x30]
	adds r1, #0x78
	ldr r2, [sp, #0x34]
	adds r2, #0x50
	str r6, [sp]
	mov r0, sl
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r3, r7, #0
	bl sub_08015C08
	bl sub_08009BD0
	movs r0, #0
	adds r1, r5, #0
	bl sub_0801583C
	movs r0, #1
	adds r1, r4, #0
	bl sub_0801583C
	mov r0, sp
	add r0, r8
	adds r0, #0xc
	ldrb r0, [r0]
	ldr r1, [sp, #0x48]
	cmp r0, r1
	bhi _080161FE
	movs r0, #1
	add r8, r0
	movs r1, #0
	str r1, [sp, #0x48]
	bl sub_08015714
	b _080161FE
_08016178:
	ldr r0, [sp, #0x30]
	ldr r1, [sp, #0x38]
	adds r0, r0, r1
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x34]
	ldr r1, [sp, #0x3c]
	adds r0, r0, r1
	str r0, [sp, #0x34]
	ldr r1, [sp, #0x30]
	adds r1, #0x78
	ldr r2, [sp, #0x34]
	adds r2, #0x50
	str r6, [sp]
	mov r0, sl
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r3, r7, #0
	bl sub_08015818
	ldr r1, [sp, #0x30]
	adds r1, #0x78
	ldr r2, [sp, #0x34]
	adds r2, #0x50
	str r6, [sp]
	mov r0, sl
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r3, r7, #0
	bl sub_08015C08
	bl sub_08009BD0
	movs r0, #0
	adds r1, r5, #0
	bl sub_0801583C
	movs r0, #1
	adds r1, r4, #0
	bl sub_0801583C
	mov r0, sp
	add r0, r8
	adds r0, #0xc
	ldrb r0, [r0]
	ldr r1, [sp, #0x48]
	cmp r0, r1
	bhi _080161E2
	movs r0, #1
	add r8, r0
	movs r1, #0
	str r1, [sp, #0x48]
	bl sub_08015714
_080161E2:
	mov r0, r8
	cmp r0, #1
	bls _080161EC
	movs r1, #0
	mov r8, r1
_080161EC:
	ldr r0, [sp, #0x48]
	adds r0, #1
	str r0, [sp, #0x48]
	bl sub_080154B4
	cmp r0, #1
	beq _080161FC
	b _080160DE
_080161FC:
	b _08015FD8
_080161FE:
	mov r1, r8
	cmp r1, #1
	bls _08016208
	movs r0, #0
	mov r8, r0
_08016208:
	ldr r1, [sp, #0x48]
	adds r1, #1
	str r1, [sp, #0x48]
	bl sub_080154B4
	cmp r0, #1
	bne _08016218
	b _08015FD8
_08016218:
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [sp, #0x38]
	movs r0, #0
	str r0, [sp, #0x3c]
	movs r5, #0
	ldr r0, [sp, #0x54]
	mov sb, r0
_08016228:
	bl sub_08000BC0
	cmp r5, #0
	bne _08016254
	bl sub_08015778
	adds r1, r0, #0
	movs r0, #1
	str r0, [sp]
	str r5, [sp, #4]
	ldr r2, _08016250 @ =0x0832D564
	movs r3, #0
	bl sub_080156CC
	movs r1, #0
	mov r8, r1
	movs r0, #0
	str r0, [sp, #0x48]
	movs r5, #1
	b _080162E2
	.align 2, 0
_08016250: .4byte 0x0832D564
_08016254:
	cmp r5, #1
	bne _0801628C
	bl sub_08015778
	adds r1, r0, #0
	str r5, [sp]
	movs r0, #0
	str r0, [sp, #4]
	movs r0, #1
	ldr r2, _08016288 @ =0x0832DB00
	ldr r3, [sp, #0x44]
	bl sub_080156CC
	movs r1, #0
	mov r8, r1
	add r0, sp, #8
	ldrb r0, [r0]
	str r0, [sp, #0x48]
	movs r0, #0x80
	lsls r0, r0, #4
	str r0, [sp, #0x4c]
	movs r1, #0x25
	str r1, [sp, #0x50]
	movs r5, #2
	b _080162E2
	.align 2, 0
_08016288: .4byte 0x0832DB00
_0801628C:
	cmp r5, #2
	bne _080162B8
	bl sub_08015778
	adds r1, r0, #0
	movs r0, #1
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	movs r0, #1
	ldr r2, _080162B4 @ =0x0832E0DC
	movs r3, #0
	bl sub_080156CC
	movs r0, #1
	mov r8, r0
	movs r1, #0
	str r1, [sp, #0x48]
	movs r5, #3
	b _080162E2
	.align 2, 0
_080162B4: .4byte 0x0832E0DC
_080162B8:
	cmp r5, #3
	bne _080162E2
	bl sub_08015778
	adds r1, r0, #0
	movs r0, #1
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	movs r0, #1
	ldr r2, _080162F0 @ =0x0832E678
	ldr r3, [sp, #0x44]
	bl sub_080156CC
	movs r0, #1
	mov r8, r0
	mov r0, sp
	adds r0, #9
	ldrb r0, [r0]
	str r0, [sp, #0x48]
	movs r5, #4
_080162E2:
	ldr r0, [sp, #0x30]
	cmp r0, #8
	ble _080162F4
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [sp, #0x38]
	b _080163CC
	.align 2, 0
_080162F0: .4byte 0x0832E678
_080162F4:
	ldr r0, [sp, #0x30]
	cmp r0, #2
	ble _08016308
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [sp, #0x38]
	movs r1, #0xff
	add sl, r1
	movs r0, #0xff
	b _08016370
_08016308:
	ldr r0, [sp, #0x30]
	cmp r0, #0
	ble _08016316
	movs r0, #2
	rsbs r0, r0, #0
	str r0, [sp, #0x38]
	b _0801636C
_08016316:
	ldr r0, [sp, #0x30]
	movs r2, #4
	rsbs r2, r2, #0
	cmp r0, r2
	ble _08016328
	movs r0, #5
	rsbs r0, r0, #0
	str r0, [sp, #0x38]
	b _080163CC
_08016328:
	ldr r1, [sp, #0x30]
	movs r0, #0x14
	rsbs r0, r0, #0
	cmp r1, r0
	ble _08016346
	adds r0, #8
	str r0, [sp, #0x38]
	adds r0, r7, #0
	movs r1, #0x20
	bl sub_0803D34C
	subs r7, r7, r0
	adds r0, r6, #0
	movs r1, #0x40
	b _080163C6
_08016346:
	ldr r1, [sp, #0x30]
	movs r0, #0x28
	rsbs r0, r0, #0
	cmp r1, r0
	ble _08016378
	adds r0, #0x1a
	str r0, [sp, #0x38]
	adds r0, #0xd
	str r0, [sp, #0x3c]
	adds r0, r7, #0
	movs r1, #0x18
	bl sub_0803D34C
	subs r7, r7, r0
	adds r0, r6, #0
	movs r1, #0x40
	bl sub_0803D34C
	subs r6, r6, r0
_0801636C:
	movs r0, #0xff
	add sl, r0
_08016370:
	mov r1, sl
	ands r1, r0
	mov sl, r1
	b _080163CC
_08016378:
	ldr r1, [sp, #0x30]
	movs r0, #0x50
	rsbs r0, r0, #0
	cmp r1, r0
	ble _08016390
	adds r0, #0x40
	str r0, [sp, #0x38]
	adds r0, #0xd
	str r0, [sp, #0x3c]
	adds r0, r7, #0
	movs r1, #0x10
	b _080163BC
_08016390:
	ldr r1, [sp, #0x30]
	movs r0, #0x8c
	rsbs r0, r0, #0
	cmp r1, r0
	ble _080163A6
	adds r0, #0x7e
	str r0, [sp, #0x38]
	str r2, [sp, #0x3c]
	adds r0, r7, #0
	movs r1, #0x10
	b _080163BC
_080163A6:
	ldr r1, [sp, #0x30]
	movs r0, #0xdc
	rsbs r0, r0, #0
	cmp r1, r0
	ble _080163CC
	adds r0, #0xd0
	str r0, [sp, #0x38]
	adds r0, #6
	str r0, [sp, #0x3c]
	adds r0, r7, #0
	movs r1, #8
_080163BC:
	bl sub_0803D34C
	subs r7, r7, r0
	adds r0, r6, #0
	movs r1, #0x20
_080163C6:
	bl sub_0803D34C
	subs r6, r6, r0
_080163CC:
	ldr r0, [sp, #0x30]
	ldr r1, [sp, #0x38]
	adds r0, r0, r1
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x34]
	ldr r1, [sp, #0x3c]
	adds r0, r0, r1
	str r0, [sp, #0x34]
	ldr r1, [sp, #0x4c]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	ldr r1, [sp, #0x50]
	lsls r4, r1, #0x10
	asrs r4, r4, #0x10
	adds r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x4c]
	adds r0, r4, #0
	movs r1, #2
	bl sub_0803D34C
	adds r4, r4, r0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	str r4, [sp, #0x50]
	cmp r7, #0
	bge _08016406
	movs r7, #1
_08016406:
	cmp r6, #0
	bge _0801640C
	movs r6, #1
_0801640C:
	ldr r1, [sp, #0x4c]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #5
	cmp r0, r1
	ble _0801641C
	str r1, [sp, #0x4c]
_0801641C:
	ldr r0, [sp, #0x30]
	movs r1, #0xdc
	rsbs r1, r1, #0
	cmp r0, r1
	ble _080164C4
	ldr r1, [sp, #0x30]
	adds r1, #0x78
	ldr r2, [sp, #0x34]
	adds r2, #0x50
	str r6, [sp]
	mov r0, sl
	str r0, [sp, #4]
	mov r0, sb
	adds r3, r7, #0
	bl sub_08015818
	ldr r1, [sp, #0x30]
	adds r1, #0x78
	ldr r2, [sp, #0x34]
	adds r2, #0x50
	str r6, [sp]
	mov r0, sl
	str r0, [sp, #4]
	ldr r0, [sp, #0x58]
	adds r3, r7, #0
	bl sub_08015C30
	bl sub_08009BD0
	movs r0, #0
	mov r1, sb
	bl sub_0801583C
	movs r0, #1
	ldr r1, [sp, #0x58]
	bl sub_0801583C
	ldr r1, [sp, #0x4c]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x18
	movs r1, #0x10
	subs r1, r1, r0
	bl sub_08015BF8
	mov r0, sp
	add r0, r8
	adds r0, #8
	ldrb r0, [r0]
	ldr r1, [sp, #0x48]
	cmp r0, r1
	bhi _0801648E
	movs r0, #1
	add r8, r0
	movs r1, #0
	str r1, [sp, #0x48]
	bl sub_08015714
_0801648E:
	mov r0, r8
	cmp r0, #1
	bls _08016498
	movs r1, #0
	mov r8, r1
_08016498:
	ldr r0, [sp, #0x48]
	adds r0, #1
	str r0, [sp, #0x48]
	bl sub_080154B4
	cmp r0, #1
	beq _080164A8
	b _08016228
_080164A8:
	b _08015FD8
_080164AA:
	bl sub_08000BC0
	cmp r5, #0
	bne _080164DA
	ldr r2, _080164C0 @ =0x08371CD8
	movs r0, #1
	str r0, [sp]
	str r5, [sp, #4]
	movs r0, #0
	movs r1, #0
	b _0801653E
	.align 2, 0
_080164C0: .4byte 0x08371CD8
_080164C4:
	str r1, [sp, #0x30]
	movs r0, #0
	movs r1, #0
	bl sub_08015688
	movs r0, #1
	movs r1, #0
	bl sub_08015688
	movs r5, #0
	b _080164AA
_080164DA:
	cmp r5, #1
	bne _080164F0
	ldr r2, _080164EC @ =0x0837253C
	str r5, [sp]
	movs r0, #0
	str r0, [sp, #4]
	movs r1, #0
	b _0801651A
	.align 2, 0
_080164EC: .4byte 0x0837253C
_080164F0:
	cmp r5, #2
	bne _08016504
	bl sub_0801576C
	adds r1, r0, #0
	ldr r2, _08016500 @ =0x0832ABA0
	b _08016534
	.align 2, 0
_08016500: .4byte 0x0832ABA0
_08016504:
	cmp r5, #3
	bne _08016528
	bl sub_0801576C
	adds r1, r0, #0
	ldr r2, _08016524 @ =0x0832B13C
	movs r0, #1
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	movs r0, #1
_0801651A:
	ldr r3, [sp, #0x44]
	bl sub_080156CC
	b _08016568
	.align 2, 0
_08016524: .4byte 0x0832B13C
_08016528:
	cmp r5, #4
	bne _0801654C
	bl sub_08015778
	adds r1, r0, #0
	ldr r2, _08016548 @ =0x0832B6EC
_08016534:
	movs r0, #1
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	movs r0, #1
_0801653E:
	movs r3, #0
	bl sub_080156CC
	b _08016568
	.align 2, 0
_08016548: .4byte 0x0832B6EC
_0801654C:
	cmp r5, #5
	bne _08016568
	bl sub_08015778
	adds r1, r0, #0
	ldr r2, _08016590 @ =0x0832BCF4
	movs r0, #1
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	movs r0, #1
	ldr r3, [sp, #0x44]
	bl sub_080156CC
_08016568:
	bl sub_08009BD0
	bl sub_080154B4
	cmp r0, #1
	bne _08016576
	b _08015FD8
_08016576:
	adds r5, #1
	cmp r5, #5
	bls _080164AA
	movs r0, #0
_0801657E:
	add sp, #0x5c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08016590: .4byte 0x0832BCF4

	thumb_func_start sub_08016594
sub_08016594: @ 0x08016594
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xf4
	ldr r1, _08016628 @ =0x08324EC4
	mov r0, sp
	movs r2, #8
	bl sub_0803DEBC
	add r6, sp, #8
	ldr r1, _0801662C @ =0x08324ECC
	adds r0, r6, #0
	movs r2, #8
	bl sub_0803DEBC
	add r5, sp, #0x10
	ldr r1, _08016630 @ =0x08324ED4
	adds r0, r5, #0
	movs r2, #0xa8
	bl sub_0803DEBC
	movs r0, #0x10
	rsbs r0, r0, #0
	str r0, [sp, #0xc0]
	movs r1, #0x28
	str r1, [sp, #0xc4]
	movs r7, #0x80
	lsls r7, r7, #1
	movs r2, #0
	str r2, [sp, #0xd4]
	movs r0, #0
	str r0, [sp, #0xe0]
	movs r1, #0x80
	lsls r1, r1, #5
	str r1, [sp, #0xd8]
	ldr r2, _08016634 @ =0x0000FFDB
	str r2, [sp, #0xdc]
	add r4, sp, #0xb8
	adds r0, r4, #0
	adds r1, r7, #0
	adds r2, r7, #0
	movs r3, #0
	bl sub_08015A94
	bl sub_08009BD0
	bl sub_08015B6C
	movs r0, #0x10
	movs r1, #0
	bl sub_08015BF8
	mov r0, sp
	ldrb r0, [r0]
	ldr r1, [sp, #0xc0]
	subs r1, #0x10
	movs r2, #0x18
	adds r3, r4, #0
	bl sub_08015B04
	mov r0, sp
	ldrb r0, [r0]
	movs r1, #1
	bl sub_080159C4
	bl sub_080154B4
	cmp r0, #1
	bne _08016638
_08016622:
	movs r0, #1
	b _0801685E
	.align 2, 0
_08016628: .4byte 0x08324EC4
_0801662C: .4byte 0x08324ECC
_08016630: .4byte 0x08324ED4
_08016634: .4byte 0x0000FFDB
_08016638:
	movs r0, #0
	str r0, [sp, #0xd0]
_0801663C:
	ldr r1, [sp, #0xc0]
	mov sl, r1
	ldr r2, [sp, #0xc4]
	str r2, [sp, #0xc8]
	str r7, [sp, #0xcc]
	movs r0, #0
	str r0, [sp, #0xe4]
	ldr r1, [sp, #0xd0]
	lsls r0, r1, #2
	adds r1, r0, #3
	lsls r1, r1, #1
	add r1, sp
	adds r1, #0x10
	movs r2, #0
	ldrsh r1, [r1, r2]
	mov r8, r0
	ldr r0, [sp, #0xd0]
	lsls r0, r0, #3
	str r0, [sp, #0xf0]
	ldr r2, [sp, #0xe4]
	cmp r2, r1
	blt _0801666A
	b _080167DC
_0801666A:
	add r0, sp, #0x10
	mov sb, r0
	mov r1, r8
	str r1, [sp, #0xe8]
	mov r0, r8
	adds r0, #2
	lsls r0, r0, #1
	add r0, sp
	adds r0, #0x10
	str r0, [sp, #0xec]
_0801667E:
	bl sub_08000BC0
	ldr r0, [sp, #0xf0]
	add r0, sb
	movs r2, #0
	ldrsh r4, [r0, r2]
	ldr r5, [sp, #0xe8]
	adds r5, #3
	lsls r5, r5, #1
	add r5, sb
	movs r0, #0
	ldrsh r1, [r5, r0]
	ldr r2, [sp, #0xe4]
	lsls r6, r2, #0xa
	adds r0, r6, #0
	bl sub_0803D34C
	mov r1, sl
	subs r4, r4, r1
	muls r0, r4, r0
	asrs r0, r0, #0xa
	add r0, sl
	str r0, [sp, #0xc0]
	ldr r0, [sp, #0xe8]
	adds r0, #1
	lsls r0, r0, #1
	add r0, sb
	movs r2, #0
	ldrsh r4, [r0, r2]
	movs r0, #0
	ldrsh r1, [r5, r0]
	adds r0, r6, #0
	bl sub_0803D34C
	ldr r1, [sp, #0xc8]
	subs r4, r4, r1
	muls r0, r4, r0
	asrs r0, r0, #0xa
	adds r0, r0, r1
	str r0, [sp, #0xc4]
	ldr r2, [sp, #0xec]
	movs r0, #0
	ldrsh r4, [r2, r0]
	movs r2, #0
	ldrsh r1, [r5, r2]
	adds r0, r6, #0
	bl sub_0803D34C
	ldr r1, [sp, #0xcc]
	subs r4, r4, r1
	muls r0, r4, r0
	asrs r0, r0, #0xa
	adds r7, r0, r1
	add r0, sp, #0xb8
	adds r1, r7, #0
	adds r2, r7, #0
	movs r3, #0
	bl sub_08015A94
	ldr r2, [sp, #0xd8]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	ldr r2, [sp, #0xdc]
	lsls r1, r2, #0x10
	asrs r2, r1, #0x10
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	str r1, [sp, #0xd8]
	ldr r1, _08016750 @ =0x0CFF0000
	cmp r0, r1
	bgt _0801671C
	movs r0, #0xd0
	lsls r0, r0, #4
	str r0, [sp, #0xd8]
	rsbs r0, r2, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xdc]
_0801671C:
	ldr r1, [sp, #0xd8]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #5
	cmp r0, r1
	ble _08016736
	str r1, [sp, #0xd8]
	ldr r2, [sp, #0xdc]
	lsls r0, r2, #0x10
	rsbs r0, r0, #0
	lsrs r0, r0, #0x10
	str r0, [sp, #0xdc]
_08016736:
	bl sub_08009BD0
	ldr r0, [sp, #0xd4]
	add r0, sp
	ldrb r1, [r0]
	adds r4, r0, #0
	cmp r1, #0
	bne _08016754
	movs r0, #1
	movs r1, #0
	bl sub_080159C4
	b _0801675C
	.align 2, 0
_08016750: .4byte 0x0CFF0000
_08016754:
	movs r0, #0
	movs r1, #0
	bl sub_080159C4
_0801675C:
	ldrb r0, [r4]
	movs r1, #1
	bl sub_080159C4
	ldrb r0, [r4]
	ldr r1, [sp, #0xc0]
	subs r1, #0x10
	ldr r2, [sp, #0xc4]
	subs r2, #0x10
	add r3, sp, #0xb8
	bl sub_08015B04
	ldr r1, [sp, #0xd8]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x18
	movs r1, #0x10
	subs r1, r1, r0
	bl sub_08015BF8
	ldr r0, [sp, #0xd4]
	add r0, sp
	adds r0, #8
	ldr r2, [sp, #0xe0]
	ldrb r0, [r0]
	cmp r2, r0
	bls _080167A8
	ldr r0, [sp, #0xd4]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xd4]
	cmp r0, #7
	bls _080167A2
	movs r0, #0
	str r0, [sp, #0xd4]
_080167A2:
	movs r1, #0
	str r1, [sp, #0xe0]
	b _080167B2
_080167A8:
	ldr r0, [sp, #0xe0]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0xe0]
_080167B2:
	bl sub_080154B4
	cmp r0, #1
	bne _080167BC
	b _08016622
_080167BC:
	ldr r0, [sp, #0xe4]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0xe4]
	mov r0, r8
	adds r0, #3
	lsls r0, r0, #1
	add r0, sp
	adds r0, #0x10
	movs r2, #0
	ldrsh r0, [r0, r2]
	ldr r1, [sp, #0xe4]
	cmp r1, r0
	bge _080167DC
	b _0801667E
_080167DC:
	ldr r0, [sp, #0xf0]
	add r0, sp
	adds r0, #0x10
	movs r2, #0
	ldrsh r4, [r0, r2]
	mov r5, r8
	adds r5, #3
	lsls r5, r5, #1
	add r5, sp
	adds r5, #0x10
	movs r0, #0
	ldrsh r1, [r5, r0]
	lsls r0, r1, #0xa
	bl sub_0803D34C
	mov r1, sl
	subs r4, r4, r1
	muls r0, r4, r0
	asrs r0, r0, #0xa
	add r0, sl
	str r0, [sp, #0xc0]
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #1
	add r0, sp
	adds r0, #0x10
	movs r2, #0
	ldrsh r4, [r0, r2]
	movs r0, #0
	ldrsh r1, [r5, r0]
	lsls r0, r1, #0xa
	bl sub_0803D34C
	ldr r1, [sp, #0xc8]
	subs r4, r4, r1
	muls r0, r4, r0
	asrs r0, r0, #0xa
	adds r0, r0, r1
	str r0, [sp, #0xc4]
	mov r0, r8
	adds r0, #2
	lsls r0, r0, #1
	add r0, sp
	adds r0, #0x10
	movs r2, #0
	ldrsh r4, [r0, r2]
	movs r0, #0
	ldrsh r1, [r5, r0]
	lsls r0, r1, #0xa
	bl sub_0803D34C
	ldr r1, [sp, #0xcc]
	subs r4, r4, r1
	muls r0, r4, r0
	asrs r0, r0, #0xa
	adds r7, r0, r1
	ldr r0, [sp, #0xd0]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xd0]
	cmp r0, #0x14
	bhi _0801685C
	b _0801663C
_0801685C:
	movs r0, #0
_0801685E:
	add sp, #0xf4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08016870
sub_08016870: @ 0x08016870
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x44
	ldr r1, _08016928 @ =0x08324EC2
	add r0, sp, #8
	movs r2, #2
	bl sub_0803DEBC
	movs r7, #5
	movs r0, #0x9f
	lsls r0, r0, #8
	mov r8, r0
	movs r1, #0
	mov sb, r1
	movs r2, #0
	str r2, [sp, #0x30]
	movs r0, #4
	str r0, [sp, #0x34]
	movs r1, #0x80
	lsls r1, r1, #5
	str r1, [sp, #0x3c]
	add r6, sp, #0xc
	str r7, [sp]
	movs r4, #0x9f
	str r4, [sp, #4]
	adds r0, r6, #0
	movs r1, #0x78
	movs r2, #0x54
	movs r3, #5
	bl sub_08015818
	add r5, sp, #0x1c
	str r7, [sp]
	str r4, [sp, #4]
	adds r0, r5, #0
	movs r1, #0x78
	movs r2, #0x54
	movs r3, #5
	bl sub_08015C58
	bl sub_08009BD0
	movs r0, #0
	adds r1, r6, #0
	bl sub_0801583C
	movs r0, #1
	adds r1, r5, #0
	bl sub_0801583C
	movs r0, #0
	movs r1, #1
	bl sub_08015688
	movs r0, #1
	movs r1, #1
	bl sub_08015688
	movs r0, #0
	movs r1, #0
	bl sub_080159C4
	movs r0, #1
	movs r1, #0
	bl sub_080159C4
	movs r0, #0
	bl sub_08015890
	movs r0, #1
	bl sub_08015BA8
	movs r0, #0x10
	movs r1, #0
	bl sub_08015BF8
	movs r2, #0x80
	lsls r2, r2, #1
	adds r5, r2, #0
	add r0, sp, #0xc
	mov sl, r0
	movs r6, #0x54
_0801691A:
	bl sub_08000BC0
	cmp r7, #0x1f
	bhi _0801692C
	adds r0, r7, #0
	movs r1, #0x26
	b _080169AE
	.align 2, 0
_08016928: .4byte 0x08324EC2
_0801692C:
	cmp r7, #0x34
	bhi _0801694E
	adds r0, r7, #0
	movs r1, #0x21
	bl sub_0803D34C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	bne _08016942
	movs r0, #1
_08016942:
	adds r0, r7, r0
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	mov r2, r8
	adds r0, r2, r5
	b _080169C6
_0801694E:
	cmp r7, #0x4f
	bhi _08016958
	adds r0, r7, #0
	movs r1, #0x1c
	b _080169AE
_08016958:
	cmp r7, #0x64
	bhi _0801697A
	adds r0, r7, #0
	movs r1, #0x18
	bl sub_0803D34C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	bne _0801696E
	movs r0, #1
_0801696E:
	adds r0, r7, r0
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	mov r2, r8
	adds r0, r2, r5
	b _080169C6
_0801697A:
	cmp r7, #0x7f
	bhi _08016984
	adds r0, r7, #0
	movs r1, #0x14
	b _080169AE
_08016984:
	cmp r7, #0x8f
	bhi _080169A6
	adds r0, r7, #0
	movs r1, #0x10
	bl sub_0803D34C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	bne _0801699A
	movs r0, #1
_0801699A:
	adds r0, r7, r0
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	mov r2, r8
	adds r0, r2, r5
	b _080169C6
_080169A6:
	cmp r7, #0xff
	bhi _080169CC
	adds r0, r7, #0
	movs r1, #0x10
_080169AE:
	bl sub_0803D34C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	bne _080169BC
	movs r0, #1
_080169BC:
	adds r0, r7, r0
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	mov r1, r8
	adds r0, r1, r5
_080169C6:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
_080169CC:
	ldr r0, _08016A44 @ =0x00009EFF
	cmp r8, r0
	bhi _080169D6
	movs r2, #0
	mov r8, r2
_080169D6:
	cmp r7, #0xff
	bls _08016A48
	movs r7, #0x80
	lsls r7, r7, #1
	movs r0, #0
	mov r8, r0
	str r7, [sp]
	str r0, [sp, #4]
	mov r0, sl
	movs r1, #0x78
	adds r2, r6, #0
	adds r3, r7, #0
	bl sub_08015818
	str r7, [sp]
	mov r1, r8
	str r1, [sp, #4]
	add r0, sp, #0x1c
	movs r1, #0x78
	adds r2, r6, #0
	adds r3, r7, #0
	bl sub_08015C58
	bl sub_08009BD0
	movs r0, #0
	mov r1, sl
	bl sub_0801583C
	movs r0, #1
	add r1, sp, #0x1c
	bl sub_0801583C
	ldr r2, [sp, #0x3c]
	lsls r1, r2, #0x10
	asrs r1, r1, #0x18
	movs r2, #0x10
	adds r0, r1, #0
	subs r1, r2, r1
	bl sub_08015BF8
	mov r0, sp
	add r0, sb
	adds r0, #8
	ldrb r0, [r0]
	ldr r1, [sp, #0x30]
	cmp r0, r1
	bhi _08016AC6
	movs r2, #1
	add sb, r2
	movs r0, #0
	str r0, [sp, #0x30]
	bl sub_08015714
	b _08016AC6
	.align 2, 0
_08016A44: .4byte 0x00009EFF
_08016A48:
	str r7, [sp]
	mov r1, r8
	lsrs r4, r1, #8
	str r4, [sp, #4]
	mov r0, sl
	movs r1, #0x78
	adds r2, r6, #0
	adds r3, r7, #0
	bl sub_08015818
	str r7, [sp]
	str r4, [sp, #4]
	add r0, sp, #0x1c
	movs r1, #0x78
	adds r2, r6, #0
	adds r3, r7, #0
	bl sub_08015C58
	bl sub_08009BD0
	movs r0, #0
	mov r1, sl
	bl sub_0801583C
	movs r0, #1
	add r1, sp, #0x1c
	bl sub_0801583C
	ldr r2, [sp, #0x3c]
	lsls r1, r2, #0x10
	asrs r1, r1, #0x18
	movs r2, #0x10
	adds r0, r1, #0
	subs r1, r2, r1
	bl sub_08015BF8
	mov r0, sp
	add r0, sb
	adds r0, #8
	ldrb r0, [r0]
	ldr r1, [sp, #0x30]
	cmp r0, r1
	bhi _08016AAA
	movs r2, #1
	add sb, r2
	movs r0, #0
	str r0, [sp, #0x30]
	bl sub_08015714
_08016AAA:
	mov r1, sb
	cmp r1, #1
	bls _08016AB4
	movs r2, #0
	mov sb, r2
_08016AB4:
	ldr r0, [sp, #0x30]
	adds r0, #1
	str r0, [sp, #0x30]
	bl sub_080154B4
	cmp r0, #1
	beq _08016AC4
	b _0801691A
_08016AC4:
	b _08016C08
_08016AC6:
	mov r1, sb
	cmp r1, #1
	bls _08016AD0
	movs r2, #0
	mov sb, r2
_08016AD0:
	ldr r0, [sp, #0x30]
	adds r0, #1
	str r0, [sp, #0x30]
	bl sub_080154B4
	cmp r0, #1
	bne _08016AE0
	b _08016C08
_08016AE0:
	ldr r1, _08016BFC @ =0xFFFFFED4
	str r1, [sp, #0x38]
	ldr r2, [sp, #0x34]
	lsls r0, r2, #5
	subs r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r2
	lsls r6, r0, #3
	add r1, sp, #8
	movs r0, #3
	strb r0, [r1]
	movs r0, #5
	strb r0, [r1, #1]
	movs r0, #0
	str r0, [sp, #0x2c]
	mov r1, r8
	lsrs r1, r1, #8
	str r1, [sp, #0x40]
	add r2, sp, #0xc
	mov sl, r2
	add r0, sp, #0x1c
	mov r8, r0
_08016B0C:
	bl sub_08000BC0
	ldr r1, [sp, #0x38]
	adds r6, r6, r1
	subs r1, #0xa
	str r1, [sp, #0x38]
	ldr r2, [sp, #0x3c]
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	ldr r2, _08016C00 @ =0x0000FF80
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x3c]
	cmp r6, #0
	bge _08016B32
	movs r6, #0
_08016B32:
	ldr r1, [sp, #0x3c]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	ldr r2, _08016C04 @ =0x000007FF
	cmp r0, r2
	bgt _08016B44
	movs r0, #0x80
	lsls r0, r0, #4
	str r0, [sp, #0x3c]
_08016B44:
	adds r0, r6, #0
	movs r1, #0xfa
	lsls r1, r1, #2
	bl sub_0803D34C
	adds r5, r0, #0
	adds r5, #0x50
	str r7, [sp]
	ldr r4, [sp, #0x40]
	str r4, [sp, #4]
	mov r0, sl
	movs r1, #0x78
	adds r2, r5, #0
	adds r3, r7, #0
	bl sub_08015818
	str r7, [sp]
	str r4, [sp, #4]
	mov r0, r8
	movs r1, #0x78
	adds r2, r5, #0
	adds r3, r7, #0
	bl sub_08015C58
	bl sub_08009BD0
	movs r0, #0
	mov r1, sl
	bl sub_0801583C
	movs r0, #1
	mov r1, r8
	bl sub_0801583C
	ldr r1, [sp, #0x3c]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x18
	movs r1, #0x10
	subs r1, r1, r0
	bl sub_08015BF8
	mov r0, sp
	add r0, sb
	adds r0, #8
	ldrb r0, [r0]
	ldr r2, [sp, #0x30]
	cmp r0, r2
	bhi _08016BB0
	movs r0, #1
	add sb, r0
	movs r1, #0
	str r1, [sp, #0x30]
	bl sub_08015714
_08016BB0:
	mov r2, sb
	cmp r2, #1
	bls _08016BBA
	movs r0, #0
	mov sb, r0
_08016BBA:
	ldr r1, [sp, #0x30]
	adds r1, #1
	str r1, [sp, #0x30]
	bl sub_080154B4
	cmp r0, #1
	beq _08016C08
	ldr r2, [sp, #0x2c]
	adds r2, #1
	str r2, [sp, #0x2c]
	cmp r2, #0xc
	bls _08016B0C
	bl sub_08000BC0
	bl sub_08009BD0
	movs r0, #1
	movs r1, #0
	bl sub_08015688
	bl sub_08015B60
	movs r0, #0x10
	movs r1, #0
	bl sub_08015BF8
	bl sub_080154B4
	cmp r0, #1
	beq _08016C08
	movs r0, #0
	b _08016C0A
	.align 2, 0
_08016BFC: .4byte 0xFFFFFED4
_08016C00: .4byte 0x0000FF80
_08016C04: .4byte 0x000007FF
_08016C08:
	movs r0, #1
_08016C0A:
	add sp, #0x44
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08016C1C
sub_08016C1C: @ 0x08016C1C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x108
	ldr r1, _08016CF8 @ =0x08324F7C
	add r0, sp, #8
	movs r2, #0xe0
	bl sub_0803DEBC
	add r6, sp, #0xe8
	ldr r1, _08016CFC @ =0x0832505C
	adds r0, r6, #0
	movs r2, #0xe
	bl sub_0803DEBC
	movs r7, #0
	movs r5, #0x80
	lsls r5, r5, #1
	movs r0, #0x80
	lsls r0, r0, #7
	movs r1, #4
	bl sub_0803D34C
	mov r8, r0
	add r4, sp, #0xf8
	str r5, [sp]
	str r7, [sp, #4]
	adds r0, r4, #0
	movs r1, #0x78
	movs r2, #0x50
	adds r3, r5, #0
	bl sub_08015818
	movs r0, #1
	adds r1, r4, #0
	bl sub_0801583C
	movs r0, #1
	movs r1, #0
	bl sub_08015688
	movs r0, #1
	movs r1, #0
	bl sub_08015688
_08016C76:
	movs r4, #0
	ldrb r0, [r6]
	cmp r4, r0
	bhs _08016CC0
	movs r5, #0
_08016C80:
	bl sub_08000BC0
	cmp r4, #3
	bhi _08016CAA
	bl sub_08015778
	adds r1, r0, #0
	lsls r0, r7, #2
	adds r0, r0, r4
	lsls r0, r0, #2
	add r0, sp
	adds r0, #8
	ldr r2, [r0]
	movs r0, #1
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	movs r0, #1
	adds r3, r5, #0
	bl sub_080156CC
_08016CAA:
	bl sub_08009BD0
	bl sub_080154B4
	cmp r0, #1
	beq _08016CF2
	add r5, r8
	adds r4, #1
	ldrb r0, [r6]
	cmp r4, r0
	blo _08016C80
_08016CC0:
	cmp r7, #0
	bne _08016CD4
	movs r0, #0
	movs r1, #0
	bl sub_08015688
	movs r0, #1
	movs r1, #1
	bl sub_08015688
_08016CD4:
	bl sub_08015714
	adds r6, #1
	adds r7, #1
	cmp r7, #0xd
	bls _08016C76
	movs r4, #0
_08016CE2:
	bl sub_08000BC0
	bl sub_08009BD0
	bl sub_080154B4
	cmp r0, #1
	bne _08016D00
_08016CF2:
	movs r0, #1
	b _08016D08
	.align 2, 0
_08016CF8: .4byte 0x08324F7C
_08016CFC: .4byte 0x0832505C
_08016D00:
	adds r4, #1
	cmp r4, #0x3b
	bls _08016CE2
	movs r0, #0
_08016D08:
	add sp, #0x108
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08016D14
sub_08016D14: @ 0x08016D14
	push {lr}
	bl sub_08015B60
	movs r0, #0x10
	movs r1, #0
	bl sub_08015BF8
	bl sub_08015C7C
	cmp r0, #1
	beq _08016D46
	bl sub_08016594
	cmp r0, #1
	beq _08016D46
	bl sub_08016870
	cmp r0, #1
	beq _08016D46
	bl sub_08016C1C
	cmp r0, #1
	beq _08016D46
	movs r0, #0
	b _08016D48
_08016D46:
	movs r0, #1
_08016D48:
	pop {r1}
	bx r1

	thumb_func_start sub_08016D4C
sub_08016D4C: @ 0x08016D4C
	push {lr}
	movs r0, #0xa0
	lsls r0, r0, #0x13
	movs r1, #0x80
	lsls r1, r1, #3
	movs r2, #0
	bl sub_08000498
	movs r0, #0xc0
	lsls r0, r0, #0x13
	movs r1, #0xc0
	lsls r1, r1, #9
	movs r2, #0
	bl sub_08000498
	bl sub_080155F8
	bl sub_08015624
	bl sub_08015A14
	movs r1, #0x80
	lsls r1, r1, #0x13
	ldr r2, _08016D84 @ =0x00001042
	adds r0, r2, #0
	strh r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_08016D84: .4byte 0x00001042

	thumb_func_start sub_08016D88
sub_08016D88: @ 0x08016D88
	push {lr}
	bl sub_08000B84
	bl sub_08016D4C
	movs r0, #0
	movs r1, #0
	movs r2, #0x1e
	movs r3, #1
	bl sub_08015504
	cmp r0, #1
	beq _08016DE2
	bl sub_08016D14
	cmp r0, #1
	beq _08016DE2
	bl sub_0801B744
	movs r0, #1
	movs r1, #1
	movs r2, #5
	movs r3, #1
	bl sub_08015504
	cmp r0, #1
	beq _08016DE2
	movs r0, #0
	movs r1, #0
	bl sub_08015688
	movs r0, #1
	movs r1, #0
	bl sub_08015688
	movs r0, #0
	movs r1, #0
	bl sub_080159C4
	movs r0, #1
	movs r1, #0
	bl sub_080159C4
	movs r0, #0
	b _08016E14
_08016DE2:
	bl sub_0801B744
	movs r0, #1
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl sub_08015504
	movs r0, #0
	movs r1, #0
	bl sub_08015688
	movs r0, #1
	movs r1, #0
	bl sub_08015688
	movs r0, #0
	movs r1, #0
	bl sub_080159C4
	movs r0, #1
	movs r1, #0
	bl sub_080159C4
	movs r0, #1
_08016E14:
	pop {r1}
	bx r1

	thumb_func_start sub_08016E18
sub_08016E18: @ 0x08016E18
	push {lr}
	adds r3, r0, #0
	adds r2, r1, #0
	movs r0, #0xa0
	lsls r0, r0, #0x13
	adds r1, r3, #0
	bl sub_080002EC
	pop {r0}
	bx r0

	thumb_func_start sub_08016E2C
sub_08016E2C: @ 0x08016E2C
	push {lr}
	ldr r0, _08016E3C @ =0x0836EA6C
	movs r1, #0x40
	bl sub_08016E18
	pop {r0}
	bx r0
	.align 2, 0
_08016E3C: .4byte 0x0836EA6C

	thumb_func_start sub_08016E40
sub_08016E40: @ 0x08016E40
	push {lr}
	ldr r0, _08016E50 @ =0x08370698
	movs r1, #0x92
	bl sub_08016E18
	pop {r0}
	bx r0
	.align 2, 0
_08016E50: .4byte 0x08370698

	thumb_func_start sub_08016E54
sub_08016E54: @ 0x08016E54
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	ldr r1, _08016E90 @ =0x04000008
	movs r0, #0x8d
	strh r0, [r1]
	movs r4, #0
_08016E62:
	lsls r0, r4, #6
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r0, r0, r1
	lsls r1, r4, #4
	subs r1, r1, r4
	lsls r1, r1, #2
	adds r1, r5, r1
	movs r2, #0x3c
	bl sub_080002EC
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x13
	bls _08016E62
	ldr r1, _08016E94 @ =0x0600C000
	adds r0, r6, #0
	bl sub_0803D358
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08016E90: .4byte 0x04000008
_08016E94: .4byte 0x0600C000

	thumb_func_start sub_08016E98
sub_08016E98: @ 0x08016E98
	push {lr}
	ldr r0, _08016EA8 @ =0x0836E548
	ldr r1, _08016EAC @ =0x0836EAAC
	bl sub_08016E54
	pop {r0}
	bx r0
	.align 2, 0
_08016EA8: .4byte 0x0836E548
_08016EAC: .4byte 0x0836EAAC

	thumb_func_start sub_08016EB0
sub_08016EB0: @ 0x08016EB0
	push {lr}
	ldr r0, _08016EC0 @ =0x0836EF5C
	ldr r1, _08016EC4 @ =0x0837072C
	bl sub_08016E54
	pop {r0}
	bx r0
	.align 2, 0
_08016EC0: .4byte 0x0836EF5C
_08016EC4: .4byte 0x0837072C

	thumb_func_start sub_08016EC8
sub_08016EC8: @ 0x08016EC8
	push {lr}
	sub sp, #4
	mov r2, sp
	movs r3, #0x80
	lsls r3, r3, #1
	adds r1, r3, #0
	strh r1, [r2]
	cmp r0, #0
	bne _08016EE8
	movs r2, #0x80
	lsls r2, r2, #0x13
	mov r0, sp
	ldrh r1, [r0]
	ldrh r0, [r2]
	bics r0, r1
	b _08016EF4
_08016EE8:
	movs r2, #0x80
	lsls r2, r2, #0x13
	mov r1, sp
	ldrh r0, [r2]
	ldrh r1, [r1]
	orrs r0, r1
_08016EF4:
	strh r0, [r2]
	add sp, #4
	pop {r0}
	bx r0

	thumb_func_start sub_08016EFC
sub_08016EFC: @ 0x08016EFC
	push {r4, lr}
	bl sub_08016E2C
	bl sub_08016E98
	movs r0, #1
	bl sub_08016EC8
	movs r0, #1
	movs r1, #0
	movs r2, #0x19
	movs r3, #0
	bl sub_08015504
	movs r4, #0
_08016F1A:
	bl sub_08009BD0
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0x2d
	bls _08016F1A
	movs r0, #1
	movs r1, #1
	movs r2, #0x19
	movs r3, #0
	bl sub_08015504
	movs r0, #0
	bl sub_08016EC8
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08016F40
sub_08016F40: @ 0x08016F40
	push {r4, lr}
	bl sub_08016E40
	bl sub_08016EB0
	movs r0, #1
	bl sub_08016EC8
	movs r0, #1
	movs r1, #0
	movs r2, #0x19
	movs r3, #1
	bl sub_08015504
	cmp r0, #1
	beq _08016F96
	movs r4, #0
_08016F62:
	bl sub_08000BC0
	bl sub_08009BD0
	bl sub_080154B4
	cmp r0, #1
	beq _08016F96
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0x2d
	bls _08016F62
	movs r0, #0
	movs r1, #1
	movs r2, #0x19
	movs r3, #1
	bl sub_08015504
	cmp r0, #1
	beq _08016F96
	movs r0, #0
	bl sub_08016EC8
	movs r0, #0
	b _08016FAA
_08016F96:
	movs r0, #1
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl sub_08015504
	movs r0, #0
	bl sub_08016EC8
	movs r0, #1
_08016FAA:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_08016FB0
sub_08016FB0: @ 0x08016FB0
	push {r4, lr}
	movs r4, #0
_08016FB4:
	bl sub_08009BD0
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #7
	bls _08016FB4
	bl sub_08016EFC
	movs r4, #0
_08016FC8:
	bl sub_08000BC0
	bl sub_08009BD0
	bl sub_080154B4
	cmp r0, #1
	beq _08016FEA
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #7
	bls _08016FC8
	bl sub_08016F40
	cmp r0, #1
	bne _08016FEE
_08016FEA:
	movs r0, #1
	b _0801700C
_08016FEE:
	movs r4, #0
_08016FF0:
	bl sub_08000BC0
	bl sub_08009BD0
	bl sub_080154B4
	cmp r0, #1
	beq _08016FEA
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #7
	bls _08016FF0
	movs r0, #0
_0801700C:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08017014
sub_08017014: @ 0x08017014
	push {lr}
	movs r0, #0xa0
	lsls r0, r0, #0x13
	movs r1, #0x80
	lsls r1, r1, #3
	movs r2, #0
	bl sub_08000498
	movs r0, #0xc0
	lsls r0, r0, #0x13
	movs r1, #0xc0
	lsls r1, r1, #9
	movs r2, #0
	bl sub_08000498
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r0, #0x41
	strh r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08017040
sub_08017040: @ 0x08017040
	push {lr}
	bl sub_08000B84
	bl sub_08017014
	bl sub_08016FB0
	cmp r0, #1
	beq _08017056
	movs r0, #0
	b _08017058
_08017056:
	movs r0, #1
_08017058:
	pop {r1}
	bx r1

	thumb_func_start sub_0801705C
sub_0801705C: @ 0x0801705C
	push {lr}
	movs r0, #0xa0
	lsls r0, r0, #0x13
	ldr r1, _0801707C @ =0x083551A8
	movs r2, #0xf0
	lsls r2, r2, #1
	bl sub_080002EC
	ldr r0, _08017080 @ =0x05000200
	ldr r1, _08017084 @ =0x0838C3EC
	movs r2, #0x12
	bl sub_080002EC
	pop {r0}
	bx r0
	.align 2, 0
_0801707C: .4byte 0x083551A8
_08017080: .4byte 0x05000200
_08017084: .4byte 0x0838C3EC

	thumb_func_start sub_08017088
sub_08017088: @ 0x08017088
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	ldr r1, _080170C4 @ =0x04000008
	movs r0, #0x8d
	strh r0, [r1]
	movs r4, #0
_08017096:
	lsls r0, r4, #6
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r0, r0, r1
	lsls r1, r4, #4
	subs r1, r1, r4
	lsls r1, r1, #2
	adds r1, r5, r1
	movs r2, #0x3c
	bl sub_080002EC
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x13
	bls _08017096
	ldr r1, _080170C8 @ =0x0600C000
	adds r0, r6, #0
	bl sub_0803D358
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080170C4: .4byte 0x04000008
_080170C8: .4byte 0x0600C000

	thumb_func_start sub_080170CC
sub_080170CC: @ 0x080170CC
	push {lr}
	ldr r0, _080170DC @ =0x08352BB8
	ldr r1, _080170E0 @ =0x08355388
	bl sub_08017088
	pop {r0}
	bx r0
	.align 2, 0
_080170DC: .4byte 0x08352BB8
_080170E0: .4byte 0x08355388

	thumb_func_start sub_080170E4
sub_080170E4: @ 0x080170E4
	push {lr}
	sub sp, #4
	mov r2, sp
	movs r3, #0x80
	lsls r3, r3, #1
	adds r1, r3, #0
	strh r1, [r2]
	cmp r0, #0
	bne _08017104
	movs r2, #0x80
	lsls r2, r2, #0x13
	mov r0, sp
	ldrh r1, [r0]
	ldrh r0, [r2]
	bics r0, r1
	b _08017110
_08017104:
	movs r2, #0x80
	lsls r2, r2, #0x13
	mov r1, sp
	ldrh r0, [r2]
	ldrh r1, [r1]
	orrs r0, r1
_08017110:
	strh r0, [r2]
	add sp, #4
	pop {r0}
	bx r0

	thumb_func_start sub_08017118
sub_08017118: @ 0x08017118
	push {lr}
	sub sp, #4
	mov r2, sp
	movs r3, #0x80
	lsls r3, r3, #5
	adds r1, r3, #0
	strh r1, [r2]
	cmp r0, #0
	bne _08017138
	movs r2, #0x80
	lsls r2, r2, #0x13
	mov r0, sp
	ldrh r1, [r0]
	ldrh r0, [r2]
	bics r0, r1
	b _08017144
_08017138:
	movs r2, #0x80
	lsls r2, r2, #0x13
	mov r1, sp
	ldrh r0, [r2]
	ldrh r1, [r1]
	orrs r0, r1
_08017144:
	strh r0, [r2]
	add sp, #4
	pop {r0}
	bx r0

	thumb_func_start sub_0801714C
sub_0801714C: @ 0x0801714C
	push {r4, lr}
	adds r4, r1, #0
	adds r3, r2, #0
	cmp r0, #0
	blt _08017180
	lsls r2, r0, #3
	movs r0, #0xe0
	lsls r0, r0, #0x13
	adds r2, r2, r0
	ldrh r1, [r2]
	movs r0, #0xff
	lsls r0, r0, #8
	ands r0, r1
	movs r1, #0xff
	ands r3, r1
	orrs r0, r3
	strh r0, [r2]
	ldrh r1, [r2, #2]
	movs r0, #0xfe
	lsls r0, r0, #8
	ands r0, r1
	ldr r3, _08017188 @ =0x000001FF
	adds r1, r3, #0
	ands r4, r1
	orrs r0, r4
	strh r0, [r2, #2]
_08017180:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08017188: .4byte 0x000001FF

	thumb_func_start sub_0801718C
sub_0801718C: @ 0x0801718C
	push {r4, lr}
	sub sp, #4
	adds r3, r1, #0
	cmp r0, #0
	blt _080171CE
	lsls r0, r0, #3
	movs r1, #0xe0
	lsls r1, r1, #0x13
	adds r4, r0, r1
	mov r2, sp
	ldrh r1, [r4]
	ldr r0, _080171BC @ =0x0000FCFF
	ands r0, r1
	strh r0, [r2]
	cmp r3, #0
	bne _080171C0
	mov r0, sp
	ldrh r0, [r0]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	b _080171C8
	.align 2, 0
_080171BC: .4byte 0x0000FCFF
_080171C0:
	mov r0, sp
	mov r1, sp
	ldrh r1, [r1]
	strh r1, [r0]
_080171C8:
	mov r0, sp
	ldrh r0, [r0]
	strh r0, [r4]
_080171CE:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080171D8
sub_080171D8: @ 0x080171D8
	push {r4, r5, r6, lr}
	adds r4, r1, #0
	adds r6, r2, #0
	adds r5, r3, #0
	cmp r0, #0
	beq _080171F0
	ldr r1, [r5]
	lsls r1, r1, #5
	ldr r2, _08017224 @ =0x06010000
	adds r1, r1, r2
	bl sub_0803D358
_080171F0:
	lsls r3, r4, #3
	movs r0, #0xe0
	lsls r0, r0, #0x13
	adds r3, r3, r0
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r1, #0
	strh r0, [r3]
	movs r2, #0x80
	lsls r2, r2, #8
	adds r0, r2, #0
	strh r0, [r3, #2]
	lsls r2, r6, #0xc
	ldr r1, [r5]
	movs r0, #0x80
	lsls r0, r0, #3
	adds r4, r0, #0
	adds r0, r1, #0
	orrs r0, r4
	orrs r2, r0
	strh r2, [r3, #4]
	adds r1, #8
	str r1, [r5]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08017224: .4byte 0x06010000

	thumb_func_start sub_08017228
sub_08017228: @ 0x08017228
	push {r4, r5, r6, lr}
	sub sp, #0xc4
	ldr r1, _0801726C @ =0x0832506C
	mov r0, sp
	movs r2, #0xc0
	bl sub_0803DEBC
	movs r0, #0
	add r1, sp, #0xc0
	str r0, [r1]
	movs r4, #0
	adds r6, r1, #0
	mov r5, sp
_08017242:
	ldr r0, [r5]
	adds r1, r4, #0
	movs r2, #0
	adds r3, r6, #0
	bl sub_080171D8
	movs r1, #3
	ands r1, r4
	lsls r1, r1, #5
	adds r1, #0x38
	adds r0, r4, #0
	movs r2, #0x70
	bl sub_0801714C
	cmp r4, #3
	bhi _08017270
	adds r0, r4, #0
	movs r1, #1
	bl sub_0801718C
	b _08017278
	.align 2, 0
_0801726C: .4byte 0x0832506C
_08017270:
	adds r0, r4, #0
	movs r1, #0
	bl sub_0801718C
_08017278:
	adds r5, #4
	adds r4, #1
	cmp r4, #0x2f
	bls _08017242
	add sp, #0xc4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08017288
sub_08017288: @ 0x08017288
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	adds r6, r1, #0
	lsls r2, r2, #0x12
	lsrs r4, r2, #0x10
	adds r1, r4, #4
	cmp r4, r1
	bge _080172AC
	adds r5, r1, #0
_0801729A:
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_0801718C
	adds r1, r4, #1
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	cmp r4, r5
	blt _0801729A
_080172AC:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080172B4
sub_080172B4: @ 0x080172B4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	bl sub_0801705C
	bl sub_080170CC
	movs r0, #1
	bl sub_080170E4
	bl sub_08017228
	movs r0, #1
	bl sub_08017118
	movs r0, #5
	mov r8, r0
	movs r7, #0
	movs r4, #0
	movs r0, #0xd3
	bl sub_0801B750
	movs r0, #1
	movs r1, #0
	movs r2, #0xa
	movs r3, #1
	bl sub_08015504
	movs r6, #0
	ldr r5, _08017360 @ =0x00000707
_080172F0:
	bl sub_08000BC0
	bl sub_08009BD0
	cmp r7, r8
	blt _08017326
	adds r0, r4, #0
	movs r1, #0
	bl sub_08017288
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0xb
	bls _08017310
	movs r4, #0
_08017310:
	adds r0, r4, #0
	movs r1, #1
	bl sub_08017288
	movs r7, #0
	movs r0, #0x14
	mov r8, r0
	cmp r4, #0
	beq _08017326
	movs r0, #2
	mov r8, r0
_08017326:
	ldr r0, _08017364 @ =0x02000020
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _08017386
	adds r7, #1
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, r5
	bls _080172F0
	bl sub_0801B744
	movs r0, #0
	movs r1, #1
	movs r2, #0x1e
	movs r3, #0
	bl sub_08015504
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r1, [r2]
	ldr r0, _08017368 @ =0x000080FF
	ands r0, r1
	strh r0, [r2]
	movs r0, #1
	b _080173CE
	.align 2, 0
_08017360: .4byte 0x00000707
_08017364: .4byte 0x02000020
_08017368: .4byte 0x000080FF
_0801736C:
	bl sub_08009BD0
	movs r0, #0
	adds r1, r5, #0
	bl sub_08017288
	adds r7, #1
	cmp r7, r8
	blt _080173A6
	cmp r5, #0
	bne _080173A2
	movs r5, #1
	b _080173A4
_08017386:
	movs r0, #1
	movs r1, #0x78
	bl sub_08000634
	movs r7, #0
	movs r0, #0xa
	mov r8, r0
	movs r5, #0
	adds r0, r4, #0
	movs r1, #0
	bl sub_08017288
	movs r6, #0
	b _0801736C
_080173A2:
	movs r5, #0
_080173A4:
	movs r7, #0
_080173A6:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0x45
	bls _0801736C
	bl sub_0801B744
	movs r0, #0
	movs r1, #1
	movs r2, #0x1e
	movs r3, #0
	bl sub_08015504
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r1, [r2]
	ldr r0, _080173D8 @ =0x000080FF
	ands r0, r1
	strh r0, [r2]
	movs r0, #0
_080173CE:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080173D8: .4byte 0x000080FF

	thumb_func_start sub_080173DC
sub_080173DC: @ 0x080173DC
	push {lr}
	bl sub_080172B4
	cmp r0, #1
	beq _080173EA
	movs r0, #0
	b _080173EC
_080173EA:
	movs r0, #1
_080173EC:
	pop {r1}
	bx r1

	thumb_func_start sub_080173F0
sub_080173F0: @ 0x080173F0
	push {r4, r5, lr}
	movs r0, #0xa0
	lsls r0, r0, #0x13
	movs r5, #0x80
	lsls r5, r5, #3
	adds r1, r5, #0
	movs r2, #0
	bl sub_08000498
	movs r0, #0xc0
	lsls r0, r0, #0x13
	movs r1, #0xc0
	lsls r1, r1, #9
	movs r2, #0
	bl sub_08000498
	movs r4, #0xe0
	lsls r4, r4, #0x13
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0
	bl sub_08000498
	movs r0, #0
	movs r2, #0x80
	lsls r2, r2, #2
	adds r1, r2, #0
_08017426:
	strh r1, [r4]
	adds r4, #8
	adds r0, #1
	cmp r0, #0x7f
	bls _08017426
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r0, #0x41
	strh r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08017440
sub_08017440: @ 0x08017440
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08000B84
	bl sub_080173F0
	adds r0, r4, #0
	bl sub_080173DC
	cmp r0, #1
	beq _0801745A
	movs r0, #0
	b _0801745C
_0801745A:
	movs r0, #1
_0801745C:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08017464
sub_08017464: @ 0x08017464
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08017490 @ =0x05000100
	ldr r1, [r4, #0x1c]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r1, r2
	ldrh r2, [r4, #0x20]
	ldr r3, _08017494 @ =0xFFFFFF00
	adds r2, r2, r3
	bl sub_080002EC
	ldr r0, _08017498 @ =0x05000220
	ldr r1, [r4, #0x24]
	adds r1, #0x20
	ldrh r2, [r4, #0x28]
	subs r2, #0x20
	bl sub_080002EC
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08017490: .4byte 0x05000100
_08017494: .4byte 0xFFFFFF00
_08017498: .4byte 0x05000220

	thumb_func_start sub_0801749C
sub_0801749C: @ 0x0801749C
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0xc0
	lsls r0, r0, #0x13
	adds r1, r1, r0
	cmp r2, #0
	bne _080174B6
	adds r0, r1, #0
	adds r1, r4, #0
	adds r2, r3, #0
	bl sub_080002C4
	b _080174BC
_080174B6:
	adds r0, r4, #0
	bl sub_0803D358
_080174BC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080174C4
sub_080174C4: @ 0x080174C4
	push {r4, r5, r6, r7, lr}
	adds r3, r0, #0
	adds r7, r1, #0
	adds r6, r2, #0
	movs r2, #0
	ldr r0, [r3, #0x30]
	cmp r0, #0
	beq _08017516
	ldr r5, [r3, #0x50]
	movs r1, #1
	adds r0, r3, #0
	adds r0, #0x54
	ldrb r0, [r0]
	cmp r1, r0
	bhs _08017518
	adds r4, r0, #0
_080174E4:
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #4
	adds r3, r0, r5
	adds r0, r3, #0
	adds r0, #0x51
	ldrb r0, [r0]
	cmp r0, r6
	bne _0801750A
	adds r0, r7, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801750A
	adds r0, r3, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801750A
	movs r2, #1
_0801750A:
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, r4
	blo _080174E4
	b _08017518
_08017516:
	movs r2, #1
_08017518:
	adds r0, r2, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08017520
sub_08017520: @ 0x08017520
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, [r4, #0x2c]
	cmp r0, #0
	beq _0801753E
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_0801749C
_0801753E:
	cmp r5, #0
	beq _080175B2
	ldr r0, [r4, #0x30]
	cmp r0, #0
	beq _080175B2
	movs r6, #0x96
	lsls r6, r6, #2
	lsls r1, r6, #6
	movs r2, #1
	movs r3, #0
	bl sub_0801749C
	ldr r0, _080175C0 @ =0x0600F800
	mov sl, r0
	adds r0, r4, #0
	adds r0, #0x35
	ldrb r3, [r0]
	adds r1, r4, #0
	adds r1, #0x37
	ldrb r0, [r1]
	adds r0, r3, r0
	mov sb, r1
	cmp r3, r0
	bge _080175B2
	adds r5, r4, #0
	adds r5, #0x34
	adds r7, r4, #0
	adds r7, #0x36
	ldrb r1, [r7]
	mov r8, r1
	mov ip, r3
_0801757C:
	ldrb r2, [r5]
	mov r1, r8
	adds r0, r2, r1
	adds r4, r3, #1
	cmp r2, r0
	bge _080175A6
	lsls r1, r2, #1
	lsls r0, r3, #6
	add r0, sl
	adds r3, r1, r0
_08017590:
	strh r6, [r3]
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r3, #2
	adds r2, #1
	ldrb r0, [r5]
	ldrb r1, [r7]
	adds r0, r0, r1
	cmp r2, r0
	blt _08017590
_080175A6:
	adds r3, r4, #0
	mov r1, sb
	ldrb r0, [r1]
	add r0, ip
	cmp r3, r0
	blt _0801757C
_080175B2:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080175C0: .4byte 0x0600F800

	thumb_func_start sub_080175C4
sub_080175C4: @ 0x080175C4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0xc
	mov r8, r0
	adds r4, r1, #0
	cmp r2, #1
	bne _080175D8
	bl sub_08009CA4
_080175D8:
	movs r0, #6
	ldrsh r7, [r4, r0]
	movs r0, #8
	ldrsh r6, [r4, r0]
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	bne _080175F0
	movs r0, #0xa
	ldrsh r5, [r4, r0]
	movs r0, #0xc
	ldrsh r2, [r4, r0]
	b _08017622
_080175F0:
	cmp r0, #1
	bne _08017608
	ldr r0, [r4]
	bl sub_08009CBC
	adds r5, r0, #2
	ldr r0, [r4]
	bl sub_08009CC8
	lsls r0, r0, #1
	adds r2, r0, #2
	b _08017622
_08017608:
	ldr r0, [r4]
	bl sub_08009CBC
	adds r5, r0, #2
	ldr r0, [r4]
	bl sub_08009CC8
	lsls r0, r0, #1
	adds r2, r0, #2
	movs r0, #0x1e
	subs r7, r0, r5
	movs r0, #8
	ldrsh r6, [r4, r0]
_08017622:
	str r2, [sp]
	movs r0, #0
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	mov r0, r8
	adds r1, r7, #0
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_08009C7C
	adds r0, r7, #1
	adds r1, r6, #1
	ldr r2, [r4]
	bl sub_08009D4C
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08017650
sub_08017650: @ 0x08017650
	push {lr}
	adds r3, r0, #0
	movs r2, #0
	ldr r1, _08017664 @ =0x0203A690
_08017658:
	ldr r0, [r1]
	cmp r0, r3
	bne _08017668
	movs r2, #4
	ldrsh r0, [r1, r2]
	b _08017674
	.align 2, 0
_08017664: .4byte 0x0203A690
_08017668:
	adds r1, #8
	adds r2, #1
	cmp r2, #0x13
	bls _08017658
	movs r0, #1
	rsbs r0, r0, #0
_08017674:
	pop {r1}
	bx r1

	thumb_func_start sub_08017678
sub_08017678: @ 0x08017678
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	mov r8, r1
	adds r7, r2, #0
	adds r6, r3, #0
	ldr r0, _080176A0 @ =0x020377F0
	movs r2, #0
	ldrsh r1, [r0, r2]
	mov r0, r8
	muls r0, r7, r0
	lsls r0, r0, #1
	adds r1, r1, r0
	ldr r0, _080176A4 @ =0x000003FF
	cmp r1, r0
	bhi _0801770E
	movs r4, #0
	ldr r1, _080176A8 @ =0x0203A690
	b _080176B4
	.align 2, 0
_080176A0: .4byte 0x020377F0
_080176A4: .4byte 0x000003FF
_080176A8: .4byte 0x0203A690
_080176AC:
	adds r1, #8
	adds r4, #1
	cmp r4, #0x13
	bhi _0801770E
_080176B4:
	ldr r0, [r1]
	cmp r0, #0
	bne _080176AC
	cmp r4, #0x13
	bhi _0801770E
	adds r0, r5, #0
	bl sub_08017650
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _0801770E
	ldr r0, _080176E8 @ =0x020377F0
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #5
	ldr r2, _080176EC @ =0x06010000
	adds r1, r0, r2
	cmp r6, #0
	bne _080176F0
	adds r0, r1, #0
	adds r1, r5, #0
	ldr r2, [sp, #0x18]
	bl sub_080002C4
	b _080176F6
	.align 2, 0
_080176E8: .4byte 0x020377F0
_080176EC: .4byte 0x06010000
_080176F0:
	adds r0, r5, #0
	bl sub_0803D358
_080176F6:
	ldr r1, _08017718 @ =0x0203A690
	lsls r0, r4, #3
	adds r0, r0, r1
	str r5, [r0]
	ldr r2, _0801771C @ =0x020377F0
	ldrh r1, [r2]
	strh r1, [r0, #4]
	mov r0, r8
	muls r0, r7, r0
	lsls r0, r0, #1
	adds r1, r1, r0
	strh r1, [r2]
_0801770E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08017718: .4byte 0x0203A690
_0801771C: .4byte 0x020377F0

	thumb_func_start sub_08017720
sub_08017720: @ 0x08017720
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sb, r0
	str r1, [sp, #4]
	ldr r0, [r0, #0x50]
	mov sl, r0
	movs r2, #0
	mov r0, sb
	adds r0, #0x54
	ldrb r0, [r0]
	cmp r2, r0
	bhs _080177A6
_08017740:
	lsls r0, r2, #3
	subs r0, r0, r2
	lsls r0, r0, #4
	mov r3, sl
	adds r1, r0, r3
	adds r0, r1, #0
	adds r0, #0x51
	ldrb r0, [r0]
	movs r3, #0x54
	add r3, sb
	mov r8, r3
	adds r7, r2, #1
	ldr r2, [sp, #4]
	cmp r0, r2
	bne _0801779A
	ldr r0, [r1, #0x30]
	cmp r0, #0
	beq _0801779A
	adds r6, r0, #0
	movs r4, #0
	adds r0, r1, #0
	adds r0, #0x34
	ldrb r3, [r0]
	cmp r4, r3
	bhs _0801779A
	adds r5, r0, #0
_08017774:
	lsls r0, r4, #3
	adds r0, r0, r6
	ldr r1, [r0]
	cmp r1, #0
	beq _0801778E
	movs r0, #0
	str r0, [sp]
	adds r0, r1, #0
	movs r1, #4
	movs r2, #4
	movs r3, #1
	bl sub_08017678
_0801778E:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldrb r0, [r5]
	cmp r4, r0
	blo _08017774
_0801779A:
	lsls r0, r7, #0x18
	lsrs r2, r0, #0x18
	mov r1, r8
	ldrb r1, [r1]
	cmp r2, r1
	blo _08017740
_080177A6:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080177B8
sub_080177B8: @ 0x080177B8
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r6, [r5, #0x38]
	movs r4, #0
	b _080177E6
_080177C4:
	lsls r0, r4, #3
	adds r0, r0, r6
	ldr r1, [r0]
	cmp r1, #0
	beq _080177DE
	movs r0, #0
	str r0, [sp]
	adds r0, r1, #0
	movs r1, #1
	movs r2, #1
	movs r3, #1
	bl sub_08017678
_080177DE:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r0, r5, #0
_080177E6:
	adds r0, #0x3c
	ldrb r0, [r0]
	cmp r4, r0
	blo _080177C4
	ldr r6, [r5, #0x40]
	movs r4, #0
	adds r0, r5, #0
	adds r0, #0x44
	adds r5, r0, #0
	b _0801781A
_080177FA:
	lsls r0, r4, #3
	adds r0, r0, r6
	ldr r1, [r0]
	cmp r1, #0
	beq _08017814
	movs r0, #0
	str r0, [sp]
	adds r0, r1, #0
	movs r1, #1
	movs r2, #1
	movs r3, #1
	bl sub_08017678
_08017814:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_0801781A:
	ldrb r0, [r5]
	cmp r4, r0
	blo _080177FA
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08017828
sub_08017828: @ 0x08017828
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r6, [r5, #0x48]
	movs r4, #0
	b _08017856
_08017834:
	lsls r0, r4, #3
	adds r0, r0, r6
	ldr r1, [r0]
	cmp r1, #0
	beq _0801784E
	movs r0, #0
	str r0, [sp]
	adds r0, r1, #0
	movs r1, #2
	movs r2, #4
	movs r3, #1
	bl sub_08017678
_0801784E:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r0, r5, #0
_08017856:
	adds r0, #0x4c
	ldrb r0, [r0]
	cmp r4, r0
	blo _08017834
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08017868
sub_08017868: @ 0x08017868
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	mov r8, r0
	movs r1, #0
_08017874:
	movs r0, #0x2c
	muls r0, r1, r0
	mov r3, r8
	adds r2, r0, r3
	ldr r3, [r2]
	adds r7, r1, #1
	cmp r3, #0
	beq _080178C2
	ldrb r1, [r2, #4]
	cmp r1, #0
	beq _080178C2
	movs r4, #6
	ldrsh r0, [r2, r4]
	cmp r0, #0
	blt _080178C2
	adds r6, r3, #0
	movs r4, #0
	cmp r4, r1
	bhs _080178C2
	adds r5, r2, #0
_0801789C:
	lsls r0, r4, #3
	adds r0, r0, r6
	ldr r1, [r0]
	cmp r1, #0
	beq _080178B6
	movs r0, #0
	str r0, [sp]
	adds r0, r1, #0
	movs r1, #4
	movs r2, #2
	movs r3, #1
	bl sub_08017678
_080178B6:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldrb r0, [r5, #4]
	cmp r4, r0
	blo _0801789C
_080178C2:
	lsls r0, r7, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #7
	bls _08017874
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080178D8
sub_080178D8: @ 0x080178D8
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r4, r1, #0
	movs r5, #0
	movs r1, #0
	cmp r1, r4
	bhs _080178FA
	adds r3, r6, #0
_080178E8:
	ldr r0, [r3]
	cmp r0, #0
	beq _080178F2
	ldrh r0, [r3, #4]
	adds r5, r5, r0
_080178F2:
	adds r3, #8
	adds r1, #1
	cmp r1, r4
	blo _080178E8
_080178FA:
	cmp r5, #1
	bhi _08017902
	movs r1, #0
	b _0801793E
_08017902:
	subs r1, r5, #1
	adds r0, r2, #0
	bl sub_0803DDFC
	adds r5, r0, #0
	movs r3, #0
	movs r1, #0
	cmp r1, r4
	bhs _0801793C
	ldr r0, [r6]
	cmp r0, #0
	beq _0801791E
	ldrh r3, [r6, #4]
	b _08017932
_0801791E:
	adds r1, #1
	cmp r1, r4
	bhs _0801793C
	lsls r0, r1, #3
	adds r2, r0, r6
	ldr r0, [r2]
	cmp r0, #0
	beq _0801791E
	ldrh r0, [r2, #4]
	adds r3, r3, r0
_08017932:
	subs r0, r3, #1
	cmp r0, r5
	blo _0801791E
	cmp r1, r4
	blo _0801793E
_0801793C:
	subs r1, r4, #1
_0801793E:
	lsls r0, r1, #3
	adds r0, r0, r6
	ldr r0, [r0]
	bl sub_08017650
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08017950
sub_08017950: @ 0x08017950
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	str r0, [sp]
	str r1, [sp, #4]
	adds r7, r2, #0
	mov sb, r3
	ldr r0, [r7, #0x50]
	str r0, [sp, #8]
	movs r1, #0
	mov r8, r1
	adds r0, r7, #0
	adds r0, #0x54
	ldrb r0, [r0]
	cmp r8, r0
	bhs _08017A00
	ldr r4, [sp, #8]
	adds r4, #0x34
	ldr r3, [sp, #8]
_0801797C:
	mov r2, r8
	cmp r2, #0
	beq _0801798C
	ldr r0, [sp, #4]
	add r0, r8
	ldrb r0, [r0]
	cmp r0, #0
	beq _080179EE
_0801798C:
	ldrb r0, [r4, #0x1d]
	ldr r1, [sp, #0x34]
	cmp r0, r1
	bne _080179EE
	ldr r2, [r3, #0x30]
	cmp r2, #0
	beq _080179EE
	movs r1, #2
	ldrsh r0, [r4, r1]
	cmp r0, #0
	blt _080179EE
	ldrb r1, [r4]
	adds r0, r2, #0
	mov r2, sb
	str r3, [sp, #0x10]
	bl sub_080178D8
	adds r5, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	ldr r3, [sp, #0x10]
	cmp r5, r0
	beq _080179EE
	movs r2, #2
	ldrsh r0, [r4, r2]
	lsls r0, r0, #3
	movs r1, #0xe0
	lsls r1, r1, #0x13
	adds r6, r0, r1
	ldrb r0, [r4, #8]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r6]
	ldrh r1, [r4, #6]
	ldr r2, _08017A4C @ =0x000001FF
	adds r0, r2, #0
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #8
	adds r0, r2, #0
	orrs r1, r0
	strh r1, [r6, #2]
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r1, #0
	orrs r5, r0
	strh r5, [r6, #4]
_080179EE:
	adds r4, #0x70
	adds r3, #0x70
	movs r2, #1
	add r8, r2
	adds r0, r7, #0
	adds r0, #0x54
	ldrb r0, [r0]
	cmp r8, r0
	blo _0801797C
_08017A00:
	ldr r3, [r7, #0x50]
	str r3, [sp, #8]
	movs r4, #0
	mov r8, r4
	adds r0, r7, #0
	adds r0, #0x54
	mov sl, r0
	subs r0, #6
	str r0, [sp, #0xc]
	mov r1, sl
	ldrb r1, [r1]
	cmp r8, r1
	bhs _08017AA2
	adds r4, r3, #0
	adds r4, #0x38
_08017A1E:
	mov r2, r8
	cmp r2, #0
	beq _08017A2E
	ldr r0, [sp, #4]
	add r0, r8
	ldrb r0, [r0]
	cmp r0, #0
	beq _08017A94
_08017A2E:
	ldrb r0, [r4, #0x19]
	ldr r3, [sp, #0x34]
	cmp r0, r3
	bne _08017A94
	movs r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, #0
	blt _08017A94
	ldr r2, [sp]
	cmp r2, r8
	bne _08017A50
	ldr r0, [r7, #0x40]
	adds r1, r7, #0
	adds r1, #0x44
	b _08017A56
	.align 2, 0
_08017A4C: .4byte 0x000001FF
_08017A50:
	ldr r0, [r7, #0x38]
	adds r1, r7, #0
	adds r1, #0x3c
_08017A56:
	ldrb r1, [r1]
	mov r2, sb
	bl sub_080178D8
	adds r5, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r5, r0
	beq _08017A94
	movs r3, #0
	ldrsh r0, [r4, r3]
	lsls r0, r0, #3
	movs r1, #0xe0
	lsls r1, r1, #0x13
	adds r6, r0, r1
	ldrb r0, [r4, #8]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r6]
	ldrh r0, [r4, #6]
	ldr r3, _08017B90 @ =0x000001FF
	adds r1, r3, #0
	ands r0, r1
	strh r0, [r6, #2]
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r1, #0
	orrs r5, r0
	strh r5, [r6, #4]
_08017A94:
	adds r4, #0x70
	movs r2, #1
	add r8, r2
	mov r3, sl
	ldrb r3, [r3]
	cmp r8, r3
	blo _08017A1E
_08017AA2:
	ldr r4, [sp, #0xc]
	movs r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, #0
	blt _08017B02
	ldr r0, [r7, #0x48]
	adds r1, r7, #0
	adds r1, #0x4c
	ldrb r1, [r1]
	mov r2, sb
	bl sub_080178D8
	adds r5, r0, #0
	cmp r5, #0
	blt _08017B02
	movs r2, #0
	ldrsh r0, [r4, r2]
	lsls r0, r0, #3
	movs r3, #0xe0
	lsls r3, r3, #0x13
	adds r6, r0, r3
	ldr r4, [sp]
	lsls r0, r4, #3
	subs r0, r0, r4
	lsls r0, r0, #4
	ldr r1, [sp, #8]
	adds r0, r0, r1
	adds r1, r0, #0
	adds r1, #0x44
	ldrb r1, [r1]
	ldr r3, _08017B94 @ =0xFFFFA000
	adds r2, r3, #0
	orrs r1, r2
	strh r1, [r6]
	adds r0, #0x42
	ldrh r1, [r0]
	ldr r0, _08017B90 @ =0x000001FF
	ands r0, r1
	movs r4, #0x80
	lsls r4, r4, #8
	adds r1, r4, #0
	orrs r0, r1
	strh r0, [r6, #2]
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r1, #0
	orrs r5, r0
	strh r5, [r6, #4]
_08017B02:
	movs r2, #0
	mov r8, r2
_08017B06:
	movs r0, #0x2c
	mov r3, r8
	muls r3, r0, r3
	adds r0, r3, #0
	ldr r1, [sp, #0x38]
	adds r4, r0, r1
	ldr r2, [r4]
	cmp r2, #0
	beq _08017B76
	ldrb r0, [r4, #4]
	cmp r0, #0
	beq _08017B76
	movs r3, #6
	ldrsh r0, [r4, r3]
	cmp r0, #0
	blt _08017B76
	ldrb r1, [r4, #4]
	adds r0, r2, #0
	mov r2, sb
	bl sub_080178D8
	adds r5, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r5, r0
	beq _08017B76
	ldr r2, [r4, #8]
	ldr r3, [r4, #0xc]
	asrs r3, r3, #8
	movs r1, #6
	ldrsh r0, [r4, r1]
	lsls r0, r0, #3
	movs r1, #0xe0
	lsls r1, r1, #0x13
	adds r6, r0, r1
	ldrh r1, [r4, #0x28]
	movs r4, #0xc0
	lsls r4, r4, #7
	adds r0, r4, #0
	orrs r1, r0
	movs r0, #0xff
	ands r3, r0
	orrs r1, r3
	strh r1, [r6]
	lsls r2, r2, #0xf
	lsrs r2, r2, #0x17
	movs r1, #0x80
	lsls r1, r1, #8
	adds r0, r1, #0
	orrs r2, r0
	strh r2, [r6, #2]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r2, #0
	orrs r5, r0
	strh r5, [r6, #4]
_08017B76:
	movs r3, #1
	add r8, r3
	mov r4, r8
	cmp r4, #7
	bls _08017B06
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08017B90: .4byte 0x000001FF
_08017B94: .4byte 0xFFFFA000

	thumb_func_start sub_08017B98
sub_08017B98: @ 0x08017B98
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
_08017B9E:
	movs r0, #0x2c
	muls r0, r4, r0
	adds r1, r0, r5
	ldr r0, [r1]
	cmp r0, #0
	beq _08017C00
	ldrb r0, [r1, #4]
	cmp r0, #0
	beq _08017C00
	movs r2, #6
	ldrsh r0, [r1, r2]
	cmp r0, #0
	blt _08017C00
	ldr r0, [r1, #8]
	ldr r3, [r1, #0x10]
	adds r0, r0, r3
	str r0, [r1, #8]
	ldr r2, [r1, #0x18]
	cmp r0, r2
	bge _08017BCC
	str r2, [r1, #8]
	rsbs r0, r3, #0
	str r0, [r1, #0x10]
_08017BCC:
	ldr r0, [r1, #8]
	ldr r2, [r1, #0x20]
	cmp r0, r2
	ble _08017BDC
	str r2, [r1, #8]
	ldr r0, [r1, #0x10]
	rsbs r0, r0, #0
	str r0, [r1, #0x10]
_08017BDC:
	ldr r0, [r1, #0xc]
	ldr r3, [r1, #0x14]
	adds r0, r0, r3
	str r0, [r1, #0xc]
	ldr r2, [r1, #0x1c]
	cmp r0, r2
	bge _08017BF0
	str r2, [r1, #0xc]
	rsbs r0, r3, #0
	str r0, [r1, #0x14]
_08017BF0:
	ldr r0, [r1, #0xc]
	ldr r2, [r1, #0x24]
	cmp r0, r2
	ble _08017C00
	str r2, [r1, #0xc]
	ldr r0, [r1, #0x14]
	rsbs r0, r0, #0
	str r0, [r1, #0x14]
_08017C00:
	adds r4, #1
	cmp r4, #7
	bls _08017B9E
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08017C0C
sub_08017C0C: @ 0x08017C0C
	ldr r1, _08017C18 @ =0x04000050
	movs r2, #0xfc
	lsls r2, r2, #6
	adds r0, r2, #0
	strh r0, [r1]
	bx lr
	.align 2, 0
_08017C18: .4byte 0x04000050

	thumb_func_start sub_08017C1C
sub_08017C1C: @ 0x08017C1C
	push {lr}
	adds r2, r0, #0
	movs r0, #0x80
	lsls r0, r0, #5
	cmp r2, r0
	ble _08017C2C
	movs r2, #0x10
	b _08017C3A
_08017C2C:
	cmp r2, #0
	bge _08017C34
	movs r2, #0
	b _08017C3A
_08017C34:
	asrs r0, r2, #8
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
_08017C3A:
	movs r0, #0x80
	lsls r0, r0, #5
	cmp r1, r0
	ble _08017C46
	movs r0, #0x10
	b _08017C54
_08017C46:
	cmp r1, #0
	bge _08017C4E
	movs r0, #0
	b _08017C54
_08017C4E:
	asrs r0, r1, #8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
_08017C54:
	ldr r1, _08017C60 @ =0x04000052
	lsls r0, r0, #8
	orrs r0, r2
	strh r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_08017C60: .4byte 0x04000052

	thumb_func_start sub_08017C64
sub_08017C64: @ 0x08017C64
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08017C0C
	ldrb r1, [r4, #2]
	ldr r2, [r4, #0x4c]
	movs r0, #0x64
	muls r1, r0, r1
	adds r1, r1, r2
	adds r0, r1, #0
	adds r0, #0x5e
	ldrh r0, [r0]
	adds r1, #0x60
	ldrh r1, [r1]
	bl sub_08017C1C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08017C8C
sub_08017C8C: @ 0x08017C8C
	push {r4, r5, lr}
	adds r5, r1, #0
	ldr r2, [r0, #0x68]
	cmp r2, #0
	bne _08017C9C
	b _08017CC2
_08017C98:
	adds r0, r2, #0
	b _08017CC6
_08017C9C:
	movs r3, #0
	adds r0, #0x6c
	ldrb r0, [r0]
	cmp r3, r0
	bhs _08017CC2
	adds r4, r2, #0
	adds r1, r0, #0
_08017CAA:
	lsls r0, r3, #2
	adds r0, r0, r4
	ldr r2, [r0]
	adds r0, r5, #0
	ands r0, r2
	cmp r0, #0
	bne _08017C98
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, r1
	blo _08017CAA
_08017CC2:
	movs r0, #1
	rsbs r0, r0, #0
_08017CC6:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_08017CCC
sub_08017CCC: @ 0x08017CCC
	push {r4, lr}
	lsls r2, r0, #3
	subs r2, r2, r0
	lsls r2, r2, #4
	adds r2, r2, r1
	adds r0, r2, #0
	adds r0, #0x46
	ldrb r4, [r0]
	cmp r4, #1
	bne _08017D14
	ldr r0, _08017D04 @ =0x02000020
	ldrh r1, [r0]
	adds r0, r2, #0
	bl sub_08017C8C
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08017D14
	ands r4, r1
	cmp r4, #0
	beq _08017D08
	movs r0, #1
	movs r1, #0x78
	bl sub_08000634
	b _08017D10
	.align 2, 0
_08017D04: .4byte 0x02000020
_08017D08:
	movs r0, #1
	movs r1, #0x50
	bl sub_08000634
_08017D10:
	movs r0, #1
	b _08017D16
_08017D14:
	movs r0, #0
_08017D16:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_08017D1C
sub_08017D1C: @ 0x08017D1C
	push {r4, r5, lr}
	adds r5, r0, #0
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #4
	adds r4, r0, r2
	adds r0, r4, #0
	adds r0, #0x46
	ldrb r0, [r0]
	cmp r0, #2
	bne _08017D80
	ldr r0, _08017D70 @ =0x02000020
	ldrh r1, [r0]
	adds r0, r4, #0
	bl sub_08017C8C
	adds r3, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r3, r0
	beq _08017D80
	adds r0, r4, #0
	adds r0, #0x48
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r2, [r5, #0x4c]
	movs r0, #0x64
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x55
	ldrb r0, [r0]
	strb r0, [r5, #1]
	movs r0, #1
	ands r0, r3
	cmp r0, #0
	beq _08017D74
	movs r0, #1
	movs r1, #0x78
	bl sub_08000634
	b _08017D7C
	.align 2, 0
_08017D70: .4byte 0x02000020
_08017D74:
	movs r0, #1
	movs r1, #0x50
	bl sub_08000634
_08017D7C:
	movs r0, #1
	b _08017D82
_08017D80:
	movs r0, #0
_08017D82:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_08017D88
sub_08017D88: @ 0x08017D88
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	mov sb, r2
	ldrb r2, [r6]
	lsls r0, r2, #3
	subs r0, r0, r2
	lsls r0, r0, #4
	adds r0, r0, r1
	ldr r1, [r0, #0x4c]
	adds r0, #0x50
	ldrb r5, [r0]
	mov r8, r2
	movs r4, #0
	cmp r4, r5
	bhs _08017DD8
	ldr r0, _08017DE4 @ =0x02000020
	mov ip, r0
	adds r3, r1, #0
_08017DB2:
	ldrb r0, [r3, #4]
	cmp r0, #0
	beq _08017DD0
	adds r2, r0, #0
	mov r1, sb
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _08017DD0
	ldr r0, [r3]
	mov r7, ip
	ldrh r1, [r7]
	ands r0, r1
	cmp r0, #0
	bne _08017DE8
_08017DD0:
	adds r3, #8
	adds r4, #1
	cmp r4, r5
	blo _08017DB2
_08017DD8:
	ldrb r6, [r6]
	cmp r8, r6
	bne _08017DEC
	movs r0, #0
	b _08017DF6
	.align 2, 0
_08017DE4: .4byte 0x02000020
_08017DE8:
	strb r2, [r6]
	b _08017DD8
_08017DEC:
	movs r0, #1
	movs r1, #0x50
	bl sub_08000634
	movs r0, #1
_08017DF6:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08017E04
sub_08017E04: @ 0x08017E04
	push {lr}
	adds r2, r0, #0
	ldrb r3, [r2, #1]
	ldrb r0, [r2, #3]
	cmp r0, r3
	beq _08017E1C
	ldr r0, _08017E20 @ =0x02000020
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08017E24
_08017E1C:
	movs r0, #0
	b _08017E30
	.align 2, 0
_08017E20: .4byte 0x02000020
_08017E24:
	strb r3, [r2, #3]
	movs r0, #1
	movs r1, #0x79
	bl sub_08000634
	movs r0, #1
_08017E30:
	pop {r1}
	bx r1

	thumb_func_start sub_08017E34
sub_08017E34: @ 0x08017E34
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r1, r2, #0
	lsls r0, r3, #5
	subs r0, r0, r3
	lsls r0, r0, #2
	adds r0, r0, r3
	lsls r0, r0, #3
	bl sub_0803D7D4
	subs r4, r4, r5
	muls r0, r4, r0
	movs r1, #0xfa
	lsls r1, r1, #2
	bl sub_0803D7D4
	adds r0, r0, r5
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08017E60
sub_08017E60: @ 0x08017E60
	push {r4, r5, lr}
	cmp r0, #0xf0
	ble _08017E6A
	movs r5, #0xf0
	b _08017E76
_08017E6A:
	cmp r0, #0
	bge _08017E72
	movs r5, #0
	b _08017E76
_08017E72:
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_08017E76:
	cmp r1, #0xa0
	ble _08017E7E
	movs r4, #0xa0
	b _08017E8A
_08017E7E:
	cmp r1, #0
	bge _08017E86
	movs r4, #0
	b _08017E8A
_08017E86:
	lsls r0, r1, #0x18
	lsrs r4, r0, #0x18
_08017E8A:
	cmp r2, #0xf0
	ble _08017E92
	movs r2, #0xf0
	b _08017E9E
_08017E92:
	cmp r2, #0
	bge _08017E9A
	movs r2, #0
	b _08017E9E
_08017E9A:
	lsls r0, r2, #0x18
	lsrs r2, r0, #0x18
_08017E9E:
	cmp r3, #0xa0
	ble _08017EA6
	movs r3, #0xa0
	b _08017EB2
_08017EA6:
	cmp r3, #0
	bge _08017EAE
	movs r3, #0
	b _08017EB2
_08017EAE:
	lsls r0, r3, #0x18
	lsrs r3, r0, #0x18
_08017EB2:
	ldr r1, _08017EC8 @ =0x04000040
	lsls r0, r5, #8
	orrs r0, r2
	strh r0, [r1]
	adds r1, #4
	lsls r0, r4, #8
	orrs r0, r3
	strh r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08017EC8: .4byte 0x04000040

	thumb_func_start sub_08017ECC
sub_08017ECC: @ 0x08017ECC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	str r0, [sp]
	adds r4, r1, #0
	adds r5, r3, #0
	ldr r6, [sp, #0x3c]
	cmp r4, #0
	bge _08017EE6
	rsbs r1, r4, #0
_08017EE6:
	adds r0, r4, #0
	subs r0, #0xf0
	cmp r0, #0
	bge _08017EF0
	rsbs r0, r0, #0
_08017EF0:
	cmp r1, r0
	bge _08017EF6
	adds r1, r0, #0
_08017EF6:
	adds r3, r2, #0
	cmp r2, #0
	bge _08017EFE
	rsbs r3, r2, #0
_08017EFE:
	adds r0, r2, #0
	subs r0, #0xa0
	cmp r0, #0
	bge _08017F08
	rsbs r0, r0, #0
_08017F08:
	cmp r3, r0
	bge _08017F0E
	adds r3, r0, #0
_08017F0E:
	cmp r1, r3
	bge _08017F16
	adds r1, r3, #0
	b _08017F18
_08017F16:
	adds r3, r1, #0
_08017F18:
	cmp r5, #1
	bne _08017F2C
	mov sl, r4
	mov r0, sl
	str r0, [sp, #4]
	subs r0, r0, r1
	str r0, [sp, #0xc]
	add r1, sl
	str r1, [sp, #0x14]
	b _08017F50
_08017F2C:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r5, r0
	bne _08017F42
	subs r0, r4, r1
	str r0, [sp, #4]
	adds r1, r1, r4
	mov sl, r1
	str r4, [sp, #0x14]
	str r4, [sp, #0xc]
	b _08017F50
_08017F42:
	subs r0, r4, r1
	str r0, [sp, #4]
	adds r4, r4, r1
	mov sl, r4
	str r0, [sp, #0xc]
	mov r0, sl
	str r0, [sp, #0x14]
_08017F50:
	cmp r6, #1
	bne _08017F64
	mov sb, r2
	str r2, [sp, #8]
	mov r0, sb
	subs r0, r0, r3
	str r0, [sp, #0x10]
	add r3, sb
	str r3, [sp, #0x18]
	b _08017F86
_08017F64:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r6, r0
	bne _08017F7A
	subs r0, r2, r3
	str r0, [sp, #8]
	adds r3, r3, r2
	mov sb, r3
	str r2, [sp, #0x18]
	str r2, [sp, #0x10]
	b _08017F86
_08017F7A:
	subs r0, r2, r3
	str r0, [sp, #8]
	adds r2, r2, r3
	mov sb, r2
	str r0, [sp, #0x10]
	str r2, [sp, #0x18]
_08017F86:
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	mov r2, sl
	mov r3, sb
	bl sub_08017E60
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _08018048 @ =0x04000048
	ldr r2, _0801804C @ =0x00003F3F
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	ldr r3, _08018050 @ =0x00003F20
	adds r0, r3, #0
	strh r0, [r1]
	ldr r0, [sp, #0x40]
	cmp r0, #1
	bne _08017FC6
	bl sub_08009BD0
	bl sub_08009BE8
	ldr r0, [sp, #0x44]
	bl sub_08017C64
_08017FC6:
	movs r7, #0
	ldr r0, [sp]
	cmp r7, r0
	bhs _0801801E
_08017FCE:
	ldr r0, [sp, #4]
	ldr r1, [sp, #0xc]
	ldr r2, [sp]
	adds r3, r7, #0
	bl sub_08017E34
	mov r8, r0
	ldr r0, [sp, #8]
	ldr r1, [sp, #0x10]
	ldr r2, [sp]
	adds r3, r7, #0
	bl sub_08017E34
	adds r6, r0, #0
	mov r0, sl
	ldr r1, [sp, #0x14]
	ldr r2, [sp]
	adds r3, r7, #0
	bl sub_08017E34
	adds r5, r0, #0
	mov r0, sb
	ldr r1, [sp, #0x18]
	ldr r2, [sp]
	adds r3, r7, #0
	bl sub_08017E34
	adds r4, r0, #0
	bl sub_08009BD0
	mov r0, r8
	adds r1, r6, #0
	adds r2, r5, #0
	adds r3, r4, #0
	bl sub_08017E60
	adds r7, #1
	ldr r2, [sp]
	cmp r7, r2
	blo _08017FCE
_0801801E:
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0x14]
	ldr r3, [sp, #0x18]
	bl sub_08017E60
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r1, [r2]
	ldr r0, _08018054 @ =0x0000DFFF
	ands r0, r1
	strh r0, [r2]
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08018048: .4byte 0x04000048
_0801804C: .4byte 0x00003F3F
_08018050: .4byte 0x00003F20
_08018054: .4byte 0x0000DFFF

	thumb_func_start sub_08018058
sub_08018058: @ 0x08018058
	push {r4, lr}
	sub sp, #0xc
	adds r4, r3, #0
	cmp r0, #0
	beq _08018094
	cmp r1, #0
	bne _0801806C
	movs r3, #1
	movs r1, #1
	b _08018072
_0801806C:
	movs r3, #1
	rsbs r3, r3, #0
	adds r1, r3, #0
_08018072:
	cmp r0, #1
	bne _0801807A
	movs r1, #0
	b _08018080
_0801807A:
	cmp r0, #2
	bne _08018080
	movs r3, #0
_08018080:
	str r1, [sp]
	ldr r0, [sp, #0x18]
	str r0, [sp, #4]
	ldr r0, [sp, #0x1c]
	str r0, [sp, #8]
	adds r0, r2, #0
	adds r1, r4, #0
	ldr r2, [sp, #0x14]
	bl sub_08017ECC
_08018094:
	add sp, #0xc
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0801809C
sub_0801809C: @ 0x0801809C
	push {r4, r5, r6, lr}
	sub sp, #0xc
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r6, [sp, #0x1c]
	str r2, [sp]
	movs r0, #1
	str r0, [sp, #4]
	str r6, [sp, #8]
	adds r0, r4, #0
	movs r1, #0
	adds r2, r3, #0
	adds r3, r5, #0
	bl sub_08018058
	cmp r4, #0
	bne _080180C8
	bl sub_08009C04
	adds r0, r6, #0
	bl sub_08017C64
_080180C8:
	add sp, #0xc
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080180D0
sub_080180D0: @ 0x080180D0
	push {r4, r5, lr}
	sub sp, #0xc
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, [sp, #0x18]
	str r2, [sp]
	movs r0, #0
	str r0, [sp, #4]
	str r1, [sp, #8]
	adds r0, r4, #0
	movs r1, #1
	adds r2, r3, #0
	adds r3, r5, #0
	bl sub_08018058
	cmp r4, #0
	bne _080180F8
	bl sub_08009BF4
	b _080180FC
_080180F8:
	bl sub_08009BDC
_080180FC:
	add sp, #0xc
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08018104
sub_08018104: @ 0x08018104
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xe4
	adds r7, r0, #0
	movs r0, #0
	mov sl, r0
	ldrb r0, [r7, #2]
	movs r5, #0x64
	adds r1, r0, #0
	muls r1, r5, r1
	ldr r0, [r7, #0x4c]
	adds r0, r0, r1
	bl sub_08017464
	ldrb r0, [r7, #2]
	adds r1, r0, #0
	muls r1, r5, r1
	ldr r0, [r7, #0x4c]
	adds r0, r0, r1
	movs r2, #0xde
	lsls r2, r2, #1
	adds r1, r7, r2
	ldrb r1, [r1]
	bl sub_08017520
	adds r1, r7, #0
	adds r1, #0x1c
	add r0, sp, #8
	movs r2, #0
	bl sub_080175C4
	add r0, sp, #0x50
	adds r1, r7, #0
	adds r1, #0x2c
	movs r2, #0
	bl sub_080175C4
	add r3, sp, #0x98
	mov r8, r3
	adds r1, r7, #0
	adds r1, #0x3c
	mov r0, r8
	movs r2, #0
	bl sub_080175C4
	ldrb r1, [r7, #2]
	adds r2, r1, #0
	muls r2, r5, r2
	ldr r0, [r7, #0x4c]
	adds r0, r0, r2
	bl sub_08017720
	ldrb r0, [r7, #2]
	adds r1, r0, #0
	muls r1, r5, r1
	ldr r0, [r7, #0x4c]
	adds r0, r0, r1
	bl sub_080177B8
	ldrb r0, [r7, #2]
	adds r1, r0, #0
	muls r1, r5, r1
	ldr r0, [r7, #0x4c]
	adds r0, r0, r1
	bl sub_08017828
	adds r6, r7, #0
	adds r6, #0x5c
	adds r0, r6, #0
	bl sub_08017868
	ldrb r0, [r7, #3]
	ldr r1, [r7, #0x54]
	ldrb r4, [r7, #2]
	adds r3, r4, #0
	muls r3, r5, r3
	ldr r2, [r7, #0x4c]
	adds r2, r2, r3
	str r4, [sp]
	str r6, [sp, #4]
	movs r3, #0
	bl sub_08017950
	ldrb r0, [r7, #2]
	ldr r1, [r7, #0x4c]
	muls r0, r5, r0
	adds r0, r0, r1
	ldr r3, [r0, #0x50]
	ldrb r1, [r7, #3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #4
	adds r3, r3, r0
	adds r0, r3, #0
	adds r0, #0x52
	ldrb r0, [r0]
	adds r1, r3, #0
	adds r1, #0x54
	movs r4, #0
	ldrsh r1, [r1, r4]
	adds r2, r3, #0
	adds r2, #0x56
	movs r4, #0
	ldrsh r2, [r2, r4]
	ldr r3, [r3, #0x58]
	str r7, [sp]
	bl sub_0801809C
	movs r0, #0
	str r0, [sp, #0xe0]
	mov sb, r8
	b _08018284
_080181EA:
	ldrb r1, [r7, #3]
	ldrb r0, [r7, #2]
	ldr r2, [r7, #0x4c]
	muls r0, r6, r0
	adds r0, r0, r2
	ldr r2, [r0, #0x50]
	adds r0, r7, #0
	bl sub_08017D1C
	cmp r0, #1
	bne _08018206
	movs r2, #1
	str r2, [sp, #0xe0]
	b _080182A8
_08018206:
	adds r0, r7, #3
	ldrb r1, [r7, #2]
	ldr r2, [r7, #0x4c]
	muls r1, r6, r1
	adds r1, r1, r2
	ldr r1, [r1, #0x50]
	ldr r2, [r7, #0x54]
	bl sub_08017D88
	adds r5, r0, #0
	adds r0, r7, #0
	bl sub_08017E04
	cmp r0, #1
	bne _08018226
	movs r5, #1
_08018226:
	bl sub_08009BD0
	ldrb r0, [r7, #3]
	ldr r1, [r7, #0x54]
	ldrb r4, [r7, #2]
	adds r3, r4, #0
	muls r3, r6, r3
	ldr r2, [r7, #0x4c]
	adds r2, r2, r3
	str r4, [sp]
	mov r3, r8
	str r3, [sp, #4]
	mov r3, sl
	bl sub_08017950
	cmp r5, #1
	bne _08018280
	ldrb r0, [r7, #2]
	ldr r1, [r7, #0x4c]
	muls r0, r6, r0
	adds r0, r0, r1
	ldr r3, [r0, #0x50]
	ldrb r1, [r7, #3]
	ldr r0, [r7, #0x58]
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08018268
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #4
	adds r0, r3, r0
	b _08018272
_08018268:
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #4
	adds r0, r3, r0
	adds r0, #0x17
_08018272:
	str r0, [r7, #0x3c]
	adds r1, r7, #0
	adds r1, #0x3c
	mov r0, sb
	movs r2, #1
	bl sub_080175C4
_08018280:
	movs r4, #1
	add sl, r4
_08018284:
	movs r0, #0x5c
	adds r0, r0, r7
	mov r8, r0
	bl sub_08017B98
	bl sub_08000BC0
	ldrb r0, [r7, #3]
	ldrb r1, [r7, #2]
	ldr r2, [r7, #0x4c]
	movs r6, #0x64
	muls r1, r6, r1
	adds r1, r1, r2
	ldr r1, [r1, #0x50]
	bl sub_08017CCC
	cmp r0, #1
	bne _080181EA
_080182A8:
	ldrb r1, [r7, #2]
	ldr r2, [r7, #0x4c]
	movs r0, #0x64
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r3, [r0, #0x50]
	ldrb r1, [r7, #3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #4
	adds r3, r3, r0
	adds r0, r3, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	adds r1, r3, #0
	adds r1, #0x5e
	movs r2, #0
	ldrsh r1, [r1, r2]
	adds r2, r3, #0
	adds r2, #0x60
	movs r4, #0
	ldrsh r2, [r2, r4]
	ldr r3, [r3, #0x64]
	str r7, [sp]
	bl sub_080180D0
	ldr r0, [sp, #0xe0]
	add sp, #0xe4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080182F0
sub_080182F0: @ 0x080182F0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	adds r7, r0, #0
	adds r4, r1, #0
	mov sb, r2
	ldr r1, _080183E0 @ =0x020377F0
	movs r0, #0x30
	strh r0, [r1]
	movs r5, #0
	ldr r0, _080183E4 @ =0x087B84A0
	mov sl, r0
	ldr r1, _080183E8 @ =0x0832512C
	mov ip, r1
	movs r2, #0
	ldr r0, _080183EC @ =0x0000FFFF
	adds r6, r0, #0
	ldr r1, _080183F0 @ =0x0203A690
_0801831A:
	str r2, [r1]
	ldrh r0, [r1, #4]
	orrs r0, r6
	strh r0, [r1, #4]
	adds r1, #8
	adds r5, #1
	cmp r5, #0x13
	bls _0801831A
	cmp r4, #0
	bgt _08018330
	movs r4, #1
_08018330:
	movs r1, #0
	mov r8, r1
	strb r4, [r7, #1]
	strb r4, [r7, #3]
	mov r2, sl
	ldr r4, [r2, #0x50]
	ldrb r1, [r7, #3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r4
	adds r0, #0x51
	ldrb r0, [r0]
	strb r0, [r7]
	strb r0, [r7, #2]
	ldr r2, [r3]
	str r2, [r7, #4]
	adds r4, r7, #0
	adds r4, #8
	adds r0, r4, #0
	mov r1, ip
	bl sub_0803DFE0
	mov r0, sl
	str r0, [r7, #0x4c]
	adds r1, r7, #0
	adds r1, #0x50
	movs r0, #3
	strb r0, [r1]
	mov r1, sb
	str r1, [r7, #0x54]
	ldr r0, [sp, #0x3c]
	str r0, [r7, #0x58]
	ldrb r0, [r7, #2]
	movs r5, #0x64
	adds r1, r0, #0
	muls r1, r5, r1
	ldr r0, [r7, #0x4c]
	adds r0, r0, r1
	str r0, [r7, #0x1c]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #0xc
	strb r0, [r1]
	movs r6, #0
	mov r2, r8
	strh r2, [r7, #0x22]
	ldr r0, _080183EC @ =0x0000FFFF
	strh r0, [r7, #0x24]
	movs r0, #0xe
	strh r0, [r7, #0x26]
	movs r2, #4
	strh r2, [r7, #0x28]
	adds r3, r7, #0
	adds r3, #0x2a
	movs r0, #1
	strb r0, [r3]
	str r4, [r7, #0x2c]
	adds r1, #0x10
	movs r0, #8
	strb r0, [r1]
	movs r0, #0x14
	strh r0, [r7, #0x32]
	movs r0, #0x10
	strh r0, [r7, #0x34]
	movs r0, #0xa
	strh r0, [r7, #0x36]
	strh r2, [r7, #0x38]
	adds r0, r7, #0
	adds r0, #0x3a
	strb r6, [r0]
	ldrb r0, [r7, #2]
	ldr r1, [r7, #0x4c]
	muls r0, r5, r0
	adds r0, r0, r1
	ldr r4, [r0, #0x50]
	ldrb r1, [r7, #3]
	ldr r0, [r7, #0x58]
	adds r0, r0, r1
	ldrb r0, [r0]
	str r3, [sp]
	cmp r0, #0
	bne _080183F4
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #4
	adds r0, r4, r0
	b _080183FE
	.align 2, 0
_080183E0: .4byte 0x020377F0
_080183E4: .4byte 0x087B84A0
_080183E8: .4byte 0x0832512C
_080183EC: .4byte 0x0000FFFF
_080183F0: .4byte 0x0203A690
_080183F4:
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #4
	adds r0, r4, r0
	adds r0, #0x17
_080183FE:
	str r0, [r7, #0x3c]
	adds r1, r7, #0
	adds r1, #0x40
	movs r2, #0
	movs r0, #0xb
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x42
	strh r2, [r0]
	adds r1, #4
	movs r0, #0x10
	strh r0, [r1]
	adds r1, #2
	movs r0, #0xd
	strh r0, [r1]
	adds r1, #2
	movs r0, #4
	strh r0, [r1]
	adds r1, #2
	movs r0, #1
	strb r0, [r1]
	movs r5, #0
	adds r0, r7, #0
	adds r0, #0x5c
	str r0, [sp, #4]
	adds r1, #0x1a
	str r1, [sp, #8]
	adds r2, r7, #0
	adds r2, #0x68
	str r2, [sp, #0xc]
	adds r0, #0x10
	str r0, [sp, #0x10]
	adds r1, #0xc
	str r1, [sp, #0x14]
	adds r2, #0xc
	str r2, [sp, #0x18]
	movs r0, #0x78
	adds r0, r0, r7
	mov sl, r0
	movs r1, #0x7c
	adds r1, r1, r7
	mov sb, r1
	movs r2, #0x80
	adds r2, r2, r7
	mov ip, r2
	movs r3, #0
_0801845A:
	movs r0, #0x2c
	adds r1, r5, #0
	muls r1, r0, r1
	ldr r2, [sp, #4]
	adds r0, r2, r1
	str r3, [r0]
	adds r4, r7, r1
	adds r0, r4, #0
	adds r0, #0x60
	strb r3, [r0]
	adds r2, r4, #0
	adds r2, #0x62
	ldr r0, _08018578 @ =0x0000FFFF
	strh r0, [r2]
	ldr r2, [sp, #8]
	adds r0, r2, r1
	str r3, [r0]
	ldr r2, [sp, #0xc]
	adds r0, r2, r1
	str r3, [r0]
	ldr r2, [sp, #0x10]
	adds r0, r2, r1
	str r3, [r0]
	ldr r2, [sp, #0x14]
	adds r0, r2, r1
	str r3, [r0]
	ldr r2, [sp, #0x18]
	adds r0, r2, r1
	str r3, [r0]
	mov r2, sl
	adds r0, r2, r1
	str r3, [r0]
	mov r2, sb
	adds r0, r2, r1
	str r3, [r0]
	add r1, ip
	str r3, [r1]
	adds r0, r4, #0
	adds r0, #0x84
	strh r3, [r0]
	adds r5, #1
	cmp r5, #7
	bls _0801845A
	ldrb r1, [r7, #2]
	ldr r2, [r7, #0x4c]
	movs r0, #0x64
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r1, [r0, #0x58]
	mov r8, r1
	cmp r1, #0
	beq _08018542
	adds r0, #0x5c
	ldrb r6, [r0]
	cmp r6, #8
	bls _080184CC
	movs r6, #8
_080184CC:
	movs r5, #0
	cmp r5, r6
	bhs _08018542
_080184D2:
	movs r0, #0x2c
	adds r2, r5, #0
	muls r2, r0, r2
	ldr r0, [sp, #4]
	adds r1, r0, r2
	mov r0, r8
	adds r3, r2, r0
	ldr r0, [r3]
	str r0, [r1]
	adds r4, r7, r2
	ldrb r1, [r3, #4]
	adds r0, r4, #0
	adds r0, #0x60
	strb r1, [r0]
	ldrh r0, [r3, #6]
	adds r1, r4, #0
	adds r1, #0x62
	strh r0, [r1]
	ldr r0, [sp, #8]
	adds r1, r0, r2
	ldr r0, [r3, #8]
	str r0, [r1]
	ldr r0, [sp, #0xc]
	adds r1, r0, r2
	ldr r0, [r3, #0xc]
	str r0, [r1]
	ldr r0, [sp, #0x10]
	adds r1, r0, r2
	ldr r0, [r3, #0x10]
	str r0, [r1]
	ldr r0, [sp, #0x14]
	adds r1, r0, r2
	ldr r0, [r3, #0x14]
	str r0, [r1]
	ldr r0, [sp, #0x18]
	adds r1, r0, r2
	ldr r0, [r3, #0x18]
	str r0, [r1]
	mov r0, sl
	adds r1, r0, r2
	ldr r0, [r3, #0x1c]
	str r0, [r1]
	mov r0, sb
	adds r1, r0, r2
	ldr r0, [r3, #0x20]
	str r0, [r1]
	add r2, ip
	ldr r0, [r3, #0x24]
	str r0, [r2]
	ldrh r1, [r3, #0x28]
	adds r0, r4, #0
	adds r0, #0x84
	strh r1, [r0]
	adds r5, #1
	cmp r5, r6
	blo _080184D2
_08018542:
	ldrb r2, [r7, #2]
	movs r0, #0x64
	adds r1, r2, #0
	muls r1, r0, r1
	ldr r0, [r7, #0x4c]
	adds r0, r0, r1
	ldr r1, [r7, #0x54]
	bl sub_080174C4
	movs r2, #0xde
	lsls r2, r2, #1
	adds r1, r7, r2
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08018568
	movs r0, #2
	ldr r1, [sp]
	strb r0, [r1]
_08018568:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08018578: .4byte 0x0000FFFF

	thumb_func_start sub_0801857C
sub_0801857C: @ 0x0801857C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c4
	adds r4, r0, #0
	adds r7, r1, #0
	adds r6, r2, #0
	adds r5, r3, #0
	movs r0, #0xba
	bl sub_0801B750
	add r0, sp, #4
	strb r4, [r0, #1]
_08018592:
	bl sub_08000B84
	bl sub_08009B94
	add r0, sp, #4
	ldrb r1, [r0, #1]
	str r5, [sp]
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_080182F0
	add r0, sp, #4
	bl sub_08018104
	cmp r0, #0
	bne _08018592
	bl sub_0801B744
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r1, [r2]
	ldr r0, _080185D0 @ =0x000080FF
	ands r0, r1
	strh r0, [r2]
	add r0, sp, #4
	ldrb r0, [r0, #3]
	add sp, #0x1c4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080185D0: .4byte 0x000080FF

	thumb_func_start sub_080185D4
sub_080185D4: @ 0x080185D4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	cmp r2, r0
	ble _080185EC
	movs r4, #1
	str r4, [sp, #4]
	subs r2, r2, r0
	b _080185F4
_080185EC:
	movs r4, #1
	rsbs r4, r4, #0
	str r4, [sp, #4]
	subs r2, r0, r2
_080185F4:
	mov sl, r2
	cmp r3, r1
	ble _08018602
	movs r2, #1
	str r2, [sp, #8]
	subs r3, r3, r1
	b _0801860A
_08018602:
	movs r4, #1
	rsbs r4, r4, #0
	str r4, [sp, #8]
	subs r3, r1, r3
_0801860A:
	mov sb, r3
	mov ip, r0
	adds r7, r1, #0
	cmp sl, sb
	blt _0801869C
	mov r0, sl
	rsbs r5, r0, #0
	cmp r0, #0
	bge _0801861E
	b _0801871C
_0801861E:
	mov r6, sp
	movs r1, #1
	add r1, sl
	mov r8, r1
_08018626:
	mov r2, ip
	asrs r1, r2, #3
	asrs r4, r7, #3
	mov r3, ip
	movs r0, #7
	ands r3, r0
	adds r2, r7, #0
	ands r2, r0
	lsls r1, r1, #6
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #7
	adds r1, r1, r0
	adds r1, r1, r3
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r4, #0xc0
	lsls r4, r4, #0x13
	adds r2, r1, r4
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	bne _08018660
	ldrh r0, [r2]
	strh r0, [r6]
	add r0, sp, #0x2c
	ldrb r0, [r0]
	strb r0, [r6]
	b _0801866E
_08018660:
	ldr r4, _08018698 @ =0x05FFFFFF
	adds r2, r1, r4
	ldrh r0, [r2]
	strh r0, [r6]
	add r0, sp, #0x2c
	ldrb r0, [r0]
	strb r0, [r6, #1]
_0801866E:
	ldrh r0, [r6]
	strh r0, [r2]
	ldr r1, [sp, #4]
	add ip, r1
	mov r2, sb
	lsls r0, r2, #1
	adds r5, r5, r0
	cmp r5, #0
	blt _0801868A
	ldr r4, [sp, #8]
	adds r7, r7, r4
	mov r1, sl
	lsls r0, r1, #1
	subs r5, r5, r0
_0801868A:
	movs r2, #1
	rsbs r2, r2, #0
	add r8, r2
	mov r4, r8
	cmp r4, #0
	bne _08018626
	b _0801871C
	.align 2, 0
_08018698: .4byte 0x05FFFFFF
_0801869C:
	mov r0, sb
	rsbs r5, r0, #0
	cmp r0, #0
	blt _0801871C
	mov r6, sp
	movs r1, #1
	add r1, sb
	mov r8, r1
_080186AC:
	mov r2, ip
	asrs r1, r2, #3
	asrs r4, r7, #3
	mov r3, ip
	movs r0, #7
	ands r3, r0
	adds r2, r7, #0
	ands r2, r0
	lsls r1, r1, #6
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #7
	adds r1, r1, r0
	adds r1, r1, r3
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r4, #0xc0
	lsls r4, r4, #0x13
	adds r2, r1, r4
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	bne _080186E6
	ldrh r0, [r2]
	strh r0, [r6]
	add r0, sp, #0x2c
	ldrb r0, [r0]
	strb r0, [r6]
	b _080186F4
_080186E6:
	ldr r4, _0801872C @ =0x05FFFFFF
	adds r2, r1, r4
	ldrh r0, [r2]
	strh r0, [r6]
	add r0, sp, #0x2c
	ldrb r0, [r0]
	strb r0, [r6, #1]
_080186F4:
	ldrh r0, [r6]
	strh r0, [r2]
	ldr r1, [sp, #8]
	adds r7, r7, r1
	mov r2, sl
	lsls r0, r2, #1
	adds r5, r5, r0
	cmp r5, #0
	blt _08018710
	ldr r4, [sp, #4]
	add ip, r4
	mov r1, sb
	lsls r0, r1, #1
	subs r5, r5, r0
_08018710:
	movs r2, #1
	rsbs r2, r2, #0
	add r8, r2
	mov r4, r8
	cmp r4, #0
	bne _080186AC
_0801871C:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801872C: .4byte 0x05FFFFFF

	thumb_func_start sub_08018730
sub_08018730: @ 0x08018730
	sub sp, #4
	lsls r0, r0, #1
	movs r1, #0xa0
	lsls r1, r1, #0x13
	adds r0, r0, r1
	mov r1, sp
	ldrh r0, [r0]
	strh r0, [r1]
	mov r0, sp
	ldrh r0, [r0]
	add sp, #4
	bx lr

	thumb_func_start sub_08018748
sub_08018748: @ 0x08018748
	sub sp, #4
	str r1, [sp]
	lsls r0, r0, #1
	movs r1, #0xa0
	lsls r1, r1, #0x13
	adds r0, r0, r1
	mov r1, sp
	ldrh r1, [r1]
	strh r1, [r0]
	add sp, #4
	bx lr
	.align 2, 0

	thumb_func_start sub_08018760
sub_08018760: @ 0x08018760
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _080187BC @ =0x05000100
	ldr r1, [r4]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r1, r2
	ldrh r2, [r4, #4]
	ldr r3, _080187C0 @ =0xFFFFFF00
	adds r2, r2, r3
	bl sub_080002EC
	ldr r0, _080187C4 @ =0x05000220
	ldr r1, [r4, #8]
	adds r1, #0x20
	ldrh r2, [r4, #0xc]
	subs r2, #0x20
	bl sub_080002EC
	ldrb r0, [r4, #0xe]
	bl sub_08018730
	adds r5, r0, #0
	movs r0, #0x1b
	adds r1, r5, #0
	bl sub_08018748
	movs r0, #0x4b
	adds r1, r5, #0
	bl sub_08018748
	ldrb r0, [r4, #0xf]
	bl sub_08018730
	adds r5, r0, #0
	movs r0, #0x1f
	adds r1, r5, #0
	bl sub_08018748
	movs r0, #0x4f
	adds r1, r5, #0
	bl sub_08018748
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080187BC: .4byte 0x05000100
_080187C0: .4byte 0xFFFFFF00
_080187C4: .4byte 0x05000220

	thumb_func_start sub_080187C8
sub_080187C8: @ 0x080187C8
	push {lr}
	adds r2, r0, #0
	cmp r1, #0
	bne _080187D8
	ldr r0, _080187D4 @ =0x087B8B10
	b _080187E6
	.align 2, 0
_080187D4: .4byte 0x087B8B10
_080187D8:
	cmp r1, #1
	bne _080187E4
	ldr r0, _080187E0 @ =0x087B8AE8
	b _080187E6
	.align 2, 0
_080187E0: .4byte 0x087B8AE8
_080187E4:
	ldr r0, _080187EC @ =0x087B8AFC
_080187E6:
	str r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0
_080187EC: .4byte 0x087B8AFC

	thumb_func_start sub_080187F0
sub_080187F0: @ 0x080187F0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x2c
	str r0, [sp, #0x24]
	str r3, [sp, #0x28]
	ldr r0, [sp, #0x4c]
	mov r8, r0
	add r3, sp, #0xc
	movs r6, #0x1f
	adds r0, r1, #0
	ands r0, r6
	str r0, [sp, #0xc]
	movs r5, #0xf8
	lsls r5, r5, #2
	adds r0, r1, #0
	ands r0, r5
	lsrs r0, r0, #5
	str r0, [r3, #4]
	movs r4, #0xf8
	lsls r4, r4, #7
	ands r1, r4
	lsrs r1, r1, #0xa
	str r1, [r3, #8]
	add r1, sp, #0x18
	adds r0, r2, #0
	ands r0, r6
	str r0, [sp, #0x18]
	adds r0, r2, #0
	ands r0, r5
	lsrs r0, r0, #5
	str r0, [r1, #4]
	ands r2, r4
	lsrs r2, r2, #0xa
	str r2, [r1, #8]
	movs r6, #0
	mov r7, sp
	mov sl, r1
	mov sb, r3
_08018842:
	mov r1, sb
	adds r1, #4
	mov sb, r1
	subs r1, #4
	ldm r1!, {r5}
	mov r2, sl
	adds r2, #4
	mov sl, r2
	subs r2, #4
	ldm r2!, {r4}
	mov r1, r8
	ldr r0, [r1]
	subs r4, r4, r5
	lsls r0, r0, #0xa
	ldr r1, [sp, #0x28]
	bl sub_0803D7D4
	muls r0, r4, r0
	asrs r0, r0, #0xa
	adds r0, r0, r5
	stm r7!, {r0}
	adds r6, #1
	cmp r6, #2
	bls _08018842
	ldr r0, [sp, #4]
	lsls r0, r0, #5
	ldr r1, [sp]
	orrs r1, r0
	ldr r0, [sp, #8]
	lsls r0, r0, #0xa
	orrs r1, r0
	ldr r0, [sp, #0x24]
	bl sub_08018748
	ldr r2, [sp, #0x50]
	cmp r2, #0
	beq _08018898
	mov r1, r8
	ldr r0, [r1]
	ldr r1, [r2]
	adds r0, r0, r1
	mov r2, r8
	str r0, [r2]
_08018898:
	add sp, #0x2c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080188A8
sub_080188A8: @ 0x080188A8
	push {lr}
	adds r3, r0, #0
	cmp r1, #0
	bne _080188BC
	movs r0, #0xc0
	lsls r0, r0, #0x13
	adds r1, r3, #0
	bl sub_080002EC
	b _080188C6
_080188BC:
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r0, r3, #0
	bl sub_0803D358
_080188C6:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080188CC
sub_080188CC: @ 0x080188CC
	push {lr}
	ldr r0, [r0]
	movs r1, #1
	movs r2, #0
	bl sub_080188A8
	pop {r0}
	bx r0

	thumb_func_start sub_080188DC
sub_080188DC: @ 0x080188DC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	mov sb, r0
	adds r6, r1, #0
	mov sl, r2
	mov r8, r3
	movs r0, #0xa
	ldrsh r7, [r6, r0]
	movs r0, #0xc
	ldrsh r4, [r6, r0]
	ldrb r0, [r6]
	cmp r0, #0
	bne _08018908
	movs r0, #0xe
	ldrsh r5, [r6, r0]
	movs r0, #0x10
	ldrsh r3, [r6, r0]
	b _0801891A
_08018908:
	ldr r0, [r6, #4]
	bl sub_08009CBC
	adds r5, r0, #2
	ldr r0, [r6, #4]
	bl sub_08009CC8
	lsls r0, r0, #1
	adds r3, r0, #2
_0801891A:
	mov r0, sl
	cmp r0, #0
	bne _08018950
	mov r0, sb
	cmp r0, #0
	beq _0801893E
	str r3, [sp]
	mov r0, r8
	str r0, [sp, #4]
	ldr r0, [sp, #0x2c]
	str r0, [sp, #8]
	mov r0, sb
	adds r1, r7, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_08009C7C
	b _08018950
_0801893E:
	mov r0, r8
	str r0, [sp]
	ldr r0, [sp, #0x2c]
	str r0, [sp, #4]
	adds r0, r7, #0
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_08009C50
_08018950:
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl sub_08009CD4
	ldrb r0, [r6, #9]
	cmp r0, #0
	beq _0801896E
	ldr r0, [r6, #4]
	bl sub_08009CBC
	ldrb r1, [r6, #8]
	subs r5, r1, r0
	cmp r5, #0
	bne _0801897A
_0801896E:
	adds r0, r7, #1
	adds r1, r4, #1
	ldr r2, [r6, #4]
	bl sub_08009D4C
	b _080189A4
_0801897A:
	cmp r5, #0
	ble _08018998
	adds r0, r7, #1
	adds r4, #1
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_08009D94
	adds r0, r5, #1
	adds r0, r7, r0
	ldr r2, [r6, #4]
	adds r1, r4, #0
	bl sub_08009D4C
	b _080189A4
_08018998:
	adds r0, r5, #1
	adds r0, r7, r0
	adds r1, r4, #1
	ldr r2, [r6, #4]
	bl sub_08009D4C
_080189A4:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080189B4
sub_080189B4: @ 0x080189B4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r5, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	mov r8, r3
	ldr r7, [sp, #0x20]
	ldr r1, _080189E0 @ =0x00000A08
	adds r0, r5, r1
	ldr r1, _080189E4 @ =0x087B8B30
	movs r2, #0x14
	bl sub_080002C4
	cmp r4, #0
	bne _080189F4
	ldr r2, _080189E8 @ =0x00000A1C
	adds r0, r5, r2
	ldr r1, _080189EC @ =0x08325134
	ldr r3, _080189F0 @ =0x087BAF10
	b _08018A0C
	.align 2, 0
_080189E0: .4byte 0x00000A08
_080189E4: .4byte 0x087B8B30
_080189E8: .4byte 0x00000A1C
_080189EC: .4byte 0x08325134
_080189F0: .4byte 0x087BAF10
_080189F4:
	ldr r1, _08018A14 @ =0x00000A7E
	adds r0, r5, r1
	ldrb r0, [r0]
	subs r0, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bhi _08018A24
	ldr r2, _08018A18 @ =0x00000A1C
	adds r0, r5, r2
	ldr r1, _08018A1C @ =0x08325134
	ldr r3, _08018A20 @ =0x087BAF1C
_08018A0C:
	adds r2, r7, #0
	bl sub_0803DFE0
	b _08018A8C
	.align 2, 0
_08018A14: .4byte 0x00000A7E
_08018A18: .4byte 0x00000A1C
_08018A1C: .4byte 0x08325134
_08018A20: .4byte 0x087BAF1C
_08018A24:
	ldr r0, [sp, #0x24]
	cmp r0, #0
	beq _08018A50
	cmp r6, r8
	blo _08018A50
	ldr r1, _08018A44 @ =0x00000A1C
	adds r0, r5, r1
	ldr r1, _08018A48 @ =0x0832513C
	ldr r2, _08018A4C @ =0x087BAF24
	str r2, [sp]
	adds r2, r7, #0
	ldr r3, [sp, #0x24]
	bl sub_0803DFE0
	b _08018A8C
	.align 2, 0
_08018A44: .4byte 0x00000A1C
_08018A48: .4byte 0x0832513C
_08018A4C: .4byte 0x087BAF24
_08018A50:
	ldr r2, [sp, #0x28]
	cmp r2, #0
	beq _08018A78
	ldr r1, _08018A6C @ =0x00000A1C
	adds r0, r5, r1
	ldr r1, _08018A70 @ =0x08325148
	str r2, [sp]
	ldr r2, _08018A74 @ =0x087BAF24
	str r2, [sp, #4]
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_0803DFE0
	b _08018A8C
	.align 2, 0
_08018A6C: .4byte 0x00000A1C
_08018A70: .4byte 0x08325148
_08018A74: .4byte 0x087BAF24
_08018A78:
	ldr r2, _08018AA4 @ =0x00000A1C
	adds r0, r5, r2
	ldr r1, _08018AA8 @ =0x08325154
	str r6, [sp]
	ldr r2, _08018AAC @ =0x087BAF24
	str r2, [sp, #4]
	adds r2, r7, #0
	ldr r3, [sp, #0x2c]
	bl sub_0803DFE0
_08018A8C:
	ldr r0, _08018AB0 @ =0x00000A0C
	adds r1, r5, r0
	ldr r2, _08018AA4 @ =0x00000A1C
	adds r0, r5, r2
	str r0, [r1]
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08018AA4: .4byte 0x00000A1C
_08018AA8: .4byte 0x08325154
_08018AAC: .4byte 0x087BAF24
_08018AB0: .4byte 0x00000A0C

	thumb_func_start sub_08018AB4
sub_08018AB4: @ 0x08018AB4
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	ldr r1, _08018AE0 @ =0x00000A58
	adds r0, r4, r1
	ldr r1, _08018AE4 @ =0x087B8B44
	movs r2, #0x14
	bl sub_080002C4
	ldr r0, _08018AE8 @ =0x00000A6C
	adds r5, r4, r0
	ldr r1, _08018AEC @ =0x08325160
	adds r0, r5, #0
	adds r2, r6, #0
	bl sub_0803DFE0
	ldr r1, _08018AF0 @ =0x00000A5C
	adds r4, r4, r1
	str r5, [r4]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08018AE0: .4byte 0x00000A58
_08018AE4: .4byte 0x087B8B44
_08018AE8: .4byte 0x00000A6C
_08018AEC: .4byte 0x08325160
_08018AF0: .4byte 0x00000A5C

	thumb_func_start sub_08018AF4
sub_08018AF4: @ 0x08018AF4
	push {lr}
	sub sp, #4
	adds r3, r0, #0
	adds r2, r1, #0
	ldr r0, _08018B14 @ =0x00000A08
	adds r3, r3, r0
	movs r0, #1
	str r0, [sp]
	movs r0, #0
	adds r1, r3, #0
	movs r3, #0
	bl sub_080188DC
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_08018B14: .4byte 0x00000A08

	thumb_func_start sub_08018B18
sub_08018B18: @ 0x08018B18
	movs r1, #0
	str r1, [r0]
	ldr r2, _08018B3C @ =0x0000FFFF
	strh r2, [r0, #4]
	movs r2, #1
	strb r2, [r0, #6]
	str r1, [r0, #8]
	strb r1, [r0, #0xc]
	str r1, [r0, #0x10]
	str r1, [r0, #0x14]
	strb r1, [r0, #0x18]
	strh r1, [r0, #0x1a]
	strh r1, [r0, #0x1c]
	strh r1, [r0, #0x1e]
	str r1, [r0, #0x20]
	subs r1, #1
	strh r1, [r0, #0x24]
	bx lr
	.align 2, 0
_08018B3C: .4byte 0x0000FFFF

	thumb_func_start sub_08018B40
sub_08018B40: @ 0x08018B40
	push {r4, r5, r6, lr}
	adds r6, r1, #0
	movs r5, #0
	cmp r5, r6
	bhs _08018B5A
	adds r4, r0, #0
_08018B4C:
	adds r0, r4, #0
	bl sub_08018B18
	adds r4, #0x28
	adds r5, #1
	cmp r5, r6
	blo _08018B4C
_08018B5A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08018B60
sub_08018B60: @ 0x08018B60
	ldr r1, [r0, #0x10]
	lsls r1, r1, #8
	str r1, [r0, #0x10]
	ldr r1, [r0, #0x14]
	lsls r1, r1, #8
	str r1, [r0, #0x14]
	bx lr
	.align 2, 0

	thumb_func_start sub_08018B70
sub_08018B70: @ 0x08018B70
	push {r4, r5, r6, lr}
	adds r6, r1, #0
	movs r5, #0
	cmp r5, r6
	bhs _08018B8A
	adds r4, r0, #0
_08018B7C:
	adds r0, r4, #0
	bl sub_08018B60
	adds r4, #0x28
	adds r5, #1
	cmp r5, r6
	blo _08018B7C
_08018B8A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08018B90
sub_08018B90: @ 0x08018B90
	push {lr}
	adds r3, r0, #0
	ldr r0, _08018BB8 @ =0x40008000
	cmp r3, r0
	beq _08018C48
	cmp r3, r0
	bhi _08018BD0
	movs r0, #0x80
	lsls r0, r0, #8
	cmp r3, r0
	beq _08018C40
	cmp r3, r0
	bhi _08018BBC
	cmp r3, #0
	beq _08018C14
	movs r0, #0x80
	lsls r0, r0, #7
	cmp r3, r0
	beq _08018C20
	b _08018C60
	.align 2, 0
_08018BB8: .4byte 0x40008000
_08018BBC:
	movs r0, #0x80
	lsls r0, r0, #0x17
	cmp r3, r0
	beq _08018C18
	ldr r0, _08018BCC @ =0x40004000
	cmp r3, r0
	beq _08018C28
	b _08018C60
	.align 2, 0
_08018BCC: .4byte 0x40004000
_08018BD0:
	ldr r0, _08018BEC @ =0x80008000
	cmp r3, r0
	beq _08018C50
	cmp r3, r0
	bhi _08018BF4
	movs r0, #0x80
	lsls r0, r0, #0x18
	cmp r3, r0
	beq _08018C1C
	ldr r0, _08018BF0 @ =0x80004000
	cmp r3, r0
	beq _08018C30
	b _08018C60
	.align 2, 0
_08018BEC: .4byte 0x80008000
_08018BF0: .4byte 0x80004000
_08018BF4:
	ldr r0, _08018C04 @ =0xC0004000
	cmp r3, r0
	beq _08018C38
	cmp r3, r0
	bhi _08018C08
	movs r0, #0xc0
	lsls r0, r0, #0x18
	b _08018C60
	.align 2, 0
_08018C04: .4byte 0xC0004000
_08018C08:
	ldr r0, _08018C10 @ =0xC0008000
	cmp r3, r0
	beq _08018C58
	b _08018C60
	.align 2, 0
_08018C10: .4byte 0xC0008000
_08018C14:
	movs r0, #1
	b _08018C62
_08018C18:
	movs r0, #2
	b _08018C62
_08018C1C:
	movs r0, #4
	b _08018C62
_08018C20:
	movs r0, #2
	str r0, [r1]
	movs r0, #1
	b _08018C64
_08018C28:
	movs r0, #4
	str r0, [r1]
	movs r0, #1
	b _08018C64
_08018C30:
	movs r0, #4
	str r0, [r1]
	movs r0, #2
	b _08018C64
_08018C38:
	movs r0, #8
	str r0, [r1]
	movs r0, #4
	b _08018C64
_08018C40:
	movs r0, #1
	str r0, [r1]
	movs r0, #2
	b _08018C64
_08018C48:
	movs r0, #1
	str r0, [r1]
	movs r0, #4
	b _08018C64
_08018C50:
	movs r0, #2
	str r0, [r1]
	movs r0, #4
	b _08018C64
_08018C58:
	movs r0, #4
	str r0, [r1]
	movs r0, #8
	b _08018C64
_08018C60:
	movs r0, #8
_08018C62:
	str r0, [r1]
_08018C64:
	str r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08018C6C
sub_08018C6C: @ 0x08018C6C
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r3, #0
	ldr r2, _08018C88 @ =0x0203BB80
_08018C74:
	ldr r0, [r2]
	cmp r0, r4
	bne _08018C8C
	movs r5, #6
	ldrsh r0, [r2, r5]
	cmp r0, r1
	bne _08018C8C
	movs r1, #4
	ldrsh r0, [r2, r1]
	b _08018C98
	.align 2, 0
_08018C88: .4byte 0x0203BB80
_08018C8C:
	adds r2, #8
	adds r3, #1
	cmp r3, #0x3f
	bls _08018C74
	movs r0, #1
	rsbs r0, r0, #0
_08018C98:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08018CA0
sub_08018CA0: @ 0x08018CA0
	push {r4, lr}
	movs r2, #0
	movs r3, #2
	rsbs r3, r3, #0
	ldr r1, _08018CC4 @ =0x0203BB80
_08018CAA:
	ldr r0, [r1]
	cmp r0, #0
	bne _08018CC8
	movs r4, #4
	ldrsh r0, [r1, r4]
	cmp r0, r3
	bne _08018CC8
	movs r4, #6
	ldrsh r0, [r1, r4]
	cmp r0, #0
	bne _08018CC8
	adds r0, r2, #0
	b _08018CD4
	.align 2, 0
_08018CC4: .4byte 0x0203BB80
_08018CC8:
	adds r1, #8
	adds r2, #1
	cmp r2, #0x3f
	bls _08018CAA
	movs r0, #1
	rsbs r0, r0, #0
_08018CD4:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08018CDC
sub_08018CDC: @ 0x08018CDC
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r3, #0
	movs r3, #0
	adds r0, r1, #0
	muls r0, r2, r0
	lsls r0, r0, #6
	cmp r3, r0
	bhs _08018D28
	mov r2, sp
	adds r5, r0, #0
_08018CF4:
	adds r1, r6, r3
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08018D0E
	ldrh r0, [r1]
	strh r0, [r2]
	ldrb r0, [r2]
	cmp r0, #0
	beq _08018D22
	adds r0, r0, r4
	strb r0, [r2]
	b _08018D1E
_08018D0E:
	subs r1, #1
	ldrh r0, [r1]
	strh r0, [r2]
	ldrb r0, [r2, #1]
	cmp r0, #0
	beq _08018D22
	adds r0, r0, r4
	strb r0, [r2, #1]
_08018D1E:
	ldrh r0, [r2]
	strh r0, [r1]
_08018D22:
	adds r3, #1
	cmp r3, r5
	blo _08018CF4
_08018D28:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08018D30
sub_08018D30: @ 0x08018D30
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	adds r5, r0, #0
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	mov sb, r3
	ldr r0, [sp, #0x38]
	mov sl, r0
	cmp r5, #0
	bne _08018D52
	movs r0, #1
	rsbs r0, r0, #0
	b _08018DB2
_08018D52:
	ldr r0, [r5, #4]
	cmp r0, #0
	bne _08018D64
	movs r0, #1
	rsbs r0, r0, #0
	mov r3, sl
	str r0, [r3]
	movs r0, #0
	b _08018E8C
_08018D64:
	adds r7, r0, #0
	ldrb r1, [r5, #8]
	bl sub_08018C6C
	adds r4, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r4, r0
	beq _08018D7C
	mov r0, sl
	str r4, [r0]
	b _08018E8A
_08018D7C:
	ldr r6, _08018DA0 @ =0x0203A680
	movs r3, #0
	ldrsh r1, [r6, r3]
	ldr r0, [sp, #8]
	ldr r3, [sp, #0xc]
	adds r2, r0, #0
	muls r2, r3, r2
	lsls r0, r2, #1
	adds r1, r1, r0
	ldr r0, _08018DA4 @ =0x000003FF
	str r2, [sp, #0x10]
	cmp r1, r0
	bls _08018DA8
	mov r0, sl
	str r4, [r0]
	movs r0, #0
	b _08018E8C
	.align 2, 0
_08018DA0: .4byte 0x0203A680
_08018DA4: .4byte 0x000003FF
_08018DA8:
	bl sub_08018CA0
	mov r8, r0
	cmp r8, r4
	bne _08018DBA
_08018DB2:
	mov r1, sl
	str r0, [r1]
	movs r0, #0
	b _08018E8C
_08018DBA:
	movs r3, #0
	ldrsh r0, [r6, r3]
	lsls r0, r0, #5
	ldr r4, _08018DDC @ =0x06010000
	adds r6, r0, r4
	ldrb r0, [r5]
	cmp r0, #2
	bne _08018E20
	mov r0, sb
	cmp r0, #0
	bne _08018DE0
	adds r0, r6, #0
	adds r1, r7, #0
	ldr r2, [sp, #0x34]
	bl sub_080002EC
	b _08018DE8
	.align 2, 0
_08018DDC: .4byte 0x06010000
_08018DE0:
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_0803D358
_08018DE8:
	ldrb r3, [r5, #0x12]
	ldrb r0, [r5, #0x10]
	subs r3, r3, r0
	adds r0, r6, #0
	ldr r1, [sp, #8]
	ldr r2, [sp, #0xc]
	bl sub_08018CDC
	ldrb r0, [r5, #0x12]
	lsls r0, r0, #1
	ldr r1, _08018E1C @ =0x05000200
	adds r6, r0, r1
	ldrb r0, [r5, #0x11]
	ldrb r2, [r5, #0x10]
	subs r0, r0, r2
	adds r0, #1
	lsls r4, r0, #1
	lsls r2, r2, #1
	ldr r1, [r5, #0xc]
	adds r1, r1, r2
	adds r0, r6, #0
	adds r2, r4, #0
	bl sub_080002EC
	b _08018E66
	.align 2, 0
_08018E1C: .4byte 0x05000200
_08018E20:
	cmp r0, #1
	bne _08018E4C
	movs r2, #0
	ldrb r0, [r5, #8]
	cmp r0, #2
	bne _08018E2E
	movs r2, #1
_08018E2E:
	ldrb r1, [r5, #8]
	ldrb r3, [r5, #0x12]
	lsls r3, r3, #1
	ldr r0, _08018E48 @ =0x05000200
	adds r3, r3, r0
	str r6, [sp]
	ldrb r0, [r5, #0x12]
	str r0, [sp, #4]
	adds r0, r7, #0
	bl sub_08009F78
	b _08018E66
	.align 2, 0
_08018E48: .4byte 0x05000200
_08018E4C:
	mov r1, sb
	cmp r1, #0
	bne _08018E5E
	adds r0, r6, #0
	adds r1, r7, #0
	ldr r2, [sp, #0x34]
	bl sub_080002EC
	b _08018E66
_08018E5E:
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_0803D358
_08018E66:
	ldr r0, _08018E9C @ =0x0203BB80
	mov r3, r8
	lsls r2, r3, #3
	adds r2, r2, r0
	str r7, [r2]
	ldr r3, _08018EA0 @ =0x0203A680
	ldrh r1, [r3]
	strh r1, [r2, #4]
	ldrb r0, [r5, #8]
	strh r0, [r2, #6]
	ldr r4, [sp, #0x10]
	lsls r0, r4, #1
	adds r1, r1, r0
	strh r1, [r3]
	movs r1, #4
	ldrsh r0, [r2, r1]
	mov r3, sl
	str r0, [r3]
_08018E8A:
	adds r0, r7, #0
_08018E8C:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08018E9C: .4byte 0x0203BB80
_08018EA0: .4byte 0x0203A680

	thumb_func_start sub_08018EA4
sub_08018EA4: @ 0x08018EA4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x14
	mov sb, r1
	mov r8, r2
	adds r7, r3, #0
	ldr r4, [r0]
	cmp r4, #0
	beq _08018F18
	ldr r0, [r4, #8]
	add r2, sp, #0xc
	add r1, sp, #8
	bl sub_08018B90
	movs r1, #0
	mov r0, sb
	str r1, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	mov r2, r8
	str r0, [r2]
	str r1, [r7]
	movs r6, #0
	ldrb r0, [r4, #4]
	cmp r6, r0
	bhs _08018F18
	movs r5, #0
_08018EDE:
	ldr r0, [r4]
	adds r0, r0, r5
	ldr r1, [sp, #8]
	ldr r2, [sp, #0xc]
	movs r3, #0
	str r3, [sp]
	add r3, sp, #0x10
	str r3, [sp, #4]
	movs r3, #1
	bl sub_08018D30
	cmp r6, #0
	bne _08018F02
	mov r1, sb
	str r0, [r1]
	ldr r0, [sp, #0x10]
	mov r2, r8
	str r0, [r2]
_08018F02:
	ldr r0, [r4]
	adds r0, r5, r0
	ldrh r1, [r0, #0x14]
	ldr r0, [r7]
	adds r0, r0, r1
	str r0, [r7]
	adds r5, #0x18
	adds r6, #1
	ldrb r0, [r4, #4]
	cmp r6, r0
	blo _08018EDE
_08018F18:
	add sp, #0x14
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08018F28
sub_08018F28: @ 0x08018F28
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r2, r0, #0
	ldrh r0, [r2, #4]
	cmp r0, #0x7f
	bhi _08018F9E
	movs r0, #0x24
	ldrsh r7, [r2, r0]
	ldr r0, [r2, #0x10]
	asrs r0, r0, #8
	mov ip, r0
	ldr r0, [r2, #0x14]
	asrs r6, r0, #8
	ldrb r0, [r2, #0xc]
	movs r1, #0
	mov r8, r1
	cmp r0, #0
	bne _08018F56
	movs r5, #0x80
	lsls r5, r5, #2
	mov r8, r5
_08018F56:
	ldr r0, _08018FAC @ =0x000003FF
	cmp r7, r0
	bhi _08018F9E
	ldr r3, [r2, #8]
	ldrb r0, [r2, #6]
	mov sb, r0
	ldr r1, [r2]
	ldrh r0, [r1, #8]
	ldrh r4, [r1, #0xa]
	movs r1, #4
	ldrsh r2, [r2, r1]
	lsls r2, r2, #3
	movs r5, #0xe0
	lsls r5, r5, #0x13
	adds r2, r2, r5
	movs r5, #0x80
	lsls r5, r5, #6
	adds r1, r5, #0
	orrs r3, r1
	orrs r0, r3
	mov r1, r8
	orrs r0, r1
	movs r1, #0xff
	ands r6, r1
	orrs r0, r6
	strh r0, [r2]
	ldr r5, _08018FB0 @ =0x000001FF
	adds r0, r5, #0
	mov r1, ip
	ands r1, r0
	orrs r4, r1
	strh r4, [r2, #2]
	mov r0, sb
	lsls r5, r0, #0xa
	orrs r7, r5
	strh r7, [r2, #4]
_08018F9E:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08018FAC: .4byte 0x000003FF
_08018FB0: .4byte 0x000001FF

	thumb_func_start sub_08018FB4
sub_08018FB4: @ 0x08018FB4
	push {r4, lr}
	sub sp, #0xc
	adds r4, r0, #0
	add r2, sp, #4
	add r3, sp, #8
	mov r1, sp
	bl sub_08018EA4
	ldr r0, [sp]
	str r0, [r4, #0x20]
	ldr r0, [sp, #4]
	movs r1, #0
	strh r0, [r4, #0x24]
	ldr r0, [sp, #8]
	strh r0, [r4, #0x1a]
	strh r1, [r4, #0x1c]
	add sp, #0xc
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08018FDC
sub_08018FDC: @ 0x08018FDC
	push {r4, r5, r6, lr}
	adds r6, r1, #0
	movs r5, #0
	cmp r5, r6
	bhs _08018FF6
	adds r4, r0, #0
_08018FE8:
	adds r0, r4, #0
	bl sub_08018FB4
	adds r4, #0x28
	adds r5, #1
	cmp r5, r6
	blo _08018FE8
_08018FF6:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08018FFC
sub_08018FFC: @ 0x08018FFC
	push {r4, r5, r6, lr}
	adds r6, r1, #0
	movs r5, #0
	cmp r5, r6
	bhs _08019016
	adds r4, r0, #0
_08019008:
	adds r0, r4, #0
	bl sub_08018F28
	adds r4, #0x28
	adds r5, #1
	cmp r5, r6
	blo _08019008
_08019016:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_0801901C
sub_0801901C: @ 0x0801901C
	strb r1, [r0, #0xc]
	bx lr
_08019020:
	.byte 0x00, 0x7B, 0x70, 0x47

	thumb_func_start sub_08019024
sub_08019024: @ 0x08019024
	str r1, [r0, #0x10]
	str r2, [r0, #0x14]
	bx lr
	.align 2, 0

	thumb_func_start sub_0801902C
sub_0801902C: @ 0x0801902C
	ldr r3, [r0, #0x10]
	str r3, [r1]
	ldr r0, [r0, #0x14]
	str r0, [r2]
	bx lr
	.align 2, 0

	thumb_func_start sub_08019038
sub_08019038: @ 0x08019038
	str r1, [r0, #8]
	bx lr

	thumb_func_start sub_0801903C
sub_0801903C: @ 0x0801903C
	push {lr}
	adds r2, r0, #0
	cmp r1, #0
	bne _0801904A
	strh r1, [r2, #0x1e]
	strh r1, [r2, #0x1c]
	b _0801904E
_0801904A:
	movs r0, #0
	strh r0, [r2, #0x1c]
_0801904E:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08019054
sub_08019054: @ 0x08019054
	push {lr}
	strb r1, [r0, #0x18]
	cmp r2, #0
	beq _08019062
	movs r1, #0
	bl sub_0801903C
_08019062:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08019068
sub_08019068: @ 0x08019068
	ldrh r0, [r0, #0x1c]
	bx lr
_0801906C:
	.byte 0xC0, 0x8B, 0x70, 0x47

	thumb_func_start sub_08019070
sub_08019070: @ 0x08019070
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	ldr r0, [r2]
	ldr r6, [r0]
	ldrb r4, [r0, #4]
	movs r3, #0
	cmp r3, r4
	bhs _080190A4
	ldrh r1, [r6, #0x14]
	subs r0, r1, #1
	ldrh r2, [r2, #0x1c]
	cmp r0, r2
	bhs _080190A0
	adds r5, r2, #0
	adds r2, r6, #0
_0801908E:
	adds r2, #0x18
	adds r3, #1
	cmp r3, r4
	bhs _080190A4
	ldrh r0, [r2, #0x14]
	adds r1, r1, r0
	subs r0, r1, #1
	cmp r0, r5
	blo _0801908E
_080190A0:
	cmp r3, r4
	blo _080190A6
_080190A4:
	subs r3, r4, #1
_080190A6:
	adds r0, r3, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080190B0
sub_080190B0: @ 0x080190B0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
_080190B4:
	ldr r1, [r4]
	cmp r1, #0
	beq _0801915A
	ldr r6, [r1]
	cmp r6, #0
	beq _0801915A
	ldrb r0, [r1, #4]
	cmp r0, #1
	bls _0801915A
	ldrh r0, [r4, #0x1a]
	cmp r0, #1
	bls _0801915A
	ldrb r0, [r4, #0x18]
	cmp r0, #0
	beq _0801915A
	movs r2, #6
	ldrsh r0, [r1, r2]
	cmp r0, #0
	bge _080190EE
	ldrh r1, [r4, #0x1c]
	ldrh r0, [r4, #0x1a]
	subs r0, #1
	cmp r1, r0
	ble _0801912A
	adds r0, r4, #0
	movs r1, #0
	bl sub_0801903C
	b _080190B4
_080190EE:
	movs r2, #6
	ldrsh r0, [r1, r2]
	subs r0, #1
	ldrh r1, [r4, #0x1e]
	cmp r0, r1
	bgt _08019110
	ldrh r1, [r4, #0x1c]
	ldrh r0, [r4, #0x1a]
	subs r0, #1
	cmp r1, r0
	ble _0801912A
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl sub_08019054
	b _080190B4
_08019110:
	ldrh r1, [r4, #0x1c]
	ldrh r0, [r4, #0x1a]
	subs r0, #1
	cmp r1, r0
	ble _0801912A
	adds r0, r4, #0
	movs r1, #1
	bl sub_0801903C
	ldrh r0, [r4, #0x1e]
	adds r0, #1
	strh r0, [r4, #0x1e]
	b _080190B4
_0801912A:
	adds r0, r4, #0
	bl sub_08019070
	ldrh r3, [r4, #0x24]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #3
	adds r5, r1, r6
	ldr r2, [r5, #4]
	ldr r0, [r4, #0x20]
	cmp r2, r0
	beq _0801914E
	ldrb r1, [r6, #8]
	adds r0, r2, #0
	bl sub_08018C6C
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_0801914E:
	strh r3, [r4, #0x24]
	ldr r0, [r5, #4]
	str r0, [r4, #0x20]
	ldrh r0, [r4, #0x1c]
	adds r0, #1
	strh r0, [r4, #0x1c]
_0801915A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08019160
sub_08019160: @ 0x08019160
	push {r4, r5, r6, lr}
	adds r6, r1, #0
	movs r5, #0
	cmp r5, r6
	bhs _0801917A
	adds r4, r0, #0
_0801916C:
	adds r0, r4, #0
	bl sub_080190B0
	adds r4, #0x28
	adds r5, #1
	cmp r5, r6
	blo _0801916C
_0801917A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08019180
sub_08019180: @ 0x08019180
	ldr r1, _0801918C @ =0x04000050
	movs r2, #0xc0
	lsls r2, r2, #2
	adds r0, r2, #0
	strh r0, [r1]
	bx lr
	.align 2, 0
_0801918C: .4byte 0x04000050

	thumb_func_start sub_08019190
sub_08019190: @ 0x08019190
	push {lr}
	adds r2, r0, #0
	movs r0, #0x80
	lsls r0, r0, #5
	cmp r2, r0
	ble _080191A0
	movs r2, #0x10
	b _080191AE
_080191A0:
	cmp r2, #0
	bge _080191A8
	movs r2, #0
	b _080191AE
_080191A8:
	asrs r0, r2, #8
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
_080191AE:
	movs r0, #0x80
	lsls r0, r0, #5
	cmp r1, r0
	ble _080191BA
	movs r0, #0x10
	b _080191C8
_080191BA:
	cmp r1, #0
	bge _080191C2
	movs r0, #0
	b _080191C8
_080191C2:
	asrs r0, r1, #8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
_080191C8:
	ldr r1, _080191D4 @ =0x04000052
	lsls r0, r0, #8
	orrs r0, r2
	strh r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_080191D4: .4byte 0x04000052

	thumb_func_start sub_080191D8
sub_080191D8: @ 0x080191D8
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldr r4, [sp, #0x14]
	ldr r5, [sp, #0x18]
	ldr r6, _08019240 @ =0x00000A7D
	adds r0, r7, r6
	strb r1, [r0]
	ldr r0, _08019244 @ =0x00000A7E
	adds r6, r7, r0
	strb r3, [r6]
	ldr r1, _08019248 @ =0x00000A7F
	adds r3, r7, r1
	strb r2, [r3]
	movs r2, #0xa8
	lsls r2, r2, #4
	adds r0, r7, r2
	str r4, [r0]
	adds r1, #5
	adds r0, r7, r1
	str r5, [r0]
	adds r2, #8
	adds r0, r7, r2
	ldr r1, [sp, #0x1c]
	str r1, [r0]
	adds r2, #4
	adds r0, r7, r2
	ldr r1, [sp, #0x20]
	str r1, [r0]
	adds r2, #4
	adds r0, r7, r2
	ldr r1, [sp, #0x24]
	str r1, [r0]
	adds r2, #4
	adds r0, r7, r2
	ldr r1, [sp, #0x28]
	str r1, [r0]
	adds r2, #4
	adds r1, r7, r2
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r1]
	ldrb r0, [r3]
	cmp r0, #0
	bne _08019234
	movs r0, #1
	strb r0, [r3]
_08019234:
	ldrb r0, [r6]
	adds r1, r0, #0
	cmp r1, #0
	bne _0801924C
	strb r1, [r3]
	b _0801925C
	.align 2, 0
_08019240: .4byte 0x00000A7D
_08019244: .4byte 0x00000A7E
_08019248: .4byte 0x00000A7F
_0801924C:
	subs r0, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bhi _0801925C
	add r6, sp, #0x2c
	ldrb r6, [r6]
	strb r6, [r3]
_0801925C:
	ldr r0, _08019270 @ =0x00000A7F
	adds r1, r7, r0
	ldrb r0, [r1]
	ldr r2, [sp, #0x2c]
	cmp r0, r2
	bls _0801926A
	strb r2, [r1]
_0801926A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08019270: .4byte 0x00000A7F

	thumb_func_start sub_08019274
sub_08019274: @ 0x08019274
	push {lr}
	ldr r1, _08019298 @ =0x0203A680
	movs r0, #0x30
	strh r0, [r1]
	movs r1, #0
	movs r2, #0
	ldr r3, _0801929C @ =0x0000FFFE
	ldr r0, _080192A0 @ =0x0203BB80
_08019284:
	str r2, [r0]
	strh r3, [r0, #4]
	strh r2, [r0, #6]
	adds r0, #8
	adds r1, #1
	cmp r1, #0x3f
	bls _08019284
	pop {r0}
	bx r0
	.align 2, 0
_08019298: .4byte 0x0203A680
_0801929C: .4byte 0x0000FFFE
_080192A0: .4byte 0x0203BB80

	thumb_func_start sub_080192A4
sub_080192A4: @ 0x080192A4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0
	mov r8, r2
	mov sb, r3
	cmp r1, #2
	bhi _080192F4
	lsls r4, r1, #1
	adds r4, r4, r1
	lsls r4, r4, #3
	ldr r5, _080192E8 @ =0x02039E30
	adds r6, r4, r5
	ldr r1, _080192EC @ =0x087B892C
	adds r1, r4, r1
	adds r0, r6, #0
	movs r2, #0x18
	bl sub_080002C4
	ldr r1, _080192F0 @ =0x087B8AC4
	adds r0, r7, #0
	movs r2, #0xc
	bl sub_080002C4
	adds r5, #4
	adds r4, r4, r5
	mov r0, r8
	str r0, [r4]
	mov r0, sb
	strb r0, [r6, #8]
	str r6, [r7]
	movs r0, #0
	b _080192F8
	.align 2, 0
_080192E8: .4byte 0x02039E30
_080192EC: .4byte 0x087B892C
_080192F0: .4byte 0x087B8AC4
_080192F4:
	movs r0, #1
	rsbs r0, r0, #0
_080192F8:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08019304
sub_08019304: @ 0x08019304
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	ldr r1, _08019344 @ =0x00000A7E
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #1
	bne _08019348
	ldr r1, [r4]
	cmp r1, #0
	blt _080193EA
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #8
	adds r0, r5, r0
	bl sub_08018FB4
	ldr r1, [r4]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #8
	adds r0, r5, r0
	movs r1, #1
	bl sub_0801901C
	movs r1, #0
	ldrsh r0, [r4, r1]
	b _080193EE
	.align 2, 0
_08019344: .4byte 0x00000A7E
_08019348:
	cmp r0, #2
	bne _0801938A
	ldr r1, [r4, #4]
	cmp r1, #0
	blt _080193EA
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #8
	adds r0, r5, r0
	bl sub_08018FB4
	ldr r1, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #8
	adds r0, r5, r0
	movs r1, #1
	bl sub_0801901C
	cmp r6, #0
	blt _08019384
	lsls r0, r6, #2
	adds r0, r0, r6
	lsls r0, r0, #3
	adds r0, #8
	adds r0, r5, r0
	bl sub_08018FB4
_08019384:
	movs r1, #4
	ldrsh r0, [r4, r1]
	b _080193EE
_0801938A:
	cmp r0, #3
	bne _080193BA
	ldr r1, [r4, #8]
	cmp r1, #0
	blt _080193EA
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #8
	adds r0, r5, r0
	bl sub_08018FB4
	ldr r1, [r4, #8]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #8
	adds r0, r5, r0
	movs r1, #1
	bl sub_0801901C
	movs r1, #8
	ldrsh r0, [r4, r1]
	b _080193EE
_080193BA:
	cmp r0, #0
	bne _080193EA
	ldr r1, [r4, #0xc]
	cmp r1, #0
	blt _080193EA
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #8
	adds r0, r5, r0
	bl sub_08018FB4
	ldr r1, [r4, #0xc]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #8
	adds r0, r5, r0
	movs r1, #1
	bl sub_0801901C
	movs r1, #0xc
	ldrsh r0, [r4, r1]
	b _080193EE
_080193EA:
	movs r0, #1
	rsbs r0, r0, #0
_080193EE:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_080193F4
sub_080193F4: @ 0x080193F4
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r5, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	ldr r1, _08019420 @ =0x08325165
	mov r0, sp
	movs r2, #0x10
	bl sub_0803DEBC
	movs r0, #0
	str r0, [r4]
	subs r5, #0xa
	cmp r5, #0xf
	bhi _08019424
	mov r1, sp
	adds r0, r1, r5
	ldrb r0, [r0]
	rsbs r0, r0, #0
	str r0, [r6]
	movs r0, #1
	b _08019426
	.align 2, 0
_08019420: .4byte 0x08325165
_08019424:
	str r0, [r6]
_08019426:
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08019430
sub_08019430: @ 0x08019430
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #8
	adds r5, r0, #0
	mov sb, r1
	adds r4, r2, #0
	mov r8, r3
	bl sub_08019068
	add r2, sp, #4
	mov r1, sp
	bl sub_080193F4
	adds r6, r0, #0
	ldr r1, [sp]
	lsls r1, r1, #8
	str r1, [sp]
	ldr r2, [sp, #4]
	lsls r2, r2, #8
	str r2, [sp, #4]
	add r1, sb
	adds r2, r4, r2
	adds r0, r5, #0
	bl sub_08019024
	mov r0, r8
	adds r1, r6, #0
	bl sub_0801901C
	movs r0, #0xc0
	lsls r0, r0, #5
	adds r4, r4, r0
	mov r0, r8
	mov r1, sb
	adds r2, r4, #0
	bl sub_08019024
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_0801948C
sub_0801948C: @ 0x0801948C
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	movs r4, #0
	adds r3, r1, #0
_08019494:
	ldr r0, [r3]
	cmp r0, #0
	bge _080194AA
	movs r0, #0
	movs r1, #1
	rsbs r1, r1, #0
_080194A0:
	stm r2!, {r1}
	adds r0, #1
	cmp r0, #2
	bls _080194A0
	b _080194E4
_080194AA:
	adds r3, #4
	adds r4, #1
	cmp r4, #2
	bls _08019494
	movs r4, #0
	adds r5, r1, #0
	adds r7, r2, #0
_080194B8:
	ldr r1, [r5]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #8
	adds r0, r6, r0
	bl sub_08018FB4
	ldr r1, [r5]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #8
	adds r0, r6, r0
	movs r1, #1
	bl sub_0801901C
	ldm r5!, {r0}
	stm r7!, {r0}
	adds r4, #1
	cmp r4, #2
	bls _080194B8
_080194E4:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080194EC
sub_080194EC: @ 0x080194EC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r3, r0, #0
	adds r4, r1, #0
	mov r0, sp
	ldr r1, _08019510 @ =0x08325178
	ldm r1!, {r5, r6, r7}
	stm r0!, {r5, r6, r7}
	ldr r1, _08019514 @ =0x00000A7E
	adds r0, r3, r1
	ldrb r0, [r0]
	cmp r0, #5
	bne _08019518
	adds r0, r3, #0
	adds r1, r4, #0
	bl sub_0801948C
	b _0801953A
	.align 2, 0
_08019510: .4byte 0x08325178
_08019514: .4byte 0x00000A7E
_08019518:
	cmp r0, #4
	bne _08019522
	adds r1, r4, #0
	adds r1, #0xc
	b _0801952A
_08019522:
	cmp r0, #6
	bne _08019532
	adds r1, r4, #0
	adds r1, #0x18
_0801952A:
	adds r0, r3, #0
	bl sub_0801948C
	b _0801953A
_08019532:
	adds r0, r3, #0
	mov r1, sp
	bl sub_0801948C
_0801953A:
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08019544
sub_08019544: @ 0x08019544
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	mov sb, r0
	mov r8, r1
	adds r1, r3, #0
	movs r6, #0
	cmp r6, r8
	bhs _08019590
	movs r3, #0
	ldr r5, [sp, #0x20]
	adds r4, r1, #0
	adds r7, r2, #0
_08019562:
	ldr r1, [r7]
	cmp r1, #0
	blt _08019580
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #8
	add r0, sb
	adds r1, r4, #0
	adds r2, r5, #0
	str r3, [sp]
	bl sub_0801902C
	ldr r3, [sp]
	b _08019584
_08019580:
	str r3, [r4]
	str r3, [r5]
_08019584:
	adds r5, #4
	adds r4, #4
	adds r7, #4
	adds r6, #1
	cmp r6, r8
	blo _08019562
_08019590:
	movs r6, #0
	cmp r6, r8
	bhs _080195A4
	movs r1, #0xc0
	lsls r1, r1, #6
	ldr r0, [sp, #0x24]
_0801959C:
	stm r0!, {r1}
	adds r6, #1
	cmp r6, r8
	blo _0801959C
_080195A4:
	movs r1, #0xb4
	lsls r1, r1, #8
	ldr r0, [sp, #0x28]
	str r1, [r0]
	movs r1, #0
	ldr r0, [sp, #0x2c]
	str r1, [r0]
	movs r1, #0x80
	lsls r1, r1, #3
	ldr r0, [sp, #0x30]
	str r1, [r0]
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080195C8
sub_080195C8: @ 0x080195C8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	adds r7, r1, #0
	ldr r1, [sp, #0x30]
	str r1, [sp, #8]
	mov sl, r3
	ldr r0, [sp, #0x2c]
	mov sb, r0
	mov r8, r2
_080195E8:
	ldr r0, [r7]
	cmp r0, #0
	blt _0801963E
	mov r1, r8
	ldr r6, [r1]
	mov r2, sb
	ldr r4, [r2]
	ldr r1, [sp, #0x38]
	ldr r0, [r1]
	subs r4, r4, r6
	lsls r0, r0, #0xa
	ldr r1, [sp, #0x34]
	bl sub_0803D7D4
	adds r5, r4, #0
	muls r5, r0, r5
	asrs r5, r5, #0xa
	adds r5, r5, r6
	mov r2, sl
	ldr r6, [r2]
	ldr r0, [sp, #8]
	ldr r4, [r0]
	ldr r1, [sp, #0x38]
	ldr r0, [r1]
	subs r4, r4, r6
	lsls r0, r0, #0xa
	ldr r1, [sp, #0x34]
	bl sub_0803D7D4
	adds r2, r4, #0
	muls r2, r0, r2
	asrs r2, r2, #0xa
	adds r2, r2, r6
	ldr r1, [r7]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #8
	ldr r1, [sp]
	adds r0, r1, r0
	adds r1, r5, #0
	bl sub_08019024
_0801963E:
	adds r7, #4
	ldr r2, [sp, #8]
	adds r2, #4
	str r2, [sp, #8]
	movs r0, #4
	add sl, r0
	add sb, r0
	add r8, r0
	ldr r1, [sp, #4]
	adds r1, #1
	str r1, [sp, #4]
	cmp r1, #2
	bls _080195E8
	ldr r2, [sp, #0x3c]
	cmp r2, #0
	beq _08019676
	ldr r1, [sp, #0x38]
	ldr r0, [r1]
	ldr r1, [r2]
	adds r0, r0, r1
	ldr r2, [sp, #0x38]
	str r0, [r2]
	ldr r1, [sp, #0x3c]
	ldr r0, [r1]
	lsrs r1, r0, #5
	adds r0, r0, r1
	ldr r2, [sp, #0x3c]
	str r0, [r2]
_08019676:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08019688
sub_08019688: @ 0x08019688
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r1, r2, #0
	adds r6, r3, #0
	ldr r7, [sp, #0x14]
	ldr r0, [r6]
	subs r4, r4, r5
	lsls r0, r0, #0xa
	bl sub_0803D7D4
	muls r0, r4, r0
	asrs r0, r0, #0xa
	adds r0, r0, r5
	movs r1, #0x80
	lsls r1, r1, #5
	subs r1, r1, r0
	bl sub_08019190
	cmp r7, #0
	beq _080196CA
	ldr r0, [r6]
	ldr r1, [r7]
	adds r0, r0, r1
	str r0, [r6]
	ldr r1, [r7]
	adds r0, r1, #0
	cmp r1, #0
	bge _080196C4
	adds r0, #0x3f
_080196C4:
	asrs r0, r0, #6
	adds r0, r1, r0
	str r0, [r7]
_080196CA:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080196D0
sub_080196D0: @ 0x080196D0
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r1, #0
	cmp r5, #0
	beq _08019710
	ldr r1, _080196FC @ =0x00000A94
	adds r0, r4, r1
	movs r2, #0xa9
	lsls r2, r2, #4
	adds r1, r4, r2
	ldr r3, [r0]
	ldr r1, [r1]
	subs r0, r3, r1
	cmp r0, #0
	blt _08019700
	ldr r0, [r5]
	adds r2, r1, r0
	cmp r2, r3
	bls _0801970C
	adds r2, r3, #0
	b _08019716
	.align 2, 0
_080196FC: .4byte 0x00000A94
_08019700:
	ldr r0, [r5]
	subs r2, r1, r0
	cmp r2, r3
	bhs _0801970C
	adds r2, r3, #0
	b _08019716
_0801970C:
	movs r6, #0
	b _08019718
_08019710:
	ldr r1, _08019754 @ =0x00000A94
	adds r0, r4, r1
	ldr r2, [r0]
_08019716:
	movs r6, #1
_08019718:
	ldr r1, _08019758 @ =0x00000A5C
	adds r0, r4, r1
	ldr r0, [r0]
	ldr r1, _0801975C @ =0x08325160
	bl sub_0803DFE0
	ldr r2, _08019760 @ =0x00000A58
	adds r1, r4, r2
	movs r0, #1
	str r0, [sp]
	movs r0, #0
	movs r2, #0
	movs r3, #0
	bl sub_080188DC
	cmp r5, #0
	beq _08019748
	ldr r0, [r5]
	adds r0, #1
	str r0, [r5]
	movs r0, #1
	movs r1, #0x80
	bl sub_08000634
_08019748:
	adds r0, r6, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08019754: .4byte 0x00000A94
_08019758: .4byte 0x00000A5C
_0801975C: .4byte 0x08325160
_08019760: .4byte 0x00000A58

	thumb_func_start sub_08019764
sub_08019764: @ 0x08019764
	push {lr}
	adds r2, r0, #0
	movs r3, #0
	b _08019770
_0801976C:
	adds r2, #4
	adds r3, #1
_08019770:
	cmp r3, r1
	bhs _0801977A
	ldr r0, [r2]
	cmp r0, #0
	bne _0801976C
_0801977A:
	adds r0, r3, #0
	cmp r0, r1
	blo _08019784
	movs r0, #1
	rsbs r0, r0, #0
_08019784:
	pop {r1}
	bx r1

	thumb_func_start sub_08019788
sub_08019788: @ 0x08019788
	push {lr}
	adds r2, r0, #0
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	bne _080197A0
	cmp r1, #1
	bne _080197A4
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _080197A4
_080197A0:
	movs r0, #1
	b _080197A6
_080197A4:
	movs r0, #0
_080197A6:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080197AC
sub_080197AC: @ 0x080197AC
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r3, #0
	ldr r0, _080197E4 @ =0x00000A7E
	adds r4, r5, r0
	ldrb r0, [r4]
	subs r0, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bhi _08019820
	cmp r1, r2
	blo _08019838
	ldr r0, [r6]
	cmp r0, #2
	beq _08019820
	cmp r0, #1
	bne _080197EC
	ldr r0, _080197E8 @ =0x02000020
	ldrh r0, [r0]
	ldrb r1, [r4]
	bl sub_08019788
	cmp r0, #1
	bne _08019838
	movs r0, #2
	str r0, [r6]
	b _08019838
	.align 2, 0
_080197E4: .4byte 0x00000A7E
_080197E8: .4byte 0x02000020
_080197EC:
	ldr r0, _08019818 @ =0x02000020
	ldrh r0, [r0]
	ldrb r1, [r4]
	bl sub_08019788
	adds r3, r0, #0
	cmp r3, #1
	bne _08019838
	ldr r1, _0801981C @ =0x00000A94
	adds r0, r5, r1
	movs r2, #0xa9
	lsls r2, r2, #4
	adds r1, r5, r2
	ldr r2, [r0]
	ldr r0, [r1]
	cmp r2, r0
	beq _0801982E
	ldrb r0, [r4]
	cmp r0, #6
	beq _0801982E
	str r3, [r6]
	b _08019838
	.align 2, 0
_08019818: .4byte 0x02000020
_0801981C: .4byte 0x00000A94
_08019820:
	ldr r0, _08019834 @ =0x02000020
	ldrh r0, [r0]
	ldrb r1, [r4]
	bl sub_08019788
	cmp r0, #1
	bne _08019838
_0801982E:
	movs r0, #1
	b _0801983A
	.align 2, 0
_08019834: .4byte 0x02000020
_08019838:
	movs r0, #0
_0801983A:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_08019840
sub_08019840: @ 0x08019840
	push {lr}
	cmp r0, #2
	bne _0801984E
	movs r0, #0xcc
	bl sub_0801B750
	b _08019874
_0801984E:
	cmp r0, #3
	bne _0801985A
	movs r0, #0xcd
	bl sub_0801B750
	b _08019874
_0801985A:
	cmp r0, #4
	beq _08019862
	cmp r0, #5
	bne _0801986A
_08019862:
	movs r0, #0xc8
	bl sub_0801B750
	b _08019874
_0801986A:
	cmp r0, #6
	bne _08019874
	movs r0, #0xc8
	bl sub_0801B750
_08019874:
	pop {r0}
	bx r0

	thumb_func_start sub_08019878
sub_08019878: @ 0x08019878
	push {lr}
	subs r0, #2
	cmp r0, #4
	bhi _08019884
	bl sub_0801B744
_08019884:
	pop {r0}
	bx r0

	thumb_func_start sub_08019888
sub_08019888: @ 0x08019888
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r6, r0, #0
	adds r7, r1, #0
	mov r8, r3
	ldr r1, [sp, #0x20]
	cmp r1, #7
	bls _080198A0
	movs r1, #7
_080198A0:
	cmp r2, #0
	bne _080198AA
	mov sb, r6
	adds r4, r6, r1
	b _080198DE
_080198AA:
	cmp r2, #1
	bne _080198D2
	mov sb, r7
	adds r4, r6, #3
	mov r0, sb
	adds r5, r0, r1
	mov r0, r8
	str r0, [sp]
	adds r0, r4, #0
	mov r1, sb
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_080185D4
	adds r4, r6, #4
	mov r0, r8
	str r0, [sp]
	adds r0, r4, #0
	mov r1, sb
	b _080198FA
_080198D2:
	cmp r2, #2
	bne _08019904
	adds r6, #7
	subs r1, r6, r1
	mov sb, r1
	adds r4, r6, #0
_080198DE:
	adds r5, r7, #3
	mov r0, r8
	str r0, [sp]
	mov r0, sb
	adds r1, r5, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_080185D4
	adds r5, r7, #4
	mov r0, r8
	str r0, [sp]
	mov r0, sb
	adds r1, r5, #0
_080198FA:
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_080185D4
	b _0801992E
_08019904:
	adds r7, #7
	subs r1, r7, r1
	mov sb, r1
	adds r4, r6, #3
	adds r5, r7, #0
	mov r0, r8
	str r0, [sp]
	adds r0, r4, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_080185D4
	adds r4, r6, #4
	mov r0, r8
	str r0, [sp]
	adds r0, r4, #0
	mov r1, sb
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_080185D4
_0801992E:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0801993C
sub_0801993C: @ 0x0801993C
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r3, #0
	ldr r4, [sp, #0x18]
	cmp r4, #7
	bls _0801994E
	movs r4, #7
_0801994E:
	cmp r2, #0
	bne _0801997C
	cmp r4, #2
	bhi _08019960
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	movs r2, #0
	b _08019A8C
_08019960:
	movs r0, #3
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	movs r2, #0
	adds r3, r7, #0
	bl sub_08019888
	adds r1, r6, #3
	subs r0, r4, #3
	str r0, [sp]
	adds r0, r5, #0
	movs r2, #1
	b _08019A8C
_0801997C:
	cmp r2, #1
	bne _080199AA
	cmp r4, #2
	bhi _0801998E
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	movs r2, #1
	b _08019A8C
_0801998E:
	movs r0, #3
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	movs r2, #1
	adds r3, r7, #0
	bl sub_08019888
	adds r0, r5, #3
	subs r1, r4, #3
	str r1, [sp]
	adds r1, r6, #0
	movs r2, #0
	b _08019A8C
_080199AA:
	cmp r2, #2
	bne _080199D6
	cmp r4, #2
	bhi _080199BC
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	movs r2, #0
	b _08019A8C
_080199BC:
	movs r0, #3
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	movs r2, #0
	adds r3, r7, #0
	bl sub_08019888
	subs r1, r6, #3
	subs r0, r4, #3
	str r0, [sp]
	adds r0, r5, #0
	b _08019A8A
_080199D6:
	cmp r2, #3
	bne _080199F8
	cmp r4, #2
	bls _08019A84
	str r2, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	movs r2, #3
	adds r3, r7, #0
	bl sub_08019888
	adds r0, r5, #3
	subs r1, r4, #3
	str r1, [sp]
	adds r1, r6, #0
	movs r2, #0
	b _08019A8C
_080199F8:
	cmp r2, #4
	bne _08019A26
	cmp r4, #2
	bhi _08019A0A
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	movs r2, #2
	b _08019A8C
_08019A0A:
	movs r0, #3
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	movs r2, #2
	adds r3, r7, #0
	bl sub_08019888
	adds r1, r6, #3
	subs r0, r4, #3
	str r0, [sp]
	adds r0, r5, #0
	movs r2, #1
	b _08019A8C
_08019A26:
	cmp r2, #5
	bne _08019A54
	cmp r4, #2
	bhi _08019A38
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	movs r2, #1
	b _08019A8C
_08019A38:
	movs r0, #3
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	movs r2, #1
	adds r3, r7, #0
	bl sub_08019888
	subs r0, r5, #3
	subs r1, r4, #3
	str r1, [sp]
	adds r1, r6, #0
	movs r2, #2
	b _08019A8C
_08019A54:
	cmp r2, #6
	bne _08019A80
	cmp r4, #2
	bhi _08019A66
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	movs r2, #2
	b _08019A8C
_08019A66:
	movs r0, #3
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	movs r2, #2
	adds r3, r7, #0
	bl sub_08019888
	subs r1, r6, #3
	subs r0, r4, #3
	str r0, [sp]
	adds r0, r5, #0
	b _08019A8A
_08019A80:
	cmp r4, #2
	bhi _08019A94
_08019A84:
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
_08019A8A:
	movs r2, #3
_08019A8C:
	adds r3, r7, #0
	bl sub_08019888
	b _08019AB4
_08019A94:
	movs r0, #3
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	movs r2, #3
	adds r3, r7, #0
	bl sub_08019888
	subs r0, r5, #3
	subs r1, r4, #3
	str r1, [sp]
	adds r1, r6, #0
	movs r2, #2
	adds r3, r7, #0
	bl sub_08019888
_08019AB4:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08019ABC
sub_08019ABC: @ 0x08019ABC
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r3, #0
	ldr r3, [sp, #0x14]
	subs r0, r2, #1
	cmp r0, #0xb
	bhi _08019B94
	lsls r0, r0, #2
	ldr r1, _08019AD8 @ =_08019ADC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08019AD8: .4byte _08019ADC
_08019ADC: @ jump table
	.4byte _08019B0C @ case 0
	.4byte _08019B16 @ case 1
	.4byte _08019B20 @ case 2
	.4byte _08019B2A @ case 3
	.4byte _08019B3A @ case 4
	.4byte _08019B44 @ case 5
	.4byte _08019B4E @ case 6
	.4byte _08019B58 @ case 7
	.4byte _08019B62 @ case 8
	.4byte _08019B6C @ case 9
	.4byte _08019B76 @ case 10
	.4byte _08019B86 @ case 11
_08019B0C:
	str r3, [sp]
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0
	b _08019B32
_08019B16:
	str r3, [sp]
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #1
	b _08019B32
_08019B20:
	str r3, [sp]
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #2
	b _08019B32
_08019B2A:
	str r3, [sp]
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #3
_08019B32:
	adds r3, r6, #0
	bl sub_08019888
	b _08019B94
_08019B3A:
	str r3, [sp]
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0
	b _08019B7E
_08019B44:
	str r3, [sp]
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #1
	b _08019B7E
_08019B4E:
	str r3, [sp]
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #2
	b _08019B7E
_08019B58:
	str r3, [sp]
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #3
	b _08019B7E
_08019B62:
	str r3, [sp]
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #4
	b _08019B7E
_08019B6C:
	str r3, [sp]
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #5
	b _08019B7E
_08019B76:
	str r3, [sp]
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #6
_08019B7E:
	adds r3, r6, #0
	bl sub_0801993C
	b _08019B94
_08019B86:
	str r3, [sp]
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #7
	adds r3, r6, #0
	bl sub_0801993C
_08019B94:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08019B9C
sub_08019B9C: @ 0x08019B9C
	push {r4, r5, lr}
	adds r2, r0, #0
	adds r5, r1, #0
	movs r3, #0
	cmp r2, #1
	bls _08019BB8
	movs r4, #1
_08019BAA:
	adds r3, #1
	lsrs r1, r2, #1
	adds r0, r4, #0
	ands r0, r2
	adds r2, r1, r0
	cmp r2, #1
	bhi _08019BAA
_08019BB8:
	cmp r5, #1
	bne _08019BBE
	adds r3, #1
_08019BBE:
	adds r0, r3, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08019BC8
sub_08019BC8: @ 0x08019BC8
	push {lr}
	adds r3, r0, #0
	adds r0, r1, #0
	cmp r0, r2
	blo _08019BDA
	adds r0, r3, #0
	movs r1, #0
	bl sub_08019B9C
_08019BDA:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08019BE0
sub_08019BE0: @ 0x08019BE0
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r6, [sp, #0x14]
	movs r1, #1
	cmp r1, r4
	bhi _08019C1A
	cmp r1, r6
	bhs _08019BF8
	movs r7, #0x14
	ldrsh r0, [r5, r7]
	b _08019C0E
_08019BF8:
	adds r1, #1
	cmp r1, r4
	bhi _08019C1A
	cmp r1, r6
	bhs _08019BF8
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	movs r7, #8
	ldrsh r0, [r0, r7]
_08019C0E:
	adds r0, r2, r0
	ldrb r0, [r0]
	cmp r3, r0
	beq _08019BF8
	cmp r1, r4
	bls _08019C1C
_08019C1A:
	adds r1, r4, #0
_08019C1C:
	adds r0, r1, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08019C24
sub_08019C24: @ 0x08019C24
	push {lr}
	adds r3, r2, #0
	lsls r2, r1, #1
	adds r2, r2, r1
	lsls r2, r2, #2
	ldr r0, [r0, #0x28]
	adds r0, r0, r2
	cmp r1, #1
	bls _08019C40
	movs r1, #0xa
	ldrsh r0, [r0, r1]
	adds r0, r3, r0
	ldrb r0, [r0]
	b _08019C44
_08019C40:
	movs r1, #0xa
	ldrsh r0, [r0, r1]
_08019C44:
	pop {r1}
	bx r1

	thumb_func_start sub_08019C48
sub_08019C48: @ 0x08019C48
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	str r0, [sp, #4]
	mov r8, r1
	str r2, [sp, #8]
	adds r5, r3, #0
	ldr r0, [sp, #0x2c]
	mov sb, r0
	movs r7, #0
	movs r6, #0
	cmp r7, r8
	bge _08019CC2
	ldr r1, _08019C78 @ =0x087B9210
	mov sl, r1
	ldr r4, [sp, #4]
_08019C6E:
	ldr r2, [sp, #0x30]
	cmp r2, #1
	bne _08019C7C
	movs r7, #7
	b _08019C88
	.align 2, 0
_08019C78: .4byte 0x087B9210
_08019C7C:
	mov r0, r8
	subs r0, #1
	movs r7, #7
	cmp r6, r0
	blt _08019C88
	movs r7, #4
_08019C88:
	ldr r0, [r5]
	mov r2, sb
	ldr r1, [r2]
	ldrb r2, [r4]
	str r7, [sp]
	ldr r3, [sp, #8]
	bl sub_08019ABC
	ldrb r0, [r4]
	lsls r0, r0, #2
	add r0, sl
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r0, [r5]
	adds r0, r0, r1
	str r0, [r5]
	ldrb r0, [r4]
	lsls r0, r0, #2
	add r0, sl
	movs r2, #2
	ldrsh r1, [r0, r2]
	mov r2, sb
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r2]
	adds r4, #4
	adds r6, #1
	cmp r6, r8
	blt _08019C6E
_08019CC2:
	mov r6, r8
	subs r6, #1
	ldr r3, _08019D04 @ =0x087B9210
	lsls r1, r6, #2
	ldr r4, [sp, #4]
	adds r1, r1, r4
	ldrb r0, [r1]
	lsls r0, r0, #2
	adds r0, r0, r3
	movs r4, #0
	ldrsh r2, [r0, r4]
	ldr r0, [r5]
	subs r0, r0, r2
	str r0, [r5]
	ldrb r0, [r1]
	lsls r0, r0, #2
	adds r0, r0, r3
	movs r2, #2
	ldrsh r1, [r0, r2]
	mov r4, sb
	ldr r0, [r4]
	subs r0, r0, r1
	str r0, [r4]
	adds r0, r7, #0
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08019D04: .4byte 0x087B9210

	thumb_func_start sub_08019D08
sub_08019D08: @ 0x08019D08
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x48
	str r0, [sp, #0x10]
	mov r8, r1
	str r2, [sp, #0x14]
	adds r4, r3, #0
	ldr r0, [r1]
	str r0, [sp, #0x18]
	ldrb r1, [r1, #4]
	str r1, [sp, #0x1c]
	ldr r2, [sp, #0x10]
	ldr r3, _08019D78 @ =0x00000A7F
	adds r0, r2, r3
	ldrb r0, [r0]
	str r0, [sp, #0x24]
	mov r0, r8
	ldrb r1, [r0, #5]
	ldr r0, [sp, #0x1c]
	bl sub_08019B9C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x24]
	ldr r2, [sp, #0x28]
	bl sub_08019BC8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x2c]
	ldr r1, [sp, #0x10]
	ldr r2, _08019D7C @ =0x00000A84
	adds r0, r1, r2
	ldr r0, [r0]
	ldr r1, [sp, #0x1c]
	bl sub_08019764
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	mov r3, r8
	ldrb r0, [r3, #5]
	cmp r0, #1
	bne _08019D84
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0x28]
	cmp r0, r1
	blo _08019D84
	ldr r1, _08019D80 @ =0x0000FFFF
	lsls r2, r2, #0x10
	str r2, [sp, #0x40]
	b _08019DB2
	.align 2, 0
_08019D78: .4byte 0x00000A7F
_08019D7C: .4byte 0x00000A84
_08019D80: .4byte 0x0000FFFF
_08019D84:
	lsls r0, r2, #0x10
	asrs r2, r0, #0x10
	str r0, [sp, #0x40]
	cmp r2, #0
	blt _08019DB0
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #4
	ldr r2, [sp, #0x18]
	adds r0, r2, r0
	ldr r3, [sp, #0x10]
	ldr r2, _08019DAC @ =0x00000A8C
	adds r1, r3, r2
	ldr r2, [r1]
	ldr r1, [sp, #0x2c]
	bl sub_08019C24
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	b _08019DB2
	.align 2, 0
_08019DAC: .4byte 0x00000A8C
_08019DB0:
	ldr r1, _08019E18 @ =0x0000FFFF
_08019DB2:
	ldr r3, [sp, #0x40]
	asrs r0, r3, #0x10
	str r0, [r4]
	lsls r1, r1, #0x10
	asrs r0, r1, #0x10
	str r0, [r4, #4]
	movs r6, #0
	str r1, [sp, #0x44]
	ldr r0, [sp, #0x1c]
	cmp r6, r0
	bhs _08019E0E
	movs r1, #1
	str r1, [sp, #0x38]
_08019DCC:
	lsls r0, r6, #1
	adds r0, r0, r6
	lsls r0, r0, #4
	ldr r2, [sp, #0x18]
	adds r0, r0, r2
	ldr r3, [r0, #0x1c]
	adds r1, r0, #0
	adds r1, #0x20
	ldrb r4, [r1]
	movs r2, #0x22
	ldrsh r1, [r0, r2]
	str r1, [sp, #8]
	movs r1, #0x24
	ldrsh r0, [r0, r1]
	str r0, [sp, #0xc]
	ldr r2, [sp, #0x10]
	ldr r0, [r2]
	ldrb r2, [r0, #0x10]
	adds r1, r4, #0
	add r0, sp, #0xc
	str r0, [sp]
	ldr r0, [sp, #0x38]
	str r0, [sp, #4]
	adds r0, r3, #0
	add r3, sp, #8
	bl sub_08019C48
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r1, [sp, #0x1c]
	cmp r6, r1
	blo _08019DCC
_08019E0E:
	movs r2, #0
	str r2, [sp, #0x34]
	movs r6, #0
	b _0801A174
	.align 2, 0
_08019E18: .4byte 0x0000FFFF
_08019E1C:
	movs r0, #0
	str r0, [sp, #0x3c]
	lsls r0, r6, #1
	adds r1, r0, r6
	lsls r1, r1, #4
	ldr r2, [sp, #0x18]
	adds r5, r1, r2
	ldr r7, [r5, #0x28]
	adds r1, r5, #0
	adds r1, #0x2c
	ldrb r1, [r1]
	str r1, [sp, #0x20]
	mov sl, r0
	lsls r3, r6, #2
	mov sb, r3
	cmp r6, #0xf
	bhi _08019EA2
	mov r0, r8
	adds r0, #0x88
	add r0, sb
	ldr r1, [sp, #0x3c]
	str r1, [r0]
	mov r0, r8
	adds r0, #0xc8
	add r0, sb
	str r1, [r0]
	movs r0, #0xa4
	lsls r0, r0, #1
	add r0, r8
	adds r0, r0, r6
	strb r1, [r0]
	movs r0, #0x84
	lsls r0, r0, #1
	add r0, r8
	add r0, sl
	movs r1, #0
	mov r3, sp
	ldrh r3, [r3, #0x3c]
	strh r3, [r0]
	movs r0, #0x94
	lsls r0, r0, #1
	add r0, r8
	add r0, sl
	mov r2, sp
	ldrh r2, [r2, #0x3c]
	strh r2, [r0]
	movs r0, #0xac
	lsls r0, r0, #1
	add r0, r8
	adds r0, r0, r6
	strb r1, [r0]
	movs r0, #0xb4
	lsls r0, r0, #1
	add r0, r8
	adds r0, r0, r6
	strb r1, [r0]
	mov r0, r8
	adds r0, #8
	add r0, sb
	movs r1, #0xc0
	lsls r1, r1, #5
	str r1, [r0]
	mov r0, r8
	adds r0, #0x48
	add r0, sb
	ldr r3, [sp, #0x3c]
	str r3, [r0]
_08019EA2:
	ldr r1, [sp, #0x10]
	ldr r2, _08019F5C @ =0x00000A8C
	adds r0, r1, r2
	ldr r2, [r0]
	ldr r3, [sp, #0x20]
	str r3, [sp]
	adds r0, r7, #0
	ldr r1, [sp, #0x2c]
	adds r3, r6, #0
	bl sub_08019BE0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r3, [r5, #0x1c]
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r4, r0, r7
	ldrh r1, [r4]
	adds r1, #1
	ldrb r0, [r4, #2]
	str r0, [sp, #0x38]
	movs r2, #0x22
	ldrsh r0, [r5, r2]
	str r0, [sp, #8]
	movs r2, #0x24
	ldrsh r0, [r5, r2]
	str r0, [sp, #0xc]
	ldr r2, [sp, #0x10]
	ldr r0, [r2]
	ldrb r2, [r0, #0x11]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add r0, sp, #0xc
	str r0, [sp]
	ldr r0, [sp, #0x38]
	str r0, [sp, #4]
	adds r0, r3, #0
	add r3, sp, #8
	bl sub_08019C48
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r6, #0xf
	bhi _08019F3E
	mov r0, r8
	adds r0, #0x88
	add r0, sb
	ldr r1, [sp, #8]
	str r1, [r0]
	mov r0, r8
	adds r0, #0xc8
	add r0, sb
	ldr r1, [sp, #0xc]
	str r1, [r0]
	movs r2, #0xac
	lsls r2, r2, #1
	add r2, r8
	adds r2, r2, r6
	strb r5, [r2]
	movs r0, #0x84
	lsls r0, r0, #1
	add r0, r8
	add r0, sl
	ldrh r1, [r4]
	strh r1, [r0]
	mov r4, r8
	adds r4, #8
	add r4, sb
	ldrb r1, [r2]
	movs r0, #7
	subs r0, r0, r1
	ldr r1, [r4]
	muls r0, r1, r0
	movs r1, #7
	bl sub_0803DD84
	str r0, [r4]
_08019F3E:
	ldr r1, [sp, #0x10]
	ldr r2, _08019F60 @ =0x00000A7E
	adds r0, r1, r2
	ldrb r0, [r0]
	subs r0, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bhi _08019F64
	ldr r0, [sp, #0x2c]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	b _08019F78
	.align 2, 0
_08019F5C: .4byte 0x00000A8C
_08019F60: .4byte 0x00000A7E
_08019F64:
	mov r3, r8
	ldrb r0, [r3, #5]
	ldr r5, [sp, #0x2c]
	cmp r0, #1
	bne _08019F78
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0x28]
	cmp r0, r1
	blo _08019F78
	adds r5, r1, #0
_08019F78:
	ldr r2, [sp, #0x10]
	ldr r3, _0801A078 @ =0x00000A8C
	adds r0, r2, r3
	ldr r2, [r0]
	ldr r0, [sp, #0x20]
	str r0, [sp]
	adds r0, r7, #0
	adds r1, r5, #0
	adds r3, r6, #0
	bl sub_08019BE0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r1, #0
	str r1, [sp, #0x30]
	cmp r4, r5
	blo _08019F9E
	movs r2, #1
	str r2, [sp, #0x30]
_08019F9E:
	cmp r6, #0xf
	bhi _08019FDE
	ldr r3, [sp, #0x30]
	cmp r3, #1
	bne _08019FB2
	movs r0, #0xa4
	lsls r0, r0, #1
	add r0, r8
	adds r0, r0, r6
	strb r3, [r0]
_08019FB2:
	adds r3, r4, #0
	ldr r0, [sp, #0x20]
	subs r0, #1
	cmp r3, r0
	ble _08019FBE
	adds r3, r0, #0
_08019FBE:
	movs r2, #0x94
	lsls r2, r2, #1
	add r2, r8
	add r2, sl
	lsls r0, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r1, [r0]
	strh r1, [r2]
	movs r1, #0xb4
	lsls r1, r1, #1
	add r1, r8
	adds r1, r1, r6
	ldrb r0, [r0, #2]
	strb r0, [r1]
_08019FDE:
	ldr r2, [sp, #0x10]
	ldr r3, _0801A07C @ =0x00000A88
	adds r0, r2, r3
	ldr r0, [r0]
	add r0, sb
	ldr r7, [r0]
	cmp r7, #0
	beq _0801A062
	movs r1, #0
	ldr r0, [sp, #0x30]
	cmp r0, #0
	bne _08019FF8
	movs r1, #2
_08019FF8:
	mov r2, sl
	adds r0, r2, r6
	lsls r0, r0, #4
	ldr r3, [sp, #0x18]
	adds r5, r0, r3
	movs r0, #0
	ldrsh r3, [r5, r0]
	cmp r3, #0
	blt _0801A062
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r4, r0, #3
	ldr r0, [sp, #0x10]
	adds r0, #8
	adds r0, r0, r4
	ldr r0, [r0]
	lsls r3, r1, #0x10
	asrs r3, r3, #0x10
	ldr r1, [sp, #0x34]
	adds r2, r7, #0
	bl sub_080192A4
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _0801A062
	adds r4, #8
	ldr r1, [sp, #0x10]
	adds r4, r1, r4
	adds r0, r4, #0
	bl sub_08018FB4
	adds r0, r4, #0
	movs r1, #1
	bl sub_0801901C
	movs r2, #2
	ldrsh r1, [r5, r2]
	movs r3, #4
	ldrsh r2, [r5, r3]
	adds r0, r4, #0
	bl sub_08019024
	adds r0, r4, #0
	bl sub_08018B60
	ldr r0, [sp, #0x34]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x34]
	movs r0, #1
	str r0, [sp, #0x3c]
_0801A062:
	movs r1, #0
	ldr r2, [sp, #0x40]
	asrs r0, r2, #0x10
	cmp r6, r0
	bne _0801A080
	ldr r3, [sp, #0x10]
	movs r2, #0xa8
	lsls r2, r2, #4
	adds r0, r3, r2
	b _0801A08A
	.align 2, 0
_0801A078: .4byte 0x00000A8C
_0801A07C: .4byte 0x00000A88
_0801A080:
	ldr r3, [sp, #0x10]
	ldr r2, _0801A0B4 @ =0x00000A84
	adds r0, r3, r2
	ldr r0, [r0]
	add r0, sb
_0801A08A:
	ldr r7, [r0]
	ldr r3, [sp, #0x40]
	asrs r0, r3, #0x10
	cmp r6, r0
	beq _0801A09C
	ldr r2, [sp, #0x44]
	asrs r0, r2, #0x10
	cmp r6, r0
	bne _0801A09E
_0801A09C:
	movs r1, #1
_0801A09E:
	cmp r7, #0
	beq _0801A100
	ldr r3, [sp, #0x30]
	cmp r3, #0
	bne _0801A0B8
	movs r0, #0
	movs r2, #3
	bl sub_08009CD4
	b _0801A0C0
	.align 2, 0
_0801A0B4: .4byte 0x00000A84
_0801A0B8:
	movs r0, #0
	movs r2, #2
	bl sub_08009CD4
_0801A0C0:
	ldr r0, [sp, #0x3c]
	cmp r0, #0
	bne _0801A0DC
	mov r1, sl
	adds r0, r1, r6
	lsls r0, r0, #4
	ldr r2, [sp, #0x18]
	adds r0, r0, r2
	ldrh r1, [r0, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x13
	str r1, [sp, #8]
	ldrh r0, [r0, #8]
	b _0801A0F0
_0801A0DC:
	mov r3, sl
	adds r0, r3, r6
	lsls r0, r0, #4
	ldr r1, [sp, #0x18]
	adds r0, r0, r1
	ldrh r1, [r0, #0xa]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x13
	str r1, [sp, #8]
	ldrh r0, [r0, #0xc]
_0801A0F0:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x13
	str r0, [sp, #0xc]
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	adds r2, r7, #0
	bl sub_08009E44
_0801A100:
	ldr r2, [sp, #0x30]
	cmp r2, #0
	bne _0801A16E
	ldr r3, [sp, #0x3c]
	cmp r3, #0
	bne _0801A126
	mov r1, sl
	adds r0, r1, r6
	lsls r0, r0, #4
	ldr r2, [sp, #0x18]
	adds r0, r0, r2
	movs r1, #0x16
	ldrsh r3, [r0, r1]
	movs r2, #0x18
	ldrsh r1, [r0, r2]
	str r1, [sp, #8]
	movs r1, #0x1a
	ldrsh r0, [r0, r1]
	b _0801A13E
_0801A126:
	mov r2, sl
	adds r0, r2, r6
	lsls r0, r0, #4
	ldr r3, [sp, #0x18]
	adds r0, r0, r3
	movs r1, #0x10
	ldrsh r3, [r0, r1]
	movs r2, #0x12
	ldrsh r1, [r0, r2]
	str r1, [sp, #8]
	movs r1, #0x14
	ldrsh r0, [r0, r1]
_0801A13E:
	str r0, [sp, #0xc]
	cmp r3, #0
	blt _0801A16E
	lsls r4, r3, #2
	adds r4, r4, r3
	lsls r4, r4, #3
	adds r4, #8
	ldr r2, [sp, #0x10]
	adds r4, r2, r4
	adds r0, r4, #0
	bl sub_08018FB4
	adds r0, r4, #0
	movs r1, #1
	bl sub_0801901C
	ldr r1, [sp, #8]
	ldr r2, [sp, #0xc]
	adds r0, r4, #0
	bl sub_08019024
	adds r0, r4, #0
	bl sub_08018B60
_0801A16E:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
_0801A174:
	ldr r3, [sp, #0x1c]
	cmp r6, r3
	bhs _0801A17C
	b _08019E1C
_0801A17C:
	ldr r0, [sp, #0x14]
	cmp r0, #0
	blt _0801A23A
	ldr r1, [sp, #0x40]
	cmp r1, #0
	blt _0801A21C
	mov r2, r8
	ldrb r0, [r2, #5]
	cmp r0, #1
	bne _0801A1A0
	ldr r3, [sp, #0x24]
	ldr r0, [sp, #0x28]
	cmp r3, r0
	blo _0801A1A0
	movs r0, #0x70
	str r0, [sp, #8]
	movs r0, #0x58
	b _0801A1FC
_0801A1A0:
	ldr r1, [sp, #0x10]
	ldr r2, _0801A1D4 @ =0x00000A7E
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #2
	bne _0801A1D8
	ldr r0, [sp, #0x2c]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r3, [sp, #0x40]
	asrs r1, r3, #0x10
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, [sp, #0x18]
	adds r0, r0, r1
	adds r0, #0x2c
	ldrb r0, [r0]
	subs r0, #1
	cmp r6, r0
	ble _0801A1DA
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	b _0801A1DA
	.align 2, 0
_0801A1D4: .4byte 0x00000A7E
_0801A1D8:
	ldr r6, [sp, #0x2c]
_0801A1DA:
	ldr r2, [sp, #0x40]
	asrs r1, r2, #0x10
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r3, [sp, #0x18]
	adds r0, r0, r3
	lsls r1, r6, #1
	adds r1, r1, r6
	lsls r1, r1, #2
	ldr r0, [r0, #0x28]
	adds r7, r0, r1
	movs r1, #4
	ldrsh r0, [r7, r1]
	str r0, [sp, #8]
	movs r2, #6
	ldrsh r0, [r7, r2]
_0801A1FC:
	str r0, [sp, #0xc]
	ldr r3, [sp, #0x14]
	lsls r4, r3, #2
	adds r4, r4, r3
	lsls r4, r4, #3
	adds r4, #8
	ldr r0, [sp, #0x10]
	adds r4, r0, r4
	ldr r1, [sp, #8]
	ldr r2, [sp, #0xc]
	adds r0, r4, #0
	bl sub_08019024
	adds r0, r4, #0
	bl sub_08018B60
_0801A21C:
	ldr r1, [sp, #0x14]
	cmp r1, #0
	blt _0801A23A
	ldr r2, [sp, #0x40]
	cmp r2, #0
	bge _0801A23A
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #8
	ldr r3, [sp, #0x10]
	adds r0, r3, r0
	movs r1, #0
	bl sub_0801901C
_0801A23A:
	add sp, #0x48
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0801A24C
sub_0801A24C: @ 0x0801A24C
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r2, r1, #0
	mov r3, sp
	ldr r1, _0801A270 @ =0x08325184
	ldm r1!, {r4, r5, r6}
	stm r3!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r3]
	mov r1, sp
	bl sub_08019304
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0801A270: .4byte 0x08325184

	thumb_func_start sub_0801A274
sub_0801A274: @ 0x0801A274
	push {r4, r5, r6, lr}
	sub sp, #0x24
	adds r2, r1, #0
	mov r3, sp
	ldr r1, _0801A298 @ =0x08325194
	ldm r1!, {r4, r5, r6}
	stm r3!, {r4, r5, r6}
	ldm r1!, {r4, r5, r6}
	stm r3!, {r4, r5, r6}
	ldm r1!, {r4, r5, r6}
	stm r3!, {r4, r5, r6}
	mov r1, sp
	bl sub_080194EC
	add sp, #0x24
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801A298: .4byte 0x08325194

	thumb_func_start sub_0801A29C
sub_0801A29C: @ 0x0801A29C
	push {r4, lr}
	cmp r3, #4
	beq _0801A2AA
	cmp r3, #2
	bne _0801A2C0
	cmp r1, r2
	bne _0801A2C0
_0801A2AA:
	movs r1, #0xc3
	lsls r1, r1, #3
	adds r4, r0, r1
	adds r0, r4, #0
	bl sub_08018FB4
	adds r0, r4, #0
	movs r1, #1
	bl sub_0801901C
	b _0801A2D4
_0801A2C0:
	movs r1, #0xbe
	lsls r1, r1, #3
	adds r4, r0, r1
	adds r0, r4, #0
	bl sub_08018FB4
	adds r0, r4, #0
	movs r1, #1
	bl sub_0801901C
_0801A2D4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0801A2DC
sub_0801A2DC: @ 0x0801A2DC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov r8, r0
	mov sb, r1
	mov sl, r2
	adds r7, r3, #0
	ldr r6, [sp, #0x24]
	ldr r4, [sp, #0x28]
	ldr r1, [sp, #0x2c]
	ldr r5, [sp, #0x30]
	ldr r0, [r5]
	subs r4, r4, r6
	lsls r0, r0, #0xa
	bl sub_0803D7D4
	muls r0, r4, r0
	asrs r0, r0, #0xa
	adds r0, r0, r6
	str r0, [sp]
	mov r0, r8
	mov r1, sb
	mov r2, sl
	adds r3, r7, #0
	bl sub_08019ABC
	ldr r0, [r5]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	str r0, [r5]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0801A330
sub_0801A330: @ 0x0801A330
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	adds r5, r0, #0
	adds r6, r1, #0
	str r2, [sp, #0x10]
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r5, r1
	adds r0, r0, r6
	ldrb r0, [r0]
	cmp r0, #0
	bne _0801A354
	movs r0, #1
	b _0801A48A
_0801A354:
	movs r2, #0
	str r2, [sp, #0x1c]
	lsls r2, r6, #1
	adds r0, r2, r6
	lsls r0, r0, #4
	ldr r1, [r5]
	adds r1, r1, r0
	movs r3, #0x84
	lsls r3, r3, #1
	adds r0, r5, r3
	adds r3, r0, r2
	movs r4, #0
	ldrsh r0, [r3, r4]
	lsls r0, r0, #2
	ldr r1, [r1, #0x1c]
	adds r1, r1, r0
	str r1, [sp, #0x14]
	movs r7, #0xb4
	lsls r7, r7, #1
	adds r0, r5, r7
	adds r0, r0, r6
	ldrb r0, [r0]
	str r2, [sp, #0x20]
	cmp r0, #1
	bne _0801A38C
	movs r0, #7
	str r0, [sp, #0x18]
	b _0801A3AA
_0801A38C:
	movs r1, #0x94
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r2, [sp, #0x20]
	adds r0, r0, r2
	movs r4, #0
	ldrsh r1, [r3, r4]
	movs r7, #0
	ldrsh r0, [r0, r7]
	movs r2, #7
	str r2, [sp, #0x18]
	cmp r1, r0
	blt _0801A3AA
	movs r3, #4
	str r3, [sp, #0x18]
_0801A3AA:
	lsls r4, r6, #2
	adds r0, r5, #0
	adds r0, #0x88
	adds r0, r0, r4
	mov r8, r0
	ldr r0, [r0]
	adds r1, r5, #0
	adds r1, #0xc8
	adds r1, r1, r4
	mov sb, r1
	ldr r1, [r1]
	ldr r7, [sp, #0x14]
	ldrb r2, [r7]
	movs r7, #0xac
	lsls r7, r7, #1
	adds r3, r5, r7
	adds r3, r3, r6
	mov sl, r3
	ldrb r3, [r3]
	str r3, [sp]
	ldr r3, [sp, #0x18]
	str r3, [sp, #4]
	adds r3, r5, #0
	adds r3, #8
	adds r7, r3, r4
	ldr r3, [r7]
	str r3, [sp, #8]
	adds r3, r4, #0
	adds r3, #0x48
	adds r6, r5, r3
	str r6, [sp, #0xc]
	ldr r3, [sp, #0x10]
	bl sub_0801A2DC
	adds r0, r5, #0
	adds r0, #0x48
	adds r4, r0, r4
	ldr r0, [r4]
	ldr r1, [r7]
	cmp r0, r1
	bls _0801A488
	str r1, [r4]
	mov r1, r8
	ldr r0, [r1]
	mov r2, sb
	ldr r1, [r2]
	ldr r3, [sp, #0x14]
	ldrb r2, [r3]
	mov r3, sl
	ldrb r3, [r3]
	str r3, [sp]
	ldr r3, [sp, #0x18]
	str r3, [sp, #4]
	ldr r3, [r7]
	str r3, [sp, #8]
	str r6, [sp, #0xc]
	ldr r3, [sp, #0x10]
	bl sub_0801A2DC
	movs r6, #0x84
	lsls r6, r6, #1
	adds r0, r5, r6
	ldr r1, [sp, #0x20]
	adds r6, r0, r1
	ldrh r0, [r6]
	adds r0, #1
	movs r3, #0
	movs r1, #0
	strh r0, [r6]
	str r1, [r4]
	movs r0, #0xc0
	lsls r0, r0, #5
	str r0, [r7]
	ldr r2, _0801A49C @ =0x087B9210
	ldr r4, [sp, #0x14]
	ldrb r0, [r4]
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r7, #0
	ldrsh r1, [r0, r7]
	mov r4, r8
	ldr r0, [r4]
	adds r0, r0, r1
	str r0, [r4]
	ldr r7, [sp, #0x14]
	ldrb r0, [r7]
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r2, #2
	ldrsh r1, [r0, r2]
	mov r4, sb
	ldr r0, [r4]
	adds r0, r0, r1
	str r0, [r4]
	mov r7, sl
	strb r3, [r7]
	movs r1, #0x94
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r2, [sp, #0x20]
	adds r0, r0, r2
	movs r3, #0
	ldrsh r1, [r6, r3]
	ldrh r2, [r0]
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r1, r0
	ble _0801A488
	strh r2, [r6]
	movs r6, #1
	str r6, [sp, #0x1c]
_0801A488:
	ldr r0, [sp, #0x1c]
_0801A48A:
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0801A49C: .4byte 0x087B9210

	thumb_func_start sub_0801A4A0
sub_0801A4A0: @ 0x0801A4A0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	mov sl, r0
	adds r7, r1, #0
	str r2, [sp]
	ldrb r0, [r7, #4]
	mov sb, r0
	cmp r0, #0x10
	bls _0801A4BE
	movs r1, #0x10
	mov sb, r1
_0801A4BE:
	movs r2, #1
	str r2, [sp, #4]
	movs r4, #0
	cmp r4, sb
	bhs _0801A530
	movs r0, #0xa4
	lsls r0, r0, #1
	adds r0, r0, r7
	mov r8, r0
_0801A4D0:
	adds r1, r4, #1
	str r1, [sp, #8]
	ldr r2, [sp]
	cmp r2, #0
	beq _0801A508
	lsls r0, r4, #2
	adds r1, r7, #0
	adds r1, #0x48
	adds r6, r1, r0
	subs r1, #0x40
	adds r5, r1, r0
_0801A4E6:
	movs r0, #1
	str r0, [r6]
	str r0, [r5]
	mov r1, sl
	ldr r0, [r1]
	ldrb r2, [r0, #0x11]
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_0801A330
	cmp r0, #0
	beq _0801A4E6
	mov r2, r8
	adds r1, r2, r4
	movs r0, #0
	strb r0, [r1]
	b _0801A52A
_0801A508:
	mov r1, sl
	ldr r0, [r1]
	ldrb r2, [r0, #0x11]
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_0801A330
	cmp r0, #0
	bne _0801A520
	movs r2, #0
	str r2, [sp, #4]
	b _0801A52A
_0801A520:
	mov r1, r8
	adds r0, r1, r4
	mov r2, sp
	ldrb r2, [r2]
	strb r2, [r0]
_0801A52A:
	ldr r4, [sp, #8]
	cmp r4, sb
	blo _0801A4D0
_0801A530:
	ldr r0, [sp, #4]
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0801A544
sub_0801A544: @ 0x0801A544
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x94
	adds r7, r0, #0
	str r1, [sp, #0x70]
	ldr r1, _0801A5BC @ =0x00000A7F
	adds r0, r7, r1
	ldrb r6, [r0]
	ldr r2, [sp, #0x70]
	ldrb r0, [r2, #4]
	ldrb r1, [r2, #5]
	bl sub_08019B9C
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r0, [r7]
	bl sub_08018760
	ldr r0, [r7, #4]
	bl sub_080188CC
	adds r0, r7, #0
	movs r1, #0
	bl sub_08018AF4
	adds r0, r7, #0
	movs r1, #0x2a
	bl sub_0801A24C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0x74]
	ldr r1, [sp, #0x70]
	ldrb r0, [r1, #5]
	cmp r0, #1
	bne _0801A5C4
	adds r4, r7, #0
	adds r4, #0xa8
	adds r0, r4, #0
	bl sub_08018FB4
	adds r0, r4, #0
	movs r1, #1
	bl sub_0801901C
	subs r4, #0xa0
	ldr r2, _0801A5C0 @ =0x00000A7E
	adds r0, r7, r2
	ldrb r3, [r0]
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl sub_0801A29C
	str r4, [sp, #0x90]
	b _0801A5F6
	.align 2, 0
_0801A5BC: .4byte 0x00000A7F
_0801A5C0: .4byte 0x00000A7E
_0801A5C4:
	ldr r1, _0801A708 @ =0x00000A7E
	adds r0, r7, r1
	ldrb r0, [r0]
	subs r0, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #3
	cmp r0, #2
	bhi _0801A5D8
	movs r1, #0x29
_0801A5D8:
	lsls r4, r1, #2
	adds r4, r4, r1
	lsls r4, r4, #3
	adds r4, #8
	adds r4, r7, r4
	adds r0, r4, #0
	bl sub_08018FB4
	adds r0, r4, #0
	movs r1, #1
	bl sub_0801901C
	adds r2, r7, #0
	adds r2, #8
	str r2, [sp, #0x90]
_0801A5F6:
	add r3, sp, #0x44
	adds r0, r7, #0
	ldr r1, [sp, #0x70]
	ldr r2, [sp, #0x74]
	bl sub_08019D08
	adds r0, r7, #0
	add r1, sp, #0x14
	bl sub_0801A274
	ldr r0, [sp, #0x90]
	movs r1, #0x2b
	bl sub_08018FFC
	ldr r1, [sp, #0x74]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #8
	adds r0, r7, r0
	add r1, sp, #0x4c
	add r2, sp, #0x50
	bl sub_0801902C
	add r2, sp, #0x20
	mov sl, r2
	add r0, sp, #0x2c
	str r0, [sp]
	add r1, sp, #0x38
	str r1, [sp, #4]
	add r0, sp, #0x54
	str r0, [sp, #8]
	add r6, sp, #0x58
	str r6, [sp, #0xc]
	add r5, sp, #0x5c
	str r5, [sp, #0x10]
	adds r0, r7, #0
	movs r1, #3
	add r2, sp, #0x14
	mov r3, sl
	bl sub_08019544
	movs r4, #0
	str r4, [sp, #0x6c]
	str r4, [sp, #0x68]
	movs r0, #0x4b
	bl sub_08018730
	str r0, [sp, #0x78]
	ldr r0, [r7]
	ldrb r0, [r0, #0x10]
	bl sub_08018730
	str r0, [sp, #0x80]
	movs r0, #0x4f
	bl sub_08018730
	str r0, [sp, #0x7c]
	ldr r0, [r7]
	ldrb r0, [r0, #0x10]
	bl sub_08018730
	str r0, [sp, #0x84]
	str r4, [sp, #0x60]
	movs r0, #0x80
	lsls r0, r0, #1
	str r0, [sp, #0x64]
	movs r2, #0
	str r2, [sp, #0x88]
	bl sub_08009C04
	ldr r1, _0801A708 @ =0x00000A7E
	adds r0, r7, r1
	ldrb r0, [r0]
	bl sub_08019840
	mov sb, r6
	mov r2, sp
	adds r2, #0x6c
	str r2, [sp, #0x8c]
	ldr r0, _0801A708 @ =0x00000A7E
	adds r6, r7, r0
	mov r8, sl
_0801A69C:
	bl sub_08000BC0
	ldr r1, [sp, #0x74]
	cmp r1, #1
	bne _0801A6BE
	ldr r1, [sp, #0x4c]
	ldr r2, [sp, #0x50]
	movs r0, #0x2a
	lsls r3, r0, #2
	adds r3, #0x2a
	lsls r3, r3, #3
	adds r3, #8
	adds r0, r7, #0
	adds r0, #0x30
	adds r3, r7, r3
	bl sub_08019430
_0801A6BE:
	ldrb r0, [r6]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bhi _0801A71C
	add r5, sp, #0x60
	str r5, [sp]
	add r4, sp, #0x64
	str r4, [sp, #4]
	movs r0, #0x4b
	ldr r1, [sp, #0x78]
	ldr r2, [sp, #0x80]
	movs r3, #0xf0
	lsls r3, r3, #6
	bl sub_080187F0
	str r5, [sp]
	str r4, [sp, #4]
	movs r0, #0x4f
	ldr r1, [sp, #0x7c]
	ldr r2, [sp, #0x84]
	movs r3, #0xf0
	lsls r3, r3, #6
	bl sub_080187F0
	ldr r0, [sp, #0x64]
	cmp r0, #0
	ble _0801A710
	ldr r0, [sp, #0x60]
	movs r1, #0xf0
	lsls r1, r1, #6
	cmp r0, r1
	blo _0801A71C
	str r1, [sp, #0x60]
	ldr r0, _0801A70C @ =0xFFFFFF00
	b _0801A71A
	.align 2, 0
_0801A708: .4byte 0x00000A7E
_0801A70C: .4byte 0xFFFFFF00
_0801A710:
	ldr r0, [sp, #0x60]
	cmp r0, #0
	bne _0801A71C
	movs r0, #0x80
	lsls r0, r0, #1
_0801A71A:
	str r0, [sp, #0x64]
_0801A71C:
	ldrb r0, [r6]
	subs r0, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bhi _0801A774
	ldr r0, [sp, #0x58]
	ldr r1, [sp, #0x54]
	adds r2, r1, #0
	cmp r0, r1
	bhs _0801A754
	mov r2, r8
	str r2, [sp]
	add r0, sp, #0x38
	str r0, [sp, #4]
	subs r0, r1, #1
	str r0, [sp, #8]
	mov r1, sb
	str r1, [sp, #0xc]
	add r2, sp, #0x5c
	str r2, [sp, #0x10]
	adds r0, r7, #0
	add r1, sp, #0x14
	mov r2, r8
	add r3, sp, #0x2c
	bl sub_080195C8
	b _0801A774
_0801A754:
	str r2, [sp, #0x58]
	mov r0, r8
	str r0, [sp]
	add r1, sp, #0x38
	str r1, [sp, #4]
	str r2, [sp, #8]
	mov r2, sb
	str r2, [sp, #0xc]
	movs r0, #0
	str r0, [sp, #0x10]
	adds r0, r7, #0
	add r1, sp, #0x14
	mov r2, r8
	add r3, sp, #0x2c
	bl sub_080195C8
_0801A774:
	ldr r0, [sp, #0x6c]
	cmp r0, #1
	bne _0801A790
	adds r0, r7, #0
	add r1, sp, #0x68
	bl sub_080196D0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0801A79C
	movs r0, #2
	str r0, [sp, #0x6c]
	b _0801A79C
_0801A790:
	cmp r0, #1
	bls _0801A79C
	adds r0, r7, #0
	movs r1, #0
	bl sub_080196D0
_0801A79C:
	ldr r0, [sp, #0x90]
	movs r1, #0x2b
	bl sub_08019160
	bl sub_08009BD0
	ldrb r0, [r6]
	subs r0, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _0801A7C6
	adds r0, r7, #0
	ldr r1, [sp, #0x70]
	ldr r2, [sp, #0x88]
	bl sub_0801A4A0
	cmp r0, #0
	beq _0801A7C6
	movs r0, #1
	str r0, [sp, #0x88]
_0801A7C6:
	ldr r0, [sp, #0x90]
	movs r1, #0x2b
	bl sub_08018FFC
	ldr r1, [sp, #0x58]
	ldr r2, [sp, #0x54]
	adds r0, r7, #0
	ldr r3, [sp, #0x8c]
	bl sub_080197AC
	cmp r0, #1
	beq _0801A7E0
	b _0801A69C
_0801A7E0:
	ldrb r0, [r6]
	subs r0, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _0801A7F8
	ldr r1, [sp, #0x88]
	cmp r1, #0
	bne _0801A7F8
	movs r2, #1
	str r2, [sp, #0x88]
	b _0801A69C
_0801A7F8:
	ldr r1, _0801A824 @ =0x00000A7E
	adds r0, r7, r1
	ldrb r0, [r0]
	bl sub_08019878
	bl sub_08009BF4
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r1, [r2]
	ldr r0, _0801A828 @ =0x000080FF
	ands r0, r1
	strh r0, [r2]
	add sp, #0x94
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801A824: .4byte 0x00000A7E
_0801A828: .4byte 0x000080FF

	thumb_func_start sub_0801A82C
sub_0801A82C: @ 0x0801A82C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x1c
	adds r7, r0, #0
	adds r4, r2, #0
	adds r6, r3, #0
	cmp r4, #0
	bne _0801A84C
	ldr r0, _0801A848 @ =0x087BA1B4
	str r0, [r1]
	movs r0, #4
	b _0801A862
	.align 2, 0
_0801A848: .4byte 0x087BA1B4
_0801A84C:
	cmp r4, #1
	bne _0801A85C
	ldr r0, _0801A858 @ =0x087B9F24
	str r0, [r1]
	movs r0, #8
	b _0801A862
	.align 2, 0
_0801A858: .4byte 0x087B9F24
_0801A85C:
	ldr r0, _0801A908 @ =0x087B9944
	str r0, [r1]
	movs r0, #0x10
_0801A862:
	strb r0, [r1, #4]
	movs r0, #0
	mov r8, r0
	ldr r0, [sp, #0x58]
	strb r0, [r1, #5]
	ldrb r0, [r1, #4]
	ldrb r1, [r1, #5]
	bl sub_08019B9C
	adds r5, r0, #0
	ldr r0, [sp, #0x40]
	str r0, [sp]
	ldr r0, [sp, #0x44]
	str r0, [sp, #4]
	ldr r0, [sp, #0x48]
	str r0, [sp, #8]
	ldr r0, [sp, #0x4c]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x50]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x54]
	str r0, [sp, #0x14]
	str r5, [sp, #0x18]
	adds r0, r7, #0
	adds r1, r4, #0
	adds r2, r6, #0
	ldr r3, [sp, #0x34]
	bl sub_080191D8
	adds r0, r7, #0
	ldr r1, [sp, #0x3c]
	bl sub_080187C8
	ldr r0, _0801A90C @ =0x087B8B24
	str r0, [r7, #4]
	adds r4, r7, #0
	adds r4, #8
	adds r0, r4, #0
	movs r1, #0x40
	bl sub_08018B40
	ldr r1, _0801A910 @ =0x087B8B58
	movs r2, #0xd7
	lsls r2, r2, #3
	adds r0, r4, #0
	bl sub_080002C4
	adds r0, r4, #0
	movs r1, #0x40
	bl sub_08018B70
	ldr r1, _0801A914 @ =0x00000A7E
	adds r0, r7, r1
	ldrb r1, [r0]
	ldr r2, _0801A918 @ =0x00000A7F
	adds r0, r7, r2
	ldrb r2, [r0]
	ldr r0, [sp, #0x38]
	str r0, [sp]
	ldr r0, _0801A91C @ =0x087BAF28
	str r0, [sp, #4]
	ldr r0, _0801A920 @ =0x087BAF38
	str r0, [sp, #8]
	mov r0, r8
	str r0, [sp, #0xc]
	adds r0, r7, #0
	adds r3, r5, #0
	bl sub_080189B4
	movs r1, #0xa9
	lsls r1, r1, #4
	adds r0, r7, r1
	ldr r1, [r0]
	adds r0, r7, #0
	bl sub_08018AB4
	add sp, #0x1c
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801A908: .4byte 0x087B9944
_0801A90C: .4byte 0x087B8B24
_0801A910: .4byte 0x087B8B58
_0801A914: .4byte 0x00000A7E
_0801A918: .4byte 0x00000A7F
_0801A91C: .4byte 0x087BAF28
_0801A920: .4byte 0x087BAF38

	thumb_func_start sub_0801A924
sub_0801A924: @ 0x0801A924
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x1a0
	mov r8, r0
	mov sb, r1
	adds r5, r2, #0
	adds r6, r3, #0
	ldr r7, [sp, #0x1bc]
	bl sub_08009B94
	bl sub_08000B84
	ldr r4, _0801A98C @ =0x02037870
	adds r0, r4, #0
	bl sub_08019274
	str r5, [sp]
	str r6, [sp, #4]
	str r7, [sp, #8]
	ldr r0, [sp, #0x1c0]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x1c4]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x1c8]
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x1cc]
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x1d0]
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x1d4]
	str r0, [sp, #0x20]
	movs r0, #0
	str r0, [sp, #0x24]
	adds r0, r4, #0
	add r1, sp, #0x28
	mov r2, r8
	mov r3, sb
	bl sub_0801A82C
	adds r0, r4, #0
	add r1, sp, #0x28
	bl sub_0801A544
	add sp, #0x1a0
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801A98C: .4byte 0x02037870

	thumb_func_start sub_0801A990
sub_0801A990: @ 0x0801A990
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x1a0
	mov r8, r0
	mov sb, r1
	adds r5, r2, #0
	adds r6, r3, #0
	ldr r7, [sp, #0x1bc]
	bl sub_08009B94
	bl sub_08000B84
	ldr r4, _0801A9F8 @ =0x02037870
	adds r0, r4, #0
	bl sub_08019274
	str r5, [sp]
	str r6, [sp, #4]
	str r7, [sp, #8]
	ldr r0, [sp, #0x1c0]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x1c4]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x1c8]
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x1cc]
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x1d0]
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x1d4]
	str r0, [sp, #0x20]
	movs r0, #1
	str r0, [sp, #0x24]
	adds r0, r4, #0
	add r1, sp, #0x28
	mov r2, r8
	mov r3, sb
	bl sub_0801A82C
	adds r0, r4, #0
	add r1, sp, #0x28
	bl sub_0801A544
	add sp, #0x1a0
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801A9F8: .4byte 0x02037870

	thumb_func_start sub_0801A9FC
sub_0801A9FC: @ 0x0801A9FC
	subs r0, #1
	bx lr

	thumb_func_start sub_0801AA00
sub_0801AA00: @ 0x0801AA00
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x70
	mov sb, r0
	str r2, [sp, #0x48]
	str r3, [sp, #0x4c]
	ldr r0, [r1]
	str r0, [sp, #0x50]
	ldrb r4, [r1, #4]
	ldr r0, _0801AAD0 @ =0x00000A7F
	add r0, sb
	ldrb r0, [r0]
	str r0, [sp, #0x58]
	adds r0, r4, #0
	bl sub_0801A9FC
	ldr r0, _0801AAD4 @ =0x00000A84
	add r0, sb
	ldr r0, [r0]
	adds r1, r4, #0
	bl sub_08019764
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	ldr r1, _0801AAD8 @ =0x0000FFFF
	str r1, [sp, #0x5c]
	str r0, [sp, #0x6c]
	cmp r2, #0
	blt _0801AA5C
	ldr r3, [sp, #0x58]
	cmp r3, #0
	beq _0801AA5C
	lsls r0, r2, #3
	subs r0, r0, r2
	lsls r0, r0, #2
	ldr r1, [sp, #0x50]
	adds r0, r0, r1
	ldr r1, [r0, #0x14]
	lsls r0, r3, #2
	adds r0, r0, r1
	subs r0, #4
	ldrb r0, [r0, #2]
	str r0, [sp, #0x5c]
_0801AA5C:
	movs r2, #0
	mov r8, r2
	lsls r0, r4, #0x10
	lsrs r1, r0, #0x10
	str r0, [sp, #0x68]
	cmp r8, r1
	bhs _0801AA80
_0801AA6A:
	mov r3, r8
	lsls r0, r3, #2
	add r0, sp
	str r2, [r0]
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	cmp r8, r1
	blo _0801AA6A
_0801AA80:
	movs r0, #0
	mov r8, r0
	ldr r1, [sp, #0x68]
	cmp r1, #0
	bne _0801AA8C
	b _0801ABE8
_0801AA8C:
	ldr r0, _0801AADC @ =0x00000A7E
	add r0, sb
	ldrb r0, [r0]
	cmp r0, #7
	beq _0801AAA0
	movs r0, #0
	movs r1, #0
	movs r2, #2
	bl sub_08009CD4
_0801AAA0:
	mov r3, r8
	lsls r2, r3, #3
	subs r1, r2, r3
	lsls r1, r1, #2
	ldr r0, [sp, #0x50]
	adds r1, r1, r0
	ldrh r0, [r1, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x13
	str r0, [sp, #0x40]
	ldrh r0, [r1, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x13
	str r0, [sp, #0x44]
	ldr r1, [sp, #0x6c]
	asrs r0, r1, #0x10
	adds r5, r2, #0
	cmp r8, r0
	bne _0801AAE0
	movs r0, #0xa8
	lsls r0, r0, #4
	add r0, sb
	b _0801AAEC
	.align 2, 0
_0801AAD0: .4byte 0x00000A7F
_0801AAD4: .4byte 0x00000A84
_0801AAD8: .4byte 0x0000FFFF
_0801AADC: .4byte 0x00000A7E
_0801AAE0:
	ldr r0, _0801AB4C @ =0x00000A84
	add r0, sb
	ldr r1, [r0]
	mov r2, r8
	lsls r0, r2, #2
	adds r0, r0, r1
_0801AAEC:
	ldr r2, [r0]
	ldr r4, _0801AB50 @ =0x00000A7E
	add r4, sb
	ldrb r0, [r4]
	cmp r0, #7
	beq _0801AB00
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	bl sub_08009E44
_0801AB00:
	ldrb r0, [r4]
	mov r3, r8
	adds r3, #1
	str r3, [sp, #0x60]
	cmp r0, #0
	beq _0801ABD8
	mov r1, r8
	subs r0, r5, r1
	lsls r0, r0, #2
	ldr r2, [sp, #0x50]
	adds r0, r0, r2
	ldr r3, [r0, #0x14]
	mov sl, r3
	ldrb r0, [r0, #0x18]
	str r0, [sp, #0x54]
	movs r6, #0
	cmp r6, r0
	bhs _0801ABD8
	lsls r0, r1, #2
	mov r1, sp
	adds r7, r1, r0
_0801AB2A:
	lsls r2, r6, #2
	mov r3, sl
	adds r4, r2, r3
	ldrb r1, [r4, #2]
	ldr r0, _0801AB54 @ =0x00000A8C
	add r0, sb
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	str r2, [sp, #0x64]
	cmp r0, #1
	bne _0801AB58
	ldrb r0, [r4, #3]
	cmp r0, #0
	bne _0801AB66
	b _0801AB62
	.align 2, 0
_0801AB4C: .4byte 0x00000A84
_0801AB50: .4byte 0x00000A7E
_0801AB54: .4byte 0x00000A8C
_0801AB58:
	cmp r0, #2
	bne _0801AB70
	ldrb r0, [r4, #3]
	cmp r0, #0
	beq _0801AB66
_0801AB62:
	ldrb r2, [r4, #1]
	b _0801AB72
_0801AB66:
	ldrb r2, [r4]
	ldr r0, [r7]
	adds r0, #1
	str r0, [r7]
	b _0801AB72
_0801AB70:
	ldr r2, _0801ABC0 @ =0x0000FFFF
_0801AB72:
	lsls r0, r2, #0x10
	asrs r5, r0, #0x10
	cmp r5, #0
	blt _0801ABCC
	ldr r0, _0801ABC4 @ =0x00000A7E
	add r0, sb
	ldrb r0, [r0]
	cmp r0, #7
	beq _0801AB9C
	lsls r4, r5, #2
	adds r4, r4, r5
	lsls r4, r4, #3
	adds r4, #8
	add r4, sb
	adds r0, r4, #0
	bl sub_08018FB4
	adds r0, r4, #0
	movs r1, #1
	bl sub_0801901C
_0801AB9C:
	ldr r1, [sp, #0x5c]
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	blt _0801ABCC
	ldr r0, [sp, #0x64]
	add r0, sl
	ldrb r0, [r0, #2]
	cmp r1, r0
	bne _0801ABCC
	ldr r2, [sp, #0x6c]
	asrs r0, r2, #0x10
	cmp r8, r0
	bne _0801ABC8
	ldr r3, [sp, #0x4c]
	str r5, [r3]
	b _0801ABCC
	.align 2, 0
_0801ABC0: .4byte 0x0000FFFF
_0801ABC4: .4byte 0x00000A7E
_0801ABC8:
	ldr r0, [sp, #0x4c]
	str r5, [r0, #4]
_0801ABCC:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r1, [sp, #0x54]
	cmp r6, r1
	blo _0801AB2A
_0801ABD8:
	ldr r2, [sp, #0x60]
	lsls r0, r2, #0x10
	lsrs r3, r0, #0x10
	mov r8, r3
	ldr r1, [sp, #0x68]
	cmp r0, r1
	bhs _0801ABE8
	b _0801AA8C
_0801ABE8:
	ldr r0, _0801AD04 @ =0x00000A7E
	add r0, sb
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801AC9E
	ldr r1, [sp, #0x68]
	movs r2, #0
	mov r8, r2
	cmp r1, #0
	beq _0801AC9E
_0801ABFC:
	movs r7, #0
	movs r6, #0
	lsrs r1, r1, #0x10
	mov r3, r8
	adds r3, #1
	str r3, [sp, #0x60]
	mov r0, r8
	lsls r5, r0, #3
	cmp r7, r1
	bhs _0801AC38
	lsls r0, r0, #2
	mov r2, sp
	adds r3, r2, r0
	adds r2, r1, #0
_0801AC18:
	cmp r8, r6
	beq _0801AC2E
	lsls r0, r6, #2
	add r0, sp
	ldr r1, [r3]
	ldr r0, [r0]
	cmp r1, r0
	bhs _0801AC2E
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
_0801AC2E:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, r2
	blo _0801AC18
_0801AC38:
	mov r3, r8
	subs r0, r5, r3
	lsls r0, r0, #2
	ldr r1, [sp, #0x50]
	adds r5, r0, r1
	ldr r1, [r5, #0xc]
	lsls r0, r7, #2
	adds r0, r0, r1
	ldrb r2, [r0]
	ldr r0, _0801AD04 @ =0x00000A7E
	add r0, sb
	ldrb r0, [r0]
	cmp r0, #7
	beq _0801AC80
	lsls r4, r2, #2
	adds r4, r4, r2
	lsls r4, r4, #3
	adds r4, #8
	add r4, sb
	adds r0, r4, #0
	bl sub_08018FB4
	adds r0, r4, #0
	movs r1, #1
	bl sub_0801901C
	movs r2, #8
	ldrsh r1, [r5, r2]
	movs r3, #0xa
	ldrsh r2, [r5, r3]
	adds r0, r4, #0
	bl sub_08019024
	adds r0, r4, #0
	bl sub_08018B60
_0801AC80:
	ldr r1, [sp, #0x6c]
	asrs r0, r1, #0x10
	cmp r8, r0
	bne _0801AC90
	ldr r1, _0801AD08 @ =0x00000A98
	add r1, sb
	adds r0, r7, #1
	str r0, [r1]
_0801AC90:
	ldr r2, [sp, #0x60]
	lsls r0, r2, #0x10
	ldr r1, [sp, #0x68]
	lsrs r3, r0, #0x10
	mov r8, r3
	cmp r0, r1
	blo _0801ABFC
_0801AC9E:
	ldr r0, _0801AD04 @ =0x00000A7E
	add r0, sb
	ldrb r0, [r0]
	cmp r0, #7
	beq _0801AD5C
	ldr r1, [sp, #0x48]
	cmp r1, #0
	blt _0801AD5C
	ldr r2, [sp, #0x6c]
	asrs r1, r2, #0x10
	cmp r1, #0
	blt _0801AD3E
	cmp r0, #1
	bne _0801AD10
	ldr r3, [sp, #0x58]
	cmp r3, #0
	beq _0801AD10
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, [sp, #0x50]
	adds r0, r0, r1
	ldr r1, [r0, #0x14]
	lsls r0, r3, #2
	adds r0, r0, r1
	subs r0, #4
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #8
	add r0, sb
	add r1, sp, #0x40
	add r2, sp, #0x44
	bl sub_0801902C
	ldr r2, [sp, #0x44]
	ldr r3, _0801AD0C @ =0xFFFFF000
	adds r2, r2, r3
	str r2, [sp, #0x44]
	ldr r1, [sp, #0x48]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #8
	add r0, sb
	ldr r1, [sp, #0x40]
	bl sub_08019024
	b _0801AD3E
	.align 2, 0
_0801AD04: .4byte 0x00000A7E
_0801AD08: .4byte 0x00000A98
_0801AD0C: .4byte 0xFFFFF000
_0801AD10:
	ldr r2, [sp, #0x48]
	lsls r4, r2, #2
	adds r4, r4, r2
	lsls r4, r4, #3
	adds r4, #8
	add r4, sb
	ldr r3, [sp, #0x6c]
	asrs r1, r3, #0x10
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, [sp, #0x50]
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r3, #2
	ldrsh r2, [r0, r3]
	adds r0, r4, #0
	bl sub_08019024
	adds r0, r4, #0
	bl sub_08018B60
_0801AD3E:
	ldr r0, [sp, #0x48]
	cmp r0, #0
	blt _0801AD5C
	ldr r1, [sp, #0x6c]
	cmp r1, #0
	bge _0801AD5C
	lsls r0, r0, #2
	ldr r2, [sp, #0x48]
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r0, #8
	add r0, sb
	movs r1, #0
	bl sub_0801901C
_0801AD5C:
	add sp, #0x70
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0801AD6C
sub_0801AD6C: @ 0x0801AD6C
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r2, r1, #0
	mov r3, sp
	ldr r1, _0801AD90 @ =0x083251B8
	ldm r1!, {r4, r5, r6}
	stm r3!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r3]
	mov r1, sp
	bl sub_08019304
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0801AD90: .4byte 0x083251B8

	thumb_func_start sub_0801AD94
sub_0801AD94: @ 0x0801AD94
	push {r4, r5, r6, lr}
	sub sp, #0x24
	adds r2, r1, #0
	mov r3, sp
	ldr r1, _0801ADB8 @ =0x083251C8
	ldm r1!, {r4, r5, r6}
	stm r3!, {r4, r5, r6}
	ldm r1!, {r4, r5, r6}
	stm r3!, {r4, r5, r6}
	ldm r1!, {r4, r5, r6}
	stm r3!, {r4, r5, r6}
	mov r1, sp
	bl sub_080194EC
	add sp, #0x24
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801ADB8: .4byte 0x083251C8

	thumb_func_start sub_0801ADBC
sub_0801ADBC: @ 0x0801ADBC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x7c
	adds r7, r0, #0
	adds r4, r1, #0
	ldr r0, _0801AF38 @ =0x00000A7E
	adds r0, r7, r0
	str r0, [sp, #0x74]
	ldrb r0, [r0]
	cmp r0, #7
	beq _0801ADFA
	ldr r0, [r7]
	bl sub_08018760
	ldr r0, [r7, #4]
	bl sub_080188CC
	adds r0, r7, #0
	movs r1, #0
	bl sub_08018AF4
	adds r0, r7, #0
	movs r1, #0x31
	bl sub_0801AD6C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0x70]
_0801ADFA:
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [sp, #0x44]
	mov r1, sp
	adds r1, #0x44
	str r1, [sp, #0x78]
	str r0, [r1, #4]
	adds r0, r7, #0
	adds r1, r4, #0
	ldr r2, [sp, #0x70]
	ldr r3, [sp, #0x78]
	bl sub_0801AA00
	ldr r1, [sp, #0x74]
	ldrb r0, [r1]
	cmp r0, #7
	bne _0801AE1E
	b _0801B016
_0801AE1E:
	adds r0, r7, #0
	add r1, sp, #0x14
	bl sub_0801AD94
	movs r0, #8
	adds r0, r0, r7
	mov sl, r0
	movs r1, #0x32
	bl sub_08018FFC
	ldr r1, [sp, #0x70]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #8
	adds r0, r7, r0
	add r1, sp, #0x4c
	add r2, sp, #0x50
	bl sub_0801902C
	movs r0, #0
	str r0, [sp, #0x60]
	movs r0, #0x80
	lsls r0, r0, #1
	str r0, [sp, #0x64]
	add r1, sp, #0x20
	mov r8, r1
	add r0, sp, #0x2c
	str r0, [sp]
	add r6, sp, #0x38
	str r6, [sp, #4]
	add r0, sp, #0x54
	str r0, [sp, #8]
	add r5, sp, #0x58
	str r5, [sp, #0xc]
	add r4, sp, #0x5c
	str r4, [sp, #0x10]
	adds r0, r7, #0
	movs r1, #3
	add r2, sp, #0x14
	mov r3, r8
	bl sub_08019544
	movs r1, #0
	str r1, [sp, #0x6c]
	str r1, [sp, #0x68]
	bl sub_08009C04
	ldr r1, [sp, #0x74]
	ldrb r0, [r1]
	bl sub_08019840
	ldr r1, [sp, #0x74]
	ldrb r0, [r1]
	subs r0, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r5
	add r1, sp, #0x6c
	mov r8, r1
	cmp r0, #1
	bhi _0801AED8
	add r6, sp, #0x60
	ldr r5, [sp, #0x78]
	movs r4, #1
_0801AEA0:
	ldr r1, [r5]
	cmp r1, #0
	blt _0801AEB8
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #8
	adds r0, r7, r0
	movs r1, #0x80
	lsls r1, r1, #3
	bl sub_08019038
_0801AEB8:
	adds r5, #4
	subs r4, #1
	cmp r4, #0
	bge _0801AEA0
	movs r0, #0
	str r0, [sp]
	movs r0, #0x80
	lsls r0, r0, #5
	movs r1, #0
	movs r2, #0xf0
	lsls r2, r2, #5
	adds r3, r6, #0
	bl sub_08019688
	bl sub_08019180
_0801AED8:
	add r4, sp, #0x20
_0801AEDA:
	bl sub_08000BC0
	ldr r0, [sp, #0x70]
	cmp r0, #1
	bne _0801AEFC
	ldr r1, [sp, #0x4c]
	ldr r2, [sp, #0x50]
	movs r0, #0x31
	lsls r3, r0, #2
	adds r3, #0x31
	lsls r3, r3, #3
	adds r3, #8
	adds r0, r7, #0
	adds r0, #0x30
	adds r3, r7, r3
	bl sub_08019430
_0801AEFC:
	ldr r1, _0801AF38 @ =0x00000A7E
	adds r0, r7, r1
	ldrb r0, [r0]
	subs r0, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _0801AF50
	add r0, sp, #0x64
	str r0, [sp]
	movs r0, #0x80
	lsls r0, r0, #5
	movs r1, #0
	movs r2, #0xf0
	lsls r2, r2, #5
	add r3, sp, #0x60
	bl sub_08019688
	ldr r0, [sp, #0x64]
	cmp r0, #0
	ble _0801AF40
	ldr r0, [sp, #0x60]
	movs r1, #0xf0
	lsls r1, r1, #5
	cmp r0, r1
	blt _0801AF50
	str r1, [sp, #0x60]
	ldr r0, _0801AF3C @ =0xFFFFFF00
	b _0801AF4E
	.align 2, 0
_0801AF38: .4byte 0x00000A7E
_0801AF3C: .4byte 0xFFFFFF00
_0801AF40:
	ldr r0, [sp, #0x60]
	cmp r0, #0
	bgt _0801AF50
	movs r0, #0
	str r0, [sp, #0x60]
	movs r0, #0x80
	lsls r0, r0, #1
_0801AF4E:
	str r0, [sp, #0x64]
_0801AF50:
	ldr r1, _0801AF8C @ =0x00000A7E
	adds r0, r7, r1
	ldrb r0, [r0]
	subs r0, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bhi _0801AFAE
	ldr r0, [sp, #0x58]
	ldr r1, [sp, #0x54]
	adds r2, r1, #0
	cmp r0, r1
	bhs _0801AF90
	str r4, [sp]
	add r0, sp, #0x38
	str r0, [sp, #4]
	subs r0, r1, #1
	str r0, [sp, #8]
	mov r1, sb
	str r1, [sp, #0xc]
	add r0, sp, #0x5c
	str r0, [sp, #0x10]
	adds r0, r7, #0
	add r1, sp, #0x14
	adds r2, r4, #0
	add r3, sp, #0x2c
	bl sub_080195C8
	b _0801AFAE
	.align 2, 0
_0801AF8C: .4byte 0x00000A7E
_0801AF90:
	str r2, [sp, #0x58]
	str r4, [sp]
	add r1, sp, #0x38
	str r1, [sp, #4]
	str r2, [sp, #8]
	mov r0, sb
	str r0, [sp, #0xc]
	movs r0, #0
	str r0, [sp, #0x10]
	adds r0, r7, #0
	add r1, sp, #0x14
	adds r2, r4, #0
	add r3, sp, #0x2c
	bl sub_080195C8
_0801AFAE:
	ldr r0, [sp, #0x6c]
	cmp r0, #1
	bne _0801AFCA
	adds r0, r7, #0
	add r1, sp, #0x68
	bl sub_080196D0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0801AFD6
	movs r0, #2
	str r0, [sp, #0x6c]
	b _0801AFD6
_0801AFCA:
	cmp r0, #1
	bls _0801AFD6
	adds r0, r7, #0
	movs r1, #0
	bl sub_080196D0
_0801AFD6:
	mov r0, sl
	movs r1, #0x32
	bl sub_08019160
	bl sub_08009BD0
	mov r0, sl
	movs r1, #0x32
	bl sub_08018FFC
	ldr r1, [sp, #0x58]
	ldr r2, [sp, #0x54]
	adds r0, r7, #0
	mov r3, r8
	bl sub_080197AC
	cmp r0, #1
	beq _0801AFFC
	b _0801AEDA
_0801AFFC:
	ldr r1, _0801B028 @ =0x00000A7E
	adds r0, r7, r1
	ldrb r0, [r0]
	bl sub_08019878
	bl sub_08009BF4
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r1, [r2]
	ldr r0, _0801B02C @ =0x000080FF
	ands r0, r1
	strh r0, [r2]
_0801B016:
	add sp, #0x7c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801B028: .4byte 0x00000A7E
_0801B02C: .4byte 0x000080FF

	thumb_func_start sub_0801B030
sub_0801B030: @ 0x0801B030
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	adds r7, r0, #0
	mov r8, r2
	mov sb, r3
	ldr r4, [sp, #0x4c]
	ldr r5, [sp, #0x50]
	ldr r6, [sp, #0x54]
	ldr r0, _0801B0F8 @ =0x087BAE94
	str r0, [r1]
	movs r0, #4
	mov sl, r0
	mov r2, sl
	strb r2, [r1, #4]
	bl sub_0801A9FC
	str r0, [sp, #0x1c]
	str r4, [sp]
	str r5, [sp, #4]
	str r6, [sp, #8]
	ldr r0, [sp, #0x58]
	str r0, [sp, #0xc]
	ldr r1, [sp, #0x5c]
	str r1, [sp, #0x10]
	ldr r2, [sp, #0x60]
	str r2, [sp, #0x14]
	ldr r0, [sp, #0x1c]
	str r0, [sp, #0x18]
	adds r0, r7, #0
	mov r1, r8
	mov r2, sb
	ldr r3, [sp, #0x40]
	bl sub_080191D8
	ldr r2, _0801B0FC @ =0x00000A7D
	adds r1, r7, r2
	ldrb r0, [r1]
	cmp r0, #4
	beq _0801B08A
	mov r0, sl
	strb r0, [r1]
_0801B08A:
	adds r0, r7, #0
	ldr r1, [sp, #0x48]
	bl sub_080187C8
	ldr r0, _0801B100 @ =0x087B8B28
	str r0, [r7, #4]
	adds r4, r7, #0
	adds r4, #8
	adds r0, r4, #0
	movs r1, #0x40
	bl sub_08018B40
	ldr r1, _0801B104 @ =0x087BA654
	movs r2, #0xfa
	lsls r2, r2, #3
	adds r0, r4, #0
	bl sub_080002C4
	adds r0, r4, #0
	movs r1, #0x40
	bl sub_08018B70
	ldr r1, _0801B108 @ =0x00000A7E
	adds r0, r7, r1
	ldrb r1, [r0]
	ldr r2, _0801B10C @ =0x00000A7F
	adds r0, r7, r2
	ldrb r2, [r0]
	ldr r0, [sp, #0x44]
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, _0801B110 @ =0x087BAF3C
	str r0, [sp, #0xc]
	adds r0, r7, #0
	ldr r3, [sp, #0x1c]
	bl sub_080189B4
	movs r1, #0xa9
	lsls r1, r1, #4
	adds r0, r7, r1
	ldr r1, [r0]
	adds r0, r7, #0
	bl sub_08018AB4
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801B0F8: .4byte 0x087BAE94
_0801B0FC: .4byte 0x00000A7D
_0801B100: .4byte 0x087B8B28
_0801B104: .4byte 0x087BA654
_0801B108: .4byte 0x00000A7E
_0801B10C: .4byte 0x00000A7F
_0801B110: .4byte 0x087BAF3C

	thumb_func_start sub_0801B114
sub_0801B114: @ 0x0801B114
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x2c
	adds r7, r0, #0
	mov r8, r1
	adds r5, r2, #0
	adds r6, r3, #0
	cmp r5, #7
	beq _0801B130
	bl sub_08009B94
	bl sub_08000B84
_0801B130:
	ldr r4, _0801B180 @ =0x02038B80
	adds r0, r4, #0
	bl sub_08019274
	str r5, [sp]
	str r6, [sp, #4]
	ldr r0, [sp, #0x44]
	str r0, [sp, #8]
	ldr r0, [sp, #0x48]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x4c]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x50]
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x54]
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x58]
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x5c]
	str r0, [sp, #0x20]
	adds r0, r4, #0
	add r1, sp, #0x24
	adds r2, r7, #0
	mov r3, r8
	bl sub_0801B030
	adds r0, r4, #0
	add r1, sp, #0x24
	bl sub_0801ADBC
	ldr r0, _0801B184 @ =0x00000A98
	adds r4, r4, r0
	ldr r0, [r4]
	add sp, #0x2c
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0801B180: .4byte 0x02038B80
_0801B184: .4byte 0x00000A98

	thumb_func_start sub_0801B188
sub_0801B188: @ 0x0801B188
	bx lr
	.align 2, 0

	thumb_func_start sub_0801B18C
sub_0801B18C: @ 0x0801B18C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x34
	adds r6, r0, #0
	str r2, [sp, #0x18]
	ldr r0, [r1]
	str r0, [sp, #0x1c]
	ldrb r4, [r1, #4]
	ldr r1, _0801B204 @ =0x00000A7F
	adds r0, r6, r1
	ldrb r0, [r0]
	mov r8, r0
	ldr r2, _0801B208 @ =0x00000A84
	adds r0, r6, r2
	ldr r0, [r0]
	adds r1, r4, #0
	bl sub_08019764
	str r0, [sp, #0x24]
	movs r0, #0
	cmp r4, #3
	bls _0801B1C8
	mov r3, r8
	cmp r3, #3
	bls _0801B1C8
	mov r0, r8
	subs r0, #3
_0801B1C8:
	movs r1, #0
	str r1, [sp, #0x20]
	mov sb, r1
	adds r2, r0, #1
	str r2, [sp, #0x30]
	ldr r3, _0801B208 @ =0x00000A84
	adds r3, r6, r3
	str r3, [sp, #0x28]
	ldr r5, [sp, #0x1c]
	adds r7, r0, #0
	lsls r0, r7, #1
	adds r0, r0, r7
	lsls r0, r0, #3
	adds r0, r0, r5
	mov sl, r0
_0801B1E6:
	ldr r1, _0801B20C @ =0x00000A7E
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #1
	beq _0801B1F8
	cmp r0, #3
	beq _0801B1F8
	cmp r0, #5
	bne _0801B210
_0801B1F8:
	ldr r0, [sp, #0x30]
	add r0, sb
	movs r4, #0
	cmp r0, r8
	bhs _0801B21C
	b _0801B21A
	.align 2, 0
_0801B204: .4byte 0x00000A7F
_0801B208: .4byte 0x00000A84
_0801B20C: .4byte 0x00000A7E
_0801B210:
	ldr r0, [sp, #0x30]
	add r0, sb
	movs r4, #0
	cmp r0, r8
	bhi _0801B21C
_0801B21A:
	movs r4, #1
_0801B21C:
	ldr r1, [r5]
	add r0, sp, #4
	movs r2, #0x14
	bl sub_080002C4
	mov r2, sl
	ldr r0, [r2]
	ldr r0, [r0, #4]
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp]
	add r1, sp, #4
	movs r2, #0
	movs r3, #0
	bl sub_080188DC
	ldr r3, _0801B344 @ =0x00000A88
	adds r0, r6, r3
	ldr r1, [r0]
	lsls r0, r7, #2
	adds r0, r0, r1
	ldr r2, [r0, #4]
	str r7, [sp, #0x2c]
	cmp r2, #0
	beq _0801B2D6
	movs r1, #4
	ldrsh r0, [r5, r1]
	cmp r0, #0
	blt _0801B2D6
	movs r3, #0
	cmp r4, #1
	bne _0801B25E
	movs r3, #2
_0801B25E:
	movs r1, #4
	ldrsh r0, [r5, r1]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #3
	adds r0, r6, #0
	adds r0, #8
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, [sp, #0x20]
	bl sub_080192A4
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _0801B2D6
	movs r2, #4
	ldrsh r1, [r5, r2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #8
	adds r0, r6, r0
	bl sub_08018FB4
	movs r3, #4
	ldrsh r1, [r5, r3]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #8
	adds r0, r6, r0
	movs r1, #1
	bl sub_0801901C
	movs r0, #4
	ldrsh r1, [r5, r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #8
	adds r0, r6, r0
	movs r2, #6
	ldrsh r1, [r5, r2]
	movs r3, #8
	ldrsh r2, [r5, r3]
	bl sub_08019024
	movs r0, #4
	ldrsh r1, [r5, r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #8
	adds r0, r6, r0
	bl sub_08018B60
	ldr r1, [sp, #0x20]
	adds r1, #1
	str r1, [sp, #0x20]
_0801B2D6:
	movs r2, #0xa
	ldrsh r0, [r5, r2]
	cmp r0, #0
	blt _0801B332
	cmp r4, #1
	bne _0801B348
	adds r1, r0, #0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #8
	adds r0, r6, r0
	bl sub_08018FB4
	movs r0, #0xa
	ldrsh r1, [r5, r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #8
	adds r0, r6, r0
	movs r1, #1
	bl sub_0801901C
	movs r2, #0xa
	ldrsh r1, [r5, r2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #8
	adds r0, r6, r0
	movs r3, #0xc
	ldrsh r1, [r5, r3]
	movs r3, #0xe
	ldrsh r2, [r5, r3]
	bl sub_08019024
	movs r0, #0xa
	ldrsh r1, [r5, r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #8
	adds r0, r6, r0
	bl sub_08018B60
_0801B332:
	cmp r4, #1
	bne _0801B348
	movs r0, #0
	movs r1, #0
	movs r2, #3
	bl sub_08009CD4
	b _0801B352
	.align 2, 0
_0801B344: .4byte 0x00000A88
_0801B348:
	movs r0, #0
	movs r1, #0
	movs r2, #2
	bl sub_08009CD4
_0801B352:
	ldr r1, [sp, #0x28]
	ldr r0, [r1]
	ldr r2, [sp, #0x2c]
	lsls r4, r2, #2
	adds r0, r4, r0
	ldr r0, [r0, #4]
	bl sub_08009CBC
	ldrh r0, [r5, #0x10]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x13
	ldrh r1, [r5, #0x12]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x13
	ldr r3, [sp, #0x28]
	ldr r2, [r3]
	adds r4, r4, r2
	ldr r2, [r4, #4]
	bl sub_08009E44
	adds r5, #0x18
	adds r7, #1
	movs r0, #0x18
	add sl, r0
	movs r1, #1
	add sb, r1
	mov r2, sb
	cmp r2, #2
	bhi _0801B38E
	b _0801B1E6
_0801B38E:
	ldr r3, [sp, #0x18]
	cmp r3, #0
	blt _0801B3EC
	mov r0, r8
	cmp r0, #0
	beq _0801B3CE
	movs r1, #2
	cmp r0, #3
	bhi _0801B3A4
	mov r1, r8
	subs r1, #1
_0801B3A4:
	ldr r2, [sp, #0x18]
	lsls r4, r2, #2
	adds r4, r4, r2
	lsls r4, r4, #3
	adds r4, #8
	adds r4, r6, r4
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	ldr r3, [sp, #0x1c]
	adds r0, r0, r3
	movs r2, #0x14
	ldrsh r1, [r0, r2]
	movs r3, #0x16
	ldrsh r2, [r0, r3]
	adds r0, r4, #0
	bl sub_08019024
	adds r0, r4, #0
	bl sub_08018B60
_0801B3CE:
	ldr r0, [sp, #0x18]
	cmp r0, #0
	blt _0801B3EC
	ldr r1, [sp, #0x24]
	cmp r1, #0
	bge _0801B3EC
	lsls r0, r0, #2
	ldr r2, [sp, #0x18]
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r0, #8
	adds r0, r6, r0
	movs r1, #0
	bl sub_0801901C
_0801B3EC:
	add sp, #0x34
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0801B3FC
sub_0801B3FC: @ 0x0801B3FC
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r2, r1, #0
	mov r3, sp
	ldr r1, _0801B420 @ =0x083251EC
	ldm r1!, {r4, r5, r6}
	stm r3!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r3]
	mov r1, sp
	bl sub_08019304
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0801B420: .4byte 0x083251EC

	thumb_func_start sub_0801B424
sub_0801B424: @ 0x0801B424
	push {r4, r5, r6, lr}
	sub sp, #0x24
	adds r2, r1, #0
	mov r3, sp
	ldr r1, _0801B448 @ =0x083251FC
	ldm r1!, {r4, r5, r6}
	stm r3!, {r4, r5, r6}
	ldm r1!, {r4, r5, r6}
	stm r3!, {r4, r5, r6}
	ldm r1!, {r4, r5, r6}
	stm r3!, {r4, r5, r6}
	mov r1, sp
	bl sub_080194EC
	add sp, #0x24
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801B448: .4byte 0x083251FC

	thumb_func_start sub_0801B44C
sub_0801B44C: @ 0x0801B44C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x64
	adds r7, r0, #0
	adds r4, r1, #0
	ldr r0, [r7]
	bl sub_08018760
	ldr r0, [r7, #4]
	bl sub_080188CC
	adds r0, r7, #0
	movs r1, #0
	bl sub_08018AF4
	adds r0, r7, #0
	movs r1, #0xf
	bl sub_0801B3FC
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov sl, r0
	adds r0, r7, #0
	adds r1, r4, #0
	mov r2, sl
	bl sub_0801B18C
	adds r0, r7, #0
	add r1, sp, #0x14
	bl sub_0801B424
	adds r0, r7, #0
	adds r0, #8
	movs r1, #0x10
	bl sub_08018FFC
	mov r1, sl
	lsls r0, r1, #2
	add r0, sl
	lsls r0, r0, #3
	adds r0, #8
	adds r0, r7, r0
	add r1, sp, #0x44
	add r2, sp, #0x48
	bl sub_0801902C
	add r0, sp, #0x20
	mov sb, r0
	add r1, sp, #0x2c
	str r1, [sp]
	add r6, sp, #0x38
	str r6, [sp, #4]
	add r0, sp, #0x4c
	str r0, [sp, #8]
	add r5, sp, #0x50
	str r5, [sp, #0xc]
	add r4, sp, #0x54
	str r4, [sp, #0x10]
	adds r0, r7, #0
	movs r1, #3
	add r2, sp, #0x14
	mov r3, sb
	bl sub_08019544
	movs r0, #0
	str r0, [sp, #0x5c]
	str r0, [sp, #0x58]
	bl sub_08009C04
	ldr r1, _0801B54C @ =0x00000A7E
	adds r0, r7, r1
	ldrb r0, [r0]
	bl sub_08019840
	mov r8, r6
	adds r6, r5, #0
	mov r0, sp
	adds r0, #0x5c
	str r0, [sp, #0x60]
	mov r5, sb
_0801B4F2:
	bl sub_08000BC0
	mov r1, sl
	cmp r1, #1
	bne _0801B514
	ldr r1, [sp, #0x44]
	ldr r2, [sp, #0x48]
	movs r0, #0xf
	lsls r3, r0, #2
	adds r3, #0xf
	lsls r3, r3, #3
	adds r3, #8
	adds r0, r7, #0
	adds r0, #0x30
	adds r3, r7, r3
	bl sub_08019430
_0801B514:
	ldr r1, _0801B54C @ =0x00000A7E
	adds r0, r7, r1
	ldrb r0, [r0]
	subs r0, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bhi _0801B56C
	ldr r0, [sp, #0x50]
	ldr r1, [sp, #0x4c]
	cmp r0, r1
	bhs _0801B550
	str r5, [sp]
	mov r0, r8
	str r0, [sp, #4]
	subs r0, r1, #1
	str r0, [sp, #8]
	str r6, [sp, #0xc]
	add r1, sp, #0x54
	str r1, [sp, #0x10]
	adds r0, r7, #0
	add r1, sp, #0x14
	adds r2, r5, #0
	add r3, sp, #0x2c
	bl sub_080195C8
	b _0801B56C
	.align 2, 0
_0801B54C: .4byte 0x00000A7E
_0801B550:
	str r1, [sp, #0x50]
	str r5, [sp]
	mov r0, r8
	str r0, [sp, #4]
	str r1, [sp, #8]
	str r6, [sp, #0xc]
	movs r0, #0
	str r0, [sp, #0x10]
	adds r0, r7, #0
	add r1, sp, #0x14
	adds r2, r5, #0
	add r3, sp, #0x2c
	bl sub_080195C8
_0801B56C:
	ldr r0, [sp, #0x5c]
	cmp r0, #1
	bne _0801B588
	adds r0, r7, #0
	add r1, sp, #0x58
	bl sub_080196D0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0801B594
	movs r0, #2
	str r0, [sp, #0x5c]
	b _0801B594
_0801B588:
	cmp r0, #1
	bls _0801B594
	adds r0, r7, #0
	movs r1, #0
	bl sub_080196D0
_0801B594:
	adds r4, r7, #0
	adds r4, #8
	adds r0, r4, #0
	movs r1, #0x10
	bl sub_08019160
	bl sub_08009BD0
	adds r0, r4, #0
	movs r1, #0x10
	bl sub_08018FFC
	ldr r1, [sp, #0x50]
	ldr r2, [sp, #0x4c]
	adds r0, r7, #0
	ldr r3, [sp, #0x60]
	bl sub_080197AC
	cmp r0, #1
	bne _0801B4F2
	ldr r1, _0801B5E8 @ =0x00000A7E
	adds r0, r7, r1
	ldrb r0, [r0]
	bl sub_08019878
	bl sub_08009BF4
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r1, [r2]
	ldr r0, _0801B5EC @ =0x000080FF
	ands r0, r1
	strh r0, [r2]
	add sp, #0x64
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801B5E8: .4byte 0x00000A7E
_0801B5EC: .4byte 0x000080FF

	thumb_func_start sub_0801B5F0
sub_0801B5F0: @ 0x0801B5F0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	adds r6, r0, #0
	adds r4, r2, #0
	adds r7, r3, #0
	cmp r4, #6
	bne _0801B60C
	ldr r0, _0801B608 @ =0x087BA5DC
	str r0, [r1]
	movs r0, #5
	b _0801B618
	.align 2, 0
_0801B608: .4byte 0x087BA5DC
_0801B60C:
	cmp r4, #4
	beq _0801B612
	movs r4, #4
_0801B612:
	ldr r0, _0801B6B0 @ =0x087BA594
	str r0, [r1]
	movs r0, #3
_0801B618:
	strb r0, [r1, #4]
	ldrb r0, [r1, #4]
	bl sub_0801B188
	adds r5, r0, #0
	ldr r0, [sp, #0x3c]
	str r0, [sp]
	ldr r0, [sp, #0x40]
	str r0, [sp, #4]
	ldr r0, [sp, #0x44]
	str r0, [sp, #8]
	ldr r0, [sp, #0x48]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x4c]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x50]
	str r0, [sp, #0x14]
	str r5, [sp, #0x18]
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r7, #0
	ldr r3, [sp, #0x30]
	bl sub_080191D8
	adds r0, r6, #0
	ldr r1, [sp, #0x38]
	bl sub_080187C8
	ldr r0, _0801B6B4 @ =0x087B8B2C
	str r0, [r6, #4]
	adds r4, r6, #0
	adds r4, #8
	adds r0, r4, #0
	movs r1, #0x40
	bl sub_08018B40
	ldr r1, _0801B6B8 @ =0x087BA274
	movs r2, #0xa0
	lsls r2, r2, #2
	adds r0, r4, #0
	bl sub_080002C4
	adds r0, r4, #0
	movs r1, #0x40
	bl sub_08018B70
	ldr r1, _0801B6BC @ =0x00000A7E
	adds r0, r6, r1
	ldrb r1, [r0]
	ldr r2, _0801B6C0 @ =0x00000A7F
	adds r0, r6, r2
	ldrb r2, [r0]
	ldr r0, [sp, #0x34]
	str r0, [sp]
	ldr r0, _0801B6C4 @ =0x087BAF30
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	ldr r0, _0801B6C8 @ =0x087BAF3C
	str r0, [sp, #0xc]
	adds r0, r6, #0
	adds r3, r5, #0
	bl sub_080189B4
	movs r1, #0xa9
	lsls r1, r1, #4
	adds r0, r6, r1
	ldr r1, [r0]
	adds r0, r6, #0
	bl sub_08018AB4
	add sp, #0x1c
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801B6B0: .4byte 0x087BA594
_0801B6B4: .4byte 0x087B8B2C
_0801B6B8: .4byte 0x087BA274
_0801B6BC: .4byte 0x00000A7E
_0801B6C0: .4byte 0x00000A7F
_0801B6C4: .4byte 0x087BAF30
_0801B6C8: .4byte 0x087BAF3C

	thumb_func_start sub_0801B6CC
sub_0801B6CC: @ 0x0801B6CC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x2c
	mov r8, r0
	mov sb, r1
	adds r5, r2, #0
	adds r6, r3, #0
	ldr r7, [sp, #0x48]
	bl sub_08009B94
	bl sub_08000B84
	ldr r4, _0801B730 @ =0x0203B0E0
	adds r0, r4, #0
	bl sub_08019274
	str r5, [sp]
	str r6, [sp, #4]
	str r7, [sp, #8]
	ldr r0, [sp, #0x4c]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x50]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x54]
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x58]
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x5c]
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x60]
	str r0, [sp, #0x20]
	adds r0, r4, #0
	add r1, sp, #0x24
	mov r2, r8
	mov r3, sb
	bl sub_0801B5F0
	adds r0, r4, #0
	add r1, sp, #0x24
	bl sub_0801B44C
	add sp, #0x2c
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801B730: .4byte 0x0203B0E0

	thumb_func_start sub_0801B734
sub_0801B734: @ 0x0801B734
	push {lr}
_0801B736:
	movs r0, #1
	bl sub_080006DC
	cmp r0, #0
	bne _0801B736
	pop {r0}
	bx r0

	thumb_func_start sub_0801B744
sub_0801B744: @ 0x0801B744
	push {lr}
	bl sub_0800A0B8
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0801B750
sub_0801B750: @ 0x0801B750
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0800A0DC
	cmp r0, #0
	bge _0801B764
	adds r0, r4, #0
	bl sub_0800A094
	b _0801B76E
_0801B764:
	cmp r0, r4
	beq _0801B76E
	adds r0, r4, #0
	bl sub_0800A094
_0801B76E:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0801B774
sub_0801B774: @ 0x0801B774
	push {lr}
	ldr r0, _0801B788 @ =0x02000020
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0801B78C
	movs r0, #0
	b _0801B78E
	.align 2, 0
_0801B788: .4byte 0x02000020
_0801B78C:
	movs r0, #1
_0801B78E:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0801B794
sub_0801B794: @ 0x0801B794
	ldr r1, _0801B79C @ =0x04000050
	movs r0, #0
	strh r0, [r1]
	bx lr
	.align 2, 0
_0801B79C: .4byte 0x04000050

	thumb_func_start sub_0801B7A0
sub_0801B7A0: @ 0x0801B7A0
	ldr r1, _0801B7A8 @ =0x04000050
	movs r0, #0xbf
	strh r0, [r1]
	bx lr
	.align 2, 0
_0801B7A8: .4byte 0x04000050

	thumb_func_start sub_0801B7AC
sub_0801B7AC: @ 0x0801B7AC
	ldr r1, _0801B7B4 @ =0x04000050
	movs r0, #0xff
	strh r0, [r1]
	bx lr
	.align 2, 0
_0801B7B4: .4byte 0x04000050

	thumb_func_start sub_0801B7B8
sub_0801B7B8: @ 0x0801B7B8
	ldr r1, _0801B7C0 @ =0x04000054
	strh r0, [r1]
	bx lr
	.align 2, 0
_0801B7C0: .4byte 0x04000054

	thumb_func_start sub_0801B7C4
sub_0801B7C4: @ 0x0801B7C4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov r8, r1
	adds r6, r2, #0
	mov sl, r3
	cmp r0, #0
	bne _0801B7DE
	bl sub_0801B7AC
	b _0801B7E2
_0801B7DE:
	bl sub_0801B7A0
_0801B7E2:
	movs r0, #0
	mov sb, r0
	movs r7, #0
	cmp sb, r6
	bhs _0801B84C
	subs r5, r6, #1
	movs r4, #0
_0801B7F0:
	bl sub_08000BC0
	bl sub_08009BD0
	mov r0, r8
	cmp r0, #0
	bne _0801B81C
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0803DD84
	lsls r0, r0, #4
	movs r1, #0xfa
	lsls r1, r1, #2
	bl sub_0803DD84
	adds r1, r0, #0
	movs r0, #0x10
	subs r0, r0, r1
	bl sub_0801B7B8
	b _0801B832
_0801B81C:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0803DD84
	lsls r0, r0, #4
	movs r1, #0xfa
	lsls r1, r1, #2
	bl sub_0803DD84
	bl sub_0801B7B8
_0801B832:
	mov r0, sl
	cmp r0, #1
	bne _0801B840
	bl sub_0801B774
	cmp r0, #1
	beq _0801B860
_0801B840:
	movs r0, #0xfa
	lsls r0, r0, #2
	adds r4, r4, r0
	adds r7, #1
	cmp r7, r6
	blo _0801B7F0
_0801B84C:
	mov r0, sb
	cmp r0, #0
	bne _0801B86C
	mov r0, r8
	cmp r0, #0
	bne _0801B866
	movs r0, #0
	bl sub_0801B7B8
	b _0801B86C
_0801B860:
	movs r0, #1
	mov sb, r0
	b _0801B86C
_0801B866:
	movs r0, #0x10
	bl sub_0801B7B8
_0801B86C:
	mov r0, sb
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0801B87C
sub_0801B87C: @ 0x0801B87C
	push {r4, r5, lr}
	cmp r0, #0xf0
	ble _0801B886
	movs r5, #0xf0
	b _0801B892
_0801B886:
	cmp r0, #0
	bge _0801B88E
	movs r5, #0
	b _0801B892
_0801B88E:
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_0801B892:
	cmp r1, #0xa0
	ble _0801B89A
	movs r4, #0xa0
	b _0801B8A6
_0801B89A:
	cmp r1, #0
	bge _0801B8A2
	movs r4, #0
	b _0801B8A6
_0801B8A2:
	lsls r0, r1, #0x18
	lsrs r4, r0, #0x18
_0801B8A6:
	cmp r2, #0xf0
	ble _0801B8AE
	movs r2, #0xf0
	b _0801B8BA
_0801B8AE:
	cmp r2, #0
	bge _0801B8B6
	movs r2, #0
	b _0801B8BA
_0801B8B6:
	lsls r0, r2, #0x18
	lsrs r2, r0, #0x18
_0801B8BA:
	cmp r3, #0xa0
	ble _0801B8C2
	movs r3, #0xa0
	b _0801B8CE
_0801B8C2:
	cmp r3, #0
	bge _0801B8CA
	movs r3, #0
	b _0801B8CE
_0801B8CA:
	lsls r0, r3, #0x18
	lsrs r3, r0, #0x18
_0801B8CE:
	ldr r1, _0801B8E4 @ =0x04000040
	lsls r0, r5, #8
	orrs r0, r2
	strh r0, [r1]
	adds r1, #4
	lsls r0, r4, #8
	orrs r0, r3
	strh r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801B8E4: .4byte 0x04000040

	thumb_func_start sub_0801B8E8
sub_0801B8E8: @ 0x0801B8E8
	ldr r1, _0801B8F4 @ =0x04000050
	movs r2, #0xfc
	lsls r2, r2, #6
	adds r0, r2, #0
	strh r0, [r1]
	bx lr
	.align 2, 0
_0801B8F4: .4byte 0x04000050

	thumb_func_start sub_0801B8F8
sub_0801B8F8: @ 0x0801B8F8
	push {lr}
	cmp r0, #0x10
	ble _0801B902
	movs r2, #0x10
	b _0801B90E
_0801B902:
	cmp r0, #0
	bge _0801B90A
	movs r2, #0
	b _0801B90E
_0801B90A:
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
_0801B90E:
	cmp r1, #0x10
	ble _0801B916
	movs r0, #0x10
	b _0801B922
_0801B916:
	cmp r1, #0
	bge _0801B91E
	movs r0, #0
	b _0801B922
_0801B91E:
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
_0801B922:
	ldr r1, _0801B930 @ =0x04000052
	lsls r0, r0, #8
	orrs r0, r2
	strh r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_0801B930: .4byte 0x04000052

	thumb_func_start sub_0801B934
sub_0801B934: @ 0x0801B934
	ldr r2, _0801B944 @ =0x04000010
	rsbs r0, r0, #0
	strh r0, [r2]
	ldr r0, _0801B948 @ =0x04000012
	rsbs r1, r1, #0
	strh r1, [r0]
	bx lr
	.align 2, 0
_0801B944: .4byte 0x04000010
_0801B948: .4byte 0x04000012

	thumb_func_start sub_0801B94C
sub_0801B94C: @ 0x0801B94C
	push {r4, r5, lr}
	sub sp, #0x24
	adds r4, r0, #0
	adds r5, r1, #0
	movs r0, #0xa0
	movs r1, #2
	bl sub_0803D34C
	lsls r0, r0, #8
	str r0, [sp]
	movs r0, #0x80
	movs r1, #2
	bl sub_0803D34C
	lsls r0, r0, #8
	str r0, [sp, #4]
	mov r0, sp
	adds r4, #0x78
	movs r2, #0
	strh r4, [r0, #8]
	adds r5, #0x50
	strh r5, [r0, #0xa]
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r0, #0xc]
	strh r1, [r0, #0xe]
	strh r2, [r0, #0x10]
	add r4, sp, #0x14
	adds r1, r4, #0
	movs r2, #1
	bl sub_0803D344
	ldr r1, _0801B9CC @ =0x04000020
	ldrh r0, [r4]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r4, #2]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r4, #4]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r4, #6]
	strh r0, [r1]
	adds r1, #2
	ldr r0, [r4, #8]
	strh r0, [r1]
	adds r1, #2
	ldr r2, _0801B9D0 @ =0x0FFF0000
	ands r0, r2
	asrs r0, r0, #0x10
	strh r0, [r1]
	adds r1, #2
	ldr r0, [r4, #0xc]
	strh r0, [r1]
	adds r1, #2
	ands r0, r2
	asrs r0, r0, #0x10
	strh r0, [r1]
	add sp, #0x24
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801B9CC: .4byte 0x04000020
_0801B9D0: .4byte 0x0FFF0000

	thumb_func_start sub_0801B9D4
sub_0801B9D4: @ 0x0801B9D4
	push {r4, lr}
	adds r4, r1, #0
	adds r3, r2, #0
	cmp r0, #0
	blt _0801BA08
	lsls r2, r0, #3
	movs r0, #0xe0
	lsls r0, r0, #0x13
	adds r2, r2, r0
	ldrh r1, [r2]
	movs r0, #0xff
	lsls r0, r0, #8
	ands r0, r1
	movs r1, #0xff
	ands r3, r1
	orrs r0, r3
	strh r0, [r2]
	ldrh r1, [r2, #2]
	movs r0, #0xfe
	lsls r0, r0, #8
	ands r0, r1
	ldr r3, _0801BA10 @ =0x000001FF
	adds r1, r3, #0
	ands r4, r1
	orrs r0, r4
	strh r0, [r2, #2]
_0801BA08:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801BA10: .4byte 0x000001FF

	thumb_func_start sub_0801BA14
sub_0801BA14: @ 0x0801BA14
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r2
	ldr r2, [r0, #0xc]
	ldrh r7, [r0, #0x10]
	movs r6, #0
	cmp r6, r7
	bhs _0801BA40
	adds r5, r1, #0
	adds r4, r2, #0
_0801BA2A:
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r1, r5, #0
	mov r2, r8
	bl sub_0801B9D4
	adds r5, #0x40
	adds r4, #0xc
	adds r6, #1
	cmp r6, r7
	blo _0801BA2A
_0801BA40:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0801BA4C
sub_0801BA4C: @ 0x0801BA4C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r2
	ldr r2, [r0, #0x14]
	ldrh r7, [r0, #0x18]
	movs r6, #0
	cmp r6, r7
	bhs _0801BA78
	adds r5, r1, #0
	adds r4, r2, #0
_0801BA62:
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r1, r5, #0
	mov r2, r8
	bl sub_0801B9D4
	adds r5, #0x40
	adds r4, #0xc
	adds r6, #1
	cmp r6, r7
	blo _0801BA62
_0801BA78:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0801BA84
sub_0801BA84: @ 0x0801BA84
	push {r4, lr}
	sub sp, #4
	adds r3, r1, #0
	cmp r0, #0
	blt _0801BAC6
	lsls r0, r0, #3
	movs r1, #0xe0
	lsls r1, r1, #0x13
	adds r4, r0, r1
	mov r2, sp
	ldrh r1, [r4]
	ldr r0, _0801BAB4 @ =0x0000FCFF
	ands r0, r1
	strh r0, [r2]
	cmp r3, #0
	bne _0801BAB8
	mov r0, sp
	ldrh r0, [r0]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	b _0801BAC0
	.align 2, 0
_0801BAB4: .4byte 0x0000FCFF
_0801BAB8:
	mov r0, sp
	mov r1, sp
	ldrh r1, [r1]
	strh r1, [r0]
_0801BAC0:
	mov r0, sp
	ldrh r0, [r0]
	strh r0, [r4]
_0801BAC6:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0801BAD0
sub_0801BAD0: @ 0x0801BAD0
	push {r4, r5, r6, r7, lr}
	adds r7, r1, #0
	ldr r1, [r0, #0xc]
	ldrh r6, [r0, #0x10]
	movs r5, #0
	cmp r5, r6
	bhs _0801BAF2
	adds r4, r1, #0
_0801BAE0:
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r1, r7, #0
	bl sub_0801BA84
	adds r4, #0xc
	adds r5, #1
	cmp r5, r6
	blo _0801BAE0
_0801BAF2:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0801BAF8
sub_0801BAF8: @ 0x0801BAF8
	push {r4, r5, r6, r7, lr}
	adds r7, r1, #0
	ldr r1, [r0, #0x14]
	ldrh r6, [r0, #0x18]
	movs r5, #0
	cmp r5, r6
	bhs _0801BB1A
	adds r4, r1, #0
_0801BB08:
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r1, r7, #0
	bl sub_0801BA84
	adds r4, #0xc
	adds r5, #1
	cmp r5, r6
	blo _0801BB08
_0801BB1A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0801BB20
sub_0801BB20: @ 0x0801BB20
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r1, r2, #0
	lsls r0, r3, #8
	bl sub_0803D7D4
	subs r4, r4, r5
	muls r0, r4, r0
	asrs r0, r0, #8
	adds r0, r0, r5
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0801BB3C
sub_0801BB3C: @ 0x0801BB3C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r7, r0, #0
	movs r0, #0
	str r0, [sp]
	movs r6, #0x80
	lsls r6, r6, #1
	movs r5, #0
	mov sl, r5
	movs r4, #0xa0
	lsls r4, r4, #8
	ldr r1, _0801BBA4 @ =0xFFFF3800
	mov sb, r1
	movs r2, #0xf0
	lsls r2, r2, #8
	mov r8, r2
	bl sub_0801B8E8
	movs r0, #0x10
	movs r1, #0
	bl sub_0801B8F8
_0801BB70:
	bl sub_08000BC0
	cmp r5, #0
	bne _0801BBB6
	ldr r0, [sp]
	lsrs r4, r0, #8
	cmp r4, #0x10
	bhi _0801BBA8
	movs r0, #0
	movs r1, #0x80
	lsls r1, r1, #5
	movs r2, #0x10
	adds r3, r4, #0
	bl sub_0801BB20
	mov sl, r0
	movs r0, #0xa0
	lsls r0, r0, #8
	movs r1, #0x90
	lsls r1, r1, #8
	movs r2, #0x10
	adds r3, r4, #0
	bl sub_0801BB20
	adds r4, r0, #0
	b _0801BC94
	.align 2, 0
_0801BBA4: .4byte 0xFFFF3800
_0801BBA8:
	movs r1, #0x80
	lsls r1, r1, #5
	mov sl, r1
	movs r4, #0x90
	lsls r4, r4, #8
	movs r5, #1
	b _0801BC8C
_0801BBB6:
	cmp r5, #1
	bne _0801BBC6
	ldr r1, [sp]
	lsrs r0, r1, #8
	cmp r0, #0xf
	bls _0801BC94
	movs r5, #2
	b _0801BBFE
_0801BBC6:
	cmp r5, #2
	bne _0801BBF0
	ldr r0, [sp]
	lsrs r3, r0, #8
	cmp r3, #0x3c
	bhi _0801BBE8
	ldr r0, _0801BBE4 @ =0xFFFF3800
	movs r1, #0
	movs r2, #0x3c
	bl sub_0801BB20
	mov sb, r0
	lsrs r0, r6, #4
	adds r6, r6, r0
	b _0801BC94
	.align 2, 0
_0801BBE4: .4byte 0xFFFF3800
_0801BBE8:
	movs r1, #0
	mov sb, r1
	movs r5, #3
	b _0801BC8C
_0801BBF0:
	cmp r5, #3
	bne _0801BC08
	ldr r1, [sp]
	lsrs r0, r1, #8
	cmp r0, #0x28
	bls _0801BC94
	movs r5, #4
_0801BBFE:
	movs r2, #0
	str r2, [sp]
	movs r6, #0x80
	lsls r6, r6, #2
	b _0801BC94
_0801BC08:
	cmp r5, #4
	bne _0801BC42
	ldr r0, [sp]
	lsrs r3, r0, #8
	cmp r3, #0x3c
	bhi _0801BC2A
	movs r0, #0xf0
	lsls r0, r0, #8
	movs r1, #0x80
	lsls r1, r1, #4
	movs r2, #0x3c
	bl sub_0801BB20
	mov r8, r0
	lsrs r0, r6, #3
	adds r6, r6, r0
	b _0801BC94
_0801BC2A:
	movs r1, #0x80
	lsls r1, r1, #4
	mov r8, r1
	ldr r0, [r7, #0x20]
	cmp r0, #1
	bne _0801BC3A
	movs r5, #5
	b _0801BC8C
_0801BC3A:
	movs r5, #8
	movs r0, #0
	str r0, [sp]
	b _0801BC90
_0801BC42:
	cmp r5, #5
	bne _0801BC52
	ldr r1, [sp]
	lsrs r0, r1, #8
	cmp r0, #0x1e
	bls _0801BC94
	movs r5, #6
	b _0801BC8C
_0801BC52:
	cmp r5, #6
	bne _0801BC66
	adds r0, r7, #0
	movs r1, #0
	bl sub_0801BAD0
	movs r5, #7
	movs r0, #0
	str r0, [sp]
	b _0801BC90
_0801BC66:
	cmp r5, #7
	bne _0801BC7E
	ldr r1, [sp]
	lsrs r0, r1, #8
	cmp r0, #3
	bls _0801BC94
	adds r0, r7, #0
	movs r1, #1
	bl sub_0801BAF8
	movs r5, #8
	b _0801BC8C
_0801BC7E:
	cmp r5, #8
	bne _0801BC94
	ldr r1, [sp]
	lsrs r0, r1, #8
	cmp r0, #0x8c
	bls _0801BC94
	movs r5, #9
_0801BC8C:
	movs r2, #0
	str r2, [sp]
_0801BC90:
	movs r6, #0x80
	lsls r6, r6, #1
_0801BC94:
	bl sub_08009BD0
	mov r0, sl
	asrs r1, r0, #8
	asrs r3, r4, #8
	movs r0, #0
	movs r2, #0xf0
	bl sub_0801B87C
	mov r1, sb
	asrs r0, r1, #8
	movs r1, #0
	bl sub_0801B94C
	mov r2, r8
	asrs r1, r2, #8
	adds r0, r7, #0
	movs r2, #0x60
	bl sub_0801BA14
	movs r1, #0x80
	lsls r1, r1, #5
	subs r1, r1, r1
	movs r2, #0x80
	lsls r2, r2, #5
	asrs r0, r2, #8
	asrs r1, r1, #8
	bl sub_0801B8F8
	bl sub_0801B774
	cmp r0, #1
	bne _0801BCDA
	movs r0, #1
	b _0801BCE8
_0801BCDA:
	cmp r5, #8
	bhi _0801BCE6
	ldr r0, [sp]
	adds r0, r0, r6
	str r0, [sp]
	b _0801BB70
_0801BCE6:
	movs r0, #0
_0801BCE8:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0801BCF8
sub_0801BCF8: @ 0x0801BCF8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r7, r0, #0
	ldr r0, [r7, #0x1c]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, [r7, #4]
	adds r5, r0, r1
	ldr r0, [r5]
	cmp r0, #0
	beq _0801BD1C
	movs r1, #0xa0
	lsls r1, r1, #0x13
	bl sub_0803D358
_0801BD1C:
	add r2, sp, #4
	movs r0, #0
	strh r0, [r2]
	movs r1, #0xa0
	lsls r1, r1, #0x13
	ldrh r0, [r2]
	strh r0, [r1]
	ldr r5, [r7]
	ldr r0, [r5]
	cmp r0, #0
	beq _0801BD3C
	ldrh r0, [r0, #2]
	strh r0, [r2]
	ldr r1, _0801BD70 @ =0x050001FE
	ldrh r0, [r2]
	strh r0, [r1]
_0801BD3C:
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _0801BD96
	movs r1, #0xc0
	lsls r1, r1, #0x13
	mov r8, r1
	bl sub_0803D358
	movs r4, #0
	mov r2, sp
	movs r3, #0xff
	ldr r5, _0801BD74 @ =0x000095FF
_0801BD54:
	mov r0, r8
	adds r1, r0, r4
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0801BD78
	ldrh r0, [r1]
	strh r0, [r2]
	ldrb r0, [r2]
	cmp r0, #0
	beq _0801BD8C
	orrs r0, r3
	strb r0, [r2]
	b _0801BD88
	.align 2, 0
_0801BD70: .4byte 0x050001FE
_0801BD74: .4byte 0x000095FF
_0801BD78:
	subs r1, #1
	ldrh r0, [r1]
	strh r0, [r2]
	ldrb r0, [r2, #1]
	cmp r0, #0
	beq _0801BD8C
	orrs r0, r3
	strb r0, [r2, #1]
_0801BD88:
	ldrh r0, [r2]
	strh r0, [r1]
_0801BD8C:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r5
	bls _0801BD54
_0801BD96:
	ldr r0, [r7, #0x1c]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, [r7, #4]
	adds r5, r0, r1
	movs r6, #0
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _0801BE04
	ldr r1, _0801BE9C @ =0x06004000
	mov r8, r1
	bl sub_0803D358
	movs r5, #0
	mov r6, sp
_0801BDB6:
	movs r4, #0
	lsls r0, r5, #6
	mov r2, r8
	adds r1, r2, r0
	ldrh r0, [r1]
	strh r0, [r6]
	ldrb r0, [r6]
	cmp r0, #0
	bne _0801BDEE
	ldrb r0, [r6, #1]
	cmp r0, #0
	bne _0801BDEE
	adds r3, r1, #0
	mov r2, sp
_0801BDD2:
	adds r0, r4, #2
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0x3f
	bhi _0801BDFC
	adds r1, r3, r4
	ldrh r0, [r1]
	strh r0, [r2]
	ldrb r0, [r2]
	cmp r0, #0
	bne _0801BDEE
	ldrb r0, [r2, #1]
	cmp r0, #0
	beq _0801BDD2
_0801BDEE:
	cmp r4, #0x3f
	bhi _0801BDFC
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0xff
	bls _0801BDB6
_0801BDFC:
	cmp r5, #0xff
	bls _0801BE02
	movs r5, #0
_0801BE02:
	adds r6, r5, #0
_0801BE04:
	ldr r5, [r7]
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _0801BE30
	ldr r0, _0801BEA0 @ =0x0600F000
	mov r8, r0
	movs r4, #0
_0801BE12:
	lsls r0, r4, #6
	add r0, r8
	lsls r2, r4, #4
	subs r2, r2, r4
	lsls r2, r2, #2
	ldr r1, [r5, #8]
	adds r1, r1, r2
	movs r2, #0x3c
	bl sub_080002EC
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0x13
	bls _0801BE12
_0801BE30:
	ldr r1, [r7, #0x1c]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, [r7, #4]
	adds r5, r1, r0
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _0801BED2
	ldr r1, _0801BEA4 @ =0x0600F800
	mov r8, r1
	movs r1, #0
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	lsls r4, r0, #8
	orrs r4, r0
_0801BE50:
	movs r3, #0
	lsls r2, r1, #5
_0801BE54:
	adds r0, r2, r3
	add r0, r8
	strh r4, [r0]
	adds r0, r3, #2
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0x1f
	bls _0801BE54
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0x1f
	bls _0801BE50
	ldr r2, _0801BEA4 @ =0x0600F800
	mov r8, r2
	movs r4, #0
	movs r1, #0
	mov r2, sp
_0801BE78:
	movs r3, #0
	lsls r6, r1, #5
	adds r7, r1, #1
_0801BE7E:
	mov r1, r8
	adds r0, r1, r3
	adds r1, r0, r6
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0801BEA8
	ldrh r0, [r1]
	strh r0, [r2]
	ldr r0, [r5, #8]
	adds r0, r0, r4
	ldrb r0, [r0]
	strb r0, [r2]
	b _0801BEB6
	.align 2, 0
_0801BE9C: .4byte 0x06004000
_0801BEA0: .4byte 0x0600F000
_0801BEA4: .4byte 0x0600F800
_0801BEA8:
	subs r1, #1
	ldrh r0, [r1]
	strh r0, [r2]
	ldr r0, [r5, #8]
	adds r0, r0, r4
	ldrb r0, [r0]
	strb r0, [r2, #1]
_0801BEB6:
	ldrh r0, [r2]
	strh r0, [r1]
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0x13
	bls _0801BE7E
	lsls r0, r7, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0xf
	bls _0801BE78
_0801BED2:
	ldr r1, _0801BF00 @ =0x04000008
	ldr r2, _0801BF04 @ =0x00001E82
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #4
	ldr r2, _0801BF08 @ =0x00005F85
	adds r0, r2, #0
	strh r0, [r1]
	movs r0, #0
	movs r1, #0
	bl sub_0801B934
	movs r0, #0xc8
	rsbs r0, r0, #0
	movs r1, #0
	bl sub_0801B94C
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801BF00: .4byte 0x04000008
_0801BF04: .4byte 0x00001E82
_0801BF08: .4byte 0x00005F85

	thumb_func_start sub_0801BF0C
sub_0801BF0C: @ 0x0801BF0C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	adds r5, r2, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0801BF24
	lsls r1, r6, #5
	ldr r2, _0801BF6C @ =0x05000200
	adds r1, r1, r2
	bl sub_0803D358
_0801BF24:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0801BF36
	ldr r1, [r5]
	lsls r1, r1, #5
	ldr r3, _0801BF70 @ =0x06010000
	adds r1, r1, r3
	bl sub_0803D358
_0801BF36:
	movs r1, #0
	ldrsh r0, [r4, r1]
	ldr r2, [r5]
	cmp r0, #0
	blt _0801BF60
	adds r1, r0, #0
	lsls r1, r1, #3
	movs r0, #0xe0
	lsls r0, r0, #0x13
	adds r1, r1, r0
	movs r3, #0x80
	lsls r3, r3, #3
	adds r0, r3, #0
	strh r0, [r1]
	movs r3, #0xc0
	lsls r3, r3, #8
	adds r0, r3, #0
	strh r0, [r1, #2]
	lsls r0, r6, #0xc
	orrs r0, r2
	strh r0, [r1, #4]
_0801BF60:
	adds r0, r2, #0
	adds r0, #0x40
	str r0, [r5]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801BF6C: .4byte 0x05000200
_0801BF70: .4byte 0x06010000

	thumb_func_start sub_0801BF74
sub_0801BF74: @ 0x0801BF74
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r7, r0, #0
	movs r0, #0
	str r0, [sp]
	ldr r0, [r7, #0xc]
	ldrh r6, [r7, #0x10]
	movs r5, #0
	cmp r5, r6
	bhs _0801BF9C
	adds r4, r0, #0
_0801BF8A:
	adds r0, r4, #0
	movs r1, #0
	mov r2, sp
	bl sub_0801BF0C
	adds r4, #0xc
	adds r5, #1
	cmp r5, r6
	blo _0801BF8A
_0801BF9C:
	adds r0, r7, #0
	movs r1, #0xf0
	movs r2, #0x60
	bl sub_0801BA14
	ldr r0, [r7, #0x14]
	ldrh r6, [r7, #0x18]
	movs r5, #0
	cmp r5, r6
	bhs _0801BFC4
	adds r4, r0, #0
_0801BFB2:
	adds r0, r4, #0
	movs r1, #1
	mov r2, sp
	bl sub_0801BF0C
	adds r4, #0xc
	adds r5, #1
	cmp r5, r6
	blo _0801BFB2
_0801BFC4:
	adds r0, r7, #0
	movs r1, #0
	movs r2, #0x60
	bl sub_0801BA4C
	adds r0, r7, #0
	movs r1, #0
	bl sub_0801BAF8
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0801BFE0
sub_0801BFE0: @ 0x0801BFE0
	push {lr}
	ldr r1, _0801C004 @ =0x04000048
	ldr r2, _0801C008 @ =0x00003F3F
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	subs r2, #0xf
	adds r0, r2, #0
	strh r0, [r1]
	movs r0, #0
	movs r1, #0
	movs r2, #0xf0
	movs r3, #0xa0
	bl sub_0801B87C
	pop {r0}
	bx r0
	.align 2, 0
_0801C004: .4byte 0x04000048
_0801C008: .4byte 0x00003F3F

	thumb_func_start sub_0801C00C
sub_0801C00C: @ 0x0801C00C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	adds r7, r1, #0
	mov r8, r2
	movs r0, #0xa0
	lsls r0, r0, #0x13
	movs r5, #0x80
	lsls r5, r5, #3
	adds r1, r5, #0
	movs r2, #0
	bl sub_08000498
	movs r0, #0xc0
	lsls r0, r0, #0x13
	movs r1, #0xc0
	lsls r1, r1, #9
	movs r2, #0
	bl sub_08000498
	movs r4, #0xe0
	lsls r4, r4, #0x13
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0
	bl sub_08000498
	movs r0, #0
	movs r2, #0x80
	lsls r2, r2, #2
	adds r1, r2, #0
_0801C04C:
	strh r1, [r4]
	adds r4, #8
	adds r0, #1
	cmp r0, #0x7f
	bls _0801C04C
	str r7, [r6, #0x1c]
	cmp r7, #0x25
	bls _0801C060
	movs r0, #0
	str r0, [r6, #0x1c]
_0801C060:
	mov r0, r8
	str r0, [r6, #0x20]
	cmp r0, #1
	bls _0801C06C
	movs r0, #0
	str r0, [r6, #0x20]
_0801C06C:
	ldr r0, _0801C0AC @ =0x087BAF68
	str r0, [r6]
	ldr r0, _0801C0B0 @ =0x087BAF74
	str r0, [r6, #4]
	movs r0, #0x25
	strh r0, [r6, #8]
	ldr r0, _0801C0B4 @ =0x087BB130
	str r0, [r6, #0xc]
	movs r1, #4
	strh r1, [r6, #0x10]
	ldr r0, _0801C0B8 @ =0x087BB160
	str r0, [r6, #0x14]
	strh r1, [r6, #0x18]
	adds r0, r6, #0
	bl sub_0801BCF8
	adds r0, r6, #0
	bl sub_0801BF74
	adds r0, r6, #0
	bl sub_0801BFE0
	movs r1, #0x80
	lsls r1, r1, #0x13
	ldr r2, _0801C0BC @ =0x00003541
	adds r0, r2, #0
	strh r0, [r1]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801C0AC: .4byte 0x087BAF68
_0801C0B0: .4byte 0x087BAF74
_0801C0B4: .4byte 0x087BB130
_0801C0B8: .4byte 0x087BB160
_0801C0BC: .4byte 0x00003541

	thumb_func_start sub_0801C0C0
sub_0801C0C0: @ 0x0801C0C0
	push {r4, r5, lr}
	sub sp, #0x24
	adds r4, r0, #0
	adds r5, r1, #0
	bl sub_08000B84
	mov r0, sp
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_0801C00C
	movs r0, #1
	movs r1, #0
	movs r2, #0x10
	movs r3, #0
	bl sub_0801B7C4
	mov r0, sp
	bl sub_0801BB3C
	movs r0, #0
	movs r1, #1
	movs r2, #0x10
	movs r3, #0
	bl sub_0801B7C4
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r1, [r2]
	ldr r0, _0801C10C @ =0x000080FF
	ands r0, r1
	strh r0, [r2]
	movs r0, #0
	add sp, #0x24
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0801C10C: .4byte 0x000080FF

	thumb_func_start sub_0801C110
sub_0801C110: @ 0x0801C110
	push {lr}
	sub sp, #4
	adds r3, r0, #0
	movs r2, #0
_0801C118:
	mov r1, sp
	adds r0, r1, r2
	adds r1, r3, r2
	ldrb r1, [r1]
	strb r1, [r0]
	adds r2, #1
	cmp r2, #3
	bls _0801C118
	mov r0, sp
	ldrb r0, [r0, #3]
	lsls r0, r0, #0x10
	mov r1, sp
	ldrb r1, [r1, #2]
	lsls r1, r1, #8
	orrs r0, r1
	mov r1, sp
	ldrb r1, [r1, #1]
	orrs r0, r1
	add sp, #4
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0801C144
sub_0801C144: @ 0x0801C144
	push {r4, lr}
	adds r4, r1, #0
	ldr r1, [r0]
	cmp r1, #0
	beq _0801C152
	cmp r4, #0
	bne _0801C156
_0801C152:
	movs r0, #0
	b _0801C190
_0801C156:
	ldrh r3, [r0, #4]
	cmp r3, #1
	bne _0801C166
	ldrh r2, [r0, #6]
	adds r0, r4, #0
	bl sub_080002EC
	b _0801C18E
_0801C166:
	cmp r3, #2
	bne _0801C174
	ldrh r2, [r0, #6]
	adds r0, r4, #0
	bl sub_080002C4
	b _0801C18E
_0801C174:
	cmp r3, #0
	bne _0801C18E
	cmp r2, #0
	bne _0801C186
	adds r0, r1, #0
	adds r1, r4, #0
	bl sub_0803D358
	b _0801C18E
_0801C186:
	adds r0, r1, #0
	adds r1, r4, #0
	bl sub_0803D35C
_0801C18E:
	movs r0, #1
_0801C190:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0801C198
sub_0801C198: @ 0x0801C198
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r4, _0801C20C @ =0xFFFFFDF8
	add sp, r4
	adds r6, r0, #0
	adds r7, r1, #0
	mov sb, r2
	adds r4, r3, #0
	movs r1, #0
	movs r3, #0
	ldr r2, _0801C210 @ =0x000001FF
_0801C1B2:
	mov r5, sp
	adds r0, r5, r1
	strb r3, [r0]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, r2
	bls _0801C1B2
	ldr r0, [r6, #8]
	mov r1, sp
	movs r2, #1
	bl sub_0801C144
	cmp r0, #0
	beq _0801C1DA
	adds r0, r4, #0
	mov r1, sp
	ldr r2, [sp, #0x224]
	bl sub_080002EC
_0801C1DA:
	ldr r0, [r6]
	adds r1, r7, #0
	movs r2, #0
	bl sub_0801C144
	cmp r0, #0
	beq _0801C258
	movs r0, #0xa0
	lsls r0, r0, #0x13
	cmp r4, r0
	bls _0801C258
	lsls r0, r4, #0xf
	lsrs r0, r0, #0x10
	mov r8, r0
	ldr r1, [r6]
	ldrh r0, [r1, #4]
	cmp r0, #0
	bne _0801C214
	ldr r0, [r1]
	bl sub_0801C110
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	b _0801C216
	.align 2, 0
_0801C20C: .4byte 0xFFFFFDF8
_0801C210: .4byte 0x000001FF
_0801C214:
	ldrh r5, [r1, #6]
_0801C216:
	movs r1, #0
	cmp r1, r5
	bhs _0801C258
	add r4, sp, #0x200
_0801C21E:
	adds r2, r7, r1
	movs r3, #0
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	bne _0801C230
	ldrh r0, [r2]
	strh r0, [r4]
	b _0801C238
_0801C230:
	subs r2, #1
	ldrh r0, [r2]
	strh r0, [r4]
	movs r3, #1
_0801C238:
	ldr r0, [sp, #0x228]
	cmp r0, #0x80
	bne _0801C24A
	adds r3, r4, r3
	ldrb r0, [r3]
	cmp r0, #0
	beq _0801C24A
	add r0, r8
	strb r0, [r3]
_0801C24A:
	ldrh r0, [r4]
	strh r0, [r2]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, r5
	blo _0801C21E
_0801C258:
	ldr r0, [r6, #4]
	mov r1, sb
	movs r2, #0
	bl sub_0801C144
	movs r3, #0x82
	lsls r3, r3, #2
	add sp, r3
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0801C274
sub_0801C274: @ 0x0801C274
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r6, _0801C2BC @ =0x087BB898
	ldr r0, [r5]
	lsls r0, r0, #3
	adds r0, r0, r6
	ldr r0, [r0]
	ldr r1, [r5, #4]
	ldr r2, [r5, #8]
	ldr r3, [r5, #0xc]
	movs r4, #0xe0
	str r4, [sp]
	movs r4, #0
	str r4, [sp, #4]
	bl sub_0801C198
	ldr r0, [r5]
	lsls r0, r0, #3
	adds r6, #4
	adds r0, r0, r6
	ldr r0, [r0]
	ldr r1, [r5, #0x10]
	ldr r2, [r5, #0x14]
	ldr r3, [r5, #0x18]
	movs r4, #0xc0
	str r4, [sp]
	movs r4, #0x80
	str r4, [sp, #4]
	bl sub_0801C198
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801C2BC: .4byte 0x087BB898

	thumb_func_start sub_0801C2C0
sub_0801C2C0: @ 0x0801C2C0
	push {r4, lr}
	adds r4, r0, #0
	cmp r2, #0
	bne _0801C2D4
	adds r0, r1, #0
	adds r1, r4, #0
	adds r2, r3, #0
	bl sub_080002EC
	b _0801C2EA
_0801C2D4:
	cmp r2, #1
	bne _0801C2E0
	adds r0, r4, #0
	bl sub_0803D358
	b _0801C2EA
_0801C2E0:
	adds r0, r1, #0
	adds r1, r4, #0
	adds r2, r3, #0
	bl sub_080002C4
_0801C2EA:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0801C2F0
sub_0801C2F0: @ 0x0801C2F0
	push {lr}
	sub sp, #4
	adds r3, r0, #0
	movs r2, #0
_0801C2F8:
	mov r1, sp
	adds r0, r1, r2
	adds r1, r3, r2
	ldrb r1, [r1]
	strb r1, [r0]
	adds r2, #1
	cmp r2, #3
	bls _0801C2F8
	mov r0, sp
	ldrb r0, [r0, #3]
	lsls r0, r0, #0x10
	mov r1, sp
	ldrb r1, [r1, #2]
	lsls r1, r1, #8
	orrs r0, r1
	mov r1, sp
	ldrb r1, [r1, #1]
	orrs r0, r1
	add sp, #4
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0801C324
sub_0801C324: @ 0x0801C324
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	mov r1, sp
	ldrh r0, [r5]
	strh r0, [r1]
	mov r0, sp
	ldrh r1, [r0]
	movs r4, #0x1f
	ands r4, r1
	movs r0, #0xf8
	lsls r0, r0, #2
	ands r0, r1
	lsrs r2, r0, #5
	movs r0, #0xf8
	lsls r0, r0, #7
	ands r0, r1
	lsrs r3, r0, #0xa
	lsls r0, r4, #3
	adds r0, r0, r4
	lsls r1, r0, #4
	adds r0, r0, r1
	lsls r0, r0, #1
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	asrs r0, r0, #0xa
	adds r1, #0x59
	muls r2, r1, r2
	subs r1, #0x59
	adds r2, r2, r1
	asrs r2, r2, #0xa
	movs r1, #0x75
	muls r1, r3, r1
	movs r3, #0x80
	lsls r3, r3, #2
	adds r1, r1, r3
	asrs r1, r1, #0xa
	adds r0, r0, r2
	adds r0, r0, r1
	asrs r1, r0, #2
	asrs r2, r0, #3
	adds r1, r1, r2
	subs r0, r0, r1
	adds r4, r0, #1
	adds r2, r0, #0
	subs r3, r2, #3
	cmp r4, #0
	bge _0801C388
	movs r4, #0
_0801C388:
	cmp r4, #0x1f
	ble _0801C38E
	movs r4, #0x1f
_0801C38E:
	cmp r2, #0
	bge _0801C394
	movs r2, #0
_0801C394:
	cmp r2, #0x1f
	ble _0801C39A
	movs r2, #0x1f
_0801C39A:
	cmp r3, #0
	bge _0801C3A0
	movs r3, #0
_0801C3A0:
	cmp r3, #0x1f
	ble _0801C3A6
	movs r3, #0x1f
_0801C3A6:
	lsls r1, r4, #0x18
	lsrs r1, r1, #0x18
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x13
	orrs r1, r0
	lsls r0, r3, #0x18
	lsrs r0, r0, #0xe
	orrs r1, r0
	mov r0, sp
	strh r1, [r0]
	ldrh r0, [r0]
	strh r0, [r5]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0801C3C8
sub_0801C3C8: @ 0x0801C3C8
	push {lr}
	ldr r0, _0801C3DC @ =0x02000020
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0801C3E0
	movs r0, #0
	b _0801C3E2
	.align 2, 0
_0801C3DC: .4byte 0x02000020
_0801C3E0:
	movs r0, #1
_0801C3E2:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0801C3E8
sub_0801C3E8: @ 0x0801C3E8
	ldr r3, _0801C3F8 @ =0x04000052
	lsls r1, r1, #8
	orrs r1, r0
	strh r1, [r3]
	ldr r0, _0801C3FC @ =0x04000054
	strh r2, [r0]
	bx lr
	.align 2, 0
_0801C3F8: .4byte 0x04000052
_0801C3FC: .4byte 0x04000054

	thumb_func_start sub_0801C400
sub_0801C400: @ 0x0801C400
	push {lr}
	adds r3, r0, #0
	cmp r3, #0
	beq _0801C40E
	ldr r0, _0801C428 @ =0x04000052
	ldrh r0, [r0]
	str r0, [r3]
_0801C40E:
	cmp r1, #0
	beq _0801C41A
	ldr r0, _0801C428 @ =0x04000052
	ldrh r0, [r0]
	lsrs r0, r0, #8
	str r0, [r1]
_0801C41A:
	cmp r2, #0
	beq _0801C424
	ldr r0, _0801C42C @ =0x04000054
	ldrh r0, [r0]
	str r0, [r2]
_0801C424:
	pop {r0}
	bx r0
	.align 2, 0
_0801C428: .4byte 0x04000052
_0801C42C: .4byte 0x04000054

	thumb_func_start sub_0801C430
sub_0801C430: @ 0x0801C430
	ldr r3, _0801C43C @ =0x04000050
	orrs r0, r1
	orrs r0, r2
	strh r0, [r3]
	bx lr
	.align 2, 0
_0801C43C: .4byte 0x04000050

	thumb_func_start sub_0801C440
sub_0801C440: @ 0x0801C440
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	adds r7, r1, #0
	mov r8, r2
	mov sb, r3
	ldr r0, [sp, #0x20]
	mov sl, r0
	movs r1, #0x10
	ldrsh r0, [r6, r1]
	cmp r0, #0
	blt _0801C4AE
	adds r1, r0, #0
	ldrh r0, [r7]
	ldr r5, [r6, #0x14]
	ldr r4, [r6, #0x18]
	subs r4, r4, r5
	lsls r0, r0, #8
	bl sub_0803D7D4
	muls r0, r4, r0
	asrs r0, r0, #8
	adds r0, r0, r5
	mov r1, r8
	strb r0, [r1]
	movs r0, #0x10
	ldrsh r1, [r6, r0]
	ldrh r0, [r7]
	ldr r5, [r6, #0x1c]
	ldr r4, [r6, #0x20]
	subs r4, r4, r5
	lsls r0, r0, #8
	bl sub_0803D7D4
	muls r0, r4, r0
	asrs r0, r0, #8
	adds r0, r0, r5
	mov r1, sb
	strb r0, [r1]
	movs r0, #0x10
	ldrsh r1, [r6, r0]
	ldrh r0, [r7]
	ldr r5, [r6, #0x24]
	ldr r4, [r6, #0x28]
	subs r4, r4, r5
	lsls r0, r0, #8
	bl sub_0803D7D4
	muls r0, r4, r0
	asrs r0, r0, #8
	adds r0, r0, r5
	b _0801C4BC
_0801C4AE:
	ldr r0, [r6, #0x18]
	mov r1, r8
	strb r0, [r1]
	ldr r0, [r6, #0x20]
	mov r1, sb
	strb r0, [r1]
	ldr r0, [r6, #0x28]
_0801C4BC:
	mov r1, sl
	strb r0, [r1]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0801C4D0
sub_0801C4D0: @ 0x0801C4D0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r2, #0
	adds r6, r3, #0
	cmp r1, #0
	beq _0801C4E6
	ldr r0, [r4, #4]
	ldr r1, [r4, #8]
	ldr r2, [r4, #0xc]
	bl sub_0801C430
_0801C4E6:
	adds r0, r5, #0
	adds r1, r6, #0
	ldr r2, [sp, #0x10]
	bl sub_0801C3E8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0801C4F8
sub_0801C4F8: @ 0x0801C4F8
	push {r4, lr}
	lsls r0, r0, #0x18
	lsls r1, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	ldr r4, _0801C51C @ =0x04000040
	lsrs r0, r0, #0x10
	orrs r0, r2
	strh r0, [r4]
	ldr r0, _0801C520 @ =0x04000044
	lsrs r1, r1, #0x10
	orrs r1, r3
	strh r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801C51C: .4byte 0x04000040
_0801C520: .4byte 0x04000044

	thumb_func_start sub_0801C524
sub_0801C524: @ 0x0801C524
	push {lr}
	sub sp, #4
	adds r2, r1, #0
	cmp r0, #0
	bne _0801C536
	mov r1, sp
	movs r3, #0x80
	lsls r3, r3, #1
	b _0801C548
_0801C536:
	cmp r0, #1
	bne _0801C542
	mov r1, sp
	movs r3, #0x80
	lsls r3, r3, #3
	b _0801C548
_0801C542:
	mov r1, sp
	movs r3, #0x80
	lsls r3, r3, #2
_0801C548:
	adds r0, r3, #0
	strh r0, [r1]
	cmp r2, #1
	bne _0801C55E
	movs r2, #0x80
	lsls r2, r2, #0x13
	mov r1, sp
	ldrh r0, [r2]
	ldrh r1, [r1]
	orrs r0, r1
	b _0801C56A
_0801C55E:
	movs r2, #0x80
	lsls r2, r2, #0x13
	mov r0, sp
	ldrh r1, [r0]
	ldrh r0, [r2]
	bics r0, r1
_0801C56A:
	strh r0, [r2]
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0801C574
sub_0801C574: @ 0x0801C574
	push {r4, r5, r6, lr}
	sub sp, #0x24
	adds r5, r1, #0
	adds r6, r2, #0
	cmp r0, #0
	beq _0801C58A
	cmp r0, #1
	bne _0801C58A
	movs r1, #0x14
	movs r4, #0x10
	b _0801C58E
_0801C58A:
	movs r1, #0x1e
	movs r4, #0x14
_0801C58E:
	cmp r0, #0
	bne _0801C59C
	ldr r1, _0801C598 @ =0x04000010
	b _0801C61E
	.align 2, 0
_0801C598: .4byte 0x04000010
_0801C59C:
	cmp r0, #1
	bne _0801C61C
	lsls r0, r1, #3
	movs r1, #2
	bl sub_0803D34C
	lsls r0, r0, #8
	str r0, [sp]
	lsls r0, r4, #3
	movs r1, #2
	bl sub_0803D34C
	lsls r0, r0, #8
	str r0, [sp, #4]
	mov r1, sp
	adds r0, r5, #0
	adds r0, #0x78
	movs r2, #0
	strh r0, [r1, #8]
	adds r0, r6, #0
	adds r0, #0x50
	strh r0, [r1, #0xa]
	mov r0, sp
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r0, #0xc]
	strh r1, [r0, #0xe]
	strh r2, [r0, #0x10]
	add r4, sp, #0x14
	adds r1, r4, #0
	movs r2, #1
	bl sub_0803D344
	ldr r1, _0801C614 @ =0x04000020
	ldrh r0, [r4]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r4, #2]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r4, #4]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r4, #6]
	strh r0, [r1]
	adds r1, #2
	ldr r0, [r4, #8]
	strh r0, [r1]
	adds r1, #2
	ldr r2, _0801C618 @ =0x0FFF0000
	ands r0, r2
	asrs r0, r0, #0x10
	strh r0, [r1]
	adds r1, #2
	ldr r0, [r4, #0xc]
	strh r0, [r1]
	adds r1, #2
	ands r0, r2
	asrs r0, r0, #0x10
	b _0801C626
	.align 2, 0
_0801C614: .4byte 0x04000020
_0801C618: .4byte 0x0FFF0000
_0801C61C:
	ldr r1, _0801C630 @ =0x04000014
_0801C61E:
	rsbs r0, r5, #0
	strh r0, [r1]
	adds r1, #2
	rsbs r0, r6, #0
_0801C626:
	strh r0, [r1]
	add sp, #0x24
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801C630: .4byte 0x04000014

	thumb_func_start sub_0801C634
sub_0801C634: @ 0x0801C634
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	mov r8, r0
	movs r1, #4
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bge _0801C64C
	b _0801C90C
_0801C64C:
	mov r2, r8
	ldr r3, [r2, #0x10]
	cmp r3, #0
	bne _0801C656
	b _0801C90C
_0801C656:
	movs r5, #4
	ldrsh r0, [r2, r5]
	cmp r0, #0
	bne _0801C666
	movs r7, #0
	movs r0, #0x1e
	str r0, [sp, #8]
	b _0801C678
_0801C666:
	cmp r0, #1
	bne _0801C672
	movs r7, #1
	movs r1, #0x1f
	str r1, [sp, #8]
	b _0801C678
_0801C672:
	movs r7, #1
	movs r2, #0x1f
	str r2, [sp, #8]
_0801C678:
	mov r5, r8
	movs r1, #4
	ldrsh r0, [r5, r1]
	cmp r0, #0
	beq _0801C690
	cmp r0, #1
	bne _0801C690
	movs r0, #0x14
	str r0, [sp, #0xc]
	movs r1, #0x10
	str r1, [sp, #0x10]
	b _0801C698
_0801C690:
	movs r2, #0x1e
	str r2, [sp, #0xc]
	movs r5, #0x14
	str r5, [sp, #0x10]
_0801C698:
	mov r0, r8
	ldr r2, [r0, #8]
	cmp r2, #0
	beq _0801C738
	ldrh r0, [r0, #6]
	lsls r0, r0, #1
	movs r1, #0xa0
	lsls r1, r1, #0x13
	adds r0, r0, r1
	mov sb, r0
	mov r1, r8
	movs r3, #4
	ldrsh r0, [r1, r3]
	cmp r0, #0
	beq _0801C6BA
	cmp r0, #2
	bne _0801C6CA
_0801C6BA:
	mov r5, r8
	ldrh r3, [r5, #0xc]
	adds r0, r2, #0
	mov r1, sb
	movs r2, #0
	bl sub_0801C2C0
	b _0801C6D6
_0801C6CA:
	adds r0, r2, #0
	mov r1, sb
	movs r2, #1
	movs r3, #0
	bl sub_0801C2C0
_0801C6D6:
	mov r1, r8
	ldrb r0, [r1, #0x18]
	add r5, sp, #4
	cmp r0, #0
	beq _0801C728
	movs r2, #4
	ldrsh r0, [r1, r2]
	cmp r0, #0
	beq _0801C6EC
	cmp r0, #2
	bne _0801C6F4
_0801C6EC:
	mov r3, r8
	ldrh r0, [r3, #0xc]
	lsrs r6, r0, #1
	b _0801C700
_0801C6F4:
	mov r5, r8
	ldr r0, [r5, #8]
	bl sub_0801C2F0
	lsls r0, r0, #0xf
	lsrs r6, r0, #0x10
_0801C700:
	mov r0, r8
	ldrh r4, [r0, #6]
	adds r0, r4, r6
	add r5, sp, #4
	cmp r4, r0
	bge _0801C728
_0801C70C:
	lsls r0, r4, #1
	movs r1, #0xa0
	lsls r1, r1, #0x13
	adds r0, r0, r1
	bl sub_0801C324
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	mov r2, r8
	ldrh r0, [r2, #6]
	adds r0, r0, r6
	cmp r4, r0
	blt _0801C70C
_0801C728:
	movs r0, #0
	strh r0, [r5]
	movs r1, #0xa0
	lsls r1, r1, #0x13
	ldrh r0, [r5]
	strh r0, [r1]
	mov r5, r8
	ldr r3, [r5, #0x10]
_0801C738:
	lsls r0, r7, #0xe
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r0, r0, r1
	mov sb, r0
	adds r0, r3, #0
	mov r1, sb
	movs r2, #1
	movs r3, #0
	bl sub_0801C2C0
	mov r1, r8
	ldrh r0, [r1, #6]
	cmp r0, #0
	beq _0801C7AA
	ldr r0, [r1, #0x10]
	bl sub_0801C2F0
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	movs r4, #0
	cmp r4, r6
	bhs _0801C7AA
	mov r3, sp
_0801C768:
	mov r2, sb
	adds r1, r2, r4
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0801C788
	ldrh r0, [r1]
	strh r0, [r3]
	ldrb r2, [r3]
	cmp r2, #0
	beq _0801C7A0
	mov r5, r8
	ldrb r0, [r5, #6]
	adds r0, r2, r0
	strb r0, [r3]
	b _0801C79C
_0801C788:
	subs r1, #1
	ldrh r0, [r1]
	strh r0, [r3]
	ldrb r2, [r3, #1]
	cmp r2, #0
	beq _0801C7A0
	mov r5, r8
	ldrb r0, [r5, #6]
	adds r0, r2, r0
	strb r0, [r3, #1]
_0801C79C:
	ldrh r0, [r3]
	strh r0, [r1]
_0801C7A0:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r6
	blo _0801C768
_0801C7AA:
	movs r2, #0
	mov r1, r8
	movs r3, #4
	ldrsh r0, [r1, r3]
	ldrh r1, [r1, #4]
	mov r5, sp
	strh r1, [r5, #0x14]
	mov r3, r8
	ldr r3, [r3, #0x14]
	mov sl, r3
	cmp r0, #1
	bne _0801C828
	movs r5, #0
	lsrs r1, r6, #6
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	mov ip, r1
	cmp r2, r0
	bhs _0801C824
	mov r6, sp
	adds r7, r0, #0
_0801C7D4:
	movs r4, #0
	lsls r0, r5, #6
	mov r2, sb
	adds r1, r2, r0
	ldrh r0, [r1]
	strh r0, [r6]
	ldrb r0, [r6]
	cmp r0, #0
	bne _0801C80C
	ldrb r0, [r6, #1]
	cmp r0, #0
	bne _0801C80C
	adds r3, r1, #0
	mov r2, sp
_0801C7F0:
	adds r0, r4, #2
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0x3f
	bhi _0801C81A
	adds r1, r3, r4
	ldrh r0, [r1]
	strh r0, [r2]
	ldrb r0, [r2]
	cmp r0, #0
	bne _0801C80C
	ldrb r0, [r2, #1]
	cmp r0, #0
	beq _0801C7F0
_0801C80C:
	cmp r4, #0x3f
	bhi _0801C81A
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, r7
	blo _0801C7D4
_0801C81A:
	mov r3, ip
	lsls r0, r3, #0x10
	lsrs r0, r0, #0x10
	cmp r5, r0
	blo _0801C826
_0801C824:
	movs r5, #0
_0801C826:
	adds r2, r5, #0
_0801C828:
	mov r5, sl
	cmp r5, #0
	beq _0801C900
	ldr r1, [sp, #8]
	lsls r0, r1, #0xb
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r0, r0, r1
	mov sb, r0
	mov r3, sp
	ldrh r3, [r3, #0x14]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	beq _0801C84A
	cmp r0, #2
	bne _0801C878
_0801C84A:
	movs r4, #0
	ldr r5, [sp, #0x10]
	cmp r4, r5
	bhs _0801C900
	ldr r5, [sp, #0xc]
_0801C854:
	lsls r0, r4, #6
	add r0, sb
	adds r2, r4, #0
	muls r2, r5, r2
	lsls r2, r2, #1
	mov r3, r8
	ldr r1, [r3, #0x14]
	adds r1, r1, r2
	lsls r2, r5, #1
	bl sub_080002EC
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r0, [sp, #0x10]
	cmp r4, r0
	blo _0801C854
	b _0801C900
_0801C878:
	movs r6, #0
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	lsls r3, r0, #8
	orrs r3, r0
_0801C882:
	movs r2, #0
	adds r7, r6, #1
	lsls r1, r6, #5
_0801C888:
	adds r0, r1, r2
	add r0, sb
	strh r3, [r0]
	adds r0, r2, #2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0x1f
	bls _0801C888
	lsls r0, r7, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0x1f
	bls _0801C882
	movs r4, #0
	movs r6, #0
	ldr r1, [sp, #0x10]
	cmp r6, r1
	bhs _0801C900
	ldr r2, [sp, #0xc]
	mov ip, r2
_0801C8AE:
	movs r2, #0
	adds r7, r6, #1
	cmp r2, ip
	bhs _0801C8F6
	mov r3, sp
	mov r5, sl
_0801C8BA:
	mov r0, sb
	adds r1, r0, r2
	lsls r0, r6, #5
	adds r1, r1, r0
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0801C8D6
	ldrh r0, [r1]
	strh r0, [r3]
	adds r0, r5, r4
	ldrb r0, [r0]
	strb r0, [r3]
	b _0801C8E2
_0801C8D6:
	subs r1, #1
	ldrh r0, [r1]
	strh r0, [r3]
	adds r0, r5, r4
	ldrb r0, [r0]
	strb r0, [r3, #1]
_0801C8E2:
	ldrh r0, [r3]
	strh r0, [r1]
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, ip
	blo _0801C8BA
_0801C8F6:
	lsls r0, r7, #0x10
	lsrs r6, r0, #0x10
	ldr r1, [sp, #0x10]
	cmp r6, r1
	blo _0801C8AE
_0801C900:
	mov r2, r8
	movs r3, #4
	ldrsh r0, [r2, r3]
	movs r1, #1
	bl sub_0801C524
_0801C90C:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0801C91C
sub_0801C91C: @ 0x0801C91C
	push {r4, r5, r6, lr}
	adds r6, r2, #0
	adds r5, r3, #0
	ldr r4, [sp, #0x10]
	ldr r2, [sp, #0x14]
	ldr r0, [r1]
	subs r4, r4, r5
	lsls r0, r0, #8
	adds r1, r2, #0
	bl sub_0803D7D4
	muls r0, r4, r0
	asrs r0, r0, #8
	adds r0, r0, r5
	strh r0, [r6]
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_0801C940
sub_0801C940: @ 0x0801C940
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r6, r1, #0
	movs r1, #8
	ldrsh r0, [r5, r1]
	cmp r0, #0
	blt _0801C998
	movs r4, #0
	movs r7, #0xff
	lsls r7, r7, #8
	mov ip, r7
	movs r0, #0xfe
	lsls r0, r0, #8
	mov r8, r0
_0801C960:
	movs r1, #8
	ldrsh r3, [r5, r1]
	adds r3, r3, r4
	lsls r3, r3, #3
	movs r7, #0xe0
	lsls r7, r7, #0x13
	adds r3, r3, r7
	ldrh r1, [r3]
	mov r0, ip
	ands r0, r1
	ldrb r1, [r5, #0xc]
	orrs r0, r1
	strh r0, [r3]
	lsls r2, r4, #5
	adds r2, r6, r2
	ldrh r0, [r3, #2]
	mov r1, r8
	ands r1, r0
	ldr r7, _0801C9A4 @ =0x000001FF
	adds r0, r7, #0
	ands r2, r0
	orrs r1, r2
	strh r1, [r3, #2]
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #7
	bls _0801C960
_0801C998:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801C9A4: .4byte 0x000001FF

	thumb_func_start sub_0801C9A8
sub_0801C9A8: @ 0x0801C9A8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r5, r0, #0
	adds r6, r1, #0
	movs r1, #8
	ldrsh r0, [r5, r1]
	cmp r0, #0
	blt _0801CA0E
	movs r7, #0xa
	ldrsh r0, [r5, r7]
	cmp r0, #0
	blt _0801CA0E
	movs r4, #0
	mov r2, sp
	ldr r0, _0801C9F8 @ =0x0000FCFF
	mov ip, r0
	movs r1, #0xe0
	lsls r1, r1, #0x13
	mov r8, r1
_0801C9D2:
	movs r7, #8
	ldrsh r0, [r5, r7]
	adds r0, r0, r4
	lsls r0, r0, #3
	mov r1, r8
	adds r3, r0, r1
	ldrh r1, [r3]
	mov r0, ip
	ands r0, r1
	strh r0, [r2]
	cmp r6, #0
	bne _0801C9FC
	ldrh r0, [r2]
	movs r7, #0x80
	lsls r7, r7, #2
	adds r1, r7, #0
	orrs r0, r1
	b _0801C9FE
	.align 2, 0
_0801C9F8: .4byte 0x0000FCFF
_0801C9FC:
	ldrh r0, [r2]
_0801C9FE:
	strh r0, [r2]
	ldrh r0, [r2]
	strh r0, [r3]
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #7
	bls _0801C9D2
_0801CA0E:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0801CA1C
sub_0801CA1C: @ 0x0801CA1C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0xc
	mov r8, r0
	adds r6, r1, #0
	movs r1, #8
	ldrsh r0, [r6, r1]
	cmp r0, #0
	blt _0801CAAC
	movs r3, #0xa
	ldrsh r0, [r6, r3]
	cmp r0, #0
	blt _0801CAAC
	movs r7, #0
_0801CA3A:
	movs r0, #0xa
	ldrsh r4, [r6, r0]
	lsls r5, r7, #4
	adds r4, r4, r5
	lsls r4, r4, #5
	ldr r1, _0801CAB8 @ =0x06010000
	adds r4, r4, r1
	adds r0, r4, #0
	movs r1, #0x80
	lsls r1, r1, #2
	movs r2, #0
	bl sub_08000498
	mov r3, r8
	str r4, [r3, #0x10]
	lsls r0, r7, #3
	ldr r1, [r6, #4]
	adds r1, r1, r0
	mov r0, sp
	movs r2, #8
	bl sub_0803E1A0
	mov r1, sp
	movs r0, #0
	strb r0, [r1, #8]
	mov r0, r8
	movs r1, #0
	movs r2, #0
	mov r3, sp
	bl sub_08009E64
	movs r0, #8
	ldrsh r2, [r6, r0]
	adds r2, r2, r7
	lsls r2, r2, #3
	movs r1, #0xe0
	lsls r1, r1, #0x13
	adds r2, r2, r1
	ldr r3, _0801CABC @ =0x000060A0
	adds r0, r3, #0
	strh r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #8
	adds r0, r1, #0
	strh r0, [r2, #2]
	ldrh r0, [r6, #0xa]
	adds r0, r0, r5
	movs r3, #0x80
	lsls r3, r3, #3
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2, #4]
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #7
	bls _0801CA3A
_0801CAAC:
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801CAB8: .4byte 0x06010000
_0801CABC: .4byte 0x000060A0

	thumb_func_start sub_0801CAC0
sub_0801CAC0: @ 0x0801CAC0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r4, r0, #0
	mov r8, r1
	adds r7, r2, #0
	adds r6, r3, #0
	cmp r1, #0
	beq _0801CAE2
	ldr r5, _0801CB28 @ =0x05000200
	ldr r0, [r4, #0x38]
	ldrh r3, [r4, #0x3c]
	adds r1, r5, #0
	movs r2, #0
	bl sub_0801C2C0
_0801CAE2:
	movs r1, #0
	cmp r6, #0
	bne _0801CAEA
	movs r1, #1
_0801CAEA:
	lsls r1, r1, #0xb
	ldr r0, _0801CB2C @ =0x06010000
	adds r5, r1, r0
	ldr r0, [r4, #0x40]
	adds r4, #0x44
	ldrh r3, [r4]
	adds r1, r5, #0
	movs r2, #2
	bl sub_0801C2C0
	movs r3, #0
	ldrh r0, [r4]
	cmp r3, r0
	bhs _0801CB58
	mov r1, sp
_0801CB08:
	movs r2, #1
	ands r2, r5
	cmp r2, #0
	bne _0801CB30
	ldrh r0, [r5]
	strh r0, [r1]
	ldrb r0, [r1]
	cmp r0, #0
	beq _0801CB4A
	cmp r0, r7
	bls _0801CB4A
	strb r2, [r1]
	ldrh r0, [r1]
	strh r0, [r5]
	b _0801CB4A
	.align 2, 0
_0801CB28: .4byte 0x05000200
_0801CB2C: .4byte 0x06010000
_0801CB30:
	subs r2, r5, #1
	ldrh r0, [r2]
	strh r0, [r1]
	ldrb r0, [r1, #1]
	cmp r0, #0
	beq _0801CB4A
	ldrb r0, [r1, #1]
	cmp r0, r7
	bls _0801CB4A
	movs r0, #0
	strb r0, [r1, #1]
	ldrh r0, [r1]
	strh r0, [r2]
_0801CB4A:
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r5, #1
	ldrh r0, [r4]
	cmp r3, r0
	blo _0801CB08
_0801CB58:
	mov r0, r8
	cmp r0, #0
	beq _0801CB8A
	movs r3, #0
	movs r6, #0xe0
	lsls r6, r6, #0x13
	ldr r0, _0801CB98 @ =0x00006270
	adds r5, r0, #0
	ldr r0, _0801CB9C @ =0x0000C088
	adds r4, r0, #0
	movs r0, #0x80
	lsls r0, r0, #3
	adds r2, r0, #0
_0801CB72:
	lsls r0, r3, #3
	adds r0, r0, r6
	strh r5, [r0]
	strh r4, [r0, #2]
	lsls r1, r3, #6
	orrs r1, r2
	strh r1, [r0, #4]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #1
	bls _0801CB72
_0801CB8A:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801CB98: .4byte 0x00006270
_0801CB9C: .4byte 0x0000C088

	thumb_func_start sub_0801CBA0
sub_0801CBA0: @ 0x0801CBA0
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	mov ip, r1
	ldr r0, [r1]
	movs r6, #0
	cmp r0, #0
	bne _0801CBB0
	movs r6, #1
_0801CBB0:
	lsls r0, r0, #3
	movs r4, #0xe0
	lsls r4, r4, #0x13
	adds r5, r0, r4
	mov r3, sp
	ldrh r1, [r5]
	ldr r2, _0801CBFC @ =0x0000FCFF
	adds r0, r2, #0
	ands r0, r1
	strh r0, [r3]
	mov r0, sp
	ldrh r0, [r0]
	movs r7, #0x80
	lsls r7, r7, #2
	adds r1, r7, #0
	orrs r0, r1
	strh r0, [r3]
	mov r0, sp
	ldrh r0, [r0]
	strh r0, [r5]
	lsls r0, r6, #3
	adds r5, r0, r4
	mov r1, sp
	ldrh r0, [r5]
	ands r2, r0
	strh r2, [r1]
	mov r0, sp
	ldrh r0, [r0]
	strh r0, [r1]
	mov r0, sp
	ldrh r0, [r0]
	strh r0, [r5]
	mov r0, ip
	str r6, [r0]
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801CBFC: .4byte 0x0000FCFF

	thumb_func_start sub_0801CC00
sub_0801CC00: @ 0x0801CC00
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	ldr r7, [sp, #0x14]
	ldr r4, [r3]
	cmp r4, #2
	beq _0801CC58
	cmp r4, #0
	bne _0801CC2A
	adds r0, #0x6a
	ldrh r1, [r0]
	ldr r0, _0801CC60 @ =0x0000207A
	cmp r1, r0
	bls _0801CC2A
	str r4, [r6]
	movs r0, #0x80
	lsls r0, r0, #1
	str r0, [r2]
	movs r0, #1
	str r0, [r3]
	str r4, [r7]
_0801CC2A:
	ldr r0, [r3]
	cmp r0, #1
	bne _0801CC58
	ldrh r4, [r5, #0x3c]
	lsrs r4, r4, #1
	ldr r0, [r6]
	lsls r0, r0, #8
	movs r1, #0xb4
	lsls r1, r1, #8
	bl sub_0803D7D4
	muls r0, r4, r0
	asrs r0, r0, #8
	strh r0, [r5, #0x3e]
	ldr r0, [r6]
	cmp r0, #0
	beq _0801CC58
	ldrh r2, [r5, #0x3e]
	ldr r3, [r7]
	adds r0, r5, #0
	movs r1, #0
	bl sub_0801CAC0
_0801CC58:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801CC60: .4byte 0x0000207A

	thumb_func_start sub_0801CC64
sub_0801CC64: @ 0x0801CC64
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	mov r8, r3
	ldr r7, [sp, #0x18]
	ldr r0, [r3]
	cmp r0, #1
	bne _0801CCBA
	ldr r0, [r5]
	cmp r0, #0
	bne _0801CC8C
	ldrh r2, [r4, #0x3e]
	ldr r3, [r7]
	adds r0, r4, #0
	movs r1, #1
	bl sub_0801CAC0
_0801CC8C:
	ldr r0, [r5]
	ldr r1, [r6]
	adds r0, r0, r1
	str r0, [r5]
	movs r6, #0xb4
	lsls r6, r6, #8
	cmp r0, r6
	bls _0801CCB2
	ldrh r2, [r4, #0x3c]
	lsrs r2, r2, #1
	ldr r3, [r7]
	adds r0, r4, #0
	movs r1, #0
	bl sub_0801CAC0
	str r6, [r5]
	movs r0, #2
	mov r1, r8
	str r0, [r1]
_0801CCB2:
	adds r0, r4, #0
	adds r1, r7, #0
	bl sub_0801CBA0
_0801CCBA:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0801CCC4
sub_0801CCC4: @ 0x0801CCC4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	str r1, [sp, #4]
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	ldr r1, [r3]
	cmp r1, #2
	bne _0801CCDE
	b _0801CEDA
_0801CCDE:
	ldr r7, [r0, #0x34]
	cmp r1, #0
	beq _0801CCE6
	b _0801CE1A
_0801CCE6:
	adds r0, #0x6a
	ldrh r1, [r0]
	ldr r0, [r7]
	cmp r1, r0
	bge _0801CCF2
	b _0801CE1A
_0801CCF2:
	ldrh r0, [r7, #0xc]
	mov sb, r0
	ldrh r1, [r7, #0xe]
	cmp sb, r1
	bls _0801CCFE
	b _0801CE06
_0801CCFE:
	mov r8, sp
	movs r2, #0x1f
	mov ip, r2
	ldr r3, _0801CEB0 @ =0xFFFFF8E4
	mov sl, r3
_0801CD08:
	mov r5, sb
	lsls r1, r5, #1
	ldr r0, [r7, #8]
	adds r1, r1, r0
	lsls r6, r5, #2
	ldr r5, [r7, #0x10]
	adds r5, r6, r5
	ldr r2, [r7, #0x1c]
	adds r2, r6, r2
	ldr r4, [r7, #0x28]
	adds r4, r6, r4
	ldrh r0, [r1]
	mov r1, r8
	strh r0, [r1]
	ldrh r1, [r1]
	mov r0, ip
	ands r0, r1
	str r0, [r5]
	mov r3, r8
	ldrh r1, [r3]
	movs r0, #0xf8
	lsls r0, r0, #2
	ands r0, r1
	lsrs r0, r0, #5
	str r0, [r2]
	ldrh r0, [r3]
	movs r3, #0xf8
	lsls r3, r3, #7
	ands r3, r0
	lsrs r3, r3, #0xa
	str r3, [r4]
	ldr r0, [r5]
	ldr r1, [r2]
	lsls r2, r0, #3
	adds r2, r2, r0
	lsls r0, r2, #4
	adds r2, r2, r0
	lsls r2, r2, #1
	movs r5, #0x80
	lsls r5, r5, #2
	adds r2, r2, r5
	asrs r2, r2, #0xa
	ldr r0, _0801CEB4 @ =0x00000259
	muls r1, r0, r1
	adds r1, r1, r5
	asrs r1, r1, #0xa
	movs r0, #0x75
	muls r0, r3, r0
	adds r0, r0, r5
	asrs r0, r0, #0xa
	adds r2, r2, r1
	adds r2, r2, r0
	asrs r0, r2, #2
	asrs r1, r2, #3
	adds r0, r0, r1
	subs r2, r2, r0
	ldr r0, [r7, #0x14]
	adds r3, r6, r0
	ldr r0, [r7, #0x20]
	adds r4, r6, r0
	ldr r0, [r7, #0x2c]
	adds r6, r6, r0
	adds r0, r2, #1
	str r0, [r3]
	mov r1, sl
	lsls r0, r1, #1
	add r0, sl
	lsls r0, r0, #2
	subs r0, r0, r1
	lsls r0, r0, #5
	movs r5, #0x80
	lsls r5, r5, #0xc
	adds r0, r0, r5
	asrs r0, r0, #0x14
	ldr r1, _0801CEB8 @ =0x000002DB
	ldr r5, _0801CEBC @ =0x000002DA
	muls r1, r5, r1
	movs r5, #0x80
	lsls r5, r5, #0xc
	adds r1, r1, r5
	asrs r1, r1, #0x14
	subs r0, r2, r0
	subs r0, r0, r1
	str r0, [r4]
	ldr r0, _0801CEC0 @ =0x00000717
	mov r1, sl
	muls r1, r0, r1
	adds r0, r1, #0
	adds r0, r0, r5
	asrs r0, r0, #0x14
	adds r2, r2, r0
	str r2, [r6]
	ldr r0, [r3]
	cmp r0, #0
	bge _0801CDCA
	movs r2, #0
	str r2, [r3]
_0801CDCA:
	ldr r0, [r3]
	cmp r0, #0x1f
	ble _0801CDD4
	mov r5, ip
	str r5, [r3]
_0801CDD4:
	ldr r0, [r4]
	cmp r0, #0
	bge _0801CDDE
	movs r0, #0
	str r0, [r4]
_0801CDDE:
	ldr r0, [r4]
	cmp r0, #0x1f
	ble _0801CDE8
	mov r1, ip
	str r1, [r4]
_0801CDE8:
	ldr r0, [r6]
	cmp r0, #0
	bge _0801CDF2
	movs r2, #0
	str r2, [r6]
_0801CDF2:
	ldr r0, [r6]
	cmp r0, #0x1f
	ble _0801CDFC
	mov r3, ip
	str r3, [r6]
_0801CDFC:
	movs r5, #1
	add sb, r5
	ldrh r0, [r7, #0xe]
	cmp sb, r0
	bls _0801CD08
_0801CE06:
	movs r0, #0
	ldr r1, [sp, #4]
	str r0, [r1]
	movs r0, #0xc0
	lsls r0, r0, #3
	ldr r2, [sp, #8]
	str r0, [r2]
	movs r0, #1
	ldr r3, [sp, #0xc]
	str r0, [r3]
_0801CE1A:
	ldr r5, [sp, #0xc]
	ldr r0, [r5]
	cmp r0, #1
	bne _0801CEDA
	ldrh r0, [r7, #0xc]
	mov sb, r0
	ldrh r1, [r7, #0xe]
	cmp sb, r1
	bhi _0801CEDA
_0801CE2C:
	ldr r2, [r7, #0x10]
	mov r8, r2
	mov r3, sb
	lsls r1, r3, #2
	add r8, r1
	ldr r6, [r7, #0x1c]
	adds r6, r1, r6
	ldr r5, [r7, #0x28]
	adds r5, r1, r5
	ldr r4, [r7, #0x14]
	adds r4, r1, r4
	ldr r3, [r7, #0x20]
	adds r3, r1, r3
	ldr r2, [r7, #0x2c]
	adds r2, r1, r2
	ldr r0, [r7, #0x18]
	adds r0, r0, r1
	mov sl, r0
	ldr r0, [r7, #0x24]
	adds r0, r1, r0
	str r0, [sp, #0x10]
	ldr r0, [r7, #0x30]
	adds r1, r1, r0
	str r1, [sp, #0x14]
	mov r0, r8
	ldr r0, [r0]
	mov r8, r0
	ldr r6, [r6]
	ldr r5, [r5]
	str r5, [sp, #0x18]
	ldr r4, [r4]
	ldr r5, [r3]
	ldr r2, [r2]
	ldr r1, [r7, #4]
	ldr r3, [sp, #4]
	ldr r0, [r3]
	cmp r1, #0
	ble _0801CEC4
	mov r3, r8
	subs r4, r4, r3
	lsls r0, r0, #8
	str r2, [sp, #0x1c]
	bl sub_0803D7D4
	adds r1, r4, #0
	muls r1, r0, r1
	asrs r1, r1, #8
	add r1, r8
	mov r3, sl
	str r1, [r3]
	subs r1, r5, r6
	muls r1, r0, r1
	asrs r1, r1, #8
	adds r1, r1, r6
	ldr r5, [sp, #0x10]
	str r1, [r5]
	ldr r2, [sp, #0x1c]
	ldr r3, [sp, #0x18]
	subs r1, r2, r3
	muls r0, r1, r0
	asrs r0, r0, #8
	adds r0, r0, r3
	ldr r5, [sp, #0x14]
	str r0, [r5]
	b _0801CED0
	.align 2, 0
_0801CEB0: .4byte 0xFFFFF8E4
_0801CEB4: .4byte 0x00000259
_0801CEB8: .4byte 0x000002DB
_0801CEBC: .4byte 0x000002DA
_0801CEC0: .4byte 0x00000717
_0801CEC4:
	mov r0, sl
	str r4, [r0]
	ldr r1, [sp, #0x10]
	str r5, [r1]
	ldr r3, [sp, #0x14]
	str r2, [r3]
_0801CED0:
	movs r5, #1
	add sb, r5
	ldrh r0, [r7, #0xe]
	cmp sb, r0
	bls _0801CE2C
_0801CEDA:
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0801CEEC
sub_0801CEEC: @ 0x0801CEEC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r4, r0, #0
	mov r8, r1
	mov ip, r2
	mov sl, r3
	ldr r0, [r3]
	cmp r0, #1
	bne _0801CFB2
	ldr r6, [r4, #0x34]
	ldrh r5, [r6, #0xc]
	ldr r0, [r2]
	mov sb, r0
	ldrh r1, [r6, #0xe]
	cmp r5, r1
	bhi _0801CF46
	mov r7, sp
_0801CF16:
	ldr r1, [r6, #0x18]
	lsls r3, r5, #2
	adds r1, r3, r1
	ldr r2, [r6, #0x24]
	adds r2, r3, r2
	ldr r0, [r6, #0x30]
	adds r3, r3, r0
	lsls r4, r5, #1
	ldr r0, [r6, #8]
	adds r4, r4, r0
	ldrb r1, [r1]
	ldrb r0, [r2]
	lsls r0, r0, #5
	orrs r1, r0
	ldrb r0, [r3]
	lsls r0, r0, #0xa
	orrs r1, r0
	strh r1, [r7]
	ldrh r0, [r7]
	strh r0, [r4]
	adds r5, #1
	ldrh r0, [r6, #0xe]
	cmp r5, r0
	bls _0801CF16
_0801CF46:
	mov r1, r8
	ldr r0, [r1]
	add r0, sb
	str r0, [r1]
	mov r1, ip
	ldr r0, [r1]
	lsrs r1, r0, #5
	subs r0, r0, r1
	mov r1, ip
	str r0, [r1]
	cmp r0, #0x1f
	bhi _0801CF62
	movs r0, #0x20
	str r0, [r1]
_0801CF62:
	mov r1, r8
	ldr r0, [r1]
	movs r1, #0xb4
	lsls r1, r1, #8
	cmp r0, r1
	bls _0801CFB2
	mov r0, r8
	str r1, [r0]
	ldrh r5, [r6, #0xc]
	ldrh r1, [r6, #0xe]
	cmp r5, r1
	bhi _0801CFAC
	mov r7, sp
_0801CF7C:
	ldr r1, [r6, #0x14]
	lsls r3, r5, #2
	adds r1, r3, r1
	ldr r2, [r6, #0x20]
	adds r2, r3, r2
	ldr r0, [r6, #0x2c]
	adds r3, r3, r0
	lsls r4, r5, #1
	ldr r0, [r6, #8]
	adds r4, r4, r0
	ldrb r1, [r1]
	ldrb r0, [r2]
	lsls r0, r0, #5
	orrs r1, r0
	ldrb r0, [r3]
	lsls r0, r0, #0xa
	orrs r1, r0
	strh r1, [r7]
	ldrh r0, [r7]
	strh r0, [r4]
	adds r5, #1
	ldrh r0, [r6, #0xe]
	cmp r5, r0
	bls _0801CF7C
_0801CFAC:
	movs r0, #2
	mov r1, sl
	str r0, [r1]
_0801CFB2:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0801CFC4
sub_0801CFC4: @ 0x0801CFC4
	push {r4, r5, r6, r7, lr}
	adds r3, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	ldr r0, [r7]
	cmp r0, #2
	beq _0801D028
	adds r0, r3, #0
	adds r0, #0x6a
	ldrh r0, [r0]
	cmp r0, #0x1d
	bls _0801CFE0
	movs r0, #1
	str r0, [r7]
_0801CFE0:
	ldr r0, [r7]
	cmp r0, #1
	bne _0801D028
	ldr r0, [r6]
	lsls r0, r0, #8
	movs r1, #0x10
	bl sub_0803D7D4
	adds r4, r0, #0
	lsls r4, r4, #4
	ldr r0, [r6]
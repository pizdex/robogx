.include "asm/macro.inc"
.syntax unified

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
	ldr r0, _080008B4 @ =gUnknown_02000038
	ldr r1, _080008B8 @ =0x0400010C
	ldrh r1, [r1]
	strh r1, [r0]
	bx lr
	.align 2, 0
_080008B4: .4byte gUnknown_02000038
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
	ldr r1, _08000904 @ =gUnknown_03000B54
	str r0, [r1]
	bx lr
	.align 2, 0
_08000904: .4byte gUnknown_03000B54

	thumb_func_start sub_08000908
sub_08000908: @ 0x08000908
	push {lr}
	bl sub_08002A38
	bl sub_0800142C
	ldr r0, _08000968 @ =gUnknown_03000B54
	ldr r0, [r0]
	cmp r0, #0
	beq _0800091E
	bl sub_0803D798
_0800091E:
	ldr r1, _0800096C @ =gUnknown_0300136C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _08000970 @ =gUnknown_02000024
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
	bl SoftReset
_0800095C:
	ldr r1, _08000980 @ =gUnknown_03007FF8
	movs r0, #1
	strh r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_08000968: .4byte gUnknown_03000B54
_0800096C: .4byte gUnknown_0300136C
_08000970: .4byte gUnknown_02000024
_08000974: .4byte 0x04000130
_08000978: .4byte 0x000003FF
_0800097C: .4byte 0x04000050
_08000980: .4byte gUnknown_03007FF8

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
	ldr r0, _080009F4 @ =gUnknown_02000024
	movs r6, #1
	strh r6, [r0]
	ldr r3, _080009F8 @ =sub_080000F0
	ldr r0, _080009FC @ =0x08000540
	subs r0, r0, r3
	ldr r1, _08000A00 @ =gUnknown_03002BF0
	lsrs r2, r0, #2
	ldr r5, _08000A04 @ =0x001FFFFF
	ands r2, r5
	movs r4, #0x80
	lsls r4, r4, #0x13
	orrs r2, r4
	adds r0, r3, #0
	bl CpuSet
	ldr r3, _08000A08 @ =0x08001A18
	ldr r0, _08000A0C @ =0x080023D4
	subs r0, r0, r3
	ldr r1, _08000A10 @ =gUnknown_03003040
	lsrs r2, r0, #2
	ands r2, r5
	orrs r2, r4
	adds r0, r3, #0
	bl CpuSet
	ldr r1, _08000A14 @ =gUnknown_03007FFC
	ldr r0, _080009F8 @ =sub_080000F0
	str r0, [r1]
	ldr r0, _08000A18 @ =gUnknown_0300136C
	movs r1, #0
	str r1, [r0]
	ldr r0, _08000A1C @ =gUnknown_03000B54
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
_080009F4: .4byte gUnknown_02000024
_080009F8: .4byte sub_080000F0
_080009FC: .4byte 0x08000540
_08000A00: .4byte gUnknown_03002BF0
_08000A04: .4byte 0x001FFFFF
_08000A08: .4byte 0x08001A18
_08000A0C: .4byte 0x080023D4
_08000A10: .4byte gUnknown_03003040
_08000A14: .4byte gUnknown_03007FFC
_08000A18: .4byte gUnknown_0300136C
_08000A1C: .4byte gUnknown_03000B54
_08000A20: .4byte 0x04000004
_08000A24: .4byte 0x00000A28
_08000A28: .4byte 0x04000200
_08000A2C: .4byte 0x00003005
_08000A30: .4byte 0x04000208

	thumb_func_start sub_08000A34
sub_08000A34: @ 0x08000A34
	ldr r0, _08000A50 @ =gUnknown_08043864
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
_08000A50: .4byte gUnknown_08043864
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
	ldr r0, _08000AE0 @ =gUnknown_03007700
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
_08000AE0: .4byte gUnknown_03007700
_08000AE4: .4byte 0x040000D4
_08000AE8: .4byte 0x85010000
_08000AEC: .4byte 0x04000204
_08000AF0: .4byte 0x00004014

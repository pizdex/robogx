.include "asm/gba_constants.inc"
.include "asm/macro.inc"
.syntax unified

	thumb_func_start sub_08000A34
sub_08000A34: @ 0x08000A34
	ldr r0, _08000A50 @ =gUnknown_08043864
	movs r3, #0xc0
	lsls r3, r3, #0x12
	ldr r1, _08000A54 @ =0x00000748
	ldr r2, _08000A58 @ =REG_DMA3SAD_L
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
_08000A58: .4byte REG_DMA3SAD_L

	thumb_func_start sub_08000A5C
sub_08000A5C: @ 0x08000A5C
	push {r4, lr}
	sub sp, #4
	ldr r1, _08000ADC @ =REG_BLDCNT
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
	ldr r2, _08000AE4 @ =REG_DMA3SAD_L
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
	ldr r1, _08000AEC @ =REG_WAITCNT
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
	bl srand
	bl sub_080005B4
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08000ADC: .4byte REG_BLDCNT
_08000AE0: .4byte gUnknown_03007700
_08000AE4: .4byte REG_DMA3SAD_L
_08000AE8: .4byte 0x85010000
_08000AEC: .4byte REG_WAITCNT
_08000AF0: .4byte 0x00004014

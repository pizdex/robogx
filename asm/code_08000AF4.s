.include "asm/gba_constants.inc"
.include "asm/macro.inc"
.syntax unified

	thumb_func_start sub_080012B8
sub_080012B8: @ 0x080012B8
	push {r4, r5, lr}
	ldr r5, _0800131C @ =gUnknown_03000B60
	ldr r1, _08001320 @ =0x00000804
	adds r0, r5, #0
	movs r2, #0
	bl sub_08000498
	ldr r1, _08001324 @ =sub_08001FF4
	ldr r2, _08001328 @ =0x08001A18
	subs r1, r1, r2
	ldr r0, _0800132C @ =gUnknown_03003040
	adds r1, r1, r0
	ldr r4, _08001330 @ =sub_08002340
	subs r4, r4, r2
	adds r4, r4, r0
	adds r0, r5, #0
	bl _call_via_r1
	adds r0, r5, #0
	bl _call_via_r4
	ldr r0, _08001334 @ =gUnknown_03000B58
	movs r1, #0
	str r1, [r0]
	ldr r0, _08001338 @ =gUnknown_03001364
	str r1, [r0]
	ldr r0, _0800133C @ =gUnknown_03001368
	str r1, [r0]
	ldr r0, _08001340 @ =gUnknown_03000B50
	str r1, [r0]
	ldr r2, _08001344 @ =REG_RCNT
	movs r3, #0x80
	lsls r3, r3, #8
	adds r0, r3, #0
	strh r0, [r2]
	ldr r0, _08001348 @ =REG_TM2CNT_H
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
_0800131C: .4byte gUnknown_03000B60
_08001320: .4byte 0x00000804
_08001324: .4byte sub_08001FF4
_08001328: .4byte 0x08001A18
_0800132C: .4byte gUnknown_03003040
_08001330: .4byte sub_08002340
_08001334: .4byte gUnknown_03000B58
_08001338: .4byte gUnknown_03001364
_0800133C: .4byte gUnknown_03001368
_08001340: .4byte gUnknown_03000B50
_08001344: .4byte REG_RCNT
_08001348: .4byte REG_TM2CNT_H

	thumb_func_start sub_0800134C
sub_0800134C: @ 0x0800134C
	ldr r2, _0800138C @ =gUnknown_03000B60
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
	ldr r0, _08001390 @ =gUnknown_03000B58
	str r1, [r0]
	ldr r0, _08001394 @ =gUnknown_03001364
	str r1, [r0]
	ldr r0, _08001398 @ =gUnknown_03001368
	str r1, [r0]
	ldr r0, _0800139C @ =gUnknown_03000B50
	str r1, [r0]
	ldr r2, _080013A0 @ =REG_RCNT
	movs r3, #0x80
	lsls r3, r3, #8
	adds r0, r3, #0
	strh r0, [r2]
	ldr r0, _080013A4 @ =REG_TM2CNT_H
	strh r1, [r0]
	bx lr
	.align 2, 0
_0800138C: .4byte gUnknown_03000B60
_08001390: .4byte gUnknown_03000B58
_08001394: .4byte gUnknown_03001364
_08001398: .4byte gUnknown_03001368
_0800139C: .4byte gUnknown_03000B50
_080013A0: .4byte REG_RCNT
_080013A4: .4byte REG_TM2CNT_H

	thumb_func_start sub_080013A8
sub_080013A8: @ 0x080013A8
	push {r4, r5, lr}
	ldr r5, _080013E4 @ =gUnknown_03000B60
	ldr r0, _080013E8 @ =gUnknown_03000B58
	movs r4, #0
	str r4, [r0]
	ldr r0, _080013EC @ =gUnknown_03001364
	str r4, [r0]
	ldr r0, _080013F0 @ =gUnknown_03000B50
	str r4, [r0]
	ldr r0, _080013F4 @ =gUnknown_03001368
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
_080013E4: .4byte gUnknown_03000B60
_080013E8: .4byte gUnknown_03000B58
_080013EC: .4byte gUnknown_03001364
_080013F0: .4byte gUnknown_03000B50
_080013F4: .4byte gUnknown_03001368

	thumb_func_start sub_080013F8
sub_080013F8: @ 0x080013F8
	push {lr}
	ldr r1, _08001420 @ =gUnknown_03000B58
	ldr r0, [r1]
	cmp r0, #1
	beq _08001408
	ldr r0, [r1]
	cmp r0, #2
	bne _0800141A
_08001408:
	ldr r1, _08001424 @ =gUnknown_03000B60
	ldr r2, _08001428 @ =gUnknown_03001364
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
_08001420: .4byte gUnknown_03000B58
_08001424: .4byte gUnknown_03000B60
_08001428: .4byte gUnknown_03001364

	thumb_func_start sub_0800142C
sub_0800142C: @ 0x0800142C
	push {r4, r5, lr}
	ldr r4, _08001454 @ =gUnknown_03000B60
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
_08001454: .4byte gUnknown_03000B60
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
	ldr r1, _08001538 @ =REG_RCNT
	movs r5, #0x80
	lsls r5, r5, #8
	adds r0, r5, #0
	strh r0, [r1]
	ldr r0, _0800153C @ =REG_TM2CNT_H
	strh r2, [r0]
	ldr r1, _08001540 @ =gUnknown_03000B58
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
_08001538: .4byte REG_RCNT
_0800153C: .4byte REG_TM2CNT_H
_08001540: .4byte gUnknown_03000B58
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
	ldr r1, _08001588 @ =REG_RCNT
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
_08001588: .4byte REG_RCNT
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
	ldr r1, _080017D4 @ =REG_SIOMLT_SEND
	strh r0, [r1]
	subs r1, #2
	ldr r3, _080017D8 @ =0x00002083
	adds r0, r3, #0
	strh r0, [r1]
	b _080019E6
	.align 2, 0
_080017D0: .4byte 0x00000123
_080017D4: .4byte REG_SIOMLT_SEND
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
	ldr r0, _08001828 @ =gUnknown_03000B50
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
	ldr r0, _0800182C @ =gUnknown_03000B58
	str r1, [r0]
	ldr r0, _08001830 @ =gUnknown_03001364
	str r1, [r0]
	b _080019E6
	.align 2, 0
_08001828: .4byte gUnknown_03000B50
_0800182C: .4byte gUnknown_03000B58
_08001830: .4byte gUnknown_03001364
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
	ldr r1, _0800191C @ =REG_SIOMLT_SEND
	strh r0, [r1]
	b _080019E6
	.align 2, 0
_08001918: .4byte 0x00001234
_0800191C: .4byte REG_SIOMLT_SEND
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
	ldr r1, _08001958 @ =REG_RCNT
	movs r0, #0
	strh r0, [r1]
	ldr r0, _0800195C @ =REG_SIOCNT
	strh r2, [r0]
	movs r0, #0xcb
	lsls r0, r0, #2
	adds r1, r4, r0
	movs r0, #0x19
	str r0, [r1]
	b _080019E6
	.align 2, 0
_08001954: .4byte 0x00006003
_08001958: .4byte REG_RCNT
_0800195C: .4byte REG_SIOCNT
_08001960:
	ldr r0, _08001974 @ =gUnknown_03000B50
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
_08001974: .4byte gUnknown_03000B50
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
	ldr r1, _0800199C @ =gUnknown_03000B58
	movs r0, #2
	str r0, [r1]
	b _080019E6
	.align 2, 0
_0800199C: .4byte gUnknown_03000B58
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
	ldr r0, _08001A14 @ =gUnknown_03003040
	adds r1, r1, r0
	adds r0, r4, #0
	bl _call_via_r1
_08001A04:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08001A0C: .4byte sub_08001D40
_08001A10: .4byte 0x08001A18
_08001A14: .4byte gUnknown_03003040

	.global gRamCodeBlock2Start
gRamCodeBlock2Start:

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
	ldr r2, _08001A44 @ =gUnknown_03000B60
	movs r0, #0xe1
	lsls r0, r0, #2
	adds r3, r2, r0
	ldr r0, _08001A48 @ =gUnknown_03000B50
	ldr r0, [r0]
	cmp r0, #0
	beq _08001A4C
	movs r0, #1
	rsbs r0, r0, #0
	b _08001AD0
	.align 2, 0
_08001A44: .4byte gUnknown_03000B60
_08001A48: .4byte gUnknown_03000B50
_08001A4C:
	ldr r0, _08001A58 @ =gUnknown_03001364
	ldr r0, [r0]
	cmp r0, #0
	bne _08001A5C
	movs r0, #0
	b _08001AD0
	.align 2, 0
_08001A58: .4byte gUnknown_03001364
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
	ldr r2, _08001ADC @ =REG_IME
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
_08001ADC: .4byte REG_IME

	thumb_func_start sub_08001AE0
sub_08001AE0: @ 0x08001AE0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov ip, r0
	mov sb, r1
	ldr r1, _08001B08 @ =gUnknown_03000B60
	movs r0, #0xe1
	lsls r0, r0, #2
	adds r2, r1, r0
	movs r0, #0
	mov r3, ip
	str r0, [r3]
	ldr r0, _08001B0C @ =gUnknown_03000B50
	ldr r0, [r0]
	cmp r0, #0
	beq _08001B10
	movs r0, #1
	rsbs r0, r0, #0
	b _08001BC4
	.align 2, 0
_08001B08: .4byte gUnknown_03000B60
_08001B0C: .4byte gUnknown_03000B50
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
	ldr r2, _08001BAC @ =REG_IME
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
	ldr r1, _08001BB4 @ =gUnknown_03000B58
	movs r0, #0
	str r0, [r1]
	b _08001BC4
	.align 2, 0
_08001BA8: .4byte 0x0000789A
_08001BAC: .4byte REG_IME
_08001BB0: .4byte 0x00009ABC
_08001BB4: .4byte gUnknown_03000B58
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
	ldr r0, _08001BF0 @ =gUnknown_03000B60
	movs r1, #0xf8
	lsls r1, r1, #3
	adds r5, r0, r1
	ldr r0, _08001BF4 @ =gUnknown_03000B50
	ldr r0, [r0]
	cmp r0, #0
	bne _08001C50
	ldr r0, _08001BF8 @ =gUnknown_03001364
	ldr r0, [r0]
	cmp r0, #0
	bne _08001BFC
	movs r0, #0
	b _08001C54
	.align 2, 0
_08001BF0: .4byte gUnknown_03000B60
_08001BF4: .4byte gUnknown_03000B50
_08001BF8: .4byte gUnknown_03001364
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
	ldr r1, _08001C44 @ =REG_IME
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
_08001C44: .4byte REG_IME
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
	ldr r1, _08001C90 @ =gUnknown_03000B60
	movs r0, #0xf8
	lsls r0, r0, #3
	adds r0, r0, r1
	mov r8, r0
	movs r0, #0
	mov r2, sl
	str r0, [r2]
	ldr r0, _08001C94 @ =gUnknown_03000B50
	ldr r0, [r0]
	mov sb, r0
	cmp r0, #0
	beq _08001C98
	movs r0, #1
	rsbs r0, r0, #0
	b _08001D30
	.align 2, 0
_08001C90: .4byte gUnknown_03000B60
_08001C94: .4byte gUnknown_03000B50
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
	ldr r0, _08001CB8 @ =gUnknown_03000B58
	mov r1, ip
	str r1, [r0]
	movs r0, #0
	b _08001D30
	.align 2, 0
_08001CB8: .4byte gUnknown_03000B58
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
	ldr r1, _08001D10 @ =REG_IME
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
_08001D10: .4byte REG_IME
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
	ldr r0, _08001D94 @ =REG_SIOMLT_SEND
	strh r2, [r0]
	ldr r1, _08001D98 @ =REG_SIOCNT
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
_08001D94: .4byte REG_SIOMLT_SEND
_08001D98: .4byte REG_SIOCNT
_08001D9C: .4byte 0x00002083
_08001DA0: .4byte 0x000007DC
_08001DA4:
	ldr r2, _08001DD4 @ =0x0000789A
	ldr r0, _08001DD8 @ =REG_SIOMLT_SEND
	strh r2, [r0]
	ldr r1, _08001DDC @ =REG_SIOCNT
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
_08001DD8: .4byte REG_SIOMLT_SEND
_08001DDC: .4byte REG_SIOCNT
_08001DE0: .4byte 0x00002083
_08001DE4: .4byte 0x000007DC
_08001DE8: .4byte 0x000007BC
_08001DEC:
	ldr r2, _08001E2C @ =0x00009ABC
	ldr r0, _08001E30 @ =REG_SIOMLT_SEND
	strh r2, [r0]
	ldr r1, _08001E34 @ =REG_SIOCNT
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
_08001E30: .4byte REG_SIOMLT_SEND
_08001E34: .4byte REG_SIOCNT
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
	ldr r1, _08001E64 @ =REG_TM2CNT
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
_08001E64: .4byte REG_TM2CNT
_08001E68: .4byte 0x00C0D4B0

	thumb_func_start sub_08001E6C
sub_08001E6C: @ 0x08001E6C
	movs r1, #0xfd
	lsls r1, r1, #3
	adds r2, r0, r1
	ldr r1, [r2]
	ldm r1!, {r3}
	str r1, [r2]
	ldr r1, _08001E8C @ =REG_SIOMLT_SEND
	strh r3, [r1]
	ldr r2, _08001E90 @ =REG_SIOCNT
	ldr r3, _08001E94 @ =0x00002083
	adds r1, r3, #0
	strh r1, [r2]
	movs r1, #2
	str r1, [r0]
	bx lr
	.align 2, 0
_08001E8C: .4byte REG_SIOMLT_SEND
_08001E90: .4byte REG_SIOCNT
_08001E94: .4byte 0x00002083

	thumb_func_start sub_08001E98
sub_08001E98: @ 0x08001E98
	ldr r1, _08001EC4 @ =REG_SIOMULTI1
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
	ldr r1, _08001ECC @ =REG_SIOMLT_SEND
	strh r3, [r1]
	ldr r2, _08001ED0 @ =REG_SIOCNT
	ldr r3, _08001ED4 @ =0x00002083
	adds r1, r3, #0
	strh r1, [r2]
	movs r1, #3
	str r1, [r0]
	bx lr
	.align 2, 0
_08001EC4: .4byte REG_SIOMULTI1
_08001EC8: .4byte 0x000007FC
_08001ECC: .4byte REG_SIOMLT_SEND
_08001ED0: .4byte REG_SIOCNT
_08001ED4: .4byte 0x00002083

	thumb_func_start sub_08001ED8
sub_08001ED8: @ 0x08001ED8
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _08001F14 @ =REG_SIOMULTI1
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
	ldr r1, _08001F24 @ =REG_TM2CNT_H
	movs r0, #0
	strh r0, [r1]
	b _08001F52
	.align 2, 0
_08001F14: .4byte REG_SIOMULTI1
_08001F18: .4byte 0x000007FC
_08001F1C: .4byte 0x000007DC
_08001F20: .4byte 0x0000789A
_08001F24: .4byte REG_TM2CNT_H
_08001F28:
	ldr r1, _08001F64 @ =REG_RCNT
	movs r0, #0
	strh r0, [r1]
	ldr r3, _08001F68 @ =REG_SIOCNT
	ldr r1, _08001F6C @ =0x00001001
	adds r0, r1, #0
	strh r0, [r3]
	movs r0, #0xfd
	lsls r0, r0, #3
	adds r1, r4, r0
	ldr r0, [r1]
	ldm r0!, {r2}
	str r0, [r1]
	ldr r0, _08001F70 @ =REG_SIOMULTI0
	str r2, [r0]
	ldr r1, _08001F74 @ =0x00001081
	adds r0, r1, #0
	strh r0, [r3]
	ldr r1, _08001F78 @ =REG_TM2CNT
	ldr r0, _08001F7C @ =0x00C0F3F8
	str r0, [r1]
_08001F52:
	lsls r0, r5, #0x11
	lsrs r0, r0, #0x16
	ldr r1, _08001F80 @ =gUnknown_03001368
	str r0, [r1]
	movs r0, #4
	str r0, [r4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08001F64: .4byte REG_RCNT
_08001F68: .4byte REG_SIOCNT
_08001F6C: .4byte 0x00001001
_08001F70: .4byte REG_SIOMULTI0
_08001F74: .4byte 0x00001081
_08001F78: .4byte REG_TM2CNT
_08001F7C: .4byte 0x00C0F3F8
_08001F80: .4byte gUnknown_03001368

	thumb_func_start sub_08001F84
sub_08001F84: @ 0x08001F84
	push {r4, lr}
	movs r2, #0xfd
	lsls r2, r2, #3
	adds r3, r0, r2
	ldr r2, [r3]
	ldm r2!, {r4}
	str r2, [r3]
	ldr r2, _08001FA8 @ =REG_SIOMULTI0
	str r4, [r2]
	ldr r3, _08001FAC @ =REG_SIOCNT
	ldr r4, _08001FB0 @ =0x00001081
	adds r2, r4, #0
	strh r2, [r3]
	adds r1, #1
	str r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08001FA8: .4byte REG_SIOMULTI0
_08001FAC: .4byte REG_SIOCNT
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
	ldr r1, _08001FF0 @ =REG_RCNT
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
_08001FF0: .4byte REG_RCNT

	thumb_func_start sub_08001FF4
sub_08001FF4: @ 0x08001FF4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r3, r0, #0
	movs r2, #0
	ldr r6, _08002028 @ =0x08001A18
	ldr r5, _0800202C @ =gUnknown_03003040
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
_0800202C: .4byte gUnknown_03003040
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
	ldr r1, _08002120 @ =REG_SIOMULTI0
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
_08002120: .4byte REG_SIOMULTI0
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
	ldr r0, _08002150 @ =REG_SIOMLT_SEND
	strh r1, [r0]
	movs r0, #0x65
	str r0, [r3]
_08002148:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08002150: .4byte REG_SIOMLT_SEND

	thumb_func_start sub_08002154
sub_08002154: @ 0x08002154
	push {lr}
	adds r3, r0, #0
	ldr r0, _080021C0 @ =REG_SIOMULTI0
	ldrh r2, [r0]
	ldr r0, _080021C4 @ =0x000007EC
	adds r1, r3, r0
	ldr r0, [r1]
	stm r0!, {r2}
	str r0, [r1]
	ldr r0, _080021C8 @ =REG_KEYINPUT
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
	ldr r0, _080021D0 @ =REG_SIOMLT_SEND
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
	ldr r1, _080021D4 @ =gUnknown_03001364
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
_080021C0: .4byte REG_SIOMULTI0
_080021C4: .4byte 0x000007EC
_080021C8: .4byte REG_KEYINPUT
_080021CC: .4byte 0x000003FF
_080021D0: .4byte REG_SIOMLT_SEND
_080021D4: .4byte gUnknown_03001364

	thumb_func_start sub_080021D8
sub_080021D8: @ 0x080021D8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08002210 @ =REG_SIOMULTI0
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
	ldr r1, _08002220 @ =REG_RCNT
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
_08002210: .4byte REG_SIOMULTI0
_08002214: .4byte 0x000007EC
_08002218: .4byte 0x000007DC
_0800221C: .4byte 0x0000789A
_08002220: .4byte REG_RCNT
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
	ldr r1, _08002298 @ =REG_RCNT
	movs r0, #0
	strh r0, [r1]
	ldr r0, _0800229C @ =REG_SIOCNT
	strh r2, [r0]
	ldr r1, _080022A0 @ =gUnknown_03001364
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
_08002298: .4byte REG_RCNT
_0800229C: .4byte REG_SIOCNT
_080022A0: .4byte gUnknown_03001364
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
	ldr r2, _080022E4 @ =REG_SIOMULTI0
	ldr r4, [r2]
	ldr r2, _080022E8 @ =0x000007EC
	adds r3, r0, r2
	ldr r2, [r3]
	stm r2!, {r4}
	str r2, [r3]
	movs r3, #0xa1
	lsls r3, r3, #7
	ldr r2, _080022EC @ =REG_SIOCNT
	strh r3, [r2]
	adds r1, #1
	str r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080022E4: .4byte REG_SIOMULTI0
_080022E8: .4byte 0x000007EC
_080022EC: .4byte REG_SIOCNT

	thumb_func_start sub_080022F0
sub_080022F0: @ 0x080022F0
	ldr r1, _08002328 @ =REG_SIOMULTI0
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
	ldr r2, _08002338 @ =REG_RCNT
	movs r1, #0
	strh r1, [r2]
	ldr r1, _0800233C @ =REG_SIOCNT
	strh r3, [r1]
	movs r1, #0x64
	str r1, [r0]
	bx lr
	.align 2, 0
_08002328: .4byte REG_SIOMULTI0
_0800232C: .4byte 0x000007EC
_08002330: .4byte 0x000007B4
_08002334: .4byte 0x00006003
_08002338: .4byte REG_RCNT
_0800233C: .4byte REG_SIOCNT

	thumb_func_start sub_08002340
sub_08002340: @ 0x08002340
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r3, r0, #0
	movs r2, #0
	ldr r5, _08002378 @ =0x08001A18
	ldr r6, _0800237C @ =gUnknown_03003040
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
_0800237C: .4byte gUnknown_03003040
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

	.global gRamCodeBlock2End
gRamCodeBlock2End:

.include "asm/macro.inc"
.syntax unified

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
	ldr r1, _080010B8 @ =gUnknown_03000B50
	str r0, [r1]
	ldr r1, _080010BC @ =gUnknown_03000B58
	movs r0, #3
	str r0, [r1]
	ldr r1, _080010C0 @ =gUnknown_03001364
	movs r0, #0
	str r0, [r1]
	bx lr
	.align 2, 0
_080010B4: .4byte 0x04000134
_080010B8: .4byte gUnknown_03000B50
_080010BC: .4byte gUnknown_03000B58
_080010C0: .4byte gUnknown_03001364

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
	bl sub_0803D79C
	adds r0, r5, #0
	bl sub_0803D7A8
	ldr r0, _08001334 @ =gUnknown_03000B58
	movs r1, #0
	str r1, [r0]
	ldr r0, _08001338 @ =gUnknown_03001364
	str r1, [r0]
	ldr r0, _0800133C @ =gUnknown_03001368
	str r1, [r0]
	ldr r0, _08001340 @ =gUnknown_03000B50
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
_08001344: .4byte 0x04000134
_08001348: .4byte 0x0400010A

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
	ldr r2, _080013A0 @ =0x04000134
	movs r3, #0x80
	lsls r3, r3, #8
	adds r0, r3, #0
	strh r0, [r2]
	ldr r0, _080013A4 @ =0x0400010A
	strh r1, [r0]
	bx lr
	.align 2, 0
_0800138C: .4byte gUnknown_03000B60
_08001390: .4byte gUnknown_03000B58
_08001394: .4byte gUnknown_03001364
_08001398: .4byte gUnknown_03001368
_0800139C: .4byte gUnknown_03000B50
_080013A0: .4byte 0x04000134
_080013A4: .4byte 0x0400010A

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
	ldr r1, _08001538 @ =0x04000134
	movs r5, #0x80
	lsls r5, r5, #8
	adds r0, r5, #0
	strh r0, [r1]
	ldr r0, _0800153C @ =0x0400010A
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
_08001538: .4byte 0x04000134
_0800153C: .4byte 0x0400010A
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
	bl sub_0803D79C
_08001A04:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08001A0C: .4byte sub_08001D40
_08001A10: .4byte 0x08001A18
_08001A14: .4byte gUnknown_03003040

_08001A18: .byte 0x00, 0x47

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
	ldr r1, _08001BB4 @ =gUnknown_03000B58
	movs r0, #0
	str r0, [r1]
	b _08001BC4
	.align 2, 0
_08001BA8: .4byte 0x0000789A
_08001BAC: .4byte 0x04000208
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
	ldr r1, _08001F80 @ =gUnknown_03001368
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
_080021C0: .4byte 0x04000120
_080021C4: .4byte 0x000007EC
_080021C8: .4byte 0x04000130
_080021CC: .4byte 0x000003FF
_080021D0: .4byte 0x0400012A
_080021D4: .4byte gUnknown_03001364

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
_08002298: .4byte 0x04000134
_0800229C: .4byte 0x04000128
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

	thumb_func_start sub_080023D4
sub_080023D4: @ sub_080023D4
	add r2, pc, #0x0 @ =sub_080023D8
	bx r2

	arm_func_start sub_080023D8
sub_080023D8: @ 0x080023D8
	umull r2, r3, r0, r1
	add r0, r3, #0
	bx lr

	thumb_func_start sub_080023E4
sub_080023E4: @ 0x080023E4
	ldr r0, _08002450 @ =gUnknown_03007FF0
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
	ldr r3, _08002458 @ =gUnknown_03000749
	bx r3
	.align 2, 0
_08002450: .4byte gUnknown_03007FF0
_08002454: .4byte 0x68736D53
_08002458: .4byte gUnknown_03000749
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
	ldr r2, _080028A4 @ =gUnknown_08043FAC
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
	ldr r0, _080028A4 @ =gUnknown_08043FAC
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
_080028A4: .4byte gUnknown_08043FAC

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
	ldr r0, _08002CE4 @ =gUnknown_03007FF0
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
	ldr r0, _08002CE4 @ =gUnknown_03007FF0
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
	ldr r0, _08002CE0 @ =gUnknown_08044220
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
_08002CE0: .4byte gUnknown_08044220
_08002CE4: .4byte gUnknown_03007FF0
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
	ldr r3, _08002D2C @ =gUnknown_03007FF0
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
_08002D2C: .4byte gUnknown_03007FF0

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
	ldr r1, _08002F58 @ =gUnknown_03007FF0
	ldr r1, [r1]
	str r1, [sp, #4]
	ldr r1, _08002F5C @ =gUnknown_08044220
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
_08002F58: .4byte gUnknown_03007FF0
_08002F5C: .4byte gUnknown_08044220

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
	ldr r3, _0800304C @ =gUnknown_0804403C
	adds r0, r6, r3
	ldrb r5, [r0]
	ldr r4, _08003050 @ =gUnknown_080440F0
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
_0800304C: .4byte gUnknown_0804403C
_08003050: .4byte gUnknown_080440F0
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
	ldr r1, _080030EC @ =gUnknown_03000748
	ldr r2, _080030F0 @ =0x04000100
	bl sub_0803D348
	ldr r0, _080030F4 @ =gUnknown_02000860
	bl sub_08003494
	ldr r0, _080030F8 @ =gUnknown_02001960
	bl sub_08003350
	ldr r0, _080030FC @ =0x0096EC00
	bl sub_08003630
	ldr r0, _08003100 @ =0x00000008
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	beq _080030E2
	ldr r5, _08003104 @ =gUnknown_08045158
	adds r6, r0, #0
_080030C6:
	ldr r4, [r5]
	ldr r1, [r5, #4]
	ldrb r2, [r5, #8]
	adds r0, r4, #0
	bl sub_080037D4
	ldrh r0, [r5, #0xa]
	strb r0, [r4, #0xb]
	ldr r0, _08003108 @ =gUnknown_02001B60
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
_080030EC: .4byte gUnknown_03000748
_080030F0: .4byte 0x04000100
_080030F4: .4byte gUnknown_02000860
_080030F8: .4byte gUnknown_02001960
_080030FC: .4byte 0x0096EC00
_08003100: .4byte 0x00000008
_08003104: .4byte gUnknown_08045158
_08003108: .4byte gUnknown_02001B60

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
	ldr r2, _0800313C @ =gUnknown_08045158
	ldr r1, _08003140 @ =gUnknown_080451B8
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
_0800313C: .4byte gUnknown_08045158
_08003140: .4byte gUnknown_080451B8

	thumb_func_start sub_08003144
sub_08003144: @ 0x08003144
	push {lr}
	lsls r0, r0, #0x10
	ldr r2, _08003170 @ =gUnknown_08045158
	ldr r1, _08003174 @ =gUnknown_080451B8
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
_08003170: .4byte gUnknown_08045158
_08003174: .4byte gUnknown_080451B8
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
	ldr r2, _080031BC @ =gUnknown_08045158
	ldr r1, _080031C0 @ =gUnknown_080451B8
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
_080031BC: .4byte gUnknown_08045158
_080031C0: .4byte gUnknown_080451B8
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
	ldr r2, _08003210 @ =gUnknown_08045158
	ldr r1, _08003214 @ =gUnknown_080451B8
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
_08003210: .4byte gUnknown_08045158
_08003214: .4byte gUnknown_080451B8

	thumb_func_start sub_08003218
sub_08003218: @ 0x08003218
	push {lr}
	lsls r0, r0, #0x10
	ldr r2, _08003244 @ =gUnknown_08045158
	ldr r1, _08003248 @ =gUnknown_080451B8
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
_08003244: .4byte gUnknown_08045158
_08003248: .4byte gUnknown_080451B8

	thumb_func_start sub_0800324C
sub_0800324C: @ 0x0800324C
	push {r4, r5, lr}
	ldr r0, _08003270 @ =0x00000008
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	beq _0800326A
	ldr r5, _08003274 @ =gUnknown_08045158
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
_08003274: .4byte gUnknown_08045158

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
	ldr r5, _080032AC @ =gUnknown_08045158
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
_080032AC: .4byte gUnknown_08045158

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
	ldr r0, _08003424 @ =gUnknown_03007FF0
	ldr r4, [r0]
	ldr r6, [r4]
	ldr r0, _08003428 @ =0x68736D53
	cmp r6, r0
	bne _08003410
	adds r0, r6, #1
	str r0, [r4]
	ldr r1, _0800342C @ =gUnknown_020018D0
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
	ldr r0, _0800345C @ =sub_08003AEC+1
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
_08003424: .4byte gUnknown_03007FF0
_08003428: .4byte 0x68736D53
_0800342C: .4byte gUnknown_020018D0
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
_0800345C: .4byte sub_08003AEC+1
_08003460: .4byte 0x00000000
_08003464: .4byte 0x05000040
_08003468:
	.byte 0x2A, 0xDF, 0x70, 0x47

	thumb_func_start sub_0800346C
sub_0800346C: @ 0x0800346C
	push {lr}
	ldr r1, _0800347C @ =gUnknown_02001958
	ldr r1, [r1]
	bl sub_0803D79C
	pop {r0}
	bx r0
	.align 2, 0
_0800347C: .4byte gUnknown_02001958

	thumb_func_start sub_08003480
sub_08003480: @ 0x08003480
	push {lr}
	ldr r1, _08003490 @ =gUnknown_0200195C
	ldr r1, [r1]
	bl sub_0803D79C
	pop {r0}
	bx r0
	.align 2, 0
_08003490: .4byte gUnknown_0200195C

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
	ldr r0, _08003574 @ =gUnknown_03007FF0
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
	ldr r4, _08003584 @ =gUnknown_020018D0
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
_08003574: .4byte gUnknown_03007FF0
_08003578: .4byte 0x050003EC
_0800357C: .4byte sub_08002D60
_08003580: .4byte sub_08004584
_08003584: .4byte gUnknown_020018D0
_08003588: .4byte 0x68736D53

	thumb_func_start sub_0800358C
sub_0800358C: @ 0x0800358C
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	ldr r0, _0800360C @ =gUnknown_03007FF0
	ldr r4, [r0]
	movs r0, #0xf0
	lsls r0, r0, #0xc
	ands r0, r2
	lsrs r2, r0, #0x10
	movs r6, #0
	strb r2, [r4, #8]
	ldr r1, _08003610 @ =gUnknown_08044120
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
_0800360C: .4byte gUnknown_03007FF0
_08003610: .4byte gUnknown_08044120
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
	ldr r0, _080036BC @ =gUnknown_03007FF0
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
_080036BC: .4byte gUnknown_03007FF0
_080036C0: .4byte 0x68736D53
_080036C4: .4byte 0x04000089

	thumb_func_start sub_080036C8
sub_080036C8: @ 0x080036C8
	push {r4, r5, r6, r7, lr}
	ldr r0, _08003714 @ =gUnknown_03007FF0
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
_08003714: .4byte gUnknown_03007FF0
_08003718: .4byte 0x68736D53

	thumb_func_start sub_0800371C
sub_0800371C: @ 0x0800371C
	push {lr}
	sub sp, #4
	ldr r0, _0800377C @ =gUnknown_03007FF0
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
_0800377C: .4byte gUnknown_03007FF0
_08003780: .4byte 0x978C92AD
_08003784: .4byte 0x040000C4
_08003788: .4byte 0x84400004
_0800378C: .4byte 0x040000D0
_08003790: .4byte 0x040000C6
_08003794: .4byte 0x05000318

	thumb_func_start sub_08003798
sub_08003798: @ 0x08003798
	push {r4, lr}
	ldr r0, _080037C8 @ =gUnknown_03007FF0
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
_080037C8: .4byte gUnknown_03007FF0
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
	ldr r0, _08003840 @ =gUnknown_03007FF0
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
_08003840: .4byte gUnknown_03007FF0
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
	thumb_func_start sub_08003AEC

sub_08003AEC: @ 0x08003AEC
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov ip, r2
	cmp r0, #4
	bne _08003B24
	cmp r5, #0x14
	bhi _08003B08
	movs r5, #0
	b _08003B16
_08003B08:
	adds r0, r5, #0
	subs r0, #0x15
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x3b
	bls _08003B16
	movs r5, #0x3b
_08003B16:
	ldr r0, _08003B20 @ =0x080441D4
	adds r0, r5, r0
	ldrb r0, [r0]
	b _08003B86
	.align 2, 0
_08003B20: .4byte 0x080441D4
_08003B24:
	cmp r5, #0x23
	bhi _08003B30
	movs r0, #0
	mov ip, r0
	movs r5, #0
	b _08003B42
_08003B30:
	adds r0, r5, #0
	subs r0, #0x24
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x82
	bls _08003B42
	movs r5, #0x82
	movs r1, #0xff
	mov ip, r1
_08003B42:
	ldr r3, _08003B8C @ =0x08044138
	adds r0, r5, r3
	ldrb r6, [r0]
	ldr r4, _08003B90 @ =0x080441BC
	movs r2, #0xf
	adds r0, r6, #0
	ands r0, r2
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r7, #0
	ldrsh r1, [r0, r7]
	asrs r0, r6, #4
	adds r6, r1, #0
	asrs r6, r0
	adds r0, r5, #1
	adds r0, r0, r3
	ldrb r1, [r0]
	adds r0, r1, #0
	ands r0, r2
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r2, #0
	ldrsh r0, [r0, r2]
	asrs r1, r1, #4
	asrs r0, r1
	subs r0, r0, r6
	mov r7, ip
	muls r7, r0, r7
	adds r0, r7, #0
	asrs r0, r0, #8
	adds r0, r6, r0
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r0, r1
_08003B86:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08003B8C: .4byte 0x08044138
_08003B90: .4byte 0x080441BC

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
	ldr r0, _08003C6C @ =gUnknown_03007FF0
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
_08003C6C: .4byte gUnknown_03007FF0
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
	ldr r0, _08004040 @ =gUnknown_08044210
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
_08004040: .4byte gUnknown_08044210
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
	ldr r0, _08004454 @ =gUnknown_020018D4
	ldr r2, [r0]
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_0803D7A0
	b _0800445E
	.align 2, 0
_08004454: .4byte gUnknown_020018D4
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
	ldr r2, _08004480 @ =gUnknown_08044254
	lsls r3, r3, #2
	adds r3, r3, r2
	ldr r2, [r3]
	bl sub_0803D7A0
	pop {r0}
	bx r0
	.align 2, 0
_08004480: .4byte gUnknown_08044254

	thumb_func_start sub_08004484
sub_08004484: @ 0x08004484
	push {lr}
	ldr r2, _08004494 @ =gUnknown_020018D0
	ldr r2, [r2]
	bl sub_0803D7A0
	pop {r0}
	bx r0
	.align 2, 0
_08004494: .4byte gUnknown_020018D0

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
	ldr r0, _080045AC @ =gUnknown_08308C44
	b _080045F2
	.align 2, 0
_080045AC: .4byte gUnknown_08308C44
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
	ldr r0, _08004600 @ =gUnknown_08308C6C
_080045F2:
	bl sub_080052CC
	movs r0, #0
_080045F8:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08004600: .4byte gUnknown_08308C6C

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
	ldr r0, _080046B0 @ =gUnknown_02001CC0
	ldr r1, _080046B4 @ =gUnknown_02017AF0
	movs r2, #0x8c
	lsls r2, r2, #9
	bl sub_08004588
	pop {r0}
	bx r0
	.align 2, 0
_080046B0: .4byte gUnknown_02001CC0
_080046B4: .4byte gUnknown_02017AF0

	thumb_func_start sub_080046B8
sub_080046B8: @ 0x080046B8
	push {lr}
	ldr r0, _080046CC @ =gUnknown_02001D70
	ldr r1, _080046D0 @ =gUnknown_020292F0
	movs r2, #0xa0
	lsls r2, r2, #8
	bl sub_08004588
	pop {r0}
	bx r0
	.align 2, 0
_080046CC: .4byte gUnknown_02001D70
_080046D0: .4byte gUnknown_020292F0

	thumb_func_start sub_080046D4
sub_080046D4: @ 0x080046D4
	push {lr}
	ldr r0, _080046E8 @ =gUnknown_02001D20
	ldr r1, _080046EC @ =gUnknown_020332F0
	movs r2, #0x80
	lsls r2, r2, #7
	bl sub_08004588
	pop {r0}
	bx r0
	.align 2, 0
_080046E8: .4byte gUnknown_02001D20
_080046EC: .4byte gUnknown_020332F0

	thumb_func_start sub_080046F0
sub_080046F0: @ 0x080046F0
	push {lr}
	movs r1, #0
	ldr r0, _0800470C @ =gUnknown_02001D70
	ldrh r0, [r0, #8]
	cmp r0, #0
	bne _08004704
	ldr r0, _08004710 @ =gUnknown_02001D20
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
_0800470C: .4byte gUnknown_02001D70
_08004710: .4byte gUnknown_02001D20

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
	ldr r4, _08004818 @ =gUnknown_083D4B68
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
_08004818: .4byte gUnknown_083D4B68
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
	ldr r7, _08004858 @ =gUnknown_083D5108
	cmp r0, #0x10
	bne _0800484A
	ldr r7, _0800485C @ =gUnknown_083D4B88
_0800484A:
	adds r0, r2, #0
	subs r0, #0x10
	cmp r0, #0
	beq _08004880
	adds r0, #1
	b _08004880
	.align 2, 0
_08004858: .4byte gUnknown_083D5108
_0800485C: .4byte gUnknown_083D4B88
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
	ldr r7, _08004888 @ =gUnknown_083D5B88
	cmp r0, #0x10
	bne _0800487C
	ldr r7, _0800488C @ =gUnknown_083D5688
_0800487C:
	adds r0, r2, #0
	subs r0, #0x1a
_08004880:
	lsls r0, r0, #6
	adds r7, r7, r0
	b _0800489C
	.align 2, 0
_08004888: .4byte gUnknown_083D5B88
_0800488C: .4byte gUnknown_083D5688
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
	ldr r3, _08004970 @ =gUnknown_083D6088
_08004964:
	cmp r0, #0x23
	beq _0800497E
	cmp r0, #0x24
	bne _08004974
	adds r1, #1
	b _08004982
	.align 2, 0
_08004970: .4byte gUnknown_083D6088
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
	ldr r0, _08004AE0 @ =gUnknown_083D6088
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
_08004AE0: .4byte gUnknown_083D6088
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
	ldr r1, _08004C60 @ =gUnknown_083D4B08
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
	ldr r4, _08004C68 @ =gUnknown_083D4B48
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
	ldr r4, _08004C74 @ =gUnknown_083D4B28
	ldr r0, _08004C78 @ =0x050000C0
	adds r1, r4, #0
	movs r2, #0x20
	bl sub_080002C4
_08004BEC:
	bl sub_080047F8
	ldr r1, _08004C7C @ =gUnknown_030013B0
	ldr r0, _08004C80 @ =gUnknown_083E7D5E
	str r0, [r1]
	ldr r0, _08004C84 @ =gUnknown_083F543E
	str r0, [r1, #4]
	ldr r0, _08004C88 @ =gUnknown_083F61AA
	str r0, [r1, #8]
	ldr r6, _08004C8C @ =gUnknown_083F63AA
	str r6, [r1, #0xc]
	movs r5, #0xc0
	lsls r5, r5, #0x13
	str r5, [r1, #0x10]
	movs r0, #0
	mov r8, r0
	movs r4, #0x1e
	strh r4, [r1, #0x14]
	ldr r0, _08004C90 @ =gUnknown_083E7D5C
	ldrh r0, [r0]
	strh r0, [r1, #0x16]
	movs r3, #0x10
	strh r3, [r1, #0x18]
	strh r3, [r1, #0x1a]
	mov r2, r8
	strh r2, [r1, #0x1c]
	ldr r0, _08004C94 @ =gUnknown_030013D0
	ldr r2, _08004C98 @ =gUnknown_083F659E
	str r2, [r0]
	ldr r2, _08004C9C @ =gUnknown_083F831E
	str r2, [r0, #4]
	ldr r2, _08004CA0 @ =gUnknown_083F84F4
	str r2, [r0, #8]
	str r6, [r0, #0xc]
	str r5, [r0, #0x10]
	strh r4, [r0, #0x14]
	ldr r2, _08004CA4 @ =gUnknown_083F659C
	ldrh r2, [r2]
	strh r2, [r0, #0x16]
	strh r3, [r0, #0x18]
	strh r3, [r0, #0x1a]
	mov r3, r8
	strh r3, [r0, #0x1c]
	ldr r2, _08004CA8 @ =gUnknown_03001390
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
_08004C60: .4byte gUnknown_083D4B08
_08004C64: .4byte 0x0600F800
_08004C68: .4byte gUnknown_083D4B48
_08004C6C: .4byte 0x05000020
_08004C70: .4byte 0x05000080
_08004C74: .4byte gUnknown_083D4B28
_08004C78: .4byte 0x050000C0
_08004C7C: .4byte gUnknown_030013B0
_08004C80: .4byte gUnknown_083E7D5E
_08004C84: .4byte gUnknown_083F543E
_08004C88: .4byte gUnknown_083F61AA
_08004C8C: .4byte gUnknown_083F63AA
_08004C90: .4byte gUnknown_083E7D5C
_08004C94: .4byte gUnknown_030013D0
_08004C98: .4byte gUnknown_083F659E
_08004C9C: .4byte gUnknown_083F831E
_08004CA0: .4byte gUnknown_083F84F4
_08004CA4: .4byte gUnknown_083F659C
_08004CA8: .4byte gUnknown_03001390

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
	ldr r6, _0800506C @ =gUnknown_03001390
	bl sub_08000588
	ldr r1, _08005070 @ =0x04000200
	movs r0, #0
	strh r0, [r1]
	bl sub_0800A110
	movs r0, #1
	bl sub_08004CAC
	cmp r4, #0
	beq _08005078
	ldr r1, _08005074 @ =gUnknown_08308C90
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
_0800506C: .4byte gUnknown_03001390
_08005070: .4byte 0x04000200
_08005074: .4byte gUnknown_08308C90
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
	ldr r1, _080050B4 @ =gUnknown_08308C98
	bl sub_08005028
	pop {r0}
	bx r0
	.align 2, 0
_080050B4: .4byte gUnknown_08308C98

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
	ldr r1, _080050E0 @ =gUnknown_08308CC0
	mov r0, sp
	bl sub_0803DFE0
	mov r0, sp
	bl sub_080050A8
	add sp, #0x100
	pop {r0}
	bx r0
	.align 2, 0
_080050E0: .4byte gUnknown_08308CC0

	thumb_func_start sub_080050E4
sub_080050E4: @ 0x080050E4
	push {r4, lr}
	sub sp, #0x104
	adds r4, r0, #0
	adds r3, r1, #0
	ldr r1, _08005108 @ =gUnknown_08308CC8
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
_08005108: .4byte gUnknown_08308CC8

	thumb_func_start sub_0800510C
sub_0800510C: @ 0x0800510C
	push {lr}
	sub sp, #0x80
	adds r2, r0, #0
	adds r3, r1, #0
	ldr r1, _08005128 @ =gUnknown_08308CD0
	mov r0, sp
	bl sub_0803DFE0
	mov r0, sp
	bl sub_080050A8
	add sp, #0x80
	pop {r0}
	bx r0
	.align 2, 0
_08005128: .4byte gUnknown_08308CD0

	thumb_func_start sub_0800512C
sub_0800512C: @ 0x0800512C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r3, r2, #0
	ldr r0, _08005144 @ =gUnknown_03001390
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_08004E28
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08005144: .4byte gUnknown_03001390

	thumb_func_start sub_08005148
sub_08005148: @ 0x08005148
	push {r4, r5, lr}
	sub sp, #0x80
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, _0800516C @ =gUnknown_08308CD8
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
_0800516C: .4byte gUnknown_08308CD8

	thumb_func_start sub_08005170
sub_08005170: @ 0x08005170
	push {r4, r5, lr}
	sub sp, #0x80
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, _08005194 @ =gUnknown_08308CE0
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
_08005194: .4byte gUnknown_08308CE0

	thumb_func_start sub_08005198
sub_08005198: @ 0x08005198
	push {lr}
	adds r2, r0, #0
	ldr r0, _080051AC @ =gUnknown_03001390
	movs r1, #0
	movs r3, #0x1e
	bl sub_08004D2C
	pop {r0}
	bx r0
	.align 2, 0
_080051AC: .4byte gUnknown_03001390

	thumb_func_start sub_080051B0
sub_080051B0: @ 0x080051B0
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _080051F0 @ =gUnknown_03001390
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
_080051F0: .4byte gUnknown_03001390

	thumb_func_start sub_080051F4
sub_080051F4: @ 0x080051F4
	push {lr}
	sub sp, #0x80
	adds r2, r0, #0
	adds r3, r1, #0
	ldr r1, _08005210 @ =gUnknown_08308CE8
	mov r0, sp
	bl sub_0803DFE0
	mov r0, sp
	bl sub_080051B0
	add sp, #0x80
	pop {r0}
	bx r0
	.align 2, 0
_08005210: .4byte gUnknown_08308CE8

	thumb_func_start sub_08005214
sub_08005214: @ 0x08005214
	push {lr}
	sub sp, #0x80
	adds r2, r0, #0
	adds r3, r1, #0
	ldr r1, _08005230 @ =gUnknown_08308CE0
	mov r0, sp
	bl sub_0803DFE0
	mov r0, sp
	bl sub_080051B0
	add sp, #0x80
	pop {r0}
	bx r0
	.align 2, 0
_08005230: .4byte gUnknown_08308CE0

	thumb_func_start sub_08005234
sub_08005234: @ 0x08005234
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	mov r8, r0
	ldr r4, _080052A0 @ =gUnknown_03001390
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
	ldr r3, _080052A8 @ =gUnknown_08308CF0
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
_080052A0: .4byte gUnknown_03001390
_080052A4: .4byte 0xFFFFEFFF
_080052A8: .4byte gUnknown_08308CF0

	thumb_func_start sub_080052AC
sub_080052AC: @ 0x080052AC
	push {lr}
	sub sp, #0x80
	adds r2, r0, #0
	ldr r1, _080052C8 @ =gUnknown_08308D08
	mov r0, sp
	bl sub_0803DFE0
	mov r0, sp
	bl sub_08005234
	add sp, #0x80
	pop {r0}
	bx r0
	.align 2, 0
_080052C8: .4byte gUnknown_08308D08

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
	ldr r0, _080052F4 @ =gUnknown_02001DBC
	ldrb r1, [r0]
	adds r5, r0, #0
	cmp r1, #0
	bne _08005300
	ldr r1, _080052F8 @ =gUnknown_083D6558
	cmp r4, #0
	beq _08005308
	ldr r1, _080052FC @ =gUnknown_083D6798
	b _08005308
	.align 2, 0
_080052F4: .4byte gUnknown_02001DBC
_080052F8: .4byte gUnknown_083D6558
_080052FC: .4byte gUnknown_083D6798
_08005300:
	ldr r1, _08005340 @ =gUnknown_083D60B8
	cmp r4, #0
	beq _08005308
	ldr r1, _08005344 @ =gUnknown_083D62F8
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
	ldr r0, _08005348 @ =gUnknown_083D6A58
	b _0800534E
	.align 2, 0
_08005340: .4byte gUnknown_083D60B8
_08005344: .4byte gUnknown_083D62F8
_08005348: .4byte gUnknown_083D6A58
_0800534C:
	ldr r0, _08005358 @ =gUnknown_083D69D8
_0800534E:
	str r0, [r3, #0x24]
	cmp r4, #0
	beq _08005360
	ldr r0, _0800535C @ =gUnknown_083D6B98
	b _08005362
	.align 2, 0
_08005358: .4byte gUnknown_083D69D8
_0800535C: .4byte gUnknown_083D6B98
_08005360:
	ldr r0, _08005378 @ =gUnknown_083D6AD8
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
_08005378: .4byte gUnknown_083D6AD8
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
	ldr r2, _080059EC @ =gUnknown_02001D6C
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
_080059EC: .4byte gUnknown_02001D6C
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
	ldr r2, _08005A4C @ =gUnknown_03FF03FF
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
	ldr r2, _08005AF0 @ =gUnknown_083D7F98
	adds r2, r1, r2
	ldrb r3, [r2]
	lsrs r0, r0, #2
	movs r2, #1
	ands r0, r2
	ldr r2, _08005AF4 @ =gUnknown_083D7FAC
	adds r1, r1, r2
	ldrb r1, [r1]
	eors r0, r1
	lsls r3, r3, #2
	adds r3, r3, r4
	ldr r1, _08005AF8 @ =gUnknown_083D7FC0
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r3, r3, #6
	ldr r0, [r0]
	adds r0, r0, r3
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08005AF0: .4byte gUnknown_083D7F98
_08005AF4: .4byte gUnknown_083D7FAC
_08005AF8: .4byte gUnknown_083D7FC0

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
	ldr r1, _08005C70 @ =gUnknown_02001CA0
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #8]
	strh r0, [r1, #0x10]
	bx lr
	.align 2, 0
_08005C70: .4byte gUnknown_02001CA0

	thumb_func_start sub_08005C74
sub_08005C74: @ 0x08005C74
	push {r4, lr}
	adds r1, r0, #0
	movs r3, #0
	movs r4, #0xa0
	ldr r2, _08005C90 @ =gUnknown_02001CA0
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
_08005C90: .4byte gUnknown_02001CA0
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
	ldr r0, _08005D68 @ =gUnknown_02001DBC
	strb r4, [r0]
	ldr r1, _08005D6C @ =gUnknown_02001D6C
	movs r0, #0
	strb r0, [r1]
	bl sub_08005C64
	movs r1, #0
	movs r0, #0xa0
	lsls r0, r0, #0x13
	strh r1, [r0]
	adds r0, #0x60
	strh r1, [r0]
	ldr r5, _08005D70 @ =gUnknown_083D653A
	cmp r4, #0
	beq _08005CD2
	ldr r5, _08005D74 @ =gUnknown_083D609A
_08005CD2:
	ldr r0, _08005D78 @ =0x05000002
	adds r1, r5, #0
	movs r2, #0x1e
	bl sub_080002EC
	ldr r0, _08005D7C @ =0x05000062
	adds r1, r5, #0
	movs r2, #0x1e
	bl sub_080002EC
	ldr r5, _08005D80 @ =gUnknown_083D7378
	ldr r0, _08005D84 @ =0x050000E0
	adds r1, r5, #0
	movs r2, #0x20
	bl sub_080002C4
	ldr r5, _08005D88 @ =0x06010000
	ldr r1, _08005D8C @ =gUnknown_083D6C78
	movs r4, #0x80
	lsls r4, r4, #1
	adds r0, r5, #0
	adds r2, r4, #0
	bl sub_08000314
	movs r0, #0xc0
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r1, _08005D90 @ =gUnknown_083D6D78
	adds r2, r4, #0
	bl sub_08000314
	movs r0, #0x80
	lsls r0, r0, #3
	adds r0, r0, r5
	ldr r1, _08005D94 @ =gUnknown_083D6E78
	adds r2, r4, #0
	bl sub_08000314
	adds r0, r4, r5
	ldr r1, _08005D98 @ =gUnknown_083D6F78
	adds r2, r4, #0
	bl sub_08000314
	movs r0, #0x80
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r1, _08005D9C @ =gUnknown_083D7078
	adds r2, r4, #0
	bl sub_08000314
	movs r0, #0xa0
	lsls r0, r0, #3
	adds r0, r0, r5
	ldr r1, _08005DA0 @ =gUnknown_083D7178
	adds r2, r4, #0
	bl sub_08000314
	movs r0, #0xc0
	lsls r0, r0, #3
	adds r0, r0, r5
	ldr r1, _08005DA4 @ =gUnknown_083D7278
	adds r2, r4, #0
	bl sub_08000314
	ldr r0, _08005DA8 @ =0x05000200
	ldr r1, _08005DAC @ =gUnknown_083D6C58
	movs r2, #0x20
	bl sub_080002C4
	bl sub_08001004
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08005D68: .4byte gUnknown_02001DBC
_08005D6C: .4byte gUnknown_02001D6C
_08005D70: .4byte gUnknown_083D653A
_08005D74: .4byte gUnknown_083D609A
_08005D78: .4byte 0x05000002
_08005D7C: .4byte 0x05000062
_08005D80: .4byte gUnknown_083D7378
_08005D84: .4byte 0x050000E0
_08005D88: .4byte 0x06010000
_08005D8C: .4byte gUnknown_083D6C78
_08005D90: .4byte gUnknown_083D6D78
_08005D94: .4byte gUnknown_083D6E78
_08005D98: .4byte gUnknown_083D6F78
_08005D9C: .4byte gUnknown_083D7078
_08005DA0: .4byte gUnknown_083D7178
_08005DA4: .4byte gUnknown_083D7278
_08005DA8: .4byte 0x05000200
_08005DAC: .4byte gUnknown_083D6C58

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
	ldr r0, _08005E14 @ =gUnknown_02001D0C
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
	ldr r0, _08005E14 @ =gUnknown_02001D0C
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
_08005E14: .4byte gUnknown_02001D0C

	thumb_func_start sub_08005E18
sub_08005E18: @ 0x08005E18
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, _08005E2C @ =gUnknown_02001DBC
	ldrb r0, [r0]
	cmp r0, #0
	beq _08005E30
	movs r2, #1
	movs r4, #2
	movs r3, #0
	b _08005E36
	.align 2, 0
_08005E2C: .4byte gUnknown_02001DBC
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
	ldr r0, _08005F1C @ =gUnknown_02001CC0
	b _08005F2E
	.align 2, 0
_08005F1C: .4byte gUnknown_02001CC0
_08005F20:
	cmp r0, #1
	bne _08005F2C
	ldr r0, _08005F28 @ =gUnknown_02001D70
	b _08005F2E
	.align 2, 0
_08005F28: .4byte gUnknown_02001D70
_08005F2C:
	ldr r0, _08005F68 @ =gUnknown_02001D20
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
_08005F68: .4byte gUnknown_02001D20
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
	ldr r0, _08005FD0 @ =gUnknown_02001CC0
	bl sub_08004604
	b _08005FEA
	.align 2, 0
_08005FD0: .4byte gUnknown_02001CC0
_08005FD4:
	cmp r0, #1
	bne _08005FE4
	ldr r0, _08005FE0 @ =gUnknown_02001D70
	bl sub_08004604
	b _08005FEA
	.align 2, 0
_08005FE0: .4byte gUnknown_02001D70
_08005FE4:
	ldr r0, _08005FF4 @ =gUnknown_02001D20
	bl sub_08004604
_08005FEA:
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08005FF4: .4byte gUnknown_02001D20

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
	ldr r1, _080064A0 @ =gUnknown_083D7FC8
	adds r0, r5, #0
	adds r0, #0x84
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r3, r4, r0
	ldr r1, _080064A4 @ =gUnknown_02001CA0
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
	ldr r0, _080064A4 @ =gUnknown_02001CA0
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
	ldr r1, _080064A0 @ =gUnknown_083D7FC8
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
_080064A0: .4byte gUnknown_083D7FC8
_080064A4: .4byte gUnknown_02001CA0
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
	ldr r1, _08006574 @ =gUnknown_083D7FC8
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
	ldr r4, _08006578 @ =gUnknown_02001CAA
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
	ldr r0, _08006580 @ =gUnknown_02001CA0
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
	ldr r1, _08006574 @ =gUnknown_083D7FC8
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
_08006574: .4byte gUnknown_083D7FC8
_08006578: .4byte gUnknown_02001CAA
_0800657C: .4byte 0x000001FF
_08006580: .4byte gUnknown_02001CA0
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
	ldr r1, _0800660C @ =gUnknown_083D7FC8
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
	ldr r4, _08006610 @ =gUnknown_02001CB2
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
_0800660C: .4byte gUnknown_083D7FC8
_08006610: .4byte gUnknown_02001CB2
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
	ldr r0, _080067A0 @ =gUnknown_02000020
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
_080067A0: .4byte gUnknown_02000020
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
	ldr r0, _0800683C @ =gUnknown_02000020
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
_0800683C: .4byte gUnknown_02000020
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
	ldr r0, _080068EC @ =gUnknown_02000004
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
_080068EC: .4byte gUnknown_02000004
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
	ldr r0, _0800693C @ =gUnknown_02000004
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
_0800693C: .4byte gUnknown_02000004
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
	ldr r1, _08006A28 @ =gUnknown_083D7FD0
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bx lr
	.align 2, 0
_08006A28: .4byte gUnknown_083D7FD0

	thumb_func_start sub_08006A2C
sub_08006A2C: @ 0x08006A2C
	ldr r1, _08006A38 @ =gUnknown_083D808C
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bx lr
	.align 2, 0
_08006A38: .4byte gUnknown_083D808C

	thumb_func_start sub_08006A3C
sub_08006A3C: @ 0x08006A3C
	ldr r1, _08006A48 @ =gUnknown_083D8200
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bx lr
	.align 2, 0
_08006A48: .4byte gUnknown_083D8200

	thumb_func_start sub_08006A4C
sub_08006A4C: @ 0x08006A4C
	ldr r1, _08006A58 @ =gUnknown_083D83B8
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bx lr
	.align 2, 0
_08006A58: .4byte gUnknown_083D83B8

	thumb_func_start sub_08006A5C
sub_08006A5C: @ 0x08006A5C
	ldr r1, _08006A68 @ =gUnknown_083D8470
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bx lr
	.align 2, 0
_08006A68: .4byte gUnknown_083D8470

	thumb_func_start sub_08006A6C
sub_08006A6C: @ 0x08006A6C
	ldr r1, _08006A78 @ =gUnknown_083D849C
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bx lr
	.align 2, 0
_08006A78: .4byte gUnknown_083D849C

	thumb_func_start sub_08006A7C
sub_08006A7C: @ 0x08006A7C
	push {lr}
	cmp r0, #0
	bne _08006A8C
	ldr r0, _08006A88 @ =gUnknown_083D7FD0
	b _08006AB2
	.align 2, 0
_08006A88: .4byte gUnknown_083D7FD0
_08006A8C:
	cmp r0, #1
	bne _08006A98
	ldr r0, _08006A94 @ =gUnknown_083D808C
	b _08006AB2
	.align 2, 0
_08006A94: .4byte gUnknown_083D808C
_08006A98:
	cmp r0, #2
	bne _08006AA4
	ldr r0, _08006AA0 @ =gUnknown_083D8200
	b _08006AB2
	.align 2, 0
_08006AA0: .4byte gUnknown_083D8200
_08006AA4:
	cmp r0, #3
	beq _08006AB0
	ldr r0, _08006AAC @ =gUnknown_083D8470
	b _08006AB2
	.align 2, 0
_08006AAC: .4byte gUnknown_083D8470
_08006AB0:
	ldr r0, _08006ABC @ =gUnknown_083D83B8
_08006AB2:
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	pop {r1}
	bx r1
	.align 2, 0
_08006ABC: .4byte gUnknown_083D83B8

	thumb_func_start sub_08006AC0
sub_08006AC0: @ 0x08006AC0
	ldr r1, _08006AC8 @ =gUnknown_083D8064
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_08006AC8: .4byte gUnknown_083D8064

	thumb_func_start sub_08006ACC
sub_08006ACC: @ 0x08006ACC
	ldr r1, _08006AD4 @ =gUnknown_083D8064
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_08006AD4: .4byte gUnknown_083D8064

	thumb_func_start sub_08006AD8
sub_08006AD8: @ 0x08006AD8
	push {r4, lr}
	lsls r4, r1, #1
	adds r4, r4, r1
	adds r0, r0, r4
	lsls r0, r0, #1
	ldr r4, _08006B00 @ =gUnknown_083D8120
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
_08006B00: .4byte gUnknown_083D8120

	thumb_func_start sub_08006B04
sub_08006B04: @ 0x08006B04
	push {r4, lr}
	lsls r4, r1, #1
	adds r4, r4, r1
	adds r0, r0, r4
	lsls r0, r0, #1
	ldr r4, _08006B2C @ =gUnknown_083D82B0
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
_08006B2C: .4byte gUnknown_083D82B0

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
	ldr r2, _08006B9C @ =gUnknown_083F86F4
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
_08006B9C: .4byte gUnknown_083F86F4
_08006BA0: .4byte 0x00000619
_08006BA4: .4byte 0x0000061C

	thumb_func_start sub_08006BA8
sub_08006BA8: @ 0x08006BA8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08006BD8 @ =gUnknown_083F86F4
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
_08006BD8: .4byte gUnknown_083F86F4
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
	ldr r1, _08006CC0 @ =gUnknown_0849CE78
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
_08006CC0: .4byte gUnknown_0849CE78
_08006CC4: .4byte 0x05000380
_08006CC8: .4byte 0x04000010
_08006CCC: .4byte 0x00000634
_08006CD0: .4byte 0x06017300

	thumb_func_start sub_08006CD4
sub_08006CD4: @ 0x08006CD4
	push {r4, lr}
	ldr r1, _08006CFC @ =gUnknown_08486E54
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
_08006CFC: .4byte gUnknown_08486E54
_08006D00: .4byte 0x05000300
_08006D04: .4byte 0x04000010
_08006D08: .4byte 0x06015500

	thumb_func_start sub_08006D0C
sub_08006D0C: @ 0x08006D0C
	push {r4, lr}
	ldr r1, _08006D34 @ =gUnknown_084912AC
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
_08006D34: .4byte gUnknown_084912AC
_08006D38: .4byte 0x05000340
_08006D3C: .4byte 0x04000010
_08006D40: .4byte 0x06016400

	thumb_func_start sub_08006D44
sub_08006D44: @ 0x08006D44
	push {r4, lr}
	ldr r1, _08006D6C @ =gUnknown_084B51A4
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
_08006D6C: .4byte gUnknown_084B51A4
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
	ldr r0, _08007220 @ =gUnknown_083DB0DC
	adds r0, r6, r0
	ldrb r1, [r0]
	adds r6, #1
	lsls r1, r1, #5
	ldr r0, _08007224 @ =gUnknown_083DAB7C
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
_08007220: .4byte gUnknown_083DB0DC
_08007224: .4byte gUnknown_083DAB7C
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
	ldr r6, _080072F4 @ =gUnknown_083D8C04
	mov r0, r8
	cmp r0, #1
	bne _0800728E
	ldr r6, _080072F8 @ =gUnknown_083D9AC0
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
	ldr r0, _08007310 @ =gUnknown_03FF03FF
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
_080072F4: .4byte gUnknown_083D8C04
_080072F8: .4byte gUnknown_083D9AC0
_080072FC: .4byte 0x05000120
_08007300: .4byte 0x04000008
_08007304: .4byte 0x0600F000
_08007308: .4byte 0x000003FF
_0800730C: .4byte 0x0100000F
_08007310: .4byte 0x03FF03FF
_08007314: .4byte 0x0500001E
_08007318: .4byte 0x0600F01E
_0800731C:
	ldr r6, _08007354 @ =gUnknown_083D98A4
	mov r0, r8
	cmp r0, #1
	bne _08007326
	ldr r6, _08007358 @ =gUnknown_083DA960
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
_08007354: .4byte gUnknown_083D98A4
_08007358: .4byte gUnknown_083DA960
_0800735C: .4byte 0x0600F01E
_08007360: .4byte 0x06009600
_08007364: .4byte 0x90909090
_08007368:
	mov r0, r8
	cmp r0, #0
	beq _08007378
	ldr r6, _08007374 @ =gUnknown_083D9AE0
	movs r2, #0x3a
	b _0800737C
	.align 2, 0
_08007374: .4byte gUnknown_083D9AE0
_08007378:
	ldr r6, _0800739C @ =gUnknown_083D8C24
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
_0800739C: .4byte gUnknown_083D8C24
_080073A0: .4byte 0x06009600

	thumb_func_start sub_080073A4
sub_080073A4: @ 0x080073A4
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r4, r2, #0
	lsls r2, r0, #1
	adds r2, r2, r0
	adds r7, r2, #3
	ldr r5, _080073C8 @ =gUnknown_030013D0
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
_080073C8: .4byte gUnknown_030013D0
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
	ldr r1, _08007570 @ =gUnknown_0830E99F
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
_08007570: .4byte gUnknown_0830E99F

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
	ldr r0, _080075B8 @ =gUnknown_083E2564
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
_080075B8: .4byte gUnknown_083E2564
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
	ldr r1, _08007810 @ =gUnknown_083E2584
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
_08007810: .4byte gUnknown_083E2584
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
	ldr r1, _08007A04 @ =gUnknown_0830E9A2
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
_08007A04: .4byte gUnknown_0830E9A2
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
	ldr r5, _08007B04 @ =gUnknown_030013B0
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0
	bl sub_08004CF0
	ldr r0, _08007B08 @ =gUnknown_083E259C
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
_08007B04: .4byte gUnknown_030013B0
_08007B08: .4byte gUnknown_083E259C

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
	ldr r1, _08007C20 @ =gUnknown_030013D0
	mov r8, r1
	cmp r0, #0
	bne _08007C24
	mov r0, r8
	adds r1, r5, #0
	bl sub_08004D2C
	b _08007C92
	.align 2, 0
_08007C20: .4byte gUnknown_030013D0
_08007C24:
	ldr r0, _08007C4C @ =gUnknown_0200C190
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
_08007C4C: .4byte gUnknown_0200C190
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
	ldr r3, _08007CA0 @ =gUnknown_0830EB38
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
_08007CA0: .4byte gUnknown_0830EB38

	thumb_func_start sub_08007CA4
sub_08007CA4: @ 0x08007CA4
	push {lr}
	ldr r1, _08007CCC @ =gUnknown_0200C190
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
_08007CCC: .4byte gUnknown_0200C190
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
	ldr r1, _08007E6C @ =gUnknown_083D8534
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
_08007E6C: .4byte gUnknown_083D8534
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
	ldr r1, _08007F40 @ =gUnknown_0830EB40
	ldr r2, [r0, #0x18]
	mov r0, sp
	bl sub_0803DFE0
	mov r0, sp
	bl sub_080050A8
	add sp, #0x100
	pop {r0}
	bx r0
	.align 2, 0
_08007F40: .4byte gUnknown_0830EB40

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
	ldr r4, _08007F7C @ =gUnknown_083E1994
	movs r6, #0x14
	b _08007FB4
	.align 2, 0
_08007F7C: .4byte gUnknown_083E1994
_08007F80:
	ldr r4, _08007F88 @ =gUnknown_083E1C78
	movs r6, #0x14
	b _08007FB4
	.align 2, 0
_08007F88: .4byte gUnknown_083E1C78
_08007F8C:
	ldr r4, _08007F94 @ =gUnknown_083E1F5C
	movs r6, #0x10
	b _08007FB4
	.align 2, 0
_08007F94: .4byte gUnknown_083E1F5C
_08007F98:
	ldr r4, _08007FA0 @ =gUnknown_083E221C
	movs r6, #0x10
	b _08007FB4
	.align 2, 0
_08007FA0: .4byte gUnknown_083E221C
_08007FA4:
	ldr r4, _08007FAC @ =gUnknown_083E23EC
	movs r6, #0x10
	b _08007FB4
	.align 2, 0
_08007FAC: .4byte gUnknown_083E23EC
_08007FB0:
	ldr r4, _08007FC0 @ =gUnknown_083E250C
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
_08007FC0: .4byte gUnknown_083E250C
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
	ldr r1, _08008018 @ =gUnknown_0830EB48
	adds r0, r2, #0
	bl sub_08007F24
_08008012:
	pop {r0}
	bx r0
	.align 2, 0
_08008018: .4byte gUnknown_0830EB48

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
	ldr r1, _0800817C @ =gUnknown_0830EB70
	adds r0, r4, #0
	bl sub_08007F24
_08008176:
	adds r5, #2
	b _0800818A
	.align 2, 0
_0800817C: .4byte gUnknown_0830EB70
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
	ldr r1, _08008238 @ =gUnknown_0830EB88
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
	ldr r1, _0800823C @ =gUnknown_0830EBA0
	bl sub_0800801C
	adds r4, #1
	cmp r4, r5
	blo _080081F8
_08008206:
	movs r0, #1
	ands r0, r7
	cmp r0, #0
	beq _08008216
	ldr r1, _08008240 @ =gUnknown_0830EBA4
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
	ldr r1, _08008244 @ =gUnknown_0830EBA8
	adds r0, r6, #0
	bl sub_0800808C
	b _08008256
	.align 2, 0
_08008238: .4byte gUnknown_0830EB88
_0800823C: .4byte gUnknown_0830EBA0
_08008240: .4byte gUnknown_0830EBA4
_08008244: .4byte gUnknown_0830EBA8
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
	ldr r1, _080082C0 @ =gUnknown_0830EBAC
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
	ldr r1, _080082C4 @ =gUnknown_0830EBC4
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
_080082C0: .4byte gUnknown_0830EBAC
_080082C4: .4byte gUnknown_0830EBC4

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
	ldr r1, _08008324 @ =gUnknown_0830EBC8
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
_08008324: .4byte gUnknown_0830EBC8

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
	ldr r1, _08008350 @ =gUnknown_0830EBE4
	adds r0, r4, #0
	bl sub_08007F24
	b _0800836C
	.align 2, 0
_08008350: .4byte gUnknown_0830EBE4
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
	ldr r1, _080083A0 @ =gUnknown_0830EC04
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
	ldr r1, _080083A4 @ =gUnknown_0830EC24
	adds r0, r4, #0
	bl sub_0800808C
	adds r0, r4, #0
	bl sub_08007FE8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080083A0: .4byte gUnknown_0830EC04
_080083A4: .4byte gUnknown_0830EC24

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
	ldr r0, _08008414 @ =gUnknown_030013B0
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
_08008414: .4byte gUnknown_030013B0
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
	ldr r1, _0800858C @ =gUnknown_0830EC28
	adds r0, r4, #0
	bl sub_0800808C
	ldr r1, [r5, #8]
	adds r0, r4, #0
	bl sub_0800819C
	ldr r1, _08008590 @ =gUnknown_0830EC34
	ldrb r2, [r5, #0xc]
	adds r0, r4, #0
	bl sub_080081B0
	ldr r1, _08008594 @ =gUnknown_0830EC40
	ldrb r2, [r5, #0xd]
	adds r0, r4, #0
	bl sub_080081B0
	ldr r1, _08008598 @ =gUnknown_0830EC4C
	ldrb r2, [r5, #0xe]
	adds r0, r4, #0
	bl sub_080081B0
	ldr r1, _0800859C @ =gUnknown_0830EC58
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
_0800858C: .4byte gUnknown_0830EC28
_08008590: .4byte gUnknown_0830EC34
_08008594: .4byte gUnknown_0830EC40
_08008598: .4byte gUnknown_0830EC4C
_0800859C: .4byte gUnknown_0830EC58

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
	ldr r1, _08008620 @ =gUnknown_0830EC64
	ldrb r2, [r5, #4]
	adds r0, r4, #0
	bl sub_08008268
	ldr r1, _08008624 @ =gUnknown_0830EC70
	ldrb r2, [r5, #5]
	adds r0, r4, #0
	bl sub_08008268
	ldr r1, _08008628 @ =gUnknown_0830EC7C
	ldrb r2, [r5, #6]
	adds r0, r4, #0
	bl sub_08008268
	ldr r1, _0800862C @ =gUnknown_0830EC88
	ldrb r2, [r5, #7]
	adds r0, r4, #0
	bl sub_08008268
	ldr r1, _08008630 @ =gUnknown_0830EC94
	ldrb r2, [r5, #8]
	adds r0, r4, #0
	bl sub_08008268
	ldr r0, [r4, #0x1c]
	movs r1, #3
	bl sub_08004D0C
	ldr r1, _08008634 @ =gUnknown_0830ECA0
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
_08008620: .4byte gUnknown_0830EC64
_08008624: .4byte gUnknown_0830EC70
_08008628: .4byte gUnknown_0830EC7C
_0800862C: .4byte gUnknown_0830EC88
_08008630: .4byte gUnknown_0830EC94
_08008634: .4byte gUnknown_0830ECA0

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
	ldr r1, _08008694 @ =gUnknown_0830EC64
	ldrb r2, [r5, #4]
	adds r0, r4, #0
	bl sub_080082C8
	ldr r1, _08008698 @ =gUnknown_0830ECAC
	ldrb r2, [r5, #5]
	adds r0, r4, #0
	bl sub_08008328
	ldr r1, _0800869C @ =gUnknown_0830EC70
	ldrb r2, [r5, #6]
	adds r0, r4, #0
	bl sub_080082C8
	ldr r0, [r4, #0x1c]
	movs r1, #3
	bl sub_08004D0C
	ldr r1, _080086A0 @ =gUnknown_0830ECB8
	adds r0, r4, #0
	bl sub_0800808C
	ldr r0, [r4, #0x1c]
	movs r1, #0
	bl sub_08004D0C
	ldrb r0, [r5, #7]
	cmp r0, #0
	beq _080086A8
	ldr r1, _080086A4 @ =gUnknown_0830ECC4
	adds r0, r4, #0
	bl sub_0800819C
	b _080086B0
	.align 2, 0
_08008694: .4byte gUnknown_0830EC64
_08008698: .4byte gUnknown_0830ECAC
_0800869C: .4byte gUnknown_0830EC70
_080086A0: .4byte gUnknown_0830ECB8
_080086A4: .4byte gUnknown_0830ECC4
_080086A8:
	ldr r1, _080086E8 @ =gUnknown_0830ECCC
	adds r0, r4, #0
	bl sub_0800819C
_080086B0:
	ldr r0, [r4, #0x1c]
	movs r1, #3
	bl sub_08004D0C
	ldr r1, _080086EC @ =gUnknown_0830ECD4
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
_080086E8: .4byte gUnknown_0830ECCC
_080086EC: .4byte gUnknown_0830ECD4

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
	ldr r1, _0800875C @ =gUnknown_0830ECDC
	ldrb r2, [r5, #4]
	adds r0, r4, #0
	bl sub_080082C8
	ldr r1, _08008760 @ =gUnknown_0830ECEC
	ldrb r2, [r5, #5]
	adds r0, r4, #0
	bl sub_080082C8
	ldr r1, _08008764 @ =gUnknown_0830ECFC
	ldrb r2, [r5, #6]
	adds r0, r4, #0
	bl sub_080082C8
	ldr r0, [r4, #0x1c]
	movs r1, #3
	bl sub_08004D0C
	ldr r1, _08008768 @ =gUnknown_0830ECD4
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
_0800875C: .4byte gUnknown_0830ECDC
_08008760: .4byte gUnknown_0830ECEC
_08008764: .4byte gUnknown_0830ECFC
_08008768: .4byte gUnknown_0830ECD4

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
	ldr r1, _080087C4 @ =gUnknown_0830ED0C
	ldrb r2, [r5, #4]
	adds r0, r4, #0
	bl sub_08008328
	ldr r0, [r4, #0x1c]
	movs r1, #3
	bl sub_08004D0C
	ldr r1, _080087C8 @ =gUnknown_0830ED20
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
_080087C4: .4byte gUnknown_0830ED0C
_080087C8: .4byte gUnknown_0830ED20

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
	ldr r1, _08008840 @ =gUnknown_0830ED2C
	adds r0, r4, #0
	bl sub_0800819C
	b _080088AA
	.align 2, 0
_08008840: .4byte gUnknown_0830ED2C
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
	ldr r1, _08008958 @ =gUnknown_0830ED43
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
	ldr r3, _0800895C @ =gUnknown_02000008
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
	ldr r1, _08008964 @ =gUnknown_083D8534
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
_08008958: .4byte gUnknown_0830ED43
_0800895C: .4byte gUnknown_02000008
_08008960: .4byte 0x05000100
_08008964: .4byte gUnknown_083D8534

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
	ldr r1, _08008B04 @ =gUnknown_083DC6D4
	movs r2, #0x40
	bl sub_080002C4
	pop {r0}
	bx r0
	.align 2, 0
_08008B00: .4byte 0x05000180
_08008B04: .4byte gUnknown_083DC6D4

	thumb_func_start sub_08008B08
sub_08008B08: @ 0x08008B08
	push {r4, r5, r6, r7, lr}
	lsls r3, r2, #5
	adds r3, r3, r2
	lsls r3, r3, #6
	ldr r2, _08008B48 @ =gUnknown_083DC714
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
_08008B48: .4byte gUnknown_083DC714

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
	ldr r4, _08008D6C @ =gUnknown_0830ED48
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
_08008D6C: .4byte gUnknown_0830ED48

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
	ldr r0, _08008E30 @ =gUnknown_083D8AF4
	adds r0, r7, r0
	ldrb r1, [r0]
	adds r7, #1
	lsls r1, r1, #5
	ldr r0, _08008E34 @ =gUnknown_083D8554
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
	ldr r0, _08008E38 @ =gUnknown_083D8534
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
_08008E30: .4byte gUnknown_083D8AF4
_08008E34: .4byte gUnknown_083D8554
_08008E38: .4byte gUnknown_083D8534
_08008E3C: .4byte 0x05000100
_08008E40: .4byte 0x00000603
_08008E44: .4byte 0x00000601
_08008E48:
	mov r0, r8
	movs r1, #0
	bl sub_08007B0C
_08008E50:
	ldr r4, _08008FA8 @ =gUnknown_030013B0
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
	ldr r5, _08008FBC @ =gUnknown_083DB20C
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
	ldr r0, _08008FC8 @ =gUnknown_03FF03FF
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
	ldr r0, _08008FD0 @ =gUnknown_083DB1EC
	mov sl, r0
	ldr r1, _08008FD4 @ =gUnknown_083DC60C
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
	ldr r1, _08008FEC @ =gUnknown_0830E99F
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
_08008FA8: .4byte gUnknown_030013B0
_08008FAC: .4byte 0x000005FC
_08008FB0: .4byte 0x0000060C
_08008FB4: .4byte 0x00000635
_08008FB8: .4byte 0x00000636
_08008FBC: .4byte gUnknown_083DB20C
_08008FC0: .4byte 0x0600A500
_08008FC4: .4byte 0x0600E800
_08008FC8: .4byte 0x03FF03FF
_08008FCC: .4byte 0x05000200
_08008FD0: .4byte gUnknown_083DB1EC
_08008FD4: .4byte gUnknown_083DC60C
_08008FD8: .4byte 0x05000160
_08008FDC: .4byte 0x04000008
_08008FE0: .4byte 0x0400001A
_08008FE4: .4byte 0x0000FF60
_08008FE8: .4byte 0x00000602
_08008FEC: .4byte gUnknown_0830E99F
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
	ldr r1, _0800909C @ =gUnknown_0830E99F
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
_0800909C: .4byte gUnknown_0830E99F
_080090A0: .4byte 0x00000603
_080090A4: .4byte 0x00000614

	thumb_func_start sub_080090A8
sub_080090A8: @ 0x080090A8
	push {r4, r5, r6, lr}
	sub sp, #0x8c
	adds r5, r0, #0
	ldr r0, _08009164 @ =gUnknown_0200C190
	str r5, [r0]
	bl sub_08000B84
	bl sub_0800469C
	ldr r4, _08009168 @ =gUnknown_02001CC0
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
_08009164: .4byte gUnknown_0200C190
_08009168: .4byte gUnknown_02001CC0
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
	ldr r0, _08009228 @ =gUnknown_02000008
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
_08009228: .4byte gUnknown_02000008
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
	ldr r0, _08009278 @ =gUnknown_02000020
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
_08009278: .4byte gUnknown_02000020
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
	ldr r0, _080092C4 @ =gUnknown_02000004
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
_080092C4: .4byte gUnknown_02000004
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
	ldr r1, _08009440 @ =gUnknown_02000020
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
	ldr r0, _08009460 @ =gUnknown_030013B0
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
	ldr r0, _0800946C @ =gUnknown_02001CC0
	bl sub_08004594
	add sp, #0x8c
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08009440: .4byte gUnknown_02000020
_08009444: .4byte 0x000005F9
_08009448: .4byte 0x00000601
_0800944C: .4byte 0x00000604
_08009450: .4byte 0x0000060C
_08009454: .4byte 0x00000605
_08009458: .4byte 0x00000612
_0800945C: .4byte 0x00000603
_08009460: .4byte gUnknown_030013B0
_08009464: .4byte 0x00000606
_08009468: .4byte sub_0803D380
_0800946C: .4byte gUnknown_02001CC0

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
	ldr r4, _080094DC @ =gUnknown_030013D0
	cmp r1, #0
	bne _080094E0
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08004D2C
	b _0800950C
	.align 2, 0
_080094DC: .4byte gUnknown_030013D0
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
	ldr r5, _080095F8 @ =gUnknown_0830ED58
	ldr r4, _080095FC @ =gUnknown_030013B0
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
	ldr r4, _080095FC @ =gUnknown_030013B0
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
_080095F8: .4byte gUnknown_0830ED58
_080095FC: .4byte gUnknown_030013B0
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
	ldr r7, _08009624 @ =gUnknown_030013B0
	cmp r0, #0
	bne _08009628
	adds r0, r7, #0
	bl sub_08004D2C
	b _08009666
	.align 2, 0
_08009624: .4byte gUnknown_030013B0
_08009628:
	movs r2, #0
	cmp r0, #1
	bne _08009630
	movs r2, #2
_08009630:
	adds r0, r7, #0
	movs r1, #1
	bl sub_08004CF0
	ldr r0, _08009674 @ =gUnknown_02001D10
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
_08009674: .4byte gUnknown_02001D10

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
	ldr r4, _080096F4 @ =gUnknown_030013B0
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
_080096F4: .4byte gUnknown_030013B0
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
	ldr r1, _080097BC @ =gUnknown_02001D10
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
_080097BC: .4byte gUnknown_02001D10
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
	ldr r5, _080098F8 @ =gUnknown_030013B0
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
_080098F8: .4byte gUnknown_030013B0
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
	ldr r1, _08009978 @ =gUnknown_0830ED7C
	add r0, sp, #4
	bl sub_0803DFE0
	movs r2, #2
	b _08009996
	.align 2, 0
_08009978: .4byte gUnknown_0830ED7C
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
	ldr r0, _08009A78 @ =gUnknown_02000004
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
	ldr r0, _08009A7C @ =gUnknown_02000020
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
_08009A78: .4byte gUnknown_02000004
_08009A7C: .4byte gUnknown_02000020
_08009A80:
	cmp r0, #2
	beq _08009AA0
	movs r0, #0x77
	bl sub_080005D8
_08009A8A:
	ldr r0, _08009A9C @ =gUnknown_02000020
	ldrh r1, [r0]
	movs r0, #0xa
	ands r0, r1
	cmp r0, #0
	bne _08009AA0
	movs r0, #0
	b _08009AB2
	.align 2, 0
_08009A9C: .4byte gUnknown_02000020
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
	ldr r1, _08009CE4 @ =gUnknown_03001380
	ldr r0, _08009CE8 @ =gUnknown_030013D0
	b _08009CF0
	.align 2, 0
_08009CE4: .4byte gUnknown_03001380
_08009CE8: .4byte gUnknown_030013D0
_08009CEC:
	ldr r1, _08009D0C @ =gUnknown_03001380
	ldr r0, _08009D10 @ =gUnknown_030013B0
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
_08009D0C: .4byte gUnknown_03001380
_08009D10: .4byte gUnknown_030013B0

	thumb_func_start sub_08009D14
sub_08009D14: @ 0x08009D14
	ldr r1, _08009D24 @ =gUnknown_03001380
	ldr r1, [r1]
	lsls r0, r0, #2
	ldrh r2, [r1, #0x18]
	adds r0, r0, r2
	strh r0, [r1, #0x1a]
	bx lr
	.align 2, 0
_08009D24: .4byte gUnknown_03001380

	thumb_func_start sub_08009D28
sub_08009D28: @ 0x08009D28
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08009D48 @ =gUnknown_03001380
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
_08009D48: .4byte gUnknown_03001380

	thumb_func_start sub_08009D4C
sub_08009D4C: @ 0x08009D4C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r3, r2, #0
	ldr r0, _08009D68 @ =gUnknown_03001380
	ldr r0, [r0]
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_08004E28
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08009D68: .4byte gUnknown_03001380

	thumb_func_start sub_08009D6C
sub_08009D6C: @ 0x08009D6C
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	ldr r0, _08009D90 @ =gUnknown_03001380
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
_08009D90: .4byte gUnknown_03001380

	thumb_func_start sub_08009D94
sub_08009D94: @ 0x08009D94
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r3, r2, #0
	ldr r0, _08009DB0 @ =gUnknown_03001380
	ldr r0, [r0]
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_08004D2C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08009DB0: .4byte gUnknown_03001380

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
	ldr r0, _08009E60 @ =gUnknown_03001380
	ldr r0, [r0]
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_08009E64
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08009E60: .4byte gUnknown_03001380

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
	ldr r2, _08009F68 @ =gUnknown_083E25D0
	movs r1, #3
	ands r1, r0
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r0, [r1]
	pop {r1}
	bx r1
	.align 2, 0
_08009F68: .4byte gUnknown_083E25D0
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
	ldr r4, _08009FFC @ =gUnknown_085371D8
	bl sub_0800D8A4
	ldr r1, _0800A000 @ =gUnknown_083E4F04
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
	ldr r0, _0800A004 @ =gUnknown_0830ED84
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
_08009FFC: .4byte gUnknown_085371D8
_0800A000: .4byte gUnknown_083E4F04
_0800A004: .4byte gUnknown_0830ED84
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
	ldr r0, _0800A08C @ =gUnknown_02001CC0
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
	ldr r0, _0800A08C @ =gUnknown_02001CC0
	bl sub_08004604
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800A08C: .4byte gUnknown_02001CC0
_0800A090: .4byte 0x7F7F7F80

	thumb_func_start sub_0800A094
sub_0800A094: @ 0x0800A094
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	adds r1, r4, #0
	bl sub_08000634
	ldr r0, _0800A0B0 @ =gUnknown_0200C1A0
	ldr r1, _0800A0B4 @ =0x000023F4
	adds r0, r0, r1
	strh r4, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800A0B0: .4byte gUnknown_0200C1A0
_0800A0B4: .4byte 0x000023F4

	thumb_func_start sub_0800A0B8
sub_0800A0B8: @ 0x0800A0B8
	push {lr}
	movs r0, #0
	movs r1, #1
	bl sub_08000694
	ldr r0, _0800A0D0 @ =gUnknown_0200C1A0
	ldr r1, _0800A0D4 @ =0x000023F4
	adds r0, r0, r1
	ldr r1, _0800A0D8 @ =0x0000FFFF
	strh r1, [r0]
	pop {r0}
	bx r0
	.align 2, 0
_0800A0D0: .4byte gUnknown_0200C1A0
_0800A0D4: .4byte 0x000023F4
_0800A0D8: .4byte 0x0000FFFF

	thumb_func_start sub_0800A0DC
sub_0800A0DC: @ 0x0800A0DC
	ldr r0, _0800A0E8 @ =gUnknown_0200C1A0
	ldr r1, _0800A0EC @ =0x000023F4
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	bx lr
	.align 2, 0
_0800A0E8: .4byte gUnknown_0200C1A0
_0800A0EC: .4byte 0x000023F4

	thumb_func_start sub_0800A0F0
sub_0800A0F0: @ 0x0800A0F0
	ldr r1, _0800A104 @ =0x04000050
	movs r0, #0xff
	strh r0, [r1]
	ldr r0, _0800A108 @ =0x04000054
	movs r1, #0x10
	strh r1, [r0]
	ldr r0, _0800A10C @ =gUnknown_02001D0C
	strb r1, [r0]
	bx lr
	.align 2, 0
_0800A104: .4byte 0x04000050
_0800A108: .4byte 0x04000054
_0800A10C: .4byte gUnknown_02001D0C

	thumb_func_start sub_0800A110
sub_0800A110: @ 0x0800A110
	ldr r0, _0800A11C @ =0x04000050
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0800A120 @ =gUnknown_02001D0C
	strb r1, [r0]
	bx lr
	.align 2, 0
_0800A11C: .4byte 0x04000050
_0800A120: .4byte gUnknown_02001D0C

	thumb_func_start sub_0800A124
sub_0800A124: @ 0x0800A124
	push {lr}
	adds r1, r0, #0
	ldr r2, _0800A144 @ =gUnknown_02001D0C
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
_0800A144: .4byte gUnknown_02001D0C
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
	ldr r0, _0800A19C @ =gUnknown_02001D0C
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
	ldr r1, _0800A19C @ =gUnknown_02001D0C
	movs r0, #0x10
	strb r0, [r1]
_0800A196:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800A19C: .4byte gUnknown_02001D0C
_0800A1A0: .4byte 0x04000050

	thumb_func_start sub_0800A1A4
sub_0800A1A4: @ 0x0800A1A4
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, _0800A1E4 @ =gUnknown_02001D0C
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
	ldr r0, _0800A1E4 @ =gUnknown_02001D0C
	strb r1, [r0]
_0800A1DE:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800A1E4: .4byte gUnknown_02001D0C
_0800A1E8: .4byte 0x04000050

	thumb_func_start sub_0800A1EC
sub_0800A1EC: @ 0x0800A1EC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08000BC0
	cmp r4, #0
	bne _0800A20C
	ldr r0, _0800A208 @ =gUnknown_02000020
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800A238
_0800A204:
	movs r0, #1
	b _0800A23A
	.align 2, 0
_0800A208: .4byte gUnknown_02000020
_0800A20C:
	cmp r4, #1
	beq _0800A224
	ldr r0, _0800A220 @ =gUnknown_02000020
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800A228
	b _0800A204
	.align 2, 0
_0800A220: .4byte gUnknown_02000020
_0800A224:
	ldr r0, _0800A234 @ =gUnknown_02000020
	ldrh r1, [r0]
_0800A228:
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0800A238
	movs r0, #2
	b _0800A23A
	.align 2, 0
_0800A234: .4byte gUnknown_02000020
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
	ldr r1, _0800A284 @ =gUnknown_02001D0C
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
_0800A284: .4byte gUnknown_02001D0C
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
	ldr r1, _0800A2C8 @ =gUnknown_02001D0C
	movs r0, #0x10
	strb r0, [r1]
	movs r0, #0
_0800A2BC:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0800A2C4: .4byte 0x04000050
_0800A2C8: .4byte gUnknown_02001D0C

	thumb_func_start sub_0800A2CC
sub_0800A2CC: @ 0x0800A2CC
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r1, _0800A2EC @ =gUnknown_02001D0C
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
_0800A2EC: .4byte gUnknown_02001D0C
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
	ldr r0, _0800A338 @ =gUnknown_02001D0C
	strb r1, [r0]
	movs r0, #0
_0800A32E:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0800A334: .4byte 0x04000050
_0800A338: .4byte gUnknown_02001D0C
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

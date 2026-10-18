.include "asm/gba_constants.inc"
.include "asm/macro.inc"
.syntax unified

	thumb_func_start umul3232H32
umul3232H32: @ 0x080023D4
	adr r2, __umul3232H32
	bx r2
	.arm
__umul3232H32: @ 0x080023D8
	umull r2, r3, r0, r1
	add r0, r3, 0
	bx lr

	thumb_func_start SoundMain
SoundMain: @ 0x080023E4
	ldr r0, _08002450 @ =i_SOUND_AREA_ADR
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
	ldr r2, _0800245C @ =REG_VCOUNT
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
	bl _08002806
	ldr r0, [sp, #0x18]
_08002426:
	ldr r3, [r0, #0x28]
	bl _08002806
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
_08002450: .4byte i_SOUND_AREA_ADR
_08002454: .4byte 0x68736D53
_08002458: .4byte gUnknown_03000749
_0800245C: .4byte REG_VCOUNT
_08002460: .4byte 0x00000350
_08002464: .4byte 0x00000630

	thumb_func_start SoundMainRAM
SoundMainRAM: @ 0x08002468
	ldrb r3, [r0, #5]
	cmp r3, #0
	beq SoundMainRAM_NoReverb
	add r1, pc, #0x4 @ =SoundMainRAM_Reverb
	bx r1
	.arm
SoundMainRAM_Reverb: @ 0x08002474
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
	add r0, pc, #0x2F @ =_080024F6
	bx r0
	.thumb
SoundMainRAM_NoReverb: @ 0x080024C8
	movs r0, #0
	mov r1, r8
	adds r6, r6, r5
	lsrs r1, r1, #3
	blo SoundMainRAM_NoReverb_Ok
	stm r5!, {r0}
	stm r6!, {r0}
SoundMainRAM_NoReverb_Ok:
	lsrs r1, r1, #1
	blo SoundMainRAM_NoReverb_Loop
	stm r5!, {r0}
	stm r6!, {r0}
	stm r5!, {r0}
	stm r6!, {r0}
SoundMainRAM_NoReverb_Loop:
	stm r5!, {r0}
	stm r6!, {r0}
	stm r5!, {r0}
	stm r6!, {r0}
	stm r5!, {r0}
	stm r6!, {r0}
	stm r5!, {r0}
	stm r6!, {r0}
	subs r1, #1
	bgt SoundMainRAM_NoReverb_Loop
_080024F6:
	ldr r4, [sp, #0x18]
	ldr r0, [r4, #0x18]
	mov ip, r0
	ldrb r0, [r4, #6]
	adds r4, #0x50

SoundMainRAM_ChanLoop:
	str r0, [sp, #4]
	ldr r3, [r4, #0x24]
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _08002520
	ldr r1, _0800251C @ =REG_VCOUNT
	ldrb r1, [r1]
	cmp r1, #0xa0
	bhs _08002514
	adds r1, #0xe4
_08002514:
	cmp r1, r0
	blo _08002520
	b _080027F2
	.align 2, 0
_0800251C: .4byte REG_VCOUNT

_08002520:
	ldrb r6, [r4]
	movs r0, #0xc7
	tst r0, r6
	bne _0800252A
	b _080027E8
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
	b _080027E8
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
	add r0, pc, #0x4 @ =_08002600
	bx r0
	.arm
_08002600: @ 0x08002600
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
	add r0, pc, #0x1 @ =_080027E8
	bx r0
	.thumb
_080027E8: @ 0x080027E8
	ldr r0, [sp, #4]
	subs r0, #1
	ble _080027F2
	adds r4, #0x40
	b SoundMainRAM_ChanLoop
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
_08002806: @ 0x08002806
	bx r3
	.align 2, 0
_08002808: .4byte 0x68736D53

	thumb_func_start RealClear64byte
RealClear64byte: @ 0x0800280C
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

	thumb_func_start RealClearChain
RealClearChain: @ 0x08002824
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

	thumb_func_start ply_fine
ply_fine: @ 0x08002844
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
	bl RealClearChain
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

	thumb_func_start MPlyJmpTblCopy
MPlyJmpTblCopy: @ 0x08002874
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

	thumb_func_start ldrb_r3_r2
ldrb_r3_r2: @ 0x0800288C
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

	thumb_func_start ld_r3_tp_adr_i
ld_r3_tp_adr_i: @ 0x080028A8
	ldr r2, [r1, #0x40]
_080028AA:
	adds r3, r2, #1
	str r3, [r1, #0x40]
	ldrb r3, [r2]
	b _0800288E
	.align 2, 0

	thumb_func_start ply_goto
ply_goto: @ 0x080028A8
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
	bl ldrb_r3_r2
	orrs r0, r3
	str r0, [r1, #0x40]
	pop {r0}
	bx r0

	thumb_func_start ply_patt
ply_patt: @ 0x080028D4
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
	b ply_goto
_080028EC:
	b ply_fine
	.align 2, 0

	thumb_func_start ply_pend
ply_pend: @ 0x080028F0
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

	thumb_func_start ply_rept
ply_rept: @ 0x08002904
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
	bl ld_r3_tp_adr_i
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

	thumb_func_start ply_prio
ply_prio: @ 0x08002934
	mov ip, lr
	bl ld_r3_tp_adr_i
	strb r3, [r1, #0x1d]
	bx ip
	.align 2, 0

	thumb_func_start ply_tempo
ply_tempo: @ 0x08002940
	mov ip, lr
	bl ld_r3_tp_adr_i
	lsls r3, r3, #1
	strh r3, [r0, #0x1c]
	ldrh r2, [r0, #0x1e]
	muls r3, r2, r3
	lsrs r3, r3, #8
	strh r3, [r0, #0x20]
	bx ip

	thumb_func_start ply_keysh
ply_keysh: @ 0x08002954
	mov ip, lr
	bl ld_r3_tp_adr_i
	strb r3, [r1, #0xa]
	ldrb r3, [r1]
	movs r2, #0xc
	orrs r3, r2
	strb r3, [r1]
	bx ip
	.align 2, 0

	thumb_func_start ply_voice
ply_voice: @ 0x08002968
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

	thumb_func_start ply_vol
ply_vol: @ 0x08002998
	mov ip, lr
	bl ld_r3_tp_adr_i
	strb r3, [r1, #0x12]
	ldrb r3, [r1]
	movs r2, #3
	orrs r3, r2
	strb r3, [r1]
	bx ip
	.align 2, 0

	thumb_func_start ply_pan
ply_pan: @ 0x080029AC
	mov ip, lr
	bl ld_r3_tp_adr_i
	subs r3, #0x40
	strb r3, [r1, #0x14]
	ldrb r3, [r1]
	movs r2, #3
	orrs r3, r2
	strb r3, [r1]
	bx ip

	thumb_func_start ply_bend
ply_bend: @ 0x080029C0
	mov ip, lr
	bl ld_r3_tp_adr_i
	subs r3, #0x40
	strb r3, [r1, #0xe]
	ldrb r3, [r1]
	movs r2, #0xc
	orrs r3, r2
	strb r3, [r1]
	bx ip

	thumb_func_start ply_bendr
ply_bendr: @ 0x080029D4
	mov ip, lr
	bl ld_r3_tp_adr_i
	strb r3, [r1, #0xf]
	ldrb r3, [r1]
	movs r2, #0xc
	orrs r3, r2
	strb r3, [r1]
	bx ip
	.align 2, 0

	thumb_func_start ply_lfodl
ply_lfodl: @ 0x080029E8
	mov ip, lr
	bl ld_r3_tp_adr_i
	strb r3, [r1, #0x1b]
	bx ip
	.align 2, 0

	thumb_func_start ply_modt
ply_modt: @ 0x080029F4
	mov ip, lr
	bl ld_r3_tp_adr_i
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

	thumb_func_start ply_tune
ply_tune: @ 0x08002A0C
	mov ip, lr
	bl ld_r3_tp_adr_i
	subs r3, #0x40
	strb r3, [r1, #0xc]
	ldrb r3, [r1]
	movs r2, #0xc
	orrs r3, r2
	strb r3, [r1]
	bx ip

	thumb_func_start ply_port
ply_port: @ 0x08002A20
	mov ip, lr
	ldr r2, [r1, #0x40]
	ldrb r3, [r2]
	adds r2, #1
	ldr r0, _08002A34 @ =REG_SOUND1CNT_L
	adds r0, r0, r3
	bl _080028AA
	strb r3, [r0]
	bx ip
	.align 2, 0
_08002A34: .4byte REG_SOUND1CNT_L

	thumb_func_start SoundVSync
SoundVSync: @ 0x08002A38
	ldr r0, _08002CE4 @ =i_SOUND_AREA_ADR
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
	ldr r2, _08002A7C @ =REG_DMA1SAD_L
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
_08002A7C: .4byte REG_DMA1SAD_L
_08002A80: .4byte 0x84400004

	thumb_func_start MPlayMain
MPlayMain: @ 0x08002A84
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
	bl call_r3
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
	ldr r0, _08002CE4 @ =i_SOUND_AREA_ADR
	ldr r0, [r0]
	mov r8, r0
	adds r0, r7, #0
	bl FadeOutBody
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
	bl ClearChain
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
	bl Clear64byte
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
	bl call_r3
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
	bl call_r3
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
	bl TrkVolPitSet
	ldr r4, [r5, #0x20]
	cmp r4, #0
	beq _08002CB8
_08002C46:
	ldrb r1, [r4]
	movs r0, #0xc7
	tst r0, r1
	bne _08002C56
	adds r0, r4, #0
	bl ClearChain
	b _08002CB2
_08002C56:
	ldrb r0, [r4, #1]
	movs r6, #7
	ands r6, r0
	ldrb r3, [r5]
	movs r0, #3
	tst r0, r3
	beq _08002C74
	bl ChnVolSetAsm
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
	bl call_r3
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
	bl MidiKey2fr
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

call_r3: @ 0x08002CDC
	bx r3

	.align 2, 0
_08002CE0: .4byte gUnknown_08044220
_08002CE4: .4byte i_SOUND_AREA_ADR
_08002CE8: .4byte 0x68736D53

	thumb_func_start TrackStop
TrackStop: @ 0x08002CEC
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
	ldr r3, _08002D2C @ =i_SOUND_AREA_ADR
	ldr r3, [r3]
	ldr r3, [r3, #0x2c]
	bl call_r3
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
_08002D2C: .4byte i_SOUND_AREA_ADR

	thumb_func_start ChnVolSetAsm
ChnVolSetAsm: @ 0x08002D30
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

	thumb_func_start ply_note
ply_note: @ 0x08002D60
	push {r4, r5, r6, r7, lr}
	mov r4, r8
	mov r5, sb
	mov r6, sl
	mov r7, fp
	push {r4, r5, r6, r7}
	sub sp, #0x18
	str r1, [sp]
	adds r5, r2, #0
	ldr r1, _08002F58 @ =i_SOUND_AREA_ADR
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
	bl ClearChain
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
	bl clear_modM
_08002EC6:
	ldr r0, [sp]
	adds r1, r5, #0
	bl TrkVolPitSet
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
	bl ChnVolSetAsm
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
	bl call_r3
	b _08002F38
_08002F2E:
	ldrb r2, [r5, #9]
	adds r1, r3, #0
	adds r0, r7, #0
	bl MidiKey2fr
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
_08002F58: .4byte i_SOUND_AREA_ADR
_08002F5C: .4byte gUnknown_08044220

	thumb_func_start ply_endtie
ply_endtie: @ 0x08002F60
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

	thumb_func_start clear_modM
clear_modM: @ 0x08002FA0
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

	thumb_func_start ld_r3_tp_adr_i_unchecked
ld_r3_tp_adr_i_unchecked: @ 0x08002FBC
	ldr r2, [r1, #0x40]
	adds r3, r2, #1
	str r3, [r1, #0x40]
	ldrb r3, [r2]
	bx lr
	.align 2, 0

	thumb_func_start ply_lfos
ply_lfos: @ 0x08002FC8
	mov ip, lr
	bl ld_r3_tp_adr_i_unchecked
	strb r3, [r1, #0x19]
	cmp r3, #0
	bne _08002FD8
	bl clear_modM
_08002FD8:
	bx ip
	.align 2, 0

	thumb_func_start ply_mod
ply_mod: @ 0x08002FDC
	mov ip, lr
	bl ld_r3_tp_adr_i_unchecked
	strb r3, [r1, #0x17]
	cmp r3, #0
	bne _08002FEC
	bl clear_modM
_08002FEC:
	bx ip
	.align 2, 0

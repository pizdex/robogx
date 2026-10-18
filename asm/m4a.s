.include "asm/gba_constants.inc"
.include "asm/macro.inc"
.syntax unified

	thumb_func_start MidiKey2fr
MidiKey2fr: @ 0x08002FF0
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
	bl umul3232H32
	adds r1, r0, #0
	adds r1, r5, r1
	adds r0, r4, #0
	bl umul3232H32
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0800304C: .4byte gUnknown_0804403C
_08003050: .4byte gUnknown_080440F0
_08003054:
	.byte 0x70, 0x47, 0x00, 0x00

	thumb_func_start MPlayContinue
MPlayContinue: @ 0x08003058
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

	thumb_func_start MPlayFadeOut
MPlayFadeOut: @ 0x08003074
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

	thumb_func_start m4aSoundInit
m4aSoundInit: @ 0x08003094
	push {r4, r5, r6, lr}
	ldr r0, _080030E8 @ =SoundMainRAM
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	ldr r1, _080030EC @ =gUnknown_03000748
	ldr r2, _080030F0 @ =0x04000100
	bl CpuSet
	ldr r0, _080030F4 @ =gUnknown_02000860
	bl SoundInit
	ldr r0, _080030F8 @ =gUnknown_02001960
	bl MPlayExtender
	ldr r0, _080030FC @ =0x0096EC00
	bl SoundMode
	ldr r0, _08003100 @ =0x00000008
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	beq _080030E2
	ldr r5, _08003104 @ =gMusicPlayerTable
	adds r6, r0, #0
_080030C6:
	ldr r4, [r5]
	ldr r1, [r5, #4]
	ldrb r2, [r5, #8]
	adds r0, r4, #0
	bl MPlayOpen
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
_080030E8: .4byte SoundMainRAM
_080030EC: .4byte gUnknown_03000748
_080030F0: .4byte REG_TM0CNT_L
_080030F4: .4byte gUnknown_02000860
_080030F8: .4byte gUnknown_02001960
_080030FC: .4byte 0x0096EC00
_08003100: .4byte 0x00000008
_08003104: .4byte gMusicPlayerTable
_08003108: .4byte gUnknown_02001B60

	thumb_func_start m4aSoundMain
m4aSoundMain: @ 0x0800310C
	push {lr}
	bl SoundMain
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start m4aSongNumStart
m4aSongNumStart: @ 0x08003118
	push {lr}
	lsls r0, r0, #0x10
	ldr r2, _0800313C @ =gMusicPlayerTable
	ldr r1, _08003140 @ =gSongTable
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
	bl MPlayStart
	pop {r0}
	bx r0
	.align 2, 0
_0800313C: .4byte gMusicPlayerTable
_08003140: .4byte gSongTable

	thumb_func_start m4aSongNumStartOrChange
m4aSongNumStartOrChange: @ 0x08003144
	push {lr}
	lsls r0, r0, #0x10
	ldr r2, _08003170 @ =gMusicPlayerTable
	ldr r1, _08003174 @ =gSongTable
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
	bl MPlayStart
	b _0800318C
	.align 2, 0
_08003170: .4byte gMusicPlayerTable
_08003174: .4byte gSongTable
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
	bl MPlayStart
_0800318C:
	pop {r0}
	bx r0

	thumb_func_start m4aSongNumStartOrContinue
m4aSongNumStartOrContinue: @ 0x08003190
	push {lr}
	lsls r0, r0, #0x10
	ldr r2, _080031BC @ =gMusicPlayerTable
	ldr r1, _080031C0 @ =gSongTable
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
	bl MPlayStart
	b _080031E0
	.align 2, 0
_080031BC: .4byte gMusicPlayerTable
_080031C0: .4byte gSongTable
_080031C4:
	ldr r2, [r1, #4]
	ldrh r0, [r1, #4]
	cmp r0, #0
	bne _080031D6
	adds r0, r1, #0
	adds r1, r3, #0
	bl MPlayStart
	b _080031E0
_080031D6:
	cmp r2, #0
	bge _080031E0
	adds r0, r1, #0
	bl MPlayContinue
_080031E0:
	pop {r0}
	bx r0

	thumb_func_start m4aSongNumStop
m4aSongNumStop: @ 0x080031E4
	push {lr}
	lsls r0, r0, #0x10
	ldr r2, _08003210 @ =gMusicPlayerTable
	ldr r1, _08003214 @ =gSongTable
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
	bl MPlayStop
_0800320A:
	pop {r0}
	bx r0
	.align 2, 0
_08003210: .4byte gMusicPlayerTable
_08003214: .4byte gSongTable

	thumb_func_start m4aSongNumContinue
m4aSongNumContinue: @ 0x08003218
	push {lr}
	lsls r0, r0, #0x10
	ldr r2, _08003244 @ =gMusicPlayerTable
	ldr r1, _08003248 @ =gSongTable
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
	bl MPlayContinue
_0800323E:
	pop {r0}
	bx r0
	.align 2, 0
_08003244: .4byte gMusicPlayerTable
_08003248: .4byte gSongTable

	thumb_func_start m4aMPlayAllStop
m4aMPlayAllStop: @ 0x0800324C
	push {r4, r5, lr}
	ldr r0, _08003270 @ =0x00000008
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	beq _0800326A
	ldr r5, _08003274 @ =gMusicPlayerTable
	adds r4, r0, #0
_0800325C:
	ldr r0, [r5]
	bl MPlayStop
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
_08003274: .4byte gMusicPlayerTable

	thumb_func_start m4aMPlayContinue
m4aMPlayContinue: @ 0x08003278
	push {lr}
	bl MPlayContinue
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start m4aMPlayAllContinue
m4aMPlayAllContinue: @ 0x08003284
	push {r4, r5, lr}
	ldr r0, _080032A8 @ =0x00000008
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	beq _080032A2
	ldr r5, _080032AC @ =gMusicPlayerTable
	adds r4, r0, #0
_08003294:
	ldr r0, [r5]
	bl MPlayContinue
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
_080032AC: .4byte gMusicPlayerTable

	thumb_func_start m4aMPlayFadeOut
m4aMPlayFadeOut: @ 0x080032B0
	push {lr}
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl MPlayFadeOut
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start m4aMPlayFadeOutTemporarily
m4aMPlayFadeOutTemporarily: @ 0x080032C0
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

	thumb_func_start m4aMPlayFadeIn
m4aMPlayFadeIn: @ 0x080032E0
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

	thumb_func_start m4aMPlayImmInit
m4aMPlayImmInit: @ 0x08003308
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
	bl Clear64byte
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

	thumb_func_start MPlayExtender
MPlayExtender: @ 0x08003350
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r1, _08003418 @ =REG_SOUNDCNT_X
	movs r0, #0x8f
	strh r0, [r1]
	ldr r3, _0800341C @ =REG_SOUNDCNT_L
	movs r2, #0
	strh r2, [r3]
	ldr r0, _08003420 @ =REG_NR12
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
	ldr r0, _08003424 @ =i_SOUND_AREA_ADR
	ldr r4, [r0]
	ldr r6, [r4]
	ldr r0, _08003428 @ =0x68736D53
	cmp r6, r0
	bne _08003410
	adds r0, r6, #1
	str r0, [r4]
	ldr r1, _0800342C @ =gUnknown_020018D0
	ldr r0, _08003430 @ =ply_memacc
	str r0, [r1, #0x20]
	ldr r0, _08003434 @ =ply_lfos
	str r0, [r1, #0x44]
	ldr r0, _08003438 @ =ply_mod
	str r0, [r1, #0x4c]
	ldr r0, _0800343C @ =ply_xcmd
	str r0, [r1, #0x70]
	ldr r0, _08003440 @ =ply_endtie
	str r0, [r1, #0x74]
	ldr r0, _08003444 @ =SampFreqSet
	str r0, [r1, #0x78]
	ldr r0, _08003448 @ =TrackStop
	str r0, [r1, #0x7c]
	adds r2, r1, #0
	adds r2, #0x80
	ldr r0, _0800344C @ =FadeOutBody
	str r0, [r2]
	adds r1, #0x84
	ldr r0, _08003450 @ =TrkVolPitSet
	str r0, [r1]
	str r5, [r4, #0x1c]
	ldr r0, _08003454 @ =CgbSound
	str r0, [r4, #0x28]
	ldr r0, _08003458 @ =CgbOscOff
	str r0, [r4, #0x2c]
	ldr r0, _0800345C @ =MidiKey2CgbFr
	str r0, [r4, #0x30]
	ldr r0, _08003460 @ =0x00000000
	movs r1, #0
	strb r0, [r4, #0xc]
	str r1, [sp]
	ldr r2, _08003464 @ =0x05000040
	mov r0, sp
	adds r1, r5, #0
	bl CpuSet
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
_08003418: .4byte REG_SOUNDCNT_X
_0800341C: .4byte REG_SOUNDCNT_L
_08003420: .4byte REG_NR12
_08003424: .4byte i_SOUND_AREA_ADR
_08003428: .4byte 0x68736D53
_0800342C: .4byte gUnknown_020018D0
_08003430: .4byte ply_memacc
_08003434: .4byte ply_lfos
_08003438: .4byte ply_mod
_0800343C: .4byte ply_xcmd
_08003440: .4byte ply_endtie
_08003444: .4byte SampFreqSet
_08003448: .4byte TrackStop
_0800344C: .4byte FadeOutBody
_08003450: .4byte TrkVolPitSet
_08003454: .4byte CgbSound
_08003458: .4byte CgbOscOff
_0800345C: .4byte MidiKey2CgbFr
_08003460: .4byte 0x00000000
_08003464: .4byte 0x05000040
_08003468:
	.byte 0x2A, 0xDF, 0x70, 0x47

	thumb_func_start ClearChain
ClearChain: @ 0x0800346C
	push {lr}
	ldr r1, _0800347C @ =gUnknown_02001958
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0
_0800347C: .4byte gUnknown_02001958

	thumb_func_start Clear64byte
Clear64byte: @ 0x08003480
	push {lr}
	ldr r1, _08003490 @ =gUnknown_0200195C
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0
_08003490: .4byte gUnknown_0200195C

	thumb_func_start SoundInit
SoundInit: @ 0x08003494
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	movs r3, #0
	str r3, [r5]
	ldr r1, _0800354C @ =REG_DMA1CNT_L
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #0x12
	ands r0, r2
	cmp r0, #0
	beq _080034B0
	ldr r0, _08003550 @ =0x84400004
	str r0, [r1]
_080034B0:
	ldr r1, _08003554 @ =REG_DMA2CNT_L
	ldr r0, [r1]
	ands r0, r2
	cmp r0, #0
	beq _080034BE
	ldr r0, _08003550 @ =0x84400004
	str r0, [r1]
_080034BE:
	ldr r0, _08003558 @ =REG_DMA1CNT_H
	movs r2, #0x80
	lsls r2, r2, #3
	adds r1, r2, #0
	strh r1, [r0]
	adds r0, #0xc
	strh r1, [r0]
	ldr r1, _0800355C @ =REG_SOUNDCNT_X
	movs r0, #0x8f
	strh r0, [r1]
	subs r1, #2
	ldr r2, _08003560 @ =0x0000A90E
	adds r0, r2, #0
	strh r0, [r1]
	ldr r2, _08003564 @ =REG_SOUNDBIAS_H
	ldrb r1, [r2]
	movs r0, #0x3f
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _08003568 @ =REG_DMA1SAD_L
	movs r2, #0xd4
	lsls r2, r2, #2
	adds r0, r5, r2
	str r0, [r1]
	adds r1, #4
	ldr r0, _0800356C @ =REG_FIFO_A_L
	str r0, [r1]
	adds r1, #8
	movs r2, #0x98
	lsls r2, r2, #4
	adds r0, r5, r2
	str r0, [r1]
	adds r1, #4
	ldr r0, _08003570 @ =REG_FIFO_B_L
	str r0, [r1]
	ldr r0, _08003574 @ =i_SOUND_AREA_ADR
	str r5, [r0]
	str r3, [sp]
	ldr r2, _08003578 @ =0x050003EC
	mov r0, sp
	adds r1, r5, #0
	bl CpuSet
	movs r0, #8
	strb r0, [r5, #6]
	movs r0, #0xf
	strb r0, [r5, #7]
	ldr r0, _0800357C @ =ply_note
	str r0, [r5, #0x38]
	ldr r0, _08003580 @ =DummyFunc
	str r0, [r5, #0x28]
	str r0, [r5, #0x2c]
	str r0, [r5, #0x30]
	str r0, [r5, #0x3c]
	ldr r4, _08003584 @ =gUnknown_020018D0
	adds r0, r4, #0
	bl MPlyJmpTblCopy
	str r4, [r5, #0x34]
	movs r0, #0x80
	lsls r0, r0, #0xb
	bl SampFreqSet
	ldr r0, _08003588 @ =0x68736D53
	str r0, [r5]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800354C: .4byte REG_DMA1CNT_L
_08003550: .4byte 0x84400004
_08003554: .4byte REG_DMA2CNT_L
_08003558: .4byte REG_DMA1CNT_H
_0800355C: .4byte REG_SOUNDCNT_X
_08003560: .4byte 0x0000A90E
_08003564: .4byte REG_SOUNDBIAS_H
_08003568: .4byte REG_DMA1SAD_L
_0800356C: .4byte REG_FIFO_A_L
_08003570: .4byte REG_FIFO_B_L
_08003574: .4byte i_SOUND_AREA_ADR
_08003578: .4byte 0x050003EC
_0800357C: .4byte ply_note
_08003580: .4byte DummyFunc
_08003584: .4byte gUnknown_020018D0
_08003588: .4byte 0x68736D53

	thumb_func_start SampFreqSet
SampFreqSet: @ 0x0800358C
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	ldr r0, _0800360C @ =i_SOUND_AREA_ADR
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
	bl __divsi3
	strb r0, [r4, #0xb]
	ldr r0, _08003614 @ =0x00091D1B
	muls r0, r5, r0
	ldr r1, _08003618 @ =0x00001388
	adds r0, r0, r1
	ldr r1, _0800361C @ =0x00002710
	bl __divsi3
	adds r1, r0, #0
	str r1, [r4, #0x14]
	movs r0, #0x80
	lsls r0, r0, #0x11
	bl __divsi3
	adds r0, #1
	asrs r0, r0, #1
	str r0, [r4, #0x18]
	ldr r0, _08003620 @ =REG_TM0CNT_H
	strh r6, [r0]
	ldr r4, _08003624 @ =REG_TM0CNT_L
	ldr r0, _08003628 @ =0x00044940
	adds r1, r5, #0
	bl __divsi3
	rsbs r0, r0, #0
	strh r0, [r4]
	bl SoundVSyncOn
	ldr r1, _0800362C @ =REG_VCOUNT
_080035F0:
	ldrb r0, [r1]
	cmp r0, #0x9f
	beq _080035F0
	ldr r1, _0800362C @ =REG_VCOUNT
_080035F8:
	ldrb r0, [r1]
	cmp r0, #0x9f
	bne _080035F8
	ldr r1, _08003620 @ =REG_TM0CNT_H
	movs r0, #0x80
	strh r0, [r1]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800360C: .4byte i_SOUND_AREA_ADR
_08003610: .4byte gUnknown_08044120
_08003614: .4byte 0x00091D1B
_08003618: .4byte 0x00001388
_0800361C: .4byte 0x00002710
_08003620: .4byte REG_TM0CNT_H
_08003624: .4byte REG_TM0CNT_L
_08003628: .4byte 0x00044940
_0800362C: .4byte REG_VCOUNT

	thumb_func_start SoundMode
SoundMode: @ 0x08003630
	push {r4, r5, lr}
	adds r3, r0, #0
	ldr r0, _080036BC @ =i_SOUND_AREA_ADR
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
	ldr r2, _080036C4 @ =REG_SOUNDBIAS_H
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
	bl SoundVSyncOff
	adds r0, r4, #0
	bl SampFreqSet
_080036B2:
	ldr r0, _080036C0 @ =0x68736D53
	str r0, [r5]
_080036B6:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080036BC: .4byte i_SOUND_AREA_ADR
_080036C0: .4byte 0x68736D53
_080036C4: .4byte REG_SOUNDBIAS_H

	thumb_func_start SoundClear
SoundClear: @ 0x080036C8
	push {r4, r5, r6, r7, lr}
	ldr r0, _08003714 @ =i_SOUND_AREA_ADR
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
	bl _call_via_r1
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
_08003714: .4byte i_SOUND_AREA_ADR
_08003718: .4byte 0x68736D53

	thumb_func_start SoundVSyncOff
SoundVSyncOff: @ 0x0800371C
	push {lr}
	sub sp, #4
	ldr r0, _0800377C @ =i_SOUND_AREA_ADR
	ldr r2, [r0]
	ldr r1, [r2]
	ldr r3, _08003780 @ =0x978C92AD
	adds r0, r1, r3
	cmp r0, #1
	bhi _08003774
	adds r0, r1, #0
	adds r0, #0xa
	str r0, [r2]
	ldr r1, _08003784 @ =REG_DMA1CNT_L
	ldr r0, [r1]
	movs r3, #0x80
	lsls r3, r3, #0x12
	ands r0, r3
	cmp r0, #0
	beq _08003746
	ldr r0, _08003788 @ =0x84400004
	str r0, [r1]
_08003746:
	ldr r1, _0800378C @ =REG_DMA2CNT_L
	ldr r0, [r1]
	ands r0, r3
	cmp r0, #0
	beq _08003754
	ldr r0, _08003788 @ =0x84400004
	str r0, [r1]
_08003754:
	ldr r0, _08003790 @ =REG_DMA1CNT_H
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
	bl CpuSet
_08003774:
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_0800377C: .4byte i_SOUND_AREA_ADR
_08003780: .4byte 0x978C92AD
_08003784: .4byte REG_DMA1CNT_L
_08003788: .4byte 0x84400004
_0800378C: .4byte REG_DMA2CNT_L
_08003790: .4byte REG_DMA1CNT_H
_08003794: .4byte 0x05000318

	thumb_func_start SoundVSyncOn
SoundVSyncOn: @ 0x08003798
	push {r4, lr}
	ldr r0, _080037C8 @ =i_SOUND_AREA_ADR
	ldr r2, [r0]
	ldr r3, [r2]
	ldr r0, _080037CC @ =0x68736D53
	cmp r3, r0
	beq _080037C0
	ldr r0, _080037D0 @ =REG_DMA1CNT_H
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
_080037C8: .4byte i_SOUND_AREA_ADR
_080037CC: .4byte 0x68736D53
_080037D0: .4byte REG_DMA1CNT_H

	thumb_func_start MPlayOpen
MPlayOpen: @ 0x080037D4
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
	ldr r0, _08003840 @ =i_SOUND_AREA_ADR
	ldr r5, [r0]
	ldr r1, [r5]
	ldr r0, _08003844 @ =0x68736D53
	cmp r1, r0
	bne _08003838
	adds r0, r1, #1
	str r0, [r5]
	adds r0, r7, #0
	bl Clear64byte
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
	ldr r0, _08003848 @ =MPlayMain
	str r0, [r5, #0x20]
	ldr r0, _08003844 @ =0x68736D53
	str r0, [r5]
	str r0, [r7, #0x34]
_08003838:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08003840: .4byte i_SOUND_AREA_ADR
_08003844: .4byte 0x68736D53
_08003848: .4byte MPlayMain

	thumb_func_start MPlayStart
MPlayStart: @ 0x0800384C
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
	bl TrackStop
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
	bl TrackStop
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
	bl SoundMode
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

	thumb_func_start MPlayStop
MPlayStop: @ 0x08003930
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
	bl TrackStop
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

	thumb_func_start FadeOutBody
FadeOutBody: @ 0x08003970
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
	bl TrackStop
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

	thumb_func_start TrkVolPitSet
TrkVolPitSet: @ 0x08003A38
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
	thumb_func_start MidiKey2CgbFr

MidiKey2CgbFr: @ 0x08003AEC
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
	ldr r3, _08003B8C @ =gUnknown_08044138
	adds r0, r5, r3
	ldrb r6, [r0]
	ldr r4, _08003B90 @ =gUnknown_080441BC
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
_08003B8C: .4byte gUnknown_08044138
_08003B90: .4byte gUnknown_080441BC

	thumb_func_start CgbOscOff
CgbOscOff: @ 0x08003B94
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
	ldr r1, _08003BB8 @ =REG_NR12
	movs r0, #8
	strb r0, [r1]
	adds r1, #2
	b _08003BD8
	.align 2, 0
_08003BB8: .4byte REG_NR12
_08003BBC:
	ldr r1, _08003BC0 @ =REG_NR22
	b _08003BD2
	.align 2, 0
_08003BC0: .4byte REG_NR22
_08003BC4:
	ldr r1, _08003BCC @ =REG_SOUND3CNT_L
	movs r0, #0
	b _08003BDA
	.align 2, 0
_08003BCC: .4byte REG_SOUND3CNT_L
_08003BD0:
	ldr r1, _08003BE0 @ =REG_NR42
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
_08003BE0: .4byte REG_NR42

	thumb_func_start CgbModVol
CgbModVol: @ 0x08003BE4
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

	thumb_func_start CgbSound
CgbSound: @ 0x08003C4C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	ldr r0, _08003C6C @ =i_SOUND_AREA_ADR
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
_08003C6C: .4byte i_SOUND_AREA_ADR
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
	ldr r0, _08003CB8 @ =REG_SOUND1CNT_L
	str r0, [sp, #8]
	ldr r7, _08003CBC @ =REG_SOUND1CNT_H
	ldr r2, _08003CC0 @ =REG_NR12
	str r2, [sp, #0xc]
	adds r0, #4
	str r0, [sp, #0x10]
	adds r2, #2
	b _08003D0C
	.align 2, 0
_08003CB8: .4byte REG_SOUND1CNT_L
_08003CBC: .4byte REG_SOUND1CNT_H
_08003CC0: .4byte REG_NR12
_08003CC4:
	ldr r0, _08003CD0 @ =REG_SOUND1CNT_L+1
	str r0, [sp, #8]
	ldr r7, _08003CD4 @ =REG_SOUND2CNT_L
	ldr r2, _08003CD8 @ =REG_NR22
	b _08003D04
	.align 2, 0
_08003CD0: .4byte REG_SOUND1CNT_L+1
_08003CD4: .4byte REG_SOUND2CNT_L
_08003CD8: .4byte REG_NR22
_08003CDC:
	ldr r0, _08003CF0 @ =REG_SOUND3CNT_L
	str r0, [sp, #8]
	ldr r7, _08003CF4 @ =REG_SOUND3CNT_H
	ldr r2, _08003CF8 @ =REG_NR32
	str r2, [sp, #0xc]
	adds r0, #4
	str r0, [sp, #0x10]
	adds r2, #2
	b _08003D0C
	.align 2, 0
_08003CF0: .4byte REG_SOUND3CNT_L
_08003CF4: .4byte REG_SOUND3CNT_H
_08003CF8: .4byte REG_NR32
_08003CFC:
	ldr r0, _08003D5C @ =REG_SOUND3CNT_L+1
	str r0, [sp, #8]
	ldr r7, _08003D60 @ =REG_SOUND4CNT_L
	ldr r2, _08003D64 @ =REG_NR42
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
	bl CgbModVol
	ldr r3, [sp, #0x18]
	cmp r6, #2
	beq _08003D74
	cmp r6, #2
	bgt _08003D68
	cmp r6, #1
	beq _08003D6E
	b _08003DC8
	.align 2, 0
_08003D5C: .4byte REG_SOUND3CNT_L+1
_08003D60: .4byte REG_SOUND4CNT_L
_08003D64: .4byte REG_NR42
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
	ldr r1, _08003DBC @ =REG_WAVE_RAM0_L
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
_08003DBC: .4byte REG_WAVE_RAM0_L
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
	bl CgbOscOff
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
	bl CgbModVol
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
	ldr r0, _08003FA4 @ =REG_SOUNDBIAS_H
	ldrb r0, [r0]
	cmp r0, #0x3f
	bgt _08003FAC
	ldr r0, [r4, #0x20]
	adds r0, #2
	ldr r1, _08003FA8 @ =0x000007FC
	b _08003FB6
	.align 2, 0
_08003FA4: .4byte REG_SOUNDBIAS_H
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
	ldr r1, _0800403C @ =REG_NR51
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
_0800403C: .4byte REG_NR51
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

	thumb_func_start MPlayTempoControl
MPlayTempoControl: @ 0x08004098
	push {r4, lr}
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, [r2, #0x34]
	ldr r0, _080040BC @ =0x68736D53
	cmp r3, r0
	bne _080040B4
	strh r1, [r2, #0x1e]
	ldrh r4, [r2, #0x1c]
	adds r0, r1, #0
	muls r0, r4, r0
	asrs r0, r0, #8
	strh r0, [r2, #0x20]
_080040B4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080040BC: .4byte 0x68736D53

	thumb_func_start MPlayVolumeControl
MPlayVolumeControl: @ 0x080040C0
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

	thumb_func_start MPlayPitchControl
MPlayPitchControl: @ 0x08004128
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

	thumb_func_start MPlayPanpotControl
MPlayPanpotControl: @ 0x0800419C
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

	thumb_func_start MP_clear_modM
MP_clear_modM: @ 0x08004204
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

	thumb_func_start MPlayModDepthSet
MPlayModDepthSet: @ 0x08004224
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
	bl MP_clear_modM
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

	thumb_func_start MPlayLFOSpeedSet
MPlayLFOSpeedSet: @ 0x08004298
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
	bl MP_clear_modM
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

	thumb_func_start ply_memacc
ply_memacc: @ 0x0800430C
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
	bl _call_via_r2
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

	thumb_func_start ply_xcmd
ply_xcmd: @ 0x08004464
	push {lr}
	ldr r2, [r1, #0x40]
	ldrb r3, [r2]
	adds r2, #1
	str r2, [r1, #0x40]
	ldr r2, _08004480 @ =gUnknown_08044254
	lsls r3, r3, #2
	adds r3, r3, r2
	ldr r2, [r3]
	bl _call_via_r2
	pop {r0}
	bx r0
	.align 2, 0
_08004480: .4byte gUnknown_08044254

	thumb_func_start ply_xxx
ply_xxx: @ 0x08004484
	push {lr}
	ldr r2, _08004494 @ =gUnknown_020018D0
	ldr r2, [r2]
	bl _call_via_r2
	pop {r0}
	bx r0
	.align 2, 0
_08004494: .4byte gUnknown_020018D0

	thumb_func_start ply_xwave
ply_xwave: @ 0x08004498
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

	thumb_func_start ply_xtype
ply_xtype: @ 0x080044E0
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

	thumb_func_start ply_xatta
ply_xatta: @ 0x080044F4
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

	thumb_func_start ply_xdeca
ply_xdeca: @ 0x08004508
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

	thumb_func_start ply_xsust
ply_xsust: @ 0x0800451C
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

	thumb_func_start ply_xrele
ply_xrele: @ 0x08004530
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

	thumb_func_start ply_xiecv
ply_xiecv: @ 0x08004544
	ldr r0, [r1, #0x40]
	ldrb r2, [r0]
	strb r2, [r1, #0x1e]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr

	thumb_func_start ply_xiecl
ply_xiecl: @ 0x08004550
	ldr r0, [r1, #0x40]
	ldrb r2, [r0]
	strb r2, [r1, #0x1f]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr

	thumb_func_start ply_xleng
ply_xleng: @ 0x0800455C
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

	thumb_func_start ply_xswee
ply_xswee: @ 0x08004570
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

	thumb_func_start DummyFunc
DummyFunc: @ 0x08004584
	bx lr
	.align 2, 0

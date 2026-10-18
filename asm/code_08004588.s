.include "asm/gba_constants.inc"
.include "asm/macro.inc"
.syntax unified

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

	thumb_func_start sub_08004618
sub_08004618: @ 0x08004618
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r7, r1, #0
	ldrh r2, [r4, #8]
	movs r3, #0
	cmp r3, r2
	bhs _0800466A
	adds r5, r4, #0
	adds r5, #0xc
	subs r6, r2, #2
	mov ip, r5
	movs r1, #0
_08004630:
	adds r0, r5, r1
	ldr r0, [r0]
	cmp r0, r7
	bne _08004662
	subs r0, r2, #1
	cmp r3, r0
	beq _0800465A
	adds r5, r6, #0
	cmp r3, r5
	bhi _0800465A
	adds r0, r1, #0
	adds r0, #0x2c
	adds r2, r0, r4
	add r1, ip
_0800464C:
	ldr r0, [r1, #4]
	stm r1!, {r0}
	ldr r0, [r2, #4]
	stm r2!, {r0}
	adds r3, #1
	cmp r3, r5
	bls _0800464C
_0800465A:
	ldrh r0, [r4, #8]
	subs r0, #1
	strh r0, [r4, #8]
	b _0800466A
_08004662:
	adds r1, #4
	adds r3, #1
	cmp r3, r2
	blo _08004630
_0800466A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08004670
sub_08004670: @ 0x08004670
	push {lr}
	adds r3, r0, #0
	ldrh r0, [r3, #8]
	cmp r0, #0
	beq _08004696
	subs r0, #1
	lsls r0, r0, #2
	adds r2, r3, #0
	adds r2, #0xc
	adds r2, r2, r0
	adds r1, r3, #0
	adds r1, #0x2c
	adds r1, r1, r0
	ldr r0, [r2]
	ldr r1, [r1]
	adds r0, r0, r1
	ldr r1, [r3]
	subs r0, r0, r1
	b _08004698
_08004696:
	movs r0, #0
_08004698:
	pop {r1}
	bx r1

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
	ldr r0, _08004CEC @ =REG_BG0HOFS
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
_08004CEC: .4byte REG_BG0HOFS

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

	thumb_func_start sub_08005010
sub_08005010: @ 0x08005010
	push {lr}
	bl SuspendSound
	ldr r1, _08005024 @ =REG_IE
	movs r0, #0
	strh r0, [r1]
	bl sub_0800A0F0
_08005020:
	b _08005020
	.align 2, 0
_08005024: .4byte REG_IE

	thumb_func_start sub_08005028
sub_08005028: @ 0x08005028
	push {r4, r5, r6, lr}
	ldr r4, _08005068 @ =0xFFFFFE00
	add sp, r4
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r6, _0800506C @ =gUnknown_03001390
	bl SuspendSound
	ldr r1, _08005070 @ =REG_IE
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
	bl sprintf
	adds r0, r6, #0
	movs r1, #0
	movs r2, #0
	mov r3, sp
	bl sub_08004F68
	b _08005084
	.align 2, 0
_08005068: .4byte 0xFFFFFE00
_0800506C: .4byte gUnknown_03001390
_08005070: .4byte REG_IE
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
	bl SoftReset
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
	bl sprintf
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
	bl sprintf
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
	bl sprintf
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
	bl sprintf
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
	bl sprintf
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
	bl sprintf
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
	bl sprintf
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
	bl sprintf
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

	thumb_func_start sub_08005838
sub_08005838: @ 0x08005838
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r4, r2, #0
	mov r8, r3
	lsls r2, r1, #4
	subs r2, r2, r1
	lsls r2, r2, #1
	adds r2, r2, r0
	lsls r2, r2, #6
	movs r0, #0xc0
	lsls r0, r0, #0x13
	adds r6, r2, r0
	ldr r0, _080058A0 @ =0x06000F00
	adds r5, r2, r0
	movs r0, #1
	rsbs r0, r0, #0
	add r8, r0
	movs r7, #0
	cmp r7, r8
	bhs _08005890
	lsls r4, r4, #4
	ldr r0, _080058A4 @ =0x001FFFFF
	ands r4, r0
	movs r0, #0x80
	lsls r0, r0, #0x13
	mov sb, r0
	movs r3, #0xf0
	lsls r3, r3, #4
_08005876:
	adds r0, r5, #0
	adds r1, r6, #0
	mov r2, sb
	orrs r2, r4
	str r3, [sp]
	bl CpuSet
	ldr r3, [sp]
	adds r5, r5, r3
	adds r6, r6, r3
	adds r7, #1
	cmp r7, r8
	blo _08005876
_08005890:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080058A0: .4byte 0x06000F00
_080058A4: .4byte 0x001FFFFF

	thumb_func_start sub_080058A8
sub_080058A8: @ 0x080058A8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r4, r2, #0
	mov r8, r3
	add r1, r8
	subs r1, #2
	lsls r2, r1, #4
	subs r2, r2, r1
	lsls r2, r2, #1
	adds r2, r2, r0
	lsls r2, r2, #6
	movs r0, #0xc0
	lsls r0, r0, #0x13
	adds r6, r2, r0
	ldr r0, _08005910 @ =0x05FFF100
	adds r5, r2, r0
	movs r0, #1
	rsbs r0, r0, #0
	add r8, r0
	movs r7, #0
	cmp r7, r8
	bhs _08005902
	lsls r4, r4, #4
	ldr r0, _08005914 @ =0x001FFFFF
	ands r4, r0
	movs r0, #0x80
	lsls r0, r0, #0x13
	mov sb, r0
	ldr r3, _08005918 @ =0xFFFFF100
_080058E8:
	adds r0, r5, #0
	adds r1, r6, #0
	mov r2, sb
	orrs r2, r4
	str r3, [sp]
	bl CpuSet
	ldr r3, [sp]
	adds r5, r5, r3
	adds r6, r6, r3
	adds r7, #1
	cmp r7, r8
	blo _080058E8
_08005902:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08005910: .4byte 0x05FFF100
_08005914: .4byte 0x001FFFFF
_08005918: .4byte 0xFFFFF100

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
	bl VBlankIntrWait
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
	bl VBlankIntrWait
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
	ldr r1, _08005E94 @ =REG_BG0CNT
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
	ldr r0, _08005E98 @ =REG_BG0HOFS
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
_08005E94: .4byte REG_BG0CNT
_08005E98: .4byte REG_BG0HOFS

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
	bl _call_via_r1
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
	bl _call_via_r4
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
	bl Div
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
	bl Div
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
	bl Div
	adds r5, r0, #0
	ldrh r0, [r4]
	subs r0, #1
	ldrb r1, [r4, #5]
	bl Div
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
	bl DivRem
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
	bl StartSong
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
	bl Div
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
	bl _call_via_r1
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
	bl StartSong
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
	bl StartSong
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
	bl StartSong
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
	bl StartSong
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
	bl LZ77UnCompWram
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
	bl VBlankIntrWait
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
	ldr r2, _08006CC8 @ =REG_BG0HOFS
	adds r0, r5, #0
	bl CpuSet
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
	bl LZ77UnCompWram
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
_08006CC8: .4byte REG_BG0HOFS
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
	ldr r2, _08006D04 @ =REG_BG0HOFS
	adds r0, r4, #0
	bl CpuSet
	adds r4, #0x40
	ldr r1, _08006D08 @ =0x06015500
	adds r0, r4, #0
	bl LZ77UnCompVram
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08006CFC: .4byte gUnknown_08486E54
_08006D00: .4byte 0x05000300
_08006D04: .4byte REG_BG0HOFS
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
	ldr r2, _08006D3C @ =REG_BG0HOFS
	adds r0, r4, #0
	bl CpuSet
	adds r4, #0x40
	ldr r1, _08006D40 @ =0x06016400
	adds r0, r4, #0
	bl LZ77UnCompVram
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08006D34: .4byte gUnknown_084912AC
_08006D38: .4byte 0x05000340
_08006D3C: .4byte REG_BG0HOFS
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
	ldr r2, _08006D74 @ =REG_BG0HOFS
	adds r0, r4, #0
	bl CpuSet
	adds r4, #0x40
	ldr r1, _08006D78 @ =0x06017C00
	adds r0, r4, #0
	bl LZ77UnCompVram
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08006D6C: .4byte gUnknown_084B51A4
_08006D70: .4byte 0x050003C0
_08006D74: .4byte REG_BG0HOFS
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
	bl CpuSet
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
	ldr r2, _08007300 @ =REG_BG0CNT
	adds r0, r6, #0
	bl CpuSet
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
	bl CpuSet
	adds r5, #0x40
	adds r4, #1
	cmp r4, #0x11
	bls _080072AA
	ldr r0, _08007310 @ =gUnknown_03FF03FF
	str r0, [sp, #4]
	ldr r2, _08007314 @ =0x0500001E
	mov r0, sb
	adds r1, r5, #0
	bl CpuSet
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
	bl CpuSet
	adds r5, #0x40
	adds r4, #1
	cmp r4, #0x11
	bls _080072DC
	b _0800733E
	.align 2, 0
_080072F4: .4byte gUnknown_083D8C04
_080072F8: .4byte gUnknown_083D9AC0
_080072FC: .4byte 0x05000120
_08007300: .4byte REG_BG0CNT
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
	bl CpuSet
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
	bl CpuSet
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
	bl VBlankIntrWait
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
	ldr r1, _0800755C @ =REG_WININ
	ldr r2, _08007560 @ =0x00001211
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	movs r0, #0
	strh r0, [r1]
	movs r6, #0x78
	ldr r0, _08007564 @ =REG_BG0HOFS
	mov sl, r0
	ldr r1, _08007568 @ =0x000001FF
	adds r7, r1, #0
	ldr r2, _0800756C @ =REG_BG1HOFS
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
	bl memcpy
	str r6, [sp]
	mov r0, r8
	movs r1, #1
	add r2, sp, #4
	adds r3, r5, #0
	bl sub_08007794
	bl VBlankIntrWait
	cmp r6, #0
	bne _080074E4
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r1, [r2]
	ldr r0, _08007558 @ =0xFFFF9FFF
	ands r0, r1
	strh r0, [r2]
	bl VBlankIntrWait
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
_0800755C: .4byte REG_WININ
_08007560: .4byte 0x00001211
_08007564: .4byte REG_BG0HOFS
_08007568: .4byte 0x000001FF
_0800756C: .4byte REG_BG1HOFS
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
	bl DivRem
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
	bl BlendRGB555
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
	bl StartSong
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
	bl memcpy
	bl VBlankIntrWait
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
	bl Div
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
	ldr r7, _08007AD0 @ =REG_BG2VOFS
_08007AA6:
	adds r5, #1
	mov r0, sb
	mov r1, r8
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_08000CDC
	adds r4, r0, #0
	bl VBlankIntrWait
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
_08007AD0: .4byte REG_BG2VOFS

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
	bl sprintf
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
	bl memcpy
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
	bl StartSong
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
	bl StartSong
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
	bl rand
	asrs r0, r0, #8
	adds r1, r6, #0
	bl DivRem
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
	bl StartSong
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
	bl sprintf
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
	ldr r1, _08008E24 @ =REG_BG0CNT
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
	ldr r2, _08008E24 @ =REG_BG0CNT
	bl CpuSet
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
_08008E24: .4byte REG_BG0CNT
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
	bl CpuSet
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
	ldr r2, _08008FDC @ =REG_BG0CNT
	adds r0, r5, #0
	bl CpuSet
	ldr r1, _08008FE0 @ =REG_BG2VOFS
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
	bl memcpy
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
_08008FDC: .4byte REG_BG0CNT
_08008FE0: .4byte REG_BG2VOFS
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
	ldr r0, _08009014 @ =VBlankIntrWait
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
_08009014: .4byte VBlankIntrWait

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
	bl VBlankIntrWait
	bl sub_08000BC0
	adds r0, r5, #0
	bl sub_08006BE0
	ldr r1, _0800909C @ =gUnknown_0830E99F
	add r0, sp, #4
	movs r2, #3
	bl memcpy
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
	bl VBlankIntrWait
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
	bl StartSong
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
	ldr r0, _08009468 @ =VBlankIntrWait
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
_08009468: .4byte VBlankIntrWait
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
	bl VBlankIntrWait
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
	bl FadeOutSongPlayer
	movs r0, #0x28
	bl sub_08000B68
	bl StopAllMusicPlayers
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
	bl VBlankIntrWait
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
	bl Div
	lsls r1, r0, #4
	subs r1, r1, r0
	str r1, [r5]
	adds r0, r4, #0
	movs r1, #0xa
	bl DivRem
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
	bl sprintf
	movs r2, #2
	b _08009996
	.align 2, 0
_08009978: .4byte gUnknown_0830ED7C
_0800997C:
	cmp r0, #2
	bne _0800998C
	ldr r1, [r4]
	add r0, sp, #4
	bl strcpy
	movs r2, #2
	b _08009996
_0800998C:
	ldr r1, [r4]
	add r0, sp, #4
	bl strcpy
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
	bl Div
	adds r5, r0, #0
	ldrb r0, [r4, #8]
	movs r1, #0xa
	bl DivRem
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
	bl StartSong
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
	bl StartSong
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
	bl StartSong
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
	bl StartSong
_08009B1A:
	bl VBlankIntrWait
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
	ldr r1, _08009BC4 @ =REG_BG0CNT
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
_08009BC4: .4byte REG_BG0CNT
_08009BC8: .4byte 0x00001F82
_08009BCC: .4byte 0x00001E81

	thumb_func_start sub_08009BD0
sub_08009BD0: @ 0x08009BD0
	push {lr}
	bl VBlankIntrWait
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
	ldr r0, _08009C00 @ =VBlankIntrWait
	bl sub_0800A160
	pop {r0}
	bx r0
	.align 2, 0
_08009C00: .4byte VBlankIntrWait

	thumb_func_start sub_08009C04
sub_08009C04: @ 0x08009C04
	push {lr}
	ldr r0, _08009C10 @ =VBlankIntrWait
	bl sub_0800A1A4
	pop {r0}
	bx r0
	.align 2, 0
_08009C10: .4byte VBlankIntrWait

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
	bl Div
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

	thumb_func_start sub_08009F6C
sub_08009F6C: @ 0x08009F6C
	push {lr}
	bl sub_080050A8
	pop {r0}
	bx r0
	.align 2, 0

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
	bl LZ77UnCompVram
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
	bl StartSongOnPlayer
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
	bl FadeOutMusicPlayer
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
	ldr r1, _0800A104 @ =REG_BLDCNT
	movs r0, #0xff
	strh r0, [r1]
	ldr r0, _0800A108 @ =REG_BLDY
	movs r1, #0x10
	strh r1, [r0]
	ldr r0, _0800A10C @ =gUnknown_02001D0C
	strb r1, [r0]
	bx lr
	.align 2, 0
_0800A104: .4byte REG_BLDCNT
_0800A108: .4byte REG_BLDY
_0800A10C: .4byte gUnknown_02001D0C

	thumb_func_start sub_0800A110
sub_0800A110: @ 0x0800A110
	ldr r0, _0800A11C @ =REG_BLDCNT
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0800A120 @ =gUnknown_02001D0C
	strb r1, [r0]
	bx lr
	.align 2, 0
_0800A11C: .4byte REG_BLDCNT
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
	ldr r0, _0800A148 @ =REG_BLDCNT
	strh r1, [r0]
	b _0800A158
	.align 2, 0
_0800A144: .4byte gUnknown_02001D0C
_0800A148: .4byte REG_BLDCNT
_0800A14C:
	ldr r1, _0800A15C @ =REG_BLDCNT
	movs r0, #0xff
	strh r0, [r1]
	adds r1, #4
	ldrb r0, [r2]
	strh r0, [r1]
_0800A158:
	pop {r0}
	bx r0
	.align 2, 0
_0800A15C: .4byte REG_BLDCNT

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
	bl _call_via_r5
	ldr r0, _0800A1A0 @ =REG_BLDCNT
	movs r1, #0xff
	strh r1, [r0]
	adds r0, #4
	strh r4, [r0]
	movs r4, #2
	adds r6, r0, #0
_0800A184:
	bl _call_via_r5
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
_0800A1A0: .4byte REG_BLDCNT

	thumb_func_start sub_0800A1A4
sub_0800A1A4: @ 0x0800A1A4
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, _0800A1E4 @ =gUnknown_02001D0C
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800A1DE
	bl _call_via_r5
	ldr r1, _0800A1E8 @ =REG_BLDCNT
	movs r0, #0xff
	strh r0, [r1]
	adds r1, #4
	movs r0, #0x10
	strh r0, [r1]
	movs r4, #2
	adds r7, r1, #0
	movs r6, #0x10
_0800A1C6:
	bl _call_via_r5
	subs r0, r6, r4
	strh r0, [r7]
	adds r4, #2
	cmp r4, #0x10
	bls _0800A1C6
	ldr r0, _0800A1E8 @ =REG_BLDCNT
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
_0800A1E8: .4byte REG_BLDCNT

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
	bl VBlankIntrWait
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
	ldr r0, _0800A2C4 @ =REG_BLDCNT
	movs r1, #0xff
	strh r1, [r0]
	adds r0, #4
	strh r2, [r0]
	movs r4, #2
	adds r6, r0, #0
_0800A29A:
	bl VBlankIntrWait
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
_0800A2C4: .4byte REG_BLDCNT
_0800A2C8: .4byte gUnknown_02001D0C

	thumb_func_start sub_0800A2CC
sub_0800A2CC: @ 0x0800A2CC
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r1, _0800A2EC @ =gUnknown_02001D0C
	ldrb r1, [r1]
	cmp r1, #0
	beq _0800A32E
	bl VBlankIntrWait
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
	ldr r1, _0800A334 @ =REG_BLDCNT
	movs r0, #0xff
	strh r0, [r1]
	adds r1, #4
	movs r0, #0x10
	strh r0, [r1]
	movs r4, #2
	adds r7, r1, #0
	movs r6, #0x10
_0800A306:
	bl VBlankIntrWait
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
	ldr r0, _0800A334 @ =REG_BLDCNT
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
_0800A334: .4byte REG_BLDCNT
_0800A338: .4byte gUnknown_02001D0C

	thumb_func_start sub_0800A33C
sub_0800A33C: @ 0x0800A33C
	ldrb r1, [r0]
	muls r1, r2, r1
	lsrs r1, r1, #5
	strb r1, [r0]
	ldrb r1, [r0, #1]
	muls r1, r2, r1
	lsrs r1, r1, #5
	strb r1, [r0, #1]
	ldrb r1, [r0, #2]
	muls r1, r2, r1
	lsrs r1, r1, #5
	strb r1, [r0, #2]
	bx lr
	.align 2, 0

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

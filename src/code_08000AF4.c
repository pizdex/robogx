#include "global.h"
#include "gba/io_reg.h"

void sub_08000AF4(void) {
	sub_08000A5C();
	sub_0803D308();
	for(;;);
}

void sub_08000B00(u32 arg0) {
	u32 i;
	u32 temp = arg0 * 1500;
	for(i = 0; i < temp; i++);
}

void sub_08000B1C(void) {
	while(REG_VCOUNT != 0x9f);
	while(REG_VCOUNT <= 0x9f);
}

void sub_08000B38(u32 arg0) {
	u32 i;
	for(i = 0; i < arg0; i++) {
		sub_08000B1C();
	}
}

void sub_08000B54(void) {
	while(REG_VCOUNT > 0x9f);
}

void sub_08000B68(u32 arg0) {
	u32 i;
	for(i = 0; i < arg0; i++) {
		sub_0803D380();
	}
}

void sub_08000B84(void) {
	gUnknown_02000008 = 0x3ff;
	gUnknown_02000000 = gUnknown_02000020 = gUnknown_02000004 = 0;
	gUnknown_02000010[3] = 0;
	gUnknown_02000010[2] = 0;
	gUnknown_02000010[1] = 0;
	gUnknown_02000010[0] = 0;
}

void sub_08000BC0(void) {
	u32 i, temp0 = 0, temp1;
	gUnknown_02000000 = gUnknown_02000008;
	gUnknown_02000008 = REG_KEYINPUT ^ 0x3ff;
	gUnknown_02000020 = gUnknown_02000008 & ~gUnknown_02000000;

	for(i = 0; i < 6; i++) {
		temp1 = gUnknown_02000008;
		if(temp1 >> (i + 4) & 1)
			gUnknown_02000010[i]++;
		else
			gUnknown_02000010[i] = 0;
	}

	for(i = 0; i < 6; i++) {
		if((gUnknown_02000010[i] - 30) >= 0) {
			if(sub_0803D350(gUnknown_02000010[i] - 30, 6) == 0)
				temp0 |= 1 << (i + 4);
		}
	}

	gUnknown_02000004 = temp0 | gUnknown_02000020;
}

void sub_08000C5C(u32 arg0) {
	u32 var0 = REG_KEYINPUT ^ 0x3ff;
	while((var0 & arg0) == 0) {
		sub_08000B1C();
		var0 = REG_KEYINPUT ^ 0x3ff;
	}
}

void sub_08000C90(u32 arg0) {
	u32 i = 0, temp;
	for(;;) {
		temp = REG_KEYINPUT ^ 0x3ff;
		i++;
		if(temp) i = 0;
		if(i >= arg0) break;
		sub_08000B1C();
	}
}

void sub_08000CC0(u32 arg0) {
	sub_08000C90(1);
	sub_08000C5C(arg0);
	sub_08000C90(1);
}

u32 sub_08000CDC(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
	u32 temp = arg1 - arg0;
	if(arg1 - arg0 >= 0)
		return arg0 + sub_0803D34C(arg3 * temp, arg2);
	else
		return arg0 - sub_0803D34C(arg3 * -temp, arg2);
}

#ifdef NONMATCHING
u32 sub_08000D04(u32 arg0, u32 arg1, u32 arg2, u32 arg3, u32 arg4, u32 arg5, u32 arg6) {
	u32 temp = 0x20 - arg6;
	// maybe another time :)
}
#else
NAKED
u32 sub_08000D04(u32 arg0, u32 arg1, u32 arg2, u32 arg3, u32 arg4, u32 arg5, u32 arg6) {
	asm_unified("\n\
	push {r4, r5, r6, r7, lr}\n\
	ldr r7, [sp, #0x14]\n\
	ldr r6, [sp, #0x1c]\n\
	movs r4, #0x20\n\
	subs r4, r4, r6\n\
	adds r5, r0, #0\n\
	muls r5, r4, r5\n\
	adds r0, r3, #0\n\
	muls r0, r6, r0\n\
	adds r5, r5, r0\n\
	muls r1, r4, r1\n\
	adds r0, r7, #0\n\
	muls r0, r6, r0\n\
	adds r1, r1, r0\n\
	adds r0, r2, #0\n\
	muls r0, r4, r0\n\
	ldr r3, [sp, #0x18]\n\
	adds r2, r3, #0\n\
	muls r2, r6, r2\n\
	adds r0, r0, r2\n\
	lsrs r0, r0, #8\n\
	movs r2, #0x1f\n\
	ands r0, r2\n\
	lsls r0, r0, #0xa\n\
	lsrs r1, r1, #8\n\
	ands r1, r2\n\
	lsls r1, r1, #5\n\
	orrs r0, r1\n\
	lsrs r5, r5, #8\n\
	ands r5, r2\n\
	orrs r0, r5\n\
	pop {r4, r5, r6, r7}\n\
	pop {r1}\n\
	bx r1");
}
#endif // NONMATCHING

void sub_08000D48(u8 *arg0, u8 *arg1, u32 arg2) {
	u32 i, temp;
	for(i = 0; i < arg2; i++) {
		temp = *arg1++;
		*arg0++ = temp;
	}
}

void sub_08000D68(u8 *arg0, u32 arg1) {
	u32 i;
	for(i = 0; i < arg1; i++) {
		*arg0++ = 0;
	}
}

u32 sub_08000D80(u8 *arg0, u8 *arg1) {
	for(;;) {
		if(*arg0 == 0) {
			if(*arg1 == 0)
				return 1;
			else
				return 0;
		}
		if(*arg0 == *arg1) {
			arg0++;
			arg1++;
		} else
			return 0;
	}
}

u32 sub_08000DA4(u8 *arg0, u8 *arg1) {
	u8 temp0, temp1;
	for(;;) {
		temp0 = *arg0;
		temp1 = *arg1;
		if(temp0 == 0) {
			if(temp1 == 0)
				return 0;
			else
				return -1;
		}
		if(temp1 == 0)
			return 1;
		if(temp0 > temp1)
			return 1;
		if(temp0 < temp1)
			return -1;
		else {
			arg0++;
			arg1++;
		}
	}
}

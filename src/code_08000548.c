#include "global.h"
#include "gba/io_reg.h"

extern char g217[];

#define UNK_217 ((u16)g217)

void sub_08000548(void) {
	sub_08003094();
	sub_08003630(0x60000);
	sub_08000588();
}

u16 sub_08000560(void) {
	return UNK_217;
}

void sub_0800056C(u32 arg0) {
	if(arg0 == 0) {
		sub_08003630(0x60000);
	} else {
		sub_08003630(0x30000);
	}
}

void sub_08000588(void) {
	gUnknown_02000024 = 1;
	gUnknown_02000034 = REG_SOUNDCNT_L;
	sub_0800371C();
	REG_SOUNDCNT_L = 0;
}

void sub_080005B4(void) {
	REG_SOUNDCNT_L = gUnknown_02000034;
	sub_08003798();
	gUnknown_02000024 = 0;
}

void sub_080005D8(u16 arg0) {
	sub_08003118(arg0);
}

void sub_080005E8(u16 arg0) {
	sub_08003118(arg0);
}

void sub_080005F8(u16 arg0) {
	sub_080031E4(arg0);
}

void sub_08000608(u32 arg0, u32 arg1) {
	u32 temp = gUnknown_080451B8[arg0].unk4;
	sub_080032B0(gUnknown_08045158[temp * 3], arg1);
}

void sub_08000634(u32 arg0, u32 arg1) {
	sub_0800384C(gUnknown_08045158[arg0 * 3], gUnknown_080451B8[arg1].unk0);
}

void sub_0800065C(u32 arg0) {
	sub_08003930(gUnknown_08045158[arg0 * 3]);
}

void sub_08000678(u32 arg0) {
	sub_08003278(gUnknown_08045158[arg0 * 3]);
}

void sub_08000694(u32 arg0, u32 arg1) {
	sub_080032B0(gUnknown_08045158[arg0 * 3], arg1);
}

void sub_080006B4(u32 arg0, u32 arg1) {
	sub_080040C0(gUnknown_08045158[arg0 * 3], 0xFFFF, arg1);
}

u32 sub_080006DC(u32 arg0) {
	u32 unk4 = gUnknown_08045158[arg0 * 3]->unk4;
	u32 one = 1;
	return (unk4 >> 31) ^ one;
}

void sub_080006F8(void) {
	sub_0800324C();
}

#ifdef NONMATCHING
void sub_08000704(u32 arg0) {
	u32 i;
	for(i = 0; i < arg0; ++i) {
		sub_080032B0(gUnknown_08045158[i * 3], arg0);
	}
}
#else
NAKED
void sub_08000704(u32 arg0) {
	asm_unified("\n\
	push {r4, r5, r6, r7, lr}\n\
	adds r1, r0, #0\n\
	ldr r0, _08000730 @ =0x00000008\n\
	lsls r0, r0, #0x10\n\
	lsrs r6, r0, #0x10\n\
	movs r4, #0\n\
	cmp r4, r6\n\
	bhs _08000728\n\
	ldr r5, _08000734 @ =gUnknown_08045158\n\
	lsls r7, r1, #0x10\n\
_08000718:\n\
	ldr r0, [r5]\n\
	lsrs r1, r7, #0x10\n\
	bl sub_080032B0\n\
	adds r5, #0xc\n\
	adds r4, #1\n\
	cmp r4, r6\n\
	blo _08000718\n\
_08000728:\n\
	pop {r4, r5, r6, r7}\n\
	pop {r0}\n\
	bx r0\n\
	.align 2, 0\n\
_08000730: .4byte 0x00000008\n\
_08000734: .4byte gUnknown_08045158");
}
#endif // NONMATCHING

void sub_08000738(void) {
	sub_0803D388(0x40);
	sub_0803D3F0(3, gUnknown_03001370);
}

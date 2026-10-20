#include "global.h"
#include "code_08004588.h"

void sub_08004588(struct UnkStruct_08004588 *arg0, u32 arg1, u32 arg2) {
	arg0->unk0 = arg1;
	arg0->unk4 = arg1 + arg2;
	arg0->unk8 = 0;
}

void sub_08004594(struct UnkStruct_08004588 *arg0) {
	arg0->unk8 = 0;
}

u32 RamAllocPush(struct UnkStruct_08004588 *arg0, u32 arg1) {
	u32 count;
	u32 base;
	u32 i;

	count = arg0->unk8;

	if(count == 8) {
		sub_080052CC(gUnknown_08308C44);
		return 0;
	}

	if(count == 0)
		base = arg0->unk0;
	else {
		i = count - 1;
		base = arg0->unkC[i] + arg0->unk2C[i];
	}

	if(base + arg1 > arg0->unk4) {
		sub_080052CC(gUnknown_08308C6C);
		return 0;
	}

	arg0->unkC[count] = base;
	arg0->unk2C[count] = arg1;
	count++;
	arg0->unk8 = count;

	return base;
}

void sub_08004604(struct UnkStruct_08004588 *arg0) {
	u16 temp;

	temp = arg0->unk8;
	if(temp != 0) {
		arg0->unk8 = (temp - 1);
	}
}

void sub_08004618(struct UnkStruct_08004588 *arg0, u32 arg1) {
	u32 count = arg0->unk8;
	u32 i;
	for(i = 0; i < count; i++) {
		if(arg0->unkC[i] == arg1) {
			if(i != (count - 1)) {
				for(; i <= count - 2; i++) {
					arg0->unkC[i] = arg0->unkC[i + 1];
					arg0->unk8 += 0; // fakematch
					arg0->unk2C[i] = arg0->unk2C[i + 1];
				}
			}
			arg0->unk8--;
			return;
		}
	}
}


u32 sub_08004670(struct UnkStruct_08004588 *arg0) {
	u32 i;
 
	if(arg0->unk8 == 0)
		return 0;
 
	i = arg0->unk8 - 1;
	return arg0->unkC[i] + arg0->unk2C[i] - arg0->unk0;
}
 
void sub_0800469C(void) {
	sub_08004588(&gUnknown_02001CC0, (u32)gUnknown_02017AF0, 0x11800);
}
 
void sub_080046B8(void) {
	sub_08004588(&gUnknown_02001D70, (u32)gUnknown_020292F0, 0xA000);
}
 
void sub_080046D4(void) {
	sub_08004588(&gUnknown_02001D20, (u32)gUnknown_020332F0, 0x4000);
}
 
u32 sub_080046F0(void) {
	u32 ret = 0;
 
	if(gUnknown_02001D70.unk8 != 0 || gUnknown_02001D20.unk8 != 0)
		ret = 1;
 
	return ret;
}

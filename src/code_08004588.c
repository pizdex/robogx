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

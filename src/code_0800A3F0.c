#include "global.h"

void sub_0800A3F0(void) {
}

void sub_0800A3F4(u32 arg0) {
	sub_080051B0(arg0);
}

void sub_0800A400(u32 arg0) {
	gUnknown_0200CC80.unk40 = 0;
}

void sub_0800A410(u32 arg0) {
	u32 idx;
	if(gUnknown_0200CC80.unk40 == 0x10)
		sub_080050A8(gUnknown_0831AFA0);

	idx = gUnknown_0200CC80.unk40++;
	gUnknown_0200CC80.unk0[idx] = arg0;
}

u32 sub_0800A444(void) {
	if(gUnknown_0200CC80.unk40 == 0)
		sub_080050A8(gUnknown_0831AFB8);

	gUnknown_0200CC80.unk40--;
	return gUnknown_0200CC80.unk0[gUnknown_0200CC80.unk40];
}

void sub_0800A474(u32 arg0) {
	u32 idx;
	if(gUnknown_0200E930.unk20 == 0x8)
		sub_080050A8(gUnknown_0831AFD8);

	idx = gUnknown_0200E930.unk20++;
	gUnknown_0200E930.unk0[idx] = arg0;
}

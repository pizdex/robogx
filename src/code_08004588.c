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

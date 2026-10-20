#ifndef GUARD_VARIABLES_H
#define GUARD_VARIABLES_H

#include "code_08004588.h"

// Place all external variable declarations in this file

extern u16 gUnknown_02000000;
extern u16 gUnknown_02000004;
extern u16 gUnknown_02000008;
extern u16 gUnknown_02000010[];
extern u16 gUnknown_02000020;
extern u16 gSoundSuspended;
extern u16 gUnknown_02000034;
extern u16 gUnknown_02000038;
extern struct UnkStruct_08004588 gUnknown_02001D20;
extern struct UnkStruct_08004588 gUnknown_02001D70;

extern struct UnkStruct_08004588 gUnknown_02001CC0;

struct Unk0200C1A0 {
	u8 pad0[0xc24];
	u8 unkC24;
};
extern struct Unk0200C1A0 gUnknown_0200C1A0;

struct Unk0200CC80 {
	u32 unk0[0x10];
	u8 unk40;
};
extern struct Unk0200CC80 gUnknown_0200CC80;

struct Unk0200CCC4 {
	u32 unk0[0x40];
	u8 unk100;
};
extern struct Unk0200CCC4 gUnknown_0200CCC4;

struct Unk0200E080 {
    u32 slot;
    u32 unk4;
};

extern struct Unk0200E080 gUnknown_0200E080;

extern u32 gUnknown_0200E200;

struct Unk0200E930 {
	u32 unk0[0x8];
	u8 unk20;
};
extern struct Unk0200E930 gUnknown_0200E930;

extern u8 gUnknown_02017AF0[];
extern u8 gUnknown_020292F0[];
extern u8 gUnknown_020332F0[];

extern u32 gUnknown_03000B50;
extern void **gUnknown_03000B54;
extern u32 gUnknown_03000B58;
extern u32 gUnknown_03001364;
extern u32 gUnknown_0300136C;
extern u32 gUnknown_03001370[];
extern void *gUnknown_03002BF0;
extern void *gUnknown_03003040;
extern u8 gUnknown_03007700[];
extern u16 gUnknown_03007FF8;
extern u32 gUnknown_03007FFC;

extern const char gUnknown_08308C44[];
extern const char gUnknown_08308C6C[];
extern const char gUnknown_0831AFA0[];
extern const char gUnknown_0831AFB8[];
extern const char gUnknown_0831AFD8[];
extern const char gUnknown_0831AFF0[];
extern const char gUnknown_0831B010[];
extern const char gUnknown_0831B028[];
extern const char gUnknown_0831B768[];
extern const char gUnknown_0831B780[];
extern const char gUnknown_0831B7A4[];
extern const char gUnknown_0831B7C8[];
extern const char gUnknown_0831B7F0[];
extern const char gUnknown_0831B80C[];
extern const char gUnknown_0831B830[];

extern const u16 gUnknown_083D4B68[];
extern const u8 gUnknown_084B5FA0[];
extern const u8 gUnknown_085371D8[];

extern u8 gRamCodeBlock1End[];
extern u8 gRamCodeBlock2Start[], gRamCodeBlock2End[];

#endif // GUARD_VARIABLES_H

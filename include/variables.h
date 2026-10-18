#ifndef GUARD_VARIABLES_H
#define GUARD_VARIABLES_H

// Place all external variable declarations in this file

extern u16 gUnknown_02000000;
extern u16 gUnknown_02000004;
extern u16 gUnknown_02000008;
extern u16 gUnknown_02000010[];
extern u16 gUnknown_02000020;
extern u16 gUnknown_02000024;
extern u16 gUnknown_02000034;

struct Unk0200C1A0 {
    u8 filler0[0xc24];
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

struct Unk0200E930 {
	u32 unk0[0x8];
	u8 unk20;
};
extern struct Unk0200E930 gUnknown_0200E930;

extern u32 gUnknown_03001370[];

struct Unk08045158 {
	u32 unk0;
	u32 unk4;
};
extern struct Unk08045158 *gUnknown_08045158[];

struct Unk080451B8 {
	u32 unk0;
	u16 unk4;
};

extern struct Unk080451B8 gUnknown_080451B8[];

extern u8 gUnknown_0831AFA0[];
extern u8 gUnknown_0831AFB8[];
extern u8 gUnknown_0831AFD8[];
extern u8 gUnknown_0831AFF0[];
extern u8 gUnknown_0831B010[];
extern u8 gUnknown_0831B028[];

#endif // GUARD_VARIABLES_H

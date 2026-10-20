#ifndef GUARD_CODE_8000548_H
#define GUARD_CODE_8000548_H

struct LinkState {
	u8 unk0[0x334];	  // 0x000
	u32 sioTerminals; // 0x334
	u32 playerId;	  // 0x338
	u32 sioError;	  // 0x33C
	u32 timedOut;	  // 0x340
	u32 recv[4];	  // 0x344..0x350
	u32 flag;		  // 0x354
};

#endif // GUARD_CODE_8000548_H

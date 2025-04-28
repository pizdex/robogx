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
	IdentifyEeprom(0x40);
	SetEepromTimerIntr(3, gUnknown_03001370);
}

u32 sub_08000750(void* arg0, u32 arg1, u32 arg2, u32 arg3) {
    u16* dest = arg0;
    u32 chunkOffset = arg1;
    register u32 chunkCount asm("r8") = arg2; // fakematch hack
    u32 temp = arg3;

    u32 i;
    register u32 result asm("r6"); // fakematch hack

    if (temp) {
        sub_08000588();
    }

    chunkOffset /= 8;
    chunkCount /= 8;

    for (i = 0; i < chunkCount; i++) {
        result = ReadEepromDword(chunkOffset, dest);

        dest += 4;
        chunkOffset++;
        
        if (result != 0) {
            break;
        }
    }

    if (temp) {
        sub_080005B4();
    }

    return result;
}

u32 sub_080007A8(void* arg0, u32 arg1, u32 arg2, u32 arg3) {
    u16* dest = arg0;
    u32 chunkOffset = arg1;
    register u32 chunkCount asm("r8") = arg2; // fakematch hack
    u32 temp = arg3;

    u32 i;
    register u32 result asm("r6"); // fakematch hack

    if (temp) {
        sub_08000588();
    }

    chunkOffset /= 8;
    chunkCount /= 8;

    for (i = 0; i < chunkCount; i++) {
        result = ProgramEepromDwordEx(chunkOffset, dest);

        dest += 4;
        chunkOffset++;
        
        if (result != 0) {
            break;
        }
    }

    if (temp) {
        sub_080005B4();
    }

    return result;
}

u32 sub_08000800(void* arg0, u32 eepromOffset, u32 fillValue, u32 arg3) {
    u32 chunkOffset = (u32)arg0;
    u32 chunkCount = eepromOffset;
    u32 temp = arg3;

    u32 i;
    register u32 result asm("r6"); // fakematch hack

    u16 fillPattern[4] = {fillValue, fillValue, fillValue, fillValue};

    if (temp) {
        sub_08000588();
    }

    chunkOffset /= 8;
    chunkCount /= 8;

    for (i = 0; i < chunkCount; i++) {
        result = ProgramEepromDwordEx(chunkOffset, fillPattern);

        chunkOffset++;
        
        if (result != 0) {
            break;
        }
    }

    if (temp) {
        sub_080005B4();
    }

    return result;
}

void sub_0800085C(void) {
    REG_TM3CNT_L = 0;
    REG_TM3CNT_H = 1;
    REG_TM3CNT_H = 0x81;
}

u32 sub_08000874(void) {
    u64 scaled = (u64)REG_TM3CNT_L * 10000;
    u64 result = scaled / 4389;
    
    return (u32)result;
}

void sub_080008A8(void) {
    gUnknown_02000038 = REG_TM3CNT_L;
}

void sub_080008BC(u32 arg0) {
    if (arg0 != 0) {
        REG_TM3CNT_L = 0;
        REG_TM3CNT_H = 0;
        REG_TM3CNT_H = 0x80;
        REG_KEYCNT = 0x4008;
    } else {
        REG_KEYCNT = 0;
        REG_TM3CNT_H = 0;
    }
}

void sub_080008FC(u32 arg0) {
    (u32)gUnknown_03000B54 = arg0;
}

void sub_08000908(void) {
    sub_08002A38();
    sub_0800142C();
    
    if (gUnknown_03000B54 != 0) {
        ((void (*)(void))gUnknown_03000B54)();
    }
    
    gUnknown_0300136C++;
    
    if (gUnknown_02000024 == 0) {
        u16 keys = REG_KEYINPUT ^ 0x3FF; // Invert button bits
        
        // Check for A+B+Select+Start
        if (keys != 0) {
            if (keys == 0xF) {
                sub_08000588();
            
                REG_BLDCNT = 0xFF;
                REG_BLDY = 0x10;
            
                sub_08000C90(2);
                SoftReset(0xFF);
            }
        }
    }

    gUnknown_03007FF8 = 1;
}

void sub_08000984(void) {
	sub_0800310C();
}

void sub_08000990(void) {
    u32 size;
    u32 src;

    gUnknown_02000024 = 1;

    src = (u32)sub_080000F0;
    size = (u32)sub_08000540 - src;
    CpuCopy32((void *)src, &gUnknown_03002BF0, size);

    src = (u32)sub_08001A18;
    size = 0x080023D4 - src; // Fixme
    CpuCopy32((void *)src, &gUnknown_03003040, size);

    gUnknown_03007FFC = (u32)sub_080000F0;

    gUnknown_0300136C = 0;
    *gUnknown_03000B54 = 0;

    REG_DISPSTAT = 0xa28;
    REG_IE = 0x3005;
    REG_IME = 1;
}

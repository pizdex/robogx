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
	for(i = 0; i < 8; ++i) {
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

u32 sub_08000750(void *arg0, u32 arg1, u32 arg2, u32 arg3) {
	u16 *dest = arg0;
	u32 chunkOffset = arg1;
	register u32 chunkCount asm("r8") = arg2; // fakematch hack
	u32 temp = arg3;

	u32 i;
	register u32 result asm("r6"); // fakematch hack

	if(temp) {
		sub_08000588();
	}

	chunkOffset /= 8;
	chunkCount /= 8;

	for(i = 0; i < chunkCount; i++) {
		result = ReadEepromDword(chunkOffset, dest);

		dest += 4;
		chunkOffset++;

		if(result != 0) {
			break;
		}
	}

	if(temp) {
		sub_080005B4();
	}

	return result;
}

u32 sub_080007A8(void *arg0, u32 arg1, u32 arg2, u32 arg3) {
	u16 *dest = arg0;
	u32 chunkOffset = arg1;
	register u32 chunkCount asm("r8") = arg2; // fakematch hack
	u32 temp = arg3;

	u32 i;
	register u32 result asm("r6"); // fakematch hack

	if(temp) {
		sub_08000588();
	}

	chunkOffset /= 8;
	chunkCount /= 8;

	for(i = 0; i < chunkCount; i++) {
		result = ProgramEepromDwordEx(chunkOffset, dest);

		dest += 4;
		chunkOffset++;

		if(result != 0) {
			break;
		}
	}

	if(temp) {
		sub_080005B4();
	}

	return result;
}

u32 sub_08000800(void *arg0, u32 eepromOffset, u32 fillValue, u32 arg3) {
	u32 chunkOffset = (u32)arg0;
	u32 chunkCount = eepromOffset;
	u32 temp = arg3;

	u32 i;
	register u32 result asm("r6"); // fakematch hack

	u16 fillPattern[4] = { fillValue, fillValue, fillValue, fillValue };

	if(temp) {
		sub_08000588();
	}

	chunkOffset /= 8;
	chunkCount /= 8;

	for(i = 0; i < chunkCount; i++) {
		result = ProgramEepromDwordEx(chunkOffset, fillPattern);

		chunkOffset++;

		if(result != 0) {
			break;
		}
	}

	if(temp) {
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
	if(arg0 != 0) {
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
	(u32) gUnknown_03000B54 = arg0;
}

void sub_08000908(void) {
	sub_08002A38();
	sub_0800142C();

	if(gUnknown_03000B54 != 0) {
		((void (*)(void))gUnknown_03000B54)();
	}

	gUnknown_0300136C++;

	if(gUnknown_02000024 == 0) {
		u16 keys = REG_KEYINPUT ^ 0x3FF; // Invert button bits

		// Check for A+B+Select+Start
		if(keys != 0) {
			if(keys == 0xF) {
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

#ifdef NONMATCHING
void sub_08000A34(void) {
	void *src = gUnknown_08043864;
	void *dest = (void *)IWRAM_START;
	DmaCopy32(3, src, dest, 0x738);
}
#else
NAKED
void sub_08000A34(void) {
	asm_unified("\n\
    ldr r0, _08000A50\n\
    movs r3, #0xc0\n\
    lsls r3, r3, #0x12\n\
    ldr r1, _08000A54\n\
    ldr r2, _08000A58\n\
    str r0, [r2]\n\
    str r3, [r2, #4]\n\
    lsrs r1, r1, #2\n\
    movs r0, #0x84\n\
    lsls r0, r0, #0x18\n\
    orrs r1, r0\n\
    str r1, [r2, #8]\n\
    ldr r0, [r2, #8]\n\
    bx lr\n\
    .align 2, 0\n\
_08000A50: .4byte gUnknown_08043864\n\
_08000A54: .4byte 0x00000748\n\
_08000A58: .4byte 0x040000d4");
}
#endif // NONMATCHING

void sub_08000A5C(void) {
	u32 temp;
	u32 size;

	REG_BLDCNT = 0xBF;
	REG_BLDY = 0x10;
	REG_DISPCNT = 0;

	temp = IWRAM_START;
	size = (u32)gUnknown_03007700;
	DmaFill32(3, 0, (void *)temp, size - temp);
	DmaFill32(3, 0, (void *)EWRAM_START, (EWRAM_END - EWRAM_START));

	sub_08000A34();
	REG_WAITCNT = 0x4014;
	sub_08000548();
	sub_08000990();
	sub_080012B8();
	sub_08000FEC(0x7000000, 0x80);
	sub_08000738();
	srand(0);
	sub_080005B4();
}

void AgbMain(void) {
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
		VBlankIntrWait();
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
			if(DivRem(gUnknown_02000010[i] - 30, 6) == 0)
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
		if(temp)
			i = 0;
		if(i >= arg0)
			break;
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
		return arg0 + Div(arg3 * temp, arg2);
	else
		return arg0 - Div(arg3 * -temp, arg2);
}

u16 BlendRGB555(u32 r1, u32 g1, u32 b1, u32 r2, u32 g2, u32 b2, u32 weight) {
	u32 inv_weight = 32 - weight;

	u32 r = (r1 * inv_weight) + (r2 * weight);
	u32 g = (g1 * inv_weight) + (g2 * weight);
	u32 b = (b1 * inv_weight) + (b2 * weight);

	// Convert to 5-bit components and pack into RGB555
	return ((b >> 8) & 0x1F) << 10 |
		   ((g >> 8) & 0x1F) << 5 |
		   ((r >> 8) & 0x1F);
}

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

/**
 * Compares two null-terminated byte strings lexicographically
 * @param str1 First string to compare
 * @param str2 Second string to compare
 * @return 0 if equal, 1 if str1 > str2, -1 if str1 < str2
 */
s32 Strcmp_08000DA4(u8 *str1, u8 *str2) {
	char c1, c2;

	for(;;) {
		c1 = *str1;
		c2 = *str2;

		if(c1 == '\0') {
			if(c2 == '\0')
				return 0;
			else
				return -1;
		}

		if(c2 == '\0')
			return 1;
		if(c1 > c2)
			return 1;
		if(c1 < c2)
			return -1;

		str1++;
		str2++;
	}
}

// Checks if 'str2' appears anywhere in 'str1'
// Returns 1 if found, 0 if not
u32 FindSubstring(char *str1, char *str2) {
	char *s2 = str2;
	char *s1 = str1;
	char first_char = *s2;

	while(*s1 != '\0') {
		if(*s1 == first_char) {
			char *cmp1 = s1;
			char *cmp2 = s2;

			while(1) {
				if(*cmp2 == '\0') {
					return 1;
				}
				if(*cmp1 != *cmp2) {
					break;
				}
				cmp1++;
				cmp2++;
			}
		}
		s1++;
	}

	return 0;
}

// Copy string from src to dest, checking both null byte and the max length
void SafeStrcpy(char *dest, char *src, u32 max_len) {
	u32 i = 0;
	char current_char = *src++;

	if(current_char != '\0') {
		while(1) {
			if(i == max_len - 1) {
				*dest = '\0';
				return;
			}

			*dest++ = current_char;
			i++;

			current_char = *src++;
			if(current_char == '\0') {
				break;
			}
		}
	}

	while(i < max_len) {
		*dest++ = '\0';
		i++;
	}
}

// Binary search implementation
// Returns index if found, -1 if not found
s32 BinarySearch(u8 **array, u32 count, u8 *target) {
	s32 low = 0;
	s32 mid;
	s32 high = count - 1;
	s32 cmp;

	while(low <= high) {
		mid = (low + high) >> 1;
		cmp = Strcmp_08000DA4(target, array[mid]);

		if(cmp == 0)
			return mid; // Match found
		if(cmp == 1)
			low = mid + 1; // Search right half
		else
			high = mid - 1; // Search left half
	}

	return -1;
}

void sub_08000E98(u32 arg0, u32 arg1, u32 arg2, u32 arg3) {
	REG_WIN0H = (arg0 << 8) | (arg0 + arg2);
	REG_WIN0V = (arg1 << 8) | (arg1 + arg3);
}

void sub_08000EBC(u32 arg0, u32 arg1, u32 arg2, u32 arg3) {
	REG_WIN1H = (arg0 << 8) | (arg0 + arg2);
	REG_WIN1V = (arg1 << 8) | (arg1 + arg3);
}

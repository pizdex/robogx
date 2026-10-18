#include "global.h"
#include "code_08010738.h"

void sub_08010738(u32 arg0) {
	sub_08000588();
	sub_08010AF0(arg0, 2);
	sub_080005B4();
	sub_08000498(&gUnknown_0200E200, 0x2e0, 0);
}

void sub_08010764(void *arg0, u32 arg1, u32 arg2) {
	sub_08000750(arg0, arg1, arg2, 0);
}

void sub_08010770(u32 arg0, void *arg1, u32 arg2) {
	u32 result;
	result = sub_080007A8(arg1, arg0, arg2, 0);

	if(result != 0) {
		sub_080050B8(gUnknown_0831B768); // "EEPROMに書き込めません" ("Unable to write to EEPROM")
	}
}

void sub_08010790(void *arg0, u32 arg1, u32 arg2) {
	u32 result;
	result = sub_08000800(arg0, arg1, arg2, 0);

	if(result != 0) {
		sub_080050B8(gUnknown_0831B768); // "EEPROMに書き込めません" ("Unable to write to EEPROM")
	}
}

u64 sub_080107AC(u32 input) {
	u8 buffer[8];
	sub_08010764(buffer, input, 8);
	return *(u64 *)buffer;
}

void sub_080107C4(u32 arg0, u32 arg1, u32 arg2) {
	u32 temp_buffer[2];
	temp_buffer[0] = arg2;
	temp_buffer[1] = arg1;

	sub_08010770(arg0, temp_buffer, 8);
}

u32 SceEeprom_GetSubFileAdr(u32 file, u32 type) {
	char buffer1[128];
	char buffer2[128];
	u32 temp;

	if(type == 0 || type == 3) {
		temp = 0;
	} else if(type == 1) {
		temp = 0x220;
	} else if(type == 2) {
		temp = 0xC38;
	} else {
		sprintf(buffer1, gUnknown_0831B780, type); // "SceEeprom_GetSubFileAdr() : type=%d"
		sub_080050A8(buffer1);
	}

	if(file > 1) {
		sprintf(buffer2, gUnknown_0831B7A4, file); // "SceEeprom_GetSubFileAdr() : file=%d"
		sub_080050A8(buffer2);
	}

	temp += (file * 0xF18);
	return temp;
}

u32 SceEeprom_GetSubFileSize(u32 type) {
	char buffer[128];
	u32 temp;

	if(type == 0) {
		temp = 0x220;
	} else if(type == 1) {
		temp = 0xA18;
	} else if(type == 2) {
		temp = 0x2E0;
	} else if(type == 3) {
		temp = 0xC38;
	} else if(type == 4) {
		temp = 0xF18;
	} else {
		sprintf(buffer, gUnknown_0831B7C8, type); // "SceEeprom_GetSubFileSize() : type=%d"
		sub_080050A8(buffer);
		// bug: temp never initialised
	}

	return temp;
}

u32 sub_080108A4(void) {
	u32 temp2 = (u32)gUnknown_084B5FA0;
	u32 temp1 = (u32)gUnknown_085371D8;
	u32 size = temp1 - temp2; // 0x81238
	return size + 0xF18;	  // 0x82150
}

u32 sub_080108BC(Unk080108BC *arg0, u32 arg1) {
	arg0->unk0 = arg1;
	arg0->unk4 = 0;
	arg0->unk8 = sub_080108A4();
	arg0->unkC = 0;
}

u32 sub_080108D8(u32 type, u32 *data_ptr) {
	u32 temp, sum, i;

	temp = (SceEeprom_GetSubFileSize(type) - 8);
	temp /= 4;
	sum = 0;
	i = 0;

	while(i < temp) {
		sum += *data_ptr++;
		i++;
	}
	return sum;
}

void sub_08010900(void *buffer, u32 size, u32 value) {
	u8 *ptr = buffer + size;
	u8 *temp;

	temp = ptr - 8;
	*((u32 *)(temp)) = value;
	temp = ptr - 4;
	*((u32 *)(temp)) = 0;
}

u32 sub_08010910(u32 file_num, u32 arg1, u32 *arg2, u32 arg3) {
	u8 buffer[128];
	u32 file_size = SceEeprom_GetSubFileSize(arg1);
	u32 temp1 = sub_080108D8(arg1, arg2);

	u32 field8 = *(u32 *)((u8 *)arg2 + file_size - 8);
	u32 *field4 = (u32 *)((u8 *)arg2 + file_size - 4);

	u32 temp2 = (-(*field4) | *field4) >> 31;

	if(temp1 != field8) {
		temp2 = 1;
	}

	if(temp2) {
		if(arg3) {
			sprintf(buffer, gUnknown_0831B7F0, file_num + 1); // "ファイル%dが壊れています" ("File %d is corrupted")
			sub_080050B8(buffer);
		}
		return 1;
	}

	return 0;
}

void sub_0801097C(u32 file_num, u32 file_type, u32 *dest_buffer) {
	u32 file_addr = SceEeprom_GetSubFileAdr(file_num, file_type);
	u32 file_size = SceEeprom_GetSubFileSize(file_type);
	u32 temp;

	sub_08010764(dest_buffer, file_addr, file_size);

	temp = sub_08010910(file_num, file_type, dest_buffer, 1);

	if(file_type == 0 && *dest_buffer != 2) {
		sub_080050A8(gUnknown_0831B80C); // "無効なファイルを読み込もうとした" ("Attempted to read an invalid file")
	}
}

#include "global.h"
#include "code_08010738.h"

void sub_08010738(u32 arg0) {
	sub_08000588();
	sub_08010AF0(arg0, 2);
	sub_080005B4();
	sub_08000498(&gUnknown_0200E200, 0x2e0, 0);
}

void sub_08010764(void *buffer, u32 eepromAddr, u32 size) {
	sub_08000750(buffer, eepromAddr, size, 0);
}

void sub_08010770(u32 eepromAddr, void *data, u32 size) {
	u32 result;
	result = sub_080007A8(data, eepromAddr, size, 0);

	if(result != 0) {
		sub_080050B8(gUnknown_0831B768); // "EEPROMに書き込めません" ("Unable to write to EEPROM")
	}
}

void sub_08010790(void *data, u32 eepromAddr, u32 size) {
	u32 result;
	result = sub_08000800(data, eepromAddr, size, 0);

	if(result != 0) {
		sub_080050B8(gUnknown_0831B768); // "EEPROMに書き込めません" ("Unable to write to EEPROM")
	}
}

u64 sub_080107AC(u32 eepromAddr) {
	u8 buffer[8];
	sub_08010764(buffer, eepromAddr, 8);
	return *(u64 *)buffer;
}

void sub_080107C4(u32 eepromAddr, u32 value1, u32 value2) {
	u32 temp_buffer[2];
	temp_buffer[0] = value2;
	temp_buffer[1] = value1;

	sub_08010770(eepromAddr, temp_buffer, 8);
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

void sub_080109C0(u32 file_num, u32 file_type, u32 *dest_buffer) {
	if(file_type == 3) {
		sub_0801097C(file_num, 0, dest_buffer);
		dest_buffer += 0x88;
		sub_0801097C(file_num, 1, dest_buffer);
	} else {
		sub_0801097C(file_num, file_type, dest_buffer);
	}
}

void sub_080109F0(u32 file, u32 type, void *buffer) {
	u32 size;
	u32 result;
	void *file_data;
	u32 eeprom_addr;

	if(type == 0) {
		sub_080108BC(buffer, 2);
	}

	size = SceEeprom_GetSubFileSize(type);
	result = sub_080108D8(type, buffer);
	sub_08010900(buffer, size, result);

	if(type == 0) {
		file_data = sub_08011124(file);
		sub_080002C4(file_data, buffer, size);
	}

	eeprom_addr = SceEeprom_GetSubFileAdr(file, type);
	sub_08010770(eeprom_addr, buffer, size);
}

void sub_08010A48(u32 file, u32 type, void *buffer) {
	if(type == 3) {
		sub_080109F0(file, 0, buffer);
		buffer += 0x220;
		sub_080109F0(file, 1, buffer);
	} else {
		sub_080109F0(file, type, buffer);
	}
}

void sub_08010A78(u32 file, u32 mode) {
	u32 buffer_size;
	u32 buffer;
	u32 processed_size;
	u32 load_size;

	if(mode == 0) {
		buffer = (u32)sub_08011124(file);
		buffer_size = SceEeprom_GetSubFileSize(0);

		sub_08000498((void *)buffer, buffer_size, 0);
		sub_080108BC((void *)buffer, 0);
		processed_size = sub_080108D8(0, (u32 *)buffer);
		sub_08010900((void *)buffer, buffer_size, processed_size);
		mode = (u32)sub_08011124(file);
		buffer = SceEeprom_GetSubFileAdr(file, 0);
		sub_08010770(buffer, (void *)mode, buffer_size);
	} else {
		sub_08010790((void *)SceEeprom_GetSubFileAdr(file, mode), SceEeprom_GetSubFileSize(mode), 0);
	}
}

void sub_08010AF0(u32 file, u32 mode) {
	if(mode == 3) {
		sub_08010A78(file, 0);
		sub_08010A78(file, 1);
	} else if(mode == 4) {
		sub_08010A78(file, 0);
		sub_08010A78(file, 1);
		sub_08010A78(file, 2);
	} else {
		sub_08010A78(file, mode);
	}
}

void sub_08010B34(u32 file) {
	u32 buffer;
	u32 buffer_size;
	u32 buffer2;
	u32 temp;

	buffer = (u32)sub_08011124(file);
	buffer_size = SceEeprom_GetSubFileSize(0);

	sub_08000498((void *)buffer, buffer_size, 0);
	sub_080108BC((void *)buffer, 2);
	temp = sub_080108D8(0, (u32 *)buffer);
	sub_08010900((void *)buffer, buffer_size, temp);

	buffer2 = (u32)sub_08011124(file);
	buffer = SceEeprom_GetSubFileAdr(file, 0);
	sub_08010770(buffer, (void *)buffer2, buffer_size);
}

void sub_08010B8C(u32 src, u32 dst, u32 type) {
    u32 size;
    u32 *buf;
    u32 *tmp1;
    u32 tmp2;

    size = SceEeprom_GetSubFileSize(type);
    buf = sub_0800459C(&gUnknown_02001CC0, size);

    tmp2 = SceEeprom_GetSubFileAdr(src, type);
    tmp1 = buf;
    sub_08010764(tmp1, tmp2, size);

    if (type == 0) {
        if (*tmp1 != 2)
            sub_080050A8(gUnknown_0831B830);
        tmp2 = (u32)tmp1;
        tmp1 = sub_08011124(dst);
        sub_080002C4(tmp1, (void *)tmp2, size);
    }

    tmp2 = (u32)buf;
    tmp1 = (u32 *)SceEeprom_GetSubFileAdr(dst, type);
    sub_08010770((u32)tmp1, (void *)tmp2, size);
    sub_08004604(&gUnknown_02001CC0);
}

void sub_08010C14(u32 src, u32 dst, u32 type) {
    if (type == 3) {
        sub_08010B8C(src, dst, 0);
        sub_08010B8C(src, dst, 1);
    } else if (type == 4) {
        sub_08010B8C(src, dst, 0);
        sub_08010B8C(src, dst, 1);
        sub_08010B8C(src, dst, 2);
    } else {
        sub_08010B8C(src, dst, type);
    }
}

void sub_08010C64(u32 file, u32 type, u32 *data) {
    u32 checksum, size;
    u8 *ptr, *temp;

    checksum = sub_080108D8(type, data);
    temp = (u8 *)SceEeprom_GetSubFileAdr(file, type);
    size = SceEeprom_GetSubFileSize(type);
    temp = (temp + size) - 8;
    sub_080107C4((u32)temp, 0, checksum);

    if (type == 0) {
        temp = sub_08011124(file);
        ptr = temp + size;
        temp = ptr - 8;
        *(u32 *)temp = checksum;
        temp = ptr - 4;
        *(u32 *)temp = 0;
    }
}

void sub_08010CBC(u32 mode, u32 slot) {
    struct Unk0200E080 *p = &gUnknown_0200E080;
    u32 next;

    if (mode == 0) {
        *p = (struct Unk0200E080){ slot, 0 };
    }
    if (mode == 1) {
        next = slot + 1;
        if (next > 1) next = 0;
        *p = (struct Unk0200E080){ next, 0 };
    }
}

void sub_08010CF0(void) {
    u32 eepromAddr = 0x1FF8;
    sub_08010764(&gUnknown_0200E080, eepromAddr, 8);
}

void sub_08010D08(void) {
    void *data = &gUnknown_0200E080;
    sub_08010770(0x1FF8, data, 8);
}

void sub_08010D20(u32 arg) {
    sub_08010CBC(0, arg);
    sub_08010D08();
}

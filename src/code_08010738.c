#include "global.h"

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

    if (result != 0) {
        sub_080050B8(gUnknown_0831B768); // "EEPROMに書き込めません" ("Unable to write to EEPROM")
    }
}

void sub_08010790(void *arg0, u32 arg1, u32 arg2) {
    u32 result;
    result = sub_08000800(arg0, arg1, arg2, 0);

    if (result != 0) {
        sub_080050B8(gUnknown_0831B768); // "EEPROMに書き込めません" ("Unable to write to EEPROM")
    }
}

u64 sub_080107AC(u32 input) {
    u8 buffer[8];
    sub_08010764(buffer, input, 8);
    return *(u64*)buffer;
}

void sub_080107C4(u32 arg0, u32 arg1, u32 arg2) {
    u32 temp_buffer[2];
    temp_buffer[0] = arg2;
    temp_buffer[1] = arg1;

    sub_08010770(arg0, temp_buffer, 8);
}

u32 sub_080107DC(u32 file, u32 type) {
    char buffer1[128];
    char buffer2[128];
    u32 temp;

    if (type == 0 || type == 3) {
        temp = 0;
    }
    else if (type == 1) {
        temp = 0x220;
    }
    else if (type == 2) {
        temp = 0xC38;
    }
    else {
        sprintf(buffer1, gUnknown_0831B780, type); // "SceEeprom_GetSubFileAdr() : type=%d"
        sub_080050A8(buffer1);
    }

    if (file > 1) {
        sprintf(buffer2, gUnknown_0831B7A4, file); // "SceEeprom_GetSubFileAdr() : file=%d"
        sub_080050A8(buffer2);
    }

    temp += (file * 0xF18);
    return temp;
}

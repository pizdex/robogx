#ifndef GUARD_GLOBAL_H
#define GUARD_GLOBAL_H

#include "gba/types.h"

#define asm_comment(x) asm volatile("@ -- " x " -- ")
#define asm_unified(x) asm(".syntax unified\n" x "\n.syntax divided")
#define NAKED __attribute__((naked))

#define TRUE 1
#define FALSE 0

#define ARRAY_COUNT(array) (size_t)(sizeof(array) / sizeof((array)[0]))


#endif // GUARD_GLOBAL_H

// **************************************
//  include - memory - interrupt.h
//  Update  develop3.0
// **************************************

#include <types.h>

#ifndef __INTERRUPT__
#define __INTERRUPT__

#define PIC0_ICW1 0x0020
#define PIC0_OCW2 0x0020
#define PIC0_IMR 0x0021
#define PIC0_ICW2 0x0021
#define PIC0_ICW3 0x0021
#define PIC0_ICW4 0x0021
#define PIC1_ICW1 0x00a0
#define PIC1_OCW2 0x00a0
#define PIC1_IMR 0x00a1
#define PIC1_ICW2 0x00a1
#define PIC1_ICW3 0x00a1
#define PIC1_ICW4 0x00a1

#define PIC_EOI 0x20

// debug
extern unsigned char mflag;
extern char mes[128];

void emptyHandler(void);

void timerHandler(void);
void keyboardHandler(void);

#endif  // __INTERRUPT__

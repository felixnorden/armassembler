
#ifndef INTERRUPT_H
#define INTERRUPT_H

#include "types.h"
#define VTOR            0x2001C000

// SYS_CFG

typedef struct {
    uint32      MEMRMP;
    uint32      PMC;
    uint32      EXTICR1;
    uint32      EXTICR2;
    uint32      EXTICR3;
    uint32      EXTICR4;
} sys_cfg;

typedef volatile sys_cfg* sys_cfg_ptr;
#define SYS_CFG     (*((sys_cfg_ptr) 0x40013800))

// EXTI

typedef struct {
    uint32  IMR;
    uint32  EMR;
    uint32  RTSR;
    uint32  FTSR;
    uint32  SWIER;
    uint32  PR;
} exti;

typedef volatile exti* exti_ptr;
#define EXTI_BASE   0x40013C00
#define EXTI        (*((exti_ptr)   0x40013C00))

#define EXTI3_IRQ_BPOS       (1 << 3) 
#define EXTI2_IRQ_BPOS       (1 << 2) 
#define EXTI1_IRQ_BPOS       (1 << 1) 
#define EXTI0_IRQ_BPOS       (1 << 0) 

// NVIC

typedef struct {
    uint32      REG_0;
    uint32      REG_1;
    uint16      REG_2;
} nvic;

typedef volatile nvic* nvic_ptr;

#define NVIC_ISER   (*((nvic_ptr)   0xE000E100))
#define NVIC_ICER   (*((nvic_ptr)   0xE000E180))
#define NVIC_ISPR   (*((nvic_ptr)   0xE000E200))
#define NVIC_ICPR   (*((nvic_ptr)   0xE000E280))
#define NVIC_IABR   (*((nvic_ptr)   0xE000E300))
#define NVIC_IPR0   (*((uint32)     0xE000E400))
#define NVIC_IPR20  (*((uint8)      0xE000E420))

#define NVIC_EXTI3_IRQ_BPOS   (1 << 9) 
#define NVIC_EXTI2_IRQ_BPOS   (1 << 8) 
#define NVIC_EXTI1_IRQ_BPOS   (1 << 7) 
#define NVIC_EXTI0_IRQ_BPOS   (1 << 6)

// VECTOR TABLE

#define EXTI3_IRQVEC       (*((void (**)(void))0x2001C064)) 
#define EXTI2_IRQVEC       (*((void (**)(void))0x2001C060)) 
#define EXTI1_IRQVEC       (*((void (**)(void))0x2001C05C)) 
#define EXTI0_IRQVEC       (*((void (**)(void))0x2001C058)) 

#endif // INTERRUPT_H
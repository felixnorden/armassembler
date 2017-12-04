
#ifndef INTERRUPT_H
#define INTERRUPT_H

#include "types.h"
#define VTOR            0x2001C000

#define SYSCFG          0x40013800
#define SYSCFG_MEMRMP   (*((uint16*)(SYSCFG)))
#define SYSCFG_PMC      (*((uint16*)(SYSCFG + 0x6))) // Offset två bytes
#define SYSCFG_EXTICR1  (*((uint16*)(SYSCFG + 0x8)))
#define SYSCFG_EXTICR2  (*((uint16*)(SYSCFG + 0xC)))
#define SYSCFG_EXTICR3  (*((uint16*)(SYSCFG + 0x10)))
#define SYSCFG_EXTICR4  (*((uint16*)(SYSCFG + 0x14)))
#define SYSCFG_CMPCR    (*((uint16*)(SYSCFG + 0x20)))

typedef struct {
    uint16      MEMRMP;
    uint16_c    RES_0;
    uint16_c    RES_1;
    uint8       PMC;
    uint8_c     RES_2;
    uint16      EXTICR1;
    uint16_c    RES_3;
    uint16      EXTICR2;
    uint16_c    RES_4;
    uint16      EXTICR3;
    uint16_c    RES_5;
    uint16      EXTICR4;
    uint16_c    RES_6;
    uint8       CMPCR1;
    uint32_c    RES_7;
    uint32_c    RES_8;
    uint32_c    RES_9;
    uint8       CMPCR2;
} sys_cfg;

typedef volatile sys_cfg* sys_cfg_ptr;
#define SYS_CFG     (*((sys_cfg_ptr) 0x40013800))

#define EXTI_BASE   0x40013C00
#define EXTI_IMR    (*((uint32*)    (EXTI_BASE)))
#define EXTI_EMR    (*((uint32*)    (EXTI_BASE + 0x4)))
#define EXTI_RTSR   (*((uint32*)    (EXTI_BASE + 0x8)))
#define EXTI_FTSR   (*((uint32*)    (EXTI_BASE + 0xC)))
#define EXTI_SWIER  (*((uint32*)    (EXTI_BASE + 0x10)))
#define EXTI_PR     (*((uint32*)    (EXTI_BASE + 0x14)))

typedef struct {
    uint32  IMR;
    uint32  EMR;
    uint32  RTSR;
    uint32  FTSR;
    uint32  SWIER;
    uint32  PR;
} exti;

typedef volatile exti* exti_ptr;

#define EXTI        (*((exti_ptr)   0x40013C00))

#define NVIC        0xE000E100
#define NVIC_ISER0  (*((uint32*)    (NVIC)))
#define NVIC_ISER1  (*((uint32*)    (NVIC + 0x4)))
#define NVIC_ISER2  (*((uint32*)    (NVIC + 0x8)))
#define NVIC_ICER0  (*((uint32*)    (NVIC + 0x80)))
#define NVIC_ICER1  (*((uint32*)    (NVIC + 0x84)))
#define NVIC_ICER2  (*((uint32*)    (NVIC + 0x88)))
#define NVIC_ISPR0  (*((uint32*)    (NVIC + 0x100)))
#define NVIC_ISPR1  (*((uint32*)    (NVIC + 0x104)))
#define NVIC_ISPR2  (*((uint32*)    (NVIC + 0x108)))
#define NVIC_ICPR0  (*((uint32*)    (NVIC + 0x180)))
#define NVIC_ICPR1  (*((uint32*)    (NVIC + 0x184)))
#define NVIC_ICPR2  (*((uint32*)    (NVIC + 0x188)))
#define NVIC_IABR0  (*((uint32*)    (NVIC + 0x200)))
#define NVIC_IABR1  (*((uint32*)    (NVIC + 0x204)))
#define NVIC_IABR2  (*((uint32*)    (NVIC + 0x208)))
#define NVIC_IPR0   (*((uint32*)    (NVIC + 0x300)))
#define NVIC_IPR20  (*((uint32*)    (NVIC + 0x320)))

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



#define SYSCFG_BASE       (*((volatile uint32 *)0x40013800)) 
#define SYSCFG_EXTICR1       (*((volatile uint32 *)0x40013808)) 


#define EXTI3_IRQVEC       (*((void (**)(void))0x2001C064)) 
#define EXTI2_IRQVEC       (*((void (**)(void))0x2001C060)) 
#define EXTI1_IRQVEC       (*((void (**)(void))0x2001C05C)) 
#define EXTI0_IRQVEC       (*((void (**)(void))0x2001C058)) 

#define NVIC_EXTI3_IRQ_BPOS   (1 << 9) 
#define NVIC_EXTI2_IRQ_BPOS   (1 << 8) 
#define NVIC_EXTI1_IRQ_BPOS   (1 << 7) 
#define NVIC_EXTI0_IRQ_BPOS   (1 << 6) 
#define EXTI3_IRQ_BPOS       (1 << 3) 
#define EXTI2_IRQ_BPOS       (1 << 2) 
#define EXTI1_IRQ_BPOS       (1 << 1) 
#define EXTI0_IRQ_BPOS       (1 << 0) 

#endif // INTERRUPT_H
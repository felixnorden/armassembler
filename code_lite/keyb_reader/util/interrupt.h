#include "types.h"

typedef struct {
    uint16      MEMRMP;
    uint32_c    RES_1;
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

typedef sys_cfg* sys_cfg_ptr;
#define SYS_CFG     (*((sys_cfg_ptr) 0x40013800))

typedef struct {
    uint32  IMR;
    uint32  EMR;
    uint32  RTSR;
    uint32  FTSR;
    uint32  SWIER;
    uint32  PR;
} exti;

typedef exti* exti_ptr;

#define EXTI        (*((exti_ptr)   0x40013C00))

typedef struct {
    uint32      REG_0;
    uint32      REG_1;
    uint16      REG_2;
} nvic;

typedef nvic* nvic_ptr;

#define NVIC_ISER   (*((nvic_ptr)   0xE000E100))
#define NVIC_CER    (*((nvic_ptr)   0xE000E180))
#define NVIC_ISPR   (*((nvic_ptr)   0xE000E200))
#define NVIC_ICPR   (*((nvic_ptr)   0xE000E280))
#define NVIC_IABR   (*((nvic_ptr)   0xE000E300))
#define NVIC_IPR0   (*((uint32)     0xE000E400))
#define NVIC_IPR20  (*((uint8)      0xE000E420))
/*
 * 	startup.c
 *
 */
#include "types.h"
#include "gpio.h"

#define SYSCFG_BASE 			(*((volatile uint32 *)0x40013800))
#define SYSCFG_EXTICR1 			(*((volatile uint32 *)0x40013808))
#define EXTI_IMR 				(*((volatile uint32 *)0x40013C00))
#define EXTI_FTSR 				(*((volatile uint32 *)0x40013C0C))
#define EXTI_RTSR 				(*((volatile uint32 *)0x40013C08))
#define EXTI_PR 				(*((volatile uint32 *)0x40013C14))
#define EXTI3_IRQVEC 			(*((void (**)(void))0x2001C064))
#define EXTI2_IRQVEC 			(*((void (**)(void))0x2001C060))
#define EXTI1_IRQVEC 			(*((void (**)(void))0x2001C05C))
#define EXTI0_IRQVEC 			(*((void (**)(void))0x2001C058))
#define NVIC_ISER0 	 			(*((volatile uint32 *)0xE000E100))
#define NVIC_EXTI3_IRQ_BPOS 	(1 << 9)
#define NVIC_EXTI2_IRQ_BPOS 	(1 << 8)
#define NVIC_EXTI1_IRQ_BPOS 	(1 << 7)
#define NVIC_EXTI0_IRQ_BPOS 	(1 << 6)
#define EXTI3_IRQ_BPOS 			(1 << 3)
#define EXTI2_IRQ_BPOS 			(1 << 2)
#define EXTI1_IRQ_BPOS 			(1 << 1)
#define EXTI0_IRQ_BPOS 			(1 << 0)

#define OUTPUT GPIO_D.ODR_LOW
#define IRQ_PINS GPIO_E.ODR_LOW

#define NVIC        0xE000E100
#define NVIC_ICPR0  (*((uint32*)    (NVIC + 0x180)))

#define EXTI3_IRQ_BPOS (1<<3)
#define EXTI2_IRQ_BPOS (1<<2)
#define EXTI1_IRQ_BPOS (1<<1)
#define EXTI0_IRQ_BPOS (1<<0)

void startup(void) __attribute__((naked)) __attribute__((section(".start_section")));

void startup(void)
{
	__asm volatile(
		" LDR R0,=0x2001C000\n" /* set stack */
		" MOV SP,R0\n"
		" BL main\n"   /* call main */
		"_exit: B .\n" /* never return */
	);
}
uint32 counter = 0;

void irq_incremet()
{
	// Not sure why these three are in this order
	// Feels like the EXTI line should be last 
	EXTI_PR = EXTI0_IRQ_BPOS;
	IRQ_PINS |= (1<<4);
	IRQ_PINS &= ~(1<<4);
	
	counter++;
	OUTPUT = counter;
}

void irq_reset()
{
	EXTI_PR = EXTI1_IRQ_BPOS;
	IRQ_PINS |= (1<<5);
	IRQ_PINS &= ~(1<<5);
	
	counter = 0;
	OUTPUT = counter;
}

void irq_periodic()
{
	if (OUTPUT != 0x00 && OUTPUT != 0xFF)
	{
		OUTPUT = 0x00;
	}
	OUTPUT = ~OUTPUT;
	
	EXTI_PR = EXTI2_IRQ_BPOS;	
	IRQ_PINS |= (1<<6);
	IRQ_PINS &= ~(1<<6);
}

void init_app(void)
{
	GPIO_D.MODER = 0x00005555;
	GPIO_E.MODER = 0x00005500;

	SYSCFG_EXTICR1 = 0x0444;
    
    
	EXTI_IMR = EXTI0_IRQ_BPOS | EXTI1_IRQ_BPOS | EXTI2_IRQ_BPOS;
	EXTI_RTSR = EXTI0_IRQ_BPOS | EXTI1_IRQ_BPOS | EXTI2_IRQ_BPOS;
	EXTI_PR = (EXTI0_IRQ_BPOS | EXTI1_IRQ_BPOS | EXTI2_IRQ_BPOS);
    
    
	EXTI0_IRQVEC = irq_incremet;
	EXTI1_IRQVEC = irq_reset;
	EXTI2_IRQVEC = irq_periodic;
	
	NVIC_ISER0 |= NVIC_EXTI0_IRQ_BPOS | NVIC_EXTI1_IRQ_BPOS | NVIC_EXTI2_IRQ_BPOS;
}

void main(void)
{
	init_app();
	while (1){}
}

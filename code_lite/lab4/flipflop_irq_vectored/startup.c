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
#define EXIT3_IRQVEC 			(*((void (**)(void))0x2001C064))
#define EXIT2_IRQVEC 			(*((void (**)(void))0x2001C060))
#define EXIT1_IRQVEC 			(*((void (**)(void))0x2001C05C))
#define EXIT0_IRQVEC 			(*((void (**)(void))0x2001C058))
#define NVIC_ISER0 	 			(*((volatile uint32 *)0x2001C058))
#define NVIC_EXTI3_IRQ_BPOS 	(1 << 9)
#define NVIC_EXTI2_IRQ_BPOS 	(1 << 8)
#define NVIC_EXTI1_IRQ_BPOS 	(1 << 7)
#define NVIC_EXTI0_IRQ_BPOS 	(1 << 6)
#define EXTI3_IRQ_BPOS 			(1 << 3)
#define EXTI2_IRQ_BPOS 			(1 << 2)
#define EXTI1_IRQ_BPOS 			(1 << 1)
#define EXTI0_IRQ_BPOS 			(1 << 0)

#define OUTPUT GPIO_E.ODR_LOW

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

void irq_reset()
{
	counter = 0;
	OUTPUT = 0x0;

	EXTI_PR |= EXTI0_IRQ_BPOS;
	OUTPUT |= 0x10;
	OUTPUT &= ~0x10;
}

void irq_incremet()
{
	counter++;
	OUTPUT = counter;

	EXTI_PR |= EXTI1_IRQ_BPOS;
	OUTPUT |= 0x20;
	OUTPUT &= ~0x20;
}

void irq_periodic()
{
	if (OUTPUT != 0)
	{
		OUTPUT = 0xFFFF;
	}

	OUTPUT = ~OUTPUT;
	
	EXTI_PR |= EXTI2_IRQ_BPOS;
	OUTPUT |= 0x40;
	OUTPUT &= ~0x40;	
}

void init_app(void)
{
	GPIO_D.MODER = 0x00005555;
	GPIO_E.MODER = 0x00001500;

	SYSCFG_EXTICR1 = 0x0444;

	EXTI_IMR = EXTI0_IRQ_BPOS | EXTI1_IRQ_BPOS | EXTI2_IRQ_BPOS;
	EXTI_FTSR = EXTI0_IRQ_BPOS | EXTI1_IRQ_BPOS | EXTI2_IRQ_BPOS;
	EXTI_RTSR = 0;

	NVIC_ISER0 = NVIC_EXTI0_IRQ_BPOS | NVIC_EXTI1_IRQ_BPOS | NVIC_EXTI2_IRQ_BPOS;
	EXIT0_IRQVEC = irq_incremet;
	EXIT1_IRQVEC = irq_reset;
	EXIT2_IRQVEC = irq_periodic;
	
}

void main(void)
{
	init_app();
	while (1)
	{
		uint32 x = GPIO_E.IDR_LOW;
		uint32 y = GPIO_E.IDR_HIGH;
		int a = 2;
	}
}

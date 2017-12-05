/*
 * 	startup.c
 *
 */
#include "types.h"
#include "gpio.h"
#include "interrupt.h"

#define OUTPUT GPIO_D.ODR_LOW
#define IRQ_PINS GPIO_E.ODR_LOW

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

void irq_increment()
{
	counter++;
	OUTPUT = counter;
	
	// Kvittera interrupt
	EXTI.PR = EXTI0_IRQ_BPOS;
	IRQ_PINS |= (1<<4);
	IRQ_PINS &= ~(1<<4);
	
}

void irq_reset()
{
	counter = 0;
	OUTPUT = counter;

	EXTI.PR = EXTI1_IRQ_BPOS;
	IRQ_PINS |= (1<<5);
	IRQ_PINS &= ~(1<<5);

}

void irq_periodic()
{
	if (OUTPUT != 0x00 && OUTPUT != 0xFF)
	{
		OUTPUT = 0x00;
	}
	OUTPUT = ~OUTPUT;
	
	// Kvittera avbrott
	EXTI.PR = EXTI2_IRQ_BPOS;	
	IRQ_PINS |= (1<<6);
	IRQ_PINS &= ~(1<<6);

}

void init_app(void)
{
	
#ifdef USBDM
	// Starta klockor för port D och E
	*((unsigned long *) 0x40023830) = 	0x18;
	
	// Starta SYSCFG klocka
	*((unsigned long *) 0x40023844) |= 	0x4000;
	
	// Relokera vektortabellen
	SCB_VTOR = VTOR;
#endif

	GPIO_D.MODER = 0x00005555;
	GPIO_E.MODER = 0x00001500;

	SYS_CFG.EXTICR1 = 0x0444;
    
	EXTI.IMR = EXTI0_IRQ_BPOS | EXTI1_IRQ_BPOS | EXTI2_IRQ_BPOS;
	EXTI.RTSR |= EXTI0_IRQ_BPOS | EXTI1_IRQ_BPOS | EXTI2_IRQ_BPOS;
	EXTI.FTSR &= ~(EXTI0_IRQ_BPOS | EXTI1_IRQ_BPOS | EXTI2_IRQ_BPOS);
	EXTI.PR = (EXTI0_IRQ_BPOS | EXTI1_IRQ_BPOS | EXTI2_IRQ_BPOS);
    
	EXTI0_IRQVEC = irq_increment;
	EXTI1_IRQVEC = irq_reset;
	EXTI2_IRQVEC = irq_periodic;
	NVIC_ISER.REG_0 |= NVIC_EXTI0_IRQ_BPOS | NVIC_EXTI1_IRQ_BPOS | NVIC_EXTI2_IRQ_BPOS;
}

void main(void)
{
	init_app();
	while (1){}
}

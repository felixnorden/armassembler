/*
 * 	startup.c
 *
 */
 
 #include "types.h"
 #include "interrupt.h"
 #include "gpio.h"

 #define SCB_VTOR ((uint32*) 0xE000ED08)
 
void startup(void) __attribute__((naked)) __attribute__((section (".start_section")) );

void startup ( void )
{
__asm volatile(
	" LDR R0,=0x2001C000\n"		/* set stack */
	" MOV SP,R0\n"
	" BL main\n"				/* call main */
	"_exit: B .\n"				/* never return */
	) ;
}

uint8 volatile counter = 0;
void irq_handler(void)
{
	// uint32 x = EXTI.PR;
	// uint32 y = &EXTI.PR;
	if((EXTI.PR & 0x08)) {
		counter++;
		EXTI.PR |= 0x08;		
	}
	
}
init_app(void) {
	GPIO_D.MODER = 0x00005555;
	
	*((uint32*) 0x40013808) = 0x4000;

	EXTI.IMR |= 0x8;
	EXTI.FTSR |= 0x8;
	EXTI.RTSR = 0x0;

	*((void (**)(void) ) 0x2001C064) = irq_handler;
	NVIC_ISER.REG_0 |= (1<<9);
}

void main(void)
{
	init_app();
	while (1) {
		uint32 x = GPIO_E.IDR_LOW;
		GPIO_D.ODR_LOW = counter;
	}
}
/*
 * 	startup.c
 *
 */
 
#include "delay.h"
#include "gpio.h"
#include "types.h"
 
#ifdef SIMULATOR
	#define DELAY_COUNT 1000
#else
	#define DELAY_COUNT 1000000
#endif

extern uint8 sysTick_flag;

void startup(void) __attribute__((naked)) __attribute__((section (".start_section")) );

void startup ( void )
{
__asm volatile(
	" LDR R0,=0x2001C000\n"		/* set stack */
	" MOV SP,R0\n"
	" BL main\n"				/* call main */
	"_exit: B .\n"				/* never return */
	);

	}


init_app(void) {
	GPIO_D.MODER = 0x00005555;
	
	*((void (**) (void)) 0x2001C03C) = sysTick_irq_handler;
}

void main(void)
{
	uint8 c = 0;
	init_app();
	GPIO_D.ODR_LOW = 0x00;
	delay(DELAY_COUNT);
	GPIO_D.ODR_LOW = 0xFF;
	while (1) {
		if (sysTick_flag == 1) {
			break;
		}
		GPIO_D.ODR_LOW = c;
        c++;
	}
	GPIO_D.ODR_LOW = 0x0;
}


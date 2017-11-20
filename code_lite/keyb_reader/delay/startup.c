/*
 * 	startup.c
 *
 */
 #include "gpio.h"
 #include "delay.h"
 
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

void init_app(void) {
	// Init Bargraph
	GPIO_E.MODER = 0x5555;
}

void main(void)
{
	init_app();
	while (1) 
	{
		GPIO_E.ODR = 0xFF;
		delay_milli(500);
		GPIO_E.ODR = 0x00;
		delay_milli(500);
	}
}


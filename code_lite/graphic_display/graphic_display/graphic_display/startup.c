#include "../../util/graphicdisplay.h"
#include "../../util/gpio.h"

/*
 * 	startup.c
 *
 */
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

void init_app(void)
{
#ifdef USBDM
	*((unsigned long *)0x40023830) = 0x18;
	__asm volatile(" LDR R0,=0x08000209\n BLX R0 \n");
#endif

	GPIO_E.MODER = 0x55555555;
}

void main(void)
{
	uint32 i;
	init_app();
	graphic_initialize();

#ifndef SIMULATOR
	graphic_clear_screen();
#endif

	for (i = 0; i < 128; i++)
	{
		pixel(i, 10, 1);
	}
	for (i = 0; i < 64; i++)
	{
		pixel(10, i, 1);
	}

	delay_milli(500);

	for (i = 0; i < 128; i++)
	{
		pixel(i, 10, 0);
	}
	for (i = 0; i < 64; i++)
	{
		pixel(10, i, 0);
	}
}

/*
 * 	startup.c
 *
 */
#include "./util/types.h"
#include "breakoutobjects.h"
#include "util/renderer.h"
#include "util/gpio.h"

void startup(void) __attribute__((naked)) __attribute__((section(".start_section")));

void renderLoop(void);
void updateLoop(void);

extern Object ball;
extern Renderer renderer;

void init_app(void)
{
#ifdef USBDM
	*((unsigned long *)0x40023830) = 0x18;
	__asm volatile(" LDR R0,=0x08000209\n BLX R0 \n");
#endif

	GPIO_E.MODER = 0x55555555;
	GPIO_E.OSPEEDR = 0x55555555;
	GPIO_E.OTYPER = 0x0;

	GPIO_D.MODER = 0x55000000;
	GPIO_D.OTYPER &= 0x0000;
	GPIO_D.PUPDR &= 0x0000FFFF;
	GPIO_D.PUPDR |= 0x00AA0000;
}

void startup(void)
{
	__asm volatile(
		" LDR R0,=0x2001C000\n" /* set stack */
		" MOV SP,R0\n"
		" BL main\n"   /* call main */
		"_exit: B .\n" /* never return */
	);
}

void drawTest(void)
{
	uint32 i;
	init_app();
	graphic_initialize();

#ifndef SIMULATOR
	graphic_clear_screen();
#endif
	renderer.setFrameBuffer(&renderer, &frameBuffer);

	/*for (uint16 index = 0; index < frameBuffer.pages; index++)
	{
		*(frameBuffer.frame + index) = 0xFF;
	}*/
	
	for (i = 0; i < 128; i++)
	{
		frameBuffer.setPixel(&frameBuffer, i,10,TRUE);
	}
	for (i = 0; i < 64; i++)
	{
		frameBuffer.setPixel(&frameBuffer, 10, i,TRUE);
	}

	renderer.renderFrame(&renderer);
	delay_milli(1000);

	for (i = 0; i < 128; i++)
	{
		frameBuffer.setPixel(&frameBuffer, i,10,FALSE);
	}
	for (i = 0; i < 64; i++)
	{
		frameBuffer.setPixel(&frameBuffer, 10, i,FALSE);
	}
	
	renderer.renderFrame(&renderer);
}

void test(void)
{
	init_app();
	renderer.setFrameBuffer(&renderer, &frameBuffer);
	renderer.init();
	while (1)
	{
		ball.clear(&ball);
		updateLoop();
		renderLoop();
	}
}

void main(void)
{
	test();
}

void renderLoop(void)
{
	ball.draw(&ball);
	renderer.renderFrame(&renderer);
}
void updateLoop(void)
{
	ball.move(&ball);
}

#include "graphicdisplay.h"
#include "gpio.h"
#include "geometry.h"
#include "object.h"

#define SPEED 3

/*
 * 	startup.c
 *
 */
void startup(void) __attribute__((naked)) __attribute__((section(".start_section")));

void drawTest(void);
void autopong(void);
void ballSteering(void);
uint8 keyb(void);

void clear_object(ObjectPtr obj);
void draw_object(ObjectPtr obj);

const Geometry ballGeometry = {
	12,
	4,4,
	(Point[MAX_POINTS]){	
		// Going from left to right, 
		// using y as the downward axis.
		{0,1}, {0,2},
		{1,0}, {1,1}, {1,2}, {1,3},
		{2,0}, {2,1}, {2,2}, {2,3},
		{3,1}, {3,2}
	}
};

Object ball = {
	&ballGeometry,
	1,1,
	64,32,
	draw_object,
	clear_object,
	update_object,
	set_object_speed
};


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
	GPIO_E.OSPEEDR = 0x55555555;
	GPIO_E.OTYPER = 0x0;
	
	GPIO_D.MODER = 0x55000000;
	GPIO_D.OTYPER &= 0x0000;
	GPIO_D.PUPDR &= 0x0000FFFF;
	GPIO_D.PUPDR |= 0x00AA0000;
}

void main(void)
{
	// Test for drawing display
 	 //drawTest();

	// Autopong
	//autopong();
	
	// Steer the ball manually
	ballSteering();
}

// x: index of row
void activateRow(uint8 x) {
	GPIO_D.ODR_HIGH = 0;
	GPIO_D.ODR_HIGH |= (0x1 << (4 + x));
}

uint8 readColumns() {
	return GPIO_D.IDR_HIGH;
}


ballSteering(void) {
	ObjectPtr ballerBall = &ball;
	init_app();
	graphic_initialize();

#ifndef SIMULATOR
	graphic_clear_screen();
#endif

	ballerBall->set_speed(ballerBall, 0, 0);
	while(TRUE)
	{
		uint8 input = keyb();
		// Up
		if (input == 1) {
			ballerBall->set_speed(ballerBall, 0, -SPEED);
		}
		// Left
		else if (input == 4) 
		{
			ballerBall->set_speed(ballerBall, -SPEED, 0);
		}
		// Down
		else if (input == 5)
		{
			ballerBall->set_speed(ballerBall, 0, SPEED);
		}
		// Right
		else if (input == 6)
		{
			ballerBall->set_speed(ballerBall, SPEED, 0);
		}
		
		ballerBall->move(ballerBall);
		delay_milli(40);
	}
}

uint8 keyb( void ) {
	uint8 activeKey = 0xFF;
	for (uint8 row = 0; row < 4; row++) {
		activateRow(row);
		uint8 columnValue = readColumns();
		
		for (uint8 column = 0; column < 4; column++) {
			uint8 activeColumn = (columnValue & 0x1);
			if (activeColumn) {
				activeKey = row * 4 + column;
				return activeKey;
			}
			columnValue >>= 0x1;
		}
	}
	return activeKey;
}

void autopong(void)
{
	ObjectPtr ballerBall = &ball;
	init_app();
	graphic_initialize();

#ifndef SIMULATOR
	graphic_clear_screen();
#endif

	ballerBall->set_speed(ballerBall, 4, 1);

	while(TRUE)
	{
		ballerBall->move(ballerBall);
		delay_milli(40);
	}
}

void drawTest(void)
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

void clear_object (ObjectPtr obj)
{	
	GeometryPtr objectGeometry = obj->geo;
	uint8 dimensionSize = objectGeometry->numpoints;
	
	for(int i = 0; i < dimensionSize; i++)
	{
		Point objectPixel = objectGeometry->px[i];
		pixel(obj->posx + objectPixel.x, obj->posy + objectPixel.y, 0);
	}
}

void draw_object (ObjectPtr obj)
{	
	GeometryPtr objectGeometry = obj->geo;
	uint8 dimensionSize = objectGeometry->numpoints;
	
	for(int i = 0; i < dimensionSize; i++)
	{
		Point objectPixel = objectGeometry->px[i];
		pixel(obj->posx + objectPixel.x, obj->posy + objectPixel.y, 1);
	}
}
/*
 * 	startup.c
 *
 */
#include "./util/types.h"
#include "breakoutobjects.h"
#include "util/renderer.h"
#include "util/gpio.h"
#include "util/keyb.h"

void startup(void) __attribute__((naked)) __attribute__((section(".start_section")));

void renderLoop(void);
void updateLoop(void);

extern Object ball;
extern Object rectangle;
extern Renderer renderer;
extern Object paddle;

#define COLLISION_ERROR_MARGIN 2.0f
#define RECTANGLE_AMOUNT 84
// if one, rectangle is kill
// 14 rectangles in a row
// 6 rows in total
uint8 rectangleArray[RECTANGLE_AMOUNT];

void getRectanglePos(uint8 index, Point *point) {
	point->x = (index%14) * (rectangle.geo->sizex+2) + 2;
	point->y = (index/14) * (rectangle.geo->sizey+2) + 2;
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

	renderer.setFrameBuffer(&renderer, &frameBuffer);
	renderer.init();
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

void updatePaddle(void)
{
	uint8 input = keyb();

	// Up
	if (input == 1)
	{
		// Do nothing
	}
	// Left
	else if (input == 4)
	{
		paddle.dirx = -PADDLE_SPEED;
	}
	// Down
	else if (input == 5)
	{
		// Do nothing
	}
	// Right
	else if (input == 6)
	{
		paddle.dirx = PADDLE_SPEED;
	}
	else
	{
		paddle.dirx = 0;
	}

	paddle.move(&paddle);
}

void ballCollision(void)
{
	if (ball.posx + ball.geo->sizex > 126 || ball.posx < 1)
	{
		ball.dirx *= -1;
	}

	if (ball.posy < 2)
	{
		ball.diry *= -1;
	}
}

void paddleCollision(void)
{
	if (ball.posx <= paddle.posx + paddle.geo->sizex && ball.posx + ball.geo->sizex >= paddle.posx)
	{
		if (ball.posy + ball.geo->sizey >= paddle.posy && ball.posy <= paddle.posy + paddle.geo->sizey)
		{
			// Check if ball is within inner error margin of X-axis
			if (ball.posx < paddle.posx + paddle.geo->sizex - COLLISION_ERROR_MARGIN &&
				ball.posx + ball.geo->sizex > paddle.posx + COLLISION_ERROR_MARGIN)
			{
				// If ball is within top/bottom error margin, then invert Y-axis direction
				if (ball.posy + ball.geo->sizey < paddle.posy + COLLISION_ERROR_MARGIN ||
					ball.posy > paddle.posy + paddle.geo->sizey - COLLISION_ERROR_MARGIN)
				{
					ball.diry *= -1;
					return;
				}
			}
			// Check if ball is within inner error margin of Y-axis
			if (ball.posy + ball.geo->sizey > paddle.posy + COLLISION_ERROR_MARGIN &&
				ball.posy < paddle.posy + paddle.geo->sizey - COLLISION_ERROR_MARGIN)
			{
				// If ball is inside left/right error margin, then invert X-axis direction
				if (ball.posx + ball.geo->sizex < paddle.posx + COLLISION_ERROR_MARGIN ||
					ball.posx > paddle.posx + paddle.geo->sizex - COLLISION_ERROR_MARGIN)
				{
					ball.dirx *= -1;
					return;
				}
			}
			// If not in error margins, then we have hit a corner -> invert both axes
			ball.dirx *= -1;
			ball.diry *= -1;
		}
	}

}

void rectangleCollisions(void)
{
	for (uint8 i = 0; i < RECTANGLE_AMOUNT; i++)
	{
		if (rectangleArray[i])
		{

			static Point pos = {0, 0};
			getRectanglePos(i, &pos);

			if (ball.posx <= pos.x + rectangle.geo->sizex && ball.posx + ball.geo->sizex >= pos.x)
			{
				//ball.dirx*=-1;

				if (ball.posy < pos.y + rectangle.geo->sizey && ball.posy + ball.geo->sizey > pos.y)
				{
					ball.diry *= -1;
					rectangleArray[i] = TRUE;
				}
			}
		}
	}
}

void gameLoop(void) {
	
		// Draw inverse
		drawObjectToBuffer(&ball, &frameBuffer, FALSE);
		drawObjectToBuffer(&paddle, &frameBuffer, FALSE);

		for (uint8 i = 0; i < RECTANGLE_AMOUNT; i++)
		{
			static Point pos = {0, 0};
			getRectanglePos(i, &pos);
			rectangle.posx = pos.x;
			rectangle.posy = pos.y;
			drawObjectToBuffer(&rectangle, &frameBuffer, FALSE);
		}		
		
		// Update player paddle
		updatePaddle();

		// Update ball
		ball.move(&ball);

		// Check collisions
		ballCollision();
		paddleCollision();
		rectangleCollisions();
		// Update scores

		// Draw to buffer
		drawObjectToBuffer(&ball, &frameBuffer, TRUE);
		drawObjectToBuffer(&paddle, &frameBuffer, TRUE);

		for (uint8 i = 0; i < RECTANGLE_AMOUNT; i++)
		{
			if (!rectangleArray[i])
			{
				static Point pos = {0, 0};
				getRectanglePos(i, &pos);
				rectangle.posx = pos.x;
				rectangle.posy = pos.y;
				drawObjectToBuffer(&rectangle, &frameBuffer, TRUE);
			}
		}

		// Render to screen
		renderer.renderFrame(&renderer);

		// Render scores to AsciiDisplay
		// Todo
}

drawFrame(void)
{
	
	// Top side
	for (uint16 i = 8; i < 1023; i+=8)
	{
		*(frameBuffer.frame + i) = 0x01;
	}
	
	// Left side
	for(uint8 i = 0; i < 8; i++) {
		*(frameBuffer.frame + i) = 0xFF;
	}
	
	//Right side
	for(uint16 i = 1024-8; i < 1024; i++) {
		*(frameBuffer.frame + i) = 0xFF;
	}
	
}

void main(void)
{
	init_app();
	drawFrame();
	
	renderer.renderFrame(&renderer);
	
	while(TRUE) {
		gameLoop();
	}
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

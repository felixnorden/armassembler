/*
 * 	startup.c
 *
 */
#include "./util/types.h"
#include "breakoutobjects.h"
#include "util/renderer.h"
#include "util/gpio.h"
#include "util/keyb.h"
#include "util/asciidisplay.h"

void startup(void) __attribute__((naked)) __attribute__((section(".start_section")));

void renderLoop(void);
void updateLoop(void);

extern Object ball;
extern Object rectangle;
extern Renderer renderer;
extern Object paddle;

#define COLLISION_ERROR_MARGIN 1.0f
#define RECTANGLE_AMOUNT 84

int8 lives = 2;
uint8 score = 0;
uint32 ballDeathDelay = 0;

// if one, rectangle is kill
// 14 rectangles in a row
// 6 rows in total
uint8 rectangleArray[RECTANGLE_AMOUNT];

void getRectanglePos(uint8 index, Point *point) {
	point->x = (index%14) * (rectangle.geo->sizex+2) + 2;
	point->y = (index/14) * (rectangle.geo->sizey+2) + 2;
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
	if (input == 1) {
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

void reset(void) {
	ball.posx = 62;
	ball.posy = 32;
	lives--;
	ballDeathDelay = 15;
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
	
	if (ball.posy + ball.geo->sizey > 64)
	{
		reset();
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

uint8 rectangleCollisions(Object *rec, uint16 index)
{
		if (ball.posx <= rec->posx + rec->geo->sizex && ball.posx + ball.geo->sizex >= rec->posx)
	{
		if (ball.posy + ball.geo->sizey >= rec->posy && ball.posy <= rec->posy + rec->geo->sizey)
		{
			// Check if ball is within inner error margin of X-axis
			if (ball.posx < rec->posx + rec->geo->sizex - COLLISION_ERROR_MARGIN &&
				ball.posx + ball.geo->sizex > rec->posx + COLLISION_ERROR_MARGIN)
			{
				// If ball is within top/bottom error margin, then invert Y-axis direction
				if (ball.posy + ball.geo->sizey < rec->posy + COLLISION_ERROR_MARGIN ||
					ball.posy > rec->posy + rec->geo->sizey - COLLISION_ERROR_MARGIN)
				{
					ball.diry *= -1;
					return;
				}
			}
			// Check if ball is within inner error margin of Y-axis
			if (ball.posy + ball.geo->sizey > rec->posy + COLLISION_ERROR_MARGIN &&
				ball.posy < rec->posy + rec->geo->sizey - COLLISION_ERROR_MARGIN)
			{
				// If ball is inside left/right error margin, then invert X-axis direction
				if (ball.posx + ball.geo->sizex < rec->posx + COLLISION_ERROR_MARGIN ||
					ball.posx > rec->posx + rec->geo->sizex - COLLISION_ERROR_MARGIN)
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

drawFrame(void)
{
	
	// Top side
	for (uint16 i = 8; i < 1023; i+=8)
	{
		*(frameBuffer.frame + i) |= 0x01;
	}
	
	// Left side
	for(uint8 i = 0; i < 8; i++) {
		*(frameBuffer.frame + i) |= 0xFF;
	}
	
	//Right side
	for(uint16 i = 1024-8; i < 1024; i++) {
		*(frameBuffer.frame + i) |= 0xFF;
	}
	
}

void gameLoop(void) {
	
		// Draw inverse
		drawObjectToBuffer(&ball, &frameBuffer, FALSE);
		drawObjectToBuffer(&paddle, &frameBuffer, FALSE);
		
		for(uint8 i = 0; i < RECTANGLE_AMOUNT; i++) 
		{
			static Point pos = {0,0};
			getRectanglePos(i, &pos);
			score = 0;
			rectangle.posx = pos.x;
			rectangle.posy = pos.y;
			drawObjectToBuffer(&rectangle, &frameBuffer, FALSE);
		}		
		
		// Update player paddle
		updatePaddle();
		
		// Update ball
		if (ballDeathDelay> 0) 
		{
			ballDeathDelay--;
		}
		else 
		{
			ball.move(&ball);
		}
		
		// Check collisions
		ballCollision();
		paddleCollision();
		
		for (uint8 i = 0; i < RECTANGLE_AMOUNT; i++)
		{	
			if (rectangleArray[i] == 0)
			{
				static Point pos = {0,0};
				getRectanglePos(i,&pos);
				rectangle.posx = pos.x;
				rectangle.posy = pos.y;
				
				if (rectangleCollisions(&rectangle, i))
				{
					rectangleArray[i] = TRUE;
					break;
				}
			}
		}
		// Update scores

		// Draw to buffer
		drawObjectToBuffer(&ball, &frameBuffer, TRUE);
		drawObjectToBuffer(&paddle, &frameBuffer, TRUE);
		
		for(uint8 i = 0; i < RECTANGLE_AMOUNT; i++) 
		{
			if (!rectangleArray[i]) {
				static Point pos = {0,0};
				getRectanglePos(i, &pos);
				rectangle.posx = pos.x;
				rectangle.posy = pos.y;
				drawObjectToBuffer(&rectangle, &frameBuffer, TRUE);
			}
		}
		drawFrame();
		// Render to screen
		renderer.renderFrame(&renderer);
		
		// Render scores to AsciiDisplay
		// Todo
}


deathScreen() {
	static uint16 screenPage = 0;
	uint8 input = keyb();
		
	// Restart
	if (input == 3) {
		// Reset game
		lives = 2;
		score = 0;
		screenPage = 0;
		
		// Clear screen
		for(uint16 i = 0; i < 1024; i++)
		{
			*(frameBuffer.frame + i) = 0x00;
		}
		
		// Reset rectangles
		for(uint16 i = 0; i < RECTANGLE_AMOUNT; i++)
		{
			*(rectangleArray + i) = 0x00;
		}
	}

	// Show final score. Draw only once
	if (screenPage < 1)
	{
		ascii_gotoxy(1,1);
		flushToAsciiDisplay("GAME OVER");
		ascii_gotoxy(1,2);
		flushToAsciiDisplay("Final score: ");
		flushToAsciiDisplay(intToChar(score));
	}

	
	// Fill screen
	if (screenPage < 1024)
	{	
		for(uint8 i = 0; i < 16; i++)
		{
			*(frameBuffer.frame + screenPage) = 0xFF;
			screenPage++;
		}
	}
	
	renderFrame(&renderer);
}

uint8 abs(uint8 number)
{
	if (number < 0)
	{
		return -number;
	}
	else
	{
		return number;
	}
}

char* intToChar(int8 number)
{
	static char chars[4];
	static uint8 digits[3];

	digits[0] = abs(number / 100);	// Tripple digit number
	digits[1] = abs(number / 10);	// Double digit number
	digits[2] = abs(number % 10);	// Single digit number

	uint8 i = 0;

	if (number < 0) {
		chars[0] = 44; // Negative sign
		i = 1;
	}

	for(int j = 0; j < 3; j++) {
		chars[i + j] = digits[j] + 48; // Ascii digit offset
	}

	return chars;
}

static char *firstLine = "Score: ";
static char *secondLine = "Lives: ";

void flushToAsciiDisplay(char * text)
{
	while (*text) 
	{
		ascii_write_char(*text++);
	}
}


void updateAsciiDisplay(void)
{
	// Write first line
	ascii_gotoxy(1,1);
	flushToAsciiDisplay(firstLine);
	flushToAsciiDisplay(intToChar(lives));

	// Write second line
	ascii_gotoxy(1,2);
	flushToAsciiDisplay(secondLine);
	flushToAsciiDisplay(intToChar(score));
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

	ascii_init();
}

void main(void)
{
	init_app();
	
	while(TRUE) {
		if (lives > -1)
		{
			gameLoop();
		} else {
			deathScreen();
		}
	}
}

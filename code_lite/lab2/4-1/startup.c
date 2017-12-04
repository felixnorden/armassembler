/*
 * 	startup.c
 *
 */

#include "gpio.h"
#include "types.h"
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
void appInit(void) {
	#ifdef USBDM
	* ((unsigned long *) 0x40023830) = 0x18;
	#endif
	GPIO_D.MODER &= 0x00000000;
	GPIO_D.MODER |= 0x55005555;
	
	GPIO_D.OTYPER &= 0x0000;

	GPIO_D.PUPDR &= 0x0000FFFF;
	GPIO_D.PUPDR |= 0x00AA0000;
}

// x: index of row
void activateRow(uint8 x) {
	GPIO_D.ODR &= 0x0000FFFF;
	GPIO_D.ODR |= (0x1 << (12 + x));
}
uint8 readColumns() {
	return GPIO_D.IDR >> 8;
}
unsigned char keyb( void ) {
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

void out7seg(unsigned char keyValue) {
	static uint8_c sevenSegmentCodes[] = {
		0x06, 0x5B, 0x4F, 0x77,
		0x66, 0x6D, 0x7D, 0x7C,
		0x07, 0x7F, 0x67, 0x39,
		0x79, 0x3F, 0x71, 0x5E
	};
	
	if (keyValue < 16 && keyValue >= 0) {
		GPIO_D.ODR = sevenSegmentCodes[keyValue];
	} else {
		GPIO_D.ODR = 0x00;
	}
}

void main(void)
{
	appInit();
	while (1) {
		out7seg(keyb());
	}
}
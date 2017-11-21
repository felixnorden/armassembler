/*
 * 	startup.c
 *
 */
#include "asciidisplay.h"
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

void app_init(void)
{
	#ifdef USBDM
		*((unsigned long *)0x40023830) = 0x18;
		__asm volatile( " LDR R0,=0x08000209\n BLX R0 \n");
	#endif
	
	// Init display port
	portModer = 0x55555555;
	portOtyper = 0x00000000;
	portOspeedr = 0x55555555;
}

void main(void)
{
	char *s;
	char test1[] = " Kalles Kebabkaviar";
	char test2[] = "- I know you like it";
	
	app_init();
	ascii_init();
	
	ascii_gotoxy(1,1);
	s = test1;
	while (*s) 
	{
		ascii_write_char(*s++);
	}
	
	ascii_gotoxy(1,2);
	s = test2;
	while (*s)
	{
		ascii_write_char(*s++);
	}
}

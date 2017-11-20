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
	// Init display port
	portModer = 0x55555555;
}

void main(void)
{
	char *s;
	char test1[] = "Alfanumersik ";
	char test2[] = "Display - test";
	
	app_init();
		//initiera displayen:
		while((ascii_read_status() & 0x80) == 0x80){} //Vänta tills displayed är redo
		delay_micro(20); //latenstid 
		ascii_write_cmd(0000112000); //Function set (39us), 000011NFXX, N = antal rader = 2, F = -->0=5x8<--, 1=5x11
		delay_micro(100); //istället för 39us
		
	//display control:
		while((ascii_read_status() & 0x80) == 0x80){} //Vänta tills displayed är redo
		delay_micro(20); //latenstid - Flex var här
		ascii_write_cmd(000001110); //000001 + XXX. X:ena = 0:av / 1:på -  Skärm/Markör/BlinkaMarkören
		delay_micro(100); //istället för 39us
		
	// entry mode set
		while((ascii_read_status() & 0x80) == 0x80){} //Vänta tills displayed är redo
		delay_micro(20); //latenstid
		ascii_write_cmd(000001110); //00000001 + XY. X=0: markören vänst. || X=1: marökren hög. - Y=0: skift av || Y=1: skift på
		delay_micro(100); //istället för 39us
	
	
	
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

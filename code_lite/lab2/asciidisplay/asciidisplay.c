#include "asciidisplay.h"

void ascii_ctrl_bit_set(uint8_c x)
{
	portOdrLow |= x;
	portOdrLow |= B_SELECT;
}

void ascii_ctrl_bit_clear(uint8_c x)
{
	portOdrLow &= ~x;
	portOdrLow |= B_SELECT;
}

void ascii_write_cmd(uint8_c command)
{
	ascii_ctrl_bit_clear(B_RS | B_RW);
	ascii_write_controller(command);
}
void ascii_write_data(uint8_c data)
{
	ascii_ctrl_bit_set(B_RS);
	ascii_ctrl_bit_clear(B_RW);
	ascii_write_controller(data);
}

uint8 ascii_read_status(void)
{
	uint8 rv = 0;
	portModer &= 0x0000FFFF;
	ascii_ctrl_bit_clear(B_RS);
	ascii_ctrl_bit_set(B_RW);
	rv = ascii_read_controller();
	portModer &= 0x0000FFFF;
	portModer |= 0x55550000;
	return rv;
}
uint8 ascii_read_data(void)
{
	uint8 rv = 0;
	portModer &= 0x0000FFFF;
	ascii_ctrl_bit_set(B_RW | B_RS);
	rv = ascii_read_controller();
	portModer &= 0x0000FFFF;
	portModer |= 0x55550000;
	return rv;
}

void ascii_write_controller(uint8 byte) 
{
	// 40 ns delay not required to delay manually
	ascii_ctrl_bit_set(B_E);
	portOdrHigh = byte;
	delay_250ns();
	ascii_ctrl_bit_clear(B_E);
	// 10 ns delay not required to delay manually
}

uint8 ascii_read_controller(void)
{
	uint8 rv = 0;
	ascii_ctrl_bit_set(B_E);
	delay_250ns();
	delay_250ns();
	rv = portIdrHigh;
	ascii_ctrl_bit_clear(B_E);
	return rv;
}

void ascii_command(uint8 command, uint16 commandDelay)
{
	while ((ascii_read_status() & 0x80) == 0x80) {}
	delay_micro(20);
	ascii_write_cmd(command);
	delay_micro(commandDelay);
}

void ascii_init(void)
{	
	ascii_command((uint8) 0b00111000, 50);
	ascii_command((uint8) 0b00001110, 50);
	ascii_command((uint8) 0b00000001, 1600);
	ascii_command((uint8) 0b00000110, 1600);
}

void ascii_gotoxy(uint8 x, uint8 y) 
{
	uint8 address = 	y == 2 ?
						x - 1 + 0x40 :
						x -1;
	ascii_command(0x80 | address, 50);
}

void ascii_write_char(unsigned char c)
{
	while ((ascii_read_status() & 0x80) == 0x80) {}
	delay_micro(10);
	ascii_write_data(c);
	delay_micro(50);
}
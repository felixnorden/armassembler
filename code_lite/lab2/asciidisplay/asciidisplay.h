#ifndef ASCIIDISPLAY_H
#define ASCIIDISPLAY_H
#include "types.h"


#define PORT_BASE 0x40021000
#define portModer (*((volatile uint32*)PORT_BASE))
#define portOtyper (*((volatile uint16*)(PORT_BASE + 0x4)))
#define portOspeedr (*((volatile uint32*)(PORT_BASE + 0x8)))
#define portPupdr	(*((volatile uint32*) (PORT_BASE + 0xC)))

#define portIdrLow (*((volatile uint8*)(PORT_BASE + 0x10)))
#define portIdrHigh (*((volatile uint8*)(PORT_BASE + 0x11)))
#define portOdrLow (*((volatile uint8*)(PORT_BASE + 0x14)))
#define portOdrHigh (*((volatile uint8*)(PORT_BASE + 0x15)))

#define B_E 0x40
#define B_SELECT 0x4
#define B_RW 0x02
#define B_RS 0x01

void ascii_ctrl_bit_set(uint8_c x);
void ascii_ctrl_bit_clear(uint8_c x);

void ascii_write_cmd(uint8_c command);
void ascii_write_data(uint8_c data);

uint8 ascii_read_status(void);
uint8 ascii_read_data(void);

void ascii_write_controller(uint8 byte);
uint8 ascii_read_controller(void);

void ascii_command(uint8 command, uint16 commandDelay);
void ascii_init(void);

void ascii_gotoxy(uint8 x, uint8 y) ;
void ascii_write_char(unsigned char c);

#endif // ASCIIDISPLAY_H
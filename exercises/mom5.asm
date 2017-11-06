@ mom5.asm

start:
@ initiera port D som utport
	LDR	R6,=0x55555555 	
	LDR	R5,=0x40020C00		
	STR	R6,[R5]

@ adressen till port D:s ut-dataregister till R5
	LDR	R5,=0x40020C14
	
@ adressen till port E:s in-dataregister till R6
	LDR	R6,=0x40021010

main:	
	LDRB	R0,[R6]
	SXTB	R0,R0
	LDRB	R1,[R6,#1]
	SXTB	R1,R1
	ADD	R0,R0,R1
	STRH	R0,[R5]
	B	main

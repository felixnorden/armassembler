	
	LDR	R1,=c
	LDR	R2,=s
	LDR	R3,=0
	LDRB	R0,[R1,R3]
	STRH	R0,[R2]

	.ALIGN
s:	.SPACE	2
c:	.SPACE	1

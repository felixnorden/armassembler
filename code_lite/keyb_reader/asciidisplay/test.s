   1              		.arch armv6-m
   2              		.eabi_attribute 20, 1
   3              		.eabi_attribute 21, 1
   4              		.eabi_attribute 23, 3
   5              		.eabi_attribute 24, 1
   6              		.eabi_attribute 25, 1
   7              		.eabi_attribute 26, 1
   8              		.eabi_attribute 30, 6
   9              		.eabi_attribute 34, 0
  10              		.eabi_attribute 18, 4
  11              		.file	"startup.c"
  12              		.text
  13              	.Ltext0:
  14              		.cfi_sections	.debug_frame
  15              		.section	.start_section,"ax",%progbits
  16              		.align	1
  17              		.global	startup
  18              		.syntax unified
  19              		.code	16
  20              		.thumb_func
  21              		.fpu softvfp
  23              	startup:
  24              	.LFB0:
  25              		.file 1 "C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/asciidisplay/startup.c"
   1:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/asciidisplay\startup.c **** /*
   2:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/asciidisplay\startup.c ****  * 	startup.c
   3:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/asciidisplay\startup.c ****  *
   4:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/asciidisplay\startup.c ****  */
   5:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/asciidisplay\startup.c **** #include "asciidisplay.h"
   6:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/asciidisplay\startup.c **** void startup(void) __attribute__((naked)) __attribute__((section (".start_section")) );
   7:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/asciidisplay\startup.c **** 
   8:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/asciidisplay\startup.c **** void startup ( void )
   9:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/asciidisplay\startup.c **** {
  26              		.loc 1 9 0
  27              		.cfi_startproc
  28              		@ Naked Function: prologue and epilogue provided by programmer.
  29              		@ args = 0, pretend = 0, frame = 0
  30              		@ frame_needed = 1, uses_anonymous_args = 0
  10:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/asciidisplay\startup.c **** __asm volatile(
  31              		.loc 1 10 0
  32              		.syntax divided
  33              	@ 10 "C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/asciidisplay/startup.c" 1
  34 0000 0248     		 LDR R0,=0x2001C000
  35 0002 8546     	 MOV SP,R0
  36 0004 FFF7FEFF 	 BL main
  37 0008 FEE7     	_exit: B .
  38              	
  39              	@ 0 "" 2
  11:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/asciidisplay\startup.c **** 	" LDR R0,=0x2001C000\n"		/* set stack */
  12:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/asciidisplay\startup.c **** 	" MOV SP,R0\n"
  13:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/asciidisplay\startup.c **** 	" BL main\n"				/* call main */
  14:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/asciidisplay\startup.c **** 	"_exit: B .\n"				/* never return */
  15:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/asciidisplay\startup.c **** 	) ;
  16:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/asciidisplay\startup.c **** }
  40              		.loc 1 16 0
  41              		.thumb
  42              		.syntax unified
  43 000a C046     		nop
  44              		.cfi_endproc
  45              	.LFE0:
  47              		.text
  48              		.align	1
  49              		.global	app_init
  50              		.syntax unified
  51              		.code	16
  52              		.thumb_func
  53              		.fpu softvfp
  55              	app_init:
  56              	.LFB1:
  17:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/asciidisplay\startup.c **** 
  18:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/asciidisplay\startup.c **** void app_init(void)
  19:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/asciidisplay\startup.c **** {
  57              		.loc 1 19 0
  58              		.cfi_startproc
  59              		@ args = 0, pretend = 0, frame = 0
  60              		@ frame_needed = 1, uses_anonymous_args = 0
  61 0000 80B5     		push	{r7, lr}
  62              		.cfi_def_cfa_offset 8
  63              		.cfi_offset 7, -8
  64              		.cfi_offset 14, -4
  65 0002 00AF     		add	r7, sp, #0
  66              		.cfi_def_cfa_register 7
  20:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/asciidisplay\startup.c **** 	#ifdef USBDM
  21:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/asciidisplay\startup.c **** 		*((unsigned long *)0x40023830) = 0x18;
  67              		.loc 1 21 0
  68 0004 084B     		ldr	r3, .L3
  69 0006 1822     		movs	r2, #24
  70 0008 1A60     		str	r2, [r3]
  22:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/asciidisplay\startup.c **** 		__asm volatile( " LDR R0,=0x08000209\n BLX R0 \n");
  71              		.loc 1 22 0
  72              		.syntax divided
  73              	@ 22 "C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/asciidisplay/startup.c" 1
  74 000a 2E48     		 LDR R0,=0x08000209
  75 000c 8047     	 BLX R0 
  76              	
  77              	@ 0 "" 2
  23:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/asciidisplay\startup.c **** 	#endif
  24:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/asciidisplay\startup.c **** 	
  25:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/asciidisplay\startup.c **** 	// Init display port
  26:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/asciidisplay\startup.c **** 	portModer = 0x55555555;
  78              		.loc 1 26 0
  79              		.thumb
  80              		.syntax unified
  81 000e 074B     		ldr	r3, .L3+4
  82 0010 074A     		ldr	r2, .L3+8
  83 0012 1A60     		str	r2, [r3]
  27:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/asciidisplay\startup.c **** 	portOtyper = 0x00000000;
  84              		.loc 1 27 0
  85 0014 074B     		ldr	r3, .L3+12
  86 0016 0022     		movs	r2, #0
  87 0018 1A80     		strh	r2, [r3]
  28:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/asciidisplay\startup.c **** 	portOspeedr = 0x55555555;
  88              		.loc 1 28 0
  89 001a 074B     		ldr	r3, .L3+16
  90 001c 044A     		ldr	r2, .L3+8
  91 001e 1A60     		str	r2, [r3]
  29:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/asciidisplay\startup.c **** }
  92              		.loc 1 29 0
  93 0020 C046     		nop
  94 0022 BD46     		mov	sp, r7
  95              		@ sp needed
  96 0024 80BD     		pop	{r7, pc}
  97              	.L4:
  98 0026 C046     		.align	2
  99              	.L3:
 100 0028 30380240 		.word	1073887280
 101 002c 00100240 		.word	1073876992
 102 0030 55555555 		.word	1431655765
 103 0034 04100240 		.word	1073876996
 104 0038 08100240 		.word	1073877000
 105              		.cfi_endproc
 106              	.LFE1:
 108              		.section	.rodata
 109              		.align	2
 110              	.LC0:
 111 0000 204B616C 		.ascii	" Kalles Kebabkaviar\000"
 111      6C657320 
 111      4B656261 
 111      626B6176 
 111      69617200 
 112              		.align	2
 113              	.LC2:
 114 0014 2D204920 		.ascii	"- I know you like it\000"
 114      6B6E6F77 
 114      20796F75 
 114      206C696B 
 114      65206974 
 115              		.text
 116              		.align	1
 117              		.global	main
 118              		.syntax unified
 119              		.code	16
 120              		.thumb_func
 121              		.fpu softvfp
 123              	main:
 124              	.LFB2:
  30:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/asciidisplay\startup.c **** 
  31:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/asciidisplay\startup.c **** void main(void)
  32:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/asciidisplay\startup.c **** {
 125              		.loc 1 32 0
 126              		.cfi_startproc
 127              		@ args = 0, pretend = 0, frame = 48
 128              		@ frame_needed = 1, uses_anonymous_args = 0
 129 003c 90B5     		push	{r4, r7, lr}
 130              		.cfi_def_cfa_offset 12
 131              		.cfi_offset 4, -12
 132              		.cfi_offset 7, -8
 133              		.cfi_offset 14, -4
 134 003e 8DB0     		sub	sp, sp, #52
 135              		.cfi_def_cfa_offset 64
 136 0040 00AF     		add	r7, sp, #0
 137              		.cfi_def_cfa_register 7
  33:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/asciidisplay\startup.c **** 	char *s;
  34:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/asciidisplay\startup.c **** 	char test1[] = " Kalles Kebabkaviar";
 138              		.loc 1 34 0
 139 0042 1823     		movs	r3, #24
 140 0044 FB18     		adds	r3, r7, r3
 141 0046 1D4A     		ldr	r2, .L10
 142 0048 13CA     		ldmia	r2!, {r0, r1, r4}
 143 004a 13C3     		stmia	r3!, {r0, r1, r4}
 144 004c 03CA     		ldmia	r2!, {r0, r1}
 145 004e 03C3     		stmia	r3!, {r0, r1}
  35:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/asciidisplay\startup.c **** 	char test2[] = "- I know you like it";
 146              		.loc 1 35 0
 147 0050 3B00     		movs	r3, r7
 148 0052 1B4A     		ldr	r2, .L10+4
 149 0054 13CA     		ldmia	r2!, {r0, r1, r4}
 150 0056 13C3     		stmia	r3!, {r0, r1, r4}
 151 0058 03CA     		ldmia	r2!, {r0, r1}
 152 005a 03C3     		stmia	r3!, {r0, r1}
 153 005c 1278     		ldrb	r2, [r2]
 154 005e 1A70     		strb	r2, [r3]
  36:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/asciidisplay\startup.c **** 	
  37:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/asciidisplay\startup.c **** 	app_init();
 155              		.loc 1 37 0
 156 0060 FFF7FEFF 		bl	app_init
  38:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/asciidisplay\startup.c **** 	ascii_init();
 157              		.loc 1 38 0
 158 0064 FFF7FEFF 		bl	ascii_init
  39:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/asciidisplay\startup.c **** 	
  40:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/asciidisplay\startup.c **** 	ascii_gotoxy(1,1);
 159              		.loc 1 40 0
 160 0068 0121     		movs	r1, #1
 161 006a 0120     		movs	r0, #1
 162 006c FFF7FEFF 		bl	ascii_gotoxy
  41:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/asciidisplay\startup.c **** 	s = test1;
 163              		.loc 1 41 0
 164 0070 1823     		movs	r3, #24
 165 0072 FB18     		adds	r3, r7, r3
 166 0074 FB62     		str	r3, [r7, #44]
  42:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/asciidisplay\startup.c **** 	while (*s) 
 167              		.loc 1 42 0
 168 0076 06E0     		b	.L6
 169              	.L7:
  43:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/asciidisplay\startup.c **** 	{
  44:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/asciidisplay\startup.c **** 		ascii_write_char(*s++);
 170              		.loc 1 44 0
 171 0078 FB6A     		ldr	r3, [r7, #44]
 172 007a 5A1C     		adds	r2, r3, #1
 173 007c FA62     		str	r2, [r7, #44]
 174 007e 1B78     		ldrb	r3, [r3]
 175 0080 1800     		movs	r0, r3
 176 0082 FFF7FEFF 		bl	ascii_write_char
 177              	.L6:
  42:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/asciidisplay\startup.c **** 	while (*s) 
 178              		.loc 1 42 0
 179 0086 FB6A     		ldr	r3, [r7, #44]
 180 0088 1B78     		ldrb	r3, [r3]
 181 008a 002B     		cmp	r3, #0
 182 008c F4D1     		bne	.L7
  45:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/asciidisplay\startup.c **** 	}
  46:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/asciidisplay\startup.c **** 	
  47:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/asciidisplay\startup.c **** 	ascii_gotoxy(1,2);
 183              		.loc 1 47 0
 184 008e 0221     		movs	r1, #2
 185 0090 0120     		movs	r0, #1
 186 0092 FFF7FEFF 		bl	ascii_gotoxy
  48:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/asciidisplay\startup.c **** 	s = test2;
 187              		.loc 1 48 0
 188 0096 3B00     		movs	r3, r7
 189 0098 FB62     		str	r3, [r7, #44]
  49:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/asciidisplay\startup.c **** 	while (*s)
 190              		.loc 1 49 0
 191 009a 06E0     		b	.L8
 192              	.L9:
  50:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/asciidisplay\startup.c **** 	{
  51:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/asciidisplay\startup.c **** 		ascii_write_char(*s++);
 193              		.loc 1 51 0
 194 009c FB6A     		ldr	r3, [r7, #44]
 195 009e 5A1C     		adds	r2, r3, #1
 196 00a0 FA62     		str	r2, [r7, #44]
 197 00a2 1B78     		ldrb	r3, [r3]
 198 00a4 1800     		movs	r0, r3
 199 00a6 FFF7FEFF 		bl	ascii_write_char
 200              	.L8:
  49:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/asciidisplay\startup.c **** 	while (*s)
 201              		.loc 1 49 0
 202 00aa FB6A     		ldr	r3, [r7, #44]
 203 00ac 1B78     		ldrb	r3, [r3]
 204 00ae 002B     		cmp	r3, #0
 205 00b0 F4D1     		bne	.L9
  52:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/asciidisplay\startup.c **** 	}
  53:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/asciidisplay\startup.c **** }
 206              		.loc 1 53 0
 207 00b2 C046     		nop
 208 00b4 BD46     		mov	sp, r7
 209 00b6 0DB0     		add	sp, sp, #52
 210              		@ sp needed
 211 00b8 90BD     		pop	{r4, r7, pc}
 212              	.L11:
 213 00ba C046     		.align	2
 214              	.L10:
 215 00bc 00000000 		.word	.LC0
 216 00c0 14000000 		.word	.LC2
 217              		.cfi_endproc
 218              	.LFE2:
 220              	.Letext0:
 221              		.file 2 "C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/asciidisplay/types.h"

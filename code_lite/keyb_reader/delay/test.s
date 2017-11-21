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
  11              		.file	"delay.c"
  12              		.text
  13              	.Ltext0:
  14              		.cfi_sections	.debug_frame
  15              		.align	1
  16              		.global	delay_250ns
  17              		.syntax unified
  18              		.code	16
  19              		.thumb_func
  20              		.fpu softvfp
  22              	delay_250ns:
  23              	.LFB0:
  24              		.file 1 "C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/delay/delay.c"
   1:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/delay\delay.c **** #include "delay.h"
   2:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/delay\delay.c **** 
   3:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/delay\delay.c **** #define STK_CTRL ((volatile unsigned int *)(0xE000E010)) 
   4:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/delay\delay.c **** 
   5:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/delay\delay.c **** void delay_250ns( void )
   6:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/delay\delay.c **** {
  25              		.loc 1 6 0
  26              		.cfi_startproc
  27              		@ args = 0, pretend = 0, frame = 8
  28              		@ frame_needed = 1, uses_anonymous_args = 0
  29 0000 80B5     		push	{r7, lr}
  30              		.cfi_def_cfa_offset 8
  31              		.cfi_offset 7, -8
  32              		.cfi_offset 14, -4
  33 0002 82B0     		sub	sp, sp, #8
  34              		.cfi_def_cfa_offset 16
  35 0004 00AF     		add	r7, sp, #0
  36              		.cfi_def_cfa_register 7
   7:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/delay\delay.c **** 	uint32 x = 0;
  37              		.loc 1 7 0
  38 0006 0023     		movs	r3, #0
  39 0008 7B60     		str	r3, [r7, #4]
   8:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/delay\delay.c **** 	SYS_TICK.CTRL = 0;
  40              		.loc 1 8 0
  41 000a 0E4B     		ldr	r3, .L2
  42 000c 0022     		movs	r2, #0
  43 000e 1A70     		strb	r2, [r3]
   9:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/delay\delay.c **** 	SYS_TICK.CTRL_COUNT = 0;
  44              		.loc 1 9 0
  45 0010 0C4B     		ldr	r3, .L2
  46 0012 0022     		movs	r2, #0
  47 0014 9A70     		strb	r2, [r3, #2]
  10:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/delay\delay.c **** 	SYS_TICK.VAL = 0;
  48              		.loc 1 10 0
  49 0016 0B4B     		ldr	r3, .L2
  50 0018 0022     		movs	r2, #0
  51 001a 9A60     		str	r2, [r3, #8]
  11:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/delay\delay.c **** 	SYS_TICK.LOAD = 41;
  52              		.loc 1 11 0
  53 001c 094B     		ldr	r3, .L2
  54 001e 2922     		movs	r2, #41
  55 0020 5A60     		str	r2, [r3, #4]
  12:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/delay\delay.c **** 	SYS_TICK.CTRL = 0x05;
  56              		.loc 1 12 0
  57 0022 084B     		ldr	r3, .L2
  58 0024 0522     		movs	r2, #5
  59 0026 1A70     		strb	r2, [r3]
  13:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/delay\delay.c **** 	
  14:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/delay\delay.c **** 	x = SYS_TICK.VAL;
  60              		.loc 1 14 0
  61 0028 064B     		ldr	r3, .L2
  62 002a 9B68     		ldr	r3, [r3, #8]
  63 002c 7B60     		str	r3, [r7, #4]
  15:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/delay\delay.c **** 	while (SYS_TICK.CTRL_COUNT & 0x1 == 0) 
  64              		.loc 1 15 0
  65 002e C046     		nop
  66 0030 044B     		ldr	r3, .L2
  67 0032 9B78     		ldrb	r3, [r3, #2]
  16:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/delay\delay.c **** 	{
  17:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/delay\delay.c **** 		x = SYS_TICK.VAL;
  18:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/delay\delay.c **** 	}
  19:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/delay\delay.c **** 	SYS_TICK.CTRL = 0;
  68              		.loc 1 19 0
  69 0034 034B     		ldr	r3, .L2
  70 0036 0022     		movs	r2, #0
  71 0038 1A70     		strb	r2, [r3]
  20:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/delay\delay.c **** }
  72              		.loc 1 20 0
  73 003a C046     		nop
  74 003c BD46     		mov	sp, r7
  75 003e 02B0     		add	sp, sp, #8
  76              		@ sp needed
  77 0040 80BD     		pop	{r7, pc}
  78              	.L3:
  79 0042 C046     		.align	2
  80              	.L2:
  81 0044 10E000E0 		.word	-536813552
  82              		.cfi_endproc
  83              	.LFE0:
  85              		.align	1
  86              		.global	delay_micro
  87              		.syntax unified
  88              		.code	16
  89              		.thumb_func
  90              		.fpu softvfp
  92              	delay_micro:
  93              	.LFB1:
  21:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/delay\delay.c **** 
  22:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/delay\delay.c **** void delay_micro( uint32_c us )
  23:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/delay\delay.c **** {
  94              		.loc 1 23 0
  95              		.cfi_startproc
  96              		@ args = 0, pretend = 0, frame = 16
  97              		@ frame_needed = 1, uses_anonymous_args = 0
  98 0048 80B5     		push	{r7, lr}
  99              		.cfi_def_cfa_offset 8
 100              		.cfi_offset 7, -8
 101              		.cfi_offset 14, -4
 102 004a 84B0     		sub	sp, sp, #16
 103              		.cfi_def_cfa_offset 24
 104 004c 00AF     		add	r7, sp, #0
 105              		.cfi_def_cfa_register 7
 106 004e 7860     		str	r0, [r7, #4]
 107              	.LBB2:
  24:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/delay\delay.c **** 	for (uint32 loops = 0; loops < us; loops++ )
 108              		.loc 1 24 0
 109 0050 0023     		movs	r3, #0
 110 0052 FB60     		str	r3, [r7, #12]
 111 0054 0AE0     		b	.L5
 112              	.L6:
  25:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/delay\delay.c **** 		{
  26:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/delay\delay.c **** 		delay_250ns();
 113              		.loc 1 26 0 discriminator 3
 114 0056 FFF7FEFF 		bl	delay_250ns
  27:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/delay\delay.c **** 		delay_250ns();
 115              		.loc 1 27 0 discriminator 3
 116 005a FFF7FEFF 		bl	delay_250ns
  28:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/delay\delay.c **** 		delay_250ns();
 117              		.loc 1 28 0 discriminator 3
 118 005e FFF7FEFF 		bl	delay_250ns
  29:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/delay\delay.c **** 		delay_250ns();
 119              		.loc 1 29 0 discriminator 3
 120 0062 FFF7FEFF 		bl	delay_250ns
  24:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/delay\delay.c **** 		{
 121              		.loc 1 24 0 discriminator 3
 122 0066 FB68     		ldr	r3, [r7, #12]
 123 0068 0133     		adds	r3, r3, #1
 124 006a FB60     		str	r3, [r7, #12]
 125              	.L5:
  24:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/delay\delay.c **** 		{
 126              		.loc 1 24 0 is_stmt 0 discriminator 1
 127 006c FA68     		ldr	r2, [r7, #12]
 128 006e 7B68     		ldr	r3, [r7, #4]
 129 0070 9A42     		cmp	r2, r3
 130 0072 F0D3     		bcc	.L6
 131              	.LBE2:
  30:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/delay\delay.c **** 	}
  31:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/delay\delay.c **** }
 132              		.loc 1 31 0 is_stmt 1
 133 0074 C046     		nop
 134 0076 BD46     		mov	sp, r7
 135 0078 04B0     		add	sp, sp, #16
 136              		@ sp needed
 137 007a 80BD     		pop	{r7, pc}
 138              		.cfi_endproc
 139              	.LFE1:
 141              		.align	1
 142              		.global	delay_milli
 143              		.syntax unified
 144              		.code	16
 145              		.thumb_func
 146              		.fpu softvfp
 148              	delay_milli:
 149              	.LFB2:
  32:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/delay\delay.c **** 
  33:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/delay\delay.c **** void delay_milli( uint32_c ms )
  34:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/delay\delay.c **** {	
 150              		.loc 1 34 0
 151              		.cfi_startproc
 152              		@ args = 0, pretend = 0, frame = 8
 153              		@ frame_needed = 1, uses_anonymous_args = 0
 154 007c 80B5     		push	{r7, lr}
 155              		.cfi_def_cfa_offset 8
 156              		.cfi_offset 7, -8
 157              		.cfi_offset 14, -4
 158 007e 82B0     		sub	sp, sp, #8
 159              		.cfi_def_cfa_offset 16
 160 0080 00AF     		add	r7, sp, #0
 161              		.cfi_def_cfa_register 7
 162 0082 7860     		str	r0, [r7, #4]
  35:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/delay\delay.c **** 	#ifdef SIMULATOR
  36:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/delay\delay.c **** 		ms = ms / 1000;
  37:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/delay\delay.c **** 		ms++;
  38:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/delay\delay.c **** 	#endif // SIMULATOR
  39:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/delay\delay.c **** 	delay_micro(ms * 1000);
 163              		.loc 1 39 0
 164 0084 7B68     		ldr	r3, [r7, #4]
 165 0086 FA22     		movs	r2, #250
 166 0088 9200     		lsls	r2, r2, #2
 167 008a 5343     		muls	r3, r2
 168 008c 1800     		movs	r0, r3
 169 008e FFF7FEFF 		bl	delay_micro
  40:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/delay\delay.c **** };...
 170              		.loc 1 40 0
 171 0092 C046     		nop
 172 0094 BD46     		mov	sp, r7
 173 0096 02B0     		add	sp, sp, #8
 174              		@ sp needed
 175 0098 80BD     		pop	{r7, pc}
 176              		.cfi_endproc
 177              	.LFE2:
 179              	.Letext0:
 180              		.file 2 "C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/delay/types.h"
 181              		.file 3 "C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/delay/delay.h"

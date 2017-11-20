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
  24              		.file 1 "C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/delay/delay.c"
   1:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/delay\delay.c **** #include "delay.h"
   2:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/delay\delay.c **** 
   3:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/delay\delay.c **** #define STK_CTRL ((volatile unsigned int *)(0xE000E010)) 
   4:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/delay\delay.c **** 
   5:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/delay\delay.c **** void delay_250ns( void )
   6:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/delay\delay.c **** {
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
   7:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/delay\delay.c **** 	uint32 x = 0;
  37              		.loc 1 7 0
  38 0006 0023     		movs	r3, #0
  39 0008 7B60     		str	r3, [r7, #4]
   8:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/delay\delay.c **** 	SYS_TICK.CTRL = 0;
  40              		.loc 1 8 0
  41 000a 114B     		ldr	r3, .L4
  42 000c 0022     		movs	r2, #0
  43 000e 1A70     		strb	r2, [r3]
   9:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/delay\delay.c **** 	SYS_TICK.CTRL_COUNT = 0;
  44              		.loc 1 9 0
  45 0010 0F4B     		ldr	r3, .L4
  46 0012 0022     		movs	r2, #0
  47 0014 9A70     		strb	r2, [r3, #2]
  10:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/delay\delay.c **** 	SYS_TICK.VAL = 0;
  48              		.loc 1 10 0
  49 0016 0E4B     		ldr	r3, .L4
  50 0018 0022     		movs	r2, #0
  51 001a 9A60     		str	r2, [r3, #8]
  11:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/delay\delay.c **** 	SYS_TICK.LOAD = 42;
  52              		.loc 1 11 0
  53 001c 0C4B     		ldr	r3, .L4
  54 001e 2A22     		movs	r2, #42
  55 0020 5A60     		str	r2, [r3, #4]
  12:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/delay\delay.c **** 	SYS_TICK.CTRL = 0x05;
  56              		.loc 1 12 0
  57 0022 0B4B     		ldr	r3, .L4
  58 0024 0522     		movs	r2, #5
  59 0026 1A70     		strb	r2, [r3]
  13:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/delay\delay.c **** 	
  14:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/delay\delay.c **** 	x = SYS_TICK.VAL;
  60              		.loc 1 14 0
  61 0028 094B     		ldr	r3, .L4
  62 002a 9B68     		ldr	r3, [r3, #8]
  63 002c 7B60     		str	r3, [r7, #4]
  15:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/delay\delay.c **** 	while (!(SYS_TICK.CTRL_COUNT)) 
  64              		.loc 1 15 0
  65 002e 02E0     		b	.L2
  66              	.L3:
  16:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/delay\delay.c **** 	{
  17:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/delay\delay.c **** 		x = SYS_TICK.VAL;
  67              		.loc 1 17 0
  68 0030 074B     		ldr	r3, .L4
  69 0032 9B68     		ldr	r3, [r3, #8]
  70 0034 7B60     		str	r3, [r7, #4]
  71              	.L2:
  15:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/delay\delay.c **** 	while (!(SYS_TICK.CTRL_COUNT)) 
  72              		.loc 1 15 0
  73 0036 064B     		ldr	r3, .L4
  74 0038 9B78     		ldrb	r3, [r3, #2]
  75 003a DBB2     		uxtb	r3, r3
  76 003c 002B     		cmp	r3, #0
  77 003e F7D0     		beq	.L3
  18:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/delay\delay.c **** 	}
  19:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/delay\delay.c **** 	SYS_TICK.CTRL = 0;
  78              		.loc 1 19 0
  79 0040 034B     		ldr	r3, .L4
  80 0042 0022     		movs	r2, #0
  81 0044 1A70     		strb	r2, [r3]
  20:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/delay\delay.c **** }
  82              		.loc 1 20 0
  83 0046 C046     		nop
  84 0048 BD46     		mov	sp, r7
  85 004a 02B0     		add	sp, sp, #8
  86              		@ sp needed
  87 004c 80BD     		pop	{r7, pc}
  88              	.L5:
  89 004e C046     		.align	2
  90              	.L4:
  91 0050 10E000E0 		.word	-536813552
  92              		.cfi_endproc
  93              	.LFE0:
  95              		.align	1
  96              		.global	delay_micro
  97              		.syntax unified
  98              		.code	16
  99              		.thumb_func
 100              		.fpu softvfp
 102              	delay_micro:
 103              	.LFB1:
  21:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/delay\delay.c **** 
  22:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/delay\delay.c **** void delay_micro( uint32_c us )
  23:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/delay\delay.c **** {
 104              		.loc 1 23 0
 105              		.cfi_startproc
 106              		@ args = 0, pretend = 0, frame = 16
 107              		@ frame_needed = 1, uses_anonymous_args = 0
 108 0054 80B5     		push	{r7, lr}
 109              		.cfi_def_cfa_offset 8
 110              		.cfi_offset 7, -8
 111              		.cfi_offset 14, -4
 112 0056 84B0     		sub	sp, sp, #16
 113              		.cfi_def_cfa_offset 24
 114 0058 00AF     		add	r7, sp, #0
 115              		.cfi_def_cfa_register 7
 116 005a 7860     		str	r0, [r7, #4]
 117              	.LBB2:
  24:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/delay\delay.c **** 	for (uint32 loops = 0; loops < us; loops++ )
 118              		.loc 1 24 0
 119 005c 0023     		movs	r3, #0
 120 005e FB60     		str	r3, [r7, #12]
 121 0060 0AE0     		b	.L7
 122              	.L8:
  25:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/delay\delay.c **** 		{
  26:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/delay\delay.c **** 		delay_250ns();
 123              		.loc 1 26 0 discriminator 3
 124 0062 FFF7FEFF 		bl	delay_250ns
  27:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/delay\delay.c **** 		delay_250ns();
 125              		.loc 1 27 0 discriminator 3
 126 0066 FFF7FEFF 		bl	delay_250ns
  28:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/delay\delay.c **** 		delay_250ns();
 127              		.loc 1 28 0 discriminator 3
 128 006a FFF7FEFF 		bl	delay_250ns
  29:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/delay\delay.c **** 		delay_250ns();
 129              		.loc 1 29 0 discriminator 3
 130 006e FFF7FEFF 		bl	delay_250ns
  24:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/delay\delay.c **** 		{
 131              		.loc 1 24 0 discriminator 3
 132 0072 FB68     		ldr	r3, [r7, #12]
 133 0074 0133     		adds	r3, r3, #1
 134 0076 FB60     		str	r3, [r7, #12]
 135              	.L7:
  24:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/delay\delay.c **** 		{
 136              		.loc 1 24 0 is_stmt 0 discriminator 1
 137 0078 FA68     		ldr	r2, [r7, #12]
 138 007a 7B68     		ldr	r3, [r7, #4]
 139 007c 9A42     		cmp	r2, r3
 140 007e F0D3     		bcc	.L8
 141              	.LBE2:
  30:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/delay\delay.c **** 	}
  31:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/delay\delay.c **** }
 142              		.loc 1 31 0 is_stmt 1
 143 0080 C046     		nop
 144 0082 BD46     		mov	sp, r7
 145 0084 04B0     		add	sp, sp, #16
 146              		@ sp needed
 147 0086 80BD     		pop	{r7, pc}
 148              		.cfi_endproc
 149              	.LFE1:
 151              		.align	1
 152              		.global	delay_milli
 153              		.syntax unified
 154              		.code	16
 155              		.thumb_func
 156              		.fpu softvfp
 158              	delay_milli:
 159              	.LFB2:
  32:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/delay\delay.c **** 
  33:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/delay\delay.c **** void delay_milli( uint32_c ms )
  34:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/delay\delay.c **** {	
 160              		.loc 1 34 0
 161              		.cfi_startproc
 162              		@ args = 0, pretend = 0, frame = 8
 163              		@ frame_needed = 1, uses_anonymous_args = 0
 164 0088 80B5     		push	{r7, lr}
 165              		.cfi_def_cfa_offset 8
 166              		.cfi_offset 7, -8
 167              		.cfi_offset 14, -4
 168 008a 82B0     		sub	sp, sp, #8
 169              		.cfi_def_cfa_offset 16
 170 008c 00AF     		add	r7, sp, #0
 171              		.cfi_def_cfa_register 7
 172 008e 7860     		str	r0, [r7, #4]
  35:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/delay\delay.c **** 	#ifdef SIMULATOR
  36:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/delay\delay.c **** 	ms = ms / 1000;
  37:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/delay\delay.c **** 	ms++;
  38:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/delay\delay.c **** 	#endif // SIMULATOR
  39:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/delay\delay.c **** 	delay_micro(ms);
 173              		.loc 1 39 0
 174 0090 7B68     		ldr	r3, [r7, #4]
 175 0092 1800     		movs	r0, r3
 176 0094 FFF7FEFF 		bl	delay_micro
  40:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/delay\delay.c **** };...
 177              		.loc 1 40 0
 178 0098 C046     		nop
 179 009a BD46     		mov	sp, r7
 180 009c 02B0     		add	sp, sp, #8
 181              		@ sp needed
 182 009e 80BD     		pop	{r7, pc}
 183              		.cfi_endproc
 184              	.LFE2:
 186              	.Letext0:
 187              		.file 2 "C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/delay/types.h"
 188              		.file 3 "C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/delay/delay.h"

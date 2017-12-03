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
  15              		.global	sysTick_flag
  16              		.bss
  19              	sysTick_flag:
  20 0000 00       		.space	1
  21 0001 000000   		.align	2
  22              	delay_counter:
  23 0004 00000000 		.space	4
  25              		.text
  26              		.align	1
  27              		.global	delay_250ns
  28              		.syntax unified
  29              		.code	16
  30              		.thumb_func
  31              		.fpu softvfp
  33              	delay_250ns:
  34              	.LFB0:
  35              		.file 1 "C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/SysTickInterrupt/delay.c"
   1:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/SysTickInterrupt\delay.c **** #include "delay.h"
   2:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/SysTickInterrupt\delay.c **** 
   3:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/SysTickInterrupt\delay.c **** #define STK_CTRL ((volatile unsigned int *)(0xE000E010)) 
   4:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/SysTickInterrupt\delay.c **** uint8 sysTick_flag = 0;
   5:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/SysTickInterrupt\delay.c **** 
   6:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/SysTickInterrupt\delay.c **** static volatile uint32 delay_counter;
   7:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/SysTickInterrupt\delay.c **** 
   8:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/SysTickInterrupt\delay.c **** void delay_250ns( void )
   9:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/SysTickInterrupt\delay.c **** {
  36              		.loc 1 9 0
  37              		.cfi_startproc
  38              		@ args = 0, pretend = 0, frame = 8
  39              		@ frame_needed = 1, uses_anonymous_args = 0
  40 0000 80B5     		push	{r7, lr}
  41              		.cfi_def_cfa_offset 8
  42              		.cfi_offset 7, -8
  43              		.cfi_offset 14, -4
  44 0002 82B0     		sub	sp, sp, #8
  45              		.cfi_def_cfa_offset 16
  46 0004 00AF     		add	r7, sp, #0
  47              		.cfi_def_cfa_register 7
  10:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/SysTickInterrupt\delay.c **** 	uint32 x = 0;
  48              		.loc 1 10 0
  49 0006 0023     		movs	r3, #0
  50 0008 7B60     		str	r3, [r7, #4]
  11:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/SysTickInterrupt\delay.c **** 	SYS_TICK.CTRL = 0;
  51              		.loc 1 11 0
  52 000a 0E4B     		ldr	r3, .L2
  53 000c 0022     		movs	r2, #0
  54 000e 1A70     		strb	r2, [r3]
  12:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/SysTickInterrupt\delay.c **** 	SYS_TICK.CTRL_COUNT = 0;
  55              		.loc 1 12 0
  56 0010 0C4B     		ldr	r3, .L2
  57 0012 0022     		movs	r2, #0
  58 0014 9A70     		strb	r2, [r3, #2]
  13:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/SysTickInterrupt\delay.c **** 	SYS_TICK.VAL = 0;
  59              		.loc 1 13 0
  60 0016 0B4B     		ldr	r3, .L2
  61 0018 0022     		movs	r2, #0
  62 001a 9A60     		str	r2, [r3, #8]
  14:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/SysTickInterrupt\delay.c **** 	SYS_TICK.LOAD = 42;
  63              		.loc 1 14 0
  64 001c 094B     		ldr	r3, .L2
  65 001e 2A22     		movs	r2, #42
  66 0020 5A60     		str	r2, [r3, #4]
  15:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/SysTickInterrupt\delay.c **** 	SYS_TICK.CTRL = 0x05;
  67              		.loc 1 15 0
  68 0022 084B     		ldr	r3, .L2
  69 0024 0522     		movs	r2, #5
  70 0026 1A70     		strb	r2, [r3]
  16:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/SysTickInterrupt\delay.c **** 	
  17:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/SysTickInterrupt\delay.c **** 	x = SYS_TICK.VAL;
  71              		.loc 1 17 0
  72 0028 064B     		ldr	r3, .L2
  73 002a 9B68     		ldr	r3, [r3, #8]
  74 002c 7B60     		str	r3, [r7, #4]
  18:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/SysTickInterrupt\delay.c **** 	while (SYS_TICK.CTRL_COUNT & 0x1 == 0) 
  75              		.loc 1 18 0
  76 002e C046     		nop
  77 0030 044B     		ldr	r3, .L2
  78 0032 9B78     		ldrb	r3, [r3, #2]
  19:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/SysTickInterrupt\delay.c **** 	{
  20:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/SysTickInterrupt\delay.c **** 		x = SYS_TICK.VAL;
  21:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/SysTickInterrupt\delay.c **** 	}
  22:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/SysTickInterrupt\delay.c **** 	SYS_TICK.CTRL = 0;
  79              		.loc 1 22 0
  80 0034 034B     		ldr	r3, .L2
  81 0036 0022     		movs	r2, #0
  82 0038 1A70     		strb	r2, [r3]
  23:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/SysTickInterrupt\delay.c **** }
  83              		.loc 1 23 0
  84 003a C046     		nop
  85 003c BD46     		mov	sp, r7
  86 003e 02B0     		add	sp, sp, #8
  87              		@ sp needed
  88 0040 80BD     		pop	{r7, pc}
  89              	.L3:
  90 0042 C046     		.align	2
  91              	.L2:
  92 0044 10E000E0 		.word	-536813552
  93              		.cfi_endproc
  94              	.LFE0:
  96              		.align	1
  97              		.global	delay_500ns
  98              		.syntax unified
  99              		.code	16
 100              		.thumb_func
 101              		.fpu softvfp
 103              	delay_500ns:
 104              	.LFB1:
  24:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/SysTickInterrupt\delay.c **** 
  25:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/SysTickInterrupt\delay.c **** void delay_500ns( void ) 
  26:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/SysTickInterrupt\delay.c **** {
 105              		.loc 1 26 0
 106              		.cfi_startproc
 107              		@ args = 0, pretend = 0, frame = 0
 108              		@ frame_needed = 1, uses_anonymous_args = 0
 109 0048 80B5     		push	{r7, lr}
 110              		.cfi_def_cfa_offset 8
 111              		.cfi_offset 7, -8
 112              		.cfi_offset 14, -4
 113 004a 00AF     		add	r7, sp, #0
 114              		.cfi_def_cfa_register 7
  27:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/SysTickInterrupt\delay.c **** 	delay_250ns();
 115              		.loc 1 27 0
 116 004c FFF7FEFF 		bl	delay_250ns
  28:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/SysTickInterrupt\delay.c **** 	delay_250ns();
 117              		.loc 1 28 0
 118 0050 FFF7FEFF 		bl	delay_250ns
  29:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/SysTickInterrupt\delay.c **** }
 119              		.loc 1 29 0
 120 0054 C046     		nop
 121 0056 BD46     		mov	sp, r7
 122              		@ sp needed
 123 0058 80BD     		pop	{r7, pc}
 124              		.cfi_endproc
 125              	.LFE1:
 127              		.align	1
 128              		.global	delay_micro
 129              		.syntax unified
 130              		.code	16
 131              		.thumb_func
 132              		.fpu softvfp
 134              	delay_micro:
 135              	.LFB2:
  30:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/SysTickInterrupt\delay.c **** 
  31:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/SysTickInterrupt\delay.c **** void delay_micro( uint32_c us )
  32:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/SysTickInterrupt\delay.c **** {
 136              		.loc 1 32 0
 137              		.cfi_startproc
 138              		@ args = 0, pretend = 0, frame = 16
 139              		@ frame_needed = 1, uses_anonymous_args = 0
 140 005a 80B5     		push	{r7, lr}
 141              		.cfi_def_cfa_offset 8
 142              		.cfi_offset 7, -8
 143              		.cfi_offset 14, -4
 144 005c 84B0     		sub	sp, sp, #16
 145              		.cfi_def_cfa_offset 24
 146 005e 00AF     		add	r7, sp, #0
 147              		.cfi_def_cfa_register 7
 148 0060 7860     		str	r0, [r7, #4]
 149              	.LBB2:
  33:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/SysTickInterrupt\delay.c **** 	for (uint32 loops = 0; loops < us; loops++ )
 150              		.loc 1 33 0
 151 0062 0023     		movs	r3, #0
 152 0064 FB60     		str	r3, [r7, #12]
 153 0066 0AE0     		b	.L6
 154              	.L7:
  34:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/SysTickInterrupt\delay.c **** 		{
  35:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/SysTickInterrupt\delay.c **** 		delay_250ns();
 155              		.loc 1 35 0 discriminator 3
 156 0068 FFF7FEFF 		bl	delay_250ns
  36:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/SysTickInterrupt\delay.c **** 		delay_250ns();
 157              		.loc 1 36 0 discriminator 3
 158 006c FFF7FEFF 		bl	delay_250ns
  37:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/SysTickInterrupt\delay.c **** 		delay_250ns();
 159              		.loc 1 37 0 discriminator 3
 160 0070 FFF7FEFF 		bl	delay_250ns
  38:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/SysTickInterrupt\delay.c **** 		delay_250ns();
 161              		.loc 1 38 0 discriminator 3
 162 0074 FFF7FEFF 		bl	delay_250ns
  33:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/SysTickInterrupt\delay.c **** 		{
 163              		.loc 1 33 0 discriminator 3
 164 0078 FB68     		ldr	r3, [r7, #12]
 165 007a 0133     		adds	r3, r3, #1
 166 007c FB60     		str	r3, [r7, #12]
 167              	.L6:
  33:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/SysTickInterrupt\delay.c **** 		{
 168              		.loc 1 33 0 is_stmt 0 discriminator 1
 169 007e FA68     		ldr	r2, [r7, #12]
 170 0080 7B68     		ldr	r3, [r7, #4]
 171 0082 9A42     		cmp	r2, r3
 172 0084 F0D3     		bcc	.L7
 173              	.LBE2:
  39:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/SysTickInterrupt\delay.c **** 	}
  40:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/SysTickInterrupt\delay.c **** }
 174              		.loc 1 40 0 is_stmt 1
 175 0086 C046     		nop
 176 0088 BD46     		mov	sp, r7
 177 008a 04B0     		add	sp, sp, #16
 178              		@ sp needed
 179 008c 80BD     		pop	{r7, pc}
 180              		.cfi_endproc
 181              	.LFE2:
 183              		.global	__aeabi_uidiv
 184              		.align	1
 185              		.global	delay_milli
 186              		.syntax unified
 187              		.code	16
 188              		.thumb_func
 189              		.fpu softvfp
 191              	delay_milli:
 192              	.LFB3:
  41:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/SysTickInterrupt\delay.c **** 
  42:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/SysTickInterrupt\delay.c **** void delay_milli( uint32 ms )
  43:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/SysTickInterrupt\delay.c **** {	
 193              		.loc 1 43 0
 194              		.cfi_startproc
 195              		@ args = 0, pretend = 0, frame = 8
 196              		@ frame_needed = 1, uses_anonymous_args = 0
 197 008e 80B5     		push	{r7, lr}
 198              		.cfi_def_cfa_offset 8
 199              		.cfi_offset 7, -8
 200              		.cfi_offset 14, -4
 201 0090 82B0     		sub	sp, sp, #8
 202              		.cfi_def_cfa_offset 16
 203 0092 00AF     		add	r7, sp, #0
 204              		.cfi_def_cfa_register 7
 205 0094 7860     		str	r0, [r7, #4]
  44:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/SysTickInterrupt\delay.c **** 	#ifdef SIMULATOR
  45:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/SysTickInterrupt\delay.c **** 	ms = ms / 1000;
 206              		.loc 1 45 0
 207 0096 7A68     		ldr	r2, [r7, #4]
 208 0098 FA23     		movs	r3, #250
 209 009a 9900     		lsls	r1, r3, #2
 210 009c 1000     		movs	r0, r2
 211 009e FFF7FEFF 		bl	__aeabi_uidiv
 212              	.LVL0:
 213 00a2 0300     		movs	r3, r0
 214 00a4 7B60     		str	r3, [r7, #4]
  46:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/SysTickInterrupt\delay.c **** 	ms++;
 215              		.loc 1 46 0
 216 00a6 7B68     		ldr	r3, [r7, #4]
 217 00a8 0133     		adds	r3, r3, #1
 218 00aa 7B60     		str	r3, [r7, #4]
  47:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/SysTickInterrupt\delay.c **** 	#endif // SIMULATOR
  48:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/SysTickInterrupt\delay.c **** 	delay_micro(ms*1000);
 219              		.loc 1 48 0
 220 00ac 7B68     		ldr	r3, [r7, #4]
 221 00ae FA22     		movs	r2, #250
 222 00b0 9200     		lsls	r2, r2, #2
 223 00b2 5343     		muls	r3, r2
 224 00b4 1800     		movs	r0, r3
 225 00b6 FFF7FEFF 		bl	delay_micro
  49:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/SysTickInterrupt\delay.c **** }
 226              		.loc 1 49 0
 227 00ba C046     		nop
 228 00bc BD46     		mov	sp, r7
 229 00be 02B0     		add	sp, sp, #8
 230              		@ sp needed
 231 00c0 80BD     		pop	{r7, pc}
 232              		.cfi_endproc
 233              	.LFE3:
 235              		.align	1
 236              		.global	sysTick_irq_handler
 237              		.syntax unified
 238              		.code	16
 239              		.thumb_func
 240              		.fpu softvfp
 242              	sysTick_irq_handler:
 243              	.LFB4:
  50:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/SysTickInterrupt\delay.c **** 
  51:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/SysTickInterrupt\delay.c **** //-----------------------------------------------------------------------------------'
  52:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/SysTickInterrupt\delay.c **** 
  53:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/SysTickInterrupt\delay.c **** void sysTick_irq_handler(void)
  54:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/SysTickInterrupt\delay.c **** {
 244              		.loc 1 54 0
 245              		.cfi_startproc
 246              		@ args = 0, pretend = 0, frame = 0
 247              		@ frame_needed = 1, uses_anonymous_args = 0
 248 00c2 80B5     		push	{r7, lr}
 249              		.cfi_def_cfa_offset 8
 250              		.cfi_offset 7, -8
 251              		.cfi_offset 14, -4
 252 00c4 00AF     		add	r7, sp, #0
 253              		.cfi_def_cfa_register 7
  55:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/SysTickInterrupt\delay.c **** 	SYS_TICK.CTRL = 0;
 254              		.loc 1 55 0
 255 00c6 0C4B     		ldr	r3, .L13
 256 00c8 0022     		movs	r2, #0
 257 00ca 1A70     		strb	r2, [r3]
  56:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/SysTickInterrupt\delay.c **** 	SYS_TICK.CTRL_COUNT = 0;
 258              		.loc 1 56 0
 259 00cc 0A4B     		ldr	r3, .L13
 260 00ce 0022     		movs	r2, #0
 261 00d0 9A70     		strb	r2, [r3, #2]
  57:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/SysTickInterrupt\delay.c **** 	
  58:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/SysTickInterrupt\delay.c **** 	delay_counter--;
 262              		.loc 1 58 0
 263 00d2 0A4B     		ldr	r3, .L13+4
 264 00d4 1B68     		ldr	r3, [r3]
 265 00d6 5A1E     		subs	r2, r3, #1
 266 00d8 084B     		ldr	r3, .L13+4
 267 00da 1A60     		str	r2, [r3]
  59:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/SysTickInterrupt\delay.c **** 	if (delay_counter > 0 ) {
 268              		.loc 1 59 0
 269 00dc 074B     		ldr	r3, .L13+4
 270 00de 1B68     		ldr	r3, [r3]
 271 00e0 002B     		cmp	r3, #0
 272 00e2 02D0     		beq	.L10
  60:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/SysTickInterrupt\delay.c **** 		delay_1micro();
 273              		.loc 1 60 0
 274 00e4 FFF7FEFF 		bl	delay_1micro
  61:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/SysTickInterrupt\delay.c **** 	} else {
  62:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/SysTickInterrupt\delay.c **** 		sysTick_flag = 1;
  63:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/SysTickInterrupt\delay.c **** 	}
  64:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/SysTickInterrupt\delay.c **** }
 275              		.loc 1 64 0
 276 00e8 02E0     		b	.L12
 277              	.L10:
  62:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/SysTickInterrupt\delay.c **** 	}
 278              		.loc 1 62 0
 279 00ea 054B     		ldr	r3, .L13+8
 280 00ec 0122     		movs	r2, #1
 281 00ee 1A70     		strb	r2, [r3]
 282              	.L12:
 283              		.loc 1 64 0
 284 00f0 C046     		nop
 285 00f2 BD46     		mov	sp, r7
 286              		@ sp needed
 287 00f4 80BD     		pop	{r7, pc}
 288              	.L14:
 289 00f6 C046     		.align	2
 290              	.L13:
 291 00f8 10E000E0 		.word	-536813552
 292 00fc 04000000 		.word	delay_counter
 293 0100 00000000 		.word	sysTick_flag
 294              		.cfi_endproc
 295              	.LFE4:
 297              		.align	1
 298              		.global	delay_1micro
 299              		.syntax unified
 300              		.code	16
 301              		.thumb_func
 302              		.fpu softvfp
 304              	delay_1micro:
 305              	.LFB5:
  65:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/SysTickInterrupt\delay.c **** 
  66:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/SysTickInterrupt\delay.c **** void delay_1micro(void)
  67:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/SysTickInterrupt\delay.c **** {
 306              		.loc 1 67 0
 307              		.cfi_startproc
 308              		@ args = 0, pretend = 0, frame = 0
 309              		@ frame_needed = 1, uses_anonymous_args = 0
 310 0104 80B5     		push	{r7, lr}
 311              		.cfi_def_cfa_offset 8
 312              		.cfi_offset 7, -8
 313              		.cfi_offset 14, -4
 314 0106 00AF     		add	r7, sp, #0
 315              		.cfi_def_cfa_register 7
  68:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/SysTickInterrupt\delay.c **** 	SYS_TICK.CTRL = 0;
 316              		.loc 1 68 0
 317 0108 084B     		ldr	r3, .L16
 318 010a 0022     		movs	r2, #0
 319 010c 1A70     		strb	r2, [r3]
  69:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/SysTickInterrupt\delay.c **** 	SYS_TICK.CTRL_COUNT = 0;
 320              		.loc 1 69 0
 321 010e 074B     		ldr	r3, .L16
 322 0110 0022     		movs	r2, #0
 323 0112 9A70     		strb	r2, [r3, #2]
  70:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/SysTickInterrupt\delay.c **** 	SYS_TICK.VAL = 0;
 324              		.loc 1 70 0
 325 0114 054B     		ldr	r3, .L16
 326 0116 0022     		movs	r2, #0
 327 0118 9A60     		str	r2, [r3, #8]
  71:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/SysTickInterrupt\delay.c **** 	SYS_TICK.LOAD = 167;
 328              		.loc 1 71 0
 329 011a 044B     		ldr	r3, .L16
 330 011c A722     		movs	r2, #167
 331 011e 5A60     		str	r2, [r3, #4]
  72:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/SysTickInterrupt\delay.c **** 	SYS_TICK.CTRL = 0x07;
 332              		.loc 1 72 0
 333 0120 024B     		ldr	r3, .L16
 334 0122 0722     		movs	r2, #7
 335 0124 1A70     		strb	r2, [r3]
  73:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/SysTickInterrupt\delay.c **** }
 336              		.loc 1 73 0
 337 0126 C046     		nop
 338 0128 BD46     		mov	sp, r7
 339              		@ sp needed
 340 012a 80BD     		pop	{r7, pc}
 341              	.L17:
 342              		.align	2
 343              	.L16:
 344 012c 10E000E0 		.word	-536813552
 345              		.cfi_endproc
 346              	.LFE5:
 348              		.align	1
 349              		.global	delay
 350              		.syntax unified
 351              		.code	16
 352              		.thumb_func
 353              		.fpu softvfp
 355              	delay:
 356              	.LFB6:
  74:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/SysTickInterrupt\delay.c **** 
  75:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/SysTickInterrupt\delay.c **** void delay(uint8 counter)
  76:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/SysTickInterrupt\delay.c **** {
 357              		.loc 1 76 0
 358              		.cfi_startproc
 359              		@ args = 0, pretend = 0, frame = 8
 360              		@ frame_needed = 1, uses_anonymous_args = 0
 361 0130 80B5     		push	{r7, lr}
 362              		.cfi_def_cfa_offset 8
 363              		.cfi_offset 7, -8
 364              		.cfi_offset 14, -4
 365 0132 82B0     		sub	sp, sp, #8
 366              		.cfi_def_cfa_offset 16
 367 0134 00AF     		add	r7, sp, #0
 368              		.cfi_def_cfa_register 7
 369 0136 0200     		movs	r2, r0
 370 0138 FB1D     		adds	r3, r7, #7
 371 013a 1A70     		strb	r2, [r3]
  77:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/SysTickInterrupt\delay.c **** 	delay_counter = counter;
 372              		.loc 1 77 0
 373 013c FB1D     		adds	r3, r7, #7
 374 013e 1A78     		ldrb	r2, [r3]
 375 0140 054B     		ldr	r3, .L19
 376 0142 1A60     		str	r2, [r3]
  78:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/SysTickInterrupt\delay.c **** 	sysTick_flag = 0;
 377              		.loc 1 78 0
 378 0144 054B     		ldr	r3, .L19+4
 379 0146 0022     		movs	r2, #0
 380 0148 1A70     		strb	r2, [r3]
  79:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/SysTickInterrupt\delay.c **** 	delay_1micro();
 381              		.loc 1 79 0
 382 014a FFF7FEFF 		bl	delay_1micro
  80:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/SysTickInterrupt\delay.c **** }...
 383              		.loc 1 80 0
 384 014e C046     		nop
 385 0150 BD46     		mov	sp, r7
 386 0152 02B0     		add	sp, sp, #8
 387              		@ sp needed
 388 0154 80BD     		pop	{r7, pc}
 389              	.L20:
 390 0156 C046     		.align	2
 391              	.L19:
 392 0158 04000000 		.word	delay_counter
 393 015c 00000000 		.word	sysTick_flag
 394              		.cfi_endproc
 395              	.LFE6:
 397              	.Letext0:
 398              		.file 2 "C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/SysTickInterrupt/types.h"
 399              		.file 3 "C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/SysTickInterrupt/delay.h"

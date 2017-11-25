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
  11              		.file	"graphicdisplay.c"
  12              		.text
  13              	.Ltext0:
  14              		.cfi_sections	.debug_frame
  15              		.align	1
  16              		.global	graphic_ctrl_bit_set
  17              		.syntax unified
  18              		.code	16
  19              		.thumb_func
  20              		.fpu softvfp
  22              	graphic_ctrl_bit_set:
  23              	.LFB0:
  24              		.file 1 "C:/development/armassembler/code_lite/graphic_display/util/graphicdisplay.c"
   1:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** #include "graphicdisplay.h"
   2:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** #include "gpio.h"
   3:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 
   4:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** void graphic_ctrl_bit_set(uint8_c x)
   5:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** {
  25              		.loc 1 5 0
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
  37 0006 0200     		movs	r2, r0
  38 0008 FB1D     		adds	r3, r7, #7
  39 000a 1A70     		strb	r2, [r3]
   6:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 	GPIO_E.ODR_LOW |= x;
  40              		.loc 1 6 0
  41 000c 0A49     		ldr	r1, .L2
  42 000e 0A4B     		ldr	r3, .L2
  43 0010 1B7D     		ldrb	r3, [r3, #20]
  44 0012 DAB2     		uxtb	r2, r3
  45 0014 FB1D     		adds	r3, r7, #7
  46 0016 1B78     		ldrb	r3, [r3]
  47 0018 1343     		orrs	r3, r2
  48 001a DBB2     		uxtb	r3, r3
  49 001c 0B75     		strb	r3, [r1, #20]
   7:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 	GPIO_E.ODR_LOW &= ~B_SELECT;
  50              		.loc 1 7 0
  51 001e 064A     		ldr	r2, .L2
  52 0020 054B     		ldr	r3, .L2
  53 0022 1B7D     		ldrb	r3, [r3, #20]
  54 0024 DBB2     		uxtb	r3, r3
  55 0026 0421     		movs	r1, #4
  56 0028 8B43     		bics	r3, r1
  57 002a DBB2     		uxtb	r3, r3
  58 002c 1375     		strb	r3, [r2, #20]
   8:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** }
  59              		.loc 1 8 0
  60 002e C046     		nop
  61 0030 BD46     		mov	sp, r7
  62 0032 02B0     		add	sp, sp, #8
  63              		@ sp needed
  64 0034 80BD     		pop	{r7, pc}
  65              	.L3:
  66 0036 C046     		.align	2
  67              	.L2:
  68 0038 00100240 		.word	1073876992
  69              		.cfi_endproc
  70              	.LFE0:
  72              		.align	1
  73              		.global	graphic_ctrl_bit_clear
  74              		.syntax unified
  75              		.code	16
  76              		.thumb_func
  77              		.fpu softvfp
  79              	graphic_ctrl_bit_clear:
  80              	.LFB1:
   9:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 
  10:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** void graphic_ctrl_bit_clear(uint8_c x)
  11:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** {
  81              		.loc 1 11 0
  82              		.cfi_startproc
  83              		@ args = 0, pretend = 0, frame = 8
  84              		@ frame_needed = 1, uses_anonymous_args = 0
  85 003c 80B5     		push	{r7, lr}
  86              		.cfi_def_cfa_offset 8
  87              		.cfi_offset 7, -8
  88              		.cfi_offset 14, -4
  89 003e 82B0     		sub	sp, sp, #8
  90              		.cfi_def_cfa_offset 16
  91 0040 00AF     		add	r7, sp, #0
  92              		.cfi_def_cfa_register 7
  93 0042 0200     		movs	r2, r0
  94 0044 FB1D     		adds	r3, r7, #7
  95 0046 1A70     		strb	r2, [r3]
  12:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 	GPIO_E.ODR_LOW &= ~x;
  96              		.loc 1 12 0
  97 0048 0C49     		ldr	r1, .L5
  98 004a 0C4B     		ldr	r3, .L5
  99 004c 1B7D     		ldrb	r3, [r3, #20]
 100 004e DBB2     		uxtb	r3, r3
 101 0050 5BB2     		sxtb	r3, r3
 102 0052 FA1D     		adds	r2, r7, #7
 103 0054 1278     		ldrb	r2, [r2]
 104 0056 52B2     		sxtb	r2, r2
 105 0058 D243     		mvns	r2, r2
 106 005a 52B2     		sxtb	r2, r2
 107 005c 1340     		ands	r3, r2
 108 005e 5BB2     		sxtb	r3, r3
 109 0060 DBB2     		uxtb	r3, r3
 110 0062 0B75     		strb	r3, [r1, #20]
  13:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 	GPIO_E.ODR_LOW &= ~B_SELECT;
 111              		.loc 1 13 0
 112 0064 054A     		ldr	r2, .L5
 113 0066 054B     		ldr	r3, .L5
 114 0068 1B7D     		ldrb	r3, [r3, #20]
 115 006a DBB2     		uxtb	r3, r3
 116 006c 0421     		movs	r1, #4
 117 006e 8B43     		bics	r3, r1
 118 0070 DBB2     		uxtb	r3, r3
 119 0072 1375     		strb	r3, [r2, #20]
  14:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** }
 120              		.loc 1 14 0
 121 0074 C046     		nop
 122 0076 BD46     		mov	sp, r7
 123 0078 02B0     		add	sp, sp, #8
 124              		@ sp needed
 125 007a 80BD     		pop	{r7, pc}
 126              	.L6:
 127              		.align	2
 128              	.L5:
 129 007c 00100240 		.word	1073876992
 130              		.cfi_endproc
 131              	.LFE1:
 133              		.align	1
 134              		.global	select_controller
 135              		.syntax unified
 136              		.code	16
 137              		.thumb_func
 138              		.fpu softvfp
 140              	select_controller:
 141              	.LFB2:
  15:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 
  16:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** void select_controller(uint8_c controller)
  17:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** {
 142              		.loc 1 17 0
 143              		.cfi_startproc
 144              		@ args = 0, pretend = 0, frame = 8
 145              		@ frame_needed = 1, uses_anonymous_args = 0
 146 0080 80B5     		push	{r7, lr}
 147              		.cfi_def_cfa_offset 8
 148              		.cfi_offset 7, -8
 149              		.cfi_offset 14, -4
 150 0082 82B0     		sub	sp, sp, #8
 151              		.cfi_def_cfa_offset 16
 152 0084 00AF     		add	r7, sp, #0
 153              		.cfi_def_cfa_register 7
 154 0086 0200     		movs	r2, r0
 155 0088 FB1D     		adds	r3, r7, #7
 156 008a 1A70     		strb	r2, [r3]
  18:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 	graphic_ctrl_bit_clear(B_CS1 | B_CS2);
 157              		.loc 1 18 0
 158 008c 1820     		movs	r0, #24
 159 008e FFF7FEFF 		bl	graphic_ctrl_bit_clear
  19:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 	graphic_ctrl_bit_set(controller);
 160              		.loc 1 19 0
 161 0092 FB1D     		adds	r3, r7, #7
 162 0094 1B78     		ldrb	r3, [r3]
 163 0096 1800     		movs	r0, r3
 164 0098 FFF7FEFF 		bl	graphic_ctrl_bit_set
  20:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** }
 165              		.loc 1 20 0
 166 009c C046     		nop
 167 009e BD46     		mov	sp, r7
 168 00a0 02B0     		add	sp, sp, #8
 169              		@ sp needed
 170 00a2 80BD     		pop	{r7, pc}
 171              		.cfi_endproc
 172              	.LFE2:
 174              		.align	1
 175              		.global	graphic_wait_ready
 176              		.syntax unified
 177              		.code	16
 178              		.thumb_func
 179              		.fpu softvfp
 181              	graphic_wait_ready:
 182              	.LFB3:
  21:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 
  22:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** void graphic_wait_ready(void)
  23:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** {
 183              		.loc 1 23 0
 184              		.cfi_startproc
 185              		@ args = 0, pretend = 0, frame = 0
 186              		@ frame_needed = 1, uses_anonymous_args = 0
 187 00a4 80B5     		push	{r7, lr}
 188              		.cfi_def_cfa_offset 8
 189              		.cfi_offset 7, -8
 190              		.cfi_offset 14, -4
 191 00a6 00AF     		add	r7, sp, #0
 192              		.cfi_def_cfa_register 7
  24:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 	graphic_ctrl_bit_clear(B_E);
 193              		.loc 1 24 0
 194 00a8 4020     		movs	r0, #64
 195 00aa FFF7FEFF 		bl	graphic_ctrl_bit_clear
  25:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 
  26:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 	GPIO_E.MODER = 0x00005555;
 196              		.loc 1 26 0
 197 00ae 134B     		ldr	r3, .L14
 198 00b0 134A     		ldr	r2, .L14+4
 199 00b2 1A60     		str	r2, [r3]
  27:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 
  28:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 	graphic_ctrl_bit_set(B_RW);
 200              		.loc 1 28 0
 201 00b4 0220     		movs	r0, #2
 202 00b6 FFF7FEFF 		bl	graphic_ctrl_bit_set
  29:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 	graphic_ctrl_bit_clear(B_RS);
 203              		.loc 1 29 0
 204 00ba 0120     		movs	r0, #1
 205 00bc FFF7FEFF 		bl	graphic_ctrl_bit_clear
  30:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 
  31:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 	delay_500ns();
 206              		.loc 1 31 0
 207 00c0 FFF7FEFF 		bl	delay_500ns
 208              	.L11:
  32:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 
  33:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 	while (TRUE)
  34:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 	{
  35:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 		graphic_ctrl_bit_set(B_E);
 209              		.loc 1 35 0
 210 00c4 4020     		movs	r0, #64
 211 00c6 FFF7FEFF 		bl	graphic_ctrl_bit_set
  36:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 		delay_500ns();
 212              		.loc 1 36 0
 213 00ca FFF7FEFF 		bl	delay_500ns
  37:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 		graphic_ctrl_bit_clear(B_E);
 214              		.loc 1 37 0
 215 00ce 4020     		movs	r0, #64
 216 00d0 FFF7FEFF 		bl	graphic_ctrl_bit_clear
  38:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 		delay_500ns();
 217              		.loc 1 38 0
 218 00d4 FFF7FEFF 		bl	delay_500ns
  39:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 		if ((GPIO_E.IDR_HIGH & LCD_BUSY) == 0)
 219              		.loc 1 39 0
 220 00d8 084B     		ldr	r3, .L14
 221 00da 5B7C     		ldrb	r3, [r3, #17]
 222 00dc DBB2     		uxtb	r3, r3
 223 00de 5BB2     		sxtb	r3, r3
 224 00e0 002B     		cmp	r3, #0
 225 00e2 00DA     		bge	.L13
  35:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 		delay_500ns();
 226              		.loc 1 35 0
 227 00e4 EEE7     		b	.L11
 228              	.L13:
  40:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 		{
  41:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 			break;
 229              		.loc 1 41 0
 230 00e6 C046     		nop
  42:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 		}
  43:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 	}
  44:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 
  45:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 	graphic_ctrl_bit_set(B_E);
 231              		.loc 1 45 0
 232 00e8 4020     		movs	r0, #64
 233 00ea FFF7FEFF 		bl	graphic_ctrl_bit_set
  46:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 	GPIO_E.MODER = 0x55555555;
 234              		.loc 1 46 0
 235 00ee 034B     		ldr	r3, .L14
 236 00f0 044A     		ldr	r2, .L14+8
 237 00f2 1A60     		str	r2, [r3]
  47:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** }
 238              		.loc 1 47 0
 239 00f4 C046     		nop
 240 00f6 BD46     		mov	sp, r7
 241              		@ sp needed
 242 00f8 80BD     		pop	{r7, pc}
 243              	.L15:
 244 00fa C046     		.align	2
 245              	.L14:
 246 00fc 00100240 		.word	1073876992
 247 0100 55550000 		.word	21845
 248 0104 55555555 		.word	1431655765
 249              		.cfi_endproc
 250              	.LFE3:
 252              		.align	1
 253              		.global	graphic_read
 254              		.syntax unified
 255              		.code	16
 256              		.thumb_func
 257              		.fpu softvfp
 259              	graphic_read:
 260              	.LFB4:
  48:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 
  49:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** uint8_c graphic_read(uint8_c controller)
  50:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** {
 261              		.loc 1 50 0
 262              		.cfi_startproc
 263              		@ args = 0, pretend = 0, frame = 16
 264              		@ frame_needed = 1, uses_anonymous_args = 0
 265 0108 80B5     		push	{r7, lr}
 266              		.cfi_def_cfa_offset 8
 267              		.cfi_offset 7, -8
 268              		.cfi_offset 14, -4
 269 010a 84B0     		sub	sp, sp, #16
 270              		.cfi_def_cfa_offset 24
 271 010c 00AF     		add	r7, sp, #0
 272              		.cfi_def_cfa_register 7
 273 010e 0200     		movs	r2, r0
 274 0110 FB1D     		adds	r3, r7, #7
 275 0112 1A70     		strb	r2, [r3]
  51:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 	graphic_ctrl_bit_clear(B_E);
 276              		.loc 1 51 0
 277 0114 4020     		movs	r0, #64
 278 0116 FFF7FEFF 		bl	graphic_ctrl_bit_clear
  52:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 
  53:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 	GPIO_E.MODER = 0x00005555;
 279              		.loc 1 53 0
 280 011a 134B     		ldr	r3, .L18
 281 011c 134A     		ldr	r2, .L18+4
 282 011e 1A60     		str	r2, [r3]
  54:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 
  55:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 	graphic_ctrl_bit_set(B_RS | B_RW);
 283              		.loc 1 55 0
 284 0120 0320     		movs	r0, #3
 285 0122 FFF7FEFF 		bl	graphic_ctrl_bit_set
  56:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 
  57:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 	select_controller(controller);
 286              		.loc 1 57 0
 287 0126 FB1D     		adds	r3, r7, #7
 288 0128 1B78     		ldrb	r3, [r3]
 289 012a 1800     		movs	r0, r3
 290 012c FFF7FEFF 		bl	select_controller
  58:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 	delay_500ns();
 291              		.loc 1 58 0
 292 0130 FFF7FEFF 		bl	delay_500ns
  59:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 
  60:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 	graphic_ctrl_bit_set(B_E);
 293              		.loc 1 60 0
 294 0134 4020     		movs	r0, #64
 295 0136 FFF7FEFF 		bl	graphic_ctrl_bit_set
  61:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 	delay_500ns();
 296              		.loc 1 61 0
 297 013a FFF7FEFF 		bl	delay_500ns
  62:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 
  63:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 	uint8_c rv = GPIO_E.IDR_HIGH;
 298              		.loc 1 63 0
 299 013e 0A4A     		ldr	r2, .L18
 300 0140 0F23     		movs	r3, #15
 301 0142 FB18     		adds	r3, r7, r3
 302 0144 527C     		ldrb	r2, [r2, #17]
 303 0146 1A70     		strb	r2, [r3]
  64:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 
  65:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 	graphic_ctrl_bit_clear(B_E);
 304              		.loc 1 65 0
 305 0148 4020     		movs	r0, #64
 306 014a FFF7FEFF 		bl	graphic_ctrl_bit_clear
  66:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 
  67:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 	GPIO_E.MODER = 0x55555555;
 307              		.loc 1 67 0
 308 014e 064B     		ldr	r3, .L18
 309 0150 074A     		ldr	r2, .L18+8
 310 0152 1A60     		str	r2, [r3]
  68:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 
  69:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 	// TODO: MAY NEED CHANGE
  70:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 
  71:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 	graphic_wait_ready();
 311              		.loc 1 71 0
 312 0154 FFF7FEFF 		bl	graphic_wait_ready
  72:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 
  73:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 	return rv;
 313              		.loc 1 73 0
 314 0158 0F23     		movs	r3, #15
 315 015a FB18     		adds	r3, r7, r3
 316 015c 1B78     		ldrb	r3, [r3]
  74:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** }
 317              		.loc 1 74 0
 318 015e 1800     		movs	r0, r3
 319 0160 BD46     		mov	sp, r7
 320 0162 04B0     		add	sp, sp, #16
 321              		@ sp needed
 322 0164 80BD     		pop	{r7, pc}
 323              	.L19:
 324 0166 C046     		.align	2
 325              	.L18:
 326 0168 00100240 		.word	1073876992
 327 016c 55550000 		.word	21845
 328 0170 55555555 		.word	1431655765
 329              		.cfi_endproc
 330              	.LFE4:
 332              		.align	1
 333              		.global	graphic_read_data
 334              		.syntax unified
 335              		.code	16
 336              		.thumb_func
 337              		.fpu softvfp
 339              	graphic_read_data:
 340              	.LFB5:
  75:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 
  76:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** uint8_c graphic_read_data(uint8_c controller)
  77:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** {
 341              		.loc 1 77 0
 342              		.cfi_startproc
 343              		@ args = 0, pretend = 0, frame = 8
 344              		@ frame_needed = 1, uses_anonymous_args = 0
 345 0174 80B5     		push	{r7, lr}
 346              		.cfi_def_cfa_offset 8
 347              		.cfi_offset 7, -8
 348              		.cfi_offset 14, -4
 349 0176 82B0     		sub	sp, sp, #8
 350              		.cfi_def_cfa_offset 16
 351 0178 00AF     		add	r7, sp, #0
 352              		.cfi_def_cfa_register 7
 353 017a 0200     		movs	r2, r0
 354 017c FB1D     		adds	r3, r7, #7
 355 017e 1A70     		strb	r2, [r3]
  78:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 	graphic_read(controller);
 356              		.loc 1 78 0
 357 0180 FB1D     		adds	r3, r7, #7
 358 0182 1B78     		ldrb	r3, [r3]
 359 0184 1800     		movs	r0, r3
 360 0186 FFF7FEFF 		bl	graphic_read
  79:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 	return graphic_read(controller);
 361              		.loc 1 79 0
 362 018a FB1D     		adds	r3, r7, #7
 363 018c 1B78     		ldrb	r3, [r3]
 364 018e 1800     		movs	r0, r3
 365 0190 FFF7FEFF 		bl	graphic_read
 366 0194 0300     		movs	r3, r0
  80:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** }
 367              		.loc 1 80 0
 368 0196 1800     		movs	r0, r3
 369 0198 BD46     		mov	sp, r7
 370 019a 02B0     		add	sp, sp, #8
 371              		@ sp needed
 372 019c 80BD     		pop	{r7, pc}
 373              		.cfi_endproc
 374              	.LFE5:
 376              		.align	1
 377              		.global	graphic_write
 378              		.syntax unified
 379              		.code	16
 380              		.thumb_func
 381              		.fpu softvfp
 383              	graphic_write:
 384              	.LFB6:
  81:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 
  82:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** void graphic_write(uint8_c value, uint8_c controller)
  83:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** {
 385              		.loc 1 83 0
 386              		.cfi_startproc
 387              		@ args = 0, pretend = 0, frame = 8
 388              		@ frame_needed = 1, uses_anonymous_args = 0
 389 019e 80B5     		push	{r7, lr}
 390              		.cfi_def_cfa_offset 8
 391              		.cfi_offset 7, -8
 392              		.cfi_offset 14, -4
 393 01a0 82B0     		sub	sp, sp, #8
 394              		.cfi_def_cfa_offset 16
 395 01a2 00AF     		add	r7, sp, #0
 396              		.cfi_def_cfa_register 7
 397 01a4 0200     		movs	r2, r0
 398 01a6 FB1D     		adds	r3, r7, #7
 399 01a8 1A70     		strb	r2, [r3]
 400 01aa BB1D     		adds	r3, r7, #6
 401 01ac 0A1C     		adds	r2, r1, #0
 402 01ae 1A70     		strb	r2, [r3]
  84:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 	GPIO_E.ODR_HIGH = value;
 403              		.loc 1 84 0
 404 01b0 104A     		ldr	r2, .L23
 405 01b2 FB1D     		adds	r3, r7, #7
 406 01b4 1B78     		ldrb	r3, [r3]
 407 01b6 5375     		strb	r3, [r2, #21]
  85:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 
  86:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 	select_controller(controller);
 408              		.loc 1 86 0
 409 01b8 BB1D     		adds	r3, r7, #6
 410 01ba 1B78     		ldrb	r3, [r3]
 411 01bc 1800     		movs	r0, r3
 412 01be FFF7FEFF 		bl	select_controller
  87:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 
  88:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 	delay_500ns();
 413              		.loc 1 88 0
 414 01c2 FFF7FEFF 		bl	delay_500ns
  89:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 
  90:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 	graphic_ctrl_bit_set(B_E);
 415              		.loc 1 90 0
 416 01c6 4020     		movs	r0, #64
 417 01c8 FFF7FEFF 		bl	graphic_ctrl_bit_set
  91:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 
  92:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 	delay_500ns();
 418              		.loc 1 92 0
 419 01cc FFF7FEFF 		bl	delay_500ns
  93:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 
  94:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 	graphic_ctrl_bit_clear(B_E);
 420              		.loc 1 94 0
 421 01d0 4020     		movs	r0, #64
 422 01d2 FFF7FEFF 		bl	graphic_ctrl_bit_clear
  95:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 
  96:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 	graphic_wait_ready();
 423              		.loc 1 96 0
 424 01d6 FFF7FEFF 		bl	graphic_wait_ready
  97:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 
  98:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 	GPIO_E.ODR_HIGH = 0;
 425              		.loc 1 98 0
 426 01da 064B     		ldr	r3, .L23
 427 01dc 0022     		movs	r2, #0
 428 01de 5A75     		strb	r2, [r3, #21]
  99:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 	graphic_ctrl_bit_set(B_E);
 429              		.loc 1 99 0
 430 01e0 4020     		movs	r0, #64
 431 01e2 FFF7FEFF 		bl	graphic_ctrl_bit_set
 100:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 
 101:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 	select_controller(0);
 432              		.loc 1 101 0
 433 01e6 0020     		movs	r0, #0
 434 01e8 FFF7FEFF 		bl	select_controller
 102:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** }
 435              		.loc 1 102 0
 436 01ec C046     		nop
 437 01ee BD46     		mov	sp, r7
 438 01f0 02B0     		add	sp, sp, #8
 439              		@ sp needed
 440 01f2 80BD     		pop	{r7, pc}
 441              	.L24:
 442              		.align	2
 443              	.L23:
 444 01f4 00100240 		.word	1073876992
 445              		.cfi_endproc
 446              	.LFE6:
 448              		.align	1
 449              		.global	graphic_write_command
 450              		.syntax unified
 451              		.code	16
 452              		.thumb_func
 453              		.fpu softvfp
 455              	graphic_write_command:
 456              	.LFB7:
 103:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 
 104:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** void graphic_write_command(uint8_c command, uint8_c controller)
 105:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** {
 457              		.loc 1 105 0
 458              		.cfi_startproc
 459              		@ args = 0, pretend = 0, frame = 8
 460              		@ frame_needed = 1, uses_anonymous_args = 0
 461 01f8 80B5     		push	{r7, lr}
 462              		.cfi_def_cfa_offset 8
 463              		.cfi_offset 7, -8
 464              		.cfi_offset 14, -4
 465 01fa 82B0     		sub	sp, sp, #8
 466              		.cfi_def_cfa_offset 16
 467 01fc 00AF     		add	r7, sp, #0
 468              		.cfi_def_cfa_register 7
 469 01fe 0200     		movs	r2, r0
 470 0200 FB1D     		adds	r3, r7, #7
 471 0202 1A70     		strb	r2, [r3]
 472 0204 BB1D     		adds	r3, r7, #6
 473 0206 0A1C     		adds	r2, r1, #0
 474 0208 1A70     		strb	r2, [r3]
 106:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 	graphic_ctrl_bit_clear(B_E);
 475              		.loc 1 106 0
 476 020a 4020     		movs	r0, #64
 477 020c FFF7FEFF 		bl	graphic_ctrl_bit_clear
 107:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 
 108:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 	select_controller(controller);
 478              		.loc 1 108 0
 479 0210 BB1D     		adds	r3, r7, #6
 480 0212 1B78     		ldrb	r3, [r3]
 481 0214 1800     		movs	r0, r3
 482 0216 FFF7FEFF 		bl	select_controller
 109:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 
 110:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 	graphic_ctrl_bit_clear(B_RS | B_RW);
 483              		.loc 1 110 0
 484 021a 0320     		movs	r0, #3
 485 021c FFF7FEFF 		bl	graphic_ctrl_bit_clear
 111:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 
 112:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 	graphic_write(command, controller);
 486              		.loc 1 112 0
 487 0220 BB1D     		adds	r3, r7, #6
 488 0222 1A78     		ldrb	r2, [r3]
 489 0224 FB1D     		adds	r3, r7, #7
 490 0226 1B78     		ldrb	r3, [r3]
 491 0228 1100     		movs	r1, r2
 492 022a 1800     		movs	r0, r3
 493 022c FFF7FEFF 		bl	graphic_write
 113:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** }
 494              		.loc 1 113 0
 495 0230 C046     		nop
 496 0232 BD46     		mov	sp, r7
 497 0234 02B0     		add	sp, sp, #8
 498              		@ sp needed
 499 0236 80BD     		pop	{r7, pc}
 500              		.cfi_endproc
 501              	.LFE7:
 503              		.align	1
 504              		.global	graphic_write_data
 505              		.syntax unified
 506              		.code	16
 507              		.thumb_func
 508              		.fpu softvfp
 510              	graphic_write_data:
 511              	.LFB8:
 114:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 
 115:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** void graphic_write_data(uint8_c data, uint8_c controller)
 116:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** {
 512              		.loc 1 116 0
 513              		.cfi_startproc
 514              		@ args = 0, pretend = 0, frame = 8
 515              		@ frame_needed = 1, uses_anonymous_args = 0
 516 0238 80B5     		push	{r7, lr}
 517              		.cfi_def_cfa_offset 8
 518              		.cfi_offset 7, -8
 519              		.cfi_offset 14, -4
 520 023a 82B0     		sub	sp, sp, #8
 521              		.cfi_def_cfa_offset 16
 522 023c 00AF     		add	r7, sp, #0
 523              		.cfi_def_cfa_register 7
 524 023e 0200     		movs	r2, r0
 525 0240 FB1D     		adds	r3, r7, #7
 526 0242 1A70     		strb	r2, [r3]
 527 0244 BB1D     		adds	r3, r7, #6
 528 0246 0A1C     		adds	r2, r1, #0
 529 0248 1A70     		strb	r2, [r3]
 117:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 	graphic_ctrl_bit_clear(B_E);
 530              		.loc 1 117 0
 531 024a 4020     		movs	r0, #64
 532 024c FFF7FEFF 		bl	graphic_ctrl_bit_clear
 118:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 
 119:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 	select_controller(controller);
 533              		.loc 1 119 0
 534 0250 BB1D     		adds	r3, r7, #6
 535 0252 1B78     		ldrb	r3, [r3]
 536 0254 1800     		movs	r0, r3
 537 0256 FFF7FEFF 		bl	select_controller
 120:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 
 121:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 	graphic_ctrl_bit_set(B_RS);
 538              		.loc 1 121 0
 539 025a 0120     		movs	r0, #1
 540 025c FFF7FEFF 		bl	graphic_ctrl_bit_set
 122:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 	graphic_ctrl_bit_clear(B_RW);
 541              		.loc 1 122 0
 542 0260 0220     		movs	r0, #2
 543 0262 FFF7FEFF 		bl	graphic_ctrl_bit_clear
 123:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 
 124:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 	graphic_write(data, controller);
 544              		.loc 1 124 0
 545 0266 BB1D     		adds	r3, r7, #6
 546 0268 1A78     		ldrb	r2, [r3]
 547 026a FB1D     		adds	r3, r7, #7
 548 026c 1B78     		ldrb	r3, [r3]
 549 026e 1100     		movs	r1, r2
 550 0270 1800     		movs	r0, r3
 551 0272 FFF7FEFF 		bl	graphic_write
 125:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** }
 552              		.loc 1 125 0
 553 0276 C046     		nop
 554 0278 BD46     		mov	sp, r7
 555 027a 02B0     		add	sp, sp, #8
 556              		@ sp needed
 557 027c 80BD     		pop	{r7, pc}
 558              		.cfi_endproc
 559              	.LFE8:
 561              		.align	1
 562              		.global	graphic_initialize
 563              		.syntax unified
 564              		.code	16
 565              		.thumb_func
 566              		.fpu softvfp
 568              	graphic_initialize:
 569              	.LFB9:
 126:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 
 127:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** void graphic_initialize(void)
 128:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** {
 570              		.loc 1 128 0
 571              		.cfi_startproc
 572              		@ args = 0, pretend = 0, frame = 0
 573              		@ frame_needed = 1, uses_anonymous_args = 0
 574 027e 80B5     		push	{r7, lr}
 575              		.cfi_def_cfa_offset 8
 576              		.cfi_offset 7, -8
 577              		.cfi_offset 14, -4
 578 0280 00AF     		add	r7, sp, #0
 579              		.cfi_def_cfa_register 7
 129:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 	graphic_ctrl_bit_set(B_E);
 580              		.loc 1 129 0
 581 0282 4020     		movs	r0, #64
 582 0284 FFF7FEFF 		bl	graphic_ctrl_bit_set
 130:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 	delay_micro(10);
 583              		.loc 1 130 0
 584 0288 0A20     		movs	r0, #10
 585 028a FFF7FEFF 		bl	delay_micro
 131:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 
 132:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 	graphic_ctrl_bit_clear(B_CS1 | B_CS2 | B_RST | B_E);
 586              		.loc 1 132 0
 587 028e 7820     		movs	r0, #120
 588 0290 FFF7FEFF 		bl	graphic_ctrl_bit_clear
 133:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 	delay_milli(30);
 589              		.loc 1 133 0
 590 0294 1E20     		movs	r0, #30
 591 0296 FFF7FEFF 		bl	delay_milli
 134:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 
 135:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 	graphic_ctrl_bit_set(B_RST);
 592              		.loc 1 135 0
 593 029a 2020     		movs	r0, #32
 594 029c FFF7FEFF 		bl	graphic_ctrl_bit_set
 136:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 
 137:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 	graphic_write_command(LCD_OFF, B_CS1 | B_CS2);
 595              		.loc 1 137 0
 596 02a0 1821     		movs	r1, #24
 597 02a2 3E20     		movs	r0, #62
 598 02a4 FFF7FEFF 		bl	graphic_write_command
 138:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 	graphic_write_command(LCD_ON, B_CS1 | B_CS2);		  // Toggle display
 599              		.loc 1 138 0
 600 02a8 1821     		movs	r1, #24
 601 02aa 3F20     		movs	r0, #63
 602 02ac FFF7FEFF 		bl	graphic_write_command
 139:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 	graphic_write_command(LCD_DISP_START, B_CS1 | B_CS2); // start = 0
 603              		.loc 1 139 0
 604 02b0 1821     		movs	r1, #24
 605 02b2 C020     		movs	r0, #192
 606 02b4 FFF7FEFF 		bl	graphic_write_command
 140:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 	graphic_write_command(LCD_SET_ADD, B_CS1 | B_CS2);	// add = 0
 607              		.loc 1 140 0
 608 02b8 1821     		movs	r1, #24
 609 02ba 4020     		movs	r0, #64
 610 02bc FFF7FEFF 		bl	graphic_write_command
 141:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 	graphic_write_command(LCD_SET_PAGE, B_CS1 | B_CS2);   // page = 0
 611              		.loc 1 141 0
 612 02c0 1821     		movs	r1, #24
 613 02c2 B820     		movs	r0, #184
 614 02c4 FFF7FEFF 		bl	graphic_write_command
 142:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 	select_controller(0);								  // deactivate both CS signals
 615              		.loc 1 142 0
 616 02c8 0020     		movs	r0, #0
 617 02ca FFF7FEFF 		bl	select_controller
 143:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** }
 618              		.loc 1 143 0
 619 02ce C046     		nop
 620 02d0 BD46     		mov	sp, r7
 621              		@ sp needed
 622 02d2 80BD     		pop	{r7, pc}
 623              		.cfi_endproc
 624              	.LFE9:
 626              		.align	1
 627              		.global	graphic_clear_screen
 628              		.syntax unified
 629              		.code	16
 630              		.thumb_func
 631              		.fpu softvfp
 633              	graphic_clear_screen:
 634              	.LFB10:
 144:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 
 145:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** void graphic_clear_screen()
 146:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** {
 635              		.loc 1 146 0
 636              		.cfi_startproc
 637              		@ args = 0, pretend = 0, frame = 8
 638              		@ frame_needed = 1, uses_anonymous_args = 0
 639 02d4 80B5     		push	{r7, lr}
 640              		.cfi_def_cfa_offset 8
 641              		.cfi_offset 7, -8
 642              		.cfi_offset 14, -4
 643 02d6 82B0     		sub	sp, sp, #8
 644              		.cfi_def_cfa_offset 16
 645 02d8 00AF     		add	r7, sp, #0
 646              		.cfi_def_cfa_register 7
 647              	.LBB2:
 147:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 
 148:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 	for (uint8 i = 0; i < 8; i++)
 648              		.loc 1 148 0
 649 02da FB1D     		adds	r3, r7, #7
 650 02dc 0022     		movs	r2, #0
 651 02de 1A70     		strb	r2, [r3]
 652 02e0 23E0     		b	.L29
 653              	.L32:
 149:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 	{
 150:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 		graphic_write_command(LCD_SET_PAGE | i, B_CS1 | B_CS2);
 654              		.loc 1 150 0
 655 02e2 FB1D     		adds	r3, r7, #7
 656 02e4 1B78     		ldrb	r3, [r3]
 657 02e6 4822     		movs	r2, #72
 658 02e8 5242     		rsbs	r2, r2, #0
 659 02ea 1343     		orrs	r3, r2
 660 02ec DBB2     		uxtb	r3, r3
 661 02ee 1821     		movs	r1, #24
 662 02f0 1800     		movs	r0, r3
 663 02f2 FFF7FEFF 		bl	graphic_write_command
 151:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 		graphic_write_command(LCD_SET_ADD | 0, B_CS1 | B_CS2);
 664              		.loc 1 151 0
 665 02f6 1821     		movs	r1, #24
 666 02f8 4020     		movs	r0, #64
 667 02fa FFF7FEFF 		bl	graphic_write_command
 668              	.LBB3:
 152:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 		for (uint8 j = 0; j < 64; j++)
 669              		.loc 1 152 0
 670 02fe BB1D     		adds	r3, r7, #6
 671 0300 0022     		movs	r2, #0
 672 0302 1A70     		strb	r2, [r3]
 673 0304 08E0     		b	.L30
 674              	.L31:
 153:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 		{
 154:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 			graphic_write_data(0, B_CS1 | B_CS2);
 675              		.loc 1 154 0 discriminator 3
 676 0306 1821     		movs	r1, #24
 677 0308 0020     		movs	r0, #0
 678 030a FFF7FEFF 		bl	graphic_write_data
 152:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 		for (uint8 j = 0; j < 64; j++)
 679              		.loc 1 152 0 discriminator 3
 680 030e BB1D     		adds	r3, r7, #6
 681 0310 1A78     		ldrb	r2, [r3]
 682 0312 BB1D     		adds	r3, r7, #6
 683 0314 0132     		adds	r2, r2, #1
 684 0316 1A70     		strb	r2, [r3]
 685              	.L30:
 152:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 		for (uint8 j = 0; j < 64; j++)
 686              		.loc 1 152 0 is_stmt 0 discriminator 1
 687 0318 BB1D     		adds	r3, r7, #6
 688 031a 1B78     		ldrb	r3, [r3]
 689 031c 3F2B     		cmp	r3, #63
 690 031e F2D9     		bls	.L31
 691              	.LBE3:
 148:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 	{
 692              		.loc 1 148 0 is_stmt 1 discriminator 2
 693 0320 FB1D     		adds	r3, r7, #7
 694 0322 1A78     		ldrb	r2, [r3]
 695 0324 FB1D     		adds	r3, r7, #7
 696 0326 0132     		adds	r2, r2, #1
 697 0328 1A70     		strb	r2, [r3]
 698              	.L29:
 148:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 	{
 699              		.loc 1 148 0 is_stmt 0 discriminator 1
 700 032a FB1D     		adds	r3, r7, #7
 701 032c 1B78     		ldrb	r3, [r3]
 702 032e 072B     		cmp	r3, #7
 703 0330 D7D9     		bls	.L32
 704              	.LBE2:
 155:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 		}
 156:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 	}
 157:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** }
 705              		.loc 1 157 0 is_stmt 1
 706 0332 C046     		nop
 707 0334 BD46     		mov	sp, r7
 708 0336 02B0     		add	sp, sp, #8
 709              		@ sp needed
 710 0338 80BD     		pop	{r7, pc}
 711              		.cfi_endproc
 712              	.LFE10:
 714              		.align	1
 715              		.global	pixel
 716              		.syntax unified
 717              		.code	16
 718              		.thumb_func
 719              		.fpu softvfp
 721              	pixel:
 722              	.LFB11:
 158:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 
 159:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** void pixel(uint8_c x, uint8_c y, uint8_c set)
 160:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** {
 723              		.loc 1 160 0
 724              		.cfi_startproc
 725              		@ args = 0, pretend = 0, frame = 16
 726              		@ frame_needed = 1, uses_anonymous_args = 0
 727 033a 90B5     		push	{r4, r7, lr}
 728              		.cfi_def_cfa_offset 12
 729              		.cfi_offset 4, -12
 730              		.cfi_offset 7, -8
 731              		.cfi_offset 14, -4
 732 033c 85B0     		sub	sp, sp, #20
 733              		.cfi_def_cfa_offset 32
 734 033e 00AF     		add	r7, sp, #0
 735              		.cfi_def_cfa_register 7
 736 0340 0400     		movs	r4, r0
 737 0342 0800     		movs	r0, r1
 738 0344 1100     		movs	r1, r2
 739 0346 FB1D     		adds	r3, r7, #7
 740 0348 221C     		adds	r2, r4, #0
 741 034a 1A70     		strb	r2, [r3]
 742 034c BB1D     		adds	r3, r7, #6
 743 034e 021C     		adds	r2, r0, #0
 744 0350 1A70     		strb	r2, [r3]
 745 0352 7B1D     		adds	r3, r7, #5
 746 0354 0A1C     		adds	r2, r1, #0
 747 0356 1A70     		strb	r2, [r3]
 161:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 	if (x > 128 || x < 1)
 748              		.loc 1 161 0
 749 0358 FB1D     		adds	r3, r7, #7
 750 035a 1B78     		ldrb	r3, [r3]
 751 035c 802B     		cmp	r3, #128
 752 035e 00D9     		bls	.LCB586
 753 0360 A5E0     		b	.L46	@long jump
 754              	.LCB586:
 755              		.loc 1 161 0 is_stmt 0 discriminator 1
 756 0362 FB1D     		adds	r3, r7, #7
 757 0364 1B78     		ldrb	r3, [r3]
 758 0366 002B     		cmp	r3, #0
 759 0368 00D1     		bne	.LCB590
 760 036a A0E0     		b	.L46	@long jump
 761              	.LCB590:
 162:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 		return;
 163:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 
 164:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 	if (y > 64 || y < 1)
 762              		.loc 1 164 0 is_stmt 1
 763 036c BB1D     		adds	r3, r7, #6
 764 036e 1B78     		ldrb	r3, [r3]
 765 0370 402B     		cmp	r3, #64
 766 0372 00D9     		bls	.LCB594
 767 0374 9DE0     		b	.L47	@long jump
 768              	.LCB594:
 769              		.loc 1 164 0 is_stmt 0 discriminator 1
 770 0376 BB1D     		adds	r3, r7, #6
 771 0378 1B78     		ldrb	r3, [r3]
 772 037a 002B     		cmp	r3, #0
 773 037c 00D1     		bne	.LCB598
 774 037e 98E0     		b	.L47	@long jump
 775              	.LCB598:
 165:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 		return;
 166:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 
 167:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 	uint8_c row = (y - 1) / 8;
 776              		.loc 1 167 0 is_stmt 1
 777 0380 BB1D     		adds	r3, r7, #6
 778 0382 1B78     		ldrb	r3, [r3]
 779 0384 013B     		subs	r3, r3, #1
 780 0386 002B     		cmp	r3, #0
 781 0388 00DA     		bge	.L39
 782 038a 0733     		adds	r3, r3, #7
 783              	.L39:
 784 038c DB10     		asrs	r3, r3, #3
 785 038e 1A00     		movs	r2, r3
 786 0390 0C23     		movs	r3, #12
 787 0392 FB18     		adds	r3, r7, r3
 788 0394 1A70     		strb	r2, [r3]
 168:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 	uint8 mask = 1 << ((y - 1) % 8);
 789              		.loc 1 168 0
 790 0396 BB1D     		adds	r3, r7, #6
 791 0398 1B78     		ldrb	r3, [r3]
 792 039a 013B     		subs	r3, r3, #1
 793 039c 474A     		ldr	r2, .L48
 794 039e 1340     		ands	r3, r2
 795 03a0 04D5     		bpl	.L40
 796 03a2 013B     		subs	r3, r3, #1
 797 03a4 0822     		movs	r2, #8
 798 03a6 5242     		rsbs	r2, r2, #0
 799 03a8 1343     		orrs	r3, r2
 800 03aa 0133     		adds	r3, r3, #1
 801              	.L40:
 802 03ac 1A00     		movs	r2, r3
 803 03ae 0123     		movs	r3, #1
 804 03b0 9340     		lsls	r3, r3, r2
 805 03b2 1A00     		movs	r2, r3
 806 03b4 0F23     		movs	r3, #15
 807 03b6 FB18     		adds	r3, r7, r3
 808 03b8 1A70     		strb	r2, [r3]
 169:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 
 170:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 	if (set == 0)
 809              		.loc 1 170 0
 810 03ba 7B1D     		adds	r3, r7, #5
 811 03bc 1B78     		ldrb	r3, [r3]
 812 03be 002B     		cmp	r3, #0
 813 03c0 06D1     		bne	.L41
 171:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 	{
 172:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 		mask = ~mask;
 814              		.loc 1 172 0
 815 03c2 0F23     		movs	r3, #15
 816 03c4 FB18     		adds	r3, r7, r3
 817 03c6 0F22     		movs	r2, #15
 818 03c8 BA18     		adds	r2, r7, r2
 819 03ca 1278     		ldrb	r2, [r2]
 820 03cc D243     		mvns	r2, r2
 821 03ce 1A70     		strb	r2, [r3]
 822              	.L41:
 173:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 	}
 174:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 
 175:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 	uint8 controller;
 176:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 	uint8 column;
 177:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 	if (x > 64)
 823              		.loc 1 177 0
 824 03d0 FB1D     		adds	r3, r7, #7
 825 03d2 1B78     		ldrb	r3, [r3]
 826 03d4 402B     		cmp	r3, #64
 827 03d6 0AD9     		bls	.L42
 178:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 	{
 179:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 		controller = B_CS2;
 828              		.loc 1 179 0
 829 03d8 0E23     		movs	r3, #14
 830 03da FB18     		adds	r3, r7, r3
 831 03dc 1022     		movs	r2, #16
 832 03de 1A70     		strb	r2, [r3]
 180:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 		column = x - 65;
 833              		.loc 1 180 0
 834 03e0 0D23     		movs	r3, #13
 835 03e2 FB18     		adds	r3, r7, r3
 836 03e4 FA1D     		adds	r2, r7, #7
 837 03e6 1278     		ldrb	r2, [r2]
 838 03e8 413A     		subs	r2, r2, #65
 839 03ea 1A70     		strb	r2, [r3]
 840 03ec 09E0     		b	.L43
 841              	.L42:
 181:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 	}
 182:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 	else
 183:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 	{
 184:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 		controller = B_CS1;
 842              		.loc 1 184 0
 843 03ee 0E23     		movs	r3, #14
 844 03f0 FB18     		adds	r3, r7, r3
 845 03f2 0822     		movs	r2, #8
 846 03f4 1A70     		strb	r2, [r3]
 185:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 		column = x - 1;
 847              		.loc 1 185 0
 848 03f6 0D23     		movs	r3, #13
 849 03f8 FB18     		adds	r3, r7, r3
 850 03fa FA1D     		adds	r2, r7, #7
 851 03fc 1278     		ldrb	r2, [r2]
 852 03fe 013A     		subs	r2, r2, #1
 853 0400 1A70     		strb	r2, [r3]
 854              	.L43:
 186:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 	}
 187:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 
 188:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 	graphic_write_command(LCD_SET_ADD | column, controller);
 855              		.loc 1 188 0
 856 0402 0D23     		movs	r3, #13
 857 0404 FB18     		adds	r3, r7, r3
 858 0406 1B78     		ldrb	r3, [r3]
 859 0408 4022     		movs	r2, #64
 860 040a 1343     		orrs	r3, r2
 861 040c DAB2     		uxtb	r2, r3
 862 040e 0E23     		movs	r3, #14
 863 0410 FB18     		adds	r3, r7, r3
 864 0412 1B78     		ldrb	r3, [r3]
 865 0414 1900     		movs	r1, r3
 866 0416 1000     		movs	r0, r2
 867 0418 FFF7FEFF 		bl	graphic_write_command
 189:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 	graphic_write_command(LCD_SET_PAGE | row, controller);
 868              		.loc 1 189 0
 869 041c 0C23     		movs	r3, #12
 870 041e FB18     		adds	r3, r7, r3
 871 0420 1B78     		ldrb	r3, [r3]
 872 0422 4822     		movs	r2, #72
 873 0424 5242     		rsbs	r2, r2, #0
 874 0426 1343     		orrs	r3, r2
 875 0428 DAB2     		uxtb	r2, r3
 876 042a 0E23     		movs	r3, #14
 877 042c FB18     		adds	r3, r7, r3
 878 042e 1B78     		ldrb	r3, [r3]
 879 0430 1900     		movs	r1, r3
 880 0432 1000     		movs	r0, r2
 881 0434 FFF7FEFF 		bl	graphic_write_command
 190:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 
 191:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 	uint8_c temp = graphic_read_data(controller);
 882              		.loc 1 191 0
 883 0438 0B23     		movs	r3, #11
 884 043a FC18     		adds	r4, r7, r3
 885 043c 0E23     		movs	r3, #14
 886 043e FB18     		adds	r3, r7, r3
 887 0440 1B78     		ldrb	r3, [r3]
 888 0442 1800     		movs	r0, r3
 889 0444 FFF7FEFF 		bl	graphic_read_data
 890 0448 0300     		movs	r3, r0
 891 044a 2370     		strb	r3, [r4]
 192:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 
 193:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 	graphic_write_command(LCD_SET_ADD | column, controller);
 892              		.loc 1 193 0
 893 044c 0D23     		movs	r3, #13
 894 044e FB18     		adds	r3, r7, r3
 895 0450 1B78     		ldrb	r3, [r3]
 896 0452 4022     		movs	r2, #64
 897 0454 1343     		orrs	r3, r2
 898 0456 DAB2     		uxtb	r2, r3
 899 0458 0E23     		movs	r3, #14
 900 045a FB18     		adds	r3, r7, r3
 901 045c 1B78     		ldrb	r3, [r3]
 902 045e 1900     		movs	r1, r3
 903 0460 1000     		movs	r0, r2
 904 0462 FFF7FEFF 		bl	graphic_write_command
 194:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 
 195:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 	if (set)
 905              		.loc 1 195 0
 906 0466 7B1D     		adds	r3, r7, #5
 907 0468 1B78     		ldrb	r3, [r3]
 908 046a 002B     		cmp	r3, #0
 909 046c 0AD0     		beq	.L44
 196:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 		mask = mask | temp;
 910              		.loc 1 196 0
 911 046e 0F23     		movs	r3, #15
 912 0470 FB18     		adds	r3, r7, r3
 913 0472 0F22     		movs	r2, #15
 914 0474 B918     		adds	r1, r7, r2
 915 0476 0B22     		movs	r2, #11
 916 0478 BA18     		adds	r2, r7, r2
 917 047a 0978     		ldrb	r1, [r1]
 918 047c 1278     		ldrb	r2, [r2]
 919 047e 0A43     		orrs	r2, r1
 920 0480 1A70     		strb	r2, [r3]
 921 0482 09E0     		b	.L45
 922              	.L44:
 197:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 	else
 198:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 		mask = mask & temp;
 923              		.loc 1 198 0
 924 0484 0F23     		movs	r3, #15
 925 0486 FB18     		adds	r3, r7, r3
 926 0488 0F22     		movs	r2, #15
 927 048a BA18     		adds	r2, r7, r2
 928 048c 0B21     		movs	r1, #11
 929 048e 7918     		adds	r1, r7, r1
 930 0490 1278     		ldrb	r2, [r2]
 931 0492 0978     		ldrb	r1, [r1]
 932 0494 0A40     		ands	r2, r1
 933 0496 1A70     		strb	r2, [r3]
 934              	.L45:
 199:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 	graphic_write_data(mask, controller);
 935              		.loc 1 199 0
 936 0498 0E23     		movs	r3, #14
 937 049a FB18     		adds	r3, r7, r3
 938 049c 1A78     		ldrb	r2, [r3]
 939 049e 0F23     		movs	r3, #15
 940 04a0 FB18     		adds	r3, r7, r3
 941 04a2 1B78     		ldrb	r3, [r3]
 942 04a4 1100     		movs	r1, r2
 943 04a6 1800     		movs	r0, r3
 944 04a8 FFF7FEFF 		bl	graphic_write_data
 945 04ac 02E0     		b	.L33
 946              	.L46:
 162:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 
 947              		.loc 1 162 0
 948 04ae C046     		nop
 949 04b0 00E0     		b	.L33
 950              	.L47:
 165:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** 
 951              		.loc 1 165 0
 952 04b2 C046     		nop
 953              	.L33:
 200:C:/development/armassembler/code_lite/graphic_display/util\graphicdisplay.c **** }
 954              		.loc 1 200 0
 955 04b4 BD46     		mov	sp, r7
 956 04b6 05B0     		add	sp, sp, #20
 957              		@ sp needed
 958 04b8 90BD     		pop	{r4, r7, pc}
 959              	.L49:
 960 04ba C046     		.align	2
 961              	.L48:
 962 04bc 07000080 		.word	-2147483641
 963              		.cfi_endproc
 964              	.LFE11:
 966              	.Letext0:
 967              		.file 2 "C:/development/armassembler/code_lite/graphic_display/util/types.h"
 968              		.file 3 "C:/development/armassembler/code_lite/graphic_display/util/gpio.h"

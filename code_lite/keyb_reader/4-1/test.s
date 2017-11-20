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
  25              		.file 1 "C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/4-1/startup.c"
   1:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/4-1\startup.c **** /*
   2:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/4-1\startup.c ****  * 	startup.c
   3:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/4-1\startup.c ****  *
   4:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/4-1\startup.c ****  */
   5:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/4-1\startup.c **** 
   6:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/4-1\startup.c **** #include "gpio.h"
   7:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/4-1\startup.c **** #include "types.h"
   8:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/4-1\startup.c **** void startup(void) __attribute__((naked)) __attribute__((section (".start_section")) );
   9:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/4-1\startup.c **** 
  10:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/4-1\startup.c **** void startup ( void )
  11:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/4-1\startup.c **** {
  26              		.loc 1 11 0
  27              		.cfi_startproc
  28              		@ Naked Function: prologue and epilogue provided by programmer.
  29              		@ args = 0, pretend = 0, frame = 0
  30              		@ frame_needed = 1, uses_anonymous_args = 0
  12:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/4-1\startup.c **** __asm volatile(
  31              		.loc 1 12 0
  32              		.syntax divided
  33              	@ 12 "C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/4-1/startup.c" 1
  34 0000 0248     		 LDR R0,=0x2001C000
  35 0002 8546     	 MOV SP,R0
  36 0004 FFF7FEFF 	 BL main
  37 0008 FEE7     	_exit: B .
  38              	
  39              	@ 0 "" 2
  13:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/4-1\startup.c **** 	" LDR R0,=0x2001C000\n"		/* set stack */
  14:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/4-1\startup.c **** 	" MOV SP,R0\n"
  15:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/4-1\startup.c **** 	" BL main\n"				/* call main */
  16:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/4-1\startup.c **** 	"_exit: B .\n"				/* never return */
  17:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/4-1\startup.c **** 	) ;
  18:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/4-1\startup.c **** }
  40              		.loc 1 18 0
  41              		.thumb
  42              		.syntax unified
  43 000a C046     		nop
  44              		.cfi_endproc
  45              	.LFE0:
  47              		.text
  48              		.align	1
  49              		.global	appInit
  50              		.syntax unified
  51              		.code	16
  52              		.thumb_func
  53              		.fpu softvfp
  55              	appInit:
  56              	.LFB1:
  19:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/4-1\startup.c **** void appInit(void) {	
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
  20:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/4-1\startup.c **** 	GPIO_D.MODER &= 0x00000000;
  67              		.loc 1 20 0
  68 0004 0F4B     		ldr	r3, .L3
  69 0006 1B68     		ldr	r3, [r3]
  70 0008 0E4B     		ldr	r3, .L3
  71 000a 0022     		movs	r2, #0
  72 000c 1A60     		str	r2, [r3]
  21:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/4-1\startup.c **** 	GPIO_D.MODER |= 0x55005555;
  73              		.loc 1 21 0
  74 000e 0D4B     		ldr	r3, .L3
  75 0010 0C4A     		ldr	r2, .L3
  76 0012 1268     		ldr	r2, [r2]
  77 0014 0C49     		ldr	r1, .L3+4
  78 0016 0A43     		orrs	r2, r1
  79 0018 1A60     		str	r2, [r3]
  22:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/4-1\startup.c **** 	
  23:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/4-1\startup.c **** 	GPIO_D.OTYPER &= 0x0000;
  80              		.loc 1 23 0
  81 001a 0A4B     		ldr	r3, .L3
  82 001c 9B88     		ldrh	r3, [r3, #4]
  83 001e 094B     		ldr	r3, .L3
  84 0020 0022     		movs	r2, #0
  85 0022 9A80     		strh	r2, [r3, #4]
  24:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/4-1\startup.c **** 
  25:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/4-1\startup.c **** 	GPIO_D.PUPDR &= 0x0000FFFF;
  86              		.loc 1 25 0
  87 0024 074B     		ldr	r3, .L3
  88 0026 074A     		ldr	r2, .L3
  89 0028 D268     		ldr	r2, [r2, #12]
  90 002a 1204     		lsls	r2, r2, #16
  91 002c 120C     		lsrs	r2, r2, #16
  92 002e DA60     		str	r2, [r3, #12]
  26:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/4-1\startup.c **** 	GPIO_D.PUPDR |= 0x00AA0000;
  93              		.loc 1 26 0
  94 0030 044B     		ldr	r3, .L3
  95 0032 044A     		ldr	r2, .L3
  96 0034 D268     		ldr	r2, [r2, #12]
  97 0036 AA21     		movs	r1, #170
  98 0038 0904     		lsls	r1, r1, #16
  99 003a 0A43     		orrs	r2, r1
 100 003c DA60     		str	r2, [r3, #12]
  27:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/4-1\startup.c **** }
 101              		.loc 1 27 0
 102 003e C046     		nop
 103 0040 BD46     		mov	sp, r7
 104              		@ sp needed
 105 0042 80BD     		pop	{r7, pc}
 106              	.L4:
 107              		.align	2
 108              	.L3:
 109 0044 000C0240 		.word	1073875968
 110 0048 55550055 		.word	1426085205
 111              		.cfi_endproc
 112              	.LFE1:
 114              		.align	1
 115              		.global	activateRow
 116              		.syntax unified
 117              		.code	16
 118              		.thumb_func
 119              		.fpu softvfp
 121              	activateRow:
 122              	.LFB2:
  28:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/4-1\startup.c **** 
  29:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/4-1\startup.c **** // x: index of row
  30:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/4-1\startup.c **** void activateRow(uint8 x) {
 123              		.loc 1 30 0
 124              		.cfi_startproc
 125              		@ args = 0, pretend = 0, frame = 8
 126              		@ frame_needed = 1, uses_anonymous_args = 0
 127 004c 80B5     		push	{r7, lr}
 128              		.cfi_def_cfa_offset 8
 129              		.cfi_offset 7, -8
 130              		.cfi_offset 14, -4
 131 004e 82B0     		sub	sp, sp, #8
 132              		.cfi_def_cfa_offset 16
 133 0050 00AF     		add	r7, sp, #0
 134              		.cfi_def_cfa_register 7
 135 0052 0200     		movs	r2, r0
 136 0054 FB1D     		adds	r3, r7, #7
 137 0056 1A70     		strb	r2, [r3]
  31:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/4-1\startup.c **** 	GPIO_D.ODR &= 0x0000FFFF;
 138              		.loc 1 31 0
 139 0058 0C4B     		ldr	r3, .L6
 140 005a 0C4A     		ldr	r2, .L6
 141 005c 928A     		ldrh	r2, [r2, #20]
 142 005e 92B2     		uxth	r2, r2
 143 0060 9A82     		strh	r2, [r3, #20]
  32:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/4-1\startup.c **** 	GPIO_D.ODR |= (0x1 << (12 + x));
 144              		.loc 1 32 0
 145 0062 0A49     		ldr	r1, .L6
 146 0064 094B     		ldr	r3, .L6
 147 0066 9B8A     		ldrh	r3, [r3, #20]
 148 0068 9BB2     		uxth	r3, r3
 149 006a 1AB2     		sxth	r2, r3
 150 006c FB1D     		adds	r3, r7, #7
 151 006e 1B78     		ldrb	r3, [r3]
 152 0070 0C33     		adds	r3, r3, #12
 153 0072 0120     		movs	r0, #1
 154 0074 9840     		lsls	r0, r0, r3
 155 0076 0300     		movs	r3, r0
 156 0078 1BB2     		sxth	r3, r3
 157 007a 1343     		orrs	r3, r2
 158 007c 1BB2     		sxth	r3, r3
 159 007e 9BB2     		uxth	r3, r3
 160 0080 8B82     		strh	r3, [r1, #20]
  33:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/4-1\startup.c **** }
 161              		.loc 1 33 0
 162 0082 C046     		nop
 163 0084 BD46     		mov	sp, r7
 164 0086 02B0     		add	sp, sp, #8
 165              		@ sp needed
 166 0088 80BD     		pop	{r7, pc}
 167              	.L7:
 168 008a C046     		.align	2
 169              	.L6:
 170 008c 000C0240 		.word	1073875968
 171              		.cfi_endproc
 172              	.LFE2:
 174              		.align	1
 175              		.global	readColumns
 176              		.syntax unified
 177              		.code	16
 178              		.thumb_func
 179              		.fpu softvfp
 181              	readColumns:
 182              	.LFB3:
  34:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/4-1\startup.c **** uint8 readColumns() {
 183              		.loc 1 34 0
 184              		.cfi_startproc
 185              		@ args = 0, pretend = 0, frame = 0
 186              		@ frame_needed = 1, uses_anonymous_args = 0
 187 0090 80B5     		push	{r7, lr}
 188              		.cfi_def_cfa_offset 8
 189              		.cfi_offset 7, -8
 190              		.cfi_offset 14, -4
 191 0092 00AF     		add	r7, sp, #0
 192              		.cfi_def_cfa_register 7
  35:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/4-1\startup.c **** 	return GPIO_D.IDR >> 8;
 193              		.loc 1 35 0
 194 0094 044B     		ldr	r3, .L10
 195 0096 1B8A     		ldrh	r3, [r3, #16]
 196 0098 9BB2     		uxth	r3, r3
 197 009a 1B0A     		lsrs	r3, r3, #8
 198 009c 9BB2     		uxth	r3, r3
 199 009e DBB2     		uxtb	r3, r3
  36:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/4-1\startup.c **** }
 200              		.loc 1 36 0
 201 00a0 1800     		movs	r0, r3
 202 00a2 BD46     		mov	sp, r7
 203              		@ sp needed
 204 00a4 80BD     		pop	{r7, pc}
 205              	.L11:
 206 00a6 C046     		.align	2
 207              	.L10:
 208 00a8 000C0240 		.word	1073875968
 209              		.cfi_endproc
 210              	.LFE3:
 212              		.align	1
 213              		.global	keyb
 214              		.syntax unified
 215              		.code	16
 216              		.thumb_func
 217              		.fpu softvfp
 219              	keyb:
 220              	.LFB4:
  37:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/4-1\startup.c **** unsigned char keyb( void ) {
 221              		.loc 1 37 0
 222              		.cfi_startproc
 223              		@ args = 0, pretend = 0, frame = 8
 224              		@ frame_needed = 1, uses_anonymous_args = 0
 225 00ac 90B5     		push	{r4, r7, lr}
 226              		.cfi_def_cfa_offset 12
 227              		.cfi_offset 4, -12
 228              		.cfi_offset 7, -8
 229              		.cfi_offset 14, -4
 230 00ae 83B0     		sub	sp, sp, #12
 231              		.cfi_def_cfa_offset 24
 232 00b0 00AF     		add	r7, sp, #0
 233              		.cfi_def_cfa_register 7
  38:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/4-1\startup.c **** 	uint8 activeKey = 0xFF;
 234              		.loc 1 38 0
 235 00b2 3B1D     		adds	r3, r7, #4
 236 00b4 FF22     		movs	r2, #255
 237 00b6 1A70     		strb	r2, [r3]
 238              	.LBB2:
  39:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/4-1\startup.c **** 	for (uint8 row = 0; row < 4; row++) {
 239              		.loc 1 39 0
 240 00b8 FB1D     		adds	r3, r7, #7
 241 00ba 0022     		movs	r2, #0
 242 00bc 1A70     		strb	r2, [r3]
 243 00be 36E0     		b	.L13
 244              	.L18:
 245              	.LBB3:
  40:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/4-1\startup.c **** 		activateRow(row);
 246              		.loc 1 40 0
 247 00c0 FB1D     		adds	r3, r7, #7
 248 00c2 1B78     		ldrb	r3, [r3]
 249 00c4 1800     		movs	r0, r3
 250 00c6 FFF7FEFF 		bl	activateRow
  41:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/4-1\startup.c **** 		uint8 columnValue = readColumns();
 251              		.loc 1 41 0
 252 00ca BC1D     		adds	r4, r7, #6
 253 00cc FFF7FEFF 		bl	readColumns
 254 00d0 0300     		movs	r3, r0
 255 00d2 2370     		strb	r3, [r4]
 256              	.LBB4:
  42:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/4-1\startup.c **** 		
  43:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/4-1\startup.c **** 		for (uint8 column = 0; column < 4; column++) {
 257              		.loc 1 43 0
 258 00d4 7B1D     		adds	r3, r7, #5
 259 00d6 0022     		movs	r2, #0
 260 00d8 1A70     		strb	r2, [r3]
 261 00da 1FE0     		b	.L14
 262              	.L17:
 263              	.LBB5:
  44:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/4-1\startup.c **** 			uint8 activeColumn = (columnValue & 0x1);
 264              		.loc 1 44 0
 265 00dc FB1C     		adds	r3, r7, #3
 266 00de BA1D     		adds	r2, r7, #6
 267 00e0 1278     		ldrb	r2, [r2]
 268 00e2 0121     		movs	r1, #1
 269 00e4 0A40     		ands	r2, r1
 270 00e6 1A70     		strb	r2, [r3]
  45:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/4-1\startup.c **** 			if (activeColumn) {
 271              		.loc 1 45 0
 272 00e8 FB1C     		adds	r3, r7, #3
 273 00ea 1B78     		ldrb	r3, [r3]
 274 00ec 002B     		cmp	r3, #0
 275 00ee 0BD0     		beq	.L15
  46:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/4-1\startup.c **** 				activeKey = row * 4 + column;
 276              		.loc 1 46 0
 277 00f0 FB1D     		adds	r3, r7, #7
 278 00f2 1B78     		ldrb	r3, [r3]
 279 00f4 9B00     		lsls	r3, r3, #2
 280 00f6 D9B2     		uxtb	r1, r3
 281 00f8 3B1D     		adds	r3, r7, #4
 282 00fa 7A1D     		adds	r2, r7, #5
 283 00fc 1278     		ldrb	r2, [r2]
 284 00fe 8A18     		adds	r2, r1, r2
 285 0100 1A70     		strb	r2, [r3]
  47:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/4-1\startup.c **** 				return activeKey;
 286              		.loc 1 47 0
 287 0102 3B1D     		adds	r3, r7, #4
 288 0104 1B78     		ldrb	r3, [r3]
 289 0106 18E0     		b	.L16
 290              	.L15:
  48:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/4-1\startup.c **** 			}
  49:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/4-1\startup.c **** 			columnValue >>= 0x1;
 291              		.loc 1 49 0 discriminator 2
 292 0108 BB1D     		adds	r3, r7, #6
 293 010a BA1D     		adds	r2, r7, #6
 294 010c 1278     		ldrb	r2, [r2]
 295 010e 5208     		lsrs	r2, r2, #1
 296 0110 1A70     		strb	r2, [r3]
 297              	.LBE5:
  43:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/4-1\startup.c **** 			uint8 activeColumn = (columnValue & 0x1);
 298              		.loc 1 43 0 discriminator 2
 299 0112 7B1D     		adds	r3, r7, #5
 300 0114 1A78     		ldrb	r2, [r3]
 301 0116 7B1D     		adds	r3, r7, #5
 302 0118 0132     		adds	r2, r2, #1
 303 011a 1A70     		strb	r2, [r3]
 304              	.L14:
  43:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/4-1\startup.c **** 			uint8 activeColumn = (columnValue & 0x1);
 305              		.loc 1 43 0 is_stmt 0 discriminator 1
 306 011c 7B1D     		adds	r3, r7, #5
 307 011e 1B78     		ldrb	r3, [r3]
 308 0120 032B     		cmp	r3, #3
 309 0122 DBD9     		bls	.L17
 310              	.LBE4:
 311              	.LBE3:
  39:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/4-1\startup.c **** 		activateRow(row);
 312              		.loc 1 39 0 is_stmt 1 discriminator 2
 313 0124 FB1D     		adds	r3, r7, #7
 314 0126 1A78     		ldrb	r2, [r3]
 315 0128 FB1D     		adds	r3, r7, #7
 316 012a 0132     		adds	r2, r2, #1
 317 012c 1A70     		strb	r2, [r3]
 318              	.L13:
  39:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/4-1\startup.c **** 		activateRow(row);
 319              		.loc 1 39 0 is_stmt 0 discriminator 1
 320 012e FB1D     		adds	r3, r7, #7
 321 0130 1B78     		ldrb	r3, [r3]
 322 0132 032B     		cmp	r3, #3
 323 0134 C4D9     		bls	.L18
 324              	.LBE2:
  50:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/4-1\startup.c **** 		}
  51:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/4-1\startup.c **** 	}
  52:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/4-1\startup.c **** 	return activeKey;
 325              		.loc 1 52 0 is_stmt 1
 326 0136 3B1D     		adds	r3, r7, #4
 327 0138 1B78     		ldrb	r3, [r3]
 328              	.L16:
  53:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/4-1\startup.c **** }
 329              		.loc 1 53 0
 330 013a 1800     		movs	r0, r3
 331 013c BD46     		mov	sp, r7
 332 013e 03B0     		add	sp, sp, #12
 333              		@ sp needed
 334 0140 90BD     		pop	{r4, r7, pc}
 335              		.cfi_endproc
 336              	.LFE4:
 338              		.align	1
 339              		.global	out7seg
 340              		.syntax unified
 341              		.code	16
 342              		.thumb_func
 343              		.fpu softvfp
 345              	out7seg:
 346              	.LFB5:
  54:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/4-1\startup.c **** 
  55:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/4-1\startup.c **** void out7seg(unsigned char keyValue) {
 347              		.loc 1 55 0
 348              		.cfi_startproc
 349              		@ args = 0, pretend = 0, frame = 8
 350              		@ frame_needed = 1, uses_anonymous_args = 0
 351 0142 80B5     		push	{r7, lr}
 352              		.cfi_def_cfa_offset 8
 353              		.cfi_offset 7, -8
 354              		.cfi_offset 14, -4
 355 0144 82B0     		sub	sp, sp, #8
 356              		.cfi_def_cfa_offset 16
 357 0146 00AF     		add	r7, sp, #0
 358              		.cfi_def_cfa_register 7
 359 0148 0200     		movs	r2, r0
 360 014a FB1D     		adds	r3, r7, #7
 361 014c 1A70     		strb	r2, [r3]
  56:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/4-1\startup.c **** 	static uint8_c sevenSegmentCodes[] = {
  57:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/4-1\startup.c **** 		0x06, 0x5B, 0x4F, 0x77,
  58:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/4-1\startup.c **** 		0x66, 0x6D, 0x7D, 0x7C,
  59:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/4-1\startup.c **** 		0x07, 0x7F, 0x67, 0x39,
  60:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/4-1\startup.c **** 		0x79, 0x3F, 0x71, 0x5E
  61:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/4-1\startup.c **** 	};
  62:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/4-1\startup.c **** 	
  63:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/4-1\startup.c **** 	if (keyValue < 16 && keyValue >= 0) {
 362              		.loc 1 63 0
 363 014e FB1D     		adds	r3, r7, #7
 364 0150 1B78     		ldrb	r3, [r3]
 365 0152 0F2B     		cmp	r3, #15
 366 0154 07D8     		bhi	.L20
  64:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/4-1\startup.c **** 		GPIO_D.ODR = sevenSegmentCodes[keyValue];
 367              		.loc 1 64 0
 368 0156 0749     		ldr	r1, .L23
 369 0158 FB1D     		adds	r3, r7, #7
 370 015a 1B78     		ldrb	r3, [r3]
 371 015c 064A     		ldr	r2, .L23+4
 372 015e D35C     		ldrb	r3, [r2, r3]
 373 0160 9BB2     		uxth	r3, r3
 374 0162 8B82     		strh	r3, [r1, #20]
  65:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/4-1\startup.c **** 	} else {
  66:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/4-1\startup.c **** 		GPIO_D.ODR = 0x00;
  67:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/4-1\startup.c **** 	}
  68:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/4-1\startup.c **** }
 375              		.loc 1 68 0
 376 0164 02E0     		b	.L22
 377              	.L20:
  66:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/4-1\startup.c **** 	}
 378              		.loc 1 66 0
 379 0166 034B     		ldr	r3, .L23
 380 0168 0022     		movs	r2, #0
 381 016a 9A82     		strh	r2, [r3, #20]
 382              	.L22:
 383              		.loc 1 68 0
 384 016c C046     		nop
 385 016e BD46     		mov	sp, r7
 386 0170 02B0     		add	sp, sp, #8
 387              		@ sp needed
 388 0172 80BD     		pop	{r7, pc}
 389              	.L24:
 390              		.align	2
 391              	.L23:
 392 0174 000C0240 		.word	1073875968
 393 0178 00000000 		.word	sevenSegmentCodes.4040
 394              		.cfi_endproc
 395              	.LFE5:
 397              		.align	1
 398              		.global	main
 399              		.syntax unified
 400              		.code	16
 401              		.thumb_func
 402              		.fpu softvfp
 404              	main:
 405              	.LFB6:
  69:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/4-1\startup.c **** 
  70:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/4-1\startup.c **** void main(void)
  71:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/4-1\startup.c **** {
 406              		.loc 1 71 0
 407              		.cfi_startproc
 408              		@ args = 0, pretend = 0, frame = 0
 409              		@ frame_needed = 1, uses_anonymous_args = 0
 410 017c 80B5     		push	{r7, lr}
 411              		.cfi_def_cfa_offset 8
 412              		.cfi_offset 7, -8
 413              		.cfi_offset 14, -4
 414 017e 00AF     		add	r7, sp, #0
 415              		.cfi_def_cfa_register 7
  72:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/4-1\startup.c **** 	appInit();
 416              		.loc 1 72 0
 417 0180 FFF7FEFF 		bl	appInit
 418              	.L26:
  73:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/4-1\startup.c **** 	while (1) {
  74:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/4-1\startup.c **** 		out7seg(keyb());
 419              		.loc 1 74 0 discriminator 1
 420 0184 FFF7FEFF 		bl	keyb
 421 0188 0300     		movs	r3, r0
 422 018a 1800     		movs	r0, r3
 423 018c FFF7FEFF 		bl	out7seg
 424 0190 F8E7     		b	.L26
 425              		.cfi_endproc
 426              	.LFE6:
 428              		.section	.rodata
 429              		.align	2
 432              	sevenSegmentCodes.4040:
 433 0000 06       		.byte	6
 434 0001 5B       		.byte	91
 435 0002 4F       		.byte	79
 436 0003 77       		.byte	119
 437 0004 66       		.byte	102
 438 0005 6D       		.byte	109
 439 0006 7D       		.byte	125
 440 0007 7C       		.byte	124
 441 0008 07       		.byte	7
 442 0009 7F       		.byte	127
 443 000a 67       		.byte	103
 444 000b 39       		.byte	57
 445 000c 79       		.byte	121
 446 000d 3F       		.byte	63
 447 000e 71       		.byte	113
 448 000f 5E       		.byte	94
 449              		.text
 450              	.Letext0:
 451              		.file 2 "C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/4-1/types.h"
 452              		.file 3 "C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/4-1/gpio.h"

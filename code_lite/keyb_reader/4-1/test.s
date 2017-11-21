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
  25              		.file 1 "C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/4-1/startup.c"
   1:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/4-1\startup.c **** /*
   2:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/4-1\startup.c ****  * 	startup.c
   3:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/4-1\startup.c ****  *
   4:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/4-1\startup.c ****  */
   5:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/4-1\startup.c **** 
   6:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/4-1\startup.c **** #include "gpio.h"
   7:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/4-1\startup.c **** #include "types.h"
   8:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/4-1\startup.c **** void startup(void) __attribute__((naked)) __attribute__((section (".start_section")) );
   9:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/4-1\startup.c **** 
  10:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/4-1\startup.c **** void startup ( void )
  11:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/4-1\startup.c **** {
  26              		.loc 1 11 0
  27              		.cfi_startproc
  28              		@ Naked Function: prologue and epilogue provided by programmer.
  29              		@ args = 0, pretend = 0, frame = 0
  30              		@ frame_needed = 1, uses_anonymous_args = 0
  12:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/4-1\startup.c **** __asm volatile(
  31              		.loc 1 12 0
  32              		.syntax divided
  33              	@ 12 "C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/4-1/startup.c" 1
  34 0000 0248     		 LDR R0,=0x2001C000
  35 0002 8546     	 MOV SP,R0
  36 0004 FFF7FEFF 	 BL main
  37 0008 FEE7     	_exit: B .
  38              	
  39              	@ 0 "" 2
  13:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/4-1\startup.c **** 	" LDR R0,=0x2001C000\n"		/* set stack */
  14:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/4-1\startup.c **** 	" MOV SP,R0\n"
  15:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/4-1\startup.c **** 	" BL main\n"				/* call main */
  16:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/4-1\startup.c **** 	"_exit: B .\n"				/* never return */
  17:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/4-1\startup.c **** 	) ;
  18:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/4-1\startup.c **** }
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
  19:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/4-1\startup.c **** void appInit(void) {
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
  20:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/4-1\startup.c **** 	#ifdef USBDM
  21:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/4-1\startup.c **** 	* ((unsigned long *) 0x40023830) = 0x18;
  67              		.loc 1 21 0
  68 0004 114B     		ldr	r3, .L3
  69 0006 1822     		movs	r2, #24
  70 0008 1A60     		str	r2, [r3]
  22:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/4-1\startup.c **** 	#endif
  23:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/4-1\startup.c **** 	GPIO_D.MODER &= 0x00000000;
  71              		.loc 1 23 0
  72 000a 114B     		ldr	r3, .L3+4
  73 000c 1B68     		ldr	r3, [r3]
  74 000e 104B     		ldr	r3, .L3+4
  75 0010 0022     		movs	r2, #0
  76 0012 1A60     		str	r2, [r3]
  24:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/4-1\startup.c **** 	GPIO_D.MODER |= 0x55005555;
  77              		.loc 1 24 0
  78 0014 0E4B     		ldr	r3, .L3+4
  79 0016 0E4A     		ldr	r2, .L3+4
  80 0018 1268     		ldr	r2, [r2]
  81 001a 0E49     		ldr	r1, .L3+8
  82 001c 0A43     		orrs	r2, r1
  83 001e 1A60     		str	r2, [r3]
  25:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/4-1\startup.c **** 	
  26:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/4-1\startup.c **** 	GPIO_D.OTYPER &= 0x0000;
  84              		.loc 1 26 0
  85 0020 0B4B     		ldr	r3, .L3+4
  86 0022 9B88     		ldrh	r3, [r3, #4]
  87 0024 0A4B     		ldr	r3, .L3+4
  88 0026 0022     		movs	r2, #0
  89 0028 9A80     		strh	r2, [r3, #4]
  27:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/4-1\startup.c **** 
  28:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/4-1\startup.c **** 	GPIO_D.PUPDR &= 0x0000FFFF;
  90              		.loc 1 28 0
  91 002a 094B     		ldr	r3, .L3+4
  92 002c 084A     		ldr	r2, .L3+4
  93 002e D268     		ldr	r2, [r2, #12]
  94 0030 1204     		lsls	r2, r2, #16
  95 0032 120C     		lsrs	r2, r2, #16
  96 0034 DA60     		str	r2, [r3, #12]
  29:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/4-1\startup.c **** 	GPIO_D.PUPDR |= 0x00AA0000;
  97              		.loc 1 29 0
  98 0036 064B     		ldr	r3, .L3+4
  99 0038 054A     		ldr	r2, .L3+4
 100 003a D268     		ldr	r2, [r2, #12]
 101 003c AA21     		movs	r1, #170
 102 003e 0904     		lsls	r1, r1, #16
 103 0040 0A43     		orrs	r2, r1
 104 0042 DA60     		str	r2, [r3, #12]
  30:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/4-1\startup.c **** }
 105              		.loc 1 30 0
 106 0044 C046     		nop
 107 0046 BD46     		mov	sp, r7
 108              		@ sp needed
 109 0048 80BD     		pop	{r7, pc}
 110              	.L4:
 111 004a C046     		.align	2
 112              	.L3:
 113 004c 30380240 		.word	1073887280
 114 0050 000C0240 		.word	1073875968
 115 0054 55550055 		.word	1426085205
 116              		.cfi_endproc
 117              	.LFE1:
 119              		.align	1
 120              		.global	activateRow
 121              		.syntax unified
 122              		.code	16
 123              		.thumb_func
 124              		.fpu softvfp
 126              	activateRow:
 127              	.LFB2:
  31:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/4-1\startup.c **** 
  32:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/4-1\startup.c **** // x: index of row
  33:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/4-1\startup.c **** void activateRow(uint8 x) {
 128              		.loc 1 33 0
 129              		.cfi_startproc
 130              		@ args = 0, pretend = 0, frame = 8
 131              		@ frame_needed = 1, uses_anonymous_args = 0
 132 0058 80B5     		push	{r7, lr}
 133              		.cfi_def_cfa_offset 8
 134              		.cfi_offset 7, -8
 135              		.cfi_offset 14, -4
 136 005a 82B0     		sub	sp, sp, #8
 137              		.cfi_def_cfa_offset 16
 138 005c 00AF     		add	r7, sp, #0
 139              		.cfi_def_cfa_register 7
 140 005e 0200     		movs	r2, r0
 141 0060 FB1D     		adds	r3, r7, #7
 142 0062 1A70     		strb	r2, [r3]
  34:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/4-1\startup.c **** 	GPIO_D.ODR &= 0x0000FFFF;
 143              		.loc 1 34 0
 144 0064 0C4B     		ldr	r3, .L6
 145 0066 0C4A     		ldr	r2, .L6
 146 0068 928A     		ldrh	r2, [r2, #20]
 147 006a 92B2     		uxth	r2, r2
 148 006c 9A82     		strh	r2, [r3, #20]
  35:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/4-1\startup.c **** 	GPIO_D.ODR |= (0x1 << (12 + x));
 149              		.loc 1 35 0
 150 006e 0A49     		ldr	r1, .L6
 151 0070 094B     		ldr	r3, .L6
 152 0072 9B8A     		ldrh	r3, [r3, #20]
 153 0074 9BB2     		uxth	r3, r3
 154 0076 1AB2     		sxth	r2, r3
 155 0078 FB1D     		adds	r3, r7, #7
 156 007a 1B78     		ldrb	r3, [r3]
 157 007c 0C33     		adds	r3, r3, #12
 158 007e 0120     		movs	r0, #1
 159 0080 9840     		lsls	r0, r0, r3
 160 0082 0300     		movs	r3, r0
 161 0084 1BB2     		sxth	r3, r3
 162 0086 1343     		orrs	r3, r2
 163 0088 1BB2     		sxth	r3, r3
 164 008a 9BB2     		uxth	r3, r3
 165 008c 8B82     		strh	r3, [r1, #20]
  36:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/4-1\startup.c **** }
 166              		.loc 1 36 0
 167 008e C046     		nop
 168 0090 BD46     		mov	sp, r7
 169 0092 02B0     		add	sp, sp, #8
 170              		@ sp needed
 171 0094 80BD     		pop	{r7, pc}
 172              	.L7:
 173 0096 C046     		.align	2
 174              	.L6:
 175 0098 000C0240 		.word	1073875968
 176              		.cfi_endproc
 177              	.LFE2:
 179              		.align	1
 180              		.global	readColumns
 181              		.syntax unified
 182              		.code	16
 183              		.thumb_func
 184              		.fpu softvfp
 186              	readColumns:
 187              	.LFB3:
  37:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/4-1\startup.c **** uint8 readColumns() {
 188              		.loc 1 37 0
 189              		.cfi_startproc
 190              		@ args = 0, pretend = 0, frame = 0
 191              		@ frame_needed = 1, uses_anonymous_args = 0
 192 009c 80B5     		push	{r7, lr}
 193              		.cfi_def_cfa_offset 8
 194              		.cfi_offset 7, -8
 195              		.cfi_offset 14, -4
 196 009e 00AF     		add	r7, sp, #0
 197              		.cfi_def_cfa_register 7
  38:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/4-1\startup.c **** 	return GPIO_D.IDR >> 8;
 198              		.loc 1 38 0
 199 00a0 044B     		ldr	r3, .L10
 200 00a2 1B8A     		ldrh	r3, [r3, #16]
 201 00a4 9BB2     		uxth	r3, r3
 202 00a6 1B0A     		lsrs	r3, r3, #8
 203 00a8 9BB2     		uxth	r3, r3
 204 00aa DBB2     		uxtb	r3, r3
  39:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/4-1\startup.c **** }
 205              		.loc 1 39 0
 206 00ac 1800     		movs	r0, r3
 207 00ae BD46     		mov	sp, r7
 208              		@ sp needed
 209 00b0 80BD     		pop	{r7, pc}
 210              	.L11:
 211 00b2 C046     		.align	2
 212              	.L10:
 213 00b4 000C0240 		.word	1073875968
 214              		.cfi_endproc
 215              	.LFE3:
 217              		.align	1
 218              		.global	keyb
 219              		.syntax unified
 220              		.code	16
 221              		.thumb_func
 222              		.fpu softvfp
 224              	keyb:
 225              	.LFB4:
  40:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/4-1\startup.c **** unsigned char keyb( void ) {
 226              		.loc 1 40 0
 227              		.cfi_startproc
 228              		@ args = 0, pretend = 0, frame = 8
 229              		@ frame_needed = 1, uses_anonymous_args = 0
 230 00b8 90B5     		push	{r4, r7, lr}
 231              		.cfi_def_cfa_offset 12
 232              		.cfi_offset 4, -12
 233              		.cfi_offset 7, -8
 234              		.cfi_offset 14, -4
 235 00ba 83B0     		sub	sp, sp, #12
 236              		.cfi_def_cfa_offset 24
 237 00bc 00AF     		add	r7, sp, #0
 238              		.cfi_def_cfa_register 7
  41:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/4-1\startup.c **** 	uint8 activeKey = 0xFF;
 239              		.loc 1 41 0
 240 00be 3B1D     		adds	r3, r7, #4
 241 00c0 FF22     		movs	r2, #255
 242 00c2 1A70     		strb	r2, [r3]
 243              	.LBB2:
  42:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/4-1\startup.c **** 	for (uint8 row = 0; row < 4; row++) {
 244              		.loc 1 42 0
 245 00c4 FB1D     		adds	r3, r7, #7
 246 00c6 0022     		movs	r2, #0
 247 00c8 1A70     		strb	r2, [r3]
 248 00ca 36E0     		b	.L13
 249              	.L18:
 250              	.LBB3:
  43:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/4-1\startup.c **** 		activateRow(row);
 251              		.loc 1 43 0
 252 00cc FB1D     		adds	r3, r7, #7
 253 00ce 1B78     		ldrb	r3, [r3]
 254 00d0 1800     		movs	r0, r3
 255 00d2 FFF7FEFF 		bl	activateRow
  44:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/4-1\startup.c **** 		uint8 columnValue = readColumns();
 256              		.loc 1 44 0
 257 00d6 BC1D     		adds	r4, r7, #6
 258 00d8 FFF7FEFF 		bl	readColumns
 259 00dc 0300     		movs	r3, r0
 260 00de 2370     		strb	r3, [r4]
 261              	.LBB4:
  45:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/4-1\startup.c **** 		
  46:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/4-1\startup.c **** 		for (uint8 column = 0; column < 4; column++) {
 262              		.loc 1 46 0
 263 00e0 7B1D     		adds	r3, r7, #5
 264 00e2 0022     		movs	r2, #0
 265 00e4 1A70     		strb	r2, [r3]
 266 00e6 1FE0     		b	.L14
 267              	.L17:
 268              	.LBB5:
  47:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/4-1\startup.c **** 			uint8 activeColumn = (columnValue & 0x1);
 269              		.loc 1 47 0
 270 00e8 FB1C     		adds	r3, r7, #3
 271 00ea BA1D     		adds	r2, r7, #6
 272 00ec 1278     		ldrb	r2, [r2]
 273 00ee 0121     		movs	r1, #1
 274 00f0 0A40     		ands	r2, r1
 275 00f2 1A70     		strb	r2, [r3]
  48:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/4-1\startup.c **** 			if (activeColumn) {
 276              		.loc 1 48 0
 277 00f4 FB1C     		adds	r3, r7, #3
 278 00f6 1B78     		ldrb	r3, [r3]
 279 00f8 002B     		cmp	r3, #0
 280 00fa 0BD0     		beq	.L15
  49:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/4-1\startup.c **** 				activeKey = row * 4 + column;
 281              		.loc 1 49 0
 282 00fc FB1D     		adds	r3, r7, #7
 283 00fe 1B78     		ldrb	r3, [r3]
 284 0100 9B00     		lsls	r3, r3, #2
 285 0102 D9B2     		uxtb	r1, r3
 286 0104 3B1D     		adds	r3, r7, #4
 287 0106 7A1D     		adds	r2, r7, #5
 288 0108 1278     		ldrb	r2, [r2]
 289 010a 8A18     		adds	r2, r1, r2
 290 010c 1A70     		strb	r2, [r3]
  50:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/4-1\startup.c **** 				return activeKey;
 291              		.loc 1 50 0
 292 010e 3B1D     		adds	r3, r7, #4
 293 0110 1B78     		ldrb	r3, [r3]
 294 0112 18E0     		b	.L16
 295              	.L15:
  51:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/4-1\startup.c **** 			}
  52:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/4-1\startup.c **** 			columnValue >>= 0x1;
 296              		.loc 1 52 0 discriminator 2
 297 0114 BB1D     		adds	r3, r7, #6
 298 0116 BA1D     		adds	r2, r7, #6
 299 0118 1278     		ldrb	r2, [r2]
 300 011a 5208     		lsrs	r2, r2, #1
 301 011c 1A70     		strb	r2, [r3]
 302              	.LBE5:
  46:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/4-1\startup.c **** 			uint8 activeColumn = (columnValue & 0x1);
 303              		.loc 1 46 0 discriminator 2
 304 011e 7B1D     		adds	r3, r7, #5
 305 0120 1A78     		ldrb	r2, [r3]
 306 0122 7B1D     		adds	r3, r7, #5
 307 0124 0132     		adds	r2, r2, #1
 308 0126 1A70     		strb	r2, [r3]
 309              	.L14:
  46:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/4-1\startup.c **** 			uint8 activeColumn = (columnValue & 0x1);
 310              		.loc 1 46 0 is_stmt 0 discriminator 1
 311 0128 7B1D     		adds	r3, r7, #5
 312 012a 1B78     		ldrb	r3, [r3]
 313 012c 032B     		cmp	r3, #3
 314 012e DBD9     		bls	.L17
 315              	.LBE4:
 316              	.LBE3:
  42:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/4-1\startup.c **** 		activateRow(row);
 317              		.loc 1 42 0 is_stmt 1 discriminator 2
 318 0130 FB1D     		adds	r3, r7, #7
 319 0132 1A78     		ldrb	r2, [r3]
 320 0134 FB1D     		adds	r3, r7, #7
 321 0136 0132     		adds	r2, r2, #1
 322 0138 1A70     		strb	r2, [r3]
 323              	.L13:
  42:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/4-1\startup.c **** 		activateRow(row);
 324              		.loc 1 42 0 is_stmt 0 discriminator 1
 325 013a FB1D     		adds	r3, r7, #7
 326 013c 1B78     		ldrb	r3, [r3]
 327 013e 032B     		cmp	r3, #3
 328 0140 C4D9     		bls	.L18
 329              	.LBE2:
  53:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/4-1\startup.c **** 		}
  54:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/4-1\startup.c **** 	}
  55:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/4-1\startup.c **** 	return activeKey;
 330              		.loc 1 55 0 is_stmt 1
 331 0142 3B1D     		adds	r3, r7, #4
 332 0144 1B78     		ldrb	r3, [r3]
 333              	.L16:
  56:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/4-1\startup.c **** }
 334              		.loc 1 56 0
 335 0146 1800     		movs	r0, r3
 336 0148 BD46     		mov	sp, r7
 337 014a 03B0     		add	sp, sp, #12
 338              		@ sp needed
 339 014c 90BD     		pop	{r4, r7, pc}
 340              		.cfi_endproc
 341              	.LFE4:
 343              		.align	1
 344              		.global	out7seg
 345              		.syntax unified
 346              		.code	16
 347              		.thumb_func
 348              		.fpu softvfp
 350              	out7seg:
 351              	.LFB5:
  57:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/4-1\startup.c **** 
  58:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/4-1\startup.c **** void out7seg(unsigned char keyValue) {
 352              		.loc 1 58 0
 353              		.cfi_startproc
 354              		@ args = 0, pretend = 0, frame = 8
 355              		@ frame_needed = 1, uses_anonymous_args = 0
 356 014e 80B5     		push	{r7, lr}
 357              		.cfi_def_cfa_offset 8
 358              		.cfi_offset 7, -8
 359              		.cfi_offset 14, -4
 360 0150 82B0     		sub	sp, sp, #8
 361              		.cfi_def_cfa_offset 16
 362 0152 00AF     		add	r7, sp, #0
 363              		.cfi_def_cfa_register 7
 364 0154 0200     		movs	r2, r0
 365 0156 FB1D     		adds	r3, r7, #7
 366 0158 1A70     		strb	r2, [r3]
  59:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/4-1\startup.c **** 	static uint8_c sevenSegmentCodes[] = {
  60:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/4-1\startup.c **** 		0x06, 0x5B, 0x4F, 0x77,
  61:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/4-1\startup.c **** 		0x66, 0x6D, 0x7D, 0x7C,
  62:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/4-1\startup.c **** 		0x07, 0x7F, 0x67, 0x39,
  63:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/4-1\startup.c **** 		0x79, 0x3F, 0x71, 0x5E
  64:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/4-1\startup.c **** 	};
  65:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/4-1\startup.c **** 	
  66:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/4-1\startup.c **** 	if (keyValue < 16 && keyValue >= 0) {
 367              		.loc 1 66 0
 368 015a FB1D     		adds	r3, r7, #7
 369 015c 1B78     		ldrb	r3, [r3]
 370 015e 0F2B     		cmp	r3, #15
 371 0160 07D8     		bhi	.L20
  67:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/4-1\startup.c **** 		GPIO_D.ODR = sevenSegmentCodes[keyValue];
 372              		.loc 1 67 0
 373 0162 0749     		ldr	r1, .L23
 374 0164 FB1D     		adds	r3, r7, #7
 375 0166 1B78     		ldrb	r3, [r3]
 376 0168 064A     		ldr	r2, .L23+4
 377 016a D35C     		ldrb	r3, [r2, r3]
 378 016c 9BB2     		uxth	r3, r3
 379 016e 8B82     		strh	r3, [r1, #20]
  68:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/4-1\startup.c **** 	} else {
  69:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/4-1\startup.c **** 		GPIO_D.ODR = 0x00;
  70:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/4-1\startup.c **** 	}
  71:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/4-1\startup.c **** }
 380              		.loc 1 71 0
 381 0170 02E0     		b	.L22
 382              	.L20:
  69:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/4-1\startup.c **** 	}
 383              		.loc 1 69 0
 384 0172 034B     		ldr	r3, .L23
 385 0174 0022     		movs	r2, #0
 386 0176 9A82     		strh	r2, [r3, #20]
 387              	.L22:
 388              		.loc 1 71 0
 389 0178 C046     		nop
 390 017a BD46     		mov	sp, r7
 391 017c 02B0     		add	sp, sp, #8
 392              		@ sp needed
 393 017e 80BD     		pop	{r7, pc}
 394              	.L24:
 395              		.align	2
 396              	.L23:
 397 0180 000C0240 		.word	1073875968
 398 0184 00000000 		.word	sevenSegmentCodes.4040
 399              		.cfi_endproc
 400              	.LFE5:
 402              		.align	1
 403              		.global	main
 404              		.syntax unified
 405              		.code	16
 406              		.thumb_func
 407              		.fpu softvfp
 409              	main:
 410              	.LFB6:
  72:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/4-1\startup.c **** 
  73:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/4-1\startup.c **** void main(void)
  74:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/4-1\startup.c **** {
 411              		.loc 1 74 0
 412              		.cfi_startproc
 413              		@ args = 0, pretend = 0, frame = 0
 414              		@ frame_needed = 1, uses_anonymous_args = 0
 415 0188 80B5     		push	{r7, lr}
 416              		.cfi_def_cfa_offset 8
 417              		.cfi_offset 7, -8
 418              		.cfi_offset 14, -4
 419 018a 00AF     		add	r7, sp, #0
 420              		.cfi_def_cfa_register 7
  75:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/4-1\startup.c **** 	appInit();
 421              		.loc 1 75 0
 422 018c FFF7FEFF 		bl	appInit
 423              	.L26:
  76:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/4-1\startup.c **** 	while (1) {
  77:C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/4-1\startup.c **** 		out7seg(keyb());
 424              		.loc 1 77 0 discriminator 1
 425 0190 FFF7FEFF 		bl	keyb
 426 0194 0300     		movs	r3, r0
 427 0196 1800     		movs	r0, r3
 428 0198 FFF7FEFF 		bl	out7seg
 429 019c F8E7     		b	.L26
 430              		.cfi_endproc
 431              	.LFE6:
 433              		.section	.rodata
 434              		.align	2
 437              	sevenSegmentCodes.4040:
 438 0000 06       		.byte	6
 439 0001 5B       		.byte	91
 440 0002 4F       		.byte	79
 441 0003 77       		.byte	119
 442 0004 66       		.byte	102
 443 0005 6D       		.byte	109
 444 0006 7D       		.byte	125
 445 0007 7C       		.byte	124
 446 0008 07       		.byte	7
 447 0009 7F       		.byte	127
 448 000a 67       		.byte	103
 449 000b 39       		.byte	57
 450 000c 79       		.byte	121
 451 000d 3F       		.byte	63
 452 000e 71       		.byte	113
 453 000f 5E       		.byte	94
 454              		.text
 455              	.Letext0:
 456              		.file 2 "C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/4-1/types.h"
 457              		.file 3 "C:/Users/feljo/Desktop/armassembler/code_lite/keyb_reader/4-1/gpio.h"

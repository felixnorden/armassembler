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
  25              		.file 1 "C:/Users/amk19/Documents/md407_c_prog/4-1/startup.c"
   1:C:/Users/amk19/Documents/md407_c_prog/4-1\startup.c **** /*
   2:C:/Users/amk19/Documents/md407_c_prog/4-1\startup.c ****  * 	startup.c
   3:C:/Users/amk19/Documents/md407_c_prog/4-1\startup.c ****  *
   4:C:/Users/amk19/Documents/md407_c_prog/4-1\startup.c ****  */
   5:C:/Users/amk19/Documents/md407_c_prog/4-1\startup.c **** 
   6:C:/Users/amk19/Documents/md407_c_prog/4-1\startup.c **** #include "gpio.h"
   7:C:/Users/amk19/Documents/md407_c_prog/4-1\startup.c **** #include "types.h"
   8:C:/Users/amk19/Documents/md407_c_prog/4-1\startup.c **** void startup(void) __attribute__((naked)) __attribute__((section (".start_section")) );
   9:C:/Users/amk19/Documents/md407_c_prog/4-1\startup.c **** 
  10:C:/Users/amk19/Documents/md407_c_prog/4-1\startup.c **** void startup ( void )
  11:C:/Users/amk19/Documents/md407_c_prog/4-1\startup.c **** {
  26              		.loc 1 11 0
  27              		.cfi_startproc
  28              		@ Naked Function: prologue and epilogue provided by programmer.
  29              		@ args = 0, pretend = 0, frame = 0
  30              		@ frame_needed = 1, uses_anonymous_args = 0
  12:C:/Users/amk19/Documents/md407_c_prog/4-1\startup.c **** __asm volatile(
  31              		.loc 1 12 0
  32              		.syntax divided
  33              	@ 12 "C:/Users/amk19/Documents/md407_c_prog/4-1/startup.c" 1
  34 0000 0248     		 LDR R0,=0x2001C000
  35 0002 8546     	 MOV SP,R0
  36 0004 FFF7FEFF 	 BL main
  37 0008 FEE7     	_exit: B .
  38              	
  39              	@ 0 "" 2
  13:C:/Users/amk19/Documents/md407_c_prog/4-1\startup.c **** 	" LDR R0,=0x2001C000\n"		/* set stack */
  14:C:/Users/amk19/Documents/md407_c_prog/4-1\startup.c **** 	" MOV SP,R0\n"
  15:C:/Users/amk19/Documents/md407_c_prog/4-1\startup.c **** 	" BL main\n"				/* call main */
  16:C:/Users/amk19/Documents/md407_c_prog/4-1\startup.c **** 	"_exit: B .\n"				/* never return */
  17:C:/Users/amk19/Documents/md407_c_prog/4-1\startup.c **** 	) ;
  18:C:/Users/amk19/Documents/md407_c_prog/4-1\startup.c **** }
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
  19:C:/Users/amk19/Documents/md407_c_prog/4-1\startup.c **** void appInit(void) {	
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
  20:C:/Users/amk19/Documents/md407_c_prog/4-1\startup.c **** 	GPIO_D.MODER &= 0x00000000;
  67              		.loc 1 20 0
  68 0004 0F4B     		ldr	r3, .L3
  69 0006 1B68     		ldr	r3, [r3]
  70 0008 0E4B     		ldr	r3, .L3
  71 000a 0022     		movs	r2, #0
  72 000c 1A60     		str	r2, [r3]
  21:C:/Users/amk19/Documents/md407_c_prog/4-1\startup.c **** 	GPIO_D.MODER |= 0x55005555;
  73              		.loc 1 21 0
  74 000e 0D4B     		ldr	r3, .L3
  75 0010 0C4A     		ldr	r2, .L3
  76 0012 1268     		ldr	r2, [r2]
  77 0014 0C49     		ldr	r1, .L3+4
  78 0016 0A43     		orrs	r2, r1
  79 0018 1A60     		str	r2, [r3]
  22:C:/Users/amk19/Documents/md407_c_prog/4-1\startup.c **** 	
  23:C:/Users/amk19/Documents/md407_c_prog/4-1\startup.c **** 	GPIO_D.OTYPER &= 0x0000;
  80              		.loc 1 23 0
  81 001a 0A4B     		ldr	r3, .L3
  82 001c 9B88     		ldrh	r3, [r3, #4]
  83 001e 094B     		ldr	r3, .L3
  84 0020 0022     		movs	r2, #0
  85 0022 9A80     		strh	r2, [r3, #4]
  24:C:/Users/amk19/Documents/md407_c_prog/4-1\startup.c **** 
  25:C:/Users/amk19/Documents/md407_c_prog/4-1\startup.c **** 	GPIO_D.PUPDR &= 0x0000FFFF;
  86              		.loc 1 25 0
  87 0024 074B     		ldr	r3, .L3
  88 0026 074A     		ldr	r2, .L3
  89 0028 D268     		ldr	r2, [r2, #12]
  90 002a 1204     		lsls	r2, r2, #16
  91 002c 120C     		lsrs	r2, r2, #16
  92 002e DA60     		str	r2, [r3, #12]
  26:C:/Users/amk19/Documents/md407_c_prog/4-1\startup.c **** 	GPIO_D.PUPDR |= 0x00AA0000;
  93              		.loc 1 26 0
  94 0030 044B     		ldr	r3, .L3
  95 0032 044A     		ldr	r2, .L3
  96 0034 D268     		ldr	r2, [r2, #12]
  97 0036 AA21     		movs	r1, #170
  98 0038 0904     		lsls	r1, r1, #16
  99 003a 0A43     		orrs	r2, r1
 100 003c DA60     		str	r2, [r3, #12]
  27:C:/Users/amk19/Documents/md407_c_prog/4-1\startup.c **** }
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
  28:C:/Users/amk19/Documents/md407_c_prog/4-1\startup.c **** 
  29:C:/Users/amk19/Documents/md407_c_prog/4-1\startup.c **** // x: index of row
  30:C:/Users/amk19/Documents/md407_c_prog/4-1\startup.c **** void activateRow(uint8 x) {
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
  31:C:/Users/amk19/Documents/md407_c_prog/4-1\startup.c **** 	GPIO_D.ODR &= 0x0000FFFF;
 138              		.loc 1 31 0
 139 0058 0C4B     		ldr	r3, .L6
 140 005a 0C4A     		ldr	r2, .L6
 141 005c 928A     		ldrh	r2, [r2, #20]
 142 005e 92B2     		uxth	r2, r2
 143 0060 9A82     		strh	r2, [r3, #20]
  32:C:/Users/amk19/Documents/md407_c_prog/4-1\startup.c **** 	GPIO_D.ODR |= (0x1 << (12 + x));
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
  33:C:/Users/amk19/Documents/md407_c_prog/4-1\startup.c **** }
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
  34:C:/Users/amk19/Documents/md407_c_prog/4-1\startup.c **** uint8 readColumns() {
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
  35:C:/Users/amk19/Documents/md407_c_prog/4-1\startup.c **** 	return GPIO_D.IDR >> 8;
 193              		.loc 1 35 0
 194 0094 044B     		ldr	r3, .L10
 195 0096 1B8A     		ldrh	r3, [r3, #16]
 196 0098 9BB2     		uxth	r3, r3
 197 009a 1B0A     		lsrs	r3, r3, #8
 198 009c 9BB2     		uxth	r3, r3
 199 009e DBB2     		uxtb	r3, r3
  36:C:/Users/amk19/Documents/md407_c_prog/4-1\startup.c **** }
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
  37:C:/Users/amk19/Documents/md407_c_prog/4-1\startup.c **** unsigned char keyb( void ) {
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
  38:C:/Users/amk19/Documents/md407_c_prog/4-1\startup.c **** 	
  39:C:/Users/amk19/Documents/md407_c_prog/4-1\startup.c **** 	static unsigned char keyPadValues[] = {	
  40:C:/Users/amk19/Documents/md407_c_prog/4-1\startup.c **** 								'1','2','3','A',
  41:C:/Users/amk19/Documents/md407_c_prog/4-1\startup.c **** 								'4','5','6','B',
  42:C:/Users/amk19/Documents/md407_c_prog/4-1\startup.c **** 								'7','8','9','C',
  43:C:/Users/amk19/Documents/md407_c_prog/4-1\startup.c **** 								'*','0','#','D'
  44:C:/Users/amk19/Documents/md407_c_prog/4-1\startup.c **** 							};
  45:C:/Users/amk19/Documents/md407_c_prog/4-1\startup.c **** 	
  46:C:/Users/amk19/Documents/md407_c_prog/4-1\startup.c **** 	uint8 activeKey = 0xFF;
 234              		.loc 1 46 0
 235 00b2 3B1D     		adds	r3, r7, #4
 236 00b4 FF22     		movs	r2, #255
 237 00b6 1A70     		strb	r2, [r3]
 238              	.LBB2:
  47:C:/Users/amk19/Documents/md407_c_prog/4-1\startup.c **** 	for (uint8 row = 0; row < 4; row++) {
 239              		.loc 1 47 0
 240 00b8 FB1D     		adds	r3, r7, #7
 241 00ba 0022     		movs	r2, #0
 242 00bc 1A70     		strb	r2, [r3]
 243 00be 37E0     		b	.L13
 244              	.L18:
 245              	.LBB3:
  48:C:/Users/amk19/Documents/md407_c_prog/4-1\startup.c **** 		activateRow(row);
 246              		.loc 1 48 0
 247 00c0 FB1D     		adds	r3, r7, #7
 248 00c2 1B78     		ldrb	r3, [r3]
 249 00c4 1800     		movs	r0, r3
 250 00c6 FFF7FEFF 		bl	activateRow
  49:C:/Users/amk19/Documents/md407_c_prog/4-1\startup.c **** 		uint8 columnValue = readColumns();
 251              		.loc 1 49 0
 252 00ca BC1D     		adds	r4, r7, #6
 253 00cc FFF7FEFF 		bl	readColumns
 254 00d0 0300     		movs	r3, r0
 255 00d2 2370     		strb	r3, [r4]
 256              	.LBB4:
  50:C:/Users/amk19/Documents/md407_c_prog/4-1\startup.c **** 		
  51:C:/Users/amk19/Documents/md407_c_prog/4-1\startup.c **** 		for (uint8 column = 0; column < 4; column++) {
 257              		.loc 1 51 0
 258 00d4 7B1D     		adds	r3, r7, #5
 259 00d6 0022     		movs	r2, #0
 260 00d8 1A70     		strb	r2, [r3]
 261 00da 20E0     		b	.L14
 262              	.L17:
 263              	.LBB5:
  52:C:/Users/amk19/Documents/md407_c_prog/4-1\startup.c **** 			uint8 activeColumn = (columnValue & 0x1);
 264              		.loc 1 52 0
 265 00dc FB1C     		adds	r3, r7, #3
 266 00de BA1D     		adds	r2, r7, #6
 267 00e0 1278     		ldrb	r2, [r2]
 268 00e2 0121     		movs	r1, #1
 269 00e4 0A40     		ands	r2, r1
 270 00e6 1A70     		strb	r2, [r3]
  53:C:/Users/amk19/Documents/md407_c_prog/4-1\startup.c **** 			if (activeColumn) {
 271              		.loc 1 53 0
 272 00e8 FB1C     		adds	r3, r7, #3
 273 00ea 1B78     		ldrb	r3, [r3]
 274 00ec 002B     		cmp	r3, #0
 275 00ee 0CD0     		beq	.L15
  54:C:/Users/amk19/Documents/md407_c_prog/4-1\startup.c **** 				activeKey = keyPadValues[row * 4 + column];
 276              		.loc 1 54 0
 277 00f0 FB1D     		adds	r3, r7, #7
 278 00f2 1B78     		ldrb	r3, [r3]
 279 00f4 9A00     		lsls	r2, r3, #2
 280 00f6 7B1D     		adds	r3, r7, #5
 281 00f8 1B78     		ldrb	r3, [r3]
 282 00fa D218     		adds	r2, r2, r3
 283 00fc 3B1D     		adds	r3, r7, #4
 284 00fe 1149     		ldr	r1, .L19
 285 0100 8A5C     		ldrb	r2, [r1, r2]
 286 0102 1A70     		strb	r2, [r3]
  55:C:/Users/amk19/Documents/md407_c_prog/4-1\startup.c **** 				return activeKey;
 287              		.loc 1 55 0
 288 0104 3B1D     		adds	r3, r7, #4
 289 0106 1B78     		ldrb	r3, [r3]
 290 0108 18E0     		b	.L16
 291              	.L15:
  56:C:/Users/amk19/Documents/md407_c_prog/4-1\startup.c **** 			}
  57:C:/Users/amk19/Documents/md407_c_prog/4-1\startup.c **** 			columnValue >>= 0x1;
 292              		.loc 1 57 0 discriminator 2
 293 010a BB1D     		adds	r3, r7, #6
 294 010c BA1D     		adds	r2, r7, #6
 295 010e 1278     		ldrb	r2, [r2]
 296 0110 5208     		lsrs	r2, r2, #1
 297 0112 1A70     		strb	r2, [r3]
 298              	.LBE5:
  51:C:/Users/amk19/Documents/md407_c_prog/4-1\startup.c **** 			uint8 activeColumn = (columnValue & 0x1);
 299              		.loc 1 51 0 discriminator 2
 300 0114 7B1D     		adds	r3, r7, #5
 301 0116 1A78     		ldrb	r2, [r3]
 302 0118 7B1D     		adds	r3, r7, #5
 303 011a 0132     		adds	r2, r2, #1
 304 011c 1A70     		strb	r2, [r3]
 305              	.L14:
  51:C:/Users/amk19/Documents/md407_c_prog/4-1\startup.c **** 			uint8 activeColumn = (columnValue & 0x1);
 306              		.loc 1 51 0 is_stmt 0 discriminator 1
 307 011e 7B1D     		adds	r3, r7, #5
 308 0120 1B78     		ldrb	r3, [r3]
 309 0122 032B     		cmp	r3, #3
 310 0124 DAD9     		bls	.L17
 311              	.LBE4:
 312              	.LBE3:
  47:C:/Users/amk19/Documents/md407_c_prog/4-1\startup.c **** 		activateRow(row);
 313              		.loc 1 47 0 is_stmt 1 discriminator 2
 314 0126 FB1D     		adds	r3, r7, #7
 315 0128 1A78     		ldrb	r2, [r3]
 316 012a FB1D     		adds	r3, r7, #7
 317 012c 0132     		adds	r2, r2, #1
 318 012e 1A70     		strb	r2, [r3]
 319              	.L13:
  47:C:/Users/amk19/Documents/md407_c_prog/4-1\startup.c **** 		activateRow(row);
 320              		.loc 1 47 0 is_stmt 0 discriminator 1
 321 0130 FB1D     		adds	r3, r7, #7
 322 0132 1B78     		ldrb	r3, [r3]
 323 0134 032B     		cmp	r3, #3
 324 0136 C3D9     		bls	.L18
 325              	.LBE2:
  58:C:/Users/amk19/Documents/md407_c_prog/4-1\startup.c **** 		}
  59:C:/Users/amk19/Documents/md407_c_prog/4-1\startup.c **** 	}
  60:C:/Users/amk19/Documents/md407_c_prog/4-1\startup.c **** 	return activeKey;
 326              		.loc 1 60 0 is_stmt 1
 327 0138 3B1D     		adds	r3, r7, #4
 328 013a 1B78     		ldrb	r3, [r3]
 329              	.L16:
  61:C:/Users/amk19/Documents/md407_c_prog/4-1\startup.c **** }
 330              		.loc 1 61 0
 331 013c 1800     		movs	r0, r3
 332 013e BD46     		mov	sp, r7
 333 0140 03B0     		add	sp, sp, #12
 334              		@ sp needed
 335 0142 90BD     		pop	{r4, r7, pc}
 336              	.L20:
 337              		.align	2
 338              	.L19:
 339 0144 00000000 		.word	keyPadValues.4026
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
  62:C:/Users/amk19/Documents/md407_c_prog/4-1\startup.c **** 
  63:C:/Users/amk19/Documents/md407_c_prog/4-1\startup.c **** void out7seg(uint8 keyValue) {
 352              		.loc 1 63 0
 353              		.cfi_startproc
 354              		@ args = 0, pretend = 0, frame = 8
 355              		@ frame_needed = 1, uses_anonymous_args = 0
 356 0148 80B5     		push	{r7, lr}
 357              		.cfi_def_cfa_offset 8
 358              		.cfi_offset 7, -8
 359              		.cfi_offset 14, -4
 360 014a 82B0     		sub	sp, sp, #8
 361              		.cfi_def_cfa_offset 16
 362 014c 00AF     		add	r7, sp, #0
 363              		.cfi_def_cfa_register 7
 364 014e 0200     		movs	r2, r0
 365 0150 FB1D     		adds	r3, r7, #7
 366 0152 1A70     		strb	r2, [r3]
  64:C:/Users/amk19/Documents/md407_c_prog/4-1\startup.c **** 	if (keyValue < 16 && keyValue > 0) {
 367              		.loc 1 64 0
 368 0154 FB1D     		adds	r3, r7, #7
 369 0156 1B78     		ldrb	r3, [r3]
 370 0158 0F2B     		cmp	r3, #15
 371 015a 08D8     		bhi	.L23
 372              		.loc 1 64 0 is_stmt 0 discriminator 1
 373 015c FB1D     		adds	r3, r7, #7
 374 015e 1B78     		ldrb	r3, [r3]
 375 0160 002B     		cmp	r3, #0
 376 0162 04D0     		beq	.L23
  65:C:/Users/amk19/Documents/md407_c_prog/4-1\startup.c **** 		GPIO_D.ODR = keyValue;
 377              		.loc 1 65 0 is_stmt 1
 378 0164 044A     		ldr	r2, .L24
 379 0166 FB1D     		adds	r3, r7, #7
 380 0168 1B78     		ldrb	r3, [r3]
 381 016a 9BB2     		uxth	r3, r3
 382 016c 9382     		strh	r3, [r2, #20]
 383              	.L23:
  66:C:/Users/amk19/Documents/md407_c_prog/4-1\startup.c **** 	}
  67:C:/Users/amk19/Documents/md407_c_prog/4-1\startup.c **** }
 384              		.loc 1 67 0
 385 016e C046     		nop
 386 0170 BD46     		mov	sp, r7
 387 0172 02B0     		add	sp, sp, #8
 388              		@ sp needed
 389 0174 80BD     		pop	{r7, pc}
 390              	.L25:
 391 0176 C046     		.align	2
 392              	.L24:
 393 0178 000C0240 		.word	1073875968
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
  68:C:/Users/amk19/Documents/md407_c_prog/4-1\startup.c **** 
  69:C:/Users/amk19/Documents/md407_c_prog/4-1\startup.c **** void main(void)
  70:C:/Users/amk19/Documents/md407_c_prog/4-1\startup.c **** {
 406              		.loc 1 70 0
 407              		.cfi_startproc
 408              		@ args = 0, pretend = 0, frame = 0
 409              		@ frame_needed = 1, uses_anonymous_args = 0
 410 017c 80B5     		push	{r7, lr}
 411              		.cfi_def_cfa_offset 8
 412              		.cfi_offset 7, -8
 413              		.cfi_offset 14, -4
 414 017e 00AF     		add	r7, sp, #0
 415              		.cfi_def_cfa_register 7
  71:C:/Users/amk19/Documents/md407_c_prog/4-1\startup.c **** 	appInit();
 416              		.loc 1 71 0
 417 0180 FFF7FEFF 		bl	appInit
 418              	.L27:
  72:C:/Users/amk19/Documents/md407_c_prog/4-1\startup.c **** 	while (1) {
  73:C:/Users/amk19/Documents/md407_c_prog/4-1\startup.c **** 		out7seg(keyb() - 48);
 419              		.loc 1 73 0 discriminator 1
 420 0184 FFF7FEFF 		bl	keyb
 421 0188 0300     		movs	r3, r0
 422 018a 303B     		subs	r3, r3, #48
 423 018c DBB2     		uxtb	r3, r3
 424 018e 1800     		movs	r0, r3
 425 0190 FFF7FEFF 		bl	out7seg
 426 0194 F6E7     		b	.L27
 427              		.cfi_endproc
 428              	.LFE6:
 430              		.data
 431              		.align	2
 434              	keyPadValues.4026:
 435 0000 31       		.byte	49
 436 0001 32       		.byte	50
 437 0002 33       		.byte	51
 438 0003 41       		.byte	65
 439 0004 34       		.byte	52
 440 0005 35       		.byte	53
 441 0006 36       		.byte	54
 442 0007 42       		.byte	66
 443 0008 37       		.byte	55
 444 0009 38       		.byte	56
 445 000a 39       		.byte	57
 446 000b 43       		.byte	67
 447 000c 2A       		.byte	42
 448 000d 30       		.byte	48
 449 000e 23       		.byte	35
 450 000f 44       		.byte	68
 451              		.text
 452              	.Letext0:
 453              		.file 2 "C:/Users/amk19/Documents/md407_c_prog/4-1/types.h"
 454              		.file 3 "C:/Users/amk19/Documents/md407_c_prog/4-1/gpio.h"

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
  11              		.file	"asciidisplay.c"
  12              		.text
  13              	.Ltext0:
  14              		.cfi_sections	.debug_frame
  15              		.align	1
  16              		.global	ascii_ctrl_bit_set
  17              		.syntax unified
  18              		.code	16
  19              		.thumb_func
  20              		.fpu softvfp
  22              	ascii_ctrl_bit_set:
  23              	.LFB0:
  24              		.file 1 "C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/asciidisplay/asciidisplay.c"
   1:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/asciidisplay\asciidisplay.c **** #include "asciidisplay.h"
   2:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/asciidisplay\asciidisplay.c **** 
   3:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/asciidisplay\asciidisplay.c **** void ascii_ctrl_bit_set(uint8_c x)
   4:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/asciidisplay\asciidisplay.c **** {
  25              		.loc 1 4 0
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
   5:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/asciidisplay\asciidisplay.c **** 	/*
   6:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/asciidisplay\asciidisplay.c **** 	uint8 c;
   7:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/asciidisplay\asciidisplay.c **** 	c = portOdrLow;
   8:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/asciidisplay\asciidisplay.c **** 	c |= (B_SELECT | x);
   9:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/asciidisplay\asciidisplay.c **** 	portOdrLow = c;
  10:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/asciidisplay\asciidisplay.c **** 	*/
  11:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/asciidisplay\asciidisplay.c **** 	portOdrLow |= x;
  40              		.loc 1 11 0
  41 000c 0A49     		ldr	r1, .L2
  42 000e 0A4B     		ldr	r3, .L2
  43 0010 1B78     		ldrb	r3, [r3]
  44 0012 DAB2     		uxtb	r2, r3
  45 0014 FB1D     		adds	r3, r7, #7
  46 0016 1B78     		ldrb	r3, [r3]
  47 0018 1343     		orrs	r3, r2
  48 001a DBB2     		uxtb	r3, r3
  49 001c 0B70     		strb	r3, [r1]
  12:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/asciidisplay\asciidisplay.c **** 	portOdrLow |= B_SELECT;
  50              		.loc 1 12 0
  51 001e 064A     		ldr	r2, .L2
  52 0020 054B     		ldr	r3, .L2
  53 0022 1B78     		ldrb	r3, [r3]
  54 0024 DBB2     		uxtb	r3, r3
  55 0026 0421     		movs	r1, #4
  56 0028 0B43     		orrs	r3, r1
  57 002a DBB2     		uxtb	r3, r3
  58 002c 1370     		strb	r3, [r2]
  13:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/asciidisplay\asciidisplay.c **** }
  59              		.loc 1 13 0
  60 002e C046     		nop
  61 0030 BD46     		mov	sp, r7
  62 0032 02B0     		add	sp, sp, #8
  63              		@ sp needed
  64 0034 80BD     		pop	{r7, pc}
  65              	.L3:
  66 0036 C046     		.align	2
  67              	.L2:
  68 0038 14100240 		.word	1073877012
  69              		.cfi_endproc
  70              	.LFE0:
  72              		.align	1
  73              		.global	ascii_ctrl_bit_clear
  74              		.syntax unified
  75              		.code	16
  76              		.thumb_func
  77              		.fpu softvfp
  79              	ascii_ctrl_bit_clear:
  80              	.LFB1:
  14:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/asciidisplay\asciidisplay.c **** 
  15:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/asciidisplay\asciidisplay.c **** void ascii_ctrl_bit_clear(uint8_c x)
  16:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/asciidisplay\asciidisplay.c **** {
  81              		.loc 1 16 0
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
  17:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/asciidisplay\asciidisplay.c **** 	/*uint8 c;
  18:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/asciidisplay\asciidisplay.c **** 	c = portOdrLow;
  19:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/asciidisplay\asciidisplay.c **** 	c = (B_SELECT | c & ~x);
  20:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/asciidisplay\asciidisplay.c **** 	portOdrLow = c;
  21:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/asciidisplay\asciidisplay.c **** 	*/
  22:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/asciidisplay\asciidisplay.c **** 	portOdrLow &= ~x;
  96              		.loc 1 22 0
  97 0048 0C49     		ldr	r1, .L5
  98 004a 0C4B     		ldr	r3, .L5
  99 004c 1B78     		ldrb	r3, [r3]
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
 110 0062 0B70     		strb	r3, [r1]
  23:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/asciidisplay\asciidisplay.c **** 	portOdrLow |= B_SELECT;
 111              		.loc 1 23 0
 112 0064 054A     		ldr	r2, .L5
 113 0066 054B     		ldr	r3, .L5
 114 0068 1B78     		ldrb	r3, [r3]
 115 006a DBB2     		uxtb	r3, r3
 116 006c 0421     		movs	r1, #4
 117 006e 0B43     		orrs	r3, r1
 118 0070 DBB2     		uxtb	r3, r3
 119 0072 1370     		strb	r3, [r2]
  24:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/asciidisplay\asciidisplay.c **** }
 120              		.loc 1 24 0
 121 0074 C046     		nop
 122 0076 BD46     		mov	sp, r7
 123 0078 02B0     		add	sp, sp, #8
 124              		@ sp needed
 125 007a 80BD     		pop	{r7, pc}
 126              	.L6:
 127              		.align	2
 128              	.L5:
 129 007c 14100240 		.word	1073877012
 130              		.cfi_endproc
 131              	.LFE1:
 133              		.align	1
 134              		.global	ascii_write_cmd
 135              		.syntax unified
 136              		.code	16
 137              		.thumb_func
 138              		.fpu softvfp
 140              	ascii_write_cmd:
 141              	.LFB2:
  25:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/asciidisplay\asciidisplay.c **** 
  26:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/asciidisplay\asciidisplay.c **** void ascii_write_cmd(uint8_c command)
  27:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/asciidisplay\asciidisplay.c **** {
 142              		.loc 1 27 0
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
  28:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/asciidisplay\asciidisplay.c **** 	ascii_ctrl_bit_clear(B_RS | B_RW);
 157              		.loc 1 28 0
 158 008c 0320     		movs	r0, #3
 159 008e FFF7FEFF 		bl	ascii_ctrl_bit_clear
  29:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/asciidisplay\asciidisplay.c **** 	ascii_write_controller(command);
 160              		.loc 1 29 0
 161 0092 FB1D     		adds	r3, r7, #7
 162 0094 1B78     		ldrb	r3, [r3]
 163 0096 1800     		movs	r0, r3
 164 0098 FFF7FEFF 		bl	ascii_write_controller
  30:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/asciidisplay\asciidisplay.c **** }
 165              		.loc 1 30 0
 166 009c C046     		nop
 167 009e BD46     		mov	sp, r7
 168 00a0 02B0     		add	sp, sp, #8
 169              		@ sp needed
 170 00a2 80BD     		pop	{r7, pc}
 171              		.cfi_endproc
 172              	.LFE2:
 174              		.align	1
 175              		.global	ascii_write_data
 176              		.syntax unified
 177              		.code	16
 178              		.thumb_func
 179              		.fpu softvfp
 181              	ascii_write_data:
 182              	.LFB3:
  31:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/asciidisplay\asciidisplay.c **** void ascii_write_data(uint8_c data)
  32:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/asciidisplay\asciidisplay.c **** {
 183              		.loc 1 32 0
 184              		.cfi_startproc
 185              		@ args = 0, pretend = 0, frame = 8
 186              		@ frame_needed = 1, uses_anonymous_args = 0
 187 00a4 80B5     		push	{r7, lr}
 188              		.cfi_def_cfa_offset 8
 189              		.cfi_offset 7, -8
 190              		.cfi_offset 14, -4
 191 00a6 82B0     		sub	sp, sp, #8
 192              		.cfi_def_cfa_offset 16
 193 00a8 00AF     		add	r7, sp, #0
 194              		.cfi_def_cfa_register 7
 195 00aa 0200     		movs	r2, r0
 196 00ac FB1D     		adds	r3, r7, #7
 197 00ae 1A70     		strb	r2, [r3]
  33:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/asciidisplay\asciidisplay.c **** 	ascii_ctrl_bit_set(B_RS);
 198              		.loc 1 33 0
 199 00b0 0120     		movs	r0, #1
 200 00b2 FFF7FEFF 		bl	ascii_ctrl_bit_set
  34:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/asciidisplay\asciidisplay.c **** 	ascii_ctrl_bit_clear(B_RW);
 201              		.loc 1 34 0
 202 00b6 0220     		movs	r0, #2
 203 00b8 FFF7FEFF 		bl	ascii_ctrl_bit_clear
  35:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/asciidisplay\asciidisplay.c **** 	ascii_write_controller(data);
 204              		.loc 1 35 0
 205 00bc FB1D     		adds	r3, r7, #7
 206 00be 1B78     		ldrb	r3, [r3]
 207 00c0 1800     		movs	r0, r3
 208 00c2 FFF7FEFF 		bl	ascii_write_controller
  36:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/asciidisplay\asciidisplay.c **** }
 209              		.loc 1 36 0
 210 00c6 C046     		nop
 211 00c8 BD46     		mov	sp, r7
 212 00ca 02B0     		add	sp, sp, #8
 213              		@ sp needed
 214 00cc 80BD     		pop	{r7, pc}
 215              		.cfi_endproc
 216              	.LFE3:
 218              		.align	1
 219              		.global	ascii_read_status
 220              		.syntax unified
 221              		.code	16
 222              		.thumb_func
 223              		.fpu softvfp
 225              	ascii_read_status:
 226              	.LFB4:
  37:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/asciidisplay\asciidisplay.c **** 
  38:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/asciidisplay\asciidisplay.c **** uint8 ascii_read_status(void)
  39:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/asciidisplay\asciidisplay.c **** {
 227              		.loc 1 39 0
 228              		.cfi_startproc
 229              		@ args = 0, pretend = 0, frame = 8
 230              		@ frame_needed = 1, uses_anonymous_args = 0
 231 00ce 90B5     		push	{r4, r7, lr}
 232              		.cfi_def_cfa_offset 12
 233              		.cfi_offset 4, -12
 234              		.cfi_offset 7, -8
 235              		.cfi_offset 14, -4
 236 00d0 83B0     		sub	sp, sp, #12
 237              		.cfi_def_cfa_offset 24
 238 00d2 00AF     		add	r7, sp, #0
 239              		.cfi_def_cfa_register 7
  40:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/asciidisplay\asciidisplay.c **** 	uint8 rv = 0;
 240              		.loc 1 40 0
 241 00d4 FB1D     		adds	r3, r7, #7
 242 00d6 0022     		movs	r2, #0
 243 00d8 1A70     		strb	r2, [r3]
  41:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/asciidisplay\asciidisplay.c **** 	portModer &= 0x0000FFFF;
 244              		.loc 1 41 0
 245 00da 114B     		ldr	r3, .L11
 246 00dc 104A     		ldr	r2, .L11
 247 00de 1268     		ldr	r2, [r2]
 248 00e0 1204     		lsls	r2, r2, #16
 249 00e2 120C     		lsrs	r2, r2, #16
 250 00e4 1A60     		str	r2, [r3]
  42:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/asciidisplay\asciidisplay.c **** 	ascii_ctrl_bit_clear(B_RS);
 251              		.loc 1 42 0
 252 00e6 0120     		movs	r0, #1
 253 00e8 FFF7FEFF 		bl	ascii_ctrl_bit_clear
  43:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/asciidisplay\asciidisplay.c **** 	ascii_ctrl_bit_set(B_RW);
 254              		.loc 1 43 0
 255 00ec 0220     		movs	r0, #2
 256 00ee FFF7FEFF 		bl	ascii_ctrl_bit_set
  44:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/asciidisplay\asciidisplay.c **** 	rv = ascii_read_controller();
 257              		.loc 1 44 0
 258 00f2 FC1D     		adds	r4, r7, #7
 259 00f4 FFF7FEFF 		bl	ascii_read_controller
 260 00f8 0300     		movs	r3, r0
 261 00fa 2370     		strb	r3, [r4]
  45:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/asciidisplay\asciidisplay.c **** 	portModer &= 0x0000FFFF;
 262              		.loc 1 45 0
 263 00fc 084B     		ldr	r3, .L11
 264 00fe 084A     		ldr	r2, .L11
 265 0100 1268     		ldr	r2, [r2]
 266 0102 1204     		lsls	r2, r2, #16
 267 0104 120C     		lsrs	r2, r2, #16
 268 0106 1A60     		str	r2, [r3]
  46:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/asciidisplay\asciidisplay.c **** 	portModer |= 0x55550000;
 269              		.loc 1 46 0
 270 0108 054B     		ldr	r3, .L11
 271 010a 054A     		ldr	r2, .L11
 272 010c 1268     		ldr	r2, [r2]
 273 010e 0549     		ldr	r1, .L11+4
 274 0110 0A43     		orrs	r2, r1
 275 0112 1A60     		str	r2, [r3]
  47:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/asciidisplay\asciidisplay.c **** 	return rv;
 276              		.loc 1 47 0
 277 0114 FB1D     		adds	r3, r7, #7
 278 0116 1B78     		ldrb	r3, [r3]
  48:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/asciidisplay\asciidisplay.c **** }
 279              		.loc 1 48 0
 280 0118 1800     		movs	r0, r3
 281 011a BD46     		mov	sp, r7
 282 011c 03B0     		add	sp, sp, #12
 283              		@ sp needed
 284 011e 90BD     		pop	{r4, r7, pc}
 285              	.L12:
 286              		.align	2
 287              	.L11:
 288 0120 00100240 		.word	1073876992
 289 0124 00005555 		.word	1431633920
 290              		.cfi_endproc
 291              	.LFE4:
 293              		.align	1
 294              		.global	ascii_read_data
 295              		.syntax unified
 296              		.code	16
 297              		.thumb_func
 298              		.fpu softvfp
 300              	ascii_read_data:
 301              	.LFB5:
  49:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/asciidisplay\asciidisplay.c **** uint8 ascii_read_data(void)
  50:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/asciidisplay\asciidisplay.c **** {
 302              		.loc 1 50 0
 303              		.cfi_startproc
 304              		@ args = 0, pretend = 0, frame = 8
 305              		@ frame_needed = 1, uses_anonymous_args = 0
 306 0128 90B5     		push	{r4, r7, lr}
 307              		.cfi_def_cfa_offset 12
 308              		.cfi_offset 4, -12
 309              		.cfi_offset 7, -8
 310              		.cfi_offset 14, -4
 311 012a 83B0     		sub	sp, sp, #12
 312              		.cfi_def_cfa_offset 24
 313 012c 00AF     		add	r7, sp, #0
 314              		.cfi_def_cfa_register 7
  51:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/asciidisplay\asciidisplay.c **** 	uint8 rv = 0;
 315              		.loc 1 51 0
 316 012e FB1D     		adds	r3, r7, #7
 317 0130 0022     		movs	r2, #0
 318 0132 1A70     		strb	r2, [r3]
  52:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/asciidisplay\asciidisplay.c **** 	portModer &= 0x0000FFFF;
 319              		.loc 1 52 0
 320 0134 0F4B     		ldr	r3, .L15
 321 0136 0F4A     		ldr	r2, .L15
 322 0138 1268     		ldr	r2, [r2]
 323 013a 1204     		lsls	r2, r2, #16
 324 013c 120C     		lsrs	r2, r2, #16
 325 013e 1A60     		str	r2, [r3]
  53:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/asciidisplay\asciidisplay.c **** 	ascii_ctrl_bit_set(B_RW | B_RS);
 326              		.loc 1 53 0
 327 0140 0320     		movs	r0, #3
 328 0142 FFF7FEFF 		bl	ascii_ctrl_bit_set
  54:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/asciidisplay\asciidisplay.c **** 	rv = ascii_read_controller();
 329              		.loc 1 54 0
 330 0146 FC1D     		adds	r4, r7, #7
 331 0148 FFF7FEFF 		bl	ascii_read_controller
 332 014c 0300     		movs	r3, r0
 333 014e 2370     		strb	r3, [r4]
  55:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/asciidisplay\asciidisplay.c **** 	portModer &= 0x0000FFFF;
 334              		.loc 1 55 0
 335 0150 084B     		ldr	r3, .L15
 336 0152 084A     		ldr	r2, .L15
 337 0154 1268     		ldr	r2, [r2]
 338 0156 1204     		lsls	r2, r2, #16
 339 0158 120C     		lsrs	r2, r2, #16
 340 015a 1A60     		str	r2, [r3]
  56:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/asciidisplay\asciidisplay.c **** 	portModer |= 0x55550000;
 341              		.loc 1 56 0
 342 015c 054B     		ldr	r3, .L15
 343 015e 054A     		ldr	r2, .L15
 344 0160 1268     		ldr	r2, [r2]
 345 0162 0549     		ldr	r1, .L15+4
 346 0164 0A43     		orrs	r2, r1
 347 0166 1A60     		str	r2, [r3]
  57:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/asciidisplay\asciidisplay.c **** 	return rv;
 348              		.loc 1 57 0
 349 0168 FB1D     		adds	r3, r7, #7
 350 016a 1B78     		ldrb	r3, [r3]
  58:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/asciidisplay\asciidisplay.c **** }
 351              		.loc 1 58 0
 352 016c 1800     		movs	r0, r3
 353 016e BD46     		mov	sp, r7
 354 0170 03B0     		add	sp, sp, #12
 355              		@ sp needed
 356 0172 90BD     		pop	{r4, r7, pc}
 357              	.L16:
 358              		.align	2
 359              	.L15:
 360 0174 00100240 		.word	1073876992
 361 0178 00005555 		.word	1431633920
 362              		.cfi_endproc
 363              	.LFE5:
 365              		.align	1
 366              		.global	ascii_write_controller
 367              		.syntax unified
 368              		.code	16
 369              		.thumb_func
 370              		.fpu softvfp
 372              	ascii_write_controller:
 373              	.LFB6:
  59:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/asciidisplay\asciidisplay.c **** 
  60:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/asciidisplay\asciidisplay.c **** void ascii_write_controller(uint8 byte) 
  61:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/asciidisplay\asciidisplay.c **** {
 374              		.loc 1 61 0
 375              		.cfi_startproc
 376              		@ args = 0, pretend = 0, frame = 8
 377              		@ frame_needed = 1, uses_anonymous_args = 0
 378 017c 80B5     		push	{r7, lr}
 379              		.cfi_def_cfa_offset 8
 380              		.cfi_offset 7, -8
 381              		.cfi_offset 14, -4
 382 017e 82B0     		sub	sp, sp, #8
 383              		.cfi_def_cfa_offset 16
 384 0180 00AF     		add	r7, sp, #0
 385              		.cfi_def_cfa_register 7
 386 0182 0200     		movs	r2, r0
 387 0184 FB1D     		adds	r3, r7, #7
 388 0186 1A70     		strb	r2, [r3]
  62:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/asciidisplay\asciidisplay.c **** 	// 40 ns delay not required to delay manually
  63:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/asciidisplay\asciidisplay.c **** 	ascii_ctrl_bit_set(B_E);
 389              		.loc 1 63 0
 390 0188 4020     		movs	r0, #64
 391 018a FFF7FEFF 		bl	ascii_ctrl_bit_set
  64:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/asciidisplay\asciidisplay.c **** 	portOdrHigh = byte;
 392              		.loc 1 64 0
 393 018e 064A     		ldr	r2, .L18
 394 0190 FB1D     		adds	r3, r7, #7
 395 0192 1B78     		ldrb	r3, [r3]
 396 0194 1370     		strb	r3, [r2]
  65:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/asciidisplay\asciidisplay.c **** 	delay_250ns();
 397              		.loc 1 65 0
 398 0196 FFF7FEFF 		bl	delay_250ns
  66:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/asciidisplay\asciidisplay.c **** 	ascii_ctrl_bit_clear(B_E);
 399              		.loc 1 66 0
 400 019a 4020     		movs	r0, #64
 401 019c FFF7FEFF 		bl	ascii_ctrl_bit_clear
  67:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/asciidisplay\asciidisplay.c **** 	// 10 ns delay not required to delay manually
  68:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/asciidisplay\asciidisplay.c **** }
 402              		.loc 1 68 0
 403 01a0 C046     		nop
 404 01a2 BD46     		mov	sp, r7
 405 01a4 02B0     		add	sp, sp, #8
 406              		@ sp needed
 407 01a6 80BD     		pop	{r7, pc}
 408              	.L19:
 409              		.align	2
 410              	.L18:
 411 01a8 15100240 		.word	1073877013
 412              		.cfi_endproc
 413              	.LFE6:
 415              		.align	1
 416              		.global	ascii_read_controller
 417              		.syntax unified
 418              		.code	16
 419              		.thumb_func
 420              		.fpu softvfp
 422              	ascii_read_controller:
 423              	.LFB7:
  69:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/asciidisplay\asciidisplay.c **** 
  70:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/asciidisplay\asciidisplay.c **** uint8 ascii_read_controller(void)
  71:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/asciidisplay\asciidisplay.c **** {
 424              		.loc 1 71 0
 425              		.cfi_startproc
 426              		@ args = 0, pretend = 0, frame = 8
 427              		@ frame_needed = 1, uses_anonymous_args = 0
 428 01ac 80B5     		push	{r7, lr}
 429              		.cfi_def_cfa_offset 8
 430              		.cfi_offset 7, -8
 431              		.cfi_offset 14, -4
 432 01ae 82B0     		sub	sp, sp, #8
 433              		.cfi_def_cfa_offset 16
 434 01b0 00AF     		add	r7, sp, #0
 435              		.cfi_def_cfa_register 7
  72:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/asciidisplay\asciidisplay.c **** 	uint8 rv = 0;
 436              		.loc 1 72 0
 437 01b2 FB1D     		adds	r3, r7, #7
 438 01b4 0022     		movs	r2, #0
 439 01b6 1A70     		strb	r2, [r3]
  73:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/asciidisplay\asciidisplay.c **** 	ascii_ctrl_bit_set(B_E);
 440              		.loc 1 73 0
 441 01b8 4020     		movs	r0, #64
 442 01ba FFF7FEFF 		bl	ascii_ctrl_bit_set
  74:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/asciidisplay\asciidisplay.c **** 	delay_250ns();
 443              		.loc 1 74 0
 444 01be FFF7FEFF 		bl	delay_250ns
  75:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/asciidisplay\asciidisplay.c **** 	delay_250ns();
 445              		.loc 1 75 0
 446 01c2 FFF7FEFF 		bl	delay_250ns
  76:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/asciidisplay\asciidisplay.c **** 	rv = portIdrHigh;
 447              		.loc 1 76 0
 448 01c6 064A     		ldr	r2, .L22
 449 01c8 FB1D     		adds	r3, r7, #7
 450 01ca 1278     		ldrb	r2, [r2]
 451 01cc 1A70     		strb	r2, [r3]
  77:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/asciidisplay\asciidisplay.c **** 	ascii_ctrl_bit_clear(B_E);
 452              		.loc 1 77 0
 453 01ce 4020     		movs	r0, #64
 454 01d0 FFF7FEFF 		bl	ascii_ctrl_bit_clear
  78:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/asciidisplay\asciidisplay.c **** 	return rv;
 455              		.loc 1 78 0
 456 01d4 FB1D     		adds	r3, r7, #7
 457 01d6 1B78     		ldrb	r3, [r3]
  79:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/asciidisplay\asciidisplay.c **** }
 458              		.loc 1 79 0
 459 01d8 1800     		movs	r0, r3
 460 01da BD46     		mov	sp, r7
 461 01dc 02B0     		add	sp, sp, #8
 462              		@ sp needed
 463 01de 80BD     		pop	{r7, pc}
 464              	.L23:
 465              		.align	2
 466              	.L22:
 467 01e0 11100240 		.word	1073877009
 468              		.cfi_endproc
 469              	.LFE7:
 471              		.align	1
 472              		.global	ascii_command
 473              		.syntax unified
 474              		.code	16
 475              		.thumb_func
 476              		.fpu softvfp
 478              	ascii_command:
 479              	.LFB8:
  80:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/asciidisplay\asciidisplay.c **** 
  81:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/asciidisplay\asciidisplay.c **** void ascii_command(uint8 command, uint16 commandDelay)
  82:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/asciidisplay\asciidisplay.c **** {
 480              		.loc 1 82 0
 481              		.cfi_startproc
 482              		@ args = 0, pretend = 0, frame = 8
 483              		@ frame_needed = 1, uses_anonymous_args = 0
 484 01e4 80B5     		push	{r7, lr}
 485              		.cfi_def_cfa_offset 8
 486              		.cfi_offset 7, -8
 487              		.cfi_offset 14, -4
 488 01e6 82B0     		sub	sp, sp, #8
 489              		.cfi_def_cfa_offset 16
 490 01e8 00AF     		add	r7, sp, #0
 491              		.cfi_def_cfa_register 7
 492 01ea 0200     		movs	r2, r0
 493 01ec FB1D     		adds	r3, r7, #7
 494 01ee 1A70     		strb	r2, [r3]
 495 01f0 3B1D     		adds	r3, r7, #4
 496 01f2 0A1C     		adds	r2, r1, #0
 497 01f4 1A80     		strh	r2, [r3]
  83:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/asciidisplay\asciidisplay.c **** 	while ((ascii_read_status() & 0x80) == 0x80) {}
 498              		.loc 1 83 0
 499 01f6 C046     		nop
 500              	.L25:
 501              		.loc 1 83 0 is_stmt 0 discriminator 1
 502 01f8 FFF7FEFF 		bl	ascii_read_status
 503 01fc 0300     		movs	r3, r0
 504 01fe 1A00     		movs	r2, r3
 505 0200 8023     		movs	r3, #128
 506 0202 1340     		ands	r3, r2
 507 0204 802B     		cmp	r3, #128
 508 0206 F7D0     		beq	.L25
  84:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/asciidisplay\asciidisplay.c **** 	delay_micro(20);
 509              		.loc 1 84 0 is_stmt 1
 510 0208 1420     		movs	r0, #20
 511 020a FFF7FEFF 		bl	delay_micro
  85:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/asciidisplay\asciidisplay.c **** 	ascii_write_cmd(command);
 512              		.loc 1 85 0
 513 020e FB1D     		adds	r3, r7, #7
 514 0210 1B78     		ldrb	r3, [r3]
 515 0212 1800     		movs	r0, r3
 516 0214 FFF7FEFF 		bl	ascii_write_cmd
  86:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/asciidisplay\asciidisplay.c **** 	delay_micro(commandDelay);
 517              		.loc 1 86 0
 518 0218 3B1D     		adds	r3, r7, #4
 519 021a 1B88     		ldrh	r3, [r3]
 520 021c 1800     		movs	r0, r3
 521 021e FFF7FEFF 		bl	delay_micro
  87:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/asciidisplay\asciidisplay.c **** }
 522              		.loc 1 87 0
 523 0222 C046     		nop
 524 0224 BD46     		mov	sp, r7
 525 0226 02B0     		add	sp, sp, #8
 526              		@ sp needed
 527 0228 80BD     		pop	{r7, pc}
 528              		.cfi_endproc
 529              	.LFE8:
 531              		.align	1
 532              		.global	ascii_init
 533              		.syntax unified
 534              		.code	16
 535              		.thumb_func
 536              		.fpu softvfp
 538              	ascii_init:
 539              	.LFB9:
  88:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/asciidisplay\asciidisplay.c **** 
  89:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/asciidisplay\asciidisplay.c **** void ascii_init(void)
  90:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/asciidisplay\asciidisplay.c **** {	
 540              		.loc 1 90 0
 541              		.cfi_startproc
 542              		@ args = 0, pretend = 0, frame = 0
 543              		@ frame_needed = 1, uses_anonymous_args = 0
 544 022a 80B5     		push	{r7, lr}
 545              		.cfi_def_cfa_offset 8
 546              		.cfi_offset 7, -8
 547              		.cfi_offset 14, -4
 548 022c 00AF     		add	r7, sp, #0
 549              		.cfi_def_cfa_register 7
  91:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/asciidisplay\asciidisplay.c **** 	ascii_command((uint8) 0b00111000, 39);
 550              		.loc 1 91 0
 551 022e 2721     		movs	r1, #39
 552 0230 3820     		movs	r0, #56
 553 0232 FFF7FEFF 		bl	ascii_command
  92:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/asciidisplay\asciidisplay.c **** 	ascii_command((uint8) 0b00001110, 39);
 554              		.loc 1 92 0
 555 0236 2721     		movs	r1, #39
 556 0238 0E20     		movs	r0, #14
 557 023a FFF7FEFF 		bl	ascii_command
  93:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/asciidisplay\asciidisplay.c **** 	ascii_command((uint8) 0b00000001, 1530);
 558              		.loc 1 93 0
 559 023e 064B     		ldr	r3, .L27
 560 0240 1900     		movs	r1, r3
 561 0242 0120     		movs	r0, #1
 562 0244 FFF7FEFF 		bl	ascii_command
  94:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/asciidisplay\asciidisplay.c **** 	ascii_command((uint8) 0b00000100, 1530);
 563              		.loc 1 94 0
 564 0248 034B     		ldr	r3, .L27
 565 024a 1900     		movs	r1, r3
 566 024c 0420     		movs	r0, #4
 567 024e FFF7FEFF 		bl	ascii_command
  95:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/asciidisplay\asciidisplay.c **** }
 568              		.loc 1 95 0
 569 0252 C046     		nop
 570 0254 BD46     		mov	sp, r7
 571              		@ sp needed
 572 0256 80BD     		pop	{r7, pc}
 573              	.L28:
 574              		.align	2
 575              	.L27:
 576 0258 FA050000 		.word	1530
 577              		.cfi_endproc
 578              	.LFE9:
 580              		.align	1
 581              		.global	ascii_gotoxy
 582              		.syntax unified
 583              		.code	16
 584              		.thumb_func
 585              		.fpu softvfp
 587              	ascii_gotoxy:
 588              	.LFB10:
  96:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/asciidisplay\asciidisplay.c **** 
  97:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/asciidisplay\asciidisplay.c **** void ascii_gotoxy(uint8 x, uint8 y) 
  98:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/asciidisplay\asciidisplay.c **** {
 589              		.loc 1 98 0
 590              		.cfi_startproc
 591              		@ args = 0, pretend = 0, frame = 16
 592              		@ frame_needed = 1, uses_anonymous_args = 0
 593 025c 80B5     		push	{r7, lr}
 594              		.cfi_def_cfa_offset 8
 595              		.cfi_offset 7, -8
 596              		.cfi_offset 14, -4
 597 025e 84B0     		sub	sp, sp, #16
 598              		.cfi_def_cfa_offset 24
 599 0260 00AF     		add	r7, sp, #0
 600              		.cfi_def_cfa_register 7
 601 0262 0200     		movs	r2, r0
 602 0264 FB1D     		adds	r3, r7, #7
 603 0266 1A70     		strb	r2, [r3]
 604 0268 BB1D     		adds	r3, r7, #6
 605 026a 0A1C     		adds	r2, r1, #0
 606 026c 1A70     		strb	r2, [r3]
  99:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/asciidisplay\asciidisplay.c **** 	uint8 address = 	y == 2 ?
 607              		.loc 1 99 0
 608 026e BB1D     		adds	r3, r7, #6
 609 0270 1B78     		ldrb	r3, [r3]
 610 0272 022B     		cmp	r3, #2
 611 0274 04D1     		bne	.L30
 612              		.loc 1 99 0 is_stmt 0 discriminator 1
 613 0276 FB1D     		adds	r3, r7, #7
 614 0278 1B78     		ldrb	r3, [r3]
 615 027a 3F33     		adds	r3, r3, #63
 616 027c DBB2     		uxtb	r3, r3
 617 027e 03E0     		b	.L31
 618              	.L30:
 619              		.loc 1 99 0 discriminator 2
 620 0280 FB1D     		adds	r3, r7, #7
 621 0282 1B78     		ldrb	r3, [r3]
 622 0284 013B     		subs	r3, r3, #1
 623 0286 DBB2     		uxtb	r3, r3
 624              	.L31:
 625              		.loc 1 99 0 discriminator 4
 626 0288 0F22     		movs	r2, #15
 627 028a BA18     		adds	r2, r7, r2
 628 028c 1370     		strb	r3, [r2]
 100:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/asciidisplay\asciidisplay.c **** 						x - 1 + 0x40 :
 101:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/asciidisplay\asciidisplay.c **** 						x -1;
 102:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/asciidisplay\asciidisplay.c **** 	ascii_command(0x80 | address, 39);
 629              		.loc 1 102 0 is_stmt 1 discriminator 4
 630 028e 0F23     		movs	r3, #15
 631 0290 FB18     		adds	r3, r7, r3
 632 0292 1B78     		ldrb	r3, [r3]
 633 0294 8022     		movs	r2, #128
 634 0296 5242     		rsbs	r2, r2, #0
 635 0298 1343     		orrs	r3, r2
 636 029a DBB2     		uxtb	r3, r3
 637 029c 2721     		movs	r1, #39
 638 029e 1800     		movs	r0, r3
 639 02a0 FFF7FEFF 		bl	ascii_command
 103:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/asciidisplay\asciidisplay.c **** }
 640              		.loc 1 103 0 discriminator 4
 641 02a4 C046     		nop
 642 02a6 BD46     		mov	sp, r7
 643 02a8 04B0     		add	sp, sp, #16
 644              		@ sp needed
 645 02aa 80BD     		pop	{r7, pc}
 646              		.cfi_endproc
 647              	.LFE10:
 649              		.align	1
 650              		.global	ascii_write_char
 651              		.syntax unified
 652              		.code	16
 653              		.thumb_func
 654              		.fpu softvfp
 656              	ascii_write_char:
 657              	.LFB11:
 104:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/asciidisplay\asciidisplay.c **** 
 105:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/asciidisplay\asciidisplay.c **** void ascii_write_char(unsigned char c)
 106:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/asciidisplay\asciidisplay.c **** {
 658              		.loc 1 106 0
 659              		.cfi_startproc
 660              		@ args = 0, pretend = 0, frame = 8
 661              		@ frame_needed = 1, uses_anonymous_args = 0
 662 02ac 80B5     		push	{r7, lr}
 663              		.cfi_def_cfa_offset 8
 664              		.cfi_offset 7, -8
 665              		.cfi_offset 14, -4
 666 02ae 82B0     		sub	sp, sp, #8
 667              		.cfi_def_cfa_offset 16
 668 02b0 00AF     		add	r7, sp, #0
 669              		.cfi_def_cfa_register 7
 670 02b2 0200     		movs	r2, r0
 671 02b4 FB1D     		adds	r3, r7, #7
 672 02b6 1A70     		strb	r2, [r3]
 107:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/asciidisplay\asciidisplay.c **** 	while ((ascii_read_status() & 0x80) == 0x80) {}
 673              		.loc 1 107 0
 674 02b8 C046     		nop
 675              	.L33:
 676              		.loc 1 107 0 is_stmt 0 discriminator 1
 677 02ba FFF7FEFF 		bl	ascii_read_status
 678 02be 0300     		movs	r3, r0
 679 02c0 1A00     		movs	r2, r3
 680 02c2 8023     		movs	r3, #128
 681 02c4 1340     		ands	r3, r2
 682 02c6 802B     		cmp	r3, #128
 683 02c8 F7D0     		beq	.L33
 108:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/asciidisplay\asciidisplay.c **** 	delay_micro(8);
 684              		.loc 1 108 0 is_stmt 1
 685 02ca 0820     		movs	r0, #8
 686 02cc FFF7FEFF 		bl	delay_micro
 109:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/asciidisplay\asciidisplay.c **** 	ascii_write_data(c);
 687              		.loc 1 109 0
 688 02d0 FB1D     		adds	r3, r7, #7
 689 02d2 1B78     		ldrb	r3, [r3]
 690 02d4 1800     		movs	r0, r3
 691 02d6 FFF7FEFF 		bl	ascii_write_data
 110:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/asciidisplay\asciidisplay.c **** 	delay_micro(50);
 692              		.loc 1 110 0
 693 02da 3220     		movs	r0, #50
 694 02dc FFF7FEFF 		bl	delay_micro
 111:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/asciidisplay\asciidisplay.c **** }...
 695              		.loc 1 111 0
 696 02e0 C046     		nop
 697 02e2 BD46     		mov	sp, r7
 698 02e4 02B0     		add	sp, sp, #8
 699              		@ sp needed
 700 02e6 80BD     		pop	{r7, pc}
 701              		.cfi_endproc
 702              	.LFE11:
 704              	.Letext0:
 705              		.file 2 "C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/asciidisplay/types.h"

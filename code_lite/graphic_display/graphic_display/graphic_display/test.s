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
  15              		.align	1
  16              		.global	set_object_speed
  17              		.syntax unified
  18              		.code	16
  19              		.thumb_func
  20              		.fpu softvfp
  22              	set_object_speed:
  23              	.LFB0:
  24              		.file 1 "c:\\development\\armassembler\\code_lite\\graphic_display\\util\\object.h"
   1:c:\development\armassembler\code_lite\graphic_display\util\object.h **** #include "geometry.h"
   2:c:\development\armassembler\code_lite\graphic_display\util\object.h **** 
   3:c:\development\armassembler\code_lite\graphic_display\util\object.h **** #ifndef OBJECT_H
   4:c:\development\armassembler\code_lite\graphic_display\util\object.h **** #define OBJECT_H
   5:c:\development\armassembler\code_lite\graphic_display\util\object.h **** 
   6:c:\development\armassembler\code_lite\graphic_display\util\object.h **** typedef struct tObject
   7:c:\development\armassembler\code_lite\graphic_display\util\object.h **** {
   8:c:\development\armassembler\code_lite\graphic_display\util\object.h ****     GeometryPtr         geo;
   9:c:\development\armassembler\code_lite\graphic_display\util\object.h ****     int8                dirx, diry;
  10:c:\development\armassembler\code_lite\graphic_display\util\object.h ****     int8                posx, posy;
  11:c:\development\armassembler\code_lite\graphic_display\util\object.h ****     void                (*draw) (struct tObject *);
  12:c:\development\armassembler\code_lite\graphic_display\util\object.h ****     void                (*clear) (struct tObject *);
  13:c:\development\armassembler\code_lite\graphic_display\util\object.h ****     void                (*move) (struct tObject *);
  14:c:\development\armassembler\code_lite\graphic_display\util\object.h ****     void                (*set_speed) (struct tObject *, int8 speedx, int8 speedy);
  15:c:\development\armassembler\code_lite\graphic_display\util\object.h **** } Object, *ObjectPtr;
  16:c:\development\armassembler\code_lite\graphic_display\util\object.h **** 
  17:c:\development\armassembler\code_lite\graphic_display\util\object.h **** void set_object_speed(ObjectPtr obj, int8 speedx, int8 speedy)
  18:c:\development\armassembler\code_lite\graphic_display\util\object.h **** {
  25              		.loc 1 18 0
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
  37 0006 7860     		str	r0, [r7, #4]
  38 0008 0800     		movs	r0, r1
  39 000a 1100     		movs	r1, r2
  40 000c FB1C     		adds	r3, r7, #3
  41 000e 021C     		adds	r2, r0, #0
  42 0010 1A70     		strb	r2, [r3]
  43 0012 BB1C     		adds	r3, r7, #2
  44 0014 0A1C     		adds	r2, r1, #0
  45 0016 1A70     		strb	r2, [r3]
  19:c:\development\armassembler\code_lite\graphic_display\util\object.h ****     obj->dirx = speedx;
  46              		.loc 1 19 0
  47 0018 7B68     		ldr	r3, [r7, #4]
  48 001a FA1C     		adds	r2, r7, #3
  49 001c 1278     		ldrb	r2, [r2]
  50 001e 1A71     		strb	r2, [r3, #4]
  20:c:\development\armassembler\code_lite\graphic_display\util\object.h ****     obj->diry = speedy;
  51              		.loc 1 20 0
  52 0020 7B68     		ldr	r3, [r7, #4]
  53 0022 BA1C     		adds	r2, r7, #2
  54 0024 1278     		ldrb	r2, [r2]
  55 0026 5A71     		strb	r2, [r3, #5]
  21:c:\development\armassembler\code_lite\graphic_display\util\object.h **** }
  56              		.loc 1 21 0
  57 0028 C046     		nop
  58 002a BD46     		mov	sp, r7
  59 002c 02B0     		add	sp, sp, #8
  60              		@ sp needed
  61 002e 80BD     		pop	{r7, pc}
  62              		.cfi_endproc
  63              	.LFE0:
  65              		.align	1
  66              		.global	update_object
  67              		.syntax unified
  68              		.code	16
  69              		.thumb_func
  70              		.fpu softvfp
  72              	update_object:
  73              	.LFB1:
  22:c:\development\armassembler\code_lite\graphic_display\util\object.h **** 
  23:c:\development\armassembler\code_lite\graphic_display\util\object.h **** void update_object(ObjectPtr obj)
  24:c:\development\armassembler\code_lite\graphic_display\util\object.h **** {
  74              		.loc 1 24 0
  75              		.cfi_startproc
  76              		@ args = 0, pretend = 0, frame = 8
  77              		@ frame_needed = 1, uses_anonymous_args = 0
  78 0030 80B5     		push	{r7, lr}
  79              		.cfi_def_cfa_offset 8
  80              		.cfi_offset 7, -8
  81              		.cfi_offset 14, -4
  82 0032 82B0     		sub	sp, sp, #8
  83              		.cfi_def_cfa_offset 16
  84 0034 00AF     		add	r7, sp, #0
  85              		.cfi_def_cfa_register 7
  86 0036 7860     		str	r0, [r7, #4]
  25:c:\development\armassembler\code_lite\graphic_display\util\object.h ****     obj->clear(obj);
  87              		.loc 1 25 0
  88 0038 7B68     		ldr	r3, [r7, #4]
  89 003a DB68     		ldr	r3, [r3, #12]
  90 003c 7A68     		ldr	r2, [r7, #4]
  91 003e 1000     		movs	r0, r2
  92 0040 9847     		blx	r3
  93              	.LVL0:
  26:c:\development\armassembler\code_lite\graphic_display\util\object.h ****     obj->posx = obj->posx + obj->dirx;
  94              		.loc 1 26 0
  95 0042 7B68     		ldr	r3, [r7, #4]
  96 0044 9B79     		ldrb	r3, [r3, #6]
  97 0046 5BB2     		sxtb	r3, r3
  98 0048 DAB2     		uxtb	r2, r3
  99 004a 7B68     		ldr	r3, [r7, #4]
 100 004c 1B79     		ldrb	r3, [r3, #4]
 101 004e 5BB2     		sxtb	r3, r3
 102 0050 DBB2     		uxtb	r3, r3
 103 0052 D318     		adds	r3, r2, r3
 104 0054 DBB2     		uxtb	r3, r3
 105 0056 5AB2     		sxtb	r2, r3
 106 0058 7B68     		ldr	r3, [r7, #4]
 107 005a 9A71     		strb	r2, [r3, #6]
  27:c:\development\armassembler\code_lite\graphic_display\util\object.h ****     obj->posy = obj->posy + obj->diry;
 108              		.loc 1 27 0
 109 005c 7B68     		ldr	r3, [r7, #4]
 110 005e DB79     		ldrb	r3, [r3, #7]
 111 0060 5BB2     		sxtb	r3, r3
 112 0062 DAB2     		uxtb	r2, r3
 113 0064 7B68     		ldr	r3, [r7, #4]
 114 0066 5B79     		ldrb	r3, [r3, #5]
 115 0068 5BB2     		sxtb	r3, r3
 116 006a DBB2     		uxtb	r3, r3
 117 006c D318     		adds	r3, r2, r3
 118 006e DBB2     		uxtb	r3, r3
 119 0070 5AB2     		sxtb	r2, r3
 120 0072 7B68     		ldr	r3, [r7, #4]
 121 0074 DA71     		strb	r2, [r3, #7]
  28:c:\development\armassembler\code_lite\graphic_display\util\object.h **** 
  29:c:\development\armassembler\code_lite\graphic_display\util\object.h ****     if(obj->posx < 1 || obj->posx > 128)
 122              		.loc 1 29 0
 123 0076 7B68     		ldr	r3, [r7, #4]
 124 0078 9B79     		ldrb	r3, [r3, #6]
 125 007a 5BB2     		sxtb	r3, r3
 126 007c 002B     		cmp	r3, #0
 127 007e 08DC     		bgt	.L3
  30:c:\development\armassembler\code_lite\graphic_display\util\object.h ****         obj->dirx = -obj->dirx;
 128              		.loc 1 30 0
 129 0080 7B68     		ldr	r3, [r7, #4]
 130 0082 1B79     		ldrb	r3, [r3, #4]
 131 0084 5BB2     		sxtb	r3, r3
 132 0086 DBB2     		uxtb	r3, r3
 133 0088 5B42     		rsbs	r3, r3, #0
 134 008a DBB2     		uxtb	r3, r3
 135 008c 5AB2     		sxtb	r2, r3
 136 008e 7B68     		ldr	r3, [r7, #4]
 137 0090 1A71     		strb	r2, [r3, #4]
 138              	.L3:
  31:c:\development\armassembler\code_lite\graphic_display\util\object.h **** 
  32:c:\development\armassembler\code_lite\graphic_display\util\object.h ****     if(obj->posy < 1 || obj->posy > 64)
 139              		.loc 1 32 0
 140 0092 7B68     		ldr	r3, [r7, #4]
 141 0094 DB79     		ldrb	r3, [r3, #7]
 142 0096 5BB2     		sxtb	r3, r3
 143 0098 002B     		cmp	r3, #0
 144 009a 04DD     		ble	.L4
 145              		.loc 1 32 0 is_stmt 0 discriminator 1
 146 009c 7B68     		ldr	r3, [r7, #4]
 147 009e DB79     		ldrb	r3, [r3, #7]
 148 00a0 5BB2     		sxtb	r3, r3
 149 00a2 402B     		cmp	r3, #64
 150 00a4 08DD     		ble	.L5
 151              	.L4:
  33:c:\development\armassembler\code_lite\graphic_display\util\object.h ****         obj->diry = -obj->diry;
 152              		.loc 1 33 0 is_stmt 1
 153 00a6 7B68     		ldr	r3, [r7, #4]
 154 00a8 5B79     		ldrb	r3, [r3, #5]
 155 00aa 5BB2     		sxtb	r3, r3
 156 00ac DBB2     		uxtb	r3, r3
 157 00ae 5B42     		rsbs	r3, r3, #0
 158 00b0 DBB2     		uxtb	r3, r3
 159 00b2 5AB2     		sxtb	r2, r3
 160 00b4 7B68     		ldr	r3, [r7, #4]
 161 00b6 5A71     		strb	r2, [r3, #5]
 162              	.L5:
  34:c:\development\armassembler\code_lite\graphic_display\util\object.h **** 
  35:c:\development\armassembler\code_lite\graphic_display\util\object.h ****     obj->draw(obj);
 163              		.loc 1 35 0
 164 00b8 7B68     		ldr	r3, [r7, #4]
 165 00ba 9B68     		ldr	r3, [r3, #8]
 166 00bc 7A68     		ldr	r2, [r7, #4]
 167 00be 1000     		movs	r0, r2
 168 00c0 9847     		blx	r3
 169              	.LVL1:
  36:c:\development\armassembler\code_lite\graphic_display\util\object.h **** }
 170              		.loc 1 36 0
 171 00c2 C046     		nop
 172 00c4 BD46     		mov	sp, r7
 173 00c6 02B0     		add	sp, sp, #8
 174              		@ sp needed
 175 00c8 80BD     		pop	{r7, pc}
 176              		.cfi_endproc
 177              	.LFE1:
 179              		.section	.start_section,"ax",%progbits
 180              		.align	1
 181              		.global	startup
 182              		.syntax unified
 183              		.code	16
 184              		.thumb_func
 185              		.fpu softvfp
 187              	startup:
 188              	.LFB2:
 189              		.file 2 "C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display/sta
   1:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** #include "../../util/graphicdisplay.h"
   2:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** #include "../../util/gpio.h"
   3:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** #include "../../util/geometry.h"
   4:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** #include "../../util/object.h"
   5:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 
   6:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** /*
   7:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c ****  * 	startup.c
   8:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c ****  *
   9:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c ****  */
  10:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** void startup(void) __attribute__((naked)) __attribute__((section(".start_section")));
  11:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 
  12:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** void drawTest(void);
  13:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** void autopong(void);
  14:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 
  15:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** void clear_object(ObjectPtr obj);
  16:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** void draw_object(ObjectPtr obj);
  17:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 
  18:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** const Geometry ballGeometry = {
  19:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	12,
  20:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	4,4,
  21:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	(Point[MAX_POINTS]){	
  22:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 		// Going from left to right, 
  23:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 		// using y as the downward axis.
  24:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 		{0,1}, {0,2},
  25:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 		{1,0}, {1,1}, {1,2}, {1,3},
  26:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 		{2,0}, {2,1}, {2,2}, {2,3},
  27:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 		{3,1}, {3,2}
  28:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	}
  29:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** };
  30:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 
  31:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** Object ball = {
  32:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	&ballGeometry,
  33:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	1,1,
  34:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	64,32,
  35:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	draw_object,
  36:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	clear_object,
  37:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	update_object,
  38:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	set_object_speed
  39:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** };
  40:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 
  41:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 
  42:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** void startup(void)
  43:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** {
 190              		.loc 2 43 0
 191              		.cfi_startproc
 192              		@ Naked Function: prologue and epilogue provided by programmer.
 193              		@ args = 0, pretend = 0, frame = 0
 194              		@ frame_needed = 1, uses_anonymous_args = 0
  44:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	__asm volatile(
 195              		.loc 2 44 0
 196              		.syntax divided
 197              	@ 44 "C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display/startup
 198 0000 0248     		 LDR R0,=0x2001C000
 199 0002 8546     	 MOV SP,R0
 200 0004 FFF7FEFF 	 BL main
 201 0008 FEE7     	_exit: B .
 202              	
 203              	@ 0 "" 2
  45:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 		" LDR R0,=0x2001C000\n" /* set stack */
  46:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 		" MOV SP,R0\n"
  47:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 		" BL main\n"   /* call main */
  48:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 		"_exit: B .\n" /* never return */
  49:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	);
  50:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** }
 204              		.loc 2 50 0
 205              		.thumb
 206              		.syntax unified
 207 000a C046     		nop
 208              		.cfi_endproc
 209              	.LFE2:
 211              		.global	ballGeometry
 212              		.section	.rodata
 213              		.align	2
 216              	ballGeometry:
 217 0000 0C       		.byte	12
 218 0001 04       		.byte	4
 219 0002 04       		.byte	4
 220 0003 00       		.byte	0
 221 0004 01       		.byte	1
 222 0005 00       		.byte	0
 223 0006 02       		.byte	2
 224 0007 01       		.byte	1
 225 0008 00       		.byte	0
 226 0009 01       		.byte	1
 227 000a 01       		.byte	1
 228 000b 01       		.byte	1
 229 000c 02       		.byte	2
 230 000d 01       		.byte	1
 231 000e 03       		.byte	3
 232 000f 02       		.byte	2
 233 0010 00       		.byte	0
 234 0011 02       		.byte	2
 235 0012 01       		.byte	1
 236 0013 02       		.byte	2
 237 0014 02       		.byte	2
 238 0015 02       		.byte	2
 239 0016 03       		.byte	3
 240 0017 03       		.byte	3
 241 0018 01       		.byte	1
 242 0019 03       		.byte	3
 243 001a 02       		.byte	2
 244 001b 00000000 		.space	16
 244      00000000 
 244      00000000 
 244      00000000 
 245              		.global	ball
 246              		.data
 247              		.align	2
 250              	ball:
 251 0000 00000000 		.word	ballGeometry
 252 0004 01       		.byte	1
 253 0005 01       		.byte	1
 254 0006 40       		.byte	64
 255 0007 20       		.byte	32
 256 0008 00000000 		.word	draw_object
 257 000c 00000000 		.word	clear_object
 258 0010 00000000 		.word	update_object
 259 0014 00000000 		.word	set_object_speed
 260              		.text
 261              		.align	1
 262              		.global	init_app
 263              		.syntax unified
 264              		.code	16
 265              		.thumb_func
 266              		.fpu softvfp
 268              	init_app:
 269              	.LFB3:
  51:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 
  52:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** void init_app(void)
  53:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** {
 270              		.loc 2 53 0
 271              		.cfi_startproc
 272              		@ args = 0, pretend = 0, frame = 0
 273              		@ frame_needed = 1, uses_anonymous_args = 0
 274 00ca 80B5     		push	{r7, lr}
 275              		.cfi_def_cfa_offset 8
 276              		.cfi_offset 7, -8
 277              		.cfi_offset 14, -4
 278 00cc 00AF     		add	r7, sp, #0
 279              		.cfi_def_cfa_register 7
  54:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** #ifdef USBDM
  55:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	*((unsigned long *)0x40023830) = 0x18;
  56:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	__asm volatile(" LDR R0,=0x08000209\n BLX R0 \n");
  57:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** #endif
  58:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 
  59:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	GPIO_E.MODER = 0x55555555;
 280              		.loc 2 59 0
 281 00ce 034B     		ldr	r3, .L8
 282 00d0 034A     		ldr	r2, .L8+4
 283 00d2 1A60     		str	r2, [r3]
  60:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** }
 284              		.loc 2 60 0
 285 00d4 C046     		nop
 286 00d6 BD46     		mov	sp, r7
 287              		@ sp needed
 288 00d8 80BD     		pop	{r7, pc}
 289              	.L9:
 290 00da C046     		.align	2
 291              	.L8:
 292 00dc 00100240 		.word	1073876992
 293 00e0 55555555 		.word	1431655765
 294              		.cfi_endproc
 295              	.LFE3:
 297              		.align	1
 298              		.global	main
 299              		.syntax unified
 300              		.code	16
 301              		.thumb_func
 302              		.fpu softvfp
 304              	main:
 305              	.LFB4:
  61:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 
  62:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** void main(void)
  63:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** {
 306              		.loc 2 63 0
 307              		.cfi_startproc
 308              		@ args = 0, pretend = 0, frame = 0
 309              		@ frame_needed = 1, uses_anonymous_args = 0
 310 00e4 80B5     		push	{r7, lr}
 311              		.cfi_def_cfa_offset 8
 312              		.cfi_offset 7, -8
 313              		.cfi_offset 14, -4
 314 00e6 00AF     		add	r7, sp, #0
 315              		.cfi_def_cfa_register 7
  64:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	// Test for drawing display
  65:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	// drawTest();
  66:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 
  67:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	// Autopong
  68:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	autopong();
 316              		.loc 2 68 0
 317 00e8 FFF7FEFF 		bl	autopong
  69:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** }
 318              		.loc 2 69 0
 319 00ec C046     		nop
 320 00ee BD46     		mov	sp, r7
 321              		@ sp needed
 322 00f0 80BD     		pop	{r7, pc}
 323              		.cfi_endproc
 324              	.LFE4:
 326              		.align	1
 327              		.global	autopong
 328              		.syntax unified
 329              		.code	16
 330              		.thumb_func
 331              		.fpu softvfp
 333              	autopong:
 334              	.LFB5:
  70:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 
  71:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** void autopong(void)
  72:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** {
 335              		.loc 2 72 0
 336              		.cfi_startproc
 337              		@ args = 0, pretend = 0, frame = 8
 338              		@ frame_needed = 1, uses_anonymous_args = 0
 339 00f2 80B5     		push	{r7, lr}
 340              		.cfi_def_cfa_offset 8
 341              		.cfi_offset 7, -8
 342              		.cfi_offset 14, -4
 343 00f4 82B0     		sub	sp, sp, #8
 344              		.cfi_def_cfa_offset 16
 345 00f6 00AF     		add	r7, sp, #0
 346              		.cfi_def_cfa_register 7
  73:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	ObjectPtr ballerBall = &ball;
 347              		.loc 2 73 0
 348 00f8 0A4B     		ldr	r3, .L13
 349 00fa 7B60     		str	r3, [r7, #4]
  74:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	init_app();
 350              		.loc 2 74 0
 351 00fc FFF7FEFF 		bl	init_app
  75:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	graphic_initialize();
 352              		.loc 2 75 0
 353 0100 FFF7FEFF 		bl	graphic_initialize
  76:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 
  77:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** #ifndef SIMULATOR
  78:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	graphic_clear_screen();
  79:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** #endif
  80:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 
  81:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	ballerBall->set_speed(ballerBall, 4, 1);
 354              		.loc 2 81 0
 355 0104 7B68     		ldr	r3, [r7, #4]
 356 0106 5B69     		ldr	r3, [r3, #20]
 357 0108 7868     		ldr	r0, [r7, #4]
 358 010a 0122     		movs	r2, #1
 359 010c 0421     		movs	r1, #4
 360 010e 9847     		blx	r3
 361              	.LVL2:
 362              	.L12:
 363              	.LBB2:
  82:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 
  83:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	while(TRUE)
  84:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	{
  85:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 		ballerBall->move(ballerBall);
 364              		.loc 2 85 0 discriminator 1
 365 0110 7B68     		ldr	r3, [r7, #4]
 366 0112 1B69     		ldr	r3, [r3, #16]
 367 0114 7A68     		ldr	r2, [r7, #4]
 368 0116 1000     		movs	r0, r2
 369 0118 9847     		blx	r3
 370              	.LVL3:
  86:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 		delay_milli(40);
 371              		.loc 2 86 0 discriminator 1
 372 011a 2820     		movs	r0, #40
 373 011c FFF7FEFF 		bl	delay_milli
 374              	.LBE2:
  84:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 		ballerBall->move(ballerBall);
 375              		.loc 2 84 0 discriminator 1
 376 0120 F6E7     		b	.L12
 377              	.L14:
 378 0122 C046     		.align	2
 379              	.L13:
 380 0124 00000000 		.word	ball
 381              		.cfi_endproc
 382              	.LFE5:
 384              		.align	1
 385              		.global	drawTest
 386              		.syntax unified
 387              		.code	16
 388              		.thumb_func
 389              		.fpu softvfp
 391              	drawTest:
 392              	.LFB6:
  87:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	}
  88:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** }
  89:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 
  90:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** void drawTest(void)
  91:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** {
 393              		.loc 2 91 0
 394              		.cfi_startproc
 395              		@ args = 0, pretend = 0, frame = 8
 396              		@ frame_needed = 1, uses_anonymous_args = 0
 397 0128 80B5     		push	{r7, lr}
 398              		.cfi_def_cfa_offset 8
 399              		.cfi_offset 7, -8
 400              		.cfi_offset 14, -4
 401 012a 82B0     		sub	sp, sp, #8
 402              		.cfi_def_cfa_offset 16
 403 012c 00AF     		add	r7, sp, #0
 404              		.cfi_def_cfa_register 7
  92:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	uint32 i;
  93:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	init_app();
 405              		.loc 2 93 0
 406 012e FFF7FEFF 		bl	init_app
  94:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	graphic_initialize();
 407              		.loc 2 94 0
 408 0132 FFF7FEFF 		bl	graphic_initialize
  95:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 
  96:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** #ifndef SIMULATOR
  97:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	graphic_clear_screen();
  98:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** #endif
  99:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 
 100:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	for (i = 0; i < 128; i++)
 409              		.loc 2 100 0
 410 0136 0023     		movs	r3, #0
 411 0138 7B60     		str	r3, [r7, #4]
 412 013a 09E0     		b	.L16
 413              	.L17:
 101:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	{
 102:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 		pixel(i, 10, 1);
 414              		.loc 2 102 0 discriminator 3
 415 013c 7B68     		ldr	r3, [r7, #4]
 416 013e DBB2     		uxtb	r3, r3
 417 0140 0122     		movs	r2, #1
 418 0142 0A21     		movs	r1, #10
 419 0144 1800     		movs	r0, r3
 420 0146 FFF7FEFF 		bl	pixel
 100:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	{
 421              		.loc 2 100 0 discriminator 3
 422 014a 7B68     		ldr	r3, [r7, #4]
 423 014c 0133     		adds	r3, r3, #1
 424 014e 7B60     		str	r3, [r7, #4]
 425              	.L16:
 100:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	{
 426              		.loc 2 100 0 is_stmt 0 discriminator 1
 427 0150 7B68     		ldr	r3, [r7, #4]
 428 0152 7F2B     		cmp	r3, #127
 429 0154 F2D9     		bls	.L17
 103:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	}
 104:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	for (i = 0; i < 64; i++)
 430              		.loc 2 104 0 is_stmt 1
 431 0156 0023     		movs	r3, #0
 432 0158 7B60     		str	r3, [r7, #4]
 433 015a 09E0     		b	.L18
 434              	.L19:
 105:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	{
 106:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 		pixel(10, i, 1);
 435              		.loc 2 106 0 discriminator 3
 436 015c 7B68     		ldr	r3, [r7, #4]
 437 015e DBB2     		uxtb	r3, r3
 438 0160 0122     		movs	r2, #1
 439 0162 1900     		movs	r1, r3
 440 0164 0A20     		movs	r0, #10
 441 0166 FFF7FEFF 		bl	pixel
 104:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	{
 442              		.loc 2 104 0 discriminator 3
 443 016a 7B68     		ldr	r3, [r7, #4]
 444 016c 0133     		adds	r3, r3, #1
 445 016e 7B60     		str	r3, [r7, #4]
 446              	.L18:
 104:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	{
 447              		.loc 2 104 0 is_stmt 0 discriminator 1
 448 0170 7B68     		ldr	r3, [r7, #4]
 449 0172 3F2B     		cmp	r3, #63
 450 0174 F2D9     		bls	.L19
 107:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	}
 108:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 
 109:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	delay_milli(500);
 451              		.loc 2 109 0 is_stmt 1
 452 0176 FA23     		movs	r3, #250
 453 0178 5B00     		lsls	r3, r3, #1
 454 017a 1800     		movs	r0, r3
 455 017c FFF7FEFF 		bl	delay_milli
 110:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 
 111:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	for (i = 0; i < 128; i++)
 456              		.loc 2 111 0
 457 0180 0023     		movs	r3, #0
 458 0182 7B60     		str	r3, [r7, #4]
 459 0184 09E0     		b	.L20
 460              	.L21:
 112:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	{
 113:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 		pixel(i, 10, 0);
 461              		.loc 2 113 0 discriminator 3
 462 0186 7B68     		ldr	r3, [r7, #4]
 463 0188 DBB2     		uxtb	r3, r3
 464 018a 0022     		movs	r2, #0
 465 018c 0A21     		movs	r1, #10
 466 018e 1800     		movs	r0, r3
 467 0190 FFF7FEFF 		bl	pixel
 111:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	{
 468              		.loc 2 111 0 discriminator 3
 469 0194 7B68     		ldr	r3, [r7, #4]
 470 0196 0133     		adds	r3, r3, #1
 471 0198 7B60     		str	r3, [r7, #4]
 472              	.L20:
 111:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	{
 473              		.loc 2 111 0 is_stmt 0 discriminator 1
 474 019a 7B68     		ldr	r3, [r7, #4]
 475 019c 7F2B     		cmp	r3, #127
 476 019e F2D9     		bls	.L21
 114:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	}
 115:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	for (i = 0; i < 64; i++)
 477              		.loc 2 115 0 is_stmt 1
 478 01a0 0023     		movs	r3, #0
 479 01a2 7B60     		str	r3, [r7, #4]
 480 01a4 09E0     		b	.L22
 481              	.L23:
 116:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	{
 117:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 		pixel(10, i, 0);
 482              		.loc 2 117 0 discriminator 3
 483 01a6 7B68     		ldr	r3, [r7, #4]
 484 01a8 DBB2     		uxtb	r3, r3
 485 01aa 0022     		movs	r2, #0
 486 01ac 1900     		movs	r1, r3
 487 01ae 0A20     		movs	r0, #10
 488 01b0 FFF7FEFF 		bl	pixel
 115:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	{
 489              		.loc 2 115 0 discriminator 3
 490 01b4 7B68     		ldr	r3, [r7, #4]
 491 01b6 0133     		adds	r3, r3, #1
 492 01b8 7B60     		str	r3, [r7, #4]
 493              	.L22:
 115:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	{
 494              		.loc 2 115 0 is_stmt 0 discriminator 1
 495 01ba 7B68     		ldr	r3, [r7, #4]
 496 01bc 3F2B     		cmp	r3, #63
 497 01be F2D9     		bls	.L23
 118:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	}
 119:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** }
 498              		.loc 2 119 0 is_stmt 1
 499 01c0 C046     		nop
 500 01c2 BD46     		mov	sp, r7
 501 01c4 02B0     		add	sp, sp, #8
 502              		@ sp needed
 503 01c6 80BD     		pop	{r7, pc}
 504              		.cfi_endproc
 505              	.LFE6:
 507              		.align	1
 508              		.global	clear_object
 509              		.syntax unified
 510              		.code	16
 511              		.thumb_func
 512              		.fpu softvfp
 514              	clear_object:
 515              	.LFB7:
 120:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 
 121:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** void clear_object (ObjectPtr obj)
 122:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** {	
 516              		.loc 2 122 0
 517              		.cfi_startproc
 518              		@ args = 0, pretend = 0, frame = 24
 519              		@ frame_needed = 1, uses_anonymous_args = 0
 520 01c8 80B5     		push	{r7, lr}
 521              		.cfi_def_cfa_offset 8
 522              		.cfi_offset 7, -8
 523              		.cfi_offset 14, -4
 524 01ca 86B0     		sub	sp, sp, #24
 525              		.cfi_def_cfa_offset 32
 526 01cc 00AF     		add	r7, sp, #0
 527              		.cfi_def_cfa_register 7
 528 01ce 7860     		str	r0, [r7, #4]
 123:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	GeometryPtr objectGeometry = obj->geo;
 529              		.loc 2 123 0
 530 01d0 7B68     		ldr	r3, [r7, #4]
 531 01d2 1B68     		ldr	r3, [r3]
 532 01d4 3B61     		str	r3, [r7, #16]
 124:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	uint8 dimensionSize = objectGeometry->numpoints;
 533              		.loc 2 124 0
 534 01d6 0F23     		movs	r3, #15
 535 01d8 FB18     		adds	r3, r7, r3
 536 01da 3A69     		ldr	r2, [r7, #16]
 537 01dc 1278     		ldrb	r2, [r2]
 538 01de 1A70     		strb	r2, [r3]
 539              	.LBB3:
 125:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	
 126:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	for(int i = 0; i < dimensionSize; i++)
 540              		.loc 2 126 0
 541 01e0 0023     		movs	r3, #0
 542 01e2 7B61     		str	r3, [r7, #20]
 543 01e4 25E0     		b	.L25
 544              	.L26:
 545              	.LBB4:
 127:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	{
 128:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 		Point objectPixel = objectGeometry->px[i];
 546              		.loc 2 128 0 discriminator 3
 547 01e6 0C23     		movs	r3, #12
 548 01e8 F818     		adds	r0, r7, r3
 549 01ea 3A69     		ldr	r2, [r7, #16]
 550 01ec 7B69     		ldr	r3, [r7, #20]
 551 01ee 5B00     		lsls	r3, r3, #1
 552 01f0 0321     		movs	r1, #3
 553 01f2 D318     		adds	r3, r2, r3
 554 01f4 5B18     		adds	r3, r3, r1
 555 01f6 1900     		movs	r1, r3
 556 01f8 0223     		movs	r3, #2
 557 01fa 1A00     		movs	r2, r3
 558 01fc FFF7FEFF 		bl	memcpy
 129:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 		pixel(obj->posx + objectPixel.x, obj->posy + objectPixel.y, 0);
 559              		.loc 2 129 0 discriminator 3
 560 0200 7B68     		ldr	r3, [r7, #4]
 561 0202 9B79     		ldrb	r3, [r3, #6]
 562 0204 5BB2     		sxtb	r3, r3
 563 0206 DAB2     		uxtb	r2, r3
 564 0208 0C23     		movs	r3, #12
 565 020a FB18     		adds	r3, r7, r3
 566 020c 1B78     		ldrb	r3, [r3]
 567 020e D318     		adds	r3, r2, r3
 568 0210 D8B2     		uxtb	r0, r3
 569 0212 7B68     		ldr	r3, [r7, #4]
 570 0214 DB79     		ldrb	r3, [r3, #7]
 571 0216 5BB2     		sxtb	r3, r3
 572 0218 DAB2     		uxtb	r2, r3
 573 021a 0C23     		movs	r3, #12
 574 021c FB18     		adds	r3, r7, r3
 575 021e 5B78     		ldrb	r3, [r3, #1]
 576 0220 D318     		adds	r3, r2, r3
 577 0222 DBB2     		uxtb	r3, r3
 578 0224 0022     		movs	r2, #0
 579 0226 1900     		movs	r1, r3
 580 0228 FFF7FEFF 		bl	pixel
 581              	.LBE4:
 126:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	{
 582              		.loc 2 126 0 discriminator 3
 583 022c 7B69     		ldr	r3, [r7, #20]
 584 022e 0133     		adds	r3, r3, #1
 585 0230 7B61     		str	r3, [r7, #20]
 586              	.L25:
 126:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	{
 587              		.loc 2 126 0 is_stmt 0 discriminator 1
 588 0232 0F23     		movs	r3, #15
 589 0234 FB18     		adds	r3, r7, r3
 590 0236 1A78     		ldrb	r2, [r3]
 591 0238 7B69     		ldr	r3, [r7, #20]
 592 023a 9A42     		cmp	r2, r3
 593 023c D3DC     		bgt	.L26
 594              	.LBE3:
 130:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	}
 131:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** }
 595              		.loc 2 131 0 is_stmt 1
 596 023e C046     		nop
 597 0240 BD46     		mov	sp, r7
 598 0242 06B0     		add	sp, sp, #24
 599              		@ sp needed
 600 0244 80BD     		pop	{r7, pc}
 601              		.cfi_endproc
 602              	.LFE7:
 604              		.align	1
 605              		.global	draw_object
 606              		.syntax unified
 607              		.code	16
 608              		.thumb_func
 609              		.fpu softvfp
 611              	draw_object:
 612              	.LFB8:
 132:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 
 133:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** void draw_object (ObjectPtr obj)
 134:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** {	
 613              		.loc 2 134 0
 614              		.cfi_startproc
 615              		@ args = 0, pretend = 0, frame = 24
 616              		@ frame_needed = 1, uses_anonymous_args = 0
 617 0246 80B5     		push	{r7, lr}
 618              		.cfi_def_cfa_offset 8
 619              		.cfi_offset 7, -8
 620              		.cfi_offset 14, -4
 621 0248 86B0     		sub	sp, sp, #24
 622              		.cfi_def_cfa_offset 32
 623 024a 00AF     		add	r7, sp, #0
 624              		.cfi_def_cfa_register 7
 625 024c 7860     		str	r0, [r7, #4]
 135:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	GeometryPtr objectGeometry = obj->geo;
 626              		.loc 2 135 0
 627 024e 7B68     		ldr	r3, [r7, #4]
 628 0250 1B68     		ldr	r3, [r3]
 629 0252 3B61     		str	r3, [r7, #16]
 136:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	uint8 dimensionSize = objectGeometry->numpoints;
 630              		.loc 2 136 0
 631 0254 0F23     		movs	r3, #15
 632 0256 FB18     		adds	r3, r7, r3
 633 0258 3A69     		ldr	r2, [r7, #16]
 634 025a 1278     		ldrb	r2, [r2]
 635 025c 1A70     		strb	r2, [r3]
 636              	.LBB5:
 137:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	
 138:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	for(int i = 0; i < dimensionSize; i++)
 637              		.loc 2 138 0
 638 025e 0023     		movs	r3, #0
 639 0260 7B61     		str	r3, [r7, #20]
 640 0262 25E0     		b	.L28
 641              	.L29:
 642              	.LBB6:
 139:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	{
 140:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 		Point objectPixel = objectGeometry->px[i];
 643              		.loc 2 140 0 discriminator 3
 644 0264 0C23     		movs	r3, #12
 645 0266 F818     		adds	r0, r7, r3
 646 0268 3A69     		ldr	r2, [r7, #16]
 647 026a 7B69     		ldr	r3, [r7, #20]
 648 026c 5B00     		lsls	r3, r3, #1
 649 026e 0321     		movs	r1, #3
 650 0270 D318     		adds	r3, r2, r3
 651 0272 5B18     		adds	r3, r3, r1
 652 0274 1900     		movs	r1, r3
 653 0276 0223     		movs	r3, #2
 654 0278 1A00     		movs	r2, r3
 655 027a FFF7FEFF 		bl	memcpy
 141:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 		pixel(obj->posx + objectPixel.x, obj->posy + objectPixel.y, 1);
 656              		.loc 2 141 0 discriminator 3
 657 027e 7B68     		ldr	r3, [r7, #4]
 658 0280 9B79     		ldrb	r3, [r3, #6]
 659 0282 5BB2     		sxtb	r3, r3
 660 0284 DAB2     		uxtb	r2, r3
 661 0286 0C23     		movs	r3, #12
 662 0288 FB18     		adds	r3, r7, r3
 663 028a 1B78     		ldrb	r3, [r3]
 664 028c D318     		adds	r3, r2, r3
 665 028e D8B2     		uxtb	r0, r3
 666 0290 7B68     		ldr	r3, [r7, #4]
 667 0292 DB79     		ldrb	r3, [r3, #7]
 668 0294 5BB2     		sxtb	r3, r3
 669 0296 DAB2     		uxtb	r2, r3
 670 0298 0C23     		movs	r3, #12
 671 029a FB18     		adds	r3, r7, r3
 672 029c 5B78     		ldrb	r3, [r3, #1]
 673 029e D318     		adds	r3, r2, r3
 674 02a0 DBB2     		uxtb	r3, r3
 675 02a2 0122     		movs	r2, #1
 676 02a4 1900     		movs	r1, r3
 677 02a6 FFF7FEFF 		bl	pixel
 678              	.LBE6:
 138:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	{
 679              		.loc 2 138 0 discriminator 3
 680 02aa 7B69     		ldr	r3, [r7, #20]
 681 02ac 0133     		adds	r3, r3, #1
 682 02ae 7B61     		str	r3, [r7, #20]
 683              	.L28:
 138:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	{
 684              		.loc 2 138 0 is_stmt 0 discriminator 1
 685 02b0 0F23     		movs	r3, #15
 686 02b2 FB18     		adds	r3, r7, r3
 687 02b4 1A78     		ldrb	r2, [r3]
 688 02b6 7B69     		ldr	r3, [r7, #20]
 689 02b8 9A42     		cmp	r2, r3
 690 02ba D3DC     		bgt	.L29
 691              	.LBE5:
 142:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	}
 143:C:/development/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** }...
 692              		.loc 2 143 0 is_stmt 1
 693 02bc C046     		nop
 694 02be BD46     		mov	sp, r7
 695 02c0 06B0     		add	sp, sp, #24
 696              		@ sp needed
 697 02c2 80BD     		pop	{r7, pc}
 698              		.cfi_endproc
 699              	.LFE8:
 701              	.Letext0:
 702              		.file 3 "c:\\development\\armassembler\\code_lite\\graphic_display\\util\\types.h"
 703              		.file 4 "c:\\development\\armassembler\\code_lite\\graphic_display\\util\\gpio.h"
 704              		.file 5 "c:\\development\\armassembler\\code_lite\\graphic_display\\util\\geometry.h"

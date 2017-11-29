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
  24              		.file 1 "C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_dis
   1:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\object.h **** #include "geometry.h"
   2:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\object.h **** 
   3:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\object.h **** #ifndef OBJECT_H
   4:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\object.h **** #define OBJECT_H
   5:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\object.h **** 
   6:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\object.h **** typedef struct tObject
   7:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\object.h **** {
   8:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\object.h ****     GeometryPtr         geo;
   9:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\object.h ****     int8                dirx, diry;
  10:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\object.h ****     int8                posx, posy;
  11:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\object.h ****     void                (*draw) (struct tObject *);
  12:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\object.h ****     void                (*clear) (struct tObject *);
  13:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\object.h ****     void                (*move) (struct tObject *);
  14:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\object.h ****     void                (*set_speed) (struct tObject *, int8 speedx, int8 speedy);
  15:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\object.h **** } Object, *ObjectPtr;
  16:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\object.h **** 
  17:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\object.h **** void set_object_speed(ObjectPtr obj, int8 speedx, int8 speedy)
  18:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\object.h **** {
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
  19:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\object.h ****     obj->dirx = speedx;
  46              		.loc 1 19 0
  47 0018 7B68     		ldr	r3, [r7, #4]
  48 001a FA1C     		adds	r2, r7, #3
  49 001c 1278     		ldrb	r2, [r2]
  50 001e 1A71     		strb	r2, [r3, #4]
  20:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\object.h ****     obj->diry = speedy;
  51              		.loc 1 20 0
  52 0020 7B68     		ldr	r3, [r7, #4]
  53 0022 BA1C     		adds	r2, r7, #2
  54 0024 1278     		ldrb	r2, [r2]
  55 0026 5A71     		strb	r2, [r3, #5]
  21:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\object.h **** }
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
  22:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\object.h **** 
  23:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\object.h **** void update_object(ObjectPtr obj)
  24:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\object.h **** {
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
  25:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\object.h ****     obj->clear(obj);
  87              		.loc 1 25 0
  88 0038 7B68     		ldr	r3, [r7, #4]
  89 003a DB68     		ldr	r3, [r3, #12]
  90 003c 7A68     		ldr	r2, [r7, #4]
  91 003e 1000     		movs	r0, r2
  92 0040 9847     		blx	r3
  93              	.LVL0:
  26:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\object.h ****     obj->posx = obj->posx + obj->dirx;
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
  27:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\object.h ****     obj->posy = obj->posy + obj->diry;
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
  28:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\object.h **** 
  29:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\object.h ****     if(obj->posx < 1 || obj->posx + obj->geo->sizex > 128)
 122              		.loc 1 29 0
 123 0076 7B68     		ldr	r3, [r7, #4]
 124 0078 9B79     		ldrb	r3, [r3, #6]
 125 007a 5BB2     		sxtb	r3, r3
 126 007c 002B     		cmp	r3, #0
 127 007e 09DD     		ble	.L3
 128              		.loc 1 29 0 is_stmt 0 discriminator 1
 129 0080 7B68     		ldr	r3, [r7, #4]
 130 0082 9B79     		ldrb	r3, [r3, #6]
 131 0084 5BB2     		sxtb	r3, r3
 132 0086 1A00     		movs	r2, r3
 133 0088 7B68     		ldr	r3, [r7, #4]
 134 008a 1B68     		ldr	r3, [r3]
 135 008c 5B78     		ldrb	r3, [r3, #1]
 136 008e D318     		adds	r3, r2, r3
 137 0090 802B     		cmp	r3, #128
 138 0092 08DD     		ble	.L4
 139              	.L3:
  30:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\object.h ****         obj->dirx = -obj->dirx;
 140              		.loc 1 30 0 is_stmt 1
 141 0094 7B68     		ldr	r3, [r7, #4]
 142 0096 1B79     		ldrb	r3, [r3, #4]
 143 0098 5BB2     		sxtb	r3, r3
 144 009a DBB2     		uxtb	r3, r3
 145 009c 5B42     		rsbs	r3, r3, #0
 146 009e DBB2     		uxtb	r3, r3
 147 00a0 5AB2     		sxtb	r2, r3
 148 00a2 7B68     		ldr	r3, [r7, #4]
 149 00a4 1A71     		strb	r2, [r3, #4]
 150              	.L4:
  31:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\object.h **** 
  32:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\object.h ****     if(obj->posy < 1 || obj->posy + obj->geo->sizey > 64)
 151              		.loc 1 32 0
 152 00a6 7B68     		ldr	r3, [r7, #4]
 153 00a8 DB79     		ldrb	r3, [r3, #7]
 154 00aa 5BB2     		sxtb	r3, r3
 155 00ac 002B     		cmp	r3, #0
 156 00ae 09DD     		ble	.L5
 157              		.loc 1 32 0 is_stmt 0 discriminator 1
 158 00b0 7B68     		ldr	r3, [r7, #4]
 159 00b2 DB79     		ldrb	r3, [r3, #7]
 160 00b4 5BB2     		sxtb	r3, r3
 161 00b6 1A00     		movs	r2, r3
 162 00b8 7B68     		ldr	r3, [r7, #4]
 163 00ba 1B68     		ldr	r3, [r3]
 164 00bc 9B78     		ldrb	r3, [r3, #2]
 165 00be D318     		adds	r3, r2, r3
 166 00c0 402B     		cmp	r3, #64
 167 00c2 08DD     		ble	.L6
 168              	.L5:
  33:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\object.h ****         obj->diry = -obj->diry;
 169              		.loc 1 33 0 is_stmt 1
 170 00c4 7B68     		ldr	r3, [r7, #4]
 171 00c6 5B79     		ldrb	r3, [r3, #5]
 172 00c8 5BB2     		sxtb	r3, r3
 173 00ca DBB2     		uxtb	r3, r3
 174 00cc 5B42     		rsbs	r3, r3, #0
 175 00ce DBB2     		uxtb	r3, r3
 176 00d0 5AB2     		sxtb	r2, r3
 177 00d2 7B68     		ldr	r3, [r7, #4]
 178 00d4 5A71     		strb	r2, [r3, #5]
 179              	.L6:
  34:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\object.h **** 
  35:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\object.h ****     obj->draw(obj);
 180              		.loc 1 35 0
 181 00d6 7B68     		ldr	r3, [r7, #4]
 182 00d8 9B68     		ldr	r3, [r3, #8]
 183 00da 7A68     		ldr	r2, [r7, #4]
 184 00dc 1000     		movs	r0, r2
 185 00de 9847     		blx	r3
 186              	.LVL1:
  36:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\object.h **** }
 187              		.loc 1 36 0
 188 00e0 C046     		nop
 189 00e2 BD46     		mov	sp, r7
 190 00e4 02B0     		add	sp, sp, #8
 191              		@ sp needed
 192 00e6 80BD     		pop	{r7, pc}
 193              		.cfi_endproc
 194              	.LFE1:
 196              		.section	.start_section,"ax",%progbits
 197              		.align	1
 198              		.global	startup
 199              		.syntax unified
 200              		.code	16
 201              		.thumb_func
 202              		.fpu softvfp
 204              	startup:
 205              	.LFB2:
 206              		.file 2 "C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_dis
   1:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** #include "graphicdisplay.h"
   2:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** #include "gpio.h"
   3:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** #include "geometry.h"
   4:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** #include "object.h"
   5:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 
   6:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** #define SPEED 3
   7:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 
   8:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** /*
   9:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c ****  * 	startup.c
  10:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c ****  *
  11:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c ****  */
  12:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** void startup(void) __attribute__((naked)) __attribute__((section(".start_section")));
  13:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 
  14:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** void drawTest(void);
  15:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** void autopong(void);
  16:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** void ballSteering(void);
  17:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** uint8 keyb(void);
  18:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 
  19:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** void clear_object(ObjectPtr obj);
  20:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** void draw_object(ObjectPtr obj);
  21:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 
  22:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** const Geometry ballGeometry = {
  23:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	12,
  24:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	4,4,
  25:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	(Point[MAX_POINTS]){	
  26:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 		// Going from left to right, 
  27:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 		// using y as the downward axis.
  28:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 		{0,1}, {0,2},
  29:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 		{1,0}, {1,1}, {1,2}, {1,3},
  30:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 		{2,0}, {2,1}, {2,2}, {2,3},
  31:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 		{3,1}, {3,2}
  32:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	}
  33:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** };
  34:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 
  35:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** Object ball = {
  36:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	&ballGeometry,
  37:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	1,1,
  38:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	64,32,
  39:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	draw_object,
  40:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	clear_object,
  41:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	update_object,
  42:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	set_object_speed
  43:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** };
  44:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 
  45:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 
  46:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** void startup(void)
  47:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** {
 207              		.loc 2 47 0
 208              		.cfi_startproc
 209              		@ Naked Function: prologue and epilogue provided by programmer.
 210              		@ args = 0, pretend = 0, frame = 0
 211              		@ frame_needed = 1, uses_anonymous_args = 0
  48:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	__asm volatile(
 212              		.loc 2 48 0
 213              		.syntax divided
 214              	@ 48 "C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display
 215 0000 0248     		 LDR R0,=0x2001C000
 216 0002 8546     	 MOV SP,R0
 217 0004 FFF7FEFF 	 BL main
 218 0008 FEE7     	_exit: B .
 219              	
 220              	@ 0 "" 2
  49:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 		" LDR R0,=0x2001C000\n" /* set stack */
  50:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 		" MOV SP,R0\n"
  51:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 		" BL main\n"   /* call main */
  52:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 		"_exit: B .\n" /* never return */
  53:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	);
  54:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** }
 221              		.loc 2 54 0
 222              		.thumb
 223              		.syntax unified
 224 000a C046     		nop
 225              		.cfi_endproc
 226              	.LFE2:
 228              		.global	ballGeometry
 229              		.section	.rodata
 230              		.align	2
 233              	ballGeometry:
 234 0000 0C       		.byte	12
 235 0001 04       		.byte	4
 236 0002 04       		.byte	4
 237 0003 00       		.byte	0
 238 0004 01       		.byte	1
 239 0005 00       		.byte	0
 240 0006 02       		.byte	2
 241 0007 01       		.byte	1
 242 0008 00       		.byte	0
 243 0009 01       		.byte	1
 244 000a 01       		.byte	1
 245 000b 01       		.byte	1
 246 000c 02       		.byte	2
 247 000d 01       		.byte	1
 248 000e 03       		.byte	3
 249 000f 02       		.byte	2
 250 0010 00       		.byte	0
 251 0011 02       		.byte	2
 252 0012 01       		.byte	1
 253 0013 02       		.byte	2
 254 0014 02       		.byte	2
 255 0015 02       		.byte	2
 256 0016 03       		.byte	3
 257 0017 03       		.byte	3
 258 0018 01       		.byte	1
 259 0019 03       		.byte	3
 260 001a 02       		.byte	2
 261 001b 00000000 		.space	16
 261      00000000 
 261      00000000 
 261      00000000 
 262              		.global	ball
 263              		.data
 264              		.align	2
 267              	ball:
 268 0000 00000000 		.word	ballGeometry
 269 0004 01       		.byte	1
 270 0005 01       		.byte	1
 271 0006 40       		.byte	64
 272 0007 20       		.byte	32
 273 0008 00000000 		.word	draw_object
 274 000c 00000000 		.word	clear_object
 275 0010 00000000 		.word	update_object
 276 0014 00000000 		.word	set_object_speed
 277              		.text
 278              		.align	1
 279              		.global	init_app
 280              		.syntax unified
 281              		.code	16
 282              		.thumb_func
 283              		.fpu softvfp
 285              	init_app:
 286              	.LFB3:
  55:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 
  56:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** void init_app(void)
  57:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** {
 287              		.loc 2 57 0
 288              		.cfi_startproc
 289              		@ args = 0, pretend = 0, frame = 0
 290              		@ frame_needed = 1, uses_anonymous_args = 0
 291 00e8 80B5     		push	{r7, lr}
 292              		.cfi_def_cfa_offset 8
 293              		.cfi_offset 7, -8
 294              		.cfi_offset 14, -4
 295 00ea 00AF     		add	r7, sp, #0
 296              		.cfi_def_cfa_register 7
  58:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** #ifdef USBDM
  59:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	*((unsigned long *)0x40023830) = 0x18;
 297              		.loc 2 59 0
 298 00ec 134B     		ldr	r3, .L9
 299 00ee 1822     		movs	r2, #24
 300 00f0 1A60     		str	r2, [r3]
  60:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	__asm volatile(" LDR R0,=0x08000209\n BLX R0 \n");
 301              		.loc 2 60 0
 302              		.syntax divided
 303              	@ 60 "C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display
 304 00f2 F148     		 LDR R0,=0x08000209
 305 00f4 8047     	 BLX R0 
 306              	
 307              	@ 0 "" 2
  61:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** #endif
  62:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 
  63:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	GPIO_E.MODER = 0x55555555;
 308              		.loc 2 63 0
 309              		.thumb
 310              		.syntax unified
 311 00f6 124B     		ldr	r3, .L9+4
 312 00f8 124A     		ldr	r2, .L9+8
 313 00fa 1A60     		str	r2, [r3]
  64:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	GPIO_E.OSPEEDR = 0x55555555;
 314              		.loc 2 64 0
 315 00fc 104B     		ldr	r3, .L9+4
 316 00fe 114A     		ldr	r2, .L9+8
 317 0100 9A60     		str	r2, [r3, #8]
  65:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	GPIO_E.OTYPER = 0x0;
 318              		.loc 2 65 0
 319 0102 0F4B     		ldr	r3, .L9+4
 320 0104 0022     		movs	r2, #0
 321 0106 9A80     		strh	r2, [r3, #4]
  66:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	
  67:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	GPIO_D.MODER = 0x55000000;
 322              		.loc 2 67 0
 323 0108 0F4B     		ldr	r3, .L9+12
 324 010a AA22     		movs	r2, #170
 325 010c D205     		lsls	r2, r2, #23
 326 010e 1A60     		str	r2, [r3]
  68:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	GPIO_D.OTYPER &= 0x0000;
 327              		.loc 2 68 0
 328 0110 0D4B     		ldr	r3, .L9+12
 329 0112 9B88     		ldrh	r3, [r3, #4]
 330 0114 0C4B     		ldr	r3, .L9+12
 331 0116 0022     		movs	r2, #0
 332 0118 9A80     		strh	r2, [r3, #4]
  69:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	GPIO_D.PUPDR &= 0x0000FFFF;
 333              		.loc 2 69 0
 334 011a 0B4B     		ldr	r3, .L9+12
 335 011c 0A4A     		ldr	r2, .L9+12
 336 011e D268     		ldr	r2, [r2, #12]
 337 0120 1204     		lsls	r2, r2, #16
 338 0122 120C     		lsrs	r2, r2, #16
 339 0124 DA60     		str	r2, [r3, #12]
  70:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	GPIO_D.PUPDR |= 0x00AA0000;
 340              		.loc 2 70 0
 341 0126 084B     		ldr	r3, .L9+12
 342 0128 074A     		ldr	r2, .L9+12
 343 012a D268     		ldr	r2, [r2, #12]
 344 012c AA21     		movs	r1, #170
 345 012e 0904     		lsls	r1, r1, #16
 346 0130 0A43     		orrs	r2, r1
 347 0132 DA60     		str	r2, [r3, #12]
  71:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** }
 348              		.loc 2 71 0
 349 0134 C046     		nop
 350 0136 BD46     		mov	sp, r7
 351              		@ sp needed
 352 0138 80BD     		pop	{r7, pc}
 353              	.L10:
 354 013a C046     		.align	2
 355              	.L9:
 356 013c 30380240 		.word	1073887280
 357 0140 00100240 		.word	1073876992
 358 0144 55555555 		.word	1431655765
 359 0148 000C0240 		.word	1073875968
 360              		.cfi_endproc
 361              	.LFE3:
 363              		.align	1
 364              		.global	main
 365              		.syntax unified
 366              		.code	16
 367              		.thumb_func
 368              		.fpu softvfp
 370              	main:
 371              	.LFB4:
  72:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 
  73:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** void main(void)
  74:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** {
 372              		.loc 2 74 0
 373              		.cfi_startproc
 374              		@ args = 0, pretend = 0, frame = 0
 375              		@ frame_needed = 1, uses_anonymous_args = 0
 376 014c 80B5     		push	{r7, lr}
 377              		.cfi_def_cfa_offset 8
 378              		.cfi_offset 7, -8
 379              		.cfi_offset 14, -4
 380 014e 00AF     		add	r7, sp, #0
 381              		.cfi_def_cfa_register 7
  75:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	// Test for drawing display
  76:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c ****  	 //drawTest();
  77:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 
  78:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	// Autopong
  79:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	//autopong();
  80:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	
  81:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	// Steer the ball manually
  82:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	ballSteering();
 382              		.loc 2 82 0
 383 0150 FFF7FEFF 		bl	ballSteering
  83:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** }
 384              		.loc 2 83 0
 385 0154 C046     		nop
 386 0156 BD46     		mov	sp, r7
 387              		@ sp needed
 388 0158 80BD     		pop	{r7, pc}
 389              		.cfi_endproc
 390              	.LFE4:
 392              		.align	1
 393              		.global	activateRow
 394              		.syntax unified
 395              		.code	16
 396              		.thumb_func
 397              		.fpu softvfp
 399              	activateRow:
 400              	.LFB5:
  84:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 
  85:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** // x: index of row
  86:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** void activateRow(uint8 x) {
 401              		.loc 2 86 0
 402              		.cfi_startproc
 403              		@ args = 0, pretend = 0, frame = 8
 404              		@ frame_needed = 1, uses_anonymous_args = 0
 405 015a 80B5     		push	{r7, lr}
 406              		.cfi_def_cfa_offset 8
 407              		.cfi_offset 7, -8
 408              		.cfi_offset 14, -4
 409 015c 82B0     		sub	sp, sp, #8
 410              		.cfi_def_cfa_offset 16
 411 015e 00AF     		add	r7, sp, #0
 412              		.cfi_def_cfa_register 7
 413 0160 0200     		movs	r2, r0
 414 0162 FB1D     		adds	r3, r7, #7
 415 0164 1A70     		strb	r2, [r3]
  87:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	GPIO_D.ODR_HIGH = 0;
 416              		.loc 2 87 0
 417 0166 0B4B     		ldr	r3, .L13
 418 0168 0022     		movs	r2, #0
 419 016a 5A75     		strb	r2, [r3, #21]
  88:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	GPIO_D.ODR_HIGH |= (0x1 << (4 + x));
 420              		.loc 2 88 0
 421 016c 0949     		ldr	r1, .L13
 422 016e 094B     		ldr	r3, .L13
 423 0170 5B7D     		ldrb	r3, [r3, #21]
 424 0172 DBB2     		uxtb	r3, r3
 425 0174 5AB2     		sxtb	r2, r3
 426 0176 FB1D     		adds	r3, r7, #7
 427 0178 1B78     		ldrb	r3, [r3]
 428 017a 0433     		adds	r3, r3, #4
 429 017c 0120     		movs	r0, #1
 430 017e 9840     		lsls	r0, r0, r3
 431 0180 0300     		movs	r3, r0
 432 0182 5BB2     		sxtb	r3, r3
 433 0184 1343     		orrs	r3, r2
 434 0186 5BB2     		sxtb	r3, r3
 435 0188 DBB2     		uxtb	r3, r3
 436 018a 4B75     		strb	r3, [r1, #21]
  89:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** }
 437              		.loc 2 89 0
 438 018c C046     		nop
 439 018e BD46     		mov	sp, r7
 440 0190 02B0     		add	sp, sp, #8
 441              		@ sp needed
 442 0192 80BD     		pop	{r7, pc}
 443              	.L14:
 444              		.align	2
 445              	.L13:
 446 0194 000C0240 		.word	1073875968
 447              		.cfi_endproc
 448              	.LFE5:
 450              		.align	1
 451              		.global	readColumns
 452              		.syntax unified
 453              		.code	16
 454              		.thumb_func
 455              		.fpu softvfp
 457              	readColumns:
 458              	.LFB6:
  90:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 
  91:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** uint8 readColumns() {
 459              		.loc 2 91 0
 460              		.cfi_startproc
 461              		@ args = 0, pretend = 0, frame = 0
 462              		@ frame_needed = 1, uses_anonymous_args = 0
 463 0198 80B5     		push	{r7, lr}
 464              		.cfi_def_cfa_offset 8
 465              		.cfi_offset 7, -8
 466              		.cfi_offset 14, -4
 467 019a 00AF     		add	r7, sp, #0
 468              		.cfi_def_cfa_register 7
  92:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	return GPIO_D.IDR_HIGH;
 469              		.loc 2 92 0
 470 019c 024B     		ldr	r3, .L17
 471 019e 5B7C     		ldrb	r3, [r3, #17]
 472 01a0 DBB2     		uxtb	r3, r3
  93:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** }
 473              		.loc 2 93 0
 474 01a2 1800     		movs	r0, r3
 475 01a4 BD46     		mov	sp, r7
 476              		@ sp needed
 477 01a6 80BD     		pop	{r7, pc}
 478              	.L18:
 479              		.align	2
 480              	.L17:
 481 01a8 000C0240 		.word	1073875968
 482              		.cfi_endproc
 483              	.LFE6:
 485              		.align	1
 486              		.global	ballSteering
 487              		.syntax unified
 488              		.code	16
 489              		.thumb_func
 490              		.fpu softvfp
 492              	ballSteering:
 493              	.LFB7:
  94:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 
  95:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 
  96:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** ballSteering(void) {
 494              		.loc 2 96 0
 495              		.cfi_startproc
 496              		@ args = 0, pretend = 0, frame = 8
 497              		@ frame_needed = 1, uses_anonymous_args = 0
 498 01ac 90B5     		push	{r4, r7, lr}
 499              		.cfi_def_cfa_offset 12
 500              		.cfi_offset 4, -12
 501              		.cfi_offset 7, -8
 502              		.cfi_offset 14, -4
 503 01ae 83B0     		sub	sp, sp, #12
 504              		.cfi_def_cfa_offset 24
 505 01b0 00AF     		add	r7, sp, #0
 506              		.cfi_def_cfa_register 7
  97:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	ObjectPtr ballerBall = &ball;
 507              		.loc 2 97 0
 508 01b2 244B     		ldr	r3, .L25
 509 01b4 7B60     		str	r3, [r7, #4]
  98:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	init_app();
 510              		.loc 2 98 0
 511 01b6 FFF7FEFF 		bl	init_app
  99:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	graphic_initialize();
 512              		.loc 2 99 0
 513 01ba FFF7FEFF 		bl	graphic_initialize
 100:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 
 101:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** #ifndef SIMULATOR
 102:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	graphic_clear_screen();
 514              		.loc 2 102 0
 515 01be FFF7FEFF 		bl	graphic_clear_screen
 103:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** #endif
 104:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 
 105:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	ballerBall->set_speed(ballerBall, 0, 0);
 516              		.loc 2 105 0
 517 01c2 7B68     		ldr	r3, [r7, #4]
 518 01c4 5B69     		ldr	r3, [r3, #20]
 519 01c6 7868     		ldr	r0, [r7, #4]
 520 01c8 0022     		movs	r2, #0
 521 01ca 0021     		movs	r1, #0
 522 01cc 9847     		blx	r3
 523              	.LVL2:
 524              	.L24:
 525              	.LBB2:
 106:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	while(TRUE)
 107:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	{
 108:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 		uint8 input = keyb();
 526              		.loc 2 108 0
 527 01ce FC1C     		adds	r4, r7, #3
 528 01d0 FFF7FEFF 		bl	keyb
 529 01d4 0300     		movs	r3, r0
 530 01d6 2370     		strb	r3, [r4]
 109:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 		// Up
 110:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 		if (input == 1) {
 531              		.loc 2 110 0
 532 01d8 FB1C     		adds	r3, r7, #3
 533 01da 1B78     		ldrb	r3, [r3]
 534 01dc 012B     		cmp	r3, #1
 535 01de 07D1     		bne	.L20
 111:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 			ballerBall->set_speed(ballerBall, 0, -SPEED);
 536              		.loc 2 111 0
 537 01e0 7B68     		ldr	r3, [r7, #4]
 538 01e2 5B69     		ldr	r3, [r3, #20]
 539 01e4 0322     		movs	r2, #3
 540 01e6 5242     		rsbs	r2, r2, #0
 541 01e8 7868     		ldr	r0, [r7, #4]
 542 01ea 0021     		movs	r1, #0
 543 01ec 9847     		blx	r3
 544              	.LVL3:
 545 01ee 20E0     		b	.L21
 546              	.L20:
 112:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 		}
 113:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 		// Left
 114:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 		else if (input == 4) 
 547              		.loc 2 114 0
 548 01f0 FB1C     		adds	r3, r7, #3
 549 01f2 1B78     		ldrb	r3, [r3]
 550 01f4 042B     		cmp	r3, #4
 551 01f6 07D1     		bne	.L22
 115:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 		{
 116:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 			ballerBall->set_speed(ballerBall, -SPEED, 0);
 552              		.loc 2 116 0
 553 01f8 7B68     		ldr	r3, [r7, #4]
 554 01fa 5B69     		ldr	r3, [r3, #20]
 555 01fc 0322     		movs	r2, #3
 556 01fe 5142     		rsbs	r1, r2, #0
 557 0200 7868     		ldr	r0, [r7, #4]
 558 0202 0022     		movs	r2, #0
 559 0204 9847     		blx	r3
 560              	.LVL4:
 561 0206 14E0     		b	.L21
 562              	.L22:
 117:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 		}
 118:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 		// Down
 119:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 		else if (input == 5)
 563              		.loc 2 119 0
 564 0208 FB1C     		adds	r3, r7, #3
 565 020a 1B78     		ldrb	r3, [r3]
 566 020c 052B     		cmp	r3, #5
 567 020e 06D1     		bne	.L23
 120:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 		{
 121:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 			ballerBall->set_speed(ballerBall, 0, SPEED);
 568              		.loc 2 121 0
 569 0210 7B68     		ldr	r3, [r7, #4]
 570 0212 5B69     		ldr	r3, [r3, #20]
 571 0214 7868     		ldr	r0, [r7, #4]
 572 0216 0322     		movs	r2, #3
 573 0218 0021     		movs	r1, #0
 574 021a 9847     		blx	r3
 575              	.LVL5:
 576 021c 09E0     		b	.L21
 577              	.L23:
 122:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 		}
 123:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 		// Right
 124:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 		else if (input == 6)
 578              		.loc 2 124 0
 579 021e FB1C     		adds	r3, r7, #3
 580 0220 1B78     		ldrb	r3, [r3]
 581 0222 062B     		cmp	r3, #6
 582 0224 05D1     		bne	.L21
 125:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 		{
 126:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 			ballerBall->set_speed(ballerBall, SPEED, 0);
 583              		.loc 2 126 0
 584 0226 7B68     		ldr	r3, [r7, #4]
 585 0228 5B69     		ldr	r3, [r3, #20]
 586 022a 7868     		ldr	r0, [r7, #4]
 587 022c 0022     		movs	r2, #0
 588 022e 0321     		movs	r1, #3
 589 0230 9847     		blx	r3
 590              	.LVL6:
 591              	.L21:
 127:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 		}
 128:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 		
 129:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 		ballerBall->move(ballerBall);
 592              		.loc 2 129 0
 593 0232 7B68     		ldr	r3, [r7, #4]
 594 0234 1B69     		ldr	r3, [r3, #16]
 595 0236 7A68     		ldr	r2, [r7, #4]
 596 0238 1000     		movs	r0, r2
 597 023a 9847     		blx	r3
 598              	.LVL7:
 130:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 		delay_milli(40);
 599              		.loc 2 130 0
 600 023c 2820     		movs	r0, #40
 601 023e FFF7FEFF 		bl	delay_milli
 602              	.LBE2:
 107:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 		uint8 input = keyb();
 603              		.loc 2 107 0
 604 0242 C4E7     		b	.L24
 605              	.L26:
 606              		.align	2
 607              	.L25:
 608 0244 00000000 		.word	ball
 609              		.cfi_endproc
 610              	.LFE7:
 612              		.align	1
 613              		.global	keyb
 614              		.syntax unified
 615              		.code	16
 616              		.thumb_func
 617              		.fpu softvfp
 619              	keyb:
 620              	.LFB8:
 131:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	}
 132:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** }
 133:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 
 134:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** uint8 keyb( void ) {
 621              		.loc 2 134 0
 622              		.cfi_startproc
 623              		@ args = 0, pretend = 0, frame = 8
 624              		@ frame_needed = 1, uses_anonymous_args = 0
 625 0248 90B5     		push	{r4, r7, lr}
 626              		.cfi_def_cfa_offset 12
 627              		.cfi_offset 4, -12
 628              		.cfi_offset 7, -8
 629              		.cfi_offset 14, -4
 630 024a 83B0     		sub	sp, sp, #12
 631              		.cfi_def_cfa_offset 24
 632 024c 00AF     		add	r7, sp, #0
 633              		.cfi_def_cfa_register 7
 135:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	uint8 activeKey = 0xFF;
 634              		.loc 2 135 0
 635 024e 3B1D     		adds	r3, r7, #4
 636 0250 FF22     		movs	r2, #255
 637 0252 1A70     		strb	r2, [r3]
 638              	.LBB3:
 136:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	for (uint8 row = 0; row < 4; row++) {
 639              		.loc 2 136 0
 640 0254 FB1D     		adds	r3, r7, #7
 641 0256 0022     		movs	r2, #0
 642 0258 1A70     		strb	r2, [r3]
 643 025a 36E0     		b	.L28
 644              	.L33:
 645              	.LBB4:
 137:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 		activateRow(row);
 646              		.loc 2 137 0
 647 025c FB1D     		adds	r3, r7, #7
 648 025e 1B78     		ldrb	r3, [r3]
 649 0260 1800     		movs	r0, r3
 650 0262 FFF7FEFF 		bl	activateRow
 138:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 		uint8 columnValue = readColumns();
 651              		.loc 2 138 0
 652 0266 BC1D     		adds	r4, r7, #6
 653 0268 FFF7FEFF 		bl	readColumns
 654 026c 0300     		movs	r3, r0
 655 026e 2370     		strb	r3, [r4]
 656              	.LBB5:
 139:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 		
 140:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 		for (uint8 column = 0; column < 4; column++) {
 657              		.loc 2 140 0
 658 0270 7B1D     		adds	r3, r7, #5
 659 0272 0022     		movs	r2, #0
 660 0274 1A70     		strb	r2, [r3]
 661 0276 1FE0     		b	.L29
 662              	.L32:
 663              	.LBB6:
 141:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 			uint8 activeColumn = (columnValue & 0x1);
 664              		.loc 2 141 0
 665 0278 FB1C     		adds	r3, r7, #3
 666 027a BA1D     		adds	r2, r7, #6
 667 027c 1278     		ldrb	r2, [r2]
 668 027e 0121     		movs	r1, #1
 669 0280 0A40     		ands	r2, r1
 670 0282 1A70     		strb	r2, [r3]
 142:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 			if (activeColumn) {
 671              		.loc 2 142 0
 672 0284 FB1C     		adds	r3, r7, #3
 673 0286 1B78     		ldrb	r3, [r3]
 674 0288 002B     		cmp	r3, #0
 675 028a 0BD0     		beq	.L30
 143:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 				activeKey = row * 4 + column;
 676              		.loc 2 143 0
 677 028c FB1D     		adds	r3, r7, #7
 678 028e 1B78     		ldrb	r3, [r3]
 679 0290 9B00     		lsls	r3, r3, #2
 680 0292 D9B2     		uxtb	r1, r3
 681 0294 3B1D     		adds	r3, r7, #4
 682 0296 7A1D     		adds	r2, r7, #5
 683 0298 1278     		ldrb	r2, [r2]
 684 029a 8A18     		adds	r2, r1, r2
 685 029c 1A70     		strb	r2, [r3]
 144:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 				return activeKey;
 686              		.loc 2 144 0
 687 029e 3B1D     		adds	r3, r7, #4
 688 02a0 1B78     		ldrb	r3, [r3]
 689 02a2 18E0     		b	.L31
 690              	.L30:
 145:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 			}
 146:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 			columnValue >>= 0x1;
 691              		.loc 2 146 0 discriminator 2
 692 02a4 BB1D     		adds	r3, r7, #6
 693 02a6 BA1D     		adds	r2, r7, #6
 694 02a8 1278     		ldrb	r2, [r2]
 695 02aa 5208     		lsrs	r2, r2, #1
 696 02ac 1A70     		strb	r2, [r3]
 697              	.LBE6:
 140:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 			uint8 activeColumn = (columnValue & 0x1);
 698              		.loc 2 140 0 discriminator 2
 699 02ae 7B1D     		adds	r3, r7, #5
 700 02b0 1A78     		ldrb	r2, [r3]
 701 02b2 7B1D     		adds	r3, r7, #5
 702 02b4 0132     		adds	r2, r2, #1
 703 02b6 1A70     		strb	r2, [r3]
 704              	.L29:
 140:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 			uint8 activeColumn = (columnValue & 0x1);
 705              		.loc 2 140 0 is_stmt 0 discriminator 1
 706 02b8 7B1D     		adds	r3, r7, #5
 707 02ba 1B78     		ldrb	r3, [r3]
 708 02bc 032B     		cmp	r3, #3
 709 02be DBD9     		bls	.L32
 710              	.LBE5:
 711              	.LBE4:
 136:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 		activateRow(row);
 712              		.loc 2 136 0 is_stmt 1 discriminator 2
 713 02c0 FB1D     		adds	r3, r7, #7
 714 02c2 1A78     		ldrb	r2, [r3]
 715 02c4 FB1D     		adds	r3, r7, #7
 716 02c6 0132     		adds	r2, r2, #1
 717 02c8 1A70     		strb	r2, [r3]
 718              	.L28:
 136:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 		activateRow(row);
 719              		.loc 2 136 0 is_stmt 0 discriminator 1
 720 02ca FB1D     		adds	r3, r7, #7
 721 02cc 1B78     		ldrb	r3, [r3]
 722 02ce 032B     		cmp	r3, #3
 723 02d0 C4D9     		bls	.L33
 724              	.LBE3:
 147:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 		}
 148:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	}
 149:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	return activeKey;
 725              		.loc 2 149 0 is_stmt 1
 726 02d2 3B1D     		adds	r3, r7, #4
 727 02d4 1B78     		ldrb	r3, [r3]
 728              	.L31:
 150:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** }
 729              		.loc 2 150 0
 730 02d6 1800     		movs	r0, r3
 731 02d8 BD46     		mov	sp, r7
 732 02da 03B0     		add	sp, sp, #12
 733              		@ sp needed
 734 02dc 90BD     		pop	{r4, r7, pc}
 735              		.cfi_endproc
 736              	.LFE8:
 738              		.align	1
 739              		.global	autopong
 740              		.syntax unified
 741              		.code	16
 742              		.thumb_func
 743              		.fpu softvfp
 745              	autopong:
 746              	.LFB9:
 151:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 
 152:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** void autopong(void)
 153:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** {
 747              		.loc 2 153 0
 748              		.cfi_startproc
 749              		@ args = 0, pretend = 0, frame = 8
 750              		@ frame_needed = 1, uses_anonymous_args = 0
 751 02de 80B5     		push	{r7, lr}
 752              		.cfi_def_cfa_offset 8
 753              		.cfi_offset 7, -8
 754              		.cfi_offset 14, -4
 755 02e0 82B0     		sub	sp, sp, #8
 756              		.cfi_def_cfa_offset 16
 757 02e2 00AF     		add	r7, sp, #0
 758              		.cfi_def_cfa_register 7
 154:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	ObjectPtr ballerBall = &ball;
 759              		.loc 2 154 0
 760 02e4 0B4B     		ldr	r3, .L36
 761 02e6 7B60     		str	r3, [r7, #4]
 155:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	init_app();
 762              		.loc 2 155 0
 763 02e8 FFF7FEFF 		bl	init_app
 156:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	graphic_initialize();
 764              		.loc 2 156 0
 765 02ec FFF7FEFF 		bl	graphic_initialize
 157:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 
 158:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** #ifndef SIMULATOR
 159:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	graphic_clear_screen();
 766              		.loc 2 159 0
 767 02f0 FFF7FEFF 		bl	graphic_clear_screen
 160:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** #endif
 161:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 
 162:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	ballerBall->set_speed(ballerBall, 4, 1);
 768              		.loc 2 162 0
 769 02f4 7B68     		ldr	r3, [r7, #4]
 770 02f6 5B69     		ldr	r3, [r3, #20]
 771 02f8 7868     		ldr	r0, [r7, #4]
 772 02fa 0122     		movs	r2, #1
 773 02fc 0421     		movs	r1, #4
 774 02fe 9847     		blx	r3
 775              	.LVL8:
 776              	.L35:
 777              	.LBB7:
 163:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 
 164:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	while(TRUE)
 165:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	{
 166:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 		ballerBall->move(ballerBall);
 778              		.loc 2 166 0 discriminator 1
 779 0300 7B68     		ldr	r3, [r7, #4]
 780 0302 1B69     		ldr	r3, [r3, #16]
 781 0304 7A68     		ldr	r2, [r7, #4]
 782 0306 1000     		movs	r0, r2
 783 0308 9847     		blx	r3
 784              	.LVL9:
 167:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 		delay_milli(40);
 785              		.loc 2 167 0 discriminator 1
 786 030a 2820     		movs	r0, #40
 787 030c FFF7FEFF 		bl	delay_milli
 788              	.LBE7:
 165:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 		ballerBall->move(ballerBall);
 789              		.loc 2 165 0 discriminator 1
 790 0310 F6E7     		b	.L35
 791              	.L37:
 792 0312 C046     		.align	2
 793              	.L36:
 794 0314 00000000 		.word	ball
 795              		.cfi_endproc
 796              	.LFE9:
 798              		.align	1
 799              		.global	drawTest
 800              		.syntax unified
 801              		.code	16
 802              		.thumb_func
 803              		.fpu softvfp
 805              	drawTest:
 806              	.LFB10:
 168:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	}
 169:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** }
 170:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 
 171:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** void drawTest(void)
 172:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** {
 807              		.loc 2 172 0
 808              		.cfi_startproc
 809              		@ args = 0, pretend = 0, frame = 8
 810              		@ frame_needed = 1, uses_anonymous_args = 0
 811 0318 80B5     		push	{r7, lr}
 812              		.cfi_def_cfa_offset 8
 813              		.cfi_offset 7, -8
 814              		.cfi_offset 14, -4
 815 031a 82B0     		sub	sp, sp, #8
 816              		.cfi_def_cfa_offset 16
 817 031c 00AF     		add	r7, sp, #0
 818              		.cfi_def_cfa_register 7
 173:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	uint32 i;
 174:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	init_app();
 819              		.loc 2 174 0
 820 031e FFF7FEFF 		bl	init_app
 175:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	graphic_initialize();
 821              		.loc 2 175 0
 822 0322 FFF7FEFF 		bl	graphic_initialize
 176:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 
 177:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** #ifndef SIMULATOR
 178:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	graphic_clear_screen();
 823              		.loc 2 178 0
 824 0326 FFF7FEFF 		bl	graphic_clear_screen
 179:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** #endif
 180:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 
 181:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	for (i = 0; i < 128; i++)
 825              		.loc 2 181 0
 826 032a 0023     		movs	r3, #0
 827 032c 7B60     		str	r3, [r7, #4]
 828 032e 09E0     		b	.L39
 829              	.L40:
 182:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	{
 183:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 		pixel(i, 10, 1);
 830              		.loc 2 183 0 discriminator 3
 831 0330 7B68     		ldr	r3, [r7, #4]
 832 0332 DBB2     		uxtb	r3, r3
 833 0334 0122     		movs	r2, #1
 834 0336 0A21     		movs	r1, #10
 835 0338 1800     		movs	r0, r3
 836 033a FFF7FEFF 		bl	pixel
 181:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	{
 837              		.loc 2 181 0 discriminator 3
 838 033e 7B68     		ldr	r3, [r7, #4]
 839 0340 0133     		adds	r3, r3, #1
 840 0342 7B60     		str	r3, [r7, #4]
 841              	.L39:
 181:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	{
 842              		.loc 2 181 0 is_stmt 0 discriminator 1
 843 0344 7B68     		ldr	r3, [r7, #4]
 844 0346 7F2B     		cmp	r3, #127
 845 0348 F2D9     		bls	.L40
 184:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	}
 185:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	for (i = 0; i < 64; i++)
 846              		.loc 2 185 0 is_stmt 1
 847 034a 0023     		movs	r3, #0
 848 034c 7B60     		str	r3, [r7, #4]
 849 034e 09E0     		b	.L41
 850              	.L42:
 186:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	{
 187:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 		pixel(10, i, 1);
 851              		.loc 2 187 0 discriminator 3
 852 0350 7B68     		ldr	r3, [r7, #4]
 853 0352 DBB2     		uxtb	r3, r3
 854 0354 0122     		movs	r2, #1
 855 0356 1900     		movs	r1, r3
 856 0358 0A20     		movs	r0, #10
 857 035a FFF7FEFF 		bl	pixel
 185:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	{
 858              		.loc 2 185 0 discriminator 3
 859 035e 7B68     		ldr	r3, [r7, #4]
 860 0360 0133     		adds	r3, r3, #1
 861 0362 7B60     		str	r3, [r7, #4]
 862              	.L41:
 185:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	{
 863              		.loc 2 185 0 is_stmt 0 discriminator 1
 864 0364 7B68     		ldr	r3, [r7, #4]
 865 0366 3F2B     		cmp	r3, #63
 866 0368 F2D9     		bls	.L42
 188:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	}
 189:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 
 190:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	delay_milli(500);
 867              		.loc 2 190 0 is_stmt 1
 868 036a FA23     		movs	r3, #250
 869 036c 5B00     		lsls	r3, r3, #1
 870 036e 1800     		movs	r0, r3
 871 0370 FFF7FEFF 		bl	delay_milli
 191:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 
 192:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	for (i = 0; i < 128; i++)
 872              		.loc 2 192 0
 873 0374 0023     		movs	r3, #0
 874 0376 7B60     		str	r3, [r7, #4]
 875 0378 09E0     		b	.L43
 876              	.L44:
 193:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	{
 194:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 		pixel(i, 10, 0);
 877              		.loc 2 194 0 discriminator 3
 878 037a 7B68     		ldr	r3, [r7, #4]
 879 037c DBB2     		uxtb	r3, r3
 880 037e 0022     		movs	r2, #0
 881 0380 0A21     		movs	r1, #10
 882 0382 1800     		movs	r0, r3
 883 0384 FFF7FEFF 		bl	pixel
 192:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	{
 884              		.loc 2 192 0 discriminator 3
 885 0388 7B68     		ldr	r3, [r7, #4]
 886 038a 0133     		adds	r3, r3, #1
 887 038c 7B60     		str	r3, [r7, #4]
 888              	.L43:
 192:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	{
 889              		.loc 2 192 0 is_stmt 0 discriminator 1
 890 038e 7B68     		ldr	r3, [r7, #4]
 891 0390 7F2B     		cmp	r3, #127
 892 0392 F2D9     		bls	.L44
 195:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	}
 196:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	for (i = 0; i < 64; i++)
 893              		.loc 2 196 0 is_stmt 1
 894 0394 0023     		movs	r3, #0
 895 0396 7B60     		str	r3, [r7, #4]
 896 0398 09E0     		b	.L45
 897              	.L46:
 197:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	{
 198:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 		pixel(10, i, 0);
 898              		.loc 2 198 0 discriminator 3
 899 039a 7B68     		ldr	r3, [r7, #4]
 900 039c DBB2     		uxtb	r3, r3
 901 039e 0022     		movs	r2, #0
 902 03a0 1900     		movs	r1, r3
 903 03a2 0A20     		movs	r0, #10
 904 03a4 FFF7FEFF 		bl	pixel
 196:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	{
 905              		.loc 2 196 0 discriminator 3
 906 03a8 7B68     		ldr	r3, [r7, #4]
 907 03aa 0133     		adds	r3, r3, #1
 908 03ac 7B60     		str	r3, [r7, #4]
 909              	.L45:
 196:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	{
 910              		.loc 2 196 0 is_stmt 0 discriminator 1
 911 03ae 7B68     		ldr	r3, [r7, #4]
 912 03b0 3F2B     		cmp	r3, #63
 913 03b2 F2D9     		bls	.L46
 199:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	}
 200:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** }
 914              		.loc 2 200 0 is_stmt 1
 915 03b4 C046     		nop
 916 03b6 BD46     		mov	sp, r7
 917 03b8 02B0     		add	sp, sp, #8
 918              		@ sp needed
 919 03ba 80BD     		pop	{r7, pc}
 920              		.cfi_endproc
 921              	.LFE10:
 923              		.align	1
 924              		.global	clear_object
 925              		.syntax unified
 926              		.code	16
 927              		.thumb_func
 928              		.fpu softvfp
 930              	clear_object:
 931              	.LFB11:
 201:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 
 202:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** void clear_object (ObjectPtr obj)
 203:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** {	
 932              		.loc 2 203 0
 933              		.cfi_startproc
 934              		@ args = 0, pretend = 0, frame = 24
 935              		@ frame_needed = 1, uses_anonymous_args = 0
 936 03bc 80B5     		push	{r7, lr}
 937              		.cfi_def_cfa_offset 8
 938              		.cfi_offset 7, -8
 939              		.cfi_offset 14, -4
 940 03be 86B0     		sub	sp, sp, #24
 941              		.cfi_def_cfa_offset 32
 942 03c0 00AF     		add	r7, sp, #0
 943              		.cfi_def_cfa_register 7
 944 03c2 7860     		str	r0, [r7, #4]
 204:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	GeometryPtr objectGeometry = obj->geo;
 945              		.loc 2 204 0
 946 03c4 7B68     		ldr	r3, [r7, #4]
 947 03c6 1B68     		ldr	r3, [r3]
 948 03c8 3B61     		str	r3, [r7, #16]
 205:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	uint8 dimensionSize = objectGeometry->numpoints;
 949              		.loc 2 205 0
 950 03ca 0F23     		movs	r3, #15
 951 03cc FB18     		adds	r3, r7, r3
 952 03ce 3A69     		ldr	r2, [r7, #16]
 953 03d0 1278     		ldrb	r2, [r2]
 954 03d2 1A70     		strb	r2, [r3]
 955              	.LBB8:
 206:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	
 207:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	for(int i = 0; i < dimensionSize; i++)
 956              		.loc 2 207 0
 957 03d4 0023     		movs	r3, #0
 958 03d6 7B61     		str	r3, [r7, #20]
 959 03d8 25E0     		b	.L48
 960              	.L49:
 961              	.LBB9:
 208:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	{
 209:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 		Point objectPixel = objectGeometry->px[i];
 962              		.loc 2 209 0 discriminator 3
 963 03da 0C23     		movs	r3, #12
 964 03dc F818     		adds	r0, r7, r3
 965 03de 3A69     		ldr	r2, [r7, #16]
 966 03e0 7B69     		ldr	r3, [r7, #20]
 967 03e2 5B00     		lsls	r3, r3, #1
 968 03e4 0321     		movs	r1, #3
 969 03e6 D318     		adds	r3, r2, r3
 970 03e8 5B18     		adds	r3, r3, r1
 971 03ea 1900     		movs	r1, r3
 972 03ec 0223     		movs	r3, #2
 973 03ee 1A00     		movs	r2, r3
 974 03f0 FFF7FEFF 		bl	memcpy
 210:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 		pixel(obj->posx + objectPixel.x, obj->posy + objectPixel.y, 0);
 975              		.loc 2 210 0 discriminator 3
 976 03f4 7B68     		ldr	r3, [r7, #4]
 977 03f6 9B79     		ldrb	r3, [r3, #6]
 978 03f8 5BB2     		sxtb	r3, r3
 979 03fa DAB2     		uxtb	r2, r3
 980 03fc 0C23     		movs	r3, #12
 981 03fe FB18     		adds	r3, r7, r3
 982 0400 1B78     		ldrb	r3, [r3]
 983 0402 D318     		adds	r3, r2, r3
 984 0404 D8B2     		uxtb	r0, r3
 985 0406 7B68     		ldr	r3, [r7, #4]
 986 0408 DB79     		ldrb	r3, [r3, #7]
 987 040a 5BB2     		sxtb	r3, r3
 988 040c DAB2     		uxtb	r2, r3
 989 040e 0C23     		movs	r3, #12
 990 0410 FB18     		adds	r3, r7, r3
 991 0412 5B78     		ldrb	r3, [r3, #1]
 992 0414 D318     		adds	r3, r2, r3
 993 0416 DBB2     		uxtb	r3, r3
 994 0418 0022     		movs	r2, #0
 995 041a 1900     		movs	r1, r3
 996 041c FFF7FEFF 		bl	pixel
 997              	.LBE9:
 207:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	{
 998              		.loc 2 207 0 discriminator 3
 999 0420 7B69     		ldr	r3, [r7, #20]
 1000 0422 0133     		adds	r3, r3, #1
 1001 0424 7B61     		str	r3, [r7, #20]
 1002              	.L48:
 207:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	{
 1003              		.loc 2 207 0 is_stmt 0 discriminator 1
 1004 0426 0F23     		movs	r3, #15
 1005 0428 FB18     		adds	r3, r7, r3
 1006 042a 1A78     		ldrb	r2, [r3]
 1007 042c 7B69     		ldr	r3, [r7, #20]
 1008 042e 9A42     		cmp	r2, r3
 1009 0430 D3DC     		bgt	.L49
 1010              	.LBE8:
 211:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	}
 212:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** }
 1011              		.loc 2 212 0 is_stmt 1
 1012 0432 C046     		nop
 1013 0434 BD46     		mov	sp, r7
 1014 0436 06B0     		add	sp, sp, #24
 1015              		@ sp needed
 1016 0438 80BD     		pop	{r7, pc}
 1017              		.cfi_endproc
 1018              	.LFE11:
 1020              		.align	1
 1021              		.global	draw_object
 1022              		.syntax unified
 1023              		.code	16
 1024              		.thumb_func
 1025              		.fpu softvfp
 1027              	draw_object:
 1028              	.LFB12:
 213:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 
 214:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** void draw_object (ObjectPtr obj)
 215:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** {	
 1029              		.loc 2 215 0
 1030              		.cfi_startproc
 1031              		@ args = 0, pretend = 0, frame = 24
 1032              		@ frame_needed = 1, uses_anonymous_args = 0
 1033 043a 80B5     		push	{r7, lr}
 1034              		.cfi_def_cfa_offset 8
 1035              		.cfi_offset 7, -8
 1036              		.cfi_offset 14, -4
 1037 043c 86B0     		sub	sp, sp, #24
 1038              		.cfi_def_cfa_offset 32
 1039 043e 00AF     		add	r7, sp, #0
 1040              		.cfi_def_cfa_register 7
 1041 0440 7860     		str	r0, [r7, #4]
 216:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	GeometryPtr objectGeometry = obj->geo;
 1042              		.loc 2 216 0
 1043 0442 7B68     		ldr	r3, [r7, #4]
 1044 0444 1B68     		ldr	r3, [r3]
 1045 0446 3B61     		str	r3, [r7, #16]
 217:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	uint8 dimensionSize = objectGeometry->numpoints;
 1046              		.loc 2 217 0
 1047 0448 0F23     		movs	r3, #15
 1048 044a FB18     		adds	r3, r7, r3
 1049 044c 3A69     		ldr	r2, [r7, #16]
 1050 044e 1278     		ldrb	r2, [r2]
 1051 0450 1A70     		strb	r2, [r3]
 1052              	.LBB10:
 218:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	
 219:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	for(int i = 0; i < dimensionSize; i++)
 1053              		.loc 2 219 0
 1054 0452 0023     		movs	r3, #0
 1055 0454 7B61     		str	r3, [r7, #20]
 1056 0456 25E0     		b	.L51
 1057              	.L52:
 1058              	.LBB11:
 220:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	{
 221:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 		Point objectPixel = objectGeometry->px[i];
 1059              		.loc 2 221 0 discriminator 3
 1060 0458 0C23     		movs	r3, #12
 1061 045a F818     		adds	r0, r7, r3
 1062 045c 3A69     		ldr	r2, [r7, #16]
 1063 045e 7B69     		ldr	r3, [r7, #20]
 1064 0460 5B00     		lsls	r3, r3, #1
 1065 0462 0321     		movs	r1, #3
 1066 0464 D318     		adds	r3, r2, r3
 1067 0466 5B18     		adds	r3, r3, r1
 1068 0468 1900     		movs	r1, r3
 1069 046a 0223     		movs	r3, #2
 1070 046c 1A00     		movs	r2, r3
 1071 046e FFF7FEFF 		bl	memcpy
 222:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 		pixel(obj->posx + objectPixel.x, obj->posy + objectPixel.y, 1);
 1072              		.loc 2 222 0 discriminator 3
 1073 0472 7B68     		ldr	r3, [r7, #4]
 1074 0474 9B79     		ldrb	r3, [r3, #6]
 1075 0476 5BB2     		sxtb	r3, r3
 1076 0478 DAB2     		uxtb	r2, r3
 1077 047a 0C23     		movs	r3, #12
 1078 047c FB18     		adds	r3, r7, r3
 1079 047e 1B78     		ldrb	r3, [r3]
 1080 0480 D318     		adds	r3, r2, r3
 1081 0482 D8B2     		uxtb	r0, r3
 1082 0484 7B68     		ldr	r3, [r7, #4]
 1083 0486 DB79     		ldrb	r3, [r3, #7]
 1084 0488 5BB2     		sxtb	r3, r3
 1085 048a DAB2     		uxtb	r2, r3
 1086 048c 0C23     		movs	r3, #12
 1087 048e FB18     		adds	r3, r7, r3
 1088 0490 5B78     		ldrb	r3, [r3, #1]
 1089 0492 D318     		adds	r3, r2, r3
 1090 0494 DBB2     		uxtb	r3, r3
 1091 0496 0122     		movs	r2, #1
 1092 0498 1900     		movs	r1, r3
 1093 049a FFF7FEFF 		bl	pixel
 1094              	.LBE11:
 219:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	{
 1095              		.loc 2 219 0 discriminator 3
 1096 049e 7B69     		ldr	r3, [r7, #20]
 1097 04a0 0133     		adds	r3, r3, #1
 1098 04a2 7B61     		str	r3, [r7, #20]
 1099              	.L51:
 219:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	{
 1100              		.loc 2 219 0 is_stmt 0 discriminator 1
 1101 04a4 0F23     		movs	r3, #15
 1102 04a6 FB18     		adds	r3, r7, r3
 1103 04a8 1A78     		ldrb	r2, [r3]
 1104 04aa 7B69     		ldr	r3, [r7, #20]
 1105 04ac 9A42     		cmp	r2, r3
 1106 04ae D3DC     		bgt	.L52
 1107              	.LBE10:
 223:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** 	}
 224:C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_display\startup.c **** }...
 1108              		.loc 2 224 0 is_stmt 1
 1109 04b0 C046     		nop
 1110 04b2 BD46     		mov	sp, r7
 1111 04b4 06B0     		add	sp, sp, #24
 1112              		@ sp needed
 1113 04b6 80BD     		pop	{r7, pc}
 1114              		.cfi_endproc
 1115              	.LFE12:
 1117              	.Letext0:
 1118              		.file 3 "C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_dis
 1119              		.file 4 "C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_dis
 1120              		.file 5 "C:/Users/feljo/Desktop/armassembler/code_lite/graphic_display/graphic_display/graphic_dis

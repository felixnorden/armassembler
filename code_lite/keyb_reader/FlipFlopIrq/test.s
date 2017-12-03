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
  25              		.file 1 "C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/FlipFlopIrq/startup.c"
   1:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/FlipFlopIrq\startup.c **** /*
   2:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/FlipFlopIrq\startup.c ****  * 	startup.c
   3:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/FlipFlopIrq\startup.c ****  *
   4:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/FlipFlopIrq\startup.c ****  */
   5:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/FlipFlopIrq\startup.c ****  
   6:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/FlipFlopIrq\startup.c ****  #include "types.h"
   7:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/FlipFlopIrq\startup.c ****  #include "interrupt.h"
   8:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/FlipFlopIrq\startup.c ****  #include "gpio.h"
   9:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/FlipFlopIrq\startup.c **** 
  10:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/FlipFlopIrq\startup.c ****  #define SCB_VTOR ((uint32*) 0xE000ED08)
  11:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/FlipFlopIrq\startup.c ****  
  12:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/FlipFlopIrq\startup.c **** void startup(void) __attribute__((naked)) __attribute__((section (".start_section")) );
  13:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/FlipFlopIrq\startup.c **** 
  14:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/FlipFlopIrq\startup.c **** void startup ( void )
  15:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/FlipFlopIrq\startup.c **** {
  26              		.loc 1 15 0
  27              		.cfi_startproc
  28              		@ Naked Function: prologue and epilogue provided by programmer.
  29              		@ args = 0, pretend = 0, frame = 0
  30              		@ frame_needed = 1, uses_anonymous_args = 0
  16:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/FlipFlopIrq\startup.c **** __asm volatile(
  31              		.loc 1 16 0
  32              		.syntax divided
  33              	@ 16 "C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/FlipFlopIrq/startup.c" 1
  34 0000 0248     		 LDR R0,=0x2001C000
  35 0002 8546     	 MOV SP,R0
  36 0004 FFF7FEFF 	 BL main
  37 0008 FEE7     	_exit: B .
  38              	
  39              	@ 0 "" 2
  17:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/FlipFlopIrq\startup.c **** 	" LDR R0,=0x2001C000\n"		/* set stack */
  18:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/FlipFlopIrq\startup.c **** 	" MOV SP,R0\n"
  19:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/FlipFlopIrq\startup.c **** 	" BL main\n"				/* call main */
  20:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/FlipFlopIrq\startup.c **** 	"_exit: B .\n"				/* never return */
  21:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/FlipFlopIrq\startup.c **** 	) ;
  22:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/FlipFlopIrq\startup.c **** }
  40              		.loc 1 22 0
  41              		.thumb
  42              		.syntax unified
  43 000a C046     		nop
  44              		.cfi_endproc
  45              	.LFE0:
  47              		.global	counter
  48              		.bss
  51              	counter:
  52 0000 00       		.space	1
  53              		.text
  54              		.align	1
  55              		.global	irq_handler
  56              		.syntax unified
  57              		.code	16
  58              		.thumb_func
  59              		.fpu softvfp
  61              	irq_handler:
  62              	.LFB1:
  23:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/FlipFlopIrq\startup.c **** 
  24:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/FlipFlopIrq\startup.c **** uint8 volatile counter = 0;
  25:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/FlipFlopIrq\startup.c **** void irq_handler(void)
  26:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/FlipFlopIrq\startup.c **** {
  63              		.loc 1 26 0
  64              		.cfi_startproc
  65              		@ args = 0, pretend = 0, frame = 8
  66              		@ frame_needed = 1, uses_anonymous_args = 0
  67 0000 80B5     		push	{r7, lr}
  68              		.cfi_def_cfa_offset 8
  69              		.cfi_offset 7, -8
  70              		.cfi_offset 14, -4
  71 0002 82B0     		sub	sp, sp, #8
  72              		.cfi_def_cfa_offset 16
  73 0004 00AF     		add	r7, sp, #0
  74              		.cfi_def_cfa_register 7
  27:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/FlipFlopIrq\startup.c **** 	uint32 x = EXTI.PR;
  75              		.loc 1 27 0
  76 0006 0D4B     		ldr	r3, .L5
  77 0008 5B69     		ldr	r3, [r3, #20]
  78 000a 7B60     		str	r3, [r7, #4]
  28:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/FlipFlopIrq\startup.c **** 	uint32 y = &EXTI.PR;
  79              		.loc 1 28 0
  80 000c 0C4B     		ldr	r3, .L5+4
  81 000e 3B60     		str	r3, [r7]
  29:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/FlipFlopIrq\startup.c **** 	if((EXTI.PR & 0x08)) {
  82              		.loc 1 29 0
  83 0010 0A4B     		ldr	r3, .L5
  84 0012 5B69     		ldr	r3, [r3, #20]
  85 0014 0822     		movs	r2, #8
  86 0016 1340     		ands	r3, r2
  87 0018 0CD0     		beq	.L4
  30:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/FlipFlopIrq\startup.c **** 		counter++;
  88              		.loc 1 30 0
  89 001a 0A4B     		ldr	r3, .L5+8
  90 001c 1B78     		ldrb	r3, [r3]
  91 001e DBB2     		uxtb	r3, r3
  92 0020 0133     		adds	r3, r3, #1
  93 0022 DAB2     		uxtb	r2, r3
  94 0024 074B     		ldr	r3, .L5+8
  95 0026 1A70     		strb	r2, [r3]
  31:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/FlipFlopIrq\startup.c **** 		EXTI.PR |= 0x08;		
  96              		.loc 1 31 0
  97 0028 044B     		ldr	r3, .L5
  98 002a 044A     		ldr	r2, .L5
  99 002c 5269     		ldr	r2, [r2, #20]
 100 002e 0821     		movs	r1, #8
 101 0030 0A43     		orrs	r2, r1
 102 0032 5A61     		str	r2, [r3, #20]
 103              	.L4:
  32:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/FlipFlopIrq\startup.c **** 	}
  33:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/FlipFlopIrq\startup.c **** 	
  34:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/FlipFlopIrq\startup.c **** }
 104              		.loc 1 34 0
 105 0034 C046     		nop
 106 0036 BD46     		mov	sp, r7
 107 0038 02B0     		add	sp, sp, #8
 108              		@ sp needed
 109 003a 80BD     		pop	{r7, pc}
 110              	.L6:
 111              		.align	2
 112              	.L5:
 113 003c 003C0140 		.word	1073822720
 114 0040 143C0140 		.word	1073822740
 115 0044 00000000 		.word	counter
 116              		.cfi_endproc
 117              	.LFE1:
 119              		.align	1
 120              		.global	init_app
 121              		.syntax unified
 122              		.code	16
 123              		.thumb_func
 124              		.fpu softvfp
 126              	init_app:
 127              	.LFB2:
  35:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/FlipFlopIrq\startup.c **** init_app(void) {
 128              		.loc 1 35 0
 129              		.cfi_startproc
 130              		@ args = 0, pretend = 0, frame = 0
 131              		@ frame_needed = 1, uses_anonymous_args = 0
 132 0048 80B5     		push	{r7, lr}
 133              		.cfi_def_cfa_offset 8
 134              		.cfi_offset 7, -8
 135              		.cfi_offset 14, -4
 136 004a 00AF     		add	r7, sp, #0
 137              		.cfi_def_cfa_register 7
  36:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/FlipFlopIrq\startup.c **** 	*SCB_VTOR = 0x2001C000;
 138              		.loc 1 36 0
 139 004c 134B     		ldr	r3, .L8
 140 004e 144A     		ldr	r2, .L8+4
 141 0050 1A60     		str	r2, [r3]
  37:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/FlipFlopIrq\startup.c **** 	GPIO_D.MODER = 0x00005555;
 142              		.loc 1 37 0
 143 0052 144B     		ldr	r3, .L8+8
 144 0054 144A     		ldr	r2, .L8+12
 145 0056 1A60     		str	r2, [r3]
  38:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/FlipFlopIrq\startup.c **** 	
  39:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/FlipFlopIrq\startup.c **** 	//SYS_CFG.EXTICR1 &= 0x0FFF;
  40:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/FlipFlopIrq\startup.c **** 	//SYS_CFG.EXTICR1 |= 0x4000;
  41:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/FlipFlopIrq\startup.c **** 	*((uint32*) 0x40013808) = 0x4000;
 146              		.loc 1 41 0
 147 0058 144B     		ldr	r3, .L8+16
 148 005a 8022     		movs	r2, #128
 149 005c D201     		lsls	r2, r2, #7
 150 005e 1A60     		str	r2, [r3]
  42:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/FlipFlopIrq\startup.c **** 
  43:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/FlipFlopIrq\startup.c **** 	EXTI.IMR |= 0x8;
 151              		.loc 1 43 0
 152 0060 134B     		ldr	r3, .L8+20
 153 0062 134A     		ldr	r2, .L8+20
 154 0064 1268     		ldr	r2, [r2]
 155 0066 0821     		movs	r1, #8
 156 0068 0A43     		orrs	r2, r1
 157 006a 1A60     		str	r2, [r3]
  44:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/FlipFlopIrq\startup.c **** 	EXTI.FTSR |= 0x8;
 158              		.loc 1 44 0
 159 006c 104B     		ldr	r3, .L8+20
 160 006e 104A     		ldr	r2, .L8+20
 161 0070 D268     		ldr	r2, [r2, #12]
 162 0072 0821     		movs	r1, #8
 163 0074 0A43     		orrs	r2, r1
 164 0076 DA60     		str	r2, [r3, #12]
  45:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/FlipFlopIrq\startup.c **** 	EXTI.RTSR = 0x0;
 165              		.loc 1 45 0
 166 0078 0D4B     		ldr	r3, .L8+20
 167 007a 0022     		movs	r2, #0
 168 007c 9A60     		str	r2, [r3, #8]
  46:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/FlipFlopIrq\startup.c **** 	//*((uint32*) 0x40013C00) = 0x8;
  47:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/FlipFlopIrq\startup.c **** 	//*((uint32*) 0x40013C08) = 0x8;
  48:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/FlipFlopIrq\startup.c **** 
  49:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/FlipFlopIrq\startup.c **** 	*((void (**)(void) ) 0x2001C064) = irq_handler;
 169              		.loc 1 49 0
 170 007e 0D4B     		ldr	r3, .L8+24
 171 0080 0D4A     		ldr	r2, .L8+28
 172 0082 1A60     		str	r2, [r3]
  50:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/FlipFlopIrq\startup.c **** 	NVIC_ISER.REG_0 |= (1<<9);
 173              		.loc 1 50 0
 174 0084 0D4B     		ldr	r3, .L8+32
 175 0086 0D4A     		ldr	r2, .L8+32
 176 0088 1268     		ldr	r2, [r2]
 177 008a 8021     		movs	r1, #128
 178 008c 8900     		lsls	r1, r1, #2
 179 008e 0A43     		orrs	r2, r1
 180 0090 1A60     		str	r2, [r3]
  51:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/FlipFlopIrq\startup.c **** 	//*((uint32*) 0xE000E100) = 0x200;
  52:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/FlipFlopIrq\startup.c **** }
 181              		.loc 1 52 0
 182 0092 C046     		nop
 183 0094 1800     		movs	r0, r3
 184 0096 BD46     		mov	sp, r7
 185              		@ sp needed
 186 0098 80BD     		pop	{r7, pc}
 187              	.L9:
 188 009a C046     		.align	2
 189              	.L8:
 190 009c 08ED00E0 		.word	-536810232
 191 00a0 00C00120 		.word	536985600
 192 00a4 000C0240 		.word	1073875968
 193 00a8 55550000 		.word	21845
 194 00ac 08380140 		.word	1073821704
 195 00b0 003C0140 		.word	1073822720
 196 00b4 64C00120 		.word	536985700
 197 00b8 00000000 		.word	irq_handler
 198 00bc 00E100E0 		.word	-536813312
 199              		.cfi_endproc
 200              	.LFE2:
 202              		.align	1
 203              		.global	main
 204              		.syntax unified
 205              		.code	16
 206              		.thumb_func
 207              		.fpu softvfp
 209              	main:
 210              	.LFB3:
  53:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/FlipFlopIrq\startup.c **** 
  54:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/FlipFlopIrq\startup.c **** void main(void)
  55:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/FlipFlopIrq\startup.c **** {
 211              		.loc 1 55 0
 212              		.cfi_startproc
 213              		@ args = 0, pretend = 0, frame = 8
 214              		@ frame_needed = 1, uses_anonymous_args = 0
 215 00c0 80B5     		push	{r7, lr}
 216              		.cfi_def_cfa_offset 8
 217              		.cfi_offset 7, -8
 218              		.cfi_offset 14, -4
 219 00c2 82B0     		sub	sp, sp, #8
 220              		.cfi_def_cfa_offset 16
 221 00c4 00AF     		add	r7, sp, #0
 222              		.cfi_def_cfa_register 7
  56:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/FlipFlopIrq\startup.c **** 	init_app();
 223              		.loc 1 56 0
 224 00c6 FFF7FEFF 		bl	init_app
 225              	.L11:
 226              	.LBB2:
  57:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/FlipFlopIrq\startup.c **** 	while (1) {
  58:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/FlipFlopIrq\startup.c **** 		uint32 x = GPIO_E.IDR_LOW;
 227              		.loc 1 58 0 discriminator 1
 228 00ca 054B     		ldr	r3, .L12
 229 00cc 1B7C     		ldrb	r3, [r3, #16]
 230 00ce DBB2     		uxtb	r3, r3
 231 00d0 7B60     		str	r3, [r7, #4]
  59:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/FlipFlopIrq\startup.c **** 		GPIO_D.ODR_LOW = counter;
 232              		.loc 1 59 0 discriminator 1
 233 00d2 044A     		ldr	r2, .L12+4
 234 00d4 044B     		ldr	r3, .L12+8
 235 00d6 1B78     		ldrb	r3, [r3]
 236 00d8 DBB2     		uxtb	r3, r3
 237 00da 1375     		strb	r3, [r2, #20]
 238              	.LBE2:
  57:C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/FlipFlopIrq\startup.c **** 	while (1) {
 239              		.loc 1 57 0 discriminator 1
 240 00dc F5E7     		b	.L11
 241              	.L13:
 242 00de C046     		.align	2
 243              	.L12:
 244 00e0 00100240 		.word	1073876992
 245 00e4 000C0240 		.word	1073875968
 246 00e8 00000000 		.word	counter
 247              		.cfi_endproc
 248              	.LFE3:
 250              	.Letext0:
 251              		.file 2 "C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/FlipFlopIrq/types.h"
 252              		.file 3 "C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/FlipFlopIrq/interrupt.h"
 253              		.file 4 "C:/Users/amk19/ETERM8/armassembler/code_lite/keyb_reader/FlipFlopIrq/gpio.h"

/*
 * 	startup.c
 *
 */
 
 #include "types.h"
 #include "interrupt.h"
 #include "gpio.h"

#define RCC_APB2ENR 0x40023844
#define SCB_VTOR (*((uint32*) 0xE000ED08))
 
void startup(void) __attribute__((naked)) __attribute__((section (".start_section")) );

void startup ( void )
{
__asm volatile(
	" LDR R0,=0x2001C000\n"		/* set stack */
	" MOV SP,R0\n"
	" BL main\n"				/* call main */
	"_exit: B .\n"				/* never return */
	) ;
}

uint8 volatile counter = 0;
void irq_handler(void)
{
	if((EXTI.PR & 0x08)) {
		uint8 irqId = GPIO_E.IDR_LOW;
		

		if((GPIO_E.IDR_LOW & 0x1)) {
			counter++;
			irqId = 1;
			GPIO_D.ODR_LOW = counter;
		} else if ((GPIO_E.IDR_LOW & (1<<1))) {
			counter = 0;
			irqId = 2;
			GPIO_D.ODR_LOW = counter;
		} else if ((GPIO_E.IDR_LOW & (1<<2))) {
			irqId = 4;
			if(GPIO_D.ODR_LOW != 0x0 && GPIO_D.ODR_LOW != 0xFF){
				GPIO_D.ODR_LOW = 0xFF;
			}
			GPIO_D.ODR_LOW = ~GPIO_D.ODR_LOW;
		}

		GPIO_E.ODR_LOW |= (irqId << 4);
		GPIO_E.ODR_LOW &= ~(irqId << 4);
		EXTI.PR |= 0x08;
			
	}
	
}
init_app(void) {
	
#ifdef USBDM
	// Starta klockor för port D och E
	*((unsigned long *) 0x40023830) = 	0x18;
	
	// Starta SYSCFG klocka
	*((unsigned long *) 0x40023844) |= 	0x4000;
	
	// Relokera vektortabellen
	SCB_VTOR = VTOR;
#endif
	*((uint32*)RCC_APB2ENR) = 0x4000;

	GPIO_D.MODER = 0x00005555;
	GPIO_E.MODER = 0x00001500;
    
    GPIO_E.ODR_LOW = 0x70;
    GPIO_E.ODR_LOW = ~0x70;
    
	SYS_CFG.EXTICR1 = 0x4000;

	EXTI.IMR |= 0x8;
	EXTI.FTSR |= 0x8;
	EXTI.RTSR &= ~0x8;

	*((void (**)(void) ) 0x2001C064) = irq_handler;
	
    
    NVIC_ISER.REG_0 |= (1<<9);
}

void main(void)
{
	init_app();
	while (1) {
		//GPIO_D.ODR_LOW = counter;
	}
}
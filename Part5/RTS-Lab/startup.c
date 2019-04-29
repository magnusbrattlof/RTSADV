 
/* **********************************************************************
	STANDARD STARTUP ROUTINE
*********************************************************************** */

#include "stm32f4xx.h"

void startup(void) __attribute__((naked)) __attribute__((section (".start_section")) );

static void Init(void) __attribute__((used));
static void Exit(void) __attribute__((used));

/* Built in DBG-routines, absolute addresses */
typedef void (* function1 )(void);  

#define __portInit  ((function1)    (0x08000201))   /* do hardware initialisation */
#define __exitDBG   ((function1)    (0x08000205))   /* reentry in debugger */
#define __clockInit ((function1)    (0x08000209))   /* do hardware initialisation */
#define __uartInit  ((function1)    (0x0800020d))   /* do hardware initialisation */
#define __rtsTag    ((long *)       (0x08000210))   /* monitor version tag */
#define __rtsInit   ((function1)    (0x08000215))   /* do RTS hardware initialisation */

void DUMP(char *s);

#define __USE_UNALIGN_TRP       // Note: Usage Fault exception enabled for unaligned 16-bit/32-bit data transfers

static void __sys_init() {
	__set_CONTROL(__get_CONTROL() & ~0x03); // Use MSP and privileged Thread mode

    SCB->CCR = 0x210;		// STKALIGN + DIV_0_TRP 
#ifdef __USE_UNALIGN_TRP
    SCB->CCR |= 0x008;      // + UNALIGN_TRP
#else
	DUMP("\n\rNOTE: Usage Fault exception disabled for unaligned 16-bit/32-bit data transfers!\n\r");
#endif

    //
    // FPU enabled by dbgARM monitor, in function SystemInit() called by ResetHandler 
	//	SCB->CPACR = 0xF00000; // Enable FPU
	FPU->FPCCR = 0x80000000; // No lazy stacking
}

static void __bss_init() {
asm volatile(
	" ldr  r2, =_sbss\n"  
	" b LoopFillZerobss\n"
/* Zero fill the bss segment. */  
"FillZerobss:\n"
	" movs  r3, #0\n"
	" str  r3, [r2], #4\n"
    
"LoopFillZerobss:\n"
	" ldr  r3, = _ebss\n"
	" cmp  r2, r3\n"
	" bcc  FillZerobss\n"
	) ;
}

static void Init( void )
{

	__bss_init();
	
	if (*__rtsTag == 0x00abacab)
		__rtsInit();
	else
		DUMP("\n\rWarning: Incompatible monitor version - limited functionality!\n\r");

	__sys_init();
}

static void Exit( void )
{

}

void startup( void )
{
asm volatile(
	" NOP\n"					/* executed by first 'trace'-command */
	" LDR SP,=0x2001C000\n"		/* set stack */

	" BL Init\n"				/* do hardware init */
	" BL main\n"				/* call main */
	" B  Exit\n"				/* exit to debugger */
	".L1: B .L1\n"				/* never return */
	) ;
}



/* Entry Point */
ENTRY(Reset_Handler)

/* Highest address of the user mode stack */
_estack = 0x20020000;    /* end of RAM */

/* Specify the memory areas */
MEMORY
{
    FLASH (rx)      : ORIGIN = 0x08000000, LENGTH = 1024K
    RAM (xrw)       : ORIGIN = 0x20000000, LENGTH = 128K
    ITCMRAM (xrw)   : ORIGIN = 0x00000000, LENGTH = 64K
}

/* Define output sections */
SECTIONS
{
  /* Vector table at FLASH start */
  .isr_vector :
  {
        . = ALIGN(4);
        KEEP(*(.isr_vector .isr_vector*)) /* Startup code */
        . = ALIGN(4);
  } >FLASH

  /* The program code and other data goes into FLASH */
  .text :
  {
      . = ALIGN(4);
      *(.text .text*)             /* .text and .text* sections (code) */
      *(.glue_7 .glue_7t)         /* glue arm to thumb code and thumb to arm code */
      . = ALIGN(4);
      _etext = .;                 /* define a global symbols at end of code */
  } >FLASH

  /* Constant data goes into FLASH */
  .rodata :
  {
      . = ALIGN(4);
      *(.rodata .rodata*)         /* .rodata .rodata* sections (constants, strings, etc.) */
      . = ALIGN(4);
  } >FLASH

  /* Initialized data sections goes into RAM, load LMA copy after code */
  .data :
  {
      . = ALIGN(4);
      _sdata = .;                 /* create a global symbol at data start */
      *(.data .data*)             /* .data .data* sections */
      . = ALIGN(4);
      _edata = .;                 /* define a global symbol at data end */
  } >RAM AT> FLASH
  _flash_sdata = LOADADDR(.data);

  /* Uninitialized data section */
  .bss :
  {
      /* This is used by the startup in order to initialize the .bss secion */
      . = ALIGN(4);
      _sbss = .;                  /* define a global symbol at bss start */
      *(.bss .bss*)
      *(COMMON)                   /* heritage */
      . = ALIGN(4);
      _ebss = .;                  /* define a global symbol at bss end */
  } >RAM
}

   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.13.3 - 22 May 2025
   3                     ; Generator (Limited) V4.6.5 - 22 May 2025
  53                     ; 3 void simple_delay(volatile uint32_t n)
  53                     ; 4 {
  55                     	switch	.text
  56  0000               _simple_delay:
  58       00000000      OFST:	set	0
  61  0000               L13:
  62                     ; 5     while (n--)
  64  0000 96            	ldw	x,sp
  65  0001 1c0003        	addw	x,#OFST+3
  66  0004 cd0000        	call	c_ltor
  68  0007 96            	ldw	x,sp
  69  0008 1c0003        	addw	x,#OFST+3
  70  000b a601          	ld	a,#1
  71  000d cd0000        	call	c_lgsbc
  73  0010 cd0000        	call	c_lrzmp
  75  0013 26eb          	jrne	L13
  76                     ; 8 }
  79  0015 81            	ret
 105                     ; 13 void main(void)
 105                     ; 14 {
 106                     	switch	.text
 107  0016               _main:
 111                     ; 16     GPIO_Init(GPIOD, GPIO_PIN_4, GPIO_MODE_OUT_PP_LOW_FAST);
 113  0016 4be0          	push	#224
 114  0018 4b10          	push	#16
 115  001a ae500f        	ldw	x,#20495
 116  001d cd0000        	call	_GPIO_Init
 118  0020 85            	popw	x
 119  0021               L54:
 120                     ; 20         GPIO_WriteReverse(GPIOD, GPIO_PIN_4);
 122  0021 4b10          	push	#16
 123  0023 ae500f        	ldw	x,#20495
 124  0026 cd0000        	call	_GPIO_WriteReverse
 126  0029 84            	pop	a
 127                     ; 21         simple_delay(BLINK_DELAY);
 129  002a ae1388        	ldw	x,#5000
 130  002d 89            	pushw	x
 131  002e ae0000        	ldw	x,#0
 132  0031 89            	pushw	x
 133  0032 adcc          	call	_simple_delay
 135  0034 5b04          	addw	sp,#4
 137  0036 20e9          	jra	L54
 150                     	xdef	_main
 151                     	xdef	_simple_delay
 152                     	xref	_GPIO_WriteReverse
 153                     	xref	_GPIO_Init
 172                     	xref	c_lrzmp
 173                     	xref	c_lgsbc
 174                     	xref	c_ltor
 175                     	end

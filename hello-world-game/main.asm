;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.0.7 #12016 (MINGW64)
;--------------------------------------------------------
	.module main
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _printf
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area _DABS (ABS)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area _HOME
	.area _GSINIT
	.area _GSFINAL
	.area _GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
;main.c:3: void main () {
;	---------------------------------
; Function main
; ---------------------------------
_main::
;main.c:4: printf ("hello world.\nvarun kedia");
	ld	hl, #___str_0
	push	hl
	call	_printf
	add	sp, #2
;main.c:5: }
	ret
___str_0:
	.ascii "hello world."
	.db 0x0a
	.ascii "varun kedia"
	.db 0x00
	.area _CODE
	.area _CABS (ABS)

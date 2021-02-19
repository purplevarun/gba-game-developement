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
	.globl _set_sprite_data
	.globl _smileFace1
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
_smileFace1::
	.ds 16
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
;smile.c:26: unsigned char smileFace1[] =
	ld	hl, #_smileFace1
	ld	(hl), #0x7e
	ld	hl, #(_smileFace1 + 0x0001)
	ld	(hl), #0x7e
	ld	hl, #(_smileFace1 + 0x0002)
	ld	(hl), #0xff
	ld	hl, #(_smileFace1 + 0x0003)
	ld	(hl), #0x81
	ld	hl, #(_smileFace1 + 0x0004)
	ld	(hl), #0xff
	ld	hl, #(_smileFace1 + 0x0005)
	ld	(hl), #0xa5
	ld	hl, #(_smileFace1 + 0x0006)
	ld	(hl), #0xff
	ld	hl, #(_smileFace1 + 0x0007)
	ld	(hl), #0x81
	ld	hl, #(_smileFace1 + 0x0008)
	ld	(hl), #0xff
	ld	hl, #(_smileFace1 + 0x0009)
	ld	(hl), #0xa5
	ld	hl, #(_smileFace1 + 0x000a)
	ld	(hl), #0xff
	ld	hl, #(_smileFace1 + 0x000b)
	ld	(hl), #0xbd
	ld	hl, #(_smileFace1 + 0x000c)
	ld	(hl), #0xff
	ld	hl, #(_smileFace1 + 0x000d)
	ld	(hl), #0x81
	ld	hl, #(_smileFace1 + 0x000e)
	ld	(hl), #0x7e
	ld	hl, #(_smileFace1 + 0x000f)
	ld	(hl), #0x7e
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
;main.c:4: void main () {
;	---------------------------------
; Function main
; ---------------------------------
_main::
;main.c:5: set_sprite_data (0,2,smileFace1);
	ld	hl, #_smileFace1
	push	hl
	ld	a, #0x02
	push	af
	inc	sp
	xor	a, a
	push	af
	inc	sp
	call	_set_sprite_data
	add	sp, #4
;c:/users/purpl/desktop/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0002)
	ld	(hl), #0x00
;main.c:6: set_sprite_tile (0,0);
;main.c:7: }
	ret
	.area _CODE
	.area _CABS (ABS)

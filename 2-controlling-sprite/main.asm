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
	.globl _smilers
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
_smilers::
	.ds 96
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
;4smiles.c:26: unsigned char smilers[] =
	ld	hl, #_smilers
	ld	(hl), #0x7e
	ld	hl, #(_smilers + 0x0001)
	ld	(hl), #0x7e
	ld	hl, #(_smilers + 0x0002)
	ld	(hl), #0x81
	ld	hl, #(_smilers + 0x0003)
	ld	(hl), #0x81
	ld	hl, #(_smilers + 0x0004)
	ld	(hl), #0xa5
	ld	hl, #(_smilers + 0x0005)
	ld	(hl), #0xa5
	ld	hl, #(_smilers + 0x0006)
	ld	(hl), #0x81
	ld	hl, #(_smilers + 0x0007)
	ld	(hl), #0x81
	ld	hl, #(_smilers + 0x0008)
	ld	(hl), #0x81
	ld	hl, #(_smilers + 0x0009)
	ld	(hl), #0x81
	ld	hl, #(_smilers + 0x000a)
	ld	(hl), #0x99
	ld	hl, #(_smilers + 0x000b)
	ld	(hl), #0x99
	ld	hl, #(_smilers + 0x000c)
	ld	(hl), #0x81
	ld	hl, #(_smilers + 0x000d)
	ld	(hl), #0x81
	ld	hl, #(_smilers + 0x000e)
	ld	(hl), #0x7e
	ld	hl, #(_smilers + 0x000f)
	ld	(hl), #0x7e
	ld	hl, #(_smilers + 0x0010)
	ld	(hl), #0x7e
	ld	hl, #(_smilers + 0x0011)
	ld	(hl), #0x7e
	ld	hl, #(_smilers + 0x0012)
	ld	(hl), #0xa5
	ld	hl, #(_smilers + 0x0013)
	ld	(hl), #0xa5
	ld	hl, #(_smilers + 0x0014)
	ld	(hl), #0xa5
	ld	hl, #(_smilers + 0x0015)
	ld	(hl), #0xa5
	ld	hl, #(_smilers + 0x0016)
	ld	(hl), #0x81
	ld	hl, #(_smilers + 0x0017)
	ld	(hl), #0x81
	ld	hl, #(_smilers + 0x0018)
	ld	(hl), #0xbd
	ld	hl, #(_smilers + 0x0019)
	ld	(hl), #0xbd
	ld	hl, #(_smilers + 0x001a)
	ld	(hl), #0xbd
	ld	hl, #(_smilers + 0x001b)
	ld	(hl), #0xbd
	ld	hl, #(_smilers + 0x001c)
	ld	(hl), #0x81
	ld	hl, #(_smilers + 0x001d)
	ld	(hl), #0x81
	ld	hl, #(_smilers + 0x001e)
	ld	(hl), #0x7e
	ld	hl, #(_smilers + 0x001f)
	ld	(hl), #0x7e
	ld	hl, #(_smilers + 0x0020)
	ld	(hl), #0x7e
	ld	hl, #(_smilers + 0x0021)
	ld	(hl), #0x7e
	ld	hl, #(_smilers + 0x0022)
	ld	(hl), #0x81
	ld	hl, #(_smilers + 0x0023)
	ld	(hl), #0xa5
	ld	hl, #(_smilers + 0x0024)
	ld	(hl), #0x81
	ld	hl, #(_smilers + 0x0025)
	ld	(hl), #0xa5
	ld	hl, #(_smilers + 0x0026)
	ld	(hl), #0x81
	ld	hl, #(_smilers + 0x0027)
	ld	(hl), #0x81
	ld	hl, #(_smilers + 0x0028)
	ld	(hl), #0x81
	ld	hl, #(_smilers + 0x0029)
	ld	(hl), #0xa5
	ld	hl, #(_smilers + 0x002a)
	ld	(hl), #0x81
	ld	hl, #(_smilers + 0x002b)
	ld	(hl), #0x99
	ld	hl, #(_smilers + 0x002c)
	ld	(hl), #0x81
	ld	hl, #(_smilers + 0x002d)
	ld	(hl), #0x81
	ld	hl, #(_smilers + 0x002e)
	ld	(hl), #0x7e
	ld	hl, #(_smilers + 0x002f)
	ld	(hl), #0x7e
	ld	hl, #(_smilers + 0x0030)
	ld	(hl), #0x00
	ld	hl, #(_smilers + 0x0031)
	ld	(hl), #0x00
	ld	hl, #(_smilers + 0x0032)
	ld	(hl), #0x00
	ld	hl, #(_smilers + 0x0033)
	ld	(hl), #0x00
	ld	hl, #(_smilers + 0x0034)
	ld	(hl), #0x00
	ld	hl, #(_smilers + 0x0035)
	ld	(hl), #0x00
	ld	hl, #(_smilers + 0x0036)
	ld	(hl), #0x00
	ld	hl, #(_smilers + 0x0037)
	ld	(hl), #0x00
	ld	hl, #(_smilers + 0x0038)
	ld	(hl), #0x00
	ld	hl, #(_smilers + 0x0039)
	ld	(hl), #0x00
	ld	hl, #(_smilers + 0x003a)
	ld	(hl), #0x00
	ld	hl, #(_smilers + 0x003b)
	ld	(hl), #0x00
	ld	hl, #(_smilers + 0x003c)
	ld	(hl), #0x00
	ld	hl, #(_smilers + 0x003d)
	ld	(hl), #0x00
	ld	hl, #(_smilers + 0x003e)
	ld	(hl), #0x00
	ld	hl, #(_smilers + 0x003f)
	ld	(hl), #0x00
	ld	hl, #(_smilers + 0x0040)
	ld	(hl), #0x00
	ld	hl, #(_smilers + 0x0041)
	ld	(hl), #0x00
	ld	hl, #(_smilers + 0x0042)
	ld	(hl), #0x00
	ld	hl, #(_smilers + 0x0043)
	ld	(hl), #0x00
	ld	hl, #(_smilers + 0x0044)
	ld	(hl), #0x00
	ld	hl, #(_smilers + 0x0045)
	ld	(hl), #0x00
	ld	hl, #(_smilers + 0x0046)
	ld	(hl), #0x00
	ld	hl, #(_smilers + 0x0047)
	ld	(hl), #0x00
	ld	hl, #(_smilers + 0x0048)
	ld	(hl), #0x00
	ld	hl, #(_smilers + 0x0049)
	ld	(hl), #0x00
	ld	hl, #(_smilers + 0x004a)
	ld	(hl), #0x00
	ld	hl, #(_smilers + 0x004b)
	ld	(hl), #0x00
	ld	hl, #(_smilers + 0x004c)
	ld	(hl), #0x00
	ld	hl, #(_smilers + 0x004d)
	ld	(hl), #0x00
	ld	hl, #(_smilers + 0x004e)
	ld	(hl), #0x00
	ld	hl, #(_smilers + 0x004f)
	ld	(hl), #0x00
	ld	hl, #(_smilers + 0x0050)
	ld	(hl), #0x00
	ld	hl, #(_smilers + 0x0051)
	ld	(hl), #0x00
	ld	hl, #(_smilers + 0x0052)
	ld	(hl), #0x00
	ld	hl, #(_smilers + 0x0053)
	ld	(hl), #0x00
	ld	hl, #(_smilers + 0x0054)
	ld	(hl), #0x00
	ld	hl, #(_smilers + 0x0055)
	ld	(hl), #0x00
	ld	hl, #(_smilers + 0x0056)
	ld	(hl), #0x00
	ld	hl, #(_smilers + 0x0057)
	ld	(hl), #0x00
	ld	hl, #(_smilers + 0x0058)
	ld	(hl), #0x00
	ld	hl, #(_smilers + 0x0059)
	ld	(hl), #0x00
	ld	hl, #(_smilers + 0x005a)
	ld	(hl), #0x00
	ld	hl, #(_smilers + 0x005b)
	ld	(hl), #0x00
	ld	hl, #(_smilers + 0x005c)
	ld	(hl), #0x00
	ld	hl, #(_smilers + 0x005d)
	ld	(hl), #0x00
	ld	hl, #(_smilers + 0x005e)
	ld	(hl), #0x00
	ld	hl, #(_smilers + 0x005f)
	ld	(hl), #0x00
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
;main.c:6: set_sprite_data(0,2,smilers);
	ld	hl, #_smilers
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
	ld	(hl), #0x02
;c:/users/purpl/desktop/gbdk/include/gb/gb.h:1077: OAM_item_t * itm = &shadow_OAM[nb];
	ld	hl, #_shadow_OAM
;c:/users/purpl/desktop/gbdk/include/gb/gb.h:1078: itm->y=y, itm->x=x;
	ld	a, #0x64
	ld	(hl+), a
	ld	(hl), #0x64
;main.c:9: SHOW_SPRITES;
	ldh	a, (_LCDC_REG+0)
	or	a, #0x02
	ldh	(_LCDC_REG+0),a
;main.c:15: }
	ret
	.area _CODE
	.area _CABS (ABS)

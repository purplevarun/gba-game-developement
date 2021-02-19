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
	.globl _delay
	.globl _smilers
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
_smilers::
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
;4smilers.c:26: unsigned char smilers[] =
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
	ld	(hl), #0xa5
	ld	hl, #(_smilers + 0x0009)
	ld	(hl), #0xa5
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
	dec	sp
;main.c:5: int i = 0;
	ld	bc, #0x0000
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
	ld	(hl), #0x00
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
;main.c:10: while (1) {
00104$:
;main.c:11: if (i>3)i=0;
	ld	e, b
	ld	d, #0x00
	ld	a, #0x03
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	bit	7, e
	jr	Z, 00121$
	bit	7, d
	jr	NZ, 00122$
	cp	a, a
	jr	00122$
00121$:
	bit	7, d
	jr	Z, 00122$
	scf
00122$:
	jr	NC, 00102$
	ld	bc, #0x0000
00102$:
;main.c:12: set_sprite_tile(0,i++);
	ld	e, c
	inc	bc
	ldhl	sp,	#0
	ld	(hl), e
;c:/users/purpl/desktop/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	de, #(_shadow_OAM + 0x0002)
	ld	a, (hl)
	ld	(de), a
;main.c:13: delay (1000);
	push	bc
	ld	hl, #0x03e8
	push	hl
	call	_delay
	add	sp, #2
	pop	bc
	jr	00104$
;main.c:15: }
	inc	sp
	ret
	.area _CODE
	.area _CABS (ABS)

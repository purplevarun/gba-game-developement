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
;main.c:8: void main () {
;	---------------------------------
; Function main
; ---------------------------------
_main::
	add	sp, #-2
;main.c:10: int i = start_X, j = start_Y;
	ld	bc, #0x0008
	ldhl	sp,	#0
	ld	(hl), #0x10
	xor	a, a
	inc	hl
	ld	(hl), a
;main.c:11: set_sprite_data (0,2,smileFace1);
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
;c:/users/purpl/desktop/gbdk/include/gb/gb.h:1077: OAM_item_t * itm = &shadow_OAM[nb];
	ld	hl, #_shadow_OAM
;c:/users/purpl/desktop/gbdk/include/gb/gb.h:1078: itm->y=y, itm->x=x;
	ld	a, #0x10
	ld	(hl+), a
	ld	(hl), #0x08
;main.c:14: SHOW_SPRITES;
	ldh	a, (_LCDC_REG+0)
	or	a, #0x02
	ldh	(_LCDC_REG+0),a
;main.c:15: while (1) {
00105$:
;main.c:16: if (i>end_X || j > end_Y){
	ld	e, b
	ld	d, #0x00
	ld	a, #0xa0
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	bit	7, e
	jr	Z, 00122$
	bit	7, d
	jr	NZ, 00123$
	cp	a, a
	jr	00123$
00122$:
	bit	7, d
	jr	Z, 00123$
	scf
00123$:
	jr	C, 00101$
	ldhl	sp,	#0
	ld	a, #0x98
	sub	a, (hl)
	inc	hl
	ld	a, #0x00
	sbc	a, (hl)
	ld	a, #0x00
	ld	d, a
	bit	7, (hl)
	jr	Z, 00124$
	bit	7, d
	jr	NZ, 00125$
	cp	a, a
	jr	00125$
00124$:
	bit	7, d
	jr	Z, 00125$
	scf
00125$:
	jr	NC, 00102$
00101$:
;main.c:17: i = start_X;
	ld	bc, #0x0008
;main.c:18: j = start_Y;
	ldhl	sp,	#0
	ld	(hl), #0x10
	xor	a, a
	inc	hl
	ld	(hl), a
00102$:
;main.c:20: move_sprite (0, i,j);
	ldhl	sp,	#0
	ld	d, (hl)
	ld	e, c
;c:/users/purpl/desktop/gbdk/include/gb/gb.h:1077: OAM_item_t * itm = &shadow_OAM[nb];
	ld	hl, #_shadow_OAM
;c:/users/purpl/desktop/gbdk/include/gb/gb.h:1078: itm->y=y, itm->x=x;
	ld	a, d
	ld	(hl+), a
	ld	(hl), e
;main.c:21: i+=10;
	ld	hl, #0x000a
	add	hl, bc
	ld	c, l
	ld	b, h
;main.c:22: j+=10;
;c
	pop	de
	push	de
	ld	hl, #0x000a
	add	hl, de
	inc	sp
	inc	sp
	push	hl
;main.c:23: delay(500);
	push	bc
	ld	hl, #0x01f4
	push	hl
	call	_delay
	add	sp, #2
	pop	bc
	jr	00105$
;main.c:25: }
	add	sp, #2
	ret
	.area _CODE
	.area _CABS (ABS)

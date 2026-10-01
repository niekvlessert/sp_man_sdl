; z80dasm 1.2.0
; command line: z80dasm -a -l -g 0xA000 -o /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/disasm/bank23_A000.asm /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/banks/bank23.bin

	org 0a000h

	cp 004h			;a000
	jp (hl)			;a002
	dec bc			;a003
	ret nc			;a004
	push af			;a005
	ld sp,001e9h		;a006
	ld (hl),037h		;a009
	ld (hl),0e9h		;a00b
	dec bc			;a00d
	ld sp,001e9h		;a00e
	ld (hl),037h		;a011
	ld (hl),0e9h		;a013
	dec bc			;a015
	jr nc,la048h		;a016
	ld sp,002fbh		;a018
	push af			;a01b
	ld sp,001e9h		;a01c
	ld (hl),037h		;a01f
	ld (hl),0e9h		;a021
	dec bc			;a023
	ld sp,001e9h		;a024
	ld (hl),037h		;a027
	ld (hl),0e9h		;a029
	dec bc			;a02b
	jr nc,la05eh		;a02c
	ld sp,018fbh		;a02e
	cp 010h			;a031
	sub c			;a033
	jp (hl)			;a034
	ld bc,09796h		;a035
	sub (hl)		;a038
	jp (hl)			;a039
	dec bc			;a03a
	sub c			;a03b
	jp (hl)			;a03c
	ld bc,09796h		;a03d
	sub (hl)		;a040
	jp (hl)			;a041
	dec bc			;a042
	sub b			;a043
	sub b			;a044
	sub c			;a045
	cp 010h			;a046
la048h:
	push af			;a048
	jp (hl)			;a049
	dec bc			;a04a
	sub c			;a04b
	jp (hl)			;a04c
	ld bc,09796h		;a04d
	sub (hl)		;a050
	ei			;a051
	ld (bc),a		;a052
	sub l			;a053
	sub h			;a054
	sub l			;a055
	sub h			;a056
	sub l			;a057
	sub h			;a058
	sub l			;a059
	sub h			;a05a
	ld sp,hl		;a05b
	ld a,e			;a05c
	xor b			;a05d
la05eh:
	ld sp,hl		;a05e
	ld a,e			;a05f
	xor b			;a060
	push af			;a061
	jp (hl)			;a062
	dec bc			;a063
	sub c			;a064
	jp (hl)			;a065
la066h:
	ld bc,09796h		;a066
	sub (hl)		;a069
	jp (hl)			;a06a
	dec bc			;a06b
la06ch:
	sub c			;a06c
	jp (hl)			;a06d
	ld bc,09796h		;a06e
	sub (hl)		;a071
la072h:
	jp (hl)			;a072
	dec bc			;a073
	sub b			;a074
	sub b			;a075
	sub c			;a076
	ei			;a077
la078h:
	ld (bc),a		;a078
	rst 38h			;a079
	cp 001h			;a07a
	jp (hl)			;a07c
	dec bc			;a07d
la07eh:
	set 1,e			;a07e
	jp pe,0f207h		;a080
	ld (bc),a		;a083
la084h:
	pop af			;a084
	ld d,d			;a085
	defb 0ddh,006h,076h ;illegal sequence	;a086
	in a,(001h)		;a089
	push af			;a08b
	pop bc			;a08c
	jp nc,05020h		;a08d
la090h:
	sub b			;a090
	pop de			;a091
	jr nz,la066h		;a092
	jr nz,la0e6h		;a094
la096h:
	sub b			;a096
	pop de			;a097
	jr nz,la06ch		;a098
	jr nz,la0ech		;a09a
la09ch:
	sub b			;a09c
	pop de			;a09d
	jr nz,la072h		;a09e
	jr nz,$+66		;a0a0
la0a2h:
	add a,b			;a0a2
	pop de			;a0a3
	jr nz,la078h		;a0a4
	jr nz,$+66		;a0a6
	add a,b			;a0a8
	pop de			;a0a9
	jr nz,la07eh		;a0aa
	jr nz,$+66		;a0ac
	add a,b			;a0ae
	pop de			;a0af
la0b0h:
	jr nz,la084h		;a0b0
	jr nz,la0e4h		;a0b2
	ld (hl),b		;a0b4
	pop de			;a0b5
	jr nz,$-44		;a0b6
	jr nz,$+50		;a0b8
	ld (hl),b		;a0ba
	pop de			;a0bb
	jr nz,la090h		;a0bc
	jr nz,$+50		;a0be
	ld (hl),b		;a0c0
	pop de			;a0c1
	jr nz,la096h		;a0c2
	jr nz,$+82		;a0c4
	sub b			;a0c6
	pop de			;a0c7
	jr nz,la09ch		;a0c8
	jr nz,$+82		;a0ca
	sub b			;a0cc
	pop de			;a0cd
	jr nz,la0a2h		;a0ce
	jr nz,la122h		;a0d0
	ei			;a0d2
	ld (bc),a		;a0d3
	cp 001h			;a0d4
	jp p,0f102h		;a0d6
	ld d,d			;a0d9
	jp pe,0e909h		;a0da
	dec bc			;a0dd
	defb 0ddh,005h,065h ;illegal sequence	;a0de
	in a,(001h)		;a0e1
	push af			;a0e3
la0e4h:
	pop bc			;a0e4
	pop de			;a0e5
la0e6h:
	ld hl,02131h		;a0e6
	ld sp,03121h		;a0e9
la0ech:
	ld hl,02131h		;a0ec
	ld sp,03121h		;a0ef
	ld hl,02151h		;a0f2
	ld d,c			;a0f5
	ld hl,08151h		;a0f6
	sub c			;a0f9
	add a,c			;a0fa
	sub c			;a0fb
	add a,c			;a0fc
	ei			;a0fd
	ld (bc),a		;a0fe
	pop bc			;a0ff
	jp p,0f105h		;a100
	ld h,e			;a103
	in a,(001h)		;a104
	push af			;a106
	jp pe,0eb07h		;a107
	inc bc			;a10a
	inc hl			;a10b
	jp (hl)			;a10c
	dec bc			;a10d
	jp nc,0ec9ah		;a10e
	jp pe,09002h		;a111
	jp pe,0eb07h		;a114
	inc de			;a117
	inc hl			;a118
	jp (hl)			;a119
	ld bc,09ad1h		;a11a
	sbc a,d			;a11d
	sub (hl)		;a11e
	add a,a			;a11f
la120h:
	jp (hl)			;a120
	ex af,af'		;a121
la122h:
	ld a,d			;a122
	call pe,002eah		;a123
	ld (hl),b		;a126
	ei			;a127
	ld (bc),a		;a128
	jp pe,0eb07h		;a129
	inc bc			;a12c
	inc hl			;a12d
	jp (hl)			;a12e
	dec bc			;a12f
	ld a,(bc)		;a130
	call pe,002eah		;a131
	nop			;a134
	jp pe,0eb07h		;a135
	inc bc			;a138
	inc hl			;a139
	ld a,(de)		;a13a
	call pe,002eah		;a13b
	djnz $-20		;a13e
	rlca			;a140
	ex de,hl		;a141
	inc bc			;a142
	inc hl			;a143
	ld a,(bc)		;a144
	call pe,002eah		;a145
	nop			;a148
	jp pe,0eb07h		;a149
	inc bc			;a14c
	inc hl			;a14d
	add hl,de		;a14e
	jp pe,0f109h		;a14f
	ld h,c			;a152
	jp p,0ed05h		;a153
	ex af,af'		;a156
	ex de,hl		;a157
	adc a,c			;a158
	jr nz,$-35		;a159
	inc b			;a15b
	ret nc			;a15c
	push af			;a15d
	ld hl,001e9h		;a15e
	ld h,027h		;a161
	ld h,0e9h		;a163
	dec bc			;a165
	ld hl,001e9h		;a166
	ld h,027h		;a169
	ld h,0e9h		;a16b
	dec bc			;a16d
	jr nz,la190h		;a16e
	ld hl,002fbh		;a170
	call c,0feffh		;a173
	ld bc,00be9h		;a176
	push af			;a179
	jp pe,0db0bh		;a17a
	dec b			;a17d
	ex de,hl		;a17e
	rla			;a17f
	ld bc,02fd5h		;a180
	call pe,004eah		;a183
	daa			;a186
	cp 001h			;a187
	jp (hl)			;a189
	dec bc			;a18a
	push af			;a18b
	jp pe,0db0ch		;a18c
	add hl,bc		;a18f
la190h:
	ex de,hl		;a190
	rla			;a191
	ld bc,02fd3h		;a192
	call pe,008eah		;a195
	daa			;a198
	ei			;a199
	ex af,af'		;a19a
	push af			;a19b
	ex de,hl		;a19c
	rla			;a19d
	ld bc,00ceah		;a19e
	call nc,0ec9fh		;a1a1
	jp pe,09708h		;a1a4
la1a7h:
	ei			;a1a7
	inc b			;a1a8
	push af			;a1a9
	ex de,hl		;a1aa
	rla			;a1ab
	ld bc,00deah		;a1ac
	out (02fh),a		;a1af
	call pe,008eah		;a1b1
	daa			;a1b4
	ei			;a1b5
	ld b,0ffh		;a1b6
	cp 001h			;a1b8
	ret m			;a1ba
	jr z,la1a7h		;a1bb
	rrca			;a1bd
	sub 0afh		;a1be
	ld bc,00be9h		;a1c0
	ex de,hl		;a1c3
	add hl,de		;a1c4
	ld d,b			;a1c5
	push af			;a1c6
	push de			;a1c7
	ld hl,001e9h		;a1c8
	ld h,027h		;a1cb
	ld h,0e9h		;a1cd
	dec bc			;a1cf
	ld hl,001e9h		;a1d0
	ld h,027h		;a1d3
	ld h,0e9h		;a1d5
	dec bc			;a1d7
	jr nz,la1fah		;a1d8
	ld hl,002fbh		;a1da
	cp 001h			;a1dd
	ret m			;a1df
	jr z,$-20		;a1e0
	inc c			;a1e2
	in a,(003h)		;a1e3
	sub 0afh		;a1e5
	ld bc,00be9h		;a1e7
	ex de,hl		;a1ea
	ld (hl),e		;a1eb
	ld b,h			;a1ec
	push af			;a1ed
	call nc,0e921h		;a1ee
	ld bc,02726h		;a1f1
	ld h,0e9h		;a1f4
	dec bc			;a1f6
	ld hl,001e9h		;a1f7
la1fah:
	ld h,027h		;a1fa
	ld h,0e9h		;a1fc
	dec bc			;a1fe
	jr nz,la221h		;a1ff
	ld hl,010fbh		;a201
	push de			;a204
	push af			;a205
	sub c			;a206
	jp (hl)			;a207
	ld bc,09796h		;a208
	sub (hl)		;a20b
	jp (hl)			;a20c
	dec bc			;a20d
	sub c			;a20e
	jp (hl)			;a20f
	ld bc,09796h		;a210
	sub (hl)		;a213
	jp (hl)			;a214
	dec bc			;a215
	sub b			;a216
	sub b			;a217
	sub c			;a218
	ei			;a219
	ex af,af'		;a21a
	jp pe,0eb0fh		;a21b
	ld (hl),e		;a21e
	ld (hl),h		;a21f
	push af			;a220
la221h:
	call nc,0e921h		;a221
	ld bc,02726h		;a224
	ld h,0e9h		;a227
	dec bc			;a229
	ld hl,001e9h		;a22a
	ld h,027h		;a22d
	ld h,0e9h		;a22f
	dec bc			;a231
	jr nz,la254h		;a232
	ld hl,00cfbh		;a234
	push de			;a237
	dec h			;a238
	ret c			;a239
	call pe,001eah		;a23a
	ld (0feffh),hl		;a23d
	ld bc,028f8h		;a240
	jp pe,0d60fh		;a243
	xor a			;a246
	ld bc,00be9h		;a247
	ex de,hl		;a24a
	add hl,de		;a24b
	ld d,b			;a24c
	push af			;a24d
	call nc,0e921h		;a24e
	ld bc,02726h		;a251
la254h:
	ld h,0e9h		;a254
	dec bc			;a256
	ld hl,001e9h		;a257
	ld h,027h		;a25a
	ld h,0e9h		;a25c
	dec bc			;a25e
	jr nz,la281h		;a25f
	ld hl,002fbh		;a261
	cp 001h			;a264
	ret m			;a266
	ld (bc),a		;a267
	jp (hl)			;a268
	dec bc			;a269
	jp p,0f110h		;a26a
	ld d,h			;a26d
	xor 002h		;a26e
	push af			;a270
	ret nz			;a271
	ex de,hl		;a272
	inc bc			;a273
	inc hl			;a274
	jp pe,0d608h		;a275
	rra			;a278
	ld (bc),a		;a279
	jp nc,0d82ah		;a27a
	jp (hl)			;a27d
	ld bc,0eaech		;a27e
la281h:
	ld (bc),a		;a281
	inc h			;a282
	jp pe,0eb08h		;a283
	inc bc			;a286
	inc de			;a287
	sub l			;a288
	jp (hl)			;a289
	dec bc			;a28a
	adc a,d			;a28b
	jp (hl)			;a28c
	ld bc,0eaech		;a28d
	ld (bc),a		;a290
	add a,h			;a291
	jp pe,0eb08h		;a292
	inc bc			;a295
	inc de			;a296
	dec h			;a297
	jp (hl)			;a298
	dec bc			;a299
	ld a,d			;a29a
	jp (hl)			;a29b
	ld bc,0eaech		;a29c
	ld (bc),a		;a29f
	ld (hl),h		;a2a0
	jp pe,0eb08h		;a2a1
	inc bc			;a2a4
	inc de			;a2a5
	out (095h),a		;a2a6
	jp (hl)			;a2a8
	dec bc			;a2a9
	jp nc,0d85ah		;a2aa
	ei			;a2ad
	ld (bc),a		;a2ae
	rst 28h			;a2af
	cp 001h			;a2b0
	pop af			;a2b2
	ld h,d			;a2b3
	jp p,0e904h		;a2b4
	dec bc			;a2b7
	push af			;a2b8
	in a,(002h)		;a2b9
	ret m			;a2bb
	dec b			;a2bc
	jp pe,0ed06h		;a2bd
	ld (bc),a		;a2c0
	defb 0ddh,085h ;add a,ixl	;a2c1
	ld (021d1h),a		;a2c3
	inc sp			;a2c6
	ld (hl),e		;a2c7
	defb 0ddh,087h,021h ;illegal sequence	;a2c8
	xor h			;a2cb
	call pe,002eah		;a2cc
	and b			;a2cf
	ret m			;a2d0
	ld (bc),a		;a2d1
	ret nz			;a2d2
	xor 002h		;a2d3
	in a,(001h)		;a2d5
	ex de,hl		;a2d7
	rla			;a2d8
	inc de			;a2d9
	jp (hl)			;a2da
	ld bc,007eah		;a2db
	jp nc,04796h		;a2de
	ld d,(hl)		;a2e1
	jp (hl)			;a2e2
	dec bc			;a2e3
	out (098h),a		;a2e4
	call pe,002eah		;a2e6
	sub b			;a2e9
	jp pe,0ee07h		;a2ea
	inc b			;a2ed
	ex de,hl		;a2ee
	rla			;a2ef
	inc de			;a2f0
	sub 01fh		;a2f1
	ld (bc),a		;a2f3
	jp nc,0ef8ah		;a2f4
	ret c			;a2f7
	ei			;a2f8
	ld (bc),a		;a2f9
	cp 001h			;a2fa
	ret m			;a2fc
	ld (bc),a		;a2fd
	pop af			;a2fe
	ld h,d			;a2ff
	jp p,0f50ah		;a300
	ex de,hl		;a303
	ld b,e			;a304
	ld (hl),e		;a305
	in a,(002h)		;a306
	jp pe,0d609h		;a308
	ld b,002h		;a30b
	jp (hl)			;a30d
	dec bc			;a30e
	jp nc,0e941h		;a30f
	ld (bc),a		;a312
	ld b,e			;a313
	ld b,d			;a314
	ld b,e			;a315
	jp (hl)			;a316
	dec bc			;a317
	jp nc,0e941h		;a318
	ld (bc),a		;a31b
	ld b,e			;a31c
	ld b,d			;a31d
	ld b,e			;a31e
	jp (hl)			;a31f
	dec bc			;a320
	jp nc,0e941h		;a321
	ld (bc),a		;a324
	ld b,e			;a325
	ld b,d			;a326
	ld b,e			;a327
	jp (hl)			;a328
	dec bc			;a329
	jp pe,0d109h		;a32a
	sbc a,e			;a32d
	ei			;a32e
	ld (bc),a		;a32f
	ret c			;a330
	ret m			;a331
	ld (bc),a		;a332
	jp (hl)			;a333
	ld bc,008eah		;a334
	ex de,hl		;a337
	inc bc			;a338
	inc bc			;a339
	pop af			;a33a
	ld d,c			;a33b
	jp p,0f504h		;a33c
	call nz,0d4c5h		;a33f
	sub l			;a342
	and h			;a343
	add a,l			;a344
	sub h			;a345
	out (085h),a		;a346
	sub h			;a348
	ld (hl),l		;a349
	add a,h			;a34a
	sub l			;a34b
	and h			;a34c
	add a,l			;a34d
	sub h			;a34e
	jp nc,09485h		;a34f
	ld (hl),l		;a352
	add a,h			;a353
	sub l			;a354
	and h			;a355
	add a,l			;a356
	sub h			;a357
	pop de			;a358
	add a,l			;a359
	sub h			;a35a
	ei			;a35b
	inc b			;a35c
	cp 001h			;a35d
	ret m			;a35f
	ld (bc),a		;a360
	pop af			;a361
	ld d,c			;a362
	jp p,0ea03h		;a363
	ld c,0e9h		;a366
	dec bc			;a368
	in a,(002h)		;a369
	sub 02fh		;a36b
	ld bc,0ebf5h		;a36d
	ld (hl),e		;a370
	ld h,e			;a371
	push af			;a372
	pop de			;a373
	ld hl,001e9h		;a374
	ld h,027h		;a377
	ld h,0e9h		;a379
	dec bc			;a37b
	ld hl,001e9h		;a37c
	ld h,027h		;a37f
	ld h,0e9h		;a381
	dec bc			;a383
	jr nz,la3a6h		;a384
	ld hl,002fbh		;a386
	call c,0fed8h		;a389
	ld bc,002f8h		;a38c
	pop af			;a38f
	ld h,h			;a390
	jp p,0e905h		;a391
	dec bc			;a394
	push af			;a395
	ex de,hl		;a396
	ld (hl),e		;a397
	ld b,e			;a398
	jp pe,0db0eh		;a399
	ld (bc),a		;a39c
	sub 01fh		;a39d
	ld bc,la3d2h		;a39f
	add a,a			;a3a2
	and e			;a3a3
	add a,a			;a3a4
	jp (hl)			;a3a5
la3a6h:
	ld bc,0d186h		;a3a6
	rlca			;a3a9
	jp nc,0e9b6h		;a3aa
	dec bc			;a3ad
	xor a			;a3ae
	ret c			;a3af
	call pe,002eah		;a3b0
	and l			;a3b3
	ei			;a3b4
	ld (bc),a		;a3b5
	ex de,hl		;a3b6
	ld (hl),e		;a3b7
	ld b,e			;a3b8
	sub 003h		;a3b9
	ld bc,00feah		;a3bb
	sbc a,a			;a3be
	call pe,0ead8h		;a3bf
	ld (bc),a		;a3c2
	sub a			;a3c3
	jp pe,09401h		;a3c4
	rst 38h			;a3c7
	cp 001h			;a3c8
	ret m			;a3ca
	ld (bc),a		;a3cb
	pop af			;a3cc
	ld d,e			;a3cd
	jp p,0ea0ah		;a3ce
	dec b			;a3d1
la3d2h:
	jp (hl)			;a3d2
	djnz $-19		;a3d3
la3d5h:
	add a,c			;a3d5
	inc de			;a3d6
	in a,(001h)		;a3d7
	out (05fh),a		;a3d9
la3dbh:
	call pe,0eaf3h		;a3db
	ld bc,001e9h		;a3de
la3e1h:
	ld d,a			;a3e1
	cp 001h			;a3e2
	ret m			;a3e4
	ld (bc),a		;a3e5
	jp pe,0ed08h		;a3e6
	dec b			;a3e9
	jp p,0f102h		;a3ea
la3edh:
	ld d,d			;a3ed
	jp (hl)			;a3ee
	dec bc			;a3ef
	add a,(ix-079h)		;a3f0
la3f3h:
	in a,(001h)		;a3f3
	push af			;a3f5
	jp nc,05020h		;a3f6
la3f9h:
	sub b			;a3f9
	pop de			;a3fa
	jr nz,$-44		;a3fb
	jr nz,la44fh		;a3fd
la3ffh:
	sub b			;a3ff
	pop de			;a400
	jr nz,la3d5h		;a401
	jr nz,la455h		;a403
la405h:
	sub b			;a405
	pop de			;a406
	jr nz,la3dbh		;a407
	jr nz,la44bh		;a409
la40bh:
	add a,b			;a40b
	pop de			;a40c
	jr nz,la3e1h		;a40d
	jr nz,la451h		;a40f
	add a,b			;a411
	pop de			;a412
	jr nz,$-44		;a413
	jr nz,$+66		;a415
	add a,b			;a417
	pop de			;a418
	jr nz,la3edh		;a419
	jr nz,$+50		;a41b
	ld (hl),b		;a41d
	pop de			;a41e
	jr nz,la3f3h		;a41f
	jr nz,$+50		;a421
	ld (hl),b		;a423
	pop de			;a424
	jr nz,la3f9h		;a425
	jr nz,$+50		;a427
	ld (hl),b		;a429
	pop de			;a42a
	jr nz,la3ffh		;a42b
	jr nz,la47fh		;a42d
	sub b			;a42f
	pop de			;a430
	jr nz,la405h		;a431
	jr nz,la485h		;a433
	sub b			;a435
	pop de			;a436
	jr nz,la40bh		;a437
	jr nz,la48bh		;a439
	sub b			;a43b
	pop de			;a43c
	jr nz,$-3		;a43d
	ld (bc),a		;a43f
	cp 001h			;a440
	ret m			;a442
	ld h,0f2h		;a443
	ld (bc),a		;a445
	pop af			;a446
	ld d,d			;a447
	jp pe,0e909h		;a448
la44bh:
	dec bc			;a44b
	defb 0ddh,025h ;dec ixh	;a44c
	ld h,l			;a44e
la44fh:
	in a,(001h)		;a44f
la451h:
	push af			;a451
	jp nc,03121h		;a452
la455h:
	ld hl,02131h		;a455
	ld sp,03121h		;a458
	ld hl,02131h		;a45b
	ld sp,05121h		;a45e
	ld hl,02151h		;a461
	ld d,c			;a464
	add a,c			;a465
	sub c			;a466
	add a,c			;a467
	sub c			;a468
	add a,c			;a469
	sub c			;a46a
	ei			;a46b
	ld (bc),a		;a46c
	cp 001h			;a46d
	ret m			;a46f
	ld (bc),a		;a470
	pop af			;a471
	ld d,c			;a472
	jp p,0f504h		;a473
	ex de,hl		;a476
	ld b,e			;a477
	ld (hl),e		;a478
	in a,(002h)		;a479
	jp pe,0d609h		;a47b
	inc b			;a47e
la47fh:
	ld (bc),a		;a47f
	jp (hl)			;a480
	dec bc			;a481
	jp nc,0e991h		;a482
la485h:
	ld (bc),a		;a485
	sub e			;a486
	sub d			;a487
	sub e			;a488
	jp (hl)			;a489
	dec bc			;a48a
la48bh:
	jp nc,0e991h		;a48b
	ld (bc),a		;a48e
	sub e			;a48f
	sub d			;a490
	sub e			;a491
	jp (hl)			;a492
	dec bc			;a493
	jp nc,0e991h		;a494
	ld (bc),a		;a497
	sub e			;a498
	sub d			;a499
	sub e			;a49a
	jp (hl)			;a49b
	dec bc			;a49c
	jp nc,0e991h		;a49d
	ld (bc),a		;a4a0
	sub e			;a4a1
	sub d			;a4a2
	sub e			;a4a3
	jp (hl)			;a4a4
	ld bc,004d6h		;a4a5
	ld (bc),a		;a4a8
	jp pe,0d20ah		;a4a9
	sbc a,d			;a4ac
	sbc a,d			;a4ad
	sub (hl)		;a4ae
	add a,(hl)		;a4af
	jp (hl)			;a4b0
	dec bc			;a4b1
	ld (hl),e		;a4b2
	ret c			;a4b3
	call c,001e9h		;a4b4
	jp pe,07702h		;a4b7
	ei			;a4ba
	ld (bc),a		;a4bb
	ret c			;a4bc
	ret m			;a4bd
	ld (bc),a		;a4be
	jp (hl)			;a4bf
	ld bc,008eah		;a4c0
	ex de,hl		;a4c3
	add a,e			;a4c4
	inc de			;a4c5
	pop af			;a4c6
	ld d,c			;a4c7
	jp p,0f508h		;a4c8
	defb 0edh ;next byte illegal after ed	;a4cb
	dec b			;a4cc
	call nc,0a495h		;a4cd
	add a,l			;a4d0
	sub h			;a4d1
	out (085h),a		;a4d2
	sub h			;a4d4
	ld (hl),l		;a4d5
	add a,h			;a4d6
	sub l			;a4d7
	and h			;a4d8
	add a,l			;a4d9
	sub h			;a4da
	jp nc,09485h		;a4db
	ld (hl),l		;a4de
	add a,h			;a4df
	sub l			;a4e0
	and h			;a4e1
	add a,l			;a4e2
	sub h			;a4e3
	defb 0edh ;next byte illegal after ed	;a4e4
	inc bc			;a4e5
	pop de			;a4e6
	add a,l			;a4e7
	sub h			;a4e8
	ld (hl),l		;a4e9
	add a,h			;a4ea
	ei			;a4eb
	inc b			;a4ec
	cp 001h			;a4ed
	ret m			;a4ef
	ld (bc),a		;a4f0
	pop af			;a4f1
	ld d,c			;a4f2
	jp p,0ea03h		;a4f3
	rrca			;a4f6
	jp (hl)			;a4f7
	dec bc			;a4f8
	in a,(002h)		;a4f9
	sub 02fh		;a4fb
	ld bc,0ebf5h		;a4fd
	ld (hl),e		;a500
	ld h,e			;a501
	push af			;a502
	jp nc,0e921h		;a503
	ld bc,02726h		;a506
	ld h,0e9h		;a509
	dec bc			;a50b
	ld hl,001e9h		;a50c
	ld h,027h		;a50f
	ld h,0e9h		;a511
	dec bc			;a513
	jr nz,la536h		;a514
	ld hl,002fbh		;a516
	call c,0fed8h		;a519
	ld bc,002f8h		;a51c
	pop af			;a51f
	ld d,d			;a520
	jp p,0e905h		;a521
	dec bc			;a524
	push af			;a525
	ex de,hl		;a526
	ld (hl),e		;a527
	inc sp			;a528
	jp pe,0db0eh		;a529
	ld (bc),a		;a52c
	sub 003h		;a52d
	ld (bc),a		;a52f
	pop de			;a530
	and e			;a531
	add a,a			;a532
	and e			;a533
	add a,a			;a534
	jp (hl)			;a535
la536h:
	ld bc,0d086h		;a536
	rlca			;a539
	pop de			;a53a
	or (hl)			;a53b
	jp (hl)			;a53c
	dec bc			;a53d
	xor a			;a53e
	ret c			;a53f
	call pe,002eah		;a540
	and l			;a543
	ei			;a544
	ld (bc),a		;a545
	ex de,hl		;a546
	ld (hl),e		;a547
	inc sp			;a548
	sub 005h		;a549
	ld (bc),a		;a54b
	jp pe,09f0eh		;a54c
	call pe,0ead8h		;a54f
	ld (bc),a		;a552
	sub a			;a553
	jp pe,09401h		;a554
	rst 38h			;a557
	cp 001h			;a558
	ret m			;a55a
	ld (bc),a		;a55b
	pop af			;a55c
	ld d,e			;a55d
	jp p,0ea0ah		;a55e
	dec b			;a561
	jp (hl)			;a562
	djnz $-19		;a563
	add a,b			;a565
	inc de			;a566
	in a,(001h)		;a567
	out (09fh),a		;a569
	call pe,0eaf3h		;a56b
	ld bc,001e9h		;a56e
	sub a			;a571
	cp 001h			;a572
	ret m			;a574
	ld (bc),a		;a575
	jp (hl)			;a576
	dec bc			;a577
	pop af			;a578
	ld d,(hl)		;a579
	jp p,0f510h		;a57a
	jp pe,0eb0dh		;a57d
	inc sp			;a580
	inc hl			;a581
	sub 02fh		;a582
	ld (bc),a		;a584
	out (09ah),a		;a585
	ret c			;a587
	jp (hl)			;a588
	ld bc,0eaech		;a589
	inc b			;a58c
	sub h			;a58d
	jp pe,0d60dh		;a58e
	rra			;a591
	ld (bc),a		;a592
	ex de,hl		;a593
	inc sp			;a594
	inc hl			;a595
	jp nc,0e955h		;a596
	dec bc			;a599
	ld c,d			;a59a
	ret c			;a59b
	jp (hl)			;a59c
	ld bc,0eaech		;a59d
	inc b			;a5a0
	ld b,h			;a5a1
	sub 01fh		;a5a2
	ld (bc),a		;a5a4
	jp pe,0eb0dh		;a5a5
	inc sp			;a5a8
	inc hl			;a5a9
	out (095h),a		;a5aa
	jp (hl)			;a5ac
	dec bc			;a5ad
	jp nc,0d83ah		;a5ae
	jp (hl)			;a5b1
	ld bc,0eaech		;a5b2
	inc b			;a5b5
	inc (hl)		;a5b6
	jp pe,0d60dh		;a5b7
	rra			;a5ba
	ld (bc),a		;a5bb
	ex de,hl		;a5bc
	inc sp			;a5bd
	inc hl			;a5be
	out (055h),a		;a5bf
	jp (hl)			;a5c1
	dec bc			;a5c2
	jp nc,0d82ah		;a5c3
la5c6h:
	call pe,004eah		;a5c6
	jr nz,la5c6h		;a5c9
	ld (bc),a		;a5cb
	cp 001h			;a5cc
	pop af			;a5ce
	ld h,e			;a5cf
	jp p,0e904h		;a5d0
	dec bc			;a5d3
	in a,(001h)		;a5d4
	push af			;a5d6
	ret m			;a5d7
	inc e			;a5d8
	jp pe,0dd0dh		;a5d9
	add a,h			;a5dc
	ld d,h			;a5dd
	jp nc,03321h		;a5de
	ld (hl),e		;a5e1
	defb 0ddh,087h,021h ;illegal sequence	;a5e2
	xor h			;a5e5
	call pe,001eah		;a5e6
	and b			;a5e9
	ret m			;a5ea
	ld (bc),a		;a5eb
	ex de,hl		;a5ec
	ld (hl),a		;a5ed
	inc de			;a5ee
	jp (hl)			;a5ef
	ld bc,00eeah		;a5f0
	sub (hl)		;a5f3
	ld b,a			;a5f4
	ld d,(hl)		;a5f5
	jp (hl)			;a5f6
	dec bc			;a5f7
	out (098h),a		;a5f8
	call pe,002eah		;a5fa
	sub b			;a5fd
	jp pe,0eb0dh		;a5fe
	ld (hl),a		;a601
	inc de			;a602
	sub 01fh		;a603
	ld (bc),a		;a605
	jp nc,0d889h		;a606
	call pe,002eah		;a609
	add a,c			;a60c
	ei			;a60d
	ld (bc),a		;a60e
	cp 001h			;a60f
	jp p,0f105h		;a611
	ld h,e			;a614
	in a,(004h)		;a615
	ret m			;a617
	ld (bc),a		;a618
	push af			;a619
	jp pe,0eb0ch		;a61a
	ld (hl),e		;a61d
	inc hl			;a61e
	sub 01fh		;a61f
	inc bc			;a621
	jp (hl)			;a622
	dec bc			;a623
	out (09ah),a		;a624
	ret c			;a626
	call pe,003eah		;a627
	sub b			;a62a
	sub 007h		;a62b
	ld (bc),a		;a62d
	jp pe,0eb0ch		;a62e
	ld (hl),e		;a631
	inc hl			;a632
	jp (hl)			;a633
	ld bc,09ad2h		;a634
	sbc a,d			;a637
	sub (hl)		;a638
	add a,(hl)		;a639
	jp (hl)			;a63a
	dec bc			;a63b
	ld (hl),a		;a63c
	jp (hl)			;a63d
	ld bc,0ecd8h		;a63e
	jp pe,07703h		;a641
	ei			;a644
	ld (bc),a		;a645
	jp pe,0eb09h		;a646
	ld (hl),e		;a649
	inc hl			;a64a
	sub 01fh		;a64b
	inc bc			;a64d
	jp (hl)			;a64e
la64fh:
	dec bc			;a64f
	ld a,(bc)		;a650
	ret c			;a651
	call pe,003eah		;a652
	nop			;a655
	jp pe,0eb0ah		;a656
	ld (hl),e		;a659
	inc hl			;a65a
	sub 01fh		;a65b
	inc bc			;a65d
	ld a,(de)		;a65e
	ret c			;a65f
	call pe,003eah		;a660
	djnz la64fh		;a663
	inc c			;a665
	ex de,hl		;a666
	ld (hl),e		;a667
	inc hl			;a668
	sub 01fh		;a669
	inc bc			;a66b
	ld a,(bc)		;a66c
	ret c			;a66d
	call pe,003eah		;a66e
	nop			;a671
	jp pe,0eb0eh		;a672
	ld (hl),e		;a675
	inc hl			;a676
	sub 01fh		;a677
	inc b			;a679
	ld a,(de)		;a67a
	ret c			;a67b
	call pe,004eah		;a67c
	djnz $-15		;a67f
	ret c			;a681
	call c,001feh		;a682
	ret m			;a685
	ld (bc),a		;a686
	pop af			;a687
	ld d,c			;a688
	jp p,0ea03h		;a689
	ld c,0e9h		;a68c
	dec bc			;a68e
	in a,(002h)		;a68f
	sub 01fh		;a691
	ld bc,0ebf5h		;a693
	ld (hl),e		;a696
	ld h,e			;a697
	push af			;a698
	jp nc,0e991h		;a699
	ld bc,09796h		;a69c
	sub (hl)		;a69f
	jp (hl)			;a6a0
	dec bc			;a6a1
	sub c			;a6a2
	jp (hl)			;a6a3
	ld bc,09796h		;a6a4
	sub (hl)		;a6a7
	jp (hl)			;a6a8
	dec bc			;a6a9
	sub b			;a6aa
	sub b			;a6ab
	sub c			;a6ac
	ei			;a6ad
	ld (bc),a		;a6ae
	call c,0fed8h		;a6af
	ld bc,002f8h		;a6b2
	pop af			;a6b5
	ld d,d			;a6b6
	jp p,0e905h		;a6b7
	dec bc			;a6ba
	push af			;a6bb
	ex de,hl		;a6bc
	ld (hl),e		;a6bd
	inc sp			;a6be
	in a,(002h)		;a6bf
	jp pe,0d60eh		;a6c1
	rlca			;a6c4
	ld (bc),a		;a6c5
	pop de			;a6c6
	ld (hl),e		;a6c7
	ld d,a			;a6c8
	ld (hl),e		;a6c9
	ld d,a			;a6ca
	jp (hl)			;a6cb
	ld bc,09756h		;a6cc
	add a,(hl)		;a6cf
	jp (hl)			;a6d0
	dec bc			;a6d1
	ld a,a			;a6d2
	ret c			;a6d3
	call pe,002eah		;a6d4
	ld (hl),l		;a6d7
	ei			;a6d8
	ld (bc),a		;a6d9
	sub 00fh		;a6da
	ld (bc),a		;a6dc
	ex de,hl		;a6dd
	ld (hl),e		;a6de
	inc sp			;a6df
	jp pe,05f0dh		;a6e0
	ret c			;a6e3
la6e4h:
	call pe,002eah		;a6e4
	ld d,a			;a6e7
	jp pe,05401h		;a6e8
	rst 38h			;a6eb
	cp 001h			;a6ec
	ret m			;a6ee
	ld (bc),a		;a6ef
	pop af			;a6f0
	ld d,e			;a6f1
	jp p,0ea0ah		;a6f2
	dec b			;a6f5
	jp (hl)			;a6f6
	djnz la6e4h		;a6f7
	add a,b			;a6f9
	inc de			;a6fa
	in a,(001h)		;a6fb
	jp nc,0ec2fh		;a6fd
	di			;a700
	jp pe,0e901h		;a701
	ld bc,0fe27h		;a704
	ld bc,002f8h		;a707
	jp (hl)			;a70a
	dec bc			;a70b
	jp p,0f110h		;a70c
	ld d,l			;a70f
	push af			;a710
	jp pe,0eb0dh		;a711
	inc sp			;a714
	inc hl			;a715
	sub 03fh		;a716
	ld (bc),a		;a718
	jp nc,0d82ah		;a719
	jp (hl)			;a71c
	ld bc,0eaech		;a71d
	inc b			;a720
	inc h			;a721
	jp pe,0eb0dh		;a722
	inc sp			;a725
	inc hl			;a726
	sub 01fh		;a727
	ld (bc),a		;a729
	sub l			;a72a
	jp (hl)			;a72b
	dec bc			;a72c
	adc a,d			;a72d
	ret c			;a72e
	jp (hl)			;a72f
	ld bc,0eaech		;a730
	inc b			;a733
	add a,h			;a734
	jp pe,0eb0dh		;a735
	inc sp			;a738
	inc hl			;a739
	sub 01fh		;a73a
	ld (bc),a		;a73c
	dec h			;a73d
	jp (hl)			;a73e
	dec bc			;a73f
	ld a,d			;a740
	ret c			;a741
	jp (hl)			;a742
	ld bc,0eaech		;a743
	inc b			;a746
	ld (hl),h		;a747
	sub 01fh		;a748
	ld (bc),a		;a74a
	jp pe,0eb0dh		;a74b
	inc sp			;a74e
	inc hl			;a74f
	out (095h),a		;a750
	jp (hl)			;a752
	dec bc			;a753
	jp nc,0ec5ah		;a754
	jp pe,0d804h		;a757
	ld d,b			;a75a
	ei			;a75b
	ld (bc),a		;a75c
	cp 001h			;a75d
	pop af			;a75f
	ld h,e			;a760
	jp p,0f504h		;a761
	jp pe,0e908h		;a764
	dec bc			;a767
	add a,(ix+033h)		;a768
	in a,(001h)		;a76b
	xor 002h		;a76d
	ret m			;a76f
	inc e			;a770
	pop bc			;a771
	jp nc,03321h		;a772
	ld (hl),e		;a775
	xor d			;a776
	call pe,002eah		;a777
	and b			;a77a
	ret m			;a77b
	ld (bc),a		;a77c
	ex de,hl		;a77d
	ld (hl),a		;a77e
	inc de			;a77f
	rst 28h			;a780
	jp pe,0e90eh		;a781
	ld bc,01756h		;a784
	ld h,0e9h		;a787
	dec bc			;a789
	out (059h),a		;a78a
	jp pe,0eb0eh		;a78c
	ld (hl),a		;a78f
	inc de			;a790
	sub 01fh		;a791
	ld (bc),a		;a793
	jp nc,0d849h		;a794
	call pe,002eah		;a797
	ld b,c			;a79a
	ei			;a79b
	ld (bc),a		;a79c
	cp 001h			;a79d
	jp p,0f105h		;a79f
	ld h,e			;a7a2
	in a,(004h)		;a7a3
	ret m			;a7a5
	ld (bc),a		;a7a6
	push af			;a7a7
	jp pe,0eb0ch		;a7a8
	ld (hl),e		;a7ab
	inc hl			;a7ac
	sub 01fh		;a7ad
	inc bc			;a7af
	jp (hl)			;a7b0
	dec bc			;a7b1
	out (04ah),a		;a7b2
	ret c			;a7b4
	call pe,003eah		;a7b5
	ld b,b			;a7b8
	sub 007h		;a7b9
	ld (bc),a		;a7bb
	jp pe,0eb0ch		;a7bc
	ld (hl),e		;a7bf
	inc hl			;a7c0
	jp (hl)			;a7c1
	ld bc,05ad2h		;a7c2
	ld e,d			;a7c5
	ld d,(hl)		;a7c6
	ld b,(hl)		;a7c7
	jp (hl)			;a7c8
	dec bc			;a7c9
	scf			;a7ca
	ret c			;a7cb
	call pe,001e9h		;a7cc
	jp pe,03703h		;a7cf
	ei			;a7d2
	ld (bc),a		;a7d3
	jp pe,0eb09h		;a7d4
	ld (hl),e		;a7d7
	inc hl			;a7d8
	sub 01fh		;a7d9
	inc bc			;a7db
	jp (hl)			;a7dc
	dec bc			;a7dd
	out (07ah),a		;a7de
	ret c			;a7e0
	call pe,003eah		;a7e1
	ld (hl),b		;a7e4
	jp pe,0eb0ah		;a7e5
	ld (hl),e		;a7e8
	inc hl			;a7e9
	sub 02fh		;a7ea
	inc bc			;a7ec
	adc a,d			;a7ed
	ret c			;a7ee
	call pe,003eah		;a7ef
	add a,b			;a7f2
	jp pe,0eb0ch		;a7f3
	ld (hl),e		;a7f6
	inc hl			;a7f7
	sub 01fh		;a7f8
	inc bc			;a7fa
	ld a,d			;a7fb
	ret c			;a7fc
	call pe,003eah		;a7fd
	ld (hl),b		;a800
	jp pe,0eb0eh		;a801
	ld (hl),e		;a804
	inc hl			;a805
	sub 01fh		;a806
	inc b			;a808
	adc a,d			;a809
	ret c			;a80a
	call pe,004eah		;a80b
	add a,b			;a80e
	ret c			;a80f
	call c,0feefh		;a810
	ld bc,002f8h		;a813
	pop af			;a816
	ld d,c			;a817
	jp p,0ea03h		;a818
	ld c,0e9h		;a81b
	dec bc			;a81d
	in a,(002h)		;a81e
	sub 01fh		;a820
	ld bc,0ebf5h		;a822
	ld (hl),e		;a825
	ld h,e			;a826
	push af			;a827
	out (091h),a		;a828
	jp (hl)			;a82a
	ld bc,09796h		;a82b
	sub (hl)		;a82e
	jp (hl)			;a82f
	dec bc			;a830
	sub c			;a831
	jp (hl)			;a832
	ld bc,09796h		;a833
	sub (hl)		;a836
	jp (hl)			;a837
	dec bc			;a838
	sub b			;a839
	sub b			;a83a
	sub c			;a83b
	ei			;a83c
	ld (bc),a		;a83d
	call c,0fed8h		;a83e
	ld bc,002f8h		;a841
	pop af			;a844
	ld d,e			;a845
	jp p,0e903h		;a846
	dec bc			;a849
	push af			;a84a
	sub 007h		;a84b
la84dh:
	ld (bc),a		;a84d
	ex de,hl		;a84e
	ld (hl),e		;a84f
	inc sp			;a850
	in a,(002h)		;a851
	jp pe,0d10eh		;a853
	inc sp			;a856
	rla			;a857
	inc sp			;a858
	rla			;a859
	jp (hl)			;a85a
	ld bc,05716h		;a85b
	ld b,(hl)		;a85e
	jp (hl)			;a85f
	dec bc			;a860
	ccf			;a861
	call pe,0ead8h		;a862
	ld (bc),a		;a865
	dec (hl)		;a866
	ei			;a867
	ld (bc),a		;a868
	sub 017h		;a869
	ld (bc),a		;a86b
	ex de,hl		;a86c
	ld (hl),e		;a86d
	inc sp			;a86e
	jp pe,02f0eh		;a86f
	call pe,0ead8h		;a872
	ld (bc),a		;a875
	daa			;a876
	jp pe,02401h		;a877
	rst 38h			;a87a
	cp 010h			;a87b
	jp (hl)			;a87d
	dec bc			;a87e
	push af			;a87f
	sub c			;a880
	jp (hl)			;a881
	ld bc,09796h		;a882
	sub (hl)		;a885
	jp (hl)			;a886
	dec bc			;a887
	sub c			;a888
	jp (hl)			;a889
	ld bc,09796h		;a88a
	sub (hl)		;a88d
	jp (hl)			;a88e
	dec bc			;a88f
	sub b			;a890
	sub b			;a891
	sub c			;a892
	ei			;a893
	ld (bc),a		;a894
	push af			;a895
	jp (hl)			;a896
	dec bc			;a897
	sub c			;a898
	jp (hl)			;a899
	ld bc,09796h		;a89a
	sub (hl)		;a89d
	jp (hl)			;a89e
	dec bc			;a89f
	sub c			;a8a0
	jp (hl)			;a8a1
	ld bc,09796h		;a8a2
	sub (hl)		;a8a5
	sbc a,d			;a8a6
	sbc a,d			;a8a7
	sub e			;a8a8
	sub d			;a8a9
	sub e			;a8aa
	sub e			;a8ab
	sub d			;a8ac
	sub e			;a8ad
	ei			;a8ae
	ld (bc),a		;a8af
	jp m,004feh		;a8b0
	ret nc			;a8b3
	jp (hl)			;a8b4
	rlca			;a8b5
	push af			;a8b6
	sub b			;a8b7
	nop			;a8b8
	sub b			;a8b9
	nop			;a8ba
	jr nc,la84dh		;a8bb
	nop			;a8bd
	sub b			;a8be
	nop			;a8bf
	sub b			;a8c0
	sub b			;a8c1
	nop			;a8c2
	cp 010h			;a8c3
	sub c			;a8c5
	cp 004h			;a8c6
	ei			;a8c8
	rrca			;a8c9
	sub b			;a8ca
	nop			;a8cb
	sub b			;a8cc
	nop			;a8cd
	cp 010h			;a8ce
	sub b			;a8d0
	cp 004h			;a8d1
	sub b			;a8d3
	nop			;a8d4
	cp 010h			;a8d5
	sub b			;a8d7
	cp 004h			;a8d8
	sub b			;a8da
	cp 010h			;a8db
	sub b			;a8dd
	sub b			;a8de
	cp 004h			;a8df
	sub b			;a8e1
	cp 010h			;a8e2
	sub b			;a8e4
	sub b			;a8e5
	defb 0fdh,0b1h,0a8h ;illegal sequence	;a8e6
	cp 001h			;a8e9
	jp (hl)			;a8eb
	rlca			;a8ec
	jp 002eeh		;a8ed
	ex de,hl		;a8f0
	inc b			;a8f1
	ld (056f1h),a		;a8f2
	jp p,0ea13h		;a8f5
	add hl,bc		;a8f8
	jp nc,03000h		;a8f9
	ld d,b			;a8fc
	and l			;a8fd
	nop			;a8fe
	jr nc,la951h		;a8ff
	and c			;a901
	nop			;a902
	jr nc,la955h		;a903
	sub l			;a905
	nop			;a906
	jr nc,$+82		;a907
	sub c			;a909
	nop			;a90a
	jr nc,la95dh		;a90b
	and l			;a90d
	jp (hl)			;a90e
	ld bc,07382h		;a90f
	jp (hl)			;a912
	rlca			;a913
	sub b			;a914
	and b			;a915
	pop de			;a916
	nop			;a917
	jr nc,$+3		;a918
	jp nc,la120h		;a91a
	nop			;a91d
	sub c			;a91e
	out (0a0h),a		;a91f
	jp nc,0d371h		;a921
	sub b			;a924
	jp nc,0d350h		;a925
	ld (hl),b		;a928
	jp nc,04010h		;a929
	ld h,b			;a92c
	or l			;a92d
	djnz la970h		;a92e
	ld h,b			;a930
	or c			;a931
	djnz la974h		;a932
	ld h,b			;a934
	and l			;a935
	djnz la978h		;a936
	ld h,b			;a938
	and c			;a939
	djnz $+66		;a93a
	ld h,b			;a93c
	or l			;a93d
	jp (hl)			;a93e
	ld bc,08392h		;a93f
	jp (hl)			;a942
	rlca			;a943
	and b			;a944
	or b			;a945
la946h:
	pop de			;a946
	djnz $+66		;a947
la949h:
	pop de			;a949
	ld h,d			;a94a
	jp nc,032a1h		;a94b
	ld h,c			;a94e
	jp (iy)			;a94f
la951h:
	xor b			;a951
	cp 001h			;a952
la954h:
	ret m			;a954
la955h:
	ld d,d			;a955
	jp (hl)			;a956
	rlca			;a957
	jp pe,0eb0eh		;a958
	ld (hl),h		;a95b
	nop			;a95c
la95dh:
	push af			;a95d
	call nc,0d300h		;a95e
	nop			;a961
	call nc,0d300h		;a962
	nop			;a965
	push de			;a966
	and b			;a967
	call nc,05000h		;a968
	out (000h),a		;a96b
	call nc,0d500h		;a96d
la970h:
	jr nc,la946h		;a970
	jr nc,la949h		;a972
la974h:
	and b			;a974
	call nc,070a0h		;a975
la978h:
	ei			;a978
	inc b			;a979
	push af			;a97a
	call nc,0d310h		;a97b
	djnz la954h		;a97e
	djnz la955h		;a980
	djnz $-41		;a982
	or b			;a984
	call nc,06010h		;a985
la988h:
	out (010h),a		;a988
	call nc,0d510h		;a98a
	ld b,b			;a98d
	call nc,0d540h		;a98e
	or b			;a991
	call nc,080b0h		;a992
	ei			;a995
	inc b			;a996
	defb 0fdh,052h,0a9h ;illegal sequence	;a997
	cp 001h			;a99a
	ret m			;a99c
	dec c			;a99d
	jp (hl)			;a99e
	rlca			;a99f
	ex de,hl		;a9a0
la9a1h:
	add hl,bc		;a9a1
	ld b,b			;a9a2
	jp pe,0db0fh		;a9a3
	inc bc			;a9a6
	call nc,000a0h		;a9a7
la9aah:
	jr nc,la9ach		;a9aa
la9ach:
	ld d,b			;a9ac
	nop			;a9ad
la9aeh:
	and b			;a9ae
	nop			;a9af
la9b0h:
	jr nc,la9b2h		;a9b0
la9b2h:
	ld d,b			;a9b2
	nop			;a9b3
	and b			;a9b4
la9b5h:
	nop			;a9b5
la9b6h:
	out (000h),a		;a9b6
	call nc,05000h		;a9b8
	nop			;a9bb
	ld (hl),b		;a9bc
	nop			;a9bd
	out (000h),a		;a9be
	call nc,05000h		;a9c0
	nop			;a9c3
	ld (hl),b		;a9c4
	nop			;a9c5
	out (000h),a		;a9c6
	call nc,0d300h		;a9c8
	jr nc,la9a1h		;a9cb
	nop			;a9cd
	sub b			;a9ce
	nop			;a9cf
la9d0h:
	and b			;a9d0
	nop			;a9d1
	out (030h),a		;a9d2
la9d4h:
	call nc,09000h		;a9d4
	nop			;a9d7
la9d8h:
	and b			;a9d8
	nop			;a9d9
	out (030h),a		;a9da
	call nc,0d300h		;a9dc
	jr nz,la9b5h		;a9df
	nop			;a9e1
	ld (hl),b		;a9e2
	nop			;a9e3
	sub b			;a9e4
la9e5h:
	nop			;a9e5
	out (020h),a		;a9e6
la9e8h:
	call nc,07000h		;a9e8
	nop			;a9eb
	sub b			;a9ec
	nop			;a9ed
	out (020h),a		;a9ee
	call nc,0d400h		;a9f0
	or b			;a9f3
	djnz laa36h		;a9f4
	djnz $+98		;a9f6
	djnz la9aah		;a9f8
	djnz laa3ch		;a9fa
	djnz $+98		;a9fc
	djnz la9b0h		;a9fe
laa00h:
	djnz $-43		;aa00
	djnz la9d8h		;aa02
	djnz laa66h		;aa04
	djnz la988h		;aa06
laa08h:
	djnz $-43		;aa08
	djnz $-42		;aa0a
	djnz $+98		;aa0c
	djnz $-126		;aa0e
laa10h:
	djnz la9e5h		;aa10
	djnz la9e8h		;aa12
	djnz $-43		;aa14
	ld b,b			;aa16
	call nc,0a010h		;aa17
	djnz $-78		;aa1a
	djnz $-43		;aa1c
	ld b,b			;aa1e
	call nc,0a010h		;aa1f
	djnz la9d4h		;aa22
	djnz $-43		;aa24
	ld b,b			;aa26
	call nc,0d310h		;aa27
	jr nc,laa00h		;aa2a
	djnz la9aeh		;aa2c
	djnz la9d0h		;aa2e
	djnz $-43		;aa30
	jr nc,laa08h		;aa32
	djnz la9b6h		;aa34
laa36h:
	djnz la9d8h		;aa36
	djnz $-43		;aa38
	jr nc,laa10h		;aa3a
laa3ch:
	djnz $-1		;aa3c
	sbc a,d			;aa3e
	xor c			;aa3f
	cp 001h			;aa40
	ret m			;aa42
	ld (bc),a		;aa43
	jp (hl)			;aa44
	rlca			;aa45
	ex de,hl		;aa46
	ld b,h			;aa47
	ld (056f1h),a		;aa48
	jp p,0ea13h		;aa4b
	ld c,0d2h		;aa4e
	nop			;aa50
	jr nc,laaa3h		;aa51
	and l			;aa53
	ret m			;aa54
	add hl,bc		;aa55
	nop			;aa56
	jr nc,laaa9h		;aa57
	and c			;aa59
	ret m			;aa5a
	ld (bc),a		;aa5b
	nop			;aa5c
	jr nc,laaafh		;aa5d
	sub l			;aa5f
	ret m			;aa60
	add hl,bc		;aa61
	nop			;aa62
	jr nc,laab5h		;aa63
	sub c			;aa65
laa66h:
	ret m			;aa66
	ld (bc),a		;aa67
	nop			;aa68
	jr nc,laabbh		;aa69
	and l			;aa6b
	jp (hl)			;aa6c
	ld bc,07382h		;aa6d
	jp (hl)			;aa70
	rlca			;aa71
	sub b			;aa72
	and b			;aa73
	pop de			;aa74
	nop			;aa75
	jr nc,$+3		;aa76
	jp nc,la120h		;aa78
	nop			;aa7b
	sub c			;aa7c
	out (0a0h),a		;aa7d
	jp nc,0d371h		;aa7f
	sub b			;aa82
	jp nc,0d350h		;aa83
	ld (hl),b		;aa86
	jp nc,04010h		;aa87
	ld h,b			;aa8a
	or l			;aa8b
	ret m			;aa8c
	add hl,bc		;aa8d
	djnz laad0h		;aa8e
	ld h,b			;aa90
	or c			;aa91
	ret m			;aa92
	ld (bc),a		;aa93
	djnz laad6h		;aa94
	ld h,b			;aa96
	and l			;aa97
	ret m			;aa98
	add hl,bc		;aa99
	djnz laadch		;aa9a
	ld h,b			;aa9c
	and c			;aa9d
	ret m			;aa9e
	ld (bc),a		;aa9f
	djnz laae2h		;aaa0
	ld h,b			;aaa2
laaa3h:
	or l			;aaa3
	jp (hl)			;aaa4
	ld bc,08392h		;aaa5
	jp (hl)			;aaa8
laaa9h:
	rlca			;aaa9
	and b			;aaaa
	or b			;aaab
	pop de			;aaac
	djnz laaefh		;aaad
laaafh:
	pop de			;aaaf
	ld h,d			;aab0
	jp nc,032a1h		;aab1
	ld h,c			;aab4
laab5h:
	add a,c			;aab5
	pop de			;aab6
	ld sp,040fdh		;aab7
	xor d			;aaba
laabbh:
	cp 001h			;aabb
	ret m			;aabd
	ld (bc),a		;aabe
	jp (hl)			;aabf
	rlca			;aac0
	jp nz,024ebh		;aac1
	ld (056f1h),a		;aac4
	jp p,0ea13h		;aac7
	add hl,bc		;aaca
	jp nc,03000h		;aacb
	ld d,b			;aace
	and l			;aacf
laad0h:
	ret m			;aad0
	add hl,bc		;aad1
	nop			;aad2
	jr nc,lab25h		;aad3
	and c			;aad5
laad6h:
	ret m			;aad6
	ld (bc),a		;aad7
	nop			;aad8
	jr nc,lab2bh		;aad9
	sub l			;aadb
laadch:
	ret m			;aadc
	add hl,bc		;aadd
	nop			;aade
	jr nc,lab31h		;aadf
	sub c			;aae1
laae2h:
	ret m			;aae2
	ld (bc),a		;aae3
	nop			;aae4
	jr nc,$+82		;aae5
	and l			;aae7
	jp (hl)			;aae8
	ld bc,07382h		;aae9
	jp (hl)			;aaec
	rlca			;aaed
	sub b			;aaee
laaefh:
	and b			;aaef
	pop de			;aaf0
	nop			;aaf1
	jr nc,$+3		;aaf2
	jp nc,la120h		;aaf4
	nop			;aaf7
	sub c			;aaf8
	out (0a0h),a		;aaf9
	jp nc,0d371h		;aafb
	sub b			;aafe
	jp nc,0d350h		;aaff
	ld (hl),b		;ab02
	jp nc,04010h		;ab03
	ld h,b			;ab06
	or l			;ab07
	ret m			;ab08
	add hl,bc		;ab09
	djnz lab4ch		;ab0a
	ld h,b			;ab0c
	or c			;ab0d
	ret m			;ab0e
	ld (bc),a		;ab0f
	djnz $+66		;ab10
	ld h,b			;ab12
	and l			;ab13
	ret m			;ab14
	add hl,bc		;ab15
	djnz $+66		;ab16
	ld h,b			;ab18
	and c			;ab19
	ret m			;ab1a
	ld (bc),a		;ab1b
	djnz $+66		;ab1c
	ld h,b			;ab1e
	or l			;ab1f
	jp (hl)			;ab20
	ld bc,08392h		;ab21
	jp (hl)			;ab24
lab25h:
	rlca			;ab25
	and b			;ab26
	or b			;ab27
	pop de			;ab28
	djnz lab6bh		;ab29
lab2bh:
	pop de			;ab2b
	ld h,d			;ab2c
	jp nc,032a1h		;ab2d
	ld h,c			;ab30
lab31h:
	pop de			;ab31
	jr nc,lab31h		;ab32
	cp e			;ab34
	xor d			;ab35
	cp 004h			;ab36
	ret nc			;ab38
	jp (hl)			;ab39
	ld b,0f5h		;ab3a
	sub c			;ab3c
	ld de,09131h		;ab3d
	nop			;ab40
	nop			;ab41
	sub b			;ab42
	nop			;ab43
	ld sp,0fb11h		;ab44
	inc bc			;ab47
	sub c			;ab48
	ld de,09131h		;ab49
lab4ch:
	nop			;ab4c
	jr nc,lab7fh		;ab4d
	djnz lab81h		;ab4f
	jr nc,$+50		;ab51
	jr nc,$-9		;ab53
	sub c			;ab55
	ld de,09131h		;ab56
	nop			;ab59
	nop			;ab5a
	sub b			;ab5b
	sub b			;ab5c
	jr nc,lab71h		;ab5d
	ei			;ab5f
	inc bc			;ab60
	sub b			;ab61
	sub b			;ab62
	ld de,03030h		;ab63
	sub b			;ab66
	nop			;ab67
	jp (hl)			;ab68
	inc bc			;ab69
	ld b,b			;ab6a
lab6bh:
	jr nz,$+34		;ab6b
	jr nz,$-21		;ab6d
	ld b,040h		;ab6f
lab71h:
	ld b,b			;ab71
	ld b,b			;ab72
	ld b,b			;ab73
	ld b,c			;ab74
	cp 004h			;ab75
	ret nc			;ab77
	jp (hl)			;ab78
	ld b,091h		;ab79
	ld de,00031h		;ab7b
	sub b			;ab7e
lab7fh:
	nop			;ab7f
	nop			;ab80
lab81h:
	sub c			;ab81
	ld sp,00000h		;ab82
	sub c			;ab85
	ld de,09131h		;ab86
	jr nc,lab8bh		;ab89
lab8bh:
	nop			;ab8b
	jr nc,lab8eh		;ab8c
lab8eh:
	nop			;ab8e
	jr nc,$+18		;ab8f
	push af			;ab91
	sub c			;ab92
	ld de,00031h		;ab93
	sub b			;ab96
	nop			;ab97
	nop			;ab98
	sub c			;ab99
lab9ah:
	ld sp,00000h		;ab9a
	ei			;ab9d
	inc bc			;ab9e
	sub c			;ab9f
	jr nc,labd2h		;aba0
	jr nc,$+50		;aba2
	jr nc,labd6h		;aba4
	jr nz,labc8h		;aba6
	jr nz,labcah		;aba8
	jr nc,labdch		;abaa
	jr nc,$+50		;abac
	cp 004h			;abae
	ret nc			;abb0
	jp (hl)			;abb1
	ld b,091h		;abb2
	ld de,00031h		;abb4
	sub b			;abb7
	nop			;abb8
	nop			;abb9
	sub c			;abba
labbbh:
	ld sp,00000h		;abbb
	sub c			;abbe
	ld de,09131h		;abbf
	jr nc,labc4h		;abc2
labc4h:
	nop			;abc4
	jr nc,labc7h		;abc5
labc7h:
	nop			;abc7
labc8h:
	jr nc,labfah		;abc8
labcah:
	push af			;abca
	sub c			;abcb
	ld de,00031h		;abcc
	sub b			;abcf
	nop			;abd0
	nop			;abd1
labd2h:
	sub c			;abd2
	ld sp,00000h		;abd3
labd6h:
	ei			;abd6
	inc bc			;abd7
	jp (hl)			;abd8
	inc bc			;abd9
	jr nz,labfch		;abda
labdch:
	jp (hl)			;abdc
	ld b,030h		;abdd
	jr nc,$+50		;abdf
	jr nc,lac13h		;abe1
labe3h:
	jr nc,lac15h		;abe3
	jr nz,$+34		;abe5
	djnz lac19h		;abe7
	nop			;abe9
	jr nc,lac1ch		;abea
	jr nc,labe3h		;abec
	cp 004h			;abee
	ret nc			;abf0
	jp (hl)			;abf1
	ld b,091h		;abf2
	ld de,00030h		;abf4
	sub c			;abf7
	nop			;abf8
	nop			;abf9
labfah:
	sub b			;abfa
	sub b			;abfb
labfch:
	cp 010h			;abfc
	sub e			;abfe
	ei			;abff
	rlca			;ac00
	cp 004h			;ac01
	sub b			;ac03
	jr nc,$+50		;ac04
	jr nc,$+50		;ac06
	jr nc,lab9ah		;ac08
	djnz $-110		;ac0a
	jr nc,$+50		;ac0c
lac0eh:
	jr nc,lac0eh		;ac0e
	djnz $-107		;ac10
	push af			;ac12
lac13h:
	cp 004h			;ac13
lac15h:
	ret nc			;ac15
	jp (hl)			;ac16
	ld b,091h		;ac17
lac19h:
	ld de,09131h		;ac19
lac1ch:
	nop			;ac1c
	nop			;ac1d
	sub b			;ac1e
	sub b			;ac1f
	cp 010h			;ac20
	sub e			;ac22
	cp 004h			;ac23
	ei			;ac25
	rlca			;ac26
	sub b			;ac27
	sub b			;ac28
	djnz labbbh		;ac29
	djnz lac4dh		;ac2b
	jr nc,$+50		;ac2d
	jr nc,$-21		;ac2f
lac31h:
	inc bc			;ac31
	jr nz,lac54h		;ac32
	jp (hl)			;ac34
	ld b,030h		;ac35
lac37h:
	jr nc,lac37h		;ac37
	djnz $-107		;ac39
	ld (iy-055h),0feh	;ac3b
	ld bc,006e9h		;ac3f
	jp p,0f122h		;ac42
	ld d,e			;ac45
	call pe,001eeh		;ac46
	pop bc			;ac49
	jp pe,0d006h		;ac4a
lac4dh:
	dec hl			;ac4d
	jp (hl)			;ac4e
	inc bc			;ac4f
	pop de			;ac50
	ld (hl),b		;ac51
	add a,b			;ac52
	sub b			;ac53
lac54h:
	and b			;ac54
	or b			;ac55
	ret nc			;ac56
	nop			;ac57
	djnz lac7ah		;ac58
	jp (hl)			;ac5a
	ld b,01bh		;ac5b
	ret nc			;ac5d
	jr nz,lac31h		;ac5e
	or b			;ac60
	ret nc			;ac61
	dec e			;ac62
	jp (hl)			;ac63
	ld b,0ech		;ac64
	pop de			;ac66
	jp pe,0d204h		;ac67
	ld b,e			;ac6a
	jp pe,04105h		;ac6b
	jp pe,04106h		;ac6e
	jp pe,04107h		;ac71
	jp pe,04106h		;ac74
	jp pe,04105h		;ac77
lac7ah:
	jp pe,0e907h		;ac7a
	inc bc			;ac7d
	ret nz			;ac7e
	jp nc,03040h		;ac7f
	jr nz,lac94h		;ac82
	nop			;ac84
	out (0b0h),a		;ac85
	and b			;ac87
	cp 001h			;ac88
	jp (hl)			;ac8a
	ld b,0f2h		;ac8b
	djnz $-13		;ac8d
	ld d,l			;ac8f
	call pe,003eeh		;ac90
	pop bc			;ac93
lac94h:
	jp pe,0d107h		;ac94
	dec hl			;ac97
	jp (hl)			;ac98
	inc bc			;ac99
	jp nc,08070h		;ac9a
	sub b			;ac9d
	and b			;ac9e
	or b			;ac9f
	pop de			;aca0
	nop			;aca1
	djnz lacc4h		;aca2
	jp (hl)			;aca4
	ld b,01bh		;aca5
	jp (hl)			;aca7
	inc b			;aca8
	jp nc,04030h		;aca9
	ld d,b			;acac
	ld h,b			;acad
	ld (hl),b		;acae
	add a,b			;acaf
	jp (hl)			;acb0
	ld b,09fh		;acb1
	sbc a,c			;acb3
	jp (hl)			;acb4
	inc b			;acb5
	jp nc,03040h		;acb6
	jr nz,laccbh		;acb9
	out (0b0h),a		;acbb
	and b			;acbd
	cp 001h			;acbe
	jp (hl)			;acc0
	ld b,0f2h		;acc1
	inc d			;acc3
lacc4h:
	pop af			;acc4
	ld d,a			;acc5
	ex de,hl		;acc6
	add a,c			;acc7
	ld hl,007eah		;acc8
laccbh:
	defb 0edh ;next byte illegal after ed	;accb
	inc bc			;accc
	jp nc,0d31fh		;accd
lacd0h:
	sbc a,a			;acd0
	out (0bfh),a		;acd1
	jp nc,0d32bh		;acd3
lacd6h:
	or e			;acd6
	jp nc,0131fh		;acd7
lacdah:
	out (093h),a		;acda
	ld b,e			;acdc
	inc hl			;acdd
	cp 001h			;acde
	jp (hl)			;ace0
	ld b,0f2h		;ace1
	jr nz,lacd6h		;ace3
	ld d,(hl)		;ace5
	ex de,hl		;ace6
	add a,c			;ace7
	ld hl,007eah		;ace8
	defb 0edh ;next byte illegal after ed	;aceb
	inc bc			;acec
	jp nc,0d31fh		;aced
	sbc a,a			;acf0
	jp nc,02f4fh		;acf1
	jp pe,0d009h		;acf4
	ld b,b			;acf7
	djnz laccbh		;acf8
	sub b			;acfa
	ld b,b			;acfb
	djnz lacd0h		;acfc
	sub b			;acfe
	ld b,b			;acff
	djnz $-43		;ad00
	sub b			;ad02
	ld b,b			;ad03
	djnz lacdah		;ad04
	sub b			;ad06
	ld b,b			;ad07
	djnz $-41		;ad08
	sub b			;ad0a
	ld b,b			;ad0b
	jp pe,0e906h		;ad0c
	inc b			;ad0f
	pop de			;ad10
	sub b			;ad11
	add a,b			;ad12
	ld (hl),b		;ad13
	ld h,b			;ad14
	ld d,b			;ad15
	ld b,b			;ad16
	jr nc,lad39h		;ad17
	djnz lad1bh		;ad19
lad1bh:
	jp pe,0d207h		;ad1b
	or b			;ad1e
	and b			;ad1f
	sub b			;ad20
	add a,b			;ad21
	ld (hl),b		;ad22
	ld h,b			;ad23
	ld d,b			;ad24
	ld b,b			;ad25
	jr nc,lad48h		;ad26
lad28h:
	djnz lad2ah		;ad28
lad2ah:
	out (0b1h),a		;ad2a
	cp 001h			;ad2c
	jp (hl)			;ad2e
	ld b,0efh		;ad2f
	ex de,hl		;ad31
	add a,e			;ad32
	ld d,d			;ad33
	jp pe,0ed08h		;ad34
	ld b,0f5h		;ad37
lad39h:
	pop de			;ad39
	sub b			;ad3a
	ld d,b			;ad3b
	nop			;ad3c
	sub b			;ad3d
	ld d,b			;ad3e
	nop			;ad3f
	sub b			;ad40
	ld d,b			;ad41
	ei			;ad42
	inc b			;ad43
	jp (hl)			;ad44
	ld b,0d3h		;ad45
	or b			;ad47
lad48h:
	jp nc,04020h		;ad48
	ld (hl),b		;ad4b
	jr nz,lad8eh		;ad4c
	ld (hl),b		;ad4e
	or b			;ad4f
	ld b,b			;ad50
	ld (hl),b		;ad51
	or b			;ad52
	pop de			;ad53
	jr nz,lad28h		;ad54
	ld (hl),b		;ad56
	or b			;ad57
	pop de			;ad58
	jr nz,lad9bh		;ad59
	jp nc,0d1b0h		;ad5b
	jr nz,lada0h		;ad5e
	ld (hl),b		;ad60
	jr nz,lada3h		;ad61
	ld (hl),b		;ad63
	or b			;ad64
	ld b,b			;ad65
	ld (hl),b		;ad66
	or b			;ad67
	ret nc			;ad68
	jr nz,$+66		;ad69
	ld (hl),b		;ad6b
	or b			;ad6c
	ret nc			;ad6d
	ld (hl),b		;ad6e
	jp (hl)			;ad6f
	ld b,0f5h		;ad70
	jp nc,09050h		;ad72
	pop de			;ad75
	nop			;ad76
	ld b,b			;ad77
	ei			;ad78
	inc b			;ad79
	push af			;ad7a
	jp nc,09060h		;ad7b
	pop de			;ad7e
	nop			;ad7f
	ld b,b			;ad80
	ei			;ad81
	inc b			;ad82
	push af			;ad83
	jp nc,lb070h		;ad84
	pop de			;ad87
	jr nz,laddah		;ad88
	ei			;ad8a
	inc b			;ad8b
	jp (hl)			;ad8c
	inc bc			;ad8d
lad8eh:
	jp pe,0d109h		;ad8e
	or b			;ad91
	and b			;ad92
	sub b			;ad93
	add a,b			;ad94
	ld (hl),b		;ad95
	ld h,b			;ad96
	ld d,b			;ad97
	ld b,b			;ad98
	jr nc,$+34		;ad99
lad9bh:
	djnz lad9dh		;ad9b
lad9dh:
	jp nc,la0b0h		;ad9d
lada0h:
	sub b			;ada0
	add a,b			;ada1
	ld (hl),b		;ada2
lada3h:
	ld h,b			;ada3
	ld d,b			;ada4
	ld b,b			;ada5
	jr nc,ladc8h		;ada6
	djnz ladaah		;ada8
ladaah:
	out (0b0h),a		;adaa
	and b			;adac
	sub b			;adad
ladaeh:
	add a,b			;adae
	ld (hl),b		;adaf
	ld h,b			;adb0
	ld d,b			;adb1
	ld b,b			;adb2
	cp 001h			;adb3
	jp (hl)			;adb5
	ld b,0ebh		;adb6
	add a,e			;adb8
	ld d,d			;adb9
	jp pe,0ed08h		;adba
	ld b,0d1h		;adbd
	push af			;adbf
	sub b			;adc0
	ld d,b			;adc1
	nop			;adc2
	sub b			;adc3
	ld d,b			;adc4
	nop			;adc5
	sub b			;adc6
	ld d,b			;adc7
ladc8h:
	ei			;adc8
	inc b			;adc9
	jp (hl)			;adca
	ld b,0d3h		;adcb
	or b			;adcd
	jp nc,04020h		;adce
	ld (hl),b		;add1
	jr nz,$+66		;add2
	ld (hl),b		;add4
	or b			;add5
	ld b,b			;add6
	ld (hl),b		;add7
	or b			;add8
	pop de			;add9
laddah:
	jr nz,ladaeh		;adda
	ld (hl),b		;addc
	or b			;addd
	pop de			;adde
	jr nz,lae21h		;addf
	jp nc,0d1b0h		;ade1
	jr nz,lae26h		;ade4
	ld (hl),b		;ade6
	jr nz,lae29h		;ade7
	ld (hl),b		;ade9
	or b			;adea
	ld b,b			;adeb
	ld (hl),b		;adec
	or b			;aded
	ret nc			;adee
	jr nz,lae31h		;adef
ladf1h:
	ld (hl),b		;adf1
	or b			;adf2
	ret nc			;adf3
	ld (hl),b		;adf4
	jp (hl)			;adf5
	ld b,0f5h		;adf6
	jp nc,05020h		;adf8
	sub b			;adfb
	pop de			;adfc
	nop			;adfd
	ei			;adfe
	inc b			;adff
	push af			;ae00
	jp nc,06030h		;ae01
	sub b			;ae04
	pop de			;ae05
	nop			;ae06
	ei			;ae07
	inc b			;ae08
	push af			;ae09
	jp nc,08040h		;ae0a
	or b			;ae0d
	pop de			;ae0e
	jr nz,$-3		;ae0f
	inc b			;ae11
	jp (hl)			;ae12
	ld b,0d4h		;ae13
	or b			;ae15
	out (020h),a		;ae16
	ld b,b			;ae18
	add a,b			;ae19
lae1ah:
	or b			;ae1a
	jp nc,04020h		;ae1b
	add a,b			;ae1e
	or b			;ae1f
lae20h:
	pop de			;ae20
lae21h:
	jr nz,lae63h		;ae21
	add a,b			;ae23
	or b			;ae24
	ret nc			;ae25
lae26h:
	jr nz,lae68h		;ae26
	add a,b			;ae28
lae29h:
	defb 0fdh,03eh,0ach ;illegal sequence	;ae29
	cp 001h			;ae2c
	ret m			;ae2e
	jr z,lae1ah		;ae2f
lae31h:
	ld b,0ebh		;ae31
	add hl,bc		;ae33
lae34h:
	jr nc,lae20h		;ae34
	add hl,bc		;ae36
	in a,(003h)		;ae37
	push af			;ae39
	call nc,02040h		;ae3a
	ld (hl),b		;ae3d
	jr nz,$-110		;ae3e
	ld b,b			;ae40
	ld b,b			;ae41
	ld (hl),b		;ae42
	ei			;ae43
	inc b			;ae44
	ex de,hl		;ae45
	add hl,bc		;ae46
	ret p			;ae47
	call c,0d5f5h		;ae48
	sub b			;ae4b
	ld b,b			;ae4c
	ld (hl),b		;ae4d
	sub b			;ae4e
	ld b,b			;ae4f
	ld (hl),b		;ae50
	sub b			;ae51
	sub b			;ae52
	ei			;ae53
	inc b			;ae54
	ex de,hl		;ae55
	add hl,bc		;ae56
	jr nc,lae34h		;ae57
	inc bc			;ae59
	push af			;ae5a
	call nc,02040h		;ae5b
	ld (hl),b		;ae5e
	jr nz,ladf1h		;ae5f
	ld b,b			;ae61
	ld b,b			;ae62
lae63h:
	ld b,b			;ae63
	ei			;ae64
	inc b			;ae65
	ex de,hl		;ae66
	add hl,bc		;ae67
lae68h:
	ret p			;ae68
	call c,0d5f5h		;ae69
	sub b			;ae6c
lae6dh:
	ld b,b			;ae6d
	ld (hl),b		;ae6e
	sub b			;ae6f
	ld b,b			;ae70
	ld (hl),b		;ae71
	sub b			;ae72
	sub b			;ae73
	ei			;ae74
	inc bc			;ae75
	push de			;ae76
lae77h:
	sub b			;ae77
	call nc,04010h		;ae78
	ld (hl),b		;ae7b
	call nc,04010h		;ae7c
	ld (hl),b		;ae7f
	sub b			;ae80
	cp 001h			;ae81
	jp (hl)			;ae83
	ld b,0ebh		;ae84
lae86h:
	add hl,de		;ae86
	ld d,d			;ae87
	jp pe,0f50ah		;ae88
	ret m			;ae8b
	jr z,lae63h		;ae8c
	sub b			;ae8e
	ret m			;ae8f
lae90h:
	ld h,0d4h		;ae90
	sub b			;ae92
	out (090h),a		;ae93
	ret m			;ae95
	jr z,lae6dh		;ae96
	sub b			;ae98
lae99h:
	ret m			;ae99
	ld h,0d4h		;ae9a
	sub b			;ae9c
	out (090h),a		;ae9d
	ret m			;ae9f
	jr z,lae77h		;aea0
	sub b			;aea2
laea3h:
	sub b			;aea3
	ei			;aea4
	inc bc			;aea5
	push de			;aea6
	sub b			;aea7
	ret m			;aea8
	ld h,0d4h		;aea9
	sub b			;aeab
	out (090h),a		;aeac
	ret m			;aeae
	jr z,lae86h		;aeaf
	sub b			;aeb1
	ret m			;aeb2
	ld h,0d4h		;aeb3
	sub b			;aeb5
	out (090h),a		;aeb6
	ret m			;aeb8
	jr z,lae90h		;aeb9
	ld d,b			;aebb
	ret m			;aebc
laebdh:
	ld h,0d4h		;aebd
	ld d,b			;aebf
	push af			;aec0
	ret m			;aec1
	jr z,lae99h		;aec2
	ld (hl),b		;aec4
	ret m			;aec5
	ld h,0d4h		;aec6
	ld (hl),b		;aec8
	out (070h),a		;aec9
	ret m			;aecb
	jr z,laea3h		;aecc
	ld (hl),b		;aece
	ret m			;aecf
	ld h,0d4h		;aed0
	ld (hl),b		;aed2
	out (070h),a		;aed3
	ret m			;aed5
	jr z,$-41		;aed6
laed8h:
	ld (hl),b		;aed8
	ld (hl),b		;aed9
	ei			;aeda
	inc b			;aedb
	push af			;aedc
	push de			;aedd
	sub b			;aede
	ret m			;aedf
	ld h,0d4h		;aee0
laee2h:
	sub b			;aee2
	out (090h),a		;aee3
	ret m			;aee5
	jr z,laebdh		;aee6
	sub b			;aee8
	ret m			;aee9
	ld h,0d4h		;aeea
laeech:
	sub b			;aeec
	out (090h),a		;aeed
	ret m			;aeef
	jr z,$-41		;aef0
	sub b			;aef2
	sub b			;aef3
laef4h:
	ei			;aef4
	inc b			;aef5
	cp 001h			;aef6
	jp (hl)			;aef8
	ld b,0ebh		;aef9
	add hl,bc		;aefb
	ld b,d			;aefc
	jp pe,0f50ah		;aefd
laf00h:
	ret m			;af00
	jr z,laed8h		;af01
	sub b			;af03
	ret m			;af04
	ld h,0d4h		;af05
	sub b			;af07
	out (090h),a		;af08
	ret m			;af0a
	jr z,laee2h		;af0b
	sub b			;af0d
	ret m			;af0e
	ld h,0d4h		;af0f
	sub b			;af11
	out (090h),a		;af12
	ret m			;af14
	jr z,laeech		;af15
	sub b			;af17
	sub b			;af18
	ei			;af19
	ld a,(bc)		;af1a
	push af			;af1b
	ret m			;af1c
	jr z,laef4h		;af1d
	sub b			;af1f
	ret m			;af20
	ld h,0d4h		;af21
	sub b			;af23
	ei			;af24
	inc b			;af25
	jp pe,0f80bh		;af26
	jr z,laf00h		;af29
	ld (hl),b		;af2b
	call nc,0c070h		;af2c
	ld (hl),b		;af2f
	ret nz			;af30
	ld (hl),b		;af31
	ret nz			;af32
	ld (hl),b		;af33
	cp 001h			;af34
	ret m			;af36
	jr z,$-21		;af37
	ld b,0ebh		;af39
	add hl,bc		;af3b
	ld d,d			;af3c
	jp pe,0f50ah		;af3d
	push de			;af40
	ld d,b			;af41
	ld d,b			;af42
	call nc,05050h		;af43
	ei			;af46
	ex af,af'		;af47
	push af			;af48
	push de			;af49
	ld b,b			;af4a
	ld b,b			;af4b
	call nc,04040h		;af4c
	ei			;af4f
	ex af,af'		;af50
	push af			;af51
	push de			;af52
	ld d,b			;af53
	ld d,b			;af54
	call nc,05050h		;af55
	ei			;af58
	inc b			;af59
	push af			;af5a
	push de			;af5b
	ld h,b			;af5c
	ld h,b			;af5d
	call nc,06060h		;af5e
	ei			;af61
	inc b			;af62
	push af			;af63
	push de			;af64
	ld (hl),b		;af65
	ld (hl),b		;af66
	call nc,07070h		;af67
	ei			;af6a
	inc b			;af6b
	ex de,hl		;af6c
	add hl,bc		;af6d
	ld (00beah),a		;af6e
	push de			;af71
	add a,c			;af72
	call nc,0d5b0h		;af73
	add a,c			;af76
	call nc,0d580h		;af77
	add a,c			;af7a
	call nc,0d580h		;af7b
	add a,c			;af7e
	call nc,0d580h		;af7f
	add a,b			;af82
	or b			;af83
	call nc,04020h		;af84
	cp 001h			;af87
	ret m			;af89
	jr z,$-21		;af8a
	ld b,0ebh		;af8c
	add hl,bc		;af8e
	ld d,d			;af8f
	jp pe,0f50ah		;af90
	push de			;af93
	ld d,b			;af94
	ld d,b			;af95
	call nc,05050h		;af96
	ei			;af99
	ex af,af'		;af9a
	push af			;af9b
	push de			;af9c
	ld b,b			;af9d
	ld b,b			;af9e
	call nc,04040h		;af9f
	ei			;afa2
	ex af,af'		;afa3
	push af			;afa4
	push de			;afa5
	jr nz,lafc8h		;afa6
	call nc,02020h		;afa8
	ei			;afab
	inc b			;afac
	push af			;afad
	push de			;afae
	jr nc,$+50		;afaf
	call nc,03030h		;afb1
	ei			;afb4
	inc b			;afb5
	push af			;afb6
	push de			;afb7
	ld b,b			;afb8
	ld b,b			;afb9
	call nc,04040h		;afba
	ei			;afbd
	inc b			;afbe
	jp pe,0eb0bh		;afbf
	add hl,bc		;afc2
	ld (0b0d5h),a		;afc3
	or b			;afc6
	ret nz			;afc7
lafc8h:
	or b			;afc8
	ret nz			;afc9
	or b			;afca
	ret nz			;afcb
	or b			;afcc
	push de			;afcd
	ld b,b			;afce
lafcfh:
	add a,b			;afcf
	or b			;afd0
	call nc,04020h		;afd1
	add a,b			;afd4
	or b			;afd5
	out (020h),a		;afd6
	defb 0fdh,02ch ;inc iyl	;afd8
	xor (hl)		;afda
	cp 001h			;afdb
	ret m			;afdd
	ld a,(bc)		;afde
	jp (hl)			;afdf
	ld b,0ebh		;afe0
	add hl,bc		;afe2
	jr nz,lafcfh		;afe3
	ex af,af'		;afe5
	push af			;afe6
	jp nc,07040h		;afe7
	or b			;afea
	pop de			;afeb
	jr nz,$-44		;afec
	ld (hl),b		;afee
	or b			;afef
	ei			;aff0
	dec b			;aff1
	ld b,b			;aff2
	ld (hl),b		;aff3
laff4h:
	push af			;aff4
	sub b			;aff5
	ld b,b			;aff6
	jr nz,laff4h		;aff7
	dec b			;aff9
laffah:
	push af			;affa
	sub b			;affb
	ld b,b			;affc
	djnz laffah		;affd
	inc b			;afff
	out (090h),a		;b000
	jp nc,lb090h		;b002
	jr nz,lb077h		;b005
	push af			;b007
	jp nc,07040h		;b008
	or b			;b00b
	pop de			;b00c
	jr nz,$-44		;b00d
	ld (hl),b		;b00f
	or b			;b010
	ei			;b011
	dec b			;b012
	ld b,b			;b013
	ld (hl),b		;b014
lb015h:
	jp nc,090f5h		;b015
	ld b,b			;b018
	jr nz,$-3		;b019
	dec b			;b01b
lb01ch:
	push af			;b01c
	sub b			;b01d
	ld b,b			;b01e
	djnz lb01ch		;b01f
	inc bc			;b021
	cp 004h			;b022
	ret m			;b024
	dec b			;b025
	ret nc			;b026
	jp (hl)			;b027
	inc bc			;b028
	ld d,b			;b029
	ld d,b			;b02a
	ld d,b			;b02b
	ld d,b			;b02c
	jp (hl)			;b02d
	ld b,060h		;b02e
	ld h,b			;b030
	ld h,b			;b031
	ld h,b			;b032
	add a,c			;b033
lb034h:
	cp 001h			;b034
	ret m			;b036
	ld a,(bc)		;b037
	jp (hl)			;b038
	ld b,0ebh		;b039
	ld a,b			;b03b
	ld e,a			;b03c
	jp pe,0f508h		;b03d
	pop de			;b040
	djnz lb015h		;b041
	sub b			;b043
	ld b,b			;b044
	ei			;b045
	ld a,(bc)		;b046
	pop de			;b047
	djnz lb01ch		;b048
	sub b			;b04a
	push af			;b04b
lb04ch:
	jp nc,070b0h		;b04c
	jr nz,lb04ch		;b04f
	dec b			;b051
	jp nc,0f5b0h		;b052
	jp nc,lb070h		;b055
	pop de			;b058
	jr nz,$-3		;b059
	dec b			;b05b
	jp nc,0f570h		;b05c
	pop de			;b05f
	djnz lb034h		;b060
	sub b			;b062
	ld b,b			;b063
	ei			;b064
	dec b			;b065
	pop de			;b066
	djnz $-9		;b067
lb069h:
	pop de			;b069
	ld b,b			;b06a
	djnz $-44		;b06b
	sub b			;b06d
	ei			;b06e
	ld (bc),a		;b06f
lb070h:
	pop de			;b070
	ld b,b			;b071
	djnz lb069h		;b072
lb074h:
	pop de			;b074
	ld (hl),b		;b075
	ld b,b			;b076
lb077h:
	djnz lb074h		;b077
	ld (bc),a		;b079
	ld (hl),b		;b07a
	ld b,b			;b07b
lb07ch:
	cp 001h			;b07c
	ret m			;b07e
	ld a,(bc)		;b07f
	jp (hl)			;b080
lb081h:
	ld b,0ebh		;b081
	ld a,b			;b083
	ld e,a			;b084
	jp pe,0f508h		;b085
lb088h:
	pop de			;b088
	sub b			;b089
	ld b,b			;b08a
lb08bh:
	djnz lb088h		;b08b
	ld a,(bc)		;b08d
	pop de			;b08e
	sub b			;b08f
lb090h:
	ld b,b			;b090
	push af			;b091
	pop de			;b092
	ld (hl),b		;b093
	jr nz,$-44		;b094
	or b			;b096
	ei			;b097
	dec b			;b098
	pop de			;b099
	ld (hl),b		;b09a
	push af			;b09b
lb09ch:
	pop de			;b09c
	or b			;b09d
	ld (hl),b		;b09e
	jr nz,lb09ch		;b09f
	dec b			;b0a1
	pop de			;b0a2
	or b			;b0a3
	ret m			;b0a4
	dec e			;b0a5
	jp pe,0eb0ch		;b0a6
	add hl,bc		;b0a9
	jr nz,lb07ch		;b0aa
	sub b			;b0ac
	ld b,b			;b0ad
	djnz lb081h		;b0ae
	sub b			;b0b0
	ld b,b			;b0b1
	djnz $-44		;b0b2
	sub b			;b0b4
	ld b,b			;b0b5
	djnz lb08bh		;b0b6
	sub b			;b0b8
	ld b,b			;b0b9
	djnz lb090h		;b0ba
	sub b			;b0bc
lb0bdh:
	ld b,b			;b0bd
	djnz $-41		;b0be
	sub b			;b0c0
	ex de,hl		;b0c1
	add hl,bc		;b0c2
	jr nc,lb0bdh		;b0c3
	ld a,(bc)		;b0c5
	call nc,lb090h		;b0c6
	out (010h),a		;b0c9
	ld b,b			;b0cb
	sub b			;b0cc
	or b			;b0cd
	jp nc,04010h		;b0ce
	ld (hl),b		;b0d1
	or b			;b0d2
lb0d3h:
	pop de			;b0d3
	djnz $+66		;b0d4
	ld (hl),b		;b0d6
	or b			;b0d7
	ret nc			;b0d8
	djnz $+66		;b0d9
	cp 001h			;b0db
	ret m			;b0dd
	dec d			;b0de
	jp (hl)			;b0df
	ld b,0efh		;b0e0
	jp p,0f110h		;b0e2
	ld d,l			;b0e5
	add a,(ix+054h)		;b0e6
	in a,(001h)		;b0e9
	jp pe,0ed09h		;b0eb
	ld b,0d3h		;b0ee
	sub l			;b0f0
	jp nc,02b49h		;b0f1
	inc bc			;b0f4
	cpl			;b0f5
	ret m			;b0f6
	dec e			;b0f7
	jp pe,0dd0ah		;b0f8
	ld b,054h		;b0fb
	pop de			;b0fd
	ld a,a			;b0fe
	ret m			;b0ff
	dec d			;b100
	jp pe,0dd0ah		;b101
	add a,(hl)		;b104
	ld d,h			;b105
	jp nc,0539bh		;b106
lb109h:
	ld l,e			;b109
lb10ah:
	pop de			;b10a
	inc hl			;b10b
	jp nc,0f8bfh		;b10c
	ld (bc),a		;b10f
	ex de,hl		;b110
	ld b,d			;b111
	ld b,b			;b112
	in a,(002h)		;b113
	jp pe,0d30ah		;b115
	add a,d			;b118
	or d			;b119
	jp nc,05222h		;b11a
	jr nz,lb16fh		;b11d
	add a,b			;b11f
	or b			;b120
	call c,001feh		;b121
	ret m			;b124
	dec d			;b125
	jp (hl)			;b126
	ld b,0efh		;b127
	jp p,0f110h		;b129
	ld d,l			;b12c
	add a,(ix+054h)		;b12d
	in a,(001h)		;b130
	jp pe,0ed09h		;b132
	ld b,0d3h		;b135
	sub l			;b137
	jp nc,02b49h		;b138
	inc bc			;b13b
	jp nc,0f82fh		;b13c
	dec e			;b13f
	jp pe,0dd0ah		;b140
	ld b,054h		;b143
	pop de			;b145
lb146h:
	ld a,a			;b146
	ret m			;b147
	dec d			;b148
	jp pe,0dd0ah		;b149
	add a,(hl)		;b14c
	ld d,h			;b14d
	jp nc,05995h		;b14e
	ld h,l			;b151
	sbc a,c			;b152
	jp nc,0f84fh		;b153
	ld (bc),a		;b156
	jp pe,0eb0ah		;b157
	add hl,bc		;b15a
	jr nz,lb146h		;b15b
	ld b,0d4h		;b15d
	add a,b			;b15f
	or b			;b160
	out (020h),a		;b161
	ld b,b			;b163
	add a,b			;b164
	or b			;b165
	jp nc,04020h		;b166
	add a,b			;b169
	or b			;b16a
	pop de			;b16b
	jr nz,lb1aeh		;b16c
	add a,b			;b16e
lb16fh:
	or b			;b16f
	ret nc			;b170
	jr nz,lb1b3h		;b171
	defb 0fdh,0dbh,0afh ;illegal sequence	;b173
	cp 001h			;b176
	ret m			;b178
	ld (bc),a		;b179
	jp (hl)			;b17a
	ld b,0f2h		;b17b
	ld (054f1h),hl		;b17d
	ex de,hl		;b180
	add a,a			;b181
	ld h,b			;b182
	jp pe,0ed0ah		;b183
	ex af,af'		;b186
lb187h:
	pop de			;b187
	sub 001h		;b188
	rlca			;b18a
lb18bh:
	sbc a,e			;b18b
	ret c			;b18c
	jp (hl)			;b18d
	inc bc			;b18e
	call pe,007eah		;b18f
	jp nc,09080h		;b192
	and b			;b195
	or b			;b196
	pop de			;b197
	nop			;b198
	djnz $+34		;b199
	jr nc,lb187h		;b19b
	ex af,af'		;b19d
	ex de,hl		;b19e
	add a,a			;b19f
	jr nc,lb18bh		;b1a0
	ld b,04bh		;b1a2
	jp pe,0f108h		;b1a4
	ld d,c			;b1a7
	ret nc			;b1a8
	or b			;b1a9
	ld (hl),b		;b1aa
	ex de,hl		;b1ab
	add a,a			;b1ac
	ld b,b			;b1ad
lb1aeh:
	sbc a,a			;b1ae
	xor 001h		;b1af
lb1b1h:
	pop af			;b1b1
	ld d,e			;b1b2
lb1b3h:
	jp pe,0ec06h		;b1b3
	ret m			;b1b6
	dec c			;b1b7
	jp (hl)			;b1b8
	inc bc			;b1b9
	jp nc,06050h		;b1ba
	ld (hl),b		;b1bd
	add a,b			;b1be
	jp (hl)			;b1bf
	ld b,0d2h		;b1c0
	jp pe,09105h		;b1c2
	jp pe,09106h		;b1c5
	jp pe,09107h		;b1c8
	jp pe,09108h		;b1cb
	jp pe,09107h		;b1ce
	jp pe,09106h		;b1d1
	jp pe,09105h		;b1d4
	jp pe,09104h		;b1d7
	ret m			;b1da
	ld (bc),a		;b1db
	ex de,hl		;b1dc
	add a,a			;b1dd
	ld (hl),b		;b1de
	in a,(002h)		;b1df
	jp pe,0ed09h		;b1e1
	inc bc			;b1e4
	jp nc,09f9fh		;b1e5
	ld h,a			;b1e8
	daa			;b1e9
lb1eah:
	ex de,hl		;b1ea
	add a,e			;b1eb
	ld d,b			;b1ec
	jp pe,01f0ah		;b1ed
	cp 001h			;b1f0
	ret m			;b1f2
	dec d			;b1f3
	jp (hl)			;b1f4
	ld b,0f2h		;b1f5
	jr nz,lb1eah		;b1f7
	ld b,l			;b1f9
	ex de,hl		;b1fa
	add a,d			;b1fb
	ld b,c			;b1fc
	jp pe,0ed0eh		;b1fd
	ld a,(bc)		;b200
	jp nc,01020h		;b201
	jr nz,lb24eh		;b204
	jp nc,0d191h		;b206
	ld hl,0d217h		;b209
	or c			;b20c
	ret nz			;b20d
	pop de			;b20e
	ld de,021c0h		;b20f
	defb 0edh ;next byte illegal after ed	;b212
	add hl,bc		;b213
	ld c,l			;b214
	defb 0edh ;next byte illegal after ed	;b215
	dec bc			;b216
	jr nz,lb229h		;b217
	daa			;b219
	ld (de),a		;b21a
	ret nz			;b21b
	ld (0ebc0h),hl		;b21c
	add a,c			;b21f
	pop bc			;b220
	ld (de),a		;b221
	jp nc,0ea92h		;b222
	ld a,(bc)		;b225
	in a,(002h)		;b226
	ex de,hl		;b228
lb229h:
	add a,a			;b229
lb22ah:
	ld d,b			;b22a
	jp (hl)			;b22b
	inc c			;b22c
	ld c,d			;b22d
	call pe,001eah		;b22e
	ld b,c			;b231
	cp 001h			;b232
	jp (hl)			;b234
	ld b,0f2h		;b235
	jr nz,lb22ah		;b237
	ld d,l			;b239
	ex de,hl		;b23a
	add a,d			;b23b
	ld b,c			;b23c
	ret m			;b23d
	dec d			;b23e
	jp pe,0ed0eh		;b23f
	ld a,(bc)		;b242
	jp nc,01020h		;b243
lb246h:
	jr nz,lb290h		;b246
	sub c			;b248
lb249h:
	pop de			;b249
	ld hl,0d217h		;b24a
	or c			;b24d
lb24eh:
	ret nz			;b24e
	pop de			;b24f
	ld de,021c0h		;b250
	jp pe,0ed0eh		;b253
	ld a,(bc)		;b256
	ld c,h			;b257
	ret nz			;b258
	defb 0edh ;next byte illegal after ed	;b259
	dec c			;b25a
	jr nz,$+18		;b25b
	daa			;b25d
	jp nc,0c0b1h		;b25e
	pop de			;b261
	ld hl,070c0h		;b262
	ld b,b			;b265
	ex de,hl		;b266
	add a,a			;b267
	ld (hl),b		;b268
	sbc a,a			;b269
	ret m			;b26a
	dec e			;b26b
	jp pe,0eb08h		;b26c
	add hl,bc		;b26f
	jr nz,lb246h		;b270
	djnz lb249h		;b272
	sub b			;b274
	ex de,hl		;b275
	add hl,bc		;b276
	jr nz,$-20		;b277
	ld a,(bc)		;b279
	ret m			;b27a
	ld a,(bc)		;b27b
	call nc,lb090h		;b27c
	out (010h),a		;b27f
	ld b,b			;b281
	sub b			;b282
	or b			;b283
	jp nc,04010h		;b284
	ld (hl),b		;b287
lb288h:
	or b			;b288
	pop de			;b289
	djnz $+66		;b28a
	ld (hl),b		;b28c
	or b			;b28d
	cp 001h			;b28e
lb290h:
	ret m			;b290
	ld a,(bc)		;b291
	jp (hl)			;b292
	ld b,0f2h		;b293
	jr lb288h		;b295
	ld d,h			;b297
	ex de,hl		;b298
	add a,a			;b299
	ld d,b			;b29a
	jp pe,0ed0ch		;b29b
	ld a,(bc)		;b29e
	rst 28h			;b29f
	pop de			;b2a0
	nop			;b2a1
	jr nz,lb2e4h		;b2a2
	jp nc,09099h		;b2a4
	pop de			;b2a7
	jr nz,lb2eah		;b2a8
	sbc a,e			;b2aa
	ret nc			;b2ab
	nop			;b2ac
	pop de			;b2ad
	ld (hl),b		;b2ae
	jr nz,lb2b1h		;b2af
lb2b1h:
	out (0bfh),a		;b2b1
	in a,(002h)		;b2b3
	defb 0ddh,006h,054h ;illegal sequence	;b2b5
	ret p			;b2b8
	jp pe,0d10ah		;b2b9
	cp a			;b2bc
	cp 001h			;b2bd
	jp (hl)			;b2bf
	ld b,0f8h		;b2c0
	ld a,(bc)		;b2c2
	jp p,0f118h		;b2c3
	ld d,h			;b2c6
	ex de,hl		;b2c7
	add a,a			;b2c8
	ld d,b			;b2c9
	jp pe,0ed0ch		;b2ca
	ld a,(bc)		;b2cd
	pop de			;b2ce
	nop			;b2cf
	jr nz,lb312h		;b2d0
	jp nc,09099h		;b2d2
	pop de			;b2d5
	jr nz,$+66		;b2d6
	sbc a,e			;b2d8
lb2d9h:
	jp pe,0d00ch		;b2d9
	nop			;b2dc
	pop de			;b2dd
	sub b			;b2de
	ld h,b			;b2df
	jr nz,lb322h		;b2e0
	ld (hl),b		;b2e2
	or b			;b2e3
lb2e4h:
	jp pe,0d00ah		;b2e4
	pop af			;b2e7
	ld d,e			;b2e8
	dec hl			;b2e9
lb2eah:
	call pe,002eah		;b2ea
	jr nz,lb2d9h		;b2ed
	ld a,(bc)		;b2ef
	ret m			;b2f0
	ld (bc),a		;b2f1
	ex de,hl		;b2f2
	ld b,d			;b2f3
	ld b,b			;b2f4
	jp nc,05222h		;b2f5
	add a,d			;b2f8
	or d			;b2f9
	defb 0edh ;next byte illegal after ed	;b2fa
lb2fbh:
	ld bc,08050h		;b2fb
	or b			;b2fe
	pop de			;b2ff
lb300h:
	jr nz,lb300h		;b300
	ld bc,00af8h		;b302
	jp (hl)			;b305
	ld b,0f2h		;b306
	jr lb2fbh		;b308
	ld d,h			;b30a
	ex de,hl		;b30b
	add a,a			;b30c
	ld d,b			;b30d
	jp pe,0ed0ch		;b30e
	ld a,(bc)		;b311
lb312h:
	pop de			;b312
	nop			;b313
	jr nz,$+66		;b314
	jp nc,09099h		;b316
	pop de			;b319
	jr nz,lb35ch		;b31a
	sbc a,e			;b31c
	jp pe,0d00ch		;b31d
	nop			;b320
	pop de			;b321
lb322h:
	ld (hl),b		;b322
	jr nz,lb325h		;b323
lb325h:
	out (0bfh),a		;b325
	defb 0ddh,006h,054h ;illegal sequence	;b327
	ret p			;b32a
	jp pe,0db0ah		;b32b
	ld bc,lbfd1h		;b32e
	call c,001feh		;b331
	ret m			;b334
	ld a,(bc)		;b335
	jp (hl)			;b336
	ld b,0f2h		;b337
	jr $-13			;b339
	ld d,h			;b33b
	ex de,hl		;b33c
	add a,a			;b33d
	ld d,b			;b33e
	jp pe,0ed0ch		;b33f
	add hl,bc		;b342
	pop de			;b343
	nop			;b344
	jr nz,lb387h		;b345
	jp nc,0d199h		;b347
	nop			;b34a
	jr nc,lb3adh		;b34b
	sub a			;b34d
	defb 0edh ;next byte illegal after ed	;b34e
	ld a,(bc)		;b34f
	ret nc			;b350
	nop			;b351
	pop de			;b352
	sub b			;b353
lb354h:
	ld h,b			;b354
	jr nz,lb387h		;b355
	ld h,b			;b357
	sub b			;b358
	ret nc			;b359
	nop			;b35a
	pop de			;b35b
lb35ch:
	or b			;b35c
	add a,b			;b35d
	jp pe,0f20ah		;b35e
	jr lb354h		;b361
	ld d,d			;b363
	ret nc			;b364
	ld c,l			;b365
	ret m			;b366
	dec bc			;b367
	ex de,hl		;b368
	add hl,bc		;b369
	jr nz,$-42		;b36a
	jr nz,lb3aeh		;b36c
	add a,b			;b36e
	or b			;b36f
	out (020h),a		;b370
	ld b,b			;b372
	add a,b			;b373
	or b			;b374
	jp nc,04020h		;b375
	add a,b			;b378
	or b			;b379
	pop de			;b37a
	jr nz,$+66		;b37b
	add a,b			;b37d
	or b			;b37e
	defb 0fdh,076h,0b1h ;illegal sequence	;b37f
	cp 001h			;b382
lb384h:
	ret m			;b384
	ld (bc),a		;b385
	jp (hl)			;b386
lb387h:
	ld b,0f2h		;b387
	ld (044f1h),hl		;b389
	ex de,hl		;b38c
	add a,a			;b38d
	ld d,b			;b38e
	jp pe,0ed0ah		;b38f
	inc bc			;b392
	sub 001h		;b393
	rlca			;b395
	ret nc			;b396
	dec hl			;b397
	ret c			;b398
	jp pe,0e908h		;b399
	inc bc			;b39c
	call pe,070d1h		;b39d
	add a,b			;b3a0
	sub b			;b3a1
	and b			;b3a2
	or b			;b3a3
	ret nc			;b3a4
	nop			;b3a5
	djnz $+34		;b3a6
	jp (hl)			;b3a8
	ld b,0ebh		;b3a9
	add a,a			;b3ab
	ld b,c			;b3ac
lb3adh:
	dec de			;b3ad
lb3aeh:
	jp pe,0d009h		;b3ae
	jr nz,lb384h		;b3b1
	or b			;b3b3
	ex de,hl		;b3b4
	add a,a			;b3b5
	ld d,c			;b3b6
	jp pe,0d00ah		;b3b7
	rra			;b3ba
	jp (hl)			;b3bb
	ld b,0ech		;b3bc
	ret m			;b3be
	dec c			;b3bf
	jp pe,0d205h		;b3c0
	ld b,c			;b3c3
	jp pe,04106h		;b3c4
	jp pe,04107h		;b3c7
	jp pe,04108h		;b3ca
	jp pe,04107h		;b3cd
	jp pe,04106h		;b3d0
	jp pe,04105h		;b3d3
lb3d6h:
	jp pe,04104h		;b3d6
	jp pe,04103h		;b3d9
	cp 001h			;b3dc
	ret m			;b3de
	ld (bc),a		;b3df
	jp (hl)			;b3e0
	ld b,0f2h		;b3e1
	djnz lb3d6h		;b3e3
	ld d,l			;b3e5
	ex de,hl		;b3e6
	add a,a			;b3e7
	ld d,b			;b3e8
	jp pe,0ed0bh		;b3e9
	ld b,0d6h		;b3ec
	ld bc,0d104h		;b3ee
	dec hl			;b3f1
	ret c			;b3f2
	jp pe,0e908h		;b3f3
	inc bc			;b3f6
	call pe,070d2h		;b3f7
	add a,b			;b3fa
	sub b			;b3fb
	and b			;b3fc
	or b			;b3fd
	pop de			;b3fe
	nop			;b3ff
	djnz lb422h		;b400
	jp (hl)			;b402
	ld b,0eah		;b403
	ld a,(bc)		;b405
	ex de,hl		;b406
	add a,a			;b407
	ld d,b			;b408
	dec de			;b409
	jp (hl)			;b40a
	inc b			;b40b
	jp nc,04030h		;b40c
	ld d,b			;b40f
	ld h,b			;b410
	ld (hl),b		;b411
	add a,b			;b412
	jp pe,0db0ah		;b413
	ld (bc),a		;b416
	jp (hl)			;b417
	inc c			;b418
	sbc a,l			;b419
	call pe,005eah		;b41a
	jp (hl)			;b41d
	ld (bc),a		;b41e
	sub b			;b41f
	add a,b			;b420
	ld (hl),b		;b421
lb422h:
	ld h,b			;b422
	ld d,b			;b423
	ld b,b			;b424
	jp pe,03004h		;b425
	jr nz,$+18		;b428
	nop			;b42a
lb42bh:
	jp pe,0d303h		;b42b
	or b			;b42e
	and b			;b42f
	cp 001h			;b430
	ret m			;b432
	dec d			;b433
	jp (hl)			;b434
	ld b,0c2h		;b435
	xor 001h		;b437
	jp p,0f120h		;b439
	ld b,h			;b43c
	ex de,hl		;b43d
	rlca			;b43e
	jr nz,lb42bh		;b43f
	ex af,af'		;b441
	jp nc,01020h		;b442
	jr nz,$+74		;b445
	jp nc,0d191h		;b447
	ld hl,0d217h		;b44a
	or c			;b44d
	ret nz			;b44e
	pop de			;b44f
	ld (de),a		;b450
	ld hl,0204dh		;b451
	djnz lb47dh		;b454
	inc de			;b456
	inc hl			;b457
	ld (de),a		;b458
	jp nc,0ea92h		;b459
	rlca			;b45c
	jp (hl)			;b45d
	inc c			;b45e
	ld c,h			;b45f
	cp 001h			;b460
	jp (hl)			;b462
	ld b,0eeh		;b463
	ld bc,020f2h		;b465
	pop af			;b468
	ld b,l			;b469
	ex de,hl		;b46a
	rlca			;b46b
	jr nz,$-6		;b46c
	dec d			;b46e
	jp pe,0f508h		;b46f
	jp nc,01020h		;b472
	jr nz,$+74		;b475
	sub c			;b477
	pop de			;b478
	ld hl,0d217h		;b479
	or d			;b47c
lb47dh:
	pop de			;b47d
	ld (de),a		;b47e
	ld hl,008eah		;b47f
	ld c,l			;b482
	jr nz,$+18		;b483
	daa			;b485
	jp nc,0d1b2h		;b486
	ld (04070h),hl		;b489
	sbc a,h			;b48c
	jp pe,0f805h		;b48d
	ld a,(bc)		;b490
	jp (hl)			;b491
lb492h:
	ld b,0c1h		;b492
	call nc,lb090h		;b494
	out (010h),a		;b497
	ld b,b			;b499
	sub b			;b49a
	or b			;b49b
	jp nc,04010h		;b49c
	ld (hl),b		;b49f
	or b			;b4a0
	jp pe,0d107h		;b4a1
	djnz $+66		;b4a4
	ld (hl),b		;b4a6
lb4a7h:
	ret nz			;b4a7
lb4a8h:
	cp 001h			;b4a8
	jp (hl)			;b4aa
	ld b,0c1h		;b4ab
	xor 001h		;b4ad
	ret m			;b4af
	ld a,(bc)		;b4b0
lb4b1h:
	ex de,hl		;b4b1
	rlca			;b4b2
	jr nz,lb4a7h		;b4b3
	jr lb4a8h		;b4b5
	ld d,h			;b4b7
	jp pe,0d208h		;b4b8
	or b			;b4bb
	pop de			;b4bc
	nop			;b4bd
	jr nz,lb492h		;b4be
	sbc a,c			;b4c0
	sub b			;b4c1
	pop de			;b4c2
	jr nz,$+66		;b4c3
	sbc a,e			;b4c5
	ret nc			;b4c6
	nop			;b4c7
	jp nc,02070h		;b4c8
	nop			;b4cb
	out (0bdh),a		;b4cc
	ret p			;b4ce
	defb 0ddh,006h,054h ;illegal sequence	;b4cf
	ret p			;b4d2
	rst 28h			;b4d3
	jp pe,0d10ah		;b4d4
	in a,(001h)		;b4d7
	cpl			;b4d9
	call c,001feh		;b4da
	jp (hl)			;b4dd
	ld b,0f8h		;b4de
	ld a,(bc)		;b4e0
	pop bc			;b4e1
	xor 001h		;b4e2
	jp p,0f118h		;b4e4
	ld d,h			;b4e7
	ex de,hl		;b4e8
	rlca			;b4e9
	ld hl,008eah		;b4ea
	defb 0edh ;next byte illegal after ed	;b4ed
	rlca			;b4ee
	pop de			;b4ef
	nop			;b4f0
	jr nz,lb533h		;b4f1
	jp nc,09099h		;b4f3
	pop de			;b4f6
	jr nz,lb539h		;b4f7
	sbc a,e			;b4f9
	ret nc			;b4fa
	nop			;b4fb
	pop de			;b4fc
	sub b			;b4fd
	ld b,b			;b4fe
	jr nz,lb4b1h		;b4ff
	pop af			;b501
	ld d,d			;b502
	jp pe,0d005h		;b503
	dec hl			;b506
	call pe,001eah		;b507
	jr nz,$-6		;b50a
	ld (bc),a		;b50c
	ex de,hl		;b50d
	ld b,d			;b50e
	ld b,b			;b50f
	jp pe,0ef0ah		;b510
	jp nc,08252h		;b513
	or d			;b516
	pop de			;b517
	ld (001edh),hl		;b518
	jp nc,0d1b0h		;b51b
lb51eh:
	jr nz,$+82		;b51e
	add a,b			;b520
	cp 001h			;b521
	ret m			;b523
	ld a,(bc)		;b524
	jp (hl)			;b525
	ld b,0eeh		;b526
	ld bc,0f2c1h		;b528
	jr lb51eh		;b52b
	ld d,h			;b52d
	ex de,hl		;b52e
	rlca			;b52f
	jr nz,$-20		;b530
	ex af,af'		;b532
lb533h:
	jp nc,0d1b0h		;b533
	nop			;b536
	jr nz,$-44		;b537
lb539h:
	sbc a,c			;b539
	sub b			;b53a
	pop de			;b53b
	jr nz,lb57eh		;b53c
	sbc a,e			;b53e
	ret nc			;b53f
	nop			;b540
	jp nc,02070h		;b541
	nop			;b544
	out (0bdh),a		;b545
	ret p			;b547
	defb 0ddh,006h,054h ;illegal sequence	;b548
	jp pe,0ef0ah		;b54b
	in a,(001h)		;b54e
	pop de			;b550
	cpl			;b551
	call c,001feh		;b552
	ret m			;b555
	ld a,(bc)		;b556
	jp (hl)			;b557
	ld b,0eeh		;b558
	ld bc,018f2h		;b55a
	pop af			;b55d
	ld d,h			;b55e
lb55fh:
	ex de,hl		;b55f
	add a,e			;b560
	ld hl,008eah		;b561
	defb 0edh ;next byte illegal after ed	;b564
	ld b,0d1h		;b565
	pop bc			;b567
	nop			;b568
	jr nz,lb5abh		;b569
	jp nc,0d199h		;b56b
	nop			;b56e
	jr nc,lb5d1h		;b56f
	sub a			;b571
	jp pe,0ed07h		;b572
	ld b,0d0h		;b575
	nop			;b577
	pop de			;b578
	sub b			;b579
	ld h,b			;b57a
	jr nz,$+50		;b57b
	ld h,b			;b57d
lb57eh:
	sub b			;b57e
	ret nc			;b57f
	nop			;b580
	pop de			;b581
	or b			;b582
	add a,b			;b583
	call pe,018f2h		;b584
	ret nc			;b587
	jp pe,04105h		;b588
	jp pe,04104h		;b58b
	jp pe,04103h		;b58e
	jp pe,04702h		;b591
	ret m			;b594
	dec bc			;b595
	rst 28h			;b596
	jp pe,0eb04h		;b597
	ex af,af'		;b59a
	djnz lb55fh		;b59b
	call nc,04020h		;b59d
	add a,b			;b5a0
	or b			;b5a1
	out (020h),a		;b5a2
	ld b,b			;b5a4
	add a,b			;b5a5
	or b			;b5a6
	jp nc,04020h		;b5a7
	add a,b			;b5aa
lb5abh:
	rst 28h			;b5ab
	defb 0fdh,082h,0b3h ;illegal sequence	;b5ac
	cp 010h			;b5af
	jp (hl)			;b5b1
	rlca			;b5b2
	and b			;b5b3
	and b			;b5b4
	sub c			;b5b5
	ld hl,000a0h		;b5b6
	ld hl,000a0h		;b5b9
	ld hl,000a0h		;b5bc
	ld hl,001e9h		;b5bf
	ld b,c			;b5c2
	ld b,c			;b5c3
	ld d,d			;b5c4
	ld d,d			;b5c5
	ld d,e			;b5c6
	ld d,d			;b5c7
	ld d,e			;b5c8
	ld d,d			;b5c9
	ld d,e			;b5ca
	ld d,d			;b5cb
	ld d,e			;b5cc
	ld d,d			;b5cd
	ld d,e			;b5ce
	ld h,d			;b5cf
	ld h,e			;b5d0
lb5d1h:
	ld h,d			;b5d1
	ld h,e			;b5d2
	ld h,d			;b5d3
	ld h,e			;b5d4
	ld h,e			;b5d5
	ld (hl),d		;b5d6
	ld (hl),e		;b5d7
	ld (hl),e		;b5d8
	ld (hl),d		;b5d9
	ld (hl),e		;b5da
	ld (hl),d		;b5db
	add a,e			;b5dc
	add a,d			;b5dd
	sub e			;b5de
	jp (hl)			;b5df
	rlca			;b5e0
	sub c			;b5e1
	and c			;b5e2
	ld hl,000a0h		;b5e3
	ld hl,000a0h		;b5e6
	ld hl,000a0h		;b5e9
	ld hl,000a0h		;b5ec
	ld hl,000a0h		;b5ef
	ld hl,004feh		;b5f2
	jp (hl)			;b5f5
	ld bc,04243h		;b5f6
	ld b,e			;b5f9
	ld b,d			;b5fa
	jp (hl)			;b5fb
	rlca			;b5fc
	ld b,b			;b5fd
	ld b,b			;b5fe
	ld b,b			;b5ff
	ld b,b			;b600
	ld b,b			;b601
	ld b,b			;b602
	cp 010h			;b603
	jp (hl)			;b605
	rlca			;b606
	push af			;b607
	and b			;b608
	nop			;b609
	ld hl,01181h		;b60a
	and b			;b60d
	nop			;b60e
	ld hl,01181h		;b60f
	ei			;b612
	inc bc			;b613
	and b			;b614
	nop			;b615
	ld de,01181h		;b616
	add a,c			;b619
	add a,c			;b61a
	add a,b			;b61b
	add a,b			;b61c
	and c			;b61d
	cp 010h			;b61e
	jp (hl)			;b620
	rlca			;b621
	push af			;b622
	and b			;b623
	nop			;b624
	ld hl,01181h		;b625
	and b			;b628
	nop			;b629
	ld hl,01181h		;b62a
	and b			;b62d
	nop			;b62e
	ld hl,01181h		;b62f
	and b			;b632
	nop			;b633
	ld hl,0a181h		;b634
	ei			;b637
	inc b			;b638
	cp 010h			;b639
	jp (hl)			;b63b
	rlca			;b63c
	and a			;b63d
	add a,d			;b63e
	add a,d			;b63f
	and b			;b640
lb641h:
	and b			;b641
	sbc a,a			;b642
lb643h:
	cp 001h			;b643
	jp 0feffh		;b645
	ld bc,007e9h		;b648
	ex de,hl		;b64b
	rlca			;b64c
	jr nc,lb641h		;b64d
	add hl,bc		;b64f
	pop af			;b650
	ld d,e			;b651
	jp pe,0d50bh		;b652
	ld b,c			;b655
	jp pe,0c208h		;b656
	xor 001h		;b659
	jp nc,07070h		;b65b
	ld (hl),b		;b65e
	ld (hl),c		;b65f
	ld (hl),c		;b660
	ld (hl),c		;b661
	ld (hl),c		;b662
	ld (hl),b		;b663
	ld (hl),c		;b664
	ld (hl),c		;b665
	sub b			;b666
	sub c			;b667
	sub c			;b668
lb669h:
	sub b			;b669
	sbc a,b			;b66a
	jp pe,0eb07h		;b66b
	inc sp			;b66e
	jr nc,lb643h		;b66f
	ld (hl),b		;b671
	ld (hl),b		;b672
	ld (hl),b		;b673
	ld (hl),c		;b674
	ld (hl),c		;b675
	ld (hl),c		;b676
	ld (hl),c		;b677
	ld (hl),b		;b678
	ld (hl),c		;b679
	sub c			;b67a
	sub b			;b67b
	sub c			;b67c
	sub c			;b67d
	sub b			;b67e
	call nc,00beah		;b67f
	inc hl			;b682
	ld b,e			;b683
	cp 001h			;b684
	jp (hl)			;b686
	rlca			;b687
	jp pe,0eb0bh		;b688
	add hl,bc		;b68b
	jr nz,lb669h		;b68c
	inc b			;b68e
	push af			;b68f
	push de			;b690
	ld (hl),b		;b691
	sub b			;b692
	call nc,04000h		;b693
	ei			;b696
	inc b			;b697
	push af			;b698
	push de			;b699
	ld h,b			;b69a
	sub b			;b69b
	call nc,04000h		;b69c
	ei			;b69f
	inc b			;b6a0
	push af			;b6a1
	push de			;b6a2
	ld h,b			;b6a3
	sub b			;b6a4
	call nc,02000h		;b6a5
	ei			;b6a8
	inc b			;b6a9
	push af			;b6aa
	push de			;b6ab
	nop			;b6ac
	jr nz,$+98		;b6ad
	sub b			;b6af
	ei			;b6b0
	ld (bc),a		;b6b1
	push de			;b6b2
	jr nz,lb6d5h		;b6b3
	call nc,02020h		;b6b5
	push de			;b6b8
	ld h,b			;b6b9
	ld h,b			;b6ba
	call nc,06060h		;b6bb
	cp 001h			;b6be
	jp (hl)			;b6c0
	rlca			;b6c1
	ex de,hl		;b6c2
	ld b,h			;b6c3
	ld b,b			;b6c4
	in a,(003h)		;b6c5
	push af			;b6c7
	jp pe,0d10ah		;b6c8
	sub c			;b6cb
	sub c			;b6cc
	jp pe,0910ah		;b6cd
	sub c			;b6d0
	jp pe,09009h		;b6d1
	sub c			;b6d4
lb6d5h:
	sub b			;b6d5
	sub e			;b6d6
	ei			;b6d7
	ld (bc),a		;b6d8
	push af			;b6d9
	jp pe,lb10ah		;b6da
	or c			;b6dd
	jp pe,lb10ah		;b6de
	or c			;b6e1
	jp pe,0b009h		;b6e2
	or c			;b6e5
	or b			;b6e6
	or e			;b6e7
	ei			;b6e8
	ld (bc),a		;b6e9
	push af			;b6ea
	jp pe,0910ah		;b6eb
	sub c			;b6ee
	jp pe,0910ah		;b6ef
	sub c			;b6f2
	jp pe,09009h		;b6f3
	sub c			;b6f6
	sub b			;b6f7
	sub e			;b6f8
	ei			;b6f9
	ld (bc),a		;b6fa
	jp pe,0510ah		;b6fb
	ld d,c			;b6fe
	jp pe,0510ah		;b6ff
	ld d,c			;b702
	jp pe,05109h		;b703
	ld d,c			;b706
	jp pe,05108h		;b707
	ld d,c			;b70a
	jp pe,0210ah		;b70b
	ld hl,00aeah		;b70e
	ld hl,0ea21h		;b711
	add hl,bc		;b714
	ld hl,0ea21h		;b715
	ex af,af'		;b718
	jp nc,lb1b1h		;b719
	cp 001h			;b71c
	jp (hl)			;b71e
	ld c,0eah		;b71f
	inc b			;b721
	call pe,002d6h		;b722
	add a,b			;b725
	pop af			;b726
	ld b,c			;b727
	rst 28h			;b728
	pop bc			;b729
	ret nc			;b72a
	sbc a,b			;b72b
	ret c			;b72c
	jp pe,09103h		;b72d
	jp pe,09302h		;b730
	jp pe,09001h		;b733
	rst 38h			;b736
	cp 001h			;b737
	jp (hl)			;b739
	rlca			;b73a
	ex de,hl		;b73b
	rlca			;b73c
	jr nc,$-12		;b73d
	add hl,bc		;b73f
	pop af			;b740
	ld d,e			;b741
	jp pe,0c108h		;b742
	jp nz,020d2h		;b745
	jr nz,lb76ah		;b748
	ld hl,02121h		;b74a
	ld hl,02120h		;b74d
	ld hl,04140h		;b750
	ld b,c			;b753
	ld b,b			;b754
	ld c,b			;b755
	jp pe,0eb07h		;b756
	inc bc			;b759
	jr nc,$-44		;b75a
	jr nz,$+34		;b75c
	jr nz,lb781h		;b75e
	ld hl,02121h		;b760
	jr nz,lb786h		;b763
	ld b,c			;b765
	ld b,b			;b766
	ld b,c			;b767
	ld b,c			;b768
	ld b,b			;b769
lb76ah:
	ld d,e			;b76a
lb76bh:
	ld b,e			;b76b
lb76ch:
	cp 001h			;b76c
	jp (hl)			;b76e
	rlca			;b76f
	ret m			;b770
	ld a,(bc)		;b771
	xor 002h		;b772
	jp nz,007ebh		;b774
	djnz lb76bh		;b777
	jr z,lb76ch		;b779
	ld h,(hl)		;b77b
	jp pe,0d207h		;b77c
	ld b,b			;b77f
	sub b			;b780
lb781h:
	add a,b			;b781
	ld (hl),b		;b782
	jp (hl)			;b783
	ld c,077h		;b784
lb786h:
	call pe,0eb70h		;b786
	rlca			;b789
	djnz $-21		;b78a
	rlca			;b78c
	ld (hl),c		;b78d
	ld b,b			;b78e
	sub b			;b78f
	add a,b			;b790
	ld (hl),b		;b791
	pop de			;b792
	ld bc,090d2h		;b793
	jp (hl)			;b796
	ld c,0d1h		;b797
	ld l,0ech		;b799
	jp pe,0e901h		;b79b
	rlca			;b79e
	cp 001h			;b79f
	jp (hl)			;b7a1
	rlca			;b7a2
	ex de,hl		;b7a3
	ld b,h			;b7a4
	ld b,b			;b7a5
	in a,(003h)		;b7a6
	push af			;b7a8
	jp pe,0d10ah		;b7a9
	ld d,c			;b7ac
	ld d,c			;b7ad
	jp pe,0510ah		;b7ae
	ld d,c			;b7b1
	jp pe,05009h		;b7b2
	ld d,c			;b7b5
	ld d,b			;b7b6
	ld d,e			;b7b7
	ei			;b7b8
	ld (bc),a		;b7b9
	push af			;b7ba
	jp pe,0710ah		;b7bb
	ld (hl),c		;b7be
	jp pe,0710ah		;b7bf
	ld (hl),c		;b7c2
	jp pe,07009h		;b7c3
	ld (hl),c		;b7c6
	ld (hl),b		;b7c7
	ld (hl),e		;b7c8
	ei			;b7c9
	ld (bc),a		;b7ca
	push af			;b7cb
	jp pe,0510ah		;b7cc
	ld d,c			;b7cf
	jp pe,0510ah		;b7d0
	ld d,c			;b7d3
	jp pe,05009h		;b7d4
	ld d,c			;b7d7
	ld d,b			;b7d8
	ld d,e			;b7d9
	ei			;b7da
	ld (bc),a		;b7db
	jp pe,0210ah		;b7dc
	ld hl,00aeah		;b7df
	ld hl,0ea21h		;b7e2
	add hl,bc		;b7e5
	ld hl,0ea21h		;b7e6
	ex af,af'		;b7e9
	ld hl,0ea21h		;b7ea
	ld a,(bc)		;b7ed
	jp nc,lb1b1h		;b7ee
	jp pe,lb10ah		;b7f1
	or c			;b7f4
	jp pe,lb109h		;b7f5
	or c			;b7f8
	jp pe,07108h		;b7f9
	ld (hl),c		;b7fc
	cp 001h			;b7fd
	jp (hl)			;b7ff
	ld c,0eah		;b800
	inc bc			;b802
	call pe,002d6h		;b803
	add a,b			;b806
	pop af			;b807
lb808h:
	ld b,c			;b808
	rst 28h			;b809
	xor 001h		;b80a
	pop de			;b80c
	sbc a,e			;b80d
	ret c			;b80e
	jp pe,09102h		;b80f
	jp pe,09201h		;b812
	rst 38h			;b815
	cp 001h			;b816
	jp (hl)			;b818
	rlca			;b819
	ret m			;b81a
	jr z,lb808h		;b81b
	add hl,bc		;b81d
	ld b,b			;b81e
	jp pe,0d50fh		;b81f
	ld b,c			;b822
	ex de,hl		;b823
	add hl,bc		;b824
	ld b,b			;b825
	sub a			;b826
	ld (hl),a		;b827
	ld e,l			;b828
	ld b,c			;b829
	sub a			;b82a
	ld (hl),a		;b82b
	ld d,a			;b82c
	inc hl			;b82d
	ld b,e			;b82e
	cp 001h			;b82f
	jp (hl)			;b831
	rlca			;b832
	jp pe,0eb0fh		;b833
	ld a,(bc)		;b836
	jr nc,$-35		;b837
	inc b			;b839
	push af			;b83a
	ret m			;b83b
	inc hl			;b83c
	push de			;b83d
	ld (hl),b		;b83e
	sub b			;b83f
	ret m			;b840
	inc e			;b841
	call nc,04000h		;b842
	ei			;b845
	inc b			;b846
	push af			;b847
	ret m			;b848
	inc hl			;b849
	push de			;b84a
	ld h,b			;b84b
	sub b			;b84c
	ret m			;b84d
	inc e			;b84e
	call nc,04000h		;b84f
	ei			;b852
	inc b			;b853
	push af			;b854
	ret m			;b855
	inc hl			;b856
	push de			;b857
	ld h,b			;b858
lb859h:
	sub b			;b859
	ret m			;b85a
	inc e			;b85b
	call nc,02000h		;b85c
	ei			;b85f
	inc b			;b860
	push af			;b861
	ret m			;b862
	inc hl			;b863
	push de			;b864
	nop			;b865
	jr nz,lb8c8h		;b866
	sub b			;b868
	ei			;b869
	ld (bc),a		;b86a
	ex de,hl		;b86b
	ld a,(bc)		;b86c
	jr nc,lb859h		;b86d
	rrca			;b86f
	ret m			;b870
	inc hl			;b871
	push de			;b872
	jr nz,lb895h		;b873
	ret m			;b875
	inc e			;b876
	call nc,02020h		;b877
	ret m			;b87a
	inc hl			;b87b
	push de			;b87c
	ld h,b			;b87d
	ld h,b			;b87e
	ret m			;b87f
	inc e			;b880
	call nc,06060h		;b881
	cp 001h			;b884
	jp (hl)			;b886
	rlca			;b887
	ret m			;b888
	inc hl			;b889
	ex de,hl		;b88a
	ld a,(bc)		;b88b
	jr nc,$-20		;b88c
	rrca			;b88e
	jp p,0f110h		;b88f
	ld d,l			;b892
	push af			;b893
	push de			;b894
lb895h:
	ld d,b			;b895
	ld d,b			;b896
	call nc,05050h		;b897
	ei			;b89a
	ex af,af'		;b89b
	push af			;b89c
	push de			;b89d
	ld (hl),b		;b89e
	ld (hl),b		;b89f
	call nc,07070h		;b8a0
	ei			;b8a3
	ex af,af'		;b8a4
	push af			;b8a5
	push de			;b8a6
lb8a7h:
	jr nz,lb8c9h		;b8a7
	call nc,02020h		;b8a9
	ei			;b8ac
	ex af,af'		;b8ad
	push af			;b8ae
	push de			;b8af
	ld d,b			;b8b0
	ld d,b			;b8b1
	call nc,05050h		;b8b2
	ei			;b8b5
	inc b			;b8b6
lb8b7h:
	push af			;b8b7
	push de			;b8b8
	ld b,b			;b8b9
	ld b,b			;b8ba
	call nc,04040h		;b8bb
	ei			;b8be
	inc bc			;b8bf
	push de			;b8c0
	ld b,b			;b8c1
	call nc,0d540h		;b8c2
	ld b,c			;b8c5
	cp 001h			;b8c6
lb8c8h:
	jp (hl)			;b8c8
lb8c9h:
	rlca			;b8c9
	ret m			;b8ca
	jr z,lb8b7h		;b8cb
	rrca			;b8cd
	ex de,hl		;b8ce
	add hl,bc		;b8cf
	jr nc,lb8a7h		;b8d0
	sbc a,a			;b8d2
	call pe,004eah		;b8d3
	sub a			;b8d6
	jp pe,09103h		;b8d7
	jp pe,09302h		;b8da
	jp pe,09301h		;b8dd
	rst 38h			;b8e0
lb8e1h:
	cp 001h			;b8e1
	jp (hl)			;b8e3
	rlca			;b8e4
	ex de,hl		;b8e5
	ld a,(bc)		;b8e6
	jr nc,lb8e1h		;b8e7
	ld h,0eah		;b8e9
	inc c			;b8eb
	call nc,006eeh		;b8ec
	ld b,c			;b8ef
	jp pe,0eb0ch		;b8f0
	ld (hl),070h		;b8f3
	sub a			;b8f5
	ld (hl),a		;b8f6
	ld e,l			;b8f7
	push de			;b8f8
	ld b,c			;b8f9
	call nc,07797h		;b8fa
	ld d,a			;b8fd
	rst 28h			;b8fe
	cp 004h			;b8ff
	ret nc			;b901
	ret m			;b902
	dec b			;b903
	jp (hl)			;b904
	ld bc,05253h		;b905
lb908h:
	ld d,e			;b908
	ld d,d			;b909
	jp (hl)			;b90a
	rlca			;b90b
	ld h,b			;b90c
	ld h,b			;b90d
	ld d,b			;b90e
	ld d,b			;b90f
	ld (hl),b		;b910
	ld (hl),b		;b911
	cp 001h			;b912
	jp (hl)			;b914
	rlca			;b915
	ret m			;b916
	ld (bc),a		;b917
	ex de,hl		;b918
	inc (hl)		;b919
	ld b,b			;b91a
	jp p,0f114h		;b91b
	ld d,l			;b91e
	jp pe,0d60dh		;b91f
	djnz $+5		;b922
	out (09dh),a		;b924
	call pe,004eah		;b926
	sub c			;b929
	jp pe,0eb0dh		;b92a
	inc (hl)		;b92d
	ld b,b			;b92e
	jp nc,0d307h		;b92f
	sub e			;b932
	jp nc,02d03h		;b933
	call pe,004eah		;b936
	ld hl,00deah		;b939
	ex de,hl		;b93c
	inc (hl)		;b93d
	jr nc,lb9a7h		;b93e
	sub e			;b940
	ret c			;b941
	call pe,006eah		;b942
	add a,b			;b945
	ld (hl),b		;b946
	ld h,b			;b947
	ld d,b			;b948
	cp 001h			;b949
	jp (hl)			;b94b
	rlca			;b94c
	rst 28h			;b94d
	ret m			;b94e
	ld a,(bc)		;b94f
	ret c			;b950
	ex de,hl		;b951
	add a,a			;b952
	ld (hl),b		;b953
	defb 0edh ;next byte illegal after ed	;b954
	add hl,bc		;b955
	jp p,0db15h		;b956
	ld (bc),a		;b959
	pop af			;b95a
	ld d,c			;b95b
	jp pe,0d30ah		;b95c
	sub l			;b95f
lb960h:
	ld d,l			;b960
	jp pe,0d209h		;b961
	ld b,e			;b964
	daa			;b965
	jp pe,0030ah		;b966
	out (093h),a		;b969
	cp l			;b96b
	call pe,006eah		;b96c
	or c			;b96f
	jp pe,0d207h		;b970
	nop			;b973
	djnz lb960h		;b974
	ex af,af'		;b976
	add hl,hl		;b977
	call pe,007eah		;b978
	djnz lb97dh		;b97b
lb97dh:
	out (0b0h),a		;b97d
	and b			;b97f
	jp pe,0eb0bh		;b980
	add a,a			;b983
	ld (hl),b		;b984
	out (095h),a		;b985
	ld d,l			;b987
	sub e			;b988
	jp nc,0eb0fh		;b989
	add a,a			;b98c
	ld b,b			;b98d
	dec hl			;b98e
	ex de,hl		;b98f
	add a,a			;b990
	ld (hl),b		;b991
	inc bc			;b992
	jp pe,0d30ch		;b993
	or a			;b996
	ld (hl),a		;b997
	cp 001h			;b998
	jp (hl)			;b99a
	ld c,0f8h		;b99b
	dec b			;b99d
	jp pe,0ec04h		;b99e
	sub 002h		;b9a1
	add a,b			;b9a3
	pop af			;b9a4
	ld b,c			;b9a5
	rst 28h			;b9a6
lb9a7h:
	ret nc			;b9a7
	sbc a,c			;b9a8
	ret c			;b9a9
	jp pe,09103h		;b9aa
	jp pe,09102h		;b9ad
	jp pe,09201h		;b9b0
	rst 38h			;b9b3
	cp 001h			;b9b4
	jp (hl)			;b9b6
	rlca			;b9b7
	ret m			;b9b8
	inc de			;b9b9
	jp p,0f109h		;b9ba
lb9bdh:
	ld d,e			;b9bd
	ex de,hl		;b9be
	add hl,de		;b9bf
	jr nc,$-20		;b9c0
	ld c,0c1h		;b9c2
	pop bc			;b9c4
	sub 020h		;b9c5
	ld bc,lb0d3h		;b9c7
	or b			;b9ca
lb9cbh:
	or b			;b9cb
	or c			;b9cc
	or c			;b9cd
	or c			;b9ce
	or c			;b9cf
lb9d0h:
	or b			;b9d0
	or c			;b9d1
	or c			;b9d2
	jp nc,00100h		;b9d3
	ld bc,00100h		;b9d6
	call pe,007eah		;b9d9
lb9dch:
	sub 006h		;b9dc
	jr nz,$-44		;b9de
	sub a			;b9e0
	ret c			;b9e1
	sub 004h		;b9e2
	ld bc,00eeah		;b9e4
	ex de,hl		;b9e7
	add hl,de		;b9e8
lb9e9h:
	jr nc,lb9bdh		;b9e9
	or b			;b9eb
	or b			;b9ec
	or b			;b9ed
	or c			;b9ee
	or c			;b9ef
	or c			;b9f0
	or c			;b9f1
	or b			;b9f2
	or c			;b9f3
	jp pe,0eb0ch		;b9f4
	add hl,bc		;b9f7
	jr nz,lb9cbh		;b9f8
	ld bc,009ebh		;b9fa
	jr nc,lb9e9h		;b9fd
	dec c			;b9ff
	nop			;ba00
	ld bc,00001h		;ba01
	jp pe,0eb0eh		;ba04
	ld a,(de)		;ba07
	jr nz,lb9dch		;ba08
lba0ah:
	inc hl			;ba0a
	out (0b3h),a		;ba0b
	ret c			;ba0d
	cp 001h			;ba0e
	jp (hl)			;ba10
	rlca			;ba11
	ret m			;ba12
	ld (bc),a		;ba13
	ex de,hl		;ba14
	inc (hl)		;ba15
	jr nc,lba0ah		;ba16
	inc d			;ba18
	pop af			;ba19
	ld d,l			;ba1a
	jp pe,0d60eh		;ba1b
	djnz lba23h		;ba1e
	jp nc,0ec0dh		;ba20
lba23h:
	jp pe,00104h		;ba23
	jp pe,0eb0eh		;ba26
	inc (hl)		;ba29
	jr nc,lba73h		;ba2a
	inc bc			;ba2c
	ld b,e			;ba2d
	ld l,l			;ba2e
	jp pe,0ec04h		;ba2f
	ld h,c			;ba32
	jp pe,0eb0eh		;ba33
	inc (hl)		;ba36
	jr nc,lb9d0h		;ba37
	pop de			;ba39
	inc bc			;ba3a
	ret c			;ba3b
	jp pe,0ec06h		;ba3c
	jp nc,la0b0h		;ba3f
	sub b			;ba42
	add a,b			;ba43
	cp 001h			;ba44
	jp (hl)			;ba46
	rlca			;ba47
	rst 28h			;ba48
	ret m			;ba49
	ld a,(bc)		;ba4a
	ret c			;ba4b
	ex de,hl		;ba4c
	add a,a			;ba4d
	ld (hl),b		;ba4e
	defb 0edh ;next byte illegal after ed	;ba4f
	ex af,af'		;ba50
	jp p,0db15h		;ba51
	ld (bc),a		;ba54
	pop af			;ba55
	ld d,l			;ba56
	jp pe,0d30bh		;ba57
	ld d,l			;ba5a
	dec b			;ba5b
	jp nc,0d303h		;ba5c
	or a			;ba5f
	sub e			;ba60
	ld d,e			;ba61
	ld a,l			;ba62
	call pe,006eah		;ba63
	ld (hl),b		;ba66
	add a,b			;ba67
	jp pe,09007h		;ba68
	and b			;ba6b
	jp pe,lb908h		;ba6c
	jp pe,0a007h		;ba6f
	sub b			;ba72
lba73h:
	add a,b			;ba73
	ld (hl),b		;ba74
	jp pe,0eb0bh		;ba75
	add a,a			;ba78
	ld (hl),b		;ba79
	ld d,l			;ba7a
	dec b			;ba7b
	ld d,e			;ba7c
lba7dh:
	ex de,hl		;ba7d
	add a,a			;ba7e
	ld b,b			;ba7f
	sbc a,a			;ba80
	jp nc,0435bh		;ba81
	jp pe,0270bh		;ba84
lba87h:
	out (0b7h),a		;ba87
	cp 001h			;ba89
	jp (hl)			;ba8b
	ld bc,00df8h		;ba8c
	ex de,hl		;ba8f
	add hl,bc		;ba90
	jr nc,lba7dh		;ba91
	dec bc			;ba93
	push af			;ba94
	push de			;ba95
	sub e			;ba96
	call nc,0fb92h		;ba97
	djnz lba87h		;ba9a
	rlca			;ba9c
	ld (hl),b		;ba9d
	jp (hl)			;ba9e
	rlca			;ba9f
	call nc,0ea99h		;baa0
	ld b,091h		;baa3
	jp pe,09105h		;baa5
	jp pe,09104h		;baa8
	jp pe,09103h		;baab
	jp pe,09002h		;baae
	rst 38h			;bab1
	cp 001h			;bab2
	jp (hl)			;bab4
	rlca			;bab5
	ret m			;bab6
	ld (bc),a		;bab7
	jp p,0f109h		;bab8
	ld d,e			;babb
	ex de,hl		;babc
	add hl,de		;babd
	jr nc,$-20		;babe
	rrca			;bac0
	pop bc			;bac1
	pop bc			;bac2
	sub 010h		;bac3
	ld bc,020d2h		;bac5
	jr nz,lbaeah		;bac8
	ld hl,02121h		;baca
	ld hl,02120h		;bacd
	ld hl,040d2h		;bad0
	ld b,c			;bad3
	ld b,c			;bad4
	ld b,b			;bad5
lbad6h:
	ld b,c			;bad6
	call pe,004eah		;bad7
	ld b,b			;bada
	jp pe,04005h		;badb
	jp pe,04007h		;bade
	jp pe,04109h		;bae1
	jp pe,04007h		;bae4
	jp pe,04005h		;bae7
lbaeah:
	jp pe,04003h		;baea
	jp pe,0eb0ch		;baed
	add hl,bc		;baf0
	jr nz,$-40		;baf1
	ld (bc),a		;baf3
lbaf4h:
	ld bc,020d1h		;baf4
	jr nz,lbb19h		;baf7
	ld hl,02121h		;baf9
	ld hl,02120h		;bafc
	jp pe,0eb0bh		;baff
	add hl,bc		;bb02
	jr nz,lbad6h		;bb03
	ld b,c			;bb05
	ex de,hl		;bb06
	add hl,bc		;bb07
	jr nc,lbaf4h		;bb08
	inc c			;bb0a
	ld b,b			;bb0b
	ld b,c			;bb0c
	ld b,c			;bb0d
	ld b,b			;bb0e
	pop de			;bb0f
	ex de,hl		;bb10
	ld a,(de)		;bb11
	djnz lbb67h		;bb12
lbb14h:
	ld b,e			;bb14
	ret c			;bb15
	cp 001h			;bb16
	jp (hl)			;bb18
lbb19h:
	rlca			;bb19
	ret m			;bb1a
	ld a,(bc)		;bb1b
	jp p,0f128h		;bb1c
	ld h,l			;bb1f
	call pe,001e9h		;bb20
	jp pe,0d20fh		;bb23
	ld b,b			;bb26
	jr nc,lbb14h		;bb27
	ld (0ea30h),a		;bb29
	rrca			;bb2c
	ex de,hl		;bb2d
lbb2eh:
	inc hl			;bb2e
	jr nc,lbb75h		;bb2f
	jp (hl)			;bb31
	rlca			;bb32
	sub b			;bb33
	add a,b			;bb34
	jp (hl)			;bb35
	ld c,077h		;bb36
	jp (hl)			;bb38
	rlca			;bb39
	call pe,004eah		;bb3a
	ld (hl),b		;bb3d
	ld h,b			;bb3e
	ld d,b			;bb3f
	ld b,b			;bb40
	jr nc,lbb2eh		;bb41
	ld (0ea30h),a		;bb43
	rrca			;bb46
	jp (hl)			;bb47
	ld bc,02030h		;bb48
	ld b,h			;bb4b
	jp (hl)			;bb4c
	rlca			;bb4d
	sub b			;bb4e
	add a,b			;bb4f
	ld (hl),b		;bb50
	pop de			;bb51
	ld bc,090d2h		;bb52
	jp pe,0e90fh		;bb55
	ld c,0d1h		;bb58
	dec l			;bb5a
	jp pe,0e907h		;bb5b
	rlca			;bb5e
	ret p			;bb5f
	call pe,00010h		;bb60
	jp nc,la0b0h		;bb63
	sub b			;bb66
lbb67h:
	cp 001h			;bb67
	jp (hl)			;bb69
	rlca			;bb6a
	ret m			;bb6b
	ld (bc),a		;bb6c
	defb 0edh ;next byte illegal after ed	;bb6d
	ex af,af'		;bb6e
	ex de,hl		;bb6f
	add a,l			;bb70
	ld d,b			;bb71
	jp p,0f115h		;bb72
lbb75h:
	ld h,e			;bb75
	jp pe,0d10dh		;bb76
	dec b			;bb79
	jp nc,lb090h		;bb7a
	pop de			;bb7d
	dec c			;bb7e
	call pe,003eah		;bb7f
	ld bc,00deah		;bb82
	ex de,hl		;bb85
	ld de,00260h		;bb86
	ld (0ed41h),hl		;bb89
	ex af,af'		;bb8c
	ex de,hl		;bb8d
	add a,l			;bb8e
	ld d,b			;bb8f
	jp nc,075b5h		;bb90
	ex de,hl		;bb93
	add a,l			;bb94
	ld h,b			;bb95
	jp (hl)			;bb96
	ld c,0d1h		;bb97
	ld c,b			;bb99
	call pe,005eah		;bb9a
	ld b,b			;bb9d
	jp (hl)			;bb9e
	rlca			;bb9f
	ret m			;bba0
	ld (bc),a		;bba1
	ex de,hl		;bba2
	add a,l			;bba3
	ld b,b			;bba4
	jp pe,0d20dh		;bba5
	sub l			;bba8
	ld d,b			;bba9
	ld (hl),b		;bbaa
	sbc a,l			;bbab
	call pe,004eah		;bbac
	sub c			;bbaf
	jp pe,0ed0dh		;bbb0
	ex af,af'		;bbb3
	ex de,hl		;bbb4
	add a,l			;bbb5
	ld d,b			;bbb6
	sub e			;bbb7
	or e			;bbb8
	pop de			;bbb9
	dec b			;bbba
	jp nc,08381h		;bbbb
	pop de			;bbbe
	ld b,e			;bbbf
	inc hl			;bbc0
	inc bc			;bbc1
	jp nc,073b3h		;bbc2
	cp 001h			;bbc5
	jp (hl)			;bbc7
	rlca			;bbc8
	ret m			;bbc9
	ld (bc),a		;bbca
	jp p,0f109h		;bbcb
	ld d,e			;bbce
	ex de,hl		;bbcf
	add hl,de		;bbd0
	jr nz,$-20		;bbd1
	ld c,0d5h		;bbd3
	sub c			;bbd5
	out (091h),a		;bbd6
	jp nc,07121h		;bbd8
	ld (0d172h),hl		;bbdb
	ld bc,007ebh		;bbde
	ld (hl),b		;bbe1
	ld c,c			;bbe2
	call pe,004eah		;bbe3
	ld b,c			;bbe6
	jp pe,04103h		;bbe7
	jp pe,04102h		;bbea
	call pe,001eah		;bbed
	ld b,c			;bbf0
	rst 38h			;bbf1
	cp 001h			;bbf2
	jp (hl)			;bbf4
	rlca			;bbf5
	ret m			;bbf6
lbbf7h:
	inc e			;bbf7
	jp p,0f113h		;bbf8
	ld d,h			;bbfb
	ex de,hl		;bbfc
	ld a,(bc)		;bbfd
	ld b,b			;bbfe
	jp pe,0d50fh		;bbff
	ld b,c			;bc02
	pop bc			;bc03
	sub 002h		;bc04
	ld bc,002f8h		;bc06
	ex de,hl		;bc09
	add hl,bc		;bc0a
lbc0bh:
	jr nc,lbbf7h		;bc0b
	ld c,0d2h		;bc0d
	ld (hl),b		;bc0f
	ld (hl),b		;bc10
	ld (hl),b		;bc11
	ld (hl),c		;bc12
	ld (hl),c		;bc13
	ld (hl),c		;bc14
	ld (hl),c		;bc15
	ld (hl),b		;bc16
	ld (hl),c		;bc17
	ld (hl),c		;bc18
	sub b			;bc19
	sub c			;bc1a
	sub c			;bc1b
	sub b			;bc1c
	sub c			;bc1d
	call pe,006eah		;bc1e
	sub b			;bc21
	jp pe,09008h		;bc22
	jp pe,0900ah		;bc25
	jp pe,0910ch		;bc28
	jp pe,09008h		;bc2b
	jp pe,09006h		;bc2e
	jp pe,09004h		;bc31
	jp pe,0eb0bh		;bc34
	add hl,bc		;bc37
	jr nz,lbc0bh		;bc38
	ld (hl),b		;bc3a
	ld (hl),b		;bc3b
	ld (hl),b		;bc3c
	ld (hl),c		;bc3d
	ld (hl),c		;bc3e
	ld (hl),c		;bc3f
	ld (hl),c		;bc40
	ld (hl),b		;bc41
	ld (hl),c		;bc42
	jp pe,0eb0ah		;bc43
	add hl,bc		;bc46
	jr nz,$-109		;bc47
	jp pe,0eb0bh		;bc49
	add hl,bc		;bc4c
	jr nc,$-110		;bc4d
	sub c			;bc4f
	sub c			;bc50
	sub b			;bc51
	jp p,0f110h		;bc52
	ld b,h			;bc55
	ex de,hl		;bc56
	ld (09320h),a		;bc57
	add a,e			;bc5a
lbc5bh:
	ret c			;bc5b
lbc5ch:
	cp 001h			;bc5c
	jp (hl)			;bc5e
	rlca			;bc5f
	ret m			;bc60
	ld a,(bc)		;bc61
	xor 001h		;bc62
	pop bc			;bc64
	ex de,hl		;bc65
	rlca			;bc66
	djnz lbc5bh		;bc67
	jr z,lbc5ch		;bc69
	ld h,(hl)		;bc6b
	jp pe,0d20ah		;bc6c
lbc6fh:
	ld b,b			;bc6f
	sub b			;bc70
	add a,b			;bc71
	jp pe,0e909h		;bc72
	ld c,077h		;bc75
	jp (hl)			;bc77
	rlca			;bc78
	call pe,003eah		;bc79
	ld (hl),b		;bc7c
	ld h,b			;bc7d
	ld d,b			;bc7e
	ld b,b			;bc7f
	jr nc,$-19		;bc80
	rlca			;bc82
	djnz lbc6fh		;bc83
	add hl,bc		;bc85
	jp (hl)			;bc86
	rlca			;bc87
	ld b,b			;bc88
	sub b			;bc89
	add a,b			;bc8a
	ld (hl),b		;bc8b
	pop de			;bc8c
	ld bc,090d2h		;bc8d
	jp pe,0e905h		;bc90
	ld c,0d1h		;bc93
	ld l,0ech		;bc95
	jp pe,0e902h		;bc97
	rlca			;bc9a
lbc9bh:
	jr nz,lbc9bh		;bc9b
	ld bc,007e9h		;bc9d
	ret m			;bca0
	ld (bc),a		;bca1
	xor 001h		;bca2
	pop bc			;bca4
	ex de,hl		;bca5
	rlca			;bca6
	djnz lbc9bh		;bca7
	dec d			;bca9
	pop af			;bcaa
	ld h,e			;bcab
	jp pe,0d107h		;bcac
	dec b			;bcaf
	jp nc,lb090h		;bcb0
	pop de			;bcb3
	rrca			;bcb4
	ld (bc),a		;bcb5
	ld (0d241h),hl		;bcb6
	or l			;bcb9
	ld (hl),l		;bcba
	jp (hl)			;bcbb
	ld c,0d1h		;bcbc
	ld c,c			;bcbe
	jp (hl)			;bcbf
	rlca			;bcc0
	ret m			;bcc1
	ld (bc),a		;bcc2
	jp nc,05095h		;bcc3
	ld (hl),b		;bcc6
	sbc a,a			;bcc7
	sub e			;bcc8
	or e			;bcc9
	pop de			;bcca
	dec b			;bccb
	jp nc,08381h		;bccc
	pop de			;bccf
	ld b,e			;bcd0
	inc hl			;bcd1
	inc bc			;bcd2
	jp nc,071b3h		;bcd3
	cp 001h			;bcd6
	jp (hl)			;bcd8
	rlca			;bcd9
	ret m			;bcda
	ld (bc),a		;bcdb
	jp p,0f109h		;bcdc
	ld d,e			;bcdf
	ex de,hl		;bce0
	add hl,de		;bce1
	jr nz,$-20		;bce2
	dec c			;bce4
	out (091h),a		;bce5
	jp nc,07121h		;bce7
	pop de			;bcea
	ld bc,072d2h		;bceb
	pop de			;bcee
	ld (bc),a		;bcef
lbcf0h:
	ld d,c			;bcf0
	ex de,hl		;bcf1
	rlca			;bcf2
	ld (hl),b		;bcf3
	jp nc,0ec99h		;bcf4
	jp pe,09104h		;bcf7
	jp pe,09103h		;bcfa
	jp pe,09102h		;bcfd
	call pe,001eah		;bd00
	sub c			;bd03
	rst 38h			;bd04
	cp 001h			;bd05
	jp (hl)			;bd07
	dec b			;bd08
	xor 001h		;bd09
	in a,(003h)		;bd0b
	defb 0edh ;next byte illegal after ed	;bd0d
	rlca			;bd0e
	defb 0ddh,085h ;add a,ixl	;bd0f
	ld h,l			;bd11
	jp pe,0f508h		;bd12
	pop bc			;bd15
	jp nc,0d123h		;bd16
	ld b,e			;bd19
	ld (hl),e		;bd1a
	jp nc,02323h		;bd1b
	inc hl			;bd1e
	dec h			;bd1f
	inc hl			;bd20
	pop de			;bd21
	ld b,e			;bd22
	ld (hl),e		;bd23
	jp nc,02323h		;bd24
	inc hl			;bd27
	dec h			;bd28
	jp nc,0d123h		;bd29
	ld b,e			;bd2c
	ld (hl),e		;bd2d
	jp nc,02323h		;bd2e
	rst 28h			;bd31
	cp 010h			;bd32
	ret nc			;bd34
	sub c			;bd35
	and c			;bd36
	sub c			;bd37
	and c			;bd38
	cp 004h			;bd39
	nop			;bd3b
	nop			;bd3c
	ld de,00000h		;bd3d
	ld de,010feh		;bd40
	sub c			;bd43
	and c			;bd44
	cp 004h			;bd45
	ld de,01191h		;bd47
	sub c			;bd4a
	cp 010h			;bd4b
	sub c			;bd4d
	and c			;bd4e
	sub c			;bd4f
	inc sp			;bd50
	cp 004h			;bd51
	ret nc			;bd53
	jp (hl)			;bd54
	dec b			;bd55
	sub c			;bd56
	ld de,010feh		;bd57
	sub e			;bd5a
	sub c			;bd5b
	and b			;bd5c
	djnz lbcf0h		;bd5d
	ld hl,093a1h		;bd5f
	sub e			;bd62
	ld sp,0fe91h		;bd63
	inc b			;bd66
	ld d,(iy-043h)		;bd67
	cp 001h			;bd6a
	jp (hl)			;bd6c
	dec b			;bd6d
	xor 001h		;bd6e
	in a,(003h)		;bd70
	pop bc			;bd72
	defb 0ddh,085h ;add a,ixl	;bd73
	ld h,l			;bd75
	defb 0edh ;next byte illegal after ed	;bd76
	ex af,af'		;bd77
	jp pe,0c109h		;bd78
	pop de			;bd7b
	inc hl			;bd7c
	jp nc,0d123h		;bd7d
	ld d,e			;bd80
	inc hl			;bd81
	ld b,e			;bd82
	inc bc			;bd83
	dec b			;bd84
lbd85h:
	inc hl			;bd85
	jp nc,0d123h		;bd86
	ld d,e			;bd89
	inc hl			;bd8a
	ld b,e			;bd8b
	inc bc			;bd8c
	dec b			;bd8d
	inc hl			;bd8e
	jp nc,0d123h		;bd8f
	ld d,e			;bd92
	inc hl			;bd93
	ld b,e			;bd94
	inc bc			;bd95
	dec b			;bd96
lbd97h:
	pop de			;bd97
	inc hl			;bd98
	jp nc,0d123h		;bd99
	ld d,e			;bd9c
lbd9dh:
	inc hl			;bd9d
	ld b,e			;bd9e
	inc bc			;bd9f
	ld bc,0feefh		;bda0
	ld bc,005e9h		;bda3
	pop bc			;bda6
	xor 001h		;bda7
	ex de,hl		;bda9
	add a,a			;bdaa
	djnz lbd97h		;bdab
	add hl,bc		;bdad
	defb 0edh ;next byte illegal after ed	;bdae
	rlca			;bdaf
	push af			;bdb0
	ret nc			;bdb1
lbdb2h:
	jr nz,lbd85h		;bdb2
	sub b			;bdb4
	jr nz,lbdb2h		;bdb5
	ld a,(bc)		;bdb7
	push af			;bdb8
	ret nc			;bdb9
lbdbah:
	ld d,b			;bdba
	nop			;bdbb
	pop de			;bdbc
	jr nz,lbdbah		;bdbd
	ld a,(bc)		;bdbf
	push af			;bdc0
	ret nc			;bdc1
lbdc2h:
	ld b,b			;bdc2
	pop de			;bdc3
	or b			;bdc4
	jr nz,lbdc2h		;bdc5
	ld a,(bc)		;bdc7
	push af			;bdc8
	ret nc			;bdc9
lbdcah:
	jr nc,lbd9dh		;bdca
	and b			;bdcc
	jr nz,lbdcah		;bdcd
	add hl,bc		;bdcf
lbdd0h:
	ret nc			;bdd0
	jr nc,lbdd0h		;bdd1
	and d			;bdd3
	cp l			;bdd4
	cp 001h			;bdd5
	ret m			;bdd7
	dec b			;bdd8
	jp (hl)			;bdd9
	dec b			;bdda
	jp pe,0f50eh		;bddb
	out (020h),a		;bdde
	jr nc,$+66		;bde0
	ld d,b			;bde2
	ld h,b			;bde3
	ld (hl),b		;bde4
	add a,b			;bde5
	sub b			;bde6
	add a,b			;bde7
	ld (hl),b		;bde8
	ld h,b			;bde9
	ld d,b			;bdea
	ld b,b			;bdeb
	jr nc,lbe0eh		;bdec
	jr nc,$+66		;bdee
	ld d,b			;bdf0
	ld h,b			;bdf1
	ld (hl),b		;bdf2
	add a,b			;bdf3
	sub b			;bdf4
	add a,b			;bdf5
	ld (hl),b		;bdf6
	ld h,b			;bdf7
	ld d,b			;bdf8
lbdf9h:
	ld b,b			;bdf9
	jr nc,$+34		;bdfa
	jr nc,lbdf9h		;bdfc
	inc bc			;bdfe
	ret m			;bdff
	ld h,0eah		;be00
	ld c,0dbh		;be02
	ld (bc),a		;be04
	ex de,hl		;be05
	ld d,d			;be06
	ld b,d			;be07
	call nc,0e921h		;be08
	ld (bc),a		;be0b
	out (010h),a		;be0c
lbe0eh:
	inc hl			;be0e
	jp (hl)			;be0f
	dec b			;be10
	call nc,02121h		;be11
	jp (hl)			;be14
	ld (bc),a		;be15
	out (010h),a		;be16
	inc hl			;be18
	jp (hl)			;be19
	dec b			;be1a
	call nc,02121h		;be1b
	jp (hl)			;be1e
	ld (bc),a		;be1f
	call nc,02310h		;be20
	jp (hl)			;be23
	dec b			;be24
	call nc,0e921h		;be25
	ld (bc),a		;be28
	out (010h),a		;be29
	inc hl			;be2b
lbe2ch:
	jp (hl)			;be2c
	dec b			;be2d
	call nc,02121h		;be2e
	jp (hl)			;be31
	ld (bc),a		;be32
lbe33h:
	out (010h),a		;be33
	inc hl			;be35
	jp (hl)			;be36
	dec b			;be37
	call nc,0e921h		;be38
	ld bc,07060h		;be3b
	add a,b			;be3e
	sub b			;be3f
	call nc,0b0a0h		;be40
	out (000h),a		;be43
	djnz $+34		;be45
	cp 001h			;be47
	jp (hl)			;be49
	dec b			;be4a
	jp pe,0eb0fh		;be4b
	add hl,bc		;be4e
	jr nc,lbe2ch		;be4f
lbe51h:
	inc bc			;be51
	ret m			;be52
	jr z,$-41		;be53
	ld hl,052f8h		;be55
	call nc,02010h		;be58
	ret m			;be5b
	jr z,lbe33h		;be5c
	ld hl,0f821h		;be5e
	ld d,d			;be61
	call nc,02010h		;be62
	ret m			;be65
	jr z,$-41		;be66
	ld hl,052f8h		;be68
	call nc,02010h		;be6b
	djnz lbe90h		;be6e
	ret m			;be70
	jr z,$-41		;be71
	ld hl,052f8h		;be73
	call nc,02010h		;be76
	ret m			;be79
	jr z,lbe51h		;be7a
	ld hl,052f8h		;be7c
	call nc,02010h		;be7f
	ret m			;be82
	jr z,$-41		;be83
	sub c			;be85
	ret m			;be86
	ld d,d			;be87
	call nc,02050h		;be88
	ld d,b			;be8b
	sub b			;be8c
	defb 0fdh,052h,0beh ;illegal sequence	;be8d
lbe90h:
	cp 001h			;be90
	ret m			;be92
	dec b			;be93
	jp (hl)			;be94
	dec b			;be95
	xor 009h		;be96
	jp pe,0c10ah		;be98
	push af			;be9b
	out (020h),a		;be9c
	jr nc,lbee0h		;be9e
	ld d,b			;bea0
	ld h,b			;bea1
	ld (hl),b		;bea2
	add a,b			;bea3
	sub b			;bea4
	add a,b			;bea5
	ld (hl),b		;bea6
	ld h,b			;bea7
	ld d,b			;bea8
	ld b,b			;bea9
	jr nc,$+34		;beaa
	jr nc,$+66		;beac
	ld d,b			;beae
	ld h,b			;beaf
	ld (hl),b		;beb0
	add a,b			;beb1
	sub b			;beb2
	add a,b			;beb3
	ld (hl),b		;beb4
	ld h,b			;beb5
	ld d,b			;beb6
lbeb7h:
	ld b,b			;beb7
	jr nc,$+34		;beb8
	djnz lbeb7h		;beba
	ld (bc),a		;bebc
	out (020h),a		;bebd
	jr nc,lbf01h		;bebf
	ld d,b			;bec1
	ld h,b			;bec2
	ld (hl),b		;bec3
	add a,b			;bec4
	sub b			;bec5
	add a,b			;bec6
	ld (hl),b		;bec7
	ld h,b			;bec8
	ld d,b			;bec9
lbecah:
	ld b,b			;beca
	jr nc,lbeedh		;becb
	jr nc,lbf0fh		;becd
	ld d,b			;becf
	ld h,b			;bed0
	ld (hl),b		;bed1
	add a,b			;bed2
	sub b			;bed3
	add a,b			;bed4
	ld (hl),b		;bed5
	ld h,b			;bed6
	ld d,b			;bed7
	ld b,b			;bed8
	jr nc,lbecah		;bed9
	ret m			;bedb
	ld h,0eah		;bedc
	ld c,0dbh		;bede
lbee0h:
	ld (bc),a		;bee0
	ex de,hl		;bee1
	ld d,d			;bee2
	ld b,d			;bee3
	call nc,0e991h		;bee4
	ld (bc),a		;bee7
	out (080h),a		;bee8
	sub e			;beea
	jp (hl)			;beeb
	dec b			;beec
lbeedh:
	call nc,09191h		;beed
	jp (hl)			;bef0
	ld (bc),a		;bef1
	out (080h),a		;bef2
	sub e			;bef4
	jp (hl)			;bef5
	dec b			;bef6
	call nc,09191h		;bef7
	jp (hl)			;befa
	ld (bc),a		;befb
	call nc,09380h		;befc
	jp (hl)			;beff
	dec b			;bf00
lbf01h:
	push de			;bf01
	sub c			;bf02
	jp (hl)			;bf03
	ld (bc),a		;bf04
lbf05h:
	call nc,09380h		;bf05
	jp (hl)			;bf08
	dec b			;bf09
	push de			;bf0a
	sub c			;bf0b
	sub c			;bf0c
lbf0dh:
	jp (hl)			;bf0d
	ld (bc),a		;bf0e
lbf0fh:
	call nc,09380h		;bf0f
	jp (hl)			;bf12
	dec b			;bf13
	push de			;bf14
	sub c			;bf15
	jp (hl)			;bf16
	ld bc,010d4h		;bf17
	jr nz,lbf4ch		;bf1a
	ld b,b			;bf1c
	ld d,b			;bf1d
	ld h,b			;bf1e
	ld (hl),b		;bf1f
	add a,b			;bf20
	sub b			;bf21
	cp 001h			;bf22
	jp (hl)			;bf24
	dec b			;bf25
	ret m			;bf26
	ld a,(bc)		;bf27
	ex de,hl		;bf28
	add hl,bc		;bf29
	ld b,b			;bf2a
	in a,(003h)		;bf2b
	jp pe,0f50dh		;bf2d
	pop de			;bf30
lbf31h:
	jr nz,lbf05h		;bf31
	sub b			;bf33
	jr nz,lbf31h		;bf34
	add hl,bc		;bf36
lbf37h:
	ret m			;bf37
lbf38h:
	dec bc			;bf38
	ret nc			;bf39
	jr nz,lbf0dh		;bf3a
	sub b			;bf3c
	jr nz,lbf37h		;bf3d
	ld a,(bc)		;bf3f
lbf40h:
	push af			;bf40
	pop de			;bf41
	ld d,b			;bf42
	nop			;bf43
	jp nc,0fb20h		;bf44
	add hl,bc		;bf47
lbf48h:
	ret m			;bf48
	dec bc			;bf49
	ret nc			;bf4a
	ld d,b			;bf4b
lbf4ch:
	nop			;bf4c
	pop de			;bf4d
	jr nz,lbf48h		;bf4e
	ld a,(bc)		;bf50
	push af			;bf51
	pop de			;bf52
	ld b,b			;bf53
	jp nc,020b0h		;bf54
	ei			;bf57
	add hl,bc		;bf58
lbf59h:
	ret m			;bf59
	dec bc			;bf5a
	ret nc			;bf5b
	ld b,b			;bf5c
	pop de			;bf5d
	or b			;bf5e
	jr nz,lbf59h		;bf5f
	ld a,(bc)		;bf61
	push af			;bf62
	pop de			;bf63
lbf64h:
	jr nc,lbf38h		;bf64
	and b			;bf66
	jr nz,lbf64h		;bf67
	add hl,bc		;bf69
	ret m			;bf6a
	dec bc			;bf6b
	ret nc			;bf6c
	jr nc,lbf40h		;bf6d
lbf6fh:
	and b			;bf6f
	jr nz,lbf6fh		;bf70
	ld (0febfh),hl		;bf72
	ld bc,005e9h		;bf75
	ret m			;bf78
	dec e			;bf79
	dec (ix+065h)		;bf7a
	jp pe,0f50ch		;bf7d
	jp nc,0d123h		;bf80
	ld b,e			;bf83
	ld (hl),e		;bf84
	jp nc,0d223h		;bf85
	inc hl			;bf88
	inc hl			;bf89
	inc hl			;bf8a
	pop de			;bf8b
	ld hl,004fbh		;bf8c
	cp 001h			;bf8f
	ret m			;bf91
	inc d			;bf92
	jp (hl)			;bf93
	dec b			;bf94
	dec (ix+065h)		;bf95
	jp pe,0f20ch		;bf98
	djnz $-13		;bf9b
	ld b,h			;bf9d
	jp nc,0d123h		;bf9e
	ld b,e			;bfa1
	ld (hl),e		;bfa2
	jp nc,0d223h		;bfa3
	inc hl			;bfa6
	inc hl			;bfa7
	inc hl			;bfa8
	pop de			;bfa9
	ld hl,09efdh		;bfaa
	cp a			;bfad
	cp 001h			;bfae
	jp (hl)			;bfb0
	dec b			;bfb1
	ret m			;bfb2
	dec e			;bfb3
	dec (ix+065h)		;bfb4
	jp pe,0c10dh		;bfb7
	push af			;bfba
	pop de			;bfbb
	inc hl			;bfbc
	jp nc,0d123h		;bfbd
	ld d,e			;bfc0
	inc hl			;bfc1
	ld b,e			;bfc2
	inc bc			;bfc3
	dec b			;bfc4
	ei			;bfc5
	inc bc			;bfc6
	pop de			;bfc7
	inc hl			;bfc8
	jp nc,0d123h		;bfc9
	ld d,e			;bfcc
	inc hl			;bfcd
	ld b,e			;bfce
	inc bc			;bfcf
lbfd0h:
	inc bc			;bfd0
lbfd1h:
	cp 001h			;bfd1
	ret m			;bfd3
	inc d			;bfd4
	jp (hl)			;bfd5
	dec b			;bfd6
	dec (ix+065h)		;bfd7
	jp pe,0f20ch		;bfda
	djnz lbfd0h		;bfdd
	ld b,h			;bfdf
	pop bc			;bfe0
	pop de			;bfe1
	inc hl			;bfe2
	jp nc,0d123h		;bfe3
	ld d,e			;bfe6
	inc hl			;bfe7
	ld b,e			;bfe8
	inc bc			;bfe9
	dec b			;bfea
	pop iy			;bfeb
	cp a			;bfed
	rst 38h			;bfee
	rst 38h			;bfef
	rst 38h			;bff0
	rst 38h			;bff1
	rst 38h			;bff2
	rst 38h			;bff3
	rst 38h			;bff4
	rst 38h			;bff5
	rst 38h			;bff6
	rst 38h			;bff7
	rst 38h			;bff8
	rst 38h			;bff9
	rst 38h			;bffa
	rst 38h			;bffb
	rst 38h			;bffc
	rst 38h			;bffd
	rst 38h			;bffe
	rst 38h			;bfff

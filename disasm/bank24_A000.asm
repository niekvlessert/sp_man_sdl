; z80dasm 1.2.0
; command line: z80dasm -a -l -g 0xA000 -o /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/disasm/bank24_A000.asm /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/banks/bank24.bin

	org 0a000h

	cp 004h			;a000
	ret nc			;a002
	jp (hl)			;a003
	ld b,0f5h		;a004
	cp 004h			;a006
	sub b			;a008
	nop			;a009
	nop			;a00a
	nop			;a00b
	jr nc,la00eh		;a00c
la00eh:
	nop			;a00e
	nop			;a00f
	sub c			;a010
	ld de,00030h		;a011
	ei			;a014
	rlca			;a015
	ld sp,03111h		;a016
	ld de,01131h		;a019
	cp 010h			;a01c
	sub c			;a01e
	cp 004h			;a01f
	ret nc			;a021
	jp (hl)			;a022
	ld b,0f5h		;a023
	cp 004h			;a025
	sub b			;a027
	nop			;a028
	nop			;a029
	nop			;a02a
	jr nc,la02dh		;a02b
la02dh:
	nop			;a02d
	nop			;a02e
	sub b			;a02f
	nop			;a030
	cp 010h			;a031
	ld sp,004feh		;a033
	jr nc,la038h		;a036
la038h:
	ei			;a038
	inc bc			;a039
	sub b			;a03a
	nop			;a03b
	nop			;a03c
	nop			;a03d
	jr nc,la040h		;a03e
la040h:
	nop			;a040
	nop			;a041
	sub b			;a042
	nop			;a043
	cp 010h			;a044
	sub c			;a046
	ld sp,0fef5h		;a047
	inc b			;a04a
	sub b			;a04b
	nop			;a04c
	nop			;a04d
	nop			;a04e
	jr nc,la051h		;a04f
la051h:
	nop			;a051
	nop			;a052
	sub b			;a053
	nop			;a054
	cp 010h			;a055
	ld sp,004feh		;a057
	jr nc,la05ch		;a05a
la05ch:
	ei			;a05c
	inc bc			;a05d
	sub b			;a05e
	nop			;a05f
	nop			;a060
	nop			;a061
	jr nc,la064h		;a062
la064h:
	nop			;a064
	nop			;a065
	sub b			;a066
	nop			;a067
	ld sp,010feh		;a068
	sub c			;a06b
	defb 0fdh,01fh,0a0h ;illegal sequence	;a06c
	cp 001h			;a06f
	jp (hl)			;a071
	ld b,0c1h		;a072
	xor 002h		;a074
	ex de,hl		;a076
	rla			;a077
	djnz la064h		;a078
	ld a,(bc)		;a07a
	call nc,03527h		;a07b
	daa			;a07e
	dec (hl)		;a07f
	ld d,a			;a080
	ld h,l			;a081
	ld d,a			;a082
	ld h,l			;a083
	daa			;a084
	dec (hl)		;a085
la086h:
	daa			;a086
	dec (hl)		;a087
	ld d,a			;a088
	ld h,l			;a089
	call nc,0fe5dh		;a08a
	ld bc,0e9f5h		;a08d
	ld b,0c1h		;a090
	jp p,0f110h		;a092
	ld b,h			;a095
	xor 010h		;a096
	ex de,hl		;a098
	add a,(hl)		;a099
	djnz la086h		;a09a
	dec bc			;a09c
	defb 0edh ;next byte illegal after ed	;a09d
	ld b,0d4h		;a09e
	xor l			;a0a0
	adc a,l			;a0a1
	jp (hl)			;a0a2
la0a3h:
	inc c			;a0a3
	out (00ch),a		;a0a4
	ei			;a0a6
	ld (bc),a		;a0a7
	defb 0fdh,08ch ;adc a,iyh	;a0a8
	and b			;a0aa
	cp 001h			;a0ab
	jp (hl)			;a0ad
	inc c			;a0ae
	ret m			;a0af
sub_a0b0h:
	add a,b			;a0b0
	pop bc			;a0b1
	call pe,005eah		;a0b2
	in a,(001h)		;a0b5
	pop af			;a0b7
	ld b,h			;a0b8
	push af			;a0b9
	call nc,05d2dh		;a0ba
	dec l			;a0bd
	ld d,(hl)		;a0be
	jp pe,0f807h		;a0bf
	dec h			;a0c2
	rst 10h			;a0c3
	rrca			;a0c4
	push bc			;a0c5
la0c6h:
	push de			;a0c6
	ld h,0d8h		;a0c7
	cp 001h			;a0c9
	push af			;a0cb
	jp (hl)			;a0cc
	ld b,0f8h		;a0cd
	add a,c			;a0cf
	jp nz,0eaech		;a0d0
	ex af,af'		;a0d3
	push de			;a0d4
	xor l			;a0d5
	adc a,l			;a0d6
	jp (hl)			;a0d7
	inc c			;a0d8
	ret m			;a0d9
	add a,b			;a0da
	pop bc			;a0db
	call nc,0fb0dh		;a0dc
	ld (bc),a		;a0df
	defb 0fdh,0c9h,0a0h ;illegal sequence	;a0e0
	cp 001h			;a0e3
	jp (hl)			;a0e5
	inc c			;a0e6
	xor 010h		;a0e7
	ret m			;a0e9
	add a,b			;a0ea
	pop bc			;a0eb
	call pe,005eah		;a0ec
	in a,(001h)		;a0ef
	pop af			;a0f1
	ld b,h			;a0f2
	push af			;a0f3
	call nc,05d2dh		;a0f4
	dec l			;a0f7
	ld d,(hl)		;a0f8
la0f9h:
	jp pe,0c007h		;a0f9
	ret m			;a0fc
	dec h			;a0fd
	rst 10h			;a0fe
	rrca			;a0ff
	ret nz			;a100
la101h:
	push de			;a101
	dec h			;a102
	ret c			;a103
	rst 28h			;a104
	cp 001h			;a105
	jp (hl)			;a107
	ld b,0f8h		;a108
	dec bc			;a10a
la10bh:
	ex de,hl		;a10b
	add hl,hl		;a10c
	djnz la0f9h		;a10d
	ex af,af'		;a10f
	ld sp,hl		;a110
	jr nc,$-93		;a111
la113h:
	jp pe,0eb07h		;a113
	add hl,hl		;a116
	nop			;a117
	ld sp,hl		;a118
	ld h,d			;a119
	and c			;a11a
	ret m			;a11b
	ccf			;a11c
	ex de,hl		;a11d
	add hl,hl		;a11e
	jr nz,la10bh		;a11f
sub_a121h:
	add hl,bc		;a121
	ld sp,hl		;a122
	jr nc,la0c6h		;a123
	jp pe,0eb08h		;a125
	add hl,hl		;a128
	djnz $-5		;a129
	ld h,d			;a12b
	and c			;a12c
	defb 0fdh,005h,0a1h ;illegal sequence	;a12d
	push af			;a130
	out (0a0h),a		;a131
	add a,b			;a133
	jp nc,0d300h		;a134
	add a,b			;a137
	jp nc,0d320h		;a138
	add a,b			;a13b
	jp nc,0d330h		;a13c
la13fh:
	and b			;a13f
	add a,b			;a140
	jp nc,0d300h		;a141
	add a,b			;a144
	jp nc,0d320h		;a145
	add a,b			;a148
	jp nc,0fb30h		;a149
la14ch:
	inc bc			;a14c
	out (0a0h),a		;a14d
	add a,b			;a14f
	jp nc,0d300h		;a150
	add a,b			;a153
	jp nc,0d320h		;a154
	add a,b			;a157
	jp nc,02030h		;a158
la15bh:
	nop			;a15b
	jr nc,la17eh		;a15c
	ld (hl),b		;a15e
	jr nc,$-126		;a15f
	jp m,0d2f5h		;a161
	and b			;a164
	add a,b			;a165
	pop de			;a166
	nop			;a167
	jp nc,0d180h		;a168
	jr nz,la13fh		;a16b
	add a,b			;a16d
	pop de			;a16e
	jr nc,$-44		;a16f
la171h:
	and b			;a171
	add a,b			;a172
la173h:
	pop de			;a173
	nop			;a174
	jp nc,0d180h		;a175
	jr nz,la14ch		;a178
	add a,b			;a17a
	pop de			;a17b
	jr nc,$-3		;a17c
la17eh:
	inc bc			;a17e
	jp nc,080a0h		;a17f
	pop de			;a182
	nop			;a183
	jp nc,0d180h		;a184
	jr nz,la15bh		;a187
	add a,b			;a189
	pop de			;a18a
	jr nc,la1adh		;a18b
	nop			;a18d
	jr nc,la1b0h		;a18e
	ld (hl),b		;a190
	jr nc,la113h		;a191
	jp m,001feh		;a193
	jp (hl)			;a196
	ld b,0f8h		;a197
	jr z,$-19		;a199
	ld (0ea70h),hl		;a19b
	dec bc			;a19e
	in a,(002h)		;a19f
sub_a1a1h:
	jp p,0f110h		;a1a1
	add hl,sp		;a1a4
	push de			;a1a5
	daa			;a1a6
	dec (hl)		;a1a7
	daa			;a1a8
	dec (hl)		;a1a9
	ld d,a			;a1aa
	ld h,l			;a1ab
	ld d,a			;a1ac
la1adh:
	ld h,l			;a1ad
	push de			;a1ae
	daa			;a1af
la1b0h:
	dec (hl)		;a1b0
la1b1h:
	daa			;a1b1
	dec (hl)		;a1b2
	ld d,a			;a1b3
	ld h,l			;a1b4
	call pe,009eah		;a1b5
	ret m			;a1b8
	add a,b			;a1b9
	jp nz,05dd5h		;a1ba
	cp 001h			;a1bd
	jp (hl)			;a1bf
	ld b,0f8h		;a1c0
	dec bc			;a1c2
	ex de,hl		;a1c3
	add hl,hl		;a1c4
	djnz la1b1h		;a1c5
	ex af,af'		;a1c7
	in a,(001h)		;a1c8
	ld sp,hl		;a1ca
	ld d,(hl)		;a1cb
	and d			;a1cc
la1cdh:
	jp nc,0d170h		;a1cd
	nop			;a1d0
la1d1h:
	jp pe,0eb07h		;a1d1
	add hl,hl		;a1d4
la1d5h:
	nop			;a1d5
	ld sp,hl		;a1d6
	halt			;a1d7
	and d			;a1d8
	pop de			;a1d9
	ld (hl),b		;a1da
	ret nc			;a1db
	nop			;a1dc
	ret m			;a1dd
	ccf			;a1de
	ex de,hl		;a1df
	add hl,hl		;a1e0
	jr nz,la1cdh		;a1e1
	add hl,bc		;a1e3
	ld sp,hl		;a1e4
	ld d,(hl)		;a1e5
	and d			;a1e6
	jp nc,0d170h		;a1e7
la1eah:
	nop			;a1ea
	jp pe,0eb08h		;a1eb
la1eeh:
	add hl,hl		;a1ee
	djnz la1eah		;a1ef
	halt			;a1f1
	and d			;a1f2
	pop de			;a1f3
	ld (hl),b		;a1f4
	ret nc			;a1f5
la1f6h:
	nop			;a1f6
	defb 0fdh,0bdh ;cp iyl	;a1f7
	and c			;a1f9
	cp 001h			;a1fa
	jp (hl)			;a1fc
	ld b,0eeh		;a1fd
	ex af,af'		;a1ff
	ret m			;a200
	jr z,la1eeh		;a201
	ld (0ea70h),hl		;a203
	dec bc			;a206
	in a,(002h)		;a207
	jp p,0f110h		;a209
	add hl,sp		;a20c
	call nc,03527h		;a20d
	daa			;a210
la211h:
	dec (hl)		;a211
	ld d,a			;a212
	ld h,l			;a213
	ld d,a			;a214
	ld h,l			;a215
	daa			;a216
	dec (hl)		;a217
	daa			;a218
	dec (hl)		;a219
la21ah:
	ld d,a			;a21a
	ld h,l			;a21b
	call pe,005eah		;a21c
	ret m			;a21f
	jr z,la1f6h		;a220
	ld e,l			;a222
	cp 001h			;a223
	jp (hl)			;a225
	ld b,0f8h		;a226
	dec bc			;a228
	pop bc			;a229
	xor 001h		;a22a
	ex de,hl		;a22c
	rla			;a22d
	djnz la21ah		;a22e
la230h:
	ld b,0f9h		;a230
	ld d,(hl)		;a232
	and d			;a233
	jp pe,0eb05h		;a234
	rla			;a237
la238h:
	nop			;a238
	pop bc			;a239
	ld sp,hl		;a23a
	halt			;a23b
	and d			;a23c
	ret m			;a23d
	ccf			;a23e
	pop bc			;a23f
	xor 001h		;a240
	ex de,hl		;a242
	rla			;a243
	djnz la230h		;a244
	ld b,0f9h		;a246
	ld d,(hl)		;a248
	and d			;a249
	jp pe,0eb05h		;a24a
	rla			;a24d
	djnz la211h		;a24e
	ld sp,hl		;a250
	halt			;a251
	and d			;a252
	inc iy			;a253
	and d			;a255
	push af			;a256
	jp nc,00020h		;a257
	jr nc,la25ch		;a25a
la25ch:
	ld d,b			;a25c
la25dh:
	nop			;a25d
	ld (hl),b		;a25e
	jr nz,la261h		;a25f
la261h:
	jr nc,la263h		;a261
la263h:
	ld d,b			;a263
	nop			;a264
la265h:
	ld (hl),b		;a265
	ei			;a266
	inc bc			;a267
	jp nc,00020h		;a268
	jr nc,la26dh		;a26b
la26dh:
	ld d,b			;a26d
	nop			;a26e
	ld (hl),b		;a26f
	ld d,b			;a270
	jr nc,la2e3h		;a271
	ld d,b			;a273
	and b			;a274
	jp m,0d1f5h		;a275
	jr nz,la27ah		;a278
la27ah:
	jr nc,la27ch		;a27a
la27ch:
	ld d,b			;a27c
	nop			;a27d
	ld (hl),b		;a27e
	jr nz,la281h		;a27f
la281h:
	jr nc,la283h		;a281
la283h:
	ld d,b			;a283
	nop			;a284
la285h:
	ld (hl),b		;a285
	ei			;a286
	inc bc			;a287
	pop de			;a288
	jr nz,la28bh		;a289
la28bh:
	jr nc,la28dh		;a28b
la28dh:
	ld d,b			;a28d
	nop			;a28e
	ld (hl),b		;a28f
	ld d,b			;a290
	jr nc,la303h		;a291
	ld d,b			;a293
	and b			;a294
	jp m,004feh		;a295
	ret nc			;a298
	jp (hl)			;a299
	ex af,af'		;a29a
	push af			;a29b
	sub b			;a29c
	nop			;a29d
	jr nc,la2a0h		;a29e
la2a0h:
	sub b			;a2a0
	sub b			;a2a1
	jr nc,la2a4h		;a2a2
la2a4h:
	sub b			;a2a4
la2a5h:
	nop			;a2a5
	jr nc,la238h		;a2a6
	nop			;a2a8
	sub b			;a2a9
	jr nc,la2ach		;a2aa
la2ach:
	sub b			;a2ac
	nop			;a2ad
	jr nc,la2b0h		;a2ae
la2b0h:
	nop			;a2b0
	sub b			;a2b1
	jr nc,la2e4h		;a2b2
	sub b			;a2b4
la2b5h:
	jr nc,la2e7h		;a2b5
	sub b			;a2b7
	jr nc,$+50		;a2b8
	jr nc,la2a5h		;a2ba
	inc b			;a2bc
	jr nc,la2efh		;a2bd
	jp (hl)			;a2bf
	ex af,af'		;a2c0
	ei			;a2c1
	ld (bc),a		;a2c2
	cp 004h			;a2c3
	ret nc			;a2c5
	jp (hl)			;a2c6
	ex af,af'		;a2c7
	push af			;a2c8
	sub b			;a2c9
	nop			;a2ca
	jr nc,la25dh		;a2cb
	nop			;a2cd
	sub b			;a2ce
	jr nc,la2e1h		;a2cf
	sub b			;a2d1
	nop			;a2d2
la2d3h:
	jr nc,la265h		;a2d3
	nop			;a2d5
	sub b			;a2d6
	djnz la309h		;a2d7
	ei			;a2d9
	inc bc			;a2da
	sub b			;a2db
	nop			;a2dc
	jr nc,la2dfh		;a2dd
la2dfh:
	sub b			;a2df
	nop			;a2e0
la2e1h:
	jr nc,la2e3h		;a2e1
la2e3h:
	sub b			;a2e3
la2e4h:
	sub b			;a2e4
	djnz la317h		;a2e5
la2e7h:
	djnz la319h		;a2e7
	jr nc,la31bh		;a2e9
	cp 004h			;a2eb
	ret nc			;a2ed
	jp (hl)			;a2ee
la2efh:
	ex af,af'		;a2ef
	push af			;a2f0
	sub b			;a2f1
	nop			;a2f2
	jr nc,la285h		;a2f3
	nop			;a2f5
	sub b			;a2f6
	jr nc,la309h		;a2f7
	sub b			;a2f9
	nop			;a2fa
	jr nc,la28dh		;a2fb
	nop			;a2fd
	sub b			;a2fe
	djnz la331h		;a2ff
	ei			;a301
	inc bc			;a302
la303h:
	sub b			;a303
	nop			;a304
	jr nc,la307h		;a305
la307h:
	sub b			;a307
	nop			;a308
la309h:
	jr nc,la30bh		;a309
la30bh:
	sub b			;a30b
	sub b			;a30c
	djnz la33fh		;a30d
	djnz $+50		;a30f
	jr nc,la343h		;a311
	cp 004h			;a313
	ret nc			;a315
	jp (hl)			;a316
la317h:
	ex af,af'		;a317
	push af			;a318
la319h:
	sub b			;a319
	nop			;a31a
la31bh:
	jr nc,la31dh		;a31b
la31dh:
	sub b			;a31d
	sub b			;a31e
	jr nc,la321h		;a31f
la321h:
	sub b			;a321
la322h:
	nop			;a322
	jr nc,la2b5h		;a323
	nop			;a325
	sub b			;a326
	jr nc,la329h		;a327
la329h:
	sub b			;a329
	nop			;a32a
	jr nc,la32dh		;a32b
la32dh:
	nop			;a32d
	sub b			;a32e
	jr nc,la361h		;a32f
la331h:
	sub b			;a331
	jr nc,$+50		;a332
	sub b			;a334
	jr nc,la367h		;a335
	jr nc,la322h		;a337
	inc b			;a339
	jr nc,la36ch		;a33a
	jp (hl)			;a33c
	ex af,af'		;a33d
	ei			;a33e
la33fh:
	ld (bc),a		;a33f
	sub (iy-05eh)		;a340
la343h:
	cp 001h			;a343
	ret m			;a345
	inc de			;a346
	ex de,hl		;a347
	add a,(hl)		;a348
	ld b,c			;a349
	jp (hl)			;a34a
	ex af,af'		;a34b
	jp pe,0ed08h		;a34c
	dec b			;a34f
	in a,(001h)		;a350
	jp p,0f116h		;a352
	ld d,(hl)		;a355
	jp nc,0270fh		;a356
	defb 0edh ;next byte illegal after ed	;a359
	ex af,af'		;a35a
	jp (hl)			;a35b
	inc b			;a35c
	out (0a5h),a		;a35d
	jp (hl)			;a35f
	ex af,af'		;a360
la361h:
	ld d,d			;a361
	and c			;a362
	jp nc,0ed07h		;a363
	dec b			;a366
la367h:
	jp nc,004e9h		;a367
	jr nz,la3aah		;a36a
la36ch:
	jp (hl)			;a36c
	ex af,af'		;a36d
	jp nc,0ea5bh		;a36e
	ld b,0f8h		;a371
la373h:
	ccf			;a373
	pop bc			;a374
	pop de			;a375
	jr nz,$+50		;a376
	cp 001h			;a378
	ex de,hl		;a37a
	add hl,bc		;a37b
	jr nc,la367h		;a37c
	ex af,af'		;a37e
	jp pe,0f50ch		;a37f
	push de			;a382
	add a,b			;a383
	add a,b			;a384
	call nc,0d580h		;a385
	add a,b			;a388
	add a,b			;a389
	call nc,0d580h		;a38a
	add a,b			;a38d
	call nc,0fb80h		;a38e
	ld (bc),a		;a391
	push af			;a392
	push de			;a393
	ld (hl),b		;a394
	ld (hl),b		;a395
	call nc,0d570h		;a396
	ld (hl),b		;a399
	ld (hl),b		;a39a
	call nc,0d570h		;a39b
	ld (hl),b		;a39e
	call nc,0fb70h		;a39f
	ld (bc),a		;a3a2
	push af			;a3a3
	push de			;a3a4
	ld d,b			;a3a5
	ld d,b			;a3a6
	call nc,0d550h		;a3a7
la3aah:
	ld d,b			;a3aa
	ld d,b			;a3ab
	call nc,0d550h		;a3ac
	ld d,b			;a3af
	call nc,0fb50h		;a3b0
	ld (bc),a		;a3b3
	push de			;a3b4
	and b			;a3b5
	and b			;a3b6
	call nc,0d5a0h		;a3b7
	and b			;a3ba
	and b			;a3bb
	call nc,0d5a0h		;a3bc
	and b			;a3bf
la3c0h:
	call nc,0d5a0h		;a3c0
	ld (hl),b		;a3c3
	call nc,0d570h		;a3c4
	ld (hl),b		;a3c7
	ld (hl),b		;a3c8
	call nc,0d570h		;a3c9
	ld (hl),b		;a3cc
la3cdh:
	call nc,0d570h		;a3cd
	ld (hl),b		;a3d0
	cp 001h			;a3d1
	ex de,hl		;a3d3
	add hl,bc		;a3d4
	jr nc,la3c0h		;a3d5
	ex af,af'		;a3d7
	jp pe,0f50ch		;a3d8
	push de			;a3db
	add a,b			;a3dc
	add a,b			;a3dd
	call nc,0d580h		;a3de
	add a,b			;a3e1
	add a,b			;a3e2
	call nc,0d580h		;a3e3
	add a,b			;a3e6
	call nc,0fb80h		;a3e7
	ld (bc),a		;a3ea
	push af			;a3eb
	push de			;a3ec
	jr nc,$+50		;a3ed
	call nc,0d530h		;a3ef
	jr nc,$+50		;a3f2
	call nc,0d530h		;a3f4
	jr nc,la3cdh		;a3f7
	jr nc,$-3		;a3f9
	ld (bc),a		;a3fb
	push af			;a3fc
	push de			;a3fd
	nop			;a3fe
	nop			;a3ff
	call nc,0d500h		;a400
	nop			;a403
	nop			;a404
	call nc,0d500h		;a405
	nop			;a408
	call nc,0fb00h		;a409
	ld (bc),a		;a40c
	call nc,02020h		;a40d
	out (020h),a		;a410
	call nc,02020h		;a412
	out (020h),a		;a415
	call nc,0d320h		;a417
	jr nz,$-41		;a41a
	ld (hl),b		;a41c
	call nc,0d570h		;a41d
	ld (hl),b		;a420
	ld (hl),b		;a421
	call nc,0d570h		;a422
	ld (hl),b		;a425
	call nc,0d570h		;a426
	ld (hl),b		;a429
	cp 001h			;a42a
	ex de,hl		;a42c
	add hl,bc		;a42d
	jr nc,$-21		;a42e
	ex af,af'		;a430
la431h:
	push af			;a431
	jp pe,0d50ch		;a432
	ld d,b			;a435
	call nc,0d350h		;a436
	ld d,b			;a439
	push de			;a43a
la43bh:
	ld d,b			;a43b
	call nc,0d350h		;a43c
	ld d,b			;a43f
	push de			;a440
	ld d,b			;a441
	call nc,0fb50h		;a442
	ld (bc),a		;a445
	push af			;a446
	push de			;a447
	nop			;a448
	call nc,0d300h		;a449
la44ch:
	nop			;a44c
	push de			;a44d
	nop			;a44e
	call nc,0d300h		;a44f
	nop			;a452
	push de			;a453
	nop			;a454
	call nc,0fb00h		;a455
	ld (bc),a		;a458
	push af			;a459
	push de			;a45a
	djnz la431h		;a45b
	djnz $+18		;a45d
	push de			;a45f
	djnz $+18		;a460
	call nc,0d510h		;a462
	djnz la43bh		;a465
	djnz $-3		;a467
	ld (bc),a		;a469
	push af			;a46a
	push de			;a46b
	jr nc,la49eh		;a46c
la46eh:
	call nc,0d530h		;a46e
	jr nc,la4a3h		;a471
	call nc,0d530h		;a473
	jr nc,la44ch		;a476
	jr nc,$-3		;a478
	ld (bc),a		;a47a
	defb 0fdh,043h,0a3h ;illegal sequence	;a47b
	cp 001h			;a47e
	ret m			;a480
la481h:
	jr z,la46eh		;a481
	ld b,d			;a483
	ld (hl),b		;a484
	jp (hl)			;a485
	ex af,af'		;a486
	push af			;a487
	jp pe,0d509h		;a488
	ld d,b			;a48b
	call nc,0f850h		;a48c
la48fh:
	dec c			;a48f
	jp pe,0d30dh		;a490
	ld d,b			;a493
	ret m			;a494
	jr z,la481h		;a495
	add hl,bc		;a497
	push de			;a498
	ld d,b			;a499
	call nc,0f850h		;a49a
	dec c			;a49d
la49eh:
	jp pe,0d30dh		;a49e
la4a1h:
	ld d,b			;a4a1
	ret m			;a4a2
la4a3h:
	jr z,la48fh		;a4a3
	add hl,bc		;a4a5
	push de			;a4a6
	ld d,b			;a4a7
	call nc,0d550h		;a4a8
	ld d,b			;a4ab
	call nc,0f850h		;a4ac
la4afh:
	dec c			;a4af
	jp pe,0d30dh		;a4b0
	ld d,b			;a4b3
	ret m			;a4b4
	jr z,la4a1h		;a4b5
	add hl,bc		;a4b7
	push de			;a4b8
	ld d,b			;a4b9
	call nc,0f850h		;a4ba
	dec c			;a4bd
	jp pe,0d30dh		;a4be
	ld d,b			;a4c1
	ret m			;a4c2
	jr z,la4afh		;a4c3
	add hl,bc		;a4c5
	push de			;a4c6
	ld d,b			;a4c7
	call nc,0fb00h		;a4c8
	inc bc			;a4cb
	push de			;a4cc
	ld d,b			;a4cd
	call nc,05050h		;a4ce
	push de			;a4d1
	ld d,b			;a4d2
	ld d,b			;a4d3
	call nc,0d550h		;a4d4
	ld d,b			;a4d7
	call nc,0d550h		;a4d8
	ld (hl),b		;a4db
	ld (hl),b		;a4dc
	call nc,0d570h		;a4dd
	ld (hl),b		;a4e0
	ld (hl),b		;a4e1
	call nc,0d570h		;a4e2
	ld (hl),b		;a4e5
	call nc,0fe70h		;a4e6
	ld bc,028f8h		;a4e9
	ex de,hl		;a4ec
	add hl,bc		;a4ed
	jr nz,$-21		;a4ee
	ex af,af'		;a4f0
	jp pe,0f509h		;a4f1
	push de			;a4f4
	add a,b			;a4f5
	add a,b			;a4f6
	call nc,0d580h		;a4f7
	add a,b			;a4fa
	add a,b			;a4fb
	call nc,0d580h		;a4fc
	add a,b			;a4ff
	call nc,0fb80h		;a500
	ld (bc),a		;a503
	push af			;a504
	push de			;a505
	ld (hl),b		;a506
	ld (hl),b		;a507
	call nc,0d570h		;a508
la50bh:
	ld (hl),b		;a50b
	ld (hl),b		;a50c
	call nc,0d570h		;a50d
	ld (hl),b		;a510
	call nc,0fb70h		;a511
	ld (bc),a		;a514
	push af			;a515
	push de			;a516
	ld d,b			;a517
	ld d,b			;a518
	call nc,0d550h		;a519
	ld d,b			;a51c
	ld d,b			;a51d
	call nc,0d550h		;a51e
	ld d,b			;a521
	call nc,0fb50h		;a522
	ld (bc),a		;a525
	push de			;a526
	and b			;a527
	and b			;a528
	call nc,0d5a0h		;a529
	and b			;a52c
	and b			;a52d
	call nc,0d5a0h		;a52e
	and b			;a531
	call nc,0d5a0h		;a532
	ld (hl),b		;a535
	call nc,0d570h		;a536
	ld (hl),b		;a539
	ld (hl),b		;a53a
	call nc,0d570h		;a53b
	ld (hl),b		;a53e
	call nc,0d570h		;a53f
	ld (hl),b		;a542
	cp 001h			;a543
	ret m			;a545
	jr z,$-19		;a546
	ld b,d			;a548
	ld (hl),b		;a549
	jp (hl)			;a54a
	ex af,af'		;a54b
	jp pe,0f509h		;a54c
	push de			;a54f
	add a,b			;a550
	add a,b			;a551
	call nc,0d580h		;a552
	add a,b			;a555
	add a,b			;a556
	call nc,0d580h		;a557
	add a,b			;a55a
	call nc,0fb80h		;a55b
	ld (bc),a		;a55e
	push af			;a55f
	push de			;a560
	jr nc,$+50		;a561
	call nc,0d530h		;a563
	jr nc,$+50		;a566
	call nc,0d530h		;a568
	jr nc,$-42		;a56b
	jr nc,$-3		;a56d
	ld (bc),a		;a56f
	push af			;a570
	push de			;a571
	nop			;a572
	nop			;a573
	call nc,0d500h		;a574
	nop			;a577
	nop			;a578
	call nc,0d500h		;a579
	nop			;a57c
	call nc,0fb00h		;a57d
	ld (bc),a		;a580
	call nc,02020h		;a581
	out (020h),a		;a584
	call nc,02020h		;a586
	out (020h),a		;a589
	call nc,0d320h		;a58b
la58eh:
	jr nz,$-41		;a58e
	ld (hl),b		;a590
	call nc,0d570h		;a591
	ld (hl),b		;a594
	ld (hl),b		;a595
	call nc,0d570h		;a596
	ld (hl),b		;a599
	call nc,0d570h		;a59a
	ld (hl),b		;a59d
	cp 001h			;a59e
	ret m			;a5a0
	jr z,la58eh		;a5a1
	ld b,d			;a5a3
	ld (hl),b		;a5a4
	jp (hl)			;a5a5
	ex af,af'		;a5a6
la5a7h:
	push af			;a5a7
	jp pe,0d509h		;a5a8
	ld d,b			;a5ab
	call nc,0d350h		;a5ac
	ld d,b			;a5af
	push de			;a5b0
la5b1h:
	ld d,b			;a5b1
	call nc,0d350h		;a5b2
	ld d,b			;a5b5
	push de			;a5b6
	ld d,b			;a5b7
	call nc,0fb50h		;a5b8
	ld (bc),a		;a5bb
	push af			;a5bc
	push de			;a5bd
	nop			;a5be
	call nc,0d300h		;a5bf
la5c2h:
	nop			;a5c2
	push de			;a5c3
	nop			;a5c4
	call nc,0d300h		;a5c5
	nop			;a5c8
	push de			;a5c9
	nop			;a5ca
	call nc,0fb00h		;a5cb
	ld (bc),a		;a5ce
	push af			;a5cf
	push de			;a5d0
	djnz la5a7h		;a5d1
	djnz $+18		;a5d3
	push de			;a5d5
	djnz $+18		;a5d6
	call nc,0d510h		;a5d8
	djnz la5b1h		;a5db
	djnz $-3		;a5dd
	ld (bc),a		;a5df
	push af			;a5e0
	push de			;a5e1
	jr nc,la614h		;a5e2
	call nc,0d530h		;a5e4
	jr nc,la619h		;a5e7
	call nc,0d530h		;a5e9
	jr nc,la5c2h		;a5ec
	jr nc,$-3		;a5ee
	ld (bc),a		;a5f0
	ld a,(iy-05ch)		;a5f1
	cp 001h			;a5f4
	ret m			;a5f6
	dec e			;a5f7
	jp (hl)			;a5f8
	inc b			;a5f9
	jp pe,0eb06h		;a5fa
	add hl,bc		;a5fd
la5feh:
	djnz la5feh		;a5fe
	ld bc,004e9h		;a600
	ret nc			;a603
	ld d,b			;a604
	jr nc,$+34		;a605
	pop de			;a607
	and b			;a608
	ld d,b			;a609
la60ah:
	jr nc,$+34		;a60a
	jp nc,050a0h		;a60c
	jr nc,la631h		;a60f
	out (0a0h),a		;a611
	ld d,b			;a613
la614h:
	jr nc,la636h		;a614
	call nc,0d3a0h		;a616
la619h:
	jr nz,la64bh		;a619
	ld d,b			;a61b
	and b			;a61c
	jr nc,la66fh		;a61d
	and b			;a61f
	jp nc,0d320h		;a620
	ld d,b			;a623
	and b			;a624
	jp nc,03020h		;a625
	out (0a0h),a		;a628
	jp nc,03020h		;a62a
	ld d,b			;a62d
	jr nz,$+50		;a62e
	ld d,b			;a630
la631h:
	and b			;a631
	jr nc,$+82		;a632
	and b			;a634
	pop de			;a635
la636h:
	jr nz,la60ah		;a636
	ld d,b			;a638
	and b			;a639
	pop de			;a63a
	jr nz,$+50		;a63b
	jp nc,0d1a0h		;a63d
	jr nz,la672h		;a640
	ld d,b			;a642
	jr nz,$+50		;a643
	ld d,b			;a645
	and b			;a646
	jr nc,la699h		;a647
	and b			;a649
	ret nc			;a64a
la64bh:
	jr nz,$-45		;a64b
	ld d,b			;a64d
	and b			;a64e
	ret nc			;a64f
	jr nz,$+50		;a650
	pop de			;a652
	and b			;a653
	ret nc			;a654
	jr nz,$+50		;a655
	ld d,b			;a657
	jr nc,$+34		;a658
	pop de			;a65a
	and b			;a65b
	ld d,b			;a65c
	jr nc,$+34		;a65d
	jp nc,050a0h		;a65f
	jr nc,$+34		;a662
	out (0a0h),a		;a664
	ld d,b			;a666
	jr nc,la689h		;a667
	call nc,0d3a0h		;a669
	jr nz,la69eh		;a66c
	ld d,b			;a66e
la66fh:
	and b			;a66f
	jr nc,$+82		;a670
la672h:
	and b			;a672
	jp nc,0d320h		;a673
	ld d,b			;a676
	and b			;a677
la678h:
	jp nc,03020h		;a678
	out (0a0h),a		;a67b
	jp nc,03020h		;a67d
	ld d,b			;a680
	jr nz,$-20		;a681
	ld b,0f5h		;a683
	jp nc,08050h		;a685
	pop de			;a688
la689h:
	nop			;a689
	jr nc,$-44		;a68a
	add a,b			;a68c
	pop de			;a68d
	nop			;a68e
	jr nc,$+82		;a68f
	nop			;a691
	jr nc,la6e4h		;a692
	add a,b			;a694
	jr nc,la6e7h		;a695
	add a,b			;a697
	ret nc			;a698
la699h:
	nop			;a699
	pop de			;a69a
	or b			;a69b
	ld (hl),b		;a69c
	ld d,b			;a69d
la69eh:
	jr nz,la672h		;a69e
	or b			;a6a0
	ld (hl),b		;a6a1
	ld d,b			;a6a2
	jr nz,la678h		;a6a3
	or b			;a6a5
	jp nc,05020h		;a6a6
	ld (hl),b		;a6a9
	or b			;a6aa
	pop de			;a6ab
	jr nz,$+82		;a6ac
la6aeh:
	ld (hl),b		;a6ae
	cp 001h			;a6af
	ex de,hl		;a6b1
	ld d,040h		;a6b2
	jp (hl)			;a6b4
	ex af,af'		;a6b5
	ret m			;a6b6
	ld (bc),a		;a6b7
	jp pe,0f20ah		;a6b8
	djnz la6aeh		;a6bb
	ld b,a			;a6bd
	out (002h),a		;a6be
	ld (0d281h),a		;a6c0
	rlca			;a6c3
	ld (la2d3h),a		;a6c4
	add a,c			;a6c7
	ld (hl),a		;a6c8
	out (002h),a		;a6c9
	ld (0d281h),a		;a6cb
	rlca			;a6ce
	ret m			;a6cf
	dec d			;a6d0
	defb 0ddh,027h,042h ;illegal sequence	;a6d1
	in a,(002h)		;a6d4
	jp pe,0d20ch		;a6d6
	add a,d			;a6d9
	and d			;a6da
	pop de			;a6db
	ld bc,0fe27h		;a6dc
la6dfh:
	ld bc,087ebh		;a6df
	ld h,d			;a6e2
	jp (hl)			;a6e3
la6e4h:
	ex af,af'		;a6e4
	ret m			;a6e5
	ld (bc),a		;a6e6
la6e7h:
	jp pe,0ed08h		;a6e7
	ld b,0f2h		;a6ea
	djnz la6dfh		;a6ec
	ld d,e			;a6ee
	out (002h),a		;a6ef
	ld (0d281h),a		;a6f1
	rlca			;a6f4
	ld (la2d3h),a		;a6f5
	add a,c			;a6f8
	ld (hl),a		;a6f9
	out (002h),a		;a6fa
	ld (0d271h),a		;a6fc
	rlca			;a6ff
	ret m			;a700
la701h:
	dec d			;a701
	out (072h),a		;a702
	or h			;a704
	jp nc,0ea22h		;a705
	dec bc			;a708
	in a,(002h)		;a709
	defb 0ddh,007h,031h ;illegal sequence	;a70b
	ld d,h			;a70e
	cp 001h			;a70f
	ret m			;a711
	daa			;a712
	ex de,hl		;a713
	add a,h			;a714
	ld h,b			;a715
	jp (hl)			;a716
	ex af,af'		;a717
	jp pe,0ed07h		;a718
	ld b,0dbh		;a71b
	ld bc,052d3h		;a71d
	add a,d			;a720
	jp nc,03201h		;a721
	jp nc,05182h		;a724
	out (002h),a		;a727
	ld (0d271h),a		;a729
	rlca			;a72c
	out (012h),a		;a72d
	ld (07251h),a		;a72f
	add a,d			;a732
	and c			;a733
	jp nc,0ea02h		;a734
	rlca			;a737
	sub 008h		;a738
	ld bc,03112h		;a73a
	ld d,d			;a73d
	ld (hl),d		;a73e
	add a,c			;a73f
	ret c			;a740
	call c,0f4fdh		;a741
	and l			;a744
	cp 001h			;a745
	ret m			;a747
	dec bc			;a748
	ex de,hl		;a749
	inc h			;a74a
	ld d,b			;a74b
	jp (hl)			;a74c
	ex af,af'		;a74d
	jp pe,0db0bh		;a74e
	ld (bc),a		;a751
	jp p,0f116h		;a752
	ld d,(hl)		;a755
	jp nc,010d6h		;a756
	ld (bc),a		;a759
	scf			;a75a
	ret c			;a75b
	jr nc,$-43		;a75c
	and c			;a75e
	jp nc,08131h		;a75f
	and b			;a762
	ld d,a			;a763
	jp (hl)			;a764
	inc b			;a765
	djnz la78ch		;a766
	jp (hl)			;a768
	ex af,af'		;a769
	ld (051d2h),a		;a76a
	add a,a			;a76d
	jp nc,004e9h		;a76e
	ld b,b			;a771
	ld d,h			;a772
	jp (hl)			;a773
	ex af,af'		;a774
	pop af			;a775
	ld d,d			;a776
	and d			;a777
	pop de			;a778
	ld sp,0d257h		;a779
	inc hl			;a77c
	ret m			;a77d
	dec d			;a77e
	defb 0ddh,045h ;ld b,ixl	;a77f
	ld b,d			;a781
	jp pe,0d10eh		;a782
	jr nz,$+50		;a785
	ld d,b			;a787
la788h:
	ld (hl),b		;a788
	cp 001h			;a789
	ex de,hl		;a78b
la78ch:
	add a,a			;a78c
	ld h,b			;a78d
	jp (hl)			;a78e
	ex af,af'		;a78f
	ret m			;a790
	dec d			;a791
	jp pe,0f20dh		;a792
	djnz la788h		;a795
la797h:
	ld d,e			;a797
	defb 0edh ;next byte illegal after ed	;a798
	inc b			;a799
	pop de			;a79a
	add a,c			;a79b
	call pe,002eah		;a79c
	add a,b			;a79f
	jp pe,0eb0dh		;a7a0
	add a,a			;a7a3
	ld h,b			;a7a4
	defb 0edh ;next byte illegal after ed	;a7a5
	inc b			;a7a6
	ld sp,0eaech		;a7a7
	ld (bc),a		;a7aa
	jr nc,la797h		;a7ab
	dec c			;a7ad
	ex de,hl		;a7ae
	add a,a			;a7af
	ld h,b			;a7b0
	defb 0edh ;next byte illegal after ed	;a7b1
	inc b			;a7b2
	nop			;a7b3
	ret nz			;a7b4
	jp nc,0eda5h		;a7b5
	ld a,(bc)		;a7b8
	ld d,b			;a7b9
	ld (hl),b		;a7ba
	pop de			;a7bb
	dec sp			;a7bc
	jp nc,03020h		;a7bd
	ld d,b			;a7c0
	ld (hl),b		;a7c1
	add a,c			;a7c2
	ret nz			;a7c3
	ld (0c000h),a		;a7c4
	and a			;a7c7
	jp pe,0d10ch		;a7c8
	ld d,d			;a7cb
	ld (hl),d		;a7cc
	add a,c			;a7cd
	jp pe,la30bh		;a7ce
	jp pe,0ed0dh		;a7d1
	ld a,(bc)		;a7d4
	jp (hl)			;a7d5
	ex af,af'		;a7d6
	pop de			;a7d7
	jr nz,la80ah		;a7d8
	ld d,b			;a7da
	ld (hl),b		;a7db
	cp 001h			;a7dc
	ex de,hl		;a7de
	add a,a			;a7df
	ld h,b			;a7e0
	jp (hl)			;a7e1
	ex af,af'		;a7e2
	ret m			;a7e3
	dec d			;a7e4
	jp pe,0ed0eh		;a7e5
la7e8h:
	inc bc			;a7e8
	jp p,0f110h		;a7e9
	ld d,e			;a7ec
	pop de			;a7ed
	add a,c			;a7ee
	call pe,002eah		;a7ef
	add a,b			;a7f2
	jp pe,0eb0dh		;a7f3
	add a,a			;a7f6
	ld h,b			;a7f7
	ld sp,0eaech		;a7f8
	ld (bc),a		;a7fb
	jr nc,la7e8h		;a7fc
la7feh:
	dec c			;a7fe
	ex de,hl		;a7ff
	add a,a			;a800
	ld h,b			;a801
	nop			;a802
	ret nz			;a803
	jp nc,0eda5h		;a804
	ld b,050h		;a807
	ld (hl),b		;a809
la80ah:
	defb 0edh ;next byte illegal after ed	;a80a
	inc bc			;a80b
	pop de			;a80c
	dec sp			;a80d
	defb 0edh ;next byte illegal after ed	;a80e
	dec b			;a80f
	jp nc,02000h		;a810
	jr nc,la865h		;a813
	defb 0edh ;next byte illegal after ed	;a815
	inc bc			;a816
	ld (hl),c		;a817
la818h:
	ret nz			;a818
	ld (0c000h),a		;a819
	and a			;a81c
	pop de			;a81d
	ld hl,031c0h		;a81e
	ret nz			;a821
	ld d,c			;a822
	ex de,hl		;a823
	add a,a			;a824
	ld (hl),b		;a825
	ld (hl),l		;a826
	call pe,003eah		;a827
	ld (hl),c		;a82a
	cp 001h			;a82b
	ex de,hl		;a82d
	add a,a			;a82e
	ld h,d			;a82f
	jp (hl)			;a830
	ex af,af'		;a831
	jp pe,0ed0bh		;a832
	ex af,af'		;a835
	ret m			;a836
	ld a,(bc)		;a837
	pop de			;a838
	nop			;a839
	jr nz,$+50		;a83a
	jr nz,la7feh		;a83c
	ld bc,0c080h		;a83e
	ld (hl),b		;a841
	ret nz			;a842
	ld d,c			;a843
	jr nc,la818h		;a844
	ld (hl),b		;a846
	add a,b			;a847
	pop de			;a848
	scf			;a849
	jp (hl)			;a84a
	inc b			;a84b
	jr nz,$+50		;a84c
	jp (hl)			;a84e
	ex af,af'		;a84f
	jp nc,08070h		;a850
	pop de			;a853
	jr nc,la8a6h		;a854
	ld (hl),b		;a856
	add a,b			;a857
	ret nc			;a858
	jr nc,$-45		;a859
la85bh:
	ld (hl),c		;a85b
	ret nz			;a85c
	add a,c			;a85d
	ret nz			;a85e
	ret nc			;a85f
	ld sp,071d1h		;a860
	ret nz			;a863
	add a,c			;a864
la865h:
	ret nz			;a865
	ret nc			;a866
	nop			;a867
	jr nc,la8e1h		;a868
	ret m			;a86a
	ld hl,(008eah)		;a86b
	ex de,hl		;a86e
	add hl,bc		;a86f
	djnz la85bh		;a870
	inc b			;a872
	ret nc			;a873
	ld (hl),c		;a874
	ld (hl),c		;a875
	pop de			;a876
	and c			;a877
	ld sp,071d2h		;a878
	out (0a1h),a		;a87b
	ld sp,081d4h		;a87d
	defb 0fdh,045h ;ld b,iyl	;a880
	and a			;a882
	cp 001h			;a883
	ret m			;a885
	dec bc			;a886
	ex de,hl		;a887
	inc h			;a888
	ld d,b			;a889
	jp (hl)			;a88a
	ex af,af'		;a88b
	jp pe,0db0bh		;a88c
	ld (bc),a		;a88f
	jp p,0f116h		;a890
	ld d,(hl)		;a893
	jp nc,010d6h		;a894
	ld bc,0d887h		;a897
	add a,b			;a89a
	ld sp,0d181h		;a89b
	ld bc,0d220h		;a89e
	and a			;a8a1
	jp (hl)			;a8a2
	inc b			;a8a3
	ld b,b			;a8a4
	ld d,h			;a8a5
la8a6h:
	jp (hl)			;a8a6
	ex af,af'		;a8a7
	and d			;a8a8
	pop de			;a8a9
	ld hl,0d237h		;a8aa
	jp (hl)			;a8ad
	inc b			;a8ae
	sub b			;a8af
	and h			;a8b0
	jp (hl)			;a8b1
	ex af,af'		;a8b2
	pop af			;a8b3
	ld b,e			;a8b4
	pop de			;a8b5
	ld (0eb71h),a		;a8b6
	daa			;a8b9
	ld d,b			;a8ba
	xor c			;a8bb
	call pe,001eah		;a8bc
	and c			;a8bf
	ret m			;a8c0
	dec d			;a8c1
	in a,(001h)		;a8c2
	jp nc,001eeh		;a8c4
	ex de,hl		;a8c7
	add a,a			;a8c8
	ld h,b			;a8c9
	defb 0edh ;next byte illegal after ed	;a8ca
	ex af,af'		;a8cb
	jp pe,0a007h		;a8cc
	pop de			;a8cf
	nop			;a8d0
	jr nz,la903h		;a8d1
	cp 001h			;a8d3
	ex de,hl		;a8d5
	add a,e			;a8d6
la8d7h:
	ld h,b			;a8d7
	defb 0edh ;next byte illegal after ed	;a8d8
	inc b			;a8d9
	jp (hl)			;a8da
	ex af,af'		;a8db
	ret m			;a8dc
	dec d			;a8dd
	jp pe,0f208h		;a8de
la8e1h:
	djnz $-13		;a8e1
	ld d,e			;a8e3
	pop de			;a8e4
	ld (0d202h),a		;a8e5
	add a,e			;a8e8
	ex de,hl		;a8e9
	rlca			;a8ea
	jr nz,la8d7h		;a8eb
	rlca			;a8ed
	and l			;a8ee
	ld d,b			;a8ef
	ld (hl),b		;a8f0
	jp pe,0d107h		;a8f1
	dec sp			;a8f4
	jp pe,0d206h		;a8f5
	jr nz,la92ah		;a8f8
	ld d,b			;a8fa
	ld (hl),b		;a8fb
	add a,d			;a8fc
	ld (la701h),a		;a8fd
	pop de			;a900
	ld d,d			;a901
	ld (hl),d		;a902
la903h:
	add a,c			;a903
	jp pe,0a306h		;a904
	jp pe,0e907h		;a907
	ex af,af'		;a90a
	pop de			;a90b
	jr nz,la93eh		;a90c
	cp 001h			;a90e
	ex de,hl		;a910
	add a,e			;a911
la912h:
	ld h,b			;a912
	defb 0edh ;next byte illegal after ed	;a913
	inc b			;a914
	jp (hl)			;a915
	ex af,af'		;a916
	ret m			;a917
	dec d			;a918
	jp pe,0f208h		;a919
	djnz $-13		;a91c
	ld d,e			;a91e
	pop de			;a91f
	ld (0d202h),a		;a920
	add a,c			;a923
	ex de,hl		;a924
	rlca			;a925
	jr nz,la912h		;a926
	rlca			;a928
	and a			;a929
la92ah:
	ld d,b			;a92a
la92bh:
	ld (hl),b		;a92b
	pop de			;a92c
	dec sp			;a92d
	jp nc,02000h		;a92e
la931h:
	jr nc,la983h		;a931
	ld (hl),d		;a933
	ld (la701h),a		;a934
	pop de			;a937
	ld hl,031c0h		;a938
	ret nz			;a93b
	ld d,c			;a93c
	ld (hl),e		;a93d
la93eh:
	call pe,002eah		;a93e
	ld (hl),c		;a941
	cp 001h			;a942
	ex de,hl		;a944
	rlca			;a945
	jr nz,la931h		;a946
	ex af,af'		;a948
	jp pe,0c106h		;a949
	ret m			;a94c
	ld a,(bc)		;a94d
	pop de			;a94e
	nop			;a94f
	jr nz,la982h		;a950
	ld hl,08101h		;a952
	ld (hl),c		;a955
	ld d,c			;a956
	jr nc,la92bh		;a957
	ld (hl),b		;a959
	add a,b			;a95a
	pop de			;a95b
	scf			;a95c
	jp (hl)			;a95d
	inc b			;a95e
	jr nz,la991h		;a95f
	jp (hl)			;a961
	ex af,af'		;a962
	jp nc,08070h		;a963
	pop de			;a966
	jr nc,la9b9h		;a967
	ld (hl),b		;a969
la96ah:
	add a,b			;a96a
	ret nc			;a96b
	jr nc,$-45		;a96c
	ld (hl),d		;a96e
	add a,d			;a96f
	ret nc			;a970
	ld sp,072d1h		;a971
	add a,d			;a974
	ret nc			;a975
	nop			;a976
	jr nc,la9eeh		;a977
	ret m			;a979
	ld hl,(008eah)		;a97a
	ex de,hl		;a97d
	add hl,bc		;a97e
	djnz la96ah		;a97f
	inc b			;a981
la982h:
	ret nc			;a982
la983h:
	ret nz			;a983
	add a,c			;a984
	ld sp,071d1h		;a985
	jp nc,031a1h		;a988
	out (071h),a		;a98b
	call nc,070a1h		;a98d
	rst 28h			;a990
la991h:
	defb 0fdh,083h,0a8h ;illegal sequence	;a991
	ld sp,hl		;a994
	add hl,de		;a995
	xor d			;a996
	ld sp,hl		;a997
	add hl,de		;a998
	xor d			;a999
	cp 004h			;a99a
	jp (hl)			;a99c
	inc b			;a99d
	push af			;a99e
	ld sp,09101h		;a99f
	ld bc,00191h		;a9a2
	ld sp,09101h		;a9a5
	nop			;a9a8
	nop			;a9a9
	ld de,00000h		;a9aa
	sub c			;a9ad
	sub c			;a9ae
	ld sp,09101h		;a9af
	ld bc,00191h		;a9b2
	ld sp,09101h		;a9b5
	nop			;a9b8
la9b9h:
	nop			;a9b9
	ld de,0fb91h		;a9ba
	ld (bc),a		;a9bd
	cp 004h			;a9be
	jp (hl)			;a9c0
	inc b			;a9c1
	ld sp,09101h		;a9c2
	ld bc,00191h		;a9c5
	ld sp,09101h		;a9c8
	nop			;a9cb
	nop			;a9cc
	ld de,00000h		;a9cd
	sub c			;a9d0
	sub c			;a9d1
	ld sp,09101h		;a9d2
	ld bc,00191h		;a9d5
	ld sp,09101h		;a9d8
	nop			;a9db
	nop			;a9dc
	ld de,03191h		;a9dd
	ld bc,00191h		;a9e0
	sub c			;a9e3
	ld bc,00131h		;a9e4
	sub c			;a9e7
	nop			;a9e8
	nop			;a9e9
	ld de,00000h		;a9ea
	sub c			;a9ed
la9eeh:
	sub c			;a9ee
	ld sp,03111h		;a9ef
	ld de,01131h		;a9f2
	ld sp,03131h		;a9f5
	ld sp,010feh		;a9f8
	sub c			;a9fb
	sub c			;a9fc
	push af			;a9fd
	ld sp,hl		;a9fe
	ld a,(0fbaah)		;a9ff
	inc b			;aa02
	push af			;aa03
	ld sp,hl		;aa04
	ld a,(0fbaah)		;aa05
	inc bc			;aa08
	ld sp,03111h		;aa09
	ld de,01131h		;aa0c
	ld sp,03111h		;aa0f
	ld de,010feh		;aa12
	sub e			;aa15
	defb 0fdh,094h ;sub iyh	;aa16
	xor c			;aa18
	cp 004h			;aa19
	jp (hl)			;aa1b
	inc b			;aa1c
	push af			;aa1d
	ld sp,09101h		;aa1e
	ld bc,00191h		;aa21
	ld sp,09101h		;aa24
	nop			;aa27
	nop			;aa28
	ld de,0fb91h		;aa29
	inc bc			;aa2c
	ld sp,09101h		;aa2d
	ld bc,00191h		;aa30
	ld sp,03111h		;aa33
	ld de,03131h		;aa36
	jp m,004feh		;aa39
	jp (hl)			;aa3c
	inc b			;aa3d
	sub c			;aa3e
	ld bc,00031h		;aa3f
	nop			;aa42
	cp 010h			;aa43
	inc hl			;aa45
	cp 004h			;aa46
	sub c			;aa48
	ld bc,00011h		;aa49
	nop			;aa4c
	cp 010h			;aa4d
	sub e			;aa4f
	cp 004h			;aa50
	jp m,lb5f9h		;aa52
	xor d			;aa55
	ld sp,hl		;aa56
	or l			;aa57
	xor d			;aa58
	ld sp,hl		;aa59
	jp c,001aah		;aa5a
	jp nc,0d181h		;aa5d
	ld sp,081d2h		;aa60
	pop de			;aa63
	ld sp,0f9dch		;aa64
	jp c,0d2aah		;aa67
	add a,c			;aa6a
	pop de			;aa6b
	ld bc,0d231h		;aa6c
	and c			;aa6f
	pop de			;aa70
	ld hl,0f9dch		;aa71
	inc l			;aa74
	xor e			;aa75
	jp pe,0d108h		;aa76
	daa			;aa79
	jp nc,0d1a3h		;aa7a
	ld bc,04121h		;aa7d
	ld d,l			;aa80
	jp nc,0d301h		;aa81
	sub c			;aa84
	jp nc,0d321h		;aa85
	sub c			;aa88
	jp nc,02141h		;aa89
	ld d,c			;aa8c
	ld b,c			;aa8d
	ld (hl),c		;aa8e
	ld d,c			;aa8f
	sub c			;aa90
	ld sp,hl		;aa91
	inc l			;aa92
	xor e			;aa93
	jp pe,0d108h		;aa94
	nop			;aa97
	djnz laabfh		;aa98
	jp nc,la0a3h		;aa9a
	or b			;aa9d
	pop de			;aa9e
	dec b			;aa9f
	jp nc,0d393h		;aaa0
	ld sp,07101h		;aaa3
	ld sp,071a1h		;aaa6
laaa9h:
	jp nc,0d301h		;aaa9
	and c			;aaac
	jp nc,00131h		;aaad
	ld (hl),c		;aab0
	call c,053fdh		;aab1
	xor d			;aab4
	cp 001h			;aab5
	jp (hl)			;aab7
	inc b			;aab8
	xor 006h		;aab9
	ex de,hl		;aabb
	add hl,de		;aabc
	jr nz,laaa9h		;aabd
laabfh:
	dec bc			;aabf
laac0h:
	push af			;aac0
	out (021h),a		;aac1
	call nc,0d391h		;aac3
	ld hl,091d4h		;aac6
	out (091h),a		;aac9
	call nc,0d321h		;aacb
	ld hl,0d431h		;aace
	ld sp,031d3h		;aad1
	call nc,07191h		;aad4
	ei			;aad7
	inc b			;aad8
	jp m,001feh		;aad9
	jp (hl)			;aadc
	inc b			;aadd
	pop bc			;aade
	xor 001h		;aadf
	ex de,hl		;aae1
	add hl,bc		;aae2
	djnz laac0h		;aae3
	inc b			;aae5
	jp pe,0d109h		;aae6
	ld hl,02191h		;aae9
	and c			;aaec
	ld hl,02101h		;aaed
	jp nc,0d191h		;aaf0
	ld d,c			;aaf3
	jp nc,0d191h		;aaf4
	ld d,c			;aaf7
	jp nc,08191h		;aaf8
	jp nc,0d151h		;aafb
	ld hl,02191h		;aafe
	and c			;ab01
	ld hl,02101h		;ab02
	jp nc,0d191h		;ab05
	ld d,c			;ab08
	jp nc,0d191h		;ab09
	ld d,c			;ab0c
	jp nc,0d191h		;ab0d
	ld bc,00171h		;ab10
	add a,c			;ab13
	ld bc,001a1h		;ab14
	jp nc,0d181h		;ab17
	ld sp,081d2h		;ab1a
	pop de			;ab1d
	ld sp,081d2h		;ab1e
	pop de			;ab21
	ld d,c			;ab22
	ld sp,001d1h		;ab23
	ld (hl),c		;ab26
	ld bc,00181h		;ab27
	and c			;ab2a
	jp m,001feh		;ab2b
	jp (hl)			;ab2e
	inc b			;ab2f
lab30h:
	pop bc			;ab30
	xor 001h		;ab31
	defb 0ddh,085h ;add a,ixl	;ab33
	ld (004dbh),a		;ab35
	defb 0edh ;next byte illegal after ed	;ab38
	rlca			;ab39
	jp pe,0f208h		;ab3a
	djnz lab30h		;ab3d
	ld b,e			;ab3f
	pop de			;ab40
	nop			;ab41
	djnz $+39		;ab42
	jp nc,0d1a3h		;ab44
	rlca			;ab47
	jp nc,0ea93h		;ab48
	inc b			;ab4b
	ret nc			;ab4c
	ld hl,091d1h		;ab4d
	ld d,c			;ab50
	ld hl,02151h		;ab51
	ld d,c			;ab54
	sub c			;ab55
	ret nc			;ab56
	ld hl,091d1h		;ab57
	ld d,c			;ab5a
	ld hl,0f9fah		;ab5b
	xor l			;ab5e
	xor e			;ab5f
	ld sp,hl		;ab60
	xor l			;ab61
	xor e			;ab62
	ld sp,hl		;ab63
	jp nc,0f8abh		;ab64
	ld d,d			;ab67
	out (001h),a		;ab68
	call nc,07101h		;ab6a
	ld bc,00181h		;ab6d
	ld sp,hl		;ab70
	jp nc,0f8abh		;ab71
	ld h,h			;ab74
	jp pe,0d50eh		;ab75
	add a,c			;ab78
	call nc,08101h		;ab79
	push de			;ab7c
	and c			;ab7d
	call nc,sub_a121h	;ab7e
	push af			;ab81
	ld sp,hl		;ab82
	ld hl,0fbach		;ab83
	ld (bc),a		;ab86
	ld sp,hl		;ab87
	ld hl,0d5ach		;ab88
	and c			;ab8b
	ld d,c			;ab8c
	call nc,05121h		;ab8d
	and c			;ab90
	ld hl,001d4h		;ab91
	push de			;ab94
	ld b,c			;ab95
	ld (hl),c		;ab96
	call nc,04101h		;ab97
	ld (hl),c		;ab9a
	ld bc,la1d5h		;ab9b
	call nc,07131h		;ab9e
laba1h:
	and c			;aba1
	ld (hl),c		;aba2
	ld (hl),c		;aba3
	ld sp,la171h		;aba4
	out (001h),a		;aba7
	ld sp,05dfdh		;aba9
	xor e			;abac
	cp 001h			;abad
	ret m			;abaf
	ld d,d			;abb0
	jp (hl)			;abb1
	inc b			;abb2
	ex de,hl		;abb3
	add hl,sp		;abb4
	jr nc,laba1h		;abb5
	dec c			;abb7
	push af			;abb8
	call nc,0d521h		;abb9
	sub c			;abbc
	call nc,0d521h		;abbd
	sub c			;abc0
	call nc,0d591h		;abc1
labc4h:
	ld hl,021d4h		;abc4
	ld sp,031d5h		;abc7
	call nc,0d531h		;abca
	sub c			;abcd
	ld (hl),c		;abce
	ei			;abcf
	inc b			;abd0
	jp m,001feh		;abd1
	jp (hl)			;abd4
	inc b			;abd5
	ex de,hl		;abd6
	add hl,sp		;abd7
	jr nc,labc4h		;abd8
	dec c			;abda
	ret m			;abdb
	inc d			;abdc
	call nc,09121h		;abdd
	ld hl,021a1h		;abe0
	ret m			;abe3
	ld d,d			;abe4
	out (001h),a		;abe5
	ld hl,021d4h		;abe7
	sub c			;abea
	ld hl,021a1h		;abeb
	out (001h),a		;abee
	call nc,0f8a1h		;abf0
	inc d			;abf3
	ld hl,02191h		;abf4
	and c			;abf7
	ld hl,052f8h		;abf8
	out (001h),a		;abfb
	ld hl,021d4h		;abfd
	sub c			;ac00
	ld hl,021a1h		;ac01
	ret m			;ac04
	inc d			;ac05
	ld bc,00171h		;ac06
	add a,c			;ac09
	ld bc,0f8a1h		;ac0a
	ld d,d			;ac0d
	out (001h),a		;ac0e
	call nc,07101h		;ac10
	ld bc,00181h		;ac13
	and c			;ac16
	add a,c			;ac17
	ret m			;ac18
	inc d			;ac19
	ld bc,00171h		;ac1a
	add a,c			;ac1d
	ld bc,0faa1h		;ac1e
	cp 001h			;ac21
	ret m			;ac23
	ld d,d			;ac24
	jp (hl)			;ac25
	inc b			;ac26
	ex de,hl		;ac27
	ld (hl),d		;ac28
	ld b,h			;ac29
	jp pe,0d50dh		;ac2a
	and c			;ac2d
	ld d,c			;ac2e
	call nc,05121h		;ac2f
	and c			;ac32
	ld hl,001d4h		;ac33
	push de			;ac36
	ld b,c			;ac37
	ld (hl),c		;ac38
	call nc,04101h		;ac39
	ld (hl),c		;ac3c
	ld hl,091d5h		;ac3d
	call nc,05121h		;ac40
	sub c			;ac43
	ld d,c			;ac44
	ld d,c			;ac45
	ld hl,09151h		;ac46
	out (021h),a		;ac49
	ld d,c			;ac4b
	jp m,lbbf9h		;ac4c
	xor h			;ac4f
	ld sp,hl		;ac50
	cp e			;ac51
	xor h			;ac52
	ld sp,hl		;ac53
	sub 0ach		;ac54
	ld bc,081d2h		;ac56
	pop de			;ac59
	ld sp,081d2h		;ac5a
	pop de			;ac5d
	ld sp,081d2h		;ac5e
	ld sp,hl		;ac61
	sub 0ach		;ac62
	ret m			;ac64
	ld (bc),a		;ac65
	jp pe,0eb0eh		;ac66
	add hl,sp		;ac69
	ld d,b			;ac6a
	in a,(001h)		;ac6b
	jp nc,0d181h		;ac6d
	ld bc,0d231h		;ac70
	and c			;ac73
	pop de			;ac74
	ld hl,0dc51h		;ac75
	ld sp,hl		;ac78
	daa			;ac79
	xor l			;ac7a
	pop de			;ac7b
	daa			;ac7c
	jp nc,0d1a3h		;ac7d
	ld bc,04121h		;ac80
	ld d,l			;ac83
	ret m			;ac84
	dec b			;ac85
	jp nc,0d301h		;ac86
	sub c			;ac89
	jp nc,0d321h		;ac8a
	sub c			;ac8d
	jp nc,02141h		;ac8e
	ld d,c			;ac91
	ld b,c			;ac92
	ld (hl),c		;ac93
	ld d,c			;ac94
	sub c			;ac95
	ld (hl),c		;ac96
	ld sp,hl		;ac97
	daa			;ac98
	xor l			;ac99
	pop de			;ac9a
	nop			;ac9b
	djnz $+39		;ac9c
	jp nc,la0a3h		;ac9e
	or b			;aca1
	pop de			;aca2
	dec b			;aca3
	jp nc,0f893h		;aca4
	dec b			;aca7
	out (031h),a		;aca8
	ld bc,03171h		;acaa
	and c			;acad
	ld (hl),c		;acae
	jp nc,0d301h		;acaf
	and c			;acb2
	jp nc,00131h		;acb3
	ld (hl),c		;acb6
	ld sp,04dfdh		;acb7
	xor h			;acba
	cp 001h			;acbb
	ret m			;acbd
	dec bc			;acbe
	jp (hl)			;acbf
	inc b			;acc0
	defb 0ddh,002h,076h ;illegal sequence	;acc1
	jp pe,0f509h		;acc4
	jp nc,02151h		;acc7
	ld (hl),c		;acca
	ld hl,02191h		;accb
	ld d,c			;acce
	inc hl			;accf
	ld hl,09171h		;acd0
	ei			;acd3
	inc b			;acd4
	jp m,001feh		;acd5
	ret m			;acd8
	ld a,(bc)		;acd9
	jp (hl)			;acda
	inc b			;acdb
	defb 0ddh,002h,076h ;illegal sequence	;acdc
	jp pe,0db0ah		;acdf
	ld (bc),a		;ace2
	pop de			;ace3
	ld hl,02191h		;ace4
	and c			;ace7
	ld hl,02101h		;ace8
	jp nc,0d191h		;aceb
	ld d,c			;acee
	jp nc,0d191h		;acef
	ld d,c			;acf2
	jp nc,08191h		;acf3
	jp nc,0d151h		;acf6
	ld hl,02191h		;acf9
	and c			;acfc
	ld hl,02101h		;acfd
	jp nc,0d191h		;ad00
	ld d,c			;ad03
	jp nc,0d191h		;ad04
	ld d,c			;ad07
	jp nc,0d191h		;ad08
	ld bc,00171h		;ad0b
	add a,c			;ad0e
	ld bc,001a1h		;ad0f
	jp nc,0d181h		;ad12
	ld sp,081d2h		;ad15
	pop de			;ad18
	ld sp,081d2h		;ad19
	pop de			;ad1c
	ld d,c			;ad1d
	ld sp,001d1h		;ad1e
	ld (hl),c		;ad21
	ld bc,00181h		;ad22
	and c			;ad25
	jp m,001feh		;ad26
	ret m			;ad29
	ld a,(bc)		;ad2a
	jp (hl)			;ad2b
	inc b			;ad2c
	dec (ix+043h)		;ad2d
	jp pe,0db0dh		;ad30
	ld bc,010f2h		;ad33
	pop af			;ad36
	ld d,e			;ad37
	push af			;ad38
	pop de			;ad39
	nop			;ad3a
	djnz lad62h		;ad3b
	jp nc,0d1a3h		;ad3d
	rlca			;ad40
	jp nc,0f893h		;ad41
	ld hl,(009eah)		;ad44
	defb 0ddh,004h,086h ;illegal sequence	;ad47
	pop de			;ad4a
	ld hl,091d2h		;ad4b
	ld d,c			;ad4e
	ld hl,02151h		;ad4f
	ld d,c			;ad52
	sub c			;ad53
	pop de			;ad54
	ld hl,091d2h		;ad55
	ld d,c			;ad58
	ld hl,00af8h		;ad59
	dec (ix+043h)		;ad5c
	jp pe,0fa0dh		;ad5f
lad62h:
	ld sp,hl		;ad62
	jp nz,0f9adh		;ad63
	jp nz,0f9adh		;ad66
	call m,0e9adh		;ad69
	inc b			;ad6c
	ld (hl),c		;ad6d
	ld (hl),c		;ad6e
	ld (hl),c		;ad6f
	ld (hl),l		;ad70
	ret m			;ad71
	dec c			;ad72
	jp pe,0710ch		;ad73
	ld (hl),c		;ad76
	ld (hl),c		;ad77
	and c			;ad78
	add a,c			;ad79
	ret c			;ad7a
	ld sp,hl		;ad7b
	call m,0e9adh		;ad7c
	inc b			;ad7f
	ld (hl),c		;ad80
	ld (hl),c		;ad81
	ld (hl),l		;ad82
	ret m			;ad83
	ld (bc),a		;ad84
	jp pe,0eb0dh		;ad85
	add hl,hl		;ad88
	ld d,b			;ad89
	jp nc,00101h		;ad8a
	ld bc,02121h		;ad8d
	ld hl,0dcd8h		;ad90
	ld sp,hl		;ad93
	ld h,a			;ad94
	xor (hl)		;ad95
	pop de			;ad96
	ld d,a			;ad97
	inc hl			;ad98
	ld b,c			;ad99
	ld d,c			;ad9a
	ld (hl),c		;ad9b
	sub l			;ad9c
	ret m			;ad9d
	ld d,d			;ad9e
	jp pe,0d10ah		;ad9f
	ld (hl),c		;ada2
	sub c			;ada3
	ld d,c			;ada4
	ld (hl),c		;ada5
	ld b,c			;ada6
	ld d,c			;ada7
	ld hl,00141h		;ada8
	ld hl,la1d1h+1		;adab
	pop de			;adae
	ld bc,067f9h		;adaf
	xor (hl)		;adb2
	pop de			;adb3
	jr nc,ladf6h		;adb4
	ld d,l			;adb6
	inc hl			;adb7
	ld b,a			;adb8
	inc bc			;adb9
	djnz laddch		;adba
	dec (hl)		;adbc
	ld (hl),e		;adbd
	xor e			;adbe
	defb 0fdh,062h ;ld iyh,d	;adbf
ladc1h:
	xor l			;adc1
	cp 001h			;adc2
	ret m			;adc4
	add hl,bc		;adc5
	jp (hl)			;adc6
	inc b			;adc7
	ex de,hl		;adc8
	add a,d			;adc9
	ld b,b			;adca
	jp pe,0f20dh		;adcb
	djnz ladc1h		;adce
	ld h,(hl)		;add0
	defb 0edh ;next byte illegal after ed	;add1
	ld (bc),a		;add2
	jp nc,0ed9bh		;add3
	dec bc			;add6
	jp nc,01000h		;add7
laddah:
	defb 0edh ;next byte illegal after ed	;adda
	ld (bc),a		;addb
laddch:
	add hl,hl		;addc
	ld a,e			;addd
	defb 0edh ;next byte illegal after ed	;adde
	dec bc			;addf
	jp nc,04030h		;ade0
	defb 0edh ;next byte illegal after ed	;ade3
	ld (bc),a		;ade4
	ld e,c			;ade5
	sbc a,e			;ade6
	defb 0edh ;next byte illegal after ed	;ade7
	dec bc			;ade8
	pop de			;ade9
	nop			;adea
	djnz laddah		;adeb
	ld (bc),a		;aded
	add hl,hl		;adee
	jp nc,0edabh		;adef
	dec bc			;adf2
	pop de			;adf3
	djnz lae16h		;adf4
ladf6h:
	defb 0edh ;next byte illegal after ed	;adf6
	ld (bc),a		;adf7
	ld sp,la373h		;adf8
	jp m,001feh		;adfb
	ret m			;adfe
	ld d,d			;adff
	jp (hl)			;ae00
	inc b			;ae01
	ex de,hl		;ae02
	ld b,d			;ae03
	ld b,d			;ae04
	jp pe,0db0bh		;ae05
	ld bc,010f2h		;ae08
	pop af			;ae0b
	ld b,(hl)		;ae0c
	sub 004h		;ae0d
	inc b			;ae0f
	jp (hl)			;ae10
	ld (bc),a		;ae11
	out (070h),a		;ae12
	add a,b			;ae14
	sub c			;ae15
lae16h:
	jp (hl)			;ae16
	inc b			;ae17
	sub c			;ae18
	sub c			;ae19
	sub c			;ae1a
	sub l			;ae1b
	ret m			;ae1c
	dec c			;ae1d
	jp pe,0d20ch		;ae1e
	ld bc,00101h		;ae21
	out (0b1h),a		;ae24
	or c			;ae26
	and c			;ae27
	and c			;ae28
	ret m			;ae29
	ld d,d			;ae2a
	jp pe,0e90bh		;ae2b
	ld (bc),a		;ae2e
	ld (hl),b		;ae2f
	add a,b			;ae30
	sub c			;ae31
	jp (hl)			;ae32
	inc b			;ae33
	sub c			;ae34
	sub c			;ae35
	sub c			;ae36
	sub l			;ae37
	ret m			;ae38
	dec c			;ae39
	jp pe,0d20ch		;ae3a
	ld bc,00101h		;ae3d
	out (0a1h),a		;ae40
	or c			;ae42
	ret m			;ae43
	ld d,d			;ae44
	jp pe,0e90bh		;ae45
	ld (bc),a		;ae48
	ld d,b			;ae49
	ld h,b			;ae4a
	ld (hl),c		;ae4b
	jp (hl)			;ae4c
	inc b			;ae4d
	ld (hl),c		;ae4e
	ld (hl),c		;ae4f
	ld (hl),c		;ae50
	ld (hl),l		;ae51
	ret m			;ae52
	dec c			;ae53
	jp pe,0710ch		;ae54
	ld (hl),c		;ae57
	ld (hl),c		;ae58
	add a,c			;ae59
	add a,c			;ae5a
	and c			;ae5b
	and c			;ae5c
	ret m			;ae5d
	ld d,d			;ae5e
	jp pe,0e90bh		;ae5f
	ld (bc),a		;ae62
	ld d,b			;ae63
	ld h,b			;ae64
	ld (hl),c		;ae65
	jp m,001feh		;ae66
	ret m			;ae69
	ld a,(bc)		;ae6a
	jp (hl)			;ae6b
	inc b			;ae6c
	dec (ix+043h)		;ae6d
	jp pe,0db0dh		;ae70
	ld bc,010f2h		;ae73
	pop af			;ae76
	ld d,e			;ae77
	pop de			;ae78
	jr nc,laebbh		;ae79
	ld d,l			;ae7b
	inc hl			;ae7c
	ld b,a			;ae7d
	inc bc			;ae7e
	jp nc,0d197h		;ae7f
	inc hl			;ae82
	jp nc,0fa9bh		;ae83
	ld sp,hl		;ae86
	rst 18h			;ae87
	xor (hl)		;ae88
	ld sp,hl		;ae89
	rst 18h			;ae8a
	xor (hl)		;ae8b
	ld sp,hl		;ae8c
	inc e			;ae8d
	xor a			;ae8e
	ld bc,00101h		;ae8f
	dec b			;ae92
	ret m			;ae93
	dec c			;ae94
	jp pe,0010ch		;ae95
	ld bc,03101h		;ae98
	ld de,0f9d8h		;ae9b
	inc e			;ae9e
	xor a			;ae9f
	ld bc,00501h		;aea0
	ret m			;aea3
	ld (bc),a		;aea4
	jp pe,0eb0dh		;aea5
	add hl,hl		;aea8
	ld d,b			;aea9
	ld sp,03131h		;aeaa
	ld d,c			;aead
	ld d,c			;aeae
	ld d,c			;aeaf
	ret c			;aeb0
	call c,089f9h		;aeb1
	xor a			;aeb4
	pop de			;aeb5
	ld d,a			;aeb6
	inc hl			;aeb7
	ld b,c			;aeb8
	ld d,c			;aeb9
	ld (hl),c		;aeba
laebbh:
	sub e			;aebb
	ret m			;aebc
	ld d,d			;aebd
	jp nz,006eah		;aebe
	ld (hl),c		;aec1
	sub c			;aec2
	ld d,c			;aec3
	ld (hl),c		;aec4
	ld b,c			;aec5
	ld d,c			;aec6
	ld hl,00141h		;aec7
	ld hl,0a0d2h		;aeca
	ld sp,hl		;aecd
	adc a,c			;aece
	xor a			;aecf
	pop de			;aed0
	jr nc,laf13h		;aed1
	ld d,l			;aed3
	inc hl			;aed4
	ld b,a			;aed5
laed6h:
	inc bc			;aed6
	djnz $+34		;aed7
	dec (hl)		;aed9
	ld (hl),e		;aeda
	xor c			;aedb
	add a,(iy-052h)		;aedc
	cp 001h			;aedf
	ret m			;aee1
	add hl,bc		;aee2
	jp (hl)			;aee3
	inc b			;aee4
	pop bc			;aee5
	xor 001h		;aee6
	ex de,hl		;aee8
	add a,e			;aee9
	jr nz,laed6h		;aeea
	ld a,(bc)		;aeec
	jp p,0f110h		;aeed
	ld h,(hl)		;aef0
	defb 0edh ;next byte illegal after ed	;aef1
	ld (bc),a		;aef2
	jp nc,0ed9bh		;aef3
	add hl,bc		;aef6
	jp nc,01000h		;aef7
laefah:
	defb 0edh ;next byte illegal after ed	;aefa
	ld (bc),a		;aefb
	add hl,hl		;aefc
	ld a,e			;aefd
	defb 0edh ;next byte illegal after ed	;aefe
	add hl,bc		;aeff
	jp nc,04030h		;af00
	defb 0edh ;next byte illegal after ed	;af03
	ld (bc),a		;af04
	ld e,c			;af05
	sbc a,e			;af06
	defb 0edh ;next byte illegal after ed	;af07
	add hl,bc		;af08
	pop de			;af09
	nop			;af0a
	djnz laefah		;af0b
	ld (bc),a		;af0d
	add hl,hl		;af0e
	jp nc,0edabh		;af0f
	add hl,bc		;af12
laf13h:
	pop de			;af13
	djnz $+34		;af14
	defb 0edh ;next byte illegal after ed	;af16
	ld (bc),a		;af17
	ld sp,la173h		;af18
	jp m,001feh		;af1b
	ret m			;af1e
	ld d,d			;af1f
	jp (hl)			;af20
	inc b			;af21
	ex de,hl		;af22
	ld b,d			;af23
	ld b,d			;af24
	jp pe,0db0bh		;af25
	ld bc,010f2h		;af28
	pop af			;af2b
	ld b,(hl)		;af2c
	sub 004h		;af2d
	inc b			;af2f
	jp (hl)			;af30
	ld (bc),a		;af31
	jp nc,01000h		;af32
	ld hl,004e9h		;af35
	ld hl,02121h		;af38
	dec h			;af3b
	ret m			;af3c
	dec c			;af3d
	jp pe,0510ch		;af3e
	ld d,c			;af41
	ld d,c			;af42
	ld b,c			;af43
	ld b,c			;af44
	ld sp,0f831h		;af45
	ld d,d			;af48
	jp pe,0e90bh		;af49
	ld (bc),a		;af4c
	nop			;af4d
	djnz laf71h		;af4e
	jp (hl)			;af50
	inc b			;af51
	ld hl,02121h		;af52
	dec h			;af55
	ret m			;af56
	dec c			;af57
	jp pe,0510ch		;af58
	ld d,c			;af5b
	ld d,c			;af5c
	ld sp,0f841h		;af5d
	ld d,d			;af60
	jp pe,0e90bh		;af61
	ld (bc),a		;af64
	out (0a0h),a		;af65
	or b			;af67
	jp nc,0e901h		;af68
	inc b			;af6b
	ld bc,00101h		;af6c
	dec b			;af6f
	ret m			;af70
laf71h:
	dec c			;af71
	jp pe,0010ch		;af72
	ld bc,01101h		;af75
	ld de,03131h		;af78
	ret m			;af7b
	ld d,d			;af7c
	jp pe,0e90bh		;af7d
	ld (bc),a		;af80
	out (0a0h),a		;af81
	or b			;af83
	jp nc,0e901h		;af84
	inc b			;af87
	jp m,001feh		;af88
laf8bh:
	ret m			;af8b
	ld a,(bc)		;af8c
	jp (hl)			;af8d
	inc b			;af8e
	xor 001h		;af8f
	pop bc			;af91
	defb 0ddh,005h,043h ;illegal sequence	;af92
	jp pe,0f209h		;af95
	djnz laf8bh		;af98
	ld d,e			;af9a
	pop de			;af9b
	jr nc,lafdeh		;af9c
	ld d,l			;af9e
	inc hl			;af9f
	ld b,a			;afa0
	inc bc			;afa1
	jp nc,0d197h		;afa2
	inc hl			;afa5
	jp nc,0fa9bh		;afa6
	cp 004h			;afa9
	ret nc			;afab
	jp (hl)			;afac
	dec b			;afad
	push af			;afae
	sub c			;afaf
	ld bc,00031h		;afb0
	nop			;afb3
	sub c			;afb4
	ld de,09131h		;afb5
	ld bc,00131h		;afb8
	sub c			;afbb
	ld sp,0fb11h		;afbc
	inc bc			;afbf
	sub c			;afc0
	ld bc,00031h		;afc1
	nop			;afc4
	sub c			;afc5
	ld de,03031h		;afc6
	jr nz,$+34		;afc9
	jr nz,$+34		;afcb
	jr nc,$+34		;afcd
	jr nz,lb001h		;afcf
	jr nc,$+50		;afd1
	jr nc,lb005h		;afd3
	jr nc,$-9		;afd5
	cp 004h			;afd7
	ret nc			;afd9
	jp (hl)			;afda
	dec b			;afdb
	push af			;afdc
	sub c			;afdd
lafdeh:
	ld de,00031h		;afde
	nop			;afe1
	sub c			;afe2
	nop			;afe3
	nop			;afe4
	ld sp,007fbh		;afe5
	jr nc,$+34		;afe8
	jr nz,lb00ch		;afea
	jr nz,$+34		;afec
	jr nz,lb020h		;afee
	jr nc,$+50		;aff0
	jr nc,lb024h		;aff2
	jr nc,lb026h		;aff4
	jr nc,lb028h		;aff6
	cp 004h			;aff8
	ret nc			;affa
	jp (hl)			;affb
	dec b			;affc
	push af			;affd
	sub b			;affe
	nop			;afff
	nop			;b000
lb001h:
	nop			;b001
	ld sp,00000h		;b002
lb005h:
	sub c			;b005
	jr nc,lb008h		;b006
lb008h:
	ld de,00090h		;b008
	ei			;b00b
lb00ch:
	inc bc			;b00c
	ld sp,00090h		;b00d
	nop			;b010
	sub b			;b011
	ld sp,00011h		;b012
	nop			;b015
	ld sp,03030h		;b016
	push af			;b019
	sub c			;b01a
	ld de,00031h		;b01b
	nop			;b01e
	sub c			;b01f
lb020h:
	ld de,00031h		;b020
	nop			;b023
lb024h:
	ei			;b024
	inc bc			;b025
lb026h:
	jr nc,$+34		;b026
lb028h:
	jr nz,lb04ah		;b028
	jr nz,lb04ch		;b02a
	jr nz,$+34		;b02c
	jr nc,$+50		;b02e
	jr nc,$+50		;b030
	jr nc,$+50		;b032
	jr nc,lb066h		;b034
	cp 004h			;b036
	ret nc			;b038
	jp (hl)			;b039
	dec b			;b03a
	push af			;b03b
	sub b			;b03c
	nop			;b03d
	sub b			;b03e
	sub b			;b03f
	ld sp,00000h		;b040
	sub c			;b043
	ld sp,09031h		;b044
	ld de,03190h		;b047
lb04ah:
	nop			;b04a
	nop			;b04b
lb04ch:
	sub c			;b04c
	ld sp,0fb31h		;b04d
	inc bc			;b050
	sub c			;b051
	ld de,00031h		;b052
	nop			;b055
	sub c			;b056
	ld sp,09131h		;b057
	ld de,01191h		;b05a
	jr nc,lb08fh		;b05d
	jr nc,lb091h		;b05f
	jr nc,lb093h		;b061
	defb 0fdh,0a9h,0afh ;illegal sequence	;b063
lb066h:
	cp 001h			;b066
	jp (hl)			;b068
	ld a,(bc)		;b069
	pop af			;b06a
	ld d,h			;b06b
	jp p,0eb20h		;b06c
	add a,c			;b06f
	djnz $-20		;b070
	ex af,af'		;b072
	sub 003h		;b073
	cp e			;b075
	jp nc,0ea9dh		;b076
	rlca			;b079
	sbc a,l			;b07a
	ret c			;b07b
	cp 001h			;b07c
	ex de,hl		;b07e
	add a,d			;b07f
lb080h:
	inc hl			;b080
	defb 0edh ;next byte illegal after ed	;b081
	inc b			;b082
	jp (hl)			;b083
	dec b			;b084
	jp pe,0f508h		;b085
	jp nc,0d190h		;b088
	jr nz,$+66		;b08b
	ld d,b			;b08d
	sub b			;b08e
lb08fh:
	ld d,b			;b08f
lb090h:
	ld b,b			;b090
lb091h:
	ei			;b091
	inc b			;b092
lb093h:
	jp pe,0f505h		;b093
	jp nc,0d190h		;b096
	jr nz,$+66		;b099
	ld d,b			;b09b
	sub b			;b09c
	ld d,b			;b09d
	ld b,b			;b09e
	ei			;b09f
lb0a0h:
	ld (bc),a		;b0a0
	jp pe,0d205h		;b0a1
	sub b			;b0a4
	pop de			;b0a5
	jr nz,lb0e8h		;b0a6
	ld d,b			;b0a8
	sub b			;b0a9
	ld d,b			;b0aa
lb0abh:
	ld b,b			;b0ab
	jp pe,0d206h		;b0ac
	sub b			;b0af
	pop de			;b0b0
	jr nz,lb0f3h		;b0b1
	ld d,b			;b0b3
	sub b			;b0b4
	ld d,b			;b0b5
	ld b,b			;b0b6
	cp 001h			;b0b7
	jp (hl)			;b0b9
	dec b			;b0ba
	xor 006h		;b0bb
	ex de,hl		;b0bd
	rla			;b0be
	djnz lb0abh		;b0bf
	ld a,(bc)		;b0c1
	push af			;b0c2
	call nc,0d321h		;b0c3
	ld hl,021d4h		;b0c6
	out (021h),a		;b0c9
	call nc,05121h		;b0cb
	ld d,c			;b0ce
	ei			;b0cf
	inc b			;b0d0
	push af			;b0d1
	call nc,0d321h		;b0d2
	ld hl,021d4h		;b0d5
	out (021h),a		;b0d8
	call nc,05121h		;b0da
	ld d,c			;b0dd
	ei			;b0de
	inc bc			;b0df
	call nc,0d321h		;b0e0
	ld hl,021d4h		;b0e3
	out (021h),a		;b0e6
lb0e8h:
	call nc,0d390h		;b0e8
	djnz $+66		;b0eb
	ld (hl),b		;b0ed
	djnz $+66		;b0ee
	ld (hl),b		;b0f0
lb0f1h:
	sub b			;b0f1
	rst 28h			;b0f2
lb0f3h:
	cp 001h			;b0f3
	jp (hl)			;b0f5
	dec b			;b0f6
	jp pe,0ed0bh		;b0f7
	add hl,bc		;b0fa
	ex de,hl		;b0fb
	add a,(hl)		;b0fc
	jr nz,lb0f1h		;b0fd
	dec bc			;b0ff
	pop af			;b100
lb101h:
	ld b,h			;b101
	jp nc,02f5fh		;b102
	ld c,a			;b105
	rrca			;b106
	cpl			;b107
	cpl			;b108
	cpl			;b109
	cpl			;b10a
	cp 001h			;b10b
	jp pe,0eb0ah		;b10d
	rla			;b110
	djnz lb101h		;b111
	ld b,0e9h		;b113
	dec b			;b115
	push af			;b116
	call nc,02121h		;b117
	ld hl,sub_a121h		;b11a
	out (001h),a		;b11d
	ld hl,003fbh		;b11f
	call nc,sub_a1a1h	;b122
	and c			;b125
	and c			;b126
	and c			;b127
	and c			;b128
	and c			;b129
	push af			;b12a
	call nc,02121h		;b12b
	ld hl,0d421h		;b12e
	and c			;b131
	out (001h),a		;b132
	ld hl,002fbh		;b134
	push af			;b137
	call nc,0d391h		;b138
	sub c			;b13b
	call nc,0d391h		;b13c
	sub c			;b13f
	call nc,09191h		;b140
	sub c			;b143
	ei			;b144
	ld (bc),a		;b145
	rst 28h			;b146
	ld h,(iy-050h)		;b147
	cp 001h			;b14a
	ret m			;b14c
	jr z,$-20		;b14d
	ld a,(bc)		;b14f
	ex de,hl		;b150
	ld b,d			;b151
	ld (hl),b		;b152
	jp (hl)			;b153
	dec b			;b154
	push af			;b155
	push de			;b156
	ld hl,021d4h		;b157
	push de			;b15a
	ld hl,021d4h		;b15b
	push de			;b15e
	ld hl,021d4h		;b15f
	ld hl,004fbh		;b162
	push af			;b165
	push de			;b166
	ld hl,021d4h		;b167
	push de			;b16a
	ld hl,021d4h		;b16b
	push de			;b16e
	ld hl,021d4h		;b16f
	ld hl,003fbh		;b172
	push de			;b175
lb176h:
	ld hl,021d4h		;b176
	push de			;b179
	ld hl,021d4h		;b17a
	ret m			;b17d
	ld h,h			;b17e
	push de			;b17f
	ld (hl),b		;b180
	sub b			;b181
	call nc,04010h		;b182
	ld (hl),b		;b185
	sub b			;b186
	cp 001h			;b187
	ret m			;b189
	jr z,lb176h		;b18a
	dec bc			;b18c
	ex de,hl		;b18d
	ld b,d			;b18e
	ld (hl),b		;b18f
	jp (hl)			;b190
	dec b			;b191
	push af			;b192
	push de			;b193
	ld hl,021d4h		;b194
	push de			;b197
	ld hl,021d4h		;b198
	push de			;b19b
	ld hl,05151h		;b19c
	ei			;b19f
	inc b			;b1a0
	ret m			;b1a1
	jr z,$-9		;b1a2
	push de			;b1a4
	ld hl,021d4h		;b1a5
	push de			;b1a8
	ld hl,021d4h		;b1a9
	push de			;b1ac
	ld hl,05151h		;b1ad
	ei			;b1b0
	inc bc			;b1b1
	push de			;b1b2
	ld hl,021d4h		;b1b3
	push de			;b1b6
	ld hl,021d4h		;b1b7
	ret m			;b1ba
	ld h,h			;b1bb
	push de			;b1bc
	sub b			;b1bd
	call nc,04010h		;b1be
	ld (hl),b		;b1c1
	djnz lb204h		;b1c2
	ld (hl),b		;b1c4
	sub b			;b1c5
	cp 001h			;b1c6
	ret m			;b1c8
	jr z,$-20		;b1c9
	ld a,(bc)		;b1cb
	ex de,hl		;b1cc
	ld b,d			;b1cd
	ld (hl),b		;b1ce
	jp (hl)			;b1cf
	dec b			;b1d0
lb1d1h:
	push af			;b1d1
lb1d2h:
	push de			;b1d2
	and c			;b1d3
lb1d4h:
	call nc,0fba1h		;b1d4
	ex af,af'		;b1d7
	push af			;b1d8
	call nc,0d301h		;b1d9
	ld bc,008fbh		;b1dc
	push af			;b1df
	push de			;b1e0
	or c			;b1e1
	call nc,0d5b1h		;b1e2
	or c			;b1e5
	call nc,0d5b1h		;b1e6
	or c			;b1e9
	call nc,0d5b1h		;b1ea
	or c			;b1ed
	call nc,0fbb1h		;b1ee
	ld (bc),a		;b1f1
	push af			;b1f2
	push de			;b1f3
lb1f4h:
	and c			;b1f4
	call nc,0d5a1h		;b1f5
	and c			;b1f8
	call nc,0d4a1h		;b1f9
	ld hl,la1d5h		;b1fc
	call nc,0d501h		;b1ff
	and c			;b202
	ei			;b203
lb204h:
	ld (bc),a		;b204
	cp 001h			;b205
	ret m			;b207
	jr z,lb1f4h		;b208
	ld a,(bc)		;b20a
	ex de,hl		;b20b
	ld b,c			;b20c
	add a,b			;b20d
	jp (hl)			;b20e
	dec b			;b20f
	push af			;b210
	push de			;b211
	ld hl,02121h		;b212
	ld hl,0d4a1h		;b215
	ld bc,0fb21h		;b218
	inc bc			;b21b
	push de			;b21c
	and c			;b21d
	and c			;b21e
	and c			;b21f
	and c			;b220
	and c			;b221
	and c			;b222
	and c			;b223
	push af			;b224
	push de			;b225
	ld hl,02121h		;b226
	ld hl,la1d5h		;b229
	call nc,02101h		;b22c
	ei			;b22f
	ld (bc),a		;b230
	push af			;b231
	push de			;b232
	sub c			;b233
	call nc,0d591h		;b234
	sub c			;b237
	call nc,0d591h		;b238
	sub c			;b23b
	sub c			;b23c
	sub c			;b23d
	ei			;b23e
	ld (bc),a		;b23f
	defb 0fdh,04ah,0b1h ;illegal sequence	;b240
	cp 001h			;b243
	ret m			;b245
	add a,l			;b246
	jp nz,00ae9h		;b247
	xor 008h		;b24a
	jp pe,0ec06h		;b24c
	call nc,02d2dh		;b24f
	rst 28h			;b252
	cp 001h			;b253
	ret m			;b255
	dec b			;b256
	jp (hl)			;b257
	dec b			;b258
	jp pe,0eb07h		;b259
	ld de,0db60h		;b25c
	ld (bc),a		;b25f
	pop de			;b260
	jr nz,lb2a3h		;b261
	ld d,b			;b263
	sub b			;b264
	jp pe,02006h		;b265
	ld b,b			;b268
	ld d,b			;b269
	sub b			;b26a
	jp pe,02005h		;b26b
	ld b,b			;b26e
	ld d,b			;b26f
	sub b			;b270
	jp pe,02004h		;b271
	ld b,b			;b274
	ld d,b			;b275
	sub b			;b276
	jp pe,02003h		;b277
	ld b,b			;b27a
	ld d,b			;b27b
lb27ch:
	sub b			;b27c
	jp pe,02002h		;b27d
	ld b,b			;b280
lb281h:
	ld d,b			;b281
	sub b			;b282
	jp pe,02001h		;b283
	ld b,b			;b286
	ld d,b			;b287
	sub b			;b288
	jp pe,0d107h		;b289
lb28ch:
	ld b,b			;b28c
	ld d,b			;b28d
	sub b			;b28e
	ret nc			;b28f
	jr nz,lb27ch		;b290
	ld b,0d1h		;b292
lb294h:
	ld b,b			;b294
	ld d,b			;b295
	sub b			;b296
	ret nc			;b297
	jr nz,$-20		;b298
	dec b			;b29a
	pop de			;b29b
lb29ch:
	ld b,b			;b29c
	ld d,b			;b29d
lb29eh:
	sub b			;b29e
	ret nc			;b29f
	jr nz,lb28ch		;b2a0
	inc b			;b2a2
lb2a3h:
	pop de			;b2a3
lb2a4h:
	ld b,b			;b2a4
	ld d,b			;b2a5
	sub b			;b2a6
	ret nc			;b2a7
	jr nz,lb294h		;b2a8
	inc bc			;b2aa
	pop de			;b2ab
	ld b,b			;b2ac
	ld d,b			;b2ad
	sub b			;b2ae
	ret nc			;b2af
	jr nz,lb29ch		;b2b0
	ld (bc),a		;b2b2
	pop de			;b2b3
	ld b,b			;b2b4
	ld d,b			;b2b5
	sub b			;b2b6
	ret nc			;b2b7
	jr nz,lb2a4h		;b2b8
	ld bc,040d1h		;b2ba
	ld d,b			;b2bd
	sub b			;b2be
	ret nc			;b2bf
	jr nz,lb29eh		;b2c0
	cp 001h			;b2c2
	ret m			;b2c4
	dec c			;b2c5
	jp pe,0eb0ah		;b2c6
	ld (hl),l		;b2c9
	ld d,b			;b2ca
	jp (hl)			;b2cb
	dec b			;b2cc
	jp p,0f110h		;b2cd
	ld d,l			;b2d0
	out (0f5h),a		;b2d1
	sub b			;b2d3
	ld d,b			;b2d4
	jr nz,$-110		;b2d5
	ld d,b			;b2d7
	jr nz,lb32ah		;b2d8
	ei			;b2da
	inc b			;b2db
	push af			;b2dc
	and b			;b2dd
	ld d,b			;b2de
	jr nz,lb281h		;b2df
	ld d,b			;b2e1
	jr nz,lb334h		;b2e2
	ei			;b2e4
	ld (bc),a		;b2e5
	push af			;b2e6
	jp nc,0d300h		;b2e7
	ld (hl),b		;b2ea
	ld b,b			;b2eb
	jp nc,0d300h		;b2ec
	ld (hl),b		;b2ef
	ld b,b			;b2f0
	ld (hl),b		;b2f1
	ei			;b2f2
	ld (bc),a		;b2f3
	out (0f5h),a		;b2f4
	sub b			;b2f6
	ld d,b			;b2f7
	jr nz,$-110		;b2f8
	ld d,b			;b2fa
	jr nz,$+82		;b2fb
	ei			;b2fd
	inc b			;b2fe
	push af			;b2ff
	and b			;b300
	ld d,b			;b301
	jr nz,lb2a4h		;b302
	ld d,b			;b304
	jr nz,lb357h		;b305
	ei			;b307
	ld (bc),a		;b308
	push af			;b309
	jp nc,0d300h		;b30a
	ld (hl),b		;b30d
	ld b,b			;b30e
	jp nc,0d300h		;b30f
	ld (hl),b		;b312
	ld b,b			;b313
	jp nc,0d300h		;b314
	ld b,b			;b317
	ei			;b318
	ld (bc),a		;b319
	cp 001h			;b31a
	ret m			;b31c
	dec c			;b31d
	jp pe,0eb0ah		;b31e
	ld (hl),l		;b321
	ld d,b			;b322
	jp (hl)			;b323
	dec b			;b324
	jp p,0f110h		;b325
	ld d,l			;b328
	push af			;b329
lb32ah:
	out (0a0h),a		;b32a
	jp nc,05020h		;b32c
	out (0a0h),a		;b32f
	jp nc,05020h		;b331
lb334h:
	and b			;b334
	jr nz,$-3		;b335
	inc b			;b337
	push af			;b338
	out (070h),a		;b339
	jp nc,00040h		;b33b
	out (070h),a		;b33e
	jp nc,00040h		;b340
	ld (hl),b		;b343
	nop			;b344
	ei			;b345
	inc b			;b346
	push af			;b347
	out (050h),a		;b348
	or b			;b34a
	jp nc,0d320h		;b34b
	ld d,b			;b34e
	or b			;b34f
lb350h:
	jp nc,05020h		;b350
	jr nz,lb350h		;b353
	inc b			;b355
	push af			;b356
lb357h:
	out (050h),a		;b357
	and b			;b359
	jp nc,0d320h		;b35a
	ld d,b			;b35d
	and b			;b35e
lb35fh:
	jp nc,05020h		;b35f
	jr nz,lb35fh		;b362
	inc b			;b364
	cp 001h			;b365
	jp (hl)			;b367
	ld a,(bc)		;b368
	xor 008h		;b369
	call pe,005eah		;b36b
	ret m			;b36e
	add a,b			;b36f
	jp nz,02ad4h		;b370
	jp (hl)			;b373
	dec b			;b374
	ret m			;b375
	jr z,lb3e9h		;b376
	ld d,c			;b378
	ld b,c			;b379
	jp (hl)			;b37a
	ld a,(bc)		;b37b
	ret m			;b37c
	add a,b			;b37d
	pop bc			;b37e
	call nc,0d42dh		;b37f
	ld hl,(005e9h)		;b382
	ret m			;b385
	jr z,lb3f9h		;b386
	ld d,c			;b388
	ld b,c			;b389
	ret m			;b38a
	add a,b			;b38b
	pop bc			;b38c
	jp (hl)			;b38d
	ld a,(bc)		;b38e
	call nc,0ef9dh		;b38f
	defb 0fdh,043h,0b2h ;illegal sequence	;b392
lb395h:
	cp 001h			;b395
	ret m			;b397
	ld a,(bc)		;b398
	jp (hl)			;b399
	dec b			;b39a
	jp pe,0db0eh		;b39b
	ld (bc),a		;b39e
	ex de,hl		;b39f
	add hl,sp		;b3a0
	jr nz,lb395h		;b3a1
	dec bc			;b3a3
	pop af			;b3a4
	ld b,h			;b3a5
	jp nc,0eb53h		;b3a6
	add hl,de		;b3a9
	jr nc,$-20		;b3aa
	inc c			;b3ac
	out (053h),a		;b3ad
	ld (hl),l		;b3af
	jp nc,0d373h		;b3b0
	ld (hl),e		;b3b3
	sub l			;b3b4
lb3b5h:
	jp nc,0d353h		;b3b5
	ld d,e			;b3b8
	and l			;b3b9
	jp nc,0d3a3h		;b3ba
	and e			;b3bd
	jp nc,0d225h		;b3be
	ld d,e			;b3c1
	out (053h),a		;b3c2
	ld (hl),l		;b3c4
	jp nc,0d373h		;b3c5
	ld (hl),e		;b3c8
	sub l			;b3c9
	jp nc,0d353h		;b3ca
	ld d,e			;b3cd
	and l			;b3ce
	jp nc,0d3a3h		;b3cf
	sub e			;b3d2
lb3d3h:
	jp nc,0fe25h		;b3d3
	ld bc,00bf8h		;b3d6
	jp (hl)			;b3d9
	dec b			;b3da
	jp pe,0eb0ah		;b3db
	add hl,de		;b3de
	jr nz,lb3d3h		;b3df
	dec bc			;b3e1
	pop af			;b3e2
	ld b,h			;b3e3
	jp nc,0d353h		;b3e4
	ld d,e			;b3e7
	ld (hl),e		;b3e8
lb3e9h:
	sub c			;b3e9
	jp nc,0d373h		;b3ea
	ld (hl),e		;b3ed
	sub l			;b3ee
	jp nc,0d353h		;b3ef
	ld d,e			;b3f2
	and e			;b3f3
	jp nc,04321h		;b3f4
	out (093h),a		;b3f7
lb3f9h:
	jp nc,05305h		;b3f9
	out (053h),a		;b3fc
	ld (hl),e		;b3fe
	sub c			;b3ff
	jp nc,0d373h		;b400
	ld (hl),e		;b403
	sub l			;b404
	jp nc,0d353h		;b405
	ld d,e			;b408
	and e			;b409
	jp nc,04321h		;b40a
	out (093h),a		;b40d
	jp pe,0d209h		;b40f
lb412h:
	ld b,a			;b412
	cp 001h			;b413
	ret m			;b415
	ld (bc),a		;b416
	jp (hl)			;b417
	dec b			;b418
	jp pe,0eb0dh		;b419
	ld d,a			;b41c
	jr nz,$-12		;b41d
	djnz lb412h		;b41f
	ld d,e			;b421
	jp nc,02252h		;b422
	ld d,c			;b425
	and d			;b426
	pop de			;b427
lb428h:
	ld (02f51h),hl		;b428
	ld (bc),a		;b42b
lb42ch:
	jp nc,0d172h		;b42c
	ld bc,07f47h		;b42f
	jp nc,075b5h		;b432
	pop de			;b435
	inc hl			;b436
	pop de			;b437
	ld (hl),l		;b438
	dec h			;b439
	ld (hl),e		;b43a
	ld e,a			;b43b
	ret m			;b43c
	dec e			;b43d
	ex de,hl		;b43e
	ld d,(hl)		;b43f
	djnz lb42ch		;b440
	ex af,af'		;b442
	pop de			;b443
	and b			;b444
	ld d,b			;b445
	jr nz,$-44		;b446
	and b			;b448
	ld d,b			;b449
	jr nz,$-44		;b44a
	and b			;b44c
	ld d,b			;b44d
	jr nz,$-43		;b44e
	and b			;b450
	ld d,b			;b451
	jr nz,lb428h		;b452
	and b			;b454
	ld d,b			;b455
	jr nz,$-41		;b456
	and b			;b458
	cp 001h			;b459
	ret m			;b45b
	dec bc			;b45c
	jp (hl)			;b45d
	dec b			;b45e
	jp pe,0eb0bh		;b45f
	ld b,h			;b462
	ld (hl),b		;b463
	in a,(002h)		;b464
	jp p,0f108h		;b466
	ld d,d			;b469
	jp nc,07323h		;b46a
	ld d,l			;b46d
	ld d,c			;b46e
	pop bc			;b46f
	ld d,e			;b470
	ld d,l			;b471
	inc hl			;b472
	ld (hl),e		;b473
	ld d,l			;b474
	call pe,006eah		;b475
	jr nc,lb4bah		;b478
	ld d,l			;b47a
	ex de,hl		;b47b
lb47ch:
	ld b,h			;b47c
	ld (hl),b		;b47d
	jp pe,la50bh		;b47e
	jp nc,07323h		;b481
	ld d,l			;b484
	ld d,c			;b485
	pop bc			;b486
	ld d,e			;b487
	ld d,l			;b488
	ld b,e			;b489
	sub e			;b48a
	sub l			;b48b
	ret m			;b48c
	dec d			;b48d
	ex de,hl		;b48e
	ld d,a			;b48f
	jr nz,lb47ch		;b490
	ex af,af'		;b492
	call nc,0d390h		;b493
	djnz $+66		;b496
	ld (hl),b		;b498
	sub b			;b499
	jp nc,04010h		;b49a
	ld (hl),b		;b49d
	sub b			;b49e
	pop de			;b49f
	djnz $+66		;b4a0
	ld (hl),b		;b4a2
	sub b			;b4a3
	ret nc			;b4a4
	nop			;b4a5
	defb 0fdh,095h ;sub iyl	;b4a6
	or e			;b4a8
lb4a9h:
	cp 001h			;b4a9
	ret m			;b4ab
	ld a,(bc)		;b4ac
	jp (hl)			;b4ad
	dec b			;b4ae
	jp pe,0db0eh		;b4af
	ld (bc),a		;b4b2
	ex de,hl		;b4b3
	add hl,sp		;b4b4
	jr nz,lb4a9h		;b4b5
	dec bc			;b4b7
	pop af			;b4b8
	ld b,h			;b4b9
lb4bah:
	jp nc,0ea93h		;b4ba
	dec bc			;b4bd
	out (093h),a		;b4be
	or l			;b4c0
	jp nc,0d3b3h		;b4c1
	or e			;b4c4
	jp nc,0d205h		;b4c5
	and e			;b4c8
	out (0a3h),a		;b4c9
	jp nc,0d125h		;b4cb
	inc hl			;b4ce
	jp nc,05523h		;b4cf
	jp nc,0d393h		;b4d2
	sub e			;b4d5
	or l			;b4d6
	jp nc,0d3b3h		;b4d7
	or e			;b4da
	jp nc,0d205h		;b4db
	and e			;b4de
	out (0a3h),a		;b4df
	jp nc,0d125h		;b4e1
	inc hl			;b4e4
	jp nc,05523h		;b4e5
	cp 001h			;b4e8
	ret m			;b4ea
	dec bc			;b4eb
	jp (hl)			;b4ec
	dec b			;b4ed
	jp pe,0eb0ah		;b4ee
	add hl,de		;b4f1
	jr nz,$-12		;b4f2
	dec bc			;b4f4
	pop af			;b4f5
	ld b,h			;b4f6
	jp nc,0d393h		;b4f7
	sub e			;b4fa
	or e			;b4fb
	jp nc,0d201h		;b4fc
	or e			;b4ff
	out (0b3h),a		;b500
	jp nc,0d205h		;b502
	and e			;b505
	out (0a3h),a		;b506
	jp nc,0d323h		;b508
	and c			;b50b
	jp nc,0d303h		;b50c
	ld d,e			;b50f
	sub l			;b510
	jp nc,0d393h		;b511
	sub e			;b514
	or e			;b515
	jp nc,0d221h		;b516
	or e			;b519
	out (0b3h),a		;b51a
	jp nc,0d205h		;b51c
	and e			;b51f
	out (0a3h),a		;b520
	jp nc,0d323h		;b522
	and c			;b525
	jp nc,0d303h		;b526
	ld d,e			;b529
	jp pe,00709h		;b52a
lb52dh:
	cp 001h			;b52d
lb52fh:
	ret m			;b52f
	ld (bc),a		;b530
	jp (hl)			;b531
	dec b			;b532
	xor 001h		;b533
	jp pe,0eb0bh		;b535
	ld d,a			;b538
	jr nz,lb52dh		;b539
	djnz $-13		;b53b
	ld d,h			;b53d
	jp nc,0d322h		;b53e
	and d			;b541
	jp nc,05221h		;b542
	and d			;b545
	jp nc,0eb21h		;b546
	ld d,l			;b549
	jr nc,$-20		;b54a
	inc c			;b54c
	out (025h),a		;b54d
	ld b,e			;b54f
lb550h:
	ld d,l			;b550
	ld b,d			;b551
	ld (bc),a		;b552
	ld b,c			;b553
	jp nc,0ea07h		;b554
	dec bc			;b557
	ex de,hl		;b558
	ld d,a			;b559
	jr nz,lb52fh		;b55a
	ld (hl),d		;b55c
	ld b,d			;b55d
	ld (hl),c		;b55e
	jp nc,0d207h		;b55f
	ld (hl),l		;b562
	dec h			;b563
	or e			;b564
	pop de			;b565
	dec h			;b566
	jp nc,lb3b5h		;b567
	xor a			;b56a
	ret m			;b56b
	dec e			;b56c
	jp pe,0c105h		;b56d
	pop de			;b570
	and b			;b571
	ld d,b			;b572
	jr nz,$-44		;b573
	and b			;b575
	ld d,b			;b576
	jr nz,$-44		;b577
	and b			;b579
	ld d,b			;b57a
	jr nz,lb550h		;b57b
	and b			;b57d
	ld d,b			;b57e
	jr nz,$-42		;b57f
	and b			;b581
	ld d,b			;b582
	rst 28h			;b583
	cp 001h			;b584
	ret m			;b586
	dec bc			;b587
	jp (hl)			;b588
	dec b			;b589
	jp pe,0db0bh		;b58a
	ld (bc),a		;b58d
	ex de,hl		;b58e
	ld b,h			;b58f
	ld (hl),b		;b590
	jp p,0f108h		;b591
	ld d,d			;b594
lb595h:
	out (093h),a		;b595
	jp nc,0a5b3h		;b597
	and c			;b59a
	pop bc			;b59b
	and e			;b59c
	sub l			;b59d
	out (093h),a		;b59e
	jp nc,0a5b3h		;b5a0
	call pe,005eah		;b5a3
	add a,b			;b5a6
	sub b			;b5a7
	and l			;b5a8
	jp pe,0eb0bh		;b5a9
	ld b,h			;b5ac
	ld (hl),b		;b5ad
	pop de			;b5ae
lb5afh:
	dec h			;b5af
	out (093h),a		;b5b0
	jp nc,0a5b3h		;b5b2
	and c			;b5b5
	pop bc			;b5b6
	and e			;b5b7
	sub l			;b5b8
	jp nc,0d193h		;b5b9
	inc bc			;b5bc
	ld b,l			;b5bd
	ret m			;b5be
	dec d			;b5bf
	pop bc			;b5c0
	ex de,hl		;b5c1
	daa			;b5c2
	jr nz,lb5afh		;b5c3
	ld a,(bc)		;b5c5
	call nc,0d390h		;b5c6
	djnz lb60bh		;b5c9
	ld (hl),b		;b5cb
	sub b			;b5cc
	jp nc,04010h		;b5cd
	ld (hl),b		;b5d0
	sub b			;b5d1
	pop de			;b5d2
	djnz lb615h		;b5d3
	ld (hl),b		;b5d5
	defb 0fdh,0a9h,0b4h ;illegal sequence	;b5d6
	cp 004h			;b5d9
	jp (hl)			;b5db
	ld b,0d4h		;b5dc
	sub a			;b5de
	sub a			;b5df
lb5e0h:
	sub a			;b5e0
	sub a			;b5e1
	sub a			;b5e2
	sub a			;b5e3
	cp 001h			;b5e4
	rst 8			;b5e6
	jp nz,0feffh		;b5e7
	ld bc,006e9h		;b5ea
	jp 004e9h		;b5ed
	xor 001h		;b5f0
	ex de,hl		;b5f2
	add a,a			;b5f3
	djnz lb5e0h		;b5f4
	ld b,0edh		;b5f6
	inc b			;b5f8
lb5f9h:
	out (071h),a		;b5f9
	jp nc,00121h		;b5fb
	ld (hl),c		;b5fe
	ld hl,021d1h		;b5ff
	out (061h),a		;b602
	jp nc,0d311h		;b604
	or c			;b607
	jp nc,01161h		;b608
lb60bh:
	ret nc			;b60b
	ld de,011d1h		;b60c
	or c			;b60f
	ret nc			;b610
	ld de,0b161h		;b611
	ret nc			;b614
lb615h:
	ld de,01161h		;b615
	pop de			;b618
	or c			;b619
	ret nc			;b61a
	ld h,c			;b61b
	ld de,lb1d1h		;b61c
	push af			;b61f
	ret nc			;b620
	ld d,c			;b621
	ld bc,la1d1h		;b622
	ei			;b625
	inc b			;b626
	pop af			;b627
	ld d,h			;b628
	jp p,0e90ah		;b629
lb62ch:
	ld b,0d1h		;b62c
	sbc a,e			;b62e
	call pe,001eah		;b62f
	di			;b632
	sub d			;b633
	rst 38h			;b634
	cp 001h			;b635
	jp (hl)			;b637
	ld b,0c1h		;b638
	jp (hl)			;b63a
	inc b			;b63b
	xor 001h		;b63c
	ex de,hl		;b63e
	add a,a			;b63f
	djnz lb62ch		;b640
	ex af,af'		;b642
	defb 0edh ;next byte illegal after ed	;b643
	dec b			;b644
	out (071h),a		;b645
	jp nc,00121h		;b647
	ld (hl),c		;b64a
	ld hl,021d1h		;b64b
	out (061h),a		;b64e
	jp nc,0d311h		;b650
	or c			;b653
	jp nc,01161h		;b654
	ret nc			;b657
	ld de,011d1h		;b658
	or c			;b65b
	ret nc			;b65c
	ld de,0b161h		;b65d
	ret nc			;b660
	ld de,01161h		;b661
	pop de			;b664
	or c			;b665
	ret nc			;b666
	ld h,c			;b667
	ld de,lb1d1h		;b668
	push af			;b66b
	ret nc			;b66c
	ld d,c			;b66d
	ld bc,la1d1h		;b66e
	ei			;b671
	inc b			;b672
	jp (hl)			;b673
	ld b,0f1h		;b674
	ld b,e			;b676
	jp p,0d10ah		;b677
	sbc a,l			;b67a
	call pe,001eah		;b67b
	di			;b67e
	sub d			;b67f
	rst 38h			;b680
	cp 001h			;b681
	ret m			;b683
	inc d			;b684
	jp (hl)			;b685
	ld b,0ddh		;b686
	dec b			;b688
	ld d,e			;b689
	jp pe,0db0fh		;b68a
	ld bc,007d4h		;b68d
	rlca			;b690
	rlca			;b691
	rlca			;b692
	rlca			;b693
	rlca			;b694
	call pe,009eah		;b695
	ret m			;b698
	add a,b			;b699
	jp nz,00fd4h		;b69a
	ret m			;b69d
	ld h,0ech		;b69e
	jp pe,00201h		;b6a0
	rst 38h			;b6a3
	cp 001h			;b6a4
	ret m			;b6a6
	ld d,h			;b6a7
	jp (hl)			;b6a8
	inc b			;b6a9
	ex de,hl		;b6aa
	add a,a			;b6ab
	ld h,d			;b6ac
	jp pe,0ed0ch		;b6ad
	ld a,(bc)		;b6b0
	call nc,0d371h		;b6b1
	ld hl,07101h		;b6b4
	ld hl,021d2h		;b6b7
	call nc,0d361h		;b6ba
	ld de,lb1d4h		;b6bd
	out (061h),a		;b6c0
	ld de,011d2h		;b6c2
	out (011h),a		;b6c5
	or c			;b6c7
	jp nc,06111h		;b6c8
	or c			;b6cb
	pop de			;b6cc
	ld de,01161h		;b6cd
	jp nc,0d1b1h		;b6d0
	ld h,c			;b6d3
	ld de,lb1d2h		;b6d4
	jp pe,0ed09h		;b6d7
	rlca			;b6da
	push af			;b6db
	pop de			;b6dc
	ld d,c			;b6dd
	ld bc,la1d1h+1		;b6de
	ei			;b6e1
	inc b			;b6e2
	ret m			;b6e3
	ld a,(bc)		;b6e4
	jp (hl)			;b6e5
	ld b,0f2h		;b6e6
	dec d			;b6e8
	pop af			;b6e9
	ld b,h			;b6ea
	jp pe,0eb0bh		;b6eb
	add a,(hl)		;b6ee
	ld b,b			;b6ef
	sub 003h		;b6f0
	inc bc			;b6f2
	pop de			;b6f3
	sbc a,a			;b6f4
	ret c			;b6f5
	di			;b6f6
	call pe,001eah		;b6f7
	sub d			;b6fa
	rst 38h			;b6fb
	cp 001h			;b6fc
lb6feh:
	jp (hl)			;b6fe
	ld b,0eeh		;b6ff
	ex af,af'		;b701
	ret m			;b702
	add a,c			;b703
	add a,0ech		;b704
	jp pe,0d403h		;b706
	inc bc			;b709
	rst 28h			;b70a
	ret nz			;b70b
	xor 004h		;b70c
	ret m			;b70e
	ld (bc),a		;b70f
	ex de,hl		;b710
	daa			;b711
	jr nz,lb6feh		;b712
	ex af,af'		;b714
	jp p,0f115h		;b715
	ld b,h			;b718
	sub 002h		;b719
	ld (bc),a		;b71b
	jp (hl)			;b71c
	inc b			;b71d
	jp nc,07121h		;b71e
	pop de			;b721
	ld hl,006e9h		;b722
	rla			;b725
lb726h:
	jp nc,0e9bbh		;b726
	inc b			;b729
	or e			;b72a
	jp (hl)			;b72b
	ld b,0afh		;b72c
	call pe,004e9h		;b72e
	jp pe,la101h		;b731
	ret m			;b734
	inc d			;b735
	jp (hl)			;b736
	ld b,0ebh		;b737
	and a			;b739
	djnz lb726h		;b73a
	ld b,0edh		;b73c
	inc b			;b73e
	jp nc,0ec9fh		;b73f
	jp pe,0f301h		;b742
	ret c			;b745
	sub c			;b746
	rst 38h			;b747
	cp 001h			;b748
	jp (hl)			;b74a
	ld b,0f8h		;b74b
	add a,c			;b74d
	add a,0ech		;b74e
	jp pe,0d403h		;b750
	inc bc			;b753
	ret m			;b754
	ld (bc),a		;b755
	ex de,hl		;b756
	ld d,d			;b757
	ld b,b			;b758
	jp pe,0db0dh		;b759
	ld bc,015f2h		;b75c
	pop af			;b75f
	ld b,h			;b760
	sub 002h		;b761
	ld (bc),a		;b763
	jp (hl)			;b764
	inc b			;b765
	out (091h),a		;b766
	jp nc,09121h		;b768
	jp (hl)			;b76b
	ld b,087h		;b76c
	ld l,e			;b76e
	jp (hl)			;b76f
	inc b			;b770
	ld h,e			;b771
	jp nc,006e9h		;b772
	ld e,a			;b775
	call pe,002eah		;b776
	jp (hl)			;b779
	inc b			;b77a
	ld d,c			;b77b
	ret m			;b77c
	inc d			;b77d
	ex de,hl		;b77e
	ld b,d			;b77f
	ld b,b			;b780
	jp pe,0e90eh		;b781
	ld b,0ebh		;b784
	and (hl)		;b786
	ld b,b			;b787
	defb 0edh ;next byte illegal after ed	;b788
	dec b			;b789
lb78ah:
	jp nc,0ec9fh		;b78a
	jp pe,0f301h		;b78d
	ret c			;b790
	sub d			;b791
	rst 38h			;b792
	cp 001h			;b793
	ret m			;b795
	ld (bc),a		;b796
	jp (hl)			;b797
	ld b,0c3h		;b798
	ex de,hl		;b79a
	ld d,d			;b79b
	ld b,b			;b79c
	jp pe,0db0dh		;b79d
lb7a0h:
	ld bc,015f2h		;b7a0
	pop af			;b7a3
	ld b,h			;b7a4
	sub 002h		;b7a5
	ld (bc),a		;b7a7
	jp (hl)			;b7a8
	inc b			;b7a9
lb7aah:
	jp nc,07121h		;b7aa
	pop de			;b7ad
	ld hl,006e9h		;b7ae
	rla			;b7b1
	jp nc,0e9bbh		;b7b2
	inc b			;b7b5
	or e			;b7b6
	jp (hl)			;b7b7
	ld b,0afh		;b7b8
lb7bah:
	call pe,002eah		;b7ba
	jp (hl)			;b7bd
	inc b			;b7be
	and c			;b7bf
	ret m			;b7c0
	inc d			;b7c1
	jp (hl)			;b7c2
	ld b,0eah		;b7c3
	inc c			;b7c5
	ex de,hl		;b7c6
	and (hl)		;b7c7
	ld b,b			;b7c8
	jp pe,0ed0eh		;b7c9
	dec b			;b7cc
	jp nc,0ec2fh		;b7cd
lb7d0h:
	jp pe,0f301h		;b7d0
	ret c			;b7d3
lb7d4h:
	ld (0ffffh),hl		;b7d4
	cp 001h			;b7d7
	pop af			;b7d9
	ld h,d			;b7da
lb7dbh:
	jp (hl)			;b7db
	add hl,bc		;b7dc
	jp pe,0d002h		;b7dd
	ld c,a			;b7e0
	ld c,a			;b7e1
	ld c,a			;b7e2
	ld c,a			;b7e3
	cp 001h			;b7e4
lb7e6h:
	jp (hl)			;b7e6
	add hl,bc		;b7e7
	jp nz,093ebh		;b7e8
	djnz lb7dbh		;b7eb
	inc bc			;b7ed
	jp pe,0ed05h		;b7ee
	inc bc			;b7f1
	push af			;b7f2
	jp nc,lb090h		;b7f3
	sub b			;b7f6
	pop de			;b7f7
	jr nz,lb78ah		;b7f8
	ld b,b			;b7fa
	ld h,b			;b7fb
	jr nz,lb7d0h		;b7fc
	sub b			;b7fe
	or b			;b7ff
	sub b			;b800
	pop de			;b801
	jr nz,$-110		;b802
	ld b,b			;b804
	ld h,b			;b805
	jr nz,$-3		;b806
	rlca			;b808
	jp nc,lb090h		;b809
	sub b			;b80c
	pop de			;b80d
	jr nz,lb7a0h		;b80e
	ld b,b			;b810
	ld h,b			;b811
	jr nz,lb7e6h		;b812
	sub b			;b814
	or b			;b815
	sub b			;b816
	pop de			;b817
	jr nz,lb7aah		;b818
	rst 28h			;b81a
	cp 004h			;b81b
	ret nc			;b81d
	sub c			;b81e
	sub c			;b81f
	nop			;b820
	nop			;b821
	ld de,0fe91h		;b822
	djnz lb7bah		;b825
	cp 004h			;b827
	nop			;b829
	nop			;b82a
	sub c			;b82b
	sub c			;b82c
	ld bc,09111h		;b82d
	cp 010h			;b830
	sub e			;b832
	sub c			;b833
	cp 004h			;b834
	ret nc			;b836
	jp (hl)			;b837
lb838h:
	add hl,bc		;b838
	push af			;b839
	sub c			;b83a
	ld bc,09131h		;b83b
	ld bc,0fe91h		;b83e
	djnz lb7d4h		;b841
	cp 004h			;b843
	ld bc,00ffbh		;b845
	sub c			;b848
	ld bc,010feh		;b849
	sub c			;b84c
	cp 004h			;b84d
	sub c			;b84f
	ld bc,0fe91h		;b850
	djnz $-110		;b853
	sub b			;b855
	sub c			;b856
	cp 004h			;b857
	ret nc			;b859
	jp (hl)			;b85a
	add hl,bc		;b85b
	push af			;b85c
	sub c			;b85d
	ld de,010feh		;b85e
	sub c			;b861
	cp 004h			;b862
	nop			;b864
	sub b			;b865
lb866h:
	ld bc,03091h		;b866
	sub b			;b869
	nop			;b86a
	sub c			;b86b
	nop			;b86c
	ld de,010feh		;b86d
lb870h:
	sub c			;b870
	cp 004h			;b871
	sub c			;b873
	sub c			;b874
	sub c			;b875
	ld sp,0fb91h		;b876
	ld (bc),a		;b879
	sub c			;b87a
	ld bc,010feh		;b87b
	sub c			;b87e
	cp 004h			;b87f
	nop			;b881
	sub b			;b882
	ld bc,03091h		;b883
lb886h:
	sub b			;b886
	nop			;b887
	sub b			;b888
	nop			;b889
	sub b			;b88a
	sub c			;b88b
	cp 010h			;b88c
	sub c			;b88e
	cp 004h			;b88f
	sub c			;b891
lb892h:
	cp 010h			;b892
	sub c			;b894
	sub c			;b895
	sub b			;b896
	sub b			;b897
	sub c			;b898
	push af			;b899
	cp 010h			;b89a
lb89ch:
	jp (hl)			;b89c
	add hl,bc		;b89d
	sub c			;b89e
	ld hl,02191h		;b89f
	sub b			;b8a2
	cp 004h			;b8a3
	sub b			;b8a5
	djnz lb838h		;b8a6
	cp 010h			;b8a8
	sub b			;b8aa
	cp 004h			;b8ab
	sub b			;b8ad
	djnz $-110		;b8ae
lb8b0h:
	ei			;b8b0
	djnz lb8b0h		;b8b1
lb8b3h:
	call po,0feb7h		;b8b3
	ld bc,062f1h		;b8b6
	jp (hl)			;b8b9
	add hl,bc		;b8ba
	jp pe,0d002h		;b8bb
	ld l,a			;b8be
	ld l,a			;b8bf
	ld l,a			;b8c0
	ld l,a			;b8c1
lb8c2h:
	jp (hl)			;b8c2
	add hl,bc		;b8c3
	ex de,hl		;b8c4
	sub e			;b8c5
	ld hl,001eeh		;b8c6
	pop bc			;b8c9
	jp pe,0ed07h		;b8ca
	inc b			;b8cd
	push af			;b8ce
lb8cfh:
	jp nc,lb090h		;b8cf
lb8d2h:
	sub b			;b8d2
	pop de			;b8d3
	jr nz,lb866h		;b8d4
	ld b,b			;b8d6
	ld h,b			;b8d7
	jr nz,$-44		;b8d8
	sub b			;b8da
	or b			;b8db
	sub b			;b8dc
	pop de			;b8dd
	jr nz,lb870h		;b8de
	ld b,b			;b8e0
	ld h,b			;b8e1
	jr nz,$-3		;b8e2
	add hl,bc		;b8e4
	jp nc,lb090h		;b8e5
	sub b			;b8e8
	pop de			;b8e9
	jr nz,$-110		;b8ea
	ld b,b			;b8ec
	ld h,b			;b8ed
	jr nz,lb8c2h		;b8ee
	sub b			;b8f0
	or b			;b8f1
	sub b			;b8f2
	pop de			;b8f3
	jr nz,lb886h		;b8f4
	ld b,b			;b8f6
	rst 28h			;b8f7
	jp (hl)			;b8f8
	add hl,bc		;b8f9
	xor 001h		;b8fa
	pop bc			;b8fc
	jp pe,0ed07h		;b8fd
	inc b			;b900
	ex de,hl		;b901
	sub e			;b902
	ld hl,0d2f5h		;b903
	sub b			;b906
	or b			;b907
	sub b			;b908
	pop de			;b909
	jr nz,lb89ch		;b90a
	ld b,b			;b90c
	ld h,b			;b90d
	jr nz,$-3		;b90e
	rrca			;b910
lb911h:
	jp nc,lb0a0h		;b911
	and b			;b914
	pop de			;b915
	jr nz,$-94		;b916
	ld b,b			;b918
	ld h,b			;b919
	jr nz,lb911h		;b91a
	jp nc,lb090h		;b91c
	sub b			;b91f
	pop de			;b920
	jr nz,lb8b3h		;b921
	ld b,b			;b923
	ld h,b			;b924
	jr nz,$-3		;b925
	rrca			;b927
	jp nc,lb0a0h		;b928
	and b			;b92b
	pop de			;b92c
	jr nz,lb8cfh		;b92d
	ld b,b			;b92f
	rst 28h			;b930
	jp (hl)			;b931
	add hl,bc		;b932
	xor 001h		;b933
	pop bc			;b935
	jp pe,0ed08h		;b936
	inc b			;b939
	ex de,hl		;b93a
	sub e			;b93b
	ld hl,0d2f5h		;b93c
	sub b			;b93f
	or b			;b940
	sub b			;b941
	pop de			;b942
	jr nz,$-110		;b943
	ld b,b			;b945
	ld h,b			;b946
	jr nz,$-3		;b947
	ld b,0f5h		;b949
	jp nc,lb080h		;b94b
	add a,b			;b94e
	pop de			;b94f
	jr nz,lb8d2h		;b950
	ld b,b			;b952
	ld h,b			;b953
	jr nz,$-3		;b954
	ld (bc),a		;b956
	push af			;b957
	jp nc,lb090h		;b958
	sub b			;b95b
	pop de			;b95c
	jr nz,$-110		;b95d
	ld b,b			;b95f
	ld h,b			;b960
	jr nz,$-3		;b961
	inc bc			;b963
	jp nc,lb090h		;b964
	sub b			;b967
	pop de			;b968
	jr nz,$-110		;b969
	ld b,b			;b96b
	jp (hl)			;b96c
	add hl,bc		;b96d
	jp pe,0ee08h		;b96e
	ld bc,0ebc1h		;b971
	sub e			;b974
	ld hl,006edh		;b975
	pop de			;b978
	push af			;b979
	jr nz,lb99ch		;b97a
	sub b			;b97c
	sub b			;b97d
	ret nc			;b97e
	jr nz,$+34		;b97f
	pop de			;b981
	sub b			;b982
	sub b			;b983
	ei			;b984
	rra			;b985
	jr nz,lb9a8h		;b986
	sub b			;b988
	sub b			;b989
	ret nc			;b98a
	jr nz,lb9adh		;b98b
	defb 0fdh,0c2h,0b8h ;illegal sequence	;b98d
	cp 001h			;b990
	pop af			;b992
lb993h:
	ld h,d			;b993
	jp (hl)			;b994
	add hl,bc		;b995
	jp pe,0d002h		;b996
	cpl			;b999
	cpl			;b99a
	cpl			;b99b
lb99ch:
	cpl			;b99c
	jp (hl)			;b99d
	add hl,bc		;b99e
	jp pe,0ed07h		;b99f
	inc bc			;b9a2
	ex de,hl		;b9a3
	add a,d			;b9a4
	ld sp,00af2h		;b9a5
lb9a8h:
	pop af			;b9a8
	ld h,c			;b9a9
	ret nc			;b9aa
	dec d			;b9ab
	dec h			;b9ac
lb9adh:
	ld h,l			;b9ad
	sub l			;b9ae
	call pe,004e9h		;b9af
	jp pe,09803h		;b9b2
lb9b5h:
	jp pe,0eb07h		;b9b5
lb9b8h:
	add a,d			;b9b8
	ld sp,009e9h		;b9b9
	inc de			;b9bc
	sub l			;b9bd
	or l			;b9be
	ld l,e			;b9bf
	pop de			;b9c0
	or d			;b9c1
	ret nc			;b9c2
	ld (095b1h),hl		;b9c3
	ld h,l			;b9c6
	inc hl			;b9c7
	ld b,l			;b9c8
	dec d			;b9c9
	pop de			;b9ca
	sub e			;b9cb
	cp c			;b9cc
	ret nc			;b9cd
	ld de,09921h		;b9ce
	pop de			;b9d1
lb9d2h:
	or d			;b9d2
lb9d3h:
	ret nc			;b9d3
	ld (095b1h),hl		;b9d4
	ld h,l			;b9d7
	inc hl			;b9d8
	ld b,l			;b9d9
	dec d			;b9da
	ld h,e			;b9db
	jp (hl)			;b9dc
	add hl,bc		;b9dd
lb9deh:
	xor 003h		;b9de
	jp nz,005eah		;b9e0
	defb 0edh ;next byte illegal after ed	;b9e3
	inc bc			;b9e4
	ex de,hl		;b9e5
	sub e			;b9e6
	djnz lb9deh		;b9e7
	jp nc,lb090h		;b9e9
	sub b			;b9ec
	pop de			;b9ed
	jr nz,$-110		;b9ee
	ld b,b			;b9f0
	ld h,b			;b9f1
	jr nz,$-3		;b9f2
	rrca			;b9f4
lb9f5h:
	jp nc,lb0a0h		;b9f5
	and b			;b9f8
	pop de			;b9f9
	jr nz,lb99ch		;b9fa
	ld b,b			;b9fc
	ld h,b			;b9fd
	jr nz,lb9f5h		;b9fe
	jp nc,lb090h		;ba00
	sub b			;ba03
	pop de			;ba04
	jr nz,$-110		;ba05
	ld b,b			;ba07
	ld h,b			;ba08
	jr nz,$-3		;ba09
	rrca			;ba0b
	jp nc,lb0a0h		;ba0c
	and b			;ba0f
	pop de			;ba10
	jr nz,$-94		;ba11
	rst 28h			;ba13
	jp (hl)			;ba14
	add hl,bc		;ba15
lba16h:
	xor 003h		;ba16
	jp nz,006eah		;ba18
	defb 0edh ;next byte illegal after ed	;ba1b
	inc bc			;ba1c
	ex de,hl		;ba1d
	sub e			;ba1e
	djnz lba16h		;ba1f
	jp nc,lb090h		;ba21
	sub b			;ba24
	pop de			;ba25
	jr nz,lb9b8h		;ba26
	ld b,b			;ba28
	ld h,b			;ba29
	jr nz,$-3		;ba2a
	ld b,0f5h		;ba2c
	jp nc,lb080h		;ba2e
	add a,b			;ba31
	pop de			;ba32
	jr nz,lb9b5h		;ba33
	ld b,b			;ba35
	ld h,b			;ba36
	jr nz,$-3		;ba37
	ld (bc),a		;ba39
	push af			;ba3a
	jp nc,lb090h		;ba3b
	sub b			;ba3e
	pop de			;ba3f
	jr nz,lb9d2h		;ba40
	ld b,b			;ba42
	ld h,b			;ba43
	jr nz,$-3		;ba44
lba46h:
	inc bc			;ba46
	jp nc,lb090h		;ba47
	sub b			;ba4a
	pop de			;ba4b
	jr nz,lb9deh		;ba4c
	jp (hl)			;ba4e
	add hl,bc		;ba4f
	jp pe,0ee06h		;ba50
	ld (bc),a		;ba53
	jp nz,093ebh		;ba54
	djnz lba46h		;ba57
	inc b			;ba59
	pop de			;ba5a
	push af			;ba5b
	jr nz,lba7eh		;ba5c
	sub b			;ba5e
	sub b			;ba5f
	ret nc			;ba60
	jr nz,lba83h		;ba61
	pop de			;ba63
	sub b			;ba64
	sub b			;ba65
	ei			;ba66
	rra			;ba67
	jr nz,lba8ah		;ba68
	sub b			;ba6a
	sub b			;ba6b
lba6ch:
	ret nc			;ba6c
	jr nz,lba6ch		;ba6d
	sbc a,l			;ba6f
	cp c			;ba70
	cp 001h			;ba71
	ret m			;ba73
	ld d,h			;ba74
	jp (hl)			;ba75
	add hl,bc		;ba76
	defb 0ddh,084h ;add a,ixh	;ba77
	and l			;ba79
	jp pe,0db0ch		;ba7a
	inc b			;ba7d
lba7eh:
	defb 0edh ;next byte illegal after ed	;ba7e
	add hl,bc		;ba7f
	push af			;ba80
	out (090h),a		;ba81
lba83h:
	or b			;ba83
	sub b			;ba84
	jp nc,09020h		;ba85
	ld b,b			;ba88
	ld h,b			;ba89
lba8ah:
	jr nz,$-3		;ba8a
	ex af,af'		;ba8c
	ret m			;ba8d
	inc d			;ba8e
	jp (hl)			;ba8f
	add hl,bc		;ba90
	jp pe,0eb0fh		;ba91
	ld (0f570h),a		;ba94
	push de			;ba97
	or e			;ba98
	or e			;ba99
	jp (hl)			;ba9a
	ld (bc),a		;ba9b
	and c			;ba9c
	or (hl)			;ba9d
	jp (hl)			;ba9e
	add hl,bc		;ba9f
	ld b,c			;baa0
	ld h,c			;baa1
	call nc,0fb21h		;baa2
	ld (bc),a		;baa5
	push de			;baa6
	ld (hl),e		;baa7
	ld (hl),e		;baa8
	jp (hl)			;baa9
	ld (bc),a		;baaa
	ld h,c			;baab
	halt			;baac
	jp (hl)			;baad
	add hl,bc		;baae
	call nc,0d521h		;baaf
	ld (hl),c		;bab2
	call nc,0d571h		;bab3
	ld (hl),e		;bab6
	ld (hl),e		;bab7
	ld (hl),c		;bab8
	call nc,0d571h		;bab9
	ld h,c			;babc
	call nc,0d561h		;babd
	ld b,e			;bac0
	ld b,e			;bac1
	jp (hl)			;bac2
	ld (bc),a		;bac3
	ld sp,0e946h		;bac4
	add hl,bc		;bac7
	sub c			;bac8
	or c			;bac9
	ld b,c			;baca
	ld h,e			;bacb
	ld h,e			;bacc
	jp (hl)			;bacd
	ld (bc),a		;bace
	ld d,c			;bacf
	ld h,(hl)		;bad0
	jp (hl)			;bad1
	add hl,bc		;bad2
	call nc,0d511h		;bad3
	ld h,c			;bad6
	call nc,0d561h		;bad7
	or e			;bada
	or e			;badb
	jp (hl)			;badc
	ld (bc),a		;badd
	and c			;bade
	or (hl)			;badf
	jp (hl)			;bae0
	add hl,bc		;bae1
	ld b,c			;bae2
	ld h,c			;bae3
	call nc,0d521h		;bae4
	or e			;bae7
	or e			;bae8
	or c			;bae9
	call nc,0d5b1h		;baea
	ld h,c			;baed
	call nc,0d561h		;baee
	ld b,e			;baf1
	ld b,e			;baf2
	ld b,c			;baf3
	sub c			;baf4
	or c			;baf5
	ld b,c			;baf6
	ld h,e			;baf7
	ld h,e			;baf8
	jp (hl)			;baf9
	ld (bc),a		;bafa
	ld b,c			;bafb
	ld d,c			;bafc
	ld h,h			;bafd
	call nc,01601h		;bafe
	push de			;bb01
	ld b,c			;bb02
	ld d,c			;bb03
	ld h,h			;bb04
	call nc,06651h		;bb05
	ret m			;bb08
	inc hl			;bb09
	jp (hl)			;bb0a
	add hl,bc		;bb0b
	jp pe,0eb0fh		;bb0c
	ld (0f550h),a		;bb0f
	push de			;bb12
	or e			;bb13
	call nc,0d5b0h		;bb14
	or b			;bb17
	sub b			;bb18
	or b			;bb19
	jp nz,0d4b1h		;bb1a
	or b			;bb1d
	push de			;bb1e
	sub c			;bb1f
	or e			;bb20
	call nc,0d5b0h		;bb21
	or b			;bb24
	sub b			;bb25
	or b			;bb26
	jp nz,0d4b1h		;bb27
	or b			;bb2a
	push de			;bb2b
	sub c			;bb2c
	ld h,e			;bb2d
	call nc,0d560h		;bb2e
	ld h,b			;bb31
	ld b,b			;bb32
	ld h,b			;bb33
	jp nz,0d461h		;bb34
lbb37h:
	ld h,b			;bb37
	push de			;bb38
	ld b,c			;bb39
	ld h,e			;bb3a
	call nc,0d560h		;bb3b
	ld h,b			;bb3e
	ld b,b			;bb3f
	ld h,c			;bb40
	sub c			;bb41
	or c			;bb42
	call nc,05160h		;bb43
	ld b,e			;bb46
	out (040h),a		;bb47
	call nc,02040h		;bb49
	ld b,b			;bb4c
	jp nz,0d341h		;bb4d
	ld b,b			;bb50
	push de			;bb51
	or c			;bb52
	sub e			;bb53
	call nc,0d590h		;bb54
	sub b			;bb57
	ld (hl),b		;bb58
	sub c			;bb59
	or c			;bb5a
	call nc,04011h		;bb5b
	ld sp,0d323h		;bb5e
	jr nz,lbb37h		;bb61
	jr nz,$+18		;bb63
	jr nz,$-60		;bb65
	ld hl,020d3h		;bb67
	push de			;bb6a
	sub c			;bb6b
	ld b,d			;bb6c
	or c			;bb6d
	call nc,0d540h		;bb6e
	or c			;bb71
	ld h,d			;bb72
	call nc,06011h		;bb73
	ld de,002fbh		;bb76
	ret m			;bb79
	inc hl			;bb7a
	jp (hl)			;bb7b
	add hl,bc		;bb7c
	jp pe,0eb0fh		;bb7d
	ld d,d			;bb80
	ld h,b			;bb81
	in a,(001h)		;bb82
	call nc,0d343h		;bb84
	ld b,b			;bb87
	push de			;bb88
	or c			;bb89
	call nc,04122h		;bb8a
	push de			;bb8d
	ld b,b			;bb8e
	push de			;bb8f
	or c			;bb90
	call nc,0d561h		;bb91
	sub b			;bb94
	or c			;bb95
	call nc,06111h		;bb96
	ld de,0d361h		;bb99
	ld de,061d4h		;bb9c
	ld (hl),e		;bb9f
	out (070h),a		;bba0
	call nc,06221h		;bba2
	ld (hl),d		;bba5
	out (070h),a		;bba6
	call nc,08071h		;bba8
	push de			;bbab
	add a,b			;bbac
	call nc,08121h		;bbad
	push de			;bbb0
	add a,c			;bbb1
	call nc,08121h		;bbb2
	out (021h),a		;bbb5
	call nc,0f581h		;bbb7
	push de			;bbba
	sub c			;bbbb
	call nc,0fb91h		;bbbc
	ld b,0d5h		;bbbf
	sub c			;bbc1
	sub c			;bbc2
	or c			;bbc3
	call nc,0f811h		;bbc4
	inc hl			;bbc7
	jp (hl)			;bbc8
	add hl,bc		;bbc9
	jp pe,0eb0fh		;bbca
	ld d,d			;bbcd
	ld h,b			;bbce
	in a,(002h)		;bbcf
	push af			;bbd1
	out (020h),a		;bbd2
	call nc,02021h		;bbd4
	out (020h),a		;bbd7
	call nc,02021h		;bbd9
	ld hl,061d4h		;bbdc
	sub c			;bbdf
	out (021h),a		;bbe0
	out (090h),a		;bbe2
	call nc,09091h		;bbe4
	out (090h),a		;bbe7
	call nc,09091h		;bbe9
	sub c			;bbec
	ld b,c			;bbed
	push de			;bbee
	sub c			;bbef
	call nc,0d391h		;bbf0
	ld (hl),b		;bbf3
	call nc,07071h		;bbf4
	out (070h),a		;bbf7
lbbf9h:
	call nc,07071h		;bbf9
	ld (hl),c		;bbfc
	out (071h),a		;bbfd
	call nc,0d361h		;bbff
	ld hl,0d440h		;bc02
	ld b,c			;bc05
	ld b,b			;bc06
	out (040h),a		;bc07
	call nc,04041h		;bc09
	sub b			;bc0c
	push de			;bc0d
	sub c			;bc0e
	sub b			;bc0f
	call nc,0d590h		;bc10
	sub c			;bc13
	sub b			;bc14
	ei			;bc15
	inc b			;bc16
	defb 0fdh,08dh ;adc a,iyl	;bc17
	cp d			;bc19
	cp 001h			;bc1a
	ret m			;bc1c
	ld d,h			;bc1d
	xor 005h		;bc1e
	jp (hl)			;bc20
	add hl,bc		;bc21
	pop bc			;bc22
	defb 0ddh,085h ;add a,ixl	;bc23
	ld h,l			;bc25
	jp pe,0db06h		;bc26
	ld (bc),a		;bc29
	defb 0edh ;next byte illegal after ed	;bc2a
	dec b			;bc2b
	push af			;bc2c
	out (090h),a		;bc2d
	or b			;bc2f
	sub b			;bc30
	jp nc,09020h		;bc31
	ld b,b			;bc34
	ld h,b			;bc35
	jr nz,$-3		;bc36
	rlca			;bc38
	out (090h),a		;bc39
	or b			;bc3b
	sub b			;bc3c
	jp nc,09020h		;bc3d
	ld b,b			;bc40
	rst 28h			;bc41
	call c,001feh		;bc42
	ret m			;bc45
	ld d,h			;bc46
	jp (hl)			;bc47
	add hl,bc		;bc48
	defb 0ddh,084h ;add a,ixh	;bc49
	and l			;bc4b
	jp pe,0ed0ch		;bc4c
	add hl,bc		;bc4f
	in a,(004h)		;bc50
	push af			;bc52
	out (090h),a		;bc53
	or b			;bc55
	sub b			;bc56
	jp nc,09020h		;bc57
	ld b,b			;bc5a
	ld h,b			;bc5b
	jr nz,$-3		;bc5c
	inc hl			;bc5e
lbc5fh:
	out (0a0h),a		;bc5f
	or b			;bc61
	and b			;bc62
	jp nc,0a020h		;bc63
	ld b,b			;bc66
	ld h,b			;bc67
	jr nz,lbc5fh		;bc68
	out (090h),a		;bc6a
	or b			;bc6c
	sub b			;bc6d
	jp nc,09020h		;bc6e
	ld b,b			;bc71
	ld h,b			;bc72
	jr nz,$-3		;bc73
	rrca			;bc75
lbc76h:
	out (0a0h),a		;bc76
	or b			;bc78
	and b			;bc79
	jp nc,0a020h		;bc7a
	ld b,b			;bc7d
	ld h,b			;bc7e
	jr nz,lbc76h		;bc7f
	out (090h),a		;bc81
	or b			;bc83
	sub b			;bc84
	jp nc,09020h		;bc85
	ld b,b			;bc88
	ld h,b			;bc89
	jr nz,$-3		;bc8a
	ld b,0f5h		;bc8c
	out (080h),a		;bc8e
	or b			;bc90
	add a,b			;bc91
	jp nc,08020h		;bc92
	ld b,b			;bc95
	ld h,b			;bc96
	jr nz,$-3		;bc97
	ld (bc),a		;bc99
	push af			;bc9a
	out (090h),a		;bc9b
	or b			;bc9d
	sub b			;bc9e
	jp nc,09020h		;bc9f
	ld b,b			;bca2
	ld h,b			;bca3
	jr nz,$-3		;bca4
	inc b			;bca6
	push af			;bca7
	jp nc,02020h		;bca8
	sub b			;bcab
	sub b			;bcac
	pop de			;bcad
	jr nz,lbcd0h		;bcae
	jp nc,09090h		;bcb0
lbcb3h:
	ei			;bcb3
	jr nz,lbcb3h		;bcb4
	ld b,e			;bcb6
	cp h			;bcb7
	cp 001h			;bcb8
	ret m			;bcba
	ld d,h			;bcbb
	xor 003h		;bcbc
	jp (hl)			;bcbe
	add hl,bc		;bcbf
	ret nz			;bcc0
	defb 0ddh,006h,065h ;illegal sequence	;bcc1
	jp pe,0db05h		;bcc4
	ld (bc),a		;bcc7
	push af			;bcc8
	out (090h),a		;bcc9
	or b			;bccb
	sub b			;bccc
	jp nc,09020h		;bccd
lbcd0h:
	ld b,b			;bcd0
	ld h,b			;bcd1
	jr nz,$-3		;bcd2
	ld b,0d3h		;bcd4
	sub b			;bcd6
	or b			;bcd7
	sub b			;bcd8
	jp nc,09020h		;bcd9
	ld b,b			;bcdc
	ld h,b			;bcdd
	ret m			;bcde
	dec b			;bcdf
	rst 28h			;bce0
	call pe,00beah		;bce1
	jp (hl)			;bce4
	inc b			;bce5
	out (040h),a		;bce6
	jr nc,$+34		;bce8
	djnz lbcech		;bcea
lbcech:
	call nc,sub_a0b0h	;bcec
	sub b			;bcef
	add a,b			;bcf0
	ld (hl),b		;bcf1
	ld h,b			;bcf2
lbcf3h:
	ld d,b			;bcf3
	ld b,b			;bcf4
	jr nc,lbd17h		;bcf5
	djnz lbcf9h		;bcf7
lbcf9h:
	push de			;bcf9
	or b			;bcfa
	rst 28h			;bcfb
	cp 001h			;bcfc
	ret m			;bcfe
	add hl,bc		;bcff
	xor 001h		;bd00
	jp (hl)			;bd02
	add hl,bc		;bd03
	jp nz,082ebh		;bd04
	djnz lbcf3h		;bd07
	ld b,0edh		;bd09
	inc b			;bd0b
	jp p,0f10ah		;bd0c
	ld (hl),c		;bd0f
	pop de			;bd10
	dec d			;bd11
	dec h			;bd12
	ld h,l			;bd13
	sub h			;bd14
	jp (hl)			;bd15
	inc b			;bd16
lbd17h:
	ret nc			;bd17
	nop			;bd18
	djnz lbd41h		;bd19
	jp (hl)			;bd1b
	add hl,bc		;bd1c
	inc de			;bd1d
	pop de			;bd1e
	sub l			;bd1f
	or l			;bd20
	ld l,e			;bd21
	jp nc,0d1b2h		;bd22
	ld (095b1h),hl		;bd25
	ld h,l			;bd28
	inc hl			;bd29
	ld b,l			;bd2a
	dec d			;bd2b
	jp nc,lb993h		;bd2c
	pop de			;bd2f
	ld de,09921h		;bd30
	jp nc,0d1b2h		;bd33
	ld (095b1h),hl		;bd36
	ld h,l			;bd39
	inc hl			;bd3a
	ld b,l			;bd3b
	dec d			;bd3c
	ld h,c			;bd3d
	cp 001h			;bd3e
	ret m			;bd40
lbd41h:
	inc d			;bd41
lbd42h:
	xor 001h		;bd42
	jp (hl)			;bd44
	add hl,bc		;bd45
	push af			;bd46
	jp pe,0ed08h		;bd47
	rlca			;bd4a
	ex de,hl		;bd4b
	add a,e			;bd4c
	jr nz,lbd41h		;bd4d
	djnz lbd42h		;bd4f
	ld h,a			;bd51
	jp nz,lb9d3h		;bd52
	jp nc,02111h		;bd55
	ld l,e			;bd58
	ld b,c			;bd59
	ld h,e			;bd5a
	sub a			;bd5b
	sub c			;bd5c
	sub c			;bd5d
	or c			;bd5e
	ld c,a			;bd5f
	jp pe,0ec02h		;bd60
	ld b,c			;bd63
	jp pe,0eb08h		;bd64
	add a,e			;bd67
	jr nz,$+43		;bd68
	out (091h),a		;bd6a
	or c			;bd6c
	jp nc,0412bh		;bd6d
	ld h,c			;bd70
	dec de			;bd71
	out (0b1h),a		;bd72
	sub c			;bd74
	or l			;bd75
	jp nc,01123h		;bd76
	out (061h),a		;bd79
	and b			;bd7b
lbd7ch:
	ei			;bd7c
	ld (bc),a		;bd7d
	rst 28h			;bd7e
	cp 001h			;bd7f
	ret m			;bd81
	ld (bc),a		;bd82
	jp (hl)			;bd83
	ld (de),a		;bd84
lbd85h:
	ret nz			;bd85
	jp (hl)			;bd86
	add hl,bc		;bd87
	jp pe,0eb08h		;bd88
	rla			;bd8b
	jr nz,lbd7ch		;bd8c
	ld (bc),a		;bd8e
	sub 002h		;bd8f
	ld (bc),a		;bd91
	jp p,0f11ah		;bd92
	ld b,e			;bd95
	pop de			;bd96
	inc hl			;bd97
	inc de			;bd98
	jp nc,0d1b3h		;bd99
	ld (de),a		;bd9c
	jp nc,0d895h		;bd9d
	ret m			;bda0
	ld d,h			;bda1
	in a,(002h)		;bda2
	defb 0ddh,007h,054h ;illegal sequence	;bda4
	ld h,b			;bda7
	ld (hl),b		;bda8
	sbc a,b			;bda9
	call c,002f8h		;bdaa
	sub 002h		;bdad
	ld (bc),a		;bdaf
	ex de,hl		;bdb0
	rla			;bdb1
	jr nz,lbd85h		;bdb2
	inc hl			;bdb4
	jp nc,lb892h		;bdb5
	pop de			;bdb8
	or e			;bdb9
	sub e			;bdba
	add a,e			;bdbb
	or e			;bdbc
	jp (hl)			;bdbd
	ld (de),a		;bdbe
	sbc a,(hl)		;bdbf
	rst 28h			;bdc0
	cp 001h			;bdc1
lbdc3h:
	push af			;bdc3
	ret m			;bdc4
	ld (bc),a		;bdc5
	jp (hl)			;bdc6
	add hl,bc		;bdc7
	xor 002h		;bdc8
	pop bc			;bdca
	jp pe,0eb09h		;bdcb
	rla			;bdce
	djnz lbdc3h		;bdcf
	ld a,(de)		;bdd1
	pop af			;bdd2
	ld d,(hl)		;bdd3
	jp nc,0f897h		;bdd4
	dec d			;bdd7
	ld h,b			;bdd8
	ld (hl),b		;bdd9
	sub l			;bdda
	ret m			;bddb
	ld (bc),a		;bddc
	ld (hl),e		;bddd
	ld h,e			;bdde
	ld b,e			;bddf
	ld h,e			;bde0
	cpl			;bde1
	ret m			;bde2
	dec d			;bde3
	jp pe,0eb0ah		;bde4
	ld b,h			;bde7
	ld b,b			;bde8
	out (0b2h),a		;bde9
	jp nc,02212h		;bdeb
	ld b,d			;bdee
	ld h,c			;bdef
	ei			;bdf0
	inc b			;bdf1
	rst 28h			;bdf2
	ret c			;bdf3
	defb 0fdh,0fch,0bch ;illegal sequence	;bdf4
	cp 001h			;bdf7
	ret m			;bdf9
	dec b			;bdfa
	pop af			;bdfb
	ld (hl),d		;bdfc
	jp (hl)			;bdfd
	add hl,bc		;bdfe
	jp pe,0d102h		;bdff
	cp a			;be02
	cp a			;be03
	cp a			;be04
	cp a			;be05
	cp 001h			;be06
	ret m			;be08
	add hl,bc		;be09
	jp (hl)			;be0a
	add hl,bc		;be0b
	jp pe,0ed0eh		;be0c
	add hl,bc		;be0f
	ex de,hl		;be10
	add a,d			;be11
	ld d,b			;be12
	jp p,0f10ah		;be13
	ld h,d			;be16
	pop de			;be17
	dec d			;be18
	dec h			;be19
	ld h,l			;be1a
	sub l			;be1b
	jp (hl)			;be1c
	inc b			;be1d
	ret nc			;be1e
	nop			;be1f
	djnz lbe48h		;be20
	jp (hl)			;be22
	add hl,bc		;be23
	inc de			;be24
	pop de			;be25
	sub l			;be26
	or l			;be27
	ld l,e			;be28
	jp nc,0d1b2h		;be29
	ld (095b1h),hl		;be2c
	ld h,l			;be2f
	inc hl			;be30
	ld b,l			;be31
	dec d			;be32
	jp nc,lb993h		;be33
	pop de			;be36
	ld de,09921h		;be37
	jp nc,0d1b2h		;be3a
	ld (095b1h),hl		;be3d
	ld h,l			;be40
	inc hl			;be41
	ld b,l			;be42
	dec d			;be43
	ld h,e			;be44
	cp 001h			;be45
	ret m			;be47
lbe48h:
	inc d			;be48
	jp (hl)			;be49
	add hl,bc		;be4a
	push af			;be4b
	jp pe,0ed0eh		;be4c
	add hl,bc		;be4f
	ex de,hl		;be50
	add a,d			;be51
	ld (hl),b		;be52
	jp p,0f110h		;be53
	ld h,a			;be56
	out (0b9h),a		;be57
	defb 0edh ;next byte illegal after ed	;be59
	ex af,af'		;be5a
	jp nc,02111h		;be5b
	ld l,e			;be5e
	ld b,c			;be5f
	ld h,e			;be60
	sub a			;be61
	sub c			;be62
	sub c			;be63
	or c			;be64
	ld c,a			;be65
	jp pe,0ec03h		;be66
	ld b,c			;be69
	jp pe,0eb0eh		;be6a
	add a,d			;be6d
	ld (hl),b		;be6e
	add hl,hl		;be6f
	out (091h),a		;be70
	or c			;be72
	jp nc,0412bh		;be73
	ld h,c			;be76
	dec de			;be77
	out (0b1h),a		;be78
	sub c			;be7a
	or l			;be7b
	jp nc,01123h		;be7c
	out (061h),a		;be7f
	and c			;be81
	jp nc,0fb61h		;be82
	ld (bc),a		;be85
	cp 001h			;be86
	ret m			;be88
	ld (bc),a		;be89
	jp (hl)			;be8a
	add hl,bc		;be8b
	jp pe,0eb0fh		;be8c
	ld (0d661h),a		;be8f
	ld (bc),a		;be92
	ld (bc),a		;be93
	jp p,0f11ah		;be94
	ld b,h			;be97
	pop de			;be98
	inc hl			;be99
	inc de			;be9a
	jp nc,0d1b3h		;be9b
	ld (de),a		;be9e
	jp nc,0d895h		;be9f
	ret m			;bea2
	ld d,h			;bea3
	defb 0ddh,005h,065h ;illegal sequence	;bea4
	ld h,b			;bea7
	ld (hl),b		;bea8
	sbc a,b			;bea9
	ret m			;beaa
	ld (bc),a		;beab
	sub 002h		;beac
	ld (bc),a		;beae
	ex de,hl		;beaf
	ld (0d161h),a		;beb0
	inc hl			;beb3
	jp nc,lb892h		;beb4
	pop de			;beb7
	or e			;beb8
	sub e			;beb9
	add a,e			;beba
	or e			;bebb
	jp (hl)			;bebc
	ld (de),a		;bebd
	sbc a,a			;bebe
	cp 001h			;bebf
	push af			;bec1
	ret m			;bec2
	ld (bc),a		;bec3
	jp (hl)			;bec4
	add hl,bc		;bec5
	jp pe,0eb0fh		;bec6
	ld (0d651h),a		;bec9
	ld (bc),a		;becc
	ld (bc),a		;becd
	jp p,0f11ah		;bece
	ld d,(hl)		;bed1
	jp nc,0f897h		;bed2
	dec d			;bed5
	ld h,b			;bed6
	ld (hl),b		;bed7
	sub l			;bed8
	ret m			;bed9
	ld (bc),a		;beda
	ld (hl),e		;bedb
	ld h,e			;bedc
	ld b,e			;bedd
	ld h,e			;bede
	ld l,0ech		;bedf
	jp pe,02002h		;bee1
	ret m			;bee4
	dec d			;bee5
	jp pe,0eb0fh		;bee6
	ld b,h			;bee9
	ld b,b			;beea
	out (0b2h),a		;beeb
	jp nc,02212h		;beed
	ld b,d			;bef0
	ld h,c			;bef1
	ld (hl),c		;bef2
	ei			;bef3
	inc b			;bef4
	ret c			;bef5
	defb 0fdh,006h,0beh ;illegal sequence	;bef6
	cp 001h			;bef9
	ret m			;befb
	dec b			;befc
	pop af			;befd
	ld h,d			;befe
	xor 001h		;beff
	jp (hl)			;bf01
	add hl,bc		;bf02
	jp pe,0d101h		;bf03
	cp a			;bf06
	cp a			;bf07
	cp a			;bf08
	cp a			;bf09
	cp 001h			;bf0a
	ret m			;bf0c
	add hl,bc		;bf0d
	jp (hl)			;bf0e
	add hl,bc		;bf0f
	jp pe,0ed0ch		;bf10
	ex af,af'		;bf13
	ex de,hl		;bf14
	add a,d			;bf15
	ld d,b			;bf16
	jp p,0f10ah		;bf17
	ld h,e			;bf1a
	jp nc,lb595h		;bf1b
	pop de			;bf1e
	dec h			;bf1f
	ld h,l			;bf20
	sub e			;bf21
	sub e			;bf22
	ld h,l			;bf23
	ld h,l			;bf24
	dec hl			;bf25
	ld (06162h),hl		;bf26
	ld h,l			;bf29
	dec h			;bf2a
	jp nc,0b593h		;bf2b
	sub l			;bf2e
	ld b,e			;bf2f
	ld l,c			;bf30
	sub c			;bf31
	or c			;bf32
	pop de			;bf33
	ld l,c			;bf34
	ld (0d062h),hl		;bf35
	ld hl,0d115h		;bf38
	sub l			;bf3b
	ld h,e			;bf3c
	sub l			;bf3d
	ld b,l			;bf3e
	sub e			;bf3f
	cp 001h			;bf40
	ret m			;bf42
	inc d			;bf43
	jp (hl)			;bf44
	add hl,bc		;bf45
	push af			;bf46
	jp pe,0ed0dh		;bf47
	add hl,bc		;bf4a
	ex de,hl		;bf4b
	add a,d			;bf4c
	ld (hl),b		;bf4d
	jp p,0f110h		;bf4e
	ld l,d			;bf51
	out (069h),a		;bf52
	defb 0edh ;next byte illegal after ed	;bf54
	ld b,061h		;bf55
	sub c			;bf57
	cp e			;bf58
	or c			;bf59
	or e			;bf5a
	jp nc,01117h		;bf5b
	ld hl,0d341h		;bf5e
	sbc a,a			;bf61
	call pe,003eah		;bf62
	sub c			;bf65
	jp pe,0eb0dh		;bf66
	add a,d			;bf69
	ld (hl),b		;bf6a
	ld a,c			;bf6b
	ld hl,07b41h		;bf6c
	ld (hl),c		;bf6f
	ld (hl),c		;bf70
	ld l,e			;bf71
	ld b,c			;bf72
	ld hl,07345h		;bf73
	out (061h),a		;bf76
	ld de,0d261h		;bf78
	ld de,002fbh		;bf7b
	cp 001h			;bf7e
	ret m			;bf80
	ld (bc),a		;bf81
	jp (hl)			;bf82
	add hl,bc		;bf83
	jp pe,0eb0fh		;bf84
	ld (0f261h),a		;bf87
	ld a,(de)		;bf8a
	pop af			;bf8b
	ld b,l			;bf8c
	sub 002h		;bf8d
	ld (bc),a		;bf8f
	jp nc,09393h		;bf90
	ld h,e			;bf93
	sub d			;bf94
	ld b,l			;bf95
	ret c			;bf96
	ret m			;bf97
	ld d,h			;bf98
	defb 0ddh,005h,065h ;illegal sequence	;bf99
	djnz lbfbeh		;bf9c
	ld c,b			;bf9e
	ret m			;bf9f
	ld (bc),a		;bfa0
	jp pe,0eb0fh		;bfa1
	ld (0d661h),a		;bfa4
	ld (bc),a		;bfa7
	ld (bc),a		;bfa8
	sub e			;bfa9
	ld b,d			;bfaa
	ld l,b			;bfab
	pop de			;bfac
	ld h,e			;bfad
	ld b,e			;bfae
	jp nc,0d1b3h		;bfaf
	ld b,e			;bfb2
	cpl			;bfb3
	pop af			;bfb4
	ld c,b			;bfb5
	rra			;bfb6
	ret c			;bfb7
	cp 001h			;bfb8
	push af			;bfba
	ret m			;bfbb
	ld (bc),a		;bfbc
	jp (hl)			;bfbd
lbfbeh:
	add hl,bc		;bfbe
	jp pe,0eb0fh		;bfbf
	ld (0d651h),a		;bfc2
	ld (bc),a		;bfc5
	ld (bc),a		;bfc6
	pop af			;bfc7
	ld b,(hl)		;bfc8
	jp p,0d214h		;bfc9
	ld h,a			;bfcc
	ret m			;bfcd
	dec d			;bfce
	jr nz,$+66		;bfcf
	ld h,l			;bfd1
	ret m			;bfd2
	ld (bc),a		;bfd3
	ld b,e			;bfd4
	inc hl			;bfd5
	inc bc			;bfd6
	inc bc			;bfd7
	out (0bfh),a		;bfd8
	ret m			;bfda
	dec d			;bfdb
	jp pe,0d60ch		;bfdc
	ld (bc),a		;bfdf
	and b			;bfe0
	pop de			;bfe1
	cpl			;bfe2
	ei			;bfe3
	inc b			;bfe4
	ret c			;bfe5
	defb 0fdh,00ah,0bfh ;illegal sequence	;bfe6
	rst 38h			;bfe9
	rst 38h			;bfea
	rst 38h			;bfeb
	rst 38h			;bfec
	rst 38h			;bfed
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

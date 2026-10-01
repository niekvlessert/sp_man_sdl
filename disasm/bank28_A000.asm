; z80dasm 1.2.0
; command line: z80dasm -a -l -g 0xA000 -o /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/disasm/bank28_A000.asm /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/banks/bank28.bin

	org 0a000h

	jp 06009h		;a000
	jp 06929h		;a003
	jp 06ad6h		;a006
	ld hl,0ffffh		;a009
	ld (0c85fh),hl		;a00c
	ld hl,0c861h		;a00f
	ld de,0c862h		;a012
	ld (hl),001h		;a015
	ld bc,0000eh		;a017
	ldir			;a01a
	call 06287h		;a01c
	ld a,0bfh		;a01f
	jp 06106h		;a021
	call 0602bh		;a024
	call 06123h		;a027
	ret			;a02a
	call 0603bh		;a02b
	call 06053h		;a02e
	call 06088h		;a031
	call 060b5h		;a034
	call 060e3h		;a037
	ret			;a03a
	ld hl,0c60dh		;a03b
	ld a,(hl)		;a03e
	and 001h		;a03f
	jr z,la052h		;a041
	ld hl,0c68dh		;a043
	ld a,(hl)		;a046
	and 001h		;a047
	jr z,la052h		;a049
	ld hl,0c60dh		;a04b
	res 1,(hl)		;a04e
	res 0,(hl)		;a050
la052h:
	ret			;a052
	ld b,000h		;a053
	ld c,008h		;a055
	ld hl,0c60ah		;a057
	call 0606ah		;a05a
	ld hl,0c64ah		;a05d
	call 0606ah		;a060
	ld hl,0c68ah		;a063
	call 0606ah		;a066
	ret			;a069
	ld e,(hl)		;a06a
	ld a,b			;a06b
	call 0643ah		;a06c
	inc hl			;a06f
	inc b			;a070
	ld e,(hl)		;a071
	ld a,b			;a072
	call 0643ah		;a073
	inc hl			;a076
	ld e,(hl)		;a077
	ld a,c			;a078
	inc b			;a079
	inc c			;a07a
	inc hl			;a07b
	bit 3,(hl)		;a07c
	ret nz			;a07e
	call 0643ah		;a07f
	bit 2,(hl)		;a082
	ret z			;a084
	set 3,(hl)		;a085
	ret			;a087
	ld hl,0c85bh		;a088
	bit 0,(hl)		;a08b
	jr z,la09bh		;a08d
	res 0,(hl)		;a08f
	set 1,(hl)		;a091
	ld a,(0c859h)		;a093
	ld e,a			;a096
	ld a,006h		;a097
	jr la0b1h		;a099
la09bh:
	ld a,(0c680h)		;a09b
	cp 01ah			;a09e
	ret z			;a0a0
	bit 1,(hl)		;a0a1
	ret nz			;a0a3
	bit 2,(hl)		;a0a4
	ret z			;a0a6
	res 2,(hl)		;a0a7
	set 3,(hl)		;a0a9
	ld a,(0c85ah)		;a0ab
	ld e,a			;a0ae
	ld a,006h		;a0af
la0b1h:
	call 0643ah		;a0b1
	ret			;a0b4
	ld hl,0c85bh		;a0b5
	bit 7,(hl)		;a0b8
	ret z			;a0ba
	res 7,(hl)		;a0bb
	ld a,(0c85dh)		;a0bd
	ld e,a			;a0c0
	ld a,00bh		;a0c1
	call 0643ah		;a0c3
	bit 6,(hl)		;a0c6
	ret z			;a0c8
	res 6,(hl)		;a0c9
	ld a,(0c85eh)		;a0cb
	ld e,a			;a0ce
	ld a,00ch		;a0cf
	call 0643ah		;a0d1
	bit 5,(hl)		;a0d4
	ret z			;a0d6
	res 5,(hl)		;a0d7
	ld a,(0c85ch)		;a0d9
	ld e,a			;a0dc
	ld a,00dh		;a0dd
	call 0643ah		;a0df
	ret			;a0e2
	ld hl,0c60dh		;a0e3
	ld a,(hl)		;a0e6
	ld hl,06117h		;a0e7
	call 06110h		;a0ea
	ld b,(hl)		;a0ed
	ld hl,0c64dh		;a0ee
	ld a,(hl)		;a0f1
	ld hl,0611bh		;a0f2
	call 06110h		;a0f5
	ld c,(hl)		;a0f8
	ld hl,0c68dh		;a0f9
	ld a,(hl)		;a0fc
	ld hl,0611fh		;a0fd
	call 06110h		;a100
	ld a,(hl)		;a103
	or b			;a104
	or c			;a105
	ld e,a			;a106
	ld (0c880h),a		;a107
	ld a,007h		;a10a
	call 0643ah		;a10c
	ret			;a10f
	and 003h		;a110
	ld e,a			;a112
	ld d,000h		;a113
	add hl,de		;a115
	ret			;a116
	adc a,c			;a117
	add a,c			;a118
	adc a,b			;a119
	add a,b			;a11a
	sub d			;a11b
	add a,d			;a11c
	sub b			;a11d
	add a,b			;a11e
	and h			;a11f
	add a,h			;a120
	and b			;a121
	add a,b			;a122
	call 06130h		;a123
	call 06235h		;a126
	call 06287h		;a129
	call 06348h		;a12c
	ret			;a12f
	ld ix,0c85fh		;a130
	ld bc,0c86bh		;a134
	ld de,0c861h		;a137
	ld hl,0c6cah		;a13a
	ld a,(de)		;a13d
	res 0,(ix+000h)		;a13e
	cp (hl)			;a142
	jr z,la14bh		;a143
	set 0,(ix+000h)		;a145
	ld a,(hl)		;a149
	ld (de),a		;a14a
la14bh:
	inc de			;a14b
	inc hl			;a14c
	ld a,(de)		;a14d
	res 1,(ix+000h)		;a14e
	cp (hl)			;a152
	jr z,la15bh		;a153
	set 1,(ix+000h)		;a155
	ld a,(hl)		;a159
	ld (de),a		;a15a
la15bh:
	inc de			;a15b
	inc hl			;a15c
	res 2,(ix+001h)		;a15d
	ld a,(bc)		;a161
	cp (hl)			;a162
	jr z,la16bh		;a163
	set 2,(ix+001h)		;a165
	ld a,(hl)		;a169
	ld (bc),a		;a16a
la16bh:
	inc bc			;a16b
	ld hl,0c70ah		;a16c
	ld a,(de)		;a16f
	res 2,(ix+000h)		;a170
	cp (hl)			;a174
	jr z,la17dh		;a175
	set 2,(ix+000h)		;a177
	ld a,(hl)		;a17b
	ld (de),a		;a17c
la17dh:
	inc de			;a17d
	inc hl			;a17e
	ld a,(de)		;a17f
	res 3,(ix+000h)		;a180
	cp (hl)			;a184
	jr z,la18dh		;a185
	set 3,(ix+000h)		;a187
	ld a,(hl)		;a18b
	ld (de),a		;a18c
la18dh:
	inc de			;a18d
	inc hl			;a18e
	res 3,(ix+001h)		;a18f
	ld a,(bc)		;a193
	cp (hl)			;a194
	jr z,la19dh		;a195
	set 3,(ix+001h)		;a197
	ld a,(hl)		;a19b
	ld (bc),a		;a19c
la19dh:
	inc bc			;a19d
	ld hl,0c74ah		;a19e
	ld a,(de)		;a1a1
	res 4,(ix+000h)		;a1a2
	cp (hl)			;a1a6
	jr z,la1afh		;a1a7
	set 4,(ix+000h)		;a1a9
	ld a,(hl)		;a1ad
	ld (de),a		;a1ae
la1afh:
	inc de			;a1af
	inc hl			;a1b0
	ld a,(de)		;a1b1
	res 5,(ix+000h)		;a1b2
	cp (hl)			;a1b6
	jr z,la1bfh		;a1b7
	set 5,(ix+000h)		;a1b9
	ld a,(hl)		;a1bd
	ld (de),a		;a1be
la1bfh:
	inc de			;a1bf
	inc hl			;a1c0
	res 4,(ix+001h)		;a1c1
	ld a,(bc)		;a1c5
	cp (hl)			;a1c6
	jr z,la1cfh		;a1c7
	set 4,(ix+001h)		;a1c9
	ld a,(hl)		;a1cd
	ld (bc),a		;a1ce
la1cfh:
	inc bc			;a1cf
	ld hl,0c78ah		;a1d0
	ld a,(de)		;a1d3
	res 6,(ix+000h)		;a1d4
	cp (hl)			;a1d8
	jr z,la1e1h		;a1d9
	set 6,(ix+000h)		;a1db
	ld a,(hl)		;a1df
	ld (de),a		;a1e0
la1e1h:
	inc de			;a1e1
	inc hl			;a1e2
	ld a,(de)		;a1e3
	res 7,(ix+000h)		;a1e4
	cp (hl)			;a1e8
	jr z,la1f1h		;a1e9
	set 7,(ix+000h)		;a1eb
	ld a,(hl)		;a1ef
	ld (de),a		;a1f0
la1f1h:
	inc de			;a1f1
	inc hl			;a1f2
	res 5,(ix+001h)		;a1f3
	ld a,(bc)		;a1f7
	cp (hl)			;a1f8
	jr z,la201h		;a1f9
	set 5,(ix+001h)		;a1fb
	ld a,(hl)		;a1ff
	ld (bc),a		;a200
la201h:
	inc bc			;a201
	ld hl,0c7cah		;a202
	ld a,(de)		;a205
	res 0,(ix+001h)		;a206
	cp (hl)			;a20a
	jr z,la213h		;a20b
	set 0,(ix+001h)		;a20d
	ld a,(hl)		;a211
	ld (de),a		;a212
la213h:
	inc de			;a213
	inc hl			;a214
	ld a,(de)		;a215
	res 1,(ix+001h)		;a216
	cp (hl)			;a21a
	jr z,la223h		;a21b
	set 1,(ix+001h)		;a21d
	ld a,(hl)		;a221
	ld (de),a		;a222
la223h:
	inc de			;a223
	inc hl			;a224
	res 6,(ix+001h)		;a225
	ld a,(bc)		;a229
	cp (hl)			;a22a
	jr z,la233h		;a22b
	set 6,(ix+001h)		;a22d
	ld a,(hl)		;a231
	ld (bc),a		;a232
la233h:
	inc bc			;a233
	ret			;a234
	ld e,000h		;a235
	ld hl,0c6cdh		;a237
	ld c,001h		;a23a
	ld a,(hl)		;a23c
	or a			;a23d
	jr z,la241h		;a23e
	ld a,c			;a240
la241h:
	or e			;a241
	ld e,a			;a242
	ld hl,0c70dh		;a243
	sla c			;a246
	ld a,(hl)		;a248
	or a			;a249
	jr z,la24dh		;a24a
	ld a,c			;a24c
la24dh:
	or e			;a24d
	ld e,a			;a24e
	ld hl,0c74dh		;a24f
	sla c			;a252
	ld a,(hl)		;a254
	or a			;a255
	jr z,la259h		;a256
	ld a,c			;a258
la259h:
	or e			;a259
	ld e,a			;a25a
	ld hl,0c78dh		;a25b
	sla c			;a25e
	ld a,(hl)		;a260
	or a			;a261
	jr z,la265h		;a262
	ld a,c			;a264
la265h:
	or e			;a265
	ld e,a			;a266
	ld hl,0c7cdh		;a267
	sla c			;a26a
	ld a,(hl)		;a26c
	or a			;a26d
	jr z,la271h		;a26e
	ld a,c			;a270
la271h:
	or e			;a271
	ld e,a			;a272
	ld hl,0c870h		;a273
	ld a,(hl)		;a276
	cp e			;a277
	jr z,la281h		;a278
	ld (hl),e		;a27a
	ld hl,0c860h		;a27b
	set 7,(hl)		;a27e
	ret			;a280
la281h:
	ld hl,0c860h		;a281
	res 7,(hl)		;a284
	ret			;a286
	ld ix,0c85fh		;a287
	ld hl,0c861h		;a28b
	ld de,09880h		;a28e
	bit 0,(ix+000h)		;a291
	jr z,la29ah		;a295
	call 0633fh		;a297
la29ah:
	inc hl			;a29a
	inc de			;a29b
	bit 1,(ix+000h)		;a29c
	jr z,la2a5h		;a2a0
	call 0633fh		;a2a2
la2a5h:
	inc hl			;a2a5
	inc de			;a2a6
	bit 2,(ix+000h)		;a2a7
	jr z,la2b0h		;a2ab
	call 0633fh		;a2ad
la2b0h:
	inc hl			;a2b0
	inc de			;a2b1
	bit 3,(ix+000h)		;a2b2
	jr z,la2bbh		;a2b6
	call 0633fh		;a2b8
la2bbh:
	inc hl			;a2bb
	inc de			;a2bc
	bit 4,(ix+000h)		;a2bd
	jr z,la2c6h		;a2c1
	call 0633fh		;a2c3
la2c6h:
	inc hl			;a2c6
	inc de			;a2c7
	bit 5,(ix+000h)		;a2c8
	jr z,la2d1h		;a2cc
	call 0633fh		;a2ce
la2d1h:
	inc hl			;a2d1
	inc de			;a2d2
	bit 6,(ix+000h)		;a2d3
	jr z,la2dch		;a2d7
	call 0633fh		;a2d9
la2dch:
	inc hl			;a2dc
	inc de			;a2dd
	bit 7,(ix+000h)		;a2de
	jr z,la2e7h		;a2e2
	call 0633fh		;a2e4
la2e7h:
	inc hl			;a2e7
	inc de			;a2e8
	bit 0,(ix+001h)		;a2e9
	jr z,la2f2h		;a2ed
	call 0633fh		;a2ef
la2f2h:
	inc hl			;a2f2
	inc de			;a2f3
	bit 1,(ix+001h)		;a2f4
	jr z,la2fdh		;a2f8
	call 0633fh		;a2fa
la2fdh:
	inc hl			;a2fd
	inc de			;a2fe
	bit 2,(ix+001h)		;a2ff
	jr z,la308h		;a303
	call 0633fh		;a305
la308h:
	inc hl			;a308
	inc de			;a309
	bit 3,(ix+001h)		;a30a
	jr z,la313h		;a30e
	call 0633fh		;a310
la313h:
	inc hl			;a313
	inc de			;a314
	bit 4,(ix+001h)		;a315
	jr z,la31eh		;a319
	call 0633fh		;a31b
la31eh:
	inc hl			;a31e
	inc de			;a31f
	bit 5,(ix+001h)		;a320
	jr z,la329h		;a324
	call 0633fh		;a326
la329h:
	inc hl			;a329
	inc de			;a32a
	bit 6,(ix+001h)		;a32b
	jr z,la334h		;a32f
	call 0633fh		;a331
la334h:
	inc hl			;a334
	inc de			;a335
	bit 7,(ix+001h)		;a336
	ret z			;a33a
	call 0633fh		;a33b
	ret			;a33e
	call 0642eh		;a33f
	ld a,(hl)		;a342
	ld (de),a		;a343
	call 06434h		;a344
	ret			;a347
	ld ix,0c6c0h		;a348
	bit 7,(ix+00fh)		;a34c
	jr z,la377h		;a350
	res 7,(ix+00fh)		;a352
	ld e,(ix+027h)		;a356
	ld d,(ix+028h)		;a359
	bit 6,(ix+00dh)		;a35c
	jr z,la370h		;a360
	set 7,(ix+00fh)		;a362
	ex de,hl		;a366
	ld de,09800h		;a367
	call 06418h		;a36a
	jp 06377h		;a36d
la370h:
	ex de,hl		;a370
	ld de,09800h		;a371
	call 063fdh		;a374
la377h:
	ld ix,0c700h		;a377
	bit 7,(ix+00fh)		;a37b
	jr z,la3a6h		;a37f
	res 7,(ix+00fh)		;a381
	ld e,(ix+027h)		;a385
	ld d,(ix+028h)		;a388
	bit 6,(ix+00dh)		;a38b
	jr z,la39fh		;a38f
	set 7,(ix+00fh)		;a391
	ex de,hl		;a395
	ld de,09820h		;a396
	call 06418h		;a399
	jp 063a6h		;a39c
la39fh:
	ex de,hl		;a39f
	ld de,09820h		;a3a0
	call 063fdh		;a3a3
la3a6h:
	ld ix,0c740h		;a3a6
	bit 7,(ix+00fh)		;a3aa
	jr z,la3d5h		;a3ae
	res 7,(ix+00fh)		;a3b0
	ld e,(ix+027h)		;a3b4
	ld d,(ix+028h)		;a3b7
	bit 6,(ix+00dh)		;a3ba
	jr z,la3ceh		;a3be
	set 7,(ix+00fh)		;a3c0
	ex de,hl		;a3c4
	ld de,09840h		;a3c5
	call 06418h		;a3c8
	jp 063d5h		;a3cb
la3ceh:
	ex de,hl		;a3ce
	ld de,09840h		;a3cf
	call 063fdh		;a3d2
la3d5h:
	ld ix,0c780h		;a3d5
	bit 7,(ix+00fh)		;a3d9
	ret z			;a3dd
	res 7,(ix+00fh)		;a3de
	ld e,(ix+027h)		;a3e2
	ld d,(ix+028h)		;a3e5
	bit 6,(ix+00dh)		;a3e8
	jr z,la3f9h		;a3ec
	set 7,(ix+00fh)		;a3ee
	ex de,hl		;a3f2
	ld de,09860h		;a3f3
	jp 06418h		;a3f6
la3f9h:
	ex de,hl		;a3f9
	ld de,09860h		;a3fa
	call 0642eh		;a3fd
	xor a			;a400
	ld (0988fh),a		;a401
	ld b,020h		;a404
la406h:
	ld a,(hl)		;a406
	ld (de),a		;a407
	inc hl			;a408
	inc de			;a409
	djnz la406h		;a40a
	ld hl,0988fh		;a40c
	ld de,0c870h		;a40f
	ld a,(de)		;a412
	ld (hl),a		;a413
	call 06434h		;a414
	ret			;a417
	call 0642eh		;a418
	ld b,020h		;a41b
la41dh:
	ld a,(hl)		;a41d
	ld (de),a		;a41e
	ld a,l			;a41f
	add a,(ix+031h)		;a420
	ld l,a			;a423
	jr nc,la427h		;a424
	inc h			;a426
la427h:
	inc de			;a427
	djnz la41dh		;a428
	call 06434h		;a42a
	ret			;a42d
	ld a,03fh		;a42e
	call 04c15h		;a430
	ret			;a433
	ld a,01dh		;a434
	call 04c15h		;a436
	ret			;a439
	out (0a0h),a		;a43a
	ex af,af'		;a43c
	ld a,e			;a43d
	out (0a1h),a		;a43e
	ex af,af'		;a440
	ret			;a441
	ld (02265h),hl		;a442
	ld h,l			;a445
	ld (04265h),hl		;a446
	ld h,l			;a449
	ld h,d			;a44a
	ld h,l			;a44b
	ld h,d			;a44c
	ld h,l			;a44d
	add a,d			;a44e
	ld h,l			;a44f
	add a,d			;a450
	ld h,l			;a451
	add a,d			;a452
	ld h,l			;a453
	add a,d			;a454
	ld h,l			;a455
	and d			;a456
	ld h,l			;a457
	jp nz,0e265h		;a458
	ld h,l			;a45b
	ld (bc),a		;a45c
	ld h,(hl)		;a45d
	ld (04266h),hl		;a45e
	ld h,(hl)		;a461
	ld b,d			;a462
	ld h,(hl)		;a463
	ld b,d			;a464
	ld h,(hl)		;a465
	ld b,d			;a466
	ld h,(hl)		;a467
	ld (04265h),hl		;a468
	ld h,(hl)		;a46b
	ld h,d			;a46c
	ld h,(hl)		;a46d
	add a,d			;a46e
	ld h,(hl)		;a46f
	add a,d			;a470
	ld h,(hl)		;a471
	and d			;a472
	ld h,(hl)		;a473
	jp nz,0e266h		;a474
	ld h,(hl)		;a477
	jp po,0e266h		;a478
	ld h,(hl)		;a47b
	ld (bc),a		;a47c
	ld h,a			;a47d
	ld (02267h),hl		;a47e
	ld h,a			;a481
	ld (02267h),hl		;a482
	ld h,a			;a485
	ld (02267h),hl		;a486
	ld h,a			;a489
	ld a,(03a67h)		;a48a
	ld h,a			;a48d
	ld e,d			;a48e
	ld h,a			;a48f
	ld a,d			;a490
	ld h,a			;a491
	sbc a,d			;a492
	ld h,a			;a493
	cp d			;a494
	ld h,a			;a495
	jp c,0da67h		;a496
	ld h,a			;a499
	jp m,0fa67h		;a49a
	ld h,a			;a49d
	jp m,0fa67h		;a49e
	ld h,a			;a4a1
	jp m,0fa67h		;a4a2
	ld h,a			;a4a5
	jp m,0fa67h		;a4a6
	ld h,a			;a4a9
	jp m,0fa67h		;a4aa
	ld h,a			;a4ad
	jp m,0fa67h		;a4ae
	ld h,a			;a4b1
	jp m,0fa67h		;a4b2
	ld h,a			;a4b5
	jp m,0fa67h		;a4b6
	ld h,a			;a4b9
	jp m,0fa67h		;a4ba
	ld h,a			;a4bd
	jp m,0fa67h		;a4be
	ld h,a			;a4c1
	ld a,(de)		;a4c2
	ld l,b			;a4c3
	ld a,(de)		;a4c4
	ld l,b			;a4c5
	ld a,(de)		;a4c6
	ld l,b			;a4c7
	ld a,(de)		;a4c8
	ld l,b			;a4c9
	ld a,(de)		;a4ca
	ld l,b			;a4cb
	ld a,(de)		;a4cc
	ld l,b			;a4cd
	ld a,(de)		;a4ce
	ld l,b			;a4cf
	ld a,(de)		;a4d0
	ld l,b			;a4d1
	ld a,(de)		;a4d2
	ld l,b			;a4d3
	ld a,(de)		;a4d4
	ld l,b			;a4d5
	ld a,(de)		;a4d6
	ld l,b			;a4d7
	ld a,(03a68h)		;a4d8
	ld l,b			;a4db
	ld a,(03a68h)		;a4dc
	ld l,b			;a4df
	ld a,(03a68h)		;a4e0
	ld l,b			;a4e3
	ld a,(03a68h)		;a4e4
	ld l,b			;a4e7
	ld e,d			;a4e8
	ld l,b			;a4e9
	ld e,d			;a4ea
	ld l,b			;a4eb
	ld a,d			;a4ec
	ld l,b			;a4ed
	ld a,d			;a4ee
	ld l,b			;a4ef
	ld a,d			;a4f0
	ld l,b			;a4f1
	ld a,d			;a4f2
	ld l,b			;a4f3
	ld a,d			;a4f4
	ld l,b			;a4f5
	ld a,d			;a4f6
	ld l,b			;a4f7
	sbc a,d			;a4f8
	ld l,b			;a4f9
	sbc a,d			;a4fa
	ld l,b			;a4fb
	sbc a,d			;a4fc
	ld l,b			;a4fd
	sbc a,d			;a4fe
	ld l,b			;a4ff
	sbc a,d			;a500
	ld l,b			;a501
	sbc a,d			;a502
	ld l,b			;a503
	cp d			;a504
	ld l,b			;a505
	cp d			;a506
	ld l,b			;a507
	cp d			;a508
	ld l,b			;a509
	cp d			;a50a
	ld l,b			;a50b
	jp c,0da68h		;a50c
	ld l,b			;a50f
	jp c,0da68h		;a510
	ld l,b			;a513
	jp c,0da68h		;a514
	ld l,b			;a517
	jp c,0da68h		;a518
	ld l,b			;a51b
	jp c,0da68h		;a51c
	ld l,b			;a51f
	jp c,00068h		;a520
	ret m			;a523
	ret p			;a524
	ret pe			;a525
	ret po			;a526
	ret c			;a527
	ret nc			;a528
	ret z			;a529
	ret nz			;a52a
	cp b			;a52b
	or b			;a52c
	xor b			;a52d
	and b			;a52e
	sbc a,b			;a52f
	sub b			;a530
	adc a,b			;a531
	add a,b			;a532
	ld a,b			;a533
	ld (hl),b		;a534
	ld l,b			;a535
	ld h,b			;a536
	ld e,b			;a537
	ld d,b			;a538
	ld c,b			;a539
	ld b,b			;a53a
	jr c,la56dh		;a53b
	jr z,la55fh		;a53d
	jr la551h		;a53f
	ex af,af'		;a541
	nop			;a542
	ret p			;a543
	ret po			;a544
	ret nc			;a545
	ret nz			;a546
	or b			;a547
	and b			;a548
	sub b			;a549
	add a,b			;a54a
	ld (hl),b		;a54b
	ld h,b			;a54c
	ld d,b			;a54d
	ld b,b			;a54e
	jr nc,$+34		;a54f
la551h:
	djnz la553h		;a551
la553h:
	ret p			;a553
	ret po			;a554
	ret nc			;a555
	ret nz			;a556
	or b			;a557
	and b			;a558
	sub b			;a559
	add a,b			;a55a
	ld (hl),b		;a55b
	ld h,b			;a55c
	ld d,b			;a55d
	ld b,b			;a55e
la55fh:
	jr nc,la581h		;a55f
	djnz la563h		;a561
la563h:
	add hl,de		;a563
	ld sp,05a47h		;a564
	ld l,d			;a567
	ld (hl),l		;a568
	ld a,l			;a569
	ld a,a			;a56a
	ld a,l			;a56b
	ld (hl),l		;a56c
la56dh:
	ld l,d			;a56d
	ld e,d			;a56e
	ld b,a			;a56f
	ld sp,00019h		;a570
	rst 20h			;a573
	rst 8			;a574
	cp c			;a575
	and (hl)		;a576
	sub (hl)		;a577
	adc a,e			;a578
	add a,e			;a579
	add a,b			;a57a
	add a,e			;a57b
	adc a,e			;a57c
	sub (hl)		;a57d
	and (hl)		;a57e
	cp c			;a57f
	rst 8			;a580
la581h:
	rst 20h			;a581
	nop			;a582
	add hl,de		;a583
	ld sp,05a47h		;a584
	ld l,d			;a587
	ld (hl),l		;a588
	ld a,l			;a589
	ld a,a			;a58a
	ld a,l			;a58b
	ld (hl),l		;a58c
	ld l,d			;a58d
	ld e,d			;a58e
	ld b,a			;a58f
	ld sp,00019h		;a590
	ret po			;a593
	ret nz			;a594
	and b			;a595
	add a,b			;a596
	and b			;a597
	ret nz			;a598
	ret po			;a599
	nop			;a59a
	jr nz,la5ddh		;a59b
	ld h,b			;a59d
	ld a,a			;a59e
	ld h,b			;a59f
	ld b,b			;a5a0
	jr nz,la5a3h		;a5a1
la5a3h:
	add hl,de		;a5a3
	ld sp,05a47h		;a5a4
	ld l,d			;a5a7
	ld (hl),l		;a5a8
	ld a,l			;a5a9
	ld a,a			;a5aa
	ld a,l			;a5ab
	ld (hl),l		;a5ac
	ld l,d			;a5ad
	ld e,d			;a5ae
	ld b,a			;a5af
	ld sp,08019h		;a5b0
	sub b			;a5b3
	and b			;a5b4
	or b			;a5b5
	ret nz			;a5b6
	ret nc			;a5b7
	ret po			;a5b8
	ret p			;a5b9
	nop			;a5ba
	djnz la5ddh		;a5bb
	jr nc,la5ffh		;a5bd
	ld d,b			;a5bf
	ld h,b			;a5c0
	ld (hl),b		;a5c1
	nop			;a5c2
	add hl,de		;a5c3
	ld sp,05a47h		;a5c4
	ld l,d			;a5c7
	ld (hl),l		;a5c8
	ld a,l			;a5c9
	ld a,a			;a5ca
	ld a,l			;a5cb
	ld (hl),l		;a5cc
	ld l,d			;a5cd
	ld e,d			;a5ce
	ld b,a			;a5cf
	ld sp,08019h		;a5d0
	and b			;a5d3
	ret nz			;a5d4
	ret po			;a5d5
	nop			;a5d6
	jr nz,$+66		;a5d7
	ld h,b			;a5d9
	add a,b			;a5da
	and b			;a5db
	ret nz			;a5dc
la5ddh:
	ret po			;a5dd
	nop			;a5de
	jr nz,la621h		;a5df
	ld h,b			;a5e1
	ld bc,0402ah		;a5e2
	ld d,b			;a5e5
	ld e,h			;a5e6
	ld l,b			;a5e7
	ld (hl),b		;a5e8
	ld a,b			;a5e9
	ld a,a			;a5ea
	ld a,b			;a5eb
	ld (hl),b		;a5ec
	ld l,b			;a5ed
	ld e,h			;a5ee
	ld d,b			;a5ef
	ld b,b			;a5f0
	ld hl,(0d6ffh)		;a5f1
	ret nz			;a5f4
	or b			;a5f5
	and h			;a5f6
	sbc a,b			;a5f7
	sub b			;a5f8
	adc a,b			;a5f9
	add a,c			;a5fa
	adc a,b			;a5fb
	sub b			;a5fc
	sbc a,b			;a5fd
	and h			;a5fe
la5ffh:
	or b			;a5ff
	ret nz			;a600
	sub 000h		;a601
	ld b,b			;a603
	ld a,a			;a604
	ld b,b			;a605
	ld bc,081c0h		;a606
	ret nz			;a609
	ld bc,07f40h		;a60a
	ld b,b			;a60d
	ld bc,001c0h		;a60e
	ld b,b			;a611
	ld bc,001e0h		;a612
	jr nz,la618h		;a615
	ret p			;a617
la618h:
	ld bc,00110h		;a618
	rst 38h			;a61b
	rst 38h			;a61c
	rst 38h			;a61d
	rst 38h			;a61e
	ld b,b			;a61f
	ld b,b			;a620
la621h:
	ld b,b			;a621
	ld a,b			;a622
	ld (hl),b		;a623
	ld l,b			;a624
	ld h,b			;a625
	ld e,b			;a626
	ld d,b			;a627
	ld c,b			;a628
	ld b,b			;a629
	jr c,la65ch		;a62a
	jr z,la64eh		;a62c
	jr la640h		;a62e
	ex af,af'		;a630
	nop			;a631
	ld a,b			;a632
	ld (hl),b		;a633
	ld l,b			;a634
	ld h,b			;a635
la636h:
	ld e,b			;a636
	ld d,b			;a637
	ld c,b			;a638
	ld b,b			;a639
	jr c,la66ch		;a63a
	jr z,la65eh		;a63c
	jr la650h		;a63e
la640h:
	ex af,af'		;a640
	nop			;a641
	nop			;a642
	jr nc,la695h		;a643
	ld h,b			;a645
	ld (hl),b		;a646
	ld h,b			;a647
	ld d,b			;a648
	jr nc,la64bh		;a649
la64bh:
	ret nc			;a64b
	or b			;a64c
	and b			;a64d
la64eh:
	sub b			;a64e
	and b			;a64f
la650h:
	or b			;a650
	ret nc			;a651
	nop			;a652
	ld b,b			;a653
	ld h,b			;a654
	ld (hl),b		;a655
	ld h,b			;a656
	ld b,b			;a657
	nop			;a658
	ret nz			;a659
	and b			;a65a
	sub b			;a65b
la65ch:
	and b			;a65c
	ret nz			;a65d
la65eh:
	nop			;a65e
la65fh:
	ld (hl),b		;a65f
	nop			;a660
	sub b			;a661
	jr nc,la6b4h		;a662
	ld d,b			;a664
	jr nc,la667h		;a665
la667h:
	nop			;a667
	djnz la6aah		;a668
	ld h,b			;a66a
	ld (hl),b		;a66b
la66ch:
	ld h,b			;a66c
	jr nc,la65fh		;a66d
	ret po			;a66f
	ret po			;a670
	nop			;a671
	jr nz,la694h		;a672
	djnz la636h		;a674
	and b			;a676
	sub b			;a677
	and b			;a678
	ret nz			;a679
	nop			;a67a
	nop			;a67b
	ret nc			;a67c
	or b			;a67d
	or b			;a67e
	ret nc			;a67f
	nop			;a680
	nop			;a681
	nop			;a682
	ld a,a			;a683
	nop			;a684
	add a,b			;a685
	and b			;a686
	ret nz			;a687
	ret c			;a688
	ret p			;a689
	ex af,af'		;a68a
	jr nz,la6bdh		;a68b
	ld b,b			;a68d
	ld d,b			;a68e
	ld h,b			;a68f
	ld (hl),b		;a690
	ld a,b			;a691
	ld a,h			;a692
	ld a,a			;a693
la694h:
	ld a,h			;a694
la695h:
	ld a,b			;a695
	ld (hl),b		;a696
	ld h,b			;a697
	ld d,b			;a698
	ld b,b			;a699
	jr nc,la6bch		;a69a
	ex af,af'		;a69c
	ret p			;a69d
	ret c			;a69e
	ret nz			;a69f
	and b			;a6a0
	add a,b			;a6a1
	ld a,a			;a6a2
	add a,b			;a6a3
	ld a,a			;a6a4
	add a,b			;a6a5
	ld a,a			;a6a6
	add a,b			;a6a7
	ld a,a			;a6a8
	add a,b			;a6a9
la6aah:
	ld a,a			;a6aa
	add a,b			;a6ab
	ld a,a			;a6ac
	add a,b			;a6ad
	ld a,a			;a6ae
	add a,b			;a6af
	ld a,a			;a6b0
	add a,b			;a6b1
	ld a,a			;a6b2
	add a,b			;a6b3
la6b4h:
	ld a,a			;a6b4
	add a,b			;a6b5
	ld a,a			;a6b6
	add a,b			;a6b7
	ld a,a			;a6b8
	add a,b			;a6b9
	ld a,a			;a6ba
	add a,b			;a6bb
la6bch:
	ld a,a			;a6bc
la6bdh:
	add a,b			;a6bd
	ld a,a			;a6be
	add a,b			;a6bf
	ld a,a			;a6c0
	add a,b			;a6c1
	ld a,a			;a6c2
	add a,b			;a6c3
	ld a,a			;a6c4
	add a,b			;a6c5
	ld a,a			;a6c6
	add a,b			;a6c7
	ld a,a			;a6c8
	add a,b			;a6c9
	nop			;a6ca
	nop			;a6cb
	nop			;a6cc
	nop			;a6cd
	nop			;a6ce
	nop			;a6cf
	nop			;a6d0
	nop			;a6d1
	nop			;a6d2
	nop			;a6d3
	nop			;a6d4
	nop			;a6d5
	nop			;a6d6
	nop			;a6d7
	nop			;a6d8
	nop			;a6d9
	ld a,a			;a6da
	add a,b			;a6db
la6dch:
	ld a,a			;a6dc
	add a,b			;a6dd
	ld a,a			;a6de
	add a,b			;a6df
	ld a,a			;a6e0
	add a,b			;a6e1
	add a,b			;a6e2
	adc a,(hl)		;a6e3
	and b			;a6e4
	ret nz			;a6e5
	ret po			;a6e6
	nop			;a6e7
	jr nz,$+65		;a6e8
	ld a,03ch		;a6ea
	ld a,(03137h)		;a6ec
	add hl,hl		;a6ef
	jr nz,$+30		;a6f0
	djnz la6f4h		;a6f2
la6f4h:
	and 0c0h		;a6f4
	ret nc			;a6f6
	nop			;a6f7
	jr nz,la739h		;a6f8
	djnz la6dch		;a6fa
	add a,b			;a6fc
la6fdh:
	ret nz			;a6fd
	nop			;a6fe
	jr nz,la701h		;a6ff
la701h:
	sub b			;a701
	nop			;a702
	ld (hl),b		;a703
	ld d,b			;a704
	jr nz,la757h		;a705
	ld (hl),b		;a707
	jr nc,la70ah		;a708
la70ah:
	ld d,b			;a70a
	ld a,a			;a70b
	ld h,b			;a70c
	djnz la73fh		;a70d
	ld b,b			;a70f
	nop			;a710
	or b			;a711
	djnz la774h		;a712
	nop			;a714
	ret po			;a715
	ret p			;a716
	nop			;a717
	or b			;a718
	sub b			;a719
	ret nz			;a71a
	djnz la6fdh		;a71b
	and b			;a71d
	ret nz			;a71e
	ret p			;a71f
	ret nz			;a720
	and b			;a721
	add a,b			;a722
	or b			;a723
	ret nz			;a724
	djnz la741h		;a725
	ld hl,(01a2ch)		;a727
	nop			;a72a
	ret po			;a72b
	ret nc			;a72c
	ret po			;a72d
	ld (07053h),hl		;a72e
	ld (hl),l		;a731
	ld (hl),b		;a732
	ld sp,080eah		;a733
	adc a,b			;a736
	adc a,d			;a737
	adc a,h			;a738
la739h:
	adc a,(hl)		;a739
	nop			;a73a
	nop			;a73b
	nop			;a73c
	nop			;a73d
	nop			;a73e
la73fh:
	ld (hl),b		;a73f
	ld (hl),b		;a740
la741h:
	nop			;a741
	nop			;a742
	add a,b			;a743
	add a,b			;a744
	add a,b			;a745
	nop			;a746
	nop			;a747
	nop			;a748
	nop			;a749
	ld (hl),b		;a74a
	ld (hl),b		;a74b
	ld (hl),b		;a74c
	nop			;a74d
	add a,b			;a74e
	add a,b			;a74f
	nop			;a750
	nop			;a751
	nop			;a752
	nop			;a753
	ld (hl),b		;a754
	ld (hl),b		;a755
	nop			;a756
la757h:
	nop			;a757
	add a,b			;a758
	add a,b			;a759
	nop			;a75a
	nop			;a75b
	nop			;a75c
	add a,b			;a75d
	nop			;a75e
	ld (hl),b		;a75f
	ld (hl),b		;a760
	ld (hl),b		;a761
	nop			;a762
	nop			;a763
	nop			;a764
	add a,b			;a765
la766h:
	nop			;a766
	nop			;a767
	nop			;a768
	add a,b			;a769
	add a,b			;a76a
	add a,b			;a76b
	add a,b			;a76c
la76dh:
	nop			;a76d
la76eh:
	add a,b			;a76e
	nop			;a76f
	nop			;a770
	nop			;a771
	nop			;a772
	add a,b			;a773
la774h:
	add a,b			;a774
	add a,b			;a775
	nop			;a776
	add a,b			;a777
	add a,b			;a778
	add a,b			;a779
	nop			;a77a
	jr nc,la76dh		;a77b
	jr nc,la7bfh		;a77d
	ld d,b			;a77f
	ld h,b			;a780
	ld h,b			;a781
	ld (hl),b		;a782
	ld a,c			;a783
	ld (hl),b		;a784
	ld a,b			;a785
	ld b,b			;a786
	nop			;a787
	nop			;a788
	ld c,070h		;a789
	add a,e			;a78b
	ld h,b			;a78c
	ld d,b			;a78d
	nop			;a78e
	nop			;a78f
	nop			;a790
	ld h,074h		;a791
	add a,d			;a793
	add a,h			;a794
	ld h,l			;a795
	ld h,h			;a796
	call po,08493h		;a797
	ld (hl),b		;a79a
	ld (hl),b		;a79b
	ld (hl),b		;a79c
	ld (hl),b		;a79d
	ld (hl),b		;a79e
	ld (hl),b		;a79f
	ld (hl),b		;a7a0
	ld (hl),b		;a7a1
	add a,b			;a7a2
	add a,b			;a7a3
	add a,b			;a7a4
	add a,b			;a7a5
	add a,b			;a7a6
	add a,b			;a7a7
	add a,b			;a7a8
	add a,b			;a7a9
	ld (hl),b		;a7aa
	ld (hl),b		;a7ab
	ld (hl),b		;a7ac
	add a,b			;a7ad
	add a,b			;a7ae
	add a,b			;a7af
	ld (hl),b		;a7b0
	ld (hl),b		;a7b1
	ld (hl),b		;a7b2
	ld (hl),b		;a7b3
	add a,b			;a7b4
	add a,b			;a7b5
	add a,b			;a7b6
	add a,b			;a7b7
	add a,b			;a7b8
	add a,b			;a7b9
	and b			;a7ba
	sub b			;a7bb
	sub b			;a7bc
	sub b			;a7bd
	and b			;a7be
la7bfh:
	and b			;a7bf
	or b			;a7c0
	or b			;a7c1
	ret nz			;a7c2
	ret nz			;a7c3
	ret nc			;a7c4
	ret nc			;a7c5
	ret po			;a7c6
	ret po			;a7c7
	ret p			;a7c8
	ret p			;a7c9
	nop			;a7ca
	nop			;a7cb
	djnz la7deh		;a7cc
	jr nz,la7f0h		;a7ce
	jr nc,la802h		;a7d0
	ld b,b			;a7d2
	ld b,b			;a7d3
	ld d,b			;a7d4
	ld d,b			;a7d5
	ld h,b			;a7d6
	ld h,b			;a7d7
	ld h,b			;a7d8
	ld d,b			;a7d9
	ld (hl),b		;a7da
	ld (hl),b		;a7db
	ld h,b			;a7dc
	add a,b			;a7dd
la7deh:
	sub b			;a7de
	sub b			;a7df
	add a,b			;a7e0
	add a,b			;a7e1
	ld b,b			;a7e2
	ld b,b			;a7e3
	jr nc,la766h		;a7e4
	sub b			;a7e6
	sub b			;a7e7
	add a,b			;a7e8
	add a,b			;a7e9
	jr nz,la80ch		;a7ea
	djnz la76eh		;a7ec
	sub b			;a7ee
	sub b			;a7ef
la7f0h:
	add a,b			;a7f0
	add a,b			;a7f1
	nop			;a7f2
	nop			;a7f3
	ret p			;a7f4
	add a,b			;a7f5
	sub b			;a7f6
	sub b			;a7f7
	add a,b			;a7f8
	add a,b			;a7f9
	nop			;a7fa
	ld a,a			;a7fb
	nop			;a7fc
	add a,b			;a7fd
	and b			;a7fe
	ret nz			;a7ff
	ret c			;a800
	ret p			;a801
la802h:
	ex af,af'		;a802
	jr nz,la835h		;a803
	ld b,b			;a805
	ld d,b			;a806
	ld h,b			;a807
	ld (hl),b		;a808
	ld a,b			;a809
	ld a,h			;a80a
	ld a,a			;a80b
la80ch:
	ld a,h			;a80c
	ld a,b			;a80d
	ld (hl),b		;a80e
	ld h,b			;a80f
	ld d,b			;a810
	ld b,b			;a811
	jr nc,la834h		;a812
	ex af,af'		;a814
	ret p			;a815
la816h:
	ret c			;a816
la817h:
	ret nz			;a817
	and b			;a818
	add a,b			;a819
	add a,b			;a81a
	sbc a,b			;a81b
	cp b			;a81c
la81dh:
	ret po			;a81d
	jr nz,la870h		;a81e
	ld l,b			;a820
	ld a,a			;a821
	ld l,b			;a822
	ld d,b			;a823
	jr nz,la816h		;a824
	ret nc			;a826
	cp b			;a827
	xor b			;a828
	sub b			;a829
	sub b			;a82a
	cp b			;a82b
	add a,b			;a82c
	nop			;a82d
	add a,b			;a82e
	ld b,b			;a82f
	add a,b			;a830
	ld a,a			;a831
la832h:
	add a,b			;a832
	ld b,b			;a833
la834h:
	add a,b			;a834
la835h:
	nop			;a835
	add a,b			;a836
	ret nz			;a837
	sub b			;a838
	sub b			;a839
	add a,b			;a83a
	ret nc			;a83b
	jr nz,la8bdh		;a83c
	ld b,b			;a83e
	nop			;a83f
	ret nz			;a840
	add a,b			;a841
	ret nc			;a842
	jr nz,la8c4h		;a843
	jr nc,la817h		;a845
	add a,b			;a847
	ret nc			;a848
	jr nc,la8cah		;a849
	jr nc,la81dh		;a84b
	add a,b			;a84d
	or b			;a84e
	ret po			;a84f
	jr la832h		;a850
	or b			;a852
	add a,b			;a853
	sub b			;a854
la855h:
	and b			;a855
	or b			;a856
	and b			;a857
	sub b			;a858
	add a,b			;a859
	add a,b			;a85a
	xor d			;a85b
	ret z			;a85c
	nop			;a85d
	inc h			;a85e
	ld b,b			;a85f
	ld e,h			;a860
	ld (hl),b		;a861
	ld a,a			;a862
	ld l,d			;a863
	ld c,d			;a864
	ld h,000h		;a865
	ret nc			;a867
	xor b			;a868
	adc a,h			;a869
	add a,b			;a86a
	xor d			;a86b
	ret z			;a86c
	nop			;a86d
	inc h			;a86e
	ld b,b			;a86f
la870h:
	ld e,h			;a870
	ld (hl),b		;a871
	ld a,a			;a872
	ld l,d			;a873
	ld c,d			;a874
	ld h,000h		;a875
	ret nc			;a877
	xor b			;a878
	adc a,h			;a879
	add a,b			;a87a
	nop			;a87b
	nop			;a87c
	nop			;a87d
	ld (hl),b		;a87e
	ld (hl),b		;a87f
	nop			;a880
	nop			;a881
	add a,b			;a882
	add a,b			;a883
	add a,b			;a884
	nop			;a885
	nop			;a886
	nop			;a887
	nop			;a888
	ld (hl),b		;a889
	ld (hl),b		;a88a
	ld (hl),b		;a88b
	add a,b			;a88c
	ld a,a			;a88d
	add a,b			;a88e
	add a,b			;a88f
	ret nz			;a890
	nop			;a891
	jr nz,la8c8h		;a892
	ld b,b			;a894
	inc (hl)		;a895
	jr nz,la898h		;a896
la898h:
	ret nz			;a898
	add a,b			;a899
	add a,b			;a89a
	call nz,0c0c0h		;a89b
	ld b,0e4h		;a89e
	jr nc,la8bch		;a8a0
	ld (hl),b		;a8a2
	ld a,(04040h)		;a8a3
	call m,0c016h		;a8a6
	sub b			;a8a9
	call nz,0c0c0h		;a8aa
	inc b			;a8ad
	ret pe			;a8ae
	jr nc,la8c9h		;a8af
	ld (hl),b		;a8b1
	inc a			;a8b2
	ld b,b			;a8b3
	ld b,b			;a8b4
	cp 013h			;a8b5
	ret po			;a8b7
	and b			;a8b8
	sub b			;a8b9
	add a,b			;a8ba
	add a,b			;a8bb
la8bch:
	ret pe			;a8bc
la8bdh:
	jr la8f7h		;a8bd
	ld h,(hl)		;a8bf
	ld a,b			;a8c0
	ld a,a			;a8c1
	add a,b			;a8c2
	add a,b			;a8c3
la8c4h:
	add a,b			;a8c4
	add a,b			;a8c5
	add a,b			;a8c6
	add a,b			;a8c7
la8c8h:
	add a,b			;a8c8
la8c9h:
	sbc a,h			;a8c9
la8cah:
	add a,b			;a8ca
	call c,02080h		;a8cb
	ret nc			;a8ce
	add a,b			;a8cf
	ld a,a			;a8d0
	add a,b			;a8d1
	ret nc			;a8d2
	jr nz,la855h		;a8d3
	call c,09c80h		;a8d5
	add a,b			;a8d8
	adc a,b			;a8d9
	add a,b			;a8da
	ld a,a			;a8db
	ld d,b			;a8dc
	ret p			;a8dd
	and d			;a8de
	and b			;a8df
	and (hl)		;a8e0
	ret nc			;a8e1
	call p,02022h		;a8e2
	ld b,h			;a8e5
	ld b,h			;a8e6
la8e7h:
	djnz $+38		;a8e7
	ld (0e2e0h),hl		;a8e9
	call m,0e0dch		;a8ec
	inc c			;a8ef
	inc d			;a8f0
	inc a			;a8f1
	ld e,h			;a8f2
	ld (hl),b		;a8f3
	ld h,b			;a8f4
	jr nc,la8e7h		;a8f5
la8f7h:
	sub b			;a8f7
	ret p			;a8f8
	and b			;a8f9
	cp 039h			;a8fa
	ret c			;a8fc
	cp 053h			;a8fd
	ret nc			;a8ff
	sub 039h		;a900
	ld hl,0690fh		;a902
	add a,l			;a905
	ld l,a			;a906
	jr nc,la90ah		;a907
	inc h			;a909
la90ah:
	ld a,(hl)		;a90a
	ld (0c8c8h),a		;a90b
	ret			;a90e
	jr $+25			;a90f
	rla			;a911
	ld e,01eh		;a912
	ld e,018h		;a914
	jr $+26			;a916
	rla			;a918
	ld e,01eh		;a919
	ld e,01eh		;a91b
	ld e,018h		;a91d
	jr la938h		;a91f
	jr la941h		;a921
	ld e,01eh		;a923
	ld e,017h		;a925
	ld e,01eh		;a927
	di			;a929
	push hl			;a92a
	push de			;a92b
	push bc			;a92c
	push ix			;a92d
	push iy			;a92f
	push af			;a931
	call 0693fh		;a932
	pop af			;a935
	pop iy			;a936
la938h:
	pop ix			;a938
	pop bc			;a93a
	pop de			;a93b
	pop hl			;a93c
	ei			;a93d
	ret			;a93e
	or a			;a93f
	ret z			;a940
la941h:
	ld c,a			;a941
	ld (0c87dh),a		;a942
	call 068fah		;a945
	ld a,c			;a948
	cp 080h			;a949
	jp c,06967h		;a94b
	cp 083h			;a94e
	jp z,06a1eh		;a950
	cp 084h			;a953
	jp z,06a26h		;a955
	cp 085h			;a958
	jp z,06a26h		;a95a
	cp 081h			;a95d
	jp z,06a3ah		;a95f
	cp 082h			;a962
	call z,06a73h		;a964
	ld hl,07a00h		;a967
	add a,c			;a96a
	ld e,a			;a96b
	ld d,000h		;a96c
	add hl,de		;a96e
	ld e,(hl)		;a96f
	inc hl			;a970
	ld d,(hl)		;a971
	ex de,hl		;a972
	ld a,(hl)		;a973
	ld b,a			;a974
	inc hl			;a975
	ld c,(hl)		;a976
	ex de,hl		;a977
	inc de			;a978
	cp 008h			;a979
	jp z,06a15h		;a97b
	cp 00ch			;a97e
	jp nz,06992h		;a980
	ld a,c			;a983
	ld hl,0c681h		;a984
	cp (hl)			;a987
	ret c			;a988
	call 069f2h		;a989
	ld hl,0c6c1h		;a98c
	jp 069f2h		;a98f
	ld a,c			;a992
	ld hl,0c601h		;a993
	cp (hl)			;a996
	ret c			;a997
	call 06a1eh		;a998
	ld a,b			;a99b
	cp 0f3h			;a99c
	jp nz,069c5h		;a99e
	ld hl,0c601h		;a9a1
	call 069f2h		;a9a4
	ld hl,0c641h		;a9a7
	call 069f2h		;a9aa
	ld hl,0c701h		;a9ad
	call 069f2h		;a9b0
	ld hl,0c741h		;a9b3
	call 069f2h		;a9b6
	ld hl,0c781h		;a9b9
	call 069f2h		;a9bc
	ld hl,0c7c1h		;a9bf
	jp 069f2h		;a9c2
	ld hl,0c601h		;a9c5
	call 069f2h		;a9c8
	ld hl,0c641h		;a9cb
	call 069f2h		;a9ce
	ld hl,0c681h		;a9d1
	call 069f2h		;a9d4
	ld hl,0c6c1h		;a9d7
	call 069f2h		;a9da
	ld hl,0c701h		;a9dd
	call 069f2h		;a9e0
	ld hl,0c741h		;a9e3
	call 069f2h		;a9e6
	ld hl,0c781h		;a9e9
	call 069f2h		;a9ec
	ld hl,0c7c1h		;a9ef
	ld (hl),c		;a9f2
	dec hl			;a9f3
	ld a,(0c87dh)		;a9f4
	ld (hl),a		;a9f7
	inc hl			;a9f8
	inc hl			;a9f9
	ld a,(de)		;a9fa
	ld (hl),a		;a9fb
	inc hl			;a9fc
	inc de			;a9fd
	ld a,(de)		;a9fe
	ld (hl),a		;a9ff
	inc hl			;aa00
	ld a,001h		;aa01
	ld (hl),a		;aa03
	inc de			;aa04
	inc hl			;aa05
	push bc			;aa06
	push de			;aa07
	ld d,h			;aa08
	ld e,l			;aa09
	inc de			;aa0a
	ld bc,0003ah		;aa0b
	ld (hl),000h		;aa0e
	ldir			;aa10
	pop de			;aa12
	pop bc			;aa13
	ret			;aa14
	ld a,c			;aa15
	ld hl,0c6c1h		;aa16
	cp (hl)			;aa19
	ret c			;aa1a
	jp 069f2h		;aa1b
	ld hl,0c840h		;aa1e
	res 0,(hl)		;aa21
	jp 06a33h		;aa23
	ld hl,0c840h		;aa26
	set 0,(hl)		;aa29
	res 4,(hl)		;aa2b
	ld hl,00a25h		;aa2d
	ld (0c854h),hl		;aa30
	ld hl,00000h		;aa33
	ld (0c856h),hl		;aa36
	ret			;aa39
	ld hl,0c840h		;aa3a
	res 1,(hl)		;aa3d
	bit 2,(hl)		;aa3f
	jp z,06a48h		;aa41
	res 2,(hl)		;aa44
	set 0,(hl)		;aa46
	ld hl,0c800h		;aa48
	ld de,0c6c0h		;aa4b
	ld bc,00040h		;aa4e
	ldir			;aa51
	ld hl,0c6cfh		;aa53
	set 7,(hl)		;aa56
	ld a,(0c871h)		;aa58
	ld (0c60dh),a		;aa5b
	ld a,(0c872h)		;aa5e
	ld (0c64dh),a		;aa61
	ld a,(0c873h)		;aa64
	ld (0c68dh),a		;aa67
	ld hl,0ffffh		;aa6a
	ld (0c85fh),hl		;aa6d
	jp 06287h		;aa70
	ld hl,0c840h		;aa73
	set 1,(hl)		;aa76
	bit 0,(hl)		;aa78
	jp z,06a81h		;aa7a
	res 0,(hl)		;aa7d
	set 2,(hl)		;aa7f
	ld hl,0c6c0h		;aa81
	ld de,0c800h		;aa84
	ld bc,00040h		;aa87
	ldir			;aa8a
	ld a,(0c60dh)		;aa8c
	ld (0c871h),a		;aa8f
	ld a,(0c64dh)		;aa92
	ld (0c872h),a		;aa95
	ld a,(0c68dh)		;aa98
	ld (0c873h),a		;aa9b
	xor a			;aa9e
	ld (0c60dh),a		;aa9f
	ld (0c64dh),a		;aaa2
	ld (0c68dh),a		;aaa5
	ld a,(0c60ch)		;aaa8
	res 4,a			;aaab
	ld (0c60ch),a		;aaad
	ld a,(0c64ch)		;aab0
	res 4,a			;aab3
	ld (0c64ch),a		;aab5
	ld a,(0c68ch)		;aab8
	res 4,a			;aabb
	ld (0c68ch),a		;aabd
	call 0642eh		;aac0
	ld hl,00000h		;aac3
	ld (0988bh),hl		;aac6
	ld (0988dh),hl		;aac9
	call 06434h		;aacc
	ld a,001h		;aacf
	ld (0c87dh),a		;aad1
	ld c,a			;aad4
	ret			;aad5
	ld a,(0c8c8h)		;aad6
	call 04c23h		;aad9
	ld a,(0c880h)		;aadc
	call 06106h		;aadf
	ld hl,0c840h		;aae2
	bit 1,(hl)		;aae5
	jp nz,06b5eh		;aae7
	ld a,(0c840h)		;aaea
	bit 0,a			;aaed
	call nz,071c6h		;aaef
	ld a,001h		;aaf2
	ld (0c858h),a		;aaf4
	ld ix,0c600h		;aaf7
	call 06b56h		;aafb
	ld a,002h		;aafe
	ld (0c858h),a		;ab00
	ld ix,0c640h		;ab03
	call 06b56h		;ab07
	ld a,004h		;ab0a
	ld (0c858h),a		;ab0c
	ld ix,0c680h		;ab0f
	call 06b56h		;ab13
	ld a,008h		;ab16
	ld (0c858h),a		;ab18
	ld ix,0c6c0h		;ab1b
	call 06b56h		;ab1f
	ld a,010h		;ab22
	ld (0c858h),a		;ab24
	ld ix,0c700h		;ab27
	call 06b56h		;ab2b
	ld a,020h		;ab2e
	ld (0c858h),a		;ab30
	ld ix,0c740h		;ab33
	call 06b56h		;ab37
	ld a,040h		;ab3a
	ld (0c858h),a		;ab3c
	ld ix,0c780h		;ab3f
	call 06b56h		;ab43
	ld a,080h		;ab46
	ld (0c858h),a		;ab48
	ld ix,0c7c0h		;ab4b
	call 06b56h		;ab4f
	call 06024h		;ab52
	ret			;ab55
	ld a,(ix+000h)		;ab56
	or a			;ab59
	call nz,06b76h		;ab5a
	ret			;ab5d
	ld a,008h		;ab5e
	ld (0c858h),a		;ab60
	ld ix,0c6c0h		;ab63
	call 06b56h		;ab67
	ld a,0bfh		;ab6a
	ld (0c880h),a		;ab6c
	call 07372h		;ab6f
	call 06024h		;ab72
	ret			;ab75
	dec (ix+004h)		;ab76
	ld a,(ix+004h)		;ab79
	cp 0ffh			;ab7c
	jr z,lab87h		;ab7e
	cp 000h			;ab80
	jr z,lab8dh		;ab82
	jp 06dd5h		;ab84
lab87h:
	dec (ix+02ch)		;ab87
	jp 06dd5h		;ab8a
lab8dh:
	ld a,(ix+02ch)		;ab8d
	or a			;ab90
	jp nz,06dd5h		;ab91
	ld l,(ix+002h)		;ab94
	ld h,(ix+003h)		;ab97
	ld a,(hl)		;ab9a
	cp 0ffh			;ab9b
	jp z,0724ah		;ab9d
	cp 0d0h			;aba0
	jr c,lababh		;aba2
	call 0728bh		;aba4
	inc hl			;aba7
	jp 06b9ah		;aba8
lababh:
	bit 0,(ix+009h)		;abab
	jp nz,06bc2h		;abaf
	bit 1,(ix+009h)		;abb2
	jp nz,06c38h		;abb6
	ld a,(ix+009h)		;abb9
	and 01ch		;abbc
	jp nz,06cb1h		;abbe
	ret			;abc1
	ld a,(hl)		;abc2
	and 00fh		;abc3
	ld b,a			;abc5
	ld a,(ix+014h)		;abc6
	jr z,labd4h		;abc9
	ld e,a			;abcb
labcch:
	add a,e			;abcc
	jr nc,labd2h		;abcd
	inc (ix+02ch)		;abcf
labd2h:
	djnz labcch		;abd2
labd4h:
	ld (ix+004h),a		;abd4
	ld a,(hl)		;abd7
	and 0f0h		;abd8
	rrca			;abda
	rrca			;abdb
	rrca			;abdc
	rrca			;abdd
	call 06d3ch		;abde
	bit 7,(ix+009h)		;abe1
	ret nz			;abe5
	cp 00ch			;abe6
	jr nc,lac22h		;abe8
	ld hl,06c2bh		;abea
	ld e,a			;abed
	ld d,000h		;abee
	add hl,de		;abf0
	ld l,(hl)		;abf1
	ld h,000h		;abf2
	ld a,(ix+016h)		;abf4
	or a			;abf7
	jr z,labfeh		;abf8
	ld b,a			;abfa
labfbh:
	add hl,hl		;abfb
	djnz labfbh		;abfc
labfeh:
	ld (ix+010h),l		;abfe
	ld (ix+011h),h		;ac01
	ld e,(ix+015h)		;ac04
	ld a,(0c840h)		;ac07
	and 011h		;ac0a
	call nz,07226h		;ac0c
	ld (ix+012h),e		;ac0f
	ld a,(ix+00dh)		;ac12
	and 0f0h		;ac15
	ld (ix+00dh),a		;ac17
	set 1,(ix+00dh)		;ac1a
	call 06d44h		;ac1e
	ret			;ac21
lac22h:
	ld a,(ix+00dh)		;ac22
	and 0f0h		;ac25
	ld (ix+00dh),a		;ac27
	ret			;ac2a
	ld l,d			;ac2b
	ld h,h			;ac2c
	ld e,(hl)		;ac2d
	ld e,c			;ac2e
	ld d,h			;ac2f
	ld c,a			;ac30
	ld c,d			;ac31
	ld b,(hl)		;ac32
	ld b,d			;ac33
	ccf			;ac34
	dec sp			;ac35
	jr c,lac6dh		;ac36
	ld a,(ix+00dh)		;ac38
	and 003h		;ac3b
	jr z,laca2h		;ac3d
	cp 001h			;ac3f
	jr z,lac79h		;ac41
	ld a,(hl)		;ac43
	bit 6,(ix+00eh)		;ac44
	jr nz,lac65h		;ac48
	bit 5,(ix+00eh)		;ac4a
	jr nz,lac6ah		;ac4e
	and 0f0h		;ac50
	ld b,a			;ac52
	xor (hl)		;ac53
	ld d,a			;ac54
	inc hl			;ac55
	ld a,(hl)		;ac56
	ld (ix+010h),a		;ac57
	ld (ix+011h),d		;ac5a
	ld a,b			;ac5d
	rrca			;ac5e
	rrca			;ac5f
	rrca			;ac60
	rrca			;ac61
	ld b,a			;ac62
	jr lac7dh		;ac63
lac65h:
	ld (ix+010h),a		;ac65
	jr lac91h		;ac68
lac6ah:
	and 0f0h		;ac6a
	rrca			;ac6c
lac6dh:
	rrca			;ac6d
	rrca			;ac6e
	rrca			;ac6f
	ld b,a			;ac70
	ld a,(hl)		;ac71
	and 00fh		;ac72
	ld (ix+011h),a		;ac74
	jr lac7dh		;ac77
lac79h:
	ld a,(hl)		;ac79
	and 00fh		;ac7a
	ld b,a			;ac7c
lac7dh:
	ld a,(0c858h)		;ac7d
	cp 008h			;ac80
	jr nc,lac8ch		;ac82
	bit 2,(ix+00dh)		;ac84
	jr z,lac8ch		;ac88
	ld b,010h		;ac8a
lac8ch:
	inc b			;ac8c
	inc b			;ac8d
	ld (ix+012h),b		;ac8e
lac91h:
	ld e,(ix+012h)		;ac91
	ld a,(0c840h)		;ac94
	and 011h		;ac97
	call nz,07226h		;ac99
	ld (ix+012h),e		;ac9c
	call 06d44h		;ac9f
laca2h:
	bit 7,(ix+009h)		;aca2
	ret nz			;aca6
	call 06d3ch		;aca7
	ld a,(ix+013h)		;acaa
	ld (ix+004h),a		;acad
	ret			;acb0
	set 7,(ix+009h)		;acb1
	call 06bc2h		;acb5
	ld b,a			;acb8
	call 06ce8h		;acb9
	ld a,b			;acbc
	add a,a			;acbd
	ld e,a			;acbe
	ld d,000h		;acbf
	add hl,de		;acc1
	ld e,(hl)		;acc2
	inc hl			;acc3
	ld d,(hl)		;acc4
	ex de,hl		;acc5
	ld a,(hl)		;acc6
	set 1,(ix+009h)		;acc7
	call 06b9ah		;accb
	res 1,(ix+009h)		;acce
	res 7,(ix+009h)		;acd2
	ld a,(ix+013h)		;acd6
	ld (ix+019h),a		;acd9
	inc hl			;acdc
	ld (ix+017h),l		;acdd
	ld (ix+018h),h		;ace0
	set 0,(ix+00eh)		;ace3
	ret			;ace7
	bit 2,(ix+009h)		;ace8
	jp nz,06cfdh		;acec
	bit 3,(ix+009h)		;acef
	jp nz,06d12h		;acf3
	bit 4,(ix+009h)		;acf6
	jp nz,06d27h		;acfa
	ld a,(ix+029h)		;acfd
	cp 000h			;ad00
	jp z,06d0ah		;ad02
	cp 001h			;ad05
	jp z,06d0eh		;ad07
	ld hl,09b00h		;ad0a
	ret			;ad0d
	ld hl,09bf3h		;ad0e
	ret			;ad11
	ld a,(ix+029h)		;ad12
	cp 000h			;ad15
	jp z,06d1fh		;ad17
	cp 001h			;ad1a
	jp z,06d23h		;ad1c
	ld hl,09bf3h		;ad1f
	ret			;ad22
	ld hl,09bf3h		;ad23
	ret			;ad26
	ld a,(ix+029h)		;ad27
	cp 000h			;ad2a
	jp z,06d34h		;ad2c
	cp 001h			;ad2f
	jp z,06d38h		;ad31
	ld hl,09bf3h		;ad34
	ret			;ad37
	ld hl,09bf3h		;ad38
	ret			;ad3b
	inc hl			;ad3c
	ld (ix+002h),l		;ad3d
	ld (ix+003h),h		;ad40
	ret			;ad43
	call 06e28h		;ad44
	res 4,(ix+00eh)		;ad47
	bit 4,(ix+03ch)		;ad4b
	jp z,06d56h		;ad4f
	set 6,(ix+03ch)		;ad52
	res 5,(ix+03ch)		;ad56
	ld a,(ix+00fh)		;ad5a
	and 0d7h		;ad5d
	ld (ix+00fh),a		;ad5f
	xor a			;ad62
	ld (ix+01dh),a		;ad63
	ld (ix+01eh),a		;ad66
	ld (ix+031h),a		;ad69
	ld (ix+033h),a		;ad6c
	res 6,(ix+030h)		;ad6f
	res 7,(ix+030h)		;ad73
	res 7,(ix+00dh)		;ad77
	res 5,(ix+030h)		;ad7b
	res 3,(ix+030h)		;ad7f
	ld (ix+01fh),a		;ad83
	ld (ix+020h),a		;ad86
	set 2,(ix+00fh)		;ad89
	ld a,(ix+012h)		;ad8d
	bit 7,(ix+00eh)		;ad90
	jr z,lad9dh		;ad94
	ld e,(ix+02fh)		;ad96
	sub e			;ad99
	call m,06dd3h		;ad9a
lad9dh:
	ld (ix+00ch),a		;ad9d
	set 1,(ix+030h)		;ada0
	ld a,(0c858h)		;ada4
	cp 008h			;ada7
	jr nc,ladb0h		;ada9
	bit 2,(ix+00dh)		;adab
	ret nz			;adaf
ladb0h:
	bit 0,(ix+030h)		;adb0
	jr z,ladc3h		;adb4
	res 2,(ix+030h)		;adb6
	res 1,(ix+030h)		;adba
	res 2,(ix+00fh)		;adbe
	ret			;adc2
ladc3h:
	bit 1,(ix+00fh)		;adc3
	ret z			;adc7
	ld a,(ix+025h)		;adc8
	ld (ix+00ch),a		;adcb
	res 2,(ix+00fh)		;adce
	ret			;add2
	xor a			;add3
	ret			;add4
	bit 0,(ix+00eh)		;add5
	jp nz,06e00h		;add9
	bit 4,(ix+03ch)		;addc
	call nz,06fach		;ade0
	bit 2,(ix+00eh)		;ade3
	call nz,06e43h		;ade7
	bit 0,(ix+00fh)		;adea
	call nz,06e91h		;adee
	bit 6,(ix+00fh)		;adf1
	call nz,07059h		;adf5
	bit 6,(ix+00dh)		;adf8
	call nz,07168h		;adfc
	ret			;adff
	dec (ix+019h)		;ae00
	ret nz			;ae03
	ld l,(ix+017h)		;ae04
	ld h,(ix+018h)		;ae07
	ld a,(hl)		;ae0a
	cp 0ffh			;ae0b
	jr z,lae17h		;ae0d
	set 7,(ix+009h)		;ae0f
	call 06cc7h		;ae13
	ret			;ae16
lae17h:
	res 0,(ix+00eh)		;ae17
	xor a			;ae1b
	ld (ix+00ch),a		;ae1c
	ld a,(ix+00dh)		;ae1f
	and 0f0h		;ae22
	ld (ix+00dh),a		;ae24
	ret			;ae27
	ld e,(ix+010h)		;ae28
	ld d,(ix+011h)		;ae2b
	bit 1,(ix+00eh)		;ae2e
	jr z,lae3ch		;ae32
	ld a,(ix+026h)		;ae34
	add a,e			;ae37
	ld e,a			;ae38
	jr nc,lae3ch		;ae39
	inc d			;ae3b
lae3ch:
	ld (ix+00ah),e		;ae3c
	ld (ix+00bh),d		;ae3f
	ret			;ae42
	inc (ix+01eh)		;ae43
	ld a,(ix+01eh)		;ae46
	ld b,(ix+00eh)		;ae49
	bit 4,b			;ae4c
	jr nz,lae62h		;ae4e
	bit 3,b			;ae50
	jr z,lae62h		;ae52
	cp (ix+01ah)		;ae54
	ret nz			;ae57
	ld (ix+01eh),000h	;ae58
	set 4,(ix+00eh)		;ae5c
	jr lae66h		;ae60
lae62h:
	cp (ix+01bh)		;ae62
	ret nz			;ae65
lae66h:
	ld e,(ix+00ah)		;ae66
	ld d,(ix+00bh)		;ae69
	ld b,(ix+01ch)		;ae6c
	ld a,(ix+01dh)		;ae6f
	cpl			;ae72
	ld (ix+01dh),a		;ae73
	and a			;ae76
	ld a,e			;ae77
	jr nz,lae81h		;ae78
	add a,b			;ae7a
	ld e,a			;ae7b
	jr nc,lae86h		;ae7c
	inc d			;ae7e
	jr lae86h		;ae7f
lae81h:
	sub b			;ae81
	ld e,a			;ae82
	jr nc,lae86h		;ae83
	dec d			;ae85
lae86h:
	ld (ix+00ah),e		;ae86
	ld (ix+00bh),d		;ae89
	ld (ix+01eh),000h	;ae8c
	ret			;ae90
	ld a,(0c858h)		;ae91
	cp 008h			;ae94
	jr nc,lae9dh		;ae96
	bit 2,(ix+00dh)		;ae98
	ret nz			;ae9c
lae9dh:
	call 06ea4h		;ae9d
	ld (ix+00ch),e		;aea0
	ret			;aea3
	ld e,(ix+00ch)		;aea4
	inc (ix+01fh)		;aea7
	ld b,(ix+01fh)		;aeaa
	ld a,(ix+02ch)		;aead
	or a			;aeb0
	jr nz,laebch		;aeb1
	ld a,(ix+024h)		;aeb3
	cp (ix+004h)		;aeb6
	call nc,06fa7h		;aeb9
laebch:
	bit 5,(ix+00fh)		;aebc
	jp nz,06f8dh		;aec0
	bit 3,(ix+00fh)		;aec3
	jr nz,laf41h		;aec7
	bit 2,(ix+00fh)		;aec9
	jr nz,laf21h		;aecd
	bit 1,(ix+030h)		;aecf
	jr nz,laf0eh		;aed3
	bit 2,(ix+030h)		;aed5
	jr nz,laef8h		;aed9
	ld a,(ix+035h)		;aedb
	ld d,a			;aede
	ld a,e			;aedf
	sub d			;aee0
	jp c,06eeah		;aee1
	cp (ix+034h)		;aee4
	jp nc,06eedh		;aee7
	ld a,(ix+034h)		;aeea
	ld e,a			;aeed
	ld a,b			;aeee
	cp (ix+025h)		;aeef
	ret nz			;aef2
	set 2,(ix+030h)		;aef3
	ret			;aef7
laef8h:
	ld a,(ix+012h)		;aef8
	sub (ix+036h)		;aefb
	ld c,a			;aefe
	ld a,e			;aeff
	inc a			;af00
	ld e,a			;af01
	cp c			;af02
	ret c			;af03
	set 2,(ix+00fh)		;af04
	ld (ix+01fh),000h	;af08
	ld e,c			;af0c
	ret			;af0d
laf0eh:
	ld a,e			;af0e
	inc a			;af0f
	ld e,a			;af10
	cp (ix+012h)		;af11
	ret c			;af14
	set 2,(ix+00fh)		;af15
	ld e,(ix+012h)		;af19
	ld (ix+01fh),000h	;af1c
	ret			;af20
laf21h:
	ld a,e			;af21
	dec a			;af22
	jp m,06f2fh		;af23
	cp (ix+034h)		;af26
	jp c,06f2fh		;af29
	ld e,a			;af2c
	jr laf33h		;af2d
	ld a,(ix+034h)		;af2f
	ld e,a			;af32
laf33h:
	ld a,b			;af33
	cp (ix+021h)		;af34
	ret c			;af37
	ld (ix+01fh),000h	;af38
	set 3,(ix+00fh)		;af3c
	ret			;af40
laf41h:
	bit 4,(ix+00fh)		;af41
	jp nz,06f70h		;af45
	ld a,b			;af48
	cp (ix+022h)		;af49
	ret nz			;af4c
	ld a,e			;af4d
	dec a			;af4e
	jp m,06f6bh		;af4f
	cp (ix+034h)		;af52
	jr c,laf6bh		;af55
	ld e,a			;af57
	inc (ix+020h)		;af58
	ld a,(ix+020h)		;af5b
	cp (ix+023h)		;af5e
	ld (ix+01fh),000h	;af61
	ret nz			;af65
	set 5,(ix+00fh)		;af66
	ret			;af6a
laf6bh:
	ld a,(ix+034h)		;af6b
	ld e,a			;af6e
	ret			;af6f
	ld a,(ix+022h)		;af70
	ld d,a			;af73
	ld a,e			;af74
	sub d			;af75
	jp c,06f7fh		;af76
	cp (ix+034h)		;af79
	jp nc,06f82h		;af7c
	ld a,(ix+034h)		;af7f
	ld e,a			;af82
	ld a,b			;af83
	cp (ix+023h)		;af84
	ret nz			;af87
	set 5,(ix+00fh)		;af88
	ret			;af8c
	ld a,(ix+024h)		;af8d
	cp (ix+004h)		;af90
	jr nc,laf96h		;af93
	ret			;af95
laf96h:
	ld a,e			;af96
	dec a			;af97
	jp m,06fa2h		;af98
	cp (ix+034h)		;af9b
	jr c,lafa2h		;af9e
	jr lafa5h		;afa0
lafa2h:
	ld a,(ix+034h)		;afa2
lafa5h:
	ld e,a			;afa5
	ret			;afa6
	set 5,(ix+00fh)		;afa7
	ret			;afab
	bit 6,(ix+03ch)		;afac
	ret z			;afb0
	bit 7,(ix+03ch)		;afb1
	jp nz,07000h		;afb5
	bit 5,(ix+03ch)		;afb8
	jp nz,06fd8h		;afbc
	ld l,(ix+010h)		;afbf
	ld h,(ix+011h)		;afc2
	ld b,(ix+03ah)		;afc5
lafc8h:
	ld d,000h		;afc8
	ld e,(ix+039h)		;afca
	add hl,de		;afcd
	jp nc,06fd3h		;afce
	sbc hl,de		;afd1
	djnz lafc8h		;afd3
	jp 0701dh		;afd5
	ld a,(ix+00ah)		;afd8
	ld d,(ix+00bh)		;afdb
	sbc a,(ix+039h)		;afde
	ld e,a			;afe1
	jp nc,06fefh		;afe2
	ld a,d			;afe5
	or a			;afe6
	jr nz,lafeeh		;afe7
	ld de,00001h		;afe9
	jr lafefh		;afec
lafeeh:
	dec d			;afee
lafefh:
	ld (ix+00ah),e		;afef
	ld (ix+00bh),d		;aff2
	dec (ix+03ah)		;aff5
	ld a,(ix+03ah)		;aff8
	or a			;affb
	ret nz			;affc
	jp 07042h		;affd
	bit 5,(ix+03ch)		;b000
	jp nz,07028h		;b004
	ld l,(ix+010h)		;b007
	ld h,(ix+011h)		;b00a
	ld b,(ix+03ah)		;b00d
lb010h:
	ld d,000h		;b010
	ld e,(ix+039h)		;b012
	sbc hl,de		;b015
	jp nc,0701bh		;b017
	add hl,de		;b01a
	djnz lb010h		;b01b
	ld (ix+00ah),l		;b01d
	ld (ix+00bh),h		;b020
	set 5,(ix+03ch)		;b023
	ret			;b027
	ld l,(ix+00ah)		;b028
	ld h,(ix+00bh)		;b02b
	ld d,000h		;b02e
	ld e,(ix+039h)		;b030
	add hl,de		;b033
	ld (ix+00ah),l		;b034
	ld (ix+00bh),h		;b037
	dec (ix+03ah)		;b03a
	ld a,(ix+03ah)		;b03d
	or a			;b040
	ret nz			;b041
	res 6,(ix+03ch)		;b042
	ld e,(ix+010h)		;b046
	ld d,(ix+011h)		;b049
	ld (ix+00ah),e		;b04c
	ld (ix+00bh),d		;b04f
	ld a,(ix+03bh)		;b052
	ld (ix+03ah),a		;b055
	ret			;b058
	ld a,(0c858h)		;b059
	cp 008h			;b05c
	jr nc,lb065h		;b05e
	bit 2,(ix+00dh)		;b060
	ret nz			;b064
lb065h:
	call 0706ch		;b065
	ld (ix+00ch),e		;b068
	ret			;b06b
	ld e,(ix+00ch)		;b06c
	inc (ix+01fh)		;b06f
	ld b,(ix+01fh)		;b072
	bit 3,(ix+00fh)		;b075
	jr nz,lb085h		;b079
	bit 2,(ix+00fh)		;b07b
	jp nz,06f21h		;b07f
	jp 06f0eh		;b082
lb085h:
	bit 3,(ix+030h)		;b085
	ret nz			;b089
	bit 5,(ix+00fh)		;b08a
	jp nz,07106h		;b08e
	ld a,(ix+023h)		;b091
	ld d,a			;b094
	bit 5,(ix+030h)		;b095
	ld a,(ix+037h)		;b099
	jr nz,lb0b8h		;b09c
	set 5,(ix+030h)		;b09e
	ld a,e			;b0a2
	sub (ix+038h)		;b0a3
	jr c,lb0adh		;b0a6
	cp (ix+034h)		;b0a8
	jr nc,lb0b0h		;b0ab
lb0adh:
	ld a,(ix+034h)		;b0ad
lb0b0h:
	ld (ix+020h),a		;b0b0
	ld a,e			;b0b3
	rlca			;b0b4
	rlca			;b0b5
	rlca			;b0b6
	rlca			;b0b7
lb0b8h:
	sub d			;b0b8
	jp c,070f6h		;b0b9
	ld (ix+037h),a		;b0bc
	rrca			;b0bf
	rrca			;b0c0
	rrca			;b0c1
	rrca			;b0c2
	and 00fh		;b0c3
	cp (ix+034h)		;b0c5
	jp c,070f6h		;b0c8
	ld a,(ix+037h)		;b0cb
	bit 3,a			;b0ce
	jr z,lb0d4h		;b0d0
	add a,010h		;b0d2
lb0d4h:
	rrca			;b0d4
	rrca			;b0d5
	rrca			;b0d6
	rrca			;b0d7
	and 00fh		;b0d8
	ld e,a			;b0da
	cp (ix+034h)		;b0db
	jr nz,lb0e4h		;b0de
lb0e0h:
	set 4,(ix+030h)		;b0e0
lb0e4h:
	ld a,b			;b0e4
	cp (ix+022h)		;b0e5
	ret nz			;b0e8
	set 5,(ix+00fh)		;b0e9
	res 5,(ix+030h)		;b0ed
	ld (ix+01fh),000h	;b0f1
	ret			;b0f5
	ld a,(ix+034h)		;b0f6
	rlca			;b0f9
	rlca			;b0fa
	rlca			;b0fb
	rlca			;b0fc
	ld (ix+037h),a		;b0fd
	ld a,(ix+034h)		;b100
	ld e,a			;b103
	jr lb0e0h		;b104
	ld a,(ix+024h)		;b106
	ld d,a			;b109
	bit 5,(ix+030h)		;b10a
	ld a,(ix+037h)		;b10e
	jr nz,lb127h		;b111
	set 5,(ix+030h)		;b113
	ld a,e			;b117
	bit 4,(ix+030h)		;b118
	jr z,lb123h		;b11c
	cp (ix+020h)		;b11e
	jr nc,lb162h		;b121
lb123h:
	rlca			;b123
	rlca			;b124
	rlca			;b125
	rlca			;b126
lb127h:
	add a,d			;b127
	ld (ix+037h),a		;b128
	jp c,0715ah		;b12b
	bit 3,a			;b12e
	jr z,lb136h		;b130
	add a,010h		;b132
	jr c,lb15ah		;b134
lb136h:
	rrca			;b136
	rrca			;b137
	rrca			;b138
	rrca			;b139
	and 00fh		;b13a
lb13ch:
	ld e,a			;b13c
	bit 4,(ix+030h)		;b13d
	jr z,lb148h		;b141
	cp (ix+020h)		;b143
	jr nc,lb14dh		;b146
lb148h:
	ld a,b			;b148
	cp (ix+022h)		;b149
	ret nz			;b14c
lb14dh:
	res 5,(ix+00fh)		;b14d
	res 5,(ix+030h)		;b151
	ld (ix+01fh),000h	;b155
	ret			;b159
lb15ah:
	ld (ix+037h),0f0h	;b15a
	ld a,00fh		;b15e
	jr lb13ch		;b160
lb162h:
	set 3,(ix+030h)		;b162
	jr lb14dh		;b166
	bit 7,(ix+030h)		;b168
	ret nz			;b16c
	bit 7,(ix+00dh)		;b16d
	jr nz,lb17fh		;b171
	ld (ix+033h),010h	;b173
	res 6,(ix+030h)		;b177
	set 7,(ix+00dh)		;b17b
lb17fh:
	ld a,(ix+00dh)		;b17f
	and 030h		;b182
	jr z,lb18eh		;b184
	cp 010h			;b186
	jr z,lb18eh		;b188
	cp 020h			;b18a
	jr z,lb18eh		;b18c
lb18eh:
	ld e,(ix+032h)		;b18e
	ld a,(ix+033h)		;b191
	add a,e			;b194
	jr nc,lb19bh		;b195
	set 6,(ix+030h)		;b197
lb19bh:
	ld (ix+033h),a		;b19b
	and 0f0h		;b19e
	rrca			;b1a0
	rrca			;b1a1
	rrca			;b1a2
	rrca			;b1a3
	bit 6,(ix+030h)		;b1a4
	jr z,lb1bah		;b1a8
	bit 4,(ix+031h)		;b1aa
	jr z,lb1b8h		;b1ae
	res 6,(ix+030h)		;b1b0
	and 00fh		;b1b4
	jr lb1bah		;b1b6
lb1b8h:
	add a,010h		;b1b8
lb1bah:
	ld (ix+031h),a		;b1ba
	cp 020h			;b1bd
	ret c			;b1bf
	and 01fh		;b1c0
	ld (ix+031h),a		;b1c2
	ret			;b1c5
	ld de,0c854h		;b1c6
	ld a,(de)		;b1c9
	ld b,a			;b1ca
	inc de			;b1cb
	ld a,(de)		;b1cc
	ld c,a			;b1cd
	ld hl,0c856h		;b1ce
	inc (hl)		;b1d1
	ld a,(hl)		;b1d2
	cp b			;b1d3
	ret nz			;b1d4
	ld (hl),000h		;b1d5
	inc hl			;b1d7
	inc (hl)		;b1d8
	ld a,(hl)		;b1d9
	cp c			;b1da
	ret nz			;b1db
	ld hl,0c840h		;b1dc
	res 0,(hl)		;b1df
	xor a			;b1e1
	ld hl,0c856h		;b1e2
	ld (hl),a		;b1e5
	inc hl			;b1e6
	ld (hl),a		;b1e7
	ld a,(0c640h)		;b1e8
	ld e,a			;b1eb
	ld a,(0c680h)		;b1ec
	cp e			;b1ef
	jr nz,lb200h		;b1f0
	ld ix,0c680h		;b1f2
	call 0724ah		;b1f6
	ld ix,0c6c0h		;b1f9
	call 0724ah		;b1fd
lb200h:
	ld de,00040h		;b200
	ld ix,0c600h		;b203
	call 0724ah		;b207
	add ix,de		;b20a
	call 0724ah		;b20c
	ld ix,0c700h		;b20f
	call 0724ah		;b213
	add ix,de		;b216
	call 0724ah		;b218
	add ix,de		;b21b
	call 0724ah		;b21d
	add ix,de		;b220
	call 0724ah		;b222
	ret			;b225
	ld a,(0c640h)		;b226
	ld b,a			;b229
	ld a,(0c680h)		;b22a
	cp b			;b22d
	jr z,lb236h		;b22e
	ld a,(0c858h)		;b230
	and 0f3h		;b233
	ret z			;b235
lb236h:
	bit 2,(ix+00dh)		;b236
	jr nz,lb247h		;b23a
	ld a,(0c857h)		;b23c
	ld b,a			;b23f
	ld a,e			;b240
	sub b			;b241
	ld e,000h		;b242
	ret m			;b244
	ld e,a			;b245
	ret			;b246
lb247h:
	ld e,000h		;b247
	ret			;b249
	xor a			;b24a
	ld (ix+000h),a		;b24b
	ld (ix+001h),a		;b24e
	ld (ix+005h),a		;b251
	ld (ix+006h),a		;b254
	ld (ix+00ah),a		;b257
	ld (ix+00bh),a		;b25a
	ld (ix+00ch),a		;b25d
	ld (ix+00dh),a		;b260
	ld (ix+00eh),a		;b263
	ld (ix+00fh),a		;b266
	ld a,(0c858h)		;b269
	cp 008h			;b26c
	ret nc			;b26e
	nop			;b26f
	cp 004h			;b270
	ld hl,0c85bh		;b272
	jr nz,lb286h		;b275
	res 0,(hl)		;b277
	res 1,(hl)		;b279
	bit 3,(hl)		;b27b
	ret z			;b27d
	bit 2,(hl)		;b27e
	ret z			;b280
	set 2,(hl)		;b281
	res 3,(hl)		;b283
	ret			;b285
lb286h:
	res 2,(hl)		;b286
	res 3,(hl)		;b288
	ret			;b28a
	cp 0e0h			;b28b
	jp c,0757ch		;b28d
	and 01fh		;b290
	push hl			;b292
	ld hl,072a0h		;b293
	add a,a			;b296
	ld e,a			;b297
	ld d,000h		;b298
	add hl,de		;b29a
	ld e,(hl)		;b29b
	inc hl			;b29c
	ld d,(hl)		;b29d
	ex de,hl		;b29e
	jp (hl)			;b29f
	sbc a,072h		;b2a0
	call p,0de72h		;b2a2
	ld (hl),d		;b2a5
	call p,01172h		;b2a6
	ld (hl),e		;b2a9
	dec sp			;b2aa
	ld (hl),e		;b2ab
	ld c,a			;b2ac
	ld (hl),e		;b2ad
	ld e,a			;b2ae
	ld (hl),e		;b2af
	ld (hl),c		;b2b0
	ld (hl),e		;b2b1
	add a,b			;b2b2
	ld (hl),e		;b2b3
	adc a,e			;b2b4
	ld (hl),e		;b2b5
	xor d			;b2b6
	ld (hl),e		;b2b7
	ld (iy+007h),e		;b2b8
	ld (hl),h		;b2bb
	ld hl,(03574h)		;b2bc
	ld (hl),h		;b2bf
	dec sp			;b2c0
	ld (hl),h		;b2c1
	ld b,l			;b2c2
	ld (hl),h		;b2c3
	ld h,b			;b2c4
	ld (hl),h		;b2c5
	ld l,a			;b2c6
	ld (hl),h		;b2c7
	ld (hl),l		;b2c8
	ld (hl),h		;b2c9
	ld a,e			;b2ca
	ld (hl),h		;b2cb
	add a,l			;b2cc
	ld (hl),h		;b2cd
	adc a,a			;b2ce
	ld (hl),h		;b2cf
	sbc a,d			;b2d0
	ld (hl),h		;b2d1
	cp 074h			;b2d2
	add hl,bc		;b2d4
	ld (hl),l		;b2d5
	ld de,02975h		;b2d6
	ld (hl),l		;b2d9
	ld b,e			;b2da
	ld (hl),l		;b2db
	ld b,(hl)		;b2dc
	ld (hl),l		;b2dd
	pop hl			;b2de
lb2dfh:
	res 6,(ix+00eh)		;b2df
	ld a,(hl)		;b2e3
	and 003h		;b2e4
	ld (ix+00dh),a		;b2e6
	ld b,a			;b2e9
	inc hl			;b2ea
	ld a,(hl)		;b2eb
	ld (ix+013h),a		;b2ec
	ld a,b			;b2ef
	or a			;b2f0
	ret nz			;b2f1
	dec hl			;b2f2
	ret			;b2f3
	pop hl			;b2f4
	ld a,(0c858h)		;b2f5
	cp 004h			;b2f8
	ld a,(0c85bh)		;b2fa
	jr nz,lb308h		;b2fd
	set 0,a			;b2ff
	res 1,a			;b301
	ld (0c85bh),a		;b303
	jr lb2dfh		;b306
lb308h:
	set 2,a			;b308
	res 3,a			;b30a
	ld (0c85bh),a		;b30c
	jr lb2dfh		;b30f
	pop hl			;b311
	inc hl			;b312
	ld a,(hl)		;b313
	and 01fh		;b314
	ld b,a			;b316
	ld a,(0c858h)		;b317
	cp 004h			;b31a
	ld a,b			;b31c
	jr nz,lb32dh		;b31d
	ld (0c859h),a		;b31f
	ld a,(0c85bh)		;b322
	set 0,a			;b325
	res 1,a			;b327
	ld (0c85bh),a		;b329
	ret			;b32c
lb32dh:
	ld (0c85ah),a		;b32d
	ld a,(0c85bh)		;b330
	set 2,a			;b333
	res 3,a			;b335
	ld (0c85bh),a		;b337
	ret			;b33a
	pop hl			;b33b
	inc hl			;b33c
	res 3,(ix+00dh)		;b33d
	ld a,(hl)		;b341
	ld (0c85ch),a		;b342
	ld de,0c85bh		;b345
	ld a,(de)		;b348
	set 5,a			;b349
	ld (de),a		;b34b
	jp 07350h		;b34c
	pop hl			;b34f
	inc hl			;b350
	ld a,(hl)		;b351
	ld (0c85eh),a		;b352
	ld de,0c85bh		;b355
	ld a,(de)		;b358
	set 6,a			;b359
	ld (de),a		;b35b
	jp 07360h		;b35c
	pop hl			;b35f
	inc hl			;b360
	ld a,(hl)		;b361
	ld (0c85dh),a		;b362
	ld de,0c85bh		;b365
	ld a,(de)		;b368
	set 7,a			;b369
	ld (de),a		;b36b
	set 2,(ix+00dh)		;b36c
	ret			;b370
	pop hl			;b371
	ld de,0c85bh		;b372
	xor a			;b375
	ld (de),a		;b376
	ld a,(ix+00dh)		;b377
	and 0f3h		;b37a
	ld (ix+00dh),a		;b37c
	ret			;b37f
	pop hl			;b380
	inc hl			;b381
	ld a,(hl)		;b382
	ld (ix+014h),a		;b383
	xor a			;b386
	ld (ix+02ch),a		;b387
	ret			;b38a
	pop hl			;b38b
	inc hl			;b38c
	ld a,(hl)		;b38d
	and 0f0h		;b38e
	jr z,lb39fh		;b390
	rrca			;b392
	rrca			;b393
	rrca			;b394
	rrca			;b395
	ld (ix+036h),a		;b396
	set 0,(ix+030h)		;b399
	jr lb3a3h		;b39d
lb39fh:
	res 0,(ix+030h)		;b39f
lb3a3h:
	ld a,(hl)		;b3a3
	and 00fh		;b3a4
	ld (ix+015h),a		;b3a6
	ret			;b3a9
	pop hl			;b3aa
	inc hl			;b3ab
	ld a,(ix+00fh)		;b3ac
	and 080h		;b3af
	ld (ix+00fh),a		;b3b1
	ld a,(hl)		;b3b4
	and 0f0h		;b3b5
	rrca			;b3b7
	rrca			;b3b8
	rrca			;b3b9
	rrca			;b3ba
	cp 008h			;b3bb
	jp nc,073c4h		;b3bd
	set 2,(ix+00fh)		;b3c0
	res 3,a			;b3c4
	inc a			;b3c6
	bit 2,(ix+00fh)		;b3c7
	jp nz,073d2h		;b3cb
	set 1,(ix+00fh)		;b3ce
	ld (ix+021h),a		;b3d2
	ld a,(hl)		;b3d5
	and 00fh		;b3d6
	cp 008h			;b3d8
	jp c,073e1h		;b3da
	set 4,(ix+00fh)		;b3dd
	res 3,a			;b3e1
	inc a			;b3e3
	ld (ix+022h),a		;b3e4
	inc hl			;b3e7
	ld a,(hl)		;b3e8
	and 0f0h		;b3e9
	rrca			;b3eb
	rrca			;b3ec
	rrca			;b3ed
	rrca			;b3ee
	ld (ix+023h),a		;b3ef
	ld a,(hl)		;b3f2
	and 00fh		;b3f3
	ld (ix+024h),a		;b3f5
	set 0,(ix+00fh)		;b3f8
	ret			;b3fc
	pop hl			;b3fd
	ld a,(ix+00fh)		;b3fe
	and 080h		;b401
	ld (ix+00fh),a		;b403
	ret			;b406
	pop hl			;b407
	inc hl			;b408
	ld a,(hl)		;b409
	and 0f0h		;b40a
	rrca			;b40c
	rrca			;b40d
	rrca			;b40e
	rrca			;b40f
	jp z,07421h		;b410
	ld (ix+035h),a		;b413
	ld a,(hl)		;b416
	and 00fh		;b417
	ld (ix+025h),a		;b419
	set 0,(ix+030h)		;b41c
	ret			;b420
	res 0,(ix+030h)		;b421
	ld a,(hl)		;b425
	ld (ix+025h),a		;b426
	ret			;b429
	pop hl			;b42a
	inc hl			;b42b
	ld a,(hl)		;b42c
	ld (ix+026h),a		;b42d
	set 1,(ix+00eh)		;b430
	ret			;b434
	pop hl			;b435
	res 1,(ix+00eh)		;b436
	ret			;b43a
	pop hl			;b43b
	ld a,(ix+00eh)		;b43c
	and 0e2h		;b43f
	ld (ix+00eh),a		;b441
	ret			;b444
	pop hl			;b445
	inc hl			;b446
	ld a,(ix+00eh)		;b447
	or 014h			;b44a
	ld (ix+00eh),a		;b44c
	ld a,(hl)		;b44f
	and 00fh		;b450
	ld (ix+01ch),a		;b452
	ld a,(hl)		;b455
	and 0f0h		;b456
	rrca			;b458
	rrca			;b459
	rrca			;b45a
	rrca			;b45b
	ld (ix+01bh),a		;b45c
	ret			;b45f
	pop hl			;b460
	inc hl			;b461
	ld a,(hl)		;b462
	ld (ix+01ah),a		;b463
	ld a,(ix+00eh)		;b466
	or 00ch			;b469
	ld (ix+00eh),a		;b46b
	ret			;b46e
	pop hl			;b46f
	res 3,(ix+00eh)		;b470
	ret			;b474
	pop hl			;b475
	set 6,(ix+00eh)		;b476
	ret			;b47a
	pop hl			;b47b
	ld a,l			;b47c
	ld (ix+02dh),a		;b47d
	ld a,h			;b480
	ld (ix+02eh),a		;b481
	ret			;b484
	pop hl			;b485
	ld a,(ix+00eh)		;b486
	and 09fh		;b489
	ld (ix+00eh),a		;b48b
	ret			;b48e
	pop hl			;b48f
	set 7,(ix+00eh)		;b490
	inc hl			;b494
	ld a,(hl)		;b495
	ld (ix+02fh),a		;b496
	ret			;b499
	pop hl			;b49a
	inc hl			;b49b
	ld a,(hl)		;b49c
	bit 7,a			;b49d
	jr nz,lb4c4h		;b49f
	set 7,(ix+00fh)		;b4a1
	res 7,(ix+00dh)		;b4a5
	res 6,(ix+00dh)		;b4a9
	res 3,(ix+03ch)		;b4ad
	ld de,06442h		;b4b1
	add a,a			;b4b4
	add a,e			;b4b5
	ld e,a			;b4b6
	jr nc,lb4bah		;b4b7
	inc d			;b4b9
lb4bah:
	ld a,(de)		;b4ba
	ld (ix+027h),a		;b4bb
	inc de			;b4be
	ld a,(de)		;b4bf
	ld (ix+028h),a		;b4c0
	ret			;b4c3
lb4c4h:
	set 7,(ix+00fh)		;b4c4
	set 6,(ix+00dh)		;b4c8
	set 7,(ix+00dh)		;b4cc
	res 3,(ix+03ch)		;b4d0
	ld a,(hl)		;b4d4
	and 07fh		;b4d5
	call 074b1h		;b4d7
	inc hl			;b4da
	ld a,(hl)		;b4db
	bit 7,a			;b4dc
	jr nz,lb4e6h		;b4de
	res 4,(ix+00dh)		;b4e0
	jr lb4eah		;b4e4
lb4e6h:
	set 4,(ix+00dh)		;b4e6
lb4eah:
	bit 6,a			;b4ea
	jr nz,lb4f4h		;b4ec
	res 5,(ix+00dh)		;b4ee
	jr lb4f8h		;b4f2
lb4f4h:
	set 5,(ix+00dh)		;b4f4
lb4f8h:
	and 03fh		;b4f8
	ld (ix+032h),a		;b4fa
	ret			;b4fd
	pop hl			;b4fe
	call 07535h		;b4ff
	ld (ix+007h),e		;b502
	ld (ix+008h),d		;b505
	ret			;b508
	pop hl			;b509
	ld l,(ix+007h)		;b50a
	ld h,(ix+008h)		;b50d
	ret			;b510
	pop hl			;b511
	inc hl			;b512
	ld a,(ix+005h)		;b513
	inc a			;b516
	cp (hl)			;b517
	jr z,lb524h		;b518
	ld (ix+005h),a		;b51a
	ld l,(ix+02dh)		;b51d
	ld h,(ix+02eh)		;b520
	ret			;b523
lb524h:
	ld (ix+005h),000h	;b524
	ret			;b528
	pop hl			;b529
	inc hl			;b52a
	ld a,(ix+006h)		;b52b
	inc a			;b52e
	cp (hl)			;b52f
	jr z,lb53ch		;b530
	ld (ix+006h),a		;b532
lb535h:
	inc hl			;b535
	ld e,(hl)		;b536
	inc hl			;b537
	ld d,(hl)		;b538
	ex de,hl		;b539
	dec hl			;b53a
	ret			;b53b
lb53ch:
	inc hl			;b53c
	inc hl			;b53d
	ld (ix+006h),000h	;b53e
	ret			;b542
	pop hl			;b543
	jr lb535h		;b544
	pop hl			;b546
	inc hl			;b547
	ld b,(ix+009h)		;b548
	ld a,(hl)		;b54b
	ld (ix+009h),a		;b54c
	cp 001h			;b54f
	ld a,b			;b551
	jp z,0756ch		;b552
	cp 001h			;b555
	ret nz			;b557
	ld a,(ix+00eh)		;b558
	ld (ix+02ah),a		;b55b
	ld a,(ix+00fh)		;b55e
	ld (ix+02bh),a		;b561
	xor a			;b564
	ld (ix+00eh),a		;b565
	ld (ix+00fh),a		;b568
	ret			;b56b
	cp 001h			;b56c
	ret z			;b56e
	ld a,(ix+02ah)		;b56f
	ld (ix+00eh),a		;b572
	ld a,(ix+02bh)		;b575
	ld (ix+00fh),a		;b578
	ret			;b57b
	and 00fh		;b57c
	push hl			;b57e
	ld hl,0758ch		;b57f
	add a,a			;b582
	ld e,a			;b583
	ld d,000h		;b584
	add hl,de		;b586
	ld e,(hl)		;b587
	inc hl			;b588
	ld d,(hl)		;b589
	ex de,hl		;b58a
	jp (hl)			;b58b
	xor h			;b58c
	ld (hl),l		;b58d
	xor h			;b58e
	ld (hl),l		;b58f
	xor h			;b590
	ld (hl),l		;b591
	xor h			;b592
	ld (hl),l		;b593
	xor h			;b594
	ld (hl),l		;b595
	xor h			;b596
	ld (hl),l		;b597
	or a			;b598
	ld (hl),l		;b599
	jp nc,0e975h		;b59a
	ld (hl),l		;b59d
	di			;b59e
	ld (hl),l		;b59f
	push af			;b5a0
	ld (hl),l		;b5a1
	rst 30h			;b5a2
	ld (hl),l		;b5a3
	cp 075h			;b5a4
	inc b			;b5a6
	halt			;b5a7
	rst 20h			;b5a8
	halt			;b5a9
	call p,0e176h		;b5aa
	ld a,(hl)		;b5ad
	and 00fh		;b5ae
	ld (ix+016h),a		;b5b0
	ld (ix+029h),a		;b5b3
	ret			;b5b6
	pop hl			;b5b7
	ld a,(ix+03ch)		;b5b8
	or 050h			;b5bb
	ld (ix+03ch),a		;b5bd
	res 7,(ix+03ch)		;b5c0
	inc hl			;b5c4
	ld a,(hl)		;b5c5
	ld (ix+039h),a		;b5c6
	inc hl			;b5c9
	ld a,(hl)		;b5ca
	ld (ix+03ah),a		;b5cb
	ld (ix+03bh),a		;b5ce
	ret			;b5d1
	pop hl			;b5d2
	ld a,(ix+03ch)		;b5d3
	or 0d0h			;b5d6
	ld (ix+03ch),a		;b5d8
	inc hl			;b5db
	ld a,(hl)		;b5dc
	ld (ix+039h),a		;b5dd
	inc hl			;b5e0
	ld a,(hl)		;b5e1
	ld (ix+03ah),a		;b5e2
	ld (ix+03bh),a		;b5e5
	ret			;b5e8
	pop hl			;b5e9
	ld a,(ix+03ch)		;b5ea
	and 00fh		;b5ed
	ld (ix+03ch),a		;b5ef
	ret			;b5f2
	pop hl			;b5f3
	ret			;b5f4
	pop hl			;b5f5
	ret			;b5f6
	pop hl			;b5f7
	inc hl			;b5f8
	ld a,(hl)		;b5f9
	ld (ix+034h),a		;b5fa
	ret			;b5fd
	pop hl			;b5fe
	xor a			;b5ff
	ld (ix+034h),a		;b600
	ret			;b603
	pop hl			;b604
	inc hl			;b605
	ld a,(ix+00fh)		;b606
	and 080h		;b609
	ld (ix+00fh),a		;b60b
	ld a,(hl)		;b60e
	and 0f0h		;b60f
	rrca			;b611
	rrca			;b612
	rrca			;b613
	rrca			;b614
	cp 008h			;b615
	jp nc,0761eh		;b617
	set 2,(ix+00fh)		;b61a
	res 3,a			;b61e
	inc a			;b620
	bit 2,(ix+00fh)		;b621
	jp nz,0762ch		;b625
	set 1,(ix+00fh)		;b628
	ld (ix+021h),a		;b62c
	ld a,(hl)		;b62f
	and 00fh		;b630
	ld (ix+022h),a		;b632
	inc hl			;b635
	ld a,(hl)		;b636
	and 0f0h		;b637
	rrca			;b639
	rrca			;b63a
	rrca			;b63b
	rrca			;b63c
	ld (ix+023h),a		;b63d
	ld a,(hl)		;b640
	and 00fh		;b641
	ld (ix+024h),a		;b643
	ld b,a			;b646
	ld a,(ix+023h)		;b647
	sub b			;b64a
	ld (ix+038h),a		;b64b
	ld e,000h		;b64e
	ld d,000h		;b650
	ld b,(ix+022h)		;b652
	ld a,(ix+023h)		;b655
lb658h:
	sub b			;b658
	jr c,lb664h		;b659
	inc d			;b65b
	ld (ix+023h),a		;b65c
	or a			;b65f
	jr z,lb681h		;b660
	jr lb658h		;b662
lb664h:
	ld a,b			;b664
	ld b,(ix+023h)		;b665
	sub b			;b668
	rlca			;b669
	rlca			;b66a
	rlca			;b66b
	rlca			;b66c
	and 0f0h		;b66d
	ld (ix+023h),a		;b66f
	ld b,(ix+022h)		;b672
lb675h:
	sub b			;b675
	jr c,lb681h		;b676
	inc e			;b678
	ld (ix+023h),a		;b679
	or a			;b67c
	jr z,lb681h		;b67d
	jr lb675h		;b67f
lb681h:
	ld a,e			;b681
	or a			;b682
	jr z,lb688h		;b683
	cpl			;b685
	and 00fh		;b686
lb688h:
	ld (ix+023h),a		;b688
	ld a,d			;b68b
	rlca			;b68c
	rlca			;b68d
	rlca			;b68e
	rlca			;b68f
	and 0f0h		;b690
	or (ix+023h)		;b692
	ld (ix+023h),a		;b695
	ld e,000h		;b698
	ld d,000h		;b69a
	ld b,(ix+022h)		;b69c
	ld a,(ix+024h)		;b69f
lb6a2h:
	sub b			;b6a2
	jr c,lb6aeh		;b6a3
	inc d			;b6a5
	ld (ix+024h),a		;b6a6
	or a			;b6a9
	jr z,lb6cbh		;b6aa
	jr lb6a2h		;b6ac
lb6aeh:
	ld a,b			;b6ae
	ld b,(ix+024h)		;b6af
	sub b			;b6b2
	rlca			;b6b3
	rlca			;b6b4
	rlca			;b6b5
	rlca			;b6b6
	and 0f0h		;b6b7
	ld (ix+024h),a		;b6b9
	ld b,(ix+022h)		;b6bc
lb6bfh:
	sub b			;b6bf
	jr c,lb6cbh		;b6c0
	inc e			;b6c2
	ld (ix+024h),a		;b6c3
	or a			;b6c6
	jr z,lb6cbh		;b6c7
	jr lb6bfh		;b6c9
lb6cbh:
	ld a,e			;b6cb
	or a			;b6cc
	jr z,lb6d2h		;b6cd
	cpl			;b6cf
	and 00fh		;b6d0
lb6d2h:
	ld (ix+024h),a		;b6d2
	ld a,d			;b6d5
	rlca			;b6d6
	rlca			;b6d7
	rlca			;b6d8
	rlca			;b6d9
	and 0f0h		;b6da
	or (ix+024h)		;b6dc
	ld (ix+024h),a		;b6df
	set 6,(ix+00fh)		;b6e2
	ret			;b6e6
	pop hl			;b6e7
	bit 1,(ix+009h)		;b6e8
	jp z,0747ch		;b6ec
	set 5,(ix+00eh)		;b6ef
	ret			;b6f3
	pop hl			;b6f4
	res 7,(ix+00eh)		;b6f5
	ret			;b6f9
	ex af,af'		;b6fa
	cp 0aeh			;b6fb
	ld a,d			;b6fd
	inc c			;b6fe
	djnz $-58		;b6ff
	ld a,d			;b701
	ret m			;b702
	ld a,d			;b703
	inc c			;b704
	ld d,038h		;b705
	ld a,e			;b707
	ld h,e			;b708
	ld a,e			;b709
	inc c			;b70a
	inc d			;b70b
	sub (hl)		;b70c
	ld a,e			;b70d
	ld sp,(0140ch)		;b70e
	ld b,l			;b712
	ld a,h			;b713
	ld b,l			;b714
	ld a,h			;b715
	inc c			;b716
	jr lb75eh		;b717
	ld a,h			;b719
	ld b,l			;b71a
	ld a,h			;b71b
	inc c			;b71c
	jr lb764h		;b71d
	ld a,h			;b71f
	ld b,l			;b720
	ld a,h			;b721
	inc c			;b722
	inc (hl)		;b723
	ld b,(hl)		;b724
	ld a,h			;b725
	adc a,a			;b726
lb727h:
	ld a,h			;b727
	inc c			;b728
	ld e,h			;b729
	call c,0297ch		;b72a
	ld a,l			;b72d
	inc c			;b72e
	ld h,b			;b72f
	ld a,l			;b730
	ld a,l			;b731
	ret c			;b732
	ld a,l			;b733
	inc c			;b734
	ld h,h			;b735
	inc l			;b736
	ld a,(hl)		;b737
	inc l			;b738
	ld a,(hl)		;b739
	inc c			;b73a
	ld l,b			;b73b
	dec l			;b73c
	ld a,(hl)		;b73d
	ld c,a			;b73e
	ld a,(hl)		;b73f
	inc c			;b740
	ld l,h			;b741
	add a,d			;b742
	ld a,(hl)		;b743
	xor c			;b744
	ld a,(hl)		;b745
	inc c			;b746
	ld l,h			;b747
	rst 30h			;b748
	ld a,(hl)		;b749
	ld sp,00c7fh		;b74a
	ld (hl),b		;b74d
	add a,(hl)		;b74e
	ld a,a			;b74f
lb750h:
	xor e			;b750
	ld a,a			;b751
	inc c			;b752
	jr nc,lb727h		;b753
	ld a,a			;b755
	inc c			;b756
	add a,b			;b757
	inc c			;b758
	jr nc,lb7ach		;b759
	add a,b			;b75b
	cp b			;b75c
	add a,b			;b75d
lb75eh:
	inc c			;b75e
	inc l			;b75f
	dec c			;b760
	add a,c			;b761
	ld d,h			;b762
	add a,c			;b763
lb764h:
	inc c			;b764
	ld c,h			;b765
	sbc a,a			;b766
	add a,c			;b767
	jp po,00c81h		;b768
	ld d,h			;b76b
	ld l,082h		;b76c
	sbc a,h			;b76e
	add a,d			;b76f
	inc c			;b770
	jr c,lb77eh		;b771
	add a,e			;b773
lb774h:
	ld a,(00c83h)		;b774
	inc h			;b777
	ld l,c			;b778
	add a,e			;b779
	sub h			;b77a
	add a,e			;b77b
	inc c			;b77c
	ld b,h			;b77d
lb77eh:
	pop bc			;b77e
	add a,e			;b77f
	rst 28h			;b780
	add a,e			;b781
	inc c			;b782
	jr z,lb7d7h		;b783
	add a,h			;b785
	ld d,d			;b786
	add a,h			;b787
	inc c			;b788
	ld b,h			;b789
	adc a,c			;b78a
	add a,h			;b78b
	ex af,af'		;b78c
	add a,l			;b78d
	inc c			;b78e
	ld c,h			;b78f
	add a,e			;b790
	add a,l			;b791
	push hl			;b792
	add a,l			;b793
	inc c			;b794
	jr nz,lb7e2h		;b795
	add a,(hl)		;b797
	ld l,h			;b798
	add a,(hl)		;b799
	inc c			;b79a
	ld b,h			;b79b
	ld l,082h		;b79c
	sbc a,h			;b79e
	add a,d			;b79f
	inc c			;b7a0
	ld d,b			;b7a1
	adc a,a			;b7a2
	add a,(hl)		;b7a3
	xor (hl)		;b7a4
	add a,(hl)		;b7a5
	inc c			;b7a6
	inc e			;b7a7
	rst 8			;b7a8
	add a,(hl)		;b7a9
	nop			;b7aa
	add a,a			;b7ab
lb7ach:
	inc c			;b7ac
	jr nz,lb7e2h		;b7ad
	add a,a			;b7af
	ld h,h			;b7b0
	add a,a			;b7b1
	inc c			;b7b2
	jr nz,lb750h		;b7b3
lb7b5h:
	add a,a			;b7b5
	ret			;b7b6
	add a,a			;b7b7
	inc c			;b7b8
	ld c,h			;b7b9
	ld sp,hl		;b7ba
	add a,a			;b7bb
	ld h,a			;b7bc
	adc a,b			;b7bd
	inc c			;b7be
	ld c,b			;b7bf
	ret c			;b7c0
	adc a,b			;b7c1
	ld l,l			;b7c2
	adc a,c			;b7c3
	inc c			;b7c4
	jr z,lb774h		;b7c5
	adc a,c			;b7c7
	pop bc			;b7c8
	adc a,c			;b7c9
	inc c			;b7ca
	jr z,lb7dfh		;b7cb
	adc a,d			;b7cd
	ld e,c			;b7ce
	adc a,d			;b7cf
	inc c			;b7d0
	inc a			;b7d1
	and d			;b7d2
	adc a,d			;b7d3
	cp c			;b7d4
	adc a,d			;b7d5
	inc c			;b7d6
lb7d7h:
	ld b,b			;b7d7
	rst 10h			;b7d8
	adc a,d			;b7d9
	call p,00c8ah		;b7da
	ld b,b			;b7dd
	inc d			;b7de
lb7dfh:
	adc a,e			;b7df
	cp e			;b7e0
	adc a,e			;b7e1
lb7e2h:
	inc c			;b7e2
	inc (hl)		;b7e3
	inc (hl)		;b7e4
	adc a,h			;b7e5
	ld h,b			;b7e6
	adc a,h			;b7e7
	inc c			;b7e8
	jr c,lb86ah		;b7e9
	adc a,h			;b7eb
	cp b			;b7ec
	adc a,h			;b7ed
	inc c			;b7ee
	ld b,b			;b7ef
	pop af			;b7f0
lb7f1h:
	adc a,h			;b7f1
	dec c			;b7f2
	adc a,l			;b7f3
	inc c			;b7f4
	ld b,b			;b7f5
	inc l			;b7f6
	adc a,l			;b7f7
	ld a,l			;b7f8
	adc a,l			;b7f9
	inc c			;b7fa
	ld c,b			;b7fb
	jp c,0028dh		;b7fc
	adc a,(hl)		;b7ff
	inc c			;b800
	jr c,lb82bh		;b801
	adc a,(hl)		;b803
	ld h,l			;b804
	adc a,(hl)		;b805
	inc c			;b806
	jr c,lb7b5h		;b807
	adc a,(hl)		;b809
	push bc			;b80a
	adc a,(hl)		;b80b
	inc c			;b80c
	jr c,lb827h		;b80d
	adc a,a			;b80f
	add a,e			;b810
	adc a,a			;b811
	inc c			;b812
	ld c,h			;b813
	ret p			;b814
	adc a,a			;b815
	cp b			;b816
	sub b			;b817
	inc c			;b818
	ld d,h			;b819
	add a,b			;b81a
	sub c			;b81b
	ret z			;b81c
	sub c			;b81d
	inc c			;b81e
	inc (hl)		;b81f
	dec c			;b820
	sub d			;b821
	ld h,c			;b822
	sub d			;b823
	inc c			;b824
	ld d,h			;b825
	or (hl)			;b826
lb827h:
	sub d			;b827
	or (hl)			;b828
	sub d			;b829
	inc c			;b82a
lb82bh:
	ld d,(hl)		;b82b
	or a			;b82c
	sub d			;b82d
	ld hl,00c93h		;b82e
	jr nz,lb7f1h		;b831
	sub e			;b833
	dec de			;b834
	sub h			;b835
	inc c			;b836
	ld bc,09affh		;b837
	rst 38h			;b83a
	sbc a,d			;b83b
	inc c			;b83c
	ld bc,09affh		;b83d
	rst 38h			;b840
	sbc a,d			;b841
	di			;b842
	sub b			;b843
	nop			;b844
	and b			;b845
	ld l,a			;b846
	and b			;b847
	xor e			;b848
	and b			;b849
	ex (sp),hl		;b84a
	and b			;b84b
	sub h			;b84c
	and c			;b84d
	jp m,0f3a1h		;b84e
	sub b			;b851
	dec b			;b852
	cp l			;b853
	ld l,d			;b854
	cp l			;b855
	push de			;b856
	cp l			;b857
	sub b			;b858
	cp (hl)			;b859
	ld (hl),h		;b85a
	cp a			;b85b
	xor (hl)		;b85c
	cp a			;b85d
	di			;b85e
	sub b			;b85f
	ld (hl),0abh		;b860
	ld a,0ach		;b862
	inc l			;b864
	xor (hl)		;b865
	in a,(0afh)		;b866
	halt			;b868
	or c			;b869
lb86ah:
	add a,d			;b86a
	or e			;b86b
	di			;b86c
	sub b			;b86d
	ld hl,(0bea5h)		;b86e
	and l			;b871
	or 0a6h			;b872
	ld a,a			;b874
	xor b			;b875
	or b			;b876
	xor c			;b877
	ld (hl),c		;b878
	xor e			;b879
	di			;b87a
	sub b			;b87b
	exx			;b87c
	xor l			;b87d
	scf			;b87e
	xor (hl)		;b87f
	call m,001aeh		;b880
	or b			;b883
	cp l			;b884
	or b			;b885
	xor (hl)		;b886
	or c			;b887
	di			;b888
	sub b			;b889
	sub d			;b88a
	or d			;b88b
	dec l			;b88c
	or e			;b88d
	jp pe,0eab3h		;b88e
	or h			;b891
	ei			;b892
	or l			;b893
	jp po,0f3b6h		;b894
	sub b			;b897
	sub (hl)		;b898
	and d			;b899
	ld b,e			;b89a
	and e			;b89b
	ld a,(hl)		;b89c
	and h			;b89d
	call p,045a5h		;b89e
	and a			;b8a1
	add a,e			;b8a2
	xor b			;b8a3
	di			;b8a4
	sub b			;b8a5
	sub h			;b8a6
	xor c			;b8a7
	ld d,e			;b8a8
	xor d			;b8a9
	ld e,l			;b8aa
	xor e			;b8ab
	ld c,l			;b8ac
	xor h			;b8ad
	ld h,d			;b8ae
	xor l			;b8af
	add a,(hl)		;b8b0
	xor (hl)		;b8b1
	di			;b8b2
	sub b			;b8b3
	xor c			;b8b4
	xor a			;b8b5
	ld h,(hl)		;b8b6
	or b			;b8b7
	ld c,d			;b8b8
	or c			;b8b9
	ld b,e			;b8ba
	or d			;b8bb
	sub l			;b8bc
	or e			;b8bd
	xor c			;b8be
	or h			;b8bf
	di			;b8c0
	sub b			;b8c1
	or c			;b8c2
	xor b			;b8c3
	jp (hl)			;b8c4
	xor b			;b8c5
	ld d,d			;b8c6
	xor c			;b8c7
	sbc a,d			;b8c8
	xor c			;b8c9
	ld b,b			;b8ca
	xor d			;b8cb
	cp e			;b8cc
	xor d			;b8cd
	di			;b8ce
	sub b			;b8cf
	ld bc,0369dh		;b8d0
	sbc a,(hl)		;b8d3
	and h			;b8d4
	sbc a,a			;b8d5
	inc b			;b8d6
	and c			;b8d7
	ld l,c			;b8d8
	and d			;b8d9
	ret			;b8da
	and e			;b8db
	di			;b8dc
	sub b			;b8dd
	rst 38h			;b8de
	sbc a,d			;b8df
	rst 38h			;b8e0
	sbc a,d			;b8e1
	rst 38h			;b8e2
	sbc a,d			;b8e3
	rst 38h			;b8e4
	sbc a,d			;b8e5
	rst 38h			;b8e6
	sbc a,d			;b8e7
	rst 38h			;b8e8
	sbc a,d			;b8e9
	di			;b8ea
	sub b			;b8eb
	rst 38h			;b8ec
	sbc a,d			;b8ed
	rst 38h			;b8ee
	sbc a,d			;b8ef
	rst 38h			;b8f0
	sbc a,d			;b8f1
	rst 38h			;b8f2
	sbc a,d			;b8f3
	rst 38h			;b8f4
	sbc a,d			;b8f5
	rst 38h			;b8f6
	sbc a,d			;b8f7
	di			;b8f8
	sub b			;b8f9
	rst 38h			;b8fa
	sbc a,d			;b8fb
	rst 38h			;b8fc
	sbc a,d			;b8fd
	rst 38h			;b8fe
	sbc a,d			;b8ff
	rst 38h			;b900
	sbc a,d			;b901
	rst 38h			;b902
	sbc a,d			;b903
	rst 38h			;b904
	sbc a,d			;b905
	rst 38h			;b906
	sub b			;b907
	sub 0b7h		;b908
	sub 0b7h		;b90a
	sub 0b7h		;b90c
	sub 0b7h		;b90e
	sub 0b7h		;b910
	sub 0b7h		;b912
	sub 0b7h		;b914
	sub 0b7h		;b916
	rst 38h			;b918
	sub b			;b919
	rst 10h			;b91a
	or a			;b91b
	or l			;b91c
	cp b			;b91d
	sub b			;b91e
	cp c			;b91f
	ld (hl),c		;b920
	cp d			;b921
	ld a,(de)		;b922
	cp h			;b923
	cp b			;b924
	cp h			;b925
	rst 30h			;b926
	cp l			;b927
	ld sp,hl		;b928
	cp (hl)			;b929
	rst 38h			;b92a
	sub b			;b92b
	nop			;b92c
	and b			;b92d
	ld a,d			;b92e
	and b			;b92f
	ld (hl),l		;b930
	and c			;b931
	cp b			;b932
	and c			;b933
	ccf			;b934
	and d			;b935
	ret z			;b936
	and e			;b937
	ld e,b			;b938
	and l			;b939
	call pe,0ffa6h		;b93a
	sub b			;b93d
	exx			;b93e
	or l			;b93f
	jp (hl)			;b940
	or l			;b941
	dec (hl)		;b942
	or (hl)			;b943
	add a,c			;b944
	or (hl)			;b945
	and h			;b946
	or (hl)			;b947
	call m,048b6h		;b948
	or a			;b94b
	sub e			;b94c
	or a			;b94d
	rst 38h			;b94e
	sub b			;b94f
	di			;b950
	sub h			;b951
	ld h,095h		;b952
	adc a,d			;b954
	sub l			;b955
	ld bc,02f96h		;b956
	sub (hl)		;b959
	ld e,e			;b95a
	sub (hl)		;b95b
	adc a,(hl)		;b95c
	sub (hl)		;b95d
	xor d			;b95e
	sub (hl)		;b95f
	rst 38h			;b960
	sub b			;b961
	sub h			;b962
	sub a			;b963
	inc bc			;b964
	sbc a,b			;b965
	sbc a,h			;b966
	sbc a,b			;b967
	inc e			;b968
	sbc a,c			;b969
	ld (hl),b		;b96a
	sbc a,c			;b96b
	or a			;b96c
	sbc a,c			;b96d
	jp m,02499h		;b96e
	sbc a,d			;b971
	rst 38h			;b972
	sub b			;b973
	push bc			;b974
	cp d			;b975
	call z,0ccbah		;b976
	cp d			;b979
	call 014bah		;b97a
	cp e			;b97d
	dec e			;b97e
	cp e			;b97f
	ld b,h			;b980
	cp e			;b981
	ld l,e			;b982
	cp e			;b983
	rst 38h			;b984
	sub b			;b985
	push bc			;b986
	cp d			;b987
	adc a,d			;b988
	cp e			;b989
	out (0bbh),a		;b98a
	ccf			;b98c
	cp h			;b98d
	sub h			;b98e
	cp h			;b98f
	dec e			;b990
	cp e			;b991
	ld b,h			;b992
	cp e			;b993
	ld l,e			;b994
	cp e			;b995
	rst 38h			;b996
	sub b			;b997
	xor a			;b998
	or l			;b999
	ld b,a			;b99a
	or (hl)			;b99b
	scf			;b99c
	or a			;b99d
	ld d,0b8h		;b99e
	pop hl			;b9a0
	cp b			;b9a1
	or h			;b9a2
	cp c			;b9a3
	or d			;b9a4
	cp d			;b9a5
	jp p,0ffbbh		;b9a6
	add a,b			;b9a9
	exx			;b9aa
	or a			;b9ab
	exx			;b9ac
	or a			;b9ad
	cp (hl)			;b9ae
	or a			;b9af
	jp c,0e8b7h		;b9b0
	or a			;b9b3
	or 0b7h			;b9b4
	inc e			;b9b6
	cp b			;b9b7
	ld b,b			;b9b8
	cp b			;b9b9
	rst 38h			;b9ba
	sub b			;b9bb
	ld h,h			;b9bc
	cp b			;b9bd
	add a,l			;b9be
	cp b			;b9bf
	adc a,(hl)		;b9c0
	cp b			;b9c1
	call z,043b8h		;b9c2
	cp c			;b9c5
	cp d			;b9c6
	cp c			;b9c7
	ld sp,lbcbah		;b9c8
	cp d			;b9cb
	rst 38h			;b9cc
	sub b			;b9cd
	ld a,h			;b9ce
	sub h			;b9cf
	adc a,d			;b9d0
	sub h			;b9d1
	sbc a,b			;b9d2
	sub h			;b9d3
	and (hl)		;b9d4
	sub h			;b9d5
	or l			;b9d6
	sub h			;b9d7
	call nz,0d394h		;b9d8
	sub h			;b9db
	jp po,0ff94h		;b9dc
	ld bc,09affh		;b9df
	rst 38h			;b9e2
	sbc a,d			;b9e3
	rst 38h			;b9e4
	sbc a,d			;b9e5
	rst 38h			;b9e6
	sbc a,d			;b9e7
	rst 38h			;b9e8
	sbc a,d			;b9e9
	rst 38h			;b9ea
	sbc a,d			;b9eb
	rst 38h			;b9ec
	sbc a,d			;b9ed
	rst 38h			;b9ee
	sbc a,d			;b9ef
	rst 38h			;b9f0
	rst 38h			;b9f1
	jp 0c37ah		;b9f2
	ld a,d			;b9f5
	jp 0c37ah		;b9f6
	ld a,d			;b9f9
	jp 0c37ah		;b9fa
	ld a,d			;b9fd
	jp 0c37ah		;b9fe
	ld a,d			;ba01
	jp m,0fe76h		;ba02
	halt			;ba05
	inc b			;ba06
	ld (hl),a		;ba07
	ld a,(bc)		;ba08
	ld (hl),a		;ba09
	djnz lba83h		;ba0a
	ld d,077h		;ba0c
	inc e			;ba0e
	ld (hl),a		;ba0f
	ld (02877h),hl		;ba10
	ld (hl),a		;ba13
	ld l,077h		;ba14
	inc (hl)		;ba16
	ld (hl),a		;ba17
	ld a,(04077h)		;ba18
	ld (hl),a		;ba1b
	ld b,(hl)		;ba1c
	ld (hl),a		;ba1d
	ld c,h			;ba1e
	ld (hl),a		;ba1f
	ld d,d			;ba20
	ld (hl),a		;ba21
	ld e,b			;ba22
	ld (hl),a		;ba23
	ld e,(hl)		;ba24
	ld (hl),a		;ba25
	ld h,h			;ba26
	ld (hl),a		;ba27
	ld l,d			;ba28
	ld (hl),a		;ba29
	ld (hl),b		;ba2a
	ld (hl),a		;ba2b
	halt			;ba2c
	ld (hl),a		;ba2d
	ld a,h			;ba2e
	ld (hl),a		;ba2f
	add a,d			;ba30
	ld (hl),a		;ba31
	adc a,b			;ba32
	ld (hl),a		;ba33
	adc a,(hl)		;ba34
	ld (hl),a		;ba35
	sub h			;ba36
	ld (hl),a		;ba37
	sbc a,d			;ba38
	ld (hl),a		;ba39
	and b			;ba3a
	ld (hl),a		;ba3b
	and (hl)		;ba3c
	ld (hl),a		;ba3d
	xor h			;ba3e
	ld (hl),a		;ba3f
	or d			;ba40
	ld (hl),a		;ba41
	cp b			;ba42
	ld (hl),a		;ba43
	cp (hl)			;ba44
	ld (hl),a		;ba45
	call nz,0ca77h		;ba46
	ld (hl),a		;ba49
	ret nc			;ba4a
	ld (hl),a		;ba4b
	sub 077h		;ba4c
	call c,0e277h		;ba4e
	ld (hl),a		;ba51
	ret pe			;ba52
	ld (hl),a		;ba53
	xor 077h		;ba54
	call p,0fa77h		;ba56
	ld (hl),a		;ba59
	nop			;ba5a
	ld a,b			;ba5b
	ld b,078h		;ba5c
	inc c			;ba5e
	ld a,b			;ba5f
	ld (de),a		;ba60
	ld a,b			;ba61
	jr lbadch		;ba62
	ld e,078h		;ba64
	inc h			;ba66
	ld a,b			;ba67
	ld hl,(03078h)		;ba68
	ld a,b			;ba6b
lba6ch:
	ld (hl),078h		;ba6c
lba6eh:
	inc a			;ba6e
	ld a,b			;ba6f
	ld b,d			;ba70
	ld a,b			;ba71
	ld b,d			;ba72
	ld a,b			;ba73
	ld d,b			;ba74
	ld a,b			;ba75
	ld e,(hl)		;ba76
	ld a,b			;ba77
	ld l,h			;ba78
	ld a,b			;ba79
	ld a,d			;ba7a
	ld a,b			;ba7b
lba7ch:
	adc a,b			;ba7c
	ld a,b			;ba7d
	sub (hl)		;ba7e
	ld a,b			;ba7f
	and h			;ba80
	ld a,b			;ba81
	or d			;ba82
lba83h:
	ld a,b			;ba83
	ret nz			;ba84
	ld a,b			;ba85
	adc a,078h		;ba86
	call c,0ea78h		;ba88
	ld a,b			;ba8b
	ret m			;ba8c
	ld a,b			;ba8d
lba8eh:
	ld b,079h		;ba8e
	ld b,079h		;ba90
	jr lbb0dh		;ba92
	ld hl,(03c79h)		;ba94
	ld a,c			;ba97
	ld c,(hl)		;ba98
	ld a,c			;ba99
lba9ah:
	ld h,b			;ba9a
	ld a,c			;ba9b
	ld (hl),d		;ba9c
	ld a,c			;ba9d
	add a,h			;ba9e
	ld a,c			;ba9f
	sub (hl)		;baa0
lbaa1h:
	ld a,c			;baa1
	xor b			;baa2
	ld a,c			;baa3
	cp d			;baa4
	ld a,c			;baa5
	call z,0de79h		;baa6
	ld a,c			;baa9
lbaaah:
	ret p			;baaa
	ld a,c			;baab
	ld (bc),a		;baac
	ld a,d			;baad
	cp 001h			;baae
	ret m			;bab0
	dec d			;bab1
	jp pe,0e90fh		;bab2
	ld bc,0ebd1h		;bab5
lbab8h:
	ld bc,00488h		;bab8
	ld (hl),h		;babb
	ld b,h			;babc
	ld (hl),h		;babd
	ex de,hl		;babe
	ld bc,0d023h		;babf
	add hl,bc		;bac2
	rst 38h			;bac3
	cp 002h			;bac4
	ret po			;bac6
	ld (bc),a		;bac7
lbac8h:
	jp po,04001h		;bac8
	ld h,b			;bacb
	call p,0786ch		;bacc
	add a,h			;bacf
	sub b			;bad0
	sbc a,(hl)		;bad1
	xor (hl)		;bad2
	cp a			;bad3
	ld h,b			;bad4
	ld l,h			;bad5
	ld a,b			;bad6
	or 030h			;bad7
	add a,h			;bad9
	jr nc,lba6ch		;bada
lbadch:
	jr nc,lba7ch		;badc
	jr nz,lba8eh		;bade
	jr nz,lbaa1h		;bae0
	jr nz,$+98		;bae2
	jr nz,$+110		;bae4
	jr nz,lbb60h		;bae6
	djnz lba6eh		;bae8
	call p,09e90h		;baea
	xor (hl)		;baed
	cp a			;baee
	ld h,b			;baef
	ld l,h			;baf0
	ld a,b			;baf1
	add a,h			;baf2
	sub b			;baf3
	sbc a,(hl)		;baf4
	xor (hl)		;baf5
	or 0ffh			;baf6
	cp 002h			;baf8
	ret m			;bafa
	dec b			;bafb
	jp po,09001h		;bafc
	ld h,b			;baff
	sub b			;bb00
	ld l,h			;bb01
	sub b			;bb02
	ld a,b			;bb03
	add a,b			;bb04
	add a,h			;bb05
	ld (hl),b		;bb06
	sub b			;bb07
	ld h,b			;bb08
	sbc a,(hl)		;bb09
	ld d,b			;bb0a
	xor (hl)		;bb0b
	ld b,b			;bb0c
lbb0dh:
	cp a			;bb0d
	ld d,b			;bb0e
	ld h,b			;bb0f
	ld d,b			;bb10
	ld l,h			;bb11
	ld b,b			;bb12
	ld a,b			;bb13
	jr nc,lba9ah		;bb14
	jr nz,$-110		;bb16
	jr nz,lbab8h		;bb18
	djnz $-80		;bb1a
	djnz $-63		;bb1c
	jr nc,lbb80h		;bb1e
	jr nc,lbb8eh		;bb20
	jr nz,lbb9ch		;bb22
	jr nz,lbaaah		;bb24
	djnz lbab8h		;bb26
	djnz lbac8h		;bb28
	nop			;bb2a
	xor (hl)		;bb2b
	call p,060bfh		;bb2c
	ld l,h			;bb2f
	ld a,b			;bb30
	add a,h			;bb31
	sub b			;bb32
	sbc a,(hl)		;bb33
	xor (hl)		;bb34
	cp a			;bb35
	or 0ffh			;bb36
	cp 002h			;bb38
	pop hl			;bb3a
	ld bc,004e4h		;bb3b
	ld b,0e4h		;bb3e
	ld a,(bc)		;bb40
	inc b			;bb41
	call po,0060bh		;bb42
	call po,0070ch		;bb45
	call po,00812h		;bb48
	call po,00714h		;bb4b
	call po,00515h		;bb4e
	call po,00316h		;bb51
	call po,00217h		;bb54
	call po,00218h		;bb57
	call po,00119h		;bb5a
	call po,0011ah		;bb5d
lbb60h:
	ret po			;bb60
	ld a,(bc)		;bb61
	rst 38h			;bb62
	cp 002h			;bb63
	jp po,0f801h		;bb65
	ld d,h			;bb68
	pop bc			;bb69
	ret p			;bb6a
	pop bc			;bb6b
	ret nz			;bb6c
	jp nz,0c210h		;bb6d
	ld h,b			;bb70
	pop bc			;bb71
	ret po			;bb72
	pop bc			;bb73
	ret nc			;bb74
	jp nz,0c240h		;bb75
	and b			;bb78
	jp 0b300h		;bb79
	ld d,b			;bb7c
	and e			;bb7d
	and b			;bb7e
	ld b,c			;bb7f
lbb80h:
	ret p			;bb80
	ld d,c			;bb81
	ret nz			;bb82
	ld d,d			;bb83
	djnz lbbd8h		;bb84
	ld h,b			;bb86
	ld d,c			;bb87
	ret po			;bb88
	ld d,c			;bb89
	ret nc			;bb8a
	ld d,d			;bb8b
	ld b,b			;bb8c
	ld d,d			;bb8d
lbb8eh:
	and b			;bb8e
	ld d,e			;bb8f
	nop			;bb90
	ld b,e			;bb91
	ld d,b			;bb92
	inc sp			;bb93
	and b			;bb94
	rst 38h			;bb95
	cp 002h			;bb96
	ret po			;bb98
	ld bc,001e2h		;bb99
lbb9ch:
	ld h,b			;bb9c
	ld c,(hl)		;bb9d
	ld h,b			;bb9e
	ld d,l			;bb9f
	ld d,b			;bba0
	ld e,e			;bba1
	ld d,b			;bba2
	ld h,a			;bba3
	ld b,b			;bba4
	ld (hl),b		;bba5
	ld b,b			;bba6
	ld a,c			;bba7
	ld b,b			;bba8
	ld d,(hl)		;bba9
	ld b,b			;bbaa
	ld e,h			;bbab
	ld b,b			;bbac
	ld h,d			;bbad
	jr nc,lbc1ah		;bbae
	jr nc,lbc27h		;bbb0
	jr nc,lbc31h		;bbb2
	ret po			;bbb4
	ld bc,001e2h		;bbb5
	jr nc,lbc08h		;bbb8
	jr nc,lbc11h		;bbba
	jr nc,lbc19h		;bbbc
	jr nc,lbc27h		;bbbe
	jr nc,$+114		;bbc0
	jr nc,lbc3dh		;bbc2
	jr nz,$+88		;bbc4
	jr nz,$+94		;bbc6
	jr nz,$+100		;bbc8
	jr nz,$+108		;bbca
	jr nz,lbc43h		;bbcc
	jr nz,$+127		;bbce
	ret po			;bbd0
	ld bc,001e2h		;bbd1
	nop			;bbd4
	ld c,(hl)		;bbd5
	nop			;bbd6
	ld d,l			;bbd7
lbbd8h:
	nop			;bbd8
lbbd9h:
	ld e,e			;bbd9
	nop			;bbda
	ld h,a			;bbdb
	nop			;bbdc
	ld (hl),b		;bbdd
	nop			;bbde
	ld a,c			;bbdf
lbbe0h:
	nop			;bbe0
	ld d,(hl)		;bbe1
	nop			;bbe2
	ld e,h			;bbe3
	nop			;bbe4
	ld h,d			;bbe5
lbbe6h:
	nop			;bbe6
	ld l,d			;bbe7
lbbe8h:
	nop			;bbe8
	ld (hl),l		;bbe9
	nop			;bbea
	ld a,l			;bbeb
	rst 38h			;bbec
	cp 002h			;bbed
	ret m			;bbef
	add hl,bc		;bbf0
	jp po,0b001h		;bbf1
lbbf4h:
	sbc a,h			;bbf4
	and b			;bbf5
	xor d			;bbf6
	sub b			;bbf7
	or a			;bbf8
	add a,b			;bbf9
	adc a,070h		;bbfa
	pop hl			;bbfc
	ld h,b			;bbfd
	jp p,0ad80h		;bbfe
lbc01h:
	add a,b			;bc01
lbc02h:
	cp c			;bc02
	ld (hl),b		;bc03
	push bc			;bc04
	ld h,b			;bc05
	push de			;bc06
	ld d,b			;bc07
lbc08h:
	ex de,hl		;bc08
	ld b,b			;bc09
	ei			;bc0a
	ret po			;bc0b
	ld bc,001e2h		;bc0c
	ld h,b			;bc0f
lbc10h:
	sbc a,h			;bc10
lbc11h:
	ld h,b			;bc11
	xor d			;bc12
	ld d,b			;bc13
lbc14h:
	or a			;bc14
	ld d,b			;bc15
lbc16h:
	adc a,040h		;bc16
	pop hl			;bc18
lbc19h:
	ld b,b			;bc19
lbc1ah:
	jp p,0ad50h		;bc1a
	ld d,b			;bc1d
	cp c			;bc1e
	ld b,b			;bc1f
	push bc			;bc20
	ld b,b			;bc21
lbc22h:
	push de			;bc22
	jr nc,lbc10h		;bc23
	jr nc,lbc22h		;bc25
lbc27h:
	ret po			;bc27
	ld bc,001e2h		;bc28
lbc2bh:
	jr nz,$-98		;bc2b
	jr nz,lbbd9h		;bc2d
	jr nz,lbbe8h		;bc2f
lbc31h:
	djnz lbc01h		;bc31
	djnz lbc16h		;bc33
	djnz $-12		;bc35
	djnz lbbe6h		;bc37
	djnz lbbf4h		;bc39
	djnz lbc02h		;bc3b
lbc3dh:
	djnz lbc14h		;bc3d
	nop			;bc3f
	ex de,hl		;bc40
	nop			;bc41
	ei			;bc42
lbc43h:
	ret po			;bc43
	ld bc,0feffh		;bc44
	ld (bc),a		;bc47
lbc48h:
	call po,0e11fh		;bc48
	ld bc,0e209h		;bc4b
	ld bc,02080h		;bc4e
	ld d,b			;bc51
	ret m			;bc52
	sub h			;bc53
	nop			;bc54
	sub c			;bc55
	sub b			;bc56
	sub l			;bc57
	jr nc,lbbe0h		;bc58
	jr nz,lbc3dh		;bc5a
	ld bc,0e209h		;bc5c
	ld bc,02180h		;bc5f
	ld (hl),h		;bc62
	nop			;bc63
	ld (hl),c		;bc64
	sub b			;bc65
	ld (hl),l		;bc66
	jr nc,lbccfh		;bc67
	jr nz,lbcc2h		;bc69
	jr nc,$-30		;bc6b
	ld bc,001e1h		;bc6d
	inc b			;bc70
	jp po,05001h		;bc71
	jr nz,$+34		;bc74
lbc76h:
	ret m			;bc76
	ld b,h			;bc77
	nop			;bc78
	ld b,c			;bc79
	sub b			;bc7a
	ld b,l			;bc7b
	jr nc,lbcb4h		;bc7c
	jr nz,$-29		;bc7e
	ld bc,0e203h		;bc80
	ld bc,02140h		;bc83
	inc d			;bc86
	nop			;bc87
	ld de,01590h		;bc88
	jr nc,$+24		;bc8b
	jr nz,$+1		;bc8d
	cp 002h			;bc8f
	ret m			;bc91
	jr z,lbc76h		;bc92
	ld bc,050b1h		;bc94
	ld (hl),c		;bc97
	nop			;bc98
	ret m			;bc99
	dec h			;bc9a
	or h			;bc9b
	add a,b			;bc9c
	and c			;bc9d
lbc9eh:
	sub b			;bc9e
	and l			;bc9f
	jr nc,lbc48h		;bca0
	jr nz,lbc2bh		;bca2
	jr nc,lbc9eh		;bca4
	jr z,$-77		;bca6
	ld d,b			;bca8
	ret m			;bca9
	dec h			;bcaa
	or h			;bcab
	add a,b			;bcac
	and c			;bcad
	sub b			;bcae
	sub l			;bcaf
	jr nc,$-120		;bcb0
	jr nz,lbd2bh		;bcb2
lbcb4h:
	jr nc,$-30		;bcb4
	ld (bc),a		;bcb6
	jp po,0f801h		;bcb7
lbcbah:
	jr z,$+35		;bcba
	ld d,b			;bcbc
	ld bc,0f800h		;bcbd
	dec h			;bcc0
	inc h			;bcc1
lbcc2h:
	add a,b			;bcc2
	ld hl,02590h		;bcc3
	jr nc,lbceeh		;bcc6
	jr nz,lbcf1h		;bcc8
	jr nc,$-6		;bcca
	jr z,lbcdfh		;bccc
	ld d,b			;bcce
lbccfh:
	ret m			;bccf
	dec h			;bcd0
	inc d			;bcd1
	add a,b			;bcd2
	ld de,01590h		;bcd3
	jr nc,lbcdeh		;bcd6
	jr nz,$+9		;bcd8
	jr nc,$+1		;bcda
	cp 002h			;bcdc
lbcdeh:
	ret po			;bcde
lbcdfh:
	ld (bc),a		;bcdf
	jp po,06301h		;bce0
	add a,b			;bce3
	ld h,e			;bce4
	ld b,b			;bce5
	ld h,e			;bce6
	djnz lbd4bh		;bce7
	ret po			;bce9
	ld h,d			;bcea
	and b			;bceb
	ld h,d			;bcec
	add a,b			;bced
lbceeh:
	ld h,d			;bcee
	ld d,b			;bcef
	ld h,d			;bcf0
lbcf1h:
	jr nz,lbd55h		;bcf1
	nop			;bcf3
	ld h,c			;bcf4
	ret po			;bcf5
	ld h,c			;bcf6
	or b			;bcf7
lbcf8h:
	ld h,c			;bcf8
	sub b			;bcf9
	ld h,c			;bcfa
	ld (hl),b		;bcfb
lbcfch:
	ld h,c			;bcfc
	ld d,b			;bcfd
	ld h,c			;bcfe
	jr c,lbd62h		;bcff
	jr nz,lbd64h		;bd01
	djnz lbcfch		;bd03
	ld b,0f9h		;bd05
	ld h,h			;bd07
	ld a,l			;bd08
	rst 30h			;bd09
	ex af,af'		;bd0a
	ld sp,hl		;bd0b
	ld h,h			;bd0c
	ld a,l			;bd0d
	rst 30h			;bd0e
lbd0fh:
	ld a,(bc)		;bd0f
	ld sp,hl		;bd10
lbd11h:
	ld h,h			;bd11
	ld a,l			;bd12
	rst 18h			;bd13
	ld bc,00000h		;bd14
	di			;bd17
	nop			;bd18
	rst 20h			;bd19
	nop			;bd1a
	ret po			;bd1b
	nop			;bd1c
	out (000h),a		;bd1d
	rst 0			;bd1f
	nop			;bd20
	ret nz			;bd21
	nop			;bd22
	or l			;bd23
	nop			;bd24
	xor d			;bd25
	nop			;bd26
	and b			;bd27
	rst 38h			;bd28
	cp 002h			;bd29
lbd2bh:
	ret m			;bd2b
	inc e			;bd2c
	jp po,0c301h		;bd2d
	add a,b			;bd30
	jp 0c340h		;bd31
	djnz lbcf8h		;bd34
	ret po			;bd36
	jp nz,0c2a0h		;bd37
	add a,b			;bd3a
	jp nz,0c250h		;bd3b
	jr nz,$-60		;bd3e
	nop			;bd40
	pop bc			;bd41
	ret po			;bd42
	pop bc			;bd43
	or b			;bd44
	pop bc			;bd45
	sub b			;bd46
	pop bc			;bd47
	ld (hl),b		;bd48
	pop bc			;bd49
	ld d,b			;bd4a
lbd4bh:
	pop bc			;bd4b
	jr c,lbd0fh		;bd4c
	jr nz,lbd11h		;bd4e
	djnz lbd4bh		;bd50
	ld h,h			;bd52
	ld a,l			;bd53
	rst 30h			;bd54
lbd55h:
	rlca			;bd55
	ld sp,hl		;bd56
	ld h,h			;bd57
	ld a,l			;bd58
	rst 30h			;bd59
	ld a,(bc)		;bd5a
	ld sp,hl		;bd5b
	ld h,h			;bd5c
	ld a,l			;bd5d
	rst 30h			;bd5e
	inc c			;bd5f
	ld sp,hl		;bd60
	ld h,h			;bd61
lbd62h:
	ld a,l			;bd62
	rst 38h			;bd63
lbd64h:
	pop bc			;bd64
	nop			;bd65
	ret nz			;bd66
	di			;bd67
	ret nz			;bd68
	rst 20h			;bd69
	ret nz			;bd6a
	ret po			;bd6b
	ret nz			;bd6c
	out (0c0h),a		;bd6d
	rst 0			;bd6f
	ret nz			;bd70
	ret nz			;bd71
	ret nz			;bd72
	or l			;bd73
	ret nz			;bd74
	xor d			;bd75
	ret nz			;bd76
	and b			;bd77
	ret nz			;bd78
	sub e			;bd79
	ret nz			;bd7a
	add a,l			;bd7b
	jp m,002feh		;bd7c
	jp po,08001h		;bd7f
	ld (de),a		;bd82
	ld (hl),b		;bd83
	inc de			;bd84
	call p,01514h		;bd85
	ld d,017h		;bd88
	jr $+27			;bd8a
	ld a,(de)		;bd8c
	dec de			;bd8d
	inc e			;bd8e
	dec e			;bd8f
	ld e,01fh		;bd90
	jr nz,$+35		;bd92
	ld (02423h),hl		;bd94
	dec h			;bd97
	ld h,027h		;bd98
	jr z,lbdc5h		;bd9a
	ld hl,(02c2bh)		;bd9c
	dec l			;bd9f
	ld l,0f6h		;bda0
	ld h,b			;bda2
	cpl			;bda3
	call p,03130h		;bda4
	ld (03533h),a		;bda7
	ld (hl),037h		;bdaa
	add hl,sp		;bdac
	ld a,(050f6h)		;bdad
	dec sp			;bdb0
	ld d,b			;bdb1
	dec a			;bdb2
	ld d,b			;bdb3
	ld a,040h		;bdb4
	ld b,c			;bdb6
lbdb7h:
	ld b,b			;bdb7
	ld b,d			;bdb8
lbdb9h:
	ld b,b			;bdb9
	ld b,h			;bdba
	jr nc,lbe03h		;bdbb
	jr nc,lbe07h		;bdbd
	jr nc,lbe0bh		;bdbf
	jr nz,lbe0fh		;bdc1
	jr nz,lbe13h		;bdc3
lbdc5h:
	jr nz,lbe17h		;bdc5
	djnz $+84		;bdc7
	djnz $+86		;bdc9
	djnz lbe23h		;bdcb
	nop			;bdcd
	ld e,b			;bdce
	nop			;bdcf
	ld e,d			;bdd0
	nop			;bdd1
	ld e,h			;bdd2
	nop			;bdd3
	ld e,(hl)		;bdd4
	nop			;bdd5
	ld h,b			;bdd6
	rst 38h			;bdd7
	cp 002h			;bdd8
	jp po,0f801h		;bdda
	inc c			;bddd
	pop bc			;bdde
	add a,b			;bddf
	jp nz,0c300h		;bde0
	nop			;bde3
	jp nz,0c280h		;bde4
	nop			;bde7
	ret m			;bde8
	ld d,h			;bde9
	pop bc			;bdea
	ret po			;bdeb
	pop bc			;bdec
	ret p			;bded
	jp nz,0c200h		;bdee
	djnz $-60		;bdf1
	jr nz,lbdb7h		;bdf3
	jr nc,lbdb9h		;bdf5
	ld b,b			;bdf7
	jp nz,0c250h		;bdf8
	ld h,b			;bdfb
	jp nz,0e270h		;bdfc
	ld (bc),a		;bdff
	or d			;be00
	add a,b			;be01
	or d			;be02
lbe03h:
	ret nz			;be03
	and e			;be04
	nop			;be05
	sub e			;be06
lbe07h:
	ld b,b			;be07
	add a,e			;be08
	add a,b			;be09
	ld (hl),e		;be0a
lbe0bh:
	ret nz			;be0b
	ld h,h			;be0c
	nop			;be0d
	ld d,h			;be0e
lbe0fh:
	ld b,b			;be0f
	ld d,h			;be10
	add a,b			;be11
	ld b,h			;be12
lbe13h:
	ret nz			;be13
	ld b,l			;be14
	nop			;be15
	dec (hl)		;be16
lbe17h:
	ld d,l			;be17
	dec (hl)		;be18
	xor d			;be19
	ld h,000h		;be1a
	ld h,055h		;be1c
	ld d,0aah		;be1e
	rla			;be20
	nop			;be21
	rlca			;be22
lbe23h:
	ld d,l			;be23
	rlca			;be24
	xor d			;be25
	ex af,af'		;be26
	nop			;be27
	ex af,af'		;be28
	ld d,l			;be29
	ex af,af'		;be2a
	xor d			;be2b
	rst 38h			;be2c
	cp 002h			;be2d
	ret po			;be2f
	ld bc,001e2h		;be30
	add a,c			;be33
	ex af,af'		;be34
	rst 30h			;be35
	inc b			;be36
	ld sp,hl		;be37
	ld l,a			;be38
	ld a,(hl)		;be39
	rst 30h			;be3a
	dec b			;be3b
	ld sp,hl		;be3c
	ld l,a			;be3d
	ld a,(hl)		;be3e
	rst 30h			;be3f
	rlca			;be40
	ld sp,hl		;be41
	ld l,a			;be42
	ld a,(hl)		;be43
	rst 30h			;be44
	add hl,bc		;be45
	ld sp,hl		;be46
	ld l,a			;be47
	ld a,(hl)		;be48
	rst 30h			;be49
	dec bc			;be4a
	ld sp,hl		;be4b
	ld l,a			;be4c
	ld a,(hl)		;be4d
	rst 38h			;be4e
	cp 002h			;be4f
	ret m			;be51
	ld h,0e2h		;be52
	ld bc,008c1h		;be54
	ld sp,hl		;be57
	ld l,a			;be58
	ld a,(hl)		;be59
	rst 30h			;be5a
	dec b			;be5b
	ld sp,hl		;be5c
	ld l,a			;be5d
	ld a,(hl)		;be5e
	rst 30h			;be5f
	rlca			;be60
	ld sp,hl		;be61
	ld l,a			;be62
	ld a,(hl)		;be63
	rst 30h			;be64
	add hl,bc		;be65
	ld sp,hl		;be66
	ld l,a			;be67
	ld a,(hl)		;be68
	rst 30h			;be69
	dec bc			;be6a
	ld sp,hl		;be6b
	ld l,a			;be6c
	ld a,(hl)		;be6d
	rst 38h			;be6e
	ret nz			;be6f
	ret p			;be70
	ret nz			;be71
	ret c			;be72
	ret nz			;be73
	ret nz			;be74
	ret nz			;be75
	or b			;be76
	ret nz			;be77
	and b			;be78
	ret nz			;be79
	sub b			;be7a
	ret nz			;be7b
	add a,b			;be7c
	ret nz			;be7d
	ld (hl),b		;be7e
	ret nz			;be7f
	ld h,b			;be80
	jp m,002feh		;be81
	ret po			;be84
	inc bc			;be85
	jp po,09101h		;be86
	ret nz			;be89
	rst 30h			;be8a
	inc bc			;be8b
	ld sp,hl		;be8c
	call nc,0f77eh		;be8d
	dec b			;be90
	ld sp,hl		;be91
	call nc,0f77eh		;be92
	ex af,af'		;be95
	ld sp,hl		;be96
	call nc,0df7eh		;be97
	inc hl			;be9a
	nop			;be9b
	inc h			;be9c
	add a,b			;be9d
	inc h			;be9e
lbe9fh:
	nop			;be9f
	dec h			;bea0
	nop			;bea1
	dec h			;bea2
	add a,b			;bea3
	ld h,080h		;bea4
	dec h			;bea6
	nop			;bea7
	rst 38h			;bea8
	cp 002h			;bea9
	ret m			;beab
	inc d			;beac
	jp po,0c101h		;bead
	ret nz			;beb0
	ld sp,hl		;beb1
	call nc,0f77eh		;beb2
	inc b			;beb5
	ld sp,hl		;beb6
	call nc,0f77eh		;beb7
	add hl,bc		;beba
	ld sp,hl		;bebb
	call nc,0df7eh		;bebc
	inc bc			;bebf
	nop			;bec0
	inc b			;bec1
	add a,b			;bec2
	inc b			;bec3
	nop			;bec4
	dec b			;bec5
	nop			;bec6
	dec b			;bec7
	add a,b			;bec8
	ld b,080h		;bec9
	dec b			;becb
	nop			;becc
	ld b,000h		;becd
	rlca			;becf
	nop			;bed0
	ex af,af'		;bed1
	nop			;bed2
	rst 38h			;bed3
	jp nz,0c400h		;bed4
	djnz lbe9fh		;bed7
	nop			;bed9
	jp nz,0c380h		;beda
	nop			;bedd
	jp 0c480h		;bede
	nop			;bee1
	jp 0c400h		;bee2
	add a,b			;bee5
	call nz,0c500h		;bee6
	nop			;bee9
	push bc			;beea
	add a,b			;beeb
	add a,080h		;beec
	push bc			;beee
	nop			;beef
	add a,000h		;bef0
	rst 0			;bef2
	nop			;bef3
	ret z			;bef4
	nop			;bef5
	jp m,002feh		;bef6
	ret po			;bef9
	inc b			;befa
	jp po,la201h		;befb
	add a,b			;befe
	and d			;beff
	ld b,b			;bf00
	and d			;bf01
	nop			;bf02
	and c			;bf03
	add a,b			;bf04
	and c			;bf05
	ld h,b			;bf06
	and c			;bf07
	nop			;bf08
	and b			;bf09
	ret nz			;bf0a
	rst 30h			;bf0b
	ld (bc),a		;bf0c
	ld sp,hl		;bf0d
	ld (hl),e		;bf0e
	ld a,a			;bf0f
	rst 30h			;bf10
	inc b			;bf11
	ld sp,hl		;bf12
	ld (hl),e		;bf13
	ld a,a			;bf14
	rst 30h			;bf15
	dec b			;bf16
	ld sp,hl		;bf17
	ld (hl),e		;bf18
	ld a,a			;bf19
	rst 30h			;bf1a
	ld b,0f9h		;bf1b
	ld (hl),e		;bf1d
	ld a,a			;bf1e
	rst 30h			;bf1f
	rlca			;bf20
	ld sp,hl		;bf21
	ld (hl),e		;bf22
	ld a,a			;bf23
	rst 30h			;bf24
	ex af,af'		;bf25
	ld sp,hl		;bf26
	ld (hl),e		;bf27
	ld a,a			;bf28
	rst 18h			;bf29
	ld (022c0h),hl		;bf2a
	nop			;bf2d
	ld hl,0ff80h		;bf2e
	cp 002h			;bf31
	ret m			;bf33
	ld d,h			;bf34
	jp po,0c501h		;bf35
	nop			;bf38
	call nz,0c480h		;bf39
	nop			;bf3c
	jp 0c200h		;bf3d
	ret nz			;bf40
	jp nz,0c100h		;bf41
	add a,b			;bf44
	ret m			;bf45
	inc hl			;bf46
	ld sp,hl		;bf47
	ld (hl),e		;bf48
	ld a,a			;bf49
	rst 30h			;bf4a
	ld (bc),a		;bf4b
	ld sp,hl		;bf4c
	ld (hl),e		;bf4d
	ld a,a			;bf4e
	rst 30h			;bf4f
	inc b			;bf50
	ld sp,hl		;bf51
	ld (hl),e		;bf52
	ld a,a			;bf53
	rst 30h			;bf54
	ld b,0f9h		;bf55
	ld (hl),e		;bf57
	ld a,a			;bf58
	rst 30h			;bf59
	ex af,af'		;bf5a
	ld sp,hl		;bf5b
	ld (hl),e		;bf5c
	ld a,a			;bf5d
	rst 30h			;bf5e
	ld a,(bc)		;bf5f
	ld sp,hl		;bf60
	ld (hl),e		;bf61
	ld a,a			;bf62
	rst 18h			;bf63
	ld (bc),a		;bf64
	ret nz			;bf65
	ld (bc),a		;bf66
	nop			;bf67
	ld bc,00180h		;bf68
	nop			;bf6b
	nop			;bf6c
	add a,b			;bf6d
lbf6eh:
	nop			;bf6e
	ld h,b			;bf6f
	nop			;bf70
	ld b,b			;bf71
	rst 38h			;bf72
	jp nz,0c2c0h		;bf73
	nop			;bf76
	pop bc			;bf77
	add a,b			;bf78
	pop bc			;bf79
	nop			;bf7a
	ret nz			;bf7b
	add a,b			;bf7c
	ret nz			;bf7d
	ld h,b			;bf7e
	ret nz			;bf7f
	ld b,b			;bf80
	ld bc,00000h		;bf81
	add a,b			;bf84
	jp m,002feh		;bf85
	ret po			;bf88
	ld (bc),a		;bf89
	jp po,08004h		;bf8a
	ret z			;bf8d
	add a,b			;bf8e
	ld h,e			;bf8f
	add a,b			;bf90
	ld sp,0c860h		;bf91
	ld h,b			;bf94
	ld h,e			;bf95
	ld h,b			;bf96
	ld sp,0c850h		;bf97
	ld d,b			;bf9a
	ld h,e			;bf9b
	ld d,b			;bf9c
	ld sp,0c830h		;bf9d
	jr nc,$+101		;bfa0
	jr nc,lbfd5h		;bfa2
	djnz lbf6eh		;bfa4
	djnz $+101		;bfa6
	djnz lbfdbh		;bfa8
	rst 38h			;bfaa
	cp 002h			;bfab
	ret m			;bfad
	dec bc			;bfae
	jp po,0c004h		;bfaf
	ret z			;bfb2
	ret nz			;bfb3
	ld h,e			;bfb4
	ret nz			;bfb5
	ld sp,0c880h		;bfb6
	add a,b			;bfb9
	ld h,e			;bfba
	add a,b			;bfbb
	ld sp,0c850h		;bfbc
	ld d,b			;bfbf
	ld h,e			;bfc0
	ld d,b			;bfc1
	ld sp,0c830h		;bfc2
	jr nc,$+101		;bfc5
	jr nc,lbffah		;bfc7
	djnz $-54		;bfc9
	djnz $+101		;bfcb
	djnz $+51		;bfcd
	ret po			;bfcf
	ld (bc),a		;bfd0
	rst 38h			;bfd1
	cp 002h			;bfd2
	ret po			;bfd4
lbfd5h:
	ld (bc),a		;bfd5
	jp po,06101h		;bfd6
	ld b,b			;bfd9
	ld h,c			;bfda
lbfdbh:
	ret nc			;bfdb
	ld h,d			;bfdc
	jr nc,$+98		;bfdd
	and b			;bfdf
	ld h,b			;bfe0
	ret po			;bfe1
	ld h,c			;bfe2
	ld b,b			;bfe3
	ld h,c			;bfe4
	add a,b			;bfe5
	ld h,d			;bfe6
	nop			;bfe7
	ld h,d			;bfe8
	add a,b			;bfe9
	rst 30h			;bfea
	ld b,0f9h		;bfeb
	ld b,b			;bfed
	add a,b			;bfee
	rst 30h			;bfef
	rlca			;bff0
	ld sp,hl		;bff1
	ld b,b			;bff2
	add a,b			;bff3
	rst 30h			;bff4
	ex af,af'		;bff5
	ld sp,hl		;bff6
	ld b,b			;bff7
	add a,b			;bff8
	rst 30h			;bff9
lbffah:
	ld a,(bc)		;bffa
	ld sp,hl		;bffb
	ld b,b			;bffc
	add a,b			;bffd
	rst 18h			;bffe
	ld (de),a		;bfff

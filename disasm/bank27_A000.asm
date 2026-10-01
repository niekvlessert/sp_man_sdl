; z80dasm 1.2.0
; command line: z80dasm -a -l -g 0xA000 -o /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/disasm/bank27_A000.asm /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/banks/bank27.bin

	org 0a000h

	rst 38h			;a000
	dec de			;a001
	rst 38h			;a002
	nop			;a003
	rst 38h			;a004
	ld de,04000h		;a005
	ld bc,01311h		;a008
	rla			;a00b
	dec de			;a00c
	ld (bc),a		;a00d
	inc l			;a00e
	ld l,030h		;a00f
	ld (00334h),a		;a011
	dec l			;a014
	cpl			;a015
	ld sp,03533h		;a016
	ld (bc),a		;a019
	ld bc,01e1ch		;a01a
	jr nz,$+36		;a01d
	inc bc			;a01f
	ld bc,01f1dh		;a020
	ld hl,00223h		;a023
	ld (hl),038h		;a026
	ld a,(00d3ch)		;a028
	inc bc			;a02b
	scf			;a02c
	add hl,sp		;a02d
	dec sp			;a02e
	dec a			;a02f
	ld c,002h		;a030
	ld bc,01814h		;a032
	ld d,01ah		;a035
	inc bc			;a037
	inc l			;a038
	ld l,030h		;a039
	ld (00234h),a		;a03b
	dec l			;a03e
	cpl			;a03f
	ld sp,03533h		;a040
	inc bc			;a043
	ld bc,02a24h		;a044
	jr z,la06bh		;a047
	ld (bc),a		;a049
	ld bc,02b25h		;a04a
	add hl,hl		;a04d
	inc hl			;a04e
	inc bc			;a04f
	ld (hl),038h		;a050
	ld a,(00d3ch)		;a052
	ld (bc),a		;a055
	scf			;a056
	add hl,sp		;a057
	dec sp			;a058
	dec a			;a059
	ld c,003h		;a05a
	ld bc,01210h		;a05c
	ld d,01bh		;a05f
	ld (bc),a		;a061
	ld bc,01311h		;a062
	rla			;a065
	dec de			;a066
	inc bc			;a067
	inc c			;a068
	ld b,005h		;a069
la06bh:
	ld b,008h		;a06b
	ld (bc),a		;a06d
	ld bc,01814h		;a06e
	ld d,01ah		;a071
	inc bc			;a073
	ld bc,01915h		;a074
	rla			;a077
	dec de			;a078
	ld (bc),a		;a079
	inc l			;a07a
	ld l,030h		;a07b
	ld (00334h),a		;a07d
	dec l			;a080
	cpl			;a081
	ld sp,03533h		;a082
	ld (bc),a		;a085
	ld bc,02624h		;a086
	jr z,$+36		;a089
	inc bc			;a08b
	ld bc,02725h		;a08c
	add hl,hl		;a08f
	inc hl			;a090
	ld (bc),a		;a091
	ld (hl),038h		;a092
	ld a,(00d3ch)		;a094
	inc bc			;a097
	scf			;a098
	add hl,sp		;a099
	dec sp			;a09a
	dec a			;a09b
	ld c,002h		;a09c
	ld bc,00f15h		;a09e
	ld d,01ah		;a0a1
	inc bc			;a0a3
	inc l			;a0a4
	ld l,030h		;a0a5
	ld (00234h),a		;a0a7
	dec l			;a0aa
	cpl			;a0ab
	ld sp,03533h		;a0ac
	inc bc			;a0af
	ld bc,01e1ch		;a0b0
	jr nz,$+36		;a0b3
	ld (bc),a		;a0b5
	ld bc,01f1dh		;a0b6
	ld hl,00323h		;a0b9
	ld (hl),038h		;a0bc
	ld a,(00d3ch)		;a0be
	ld (bc),a		;a0c1
	scf			;a0c2
	add hl,sp		;a0c3
	dec sp			;a0c4
	dec a			;a0c5
	ld c,003h		;a0c6
	ld bc,01915h		;a0c8
	ld d,01ah		;a0cb
	ld (bc),a		;a0cd
	inc l			;a0ce
	ld l,030h		;a0cf
	ld (00334h),a		;a0d1
	dec l			;a0d4
	cpl			;a0d5
	ld sp,03533h		;a0d6
	ld (bc),a		;a0d9
	ld bc,02e2ch		;a0da
	jr nc,$+54		;a0dd
	inc bc			;a0df
	ld bc,02f2dh		;a0e0
	ld sp,00235h		;a0e3
	ld bc,00901h		;a0e6
	ld a,(bc)		;a0e9
	dec bc			;a0ea
	and (hl)		;a0eb
	ld bc,00101h		;a0ec
	ld bc,la501h		;a0ef
	ld bc,00101h		;a0f2
	ld bc,la701h		;a0f5
	rst 38h			;a0f8
	inc e			;a0f9
	ld a,(0ffa4h)		;a0fa
	ld de,04000h		;a0fd
	rst 38h			;a100
	nop			;a101
	ld bc,00101h		;a102
	ld bc,la501h		;a105
	ld bc,00101h		;a108
	ld bc,la701h		;a10b
	ld bc,00101h		;a10e
	ld bc,la501h		;a111
	ld bc,00101h		;a114
	ld bc,la701h		;a117
	ld bc,00101h		;a11a
	ld bc,la501h		;a11d
	ld bc,00101h		;a120
	ld bc,la701h		;a123
	ld bc,00101h		;a126
	ld bc,la501h		;a129
	rst 38h			;a12c
	inc de			;a12d
	ld a,(001a4h)		;a12e
	ld bc,00101h		;a131
	ld bc,0ffa7h		;a134
	ld a,(de)		;a137
	rst 38h			;a138
	rla			;a139
	ld bc,011ffh		;a13a
	dec b			;a13d
	jr c,$+3		;a13e
	ld bc,05901h		;a140
	ld a,0a5h		;a143
	ld bc,05801h		;a145
	ld e,d			;a148
	ccf			;a149
	ld b,l			;a14a
	ld bc,00101h		;a14b
	ld d,l			;a14e
	ld b,b			;a14f
	ld b,(hl)		;a150
	ld bc,00101h		;a151
	ld d,(hl)		;a154
	ld b,c			;a155
	ld b,a			;a156
	ld bc,05701h		;a157
	ld e,e			;a15a
	ld b,h			;a15b
	ld c,b			;a15c
	ld bc,00101h		;a15d
	ld e,(hl)		;a160
	ld d,b			;a161
	and a			;a162
	ld bc,00101h		;a163
	ld e,a			;a166
	ld d,c			;a167
	and l			;a168
	ld bc,06888h		;a169
	ld l,(hl)		;a16c
	ld c,c			;a16d
	ld b,l			;a16e
	ld bc,la889h		;a16f
	ld l,a			;a172
	ld b,b			;a173
	ld b,(hl)		;a174
	ld bc,0a98ah		;a175
	ld l,h			;a178
	ld b,c			;a179
	ld b,a			;a17a
	ld bc,00101h		;a17b
	ld l,l			;a17e
	ld b,h			;a17f
	ld c,b			;a180
	ld bc,00101h		;a181
	ld h,c			;a184
	ld c,l			;a185
	and a			;a186
	ld bc,00101h		;a187
	ld bc,la54eh		;a18a
	ld bc,00101h		;a18d
	ld bc,0a74ch		;a190
	ld bc,00101h		;a193
	ld bc,la54fh		;a196
	ld bc,00101h		;a199
	ld bc,la74eh		;a19c
	ld bc,00101h		;a19f
	ld bc,la54fh		;a1a2
	ld bc,00101h		;a1a5
	ld (hl),b		;a1a8
	ld d,e			;a1a9
	and a			;a1aa
	ld bc,00101h		;a1ab
	ld h,d			;a1ae
	ld d,h			;a1af
	and l			;a1b0
	ld bc,00101h		;a1b1
	ld bc,la74fh		;a1b4
	ld bc,00101h		;a1b7
	ld bc,la54eh		;a1ba
	ld bc,00101h		;a1bd
	ld bc,la74fh		;a1c0
	ld bc,00101h		;a1c3
	ld (hl),b		;a1c6
	ld d,e			;a1c7
	and a			;a1c8
	ld bc,00101h		;a1c9
	xor l			;a1cc
	xor h			;a1cd
	and l			;a1ce
	ld bc,00101h		;a1cf
	ld bc,la74fh		;a1d2
	ld bc,00101h		;a1d5
	ld bc,la54fh		;a1d8
	ld bc,00101h		;a1db
	xor d			;a1de
	xor e			;a1df
	and a			;a1e0
	ld bc,00101h		;a1e1
	xor l			;a1e4
	xor h			;a1e5
	and l			;a1e6
	ld bc,00101h		;a1e7
	ld bc,la74fh		;a1ea
	ld bc,00101h		;a1ed
	ld bc,la54eh		;a1f0
	ld bc,00101h		;a1f3
	ld bc,la74fh		;a1f6
	ld bc,00101h		;a1f9
	ld (hl),b		;a1fc
	ld d,e			;a1fd
	and l			;a1fe
	ld bc,00101h		;a1ff
	ld e,h			;a202
	ld b,d			;a203
	ld b,l			;a204
	ld bc,00101h		;a205
	ld e,l			;a208
	ld b,e			;a209
	ld b,(hl)		;a20a
	ld bc,06301h		;a20b
	ld h,a			;a20e
	ld b,c			;a20f
	ld b,a			;a210
	ld bc,06401h		;a211
	ld l,e			;a214
	ld b,h			;a215
	ld c,b			;a216
	ld bc,06888h		;a217
	ld l,a			;a21a
	ld c,e			;a21b
	and a			;a21c
	ld bc,06989h		;a21d
	ld l,h			;a220
	ld c,d			;a221
	and l			;a222
	ld bc,06a8ah		;a223
	ld l,l			;a226
	ld c,c			;a227
	ld b,l			;a228
	ld bc,00101h		;a229
	ld d,l			;a22c
	ld b,b			;a22d
	ld b,(hl)		;a22e
	ld bc,00101h		;a22f
	ld h,(hl)		;a232
	ld b,c			;a233
	ld b,a			;a234
	ld bc,00101h		;a235
	ld (hl),c		;a238
	ld b,h			;a239
	ld c,b			;a23a
	ld bc,00101h		;a23b
	ld h,d			;a23e
	ld d,h			;a23f
	and a			;a240
	ld bc,00101h		;a241
	ld bc,la54fh		;a244
	ld bc,00101h		;a247
	ld bc,0a74ch		;a24a
	ld bc,00101h		;a24d
	ld (hl),b		;a250
	ld d,e			;a251
	and l			;a252
	ld bc,00101h		;a253
	ld h,d			;a256
	ld d,h			;a257
	and l			;a258
	ld bc,00101h		;a259
	ld bc,la552h		;a25c
	rst 38h			;a25f
	rra			;a260
	dec b			;a261
	rst 38h			;a262
	ld (de),a		;a263
	ld bc,00101h		;a264
	ld bc,la74fh		;a267
	ld bc,00101h		;a26a
	ld (hl),b		;a26d
	ld d,e			;a26e
	and l			;a26f
	ld bc,00101h		;a270
	ld h,b			;a273
	ld c,c			;a274
	ld b,l			;a275
	ld bc,00101h		;a276
	ld d,l			;a279
	ld b,b			;a27a
	ld b,(hl)		;a27b
	ld bc,00101h		;a27c
	ld d,(hl)		;a27f
	ld b,c			;a280
	ld b,a			;a281
	ld bc,05701h		;a282
	ld e,e			;a285
	ld b,h			;a286
	ld c,b			;a287
	ld bc,00101h		;a288
	ld e,a			;a28b
	ld c,e			;a28c
	and a			;a28d
	ld bc,0018bh		;a28e
	ld l,(hl)		;a291
	ld c,d			;a292
	and l			;a293
	ld bc,0728ch		;a294
	ld l,a			;a297
	ld c,c			;a298
	ld b,l			;a299
	ld bc,0738dh		;a29a
	ld l,h			;a29d
	ld b,b			;a29e
	ld b,(hl)		;a29f
	ld a,d			;a2a0
	adc a,(hl)		;a2a1
	ld (hl),l		;a2a2
	ld l,a			;a2a3
	ld b,c			;a2a4
	nop			;a2a5
	ld a,e			;a2a6
	adc a,a			;a2a7
	ld h,l			;a2a8
	ld l,h			;a2a9
	nop			;a2aa
	nop			;a2ab
	ld a,h			;a2ac
	adc a,a			;a2ad
	ld h,l			;a2ae
	nop			;a2af
	nop			;a2b0
	nop			;a2b1
	ld a,h			;a2b2
	adc a,a			;a2b3
	nop			;a2b4
	nop			;a2b5
	nop			;a2b6
	nop			;a2b7
	ld a,h			;a2b8
	nop			;a2b9
	nop			;a2ba
	nop			;a2bb
	nop			;a2bc
	nop			;a2bd
	cp 0ffh			;a2be
	ld de,03801h		;a2c0
	rst 38h			;a2c3
	inc b			;a2c4
	rst 38h			;a2c5
	dec de			;a2c6
	ld bc,00101h		;a2c7
	ld bc,00101h		;a2ca
	ld bc,07601h		;a2cd
	ld (hl),a		;a2d0
	ld a,b			;a2d1
	ld a,c			;a2d2
	ld a,(hl)		;a2d3
	ld a,a			;a2d4
	ld a,l			;a2d5
	ld bc,00101h		;a2d6
	ld bc,00101h		;a2d9
	ld bc,00101h		;a2dc
	add a,h			;a2df
	add a,l			;a2e0
	add a,l			;a2e1
	add a,l			;a2e2
	sub b			;a2e3
	add a,l			;a2e4
	rst 38h			;a2e5
	ld de,03802h		;a2e6
	ld bc,00101h		;a2e9
	ld bc,00101h		;a2ec
	ld bc,00101h		;a2ef
	ld bc,00101h		;a2f2
	ld bc,00101h		;a2f5
	ld bc,00101h		;a2f8
	ld bc,00101h		;a2fb
	ld bc,00101h		;a2fe
	ld bc,00101h		;a301
	ld bc,00101h		;a304
	rst 38h			;a307
	ld de,03803h		;a308
	ld bc,00101h		;a30b
	ld bc,00101h		;a30e
	ld bc,00101h		;a311
	ld bc,00101h		;a314
	ld bc,00101h		;a317
	ld bc,00101h		;a31a
	ld bc,00101h		;a31d
	ld bc,00101h		;a320
	ld bc,00101h		;a323
	ld bc,00101h		;a326
	rst 38h			;a329
	dec de			;a32a
	rst 38h			;a32b
	rla			;a32c
	ld bc,000ffh		;a32d
	rst 38h			;a330
	ld de,03804h		;a331
	rst 38h			;a334
	dec e			;a335
	ld bc,00101h		;a336
la339h:
	ld bc,07d90h		;a339
	ld bc,00101h		;a33c
	ld bc,07985h		;a33f
	ld bc,00101h		;a342
	ld bc,07d91h		;a345
	ld bc,00101h		;a348
	ld bc,07e85h		;a34b
	ld bc,00101h		;a34e
	ld bc,07f86h		;a351
	ld bc,09401h		;a354
	sbc a,b			;a357
	sbc a,h			;a358
	add a,b			;a359
	ld bc,09501h		;a35a
	sbc a,c			;a35d
	sbc a,l			;a35e
	add a,c			;a35f
	ld bc,09601h		;a360
	sbc a,d			;a363
	sbc a,(hl)		;a364
	add a,d			;a365
	ld bc,09701h		;a366
	sbc a,e			;a369
	sbc a,a			;a36a
	add a,e			;a36b
	ld bc,00101h		;a36c
	ld bc,07e87h		;a36f
	ld bc,00101h		;a372
	ld bc,07f86h		;a375
	ld bc,00101h		;a378
	ld bc,080a0h		;a37b
	ld bc,00101h		;a37e
	ld bc,081a1h		;a381
	ld bc,00101h		;a384
	ld bc,082a2h		;a387
	ld bc,00101h		;a38a
	ld bc,083a3h		;a38d
	rst 38h			;a390
	djnz la339h		;a391
	and e			;a393
	ld bc,00101h		;a394
	ld bc,09392h		;a397
	ld bc,00101h		;a39a
	ld bc,0a401h		;a39d
	ld bc,00101h		;a3a0
	ld bc,09201h		;a3a3
	rst 38h			;a3a6
	jr $+1			;a3a7
	dec de			;a3a9
	rst 38h			;a3aa
	rla			;a3ab
	ld bc,00bffh		;a3ac
	rst 38h			;a3af
	add hl,de		;a3b0
	nop			;a3b1
	ld bc,00101h		;a3b2
	ld bc,00101h		;a3b5
	ld bc,00101h		;a3b8
	ld bc,00101h		;a3bb
	ld bc,00101h		;a3be
	rst 38h			;a3c1
	inc de			;a3c2
	ld c,l			;a3c3
	and h			;a3c4
	ld bc,00101h		;a3c5
	ld bc,00101h		;a3c8
	ld bc,00101h		;a3cb
	ld bc,00101h		;a3ce
	ld bc,00101h		;a3d1
	rst 38h			;a3d4
	ld de,lb805h		;a3d5
	ld bc,00101h		;a3d8
	ld bc,00101h		;a3db
	ld bc,00101h		;a3de
	ld bc,00101h		;a3e1
	ld bc,00101h		;a3e4
	ld bc,00101h		;a3e7
	ld bc,00101h		;a3ea
	ld bc,00101h		;a3ed
	ld bc,00101h		;a3f0
	ld bc,00101h		;a3f3
	ld bc,00101h		;a3f6
	ld bc,00101h		;a3f9
	ld bc,00101h		;a3fc
	ld bc,00101h		;a3ff
	ld bc,00101h		;a402
	ld bc,00101h		;a405
	ld bc,00101h		;a408
	ld bc,00101h		;a40b
	ld bc,00101h		;a40e
	ld bc,00101h		;a411
	rst 38h			;a414
	rla			;a415
	ld (bc),a		;a416
	rst 38h			;a417
	nop			;a418
	ld bc,00101h		;a419
	ld bc,00101h		;a41c
la41fh:
	ld bc,00101h		;a41f
	ld bc,00101h		;a422
	ld bc,00101h		;a425
	ld bc,00101h		;a428
	ld bc,00101h		;a42b
	ld bc,00101h		;a42e
	rst 38h			;a431
	ld de,00806h		;a432
	cp 0ffh			;a435
	ld e,0ffh		;a437
	ld d,014h		;a439
	ld bc,01030h		;a43b
	ld d,b			;a43e
	ld hl,03470h		;a43f
	dec h			;a442
	ld b,d			;a443
	ld (04752h),hl		;a444
	sub h			;a447
	ld b,a			;a448
	or (hl)			;a449
	ld h,0c3h		;a44a
	cp 000h			;a44c
	nop			;a44e
	inc bc			;a44f
	ld de,02214h		;a450
	dec h			;a453
	inc sp			;a454
	ld b,a			;a455
	ld b,l			;a456
	ld (07152h),hl		;a457
	sub e			;a45a
	ld (hl),e		;a45b
	or l			;a45c
	jr nc,la41fh		;a45d
	cp 0feh			;a45f
	rst 38h			;a461
	dec de			;a462
	rst 38h			;a463
	nop			;a464
	dec b			;a465
	ld c,(hl)		;a466
	ld c,d			;a467
	ld d,h			;a468
	dec b			;a469
	ld h,004h		;a46a
	ld c,a			;a46c
	ld c,c			;a46d
	ld d,l			;a46e
	inc b			;a46f
	daa			;a470
	dec b			;a471
	ld d,c			;a472
	ld c,d			;a473
	ld d,(hl)		;a474
	dec b			;a475
	ld h,004h		;a476
	ld d,d			;a478
	ld c,d			;a479
	ld d,e			;a47a
	inc b			;a47b
	daa			;a47c
	dec b			;a47d
	ld c,(hl)		;a47e
	ld c,d			;a47f
	ld d,h			;a480
	dec b			;a481
	ld h,004h		;a482
	ld c,a			;a484
	ld c,c			;a485
	ld d,l			;a486
	inc b			;a487
	daa			;a488
	dec b			;a489
	ld d,c			;a48a
	ld c,d			;a48b
	ld d,(hl)		;a48c
	dec b			;a48d
	ld h,004h		;a48e
	ld d,d			;a490
	ld c,d			;a491
	ld d,e			;a492
	inc b			;a493
	daa			;a494
	inc b			;a495
	ld c,(hl)		;a496
	ld c,d			;a497
	ld d,h			;a498
	inc b			;a499
	ld hl,(04f05h)		;a49a
	ld c,c			;a49d
	ld d,l			;a49e
	inc b			;a49f
	daa			;a4a0
	inc b			;a4a1
	ld d,c			;a4a2
	ld c,d			;a4a3
	ld d,(hl)		;a4a4
	dec b			;a4a5
	ld h,005h		;a4a6
	ld d,d			;a4a8
	ld c,d			;a4a9
	ld d,e			;a4aa
	inc b			;a4ab
	daa			;a4ac
	inc b			;a4ad
	ld c,(hl)		;a4ae
	ld c,d			;a4af
	ld d,h			;a4b0
	inc e			;a4b1
	ld hl,(04f05h)		;a4b2
	ld c,c			;a4b5
	ld d,l			;a4b6
	inc b			;a4b7
	daa			;a4b8
	inc b			;a4b9
	ld d,c			;a4ba
	ld c,d			;a4bb
	ld d,(hl)		;a4bc
	dec b			;a4bd
	ld h,005h		;a4be
	ld d,d			;a4c0
	ld c,d			;a4c1
	ld d,e			;a4c2
	inc b			;a4c3
	daa			;a4c4
	ld (de),a		;a4c5
	ld c,(hl)		;a4c6
	ld c,d			;a4c7
	ld d,h			;a4c8
	inc b			;a4c9
	daa			;a4ca
	ld (bc),a		;a4cb
	ld b,049h		;a4cc
	ld d,l			;a4ce
	dec b			;a4cf
	inc e			;a4d0
	inc bc			;a4d1
	rlca			;a4d2
	ld c,d			;a4d3
	ld d,(hl)		;a4d4
	inc b			;a4d5
	ld h,02ah		;a4d6
	ld d,d			;a4d8
	ld c,d			;a4d9
	ld d,e			;a4da
	dec b			;a4db
	daa			;a4dc
	add hl,hl		;a4dd
	ld c,(hl)		;a4de
	ld c,d			;a4df
	ld d,h			;a4e0
	inc e			;a4e1
	ld hl,(04f2ah)		;a4e2
	ld c,c			;a4e5
	ld d,l			;a4e6
	ld h,01ch		;a4e7
	inc bc			;a4e9
	rlca			;a4ea
	ld c,d			;a4eb
	ld d,(hl)		;a4ec
	inc b			;a4ed
	ld h,02ah		;a4ee
	inc c			;a4f0
	ld c,d			;a4f1
	ld d,e			;a4f2
	dec b			;a4f3
	daa			;a4f4
	rrca			;a4f5
	ld c,(hl)		;a4f6
	ld c,d			;a4f7
	ld d,h			;a4f8
	inc b			;a4f9
	ld h,001h		;a4fa
	ld c,a			;a4fc
	ld c,c			;a4fd
	ld d,l			;a4fe
	add hl,hl		;a4ff
	inc e			;a500
la501h:
	ld (bc),a		;a501
	ld b,04ah		;a502
	ld d,(hl)		;a504
	add hl,hl		;a505
	inc e			;a506
	inc de			;a507
	dec c			;a508
	ld c,d			;a509
	ld d,e			;a50a
	dec b			;a50b
	daa			;a50c
	rrca			;a50d
	ld c,(hl)		;a50e
	ld c,d			;a50f
	ld d,h			;a510
	inc b			;a511
	ld h,001h		;a512
	ld c,a			;a514
	ld c,c			;a515
	ld d,l			;a516
	dec b			;a517
	daa			;a518
	ld (de),a		;a519
	ld d,c			;a51a
	ld c,d			;a51b
	ld d,(hl)		;a51c
	inc b			;a51d
	ld h,001h		;a51e
	ld d,d			;a520
	ld c,d			;a521
	ld d,e			;a522
	dec b			;a523
	daa			;a524
	ld (de),a		;a525
	ld c,(hl)		;a526
	ld c,d			;a527
	ld d,h			;a528
	inc b			;a529
	ld h,001h		;a52a
	ld c,a			;a52c
	ld c,c			;a52d
	ld d,l			;a52e
	dec b			;a52f
	daa			;a530
	ld (de),a		;a531
	ld d,c			;a532
	ld c,d			;a533
	ld d,(hl)		;a534
	inc b			;a535
	ld h,002h		;a536
	ld c,(hl)		;a538
	ld c,d			;a539
	ld d,e			;a53a
	dec b			;a53b
	daa			;a53c
	ld hl,(04a4dh)		;a53d
	ld d,h			;a540
	dec b			;a541
	ld hl,(04d2ah)		;a542
	ld c,d			;a545
	ld d,e			;a546
	nop			;a547
	ld hl,(05110h)		;a548
	ld c,c			;a54b
	ld d,(hl)		;a54c
	inc b			;a54d
la54eh:
	add hl,sp		;a54e
la54fh:
	rst 38h			;a54f
	nop			;a550
	rst 38h			;a551
la552h:
	ld (de),a		;a552
	ld de,04a52h		;a553
	ld d,e			;a556
	dec b			;a557
	dec sp			;a558
	ld (de),a		;a559
	ld c,(hl)		;a55a
	ld c,d			;a55b
	ld d,h			;a55c
	rla			;a55d
	inc sp			;a55e
	ld (bc),a		;a55f
	ld b,049h		;a560
	ld d,l			;a562
	dec (hl)		;a563
	ld (hl),013h		;a564
	dec c			;a566
	ld c,d			;a567
	ld d,(hl)		;a568
	inc b			;a569
	dec (hl)		;a56a
	dec d			;a56b
	ld d,c			;a56c
	ld c,d			;a56d
	ld d,e			;a56e
	nop			;a56f
	dec b			;a570
	ld (de),a		;a571
	ld c,(hl)		;a572
	ld c,d			;a573
	ld d,h			;a574
	dec b			;a575
	inc b			;a576
	inc bc			;a577
	rlca			;a578
	ld c,c			;a579
	ld d,l			;a57a
	inc b			;a57b
	nop			;a57c
	add hl,hl		;a57d
	ld hl,(0564ah)		;a57e
	nop			;a581
	inc b			;a582
	add hl,hl		;a583
	ld hl,(03129h)		;a584
	scf			;a587
	inc hl			;a588
	inc bc			;a589
	ld hl,(01c29h)		;a58a
	add hl,hl		;a58d
	inc e			;a58e
	nop			;a58f
	ld hl,(01c29h)		;a590
	add hl,hl		;a593
	ld hl,(00000h)		;a594
	add hl,hl		;a597
	inc e			;a598
	add hl,hl		;a599
	ld hl,(00000h)		;a59a
	nop			;a59d
	inc e			;a59e
	add hl,hl		;a59f
	ld hl,(00000h)		;a5a0
	nop			;a5a3
	nop			;a5a4
	add hl,hl		;a5a5
	inc e			;a5a6
	nop			;a5a7
	nop			;a5a8
	nop			;a5a9
	nop			;a5aa
	nop			;a5ab
	inc e			;a5ac
	rst 38h			;a5ad
	ld a,(de)		;a5ae
	rst 38h			;a5af
	dec de			;a5b0
	rst 38h			;a5b1
	ld bc,02929h		;a5b2
	jr c,la5bbh		;a5b5
	dec b			;a5b7
	nop			;a5b8
	inc b			;a5b9
	dec b			;a5ba
la5bbh:
	nop			;a5bb
	inc b			;a5bc
	nop			;a5bd
	inc b			;a5be
	inc e			;a5bf
	inc e			;a5c0
	inc e			;a5c1
	inc l			;a5c2
	ld hl,(02a2ch)		;a5c3
	inc b			;a5c6
	dec b			;a5c7
	inc b			;a5c8
	inc b			;a5c9
	nop			;a5ca
	inc b			;a5cb
	nop			;a5cc
	inc l			;a5cd
	inc l			;a5ce
	inc l			;a5cf
	inc l			;a5d0
	add hl,hl		;a5d1
	add hl,hl		;a5d2
	add hl,hl		;a5d3
	nop			;a5d4
	inc b			;a5d5
	ld a,005h		;a5d6
	inc b			;a5d8
	dec b			;a5d9
	inc b			;a5da
	inc e			;a5db
	inc e			;a5dc
	inc e			;a5dd
	inc e			;a5de
	inc e			;a5df
	inc l			;a5e0
	inc e			;a5e1
	inc l			;a5e2
	inc e			;a5e3
	dec e			;a5e4
	ld c,c			;a5e5
	ld c,d			;a5e6
	ld c,d			;a5e7
	ld c,c			;a5e8
	dec hl			;a5e9
	dec hl			;a5ea
	dec hl			;a5eb
	dec hl			;a5ec
	dec hl			;a5ed
	dec hl			;a5ee
	add hl,hl		;a5ef
	add hl,hl		;a5f0
	inc l			;a5f1
	ld e,005h		;a5f2
	inc b			;a5f4
	nop			;a5f5
	inc b			;a5f6
	add hl,hl		;a5f7
	add hl,hl		;a5f8
	add hl,hl		;a5f9
	add hl,hl		;a5fa
	add hl,hl		;a5fb
	add hl,hl		;a5fc
	add hl,hl		;a5fd
	inc e			;a5fe
	inc e			;a5ff
	dec e			;a600
	ld c,d			;a601
	ld c,c			;a602
	ld c,d			;a603
	ld c,d			;a604
	ld c,d			;a605
	ld c,c			;a606
	ld c,d			;a607
	dec h			;a608
	jr z,la630h		;a609
	jr z,la632h		;a60b
	add hl,hl		;a60d
	ld e,000h		;a60e
	inc b			;a610
	dec b			;a611
	nop			;a612
	inc b			;a613
	dec b			;a614
	inc b			;a615
	dec b			;a616
	inc l			;a617
	inc l			;a618
	inc l			;a619
	inc l			;a61a
	ld d,l			;a61b
	inc e			;a61c
	inc e			;a61d
	inc e			;a61e
	ld c,h			;a61f
	ld c,h			;a620
	ld c,h			;a621
	ld c,h			;a622
	ld c,h			;a623
	ld c,h			;a624
	ld c,h			;a625
	ld hl,(02a2ah)		;a626
	ld d,l			;a629
	ld d,l			;a62a
	add hl,hl		;a62b
	add hl,hl		;a62c
	ld d,c			;a62d
	ld d,d			;a62e
	rra			;a62f
la630h:
	ld c,a			;a630
	ld d,c			;a631
la632h:
	ld d,d			;a632
	ld c,(hl)		;a633
	ld d,d			;a634
	ld d,c			;a635
	ld d,d			;a636
	ld d,l			;a637
	ld d,l			;a638
	ld d,l			;a639
	inc e			;a63a
	inc e			;a63b
	inc e			;a63c
	ld e,056h		;a63d
	ld d,e			;a63f
	ld d,h			;a640
	ld d,e			;a641
	ld d,(hl)		;a642
	ld d,e			;a643
	ld d,(hl)		;a644
	ld d,l			;a645
	ld d,l			;a646
	ld d,l			;a647
	ld d,l			;a648
	add hl,hl		;a649
	add hl,hl		;a64a
	dec e			;a64b
	add hl,de		;a64c
	add hl,de		;a64d
	add hl,de		;a64e
	add hl,de		;a64f
	add hl,de		;a650
	add hl,de		;a651
	add hl,de		;a652
	ld d,l			;a653
	ld d,l			;a654
	ld d,l			;a655
	ld d,l			;a656
	ld d,l			;a657
	inc e			;a658
	inc e			;a659
	inc e			;a65a
	dec sp			;a65b
	add hl,sp		;a65c
	ld a,(03a39h)		;a65d
	dec sp			;a660
	ld d,l			;a661
	ld d,l			;a662
	ld d,l			;a663
	ld d,l			;a664
	ld d,l			;a665
	ld d,l			;a666
	rst 38h			;a667
	dec de			;a668
	rst 38h			;a669
	nop			;a66a
	inc l			;a66b
	ld hl,(05351h)		;a66c
	add hl,de		;a66f
	add hl,sp		;a670
	inc l			;a671
	ld hl,(0564dh)		;a672
	add hl,de		;a675
	ld hl,(04c11h)		;a676
	ld d,c			;a679
	ld d,e			;a67a
	add hl,de		;a67b
	dec sp			;a67c
	ld (de),a		;a67d
	ld c,h			;a67e
	ld c,(hl)		;a67f
	ld d,h			;a680
	add hl,de		;a681
	add hl,sp		;a682
	ld de,04f4ch		;a683
	ld d,l			;a686
	inc d			;a687
	jr $+1			;a688
	rla			;a68a
	ld bc,04c12h		;a68b
	ld d,d			;a68e
	ld d,(hl)		;a68f
	add hl,de		;a690
	dec sp			;a691
	ld de,04f4ch		;a692
	ld d,l			;a695
	add hl,de		;a696
	add hl,sp		;a697
	ld (de),a		;a698
	ld c,h			;a699
	ld d,d			;a69a
	ld d,(hl)		;a69b
	add hl,de		;a69c
	ld a,(00918h)		;a69d
	ld d,c			;a6a0
	ld d,e			;a6a1
	ld a,(de)		;a6a2
	jr $+20			;a6a3
	ld c,h			;a6a5
	ld d,d			;a6a6
	ld d,(hl)		;a6a7
	add hl,de		;a6a8
	add hl,sp		;a6a9
	ld d,b			;a6aa
	ld c,h			;a6ab
	ld c,a			;a6ac
	ld d,l			;a6ad
	add hl,de		;a6ae
	ld a,(04c12h)		;a6af
	ld d,d			;a6b2
	ld d,(hl)		;a6b3
	add hl,de		;a6b4
	dec sp			;a6b5
	jr la6f9h		;a6b6
	ld d,c			;a6b8
	ld d,e			;a6b9
	add hl,de		;a6ba
	add hl,sp		;a6bb
	dec de			;a6bc
	ld b,c			;a6bd
	ld c,(hl)		;a6be
	ld d,h			;a6bf
	add hl,de		;a6c0
	ld a,(04c12h)		;a6c1
	ld c,a			;a6c4
	ld d,l			;a6c5
	add hl,de		;a6c6
	inc e			;a6c7
	ld d,b			;a6c8
	ld c,h			;a6c9
	ld d,d			;a6ca
	ld d,(hl)		;a6cb
	ld a,(de)		;a6cc
	jr $+20			;a6cd
	ld c,h			;a6cf
	ld d,c			;a6d0
	ld d,e			;a6d1
	dec de			;a6d2
	inc h			;a6d3
	inc a			;a6d4
	ld c,h			;a6d5
	ld c,(hl)		;a6d6
	ld d,h			;a6d7
	add hl,de		;a6d8
	add hl,sp		;a6d9
	ld (de),a		;a6da
	ld c,h			;a6db
	ld d,c			;a6dc
	ld d,e			;a6dd
	add hl,de		;a6de
	ld a,(04c3ch)		;a6df
	ld d,d			;a6e2
	ld d,(hl)		;a6e3
	add hl,de		;a6e4
	dec sp			;a6e5
	ld (de),a		;a6e6
	ld c,h			;a6e7
	ld c,a			;a6e8
	ld d,l			;a6e9
	add hl,de		;a6ea
	add hl,sp		;a6eb
	ld a,(de)		;a6ec
	jr la6f9h		;a6ed
	ld d,h			;a6ef
	add hl,de		;a6f0
	ld a,(de)		;a6f1
	ld (de),a		;a6f2
	ld c,h			;a6f3
	ld d,c			;a6f4
	ld d,e			;a6f5
	add hl,de		;a6f6
	dec sp			;a6f7
	inc a			;a6f8
la6f9h:
	ld c,h			;a6f9
	ld d,d			;a6fa
	ld d,(hl)		;a6fb
	add hl,de		;a6fc
	add hl,sp		;a6fd
	ld (de),a		;a6fe
	ld c,h			;a6ff
	ld c,a			;a700
la701h:
	ld d,l			;a701
	add hl,de		;a702
	ld a,(04c3ch)		;a703
	ld c,(hl)		;a706
	ld d,h			;a707
	add hl,de		;a708
	dec sp			;a709
	ld (de),a		;a70a
	ld c,h			;a70b
	ld d,c			;a70c
	ld d,e			;a70d
	add hl,de		;a70e
	add hl,sp		;a70f
	inc a			;a710
	ld c,h			;a711
	ld c,(hl)		;a712
	ld d,h			;a713
	add hl,de		;a714
	ld a,(04c12h)		;a715
	ld d,c			;a718
	ld d,e			;a719
	add hl,de		;a71a
	dec sp			;a71b
	ld a,(bc)		;a71c
	ld c,h			;a71d
	ld d,d			;a71e
	ld a,(de)		;a71f
	jr la72ch		;a720
	ld (de),a		;a722
	ld c,h			;a723
	ld d,c			;a724
	ld d,e			;a725
	add hl,de		;a726
	ld a,(04c3ch)		;a727
	ld d,d			;a72a
	ld d,(hl)		;a72b
la72ch:
	add hl,de		;a72c
	dec sp			;a72d
	jr la75ah		;a72e
	ld c,a			;a730
	ld d,l			;a731
	add hl,de		;a732
	ld a,(de)		;a733
	dec de			;a734
	ld hl,(05652h)		;a735
	add hl,de		;a738
	dec de			;a739
	rst 38h			;a73a
	rla			;a73b
	ld bc,000ffh		;a73c
	inc a			;a73f
	ld c,h			;a740
	ld d,c			;a741
	ld d,e			;a742
	add hl,de		;a743
	add hl,sp		;a744
	ld (de),a		;a745
	ld c,h			;a746
	ld d,d			;a747
	ld d,(hl)		;a748
	add hl,de		;a749
	ld a,(04c3ch)		;a74a
	ld c,a			;a74d
la74eh:
	ld d,l			;a74e
la74fh:
	add hl,de		;a74f
	dec sp			;a750
	ld (de),a		;a751
	ld c,h			;a752
	ld c,(hl)		;a753
	ld d,h			;a754
	add hl,de		;a755
	dec hl			;a756
	ld hl,(0202ah)		;a757
la75ah:
	ld b,d			;a75a
	add hl,hl		;a75b
	inc l			;a75c
	inc l			;a75d
	add hl,hl		;a75e
	jr nz,la7a3h		;a75f
	add hl,hl		;a761
	inc l			;a762
	ld hl,(03f46h)		;a763
	jr nc,$+77		;a766
	ld hl,(0412ch)		;a768
	ld c,(hl)		;a76b
	ld d,h			;a76c
	ld b,b			;a76d
	inc l			;a76e
	ld hl,(05141h)		;a76f
	ld d,e			;a772
	ld b,b			;a773
	ld hl,(04c04h)		;a774
	ld c,(hl)		;a777
	ld d,h			;a778
	add hl,de		;a779
	dec b			;a77a
	dec b			;a77b
	ld c,h			;a77c
	ld d,c			;a77d
	ld d,e			;a77e
	add hl,de		;a77f
	nop			;a780
	inc e			;a781
	inc l			;a782
	ld hl,(01921h)		;a783
	dec sp			;a786
	inc e			;a787
	inc l			;a788
	ld hl,(01953h)		;a789
	add hl,hl		;a78c
	inc e			;a78d
	inc l			;a78e
	ld hl,(02f2eh)		;a78f
	add hl,hl		;a792
	cp 0ffh			;a793
	ld a,(de)		;a795
	rst 38h			;a796
	dec de			;a797
	rst 38h			;a798
	rla			;a799
	ld bc,003ffh		;a79a
	add hl,hl		;a79d
	add hl,hl		;a79e
	add hl,hl		;a79f
	inc b			;a7a0
	nop			;a7a1
	inc (hl)		;a7a2
la7a3h:
	inc b			;a7a3
	ld sp,04448h		;a7a4
	ld hl,(04a4ah)		;a7a7
	ld c,c			;a7aa
	ld c,d			;a7ab
	inc hl			;a7ac
	jr c,$+6		;a7ad
	dec b			;a7af
	nop			;a7b0
	inc b			;a7b1
	ld h,02ah		;a7b2
	ld hl,(04743h)		;a7b4
	ld c,d			;a7b7
	ld c,c			;a7b8
	ld c,d			;a7b9
	ld hl,(02a2ah)		;a7ba
	ld (hl),039h		;a7bd
	ld hl,(00400h)		;a7bf
	ld b,l			;a7c2
	inc b			;a7c3
	inc hl			;a7c4
	add hl,hl		;a7c5
	add hl,hl		;a7c6
	add hl,hl		;a7c7
	inc b			;a7c8
	nop			;a7c9
	dec b			;a7ca
	nop			;a7cb
	inc hl			;a7cc
	inc e			;a7cd
	inc e			;a7ce
	inc e			;a7cf
	nop			;a7d0
	dec b			;a7d1
	ld hl,(03339h)		;a7d2
	ld c,b			;a7d5
	inc (hl)		;a7d6
	ld hl,(04a47h)		;a7d7
	add hl,hl		;a7da
	add hl,hl		;a7db
	add hl,hl		;a7dc
	ld b,e			;a7dd
	ld c,c			;a7de
	ld b,h			;a7df
	ld c,d			;a7e0
	ld c,c			;a7e1
	ld hl,(02a2ah)		;a7e2
	jr c,la7e7h		;a7e5
la7e7h:
	inc b			;a7e7
	dec b			;a7e8
	ld b,a			;a7e9
	dec b			;a7ea
	nop			;a7eb
	scf			;a7ec
	inc e			;a7ed
	inc e			;a7ee
	inc e			;a7ef
	inc b			;a7f0
	nop			;a7f1
	inc b			;a7f2
	ld a,03dh		;a7f3
	add hl,hl		;a7f5
	add hl,hl		;a7f6
	add hl,hl		;a7f7
	ld c,d			;a7f8
	ld c,c			;a7f9
	add hl,hl		;a7fa
	add hl,hl		;a7fb
	add hl,hl		;a7fc
	ld c,b			;a7fd
	inc (hl)		;a7fe
	ld hl,(00400h)		;a7ff
	ld hl,(02a2ah)		;a802
	jr c,la80ch		;a805
	nop			;a807
	inc b			;a808
	dec b			;a809
	nop			;a80a
	inc hl			;a80b
la80ch:
	ld hl,(00038h)		;a80c
	inc b			;a80f
	ld b,a			;a810
	inc b			;a811
	inc b			;a812
	nop			;a813
	inc b			;a814
	dec l			;a815
	dec l			;a816
	dec l			;a817
	ld c,d			;a818
	ld c,c			;a819
	ld c,d			;a81a
	ld (02932h),hl		;a81b
	add hl,hl		;a81e
	add hl,hl		;a81f
	inc b			;a820
	dec b			;a821
	nop			;a822
	inc hl			;a823
	add hl,hl		;a824
	inc e			;a825
	inc e			;a826
	inc e			;a827
	dec b			;a828
	nop			;a829
	inc e			;a82a
	inc e			;a82b
	inc e			;a82c
	rst 38h			;a82d
	dec de			;a82e
	rst 38h			;a82f
	rla			;a830
	ld bc,000ffh		;a831
	rst 38h			;a834
	dec e			;a835
	inc a			;a836
	inc b			;a837
	dec b			;a838
	ld b,d			;a839
	ld d,027h		;a83a
	inc a			;a83c
	dec b			;a83d
	nop			;a83e
	ld c,d			;a83f
	dec b			;a840
	ld h,050h		;a841
	ld c,d			;a843
	inc b			;a844
	ld c,d			;a845
	inc b			;a846
	daa			;a847
	inc a			;a848
	ld c,d			;a849
	ld b,a			;a84a
	ld c,d			;a84b
	ld c,d			;a84c
	ld h,050h		;a84d
	dec b			;a84f
	nop			;a850
	ld c,d			;a851
	dec b			;a852
	daa			;a853
	inc a			;a854
	nop			;a855
	inc b			;a856
	ld c,c			;a857
	nop			;a858
	ld h,018h		;a859
	ld a,(bc)		;a85b
	dec b			;a85c
	ld c,d			;a85d
	ld a,(de)		;a85e
	jr la89dh		;a85f
	dec b			;a861
	nop			;a862
	ld c,d			;a863
	dec b			;a864
	ld a,(01affh)		;a865
	ld d,b			;a868
	inc b			;a869
	inc b			;a86a
	ld c,c			;a86b
	nop			;a86c
	dec sp			;a86d
	inc a			;a86e
	ld b,a			;a86f
	dec b			;a870
	ld c,d			;a871
	inc b			;a872
	ld h,050h		;a873
	dec b			;a875
	nop			;a876
	ld c,d			;a877
	dec b			;a878
	ld a,(01a18h)		;a879
	jr la888h		;a87c
	nop			;a87e
	ld a,(de)		;a87f
	ld d,b			;a880
	inc b			;a881
	dec b			;a882
	ld c,c			;a883
	inc b			;a884
	add hl,sp		;a885
	inc a			;a886
	dec b			;a887
la888h:
	nop			;a888
la889h:
	ld c,d			;a889
	dec b			;a88a
	ld a,(00050h)		;a88b
	inc b			;a88e
	ld c,d			;a88f
	inc b			;a890
	dec sp			;a891
	inc a			;a892
	inc b			;a893
	dec b			;a894
	ld c,d			;a895
	ld a,(de)		;a896
	jr $+26			;a897
	ld a,(bc)		;a899
	nop			;a89a
	ld c,d			;a89b
	dec b			;a89c
la89dh:
	ld a,(0003ch)		;a89d
	inc b			;a8a0
	ld c,c			;a8a1
	nop			;a8a2
	add hl,sp		;a8a3
	ld d,b			;a8a4
	inc b			;a8a5
	dec b			;a8a6
	ld c,d			;a8a7
	inc b			;a8a8
	dec sp			;a8a9
	inc a			;a8aa
	dec b			;a8ab
	nop			;a8ac
	inc b			;a8ad
	dec b			;a8ae
	add hl,sp		;a8af
	ld hl,(00400h)		;a8b0
	dec b			;a8b3
	inc b			;a8b4
	ld a,(0042ah)		;a8b5
	dec b			;a8b8
	inc b			;a8b9
	dec b			;a8ba
	add hl,sp		;a8bb
	ld hl,(02a05h)		;a8bc
	inc hl			;a8bf
	inc hl			;a8c0
	inc e			;a8c1
	ld hl,(02a00h)		;a8c2
	dec de			;a8c5
	inc h			;a8c6
	inc e			;a8c7
	nop			;a8c8
	inc b			;a8c9
	dec b			;a8ca
	nop			;a8cb
	inc b			;a8cc
	nop			;a8cd
	dec b			;a8ce
	nop			;a8cf
	inc b			;a8d0
	dec b			;a8d1
	nop			;a8d2
	inc b			;a8d3
	inc b			;a8d4
	dec b			;a8d5
	nop			;a8d6
	inc b			;a8d7
	dec b			;a8d8
	nop			;a8d9
	nop			;a8da
	inc b			;a8db
	dec b			;a8dc
	nop			;a8dd
	inc b			;a8de
	dec b			;a8df
	rst 38h			;a8e0
	add hl,de		;a8e1
	nop			;a8e2
	dec b			;a8e3
	nop			;a8e4
	inc b			;a8e5
	dec b			;a8e6
	nop			;a8e7
	inc b			;a8e8
	inc b			;a8e9
	dec b			;a8ea
	nop			;a8eb
	inc b			;a8ec
	dec b			;a8ed
	nop			;a8ee
	nop			;a8ef
	inc b			;a8f0
	dec b			;a8f1
	nop			;a8f2
	inc b			;a8f3
	dec b			;a8f4
	inc b			;a8f5
	dec b			;a8f6
	nop			;a8f7
	inc b			;a8f8
	nop			;a8f9
	dec b			;a8fa
	rst 38h			;a8fb
	inc de			;a8fc
	ld c,d			;a8fd
	xor c			;a8fe
la8ffh:
	inc b			;a8ff
	dec b			;a900
	nop			;a901
	inc b			;a902
	nop			;a903
	dec b			;a904
	rst 38h			;a905
	jr la95fh		;a906
	ld d,a			;a908
	ld d,a			;a909
	ld d,a			;a90a
	ld d,a			;a90b
	ld d,a			;a90c
	rst 38h			;a90d
	inc de			;a90e
	ld e,l			;a90f
	xor c			;a910
	rst 38h			;a911
	ld de,02001h		;a912
	rst 38h			;a915
	rla			;a916
	ld (bc),a		;a917
	ld d,a			;a918
	ld d,a			;a919
	ld d,a			;a91a
	ld d,a			;a91b
	ld d,a			;a91c
	ld d,a			;a91d
	ld d,a			;a91e
	ld d,a			;a91f
	ld d,a			;a920
	ld d,a			;a921
	ld d,a			;a922
	ld d,a			;a923
	ld d,a			;a924
	ld d,a			;a925
	ld d,a			;a926
	ld d,a			;a927
	ld d,a			;a928
	ld d,a			;a929
	ld d,a			;a92a
	ld d,a			;a92b
	ld d,a			;a92c
	ld d,a			;a92d
	ld d,a			;a92e
	ld d,a			;a92f
	ld d,a			;a930
	ld d,a			;a931
	ld d,a			;a932
	ld d,a			;a933
	ld d,a			;a934
	ld d,a			;a935
	ld d,a			;a936
	ld d,a			;a937
	ld d,a			;a938
	ld d,a			;a939
	ld d,a			;a93a
	ld d,a			;a93b
	ld d,a			;a93c
	ld d,a			;a93d
	ld d,a			;a93e
	ld d,a			;a93f
	ld d,a			;a940
	ld d,a			;a941
	ld d,a			;a942
	ld d,a			;a943
	ld d,a			;a944
	ld d,a			;a945
	ld d,a			;a946
	ld d,a			;a947
	rst 38h			;a948
	inc d			;a949
	nop			;a94a
	nop			;a94b
	nop			;a94c
	djnz la94fh		;a94d
la94fh:
	jr nz,la951h		;a94f
la951h:
	jr nc,la953h		;a951
la953h:
	ld b,b			;a953
	nop			;a954
	ld d,b			;a955
	nop			;a956
	sub b			;a957
	nop			;a958
	or b			;a959
	nop			;a95a
	ret nz			;a95b
	cp 000h			;a95c
	nop			;a95e
la95fh:
	ld sp,04211h		;a95f
	ld (03353h),hl		;a962
	djnz la9a9h		;a965
	jr nz,$+85		;a967
	jr nc,la8ffh		;a969
	ld d,b			;a96b
	or b			;a96c
	inc sp			;a96d
	jp 0fffeh		;a96e
	dec de			;a971
	rst 38h			;a972
	add hl,bc		;a973
	rst 38h			;a974
	ld de,02000h		;a975
	nop			;a978
	nop			;a979
	nop			;a97a
	nop			;a97b
	nop			;a97c
	jr nc,la97fh		;a97d
la97fh:
	nop			;a97f
	nop			;a980
	nop			;a981
	nop			;a982
	ld sp,00000h		;a983
	nop			;a986
	nop			;a987
	nop			;a988
	ld (00007h),a		;a989
	nop			;a98c
	nop			;a98d
	nop			;a98e
	inc sp			;a98f
	ld bc,00005h		;a990
	nop			;a993
	nop			;a994
	inc (hl)		;a995
	ld hl,00006h		;a996
	nop			;a999
	nop			;a99a
	ld hl,(00012h)		;a99b
	nop			;a99e
	nop			;a99f
	nop			;a9a0
	jr z,la9c0h		;a9a1
	ld (bc),a		;a9a3
	nop			;a9a4
	nop			;a9a5
	nop			;a9a6
	add hl,hl		;a9a7
	ld d,b			;a9a8
la9a9h:
	ld (bc),a		;a9a9
	nop			;a9aa
	nop			;a9ab
	dec hl			;a9ac
	ld l,015h		;a9ad
	rla			;a9af
	nop			;a9b0
	nop			;a9b1
	dec (hl)		;a9b2
	ld a,(00152h)		;a9b3
	dec b			;a9b6
	nop			;a9b7
	ld (hl),03bh		;a9b8
	ld d,e			;a9ba
	ld hl,00006h		;a9bb
	add hl,sp		;a9be
	inc a			;a9bf
la9c0h:
	ld c,010h		;a9c0
	nop			;a9c2
	nop			;a9c3
	dec a			;a9c4
	ld a,01fh		;a9c5
	nop			;a9c7
	nop			;a9c8
	nop			;a9c9
	nop			;a9ca
	ld hl,(00012h)		;a9cb
	nop			;a9ce
	nop			;a9cf
	nop			;a9d0
	ld sp,00011h		;a9d1
	nop			;a9d4
	nop			;a9d5
	dec hl			;a9d6
	ld l,01fh		;a9d7
	nop			;a9d9
	nop			;a9da
	nop			;a9db
	inc l			;a9dc
	ld a,020h		;a9dd
	dec b			;a9df
	nop			;a9e0
	nop			;a9e1
	nop			;a9e2
	ld hl,(00619h)		;a9e3
	nop			;a9e6
	nop			;a9e7
	nop			;a9e8
	inc sp			;a9e9
	ld d,c			;a9ea
	ld (bc),a		;a9eb
	nop			;a9ec
	nop			;a9ed
	ld h,03bh		;a9ee
	dec d			;a9f0
	rla			;a9f1
	nop			;a9f2
	ld h,03bh		;a9f3
	ld b,h			;a9f5
	inc d			;a9f6
	ld bc,02d05h		;a9f7
	ld c,c			;a9fa
	jr c,laa15h		;a9fb
	ld hl,00006h		;a9fd
	dec l			;aa00
	cpl			;aa01
	ld c,010h		;aa02
	nop			;aa04
	nop			;aa05
	nop			;aa06
	ld c,d			;aa07
	rra			;aa08
	nop			;aa09
	nop			;aa0a
	nop			;aa0b
	nop			;aa0c
	add hl,hl		;aa0d
	inc de			;aa0e
	nop			;aa0f
	nop			;aa10
	nop			;aa11
	nop			;aa12
	jr z,laa34h		;aa13
laa15h:
	nop			;aa15
	nop			;aa16
	nop			;aa17
	nop			;aa18
	add hl,hl		;aa19
	inc de			;aa1a
	nop			;aa1b
	nop			;aa1c
	nop			;aa1d
	nop			;aa1e
	ld hl,(0001fh)		;aa1f
	nop			;aa22
	nop			;aa23
	nop			;aa24
	daa			;aa25
	inc de			;aa26
	nop			;aa27
	nop			;aa28
	nop			;aa29
	nop			;aa2a
	jr z,laa4ch		;aa2b
	nop			;aa2d
	nop			;aa2e
	nop			;aa2f
	nop			;aa30
	add hl,hl		;aa31
	inc de			;aa32
	nop			;aa33
laa34h:
	nop			;aa34
	nop			;aa35
	nop			;aa36
	ld hl,(0001fh)		;aa37
	nop			;aa3a
	nop			;aa3b
	nop			;aa3c
	add hl,hl		;aa3d
	inc de			;aa3e
	nop			;aa3f
	nop			;aa40
	nop			;aa41
	nop			;aa42
	jr z,laa64h		;aa43
	nop			;aa45
	nop			;aa46
	nop			;aa47
	nop			;aa48
	add hl,hl		;aa49
	inc de			;aa4a
	nop			;aa4b
laa4ch:
	nop			;aa4c
	nop			;aa4d
	nop			;aa4e
	ld hl,(0001fh)		;aa4f
	nop			;aa52
	nop			;aa53
	nop			;aa54
	daa			;aa55
	inc de			;aa56
	nop			;aa57
	nop			;aa58
	nop			;aa59
	nop			;aa5a
	jr z,laa7ch		;aa5b
	nop			;aa5d
	nop			;aa5e
	nop			;aa5f
	nop			;aa60
	add hl,hl		;aa61
	inc de			;aa62
	nop			;aa63
laa64h:
	nop			;aa64
	nop			;aa65
	nop			;aa66
	ld hl,(009ffh)		;aa67
	rst 38h			;aa6a
	ld de,02000h		;aa6b
	rra			;aa6e
	nop			;aa6f
	nop			;aa70
	nop			;aa71
	nop			;aa72
	add hl,hl		;aa73
	inc de			;aa74
	nop			;aa75
	nop			;aa76
	nop			;aa77
	nop			;aa78
	jr z,laa9ah		;aa79
	nop			;aa7b
laa7ch:
	nop			;aa7c
	nop			;aa7d
	nop			;aa7e
	add hl,hl		;aa7f
	inc de			;aa80
	nop			;aa81
	nop			;aa82
	nop			;aa83
	nop			;aa84
	ld hl,(0001fh)		;aa85
	nop			;aa88
	nop			;aa89
	nop			;aa8a
	daa			;aa8b
	inc de			;aa8c
	nop			;aa8d
	nop			;aa8e
	nop			;aa8f
	nop			;aa90
	jr z,laab2h		;aa91
	nop			;aa93
	nop			;aa94
	nop			;aa95
	nop			;aa96
	add hl,hl		;aa97
	inc de			;aa98
	nop			;aa99
laa9ah:
	nop			;aa9a
	nop			;aa9b
	nop			;aa9c
	ld hl,(01affh)		;aa9d
	ld d,007h		;aaa0
	nop			;aaa2
	nop			;aaa3
	ld b,b			;aaa4
	ld b,d			;aaa5
	inc b			;aaa6
	ex af,af'		;aaa7
	nop			;aaa8
	nop			;aaa9
	ld b,c			;aaaa
	ld b,e			;aaab
	ld c,00dh		;aaac
	nop			;aaae
	nop			;aaaf
	add hl,sp		;aab0
	inc a			;aab1
laab2h:
	djnz laab4h		;aab2
laab4h:
	nop			;aab4
	nop			;aab5
	dec a			;aab6
	ld a,000h		;aab7
	nop			;aab9
	nop			;aaba
	nop			;aabb
	nop			;aabc
	jr z,laabfh		;aabd
laabfh:
	nop			;aabf
	nop			;aac0
	nop			;aac1
	nop			;aac2
	add hl,hl		;aac3
	ld a,(bc)		;aac4
	nop			;aac5
	nop			;aac6
	nop			;aac7
	nop			;aac8
	ld c,e			;aac9
	dec bc			;aaca
	rrca			;aacb
	nop			;aacc
	nop			;aacd
	ld h,03bh		;aace
	jr laaeeh		;aad0
	nop			;aad2
	nop			;aad3
	dec l			;aad4
	ld c,h			;aad5
	add hl,bc		;aad6
	nop			;aad7
	nop			;aad8
	nop			;aad9
	nop			;aada
	ld c,l			;aadb
	add hl,de		;aadc
	ld (bc),a		;aadd
	nop			;aade
	nop			;aadf
	nop			;aae0
	ccf			;aae1
	ld a,(de)		;aae2
	ld (bc),a		;aae3
	nop			;aae4
	nop			;aae5
	ld b,l			;aae6
	ld b,a			;aae7
	inc hl			;aae8
	rlca			;aae9
	nop			;aaea
	nop			;aaeb
	ld b,c			;aaec
	ld c,b			;aaed
laaeeh:
	inc h			;aaee
	ex af,af'		;aaef
	nop			;aaf0
	nop			;aaf1
	ld b,(hl)		;aaf2
	scf			;aaf3
	dec h			;aaf4
	ld (00007h),hl		;aaf5
	nop			;aaf8
	add hl,hl		;aaf9
	jr lab1dh		;aafa
	ld b,000h		;aafc
	nop			;aafe
	ld sp,009ffh		;aaff
	rst 38h			;ab02
	ld de,02000h		;ab03
	dec de			;ab06
	djnz lab09h		;ab07
lab09h:
	nop			;ab09
	nop			;ab0a
	ld (0001fh),a		;ab0b
	nop			;ab0e
	nop			;ab0f
	nop			;ab10
	ld hl,(00054h)		;ab11
	nop			;ab14
	nop			;ab15
	nop			;ab16
	jr z,lab1ch		;ab17
	nop			;ab19
	nop			;ab1a
	nop			;ab1b
lab1ch:
	nop			;ab1c
lab1dh:
	add hl,hl		;ab1d
	ld d,l			;ab1e
	nop			;ab1f
	nop			;ab20
	nop			;ab21
	nop			;ab22
	ld (00716h),a		;ab23
	nop			;ab26
	nop			;ab27
	dec hl			;ab28
	ld l,024h		;ab29
	ex af,af'		;ab2b
	nop			;ab2c
	nop			;ab2d
	inc l			;ab2e
	ld a,025h		;ab2f
	ld (00007h),hl		;ab31
	nop			;ab34
	ld hl,(01affh)		;ab35
	jr lab5bh		;ab38
	ld b,000h		;ab3a
	nop			;ab3c
	add hl,hl		;ab3d
	dec de			;ab3e
	djnz lab41h		;ab3f
lab41h:
	nop			;ab41
	nop			;ab42
	ld hl,(00013h)		;ab43
	nop			;ab46
	nop			;ab47
	nop			;ab48
	add hl,hl		;ab49
	rra			;ab4a
	nop			;ab4b
	nop			;ab4c
	nop			;ab4d
	dec hl			;ab4e
	ld l,012h		;ab4f
	nop			;ab51
	nop			;ab52
	ld b,b			;ab53
	ld d,(hl)		;ab54
	ld b,e			;ab55
	dec h			;ab56
	ld e,000h		;ab57
	ld b,c			;ab59
	cpl			;ab5a
lab5bh:
	inc a			;ab5b
	jr lab7ah		;ab5c
	nop			;ab5e
	ld b,(hl)		;ab5f
	ld c,d			;ab60
	ld c,l			;ab61
	ld de,00000h		;ab62
	nop			;ab65
	inc l			;ab66
	ld c,(hl)		;ab67
	rst 38h			;ab68
	add hl,bc		;ab69
	rst 38h			;ab6a
	ld de,02000h		;ab6b
	rst 38h			;ab6e
	add hl,de		;ab6f
	nop			;ab70
	rra			;ab71
	nop			;ab72
	nop			;ab73
	nop			;ab74
	nop			;ab75
	add hl,hl		;ab76
	inc de			;ab77
	nop			;ab78
	nop			;ab79
lab7ah:
	nop			;ab7a
	nop			;ab7b
	jr z,lab9dh		;ab7c
	nop			;ab7e
	nop			;ab7f
	nop			;ab80
	nop			;ab81
	add hl,hl		;ab82
	inc de			;ab83
	nop			;ab84
	nop			;ab85
	nop			;ab86
	nop			;ab87
	ld hl,(0001fh)		;ab88
	nop			;ab8b
	nop			;ab8c
	nop			;ab8d
	daa			;ab8e
	inc de			;ab8f
	nop			;ab90
	nop			;ab91
	nop			;ab92
	nop			;ab93
lab94h:
	jr z,lab94h		;ab94
	rst 38h			;ab96
	inc de			;ab97
	ld c,d			;ab98
	xor c			;ab99
	rst 38h			;ab9a
	dec d			;ab9b
	rst 38h			;ab9c
lab9dh:
	jr $+1			;ab9d
	ld de,00001h		;ab9f
	rst 38h			;aba2
	rla			;aba3
	ld bc,014ffh		;aba4
	rst 38h			;aba7
	ld d,0ffh		;aba8
	dec de			;abaa
	rst 38h			;abab
	add hl,bc		;abac
	ld (hl),004h		;abad
	ex af,af'		;abaf
	inc b			;abb0
	dec hl			;abb1
	inc (hl)		;abb2
	ld b,(hl)		;abb3
	dec b			;abb4
	add hl,bc		;abb5
	dec b			;abb6
	add hl,bc		;abb7
	inc h			;abb8
	ld c,a			;abb9
	ld b,00ah		;abba
	ld b,00ah		;abbc
	dec h			;abbe
	ld c,a			;abbf
	rlca			;abc0
	ex af,af'		;abc1
	rlca			;abc2
	ex af,af'		;abc3
	ld h,035h		;abc4
	inc b			;abc6
	ex af,af'		;abc7
	inc b			;abc8
	ld hl,(05233h)		;abc9
	dec b			;abcc
	add hl,bc		;abcd
	dec b			;abce
	dec l			;abcf
	dec c			;abd0
	ld (hl),006h		;abd1
	ex af,af'		;abd3
	ld b,02bh		;abd4
	inc sp			;abd6
	ld c,a			;abd7
	rlca			;abd8
	ex af,af'		;abd9
	rlca			;abda
	ex af,af'		;abdb
	dec de			;abdc
	ld b,l			;abdd
	inc b			;abde
	ex af,af'		;abdf
	inc b			;abe0
	ex af,af'		;abe1
	inc de			;abe2
	ld e,b			;abe3
	dec b			;abe4
	add hl,bc		;abe5
	dec b			;abe6
	add hl,bc		;abe7
	ld a,e			;abe8
	ld d,b			;abe9
	ld b,00ah		;abea
	ld b,027h		;abec
	dec a			;abee
	ld e,c			;abef
	rlca			;abf0
	ex af,af'		;abf1
	rlca			;abf2
	ex af,af'		;abf3
	ld a,e			;abf4
	ld e,(hl)		;abf5
	inc b			;abf6
	ex af,af'		;abf7
	inc b			;abf8
	ex af,af'		;abf9
	inc e			;abfa
	ld e,l			;abfb
	dec b			;abfc
	add hl,bc		;abfd
	dec b			;abfe
	add hl,bc		;abff
	dec e			;ac00
	ld d,c			;ac01
	ld b,00ah		;ac02
	ld b,02ah		;ac04
	jr nc,lac5bh		;ac06
	rlca			;ac08
	ex af,af'		;ac09
	rlca			;ac0a
	dec hl			;ac0b
	ld (0045eh),a		;ac0c
	ex af,af'		;ac0f
	inc b			;ac10
	ex af,af'		;ac11
	ld e,05bh		;ac12
	dec b			;ac14
	add hl,bc		;ac15
	dec b			;ac16
	add hl,bc		;ac17
	rra			;ac18
	ld d,c			;ac19
	ld b,00ah		;ac1a
	ld b,02ah		;ac1c
	jr nc,lac56h		;ac1e
	rlca			;ac20
	ex af,af'		;ac21
	rlca			;ac22
	dec hl			;ac23
	inc (hl)		;ac24
	ld c,a			;ac25
	inc b			;ac26
	ex af,af'		;ac27
	inc b			;ac28
	ex af,af'		;ac29
	jr lac7bh		;ac2a
	dec b			;ac2c
	add hl,bc		;ac2d
	dec b			;ac2e
	add hl,bc		;ac2f
	add hl,de		;ac30
	dec (hl)		;ac31
	ld b,00ah		;ac32
	ld b,027h		;ac34
	inc (hl)		;ac36
	inc sp			;ac37
	jr nc,lac6ah		;ac38
	ccf			;ac3a
	ex af,af'		;ac3b
	jr $+88			;ac3c
	ld a,e			;ac3e
	ld h,a			;ac3f
	ld l,h			;ac40
	ld (hl),b		;ac41
	add hl,de		;ac42
	ld d,d			;ac43
	ld h,b			;ac44
	ld l,b			;ac45
	ld b,071h		;ac46
	rrca			;ac48
	ld d,a			;ac49
	ld h,c			;ac4a
	ld l,c			;ac4b
	ld l,l			;ac4c
	ld (hl),d		;ac4d
	add hl,de		;ac4e
	ld d,(hl)		;ac4f
	ld h,d			;ac50
	ex af,af'		;ac51
	dec b			;ac52
	ld (hl),e		;ac53
	jr laca8h		;ac54
lac56h:
	ld h,e			;ac56
	ex af,af'		;ac57
	ld b,074h		;ac58
	inc h			;ac5a
lac5bh:
	jr c,lacc1h		;ac5b
	add hl,bc		;ac5d
	rlca			;ac5e
	ld (hl),l		;ac5f
	ld h,001h		;ac60
	ld h,l			;ac62
	ld l,d			;ac63
	ld l,(hl)		;ac64
	halt			;ac65
	add hl,de		;ac66
	ld d,h			;ac67
	ld h,(hl)		;ac68
	ld l,e			;ac69
lac6ah:
	ld l,a			;ac6a
	ld (0fe24h),hl		;ac6b
	rst 38h			;ac6e
	ld b,0ffh		;ac6f
	dec de			;ac71
	ld sp,02431h		;ac72
	dec h			;ac75
	ld h,017h		;ac76
	ld a,(bc)		;ac78
	jr nc,lacaeh		;ac79
lac7bh:
	dec d			;ac7b
	add hl,bc		;ac7c
	ex af,af'		;ac7d
	ex af,af'		;ac7e
	add hl,bc		;ac7f
	ex af,af'		;ac80
	jr nc,lac98h		;ac81
	inc b			;ac83
	dec b			;ac84
	dec b			;ac85
	ld b,007h		;ac86
	inc b			;ac88
	ld (de),a		;ac89
	dec a			;ac8a
	ld bc,00109h		;ac8b
	ld (bc),a		;ac8e
	add hl,bc		;ac8f
	inc bc			;ac90
	jr nc,laccch		;ac91
	ld a,(03b39h)		;ac93
	ld a,(bc)		;ac96
	inc a			;ac97
lac98h:
	add hl,sp		;ac98
	ld a,(00832h)		;ac99
	add hl,bc		;ac9c
	ex af,af'		;ac9d
	ex af,af'		;ac9e
	add hl,bc		;ac9f
	ex af,af'		;aca0
	dec a			;aca1
	ld (00504h),a		;aca2
	ld b,007h		;aca5
	inc b			;aca7
laca8h:
	dec b			;aca8
	ld d,h			;aca9
	ld c,d			;acaa
	ld b,e			;acab
	add hl,bc		;acac
	ex af,af'		;acad
lacaeh:
	ex af,af'		;acae
	add hl,bc		;acaf
	ld a,(bc)		;acb0
	jr nc,laccbh		;acb1
	dec d			;acb3
	dec b			;acb4
	inc a			;acb5
	ld a,(0043bh)		;acb6
	jr nc,lacedh		;acb9
	inc bc			;acbb
	add hl,bc		;acbc
	ld bc,00902h		;acbd
	inc bc			;acc0
lacc1h:
	jr nc,lacf5h		;acc1
	inc b			;acc3
	add hl,bc		;acc4
	dec b			;acc5
	ld b,009h		;acc6
	rlca			;acc8
	jr nc,lad15h		;acc9
laccbh:
	ld b,h			;accb
laccch:
	ld d,l			;accc
	ex af,af'		;accd
	ex af,af'		;acce
	ld b,c			;accf
	ld b,h			;acd0
	ld c,e			;acd1
	ld d,018h		;acd2
	dec d			;acd4
	inc b			;acd5
	dec b			;acd6
	ld (01826h),hl		;acd7
	ld (00901h),a		;acda
	inc bc			;acdd
	ld (bc),a		;acde
	add hl,bc		;acdf
	inc bc			;ace0
	jr nc,lad2dh		;ace1
	ld b,e			;ace3
	add hl,bc		;ace4
	ld a,l			;ace5
	ld b,h			;ace6
	ld b,(hl)		;ace7
	ld b,h			;ace8
	ld c,e			;ace9
	jr lad01h		;acea
	inc b			;acec
lacedh:
	ld a,h			;aced
	ld d,024h		;acee
	dec h			;acf0
	ld h,032h		;acf1
	inc bc			;acf3
	add hl,bc		;acf4
lacf5h:
	ld bc,00902h		;acf5
	ld (bc),a		;acf8
	ld bc,0474ah		;acf9
	ld c,b			;acfc
	ld c,c			;acfd
	ld b,a			;acfe
	ld c,b			;acff
	ld c,c			;ad00
lad01h:
	ld b,a			;ad01
	rst 38h			;ad02
	dec de			;ad03
	rst 38h			;ad04
	add hl,bc		;ad05
	rst 38h			;ad06
	dec e			;ad07
	ld b,a			;ad08
	ld (bc),a		;ad09
	ld d,04ah		;ad0a
	ld (0ff18h),a		;ad0c
	add hl,bc		;ad0f
	ld c,b			;ad10
	inc bc			;ad11
	dec d			;ad12
	ld b,e			;ad13
	inc b			;ad14
lad15h:
	add hl,de		;ad15
	ld b,(hl)		;ad16
	add hl,bc		;ad17
	inc b			;ad18
	add hl,bc		;ad19
	dec b			;ad1a
	inc h			;ad1b
	ld c,c			;ad1c
	ld bc,00a05h		;ad1d
	ld b,025h		;ad20
	ld b,a			;ad22
	ld (bc),a		;ad23
	ld b,008h		;ad24
	rlca			;ad26
	ld h,048h		;ad27
	inc bc			;ad29
	rlca			;ad2a
	ex af,af'		;ad2b
	ld (hl),a		;ad2c
lad2dh:
	ld a,c			;ad2d
	ld b,(hl)		;ad2e
	add hl,bc		;ad2f
	inc b			;ad30
	add hl,bc		;ad31
	ld a,b			;ad32
	ld a,d			;ad33
	ld b,(hl)		;ad34
	ld bc,00a05h		;ad35
	inc b			;ad38
	inc h			;ad39
	rst 38h			;ad3a
	ld a,(de)		;ad3b
	ld sp,00651h		;ad3c
	ex af,af'		;ad3f
	dec b			;ad40
	ld h,037h		;ad41
	ld d,e			;ad43
	rlca			;ad44
	ex af,af'		;ad45
	ld b,015h		;ad46
	ld b,(hl)		;ad48
	add hl,bc		;ad49
	dec b			;ad4a
	add hl,bc		;ad4b
	rlca			;ad4c
	ld a,e			;ad4d
	ld b,a			;ad4e
	ld bc,00a06h		;ad4f
	inc b			;ad52
	dec e			;ad53
	ld c,b			;ad54
	ld (bc),a		;ad55
	rlca			;ad56
	ex af,af'		;ad57
	jr z,lad8ah		;ad58
	ld d,b			;ad5a
	inc bc			;ad5b
	inc b			;ad5c
	ex af,af'		;ad5d
	ld l,00dh		;ad5e
	ld b,(hl)		;ad60
	add hl,bc		;ad61
	dec b			;ad62
	add hl,bc		;ad63
	inc b			;ad64
	inc h			;ad65
	ld c,c			;ad66
	ld bc,00a06h		;ad67
	dec b			;ad6a
	ld h,051h		;ad6b
	ld (bc),a		;ad6d
	dec b			;ad6e
	ex af,af'		;ad6f
	jr z,lada5h		;ad70
	ld d,e			;ad72
	inc bc			;ad73
	ld b,008h		;ad74
	add hl,hl		;ad76
	cpl			;ad77
	ld e,d			;ad78
	add hl,bc		;ad79
	rlca			;ad7a
	add hl,bc		;ad7b
	inc b			;ad7c
	ld a,e			;ad7d
	ld e,h			;ad7e
	ld bc,00a05h		;ad7f
	rlca			;ad82
	dec e			;ad83
	jr nc,ladc6h		;ad84
	ld b,008h		;ad86
	jr z,ladbah		;ad88
lad8ah:
	ld d,e			;ad8a
	inc bc			;ad8b
	rlca			;ad8c
	ex af,af'		;ad8d
	djnz ladc4h		;ad8e
	ld e,d			;ad90
	add hl,bc		;ad91
	inc b			;ad92
	add hl,bc		;ad93
	ld b,018h		;ad94
	ld e,h			;ad96
	ld bc,00a05h		;ad97
	rlca			;ad9a
	dec de			;ad9b
	jr nc,laddeh		;ad9c
	ld b,008h		;ad9e
	ld a,(de)		;ada0
	jr nz,ladddh		;ada1
	inc bc			;ada3
	rlca			;ada4
lada5h:
	ex af,af'		;ada5
	dec b			;ada6
	inc de			;ada7
	dec sp			;ada8
	add hl,bc		;ada9
	inc b			;adaa
	add hl,bc		;adab
	ld b,07bh		;adac
	dec b			;adae
	ld bc,00a05h		;adaf
	rlca			;adb2
	ld h,b			;adb3
	ld b,003h		;adb4
	ld b,008h		;adb6
	dec b			;adb8
	inc e			;adb9
ladbah:
	inc a			;adba
	add hl,bc		;adbb
	rlca			;adbc
	add hl,bc		;adbd
	ld b,01dh		;adbe
	ld a,(00401h)		;adc0
	ld a,(bc)		;adc3
ladc4h:
	rlca			;adc4
	inc d			;adc5
ladc6h:
	ld d,a			;adc6
	jr nc,laddbh		;adc7
	jr nc,ladfbh		;adc9
ladcbh:
	jr nz,ladcbh		;adcb
	rst 38h			;adcd
	dec de			;adce
	rst 38h			;adcf
	ld b,02fh		;add0
	ld (bc),a		;add2
	add hl,bc		;add3
	ld bc,00903h		;add4
	inc bc			;add7
	ld e,a			;add8
	ld a,00ah		;add9
laddbh:
	add hl,bc		;addb
	ld a,(bc)		;addc
ladddh:
	ex af,af'		;addd
laddeh:
	add hl,bc		;adde
	ex af,af'		;addf
	ld hl,00732h		;ade0
	inc b			;ade3
	dec b			;ade4
	ld b,007h		;ade5
	inc b			;ade7
	jr nc,lae28h		;ade8
	ld bc,00209h		;adea
	inc bc			;aded
	add hl,bc		;adee
	inc bc			;adef
	ld hl,0444ah		;adf0
	ld d,l			;adf3
	inc b			;adf4
	dec b			;adf5
	ld b,c			;adf6
	ld b,h			;adf7
	ld c,e			;adf8
	jr lae0ch		;adf9
ladfbh:
	dec d			;adfb
	ld bc,01202h		;adfc
	ld de,0ff16h		;adff
	add hl,de		;ae02
	nop			;ae03
	ex af,af'		;ae04
	ex af,af'		;ae05
	add hl,bc		;ae06
	ld b,007h		;ae07
	add hl,bc		;ae09
	ld a,(bc)		;ae0a
	ex af,af'		;ae0b
lae0ch:
	ld (bc),a		;ae0c
	ld bc,00209h		;ae0d
	ld bc,00309h		;ae10
	ld (bc),a		;ae13
	dec b			;ae14
	ld b,007h		;ae15
	inc b			;ae17
	dec bc			;ae18
	dec b			;ae19
	ld b,004h		;ae1a
	ex af,af'		;ae1c
	ex af,af'		;ae1d
	add hl,bc		;ae1e
	ld a,(bc)		;ae1f
	ex af,af'		;ae20
	add hl,bc		;ae21
	ld a,(bc)		;ae22
	ex af,af'		;ae23
	ld bc,00903h		;ae24
	ld (bc),a		;ae27
lae28h:
	ld bc,00109h		;ae28
	ld (bc),a		;ae2b
	rst 38h			;ae2c
	inc de			;ae2d
	ld c,d			;ae2e
	xor c			;ae2f
	inc b			;ae30
	dec b			;ae31
	ld b,007h		;ae32
	dec b			;ae34
	ld b,007h		;ae35
	dec bc			;ae37
	rst 38h			;ae38
	dec d			;ae39
	rst 38h			;ae3a
	jr $+1			;ae3b
	ld de,00001h		;ae3d
	rst 38h			;ae40
	rla			;ae41
	ld (bc),a		;ae42
	rst 38h			;ae43
	inc d			;ae44
	rst 38h			;ae45
	ld d,0ffh		;ae46
	dec de			;ae48
	rst 38h			;ae49
	ex af,af'		;ae4a
	rst 38h			;ae4b
	ld de,02000h		;ae4c
	nop			;ae4f
	inc bc			;ae50
	ld a,(bc)		;ae51
	dec d			;ae52
	ld hl,00125h		;ae53
	inc bc			;ae56
	ld a,(bc)		;ae57
	dec d			;ae58
	ld hl,00125h		;ae59
	inc bc			;ae5c
	ld a,(bc)		;ae5d
	dec d			;ae5e
	ld hl,00125h		;ae5f
	inc bc			;ae62
	ld a,(bc)		;ae63
	dec d			;ae64
	ld hl,00127h		;ae65
	inc bc			;ae68
	ld a,(bc)		;ae69
	dec d			;ae6a
	ld hl,00225h		;ae6b
	inc bc			;ae6e
	ld a,(bc)		;ae6f
	dec d			;ae70
	ld hl,00125h		;ae71
	inc bc			;ae74
	ld a,(bc)		;ae75
	dec d			;ae76
	ld hl,00125h		;ae77
	inc bc			;ae7a
	ld a,(bc)		;ae7b
	dec d			;ae7c
	ld hl,00125h		;ae7d
	inc bc			;ae80
	ld a,(bc)		;ae81
	dec d			;ae82
	ld hl,00125h		;ae83
	inc bc			;ae86
	ld a,(bc)		;ae87
	dec d			;ae88
	ld hl,00124h		;ae89
	inc bc			;ae8c
	ld a,(bc)		;ae8d
	dec d			;ae8e
	ld hl,00025h		;ae8f
	inc bc			;ae92
	ld a,(bc)		;ae93
	dec d			;ae94
	ld hl,00125h		;ae95
	inc bc			;ae98
	ld a,(bc)		;ae99
	dec d			;ae9a
	ld hl,00125h		;ae9b
	inc bc			;ae9e
	ld a,(bc)		;ae9f
	dec d			;aea0
	ld hl,00125h		;aea1
	inc bc			;aea4
	ld a,(bc)		;aea5
	dec d			;aea6
	ld hl,00127h		;aea7
	inc bc			;aeaa
	ld a,(bc)		;aeab
	dec d			;aeac
	ld hl,00225h		;aead
	inc bc			;aeb0
	ld a,(bc)		;aeb1
	dec d			;aeb2
	ld hl,00125h		;aeb3
	inc bc			;aeb6
	ld a,(bc)		;aeb7
	dec d			;aeb8
	ld hl,00125h		;aeb9
	inc bc			;aebc
	ld a,(bc)		;aebd
	dec d			;aebe
	ld hl,00125h		;aebf
	inc bc			;aec2
	ld a,(bc)		;aec3
	dec d			;aec4
	ld hl,00125h		;aec5
	inc bc			;aec8
	ld a,(bc)		;aec9
	dec d			;aeca
	ld hl,00124h		;aecb
	inc bc			;aece
	ld a,(bc)		;aecf
	dec d			;aed0
	ld hl,00025h		;aed1
	inc bc			;aed4
	ld a,(bc)		;aed5
	dec d			;aed6
	ld hl,00125h		;aed7
	inc bc			;aeda
	ld a,(bc)		;aedb
	dec d			;aedc
	ld hl,00125h		;aedd
	inc bc			;aee0
	ld a,(bc)		;aee1
	dec d			;aee2
	ld hl,00125h		;aee3
	inc bc			;aee6
	ld a,(bc)		;aee7
	dec d			;aee8
	ld hl,00127h		;aee9
	inc bc			;aeec
	ld a,(bc)		;aeed
	dec d			;aeee
	ld hl,00225h		;aeef
	inc bc			;aef2
	ld a,(bc)		;aef3
	dec d			;aef4
	ld hl,00125h		;aef5
	inc bc			;aef8
	ld a,(bc)		;aef9
	dec d			;aefa
	ld hl,00125h		;aefb
	inc bc			;aefe
	ld a,(bc)		;aeff
	dec d			;af00
	ld hl,00125h		;af01
	inc bc			;af04
	ld a,(bc)		;af05
	dec d			;af06
	ld hl,00125h		;af07
	inc bc			;af0a
	ld a,(bc)		;af0b
	ld (de),a		;af0c
	ld hl,00124h		;af0d
	inc bc			;af10
	ld a,(bc)		;af11
	dec d			;af12
	ld hl,00025h		;af13
	inc bc			;af16
	ld a,(bc)		;af17
	dec d			;af18
	ld hl,00125h		;af19
	inc bc			;af1c
	ld a,(bc)		;af1d
	dec d			;af1e
	ld hl,00125h		;af1f
	inc bc			;af22
	ld a,(bc)		;af23
	ld (de),a		;af24
	ld hl,00127h		;af25
	inc bc			;af28
	ld a,(bc)		;af29
	dec d			;af2a
	ld hl,00125h		;af2b
	inc bc			;af2e
	ld a,(bc)		;af2f
	ld (de),a		;af30
	ld hl,00225h		;af31
	inc bc			;af34
	ld a,(bc)		;af35
	dec d			;af36
	ld hl,00125h		;af37
	inc bc			;af3a
	ld a,(bc)		;af3b
	ld (de),a		;af3c
	ld hl,00125h		;af3d
	inc bc			;af40
	ld a,(bc)		;af41
	dec d			;af42
	ld hl,00125h		;af43
	inc bc			;af46
	ld a,(bc)		;af47
	dec d			;af48
	ld hl,00124h		;af49
	inc bc			;af4c
	ld a,(bc)		;af4d
	ld (de),a		;af4e
	ld hl,00125h		;af4f
	inc bc			;af52
	ld a,(bc)		;af53
	dec d			;af54
	ld hl,00025h		;af55
	inc bc			;af58
	rlca			;af59
	inc de			;af5a
	ld hl,00125h		;af5b
	inc bc			;af5e
	ld b,012h		;af5f
	ld hl,00125h		;af61
	inc bc			;af64
	ld a,(bc)		;af65
	dec d			;af66
	ld hl,00127h		;af67
	inc bc			;af6a
	ld a,(bc)		;af6b
	dec d			;af6c
	ld hl,00125h		;af6d
	inc bc			;af70
	rlca			;af71
	inc de			;af72
	ld hl,00225h		;af73
	dec b			;af76
	ex af,af'		;af77
	inc d			;af78
	ld hl,00125h		;af79
	inc bc			;af7c
	ld a,(bc)		;af7d
	dec d			;af7e
	ld hl,00125h		;af7f
	inc bc			;af82
	ld a,(bc)		;af83
	dec d			;af84
	ld hl,00125h		;af85
	inc bc			;af88
	rlca			;af89
	inc de			;af8a
	ld hl,00124h		;af8b
	inc bc			;af8e
	ld b,015h		;af8f
	ld hl,00125h		;af91
	inc bc			;af94
	rlca			;af95
	inc de			;af96
	ld hl,00025h		;af97
	inc bc			;af9a
	ld a,(bc)		;af9b
	dec d			;af9c
	ld hl,00125h		;af9d
	inc b			;afa0
	ex af,af'		;afa1
	inc d			;afa2
	ld (00125h),hl		;afa3
	inc bc			;afa6
	ld b,012h		;afa7
	ld hl,00127h		;afa9
	inc bc			;afac
	rlca			;afad
	inc de			;afae
	ld hl,00125h		;afaf
	inc bc			;afb2
	ld a,(bc)		;afb3
	dec d			;afb4
	ld hl,00225h		;afb5
	inc bc			;afb8
	ld a,(bc)		;afb9
	dec d			;afba
	ld hl,00125h		;afbb
	inc bc			;afbe
	ld a,(bc)		;afbf
	dec d			;afc0
	ld hl,00125h		;afc1
	dec b			;afc4
	add hl,de		;afc5
	inc d			;afc6
	ld hl,00125h		;afc7
	inc bc			;afca
	ld a,(bc)		;afcb
	dec d			;afcc
	ld hl,00124h		;afcd
	inc bc			;afd0
	ld a,(bc)		;afd1
	dec d			;afd2
	ld hl,00125h		;afd3
	inc bc			;afd6
	rlca			;afd7
	inc de			;afd8
	ld hl,00025h		;afd9
	inc b			;afdc
	ex af,af'		;afdd
	inc d			;afde
	ld (00125h),hl		;afdf
	dec b			;afe2
	add hl,de		;afe3
	ld d,026h		;afe4
	dec h			;afe6
	ld bc,00603h		;afe7
	dec d			;afea
	ld hl,00127h		;afeb
	inc bc			;afee
	rlca			;afef
	inc de			;aff0
	ld hl,00125h		;aff1
	inc b			;aff4
	add hl,de		;aff5
	inc d			;aff6
	ld (00225h),hl		;aff7
	inc bc			;affa
	rlca			;affb
	inc de			;affc
	ld hl,0ff25h		;affd
	ex af,af'		;b000
	rst 38h			;b001
	ld de,02000h		;b002
	ld bc,00805h		;b005
	inc d			;b008
	ld hl,00125h		;b009
	inc bc			;b00c
	ld b,012h		;b00d
	ld hl,00125h		;b00f
	dec b			;b012
	add hl,de		;b013
	inc d			;b014
	ld h,024h		;b015
	ld bc,00703h		;b017
	inc de			;b01a
	ld hl,00125h		;b01b
	inc b			;b01e
	add hl,de		;b01f
	inc d			;b020
	ld (00025h),hl		;b021
	inc bc			;b024
	ld b,015h		;b025
	ld hl,00125h		;b027
	inc bc			;b02a
	rlca			;b02b
	inc de			;b02c
	ld hl,00125h		;b02d
	dec b			;b030
	add hl,de		;b031
	ld d,026h		;b032
	daa			;b034
	ld bc,00a03h		;b035
	ld (de),a		;b038
	ld hl,00125h		;b039
	inc bc			;b03c
	rlca			;b03d
	inc de			;b03e
	ld hl,00225h		;b03f
	inc bc			;b042
	ld b,012h		;b043
	ld hl,00125h		;b045
	inc bc			;b048
	ld a,(bc)		;b049
	ld (de),a		;b04a
	ld hl,00125h		;b04b
	inc bc			;b04e
	ld a,(bc)		;b04f
	ld (de),a		;b050
	ld hl,00125h		;b051
	inc bc			;b054
	ld a,(bc)		;b055
	dec d			;b056
	ld hl,00124h		;b057
	inc bc			;b05a
	ld a,(bc)		;b05b
	ld (de),a		;b05c
	ld hl,00125h		;b05d
	inc bc			;b060
	ld a,(bc)		;b061
	dec d			;b062
	ld hl,0ff25h		;b063
	ld a,(de)		;b066
	nop			;b067
	inc bc			;b068
	dec bc			;b069
	ld e,021h		;b06a
	dec h			;b06c
	ld bc,00f03h		;b06d
	jr z,lb093h		;b070
	dec h			;b072
	ld bc,00a03h		;b073
	dec d			;b076
	ld hl,00127h		;b077
	inc bc			;b07a
	ld a,(bc)		;b07b
	dec d			;b07c
	ld hl,00125h		;b07d
	inc bc			;b080
	dec bc			;b081
	ld e,021h		;b082
	dec h			;b084
	ld (bc),a		;b085
	inc bc			;b086
	rrca			;b087
	jr z,lb0abh		;b088
	dec h			;b08a
	ld bc,00a03h		;b08b
	dec d			;b08e
	ld hl,00125h		;b08f
	inc bc			;b092
lb093h:
	ld a,(bc)		;b093
	dec d			;b094
	ld hl,00125h		;b095
	inc bc			;b098
	dec bc			;b099
	ld e,021h		;b09a
	inc h			;b09c
	ld bc,00f03h		;b09d
	jr z,lb0c3h		;b0a0
	dec h			;b0a2
	ld bc,00a03h		;b0a3
	dec d			;b0a6
	ld hl,00025h		;b0a7
	inc bc			;b0aa
lb0abh:
	rlca			;b0ab
	inc de			;b0ac
	ld hl,00125h		;b0ad
	inc bc			;b0b0
	dec bc			;b0b1
	ld e,021h		;b0b2
	dec h			;b0b4
	ld bc,00f03h		;b0b5
	jr z,lb0dbh		;b0b8
	daa			;b0ba
	ld bc,00703h		;b0bb
	inc de			;b0be
	ld hl,00125h		;b0bf
	inc b			;b0c2
lb0c3h:
	ex af,af'		;b0c3
	inc d			;b0c4
	ld h,025h		;b0c5
	ld (bc),a		;b0c7
	inc bc			;b0c8
	dec bc			;b0c9
	ld e,021h		;b0ca
	dec h			;b0cc
	ld bc,00f03h		;b0cd
	jr z,lb0f3h		;b0d0
	dec h			;b0d2
	ld bc,00805h		;b0d3
	ld a,(de)		;b0d6
	ld hl,00125h		;b0d7
	inc bc			;b0da
lb0dbh:
	ld a,(bc)		;b0db
	ld (de),a		;b0dc
	ld hl,00124h		;b0dd
	inc bc			;b0e0
	dec bc			;b0e1
	ld e,021h		;b0e2
	dec h			;b0e4
	ld bc,00f03h		;b0e5
	jr z,lb10bh		;b0e8
	dec h			;b0ea
	nop			;b0eb
	inc bc			;b0ec
	ld a,(bc)		;b0ed
	dec d			;b0ee
	ld hl,00125h		;b0ef
	inc bc			;b0f2
lb0f3h:
	rlca			;b0f3
	inc de			;b0f4
	ld hl,00125h		;b0f5
	inc bc			;b0f8
	ld a,(bc)		;b0f9
	ld e,021h		;b0fa
	daa			;b0fc
	ld bc,00a03h		;b0fd
	jr z,$+35		;b100
	dec h			;b102
	ld bc,00b03h		;b103
	dec d			;b106
	ld hl,00125h		;b107
	inc bc			;b10a
lb10bh:
	rrca			;b10b
	dec d			;b10c
	ld hl,00027h		;b10d
	inc bc			;b110
	rlca			;b111
	inc de			;b112
	ld hl,00125h		;b113
	inc b			;b116
	ex af,af'		;b117
	jr $+40			;b118
	dec h			;b11a
	ld bc,00a03h		;b11b
	ld e,021h		;b11e
	daa			;b120
	ld bc,00a03h		;b121
	jr z,lb147h		;b124
	dec h			;b126
	ld bc,00b03h		;b127
	ld (de),a		;b12a
	ld hl,00225h		;b12b
	inc bc			;b12e
	rrca			;b12f
	rla			;b130
	ld hl,00125h		;b131
	inc bc			;b134
	ld a,(bc)		;b135
	dec de			;b136
	ld hl,00125h		;b137
	inc bc			;b13a
	add hl,hl		;b13b
	jr z,lb15fh		;b13c
	daa			;b13e
	ld bc,00f03h		;b13f
	dec d			;b142
	ld hl,00125h		;b143
	inc bc			;b146
lb147h:
	ld b,017h		;b147
	ld hl,00125h		;b149
	inc bc			;b14c
	add hl,hl		;b14d
	dec de			;b14e
	ld hl,00025h		;b14f
	inc bc			;b152
	ld c,01bh		;b153
	ld hl,00125h		;b155
	inc bc			;b158
	ld c,02bh		;b159
	ld hl,00125h		;b15b
	inc bc			;b15e
lb15fh:
	inc hl			;b15f
	ld (de),a		;b160
	ld hl,00124h		;b161
	inc bc			;b164
	ld a,(bc)		;b165
	ld e,021h		;b166
	dec h			;b168
	ld bc,00b03h		;b169
	jr z,$+35		;b16c
	dec h			;b16e
	ld (bc),a		;b16f
	inc bc			;b170
	dec c			;b171
	inc de			;b172
	ld hl,00125h		;b173
	inc bc			;b176
	rrca			;b177
	ld (de),a		;b178
	ld hl,00125h		;b179
	inc b			;b17c
	ex af,af'		;b17d
	inc d			;b17e
	ld h,027h		;b17f
	ld bc,02903h		;b181
	rla			;b184
	ld hl,00125h		;b185
	inc bc			;b188
	rrca			;b189
	jr z,lb1adh		;b18a
	dec h			;b18c
	ld bc,00a03h		;b18d
	dec d			;b190
	ld hl,00025h		;b191
	inc bc			;b194
	add hl,hl		;b195
	rla			;b196
	ld hl,00125h		;b197
	inc bc			;b19a
	rrca			;b19b
	jr z,lb1bfh		;b19c
	dec h			;b19e
	ld bc,00a03h		;b19f
	dec d			;b1a2
	ld hl,00124h		;b1a3
	inc bc			;b1a6
	add hl,hl		;b1a7
	rla			;b1a8
	ld hl,00125h		;b1a9
	inc bc			;b1ac
lb1adh:
	ld c,01bh		;b1ad
	ld hl,00125h		;b1af
	inc bc			;b1b2
	dec bc			;b1b3
	ld e,021h		;b1b4
	dec h			;b1b6
	nop			;b1b7
	inc bc			;b1b8
	inc hl			;b1b9
	dec hl			;b1ba
	ld hl,00125h		;b1bb
	inc bc			;b1be
lb1bfh:
	ld a,(bc)		;b1bf
	dec d			;b1c0
	ld hl,00127h		;b1c1
	inc bc			;b1c4
	dec bc			;b1c5
	ld e,021h		;b1c6
	dec h			;b1c8
	ld bc,02303h		;b1c9
	dec de			;b1cc
	ld hl,00125h		;b1cd
	inc bc			;b1d0
	ld a,(bc)		;b1d1
	dec hl			;b1d2
	ld hl,00225h		;b1d3
	inc bc			;b1d6
	dec bc			;b1d7
	dec d			;b1d8
	ld hl,00125h		;b1d9
	inc bc			;b1dc
	inc hl			;b1dd
	ld e,021h		;b1de
	dec h			;b1e0
	ld bc,00a03h		;b1e1
	dec de			;b1e4
	ld hl,00124h		;b1e5
	inc bc			;b1e8
	dec bc			;b1e9
	dec hl			;b1ea
	ld hl,00125h		;b1eb
	inc bc			;b1ee
	ld c,015h		;b1ef
	ld hl,00125h		;b1f1
	inc bc			;b1f4
	ld de,02120h		;b1f5
	dec h			;b1f8
	nop			;b1f9
	inc bc			;b1fa
	ld a,(bc)		;b1fb
	dec hl			;b1fc
	ld hl,00125h		;b1fd
	inc bc			;b200
	dec bc			;b201
	dec d			;b202
	ld hl,00127h		;b203
	inc bc			;b206
	ld c,01eh		;b207
	ld hl,00125h		;b209
	inc bc			;b20c
	inc hl			;b20d
	dec hl			;b20e
	ld hl,00125h		;b20f
	inc bc			;b212
	ld a,(bc)		;b213
	dec d			;b214
	ld hl,00225h		;b215
	inc bc			;b218
	ld a,(bc)		;b219
	dec d			;b21a
	ld hl,00125h		;b21b
	inc bc			;b21e
	ld a,(bc)		;b21f
	dec d			;b220
	ld hl,00125h		;b221
	inc bc			;b224
	dec bc			;b225
	ld e,021h		;b226
	inc h			;b228
	ld bc,00f03h		;b229
	dec hl			;b22c
	ld hl,00125h		;b22d
	inc bc			;b230
	ld a,(bc)		;b231
	dec d			;b232
	ld hl,00125h		;b233
	inc bc			;b236
	ld a,(bc)		;b237
	ld e,021h		;b238
	dec h			;b23a
	nop			;b23b
	inc bc			;b23c
	dec bc			;b23d
	jr z,lb261h		;b23e
	dec h			;b240
	ld bc,02303h		;b241
	ld (de),a		;b244
	ld hl,00127h		;b245
	inc bc			;b248
	ld a,(bc)		;b249
	dec d			;b24a
	ld hl,00125h		;b24b
	inc bc			;b24e
	add hl,hl		;b24f
	rla			;b250
	ld hl,00125h		;b251
	inc bc			;b254
	ld c,01bh		;b255
	ld hl,00225h		;b257
	inc bc			;b25a
	ld c,01bh		;b25b
	ld hl,00125h		;b25d
	inc bc			;b260
lb261h:
	dec c			;b261
	inc e			;b262
	ld hl,00125h		;b263
	inc bc			;b266
	rrca			;b267
	jr z,lb28bh		;b268
	inc h			;b26a
	ld bc,00a03h		;b26b
	ld (de),a		;b26e
	ld hl,00125h		;b26f
	inc bc			;b272
	ld a,(bc)		;b273
	ld (de),a		;b274
	ld hl,00125h		;b275
	inc bc			;b278
	dec bc			;b279
	ld e,021h		;b27a
	dec h			;b27c
	nop			;b27d
	inc bc			;b27e
	ld c,01bh		;b27f
	ld hl,00125h		;b281
	inc bc			;b284
	ld c,01bh		;b285
	ld hl,00127h		;b287
	inc bc			;b28a
lb28bh:
	ld c,01bh		;b28b
	ld hl,00125h		;b28d
	inc bc			;b290
	dec bc			;b291
	ld e,021h		;b292
	dec h			;b294
	ld bc,00e03h		;b295
	dec de			;b298
	ld hl,00225h		;b299
	inc b			;b29c
	add hl,bc		;b29d
	dec e			;b29e
	ld (00125h),hl		;b29f
	inc bc			;b2a2
	ld c,01bh		;b2a3
	ld hl,0ff25h		;b2a5
	add hl,de		;b2a8
	nop			;b2a9
	rst 38h			;b2aa
	ex af,af'		;b2ab
	rst 38h			;b2ac
	ld de,02000h		;b2ad
	ld bc,00f03h		;b2b0
	jr z,lb2d6h		;b2b3
	inc h			;b2b5
	ld bc,00a03h		;b2b6
	dec d			;b2b9
	ld hl,00125h		;b2ba
	inc bc			;b2bd
	ld a,(bc)		;b2be
	dec d			;b2bf
	ld hl,00225h		;b2c0
	inc bc			;b2c3
	ld a,(bc)		;b2c4
	dec d			;b2c5
	ld hl,02127h		;b2c6
	inc bc			;b2c9
	ld a,(bc)		;b2ca
	dec d			;b2cb
	ld hl,02103h		;b2cc
	inc bc			;b2cf
	ld a,(bc)		;b2d0
	dec d			;b2d1
	ld hl,02103h		;b2d2
	inc bc			;b2d5
lb2d6h:
	ld a,(bc)		;b2d6
	dec d			;b2d7
	ld hl,02103h		;b2d8
	inc bc			;b2db
	ld a,(bc)		;b2dc
	dec d			;b2dd
	ld hl,02103h		;b2de
	inc bc			;b2e1
	ld a,(bc)		;b2e2
	dec d			;b2e3
	ld hl,02103h		;b2e4
	inc bc			;b2e7
	ld a,(bc)		;b2e8
	dec d			;b2e9
	ld hl,02103h		;b2ea
	inc bc			;b2ed
	ld a,(bc)		;b2ee
	dec d			;b2ef
	ld hl,0ff03h		;b2f0
	inc de			;b2f3
	ld e,0b3h		;b2f4
	ld hl,00a03h		;b2f6
	dec d			;b2f9
	ld hl,0ff03h		;b2fa
	ld de,02004h		;b2fd
	rst 38h			;b300
	rla			;b301
	ld bc,00321h		;b302
	ld a,(bc)		;b305
	dec d			;b306
	ld hl,02103h		;b307
	inc bc			;b30a
	ld a,(bc)		;b30b
	dec d			;b30c
	ld hl,02103h		;b30d
	inc bc			;b310
	ld a,(bc)		;b311
	dec d			;b312
	ld hl,02103h		;b313
	inc bc			;b316
	ld a,(bc)		;b317
	dec d			;b318
	ld hl,0fe03h		;b319
	rst 38h			;b31c
	ld d,000h		;b31d
	nop			;b31f
	nop			;b320
	djnz lb323h		;b321
lb323h:
	jr nz,lb365h		;b323
	jr nc,lb32ch		;b325
	ld b,b			;b327
	scf			;b328
	ld d,l			;b329
	ld h,b			;b32a
	sub b			;b32b
lb32ch:
	ld b,b			;b32c
	or b			;b32d
	ld h,b			;b32e
	ret nz			;b32f
	rst 38h			;b330
	rst 38h			;b331
	dec de			;b332
	rst 38h			;b333
	nop			;b334
	djnz lb341h		;b335
	ex af,af'		;b337
	rrca			;b338
	inc bc			;b339
	jr c,lb34dh		;b33a
	dec bc			;b33c
	add hl,bc		;b33d
	rrca			;b33e
	inc b			;b33f
	scf			;b340
lb341h:
	djnz lb34dh		;b341
	inc c			;b343
	ld b,001h		;b344
	jr c,lb359h		;b346
	dec bc			;b348
	dec c			;b349
	rlca			;b34a
	dec b			;b34b
	scf			;b34c
lb34dh:
	djnz $+13		;b34d
	ld c,007h		;b34f
	ld bc,01139h		;b351
	ld a,(bc)		;b354
	ex af,af'		;b355
	ld b,003h		;b356
	inc (hl)		;b358
lb359h:
	djnz $+13		;b359
	add hl,bc		;b35b
	rlca			;b35c
	inc b			;b35d
	ld d,e			;b35e
	ld de,0080ah		;b35f
	ld b,018h		;b362
	ld e,a			;b364
lb365h:
	djnz lb36ah		;b365
	ld bc,02618h		;b367
lb36ah:
	ld a,(de)		;b36a
	ld de,01804h		;b36b
	add hl,de		;b36e
	ld e,(hl)		;b36f
	inc e			;b370
	djnz lb374h		;b371
	ld b,(hl)		;b373
lb374h:
	ld a,(de)		;b374
	ld e,h			;b375
	ld a,(de)		;b376
	ld de,04704h		;b377
	inc b			;b37a
	dec sp			;b37b
	ld bc,00310h		;b37c
	dec b			;b37f
	ld (bc),a		;b380
	inc a			;b381
	ld a,011h		;b382
	ld (bc),a		;b384
	ld bc,03d03h		;b385
	ld c,(hl)		;b388
	ld d,c			;b389
	ld hl,02718h		;b38a
	add hl,hl		;b38d
	ld c,c			;b38e
	ld sp,02625h		;b38f
	jr z,lb3beh		;b392
	ld sp,0fffeh		;b394
	dec b			;b397
	rst 38h			;b398
	dec de			;b399
	ld sp,05453h		;b39a
	ld d,l			;b39d
	dec h			;b39e
	ld d,01ah		;b39f
	ld (bc),a		;b3a1
	inc bc			;b3a2
	ld (bc),a		;b3a3
	inc b			;b3a4
	ld bc,04352h		;b3a5
	ld c,c			;b3a8
	ld sp,05f53h		;b3a9
	ld a,(de)		;b3ac
	jr $+27			;b3ad
	ld a,(de)		;b3af
	ld bc,00203h		;b3b0
	inc b			;b3b3
	dec b			;b3b4
	ld c,d			;b3b5
	ld c,e			;b3b6
	ld b,d			;b3b7
	jr nc,lb40dh		;b3b8
	ld e,a			;b3ba
	ld a,(de)		;b3bb
	ld (bc),a		;b3bc
	inc e			;b3bd
lb3beh:
	ld a,(de)		;b3be
	ld (bc),a		;b3bf
	ld (bc),a		;b3c0
	ld (bc),a		;b3c1
	inc b			;b3c2
	ld (bc),a		;b3c3
	jr lb439h		;b3c4
	ld d,(hl)		;b3c6
	ld sp,05f53h		;b3c7
	ld a,(de)		;b3ca
	ld (bc),a		;b3cb
	ld (bc),a		;b3cc
	ld (bc),a		;b3cd
	ld (bc),a		;b3ce
	jr lb417h		;b3cf
	ld b,a			;b3d1
	dec b			;b3d2
	jr lb3fbh		;b3d3
	ld d,(hl)		;b3d5
	jr nc,lb42bh		;b3d6
	ld e,a			;b3d8
	ld a,(de)		;b3d9
	ld (bc),a		;b3da
	ld (bc),a		;b3db
	ld (bc),a		;b3dc
	add hl,bc		;b3dd
	jr lb406h		;b3de
	ld b,l			;b3e0
	jr c,$+95		;b3e1
	ld (hl),h		;b3e3
	ld d,(hl)		;b3e4
	ld sp,05f53h		;b3e5
	ld a,(de)		;b3e8
	inc b			;b3e9
	inc bc			;b3ea
	inc b			;b3eb
	inc bc			;b3ec
	jr lb415h		;b3ed
	ld d,(hl)		;b3ef
	ld sp,03130h		;b3f0
	jr nc,lb425h		;b3f3
	ld d,e			;b3f5
	ld e,a			;b3f6
	ld a,(de)		;b3f7
	ld bc,00304h		;b3f8
lb3fbh:
	ld bc,02618h		;b3fb
	ld e,(hl)		;b3fe
	ld e,a			;b3ff
	rla			;b400
	ld de,03111h		;b401
	ld d,e			;b404
	ld e,a			;b405
lb406h:
	ld a,(de)		;b406
	ld bc,04a02h		;b407
	ld c,e			;b40a
	ld d,e			;b40b
	ld e,a			;b40c
lb40dh:
	ld a,(de)		;b40d
	inc e			;b40e
	ld a,(de)		;b40f
	ld bc,03002h		;b410
	ld d,e			;b413
	ld b,b			;b414
lb415h:
	ld l,005h		;b415
lb417h:
	ld bc,02a03h		;b417
	dec hl			;b41a
	ld e,a			;b41b
	ld a,(de)		;b41c
	ld bc,00301h		;b41d
	inc b			;b420
	ld sp,05753h		;b421
	ld d,(hl)		;b424
lb425h:
	ld b,c			;b425
	dec a			;b426
	ld (bc),a		;b427
	ld (bc),a		;b428
	ld (bc),a		;b429
	inc e			;b42a
lb42bh:
	ld a,(de)		;b42b
	inc b			;b42c
	jr lb475h		;b42d
	ld b,a			;b42f
	jr nc,lb485h		;b430
	ld d,a			;b432
	ld d,(hl)		;b433
	ld sp,04142h		;b434
	dec a			;b437
	ld (bc),a		;b438
lb439h:
	dec b			;b439
	ld bc,01803h		;b43a
	add hl,de		;b43d
	ld a,(de)		;b43e
	ld sp,05753h		;b43f
	ld d,(hl)		;b442
	ld sp,03130h		;b443
	ld b,d			;b446
	ld b,c			;b447
	ld c,b			;b448
	scf			;b449
	scf			;b44a
	ld e,l			;b44b
	ld h,045h		;b44c
	rst 38h			;b44e
	dec de			;b44f
	rst 38h			;b450
	add hl,bc		;b451
	rst 38h			;b452
	ld de,02001h		;b453
	rst 38h			;b456
	dec e			;b457
	ld h,01ah		;b458
	ld bc,01918h		;b45a
	ld b,l			;b45d
	rst 38h			;b45e
	add hl,bc		;b45f
	rst 38h			;b460
	ld de,02001h		;b461
	ld e,(hl)		;b464
	inc e			;b465
	ld bc,01a46h		;b466
	jr c,$+97		;b469
	ld a,(de)		;b46b
	inc bc			;b46c
	ld b,a			;b46d
	ld (bc),a		;b46e
	scf			;b46f
	rla			;b470
	ld bc,00104h		;b471
	inc bc			;b474
lb475h:
	jr c,$+19		;b475
	ld (bc),a		;b477
	inc bc			;b478
	inc b			;b479
	inc b			;b47a
	scf			;b47b
	djnz lb481h		;b47c
	inc b			;b47e
	inc bc			;b47f
	ld (bc),a		;b480
lb481h:
	jr c,$+19		;b481
	inc b			;b483
	ld (bc),a		;b484
lb485h:
	inc bc			;b485
	ld bc,0105dh		;b486
	dec de			;b489
	inc b			;b48a
	inc b			;b48b
	jr $+40			;b48c
	rst 38h			;b48e
	ld a,(de)		;b48f
	dec d			;b490
	inc e			;b491
	dec b			;b492
	ld bc,04546h		;b493
	ld d,01ah		;b496
	rrca			;b498
	ld bc,03847h		;b499
	rla			;b49c
	ld a,(bc)		;b49d
	inc c			;b49e
	rlca			;b49f
	ld bc,01037h		;b4a0
	dec bc			;b4a3
	ld b,00fh		;b4a4
	dec b			;b4a6
	jr c,lb4bah		;b4a7
	ld a,(bc)		;b4a9
	dec c			;b4aa
	rlca			;b4ab
	ld (bc),a		;b4ac
	scf			;b4ad
	djnz $+13		;b4ae
	ld b,00fh		;b4b0
	dec b			;b4b2
	jr c,lb4c6h		;b4b3
	ld a,(bc)		;b4b5
	ld c,007h		;b4b6
	add hl,bc		;b4b8
	scf			;b4b9
lb4bah:
	djnz lb4d7h		;b4ba
	rrca			;b4bc
	ld (bc),a		;b4bd
	ld (bc),a		;b4be
	ld e,l			;b4bf
	dec d			;b4c0
	inc e			;b4c1
	inc b			;b4c2
	inc bc			;b4c3
	jr lb4ech		;b4c4
lb4c6h:
	ld d,01ah		;b4c6
	inc bc			;b4c8
	jr $+27			;b4c9
	ld d,(hl)		;b4cb
	rla			;b4cc
	inc bc			;b4cd
	inc b			;b4ce
	ld b,(hl)		;b4cf
	ld a,(de)		;b4d0
	ld sp,00410h		;b4d1
	rrca			;b4d4
	ld b,a			;b4d5
	inc b			;b4d6
lb4d7h:
	jr nc,$+19		;b4d7
	ld a,(bc)		;b4d9
	inc c			;b4da
	ld b,002h		;b4db
	ld sp,00b10h		;b4dd
	dec c			;b4e0
	nop			;b4e1
	rlca			;b4e2
	jr nc,$+19		;b4e3
	inc bc			;b4e5
	rrca			;b4e6
	ld (bc),a		;b4e7
	rrca			;b4e8
	ld sp,00b10h		;b4e9
lb4ech:
	dec c			;b4ec
	nop			;b4ed
	ld b,030h		;b4ee
	ld de,00d0ah		;b4f0
	rlca			;b4f3
	inc bc			;b4f4
	ld sp,00310h		;b4f5
	rrca			;b4f8
	inc b			;b4f9
	inc b			;b4fa
	jr nc,$+79		;b4fb
	ccf			;b4fd
	ld bc,04a04h		;b4fe
	inc (hl)		;b501
	inc d			;b502
	ld c,l			;b503
	inc bc			;b504
	ld a,(0324bh)		;b505
	inc d			;b508
	inc d			;b509
	dec b			;b50a
	jr c,$+51		;b50b
	inc sp			;b50d
	inc d			;b50e
	inc l			;b50f
	inc b			;b510
	ld d,b			;b511
	inc (hl)		;b512
	dec (hl)		;b513
	inc l			;b514
	dec l			;b515
	inc bc			;b516
	ld (bc),a		;b517
	ld c,a			;b518
	inc (hl)		;b519
	djnz lb520h		;b51a
	inc b			;b51c
	ld bc,03003h		;b51d
lb520h:
	ld de,00202h		;b520
	inc bc			;b523
	ld (bc),a		;b524
	ld sp,00510h		;b525
	inc bc			;b528
	inc b			;b529
	ld bc,01130h		;b52a
	ld bc,00304h		;b52d
	ld (bc),a		;b530
	ld sp,00210h		;b531
	ld (bc),a		;b534
	ld bc,03003h		;b535
	ld de,00303h		;b538
	dec b			;b53b
	inc b			;b53c
	ld sp,00410h		;b53d
	inc b			;b540
	ld bc,03002h		;b541
	ld de,00201h		;b544
	inc b			;b547
	inc bc			;b548
	ld sp,00510h		;b549
	inc bc			;b54c
	ld (bc),a		;b54d
	inc b			;b54e
	jr nc,$+19		;b54f
	ld bc,05104h		;b551
	ld bc,01031h		;b554
	inc bc			;b557
	ld (bc),a		;b558
	ld sp,03003h		;b559
	ld de,00304h		;b55c
	cpl			;b55f
	inc b			;b560
	ld sp,00110h		;b561
	inc b			;b564
	inc bc			;b565
	ld (bc),a		;b566
	jr nc,lb57ah		;b567
	ld (bc),a		;b569
	ld (bc),a		;b56a
	ld bc,03103h		;b56b
	djnz $+6		;b56e
	inc bc			;b570
	dec b			;b571
	inc b			;b572
	jr nc,$+19		;b573
	ld (bc),a		;b575
	inc b			;b576
	ld bc,03102h		;b577
lb57ah:
	djnz lb57fh		;b57a
	ld (bc),a		;b57c
	dec b			;b57d
	inc bc			;b57e
lb57fh:
	jr nc,lb592h		;b57f
	inc b			;b581
	ld (bc),a		;b582
	add hl,bc		;b583
	inc b			;b584
	ld sp,00210h		;b585
	inc bc			;b588
	inc b			;b589
	ld c,d			;b58a
	inc (hl)		;b58b
	ld de,00402h		;b58c
	ld a,(0324bh)		;b58f
lb592h:
	djnz lb595h		;b592
	ld (bc),a		;b594
lb595h:
	scf			;b595
	ld sp,01133h		;b596
	dec b			;b599
	inc bc			;b59a
	jr c,lb5d1h		;b59b
	dec (hl)		;b59d
	djnz lb5a1h		;b59e
	inc b			;b5a0
lb5a1h:
	ld d,b			;b5a1
	ld sp,01134h		;b5a2
	ld (bc),a		;b5a5
	ld (bc),a		;b5a6
	ld (bc),a		;b5a7
	ld c,a			;b5a8
	inc sp			;b5a9
	djnz lb5aeh		;b5aa
	ld (bc),a		;b5ac
	ld (bc),a		;b5ad
lb5aeh:
	ld (bc),a		;b5ae
	inc (hl)		;b5af
	ld de,0604ch		;b5b0
	ld (bc),a		;b5b3
	inc bc			;b5b4
	ld sp,03612h		;b5b5
	ld e,b			;b5b8
	ld (bc),a		;b5b9
	inc b			;b5ba
	jr nc,$+4		;b5bb
	ld bc,00103h		;b5bd
	ld (bc),a		;b5c0
	ld sp,00513h		;b5c1
	ld (bc),a		;b5c4
	inc bc			;b5c5
	inc bc			;b5c6
	jr nc,$+19		;b5c7
	ld bc,00402h		;b5c9
	inc b			;b5cc
	ld sp,00312h		;b5cd
	inc b			;b5d0
lb5d1h:
	ld bc,03002h		;b5d1
	ld (bc),a		;b5d4
	inc b			;b5d5
	ld (bc),a		;b5d6
	ld d,c			;b5d7
	inc bc			;b5d8
	ld sp,00213h		;b5d9
	ld (bc),a		;b5dc
	cpl			;b5dd
	inc b			;b5de
	jr nc,lb5f2h		;b5df
	inc bc			;b5e1
	ld (bc),a		;b5e2
	ld (bc),a		;b5e3
	ld (bc),a		;b5e4
	inc (hl)		;b5e5
	ld (de),a		;b5e6
	inc b			;b5e7
	dec b			;b5e8
	ld (bc),a		;b5e9
	inc bc			;b5ea
	jr nc,$+4		;b5eb
	ld bc,0030fh		;b5ed
	inc b			;b5f0
	inc (hl)		;b5f1
lb5f2h:
	inc de			;b5f2
	ld a,(bc)		;b5f3
	dec c			;b5f4
	ld b,04ah		;b5f5
	jr nc,lb60ah		;b5f7
	dec bc			;b5f9
	ld b,00fh		;b5fa
	ld c,e			;b5fc
	dec hl			;b5fd
	djnz lb60ah		;b5fe
	rlca			;b600
	rrca			;b601
	jr nc,lb61ah		;b602
	ld de,00e0bh		;b604
	ld b,031h		;b607
	ld a,(de)		;b609
lb60ah:
	djnz lb60dh		;b60a
	rrca			;b60c
lb60dh:
	ld (bc),a		;b60d
	ld sp,01102h		;b60e
	ld (bc),a		;b611
	dec de			;b612
	ld (bc),a		;b613
	ld sp,01003h		;b614
	jr lb635h		;b617
	ld (bc),a		;b619
lb61ah:
	ld e,e			;b61a
	inc b			;b61b
	dec d			;b61c
	add hl,de		;b61d
	ld a,(de)		;b61e
	ld bc,00203h		;b61f
	ld d,01ah		;b622
	inc bc			;b624
	dec b			;b625
	inc b			;b626
	inc bc			;b627
	rla			;b628
	ld bc,00104h		;b629
	ld (bc),a		;b62c
	inc b			;b62d
	ld (00204h),hl		;b62e
	ld c,d			;b631
	ld d,c			;b632
	jr $+83			;b633
lb635h:
	ld d,c			;b635
	ld d,c			;b636
	inc (hl)		;b637
	ld d,e			;b638
	ld d,a			;b639
	inc (hl)		;b63a
	dec (hl)		;b63b
	dec (hl)		;b63c
	ld d,e			;b63d
	ld b,b			;b63e
	ld d,(hl)		;b63f
	cp 0ffh			;b640
	dec de			;b642
	rst 38h			;b643
	dec b			;b644
	rst 38h			;b645
	ld de,02006h		;b646
	ld sp,05335h		;b649
	ld e,a			;b64c
	ld a,(de)		;b64d
	inc bc			;b64e
	inc b			;b64f
	ld bc,00402h		;b650
	inc bc			;b653
	jr lb67ch		;b654
	ld d,(hl)		;b656
	ld sp,03031h		;b657
	ld d,e			;b65a
	ld e,a			;b65b
	ld a,(de)		;b65c
	ld a,(bc)		;b65d
	dec bc			;b65e
	jr lb6a7h		;b65f
	ld b,a			;b661
	ld (bc),a		;b662
	jr lb68bh		;b663
	ld d,(hl)		;b665
	ld sp,03034h		;b666
	ld d,e			;b669
	ld e,a			;b66a
	ld a,(de)		;b66b
	dec b			;b66c
	inc c			;b66d
	jr lb6e3h		;b66e
	ld d,(hl)		;b670
	jr nc,lb6c6h		;b671
	ld b,b			;b673
	ld d,(hl)		;b674
	ld sp,03534h		;b675
	ld d,e			;b678
	ld e,a			;b679
	ld a,(de)		;b67a
	inc bc			;b67b
lb67ch:
	inc bc			;b67c
	ld bc,05626h		;b67d
	ld sp,04053h		;b680
	ld d,(hl)		;b683
	ld sp,03131h		;b684
	ld d,e			;b687
	ld e,a			;b688
	ld a,(de)		;b689
	ld (bc),a		;b68a
lb68bh:
	ld bc,02618h		;b68b
	ld d,(hl)		;b68e
	jr nc,lb6e4h		;b68f
	ld b,b			;b691
	ld d,(hl)		;b692
	ld sp,03131h		;b693
	ld d,e			;b696
	ld b,b			;b697
	ld l,002h		;b698
	inc bc			;b69a
	inc b			;b69b
	inc e			;b69c
	ld a,(de)		;b69d
	ccf			;b69e
	ld d,e			;b69f
	ld b,b			;b6a0
	ld d,(hl)		;b6a1
	ld sp,03131h		;b6a2
	ld d,e			;b6a5
	ld b,b			;b6a6
lb6a7h:
	ld d,(hl)		;b6a7
	rra			;b6a8
	ld (bc),a		;b6a9
	ld (bc),a		;b6aa
	ld bc,00203h		;b6ab
	jr $+40			;b6ae
	ld d,(hl)		;b6b0
	ld sp,03131h		;b6b1
	ld d,e			;b6b4
	ld b,b			;b6b5
	ld d,(hl)		;b6b6
	ld sp,04620h		;b6b7
	ld b,a			;b6ba
	dec b			;b6bb
	add hl,bc		;b6bc
	jr lb6e5h		;b6bd
	ld d,(hl)		;b6bf
	ld sp,03131h		;b6c0
	ld d,e			;b6c3
	ld b,b			;b6c4
	ld d,(hl)		;b6c5
lb6c6h:
	ld sp,05f53h		;b6c6
	ld a,(de)		;b6c9
	inc bc			;b6ca
	inc b			;b6cb
	jr lb6f4h		;b6cc
	ld d,(hl)		;b6ce
	ld sp,03131h		;b6cf
	ld d,e			;b6d2
	ld b,b			;b6d3
	ld d,(hl)		;b6d4
	ld sp,05f53h		;b6d5
	ld a,(de)		;b6d8
	ld bc,01805h		;b6d9
	ld h,056h		;b6dc
	ld sp,01bffh		;b6de
	rst 38h			;b6e1
	inc bc			;b6e2
lb6e3h:
	ld b,b			;b6e3
lb6e4h:
	ld e,(hl)		;b6e4
lb6e5h:
	ld e,h			;b6e5
	ld b,a			;b6e6
	dec de			;b6e7
	ld e,d			;b6e8
	ld e,(hl)		;b6e9
	ld e,a			;b6ea
	ld e,(hl)		;b6eb
	ld e,a			;b6ec
	ld a,(de)		;b6ed
	inc bc			;b6ee
	inc b			;b6ef
	jr lb70bh		;b6f0
	ld a,(de)		;b6f2
	rst 38h			;b6f3
lb6f4h:
	add hl,de		;b6f4
	nop			;b6f5
	ld e,a			;b6f6
	ld a,(de)		;b6f7
	inc b			;b6f8
	inc bc			;b6f9
	dec de			;b6fa
	inc e			;b6fb
	ld a,(de)		;b6fc
	ld bc,013ffh		;b6fd
	ld l,c			;b700
	or a			;b701
	ld a,(de)		;b702
	ld bc,00403h		;b703
	ld (bc),a		;b706
	ld bc,00403h		;b707
	rst 38h			;b70a
lb70bh:
	ld de,00002h		;b70b
	rst 38h			;b70e
	rla			;b70f
	ld bc,00000h		;b710
	nop			;b713
	nop			;b714
	nop			;b715
	nop			;b716
	nop			;b717
	nop			;b718
	nop			;b719
	nop			;b71a
	nop			;b71b
	nop			;b71c
	nop			;b71d
	nop			;b71e
	nop			;b71f
	nop			;b720
	nop			;b721
	nop			;b722
	nop			;b723
	nop			;b724
	nop			;b725
	nop			;b726
	nop			;b727
	nop			;b728
	rst 38h			;b729
	ld de,00003h		;b72a
	nop			;b72d
	nop			;b72e
	nop			;b72f
	nop			;b730
	nop			;b731
	nop			;b732
	nop			;b733
	nop			;b734
	nop			;b735
	nop			;b736
	nop			;b737
	nop			;b738
	nop			;b739
	nop			;b73a
	nop			;b73b
	nop			;b73c
	rst 38h			;b73d
	ld de,00004h		;b73e
	nop			;b741
	nop			;b742
	nop			;b743
	nop			;b744
	nop			;b745
	nop			;b746
	nop			;b747
	nop			;b748
	ld h,c			;b749
	ld h,d			;b74a
	ld h,e			;b74b
	nop			;b74c
	nop			;b74d
	ld h,h			;b74e
	ld h,l			;b74f
	ld h,(hl)		;b750
	rst 38h			;b751
	ld de,00005h		;b752
	ld h,a			;b755
	ld l,b			;b756
	ld l,c			;b757
	nop			;b758
	nop			;b759
	ld l,l			;b75a
	ld l,(hl)		;b75b
	ld l,a			;b75c
	ld l,d			;b75d
	ld l,e			;b75e
	ld l,h			;b75f
	nop			;b760
	nop			;b761
	ld (hl),b		;b762
	ld (hl),c		;b763
	ld (hl),d		;b764
	rst 38h			;b765
	dec e			;b766
	rst 38h			;b767
	ld d,000h		;b768
	nop			;b76a
	nop			;b76b
	ld b,b			;b76c
	nop			;b76d
	ld d,b			;b76e
	cp 0ffh			;b76f
	dec de			;b771
	rst 38h			;b772
	add hl,bc		;b773
	rst 38h			;b774
	ld de,00000h		;b775
	ld l,b			;b778
	ld l,b			;b779
	ld (hl),e		;b77a
	nop			;b77b
	ld d,h			;b77c
	ld e,b			;b77d
	ld h,l			;b77e
	ld h,l			;b77f
	ld l,l			;b780
	nop			;b781
	ld d,d			;b782
	ld e,c			;b783
	ld l,h			;b784
	ld h,(hl)		;b785
	dec a			;b786
	ld b,e			;b787
	ld b,(hl)		;b788
	ld d,l			;b789
	ld l,b			;b78a
	ld h,c			;b78b
	ld b,c			;b78c
	ld b,h			;b78d
	ld b,a			;b78e
	ld b,a			;b78f
	inc e			;b790
	ld l,e			;b791
	ccf			;b792
	ld b,l			;b793
	inc b			;b794
	inc b			;b795
	dec e			;b796
	ld e,a			;b797
	ld (hl),d		;b798
	ld c,(hl)		;b799
	dec b			;b79a
	dec b			;b79b
	ld hl,07325h		;b79c
	ld (de),a		;b79f
	ex af,af'		;b7a0
	add hl,bc		;b7a1
	ld h,026h		;b7a2
	nop			;b7a4
	ld c,010h		;b7a5
	djnz $+37		;b7a7
	daa			;b7a9
	nop			;b7aa
	rrca			;b7ab
	ld de,02411h		;b7ac
	jr z,lb7fch		;b7af
	inc de			;b7b1
	dec d			;b7b2
	ld b,01ch		;b7b3
	ld l,l			;b7b5
	ld b,b			;b7b6
	ld b,e			;b7b7
	ld b,(hl)		;b7b8
	inc bc			;b7b9
	sbc a,e			;b7ba
	ld (hl),c		;b7bb
	ld b,c			;b7bc
	ld b,h			;b7bd
	sbc a,l			;b7be
	sbc a,a			;b7bf
	sbc a,h			;b7c0
	ld (hl),b		;b7c1
	ld b,d			;b7c2
	ld b,l			;b7c3
	sbc a,(hl)		;b7c4
	and b			;b7c5
	ld (00016h),a		;b7c6
	rla			;b7c9
	add hl,de		;b7ca
	jr lb839h		;b7cb
	ld d,b			;b7cd
	ld c,e			;b7ce
	ld c,a			;b7cf
	scf			;b7d0
	ld e,b			;b7d1
	dec hl			;b7d2
	ld h,c			;b7d3
	ld a,(de)		;b7d4
	ld d,04ch		;b7d5
	inc b			;b7d7
	ld l,062h		;b7d8
	dec de			;b7da
	ld b,e			;b7db
	ld b,(hl)		;b7dc
	ex af,af'		;b7dd
	dec l			;b7de
	ld h,e			;b7df
	ld a,044h		;b7e0
	ld b,a			;b7e2
	rlca			;b7e3
	ld l,h			;b7e4
	ld d,b			;b7e5
	ccf			;b7e6
	ld b,l			;b7e7
	ld (hl),001h		;b7e8
	dec hl			;b7ea
	ld h,a			;b7eb
	ld c,c			;b7ec
	ld e,d			;b7ed
	ld d,l			;b7ee
	ld (bc),a		;b7ef
	ld h,064h		;b7f0
	ld c,d			;b7f2
	ld a,(de)		;b7f3
	ld d,(hl)		;b7f4
	rlca			;b7f5
	daa			;b7f6
	ld l,b			;b7f7
	rla			;b7f8
	dec de			;b7f9
	scf			;b7fa
	ld e,b			;b7fb
lb7fch:
	dec l			;b7fc
	ld h,b			;b7fd
	nop			;b7fe
	nop			;b7ff
	ld d,e			;b800
	inc b			;b801
	ld l,h			;b802
	ld c,l			;b803
	ld l,c			;b804
lb805h:
	jr c,lb83eh		;b805
	inc d			;b807
	ld (01633h),a		;b808
	nop			;b80b
	ld d,e			;b80c
	rlca			;b80d
	ld l,h			;b80e
	ld c,l			;b80f
	ld l,c			;b810
	add hl,sp		;b811
	scf			;b812
	ld bc,0742bh		;b813
	dec a			;b816
	ld b,e			;b817
	ld b,(hl)		;b818
	ld (bc),a		;b819
	inc l			;b81a
	ld (hl),l		;b81b
	ld b,c			;b81c
	ld b,h			;b81d
	ld b,a			;b81e
	rlca			;b81f
	dec l			;b820
	inc a			;b821
	ld l,(hl)		;b822
	ld b,l			;b823
	ld (hl),058h		;b824
	add hl,hl		;b826
	ld l,a			;b827
	ld (hl),e		;b828
	rla			;b829
	add hl,de		;b82a
	jr lb857h		;b82b
	ld d,b			;b82d
	ld c,e			;b82e
	ld d,a			;b82f
	dec sp			;b830
	ld e,b			;b831
	dec l			;b832
	ld h,d			;b833
	ld b,b			;b834
	ld b,e			;b835
	ld b,(hl)		;b836
	inc b			;b837
	ld h,l			;b838
lb839h:
	ld (hl),b		;b839
	jr $+70			;b83a
	ld b,a			;b83c
	rlca			;b83d
lb83eh:
	ld l,d			;b83e
	ld (hl),c		;b83f
	rla			;b840
	ld b,l			;b841
	ld (hl),058h		;b842
	ld h,l			;b844
	ld h,l			;b845
	jr lb89ah		;b846
	ld e,c			;b848
	inc b			;b849
	ld l,h			;b84a
	ld d,b			;b84b
	dec (hl)		;b84c
	ld d,a			;b84d
	dec sp			;b84e
	dec b			;b84f
	jr nc,lb8b9h		;b850
	nop			;b852
	inc c			;b853
	ld a,(bc)		;b854
	djnz lb888h		;b855
lb857h:
	ld (hl),l		;b857
	nop			;b858
	dec c			;b859
	dec bc			;b85a
	dec bc			;b85b
	ld l,h			;b85c
	ld d,b			;b85d
	dec (hl)		;b85e
	jr c,lb8bch		;b85f
	ld d,l			;b861
	dec hl			;b862
	ld e,a			;b863
	ld (hl),d		;b864
	nop			;b865
	rla			;b866
	inc b			;b867
	ld l,068h		;b868
	ld a,(de)		;b86a
	add hl,sp		;b86b
	scf			;b86c
	ex af,af'		;b86d
	dec l			;b86e
	ld h,l			;b86f
	dec de			;b870
	ld e,h			;b871
	ld e,(hl)		;b872
	rlca			;b873
	ld l,h			;b874
	ld d,b			;b875
	ld c,e			;b876
	jr c,lb8b0h		;b877
	ld e,b			;b879
	ld (01633h),a		;b87a
	nop			;b87d
	rla			;b87e
	jr lb8e6h		;b87f
	ld h,b			;b881
	nop			;b882
	ld a,(0555bh)		;b883
	dec hl			;b886
	ld e,a			;b887
lb888h:
	ld (hl),d		;b888
	nop			;b889
	ld d,c			;b88a
	inc b			;b88b
	ld (07330h),hl		;b88c
	inc c			;b88f
	ld a,(bc)		;b890
	djnz $+49		;b891
	ld sp,00d00h		;b893
	dec bc			;b896
	dec bc			;b897
	ld e,07bh		;b898
lb89ah:
	add a,d			;b89a
	adc a,b			;b89b
	sub b			;b89c
	jr nz,lb916h		;b89d
	ld a,h			;b89f
	nop			;b8a0
	adc a,c			;b8a1
	sub c			;b8a2
	inc (hl)		;b8a3
	ld e,07bh		;b8a4
	add a,e			;b8a6
	adc a,d			;b8a7
	sub b			;b8a8
	jr nz,lb922h		;b8a9
	ld a,h			;b8ab
	nop			;b8ac
	adc a,c			;b8ad
	sub c			;b8ae
	inc (hl)		;b8af
lb8b0h:
	ld e,07bh		;b8b0
	add a,d			;b8b2
	adc a,b			;b8b3
	sub b			;b8b4
	jr nz,$+121		;b8b5
	ld a,h			;b8b7
	nop			;b8b8
lb8b9h:
	adc a,c			;b8b9
	sub c			;b8ba
	inc (hl)		;b8bb
lb8bch:
	ld e,07bh		;b8bc
	add a,d			;b8be
	adc a,b			;b8bf
	sub b			;b8c0
	jr nz,lb93ah		;b8c1
	ld a,h			;b8c3
	nop			;b8c4
	adc a,c			;b8c5
	sub c			;b8c6
	inc (hl)		;b8c7
	rst 38h			;b8c8
	rla			;b8c9
	ld (bc),a		;b8ca
	rst 38h			;b8cb
	ld de,00001h		;b8cc
	rst 38h			;b8cf
	inc de			;b8d0
	dec (hl)		;b8d1
	cp c			;b8d2
	ld e,07bh		;b8d3
	add a,d			;b8d5
	adc a,b			;b8d6
	sub b			;b8d7
	jr nz,lb951h		;b8d8
	ld a,h			;b8da
	nop			;b8db
	adc a,c			;b8dc
	sub c			;b8dd
	inc (hl)		;b8de
	ld e,07bh		;b8df
	add a,e			;b8e1
	adc a,d			;b8e2
	sub b			;b8e3
	jr nz,lb95dh		;b8e4
lb8e6h:
	ld a,l			;b8e6
	nop			;b8e7
	adc a,e			;b8e8
	sub d			;b8e9
	inc (hl)		;b8ea
	ld e,07eh		;b8eb
	add a,h			;b8ed
	adc a,h			;b8ee
	sub e			;b8ef
	sub a			;b8f0
	rst 38h			;b8f1
	add hl,de		;b8f2
	add a,h			;b8f3
	ld a,b			;b8f4
	ld a,a			;b8f5
	add a,l			;b8f6
	adc a,l			;b8f7
	sub h			;b8f8
	sbc a,b			;b8f9
	ld a,c			;b8fa
	add a,b			;b8fb
	add a,(hl)		;b8fc
	adc a,(hl)		;b8fd
	sub l			;b8fe
	sbc a,c			;b8ff
	ld a,d			;b900
	add a,c			;b901
	add a,a			;b902
	adc a,a			;b903
	sub (hl)		;b904
	sbc a,d			;b905
	cp 0ffh			;b906
	ld d,0ffh		;b908
	ld a,(de)		;b90a
	rst 38h			;b90b
	add hl,bc		;b90c
	rst 38h			;b90d
	rla			;b90e
	ld (bc),a		;b90f
	rst 38h			;b910
	ld a,(de)		;b911
	rst 38h			;b912
	add hl,bc		;b913
	rst 38h			;b914
	rla			;b915
lb916h:
	ld bc,019ffh		;b916
	nop			;b919
	rst 38h			;b91a
	ld a,(de)		;b91b
	rst 38h			;b91c
	add hl,bc		;b91d
	rst 38h			;b91e
	inc de			;b91f
	ld c,d			;b920
	xor c			;b921
lb922h:
	rst 38h			;b922
	dec d			;b923
	rst 38h			;b924
	jr $+1			;b925
	ld de,00001h		;b927
	rst 38h			;b92a
	rla			;b92b
	ld bc,014ffh		;b92c
	rst 38h			;b92f
	inc de			;b930
	dec (hl)		;b931
	cp c			;b932
	rst 38h			;b933
	ld d,030h		;b934
	nop			;b936
	ld b,b			;b937
	djnz lb98ah		;b938
lb93ah:
	jr nz,$+20		;b93a
	ld (04424h),a		;b93c
	inc (hl)		;b93f
	ld d,(hl)		;b940
	ld h,h			;b941
	sub a			;b942
	scf			;b943
	or h			;b944
	ld b,h			;b945
	rst 0			;b946
	cp 0ffh			;b947
	dec de			;b949
	rst 38h			;b94a
	add hl,bc		;b94b
	rst 38h			;b94c
	ld de,00002h		;b94d
	rst 38h			;b950
lb951h:
	rla			;b951
	ld (bc),a		;b952
	ld bc,00f05h		;b953
	dec c			;b956
	add hl,bc		;b957
	inc b			;b958
	ld (bc),a		;b959
	ld b,009h		;b95a
	dec bc			;b95c
lb95dh:
	dec c			;b95d
	ld c,004h		;b95e
	rlca			;b960
	ld b,009h		;b961
	rrca			;b963
	dec c			;b964
	add hl,bc		;b965
	ex af,af'		;b966
	ld (bc),a		;b967
	ld bc,00b09h		;b968
	dec bc			;b96b
	inc b			;b96c
	rlca			;b96d
	inc bc			;b96e
	inc c			;b96f
	ex af,af'		;b970
	nop			;b971
	dec c			;b972
	dec c			;b973
	rlca			;b974
	ld (bc),a		;b975
	inc bc			;b976
	ld c,004h		;b977
	add hl,bc		;b979
	dec c			;b97a
	ld b,008h		;b97b
	ex af,af'		;b97d
	dec b			;b97e
	dec bc			;b97f
	rrca			;b980
	dec c			;b981
	inc b			;b982
	rlca			;b983
	ld c,007h		;b984
	add hl,bc		;b986
	inc b			;b987
	dec bc			;b988
	inc b			;b989
lb98ah:
	dec c			;b98a
	ld b,005h		;b98b
	dec bc			;b98d
	dec c			;b98e
	ld c,00dh		;b98f
	ld c,00dh		;b991
	add hl,bc		;b993
	dec bc			;b994
	ex af,af'		;b995
	dec bc			;b996
	dec c			;b997
	ld c,00dh		;b998
	ld bc,00701h		;b99a
	inc b			;b99d
	ex af,af'		;b99e
	dec bc			;b99f
	dec c			;b9a0
	inc bc			;b9a1
	inc c			;b9a2
	ex af,af'		;b9a3
	dec c			;b9a4
	dec b			;b9a5
	rlca			;b9a6
	ex af,af'		;b9a7
	ld a,(bc)		;b9a8
	ld bc,00504h		;b9a9
	ld c,009h		;b9ac
	dec b			;b9ae
	ex af,af'		;b9af
	ld c,00dh		;b9b0
	rlca			;b9b2
	ex af,af'		;b9b3
	inc b			;b9b4
	dec c			;b9b5
	dec b			;b9b6
	add hl,bc		;b9b7
	dec bc			;b9b8
	add hl,bc		;b9b9
	rlca			;b9ba
	dec bc			;b9bb
	ld c,00dh		;b9bc
	ld c,004h		;b9be
	ld c,00dh		;b9c0
	rrca			;b9c2
	dec bc			;b9c3
	inc b			;b9c4
	ld bc,00e08h		;b9c5
	rlca			;b9c8
	ld b,005h		;b9c9
	ld c,00dh		;b9cb
	dec bc			;b9cd
	inc b			;b9ce
	ld (bc),a		;b9cf
	inc c			;b9d0
	ld bc,00706h		;b9d1
	add hl,bc		;b9d4
	dec c			;b9d5
	rrca			;b9d6
	ld c,001h		;b9d7
	inc b			;b9d9
	ld b,00eh		;b9da
	add hl,bc		;b9dc
	ex af,af'		;b9dd
	rlca			;b9de
	ld (bc),a		;b9df
	ex af,af'		;b9e0
	dec b			;b9e1
	inc b			;b9e2
	inc b			;b9e3
	dec b			;b9e4
	inc bc			;b9e5
	dec bc			;b9e6
	add hl,bc		;b9e7
	dec c			;b9e8
	ld b,004h		;b9e9
	ex af,af'		;b9eb
	ex af,af'		;b9ec
	ld c,009h		;b9ed
	add hl,bc		;b9ef
	inc bc			;b9f0
	ld c,009h		;b9f1
	rrca			;b9f3
	dec bc			;b9f4
	dec b			;b9f5
	rlca			;b9f6
	dec c			;b9f7
	inc b			;b9f8
	add hl,bc		;b9f9
	ld c,001h		;b9fa
	inc b			;b9fc
	dec bc			;b9fd
	dec b			;b9fe
	inc bc			;b9ff
	ex af,af'		;ba00
	add hl,bc		;ba01
	dec b			;ba02
	rlca			;ba03
	dec b			;ba04
	add hl,bc		;ba05
	rlca			;ba06
	rlca			;ba07
	ld bc,00b09h		;ba08
	rrca			;ba0b
	ld c,004h		;ba0c
	add hl,bc		;ba0e
	rrca			;ba0f
	dec bc			;ba10
	dec c			;ba11
	rrca			;ba12
	inc b			;ba13
	dec bc			;ba14
	rrca			;ba15
	dec bc			;ba16
	inc b			;ba17
	nop			;ba18
	inc b			;ba19
	nop			;ba1a
	dec bc			;ba1b
	nop			;ba1c
	nop			;ba1d
	dec bc			;ba1e
	nop			;ba1f
	dec bc			;ba20
	nop			;ba21
	nop			;ba22
	rrca			;ba23
	nop			;ba24
	rrca			;ba25
	nop			;ba26
	nop			;ba27
	nop			;ba28
	nop			;ba29
	nop			;ba2a
	nop			;ba2b
	nop			;ba2c
	nop			;ba2d
lba2eh:
	nop			;ba2e
	nop			;ba2f
	nop			;ba30
	nop			;ba31
	nop			;ba32
	nop			;ba33
	nop			;ba34
	nop			;ba35
	nop			;ba36
	nop			;ba37
	nop			;ba38
	nop			;ba39
	nop			;ba3a
	nop			;ba3b
	nop			;ba3c
	nop			;ba3d
	nop			;ba3e
	nop			;ba3f
	nop			;ba40
	nop			;ba41
	nop			;ba42
	rst 38h			;ba43
	add hl,de		;ba44
	nop			;ba45
	nop			;ba46
	nop			;ba47
	nop			;ba48
	nop			;ba49
	nop			;ba4a
	nop			;ba4b
	nop			;ba4c
	nop			;ba4d
	nop			;ba4e
	nop			;ba4f
	nop			;ba50
	nop			;ba51
	nop			;ba52
	nop			;ba53
	nop			;ba54
	nop			;ba55
	nop			;ba56
	nop			;ba57
	nop			;ba58
	nop			;ba59
	nop			;ba5a
	nop			;ba5b
	nop			;ba5c
	nop			;ba5d
	rst 38h			;ba5e
	dec d			;ba5f
	rst 38h			;ba60
	jr $+1			;ba61
	ld de,00003h		;ba63
	rst 38h			;ba66
	inc de			;ba67
	ld l,h			;ba68
	cp d			;ba69
	rst 38h			;ba6a
	inc d			;ba6b
	nop			;ba6c
	nop			;ba6d
	ld bc,00112h		;ba6e
	inc hl			;ba71
	ld (de),a		;ba72
	inc (hl)		;ba73
	inc hl			;ba74
	ld b,l			;ba75
	ld d,b			;ba76
	ld d,b			;ba77
	ld d,b			;ba78
	sub b			;ba79
	jr nc,lba2eh		;ba7a
	ld b,b			;ba7c
	jp 0fffeh		;ba7d
	dec de			;ba80
	rst 38h			;ba81
	add hl,bc		;ba82
	rst 38h			;ba83
	ld de,00000h		;ba84
	nop			;ba87
	inc c			;ba88
	ld c,00dh		;ba89
	ld hl,00128h		;ba8b
	dec c			;ba8e
	rrca			;ba8f
	ld c,00ch		;ba90
	add hl,hl		;ba92
	ld (bc),a		;ba93
	ld c,00ch		;ba94
	rrca			;ba96
	dec c			;ba97
	ld hl,(00f03h)		;ba98
	dec c			;ba9b
	inc c			;ba9c
	ld c,02bh		;ba9d
	nop			;ba9f
	inc c			;baa0
	ld c,00dh		;baa1
	ld hl,00128h		;baa3
	dec c			;baa6
	rrca			;baa7
	ld c,00ch		;baa8
	add hl,hl		;baaa
	inc b			;baab
	djnz $+14		;baac
	dec de			;baae
	ld (hl),035h		;baaf
	dec b			;bab1
	ld de,01c17h		;bab2
	ld (0002ch),hl		;bab5
	rrca			;bab8
	ld c,00ch		;bab9
	ld hl,00628h		;babb
	inc c			;babe
	rrca			;babf
	dec c			;bac0
	ld c,02dh		;bac1
	inc (hl)		;bac3
	dec c			;bac4
	inc c			;bac5
	ld c,00fh		;bac6
	ld l,007h		;bac8
	ld (de),a		;baca
	dec c			;bacb
	rrca			;bacc
	inc hl			;bacd
	cpl			;bace
	ex af,af'		;bacf
	inc de			;bad0
	ld c,01dh		;bad1
	inc h			;bad3
	jr nc,lbadfh		;bad4
	inc d			;bad6
	jr lbaf7h		;bad7
	dec h			;bad9
	ld sp,0150ah		;bada
	add hl,de		;badd
	rra			;bade
lbadfh:
	ld h,032h		;badf
	dec bc			;bae1
	ld d,01ah		;bae2
	jr nz,lbb0dh		;bae4
	inc sp			;bae6
	cp 0ffh			;bae7
	ld d,0ffh		;bae9
	rst 38h			;baeb
	rst 38h			;baec
	rst 38h			;baed
	rst 38h			;baee
	rst 38h			;baef
	rst 38h			;baf0
	rst 38h			;baf1
	rst 38h			;baf2
	rst 38h			;baf3
	rst 38h			;baf4
	rst 38h			;baf5
	rst 38h			;baf6
lbaf7h:
	rst 38h			;baf7
	rst 38h			;baf8
	rst 38h			;baf9
	rst 38h			;bafa
	rst 38h			;bafb
	rst 38h			;bafc
	rst 38h			;bafd
	rst 38h			;bafe
	rst 38h			;baff
	rst 38h			;bb00
	rst 38h			;bb01
	rst 38h			;bb02
	rst 38h			;bb03
	rst 38h			;bb04
	rst 38h			;bb05
	rst 38h			;bb06
	rst 38h			;bb07
	rst 38h			;bb08
	rst 38h			;bb09
	rst 38h			;bb0a
	rst 38h			;bb0b
	rst 38h			;bb0c
lbb0dh:
	rst 38h			;bb0d
	rst 38h			;bb0e
	rst 38h			;bb0f
	rst 38h			;bb10
	rst 38h			;bb11
	rst 38h			;bb12
	rst 38h			;bb13
	rst 38h			;bb14
	rst 38h			;bb15
	rst 38h			;bb16
	rst 38h			;bb17
	rst 38h			;bb18
	rst 38h			;bb19
	rst 38h			;bb1a
	rst 38h			;bb1b
	rst 38h			;bb1c
	rst 38h			;bb1d
	rst 38h			;bb1e
	rst 38h			;bb1f
	rst 38h			;bb20
	rst 38h			;bb21
	rst 38h			;bb22
	rst 38h			;bb23
	rst 38h			;bb24
	rst 38h			;bb25
	rst 38h			;bb26
	rst 38h			;bb27
	rst 38h			;bb28
	rst 38h			;bb29
	rst 38h			;bb2a
	rst 38h			;bb2b
	rst 38h			;bb2c
	rst 38h			;bb2d
	rst 38h			;bb2e
	rst 38h			;bb2f
	rst 38h			;bb30
	rst 38h			;bb31
	rst 38h			;bb32
	rst 38h			;bb33
	rst 38h			;bb34
	rst 38h			;bb35
	rst 38h			;bb36
	rst 38h			;bb37
	rst 38h			;bb38
	rst 38h			;bb39
	rst 38h			;bb3a
	rst 38h			;bb3b
	rst 38h			;bb3c
	rst 38h			;bb3d
	rst 38h			;bb3e
	rst 38h			;bb3f
	rst 38h			;bb40
	rst 38h			;bb41
	rst 38h			;bb42
	rst 38h			;bb43
	rst 38h			;bb44
	rst 38h			;bb45
	rst 38h			;bb46
	rst 38h			;bb47
	rst 38h			;bb48
	rst 38h			;bb49
	rst 38h			;bb4a
	rst 38h			;bb4b
	rst 38h			;bb4c
	rst 38h			;bb4d
	rst 38h			;bb4e
	rst 38h			;bb4f
	rst 38h			;bb50
	rst 38h			;bb51
	rst 38h			;bb52
	rst 38h			;bb53
	rst 38h			;bb54
	rst 38h			;bb55
	rst 38h			;bb56
	rst 38h			;bb57
	rst 38h			;bb58
	rst 38h			;bb59
	rst 38h			;bb5a
	rst 38h			;bb5b
	rst 38h			;bb5c
	rst 38h			;bb5d
	rst 38h			;bb5e
	rst 38h			;bb5f
	rst 38h			;bb60
	rst 38h			;bb61
	rst 38h			;bb62
	rst 38h			;bb63
	rst 38h			;bb64
	rst 38h			;bb65
	rst 38h			;bb66
	rst 38h			;bb67
	rst 38h			;bb68
	rst 38h			;bb69
	rst 38h			;bb6a
	rst 38h			;bb6b
	rst 38h			;bb6c
	rst 38h			;bb6d
	rst 38h			;bb6e
	rst 38h			;bb6f
	rst 38h			;bb70
	rst 38h			;bb71
	rst 38h			;bb72
	rst 38h			;bb73
	rst 38h			;bb74
	rst 38h			;bb75
	rst 38h			;bb76
	rst 38h			;bb77
	rst 38h			;bb78
	rst 38h			;bb79
	rst 38h			;bb7a
	rst 38h			;bb7b
	rst 38h			;bb7c
	rst 38h			;bb7d
	rst 38h			;bb7e
	rst 38h			;bb7f
	rst 38h			;bb80
	rst 38h			;bb81
	rst 38h			;bb82
	rst 38h			;bb83
	rst 38h			;bb84
	rst 38h			;bb85
	rst 38h			;bb86
	rst 38h			;bb87
	rst 38h			;bb88
	rst 38h			;bb89
	rst 38h			;bb8a
	rst 38h			;bb8b
	rst 38h			;bb8c
	rst 38h			;bb8d
	rst 38h			;bb8e
	rst 38h			;bb8f
	rst 38h			;bb90
	rst 38h			;bb91
	rst 38h			;bb92
	rst 38h			;bb93
	rst 38h			;bb94
	rst 38h			;bb95
	rst 38h			;bb96
	rst 38h			;bb97
	rst 38h			;bb98
	rst 38h			;bb99
	rst 38h			;bb9a
	rst 38h			;bb9b
	rst 38h			;bb9c
	rst 38h			;bb9d
	rst 38h			;bb9e
	rst 38h			;bb9f
	rst 38h			;bba0
	rst 38h			;bba1
	rst 38h			;bba2
	rst 38h			;bba3
	rst 38h			;bba4
	rst 38h			;bba5
	rst 38h			;bba6
	rst 38h			;bba7
	rst 38h			;bba8
	rst 38h			;bba9
	rst 38h			;bbaa
	rst 38h			;bbab
	rst 38h			;bbac
	rst 38h			;bbad
	rst 38h			;bbae
	rst 38h			;bbaf
	rst 38h			;bbb0
	rst 38h			;bbb1
	rst 38h			;bbb2
	rst 38h			;bbb3
	rst 38h			;bbb4
	rst 38h			;bbb5
	rst 38h			;bbb6
	rst 38h			;bbb7
	rst 38h			;bbb8
	rst 38h			;bbb9
	rst 38h			;bbba
	rst 38h			;bbbb
	rst 38h			;bbbc
	rst 38h			;bbbd
	rst 38h			;bbbe
	rst 38h			;bbbf
	rst 38h			;bbc0
	rst 38h			;bbc1
	rst 38h			;bbc2
	rst 38h			;bbc3
	rst 38h			;bbc4
	rst 38h			;bbc5
	rst 38h			;bbc6
	rst 38h			;bbc7
	rst 38h			;bbc8
	rst 38h			;bbc9
	rst 38h			;bbca
	rst 38h			;bbcb
	rst 38h			;bbcc
	rst 38h			;bbcd
	rst 38h			;bbce
	rst 38h			;bbcf
	rst 38h			;bbd0
	rst 38h			;bbd1
	rst 38h			;bbd2
	rst 38h			;bbd3
	rst 38h			;bbd4
	rst 38h			;bbd5
	rst 38h			;bbd6
	rst 38h			;bbd7
	rst 38h			;bbd8
	rst 38h			;bbd9
	rst 38h			;bbda
	rst 38h			;bbdb
	rst 38h			;bbdc
	rst 38h			;bbdd
	rst 38h			;bbde
	rst 38h			;bbdf
	rst 38h			;bbe0
	rst 38h			;bbe1
	rst 38h			;bbe2
	rst 38h			;bbe3
	rst 38h			;bbe4
	rst 38h			;bbe5
	rst 38h			;bbe6
	rst 38h			;bbe7
	rst 38h			;bbe8
	rst 38h			;bbe9
	rst 38h			;bbea
	rst 38h			;bbeb
	rst 38h			;bbec
	rst 38h			;bbed
	rst 38h			;bbee
	rst 38h			;bbef
	rst 38h			;bbf0
	rst 38h			;bbf1
	rst 38h			;bbf2
	rst 38h			;bbf3
	rst 38h			;bbf4
	rst 38h			;bbf5
	rst 38h			;bbf6
	rst 38h			;bbf7
	rst 38h			;bbf8
	rst 38h			;bbf9
	rst 38h			;bbfa
	rst 38h			;bbfb
	rst 38h			;bbfc
	rst 38h			;bbfd
	rst 38h			;bbfe
	rst 38h			;bbff
	rst 38h			;bc00
	rst 38h			;bc01
	rst 38h			;bc02
	rst 38h			;bc03
	rst 38h			;bc04
	rst 38h			;bc05
	rst 38h			;bc06
	rst 38h			;bc07
	rst 38h			;bc08
	rst 38h			;bc09
	rst 38h			;bc0a
	rst 38h			;bc0b
	rst 38h			;bc0c
	rst 38h			;bc0d
	rst 38h			;bc0e
	rst 38h			;bc0f
	rst 38h			;bc10
	rst 38h			;bc11
	rst 38h			;bc12
	rst 38h			;bc13
	rst 38h			;bc14
	rst 38h			;bc15
	rst 38h			;bc16
	rst 38h			;bc17
	rst 38h			;bc18
	rst 38h			;bc19
	rst 38h			;bc1a
	rst 38h			;bc1b
	rst 38h			;bc1c
	rst 38h			;bc1d
	rst 38h			;bc1e
	rst 38h			;bc1f
	rst 38h			;bc20
	rst 38h			;bc21
	rst 38h			;bc22
	rst 38h			;bc23
	rst 38h			;bc24
	rst 38h			;bc25
	rst 38h			;bc26
	rst 38h			;bc27
	rst 38h			;bc28
	rst 38h			;bc29
	rst 38h			;bc2a
	rst 38h			;bc2b
	rst 38h			;bc2c
	rst 38h			;bc2d
	rst 38h			;bc2e
	rst 38h			;bc2f
	rst 38h			;bc30
	rst 38h			;bc31
	rst 38h			;bc32
	rst 38h			;bc33
	rst 38h			;bc34
	rst 38h			;bc35
	rst 38h			;bc36
	rst 38h			;bc37
	rst 38h			;bc38
	rst 38h			;bc39
	rst 38h			;bc3a
	rst 38h			;bc3b
	rst 38h			;bc3c
	rst 38h			;bc3d
	rst 38h			;bc3e
	rst 38h			;bc3f
	rst 38h			;bc40
	rst 38h			;bc41
	rst 38h			;bc42
	rst 38h			;bc43
	rst 38h			;bc44
	rst 38h			;bc45
	rst 38h			;bc46
	rst 38h			;bc47
	rst 38h			;bc48
	rst 38h			;bc49
	rst 38h			;bc4a
	rst 38h			;bc4b
	rst 38h			;bc4c
	rst 38h			;bc4d
	rst 38h			;bc4e
	rst 38h			;bc4f
	rst 38h			;bc50
	rst 38h			;bc51
	rst 38h			;bc52
	rst 38h			;bc53
	rst 38h			;bc54
	rst 38h			;bc55
	rst 38h			;bc56
	rst 38h			;bc57
	rst 38h			;bc58
	rst 38h			;bc59
	rst 38h			;bc5a
	rst 38h			;bc5b
	rst 38h			;bc5c
	rst 38h			;bc5d
	rst 38h			;bc5e
	rst 38h			;bc5f
	rst 38h			;bc60
	rst 38h			;bc61
	rst 38h			;bc62
	rst 38h			;bc63
	rst 38h			;bc64
	rst 38h			;bc65
	rst 38h			;bc66
	rst 38h			;bc67
	rst 38h			;bc68
	rst 38h			;bc69
	rst 38h			;bc6a
	rst 38h			;bc6b
	rst 38h			;bc6c
	rst 38h			;bc6d
	rst 38h			;bc6e
	rst 38h			;bc6f
	rst 38h			;bc70
	rst 38h			;bc71
	rst 38h			;bc72
	rst 38h			;bc73
	rst 38h			;bc74
	rst 38h			;bc75
	rst 38h			;bc76
	rst 38h			;bc77
	rst 38h			;bc78
	rst 38h			;bc79
	rst 38h			;bc7a
	rst 38h			;bc7b
	rst 38h			;bc7c
	rst 38h			;bc7d
	rst 38h			;bc7e
	rst 38h			;bc7f
	rst 38h			;bc80
	rst 38h			;bc81
	rst 38h			;bc82
	rst 38h			;bc83
	rst 38h			;bc84
	rst 38h			;bc85
	rst 38h			;bc86
	rst 38h			;bc87
	rst 38h			;bc88
	rst 38h			;bc89
	rst 38h			;bc8a
	rst 38h			;bc8b
	rst 38h			;bc8c
	rst 38h			;bc8d
	rst 38h			;bc8e
	rst 38h			;bc8f
	rst 38h			;bc90
	rst 38h			;bc91
	rst 38h			;bc92
	rst 38h			;bc93
	rst 38h			;bc94
	rst 38h			;bc95
	rst 38h			;bc96
	rst 38h			;bc97
	rst 38h			;bc98
	rst 38h			;bc99
	rst 38h			;bc9a
	rst 38h			;bc9b
	rst 38h			;bc9c
	rst 38h			;bc9d
	rst 38h			;bc9e
	rst 38h			;bc9f
	rst 38h			;bca0
	rst 38h			;bca1
	rst 38h			;bca2
	rst 38h			;bca3
	rst 38h			;bca4
	rst 38h			;bca5
	rst 38h			;bca6
	rst 38h			;bca7
	rst 38h			;bca8
	rst 38h			;bca9
	rst 38h			;bcaa
	rst 38h			;bcab
	rst 38h			;bcac
	rst 38h			;bcad
	rst 38h			;bcae
	rst 38h			;bcaf
	rst 38h			;bcb0
	rst 38h			;bcb1
	rst 38h			;bcb2
	rst 38h			;bcb3
	rst 38h			;bcb4
	rst 38h			;bcb5
	rst 38h			;bcb6
	rst 38h			;bcb7
	rst 38h			;bcb8
	rst 38h			;bcb9
	rst 38h			;bcba
	rst 38h			;bcbb
	rst 38h			;bcbc
	rst 38h			;bcbd
	rst 38h			;bcbe
	rst 38h			;bcbf
	rst 38h			;bcc0
	rst 38h			;bcc1
	rst 38h			;bcc2
	rst 38h			;bcc3
	rst 38h			;bcc4
	rst 38h			;bcc5
	rst 38h			;bcc6
	rst 38h			;bcc7
	rst 38h			;bcc8
	rst 38h			;bcc9
	rst 38h			;bcca
	rst 38h			;bccb
	rst 38h			;bccc
	rst 38h			;bccd
	rst 38h			;bcce
	rst 38h			;bccf
	rst 38h			;bcd0
	rst 38h			;bcd1
	rst 38h			;bcd2
	rst 38h			;bcd3
	rst 38h			;bcd4
	rst 38h			;bcd5
	rst 38h			;bcd6
	rst 38h			;bcd7
	rst 38h			;bcd8
	rst 38h			;bcd9
	rst 38h			;bcda
	rst 38h			;bcdb
	rst 38h			;bcdc
	rst 38h			;bcdd
	rst 38h			;bcde
	rst 38h			;bcdf
	rst 38h			;bce0
	rst 38h			;bce1
	rst 38h			;bce2
	rst 38h			;bce3
	rst 38h			;bce4
	rst 38h			;bce5
	rst 38h			;bce6
	rst 38h			;bce7
	rst 38h			;bce8
	rst 38h			;bce9
	rst 38h			;bcea
	rst 38h			;bceb
	rst 38h			;bcec
	rst 38h			;bced
	rst 38h			;bcee
	rst 38h			;bcef
	rst 38h			;bcf0
	rst 38h			;bcf1
	rst 38h			;bcf2
	rst 38h			;bcf3
	rst 38h			;bcf4
	rst 38h			;bcf5
	rst 38h			;bcf6
	rst 38h			;bcf7
	rst 38h			;bcf8
	rst 38h			;bcf9
	rst 38h			;bcfa
	rst 38h			;bcfb
	rst 38h			;bcfc
	rst 38h			;bcfd
	rst 38h			;bcfe
	rst 38h			;bcff
	rst 38h			;bd00
	rst 38h			;bd01
	rst 38h			;bd02
	rst 38h			;bd03
	rst 38h			;bd04
	rst 38h			;bd05
	rst 38h			;bd06
	rst 38h			;bd07
	rst 38h			;bd08
	rst 38h			;bd09
	rst 38h			;bd0a
	rst 38h			;bd0b
	rst 38h			;bd0c
	rst 38h			;bd0d
	rst 38h			;bd0e
	rst 38h			;bd0f
	rst 38h			;bd10
	rst 38h			;bd11
	rst 38h			;bd12
	rst 38h			;bd13
	rst 38h			;bd14
	rst 38h			;bd15
	rst 38h			;bd16
	rst 38h			;bd17
	rst 38h			;bd18
	rst 38h			;bd19
	rst 38h			;bd1a
	rst 38h			;bd1b
	rst 38h			;bd1c
	rst 38h			;bd1d
	rst 38h			;bd1e
	rst 38h			;bd1f
	rst 38h			;bd20
	rst 38h			;bd21
	rst 38h			;bd22
	rst 38h			;bd23
	rst 38h			;bd24
	rst 38h			;bd25
	rst 38h			;bd26
	rst 38h			;bd27
	rst 38h			;bd28
	rst 38h			;bd29
	rst 38h			;bd2a
	rst 38h			;bd2b
	rst 38h			;bd2c
	rst 38h			;bd2d
	rst 38h			;bd2e
	rst 38h			;bd2f
	rst 38h			;bd30
	rst 38h			;bd31
	rst 38h			;bd32
	rst 38h			;bd33
	rst 38h			;bd34
	rst 38h			;bd35
	rst 38h			;bd36
	rst 38h			;bd37
	rst 38h			;bd38
	rst 38h			;bd39
	rst 38h			;bd3a
	rst 38h			;bd3b
	rst 38h			;bd3c
	rst 38h			;bd3d
	rst 38h			;bd3e
	rst 38h			;bd3f
	rst 38h			;bd40
	rst 38h			;bd41
	rst 38h			;bd42
	rst 38h			;bd43
	rst 38h			;bd44
	rst 38h			;bd45
	rst 38h			;bd46
	rst 38h			;bd47
	rst 38h			;bd48
	rst 38h			;bd49
	rst 38h			;bd4a
	rst 38h			;bd4b
	rst 38h			;bd4c
	rst 38h			;bd4d
	rst 38h			;bd4e
	rst 38h			;bd4f
	rst 38h			;bd50
	rst 38h			;bd51
	rst 38h			;bd52
	rst 38h			;bd53
	rst 38h			;bd54
	rst 38h			;bd55
	rst 38h			;bd56
	rst 38h			;bd57
	rst 38h			;bd58
	rst 38h			;bd59
	rst 38h			;bd5a
	rst 38h			;bd5b
	rst 38h			;bd5c
	rst 38h			;bd5d
	rst 38h			;bd5e
	rst 38h			;bd5f
	rst 38h			;bd60
	rst 38h			;bd61
	rst 38h			;bd62
	rst 38h			;bd63
	rst 38h			;bd64
	rst 38h			;bd65
	rst 38h			;bd66
	rst 38h			;bd67
	rst 38h			;bd68
	rst 38h			;bd69
	rst 38h			;bd6a
	rst 38h			;bd6b
	rst 38h			;bd6c
	rst 38h			;bd6d
	rst 38h			;bd6e
	rst 38h			;bd6f
	rst 38h			;bd70
	rst 38h			;bd71
	rst 38h			;bd72
	rst 38h			;bd73
	rst 38h			;bd74
	rst 38h			;bd75
	rst 38h			;bd76
	rst 38h			;bd77
	rst 38h			;bd78
	rst 38h			;bd79
	rst 38h			;bd7a
	rst 38h			;bd7b
	rst 38h			;bd7c
	rst 38h			;bd7d
	rst 38h			;bd7e
	rst 38h			;bd7f
	rst 38h			;bd80
	rst 38h			;bd81
	rst 38h			;bd82
	rst 38h			;bd83
	rst 38h			;bd84
	rst 38h			;bd85
	rst 38h			;bd86
	rst 38h			;bd87
	rst 38h			;bd88
	rst 38h			;bd89
	rst 38h			;bd8a
	rst 38h			;bd8b
	rst 38h			;bd8c
	rst 38h			;bd8d
	rst 38h			;bd8e
	rst 38h			;bd8f
	rst 38h			;bd90
	rst 38h			;bd91
	rst 38h			;bd92
	rst 38h			;bd93
	rst 38h			;bd94
	rst 38h			;bd95
	rst 38h			;bd96
	rst 38h			;bd97
	rst 38h			;bd98
	rst 38h			;bd99
	rst 38h			;bd9a
	rst 38h			;bd9b
	rst 38h			;bd9c
	rst 38h			;bd9d
	rst 38h			;bd9e
	rst 38h			;bd9f
	rst 38h			;bda0
	rst 38h			;bda1
	rst 38h			;bda2
	rst 38h			;bda3
	rst 38h			;bda4
	rst 38h			;bda5
	rst 38h			;bda6
	rst 38h			;bda7
	rst 38h			;bda8
	rst 38h			;bda9
	rst 38h			;bdaa
	rst 38h			;bdab
	rst 38h			;bdac
	rst 38h			;bdad
	rst 38h			;bdae
	rst 38h			;bdaf
	rst 38h			;bdb0
	rst 38h			;bdb1
	rst 38h			;bdb2
	rst 38h			;bdb3
	rst 38h			;bdb4
	rst 38h			;bdb5
	rst 38h			;bdb6
	rst 38h			;bdb7
	rst 38h			;bdb8
	rst 38h			;bdb9
	rst 38h			;bdba
	rst 38h			;bdbb
	rst 38h			;bdbc
	rst 38h			;bdbd
	rst 38h			;bdbe
	rst 38h			;bdbf
	rst 38h			;bdc0
	rst 38h			;bdc1
	rst 38h			;bdc2
	rst 38h			;bdc3
	rst 38h			;bdc4
	rst 38h			;bdc5
	rst 38h			;bdc6
	rst 38h			;bdc7
	rst 38h			;bdc8
	rst 38h			;bdc9
	rst 38h			;bdca
	rst 38h			;bdcb
	rst 38h			;bdcc
	rst 38h			;bdcd
	rst 38h			;bdce
	rst 38h			;bdcf
	rst 38h			;bdd0
	rst 38h			;bdd1
	rst 38h			;bdd2
	rst 38h			;bdd3
	rst 38h			;bdd4
	rst 38h			;bdd5
	rst 38h			;bdd6
	rst 38h			;bdd7
	rst 38h			;bdd8
	rst 38h			;bdd9
	rst 38h			;bdda
	rst 38h			;bddb
	rst 38h			;bddc
	rst 38h			;bddd
	rst 38h			;bdde
	rst 38h			;bddf
	rst 38h			;bde0
	rst 38h			;bde1
	rst 38h			;bde2
	rst 38h			;bde3
	rst 38h			;bde4
	rst 38h			;bde5
	rst 38h			;bde6
	rst 38h			;bde7
	rst 38h			;bde8
	rst 38h			;bde9
	rst 38h			;bdea
	rst 38h			;bdeb
	rst 38h			;bdec
	rst 38h			;bded
	rst 38h			;bdee
	rst 38h			;bdef
	rst 38h			;bdf0
	rst 38h			;bdf1
	rst 38h			;bdf2
	rst 38h			;bdf3
	rst 38h			;bdf4
	rst 38h			;bdf5
	rst 38h			;bdf6
	rst 38h			;bdf7
	rst 38h			;bdf8
	rst 38h			;bdf9
	rst 38h			;bdfa
	rst 38h			;bdfb
	rst 38h			;bdfc
	rst 38h			;bdfd
	rst 38h			;bdfe
	rst 38h			;bdff
	rst 38h			;be00
	rst 38h			;be01
	rst 38h			;be02
	rst 38h			;be03
	rst 38h			;be04
	rst 38h			;be05
	rst 38h			;be06
	rst 38h			;be07
	rst 38h			;be08
	rst 38h			;be09
	rst 38h			;be0a
	rst 38h			;be0b
	rst 38h			;be0c
	rst 38h			;be0d
	rst 38h			;be0e
	rst 38h			;be0f
	rst 38h			;be10
	rst 38h			;be11
	rst 38h			;be12
	rst 38h			;be13
	rst 38h			;be14
	rst 38h			;be15
	rst 38h			;be16
	rst 38h			;be17
	rst 38h			;be18
	rst 38h			;be19
	rst 38h			;be1a
	rst 38h			;be1b
	rst 38h			;be1c
	rst 38h			;be1d
	rst 38h			;be1e
	rst 38h			;be1f
	rst 38h			;be20
	rst 38h			;be21
	rst 38h			;be22
	rst 38h			;be23
	rst 38h			;be24
	rst 38h			;be25
	rst 38h			;be26
	rst 38h			;be27
	rst 38h			;be28
	rst 38h			;be29
	rst 38h			;be2a
	rst 38h			;be2b
	rst 38h			;be2c
	rst 38h			;be2d
	rst 38h			;be2e
	rst 38h			;be2f
	rst 38h			;be30
	rst 38h			;be31
	rst 38h			;be32
	rst 38h			;be33
	rst 38h			;be34
	rst 38h			;be35
	rst 38h			;be36
	rst 38h			;be37
	rst 38h			;be38
	rst 38h			;be39
	rst 38h			;be3a
	rst 38h			;be3b
	rst 38h			;be3c
	rst 38h			;be3d
	rst 38h			;be3e
	rst 38h			;be3f
	rst 38h			;be40
	rst 38h			;be41
	rst 38h			;be42
	rst 38h			;be43
	rst 38h			;be44
	rst 38h			;be45
	rst 38h			;be46
	rst 38h			;be47
	rst 38h			;be48
	rst 38h			;be49
	rst 38h			;be4a
	rst 38h			;be4b
	rst 38h			;be4c
	rst 38h			;be4d
	rst 38h			;be4e
	rst 38h			;be4f
	rst 38h			;be50
	rst 38h			;be51
	rst 38h			;be52
	rst 38h			;be53
	rst 38h			;be54
	rst 38h			;be55
	rst 38h			;be56
	rst 38h			;be57
	rst 38h			;be58
	rst 38h			;be59
	rst 38h			;be5a
	rst 38h			;be5b
	rst 38h			;be5c
	rst 38h			;be5d
	rst 38h			;be5e
	rst 38h			;be5f
	rst 38h			;be60
	rst 38h			;be61
	rst 38h			;be62
	rst 38h			;be63
	rst 38h			;be64
	rst 38h			;be65
	rst 38h			;be66
	rst 38h			;be67
	rst 38h			;be68
	rst 38h			;be69
	rst 38h			;be6a
	rst 38h			;be6b
	rst 38h			;be6c
	rst 38h			;be6d
	rst 38h			;be6e
	rst 38h			;be6f
	rst 38h			;be70
	rst 38h			;be71
	rst 38h			;be72
	rst 38h			;be73
	rst 38h			;be74
	rst 38h			;be75
	rst 38h			;be76
	rst 38h			;be77
	rst 38h			;be78
	rst 38h			;be79
	rst 38h			;be7a
	rst 38h			;be7b
	rst 38h			;be7c
	rst 38h			;be7d
	rst 38h			;be7e
	rst 38h			;be7f
	rst 38h			;be80
	rst 38h			;be81
	rst 38h			;be82
	rst 38h			;be83
	rst 38h			;be84
	rst 38h			;be85
	rst 38h			;be86
	rst 38h			;be87
	rst 38h			;be88
	rst 38h			;be89
	rst 38h			;be8a
	rst 38h			;be8b
	rst 38h			;be8c
	rst 38h			;be8d
	rst 38h			;be8e
	rst 38h			;be8f
	rst 38h			;be90
	rst 38h			;be91
	rst 38h			;be92
	rst 38h			;be93
	rst 38h			;be94
	rst 38h			;be95
	rst 38h			;be96
	rst 38h			;be97
	rst 38h			;be98
	rst 38h			;be99
	rst 38h			;be9a
	rst 38h			;be9b
	rst 38h			;be9c
	rst 38h			;be9d
	rst 38h			;be9e
	rst 38h			;be9f
	rst 38h			;bea0
	rst 38h			;bea1
	rst 38h			;bea2
	rst 38h			;bea3
	rst 38h			;bea4
	rst 38h			;bea5
	rst 38h			;bea6
	rst 38h			;bea7
	rst 38h			;bea8
	rst 38h			;bea9
	rst 38h			;beaa
	rst 38h			;beab
	rst 38h			;beac
	rst 38h			;bead
	rst 38h			;beae
	rst 38h			;beaf
	rst 38h			;beb0
	rst 38h			;beb1
	rst 38h			;beb2
	rst 38h			;beb3
	rst 38h			;beb4
	rst 38h			;beb5
	rst 38h			;beb6
	rst 38h			;beb7
	rst 38h			;beb8
	rst 38h			;beb9
	rst 38h			;beba
	rst 38h			;bebb
	rst 38h			;bebc
	rst 38h			;bebd
	rst 38h			;bebe
	rst 38h			;bebf
	rst 38h			;bec0
	rst 38h			;bec1
	rst 38h			;bec2
	rst 38h			;bec3
	rst 38h			;bec4
	rst 38h			;bec5
	rst 38h			;bec6
	rst 38h			;bec7
	rst 38h			;bec8
	rst 38h			;bec9
	rst 38h			;beca
	rst 38h			;becb
	rst 38h			;becc
	rst 38h			;becd
	rst 38h			;bece
	rst 38h			;becf
	rst 38h			;bed0
	rst 38h			;bed1
	rst 38h			;bed2
	rst 38h			;bed3
	rst 38h			;bed4
	rst 38h			;bed5
	rst 38h			;bed6
	rst 38h			;bed7
	rst 38h			;bed8
	rst 38h			;bed9
	rst 38h			;beda
	rst 38h			;bedb
	rst 38h			;bedc
	rst 38h			;bedd
	rst 38h			;bede
	rst 38h			;bedf
	rst 38h			;bee0
	rst 38h			;bee1
	rst 38h			;bee2
	rst 38h			;bee3
	rst 38h			;bee4
	rst 38h			;bee5
	rst 38h			;bee6
	rst 38h			;bee7
	rst 38h			;bee8
	rst 38h			;bee9
	rst 38h			;beea
	rst 38h			;beeb
	rst 38h			;beec
	rst 38h			;beed
	rst 38h			;beee
	rst 38h			;beef
	rst 38h			;bef0
	rst 38h			;bef1
	rst 38h			;bef2
	rst 38h			;bef3
	rst 38h			;bef4
	rst 38h			;bef5
	rst 38h			;bef6
	rst 38h			;bef7
	rst 38h			;bef8
	rst 38h			;bef9
	rst 38h			;befa
	rst 38h			;befb
	rst 38h			;befc
	rst 38h			;befd
	rst 38h			;befe
	rst 38h			;beff
	rst 38h			;bf00
	rst 38h			;bf01
	rst 38h			;bf02
	rst 38h			;bf03
	rst 38h			;bf04
	rst 38h			;bf05
	rst 38h			;bf06
	rst 38h			;bf07
	rst 38h			;bf08
	rst 38h			;bf09
	rst 38h			;bf0a
	rst 38h			;bf0b
	rst 38h			;bf0c
	rst 38h			;bf0d
	rst 38h			;bf0e
	rst 38h			;bf0f
	rst 38h			;bf10
	rst 38h			;bf11
	rst 38h			;bf12
	rst 38h			;bf13
	rst 38h			;bf14
	rst 38h			;bf15
	rst 38h			;bf16
	rst 38h			;bf17
	rst 38h			;bf18
	rst 38h			;bf19
	rst 38h			;bf1a
	rst 38h			;bf1b
	rst 38h			;bf1c
	rst 38h			;bf1d
	rst 38h			;bf1e
	rst 38h			;bf1f
	rst 38h			;bf20
	rst 38h			;bf21
	rst 38h			;bf22
	rst 38h			;bf23
	rst 38h			;bf24
	rst 38h			;bf25
	rst 38h			;bf26
	rst 38h			;bf27
	rst 38h			;bf28
	rst 38h			;bf29
	rst 38h			;bf2a
	rst 38h			;bf2b
	rst 38h			;bf2c
	rst 38h			;bf2d
	rst 38h			;bf2e
	rst 38h			;bf2f
	rst 38h			;bf30
	rst 38h			;bf31
	rst 38h			;bf32
	rst 38h			;bf33
	rst 38h			;bf34
	rst 38h			;bf35
	rst 38h			;bf36
	rst 38h			;bf37
	rst 38h			;bf38
	rst 38h			;bf39
	rst 38h			;bf3a
	rst 38h			;bf3b
	rst 38h			;bf3c
	rst 38h			;bf3d
	rst 38h			;bf3e
	rst 38h			;bf3f
	rst 38h			;bf40
	rst 38h			;bf41
	rst 38h			;bf42
	rst 38h			;bf43
	rst 38h			;bf44
	rst 38h			;bf45
	rst 38h			;bf46
	rst 38h			;bf47
	rst 38h			;bf48
	rst 38h			;bf49
	rst 38h			;bf4a
	rst 38h			;bf4b
	rst 38h			;bf4c
	rst 38h			;bf4d
	rst 38h			;bf4e
	rst 38h			;bf4f
	rst 38h			;bf50
	rst 38h			;bf51
	rst 38h			;bf52
	rst 38h			;bf53
	rst 38h			;bf54
	rst 38h			;bf55
	rst 38h			;bf56
	rst 38h			;bf57
	rst 38h			;bf58
	rst 38h			;bf59
	rst 38h			;bf5a
	rst 38h			;bf5b
	rst 38h			;bf5c
	rst 38h			;bf5d
	rst 38h			;bf5e
	rst 38h			;bf5f
	rst 38h			;bf60
	rst 38h			;bf61
	rst 38h			;bf62
	rst 38h			;bf63
	rst 38h			;bf64
	rst 38h			;bf65
	rst 38h			;bf66
	rst 38h			;bf67
	rst 38h			;bf68
	rst 38h			;bf69
	rst 38h			;bf6a
	rst 38h			;bf6b
	rst 38h			;bf6c
	rst 38h			;bf6d
	rst 38h			;bf6e
	rst 38h			;bf6f
	rst 38h			;bf70
	rst 38h			;bf71
	rst 38h			;bf72
	rst 38h			;bf73
	rst 38h			;bf74
	rst 38h			;bf75
	rst 38h			;bf76
	rst 38h			;bf77
	rst 38h			;bf78
	rst 38h			;bf79
	rst 38h			;bf7a
	rst 38h			;bf7b
	rst 38h			;bf7c
	rst 38h			;bf7d
	rst 38h			;bf7e
	rst 38h			;bf7f
	rst 38h			;bf80
	rst 38h			;bf81
	rst 38h			;bf82
	rst 38h			;bf83
	rst 38h			;bf84
	rst 38h			;bf85
	rst 38h			;bf86
	rst 38h			;bf87
	rst 38h			;bf88
	rst 38h			;bf89
	rst 38h			;bf8a
	rst 38h			;bf8b
	rst 38h			;bf8c
	rst 38h			;bf8d
	rst 38h			;bf8e
	rst 38h			;bf8f
	rst 38h			;bf90
	rst 38h			;bf91
	rst 38h			;bf92
	rst 38h			;bf93
	rst 38h			;bf94
	rst 38h			;bf95
	rst 38h			;bf96
	rst 38h			;bf97
	rst 38h			;bf98
	rst 38h			;bf99
	rst 38h			;bf9a
	rst 38h			;bf9b
	rst 38h			;bf9c
	rst 38h			;bf9d
	rst 38h			;bf9e
	rst 38h			;bf9f
	rst 38h			;bfa0
	rst 38h			;bfa1
	rst 38h			;bfa2
	rst 38h			;bfa3
	rst 38h			;bfa4
	rst 38h			;bfa5
	rst 38h			;bfa6
	rst 38h			;bfa7
	rst 38h			;bfa8
	rst 38h			;bfa9
	rst 38h			;bfaa
	rst 38h			;bfab
	rst 38h			;bfac
	rst 38h			;bfad
	rst 38h			;bfae
	rst 38h			;bfaf
	rst 38h			;bfb0
	rst 38h			;bfb1
	rst 38h			;bfb2
	rst 38h			;bfb3
	rst 38h			;bfb4
	rst 38h			;bfb5
	rst 38h			;bfb6
	rst 38h			;bfb7
	rst 38h			;bfb8
	rst 38h			;bfb9
	rst 38h			;bfba
	rst 38h			;bfbb
	rst 38h			;bfbc
	rst 38h			;bfbd
	rst 38h			;bfbe
	rst 38h			;bfbf
	rst 38h			;bfc0
	rst 38h			;bfc1
	rst 38h			;bfc2
	rst 38h			;bfc3
	rst 38h			;bfc4
	rst 38h			;bfc5
	rst 38h			;bfc6
	rst 38h			;bfc7
	rst 38h			;bfc8
	rst 38h			;bfc9
	rst 38h			;bfca
	rst 38h			;bfcb
	rst 38h			;bfcc
	rst 38h			;bfcd
	rst 38h			;bfce
	rst 38h			;bfcf
	rst 38h			;bfd0
	rst 38h			;bfd1
	rst 38h			;bfd2
	rst 38h			;bfd3
	rst 38h			;bfd4
	rst 38h			;bfd5
	rst 38h			;bfd6
	rst 38h			;bfd7
	rst 38h			;bfd8
	rst 38h			;bfd9
	rst 38h			;bfda
	rst 38h			;bfdb
	rst 38h			;bfdc
	rst 38h			;bfdd
	rst 38h			;bfde
	rst 38h			;bfdf
	rst 38h			;bfe0
	rst 38h			;bfe1
	rst 38h			;bfe2
	rst 38h			;bfe3
	rst 38h			;bfe4
	rst 38h			;bfe5
	rst 38h			;bfe6
	rst 38h			;bfe7
	rst 38h			;bfe8
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

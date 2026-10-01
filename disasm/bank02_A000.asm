; z80dasm 1.2.0
; command line: z80dasm -a -l -g 0xA000 -o /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/disasm/bank02_A000.asm /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/banks/bank02.bin

	org 0a000h

	jp 0801bh		;a000
	jp 08224h		;a003
	jp 0878ah		;a006
	jp 08f11h		;a009
	jp 08f64h		;a00c
	jp 08fc5h		;a00f
	jp 08238h		;a012
	jp 0828ah		;a015
	jp 08220h		;a018
	call 08031h		;a01b
	call 082b4h		;a01e
	ld a,(0c907h)		;a021
	and 010h		;a024
	call nz,08599h		;a026
	ld a,(0ca43h)		;a029
	or a			;a02c
	call z,084f6h		;a02d
	ret			;a030
	call 08060h		;a031
	ld a,(ix+001h)		;a034
	or a			;a037
	jp z,077d0h		;a038
	call 07747h		;a03b
	ld a,(0c0ech)		;a03e
	or a			;a041
	ret z			;a042
	call 077d0h		;a043
	xor a			;a046
	ld (0c0ech),a		;a047
	ld (ix+019h),a		;a04a
	ld (ix+01ah),a		;a04d
	ld (ix+01bh),a		;a050
	ld (ix+01ch),a		;a053
	ld (ix+01dh),a		;a056
	ld (ix+01eh),a		;a059
	ld (ix+01fh),a		;a05c
	ret			;a05f
	ld ix,0ca40h		;a060
	ld a,(0ce75h)		;a064
	or a			;a067
	ret nz			;a068
	ld a,(ix+001h)		;a069
	dec a			;a06c
	jr z,la0dah		;a06d
	dec a			;a06f
	jr z,la0efh		;a070
	call 080f4h		;a072
	call 0820dh		;a075
	call 08108h		;a078
	ld a,(0ca03h)		;a07b
	rrca			;a07e
	ret c			;a07f
	ld a,(0ce76h)		;a080
	or a			;a083
	ret nz			;a084
	ld a,(0ce75h)		;a085
	or a			;a088
	ret nz			;a089
	ld a,(ix+018h)		;a08a
	or a			;a08d
	jr z,la099h		;a08e
	dec a			;a090
	ld (ix+018h),a		;a091
	ld (ix+004h),000h	;a094
	ret			;a098
la099h:
	call 07c44h		;a099
	ret			;a09c
	ld (ix+001h),001h	;a09d
	ld (ix+003h),001h	;a0a1
	ld (ix+015h),02dh	;a0a5
	res 7,(ix+014h)		;a0a9
	ld (ix+005h),006h	;a0ad
	xor a			;a0b1
	ld (ix+019h),a		;a0b2
	ld (ix+01ah),a		;a0b5
	ld (ix+01bh),a		;a0b8
	ld (ix+01ch),a		;a0bb
	ld (ix+01dh),a		;a0be
	ld (ix+01eh),a		;a0c1
	ld (ix+01fh),a		;a0c4
	set 3,(ix+015h)		;a0c7
	ld a,04ch		;a0cb
	call 04aebh		;a0cd
	ld hl,0c947h		;a0d0
	set 0,(hl)		;a0d3
	ld (ix+017h),028h	;a0d5
	ret			;a0d9
la0dah:
	ld b,00ah		;a0da
	ld a,(ix+005h)		;a0dc
	inc a			;a0df
	cp b			;a0e0
	jr c,la0e5h		;a0e1
	ld a,006h		;a0e3
la0e5h:
	ld (ix+005h),a		;a0e5
	call 06ad2h		;a0e8
	ret nz			;a0eb
	inc (ix+001h)		;a0ec
la0efh:
	ld (ix+000h),000h	;a0ef
	ret			;a0f3
	ld a,(0cb02h)		;a0f4
	or a			;a0f7
	ret z			;a0f8
	dec a			;a0f9
	ld (0cb02h),a		;a0fa
	ret			;a0fd
la0feh:
	ld hl,00000h		;a0fe
	ld (0ca4bh),hl		;a101
	ld (0ca4dh),hl		;a104
	ret			;a107
	ld a,(0c900h)		;a108
	cp 004h			;a10b
	jr z,la114h		;a10d
	ld a,(0c908h)		;a10f
	jr la117h		;a112
la114h:
	ld a,(0c909h)		;a114
la117h:
	and 00fh		;a117
	ld (0cb18h),a		;a119
	jr z,la0feh		;a11c
	ld e,a			;a11e
	add a,a			;a11f
	add a,a			;a120
	add a,a			;a121
	add a,e			;a122
	ld e,a			;a123
	ld d,000h		;a124
	ld hl,0817dh		;a126
	add hl,de		;a129
	ld a,(hl)		;a12a
	ld (0cb18h),a		;a12b
	inc hl			;a12e
	ld e,(hl)		;a12f
	inc hl			;a130
	ld d,(hl)		;a131
	inc hl			;a132
	ld c,(hl)		;a133
	inc hl			;a134
	ld b,(hl)		;a135
	inc hl			;a136
	ld a,(0cb01h)		;a137
	or a			;a13a
	push af			;a13b
	push hl			;a13c
	ex de,hl		;a13d
	call nz,08177h		;a13e
	ld (0ca4bh),hl		;a141
	ld bc,(0ca47h)		;a144
	add hl,bc		;a148
	ld a,h			;a149
	cp 014h			;a14a
	jr nc,la151h		;a14c
	ld (0ca47h),hl		;a14e
la151h:
	pop hl			;a151
	ld e,(hl)		;a152
	inc hl			;a153
	ld d,(hl)		;a154
	inc hl			;a155
	ld c,(hl)		;a156
	inc hl			;a157
	ld b,(hl)		;a158
	inc hl			;a159
	pop af			;a15a
	ex de,hl		;a15b
	call nz,08177h		;a15c
	ld (0ca4dh),hl		;a15f
	ld bc,(0ca49h)		;a162
	add hl,bc		;a166
	ex de,hl		;a167
	ld hl,0ff80h		;a168
	add hl,de		;a16b
	ld a,h			;a16c
	cp 01dh			;a16d
	jr nc,la175h		;a16f
	ld (0ca49h),de		;a171
la175h:
	or a			;a175
	ret			;a176
	add hl,bc		;a177
	dec a			;a178
	jp nz,08177h		;a179
	ret			;a17c
	nop			;a17d
	nop			;a17e
	nop			;a17f
	nop			;a180
	nop			;a181
	nop			;a182
	nop			;a183
	nop			;a184
	nop			;a185
	rlca			;a186
	add a,b			;a187
	rst 38h			;a188
	ex de,hl		;a189
	rst 38h			;a18a
	nop			;a18b
	nop			;a18c
	nop			;a18d
	nop			;a18e
	inc bc			;a18f
	add a,b			;a190
	nop			;a191
	dec d			;a192
	nop			;a193
	nop			;a194
	nop			;a195
	nop			;a196
	nop			;a197
	nop			;a198
	nop			;a199
	nop			;a19a
	nop			;a19b
	nop			;a19c
	nop			;a19d
	nop			;a19e
	nop			;a19f
	nop			;a1a0
	dec b			;a1a1
	nop			;a1a2
	nop			;a1a3
	nop			;a1a4
	nop			;a1a5
	add a,b			;a1a6
	rst 38h			;a1a7
	ex de,hl		;a1a8
	rst 38h			;a1a9
	ld b,0a0h		;a1aa
	rst 38h			;a1ac
	ret p			;a1ad
	rst 38h			;a1ae
	and b			;a1af
	rst 38h			;a1b0
	ret p			;a1b1
	rst 38h			;a1b2
	inc b			;a1b3
	ld h,b			;a1b4
	nop			;a1b5
	djnz la1b8h		;a1b6
la1b8h:
	and b			;a1b8
	rst 38h			;a1b9
	ret p			;a1ba
	rst 38h			;a1bb
	nop			;a1bc
	nop			;a1bd
	nop			;a1be
	nop			;a1bf
	nop			;a1c0
	add a,b			;a1c1
	rst 38h			;a1c2
	ex de,hl		;a1c3
	rst 38h			;a1c4
	ld bc,00000h		;a1c5
	nop			;a1c8
	nop			;a1c9
	add a,b			;a1ca
	nop			;a1cb
	dec d			;a1cc
	nop			;a1cd
	ex af,af'		;a1ce
	and b			;a1cf
	rst 38h			;a1d0
	ret p			;a1d1
	rst 38h			;a1d2
	ld h,b			;a1d3
	nop			;a1d4
	djnz la1d7h		;a1d5
la1d7h:
	ld (bc),a		;a1d7
	ld h,b			;a1d8
	nop			;a1d9
	djnz la1dch		;a1da
la1dch:
	ld h,b			;a1dc
	nop			;a1dd
	djnz la1e0h		;a1de
la1e0h:
	ld bc,00000h		;a1e0
	nop			;a1e3
	nop			;a1e4
	add a,b			;a1e5
	nop			;a1e6
	dec d			;a1e7
	nop			;a1e8
	nop			;a1e9
	nop			;a1ea
	nop			;a1eb
	nop			;a1ec
	nop			;a1ed
	nop			;a1ee
	nop			;a1ef
	nop			;a1f0
	nop			;a1f1
	rlca			;a1f2
	add a,b			;a1f3
	rst 38h			;a1f4
	ex de,hl		;a1f5
	rst 38h			;a1f6
	nop			;a1f7
	nop			;a1f8
	nop			;a1f9
la1fah:
	nop			;a1fa
	inc bc			;a1fb
	add a,b			;a1fc
	nop			;a1fd
	dec d			;a1fe
	nop			;a1ff
	nop			;a200
	nop			;a201
	nop			;a202
	nop			;a203
	nop			;a204
	nop			;a205
	nop			;a206
	nop			;a207
	nop			;a208
	nop			;a209
	nop			;a20a
	nop			;a20b
	nop			;a20c
	ld a,(0c908h)		;a20d
	ld b,000h		;a210
	and 003h		;a212
	jr z,la21bh		;a214
	inc b			;a216
	rrca			;a217
	jr c,la21bh		;a218
	inc b			;a21a
la21bh:
	ld hl,0ca45h		;a21b
	ld (hl),b		;a21e
	ret			;a21f
	call 08224h		;a220
	ret			;a223
	call 08279h		;a224
	call 0829fh		;a227
	xor a			;a22a
	ld (0c0ech),a		;a22b
	ld (0cb01h),a		;a22e
	ld (0ca19h),a		;a231
	dec a			;a234
	ld (0cb02h),a		;a235
	xor a			;a238
	ld (0cc01h),a		;a239
	ld (0cb1dh),a		;a23c
	call 0828bh		;a23f
	ld hl,0ca40h		;a242
	ld bc,0003fh		;a245
	call 04648h		;a248
	call 08254h		;a24b
	call 083e7h		;a24e
	jp 08704h		;a251
	ld ix,0ca40h		;a254
	ld (ix+000h),001h	;a258
	ld (ix+008h),008h	;a25c
	ld (ix+00ah),005h	;a260
	ld (ix+015h),039h	;a264
	ld (ix+013h),003h	;a268
	ld (ix+014h),003h	;a26c
	ld (ix+018h),00fh	;a270
	set 7,(ix+014h)		;a274
	ret			;a278
	ld hl,0cb40h		;a279
	ld bc,00027h		;a27c
	call 04648h		;a27f
	xor a			;a282
	ld (0cb1ah),a		;a283
	call 084a5h		;a286
	ret			;a289
	ret			;a28a
	ld ix,0cac0h		;a28b
	call 08296h		;a28f
	ld ix,0cae0h		;a292
	ld (ix+019h),000h	;a296
	ld (ix+01ah),000h	;a29a
	ret			;a29e
	xor a			;a29f
	ld (0cb03h),a		;a2a0
	ld hl,0cac0h		;a2a3
	ld bc,0003fh		;a2a6
	call 04648h		;a2a9
	ld bc,0ff80h		;a2ac
	ld (0cb1bh),bc		;a2af
	ret			;a2b3
	call 082c6h		;a2b4
	ld ix,0cac0h		;a2b7
	call 082d2h		;a2bb
	ld ix,0cae0h		;a2be
	call 082d2h		;a2c2
	ret			;a2c5
	ld a,(0ca02h)		;a2c6
	and 003h		;a2c9
	ld (0cac5h),a		;a2cb
	ld (0cae5h),a		;a2ce
	ret			;a2d1
	ld a,(0ca41h)		;a2d2
	or a			;a2d5
	ret nz			;a2d6
	ld a,(ix+000h)		;a2d7
	or a			;a2da
	ret z			;a2db
	call 082e2h		;a2dc
	jp 077d0h		;a2df
	ld a,(ix+001h)		;a2e2
	dec a			;a2e5
	jr z,la320h		;a2e6
	jp p,08320h		;a2e8
	ld bc,00300h		;a2eb
	call 076ffh		;a2ee
	ret nc			;a2f1
	call 0756ch		;a2f2
	call 04612h		;a2f5
	call 0834ch		;a2f8
	ld a,(0cb41h)		;a2fb
	ld c,a			;a2fe
	ld hl,0831ah		;a2ff
	ld a,(0cb05h)		;a302
	bit 7,(ix+018h)		;a305
	jr nz,la30eh		;a309
	ld hl,0831dh		;a30b
la30eh:
	call 04600h		;a30e
	ld a,(hl)		;a311
	ld b,a			;a312
	call 084ach		;a313
	inc (ix+001h)		;a316
	ret			;a319
	ex af,af'		;a31a
	rlca			;a31b
	ld b,002h		;a31c
	inc bc			;a31e
	inc b			;a31f
la320h:
	call 08324h		;a320
	ret			;a323
	ld hl,(0ca49h)		;a324
	ld bc,(0cb1bh)		;a327
	add hl,bc		;a32b
	ld (ix+00ah),h		;a32c
	ld (ix+009h),l		;a32f
	ld hl,(0ca47h)		;a332
	ld bc,000e0h		;a335
	add hl,bc		;a338
	ld b,(ix+018h)		;a339
	ld c,(ix+017h)		;a33c
	add hl,bc		;a33f
	ld (ix+008h),h		;a340
	ld (ix+007h),l		;a343
	ret			;a346
	sra h			;a347
	rr l			;a349
	ret			;a34b
	call 0837ah		;a34c
	jr c,la359h		;a34f
	xor h			;a351
	bit 7,a			;a352
	jr nz,la359h		;a354
	ld a,h			;a356
	cpl			;a357
	ld h,a			;a358
la359h:
	bit 7,h			;a359
	jr z,la361h		;a35b
	set 7,(ix+010h)		;a35d
la361h:
	bit 7,(ix+010h)		;a361
	push af			;a365
	ld a,(ix+003h)		;a366
	ld de,0839ch		;a369
	call 04624h		;a36c
	pop af			;a36f
	call nz,04612h		;a370
	ld (ix+018h),h		;a373
	ld (ix+017h),l		;a376
	ret			;a379
	ld iy,0cac0h		;a37a
	call 08392h		;a37e
	jr nz,la38eh		;a381
	ld iy,0cae0h		;a383
	call 08392h		;a387
	jr nz,la38eh		;a38a
	scf			;a38c
	ret			;a38d
la38eh:
	ld a,(iy+018h)		;a38e
	ret			;a391
	ld a,(iy+000h)		;a392
	or a			;a395
	ret z			;a396
	ld a,(iy+001h)		;a397
	or a			;a39a
	ret			;a39b
	add a,b			;a39c
	ld (bc),a		;a39d
	nop			;a39e
	inc bc			;a39f
	nop			;a3a0
	inc b			;a3a1
	nop			;a3a2
	dec b			;a3a3
	ld a,(iy+003h)		;a3a4
	ld (0cb1ah),a		;a3a7
	push iy			;a3aa
	call 083b2h		;a3ac
	pop iy			;a3af
	ret			;a3b1
	call 083b8h		;a3b2
	jp 083e7h		;a3b5
	ld a,(0cb1ah)		;a3b8
	cp 00ah			;a3bb
	call z,0843dh		;a3bd
	cp 002h			;a3c0
	jp z,08479h		;a3c2
	cp 00ch			;a3c5
	call z,08437h		;a3c7
	cp 003h			;a3ca
	jp z,08443h		;a3cc
	cp 00bh			;a3cf
	jp z,08457h		;a3d1
	cp 00dh			;a3d4
	jp z,0844bh		;a3d6
	cp 007h			;a3d9
	jp z,0845dh		;a3db
	cp 00eh			;a3de
	jp z,08470h		;a3e0
	call 084ddh		;a3e3
	ret			;a3e6
	ld c,000h		;a3e7
	ld ix,0cb40h		;a3e9
	ld b,005h		;a3ed
la3efh:
	ld a,(ix+000h)		;a3ef
	or a			;a3f2
	jr z,la406h		;a3f3
	ld a,(ix+001h)		;a3f5
	dec a			;a3f8
	cp 00ah			;a3f9
	jr nc,la406h		;a3fb
	ld hl,0842dh		;a3fd
	call 04600h		;a400
	ld a,(hl)		;a403
	add a,c			;a404
la405h:
	ld c,a			;a405
la406h:
	ld de,00008h		;a406
	add ix,de		;a409
	djnz la3efh		;a40b
	ld a,c			;a40d
	and 0f0h		;a40e
	rrca			;a410
	rrca			;a411
	rrca			;a412
	rrca			;a413
	ld c,a			;a414
	ld a,(0ca04h)		;a415
	add a,a			;a418
	add a,a			;a419
	add a,c			;a41a
	ld c,a			;a41b
	ld a,(0cb08h)		;a41c
	call 04e79h		;a41f
	add a,c			;a422
	cp 010h			;a423
	jr c,la429h		;a425
	ld a,00fh		;a427
la429h:
	ld (0ca19h),a		;a429
	ret			;a42c
	djnz $+10		;a42d
	jr nz,$+18		;a42f
	nop			;a431
	nop			;a432
	nop			;a433
	nop			;a434
	nop			;a435
	jr la405h		;a436
	ld d,087h		;a438
	ld a,001h		;a43a
	ret			;a43c
	call 0871ah		;a43d
	ld a,00ah		;a440
	ret			;a442
	ld b,080h		;a443
	ld c,003h		;a445
	jp 084ach		;a447
	ret			;a44a
	ld a,00ah		;a44b
	call 04af5h		;a44d
	ret			;a450
	ld a,00fh		;a451
	call 04af5h		;a453
	ret			;a456
	ld a,001h		;a457
	ld (0cb1dh),a		;a459
	ret			;a45c
	ld a,(ix+017h)		;a45d
	cpl			;a460
	push af			;a461
	call 06f8ch		;a462
	jp c,0469fh		;a465
	pop af			;a468
	ld (ix+001h),002h	;a469
	jp 082f8h		;a46d
	call 08484h		;a470
	ld a,00ah		;a473
	call 04af5h		;a475
	ret			;a478
	ld a,(0cb01h)		;a479
	inc a			;a47c
	cp 005h			;a47d
	ret nc			;a47f
	ld (0cb01h),a		;a480
	ret			;a483
	ld de,(0cb07h)		;a484
	ld b,d			;a488
	ld e,0ffh		;a489
	inc d			;a48b
	ld a,010h		;a48c
	cp d			;a48e
	jr nc,la492h		;a48f
	ld d,a			;a491
la492h:
	ld (0cb07h),de		;a492
	ex de,hl		;a496
	ld a,h			;a497
	call 04e79h		;a498
	ld h,a			;a49b
	ld a,b			;a49c
	call 04e79h		;a49d
	cp h			;a4a0
	ret z			;a4a1
	jp 0871eh		;a4a2
	xor a			;a4a5
	ld (0cb05h),a		;a4a6
	ld b,a			;a4a9
	ld c,a			;a4aa
	inc c			;a4ab
	push ix			;a4ac
	call 084c0h		;a4ae
	ld a,b			;a4b1
	or a			;a4b2
	jr nz,la4b7h		;a4b3
	ld b,001h		;a4b5
la4b7h:
	ld (ix+001h),c		;a4b7
	ld (ix+000h),b		;a4ba
	pop ix			;a4bd
	ret			;a4bf
	ld a,b			;a4c0
	or a			;a4c1
	ld ix,0cb40h		;a4c2
	ret z			;a4c6
	sub 002h		;a4c7
	sub 003h		;a4c9
	ld ix,0cb58h		;a4cb
	ret c			;a4cf
	dec a			;a4d0
	sub 003h		;a4d1
	ld ix,0cb50h		;a4d3
	ret c			;a4d7
	ld ix,0cb48h		;a4d8
	ret			;a4dc
	ld c,a			;a4dd
	ld b,005h		;a4de
	ld ix,0cb40h		;a4e0
la4e4h:
	ld a,(ix+000h)		;a4e4
	cp 009h			;a4e7
	jr nc,la4eeh		;a4e9
	ld (ix+001h),c		;a4eb
la4eeh:
	ld de,00008h		;a4ee
	add ix,de		;a4f1
	djnz la4e4h		;a4f3
	ret			;a4f5
	call 08530h		;a4f6
	ld a,(0c907h)		;a4f9
	bit 5,a			;a4fc
	ret z			;a4fe
	call 08526h		;a4ff
	ret z			;a502
	ld a,008h		;a503
	call 04af5h		;a505
	call 08569h		;a508
	ld b,005h		;a50b
	ld ix,0cb40h		;a50d
la511h:
	ld a,(ix+000h)		;a511
	and 00fh		;a514
	jr z,la51eh		;a516
	call 08588h		;a518
	ld (ix+000h),a		;a51b
la51eh:
	ld de,00008h		;a51e
	add ix,de		;a521
	djnz la511h		;a523
	ret			;a525
	ld a,(0cb50h)		;a526
	or a			;a529
	ret nz			;a52a
	ld a,(0cb58h)		;a52b
	or a			;a52e
	ret			;a52f
	ld a,(0cb02h)		;a530
	cp 02eh			;a533
	ret nc			;a535
	ld hl,0ca02h		;a536
	ld a,(0ca10h)		;a539
	cp 005h			;a53c
	ld a,00fh		;a53e
	jr c,la544h		;a540
	ld a,01fh		;a542
la544h:
	and (hl)		;a544
	ret nz			;a545
	ld hl,(0cb07h)		;a546
	ld b,h			;a549
	ld de,00003h		;a54a
	or a			;a54d
	sbc hl,de		;a54e
	ret c			;a550
	ld d,000h		;a551
	ld e,b			;a553
	or a			;a554
	sbc hl,de		;a555
	ret c			;a557
	ld (0cb07h),hl		;a558
	ld a,b			;a55b
	call 04e79h		;a55c
	ld b,a			;a55f
	ld a,h			;a560
	call 04e79h		;a561
	xor b			;a564
	ret z			;a565
	jp 0871eh		;a566
	ld a,(0cb05h)		;a569
	inc a			;a56c
	cp 003h			;a56d
	jr c,la572h		;a56f
	xor a			;a571
la572h:
	ld (0cb05h),a		;a572
	rrca			;a575
	ld bc,00000h		;a576
	jr c,la583h		;a579
	ld bc,00080h		;a57b
	jr nz,la583h		;a57e
	ld bc,0ff80h		;a580
la583h:
	ld (0cb1bh),bc		;a583
	ret			;a587
	ld hl,08590h		;a588
	call 04600h		;a58b
	ld a,(hl)		;a58e
	ret			;a58f
	nop			;a590
	ld bc,00403h		;a591
	ld (bc),a		;a594
	dec b			;a595
	ex af,af'		;a596
	ld b,007h		;a597
	ld a,(0ca43h)		;a599
	or a			;a59c
	ret nz			;a59d
	xor a			;a59e
	ld (0cc0eh),a		;a59f
	ld iy,0cb40h		;a5a2
	ld ix,0cc40h		;a5a6
	ld a,(iy+000h)		;a5aa
	or a			;a5ad
	ld b,003h		;a5ae
	call nz,085e7h		;a5b0
	ld iy,0cb50h		;a5b3
	ld ix,0cca0h		;a5b7
	ld a,(iy+000h)		;a5bb
	or a			;a5be
	ld b,002h		;a5bf
	call nz,085e7h		;a5c1
	ld iy,0cb58h		;a5c4
	ld ix,0cce0h		;a5c8
	ld a,(iy+000h)		;a5cc
	or a			;a5cf
	ld b,002h		;a5d0
	call nz,085e7h		;a5d2
	ld iy,0cb48h		;a5d5
	ld ix,0cd20h		;a5d9
	ld a,(iy+000h)		;a5dd
	or a			;a5e0
	ld b,001h		;a5e1
	call nz,085e7h		;a5e3
	ret			;a5e6
	cp 080h			;a5e7
	jr nz,la5edh		;a5e9
	ld a,001h		;a5eb
la5edh:
	cp 005h			;a5ed
	jr nz,la5fdh		;a5ef
	ld (iy+000h),001h	;a5f1
	call 085fdh		;a5f5
	ld (iy+000h),005h	;a5f8
	ret			;a5fc
la5fdh:
	ld a,(iy+001h)		;a5fd
	cp 00bh			;a600
la602h:
	jp nc,04ae0h		;a602
	call 0461ah		;a605
	ld e,086h		;a608
	sbc a,h			;a60a
	adc a,h			;a60b
	ld e,086h		;a60c
	ld d,b			;a60e
	adc a,(hl)		;a60f
	ld e,086h		;a610
	ld e,086h		;a612
	ld e,086h		;a614
	ld e,086h		;a616
	ld e,086h		;a618
	ld e,086h		;a61a
	pop af			;a61c
	adc a,e			;a61d
	ret			;a61e
	and 00fh		;a61f
	dec a			;a621
	add a,a			;a622
	ld l,a			;a623
	add a,a			;a624
	add a,l			;a625
	ld l,a			;a626
	ld h,000h		;a627
	add hl,bc		;a629
	ld e,(hl)		;a62a
	inc hl			;a62b
	ld d,(hl)		;a62c
	inc hl			;a62d
	ld c,(hl)		;a62e
	inc hl			;a62f
	ld b,(hl)		;a630
	inc hl			;a631
	ld a,(hl)		;a632
	inc hl			;a633
	ld h,(hl)		;a634
	ld l,a			;a635
	ret			;a636
	ld a,(ix+003h)		;a637
	jr la644h		;a63a
	ld a,(iy+000h)		;a63c
	and 00fh		;a63f
	jr nz,la644h		;a641
	inc a			;a643
la644h:
	push hl			;a644
	call 08661h		;a645
	ld a,l			;a648
	rlca			;a649
	sbc a,a			;a64a
	ld h,a			;a64b
	add hl,hl		;a64c
	add hl,hl		;a64d
	add hl,hl		;a64e
	add hl,hl		;a64f
	add hl,hl		;a650
	add hl,bc		;a651
	ex (sp),hl		;a652
	ld l,h			;a653
	ld a,l			;a654
	rlca			;a655
	sbc a,a			;a656
	ld h,a			;a657
	add hl,hl		;a658
	add hl,hl		;a659
	add hl,hl		;a65a
	add hl,hl		;a65b
	add hl,hl		;a65c
	add hl,de		;a65d
	ex de,hl		;a65e
	pop bc			;a65f
	ret			;a660
	sub 002h		;a661
	sub 003h		;a663
	jr c,la684h		;a665
	dec a			;a667
	sub 003h		;a668
	jr c,la675h		;a66a
	ld bc,(0ca47h)		;a66c
	ld de,(0ca49h)		;a670
	ret			;a674
la675h:
	ld a,(0cad8h)		;a675
	bit 7,a			;a678
	jr nz,la693h		;a67a
	ld a,(0caf8h)		;a67c
	bit 7,a			;a67f
	jr nz,la69ch		;a681
	ret			;a683
la684h:
	ld a,(0cad8h)		;a684
	bit 7,a			;a687
	jr z,la693h		;a689
	ld a,(0caf8h)		;a68b
	bit 7,a			;a68e
	jr z,la69ch		;a690
	ret			;a692
la693h:
	ld bc,(0cac7h)		;a693
	ld de,(0cac9h)		;a697
	ret			;a69b
la69ch:
	ld bc,(0cae7h)		;a69c
	ld de,(0cae9h)		;a6a0
	ret			;a6a4
	ld (ix+000h),a		;a6a5
	ld a,(iy+000h)		;a6a8
	ld (ix+003h),a		;a6ab
	ret			;a6ae
	call 075c2h		;a6af
	ret z			;a6b2
	jp c,087dbh		;a6b3
	bit 4,a			;a6b6
	call nz,086cbh		;a6b8
	jp 087dbh		;a6bb
	call 075c2h		;a6be
	ret z			;a6c1
	jp c,087dbh		;a6c2
	bit 4,a			;a6c5
	jp nz,086cbh		;a6c7
	ret			;a6ca
	call 076f1h		;a6cb
	ex de,hl		;a6ce
	ld a,(hl)		;a6cf
	cp 0a7h			;a6d0
	ret c			;a6d2
	inc a			;a6d3
	cp 0afh			;a6d4
	jr z,la6e2h		;a6d6
	ret nc			;a6d8
	ld (hl),a		;a6d9
	ld a,01eh		;a6da
	call 04af5h		;a6dc
	jp 087dbh		;a6df
la6e2h:
	ld (hl),000h		;a6e2
	ld a,01fh		;a6e4
	call 04af5h		;a6e6
	jp 087dbh		;a6e9
	ld a,(ix+004h)		;a6ec
	or a			;a6ef
	jp nz,087dbh		;a6f0
	ld a,(ix+008h)		;a6f3
	cp 018h			;a6f6
	jp nc,087dbh		;a6f8
	ld a,(ix+00ah)		;a6fb
	cp 020h			;a6fe
	ret c			;a700
	jp 087dbh		;a701
	push hl			;a704
	ld hl,0f0f9h		;a705
	ld (hl),000h		;a708
	pop hl			;a70a
	ld hl,0cc40h		;a70b
	ld bc,000ffh		;a70e
	call 04648h		;a711
	jr la71eh		;a714
	ld c,000h		;a716
	jr la73dh		;a718
	ld c,006h		;a71a
	jr la73dh		;a71c
la71eh:
	call 08732h		;a71e
	ld a,(0cb08h)		;a721
	call 04e79h		;a724
	xor a			;a727
	ld c,000h		;a728
	ld hl,00040h		;a72a
	ld de,0c9a0h		;a72d
	jr la749h		;a730
	ld a,(0cb41h)		;a732
	ld c,000h		;a735
	cp 00ah			;a737
	jr nz,la73dh		;a739
	ld c,006h		;a73b
la73dh:
	ld a,(0cb08h)		;a73d
	call 04e79h		;a740
	ld hl,00020h		;a743
	ld de,0ca00h		;a746
la749h:
	push de			;a749
	push hl			;a74a
	add a,a			;a74b
	add a,c			;a74c
	ld l,a			;a74d
	ld h,000h		;a74e
	add hl,hl		;a750
	add hl,hl		;a751
	add hl,hl		;a752
	add hl,hl		;a753
	add hl,hl		;a754
	ld de,089b0h		;a755
	add hl,de		;a758
	pop bc			;a759
	pop de			;a75a
	ex de,hl		;a75b
	jp 087fbh		;a75c
	call 075c2h		;a75f
	bit 5,a			;a762
	jp nz,087bfh		;a764
	bit 1,a			;a767
	ret z			;a769
	ld (ix+004h),0ffh	;a76a
	ret			;a76e
	ld ix,0ca40h		;a76f
	ld de,00140h		;a773
	ld hl,001e0h		;a776
	call 0875fh		;a779
	ld ix,0ca40h		;a77c
	ld de,001c0h		;a780
	ld hl,001e0h		;a783
	call 0875fh		;a786
	ret			;a789
	call 0876fh		;a78a
	ld ix,0cc40h		;a78d
	ld b,008h		;a791
la793h:
	ld a,(ix+000h)		;a793
	or a			;a796
	push bc			;a797
	call nz,087a4h		;a798
	pop bc			;a79b
	ld de,00020h		;a79c
	add ix,de		;a79f
	djnz la793h		;a7a1
	ret			;a7a3
	cp 009h			;a7a4
	jp nc,04ae0h		;a7a6
	call 0461ah		;a7a9
	cp (hl)			;a7ac
	add a,a			;a7ad
	cp (hl)			;a7ae
	add a,a			;a7af
	cp (hl)			;a7b0
	add a,a			;a7b1
	cp (hl)			;a7b2
	add a,a			;a7b3
	ld c,(hl)		;a7b4
	adc a,l			;a7b5
	cp (hl)			;a7b6
	add a,a			;a7b7
	cp (hl)			;a7b8
	add a,a			;a7b9
	sbc a,e			;a7ba
	adc a,(hl)		;a7bb
	ld (hl),a		;a7bc
	adc a,b			;a7bd
	ret			;a7be
	ld c,000h		;a7bf
	ld a,(iy+000h)		;a7c1
	cp 003h			;a7c4
	ret nz			;a7c6
	ld a,(iy+001h)		;a7c7
	dec a			;a7ca
	ret nz			;a7cb
	push iy			;a7cc
	call 083a4h		;a7ce
	pop ix			;a7d1
	call 06e98h		;a7d3
	ld a,009h		;a7d6
	jp 04af5h		;a7d8
	ld (ix+000h),000h	;a7db
	or a			;a7df
	ret			;a7e0
	ld de,00020h		;a7e1
la7e4h:
	ld a,(ix+000h)		;a7e4
	and a			;a7e7
	jr z,la7f0h		;a7e8
	add ix,de		;a7ea
	djnz la7e4h		;a7ec
	scf			;a7ee
	ret			;a7ef
la7f0h:
	push ix			;a7f0
	pop hl			;a7f2
	xor a			;a7f3
	ld b,020h		;a7f4
la7f6h:
	ld (hl),a		;a7f6
	inc l			;a7f7
	djnz la7f6h		;a7f8
	ret			;a7fa
	push de			;a7fb
	call 0880dh		;a7fc
	ld de,00800h		;a7ff
	add hl,de		;a802
	pop de			;a803
	push de			;a804
	call 0880dh		;a805
	ld de,00800h		;a808
	add hl,de		;a80b
	pop de			;a80c
	push bc			;a80d
	push hl			;a80e
	ex de,hl		;a80f
la810h:
	call 046ach		;a810
	pop hl			;a813
	pop bc			;a814
	ret			;a815
	push ix			;a816
	pop hl			;a818
	ld a,(hl)		;a819
	ld de,00020h		;a81a
	add hl,de		;a81d
	or (hl)			;a81e
	add hl,de		;a81f
	or (hl)			;a820
	ret nz			;a821
	push ix			;a822
	ld b,003h		;a824
	call 087e1h		;a826
	call 0883bh		;a829
	ld (ix+003h),005h	;a82c
	ld (ix+005h),004h	;a830
	pop ix			;a834
	ld b,003h		;a836
	call 087e1h		;a838
	xor a			;a83b
	ld (0cb1dh),a		;a83c
	ld a,008h		;a83f
	call 086a5h		;a841
	ld (ix+014h),003h	;a844
	ld (ix+013h),003h	;a848
	xor a			;a84c
	ld hl,0000ch		;a84d
	call 0863ch		;a850
	ld (ix+00ah),d		;a853
	ld (ix+009h),e		;a856
	ld (ix+008h),b		;a859
	ld (ix+007h),c		;a85c
	ld de,00180h		;a85f
	call 06bfdh		;a862
	ld (ix+015h),005h	;a865
	ld (ix+017h),005h	;a869
	call 08950h		;a86d
	ld a,00ch		;a870
	call 04af5h		;a872
	or a			;a875
	ret			;a876
	call 08885h		;a877
	call 06a7fh		;a87a
	ld a,(ix+000h)		;a87d
	or a			;a880
	jp nz,077d0h		;a881
	ret			;a884
	ld a,(ix+001h)		;a885
	cp 006h			;a888
	jp nc,04ae0h		;a88a
	call 0461ah		;a88d
	sbc a,h			;a890
	adc a,b			;a891
	or b			;a892
	adc a,b			;a893
	call nz,0f988h		;a894
	adc a,b			;a897
	inc e			;a898
	adc a,c			;a899
	inc (hl)		;a89a
	adc a,c			;a89b
	call 088e6h		;a89c
	dec (ix+017h)		;a89f
	ret nz			;a8a2
	ld (ix+017h),005h	;a8a3
	ld de,000c0h		;a8a7
	call 06bfdh		;a8aa
	jp 0894ch		;a8ad
	call 088e6h		;a8b0
	dec (ix+017h)		;a8b3
	ret nz			;a8b6
	ld (ix+017h),005h	;a8b7
	ld de,00040h		;a8bb
	call 06bfdh		;a8be
	jp 0894ch		;a8c1
	call 088e6h		;a8c4
	dec (ix+017h)		;a8c7
	ret nz			;a8ca
la8cbh:
	ld (ix+017h),003h	;a8cb
	ld a,(ix+005h)		;a8cf
	and 004h		;a8d2
	inc a			;a8d4
	ld (ix+005h),a		;a8d5
	call 08950h		;a8d8
	ld de,00000h		;a8db
	call 06bfdh		;a8de
	ld (ix+001h),003h	;a8e1
	ret			;a8e5
	ld a,(ix+00ah)		;a8e6
	cp 01dh			;a8e9
	jr nc,la8cbh		;a8eb
	ld h,001h		;a8ed
	ld d,h			;a8ef
	ld l,000h		;a8f0
	ld e,l			;a8f2
	call 075c2h		;a8f3
	ret z			;a8f6
	jr la8cbh		;a8f7
	dec (ix+017h)		;a8f9
	ret nz			;a8fc
	ld (ix+017h),005h	;a8fd
	ld a,(ix+005h)		;a901
	inc a			;a904
	ld (ix+005h),a		;a905
	push af			;a908
	call 08950h		;a909
	pop af			;a90c
	and 003h		;a90d
	cp 003h			;a90f
	ret nz			;a911
	call 08973h		;a912
	ld a,00dh		;a915
	call 04af5h		;a917
	jr la94ch		;a91a
	dec (ix+017h)		;a91c
	ret nz			;a91f
	bit 0,(ix+003h)		;a920
	jr z,la94ch		;a924
	call 04e65h		;a926
	call 04dd7h		;a929
	call 07523h		;a92c
	call 07058h		;a92f
	jr la94ch		;a932
	bit 0,(ix+003h)		;a934
	jp z,087dbh		;a938
	call 0708bh		;a93b
	ld a,00eh		;a93e
	call 04af5h		;a940
	call 07523h		;a943
	call 07058h		;a946
	jp 087dbh		;a949
la94ch:
	inc (ix+001h)		;a94c
	ret			;a94f
	ld a,(ix+005h)		;a950
	bit 2,a			;a953
	ret nz			;a955
	cp 003h			;a956
	jr c,la95ch		;a958
	ld a,002h		;a95a
la95ch:
	add a,a			;a95c
	add a,a			;a95d
	add a,a			;a95e
	add a,a			;a95f
	add a,a			;a960
	add a,a			;a961
	ld l,a			;a962
	ld h,000h		;a963
	ld de,08b30h		;a965
	add hl,de		;a968
	ex de,hl		;a969
	ld bc,00040h		;a96a
	ld hl,0ca20h		;a96d
	jp 087fbh		;a970
	ld bc,01000h		;a973
	ld hl,0ef01h		;a976
la979h:
	ld a,(hl)		;a979
	and 0e0h		;a97a
	call 089aah		;a97c
	rrca			;a97f
	ld d,a			;a980
	inc hl			;a981
	inc hl			;a982
	ld a,(hl)		;a983
	and 0e0h		;a984
	call 089aah		;a986
	rlca			;a989
	rlca			;a98a
	rlca			;a98b
	ld e,a			;a98c
	inc hl			;a98d
	inc hl			;a98e
	ld a,(hl)		;a98f
	and 0e0h		;a990
	call 089aah		;a992
	rlca			;a995
	rlca			;a996
	rlca			;a997
	or d			;a998
	ld d,a			;a999
	inc hl			;a99a
	inc hl			;a99b
	ld a,c			;a99c
	inc c			;a99d
	push af			;a99e
	push hl			;a99f
	push bc			;a9a0
	call 04776h		;a9a1
	pop bc			;a9a4
	pop hl			;a9a5
	pop af			;a9a6
	djnz la979h		;a9a7
	ret			;a9a9
	sub 040h		;a9aa
	ret nc			;a9ac
	ld a,000h		;a9ad
	ret			;a9af
	nop			;a9b0
	nop			;a9b1
	nop			;a9b2
	nop			;a9b3
	nop			;a9b4
	nop			;a9b5
	inc a			;a9b6
	inc a			;a9b7
	inc a			;a9b8
	inc a			;a9b9
	nop			;a9ba
	nop			;a9bb
	nop			;a9bc
	nop			;a9bd
	nop			;a9be
	nop			;a9bf
	nop			;a9c0
	nop			;a9c1
	nop			;a9c2
	nop			;a9c3
	nop			;a9c4
	nop			;a9c5
	inc a			;a9c6
	inc a			;a9c7
	inc a			;a9c8
	inc a			;a9c9
	nop			;a9ca
	nop			;a9cb
	nop			;a9cc
	nop			;a9cd
	nop			;a9ce
	nop			;a9cf
	nop			;a9d0
	nop			;a9d1
	ld bc,00101h		;a9d2
	ld bc,00000h		;a9d5
	nop			;a9d8
	nop			;a9d9
	ld bc,00101h		;a9da
	ld bc,00000h		;a9dd
	nop			;a9e0
	nop			;a9e1
	add a,b			;a9e2
	add a,b			;a9e3
	add a,b			;a9e4
	add a,b			;a9e5
	nop			;a9e6
	nop			;a9e7
	nop			;a9e8
	nop			;a9e9
	add a,b			;a9ea
	add a,b			;a9eb
	add a,b			;a9ec
	add a,b			;a9ed
	nop			;a9ee
	nop			;a9ef
	nop			;a9f0
	nop			;a9f1
	nop			;a9f2
	nop			;a9f3
	nop			;a9f4
	nop			;a9f5
	inc e			;a9f6
	ld a,063h		;a9f7
	ld a,01ch		;a9f9
	nop			;a9fb
	nop			;a9fc
	nop			;a9fd
	nop			;a9fe
	nop			;a9ff
	nop			;aa00
	nop			;aa01
	nop			;aa02
	nop			;aa03
	nop			;aa04
	nop			;aa05
	inc e			;aa06
	ld a,063h		;aa07
	ld a,01ch		;aa09
	nop			;aa0b
	nop			;aa0c
	nop			;aa0d
	nop			;aa0e
	nop			;aa0f
	nop			;aa10
	nop			;aa11
	ld bc,00101h		;aa12
	ld bc,00000h		;aa15
	nop			;aa18
	nop			;aa19
	ld bc,00101h		;aa1a
	ld bc,00000h		;aa1d
	nop			;aa20
	nop			;aa21
	add a,b			;aa22
	add a,b			;aa23
	add a,b			;aa24
	add a,b			;aa25
	nop			;aa26
	nop			;aa27
	nop			;aa28
	nop			;aa29
	add a,b			;aa2a
	add a,b			;aa2b
	add a,b			;aa2c
	add a,b			;aa2d
	nop			;aa2e
	nop			;aa2f
	nop			;aa30
	nop			;aa31
	nop			;aa32
	nop			;aa33
	nop			;aa34
	inc e			;aa35
	ld a,063h		;aa36
	pop bc			;aa38
	ld h,e			;aa39
	ld a,01ch		;aa3a
	nop			;aa3c
	nop			;aa3d
	nop			;aa3e
	nop			;aa3f
	nop			;aa40
	nop			;aa41
	nop			;aa42
	nop			;aa43
	nop			;aa44
	inc e			;aa45
	ld a,063h		;aa46
	pop bc			;aa48
	ld h,e			;aa49
	ld a,01ch		;aa4a
	nop			;aa4c
	nop			;aa4d
	nop			;aa4e
	nop			;aa4f
	nop			;aa50
	nop			;aa51
	ld bc,00101h		;aa52
	ld bc,00000h		;aa55
	nop			;aa58
	nop			;aa59
	ld bc,00101h		;aa5a
	ld bc,00000h		;aa5d
	add a,b			;aa60
	add a,b			;aa61
	ret nz			;aa62
	ret nz			;aa63
	ret nz			;aa64
	ret nz			;aa65
	add a,b			;aa66
	nop			;aa67
	add a,b			;aa68
	add a,b			;aa69
	ret nz			;aa6a
	ret nz			;aa6b
	ret nz			;aa6c
	ret nz			;aa6d
	add a,b			;aa6e
	nop			;aa6f
	nop			;aa70
	nop			;aa71
	nop			;aa72
	nop			;aa73
	dec b			;aa74
	nop			;aa75
	ld (bc),a		;aa76
	nop			;aa77
	nop			;aa78
	inc b			;aa79
	nop			;aa7a
	dec b			;aa7b
	nop			;aa7c
	nop			;aa7d
	nop			;aa7e
	nop			;aa7f
	nop			;aa80
	nop			;aa81
	nop			;aa82
	nop			;aa83
	ret po			;aa84
	ld a,b			;aa85
	cp h			;aa86
	inc e			;aa87
	inc e			;aa88
	cp h			;aa89
	ld a,b			;aa8a
	ret po			;aa8b
	nop			;aa8c
	nop			;aa8d
	nop			;aa8e
	nop			;aa8f
	nop			;aa90
	jr $+26			;aa91
	jr $+26			;aa93
	jr laaafh		;aa95
	nop			;aa97
	jr laab2h		;aa98
	jr $+26			;aa9a
	jr laab6h		;aa9c
	nop			;aa9e
	nop			;aa9f
	nop			;aaa0
	jr laabbh		;aaa1
	jr $+26			;aaa3
	jr laabfh		;aaa5
	nop			;aaa7
	jr laac2h		;aaa8
	jr laac4h		;aaaa
	jr laac6h		;aaac
	nop			;aaae
laaafh:
	nop			;aaaf
	nop			;aab0
	nop			;aab1
laab2h:
	rla			;aab2
	ld bc,0000ah		;aab3
laab6h:
	ld (bc),a		;aab6
	nop			;aab7
	nop			;aab8
	inc b			;aab9
	nop			;aaba
laabbh:
	ld a,(bc)		;aabb
	ld bc,00017h		;aabc
laabfh:
	nop			;aabf
	nop			;aac0
	nop			;aac1
laac2h:
	add a,b			;aac2
	ret po			;aac3
laac4h:
	ret p			;aac4
	ld a,b			;aac5
laac6h:
	call m,03c3ch		;aac6
	call m,0f078h		;aac9
	ret po			;aacc
	add a,b			;aacd
	nop			;aace
	nop			;aacf
	nop			;aad0
	inc e			;aad1
	inc e			;aad2
	inc e			;aad3
	inc e			;aad4
	inc e			;aad5
	inc e			;aad6
	nop			;aad7
	inc e			;aad8
	inc e			;aad9
	inc e			;aada
	inc e			;aadb
	inc e			;aadc
	inc e			;aadd
	nop			;aade
	nop			;aadf
	nop			;aae0
	jr c,lab1bh		;aae1
	jr c,lab1dh		;aae3
	jr c,lab1fh		;aae5
	nop			;aae7
	jr c,lab22h		;aae8
	jr c,lab24h		;aaea
	jr c,lab26h		;aaec
	nop			;aaee
	nop			;aaef
	sbc a,a			;aaf0
	inc bc			;aaf1
	daa			;aaf2
	nop			;aaf3
	dec d			;aaf4
	nop			;aaf5
	ld bc,00000h		;aaf6
	add hl,bc		;aaf9
	nop			;aafa
	dec b			;aafb
	nop			;aafc
	daa			;aafd
	inc bc			;aafe
	sbc a,a			;aaff
	nop			;ab00
	ret nz			;ab01
	ret po			;ab02
	ret p			;ab03
lab04h:
	ret m			;ab04
	jr c,lab83h		;ab05
	inc e			;ab07
	inc e			;ab08
	ld a,h			;ab09
	jr c,lab04h		;ab0a
	ret p			;ab0c
	ret po			;ab0d
	ret nz			;ab0e
	nop			;ab0f
	ex af,af'		;ab10
	ex af,af'		;ab11
	inc e			;ab12
	inc e			;ab13
	inc e			;ab14
	inc e			;ab15
	ex af,af'		;ab16
	nop			;ab17
	ex af,af'		;ab18
	ex af,af'		;ab19
	inc e			;ab1a
lab1bh:
	inc e			;ab1b
	inc e			;ab1c
lab1dh:
	inc e			;ab1d
	ex af,af'		;ab1e
lab1fh:
	nop			;ab1f
	djnz lab32h		;ab20
lab22h:
	jr c,$+58		;ab22
lab24h:
	jr c,$+58		;ab24
lab26h:
	djnz lab28h		;ab26
lab28h:
	djnz lab3ah		;ab28
	jr c,lab64h		;ab2a
	jr c,lab66h		;ab2c
	djnz lab30h		;ab2e
lab30h:
	nop			;ab30
	nop			;ab31
lab32h:
	nop			;ab32
	add hl,bc		;ab33
	ld bc,0061fh		;ab34
	ld b,009h		;ab37
	add hl,bc		;ab39
lab3ah:
	rrca			;ab3a
	ld bc,0011fh		;ab3b
	ld (bc),a		;ab3e
	inc b			;ab3f
	nop			;ab40
	nop			;ab41
	nop			;ab42
	ld l,b			;ab43
	ex af,af'		;ab44
	ex af,af'		;ab45
	sub h			;ab46
	call p,00808h		;ab47
	ld l,h			;ab4a
	ret m			;ab4b
	ex af,af'		;ab4c
	ret p			;ab4d
	nop			;ab4e
	nop			;ab4f
	ex af,af'		;ab50
	inc c			;ab51
	ld c,006h		;ab52
	ld e,000h		;ab54
	add hl,bc		;ab56
	add hl,bc		;ab57
	ld b,006h		;ab58
	nop			;ab5a
	ld e,000h		;ab5b
	ld c,00ch		;ab5d
	ex af,af'		;ab5f
	nop			;ab60
	nop			;ab61
	nop			;ab62
	sub b			;ab63
lab64h:
	ret p			;ab64
	ret p			;ab65
lab66h:
	ld l,b			;ab66
	ex af,af'		;ab67
	call p,090f4h		;ab68
	nop			;ab6b
	ret p			;ab6c
	nop			;ab6d
	nop			;ab6e
	nop			;ab6f
	nop			;ab70
	nop			;ab71
	nop			;ab72
	ld a,(bc)		;ab73
	ld a,(bc)		;ab74
	jp m,03535h		;ab75
	ld c,d			;ab78
	ld c,d			;ab79
	ld a,d			;ab7a
	rrca			;ab7b
	jp m,02809h		;ab7c
	ex af,af'		;ab7f
	nop			;ab80
	nop			;ab81
	nop			;ab82
lab83h:
	ret nc			;ab83
	inc d			;ab84
	inc d			;ab85
	inc l			;ab86
	call pe,01010h		;ab87
	call nc,018f4h		;ab8a
lab8dh:
	ret po			;ab8d
	nop			;ab8e
	nop			;ab8f
	djnz laba2h		;ab90
	jr nc,$+51		;ab92
	pop af			;ab94
lab95h:
	dec b			;ab95
	ld c,d			;ab96
	ld c,d			;ab97
	dec (hl)		;ab98
	dec (hl)		;ab99
	dec b			;ab9a
	ret p			;ab9b
	ld bc,01030h		;ab9c
	djnz laba1h		;ab9f
laba1h:
	nop			;aba1
laba2h:
	nop			;aba2
	jr nz,lab8dh		;aba3
	ret pe			;aba5
	ret nc			;aba6
	djnz lab95h		;aba7
	call pe,00828h		;aba9
	ret po			;abac
	nop			;abad
	nop			;abae
	nop			;abaf
	nop			;abb0
	nop			;abb1
	ld b,00ah		;abb2
	ld a,(bc)		;abb4
	jp m,03535h		;abb5
	ld c,d			;abb8
	ld c,d			;abb9
	ld a,d			;abba
	rrca			;abbb
	jp m,03807h		;abbc
	ld b,000h		;abbf
	nop			;abc1
	nop			;abc2
	ret nc			;abc3
	ld de,02b15h		;abc4
labc7h:
	ex de,hl		;abc7
	inc d			;abc8
	inc d			;abc9
	push de			;abca
	push af			;abcb
	ld a,(de)		;abcc
	ret po			;abcd
	nop			;abce
	nop			;abcf
	nop			;abd0
	ld b,038h		;abd1
	ld sp,005f1h		;abd3
	ld c,d			;abd6
	ld c,d			;abd7
	dec (hl)		;abd8
	dec (hl)		;abd9
	dec b			;abda
	ret p			;abdb
	ld bc,00638h		;abdc
	nop			;abdf
	nop			;abe0
	nop			;abe1
	nop			;abe2
	jr nz,labc7h		;abe3
	jp pe,014d4h		;abe5
	ex de,hl		;abe8
	ex de,hl		;abe9
	ld hl,(0e00ah)		;abea
	nop			;abed
	nop			;abee
	nop			;abef
	nop			;abf0
	ld a,(iy+000h)		;abf1
	dec a			;abf4
	jp nz,08c9ch		;abf5
	ld a,(0cb1dh)		;abf8
	or a			;abfb
	jp nz,08816h		;abfc
	push ix			;abff
	pop hl			;ac01
	ld a,(hl)		;ac02
	ld de,00020h		;ac03
	add hl,de		;ac06
	or (hl)			;ac07
	add hl,de		;ac08
	or (hl)			;ac09
	ret nz			;ac0a
	push ix			;ac0b
	push bc			;ac0d
	call 08c35h		;ac0e
	pop bc			;ac11
	pop ix			;ac12
	push ix			;ac14
	push bc			;ac16
	call 08c35h		;ac17
	pop bc			;ac1a
	pop ix			;ac1b
	ld hl,00100h		;ac1d
	call nc,08c2eh		;ac20
	call 08c35h		;ac23
	ld hl,0ff00h		;ac26
	call nc,08c2eh		;ac29
	or a			;ac2c
	ret			;ac2d
	ld (ix+00ch),h		;ac2e
	ld (ix+00bh),l		;ac31
	ret			;ac34
	call 08c47h		;ac35
	ret c			;ac38
	push iy			;ac39
	call 08d51h		;ac3b
	pop iy			;ac3e
	ld a,003h		;ac40
	call 04af0h		;ac42
	or a			;ac45
	ret			;ac46
	call 087e1h		;ac47
	ret c			;ac4a
	ld a,(0cb08h)		;ac4b
	call 04e79h		;ac4e
	inc a			;ac51
	add a,a			;ac52
	ld (ix+006h),a		;ac53
	ld a,(iy+000h)		;ac56
	ld (ix+003h),a		;ac59
	ld bc,08ddch		;ac5c
	call 0861fh		;ac5f
	ld (ix+00bh),e		;ac62
	ld (ix+00ch),d		;ac65
	ld (ix+00dh),c		;ac68
	ld (ix+00eh),b		;ac6b
	call 0863ch		;ac6e
	ld (ix+00ah),d		;ac71
	ld (ix+009h),e		;ac74
	ld (ix+008h),b		;ac77
	ld (ix+007h),c		;ac7a
	ld (ix+014h),003h	;ac7d
	ld (ix+013h),003h	;ac81
	ld a,004h		;ac85
	call 086a5h		;ac87
	ld a,(iy+000h)		;ac8a
	dec a			;ac8d
	jr nz,lad0bh		;ac8e
	ld a,(0cb08h)		;ac90
	call 04e79h		;ac93
	add a,00fh		;ac96
	ld (ix+005h),a		;ac98
	ret			;ac9b
	ld a,(iy+000h)		;ac9c
	dec a			;ac9f
	jr nz,laca9h		;aca0
	ld a,(0cb1dh)		;aca2
	or a			;aca5
	jp nz,08816h		;aca6
laca9h:
	call 08ccdh		;aca9
	ret c			;acac
	ld a,(0cb08h)		;acad
	call 04e79h		;acb0
	inc a			;acb3
	ld (ix+006h),a		;acb4
	push af			;acb7
	push iy			;acb8
	call 08d51h		;acba
	pop iy			;acbd
	pop af			;acbf
	cp 003h			;acc0
	ld a,004h		;acc2
	jr z,lacc8h		;acc4
	ld a,002h		;acc6
lacc8h:
	call 04af0h		;acc8
	or a			;accb
	ret			;accc
	call 087e1h		;accd
	ret c			;acd0
	ld a,(iy+000h)		;acd1
	ld (ix+003h),a		;acd4
	ld bc,08ddch		;acd7
	call 0861fh		;acda
	ld (ix+00bh),e		;acdd
	ld (ix+00ch),d		;ace0
	ld (ix+00dh),c		;ace3
	ld (ix+00eh),b		;ace6
	call 0863ch		;ace9
	ld (ix+00ah),d		;acec
	ld (ix+009h),e		;acef
	ld (ix+008h),b		;acf2
	ld (ix+007h),c		;acf5
	ld (ix+014h),003h	;acf8
	ld (ix+013h),003h	;acfc
	ld a,004h		;ad00
	call 086a5h		;ad02
	ld a,(iy+000h)		;ad05
	dec a			;ad08
	jr z,lad1ch		;ad09
lad0bh:
	xor a			;ad0b
	add a,a			;ad0c
	ld c,a			;ad0d
	ld a,(ix+00ch)		;ad0e
	or a			;ad11
	jr z,lad16h		;ad12
	ld a,001h		;ad14
lad16h:
	add a,c			;ad16
	ld (ix+005h),a		;ad17
	or a			;ad1a
	ret			;ad1b
lad1ch:
	ld a,(0cb08h)		;ad1c
	call 04e79h		;ad1f
	add a,00ch		;ad22
	ld (ix+005h),a		;ad24
	or a			;ad27
	ret			;ad28
	ld bc,08ddch		;ad29
	call 0861fh		;ad2c
	ld (ix+00bh),e		;ad2f
	ld (ix+00ch),d		;ad32
	ld (ix+00dh),c		;ad35
	ld (ix+00eh),b		;ad38
	ld a,(0cb08h)		;ad3b
	call 04e79h		;ad3e
	add a,a			;ad41
	ld c,a			;ad42
	ld a,d			;ad43
	or a			;ad44
	jr z,lad49h		;ad45
	ld a,001h		;ad47
lad49h:
	add a,c			;ad49
	ld (ix+005h),a		;ad4a
	ret			;ad4d
	call 06a7fh		;ad4e
	call 086ech		;ad51
	ret nc			;ad54
	bit 1,(ix+005h)		;ad55
	jp nz,08da1h		;ad59
	call 08e0ch		;ad5c
	jp z,077d0h		;ad5f
	ld h,(ix+00eh)		;ad62
	ld l,(ix+00dh)		;ad65
	ld a,h			;ad68
	cpl			;ad69
	ld h,a			;ad6a
	ld a,l			;ad6b
	cpl			;ad6c
	ld l,a			;ad6d
	inc hl			;ad6e
	sra h			;ad6f
	rr l			;ad71
	ld bc,00100h		;ad73
	add hl,bc		;ad76
	ex de,hl		;ad77
	ld h,(ix+00ch)		;ad78
	ld l,(ix+00bh)		;ad7b
	ld a,h			;ad7e
	cpl			;ad7f
	ld h,a			;ad80
	ld a,l			;ad81
	cpl			;ad82
	ld l,a			;ad83
	inc hl			;ad84
	sra h			;ad85
	rr l			;ad87
	ld bc,00100h		;ad89
	add hl,bc		;ad8c
	call 086afh		;ad8d
	ld de,00100h		;ad90
	ld hl,00100h		;ad93
	call 086afh		;ad96
	ld a,(ix+000h)		;ad99
	or a			;ad9c
	jp nz,077d0h		;ad9d
	ret			;ada0
	call 08e0ch		;ada1
	jp z,077d0h		;ada4
	ld de,00080h		;ada7
	ld hl,00080h		;adaa
	call 086beh		;adad
	ld de,00080h		;adb0
	ld hl,00180h		;adb3
	call 086beh		;adb6
	ld de,00180h		;adb9
	ld hl,00180h		;adbc
	call 086beh		;adbf
	ld de,00180h		;adc2
	ld hl,00080h		;adc5
	call 086beh		;adc8
	ld de,00100h		;adcb
	ld hl,00100h		;adce
	call 086afh		;add1
	ld a,(ix+000h)		;add4
	or a			;add7
	jp nz,077d0h		;add8
	ret			;addb
	nop			;addc
	nop			;addd
	nop			;adde
	ld (bc),a		;addf
	rlca			;ade0
	ld b,000h		;ade1
	nop			;ade3
	nop			;ade4
	ld (bc),a		;ade5
	rst 38h			;ade6
	nop			;ade7
	nop			;ade8
	ld (bc),a		;ade9
	nop			;adea
	nop			;adeb
	rst 38h			;adec
	nop			;aded
	nop			;adee
	nop			;adef
	nop			;adf0
	cp 0ffh			;adf1
	nop			;adf3
	nop			;adf4
	nop			;adf5
	nop			;adf6
	cp 007h			;adf7
	nop			;adf9
	nop			;adfa
	nop			;adfb
	nop			;adfc
	cp 0ffh			;adfd
	nop			;adff
	nop			;ae00
	cp 000h			;ae01
	nop			;ae03
	rst 38h			;ae04
	nop			;ae05
	nop			;ae06
	nop			;ae07
	nop			;ae08
	ld (bc),a		;ae09
	rst 38h			;ae0a
	nop			;ae0b
	ld d,(ix+00ah)		;ae0c
	ld e,(ix+008h)		;ae0f
	call 07b06h		;ae12
	jr nc,lae4dh		;ae15
	ex de,hl		;ae17
	ld d,0deh		;ae18
	ld e,(hl)		;ae1a
	ld a,(de)		;ae1b
	or a			;ae1c
	ret nz			;ae1d
	inc hl			;ae1e
	ld e,(hl)		;ae1f
	ld a,(de)		;ae20
	or a			;ae21
	ret nz			;ae22
	inc hl			;ae23
	ld e,(hl)		;ae24
	ld a,(de)		;ae25
	or a			;ae26
	ret nz			;ae27
	ld bc,0002eh		;ae28
	add hl,bc		;ae2b
	ld e,(hl)		;ae2c
	ld a,(de)		;ae2d
	or a			;ae2e
	ret nz			;ae2f
	inc hl			;ae30
	ld e,(hl)		;ae31
	ld a,(de)		;ae32
	or a			;ae33
	ret nz			;ae34
	inc hl			;ae35
	ld e,(hl)		;ae36
	ld a,(de)		;ae37
	or a			;ae38
	ret nz			;ae39
	ld bc,0002eh		;ae3a
	add hl,bc		;ae3d
	ld e,(hl)		;ae3e
	ld a,(de)		;ae3f
	or a			;ae40
	ret nz			;ae41
	inc hl			;ae42
	ld e,(hl)		;ae43
	ld a,(de)		;ae44
	or a			;ae45
	ret nz			;ae46
	inc hl			;ae47
	ld e,(hl)		;ae48
	ld a,(de)		;ae49
	or a			;ae4a
	ret nz			;ae4b
	ret			;ae4c
lae4dh:
	or 0ffh			;ae4d
	ret			;ae4f
	ld b,001h		;ae50
	call 087e1h		;ae52
	ret c			;ae55
	ld a,(0cc0eh)		;ae56
	or a			;ae59
	ret nz			;ae5a
	ld a,001h		;ae5b
	ld (0cc0eh),a		;ae5d
	ld a,007h		;ae60
	call 086a5h		;ae62
	ld (ix+014h),003h	;ae65
	ld (ix+013h),003h	;ae69
	ld a,(iy+000h)		;ae6d
	ld a,004h		;ae70
	ld (ix+003h),a		;ae72
	xor a			;ae75
	ld hl,0000ch		;ae76
	call 0863ch		;ae79
	ld (ix+00ah),d		;ae7c
	ld (ix+009h),e		;ae7f
	ld (ix+008h),b		;ae82
	ld (ix+007h),c		;ae85
	ld de,00000h		;ae88
	ld hl,00100h		;ae8b
	call 06bebh		;ae8e
	ld (ix+015h),005h	;ae91
	ld (ix+017h),001h	;ae95
	or a			;ae99
	ret			;ae9a
	call 08ebbh		;ae9b
	ld d,000h		;ae9e
	ld e,d			;aea0
	ld l,d			;aea1
	ld h,d			;aea2
	inc h			;aea3
	call 086beh		;aea4
	ld d,000h		;aea7
	ld e,d			;aea9
	ld l,d			;aeaa
	inc d			;aeab
	ld h,d			;aeac
	call 086afh		;aead
	call 086ech		;aeb0
	ld a,(ix+000h)		;aeb3
	or a			;aeb6
	jp nz,077d0h		;aeb7
	ret			;aeba
	ld a,(0ca10h)		;aebb
	cp 004h			;aebe
	jp z,06a7fh		;aec0
	call 06c29h		;aec3
	ld de,00100h		;aec6
	ld hl,00200h		;aec9
	call 08f06h		;aecc
	ld de,00000h		;aecf
	ld hl,00100h		;aed2
	jr nc,laeffh		;aed5
	ld de,00100h		;aed7
	ld hl,00300h		;aeda
	call 08f06h		;aedd
	ld de,00000h		;aee0
	ld hl,00200h		;aee3
	jr nc,laeffh		;aee6
	ld de,00300h		;aee8
	ld hl,00200h		;aeeb
	call 08f06h		;aeee
	ld de,00200h		;aef1
	ld hl,00100h		;aef4
	jr nc,laeffh		;aef7
	ld de,00200h		;aef9
	ld hl,00000h		;aefc
laeffh:
	call 06bebh		;aeff
	call 06a7fh		;af02
	ret			;af05
	call 075aah		;af06
	ccf			;af09
	ret nc			;af0a
	cp 003h			;af0b
	scf			;af0d
	ret z			;af0e
	or a			;af0f
	ret			;af10
	ret			;af11
	ld a,0afh		;af12
	push hl			;af14
	push af			;af15
	call 0465fh		;af16
	pop bc			;af19
	pop hl			;af1a
	push af			;af1b
	push hl			;af1c
	push bc			;af1d
	ld a,(0f342h)		;af1e
	ld h,040h		;af21
	call 00024h		;af23
	pop af			;af26
	pop hl			;af27
	call 08f34h		;af28
	pop af			;af2b
	push hl			;af2c
	ld h,040h		;af2d
	call 00024h		;af2f
	pop hl			;af32
	ret			;af33
	or a			;af34
	jr z,laf4dh		;af35
	push hl			;af37
	ld hl,0c000h		;af38
	ld de,04000h		;af3b
	ld bc,01000h		;af3e
	call 08f56h		;af41
	ld hl,(070f0h)		;af44
	pop de			;af47
	ld (070f0h),de		;af48
	ret			;af4c
laf4dh:
	ld hl,0d000h		;af4d
	ld de,05000h		;af50
	ld bc,020f0h		;af53
laf56h:
	ld a,(hl)		;af56
	ex af,af'		;af57
	ld a,(de)		;af58
	ld (hl),a		;af59
	ex af,af'		;af5a
	ld (de),a		;af5b
	inc hl			;af5c
	inc de			;af5d
	dec bc			;af5e
	ld a,b			;af5f
	or c			;af60
	jr nz,laf56h		;af61
	ret			;af63
	ld a,(0ffa7h)		;af64
	cp 0c9h			;af67
	ret z			;af69
	ld a,(0fd9ah)		;af6a
	ld bc,(0fd9bh)		;af6d
	push af			;af71
	push bc			;af72
	ld a,0c9h		;af73
	ld (0fd9ah),a		;af75
	call 08f86h		;af78
	di			;af7b
	pop bc			;af7c
	pop af			;af7d
	ld (0fd9ah),a		;af7e
	ld (0fd9bh),bc		;af81
	ret			;af85
	call 08fb7h		;af86
	di			;af89
	ld de,(0c000h)		;af8a
	ld (0c000h),sp		;af8e
	ld hl,(0c000h)		;af92
	ld (0c000h),de		;af95
	call 08f12h		;af99
	ld sp,0d000h		;af9c
	call 08f13h		;af9f
	ld a,01fh		;afa2
	call 04c07h		;afa4
	ld sp,0d200h		;afa7
	jp 06000h		;afaa
	call 04b8fh		;afad
	ld a,(0f3e0h)		;afb0
	set 5,a			;afb3
	jr lafbfh		;afb5
	call 04b78h		;afb7
	ld a,(0f3e0h)		;afba
	res 5,a			;afbd
lafbfh:
	ld b,a			;afbf
	ld c,001h		;afc0
	jp 00047h		;afc2
	di			;afc5
	call 08f12h		;afc6
	ld sp,0d000h		;afc9
	push hl			;afcc
	call 08f13h		;afcd
	pop hl			;afd0
	ld sp,hl		;afd1
	call 06003h		;afd2
	ld a,001h		;afd5
	call 04c07h		;afd7
	call 08fadh		;afda
	ret			;afdd
	ex af,af'		;afde
	ld h,b			;afdf
	ld (bc),a		;afe0
	and (hl)		;afe1
	ld de,00560h		;afe2
	and (hl)		;afe5
	inc b			;afe6
	ld h,b			;afe7
	ld (bc),a		;afe8
	and (hl)		;afe9
	ld (bc),a		;afea
	jp pe,06003h		;afeb
	inc bc			;afee
	and (hl)		;afef
	add a,c			;aff0
	ld h,b			;aff1
	inc bc			;aff2
	and (hl)		;aff3
	inc b			;aff4
	ld h,b			;aff5
	dec d			;aff6
	and (hl)		;aff7
	dec b			;aff8
	ld h,b			;aff9
	inc b			;affa
	and (hl)		;affb
	inc b			;affc
	ld h,b			;affd
	adc a,e			;affe
	and (hl)		;afff
	and 0aeh		;b000
	xor (hl)		;b002
	and (hl)		;b003
lb004h:
	and (hl)		;b004
	ld h,b			;b005
	ld h,b			;b006
	and 0a6h		;b007
	and (hl)		;b009
	dec b			;b00a
	jp pe,0e683h		;b00b
	and (hl)		;b00e
	and (hl)		;b00f
lb010h:
	dec b			;b010
	jp pe,la602h		;b011
	inc b			;b014
	jp pe,la602h		;b015
	jr lb004h		;b018
	ex af,af'		;b01a
	and (hl)		;b01b
	nop			;b01c
	ex af,af'		;b01d
	ld l,a			;b01e
	ld (bc),a		;b01f
	and (hl)		;b020
	ld de,0056fh		;b021
	and (hl)		;b024
	inc b			;b025
	ld l,a			;b026
	ld (bc),a		;b027
	and (hl)		;b028
	ld (bc),a		;b029
	jp pe,06f03h		;b02a
	inc bc			;b02d
	and (hl)		;b02e
	add a,c			;b02f
	ld l,a			;b030
	inc bc			;b031
	and (hl)		;b032
	inc b			;b033
	ld l,a			;b034
	dec d			;b035
	and (hl)		;b036
	dec b			;b037
	ld l,a			;b038
	inc b			;b039
	and (hl)		;b03a
	inc b			;b03b
	ld l,a			;b03c
	adc a,e			;b03d
	and (hl)		;b03e
	and 0aeh		;b03f
	xor (hl)		;b041
	and (hl)		;b042
lb043h:
	and (hl)		;b043
	ld l,a			;b044
	ld l,a			;b045
	and 0a6h		;b046
	and (hl)		;b048
	dec b			;b049
	jp pe,0e683h		;b04a
	and (hl)		;b04d
	and (hl)		;b04e
	dec b			;b04f
	jp pe,la602h		;b050
	inc b			;b053
	jp pe,la602h		;b054
	jr lb043h		;b057
	ex af,af'		;b059
	and (hl)		;b05a
	nop			;b05b
	add a,c			;b05c
	ld bc,00305h		;b05d
	ld (bc),a		;b060
	ld bc,04084h		;b061
	add a,b			;b064
	cp 0f8h			;b065
	inc b			;b067
	nop			;b068
	ld (bc),a		;b069
	add a,b			;b06a
	inc b			;b06b
	ret nz			;b06c
	ei			;b06d
	add a,b			;b06e
	nop			;b06f
	nop			;b070
	inc a			;b071
	ld a,a			;b072
	ld c,019h		;b073
	djnz $+35		;b075
	inc hl			;b077
	nop			;b078
	nop			;b079
	inc a			;b07a
	rst 38h			;b07b
lb07ch:
	jr c,lb07ch		;b07c
	jr lb0feh		;b07e
	nop			;b080
lb081h:
	jr c,lb081h		;b081
	jr c,lb091h		;b083
	inc b			;b085
	cp 040h			;b086
	inc bc			;b088
	inc b			;b089
	ld a,a			;b08a
	ccf			;b08b
	ld a,a			;b08c
	ld a,a			;b08d
	inc bc			;b08e
	daa			;b08f
	ld c,a			;b090
lb091h:
	ld c,a			;b091
	cpl			;b092
	rrca			;b093
	daa			;b094
	daa			;b095
	inc hl			;b096
	ld sp,0f2e4h		;b097
lb09ah:
	ld (hl),d		;b09a
	ld (hl),d		;b09b
	ld h,h			;b09c
	ret po			;b09d
	call m,018feh		;b09e
	rrca			;b0a1
lb0a2h:
	inc bc			;b0a2
	ld a,a			;b0a3
lb0a4h:
	ld a,a			;b0a4
	ccf			;b0a5
lb0a6h:
	rlca			;b0a6
	nop			;b0a7
lb0a8h:
	ld a,a			;b0a8
	rst 30h			;b0a9
lb0aah:
	jp 0f301h		;b0aa
	ex (sp),hl		;b0ad
	ld bc,03c00h		;b0ae
	add a,c			;b0b1
	add a,c			;b0b2
	rst 0			;b0b3
	cp 038h			;b0b4
	cp 07ch			;b0b6
lb0b8h:
	ld bc,07f1eh		;b0b8
	inc e			;b0bb
lb0bch:
	inc sp			;b0bc
	daa			;b0bd
lb0beh:
	ld l,a			;b0be
	ld c,a			;b0bf
lb0c0h:
	add a,e			;b0c0
	jr c,lb141h		;b0c1
	inc a			;b0c3
	rrca			;b0c4
	jp 0f9f1h		;b0c5
	cp 0feh			;b0c8
	inc b			;b0ca
	inc c			;b0cb
	jr lb0beh		;b0cc
	cp 0f8h			;b0ce
	cp c			;b0d0
	ld a,(hl)		;b0d1
	ld a,a			;b0d2
	rst 38h			;b0d3
	rst 38h			;b0d4
	cp 07eh			;b0d5
	sbc a,l			;b0d7
	ld c,a			;b0d8
	cpl			;b0d9
	daa			;b0da
	inc hl			;b0db
	ld sp,0001ch		;b0dc
	nop			;b0df
	or 0ech			;b0e0
	exx			;b0e2
	rst 38h			;b0e3
	cp 078h			;b0e4
	nop			;b0e6
	nop			;b0e7
	ret z			;b0e8
	inc bc			;b0e9
	call po,0ec84h		;b0ea
	call z,0f098h		;b0ed
	nop			;b0f0
	rst 38h			;b0f1
	rst 38h			;b0f2
	rst 38h			;b0f3
	rst 38h			;b0f4
	rst 38h			;b0f5
	rst 38h			;b0f6
	rst 38h			;b0f7
	rst 38h			;b0f8
	rst 38h			;b0f9
	rst 38h			;b0fa
	rst 38h			;b0fb
	rst 38h			;b0fc
	rst 38h			;b0fd
lb0feh:
	rst 38h			;b0fe
	rst 38h			;b0ff
	inc b			;b100
	sub d			;b101
	ex af,af'		;b102
	sub d			;b103
	inc c			;b104
	sub d			;b105
	djnz lb09ah		;b106
	inc d			;b108
	sub d			;b109
	inc d			;b10a
	sub d			;b10b
	djnz $-108		;b10c
	djnz lb0a2h		;b10e
	djnz lb0a4h		;b110
	jr lb0a6h		;b112
	jr lb0a8h		;b114
	jr lb0aah		;b116
	jr $-108		;b118
	inc e			;b11a
	sub d			;b11b
	nop			;b11c
	sub d			;b11d
	inc h			;b11e
	sub d			;b11f
	inc h			;b120
	sub d			;b121
	inc h			;b122
	sub d			;b123
	jr z,lb0b8h		;b124
	inc l			;b126
	sub d			;b127
	jr nc,lb0bch		;b128
	inc (hl)		;b12a
lb12bh:
	sub d			;b12b
	jr c,lb0c0h		;b12c
	inc h			;b12e
lb12fh:
	sub d			;b12f
	inc a			;b130
	sub d			;b131
	ld b,b			;b132
lb133h:
	sub d			;b133
	ld b,h			;b134
	sub d			;b135
	ld c,b			;b136
	sub d			;b137
	ld c,h			;b138
	sub d			;b139
	ld d,b			;b13a
lb13bh:
	sub d			;b13b
	ld d,h			;b13c
lb13dh:
	sub d			;b13d
	ld e,b			;b13e
	sub d			;b13f
	ld e,h			;b140
lb141h:
	sub d			;b141
	ld h,b			;b142
	sub d			;b143
	ld h,h			;b144
	sub d			;b145
	ld l,b			;b146
	sub d			;b147
	ld l,h			;b148
	sub d			;b149
	ld (hl),b		;b14a
	sub d			;b14b
	ld a,b			;b14c
	sub d			;b14d
	ld a,h			;b14e
	sub d			;b14f
	add a,b			;b150
	sub d			;b151
	add a,h			;b152
	sub d			;b153
	adc a,b			;b154
	sub d			;b155
	adc a,h			;b156
lb157h:
	sub d			;b157
	sub b			;b158
	sub d			;b159
	sub h			;b15a
	sub d			;b15b
	sbc a,b			;b15c
	sub d			;b15d
	sbc a,h			;b15e
	sub d			;b15f
	and b			;b160
	sub d			;b161
	and h			;b162
	sub d			;b163
	xor b			;b164
	sub d			;b165
	xor h			;b166
	sub d			;b167
	or b			;b168
	sub d			;b169
	or h			;b16a
	sub d			;b16b
	cp h			;b16c
	sub d			;b16d
	ret nz			;b16e
	sub d			;b16f
	call nz,0c892h		;b170
	sub d			;b173
	call z,0d092h		;b174
	sub d			;b177
	call nc,0d892h		;b178
	sub d			;b17b
	call c,0e092h		;b17c
	sub d			;b17f
	call po,0e892h		;b180
	sub d			;b183
	call pe,0f092h		;b184
	sub d			;b187
	call p,0f892h		;b188
	sub d			;b18b
	call m,00092h		;b18c
	sub e			;b18f
	inc b			;b190
	sub e			;b191
	ex af,af'		;b192
	sub e			;b193
	inc c			;b194
	sub e			;b195
	djnz lb12bh		;b196
	inc d			;b198
	sub e			;b199
	jr lb12fh		;b19a
	inc e			;b19c
	sub e			;b19d
	jr nz,lb133h		;b19e
	inc l			;b1a0
	sub e			;b1a1
	inc l			;b1a2
	sub e			;b1a3
	inc l			;b1a4
	sub e			;b1a5
	jr z,lb13bh		;b1a6
	jr nc,lb13dh		;b1a8
	inc (hl)		;b1aa
	sub e			;b1ab
	ld c,b			;b1ac
	sub e			;b1ad
	ld l,b			;b1ae
	sub e			;b1af
	ld h,h			;b1b0
	sub e			;b1b1
	ld l,h			;b1b2
	sub e			;b1b3
	ld (hl),b		;b1b4
	sub e			;b1b5
	ld (hl),h		;b1b6
	sub e			;b1b7
	ld a,b			;b1b8
	sub e			;b1b9
	ld a,h			;b1ba
	sub e			;b1bb
	ld c,b			;b1bc
	sub e			;b1bd
	ld c,h			;b1be
	sub e			;b1bf
	ld d,b			;b1c0
	sub e			;b1c1
	jr c,lb157h		;b1c2
	ld h,b			;b1c4
	sub e			;b1c5
	add a,b			;b1c6
	sub e			;b1c7
	add a,h			;b1c8
	sub e			;b1c9
	adc a,b			;b1ca
	sub e			;b1cb
	adc a,h			;b1cc
	sub e			;b1cd
	ld (hl),h		;b1ce
	sub d			;b1cf
	inc a			;b1d0
	sub e			;b1d1
	ld b,h			;b1d2
	sub e			;b1d3
	ld c,b			;b1d4
	sub e			;b1d5
	ld c,b			;b1d6
	sub e			;b1d7
	ld c,b			;b1d8
	sub e			;b1d9
	ld e,b			;b1da
	sub e			;b1db
	ld e,h			;b1dc
	sub e			;b1dd
	sub b			;b1de
	sub e			;b1df
	sub h			;b1e0
	sub e			;b1e1
	cp b			;b1e2
	sub d			;b1e3
	sbc a,b			;b1e4
	sub e			;b1e5
	sbc a,h			;b1e6
	sub e			;b1e7
	ld d,h			;b1e8
	sub e			;b1e9
	and b			;b1ea
	sub e			;b1eb
	and h			;b1ec
	sub e			;b1ed
	xor b			;b1ee
	sub e			;b1ef
	inc h			;b1f0
	sub e			;b1f1
	xor h			;b1f2
	sub e			;b1f3
	or b			;b1f4
	sub e			;b1f5
	or h			;b1f6
	sub e			;b1f7
	or h			;b1f8
	sub e			;b1f9
	or h			;b1fa
	sub e			;b1fb
	or h			;b1fc
	sub e			;b1fd
	or h			;b1fe
	sub e			;b1ff
	inc bc			;b200
	inc bc			;b201
	nop			;b202
	nop			;b203
	inc b			;b204
	inc b			;b205
	add hl,sp		;b206
	nop			;b207
	inc b			;b208
	inc b			;b209
	ld sp,00400h		;b20a
	inc b			;b20d
	ld d,(hl)		;b20e
	nop			;b20f
	inc b			;b210
	inc b			;b211
	ld sp,00301h		;b212
	inc bc			;b215
	ld d,d			;b216
	nop			;b217
	inc b			;b218
	add a,h			;b219
	cp l			;b21a
	jr z,$+8		;b21b
	adc a,d			;b21d
	ld d,(hl)		;b21e
	jr lb225h		;b21f
	inc b			;b221
	ld sp,00400h		;b222
lb225h:
	add a,h			;b225
	cp c			;b226
	nop			;b227
	inc b			;b228
	add a,h			;b229
	cp c			;b22a
	ld bc,08508h		;b22b
	inc d			;b22e
	ret p			;b22f
	inc b			;b230
	add a,h			;b231
	cp c			;b232
	ld bc,08404h		;b233
	cp c			;b236
	ld bc,08404h		;b237
	cp l			;b23a
	ld (bc),a		;b23b
	inc b			;b23c
	add a,h			;b23d
	cp l			;b23e
	ld bc,08404h		;b23f
	cp l			;b242
	jr $+6			;b243
	add a,h			;b245
	cp c			;b246
	ld bc,08604h		;b247
	ld d,(hl)		;b24a
	inc c			;b24b
	inc b			;b24c
	add a,h			;b24d
	cp l			;b24e
	ld bc,08608h		;b24f
	cp c			;b252
	ld a,(bc)		;b253
	ld b,088h		;b254
	ld a,a			;b256
	dec b			;b257
	inc b			;b258
	add a,h			;b259
	ld d,(hl)		;b25a
	ld bc,08404h		;b25b
	cp c			;b25e
	ld bc,08604h		;b25f
	ld d,(hl)		;b262
	ld b,004h		;b263
	add a,h			;b265
	cp l			;b266
	dec b			;b267
	dec b			;b268
	dec b			;b269
	inc b			;b26a
	nop			;b26b
	inc b			;b26c
	add a,h			;b26d
	cp c			;b26e
	ld bc,08605h		;b26f
	ld d,(hl)		;b272
	ex af,af'		;b273
	inc b			;b274
	add a,h			;b275
	cp l			;b276
	nop			;b277
	ld b,084h		;b278
	cp l			;b27a
	ld c,00ah		;b27b
	adc a,h			;b27d
	ld e,(hl)		;b27e
	rra			;b27f
	inc b			;b280
	add a,h			;b281
	ld d,(hl)		;b282
	ld bc,00806h		;b283
	or c			;b286
	nop			;b287
	inc b			;b288
	add a,(hl)		;b289
	ld d,(hl)		;b28a
	ld b,004h		;b28b
	add a,h			;b28d
	cp l			;b28e
	ld b,004h		;b28f
	add a,(hl)		;b291
	cp l			;b292
	ld bc,00405h		;b293
	inc b			;b296
	ld b,004h		;b297
	add a,h			;b299
	cp l			;b29a
	ld (bc),a		;b29b
	ld a,(bc)		;b29c
	ld a,(bc)		;b29d
	inc b			;b29e
	nop			;b29f
	inc b			;b2a0
	add a,h			;b2a1
	cp l			;b2a2
	inc b			;b2a3
	inc b			;b2a4
	add a,h			;b2a5
	ld d,(hl)		;b2a6
	ld bc,08608h		;b2a7
	cp c			;b2aa
	ld d,b			;b2ab
	ld b,086h		;b2ac
	ld d,(hl)		;b2ae
	ld b,004h		;b2af
	add a,h			;b2b1
	cp c			;b2b2
	ret p			;b2b3
	inc bc			;b2b4
	inc bc			;b2b5
	ld d,(hl)		;b2b6
	nop			;b2b7
	ld (bc),a		;b2b8
	ld (bc),a		;b2b9
	inc b			;b2ba
	nop			;b2bb
	inc b			;b2bc
	add a,h			;b2bd
	or l			;b2be
	nop			;b2bf
	rlca			;b2c0
	add a,a			;b2c1
	ld d,(hl)		;b2c2
	ld b,009h		;b2c3
	adc a,b			;b2c5
	ld d,(hl)		;b2c6
	dec c			;b2c7
	inc b			;b2c8
	add a,h			;b2c9
	ld d,(hl)		;b2ca
	ld bc,00303h		;b2cb
	ld l,a			;b2ce
	nop			;b2cf
	inc bc			;b2d0
	add a,e			;b2d1
	ld b,(hl)		;b2d2
	ld bc,08303h		;b2d3
	ld b,(hl)		;b2d6
	ld bc,08303h		;b2d7
	inc b			;b2da
	ld a,b			;b2db
	ld b,008h		;b2dc
	inc d			;b2de
	ld bc,08404h		;b2df
	cp l			;b2e2
	nop			;b2e3
	inc bc			;b2e4
	inc bc			;b2e5
	inc b			;b2e6
	nop			;b2e7
	inc b			;b2e8
	add a,h			;b2e9
	cp l			;b2ea
	nop			;b2eb
	inc b			;b2ec
	inc b			;b2ed
	cp l			;b2ee
	nop			;b2ef
	inc b			;b2f0
	add a,h			;b2f1
	cp l			;b2f2
	ld bc,08404h		;b2f3
	cp c			;b2f6
	nop			;b2f7
	ld (bc),a		;b2f8
	ld (bc),a		;b2f9
	nop			;b2fa
	nop			;b2fb
	inc bc			;b2fc
	inc bc			;b2fd
	inc b			;b2fe
	nop			;b2ff
	inc b			;b300
	inc b			;b301
	or l			;b302
	nop			;b303
	inc b			;b304
	add a,h			;b305
	cp l			;b306
	ld bc,08404h		;b307
	cp c			;b30a
	ld (bc),a		;b30b
	inc b			;b30c
	add a,h			;b30d
	cp l			;b30e
	ld bc,00406h		;b30f
	cp l			;b312
	ld bc,08406h		;b313
	or l			;b316
	jr nc,lb31fh		;b317
	inc b			;b319
	cp l			;b31a
	ld bc,08705h		;b31b
	ld d,(hl)		;b31e
lb31fh:
	ld (bc),a		;b31f
	inc b			;b320
	inc b			;b321
	ld h,a			;b322
	nop			;b323
	add hl,bc		;b324
	ld b,01ch		;b325
	jr nc,lb32ch		;b327
	inc bc			;b329
	inc b			;b32a
	nop			;b32b
lb32ch:
	inc bc			;b32c
	inc bc			;b32d
	nop			;b32e
	nop			;b32f
	ex af,af'		;b330
	adc a,h			;b331
	dec a			;b332
	ld a,(bc)		;b333
	inc c			;b334
	adc a,h			;b335
	inc d			;b336
	inc l			;b337
	inc b			;b338
	inc b			;b339
	dec l			;b33a
	nop			;b33b
	inc bc			;b33c
	inc bc			;b33d
	inc b			;b33e
	nop			;b33f
	inc bc			;b340
	inc bc			;b341
	inc b			;b342
	nop			;b343
	inc bc			;b344
	inc bc			;b345
	inc b			;b346
	nop			;b347
	inc b			;b348
	inc b			;b349
	dec a			;b34a
	nop			;b34b
	inc b			;b34c
	inc b			;b34d
	ld hl,00400h		;b34e
	inc b			;b351
	ld sp,00400h		;b352
	inc b			;b355
	ld hl,00400h		;b356
	add a,h			;b359
	cp l			;b35a
	nop			;b35b
	inc b			;b35c
	add a,h			;b35d
	or c			;b35e
	nop			;b35f
	inc b			;b360
	inc b			;b361
	ld sp,00600h		;b362
	ld a,(bc)		;b365
	ld d,d			;b366
	nop			;b367
	inc b			;b368
	add a,h			;b369
	cp c			;b36a
	ex af,af'		;b36b
	inc bc			;b36c
	inc bc			;b36d
	ld d,(hl)		;b36e
	nop			;b36f
	inc b			;b370
	inc b			;b371
	dec a			;b372
	nop			;b373
	inc b			;b374
	add a,h			;b375
	cp c			;b376
	nop			;b377
	inc b			;b378
	inc b			;b379
	dec a			;b37a
	nop			;b37b
	inc b			;b37c
	add a,h			;b37d
	cp c			;b37e
	nop			;b37f
	ld b,006h		;b380
	dec a			;b382
	inc a			;b383
	ld (bc),a		;b384
	ld (bc),a		;b385
	nop			;b386
	nop			;b387
	inc b			;b388
	add a,h			;b389
	cp l			;b38a
	inc b			;b38b
	inc b			;b38c
	inc b			;b38d
	ld sp,00400h		;b38e
	add a,h			;b391
	or c			;b392
	nop			;b393
	ld b,08ch		;b394
	inc d			;b396
	dec h			;b397
	inc b			;b398
	add a,h			;b399
	ld d,(hl)		;b39a
	ld (bc),a		;b39b
	inc b			;b39c
	add a,h			;b39d
	cp c			;b39e
	nop			;b39f
	ld (bc),a		;b3a0
	add a,d			;b3a1
	ld d,(hl)		;b3a2
	inc bc			;b3a3
	inc c			;b3a4
	inc c			;b3a5
	inc b			;b3a6
	sbc a,c			;b3a7
	dec bc			;b3a8
	sub e			;b3a9
	dec a			;b3aa
	ld b,b			;b3ab
	ld a,(bc)		;b3ac
	add a,l			;b3ad
	ld d,(hl)		;b3ae
	nop			;b3af
	inc c			;b3b0
	adc a,h			;b3b1
	inc d			;b3b2
	and b			;b3b3
	inc b			;b3b4
	inc b			;b3b5
	or l			;b3b6
	nop			;b3b7
	jp z,04e93h		;b3b8
	sub (hl)		;b3bb
	ld b,(hl)		;b3bc
	sbc a,d			;b3bd
	ld a,09ch		;b3be
	and d			;b3c0
	sbc a,l			;b3c1
	sbc a,d			;b3c2
	sbc a,a			;b3c3
	ld h,a			;b3c4
	and d			;b3c5
	ld l,a			;b3c6
	and e			;b3c7
	ld c,e			;b3c8
	and h			;b3c9
	djnz lb3cch		;b3ca
lb3cch:
	ld h,l			;b3cc
	dec b			;b3cd
	rst 38h			;b3ce
	djnz lb3f3h		;b3cf
	ld e,a			;b3d1
	ld b,001h		;b3d2
	ld (bc),a		;b3d4
	djnz lb3ffh		;b3d5
	ld d,c			;b3d7
	adc a,l			;b3d8
	ld b,002h		;b3d9
	rra			;b3db
	inc bc			;b3dc
	ld (bc),a		;b3dd
	add a,(hl)		;b3de
	inc bc			;b3df
	ld (de),a		;b3e0
	nop			;b3e1
	djnz lb414h		;b3e2
	ld d,c			;b3e4
	adc a,l			;b3e5
	ld b,010h		;b3e6
	rra			;b3e8
	inc bc			;b3e9
	ld (bc),a		;b3ea
	add a,(hl)		;b3eb
	inc bc			;b3ec
lb3edh:
	ld (de),a		;b3ed
	ld bc,03810h		;b3ee
	ld d,c			;b3f1
	adc a,l			;b3f2
lb3f3h:
	ld b,002h		;b3f3
	rra			;b3f5
	inc b			;b3f6
	ld (bc),a		;b3f7
	add a,(hl)		;b3f8
	inc bc			;b3f9
	ld (de),a		;b3fa
	nop			;b3fb
	djnz lb43eh		;b3fc
	ld d,c			;b3fe
lb3ffh:
	adc a,(hl)		;b3ff
	ex af,af'		;b400
	ld bc,0031fh		;b401
	ld bc,00220h		;b404
	ld h,b			;b407
	ld (bc),a		;b408
	djnz lb41bh		;b409
	ld b,h			;b40b
lb40ch:
	ld d,c			;b40c
	adc a,l			;b40d
	ld b,010h		;b40e
	rra			;b410
	inc b			;b411
lb412h:
	ld (bc),a		;b412
	add a,(hl)		;b413
lb414h:
	inc bc			;b414
	ld (de),a		;b415
	ld bc,04c10h		;b416
	ld d,c			;b419
	adc a,l			;b41a
lb41bh:
	ld b,006h		;b41b
	rra			;b41d
	inc b			;b41e
	ld (bc),a		;b41f
	add a,(hl)		;b420
	inc bc			;b421
	ld (de),a		;b422
	nop			;b423
	sub b			;b424
	ld d,b			;b425
lb426h:
	ld d,c			;b426
	adc a,(hl)		;b427
	ex af,af'		;b428
	ld bc,0031fh		;b429
	ld bc,00220h		;b42c
	ld (hl),b		;b42f
	ld (bc),a		;b430
	djnz $+18		;b431
	ld l,b			;b433
	ld e,005h		;b434
	add a,d			;b436
	djnz lb4a2h		;b437
	ld e,005h		;b439
	rrca			;b43b
	sub b			;b43c
	add a,b			;b43d
lb43eh:
	ld d,c			;b43e
	adc a,l			;b43f
	ld b,008h		;b440
	ld bc,00203h		;b442
	ex af,af'		;b445
	inc bc			;b446
	jr lb40ch		;b447
	djnz $-126		;b449
	ld d,c			;b44b
	adc a,l			;b44c
	ld b,008h		;b44d
lb44fh:
	rra			;b44f
	inc b			;b450
	ld (bc),a		;b451
	add a,(hl)		;b452
	inc bc			;b453
	jr lb457h		;b454
	sub b			;b456
lb457h:
	adc a,b			;b457
	ld d,c			;b458
	adc a,l			;b459
lb45ah:
	ld b,002h		;b45a
	ld bc,00203h		;b45c
	ex af,af'		;b45f
	inc bc			;b460
	jr lb426h		;b461
	djnz lb3edh		;b463
	ld d,c			;b465
	adc a,l			;b466
	ld b,00ch		;b467
	rra			;b469
	inc b			;b46a
	ld (bc),a		;b46b
	add a,(hl)		;b46c
	inc bc			;b46d
	jr lb472h		;b46e
	djnz lb412h		;b470
lb472h:
	ld h,l			;b472
	dec b			;b473
lb474h:
	rst 38h			;b474
	djnz $-94		;b475
	ld d,c			;b477
	adc a,l			;b478
	ld b,002h		;b479
	rra			;b47b
	inc b			;b47c
lb47dh:
	ld (bc),a		;b47d
	inc b			;b47e
	inc bc			;b47f
	dec d			;b480
	ld bc,la810h		;b481
	ld d,c			;b484
	adc a,l			;b485
	ld b,003h		;b486
	rra			;b488
lb489h:
	inc b			;b489
	ld (bc),a		;b48a
	inc b			;b48b
	inc bc			;b48c
	dec d			;b48d
	ld bc,lb010h		;b48e
	ld d,c			;b491
	adc a,l			;b492
	ld b,002h		;b493
	rra			;b495
	inc b			;b496
lb497h:
	ld (bc),a		;b497
	inc b			;b498
	inc bc			;b499
	dec d			;b49a
	dec b			;b49b
	djnz lb44fh		;b49c
	ld e,a			;b49e
lb49fh:
	ld b,001h		;b49f
	nop			;b4a1
lb4a2h:
	djnz lb45ah		;b4a2
	ld d,c			;b4a4
	adc a,l			;b4a5
lb4a6h:
	ld b,002h		;b4a6
	rra			;b4a8
	inc b			;b4a9
	ld (bc),a		;b4aa
	inc b			;b4ab
	inc bc			;b4ac
	dec d			;b4ad
lb4aeh:
	dec b			;b4ae
	djnz lb474h		;b4af
	inc h			;b4b1
	ld b,012h		;b4b2
	nop			;b4b4
	djnz lb47dh		;b4b5
	rra			;b4b7
	dec b			;b4b8
	ex af,af'		;b4b9
	djnz lb489h		;b4ba
	rra			;b4bc
	dec b			;b4bd
	rlca			;b4be
	djnz lb497h		;b4bf
	jr nz,lb4c8h		;b4c1
	dec bc			;b4c3
	djnz lb49fh		;b4c4
	jr nz,$+7		;b4c6
lb4c8h:
	dec bc			;b4c8
	djnz lb4a6h		;b4c9
	inc h			;b4cb
	ld b,012h		;b4cc
	nop			;b4ce
	djnz lb4aeh		;b4cf
	jr nz,lb4d8h		;b4d1
	inc b			;b4d3
	sub b			;b4d4
	call po,00520h		;b4d5
lb4d8h:
	ld a,(bc)		;b4d8
	djnz $-23		;b4d9
	ld (00a05h),hl		;b4db
	sub b			;b4de
	jp pe,00520h		;b4df
	inc c			;b4e2
	sub b			;b4e3
	call pe,00520h		;b4e4
	dec c			;b4e7
	djnz $-12		;b4e8
	ld h,08ah		;b4ea
	inc b			;b4ec
	rrca			;b4ed
	inc bc			;b4ee
	inc bc			;b4ef
	ld (bc),a		;b4f0
	ld de,0f610h		;b4f1
	ld d,l			;b4f4
	ld b,010h		;b4f5
	ld a,(de)		;b4f7
	sub c			;b4f8
	dec b			;b4f9
	ld h,08ah		;b4fa
	inc b			;b4fc
	dec c			;b4fd
	inc bc			;b4fe
	inc bc			;b4ff
	ld (bc),a		;b500
	ld de,00b11h		;b501
	ld d,l			;b504
	ld b,010h		;b505
	sub (hl)		;b507
	ld de,02019h		;b508
	dec b			;b50b
	dec c			;b50c
	ld de,0551dh		;b50d
	ld b,010h		;b510
	sbc a,h			;b512
	sub c			;b513
	inc h			;b514
	jr nz,lb51ch		;b515
	rrca			;b517
	sub c			;b518
	daa			;b519
	jr nz,lb521h		;b51a
lb51ch:
	rrca			;b51c
	ld de,0202ah		;b51d
	dec b			;b520
lb521h:
	dec c			;b521
	ld de,0552dh		;b522
	ld b,010h		;b525
	sbc a,l			;b527
	sub c			;b528
	ld (hl),020h		;b529
	dec b			;b52b
	rrca			;b52c
	sub c			;b52d
	add hl,sp		;b52e
	jr nz,lb536h		;b52f
	rrca			;b531
	ld de,0203dh		;b532
	dec b			;b535
lb536h:
	dec c			;b536
	ld de,0243fh		;b537
	ld b,012h		;b53a
	nop			;b53c
	ld de,02041h		;b53d
lb540h:
	dec b			;b540
	inc c			;b541
	ld de,01f42h		;b542
	dec b			;b545
	add hl,bc		;b546
	ld de,01f48h		;b547
	dec b			;b54a
	ld b,011h		;b54b
	ld d,c			;b54d
	jr nz,lb555h		;b54e
	inc b			;b550
	ld de,02054h		;b551
	dec b			;b554
lb555h:
	inc b			;b555
	ld de,02457h		;b556
	ld b,012h		;b559
	nop			;b55b
	sub c			;b55c
	ld d,(hl)		;b55d
	jr nz,lb565h		;b55e
	add hl,bc		;b560
	sub c			;b561
	ld e,b			;b562
	jr nz,lb56ah		;b563
lb565h:
	ld a,(bc)		;b565
	ld de,0225ch		;b566
	dec b			;b569
lb56ah:
	ld a,(bc)		;b56a
	ld de,02265h		;b56b
	dec b			;b56e
	dec c			;b56f
	sub c			;b570
	ld h,a			;b571
	ld d,c			;b572
	adc a,l			;b573
	ld b,002h		;b574
	ld bc,00203h		;b576
	ex af,af'		;b579
	inc bc			;b57a
	jr lb540h		;b57b
	ld de,0266eh		;b57d
	adc a,d			;b580
	inc b			;b581
	rrca			;b582
	inc bc			;b583
	inc bc			;b584
	ld (bc),a		;b585
	ld de,07411h		;b586
	jr nz,lb590h		;b589
	dec c			;b58b
	ld de,02077h		;b58c
	dec b			;b58f
lb590h:
	dec c			;b590
	ld de,0267eh		;b591
	adc a,d			;b594
	inc b			;b595
	rrca			;b596
	inc bc			;b597
	inc bc			;b598
	ld (bc),a		;b599
	ld de,08311h		;b59a
	ld (00d05h),hl		;b59d
	ld de,02487h		;b5a0
	ld b,012h		;b5a3
	nop			;b5a5
	ld de,02089h		;b5a6
	dec b			;b5a9
	dec bc			;b5aa
	ld de,01f8ah		;b5ab
	dec b			;b5ae
lb5afh:
	ex af,af'		;b5af
	ld de,05190h		;b5b0
	adc a,l			;b5b3
	ld b,004h		;b5b4
	rra			;b5b6
	ld (bc),a		;b5b7
	ld (bc),a		;b5b8
	inc b			;b5b9
	inc bc			;b5ba
	dec d			;b5bb
	dec b			;b5bc
	ld de,01f91h		;b5bd
	dec b			;b5c0
	rlca			;b5c1
	ld de,05198h		;b5c2
	adc a,l			;b5c5
	ld b,002h		;b5c6
	rra			;b5c8
	ld (bc),a		;b5c9
	ld (bc),a		;b5ca
	inc b			;b5cb
	inc bc			;b5cc
	dec d			;b5cd
	dec b			;b5ce
	ld de,01f99h		;b5cf
	dec b			;b5d2
	ex af,af'		;b5d3
	ld de,0249fh		;b5d4
	ld b,012h		;b5d7
	nop			;b5d9
	ld de,01fa0h		;b5da
	dec b			;b5dd
	ld bc,0ac91h		;b5de
	ld d,c			;b5e1
	adc a,l			;b5e2
	ld b,002h		;b5e3
	ld bc,00203h		;b5e5
	ex af,af'		;b5e8
	inc bc			;b5e9
	jr lb5afh		;b5ea
	jr nz,lb5f0h		;b5ec
	jr nz,lb5f5h		;b5ee
lb5f0h:
	inc h			;b5f0
	jr nz,$+6		;b5f1
	jr nz,lb5fah		;b5f3
lb5f5h:
	dec l			;b5f5
	jr nz,lb5fch		;b5f6
	jr nz,lb5ffh		;b5f8
lb5fah:
	jr nc,$+34		;b5fa
lb5fch:
	inc b			;b5fc
	rra			;b5fd
	dec b			;b5fe
lb5ffh:
	ld h,020h		;b5ff
	dec b			;b601
	rra			;b602
	dec b			;b603
	ld (004b0h),a		;b604
	ld d,c			;b607
	adc a,l			;b608
	ld b,002h		;b609
	rra			;b60b
	ld (bc),a		;b60c
	ld (bc),a		;b60d
	inc b			;b60e
	inc bc			;b60f
	dec d			;b610
	dec b			;b611
	jr nc,lb61ah		;b612
	rra			;b614
	dec b			;b615
	dec c			;b616
	or b			;b617
	ex af,af'		;b618
	ld d,c			;b619
lb61ah:
	adc a,l			;b61a
	ld b,003h		;b61b
	rra			;b61d
	ld (bc),a		;b61e
	ld (bc),a		;b61f
	inc b			;b620
	inc bc			;b621
	dec d			;b622
	dec b			;b623
	or b			;b624
	inc c			;b625
	pop de			;b626
	adc a,l			;b627
	ld b,004h		;b628
	rra			;b62a
	ld (bc),a		;b62b
	ld (bc),a		;b62c
	inc b			;b62d
	inc bc			;b62e
	dec d			;b62f
	dec b			;b630
	jr nc,$+15		;b631
	rra			;b633
	dec b			;b634
	rrca			;b635
	jr nc,lb650h		;b636
	ld d,(hl)		;b638
	dec b			;b639
	nop			;b63a
	jr nc,lb676h		;b63b
	ld b,a			;b63d
	dec b			;b63e
	ld c,040h		;b63f
	jr z,lb6a2h		;b641
	dec b			;b643
	inc bc			;b644
	ld d,b			;b645
	nop			;b646
	ld h,h			;b647
	adc a,b			;b648
	ld (bc),a		;b649
	inc c			;b64a
	ld (bc),a		;b64b
	dec a			;b64c
	nop			;b64d
	djnz lb671h		;b64e
lb650h:
	ld d,c			;b650
	adc a,l			;b651
	ld b,010h		;b652
	rra			;b654
	inc bc			;b655
	ld (bc),a		;b656
	add a,(hl)		;b657
	inc bc			;b658
	ld (de),a		;b659
	nop			;b65a
	djnz $+41		;b65b
	add hl,de		;b65d
	ld b,014h		;b65e
	ld e,010h		;b660
	daa			;b662
	ld d,c			;b663
	adc a,l			;b664
	ld b,010h		;b665
	rra			;b667
	inc bc			;b668
	ld (bc),a		;b669
	add a,(hl)		;b66a
	inc bc			;b66b
	ld (de),a		;b66c
	ld bc,02f10h		;b66d
	ld d,c			;b670
lb671h:
	adc a,l			;b671
	ld b,008h		;b672
	rra			;b674
	inc bc			;b675
lb676h:
	ld (bc),a		;b676
	add a,(hl)		;b677
	inc bc			;b678
	ld (de),a		;b679
	nop			;b67a
	djnz lb6aeh		;b67b
	ld d,c			;b67d
	adc a,(hl)		;b67e
	ex af,af'		;b67f
	ld bc,0041fh		;b680
	ld bc,00320h		;b683
	ld c,b			;b686
	ld (bc),a		;b687
	djnz $+18		;b688
	scf			;b68a
	add hl,de		;b68b
	ld b,014h		;b68c
	ld e,010h		;b68e
	ld b,e			;b690
	add hl,hl		;b691
	dec b			;b692
	ld (de),a		;b693
	djnz $+71		;b694
	add hl,hl		;b696
	dec b			;b697
	ld (de),a		;b698
lb699h:
	djnz lb6e6h		;b699
	add hl,hl		;b69b
	dec b			;b69c
	inc d			;b69d
	djnz lb6edh		;b69e
	add hl,hl		;b6a0
	dec b			;b6a1
lb6a2h:
	inc d			;b6a2
	djnz lb6f4h		;b6a3
	ld d,c			;b6a5
	adc a,l			;b6a6
	ld b,008h		;b6a7
	rra			;b6a9
	inc b			;b6aa
	ld (bc),a		;b6ab
	add a,(hl)		;b6ac
	inc bc			;b6ad
lb6aeh:
	jr lb6b0h		;b6ae
lb6b0h:
	djnz lb703h		;b6b0
	add hl,hl		;b6b2
	dec b			;b6b3
	add a,h			;b6b4
	djnz lb70eh		;b6b5
	ld d,c			;b6b7
	adc a,l			;b6b8
	ld b,004h		;b6b9
lb6bbh:
	rra			;b6bb
	inc b			;b6bc
	ld (bc),a		;b6bd
	add a,(hl)		;b6be
	inc bc			;b6bf
	jr lb6c2h		;b6c0
lb6c2h:
	djnz lb71fh		;b6c2
	add hl,de		;b6c4
	ld b,014h		;b6c5
	ld e,010h		;b6c7
	ld h,d			;b6c9
	add hl,hl		;b6ca
	dec b			;b6cb
	add a,e			;b6cc
	djnz lb733h		;b6cd
	add hl,hl		;b6cf
	dec b			;b6d0
	add a,e			;b6d1
	djnz lb73dh		;b6d2
	daa			;b6d4
	dec b			;b6d5
	inc c			;b6d6
	djnz lb74ah		;b6d7
	add hl,de		;b6d9
	ld b,014h		;b6da
	ld e,010h		;b6dc
	ld (hl),c		;b6de
	daa			;b6df
	dec b			;b6e0
	ex af,af'		;b6e1
	djnz $+121		;b6e2
	ld d,c			;b6e4
	adc a,l			;b6e5
lb6e6h:
	ld b,008h		;b6e6
	rra			;b6e8
	inc b			;b6e9
	ld (bc),a		;b6ea
	add a,(hl)		;b6eb
	inc bc			;b6ec
lb6edh:
	jr lb6efh		;b6ed
lb6efh:
	djnz lb76ah		;b6ef
	daa			;b6f1
	dec b			;b6f2
	ld (de),a		;b6f3
lb6f4h:
	djnz lb770h		;b6f4
	add hl,de		;b6f6
lb6f7h:
	ld b,094h		;b6f7
	ld bc,08110h		;b6f9
	daa			;b6fc
	dec b			;b6fd
lb6feh:
	ld c,010h		;b6fe
	add a,l			;b700
	add hl,hl		;b701
	dec b			;b702
lb703h:
	add a,e			;b703
	djnz $-119		;b704
	add hl,de		;b706
	ld b,014h		;b707
	ld e,010h		;b709
	add a,a			;b70b
	add hl,hl		;b70c
	dec b			;b70d
lb70eh:
	add a,e			;b70e
	djnz lb699h		;b70f
	ld e,a			;b711
	ld b,001h		;b712
	ld bc,08f10h		;b714
	ld l,007h		;b717
	ld (bc),a		;b719
	add a,d			;b71a
	add a,d			;b71b
	djnz lb6bbh		;b71c
	add hl,hl		;b71e
lb71fh:
	dec b			;b71f
	inc d			;b720
	djnz lb6c2h		;b721
	add hl,hl		;b723
	dec b			;b724
	inc d			;b725
	djnz $-94		;b726
	add hl,hl		;b728
	dec b			;b729
	add a,e			;b72a
	sub b			;b72b
	and l			;b72c
	add hl,hl		;b72d
	dec b			;b72e
	inc d			;b72f
	sub b			;b730
	xor c			;b731
	add hl,hl		;b732
lb733h:
	dec b			;b733
	add a,l			;b734
	djnz $-78		;b735
	ld e,a			;b737
	ld b,001h		;b738
	nop			;b73a
	djnz $-75		;b73b
lb73dh:
	add hl,hl		;b73d
	dec b			;b73e
	add a,h			;b73f
	djnz lb6f7h		;b740
	add hl,hl		;b742
	dec b			;b743
	add a,(hl)		;b744
	djnz lb6feh		;b745
	add hl,hl		;b747
	dec b			;b748
	adc a,b			;b749
lb74ah:
	jr nz,lb74dh		;b74a
	add hl,hl		;b74c
lb74dh:
	dec b			;b74d
	and b			;b74e
	jr nz,lb752h		;b74f
	add hl,hl		;b751
lb752h:
	dec b			;b752
	and d			;b753
	jr nz,lb757h		;b754
	dec hl			;b756
lb757h:
	adc a,c			;b757
	inc bc			;b758
	xor b			;b759
	djnz lb75eh		;b75a
	ld d,0a0h		;b75c
lb75eh:
	inc bc			;b75e
	add hl,hl		;b75f
	dec b			;b760
	dec c			;b761
	and b			;b762
	inc bc			;b763
	add hl,hl		;b764
	dec b			;b765
	rrca			;b766
	jr nz,lb772h		;b767
	add hl,hl		;b769
lb76ah:
	dec b			;b76a
	dec d			;b76b
	and b			;b76c
	dec bc			;b76d
	add hl,hl		;b76e
	dec b			;b76f
lb770h:
	dec c			;b770
	and b			;b771
lb772h:
	dec bc			;b772
	add hl,hl		;b773
	dec b			;b774
	rrca			;b775
	jr nz,lb78dh		;b776
	ld e,a			;b778
	ld b,001h		;b779
	ld bc,01520h		;b77b
	ld l,007h		;b77e
	dec e			;b780
	nop			;b781
	add a,d			;b782
	and b			;b783
	dec de			;b784
	dec hl			;b785
	adc a,c			;b786
	inc bc			;b787
	add hl,bc		;b788
	djnz lb78dh		;b789
	ld d,020h		;b78b
lb78dh:
	ld hl,0072eh		;b78d
	dec h			;b790
	nop			;b791
	add a,d			;b792
	and b			;b793
	inc hl			;b794
	add hl,hl		;b795
	dec b			;b796
	ld a,(bc)		;b797
	jr nc,lb79ah		;b798
lb79ah:
	add hl,hl		;b79a
	dec b			;b79b
	adc a,b			;b79c
	jr nc,lb79fh		;b79d
lb79fh:
	add hl,hl		;b79f
	dec b			;b7a0
	inc d			;b7a1
	jr nc,lb7a6h		;b7a2
	add hl,hl		;b7a4
	dec b			;b7a5
lb7a6h:
	adc a,b			;b7a6
	jr nc,lb7abh		;b7a7
	add hl,hl		;b7a9
	dec b			;b7aa
lb7abh:
	inc d			;b7ab
	jr nc,$+6		;b7ac
	add hl,hl		;b7ae
	dec b			;b7af
	adc a,d			;b7b0
	jr nc,$+6		;b7b1
	add hl,hl		;b7b3
	dec b			;b7b4
	ld (de),a		;b7b5
	jr nc,lb7beh		;b7b6
	add hl,hl		;b7b8
	dec b			;b7b9
	adc a,d			;b7ba
	jr nc,lb7c3h		;b7bb
	add hl,hl		;b7bd
lb7beh:
	dec b			;b7be
	ld (de),a		;b7bf
	jr nc,lb7ceh		;b7c0
	add hl,hl		;b7c2
lb7c3h:
	dec b			;b7c3
	inc d			;b7c4
	jr nc,lb7d5h		;b7c5
	add hl,hl		;b7c7
	dec b			;b7c8
	inc d			;b7c9
	jr nc,lb7e4h		;b7ca
	ld d,c			;b7cc
	adc a,l			;b7cd
lb7ceh:
	ld b,004h		;b7ce
	rra			;b7d0
	inc b			;b7d1
	ld (bc),a		;b7d2
	add a,(hl)		;b7d3
	inc bc			;b7d4
lb7d5h:
	jr lb7d7h		;b7d5
lb7d7h:
	jr nc,lb7f3h		;b7d7
	dec l			;b7d9
	dec b			;b7da
	add a,e			;b7db
	jr nc,lb7f8h		;b7dc
	dec l			;b7de
	dec b			;b7df
	inc d			;b7e0
	jr nc,lb803h		;b7e1
	ld e,a			;b7e3
lb7e4h:
	ld b,001h		;b7e4
	nop			;b7e6
	jr nc,$+42		;b7e7
	dec l			;b7e9
	dec b			;b7ea
	add a,e			;b7eb
	jr nc,$+42		;b7ec
	dec l			;b7ee
	dec b			;b7ef
	inc d			;b7f0
	jr nc,$+53		;b7f1
lb7f3h:
	add hl,hl		;b7f3
	dec b			;b7f4
	inc d			;b7f5
	jr nc,lb82dh		;b7f6
lb7f8h:
	add hl,hl		;b7f8
	dec b			;b7f9
	inc d			;b7fa
	jr nc,lb835h		;b7fb
	add hl,hl		;b7fd
	dec b			;b7fe
	ld (de),a		;b7ff
	jr nc,lb83fh		;b800
	add hl,hl		;b802
lb803h:
	dec b			;b803
	add a,e			;b804
	jr nc,lb845h		;b805
	ld e,a			;b807
	ld b,001h		;b808
	ld bc,03f30h		;b80a
	add hl,hl		;b80d
	dec b			;b80e
	add a,e			;b80f
	jr nc,lb853h		;b810
lb812h:
	ld sp,00a06h		;b812
	ld bc,04c30h		;b815
	ld sp,00a06h		;b818
	nop			;b81b
lb81ch:
	jr nc,lb86eh		;b81c
	ld d,c			;b81e
	adc a,(hl)		;b81f
	ex af,af'		;b820
	ld bc,0031fh		;b821
	ld bc,00320h		;b824
	ld (hl),b		;b827
	ld (bc),a		;b828
	djnz $+50		;b829
	ld d,b			;b82b
	add hl,hl		;b82c
lb82dh:
	dec b			;b82d
	add a,e			;b82e
	jr nc,lb883h		;b82f
	add hl,hl		;b831
lb832h:
	dec b			;b832
	add a,e			;b833
	or b			;b834
lb835h:
	ld d,h			;b835
	add hl,hl		;b836
	dec b			;b837
lb838h:
	adc a,h			;b838
	jr nc,lb88fh		;b839
	add hl,hl		;b83b
	dec b			;b83c
	ld (de),a		;b83d
	or b			;b83e
lb83fh:
	ld d,(hl)		;b83f
	add hl,hl		;b840
	dec b			;b841
	adc a,h			;b842
	jr nc,$+88		;b843
lb845h:
	add hl,hl		;b845
	dec b			;b846
	ld (de),a		;b847
	jr nc,$+95		;b848
	ld sp,00a06h		;b84a
	ld bc,060b0h		;b84d
	add hl,hl		;b850
	dec b			;b851
	inc d			;b852
lb853h:
	or b			;b853
	ld h,d			;b854
	add hl,hl		;b855
	dec b			;b856
	inc d			;b857
	jr nc,$+103		;b858
	ld sp,00a06h		;b85a
	nop			;b85d
	jr nc,lb8c7h		;b85e
	pop de			;b860
	adc a,l			;b861
	ld b,008h		;b862
	rra			;b864
	inc b			;b865
	ld (bc),a		;b866
	add a,(hl)		;b867
	inc bc			;b868
lb869h:
	jr lb86bh		;b869
lb86bh:
	jr nc,lb8d5h		;b86b
	add hl,hl		;b86d
lb86eh:
	dec b			;b86e
	add a,e			;b86f
lb870h:
	jr nc,lb8dch		;b870
	add hl,hl		;b872
	dec b			;b873
	add a,e			;b874
	jr nc,lb8e4h		;b875
lb877h:
	ld sp,00a06h		;b877
	ld bc,07030h		;b87a
	dec hl			;b87d
	adc a,c			;b87e
	inc bc			;b87f
	inc d			;b880
lb881h:
	djnz lb885h		;b881
lb883h:
	ld d,030h		;b883
lb885h:
	ld a,h			;b885
	ld sp,00a06h		;b886
	ld bc,07e30h		;b889
	add hl,hl		;b88c
lb88dh:
	dec b			;b88d
	inc d			;b88e
lb88fh:
	jr nc,lb812h		;b88f
	ld sp,00a06h		;b891
	nop			;b894
	jr nc,lb81ch		;b895
	ld sp,00a06h		;b897
	ld bc,08a30h		;b89a
	dec l			;b89d
	dec b			;b89e
	add a,e			;b89f
	jr nc,lb832h		;b8a0
	ld e,a			;b8a2
	ld b,001h		;b8a3
	nop			;b8a5
	jr nc,lb838h		;b8a6
	dec l			;b8a8
	dec b			;b8a9
	inc d			;b8aa
	jr nc,lb83fh		;b8ab
	pop de			;b8ad
	adc a,l			;b8ae
	ld b,00ah		;b8af
	rra			;b8b1
	inc b			;b8b2
	ld (bc),a		;b8b3
	add a,(hl)		;b8b4
	inc bc			;b8b5
	jr lb8b8h		;b8b6
lb8b8h:
	or b			;b8b8
	sub d			;b8b9
	ld d,c			;b8ba
	adc a,(hl)		;b8bb
	ex af,af'		;b8bc
lb8bdh:
	ld bc,0031fh		;b8bd
	ld bc,00320h		;b8c0
	ld (hl),b		;b8c3
	ld (bc),a		;b8c4
	djnz lb8f7h		;b8c5
lb8c7h:
	sbc a,d			;b8c7
	add hl,hl		;b8c8
	dec b			;b8c9
	inc c			;b8ca
	jr nc,lb869h		;b8cb
	add hl,hl		;b8cd
	dec b			;b8ce
	adc a,d			;b8cf
	jr nc,lb870h		;b8d0
	add hl,hl		;b8d2
	dec b			;b8d3
	adc a,d			;b8d4
lb8d5h:
	jr nc,lb877h		;b8d5
	add hl,hl		;b8d7
	dec b			;b8d8
	inc c			;b8d9
	jr nc,lb881h		;b8da
lb8dch:
	add hl,hl		;b8dc
	dec b			;b8dd
	djnz lb910h		;b8de
	and a			;b8e0
	add hl,hl		;b8e1
	dec b			;b8e2
	add a,(hl)		;b8e3
lb8e4h:
	jr nc,lb88dh		;b8e4
	add hl,hl		;b8e6
	dec b			;b8e7
	djnz lb91ah		;b8e8
	xor c			;b8ea
	add hl,hl		;b8eb
	dec b			;b8ec
	add a,(hl)		;b8ed
	jr nc,$-85		;b8ee
	add hl,hl		;b8f0
	dec b			;b8f1
	djnz lb924h		;b8f2
	xor (hl)		;b8f4
	ld d,e			;b8f5
	adc a,b			;b8f6
lb8f7h:
	ld (bc),a		;b8f7
	nop			;b8f8
	ld (bc),a		;b8f9
	ld hl,(0b830h)		;b8fa
	cpl			;b8fd
	dec b			;b8fe
	sbc a,b			;b8ff
	jr nc,lb8bdh		;b900
	cpl			;b902
	dec b			;b903
	adc a,(hl)		;b904
	jr nc,$-67		;b905
	cpl			;b907
	dec b			;b908
	sub c			;b909
	ld b,b			;b90a
	ld (bc),a		;b90b
	cpl			;b90c
	dec b			;b90d
	sbc a,c			;b90e
	ld b,b			;b90f
lb910h:
	inc bc			;b910
	cpl			;b911
	dec b			;b912
	inc e			;b913
	ld b,b			;b914
	ld b,02fh		;b915
	dec b			;b917
	ld a,(de)		;b918
	ld b,b			;b919
lb91ah:
	ex af,af'		;b91a
	cpl			;b91b
	dec b			;b91c
	add a,l			;b91d
	ret nz			;b91e
	add hl,bc		;b91f
	xor c			;b920
	dec b			;b921
	adc a,b			;b922
	ret nz			;b923
lb924h:
	add hl,bc		;b924
	add hl,hl		;b925
	dec b			;b926
	adc a,d			;b927
	ld b,b			;b928
	add hl,bc		;b929
	add hl,hl		;b92a
	dec b			;b92b
	ld d,040h		;b92c
	dec bc			;b92e
	cpl			;b92f
	dec b			;b930
	inc bc			;b931
	ld b,b			;b932
	ld c,02fh		;b933
	dec b			;b935
	add a,l			;b936
	ld b,b			;b937
	rrca			;b938
	xor c			;b939
	dec b			;b93a
	ex af,af'		;b93b
	ld b,b			;b93c
	rrca			;b93d
	add hl,hl		;b93e
	dec b			;b93f
	ld a,(bc)		;b940
	ld b,b			;b941
	djnz lb973h		;b942
	dec b			;b944
	ld (bc),a		;b945
	ld b,b			;b946
	rla			;b947
	add hl,hl		;b948
	dec b			;b949
	inc d			;b94a
	ld b,b			;b94b
	rla			;b94c
	add hl,hl		;b94d
	dec b			;b94e
	ld d,040h		;b94f
	jr nz,lb982h		;b951
	dec b			;b953
	inc bc			;b954
	ld b,b			;b955
	ld hl,0052fh		;b956
	dec b			;b959
	ld b,b			;b95a
	inc hl			;b95b
	add hl,hl		;b95c
	dec b			;b95d
	adc a,b			;b95e
	ld b,b			;b95f
	inc hl			;b960
	add hl,hl		;b961
	dec b			;b962
	adc a,d			;b963
	ld b,b			;b964
	dec h			;b965
	cpl			;b966
	dec b			;b967
	inc bc			;b968
	ld b,b			;b969
	daa			;b96a
	cpl			;b96b
	dec b			;b96c
	ld b,040h		;b96d
	daa			;b96f
	cpl			;b970
	dec b			;b971
	rla			;b972
lb973h:
	ld b,b			;b973
	jr z,$+49		;b974
	dec b			;b976
lb977h:
	dec de			;b977
	ld b,b			;b978
	add hl,hl		;b979
	cpl			;b97a
	dec b			;b97b
	jr lb9beh		;b97c
	dec (hl)		;b97e
	add hl,hl		;b97f
	dec b			;b980
	sub (hl)		;b981
lb982h:
	ld b,b			;b982
	dec (hl)		;b983
	add hl,hl		;b984
	dec b			;b985
	sbc a,b			;b986
	ld b,b			;b987
	ld b,e			;b988
	add hl,hl		;b989
	dec b			;b98a
	ld d,040h		;b98b
	ld b,e			;b98d
	add hl,hl		;b98e
	dec b			;b98f
	jr lb9e2h		;b990
	inc b			;b992
	dec hl			;b993
	adc a,c			;b994
	inc bc			;b995
	add a,e			;b996
	jr lb99bh		;b997
	ld d,050h		;b999
lb99bh:
	inc b			;b99b
	dec hl			;b99c
	adc a,c			;b99d
	inc bc			;b99e
	inc d			;b99f
	jr z,lb9a4h		;b9a0
	ld d,050h		;b9a2
lb9a4h:
	djnz lb977h		;b9a4
	adc a,(hl)		;b9a6
	ex af,af'		;b9a7
	ld bc,0031fh		;b9a8
	ld bc,00320h		;b9ab
	ld c,b			;b9ae
	ld (bc),a		;b9af
	djnz lba02h		;b9b0
	ld de,00529h		;b9b2
	inc d			;b9b5
	ld d,b			;b9b6
	ld de,00529h		;b9b7
	add a,e			;b9ba
	ld d,b			;b9bb
	inc de			;b9bc
	add hl,hl		;b9bd
lb9beh:
	dec b			;b9be
	inc d			;b9bf
	ld d,b			;b9c0
	inc de			;b9c1
	add hl,hl		;b9c2
	dec b			;b9c3
	add a,e			;b9c4
	ld d,b			;b9c5
	jr $+97			;b9c6
	ld b,001h		;b9c8
	ld bc,02450h		;b9ca
	and a			;b9cd
	dec b			;b9ce
	ld b,050h		;b9cf
	jr z,lb9a4h		;b9d1
	adc a,l			;b9d3
	ld b,00ah		;b9d4
	rra			;b9d6
	inc b			;b9d7
	ld (bc),a		;b9d8
	add a,(hl)		;b9d9
	inc bc			;b9da
	jr lb9ddh		;b9db
lb9ddh:
	ld d,b			;b9dd
	jr z,lba11h		;b9de
	ld b,00ah		;b9e0
lb9e2h:
	nop			;b9e2
	ld d,b			;b9e3
	jr c,lba13h		;b9e4
	dec b			;b9e6
	add a,e			;b9e7
	ld d,b			;b9e8
	add hl,sp		;b9e9
	dec l			;b9ea
	dec b			;b9eb
	inc d			;b9ec
	ld d,b			;b9ed
	ld b,c			;b9ee
	or c			;b9ef
	ld b,00ah		;b9f0
	ld bc,04750h		;b9f2
	dec hl			;b9f5
	adc a,c			;b9f6
	inc bc			;b9f7
	add a,e			;b9f8
	djnz lb9fdh		;b9f9
	ld d,050h		;b9fb
lb9fdh:
	ld c,b			;b9fd
	ld e,a			;b9fe
	ld b,001h		;b9ff
	nop			;ba01
lba02h:
	ld d,b			;ba02
	ld d,b			;ba03
	ld d,c			;ba04
	adc a,l			;ba05
	ld b,004h		;ba06
	rra			;ba08
	inc b			;ba09
	ld (bc),a		;ba0a
	add a,(hl)		;ba0b
	inc bc			;ba0c
	jr lba0fh		;ba0d
lba0fh:
	ld d,b			;ba0f
	ld d,d			;ba10
lba11h:
	dec hl			;ba11
	adc a,c			;ba12
lba13h:
	inc bc			;ba13
	inc d			;ba14
	djnz lba19h		;ba15
	ld d,050h		;ba17
lba19h:
	add a,b			;ba19
	ld e,a			;ba1a
	dec b			;ba1b
	inc bc			;ba1c
	ld d,b			;ba1d
	adc a,c			;ba1e
	inc a			;ba1f
	ld b,001h		;ba20
	nop			;ba22
	ld d,b			;ba23
	adc a,c			;ba24
	inc a			;ba25
	ld b,012h		;ba26
	ld (bc),a		;ba28
	ld d,b			;ba29
	sbc a,b			;ba2a
	inc a			;ba2b
	ld b,001h		;ba2c
	ld bc,09850h		;ba2e
	inc a			;ba31
	ld b,013h		;ba32
	inc bc			;ba34
	ld d,b			;ba35
	sbc a,(hl)		;ba36
	inc a			;ba37
	ld b,004h		;ba38
	inc b			;ba3a
	ld d,b			;ba3b
	sbc a,(hl)		;ba3c
	ld a,d			;ba3d
	adc a,b			;ba3e
lba3fh:
	ld (bc),a		;ba3f
	ex af,af'		;ba40
	ld (bc),a		;ba41
	dec sp			;ba42
	nop			;ba43
	nop			;ba44
	nop			;ba45
	djnz lba61h		;ba46
	ld (01405h),a		;ba48
	djnz lba68h		;ba4b
	ld (01405h),a		;ba4d
	djnz lba6fh		;ba50
	ld (01405h),a		;ba52
	djnz lba76h		;ba55
	ld d,c			;ba57
	adc a,h			;ba58
	ld b,008h		;ba59
	rra			;ba5b
	inc bc			;ba5c
	ld (bc),a		;ba5d
	sub b			;ba5e
	ld (bc),a		;ba5f
	inc de			;ba60
lba61h:
	djnz lba83h		;ba61
	ld (08405h),a		;ba63
	djnz lba8ah		;ba66
lba68h:
	ld (08405h),a		;ba68
	djnz lba95h		;ba6b
	ld d,c			;ba6d
	adc a,h			;ba6e
lba6fh:
	ld b,00ch		;ba6f
	rra			;ba71
	inc bc			;ba72
	ld (bc),a		;ba73
	sub b			;ba74
	ld (bc),a		;ba75
lba76h:
	inc de			;ba76
	djnz $+42		;ba77
	ld d,c			;ba79
	adc a,h			;ba7a
	ld b,002h		;ba7b
	rra			;ba7d
	inc b			;ba7e
	ld (bc),a		;ba7f
	sub b			;ba80
	ld (bc),a		;ba81
	inc de			;ba82
lba83h:
	djnz $+52		;ba83
	ld d,c			;ba85
	adc a,h			;ba86
	ld b,010h		;ba87
	rra			;ba89
lba8ah:
	inc bc			;ba8a
	ld (bc),a		;ba8b
	sub b			;ba8c
	ld (bc),a		;ba8d
	inc de			;ba8e
	djnz $+54		;ba8f
	ld d,c			;ba91
	adc a,h			;ba92
	ld b,005h		;ba93
lba95h:
	rra			;ba95
	inc bc			;ba96
	ld (bc),a		;ba97
	sub b			;ba98
	ld (bc),a		;ba99
	inc de			;ba9a
lba9bh:
	djnz $+55		;ba9b
	ld (08205h),a		;ba9d
	djnz lbad7h		;baa0
	ld (01405h),a		;baa2
	djnz lbadeh		;baa5
	ld (08205h),a		;baa7
	djnz $+58		;baaa
	ld (01405h),a		;baac
	djnz lbae9h		;baaf
	ld d,c			;bab1
	adc a,l			;bab2
	ld b,00ch		;bab3
	nop			;bab5
	ld b,002h		;bab6
	adc a,h			;bab8
	inc bc			;bab9
	jr lba3fh		;baba
	djnz $+65		;babc
	inc e			;babe
	adc a,b			;babf
	ld (bc),a		;bac0
	add a,d			;bac1
	ld (bc),a		;bac2
	dec e			;bac3
	djnz lbb09h		;bac4
	ld d,c			;bac6
	adc a,l			;bac7
lbac8h:
	ld b,004h		;bac8
	rra			;baca
	inc b			;bacb
	ld (bc),a		;bacc
	adc a,b			;bacd
	inc bc			;bace
	jr lbad4h		;bacf
	djnz $+70		;bad1
	inc e			;bad3
lbad4h:
	adc a,b			;bad4
	ld (bc),a		;bad5
	inc d			;bad6
lbad7h:
	ld (bc),a		;bad7
	dec e			;bad8
	djnz lbb26h		;bad9
	ld (08405h),a		;badb
lbadeh:
	djnz lbb2eh		;bade
	ld (08405h),a		;bae0
	djnz lbb45h		;bae3
	daa			;bae5
	dec b			;bae6
	ex af,af'		;bae7
	sub b			;bae8
lbae9h:
	ld h,d			;bae9
	daa			;baea
	dec b			;baeb
	djnz lbafeh		;baec
	ld h,h			;baee
	and a			;baef
	dec b			;baf0
	inc c			;baf1
	djnz lbb5ah		;baf2
	daa			;baf4
	dec b			;baf5
	inc c			;baf6
	sub b			;baf7
	ld l,b			;baf8
	daa			;baf9
	dec b			;bafa
	inc b			;bafb
	djnz lbb6eh		;bafc
lbafeh:
	ld (hl),d		;bafe
	dec b			;baff
	jr z,$+18		;bb00
	ld (hl),d		;bb02
	ld d,c			;bb03
	adc a,h			;bb04
	ld b,004h		;bb05
	rra			;bb07
	inc bc			;bb08
lbb09h:
	ld (bc),a		;bb09
	djnz $+4		;bb0a
	inc de			;bb0c
	djnz lbb87h		;bb0d
	ld d,c			;bb0f
	adc a,h			;bb10
	ld b,00ch		;bb11
	rra			;bb13
	inc bc			;bb14
	ld (bc),a		;bb15
	djnz $+4		;bb16
	inc de			;bb18
	djnz lba9bh		;bb19
	ld d,c			;bb1b
	adc a,h			;bb1c
	ld b,002h		;bb1d
	rra			;bb1f
	inc bc			;bb20
	ld (bc),a		;bb21
	djnz lbb26h		;bb22
	inc de			;bb24
	sub b			;bb25
lbb26h:
	add a,h			;bb26
	daa			;bb27
	dec b			;bb28
	inc b			;bb29
lbb2ah:
	djnz $-118		;bb2a
	ld d,c			;bb2c
	adc a,h			;bb2d
lbb2eh:
	ld b,006h		;bb2e
	rra			;bb30
	inc bc			;bb31
lbb32h:
	ld (bc),a		;bb32
	djnz $+4		;bb33
	inc de			;bb35
	djnz lbac8h		;bb36
	ld d,c			;bb38
	adc a,h			;bb39
	ld b,010h		;bb3a
	rra			;bb3c
	inc bc			;bb3d
	ld (bc),a		;bb3e
	djnz lbb43h		;bb3f
	inc de			;bb41
lbb42h:
	sub b			;bb42
lbb43h:
	sub h			;bb43
	daa			;bb44
lbb45h:
	dec b			;bb45
	inc b			;bb46
lbb47h:
	djnz $-102		;bb47
	ld d,c			;bb49
	adc a,h			;bb4a
	ld b,008h		;bb4b
	rra			;bb4d
	inc bc			;bb4e
lbb4fh:
	ld (bc),a		;bb4f
	djnz lbb54h		;bb50
	inc de			;bb52
	sub b			;bb53
lbb54h:
	sbc a,b			;bb54
	daa			;bb55
	dec b			;bb56
	inc c			;bb57
	sub b			;bb58
	xor b			;bb59
lbb5ah:
	inc e			;bb5a
	adc a,b			;bb5b
	ld (bc),a		;bb5c
	add a,d			;bb5d
	ld (bc),a		;bb5e
	dec e			;bb5f
	sub b			;bb60
	xor b			;bb61
	inc e			;bb62
	adc a,b			;bb63
	ld (bc),a		;bb64
	inc d			;bb65
	ld (bc),a		;bb66
	dec e			;bb67
	sub b			;bb68
	xor h			;bb69
	inc e			;bb6a
	adc a,b			;bb6b
	ld (bc),a		;bb6c
	add a,d			;bb6d
lbb6eh:
	ld (bc),a		;bb6e
	dec e			;bb6f
	sub b			;bb70
lbb71h:
	xor h			;bb71
	inc e			;bb72
	adc a,b			;bb73
	ld (bc),a		;bb74
	inc d			;bb75
	ld (bc),a		;bb76
	dec e			;bb77
	djnz lbb2ah		;bb78
lbb7ah:
	inc e			;bb7a
lbb7bh:
	adc a,b			;bb7b
	ld (bc),a		;bb7c
	add a,d			;bb7d
	ld (bc),a		;bb7e
	dec e			;bb7f
	djnz lbb32h		;bb80
	inc e			;bb82
lbb83h:
	adc a,b			;bb83
	ld (bc),a		;bb84
	inc d			;bb85
	ld (bc),a		;bb86
lbb87h:
	dec e			;bb87
	djnz lbb42h		;bb88
	ld (01405h),a		;bb8a
	djnz lbb47h		;bb8d
	ld (08205h),a		;bb8f
	djnz lbb4fh		;bb92
	ld (01405h),a		;bb94
	djnz lbb54h		;bb97
	ld (08205h),a		;bb99
lbb9ch:
	djnz lbb71h		;bb9c
	inc e			;bb9e
	adc a,b			;bb9f
	ld (bc),a		;bba0
	inc d			;bba1
lbba2h:
	ld (bc),a		;bba2
	dec e			;bba3
	djnz lbb7ah		;bba4
	inc sp			;bba6
	dec b			;bba7
	rst 38h			;bba8
	djnz lbb83h		;bba9
	ld (01405h),a		;bbab
	djnz $-30		;bbae
lbbb0h:
	and l			;bbb0
	dec b			;bbb1
	adc a,h			;bbb2
	djnz $-29		;bbb3
	and l			;bbb5
	dec b			;bbb6
	sub b			;bbb7
	djnz lbb9ch		;bbb8
	and l			;bbba
	dec b			;bbbb
	add a,h			;bbbc
	djnz lbba2h		;bbbd
	and l			;bbbf
	dec b			;bbc0
lbbc1h:
	adc a,b			;bbc1
	sub b			;bbc2
	call po,00525h		;bbc3
lbbc6h:
	adc a,h			;bbc6
	djnz lbbb0h		;bbc7
	ld (08405h),a		;bbc9
	sub b			;bbcc
lbbcdh:
	rst 20h			;bbcd
	dec h			;bbce
	dec b			;bbcf
	ex af,af'		;bbd0
	sub b			;bbd1
	ret pe			;bbd2
	dec h			;bbd3
	dec b			;bbd4
	inc c			;bbd5
	djnz lbbc1h		;bbd6
	ld (08405h),a		;bbd8
	djnz lbbc6h		;bbdb
	ld (01205h),a		;bbdd
	djnz lbbcdh		;bbe0
	ld (01205h),a		;bbe2
lbbe5h:
	sub b			;bbe5
	call pe,00525h		;bbe6
	djnz lbb7bh		;bbe9
	defb 0edh ;next byte illegal after ed	;bbeb
	dec h			;bbec
	dec b			;bbed
lbbeeh:
	ld (de),a		;bbee
	djnz lbbe5h		;bbef
	and a			;bbf1
	dec b			;bbf2
	ex af,af'		;bbf3
	djnz lbbeeh		;bbf4
	and a			;bbf6
	dec b			;bbf7
	inc c			;bbf8
	sub b			;bbf9
	ret m			;bbfa
	and a			;bbfb
	dec b			;bbfc
	ld (de),a		;bbfd
	ld de,02800h		;bbfe
	dec b			;bc01
	inc c			;bc02
	ld de,0510fh		;bc03
	adc a,h			;bc06
	ld b,008h		;bc07
	rra			;bc09
	inc bc			;bc0a
	ld (bc),a		;bc0b
	sub b			;bc0c
	ld (bc),a		;bc0d
	inc de			;bc0e
	ld de,02810h		;bc0f
	dec b			;bc12
	ex af,af'		;bc13
	ld de,0511fh		;bc14
	adc a,h			;bc17
	ld b,012h		;bc18
	rra			;bc1a
	inc bc			;bc1b
	ld (bc),a		;bc1c
	sub b			;bc1d
	ld (bc),a		;bc1e
	inc de			;bc1f
	ld de,02824h		;bc20
	dec b			;bc23
	inc c			;bc24
	ld de,0512fh		;bc25
	adc a,h			;bc28
	ld b,004h		;bc29
	rra			;bc2b
	inc bc			;bc2c
	ld (bc),a		;bc2d
	sub b			;bc2e
	ld (bc),a		;bc2f
	inc de			;bc30
	ld de,05f5ch		;bc31
	dec b			;bc34
	inc bc			;bc35
	jr nz,lbc38h		;bc36
lbc38h:
	ld a,086h		;bc38
	ld (bc),a		;bc3a
	rst 38h			;bc3b
	nop			;bc3c
	nop			;bc3d
	djnz lbc60h		;bc3e
	add hl,de		;bc40
	ld b,012h		;bc41
	ld e,010h		;bc43
	jr z,lbc60h		;bc45
	ld b,092h		;bc47
	ld bc,02a10h		;bc49
	add hl,de		;bc4c
	ld b,010h		;bc4d
	ld e,010h		;bc4f
	inc l			;bc51
	rla			;bc52
	dec b			;bc53
	add a,e			;bc54
	sub b			;bc55
	ld l,039h		;bc56
	ld b,008h		;bc58
	nop			;bc5a
	sub b			;bc5b
	inc (hl)		;bc5c
	sub a			;bc5d
	dec b			;bc5e
	add a,e			;bc5f
lbc60h:
	djnz $+62		;bc60
	add hl,de		;bc62
	ld b,010h		;bc63
	ld e,010h		;bc65
	ld b,b			;bc67
	add hl,sp		;bc68
	ld b,008h		;bc69
	ld bc,04c10h		;bc6b
	add hl,de		;bc6e
	ld b,010h		;bc6f
	ld e,010h		;bc71
	ld d,b			;bc73
	add hl,sp		;bc74
	ld b,088h		;bc75
	nop			;bc77
	djnz lbccah		;bc78
	rla			;bc7a
	dec b			;bc7b
	add a,e			;bc7c
	djnz lbcd3h		;bc7d
	add hl,de		;bc7f
	ld b,012h		;bc80
	ld e,010h		;bc82
	ld (hl),b		;bc84
	scf			;bc85
	adc a,c			;bc86
	inc bc			;bc87
	dec bc			;bc88
	jr nz,$+4		;bc89
	scf			;bc8b
	jr nz,lbc95h		;bc8c
	add hl,de		;bc8e
	ld b,080h		;bc8f
	ex af,af'		;bc91
	jr nz,lbc9bh		;bc92
	add hl,de		;bc94
lbc95h:
	ld b,080h		;bc95
	ld a,(bc)		;bc97
	jr nz,lbca1h		;bc98
	add hl,de		;bc9a
lbc9bh:
	ld b,080h		;bc9b
	djnz lbcbfh		;bc9d
	inc d			;bc9f
	add hl,sp		;bca0
lbca1h:
	ld b,08ch		;bca1
	inc bc			;bca3
	jr nz,$+25		;bca4
	add hl,de		;bca6
	ld b,080h		;bca7
	ex af,af'		;bca9
	jr nz,lbcc3h		;bcaa
	add hl,de		;bcac
	ld b,000h		;bcad
	jr lbcd1h		;bcaf
	inc h			;bcb1
	add hl,sp		;bcb2
	ld b,008h		;bcb3
	ld (bc),a		;bcb5
	jr nz,lbcdfh		;bcb6
	add hl,de		;bcb8
	ld b,000h		;bcb9
	inc d			;bcbb
	jr nz,lbce5h		;bcbc
	add hl,de		;bcbe
lbcbfh:
	ld b,080h		;bcbf
	ld d,0a0h		;bcc1
lbcc3h:
	scf			;bcc3
	add hl,de		;bcc4
	ld b,000h		;bcc5
	inc bc			;bcc7
	and b			;bcc8
	scf			;bcc9
lbccah:
	add hl,de		;bcca
	ld b,080h		;bccb
	inc bc			;bccd
	jr nz,$+57		;bcce
	add hl,de		;bcd0
lbcd1h:
	ld b,080h		;bcd1
lbcd3h:
	add hl,de		;bcd3
	jr nz,$+57		;bcd4
	add hl,de		;bcd6
	ld b,000h		;bcd7
	add hl,de		;bcd9
	jr nz,lbd1fh		;bcda
	add hl,de		;bcdc
	ld b,080h		;bcdd
lbcdfh:
	inc b			;bcdf
	jr nz,lbd25h		;bce0
	add hl,de		;bce2
	ld b,000h		;bce3
lbce5h:
	ld (de),a		;bce5
	jr nc,$+18		;bce6
	jr c,$+7		;bce8
	inc c			;bcea
	jr nc,$+18		;bceb
	add hl,de		;bced
	ld b,086h		;bcee
	ld bc,01430h		;bcf0
	add hl,de		;bcf3
	ld b,086h		;bcf4
	ld bc,01530h		;bcf6
	jr c,lbd00h		;bcf9
	inc b			;bcfb
	jr nc,lbd1ch		;bcfc
	jr c,$+7		;bcfe
lbd00h:
	inc c			;bd00
	jr nc,$+34		;bd01
	add hl,de		;bd03
	ld b,086h		;bd04
	ld bc,02630h		;bd06
	add hl,de		;bd09
	ld b,086h		;bd0a
	ld bc,02830h		;bd0c
	dec l			;bd0f
	dec b			;bd10
	ld (de),a		;bd11
	jr nc,lbd3dh		;bd12
	rla			;bd14
	dec b			;bd15
	add a,e			;bd16
	jr nc,$+46		;bd17
	rla			;bd19
	dec b			;bd1a
	add a,e			;bd1b
lbd1ch:
	jr nc,lbd4dh		;bd1c
	rla			;bd1e
lbd1fh:
	dec b			;bd1f
	add a,e			;bd20
	or b			;bd21
	ld sp,00517h		;bd22
lbd25h:
	add a,e			;bd25
	jr nc,$+59		;bd26
	add hl,sp		;bd28
	ld b,008h		;bd29
	nop			;bd2b
	jr nc,lbd72h		;bd2c
	add hl,de		;bd2e
	ld b,010h		;bd2f
	ld e,030h		;bd31
	ld c,c			;bd33
	add hl,sp		;bd34
	ld b,008h		;bd35
	nop			;bd37
	jr nc,$+86		;bd38
	add hl,de		;bd3a
	ld b,090h		;bd3b
lbd3dh:
	ld bc,05930h		;bd3d
	add hl,sp		;bd40
	ld b,008h		;bd41
	nop			;bd43
	jr nc,lbda0h		;bd44
	add hl,de		;bd46
	ld b,012h		;bd47
	ld e,030h		;bd49
	ld e,h			;bd4b
	add hl,de		;bd4c
lbd4dh:
	ld b,092h		;bd4d
	ld bc,06830h		;bd4f
	add hl,de		;bd52
	ld b,012h		;bd53
	ld e,030h		;bd55
	ld l,c			;bd57
	jr c,lbd5fh		;bd58
	ld b,030h		;bd5a
	ld l,c			;bd5c
	jr c,$+7		;bd5d
lbd5fh:
	dec c			;bd5f
	jr nc,lbdd2h		;bd60
	add hl,de		;bd62
	ld b,012h		;bd63
	ld e,030h		;bd65
	ld (hl),d		;bd67
	jr c,lbd6fh		;bd68
	ld b,030h		;bd6a
	ld (hl),d		;bd6c
	jr c,$+7		;bd6d
lbd6fh:
	dec c			;bd6f
	jr nc,lbdeah		;bd70
lbd72h:
	add hl,de		;bd72
lbd73h:
	ld b,012h		;bd73
	ld e,040h		;bd75
	ld bc,00639h		;bd77
	ex af,af'		;bd7a
	ld (bc),a		;bd7b
	ld b,b			;bd7c
	inc bc			;bd7d
	add hl,de		;bd7e
	ld b,080h		;bd7f
	ex af,af'		;bd81
	ld b,b			;bd82
	inc bc			;bd83
	add hl,de		;bd84
	ld b,000h		;bd85
	ld (de),a		;bd87
	ld b,b			;bd88
	inc bc			;bd89
	add hl,de		;bd8a
	ld b,000h		;bd8b
	jr $+66			;bd8d
	ex af,af'		;bd8f
lbd90h:
	add hl,sp		;bd90
	ld b,010h		;bd91
	inc bc			;bd93
	ld b,b			;bd94
	ld l,05fh		;bd95
	dec b			;bd97
	inc bc			;bd98
	ld d,b			;bd99
	nop			;bd9a
	inc d			;bd9b
	dec b			;bd9c
	rst 38h			;bd9d
lbd9eh:
	nop			;bd9e
	nop			;bd9f
lbda0h:
	nop			;bda0
lbda1h:
	nop			;bda1
	djnz $+36		;bda2
	ld d,c			;bda4
	adc a,l			;bda5
	ld b,006h		;bda6
	rra			;bda8
	inc b			;bda9
	ld (bc),a		;bdaa
	add a,(hl)		;bdab
lbdach:
	inc bc			;bdac
	jr $+3			;bdad
	djnz $+50		;bdaf
	ld d,c			;bdb1
	adc a,l			;bdb2
	ld b,00ch		;bdb3
	rra			;bdb5
	inc b			;bdb6
	ld (bc),a		;bdb7
	add a,(hl)		;bdb8
	inc bc			;bdb9
	jr $+3			;bdba
	djnz lbe00h		;bdbc
	daa			;bdbe
	dec b			;bdbf
	inc c			;bdc0
	djnz $+74		;bdc1
	ld d,c			;bdc3
	adc a,l			;bdc4
	ld b,00ch		;bdc5
	rra			;bdc7
	inc b			;bdc8
	ld (bc),a		;bdc9
	add a,(hl)		;bdca
	inc bc			;bdcb
	jr $+3			;bdcc
	djnz $+104		;bdce
	daa			;bdd0
	dec b			;bdd1
lbdd2h:
	ex af,af'		;bdd2
	djnz lbe49h		;bdd3
	ld d,c			;bdd5
lbdd6h:
	adc a,l			;bdd6
	ld b,004h		;bdd7
	nop			;bdd9
	inc b			;bdda
	ld (bc),a		;bddb
	add a,(hl)		;bddc
	inc bc			;bddd
	jr lbda1h		;bdde
	djnz $+118		;bde0
	ld d,c			;bde2
	adc a,l			;bde3
	ld b,00ch		;bde4
	nop			;bde6
	inc b			;bde7
	ld (bc),a		;bde8
	add a,(hl)		;bde9
lbdeah:
	inc bc			;bdea
	jr $-61			;bdeb
	djnz lbd73h		;bded
lbdefh:
	ld b,c			;bdef
	ld b,004h		;bdf0
	ld bc,09410h		;bdf2
	daa			;bdf5
	dec b			;bdf6
	ex af,af'		;bdf7
	djnz lbd90h		;bdf8
	ld c,c			;bdfa
	ld b,084h		;bdfb
	rra			;bdfd
	djnz $-104		;bdfe
lbe00h:
	ld c,c			;be00
	ld b,010h		;be01
	rra			;be03
	djnz lbd9eh		;be04
	ld b,c			;be06
	ld b,004h		;be07
	ld (bc),a		;be09
	djnz lbdach		;be0a
	daa			;be0c
	dec b			;be0d
	inc c			;be0e
	djnz $-82		;be0f
lbe11h:
	ld b,c			;be11
	ld b,004h		;be12
	inc bc			;be14
	djnz $-72		;be15
	daa			;be17
	dec b			;be18
	ex af,af'		;be19
	djnz lbdd6h		;be1a
	daa			;be1c
	dec b			;be1d
	inc c			;be1e
	djnz $-62		;be1f
	ld b,c			;be21
	ld b,004h		;be22
	inc b			;be24
	djnz lbdefh		;be25
	daa			;be27
	dec b			;be28
	ex af,af'		;be29
	djnz $-46		;be2a
	daa			;be2c
	dec b			;be2d
	djnz lbe40h		;be2e
	call nc,00641h		;be30
	inc b			;be33
	dec b			;be34
	djnz lbe11h		;be35
	ld d,c			;be37
	adc a,h			;be38
	ld b,008h		;be39
lbe3bh:
	rra			;be3b
	inc b			;be3c
	ld (bc),a		;be3d
	djnz $+4		;be3e
lbe40h:
	inc de			;be40
	djnz $-22		;be41
	ld b,c			;be43
	ld b,004h		;be44
lbe46h:
	ld (bc),a		;be46
	djnz lbe3bh		;be47
lbe49h:
	daa			;be49
	dec b			;be4a
	ex af,af'		;be4b
	djnz lbe46h		;be4c
	ld d,c			;be4e
	adc a,h			;be4f
	ld b,010h		;be50
	rra			;be52
	inc b			;be53
	ld (bc),a		;be54
	djnz $+4		;be55
	inc de			;be57
	djnz $-2		;be58
	ld b,c			;be5a
	ld b,004h		;be5b
	inc bc			;be5d
	ld de,05104h		;be5e
	adc a,h			;be61
	ld b,00ah		;be62
	rra			;be64
	inc b			;be65
	ld (bc),a		;be66
	djnz $+4		;be67
	inc de			;be69
	ld de,04108h		;be6a
	ld b,004h		;be6d
	ld bc,02011h		;be6f
	ld b,c			;be72
	ld b,004h		;be73
	rlca			;be75
	sub c			;be76
	jr z,$+67		;be77
	ld b,004h		;be79
	rlca			;be7b
	ld de,04130h		;be7c
	ld b,004h		;be7f
	rlca			;be81
	ld de,04940h		;be82
	ld b,00ch		;be85
	rra			;be87
	ld de,04944h		;be88
	ld b,08ch		;be8b
	rra			;be8d
	ld de,04948h		;be8e
	ld b,00ch		;be91
	rra			;be93
	ld de,04958h		;be94
	ld b,08ch		;be97
	rra			;be99
	ld de,0495eh		;be9a
	ld b,00ch		;be9d
	rra			;be9f
	ld de,0496bh		;bea0
	ld b,00ch		;bea3
	rra			;bea5
	ld de,02172h		;bea6
	dec b			;bea9
	nop			;beaa
	ld de,0497bh		;beab
	ld b,08ch		;beae
	rra			;beb0
	ld de,02188h		;beb1
	dec b			;beb4
	ld bc,08b11h		;beb5
	ld c,c			;beb8
	ld b,00ah		;beb9
	rra			;bebb
	ld de,0499bh		;bebc
	ld b,090h		;bebf
	rra			;bec1
	ld de,021a0h		;bec2
	dec b			;bec5
	ld (bc),a		;bec6
	ld de,049abh		;bec7
	ld b,010h		;beca
	rra			;becc
	ld de,021b4h		;becd
	dec b			;bed0
	ld bc,0c811h		;bed1
	ld hl,00005h		;bed4
	ld de,021dbh		;bed7
	dec b			;beda
	ld bc,0e811h		;bedb
	ld hl,00005h		;bede
	ld de,021fah		;bee1
	dec b			;bee4
	ld (bc),a		;bee5
	ld de,la1fah		;bee6
	dec b			;bee9
	nop			;beea
	ld (de),a		;beeb
	ld a,(bc)		;beec
	ld hl,00005h		;beed
	ld (de),a		;bef0
	ld a,(bc)		;bef1
	and c			;bef2
	dec b			;bef3
	ld (bc),a		;bef4
	ld (de),a		;bef5
	ld hl,00521h		;bef6
	nop			;bef9
	ld (de),a		;befa
	ld hl,00521h		;befb
	ld bc,03112h		;befe
	ld hl,00205h		;bf01
	ld (de),a		;bf04
	ld sp,005a1h		;bf05
	ld bc,04212h		;bf08
	ld hl,00105h		;bf0b
	ld (de),a		;bf0e
	ld b,h			;bf0f
	ld c,c			;bf10
	ld b,08ah		;bf11
	rra			;bf13
	ld (de),a		;bf14
	ld c,d			;bf15
	ld hl,00205h		;bf16
	ld (de),a		;bf19
	ld d,d			;bf1a
	ld hl,00105h		;bf1b
	ld (de),a		;bf1e
	ld h,d			;bf1f
	ld hl,00005h		;bf20
	ld (de),a		;bf23
	ld h,h			;bf24
	ld c,c			;bf25
	ld b,00ch		;bf26
	rra			;bf28
	ld (de),a		;bf29
	ld l,b			;bf2a
	ld hl,00205h		;bf2b
	ld (de),a		;bf2e
	ld a,d			;bf2f
	ld hl,00105h		;bf30
	ld (de),a		;bf33
	add a,b			;bf34
	ld c,c			;bf35
	ld b,08ch		;bf36
	rra			;bf38
	ld (de),a		;bf39
	adc a,b			;bf3a
	ld hl,00005h		;bf3b
	ld (de),a		;bf3e
	adc a,d			;bf3f
	ld hl,00205h		;bf40
	ld (de),a		;bf43
	sbc a,d			;bf44
	ld hl,00105h		;bf45
	ld (de),a		;bf48
	and b			;bf49
	ld c,c			;bf4a
	ld b,00ch		;bf4b
	rra			;bf4d
	ld (de),a		;bf4e
	and h			;bf4f
	ld hl,00005h		;bf50
	ld (de),a		;bf53
	cp b			;bf54
	ld hl,00105h		;bf55
	ld (de),a		;bf58
	cp h			;bf59
	ld c,c			;bf5a
	ld b,08ch		;bf5b
	rra			;bf5d
	ld (de),a		;bf5e
	ret z			;bf5f
	ld hl,00205h		;bf60
	ld (de),a		;bf63
	call nc,00649h		;bf64
	ld b,01fh		;bf67
	ld (de),a		;bf69
	call nc,00649h		;bf6a
	inc c			;bf6d
	rra			;bf6e
	ld (de),a		;bf6f
	call nc,00649h		;bf70
	ld (de),a		;bf73
	rra			;bf74
	ld (de),a		;bf75
	ret c			;bf76
	ld c,c			;bf77
	ld b,086h		;bf78
	rra			;bf7a
	ld (de),a		;bf7b
	ret c			;bf7c
	ld c,c			;bf7d
	ld b,08ch		;bf7e
	rra			;bf80
	ld (de),a		;bf81
	ret c			;bf82
	ld c,c			;bf83
	ld b,092h		;bf84
	rra			;bf86
	inc de			;bf87
	rrca			;bf88
	ld e,a			;bf89
	dec b			;bf8a
	inc bc			;bf8b
	inc de			;bf8c
	djnz $+121		;bf8d
	adc a,e			;bf8f
	ld (bc),a		;bf90
	dec b			;bf91
	add a,l			;bf92
	ld (bc),a		;bf93
	halt			;bf94
	ld (bc),a		;bf95
	halt			;bf96
	nop			;bf97
	nop			;bf98
	nop			;bf99
	djnz lbfc2h		;bf9a
	ld c,l			;bf9c
	dec b			;bf9d
	add a,h			;bf9e
	djnz lbfc9h		;bf9f
	cpl			;bfa1
	dec b			;bfa2
	sub b			;bfa3
	djnz $+44		;bfa4
	cpl			;bfa6
	dec b			;bfa7
	sub h			;bfa8
	djnz lbfd7h		;bfa9
	cpl			;bfab
	dec b			;bfac
	sub h			;bfad
	djnz lbfe0h		;bfae
	cpl			;bfb0
	dec b			;bfb1
	sub (hl)		;bfb2
	djnz lbfe5h		;bfb3
	cpl			;bfb5
	dec b			;bfb6
	sbc a,e			;bfb7
	djnz lbff0h		;bfb8
	cpl			;bfba
	dec b			;bfbb
	sub b			;bfbc
	jr nz,lbfc2h		;bfbd
	ld c,b			;bfbf
	adc a,c			;bfc0
	inc bc			;bfc1
lbfc2h:
	ld (de),a		;bfc2
	ld (bc),a		;bfc3
	ld (bc),a		;bfc4
	ld c,b			;bfc5
	jr nz,lbfd2h		;bfc6
	ld c,b			;bfc8
lbfc9h:
	adc a,c			;bfc9
	inc bc			;bfca
	dec l			;bfcb
	ld bc,04802h		;bfcc
	jr nz,lbffbh		;bfcf
	ld c,l			;bfd1
lbfd2h:
	dec b			;bfd2
	inc hl			;bfd3
	jr nc,lbfdbh		;bfd4
	ld c,l			;bfd6
lbfd7h:
	dec b			;bfd7
	rlca			;bfd8
	jr nc,lbfe5h		;bfd9
lbfdbh:
	ld c,d			;bfdb
	dec b			;bfdc
	ld c,030h		;bfdd
	ld a,(bc)		;bfdf
lbfe0h:
	ld c,d			;bfe0
	dec b			;bfe1
	ld (de),a		;bfe2
	jr nc,lbff1h		;bfe3
lbfe5h:
	ld c,d			;bfe5
	dec b			;bfe6
	ld (de),a		;bfe7
	or b			;bfe8
	inc c			;bfe9
	ld c,d			;bfea
	dec b			;bfeb
	ld b,030h		;bfec
	ld c,04ah		;bfee
lbff0h:
	dec b			;bff0
lbff1h:
	ld (de),a		;bff1
	jr nc,$+16		;bff2
	ld c,d			;bff4
	dec b			;bff5
	inc bc			;bff6
	jr nc,$+18		;bff7
	ld c,d			;bff9
	dec b			;bffa
lbffbh:
	ld (de),a		;bffb
	jr nc,$+18		;bffc
	ld c,d			;bffe
	dec b			;bfff

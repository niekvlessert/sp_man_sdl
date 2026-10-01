; z80dasm 1.2.0
; command line: z80dasm -a -l -g 0xA000 -o /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/disasm/bank10_A000.asm /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/banks/bank10.bin

	org 0a000h

	push af			;a000
	call 08032h		;a001
	pop af			;a004
	ld hl,08189h		;a005
	call 0468eh		;a008
	call 08046h		;a00b
	ret			;a00e
	call 08032h		;a00f
	ld a,(0ca10h)		;a012
	ld hl,08177h		;a015
	call 0468eh		;a018
	call 08046h		;a01b
	ret			;a01e
	call 08029h		;a01f
	call 0803bh		;a022
	call 08371h		;a025
	ret			;a028
	ld hl,0de00h		;a029
	ld bc,000ffh		;a02c
	jp 08226h		;a02f
	ld hl,0de00h		;a032
	ld bc,000cdh		;a035
	jp 08226h		;a038
	push af			;a03b
	ld hl,083fdh		;a03c
	call 08046h		;a03f
	pop af			;a042
	call 0815fh		;a043
	push hl			;a046
	ld hl,0d700h		;a047
	ld bc,000ffh		;a04a
	call 08226h		;a04d
	pop ix			;a050
	ld a,(ix+000h)		;a052
	inc a			;a055
	call nz,08069h		;a056
la059h:
	inc ix			;a059
	call 0818fh		;a05b
	call 081c2h		;a05e
	jr c,la059h		;a061
	inc ix			;a063
	call 08209h		;a065
	ret			;a068
	push ix			;a069
	pop hl			;a06b
	call 04ce0h		;a06c
	push hl			;a06f
	pop ix			;a070
	ret			;a072
	ld a,(00007h)		;a073
	ld c,a			;a076
	ld de,00000h		;a077
	ld a,0ffh		;a07a
la07ch:
	out (c),a		;a07c
	dec e			;a07e
	jr nz,la07ch		;a07f
	dec d			;a081
	jr nz,la07ch		;a082
	ret			;a084
	xor a			;a085
	ld b,000h		;a086
la088h:
	out (c),a		;a088
	inc a			;a08a
	djnz la088h		;a08b
	ret			;a08d
	ld a,008h		;a08e
	call 08157h		;a090
	bit 5,a			;a093
	jr z,la0afh		;a095
	bit 6,a			;a097
	jr z,la0a6h		;a099
	call 080d6h		;a09b
	ret z			;a09e
	call 080ech		;a09f
	call 080f8h		;a0a2
	ret			;a0a5
la0a6h:
	ld a,(0c0b2h)		;a0a6
	dec a			;a0a9
	and 003h		;a0aa
	ret z			;a0ac
	jr la0b6h		;a0ad
la0afh:
	ld a,(0c0b2h)		;a0af
	and 003h		;a0b2
	ret z			;a0b4
	inc a			;a0b5
la0b6h:
	set 7,a			;a0b6
	ld (0c0b2h),a		;a0b8
	and 003h		;a0bb
	rrca			;a0bd
	rrca			;a0be
	push ix			;a0bf
	push bc			;a0c1
	push af			;a0c2
	ld b,a			;a0c3
la0c4h:
	ld c,017h		;a0c4
	call 00047h		;a0c6
	pop af			;a0c9
	pop bc			;a0ca
	pop ix			;a0cb
la0cdh:
	ld a,008h		;a0cd
	call 08157h		;a0cf
	inc a			;a0d2
	ret z			;a0d3
	jr la0cdh		;a0d4
	ld a,002h		;a0d6
	call 08157h		;a0d8
	push af			;a0db
	ld a,003h		;a0dc
	call 08157h		;a0de
	pop bc			;a0e1
	rl b			;a0e2
	rla			;a0e4
	rl b			;a0e5
	rla			;a0e7
	cpl			;a0e8
	and 07fh		;a0e9
	ret			;a0eb
	ld c,0ffh		;a0ec
la0eeh:
	rrca			;a0ee
	inc c			;a0ef
	jr nc,la0eeh		;a0f0
	ld a,c			;a0f2
	ret			;a0f3
	ld (0c0b5h),a		;a0f4
	ret			;a0f7
	ld (0c0b4h),a		;a0f8
	call 04e82h		;a0fb
	push ix			;a0fe
	and 001h		;a100
	push hl			;a102
	push af			;a103
	ld de,02000h		;a104
	add hl,de		;a107
	push bc			;a108
	ld b,006h		;a109
la10bh:
	sra a			;a10b
	rr h			;a10d
	rr l			;a10f
	djnz la10bh		;a111
	pop bc			;a113
	ld a,000h		;a114
	or h			;a116
	ld h,a			;a117
	ld a,07fh		;a118
	or l			;a11a
	ld l,a			;a11b
	or h			;a11c
	push bc			;a11d
	push af			;a11e
	ld b,h			;a11f
	ld c,00ah		;a120
	call 00047h		;a122
	pop af			;a125
	pop bc			;a126
	push bc			;a127
	push af			;a128
	ld b,l			;a129
	ld c,003h		;a12a
	call 00047h		;a12c
	pop af			;a12f
	pop bc			;a130
	pop af			;a131
	pop hl			;a132
	push bc			;a133
	ld b,003h		;a134
la136h:
	sra a			;a136
	rr h			;a138
	rr l			;a13a
	djnz la136h		;a13c
	pop bc			;a13e
	ld a,h			;a13f
	or 003h			;a140
	push bc			;a142
	push af			;a143
	ld b,a			;a144
	ld c,004h		;a145
	call 00047h		;a147
	pop af			;a14a
	pop bc			;a14b
	pop ix			;a14c
	ret			;a14e
	ld a,007h		;a14f
	call 08157h		;a151
	bit 3,a			;a154
	ret			;a156
	push ix			;a157
	call 00141h		;a159
	pop ix			;a15c
	ret			;a15e
	ld hl,08165h		;a15f
	jp 0468eh		;a162
	ld b,(hl)		;a165
	add a,h			;a166
	ld a,a			;a167
	add a,(hl)		;a168
	ld d,087h		;a169
	ret nc			;a16b
	adc a,b			;a16c
	cp d			;a16d
	adc a,c			;a16e
	xor (hl)		;a16f
	adc a,e			;a170
	ld h,h			;a171
	adc a,(hl)		;a172
	ld d,(hl)		;a173
	sub c			;a174
	add a,d			;a175
	sub c			;a176
	ld c,c			;a177
	add a,(hl)		;a178
	add hl,bc		;a179
	add a,a			;a17a
	or h			;a17b
	adc a,b			;a17c
	sbc a,e			;a17d
	adc a,c			;a17e
	sub d			;a17f
	adc a,e			;a180
	add hl,hl		;a181
	adc a,(hl)		;a182
	ld c,h			;a183
	sub c			;a184
	ld (hl),d		;a185
	sub c			;a186
	add a,d			;a187
	sub c			;a188
	ld d,(hl)		;a189
	add a,(hl)		;a18a
	ld b,l			;a18b
	adc a,(hl)		;a18c
	ld h,(hl)		;a18d
	add a,(hl)		;a18e
	ld hl,0d710h		;a18f
	ld bc,000efh		;a192
	call 08226h		;a195
la198h:
	ld a,(ix+000h)		;a198
	inc a			;a19b
	inc ix			;a19c
	ret z			;a19e
	dec a			;a19f
	jr z,la1b7h		;a1a0
	dec a			;a1a2
	call 081bah		;a1a3
	ld l,a			;a1a6
	ld h,000h		;a1a7
	ld de,0d710h		;a1a9
	add hl,de		;a1ac
la1adh:
	ld a,(hl)		;a1ad
	or a			;a1ae
	inc hl			;a1af
	jr nz,la1adh		;a1b0
	dec hl			;a1b2
	inc c			;a1b3
	ld (hl),c		;a1b4
	jr la198h		;a1b5
la1b7h:
	inc c			;a1b7
	jr la198h		;a1b8
	add a,a			;a1ba
	add a,a			;a1bb
	ld b,a			;a1bc
	add a,a			;a1bd
	add a,a			;a1be
	add a,a			;a1bf
	sub b			;a1c0
	ret			;a1c1
la1c2h:
	ld a,(ix+000h)		;a1c2
	inc a			;a1c5
	or a			;a1c6
	ret z			;a1c7
	cp 0ffh			;a1c8
	scf			;a1ca
	ret z			;a1cb
	ld l,(ix+003h)		;a1cc
	ld h,(ix+004h)		;a1cf
	ld a,(ix+007h)		;a1d2
	call 0827bh		;a1d5
	ld a,(ix+000h)		;a1d8
	call 082e8h		;a1db
	ld d,(ix+002h)		;a1de
	ld a,(ix+001h)		;a1e1
	call 08233h		;a1e4
	ld a,(ix+007h)		;a1e7
	ld l,(ix+005h)		;a1ea
	ld h,(ix+006h)		;a1ed
	call 0827bh		;a1f0
	ld a,(ix+000h)		;a1f3
	call 082fch		;a1f6
	ld d,(ix+002h)		;a1f9
	ld a,(ix+001h)		;a1fc
	call 0822eh		;a1ff
	ld bc,00008h		;a202
	add ix,bc		;a205
	jr la1c2h		;a207
la209h:
	ld h,0deh		;a209
	ld l,(ix+001h)		;a20b
	ld a,(ix+002h)		;a20e
	sub l			;a211
	inc a			;a212
	ld b,a			;a213
	ld a,(ix+000h)		;a214
	cp 0ffh			;a217
	ret z			;a219
la21ah:
	ld (hl),a		;a21a
	inc hl			;a21b
	djnz la21ah		;a21c
	inc ix			;a21e
	inc ix			;a220
	inc ix			;a222
	jr la209h		;a224
	ld (hl),000h		;a226
	ld d,h			;a228
	ld e,l			;a229
	inc de			;a22a
	ldir			;a22b
	ret			;a22d
	push af			;a22e
	ld a,020h		;a22f
	jr la235h		;a231
	push af			;a233
	xor a			;a234
la235h:
	ld (0c93eh),a		;a235
	pop af			;a238
	ld bc,00800h		;a239
la23ch:
	add a,a			;a23c
	push af			;a23d
	push bc			;a23e
	push de			;a23f
	call c,0824ah		;a240
	pop de			;a243
	pop bc			;a244
	pop af			;a245
	inc c			;a246
	djnz la23ch		;a247
	ret			;a249
	ld a,c			;a24a
	call 081bah		;a24b
	ld c,a			;a24e
	ld b,000h		;a24f
	ld hl,0d710h		;a251
	add hl,bc		;a254
la255h:
	ld a,(hl)		;a255
	inc hl			;a256
	or a			;a257
	ret z			;a258
	dec a			;a259
	push hl			;a25a
	push de			;a25b
	call 08263h		;a25c
	pop de			;a25f
	pop hl			;a260
	jr la255h		;a261
	ld l,d			;a263
	ld h,000h		;a264
	add hl,hl		;a266
	add hl,hl		;a267
	add hl,hl		;a268
	push hl			;a269
	call 04e8ah		;a26a
	pop de			;a26d
	add hl,de		;a26e
	ex de,hl		;a26f
	ld hl,0d800h		;a270
	ld bc,(0d700h)		;a273
	call 046adh		;a277
	ret			;a27a
	ld de,0d800h		;a27b
	call 082bah		;a27e
	call 08290h		;a281
	ld h,d			;a284
	ld l,e			;a285
	or a			;a286
	ld bc,0d800h		;a287
	sbc hl,bc		;a28a
	ld (0d700h),hl		;a28c
	ret			;a28f
la290h:
	ld a,(hl)		;a290
	inc l			;a291
	call z,082d2h		;a292
	or a			;a295
	ret z			;a296
	ld b,a			;a297
	and 07fh		;a298
	cp b			;a29a
	jr z,la2afh		;a29b
	or a			;a29d
	jr z,la290h		;a29e
	ld c,a			;a2a0
	ld b,000h		;a2a1
la2a3h:
	ld a,(hl)		;a2a3
	ld (de),a		;a2a4
	inc de			;a2a5
	inc l			;a2a6
	call z,082d2h		;a2a7
	dec c			;a2aa
	jr nz,la2a3h		;a2ab
	jr la290h		;a2ad
la2afh:
	ld a,(hl)		;a2af
	inc l			;a2b0
	call z,082d2h		;a2b1
la2b4h:
	ld (de),a		;a2b4
	inc de			;a2b5
	djnz la2b4h		;a2b6
	jr la290h		;a2b8
	push af			;a2ba
	ld a,h			;a2bb
	and 0e0h		;a2bc
	rlca			;a2be
	rlca			;a2bf
	rlca			;a2c0
	add a,00ch		;a2c1
	pop bc			;a2c3
	add a,b			;a2c4
	ld (0d703h),a		;a2c5
	call 04c23h		;a2c8
	ld a,h			;a2cb
	and 01fh		;a2cc
	add a,0a0h		;a2ce
	ld h,a			;a2d0
	ret			;a2d1
	push af			;a2d2
	inc h			;a2d3
	ld a,h			;a2d4
	cp 0c0h			;a2d5
	jr c,la2e6h		;a2d7
	sub 020h		;a2d9
	ld h,a			;a2db
	ld a,(0d703h)		;a2dc
	inc a			;a2df
	ld (0d703h),a		;a2e0
	call 04c23h		;a2e3
la2e6h:
	pop af			;a2e6
	ret			;a2e7
	push de			;a2e8
	push af			;a2e9
	ex de,hl		;a2ea
	bit 0,a			;a2eb
	call nz,08307h		;a2ed
	pop af			;a2f0
	pop de			;a2f1
	push de			;a2f2
	push af			;a2f3
	bit 1,a			;a2f4
	call nz,08341h		;a2f6
	pop af			;a2f9
	pop de			;a2fa
	ret			;a2fb
	push de			;a2fc
	push af			;a2fd
	ex de,hl		;a2fe
	bit 0,a			;a2ff
	call nz,08307h		;a301
	pop af			;a304
	pop de			;a305
	ret			;a306
	ld bc,(0d700h)		;a307
	srl b			;a30b
	rr c			;a30d
	srl b			;a30f
	rr c			;a311
	srl b			;a313
	rr c			;a315
	ld a,b			;a317
	or c			;a318
la319h:
	jr z,la319h		;a319
	ld hl,0d800h		;a31b
	ld de,0d807h		;a31e
la321h:
	push de			;a321
	push bc			;a322
	call 08334h		;a323
	pop bc			;a326
	pop de			;a327
	inc de			;a328
	ld hl,00007h		;a329
	add hl,de		;a32c
	ex de,hl		;a32d
	dec bc			;a32e
	ld a,b			;a32f
	or c			;a330
	jr nz,la321h		;a331
	ret			;a333
	ld b,004h		;a334
la336h:
	ld c,(hl)		;a336
	ld a,(de)		;a337
	ex de,hl		;a338
	ld (hl),c		;a339
	ld (de),a		;a33a
	ex de,hl		;a33b
	inc hl			;a33c
	dec de			;a33d
	djnz la336h		;a33e
	ret			;a340
	ld de,(0d700h)		;a341
	ld hl,0d800h		;a345
la348h:
	ld a,(hl)		;a348
	rr a			;a349
	rl c			;a34b
	rr a			;a34d
	rl c			;a34f
	rr a			;a351
	rl c			;a353
	rr a			;a355
	rl c			;a357
	rr a			;a359
	rl c			;a35b
	rr a			;a35d
	rl c			;a35f
	rr a			;a361
	rl c			;a363
	rr a			;a365
	rl c			;a367
	ld (hl),c		;a369
	inc hl			;a36a
	dec de			;a36b
	ld a,d			;a36c
	or e			;a36d
	jr nz,la348h		;a36e
	ret			;a370
	ld a,(0ca10h)		;a371
	cp 007h			;a374
	ret z			;a376
	ld hl,0df00h		;a377
	ld bc,0007fh		;a37a
	call 04648h		;a37d
	ld hl,092b8h		;a380
	call 08389h		;a383
	call 083b6h		;a386
	push hl			;a389
	pop ix			;a38a
la38ch:
	ld a,(ix+000h)		;a38c
	or a			;a38f
	ret z			;a390
	ld h,(ix+003h)		;a391
	ld l,(ix+002h)		;a394
	ld a,(ix+004h)		;a397
	call 0827bh		;a39a
	ld a,(ix+000h)		;a39d
	ld l,(ix+001h)		;a3a0
	call 083d5h		;a3a3
	ld a,(ix+001h)		;a3a6
	ld l,(ix+005h)		;a3a9
	ld h,0dfh		;a3ac
	ld (hl),a		;a3ae
	ld bc,00006h		;a3af
	add ix,bc		;a3b2
	jr la38ch		;a3b4
	ld a,(0ca10h)		;a3b6
	ld hl,083c0h		;a3b9
	call 0468eh		;a3bc
	ret			;a3bf
	rst 10h			;a3c0
	sub d			;a3c1
	ld h,093h		;a3c2
	ld a,e			;a3c4
	sub e			;a3c5
	cp b			;a3c6
	sub e			;a3c7
	ex (sp),hl		;a3c8
	sub e			;a3c9
	ld c,094h		;a3ca
	ccf			;a3cc
	sub h			;a3cd
	ld a,h			;a3ce
	sub h			;a3cf
	ld a,l			;a3d0
	sub h			;a3d1
	call nc,00083h		;a3d2
	ld de,0c800h		;a3d5
	ld h,000h		;a3d8
	add hl,hl		;a3da
	add hl,hl		;a3db
	add hl,hl		;a3dc
	add hl,de		;a3dd
	ld b,003h		;a3de
la3e0h:
	rrca			;a3e0
	push hl			;a3e1
	push af			;a3e2
	push bc			;a3e3
	call c,083f1h		;a3e4
	pop bc			;a3e7
	pop af			;a3e8
	pop hl			;a3e9
	ld de,00800h		;a3ea
	add hl,de		;a3ed
	djnz la3e0h		;a3ee
	ret			;a3f0
	ex de,hl		;a3f1
	ld hl,0d800h		;a3f2
	ld bc,(0d700h)		;a3f5
	call 046ach		;a3f9
	ret			;a3fc
	ld (hl),b		;a3fd
	ld h,b			;a3fe
	rla			;a3ff
	ld (hl),c		;a400
	ld b,l			;a401
la402h:
	add a,h			;a402
	ld (hl),b		;a403
	and a			;a404
	inc sp			;a405
	out (077h),a		;a406
	rst 20h			;a408
	nop			;a409
	ret p			;a40a
	rst 38h			;a40b
	ld bc,00101h		;a40c
	ld bc,00101h		;a40f
	ld bc,00101h		;a412
	ld bc,00101h		;a415
	ld bc,00101h		;a418
	ld bc,00101h		;a41b
	ld bc,00101h		;a41e
	ld bc,00101h		;a421
	ld bc,00101h		;a424
	ld bc,000ffh		;a427
	add a,b			;a42a
	nop			;a42b
	ccf			;a42c
	ld b,b			;a42d
	ccf			;a42e
	ld b,b			;a42f
	nop			;a430
	nop			;a431
	add a,b			;a432
	adc a,048h		;a433
	ld b,b			;a435
	dec hl			;a436
	ld b,c			;a437
	nop			;a438
	nop			;a439
	add a,b			;a43a
	ex de,hl		;a43b
	dec d			;a43c
	ld c,d			;a43d
	sub a			;a43e
	ld c,c			;a43f
	inc b			;a440
	rst 38h			;a441
	inc h			;a442
	adc a,0e9h		;a443
	rst 38h			;a445
	ld (bc),a		;a446
	nop			;a447
	inc b			;a448
	djnz $+24		;a449
	ld hl,03227h		;a44b
	nop			;a44e
	ld b,b			;a44f
	ld (00052h),hl		;a450
	sub b			;a453
	ld b,a			;a454
	or (hl)			;a455
	ld h,0c3h		;a456
	rst 38h			;a458
	nop			;a459
	nop			;a45a
	nop			;a45b
	nop			;a45c
	dec b			;a45d
	inc b			;a45e
	ex af,af'		;a45f
	ld bc,00506h		;a460
	inc b			;a463
	ex af,af'		;a464
	rlca			;a465
	ld b,005h		;a466
	inc b			;a468
	rlca			;a469
	rlca			;a46a
	ld b,005h		;a46b
	inc bc			;a46d
	inc bc			;a46e
	ld (bc),a		;a46f
	ld bc,00000h		;a470
	nop			;a473
	nop			;a474
	rst 38h			;a475
	nop			;a476
	rst 38h			;a477
	nop			;a478
	or e			;a479
	ld b,e			;a47a
	or (hl)			;a47b
	ld b,e			;a47c
	nop			;a47d
	nop			;a47e
	rst 38h			;a47f
	add a,0b9h		;a480
	ld b,e			;a482
	call c,00043h		;a483
	nop			;a486
	add a,b			;a487
	cp c			;a488
	rst 18h			;a489
	ld b,e			;a48a
	ld b,b			;a48b
	ld b,h			;a48c
	nop			;a48d
la48eh:
	nop			;a48e
	pop af			;a48f
	ld sp,04e3eh		;a490
	ld c,d			;a493
	ld c,(hl)		;a494
	nop			;a495
	nop			;a496
	add a,b			;a497
	ld c,h			;a498
	ld e,d			;a499
	ld c,(hl)		;a49a
	defb 0fdh,04fh,000h ;illegal sequence	;a49b
	nop			;a49e
	add a,b			;a49f
	adc a,l			;a4a0
	jr c,$+83		;a4a1
	ld sp,00052h		;a4a3
	nop			;a4a6
	add a,b			;a4a7
	or c			;a4a8
	push hl			;a4a9
	ld d,d			;a4aa
	jr la500h		;a4ab
	nop			;a4ad
	nop			;a4ae
	defb 0fdh,001h,059h ;illegal sequence	;a4af
	ld d,e			;a4b2
	jp nc,00054h		;a4b3
	nop			;a4b6
	ld h,c			;a4b7
	inc sp			;a4b8
	ld (hl),056h		;a4b9
	jp pe,00056h		;a4bb
	nop			;a4be
	ld a,c			;a4bf
	ld c,a			;a4c0
	ld (hl),l		;a4c1
	ld d,a			;a4c2
	sbc a,058h		;a4c3
	nop			;a4c5
	nop			;a4c6
	ld a,l			;a4c7
	add a,(hl)		;a4c8
	ex af,af'		;a4c9
	ld e,d			;a4ca
	ret c			;a4cb
	ld e,e			;a4cc
	nop			;a4cd
	nop			;a4ce
	jr nz,la48eh		;a4cf
	ld e,a			;a4d1
	ld e,l			;a4d2
	ld (hl),b		;a4d3
	ld e,l			;a4d4
	nop			;a4d5
	nop			;a4d6
	inc e			;a4d7
	ld (05d83h),a		;a4d8
	ccf			;a4db
	ld e,(hl)		;a4dc
	nop			;a4dd
	nop			;a4de
	inc e			;a4df
	add a,(hl)		;a4e0
	call 0db5eh		;a4e1
	ld e,(hl)		;a4e4
	nop			;a4e5
	nop			;a4e6
	jr $-67			;a4e7
	jp po,0f95eh		;a4e9
	ld e,(hl)		;a4ec
	nop			;a4ed
	nop			;a4ee
	inc e			;a4ef
	ret nz			;a4f0
	rrca			;a4f1
	ld e,a			;a4f2
	jr la554h		;a4f3
	nop			;a4f5
	nop			;a4f6
	ex af,af'		;a4f7
	ld sp,05f21h		;a4f8
	jr z,la55ch		;a4fb
	nop			;a4fd
	nop			;a4fe
	ex af,af'		;a4ff
la500h:
	ld l,e			;a500
	dec l			;a501
	ld e,a			;a502
	add hl,sp		;a503
	ld e,a			;a504
	nop			;a505
	nop			;a506
	ex af,af'		;a507
	ld a,d			;a508
	ld c,d			;a509
	ld e,a			;a50a
	ld d,h			;a50b
	ld e,a			;a50c
	nop			;a50d
	nop			;a50e
	ex af,af'		;a50f
	add a,d			;a510
	ld e,c			;a511
	ld e,a			;a512
	ld h,e			;a513
	ld e,a			;a514
	nop			;a515
	nop			;a516
	ex af,af'		;a517
	xor d			;a518
	ld l,l			;a519
	ld e,a			;a51a
	ld a,a			;a51b
	ld e,a			;a51c
	nop			;a51d
	nop			;a51e
	ex af,af'		;a51f
	cp c			;a520
	sub b			;a521
	ld e,a			;a522
	sbc a,a			;a523
	ld e,a			;a524
	nop			;a525
	nop			;a526
	inc b			;a527
	ld sp,05fabh		;a528
	or h			;a52b
	ld e,a			;a52c
	nop			;a52d
	nop			;a52e
	inc b			;a52f
	ld c,a			;a530
	or a			;a531
	ld e,a			;a532
	ld e,b			;a533
	ld h,c			;a534
	nop			;a535
	nop			;a536
	inc b			;a537
	and (hl)		;a538
	cp (hl)			;a539
	ld h,d			;a53a
	defb 0ddh,062h ;ld ixh,d	;a53b
	nop			;a53d
	nop			;a53e
	inc b			;a53f
	or h			;a540
	push af			;a541
	ld h,d			;a542
	scf			;a543
	ld h,e			;a544
	nop			;a545
	nop			;a546
	ld (bc),a		;a547
	ld bc,06376h		;a548
	dec b			;a54b
	ld h,h			;a54c
	nop			;a54d
	nop			;a54e
	ld (bc),a		;a54f
	inc de			;a550
	halt			;a551
	ld h,e			;a552
	dec b			;a553
la554h:
	ld h,h			;a554
	nop			;a555
	nop			;a556
	ld (bc),a		;a557
	ld sp,06495h		;a558
	and d			;a55b
la55ch:
	ld h,h			;a55c
	nop			;a55d
	nop			;a55e
	ld (bc),a		;a55f
	ld c,e			;a560
	and a			;a561
	ld h,h			;a562
	or e			;a563
	ld h,h			;a564
	nop			;a565
	nop			;a566
	ld (bc),a		;a567
	ld h,b			;a568
	cp (hl)			;a569
	ld h,h			;a56a
	adc a,l			;a56b
	ld h,l			;a56c
	nop			;a56d
	nop			;a56e
	ld (bc),a		;a56f
	adc a,l			;a570
	ld a,b			;a571
	ld h,(hl)		;a572
	jp m,00066h		;a573
	nop			;a576
	ld (bc),a		;a577
la578h:
	xor h			;a578
	ld a,h			;a579
	ld h,a			;a57a
	dec c			;a57b
	ld l,b			;a57c
	nop			;a57d
	nop			;a57e
	ld bc,08a32h		;a57f
	ld l,b			;a582
	ex (sp),hl		;a583
	ld l,b			;a584
	nop			;a585
	nop			;a586
	rst 38h			;a587
	adc a,048h		;a588
	ld b,b			;a58a
	in a,(042h)		;a58b
	nop			;a58d
	nop			;a58e
	rst 38h			;a58f
	ex de,hl		;a590
	dec d			;a591
	ld c,d			;a592
	sub 049h		;a593
	inc b			;a595
	cp 005h			;a596
	dec b			;a598
	dec b			;a599
	inc b			;a59a
	nop			;a59b
	nop			;a59c
	nop			;a59d
	nop			;a59e
	nop			;a59f
	nop			;a5a0
	nop			;a5a1
	nop			;a5a2
	nop			;a5a3
	nop			;a5a4
	nop			;a5a5
	nop			;a5a6
	nop			;a5a7
	nop			;a5a8
	nop			;a5a9
	nop			;a5aa
	nop			;a5ab
	nop			;a5ac
	nop			;a5ad
	nop			;a5ae
	ld bc,00302h		;a5af
	nop			;a5b2
	rst 38h			;a5b3
	nop			;a5b4
	ret po			;a5b5
	ld bc,07b10h		;a5b6
	jr nc,la637h		;a5b9
	inc b			;a5bb
	nop			;a5bc
	ret nz			;a5bd
	inc l			;a5be
	cp 07ch			;a5bf
	ld e,l			;a5c1
	ld a,l			;a5c2
	inc b			;a5c3
	nop			;a5c4
	ret nz			;a5c5
	sub b			;a5c6
	xor (hl)		;a5c7
la5c8h:
	ld a,l			;a5c8
	defb 0ddh,07dh ;ld a,ixl	;a5c9
	inc b			;a5cb
	nop			;a5cc
la5cdh:
	add a,b			;a5cd
	add hl,sp		;a5ce
	jp m,02f7dh		;a5cf
	ld a,(hl)		;a5d2
	inc b			;a5d3
	nop			;a5d4
	add a,b			;a5d5
	sbc a,b			;a5d6
	ld c,(hl)		;a5d7
	ld a,(hl)		;a5d8
	ld (hl),c		;a5d9
	ld a,(hl)		;a5da
	inc b			;a5db
	nop			;a5dc
	ld b,b			;a5dd
	add hl,sp		;a5de
	ld a,(hl)		;a5df
	ld a,(hl)		;a5e0
	ex (sp),hl		;a5e1
	add a,b			;a5e2
	inc b			;a5e3
	nop			;a5e4
	ld b,b			;a5e5
	sbc a,b			;a5e6
	jp p,0c981h		;a5e7
	add a,d			;a5ea
	inc b			;a5eb
	nop			;a5ec
	jr nz,$+46		;a5ed
	dec sp			;a5ef
	add a,e			;a5f0
	and l			;a5f1
	add a,l			;a5f2
	inc b			;a5f3
	nop			;a5f4
	jr nz,la578h		;a5f5
	inc sp			;a5f7
	add a,a			;a5f8
	ld h,(hl)		;a5f9
	adc a,c			;a5fa
	inc b			;a5fb
	nop			;a5fc
	jr la5ffh		;a5fd
la5ffh:
	or e			;a5ff
	ld b,e			;a600
	or (hl)			;a601
	ld b,e			;a602
	nop			;a603
	nop			;a604
	jr la5cdh		;a605
	cp c			;a607
	ld b,e			;a608
	call c,00043h		;a609
	nop			;a60c
	djnz la5c8h		;a60d
	rst 18h			;a60f
	ld b,e			;a610
	ld b,b			;a611
	ld b,h			;a612
	nop			;a613
	nop			;a614
	jr la618h		;a615
	add a,h			;a617
la618h:
	ld b,h			;a618
	call z,00044h		;a619
	nop			;a61c
	djnz $+18		;a61d
	cp 044h			;a61f
	xor h			;a621
	ld b,l			;a622
	nop			;a623
	nop			;a624
	ex af,af'		;a625
	djnz la633h		;a626
	ld b,(hl)		;a628
	inc (hl)		;a629
	ld c,d			;a62a
	nop			;a62b
	nop			;a62c
	ret m			;a62d
	adc a,048h		;a62e
	ld b,b			;a630
	in a,(042h)		;a631
la633h:
	nop			;a633
	nop			;a634
	ret m			;a635
	ex de,hl		;a636
la637h:
	dec d			;a637
	ld c,d			;a638
	sub 049h		;a639
	inc b			;a63b
	nop			;a63c
	ld b,b			;a63d
	ret nz			;a63e
	nop			;a63f
	ld b,b			;a640
	ld e,040h		;a641
	nop			;a643
	rst 38h			;a644
	inc bc			;a645
	cp l			;a646
	push bc			;a647
	rst 38h			;a648
	rst 38h			;a649
	rst 38h			;a64a
	rst 38h			;a64b
	ld b,a			;a64c
	ld bc,00210h		;a64d
	ld de,0031eh		;a650
	rra			;a653
	adc a,l			;a654
	rst 38h			;a655
	rst 38h			;a656
	rst 38h			;a657
	rst 38h			;a658
	inc bc			;a659
	dec c			;a65a
	adc a,a			;a65b
	inc bc			;a65c
	and (hl)		;a65d
	or c			;a65e
	ld b,a			;a65f
	or (hl)			;a660
	cp e			;a661
	inc bc			;a662
	cp h			;a663
	call 0ffffh		;a664
	rst 38h			;a667
	rst 38h			;a668
	ld b,a			;a669
	ld bc,04710h		;a66a
	ld d,030h		;a66d
	ld (bc),a		;a66f
	ld de,00211h		;a670
	jr la68dh		;a673
	inc bc			;a675
	inc sp			;a676
	adc a,h			;a677
	ld (bc),a		;a678
	adc a,l			;a679
	xor e			;a67a
	inc bc			;a67b
	cp l			;a67c
	push bc			;a67d
	rst 38h			;a67e
	jr nz,$+3		;a67f
	ld sp,04212h		;a681
	inc hl			;a684
	inc b			;a685
	ld sp,04306h		;a686
	rlca			;a689
	ld d,l			;a68a
	nop			;a68b
	sub b			;a68c
la68dh:
	ld d,(hl)		;a68d
	or (hl)			;a68e
	inc de			;a68f
	jp 001ffh		;a690
	ld bc,00101h		;a693
	ld (bc),a		;a696
	ld (bc),a		;a697
	inc bc			;a698
	inc bc			;a699
	rst 38h			;a69a
	nop			;a69b
	add a,b			;a69c
	ld bc,04000h		;a69d
	add a,d			;a6a0
	ld b,b			;a6a1
	inc b			;a6a2
	nop			;a6a3
	add a,b			;a6a4
	ld de,040f0h		;a6a5
	ld h,042h		;a6a8
	inc b			;a6aa
	nop			;a6ab
	add a,b			;a6ac
	ld c,e			;a6ad
la6aeh:
	sub (hl)		;a6ae
	ld b,e			;a6af
	xor h			;a6b0
	ld b,l			;a6b1
	inc b			;a6b2
	nop			;a6b3
	add a,b			;a6b4
	xor b			;a6b5
	ld e,b			;a6b6
	ld b,a			;a6b7
	ld (hl),l		;a6b8
	ld c,b			;a6b9
	inc b			;a6ba
	nop			;a6bb
	ld b,b			;a6bc
	ld bc,lb0f1h		;a6bd
	sub l			;a6c0
	or d			;a6c1
	nop			;a6c2
	ld bc,00120h		;a6c3
	pop af			;a6c6
	or b			;a6c7
	sub l			;a6c8
	or d			;a6c9
	nop			;a6ca
	nop			;a6cb
	ld b,b			;a6cc
	ld d,b			;a6cd
	call nz,0d4b3h		;a6ce
	or (hl)			;a6d1
	nop			;a6d2
	ld bc,05020h		;a6d3
	call nz,0d4b3h		;a6d6
	or (hl)			;a6d9
	nop			;a6da
	nop			;a6db
	ld h,b			;a6dc
	call nz,0b94eh		;a6dd
	add a,(hl)		;a6e0
	cp c			;a6e1
	nop			;a6e2
	nop			;a6e3
	ld b,b			;a6e4
	res 1,c			;a6e5
	cp c			;a6e7
	and e			;a6e8
	cp c			;a6e9
	nop			;a6ea
	ld bc,0cb20h		;a6eb
	adc a,c			;a6ee
	cp c			;a6ef
la6f0h:
	and e			;a6f0
	cp c			;a6f1
	nop			;a6f2
	nop			;a6f3
	jr nz,la6aeh		;a6f4
	or (hl)			;a6f6
	cp c			;a6f7
	ret pe			;a6f8
	cp c			;a6f9
	nop			;a6fa
	rst 38h			;a6fb
	ld b,a			;a6fc
	ld bc,00310h		;a6fd
	ld de,0474ah		;a700
	xor h			;a703
	cp a			;a704
	inc bc			;a705
	ret nz			;a706
	call 0ffffh		;a707
	rst 38h			;a70a
	rst 38h			;a70b
	inc bc			;a70c
	ld d,b			;a70d
	cp l			;a70e
	ld b,a			;a70f
	set 1,l			;a710
	ld (bc),a		;a712
	call nz,0ffcah		;a713
	nop			;a716
	nop			;a717
	jr nc,$+19		;a718
	ld h,c			;a71a
	inc h			;a71b
	ld (hl),h		;a71c
	ld (hl),074h		;a71d
	ld b,h			;a71f
	ld (07252h),hl		;a720
	sub d			;a723
	ld b,(hl)		;a724
	or (hl)			;a725
	inc d			;a726
	jp 001ffh		;a727
	ld bc,00202h		;a72a
	inc bc			;a72d
	inc b			;a72e
	dec b			;a72f
	ld b,0ffh		;a730
	nop			;a732
	rst 38h			;a733
	nop			;a734
	ld b,l			;a735
	ld b,b			;a736
	ld b,d			;a737
	ld b,b			;a738
	nop			;a739
	nop			;a73a
	add a,b			;a73b
	ld bc,06918h		;a73c
	ld c,h			;a73f
	ld l,c			;a740
	nop			;a741
	nop			;a742
	add a,b			;a743
	ld l,(hl)		;a744
	ld h,h			;a745
	ld l,c			;a746
	add hl,hl		;a747
	ld l,e			;a748
	nop			;a749
	nop			;a74a
	ld b,b			;a74b
	ld bc,06bf9h		;a74c
	add hl,hl		;a74f
	ld l,h			;a750
	nop			;a751
	nop			;a752
	ld b,b			;a753
	ld l,c			;a754
	ld b,b			;a755
	ld l,h			;a756
	ld hl,(0006eh)		;a757
	nop			;a75a
	ret nz			;a75b
	add hl,bc		;a75c
	jr nz,la7ceh		;a75d
	ret pe			;a75f
	ld (hl),c		;a760
	nop			;a761
	nop			;a762
	ret nz			;a763
	and a			;a764
	dec c			;a765
	ld (hl),h		;a766
	ld b,l			;a767
	ld (hl),h		;a768
	nop			;a769
	nop			;a76a
	add a,b			;a76b
	xor a			;a76c
	ld a,h			;a76d
	ld (hl),h		;a76e
	adc a,074h		;a76f
	nop			;a771
	ld bc,laf40h		;a772
	ld a,h			;a775
	ld (hl),h		;a776
	adc a,074h		;a777
	nop			;a779
	nop			;a77a
	ret nz			;a77b
	cp c			;a77c
	inc e			;a77d
	ld (hl),l		;a77e
	ld l,075h		;a77f
	nop			;a781
	nop			;a782
	add a,b			;a783
	cp h			;a784
	ld c,b			;a785
la786h:
	ld (hl),l		;a786
	xor h			;a787
	ld (hl),l		;a788
	nop			;a789
	ld bc,lbc40h		;a78a
	ld c,b			;a78d
	ld (hl),l		;a78e
	xor h			;a78f
	ld (hl),l		;a790
	nop			;a791
	nop			;a792
	ret nz			;a793
	jp z,07613h		;a794
	inc (hl)		;a797
	halt			;a798
	nop			;a799
	nop			;a79a
	ret nz			;a79b
	ld e,b			;a79c
	cp c			;a79d
	ld b,e			;a79e
	call c,00043h		;a79f
	nop			;a7a2
	jr nz,$+3		;a7a3
	call z,01a9eh		;a7a5
	sbc a,a			;a7a8
	nop			;a7a9
	nop			;a7aa
	jr nc,la7bdh		;a7ab
	ccf			;a7ad
	sbc a,a			;a7ae
	ld e,h			;a7af
	sbc a,a			;a7b0
	nop			;a7b1
	nop			;a7b2
	jr nz,la7fdh		;a7b3
	ld l,l			;a7b5
	sbc a,a			;a7b6
	inc e			;a7b7
	and c			;a7b8
	nop			;a7b9
	nop			;a7ba
la7bbh:
	jr nc,$-109		;a7bb
la7bdh:
	adc a,h			;a7bd
	and d			;a7be
	rst 28h			;a7bf
	and d			;a7c0
	nop			;a7c1
la7c2h:
	nop			;a7c2
	jr nc,la786h		;a7c3
	ld d,h			;a7c5
	and e			;a7c6
la7c7h:
	ld a,e			;a7c7
	and e			;a7c8
	nop			;a7c9
	nop			;a7ca
	jr nc,$-54		;a7cb
	and h			;a7cd
la7ceh:
	and e			;a7ce
	or (hl)			;a7cf
	and e			;a7d0
	nop			;a7d1
	nop			;a7d2
	djnz la7d6h		;a7d3
	ret z			;a7d5
la7d6h:
	and e			;a7d6
	ld (de),a		;a7d7
	and h			;a7d8
	nop			;a7d9
	nop			;a7da
	djnz la7eah		;a7db
	ld b,a			;a7dd
	and h			;a7de
	ld d,e			;a7df
	and h			;a7e0
	nop			;a7e1
	nop			;a7e2
	djnz la815h		;a7e3
	ld h,e			;a7e5
	and h			;a7e6
	pop bc			;a7e7
	and (hl)		;a7e8
	nop			;a7e9
la7eah:
	nop			;a7ea
	jr $-85			;a7eb
	rst 30h			;a7ed
	xor b			;a7ee
	adc a,h			;a7ef
	xor c			;a7f0
	nop			;a7f1
	nop			;a7f2
	jr la7bbh		;a7f3
	ld a,(de)		;a7f5
	xor d			;a7f6
	ld h,0aah		;a7f7
	nop			;a7f9
	nop			;a7fa
	jr la7c7h		;a7fb
la7fdh:
	inc (hl)		;a7fd
	xor d			;a7fe
	ld d,(hl)		;a7ff
	xor d			;a800
	nop			;a801
	nop			;a802
	ex af,af'		;a803
	ld bc,laa77h		;a804
	ind			;a807
	nop			;a809
	nop			;a80a
	ex af,af'		;a80b
	jr nz,la846h		;a80c
	xor e			;a80e
	xor a			;a80f
	xor e			;a810
	nop			;a811
	inc bc			;a812
	ex af,af'		;a813
	dec sp			;a814
la815h:
	jr c,la7c2h		;a815
	xor a			;a817
	xor e			;a818
	nop			;a819
	nop			;a81a
	ex af,af'		;a81b
	ld a,(lac48h)		;a81c
	ld c,l			;a81f
	xor h			;a820
	nop			;a821
	nop			;a822
	ex af,af'		;a823
	ld d,l			;a824
	ld d,e			;a825
	xor h			;a826
	xor e			;a827
	xor h			;a828
	nop			;a829
	nop			;a82a
	ex af,af'		;a82b
	ld h,l			;a82c
	dec d			;a82d
	xor l			;a82e
	add hl,sp		;a82f
	xor l			;a830
	nop			;a831
	ld (bc),a		;a832
	ex af,af'		;a833
	ld l,h			;a834
	dec d			;a835
	xor l			;a836
	add hl,sp		;a837
	xor l			;a838
	nop			;a839
	nop			;a83a
	ex af,af'		;a83b
	ld (hl),e		;a83c
	ld l,l			;a83d
	xor l			;a83e
	ret p			;a83f
	xor (hl)		;a840
	nop			;a841
	nop			;a842
	ex af,af'		;a843
	cp h			;a844
	ccf			;a845
la846h:
	or b			;a846
	adc a,h			;a847
	or b			;a848
	nop			;a849
	nop			;a84a
	ex af,af'		;a84b
	ret z			;a84c
	ret nc			;a84d
	or b			;a84e
	pop hl			;a84f
	or b			;a850
	nop			;a851
	rst 38h			;a852
	inc bc			;a853
	add hl,bc		;a854
	dec bc			;a855
	ld b,a			;a856
	ld e,023h		;a857
	inc bc			;a859
	inc h			;a85a
	inc h			;a85b
	ld b,a			;a85c
	dec h			;a85d
	dec h			;a85e
	ld (bc),a		;a85f
	ld h,027h		;a860
	inc bc			;a862
	jr z,la88fh		;a863
	ld b,a			;a865
	dec hl			;a866
	inc l			;a867
	inc bc			;a868
	dec l			;a869
	dec l			;a86a
	ld (bc),a		;a86b
	ld l,030h		;a86c
	inc bc			;a86e
	ld sp,04731h		;a86f
	ld (00332h),a		;a872
	inc sp			;a875
	inc sp			;a876
	ld (bc),a		;a877
	inc (hl)		;a878
	inc (hl)		;a879
	inc bc			;a87a
	dec (hl)		;a87b
	scf			;a87c
	ld (bc),a		;a87d
	jr c,la8c1h		;a87e
	inc bc			;a880
	ld b,d			;a881
	ld b,e			;a882
	ld (bc),a		;a883
	ld b,h			;a884
	ld b,a			;a885
	inc bc			;a886
	ld c,b			;a887
la888h:
	ld c,d			;a888
	ld b,a			;a889
	ld d,(hl)		;a88a
	ld d,a			;a88b
	ld b,a			;a88c
	ld h,b			;a88d
	ld l,b			;a88e
la88fh:
	inc bc			;a88f
	ld l,c			;a890
la891h:
	and (hl)		;a891
	dec de			;a892
	and a			;a893
	xor (hl)		;a894
	ld b,a			;a895
	xor a			;a896
	cp b			;a897
	inc bc			;a898
	cp c			;a899
	cp e			;a89a
	ld (bc),a		;a89b
	cp h			;a89c
	cp h			;a89d
	ld b,a			;a89e
	cp l			;a89f
	cp (hl)			;a8a0
	ld (bc),a		;a8a1
	cp a			;a8a2
	cp a			;a8a3
	ld b,a			;a8a4
	ret nz			;a8a5
	pop bc			;a8a6
	inc bc			;a8a7
	jp nz,00bc3h		;a8a8
	jp z,003cbh		;a8ab
	call z,000cdh		;a8ae
	jp z,0ffcbh		;a8b1
	nop			;a8b4
	nop			;a8b5
	ld (bc),a		;a8b6
	ld (de),a		;a8b7
	inc bc			;a8b8
	inc hl			;a8b9
	inc b			;a8ba
	inc (hl)		;a8bb
	dec b			;a8bc
	ld b,l			;a8bd
	ld d,d			;a8be
	ld d,h			;a8bf
	ld b,b			;a8c0
la8c1h:
	sub b			;a8c1
	ld b,c			;a8c2
	or e			;a8c3
	jr nc,la888h		;a8c4
	rst 38h			;a8c6
	rst 38h			;a8c7
	rst 38h			;a8c8
	inc bc			;a8c9
	jr nc,la891h		;a8ca
	ld b,a			;a8cc
	add a,0cdh		;a8cd
	rst 38h			;a8cf
	ld (bc),a		;a8d0
	nop			;a8d1
	inc de			;a8d2
	ld de,02224h		;a8d3
	ld b,b			;a8d6
	jr nc,la94ch		;a8d7
	ld b,e			;a8d9
	ld (hl),b		;a8da
	ld d,l			;a8db
	ld (05692h),hl		;a8dc
	or (hl)			;a8df
	inc de			;a8e0
	jp 001ffh		;a8e1
	ld bc,00101h		;a8e4
	ld (bc),a		;a8e7
	ld (bc),a		;a8e8
	inc bc			;a8e9
	inc bc			;a8ea
	rst 38h			;a8eb
	nop			;a8ec
	add a,b			;a8ed
	ld bc,07647h		;a8ee
	inc l			;a8f1
	ld a,b			;a8f2
	nop			;a8f3
	nop			;a8f4
	add a,b			;a8f5
	ld d,d			;a8f6
	halt			;a8f7
	ld a,c			;a8f8
	ret z			;a8f9
	ld a,c			;a8fa
	nop			;a8fb
	nop			;a8fc
	add a,b			;a8fd
	ld e,h			;a8fe
	dec b			;a8ff
	ld a,d			;a900
	and e			;a901
	ld a,h			;a902
	nop			;a903
	nop			;a904
	ld b,b			;a905
	ld bc,0955fh		;a906
	jp (hl)			;a909
	sub l			;a90a
	inc b			;a90b
	ld bc,00120h		;a90c
	ld e,a			;a90f
	sub l			;a910
	jp (hl)			;a911
	sub l			;a912
	inc b			;a913
	nop			;a914
	ld b,b			;a915
	ld d,b			;a916
	ld (hl),097h		;a917
	rst 30h			;a919
	sbc a,c			;a91a
	inc b			;a91b
	ld bc,05020h		;a91c
	ld (hl),097h		;a91f
	rst 30h			;a921
	sbc a,c			;a922
	inc b			;a923
	nop			;a924
	ld b,b			;a925
	rla			;a926
	dec (hl)		;a927
	sub (hl)		;a928
	and 096h		;a929
	inc b			;a92b
	ld bc,01720h		;a92c
	dec (hl)		;a92f
	sub (hl)		;a930
	and 096h		;a931
	inc b			;a933
	nop			;a934
	ld h,b			;a935
	or d			;a936
	ld e,d			;a937
	sbc a,h			;a938
	ld l,h			;a939
	sbc a,h			;a93a
	inc b			;a93b
	nop			;a93c
	ld b,b			;a93d
	rst 0			;a93e
	ld (hl),a		;a93f
	sbc a,h			;a940
	and c			;a941
	sbc a,h			;a942
	inc b			;a943
	ld bc,0c720h		;a944
	ld (hl),a		;a947
	sbc a,h			;a948
	and c			;a949
	sbc a,h			;a94a
	inc b			;a94b
la94ch:
	nop			;a94c
	ld h,b			;a94d
	call z,09ccbh		;a94e
	defb 0ddh,09ch ;sbc a,ixh	;a951
	inc b			;a953
	rst 38h			;a954
	ld b,a			;a955
	ld d,d			;a956
	ld e,e			;a957
	inc bc			;a958
	ld e,h			;a959
	sbc a,e			;a95a
	ld b,a			;a95b
	ld l,(hl)		;a95c
	ld l,(hl)		;a95d
	ld (bc),a		;a95e
	sub d			;a95f
	sub e			;a960
	ld (bc),a		;a961
	sbc a,b			;a962
	sbc a,c			;a963
	inc bc			;a964
	and e			;a965
	or d			;a966
	inc bc			;a967
	cp d			;a968
	jp nz,0c503h		;a969
	add a,003h		;a96c
	ret z			;a96e
	call sub_af02h		;a96f
	or b			;a972
	ld (bc),a		;a973
	cp e			;a974
	cp h			;a975
	add a,e			;a976
	ld (hl),d		;a977
	ld (hl),d		;a978
	add a,e			;a979
	add a,b			;a97a
	add a,b			;a97b
	add a,e			;a97c
	adc a,h			;a97d
	adc a,l			;a97e
	add a,e			;a97f
	sub h			;a980
	sub h			;a981
	add a,e			;a982
	and h			;a983
	and h			;a984
	ld (bc),a		;a985
	and a			;a986
	xor b			;a987
	add a,e			;a988
	xor h			;a989
	xor h			;a98a
	add a,e			;a98b
	xor (hl)		;a98c
	xor (hl)		;a98d
	add a,e			;a98e
	ret nz			;a98f
	ret nz			;a990
	ld b,a			;a991
	and l			;a992
	and (hl)		;a993
	ld b,a			;a994
	call z,047cch		;a995
	cp (hl)			;a998
	cp (hl)			;a999
	rst 38h			;a99a
	nop			;a99b
	nop			;a99c
	ld bc,00212h		;a99d
	inc hl			;a9a0
la9a1h:
	inc bc			;a9a1
	inc (hl)		;a9a2
	inc b			;a9a3
	ld b,l			;a9a4
	ld h,b			;a9a5
	ld d,h			;a9a6
	ld b,b			;a9a7
	sub d			;a9a8
	ld d,b			;a9a9
	or e			;a9aa
	inc b			;a9ab
	ret nz			;a9ac
	rst 38h			;a9ad
	rst 38h			;a9ae
	rst 38h			;a9af
	inc bc			;a9b0
	ld d,b			;a9b1
	ld h,d			;a9b2
	ld (bc),a		;a9b3
	ld h,e			;a9b4
	or d			;a9b5
	ld b,a			;a9b6
	rst 0			;a9b7
	call 022ffh		;a9b8
	ld (bc),a		;a9bb
	djnz la9ceh		;a9bc
	jr nc,la9e0h		;a9be
	ld d,b			;a9c0
	jr nc,la9c8h		;a9c1
	ld b,b			;a9c3
	scf			;a9c4
	ld d,l			;a9c5
	ld (hl),b		;a9c6
	sub b			;a9c7
la9c8h:
	ld d,(hl)		;a9c8
	or (hl)			;a9c9
	inc de			;a9ca
	jp 001ffh		;a9cb
la9ceh:
	ld bc,00101h		;a9ce
	inc b			;a9d1
	inc b			;a9d2
	inc b			;a9d3
	inc b			;a9d4
	inc bc			;a9d5
	inc bc			;a9d6
	inc bc			;a9d7
	inc bc			;a9d8
	ld (bc),a		;a9d9
	ld (bc),a		;a9da
	ld (bc),a		;a9db
	ld (bc),a		;a9dc
	dec b			;a9dd
	dec b			;a9de
	dec b			;a9df
la9e0h:
	dec b			;a9e0
	rst 38h			;a9e1
	nop			;a9e2
	ret p			;a9e3
	ld bc,07ee0h		;a9e4
	rst 30h			;a9e7
	ld a,(hl)		;a9e8
	nop			;a9e9
	ld (bc),a		;a9ea
	ret p			;a9eb
	inc b			;a9ec
	ret po			;a9ed
	ld a,(hl)		;a9ee
	rst 30h			;a9ef
	ld a,(hl)		;a9f0
	nop			;a9f1
	ld bc,007f0h		;a9f2
	ret po			;a9f5
	ld a,(hl)		;a9f6
	rst 30h			;a9f7
	ld a,(hl)		;a9f8
	nop			;a9f9
	inc bc			;a9fa
	ret p			;a9fb
	ld a,(bc)		;a9fc
	ret po			;a9fd
	ld a,(hl)		;a9fe
	rst 30h			;a9ff
	ld a,(hl)		;aa00
	nop			;aa01
	nop			;aa02
	ret p			;aa03
	dec c			;aa04
	inc c			;aa05
	ld a,a			;aa06
	ld (hl),07fh		;aa07
	nop			;aa09
	ld bc,013f0h		;aa0a
	inc c			;aa0d
	ld a,a			;aa0e
	ld (hl),07fh		;aa0f
	nop			;aa11
	nop			;aa12
	ret p			;aa13
	add hl,de		;aa14
	ld e,e			;aa15
	ld a,a			;aa16
	and (hl)		;aa17
	ld a,a			;aa18
	nop			;aa19
laa1ah:
	nop			;aa1a
	ret p			;aa1b
	cp b			;aa1c
	rst 30h			;aa1d
	ld a,a			;aa1e
	djnz la9a1h		;aa1f
	nop			;aa21
laa22h:
	nop			;aa22
	ret p			;aa23
	call z,08041h		;aa24
	ld b,(hl)		;aa27
	add a,b			;aa28
	nop			;aa29
	nop			;aa2a
	ret p			;aa2b
	sub h			;aa2c
	ld c,c			;aa2d
	add a,b			;aa2e
	adc a,c			;aa2f
	add a,b			;aa30
	nop			;aa31
	ld (bc),a		;aa32
	ret p			;aa33
	sbc a,l			;aa34
	ld c,c			;aa35
	add a,b			;aa36
	adc a,c			;aa37
	add a,b			;aa38
	nop			;aa39
	ld bc,la6f0h		;aa3a
	ld c,c			;aa3d
	add a,b			;aa3e
	adc a,c			;aa3f
	add a,b			;aa40
	nop			;aa41
	ld bc,la6f0h		;aa42
	ld c,c			;aa45
	add a,b			;aa46
	adc a,c			;aa47
	add a,b			;aa48
	nop			;aa49
	inc bc			;aa4a
	ret p			;aa4b
	xor a			;aa4c
	ld c,c			;aa4d
	add a,b			;aa4e
	adc a,c			;aa4f
	add a,b			;aa50
	nop			;aa51
	nop			;aa52
laa53h:
	ret p			;aa53
	add a,b			;aa54
	out (080h),a		;aa55
	ret po			;aa57
	add a,b			;aa58
	nop			;aa59
	ld (bc),a		;aa5a
	ret p			;aa5b
	add a,e			;aa5c
	out (080h),a		;aa5d
	ret po			;aa5f
	add a,b			;aa60
	nop			;aa61
	nop			;aa62
	add a,b			;aa63
	cp (hl)			;aa64
	pop af			;aa65
	add a,b			;aa66
	ret m			;aa67
	add a,b			;aa68
	nop			;aa69
	ld bc,0c580h		;aa6a
	pop af			;aa6d
	add a,b			;aa6e
	ret m			;aa6f
	add a,b			;aa70
	nop			;aa71
	nop			;aa72
laa73h:
	ld b,b			;aa73
	cp (hl)			;aa74
	rst 38h			;aa75
	add a,b			;aa76
laa77h:
	inc b			;aa77
	add a,c			;aa78
	nop			;aa79
	ld bc,0c540h		;aa7a
	rst 38h			;aa7d
	add a,b			;aa7e
	inc b			;aa7f
	add a,c			;aa80
	nop			;aa81
	nop			;aa82
laa83h:
	jr nz,$-64		;aa83
	dec bc			;aa85
	add a,c			;aa86
	ld (de),a		;aa87
	add a,c			;aa88
	nop			;aa89
	ld bc,0c520h		;aa8a
	dec bc			;aa8d
	add a,c			;aa8e
	ld (de),a		;aa8f
	add a,c			;aa90
	nop			;aa91
	nop			;aa92
	djnz laa53h		;aa93
	add hl,de		;aa95
	add a,c			;aa96
	jr nz,laa1ah		;aa97
	nop			;aa99
	ld bc,0c510h		;aa9a
	add hl,de		;aa9d
	add a,c			;aa9e
	jr nz,laa22h		;aa9f
	nop			;aaa1
	nop			;aaa2
	ret p			;aaa3
	adc a,048h		;aaa4
	ld b,b			;aaa6
	inc bc			;aaa7
	ld b,d			;aaa8
	nop			;aaa9
	nop			;aaaa
	ex af,af'		;aaab
	ld bc,lba12h		;aaac
	jr z,$-68		;aaaf
	nop			;aab1
	ld (bc),a		;aab2
	ex af,af'		;aab3
	inc b			;aab4
	ld (de),a		;aab5
	cp d			;aab6
	jr z,laa73h		;aab7
	nop			;aab9
	ld bc,00708h		;aaba
	ld (de),a		;aabd
	cp d			;aabe
	jr z,$-68		;aabf
	nop			;aac1
	inc bc			;aac2
	ex af,af'		;aac3
	ld a,(bc)		;aac4
	ld (de),a		;aac5
	cp d			;aac6
	jr z,laa83h		;aac7
	nop			;aac9
	nop			;aaca
	ex af,af'		;aacb
	dec c			;aacc
	ld (047bah),a		;aacd
	cp d			;aad0
	nop			;aad1
	ld bc,01308h		;aad2
	ld (047bah),a		;aad5
	cp d			;aad8
	nop			;aad9
	nop			;aada
	ex af,af'		;aadb
	dec h			;aadc
	ld d,d			;aadd
	cp d			;aade
	ld d,l			;aadf
	cp d			;aae0
	nop			;aae1
	nop			;aae2
	ex af,af'		;aae3
	ld l,b			;aae4
	ld e,b			;aae5
	cp d			;aae6
	and l			;aae7
	cp d			;aae8
	nop			;aae9
	ld (bc),a		;aaea
	ex af,af'		;aaeb
	ld (hl),d		;aaec
	ld e,b			;aaed
	cp d			;aaee
	and l			;aaef
	cp d			;aaf0
	nop			;aaf1
	nop			;aaf2
	ex af,af'		;aaf3
	xor h			;aaf4
	call p,01abah		;aaf5
	cp e			;aaf8
	nop			;aaf9
	nop			;aafa
	ex af,af'		;aafb
	cp h			;aafc
	ld e,l			;aafd
	cp e			;aafe
	ld l,c			;aaff
	cp e			;ab00
	nop			;ab01
	ld bc,0bf08h		;ab02
	ld e,l			;ab05
	cp e			;ab06
	ld l,c			;ab07
	cp e			;ab08
	nop			;ab09
	nop			;ab0a
	ex af,af'		;ab0b
	ld h,083h		;ab0c
	cp e			;ab0e
	or a			;ab0f
	cp e			;ab10
	nop			;ab11
	ld bc,02d08h		;ab12
	add a,e			;ab15
	cp e			;ab16
	or a			;ab17
	cp e			;ab18
	nop			;ab19
	ld (bc),a		;ab1a
	ex af,af'		;ab1b
	inc (hl)		;ab1c
	add a,e			;ab1d
	cp e			;ab1e
	or a			;ab1f
	cp e			;ab20
	nop			;ab21
	inc bc			;ab22
	ex af,af'		;ab23
	dec sp			;ab24
	add a,e			;ab25
	cp e			;ab26
	or a			;ab27
	cp e			;ab28
	nop			;ab29
	nop			;ab2a
	ex af,af'		;ab2b
	ld b,d			;ab2c
	ret pe			;ab2d
	cp e			;ab2e
	di			;ab2f
	cp e			;ab30
	nop			;ab31
	ld bc,04408h		;ab32
	ret pe			;ab35
	cp e			;ab36
	di			;ab37
	cp e			;ab38
	nop			;ab39
	nop			;ab3a
	ex af,af'		;ab3b
	ld a,h			;ab3c
	ld (bc),a		;ab3d
	cp h			;ab3e
	ld a,(000bch)		;ab3f
	ld bc,08408h		;ab42
	ld (bc),a		;ab45
	cp h			;ab46
	ld a,(000bch)		;ab47
	ld (bc),a		;ab4a
	ex af,af'		;ab4b
	adc a,h			;ab4c
	ld (bc),a		;ab4d
	cp h			;ab4e
	ld a,(000bch)		;ab4f
	inc bc			;ab52
	ex af,af'		;ab53
	sub h			;ab54
	ld (bc),a		;ab55
	cp h			;ab56
	ld a,(000bch)		;ab57
	nop			;ab5a
	ex af,af'		;ab5b
	sbc a,h			;ab5c
	ld a,c			;ab5d
	cp h			;ab5e
	xor a			;ab5f
	cp h			;ab60
	nop			;ab61
	ld (bc),a		;ab62
	ex af,af'		;ab63
	and h			;ab64
	ld a,c			;ab65
	cp h			;ab66
	xor a			;ab67
	cp h			;ab68
	nop			;ab69
	nop			;ab6a
	ex af,af'		;ab6b
	jp nz,lbcebh		;ab6c
	inc e			;ab6f
	cp l			;ab70
	nop			;ab71
	ld (bc),a		;ab72
	ex af,af'		;ab73
	ret z			;ab74
	ex de,hl		;ab75
	cp h			;ab76
	inc e			;ab77
	cp l			;ab78
	nop			;ab79
	nop			;ab7a
	ex af,af'		;ab7b
	ld h,b			;ab7c
	ld c,e			;ab7d
	cp l			;ab7e
	ld d,l			;ab7f
	cp l			;ab80
	nop			;ab81
	ld (bc),a		;ab82
	ex af,af'		;ab83
	ld h,d			;ab84
	ld c,e			;ab85
	cp l			;ab86
	ld d,l			;ab87
	cp l			;ab88
	nop			;ab89
	rst 38h			;ab8a
	inc bc			;ab8b
	ld h,b			;ab8c
	xor e			;ab8d
	inc bc			;ab8e
	xor h			;ab8f
	call 000ffh		;ab90
	nop			;ab93
	ld h,(hl)		;ab94
	ld d,010h		;ab95
	ld hl,03220h		;ab97
	ld sp,04243h		;ab9a
	ld d,h			;ab9d
	nop			;ab9e
	sub b			;ab9f
	ld b,b			;aba0
	or b			;aba1
	ld h,b			;aba2
	ret nz			;aba3
	rst 38h			;aba4
	rst 38h			;aba5
	rst 38h			;aba6
	ld (bc),a		;aba7
	ld h,b			;aba8
	xor e			;aba9
	ld b,a			;abaa
	xor h			;abab
	call 003ffh		;abac
	nop			;abaf
	jr nc,$+20		;abb0
	ld d,c			;abb2
	inc h			;abb3
	ld (hl),e		;abb4
	ld (hl),024h		;abb5
	ld b,b			;abb7
	ld b,l			;abb8
	ld d,b			;abb9
	nop			;abba
	sub b			;abbb
	ld d,(hl)		;abbc
	or (hl)			;abbd
	inc de			;abbe
	jp 001ffh		;abbf
	ld bc,00101h		;abc2
	inc bc			;abc5
	inc bc			;abc6
	ld (bc),a		;abc7
	ld (bc),a		;abc8
	ld bc,00101h		;abc9
	inc b			;abcc
	ld bc,00401h		;abcd
	inc b			;abd0
	ld bc,00404h		;abd1
	dec b			;abd4
	inc b			;abd5
	inc b			;abd6
	dec b			;abd7
	ld b,001h		;abd8
	ld bc,00101h		;abda
	rst 38h			;abdd
	nop			;abde
	ret po			;abdf
	ld bc,08127h		;abe0
	ld d,d			;abe3
	add a,c			;abe4
	nop			;abe5
	nop			;abe6
	ret po			;abe7
	cp (hl)			;abe8
	add a,h			;abe9
	add a,c			;abea
	and (hl)		;abeb
	add a,c			;abec
	nop			;abed
	ld (bc),a		;abee
	ret po			;abef
	jp nz,08184h		;abf0
	and (hl)		;abf3
	add a,c			;abf4
	nop			;abf5
	ld bc,0c6e0h		;abf6
	add a,h			;abf9
	add a,c			;abfa
	and (hl)		;abfb
	add a,c			;abfc
	nop			;abfd
	inc bc			;abfe
	ret po			;abff
	jp z,08184h		;ac00
	and (hl)		;ac03
	add a,c			;ac04
	nop			;ac05
	nop			;ac06
	ret po			;ac07
	ex af,af'		;ac08
	ret z			;ac09
	add a,c			;ac0a
	and b			;ac0b
	add a,d			;ac0c
	nop			;ac0d
	ld (bc),a		;ac0e
	ret po			;ac0f
	inc h			;ac10
	ret z			;ac11
	add a,c			;ac12
	and b			;ac13
lac14h:
	add a,d			;ac14
	nop			;ac15
	nop			;ac16
	ret po			;ac17
	ld b,b			;ac18
	inc h			;ac19
	add a,e			;ac1a
	sub c			;ac1b
	add a,l			;ac1c
	nop			;ac1d
	nop			;ac1e
	ret po			;ac1f
lac20h:
	sbc a,h			;ac20
	add a,d			;ac21
	add a,a			;ac22
	nop			;ac23
	adc a,b			;ac24
	nop			;ac25
	ld (bc),a		;ac26
	ret po			;ac27
	xor l			;ac28
	add a,d			;ac29
	add a,a			;ac2a
	nop			;ac2b
	adc a,b			;ac2c
	nop			;ac2d
	nop			;ac2e
	ld b,b			;ac2f
	dec b			;ac30
	ld b,(hl)		;ac31
	adc a,b			;ac32
	ld h,b			;ac33
	adc a,b			;ac34
	nop			;ac35
	ld (bc),a		;ac36
	ld b,b			;ac37
	inc de			;ac38
	ld b,(hl)		;ac39
	adc a,b			;ac3a
	ld h,b			;ac3b
	adc a,b			;ac3c
	nop			;ac3d
	nop			;ac3e
	ld b,b			;ac3f
	inc c			;ac40
	halt			;ac41
	adc a,b			;ac42
	add a,b			;ac43
	adc a,b			;ac44
	nop			;ac45
	nop			;ac46
	ld b,b			;ac47
lac48h:
	dec de			;ac48
	adc a,d			;ac49
	adc a,b			;ac4a
	sub h			;ac4b
lac4ch:
	adc a,b			;ac4c
	nop			;ac4d
	nop			;ac4e
	ld b,b			;ac4f
	ld (0889eh),hl		;ac50
	xor b			;ac53
	adc a,b			;ac54
	nop			;ac55
	ld (bc),a		;ac56
	ld b,b			;ac57
	scf			;ac58
	sbc a,(hl)		;ac59
	adc a,b			;ac5a
	xor b			;ac5b
	adc a,b			;ac5c
	nop			;ac5d
	nop			;ac5e
	ld b,b			;ac5f
	jr z,lac14h		;ac60
	adc a,b			;ac62
	call nc,00088h		;ac63
	nop			;ac66
	ld b,b			;ac67
	cpl			;ac68
	or 088h			;ac69
	rst 38h			;ac6b
	adc a,b			;ac6c
	nop			;ac6d
	ld (bc),a		;ac6e
	ld b,b			;ac6f
	ld a,0f6h		;ac70
	adc a,b			;ac72
	rst 38h			;ac73
	adc a,b			;ac74
	nop			;ac75
	nop			;ac76
	ld b,b			;ac77
	jr nc,lac83h		;ac78
	adc a,c			;ac7a
	inc de			;ac7b
	adc a,c			;ac7c
	nop			;ac7d
	ld (bc),a		;ac7e
	ld b,b			;ac7f
	ld sp,08909h		;ac80
lac83h:
	inc de			;ac83
	adc a,c			;ac84
	nop			;ac85
	nop			;ac86
	ld b,b			;ac87
	ld b,b			;ac88
	dec e			;ac89
	adc a,c			;ac8a
	ld c,h			;ac8b
	adc a,c			;ac8c
	nop			;ac8d
	ld (bc),a		;ac8e
	ld b,b			;ac8f
	ld b,(hl)		;ac90
	dec e			;ac91
	adc a,c			;ac92
	ld c,h			;ac93
	adc a,c			;ac94
	nop			;ac95
	nop			;ac96
	ld b,b			;ac97
	ld c,l			;ac98
	ld a,d			;ac99
	adc a,c			;ac9a
	add a,h			;ac9b
	adc a,c			;ac9c
	nop			;ac9d
	ld (bc),a		;ac9e
	ld b,b			;ac9f
	ld l,a			;aca0
	ld a,d			;aca1
	adc a,c			;aca2
	add a,h			;aca3
	adc a,c			;aca4
	nop			;aca5
	nop			;aca6
	ld b,b			;aca7
	ld d,h			;aca8
	adc a,(hl)		;aca9
	adc a,c			;acaa
	sbc a,l			;acab
	adc a,c			;acac
	nop			;acad
	ld (bc),a		;acae
	ld b,b			;acaf
	ld l,h			;acb0
	adc a,(hl)		;acb1
	adc a,c			;acb2
	sbc a,l			;acb3
	adc a,c			;acb4
	nop			;acb5
	nop			;acb6
	ld b,b			;acb7
	ld e,a			;acb8
	xor l			;acb9
	adc a,c			;acba
	rst 0			;acbb
	adc a,c			;acbc
	nop			;acbd
	nop			;acbe
	ld b,b			;acbf
	sbc a,a			;acc0
	defb 0ddh,089h,0e7h ;illegal sequence	;acc1
	adc a,c			;acc4
	nop			;acc5
	nop			;acc6
	ld b,b			;acc7
	and e			;acc8
	rst 28h			;acc9
	adc a,c			;acca
	daa			;accb
	adc a,d			;accc
	nop			;accd
	nop			;acce
	ld b,b			;accf
	xor h			;acd0
	ld e,a			;acd1
	adc a,d			;acd2
	ld a,c			;acd3
	adc a,d			;acd4
	nop			;acd5
	nop			;acd6
	ld b,b			;acd7
	or b			;acd8
	sub e			;acd9
	adc a,d			;acda
	sbc a,l			;acdb
	adc a,d			;acdc
	nop			;acdd
	nop			;acde
	ld b,b			;acdf
	or h			;ace0
	and a			;ace1
	adc a,d			;ace2
	in a,(08ah)		;ace3
	nop			;ace5
	nop			;ace6
	ld b,b			;ace7
	cp l			;ace8
	add hl,bc		;ace9
	adc a,e			;acea
	inc de			;aceb
	adc a,e			;acec
	nop			;aced
	nop			;acee
	ld b,b			;acef
	sbc a,h			;acf0
	dec e			;acf1
	adc a,e			;acf2
	add hl,hl		;acf3
	adc a,e			;acf4
	nop			;acf5
	ld bc,00520h		;acf6
	ld b,(hl)		;acf9
	adc a,b			;acfa
	ld h,b			;acfb
	adc a,b			;acfc
	nop			;acfd
	inc bc			;acfe
	jr nz,lad14h		;acff
	ld b,(hl)		;ad01
	adc a,b			;ad02
	ld h,b			;ad03
	adc a,b			;ad04
	nop			;ad05
	ld bc,00c20h		;ad06
	halt			;ad09
	adc a,b			;ad0a
	add a,b			;ad0b
	adc a,b			;ad0c
	nop			;ad0d
	ld bc,01b20h		;ad0e
	adc a,d			;ad11
	adc a,b			;ad12
	sub h			;ad13
lad14h:
	adc a,b			;ad14
	nop			;ad15
	ld bc,02220h		;ad16
	sbc a,(hl)		;ad19
	adc a,b			;ad1a
	xor b			;ad1b
	adc a,b			;ad1c
	nop			;ad1d
	inc bc			;ad1e
	jr nz,$+57		;ad1f
	sbc a,(hl)		;ad21
	adc a,b			;ad22
	xor b			;ad23
	adc a,b			;ad24
	nop			;ad25
	ld bc,02820h		;ad26
	or d			;ad29
	adc a,b			;ad2a
	call nc,00088h		;ad2b
	ld bc,02f20h		;ad2e
	or 088h			;ad31
	rst 38h			;ad33
	adc a,b			;ad34
	nop			;ad35
	inc bc			;ad36
	jr nz,lad77h		;ad37
	or 088h			;ad39
	rst 38h			;ad3b
	adc a,b			;ad3c
	nop			;ad3d
	ld bc,03020h		;ad3e
	add hl,bc		;ad41
	adc a,c			;ad42
	inc de			;ad43
	adc a,c			;ad44
	nop			;ad45
	inc bc			;ad46
	jr nz,lad7ah		;ad47
	add hl,bc		;ad49
	adc a,c			;ad4a
	inc de			;ad4b
	adc a,c			;ad4c
	nop			;ad4d
	ld bc,04020h		;ad4e
	dec e			;ad51
	adc a,c			;ad52
	ld c,h			;ad53
	adc a,c			;ad54
	nop			;ad55
	inc bc			;ad56
	jr nz,$+72		;ad57
	dec e			;ad59
	adc a,c			;ad5a
	ld c,h			;ad5b
	adc a,c			;ad5c
	nop			;ad5d
	ld bc,04d20h		;ad5e
	ld a,d			;ad61
	adc a,c			;ad62
	add a,h			;ad63
	adc a,c			;ad64
	nop			;ad65
	inc bc			;ad66
	jr nz,ladd8h		;ad67
	ld a,d			;ad69
	adc a,c			;ad6a
	add a,h			;ad6b
	adc a,c			;ad6c
	nop			;ad6d
	ld bc,05420h		;ad6e
	adc a,(hl)		;ad71
	adc a,c			;ad72
	sbc a,l			;ad73
	adc a,c			;ad74
	nop			;ad75
	inc bc			;ad76
lad77h:
	jr nz,lade5h		;ad77
	adc a,(hl)		;ad79
lad7ah:
	adc a,c			;ad7a
	sbc a,l			;ad7b
	adc a,c			;ad7c
	nop			;ad7d
	ld bc,05f20h		;ad7e
	xor l			;ad81
	adc a,c			;ad82
	rst 0			;ad83
	adc a,c			;ad84
	nop			;ad85
	ld bc,09f20h		;ad86
	defb 0ddh,089h,0e7h ;illegal sequence	;ad89
	adc a,c			;ad8c
	nop			;ad8d
	ld bc,0a320h		;ad8e
	rst 28h			;ad91
	adc a,c			;ad92
	daa			;ad93
	adc a,d			;ad94
	nop			;ad95
	ld bc,lac20h		;ad96
	ld e,a			;ad99
	adc a,d			;ad9a
	ld a,c			;ad9b
	adc a,d			;ad9c
	nop			;ad9d
	ld bc,lb020h		;ad9e
	sub e			;ada1
	adc a,d			;ada2
	sbc a,l			;ada3
	adc a,d			;ada4
	nop			;ada5
	ld bc,lb420h		;ada6
	and a			;ada9
	adc a,d			;adaa
	in a,(08ah)		;adab
	nop			;adad
	ld bc,lbd20h		;adae
	add hl,bc		;adb1
	adc a,e			;adb2
	inc de			;adb3
	adc a,e			;adb4
	nop			;adb5
	ld bc,09c20h		;adb6
	dec e			;adb9
	adc a,e			;adba
	add hl,hl		;adbb
	adc a,e			;adbc
	nop			;adbd
	nop			;adbe
	djnz $-71		;adbf
	ccf			;adc1
	adc a,e			;adc2
	rst 8			;adc3
	adc a,e			;adc4
	inc b			;adc5
	nop			;adc6
	ex af,af'		;adc7
	ld bc,08c2dh		;adc8
	ld e,h			;adcb
	adc a,h			;adcc
	inc b			;adcd
	nop			;adce
	ex af,af'		;adcf
	ld a,(bc)		;add0
	and d			;add1
	adc a,h			;add2
	ld c,(hl)		;add3
	adc a,l			;add4
	inc b			;add5
	ld (bc),a		;add6
	ex af,af'		;add7
ladd8h:
	inc h			;add8
	and d			;add9
	adc a,h			;adda
	ld c,(hl)		;addb
	adc a,l			;addc
	inc b			;addd
	nop			;adde
	inc c			;addf
	sub a			;ade0
	ld (bc),a		;ade1
	adc a,(hl)		;ade2
	ld sp,hl		;ade3
	adc a,(hl)		;ade4
lade5h:
	inc b			;ade5
	nop			;ade6
	ex af,af'		;ade7
	or a			;ade8
	ret m			;ade9
	adc a,a			;adea
	dec h			;adeb
	sub b			;adec
	inc b			;aded
	ld (bc),a		;adee
	ex af,af'		;adef
	cp (hl)			;adf0
	ret m			;adf1
	adc a,a			;adf2
	dec h			;adf3
	sub b			;adf4
	inc b			;adf5
	nop			;adf6
	ex af,af'		;adf7
	push bc			;adf8
	ld b,e			;adf9
	sub b			;adfa
ladfbh:
	adc a,c			;adfb
	sub b			;adfc
	inc b			;adfd
	nop			;adfe
	inc b			;adff
	ld bc,090aeh		;ae00
	pop bc			;ae03
	sub c			;ae04
	inc b			;ae05
	ld (bc),a		;ae06
	inc b			;ae07
	ld hl,(090aeh)		;ae08
	pop bc			;ae0b
	sub c			;ae0c
	inc b			;ae0d
	nop			;ae0e
	inc b			;ae0f
	ld d,e			;ae10
	ld a,e			;ae11
	sub d			;ae12
	defb 0fdh,093h,004h ;illegal sequence	;ae13
	nop			;ae16
	inc b			;ae17
	or a			;ae18
	ld b,b			;ae19
	sub l			;ae1a
	ld d,d			;ae1b
	sub l			;ae1c
	inc b			;ae1d
	rst 38h			;ae1e
	ld b,a			;ae1f
	ld bc,04704h		;ae20
	cp (hl)			;ae23
	call 00503h		;ae24
	ld (hl),b		;ae27
	rst 38h			;ae28
	nop			;ae29
	nop			;ae2a
	dec d			;ae2b
	ld (de),a		;ae2c
	ld (hl),024h		;ae2d
	ld d,a			;ae2f
	ld (hl),002h		;ae30
	ld b,b			;ae32
	inc de			;ae33
	ld d,b			;ae34
	inc b			;ae35
	sub c			;ae36
	ld (hl),b		;ae37
	or c			;ae38
	jr nc,ladfbh		;ae39
	rst 38h			;ae3b
	rst 38h			;ae3c
	rst 38h			;ae3d
	inc bc			;ae3e
	ld bc,047b6h		;ae3f
	call z,0ffcdh		;ae42
	rst 38h			;ae45
	rst 38h			;ae46
	rst 38h			;ae47
	ld b,a			;ae48
	ld bc,04704h		;ae49
	cp (hl)			;ae4c
	call 00503h		;ae4d
	ld (hl),b		;ae50
	ld (bc),a		;ae51
	jr z,lae7fh		;ae52
	ld (bc),a		;ae54
	ld b,b			;ae55
	ld c,e			;ae56
	ld b,a			;ae57
	and e			;ae58
	xor c			;ae59
	inc bc			;ae5a
	xor h			;ae5b
	xor (hl)		;ae5c
	inc bc			;ae5d
	and b			;ae5e
	and b			;ae5f
	ld b,a			;ae60
	cp l			;ae61
	cp l			;ae62
	rst 38h			;ae63
	jr nc,lae66h		;ae64
lae66h:
	ld b,b			;ae66
	djnz laeb9h		;ae67
	jr nz,lae7dh		;ae69
	ld (04424h),a		;ae6b
	inc (hl)		;ae6e
	ld d,(hl)		;ae6f
	ld h,h			;ae70
	sub a			;ae71
	ld b,a			;ae72
	or (hl)			;ae73
	ld h,0c3h		;ae74
	rst 38h			;ae76
	ld bc,00302h		;ae77
	inc b			;ae7a
	inc b			;ae7b
lae7ch:
	dec b			;ae7c
lae7dh:
	ld b,006h		;ae7d
lae7fh:
	rlca			;ae7f
	rlca			;ae80
	rlca			;ae81
	rlca			;ae82
	rst 38h			;ae83
	nop			;ae84
	ret po			;ae85
	ld bc,08b35h		;ae86
	sub l			;ae89
	adc a,e			;ae8a
	nop			;ae8b
	ld bc,00d80h		;ae8c
	di			;ae8f
	adc a,e			;ae90
	sub (hl)		;ae91
	adc a,h			;ae92
	nop			;ae93
	nop			;ae94
	ld (hl),b		;ae95
	dec c			;ae96
	di			;ae97
	adc a,e			;ae98
	sub (hl)		;ae99
	adc a,h			;ae9a
	nop			;ae9b
	ld bc,02480h		;ae9c
	ld a,(0808dh)		;ae9f
	adc a,l			;aea2
	nop			;aea3
	inc bc			;aea4
	add a,b			;aea5
	ld l,03ah		;aea6
	adc a,l			;aea8
	add a,b			;aea9
	adc a,l			;aeaa
	nop			;aeab
	nop			;aeac
	ld h,b			;aead
	inc h			;aeae
	ld a,(0808dh)		;aeaf
	adc a,l			;aeb2
	nop			;aeb3
	ld (bc),a		;aeb4
	ld h,b			;aeb5
	ld l,03ah		;aeb6
	adc a,l			;aeb8
laeb9h:
	add a,b			;aeb9
	adc a,l			;aeba
	nop			;aebb
	ld bc,04480h		;aebc
	push bc			;aebf
	adc a,l			;aec0
	rst 20h			;aec1
	adc a,l			;aec2
	nop			;aec3
	nop			;aec4
	ld h,h			;aec5
	jp z,08dc5h		;aec6
	rst 20h			;aec9
	adc a,l			;aeca
	nop			;aecb
	nop			;aecc
	call m,00858h		;aecd
	adc a,(hl)		;aed0
	ld (hl),08eh		;aed1
	nop			;aed3
	ld (bc),a		;aed4
	call m,0085eh		;aed5
	adc a,(hl)		;aed8
	ld (hl),08eh		;aed9
	nop			;aedb
	ld bc,064fch		;aedc
	ex af,af'		;aedf
	adc a,(hl)		;aee0
	ld (hl),08eh		;aee1
	nop			;aee3
	inc bc			;aee4
	call m,0086ah		;aee5
	adc a,(hl)		;aee8
	ld (hl),08eh		;aee9
	nop			;aeeb
	nop			;aeec
	call m,05970h		;aeed
	adc a,(hl)		;aef0
	xor 08eh		;aef1
	nop			;aef3
	nop			;aef4
	sub b			;aef5
laef6h:
	sub b			;aef6
	ld d,c			;aef7
	adc a,a			;aef8
	xor a			;aef9
	adc a,a			;aefa
	nop			;aefb
	nop			;aefc
	add a,b			;aefd
laefeh:
	cp h			;aefe
	ret m			;aeff
	adc a,a			;af00
	dec d			;af01
sub_af02h:
	sub b			;af02
	nop			;af03
	ld bc,03890h		;af04
	daa			;af07
	sub b			;af08
	ld a,l			;af09
	sub b			;af0a
	nop			;af0b
	nop			;af0c
	jr nz,laf47h		;af0d
	daa			;af0f
	sub b			;af10
	ld a,l			;af11
	sub b			;af12
	nop			;af13
	nop			;af14
	ld b,b			;af15
	jr c,laef6h		;af16
	sub b			;af18
	ld e,d			;af19
	sub c			;af1a
	nop			;af1b
	ld (bc),a		;af1c
	ld b,b			;af1d
	ld c,b			;af1e
	sbc a,090h		;af1f
	ld e,d			;af21
laf22h:
	sub c			;af22
	nop			;af23
	nop			;af24
	ret c			;af25
	add a,e			;af26
	jp nz,01c91h		;af27
	sub d			;af2a
	nop			;af2b
	nop			;af2c
	ld b,b			;af2d
	adc a,(hl)		;af2e
	ld l,e			;af2f
	sub d			;af30
	rlca			;af31
	sub e			;af32
	nop			;af33
	ld (bc),a		;af34
	ld b,b			;af35
	and d			;af36
	ld l,e			;af37
	sub d			;af38
	rlca			;af39
	sub e			;af3a
	nop			;af3b
	nop			;af3c
	ld b,b			;af3d
	cp d			;af3e
	ld c,(hl)		;af3f
laf40h:
	sub e			;af40
	sub l			;af41
	sub e			;af42
	nop			;af43
	nop			;af44
	ld h,b			;af45
	or (hl)			;af46
laf47h:
	ret c			;af47
	sub e			;af48
	rst 30h			;af49
laf4ah:
	sub e			;af4a
	nop			;af4b
	nop			;af4c
	inc h			;af4d
	ld b,a			;af4e
	ld d,094h		;af4f
	ld (hl),a		;af51
	sub h			;af52
	nop			;af53
	nop			;af54
laf55h:
	inc h			;af55
	sub b			;af56
	call z,0fa94h		;af57
	sub h			;af5a
	nop			;af5b
	ld bc,05680h		;af5c
	jr z,laef6h		;af5f
	ld a,(00095h)		;af61
	nop			;af64
	jr nz,lafbdh		;af65
	jr z,laefeh		;af67
	ld a,(00095h)		;af69
	ld bc,0a080h		;af6c
	ld c,h			;af6f
	sub l			;af70
	adc a,e			;af71
	sub l			;af72
	nop			;af73
	nop			;af74
	jr nz,$-94		;af75
	ld c,h			;af77
	sub l			;af78
	adc a,e			;af79
	sub l			;af7a
	nop			;af7b
	ld bc,0c380h		;af7c
	cp c			;af7f
	sub l			;af80
	di			;af81
	sub l			;af82
	nop			;af83
	nop			;af84
	jr nz,laf4ah		;af85
	cp c			;af87
	sub l			;af88
	di			;af89
	sub l			;af8a
	nop			;af8b
	nop			;af8c
	djnz laf94h		;af8d
	daa			;af8f
	sub (hl)		;af90
	ld h,c			;af91
	sub (hl)		;af92
	nop			;af93
laf94h:
	ld (bc),a		;af94
	djnz lafa3h		;af95
	daa			;af97
	sub (hl)		;af98
	ld h,c			;af99
	sub (hl)		;af9a
	nop			;af9b
	nop			;af9c
	djnz laf22h		;af9d
	sub b			;af9f
	sub (hl)		;afa0
	cp l			;afa1
	sub (hl)		;afa2
lafa3h:
	nop			;afa3
	nop			;afa4
	djnz laf47h		;afa5
	jp z,0f896h		;afa7
	sub (hl)		;afaa
	nop			;afab
	ld (bc),a		;afac
	djnz laf55h		;afad
	jp z,0f896h		;afaf
	sub (hl)		;afb2
	nop			;afb3
	nop			;afb4
	ex af,af'		;afb5
	ld bc,09716h		;afb6
	ld l,d			;afb9
	sbc a,b			;afba
	nop			;afbb
	ld (bc),a		;afbc
lafbdh:
	ex af,af'		;afbd
	inc l			;afbe
	ld d,097h		;afbf
	ld l,d			;afc1
	sbc a,b			;afc2
	nop			;afc3
	nop			;afc4
	ex af,af'		;afc5
	sbc a,a			;afc6
	ld l,b			;afc7
	sbc a,c			;afc8
	cp e			;afc9
	sbc a,c			;afca
	nop			;afcb
	nop			;afcc
	ex af,af'		;afcd
	xor h			;afce
	rst 20h			;afcf
	sbc a,c			;afd0
	add hl,hl		;afd1
	sbc a,d			;afd2
	nop			;afd3
	ld (bc),a		;afd4
	ex af,af'		;afd5
	or h			;afd6
	rst 20h			;afd7
	sbc a,c			;afd8
	add hl,hl		;afd9
	sbc a,d			;afda
	nop			;afdb
	nop			;afdc
	ex af,af'		;afdd
	cp h			;afde
	ld e,h			;afdf
	sbc a,d			;afe0
	call po,0009ah		;afe1
	nop			;afe4
	inc b			;afe5
	ld bc,09b5dh		;afe6
	ld (hl),l		;afe9
	sbc a,h			;afea
	nop			;afeb
	ld (bc),a		;afec
	inc b			;afed
	inc h			;afee
	ld e,l			;afef
	sbc a,e			;aff0
	ld (hl),l		;aff1
	sbc a,h			;aff2
	nop			;aff3
	nop			;aff4
	inc b			;aff5
	sbc a,c			;aff6
	ld (de),a		;aff7
	sbc a,l			;aff8
	ld l,09dh		;aff9
	nop			;affb
	nop			;affc
	inc b			;affd
	xor l			;affe
	ld h,a			;afff
	sbc a,l			;b000
	ld b,a			;b001
	sbc a,(hl)		;b002
	nop			;b003
	nop			;b004
	ld (bc),a		;b005
	ld bc,09cedh		;b006
	ld (hl),c		;b009
	sbc a,l			;b00a
	inc b			;b00b
	nop			;b00c
	ld (bc),a		;b00d
	ld a,(de)		;b00e
	sbc a,e			;b00f
	sbc a,l			;b010
	ld (hl),d		;b011
	sbc a,a			;b012
	inc b			;b013
	nop			;b014
	ld (bc),a		;b015
	ld d,a			;b016
	ld e,c			;b017
	and b			;b018
	and l			;b019
	and b			;b01a
	inc b			;b01b
lb01ch:
	nop			;b01c
	ld (bc),a		;b01d
	sra b			;b01e
lb020h:
	ld a,c			;b020
	inc sp			;b021
	ld a,c			;b022
	inc b			;b023
	nop			;b024
	ld (bc),a		;b025
	srl a			;b026
	ld b,b			;b028
	inc a			;b029
	ld b,b			;b02a
	nop			;b02b
	cp 000h			;b02c
	nop			;b02e
	nop			;b02f
	nop			;b030
	nop			;b031
	nop			;b032
	nop			;b033
	nop			;b034
	nop			;b035
	nop			;b036
	nop			;b037
	nop			;b038
	dec b			;b039
	ld b,007h		;b03a
	ex af,af'		;b03c
	rst 38h			;b03d
	nop			;b03e
	ex af,af'		;b03f
	ld bc,06ee4h		;b040
	dec a			;b043
	ld l,a			;b044
	inc b			;b045
	nop			;b046
	ex af,af'		;b047
	jr nz,lb0c0h		;b048
	ld l,a			;b04a
	or 06fh			;b04b
	inc b			;b04d
	nop			;b04e
	inc b			;b04f
	ld bc,07070h		;b050
	ret			;b053
	ld (hl),b		;b054
	inc b			;b055
	nop			;b056
	inc b			;b057
	ld c,002h		;b058
	ld (hl),c		;b05a
	rra			;b05b
	ld (hl),c		;b05c
	inc b			;b05d
	nop			;b05e
	inc b			;b05f
	inc de			;b060
	ld (hl),071h		;b061
	ld (hl),a		;b063
	ld (hl),c		;b064
	inc b			;b065
	nop			;b066
	inc b			;b067
	jr nz,lb01ch		;b068
	ld (hl),c		;b06a
	ld e,h			;b06b
	ld (hl),h		;b06c
	inc b			;b06d
	nop			;b06e
	inc b			;b06f
	add a,h			;b070
	xor l			;b071
	halt			;b072
	rst 20h			;b073
	halt			;b074
	inc b			;b075
	nop			;b076
	inc b			;b077
	adc a,e			;b078
	ld a,(de)		;b079
	ld (hl),a		;b07a
	ld c,a			;b07b
	ld (hl),a		;b07c
	inc b			;b07d
	nop			;b07e
	inc b			;b07f
	sub d			;b080
	add a,e			;b081
	ld (hl),a		;b082
	xor a			;b083
	ld (hl),a		;b084
	inc b			;b085
	nop			;b086
	inc b			;b087
	sbc a,d			;b088
	jp nc,00c77h		;b089
	ld a,b			;b08c
	inc b			;b08d
	nop			;b08e
	ld b,0a5h		;b08f
	ld b,(hl)		;b091
	ld a,b			;b092
	ld l,(hl)		;b093
	ld a,b			;b094
	inc b			;b095
	nop			;b096
	inc b			;b097
	xor (hl)		;b098
	add a,l			;b099
	ld a,b			;b09a
	jp nz,00478h		;b09b
	nop			;b09e
	ld b,0c8h		;b09f
	ld e,079h		;b0a1
	dec h			;b0a3
	ld a,c			;b0a4
	inc b			;b0a5
	nop			;b0a6
	inc b			;b0a7
	sra b			;b0a8
	ld a,c			;b0aa
	inc sp			;b0ab
	ld a,c			;b0ac
	inc b			;b0ad
	ld bc,0cb02h		;b0ae
	jr z,lb12ch		;b0b1
	inc sp			;b0b3
	ld a,c			;b0b4
	inc b			;b0b5
	ld bc,00102h		;b0b6
	ld (hl),b		;b0b9
	ld (hl),b		;b0ba
	ret			;b0bb
	ld (hl),b		;b0bc
	inc b			;b0bd
	nop			;b0be
	ld (bc),a		;b0bf
lb0c0h:
	ld c,03ah		;b0c0
	ld a,c			;b0c2
	ld d,l			;b0c3
	ld a,c			;b0c4
	inc b			;b0c5
	ld bc,01302h		;b0c6
	ld (hl),071h		;b0c9
	ld (hl),a		;b0cb
	ld (hl),c		;b0cc
	inc b			;b0cd
	ld bc,02002h		;b0ce
	or d			;b0d1
	ld (hl),c		;b0d2
	ld e,h			;b0d3
	ld (hl),h		;b0d4
	inc b			;b0d5
	nop			;b0d6
	ld (bc),a		;b0d7
	add a,h			;b0d8
	ld l,d			;b0d9
	ld a,c			;b0da
	and h			;b0db
	ld a,c			;b0dc
	inc b			;b0dd
	ld bc,08b02h		;b0de
	ld a,(de)		;b0e1
	ld (hl),a		;b0e2
	ld c,a			;b0e3
	ld (hl),a		;b0e4
	inc b			;b0e5
	nop			;b0e6
	ld (bc),a		;b0e7
	sub d			;b0e8
	call 00379h		;b0e9
	ld a,d			;b0ec
	inc b			;b0ed
	ld bc,09a02h		;b0ee
lb0f1h:
	jp nc,00c77h		;b0f1
	ld a,b			;b0f4
	inc b			;b0f5
	nop			;b0f6
	ld (bc),a		;b0f7
	xor (hl)		;b0f8
	ld l,07ah		;b0f9
	ld l,b			;b0fb
	ld a,d			;b0fc
	inc b			;b0fd
	ld bc,00101h		;b0fe
	call po,03d6eh		;b101
	ld l,a			;b104
	inc b			;b105
	ld bc,02001h		;b106
	halt			;b109
	ld l,a			;b10a
	or 06fh			;b10b
	inc b			;b10d
	nop			;b10e
	inc b			;b10f
	ret nz			;b110
	pop bc			;b111
	ld a,d			;b112
	jp nc,0047ah		;b113
	ld bc,0c002h		;b116
	pop bc			;b119
	ld a,d			;b11a
	jp nc,0047ah		;b11b
	nop			;b11e
	inc b			;b11f
	jp nz,07addh		;b120
	or 07ah			;b123
	inc b			;b125
	ld (bc),a		;b126
	inc b			;b127
	push bc			;b128
	defb 0ddh,07ah,0f6h ;illegal sequence	;b129
lb12ch:
	ld a,d			;b12c
	inc b			;b12d
	ld bc,0c202h		;b12e
	defb 0ddh,07ah,0f6h ;illegal sequence	;b131
	ld a,d			;b134
	inc b			;b135
	inc bc			;b136
	ld (bc),a		;b137
	push bc			;b138
	defb 0ddh,07ah,0f6h ;illegal sequence	;b139
	ld a,d			;b13c
	inc b			;b13d
	rst 38h			;b13e
	inc bc			;b13f
	ld bc,00257h		;b140
	jp 047c5h		;b143
	add a,0c9h		;b146
	inc bc			;b148
	jp z,0ffcdh		;b149
	rst 38h			;b14c
	rst 38h			;b14d
	rst 38h			;b14e
	ld (bc),a		;b14f
lb150h:
	ld bc,00257h		;b150
	xor h			;b153
	call 000ffh		;b154
	nop			;b157
	inc bc			;b158
	djnz lb16fh		;b159
	ld hl,03225h		;b15b
	ld (hl),043h		;b15e
	ld b,a			;b160
	ld d,l			;b161
	ld (05692h),hl		;b162
	or (hl)			;b165
	inc d			;b166
	call nz,0ffffh		;b167
	rst 38h			;b16a
	inc bc			;b16b
	ld a,(de)		;b16c
	ld d,(hl)		;b16d
	inc bc			;b16e
lb16fh:
	set 1,l			;b16f
	rst 38h			;b171
	rst 38h			;b172
	rst 38h			;b173
	rst 38h			;b174
	inc bc			;b175
	jr nz,lb1f7h		;b176
	ld (bc),a		;b178
	add a,b			;b179
	cp a			;b17a
	ld b,a			;b17b
	ret nz			;b17c
	rst 0			;b17d
	ld b,a			;b17e
	set 1,l			;b17f
	rst 38h			;b181
	ld bc,00201h		;b182
	ld (de),a		;b185
	inc bc			;b186
	inc hl			;b187
	jr nz,$+51		;b188
	jr nc,lb1ceh		;b18a
	ld b,b			;b18c
	ld d,e			;b18d
	ld d,b			;b18e
	sub h			;b18f
	jr nc,$-78		;b190
	ld d,b			;b192
	ret nz			;b193
	rst 38h			;b194
	ld bc,00302h		;b195
	rlca			;b198
	ld bc,00302h		;b199
	rlca			;b19c
	ld bc,00302h		;b19d
	rlca			;b1a0
	ld bc,00302h		;b1a1
	rlca			;b1a4
	rst 38h			;b1a5
	nop			;b1a6
	jr nz,lb1b9h		;b1a7
	ld c,e			;b1a9
	and c			;b1aa
	adc a,c			;b1ab
	and c			;b1ac
	inc b			;b1ad
	ld bc,01080h		;b1ae
	ld c,e			;b1b1
	and c			;b1b2
	adc a,c			;b1b3
	and c			;b1b4
	inc b			;b1b5
	nop			;b1b6
	ld h,b			;b1b7
	dec de			;b1b8
lb1b9h:
	jp z,0d9a1h		;b1b9
	and c			;b1bc
	inc b			;b1bd
	ld bc,01b80h		;b1be
	jp z,0d9a1h		;b1c1
	and c			;b1c4
	inc b			;b1c5
	nop			;b1c6
	jr nz,lb1e9h		;b1c7
	ex de,hl		;b1c9
	and c			;b1ca
	ld b,l			;b1cb
	and l			;b1cc
	inc b			;b1cd
lb1ceh:
	ld bc,02080h		;b1ce
	ex de,hl		;b1d1
	and c			;b1d2
	ld b,l			;b1d3
	and l			;b1d4
	inc b			;b1d5
	nop			;b1d6
	ld h,b			;b1d7
	sbc a,l			;b1d8
	rst 0			;b1d9
	xor b			;b1da
	ret c			;b1db
	xor b			;b1dc
	inc b			;b1dd
	ld bc,09d80h		;b1de
	rst 0			;b1e1
	xor b			;b1e2
	ret c			;b1e3
	xor b			;b1e4
	inc b			;b1e5
	nop			;b1e6
	ret po			;b1e7
	sbc a,c			;b1e8
lb1e9h:
	and (hl)		;b1e9
	xor b			;b1ea
	cp b			;b1eb
	xor b			;b1ec
	inc b			;b1ed
	ld bc,09be0h		;b1ee
	and (hl)		;b1f1
	xor b			;b1f2
	cp b			;b1f3
	xor b			;b1f4
	inc b			;b1f5
	nop			;b1f6
lb1f7h:
	ld h,b			;b1f7
	sub a			;b1f8
	add a,l			;b1f9
	xor b			;b1fa
	sub a			;b1fb
	xor b			;b1fc
	inc b			;b1fd
	ld bc,09780h		;b1fe
	add a,l			;b201
	xor b			;b202
	sub a			;b203
	xor b			;b204
	inc b			;b205
	nop			;b206
	and b			;b207
	and b			;b208
lb209h:
	jp pe,036a8h		;b209
	xor c			;b20c
	inc b			;b20d
	ld bc,0a040h		;b20e
	jp pe,036a8h		;b211
	xor c			;b214
	inc b			;b215
	nop			;b216
	ld h,b			;b217
	or b			;b218
	add a,b			;b219
	xor c			;b21a
	sbc a,b			;b21b
	xor c			;b21c
	inc b			;b21d
	nop			;b21e
	and b			;b21f
	or e			;b220
	or b			;b221
	xor c			;b222
	rst 0			;b223
lb224h:
	xor c			;b224
	inc b			;b225
	nop			;b226
	ld b,b			;b227
	jr nz,lb209h		;b228
	xor c			;b22a
	ld l,d			;b22b
	xor d			;b22c
	inc b			;b22d
	ld bc,04040h		;b22e
	rst 18h			;b231
	xor c			;b232
	ld l,d			;b233
	xor d			;b234
	inc b			;b235
	nop			;b236
	ld b,b			;b237
	ld h,b			;b238
	ld sp,hl		;b239
	xor d			;b23a
	sbc a,b			;b23b
	xor e			;b23c
	inc b			;b23d
	ld bc,08040h		;b23e
	ld sp,hl		;b241
	xor d			;b242
	sbc a,b			;b243
	xor e			;b244
	inc b			;b245
	nop			;b246
	ret po			;b247
	xor e			;b248
	ld b,l			;b249
	xor h			;b24a
	ld l,a			;b24b
	xor h			;b24c
	inc b			;b24d
	nop			;b24e
	ld b,b			;b24f
	cp a			;b250
	sub h			;b251
	xor h			;b252
	ld sp,hl		;b253
	xor h			;b254
	inc b			;b255
	nop			;b256
	add a,b			;b257
	cp c			;b258
	ld l,d			;b259
	xor l			;b25a
	and c			;b25b
	xor l			;b25c
	inc b			;b25d
	nop			;b25e
	ld b,b			;b25f
	cp e			;b260
	exx			;b261
	xor l			;b262
	ret m			;b263
	xor l			;b264
	inc b			;b265
	nop			;b266
	jr nz,lb224h		;b267
	add hl,de		;b269
	xor (hl)		;b26a
	ld a,0aeh		;b26b
	inc b			;b26d
	cp 001h			;b26e
	ld bc,00001h		;b270
	ld (bc),a		;b273
	ld (bc),a		;b274
	ld (bc),a		;b275
	nop			;b276
	inc bc			;b277
	inc bc			;b278
	inc bc			;b279
lb27ah:
	nop			;b27a
	inc b			;b27b
	inc b			;b27c
	inc b			;b27d
	nop			;b27e
	rst 38h			;b27f
	nop			;b280
	and b			;b281
	ld bc,la0c4h		;b282
	sbc a,0a0h		;b285
	inc b			;b287
	inc bc			;b288
	ld d,b			;b289
	ld bc,la0c4h		;b28a
	sbc a,0a0h		;b28d
	inc b			;b28f
	nop			;b290
	jr nc,lb297h		;b291
	push af			;b293
	and b			;b294
	rlca			;b295
	and c			;b296
lb297h:
	inc b			;b297
	inc bc			;b298
	ret nz			;b299
	inc b			;b29a
	push af			;b29b
	and b			;b29c
	rlca			;b29d
	and c			;b29e
	inc b			;b29f
	nop			;b2a0
	ld d,b			;b2a1
	ld b,019h		;b2a2
	and c			;b2a4
	inc sp			;b2a5
	and c			;b2a6
	inc b			;b2a7
	inc bc			;b2a8
	and b			;b2a9
	ld b,019h		;b2aa
	and c			;b2ac
	inc sp			;b2ad
	and c			;b2ae
	inc b			;b2af
	rst 38h			;b2b0
	inc bc			;b2b1
	jr nz,lb27ah		;b2b2
	ld b,a			;b2b4
	rst 0			;b2b5
	set 7,a			;b2b6
	rlca			;b2b8
	nop			;b2b9
	xor d			;b2ba
	ld c,d			;b2bb
	inc b			;b2bc
	dec c			;b2bd
	rlca			;b2be
	inc a			;b2bf
	jp z,0044bh		;b2c0
	dec c			;b2c3
	rlca			;b2c4
	call m,0501fh		;b2c5
	inc b			;b2c8
	ld h,b			;b2c9
	rlca			;b2ca
	call z,04fe6h		;b2cb
	inc b			;b2ce
	ld h,a			;b2cf
	rlca			;b2d0
	call c,0504bh		;b2d1
	inc b			;b2d4
	ld h,d			;b2d5
	nop			;b2d6
	inc bc			;b2d7
	ld c,h			;b2d8
	pop hl			;b2d9
	ld c,e			;b2da
	inc b			;b2db
	ld (de),a		;b2dc
	inc bc			;b2dd
	ld c,h			;b2de
	pop hl			;b2df
	ld c,e			;b2e0
	inc b			;b2e1
	ld l,b			;b2e2
	inc bc			;b2e3
	ld d,h			;b2e4
	inc de			;b2e5
	ld c,l			;b2e6
	inc b			;b2e7
	jr lb2edh		;b2e8
	ld e,h			;b2ea
	sub c			;b2eb
	ld c,l			;b2ec
lb2edh:
	inc b			;b2ed
	dec d			;b2ee
	inc bc			;b2ef
	ld l,h			;b2f0
	ld h,h			;b2f1
	ld c,h			;b2f2
	inc b			;b2f3
	ld de,08401h		;b2f4
	add a,(hl)		;b2f7
	ld d,c			;b2f8
	inc b			;b2f9
	ld e,002h		;b2fa
	add a,h			;b2fc
	ld sp,00451h		;b2fd
	ld d,l			;b300
	inc bc			;b301
	and b			;b302
	rlca			;b303
	ld d,d			;b304
	inc b			;b305
	rra			;b306
	inc bc			;b307
	ret z			;b308
	jr nc,lb35bh		;b309
	inc b			;b30b
	ld (hl),b		;b30c
	inc bc			;b30d
	ld h,h			;b30e
	ld c,a			;b30f
	ld c,l			;b310
	inc b			;b311
	djnz lb317h		;b312
	sub h			;b314
	ld (hl),e		;b315
	ld d,c			;b316
lb317h:
	inc b			;b317
	ld h,c			;b318
	inc b			;b319
	ld d,b			;b31a
	sbc a,l			;b31b
	ld l,h			;b31c
	inc b			;b31d
	ld h,h			;b31e
	inc b			;b31f
	sbc a,b			;b320
	and 052h		;b321
	inc b			;b323
	ld b,b			;b324
	nop			;b325
	rlca			;b326
	ret c			;b327
	in a,(04fh)		;b328
	inc b			;b32a
	ld h,a			;b32b
	inc bc			;b32c
	call z,04d13h		;b32d
	inc b			;b330
	jr $+5			;b331
	ld c,h			;b333
	ld (00456h),a		;b334
	djnz lb33ch		;b337
	ld h,h			;b339
	ld (hl),h		;b33a
	ld d,(hl)		;b33b
lb33ch:
	inc b			;b33c
	daa			;b33d
	inc bc			;b33e
	ld e,h			;b33f
	dec d			;b340
	ld c,(hl)		;b341
	inc b			;b342
	ld d,001h		;b343
	adc a,h			;b345
	sbc a,b			;b346
	ld c,(hl)		;b347
	inc b			;b348
	add hl,de		;b349
	inc bc			;b34a
	ld d,h			;b34b
	out (04dh),a		;b34c
	inc b			;b34e
	inc de			;b34f
	ld bc,02384h		;b350
	ld c,h			;b353
	inc b			;b354
	ld (de),a		;b355
	ld bc,071b4h		;b356
	ld d,l			;b359
	inc b			;b35a
lb35bh:
	inc l			;b35b
	ld (bc),a		;b35c
	cp h			;b35d
	xor 053h		;b35e
	inc b			;b360
	ld sp,la402h		;b361
	xor h			;b364
	ld d,e			;b365
	inc b			;b366
	cpl			;b367
	ld (bc),a		;b368
	xor h			;b369
	jp (hl)			;b36a
	ld d,l			;b36b
	inc b			;b36c
	ld hl,(08402h)		;b36d
	ld (hl),b		;b370
	ld d,h			;b371
	inc b			;b372
	dec l			;b373
	inc b			;b374
	add a,b			;b375
	call pe,0046dh		;b376
	dec sp			;b379
	nop			;b37a
	ld bc,013ach		;b37b
	ld c,l			;b37e
	inc b			;b37f
	jr lb383h		;b380
	ld c,h			;b382
lb383h:
	out (04dh),a		;b383
	inc b			;b385
	inc de			;b386
	ld bc,07554h		;b387
	ld e,b			;b38a
	inc b			;b38b
	dec e			;b38c
	ld bc,0f75ch		;b38d
	ld d,a			;b390
	inc b			;b391
	inc sp			;b392
	ld bc,0748ch		;b393
	ld d,a			;b396
	inc b			;b397
	dec (hl)		;b398
	ld bc,lb7b4h		;b399
	ld e,b			;b39c
	inc b			;b39d
	ld (hl),l		;b39e
	ld bc,030c0h		;b39f
	ld d,b			;b3a2
	inc b			;b3a3
	ld (hl),b		;b3a4
	ld bc,0d9b8h		;b3a5
	ld e,b			;b3a8
	inc b			;b3a9
	ld b,l			;b3aa
	ld bc,01a9ch		;b3ab
	ld e,c			;b3ae
	inc b			;b3af
	dec h			;b3b0
	ld bc,0746ch		;b3b1
	ld d,(hl)		;b3b4
	inc b			;b3b5
	daa			;b3b6
	nop			;b3b7
	ld bc,056bch		;b3b8
	ld c,(hl)		;b3bb
	inc b			;b3bc
	rla			;b3bd
	ld bc,0704ch		;b3be
	ld d,h			;b3c1
	inc b			;b3c2
	dec l			;b3c3
	ld bc,0985ch		;b3c4
	ld c,(hl)		;b3c7
	inc b			;b3c8
	add hl,de		;b3c9
	ld bc,03d84h		;b3ca
	ld e,d			;b3cd
	inc b			;b3ce
	scf			;b3cf
	ld bc,09da4h		;b3d0
	ld e,c			;b3d3
	inc b			;b3d4
	ld l,(hl)		;b3d5
	ld bc,0c094h		;b3d6
	ld e,d			;b3d9
	inc b			;b3da
	ld l,a			;b3db
	ld b,0c4h		;b3dc
	ld b,d			;b3de
	ld e,e			;b3df
	inc b			;b3e0
	ld e,b			;b3e1
	nop			;b3e2
	ld bc,034ach		;b3e3
	ld e,a			;b3e6
	inc b			;b3e7
	jr lb3ebh		;b3e8
	ld c,h			;b3ea
lb3ebh:
	call p,0045eh		;b3eb
	inc de			;b3ee
	ld bc,0f054h		;b3ef
	ld e,l			;b3f2
	inc b			;b3f3
	ld hl,07401h		;b3f4
	ld (hl),h		;b3f7
	ld d,(hl)		;b3f8
	inc b			;b3f9
	daa			;b3fa
	ld bc,0399ch		;b3fb
	ld h,b			;b3fe
	inc b			;b3ff
	ld c,c			;b400
	ld bc,030b4h		;b401
	ld d,b			;b404
	inc b			;b405
	ld (hl),b		;b406
	ld (bc),a		;b407
	ld l,b			;b408
	ld l,a			;b409
	ld e,e			;b40a
	inc b			;b40b
	ld e,h			;b40c
	nop			;b40d
	ld bc,03f84h		;b40e
	ld h,c			;b411
	inc b			;b412
	ld c,b			;b413
	ld bc,lbc54h		;b414
	ld h,b			;b417
	inc b			;b418
	ld c,d			;b419
	ld bc,lae7ch		;b41a
	ld l,c			;b41d
	inc b			;b41e
	ld c,l			;b41f
lb420h:
	ld bc,0f764h		;b420
	ld e,a			;b423
	inc b			;b424
	ld b,h			;b425
	ld bc,0566ch		;b426
	ld c,(hl)		;b429
	inc b			;b42a
	rla			;b42b
	ld bc,lac4ch		;b42c
	ld d,e			;b42f
	inc b			;b430
	cpl			;b431
	ld bc,030d4h		;b432
	ld d,b			;b435
	inc b			;b436
	ld (hl),b		;b437
	ld (bc),a		;b438
	ld c,h			;b439
	ld h,c			;b43a
	ld h,c			;b43b
	inc b			;b43c
	ld a,h			;b43d
	nop			;b43e
	ld bc,01554h		;b43f
	ld c,(hl)		;b442
	inc b			;b443
	ld d,001h		;b444
	ld c,h			;b446
	xor (hl)		;b447
	ld l,c			;b448
	inc b			;b449
	ld c,l			;b44a
	ld bc,0355ch		;b44b
	ld h,l			;b44e
	inc b			;b44f
	ld a,(de)		;b450
	inc b			;b451
	call nc,064f3h		;b452
	inc b			;b455
	dec de			;b456
	inc b			;b457
	ld c,h			;b458
	ld l,069h		;b459
	inc b			;b45b
	ld (hl),h		;b45c
	inc b			;b45d
	ld d,h			;b45e
	ret p			;b45f
	ld l,c			;b460
	inc b			;b461
	ld d,b			;b462
	inc b			;b463
	ld (hl),h		;b464
	call pe,0046dh		;b465
	ld a,b			;b468
	inc b			;b469
	adc a,h			;b46a
	halt			;b46b
	ld e,a			;b46c
	inc b			;b46d
	ld b,d			;b46e
	inc b			;b46f
	and b			;b470
	pop bc			;b471
	ld l,d			;b472
	inc b			;b473
	inc hl			;b474
	inc b			;b475
	xor b			;b476
	ld a,a			;b477
	ld l,d			;b478
	inc b			;b479
	ld b,e			;b47a
	nop			;b47b
	nop			;b47c
	ld bc,lb150h		;b47d
	ld l,e			;b480
	inc b			;b481
	ld c,h			;b482
	ld bc,lb150h		;b483
	ld l,e			;b486
	inc b			;b487
	ld c,(hl)		;b488
	ld bc,01894h		;b489
	ld l,e			;b48c
	inc b			;b48d
	ld e,(hl)		;b48e
	ld bc,01894h		;b48f
	ld l,e			;b492
	inc b			;b493
	ld h,(hl)		;b494
	nop			;b495
	rst 38h			;b496
	rst 38h			;b497
	rst 38h			;b498
	rst 38h			;b499
	rst 38h			;b49a
	rst 38h			;b49b
	rst 38h			;b49c
	rst 38h			;b49d
	rst 38h			;b49e
	rst 38h			;b49f
	rst 38h			;b4a0
	rst 38h			;b4a1
	rst 38h			;b4a2
	rst 38h			;b4a3
	rst 38h			;b4a4
	rst 38h			;b4a5
	rst 38h			;b4a6
	rst 38h			;b4a7
	rst 38h			;b4a8
	rst 38h			;b4a9
	rst 38h			;b4aa
	rst 38h			;b4ab
	rst 38h			;b4ac
	rst 38h			;b4ad
	rst 38h			;b4ae
	rst 38h			;b4af
	rst 38h			;b4b0
	rst 38h			;b4b1
	rst 38h			;b4b2
	rst 38h			;b4b3
	rst 38h			;b4b4
	rst 38h			;b4b5
	rst 38h			;b4b6
	rst 38h			;b4b7
	rst 38h			;b4b8
	rst 38h			;b4b9
	rst 38h			;b4ba
	rst 38h			;b4bb
	rst 38h			;b4bc
	rst 38h			;b4bd
	rst 38h			;b4be
	rst 38h			;b4bf
	rst 38h			;b4c0
	rst 38h			;b4c1
	rst 38h			;b4c2
	rst 38h			;b4c3
	rst 38h			;b4c4
	rst 38h			;b4c5
	rst 38h			;b4c6
	rst 38h			;b4c7
	rst 38h			;b4c8
	rst 38h			;b4c9
	rst 38h			;b4ca
	rst 38h			;b4cb
	rst 38h			;b4cc
	rst 38h			;b4cd
	rst 38h			;b4ce
	rst 38h			;b4cf
	rst 38h			;b4d0
	rst 38h			;b4d1
	rst 38h			;b4d2
	rst 38h			;b4d3
	rst 38h			;b4d4
	rst 38h			;b4d5
	rst 38h			;b4d6
	rst 38h			;b4d7
	rst 38h			;b4d8
	rst 38h			;b4d9
	rst 38h			;b4da
	rst 38h			;b4db
	rst 38h			;b4dc
	rst 38h			;b4dd
	rst 38h			;b4de
	rst 38h			;b4df
	rst 38h			;b4e0
	rst 38h			;b4e1
	rst 38h			;b4e2
	rst 38h			;b4e3
	rst 38h			;b4e4
	rst 38h			;b4e5
	rst 38h			;b4e6
	rst 38h			;b4e7
	rst 38h			;b4e8
	rst 38h			;b4e9
	rst 38h			;b4ea
	rst 38h			;b4eb
	rst 38h			;b4ec
	rst 38h			;b4ed
	rst 38h			;b4ee
	rst 38h			;b4ef
	rst 38h			;b4f0
	rst 38h			;b4f1
	rst 38h			;b4f2
	rst 38h			;b4f3
	rst 38h			;b4f4
	rst 38h			;b4f5
	rst 38h			;b4f6
	rst 38h			;b4f7
	rst 38h			;b4f8
	rst 38h			;b4f9
	rst 38h			;b4fa
	rst 38h			;b4fb
	rst 38h			;b4fc
	rst 38h			;b4fd
	rst 38h			;b4fe
	rst 38h			;b4ff
	inc b			;b500
	inc bc			;b501
	dec b			;b502
	inc bc			;b503
	ld b,003h		;b504
	rlca			;b506
	inc bc			;b507
	inc b			;b508
	inc bc			;b509
	ex af,af'		;b50a
	inc bc			;b50b
	add hl,bc		;b50c
	inc bc			;b50d
	ld a,(bc)		;b50e
	inc bc			;b50f
	ret pe			;b510
	ld bc,001e9h		;b511
	jp pe,0ff01h		;b514
	inc b			;b517
	rst 38h			;b518
	inc b			;b519
	rst 38h			;b51a
	inc b			;b51b
	rst 38h			;b51c
	inc b			;b51d
	rst 38h			;b51e
	inc b			;b51f
	rst 38h			;b520
	inc b			;b521
	rst 38h			;b522
	inc b			;b523
	rst 38h			;b524
	inc b			;b525
	rst 38h			;b526
	inc b			;b527
	rst 38h			;b528
	inc b			;b529
	rst 38h			;b52a
	inc b			;b52b
	rst 38h			;b52c
	inc b			;b52d
	rst 38h			;b52e
	inc b			;b52f
	rst 38h			;b530
	inc b			;b531
	rst 38h			;b532
	inc b			;b533
	rst 38h			;b534
	inc b			;b535
	rst 38h			;b536
	inc b			;b537
	sub d			;b538
	ld (bc),a		;b539
	sub e			;b53a
	ld (bc),a		;b53b
	sub h			;b53c
	ld (bc),a		;b53d
	rst 38h			;b53e
	inc b			;b53f
	dec bc			;b540
	inc bc			;b541
	inc c			;b542
	inc bc			;b543
	nop			;b544
	nop			;b545
	ld bc,00200h		;b546
	nop			;b549
	inc bc			;b54a
	nop			;b54b
	inc b			;b54c
	nop			;b54d
	dec b			;b54e
	nop			;b54f
	ld b,000h		;b550
	rlca			;b552
	nop			;b553
	ex af,af'		;b554
	nop			;b555
	add hl,bc		;b556
	nop			;b557
	ld a,(bc)		;b558
	nop			;b559
	dec bc			;b55a
	nop			;b55b
	inc c			;b55c
	nop			;b55d
	dec c			;b55e
	nop			;b55f
	ld c,000h		;b560
	rrca			;b562
	nop			;b563
	djnz lb566h		;b564
lb566h:
	ld de,01200h		;b566
	nop			;b569
	inc de			;b56a
	nop			;b56b
	add a,e			;b56c
	ld (bc),a		;b56d
	add a,h			;b56e
	ld (bc),a		;b56f
	add a,l			;b570
	ld (bc),a		;b571
	add a,(hl)		;b572
	ld (bc),a		;b573
	add a,a			;b574
	ld (bc),a		;b575
	rst 38h			;b576
	inc b			;b577
	sub l			;b578
	ld (bc),a		;b579
	sub (hl)		;b57a
	ld (bc),a		;b57b
	sub a			;b57c
	ld (bc),a		;b57d
	rst 38h			;b57e
	inc b			;b57f
	dec c			;b580
	inc bc			;b581
	ld c,003h		;b582
	inc d			;b584
	nop			;b585
	dec d			;b586
	nop			;b587
	ld d,000h		;b588
	rla			;b58a
	nop			;b58b
	jr lb58eh		;b58c
lb58eh:
	add hl,de		;b58e
	nop			;b58f
	ld a,(de)		;b590
	nop			;b591
	dec de			;b592
	nop			;b593
	inc e			;b594
	nop			;b595
	dec e			;b596
	nop			;b597
	ld e,000h		;b598
	rra			;b59a
	nop			;b59b
	jr nz,lb59eh		;b59c
lb59eh:
	ld hl,02200h		;b59e
	nop			;b5a1
	inc hl			;b5a2
	nop			;b5a3
	inc h			;b5a4
	nop			;b5a5
	dec h			;b5a6
	nop			;b5a7
	ld h,000h		;b5a8
	daa			;b5aa
	nop			;b5ab
	adc a,b			;b5ac
	ld (bc),a		;b5ad
	adc a,c			;b5ae
	ld (bc),a		;b5af
	adc a,d			;b5b0
	ld (bc),a		;b5b1
	adc a,e			;b5b2
	ld (bc),a		;b5b3
	adc a,h			;b5b4
	ld (bc),a		;b5b5
	rst 38h			;b5b6
	inc b			;b5b7
	sbc a,b			;b5b8
	ld (bc),a		;b5b9
	sbc a,c			;b5ba
	ld (bc),a		;b5bb
	sbc a,d			;b5bc
	ld (bc),a		;b5bd
	rst 38h			;b5be
	inc b			;b5bf
	or b			;b5c0
	inc b			;b5c1
	or c			;b5c2
	inc b			;b5c3
	jr z,lb5c6h		;b5c4
lb5c6h:
	add hl,hl		;b5c6
	nop			;b5c7
	ld hl,(02b00h)		;b5c8
	nop			;b5cb
	inc l			;b5cc
	nop			;b5cd
	dec l			;b5ce
	nop			;b5cf
	ld l,000h		;b5d0
	cpl			;b5d2
	nop			;b5d3
	jr nc,lb5d6h		;b5d4
lb5d6h:
	ld sp,03200h		;b5d6
	nop			;b5d9
	inc sp			;b5da
	nop			;b5db
	inc (hl)		;b5dc
	nop			;b5dd
	dec (hl)		;b5de
	nop			;b5df
	ld (hl),000h		;b5e0
	scf			;b5e2
	nop			;b5e3
	jr c,lb5e6h		;b5e4
lb5e6h:
	add hl,sp		;b5e6
	nop			;b5e7
	ld a,(03b00h)		;b5e8
	nop			;b5eb
	adc a,l			;b5ec
	ld (bc),a		;b5ed
	adc a,(hl)		;b5ee
	ld (bc),a		;b5ef
	adc a,a			;b5f0
	ld (bc),a		;b5f1
	sub b			;b5f2
	ld (bc),a		;b5f3
	sub c			;b5f4
	ld (bc),a		;b5f5
	rst 38h			;b5f6
	inc b			;b5f7
	rrca			;b5f8
	inc bc			;b5f9
	sbc a,e			;b5fa
	ld (bc),a		;b5fb
	sbc a,h			;b5fc
	ld (bc),a		;b5fd
	rst 38h			;b5fe
	inc b			;b5ff
	or (hl)			;b600
	inc b			;b601
	or a			;b602
	inc b			;b603
	inc a			;b604
	nop			;b605
	dec a			;b606
	nop			;b607
	ld a,000h		;b608
	ccf			;b60a
	nop			;b60b
	ld b,b			;b60c
	nop			;b60d
	ld b,c			;b60e
	nop			;b60f
	ld b,d			;b610
	nop			;b611
	ld b,e			;b612
	nop			;b613
	ld b,h			;b614
	nop			;b615
	ld b,l			;b616
	nop			;b617
	ld b,(hl)		;b618
	nop			;b619
	ld b,a			;b61a
	nop			;b61b
	ld a,000h		;b61c
	ld c,b			;b61e
	nop			;b61f
	ld c,c			;b620
	nop			;b621
	ld c,d			;b622
	nop			;b623
	ld c,e			;b624
	nop			;b625
	ld c,h			;b626
	nop			;b627
	ld c,l			;b628
	nop			;b629
	ld c,(hl)		;b62a
	nop			;b62b
	rrca			;b62c
	inc bc			;b62d
	sbc a,l			;b62e
	ld (bc),a		;b62f
	sbc a,(hl)		;b630
	ld (bc),a		;b631
	sbc a,a			;b632
	ld (bc),a		;b633
	and b			;b634
	ld (bc),a		;b635
	and c			;b636
	ld (bc),a		;b637
	and d			;b638
	ld (bc),a		;b639
	and e			;b63a
	ld (bc),a		;b63b
	and h			;b63c
	ld (bc),a		;b63d
	rrca			;b63e
	inc bc			;b63f
	or d			;b640
	inc b			;b641
	or e			;b642
	inc b			;b643
	ld c,a			;b644
	nop			;b645
	ld d,b			;b646
	nop			;b647
	ld d,c			;b648
	nop			;b649
	ld d,d			;b64a
	nop			;b64b
	ld d,e			;b64c
	nop			;b64d
	ld d,h			;b64e
	nop			;b64f
	ld d,l			;b650
	nop			;b651
	ld d,(hl)		;b652
	nop			;b653
	ld d,a			;b654
	nop			;b655
	ld e,b			;b656
	nop			;b657
	ld e,c			;b658
	nop			;b659
	ld e,d			;b65a
	nop			;b65b
	ld e,e			;b65c
	nop			;b65d
	ld e,h			;b65e
	nop			;b65f
	ld e,l			;b660
	nop			;b661
	ld e,(hl)		;b662
	nop			;b663
	ld e,a			;b664
	nop			;b665
	ld h,b			;b666
	nop			;b667
	ld h,c			;b668
	nop			;b669
	ld h,d			;b66a
	nop			;b66b
	rrca			;b66c
	inc bc			;b66d
	and l			;b66e
	ld (bc),a		;b66f
	and (hl)		;b670
	ld (bc),a		;b671
	and a			;b672
	ld (bc),a		;b673
	xor b			;b674
	ld (bc),a		;b675
	xor c			;b676
	ld (bc),a		;b677
	xor d			;b678
	ld (bc),a		;b679
	xor e			;b67a
	ld (bc),a		;b67b
	xor h			;b67c
	ld (bc),a		;b67d
	rrca			;b67e
	inc bc			;b67f
	cp b			;b680
	inc b			;b681
	cp c			;b682
	inc b			;b683
	ld h,e			;b684
	nop			;b685
	ld h,h			;b686
	nop			;b687
	ld h,l			;b688
	nop			;b689
	ld h,(hl)		;b68a
	nop			;b68b
	ld h,a			;b68c
	nop			;b68d
	ld l,b			;b68e
	nop			;b68f
	ld l,c			;b690
	nop			;b691
	ld l,d			;b692
	nop			;b693
	ld l,e			;b694
	nop			;b695
	ld l,h			;b696
	nop			;b697
	ld l,l			;b698
	nop			;b699
	ld l,(hl)		;b69a
	nop			;b69b
	ld l,a			;b69c
	nop			;b69d
	ld (hl),b		;b69e
	nop			;b69f
	ld a,000h		;b6a0
	ld (hl),c		;b6a2
	nop			;b6a3
	ld (hl),d		;b6a4
	nop			;b6a5
	ld (hl),e		;b6a6
	nop			;b6a7
	ld (hl),h		;b6a8
	nop			;b6a9
	ld (hl),l		;b6aa
	nop			;b6ab
	rrca			;b6ac
	inc bc			;b6ad
	xor l			;b6ae
	ld (bc),a		;b6af
	xor (hl)		;b6b0
	ld (bc),a		;b6b1
	xor a			;b6b2
	ld (bc),a		;b6b3
	or b			;b6b4
	ld (bc),a		;b6b5
	or c			;b6b6
	ld (bc),a		;b6b7
	or d			;b6b8
	ld (bc),a		;b6b9
	or e			;b6ba
	ld (bc),a		;b6bb
	or h			;b6bc
	ld (bc),a		;b6bd
	rrca			;b6be
	inc bc			;b6bf
	or h			;b6c0
	inc b			;b6c1
	or l			;b6c2
	inc b			;b6c3
	halt			;b6c4
	nop			;b6c5
	ld (hl),a		;b6c6
	nop			;b6c7
	ld a,b			;b6c8
	nop			;b6c9
	ld a,c			;b6ca
	nop			;b6cb
	ld a,d			;b6cc
	nop			;b6cd
	ld a,e			;b6ce
	nop			;b6cf
	ld a,h			;b6d0
	nop			;b6d1
	ld a,l			;b6d2
	nop			;b6d3
	ld a,(hl)		;b6d4
	nop			;b6d5
	ld a,a			;b6d6
	nop			;b6d7
	add a,b			;b6d8
	nop			;b6d9
	add a,c			;b6da
	nop			;b6db
	add a,d			;b6dc
	nop			;b6dd
	add a,e			;b6de
	nop			;b6df
	ld a,000h		;b6e0
	ld a,000h		;b6e2
	add a,h			;b6e4
	nop			;b6e5
	add a,l			;b6e6
	nop			;b6e7
	add a,(hl)		;b6e8
	nop			;b6e9
	add a,a			;b6ea
	nop			;b6eb
	rrca			;b6ec
	inc bc			;b6ed
	or l			;b6ee
	ld (bc),a		;b6ef
	or (hl)			;b6f0
	ld (bc),a		;b6f1
	or a			;b6f2
	ld (bc),a		;b6f3
	cp b			;b6f4
	ld (bc),a		;b6f5
	cp c			;b6f6
	ld (bc),a		;b6f7
	cp d			;b6f8
	ld (bc),a		;b6f9
	cp e			;b6fa
	ld (bc),a		;b6fb
	cp h			;b6fc
	ld (bc),a		;b6fd
	cp l			;b6fe
	ld (bc),a		;b6ff
	cp d			;b700
	inc b			;b701
	cp e			;b702
	inc b			;b703
	adc a,b			;b704
	nop			;b705
	adc a,c			;b706
	nop			;b707
	adc a,d			;b708
	nop			;b709
	adc a,e			;b70a
	nop			;b70b
	adc a,h			;b70c
	nop			;b70d
	adc a,l			;b70e
	nop			;b70f
	adc a,(hl)		;b710
	nop			;b711
	adc a,a			;b712
	nop			;b713
	sub b			;b714
	nop			;b715
	sub c			;b716
	nop			;b717
	sub d			;b718
	nop			;b719
	sub e			;b71a
	nop			;b71b
	sub h			;b71c
	nop			;b71d
	sub l			;b71e
	nop			;b71f
	ld a,000h		;b720
	sub (hl)		;b722
	nop			;b723
	sub a			;b724
	nop			;b725
	sbc a,b			;b726
	nop			;b727
	ld a,000h		;b728
	sbc a,c			;b72a
	nop			;b72b
	rrca			;b72c
	inc bc			;b72d
	cp (hl)			;b72e
	ld (bc),a		;b72f
	cp a			;b730
	ld (bc),a		;b731
	ret nz			;b732
	ld (bc),a		;b733
	pop bc			;b734
	ld (bc),a		;b735
	jp nz,0c302h		;b736
	ld (bc),a		;b739
	call nz,0c502h		;b73a
	ld (bc),a		;b73d
	add a,002h		;b73e
	cp h			;b740
	inc b			;b741
	cp l			;b742
	inc b			;b743
	sbc a,d			;b744
	nop			;b745
	sbc a,e			;b746
	nop			;b747
	sbc a,h			;b748
	nop			;b749
	sbc a,l			;b74a
	nop			;b74b
	sbc a,(hl)		;b74c
	nop			;b74d
	sbc a,a			;b74e
	nop			;b74f
	and b			;b750
	nop			;b751
	and c			;b752
	nop			;b753
	and d			;b754
	nop			;b755
	and e			;b756
	nop			;b757
	and h			;b758
	nop			;b759
	and l			;b75a
	nop			;b75b
	and (hl)		;b75c
	nop			;b75d
	and a			;b75e
	nop			;b75f
	ld a,000h		;b760
	ld a,000h		;b762
	xor b			;b764
	nop			;b765
	xor c			;b766
	nop			;b767
	xor d			;b768
	nop			;b769
	xor e			;b76a
	nop			;b76b
	rrca			;b76c
	inc bc			;b76d
	rst 0			;b76e
	ld (bc),a		;b76f
	ret z			;b770
	ld (bc),a		;b771
	ret			;b772
	ld (bc),a		;b773
	jp z,0cb02h		;b774
	ld (bc),a		;b777
	call z,0cd02h		;b778
	ld (bc),a		;b77b
	adc a,002h		;b77c
	rrca			;b77e
	inc bc			;b77f
	cp (hl)			;b780
	inc b			;b781
	cp a			;b782
	inc b			;b783
	xor e			;b784
	nop			;b785
	xor h			;b786
	nop			;b787
	xor l			;b788
	nop			;b789
	xor (hl)		;b78a
	nop			;b78b
	xor a			;b78c
	nop			;b78d
	or b			;b78e
	nop			;b78f
	or c			;b790
	nop			;b791
	or d			;b792
	nop			;b793
	or e			;b794
	nop			;b795
	or h			;b796
	nop			;b797
	or l			;b798
	nop			;b799
	or (hl)			;b79a
	nop			;b79b
	or a			;b79c
	nop			;b79d
	cp b			;b79e
	nop			;b79f
	ld a,000h		;b7a0
	cp c			;b7a2
	nop			;b7a3
	cp d			;b7a4
	nop			;b7a5
	cp e			;b7a6
	nop			;b7a7
	cp h			;b7a8
	nop			;b7a9
	ld a,000h		;b7aa
	rrca			;b7ac
	inc bc			;b7ad
	rst 8			;b7ae
	ld (bc),a		;b7af
	ret nc			;b7b0
	ld (bc),a		;b7b1
	pop de			;b7b2
	ld (bc),a		;b7b3
lb7b4h:
	jp nc,0d302h		;b7b4
	ld (bc),a		;b7b7
	call nc,0d502h		;b7b8
	ld (bc),a		;b7bb
	rrca			;b7bc
	inc bc			;b7bd
	rrca			;b7be
	inc bc			;b7bf
	ex de,hl		;b7c0
	ld bc,001efh		;b7c1
	ld a,000h		;b7c4
	cp l			;b7c6
	nop			;b7c7
	cp (hl)			;b7c8
	nop			;b7c9
	cp a			;b7ca
	nop			;b7cb
	ret nz			;b7cc
	nop			;b7cd
	pop bc			;b7ce
	nop			;b7cf
	jp nz,0c300h		;b7d0
	nop			;b7d3
	call nz,0c500h		;b7d4
	nop			;b7d7
	add a,000h		;b7d8
	rst 0			;b7da
	nop			;b7db
	ret z			;b7dc
	nop			;b7dd
	ld a,000h		;b7de
	ld a,000h		;b7e0
	ret			;b7e2
	nop			;b7e3
	jp z,0cb00h		;b7e4
	nop			;b7e7
	call z,0cd00h		;b7e8
	nop			;b7eb
	sub 002h		;b7ec
	rst 10h			;b7ee
	ld (bc),a		;b7ef
	ret c			;b7f0
	ld (bc),a		;b7f1
	exx			;b7f2
	ld (bc),a		;b7f3
	jp c,0db02h		;b7f4
	ld (bc),a		;b7f7
	rrca			;b7f8
	inc bc			;b7f9
	rrca			;b7fa
	inc bc			;b7fb
	rrca			;b7fc
	inc bc			;b7fd
	rrca			;b7fe
	inc bc			;b7ff
	call pe,0f001h		;b800
	ld bc,000ceh		;b803
	rst 8			;b806
	nop			;b807
	ret nc			;b808
	nop			;b809
	pop de			;b80a
	nop			;b80b
	jp nc,0d300h		;b80c
	nop			;b80f
	call nc,0d500h		;b810
	nop			;b813
	sub 000h		;b814
	rst 10h			;b816
	nop			;b817
	ret c			;b818
	nop			;b819
	exx			;b81a
	nop			;b81b
	ld a,000h		;b81c
	ld a,000h		;b81e
	ld a,000h		;b820
	jp c,0db00h		;b822
	nop			;b825
	call c,0dd00h		;b826
	nop			;b829
	sbc a,000h		;b82a
	rrca			;b82c
	inc bc			;b82d
	call c,0dd02h		;b82e
	ld (bc),a		;b831
	sbc a,002h		;b832
	rrca			;b834
	inc bc			;b835
	rrca			;b836
	inc bc			;b837
	rrca			;b838
	inc bc			;b839
	rrca			;b83a
	inc bc			;b83b
	rrca			;b83c
	inc bc			;b83d
	rrca			;b83e
	inc bc			;b83f
	defb 0edh ;next byte illegal after ed	;b840
	ld bc,004ffh		;b841
	rlc c			;b844
	rlc c			;b846
	add a,001h		;b848
	rlc c			;b84a
	add a,001h		;b84c
	rlc c			;b84e
	ret			;b850
	ld bc,001c6h		;b851
	rlc c			;b854
	rlc c			;b856
	add a,001h		;b858
	rst 0			;b85a
	ld bc,001cbh		;b85b
	ret			;b85e
	ld bc,001c6h		;b85f
	ret			;b862
	ld bc,001c6h		;b863
	rst 0			;b866
	ld bc,001c8h		;b867
	ret			;b86a
	ld bc,000dfh		;b86b
	ret po			;b86e
	nop			;b86f
	pop hl			;b870
	nop			;b871
	jp po,0e300h		;b872
	nop			;b875
	call po,0e500h		;b876
	nop			;b879
	cp a			;b87a
	ld bc,001c0h		;b87b
	ld (de),a		;b87e
	ld (bc),a		;b87f
	xor 001h		;b880
	xor l			;b882
	inc b			;b883
	rlc c			;b884
	ret			;b886
	ld bc,001c5h		;b887
	rlc c			;b88a
	ret z			;b88c
	ld bc,001cbh		;b88d
	rst 0			;b890
	ld bc,001cbh		;b891
	rlc c			;b894
	rlc c			;b896
	rlc c			;b898
	ret z			;b89a
	ld bc,001c4h		;b89b
	rlc c			;b89e
	rst 0			;b8a0
	ld bc,001c8h		;b8a1
	ret z			;b8a4
	ld bc,001cbh		;b8a5
	push bc			;b8a8
	ld bc,001cah		;b8a9
	ret p			;b8ac
	nop			;b8ad
	pop af			;b8ae
	nop			;b8af
	jp p,0f300h		;b8b0
	nop			;b8b3
	call p,0f500h		;b8b4
	nop			;b8b7
	or 000h			;b8b8
	pop bc			;b8ba
	ld bc,00213h		;b8bb
	inc d			;b8be
	ld (bc),a		;b8bf
	pop af			;b8c0
	ld bc,004ffh		;b8c1
	rlc c			;b8c4
	rlc c			;b8c6
	rlc c			;b8c8
	add a,001h		;b8ca
	rlc c			;b8cc
	add a,001h		;b8ce
	rlc c			;b8d0
	rlc c			;b8d2
	ret			;b8d4
	ld bc,001cbh		;b8d5
	rst 0			;b8d8
	ld bc,001c9h		;b8d9
	rlc c			;b8dc
	rlc c			;b8de
	rlc c			;b8e0
	add a,001h		;b8e2
	rlc c			;b8e4
	rlc c			;b8e6
	rlc c			;b8e8
	rlc c			;b8ea
	inc b			;b8ec
	ld bc,00105h		;b8ed
	ld b,001h		;b8f0
	rlca			;b8f2
	ld bc,00108h		;b8f3
	add hl,bc		;b8f6
	ld bc,0010ah		;b8f7
	ld d,002h		;b8fa
	rla			;b8fc
	ld (bc),a		;b8fd
	jr $+4			;b8fe
	jp p,0ff01h		;b900
	inc b			;b903
	rlc c			;b904
	ret z			;b906
	ld bc,001cbh		;b907
	add a,001h		;b90a
	rlc c			;b90c
	call nz,0c701h		;b90e
	ld bc,001cbh		;b911
	ret z			;b914
	ld bc,001c6h		;b915
	rlc c			;b918
	rst 0			;b91a
	ld bc,001c6h		;b91b
	rlc c			;b91e
	add a,001h		;b920
	rlc c			;b922
	rlc c			;b924
	rlc c			;b926
	call nz,0cb01h		;b928
	ld bc,00118h		;b92b
	add hl,de		;b92e
	ld bc,0011ah		;b92f
	dec de			;b932
	ld bc,0011ch		;b933
	dec e			;b936
	ld bc,00219h		;b937
	ld a,(de)		;b93a
	ld (bc),a		;b93b
	dec de			;b93c
	ld (bc),a		;b93d
	inc e			;b93e
	ld (bc),a		;b93f
	rst 38h			;b940
	inc b			;b941
	rst 38h			;b942
	inc b			;b943
	rlc c			;b944
	add a,001h		;b946
	ret			;b948
	ld bc,001cbh		;b949
	ret			;b94c
	ld bc,001c7h		;b94d
	rlc c			;b950
	ret			;b952
	ld bc,001c6h		;b953
	call nz,0c701h		;b956
	ld bc,001cbh		;b959
	rlc c			;b95c
	ret			;b95e
	ld bc,001c9h		;b95f
	add a,001h		;b962
	rst 0			;b964
	ld bc,001c6h		;b965
	rlc c			;b968
	ret z			;b96a
	ld bc,0012bh		;b96b
	inc l			;b96e
	ld bc,0012dh		;b96f
	ld l,001h		;b972
	cpl			;b974
	ld bc,00130h		;b975
	dec e			;b978
	ld (bc),a		;b979
	ld e,002h		;b97a
	rra			;b97c
	ld (bc),a		;b97d
	rrca			;b97e
	inc bc			;b97f
	rst 38h			;b980
	inc b			;b981
	rst 38h			;b982
	inc b			;b983
	rlc c			;b984
	call nz,0cb01h		;b986
	ld bc,001c6h		;b989
	rst 0			;b98c
	ld bc,001cbh		;b98d
	rst 0			;b990
	ld bc,001c6h		;b991
	rlc c			;b994
	rlc c			;b996
	rst 0			;b998
	ld bc,001cbh		;b999
	add a,001h		;b99c
	rlc c			;b99e
	push bc			;b9a0
	ld bc,001cbh		;b9a1
	rst 0			;b9a4
	ld bc,001c8h		;b9a5
	rst 0			;b9a8
	ld bc,001cbh		;b9a9
	ccf			;b9ac
	ld bc,00140h		;b9ad
	ld b,c			;b9b0
	ld bc,00142h		;b9b1
	ld b,e			;b9b4
	ld bc,00144h		;b9b5
	jr nz,$+4		;b9b8
	ld hl,01c02h		;b9ba
	ld (bc),a		;b9bd
	rrca			;b9be
	inc bc			;b9bf
	rst 38h			;b9c0
	inc b			;b9c1
	rst 38h			;b9c2
	inc b			;b9c3
	ret z			;b9c4
	ld bc,001cbh		;b9c5
	rlc c			;b9c8
	push bc			;b9ca
	ld bc,001c7h		;b9cb
	rlc c			;b9ce
	rlc c			;b9d0
	rlc c			;b9d2
	rst 0			;b9d4
	ld bc,001cbh		;b9d5
	rlc c			;b9d8
	rlc c			;b9da
	rlc c			;b9dc
	rlc c			;b9de
	rlc c			;b9e0
	add a,001h		;b9e2
	rlc c			;b9e4
	jp z,0cb01h		;b9e6
	ld bc,001c6h		;b9e9
	ld d,d			;b9ec
	ld bc,00153h		;b9ed
	ld d,h			;b9f0
	ld bc,00155h		;b9f1
	ld d,(hl)		;b9f4
	ld bc,00157h		;b9f5
	ld (02302h),hl		;b9f8
	ld (bc),a		;b9fb
	rrca			;b9fc
	inc bc			;b9fd
	rrca			;b9fe
	inc bc			;b9ff
	rst 38h			;ba00
	inc b			;ba01
	rst 38h			;ba02
	inc b			;ba03
	rlc c			;ba04
	add a,001h		;ba06
	rst 0			;ba08
	ld bc,001cbh		;ba09
	rlc c			;ba0c
	add a,001h		;ba0e
	rlc c			;ba10
lba12h:
	rlc c			;ba12
	rlc c			;ba14
	ret z			;ba16
	ld bc,001c6h		;ba17
	rlc c			;ba1a
	rlc c			;ba1c
	rst 0			;ba1e
	ld bc,001c7h		;ba1f
	rlc c			;ba22
	rlc c			;ba24
	rlc c			;ba26
	rlc c			;ba28
	rlc c			;ba2a
	ld h,d			;ba2c
	ld bc,0015bh		;ba2d
	ld h,e			;ba30
	ld bc,00164h		;ba31
	ld h,l			;ba34
	ld bc,00224h		;ba35
	dec h			;ba38
	ld (bc),a		;ba39
	rrca			;ba3a
	inc bc			;ba3b
	rrca			;ba3c
	inc bc			;ba3d
	rrca			;ba3e
	inc bc			;ba3f
	rst 38h			;ba40
	inc b			;ba41
	rst 38h			;ba42
	inc b			;ba43
	rlc c			;ba44
	rst 0			;ba46
	ld bc,001cbh		;ba47
	rlc c			;ba4a
	rlc c			;ba4c
	rlc c			;ba4e
	rlc c			;ba50
	add a,001h		;ba52
	rlc c			;ba54
	add a,001h		;ba56
	rlc c			;ba58
	rlc c			;ba5a
	rst 0			;ba5c
	ld bc,001cbh		;ba5d
	rlc c			;ba60
	rlc c			;ba62
	rlc c			;ba64
	add a,001h		;ba66
	jp z,0cb01h		;ba68
	ld bc,0017eh		;ba6b
	ld h,002h		;ba6e
	daa			;ba70
	ld (bc),a		;ba71
	jr z,lba76h		;ba72
	add hl,hl		;ba74
	ld (bc),a		;ba75
lba76h:
	ld hl,(00f02h)		;ba76
	inc bc			;ba79
	rrca			;ba7a
	inc bc			;ba7b
	rrca			;ba7c
	inc bc			;ba7d
	rrca			;ba7e
	inc bc			;ba7f
	rst 38h			;ba80
	inc b			;ba81
	rst 38h			;ba82
	inc b			;ba83
	ret z			;ba84
	ld bc,001cbh		;ba85
	ret z			;ba88
	ld bc,001c7h		;ba89
	ret z			;ba8c
	ld bc,001c4h		;ba8d
	add a,001h		;ba90
	rst 0			;ba92
	ld bc,001cbh		;ba93
	rlc c			;ba96
	rlc c			;ba98
	ret z			;ba9a
	ld bc,001c6h		;ba9b
	rlc c			;ba9e
	rlc c			;baa0
	rlc c			;baa2
	ret z			;baa4
	ld bc,001cbh		;baa5
	add a,001h		;baa8
	rlc c			;baaa
	dec hl			;baac
	ld (bc),a		;baad
	inc l			;baae
	ld (bc),a		;baaf
	dec l			;bab0
	ld (bc),a		;bab1
	ld l,002h		;bab2
	cpl			;bab4
	ld (bc),a		;bab5
	rrca			;bab6
	inc bc			;bab7
	rrca			;bab8
	inc bc			;bab9
	rrca			;baba
	inc bc			;babb
	rrca			;babc
	inc bc			;babd
	rrca			;babe
	inc bc			;babf
	rst 38h			;bac0
	inc b			;bac1
	rst 38h			;bac2
	inc b			;bac3
	jp z,0c601h		;bac4
	ld bc,001cbh		;bac7
	rlc c			;baca
	add a,001h		;bacc
	add a,001h		;bace
	rst 0			;bad0
	ld bc,001c6h		;bad1
	rlc c			;bad4
	rlc c			;bad6
	jp z,0c401h		;bad8
	ld bc,001cbh		;badb
	rst 0			;bade
	ld bc,001c7h		;badf
	add a,001h		;bae2
	ret			;bae4
	ld bc,001cbh		;bae5
	ret z			;bae8
	ld bc,001c7h		;bae9
	jr nc,$+4		;baec
	ld sp,03202h		;baee
	ld (bc),a		;baf1
	inc sp			;baf2
	ld (bc),a		;baf3
	rrca			;baf4
	inc bc			;baf5
	rrca			;baf6
	inc bc			;baf7
	rrca			;baf8
	inc bc			;baf9
	rrca			;bafa
	inc bc			;bafb
	rrca			;bafc
	inc bc			;bafd
	rrca			;bafe
	inc bc			;baff
	rst 38h			;bb00
	inc b			;bb01
	rst 38h			;bb02
	inc b			;bb03
	add a,001h		;bb04
	rlc c			;bb06
	call nz,0cb01h		;bb08
	ld bc,001c9h		;bb0b
	jp z,0c801h		;bb0e
	ld bc,001c5h		;bb11
	rlc c			;bb14
	rst 0			;bb16
	ld bc,001c6h		;bb17
	ret z			;bb1a
	ld bc,001cah		;bb1b
	rlc c			;bb1e
	rlc c			;bb20
	push bc			;bb22
	ld bc,001cbh		;bb23
	ret z			;bb26
	ld bc,001cbh		;bb27
	rst 0			;bb2a
	ld bc,00234h		;bb2b
	dec (hl)		;bb2e
	ld (bc),a		;bb2f
	ld (hl),002h		;bb30
	rrca			;bb32
	inc bc			;bb33
	rrca			;bb34
	inc bc			;bb35
	rrca			;bb36
	inc bc			;bb37
	rrca			;bb38
	inc bc			;bb39
	rrca			;bb3a
	inc bc			;bb3b
	rrca			;bb3c
	inc bc			;bb3d
	rrca			;bb3e
	inc bc			;bb3f
	rst 38h			;bb40
	inc b			;bb41
	call z,0cd01h		;bb42
	ld bc,001cch		;bb45
	call 0cc01h		;bb48
	ld bc,001cdh		;bb4b
	call z,0cd01h		;bb4e
	ld bc,001d4h		;bb51
	push de			;bb54
	ld bc,001d6h		;bb55
	rst 10h			;bb58
	ld bc,001cch		;bb59
	call 0cc01h		;bb5c
	ld bc,001cdh		;bb5f
	call z,0cd01h		;bb62
	ld bc,001cch		;bb65
	call 0df01h		;bb68
	ld (bc),a		;bb6b
	ret po			;bb6c
	ld (bc),a		;bb6d
	pop hl			;bb6e
	ld (bc),a		;bb6f
	jp po,0e302h		;bb70
	ld (bc),a		;bb73
	rst 38h			;bb74
	inc b			;bb75
	rst 38h			;bb76
	inc b			;bb77
	rst 38h			;bb78
	inc b			;bb79
	rst 38h			;bb7a
	inc b			;bb7b
	rst 38h			;bb7c
	inc b			;bb7d
	rst 38h			;bb7e
	inc b			;bb7f
	rst 38h			;bb80
	inc b			;bb81
	adc a,001h		;bb82
	rst 8			;bb84
	ld bc,001ceh		;bb85
	rst 8			;bb88
	ld bc,001ceh		;bb89
	rst 8			;bb8c
	ld bc,001ceh		;bb8d
	rst 8			;bb90
	ld bc,001d4h		;bb91
	push de			;bb94
	ld bc,001d6h		;bb95
	rst 10h			;bb98
	ld bc,001ceh		;bb99
	rst 8			;bb9c
	ld bc,001ceh		;bb9d
	rst 8			;bba0
	ld bc,001ceh		;bba1
	rst 8			;bba4
	ld bc,001ceh		;bba5
	rst 8			;bba8
	ld bc,002e4h		;bba9
	push hl			;bbac
	ld (bc),a		;bbad
	and 002h		;bbae
	rst 20h			;bbb0
	ld (bc),a		;bbb1
	ret pe			;bbb2
	ld (bc),a		;bbb3
	cp 002h			;bbb4
	rst 38h			;bbb6
	ld (bc),a		;bbb7
	nop			;bbb8
	inc bc			;bbb9
	scf			;bbba
	ld (bc),a		;bbbb
	jr c,lbbc0h		;bbbc
	rst 38h			;bbbe
	inc b			;bbbf
lbbc0h:
	rst 38h			;bbc0
	inc b			;bbc1
	ret nc			;bbc2
	ld bc,001d0h		;bbc3
	ret nc			;bbc6
	ld bc,001d0h		;bbc7
	ret nc			;bbca
	ld bc,001d0h		;bbcb
	ret nc			;bbce
	ld bc,001d0h		;bbcf
	call nc,0d501h		;bbd2
	ld bc,001d6h		;bbd5
	rst 10h			;bbd8
	ld bc,001d0h		;bbd9
	ret nc			;bbdc
	ld bc,001d0h		;bbdd
	ret nc			;bbe0
	ld bc,001d0h		;bbe1
	ret nc			;bbe4
	ld bc,001d0h		;bbe5
	ret nc			;bbe8
	ld bc,0030fh		;bbe9
	rrca			;bbec
	inc bc			;bbed
	jp (hl)			;bbee
	ld (bc),a		;bbef
	jp pe,00f02h		;bbf0
	inc bc			;bbf3
	ld bc,00203h		;bbf4
	inc bc			;bbf7
	inc bc			;bbf8
	inc bc			;bbf9
	add hl,sp		;bbfa
	ld (bc),a		;bbfb
	ld a,(03b02h)		;bbfc
	ld (bc),a		;bbff
	rst 38h			;bc00
	inc b			;bc01
	pop de			;bc02
	ld bc,001d2h		;bc03
	pop de			;bc06
	ld bc,001d2h		;bc07
	pop de			;bc0a
	ld bc,001d2h		;bc0b
	pop de			;bc0e
	ld bc,001d2h		;bc0f
	call nc,0d501h		;bc12
	ld bc,001d6h		;bc15
	rst 10h			;bc18
	ld bc,001d1h		;bc19
	jp nc,0d101h		;bc1c
	ld bc,001d2h		;bc1f
	pop de			;bc22
	ld bc,001d2h		;bc23
	pop de			;bc26
	ld bc,001d2h		;bc27
	ex de,hl		;bc2a
	ld (bc),a		;bc2b
	call pe,0ed02h		;bc2c
	ld (bc),a		;bc2f
	xor 002h		;bc30
	rst 28h			;bc32
	ld (bc),a		;bc33
	ret p			;bc34
	ld (bc),a		;bc35
	pop af			;bc36
	ld (bc),a		;bc37
	jp p,00f02h		;bc38
	inc bc			;bc3b
	inc a			;bc3c
	ld (bc),a		;bc3d
	dec a			;bc3e
	ld (bc),a		;bc3f
lbc40h:
	rst 38h			;bc40
	inc b			;bc41
	call z,0cd01h		;bc42
	ld bc,001cch		;bc45
	call 0cc01h		;bc48
	ld bc,001cdh		;bc4b
	call z,0cd01h		;bc4e
	ld bc,001d4h		;bc51
lbc54h:
	push de			;bc54
	ld bc,001d6h		;bc55
	rst 10h			;bc58
	ld bc,001cch		;bc59
	call 0cc01h		;bc5c
	ld bc,001cdh		;bc5f
	call z,0cd01h		;bc62
	ld bc,001cch		;bc65
	call 0f301h		;bc68
	ld (bc),a		;bc6b
	call p,0f502h		;bc6c
	ld (bc),a		;bc6f
	or 002h			;bc70
	rst 30h			;bc72
	ld (bc),a		;bc73
	ret m			;bc74
	ld (bc),a		;bc75
	ld sp,hl		;bc76
	ld (bc),a		;bc77
	jp m,03e02h		;bc78
	ld (bc),a		;bc7b
	ccf			;bc7c
	ld (bc),a		;bc7d
	ld b,b			;bc7e
	ld (bc),a		;bc7f
	rst 38h			;bc80
	inc b			;bc81
	adc a,001h		;bc82
	rst 8			;bc84
	ld bc,001ceh		;bc85
	rst 8			;bc88
	ld bc,001ceh		;bc89
	rst 8			;bc8c
	ld bc,001ceh		;bc8d
	rst 8			;bc90
	ld bc,001d4h		;bc91
	push de			;bc94
	ld bc,001d6h		;bc95
	rst 10h			;bc98
	ld bc,001ceh		;bc99
	rst 8			;bc9c
	ld bc,001ceh		;bc9d
	rst 8			;bca0
	ld bc,001ceh		;bca1
	rst 8			;bca4
	ld bc,001ceh		;bca5
	rst 8			;bca8
	ld bc,0030fh		;bca9
	rrca			;bcac
	inc bc			;bcad
	rrca			;bcae
	inc bc			;bcaf
	rrca			;bcb0
	inc bc			;bcb1
	call m,0fb02h		;bcb2
	ld (bc),a		;bcb5
	defb 0fdh,002h,00fh ;illegal sequence	;bcb6
	inc bc			;bcb9
	ld b,c			;bcba
	ld (bc),a		;bcbb
	ld b,d			;bcbc
	ld (bc),a		;bcbd
	ld b,e			;bcbe
	ld (bc),a		;bcbf
	rst 38h			;bcc0
	inc b			;bcc1
	out (001h),a		;bcc2
	out (001h),a		;bcc4
	out (001h),a		;bcc6
	out (001h),a		;bcc8
	out (001h),a		;bcca
	out (001h),a		;bccc
	out (001h),a		;bcce
	out (001h),a		;bcd0
	call nc,0d501h		;bcd2
	ld bc,001d6h		;bcd5
	rst 10h			;bcd8
	ld bc,001d3h		;bcd9
	out (001h),a		;bcdc
	out (001h),a		;bcde
	out (001h),a		;bce0
	out (001h),a		;bce2
	out (001h),a		;bce4
	out (001h),a		;bce6
	out (001h),a		;bce8
	rst 38h			;bcea
lbcebh:
	inc b			;bceb
	rst 38h			;bcec
	inc b			;bced
	rst 38h			;bcee
	inc b			;bcef
	rst 38h			;bcf0
	inc b			;bcf1
	rst 38h			;bcf2
	inc b			;bcf3
	rst 38h			;bcf4
	inc b			;bcf5
	rst 38h			;bcf6
	inc b			;bcf7
	rst 38h			;bcf8
	inc b			;bcf9
	rst 38h			;bcfa
	inc b			;bcfb
	rst 38h			;bcfc
	inc b			;bcfd
	rst 38h			;bcfe
	inc b			;bcff
	rst 38h			;bd00
	inc b			;bd01
	rst 38h			;bd02
	inc b			;bd03
	rst 38h			;bd04
	inc b			;bd05
	rst 38h			;bd06
	inc b			;bd07
	rst 38h			;bd08
	inc b			;bd09
	rst 38h			;bd0a
	inc b			;bd0b
	rst 38h			;bd0c
	inc b			;bd0d
	rst 38h			;bd0e
	inc b			;bd0f
	rst 38h			;bd10
	inc b			;bd11
	rst 38h			;bd12
	inc b			;bd13
	rst 38h			;bd14
	inc b			;bd15
	rst 38h			;bd16
	inc b			;bd17
	rst 38h			;bd18
	inc b			;bd19
	rst 38h			;bd1a
	inc b			;bd1b
	rst 38h			;bd1c
	inc b			;bd1d
	rst 38h			;bd1e
	inc b			;bd1f
lbd20h:
	rst 38h			;bd20
	inc b			;bd21
	rst 38h			;bd22
	inc b			;bd23
	rst 38h			;bd24
	inc b			;bd25
	rst 38h			;bd26
	inc b			;bd27
	rst 38h			;bd28
	inc b			;bd29
	di			;bd2a
	ld bc,001f4h		;bd2b
	push af			;bd2e
	ld bc,001f6h		;bd2f
	rst 30h			;bd32
	ld bc,001f8h		;bd33
	rst 38h			;bd36
	inc b			;bd37
	inc bc			;bd38
	ld (bc),a		;bd39
	inc b			;bd3a
	ld (bc),a		;bd3b
	rst 38h			;bd3c
	inc b			;bd3d
	dec b			;bd3e
	ld (bc),a		;bd3f
	rst 38h			;bd40
	inc b			;bd41
	rst 18h			;bd42
	nop			;bd43
	ret po			;bd44
	nop			;bd45
	pop hl			;bd46
	nop			;bd47
	jp po,0e300h		;bd48
	nop			;bd4b
	call po,0e500h		;bd4c
	nop			;bd4f
	and 000h		;bd50
	rst 20h			;bd52
	nop			;bd53
	ret pe			;bd54
	nop			;bd55
	jp (hl)			;bd56
	nop			;bd57
	and 000h		;bd58
	rst 20h			;bd5a
	nop			;bd5b
	jp pe,0eb00h		;bd5c
	nop			;bd5f
	jp (hl)			;bd60
	nop			;bd61
	call pe,0ed00h		;bd62
	nop			;bd65
	xor 000h		;bd66
	rst 28h			;bd68
	nop			;bd69
	ld sp,hl		;bd6a
	ld bc,001fah		;bd6b
	inc c			;bd6e
	ld (bc),a		;bd6f
	ei			;bd70
	ld bc,001fch		;bd71
	inc c			;bd74
	ld (bc),a		;bd75
	rst 38h			;bd76
	inc b			;bd77
	ld b,002h		;bd78
	rst 38h			;bd7a
	inc b			;bd7b
	rlca			;bd7c
	ld (bc),a		;bd7d
	ex af,af'		;bd7e
	ld (bc),a		;bd7f
	rst 38h			;bd80
	inc b			;bd81
	ret p			;bd82
	nop			;bd83
	pop af			;bd84
	nop			;bd85
	jp p,0f300h		;bd86
	nop			;bd89
	call p,0f500h		;bd8a
	nop			;bd8d
	or 000h			;bd8e
	rst 30h			;bd90
	nop			;bd91
	ret m			;bd92
	nop			;bd93
	ld sp,hl		;bd94
	nop			;bd95
	jp m,0fb00h		;bd96
	nop			;bd99
	call m,0fd00h		;bd9a
	nop			;bd9d
	cp 000h			;bd9e
	rst 38h			;bda0
	nop			;bda1
	nop			;bda2
	ld bc,00101h		;bda3
	ld (bc),a		;bda6
	ld bc,00103h		;bda7
	defb 0fdh,001h,0feh ;illegal sequence	;bdaa
	ld bc,001ffh		;bdad
	nop			;bdb0
	ld (bc),a		;bdb1
	rst 38h			;bdb2
	inc b			;bdb3
	rst 38h			;bdb4
	ld bc,004ffh		;bdb5
	add hl,bc		;bdb8
	ld (bc),a		;bdb9
	ld a,(bc)		;bdba
	ld (bc),a		;bdbb
	dec bc			;bdbc
	ld (bc),a		;bdbd
	rst 38h			;bdbe
	inc b			;bdbf
	rst 38h			;bdc0
	inc b			;bdc1
	inc b			;bdc2
	ld bc,00105h		;bdc3
	ld b,001h		;bdc6
	rlca			;bdc8
	ld bc,00108h		;bdc9
	add hl,bc		;bdcc
	ld bc,0010ah		;bdcd
	dec bc			;bdd0
	ld bc,0010ch		;bdd1
	dec c			;bdd4
	ld bc,0010eh		;bdd5
	rrca			;bdd8
	ld bc,00110h		;bdd9
	ld de,01201h		;bddc
	ld bc,00113h		;bddf
	inc d			;bde2
	ld bc,00115h		;bde3
	ld d,001h		;bde6
	rla			;bde8
	ld bc,00201h		;bde9
	ld (bc),a		;bdec
	ld (bc),a		;bded
	rst 38h			;bdee
	inc b			;bdef
	rst 38h			;bdf0
	inc b			;bdf1
	rst 38h			;bdf2
	inc b			;bdf3
	rst 38h			;bdf4
	inc b			;bdf5
	rst 38h			;bdf6
	inc b			;bdf7
	dec c			;bdf8
	ld (bc),a		;bdf9
	ld b,002h		;bdfa
	ld c,002h		;bdfc
	rrca			;bdfe
	ld (bc),a		;bdff
	rst 38h			;be00
	inc b			;be01
	jr lbe05h		;be02
	add hl,de		;be04
lbe05h:
	ld bc,0011ah		;be05
	dec de			;be08
	ld bc,0011ch		;be09
	dec e			;be0c
	ld bc,0011eh		;be0d
	rra			;be10
	ld bc,0011fh		;be11
	jr nz,$+3		;be14
	ld hl,02201h		;be16
	ld bc,00123h		;be19
	inc h			;be1c
	ld bc,00125h		;be1d
	ld h,001h		;be20
	daa			;be22
	ld bc,00128h		;be23
	add hl,hl		;be26
	ld bc,0012ah		;be27
	rst 38h			;be2a
	inc b			;be2b
	rst 38h			;be2c
	inc b			;be2d
	rst 38h			;be2e
	inc b			;be2f
	rst 38h			;be30
	inc b			;be31
	rst 38h			;be32
	inc b			;be33
	rst 38h			;be34
	inc b			;be35
	rst 38h			;be36
	inc b			;be37
	rst 38h			;be38
	inc b			;be39
	rst 38h			;be3a
	inc b			;be3b
	djnz $+4		;be3c
	ld de,0ff02h		;be3e
	inc b			;be41
	dec hl			;be42
	ld bc,0012ch		;be43
	dec l			;be46
	ld bc,0012eh		;be47
	cpl			;be4a
	ld bc,00130h		;be4b
	ld sp,03201h		;be4e
	ld bc,00133h		;be51
	inc (hl)		;be54
	ld bc,00135h		;be55
	ld (hl),001h		;be58
	scf			;be5a
	ld bc,00138h		;be5b
	add hl,sp		;be5e
	ld bc,0013ah		;be5f
	dec sp			;be62
	ld bc,0013ch		;be63
	dec a			;be66
	ld bc,0013eh		;be67
	rst 38h			;be6a
	inc b			;be6b
	rst 38h			;be6c
	inc b			;be6d
	rst 38h			;be6e
	inc b			;be6f
	rst 38h			;be70
	inc b			;be71
	rst 38h			;be72
	inc b			;be73
	rst 38h			;be74
	inc b			;be75
	rst 38h			;be76
	inc b			;be77
	rst 38h			;be78
	inc b			;be79
	rst 38h			;be7a
	inc b			;be7b
	rst 38h			;be7c
	inc b			;be7d
	rst 38h			;be7e
	inc b			;be7f
	rst 38h			;be80
	inc b			;be81
	ccf			;be82
	ld bc,00140h		;be83
	ld b,c			;be86
	ld bc,00142h		;be87
	ld b,e			;be8a
	ld bc,00144h		;be8b
	ld b,l			;be8e
	ld bc,00146h		;be8f
	ld b,a			;be92
	ld bc,00148h		;be93
	ld c,c			;be96
	ld bc,0014ah		;be97
	ld c,e			;be9a
	ld bc,0014ch		;be9b
	ld c,l			;be9e
	ld bc,0014eh		;be9f
	ld c,a			;bea2
	ld bc,00150h		;bea3
	ld d,b			;bea6
	ld bc,00149h		;bea7
	rst 38h			;beaa
	inc b			;beab
	rst 38h			;beac
	inc b			;bead
	rst 38h			;beae
	inc b			;beaf
	rst 38h			;beb0
	inc b			;beb1
	rst 38h			;beb2
	inc b			;beb3
	rst 38h			;beb4
	inc b			;beb5
	rst 38h			;beb6
	inc b			;beb7
	rst 38h			;beb8
	inc b			;beb9
	rst 38h			;beba
	inc b			;bebb
	rst 38h			;bebc
	inc b			;bebd
	rst 38h			;bebe
	inc b			;bebf
	rst 38h			;bec0
	inc b			;bec1
	ld d,d			;bec2
	ld bc,00153h		;bec3
	ld d,h			;bec6
	ld bc,00155h		;bec7
	ld d,(hl)		;beca
	ld bc,00157h		;becb
	ld e,b			;bece
	ld bc,00159h		;becf
	ld e,d			;bed2
	ld bc,0015bh		;bed3
	ld e,e			;bed6
	ld bc,0015bh		;bed7
	ld e,h			;beda
	ld bc,0015dh		;bedb
	ld e,(hl)		;bede
	ld bc,0015fh		;bedf
	ld h,b			;bee2
	ld bc,00161h		;bee3
	ld e,e			;bee6
	ld bc,0015bh		;bee7
	rst 38h			;beea
	inc b			;beeb
	rst 38h			;beec
	inc b			;beed
	rst 38h			;beee
	inc b			;beef
	rst 38h			;bef0
	inc b			;bef1
	rst 38h			;bef2
	inc b			;bef3
	rst 38h			;bef4
	inc b			;bef5
	rst 38h			;bef6
	inc b			;bef7
	rst 38h			;bef8
	inc b			;bef9
	rst 38h			;befa
	inc b			;befb
	rst 38h			;befc
	inc b			;befd
	rst 38h			;befe
	inc b			;beff
	rst 38h			;bf00
	inc b			;bf01
	ld h,d			;bf02
	ld bc,0015bh		;bf03
	ld h,e			;bf06
	ld bc,00164h		;bf07
	ld h,l			;bf0a
	ld bc,00166h		;bf0b
	ld h,a			;bf0e
	ld bc,00168h		;bf0f
	ld l,c			;bf12
	ld bc,0016ah		;bf13
	ld l,e			;bf16
	ld bc,0016ch		;bf17
	ld l,l			;bf1a
	ld bc,0016eh		;bf1b
	ld l,a			;bf1e
	ld bc,00170h		;bf1f
	ld (hl),c		;bf22
	ld bc,00172h		;bf23
	ld (hl),e		;bf26
	ld bc,00174h		;bf27
	rst 38h			;bf2a
	inc b			;bf2b
	rst 38h			;bf2c
	inc b			;bf2d
	rst 38h			;bf2e
	inc b			;bf2f
	rst 38h			;bf30
	inc b			;bf31
	rst 38h			;bf32
	inc b			;bf33
	rst 38h			;bf34
	inc b			;bf35
	rst 38h			;bf36
	inc b			;bf37
	rst 38h			;bf38
	inc b			;bf39
	rst 38h			;bf3a
	inc b			;bf3b
	rst 38h			;bf3c
	inc b			;bf3d
	rst 38h			;bf3e
	inc b			;bf3f
	rst 38h			;bf40
	inc b			;bf41
	ld (hl),l		;bf42
	ld bc,00176h		;bf43
	ld (hl),a		;bf46
	ld bc,00178h		;bf47
	ld a,c			;bf4a
	ld bc,0017ah		;bf4b
	ld a,e			;bf4e
	ld bc,0017ch		;bf4f
	ld a,l			;bf52
	ld bc,0017eh		;bf53
	ld a,a			;bf56
	ld bc,00180h		;bf57
	add a,c			;bf5a
	ld bc,00182h		;bf5b
	add a,e			;bf5e
	ld bc,00179h		;bf5f
	add a,h			;bf62
	ld bc,00185h		;bf63
	add a,(hl)		;bf66
	ld bc,00187h		;bf67
	rst 38h			;bf6a
	inc b			;bf6b
	rst 38h			;bf6c
	inc b			;bf6d
	rst 38h			;bf6e
	inc b			;bf6f
	rst 38h			;bf70
	inc b			;bf71
	rst 38h			;bf72
	inc b			;bf73
	rst 38h			;bf74
	inc b			;bf75
	rst 38h			;bf76
	inc b			;bf77
	rst 38h			;bf78
	inc b			;bf79
	rst 38h			;bf7a
	inc b			;bf7b
	rst 38h			;bf7c
	inc b			;bf7d
	rst 38h			;bf7e
	inc b			;bf7f
	rst 38h			;bf80
	inc b			;bf81
	adc a,b			;bf82
	ld bc,00189h		;bf83
	adc a,e			;bf86
	ld bc,0018ah		;bf87
	adc a,h			;bf8a
	ld bc,0018dh		;bf8b
	adc a,(hl)		;bf8e
	ld bc,0018fh		;bf8f
	sub b			;bf92
	ld bc,00191h		;bf93
	sub d			;bf96
	ld bc,00193h		;bf97
	sub h			;bf9a
	ld bc,00195h		;bf9b
	sub (hl)		;bf9e
	ld bc,00197h		;bf9f
	sbc a,b			;bfa2
	ld bc,00199h		;bfa3
	adc a,a			;bfa6
	ld bc,0019ah		;bfa7
	rst 38h			;bfaa
	inc b			;bfab
	rst 38h			;bfac
	inc b			;bfad
	rst 38h			;bfae
	inc b			;bfaf
	rst 38h			;bfb0
	inc b			;bfb1
	rst 38h			;bfb2
	inc b			;bfb3
	rst 38h			;bfb4
	inc b			;bfb5
	rst 38h			;bfb6
	inc b			;bfb7
	rst 38h			;bfb8
	inc b			;bfb9
	rst 38h			;bfba
	inc b			;bfbb
	rst 38h			;bfbc
	inc b			;bfbd
	rst 38h			;bfbe
	inc b			;bfbf
	rst 38h			;bfc0
	inc b			;bfc1
	sbc a,e			;bfc2
	ld bc,0019ch		;bfc3
	sbc a,l			;bfc6
	ld bc,0019eh		;bfc7
	sbc a,a			;bfca
	ld bc,001a0h		;bfcb
	and c			;bfce
	ld bc,001a2h		;bfcf
	and e			;bfd2
	ld bc,001a4h		;bfd3
	and l			;bfd6
	ld bc,001a6h		;bfd7
	and a			;bfda
	ld bc,001a8h		;bfdb
	xor c			;bfde
	ld bc,001aah		;bfdf
	xor e			;bfe2
	ld bc,001ach		;bfe3
	xor l			;bfe6
	ld bc,001aeh		;bfe7
	rst 38h			;bfea
	inc b			;bfeb
	rst 38h			;bfec
	inc b			;bfed
	rst 38h			;bfee
	inc b			;bfef
	rst 38h			;bff0
	inc b			;bff1
	rst 38h			;bff2
	inc b			;bff3
	rst 38h			;bff4
	inc b			;bff5
	rst 38h			;bff6
	inc b			;bff7
	rst 38h			;bff8
	inc b			;bff9
	rst 38h			;bffa
	inc b			;bffb
	rst 38h			;bffc
	inc b			;bffd
	rst 38h			;bffe
	inc b			;bfff

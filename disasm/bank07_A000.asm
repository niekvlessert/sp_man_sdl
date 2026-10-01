; z80dasm 1.2.0
; command line: z80dasm -a -l -g 0xA000 -o /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/disasm/bank07_A000.asm /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/banks/bank07.bin

	org 0a000h

	jp 08003h		;a000
	ld a,(0ca41h)		;a003
	or a			;a006
	jr nz,la01dh		;a007
	ld a,(0ce76h)		;a009
	or a			;a00c
	ret nz			;a00d
	ld a,(0ce75h)		;a00e
	or a			;a011
	ret nz			;a012
	call 08026h		;a013
	call 082deh		;a016
	call 0826dh		;a019
	ret			;a01c
la01dh:
	ld bc,00500h		;a01d
la020h:
	dec bc			;a020
	ld a,b			;a021
	or c			;a022
	jr nz,la020h		;a023
	ret			;a025
	ld iy,0ca40h		;a026
	call 08039h		;a02a
	ret			;a02d
	ld iy,0cac0h		;a02e
	call 08039h		;a032
	ld iy,0cae0h		;a035
	ld a,(iy+000h)		;a039
	and a			;a03c
	ret z			;a03d
	exx			;a03e
	ld l,(iy+008h)		;a03f
	dec l			;a042
	ld h,(iy+013h)		;a043
	ld e,(iy+00ah)		;a046
	dec e			;a049
	ld a,(iy+014h)		;a04a
	and 07fh		;a04d
	ld d,a			;a04f
	exx			;a050
	ld ix,0ce80h		;a051
	ld b,014h		;a055
la057h:
	push bc			;a057
	ld a,(ix+000h)		;a058
	cp 05fh			;a05b
	jr z,la09ch		;a05d
	dec a			;a05f
	cp 07fh			;a060
	jr nc,la09ch		;a062
	ld a,(ix+015h)		;a064
	and 0b0h		;a067
	cp 0b0h			;a069
	jr nz,la09ch		;a06b
	exx			;a06d
	ld c,(ix+00ah)		;a06e
	ld b,(ix+014h)		;a071
	res 7,b			;a074
	ld a,b			;a076
	add a,d			;a077
	ld b,a			;a078
	ld a,e			;a079
	sub c			;a07a
	add a,d			;a07b
	cp b			;a07c
	jr nc,la09bh		;a07d
	ex de,hl		;a07f
	ld c,(ix+008h)		;a080
	ld b,(ix+013h)		;a083
	ld a,b			;a086
	add a,d			;a087
	ld b,a			;a088
	ld a,e			;a089
	sub c			;a08a
	add a,d			;a08b
	cp b			;a08c
	ex de,hl		;a08d
	jr nc,la09bh		;a08e
	push hl			;a090
	push de			;a091
	push ix			;a092
	call 080e9h		;a094
	pop ix			;a097
	pop de			;a099
	pop hl			;a09a
la09bh:
	exx			;a09b
la09ch:
	pop bc			;a09c
	ld de,00040h		;a09d
	add ix,de		;a0a0
	djnz la057h		;a0a2
	ret			;a0a4
	ld de,0fff3h		;a0a5
	add hl,de		;a0a8
	ld c,(hl)		;a0a9
	inc l			;a0aa
	inc l			;a0ab
	ld e,(hl)		;a0ac
	ld a,009h		;a0ad
	add a,l			;a0af
	ld l,a			;a0b0
	jr nc,la0b4h		;a0b1
	inc h			;a0b3
la0b4h:
	ld b,(hl)		;a0b4
	inc l			;a0b5
	ld a,(hl)		;a0b6
	and 07fh		;a0b7
	ld d,a			;a0b9
	push de			;a0ba
	exx			;a0bb
	pop bc			;a0bc
	exx			;a0bd
	ld e,(iy+008h)		;a0be
	ld d,(iy+013h)		;a0c1
	exx			;a0c4
	ld e,(iy+00ah)		;a0c5
	ld a,(iy+014h)		;a0c8
	and 07fh		;a0cb
	ld d,a			;a0cd
	exx			;a0ce
	ret			;a0cf
	ld a,b			;a0d0
	add a,d			;a0d1
	ld b,a			;a0d2
	ld a,e			;a0d3
	sub c			;a0d4
	add a,d			;a0d5
	cp b			;a0d6
	ret nc			;a0d7
	exx			;a0d8
	ld a,b			;a0d9
	add a,d			;a0da
	ld b,a			;a0db
	ld a,e			;a0dc
	sub c			;a0dd
	add a,d			;a0de
	cp b			;a0df
	exx			;a0e0
	ret			;a0e1
	ld a,l			;a0e2
	sub 014h		;a0e3
	ld l,a			;a0e5
	push hl			;a0e6
	pop ix			;a0e7
	call 0815eh		;a0e9
la0ech:
	push bc			;a0ec
	call 0816bh		;a0ed
la0f0h:
	push bc			;a0f0
	call 08198h		;a0f1
	jr c,la0fbh		;a0f4
	call 080d0h		;a0f6
	jr c,la10dh		;a0f9
la0fbh:
	pop bc			;a0fb
	djnz la0f0h		;a0fc
	pop bc			;a0fe
	ld hl,(0cb14h)		;a0ff
	ld de,00006h		;a102
	add hl,de		;a105
	ld (0cb14h),hl		;a106
	djnz la0ech		;a109
	or a			;a10b
	ret			;a10c
la10dh:
	pop bc			;a10d
	pop bc			;a10e
	push ix			;a10f
	push iy			;a111
	call 0813fh		;a113
	call 0815ah		;a116
	push ix			;a119
	push iy			;a11b
	pop ix			;a11d
	pop iy			;a11f
	call 0813fh		;a121
	call 0815ah		;a124
	ld a,(ix+000h)		;a127
	cp 004h			;a12a
	jr nz,la139h		;a12c
	ld e,0e8h		;a12e
	ld b,001h		;a130
	call 078e6h		;a132
	ld (ix+000h),000h	;a135
la139h:
	pop iy			;a139
	pop ix			;a13b
	scf			;a13d
	ret			;a13e
	ld a,(ix+000h)		;a13f
	ld c,001h		;a142
	cp 004h			;a144
	jr z,la154h		;a146
	sub 002h		;a148
	cp 008h			;a14a
	jr nc,la150h		;a14c
	ld c,002h		;a14e
la150h:
	ld (iy+004h),c		;a150
	ret			;a153
la154h:
	ld a,(ix+006h)		;a154
	ld c,a			;a157
	jr la150h		;a158
	call 0600ch		;a15a
	ret			;a15d
	ld a,(iy+000h)		;a15e
	ld b,(iy+005h)		;a161
	call 08178h		;a164
	ld (0cb14h),hl		;a167
	ret			;a16a
	ld a,(ix+000h)		;a16b
	ld b,(ix+005h)		;a16e
	call 08178h		;a171
	ld (0cb16h),hl		;a174
	ret			;a177
	dec a			;a178
	ld h,000h		;a179
	ld l,a			;a17b
	ld de,08496h		;a17c
	add hl,de		;a17f
	ld c,(hl)		;a180
	ld de,08496h		;a181
	ld l,a			;a184
	ld h,000h		;a185
	add hl,hl		;a187
	add hl,de		;a188
	ld e,(hl)		;a189
	inc hl			;a18a
	ld d,(hl)		;a18b
	ld l,b			;a18c
	ld h,000h		;a18d
	add hl,hl		;a18f
	add hl,de		;a190
	ld a,(hl)		;a191
	inc hl			;a192
	ld h,(hl)		;a193
	ld l,a			;a194
	ld b,(hl)		;a195
	inc hl			;a196
	ret			;a197
	call 081b0h		;a198
	ret c			;a19b
	push bc			;a19c
	push de			;a19d
	call 081c9h		;a19e
	jp c,0469dh		;a1a1
	push bc			;a1a4
	push de			;a1a5
	exx			;a1a6
	pop de			;a1a7
	exx			;a1a8
	pop de			;a1a9
	exx			;a1aa
	pop bc			;a1ab
	exx			;a1ac
	pop bc			;a1ad
	or a			;a1ae
	ret			;a1af
	ld e,(iy+009h)		;a1b0
	ld d,(iy+00ah)		;a1b3
	ld l,(iy+007h)		;a1b6
	ld h,(iy+008h)		;a1b9
	ld bc,(0cb14h)		;a1bc
	push bc			;a1c0
	call 081e0h		;a1c1
	pop hl			;a1c4
	ld (0cb14h),hl		;a1c5
	ret			;a1c8
	ld e,(ix+009h)		;a1c9
	ld d,(ix+00ah)		;a1cc
	ld l,(ix+007h)		;a1cf
	ld h,(ix+008h)		;a1d2
	ld bc,(0cb16h)		;a1d5
	call 081e0h		;a1d9
	ld (0cb16h),hl		;a1dc
	ret			;a1df
	add hl,hl		;a1e0
	add hl,hl		;a1e1
	add hl,hl		;a1e2
	ld a,h			;a1e3
	ex de,hl		;a1e4
	add hl,hl		;a1e5
	add hl,hl		;a1e6
	add hl,hl		;a1e7
	ex af,af'		;a1e8
	ld a,h			;a1e9
	ex af,af'		;a1ea
	ld l,c			;a1eb
	ld h,b			;a1ec
	inc hl			;a1ed
	add a,(hl)		;a1ee
	ld c,a			;a1ef
	inc hl			;a1f0
	ex af,af'		;a1f1
	add a,(hl)		;a1f2
	ld b,a			;a1f3
	ex af,af'		;a1f4
	inc hl			;a1f5
	inc hl			;a1f6
	inc hl			;a1f7
	ld a,(hl)		;a1f8
	or a			;a1f9
	jp z,08216h		;a1fa
	inc hl			;a1fd
	push hl			;a1fe
	ld de,08219h		;a1ff
	ld l,a			;a202
	ld h,000h		;a203
	add hl,hl		;a205
	add hl,hl		;a206
	add hl,de		;a207
	ld a,(hl)		;a208
	add a,c			;a209
	ld c,a			;a20a
	inc hl			;a20b
	ld a,b			;a20c
	ld b,(hl)		;a20d
	inc hl			;a20e
	add a,(hl)		;a20f
	ld e,a			;a210
	inc hl			;a211
	ld d,(hl)		;a212
	pop hl			;a213
	or a			;a214
	ret			;a215
	inc hl			;a216
	scf			;a217
	ret			;a218
	ex af,af'		;a219
	ld b,003h		;a21a
	ld a,(bc)		;a21c
	add hl,bc		;a21d
	inc b			;a21e
	ld b,006h		;a21f
	rlca			;a221
	ld (bc),a		;a222
	nop			;a223
	djnz la226h		;a224
la226h:
	djnz la228h		;a226
la228h:
	djnz la230h		;a228
	inc b			;a22a
	ld b,004h		;a22b
	nop			;a22d
	djnz la235h		;a22e
la230h:
	ld b,000h		;a230
	nop			;a232
	djnz $+18		;a233
la235h:
	ld (bc),a		;a235
	ld (bc),a		;a236
	ld c,00eh		;a237
	inc b			;a239
	inc b			;a23a
	inc c			;a23b
	inc c			;a23c
	nop			;a23d
	nop			;a23e
	nop			;a23f
	nop			;a240
	ld (bc),a		;a241
	ld c,000h		;a242
	djnz la246h		;a244
la246h:
	djnz la24fh		;a246
	ld (bc),a		;a248
	rlca			;a249
	ld (bc),a		;a24a
	nop			;a24b
	djnz la254h		;a24c
	inc b			;a24e
la24fh:
	nop			;a24f
	djnz la256h		;a250
	ex af,af'		;a252
	nop			;a253
la254h:
	djnz la256h		;a254
la256h:
	djnz $+9		;a256
	ld (bc),a		;a258
	nop			;a259
	djnz la262h		;a25a
	inc b			;a25c
	nop			;a25d
	djnz la264h		;a25e
	ex af,af'		;a260
	inc b			;a261
la262h:
	ex af,af'		;a262
	nop			;a263
la264h:
	djnz la268h		;a264
	inc c			;a266
	nop			;a267
la268h:
	djnz la26bh		;a268
	rrca			;a26a
la26bh:
	nop			;a26b
	djnz la26bh		;a26c
	ld hl,0ca40h		;a26e
	call 08280h		;a271
	ret			;a274
	ld iy,0cac0h		;a275
	call 08280h		;a279
	ld iy,0cae0h		;a27c
	ld ix,0d460h		;a280
	ld b,012h		;a284
	exx			;a286
	ld l,(iy+008h)		;a287
	dec l			;a28a
	ld h,(iy+013h)		;a28b
	ld e,(iy+00ah)		;a28e
	dec e			;a291
	ld a,(iy+014h)		;a292
	and 07fh		;a295
	ld d,a			;a297
	exx			;a298
la299h:
	push bc			;a299
	ld a,(ix+000h)		;a29a
	or a			;a29d
	jr z,la2d5h		;a29e
	bit 4,(ix+015h)		;a2a0
	jr z,la2d5h		;a2a4
	exx			;a2a6
	ld c,(ix+00ah)		;a2a7
	ld b,(ix+014h)		;a2aa
	res 7,b			;a2ad
	ld a,b			;a2af
	add a,d			;a2b0
	ld b,a			;a2b1
	ld a,e			;a2b2
	sub c			;a2b3
	add a,d			;a2b4
	cp b			;a2b5
	jr nc,la2d4h		;a2b6
	ex de,hl		;a2b8
	ld c,(ix+008h)		;a2b9
	ld b,(ix+013h)		;a2bc
	ld a,b			;a2bf
	add a,d			;a2c0
	ld b,a			;a2c1
	ld a,e			;a2c2
	sub c			;a2c3
	add a,d			;a2c4
	cp b			;a2c5
	ex de,hl		;a2c6
	jr nc,la2d4h		;a2c7
	push hl			;a2c9
	push de			;a2ca
	push ix			;a2cb
	call 080e9h		;a2cd
	pop ix			;a2d0
	pop de			;a2d2
	pop hl			;a2d3
la2d4h:
	exx			;a2d4
la2d5h:
	pop bc			;a2d5
	ld de,00020h		;a2d6
	add ix,de		;a2d9
	djnz la299h		;a2db
	ret			;a2dd
	call 082e5h		;a2de
	call 08320h		;a2e1
	ret			;a2e4
	ld hl,0d700h		;a2e5
	call 083bdh		;a2e8
	ld hl,0cc40h		;a2eb
	ld a,008h		;a2ee
	ld bc,00020h		;a2f0
	ld d,0d7h		;a2f3
la2f5h:
	ex af,af'		;a2f5
	ld a,(hl)		;a2f6
	or a			;a2f7
	jr z,la31ah		;a2f8
	set 3,l			;a2fa
	ld a,(hl)		;a2fc
	inc a			;a2fd
	jp m,08315h		;a2fe
	add a,a			;a301
	add a,a			;a302
	add a,a			;a303
	and 0f0h		;a304
	ld e,a			;a306
	set 1,l			;a307
	ld a,(hl)		;a309
	inc a			;a30a
	jp m,08313h		;a30b
	rrca			;a30e
	and 00fh		;a30f
	or e			;a311
	ld e,a			;a312
	res 1,l			;a313
	res 3,l			;a315
	ld a,001h		;a317
	ld (de),a		;a319
la31ah:
	add hl,bc		;a31a
	ex af,af'		;a31b
	dec a			;a31c
	jr nz,la2f5h		;a31d
	ret			;a31f
	ld hl,0ce80h		;a320
	ld b,014h		;a323
	ld d,0d7h		;a325
la327h:
	push bc			;a327
	ld a,(hl)		;a328
	cp 05fh			;a329
	jr z,la37eh		;a32b
	dec a			;a32d
	jp m,0837eh		;a32e
	ld bc,00015h		;a331
	add hl,bc		;a334
	ld a,(hl)		;a335
	and 0b0h		;a336
	xor 0b0h		;a338
	jr nz,la37eh		;a33a
	sbc hl,bc		;a33c
	set 3,l			;a33e
	ld a,(hl)		;a340
	add a,a			;a341
	add a,a			;a342
	add a,a			;a343
	and 0f0h		;a344
	ld e,a			;a346
	set 1,l			;a347
	ld a,(hl)		;a349
	rrca			;a34a
	and 00fh		;a34b
	or e			;a34d
	ld e,a			;a34e
	ld a,009h		;a34f
	add a,l			;a351
	ld l,a			;a352
	ld c,(hl)		;a353
	res 7,c			;a354
	inc hl			;a356
	ld b,(hl)		;a357
	res 7,b			;a358
	srl b			;a35a
	srl c			;a35c
la35eh:
	push bc			;a35e
	push de			;a35f
la360h:
	ld a,(de)		;a360
	inc e			;a361
	jr z,la373h		;a362
	or a			;a364
	jr nz,la38ah		;a365
	dec b			;a367
	jr z,la373h		;a368
	ld a,(de)		;a36a
	inc e			;a36b
	jr z,la373h		;a36c
	or a			;a36e
	jr nz,la38ah		;a36f
	djnz la360h		;a371
la373h:
	pop de			;a373
	ld a,e			;a374
	add a,010h		;a375
	ld e,a			;a377
	pop bc			;a378
	jr c,la37eh		;a379
	dec c			;a37b
	jr nz,la35eh		;a37c
la37eh:
	ld a,l			;a37e
	and 0e0h		;a37f
	ld l,a			;a381
	ld bc,00040h		;a382
	add hl,bc		;a385
la386h:
	pop bc			;a386
	djnz la327h		;a387
	ret			;a389
la38ah:
	pop bc			;a38a
	pop bc			;a38b
	push hl			;a38c
	push de			;a38d
	call 08395h		;a38e
	pop de			;a391
	pop hl			;a392
	jr la37eh		;a393
	ld a,l			;a395
	and 0e0h		;a396
	ld l,a			;a398
	push hl			;a399
	pop iy			;a39a
	ld hl,0cc40h		;a39c
la39fh:
	ld b,008h		;a39f
la3a1h:
	push hl			;a3a1
	push bc			;a3a2
	ld a,(hl)		;a3a3
	or a			;a3a4
	jr z,la3b4h		;a3a5
	ld de,00015h		;a3a7
	add hl,de		;a3aa
	call 080a5h		;a3ab
	call 080d0h		;a3ae
	call c,080e2h		;a3b1
la3b4h:
	pop bc			;a3b4
	pop hl			;a3b5
	ld de,00020h		;a3b6
	add hl,de		;a3b9
	djnz la3a1h		;a3ba
	ret			;a3bc
	xor a			;a3bd
	ld l,a			;a3be
	ld (hl),a		;a3bf
	inc l			;a3c0
	ld (hl),a		;a3c1
	inc l			;a3c2
	ld (hl),a		;a3c3
	inc l			;a3c4
	ld (hl),a		;a3c5
	inc l			;a3c6
	ld (hl),a		;a3c7
	inc l			;a3c8
	ld (hl),a		;a3c9
	inc l			;a3ca
	ld (hl),a		;a3cb
	inc l			;a3cc
	ld (hl),a		;a3cd
	inc l			;a3ce
	jp nz,083bfh		;a3cf
	ret			;a3d2
	rst 38h			;a3d3
	rst 38h			;a3d4
	rst 38h			;a3d5
	rst 38h			;a3d6
	rst 38h			;a3d7
	rst 38h			;a3d8
	rst 38h			;a3d9
	rst 38h			;a3da
	rst 38h			;a3db
	rst 38h			;a3dc
	rst 38h			;a3dd
	rst 38h			;a3de
	rst 38h			;a3df
	rst 38h			;a3e0
	rst 38h			;a3e1
	rst 38h			;a3e2
	rst 38h			;a3e3
	rst 38h			;a3e4
	rst 38h			;a3e5
	rst 38h			;a3e6
	rst 38h			;a3e7
	rst 38h			;a3e8
	rst 38h			;a3e9
	rst 38h			;a3ea
	rst 38h			;a3eb
	rst 38h			;a3ec
	rst 38h			;a3ed
	rst 38h			;a3ee
	rst 38h			;a3ef
	rst 38h			;a3f0
	rst 38h			;a3f1
	rst 38h			;a3f2
	rst 38h			;a3f3
	rst 38h			;a3f4
	rst 38h			;a3f5
	rst 38h			;a3f6
	rst 38h			;a3f7
	rst 38h			;a3f8
	rst 38h			;a3f9
	rst 38h			;a3fa
	rst 38h			;a3fb
	rst 38h			;a3fc
	rst 38h			;a3fd
	rst 38h			;a3fe
	rst 38h			;a3ff
	jr nc,la386h		;a400
	dec (hl)		;a402
	add a,h			;a403
	add hl,sp		;a404
	add a,h			;a405
	add hl,sp		;a406
	add a,h			;a407
	ld b,b			;a408
	add a,h			;a409
	ld c,b			;a40a
	add a,h			;a40b
	ld c,l			;a40c
	add a,h			;a40d
	ld c,l			;a40e
	add a,h			;a40f
	ld d,d			;a410
	add a,h			;a411
	ld d,(hl)		;a412
	add a,h			;a413
	ld e,e			;a414
	add a,h			;a415
	ld h,e			;a416
	add a,h			;a417
	ld l,d			;a418
	add a,h			;a419
	ld (hl),d		;a41a
	add a,h			;a41b
	ld (hl),h		;a41c
	add a,h			;a41d
	ld a,d			;a41e
	add a,h			;a41f
	ld a,(hl)		;a420
	add a,h			;a421
	add a,d			;a422
	add a,h			;a423
	add a,h			;a424
	add a,h			;a425
	ld (hl),d		;a426
	add a,h			;a427
	add a,(hl)		;a428
	add a,h			;a429
	adc a,d			;a42a
	add a,h			;a42b
	sub b			;a42c
	add a,h			;a42d
	sub e			;a42e
	add a,h			;a42f
	nop			;a430
	ld (bc),a		;a431
	ld bc,0ff03h		;a432
	inc bc			;a435
	nop			;a436
	inc bc			;a437
	rst 38h			;a438
	ld (bc),a		;a439
	nop			;a43a
	nop			;a43b
	inc bc			;a43c
	inc bc			;a43d
	ld bc,002ffh		;a43e
	nop			;a441
	ld (bc),a		;a442
	ld bc,00003h		;a443
	inc bc			;a446
	rst 38h			;a447
	ld (bc),a		;a448
	ld (bc),a		;a449
	nop			;a44a
	ld (bc),a		;a44b
	rst 38h			;a44c
	inc bc			;a44d
	ld bc,00301h		;a44e
	rst 38h			;a451
	ld bc,00003h		;a452
	rst 38h			;a455
	nop			;a456
	inc bc			;a457
	nop			;a458
	ld (bc),a		;a459
	rst 38h			;a45a
	ld (bc),a		;a45b
	nop			;a45c
	ld (bc),a		;a45d
	ld bc,00102h		;a45e
	ld (bc),a		;a461
	rst 38h			;a462
	ld (bc),a		;a463
	ld bc,00003h		;a464
	nop			;a467
	ld (bc),a		;a468
	rst 38h			;a469
	nop			;a46a
	ld (bc),a		;a46b
	nop			;a46c
	inc bc			;a46d
la46eh:
	inc bc			;a46e
	ld bc,0ff02h		;a46f
	ld bc,003ffh		;a472
	ld bc,00002h		;a475
	ld (bc),a		;a478
	rst 38h			;a479
	ld bc,00103h		;a47a
	rst 38h			;a47d
	inc bc			;a47e
	ld bc,0ff03h		;a47f
	ld (bc),a		;a482
	rst 38h			;a483
	inc bc			;a484
	rst 38h			;a485
	inc bc			;a486
	nop			;a487
	ld (bc),a		;a488
	rst 38h			;a489
	ld (bc),a		;a48a
	ld (bc),a		;a48b
	nop			;a48c
	nop			;a48d
	ld (bc),a		;a48e
	rst 38h			;a48f
	nop			;a490
	ld (bc),a		;a491
	rst 38h			;a492
	nop			;a493
	inc bc			;a494
	rst 38h			;a495
	push bc			;a496
	xor c			;a497
	exx			;a498
	xor c			;a499
	pop hl			;a49a
	xor c			;a49b
	ex (sp),hl		;a49c
	xor c			;a49d
	rlca			;a49e
	xor d			;a49f
	rlca			;a4a0
	xor d			;a4a1
	rlca			;a4a2
	xor d			;a4a3
	add hl,bc		;a4a4
	xor d			;a4a5
	add hl,de		;a4a6
	xor d			;a4a7
	dec de			;a4a8
	xor d			;a4a9
	dec sp			;a4aa
	xor d			;a4ab
	dec sp			;a4ac
	xor d			;a4ad
	dec sp			;a4ae
la4afh:
	xor d			;a4af
	ld b,c			;a4b0
	xor d			;a4b1
	ld b,c			;a4b2
	xor d			;a4b3
	ld (028ach),hl		;a4b4
	xor h			;a4b7
	ld l,0ach		;a4b8
	ld (036ach),a		;a4ba
	xor h			;a4bd
	ld (hl),0ach		;a4be
	jr c,la46eh		;a4c0
	ld a,(03cach)		;a4c2
	xor h			;a4c5
	ld b,b			;a4c6
	xor h			;a4c7
	ld c,d			;a4c8
	xor h			;a4c9
	inc (hl)		;a4ca
	xor a			;a4cb
	ld (hl),0afh		;a4cc
	ld (hl),0afh		;a4ce
	ld l,l			;a4d0
	xor l			;a4d1
	ld l,a			;a4d2
	xor l			;a4d3
	ld a,c			;a4d4
	xor l			;a4d5
	ld a,c			;a4d6
	xor l			;a4d7
	add a,c			;a4d8
	xor l			;a4d9
	add a,c			;a4da
	xor l			;a4db
	add a,e			;a4dc
	xor l			;a4dd
	add a,e			;a4de
	xor l			;a4df
	add a,a			;a4e0
	xor l			;a4e1
	ld c,d			;a4e2
	xor (hl)		;a4e3
	ld c,(hl)		;a4e4
	xor (hl)		;a4e5
	ld c,(hl)		;a4e6
	xor (hl)		;a4e7
	ld c,(hl)		;a4e8
	xor (hl)		;a4e9
	ld d,b			;a4ea
	xor (hl)		;a4eb
	ld d,b			;a4ec
	xor (hl)		;a4ed
	ld d,d			;a4ee
	xor (hl)		;a4ef
	ld d,(hl)		;a4f0
	xor (hl)		;a4f1
	ld d,(hl)		;a4f2
	xor (hl)		;a4f3
	ld e,b			;a4f4
	xor (hl)		;a4f5
	ld e,d			;a4f6
	xor (hl)		;a4f7
	inc a			;a4f8
	xor a			;a4f9
	inc a			;a4fa
	xor a			;a4fb
	ld a,0afh		;a4fc
	jr c,la4afh		;a4fe
	ld a,0afh		;a500
	ld l,l			;a502
	xor a			;a503
	ld (hl),l		;a504
	xor a			;a505
	ld (hl),l		;a506
	xor a			;a507
	ld (hl),l		;a508
	xor a			;a509
	ld (hl),l		;a50a
	xor a			;a50b
	add a,l			;a50c
	xor a			;a50d
	add a,l			;a50e
	xor a			;a50f
	add a,l			;a510
	xor a			;a511
	add a,l			;a512
	xor a			;a513
	add hl,bc		;a514
	or b			;a515
	ld de,011b0h		;a516
	or b			;a519
	inc de			;a51a
	or b			;a51b
	xor e			;a51c
	or b			;a51d
	xor a			;a51e
	or b			;a51f
	or c			;a520
	or b			;a521
	or c			;a522
	or b			;a523
	or c			;a524
	or b			;a525
	cp c			;a526
	or b			;a527
	cp l			;a528
	or b			;a529
	sbc a,e			;a52a
	or c			;a52b
	sbc a,l			;a52c
	or c			;a52d
	xor l			;a52e
	or c			;a52f
	sbc a,l			;a530
	or c			;a531
	or c			;a532
	or c			;a533
	or c			;a534
	or c			;a535
	and b			;a536
	or d			;a537
	and b			;a538
	or d			;a539
	and b			;a53a
	or d			;a53b
	and b			;a53c
	or d			;a53d
	adc a,c			;a53e
	xor l			;a53f
	and b			;a540
	or d			;a541
	and b			;a542
	or d			;a543
	and d			;a544
	or d			;a545
	and b			;a546
	or d			;a547
	and b			;a548
	or d			;a549
	and b			;a54a
	or d			;a54b
	ccf			;a54c
	or b			;a54d
	and b			;a54e
	or d			;a54f
	and (hl)		;a550
	or d			;a551
	and b			;a552
	or d			;a553
	xor h			;a554
	or d			;a555
	or b			;a556
	or d			;a557
	add a,0b2h		;a558
	adc a,0b2h		;a55a
	ld e,(hl)		;a55c
	xor (hl)		;a55d
	adc a,0b2h		;a55e
	or h			;a560
	or d			;a561
	or (hl)			;a562
	or d			;a563
	adc a,a			;a564
	xor l			;a565
	and b			;a566
	or d			;a567
	and b			;a568
	or d			;a569
	and b			;a56a
	or d			;a56b
	and b			;a56c
	or d			;a56d
	and b			;a56e
	or d			;a56f
	call c,0e2b2h		;a570
	or d			;a573
	sub 0b2h		;a574
	and b			;a576
	or d			;a577
	and b			;a578
	or d			;a579
	and b			;a57a
	or d			;a57b
	ret c			;a57c
	or d			;a57d
	jp c,0a0b2h		;a57e
	or d			;a581
	and b			;a582
	or d			;a583
	or l			;a584
	or c			;a585
	or l			;a586
	or c			;a587
	and b			;a588
	or d			;a589
	and b			;a58a
	or d			;a58b
	pop bc			;a58c
	or b			;a58d
	and b			;a58e
	or d			;a58f
	and b			;a590
	or d			;a591
	and b			;a592
	or d			;a593
	and b			;a594
	or d			;a595
	call po,0e487h		;a596
	add a,a			;a599
	call po,0f687h		;a59a
	add a,a			;a59d
	or 087h			;a59e
	or 087h			;a5a0
	or 087h			;a5a2
	or 087h			;a5a4
	or 087h			;a5a6
	or 087h			;a5a8
	or 087h			;a5aa
	or 087h			;a5ac
	or 087h			;a5ae
	rst 38h			;a5b0
	sbc a,e			;a5b1
	or 087h			;a5b2
	ld a,088h		;a5b4
	ld a,088h		;a5b6
	ld a,088h		;a5b8
	ld a,088h		;a5ba
	ld a,088h		;a5bc
	ld e,h			;a5be
	adc a,b			;a5bf
	ld e,h			;a5c0
	adc a,b			;a5c1
	ld e,h			;a5c2
	adc a,b			;a5c3
	ld e,h			;a5c4
	adc a,b			;a5c5
	ld e,h			;a5c6
	adc a,b			;a5c7
	ld e,h			;a5c8
	adc a,b			;a5c9
	and 095h		;a5ca
	and 095h		;a5cc
	ld (hl),d		;a5ce
	adc a,d			;a5cf
	ld (hl),d		;a5d0
	adc a,d			;a5d1
	ld (hl),d		;a5d2
	adc a,d			;a5d3
	ld (hl),h		;a5d4
	adc a,d			;a5d5
	add a,h			;a5d6
	adc a,d			;a5d7
	add a,h			;a5d8
	adc a,d			;a5d9
	adc a,b			;a5da
	adc a,d			;a5db
	adc a,b			;a5dc
	adc a,d			;a5dd
	cp b			;a5de
	adc a,d			;a5df
	cp b			;a5e0
	adc a,d			;a5e1
	or c			;a5e2
	adc a,a			;a5e3
	or c			;a5e4
	adc a,a			;a5e5
	or a			;a5e6
	adc a,a			;a5e7
	rst 0			;a5e8
	adc a,a			;a5e9
	rst 0			;a5ea
	adc a,a			;a5eb
	res 1,a			;a5ec
	res 1,a			;a5ee
	res 1,a			;a5f0
	out (08fh),a		;a5f2
	out (08fh),a		;a5f4
	out (08fh),a		;a5f6
	jp pe,0fa95h		;a5f8
	sub l			;a5fb
	jp m,0fa95h		;a5fc
	sub l			;a5ff
	jp m,07195h		;a600
	sub (hl)		;a603
	ld (hl),c		;a604
	sub (hl)		;a605
	ld a,e			;a606
	sub (hl)		;a607
	ld a,a			;a608
	sub (hl)		;a609
	ld a,a			;a60a
	sub (hl)		;a60b
	sbc a,c			;a60c
	sub (hl)		;a60d
	jp (hl)			;a60e
	adc a,a			;a60f
	xor l			;a610
	sub (hl)		;a611
	xor l			;a612
	sub (hl)		;a613
	rst 10h			;a614
	sbc a,d			;a615
	rst 10h			;a616
	sbc a,d			;a617
	rst 28h			;a618
	sbc a,d			;a619
	rst 28h			;a61a
	sbc a,d			;a61b
	inc de			;a61c
	sbc a,h			;a61d
	inc de			;a61e
	sbc a,h			;a61f
	inc de			;a620
	sbc a,h			;a621
	ld e,a			;a622
	and (hl)		;a623
	inc de			;a624
	sbc a,h			;a625
	add hl,de		;a626
	sbc a,h			;a627
	add hl,de		;a628
	sbc a,h			;a629
	or e			;a62a
	sbc a,(hl)		;a62b
	or e			;a62c
	sbc a,(hl)		;a62d
	or e			;a62e
	sbc a,(hl)		;a62f
	or e			;a630
	sbc a,(hl)		;a631
	or e			;a632
	sbc a,(hl)		;a633
	or a			;a634
	sbc a,(hl)		;a635
	dec hl			;a636
	and (hl)		;a637
	dec hl			;a638
	and (hl)		;a639
	dec hl			;a63a
	and (hl)		;a63b
	dec hl			;a63c
	and (hl)		;a63d
	cp h			;a63e
	adc a,d			;a63f
	ret nc			;a640
	adc a,d			;a641
	dec hl			;a642
	and (hl)		;a643
	dec hl			;a644
	and (hl)		;a645
	call c,0138ah		;a646
	sbc a,a			;a649
	dec hl			;a64a
	and (hl)		;a64b
	dec hl			;a64c
	and (hl)		;a64d
	dec hl			;a64e
	and (hl)		;a64f
	dec hl			;a650
	and (hl)		;a651
	dec hl			;a652
	and (hl)		;a653
	dec hl			;a654
	and (hl)		;a655
	dec hl			;a656
	and (hl)		;a657
	dec hl			;a658
	and (hl)		;a659
	dec hl			;a65a
	and (hl)		;a65b
	out (08fh),a		;a65c
	dec hl			;a65e
	and (hl)		;a65f
	dec hl			;a660
	and (hl)		;a661
	dec hl			;a662
	and (hl)		;a663
	dec hl			;a664
	and (hl)		;a665
	dec hl			;a666
	and (hl)		;a667
	scf			;a668
	and (hl)		;a669
	ld b,c			;a66a
	and (hl)		;a66b
	dec hl			;a66c
	and (hl)		;a66d
	dec hl			;a66e
	and (hl)		;a66f
	dec hl			;a670
	and (hl)		;a671
	dec hl			;a672
	and (hl)		;a673
	dec hl			;a674
	and (hl)		;a675
	call m,02b95h		;a676
	and (hl)		;a679
	add hl,de		;a67a
	sbc a,h			;a67b
	dec hl			;a67c
	and (hl)		;a67d
	dec hl			;a67e
	and (hl)		;a67f
	defb 0ddh,09bh,0ddh ;illegal sequence	;a680
	sbc a,e			;a683
	cp e			;a684
	sbc a,(hl)		;a685
	ld bc,la39fh		;a686
	sub (hl)		;a689
	add hl,hl		;a68a
	sbc a,h			;a68b
	dec hl			;a68c
	and (hl)		;a68d
	dec hl			;a68e
	and (hl)		;a68f
	dec hl			;a690
	and (hl)		;a691
	dec hl			;a692
	and (hl)		;a693
la694h:
	dec hl			;a694
	and (hl)		;a695
	rst 38h			;a696
	rst 38h			;a697
	rst 38h			;a698
	rst 38h			;a699
	rst 38h			;a69a
	rst 38h			;a69b
	rst 38h			;a69c
	rst 38h			;a69d
	rst 38h			;a69e
	rst 38h			;a69f
	rst 38h			;a6a0
	rst 38h			;a6a1
	rst 38h			;a6a2
	rst 38h			;a6a3
	rst 38h			;a6a4
	rst 38h			;a6a5
	rst 38h			;a6a6
	rst 38h			;a6a7
	rst 38h			;a6a8
	rst 38h			;a6a9
	rst 38h			;a6aa
	rst 38h			;a6ab
	rst 38h			;a6ac
	rst 38h			;a6ad
	rst 38h			;a6ae
	rst 38h			;a6af
	rst 38h			;a6b0
	rst 38h			;a6b1
la6b2h:
	rst 38h			;a6b2
	rst 38h			;a6b3
la6b4h:
	rst 38h			;a6b4
	rst 38h			;a6b5
	rst 38h			;a6b6
	rst 38h			;a6b7
	rst 38h			;a6b8
	rst 38h			;a6b9
	rst 38h			;a6ba
	rst 38h			;a6bb
	rst 38h			;a6bc
	rst 38h			;a6bd
	rst 38h			;a6be
	rst 38h			;a6bf
	call po,0f486h		;a6c0
	add a,(hl)		;a6c3
	inc b			;a6c4
	add a,a			;a6c5
	inc d			;a6c6
	add a,a			;a6c7
	inc h			;a6c8
	add a,a			;a6c9
	inc (hl)		;a6ca
	add a,a			;a6cb
	ld b,h			;a6cc
	add a,a			;a6cd
	ld b,h			;a6ce
	add a,a			;a6cf
	ld d,h			;a6d0
	add a,a			;a6d1
	ld h,h			;a6d2
	add a,a			;a6d3
	ld (hl),h		;a6d4
	add a,a			;a6d5
la6d6h:
	add a,h			;a6d6
	add a,a			;a6d7
	sub h			;a6d8
	add a,a			;a6d9
	and h			;a6da
	add a,a			;a6db
	or h			;a6dc
	add a,a			;a6dd
	call nz,0c487h		;a6de
	add a,a			;a6e1
	call nc,00387h		;a6e2
	ld de,02214h		;a6e5
	dec h			;a6e8
	inc sp			;a6e9
	ld b,a			;a6ea
	ld b,l			;a6eb
	ld (hl),c		;a6ec
	sub e			;a6ed
	ld (hl),e		;a6ee
	or l			;a6ef
	jr nc,la6b2h		;a6f0
	jr nc,la6b4h		;a6f2
	ld sp,04211h		;a6f4
	ld (03353h),hl		;a6f7
	djnz la73eh		;a6fa
	jr nz,$+85		;a6fc
	jr nc,la694h		;a6fe
la700h:
	ld d,b			;a700
	or b			;a701
	inc sp			;a702
	jp 01202h		;a703
	inc bc			;a706
	inc hl			;a707
	inc b			;a708
	inc (hl)		;a709
	dec b			;a70a
	ld b,l			;a70b
	ld d,d			;a70c
	ld d,h			;a70d
	ld b,b			;a70e
	sub b			;a70f
	ld b,c			;a710
	or e			;a711
	jr nc,la6d6h		;a712
	ld bc,00212h		;a714
	inc hl			;a717
	inc bc			;a718
	inc (hl)		;a719
	inc b			;a71a
	ld b,l			;a71b
	ld h,b			;a71c
	ld d,h			;a71d
	ld b,b			;a71e
	sub d			;a71f
	ld d,b			;a720
	or e			;a721
	inc b			;a722
	ret nz			;a723
	ld h,(hl)		;a724
	ld d,010h		;a725
	ld hl,03220h		;a727
	ld sp,04243h		;a72a
	ld d,h			;a72d
	ld d,b			;a72e
	sub b			;a72f
la730h:
	ld b,b			;a730
	or b			;a731
la732h:
	ld h,b			;a732
	ret nz			;a733
la734h:
	dec d			;a734
	ld (de),a		;a735
	ld (hl),024h		;a736
	ld d,a			;a738
	ld (hl),002h		;a739
	ld b,b			;a73b
	inc de			;a73c
	ld d,b			;a73d
la73eh:
	inc b			;a73e
	sub c			;a73f
	inc b			;a740
	sub c			;a741
	inc b			;a742
	sub c			;a743
	ld bc,00112h		;a744
	inc hl			;a747
	ld (de),a		;a748
	inc (hl)		;a749
	inc hl			;a74a
	ld b,l			;a74b
	jr nc,la700h		;a74c
	ld b,b			;a74e
	jp 0c340h		;a74f
la752h:
	ld b,b			;a752
	jp 00114h		;a753
la756h:
	jr nc,$+18		;a756
	ld d,b			;a758
	ld hl,03470h		;a759
	dec h			;a75c
	ld b,d			;a75d
	ld (04752h),hl		;a75e
	sub h			;a761
	ld b,a			;a762
	sub h			;a763
	jr nc,$+18		;a764
	ld b,b			;a766
	ld hl,03350h		;a767
	ld h,b			;a76a
	ld b,h			;a76b
	ld (hl),c		;a76c
	sub e			;a76d
	ld (hl),e		;a76e
	or l			;a76f
	jr nc,la732h		;a770
	jr nc,la734h		;a772
	ld sp,04211h		;a774
	ld (03353h),hl		;a777
	ld b,b			;a77a
	ld b,c			;a77b
	ld d,b			;a77c
	ld d,e			;a77d
	ld h,b			;a77e
	sub h			;a77f
la780h:
	ld d,b			;a780
	or b			;a781
	inc sp			;a782
	jp 01130h		;a783
	ld b,b			;a786
	ld (03350h),hl		;a787
	ld h,b			;a78a
	ld b,h			;a78b
	ld d,d			;a78c
	ld d,h			;a78d
	ld b,b			;a78e
	sub b			;a78f
	ld b,c			;a790
	or e			;a791
	jr nc,la756h		;a792
	jr nc,$+18		;a794
	ld b,b			;a796
	ld hl,03350h		;a797
	ld h,b			;a79a
	ld b,h			;a79b
	ld h,b			;a79c
	ld d,b			;a79d
	jr nz,la730h		;a79e
	ld b,b			;a7a0
	or b			;a7a1
	inc b			;a7a2
	ret nz			;a7a3
	ld h,l			;a7a4
	ld d,030h		;a7a5
	ld hl,03140h		;a7a7
	ld h,c			;a7aa
	ld b,h			;a7ab
	ld (hl),b		;a7ac
	ld d,(hl)		;a7ad
	ld d,b			;a7ae
	sub b			;a7af
	ld b,b			;a7b0
	or b			;a7b1
	ld h,b			;a7b2
	ret nz			;a7b3
	ld b,b			;a7b4
	ld de,02350h		;a7b5
	ld h,b			;a7b8
	inc (hl)		;a7b9
	ld (bc),a		;a7ba
	ld b,b			;a7bb
	inc de			;a7bc
	ld d,b			;a7bd
	jr nz,$-110		;a7be
	jr nz,la752h		;a7c0
	jr nz,$-110		;a7c2
	ld bc,00112h		;a7c4
	inc hl			;a7c7
	ld (de),a		;a7c8
	inc (hl)		;a7c9
	inc hl			;a7ca
	ld b,l			;a7cb
	jr nc,la780h		;a7cc
	ld b,b			;a7ce
	jp 0c340h		;a7cf
	ld b,b			;a7d2
	jp 00040h		;a7d3
	jr nc,la7e8h		;a7d6
	ld d,b			;a7d8
	ld hl,03470h		;a7d9
	ld (hl),b		;a7dc
	ld b,b			;a7dd
	ld (07052h),hl		;a7de
	sub h			;a7e1
	ld (hl),b		;a7e2
	sub h			;a7e3
	or 087h			;a7e4
	cp 087h			;a7e6
la7e8h:
	ld b,088h		;a7e8
	ld c,088h		;a7ea
	ld d,088h		;a7ec
	ld e,088h		;a7ee
	ld h,088h		;a7f0
	ld l,088h		;a7f2
	ld (hl),088h		;a7f4
	nop			;a7f6
	nop			;a7f7
	ld (bc),a		;a7f8
	ld (bc),a		;a7f9
	adc a,0cfh		;a7fa
	ret nc			;a7fc
	pop de			;a7fd
	nop			;a7fe
	nop			;a7ff
	ld (bc),a		;a800
	ld (bc),a		;a801
	jp nc,0d4d3h		;a802
	push de			;a805
	nop			;a806
	nop			;a807
	ld (bc),a		;a808
	ld (bc),a		;a809
	sub 0d7h		;a80a
	ret c			;a80c
	exx			;a80d
	nop			;a80e
	nop			;a80f
	ld (bc),a		;a810
	ld (bc),a		;a811
	jp c,0dcdbh		;a812
	defb 0ddh,000h,000h ;illegal sequence	;a815
	ld (bc),a		;a818
	ld (bc),a		;a819
	sbc a,0dfh		;a81a
	ret po			;a81c
	pop hl			;a81d
	nop			;a81e
	nop			;a81f
	ld (bc),a		;a820
	ld (bc),a		;a821
	jp po,0e4e3h		;a822
	push hl			;a825
	nop			;a826
	nop			;a827
	ld (bc),a		;a828
	ld (bc),a		;a829
	and 0e7h		;a82a
	ret pe			;a82c
	jp (hl)			;a82d
	nop			;a82e
	nop			;a82f
	ld (bc),a		;a830
	ld (bc),a		;a831
	jp po,0e4e3h		;a832
	push hl			;a835
	nop			;a836
	nop			;a837
	ld (bc),a		;a838
	ld (bc),a		;a839
	and 0e7h		;a83a
	ret pe			;a83c
	jp (hl)			;a83d
	ld e,h			;a83e
	adc a,b			;a83f
	sub d			;a840
	adc a,b			;a841
	ret z			;a842
	adc a,b			;a843
	call pe,00888h		;a844
	adc a,c			;a847
	inc l			;a848
	adc a,c			;a849
	ld d,b			;a84a
	adc a,c			;a84b
	ld (hl),a		;a84c
	adc a,c			;a84d
	and e			;a84e
	adc a,c			;a84f
	rst 8			;a850
	adc a,c			;a851
	or 089h			;a852
	ld (de),a		;a854
	adc a,d			;a855
	ld (hl),08ah		;a856
	ld h,d			;a858
	adc a,d			;a859
	ld l,d			;a85a
	adc a,d			;a85b
	nop			;a85c
	nop			;a85d
	dec b			;a85e
	ld a,(bc)		;a85f
	nop			;a860
	ld bc,05002h		;a861
	ld d,c			;a864
	ld d,d			;a865
	ld d,e			;a866
	inc bc			;a867
	nop			;a868
	nop			;a869
	inc b			;a86a
	ld d,h			;a86b
	ld d,l			;a86c
	ld d,(hl)		;a86d
	ld d,a			;a86e
	ld e,b			;a86f
	ld e,c			;a870
	ld e,d			;a871
	dec b			;a872
	ld b,000h		;a873
	nop			;a875
	rlca			;a876
	ld e,e			;a877
	ld e,h			;a878
	ld e,l			;a879
	ld e,(hl)		;a87a
	ld e,a			;a87b
	ld h,b			;a87c
	ex af,af'		;a87d
	nop			;a87e
	nop			;a87f
	nop			;a880
	nop			;a881
	nop			;a882
	nop			;a883
	nop			;a884
	add hl,bc		;a885
	ld h,c			;a886
	ld a,(bc)		;a887
	nop			;a888
	nop			;a889
	nop			;a88a
	nop			;a88b
	nop			;a88c
	nop			;a88d
	nop			;a88e
	nop			;a88f
	dec bc			;a890
	ld h,d			;a891
	nop			;a892
	nop			;a893
	dec b			;a894
	ld a,(bc)		;a895
	nop			;a896
	nop			;a897
	nop			;a898
	nop			;a899
	nop			;a89a
	nop			;a89b
	nop			;a89c
	nop			;a89d
	dec bc			;a89e
	ld h,d			;a89f
	nop			;a8a0
	nop			;a8a1
	nop			;a8a2
	nop			;a8a3
	nop			;a8a4
	nop			;a8a5
	nop			;a8a6
	add hl,bc		;a8a7
	ld h,c			;a8a8
	ld a,(bc)		;a8a9
	nop			;a8aa
	nop			;a8ab
	rlca			;a8ac
	ld e,e			;a8ad
	ld e,h			;a8ae
	ld e,l			;a8af
	ld e,(hl)		;a8b0
	ld e,a			;a8b1
	ld h,b			;a8b2
	ex af,af'		;a8b3
	inc b			;a8b4
	ld d,h			;a8b5
	ld d,l			;a8b6
	ld d,(hl)		;a8b7
	ld d,a			;a8b8
	ld e,b			;a8b9
	ld e,c			;a8ba
	ld e,d			;a8bb
	dec b			;a8bc
	ld b,000h		;a8bd
	ld bc,05002h		;a8bf
	ld d,c			;a8c2
	ld d,d			;a8c3
	ld d,e			;a8c4
	inc bc			;a8c5
	nop			;a8c6
	nop			;a8c7
	nop			;a8c8
	nop			;a8c9
	ex af,af'		;a8ca
	inc b			;a8cb
	nop			;a8cc
	ld h,063h		;a8cd
	ld h,h			;a8cf
	nop			;a8d0
	daa			;a8d1
	ld h,l			;a8d2
	ld h,(hl)		;a8d3
	ld l,d			;a8d4
	ld l,e			;a8d5
	rst 0			;a8d6
	ld l,h			;a8d7
	ld (hl),c		;a8d8
	ld (hl),d		;a8d9
	ret z			;a8da
	ld (hl),e		;a8db
	ld (hl),c		;a8dc
	ld (hl),d		;a8dd
	ret z			;a8de
	ld (hl),e		;a8df
	ld l,d			;a8e0
	ld l,e			;a8e1
	rst 0			;a8e2
	ld l,h			;a8e3
	nop			;a8e4
	daa			;a8e5
	ld h,l			;a8e6
	ld h,(hl)		;a8e7
	nop			;a8e8
	ld h,063h		;a8e9
	ld h,h			;a8eb
	ld bc,006fch		;a8ec
	inc b			;a8ef
	sub (hl)		;a8f0
	rla			;a8f1
	jr la8f4h		;a8f2
la8f4h:
	nop			;a8f4
	nop			;a8f5
	add hl,de		;a8f6
	sub a			;a8f7
	nop			;a8f8
	nop			;a8f9
	nop			;a8fa
	sbc a,b			;a8fb
	nop			;a8fc
	nop			;a8fd
	nop			;a8fe
	sbc a,b			;a8ff
	nop			;a900
	nop			;a901
	add hl,de		;a902
	sub a			;a903
	sub (hl)		;a904
	rla			;a905
	jr la908h		;a906
la908h:
	nop			;a908
	call m,00408h		;a909
	ld a,(de)		;a90c
	nop			;a90d
	nop			;a90e
	nop			;a90f
	dec de			;a910
	sbc a,c			;a911
	inc e			;a912
	nop			;a913
	nop			;a914
	nop			;a915
	dec e			;a916
	sbc a,d			;a917
	nop			;a918
	nop			;a919
	nop			;a91a
	ld e,000h		;a91b
	nop			;a91d
	nop			;a91e
	ld e,000h		;a91f
	nop			;a921
	dec e			;a922
	sbc a,d			;a923
	dec de			;a924
	sbc a,c			;a925
	inc e			;a926
	nop			;a927
	ld a,(de)		;a928
	nop			;a929
	nop			;a92a
	nop			;a92b
	nop			;a92c
	call m,00408h		;a92d
	sbc a,e			;a930
	jr la933h		;a931
la933h:
	nop			;a933
	nop			;a934
	jr nz,la958h		;a935
	ld (00000h),hl		;a937
	inc h			;a93a
	sbc a,h			;a93b
	nop			;a93c
	nop			;a93d
	inc hl			;a93e
	dec h			;a93f
	nop			;a940
	nop			;a941
	inc hl			;a942
	dec h			;a943
	nop			;a944
	nop			;a945
	inc h			;a946
	sbc a,h			;a947
	nop			;a948
	jr nz,la96ch		;a949
	ld (0189bh),hl		;a94b
	nop			;a94e
	nop			;a94f
	defb 0fdh,004h,007h ;illegal sequence	;a950
	dec b			;a953
	nop			;a954
	ld hl,(02bach)		;a955
la958h:
	inc l			;a958
	dec l			;a959
	ld l,0adh		;a95a
	cpl			;a95c
	nop			;a95d
	xor (hl)		;a95e
	nop			;a95f
	xor a			;a960
	nop			;a961
	nop			;a962
	xor c			;a963
	xor d			;a964
	sbc a,l			;a965
	sbc a,(hl)		;a966
	sbc a,a			;a967
	ld h,a			;a968
	ld l,b			;a969
	ld l,c			;a96a
	and b			;a96b
la96ch:
	and c			;a96c
	ld l,l			;a96d
	ld l,(hl)		;a96e
	ld l,a			;a96f
	ld (hl),b		;a970
	or c			;a971
	ld (hl),h		;a972
	ld (hl),l		;a973
	halt			;a974
	ld (hl),a		;a975
	ld a,b			;a976
	call m,00804h		;a977
	dec b			;a97a
	jr nc,la9aeh		;a97b
	nop			;a97d
	nop			;a97e
	nop			;a97f
	and d			;a980
	nop			;a981
	nop			;a982
	nop			;a983
	nop			;a984
	and e			;a985
	nop			;a986
	inc sp			;a987
	inc (hl)		;a988
	and (hl)		;a989
	and h			;a98a
	ld (lb0a7h),a		;a98b
	nop			;a98e
	xor c			;a98f
	and l			;a990
	xor b			;a991
	sbc a,(hl)		;a992
	sbc a,a			;a993
	ld h,a			;a994
	ld l,b			;a995
	ld l,c			;a996
	and b			;a997
	and c			;a998
	ld l,l			;a999
	ld l,(hl)		;a99a
	ld l,a			;a99b
	ld (hl),b		;a99c
	or c			;a99d
	ld (hl),h		;a99e
	ld (hl),l		;a99f
	halt			;a9a0
	ld (hl),a		;a9a1
	ld a,b			;a9a2
	inc b			;a9a3
	inc b			;a9a4
	ex af,af'		;a9a5
	dec b			;a9a6
	ld (hl),h		;a9a7
	ld (hl),l		;a9a8
	halt			;a9a9
	ld (hl),a		;a9aa
	ld a,b			;a9ab
	ld l,l			;a9ac
	ld l,(hl)		;a9ad
la9aeh:
	ld l,a			;a9ae
	ld (hl),b		;a9af
	or c			;a9b0
	ld h,a			;a9b1
	ld l,b			;a9b2
	ld l,c			;a9b3
	and b			;a9b4
	and c			;a9b5
	xor c			;a9b6
	xor d			;a9b7
	xor b			;a9b8
	sbc a,(hl)		;a9b9
	sbc a,a			;a9ba
	and h			;a9bb
	ld (lb0a7h),a		;a9bc
	nop			;a9bf
	and e			;a9c0
	nop			;a9c1
	inc sp			;a9c2
	inc (hl)		;a9c3
	and (hl)		;a9c4
	and d			;a9c5
	nop			;a9c6
	nop			;a9c7
	nop			;a9c8
	nop			;a9c9
	jr nc,la9fdh		;a9ca
	nop			;a9cc
	nop			;a9cd
	nop			;a9ce
	inc b			;a9cf
	inc b			;a9d0
	rlca			;a9d1
	dec b			;a9d2
	ld (hl),h		;a9d3
la9d4h:
	ld (hl),l		;a9d4
	halt			;a9d5
	ld (hl),a		;a9d6
	ld a,b			;a9d7
	ld l,l			;a9d8
	ld l,(hl)		;a9d9
	ld l,a			;a9da
	ld (hl),b		;a9db
	or c			;a9dc
	ld h,a			;a9dd
	ld l,b			;a9de
	ld l,c			;a9df
	and b			;a9e0
	and c			;a9e1
	xor c			;a9e2
	xor d			;a9e3
	sbc a,l			;a9e4
	sbc a,(hl)		;a9e5
	sbc a,a			;a9e6
	xor (hl)		;a9e7
la9e8h:
	nop			;a9e8
	xor a			;a9e9
	nop			;a9ea
	nop			;a9eb
	dec l			;a9ec
	ld l,0adh		;a9ed
	cpl			;a9ef
	nop			;a9f0
	nop			;a9f1
	ld hl,(02bach)		;a9f2
	inc l			;a9f5
	ld bc,00609h		;a9f6
	inc b			;a9f9
	dec c			;a9fa
	ld a,(hl)		;a9fb
	ld a,a			;a9fc
la9fdh:
	add a,b			;a9fd
	ld a,e			;a9fe
	add a,c			;a9ff
	add a,d			;aa00
	add a,e			;aa01
	ld a,c			;aa02
	ld a,d			;aa03
	or e			;aa04
	jr z,laa80h		;aa05
	ld a,d			;aa07
	or d			;aa08
	jr z,$+125		;aa09
	add a,c			;aa0b
	add a,d			;aa0c
	add a,e			;aa0d
	dec c			;aa0e
	ld a,(hl)		;aa0f
	ld a,a			;aa10
	add a,b			;aa11
	nop			;aa12
	add hl,bc		;aa13
	ex af,af'		;aa14
	inc b			;aa15
	nop			;aa16
	rrca			;aa17
	add a,h			;aa18
	add a,l			;aa19
	ld c,086h		;aa1a
	add a,a			;aa1c
	adc a,b			;aa1d
	ld a,h			;aa1e
	adc a,c			;aa1f
	adc a,d			;aa20
	adc a,e			;aa21
	ld a,c			;aa22
	ld a,d			;aa23
	or e			;aa24
	jr z,laaa0h		;aa25
	ld a,d			;aa27
	or d			;aa28
	jr z,laaa7h		;aa29
	adc a,c			;aa2b
	adc a,d			;aa2c
	adc a,e			;aa2d
	ld c,086h		;aa2e
	add a,a			;aa30
	adc a,b			;aa31
	nop			;aa32
	rrca			;aa33
	add a,h			;aa34
	add a,l			;aa35
	rst 38h			;aa36
	add hl,bc		;aa37
	ld a,(bc)		;aa38
	inc b			;aa39
	nop			;aa3a
	ld (de),a		;aa3b
	adc a,h			;aa3c
	inc de			;aa3d
	ld de,08e8dh		;aa3e
	adc a,a			;aa41
	djnz la9d4h		;aa42
	sub c			;aa44
	sub d			;aa45
	ld a,l			;aa46
	sub e			;aa47
	sub h			;aa48
	sub l			;aa49
	ld a,c			;aa4a
	ld a,d			;aa4b
	or e			;aa4c
	jr z,laac8h		;aa4d
laa4fh:
	ld a,d			;aa4f
	or d			;aa50
	jr z,laad0h		;aa51
	sub e			;aa53
	sub h			;aa54
	sub l			;aa55
	djnz la9e8h		;aa56
	sub c			;aa58
	sub d			;aa59
	ld de,08e8dh		;aa5a
	adc a,a			;aa5d
	nop			;aa5e
	ld (de),a		;aa5f
	adc a,h			;aa60
	inc de			;aa61
	ld (bc),a		;aa62
	ld (bc),a		;aa63
	inc b			;aa64
	ld bc,0cac9h		;aa65
	jp z,002c9h		;aa68
	ld (bc),a		;aa6b
	inc b			;aa6c
	ld bc,0cbabh		;aa6d
	res 5,e			;aa70
	ld b,l			;aa72
	adc a,l			;aa73
	ld e,l			;aa74
	adc a,l			;aa75
	ld h,l			;aa76
	adc a,l			;aa77
	ld l,l			;aa78
	adc a,l			;aa79
	ld (hl),l		;aa7a
	adc a,l			;aa7b
	ld e,l			;aa7c
	adc a,l			;aa7d
	ld e,l			;aa7e
	adc a,l			;aa7f
laa80h:
	ld e,l			;aa80
	adc a,l			;aa81
	ld e,l			;aa82
	adc a,l			;aa83
	ld hl,02d8dh		;aa84
	adc a,l			;aa87
	and c			;aa88
	adc a,l			;aa89
	or c			;aa8a
	adc a,l			;aa8b
	pop bc			;aa8c
	adc a,l			;aa8d
	pop de			;aa8e
	adc a,l			;aa8f
	pop hl			;aa90
	adc a,l			;aa91
	pop af			;aa92
	adc a,l			;aa93
	ld bc,0118eh		;aa94
	adc a,(hl)		;aa97
	ld hl,0438eh		;aa98
	adc a,(hl)		;aa9b
	ld h,l			;aa9c
	adc a,(hl)		;aa9d
	add a,a			;aa9e
	adc a,(hl)		;aa9f
laaa0h:
	xor c			;aaa0
	adc a,(hl)		;aaa1
	res 1,(hl)		;aaa2
	defb 0edh ;next byte illegal after ed	;aaa4
	adc a,(hl)		;aaa5
	rrca			;aaa6
laaa7h:
	adc a,a			;aaa7
	ld sp,0418fh		;aaa8
	adc a,a			;aaab
	ld d,c			;aaac
	adc a,a			;aaad
	ld h,c			;aaae
	adc a,a			;aaaf
	ld (hl),c		;aab0
	adc a,a			;aab1
	add a,c			;aab2
	adc a,a			;aab3
	sub c			;aab4
	adc a,a			;aab5
	and c			;aab6
	adc a,a			;aab7
	ld a,l			;aab8
	adc a,l			;aab9
	adc a,c			;aaba
	adc a,l			;aabb
	call c,0038ah		;aabc
	adc a,e			;aabf
	dec h			;aac0
	adc a,e			;aac1
	jr nc,laa4fh		;aac2
	ld b,d			;aac4
	adc a,e			;aac5
	ld e,e			;aac6
	adc a,e			;aac7
laac8h:
	ld (hl),h		;aac8
	adc a,e			;aac9
	ld a,(hl)		;aaca
	adc a,e			;aacb
	adc a,(hl)		;aacc
	adc a,e			;aacd
	and h			;aace
	adc a,e			;aacf
laad0h:
	ret nz			;aad0
	adc a,e			;aad1
	inc d			;aad2
	adc a,h			;aad3
	ld l,b			;aad4
	adc a,h			;aad5
	cp h			;aad6
	adc a,h			;aad7
	djnz $-113		;aad8
	inc e			;aada
	adc a,l			;aadb
	nop			;aadc
	nop			;aadd
	dec b			;aade
	rlca			;aadf
	nop			;aae0
	nop			;aae1
	nop			;aae2
	nop			;aae3
	nop			;aae4
	nop			;aae5
	nop			;aae6
	nop			;aae7
	nop			;aae8
	nop			;aae9
	nop			;aaea
	nop			;aaeb
	nop			;aaec
	nop			;aaed
	nop			;aaee
	nop			;aaef
	nop			;aaf0
	nop			;aaf1
	nop			;aaf2
	or h			;aaf3
	and a			;aaf4
	nop			;aaf5
	nop			;aaf6
	nop			;aaf7
	or a			;aaf8
	and (hl)		;aaf9
	sub e			;aafa
	sub h			;aafb
	nop			;aafc
	or a			;aafd
	and (hl)		;aafe
	sub e			;aaff
	sub h			;ab00
	sub l			;ab01
	sub (hl)		;ab02
	nop			;ab03
	nop			;ab04
	dec b			;ab05
	ld b,000h		;ab06
	nop			;ab08
	nop			;ab09
	inc de			;ab0a
	dec d			;ab0b
	nop			;ab0c
	nop			;ab0d
	nop			;ab0e
	cp b			;ab0f
	ld de,lb918h		;ab10
	xor b			;ab13
	xor c			;ab14
	xor c			;ab15
	xor d			;ab16
	xor e			;ab17
	nop			;ab18
	add a,(hl)		;ab19
	dec hl			;ab1a
	inc l			;ab1b
	sub d			;ab1c
	sbc a,e			;ab1d
	nop			;ab1e
	and b			;ab1f
	ld a,(de)		;ab20
	inc e			;ab21
	and l			;ab22
	sbc a,d			;ab23
	nop			;ab24
	nop			;ab25
	nop			;ab26
	ld bc,00007h		;ab27
	adc a,a			;ab2a
	add a,a			;ab2b
	sub a			;ab2c
sub_ab2dh:
	sbc a,a			;ab2d
	sbc a,a			;ab2e
	sbc a,a			;ab2f
	nop			;ab30
	nop			;ab31
	ld (bc),a		;ab32
	rlca			;ab33
	nop			;ab34
	adc a,a			;ab35
	add a,a			;ab36
	sub a			;ab37
	sbc a,a			;ab38
	sbc a,a			;ab39
	sbc a,a			;ab3a
	cp b			;ab3b
	ld de,lb918h		;ab3c
	sbc a,l			;ab3f
	sub c			;ab40
	nop			;ab41
	nop			;ab42
	nop			;ab43
	inc bc			;ab44
	rlca			;ab45
	nop			;ab46
	adc a,a			;ab47
	add a,a			;ab48
	sub a			;ab49
	sbc a,a			;ab4a
	sbc a,a			;ab4b
	sbc a,a			;ab4c
	cp b			;ab4d
	ld de,lb918h		;ab4e
	sbc a,l			;ab51
	sub c			;ab52
	nop			;ab53
	nop			;ab54
	ld (de),a		;ab55
	inc d			;ab56
	nop			;ab57
	nop			;ab58
	nop			;ab59
	nop			;ab5a
	nop			;ab5b
	nop			;ab5c
	inc bc			;ab5d
	rlca			;ab5e
	nop			;ab5f
	adc a,a			;ab60
	add a,a			;ab61
	sub a			;ab62
	sbc a,a			;ab63
	sbc a,a			;ab64
	sbc a,a			;ab65
	cp b			;ab66
	ld de,lb918h		;ab67
	sbc a,l			;ab6a
	sub c			;ab6b
	nop			;ab6c
	nop			;ab6d
	ld (de),a		;ab6e
	inc d			;ab6f
	nop			;ab70
	nop			;ab71
	nop			;ab72
	nop			;ab73
	nop			;ab74
	nop			;ab75
	ld bc,09006h		;ab76
	dec de			;ab79
	dec e			;ab7a
	sbc a,h			;ab7b
	sbc a,e			;ab7c
	nop			;ab7d
	nop			;ab7e
	nop			;ab7f
	ld (bc),a		;ab80
	ld b,090h		;ab81
	dec de			;ab83
	dec e			;ab84
	sbc a,h			;ab85
	sbc a,e			;ab86
	nop			;ab87
	sbc a,l			;ab88
	sub c			;ab89
	nop			;ab8a
	sbc a,(hl)		;ab8b
	xor e			;ab8c
	nop			;ab8d
	nop			;ab8e
	nop			;ab8f
	inc bc			;ab90
	ld b,090h		;ab91
	dec de			;ab93
	dec e			;ab94
	sbc a,h			;ab95
	sbc a,e			;ab96
	nop			;ab97
	sbc a,l			;ab98
	sub c			;ab99
	nop			;ab9a
	sbc a,(hl)		;ab9b
	xor e			;ab9c
	nop			;ab9d
	nop			;ab9e
	nop			;ab9f
	cp b			;aba0
	ld de,lb918h		;aba1
	nop			;aba4
	nop			;aba5
	inc b			;aba6
	ld b,090h		;aba7
	dec de			;aba9
	dec e			;abaa
	sbc a,h			;abab
	sbc a,e			;abac
	nop			;abad
	sbc a,l			;abae
	sub c			;abaf
	nop			;abb0
	sbc a,(hl)		;abb1
	xor e			;abb2
	nop			;abb3
	nop			;abb4
	nop			;abb5
	cp b			;abb6
	ld de,lb918h		;abb7
	nop			;abba
	nop			;abbb
	nop			;abbc
	ld (de),a		;abbd
	inc d			;abbe
	nop			;abbf
	nop			;abc0
	nop			;abc1
	ld a,(bc)		;abc2
	ex af,af'		;abc3
	nop			;abc4
	ld l,c			;abc5
	ld l,b			;abc6
	ld h,b			;abc7
	ld h,(hl)		;abc8
	ld l,e			;abc9
	nop			;abca
	nop			;abcb
	nop			;abcc
	ld h,c			;abcd
	ld h,d			;abce
	ld h,e			;abcf
	ld h,a			;abd0
	ld h,h			;abd1
	ld (hl),l		;abd2
	nop			;abd3
	nop			;abd4
	ld l,a			;abd5
	ld (hl),h		;abd6
	ld l,l			;abd7
	ld h,l			;abd8
	ld l,d			;abd9
	ld (hl),b		;abda
	nop			;abdb
	nop			;abdc
	halt			;abdd
	adc a,b			;abde
	add a,d			;abdf
	add a,e			;abe0
	ld a,a			;abe1
	ld a,c			;abe2
	nop			;abe3
	nop			;abe4
	xor h			;abe5
	adc a,a			;abe6
	ld bc,08e02h		;abe7
	or b			;abea
	nop			;abeb
	nop			;abec
	nop			;abed
	cp h			;abee
	inc hl			;abef
	inc h			;abf0
	cp l			;abf1
	nop			;abf2
	nop			;abf3
	nop			;abf4
	or h			;abf5
	adc a,l			;abf6
	add hl,bc		;abf7
	ld a,(bc)		;abf8
	sub b			;abf9
	cp b			;abfa
	nop			;abfb
	nop			;abfc
	ld a,b			;abfd
	ld a,l			;abfe
	add a,c			;abff
	add a,b			;ac00
	ld a,(hl)		;ac01
	ld a,h			;ac02
	nop			;ac03
	ld sp,07173h		;ac04
	ld l,(hl)		;ac07
	ld (hl),c		;ac08
	ld (hl),d		;ac09
	ld l,h			;ac0a
	ld (0657bh),a		;ac0b
	ld a,(03a3ah)		;ac0e
	ld a,(07c5bh)		;ac11
	nop			;ac14
	nop			;ac15
	ld a,(bc)		;ac16
	ex af,af'		;ac17
	nop			;ac18
	ld l,c			;ac19
	ld l,b			;ac1a
	ld h,b			;ac1b
	ld h,(hl)		;ac1c
	ld l,e			;ac1d
	nop			;ac1e
	nop			;ac1f
	nop			;ac20
	ld h,c			;ac21
	ld h,d			;ac22
	ld h,e			;ac23
	ld h,a			;ac24
	ld h,h			;ac25
	ld (hl),l		;ac26
	nop			;ac27
	nop			;ac28
	ld l,a			;ac29
	ld (hl),h		;ac2a
	ld l,l			;ac2b
	ld h,l			;ac2c
	ld l,d			;ac2d
	ld (hl),b		;ac2e
	nop			;ac2f
	nop			;ac30
	ld (hl),a		;ac31
	adc a,d			;ac32
	add a,h			;ac33
	add a,l			;ac34
	adc a,c			;ac35
	ld a,d			;ac36
	nop			;ac37
	nop			;ac38
	xor l			;ac39
	sub e			;ac3a
	inc bc			;ac3b
	inc b			;ac3c
	sub d			;ac3d
	or c			;ac3e
	nop			;ac3f
	nop			;ac40
	nop			;ac41
	cp h			;ac42
	inc hl			;ac43
	inc h			;ac44
	cp l			;ac45
	nop			;ac46
	nop			;ac47
	nop			;ac48
	or l			;ac49
	sub c			;ac4a
	dec bc			;ac4b
	inc c			;ac4c
	sub h			;ac4d
	cp c			;ac4e
	nop			;ac4f
	nop			;ac50
	halt			;ac51
	add a,b			;ac52
	add a,(hl)		;ac53
	add a,a			;ac54
	adc a,e			;ac55
	ld a,e			;ac56
	nop			;ac57
	ld sp,07173h		;ac58
	ld l,(hl)		;ac5b
	ld (hl),c		;ac5c
	ld (hl),d		;ac5d
	ld l,h			;ac5e
	ld (0657bh),a		;ac5f
	ld a,(03a3ah)		;ac62
	ld a,(07c5bh)		;ac65
	nop			;ac68
	nop			;ac69
	ld a,(bc)		;ac6a
	ex af,af'		;ac6b
	nop			;ac6c
	ld l,c			;ac6d
	ld l,b			;ac6e
	ld h,b			;ac6f
	ld h,(hl)		;ac70
	ld l,e			;ac71
	nop			;ac72
	nop			;ac73
	nop			;ac74
	ld h,c			;ac75
	ld h,d			;ac76
	ld h,e			;ac77
	ld h,a			;ac78
	ld h,h			;ac79
	ld (hl),l		;ac7a
	nop			;ac7b
	nop			;ac7c
	ld l,a			;ac7d
	ld (hl),h		;ac7e
	ld l,l			;ac7f
	ld h,l			;ac80
	ld l,d			;ac81
	ld (hl),b		;ac82
	nop			;ac83
	nop			;ac84
	halt			;ac85
	add a,b			;ac86
	add a,(hl)		;ac87
	add a,a			;ac88
	adc a,e			;ac89
	ld a,e			;ac8a
	nop			;ac8b
	nop			;ac8c
	xor (hl)		;ac8d
	sub a			;ac8e
	dec b			;ac8f
	ld b,096h		;ac90
lac92h:
	or d			;ac92
	nop			;ac93
	nop			;ac94
	nop			;ac95
	cp h			;ac96
	inc hl			;ac97
	inc h			;ac98
	cp l			;ac99
	nop			;ac9a
	nop			;ac9b
	nop			;ac9c
	or (hl)			;ac9d
	sub l			;ac9e
	dec c			;ac9f
	ld c,098h		;aca0
	cp d			;aca2
	nop			;aca3
	nop			;aca4
	ld (hl),a		;aca5
	adc a,d			;aca6
	add a,h			;aca7
	add a,l			;aca8
	adc a,c			;aca9
	ld a,d			;acaa
	nop			;acab
	ld sp,07173h		;acac
	ld l,(hl)		;acaf
	ld (hl),c		;acb0
	ld (hl),d		;acb1
	ld l,h			;acb2
	ld (0657bh),a		;acb3
	ld a,(03a3ah)		;acb6
	ld a,(07c5bh)		;acb9
	nop			;acbc
	nop			;acbd
	ld a,(bc)		;acbe
	ex af,af'		;acbf
	nop			;acc0
	ld l,c			;acc1
	ld l,b			;acc2
	ld h,b			;acc3
	ld h,(hl)		;acc4
	ld l,e			;acc5
	nop			;acc6
lacc7h:
	nop			;acc7
	nop			;acc8
	ld h,c			;acc9
	ld h,d			;acca
	ld h,e			;accb
	ld h,a			;accc
	ld h,h			;accd
	ld (hl),l		;acce
	nop			;accf
	nop			;acd0
	ld l,a			;acd1
	ld (hl),h		;acd2
lacd3h:
	ld l,l			;acd3
	ld h,l			;acd4
	ld l,d			;acd5
	ld (hl),b		;acd6
	nop			;acd7
	nop			;acd8
	ld a,b			;acd9
	ld a,l			;acda
	add a,c			;acdb
	add a,b			;acdc
	ld a,(hl)		;acdd
	ld a,h			;acde
	nop			;acdf
	nop			;ace0
	xor a			;ace1
	sbc a,e			;ace2
	rlca			;ace3
	ex af,af'		;ace4
	sbc a,d			;ace5
	or e			;ace6
	nop			;ace7
	nop			;ace8
	nop			;ace9
	cp h			;acea
	inc hl			;aceb
	inc h			;acec
	cp l			;aced
	nop			;acee
	nop			;acef
	nop			;acf0
	or a			;acf1
	sbc a,c			;acf2
	rrca			;acf3
	djnz lac92h		;acf4
	cp e			;acf6
	nop			;acf7
	nop			;acf8
	halt			;acf9
	adc a,b			;acfa
	add a,d			;acfb
	add a,e			;acfc
	ld a,a			;acfd
	ld a,c			;acfe
	nop			;acff
	ld sp,07173h		;ad00
	ld l,(hl)		;ad03
	ld (hl),c		;ad04
	ld (hl),d		;ad05
	ld l,h			;ad06
	ld (0657bh),a		;ad07
	ld a,(03a3ah)		;ad0a
	ld a,(07c5bh)		;ad0d
	nop			;ad10
	nop			;ad11
	ld bc,06408h		;ad12
	ld h,(hl)		;ad15
	add a,b			;ad16
	add a,b			;ad17
	add a,b			;ad18
	add a,b			;ad19
	ld e,h			;ad1a
	ld e,d			;ad1b
	nop			;ad1c
	nop			;ad1d
	ld bc,00001h		;ad1e
	nop			;ad21
	nop			;ad22
	ld (bc),a		;ad23
	inc b			;ad24
	ld d,020h		;ad25
	dec l			;ad27
	ld d,017h		;ad28
	ld hl,0178ah		;ad2a
	nop			;ad2d
	nop			;ad2e
	ld (bc),a		;ad2f
	inc b			;ad30
	ld l,024h		;ad31
	ld h,02eh		;ad33
	adc a,(hl)		;ad35
	cpl			;ad36
	jr nc,lacc7h		;ad37
	nop			;ad39
	nop			;ad3a
	ld (bc),a		;ad3b
	inc b			;ad3c
	or (hl)			;ad3d
	and c			;ad3e
	and d			;ad3f
	or (hl)			;ad40
	adc a,(hl)		;ad41
	cpl			;ad42
	jr nc,lacd3h		;ad43
	ld (bc),a		;ad45
	ld (bc),a		;ad46
	ld (bc),a		;ad47
	inc b			;ad48
	or d			;ad49
	ld e,022h		;ad4a
	xor a			;ad4c
	adc a,l			;ad4d
	rra			;ad4e
	inc hl			;ad4f
	and h			;ad50
	ld (bc),a		;ad51
	ld (bc),a		;ad52
	ld (bc),a		;ad53
	inc b			;ad54
	or e			;ad55
	or l			;ad56
	or c			;ad57
	xor a			;ad58
	adc a,l			;ad59
	adc a,e			;ad5a
	adc a,h			;ad5b
	and h			;ad5c
	nop			;ad5d
	nop			;ad5e
	ld (bc),a		;ad5f
	ld (bc),a		;ad60
	ld bc,00302h		;ad61
	inc b			;ad64
	nop			;ad65
	nop			;ad66
	ld (bc),a		;ad67
	ld (bc),a		;ad68
	dec b			;ad69
	ld b,007h		;ad6a
	ex af,af'		;ad6c
	nop			;ad6d
	nop			;ad6e
	ld (bc),a		;ad6f
	ld (bc),a		;ad70
	add hl,bc		;ad71
	ld a,(bc)		;ad72
	dec bc			;ad73
	inc c			;ad74
	nop			;ad75
	nop			;ad76
	ld (bc),a		;ad77
	ld (bc),a		;ad78
	dec c			;ad79
	ld c,00fh		;ad7a
	djnz lad7eh		;ad7c
lad7eh:
	nop			;ad7e
	ld (bc),a		;ad7f
	inc b			;ad80
	xor h			;ad81
	dec h			;ad82
	daa			;ad83
	xor l			;ad84
	sbc a,b			;ad85
	add hl,hl		;ad86
	ld hl,(00099h)		;ad87
	nop			;ad8a
	ld (bc),a		;ad8b
	inc b			;ad8c
	xor h			;ad8d
	jr z,lada9h		;ad8e
	xor l			;ad90
	sbc a,b			;ad91
	add hl,hl		;ad92
	ld hl,(00099h)		;ad93
	nop			;ad96
	ld (bc),a		;ad97
	inc b			;ad98
	xor (hl)		;ad99
	nop			;ad9a
	nop			;ad9b
	or b			;ad9c
	sbc a,b			;ad9d
	adc a,b			;ad9e
	adc a,c			;ad9f
	sbc a,c			;ada0
	nop			;ada1
	nop			;ada2
	inc b			;ada3
	inc bc			;ada4
	or h			;ada5
	ld l,b			;ada6
	ld (hl),d		;ada7
	or d			;ada8
lada9h:
	ld d,e			;ada9
	ld d,c			;adaa
	nop			;adab
	sbc a,c			;adac
	sbc a,h			;adad
	cp h			;adae
	jp nz,000a5h		;adaf
	nop			;adb2
	inc b			;adb3
	inc bc			;adb4
	or (hl)			;adb5
	ld l,b			;adb6
	ld (hl),d		;adb7
	cp b			;adb8
	ld l,c			;adb9
	ld l,l			;adba
	nop			;adbb
	xor e			;adbc
	sbc a,a			;adbd
	jp nz,08d8fh		;adbe
	nop			;adc1
	nop			;adc2
	inc b			;adc3
	inc bc			;adc4
	or h			;adc5
	ld l,b			;adc6
	ld (hl),d		;adc7
	or d			;adc8
	ld d,e			;adc9
	ld d,c			;adca
	nop			;adcb
	sbc a,d			;adcc
	sbc a,(hl)		;adcd
	cp e			;adce
	cp d			;adcf
	cp l			;add0
	nop			;add1
	nop			;add2
	inc b			;add3
	inc bc			;add4
	or (hl)			;add5
	ld l,b			;add6
	ld (hl),d		;add7
	cp b			;add8
	ld l,c			;add9
	ld e,h			;adda
	nop			;addb
	and a			;addc
	and c			;addd
	cp d			;adde
	cp l			;addf
	cp (hl)			;ade0
	nop			;ade1
	nop			;ade2
	inc b			;ade3
	inc bc			;ade4
	or h			;ade5
	ld l,b			;ade6
	ld (hl),d		;ade7
	or d			;ade8
	ld d,e			;ade9
	ld d,c			;adea
	nop			;adeb
	sbc a,c			;adec
	sbc a,h			;aded
	cp l			;adee
	cp (hl)			;adef
	and l			;adf0
	nop			;adf1
	nop			;adf2
	inc b			;adf3
	inc bc			;adf4
	or (hl)			;adf5
	ld l,b			;adf6
	ld (hl),d		;adf7
	cp b			;adf8
	ld l,c			;adf9
	ld l,l			;adfa
	nop			;adfb
	xor e			;adfc
	sbc a,a			;adfd
	cp (hl)			;adfe
	adc a,a			;adff
	adc a,l			;ae00
	nop			;ae01
	nop			;ae02
	inc b			;ae03
	inc bc			;ae04
	or h			;ae05
	ld l,b			;ae06
	ld (hl),d		;ae07
	or d			;ae08
	ld d,e			;ae09
	ld d,c			;ae0a
	nop			;ae0b
	sbc a,d			;ae0c
	sbc a,(hl)		;ae0d
	cp e			;ae0e
	cp d			;ae0f
	cp h			;ae10
	nop			;ae11
	nop			;ae12
	inc b			;ae13
	inc bc			;ae14
	or (hl)			;ae15
	ld l,b			;ae16
	ld (hl),d		;ae17
	cp b			;ae18
	ld l,c			;ae19
	ld e,h			;ae1a
	nop			;ae1b
	and a			;ae1c
	and c			;ae1d
	cp d			;ae1e
	cp h			;ae1f
	jp nz,00301h		;ae20
	inc bc			;ae23
	ld a,(bc)		;ae24
	ld c,a			;ae25
	ld d,b			;ae26
	ld d,d			;ae27
	ld c,l			;ae28
	ld c,a			;ae29
	ld d,b			;ae2a
	ld d,d			;ae2b
	ld c,l			;ae2c
	ld c,a			;ae2d
	ld d,b			;ae2e
	adc a,(hl)		;ae2f
	sub d			;ae30
	sub h			;ae31
	sub b			;ae32
	adc a,(hl)		;ae33
	sub d			;ae34
	sub h			;ae35
	sub b			;ae36
	adc a,(hl)		;ae37
	sub d			;ae38
	sub c			;ae39
	sbc a,b			;ae3a
	cp (hl)			;ae3b
	and l			;ae3c
	sub c			;ae3d
	cp h			;ae3e
	jp nz,091a5h		;ae3f
	sbc a,b			;ae42
	ld bc,00303h		;ae43
	ld a,(bc)		;ae46
	ld d,d			;ae47
	ld c,l			;ae48
	ld l,h			;ae49
	ld l,(hl)		;ae4a
	ld d,d			;ae4b
	ld c,l			;ae4c
	ld l,h			;ae4d
	ld l,(hl)		;ae4e
	ld d,d			;ae4f
	ld c,l			;ae50
	sub (hl)		;ae51
	and h			;ae52
	and e			;ae53
	and (hl)		;ae54
	sub (hl)		;ae55
	and h			;ae56
	and e			;ae57
	and (hl)		;ae58
	sub (hl)		;ae59
	and h			;ae5a
	sbc a,b			;ae5b
	cp (hl)			;ae5c
	and l			;ae5d
	adc a,l			;ae5e
	cp h			;ae5f
	jp nz,08da5h		;ae60
	sbc a,b			;ae63
	cp (hl)			;ae64
	ld bc,00303h		;ae65
	ld a,(bc)		;ae68
	ld d,d			;ae69
	ld c,l			;ae6a
	ld c,a			;ae6b
	ld d,b			;ae6c
	ld d,d			;ae6d
	ld c,l			;ae6e
	ld c,a			;ae6f
	ld d,b			;ae70
	ld d,d			;ae71
	ld c,l			;ae72
	sub h			;ae73
	sub b			;ae74
	adc a,(hl)		;ae75
	sub d			;ae76
	sub h			;ae77
	sub b			;ae78
	adc a,(hl)		;ae79
	sub d			;ae7a
	sub h			;ae7b
	sub b			;ae7c
	cp (hl)			;ae7d
	and l			;ae7e
	sub c			;ae7f
	cp h			;ae80
	jp nz,091a5h		;ae81
	sbc a,b			;ae84
	cp (hl)			;ae85
	and l			;ae86
	ld bc,00303h		;ae87
	ld a,(bc)		;ae8a
	ld l,h			;ae8b
	ld l,(hl)		;ae8c
	ld d,d			;ae8d
	ld c,l			;ae8e
	ld l,h			;ae8f
	ld l,(hl)		;ae90
	ld d,d			;ae91
	ld c,l			;ae92
	ld l,h			;ae93
	ld l,(hl)		;ae94
	and e			;ae95
	and (hl)		;ae96
	sub (hl)		;ae97
	and h			;ae98
	and e			;ae99
	and (hl)		;ae9a
	sub (hl)		;ae9b
	and h			;ae9c
	and e			;ae9d
	and (hl)		;ae9e
	and l			;ae9f
	adc a,l			;aea0
	cp h			;aea1
	jp nz,08da5h		;aea2
	sbc a,b			;aea5
	cp (hl)			;aea6
	and l			;aea7
	adc a,l			;aea8
	ld bc,00303h		;aea9
	ld a,(bc)		;aeac
	ld c,a			;aead
	ld d,b			;aeae
	ld d,d			;aeaf
	ld c,l			;aeb0
	ld c,a			;aeb1
	ld d,b			;aeb2
	ld d,d			;aeb3
	ld c,l			;aeb4
	ld c,a			;aeb5
	ld d,b			;aeb6
	adc a,(hl)		;aeb7
	sub d			;aeb8
	sub h			;aeb9
	sub b			;aeba
	adc a,(hl)		;aebb
	sub d			;aebc
	sub h			;aebd
	sub b			;aebe
	adc a,(hl)		;aebf
	sub d			;aec0
	sub c			;aec1
	cp h			;aec2
	jp nz,091a5h		;aec3
	sbc a,b			;aec6
	cp (hl)			;aec7
	and l			;aec8
	sub c			;aec9
	cp h			;aeca
	ld bc,00303h		;aecb
	ld a,(bc)		;aece
	ld d,d			;aecf
	ld c,l			;aed0
	ld l,h			;aed1
	ld l,(hl)		;aed2
	ld d,d			;aed3
	ld c,l			;aed4
	ld l,h			;aed5
	ld l,(hl)		;aed6
	ld d,d			;aed7
	ld c,l			;aed8
	sub (hl)		;aed9
	and h			;aeda
	and e			;aedb
	and (hl)		;aedc
	sub (hl)		;aedd
	and h			;aede
	and e			;aedf
	and (hl)		;aee0
	sub (hl)		;aee1
	and h			;aee2
	cp h			;aee3
	jp nz,08da5h		;aee4
	sbc a,b			;aee7
	cp (hl)			;aee8
	and l			;aee9
	adc a,l			;aeea
	cp h			;aeeb
	jp nz,00301h		;aeec
	inc bc			;aeef
	ld a,(bc)		;aef0
	ld d,d			;aef1
	ld c,l			;aef2
	ld c,a			;aef3
	ld d,b			;aef4
	ld d,d			;aef5
	ld c,l			;aef6
	ld c,a			;aef7
	ld d,b			;aef8
	ld d,d			;aef9
	ld c,l			;aefa
	sub h			;aefb
	sub b			;aefc
	adc a,(hl)		;aefd
	sub d			;aefe
	sub h			;aeff
	sub b			;af00
	adc a,(hl)		;af01
	sub d			;af02
	sub h			;af03
	sub b			;af04
	jp nz,091a5h		;af05
	sbc a,b			;af08
	cp (hl)			;af09
	and l			;af0a
	sub c			;af0b
	cp h			;af0c
	jp nz,001a5h		;af0d
	inc bc			;af10
	inc bc			;af11
	ld a,(bc)		;af12
	ld l,h			;af13
	ld l,(hl)		;af14
	ld d,d			;af15
	ld c,l			;af16
	ld l,h			;af17
	ld l,(hl)		;af18
	ld d,d			;af19
	ld c,l			;af1a
	ld l,h			;af1b
	ld l,(hl)		;af1c
	and e			;af1d
	and (hl)		;af1e
	sub (hl)		;af1f
	and h			;af20
	and e			;af21
	and (hl)		;af22
	sub (hl)		;af23
	and h			;af24
	and e			;af25
	and (hl)		;af26
	and l			;af27
	adc a,l			;af28
	sbc a,b			;af29
	cp (hl)			;af2a
	and l			;af2b
	adc a,l			;af2c
	cp h			;af2d
	jp nz,08da5h		;af2e
	nop			;af31
	dec c			;af32
	inc b			;af33
	inc bc			;af34
	ld e,e			;af35
	ld a,l			;af36
	or l			;af37
	ld l,e			;af38
	ld l,d			;af39
	or e			;af3a
	sbc a,l			;af3b
	sbc a,e			;af3c
	nop			;af3d
	cp (hl)			;af3e
	cp e			;af3f
	cp d			;af40
	nop			;af41
	dec c			;af42
	inc b			;af43
	inc bc			;af44
	ld e,e			;af45
	ld a,l			;af46
	or a			;af47
	ld c,h			;af48
	ld (hl),e		;af49
	cp c			;af4a
	and b			;af4b
	xor b			;af4c
	nop			;af4d
	and l			;af4e
	sub e			;af4f
	cp h			;af50
	nop			;af51
	dec c			;af52
	inc b			;af53
	inc bc			;af54
	ld e,e			;af55
	ld a,l			;af56
	or l			;af57
	ld l,e			;af58
	ld l,d			;af59
	or e			;af5a
	xor c			;af5b
	sbc a,e			;af5c
	or c			;af5d
	sub l			;af5e
	cp h			;af5f
	jp nz,00d00h		;af60
	inc b			;af63
	inc bc			;af64
	ld e,e			;af65
	ld a,l			;af66
	or a			;af67
	ld c,(hl)		;af68
	ld (hl),e		;af69
	cp c			;af6a
	and d			;af6b
	xor d			;af6c
	nop			;af6d
	cp h			;af6e
	jp nz,000bbh		;af6f
	dec c			;af72
	inc b			;af73
	inc bc			;af74
	ld e,e			;af75
	ld a,l			;af76
	or l			;af77
	ld l,e			;af78
	ld l,d			;af79
	or e			;af7a
	sbc a,l			;af7b
	sbc a,e			;af7c
	nop			;af7d
	jp nz,0babbh		;af7e
	nop			;af81
	dec c			;af82
	inc b			;af83
	inc bc			;af84
	ld e,e			;af85
	ld a,l			;af86
	or a			;af87
	ld c,h			;af88
	ld (hl),e		;af89
	cp c			;af8a
	and b			;af8b
	xor b			;af8c
	nop			;af8d
	and l			;af8e
	sub e			;af8f
	cp l			;af90
	nop			;af91
	dec c			;af92
	inc b			;af93
	inc bc			;af94
	ld e,e			;af95
	ld a,l			;af96
	or l			;af97
	ld l,e			;af98
	ld l,d			;af99
	or e			;af9a
	xor c			;af9b
	sbc a,e			;af9c
	or c			;af9d
	sub l			;af9e
	cp l			;af9f
	cp (hl)			;afa0
	nop			;afa1
	dec c			;afa2
	inc b			;afa3
	inc bc			;afa4
	ld e,e			;afa5
	ld a,l			;afa6
	or a			;afa7
	ld c,(hl)		;afa8
	ld (hl),e		;afa9
	cp c			;afaa
	and d			;afab
	xor d			;afac
	nop			;afad
	sbc a,b			;afae
	cp (hl)			;afaf
	cp e			;afb0
	ld sp,hl		;afb1
	adc a,a			;afb2
	ld c,l			;afb3
	sub b			;afb4
	and c			;afb5
	sub b			;afb6
	push af			;afb7
	sub b			;afb8
	defb 0fdh,090h,005h ;illegal sequence	;afb9
	sub c			;afbc
	dec c			;afbd
	sub c			;afbe
	dec d			;afbf
	sub c			;afc0
	dec e			;afc1
	sub c			;afc2
	dec h			;afc3
	sub c			;afc4
	dec l			;afc5
	sub c			;afc6
	dec (hl)		;afc7
	sub c			;afc8
	ld b,c			;afc9
	sub c			;afca
	ld h,c			;afcb
	sub c			;afcc
	ld h,a			;afcd
	sub c			;afce
	ld l,l			;afcf
	sub c			;afd0
	ld (hl),e		;afd1
	sub c			;afd2
	ld a,c			;afd3
	sub c			;afd4
	dec (hl)		;afd5
	sub d			;afd6
	add a,c			;afd7
	sub d			;afd8
	cp e			;afd9
	sub d			;afda
	ex (sp),hl		;afdb
	sub d			;afdc
	rrca			;afdd
	sub e			;afde
	ld c,e			;afdf
	sub e			;afe0
	add a,c			;afe1
	sub e			;afe2
	add a,093h		;afe3
	add a,093h		;afe5
	rst 10h			;afe7
	sub c			;afe8
	add a,093h		;afe9
	ld a,(bc)		;afeb
	sub h			;afec
	ld c,(hl)		;afed
	sub h			;afee
	sub d			;afef
	sub h			;aff0
	sub 094h		;aff1
	ld a,(de)		;aff3
	sub l			;aff4
	ld e,(hl)		;aff5
	sub l			;aff6
	and d			;aff7
	sub l			;aff8
	nop			;aff9
	nop			;affa
	ex af,af'		;affb
	ld a,(bc)		;affc
	nop			;affd
	nop			;affe
	nop			;afff
	ld (de),a		;b000
	ld b,h			;b001
	ld b,b			;b002
	inc d			;b003
	nop			;b004
	nop			;b005
	nop			;b006
	nop			;b007
	nop			;b008
	dec e			;b009
	jr z,lb04bh		;b00a
	cpl			;b00c
	ld b,d			;b00d
	ld a,(de)		;b00e
	nop			;b00f
	nop			;b010
	nop			;b011
	add hl,de		;b012
	ld b,e			;b013
	ld c,d			;b014
	inc l			;b015
	ld e,01fh		;b016
	inc (hl)		;b018
	dec sp			;b019
	rrca			;b01a
	inc c			;b01b
	add hl,sp		;b01c
	ld b,l			;b01d
	ld e,01fh		;b01e
	jr nz,lb043h		;b020
	ld l,047h		;b022
	djnz $+15		;b024
	ld b,(hl)		;b026
	inc a			;b027
	jr nz,lb04bh		;b028
	ld (03d23h),hl		;b02a
	ld b,c			;b02d
	ld de,0350eh		;b02e
	ld sp,02733h		;b031
	dec h			;b034
	ld (01548h),a		;b035
	nop			;b038
	nop			;b039
	nop			;b03a
	rla			;b03b
	ld c,c			;b03c
	ld a,030h		;b03d
	scf			;b03f
	jr lb042h		;b040
lb042h:
	nop			;b042
lb043h:
	nop			;b043
	nop			;b044
	nop			;b045
	inc de			;b046
	ld a,(01638h)		;b047
	nop			;b04a
lb04bh:
	nop			;b04b
	nop			;b04c
	nop			;b04d
	nop			;b04e
	ex af,af'		;b04f
	ld a,(bc)		;b050
	nop			;b051
	nop			;b052
	nop			;b053
	ld (de),a		;b054
	ld b,h			;b055
	ld b,b			;b056
	inc d			;b057
	nop			;b058
	nop			;b059
	nop			;b05a
	nop			;b05b
	nop			;b05c
	inc e			;b05d
	jr z,lb09fh		;b05e
	cpl			;b060
	ld (hl),01ah		;b061
	nop			;b063
	nop			;b064
	nop			;b065
	dec de			;b066
	ld hl,(02b29h)		;b067
	ld (03423h),hl		;b06a
	dec sp			;b06d
	rrca			;b06e
	inc c			;b06f
	add hl,sp		;b070
	ld b,l			;b071
	ld (02523h),hl		;b072
	ld (0472eh),a		;b075
	djnz $+15		;b078
	ld b,(hl)		;b07a
	inc a			;b07b
	dec h			;b07c
	ld (01f1eh),a		;b07d
	dec a			;b080
	ld b,c			;b081
	ld de,0350eh		;b082
	ld sp,02624h		;b085
	jr nz,lb0abh		;b088
	ld c,b			;b08a
	dec d			;b08b
	nop			;b08c
	nop			;b08d
	nop			;b08e
	rla			;b08f
	ld c,c			;b090
	ld a,030h		;b091
	scf			;b093
	jr lb096h		;b094
lb096h:
	nop			;b096
	nop			;b097
	nop			;b098
	nop			;b099
	inc de			;b09a
	ld a,(01638h)		;b09b
	nop			;b09e
lb09fh:
	nop			;b09f
	nop			;b0a0
	nop			;b0a1
	nop			;b0a2
	ex af,af'		;b0a3
	ld a,(bc)		;b0a4
	nop			;b0a5
	nop			;b0a6
lb0a7h:
	nop			;b0a7
	ld (de),a		;b0a8
	ld b,h			;b0a9
	ld b,b			;b0aa
lb0abh:
	inc d			;b0ab
	nop			;b0ac
	nop			;b0ad
	nop			;b0ae
	nop			;b0af
	nop			;b0b0
	inc e			;b0b1
	jr z,lb0f3h		;b0b2
	cpl			;b0b4
	ld (hl),01ah		;b0b5
	nop			;b0b7
	nop			;b0b8
	nop			;b0b9
	dec de			;b0ba
	ld hl,(00b29h)		;b0bb
	ld a,(bc)		;b0be
	call z,03b34h		;b0bf
	rrca			;b0c2
	inc c			;b0c3
	add hl,sp		;b0c4
	ld b,l			;b0c5
	ld a,(bc)		;b0c6
	call z,009cdh		;b0c7
	ld l,047h		;b0ca
	djnz $+15		;b0cc
	ld b,(hl)		;b0ce
	inc a			;b0cf
	call 00a09h		;b0d0
	call z,0413dh		;b0d3
	ld de,0350eh		;b0d6
	ld sp,02733h		;b0d9
	call 04809h		;b0dc
	dec d			;b0df
	nop			;b0e0
	nop			;b0e1
	nop			;b0e2
	rla			;b0e3
	ld c,c			;b0e4
	ld a,030h		;b0e5
	scf			;b0e7
	jr lb0eah		;b0e8
lb0eah:
	nop			;b0ea
	nop			;b0eb
	nop			;b0ec
	nop			;b0ed
	inc de			;b0ee
	ld a,(01638h)		;b0ef
	nop			;b0f2
lb0f3h:
	nop			;b0f3
	nop			;b0f4
	nop			;b0f5
	nop			;b0f6
	ld (bc),a		;b0f7
	ld (bc),a		;b0f8
	ld bc,lb802h		;b0f9
	cp c			;b0fc
	nop			;b0fd
	nop			;b0fe
	ld (bc),a		;b0ff
	ld (bc),a		;b100
	inc bc			;b101
	inc b			;b102
	cp d			;b103
	cp e			;b104
	nop			;b105
	nop			;b106
	ld (bc),a		;b107
	ld (bc),a		;b108
	dec b			;b109
	ld b,0b8h		;b10a
	cp c			;b10c
	nop			;b10d
	nop			;b10e
	ld (bc),a		;b10f
	ld (bc),a		;b110
	rlca			;b111
	ex af,af'		;b112
	cp d			;b113
	cp e			;b114
	nop			;b115
	nop			;b116
	ld (bc),a		;b117
	ld (bc),a		;b118
	cp h			;b119
	cp l			;b11a
	add hl,bc		;b11b
	ld a,(bc)		;b11c
	nop			;b11d
	nop			;b11e
	ld (bc),a		;b11f
	ld (bc),a		;b120
	cp (hl)			;b121
	cp a			;b122
	dec bc			;b123
	inc c			;b124
	nop			;b125
	nop			;b126
	ld (bc),a		;b127
	ld (bc),a		;b128
	cp h			;b129
	cp l			;b12a
	dec c			;b12b
	ld c,000h		;b12c
	nop			;b12e
	ld (bc),a		;b12f
	ld (bc),a		;b130
	cp (hl)			;b131
	cp a			;b132
	rrca			;b133
	djnz lb136h		;b134
lb136h:
	nop			;b136
	ld (bc),a		;b137
	inc b			;b138
	xor d			;b139
	xor h			;b13a
	xor l			;b13b
	xor e			;b13c
	or h			;b13d
	or l			;b13e
	or (hl)			;b13f
	or a			;b140
	nop			;b141
	nop			;b142
	ld (bc),a		;b143
	inc b			;b144
	or b			;b145
	or c			;b146
	or d			;b147
	or e			;b148
	xor b			;b149
	xor (hl)		;b14a
	xor a			;b14b
	xor c			;b14c
	nop			;b14d
	nop			;b14e
	ld (bc),a		;b14f
	inc b			;b150
	nop			;b151
	nop			;b152
	nop			;b153
	nop			;b154
	ret nz			;b155
	pop bc			;b156
	jp nz,000c3h		;b157
	nop			;b15a
	ld bc,0c404h		;b15b
	push bc			;b15e
	add a,0c7h		;b15f
	nop			;b161
	nop			;b162
	ld (bc),a		;b163
	ld bc,0cdcch		;b164
	nop			;b167
	nop			;b168
	ld bc,0ca02h		;b169
	rlc c			;b16c
	nop			;b16e
	ld bc,0cc02h		;b16f
	call 00000h		;b172
	ld bc,0ca02h		;b175
	rlc b			;b178
	nop			;b17a
	add hl,bc		;b17b
	ld a,(bc)		;b17c
	nop			;b17d
	nop			;b17e
	nop			;b17f
	nop			;b180
	sbc a,b			;b181
	sbc a,c			;b182
	add hl,sp		;b183
	ld e,c			;b184
	xor d			;b185
	xor a			;b186
	nop			;b187
	nop			;b188
	nop			;b189
	sbc a,d			;b18a
	ld a,d			;b18b
	ld l,a			;b18c
	ld e,d			;b18d
	ld a,(01f3bh)		;b18e
	nop			;b191
	nop			;b192
	nop			;b193
	or c			;b194
	and a			;b195
	ld (hl),b		;b196
	ld e,e			;b197
	ld (hl),h		;b198
	adc a,a			;b199
	jr nz,lb19ch		;b19a
lb19ch:
	nop			;b19c
	sub a			;b19d
	or (hl)			;b19e
	or a			;b19f
	ccf			;b1a0
	ld (hl),d		;b1a1
	xor a			;b1a2
	ld (hl),b		;b1a3
	ld c,(hl)		;b1a4
	nop			;b1a5
	nop			;b1a6
	sbc a,b			;b1a7
	cp d			;b1a8
	cp e			;b1a9
	ld d,h			;b1aa
	or c			;b1ab
	ld b,b			;b1ac
	dec h			;b1ad
	ld h,000h		;b1ae
	nop			;b1b0
	sbc a,c			;b1b1
	sbc a,l			;b1b2
	ld a,e			;b1b3
	ld d,e			;b1b4
	or b			;b1b5
	scf			;b1b6
	jr c,lb1f2h		;b1b7
	nop			;b1b9
	sbc a,c			;b1ba
	ld d,c			;b1bb
	ld c,l			;b1bc
	ld a,c			;b1bd
	ld l,(hl)		;b1be
	ld l,a			;b1bf
	ld (hl),e		;b1c0
	ld (hl),l		;b1c1
	ret nz			;b1c2
	sbc a,c			;b1c3
	ld d,c			;b1c4
	ld c,l			;b1c5
	xor d			;b1c6
	xor h			;b1c7
	xor d			;b1c8
	xor e			;b1c9
	jp 05762h		;b1ca
	ld d,c			;b1cd
	ld c,l			;b1ce
	xor (hl)		;b1cf
	and (hl)		;b1d0
	xor (hl)		;b1d1
	and (hl)		;b1d2
	ld (hl),c		;b1d3
	ld e,(hl)		;b1d4
	ld h,b			;b1d5
	ld h,c			;b1d6
	nop			;b1d7
	nop			;b1d8
	add hl,bc		;b1d9
	ld a,(bc)		;b1da
	ld l,(hl)		;b1db
	xor e			;b1dc
	adc a,h			;b1dd
	and h			;b1de
	sbc a,(hl)		;b1df
	nop			;b1e0
	nop			;b1e1
	nop			;b1e2
	nop			;b1e3
	nop			;b1e4
	inc e			;b1e5
	ld c,b			;b1e6
	ret nz			;b1e7
	pop bc			;b1e8
	jp nz,09ec3h		;b1e9
	nop			;b1ec
	nop			;b1ed
	nop			;b1ee
	dec e			;b1ef
	ld (hl),a		;b1f0
	ld h,h			;b1f1
lb1f2h:
	ld h,(hl)		;b1f2
	ld l,b			;b1f3
	adc a,c			;b1f4
	add a,d			;b1f5
	and e			;b1f6
	nop			;b1f7
	nop			;b1f8
	ld (hl),h		;b1f9
	ld b,e			;b1fa
	ld h,l			;b1fb
	ld h,h			;b1fc
	ld l,c			;b1fd
	ld l,l			;b1fe
	sbc a,(hl)		;b1ff
	sbc a,a			;b200
	nop			;b201
	nop			;b202
	daa			;b203
	jr z,lb24dh		;b204
	ld e,e			;b206
	ld h,e			;b207
	ld c,a			;b208
	ld h,e			;b209
	ld c,a			;b20a
	and e			;b20b
	nop			;b20c
	add hl,hl		;b20d
	ld hl,(0772bh)		;b20e
	ld e,d			;b211
	ld e,h			;b212
	ld e,d			;b213
	ld e,h			;b214
	halt			;b215
	and l			;b216
	dec (hl)		;b217
	ld (hl),03bh		;b218
	inc a			;b21a
	add a,d			;b21b
	add a,d			;b21c
	add a,d			;b21d
	add a,0c7h		;b21e
	or d			;b220
	ld e,l			;b221
	ret z			;b222
	ret			;b223
	add a,0cbh		;b224
	ret z			;b226
	ret			;b227
	push bc			;b228
	jp nz,058b3h		;b229
	adc a,b			;b22c
	adc a,c			;b22d
	adc a,d			;b22e
	adc a,e			;b22f
	adc a,b			;b230
	adc a,c			;b231
	adc a,h			;b232
	and c			;b233
	nop			;b234
	nop			;b235
	nop			;b236
	add hl,bc		;b237
	ex af,af'		;b238
	nop			;b239
	nop			;b23a
	nop			;b23b
	nop			;b23c
	nop			;b23d
	xor a			;b23e
	ld l,(hl)		;b23f
	nop			;b240
	nop			;b241
	nop			;b242
	nop			;b243
	nop			;b244
	dec sp			;b245
	rra			;b246
	inc e			;b247
	ld c,b			;b248
	nop			;b249
	nop			;b24a
	nop			;b24b
	halt			;b24c
lb24dh:
	ld l,h			;b24d
	jr nz,$+31		;b24e
	ld (hl),a		;b250
	nop			;b251
	nop			;b252
	jr nc,lb2aeh		;b253
	dec l			;b255
	dec a			;b256
	ld b,c			;b257
	ld b,e			;b258
	nop			;b259
	ld d,l			;b25a
	inc l			;b25b
	dec l			;b25c
	ld l,02fh		;b25d
	ld b,d			;b25f
	nop			;b260
	xor l			;b261
	ld sp,02e2dh		;b262
	ld l,b			;b265
	ld c,c			;b266
	nop			;b267
	nop			;b268
	rra			;b269
	inc e			;b26a
	ld (03433h),a		;b26b
	nop			;b26e
	nop			;b26f
	nop			;b270
	jr nz,lb290h		;b271
	ld d,b			;b273
	and a			;b274
	nop			;b275
	nop			;b276
	nop			;b277
	nop			;b278
	ld c,d			;b279
	ld c,e			;b27a
	ld d,(hl)		;b27b
	nop			;b27c
	nop			;b27d
	nop			;b27e
	nop			;b27f
	nop			;b280
	nop			;b281
	nop			;b282
	ld b,009h		;b283
	nop			;b285
	nop			;b286
	nop			;b287
	nop			;b288
	nop			;b289
	nop			;b28a
	xor a			;b28b
	ld l,(hl)		;b28c
	nop			;b28d
	nop			;b28e
	nop			;b28f
lb290h:
	nop			;b290
	add a,h			;b291
	ld c,l			;b292
	ld c,(hl)		;b293
	rra			;b294
	inc e			;b295
	ld c,b			;b296
	or b			;b297
	and (hl)		;b298
	ld c,a			;b299
	ld d,b			;b29a
	ld d,c			;b29b
	ld a,c			;b29c
	jr nz,lb2bch		;b29d
	ld (hl),a		;b29f
	rra			;b2a0
	inc e			;b2a1
	ld b,h			;b2a2
	ld b,l			;b2a3
	ld b,(hl)		;b2a4
	ld h,a			;b2a5
	ld c,h			;b2a6
	ld (hl),h		;b2a7
	ld b,e			;b2a8
	jr nz,lb2c8h		;b2a9
	ld c,b			;b2ab
	ld l,d			;b2ac
	ld l,e			;b2ad
lb2aeh:
	ld a,b			;b2ae
	nop			;b2af
	nop			;b2b0
	nop			;b2b1
	and b			;b2b2
	ld l,h			;b2b3
	ld d,d			;b2b4
	nop			;b2b5
	nop			;b2b6
	nop			;b2b7
	nop			;b2b8
	nop			;b2b9
	nop			;b2ba
	nop			;b2bb
lb2bch:
	nop			;b2bc
	inc b			;b2bd
	add hl,bc		;b2be
	sub (hl)		;b2bf
	sub a			;b2c0
	sbc a,l			;b2c1
	sbc a,h			;b2c2
	ld (hl),d		;b2c3
	add a,c			;b2c4
	adc a,b			;b2c5
	xor (hl)		;b2c6
	ld l,(hl)		;b2c7
lb2c8h:
	rra			;b2c8
	inc e			;b2c9
	ld c,e			;b2ca
	ld c,h			;b2cb
	ld c,h			;b2cc
	ld c,h			;b2cd
	ld e,l			;b2ce
	rra			;b2cf
	inc e			;b2d0
	jr nz,lb2f0h		;b2d1
	add a,b			;b2d3
	inc a			;b2d4
	inc a			;b2d5
	inc a			;b2d6
	adc a,d			;b2d7
	jr nz,lb2f7h		;b2d8
	sbc a,e			;b2da
	cp b			;b2db
	cp c			;b2dc
	ld h,(hl)		;b2dd
	ld a,0a8h		;b2de
	xor c			;b2e0
	ld c,(hl)		;b2e1
	ld (hl),h		;b2e2
	nop			;b2e3
	nop			;b2e4
	dec b			;b2e5
	ex af,af'		;b2e6
	sub (hl)		;b2e7
	sub a			;b2e8
	sbc a,(hl)		;b2e9
	nop			;b2ea
	nop			;b2eb
	nop			;b2ec
	nop			;b2ed
	nop			;b2ee
	rra			;b2ef
lb2f0h:
	inc e			;b2f0
	ld d,d			;b2f1
	ld c,d			;b2f2
	sbc a,a			;b2f3
	sbc a,(hl)		;b2f4
	nop			;b2f5
	nop			;b2f6
lb2f7h:
	jr nz,lb316h		;b2f7
	ld b,a			;b2f9
	ld d,e			;b2fa
	ld d,h			;b2fb
	xor b			;b2fc
	xor l			;b2fd
	ld l,(hl)		;b2fe
	add a,a			;b2ff
	ld e,h			;b300
	ld (hl),c		;b301
	dec a			;b302
	ld a,03fh		;b303
	rra			;b305
	inc e			;b306
	nop			;b307
	nop			;b308
	nop			;b309
	adc a,(hl)		;b30a
	ld h,e			;b30b
	ld h,c			;b30c
	jr nz,lb32ch		;b30d
	nop			;b30f
	nop			;b310
	ex af,af'		;b311
	rlca			;b312
	sub (hl)		;b313
	sub a			;b314
	nop			;b315
lb316h:
	nop			;b316
	nop			;b317
	nop			;b318
	nop			;b319
	rra			;b31a
	inc e			;b31b
	and l			;b31c
	nop			;b31d
	nop			;b31e
	nop			;b31f
	nop			;b320
	jr nz,lb340h		;b321
	ld e,(hl)		;b323
	and b			;b324
	nop			;b325
	nop			;b326
	nop			;b327
	or d			;b328
	ld a,b			;b329
	ld e,a			;b32a
	ld d,(hl)		;b32b
lb32ch:
	and b			;b32c
	nop			;b32d
	nop			;b32e
	nop			;b32f
	or l			;b330
	ld b,b			;b331
	ld a,e			;b332
	ld d,(hl)		;b333
	and b			;b334
	nop			;b335
	nop			;b336
	nop			;b337
	ld a,l			;b338
	ld b,b			;b339
	ld a,(hl)		;b33a
	ld l,l			;b33b
	add a,(hl)		;b33c
	nop			;b33d
	nop			;b33e
	nop			;b33f
lb340h:
	ld (hl),e		;b340
	ld b,c			;b341
	rra			;b342
	inc e			;b343
	nop			;b344
	nop			;b345
	nop			;b346
	nop			;b347
	ld h,l			;b348
	jr nz,lb368h		;b349
	nop			;b34b
	nop			;b34c
	ld a,(bc)		;b34d
	dec b			;b34e
	sub (hl)		;b34f
	sub a			;b350
	nop			;b351
	nop			;b352
	nop			;b353
	rra			;b354
	inc e			;b355
	sbc a,b			;b356
	nop			;b357
	nop			;b358
	jr nz,lb378h		;b359
	xor c			;b35b
	and c			;b35c
	nop			;b35d
	ld a,h			;b35e
	ld (hl),l		;b35f
	ld d,a			;b360
	and d			;b361
	nop			;b362
	or h			;b363
	ld b,d			;b364
	ld d,l			;b365
	ld c,c			;b366
	nop			;b367
lb368h:
	or e			;b368
	ld l,c			;b369
	ld b,e			;b36a
	add a,e			;b36b
	and c			;b36c
	nop			;b36d
	ld l,d			;b36e
	ld b,h			;b36f
	ld e,b			;b370
	and d			;b371
	nop			;b372
	ld l,e			;b373
	ld b,l			;b374
	adc a,l			;b375
	add a,l			;b376
	nop			;b377
lb378h:
	adc a,e			;b378
	ld b,(hl)		;b379
	rra			;b37a
	inc e			;b37b
	nop			;b37c
	nop			;b37d
	ld h,a			;b37e
	jr nz,lb39eh		;b37f
	nop			;b381
	nop			;b382
	dec b			;b383
	dec c			;b384
	nop			;b385
	nop			;b386
	nop			;b387
	nop			;b388
	nop			;b389
	inc bc			;b38a
	inc b			;b38b
	dec b			;b38c
	nop			;b38d
	nop			;b38e
	nop			;b38f
	nop			;b390
	nop			;b391
	nop			;b392
	ld (bc),a		;b393
	ld d,010h		;b394
	dec h			;b396
	ld h,027h		;b397
	jr z,$+8		;b399
	rlca			;b39b
	ex af,af'		;b39c
	nop			;b39d
lb39eh:
	nop			;b39e
	ld a,(bc)		;b39f
	jr $+15			;b3a0
	rrca			;b3a2
	inc de			;b3a3
	inc de			;b3a4
	add hl,hl		;b3a5
	ld hl,(0212bh)		;b3a6
	dec de			;b3a9
	rla			;b3aa
	ld de,0191ah		;b3ab
	ld c,014h		;b3ae
	add hl,bc		;b3b0
	ld e,01eh		;b3b1
	inc hl			;b3b3
	inc h			;b3b4
	ld (de),a		;b3b5
	dec d			;b3b6
	dec d			;b3b7
	ld (01a00h),hl		;b3b8
	dec bc			;b3bb
	inc c			;b3bc
	nop			;b3bd
	nop			;b3be
	nop			;b3bf
	nop			;b3c0
	nop			;b3c1
	nop			;b3c2
	nop			;b3c3
	nop			;b3c4
	nop			;b3c5
	nop			;b3c6
	nop			;b3c7
	inc b			;b3c8
	djnz lb3cbh		;b3c9
lb3cbh:
	nop			;b3cb
	nop			;b3cc
	nop			;b3cd
	nop			;b3ce
	nop			;b3cf
	nop			;b3d0
	nop			;b3d1
	nop			;b3d2
	nop			;b3d3
	nop			;b3d4
	nop			;b3d5
	nop			;b3d6
	add a,0c7h		;b3d7
	or d			;b3d9
	nop			;b3da
	nop			;b3db
	nop			;b3dc
	nop			;b3dd
	nop			;b3de
	nop			;b3df
	nop			;b3e0
	ret z			;b3e1
	ret			;b3e2
	add a,0cbh		;b3e3
	ret z			;b3e5
	ret			;b3e6
	push bc			;b3e7
	jp nz,000b3h		;b3e8
	nop			;b3eb
	nop			;b3ec
	nop			;b3ed
	nop			;b3ee
	nop			;b3ef
	nop			;b3f0
	adc a,b			;b3f1
	adc a,c			;b3f2
	adc a,d			;b3f3
	adc a,e			;b3f4
	adc a,b			;b3f5
	adc a,c			;b3f6
	adc a,h			;b3f7
	and c			;b3f8
	nop			;b3f9
	add a,l			;b3fa
	add a,e			;b3fb
	add a,(hl)		;b3fc
	ld a,d			;b3fd
	add a,h			;b3fe
	ld a,l			;b3ff
	add a,(hl)		;b400
	ld a,d			;b401
	add a,l			;b402
	add a,e			;b403
	add a,(hl)		;b404
	ld a,d			;b405
	add a,h			;b406
	sub c			;b407
	sub e			;b408
	sub h			;b409
	nop			;b40a
	nop			;b40b
	inc b			;b40c
	djnz lb40fh		;b40d
lb40fh:
	nop			;b40f
	nop			;b410
	nop			;b411
	nop			;b412
	nop			;b413
	nop			;b414
	nop			;b415
	nop			;b416
	nop			;b417
	nop			;b418
	nop			;b419
	nop			;b41a
	add a,0c7h		;b41b
	or h			;b41d
	nop			;b41e
	nop			;b41f
	nop			;b420
	nop			;b421
	nop			;b422
	nop			;b423
	nop			;b424
	add a,0cbh		;b425
	call z,0c6cdh		;b427
	set 1,d			;b42a
	pop bc			;b42c
	or l			;b42d
	nop			;b42e
	nop			;b42f
	nop			;b430
	nop			;b431
	nop			;b432
	nop			;b433
	nop			;b434
	adc a,l			;b435
	adc a,(hl)		;b436
	adc a,a			;b437
	cp h			;b438
	adc a,l			;b439
	adc a,(hl)		;b43a
	cp l			;b43b
	and d			;b43c
	nop			;b43d
	add a,e			;b43e
	add a,(hl)		;b43f
	add a,a			;b440
	add a,h			;b441
	ld a,l			;b442
	add a,(hl)		;b443
	add a,a			;b444
	add a,l			;b445
	add a,e			;b446
	add a,(hl)		;b447
	add a,a			;b448
	add a,h			;b449
	ld a,l			;b44a
	add a,(hl)		;b44b
	sub l			;b44c
	sub d			;b44d
	nop			;b44e
	nop			;b44f
	inc b			;b450
	djnz lb453h		;b451
lb453h:
	nop			;b453
	nop			;b454
	nop			;b455
	nop			;b456
	nop			;b457
	nop			;b458
	nop			;b459
	nop			;b45a
	nop			;b45b
	nop			;b45c
	nop			;b45d
	nop			;b45e
	add a,0c7h		;b45f
	or d			;b461
	nop			;b462
	nop			;b463
	nop			;b464
	nop			;b465
	nop			;b466
	nop			;b467
	nop			;b468
	add a,0cbh		;b469
	ret z			;b46b
	ret			;b46c
	add a,0cbh		;b46d
	push bc			;b46f
	jp nz,000b3h		;b470
	nop			;b473
	nop			;b474
	nop			;b475
	nop			;b476
	nop			;b477
	nop			;b478
	adc a,d			;b479
	adc a,e			;b47a
	adc a,b			;b47b
	adc a,c			;b47c
	adc a,d			;b47d
	adc a,e			;b47e
	cp (hl)			;b47f
	and c			;b480
	nop			;b481
	add a,(hl)		;b482
	ld a,d			;b483
	add a,h			;b484
	ld a,l			;b485
	add a,(hl)		;b486
	ld a,d			;b487
	add a,l			;b488
	add a,e			;b489
	add a,(hl)		;b48a
	ld a,d			;b48b
	add a,h			;b48c
	ld a,l			;b48d
	add a,(hl)		;b48e
	sub (hl)		;b48f
	sub d			;b490
	add a,c			;b491
	nop			;b492
	nop			;b493
	inc b			;b494
	djnz lb497h		;b495
lb497h:
	nop			;b497
	nop			;b498
	nop			;b499
	nop			;b49a
	nop			;b49b
	nop			;b49c
	nop			;b49d
	nop			;b49e
	nop			;b49f
	nop			;b4a0
	nop			;b4a1
	nop			;b4a2
	add a,0c7h		;b4a3
	or h			;b4a5
	nop			;b4a6
	nop			;b4a7
	nop			;b4a8
	nop			;b4a9
	nop			;b4aa
	nop			;b4ab
	nop			;b4ac
	call z,0c6cdh		;b4ad
	set 1,h			;b4b0
	call 0c1c4h		;b4b2
	or l			;b4b5
	nop			;b4b6
	nop			;b4b7
	nop			;b4b8
	nop			;b4b9
	nop			;b4ba
	nop			;b4bb
	nop			;b4bc
	adc a,a			;b4bd
	cp h			;b4be
	adc a,l			;b4bf
	adc a,(hl)		;b4c0
	adc a,a			;b4c1
	cp h			;b4c2
	cp a			;b4c3
	and h			;b4c4
	nop			;b4c5
	add a,a			;b4c6
	add a,h			;b4c7
	ld a,l			;b4c8
	add a,(hl)		;b4c9
	add a,a			;b4ca
	add a,l			;b4cb
	add a,e			;b4cc
	add a,(hl)		;b4cd
	add a,a			;b4ce
	add a,h			;b4cf
	ld a,l			;b4d0
	add a,(hl)		;b4d1
	add a,a			;b4d2
	add a,l			;b4d3
	add a,c			;b4d4
	sub e			;b4d5
	nop			;b4d6
	nop			;b4d7
	inc b			;b4d8
	djnz lb4dbh		;b4d9
lb4dbh:
	nop			;b4db
	nop			;b4dc
	nop			;b4dd
	nop			;b4de
	nop			;b4df
	nop			;b4e0
	nop			;b4e1
	nop			;b4e2
	nop			;b4e3
	nop			;b4e4
	nop			;b4e5
	nop			;b4e6
	add a,0c7h		;b4e7
	or d			;b4e9
	nop			;b4ea
	nop			;b4eb
	nop			;b4ec
	nop			;b4ed
	nop			;b4ee
	nop			;b4ef
	nop			;b4f0
	ret z			;b4f1
	ret			;b4f2
	add a,0cbh		;b4f3
	ret z			;b4f5
	ret			;b4f6
	push bc			;b4f7
	jp nz,000b3h		;b4f8
	nop			;b4fb
	nop			;b4fc
	nop			;b4fd
	nop			;b4fe
	nop			;b4ff
	nop			;b500
	adc a,b			;b501
	adc a,c			;b502
	adc a,d			;b503
	adc a,e			;b504
	adc a,b			;b505
	adc a,c			;b506
	adc a,h			;b507
	and c			;b508
	nop			;b509
	add a,h			;b50a
	ld a,l			;b50b
	add a,(hl)		;b50c
	ld a,d			;b50d
	add a,l			;b50e
	add a,e			;b50f
	add a,(hl)		;b510
	ld a,d			;b511
	add a,h			;b512
	ld a,l			;b513
	add a,(hl)		;b514
	ld a,d			;b515
	add a,l			;b516
	add a,c			;b517
	sub e			;b518
	sub h			;b519
	nop			;b51a
	nop			;b51b
	inc b			;b51c
	djnz lb51fh		;b51d
lb51fh:
	nop			;b51f
	nop			;b520
	nop			;b521
	nop			;b522
	nop			;b523
	nop			;b524
	nop			;b525
	nop			;b526
	nop			;b527
	nop			;b528
	nop			;b529
	nop			;b52a
	add a,0c7h		;b52b
	or h			;b52d
	nop			;b52e
	nop			;b52f
	nop			;b530
	nop			;b531
	nop			;b532
	nop			;b533
	nop			;b534
	add a,0cbh		;b535
	call z,0c6cdh		;b537
	set 1,d			;b53a
	pop bc			;b53c
	or l			;b53d
	nop			;b53e
	nop			;b53f
	nop			;b540
	nop			;b541
	nop			;b542
	nop			;b543
	nop			;b544
	adc a,l			;b545
	adc a,(hl)		;b546
	adc a,a			;b547
	cp h			;b548
	adc a,l			;b549
	adc a,(hl)		;b54a
	cp l			;b54b
	and d			;b54c
	nop			;b54d
	ld a,l			;b54e
	add a,(hl)		;b54f
	add a,a			;b550
	add a,l			;b551
	add a,e			;b552
	add a,(hl)		;b553
	add a,a			;b554
	add a,h			;b555
	ld a,l			;b556
	add a,(hl)		;b557
	add a,a			;b558
	add a,l			;b559
	add a,e			;b55a
	add a,(hl)		;b55b
	sub l			;b55c
	sub b			;b55d
	nop			;b55e
	nop			;b55f
	inc b			;b560
	djnz lb563h		;b561
lb563h:
	nop			;b563
	nop			;b564
	nop			;b565
	nop			;b566
	nop			;b567
	nop			;b568
	nop			;b569
	nop			;b56a
	nop			;b56b
	nop			;b56c
	nop			;b56d
	nop			;b56e
	add a,0c7h		;b56f
	or d			;b571
	nop			;b572
	nop			;b573
	nop			;b574
	nop			;b575
	nop			;b576
	nop			;b577
	nop			;b578
	add a,0cbh		;b579
	ret z			;b57b
	ret			;b57c
	add a,0cbh		;b57d
	push bc			;b57f
	jp nz,000b3h		;b580
	nop			;b583
	nop			;b584
	nop			;b585
	nop			;b586
	nop			;b587
	nop			;b588
	adc a,d			;b589
	adc a,e			;b58a
	adc a,b			;b58b
	adc a,c			;b58c
	adc a,d			;b58d
	adc a,e			;b58e
	cp (hl)			;b58f
	and c			;b590
	nop			;b591
	add a,(hl)		;b592
	ld a,d			;b593
	add a,l			;b594
	add a,e			;b595
	add a,(hl)		;b596
	ld a,d			;b597
	add a,h			;b598
	ld a,l			;b599
	add a,(hl)		;b59a
	ld a,d			;b59b
	add a,l			;b59c
	add a,e			;b59d
	add a,(hl)		;b59e
	sub (hl)		;b59f
	sub b			;b5a0
	sub c			;b5a1
	nop			;b5a2
	nop			;b5a3
	inc b			;b5a4
	djnz lb5a7h		;b5a5
lb5a7h:
	nop			;b5a7
	nop			;b5a8
	nop			;b5a9
	nop			;b5aa
	nop			;b5ab
	nop			;b5ac
	nop			;b5ad
	nop			;b5ae
	nop			;b5af
	nop			;b5b0
	nop			;b5b1
	nop			;b5b2
	add a,0c7h		;b5b3
	or h			;b5b5
	nop			;b5b6
	nop			;b5b7
	nop			;b5b8
	nop			;b5b9
	nop			;b5ba
	nop			;b5bb
	nop			;b5bc
	call z,0c6cdh		;b5bd
	set 1,h			;b5c0
	call 0c1c4h		;b5c2
	or l			;b5c5
	nop			;b5c6
	nop			;b5c7
	nop			;b5c8
	nop			;b5c9
	nop			;b5ca
	nop			;b5cb
	nop			;b5cc
	adc a,a			;b5cd
	cp h			;b5ce
	adc a,l			;b5cf
	adc a,(hl)		;b5d0
	adc a,a			;b5d1
	cp h			;b5d2
	cp a			;b5d3
	and h			;b5d4
	nop			;b5d5
	add a,a			;b5d6
	add a,l			;b5d7
	add a,e			;b5d8
	add a,(hl)		;b5d9
	add a,a			;b5da
	add a,h			;b5db
	ld a,l			;b5dc
	add a,(hl)		;b5dd
	add a,a			;b5de
	add a,l			;b5df
	add a,e			;b5e0
	add a,(hl)		;b5e1
	add a,a			;b5e2
	add a,h			;b5e3
	sub c			;b5e4
	sub e			;b5e5
	ld bc,00d96h		;b5e6
	sub (hl)		;b5e9
	ld d,c			;b5ea
	sub (hl)		;b5eb
	ld e,c			;b5ec
	sub (hl)		;b5ed
	ld h,c			;b5ee
	sub (hl)		;b5ef
	ld l,c			;b5f0
	sub (hl)		;b5f1
	ld sp,03996h		;b5f2
	sub (hl)		;b5f5
	ld b,c			;b5f6
	sub (hl)		;b5f7
	ld c,c			;b5f8
	sub (hl)		;b5f9
	call m,00095h		;b5fa
	nop			;b5fd
	ld bc,0cd01h		;b5fe
	nop			;b601
	nop			;b602
	ld (bc),a		;b603
	inc b			;b604
	call nz,0c1c0h		;b605
	push bc			;b608
	cp h			;b609
	cp l			;b60a
	cp (hl)			;b60b
	cp a			;b60c
	nop			;b60d
	nop			;b60e
	ld (bc),a		;b60f
	inc b			;b610
	cp h			;b611
	cp l			;b612
	cp (hl)			;b613
	cp a			;b614
	call nz,0c1c0h		;b615
	push bc			;b618
	nop			;b619
	nop			;b61a
	ld (bc),a		;b61b
	inc b			;b61c
	add a,0c7h		;b61d
	ret z			;b61f
	ret			;b620
	cp h			;b621
	jp nz,lbfc3h		;b622
	nop			;b625
	nop			;b626
	ld (bc),a		;b627
	inc b			;b628
	cp h			;b629
	jp nz,lbfc3h		;b62a
	add a,0c7h		;b62d
	ret z			;b62f
	ret			;b630
sub_b631h:
	nop			;b631
	nop			;b632
	ld (bc),a		;b633
	ld (bc),a		;b634
	or a			;b635
	cp b			;b636
	xor a			;b637
	or b			;b638
	nop			;b639
	nop			;b63a
	ld (bc),a		;b63b
	ld (bc),a		;b63c
	or a			;b63d
	cp b			;b63e
	or c			;b63f
	or d			;b640
	nop			;b641
	nop			;b642
	ld (bc),a		;b643
	ld (bc),a		;b644
	or a			;b645
	cp b			;b646
	or e			;b647
	or h			;b648
	nop			;b649
	nop			;b64a
	ld (bc),a		;b64b
	ld (bc),a		;b64c
	or a			;b64d
	cp b			;b64e
	or l			;b64f
	or (hl)			;b650
	nop			;b651
	nop			;b652
	ld (bc),a		;b653
	ld (bc),a		;b654
	xor a			;b655
	or b			;b656
	or a			;b657
	cp b			;b658
	nop			;b659
	nop			;b65a
	ld (bc),a		;b65b
	ld (bc),a		;b65c
	or c			;b65d
	or d			;b65e
	or a			;b65f
	cp b			;b660
	nop			;b661
	nop			;b662
	ld (bc),a		;b663
	ld (bc),a		;b664
	or e			;b665
	or h			;b666
	or a			;b667
	cp b			;b668
	nop			;b669
	nop			;b66a
	ld (bc),a		;b66b
	ld (bc),a		;b66c
	or l			;b66d
	or (hl)			;b66e
	or a			;b66f
	cp b			;b670
	add a,c			;b671
	sub a			;b672
	ld h,h			;b673
	sub a			;b674
	ld b,a			;b675
	sub a			;b676
	sbc a,(hl)		;b677
	sub a			;b678
	cp e			;b679
	sub a			;b67a
	ex de,hl		;b67b
	sub (hl)		;b67c
	add hl,de		;b67d
	sub a			;b67e
	ld b,09ah		;b67f
	dec bc			;b681
	sbc a,d			;b682
	dec e			;b683
	sbc a,d			;b684
	cpl			;b685
	sbc a,d			;b686
	ld b,c			;b687
	sbc a,d			;b688
	ld d,e			;b689
	sbc a,d			;b68a
	ld h,l			;b68b
	sbc a,d			;b68c
	ld (hl),a		;b68d
	sbc a,d			;b68e
	add a,a			;b68f
	sbc a,d			;b690
	sub a			;b691
	sbc a,d			;b692
	and a			;b693
	sbc a,d			;b694
	or a			;b695
	sbc a,d			;b696
	rst 0			;b697
	sbc a,d			;b698
	ret c			;b699
	sub a			;b69a
	daa			;b69b
	sbc a,b			;b69c
	ld e,a			;b69d
	sbc a,b			;b69e
	xor (hl)		;b69f
	sbc a,b			;b6a0
	and 098h		;b6a1
	adc a,d			;b6a3
	sbc a,c			;b6a4
	and (hl)		;b6a5
	sbc a,c			;b6a6
	cp d			;b6a7
	sbc a,c			;b6a8
	adc a,099h		;b6a9
	jp pe,01699h		;b6ab
	or h			;b6ae
	ex af,af'		;b6af
	or l			;b6b0
	ld c,b			;b6b1
	or l			;b6b2
	add a,h			;b6b3
	or l			;b6b4
	ret nz			;b6b5
	or l			;b6b6
	call m,038b5h		;b6b7
	or (hl)			;b6ba
	ld (hl),h		;b6bb
	or (hl)			;b6bc
	or b			;b6bd
	or (hl)			;b6be
	call pe,028b6h		;b6bf
	or a			;b6c2
	dec sp			;b6c3
	or a			;b6c4
	ld c,(hl)		;b6c5
	or a			;b6c6
	ld e,e			;b6c7
	or a			;b6c8
	ld l,(hl)		;b6c9
	or a			;b6ca
	add a,h			;b6cb
	or a			;b6cc
	sbc a,d			;b6cd
	or a			;b6ce
	xor d			;b6cf
	or a			;b6d0
	ret nz			;b6d1
	or a			;b6d2
	sub 0b7h		;b6d3
	and 0b7h		;b6d5
	or 0b7h			;b6d7
	ld b,0b8h		;b6d9
	inc e			;b6db
	cp b			;b6dc
	inc l			;b6dd
	cp b			;b6de
	inc a			;b6df
	cp b			;b6e0
	ld c,h			;b6e1
	cp b			;b6e2
	ld e,h			;b6e3
	cp b			;b6e4
	ld (hl),d		;b6e5
	cp b			;b6e6
	adc a,b			;b6e7
	cp b			;b6e8
	sbc a,(hl)		;b6e9
	cp b			;b6ea
	nop			;b6eb
	nop			;b6ec
	rlca			;b6ed
	ld b,080h		;b6ee
	ld (hl),d		;b6f0
	or (hl)			;b6f1
	or a			;b6f2
	xor h			;b6f3
	adc a,l			;b6f4
	and h			;b6f5
	xor (hl)		;b6f6
	xor a			;b6f7
	cp e			;b6f8
	ret nz			;b6f9
	adc a,h			;b6fa
	nop			;b6fb
	and a			;b6fc
	and (hl)		;b6fd
	call z,000a7h		;b6fe
	or e			;b701
	sbc a,c			;b702
	ld d,d			;b703
	ld d,e			;b704
	sbc a,b			;b705
	call nz,la700h		;b706
	and l			;b709
	cp (hl)			;b70a
	and a			;b70b
	nop			;b70c
	and h			;b70d
	xor (hl)		;b70e
	or b			;b70f
	cp h			;b710
	ret nz			;b711
	adc a,h			;b712
	add a,b			;b713
	ld (hl),d		;b714
	or h			;b715
	or l			;b716
	xor h			;b717
	adc a,l			;b718
	nop			;b719
	nop			;b71a
	rlca			;b71b
	ld b,080h		;b71c
	ld (hl),d		;b71e
	or (hl)			;b71f
	or a			;b720
	xor h			;b721
	adc a,l			;b722
	and h			;b723
	xor (hl)		;b724
	xor a			;b725
	cp e			;b726
	ret nz			;b727
	adc a,h			;b728
	nop			;b729
	xor b			;b72a
	and (hl)		;b72b
	call z,000a8h		;b72c
	nop			;b72f
	nop			;b730
	nop			;b731
	nop			;b732
	nop			;b733
	nop			;b734
	nop			;b735
	sub h			;b736
	and l			;b737
	cp (hl)			;b738
	sub h			;b739
	nop			;b73a
	and h			;b73b
	xor (hl)		;b73c
	or b			;b73d
	cp h			;b73e
	ret nz			;b73f
	adc a,h			;b740
	add a,b			;b741
	ld (hl),d		;b742
	or h			;b743
	or l			;b744
	xor h			;b745
	adc a,l			;b746
	nop			;b747
	nop			;b748
	dec b			;b749
	dec b			;b74a
	dec a			;b74b
	sbc a,l			;b74c
	sub e			;b74d
	sbc a,(hl)		;b74e
	ld b,c			;b74f
	ld a,054h		;b750
	ld d,a			;b752
	ld e,e			;b753
	ld b,d			;b754
	and b			;b755
	and c			;b756
	ld e,b			;b757
	ld e,c			;b758
	sub d			;b759
	sbc a,h			;b75a
	ld d,(hl)		;b75b
	ld l,(hl)		;b75c
	ld e,d			;b75d
	dec (hl)		;b75e
	ld (hl),038h		;b75f
	sub e			;b761
	sbc a,a			;b762
	scf			;b763
	nop			;b764
	nop			;b765
	dec b			;b766
	dec b			;b767
	dec a			;b768
	sbc a,l			;b769
	rst 0			;b76a
	sbc a,(hl)		;b76b
	ld b,c			;b76c
	ld a,054h		;b76d
	and d			;b76f
	ld e,e			;b770
	ld b,d			;b771
	sub d			;b772
	ld d,l			;b773
	ld e,b			;b774
	ld e,c			;b775
	sub d			;b776
	sbc a,h			;b777
	ld d,(hl)		;b778
	ld l,(hl)		;b779
	ld e,d			;b77a
	dec (hl)		;b77b
	ld (hl),038h		;b77c
	sub e			;b77e
	sbc a,a			;b77f
	scf			;b780
	nop			;b781
	nop			;b782
	dec b			;b783
	dec b			;b784
	dec a			;b785
	sbc a,l			;b786
	sub e			;b787
	sbc a,(hl)		;b788
	ld b,c			;b789
	ld a,054h		;b78a
	ld d,a			;b78c
	ld e,e			;b78d
	ld b,d			;b78e
	sub d			;b78f
	ld d,l			;b790
	ld e,b			;b791
	cp b			;b792
	and b			;b793
	sbc a,h			;b794
	ld d,(hl)		;b795
	ld l,(hl)		;b796
	ld e,d			;b797
	dec (hl)		;b798
	ld (hl),038h		;b799
	sub e			;b79b
	sbc a,a			;b79c
	scf			;b79d
	nop			;b79e
	nop			;b79f
	dec b			;b7a0
	dec b			;b7a1
	dec a			;b7a2
	sbc a,l			;b7a3
	sub e			;b7a4
	sbc a,(hl)		;b7a5
	ld b,c			;b7a6
	ld a,054h		;b7a7
	ld d,a			;b7a9
	ld e,e			;b7aa
	ld b,d			;b7ab
	sub d			;b7ac
	ld d,l			;b7ad
	ld e,b			;b7ae
	ld e,c			;b7af
	sub d			;b7b0
	sbc a,h			;b7b1
	ld d,(hl)		;b7b2
	jp 0355ah		;b7b3
	ld (hl),038h		;b7b6
	rst 0			;b7b8
	sbc a,a			;b7b9
	scf			;b7ba
	nop			;b7bb
	nop			;b7bc
	dec b			;b7bd
	dec b			;b7be
	dec a			;b7bf
	sbc a,l			;b7c0
	rst 0			;b7c1
	sbc a,(hl)		;b7c2
	ld b,c			;b7c3
	ld a,054h		;b7c4
	sub a			;b7c6
	ld e,e			;b7c7
	ld b,d			;b7c8
	and b			;b7c9
	cp c			;b7ca
	nop			;b7cb
	cp c			;b7cc
	and b			;b7cd
	sbc a,h			;b7ce
	ld d,(hl)		;b7cf
	ret z			;b7d0
	ld e,d			;b7d1
	dec (hl)		;b7d2
	ld (hl),038h		;b7d3
	rst 0			;b7d5
	sbc a,a			;b7d6
	scf			;b7d7
	nop			;b7d8
	nop			;b7d9
	dec b			;b7da
	rrca			;b7db
	nop			;b7dc
	nop			;b7dd
	nop			;b7de
	nop			;b7df
	nop			;b7e0
	nop			;b7e1
	nop			;b7e2
	nop			;b7e3
	nop			;b7e4
	ld bc,00302h		;b7e5
	inc b			;b7e8
	dec b			;b7e9
	ld b,000h		;b7ea
	nop			;b7ec
	nop			;b7ed
	nop			;b7ee
	ld de,01312h		;b7ef
	ld d,b			;b7f2
	ld d,c			;b7f3
	ld d,d			;b7f4
	ld d,d			;b7f5
	ld d,e			;b7f6
	ld d,h			;b7f7
	ld d,l			;b7f8
	ld d,(hl)		;b7f9
	nop			;b7fa
	ld d,017h		;b7fb
	ld h,c			;b7fd
	ld h,d			;b7fe
	ld h,e			;b7ff
	ld h,h			;b800
	ld h,l			;b801
lb802h:
	ld h,(hl)		;b802
	ld h,a			;b803
	ld l,b			;b804
	ld l,c			;b805
	ld l,d			;b806
	ld l,e			;b807
	ld d,d			;b808
	add hl,de		;b809
	ld (hl),l		;b80a
	ld a,(de)		;b80b
	halt			;b80c
	dec de			;b80d
	inc e			;b80e
	dec e			;b80f
	ld e,01fh		;b810
	jr nz,lb835h		;b812
	ld (02020h),hl		;b814
	ld (00026h),hl		;b817
	nop			;b81a
	nop			;b81b
	nop			;b81c
	daa			;b81d
	nop			;b81e
	nop			;b81f
	nop			;b820
	nop			;b821
	nop			;b822
	nop			;b823
	nop			;b824
	nop			;b825
	nop			;b826
	nop			;b827
	nop			;b828
	inc b			;b829
	dec c			;b82a
	rlca			;b82b
	ex af,af'		;b82c
	add hl,bc		;b82d
	ld a,(bc)		;b82e
	dec bc			;b82f
	dec b			;b830
	inc c			;b831
	dec c			;b832
	ld c,00fh		;b833
lb835h:
	djnz lb837h		;b835
lb837h:
	nop			;b837
	ld d,d			;b838
	ld d,a			;b839
	ld e,b			;b83a
	ld e,c			;b83b
	ld e,d			;b83c
	ld e,e			;b83d
	ld e,h			;b83e
	ld e,l			;b83f
	ld e,(hl)		;b840
	ld e,a			;b841
	ld h,b			;b842
	inc d			;b843
	dec d			;b844
	ld h,a			;b845
	ld l,h			;b846
	ld l,l			;b847
	ld l,(hl)		;b848
	ld h,a			;b849
	ld l,a			;b84a
	ld (hl),b		;b84b
	ld (hl),c		;b84c
	ld (hl),d		;b84d
	ld e,a			;b84e
	ld (hl),e		;b84f
	ld (hl),h		;b850
	jr lb875h		;b851
	inc hl			;b853
	nop			;b854
	inc hl			;b855
	jr nz,$+38		;b856
	ld (hl),a		;b858
	ld a,b			;b859
	ld a,c			;b85a
	ld a,d			;b85b
	ld a,e			;b85c
	ld a,h			;b85d
	nop			;b85e
	nop			;b85f
	nop			;b860
	dec b			;b861
	rrca			;b862
	ld h,000h		;b863
	nop			;b865
	nop			;b866
	nop			;b867
	daa			;b868
	nop			;b869
	nop			;b86a
	nop			;b86b
	nop			;b86c
	nop			;b86d
	nop			;b86e
	nop			;b86f
	nop			;b870
	nop			;b871
	add hl,de		;b872
	ld (hl),l		;b873
	ld a,(de)		;b874
lb875h:
	halt			;b875
	dec de			;b876
	inc e			;b877
	dec e			;b878
	ld e,01fh		;b879
	jr nz,lb89eh		;b87b
	rra			;b87d
	jr nz,lb8a0h		;b87e
	ld (01600h),hl		;b880
	rla			;b883
	ld h,c			;b884
	ld h,d			;b885
	ld h,e			;b886
	ld h,h			;b887
	ld h,l			;b888
	ld h,(hl)		;b889
	ld h,a			;b88a
	ld l,b			;b88b
	ld l,c			;b88c
	ld l,d			;b88d
	ld l,e			;b88e
	ld d,d			;b88f
	nop			;b890
	nop			;b891
	nop			;b892
	nop			;b893
	ld de,01312h		;b894
	ld d,b			;b897
lb898h:
	ld d,c			;b898
	ld d,d			;b899
	ld d,d			;b89a
	ld d,e			;b89b
	ld d,h			;b89c
	ld d,l			;b89d
lb89eh:
	ld d,(hl)		;b89e
	nop			;b89f
lb8a0h:
	nop			;b8a0
	nop			;b8a1
	nop			;b8a2
	nop			;b8a3
	nop			;b8a4
	nop			;b8a5
	nop			;b8a6
	nop			;b8a7
	ld bc,00302h		;b8a8
	inc b			;b8ab
	dec b			;b8ac
	ld b,000h		;b8ad
	nop			;b8af
	inc b			;b8b0
	dec c			;b8b1
	ld (00023h),hl		;b8b2
	inc hl			;b8b5
	jr nz,lb8dch		;b8b6
	ld (hl),a		;b8b8
	ld a,b			;b8b9
	ld a,c			;b8ba
	ld a,d			;b8bb
	ld a,e			;b8bc
	ld a,h			;b8bd
	nop			;b8be
	ld h,a			;b8bf
	ld l,h			;b8c0
	ld l,l			;b8c1
	ld l,(hl)		;b8c2
	ld h,a			;b8c3
	ld l,a			;b8c4
	ld (hl),b		;b8c5
	ld (hl),c		;b8c6
	ld (hl),d		;b8c7
	ld e,a			;b8c8
	ld (hl),e		;b8c9
	ld (hl),h		;b8ca
	jr lb91fh		;b8cb
	ld d,a			;b8cd
	ld e,b			;b8ce
	ld e,c			;b8cf
	ld e,d			;b8d0
	ld e,e			;b8d1
	ld e,h			;b8d2
	ld e,l			;b8d3
	ld e,(hl)		;b8d4
	ld e,a			;b8d5
	ld h,b			;b8d6
	inc d			;b8d7
	dec d			;b8d8
	rlca			;b8d9
	ex af,af'		;b8da
	add hl,bc		;b8db
lb8dch:
	ld a,(bc)		;b8dc
	dec bc			;b8dd
	dec b			;b8de
	inc c			;b8df
	dec c			;b8e0
	ld c,00fh		;b8e1
	djnz lb8e5h		;b8e3
lb8e5h:
	nop			;b8e5
	nop			;b8e6
	nop			;b8e7
	djnz lb8f4h		;b8e8
	nop			;b8ea
	nop			;b8eb
	nop			;b8ec
	nop			;b8ed
	nop			;b8ee
	nop			;b8ef
	nop			;b8f0
	dec h			;b8f1
lb8f2h:
	ld a,l			;b8f2
	nop			;b8f3
lb8f4h:
	ld a,(hl)		;b8f4
	ld a,a			;b8f5
	add a,b			;b8f6
	ld h,a			;b8f7
	add a,c			;b8f8
	add a,d			;b8f9
	add a,e			;b8fa
	add a,h			;b8fb
	add a,l			;b8fc
	ld a,(03b00h)		;b8fd
	add a,(hl)		;b900
	add a,a			;b901
	adc a,b			;b902
	adc a,c			;b903
	adc a,d			;b904
	adc a,e			;b905
	add a,l			;b906
	ld a,(00000h)		;b907
	jr z,lb898h		;b90a
	adc a,l			;b90c
	adc a,(hl)		;b90d
	ld (hl),h		;b90e
	adc a,a			;b90f
	sub b			;b910
	nop			;b911
	nop			;b912
	nop			;b913
	nop			;b914
	sub c			;b915
	sub d			;b916
	sub e			;b917
lb918h:
	sub h			;b918
	sub l			;b919
	sub (hl)		;b91a
	sub a			;b91b
	nop			;b91c
	nop			;b91d
	nop			;b91e
lb91fh:
	sbc a,b			;b91f
	sbc a,c			;b920
	sbc a,d			;b921
	sbc a,e			;b922
	sbc a,h			;b923
	sbc a,l			;b924
	sbc a,(hl)		;b925
	nop			;b926
	nop			;b927
	nop			;b928
	sbc a,a			;b929
	and b			;b92a
	and c			;b92b
	and d			;b92c
	and e			;b92d
	ld d,e			;b92e
	add hl,hl		;b92f
	nop			;b930
	nop			;b931
	nop			;b932
	and h			;b933
	and l			;b934
	and l			;b935
	and l			;b936
	and l			;b937
	and (hl)		;b938
	add hl,hl		;b939
	nop			;b93a
	nop			;b93b
	nop			;b93c
	and h			;b93d
	and l			;b93e
	and l			;b93f
	and l			;b940
	and l			;b941
	and (hl)		;b942
	add hl,hl		;b943
	nop			;b944
	nop			;b945
	nop			;b946
	and h			;b947
	cp c			;b948
	cp d			;b949
	and d			;b94a
	and e			;b94b
	ld d,e			;b94c
	add hl,hl		;b94d
	nop			;b94e
	nop			;b94f
	nop			;b950
	sbc a,b			;b951
	sbc a,d			;b952
	cp e			;b953
	cp e			;b954
	sbc a,e			;b955
	sbc a,l			;b956
	sbc a,(hl)		;b957
	nop			;b958
	nop			;b959
	nop			;b95a
	add a,a			;b95b
	sbc a,c			;b95c
	sbc a,c			;b95d
	sbc a,e			;b95e
	sub l			;b95f
	sub (hl)		;b960
	sub a			;b961
	nop			;b962
	nop			;b963
	jr z,lb8f2h		;b964
	cp b			;b966
	sub d			;b967
	add a,d			;b968
	adc a,a			;b969
	sub b			;b96a
	nop			;b96b
	nop			;b96c
	dec sp			;b96d
	add a,(hl)		;b96e
	add a,a			;b96f
	adc a,b			;b970
	adc a,c			;b971
lb972h:
	adc a,d			;b972
	adc a,e			;b973
	add a,l			;b974
	ld a,(07f7eh)		;b975
	add a,b			;b978
	ld h,a			;b979
	add a,c			;b97a
	add a,d			;b97b
	add a,e			;b97c
	add a,h			;b97d
	add a,l			;b97e
	ld a,(00000h)		;b97f
	nop			;b982
	nop			;b983
	nop			;b984
	nop			;b985
	nop			;b986
	dec h			;b987
	ld a,l			;b988
	nop			;b989
	nop			;b98a
	nop			;b98b
	ex af,af'		;b98c
	inc bc			;b98d
	nop			;b98e
	nop			;b98f
	jr z,lb992h		;b990
lb992h:
	ld l,0a7h		;b992
	cpl			;b994
	xor b			;b995
	xor c			;b996
	ld hl,(0cb36h)		;b997
	ld hl,(0cb36h)		;b99a
	cpl			;b99d
	xor b			;b99e
	xor c			;b99f
	nop			;b9a0
	ld l,0a7h		;b9a1
	nop			;b9a3
	nop			;b9a4
	jr z,lb9a7h		;b9a5
lb9a7h:
	ld bc,00208h		;b9a7
	nop			;b9aa
	jr z,lb9ddh		;b9ab
	xor l			;b9ad
	xor (hl)		;b9ae
	xor a			;b9af
	or b			;b9b0
	res 6,b			;b9b1
	res 5,(hl)		;b9b3
	xor a			;b9b5
	jr nc,$-81		;b9b6
	nop			;b9b8
	jr z,lb9bbh		;b9b9
lb9bbh:
	ld bc,00208h		;b9bb
	dec (hl)		;b9be
	jr c,lb972h		;b9bf
	or d			;b9c1
	or e			;b9c2
	or h			;b9c3
	or l			;b9c4
	res 6,l			;b9c5
	res 6,e			;b9c7
	or h			;b9c9
	or c			;b9ca
	or d			;b9cb
	dec (hl)		;b9cc
	jr c,lb9cfh		;b9cd
lb9cfh:
	nop			;b9cf
	ex af,af'		;b9d0
	inc bc			;b9d1
	nop			;b9d2
	ld (03137h),a		;b9d3
	or (hl)			;b9d6
	or a			;b9d7
	inc sp			;b9d8
	inc (hl)		;b9d9
	call z,00000h		;b9da
lb9ddh:
	rlc b			;b9dd
	nop			;b9df
	defb 0cbh,033h ;sli e	;b9e0
	inc (hl)		;b9e2
	call z,sub_b631h	;b9e3
	or a			;b9e6
	nop			;b9e7
	ld (00037h),a		;b9e8
	nop			;b9eb
	ex af,af'		;b9ec
	inc bc			;b9ed
	xor d			;b9ee
	dec hl			;b9ef
	inc l			;b9f0
	dec l			;b9f1
	xor e			;b9f2
	xor h			;b9f3
	nop			;b9f4
	add hl,sp		;b9f5
	call 00000h		;b9f6
	rlc b			;b9f9
	nop			;b9fb
	rlc b			;b9fc
	add hl,sp		;b9fe
	call sub_ab2dh		;b9ff
	xor h			;ba02
	xor d			;ba03
	dec hl			;ba04
	inc l			;ba05
	nop			;ba06
	nop			;ba07
	ld bc,00001h		;ba08
	nop			;ba0b
	nop			;ba0c
	ld c,001h		;ba0d
	call nz,000c5h		;ba0f
	nop			;ba12
	nop			;ba13
	nop			;ba14
	nop			;ba15
	nop			;ba16
	nop			;ba17
	nop			;ba18
	nop			;ba19
	nop			;ba1a
	ret			;ba1b
	jp z,00000h		;ba1c
	ld c,001h		;ba1f
	call nz,0c6c5h		;ba21
	rst 0			;ba24
	nop			;ba25
	nop			;ba26
	nop			;ba27
	nop			;ba28
	nop			;ba29
	nop			;ba2a
	rst 0			;ba2b
	ret z			;ba2c
	ret			;ba2d
	jp z,00000h		;ba2e
	ld c,001h		;ba31
	call nz,0c6c5h		;ba33
	rst 0			;ba36
	ret z			;ba37
	ret			;ba38
	nop			;ba39
	nop			;ba3a
	push bc			;ba3b
	add a,0c7h		;ba3c
	ret z			;ba3e
	ret			;ba3f
	jp z,00000h		;ba40
	ld c,001h		;ba43
	call nz,0c6c5h		;ba45
	rst 0			;ba48
	ret z			;ba49
	ret			;ba4a
	jp z,0c5c4h		;ba4b
	add a,0c7h		;ba4e
	ret z			;ba50
	ret			;ba51
	jp z,00000h		;ba52
	ld c,001h		;ba55
	jp z,0c5c4h		;ba57
	add a,0c7h		;ba5a
	ret z			;ba5c
	ret			;ba5d
	jp z,0c5c4h		;ba5e
	add a,0c7h		;ba61
	ret z			;ba63
	ret			;ba64
	nop			;ba65
	nop			;ba66
	ld c,001h		;ba67
	ret			;ba69
	jp z,0c5c4h		;ba6a
	add a,0c7h		;ba6d
	ret z			;ba6f
	ret			;ba70
	jp z,0c5c4h		;ba71
	add a,0c7h		;ba74
	ret z			;ba76
	nop			;ba77
	nop			;ba78
	inc c			;ba79
	ld bc,000c6h		;ba7a
	nop			;ba7d
	nop			;ba7e
	nop			;ba7f
	nop			;ba80
	nop			;ba81
	nop			;ba82
	nop			;ba83
	nop			;ba84
	nop			;ba85
	jp z,00000h		;ba86
	inc c			;ba89
	ld bc,0c7c6h		;ba8a
	ret z			;ba8d
	nop			;ba8e
	nop			;ba8f
	nop			;ba90
	nop			;ba91
	nop			;ba92
	nop			;ba93
	ret z			;ba94
	ret			;ba95
	jp z,00000h		;ba96
	inc c			;ba99
	ld bc,0c7c6h		;ba9a
	ret z			;ba9d
	ret			;ba9e
	jp z,00000h		;ba9f
	add a,0c7h		;baa2
lbaa4h:
	ret z			;baa4
	ret			;baa5
	jp z,00000h		;baa6
	inc c			;baa9
	ld bc,0c7c6h		;baaa
	ret z			;baad
	ret			;baae
	jp z,0c5c4h		;baaf
	add a,0c7h		;bab2
	ret z			;bab4
	ret			;bab5
	jp z,00000h		;bab6
	inc c			;bab9
	ld bc,0c6c5h		;baba
	rst 0			;babd
	ret z			;babe
	ret			;babf
	jp z,0c5c4h		;bac0
	add a,0c7h		;bac3
	ret z			;bac5
	ret			;bac6
	nop			;bac7
	nop			;bac8
	inc c			;bac9
	ld bc,0c5c4h		;baca
	add a,0c7h		;bacd
	ret z			;bacf
	ret			;bad0
	jp z,0c5c4h		;bad1
	add a,0c7h		;bad4
	ret z			;bad6
	dec b			;bad7
	sbc a,e			;bad8
	add hl,de		;bad9
	sbc a,e			;bada
	dec l			;badb
	sbc a,e			;badc
	ld b,c			;badd
	sbc a,e			;bade
	ld d,l			;badf
	sbc a,e			;bae0
	ld l,c			;bae1
	sbc a,e			;bae2
	ld a,l			;bae3
	sbc a,e			;bae4
	adc a,l			;bae5
	sbc a,e			;bae6
	sbc a,c			;bae7
	sbc a,e			;bae8
	and c			;bae9
	sbc a,e			;baea
	or l			;baeb
	sbc a,e			;baec
	ret			;baed
	sbc a,e			;baee
	pop af			;baef
	sbc a,d			;baf0
	inc bc			;baf1
	defb 0fdh,002h,008h ;illegal sequence	;baf2
	jr nz,lbaa4h		;baf5
	or e			;baf7
	dec hl			;baf8
	ld d,(hl)		;baf9
	cp e			;bafa
	or l			;bafb
	ld c,e			;bafc
	rla			;bafd
	inc h			;bafe
	inc e			;baff
	ld (0474dh),hl		;bb00
	ld c,a			;bb03
	ld b,d			;bb04
	nop			;bb05
	nop			;bb06
	inc b			;bb07
	inc b			;bb08
	sub h			;bb09
	sbc a,e			;bb0a
	sbc a,h			;bb0b
	sub h			;bb0c
	sub l			;bb0d
	sub (hl)		;bb0e
	sub (hl)		;bb0f
	sbc a,(hl)		;bb10
	sub a			;bb11
	sbc a,b			;bb12
	and c			;bb13
	and b			;bb14
	sbc a,c			;bb15
	sbc a,d			;bb16
	and e			;bb17
	and d			;bb18
	nop			;bb19
	nop			;bb1a
	inc b			;bb1b
	inc b			;bb1c
	xor e			;bb1d
	xor h			;bb1e
	or l			;bb1f
	or h			;bb20
	xor c			;bb21
	xor d			;bb22
	or e			;bb23
	or d			;bb24
	and a			;bb25
	xor b			;bb26
	xor b			;bb27
	or b			;bb28
	and (hl)		;bb29
	xor l			;bb2a
	xor (hl)		;bb2b
	and (hl)		;bb2c
	nop			;bb2d
	nop			;bb2e
	ex af,af'		;bb2f
	ld (bc),a		;bb30
	call z,000cdh		;bb31
	nop			;bb34
	nop			;bb35
	nop			;bb36
	nop			;bb37
	nop			;bb38
	nop			;bb39
	nop			;bb3a
	nop			;bb3b
	nop			;bb3c
	nop			;bb3d
	nop			;bb3e
	call z,000cdh		;bb3f
	nop			;bb42
	ex af,af'		;bb43
	ld (bc),a		;bb44
	call z,0cccdh		;bb45
	call 00000h		;bb48
	nop			;bb4b
	nop			;bb4c
	nop			;bb4d
	nop			;bb4e
	nop			;bb4f
	nop			;bb50
	call z,0cccdh		;bb51
	call 00000h		;bb54
	ex af,af'		;bb57
	ld (bc),a		;bb58
	call z,0cccdh		;bb59
	call 0cdcch		;bb5c
	nop			;bb5f
	nop			;bb60
	nop			;bb61
	nop			;bb62
	call z,0cccdh		;bb63
	call 0cdcch		;bb66
	nop			;bb69
	nop			;bb6a
	ex af,af'		;bb6b
	ld (bc),a		;bb6c
	call z,0cccdh		;bb6d
	call 0cdcch		;bb70
	call z,0cccdh		;bb73
	call 0cdcch		;bb76
	call z,0cccdh		;bb79
	call 00001h		;bb7c
	ld b,002h		;bb7f
	call z,0cccdh		;bb81
	call 0cdcch		;bb84
	call z,0cccdh		;bb87
	call 0cdcch		;bb8a
	ld (bc),a		;bb8d
	nop			;bb8e
	inc b			;bb8f
	ld (bc),a		;bb90
	call z,0cccdh		;bb91
	call 0cdcch		;bb94
	call z,003cdh		;bb97
	nop			;bb9a
	ld (bc),a		;bb9b
	ld (bc),a		;bb9c
lbb9dh:
	call z,0cccdh		;bb9d
	call 00000h		;bba0
lbba3h:
	ex af,af'		;bba3
	ld (bc),a		;bba4
	add a,b			;bba5
	add a,e			;bba6
	nop			;bba7
	nop			;bba8
	nop			;bba9
	nop			;bbaa
	nop			;bbab
	nop			;bbac
	nop			;bbad
	nop			;bbae
	nop			;bbaf
	nop			;bbb0
	nop			;bbb1
	nop			;bbb2
	add a,b			;bbb3
	add a,e			;bbb4
	nop			;bbb5
	nop			;bbb6
	ex af,af'		;bbb7
	ld (bc),a		;bbb8
	add a,c			;bbb9
	add a,h			;bbba
	nop			;bbbb
	nop			;bbbc
	nop			;bbbd
	nop			;bbbe
	nop			;bbbf
	nop			;bbc0
	nop			;bbc1
	nop			;bbc2
	nop			;bbc3
	nop			;bbc4
	nop			;bbc5
	nop			;bbc6
	add a,c			;bbc7
	add a,h			;bbc8
	nop			;bbc9
	nop			;bbca
	ex af,af'		;bbcb
	ld (bc),a		;bbcc
	add a,d			;bbcd
	add a,l			;bbce
	nop			;bbcf
	nop			;bbd0
	nop			;bbd1
	nop			;bbd2
	nop			;bbd3
	nop			;bbd4
	nop			;bbd5
	nop			;bbd6
	nop			;bbd7
	nop			;bbd8
	nop			;bbd9
	nop			;bbda
	add a,d			;bbdb
	add a,l			;bbdc
	and h			;bbdd
	cp c			;bbde
	inc c			;bbdf
	cp d			;bbe0
	jr lbb9dh		;bbe1
	inc h			;bbe3
	cp d			;bbe4
	jr nc,$-68		;bbe5
	jr c,lbba3h		;bbe7
	ld b,b			;bbe9
	cp d			;bbea
	ld d,(hl)		;bbeb
	cp d			;bbec
	ld l,b			;bbed
	cp d			;bbee
	ld a,h			;bbef
	cp d			;bbf0
	sub b			;bbf1
	cp d			;bbf2
	sbc a,l			;bbf3
	cp d			;bbf4
	or e			;bbf5
	cp d			;bbf6
	ret			;bbf7
	cp d			;bbf8
	ret c			;bbf9
	cp d			;bbfa
	jp p,00cbah		;bbfb
	cp e			;bbfe
	ld c,e			;bbff
	sbc a,l			;bc00
	ld a,a			;bc01
	sbc a,l			;bc02
	or e			;bc03
	sbc a,l			;bc04
	rst 28h			;bc05
	sbc a,l			;bc06
	inc bc			;bc07
	sbc a,(hl)		;bc08
	cpl			;bc09
	sbc a,(hl)		;bc0a
	ld h,e			;bc0b
	sbc a,(hl)		;bc0c
	sbc a,a			;bc0d
	sbc a,(hl)		;bc0e
	ex (sp),hl		;bc0f
	and (hl)		;bc10
	ld b,c			;bc11
	and a			;bc12
	ld a,a			;bc13
	sbc a,h			;bc14
	jp 0079ch		;bc15
	sbc a,l			;bc18
	ccf			;bc19
	sbc a,h			;bc1a
	ld b,a			;bc1b
	sbc a,h			;bc1c
	ld c,a			;bc1d
	sbc a,h			;bc1e
	ld d,a			;bc1f
	sbc a,h			;bc20
	ld e,a			;bc21
	sbc a,h			;bc22
	ld h,a			;bc23
	sbc a,h			;bc24
	ld l,a			;bc25
	sbc a,h			;bc26
	ld (hl),a		;bc27
	sbc a,h			;bc28
	inc d			;bc29
	cp e			;bc2a
	ret nz			;bc2b
	cp e			;bc2c
	add a,h			;bc2d
	cp h			;bc2e
	ld h,b			;bc2f
	cp l			;bc30
	or d			;bc31
	cp l			;bc32
	inc b			;bc33
	cp (hl)			;bc34
	ld d,(hl)		;bc35
	cp (hl)			;bc36
	xor b			;bc37
	cp (hl)			;bc38
	jp m,04cbeh		;bc39
	cp a			;bc3c
	sbc a,(hl)		;bc3d
	cp a			;bc3e
	nop			;bc3f
	nop			;bc40
	ld (bc),a		;bc41
	ld (bc),a		;bc42
	cp (hl)			;bc43
	cp a			;bc44
	ld bc,00002h		;bc45
	nop			;bc48
	ld (bc),a		;bc49
	ld (bc),a		;bc4a
	ret nz			;bc4b
	pop bc			;bc4c
	ld bc,00002h		;bc4d
	nop			;bc50
	ld (bc),a		;bc51
	ld (bc),a		;bc52
	jp 001c2h		;bc53
	ld (bc),a		;bc56
	nop			;bc57
	nop			;bc58
	ld (bc),a		;bc59
	ld (bc),a		;bc5a
	push bc			;bc5b
	call nz,00201h		;bc5c
	nop			;bc5f
	nop			;bc60
	ld (bc),a		;bc61
	ld (bc),a		;bc62
	inc bc			;bc63
	inc b			;bc64
	add a,0c7h		;bc65
	nop			;bc67
	nop			;bc68
	ld (bc),a		;bc69
	ld (bc),a		;bc6a
	inc bc			;bc6b
	inc b			;bc6c
	ret z			;bc6d
	ret			;bc6e
	nop			;bc6f
	nop			;bc70
	ld (bc),a		;bc71
	ld (bc),a		;bc72
	inc bc			;bc73
	inc b			;bc74
	set 1,d			;bc75
	nop			;bc77
	nop			;bc78
	ld (bc),a		;bc79
	ld (bc),a		;bc7a
	inc bc			;bc7b
	inc b			;bc7c
	call 0fdcch		;bc7d
	defb 0fdh,008h,008h ;illegal sequence	;bc80
	nop			;bc83
	xor c			;bc84
	xor h			;bc85
	ld b,e			;bc86
	ld b,e			;bc87
	cp l			;bc88
	cp d			;bc89
	nop			;bc8a
	or l			;bc8b
	xor b			;bc8c
	ld b,(hl)		;bc8d
	ld b,h			;bc8e
	ld b,h			;bc8f
	ld b,(hl)		;bc90
	cp c			;bc91
	xor (hl)		;bc92
	ld a,054h		;bc93
	ld d,l			;bc95
	ld b,l			;bc96
	ld b,l			;bc97
	ld d,l			;bc98
	ld d,h			;bc99
	or b			;bc9a
	ld c,c			;bc9b
	ld b,b			;bc9c
	ld c,e			;bc9d
	inc de			;bc9e
	cpl			;bc9f
	ld c,e			;bca0
	ld b,b			;bca1
	ld l,h			;bca2
	nop			;bca3
	ld c,c			;bca4
	ld c,e			;bca5
	dec d			;bca6
	ld sp,0404bh		;bca7
	ld l,h			;bcaa
	nop			;bcab
	nop			;bcac
	scf			;bcad
	ld b,d			;bcae
	ld b,d			;bcaf
	ld c,d			;bcb0
	ld b,a			;bcb1
	or h			;bcb2
	nop			;bcb3
	nop			;bcb4
	nop			;bcb5
	jr nc,lbcf9h		;bcb6
	ld c,b			;bcb8
	or (hl)			;bcb9
	or a			;bcba
	nop			;bcbb
	nop			;bcbc
	nop			;bcbd
	nop			;bcbe
	jr nc,lbce9h		;bcbf
	cp b			;bcc1
	nop			;bcc2
	defb 0fdh,0fdh,008h ;illegal sequence	;bcc3
	ex af,af'		;bcc6
	nop			;bcc7
	xor c			;bcc8
	xor h			;bcc9
	ld b,e			;bcca
	ld b,e			;bccb
	cp l			;bccc
	cp d			;bccd
	nop			;bcce
	sbc a,l			;bccf
	xor b			;bcd0
	ld b,(hl)		;bcd1
	ld b,h			;bcd2
	ld b,h			;bcd3
	ld b,(hl)		;bcd4
	cp c			;bcd5
	and h			;bcd6
	sbc a,a			;bcd7
	ld d,h			;bcd8
	ld d,l			;bcd9
	ld b,l			;bcda
	ld b,l			;bcdb
	ld d,l			;bcdc
	ld d,h			;bcdd
	ld (0406ch),hl		;bcde
	ld c,e			;bce1
	inc de			;bce2
	cpl			;bce3
	ld c,e			;bce4
	ld b,b			;bce5
	ld l,a			;bce6
	ld l,h			;bce7
	ld b,b			;bce8
lbce9h:
	ld c,e			;bce9
	dec d			;bcea
	ld sp,06f4bh		;bceb
	nop			;bcee
	and e			;bcef
	ld b,a			;bcf0
	ld c,d			;bcf1
	ld b,d			;bcf2
	ld b,d			;bcf3
	dec de			;bcf4
	nop			;bcf5
	nop			;bcf6
	and (hl)		;bcf7
	and l			;bcf8
lbcf9h:
	ld c,b			;bcf9
	ld b,c			;bcfa
	inc d			;bcfb
	nop			;bcfc
	nop			;bcfd
	nop			;bcfe
	nop			;bcff
	and a			;bd00
	inc c			;bd01
	inc d			;bd02
	nop			;bd03
	nop			;bd04
	nop			;bd05
	nop			;bd06
	defb 0fdh,0fdh,008h ;illegal sequence	;bd07
	ex af,af'		;bd0a
	nop			;bd0b
	nop			;bd0c
	nop			;bd0d
	dec bc			;bd0e
	ld b,e			;bd0f
	cp l			;bd10
	cp d			;bd11
	nop			;bd12
	nop			;bd13
	nop			;bd14
	dec bc			;bd15
	ld b,h			;bd16
	ld b,h			;bd17
	ld b,(hl)		;bd18
	cp c			;bd19
	xor (hl)		;bd1a
	nop			;bd1b
	dec bc			;bd1c
	ld d,l			;bd1d
	ld b,l			;bd1e
	ld b,l			;bd1f
	ld d,l			;bd20
	ld d,h			;bd21
	or b			;bd22
	dec bc			;bd23
	ld b,b			;bd24
	ld c,e			;bd25
	inc de			;bd26
	cpl			;bd27
	ld c,e			;bd28
	ld b,b			;bd29
	ld l,h			;bd2a
	ld l,h			;bd2b
	ld b,b			;bd2c
	ld c,e			;bd2d
	dec d			;bd2e
	ld sp,0404bh		;bd2f
	ld l,h			;bd32
	and e			;bd33
	ld b,a			;bd34
	ld c,d			;bd35
	ld b,d			;bd36
	ld b,d			;bd37
	ld c,d			;bd38
	ld b,a			;bd39
	or h			;bd3a
	and (hl)		;bd3b
	and l			;bd3c
	ld c,b			;bd3d
	ld b,c			;bd3e
	ld b,c			;bd3f
	ld c,b			;bd40
	or (hl)			;bd41
	or a			;bd42
	nop			;bd43
	and (hl)		;bd44
	sbc a,h			;bd45
	ld l,l			;bd46
	ld l,l			;bd47
	xor l			;bd48
	or a			;bd49
	nop			;bd4a
	nop			;bd4b
	nop			;bd4c
	dec b			;bd4d
	ex af,af'		;bd4e
	nop			;bd4f
	or l			;bd50
	jr nc,lbd5fh		;bd51
	dec de			;bd53
	ld sp,000b7h		;bd54
	nop			;bd57
	cp c			;bd58
	ld (03e2fh),hl		;bd59
	scf			;bd5c
	sbc a,h			;bd5d
	nop			;bd5e
lbd5fh:
	nop			;bd5f
	cp b			;bd60
	ld d,h			;bd61
	ld d,l			;bd62
	ld l,l			;bd63
	ld l,h			;bd64
	sbc a,l			;bd65
	nop			;bd66
	nop			;bd67
	or h			;bd68
	ld b,007h		;bd69
	dec d			;bd6b
	inc d			;bd6c
	or (hl)			;bd6d
	nop			;bd6e
	nop			;bd6f
	nop			;bd70
	cp d			;bd71
	dec b			;bd72
	inc de			;bd73
	sbc a,a			;bd74
	nop			;bd75
	nop			;bd76
	nop			;bd77
	nop			;bd78
	nop			;bd79
	nop			;bd7a
	nop			;bd7b
	nop			;bd7c
	nop			;bd7d
	nop			;bd7e
	nop			;bd7f
	nop			;bd80
	ld b,008h		;bd81
	or l			;bd83
	ld c,l			;bd84
	ld e,a			;bd85
	ld h,b			;bd86
	ld h,c			;bd87
	ld e,a			;bd88
	ld l,a			;bd89
	or a			;bd8a
	nop			;bd8b
	or l			;bd8c
	jr nc,lbd9bh		;bd8d
	dec de			;bd8f
	ld sp,000b7h		;bd90
	nop			;bd93
	cp c			;bd94
	ld (03e2fh),hl		;bd95
	scf			;bd98
	sbc a,h			;bd99
	nop			;bd9a
lbd9bh:
	nop			;bd9b
	cp b			;bd9c
	ld d,h			;bd9d
	ld d,l			;bd9e
	ld l,l			;bd9f
	ld l,h			;bda0
	sbc a,l			;bda1
	nop			;bda2
	nop			;bda3
	or h			;bda4
	ld b,007h		;bda5
	dec d			;bda7
	inc d			;bda8
	or (hl)			;bda9
	nop			;bdaa
	nop			;bdab
	nop			;bdac
	cp d			;bdad
	dec b			;bdae
	inc de			;bdaf
	sbc a,a			;bdb0
	nop			;bdb1
	nop			;bdb2
	nop			;bdb3
	nop			;bdb4
	rlca			;bdb5
	ex af,af'		;bdb6
	or l			;bdb7
	ld c,l			;bdb8
	ld e,a			;bdb9
	ld h,b			;bdba
	ld h,c			;bdbb
	ld e,a			;bdbc
	ld l,a			;bdbd
	or a			;bdbe
	nop			;bdbf
	or l			;bdc0
	jr nc,lbdcfh		;bdc1
	dec de			;bdc3
	ld sp,000b7h		;bdc4
	nop			;bdc7
	nop			;bdc8
	and a			;bdc9
	xor b			;bdca
	xor c			;bdcb
	cp l			;bdcc
	nop			;bdcd
	nop			;bdce
lbdcfh:
	nop			;bdcf
	cp c			;bdd0
	and e			;bdd1
	and h			;bdd2
	and l			;bdd3
	and (hl)		;bdd4
	sbc a,h			;bdd5
	nop			;bdd6
	nop			;bdd7
	ld c,d			;bdd8
	ld c,e			;bdd9
	ld b,a			;bdda
	ld b,c			;bddb
	ld b,l			;bddc
	ld b,h			;bddd
	nop			;bdde
	nop			;bddf
	ld c,b			;bde0
	ld b,(hl)		;bde1
	dec hl			;bde2
	add hl,hl		;bde3
	ld b,b			;bde4
	ld b,d			;bde5
	nop			;bde6
	nop			;bde7
	or h			;bde8
	ld c,c			;bde9
	ld hl,(04328h)		;bdea
	or (hl)			;bded
	nop			;bdee
	nop			;bdef
	nop			;bdf0
	ld (bc),a		;bdf1
	ex af,af'		;bdf2
	nop			;bdf3
	or l			;bdf4
	jr nc,lbe03h		;bdf5
	dec de			;bdf7
	ld sp,000b7h		;bdf8
	nop			;bdfb
	nop			;bdfc
	xor h			;bdfd
	xor l			;bdfe
	xor (hl)		;bdff
	or b			;be00
	nop			;be01
	nop			;be02
lbe03h:
	ld (bc),a		;be03
	nop			;be04
	dec b			;be05
	ex af,af'		;be06
	nop			;be07
	nop			;be08
	cp d			;be09
	dec b			;be0a
	inc de			;be0b
	sbc a,a			;be0c
	nop			;be0d
	nop			;be0e
	nop			;be0f
	or h			;be10
	ld b,007h		;be11
	dec d			;be13
	inc d			;be14
	or (hl)			;be15
	nop			;be16
	nop			;be17
	cp b			;be18
	ld d,h			;be19
	ld d,l			;be1a
	ld l,l			;be1b
	ld l,h			;be1c
	sbc a,l			;be1d
	nop			;be1e
	nop			;be1f
	cp c			;be20
	ld (03e2fh),hl		;be21
	scf			;be24
	sbc a,h			;be25
	nop			;be26
	nop			;be27
	or l			;be28
	jr nc,lbe37h		;be29
	dec de			;be2b
	ld sp,000b7h		;be2c
	ld bc,00600h		;be2f
	ex af,af'		;be32
	nop			;be33
	nop			;be34
	cp d			;be35
	dec b			;be36
lbe37h:
	inc de			;be37
	sbc a,a			;be38
	nop			;be39
	nop			;be3a
	nop			;be3b
	or h			;be3c
	ld b,007h		;be3d
	dec d			;be3f
	inc d			;be40
	or (hl)			;be41
	nop			;be42
	nop			;be43
	cp b			;be44
	ld d,h			;be45
	ld d,l			;be46
	ld l,l			;be47
	ld l,h			;be48
	sbc a,l			;be49
	nop			;be4a
	nop			;be4b
	cp c			;be4c
	ld (03e2fh),hl		;be4d
	scf			;be50
	sbc a,h			;be51
	nop			;be52
	nop			;be53
	or l			;be54
	jr nc,lbe63h		;be55
	dec de			;be57
	ld sp,000b7h		;be58
	or l			;be5b
	ld c,l			;be5c
	ld e,a			;be5d
	ld h,b			;be5e
	ld h,c			;be5f
	ld e,a			;be60
	ld l,a			;be61
	or a			;be62
lbe63h:
	nop			;be63
	nop			;be64
	rlca			;be65
	ex af,af'		;be66
	nop			;be67
	or h			;be68
	ld c,c			;be69
	ld hl,(04328h)		;be6a
	or (hl)			;be6d
	nop			;be6e
	nop			;be6f
	ld c,b			;be70
	ld b,(hl)		;be71
	dec hl			;be72
	add hl,hl		;be73
	ld b,b			;be74
	ld b,d			;be75
	nop			;be76
	nop			;be77
	ld c,d			;be78
	ld c,e			;be79
	ld b,a			;be7a
	ld b,c			;be7b
	ld b,l			;be7c
	ld b,h			;be7d
	nop			;be7e
	nop			;be7f
	cp c			;be80
	and e			;be81
	and h			;be82
	and l			;be83
	and (hl)		;be84
	sbc a,h			;be85
	nop			;be86
	nop			;be87
	nop			;be88
	and a			;be89
	xor b			;be8a
	xor c			;be8b
	cp l			;be8c
	nop			;be8d
	nop			;be8e
	nop			;be8f
	or l			;be90
	jr nc,lbe9fh		;be91
	dec de			;be93
	ld sp,000b7h		;be94
	or l			;be97
	ld c,l			;be98
	ld e,a			;be99
	ld h,b			;be9a
	ld h,c			;be9b
	ld e,a			;be9c
	ld l,a			;be9d
	or a			;be9e
lbe9fh:
	dec b			;be9f
	nop			;bea0
	ld (bc),a		;bea1
	ex af,af'		;bea2
	nop			;bea3
	nop			;bea4
	xor h			;bea5
	xor l			;bea6
	xor (hl)		;bea7
	or b			;bea8
	nop			;bea9
	nop			;beaa
	nop			;beab
	or l			;beac
	jr nc,lbebbh		;bead
	dec de			;beaf
	ld sp,000b7h		;beb0
	dec l			;beb3
	and d			;beb4
	ld b,b			;beb5
	and d			;beb6
	or l			;beb7
	and c			;beb8
	pop af			;beb9
	and c			;beba
lbebbh:
	ld d,e			;bebb
	and d			;bebc
	rlca			;bebd
	and e			;bebe
	ld b,e			;bebf
	and e			;bec0
	ld a,a			;bec1
	and e			;bec2
	ld b,e			;bec3
	and h			;bec4
	ld e,a			;bec5
	and h			;bec6
	ld a,e			;bec7
	and h			;bec8
	sub a			;bec9
	and h			;beca
	or e			;becb
	and h			;becc
	cp e			;becd
	and h			;bece
	jp 0cba4h		;becf
	and h			;bed2
	rst 10h			;bed3
	and h			;bed4
	rst 20h			;bed5
	and h			;bed6
	rst 30h			;bed7
	and h			;bed8
	dec de			;bed9
	and l			;beda
	inc de			;bedb
	and l			;bedc
	dec bc			;bedd
	and l			;bede
	inc hl			;bedf
	and l			;bee0
	dec hl			;bee1
	and l			;bee2
	inc sp			;bee3
	and l			;bee4
	dec sp			;bee5
	and l			;bee6
	ld b,e			;bee7
	and l			;bee8
	ld c,a			;bee9
	and l			;beea
	ld e,a			;beeb
	and l			;beec
	ld (hl),e		;beed
	and l			;beee
	adc a,e			;beef
	and l			;bef0
	and a			;bef1
	and l			;bef2
	rst 0			;bef3
	and l			;bef4
	rst 20h			;bef5
	and l			;bef6
	rlca			;bef7
	and (hl)		;bef8
	inc de			;bef9
	and (hl)		;befa
	rra			;befb
	and (hl)		;befc
	inc de			;befd
	and (hl)		;befe
	rlca			;beff
	and (hl)		;bf00
	jp (hl)			;bf01
	and b			;bf02
	add hl,bc		;bf03
	and c			;bf04
	add hl,hl		;bf05
	and c			;bf06
	ld c,c			;bf07
	and c			;bf08
	ld a,h			;bf09
	and (hl)		;bf0a
	adc a,a			;bf0b
	and (hl)		;bf0c
	xor a			;bf0d
	and (hl)		;bf0e
	ex (sp),hl		;bf0f
	and (hl)		;bf10
	ld b,c			;bf11
	and a			;bf12
	scf			;bf13
	sbc a,a			;bf14
	inc a			;bf15
	sbc a,a			;bf16
	ld b,l			;bf17
	sbc a,a			;bf18
	ld d,e			;bf19
	sbc a,a			;bf1a
	ld h,(hl)		;bf1b
	sbc a,a			;bf1c
	ld a,(hl)		;bf1d
	sbc a,a			;bf1e
	sbc a,e			;bf1f
	sbc a,a			;bf20
	cp l			;bf21
	sbc a,a			;bf22
	call po,0109fh		;bf23
	and b			;bf26
	scf			;bf27
	sbc a,a			;bf28
	ld b,c			;bf29
	and b			;bf2a
	ld c,d			;bf2b
	and b			;bf2c
	ld e,b			;bf2d
	and b			;bf2e
	ld l,e			;bf2f
	and b			;bf30
	add a,e			;bf31
	and b			;bf32
	and b			;bf33
	and b			;bf34
	jp nz,000a0h		;bf35
	nop			;bf38
	ld bc,00001h		;bf39
	rst 38h			;bf3c
	nop			;bf3d
	ld bc,00205h		;bf3e
	xor (hl)		;bf41
	xor a			;bf42
	sbc a,c			;bf43
	sbc a,d			;bf44
	cp 000h			;bf45
	ld (bc),a		;bf47
	dec b			;bf48
	ld (bc),a		;bf49
	xor (hl)		;bf4a
	xor a			;bf4b
	sbc a,c			;bf4c
	sbc a,d			;bf4d
	dec de			;bf4e
	sub a			;bf4f
	sbc a,b			;bf50
	sbc a,e			;bf51
	sbc a,h			;bf52
	defb 0fdh,000h,003h ;illegal sequence	;bf53
	dec b			;bf56
	ld (bc),a		;bf57
	xor (hl)		;bf58
	xor a			;bf59
	sbc a,c			;bf5a
	sbc a,d			;bf5b
	dec de			;bf5c
	sub a			;bf5d
	sbc a,b			;bf5e
	sbc a,e			;bf5f
	sbc a,h			;bf60
	inc e			;bf61
	sbc a,l			;bf62
	sbc a,(hl)		;bf63
	sbc a,c			;bf64
	sbc a,d			;bf65
	call m,00400h		;bf66
	dec b			;bf69
	ld (bc),a		;bf6a
	xor (hl)		;bf6b
	xor a			;bf6c
	sbc a,c			;bf6d
	sbc a,d			;bf6e
	dec de			;bf6f
	sub a			;bf70
	sbc a,b			;bf71
	sbc a,e			;bf72
	sbc a,h			;bf73
	inc e			;bf74
	sbc a,l			;bf75
	sbc a,(hl)		;bf76
	sbc a,c			;bf77
	sbc a,d			;bf78
	dec de			;bf79
	sub a			;bf7a
	sbc a,b			;bf7b
	sbc a,e			;bf7c
	sbc a,h			;bf7d
	ei			;bf7e
	nop			;bf7f
	dec b			;bf80
	dec b			;bf81
	ld (bc),a		;bf82
	xor (hl)		;bf83
	xor a			;bf84
	sbc a,c			;bf85
	sbc a,d			;bf86
	dec de			;bf87
	sub a			;bf88
	sbc a,b			;bf89
	sbc a,e			;bf8a
	sbc a,h			;bf8b
	inc e			;bf8c
	sbc a,l			;bf8d
	sbc a,(hl)		;bf8e
	sbc a,c			;bf8f
	sbc a,d			;bf90
	dec de			;bf91
	sub a			;bf92
	sbc a,b			;bf93
	sbc a,e			;bf94
	sbc a,h			;bf95
	inc e			;bf96
	sbc a,l			;bf97
	sbc a,(hl)		;bf98
	sbc a,c			;bf99
	sbc a,d			;bf9a
	jp m,00600h		;bf9b
	dec b			;bf9e
	ld (bc),a		;bf9f
	xor (hl)		;bfa0
	xor a			;bfa1
	sbc a,c			;bfa2
	sbc a,d			;bfa3
	dec de			;bfa4
	sub a			;bfa5
	sbc a,b			;bfa6
	sbc a,e			;bfa7
	sbc a,h			;bfa8
	inc e			;bfa9
	sbc a,l			;bfaa
	sbc a,(hl)		;bfab
	sbc a,c			;bfac
	sbc a,d			;bfad
	dec de			;bfae
	sub a			;bfaf
	sbc a,b			;bfb0
	sbc a,e			;bfb1
	sbc a,h			;bfb2
	inc e			;bfb3
	sbc a,l			;bfb4
	sbc a,(hl)		;bfb5
	sbc a,c			;bfb6
	sbc a,d			;bfb7
	dec de			;bfb8
	sub a			;bfb9
	sbc a,b			;bfba
	sbc a,e			;bfbb
	sbc a,h			;bfbc
	ld sp,hl		;bfbd
	nop			;bfbe
	rlca			;bfbf
	dec b			;bfc0
	ld (bc),a		;bfc1
	xor (hl)		;bfc2
lbfc3h:
	xor a			;bfc3
	sbc a,c			;bfc4
	sbc a,d			;bfc5
	dec de			;bfc6
	sub a			;bfc7
	sbc a,b			;bfc8
	sbc a,e			;bfc9
	sbc a,h			;bfca
	inc e			;bfcb
	sbc a,l			;bfcc
	sbc a,(hl)		;bfcd
	sbc a,c			;bfce
	sbc a,d			;bfcf
	dec de			;bfd0
	sub a			;bfd1
	sbc a,b			;bfd2
	sbc a,e			;bfd3
	sbc a,h			;bfd4
	inc e			;bfd5
	sbc a,l			;bfd6
	sbc a,(hl)		;bfd7
	sbc a,c			;bfd8
	sbc a,d			;bfd9
	dec de			;bfda
	sub a			;bfdb
	sbc a,b			;bfdc
	sbc a,e			;bfdd
	sbc a,h			;bfde
	inc e			;bfdf
	sbc a,l			;bfe0
	sbc a,(hl)		;bfe1
	sbc a,c			;bfe2
	sbc a,d			;bfe3
	ret m			;bfe4
	nop			;bfe5
	ex af,af'		;bfe6
	dec b			;bfe7
	ld (bc),a		;bfe8
	xor (hl)		;bfe9
	xor a			;bfea
	sbc a,c			;bfeb
	sbc a,d			;bfec
	dec de			;bfed
	sub a			;bfee
	sbc a,b			;bfef
	sbc a,e			;bff0
	sbc a,h			;bff1
	inc e			;bff2
	sbc a,l			;bff3
	sbc a,(hl)		;bff4
	sbc a,c			;bff5
	sbc a,d			;bff6
	dec de			;bff7
	sub a			;bff8
	sbc a,b			;bff9
	sbc a,e			;bffa
	sbc a,h			;bffb
	inc e			;bffc
	sbc a,l			;bffd
	sbc a,(hl)		;bffe
	sbc a,c			;bfff

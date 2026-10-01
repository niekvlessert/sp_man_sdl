; z80dasm 1.2.0
; command line: z80dasm -a -l -g 0xA000 -o /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/disasm/bank05_A000.asm /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/banks/bank05.bin

	org 0a000h

	ld a,(ix+001h)		;a000
	dec a			;a003
	jr z,la03fh		;a004
	dec a			;a006
	jr z,la04eh		;a007
	call 06796h		;a009
	rrca			;a00c
	rrca			;a00d
	and 001h		;a00e
	ld (ix+020h),a		;a010
	ld l,(ix+020h)		;a013
	ld h,000h		;a016
	add hl,hl		;a018
	ld de,0806bh		;a019
	add hl,de		;a01c
	ld e,(hl)		;a01d
	inc hl			;a01e
	ld d,(hl)		;a01f
	ld l,(ix+038h)		;a020
	dec l			;a023
	ld h,000h		;a024
	add hl,hl		;a026
	add hl,de		;a027
	ld a,(hl)		;a028
	add a,(ix+008h)		;a029
	ld (ix+008h),a		;a02c
	inc hl			;a02f
	ld a,(hl)		;a030
	add a,(ix+00ah)		;a031
	ld (ix+00ah),a		;a034
	ld a,008h		;a037
	call 08062h		;a039
	jp 06c1dh		;a03c
la03fh:
	call 06adfh		;a03f
	ret nz			;a042
	call 06bfah		;a043
	ld a,006h		;a046
	call 06ae8h		;a048
	jp 06c1dh		;a04b
la04eh:
	call 06adfh		;a04e
	jr z,la05ch		;a051
	cp 003h			;a053
	ret nz			;a055
	ld de,00000h		;a056
	jp 09bfah		;a059
la05ch:
	ld a,028h		;a05c
	ld (ix+001h),001h	;a05e
	call 06ae8h		;a062
	ld de,0ff40h		;a065
	jp 06bfdh		;a068
	ld l,a			;a06b
	add a,b			;a06c
	ld (hl),a		;a06d
	add a,b			;a06e
	inc b			;a06f
	nop			;a070
	ex af,af'		;a071
	nop			;a072
	nop			;a073
	ld (bc),a		;a074
	inc c			;a075
	ld (bc),a		;a076
	nop			;a077
	nop			;a078
	inc b			;a079
	ld bc,00108h		;a07a
	inc c			;a07d
	ld bc,07eddh		;a07e
	ld bc,01acdh		;a081
	ld b,(hl)		;a084
	adc a,a			;a085
	add a,b			;a086
	sbc a,a			;a087
	add a,b			;a088
	call 0f180h		;a089
	add a,b			;a08c
	defb 0fdh,080h,0cdh ;illegal sequence	;a08d
	ld d,h			;a090
	ld h,a			;a091
	ld a,020h		;a092
	call 06adbh		;a094
	inc (ix+03dh)		;a097
	ld a,001h		;a09a
	jp 08121h		;a09c
	call 06ad2h		;a09f
	jp z,080b3h		;a0a2
	call 08110h		;a0a5
	jr c,la0b3h		;a0a8
	ld a,(0ca02h)		;a0aa
	and 007h		;a0ad
	ret nz			;a0af
	jp 06b43h		;a0b0
la0b3h:
	ld a,(0ca48h)		;a0b3
	sub (ix+008h)		;a0b6
	ld b,000h		;a0b9
	jr nc,la0c0h		;a0bb
	neg			;a0bd
	inc b			;a0bf
la0c0h:
	ld (ix+022h),a		;a0c0
	ld (ix+023h),a		;a0c3
	ld (ix+020h),b		;a0c6
	ld a,002h		;a0c9
	jr la121h		;a0cb
	ld a,(ix+022h)		;a0cd
	dec (ix+022h)		;a0d0
	and a			;a0d3
	ret nz			;a0d4
	call 08106h		;a0d5
	ld a,001h		;a0d8
	xor (ix+020h)		;a0da
	ld (ix+020h),a		;a0dd
	ld a,(ix+021h)		;a0e0
	and a			;a0e3
	ld a,003h		;a0e4
	jr z,la0efh		;a0e6
	ld a,008h		;a0e8
	call 06adbh		;a0ea
	ld a,004h		;a0ed
la0efh:
	jr la121h		;a0ef
	ld a,(ix+023h)		;a0f1
	dec (ix+023h)		;a0f4
	and a			;a0f7
	ret nz			;a0f8
	ld a,001h		;a0f9
	jr la121h		;a0fb
	call 06ad2h		;a0fd
	ret nz			;a100
	ld a,008h		;a101
	call 06adbh		;a103
	ld a,020h		;a106
	call 06adbh		;a108
	ld b,000h		;a10b
	jp 09cb5h		;a10d
	ld a,(0ca4ah)		;a110
	sub (ix+00ah)		;a113
	jr nc,la11ah		;a116
	neg			;a118
la11ah:
	cp 006h			;a11a
	ret nc			;a11c
	inc (ix+021h)		;a11d
	ret			;a120
la121h:
	ld (ix+001h),a		;a121
	ld l,(ix+001h)		;a124
	dec l			;a127
	ld h,000h		;a128
	add hl,hl		;a12a
	ld de,08148h		;a12b
	add hl,de		;a12e
	ld d,000h		;a12f
	ld a,(ix+020h)		;a131
	and a			;a134
	ld a,(hl)		;a135
	jr z,la13fh		;a136
	and a			;a138
	jr z,la13fh		;a139
	ld d,0ffh		;a13b
	neg			;a13d
la13fh:
	ld e,a			;a13f
	inc hl			;a140
	ld l,(hl)		;a141
	ld h,000h		;a142
	ex de,hl		;a144
	jp 06bebh		;a145
	jr nz,la14ah		;a148
la14ah:
	ret nz			;a14a
	nop			;a14b
	ret nz			;a14c
	nop			;a14d
	nop			;a14e
	ret nz			;a14f
	call 06754h		;a150
	ld a,(ix+008h)		;a153
	bit 7,a			;a156
	jr z,la16bh		;a158
	res 7,a			;a15a
	ld (ix+008h),a		;a15c
	ld (ix+00ah),001h	;a15f
	ld a,(0ca19h)		;a163
	cp 004h			;a166
	jp c,06e98h		;a168
la16bh:
	ld (ix+017h),001h	;a16b
	ret			;a16f
	call 0817dh		;a170
	ld a,(ix+004h)		;a173
	or a			;a176
	ret z			;a177
	ld (ix+017h),002h	;a178
	ret			;a17c
	ld a,(ix+00ah)		;a17d
	cp 002h			;a180
	jr c,la188h		;a182
	dec (ix+017h)		;a184
	ret nz			;a187
la188h:
	ld (ix+017h),00ah	;a188
	ld iy,0ca40h		;a18c
	ld a,(0ca19h)		;a190
	srl a			;a193
	add a,00ah		;a195
	add a,(ix+003h)		;a197
	call 06b6ch		;a19a
	ld a,(ix+00eh)		;a19d
	rlca			;a1a0
	ld a,000h		;a1a1
	jr nc,la1a6h		;a1a3
	inc a			;a1a5
la1a6h:
	ld (ix+005h),a		;a1a6
	ret			;a1a9
	ld a,(iy+000h)		;a1aa
	cp 004h			;a1ad
	jr z,la1d6h		;a1af
	cp 007h			;a1b1
	jr z,la1d6h		;a1b3
	cp 006h			;a1b5
	jr z,la1bch		;a1b7
	cp 005h			;a1b9
	ret nz			;a1bb
la1bch:
	ld a,(iy+012h)		;a1bc
	cp 004h			;a1bf
	ret nc			;a1c1
	add a,a			;a1c2
	add a,a			;a1c3
	ld e,a			;a1c4
	ld d,000h		;a1c5
	ld hl,0820dh		;a1c7
	add hl,de		;a1ca
	ld e,(hl)		;a1cb
	inc hl			;a1cc
	ld d,(hl)		;a1cd
	inc hl			;a1ce
	ld c,(hl)		;a1cf
	inc hl			;a1d0
	ld b,(hl)		;a1d1
	call 081f2h		;a1d2
	ret			;a1d5
la1d6h:
	ld d,(iy+00eh)		;a1d6
	ld e,(iy+00dh)		;a1d9
	ld b,(iy+00ch)		;a1dc
	ld c,(iy+00bh)		;a1df
	sra b			;a1e2
	rr c			;a1e4
	sra b			;a1e6
	rr c			;a1e8
	sra d			;a1ea
	rr e			;a1ec
	sra d			;a1ee
	rr e			;a1f0
	ld h,(ix+00ch)		;a1f2
	ld l,(ix+00bh)		;a1f5
	add hl,bc		;a1f8
	ld (ix+00ch),h		;a1f9
	ld (ix+00bh),l		;a1fc
	ld h,(ix+00eh)		;a1ff
	ld l,(ix+00dh)		;a202
	add hl,de		;a205
	ld (ix+00eh),h		;a206
	ld (ix+00dh),l		;a209
	ret			;a20c
	ld b,b			;a20d
	nop			;a20e
	nop			;a20f
	nop			;a210
	nop			;a211
	nop			;a212
	ld b,b			;a213
	nop			;a214
	ret nz			;a215
	rst 38h			;a216
	nop			;a217
	nop			;a218
	nop			;a219
	nop			;a21a
	ret nz			;a21b
	rst 38h			;a21c
	ld a,(ix+001h)		;a21d
	dec a			;a220
	jr z,la249h		;a221
	dec a			;a223
	jr z,la257h		;a224
	dec a			;a226
	jr z,la272h		;a227
	call 06754h		;a229
	ld (ix+03eh),005h	;a22c
	ld (ix+006h),002h	;a230
	ld b,060h		;a234
	ld a,(0ca19h)		;a236
	cp 006h			;a239
	jr c,la243h		;a23b
	ld (ix+016h),02ch	;a23d
	ld b,010h		;a241
la243h:
	ld (ix+017h),b		;a243
	jp 06c1dh		;a246
la249h:
	call 06ad2h		;a249
	ret nz			;a24c
	call 082abh		;a24d
	ld (ix+006h),000h	;a250
	jp 06c1dh		;a254
la257h:
	call 06ad2h		;a257
	jp z,06c1dh		;a25a
	ld a,(0ca02h)		;a25d
	and 003h		;a260
	ret nz			;a262
	ld a,001h		;a263
	xor (ix+006h)		;a265
	ld (ix+006h),a		;a268
	and a			;a26b
	ret z			;a26c
	ld a,020h		;a26d
	jp 04af0h		;a26f
la272h:
	ld a,(ix+00ah)		;a272
	and a			;a275
	jp m,082a3h		;a276
	cp 008h			;a279
	jr c,la2a3h		;a27b
	ld a,(0ca19h)		;a27d
	rrca			;a280
	rrca			;a281
	and 003h		;a282
	ld d,a			;a284
	ld a,(ix+020h)		;a285
	cp 004h			;a288
	jr nc,la29eh		;a28a
	inc (ix+020h)		;a28c
	ld e,a			;a28f
	ld l,a			;a290
	ld h,000h		;a291
	add hl,hl		;a293
	ld bc,082c2h		;a294
	add hl,bc		;a297
	ld c,(hl)		;a298
	inc hl			;a299
	ld b,(hl)		;a29a
	jp 09024h		;a29b
la29eh:
	ld a,017h		;a29e
	call 04af0h		;a2a0
la2a3h:
	ld (ix+020h),000h	;a2a3
	ld (ix+001h),002h	;a2a7
	ld a,(0ca19h)		;a2ab
	rrca			;a2ae
	rrca			;a2af
	and 007h		;a2b0
	ld l,a			;a2b2
	ld h,000h		;a2b3
	ld de,082beh		;a2b5
	add hl,de		;a2b8
	ld a,(hl)		;a2b9
	ld (ix+017h),a		;a2ba
	ret			;a2bd
	jr $+26			;a2be
	djnz la2cah		;a2c0
	nop			;a2c2
	inc b			;a2c3
	inc b			;a2c4
	nop			;a2c5
	rlca			;a2c6
	inc b			;a2c7
	inc bc			;a2c8
	add hl,bc		;a2c9
la2cah:
	ld a,(ix+001h)		;a2ca
	and a			;a2cd
	jr nz,la2f5h		;a2ce
	call 06754h		;a2d0
	ld a,d			;a2d3
	rlca			;a2d4
	jr nc,la2deh		;a2d5
	inc (ix+020h)		;a2d7
	ld (ix+006h),004h	;a2da
la2deh:
	ld a,020h		;a2de
	ld (ix+017h),a		;a2e0
	ld a,(0ce53h)		;a2e3
	inc a			;a2e6
	cp 004h			;a2e7
	jr nz,la2efh		;a2e9
	inc (ix+03dh)		;a2eb
	xor a			;a2ee
la2efh:
	ld (0ce53h),a		;a2ef
	jp 06c1dh		;a2f2
la2f5h:
	call 08304h		;a2f5
	ld a,(0ca02h)		;a2f8
	xor (ix+02dh)		;a2fb
	and 01fh		;a2fe
	ret nz			;a300
	jp 072d4h		;a301
	ld a,(0ca02h)		;a304
	add a,(ix+02dh)		;a307
	and 007h		;a30a
	ret nz			;a30c
	call 06b94h		;a30d
	ld a,(ix+020h)		;a310
	and a			;a313
	ld hl,08327h		;a314
	jr z,la31ch		;a317
	ld hl,0832fh		;a319
la31ch:
	ld a,c			;a31c
	and 007h		;a31d
	call 04600h		;a31f
	ld a,(hl)		;a322
	ld (ix+006h),a		;a323
	ret			;a326
	nop			;a327
	ld bc,00302h		;a328
	inc bc			;a32b
	inc bc			;a32c
	nop			;a32d
	nop			;a32e
	inc b			;a32f
	inc b			;a330
	rlca			;a331
	rlca			;a332
	rlca			;a333
	ld b,005h		;a334
	inc b			;a336
	ret			;a337
	ld hl,00040h		;a338
	call 06bf3h		;a33b
	jp 06c3ah		;a33e
	ld a,(ix+001h)		;a341
	or a			;a344
	jr nz,la367h		;a345
	call 06754h		;a347
	ld b,000h		;a34a
	ld a,d			;a34c
	rlca			;a34d
	ld a,003h		;a34e
	jr nc,la35bh		;a350
	inc (ix+020h)		;a352
	inc b			;a355
	ld (ix+006h),b		;a356
	ld a,004h		;a359
la35bh:
	ld (ix+03eh),a		;a35b
	call 06796h		;a35e
	call 06ae8h		;a361
	jp 06c1dh		;a364
la367h:
	call 06adfh		;a367
	ret nz			;a36a
	ld a,010h		;a36b
	call 06ae8h		;a36d
	ld a,016h		;a370
	call 0684ch		;a372
	jr c,la394h		;a375
	ld a,(ix+020h)		;a377
	ld b,002h		;a37a
	ld c,0feh		;a37c
	and a			;a37e
	jr z,la384h		;a37f
	ld bc,00202h		;a381
la384h:
	call 06929h		;a384
	ld a,(ix+020h)		;a387
	ld (iy+020h),a		;a38a
	ld a,(ix+03dh)		;a38d
	and a			;a390
	call nz,083a9h		;a391
la394h:
	call 0699eh		;a394
	inc (ix+021h)		;a397
	ld a,003h		;a39a
	cp (ix+021h)		;a39c
	ret nz			;a39f
	ld (ix+021h),000h	;a3a0
	ld a,040h		;a3a4
	jp 06ae8h		;a3a6
	inc (ix+022h)		;a3a9
	ld a,(ix+022h)		;a3ac
	rrca			;a3af
	ret c			;a3b0
	inc (iy+03dh)		;a3b1
	ret			;a3b4
	call 06754h		;a3b5
	ld hl,00060h		;a3b8
	call 06bf3h		;a3bb
	ret			;a3be
	call 08402h		;a3bf
	ld a,(ix+001h)		;a3c2
	dec a			;a3c5
	jr z,la3e2h		;a3c6
	jp p,083f9h		;a3c8
	call 0755dh		;a3cb
	ld a,d			;a3ce
	or a			;a3cf
	ret p			;a3d0
	ld a,e			;a3d1
	add a,000h		;a3d2
	cp 008h			;a3d4
	ret nc			;a3d6
	inc (ix+001h)		;a3d7
	ld (ix+017h),003h	;a3da
	ld (ix+018h),005h	;a3de
la3e2h:
	dec (ix+018h)		;a3e2
	ret nz			;a3e5
	ld (ix+018h),005h	;a3e6
	call 08420h		;a3ea
	dec (ix+017h)		;a3ed
	ret nz			;a3f0
	inc (ix+001h)		;a3f1
	ld (ix+018h),00ah	;a3f4
	ret			;a3f8
	dec (ix+018h)		;a3f9
	ret nz			;a3fc
	ld (ix+001h),000h	;a3fd
	ret			;a401
	ld hl,00200h		;a402
	ld de,00200h		;a405
	call 076d0h		;a408
	call 07b18h		;a40b
	ld a,(de)		;a40e
	cp 0cch			;a40f
	ret z			;a411
	call 06b43h		;a412
	ret			;a415
	ld a,(ix+00ch)		;a416
	or a			;a419
	ld a,000h		;a41a
	ret m			;a41c
	ld a,003h		;a41d
	ret			;a41f
	ld bc,00000h		;a420
	jp 09cb5h		;a423
	ld hl,0842fh		;a426
	call 07186h		;a429
	jp 07306h		;a42c
	nop			;a42f
	rst 38h			;a430
	ld (ix+017h),01eh	;a431
	call 06754h		;a435
	ld a,d			;a438
	and 080h		;a439
	rlca			;a43b
	ld (ix+020h),a		;a43c
	ld (ix+005h),a		;a43f
	ld de,0ffd0h		;a442
	call 06bfdh		;a445
	ld (ix+03dh),001h	;a448
	ret			;a44c
	ld a,(ix+001h)		;a44d
	dec a			;a450
	jr z,la46bh		;a451
	call 084aah		;a453
	dec (ix+017h)		;a456
	ret nz			;a459
	call 08488h		;a45a
	call 06bfah		;a45d
	ld (ix+017h),008h	;a460
	ld (ix+018h),002h	;a464
	inc (ix+001h)		;a468
la46bh:
	call 084aah		;a46b
	dec (ix+017h)		;a46e
	ret nz			;a471
	call 084dch		;a472
	ld (ix+017h),008h	;a475
	dec (ix+018h)		;a479
	jp nz,0849dh		;a47c
	ld (ix+001h),000h	;a47f
	ld (ix+017h),028h	;a483
	ret			;a487
	ld h,(ix+00eh)		;a488
	ld l,(ix+00dh)		;a48b
	ld (ix+012h),000h	;a48e
	ld (ix+011h),000h	;a492
	ld (ix+012h),h		;a496
	ld (ix+011h),l		;a499
	ret			;a49c
	ld h,(ix+012h)		;a49d
	ld l,(ix+011h)		;a4a0
	ld (ix+00eh),h		;a4a3
	ld (ix+00dh),l		;a4a6
	ret			;a4a9
	ld d,(ix+00ah)		;a4aa
	ld e,(ix+008h)		;a4ad
	call 084d2h		;a4b0
	add a,d			;a4b3
	ld d,a			;a4b4
	call 0753ch		;a4b5
	jr c,la4beh		;a4b8
	ret z			;a4ba
	jp 06b53h		;a4bb
la4beh:
	call 084cbh		;a4be
	call 0753ch		;a4c1
	jp c,06b53h		;a4c4
	ret z			;a4c7
	jp 06b53h		;a4c8
	ld a,(ix+00eh)		;a4cb
	neg			;a4ce
	jr la4d6h		;a4d0
	ld a,(ix+00eh)		;a4d2
	or a			;a4d5
la4d6h:
	ld a,0ffh		;a4d6
	ret m			;a4d8
	ld a,005h		;a4d9
	ret			;a4db
	ld hl,084f1h		;a4dc
	ld a,(ix+020h)		;a4df
	and a			;a4e2
	jr z,la4e8h		;a4e3
	ld hl,084f5h		;a4e5
la4e8h:
	call 07186h		;a4e8
	ld bc,00200h		;a4eb
	jp 07306h		;a4ee
	ld (bc),a		;a4f1
	inc b			;a4f2
	ld b,0ffh		;a4f3
	ld a,(bc)		;a4f5
	inc c			;a4f6
	ld c,0ffh		;a4f7
	ld de,0858fh		;a4f9
	call 07b65h		;a4fc
	ld a,(ix+001h)		;a4ff
	cp 004h			;a502
	jp nc,04ae0h		;a504
	call 0461ah		;a507
	ld (de),a		;a50a
	add a,l			;a50b
	ld b,b			;a50c
	add a,l			;a50d
	ld h,a			;a50e
	add a,l			;a50f
	add a,b			;a510
	add a,l			;a511
	call 06754h		;a512
	call 06796h		;a515
	ld c,a			;a518
	and 00fh		;a519
	ld (ix+020h),a		;a51b
	xor c			;a51e
	ld (ix+003h),a		;a51f
	or a			;a522
	jr z,la531h		;a523
	ld (ix+006h),002h	;a525
	ld a,(ix+008h)		;a529
	add a,004h		;a52c
	ld (ix+008h),a		;a52e
la531h:
	ld (ix+020h),000h	;a531
	ld a,(ix+003h)		;a535
	srl a			;a538
	call 08650h		;a53a
	jp 06c1dh		;a53d
	ld a,(ix+037h)		;a540
	and a			;a543
	ret nz			;a544
	call 07dcdh		;a545
	call 07dc3h		;a548
	ld a,(ix+003h)		;a54b
	or a			;a54e
	jr nz,la55ah		;a54f
	ld (ix+006h),001h	;a551
	ld (ix+001h),003h	;a555
	ret			;a559
la55ah:
	ld (ix+006h),003h	;a55a
	ld (ix+001h),002h	;a55e
	ld (ix+017h),003h	;a562
	ret			;a566
	dec (ix+017h)		;a567
	ret nz			;a56a
	call 07dcdh		;a56b
	ld (ix+017h),003h	;a56e
	ld a,(ix+006h)		;a572
	inc a			;a575
	ld (ix+006h),a		;a576
	cp 005h			;a579
	ret nz			;a57b
	ld (ix+001h),003h	;a57c
	ret			;a580
	ld l,(ix+020h)		;a581
	ld h,000h		;a584
	ld de,0858fh		;a586
	add hl,hl		;a589
	add hl,de		;a58a
	ld e,(hl)		;a58b
	inc hl			;a58c
	ld d,(hl)		;a58d
	ret			;a58e
	sbc a,e			;a58f
	add a,l			;a590
	xor e			;a591
	add a,l			;a592
	or (hl)			;a593
	add a,l			;a594
	call po,00d85h		;a595
	add a,(hl)		;a598
	ld sp,01086h		;a599
	nop			;a59c
	nop			;a59d
	ld bc,0fe01h		;a59e
	ld bc,08c00h		;a5a1
	ld (bc),a		;a5a4
	cp 00dh			;a5a5
	nop			;a5a7
	ld bc,0ff03h		;a5a8
	dec bc			;a5ab
	nop			;a5ac
	nop			;a5ad
	ld bc,0fe01h		;a5ae
	dec c			;a5b1
	nop			;a5b2
	ld bc,0ff03h		;a5b3
	ld l,000h		;a5b6
	nop			;a5b8
	ld bc,0fe01h		;a5b9
	ld bc,08c00h		;a5bc
	ld (bc),a		;a5bf
	cp 00dh			;a5c0
	nop			;a5c2
	ld bc,0fe03h		;a5c3
	nop			;a5c6
	inc bc			;a5c7
	ld bc,0fe01h		;a5c8
	ld bc,08c03h		;a5cb
	ld (bc),a		;a5ce
	cp 00dh			;a5cf
	inc bc			;a5d1
	ld bc,0fe03h		;a5d2
	nop			;a5d5
	ld b,001h		;a5d6
	ld bc,001feh		;a5d8
	ld b,08ch		;a5db
	ld (bc),a		;a5dd
	cp 00dh			;a5de
	ld b,001h		;a5e0
	inc bc			;a5e2
	rst 38h			;a5e3
	add hl,hl		;a5e4
	nop			;a5e5
	nop			;a5e6
	ld bc,0fe01h		;a5e7
	dec c			;a5ea
	nop			;a5eb
	ld bc,0fe03h		;a5ec
	nop			;a5ef
	inc bc			;a5f0
	ld bc,0fe01h		;a5f1
	ld bc,08c03h		;a5f4
	ld (bc),a		;a5f7
	cp 00dh			;a5f8
	inc bc			;a5fa
	ld bc,0fe03h		;a5fb
	nop			;a5fe
	ld b,001h		;a5ff
	ld bc,001feh		;a601
	ld b,08ch		;a604
	ld (bc),a		;a606
	cp 00dh			;a607
	ld b,001h		;a609
	inc bc			;a60b
	rst 38h			;a60c
	inc h			;a60d
	nop			;a60e
	nop			;a60f
	ld bc,0fe01h		;a610
	dec c			;a613
	nop			;a614
	ld bc,0fe03h		;a615
	nop			;a618
	inc bc			;a619
	ld bc,0fe01h		;a61a
	dec c			;a61d
	inc bc			;a61e
	ld bc,0fe03h		;a61f
	nop			;a622
	ld b,001h		;a623
	ld bc,001feh		;a625
	ld b,08ch		;a628
	ld (bc),a		;a62a
	cp 00dh			;a62b
	ld b,001h		;a62d
	inc bc			;a62f
	rst 38h			;a630
	rra			;a631
	nop			;a632
	nop			;a633
	ld bc,0fe01h		;a634
	dec c			;a637
	nop			;a638
	ld bc,0fe03h		;a639
	nop			;a63c
	inc bc			;a63d
	ld bc,0fe01h		;a63e
	dec c			;a641
	inc bc			;a642
	ld bc,0fe03h		;a643
	nop			;a646
	ld b,001h		;a647
	ld bc,00dfeh		;a649
	ld b,001h		;a64c
	inc bc			;a64e
	rst 38h			;a64f
	ld de,0ffa0h		;a650
	ld b,005h		;a653
	call 08663h		;a655
	or a			;a658
	ret z			;a659
	ld b,005h		;a65a
	ld de,00060h		;a65c
	call 08663h		;a65f
	ret			;a662
	push ix			;a663
	push af			;a665
	call 0866dh		;a666
	pop af			;a669
	pop ix			;a66a
	ret			;a66c
	ld a,02ch		;a66d
	push de			;a66f
	push bc			;a670
	call 069bfh		;a671
	pop bc			;a674
	pop hl			;a675
	ret c			;a676
	push bc			;a677
	call 083bbh		;a678
	ld h,(iy+00ah)		;a67b
	ld l,(iy+009h)		;a67e
	ld de,0fe00h		;a681
	add hl,de		;a684
	ld (ix+00ah),h		;a685
	ld (ix+009h),l		;a688
	pop bc			;a68b
	ld a,(iy+008h)		;a68c
	add a,b			;a68f
	ld (ix+008h),a		;a690
	ret			;a693
	ld a,(ix+001h)		;a694
	call 0461ah		;a697
	and h			;a69a
	add a,(hl)		;a69b
	or c			;a69c
	add a,(hl)		;a69d
	ret nc			;a69e
	add a,(hl)		;a69f
	pop af			;a6a0
	add a,(hl)		;a6a1
	rst 38h			;a6a2
	add a,(hl)		;a6a3
	call 06754h		;a6a4
	ld a,d			;a6a7
	rlca			;a6a8
	jr nc,la6aeh		;a6a9
	inc (ix+03dh)		;a6ab
la6aeh:
	jp 06c1dh		;a6ae
	call 0755dh		;a6b1
	ld a,e			;a6b4
	bit 7,a			;a6b5
	jr z,la6bbh		;a6b7
	neg			;a6b9
la6bbh:
	cp 002h			;a6bb
	jp c,06c1dh		;a6bd
	cp 008h			;a6c0
	ret nc			;a6c2
	ld a,d			;a6c3
	bit 7,a			;a6c4
	jr z,la6cah		;a6c6
	neg			;a6c8
la6cah:
	cp 008h			;a6ca
	ret nc			;a6cc
	jp 06c1dh		;a6cd
	call 06b94h		;a6d0
	ld a,c			;a6d3
	call 08708h		;a6d4
	jr z,la6ech		;a6d7
	ld a,b			;a6d9
	add a,002h		;a6da
	and 007h		;a6dc
	call 08708h		;a6de
	jr z,la6ech		;a6e1
	ld a,b			;a6e3
	add a,004h		;a6e4
	and 007h		;a6e6
	ld (ix+020h),a		;a6e8
	ld b,a			;a6eb
la6ech:
	call 08724h		;a6ec
	jr la6f8h		;a6ef
	call 06ad2h		;a6f1
	ret nz			;a6f4
	call 06be6h		;a6f5
la6f8h:
	ld (ix+017h),004h	;a6f8
	jp 06c1dh		;a6fc
	call 06ad2h		;a6ff
	ret nz			;a702
	ld (ix+001h),002h	;a703
	ret			;a707
	ld (ix+020h),a		;a708
	push af			;a70b
	ld l,a			;a70c
	ld h,000h		;a70d
	add hl,hl		;a70f
	ld de,0873fh		;a710
	add hl,de		;a713
	ld a,(hl)		;a714
	add a,(ix+008h)		;a715
	ld e,a			;a718
	inc hl			;a719
	ld a,(hl)		;a71a
	add a,(ix+00ah)		;a71b
	ld d,a			;a71e
	call 0753ch		;a71f
	pop bc			;a722
	ret			;a723
	ld a,b			;a724
	ld l,a			;a725
	ld h,000h		;a726
	add hl,hl		;a728
	ld de,0874fh		;a729
	add hl,de		;a72c
	ld a,(hl)		;a72d
	call 08734h		;a72e
	inc hl			;a731
	ld a,(hl)		;a732
	ex de,hl		;a733
	ld d,000h		;a734
	bit 7,a			;a736
	jr z,la73bh		;a738
	dec d			;a73a
la73bh:
	ld e,a			;a73b
	jp 06bebh		;a73c
	nop			;a73f
	rst 38h			;a740
	rst 38h			;a741
	rst 38h			;a742
	rst 38h			;a743
	nop			;a744
	rst 38h			;a745
	inc bc			;a746
	nop			;a747
	inc bc			;a748
	inc bc			;a749
	inc bc			;a74a
	inc bc			;a74b
	nop			;a74c
	inc bc			;a74d
	rst 38h			;a74e
	nop			;a74f
	and b			;a750
	and b			;a751
	and b			;a752
	and b			;a753
	nop			;a754
	and b			;a755
	ld h,b			;a756
	nop			;a757
	ld h,b			;a758
	ld h,b			;a759
	ld h,b			;a75a
	ld h,b			;a75b
	nop			;a75c
	ld h,b			;a75d
	and b			;a75e
	call 06754h		;a75f
	push ix			;a762
	ld de,0ffa0h		;a764
	call 08777h		;a767
	pop ix			;a76a
	push ix			;a76c
	ld de,00060h		;a76e
	call 08777h		;a771
	pop ix			;a774
	ret			;a776
	ld a,02ch		;a777
	push de			;a779
	call 069bfh		;a77a
	pop hl			;a77d
	ret c			;a77e
	call 083bbh		;a77f
	ld h,(iy+00ah)		;a782
	ld l,(iy+009h)		;a785
	ld de,0fe00h		;a788
la78bh:
	add hl,de		;a78b
	ld (ix+00ah),h		;a78c
	ld (ix+009h),l		;a78f
	ld a,(iy+008h)		;a792
	add a,005h		;a795
	ld (ix+008h),a		;a797
	ret			;a79a
	ld a,(ix+00ah)		;a79b
	cp 0f6h			;a79e
	jp z,06e98h		;a7a0
	ld a,(ix+037h)		;a7a3
	or a			;a7a6
	ret nz			;a7a7
	set 6,(ix+015h)		;a7a8
	bit 0,(ix+001h)		;a7ac
	ret nz			;a7b0
	ld a,013h		;a7b1
	call 04af5h		;a7b3
	set 0,(ix+001h)		;a7b6
	ret			;a7ba
	inc (ix+018h)		;a7bb
	jp 082d0h		;a7be
	call 08304h		;a7c1
	call 06adfh		;a7c4
	ret nz			;a7c7
	ld a,(ix+02dh)		;a7c8
	add a,a			;a7cb
	add a,01ch		;a7cc
	ld (ix+018h),a		;a7ce
	ld l,(ix+025h)		;a7d1
	ld h,000h		;a7d4
	ld de,087ebh		;a7d6
	add hl,de		;a7d9
	ld a,(hl)		;a7da
	add a,001h		;a7db
	dec a			;a7dd
	jr nc,la7e5h		;a7de
	ld (ix+025h),000h	;a7e0
	ld a,(de)		;a7e4
la7e5h:
	inc (ix+025h)		;a7e5
	jp 072f6h		;a7e8
	ex af,af'		;a7eb
	ld a,(bc)		;a7ec
	inc c			;a7ed
	ld c,010h		;a7ee
	rst 38h			;a7f0
	call 088eah		;a7f1
	ld a,(ix+001h)		;a7f4
	cp 005h			;a7f7
	jp nc,04ae0h		;a7f9
	call 0461ah		;a7fc
	add hl,bc		;a7ff
	adc a,b			;a800
	jr z,la78bh		;a801
	scf			;a803
	adc a,b			;a804
	ld c,c			;a805
	adc a,b			;a806
	ld e,b			;a807
	adc a,b			;a808
	ld (ix+003h),001h	;a809
	ld (ix+00ah),01ch	;a80d
	ld (ix+008h),000h	;a811
	ld (ix+017h),050h	;a815
	ld de,0ffe0h		;a819
	ld hl,00020h		;a81c
	call 06bebh		;a81f
	jr la824h		;a822
la824h:
	inc (ix+001h)		;a824
	ret			;a827
	dec (ix+017h)		;a828
	ret nz			;a82b
	ld de,00020h		;a82c
	call 06bfdh		;a82f
	call 06bfdh		;a832
	jr la824h		;a835
	call 0885ch		;a837
	ld a,(ix+00ah)		;a83a
	cp 018h			;a83d
	ret c			;a83f
	call 06bfah		;a840
	ld (ix+017h),078h	;a843
	jr la824h		;a847
	call 0885ch		;a849
	dec (ix+017h)		;a84c
	ret nz			;a84f
	ld de,0ffc0h		;a850
	call 06bfdh		;a853
	jr la824h		;a856
	call 0885ch		;a858
	ret			;a85b
	ld a,(ix+002h)		;a85c
	dec a			;a85f
	jr z,la87bh		;a860
	jp p,08886h		;a862
	call 08894h		;a865
	jr nz,la870h		;a868
	call 088a1h		;a86a
	jp 088cfh		;a86d
la870h:
	inc (ix+002h)		;a870
	ld a,(ix+008h)		;a873
	cp 009h			;a876
	jp 088d6h		;a878
la87bh:
	ld a,(ix+008h)		;a87b
	sub 007h		;a87e
	cp 001h			;a880
	ret nc			;a882
	inc (ix+002h)		;a883
	call 08894h		;a886
	jr nz,la870h		;a889
	call 088a1h		;a88b
	ret nz			;a88e
	ld (ix+002h),000h	;a88f
	ret			;a893
	ld de,001feh		;a894
	call 07595h		;a897
	ret nz			;a89a
	ld de,00106h		;a89b
	jp 07595h		;a89e
	call 0756ch		;a8a1
	bit 7,d			;a8a4
	jr z,la8abh		;a8a6
	call 0460ah		;a8a8
la8abh:
	bit 7,h			;a8ab
	jr z,la8c0h		;a8ad
	call 04612h		;a8af
	add hl,hl		;a8b2
	or a			;a8b3
	sbc hl,de		;a8b4
	ret c			;a8b6
	ld bc,00180h		;a8b7
	or a			;a8ba
	sbc hl,bc		;a8bb
	ret nc			;a8bd
	xor a			;a8be
	ret			;a8bf
la8c0h:
	call 088b2h		;a8c0
	ret z			;a8c3
	ccf			;a8c4
	ret			;a8c5
	ld a,(ix+022h)		;a8c6
	dec a			;a8c9
	ld (ix+022h),a		;a8ca
	xor a			;a8cd
	ret			;a8ce
	ld (ix+003h),001h	;a8cf
	jp z,06bf0h		;a8d3
	ld hl,00030h		;a8d6
	ld (ix+003h),002h	;a8d9
	jp c,06bf3h		;a8dd
	call 04612h		;a8e0
	ld (ix+003h),000h	;a8e3
	jp 06bf3h		;a8e7
	ld a,(0ca02h)		;a8ea
	and 017h		;a8ed
	ret nz			;a8ef
	call 0750fh		;a8f0
	ret c			;a8f3
	ld de,00000h		;a8f4
	ld bc,00200h		;a8f7
	push ix			;a8fa
	call 09d1eh		;a8fc
	pop ix			;a8ff
	push ix			;a901
	ld de,00002h		;a903
	ld bc,00206h		;a906
	call 09d1eh		;a909
	pop ix			;a90c
	ret			;a90e
	ret			;a90f
	ld a,(ix+001h)		;a910
	cp 002h			;a913
	jp nc,04ae0h		;a915
	call 0461ah		;a918
	rra			;a91b
	adc a,c			;a91c
	daa			;a91d
	adc a,c			;a91e
	inc (ix+001h)		;a91f
	ret			;a922
	ld (ix+001h),a		;a923
	ret			;a926
	call 08952h		;a927
	ld a,(ix+022h)		;a92a
	or a			;a92d
	ret z			;a92e
	jp 08932h		;a92f
	ld a,(ix+021h)		;a932
	dec a			;a935
	jr z,la944h		;a936
	ld a,(iy+027h)		;a938
	add a,(iy+029h)		;a93b
	call 0894dh		;a93e
	jp 08a30h		;a941
la944h:
	ld a,(iy+027h)		;a944
	call 0894dh		;a947
	jp 089feh		;a94a
	ld c,a			;a94d
	ld b,(iy+026h)		;a94e
	ret			;a951
	call 068deh		;a952
	jr c,la96ah		;a955
	ld a,(iy+00ah)		;a957
	ld (ix+00ah),a		;a95a
	ld a,(iy+009h)		;a95d
	ld (ix+009h),a		;a960
	ld a,(iy+022h)		;a963
	ld (ix+022h),a		;a966
	ret			;a969
la96ah:
	dec (ix+00ah)		;a96a
	ret			;a96d
	ld b,(ix+008h)		;a96e
	ld c,(ix+007h)		;a971
	add hl,bc		;a974
	push hl			;a975
	ex de,hl		;a976
	or a			;a977
	sbc hl,de		;a978
	ld b,005h		;a97a
la97ch:
	sra h			;a97c
	rr l			;a97e
	djnz la97ch		;a980
	pop bc			;a982
	ret			;a983
	ld b,(ix+00ah)		;a984
	ld c,(ix+009h)		;a987
	add hl,bc		;a98a
	push hl			;a98b
	ex de,hl		;a98c
	or a			;a98d
	sbc hl,de		;a98e
	ld b,005h		;a990
la992h:
	sra h			;a992
	rr l			;a994
	djnz la992h		;a996
	pop bc			;a998
	ret			;a999
	push hl			;a99a
	ld hl,00000h		;a99b
	call 08984h		;a99e
	push bc			;a9a1
	exx			;a9a2
	pop de			;a9a3
	exx			;a9a4
	ex (sp),hl		;a9a5
	ex de,hl		;a9a6
	ld hl,00004h		;a9a7
	call 0896eh		;a9aa
	push bc			;a9ad
	exx			;a9ae
	pop hl			;a9af
	exx			;a9b0
	pop de			;a9b1
	ret			;a9b2
	push hl			;a9b3
	ld hl,00000h		;a9b4
	call 08984h		;a9b7
	push bc			;a9ba
	exx			;a9bb
	pop de			;a9bc
	exx			;a9bd
	ex (sp),hl		;a9be
	ex de,hl		;a9bf
	ld hl,00001h		;a9c0
	call 0896eh		;a9c3
	push bc			;a9c6
	exx			;a9c7
	pop hl			;a9c8
	exx			;a9c9
	pop de			;a9ca
	ret			;a9cb
	push hl			;a9cc
	ld hl,00004h		;a9cd
	call 08984h		;a9d0
	push bc			;a9d3
	exx			;a9d4
	pop de			;a9d5
	exx			;a9d6
	ex (sp),hl		;a9d7
	ex de,hl		;a9d8
	ld hl,00004h		;a9d9
	call 0896eh		;a9dc
	push bc			;a9df
	exx			;a9e0
	pop hl			;a9e1
	exx			;a9e2
	pop de			;a9e3
	ret			;a9e4
	push hl			;a9e5
	ld hl,00004h		;a9e6
	call 08984h		;a9e9
	push bc			;a9ec
	exx			;a9ed
	pop de			;a9ee
	exx			;a9ef
	ex (sp),hl		;a9f0
	ex de,hl		;a9f1
	ld hl,00001h		;a9f2
	call 0896eh		;a9f5
	push bc			;a9f8
	exx			;a9f9
	pop hl			;a9fa
	exx			;a9fb
	pop de			;a9fc
	ret			;a9fd
	ld a,(iy+028h)		;a9fe
	push af			;aa01
	ld a,(iy+028h)		;aa02
	push bc			;aa05
	push af			;aa06
	call 08a62h		;aa07
	call 0899ah		;aa0a
	exx			;aa0d
	ld c,(iy+029h)		;aa0e
	ld b,0cbh		;aa11
	exx			;aa13
	ld bc,00001h		;aa14
	call 08a68h		;aa17
	pop af			;aa1a
	pop bc			;aa1b
	add a,b			;aa1c
	ld b,a			;aa1d
	call 08a62h		;aa1e
	call 089cch		;aa21
	pop af			;aa24
	exx			;aa25
	ld c,a			;aa26
	ld b,0cah		;aa27
	exx			;aa29
	ld bc,0ff00h		;aa2a
	jp 08a68h		;aa2d
	ld a,(iy+029h)		;aa30
	push af			;aa33
	ld a,(iy+028h)		;aa34
	push bc			;aa37
	push af			;aa38
	call 08a62h		;aa39
	call 089b3h		;aa3c
	exx			;aa3f
	ld c,(iy+028h)		;aa40
	ld b,0cah		;aa43
	exx			;aa45
	ld bc,00100h		;aa46
	call 08a68h		;aa49
	pop af			;aa4c
	pop bc			;aa4d
	add a,b			;aa4e
	ld b,a			;aa4f
	call 08a62h		;aa50
	call 089e5h		;aa53
	pop af			;aa56
	exx			;aa57
	ld c,a			;aa58
	ld b,0cbh		;aa59
	exx			;aa5b
	ld bc,000ffh		;aa5c
	jp 08a68h		;aa5f
	ld d,b			;aa62
	ld h,c			;aa63
	ld l,000h		;aa64
	ld e,l			;aa66
	ret			;aa67
	ld a,075h		;aa68
	push ix			;aa6a
	push ix			;aa6c
	pop iy			;aa6e
	push hl			;aa70
	push de			;aa71
	push bc			;aa72
	exx			;aa73
	push hl			;aa74
	push de			;aa75
	push bc			;aa76
	exx			;aa77
	call 070dah		;aa78
	exx			;aa7b
	pop bc			;aa7c
	pop de			;aa7d
	pop hl			;aa7e
	exx			;aa7f
	pop bc			;aa80
	pop de			;aa81
	pop hl			;aa82
	jr c,laaabh		;aa83
	exx			;aa85
	ld (ix+008h),h		;aa86
	ld (ix+007h),l		;aa89
	ld (ix+00ah),d		;aa8c
	ld (ix+009h),e		;aa8f
	ld (ix+011h),b		;aa92
	ld (ix+00fh),c		;aa95
	exx			;aa98
	ld (ix+00ch),h		;aa99
	ld (ix+00bh),l		;aa9c
	ld (ix+00eh),d		;aa9f
	ld (ix+00dh),e		;aaa2
	ld (ix+012h),b		;aaa5
	ld (ix+010h),c		;aaa8
laaabh:
	pop ix			;aaab
	ret			;aaad
	ret			;aaae
	ld (bc),a		;aaaf
	inc c			;aab0
	ex af,af'		;aab1
	ld (de),a		;aab2
	rlca			;aab3
	inc a			;aab4
	inc c			;aab5
	ex af,af'		;aab6
	ld (de),a		;aab7
	rlca			;aab8
	jr z,$+17		;aab9
	ld b,008h		;aabb
	rrca			;aabd
	ld e,014h		;aabe
	dec c			;aac0
	add hl,bc		;aac1
	add hl,bc		;aac2
	ld (0070fh),a		;aac3
	inc c			;aac6
	ex af,af'		;aac7
	ld (00a12h),a		;aac8
	ld a,(bc)		;aacb
	inc c			;aacc
	jr z,$+17		;aacd
	inc b			;aacf
	djnz laadfh		;aad0
	ld (00712h),a		;aad2
	inc c			;aad5
	inc c			;aad6
	call 08b79h		;aad7
	ld a,(ix+001h)		;aada
	cp 006h			;aadd
laadfh:
	jp nc,04ae0h		;aadf
	call 0461ah		;aae2
	pop af			;aae5
	adc a,d			;aae6
	ld b,(hl)		;aae7
	adc a,e			;aae8
	ld c,h			;aae9
	adc a,e			;aaea
	ld e,a			;aaeb
	adc a,e			;aaec
	ld l,h			;aaed
	adc a,e			;aaee
	ld (hl),d		;aaef
	adc a,e			;aaf0
	call 06796h		;aaf1
	add a,020h		;aaf4
	ld (ix+018h),a		;aaf6
	ld (ix+017h),020h	;aaf9
	ld (ix+00ah),01fh	;aafd
	ld (ix+008h),014h	;ab01
	push ix			;ab05
	push ix			;ab07
	pop iy			;ab09
	ld a,035h		;ab0b
	call 069bfh		;ab0d
	ld (ix+00ah),01fh	;ab10
	ld (ix+008h),014h	;ab14
	ld (ix+021h),002h	;ab18
	push iy			;ab1c
	pop ix			;ab1e
	ld a,035h		;ab20
	call 069bfh		;ab22
	ld (ix+00ah),01fh	;ab25
	ld (ix+008h),002h	;ab29
	inc (ix+005h)		;ab2d
	ld (ix+021h),001h	;ab30
	pop ix			;ab34
	call 08be2h		;ab36
	call 08b3eh		;ab39
	jr lab46h		;ab3c
lab3eh:
	inc (ix+001h)		;ab3e
	ret			;ab41
lab42h:
	ld (ix+001h),a		;ab42
	ret			;ab45
lab46h:
	call 08b88h		;ab46
	call 08b3eh		;ab49
	ld a,(ix+023h)		;ab4c
	or a			;ab4f
	ld de,0fe00h		;ab50
	jp nz,06bfdh		;ab53
	call 08bc0h		;ab56
	dec (ix+017h)		;ab59
	ret nz			;ab5c
	jr lab3eh		;ab5d
	call 08bc0h		;ab5f
	ld a,(ix+037h)		;ab62
	cp 002h			;ab65
	jp nz,06e98h		;ab67
	jr lab3eh		;ab6a
	ld (ix+022h),001h	;ab6c
	jr lab3eh		;ab70
	xor a			;ab72
	ld (ix+022h),a		;ab73
	inc a			;ab76
	jr lab42h		;ab77
	ld a,(0ca02h)		;ab79
	and 007h		;ab7c
	ret nz			;ab7e
	dec (ix+018h)		;ab7f
	ret nz			;ab82
	ld (ix+023h),001h	;ab83
	ret			;ab87
	ld a,(ix+024h)		;ab88
	push af			;ab8b
	call 08b9bh		;ab8c
	pop af			;ab8f
	inc a			;ab90
	cp 008h			;ab91
	jr c,lab97h		;ab93
	ld a,001h		;ab95
lab97h:
	ld (ix+024h),a		;ab97
	ret			;ab9a
	ld l,a			;ab9b
	add a,a			;ab9c
	add a,a			;ab9d
	add a,l			;ab9e
	ld hl,08aafh		;ab9f
	call 04600h		;aba2
	ld a,(hl)		;aba5
	inc hl			;aba6
	ld (ix+017h),a		;aba7
	ld a,(hl)		;abaa
	inc hl			;abab
	ld (ix+026h),a		;abac
	ld a,(hl)		;abaf
	inc hl			;abb0
	ld (ix+027h),a		;abb1
	ld a,(hl)		;abb4
	inc hl			;abb5
	ld (ix+028h),a		;abb6
	ld a,(hl)		;abb9
	inc hl			;abba
	ld (ix+029h),a		;abbb
	ret			;abbe
	ret			;abbf
	ld d,(ix+00ah)		;abc0
	ld e,(ix+008h)		;abc3
	call 08be9h		;abc6
	add a,d			;abc9
	ld d,a			;abca
	call 0753ch		;abcb
	jr c,labd7h		;abce
	cp 003h			;abd0
	ret nz			;abd2
	jp 06b53h		;abd3
	ret			;abd6
labd7h:
	ld a,(ix+00ah)		;abd7
	sub 002h		;abda
	cp 01ch			;abdc
	ret c			;abde
	jp 06b53h		;abdf
	ld de,0ffa0h		;abe2
	call 06bfdh		;abe5
	ret			;abe8
	ld a,(ix+00eh)		;abe9
	or a			;abec
	ld a,0ffh		;abed
	ret m			;abef
	ld a,005h		;abf0
	ret			;abf2
	ld a,(ix+001h)		;abf3
	dec a			;abf6
	jr z,lac0eh		;abf7
	call 06754h		;abf9
	call 04678h		;abfc
	and 003h		;abff
	ld (ix+006h),a		;ac01
	call 08c1dh		;ac04
	ld (ix+03eh),00dh	;ac07
	jp 06c1dh		;ac0b
lac0eh:
	call 06ad2h		;ac0e
	ret nz			;ac11
	ld a,(ix+006h)		;ac12
	call 09f32h		;ac15
	ld b,004h		;ac18
	call 06ac2h		;ac1a
	ld a,(0ca19h)		;ac1d
	rrca			;ac20
	rrca			;ac21
	and 003h		;ac22
	ld l,a			;ac24
	ld h,000h		;ac25
	ld de,08c30h		;ac27
	add hl,de		;ac2a
	ld a,(hl)		;ac2b
	ld (ix+017h),a		;ac2c
	ret			;ac2f
	ld (de),a		;ac30
	djnz lac3dh		;ac31
	ex af,af'		;ac33
	ld a,(ix+001h)		;ac34
	dec a			;ac37
	jr z,lac61h		;ac38
	call 06754h		;ac3a
lac3dh:
	ld a,d			;ac3d
	rlca			;ac3e
	jr nc,lac44h		;ac3f
	inc (ix+023h)		;ac41
lac44h:
	call 06796h		;ac44
	ld (ix+021h),a		;ac47
	call 08c9bh		;ac4a
	ld (ix+03eh),00eh	;ac4d
	call 08cdfh		;ac51
	ld a,(0ca04h)		;ac54
	and a			;ac57
	jr z,lac5eh		;ac58
	ld (ix+016h),018h	;ac5a
lac5eh:
	jp 06c1dh		;ac5e
lac61h:
	call 08cbah		;ac61
	ld l,(ix+021h)		;ac64
	ld h,000h		;ac67
	add hl,hl		;ac69
	add hl,hl		;ac6a
	ld de,08d1bh		;ac6b
	add hl,de		;ac6e
	ld a,(ix+008h)		;ac6f
	sub 002h		;ac72
	rlca			;ac74
	jr c,lac7fh		;ac75
	ld a,(ix+00ah)		;ac77
	sub 002h		;ac7a
	rlca			;ac7c
	jr nc,lac81h		;ac7d
lac7fh:
	inc hl			;ac7f
	inc hl			;ac80
lac81h:
	ld e,(hl)		;ac81
	inc hl			;ac82
	ld d,(hl)		;ac83
	ld a,(ix+008h)		;ac84
	add a,e			;ac87
	ld e,a			;ac88
	ld a,(ix+00ah)		;ac89
	add a,d			;ac8c
	ld d,a			;ac8d
	call 0753ch		;ac8e
	ret c			;ac91
	ret z			;ac92
	ld a,001h		;ac93
	xor (ix+021h)		;ac95
	ld (ix+021h),a		;ac98
	ld l,(ix+021h)		;ac9b
	ld h,000h		;ac9e
	add hl,hl		;aca0
	add hl,hl		;aca1
	ld de,08cfbh		;aca2
	add hl,de		;aca5
	ld a,(hl)		;aca6
	ld (ix+00bh),a		;aca7
	inc hl			;acaa
	ld a,(hl)		;acab
	ld (ix+00ch),a		;acac
	inc hl			;acaf
	ld a,(hl)		;acb0
	ld (ix+00dh),a		;acb1
	inc hl			;acb4
	ld a,(hl)		;acb5
	ld (ix+00eh),a		;acb6
	ret			;acb9
	ld a,(ix+023h)		;acba
	and a			;acbd
	ret nz			;acbe
	call 06ad2h		;acbf
	ret nz			;acc2
	call 06adfh		;acc3
	ret nz			;acc6
	ld (ix+018h),006h	;acc7
	ld d,000h		;accb
	ld bc,002feh		;accd
	call 09f90h		;acd0
	ld bc,00207h		;acd3
	ld d,001h		;acd6
	call 09f90h		;acd8
	dec (ix+022h)		;acdb
	ret nz			;acde
	ld a,(0ca19h)		;acdf
	rrca			;ace2
	and 007h		;ace3
	ld l,a			;ace5
	ld h,000h		;ace6
	add hl,hl		;ace8
	ld de,08d0bh		;ace9
	add hl,de		;acec
	ld a,(hl)		;aced
	ld (ix+017h),a		;acee
	inc hl			;acf1
	ld a,(hl)		;acf2
	ld (ix+022h),a		;acf3
	ld (ix+018h),001h	;acf6
	ret			;acfa
	add a,b			;acfb
	rst 38h			;acfc
	nop			;acfd
	nop			;acfe
	add a,b			;acff
	nop			;ad00
	nop			;ad01
	nop			;ad02
	nop			;ad03
	nop			;ad04
	add a,b			;ad05
	nop			;ad06
	nop			;ad07
	nop			;ad08
	add a,b			;ad09
	rst 38h			;ad0a
	jr c,$+3		;ad0b
	jr nc,lad10h		;ad0d
	inc l			;ad0f
lad10h:
	ld (bc),a		;ad10
	jr z,lad15h		;ad11
	jr nc,lad17h		;ad13
lad15h:
	inc l			;ad15
	inc bc			;ad16
lad17h:
	jr nc,lad1ch		;ad17
	inc l			;ad19
	inc b			;ad1a
	rst 38h			;ad1b
lad1ch:
	nop			;ad1c
	rst 38h			;ad1d
	dec b			;ad1e
	rlca			;ad1f
	nop			;ad20
	rlca			;ad21
	dec b			;ad22
	nop			;ad23
	rlca			;ad24
	ld b,007h		;ad25
	nop			;ad27
	cp 006h			;ad28
	cp 0c9h			;ad2a
	ld de,08dbch		;ad2c
	call 07b65h		;ad2f
	ld a,(ix+001h)		;ad32
	dec a			;ad35
	jr z,lad55h		;ad36
	dec a			;ad38
	jr z,lad76h		;ad39
	call 06754h		;ad3b
	call 06796h		;ad3e
	ld (ix+020h),a		;ad41
	ld de,08da4h		;ad44
	ld l,a			;ad47
	ld h,000h		;ad48
	add hl,de		;ad4a
	ld a,(hl)		;ad4b
	ld (ix+017h),a		;ad4c
	inc (ix+018h)		;ad4f
	jp 06c1dh		;ad52
lad55h:
	call 06ad2h		;ad55
	ret nz			;ad58
	ld a,(ix+021h)		;ad59
	inc (ix+021h)		;ad5c
	add a,008h		;ad5f
	ld (ix+006h),a		;ad61
	cp 00ch			;ad64
	ret nz			;ad66
	ld a,022h		;ad67
	call 04af0h		;ad69
	xor a			;ad6c
	ld (ix+006h),a		;ad6d
	ld (ix+021h),a		;ad70
	jp 06c1dh		;ad73
lad76h:
	call 06adfh		;ad76
	ret nz			;ad79
	ld b,008h		;ad7a
	call 06ac2h		;ad7c
	jr z,lad92h		;ad7f
	cp 004h			;ad81
	ret nz			;ad83
	ld l,(ix+020h)		;ad84
	ld h,000h		;ad87
	ld de,08dach		;ad89
	add hl,de		;ad8c
	ld a,(hl)		;ad8d
	ld (ix+018h),a		;ad8e
	ret			;ad91
lad92h:
	ld l,(ix+020h)		;ad92
	ld h,000h		;ad95
	ld de,08db4h		;ad97
	add hl,de		;ad9a
	ld a,(hl)		;ad9b
	ld (ix+017h),a		;ad9c
	ld (ix+001h),001h	;ad9f
	ret			;ada3
	ex af,af'		;ada4
	jr $+10			;ada5
	ld bc,00101h		;ada7
	ld bc,00802h		;adaa
	ex af,af'		;adad
	jr nz,ladc0h		;adae
	ex af,af'		;adb0
	djnz $+42		;adb1
	ld bc,02010h		;adb3
	djnz ladd8h		;adb6
	ex af,af'		;adb8
	ex af,af'		;adb9
	inc b			;adba
	ld (bc),a		;adbb
	sub 08dh		;adbc
	pop hl			;adbe
	adc a,l			;adbf
ladc0h:
	pop af			;adc0
	adc a,l			;adc1
	ld bc,0118eh		;adc2
	adc a,(hl)		;adc5
	ld hl,0318eh		;adc6
	adc a,(hl)		;adc9
	ld b,c			;adca
	adc a,(hl)		;adcb
	ld d,c			;adcc
	adc a,(hl)		;adcd
	ld h,c			;adce
	adc a,(hl)		;adcf
	ld (hl),c		;add0
	adc a,(hl)		;add1
	ld h,c			;add2
	adc a,(hl)		;add3
	ld d,c			;add4
	adc a,(hl)		;add5
	dec bc			;add6
	nop			;add7
ladd8h:
	nop			;add8
	ld bc,0fe00h		;add9
	inc c			;addc
	nop			;addd
	ld bc,0ff01h		;adde
	djnz lade3h		;ade1
lade3h:
	nop			;ade3
	ld bc,0fe00h		;ade4
	inc c			;ade7
	nop			;ade8
	ld bc,0fe01h		;ade9
	inc b			;adec
	ld bc,00201h		;aded
	rst 38h			;adf0
	djnz ladf3h		;adf1
ladf3h:
	nop			;adf3
	ld bc,0fe00h		;adf4
	inc c			;adf7
	nop			;adf8
	ld bc,0fe01h		;adf9
	inc b			;adfc
	ld bc,00301h		;adfd
	rst 38h			;ae00
	djnz lae03h		;ae01
lae03h:
	nop			;ae03
	ld bc,0fe00h		;ae04
	inc c			;ae07
	nop			;ae08
	ld bc,0fe01h		;ae09
	inc b			;ae0c
	ld bc,00401h		;ae0d
	rst 38h			;ae10
	djnz lae13h		;ae11
lae13h:
	nop			;ae13
	ld bc,0fe00h		;ae14
	inc c			;ae17
	nop			;ae18
	ld bc,0fe01h		;ae19
	inc b			;ae1c
	ld bc,00501h		;ae1d
	rst 38h			;ae20
	djnz lae23h		;ae21
lae23h:
	nop			;ae23
	ld bc,0fe00h		;ae24
	inc c			;ae27
	nop			;ae28
	ld bc,0fe01h		;ae29
	dec b			;ae2c
	ld bc,00601h		;ae2d
	rst 38h			;ae30
	djnz lae33h		;ae31
lae33h:
	nop			;ae33
	ld bc,0fe00h		;ae34
	inc c			;ae37
	nop			;ae38
	ld bc,0fe01h		;ae39
	ld b,001h		;ae3c
	ld bc,0ff07h		;ae3e
	djnz lae43h		;ae41
lae43h:
	nop			;ae43
	ld bc,0fe00h		;ae44
	inc c			;ae47
	nop			;ae48
	ld bc,0fe01h		;ae49
	rlca			;ae4c
	ld bc,00801h		;ae4d
	rst 38h			;ae50
	djnz lae53h		;ae51
lae53h:
	nop			;ae53
	ld bc,0fe00h		;ae54
	inc c			;ae57
	nop			;ae58
	ld bc,0fe01h		;ae59
	inc b			;ae5c
	ld bc,00901h		;ae5d
	rst 38h			;ae60
	djnz lae63h		;ae61
lae63h:
	nop			;ae63
	ld bc,0fe00h		;ae64
	inc c			;ae67
	nop			;ae68
	ld bc,0fe01h		;ae69
	inc b			;ae6c
	ld bc,00a01h		;ae6d
	rst 38h			;ae70
	djnz lae73h		;ae71
lae73h:
	nop			;ae73
	ld bc,0fe00h		;ae74
	inc c			;ae77
	nop			;ae78
	ld bc,0fe01h		;ae79
	inc b			;ae7c
	ld bc,00b01h		;ae7d
	rst 38h			;ae80
	ld a,(ix+001h)		;ae81
	cp 004h			;ae84
	jp nc,04ae0h		;ae86
	call 0461ah		;ae89
	and e			;ae8c
	adc a,(hl)		;ae8d
	res 1,(hl)		;ae8e
	ld hl,0388fh		;ae90
	adc a,a			;ae93
	call 06c4bh		;ae94
	call 06754h		;ae97
	ld (ix+017h),03ch	;ae9a
	ld (ix+008h),00ah	;ae9e
	ret			;aea2
	call 08ebah		;aea3
	dec (ix+017h)		;aea6
	ret nz			;aea9
	inc (ix+001h)		;aeaa
	ld (ix+018h),02dh	;aead
	ld (ix+017h),001h	;aeb1
	ld (ix+002h),0ffh	;aeb5
	ret			;aeb9
	ld a,(ix+009h)		;aeba
	or a			;aebd
	ret nz			;aebe
	ld b,(ix+00ah)		;aebf
	ld a,01ah		;aec2
	cp b			;aec4
	ld a,042h		;aec5
	jp z,04af5h		;aec7
	ret			;aeca
	call 08ebah		;aecb
	call 08f5fh		;aece
	call 08ef5h		;aed1
	dec (ix+017h)		;aed4
	ret nz			;aed7
	call 08f42h		;aed8
	ld a,(ix+018h)		;aedb
	sub 004h		;aede
	jr nc,laee4h		;aee0
	ld a,02dh		;aee2
laee4h:
	inc a			;aee4
	ld (ix+018h),a		;aee5
	ld d,a			;aee8
	ld a,(0ca19h)		;aee9
	neg			;aeec
	add a,01ah		;aeee
	add a,d			;aef0
	ld (ix+017h),a		;aef1
	ret			;aef4
	ld a,(ix+002h)		;aef5
	ld b,(ix+004h)		;aef8
	sub b			;aefb
	ld (ix+002h),a		;aefc
	ld (ix+004h),000h	;aeff
	push af			;af03
	ld a,b			;af04
	or a			;af05
	ld a,025h		;af06
	call nz,04af0h		;af08
	pop af			;af0b
	ret nc			;af0c
	ld (ix+015h),06fh	;af0d
	inc (ix+001h)		;af11
	ld (ix+017h),028h	;af14
	call 07058h		;af18
	ld a,001h		;af1b
	ld (0ce76h),a		;af1d
	ret			;af20
	call 08f5fh		;af21
	dec (ix+017h)		;af24
	ret nz			;af27
	ld a,052h		;af28
	call 04aebh		;af2a
	call 04d2bh		;af2d
	ld (ix+017h),014h	;af30
	inc (ix+001h)		;af34
	ret			;af37
	dec (ix+017h)		;af38
	ret nz			;af3b
	ld a,001h		;af3c
	ld (0ca0fh),a		;af3e
	ret			;af41
	push ix			;af42
	push ix			;af44
	ld a,023h		;af46
	call 069a3h		;af48
	pop iy			;af4b
	jp c,08f5ch		;af4d
	ld a,(iy+008h)		;af50
	ld (ix+008h),a		;af53
	ld a,(iy+00ah)		;af56
	ld (ix+00ah),a		;af59
	pop ix			;af5c
	ret			;af5e
	ld a,(ix+021h)		;af5f
	inc a			;af62
	and 00fh		;af63
	ld (ix+021h),a		;af65
	ld de,08f74h		;af68
	call 04624h		;af6b
	ex de,hl		;af6e
	ld a,00bh		;af6f
	jp 04776h		;af71
	ld d,(hl)		;af74
	rlca			;af75
	ld d,(hl)		;af76
	rlca			;af77
	ld b,l			;af78
	rlca			;af79
	inc (hl)		;af7a
	rlca			;af7b
	inc hl			;af7c
	rlca			;af7d
	ld (de),a		;af7e
	ld b,001h		;af7f
	dec b			;af81
	nop			;af82
	inc b			;af83
	nop			;af84
	inc bc			;af85
	nop			;af86
	inc b			;af87
	ld bc,01205h		;af88
	ld b,023h		;af8b
	rlca			;af8d
	inc (hl)		;af8e
	rlca			;af8f
	ld b,l			;af90
	rlca			;af91
	ld d,(hl)		;af92
	rlca			;af93
	ld a,(ix+001h)		;af94
	cp 004h			;af97
	jp nc,04ae0h		;af99
	call 0461ah		;af9c
	and a			;af9f
	adc a,a			;afa0
	cp b			;afa1
	adc a,a			;afa2
	call 0008fh		;afa3
	sub b			;afa6
	call 06796h		;afa7
	push af			;afaa
	call 06796h		;afab
	pop bc			;afae
	ld d,a			;afaf
	ld e,b			;afb0
	call 09001h		;afb1
	inc (ix+001h)		;afb4
	ret			;afb7
	dec (ix+017h)		;afb8
	ret nz			;afbb
	inc (ix+001h)		;afbc
	ld (ix+017h),00fh	;afbf
	ld a,(ix+008h)		;afc3
	cp 00ch			;afc6
	ret c			;afc8
	inc (ix+021h)		;afc9
	ret			;afcc
	dec (ix+017h)		;afcd
	call z,07143h		;afd0
	bit 0,(ix+021h)		;afd3
	ld hl,00080h		;afd7
	call nz,04612h		;afda
	ld de,00000h		;afdd
	call 06d4fh		;afe0
	ld a,(0ca48h)		;afe3
	sub (ix+008h)		;afe6
	bit 0,(ix+021h)		;afe9
	call z,08ffeh		;afed
	ret c			;aff0
	inc (ix+001h)		;aff1
	ld iy,0ca40h		;aff4
	ld a,014h		;aff8
	call 06b6ch		;affa
	ret			;affd
	ccf			;affe
	ret			;afff
	ret			;b000
	ld (ix+017h),01ah	;b001
	ld a,d			;b005
	sub (ix+00ah)		;b006
	ld l,a			;b009
	rlca			;b00a
	sbc a,a			;b00b
	ld h,a			;b00c
	ld b,h			;b00d
	ld c,l			;b00e
	add hl,hl		;b00f
	add hl,hl		;b010
	add hl,hl		;b011
	ex de,hl		;b012
	ld a,l			;b013
	sub (ix+008h)		;b014
	ld l,a			;b017
	rlca			;b018
	sbc a,a			;b019
	ld h,a			;b01a
	ld b,h			;b01b
	ld c,l			;b01c
	add hl,hl		;b01d
	add hl,bc		;b01e
	add hl,hl		;b01f
	add hl,hl		;b020
	jp 06bebh		;b021
	call 09d1eh		;b024
	ld (iy+000h),045h	;b027
	ld (iy+013h),004h	;b02b
	ld (iy+014h),084h	;b02f
	ld (iy+016h),000h	;b033
	ld (iy+015h),0b9h	;b037
	ret			;b03b
	jp 09d60h		;b03c
	ld a,030h		;b03f
	call 04af5h		;b041
	call 06754h		;b044
	ld (ix+00ah),01fh	;b047
	ld de,00000h		;b04b
	call 0915dh		;b04e
	jp 06e98h		;b051
	ld a,(ix+001h)		;b054
	dec a			;b057
	jr z,lb083h		;b058
	dec a			;b05a
	jr z,lb0a6h		;b05b
	jp p,090bfh		;b05d
	ld a,(0c0d4h)		;b060
	or a			;b063
	jr nz,lb06ah		;b064
	dec (ix+017h)		;b066
	ret nz			;b069
lb06ah:
	ld (ix+017h),004h	;b06a
	ld (ix+012h),001h	;b06e
	inc (ix+001h)		;b072
	ld a,(ix+003h)		;b075
	or a			;b078
	ld a,020h		;b079
	jr z,lb07fh		;b07b
	ld a,008h		;b07d
lb07fh:
	ld (ix+002h),a		;b07f
	ret			;b082
lb083h:
	call 0909eh		;b083
	call 06c29h		;b086
	dec (ix+017h)		;b089
	ret nz			;b08c
	inc (ix+001h)		;b08d
	ld a,(ix+003h)		;b090
	or a			;b093
	ld a,031h		;b094
	jp z,04af5h		;b096
	ld a,02ch		;b099
	jp 04af5h		;b09b
	bit 0,(ix+017h)		;b09e
	ret nz			;b0a2
	jp 090cfh		;b0a3
lb0a6h:
	call 06c29h		;b0a6
	ld a,(ix+012h)		;b0a9
	add a,004h		;b0ac
	ld (ix+012h),a		;b0ae
	call 090cfh		;b0b1
	ld a,(ix+012h)		;b0b4
	cp (ix+002h)		;b0b7
	ret c			;b0ba
	inc (ix+001h)		;b0bb
	ret			;b0be
	call 06c29h		;b0bf
	ld a,(ix+00ah)		;b0c2
	sub 004h		;b0c5
	cp 020h			;b0c7
	jp nc,06each		;b0c9
	ld (ix+00ah),a		;b0cc
	ld a,(ix+003h)		;b0cf
	or a			;b0d2
	jr nz,lb0d9h		;b0d3
	ld (0ce73h),ix		;b0d5
lb0d9h:
	ld a,(ix+012h)		;b0d9
	ld b,(ix+00ah)		;b0dc
	cp b			;b0df
	jr c,lb0e3h		;b0e0
	ld a,b			;b0e2
lb0e3h:
	inc a			;b0e3
	ld (ix+011h),a		;b0e4
	ld d,(ix+00ah)		;b0e7
	ld e,(ix+008h)		;b0ea
	call 07b06h		;b0ed
	ret nc			;b0f0
	ex de,hl		;b0f1
	ld b,(ix+011h)		;b0f2
	ld a,b			;b0f5
	or a			;b0f6
	ret z			;b0f7
	ld a,(ix+003h)		;b0f8
	or a			;b0fb
	jr nz,lb13ah		;b0fc
	ld a,(hl)		;b0fe
	exx			;b0ff
	ld h,0deh		;b100
	ld l,a			;b102
	ld a,(hl)		;b103
	exx			;b104
	cp 003h			;b105
	jp z,06each		;b107
	ld c,001h		;b10a
	call 0911eh		;b10c
lb10fh:
	ld a,(hl)		;b10f
	exx			;b110
	ld h,0deh		;b111
	ld l,a			;b113
	ld a,(hl)		;b114
	exx			;b115
	cp 003h			;b116
	ret z			;b118
	ld (hl),d		;b119
	dec hl			;b11a
	djnz lb10fh		;b11b
	ret			;b11d
	ld a,(0c0d4h)		;b11e
	or a			;b121
	ld d,0cbh		;b122
	ret z			;b124
	ld a,(ix+00fh)		;b125
	ld d,0cch		;b128
	cp 007h			;b12a
	ret z			;b12c
	cp 000h			;b12d
	ret z			;b12f
	inc d			;b130
	cp 006h			;b131
	ret z			;b133
	cp 001h			;b134
	ret z			;b136
	ld d,0cbh		;b137
	ret			;b139
lb13ah:
	ld a,(ix+018h)		;b13a
	inc a			;b13d
	ld (ix+018h),a		;b13e
	rrca			;b141
	ld de,0cccdh		;b142
	jr c,lb14ah		;b145
	ld de,0cdcch		;b147
lb14ah:
	ld a,(hl)		;b14a
	cp 003h			;b14b
	ret z			;b14d
	ld (hl),d		;b14e
	dec hl			;b14f
	dec b			;b150
	ret z			;b151
	ld (hl),e		;b152
	dec hl			;b153
	djnz lb14ah		;b154
	ret			;b156
	ld a,001h		;b157
	ld b,001h		;b159
	jr lb161h		;b15b
	xor a			;b15d
	ld h,a			;b15e
	ld b,008h		;b15f
lb161h:
	push af			;b161
	push hl			;b162
	push bc			;b163
	push ix			;b164
	push ix			;b166
	push de			;b168
	push af			;b169
	push hl			;b16a
	ld a,046h		;b16b
	call 070dah		;b16d
	pop hl			;b170
	pop bc			;b171
	pop de			;b172
	pop iy			;b173
	jp c,091a2h		;b175
	ld (ix+00fh),h		;b178
	ld (ix+003h),b		;b17b
	ld b,(iy+008h)		;b17e
	ld c,(iy+007h)		;b181
	ld l,000h		;b184
	ld h,e			;b186
	add hl,bc		;b187
	ld (ix+008h),h		;b188
	ld (ix+007h),l		;b18b
	ld b,(iy+00ah)		;b18e
	ld c,(iy+009h)		;b191
	ld h,d			;b194
	ld l,000h		;b195
	add hl,bc		;b197
	ld (ix+00ah),h		;b198
	ld (ix+009h),l		;b19b
	ld (ix+017h),014h	;b19e
	pop ix			;b1a2
	pop bc			;b1a4
	pop hl			;b1a5
	pop af			;b1a6
	inc e			;b1a7
	inc h			;b1a8
	djnz lb161h		;b1a9
	ret			;b1ab
	ld a,(ix+008h)		;b1ac
	sub 0f0h		;b1af
	cp 008h			;b1b1
	jp c,06e98h		;b1b3
	ld a,(ix+001h)		;b1b6
	cp 004h			;b1b9
	jp nc,04ae0h		;b1bb
	call 0461ah		;b1be
	ld e,l			;b1c1
	sub d			;b1c2
	ld e,l			;b1c3
	sub d			;b1c4
	ld d,e			;b1c5
	sub d			;b1c6
	ld hl,0dd92h		;b1c7
	ld a,(hl)		;b1ca
	dec d			;b1cb
	and 004h		;b1cc
	or 022h			;b1ce
	ld (ix+015h),a		;b1d0
	call 06754h		;b1d3
	ld a,(ix+008h)		;b1d6
	add a,003h		;b1d9
	ld (ix+008h),a		;b1db
	call 06796h		;b1de
	ld (ix+006h),a		;b1e1
	res 7,(ix+006h)		;b1e4
	and 007h		;b1e8
	call 09226h		;b1ea
	ld a,c			;b1ed
	and 007h		;b1ee
	add a,a			;b1f0
	add a,a			;b1f1
	add a,a			;b1f2
	add a,a			;b1f3
	add a,a			;b1f4
	ld (ix+026h),a		;b1f5
	rl c			;b1f8
	sbc a,a			;b1fa
	add a,a			;b1fb
	inc a			;b1fc
	add a,a			;b1fd
	ld (ix+012h),a		;b1fe
	ld b,006h		;b201
	ld (ix+017h),000h	;b203
lb207h:
	call 0922dh		;b207
	jr c,lb219h		;b20a
	ld (ix+017h),001h	;b20c
	ld (ix+018h),000h	;b210
	ld (ix+001h),002h	;b214
	ret			;b218
lb219h:
	ld (ix+024h),b		;b219
	ld (ix+001h),003h	;b21c
	ret			;b220
	ld b,(ix+024h)		;b221
	jr lb207h		;b224
	ld c,085h		;b226
	dec a			;b228
	ret z			;b229
	ld c,001h		;b22a
	ret			;b22c
lb22dh:
	push bc			;b22d
	call 0923ah		;b22e
	jr c,lb238h		;b231
	pop bc			;b233
	djnz lb22dh		;b234
	or a			;b236
	ret			;b237
lb238h:
	pop bc			;b238
	ret			;b239
	call 0682ah		;b23a
	ret c			;b23d
	ld h,(ix+008h)		;b23e
	ld (iy+008h),h		;b241
	ld (iy+00ah),01ch	;b244
	ld a,(ix+003h)		;b248
	ld (iy+003h),a		;b24b
	inc a			;b24e
	ld (ix+003h),a		;b24f
	ret			;b252
	ld a,(ix+017h)		;b253
	add a,(ix+012h)		;b256
	ld (ix+017h),a		;b259
	ret			;b25c
	call 068deh		;b25d
	jp c,06e98h		;b260
	ld a,(ix+003h)		;b263
	ld c,a			;b266
	add a,a			;b267
	ld hl,092d8h		;b268
	ld e,a			;b26b
	ld d,000h		;b26c
	add hl,de		;b26e
	ld a,(iy+017h)		;b26f
	add a,(hl)		;b272
	ld c,a			;b273
	sub (iy+026h)		;b274
	add a,040h		;b277
	cp 080h			;b279
	ld a,c			;b27b
	jr c,lb280h		;b27c
	sub 080h		;b27e
lb280h:
	inc hl			;b280
	ld e,(hl)		;b281
	push de			;b282
	push af			;b283
	push de			;b284
	call 074efh		;b285
	pop de			;b288
	call 092b9h		;b289
	ld e,(iy+007h)		;b28c
	ld d,(iy+008h)		;b28f
	add hl,de		;b292
	ld (ix+007h),l		;b293
	ld (ix+008h),h		;b296
	pop af			;b299
	call 074edh		;b29a
	pop de			;b29d
	call 092b9h		;b29e
	ld e,(iy+009h)		;b2a1
	ld d,(iy+00ah)		;b2a4
	add hl,de		;b2a7
	ld (ix+009h),l		;b2a8
	ld (ix+00ah),h		;b2ab
	ld a,(ix+008h)		;b2ae
	cp 018h			;b2b1
	ret c			;b2b3
	ld (ix+008h),01dh	;b2b4
	ret			;b2b8
	bit 7,h			;b2b9
	jr nz,lb2ceh		;b2bb
	ld h,l			;b2bd
	call 072b0h		;b2be
	srl h			;b2c1
	rr l			;b2c3
	srl h			;b2c5
	rr l			;b2c7
	srl h			;b2c9
	rr l			;b2cb
	ret			;b2cd
lb2ceh:
	ld a,l			;b2ce
	neg			;b2cf
	ld h,a			;b2d1
	call 092beh		;b2d2
	jp 04612h		;b2d5
	nop			;b2d8
	jr z,lb2dbh		;b2d9
lb2dbh:
	jr c,lb2ddh		;b2db
lb2ddh:
	ld c,b			;b2dd
	ld b,b			;b2de
	jr z,lb321h		;b2df
	jr c,$+66		;b2e1
	ld c,b			;b2e3
	ld a,(0ca02h)		;b2e4
	and 001h		;b2e7
	ld (ix+005h),a		;b2e9
	ld a,(ix+001h)		;b2ec
	dec a			;b2ef
	jr z,lb324h		;b2f0
	dec a			;b2f2
	jr z,lb34eh		;b2f3
	call 06796h		;b2f5
	ld b,a			;b2f8
	and 07fh		;b2f9
	ld (ix+008h),a		;b2fb
	ld a,b			;b2fe
	rlca			;b2ff
	ld hl,00040h		;b300
	jr nc,lb30bh		;b303
	inc (ix+021h)		;b305
	ld hl,0ffc0h		;b308
lb30bh:
	call 06bf3h		;b30b
	call 06796h		;b30e
	ld (ix+00ah),a		;b311
	ld a,040h		;b314
	call 06adbh		;b316
	ld (ix+017h),001h	;b319
	ld (ix+03dh),001h	;b31d
lb321h:
	jp 06c1dh		;b321
lb324h:
	ld a,(ix+021h)		;b324
	ld de,00100h		;b327
	and a			;b32a
	jr nz,lb330h		;b32b
	ld de,00102h		;b32d
lb330h:
	call 0936eh		;b330
	ret z			;b333
	ld l,(ix+00bh)		;b334
	ld h,(ix+00ch)		;b337
	ld (ix+022h),l		;b33a
	ld (ix+023h),h		;b33d
	call 06be6h		;b340
	call 04678h		;b343
	and 00fh		;b346
	ld (ix+017h),a		;b348
	jp 06c1dh		;b34b
lb34eh:
	call 06ad2h		;b34e
	ret nz			;b351
	ld l,(ix+022h)		;b352
	ld h,(ix+023h)		;b355
	ld (ix+00bh),l		;b358
	ld (ix+00ch),h		;b35b
	call 06b43h		;b35e
	ld a,001h		;b361
	xor (ix+021h)		;b363
	ld (ix+021h),a		;b366
	ld (ix+001h),001h	;b369
	ret			;b36d
	ld a,e			;b36e
	add a,(ix+008h)		;b36f
	ld e,a			;b372
	ld a,d			;b373
	add a,(ix+00ah)		;b374
	ld d,a			;b377
	jp 0753ch		;b378
	ld a,(0ca02h)		;b37b
	xor (ix+02dh)		;b37e
	and 003h		;b381
	jr z,lb387h		;b383
	ld a,0ffh		;b385
lb387h:
	inc a			;b387
	ld (ix+03dh),a		;b388
	call 06c26h		;b38b
	ld a,(ix+001h)		;b38e
	call 0461ah		;b391
	sbc a,d			;b394
	sub e			;b395
	and h			;b396
	sub e			;b397
	cp (hl)			;b398
	sub e			;b399
	call 06754h		;b39a
	inc (ix+001h)		;b39d
	ld (ix+017h),014h	;b3a0
	dec (ix+017h)		;b3a4
	ret nz			;b3a7
	inc (ix+001h)		;b3a8
	ld hl,00070h		;b3ab
	call 06bf3h		;b3ae
	ld hl,00011h		;b3b1
	ld de,00016h		;b3b4
	call 06c04h		;b3b7
	call 093f9h		;b3ba
	ret			;b3bd
	ld a,(0ca04h)		;b3be
	or a			;b3c1
	jr z,lb3dbh		;b3c2
	ld a,(0ca02h)		;b3c4
	xor (ix+02dh)		;b3c7
	inc (ix+00ah)		;b3ca
	inc (ix+008h)		;b3cd
	and 0cfh		;b3d0
	call z,07143h		;b3d2
	dec (ix+00ah)		;b3d5
	dec (ix+008h)		;b3d8
lb3dbh:
	ld a,(ix+005h)		;b3db
	xor 001h		;b3de
	ld (ix+005h),a		;b3e0
	ld hl,00100h		;b3e3
	ld de,00100h		;b3e6
	call 0759ah		;b3e9
	call 093feh		;b3ec
	ld hl,000a0h		;b3ef
	ld de,000c0h		;b3f2
	call 06caeh		;b3f5
	ret			;b3f8
	ld (ix+02ah),0ffh	;b3f9
	ret			;b3fd
	push af			;b3fe
	call 0943eh		;b3ff
	pop af			;b402
	jr nc,lb420h		;b403
	jr nz,lb420h		;b405
	ld a,(ix+00ah)		;b407
	ld (ix+028h),a		;b40a
	ld a,(ix+009h)		;b40d
	ld (ix+029h),a		;b410
	ld a,(ix+008h)		;b413
	ld (ix+02ah),a		;b416
	ld a,(ix+007h)		;b419
	ld (ix+02bh),a		;b41c
	ret			;b41f
lb420h:
	ld a,(ix+02ah)		;b420
	inc a			;b423
	ret z			;b424
	ld a,(ix+028h)		;b425
	ld (ix+00ah),a		;b428
	ld a,(ix+029h)		;b42b
	ld (ix+009h),a		;b42e
	ld a,(ix+02ah)		;b431
	ld (ix+008h),a		;b434
	ld a,(ix+02bh)		;b437
	ld (ix+007h),a		;b43a
	ret			;b43d
	ld de,(0ca14h)		;b43e
	ld h,(ix+028h)		;b442
	ld l,(ix+029h)		;b445
	add hl,de		;b448
	ld (ix+028h),h		;b449
	ld (ix+029h),l		;b44c
	ld de,(0ca12h)		;b44f
	ld h,(ix+02ah)		;b453
	ld l,(ix+02bh)		;b456
	add hl,de		;b459
	ld (ix+02ah),h		;b45a
	ld (ix+02bh),l		;b45d
	ret			;b460
	call 06796h		;b461
	ld d,a			;b464
	and 07fh		;b465
	ld (ix+008h),a		;b467
	call 06796h		;b46a
	ld (ix+00ah),a		;b46d
	jp 082d3h		;b470
	jp 082cah		;b473
	ret			;b476
	ld a,(ix+001h)		;b477
	dec a			;b47a
	jr z,lb4bch		;b47b
	dec a			;b47d
	jr z,lb4edh		;b47e
	call 04678h		;b480
	ld b,a			;b483
	and 007h		;b484
	ld l,a			;b486
	ld h,000h		;b487
	add hl,hl		;b489
	ld de,094ach		;b48a
	add hl,de		;b48d
	ld a,(hl)		;b48e
	ld (ix+008h),a		;b48f
	inc hl			;b492
	ld a,b			;b493
	rrca			;b494
	ld a,(hl)		;b495
	jr c,lb499h		;b496
	inc a			;b498
lb499h:
	ld (ix+00ah),a		;b499
	ld a,b			;b49c
	rrca			;b49d
	rrca			;b49e
	rrca			;b49f
	and 003h		;b4a0
	inc a			;b4a2
	ld (ix+020h),a		;b4a3
	ld (ix+017h),a		;b4a6
	jp 06c1dh		;b4a9
	inc b			;b4ac
	ld bc,00502h		;b4ad
	ld (bc),a		;b4b0
	ex af,af'		;b4b1
	ld (bc),a		;b4b2
	dec bc			;b4b3
	inc b			;b4b4
	rrca			;b4b5
	ex af,af'		;b4b6
	dec d			;b4b7
	inc b			;b4b8
	dec c			;b4b9
	ld b,011h		;b4ba
lb4bch:
	call 06ad2h		;b4bc
	ret nz			;b4bf
	ld a,(ix+020h)		;b4c0
	ld (ix+017h),a		;b4c3
	ld b,006h		;b4c6
	call 06ab8h		;b4c8
	ret nz			;b4cb
	ld (ix+005h),006h	;b4cc
	ld hl,00040h		;b4d0
	call 06bf3h		;b4d3
	ld hl,00010h		;b4d6
	call 06c0ch		;b4d9
	ld hl,0ce51h		;b4dc
	dec (hl)		;b4df
	set 7,(ix+014h)		;b4e0
	inc (ix+008h)		;b4e4
	inc (ix+008h)		;b4e7
	jp 06c1dh		;b4ea
lb4edh:
	call 06a9ah		;b4ed
	ld a,(ix+005h)		;b4f0
	cp 007h			;b4f3
	ret z			;b4f5
	inc (ix+005h)		;b4f6
	ret			;b4f9
	call 06754h		;b4fa
	ld a,(0ca10h)		;b4fd
	cp 005h			;b500
	jr z,lb507h		;b502
	inc (ix+005h)		;b504
lb507h:
	ret			;b507
	ld a,(ix+001h)		;b508
	or a			;b50b
	jr nz,lb517h		;b50c
	inc (ix+001h)		;b50e
	call 06ce9h		;b511
	jp 06cf5h		;b514
lb517h:
	call 0953ch		;b517
	ld a,(ix+008h)		;b51a
	cp 018h			;b51d
	jp nc,06e98h		;b51f
	ld a,(ix+00ah)		;b522
	cp 024h			;b525
	jp nc,06e98h		;b527
	ld a,(ix+004h)		;b52a
	or a			;b52d
	ld a,023h		;b52e
	call nz,04af5h		;b530
	call 07cach		;b533
	jp nc,07747h		;b536
	jp 07cc3h		;b539
	ld a,(ix+003h)		;b53c
	and 003h		;b53f
	ld (ix+003h),a		;b541
	call 06d2ch		;b544
	ld h,(ix+028h)		;b547
	ld l,(ix+029h)		;b54a
	ld d,(ix+00ah)		;b54d
	ld e,(ix+009h)		;b550
	ld a,(0ca02h)		;b553
	and 007h		;b556
	jr nz,lb55eh		;b558
	ld bc,00040h		;b55a
	add hl,bc		;b55d
lb55eh:
	call 095a4h		;b55e
	ld (ix+012h),h		;b561
	ld (ix+011h),l		;b564
	bit 7,h			;b567
	call nz,04612h		;b569
	ld bc,00060h		;b56c
	or a			;b56f
	sbc hl,bc		;b570
	jr c,lb578h		;b572
	set 2,(ix+003h)		;b574
lb578h:
	ld h,(ix+02ah)		;b578
	ld l,(ix+02bh)		;b57b
	ld d,(ix+008h)		;b57e
	ld e,(ix+007h)		;b581
	call 095a4h		;b584
	ld (ix+010h),h		;b587
	ld (ix+00fh),l		;b58a
	bit 7,h			;b58d
	call nz,04612h		;b58f
	ld bc,00060h		;b592
	or a			;b595
	sbc hl,bc		;b596
	jr c,lb59eh		;b598
	set 3,(ix+003h)		;b59a
lb59eh:
	call 095bch		;b59e
	jp 06a9ah		;b5a1
	or a			;b5a4
	sbc hl,de		;b5a5
	sra h			;b5a7
	rr l			;b5a9
	sra h			;b5ab
	rr l			;b5ad
	sra h			;b5af
	rr l			;b5b1
	sra h			;b5b3
	rr l			;b5b5
	sra h			;b5b7
	rr l			;b5b9
	ret			;b5bb
	ld h,(ix+00eh)		;b5bc
	ld l,(ix+00dh)		;b5bf
	sra h			;b5c2
	rr l			;b5c4
	ld (ix+00eh),h		;b5c6
	ld (ix+00dh),l		;b5c9
	ld h,(ix+00ch)		;b5cc
	ld l,(ix+00bh)		;b5cf
	sra h			;b5d2
	rr l			;b5d4
	ld (ix+00ch),h		;b5d6
	ld (ix+00bh),l		;b5d9
	ret			;b5dc
	ld a,(iy+000h)		;b5dd
	cp 004h			;b5e0
	jr z,lb609h		;b5e2
	cp 007h			;b5e4
	jr z,lb609h		;b5e6
	cp 006h			;b5e8
	jr z,lb5efh		;b5ea
	cp 005h			;b5ec
	ret nz			;b5ee
lb5efh:
	ld a,(iy+012h)		;b5ef
	cp 004h			;b5f2
	ret nc			;b5f4
	add a,a			;b5f5
	add a,a			;b5f6
	ld e,a			;b5f7
	ld d,000h		;b5f8
	ld hl,09637h		;b5fa
	add hl,de		;b5fd
	ld e,(hl)		;b5fe
	inc hl			;b5ff
	ld d,(hl)		;b600
	inc hl			;b601
	ld c,(hl)		;b602
	inc hl			;b603
	ld b,(hl)		;b604
	call 0961dh		;b605
	ret			;b608
lb609h:
	ld d,(iy+00eh)		;b609
	ld e,(iy+00dh)		;b60c
	sra d			;b60f
	rr e			;b611
	ld b,(iy+00ch)		;b613
	ld c,(iy+00bh)		;b616
	sra b			;b619
	rr c			;b61b
	ld a,(ix+003h)		;b61d
	and 005h		;b620
	jr nz,lb62ah		;b622
	ld (ix+00ch),b		;b624
	ld (ix+00bh),c		;b627
lb62ah:
	ld a,(ix+003h)		;b62a
	and 00ah		;b62d
	ret nz			;b62f
	ld (ix+00eh),d		;b630
	ld (ix+00dh),e		;b633
	ret			;b636
	ld b,b			;b637
	nop			;b638
	nop			;b639
	nop			;b63a
	nop			;b63b
	nop			;b63c
	ld b,b			;b63d
	nop			;b63e
	ret nz			;b63f
	rst 38h			;b640
	nop			;b641
	nop			;b642
	nop			;b643
	nop			;b644
	ret nz			;b645
	rst 38h			;b646
	call 09480h		;b647
	call 06796h		;b64a
	ld (ix+00ah),a		;b64d
	ld (ix+008h),002h	;b650
	ret			;b654
	jp 09477h		;b655
	call 08341h		;b658
	ld a,(ix+017h)		;b65b
	and a			;b65e
	jr z,lb666h		;b65f
	dec a			;b661
	ld (ix+017h),a		;b662
	ret			;b665
lb666h:
	ld a,(ix+020h)		;b666
	and a			;b669
	ld bc,00000h		;b66a
	ld hl,09698h		;b66d
	jr z,lb678h		;b670
	ld bc,00200h		;b672
	ld hl,0969ch		;b675
lb678h:
	call 07300h		;b678
lb67bh:
	ld l,(ix+023h)		;b67b
	ld h,000h		;b67e
	ld de,09691h		;b680
	add hl,de		;b683
	ld a,(hl)		;b684
	and a			;b685
	jr nz,lb68ch		;b686
	ex de,hl		;b688
	ld (ix+023h),a		;b689
lb68ch:
	ld a,(hl)		;b68c
	ld (ix+017h),a		;b68d
	ret			;b690
	jr lb69bh		;b691
	jr z,lb69dh		;b693
	jr lb6cfh		;b695
	nop			;b697
	ld bc,00302h		;b698
lb69bh:
	rst 38h			;b69b
	dec c			;b69c
lb69dh:
	ld c,00fh		;b69d
	rst 38h			;b69f
	call 08347h		;b6a0
	inc (ix+03dh)		;b6a3
	ld (ix+03eh),000h	;b6a6
	jr lb67bh		;b6aa
	call 06e91h		;b6ac
	ld de,097c5h		;b6af
	call 07b65h		;b6b2
	ld a,(ix+001h)		;b6b5
	dec a			;b6b8
	jr z,lb6d8h		;b6b9
	dec a			;b6bb
	jr z,lb6ffh		;b6bc
	dec a			;b6be
	jr z,lb711h		;b6bf
	ld a,(0ca19h)		;b6c1
	cp 005h			;b6c4
	jr c,lb6cch		;b6c6
	ld (ix+016h),040h	;b6c8
lb6cch:
	call 06754h		;b6cc
lb6cfh:
	call 0976bh		;b6cf
	call 0972dh		;b6d2
	jp 06c1dh		;b6d5
lb6d8h:
	call 0971bh		;b6d8
	ld a,(ix+006h)		;b6db
	dec a			;b6de
	jr nz,lb6eah		;b6df
	set 7,(ix+014h)		;b6e1
	call 07c63h		;b6e5
	jr c,lb6f0h		;b6e8
lb6eah:
	res 7,(ix+014h)		;b6ea
	jr lb760h		;b6ee
lb6f0h:
	call 07cbeh		;b6f0
	ld a,001h		;b6f3
	ld (0ce76h),a		;b6f5
	ld (ix+006h),003h	;b6f8
	jp 06c1dh		;b6fc
lb6ffh:
	ld b,008h		;b6ff
	call 06ac2h		;b701
	cp 007h			;b704
	ret nz			;b706
	call 07058h		;b707
	ld (ix+017h),020h	;b70a
	jp 06c1dh		;b70e
lb711h:
	call 06ad2h		;b711
	ret nz			;b714
	ld a,001h		;b715
	ld (0ca0fh),a		;b717
	ret			;b71a
	call 06ad2h		;b71b
	ret nz			;b71e
	ld a,(0ca02h)		;b71f
	and 003h		;b722
	ret nz			;b724
	dec (ix+026h)		;b725
	jr z,lb72dh		;b728
	jp 0b6c9h		;b72a
lb72dh:
	ld l,(ix+027h)		;b72d
	inc (ix+027h)		;b730
	ld h,000h		;b733
	add hl,hl		;b735
	ld de,09755h		;b736
	add hl,de		;b739
	ld a,(hl)		;b73a
	inc a			;b73b
	jr nz,lb742h		;b73c
	ld (ix+027h),a		;b73e
	ex de,hl		;b741
lb742h:
	ld a,(hl)		;b742
	ld b,a			;b743
	and 07fh		;b744
	ld (ix+026h),a		;b746
	ld a,b			;b749
	and 080h		;b74a
	ld (ix+025h),a		;b74c
	inc hl			;b74f
	ld a,(hl)		;b750
	ld (ix+017h),a		;b751
	ret			;b754
	ld b,038h		;b755
	add a,a			;b757
	ld c,h			;b758
	ex af,af'		;b759
	ld c,(hl)		;b75a
	add a,l			;b75b
	inc a			;b75c
	add a,l			;b75d
	jr z,$+1		;b75e
lb760h:
	ld a,(ix+020h)		;b760
	and a			;b763
	call z,0976bh		;b764
	dec (ix+020h)		;b767
	ret			;b76a
	ld l,(ix+021h)		;b76b
	ld h,000h		;b76e
	add hl,hl		;b770
	ld a,(0ca19h)		;b771
	ld de,0979bh		;b774
	cp 004h			;b777
	jr c,lb77eh		;b779
	ld de,097b0h		;b77b
lb77eh:
	add hl,de		;b77e
	ld a,(hl)		;b77f
	and a			;b780
	jr nz,lb787h		;b781
	ld (ix+021h),a		;b783
	ex de,hl		;b786
lb787h:
	inc (ix+021h)		;b787
	ld a,(hl)		;b78a
	ld (ix+020h),a		;b78b
	inc hl			;b78e
	ld a,(hl)		;b78f
	ld (ix+006h),a		;b790
	dec a			;b793
	ret nz			;b794
	call 07ca7h		;b795
	jp 09c60h		;b798
	jr nz,lb79fh		;b79b
	inc b			;b79d
	nop			;b79e
lb79fh:
	jr z,lb7a2h		;b79f
	inc b			;b7a1
lb7a2h:
	nop			;b7a2
	jr nc,lb7a7h		;b7a3
	ex af,af'		;b7a5
	nop			;b7a6
lb7a7h:
	jr lb7abh		;b7a7
	inc b			;b7a9
	nop			;b7aa
lb7abh:
	ld (00401h),hl		;b7ab
	nop			;b7ae
	nop			;b7af
	jr nz,lb7b4h		;b7b0
	inc b			;b7b2
	nop			;b7b3
lb7b4h:
	ex af,af'		;b7b4
	ld bc,00004h		;b7b5
	jr nc,lb7bch		;b7b8
	ex af,af'		;b7ba
	nop			;b7bb
lb7bch:
	jr lb7c0h		;b7bc
	inc b			;b7be
	nop			;b7bf
lb7c0h:
	jr nz,lb7c3h		;b7c0
	inc b			;b7c2
lb7c3h:
	nop			;b7c3
	nop			;b7c4
	push de			;b7c5
	sub a			;b7c6
	in a,(097h)		;b7c7
	pop hl			;b7c9
	sub a			;b7ca
	rst 20h			;b7cb
	sub a			;b7cc
	defb 0edh ;next byte illegal after ed	;b7cd
	sub a			;b7ce
	di			;b7cf
	sub a			;b7d0
	ld sp,hl		;b7d1
	sub a			;b7d2
	rst 38h			;b7d3
	sub a			;b7d4
	ld b,000h		;b7d5
	nop			;b7d7
	ld bc,0ff00h		;b7d8
	ld b,000h		;b7db
	nop			;b7dd
	ld bc,0ff01h		;b7de
	ld b,000h		;b7e1
	nop			;b7e3
	ld bc,0ff02h		;b7e4
	ld b,000h		;b7e7
	nop			;b7e9
	ld bc,0ff04h		;b7ea
	ld b,000h		;b7ed
	nop			;b7ef
	ld bc,0ff05h		;b7f0
	ld b,000h		;b7f3
	nop			;b7f5
	ld bc,0ff06h		;b7f6
	ld b,000h		;b7f9
	nop			;b7fb
	ld bc,0ff07h		;b7fc
	ld b,0fdh		;b7ff
	ld (bc),a		;b801
	ld bc,0ff03h		;b802
	ld a,(ix+001h)		;b805
	dec a			;b808
	jr z,lb820h		;b809
	call 06754h		;b80b
	ld a,d			;b80e
	rlca			;b80f
	ld a,00ah		;b810
	jr nc,lb81ah		;b812
	ld (ix+006h),00ah	;b814
	ld a,008h		;b818
lb81ah:
	call 06adbh		;b81a
	jp 06c1dh		;b81d
lb820h:
	ld a,(ix+00ah)		;b820
	cp 015h			;b823
	ret nc			;b825
	ld a,(0ca02h)		;b826
	and 003h		;b829
	ret nz			;b82b
	call 06ad2h		;b82c
	ret z			;b82f
	inc (ix+006h)		;b830
	ld a,(ix+006h)		;b833
	dec a			;b836
	ret nz			;b837
	ld a,032h		;b838
	jp 04af0h		;b83a
	ld a,(ix+001h)		;b83d
	call 0461ah		;b840
	ld c,e			;b843
	sbc a,b			;b844
	ld h,h			;b845
	sbc a,b			;b846
	res 3,b			;b847
	dec bc			;b849
	sbc a,c			;b84a
	call 06796h		;b84b
	ld (ix+008h),a		;b84e
	call 06796h		;b851
	ld (ix+00ah),a		;b854
	call 06796h		;b857
	ld (ix+020h),a		;b85a
	call 06796h		;b85d
	ld (ix+001h),a		;b860
	ret			;b863
	ld a,(ix+002h)		;b864
	dec a			;b867
	jr z,lb88bh		;b868
	dec a			;b86a
	jr z,lb8a0h		;b86b
	dec a			;b86d
	jr z,lb8c3h		;b86e
	call 06796h		;b870
	ld (ix+021h),a		;b873
	call 06796h		;b876
	ld (ix+022h),a		;b879
	call 06796h		;b87c
	ld (ix+023h),a		;b87f
	call 09915h		;b882
	call 0992bh		;b885
	jp 0990ch		;b888
lb88bh:
	ld a,(0ca34h)		;b88b
	cp (ix+023h)		;b88e
	jp nc,0989bh		;b891
	call 06ad2h		;b894
	ret nz			;b897
	jp 0990ch		;b898
	ld (ix+002h),003h	;b89b
	ret			;b89f
lb8a0h:
	call 06adfh		;b8a0
	ret nz			;b8a3
	call 09924h		;b8a4
	call 06814h		;b8a7
	ret c			;b8aa
	call 06926h		;b8ab
	call 09936h		;b8ae
	ld a,007h		;b8b1
	call 0699fh		;b8b3
	dec (ix+024h)		;b8b6
	ret nz			;b8b9
	call 0991eh		;b8ba
	call 0992bh		;b8bd
	jp 09910h		;b8c0
lb8c3h:
	ld a,(ix+037h)		;b8c3
	and a			;b8c6
	ret nz			;b8c7
	jp 06e98h		;b8c8
	ld a,(ix+002h)		;b8cb
	dec a			;b8ce
	jr z,lb8ech		;b8cf
	dec a			;b8d1
	jr z,lb8c3h		;b8d2
	call 06796h		;b8d4
	ld d,a			;b8d7
	and 07fh		;b8d8
	ld (ix+021h),a		;b8da
	ld a,d			;b8dd
	rlca			;b8de
	jr nc,lb8e4h		;b8df
	inc (ix+03dh)		;b8e1
lb8e4h:
	call 09915h		;b8e4
	call 0992bh		;b8e7
	jr lb90ch		;b8ea
lb8ech:
	call 06ad2h		;b8ec
	ret nz			;b8ef
	ld a,(ix+021h)		;b8f0
	ld (ix+017h),a		;b8f3
	call 06814h		;b8f6
	ret c			;b8f9
	call 06926h		;b8fa
	call 09936h		;b8fd
	ld a,005h		;b900
	call 0699fh		;b902
	dec (ix+024h)		;b905
	ret nz			;b908
	jr lb90ch		;b909
	ret			;b90b
lb90ch:
	inc (ix+002h)		;b90c
	ret			;b90f
	ld (ix+002h),001h	;b910
	ret			;b914
	ld (ix+017h),001h	;b915
	ld (ix+018h),001h	;b919
	ret			;b91d
	ld a,(ix+021h)		;b91e
	ld (ix+017h),a		;b921
	ld a,(ix+022h)		;b924
	ld (ix+018h),a		;b927
	ret			;b92a
	ld a,(ix+020h)		;b92b
	ld (ix+024h),a		;b92e
	ld (ix+025h),000h	;b931
	ret			;b935
	inc (ix+025h)		;b936
	ld a,(ix+025h)		;b939
	ld (iy+038h),a		;b93c
	ret			;b93f
	call 06c3ah		;b940
	ld a,(ix+001h)		;b943
	dec a			;b946
	jr z,lb956h		;b947
	dec a			;b949
	jr z,lb970h		;b94a
	call 06754h		;b94c
	ld (ix+008h),0fch	;b94f
	jp 06c1dh		;b953
lb956h:
	call 09990h		;b956
	jr c,lb968h		;b959
	ld (iy+008h),001h	;b95b
	call 09990h		;b95f
	jr c,lb968h		;b962
	ld (iy+008h),010h	;b964
lb968h:
	ld a,040h		;b968
	call 06ae8h		;b96a
	jp 06c1dh		;b96d
lb970h:
	ld a,(ix+020h)		;b970
	and a			;b973
	call z,09984h		;b974
	call 06adfh		;b977
	ret nz			;b97a
	call 09990h		;b97b
	ret c			;b97e
	ld a,040h		;b97f
	jp 06ae8h		;b981
	ld a,(0ca18h)		;b984
	dec a			;b987
	ret z			;b988
	inc (ix+020h)		;b989
	dec (ix+00ah)		;b98c
	ret			;b98f
	call 06814h		;b990
	ret c			;b993
	call 06926h		;b994
	jp 0699eh		;b997
	ld a,(ix+001h)		;b99a
	dec a			;b99d
	jr z,lb9e0h		;b99e
	dec a			;b9a0
	jr z,lb9edh		;b9a1
	call 06754h		;b9a3
	ld a,d			;b9a6
	rlca			;b9a7
	ld c,015h		;b9a8
	jr nc,lb9b1h		;b9aa
	inc (ix+020h)		;b9ac
	ld c,001h		;b9af
lb9b1h:
	ld (ix+008h),c		;b9b1
	ld (ix+00ah),020h	;b9b4
	call 06796h		;b9b8
	ld d,a			;b9bb
	and 00fh		;b9bc
	ld (ix+022h),a		;b9be
	ld a,d			;b9c1
	rrca			;b9c2
	rrca			;b9c3
	rrca			;b9c4
	rrca			;b9c5
	and 003h		;b9c6
	ld l,a			;b9c8
	ld h,000h		;b9c9
	ld de,099dch		;b9cb
	add hl,de		;b9ce
	ld a,(hl)		;b9cf
	ld (ix+024h),a		;b9d0
	call 06796h		;b9d3
	ld (ix+021h),a		;b9d6
	jp 06c1dh		;b9d9
	dec e			;b9dc
	dec d			;b9dd
	dec c			;b9de
	dec b			;b9df
lb9e0h:
	ld a,(ix+00ah)		;b9e0
	cp (ix+024h)		;b9e3
	ret nz			;b9e6
	inc (ix+017h)		;b9e7
	jp 06c1dh		;b9ea
lb9edh:
	dec (ix+017h)		;b9ed
	ret nz			;b9f0
	ld (ix+017h),008h	;b9f1
	ld a,01ah		;b9f5
	call 0684ch		;b9f7
	ret c			;b9fa
	ld a,(ix+008h)		;b9fb
	ld (iy+008h),a		;b9fe
	ld a,(ix+007h)		;ba01
	ld (iy+007h),a		;ba04
	ld a,(ix+00ah)		;ba07
	ld (iy+00ah),a		;ba0a
	ld a,(ix+009h)		;ba0d
	ld (iy+009h),a		;ba10
	ld a,(ix+020h)		;ba13
	ld (iy+020h),a		;ba16
	ld a,(ix+021h)		;ba19
	ld (iy+021h),a		;ba1c
	inc (iy+001h)		;ba1f
	ld a,(ix+023h)		;ba22
	ld (iy+023h),a		;ba25
	and a			;ba28
	jr nz,lba2eh		;ba29
	inc (iy+03dh)		;ba2b
lba2eh:
	inc a			;ba2e
	ld (ix+023h),a		;ba2f
	cp (ix+022h)		;ba32
	ret nz			;ba35
	jp 06e98h		;ba36
	ld a,(ix+03ah)		;ba39
	ld (ix+000h),a		;ba3c
	ret			;ba3f
	ret			;ba40
	ld (ix+015h),02dh	;ba41
	ld b,004h		;ba45
	call 06ab8h		;ba47
	ret nz			;ba4a
	ld a,(ix+03dh)		;ba4b
	and a			;ba4e
	jp z,06e98h		;ba4f
	ld (ix+03dh),000h	;ba52
	ld e,(ix+008h)		;ba56
	ld d,(ix+00ah)		;ba59
	call 06f55h		;ba5c
	jp 06e98h		;ba5f
	push de			;ba62
	ld a,069h		;ba63
	call 0684ch		;ba65
	pop de			;ba68
	ret c			;ba69
	ld l,(ix+008h)		;ba6a
	ld h,(ix+00ah)		;ba6d
	add hl,de		;ba70
	ld (iy+008h),l		;ba71
	ld (iy+00ah),h		;ba74
	ld (iy+001h),001h	;ba77
	ret			;ba7b
	ld a,(ix+001h)		;ba7c
	dec a			;ba7f
	jr z,lba98h		;ba80
	call 06796h		;ba82
	ld (ix+008h),a		;ba85
	call 06796h		;ba88
	ld (ix+00ah),a		;ba8b
	ld a,(0ce4ch)		;ba8e
	and a			;ba91
	jp z,06e98h		;ba92
	jp 06c1dh		;ba95
lba98h:
	ld de,09aadh		;ba98
	call 07b65h		;ba9b
	ld b,006h		;ba9e
	call 06ac2h		;baa0
	jp z,06e98h		;baa3
	dec a			;baa6
	ret nz			;baa7
	ld a,033h		;baa8
	jp 04af0h		;baaa
	cp c			;baad
	sbc a,d			;baae
	cp a			;baaf
	sbc a,d			;bab0
	push bc			;bab1
	sbc a,d			;bab2
lbab3h:
	res 3,d			;bab3
	pop de			;bab5
	sbc a,d			;bab6
	push bc			;bab7
	sbc a,d			;bab8
	ld b,000h		;bab9
	nop			;babb
	ld bc,0ff00h		;babc
	ld b,000h		;babf
	nop			;bac1
	ld bc,0ff01h		;bac2
	ld b,000h		;bac5
	nop			;bac7
	ld bc,0ff02h		;bac8
	ld b,000h		;bacb
	nop			;bacd
	ld bc,0ff03h		;bace
	ld b,000h		;bad1
	nop			;bad3
	ld bc,0ff04h		;bad4
	call 06e91h		;bad7
	ld a,(ix+001h)		;bada
	dec a			;badd
	jr z,lbafeh		;bade
	ld (ix+015h),004h	;bae0
	ld de,09b0ah		;bae4
	call 07b65h		;bae7
	ld b,008h		;baea
	call 06ac2h		;baec
	ret nz			;baef
	call 07058h		;baf0
	call 07523h		;baf3
	ld (ix+017h),030h	;baf6
	ld (ix+001h),001h	;bafa
lbafeh:
	call 06ad2h		;bafe
	ret nz			;bb01
	ld a,001h		;bb02
	ld (0ca0fh),a		;bb04
	jp 06e98h		;bb07
	ld a,(de)		;bb0a
	sbc a,e			;bb0b
	jr nz,$-99		;bb0c
	ld h,09bh		;bb0e
	inc l			;bb10
	sbc a,e			;bb11
	ld (0269bh),a		;bb12
	sbc a,e			;bb15
	jr nz,lbab3h		;bb16
	ld a,(de)		;bb18
	sbc a,e			;bb19
	ld b,003h		;bb1a
	ld (bc),a		;bb1c
	ld bc,0ff00h		;bb1d
	ld b,003h		;bb20
	ld bc,00101h		;bb22
	rst 38h			;bb25
	ld b,002h		;bb26
	ld bc,00201h		;bb28
	rst 38h			;bb2b
	ld b,000h		;bb2c
	nop			;bb2e
	ld bc,0ff03h		;bb2f
	ld b,001h		;bb32
	ld bc,00401h		;bb34
	rst 38h			;bb37
	ld a,(ix+001h)		;bb38
	dec a			;bb3b
	jr z,lbb6fh		;bb3c
	ld (ix+015h),004h	;bb3e
	call 09b70h		;bb42
	ld b,003h		;bb45
	call 06ac2h		;bb47
	ret nz			;bb4a
	ld a,(ix+03eh)		;bb4b
	and a			;bb4e
	jr z,lbb5bh		;bb4f
	ld (ix+006h),a		;bb51
	ld (ix+015h),046h	;bb54
	jp 06c1dh		;bb58
lbb5bh:
	ld a,(ix+03dh)		;bb5b
	and a			;bb5e
	jp z,06e98h		;bb5f
	ld (ix+03dh),000h	;bb62
	ld e,(ix+008h)		;bb66
	ld d,(ix+00ah)		;bb69
	jp 06f55h		;bb6c
lbb6fh:
	ret			;bb6f
	ld de,09ba2h		;bb70
	ld a,(ix+03eh)		;bb73
	and a			;bb76
	jr z,lbb87h		;bb77
	dec a			;bb79
	dec a			;bb7a
	dec a			;bb7b
	ld l,a			;bb7c
	ld h,000h		;bb7d
	add hl,hl		;bb7f
	ld de,09b8ah		;bb80
	add hl,de		;bb83
	ld e,(hl)		;bb84
	inc hl			;bb85
	ld d,(hl)		;bb86
lbb87h:
	jp 07b65h		;bb87
	and d			;bb8a
	sbc a,e			;bb8b
	and d			;bb8c
	sbc a,e			;bb8d
	xor (hl)		;bb8e
	sbc a,e			;bb8f
	and d			;bb90
	sbc a,e			;bb91
	and d			;bb92
	sbc a,e			;bb93
	and d			;bb94
	sbc a,e			;bb95
	xor b			;bb96
	sbc a,e			;bb97
	xor b			;bb98
	sbc a,e			;bb99
	and d			;bb9a
	sbc a,e			;bb9b
	and d			;bb9c
	sbc a,e			;bb9d
	or h			;bb9e
	sbc a,e			;bb9f
	cp d			;bba0
	sbc a,e			;bba1
	ret nz			;bba2
	sbc a,e			;bba3
	add a,09bh		;bba4
	ret nz			;bba6
	sbc a,e			;bba7
	call z,0d29bh		;bba8
	sbc a,e			;bbab
	call z,0d89bh		;bbac
	sbc a,e			;bbaf
	ex (sp),hl		;bbb0
	sbc a,e			;bbb1
	ret c			;bbb2
	sbc a,e			;bbb3
	xor 09bh		;bbb4
	xor 09bh		;bbb6
	xor 09bh		;bbb8
	call p,0f49bh		;bbba
	sbc a,e			;bbbd
	call p,0069bh		;bbbe
	nop			;bbc1
	rst 38h			;bbc2
	ld bc,0ff00h		;bbc3
	ld b,000h		;bbc6
	rst 38h			;bbc8
	ld bc,0ff01h		;bbc9
	ld b,001h		;bbcc
	ld bc,00001h		;bbce
	rst 38h			;bbd1
	ld b,001h		;bbd2
	ld bc,00101h		;bbd4
	rst 38h			;bbd7
	dec bc			;bbd8
	ld (bc),a		;bbd9
	ld (bc),a		;bbda
	ld bc,0fe00h		;bbdb
	nop			;bbde
	nop			;bbdf
	ld bc,0ff05h		;bbe0
	dec bc			;bbe3
	ld (bc),a		;bbe4
	ld bc,00101h		;bbe5
	cp 000h			;bbe8
	nop			;bbea
	ld bc,0ff05h		;bbeb
	ld b,000h		;bbee
	nop			;bbf0
	ld bc,0ff0dh		;bbf1
	ld b,000h		;bbf4
	nop			;bbf6
	ld bc,0ff0eh		;bbf7
	push de			;bbfa
	ld bc,0ffa0h		;bbfb
	call 09c07h		;bbfe
	pop de			;bc01
	ret z			;bc02
	ld e,d			;bc03
	ld bc,00060h		;bc04
	ld d,061h		;bc07
	call 07207h		;bc09
	ret nz			;bc0c
	call 0721dh		;bc0d
	ld (hl),d		;bc10
	ld a,e			;bc11
	rrca			;bc12
	rrca			;bc13
	rrca			;bc14
	rrca			;bc15
	and 00fh		;bc16
	ld d,a			;bc18
	ld a,e			;bc19
	and 00fh		;bc1a
	ld e,a			;bc1c
	ld a,008h		;bc1d
	add a,l			;bc1f
	ld l,a			;bc20
	ld a,(ix+008h)		;bc21
	add a,e			;bc24
	ld (hl),a		;bc25
	inc l			;bc26
	inc l			;bc27
	ld a,(ix+00ah)		;bc28
	add a,d			;bc2b
	ld (hl),a		;bc2c
	inc l			;bc2d
	ld (hl),c		;bc2e
	inc l			;bc2f
	ld (hl),b		;bc30
	ld a,l			;bc31
	and 0e0h		;bc32
	ld l,a			;bc34
	call 066f7h		;bc35
	ld (hl),006h		;bc38
	ret			;bc3a
	ld a,(ix+001h)		;bc3b
	dec a			;bc3e
	jr z,lbc57h		;bc3f
	call 06ad2h		;bc41
	ret nz			;bc44
	call 06bf0h		;bc45
	ld de,0ff80h		;bc48
	call 06bfdh		;bc4b
	ld de,0ffe0h		;bc4e
	call 06c16h		;bc51
	jp 06c1dh		;bc54
lbc57h:
	ld a,(0ca02h)		;bc57
	and 001h		;bc5a
	ret z			;bc5c
	jp 06a9ah		;bc5d
	ld a,066h		;bc60
	call 0684ch		;bc62
	ret c			;bc65
	ld bc,00102h		;bc66
	jp 06929h		;bc69
	ld a,(ix+001h)		;bc6c
	dec a			;bc6f
	jr z,lbcaah		;bc70
	ld de,0ff80h		;bc72
	call 06bfdh		;bc75
	ld de,0fff0h		;bc78
	call 06c16h		;bc7b
	ld (ix+007h),080h	;bc7e
	ld a,(0ca19h)		;bc82
	cp 005h			;bc85
	ld a,004h		;bc87
	jr c,lbca4h		;bc89
	ld a,(0ca48h)		;bc8b
	inc a			;bc8e
	sub 00bh		;bc8f
	ld hl,00008h		;bc91
	jr nc,lbc9bh		;bc94
	neg			;bc96
	ld hl,0fff8h		;bc98
lbc9bh:
	cp 002h			;bc9b
	jr c,lbca2h		;bc9d
	call 06c0ch		;bc9f
lbca2h:
	ld a,00ch		;bca2
lbca4h:
	ld (ix+016h),a		;bca4
	jp 06c1dh		;bca7
lbcaah:
	jp 06a9ah		;bcaa
	call 09ccbh		;bcad
	inc (hl)		;bcb0
	inc (hl)		;bcb1
	inc (hl)		;bcb2
	jr lbcb8h		;bcb3
	call 09ccbh		;bcb5
lbcb8h:
	call 09cdeh		;bcb8
	ld a,015h		;bcbb
	jp 04af0h		;bcbd
	call 09ccbh		;bcc0
	call 09cdeh		;bcc3
	ld a,019h		;bcc6
	jp 04af0h		;bcc8
	ld a,(0ca19h)		;bccb
	rrca			;bcce
	and 07fh		;bccf
	ld l,a			;bcd1
	ld h,000h		;bcd2
	ld de,09d15h		;bcd4
	add hl,de		;bcd7
	ld a,(hl)		;bcd8
	ld hl,0ca26h		;bcd9
	ld (hl),a		;bcdc
	ret			;bcdd
	ld l,b			;bcde
	ld h,000h		;bcdf
	ld de,09d0dh		;bce1
	add hl,de		;bce4
	ld a,(hl)		;bce5
	ld c,a			;bce6
	push bc			;bce7
	call 07362h		;bce8
	pop bc			;bceb
	ret nz			;bcec
	srl c			;bced
	ld b,067h		;bcef
	call 07371h		;bcf1
	ld de,00010h		;bcf4
	add hl,de		;bcf7
	ld (hl),035h		;bcf8
	ld a,l			;bcfa
	and 0e0h		;bcfb
	ld l,a			;bcfd
	ld de,00007h		;bcfe
	add hl,de		;bd01
	ld a,(0ca12h)		;bd02
	ld (hl),a		;bd05
	ld a,(0ca14h)		;bd06
	inc l			;bd09
	inc l			;bd0a
	ld (hl),a		;bd0b
	ret			;bd0c
	nop			;bd0d
	ld (bc),a		;bd0e
	inc b			;bd0f
	ld b,008h		;bd10
	ld a,(bc)		;bd12
	inc c			;bd13
	ld c,010h		;bd14
	ld (de),a		;bd16
	ld d,018h		;bd17
	inc e			;bd19
	ld e,020h		;bd1a
	ld (0d5c9h),hl		;bd1c
	push bc			;bd1f
	ld a,070h		;bd20
	call 0684ch		;bd22
	jr c,lbd4dh		;bd25
	ld (iy+017h),006h	;bd27
	pop bc			;bd2b
	call 06929h		;bd2c
	pop de			;bd2f
	ld l,d			;bd30
	ld h,000h		;bd31
	add hl,hl		;bd33
	ld bc,09d50h		;bd34
	add hl,bc		;bd37
	ld a,(hl)		;bd38
	ld (iy+012h),a		;bd39
	inc hl			;bd3c
	ld a,(hl)		;bd3d
lbd3eh:
	ld (iy+011h),a		;bd3e
	ld d,000h		;bd41
	ld hl,09d58h		;bd43
	add hl,de		;bd46
	ld a,(hl)		;bd47
	ld (iy+00fh),a		;bd48
	or a			;bd4b
	ret			;bd4c
lbd4dh:
	pop hl			;bd4d
	pop hl			;bd4e
	ret			;bd4f
	djnz lbd62h		;bd50
	ld (de),a		;bd52
	ld de,01214h		;bd53
	inc d			;bd56
	inc de			;bd57
	ld b,b			;bd58
	add a,b			;bd59
	ret nz			;bd5a
	nop			;bd5b
	ld h,b			;bd5c
	and b			;bd5d
	ret po			;bd5e
	jr nz,lbd3eh		;bd5f
	ld a,(hl)		;bd61
lbd62h:
	ld bc,0283dh		;bd62
	dec d			;bd65
	dec a			;bd66
	jr z,lbd86h		;bd67
	ld a,(ix+012h)		;bd69
	ld (0ca26h),a		;bd6c
	ld a,(ix+00fh)		;bd6f
	call 09de8h		;bd72
	call 06b6fh		;bd75
	jp 06c1dh		;bd78
	call 06ad2h		;bd7b
	ret nz			;bd7e
	ld (ix+018h),060h	;bd7f
	jp 06c1dh		;bd83
lbd86h:
	call 06adfh		;bd86
	ret z			;bd89
	ld a,(0ca02h)		;bd8a
	and 003h		;bd8d
	ret nz			;bd8f
	ld a,(ix+012h)		;bd90
	ld iy,0ca40h		;bd93
	call 06b85h		;bd97
	call 09da1h		;bd9a
	call 06b6fh		;bd9d
	ret			;bda0
	call 09da9h		;bda1
	call 09dd2h		;bda4
	jr lbde8h		;bda7
	ld d,a			;bda9
	ld a,(0ca23h)		;bdaa
	ld b,a			;bdad
	ld a,(0ca24h)		;bdae
	and a			;bdb1
	rlca			;bdb2
	add a,b			;bdb3
	or a			;bdb4
	jp po,09dbeh		;bdb5
	ex af,af'		;bdb8
	ld a,03fh		;bdb9
	sub d			;bdbb
	ld d,a			;bdbc
	ex af,af'		;bdbd
	ld b,0c0h		;bdbe
	jr z,lbdceh		;bdc0
	dec a			;bdc2
	ld b,000h		;bdc3
	jr z,lbdceh		;bdc5
	dec a			;bdc7
	ld b,080h		;bdc8
	jr z,lbdceh		;bdca
	ld b,040h		;bdcc
lbdceh:
	ld a,d			;bdce
	add a,b			;bdcf
	ld b,a			;bdd0
	ret			;bdd1
	ld d,(ix+011h)		;bdd2
	ld c,(ix+00fh)		;bdd5
	ld a,c			;bdd8
	neg			;bdd9
	add a,b			;bddb
	cp 07fh			;bddc
	ld a,d			;bdde
	jr c,lbde3h		;bddf
	neg			;bde1
lbde3h:
	add a,c			;bde3
	ld (ix+00fh),a		;bde4
	ret			;bde7
lbde8h:
	ld d,a			;bde8
	ld bc,00001h		;bde9
	sub 040h		;bdec
	jr c,lbe04h		;bdee
	ld d,a			;bdf0
	inc b			;bdf1
	sub 040h		;bdf2
	jr c,lbdfeh		;bdf4
	ld d,a			;bdf6
	dec c			;bdf7
	sub 040h		;bdf8
	jr c,lbe04h		;bdfa
	ld d,a			;bdfc
	dec b			;bdfd
lbdfeh:
	ld a,d			;bdfe
	neg			;bdff
	add a,03fh		;be01
	ld d,a			;be03
lbe04h:
	ld a,d			;be04
	ld (0ca20h),a		;be05
	ld hl,0ca23h		;be08
	ld (hl),c		;be0b
	inc hl			;be0c
	ld (hl),b		;be0d
	ret			;be0e
	ld a,074h		;be0f
	call 0684ch		;be11
	ret c			;be14
	call 04678h		;be15
	ld b,a			;be18
	and 003h		;be19
	ld l,a			;be1b
	ld h,000h		;be1c
	ld de,09e67h		;be1e
	add hl,de		;be21
	ld l,(hl)		;be22
	ld h,0ffh		;be23
	add hl,hl		;be25
	ld (iy+00dh),l		;be26
	ld (iy+00eh),h		;be29
	ld a,(ix+008h)		;be2c
	add a,002h		;be2f
	cp 006h			;be31
	ld de,09e6bh		;be33
	jr nc,lbe3bh		;be36
	ld de,09e6fh		;be38
lbe3bh:
	ld a,b			;be3b
	rlca			;be3c
	and 003h		;be3d
	ld l,a			;be3f
	ld h,000h		;be40
	add hl,de		;be42
	ld a,(hl)		;be43
lbe44h:
	ld (iy+008h),a		;be44
	ld (iy+00ah),01fh	;be47
	ld a,b			;be4b
	rrca			;be4c
	and 007h		;be4d
	ld l,a			;be4f
	ld h,000h		;be50
	ld de,09e73h		;be52
	add hl,de		;be55
	ld l,(hl)		;be56
	ld h,000h		;be57
	ld a,b			;be59
	rrca			;be5a
	jr c,lbe60h		;be5b
	call 04612h		;be5d
lbe60h:
	ld (iy+00bh),l		;be60
	ld (iy+00ch),h		;be63
	ret			;be66
	ret nz			;be67
	add a,b			;be68
	ld b,b			;be69
	nop			;be6a
	nop			;be6b
	ld (bc),a		;be6c
	inc b			;be6d
	ld b,010h		;be6e
	ld (de),a		;be70
	inc d			;be71
	ld d,000h		;be72
	djnz $+26		;be74
	ld a,(de)		;be76
	jr nz,$+38		;be77
	jr z,lbe44h		;be79
	ret			;be7b
	ld a,(ix+001h)		;be7c
	dec a			;be7f
	jr z,lbe8ch		;be80
	jp p,09ea4h		;be82
	ld (ix+017h),020h	;be85
	inc (ix+001h)		;be89
lbe8ch:
	dec (ix+017h)		;be8c
	ret nz			;be8f
	ld (ix+017h),00ah	;be90
	ld a,(ix+00fh)		;be94
	ld (ix+018h),a		;be97
	ld (ix+015h),004h	;be9a
	inc (ix+001h)		;be9e
	call 06be6h		;bea1
	ld a,(ix+00fh)		;bea4
	or a			;bea7
	call nz,09efbh		;bea8
	ld a,(ix+017h)		;beab
	jr z,lbeb5h		;beae
	dec a			;beb0
	ld (ix+017h),a		;beb1
	ret			;beb4
lbeb5h:
	call 09ec0h		;beb5
	ld a,(ix+018h)		;beb8
	or a			;bebb
	ret nz			;bebc
	jp 06each		;bebd
	ld b,002h		;bec0
lbec2h:
	push bc			;bec2
	call 09ecah		;bec3
	pop bc			;bec6
	djnz lbec2h		;bec7
	ret			;bec9
	ld a,(ix+018h)		;beca
	or a			;becd
	ret z			;bece
	dec a			;becf
	ld (ix+018h),a		;bed0
	ld a,01dh		;bed3
	call 04af5h		;bed5
	ld a,(ix+008h)		;bed8
	sub (ix+010h)		;bedb
	ld (ix+008h),a		;bede
	ld a,(ix+00ah)		;bee1
	sub (ix+012h)		;bee4
	ld (ix+00ah),a		;bee7
	xor a			;beea
	ld h,a			;beeb
	ld l,a			;beec
	ld d,a			;beed
	ld e,a			;beee
	call 076d0h		;beef
	call 076f1h		;bef2
	jr nc,lbefah		;bef5
	ld a,0a7h		;bef7
	ld (de),a		;bef9
lbefah:
	ret			;befa
	ld b,002h		;befb
lbefdh:
	push bc			;befd
	call 09f05h		;befe
	pop bc			;bf01
	djnz lbefdh		;bf02
	ret			;bf04
	ld a,(ix+00fh)		;bf05
	or a			;bf08
	ret z			;bf09
	dec a			;bf0a
	ld (ix+00fh),a		;bf0b
	xor a			;bf0e
	ld h,a			;bf0f
	ld l,a			;bf10
	ld d,a			;bf11
	ld e,a			;bf12
	call 076d0h		;bf13
	call 076f1h		;bf16
	jr nc,lbf1fh		;bf19
	ld a,(ix+011h)		;bf1b
	ld (de),a		;bf1e
lbf1fh:
	ld a,(ix+010h)		;bf1f
	add a,(ix+008h)		;bf22
	ld (ix+008h),a		;bf25
	ld a,(ix+012h)		;bf28
	add a,(ix+00ah)		;bf2b
	ld (ix+00ah),a		;bf2e
	ret			;bf31
	ld a,06eh		;bf32
	call 0684ch		;bf34
	ret c			;bf37
	ld bc,00202h		;bf38
	ld a,(ix+006h)		;bf3b
	inc a			;bf3e
	and 003h		;bf3f
	ld (iy+020h),a		;bf41
	jp 06929h		;bf44
	ld a,(ix+001h)		;bf47
	dec a			;bf4a
	jr z,lbf57h		;bf4b
	call 09f69h		;bf4d
	ld (ix+017h),008h	;bf50
	jp 06c1dh		;bf54
lbf57h:
	call 06ad2h		;bf57
	ret nz			;bf5a
	ld a,(ix+005h)		;bf5b
	cp 002h			;bf5e
	ret z			;bf60
	inc (ix+005h)		;bf61
	ld a,008h		;bf64
	jp 06adbh		;bf66
	ld l,(ix+020h)		;bf69
	ld h,000h		;bf6c
	add hl,hl		;bf6e
	add hl,hl		;bf6f
	ld de,09f80h		;bf70
	add hl,de		;bf73
	ld e,(hl)		;bf74
	inc hl			;bf75
	ld d,(hl)		;bf76
	inc hl			;bf77
	ld a,(hl)		;bf78
	inc hl			;bf79
	ld h,(hl)		;bf7a
	ld l,a			;bf7b
	ex de,hl		;bf7c
	jp 06bebh		;bf7d
	nop			;bf80
	nop			;bf81
	add a,b			;bf82
	nop			;bf83
	add a,b			;bf84
	rst 38h			;bf85
	nop			;bf86
	nop			;bf87
	nop			;bf88
	nop			;bf89
	add a,b			;bf8a
	rst 38h			;bf8b
	add a,b			;bf8c
	nop			;bf8d
	nop			;bf8e
	nop			;bf8f
	push de			;bf90
	push bc			;bf91
	ld a,06fh		;bf92
	call 0684ch		;bf94
	pop bc			;bf97
	pop de			;bf98
	ret c			;bf99
	ld (iy+020h),d		;bf9a
	ld a,(ix+008h)		;bf9d
	add a,c			;bfa0
	ld (iy+008h),a		;bfa1
	ld a,(ix+00ah)		;bfa4
	add a,b			;bfa7
	ld (iy+00ah),a		;bfa8
	ld (iy+017h),004h	;bfab
	ret			;bfaf
	ld b,004h		;bfb0
	call 06ab8h		;bfb2
	ld a,(ix+001h)		;bfb5
	dec a			;bfb8
	jr z,lbfd0h		;bfb9
	dec a			;bfbb
	jr z,lbfdah		;bfbc
	ld a,(ix+020h)		;bfbe
	ld hl,00080h		;bfc1
	or a			;bfc4
	jr nz,lbfcah		;bfc5
	ld hl,0ff80h		;bfc7
lbfcah:
	call 06bf3h		;bfca
	jp 06c1dh		;bfcd
lbfd0h:
	call 06ad2h		;bfd0
	ret nz			;bfd3
	call 09fe9h		;bfd4
	jp 06c1dh		;bfd7
lbfdah:
	ld l,(ix+00fh)		;bfda
	ld h,(ix+010h)		;bfdd
	ld e,(ix+011h)		;bfe0
	ld d,(ix+012h)		;bfe3
	jp 06d4fh		;bfe6
	ld iy,0ca40h		;bfe9
	ld a,020h		;bfed
	call 06b7fh		;bfef
	ld (ix+00fh),l		;bff2
	ld (ix+010h),h		;bff5
	ld (ix+011h),e		;bff8
	ld (ix+012h),d		;bffb
	ret			;bffe
	ret			;bfff

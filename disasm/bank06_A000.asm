; z80dasm 1.2.0
; command line: z80dasm -a -l -g 0xA000 -o /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/disasm/bank06_A000.asm /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/banks/bank06.bin

	org 0a000h

	call 06a13h		;a000
	call 06e91h		;a003
	ld a,(ix+001h)		;a006
	dec a			;a009
	jr z,la049h		;a00a
	dec a			;a00c
	jr z,la040h		;a00d
	call 06754h		;a00f
	ld b,007h		;a012
la014h:
	push bc			;a014
	call 06814h		;a015
	jp c,0469fh		;a018
	call 06926h		;a01b
	call 0699eh		;a01e
	pop bc			;a021
	djnz la014h		;a022
	call sub_a12bh		;a024
	call sub_a10fh		;a027
	call 06c4bh		;a02a
	ld a,(0ca04h)		;a02d
	and a			;a030
	ld a,020h		;a031
	jr z,la037h		;a033
	ld a,040h		;a035
la037h:
	ld (ix+016h),a		;a037
	call 069d7h		;a03a
	jp 06c1dh		;a03d
la040h:
	ld a,(0c0d4h)		;a040
	cp 003h			;a043
	ret nz			;a045
	jp 06c1dh		;a046
la049h:
	call sub_a0b6h		;a049
	call 06ad2h		;a04c
	call z,sub_a12bh	;a04f
	call 06adfh		;a052
	ret nz			;a055
	call sub_a10fh		;a056
	ld a,(ix+021h)		;a059
	cp 008h			;a05c
	jr c,la061h		;a05e
	xor a			;a060
la061h:
	ld l,a			;a061
	inc a			;a062
	ld (ix+021h),a		;a063
	ld h,000h		;a066
	ld de,la0a4h		;a068
	add hl,de		;a06b
	ld b,(hl)		;a06c
	ld a,(0ca04h)		;a06d
	and a			;a070
	jr nz,la076h		;a071
	ld a,b			;a073
	rlca			;a074
	ret c			;a075
la076h:
	ld a,b			;a076
	and a			;a077
	ret z			;a078
	and 003h		;a079
	dec a			;a07b
	jr z,la08ch		;a07c
	dec a			;a07e
	jr z,la095h		;a07f
	dec a			;a081
	jr z,la084h		;a082
la084h:
	ld hl,la0b1h		;a084
	ld bc,00008h		;a087
	jr la09bh		;a08a
la08ch:
	ld hl,la0b1h		;a08c
	ld bc,00008h		;a08f
	call la09bh		;a092
la095h:
	ld hl,la0ach		;a095
	ld bc,000feh		;a098
la09bh:
	ld a,(ix+022h)		;a09b
	ld (0ca26h),a		;a09e
	jp 07306h		;a0a1
la0a4h:
	add a,d			;a0a4
	add a,e			;a0a5
	nop			;a0a6
	nop			;a0a7
	add a,d			;a0a8
	inc bc			;a0a9
	ld (bc),a		;a0aa
	add a,c			;a0ab
la0ach:
	nop			;a0ac
	rrca			;a0ad
	ld c,00dh		;a0ae
	rst 38h			;a0b0
la0b1h:
	nop			;a0b1
	ld bc,00302h		;a0b2
	rst 38h			;a0b5
sub_a0b6h:
	ld a,(ix+023h)		;a0b6
	and a			;a0b9
	call z,sub_a0cch	;a0ba
	dec (ix+023h)		;a0bd
	ld e,(ix+011h)		;a0c0
	ld d,(ix+012h)		;a0c3
	ld hl,00000h		;a0c6
	jp 06c6dh		;a0c9
sub_a0cch:
	ld a,(ix+024h)		;a0cc
	cp 007h			;a0cf
	jr c,la0d4h		;a0d1
	xor a			;a0d3
la0d4h:
	ld l,a			;a0d4
	inc a			;a0d5
	ld (ix+024h),a		;a0d6
	ld h,000h		;a0d9
	add hl,hl		;a0db
	ld de,la0f7h		;a0dc
	add hl,de		;a0df
	ld a,(hl)		;a0e0
	ld (ix+023h),a		;a0e1
	inc hl			;a0e4
	ld l,(hl)		;a0e5
	ld h,000h		;a0e6
	add hl,hl		;a0e8
	ld de,la105h		;a0e9
	add hl,de		;a0ec
	ld a,(hl)		;a0ed
	ld (ix+011h),a		;a0ee
	inc hl			;a0f1
	ld a,(hl)		;a0f2
	ld (ix+012h),a		;a0f3
	ret			;a0f6
la0f7h:
	ld b,b			;a0f7
	nop			;a0f8
	djnz la0ffh		;a0f9
	ex af,af'		;a0fb
	ld bc,00040h		;a0fc
la0ffh:
	ex af,af'		;a0ff
	ld bc,00020h		;a100
	ex af,af'		;a103
	inc bc			;a104
la105h:
	nop			;a105
	nop			;a106
	jr nz,la109h		;a107
la109h:
	ret po			;a109
	rst 38h			;a10a
	ld b,b			;a10b
	nop			;a10c
	ret nz			;a10d
	rst 38h			;a10e
sub_a10fh:
	ld a,(ix+016h)		;a10f
	ld b,a			;a112
	and a			;a113
	jr nz,la117h		;a114
	inc b			;a116
la117h:
	cp 018h			;a117
	jr nc,la11dh		;a119
	ld a,018h		;a11b
la11dh:
	ld (ix+018h),a		;a11d
	xor a			;a120
	sub b			;a121
	rrca			;a122
	rrca			;a123
	rrca			;a124
	and 01fh		;a125
	ld (ix+022h),a		;a127
	ret			;a12a
sub_a12bh:
	res 7,(ix+014h)		;a12b
	ld a,(ix+020h)		;a12f
	cp 00eh			;a132
	jr c,la137h		;a134
	xor a			;a136
la137h:
	ld l,a			;a137
	inc a			;a138
	ld (ix+020h),a		;a139
	ld h,000h		;a13c
	add hl,hl		;a13e
	ld de,la15fh		;a13f
	add hl,de		;a142
	ld e,(hl)		;a143
	inc hl			;a144
	ld a,(hl)		;a145
	ld (ix+017h),e		;a146
	ld (ix+006h),a		;a149
	cp 004h			;a14c
	jr nz,la157h		;a14e
	call 07ca7h		;a150
	set 7,(ix+014h)		;a153
la157h:
	dec a			;a157
	dec a			;a158
	ret nz			;a159
	ld a,029h		;a15a
	jp 04af5h		;a15c
la15fh:
	inc bc			;a15f
	inc b			;a160
	ld (bc),a		;a161
	nop			;a162
	inc b			;a163
	ld bc,00204h		;a164
	inc b			;a167
	ld bc,00208h		;a168
	ld (bc),a		;a16b
	inc bc			;a16c
	ex af,af'		;a16d
	inc b			;a16e
	ld (bc),a		;a16f
	nop			;a170
	inc b			;a171
	ld bc,00218h		;a172
	inc b			;a175
	ld bc,00202h		;a176
	ld (bc),a		;a179
	inc bc			;a17a
	call sub_a2a9h		;a17b
	call sub_a22dh		;a17e
	ld a,(ix+001h)		;a181
	call 0461ah		;a184
	sub c			;a187
	and c			;a188
	sbc a,d			;a189
	and c			;a18a
	cp e			;a18b
	and c			;a18c
	rst 20h			;a18d
	and c			;a18e
	dec b			;a18f
	and d			;a190
	call sub_a24ah		;a191
	call sub_a235h		;a194
	jp 06c1dh		;a197
	call 06ad2h		;a19a
	ret nz			;a19d
	ld a,(ix+020h)		;a19e
	ld c,a			;a1a1
	and a			;a1a2
	ld b,004h		;a1a3
	jr z,la1a9h		;a1a5
	ld b,008h		;a1a7
la1a9h:
	call 06ab8h		;a1a9
	ret nz			;a1ac
	ld a,c			;a1ad
	call sub_a26ah		;a1ae
	call sub_a235h		;a1b1
	ld (ix+017h),006h	;a1b4
	jp 06c1dh		;a1b8
	call 06ad2h		;a1bb
	ret nz			;a1be
	ld a,(ix+020h)		;a1bf
	and a			;a1c2
	ld de,la275h		;a1c3
	jr z,la1cbh		;a1c6
	ld de,la27ah		;a1c8
la1cbh:
	ld a,(ix+021h)		;a1cb
	inc a			;a1ce
	cp 005h			;a1cf
	jp nc,06c1dh		;a1d1
	ld (ix+021h),a		;a1d4
	ld b,a			;a1d7
	ld l,a			;a1d8
	ld h,000h		;a1d9
	add hl,de		;a1db
	ld a,(hl)		;a1dc
	ld (ix+006h),a		;a1dd
	dec b			;a1e0
	ret nz			;a1e1
	ld a,028h		;a1e2
	jp 04af5h		;a1e4
	ld a,(ix+020h)		;a1e7
	and a			;a1ea
	ld b,004h		;a1eb
	jr z,la1f1h		;a1ed
	ld b,00ah		;a1ef
la1f1h:
	ld a,(0ca02h)		;a1f1
	and 003h		;a1f4
	jp po,la1fah		;a1f6
	xor a			;a1f9
la1fah:
	add a,b			;a1fa
	ld (ix+006h),a		;a1fb
	call 06adfh		;a1fe
	ret nz			;a201
	jp 06c1dh		;a202
	ld a,(ix+020h)		;a205
	and a			;a208
	ld de,la275h		;a209
	jr z,la211h		;a20c
	ld de,la27ah		;a20e
la211h:
	ld a,(ix+021h)		;a211
	sub 001h		;a214
	jp c,la225h		;a216
	ld (ix+021h),a		;a219
	ld l,a			;a21c
	ld h,000h		;a21d
	add hl,de		;a21f
	ld a,(hl)		;a220
	ld (ix+006h),a		;a221
	ret			;a224
la225h:
	call sub_a235h		;a225
	ld (ix+001h),001h	;a228
	ret			;a22c
sub_a22dh:
	ld a,(0ce52h)		;a22d
	and a			;a230
	ret z			;a231
	jp 06e98h		;a232
sub_a235h:
	ld de,0a29bh		;a235
	ld l,(ix+038h)		;a238
	dec l			;a23b
	ld h,000h		;a23c
	add hl,hl		;a23e
	add hl,de		;a23f
	ld e,(hl)		;a240
	inc hl			;a241
	ld d,(hl)		;a242
	ld (ix+017h),e		;a243
	ld (ix+018h),d		;a246
	ret			;a249
sub_a24ah:
	ld l,(ix+038h)		;a24a
	dec l			;a24d
	ld h,000h		;a24e
	add hl,hl		;a250
	add hl,hl		;a251
	ld de,la27fh		;a252
	add hl,de		;a255
	ld a,(hl)		;a256
	add a,(ix+008h)		;a257
	ld (ix+008h),a		;a25a
	inc hl			;a25d
	ld a,(hl)		;a25e
	add a,(ix+00ah)		;a25f
	ld (ix+00ah),a		;a262
	inc hl			;a265
	ld a,(hl)		;a266
	ld (ix+020h),a		;a267
sub_a26ah:
	and a			;a26a
	ld a,000h		;a26b
	jr z,la271h		;a26d
	ld a,004h		;a26f
la271h:
	ld (ix+005h),a		;a271
	ret			;a274
la275h:
	nop			;a275
	ld bc,00302h		;a276
	inc b			;a279
la27ah:
	nop			;a27a
	rlca			;a27b
	ex af,af'		;a27c
	add hl,bc		;a27d
	ld a,(bc)		;a27e
la27fh:
	defb 0fdh,0fdh,000h ;illegal sequence	;a27f
	nop			;a282
	ld sp,iy		;a283
	nop			;a285
	nop			;a286
	defb 0fdh,0f6h,000h ;illegal sequence	;a287
	nop			;a28a
	defb 0fdh,0f3h,000h ;illegal sequence	;a28b
	nop			;a28e
	cp 0f0h			;a28f
	ld bc,0fe00h		;a291
	xor 001h		;a294
	nop			;a296
	cp 0ebh			;a297
	ld bc,04000h		;a299
	ex af,af'		;a29c
	add a,b			;a29d
	ex af,af'		;a29e
	jr nz,sub_a2a9h		;a29f
	ld b,b			;a2a1
	ex af,af'		;a2a2
	jr nc,la2adh		;a2a3
	add a,b			;a2a5
	ex af,af'		;a2a6
	ex af,af'		;a2a7
	ex af,af'		;a2a8
sub_a2a9h:
	ld a,(0ca41h)		;a2a9
	and a			;a2ac
la2adh:
	ret z			;a2ad
	jp 06e98h		;a2ae
	ld a,(ix+001h)		;a2b1
	and a			;a2b4
	jr nz,la2c3h		;a2b5
	call 06754h		;a2b7
	call 06796h		;a2ba
	ld (ix+006h),a		;a2bd
	jp 06c1dh		;a2c0
la2c3h:
	ld a,(ix+006h)		;a2c3
	and a			;a2c6
	jr nz,la2ceh		;a2c7
	ld a,0fbh		;a2c9
	call 06c75h		;a2cb
la2ceh:
	ld a,(0ce52h)		;a2ce
	and a			;a2d1
	ret z			;a2d2
	ld (ix+004h),0ffh	;a2d3
	ret			;a2d7
	call 06a13h		;a2d8
	call 06e91h		;a2db
	ld a,0f3h		;a2de
	call 06c75h		;a2e0
	call sub_a2ech		;a2e3
	ld de,la494h		;a2e6
	jp 07b65h		;a2e9
sub_a2ech:
	ld a,(ix+001h)		;a2ec
	call 0461ah		;a2ef
	nop			;a2f2
	and e			;a2f3
	dec l			;a2f4
	and e			;a2f5
	jr c,$-91		;a2f6
	ld d,e			;a2f8
	and e			;a2f9
	ld h,d			;a2fa
	and e			;a2fb
	ld (hl),c		;a2fc
	and e			;a2fd
	add a,b			;a2fe
	and e			;a2ff
	ld (ix+00ah),028h	;a300
	ld (ix+008h),00ch	;a304
	ld (ix+006h),006h	;a308
	xor a			;a30c
	call 06c5ch		;a30d
	call 067feh		;a310
	ld bc,00406h		;a313
	call 06929h		;a316
	ld (ix+026h),012h	;a319
	ld a,(0ca04h)		;a31d
	and a			;a320
	jr z,la327h		;a321
	ld (ix+016h),06ch	;a323
la327h:
	call 069d7h		;a327
	jp 06c1dh		;a32a
	call 0688bh		;a32d
	call nc,06886h		;a330
	call 06c1dh		;a333
	jr la38eh		;a336
	dec (ix+026h)		;a338
	jr nz,la340h		;a33b
	dec (ix+006h)		;a33d
la340h:
	call sub_a45ch		;a340
	call sub_a3f9h		;a343
	ret nz			;a346
	set 7,(ix+014h)		;a347
	call sub_a430h		;a34b
	call 06c1dh		;a34e
	jr la38eh		;a351
	call sub_a45ch		;a353
	call sub_a40dh		;a356
	call sub_a3f9h		;a359
	ret nz			;a35c
	call 06c1dh		;a35d
	jr la38eh		;a360
	call sub_a3dfh		;a362
	call sub_a45ch		;a365
	call sub_a3f9h		;a368
	ret nz			;a36b
	call 06c1dh		;a36c
	jr la38eh		;a36f
	call sub_a45ch		;a371
	call sub_a413h		;a374
	call sub_a3f9h		;a377
	ret nz			;a37a
	call 06c1dh		;a37b
	jr la38eh		;a37e
	call sub_a3c4h		;a380
	call sub_a45ch		;a383
	call sub_a3f9h		;a386
	ret nz			;a389
	ld (ix+001h),003h	;a38a
la38eh:
	ld a,(ix+001h)		;a38e
	dec a			;a391
	dec a			;a392
	ld l,a			;a393
	ld h,000h		;a394
	add hl,hl		;a396
	add hl,hl		;a397
	ld de,la3b0h		;a398
	add hl,de		;a39b
	ld a,(hl)		;a39c
	ld (ix+011h),a		;a39d
	inc hl			;a3a0
	ld a,(hl)		;a3a1
	ld (ix+012h),a		;a3a2
	inc hl			;a3a5
	ld a,(hl)		;a3a6
	ld (ix+017h),a		;a3a7
	inc hl			;a3aa
	ld a,(hl)		;a3ab
	ld (ix+020h),a		;a3ac
	ret			;a3af
la3b0h:
	ret nz			;a3b0
	rst 38h			;a3b1
	ld e,b			;a3b2
	ld bc,00000h		;a3b3
	inc h			;a3b6
	ld bc,0ffc0h		;a3b7
	jr z,$+18		;a3ba
	nop			;a3bc
	nop			;a3bd
	inc h			;a3be
	ld bc,00040h		;a3bf
	jr z,la3d8h		;a3c2
sub_a3c4h:
	ld a,(ix+020h)		;a3c4
	dec a			;a3c7
	jr z,la3ceh		;a3c8
	ld (ix+020h),a		;a3ca
	ret			;a3cd
la3ceh:
	ld a,(ix+006h)		;a3ce
	inc a			;a3d1
	cp 006h			;a3d2
	ret z			;a3d4
	ld (ix+006h),a		;a3d5
la3d8h:
	dec a			;a3d8
	ret nz			;a3d9
	ld a,026h		;a3da
	jp 04af5h		;a3dc
sub_a3dfh:
	ld a,(ix+020h)		;a3df
	dec a			;a3e2
	jr z,la3e9h		;a3e3
	ld (ix+020h),a		;a3e5
	ret			;a3e8
la3e9h:
	ld a,(ix+006h)		;a3e9
	and a			;a3ec
	ret z			;a3ed
	dec a			;a3ee
	ld (ix+006h),a		;a3ef
	and a			;a3f2
	ret nz			;a3f3
	ld a,027h		;a3f4
	jp 04af5h		;a3f6
sub_a3f9h:
	call 06ad2h		;a3f9
	ret z			;a3fc
	ld e,(ix+011h)		;a3fd
	ld d,(ix+012h)		;a400
	ld hl,00000h		;a403
	call 06c6dh		;a406
	ld a,001h		;a409
	and a			;a40b
	ret			;a40c
sub_a40dh:
	ld (ix+024h),000h	;a40d
	jr la416h		;a411
sub_a413h:
	inc (ix+024h)		;a413
la416h:
	call 06adfh		;a416
	ret nz			;a419
	ld a,(ix+023h)		;a41a
	dec (ix+023h)		;a41d
	and a			;a420
	ret nz			;a421
	ld (ix+023h),002h	;a422
	call sub_a560h		;a426
	inc (ix+025h)		;a429
	dec (ix+021h)		;a42c
	ret nz			;a42f
sub_a430h:
	ld l,(ix+022h)		;a430
	inc (ix+022h)		;a433
	ld h,000h		;a436
	add hl,hl		;a438
	ld de,la453h		;a439
	add hl,de		;a43c
	ld a,(hl)		;a43d
	and a			;a43e
	jr nz,la445h		;a43f
	ld (ix+022h),a		;a441
	ex de,hl		;a444
la445h:
	ld a,(hl)		;a445
	ld (ix+018h),a		;a446
	inc hl			;a449
	ld a,(hl)		;a44a
	ld (ix+021h),a		;a44b
	ld (ix+025h),000h	;a44e
	ret			;a452
la453h:
	ld b,006h		;a453
	ld (de),a		;a455
	ex af,af'		;a456
	ex af,af'		;a457
	inc b			;a458
	ld (de),a		;a459
	ex af,af'		;a45a
	nop			;a45b
sub_a45ch:
	ld a,(ix+006h)		;a45c
	and a			;a45f
	jr z,la472h		;a460
	cp 005h			;a462
	jr z,la472h		;a464
	ld l,a			;a466
	ld h,000h		;a467
	ld de,la486h		;a469
	add hl,de		;a46c
	ld a,(hl)		;a46d
	ld (ix+005h),a		;a46e
	ret			;a471
la472h:
	call 06b94h		;a472
	ld a,c			;a475
	add a,002h		;a476
	and 007h		;a478
	ld l,a			;a47a
	ld h,000h		;a47b
	ld de,la48ch		;a47d
	add hl,de		;a480
	ld a,(hl)		;a481
	ld (ix+005h),a		;a482
	ret			;a485
la486h:
	dec b			;a486
	nop			;a487
	ld bc,00404h		;a488
	dec b			;a48b
la48ch:
	ld (bc),a		;a48c
	inc bc			;a48d
	inc b			;a48e
	dec b			;a48f
	dec b			;a490
	dec b			;a491
	ld (bc),a		;a492
	ld (bc),a		;a493
la494h:
	and d			;a494
	and h			;a495
	or a			;a496
	and h			;a497
	call z,0e1a4h		;a498
	and h			;a49b
	or 0a4h			;a49c
	dec bc			;a49e
	and l			;a49f
	jr nz,$-89		;a4a0
	dec d			;a4a2
	nop			;a4a3
	nop			;a4a4
	ld bc,0fe00h		;a4a5
	nop			;a4a8
	ld a,(bc)		;a4a9
	ld bc,0fe0ah		;a4aa
	nop			;a4ad
	inc b			;a4ae
	ld bc,0fe01h		;a4af
	inc b			;a4b2
	rst 30h			;a4b3
	ld bc,0ff07h		;a4b4
	dec d			;a4b7
	nop			;a4b8
	nop			;a4b9
	ld bc,0fe00h		;a4ba
	nop			;a4bd
	ld a,(bc)		;a4be
	ld bc,0fe0ah		;a4bf
	ld bc,001f6h		;a4c2
	rlca			;a4c5
	cp 000h			;a4c6
	inc bc			;a4c8
	ld bc,0ff02h		;a4c9
	dec d			;a4cc
	nop			;a4cd
	nop			;a4ce
	ld bc,0fe00h		;a4cf
	nop			;a4d2
	ld a,(bc)		;a4d3
	ld bc,0fe0ah		;a4d4
	rst 38h			;a4d7
	push af			;a4d8
	ld bc,0fe07h		;a4d9
	nop			;a4dc
	ld (bc),a		;a4dd
	ld bc,0ff03h		;a4de
	dec d			;a4e1
	nop			;a4e2
	nop			;a4e3
	ld bc,0fe00h		;a4e4
	nop			;a4e7
	ld a,(bc)		;a4e8
	ld bc,0fe0ah		;a4e9
	defb 0fdh,0f6h,001h ;illegal sequence	;a4ec
	rlca			;a4ef
	cp 0feh			;a4f0
	inc bc			;a4f2
	ld bc,0ff04h		;a4f3
	dec d			;a4f6
	nop			;a4f7
	nop			;a4f8
	ld bc,0fe00h		;a4f9
	nop			;a4fc
	ld a,(bc)		;a4fd
	ld bc,0fe0ah		;a4fe
	jp m,001f7h		;a501
	rlca			;a504
	cp 0fbh			;a505
	inc b			;a507
	ld bc,0ff05h		;a508
	dec d			;a50b
	nop			;a50c
	nop			;a50d
	ld bc,0fe00h		;a50e
	nop			;a511
	ld a,(bc)		;a512
	ld bc,0fe0ah		;a513
	ret m			;a516
	ld sp,hl		;a517
	ld bc,0fe07h		;a518
	ld sp,hl		;a51b
	ld b,001h		;a51c
	ld b,0ffh		;a51e
	djnz la522h		;a520
la522h:
	nop			;a522
	ld bc,0fe00h		;a523
	ld sp,hl		;a526
	ld b,001h		;a527
	ld b,0feh		;a529
	ret m			;a52b
	ld sp,hl		;a52c
	ld bc,0ff07h		;a52d
	ld a,(ix+001h)		;a530
	and a			;a533
	jr nz,la53dh		;a534
	ld (ix+020h),000h	;a536
	jp 06c1dh		;a53a
la53dh:
	ld a,(0ca3bh)		;a53d
	add a,(ix+00ah)		;a540
	and 007h		;a543
	ld d,a			;a545
	ld a,(0ca1ch)		;a546
	add a,(ix+009h)		;a549
	jr nc,la54fh		;a54c
	inc d			;a54e
la54fh:
	res 3,d			;a54f
	ld a,(ix+020h)		;a551
	add a,d			;a554
	ld (ix+006h),a		;a555
	ld a,(0ce52h)		;a558
	and a			;a55b
	ret z			;a55c
	jp 06e98h		;a55d
sub_a560h:
	ld a,040h		;a560
	call 0684ch		;a562
	ret c			;a565
	ld a,(ix+024h)		;a566
	ld (iy+024h),a		;a569
	ld a,(ix+021h)		;a56c
	ld (iy+021h),a		;a56f
	ld a,(ix+025h)		;a572
	and 003h		;a575
	ld bc,00c00h		;a577
	add a,b			;a57a
	ld b,a			;a57b
	jp 06929h		;a57c
	ld a,(ix+001h)		;a57f
	dec a			;a582
	jr z,la5a7h		;a583
	dec a			;a585
	jr z,la5b1h		;a586
	dec a			;a588
	jr z,la608h		;a589
	ld a,(ix+024h)		;a58b
	and a			;a58e
	ld a,00bh		;a58f
	jr z,la595h		;a591
	ld a,004h		;a593
la595h:
	ld (ix+017h),a		;a595
	ld hl,0ffa0h		;a598
	call 06bf3h		;a59b
	ld hl,0fff8h		;a59e
	call 06c0ch		;a5a1
	jp 06c1dh		;a5a4
la5a7h:
	call 06a9ah		;a5a7
	call 06ad2h		;a5aa
	ret nz			;a5ad
	jp 06c1dh		;a5ae
la5b1h:
	ld a,(0ca02h)		;a5b1
	and 003h		;a5b4
	ret nz			;a5b6
	ld b,003h		;a5b7
	call 06ab8h		;a5b9
	cp 002h			;a5bc
	ret c			;a5be
	ld iy,0ca40h		;a5bf
	ld a,01dh		;a5c3
	call 06b85h		;a5c5
	call 09da9h		;a5c8
	cp 098h			;a5cb
	jr c,la5d1h		;a5cd
	ld a,098h		;a5cf
la5d1h:
	push af			;a5d1
	ex af,af'		;a5d2
	call 04678h		;a5d3
	and 007h		;a5d6
	add a,a			;a5d8
	add a,a			;a5d9
	ld b,a			;a5da
	ex af,af'		;a5db
	sub b			;a5dc
	call 09de8h		;a5dd
	call 06b6fh		;a5e0
	pop af			;a5e3
	rlca			;a5e4
	rlca			;a5e5
	rlca			;a5e6
	and 007h		;a5e7
	ld l,a			;a5e9
	ld h,000h		;a5ea
	ld de,la601h		;a5ec
	add hl,de		;a5ef
	ld a,(hl)		;a5f0
	ld (ix+018h),a		;a5f1
	ld (ix+017h),006h	;a5f4
	ld hl,00012h		;a5f8
	call 06c0ch		;a5fb
	jp 06c1dh		;a5fe
la601h:
	djnz $+12		;a601
	ex af,af'		;a603
	ld c,00bh		;a604
	add hl,bc		;a606
	inc b			;a607
la608h:
	call sub_a61eh		;a608
	call sub_a62dh		;a60b
	call 06adfh		;a60e
	ret nz			;a611
	call 06a9ah		;a612
	call 06ad2h		;a615
	ret nz			;a618
	ld (ix+005h),003h	;a619
	ret			;a61d
sub_a61eh:
	ld a,(ix+008h)		;a61e
	add a,001h		;a621
	ret nc			;a623
	ld (ix+008h),000h	;a624
	ld (ix+007h),000h	;a628
	ret			;a62c
sub_a62dh:
	ld de,00101h		;a62d
	call sub_a63ah		;a630
	ret z			;a633
	ret c			;a634
	ld (ix+004h),0ffh	;a635
	ret			;a639
sub_a63ah:
	ld a,e			;a63a
	add a,(ix+008h)		;a63b
	ld e,a			;a63e
	ld a,d			;a63f
	add a,(ix+00ah)		;a640
	ld d,a			;a643
	jp 0753ch		;a644
	ld a,0ffh		;a647
	call 06c75h		;a649
	call 06a13h		;a64c
	ld de,la7c3h		;a64f
	call 07b65h		;a652
	call 06ad2h		;a655
	call z,sub_a795h	;a658
	ld a,(ix+001h)		;a65b
	dec a			;a65e
	jr z,la682h		;a65f
	dec a			;a661
	jr z,la697h		;a662
	jp p,la6adh		;a664
	ld (ix+008h),001h	;a667
	ld (ix+00ah),01fh	;a66b
	ld (ix+018h),014h	;a66f
	call sub_a768h		;a673
	call sub_a795h		;a676
	call sub_a6c3h		;a679
	call 069d7h		;a67c
	jp 06c1dh		;a67f
la682h:
	call sub_a6c3h		;a682
	ld a,(ix+00ah)		;a685
	cp 00eh			;a688
	ret nc			;a68a
	ld de,00000h		;a68b
	ld hl,00000h		;a68e
	call 06c6dh		;a691
	call 06c1dh		;a694
la697h:
	ld hl,00000h		;a697
	ld de,00040h		;a69a
	call 06c6dh		;a69d
	call sub_a6cch		;a6a0
	ld a,(ix+00ah)		;a6a3
	cp 015h			;a6a6
	ret c			;a6a8
	inc (ix+001h)		;a6a9
	ret			;a6ac
la6adh:
	ld hl,00000h		;a6ad
	ld de,0ffc0h		;a6b0
	call 06c6dh		;a6b3
	call sub_a6cch		;a6b6
	ld a,(ix+00ah)		;a6b9
	cp 00ah			;a6bc
	ret nc			;a6be
	dec (ix+001h)		;a6bf
	ret			;a6c2
sub_a6c3h:
	ld de,0ffe0h		;a6c3
	ld hl,00000h		;a6c6
	jp 06c6dh		;a6c9
sub_a6cch:
	ld a,(ix+002h)		;a6cc
	cp 005h			;a6cf
	jp nc,04ae0h		;a6d1
	call 0461ah		;a6d4
	pop hl			;a6d7
	and (hl)		;a6d8
	jp (hl)			;a6d9
	and (hl)		;a6da
	ld sp,hl		;a6db
	and (hl)		;a6dc
	inc d			;a6dd
	and a			;a6de
	add hl,sp		;a6df
	and a			;a6e0
	dec (ix+018h)		;a6e1
	ret nz			;a6e4
	inc (ix+002h)		;a6e5
	ret			;a6e8
	call sub_a759h		;a6e9
	ld a,(ix+003h)		;a6ec
	or a			;a6ef
	ret nz			;a6f0
	inc (ix+002h)		;a6f1
	ld (ix+018h),00ah	;a6f4
	ret			;a6f8
	dec (ix+018h)		;a6f9
	ret nz			;a6fc
	ld a,(ix+023h)		;a6fd
	call sub_a762h		;a700
	ld (ix+023h),a		;a703
	inc a			;a706
	ld (ix+021h),a		;a707
	ld (ix+022h),002h	;a70a
	ld (ix+018h),005h	;a70e
	jr la732h		;a712
	call sub_a759h		;a714
	dec (ix+018h)		;a717
	ret nz			;a71a
	ld a,(ix+023h)		;a71b
	call sub_a762h		;a71e
	inc a			;a721
	ld (ix+021h),a		;a722
	ld (ix+022h),001h	;a725
	call 04678h		;a729
	and 00fh		;a72c
	inc a			;a72e
	ld (ix+018h),a		;a72f
la732h:
	inc (ix+003h)		;a732
	inc (ix+002h)		;a735
	ret			;a738
	call sub_a759h		;a739
	dec (ix+018h)		;a73c
	ret nz			;a73f
	ld a,(ix+023h)		;a740
	call sub_a762h		;a743
	call sub_a762h		;a746
	inc a			;a749
	ld (ix+021h),a		;a74a
	ld (ix+022h),001h	;a74d
	inc (ix+003h)		;a751
	ld (ix+002h),001h	;a754
	ret			;a758
sub_a759h:
	ld (ix+021h),000h	;a759
	ld (ix+022h),000h	;a75d
	ret			;a761
sub_a762h:
	inc a			;a762
	cp 003h			;a763
	ret c			;a765
	xor a			;a766
	ret			;a767
sub_a768h:
	ld a,001h		;a768
	call sub_a774h		;a76a
	ld a,002h		;a76d
	call sub_a774h		;a76f
	ld a,003h		;a772
sub_a774h:
	push ix			;a774
	push ix			;a776
	push af			;a778
	ld a,03fh		;a779
	call 069bfh		;a77b
	pop bc			;a77e
	jr c,la792h		;a77f
	ld (ix+003h),b		;a781
	ld (ix+023h),001h	;a784
	pop iy			;a788
	ld a,b			;a78a
	dec a			;a78b
	call sub_a9b4h		;a78c
	call sub_a95dh		;a78f
la792h:
	pop ix			;a792
	ret			;a794
sub_a795h:
	ld a,(ix+020h)		;a795
	cp 008h			;a798
	jr c,la79dh		;a79a
	xor a			;a79c
la79dh:
	ld l,a			;a79d
	inc a			;a79e
	ld (ix+020h),a		;a79f
	ld h,000h		;a7a2
	add hl,hl		;a7a4
	ld de,la7b3h		;a7a5
	add hl,de		;a7a8
	ld e,(hl)		;a7a9
	inc hl			;a7aa
	ld d,(hl)		;a7ab
	ld (ix+017h),e		;a7ac
	ld (ix+006h),d		;a7af
	ret			;a7b2
la7b3h:
	ld (bc),a		;a7b3
	nop			;a7b4
	ld (bc),a		;a7b5
	ld bc,00202h		;a7b6
	ld (bc),a		;a7b9
	inc bc			;a7ba
	ld (bc),a		;a7bb
	inc b			;a7bc
	ld (bc),a		;a7bd
	dec b			;a7be
	ld (bc),a		;a7bf
	ld b,002h		;a7c0
	rlca			;a7c2
la7c3h:
	out (0a7h),a		;a7c3
	ex (sp),hl		;a7c5
	and a			;a7c6
	di			;a7c7
	and a			;a7c8
	inc bc			;a7c9
	xor b			;a7ca
	inc de			;a7cb
	xor b			;a7cc
	inc hl			;a7cd
	xor b			;a7ce
	inc sp			;a7cf
	xor b			;a7d0
	ld b,e			;a7d1
	xor b			;a7d2
	djnz la7d5h		;a7d3
la7d5h:
	nop			;a7d5
	ld bc,0fe00h		;a7d6
	ld de,001ffh		;a7d9
	ld bc,012feh		;a7dc
	pop af			;a7df
	ld bc,0ff02h		;a7e0
	djnz la7e5h		;a7e3
la7e5h:
	nop			;a7e5
	ld bc,0fe00h		;a7e6
	ld de,001ffh		;a7e9
	ld bc,012feh		;a7ec
	pop af			;a7ef
	ld bc,0ff03h		;a7f0
	djnz la7f5h		;a7f3
la7f5h:
	nop			;a7f5
	ld bc,0fe00h		;a7f6
	ld de,001ffh		;a7f9
	ld bc,012feh		;a7fc
	pop af			;a7ff
la800h:
	ld bc,0ff04h		;a800
	djnz la805h		;a803
la805h:
	nop			;a805
	ld bc,0fe00h		;a806
	ld de,001ffh		;a809
	ld bc,012feh		;a80c
	pop af			;a80f
	ld bc,0ff05h		;a810
	djnz la815h		;a813
la815h:
	nop			;a815
	ld bc,0fe00h		;a816
	ld de,001ffh		;a819
	ld bc,012feh		;a81c
	pop af			;a81f
	ld bc,0ff06h		;a820
	djnz la825h		;a823
la825h:
	nop			;a825
	ld bc,0fe00h		;a826
	ld de,001ffh		;a829
	ld bc,012feh		;a82c
	pop af			;a82f
	ld bc,0ff07h		;a830
	djnz la835h		;a833
la835h:
	nop			;a835
	ld bc,0fe00h		;a836
	ld de,001ffh		;a839
	ld bc,012feh		;a83c
	pop af			;a83f
	ld bc,0ff08h		;a840
	djnz la845h		;a843
la845h:
	nop			;a845
	ld bc,0fe00h		;a846
	ld de,001ffh		;a849
	ld bc,012feh		;a84c
	pop af			;a84f
	ld bc,0ff09h		;a850
	ld hl,0ca19h		;a853
	ld a,(hl)		;a856
	push af			;a857
	srl a			;a858
	ld (hl),a		;a85a
	call sub_a863h		;a85b
	pop af			;a85e
	ld (0ca19h),a		;a85f
	ret			;a862
sub_a863h:
	call sub_a9a2h		;a863
	jp c,07cc3h		;a866
	call sub_a884h		;a869
	ld a,(ix+023h)		;a86c
	cp 002h			;a86f
	ret nz			;a871
	ld a,(ix+024h)		;a872
	or a			;a875
	ret z			;a876
	ld a,(ix+004h)		;a877
	or a			;a87a
	ret z			;a87b
	ld (iy+004h),a		;a87c
	ld (ix+004h),000h	;a87f
	ret			;a883
sub_a884h:
	ld a,(ix+001h)		;a884
	cp 008h			;a887
	jp nc,04ae0h		;a889
	call 0461ah		;a88c
	sbc a,a			;a88f
	xor b			;a890
	cp b			;a891
	xor b			;a892
	push bc			;a893
	xor b			;a894
	jp nc,0d2a8h		;a895
	xor b			;a898
	push af			;a899
	xor b			;a89a
	inc de			;a89b
	xor c			;a89c
	inc de			;a89d
	xor c			;a89e
	ld a,(iy+021h)		;a89f
	cp (ix+003h)		;a8a2
	ret nz			;a8a5
	ld a,(iy+022h)		;a8a6
	ld (ix+001h),a		;a8a9
	ld (ix+023h),a		;a8ac
	ld (ix+017h),003h	;a8af
	ld (ix+004h),000h	;a8b3
	ret			;a8b7
	call sub_a93eh		;a8b8
	ret nz			;a8bb
	ld (ix+001h),004h	;a8bc
	ld (ix+017h),028h	;a8c0
	ret			;a8c4
	call sub_a93eh		;a8c5
	ret nz			;a8c8
	ld (ix+001h),005h	;a8c9
	ld (ix+017h),01eh	;a8cd
	ret			;a8d1
	call sub_a8e8h		;a8d2
	ld a,(ix+017h)		;a8d5
	cp 025h			;a8d8
	jp z,07143h		;a8da
	cp 01ch			;a8dd
	jp z,laa06h		;a8df
	cp 012h			;a8e2
	jp z,07143h		;a8e4
	ret			;a8e7
sub_a8e8h:
	dec (ix+017h)		;a8e8
	ret nz			;a8eb
la8ech:
	ld (ix+001h),007h	;a8ec
	ld (ix+017h),005h	;a8f0
	ret			;a8f4
	ld a,(0ca02h)		;a8f5
	and 003h		;a8f8
	jr nz,la90ch		;a8fa
	ld a,(ix+024h)		;a8fc
	inc a			;a8ff
	cp 004h			;a900
	jr c,la906h		;a902
	ld a,002h		;a904
la906h:
	ld (ix+024h),a		;a906
	call sub_a95dh		;a909
la90ch:
	dec (ix+017h)		;a90c
	ret nz			;a90f
	jp la8ech		;a910
	call sub_a91fh		;a913
	ret nz			;a916
	dec (iy+003h)		;a917
	ld (ix+001h),000h	;a91a
	ret			;a91e
sub_a91fh:
	dec (ix+017h)		;a91f
	ret nz			;a922
	ld (ix+017h),001h	;a923
	ld a,(ix+024h)		;a927
	push af			;a92a
	cp 002h			;a92b
	ld a,02bh		;a92d
	call z,04af5h		;a92f
	pop af			;a932
	dec a			;a933
	ld (ix+024h),a		;a934
	push af			;a937
	call sub_a95dh		;a938
	pop af			;a93b
	or a			;a93c
	ret			;a93d
sub_a93eh:
	dec (ix+017h)		;a93e
	ret nz			;a941
	ld (ix+017h),001h	;a942
	ld a,(ix+024h)		;a946
	push af			;a949
	or a			;a94a
	ld a,02ah		;a94b
	call z,04af5h		;a94d
	pop af			;a950
	inc a			;a951
	ld (ix+024h),a		;a952
	push af			;a955
	call sub_a95dh		;a956
	pop af			;a959
	cp 002h			;a95a
	ret			;a95c
sub_a95dh:
	ld a,(ix+024h)		;a95d
	push af			;a960
	ld a,(ix+023h)		;a961
	dec a			;a964
	call sub_a998h		;a965
	push af			;a968
	ld a,(ix+003h)		;a969
	dec a			;a96c
	call sub_a99fh		;a96d
	pop bc			;a970
	add a,b			;a971
	pop bc			;a972
	add a,b			;a973
	ld hl,la9e2h		;a974
	call 04600h		;a977
	ld a,(hl)		;a97a
	or a			;a97b
	jr z,la98ch		;a97c
	dec a			;a97e
	ld (ix+006h),a		;a97f
	set 6,(ix+015h)		;a982
	set 4,(ix+015h)		;a986
	jr la994h		;a98a
la98ch:
	res 6,(ix+015h)		;a98c
	res 4,(ix+015h)		;a990
la994h:
	ld a,b			;a994
	cp 002h			;a995
	ret			;a997
sub_a998h:
	call sub_a99fh		;a998
	ld c,a			;a99b
	add a,a			;a99c
	add a,c			;a99d
	ret			;a99e
sub_a99fh:
	add a,a			;a99f
	add a,a			;a9a0
	ret			;a9a1
sub_a9a2h:
	call 068deh		;a9a2
	ret c			;a9a5
	ld a,(ix+003h)		;a9a6
	dec a			;a9a9
	jr z,la9b0h		;a9aa
	ld a,(iy+021h)		;a9ac
	ret			;a9af
la9b0h:
	ld a,(iy+022h)		;a9b0
	ret			;a9b3
sub_a9b4h:
	ld hl,la9dch		;a9b4
	call 0468eh		;a9b7
	ex de,hl		;a9ba
	ld b,(iy+008h)		;a9bb
	ld c,(iy+007h)		;a9be
	ld h,e			;a9c1
	ld l,000h		;a9c2
	add hl,bc		;a9c4
	ld (ix+008h),h		;a9c5
	ld (ix+007h),l		;a9c8
	ld b,(iy+00ah)		;a9cb
	ld c,(iy+009h)		;a9ce
	ld h,d			;a9d1
	ld l,000h		;a9d2
	add hl,bc		;a9d4
	ld (ix+00ah),h		;a9d5
	ld (ix+009h),l		;a9d8
	ret			;a9db
la9dch:
	ld b,000h		;a9dc
	ld a,(bc)		;a9de
	nop			;a9df
	ld c,0ffh		;a9e0
la9e2h:
	dec bc			;a9e2
	inc c			;a9e3
	dec c			;a9e4
	dec c			;a9e5
	rrca			;a9e6
	djnz la9fah		;a9e7
	ld de,01312h		;a9e9
	inc d			;a9ec
	inc d			;a9ed
	dec bc			;a9ee
	inc e			;a9ef
	jr $+27			;a9f0
	rrca			;a9f2
	rla			;a9f3
	dec d			;a9f4
	ld d,012h		;a9f5
	dec e			;a9f7
	ld a,(de)		;a9f8
	dec de			;a9f9
la9fah:
	dec bc			;a9fa
	ld c,000h		;a9fb
	nop			;a9fd
	rrca			;a9fe
	ld e,000h		;a9ff
	nop			;aa01
	ld (de),a		;aa02
	rra			;aa03
	nop			;aa04
	nop			;aa05
laa06h:
	ld hl,laa15h		;aa06
	call 07186h		;aa09
	ld bc,00200h		;aa0c
	call 07306h		;aa0f
	jp 07143h		;aa12
laa15h:
	rrca			;aa15
	nop			;aa16
	ld bc,0cdffh		;aa17
	inc de			;aa1a
	ld l,d			;aa1b
	ld a,0f8h		;aa1c
	call 06c75h		;aa1e
	ld de,lacdeh		;aa21
	call 07b65h		;aa24
	call sub_ab42h		;aa27
	call sub_ac96h		;aa2a
	call 0ac2ch		;aa2d
	ld a,(ix+001h)		;aa30
	call 0461ah		;aa33
	ld c,b			;aa36
	xor d			;aa37
	ld h,h			;aa38
	xor d			;aa39
	adc a,a			;aa3a
	xor d			;aa3b
	and l			;aa3c
	xor d			;aa3d
	cp a			;aa3e
	xor d			;aa3f
	exx			;aa40
	xor d			;aa41
	inc bc			;aa42
	xor e			;aa43
	ld h,0abh		;aa44
	ld a,(0ddabh)		;aa46
	ld (hl),008h		;aa49
	inc b			;aa4b
	ld (ix+00ah),01fh	;aa4c
	ld (ix+023h),030h	;aa50
	ld (ix+025h),015h	;aa54
	call sub_ac10h		;aa58
	call 06c4bh		;aa5b
	call 069d7h		;aa5e
	jp 06c1dh		;aa61
	call sub_ac54h		;aa64
	ld de,0ffe0h		;aa67
	ld a,0d0h		;aa6a
	call sub_aa73h		;aa6c
	ret c			;aa6f
	jp 06c1dh		;aa70
sub_aa73h:
	cp (ix+022h)		;aa73
	jr z,laa8ah		;aa76
	inc (ix+022h)		;aa78
	ld (ix+029h),001h	;aa7b
	ld hl,00000h		;aa7f
	call 06c6dh		;aa82
	call sub_ac65h		;aa85
	scf			;aa88
	ret			;aa89
laa8ah:
	xor a			;aa8a
	ld (ix+022h),a		;aa8b
	ret			;aa8e
	call sub_ac54h		;aa8f
	ld de,00020h		;aa92
	ld a,040h		;aa95
	call sub_aa73h		;aa97
	ret c			;aa9a
	call sub_abe1h		;aa9b
	ld (ix+029h),000h	;aa9e
	jp 06c1dh		;aaa2
	call sub_ab86h		;aaa5
	call sub_abeah		;aaa8
	call sub_ac54h		;aaab
	call sub_ac65h		;aaae
	call 06ad2h		;aab1
	ret nz			;aab4
	call sub_abe1h		;aab5
	ld (ix+028h),003h	;aab8
	jp 06c1dh		;aabc
	call sub_ab86h		;aabf
	call sub_ac54h		;aac2
	call sub_ac65h		;aac5
	ld b,004h		;aac8
	call 06ab8h		;aaca
	ret nz			;aacd
	dec (ix+028h)		;aace
	ret nz			;aad1
	ld (ix+027h),020h	;aad2
	jp 06c1dh		;aad6
	call sub_ab86h		;aad9
	call sub_ac54h		;aadc
	call sub_ac65h		;aadf
	call sub_aaf2h		;aae2
	dec (ix+027h)		;aae5
	ret nz			;aae8
	ld (ix+026h),000h	;aae9
	ld (ix+001h),003h	;aaed
	ret			;aaf1
sub_aaf2h:
	ld a,(ix+026h)		;aaf2
	and a			;aaf5
	ret nz			;aaf6
	ld de,00104h		;aaf7
	call 0915dh		;aafa
	inc (ix+026h)		;aafd
	jp sub_ac10h		;ab00
	res 7,(ix+014h)		;ab03
	ld de,0ffe0h		;ab07
	ld hl,00000h		;ab0a
	call 06c6dh		;ab0d
	call sub_ac65h		;ab10
	inc (ix+022h)		;ab13
	ld a,(ix+022h)		;ab16
	cp 040h			;ab19
	ret nz			;ab1b
	call sub_abe1h		;ab1c
	ld (ix+006h),005h	;ab1f
	jp 06c1dh		;ab23
	call sub_ac65h		;ab26
	call sub_ac59h		;ab29
	ret nz			;ab2c
	ld a,001h		;ab2d
	ld (0ce75h),a		;ab2f
	ld a,051h		;ab32
	call 04af5h		;ab34
	jp 06c1dh		;ab37
	call sub_ac65h		;ab3a
	call sub_ac86h		;ab3d
	jr lab8fh		;ab40
sub_ab42h:
	ld a,(ix+001h)		;ab42
	cp 003h			;ab45
	ret c			;ab47
	cp 006h			;ab48
	ret nc			;ab4a
	ld a,(ix+02ah)		;ab4b
	and a			;ab4e
	call z,sub_ab60h	;ab4f
	dec a			;ab52
	ld (ix+02ah),a		;ab53
	ld a,(ix+02bh)		;ab56
	and a			;ab59
	ret z			;ab5a
	add a,01dh		;ab5b
	jp 07a43h		;ab5d
sub_ab60h:
	ld a,(ix+02bh)		;ab60
	inc a			;ab63
	cp 006h			;ab64
	jr c,lab69h		;ab66
	xor a			;ab68
lab69h:
	ld (ix+02bh),a		;ab69
	and a			;ab6c
	ld bc,00840h		;ab6d
	jr z,lab7ch		;ab70
	cp 003h			;ab72
	ld bc,04008h		;ab74
	jr z,lab7ch		;ab77
	ld a,006h		;ab79
	ret			;ab7b
lab7ch:
	ld a,(0ca19h)		;ab7c
	cp 006h			;ab7f
	jr c,lab84h		;ab81
	ld b,c			;ab83
lab84h:
	ld a,b			;ab84
	ret			;ab85
sub_ab86h:
	call 04678h		;ab86
	and 00eh		;ab89
	ret nz			;ab8b
	jp 09e0fh		;ab8c
lab8fh:
	ld h,(ix+008h)		;ab8f
	ld l,(ix+007h)		;ab92
	ld de,00600h		;ab95
	add hl,de		;ab98
	call sub_abd1h		;ab99
	ld a,h			;ab9c
	ld hl,(0ca47h)		;ab9d
	call sub_abd1h		;aba0
	cp h			;aba3
	call sub_abd7h		;aba4
	push hl			;aba7
	add hl,de		;aba8
	ld (0ca47h),hl		;aba9
	ld h,(ix+00ah)		;abac
	ld l,(ix+009h)		;abaf
	ld de,0fe00h		;abb2
	add hl,de		;abb5
	call sub_abd1h		;abb6
	ld a,h			;abb9
	ld hl,(0ca49h)		;abba
	call sub_abd1h		;abbd
	cp h			;abc0
	call sub_abd7h		;abc1
	ld a,l			;abc4
	add hl,de		;abc5
	ld (0ca49h),hl		;abc6
	pop hl			;abc9
	or l			;abca
	ret nz			;abcb
	inc a			;abcc
	ld (0ca0fh),a		;abcd
	ret			;abd0
sub_abd1h:
	ld d,h			;abd1
	ld e,l			;abd2
	add hl,hl		;abd3
	add hl,hl		;abd4
	add hl,hl		;abd5
	ret			;abd6
sub_abd7h:
	ld hl,00000h		;abd7
	ret z			;abda
	ld l,020h		;abdb
	ret nc			;abdd
	jp 04612h		;abde
sub_abe1h:
	ld hl,00000h		;abe1
	ld de,00000h		;abe4
	jp 06c6dh		;abe7
sub_abeah:
	ld a,(ix+023h)		;abea
	cp 060h			;abed
	inc a			;abef
	jr c,labfbh		;abf0
	ld a,001h		;abf2
	xor (ix+024h)		;abf4
	ld (ix+024h),a		;abf7
labfah:
	xor a			;abfa
labfbh:
	ld (ix+023h),a		;abfb
	ld a,(ix+024h)		;abfe
	and a			;ac01
	ld hl,0ffe0h		;ac02
	jr z,lac0ah		;ac05
	ld hl,00020h		;ac07
lac0ah:
	ld de,00000h		;ac0a
	jp 06c6dh		;ac0d
sub_ac10h:
	ld a,(ix+021h)		;ac10
	ld l,a			;ac13
	inc a			;ac14
	cp 004h			;ac15
	jr nz,lac1ah		;ac17
	xor a			;ac19
lac1ah:
	ld (ix+021h),a		;ac1a
	ld h,000h		;ac1d
	ld de,lac28h		;ac1f
	add hl,de		;ac22
	ld a,(hl)		;ac23
	ld (ix+017h),a		;ac24
	ret			;ac27
lac28h:
	jr nz,$+66		;ac28
	ld h,b			;ac2a
	jr nz,labfah		;ac2b
	inc e			;ac2d
	ld l,d			;ac2e
	ld a,(ix+029h)		;ac2f
	and a			;ac32
	ret nz			;ac33
	ld a,(ix+02bh)		;ac34
	and a			;ac37
	ret z			;ac38
	call 07c6bh		;ac39
	ret nc			;ac3c
	ld a,001h		;ac3d
	ld (0ce76h),a		;ac3f
	call sub_abe1h		;ac42
	ld (ix+005h),000h	;ac45
	ld (ix+001h),006h	;ac49
	ld (ix+029h),001h	;ac4d
	jp 07cbeh		;ac51
sub_ac54h:
	ld b,005h		;ac54
	jp 06ac2h		;ac56
sub_ac59h:
	call sub_acd8h		;ac59
	ret nz			;ac5c
	ld b,00ah		;ac5d
	call 06ac2h		;ac5f
	cp 009h			;ac62
	ret			;ac64
sub_ac65h:
	ld b,(ix+020h)		;ac65
	call sub_acd8h		;ac68
	ld a,b			;ac6b
	jr nz,lac77h		;ac6c
	cp 003h			;ac6e
	inc a			;ac70
	jr c,lac74h		;ac71
	xor a			;ac73
lac74h:
	ld (ix+020h),a		;ac74
lac77h:
	and a			;ac77
	ret z			;ac78
	dec a			;ac79
	push af			;ac7a
	add a,00fh		;ac7b
	call 07a43h		;ac7d
	pop af			;ac80
	add a,012h		;ac81
	jp 07a43h		;ac83
sub_ac86h:
	ld a,(ix+025h)		;ac86
	inc a			;ac89
	cp 01eh			;ac8a
	jr nz,lac90h		;ac8c
	ld a,01bh		;ac8e
lac90h:
	ld (ix+025h),a		;ac90
	jp 07a43h		;ac93
sub_ac96h:
	call sub_acd8h		;ac96
	ret nz			;ac99
	ld b,008h		;ac9a
	call 06aech		;ac9c
	push af			;ac9f
	call sub_acbah		;aca0
	ld a,005h		;aca3
	call 04776h		;aca5
	pop bc			;aca8
	ld a,(ix+001h)		;aca9
	cp 005h			;acac
	ret nc			;acae
	ld a,003h		;acaf
	add a,b			;acb1
	call sub_acbah		;acb2
	ld a,009h		;acb5
	jp 04776h		;acb7
sub_acbah:
	and 007h		;acba
	ld l,a			;acbc
	ld h,000h		;acbd
	add hl,hl		;acbf
	ld de,lacc8h		;acc0
	add hl,de		;acc3
	ld d,(hl)		;acc4
	inc hl			;acc5
	ld e,(hl)		;acc6
	ret			;acc7
lacc8h:
	ld d,b			;acc8
	nop			;acc9
	ld d,b			;acca
	ld bc,00250h		;accb
	ld h,b			;acce
	ld (bc),a		;accf
	ld h,b			;acd0
	inc bc			;acd1
	ld h,b			;acd2
	inc bc			;acd3
	ld (hl),b		;acd4
	inc bc			;acd5
	ld (hl),b		;acd6
	inc b			;acd7
sub_acd8h:
	ld a,(0ca02h)		;acd8
	and 001h		;acdb
	ret			;acdd
lacdeh:
	jp p,007ach		;acde
	xor l			;ace1
	ld hl,03badh		;ace2
	xor l			;ace5
	ld d,l			;ace6
	xor l			;ace7
	ld l,a			;ace8
	xor l			;ace9
	adc a,(hl)		;acea
	xor l			;aceb
	xor l			;acec
	xor l			;aced
	call z,0ebadh		;acee
	xor l			;acf1
	dec d			;acf2
	nop			;acf3
	ld (bc),a		;acf4
	ld bc,0fe00h		;acf5
	ld sp,hl		;acf8
	inc b			;acf9
	ld bc,0fe01h		;acfa
	djnz lad03h		;acfd
	ld bc,0fe02h		;acff
	nop			;ad02
lad03h:
	dec c			;ad03
	ld bc,0ff03h		;ad04
	ld a,(de)		;ad07
	nop			;ad08
	ld (bc),a		;ad09
	ld bc,0fe00h		;ad0a
	ld sp,hl		;ad0d
	inc b			;ad0e
	ld bc,0fe01h		;ad0f
	djnz lad18h		;ad12
	ld bc,0fe02h		;ad14
	nop			;ad17
lad18h:
	dec c			;ad18
	ld bc,0fe03h		;ad19
	ld (bc),a		;ad1c
	ld (bc),a		;ad1d
	ld bc,0ff04h		;ad1e
	ld a,(de)		;ad21
	nop			;ad22
	ld (bc),a		;ad23
	ld bc,0fe00h		;ad24
	ld sp,hl		;ad27
	inc b			;ad28
	ld bc,0fe01h		;ad29
	djnz lad32h		;ad2c
	ld bc,0fe02h		;ad2e
	nop			;ad31
lad32h:
	dec c			;ad32
	ld bc,0fe03h		;ad33
	ld (bc),a		;ad36
	ld (bc),a		;ad37
	ld bc,0ff05h		;ad38
	ld a,(de)		;ad3b
	nop			;ad3c
	ld (bc),a		;ad3d
	ld bc,0fe00h		;ad3e
	ld sp,hl		;ad41
	inc b			;ad42
	ld bc,0fe01h		;ad43
	djnz lad4ch		;ad46
	ld bc,0fe02h		;ad48
	nop			;ad4b
lad4ch:
	dec c			;ad4c
	ld bc,0fe03h		;ad4d
	ld (bc),a		;ad50
	ld (bc),a		;ad51
	ld bc,0ff06h		;ad52
	ld a,(de)		;ad55
	nop			;ad56
	ld (bc),a		;ad57
	ld bc,0fe00h		;ad58
	ld sp,hl		;ad5b
	inc b			;ad5c
	ld bc,0fe01h		;ad5d
	djnz lad66h		;ad60
	ld bc,0fe02h		;ad62
	nop			;ad65
lad66h:
	dec c			;ad66
	ld bc,0fe03h		;ad67
	ld (bc),a		;ad6a
	ld (bc),a		;ad6b
	ld bc,0ff07h		;ad6c
	rra			;ad6f
	nop			;ad70
	ld (bc),a		;ad71
	ld bc,0fe00h		;ad72
	ld sp,hl		;ad75
	inc b			;ad76
	ld bc,0fe01h		;ad77
	djnz lad80h		;ad7a
	ld bc,0fe02h		;ad7c
	nop			;ad7f
lad80h:
	dec c			;ad80
	ld bc,0fe03h		;ad81
	ld b,001h		;ad84
	ld bc,0fe0ah		;ad86
	ld (bc),a		;ad89
	ld (bc),a		;ad8a
	ld bc,0ff07h		;ad8b
	rra			;ad8e
	nop			;ad8f
	ld (bc),a		;ad90
	ld bc,0fe00h		;ad91
	ld sp,hl		;ad94
	inc b			;ad95
	ld bc,0fe01h		;ad96
	djnz lad9fh		;ad99
	ld bc,0fe02h		;ad9b
	nop			;ad9e
lad9fh:
	dec c			;ad9f
	ld bc,0fe03h		;ada0
	ld b,000h		;ada3
	ld bc,0fe0bh		;ada5
	ld (bc),a		;ada8
	ld (bc),a		;ada9
	ld bc,0ff07h		;adaa
	rra			;adad
	nop			;adae
	ld (bc),a		;adaf
	ld bc,0fe00h		;adb0
	ld sp,hl		;adb3
	inc b			;adb4
	ld bc,0fe01h		;adb5
	djnz ladbeh		;adb8
	ld bc,0fe02h		;adba
	nop			;adbd
ladbeh:
	dec c			;adbe
	ld bc,0fe03h		;adbf
	dec b			;adc2
	nop			;adc3
	ld bc,0fe0ch		;adc4
	ld (bc),a		;adc7
	ld (bc),a		;adc8
	ld bc,0ff07h		;adc9
	rra			;adcc
	nop			;adcd
	ld (bc),a		;adce
	ld bc,0fe00h		;adcf
	ld sp,hl		;add2
	inc b			;add3
	ld bc,0fe01h		;add4
	djnz ladddh		;add7
	ld bc,0fe02h		;add9
	nop			;addc
ladddh:
	dec c			;addd
	ld bc,0fe03h		;adde
	dec b			;ade1
	nop			;ade2
	ld bc,0fe0dh		;ade3
	ld (bc),a		;ade6
	ld (bc),a		;ade7
	ld bc,0ff07h		;ade8
	rra			;adeb
	nop			;adec
	ld (bc),a		;aded
	ld bc,0fe00h		;adee
	ld sp,hl		;adf1
	inc b			;adf2
	ld bc,0fe01h		;adf3
	djnz ladfch		;adf6
	ld bc,0fe02h		;adf8
	nop			;adfb
ladfch:
	dec c			;adfc
	ld bc,0fe03h		;adfd
	inc b			;ae00
	nop			;ae01
	ld bc,0fe0eh		;ae02
	ld (bc),a		;ae05
	ld (bc),a		;ae06
	ld bc,0ff07h		;ae07
	call sub_aef9h		;ae0a
	call 06a13h		;ae0d
	call 06e91h		;ae10
	ld a,0f4h		;ae13
	call 06c75h		;ae15
	ld de,lb03ch		;ae18
	call 07b65h		;ae1b
	ld a,(ix+001h)		;ae1e
	dec a			;ae21
	jr z,lae41h		;ae22
	dec a			;ae24
	jr z,lae64h		;ae25
	dec a			;ae27
	jr z,lae88h		;ae28
	ld (ix+008h),009h	;ae2a
	ld (ix+00ah),028h	;ae2e
	call sub_af66h		;ae32
	call sub_af92h		;ae35
	call sub_aebbh		;ae38
	call 069d7h		;ae3b
	jp 06c1dh		;ae3e
lae41h:
	call sub_afaah		;ae41
	call sub_afd4h		;ae44
	ld (ix+021h),001h	;ae47
	call sub_aee2h		;ae4b
	inc (ix+020h)		;ae4e
	ld a,(ix+020h)		;ae51
	cp 050h			;ae54
	ret nz			;ae56
	ld (ix+021h),000h	;ae57
	call sub_aee2h		;ae5b
	call sub_b002h		;ae5e
	jp 06c1dh		;ae61
lae64h:
	call sub_af66h		;ae64
	call sub_afaah		;ae67
	call sub_af8ch		;ae6a
	call sub_afb3h		;ae6d
	call sub_afd4h		;ae70
	call sub_aed8h		;ae73
	call sub_aeabh		;ae76
	dec (ix+011h)		;ae79
	ret nz			;ae7c
	call sub_b002h		;ae7d
	ld l,000h		;ae80
	call sub_aee5h		;ae82
	jp 06c1dh		;ae85
lae88h:
	call sub_af66h		;ae88
	call sub_af8ch		;ae8b
	call sub_afd4h		;ae8e
	ld a,(ix+010h)		;ae91
	and a			;ae94
	jr z,lae9dh		;ae95
	dec (ix+010h)		;ae97
	jp lb04eh		;ae9a
lae9dh:
	call 06ad2h		;ae9d
	ret nz			;aea0
	ld (ix+001h),002h	;aea1
	ld bc,0fe03h		;aea5
	jp 0751ah		;aea8
sub_aeabh:
	call 06adfh		;aeab
	ret nz			;aeae
	ld de,00000h		;aeaf
	call 09157h		;aeb2
	ld de,00007h		;aeb5
	call 09157h		;aeb8
sub_aebbh:
	ld a,(ix+012h)		;aebb
	cp 005h			;aebe
	jr c,laec3h		;aec0
	xor a			;aec2
laec3h:
	ld l,a			;aec3
	inc a			;aec4
	ld (ix+012h),a		;aec5
	ld h,000h		;aec8
	ld de,laed3h		;aeca
	add hl,de		;aecd
	ld a,(hl)		;aece
	ld (ix+018h),a		;aecf
	ret			;aed2
laed3h:
	inc de			;aed3
	daa			;aed4
	inc sp			;aed5
	jr laeefh		;aed6
sub_aed8h:
	ld a,(ix+022h)		;aed8
	dec (ix+022h)		;aedb
	and a			;aede
	call z,sub_af18h	;aedf
sub_aee2h:
	ld l,(ix+021h)		;aee2
sub_aee5h:
	ld h,000h		;aee5
	add hl,hl		;aee7
	add hl,hl		;aee8
	ld de,laf37h		;aee9
	add hl,de		;aeec
	ld e,(hl)		;aeed
	inc hl			;aeee
laeefh:
	ld d,(hl)		;aeef
	inc hl			;aef0
	ld a,(hl)		;aef1
	inc hl			;aef2
	ld h,(hl)		;aef3
	ld l,a			;aef4
	ex de,hl		;aef5
	jp 06c6dh		;aef6
sub_aef9h:
	ld a,(ix+008h)		;aef9
	cp 014h			;aefc
	ret c			;aefe
	ld (ix+016h),000h	;aeff
	ld (ix+004h),001h	;af03
	ld a,(ix+008h)		;af07
	dec a			;af0a
	dec a			;af0b
	ld (ix+008h),a		;af0c
	ld hl,00000h		;af0f
	ld de,00000h		;af12
	jp 06c6dh		;af15
sub_af18h:
	ld l,(ix+023h)		;af18
	ld h,000h		;af1b
	add hl,hl		;af1d
	ld de,laf53h		;af1e
	add hl,de		;af21
	ld a,(hl)		;af22
	inc a			;af23
	jr nz,laf2ah		;af24
	ld (ix+023h),a		;af26
	ex de,hl		;af29
laf2ah:
	inc (ix+023h)		;af2a
	ld a,(hl)		;af2d
	ld (ix+021h),a		;af2e
	inc hl			;af31
	ld a,(hl)		;af32
	ld (ix+022h),a		;af33
	ret			;af36
laf37h:
	nop			;af37
	nop			;af38
	nop			;af39
	nop			;af3a
	nop			;af3b
	nop			;af3c
	ret nz			;af3d
	rst 38h			;af3e
	nop			;af3f
	nop			;af40
	ld b,b			;af41
	nop			;af42
	ld h,b			;af43
	nop			;af44
	nop			;af45
	nop			;af46
	and b			;af47
	rst 38h			;af48
	nop			;af49
	nop			;af4a
	ld b,b			;af4b
	nop			;af4c
	ret nz			;af4d
	rst 38h			;af4e
	ret nz			;af4f
	rst 38h			;af50
	ret nz			;af51
	rst 38h			;af52
laf53h:
	inc bc			;af53
	djnz laf5ah		;af54
	jr nz,$+5		;af56
	jr nz,laf5eh		;af58
laf5ah:
	jr nz,$+7		;af5a
	jr nc,laf60h		;af5c
laf5eh:
	jr nc,sub_af66h		;af5e
laf60h:
	jr nc,laf64h		;af60
	jr nc,$+5		;af62
laf64h:
	djnz $+1		;af64
sub_af66h:
	ld a,(ix+024h)		;af66
	dec (ix+024h)		;af69
	and a			;af6c
	ret nz			;af6d
	ld a,(ix+025h)		;af6e
	ld l,a			;af71
	ld h,000h		;af72
	inc a			;af74
	cp 004h			;af75
	jr nz,laf7ah		;af77
	xor a			;af79
laf7ah:
	ld (ix+025h),a		;af7a
	add hl,hl		;af7d
	ld de,lb02ch		;af7e
	add hl,de		;af81
	ld a,(hl)		;af82
	ld (ix+026h),a		;af83
	inc hl			;af86
	ld a,(hl)		;af87
	ld (ix+024h),a		;af88
	ret			;af8b
sub_af8ch:
	ld a,(0ca02h)		;af8c
	and 003h		;af8f
	ret nz			;af91
sub_af92h:
	ld a,(ix+027h)		;af92
	ld l,a			;af95
	ld h,000h		;af96
	inc a			;af98
	cp 004h			;af99
	jr nz,laf9eh		;af9b
	xor a			;af9d
laf9eh:
	ld (ix+027h),a		;af9e
	ld de,lb034h		;afa1
	add hl,de		;afa4
	ld a,(hl)		;afa5
	ld (ix+028h),a		;afa6
	ret			;afa9
sub_afaah:
	ld a,(0ca02h)		;afaa
	rrca			;afad
	ret c			;afae
	inc (ix+029h)		;afaf
	ret			;afb2
sub_afb3h:
	ld a,(ix+02ah)		;afb3
	inc (ix+02ah)		;afb6
	and 003h		;afb9
	ret nz			;afbb
	ld a,(ix+02bh)		;afbc
	ld l,a			;afbf
	ld h,000h		;afc0
	inc a			;afc2
	cp 004h			;afc3
	jr nz,lafc8h		;afc5
	xor a			;afc7
lafc8h:
	ld (ix+02bh),a		;afc8
	ld de,lb038h		;afcb
	add hl,de		;afce
	ld a,(hl)		;afcf
	ld (ix+02ch),a		;afd0
	ret			;afd3
sub_afd4h:
	ld a,(ix+026h)		;afd4
	call 07a43h		;afd7
	ld a,(ix+028h)		;afda
	call 07a43h		;afdd
	ld a,(ix+02ch)		;afe0
	and a			;afe3
	jr z,lafe9h		;afe4
	call 07a43h		;afe6
lafe9h:
	ld a,(ix+029h)		;afe9
	rrca			;afec
	jr c,laff8h		;afed
	ld a,006h		;afef
	call 07a43h		;aff1
	ld a,008h		;aff4
	jr lafffh		;aff6
laff8h:
	ld a,007h		;aff8
	call 07a43h		;affa
	ld a,009h		;affd
lafffh:
	jp 07a43h		;afff
sub_b002h:
	ld l,(ix+00fh)		;b002
	inc (ix+00fh)		;b005
	ld h,000h		;b008
	add hl,hl		;b00a
	ld de,lb025h		;b00b
	add hl,de		;b00e
	ld a,(hl)		;b00f
	inc a			;b010
	jr nz,lb017h		;b011
	ld (ix+00fh),a		;b013
	ex de,hl		;b016
lb017h:
	ld a,(hl)		;b017
	ld (ix+010h),a		;b018
	inc hl			;b01b
	ld a,(hl)		;b01c
	ld (ix+011h),a		;b01d
	ld (ix+017h),020h	;b020
	ret			;b024
lb025h:
	ex af,af'		;b025
	jr lb032h		;b026
	jr z,lb036h		;b028
	ld c,b			;b02a
	rst 38h			;b02b
lb02ch:
	ld a,(bc)		;b02c
	inc b			;b02d
	dec bc			;b02e
	ld (bc),a		;b02f
	inc c			;b030
	ld (bc),a		;b031
lb032h:
	dec bc			;b032
	ld (bc),a		;b033
lb034h:
	inc bc			;b034
	inc b			;b035
lb036h:
	dec b			;b036
	inc b			;b037
lb038h:
	nop			;b038
	dec c			;b039
	ld c,00dh		;b03a
lb03ch:
	ld a,0b0h		;b03c
	djnz lb040h		;b03e
lb040h:
	nop			;b040
	ld bc,0fe02h		;b041
	ei			;b044
	ld sp,hl		;b045
	ld bc,0fe00h		;b046
	ex af,af'		;b049
	ld sp,hl		;b04a
	ld bc,0ff01h		;b04b
lb04eh:
	ld a,058h		;b04e
	call 0684ch		;b050
	ret c			;b053
	ld bc,0fbfdh		;b054
	ld a,(0ca02h)		;b057
	rrca			;b05a
	jr c,lb063h		;b05b
	ld bc,0fb09h		;b05d
	inc (iy+020h)		;b060
lb063h:
	jp 06929h		;b063
	ld a,(ix+001h)		;b066
	dec a			;b069
	jr z,lb0b6h		;b06a
	dec a			;b06c
	jr z,lb0c0h		;b06d
	ld a,00ah		;b06f
	ld (0ca26h),a		;b071
	call 04678h		;b074
	and 03fh		;b077
	ld b,a			;b079
	ld a,(ix+020h)		;b07a
	and a			;b07d
	ld a,080h		;b07e
	jr z,lb084h		;b080
	ld a,040h		;b082
lb084h:
	add a,b			;b084
	call 09de8h		;b085
	call 07240h		;b088
	sra h			;b08b
	rr l			;b08d
	sra h			;b08f
	rr l			;b091
	sra h			;b093
	rr l			;b095
	ld (ix+00fh),l		;b097
	ld (ix+010h),h		;b09a
	sra d			;b09d
	rr e			;b09f
	sra d			;b0a1
	rr e			;b0a3
	sra d			;b0a5
	rr e			;b0a7
	ld (ix+011h),e		;b0a9
	ld (ix+012h),d		;b0ac
	ld (ix+017h),009h	;b0af
	jp 06c1dh		;b0b3
lb0b6h:
	call 06a9ah		;b0b6
	call 06ad2h		;b0b9
	ret nz			;b0bc
	jp 06c1dh		;b0bd
lb0c0h:
	ret			;b0c0
	ret			;b0c1
sub_b0c2h:
	call sub_b4c1h		;b0c2
	ld de,lb455h		;b0c5
	call 07b65h		;b0c8
	ret			;b0cb
	ld a,(ix+001h)		;b0cc
	cp 006h			;b0cf
	jp nc,04ae0h		;b0d1
	call 0461ah		;b0d4
	and 0b0h		;b0d7
	ei			;b0d9
	or b			;b0da
	rrca			;b0db
	or c			;b0dc
	dec hl			;b0dd
	or c			;b0de
	ld b,c			;b0df
	or c			;b0e0
	ld h,h			;b0e1
	or c			;b0e2
	call 06c4bh		;b0e3
	call 06754h		;b0e6
	ld (ix+006h),000h	;b0e9
	ld (ix+008h),006h	;b0ed
	ld (ix+00ah),01fh	;b0f1
	call 069d7h		;b0f5
	call 06c1dh		;b0f8
	ld b,008h		;b0fb
lb0fdh:
	push bc			;b0fd
	call sub_b39dh		;b0fe
	jr c,lb10bh		;b101
	pop bc			;b103
	djnz lb0fdh		;b104
	call 06c1dh		;b106
	jr lb10fh		;b109
lb10bh:
	pop bc			;b10b
	call 06c1dh		;b10c
lb10fh:
	ld b,008h		;b10f
lb111h:
	push bc			;b111
	call 0688bh		;b112
	jr c,lb125h		;b115
	call 06886h		;b117
	push ix			;b11a
	push iy			;b11c
	pop ix			;b11e
	call 06c21h		;b120
	pop ix			;b123
lb125h:
	pop bc			;b125
	djnz lb111h		;b126
	jp 06c1dh		;b128
	call sub_b0c2h		;b12b
	ld a,(ix+037h)		;b12e
	or a			;b131
	ret nz			;b132
	inc (ix+001h)		;b133
	ld hl,lb4a3h		;b136
	call 04ce0h		;b139
	ld (ix+017h),010h	;b13c
	ret			;b140
	call sub_b0c2h		;b141
	dec (ix+017h)		;b144
	ret nz			;b147
	set 7,(ix+014h)		;b148
	inc (ix+001h)		;b14c
	ld (ix+003h),00ah	;b14f
	ld (ix+018h),032h	;b153
	set 4,(ix+015h)		;b157
	call 04e73h		;b15b
	ld hl,lb366h		;b15e
	jp lb2edh		;b161
	call 06a13h		;b164
	call sub_b290h		;b167
	call sub_b170h		;b16a
	jp sub_b0c2h		;b16d
sub_b170h:
	dec (ix+018h)		;b170
	jr z,lb17eh		;b173
	dec (ix+018h)		;b175
	jr z,lb17eh		;b178
	dec (ix+018h)		;b17a
	ret nz			;b17d
lb17eh:
	ld a,(ix+003h)		;b17e
	res 7,a			;b181
	ld (ix+018h),a		;b183
	ld a,(ix+002h)		;b186
	push af			;b189
	call sub_b1b4h		;b18a
	pop af			;b18d
	inc a			;b18e
	cp 008h			;b18f
	jr c,lb194h		;b191
	xor a			;b193
lb194h:
	ld (ix+002h),a		;b194
	ld a,(ix+003h)		;b197
	bit 7,a			;b19a
	jr z,lb1aah		;b19c
	inc a			;b19e
	ld (ix+003h),a		;b19f
	cp 088h			;b1a2
	ret c			;b1a4
	ld (ix+003h),007h	;b1a5
	ret			;b1a9
lb1aah:
	dec a			;b1aa
	ld (ix+003h),a		;b1ab
	ret nz			;b1ae
	ld (ix+003h),082h	;b1af
	ret			;b1b3
sub_b1b4h:
	push ix			;b1b4
	push ix			;b1b6
	ld a,05ch		;b1b8
	call 069a3h		;b1ba
	pop iy			;b1bd
	call nc,sub_b1e4h	;b1bf
	pop ix			;b1c2
	ld a,(ix+018h)		;b1c4
	and 07fh		;b1c7
	cp 005h			;b1c9
	ld a,02dh		;b1cb
	jp nc,04af5h		;b1cd
	bit 0,(ix+002h)		;b1d0
	ret nz			;b1d4
	jp 04af5h		;b1d5
sub_b1d8h:
	ld a,(de)		;b1d8
	inc de			;b1d9
	ld l,a			;b1da
	rlca			;b1db
	sbc a,a			;b1dc
	ld h,a			;b1dd
	add hl,hl		;b1de
	add hl,hl		;b1df
	add hl,hl		;b1e0
	add hl,hl		;b1e1
	add hl,hl		;b1e2
	ret			;b1e3
sub_b1e4h:
	ld a,(iy+002h)		;b1e4
	ld (ix+003h),a		;b1e7
	add a,a			;b1ea
	add a,a			;b1eb
	ld e,a			;b1ec
	ld d,000h		;b1ed
	ld hl,lb248h		;b1ef
	add hl,de		;b1f2
	ex de,hl		;b1f3
	call sub_b1d8h		;b1f4
	ld b,(iy+008h)		;b1f7
	ld c,(iy+007h)		;b1fa
	add hl,bc		;b1fd
	ld (ix+008h),h		;b1fe
	ld (ix+007h),l		;b201
	call sub_b1d8h		;b204
	ld b,(iy+00ah)		;b207
	ld c,(iy+009h)		;b20a
	add hl,bc		;b20d
	ld (ix+00ah),h		;b20e
	ld (ix+009h),l		;b211
	call sub_b1d8h		;b214
	ld b,(iy+00eh)		;b217
	ld c,(iy+00dh)		;b21a
	sra b			;b21d
	rr c			;b21f
	add hl,bc		;b221
	ld (ix+00eh),h		;b222
	ld (ix+00dh),l		;b225
	call sub_b1d8h		;b228
	ld b,(iy+00ch)		;b22b
	ld c,(iy+00bh)		;b22e
	sra b			;b231
	rr c			;b233
	add hl,bc		;b235
	ld (ix+00ch),h		;b236
	ld (ix+00bh),l		;b239
	ld a,000h		;b23c
	call sub_b268h		;b23e
	ld (ix+006h),a		;b241
	ld (ix+005h),a		;b244
	ret			;b247
lb248h:
	ret m			;b248
	ret m			;b249
	jp m,0f8fah		;b24a
	jr nz,lb24fh		;b24d
lb24fh:
	ret m			;b24f
	ret m			;b250
	ld b,b			;b251
	ld b,0fah		;b252
	jr nz,$+74		;b254
	ex af,af'		;b256
	nop			;b257
	ld b,b			;b258
	ld b,b			;b259
	ld b,006h		;b25a
	ld c,b			;b25c
	jr nz,lb25fh		;b25d
lb25fh:
	ex af,af'		;b25f
	ld b,b			;b260
	ret m			;b261
	jp m,02006h		;b262
	ret p			;b265
	ret m			;b266
	nop			;b267
sub_b268h:
	ld b,a			;b268
	ld a,(ix+003h)		;b269
	ld c,a			;b26c
	add a,a			;b26d
	add a,c			;b26e
	add a,b			;b26f
	ld hl,lb278h		;b270
	call 04600h		;b273
	ld a,(hl)		;b276
	ret			;b277
lb278h:
	ld b,007h		;b278
	ex af,af'		;b27a
	nop			;b27b
	ld bc,00302h		;b27c
	inc b			;b27f
	dec b			;b280
	add hl,bc		;b281
	ld a,(bc)		;b282
	dec bc			;b283
	ex af,af'		;b284
	rlca			;b285
	ld b,002h		;b286
	ld bc,00500h		;b288
	inc b			;b28b
	inc bc			;b28c
	dec bc			;b28d
	ld a,(bc)		;b28e
	add hl,bc		;b28f
sub_b290h:
	call 06c7dh		;b290
	ld h,(ix+010h)		;b293
	ld l,(ix+00fh)		;b296
	ld d,(ix+012h)		;b299
	ld e,(ix+011h)		;b29c
	call 06d4fh		;b29f
	call sub_b2f2h		;b2a2
	jp c,lb329h		;b2a5
lb2a8h:
	call sub_b335h		;b2a8
lb2abh:
	push af			;b2ab
	ld (ix+024h),d		;b2ac
	ld (ix+023h),e		;b2af
	push de			;b2b2
	ld h,(ix+008h)		;b2b3
	ld l,(ix+007h)		;b2b6
	call sub_b2d9h		;b2b9
	ld e,h			;b2bc
	ld h,(ix+00ah)		;b2bd
	ld l,(ix+009h)		;b2c0
	call sub_b2d9h		;b2c3
	ld d,h			;b2c6
	pop bc			;b2c7
	pop af			;b2c8
	call 06b63h		;b2c9
	ld (ix+010h),h		;b2cc
	ld (ix+00fh),l		;b2cf
	ld (ix+012h),d		;b2d2
	ld (ix+011h),e		;b2d5
	ret			;b2d8
sub_b2d9h:
	bit 7,h			;b2d9
	jr z,lb2e1h		;b2db
	ld hl,00000h		;b2dd
	ret			;b2e0
lb2e1h:
	add hl,hl		;b2e1
	jr c,lb2e9h		;b2e2
	add hl,hl		;b2e4
	jr c,lb2e9h		;b2e5
	add hl,hl		;b2e7
	ret nc			;b2e8
lb2e9h:
	ld hl,000ffh		;b2e9
	ret			;b2ec
lb2edh:
	call sub_b34eh		;b2ed
	jr lb2a8h		;b2f0
sub_b2f2h:
	ld l,(ix+024h)		;b2f2
	ld h,000h		;b2f5
	add hl,hl		;b2f7
	add hl,hl		;b2f8
	add hl,hl		;b2f9
	add hl,hl		;b2fa
	add hl,hl		;b2fb
	ld d,(ix+00ah)		;b2fc
	ld e,(ix+009h)		;b2ff
	sbc hl,de		;b302
	bit 7,h			;b304
	call nz,04612h		;b306
	push hl			;b309
	ld l,(ix+023h)		;b30a
	ld h,000h		;b30d
	add hl,hl		;b30f
	add hl,hl		;b310
	add hl,hl		;b311
	add hl,hl		;b312
	add hl,hl		;b313
	ld d,(ix+008h)		;b314
	ld e,(ix+007h)		;b317
	sbc hl,de		;b31a
	bit 7,h			;b31c
	call nz,04612h		;b31e
	pop de			;b321
	add hl,de		;b322
	ld de,00400h		;b323
	sbc hl,de		;b326
	ret			;b328
lb329h:
	call sub_b32fh		;b329
	jp lb2abh		;b32c
sub_b32fh:
	call sub_b335h		;b32f
	call sub_b34eh		;b332
sub_b335h:
	ld h,(ix+021h)		;b335
	ld l,(ix+022h)		;b338
	ld a,(hl)		;b33b
	inc hl			;b33c
	bit 7,a			;b33d
	jr nz,lb346h		;b33f
sub_b341h:
	ld e,(hl)		;b341
	inc hl			;b342
	ld d,(hl)		;b343
	inc hl			;b344
	ret			;b345
lb346h:
	call sub_b355h		;b346
	call sub_b34eh		;b349
	jr sub_b335h		;b34c
sub_b34eh:
	ld (ix+021h),h		;b34e
	ld (ix+022h),l		;b351
	ret			;b354
sub_b355h:
	inc a			;b355
	jr z,lb361h		;b356
	call sub_b341h		;b358
	push hl			;b35b
	call sub_b4b6h		;b35c
	pop hl			;b35f
	ret			;b360
lb361h:
	call sub_b341h		;b361
	ex de,hl		;b364
	ret			;b365
lb366h:
	cp 0f4h			;b366
	or h			;b368
	inc b			;b369
	jr c,$+98		;b36a
	ex af,af'		;b36c
	jr nz,$-70		;b36d
	inc c			;b36f
	ld l,b			;b370
	cp b			;b371
	djnz $+106		;b372
	jr lb38ah		;b374
	jr nz,lb390h		;b376
	ex af,af'		;b378
	ex af,af'		;b379
	cp b			;b37a
	ex af,af'		;b37b
	ld h,b			;b37c
	cp b			;b37d
	ex af,af'		;b37e
	ld h,b			;b37f
	ex af,af'		;b380
	ex af,af'		;b381
	ex af,af'		;b382
	ex af,af'		;b383
	ex af,af'		;b384
	ex af,af'		;b385
	cp b			;b386
	ex af,af'		;b387
	ld h,b			;b388
	ex af,af'		;b389
lb38ah:
	ex af,af'		;b38a
	ex af,af'		;b38b
	ex af,af'		;b38c
	ex af,af'		;b38d
	ld h,b			;b38e
	cp b			;b38f
lb390h:
	ex af,af'		;b390
	ld h,b			;b391
	ex af,af'		;b392
	ex af,af'		;b393
	ex af,af'		;b394
	ex af,af'		;b395
	rst 38h			;b396
	ld a,b			;b397
	or e			;b398
sub_b399h:
	call sub_b3a0h		;b399
	ret			;b39c
sub_b39dh:
	ld a,008h		;b39d
	sub b			;b39f
sub_b3a0h:
	ld l,a			;b3a0
	ld h,000h		;b3a1
	add hl,hl		;b3a3
	ld e,l			;b3a4
	ld d,h			;b3a5
	add hl,hl		;b3a6
	add hl,de		;b3a7
	ld de,lb3dbh		;b3a8
	add hl,de		;b3ab
	push hl			;b3ac
	call 067feh		;b3ad
	pop hl			;b3b0
	ret c			;b3b1
	ld b,(hl)		;b3b2
	inc hl			;b3b3
	ld c,(hl)		;b3b4
	inc hl			;b3b5
	push hl			;b3b6
	call 06929h		;b3b7
	pop hl			;b3ba
	ld b,(hl)		;b3bb
	inc hl			;b3bc
	ld c,(hl)		;b3bd
	inc hl			;b3be
	ld (iy+006h),c		;b3bf
	ld (iy+005h),b		;b3c2
	ld b,(hl)		;b3c5
	inc hl			;b3c6
	ld c,(hl)		;b3c7
	ld (iy+013h),b		;b3c8
	set 7,c			;b3cb
	ld (iy+014h),c		;b3cd
	ld a,(ix+009h)		;b3d0
	ld (iy+009h),a		;b3d3
	call 0699eh		;b3d6
	or a			;b3d9
	ret			;b3da
lb3dbh:
	call m,00003h		;b3db
	add hl,bc		;b3de
	ld bc,00a01h		;b3df
	inc bc			;b3e2
	ld bc,00108h		;b3e3
	ld bc,0fa00h		;b3e6
	ld (bc),a		;b3e9
	dec bc			;b3ea
	add hl,bc		;b3eb
	inc bc			;b3ec
	inc b			;b3ed
	jp m,00702h		;b3ee
	ex af,af'		;b3f1
	inc bc			;b3f2
	ex af,af'		;b3f3
	jp m,00c02h		;b3f4
	add hl,bc		;b3f7
	inc bc			;b3f8
	nop			;b3f9
	rlca			;b3fa
	ld (bc),a		;b3fb
	ld c,009h		;b3fc
	inc bc			;b3fe
	inc b			;b3ff
	add hl,bc		;b400
	ld (bc),a		;b401
	ld b,008h		;b402
	inc bc			;b404
	ex af,af'		;b405
	rlca			;b406
	ld (bc),a		;b407
	rrca			;b408
	add hl,bc		;b409
	inc bc			;b40a
	nop			;b40b
	inc b			;b40c
	ld (bc),a		;b40d
	dec c			;b40e
	ld a,(bc)		;b40f
	ld (bc),a		;b410
	nop			;b411
	rst 30h			;b412
	ld (bc),a		;b413
	ld a,(bc)		;b414
	ld a,(bc)		;b415
	ld (bc),a		;b416
	inc bc			;b417
	inc b			;b418
	ld (bc),a		;b419
	dec c			;b41a
	ld a,(bc)		;b41b
	ld (bc),a		;b41c
	inc bc			;b41d
	rst 30h			;b41e
	ld (bc),a		;b41f
	ld a,(bc)		;b420
	ld a,(bc)		;b421
	ld (bc),a		;b422
	ld a,(ix+001h)		;b423
	dec a			;b426
	jr z,lb43fh		;b427
	ret p			;b429
	ld (ix+001h),002h	;b42a
	ld a,(ix+005h)		;b42e
	cp 002h			;b431
	ret nc			;b433
	dec (ix+001h)		;b434
	call sub_b447h		;b437
	res 4,(ix+015h)		;b43a
	ret			;b43e
lb43fh:
	ld a,(ix+037h)		;b43f
	or a			;b442
	ret nz			;b443
	jp 06e98h		;b444
sub_b447h:
	add a,a			;b447
	add a,008h		;b448
	push af			;b44a
	call sub_b399h		;b44b
	pop bc			;b44e
	ld a,b			;b44f
	inc a			;b450
	call sub_b399h		;b451
	ret			;b454
lb455h:
	ld h,c			;b455
	or h			;b456
	ld l,h			;b457
	or h			;b458
	ld (hl),a		;b459
	or h			;b45a
	add a,d			;b45b
	or h			;b45c
	adc a,l			;b45d
	or h			;b45e
	sbc a,b			;b45f
	or h			;b460
	dec bc			;b461
	nop			;b462
	nop			;b463
	ld bc,0fe00h		;b464
	inc b			;b467
	inc bc			;b468
	ld bc,0ff03h		;b469
	dec bc			;b46c
	nop			;b46d
	nop			;b46e
	ld bc,0fe00h		;b46f
	inc b			;b472
	inc bc			;b473
	ld bc,0ff01h		;b474
	dec bc			;b477
	nop			;b478
	nop			;b479
	ld bc,0fe00h		;b47a
	inc b			;b47d
	inc bc			;b47e
	ld bc,0ff02h		;b47f
	dec bc			;b482
	nop			;b483
	nop			;b484
	ld bc,0fe00h		;b485
	inc b			;b488
	dec b			;b489
	ld bc,0ff04h		;b48a
	dec bc			;b48d
	nop			;b48e
	nop			;b48f
	ld bc,0fe00h		;b490
	inc b			;b493
	inc bc			;b494
	ld bc,0ff05h		;b495
	dec bc			;b498
	nop			;b499
	nop			;b49a
	ld bc,0fe00h		;b49b
	inc b			;b49e
	dec b			;b49f
	ld bc,0ff10h		;b4a0
lb4a3h:
	nop			;b4a3
	nop			;b4a4
	ld h,h			;b4a5
	ld d,010h		;b4a6
	ld hl,03220h		;b4a8
	ld sp,04243h		;b4ab
	ld d,h			;b4ae
	nop			;b4af
	sub b			;b4b0
	nop			;b4b1
	or b			;b4b2
	nop			;b4b3
	ret nz			;b4b4
	rst 38h			;b4b5
sub_b4b6h:
	ld (ix+026h),e		;b4b6
	ld (ix+027h),d		;b4b9
	ld (ix+025h),001h	;b4bc
	ret			;b4c0
sub_b4c1h:
	ld a,(ix+025h)		;b4c1
	or a			;b4c4
	ret z			;b4c5
	dec a			;b4c6
	ld (ix+025h),a		;b4c7
	ret nz			;b4ca
	ld l,(ix+026h)		;b4cb
	ld h,(ix+027h)		;b4ce
	call sub_b4dbh		;b4d1
	ld (ix+026h),l		;b4d4
	ld (ix+027h),h		;b4d7
	ret			;b4da
sub_b4dbh:
	ld a,(hl)		;b4db
	inc hl			;b4dc
	cp 0ffh			;b4dd
	jr z,lb4eeh		;b4df
	ld (ix+025h),a		;b4e1
	ld a,(hl)		;b4e4
	bit 7,a			;b4e5
	jr nz,lb4ech		;b4e7
	ld (ix+006h),a		;b4e9
lb4ech:
	inc hl			;b4ec
	ret			;b4ed
lb4eeh:
	ld e,(hl)		;b4ee
	inc hl			;b4ef
	ld d,(hl)		;b4f0
	ex de,hl		;b4f1
	jr sub_b4dbh		;b4f2
	dec b			;b4f4
	ld bc,00205h		;b4f5
	inc bc			;b4f8
	inc bc			;b4f9
	ex af,af'		;b4fa
	dec b			;b4fb
	inc b			;b4fc
	ld (bc),a		;b4fd
	add hl,de		;b4fe
	inc bc			;b4ff
	dec b			;b500
	inc b			;b501
	dec b			;b502
	inc bc			;b503
	dec b			;b504
	dec b			;b505
	ld (bc),a		;b506
	ld (bc),a		;b507
	ld (bc),a		;b508
	ld bc,00002h		;b509
	ld (bc),a		;b50c
	ld bc,00202h		;b50d
	rst 38h			;b510
	cp 0b4h			;b511
	call 06a13h		;b513
	ld a,(ix+016h)		;b516
	cp 010h			;b519
	call c,sub_b53ah	;b51b
	call sub_b5fdh		;b51e
	ld a,(ix+001h)		;b521
	cp 007h			;b524
	jp nc,04ae0h		;b526
	call 0461ah		;b529
	ld d,l			;b52c
	or l			;b52d
	ld (hl),e		;b52e
	or l			;b52f
	ld a,(hl)		;b530
	or l			;b531
	sbc a,a			;b532
	or l			;b533
	or a			;b534
	or l			;b535
	push bc			;b536
	or l			;b537
	in a,(0b5h)		;b538
sub_b53ah:
	call 07058h		;b53a
	ld (ix+016h),000h	;b53d
	ld (ix+004h),001h	;b541
	ld a,002h		;b545
	ld (0c0d4h),a		;b547
	ret			;b54a
	call 06c4bh		;b54b
	ld bc,00206h		;b54e
	ld (0ce69h),bc		;b551
	call 06754h		;b555
	ld a,(ix+008h)		;b558
	sub 004h		;b55b
	ld (ix+008h),a		;b55d
	ld (ix+00ah),007h	;b560
	ld (ix+018h),01eh	;b564
	call 069d7h		;b568
	ld a,020h		;b56b
	ld (0ce4ah),a		;b56d
	jp 06c1dh		;b570
	dec (ix+018h)		;b573
	ret nz			;b576
	ld (ix+017h),005h	;b577
	jp 06c1dh		;b57b
	dec (ix+017h)		;b57e
	ret nz			;b581
	ld (ix+017h),005h	;b582
	ld a,(ix+022h)		;b586
	push af			;b589
	or a			;b58a
	ld a,02eh		;b58b
	call z,04af5h		;b58d
	pop af			;b590
	inc a			;b591
	ld (ix+022h),a		;b592
	cp 002h			;b595
	ret c			;b597
	ld (ix+017h),005h	;b598
	jp 06c1dh		;b59c
	dec (ix+017h)		;b59f
	ret nz			;b5a2
	call sub_b638h		;b5a3
	ld (ix+017h),014h	;b5a6
	ld a,(ix+021h)		;b5aa
	inc a			;b5ad
	ld (ix+021h),a		;b5ae
	cp 004h			;b5b1
	ret c			;b5b3
	jp 06c1dh		;b5b4
	dec (ix+017h)		;b5b7
	ret nz			;b5ba
	call sub_b638h		;b5bb
	ld (ix+017h),005h	;b5be
	jp 06c1dh		;b5c2
	dec (ix+017h)		;b5c5
	ret nz			;b5c8
	call sub_b638h		;b5c9
	ld (ix+017h),005h	;b5cc
	ld a,(ix+021h)		;b5d0
	dec a			;b5d3
	ld (ix+021h),a		;b5d4
	ret nz			;b5d7
	jp 06c1dh		;b5d8
	dec (ix+017h)		;b5db
	ret nz			;b5de
	ld (ix+017h),005h	;b5df
	ld a,(ix+022h)		;b5e3
	push af			;b5e6
	cp 002h			;b5e7
	ld a,02fh		;b5e9
	call z,04af5h		;b5eb
	pop af			;b5ee
	dec a			;b5ef
	ld (ix+022h),a		;b5f0
	ret nz			;b5f3
	ld (ix+001h),001h	;b5f4
	ld (ix+018h),01eh	;b5f8
	ret			;b5fc
sub_b5fdh:
	call sub_b60ch		;b5fd
	ld a,(ix+022h)		;b600
	ld (ix+006h),a		;b603
	ld de,lb670h		;b606
	jp 07b65h		;b609
sub_b60ch:
	ld a,(ix+021h)		;b60c
	or a			;b60f
	ret z			;b610
	ld b,(ix+008h)		;b611
	push bc			;b614
	neg			;b615
	add a,b			;b617
	inc a			;b618
	ld (ix+008h),a		;b619
	ld a,(ix+005h)		;b61c
	inc a			;b61f
	cp 008h			;b620
	jr c,lb625h		;b622
	xor a			;b624
lb625h:
	ld (ix+005h),a		;b625
	add a,003h		;b628
	ld (ix+006h),a		;b62a
	ld de,lb670h		;b62d
	call 07b65h		;b630
	pop bc			;b633
	ld (ix+008h),b		;b634
	ret			;b637
sub_b638h:
	ld hl,0ce80h		;b638
	ld b,014h		;b63b
lb63dh:
	ld a,(hl)		;b63d
	cp 00dh			;b63e
	ret z			;b640
	ld de,00040h		;b641
	add hl,de		;b644
	djnz lb63dh		;b645
	push ix			;b647
	push ix			;b649
	ld a,00dh		;b64b
	call 069a3h		;b64d
	jr c,lb66bh		;b650
	pop iy			;b652
	ld a,(iy+00ah)		;b654
	add a,008h		;b657
	ld (ix+00ah),a		;b659
	ld a,(iy+008h)		;b65c
	add a,002h		;b65f
	ld (ix+008h),a		;b661
	pop ix			;b664
	ld a,017h		;b666
	jp 04af5h		;b668
lb66bh:
	pop ix			;b66b
	pop ix			;b66d
	ret			;b66f
lb670h:
	add a,(hl)		;b670
	or (hl)			;b671
	adc a,h			;b672
	or (hl)			;b673
	sub d			;b674
	or (hl)			;b675
	sbc a,b			;b676
	or (hl)			;b677
	sbc a,(hl)		;b678
	or (hl)			;b679
	and h			;b67a
	or (hl)			;b67b
	xor d			;b67c
	or (hl)			;b67d
	or b			;b67e
	or (hl)			;b67f
	or (hl)			;b680
	or (hl)			;b681
	cp h			;b682
	or (hl)			;b683
	jp nz,006b6h		;b684
	inc b			;b687
	ld (bc),a		;b688
	ld bc,0ff00h		;b689
	ld b,004h		;b68c
	ld bc,00101h		;b68e
	rst 38h			;b691
	ld b,004h		;b692
	nop			;b694
	ld bc,0ff02h		;b695
	ld b,004h		;b698
	ld b,001h		;b69a
	inc bc			;b69c
	rst 38h			;b69d
	ld b,004h		;b69e
	ld b,001h		;b6a0
	inc b			;b6a2
	rst 38h			;b6a3
	ld b,004h		;b6a4
	ld b,001h		;b6a6
	dec b			;b6a8
	rst 38h			;b6a9
	ld b,004h		;b6aa
	ld b,001h		;b6ac
	ld b,0ffh		;b6ae
	ld b,004h		;b6b0
	ld b,001h		;b6b2
	rlca			;b6b4
	rst 38h			;b6b5
	ld b,004h		;b6b6
	ld b,001h		;b6b8
	ex af,af'		;b6ba
	rst 38h			;b6bb
	ld b,004h		;b6bc
	ld b,001h		;b6be
	add hl,bc		;b6c0
	rst 38h			;b6c1
	ld b,004h		;b6c2
	ld b,001h		;b6c4
	ld a,(bc)		;b6c6
	rst 38h			;b6c7
	ret			;b6c8
	ld a,05eh		;b6c9
	call 0684ch		;b6cb
	ret c			;b6ce
	ld a,(ix+025h)		;b6cf
	and a			;b6d2
	ld bc,0fa07h		;b6d3
	jr z,lb6dbh		;b6d6
	ld bc,0f509h		;b6d8
lb6dbh:
	jp 06929h		;b6db
	ld a,(ix+001h)		;b6de
	dec a			;b6e1
	jr z,lb748h		;b6e2
	dec a			;b6e4
	jr z,lb758h		;b6e5
	ld a,00eh		;b6e7
	ld (0ca26h),a		;b6e9
	call 04678h		;b6ec
	and 03fh		;b6ef
	add a,040h		;b6f1
	call 09de8h		;b6f3
	call 07240h		;b6f6
	call 06bebh		;b6f9
	sra h			;b6fc
	rr l			;b6fe
	sra h			;b700
	rr l			;b702
	sra h			;b704
	rr l			;b706
	call 04612h		;b708
	ld (ix+00fh),l		;b70b
	ld (ix+010h),h		;b70e
	sra d			;b711
	rr e			;b713
	sra d			;b715
	rr e			;b717
	sra d			;b719
	rr e			;b71b
	ex de,hl		;b71d
	call 04612h		;b71e
	ld (ix+011h),l		;b721
	ld (ix+012h),h		;b724
	ld (ix+017h),00ch	;b727
	ld a,(0ca19h)		;b72b
	cp 004h			;b72e
	ld bc,00204h		;b730
	jr c,lb73fh		;b733
	ld bc,00806h		;b735
	cp 008h			;b738
	jr c,lb73fh		;b73a
	ld bc,00e07h		;b73c
lb73fh:
	ld (ix+016h),b		;b73f
	ld (ix+018h),c		;b742
	jp 06c1dh		;b745
lb748h:
	ld a,(0ca02h)		;b748
	and 007h		;b74b
	ret nz			;b74d
	call 06a9ah		;b74e
	call 06ad2h		;b751
	ret nz			;b754
	jp 06c1dh		;b755
lb758h:
	call 06adfh		;b758
	ret nz			;b75b
	ld (ix+018h),002h	;b75c
	inc (ix+005h)		;b760
	ld a,(ix+005h)		;b763
	cp 003h			;b766
	ret nz			;b768
	jp 06e98h		;b769
	ld a,(0ce76h)		;b76c
	or a			;b76f
	jp nz,07cc3h		;b770
	ld a,(ix+001h)		;b773
	cp 002h			;b776
	jp nc,04ae0h		;b778
	call 0461ah		;b77b
	add a,d			;b77e
	or a			;b77f
	rlca			;b780
	cp b			;b781
	call 06796h		;b782
	ld (ix+003h),a		;b785
	ld (ix+016h),0ffh	;b788
	ld (ix+005h),011h	;b78c
	ld hl,0c000h		;b790
	ld (ix+021h),h		;b793
	ld (ix+022h),l		;b796
	ld (ix+008h),017h	;b799
	bit 0,(ix+003h)		;b79d
	ld a,005h		;b7a1
	ld hl,lb9d0h		;b7a3
	jr z,lb7adh		;b7a6
	ld a,019h		;b7a8
	ld hl,lb978h		;b7aa
lb7adh:
	ld (ix+00ah),a		;b7ad
	ld (ix+028h),h		;b7b0
	ld (ix+027h),l		;b7b3
	call sub_b7bch		;b7b6
	jp 06c1dh		;b7b9
sub_b7bch:
	ld b,007h		;b7bc
lb7beh:
	push bc			;b7be
	call sub_b7cah		;b7bf
	jr c,lb7c8h		;b7c2
	pop bc			;b7c4
	djnz lb7beh		;b7c5
	ret			;b7c7
lb7c8h:
	pop bc			;b7c8
	ret			;b7c9
sub_b7cah:
	call 0682ah		;b7ca
	ret c			;b7cd
	ld a,(ix+017h)		;b7ce
	inc a			;b7d1
	ld (ix+017h),a		;b7d2
	ld (iy+005h),011h	;b7d5
	ld (iy+016h),0ffh	;b7d9
	rrca			;b7dd
	jr nc,lb7e7h		;b7de
	set 3,(iy+015h)		;b7e0
	dec (iy+005h)		;b7e4
lb7e7h:
	ld h,(ix+008h)		;b7e7
	ld (iy+008h),h		;b7ea
	ld h,(ix+00ah)		;b7ed
	ld (iy+00ah),h		;b7f0
	ld (iy+001h),001h	;b7f3
	ld (ix+021h),000h	;b7f7
	ld a,(iy+002h)		;b7fb
	inc a			;b7fe
	ld (iy+002h),a		;b7ff
	ld (ix+002h),a		;b802
	or a			;b805
	ret			;b806
	ld a,(ix+016h)		;b807
	or a			;b80a
	jp z,07cc3h		;b80b
	call 068b9h		;b80e
	call sub_b82ch		;b811
	ld a,(ix+036h)		;b814
	or a			;b817
	ret nz			;b818
	ld a,(ix+021h)		;b819
	rrca			;b81c
	rrca			;b81d
	rrca			;b81e
	rrca			;b81f
	add a,004h		;b820
	and 00fh		;b822
	ld (ix+005h),a		;b824
	set 3,(ix+015h)		;b827
	ret			;b82b
sub_b82ch:
	jp c,lb8cbh		;b82c
	call sub_b899h		;b82f
	call sub_b842h		;b832
	ld a,(ix+004h)		;b835
	or a			;b838
	ret z			;b839
	ld (iy+004h),a		;b83a
	ld (ix+004h),000h	;b83d
	ret			;b841
sub_b842h:
	push af			;b842
	call 074edh		;b843
	call sub_b873h		;b846
	pop af			;b849
	push af			;b84a
	push hl			;b84b
	call 074efh		;b84c
	call sub_b873h		;b84f
	ld d,(iy+008h)		;b852
	ld e,(iy+007h)		;b855
	or a			;b858
	add hl,de		;b859
	ld (ix+008h),h		;b85a
	ld (ix+007h),l		;b85d
	ex (sp),hl		;b860
	ld d,(iy+00ah)		;b861
	ld e,(iy+009h)		;b864
	or a			;b867
	add hl,de		;b868
	ld (ix+00ah),h		;b869
	ld (ix+009h),l		;b86c
	ex de,hl		;b86f
	pop hl			;b870
	pop af			;b871
	ret			;b872
sub_b873h:
	bit 7,h			;b873
	jr z,lb880h		;b875
	call 04612h		;b877
	call lb880h		;b87a
	jp 04612h		;b87d
lb880h:
	ld h,000h		;b880
	add hl,hl		;b882
	ld d,h			;b883
	ld e,l			;b884
	add hl,hl		;b885
	add hl,hl		;b886
	add hl,hl		;b887
	or a			;b888
	sbc hl,de		;b889
	add hl,hl		;b88b
	add hl,hl		;b88c
	add hl,hl		;b88d
	add hl,hl		;b88e
	rl l			;b88f
	rl h			;b891
	sbc a,a			;b893
	ld l,h			;b894
	and 001h		;b895
	ld h,a			;b897
	ret			;b898
sub_b899h:
	ld h,(iy+025h)		;b899
	ld l,(iy+026h)		;b89c
	ld d,(iy+023h)		;b89f
	ld e,(iy+024h)		;b8a2
	ld (ix+023h),d		;b8a5
	ld (ix+024h),e		;b8a8
	add hl,de		;b8ab
	ld (ix+025h),h		;b8ac
	ld (ix+026h),l		;b8af
	ld d,(iy+021h)		;b8b2
	ld e,(iy+022h)		;b8b5
	add hl,de		;b8b8
	ld (ix+021h),h		;b8b9
	ld (ix+022h),l		;b8bc
	ld a,h			;b8bf
	ret			;b8c0
sub_b8c1h:
	push hl			;b8c1
	push af			;b8c2
	ld hl,08000h		;b8c3
	add hl,de		;b8c6
	ex de,hl		;b8c7
	pop af			;b8c8
	pop hl			;b8c9
	ret			;b8ca
lb8cbh:
	ld a,(ix+004h)		;b8cb
	or a			;b8ce
	jr nz,lb923h		;b8cf
	ld h,(ix+028h)		;b8d1
	ld l,(ix+027h)		;b8d4
	ld d,(ix+021h)		;b8d7
	ld e,(ix+022h)		;b8da
	call sub_b949h		;b8dd
	ld (ix+021h),d		;b8e0
	ld (ix+022h),e		;b8e3
	push af			;b8e6
	ld d,(ix+025h)		;b8e7
	ld e,(ix+026h)		;b8ea
	call sub_b8c1h		;b8ed
	call sub_b949h		;b8f0
	call sub_b8c1h		;b8f3
	ld (ix+025h),d		;b8f6
	ld (ix+026h),e		;b8f9
	push af			;b8fc
	ld d,(ix+023h)		;b8fd
	ld e,(ix+024h)		;b900
	call sub_b8c1h		;b903
	call sub_b949h		;b906
	call sub_b8c1h		;b909
	ld (ix+023h),d		;b90c
	ld (ix+024h),e		;b90f
	ld c,000h		;b912
	rr c			;b914
	pop af			;b916
	rr c			;b917
	pop af			;b919
	rr c			;b91a
	ld a,c			;b91c
	or a			;b91d
	ret nz			;b91e
	call sub_b928h		;b91f
	ret			;b922
lb923h:
	ld (ix+004h),000h	;b923
	ret			;b927
sub_b928h:
	ld h,(ix+028h)		;b928
	ld l,(ix+027h)		;b92b
	ld de,0000ch		;b92e
	add hl,de		;b931
	ld e,(hl)		;b932
	inc hl			;b933
	ld a,(hl)		;b934
	dec hl			;b935
	and e			;b936
	inc a			;b937
	call z,sub_b942h	;b938
	ld (ix+028h),h		;b93b
	ld (ix+027h),l		;b93e
	ret			;b941
sub_b942h:
	inc hl			;b942
	inc hl			;b943
	ld e,(hl)		;b944
	inc hl			;b945
	ld d,(hl)		;b946
	ex de,hl		;b947
	ret			;b948
sub_b949h:
	ld a,h			;b949
	or l			;b94a
	ret z			;b94b
	ld c,(hl)		;b94c
	inc hl			;b94d
	ld b,(hl)		;b94e
	inc hl			;b94f
	push bc			;b950
	ld c,(hl)		;b951
	inc hl			;b952
	ld b,(hl)		;b953
	inc hl			;b954
	ex (sp),hl		;b955
	call sub_b95bh		;b956
	pop hl			;b959
	ret			;b95a
sub_b95bh:
	call 04650h		;b95b
	ret z			;b95e
	jr c,lb96bh		;b95f
	ex de,hl		;b961
	add hl,bc		;b962
	ex de,hl		;b963
	call 04650h		;b964
	ccf			;b967
	ret c			;b968
	jr lb974h		;b969
lb96bh:
	ex de,hl		;b96b
	or a			;b96c
	sbc hl,bc		;b96d
	ex de,hl		;b96f
	call 04650h		;b970
	ret c			;b973
lb974h:
	ld d,h			;b974
	ld e,l			;b975
	or a			;b976
	ret			;b977
lb978h:
	nop			;b978
	sbc a,b			;b979
	nop			;b97a
	ld b,000h		;b97b
	add a,b			;b97d
	add a,b			;b97e
	ld bc,07800h		;b97f
	add a,b			;b982
	ld bc,0d800h		;b983
	sub b			;b986
	nop			;b987
	nop			;b988
	ld a,e			;b989
	ld e,000h		;b98a
	nop			;b98c
	add a,b			;b98d
	jr lb990h		;b98e
lb990h:
	nop			;b990
	ret pe			;b991
	sub b			;b992
	nop			;b993
	nop			;b994
	add a,b			;b995
	ld e,000h		;b996
	nop			;b998
	adc a,b			;b999
	jr lb99ch		;b99a
lb99ch:
	nop			;b99c
	or b			;b99d
	sub b			;b99e
	nop			;b99f
	nop			;b9a0
	add a,b			;b9a1
	ld e,000h		;b9a2
	nop			;b9a4
	ld a,b			;b9a5
	jr lb9a8h		;b9a6
lb9a8h:
	nop			;b9a8
	or b			;b9a9
	sub b			;b9aa
	nop			;b9ab
	nop			;b9ac
	add a,b			;b9ad
	ld e,000h		;b9ae
	nop			;b9b0
	ld a,(hl)		;b9b1
	jr lb9b4h		;b9b2
lb9b4h:
	nop			;b9b4
	ret c			;b9b5
	sub b			;b9b6
	nop			;b9b7
	nop			;b9b8
	ld a,e			;b9b9
	ld e,000h		;b9ba
	nop			;b9bc
	add a,b			;b9bd
	jr lb9c0h		;b9be
lb9c0h:
	nop			;b9c0
	or b			;b9c1
	sub b			;b9c2
	nop			;b9c3
	nop			;b9c4
	add a,b			;b9c5
	ld e,000h		;b9c6
	nop			;b9c8
	ld a,(hl)		;b9c9
	jr lb9cch		;b9ca
lb9cch:
	rst 38h			;b9cc
	rst 38h			;b9cd
	add a,h			;b9ce
	cp c			;b9cf
lb9d0h:
	nop			;b9d0
	ret pe			;b9d1
	nop			;b9d2
	inc bc			;b9d3
	nop			;b9d4
	add a,b			;b9d5
	add a,b			;b9d6
	ld bc,08800h		;b9d7
	add a,b			;b9da
	ld bc,la800h		;b9db
	sub b			;b9de
	nop			;b9df
	nop			;b9e0
	add a,l			;b9e1
	ld e,000h		;b9e2
	nop			;b9e4
	add a,b			;b9e5
	jr lb9e8h		;b9e6
lb9e8h:
	nop			;b9e8
	sbc a,b			;b9e9
	sub b			;b9ea
	nop			;b9eb
	nop			;b9ec
	add a,b			;b9ed
	ld e,000h		;b9ee
	nop			;b9f0
	ld a,b			;b9f1
	jr lb9f4h		;b9f2
lb9f4h:
	nop			;b9f4
	ret nc			;b9f5
	sub b			;b9f6
	nop			;b9f7
	nop			;b9f8
	add a,b			;b9f9
	ld e,000h		;b9fa
	nop			;b9fc
	adc a,b			;b9fd
	jr lba00h		;b9fe
lba00h:
	nop			;ba00
	ret nc			;ba01
	sub b			;ba02
	nop			;ba03
	nop			;ba04
	add a,b			;ba05
	ld e,000h		;ba06
	nop			;ba08
	add a,d			;ba09
	jr lba0ch		;ba0a
lba0ch:
	nop			;ba0c
	xor b			;ba0d
	ret nz			;ba0e
	nop			;ba0f
	nop			;ba10
	add a,l			;ba11
	jr nc,lba14h		;ba12
lba14h:
	nop			;ba14
	add a,b			;ba15
	jr nc,lba18h		;ba16
lba18h:
	nop			;ba18
	ret nc			;ba19
	sub b			;ba1a
	nop			;ba1b
	nop			;ba1c
	add a,b			;ba1d
	ld e,000h		;ba1e
	nop			;ba20
	add a,d			;ba21
	jr lba24h		;ba22
lba24h:
	rst 38h			;ba24
	rst 38h			;ba25
	call c,0ddb9h		;ba26
	ld a,(hl)		;ba29
	rla			;ba2a
	inc a			;ba2b
	cp 003h			;ba2c
	jr c,lba31h		;ba2e
	xor a			;ba30
lba31h:
	ld (ix+017h),a		;ba31
	call sub_b268h		;ba34
	ld (ix+005h),a		;ba37
	ret			;ba3a
	ld a,(ix+001h)		;ba3b
	dec a			;ba3e
	jr z,lba5dh		;ba3f
	call 06754h		;ba41
	ld a,d			;ba44
	rla			;ba45
	ld c,006h		;ba46
	jr nc,lba52h		;ba48
	inc (ix+020h)		;ba4a
	ld (ix+006h),001h	;ba4d
	inc c			;ba51
lba52h:
	ld (ix+03eh),c		;ba52
	ld a,020h		;ba55
	call 06ae8h		;ba57
	jp 06c1dh		;ba5a
lba5dh:
	call 06adfh		;ba5d
	ret nz			;ba60
	ld b,(ix+008h)		;ba61
	inc b			;ba64
	ld a,(0ca48h)		;ba65
	sub b			;ba68
	jr nc,lba6dh		;ba69
	neg			;ba6b
lba6dh:
	cp 004h			;ba6d
	jr nc,lba81h		;ba6f
	ld b,(ix+00ah)		;ba71
	inc b			;ba74
	inc b			;ba75
	ld a,(0ca4ah)		;ba76
	sub b			;ba79
	jr nc,lba7eh		;ba7a
	neg			;ba7c
lba7eh:
	cp 006h			;ba7e
	ret c			;ba80
lba81h:
	ld a,030h		;ba81
	call 06ae8h		;ba83
	call 06814h		;ba86
	ret c			;ba89
	ld a,(ix+020h)		;ba8a
	ld (iy+020h),a		;ba8d
	ld bc,00201h		;ba90
	and a			;ba93
	jr nz,lba99h		;ba94
	ld bc,002feh		;ba96
lba99h:
	call 06929h		;ba99
	jp 0699eh		;ba9c
	ld a,(ix+001h)		;ba9f
	call 0461ah		;baa2
	xor e			;baa5
	cp d			;baa6
	call pe,01abah		;baa7
	cp e			;baaa
	ld a,(ix+020h)		;baab
	ld c,a			;baae
	ld b,(ix+008h)		;baaf
	ld (ix+022h),b		;bab2
	call sub_bb27h		;bab5
	jr c,lbb24h		;bab8
	ld a,c			;baba
	and a			;babb
	ld hl,0ff60h		;babc
	ld de,00018h		;babf
	jr z,lbacah		;bac2
	ld hl,000a0h		;bac4
	ld de,0ffe8h		;bac7
lbacah:
	call 06bf3h		;baca
	ex de,hl		;bacd
	call 06c0ch		;bace
	ld hl,0ce55h		;bad1
	ld a,(0ca19h)		;bad4
	cp 004h			;bad7
	ld b,002h		;bad9
	jr c,lbadfh		;badb
	ld b,004h		;badd
lbadfh:
	ld a,(hl)		;badf
	inc a			;bae0
	cp b			;bae1
	jr c,lbae8h		;bae2
	xor a			;bae4
	inc (ix+03dh)		;bae5
lbae8h:
	ld (hl),a		;bae8
	jp 06c1dh		;bae9
	ld a,(ix+020h)		;baec
	and a			;baef
	ld l,(ix+00ch)		;baf0
	ld h,(ix+00bh)		;baf3
	jr nz,lbafbh		;baf6
	call 04612h		;baf8
lbafbh:
	ld de,00008h		;bafb
	call 04650h		;bafe
	call c,06a9ah		;bb01
	ld a,(ix+021h)		;bb04
	sub (ix+008h)		;bb07
	jr nc,lbb0eh		;bb0a
	neg			;bb0c
lbb0eh:
	cp 001h			;bb0e
	ret nc			;bb10
	call sub_bb48h		;bb11
	call 06bf0h		;bb14
	jp 06c1dh		;bb17
	call 06a9ah		;bb1a
	ld a,(ix+008h)		;bb1d
	cp (ix+022h)		;bb20
	ret nz			;bb23
lbb24h:
	jp 06e98h		;bb24
sub_bb27h:
	ld a,(0ca48h)		;bb27
	inc a			;bb2a
	ld d,a			;bb2b
	inc b			;bb2c
	sub b			;bb2d
	ld b,a			;bb2e
	ld a,c			;bb2f
	and a			;bb30
	ld a,b			;bb31
	jr nz,lbb36h		;bb32
	neg			;bb34
lbb36h:
	rla			;bb36
	ret c			;bb37
	ld a,004h		;bb38
	cp d			;bb3a
	jr nc,lbb43h		;bb3b
	ld a,010h		;bb3d
	cp d			;bb3f
	jr c,lbb43h		;bb40
	ld a,d			;bb42
lbb43h:
	ld (ix+021h),a		;bb43
	or a			;bb46
	ret			;bb47
sub_bb48h:
	ld a,(0ca4ah)		;bb48
	sub (ix+00ah)		;bb4b
	ld e,a			;bb4e
	jr nc,lbb53h		;bb4f
	neg			;bb51
lbb53h:
	cp 006h			;bb53
	ret c			;bb55
	ld a,(ix+00ah)		;bb56
	and a			;bb59
	ret m			;bb5a
	ld a,e			;bb5b
	and a			;bb5c
	ld bc,00000h		;bb5d
	jp m,lbb66h		;bb60
	ld bc,00400h		;bb63
lbb66h:
	jp 09cadh		;bb66
	ld a,(ix+001h)		;bb69
	dec a			;bb6c
	jr z,lbba8h		;bb6d
	dec a			;bb6f
	jr z,lbbc0h		;bb70
	dec a			;bb72
	jr z,lbbc5h		;bb73
	call 06796h		;bb75
	ld d,a			;bb78
	and 03fh		;bb79
	ld (ix+008h),a		;bb7b
	ld a,d			;bb7e
	rlca			;bb7f
	jr nc,lbb85h		;bb80
	inc (ix+020h)		;bb82
lbb85h:
	ld de,0ff80h		;bb85
	ld b,01eh		;bb88
	ld a,(0ca04h)		;bb8a
	and a			;bb8d
	jr z,lbb9ch		;bb8e
	ld de,00080h		;bb90
	ld b,000h		;bb93
	inc (ix+023h)		;bb95
	ld (ix+016h),040h	;bb98
lbb9ch:
	ld (ix+00ah),b		;bb9c
	call 06bfdh		;bb9f
	inc (ix+017h)		;bba2
	jp 06c1dh		;bba5
lbba8h:
	call sub_bc01h		;bba8
	ld a,(ix+00ah)		;bbab
	sub 01ah		;bbae
	jr nc,lbbb4h		;bbb0
	neg			;bbb2
lbbb4h:
	cp 001h			;bbb4
	ret nc			;bbb6
	call 06bfah		;bbb7
	call sub_bbf1h		;bbba
	jp 06c1dh		;bbbd
lbbc0h:
	call sub_bbc6h		;bbc0
	jr lbc0bh		;bbc3
lbbc5h:
	ret			;bbc5
sub_bbc6h:
	ld a,(ix+008h)		;bbc6
	cp 002h			;bbc9
	jr c,lbbd0h		;bbcb
	cp 00fh			;bbcd
	ret c			;bbcf
lbbd0h:
	ld a,001h		;bbd0
	xor (ix+020h)		;bbd2
	ld (ix+020h),a		;bbd5
	call sub_bbf1h		;bbd8
	ld a,(ix+021h)		;bbdb
	inc a			;bbde
	ld (ix+021h),a		;bbdf
	cp 003h			;bbe2
	ret c			;bbe4
	call 06bf0h		;bbe5
	ld de,0ff60h		;bbe8
	call 06bfdh		;bbeb
	jp 06c1dh		;bbee
sub_bbf1h:
	ld a,(ix+020h)		;bbf1
	and a			;bbf4
	ld hl,00040h		;bbf5
	jr nz,lbbfdh		;bbf8
	ld hl,0ffc0h		;bbfa
lbbfdh:
	call 06bf3h		;bbfd
	ret			;bc00
sub_bc01h:
	call 06ad2h		;bc01
	ret nz			;bc04
	ld (ix+017h),008h	;bc05
	jr lbc20h		;bc09
lbc0bh:
	call 06ad2h		;bc0b
	ret nz			;bc0e
	call 0755dh		;bc0f
	ld a,e			;bc12
	bit 7,a			;bc13
	jr z,lbc19h		;bc15
	neg			;bc17
lbc19h:
	cp 002h			;bc19
	ret nc			;bc1b
	ld (ix+017h),028h	;bc1c
lbc20h:
	ld bc,001ffh		;bc20
	call sub_bc2fh		;bc23
	ld bc,00002h		;bc26
	call sub_bc2fh		;bc29
	ld bc,00105h		;bc2c
sub_bc2fh:
	push bc			;bc2f
	ld bc,00000h		;bc30
	call 09cb5h		;bc33
	pop bc			;bc36
	jp 0737ch		;bc37
	call sub_bc4dh		;bc3a
	call 07c44h		;bc3d
	jp c,07cc3h		;bc40
	ld a,(ix+00ah)		;bc43
	add a,008h		;bc46
	and a			;bc48
	ret p			;bc49
	jp 06e98h		;bc4a
sub_bc4dh:
	ld a,(ix+001h)		;bc4d
	and a			;bc50
	jr nz,lbc64h		;bc51
	call 06754h		;bc53
	ld (ix+03eh),009h	;bc56
	ld (ix+005h),001h	;bc5a
	call sub_bcaah		;bc5e
	jp 06c1dh		;bc61
lbc64h:
	ld a,(ix+00ah)		;bc64
	and a			;bc67
	ret m			;bc68
	cp 01ch			;bc69
	ret nc			;bc6b
	ld a,(ix+008h)		;bc6c
	cp 018h			;bc6f
	ret nc			;bc71
	ld a,(ix+024h)		;bc72
	and a			;bc75
	call z,sub_bcc0h	;bc76
	call 06ad2h		;bc79
	ret nz			;bc7c
	call 06adfh		;bc7d
	ret nz			;bc80
	ld (ix+018h),004h	;bc81
	ld a,(ix+024h)		;bc85
	inc (ix+024h)		;bc88
	cp 003h			;bc8b
	jr z,sub_bcaah		;bc8d
	cp 001h			;bc8f
	ret z			;bc91
	ld b,(ix+005h)		;bc92
	call 09cc0h		;bc95
	ex de,hl		;bc98
	ld l,(ix+005h)		;bc99
	ld h,000h		;bc9c
	add hl,hl		;bc9e
	ld bc,lbcb6h		;bc9f
	add hl,bc		;bca2
	ld c,(hl)		;bca3
	inc hl			;bca4
	ld b,(hl)		;bca5
	ex de,hl		;bca6
	jp 0737ch		;bca7
sub_bcaah:
	ld (ix+024h),000h	;bcaa
	ld (ix+017h),020h	;bcae
	inc (ix+018h)		;bcb2
	ret			;bcb5
lbcb6h:
	ld (bc),a		;bcb6
	nop			;bcb7
	ld bc,00001h		;bcb8
	ld (bc),a		;bcbb
	ld bc,00204h		;bcbc
	dec b			;bcbf
sub_bcc0h:
	ld iy,0ca40h		;bcc0
	call 06b85h		;bcc4
	call 09da9h		;bcc7
	rrca			;bcca
	rrca			;bccb
	rrca			;bccc
	rrca			;bccd
	and 00fh		;bcce
	ld l,a			;bcd0
	ld h,000h		;bcd1
	ld de,lbcdch		;bcd3
	add hl,de		;bcd6
	ld a,(hl)		;bcd7
	ld (ix+005h),a		;bcd8
	ret			;bcdb
lbcdch:
	inc b			;bcdc
	inc bc			;bcdd
	inc bc			;bcde
	ld (bc),a		;bcdf
	ld (bc),a		;bce0
	ld bc,00001h		;bce1
	nop			;bce4
	ld bc,00201h		;bce5
	ld (bc),a		;bce8
	inc bc			;bce9
	inc bc			;bcea
	inc b			;bceb
	call 082cah		;bcec
	call 07c44h		;bcef
	jp c,07cc3h		;bcf2
	ld a,(ix+00ah)		;bcf5
	inc a			;bcf8
	and a			;bcf9
	ret p			;bcfa
	jp 06e98h		;bcfb
	call 06754h		;bcfe
	ld hl,0ce53h		;bd01
	inc (hl)		;bd04
	ld a,(hl)		;bd05
	rrca			;bd06
	jr nc,lbd0ch		;bd07
	inc (ix+03dh)		;bd09
lbd0ch:
	jp 06c1dh		;bd0c
	ld a,(ix+001h)		;bd0f
	dec a			;bd12
	jr z,lbd22h		;bd13
	dec a			;bd15
	jr z,lbd47h		;bd16
	call 06754h		;bd18
	ld (ix+03eh),00bh	;bd1b
	jp 06c1dh		;bd1f
lbd22h:
	ld l,(ix+020h)		;bd22
	ld h,000h		;bd25
	add hl,hl		;bd27
	ld de,lbd6bh		;bd28
	add hl,de		;bd2b
	ld a,(hl)		;bd2c
	and a			;bd2d
	ret z			;bd2e
	cp (ix+00ah)		;bd2f
	ret c			;bd32
	inc (ix+020h)		;bd33
	inc hl			;bd36
	ld a,(0ca19h)		;bd37
	cp (hl)			;bd3a
	ret c			;bd3b
	ld (ix+018h),006h	;bd3c
	ld (ix+006h),001h	;bd40
	jp 06c1dh		;bd44
lbd47h:
	call 06adfh		;bd47
	ret nz			;bd4a
	ld de,00004h		;bd4b
	ld bc,000ffh		;bd4e
	call 09d1eh		;bd51
	ld de,00007h		;bd54
	ld bc,003ffh		;bd57
	call 09d1eh		;bd5a
	ld a,017h		;bd5d
	call 04af0h		;bd5f
	ld (ix+006h),000h	;bd62
	ld (ix+001h),001h	;bd66
	ret			;bd6a
lbd6bh:
	dec de			;bd6b
	inc bc			;bd6c
	jr lbd6fh		;bd6d
lbd6fh:
	djnz $+7		;bd6f
	inc b			;bd71
	ex af,af'		;bd72
	nop			;bd73
	ld a,(ix+001h)		;bd74
	dec a			;bd77
	jr z,lbd88h		;bd78
	call 04678h		;bd7a
	ld d,018h		;bd7d
	call 0722ah		;bd7f
	call 06bebh		;bd82
	jp 06c1dh		;bd85
lbd88h:
	ld a,(ix+008h)		;bd88
	sub 001h		;bd8b
	cp 014h			;bd8d
	call nc,06b43h		;bd8f
	ld a,(ix+00ah)		;bd92
	cp 01dh			;bd95
	call nc,06b53h		;bd97
	ret			;bd9a
	ld a,(ix+001h)		;bd9b
	and a			;bd9e
	jr nz,lbdadh		;bd9f
	call 06754h		;bda1
	call 06796h		;bda4
	ld (ix+020h),a		;bda7
	jp 06c1dh		;bdaa
lbdadh:
	ld a,(ix+00ah)		;bdad
	add a,011h		;bdb0
	and a			;bdb2
	jp m,06e98h		;bdb3
	ld a,(0ca3bh)		;bdb6
	add a,(ix+00ah)		;bdb9
	and 007h		;bdbc
	ld d,a			;bdbe
	ld a,(0ca1ch)		;bdbf
	add a,(ix+009h)		;bdc2
	jr nc,lbdc8h		;bdc5
	inc d			;bdc7
lbdc8h:
	res 3,d			;bdc8
	ld c,d			;bdca
	ld b,003h		;bdcb
	xor a			;bdcd
lbdceh:
	push af			;bdce
	push bc			;bdcf
	add a,c			;bdd0
	call 07a43h		;bdd1
	pop bc			;bdd4
	pop af			;bdd5
	add a,008h		;bdd6
	djnz lbdceh		;bdd8
	ret			;bdda
	ld a,(ix+001h)		;bddb
	dec a			;bdde
	jr z,lbdf6h		;bddf
	dec a			;bde1
	jr z,lbe36h		;bde2
	dec a			;bde4
	jr z,lbe52h		;bde5
	call 06754h		;bde7
	ld a,d			;bdea
	bit 7,a			;bdeb
	jr z,lbdf3h		;bded
	ld (ix+00ah),000h	;bdef
lbdf3h:
	jp 06c1dh		;bdf3
lbdf6h:
	ld iy,0ca40h		;bdf6
	ld a,008h		;bdfa
	call 06b7fh		;bdfc
	sra h			;bdff
	rr l			;be01
	sra h			;be03
	rr l			;be05
	ld (ix+00bh),l		;be07
	ld (ix+00ch),h		;be0a
	sra h			;be0d
	rr l			;be0f
	ld (ix+00fh),l		;be11
	ld (ix+010h),h		;be14
	sra d			;be17
	rr e			;be19
	sra d			;be1b
	rr e			;be1d
	ld (ix+00dh),e		;be1f
	ld (ix+00eh),d		;be22
	sra d			;be25
	rr e			;be27
	ld (ix+011h),e		;be29
	ld (ix+012h),d		;be2c
	ld (ix+017h),010h	;be2f
	jp 06c1dh		;be33
lbe36h:
	ld (ix+005h),001h	;be36
	call 06ad2h		;be3a
	jr z,lbe42h		;be3d
	jp 06a9ah		;be3f
lbe42h:
	ld hl,00020h		;be42
	ld de,00000h		;be45
	call 06bebh		;be48
	ld (ix+017h),008h	;be4b
	jp 06c1dh		;be4f
lbe52h:
	ld (ix+005h),000h	;be52
	call 06ad2h		;be56
	ret nz			;be59
	ld (ix+001h),001h	;be5a
	ret			;be5e
	ld a,(ix+001h)		;be5f
	dec a			;be62
	jr z,lbe7eh		;be63
	dec a			;be65
	jr z,lbec4h		;be66
	dec a			;be68
	jr z,lbeb7h		;be69
	call 06754h		;be6b
	call 06796h		;be6e
	call 06796h		;be71
	ld (ix+021h),a		;be74
	ld (ix+03eh),00ch	;be77
	jp 06c1dh		;be7b
lbe7eh:
	ld (ix+006h),000h	;be7e
	ld l,(ix+026h)		;be82
	ld h,000h		;be85
	add hl,hl		;be87
	ld de,lbefdh		;be88
	add hl,de		;be8b
	ld a,(hl)		;be8c
	and a			;be8d
	ret z			;be8e
	cp (ix+00ah)		;be8f
	ret c			;be92
	inc hl			;be93
	inc (ix+026h)		;be94
	ld b,(hl)		;be97
	ld a,(0ca19h)		;be98
	cp b			;be9b
	ret c			;be9c
	call 0755dh		;be9d
	ld a,e			;bea0
	bit 7,a			;bea1
	jr z,lbea7h		;bea3
	neg			;bea5
lbea7h:
	cp 00fh			;bea7
	jr c,lbeadh		;bea9
	ld a,00fh		;beab
lbeadh:
	ld (ix+025h),a		;bead
	ld (ix+018h),006h	;beb0
	jp 06c1dh		;beb4
lbeb7h:
	call 06adfh		;beb7
	ret nz			;beba
	ld (ix+022h),000h	;bebb
	ld (ix+001h),001h	;bebf
	ret			;bec3
lbec4h:
	ld (ix+006h),001h	;bec4
	call 06adfh		;bec8
	ret nz			;becb
	ld a,011h		;becc
	call 0684ch		;bece
	ret c			;bed1
	ld bc,00202h		;bed2
	call 06929h		;bed5
	call 0699eh		;bed8
	ld l,(ix+025h)		;bedb
	ld h,000h		;bede
	ld de,lbf04h		;bee0
	add hl,de		;bee3
	ld a,(hl)		;bee4
	ld (iy+017h),a		;bee5
	ld (ix+018h),004h	;bee8
	inc (ix+022h)		;beec
	ld a,(ix+021h)		;beef
	cp (ix+022h)		;bef2
	ret nz			;bef5
	ld (ix+018h),008h	;bef6
	jp 06c1dh		;befa
lbefdh:
	ld a,(de)		;befd
	nop			;befe
	ld (de),a		;beff
	dec b			;bf00
	ld b,008h		;bf01
	nop			;bf03
lbf04h:
	ld (bc),a		;bf04
	inc bc			;bf05
	inc b			;bf06
	inc b			;bf07
	dec b			;bf08
	dec b			;bf09
	ld b,006h		;bf0a
	rlca			;bf0c
	rlca			;bf0d
	ex af,af'		;bf0e
	add hl,bc		;bf0f
	ld a,(bc)		;bf10
	dec bc			;bf11
	inc c			;bf12
	dec c			;bf13
	call 06a13h		;bf14
	ld de,0bfc0h		;bf17
	call 07b65h		;bf1a
	ld a,(ix+001h)		;bf1d
	dec a			;bf20
	jr z,lbf3fh		;bf21
	dec a			;bf23
	jr z,lbf5fh		;bf24
	dec a			;bf26
	jr z,lbf8dh		;bf27
	call 06754h		;bf29
	call 069f2h		;bf2c
	ld a,(0ca04h)		;bf2f
	and a			;bf32
	jr z,lbf39h		;bf33
	ld (ix+016h),038h	;bf35
lbf39h:
	call sub_bfaeh		;bf39
	jp 06c1dh		;bf3c
lbf3fh:
	ld b,004h		;bf3f
	call 06ac2h		;bf41
	call 07c6bh		;bf44
	ret nc			;bf47
	ld a,001h		;bf48
	ld (0ce4ch),a		;bf4a
	ld a,034h		;bf4d
	call 04af5h		;bf4f
	call 07cbeh		;bf52
	ld (ix+017h),005h	;bf55
	inc (ix+018h)		;bf59
	jp 06c1dh		;bf5c
lbf5fh:
	call sub_bf9ah		;bf5f
	call 06adfh		;bf62
	ret nz			;bf65
	ld (ix+018h),004h	;bf66
	call 06ad2h		;bf6a
	jr z,lbf86h		;bf6d
	cp 003h			;bf6f
	jr nz,lbf77h		;bf71
	ld (ix+006h),004h	;bf73
lbf77h:
	dec a			;bf77
	ld l,a			;bf78
	ld h,000h		;bf79
	add hl,hl		;bf7b
	ld de,lbfb8h		;bf7c
	add hl,de		;bf7f
	ld e,(hl)		;bf80
	inc hl			;bf81
	ld d,(hl)		;bf82
	jp 09a62h		;bf83
lbf86h:
	ld (ix+017h),070h	;bf86
	jp 06c1dh		;bf8a
lbf8dh:
	call sub_bf9ah		;bf8d
	call 06ad2h		;bf90
	ret nz			;bf93
	call 069fbh		;bf94
	jp 06e98h		;bf97
sub_bf9ah:
	ld hl,0ce48h		;bf9a
	res 1,(hl)		;bf9d
	dec (ix+020h)		;bf9f
	ret nz			;bfa2
	ld (hl),003h		;bfa3
	ld a,(0ce4dh)		;bfa5
	and a			;bfa8
	ld a,035h		;bfa9
	call z,04af0h		;bfab
sub_bfaeh:
	call 04678h		;bfae
	and 007h		;bfb1
	inc a			;bfb3
	ld (ix+020h),a		;bfb4
	ret			;bfb7
lbfb8h:
	defb 0fdh,002h,0feh ;illegal sequence	;bfb8
	ex af,af'		;bfbb
	ld (bc),a		;bfbc
	inc b			;bfbd
	inc b			;bfbe
	cp 0cah			;bfbf
	cp a			;bfc1
	push de			;bfc2
	cp a			;bfc3
	ret po			;bfc4
	cp a			;bfc5
	ex de,hl		;bfc6
	cp a			;bfc7
	or 0bfh			;bfc8
	dec bc			;bfca
	nop			;bfcb
	nop			;bfcc
	ld bc,0fe00h		;bfcd
	ld a,(bc)		;bfd0
	nop			;bfd1
	ld bc,0ff04h		;bfd2
	dec bc			;bfd5
	nop			;bfd6
	nop			;bfd7
	ld bc,0fe01h		;bfd8
	ld a,(bc)		;bfdb
	nop			;bfdc
	ld bc,0ff04h		;bfdd
	dec bc			;bfe0
	nop			;bfe1
	nop			;bfe2
	ld bc,0fe02h		;bfe3
	ld a,(bc)		;bfe6
	nop			;bfe7
	ld bc,0ff04h		;bfe8
	dec bc			;bfeb
	nop			;bfec
	nop			;bfed
	ld bc,0fe03h		;bfee
	ld a,(bc)		;bff1
	nop			;bff2
	ld bc,0ff04h		;bff3
	ld b,000h		;bff6
	nop			;bff8
	ld bc,0ff05h		;bff9
	rst 38h			;bffc
	rst 38h			;bffd
	rst 38h			;bffe
	rst 38h			;bfff

; z80dasm 1.2.0
; command line: z80dasm -a -l -g 0xA000 -o /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/disasm/bank04_A000.asm /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/banks/bank04.bin

	org 0a000h

	jp 0625eh		;a000
	jp 06214h		;a003
	jp 0601eh		;a006
	jp 060b4h		;a009
	jp 06459h		;a00c
	jp 0606ah		;a00f
	jp 062cbh		;a012
	jp 078e1h		;a015
	jp 07de4h		;a018
	jp 07df1h		;a01b
	call 060fah		;a01e
	call 06056h		;a021
	call 06035h		;a024
	call 06048h		;a027
	call 06485h		;a02a
	ld a,(0ce74h)		;a02d
	or a			;a030
	ret z			;a031
	jp 0607dh		;a032
	ld hl,0ce4fh		;a035
	ld a,(hl)		;a038
	and a			;a039
	ret z			;a03a
	ld b,002h		;a03b
	cp b			;a03d
	jr z,la042h		;a03e
	ld (hl),b		;a040
	ret			;a041
la042h:
	ld a,001h		;a042
	ld (0ca0fh),a		;a044
	ret			;a047
	ld hl,0cb06h		;a048
	ld a,(hl)		;a04b
	ld (hl),000h		;a04c
	and 00fh		;a04e
	cp 002h			;a050
	ret c			;a052
	ld (hl),080h		;a053
	ret			;a055
	ld bc,01440h		;a056
	ld ix,0ce80h		;a059
la05dh:
	push bc			;a05d
	call 0606ah		;a05e
	pop bc			;a061
	ld e,c			;a062
	ld d,000h		;a063
	add ix,de		;a065
	djnz la05dh		;a067
	ret			;a069
	call 06e2ch		;a06a
	ret z			;a06d
	jp c,07d9ch		;a06e
	jp 064a2h		;a071
	ld a,(ix+034h)		;a074
	bit 6,a			;a077
	ret z			;a079
	jp 06e98h		;a07a
	ld bc,01440h		;a07d
	ld ix,0ce80h		;a080
la084h:
	push bc			;a084
	ld a,(ix+000h)		;a085
	cp 01bh			;a088
	call z,0609ah		;a08a
	pop bc			;a08d
	ld e,c			;a08e
	ld d,000h		;a08f
	add ix,de		;a091
	djnz la084h		;a093
	xor a			;a095
	ld (0ce74h),a		;a096
	ret			;a099
	ld d,(ix+00ah)		;a09a
	ld e,(ix+008h)		;a09d
	inc d			;a0a0
	inc e			;a0a1
	call 07b06h		;a0a2
	ld a,(de)		;a0a5
	sub 0cbh		;a0a6
	cp 003h			;a0a8
	ret nc			;a0aa
	ld (ix+016h),000h	;a0ab
	ld (ix+004h),001h	;a0af
	ret			;a0b3
	call 060beh		;a0b4
	call 060d0h		;a0b7
	call 060c7h		;a0ba
	ret			;a0bd
	ld hl,0ce40h		;a0be
	ld bc,0053fh		;a0c1
	jp 04648h		;a0c4
	ld hl,0d440h		;a0c7
	ld bc,0025fh		;a0ca
	jp 04648h		;a0cd
	ld a,014h		;a0d0
	ld (0ce44h),a		;a0d2
	ret			;a0d5
	inc hl			;a0d6
	inc hl			;a0d7
	ld a,(hl)		;a0d8
	dec a			;a0d9
	ex de,hl		;a0da
	cp 003h			;a0db
	jp nc,04ae0h		;a0dd
	call 0461ah		;a0e0
	jp (hl)			;a0e3
	ld h,b			;a0e4
	jp (hl)			;a0e5
	ld h,b			;a0e6
	call p,0eb60h		;a0e7
	ld a,(hl)		;a0ea
	ld (0ce60h),a		;a0eb
	inc hl			;a0ee
	ld a,(hl)		;a0ef
	ld (0ce61h),a		;a0f0
	ret			;a0f3
	ex de,hl		;a0f4
	ld a,(hl)		;a0f5
	ld (0ce60h),a		;a0f6
	ret			;a0f9
	ld a,(0ce60h)		;a0fa
	and a			;a0fd
	ret z			;a0fe
	dec a			;a0ff
	jr z,la125h		;a100
	dec a			;a102
	jr z,la105h		;a103
la105h:
	ld bc,01440h		;a105
	ld ix,0ce80h		;a108
la10ch:
	push bc			;a10c
	ld a,(ix+000h)		;a10d
	cp 065h			;a110
	jr z,la118h		;a112
	and a			;a114
	call nz,06e98h		;a115
la118h:
	pop bc			;a118
	ld d,000h		;a119
	ld e,c			;a11b
	add ix,de		;a11c
	djnz la10ch		;a11e
	xor a			;a120
la121h:
	ld (0ce60h),a		;a121
	ret			;a124
la125h:
	ld a,(0ce61h)		;a125
	and a			;a128
la129h:
	jr z,la173h		;a129
la12bh:
	ld l,a			;a12b
	ld a,(0ca02h)		;a12c
	and 001h		;a12f
	ret nz			;a131
	dec l			;a132
	ld h,000h		;a133
	ld de,0617eh		;a135
	add hl,hl		;a138
	add hl,de		;a139
	ld e,(hl)		;a13a
	inc hl			;a13b
	ld d,(hl)		;a13c
	ld a,(de)		;a13d
	ld c,a			;a13e
	inc de			;a13f
	ld hl,0ce68h		;a140
	ld b,(hl)		;a143
	inc (hl)		;a144
	cp b			;a145
la146h:
	jr nz,la14ch		;a146
la148h:
	ld (hl),000h		;a148
la14ah:
	ld b,000h		;a14a
la14ch:
	push de			;a14c
	push bc			;a14d
la14eh:
	ld l,b			;a14e
	ld h,000h		;a14f
	add hl,hl		;a151
	add hl,de		;a152
	ld d,(hl)		;a153
	inc hl			;a154
	ld b,(hl)		;a155
	ld a,b			;a156
	and 00fh		;a157
	ld e,a			;a159
	ld a,b			;a15a
	rlca			;a15b
	rlca			;a15c
	rlca			;a15d
	rlca			;a15e
	and 00fh		;a15f
	call 04776h		;a161
	pop bc			;a164
	pop de			;a165
	ld l,c			;a166
	ld h,000h		;a167
	add hl,hl		;a169
	add hl,de		;a16a
	ld a,(hl)		;a16b
	add a,001h		;a16c
	ret c			;a16e
	inc hl			;a16f
	ex de,hl		;a170
	jr la14ch		;a171
la173h:
	xor a			;a173
	ld (0ce60h),a		;a174
	ld (0ce61h),a		;a177
	ld (0ce68h),a		;a17a
	ret			;a17d
	adc a,b			;a17e
	ld h,c			;a17f
	sbc a,(hl)		;a180
	ld h,c			;a181
	pop bc			;a182
	ld h,c			;a183
	call c,0fe61h		;a184
	ld h,c			;a187
	ld a,(bc)		;a188
	nop			;a189
	sub b			;a18a
	djnz $-110		;a18b
	jr nz,$-110		;a18d
	jr nc,la121h		;a18f
	ld b,b			;a191
	sub b			;a192
	ld d,b			;a193
	sub b			;a194
	ld b,b			;a195
	sub b			;a196
la197h:
	jr nc,la129h		;a197
	jr nz,la12bh		;a199
	djnz $-110		;a19b
	rst 38h			;a19d
	ex af,af'		;a19e
	ld (hl),b		;a19f
	ld b,h			;a1a0
	ld h,b			;a1a1
	ld b,e			;a1a2
	ld d,b			;a1a3
	ld b,d			;a1a4
	ld b,b			;a1a5
	ld b,c			;a1a6
	jr nc,la1e9h		;a1a7
	ld b,b			;a1a9
	ld b,c			;a1aa
	ld d,b			;a1ab
	ld b,d			;a1ac
	ld h,b			;a1ad
	ld b,e			;a1ae
	cp 070h			;a1af
	sub b			;a1b1
	ld d,b			;a1b2
	sub b			;a1b3
	jr nc,la146h		;a1b4
	jr nz,la148h		;a1b6
	djnz la14ah		;a1b8
	jr nz,la14ch		;a1ba
	jr nc,la14eh		;a1bc
	ld d,b			;a1be
	sub b			;a1bf
	rst 38h			;a1c0
	ld b,077h		;a1c1
	or a			;a1c3
	ld (hl),h		;a1c4
	or l			;a1c5
	ld (hl),d		;a1c6
	or e			;a1c7
	ld (hl),b		;a1c8
	or c			;a1c9
	ld (hl),d		;a1ca
	or e			;a1cb
	ld (hl),h		;a1cc
	or l			;a1cd
	cp 074h			;a1ce
	push bc			;a1d0
	ld (hl),b		;a1d1
	pop bc			;a1d2
	ld d,b			;a1d3
	ret nz			;a1d4
	jr nc,la197h		;a1d5
	ld d,b			;a1d7
	ret nz			;a1d8
	ld (hl),b		;a1d9
	pop bc			;a1da
	rst 38h			;a1db
	djnz $+89		;a1dc
	sub (hl)		;a1de
	ld b,a			;a1df
	sub l			;a1e0
	scf			;a1e1
	sub h			;a1e2
	daa			;a1e3
	sub e			;a1e4
	ld d,092h		;a1e5
	dec b			;a1e7
	sub c			;a1e8
la1e9h:
	inc b			;a1e9
	sub b			;a1ea
	inc bc			;a1eb
	sub b			;a1ec
	inc bc			;a1ed
	sub b			;a1ee
	inc b			;a1ef
	sub b			;a1f0
	dec b			;a1f1
	sub c			;a1f2
	ld d,092h		;a1f3
	daa			;a1f5
	sub e			;a1f6
	scf			;a1f7
	sub h			;a1f8
	ld b,a			;a1f9
	sub l			;a1fa
	ld d,a			;a1fb
	sub (hl)		;a1fc
	rst 38h			;a1fd
	ld a,(bc)		;a1fe
	ld (hl),a		;a1ff
	sub a			;a200
	ld h,a			;a201
	sub (hl)		;a202
	ld d,a			;a203
	sub l			;a204
	ld b,(hl)		;a205
	sub h			;a206
	dec (hl)		;a207
	sub e			;a208
	inc h			;a209
	sub d			;a20a
	dec (hl)		;a20b
	sub e			;a20c
	ld b,(hl)		;a20d
	sub h			;a20e
	ld d,a			;a20f
	sub l			;a210
	ld h,a			;a211
	sub (hl)		;a212
	rst 38h			;a213
	ld a,(0e900h)		;a214
	and a			;a217
	call z,06222h		;a218
	ld hl,0e900h		;a21b
	ld (0ce42h),hl		;a21e
	ret			;a221
	ld de,093b8h		;a222
	ld hl,(0ca10h)		;a225
	ld h,000h		;a228
	add hl,hl		;a22a
	add hl,de		;a22b
	ld e,(hl)		;a22c
	inc hl			;a22d
	ld d,(hl)		;a22e
	ld hl,0e900h		;a22f
	ex de,hl		;a232
	ld bc,00600h		;a233
	ldir			;a236
	ret			;a238
	ld a,(0ce7fh)		;a239
	or a			;a23c
	ret z			;a23d
	call 069a3h		;a23e
	ret c			;a241
	ld (ix+031h),081h	;a242
	ld (ix+032h),0eeh	;a246
	ld a,(0ee80h)		;a24a
	ld (ix+030h),a		;a24d
	ld a,(0ee81h)		;a250
	ld (ix+02fh),a		;a253
	call 06344h		;a256
	xor a			;a259
	ld (0ce7fh),a		;a25a
	ret			;a25d
la25eh:
	call 06239h		;a25e
	ld hl,(0ce42h)		;a261
	ld a,(hl)		;a264
	and a			;a265
	ret z			;a266
	ld d,a			;a267
	inc hl			;a268
	ld e,(hl)		;a269
	inc hl			;a26a
	ld b,(hl)		;a26b
	and a			;a26c
	jp p,06279h		;a26d
	and 07fh		;a270
	ld d,a			;a272
	ld a,(0ca04h)		;a273
	and a			;a276
	jr z,la2abh		;a277
	push hl			;a279
	ld hl,(0ca34h)		;a27a
	call 04650h		;a27d
	pop hl			;a280
	ret c			;a281
	jr nz,la2abh		;a282
	ld a,b			;a284
	bit 7,a			;a285
	jr z,la293h		;a287
	and 07fh		;a289
	ld b,a			;a28b
	ld a,(0ca19h)		;a28c
	cp 004h			;a28f
	jr c,la2abh		;a291
la293h:
	push hl			;a293
	call 062bbh		;a294
	jr z,la2aah		;a297
	ld a,(0ca33h)		;a299
	or a			;a29c
	call nz,06306h		;a29d
	jr c,la2aah		;a2a0
	call 066d0h		;a2a2
	jr c,la2aah		;a2a5
	call 06344h		;a2a7
la2aah:
	pop hl			;a2aa
la2abh:
	inc hl			;a2ab
	ld a,(hl)		;a2ac
	and 07fh		;a2ad
	dec a			;a2af
	dec a			;a2b0
	dec a			;a2b1
	ld e,a			;a2b2
	ld d,000h		;a2b3
	add hl,de		;a2b5
	ld (0ce42h),hl		;a2b6
	jr la25eh		;a2b9
	ld a,b			;a2bb
	cp 05fh			;a2bc
	ret nz			;a2be
	call 060d6h		;a2bf
	xor a			;a2c2
	ret			;a2c3
	ld hl,0e900h		;a2c4
	ld (0ca34h),hl		;a2c7
	ret			;a2ca
	ld ix,0ce80h		;a2cb
	ld b,014h		;a2cf
la2d1h:
	ld a,(ix+000h)		;a2d1
	and a			;a2d4
	jr z,la2feh		;a2d5
	ld a,(ix+015h)		;a2d7
	bit 2,a			;a2da
	jr z,la2feh		;a2dc
	ld hl,(0ca12h)		;a2de
	ld e,(ix+007h)		;a2e1
	ld d,(ix+008h)		;a2e4
	add hl,de		;a2e7
	ld (ix+007h),l		;a2e8
	ld (ix+008h),h		;a2eb
	ld hl,(0ca14h)		;a2ee
	ld e,(ix+009h)		;a2f1
	ld d,(ix+00ah)		;a2f4
	add hl,de		;a2f7
	ld (ix+009h),l		;a2f8
	ld (ix+00ah),h		;a2fb
la2feh:
	ld de,00040h		;a2fe
	add ix,de		;a301
	djnz la2d1h		;a303
	ret			;a305
	ld de,06315h		;a306
la309h:
	ld a,(de)		;a309
	inc a			;a30a
	jr z,la313h		;a30b
	dec a			;a30d
	inc de			;a30e
	cp b			;a30f
	ret z			;a310
	jr la309h		;a311
la313h:
	scf			;a313
	ret			;a314
	inc de			;a315
	rla			;a316
	add hl,de		;a317
	rra			;a318
	jr nz,la33ch		;a319
	ld (02624h),hl		;a31b
	daa			;a31e
	jr z,la34ah		;a31f
	ld hl,(02c2bh)		;a321
	dec l			;a324
	ld l,02fh		;a325
	jr nc,la35ah		;a327
	ld (03534h),a		;a329
	ld (hl),038h		;a32c
	add hl,sp		;a32e
	ld a,(04841h)		;a32f
	ld c,c			;a332
	ld c,d			;a333
	ld c,e			;a334
	ld c,h			;a335
	ld c,l			;a336
	ld c,(hl)		;a337
	ld c,a			;a338
	ld d,b			;a339
	ld d,l			;a33a
	ld d,(hl)		;a33b
la33ch:
	ld e,d			;a33c
	ld e,a			;a33d
	ld h,l			;a33e
	ld (hl),d		;a33f
	ld (hl),e		;a340
	ld (hl),h		;a341
	ld (hl),l		;a342
	rst 38h			;a343
	ld a,(ix+000h)		;a344
	and a			;a347
	ret z			;a348
	ld b,a			;a349
la34ah:
	rlca			;a34a
	ret c			;a34b
	ld a,b			;a34c
	dec a			;a34d
	cp 07ch			;a34e
	jp nc,04ae0h		;a350
	ld l,a			;a353
	ld h,000h		;a354
	add hl,hl		;a356
	ld de,06360h		;a357
la35ah:
	add hl,de		;a35a
	ld e,(hl)		;a35b
	inc hl			;a35c
	ld d,(hl)		;a35d
	ex de,hl		;a35e
	jp (hl)			;a35f
	inc b			;a360
la361h:
	ld d,c			;a361
	inc b			;a362
	ld d,c			;a363
	call 00450h		;a364
	ld d,c			;a367
	inc b			;a368
	ld d,c			;a369
	inc b			;a36a
	ld d,c			;a36b
	inc b			;a36c
	ld d,c			;a36d
	inc b			;a36e
	ld d,c			;a36f
	inc b			;a370
	ld d,c			;a371
	inc b			;a372
	ld d,c			;a373
	inc b			;a374
	ld d,c			;a375
	inc b			;a376
	ld d,c			;a377
	dec c			;a378
	ld c,a			;a379
	inc e			;a37a
	ld c,a			;a37b
	nop			;a37c
	ld c,a			;a37d
	sub c			;a37e
	ld d,d			;a37f
	dec b			;a380
	ld d,e			;a381
	ld e,d			;a382
	ld d,e			;a383
	cp e			;a384
	ld d,e			;a385
	ld hl,(009aeh)		;a386
	add a,b			;a389
	jr c,la3e0h		;a38a
	adc a,a			;a38c
	add a,b			;a38d
	ret			;a38e
	ld d,h			;a38f
	sub d			;a390
	ld d,l			;a391
	ld l,h			;a392
	ld d,a			;a393
	or l			;a394
	ld e,e			;a395
	ld b,c			;a396
	cp d			;a397
	xor e			;a398
	cp d			;a399
	ld (hl),l		;a39a
	cp e			;a39b
	ld d,e			;a39c
	cp h			;a39d
	cp 0bch			;a39e
	ld a,(bc)		;a3a0
	ld d,b			;a3a1
	jr la361h		;a3a2
	ld a,d			;a3a4
	cp l			;a3a5
	and c			;a3a6
	cp l			;a3a7
	rst 20h			;a3a8
	cp l			;a3a9
	ld l,e			;a3aa
	cp (hl)			;a3ab
	ld d,b			;a3ac
	add a,c			;a3ad
	add hl,hl		;a3ae
	add a,d			;a3af
	ret nc			;a3b0
	add a,d			;a3b1
	scf			;a3b2
	add a,e			;a3b3
	ld b,a			;a3b4
	add a,e			;a3b5
	or l			;a3b6
	add a,e			;a3b7
	ld sp,01284h		;a3b8
	add a,l			;a3bb
	and h			;a3bc
	add a,(hl)		;a3bd
	ld e,a			;a3be
	add a,a			;a3bf
	rst 18h			;a3c0
	ld e,h			;a3c1
	cp e			;a3c2
	add a,a			;a3c3
	add hl,bc		;a3c4
	adc a,b			;a3c5
	rrca			;a3c6
	adc a,c			;a3c7
	rra			;a3c8
	adc a,c			;a3c9
	xor (hl)		;a3ca
	adc a,d			;a3cb
	ld h,c			;a3cc
	ld d,c			;a3cd
	ld sp,hl		;a3ce
	adc a,e			;a3cf
	ld a,(02b8ch)		;a3d0
	adc a,l			;a3d3
	sub c			;a3d4
	and c			;a3d5
	or a			;a3d6
	and d			;a3d7
	ld (hl),0a5h		;a3d8
	ld h,a			;a3da
	and (hl)		;a3db
	ld d,e			;a3dc
	xor b			;a3dd
	adc a,e			;a3de
	and l			;a3df
la3e0h:
	dec sp			;a3e0
	adc a,l			;a3e1
	adc a,d			;a3e2
	ld e,d			;a3e3
	sub h			;a3e4
	adc a,(hl)		;a3e5
	and a			;a3e6
	adc a,a			;a3e7
	inc h			;a3e8
	sub b			;a3e9
	ccf			;a3ea
	sub b			;a3eb
	ld sp,0c95bh		;a3ec
	sub c			;a3ef
	push af			;a3f0
	sub d			;a3f1
	sbc a,d			;a3f2
	sub e			;a3f3
	halt			;a3f4
	sub h			;a3f5
	add a,b			;a3f6
	sub h			;a3f7
	jp m,04794h		;a3f8
	sub (hl)		;a3fb
	and b			;a3fc
	sub (hl)		;a3fd
	xor b			;a3fe
	ld e,d			;a3ff
	ld e,b			;a400
	ld h,h			;a401
	ld b,b			;a402
	sbc a,c			;a403
	ld c,h			;a404
	sbc a,c			;a405
	and e			;a406
	sbc a,c			;a407
	ld de,02959h		;a408
	cp a			;a40b
	ld e,b			;a40c
	ld h,h			;a40d
	ld l,a			;a40e
	or b			;a40f
	ret z			;a410
	or (hl)			;a411
	dec bc			;a412
	sbc a,b			;a413
	ld e,b			;a414
	ld h,h			;a415
	jr z,$-68		;a416
	ld e,b			;a418
	ld h,h			;a419
	rst 20h			;a41a
	or (hl)			;a41b
	ld e,b			;a41c
	ld h,h			;a41d
	ld hl,(0fa5bh)		;a41e
	sbc a,e			;a421
	ld b,b			;a422
	sbc a,d			;a423
	rst 38h			;a424
	sbc a,a			;a425
	nop			;a426
	and e			;a427
	adc a,d			;a428
	ld e,l			;a429
	ld (hl),d		;a42a
	sbc a,h			;a42b
	dec e			;a42c
	sbc a,l			;a42d
	ld e,051h		;a42e
	add a,d			;a430
	sbc a,d			;a431
	ld e,b			;a432
	ld h,h			;a433
	ld e,b			;a434
	ld h,h			;a435
	ld e,b			;a436
	ld h,h			;a437
	ld e,b			;a438
	ld h,h			;a439
	ld c,l			;a43a
	sbc a,a			;a43b
	cp (hl)			;a43c
	sbc a,a			;a43d
	ld e,09dh		;a43e
	pop bc			;a440
	or b			;a441
	pop af			;a442
	adc a,d			;a443
	ld h,c			;a444
	sub h			;a445
	ld a,d			;a446
	sbc a,(hl)		;a447
	ld a,e			;a448
	sbc a,(hl)		;a449
	ld hl,(0e3b4h)		;a44a
	or b			;a44d
	ld c,b			;a44e
	xor d			;a44f
	pop bc			;a450
	sub (hl)		;a451
	rrca			;a452
	and b			;a453
	ld c,e			;a454
	or l			;a455
	add a,d			;a456
	or a			;a457
	ret			;a458
	ld bc,(0f0f2h)		;a459
	push bc			;a45d
	call 04b99h		;a45e
	call 06472h		;a461
	pop bc			;a464
	ld (0f0f2h),bc		;a465
	ld a,c			;a469
	ld (09000h),a		;a46a
	ld a,b			;a46d
	ld (0b000h),a		;a46e
	ret			;a471
	ld a,(ix+000h)		;a472
	cp 003h			;a475
	jp z,05100h		;a477
	cp 04dh			;a47a
	jp z,095ddh		;a47c
	cp 027h			;a47f
	jp z,081aah		;a481
	ret			;a484
	ld bc,01220h		;a485
	ld ix,0d460h		;a488
la48ch:
	push bc			;a48c
	ld a,(ix+000h)		;a48d
	and a			;a490
	jr z,la496h		;a491
	call 0649fh		;a493
la496h:
	pop bc			;a496
	ld e,c			;a497
	ld d,000h		;a498
	add ix,de		;a49a
	djnz la48ch		;a49c
	ret			;a49e
	jp 064a2h		;a49f
	call 06a7fh		;a4a2
	ld a,(ix+000h)		;a4a5
	ld (0f0feh),a		;a4a8
	dec a			;a4ab
	cp 05eh			;a4ac
	call nz,06c21h		;a4ae
	call 064b9h		;a4b1
	xor a			;a4b4
	ld (0f0feh),a		;a4b5
	ret			;a4b8
	cp 07ch			;a4b9
	jp nc,04ae0h		;a4bb
	ld l,a			;a4be
	ld h,000h		;a4bf
	add hl,hl		;a4c1
	add hl,hl		;a4c2
	ld de,064d1h		;a4c3
	add hl,de		;a4c6
	ld e,(hl)		;a4c7
	inc hl			;a4c8
	ld d,(hl)		;a4c9
	push de			;a4ca
	inc hl			;a4cb
	ld e,(hl)		;a4cc
	inc hl			;a4cd
	ld d,(hl)		;a4ce
	ex de,hl		;a4cf
	jp (hl)			;a4d0
	push af			;a4d1
	ld l,l			;a4d2
	ld de,0f551h		;a4d3
	ld l,l			;a4d6
	ld de,0f551h		;a4d7
	ld l,l			;a4da
	ret nc			;a4db
	ld d,b			;a4dc
	push af			;a4dd
	ld l,l			;a4de
	ld de,0f551h		;a4df
	ld l,l			;a4e2
	ld de,0f551h		;a4e3
	ld l,l			;a4e6
	ld de,0f551h		;a4e7
	ld l,l			;a4ea
	ld de,0f551h		;a4eb
	ld l,l			;a4ee
	ld de,0f551h		;a4ef
	ld l,l			;a4f2
	ld de,0f551h		;a4f3
	ld l,l			;a4f6
	ld de,0f551h		;a4f7
	ld l,l			;a4fa
	ld de,0f551h		;a4fb
	ld l,l			;a4fe
	ld de,0f551h		;a4ff
	ld l,l			;a502
	dec c			;a503
	ld c,a			;a504
	dec (hl)		;a505
	ld l,(hl)		;a506
	inc sp			;a507
	ld c,a			;a508
	push af			;a509
	ld l,l			;a50a
	nop			;a50b
	ld c,a			;a50c
	push af			;a50d
	ld l,l			;a50e
	adc a,b			;a50f
	ld d,d			;a510
	push af			;a511
	ld l,l			;a512
	call p,0f552h		;a513
	ld l,l			;a516
	ld c,(hl)		;a517
	ld d,e			;a518
	push af			;a519
	ld l,l			;a51a
	call nz,04453h		;a51b
	ld l,(hl)		;a51e
	ld a,(bc)		;a51f
	xor (hl)		;a520
	push af			;a521
	ld l,l			;a522
	nop			;a523
	add a,b			;a524
	push af			;a525
	ld l,l			;a526
	inc l			;a527
	ld d,h			;a528
	push af			;a529
	ld l,l			;a52a
	ld a,a			;a52b
	add a,b			;a52c
	push af			;a52d
la52eh:
	ld l,l			;a52e
	pop bc			;a52f
	ld d,h			;a530
	push af			;a531
	ld l,l			;a532
	ld a,h			;a533
	ld d,l			;a534
	push af			;a535
	ld l,l			;a536
	ld h,e			;a537
	ld d,a			;a538
	out (06dh),a		;a539
	jp nz,0e15bh		;a53b
	ld l,l			;a53e
	dec sp			;a53f
	cp d			;a540
	push af			;a541
	ld l,l			;a542
	sbc a,a			;a543
	cp d			;a544
	push af			;a545
	ld l,l			;a546
	ld l,c			;a547
	cp e			;a548
	jp nz,03a66h		;a549
	cp h			;a54c
	jp nz,0ec66h		;a54d
	cp h			;a550
	pop hl			;a551
	ld l,l			;a552
	pop af			;a553
	ld c,a			;a554
	pop hl			;a555
	ld l,l			;a556
	rrca			;a557
	cp l			;a558
	dec (hl)		;a559
	ld l,(hl)		;a55a
	ld (hl),h		;a55b
	cp l			;a55c
	jp nz,09b66h		;a55d
	cp l			;a560
	push af			;a561
	ld l,l			;a562
	in a,(0bdh)		;a563
	pop hl			;a565
	ld l,l			;a566
	ld e,a			;a567
	cp (hl)			;a568
	pop hl			;a569
la56ah:
	ld l,l			;a56a
	ld (hl),b		;a56b
	add a,c			;a56c
	dec (hl)		;a56d
	ld l,(hl)		;a56e
	dec e			;a56f
	add a,d			;a570
	pop hl			;a571
	ld l,l			;a572
	jp z,00982h		;a573
	ld l,(hl)		;a576
	jr c,$-123		;a577
	dec (hl)		;a579
	ld l,(hl)		;a57a
	ld b,c			;a57b
	add a,e			;a57c
	dec (hl)		;a57d
	ld l,(hl)		;a57e
	cp a			;a57f
	add a,e			;a580
	add hl,bc		;a581
	ld l,(hl)		;a582
	ld c,l			;a583
	add a,h			;a584
	dec (hl)		;a585
	ld l,(hl)		;a586
	ld sp,hl		;a587
	add a,h			;a588
	push af			;a589
	ld l,l			;a58a
	sub h			;a58b
	add a,(hl)		;a58c
	out (06dh),a		;a58d
	sbc a,e			;a58f
	add a,a			;a590
	push af			;a591
	ld l,l			;a592
	di			;a593
	ld e,h			;a594
	pop hl			;a595
	ld l,l			;a596
	pop bc			;a597
	add a,a			;a598
	push af			;a599
	ld l,l			;a59a
	pop af			;a59b
	add a,a			;a59c
	push af			;a59d
	ld l,l			;a59e
	rrca			;a59f
	adc a,c			;a5a0
	push af			;a5a1
	ld l,l			;a5a2
	djnz la52eh		;a5a3
	pop hl			;a5a5
	ld l,l			;a5a6
	xor (hl)		;a5a7
	adc a,d			;a5a8
	out (06dh),a		;a5a9
	ld c,h			;a5ab
	ld d,c			;a5ac
	dec (hl)		;a5ad
	ld l,(hl)		;a5ae
	di			;a5af
	adc a,e			;a5b0
	dec (hl)		;a5b1
	ld l,(hl)		;a5b2
	inc (hl)		;a5b3
	adc a,h			;a5b4
	dec (hl)		;a5b5
	ld l,(hl)		;a5b6
	dec hl			;a5b7
	adc a,l			;a5b8
	push af			;a5b9
	ld l,l			;a5ba
	ld a,e			;a5bb
	and c			;a5bc
	ld b,h			;a5bd
	ld l,(hl)		;a5be
	or c			;a5bf
	and d			;a5c0
	ld b,h			;a5c1
	ld l,(hl)		;a5c2
	jr nc,la56ah		;a5c3
	ld b,h			;a5c5
	ld l,(hl)		;a5c6
	ld b,a			;a5c7
	and (hl)		;a5c8
	push af			;a5c9
	ld l,l			;a5ca
	ld d,e			;a5cb
	xor b			;a5cc
	push af			;a5cd
	ld l,l			;a5ce
	ld a,a			;a5cf
	and l			;a5d0
	pop hl			;a5d1
	ld l,l			;a5d2
	inc l			;a5d3
	adc a,l			;a5d4
	push af			;a5d5
	ld l,l			;a5d6
	add a,h			;a5d7
	ld e,d			;a5d8
	out (06dh),a		;a5d9
	add a,c			;a5db
	adc a,(hl)		;a5dc
	push af			;a5dd
	ld l,l			;a5de
	sub h			;a5df
	adc a,a			;a5e0
	push af			;a5e1
	ld l,l			;a5e2
	inc a			;a5e3
	sub b			;a5e4
	dec e			;a5e5
	ld l,(hl)		;a5e6
	ld d,h			;a5e7
	sub b			;a5e8
	jp nz,02b66h		;a5e9
	ld e,e			;a5ec
	jp nz,lac66h		;a5ed
	sub c			;a5f0
	dec e			;a5f1
	ld l,(hl)		;a5f2
	call po,0f592h		;a5f3
	ld l,l			;a5f6
	ld a,e			;a5f7
	sub e			;a5f8
	push af			;a5f9
	ld l,l			;a5fa
la5fbh:
	halt			;a5fb
	sub h			;a5fc
	push af			;a5fd
	ld l,l			;a5fe
	ld (hl),a		;a5ff
	sub h			;a600
	jp nz,00866h		;a601
	sub l			;a604
	push af			;a605
	ld l,l			;a606
	ld d,l			;a607
	sub (hl)		;a608
	pop hl			;a609
	ld l,l			;a60a
	ld e,b			;a60b
	sub (hl)		;a60c
	dec (hl)		;a60d
	ld l,(hl)		;a60e
	and d			;a60f
	ld e,d			;a610
	push af			;a611
	ld l,l			;a612
	dec a			;a613
	sbc a,b			;a614
	push af			;a615
	ld l,l			;a616
	ld b,b			;a617
la618h:
	sbc a,c			;a618
	push af			;a619
	ld l,l			;a61a
	ld b,b			;a61b
	sbc a,c			;a61c
	push af			;a61d
	ld l,l			;a61e
	sbc a,d			;a61f
	sbc a,c			;a620
	dec (hl)		;a621
	ld l,(hl)		;a622
	ret p			;a623
	ld e,b			;a624
	jp nz,01466h		;a625
	cp a			;a628
	push af			;a629
	ld l,l			;a62a
	pop bc			;a62b
	ld h,(hl)		;a62c
	push af			;a62d
	ld l,l			;a62e
	ld h,(hl)		;a62f
	or b			;a630
	push af			;a631
	ld l,l			;a632
	ret z			;a633
	or (hl)			;a634
	dec (hl)		;a635
	ld l,(hl)		;a636
	dec b			;a637
	sbc a,b			;a638
	push af			;a639
	ld l,l			;a63a
	pop bc			;a63b
	ld h,(hl)		;a63c
	push af			;a63d
	ld l,l			;a63e
	jr z,la5fbh		;a63f
	push af			;a641
	ld l,l			;a642
	pop bc			;a643
	ld h,(hl)		;a644
	push af			;a645
	ld l,l			;a646
	sbc a,0b6h		;a647
	ld l,l			;a649
	ld l,(hl)		;a64a
	add hl,sp		;a64b
	sbc a,d			;a64c
	ld l,(hl)		;a64d
	ld l,(hl)		;a64e
	add hl,de		;a64f
	ld e,e			;a650
	ld l,(hl)		;a651
	ld l,(hl)		;a652
	dec sp			;a653
	sbc a,h			;a654
	push af			;a655
	ld l,l			;a656
	ld b,c			;a657
	sbc a,d			;a658
	ld l,(hl)		;a659
	ld l,(hl)		;a65a
	rst 38h			;a65b
	sbc a,a			;a65c
	ld b,h			;a65d
	ld l,(hl)		;a65e
	ret c			;a65f
	and d			;a660
	push af			;a661
	ld l,l			;a662
	and b			;a663
	ld e,l			;a664
	push af			;a665
	ld l,l			;a666
	ld l,h			;a667
	sbc a,h			;a668
	ld l,(hl)		;a669
	ld l,(hl)		;a66a
	dec e			;a66b
	sbc a,l			;a66c
	push af			;a66d
	ld l,l			;a66e
	ld (de),a		;a66f
	ld d,c			;a670
	dec (hl)		;a671
	ld l,(hl)		;a672
	ld a,h			;a673
	sbc a,d			;a674
	jp nz,0d766h		;a675
	sbc a,d			;a678
	dec (hl)		;a679
	ld l,(hl)		;a67a
	jr c,la618h		;a67b
	push af			;a67d
	ld l,l			;a67e
	pop bc			;a67f
	ld h,(hl)		;a680
	push af			;a681
	ld l,l			;a682
	pop bc			;a683
	ld h,(hl)		;a684
	push af			;a685
	ld l,l			;a686
	ld b,a			;a687
	sbc a,a			;a688
	push af			;a689
	ld l,l			;a68a
	or b			;a68b
	sbc a,a			;a68c
	push af			;a68d
	ld l,l			;a68e
	ld h,b			;a68f
	sbc a,l			;a690
	ld b,h			;a691
	ld l,(hl)		;a692
	pop bc			;a693
	or b			;a694
	push af			;a695
	ld l,l			;a696
	rst 10h			;a697
	adc a,d			;a698
	dec e			;a699
	ld l,(hl)		;a69a
	ld (hl),e		;a69b
	sub h			;a69c
	push af			;a69d
	ld l,l			;a69e
	ld a,d			;a69f
	sbc a,(hl)		;a6a0
	add a,c			;a6a1
	ld l,(hl)		;a6a2
	ld a,h			;a6a3
	sbc a,(hl)		;a6a4
	dec (hl)		;a6a5
	ld l,(hl)		;a6a6
	inc hl			;a6a7
	or h			;a6a8
	ld b,h			;a6a9
	ld l,(hl)		;a6aa
	call z,0c2b0h		;a6ab
	ld h,(hl)		;a6ae
	add hl,de		;a6af
	xor d			;a6b0
	dec (hl)		;a6b1
	ld l,(hl)		;a6b2
	xor h			;a6b3
	sub (hl)		;a6b4
	ld b,h			;a6b5
	ld l,(hl)		;a6b6
	nop			;a6b7
	and b			;a6b8
	ld b,h			;a6b9
	ld l,(hl)		;a6ba
	inc de			;a6bb
	or l			;a6bc
	jp nz,06c66h		;a6bd
	or a			;a6c0
	ret			;a6c1
	jp 07747h		;a6c2
	nop			;a6c5
	rst 38h			;a6c6
	rst 38h			;a6c7
	rst 38h			;a6c8
	rst 38h			;a6c9
	rst 38h			;a6ca
	rst 38h			;a6cb
	rst 38h			;a6cc
	rst 38h			;a6cd
	rst 38h			;a6ce
	rst 38h			;a6cf
	call 0671ah		;a6d0
	ret c			;a6d3
	call 06747h		;a6d4
	call 067b0h		;a6d7
	jr la6f4h		;a6da
	call 0671ah		;a6dc
	ret c			;a6df
	call 06747h		;a6e0
	ld (ix+000h),d		;a6e3
	ld (ix+02dh),c		;a6e6
	jr la6f4h		;a6e9
	call 0671ah		;a6eb
	call 06747h		;a6ee
	call 067ceh		;a6f1
la6f4h:
	push ix			;a6f4
	pop hl			;a6f6
	call 04befh		;a6f7
	ld a,(hl)		;a6fa
	dec a			;a6fb
	ld de,00013h		;a6fc
	add hl,de		;a6ff
	push hl			;a700
	ld de,09100h		;a701
	call 04624h		;a704
	ld c,(hl)		;a707
	inc hl			;a708
	ld b,(hl)		;a709
	inc hl			;a70a
	ld a,(hl)		;a70b
	inc hl			;a70c
	ld d,(hl)		;a70d
	pop hl			;a70e
	ld (hl),c		;a70f
	inc l			;a710
	ld (hl),b		;a711
	inc l			;a712
	ld (hl),a		;a713
	inc l			;a714
	ld (hl),d		;a715
	inc l			;a716
	jp 04b99h		;a717
	ld a,(0ce44h)		;a71a
	sub 001h		;a71d
	jr c,la73eh		;a71f
	ld (0ce44h),a		;a721
	exx			;a724
	ld hl,0ce80h		;a725
	ld de,00040h		;a728
	ld b,014h		;a72b
	ld c,001h		;a72d
la72fh:
	ld a,(hl)		;a72f
	and a			;a730
	jr z,la737h		;a731
	add hl,de		;a733
	inc c			;a734
	djnz la72fh		;a735
la737h:
	ld a,c			;a737
	push hl			;a738
	exx			;a739
	pop ix			;a73a
	ld c,a			;a73c
	ret			;a73d
la73eh:
	ld hl,(0ce50h)		;a73e
	inc hl			;a741
	ld (0ce50h),hl		;a742
	scf			;a745
	ret			;a746
	exx			;a747
	push ix			;a748
	pop hl			;a74a
	xor a			;a74b
	ld b,040h		;a74c
la74eh:
	ld (hl),a		;a74e
	inc hl			;a74f
	djnz la74eh		;a750
	exx			;a752
	ret			;a753
	call 06796h		;a754
	ld d,a			;a757
	and 07fh		;a758
	ld b,a			;a75a
	ld a,(0c0d5h)		;a75b
	dec a			;a75e
	jr z,la77ch		;a75f
	dec a			;a761
	jr z,la780h		;a762
	dec a			;a764
	jr z,la780h		;a765
	dec a			;a767
	jr z,la785h		;a768
	dec a			;a76a
	jr z,la78dh		;a76b
	dec a			;a76d
	jr z,la773h		;a76e
	dec a			;a770
	jr z,la773h		;a771
la773h:
	ld c,b			;a773
	ld a,000h		;a774
	sub (ix+013h)		;a776
	ld b,a			;a779
	jr la78fh		;a77a
la77ch:
	ld c,020h		;a77c
	jr la78fh		;a77e
la780h:
	ld c,b			;a780
	ld b,018h		;a781
	jr la78fh		;a783
la785h:
	ld a,b			;a785
	sub 018h		;a786
	ld c,a			;a788
	ld b,018h		;a789
	jr la78fh		;a78b
la78dh:
	ld c,000h		;a78d
la78fh:
	ld (ix+008h),b		;a78f
	ld (ix+00ah),c		;a792
	ret			;a795
	ld a,(ix+02eh)		;a796
	cp (ix+02fh)		;a799
	inc a			;a79c
	ccf			;a79d
	ret c			;a79e
	ld (ix+02eh),a		;a79f
	ld l,(ix+031h)		;a7a2
	ld h,(ix+032h)		;a7a5
	add a,l			;a7a8
	ld l,a			;a7a9
	jr nc,la7adh		;a7aa
	inc h			;a7ac
la7adh:
	ld a,(hl)		;a7ad
	and a			;a7ae
	ret			;a7af
	ld a,(hl)		;a7b0
	and 07fh		;a7b1
	ld d,a			;a7b3
	inc hl			;a7b4
	ld a,(hl)		;a7b5
	ld e,000h		;a7b6
	rlca			;a7b8
	jr nc,la7bdh		;a7b9
	ld e,080h		;a7bb
la7bdh:
	srl a			;a7bd
	dec a			;a7bf
	dec a			;a7c0
	dec a			;a7c1
	dec a			;a7c2
	or e			;a7c3
	call 067e8h		;a7c4
	ld (ix+000h),d		;a7c7
	ld (ix+02dh),c		;a7ca
	ret			;a7cd
	ld l,(iy+031h)		;a7ce
	ld h,(iy+032h)		;a7d1
	ld e,(iy+02fh)		;a7d4
	ld d,000h		;a7d7
	add hl,de		;a7d9
	call 067e7h		;a7da
	call 06796h		;a7dd
	ld (ix+000h),a		;a7e0
	ld (ix+02dh),c		;a7e3
	ret			;a7e6
	ld a,(hl)		;a7e7
	ld b,a			;a7e8
	rlca			;a7e9
	ld a,b			;a7ea
	jr nc,la7f4h		;a7eb
	and 03fh		;a7ed
	ld (ix+030h),a		;a7ef
	inc hl			;a7f2
	ld b,(hl)		;a7f3
la7f4h:
	ld (ix+02fh),b		;a7f4
	ld (ix+031h),l		;a7f7
	ld (ix+032h),h		;a7fa
	ret			;a7fd
	ld a,001h		;a7fe
	call 06871h		;a800
	ret c			;a803
	set 7,(ix+034h)		;a804
	call 04656h		;a808
	call 066ebh		;a80b
	call 06938h		;a80e
	jp 04656h		;a811
	ld a,001h		;a814
	call 06871h		;a816
	ret c			;a819
	set 7,(ix+034h)		;a81a
	call 04656h		;a81e
	call 066ebh		;a821
	call 0694dh		;a824
	jp 04656h		;a827
	ld b,(ix+02eh)		;a82a
	push bc			;a82d
	call 06836h		;a82e
	pop bc			;a831
	ld (ix+02eh),b		;a832
	ret			;a835
	ld a,001h		;a836
	call 06871h		;a838
	ret c			;a83b
	set 7,(ix+034h)		;a83c
	call 04656h		;a840
	call 066ebh		;a843
	call 06964h		;a846
	jp 04656h		;a849
	ld d,a			;a84c
	ld a,001h		;a84d
	call 06871h		;a84f
	ret c			;a852
	call 04656h		;a853
	call 066dch		;a856
	or a			;a859
	jp 04656h		;a85a
	ld d,a			;a85d
	ld a,001h		;a85e
	call 06871h		;a860
	ret c			;a863
	call 04656h		;a864
	call 066dch		;a867
	call 0694dh		;a86a
	or a			;a86d
	jp 04656h		;a86e
	ld hl,0ce44h		;a871
	ld b,(hl)		;a874
	ld c,a			;a875
	and 07fh		;a876
	cp (hl)			;a878
	ld b,a			;a879
	ccf			;a87a
	ret nc			;a87b
	bit 7,c			;a87c
	jr nz,la884h		;a87e
	ld a,(hl)		;a880
	and a			;a881
	ld b,a			;a882
	ret nz			;a883
la884h:
	scf			;a884
	ret			;a885
	res 7,(iy+000h)		;a886
	ret			;a88a
	inc (ix+039h)		;a88b
	ld c,(ix+039h)		;a88e
	ld hl,0ce80h		;a891
	ld b,014h		;a894
la896h:
	push hl			;a896
	ld de,00034h		;a897
	add hl,de		;a89a
	ld e,(hl)		;a89b
	ld a,(ix+02dh)		;a89c
	cp e			;a89f
	jr nz,la8a8h		;a8a0
	ld de,00004h		;a8a2
	add hl,de		;a8a5
	ld a,(hl)		;a8a6
	cp c			;a8a7
la8a8h:
	pop hl			;a8a8
	jr z,la8b5h		;a8a9
	ld de,00040h		;a8ab
	add hl,de		;a8ae
	djnz la896h		;a8af
	scf			;a8b1
	ld hl,0d700h		;a8b2
la8b5h:
	push hl			;a8b5
	pop iy			;a8b6
	ret			;a8b8
	ld a,(ix+035h)		;a8b9
	and a			;a8bc
	jr z,la8cfh		;a8bd
	rla			;a8bf
	ret c			;a8c0
	rra			;a8c1
	jr la8f8h		;a8c2
	ld a,(ix+036h)		;a8c4
	and a			;a8c7
	jr z,la8cfh		;a8c8
	rla			;a8ca
	ret c			;a8cb
	rra			;a8cc
	jr la8f8h		;a8cd
la8cfh:
	ld hl,0d700h		;a8cf
	scf			;a8d2
	ret			;a8d3
	ld a,(ix+036h)		;a8d4
	jr la8f8h		;a8d7
	ld a,(iy+036h)		;a8d9
	jr la8f8h		;a8dc
	ld a,(ix+034h)		;a8de
	ld c,a			;a8e1
	and 03fh		;a8e2
	call 068f8h		;a8e4
	ld a,c			;a8e7
	bit 6,a			;a8e8
	jr nz,la8f2h		;a8ea
	and 03fh		;a8ec
	cp (iy+02dh)		;a8ee
	ret			;a8f1
la8f2h:
	ld iy,0d700h		;a8f2
	scf			;a8f6
	ret			;a8f7
la8f8h:
	call 068ffh		;a8f8
	push hl			;a8fb
	pop iy			;a8fc
	ret			;a8fe
	dec a			;a8ff
	rrca			;a900
	rrca			;a901
	ld b,a			;a902
	and 0f0h		;a903
	ld l,a			;a905
	ld a,b			;a906
	and 00fh		;a907
	ld h,a			;a909
	ld de,0ce80h		;a90a
	add hl,de		;a90d
	ret			;a90e
	ld bc,00000h		;a90f
	exx			;a912
	call 068deh		;a913
	exx			;a916
	ld a,(iy+008h)		;a917
	add a,c			;a91a
	ld (ix+008h),a		;a91b
	ld a,(iy+00ah)		;a91e
	add a,b			;a921
	ld (ix+00ah),a		;a922
	ret			;a925
	ld bc,00000h		;a926
	ld a,(ix+008h)		;a929
	add a,c			;a92c
	ld (iy+008h),a		;a92d
	ld a,(ix+00ah)		;a930
	add a,b			;a933
	ld (iy+00ah),a		;a934
	ret			;a937
	call 0694dh		;a938
	ld a,(iy+02dh)		;a93b
	ld b,(ix+02dh)		;a93e
	cp b			;a941
	jr nc,la94bh		;a942
	ld (ix+03ah),c		;a944
	ld (ix+000h),05fh	;a947
la94bh:
	xor a			;a94b
	ret			;a94c
	inc (iy+037h)		;a94d
	ld a,(iy+037h)		;a950
	ld (iy+03bh),a		;a953
	ld (ix+038h),a		;a956
	ld a,(ix+000h)		;a959
	ld c,a			;a95c
	ld a,(iy+02dh)		;a95d
	ld (ix+034h),a		;a960
	ret			;a963
	inc (iy+037h)		;a964
	ld a,(iy+037h)		;a967
	ld (ix+038h),a		;a96a
	ld c,(ix+000h)		;a96d
	ld a,(iy+02dh)		;a970
	ld (ix+034h),a		;a973
	ld a,(iy+033h)		;a976
	ld b,(ix+02dh)		;a979
	ld (iy+033h),b		;a97c
	and a			;a97f
	jr z,la991h		;a980
	ld (ix+035h),a		;a982
	call 068ffh		;a985
	ld de,00036h		;a988
	add hl,de		;a98b
	ld a,(ix+02dh)		;a98c
	ld (hl),a		;a98f
	ret			;a990
la991h:
	ld a,(iy+02dh)		;a991
	ld (ix+035h),a		;a994
	ld a,(ix+02dh)		;a997
	ld (iy+036h),a		;a99a
	ret			;a99d
	xor a			;a99e
	ld (ix+02eh),a		;a99f
	ret			;a9a2
	push ix			;a9a3
	pop iy			;a9a5
	push af			;a9a7
	call 0671ah		;a9a8
	jp c,0469fh		;a9ab
	push bc			;a9ae
	call 06747h		;a9af
	pop bc			;a9b2
	ld (ix+02dh),c		;a9b3
	pop af			;a9b6
	ld (ix+000h),a		;a9b7
	call 066f4h		;a9ba
	or a			;a9bd
	ret			;a9be
	call 069a3h		;a9bf
	ret c			;a9c2
	call 0694dh		;a9c3
	inc (iy+039h)		;a9c6
	set 7,(iy+034h)		;a9c9
	res 7,(ix+000h)		;a9cd
	res 7,(ix+03ah)		;a9d1
	or a			;a9d5
	ret			;a9d6
	ld a,(0ca10h)		;a9d7
	ld (0ce4bh),a		;a9da
	inc (ix+03fh)		;a9dd
	ld a,(ix+016h)		;a9e0
	rrca			;a9e3
	rrca			;a9e4
	and 03fh		;a9e5
	ld (0ce4ah),a		;a9e7
	xor a			;a9ea
	ld hl,0ce48h		;a9eb
	ld (hl),a		;a9ee
	inc hl			;a9ef
	ld (hl),a		;a9f0
	ret			;a9f1
	call 069d7h		;a9f2
	ld a,008h		;a9f5
	ld (0ce4bh),a		;a9f7
	ret			;a9fa
	ld hl,0ce48h		;a9fb
	ld a,001h		;a9fe
	ld (hl),a		;aa00
	inc hl			;aa01
	ld (hl),a		;aa02
	call 04bb0h		;aa03
	call 06a3ch		;aa06
	call 04b99h		;aa09
	xor a			;aa0c
	ld de,00000h		;aa0d
	jp 04776h		;aa10
	call 04bb0h		;aa13
	call 06a22h		;aa16
	jp 04b99h		;aa19
	ld hl,0ce48h		;aa1c
	res 1,(hl)		;aa1f
	ret			;aa21
	ld hl,0ce48h		;aa22
	ld de,086c0h		;aa25
	ld a,(hl)		;aa28
	inc hl			;aa29
	cp (hl)			;aa2a
	jr nz,laa34h		;aa2b
	ld a,(0ca02h)		;aa2d
	and 003h		;aa30
	ret nz			;aa32
	ld a,(hl)		;aa33
laa34h:
	ld (hl),a		;aa34
	rrca			;aa35
	rrca			;aa36
	jr c,laa6ch		;aa37
	and a			;aa39
	jr z,laa3fh		;aa3a
	ld de,086d2h		;aa3c
laa3fh:
	call 06a4fh		;aa3f
	ld b,008h		;aa42
laa44h:
	push bc			;aa44
	call 06a5ch		;aa45
	call 04776h		;aa48
	pop bc			;aa4b
	djnz laa44h		;aa4c
	ret			;aa4e
	ld a,(0ce4bh)		;aa4f
	add a,a			;aa52
	ld l,a			;aa53
	ld h,000h		;aa54
	add hl,de		;aa56
	ld e,(hl)		;aa57
	inc hl			;aa58
	ld d,(hl)		;aa59
	ex de,hl		;aa5a
	ret			;aa5b
	ld d,(hl)		;aa5c
	inc hl			;aa5d
	ld b,(hl)		;aa5e
	inc hl			;aa5f
	ld a,b			;aa60
	and 00fh		;aa61
	ld e,a			;aa63
	ld a,b			;aa64
	rlca			;aa65
	rlca			;aa66
	rlca			;aa67
	rlca			;aa68
	and 00fh		;aa69
	ret			;aa6b
laa6ch:
	call 06a4fh		;aa6c
	ld b,008h		;aa6f
laa71h:
	push bc			;aa71
	call 06a5ch		;aa72
	ld de,06606h		;aa75
	call 04776h		;aa78
	pop bc			;aa7b
	djnz laa71h		;aa7c
	ret			;aa7e
	push ix			;aa7f
	pop hl			;aa81
	ld de,00007h		;aa82
	add hl,de		;aa85
	ld d,h			;aa86
	ld e,l			;aa87
	ld a,004h		;aa88
	add a,e			;aa8a
	ld e,a			;aa8b
	call 06a8fh		;aa8c
laa8fh:
	ld a,(de)		;aa8f
	add a,(hl)		;aa90
	ld (hl),a		;aa91
	inc l			;aa92
	inc e			;aa93
	ld a,(de)		;aa94
	adc a,(hl)		;aa95
	ld (hl),a		;aa96
	inc l			;aa97
	inc e			;aa98
	ret			;aa99
	push ix			;aa9a
	pop hl			;aa9c
	ld de,0000bh		;aa9d
	add hl,de		;aaa0
	ld e,l			;aaa1
	ld d,h			;aaa2
	ld a,004h		;aaa3
	add a,e			;aaa5
	ld e,a			;aaa6
	call 06a8fh		;aaa7
	jr laa8fh		;aaaa
	ld a,(0ca10h)		;aaac
	ld h,000h		;aaaf
	ld l,a			;aab1
	add hl,de		;aab2
	ld a,(hl)		;aab3
	ld (ix+005h),a		;aab4
	ret			;aab7
	ld a,(ix+005h)		;aab8
	call 06acch		;aabb
	ld (ix+005h),a		;aabe
	ret			;aac1
	ld a,(ix+006h)		;aac2
	call 06acch		;aac5
	ld (ix+006h),a		;aac8
	ret			;aacb
	inc a			;aacc
	cp b			;aacd
	jr nz,laad1h		;aace
	xor a			;aad0
laad1h:
	ret			;aad1
	ld a,(ix+017h)		;aad2
	dec a			;aad5
	ret z			;aad6
	ld (ix+017h),a		;aad7
	ret			;aada
	ld (ix+017h),a		;aadb
	ret			;aade
	ld a,(ix+018h)		;aadf
	dec a			;aae2
	ret z			;aae3
	ld (ix+018h),a		;aae4
	ret			;aae7
	ld (ix+018h),a		;aae8
	ret			;aaeb
	ld a,(ix+018h)		;aaec
	bit 7,a			;aaef
	jr nz,laaf9h		;aaf1
	ld c,000h		;aaf3
	inc a			;aaf5
	cp b			;aaf6
	jr nz,lab02h		;aaf7
laaf9h:
	ld c,080h		;aaf9
	and 07fh		;aafb
	dec a			;aafd
	jr nz,lab02h		;aafe
	ld c,000h		;ab00
lab02h:
	or c			;ab02
	ld (ix+018h),a		;ab03
	ret			;ab06
	ld l,(ix+00bh)		;ab07
	ld h,(ix+00ch)		;ab0a
	ld a,h			;ab0d
	rlca			;ab0e
	call c,04612h		;ab0f
	jp 04650h		;ab12
	ld l,(ix+00dh)		;ab15
	ld h,(ix+00eh)		;ab18
	ld a,h			;ab1b
	rlca			;ab1c
	call c,04612h		;ab1d
	jp 04650h		;ab20
	ld l,(ix+00fh)		;ab23
	ld h,(ix+010h)		;ab26
	call 04612h		;ab29
	ld (ix+00fh),l		;ab2c
	ld (ix+010h),h		;ab2f
	ret			;ab32
	ld l,(ix+011h)		;ab33
	ld h,(ix+012h)		;ab36
	call 04612h		;ab39
	ld (ix+011h),l		;ab3c
	ld (ix+012h),h		;ab3f
	ret			;ab42
	ld l,(ix+00bh)		;ab43
	ld h,(ix+00ch)		;ab46
	call 04612h		;ab49
	ld (ix+00bh),l		;ab4c
	ld (ix+00ch),h		;ab4f
	ret			;ab52
	ld l,(ix+00dh)		;ab53
	ld h,(ix+00eh)		;ab56
	call 04612h		;ab59
	ld (ix+00dh),l		;ab5c
	ld (ix+00eh),h		;ab5f
	ret			;ab62
	ld (0ca26h),a		;ab63
	call 07270h		;ab66
	jp 07240h		;ab69
	call 06b85h		;ab6c
	call 07240h		;ab6f
	ld (ix+00bh),l		;ab72
	ld (ix+00ch),h		;ab75
	ld (ix+00dh),e		;ab78
	ld (ix+00eh),d		;ab7b
	ret			;ab7e
	call 06b85h		;ab7f
	jp 07240h		;ab82
	ld (0ca26h),a		;ab85
	call 071d6h		;ab88
	jp 07270h		;ab8b
	call 071b8h		;ab8e
	jp 07270h		;ab91
	ld c,000h		;ab94
	ld a,(0ca4ah)		;ab96
	sub (ix+00ah)		;ab99
	jr nc,laba2h		;ab9c
	neg			;ab9e
	or 080h			;aba0
laba2h:
	ld d,a			;aba2
	ld a,(0ca48h)		;aba3
	sub (ix+008h)		;aba6
	jr nc,labafh		;aba9
	neg			;abab
	or 080h			;abad
labafh:
	ld e,a			;abaf
	ld a,d			;abb0
	rlca			;abb1
	jr nc,labbeh		;abb2
	ld c,000h		;abb4
	ld a,e			;abb6
	rlca			;abb7
	jr c,labc6h		;abb8
	ld c,006h		;abba
	jr labc6h		;abbc
labbeh:
	ld c,002h		;abbe
	ld a,e			;abc0
	rlca			;abc1
	jr c,labc6h		;abc2
	ld c,004h		;abc4
labc6h:
	ld b,000h		;abc6
	ld a,d			;abc8
	rlca			;abc9
	jr nc,labceh		;abca
	ld b,080h		;abcc
labceh:
	srl a			;abce
	ld d,a			;abd0
	ld a,e			;abd1
	and 080h		;abd2
	xor b			;abd4
	ld b,a			;abd5
	ld a,e			;abd6
	and 07fh		;abd7
	sub d			;abd9
	jr c,labe1h		;abda
	ld a,b			;abdc
	and a			;abdd
	ret nz			;abde
	inc c			;abdf
	ret			;abe0
labe1h:
	ld a,b			;abe1
	and a			;abe2
	ret z			;abe3
	inc c			;abe4
	ret			;abe5
	call 06bfah		;abe6
	jr labf0h		;abe9
	call 06bfdh		;abeb
	jr labf3h		;abee
labf0h:
	ld hl,00000h		;abf0
labf3h:
	ld (ix+00bh),l		;abf3
	ld (ix+00ch),h		;abf6
	ret			;abf9
	ld de,00000h		;abfa
	ld (ix+00dh),e		;abfd
	ld (ix+00eh),d		;ac00
	ret			;ac03
	call 06c16h		;ac04
	jr lac0ch		;ac07
	ld hl,00000h		;ac09
lac0ch:
	ld (ix+00fh),l		;ac0c
	ld (ix+010h),h		;ac0f
	ret			;ac12
	ld de,00000h		;ac13
	ld (ix+011h),e		;ac16
	ld (ix+012h),d		;ac19
	ret			;ac1c
	inc (ix+001h)		;ac1d
	ret			;ac20
	bit 2,(ix+015h)		;ac21
	ret z			;ac25
	call 06c3ah		;ac26
	ld hl,(0ca12h)		;ac29
	ld e,(ix+007h)		;ac2c
	ld d,(ix+008h)		;ac2f
	add hl,de		;ac32
	ld (ix+007h),l		;ac33
	ld (ix+008h),h		;ac36
	ret			;ac39
	ld hl,(0ca14h)		;ac3a
	ld e,(ix+009h)		;ac3d
	ld d,(ix+00ah)		;ac40
	add hl,de		;ac43
	ld (ix+009h),l		;ac44
	ld (ix+00ah),h		;ac47
	ret			;ac4a
	push ix			;ac4b
	push iy			;ac4d
	call 04c2ah		;ac4f
	add hl,bc		;ac52
	ld a,(bc)		;ac53
	dec bc			;ac54
	add hl,bc		;ac55
	ld l,l			;ac56
	pop iy			;ac57
	pop ix			;ac59
	ret			;ac5b
	push ix			;ac5c
	push iy			;ac5e
	call 04c2ah		;ac60
	add hl,bc		;ac63
	ld a,(bc)		;ac64
	dec bc			;ac65
lac66h:
	inc c			;ac66
	ld l,l			;ac67
	pop iy			;ac68
	pop ix			;ac6a
	ret			;ac6c
	ld (0c0dch),hl		;ac6d
	ld (0c0deh),de		;ac70
	ret			;ac74
	add a,(ix+008h)		;ac75
	neg			;ac78
	add a,a			;ac7a
	add a,a			;ac7b
	add a,a			;ac7c
	and 0f8h		;ac7d
	ld d,a			;ac7f
	ld a,(ix+009h)		;ac80
	and 0e0h		;ac83
	neg			;ac85
	and 0e0h		;ac87
	ld (0ca1ch),a		;ac89
	rlca			;ac8c
	rlca			;ac8d
	rlca			;ac8e
	ld (0c0bbh),a		;ac8f
	ld a,(ix+007h)		;ac92
	and 0e0h		;ac95
	jr z,lac9fh		;ac97
	ex af,af'		;ac99
	ld a,d			;ac9a
	sub 008h		;ac9b
	ld d,a			;ac9d
	ex af,af'		;ac9e
lac9fh:
	neg			;ac9f
	and 0e0h		;aca1
	ld (0ca1ah),a		;aca3
	rlca			;aca6
	rlca			;aca7
	rlca			;aca8
	or d			;aca9
	ld (0c0d2h),a		;acaa
	ret			;acad
	call 06cb5h		;acae
	call 06a9ah		;acb1
	ret			;acb4
	push hl			;acb5
	push de			;acb6
	pop bc			;acb7
	call 06ccdh		;acb8
	pop bc			;acbb
	ld h,(ix+00eh)		;acbc
	ld l,(ix+00dh)		;acbf
	call 06cdeh		;acc2
	or a			;acc5
	sbc hl,bc		;acc6
	ret c			;acc8
	call 06b33h		;acc9
	ret			;accc
	ld h,(ix+00ch)		;accd
	ld l,(ix+00bh)		;acd0
	call 06cdeh		;acd3
	or a			;acd6
	sbc hl,bc		;acd7
	ret c			;acd9
	call 06b23h		;acda
	ret			;acdd
	bit 7,h			;acde
	ret z			;ace0
	ld a,h			;ace1
	cpl			;ace2
	ld h,a			;ace3
	ld a,l			;ace4
	cpl			;ace5
	ld l,a			;ace6
	inc hl			;ace7
	ret			;ace8
	ld (ix+02ah),0ffh	;ace9
	ret			;aced
	push af			;acee
	call 06d2ch		;acef
	pop af			;acf2
	jr nz,lad0eh		;acf3
	ld a,(ix+00ah)		;acf5
	ld (ix+028h),a		;acf8
	ld a,(ix+009h)		;acfb
	ld (ix+029h),a		;acfe
	ld a,(ix+008h)		;ad01
	ld (ix+02ah),a		;ad04
	ld a,(ix+007h)		;ad07
	ld (ix+02bh),a		;ad0a
	ret			;ad0d
lad0eh:
	ld a,(ix+02ah)		;ad0e
	inc a			;ad11
	ret z			;ad12
	ld a,(ix+028h)		;ad13
	ld (ix+00ah),a		;ad16
	ld a,(ix+029h)		;ad19
	ld (ix+009h),a		;ad1c
	ld a,(ix+02ah)		;ad1f
	ld (ix+008h),a		;ad22
	ld a,(ix+02bh)		;ad25
	ld (ix+007h),a		;ad28
	ret			;ad2b
	ld de,(0ca14h)		;ad2c
	ld h,(ix+028h)		;ad30
	ld l,(ix+029h)		;ad33
	add hl,de		;ad36
	ld (ix+028h),h		;ad37
	ld (ix+029h),l		;ad3a
	ld de,(0ca12h)		;ad3d
	ld h,(ix+02ah)		;ad41
	ld l,(ix+02bh)		;ad44
	add hl,de		;ad47
	ld (ix+02ah),h		;ad48
	ld (ix+02bh),l		;ad4b
	ret			;ad4e
	push hl			;ad4f
	ld b,d			;ad50
	ld c,e			;ad51
	ld h,(ix+00eh)		;ad52
	ld l,(ix+00dh)		;ad55
	ld d,h			;ad58
	ld e,l			;ad59
	add hl,hl		;ad5a
	add hl,hl		;ad5b
	add hl,hl		;ad5c
	or a			;ad5d
	sbc hl,de		;ad5e
	add hl,bc		;ad60
	sra h			;ad61
	rr l			;ad63
	sra h			;ad65
	rr l			;ad67
	sra h			;ad69
	rr l			;ad6b
	ld (ix+00eh),h		;ad6d
	ld (ix+00dh),l		;ad70
	pop bc			;ad73
	ld h,(ix+00ch)		;ad74
	ld l,(ix+00bh)		;ad77
	ld d,h			;ad7a
	ld e,l			;ad7b
	add hl,hl		;ad7c
	add hl,hl		;ad7d
	add hl,hl		;ad7e
	or a			;ad7f
	sbc hl,de		;ad80
	add hl,bc		;ad82
	sra h			;ad83
	rr l			;ad85
	sra h			;ad87
	rr l			;ad89
	sra h			;ad8b
	rr l			;ad8d
	ld (ix+00ch),h		;ad8f
	ld (ix+00bh),l		;ad92
	ret			;ad95
	push hl			;ad96
	ld b,d			;ad97
	ld c,e			;ad98
	ld h,(ix+00eh)		;ad99
	ld l,(ix+00dh)		;ad9c
	ld d,h			;ad9f
	ld e,l			;ada0
	add hl,hl		;ada1
	add hl,hl		;ada2
	or a			;ada3
	sbc hl,de		;ada4
	add hl,bc		;ada6
	sra h			;ada7
	rr l			;ada9
	sra h			;adab
	rr l			;adad
	ld (ix+00eh),h		;adaf
	ld (ix+00dh),l		;adb2
	pop bc			;adb5
	ld h,(ix+00ch)		;adb6
	ld l,(ix+00bh)		;adb9
	ld d,h			;adbc
	ld e,l			;adbd
	add hl,hl		;adbe
	add hl,hl		;adbf
	or a			;adc0
	sbc hl,de		;adc1
	add hl,bc		;adc3
	sra h			;adc4
	rr l			;adc6
	sra h			;adc8
	rr l			;adca
	ld (ix+00ch),h		;adcc
	ld (ix+00bh),l		;adcf
	ret			;add2
	call 06e2ch		;add3
	ret c			;add6
	ret z			;add7
	call 06edah		;add8
	call nc,06e98h		;addb
	or a			;adde
	jr ladech		;addf
	call 06e2ch		;ade1
	ret c			;ade4
	ret z			;ade5
	call 06f0dh		;ade6
	jp c,06e98h		;ade9
ladech:
	call 07c44h		;adec
	call c,07cc3h		;adef
	jp 07747h		;adf2
	call 06e2ch		;adf5
	ret c			;adf8
	ret z			;adf9
	call 06eedh		;adfa
	jp c,06e98h		;adfd
	call 07c44h		;ae00
	call c,07cc3h		;ae03
	jp 07747h		;ae06
	call 06e2ch		;ae09
	ret c			;ae0c
	ret z			;ae0d
	call 06effh		;ae0e
	jp c,06e98h		;ae11
	call 07c44h		;ae14
	call c,07cc3h		;ae17
	jp 07747h		;ae1a
	call 06f1fh		;ae1d
	jp c,06e98h		;ae20
	call 07c44h		;ae23
	call c,07cc3h		;ae26
	jp 07747h		;ae29
	ld a,(ix+000h)		;ae2c
	ld b,a			;ae2f
	and a			;ae30
	ret z			;ae31
	rla			;ae32
	ld a,b			;ae33
	ret			;ae34
	call 06f47h		;ae35
	jp c,06e98h		;ae38
	call 07c44h		;ae3b
	call c,07cc3h		;ae3e
	jp 07747h		;ae41
	call 07c63h		;ae44
	call c,06e50h		;ae47
	call c,07cc3h		;ae4a
	jp 07747h		;ae4d
	ex af,af'		;ae50
	ld a,001h		;ae51
	ld (0ce52h),a		;ae53
	ld (0ce76h),a		;ae56
	ld a,(0ce6ah)		;ae59
	add a,(ix+008h)		;ae5c
	ld (ix+008h),a		;ae5f
	ld a,(0ce69h)		;ae62
	add a,(ix+00ah)		;ae65
	ld (ix+00ah),a		;ae68
	ex af,af'		;ae6b
	ret			;ae6c
	ret			;ae6d
	call 06eedh		;ae6e
	jp c,06each		;ae71
	ld a,(ix+004h)		;ae74
	or a			;ae77
	jp nz,06each		;ae78
	call 07c27h		;ae7b
	jp 07747h		;ae7e
	call 06eedh		;ae81
	jp c,06each		;ae84
	ld a,(ix+004h)		;ae87
	or a			;ae8a
	jp nz,06each		;ae8b
	jp 07747h		;ae8e
	ld a,001h		;ae91
	ld (0ce4fh),a		;ae93
	ret			;ae96
	ret			;ae97
	call 07d3eh		;ae98
	ld hl,0ce44h		;ae9b
	inc (hl)		;ae9e
	call 06eb4h		;ae9f
	xor a			;aea2
	ld (ix+034h),a		;aea3
	ld (ix+02dh),a		;aea6
	ld (ix+038h),a		;aea9
	xor a			;aeac
	ld (ix+000h),a		;aead
	ld (ix+015h),a		;aeb0
	ret			;aeb3
	xor a			;aeb4
	ld (ix+019h),a		;aeb5
	ld (ix+01ah),a		;aeb8
	ld (ix+01bh),a		;aebb
	ld (ix+01ch),a		;aebe
	ld (ix+01dh),a		;aec1
	ld (ix+01eh),a		;aec4
	ld (ix+01fh),a		;aec7
	ret			;aeca
	ld a,(ix+015h)		;aecb
	ld b,a			;aece
	rlca			;aecf
	rlca			;aed0
	rlca			;aed1
	and 003h		;aed2
	or b			;aed4
	ld (ix+015h),a		;aed5
	and a			;aed8
	ret			;aed9
	call 06ecbh		;aeda
	ld a,(ix+008h)		;aedd
	add a,008h		;aee0
	sub 028h		;aee2
	ret nc			;aee4
	ld a,(ix+00ah)		;aee5
	add a,00ah		;aee8
	sub 034h		;aeea
	ret			;aeec
	call 06ecbh		;aeed
	ret z			;aef0
	ld de,018fch		;aef1
	ld hl,022feh		;aef4
	ld a,(ix+008h)		;aef7
	ld b,(ix+00ah)		;aefa
	jr laf2dh		;aefd
	ld de,01bf0h		;aeff
	ld hl,022feh		;af02
	ld a,(ix+008h)		;af05
	ld b,(ix+00ah)		;af08
	jr laf2dh		;af0b
	call 06ecbh		;af0d
	ret z			;af10
	ld de,01afeh		;af11
	ld hl,022feh		;af14
	ld a,(ix+008h)		;af17
	ld b,(ix+00ah)		;af1a
	jr laf2dh		;af1d
	ld de,01af8h		;af1f
	ld hl,022f0h		;af22
	ld a,(ix+008h)		;af25
	ld b,(ix+00ah)		;af28
	jr laf2dh		;af2b
laf2dh:
	bit 7,a			;af2d
	jr nz,laf36h		;af2f
	cp d			;af31
	jr nc,laf45h		;af32
	jr laf39h		;af34
laf36h:
	cp e			;af36
	jr c,laf45h		;af37
laf39h:
	ld a,b			;af39
	bit 7,a			;af3a
	jr nz,laf43h		;af3c
	cp h			;af3e
	jr nc,laf45h		;af3f
	or a			;af41
	ret			;af42
laf43h:
	cp l			;af43
	ret nc			;af44
laf45h:
	scf			;af45
	ret			;af46
	ld de,02cf6h		;af47
	ld hl,02cf6h		;af4a
	ld a,(ix+008h)		;af4d
	ld b,(ix+00ah)		;af50
	jr laf2dh		;af53
	push ix			;af55
	push de			;af57
	call 0671ah		;af58
	jr c,laf88h		;af5b
	call 06747h		;af5d
	ld (ix+000h),003h	;af60
	call 066f4h		;af64
	pop de			;af67
	ld (ix+00ah),d		;af68
	ld (ix+008h),e		;af6b
	ld bc,(0ca31h)		;af6e
	ld a,b			;af72
	rrca			;af73
	rrca			;af74
	rrca			;af75
	neg			;af76
	ld (ix+009h),a		;af78
	ld a,c			;af7b
	rrca			;af7c
	rrca			;af7d
	rrca			;af7e
	neg			;af7f
	ld (ix+007h),a		;af81
	or a			;af84
	pop ix			;af85
	ret			;af87
laf88h:
	pop bc			;af88
	pop ix			;af89
	ret			;af8b
	ld ix,0cac0h		;af8c
	ld a,(ix+000h)		;af90
	or a			;af93
	jr z,lafa2h		;af94
	ld ix,0cae0h		;af96
	ld a,(ix+000h)		;af9a
	or a			;af9d
	jr z,lafa2h		;af9e
	scf			;afa0
	ret			;afa1
lafa2h:
	push de			;afa2
	push hl			;afa3
	push ix			;afa4
	pop hl			;afa6
	ld bc,0001fh		;afa7
	call 04648h		;afaa
	pop hl			;afad
	pop de			;afae
	ld (ix+015h),091h	;afaf
	ld (ix+013h),003h	;afb3
	ld (ix+014h),003h	;afb7
	ld (ix+000h),002h	;afbb
	ld (ix+00ah),d		;afbf
	ld (ix+009h),e		;afc2
	ld (ix+008h),h		;afc5
	ld (ix+007h),l		;afc8
	or a			;afcb
	ret			;afcc
	call 07024h		;afcd
	call 06fe1h		;afd0
	ld (ix+003h),a		;afd3
	ld hl,07049h		;afd6
	call 04600h		;afd9
	ld a,(hl)		;afdc
	ld (ix+006h),a		;afdd
	ret			;afe0
	push af			;afe1
	call 06ff7h		;afe2
	or a			;afe5
	jr nz,lafeah		;afe6
	pop af			;afe8
	ret			;afe9
lafeah:
	dec a			;afea
	jr nz,laff2h		;afeb
	ld a,00eh		;afed
	jp 0469fh		;afef
laff2h:
	ld a,00ch		;aff2
	jp 0469fh		;aff4
	cp 003h			;aff7
	jr z,lb005h		;aff9
	cp 00ah			;affb
	jr z,lb00dh		;affd
	cp 007h			;afff
	jr z,lb017h		;b001
lb003h:
	xor a			;b003
	ret			;b004
lb005h:
	ld a,(0cb48h)		;b005
	or a			;b008
	ret z			;b009
	ld a,001h		;b00a
	ret			;b00c
lb00dh:
	ld a,(0cb41h)		;b00d
	cp 00ah			;b010
	jr nz,lb003h		;b012
	ld a,002h		;b014
	ret			;b016
lb017h:
	ld a,(0cb50h)		;b017
	or a			;b01a
	ret z			;b01b
	ld a,(0cb58h)		;b01c
	or a			;b01f
	ret z			;b020
	ld a,001h		;b021
	ret			;b023
	or a			;b024
	ld a,(0cc01h)		;b025
	ld hl,07042h		;b028
	ld bc,00008h		;b02b
	cpir			;b02e
	ld a,002h		;b030
	jr nz,lb035h		;b032
	ld a,(hl)		;b034
lb035h:
	ld (0cc01h),a		;b035
	ret			;b038
	dec a			;b039
	ld hl,07042h		;b03a
	call 04600h		;b03d
	ld a,(hl)		;b040
	ret			;b041
	ld (bc),a		;b042
	ld c,003h		;b043
	rlca			;b045
	ld a,(bc)		;b046
	dec bc			;b047
	ld (bc),a		;b048
	rst 38h			;b049
	rst 38h			;b04a
	nop			;b04b
	ld (bc),a		;b04c
	rst 38h			;b04d
	rst 38h			;b04e
	rst 38h			;b04f
	inc bc			;b050
	rst 38h			;b051
	rst 38h			;b052
	ld bc,00804h		;b053
	ld b,007h		;b056
	ld hl,0ce80h		;b058
	ld b,014h		;b05b
lb05dh:
	ld a,(hl)		;b05d
	and a			;b05e
	jr z,lb081h		;b05f
	bit 7,a			;b061
	jr nz,lb081h		;b063
	push bc			;b065
	push hl			;b066
	ld hl,070b7h		;b067
	ld bc,00023h		;b06a
	cpir			;b06d
	pop hl			;b06f
	pop bc			;b070
	jr z,lb081h		;b071
	push hl			;b073
	ld de,00004h		;b074
	add hl,de		;b077
	ld (hl),001h		;b078
	ld de,00012h		;b07a
	add hl,de		;b07d
	ld (hl),000h		;b07e
	pop hl			;b080
lb081h:
	ld de,00040h		;b081
	add hl,de		;b084
	djnz lb05dh		;b085
	call 0708bh		;b087
	ret			;b08a
	ld hl,0ce80h		;b08b
	ld b,014h		;b08e
lb090h:
	ld a,(hl)		;b090
	push bc			;b091
	push hl			;b092
	ld hl,070d2h		;b093
	ld bc,00008h		;b096
	cpir			;b099
	jr z,lb0a6h		;b09b
	pop hl			;b09d
	pop bc			;b09e
	ld de,00040h		;b09f
	add hl,de		;b0a2
	djnz lb090h		;b0a3
	ret			;b0a5
lb0a6h:
	pop hl			;b0a6
	pop bc			;b0a7
	ld de,00016h		;b0a8
	add hl,de		;b0ab
	ld a,(0ce4ah)		;b0ac
	dec a			;b0af
	ld (hl),a		;b0b0
	ld hl,0ce48h		;b0b1
	ld (hl),001h		;b0b4
	ret			;b0b6
	ld h,l			;b0b7
	ld (bc),a		;b0b8
	inc bc			;b0b9
	ld c,024h		;b0ba
	ld hl,(07235h)		;b0bc
	ld (hl),l		;b0bf
	add hl,sp		;b0c0
	ld c,b			;b0c1
	ld c,l			;b0c2
	ld l,c			;b0c3
	ld l,d			;b0c4
	ld l,e			;b0c5
	ld d,d			;b0c6
	ld d,e			;b0c7
	ld d,h			;b0c8
	dec sp			;b0c9
	inc a			;b0ca
	dec a			;b0cb
	ld a,h			;b0cc
	ccf			;b0cd
	ld e,a			;b0ce
	ld a,b			;b0cf
	ld a,c			;b0d0
	ld d,(hl)		;b0d1
	ld a,03eh		;b0d2
	ld h,h			;b0d4
	ld (hl),c		;b0d5
	ld a,d			;b0d6
	inc d			;b0d7
	ld (hl),a		;b0d8
	ld a,e			;b0d9
	push af			;b0da
	call 07207h		;b0db
	pop de			;b0de
	scf			;b0df
	ret nz			;b0e0
	push de			;b0e1
	call 0721dh		;b0e2
	pop de			;b0e5
	ld (hl),d		;b0e6
	push hl			;b0e7
	pop ix			;b0e8
	call 066f7h		;b0ea
	or a			;b0ed
	ret			;b0ee
	ld a,(ix+013h)		;b0ef
	rrca			;b0f2
	and 03fh		;b0f3
	add a,(ix+008h)		;b0f5
	ld h,a			;b0f8
	ld l,(ix+007h)		;b0f9
	ld a,(ix+014h)		;b0fc
	rrca			;b0ff
	and 03fh		;b100
	add a,(ix+00ah)		;b102
	ld d,a			;b105
	ld e,(ix+009h)		;b106
	ld bc,00c00h		;b109
	call 07725h		;b10c
	ret			;b10f
	call 07197h		;b110
	ld iy,0ca40h		;b113
	ld b,(iy+00ah)		;b117
	ld c,(iy+008h)		;b11a
	push bc			;b11d
	push iy			;b11e
	call 04678h		;b120
	and 007h		;b123
	sub 004h		;b125
	add a,b			;b127
	ld (iy+00ah),a		;b128
	call 04678h		;b12b
	and 007h		;b12e
	sub 004h		;b130
	add a,c			;b132
	ld (iy+008h),a		;b133
	call 0714ah		;b136
	pop iy			;b139
	pop bc			;b13b
	ld (iy+00ah),b		;b13c
	ld (iy+008h),c		;b13f
	ret			;b142
	call 070efh		;b143
	ret c			;b146
	call 07197h		;b147
	call 07207h		;b14a
	ret nz			;b14d
	call 0721dh		;b14e
	push hl			;b151
	call 071b8h		;b152
	call 07270h		;b155
	call 07240h		;b158
	pop bc			;b15b
	ld a,c			;b15c
	ld c,l			;b15d
	ld l,a			;b15e
	ld a,b			;b15f
	ld b,h			;b160
	ld h,a			;b161
	ld a,060h		;b162
	ld (hl),a		;b164
	push hl			;b165
	ld a,008h		;b166
	add a,l			;b168
	ld l,a			;b169
	ld a,(ix+008h)		;b16a
	ld (hl),a		;b16d
	inc l			;b16e
	inc l			;b16f
	ld a,(ix+00ah)		;b170
	ld (hl),a		;b173
	inc l			;b174
	ld (hl),c		;b175
	inc l			;b176
	ld (hl),b		;b177
	inc l			;b178
	ld (hl),e		;b179
	inc l			;b17a
	ld (hl),d		;b17b
	ld de,00009h		;b17c
	add hl,de		;b17f
	ld (hl),004h		;b180
	pop hl			;b182
	jp 066f7h		;b183
	exx			;b186
	ld hl,071a8h		;b187
	ld de,(0ca19h)		;b18a
	ld d,000h		;b18e
	add hl,de		;b190
	ld a,(hl)		;b191
	ld (0ca26h),a		;b192
	exx			;b195
	ret			;b196
	exx			;b197
	ld hl,071a8h		;b198
	ld de,(0ca19h)		;b19b
	ld d,000h		;b19f
	add hl,de		;b1a1
	ld a,(hl)		;b1a2
	ld (0ca26h),a		;b1a3
	exx			;b1a6
	ret			;b1a7
	djnz $+19		;b1a8
	ld (de),a		;b1aa
	inc de			;b1ab
	inc d			;b1ac
	dec d			;b1ad
	ld d,017h		;b1ae
	rla			;b1b0
	jr $+26			;b1b1
	add hl,de		;b1b3
	add hl,de		;b1b4
	ld a,(de)		;b1b5
	ld a,(de)		;b1b6
	dec de			;b1b7
	ld de,(0ca47h)		;b1b8
	ld bc,(0ca49h)		;b1bc
	call 071eah		;b1c0
	ex de,hl		;b1c3
	ld e,(ix+007h)		;b1c4
	ld d,(ix+008h)		;b1c7
	ld c,(ix+009h)		;b1ca
	ld b,(ix+00ah)		;b1cd
	call 071eah		;b1d0
	ld c,l			;b1d3
	ld b,h			;b1d4
	ret			;b1d5
	ld e,(iy+007h)		;b1d6
	ld d,(iy+008h)		;b1d9
	ld c,(iy+009h)		;b1dc
	ld b,(iy+00ah)		;b1df
	call 071eah		;b1e2
	ex de,hl		;b1e5
	call 071c4h		;b1e6
	ret			;b1e9
	ld a,e			;b1ea
	rlca			;b1eb
	rlca			;b1ec
	rlca			;b1ed
	and 007h		;b1ee
	sla d			;b1f0
	sla d			;b1f2
	sla d			;b1f4
	or d			;b1f6
	ld e,a			;b1f7
	ld a,c			;b1f8
	rlca			;b1f9
	rlca			;b1fa
	rlca			;b1fb
	and 007h		;b1fc
	sla b			;b1fe
	sla b			;b200
	sla b			;b202
	or b			;b204
	ld d,a			;b205
	ret			;b206
	ld hl,0d460h		;b207
	exx			;b20a
	ld b,012h		;b20b
lb20dh:
	exx			;b20d
	ld a,(hl)		;b20e
	and a			;b20f
	ret z			;b210
	ld a,020h		;b211
	add a,l			;b213
	jr nc,lb217h		;b214
	inc h			;b216
lb217h:
	ld l,a			;b217
	exx			;b218
	djnz lb20dh		;b219
	exx			;b21b
	ret			;b21c
	push hl			;b21d
	exx			;b21e
	pop hl			;b21f
	ld b,020h		;b220
	ld c,000h		;b222
lb224h:
	ld (hl),c		;b224
	inc hl			;b225
	djnz lb224h		;b226
	exx			;b228
	ret			;b229
	ld e,a			;b22a
	ld a,d			;b22b
	ld (0ca26h),a		;b22c
	ld a,d			;b22f
	and 080h		;b230
	ld (0ca23h),a		;b232
	ld a,d			;b235
	add a,040h		;b236
	and 080h		;b238
	ld (0ca24h),a		;b23a
	ld a,e			;b23d
	and 03fh		;b23e
	ld d,000h		;b240
	ld e,a			;b242
	sub 03fh		;b243
	neg			;b245
	ld hl,073adh		;b247
	push hl			;b24a
	add hl,de		;b24b
	ld c,(hl)		;b24c
	pop hl			;b24d
	ld e,a			;b24e
	add hl,de		;b24f
	ld a,(hl)		;b250
	ld (0ca22h),a		;b251
	ld e,c			;b254
	call 0729eh		;b255
	ld a,(0ca23h)		;b258
	and a			;b25b
	call nz,0460ah		;b25c
	push de			;b25f
	ld a,(0ca22h)		;b260
	ld e,a			;b263
	call 0729eh		;b264
	ld a,(0ca24h)		;b267
	and a			;b26a
	call nz,0460ah		;b26b
	pop hl			;b26e
	ret			;b26f
	ld hl,0ca23h		;b270
	ld (hl),000h		;b273
	ld a,c			;b275
	sub e			;b276
	jr nc,lb27ch		;b277
	neg			;b279
	inc (hl)		;b27b
lb27ch:
	inc hl			;b27c
	ld (hl),000h		;b27d
	and 0f0h		;b27f
	ld e,a			;b281
	ld a,b			;b282
	sub d			;b283
	jr nc,lb289h		;b284
	neg			;b286
	inc (hl)		;b288
lb289h:
	ld d,a			;b289
	ld a,d			;b28a
	rra			;b28b
	rra			;b28c
	rra			;b28d
	rra			;b28e
	and 00fh		;b28f
	add a,e			;b291
	ld e,a			;b292
	ld d,000h		;b293
	ld hl,073edh		;b295
	add hl,de		;b298
	ld a,(hl)		;b299
	ld (0ca20h),a		;b29a
	ret			;b29d
	ld a,(0ca26h)		;b29e
	ld h,a			;b2a1
	call 072b0h		;b2a2
	xor a			;b2a5
	add hl,hl		;b2a6
	adc a,a			;b2a7
	add hl,hl		;b2a8
	adc a,a			;b2a9
	add hl,hl		;b2aa
	adc a,a			;b2ab
	ld l,h			;b2ac
	ld h,a			;b2ad
	ex de,hl		;b2ae
	ret			;b2af
	ld l,000h		;b2b0
	ld d,l			;b2b2
	add hl,hl		;b2b3
	jr nc,lb2b7h		;b2b4
	add hl,de		;b2b6
lb2b7h:
	add hl,hl		;b2b7
	jr nc,lb2bbh		;b2b8
	add hl,de		;b2ba
lb2bbh:
	add hl,hl		;b2bb
	jr nc,lb2bfh		;b2bc
	add hl,de		;b2be
lb2bfh:
	add hl,hl		;b2bf
	jr nc,lb2c3h		;b2c0
	add hl,de		;b2c2
lb2c3h:
	add hl,hl		;b2c3
	jr nc,lb2c7h		;b2c4
	add hl,de		;b2c6
lb2c7h:
	add hl,hl		;b2c7
	jr nc,lb2cbh		;b2c8
	add hl,de		;b2ca
lb2cbh:
	add hl,hl		;b2cb
	jr nc,lb2cfh		;b2cc
	add hl,de		;b2ce
lb2cfh:
	add hl,hl		;b2cf
	jr nc,lb2d3h		;b2d0
	add hl,de		;b2d2
lb2d3h:
	ret			;b2d3
	ld a,(ix+008h)		;b2d4
	cp 016h			;b2d7
	ret nc			;b2d9
	ld hl,0ce6ch		;b2da
	inc (hl)		;b2dd
	call 0750fh		;b2de
	ret c			;b2e1
	call 07586h		;b2e2
	ex af,af'		;b2e5
	ld a,(ix+020h)		;b2e6
	and a			;b2e9
	jr nz,lb2f1h		;b2ea
	ex af,af'		;b2ec
	ret nc			;b2ed
	jp 07143h		;b2ee
lb2f1h:
	ex af,af'		;b2f1
	ret c			;b2f2
	jp 07143h		;b2f3
	ld (0ca26h),a		;b2f6
	call 070efh		;b2f9
	ret c			;b2fc
	jp 0714ah		;b2fd
	ld bc,00000h		;b300
	call 07197h		;b303
lb306h:
	ld a,(hl)		;b306
	inc a			;b307
	ret z			;b308
	dec a			;b309
	push hl			;b30a
	push bc			;b30b
	ld l,a			;b30c
	ld h,000h		;b30d
	add hl,hl		;b30f
	ld de,0738dh		;b310
	add hl,de		;b313
	ld b,(hl)		;b314
	inc hl			;b315
	ld c,(hl)		;b316
	call 07322h		;b317
	pop bc			;b31a
	call 0737ch		;b31b
	pop hl			;b31e
	inc hl			;b31f
	jr lb306h		;b320
lb322h:
	call 07207h		;b322
	ret nz			;b325
	call 0721dh		;b326
	push hl			;b329
	push bc			;b32a
	call 0733bh		;b32b
	pop bc			;b32e
	call 0734dh		;b32f
	call 07240h		;b332
	pop bc			;b335
	call 0715ch		;b336
	xor a			;b339
	ret			;b33a
	push bc			;b33b
	ld e,(ix+007h)		;b33c
	ld d,(ix+008h)		;b33f
	ld c,(ix+009h)		;b342
	ld b,(ix+00ah)		;b345
	call 071eah		;b348
	pop bc			;b34b
	ret			;b34c
	ld hl,0ca23h		;b34d
	ld d,000h		;b350
	ld a,b			;b352
	rrca			;b353
	jr nc,lb357h		;b354
	inc d			;b356
lb357h:
	ld (hl),d		;b357
	ld d,000h		;b358
	inc hl			;b35a
	rrca			;b35b
	jr nc,lb35fh		;b35c
	inc d			;b35e
lb35fh:
	ld (hl),d		;b35f
	ld a,c			;b360
	ret			;b361
	ld l,a			;b362
	ld h,000h		;b363
	add hl,hl		;b365
	ld de,0738dh		;b366
	add hl,de		;b369
	ld b,(hl)		;b36a
	inc hl			;b36b
	ld c,(hl)		;b36c
	jr lb322h		;b36d
	ld c,000h		;b36f
	ld a,l			;b371
	and 0e0h		;b372
	ld l,a			;b374
	ld (hl),b		;b375
	ld a,005h		;b376
	add a,l			;b378
	ld l,a			;b379
	ld (hl),c		;b37a
	ret			;b37b
	ld a,l			;b37c
	and 0e0h		;b37d
	ld l,a			;b37f
	ld a,008h		;b380
	add a,l			;b382
	ld l,a			;b383
	ld a,c			;b384
	add a,(hl)		;b385
	ld (hl),a		;b386
	inc l			;b387
	inc l			;b388
	ld a,b			;b389
	add a,(hl)		;b38a
	ld (hl),a		;b38b
	ret			;b38c
	ld (bc),a		;b38d
	nop			;b38e
	inc bc			;b38f
	djnz $+5		;b390
	jr nz,lb397h		;b392
	jr nc,lb397h		;b394
	ccf			;b396
lb397h:
	ld bc,00130h		;b397
	jr nz,$+3		;b39a
	djnz lb39fh		;b39c
	nop			;b39e
lb39fh:
	nop			;b39f
	djnz lb3a2h		;b3a0
lb3a2h:
	jr nz,lb3a4h		;b3a2
lb3a4h:
	jr nc,lb3a6h		;b3a4
lb3a6h:
	ccf			;b3a6
	ld (bc),a		;b3a7
	jr nc,lb3ach		;b3a8
	jr nz,lb3aeh		;b3aa
lb3ach:
	djnz lb3aeh		;b3ac
lb3aeh:
	ld b,00ch		;b3ae
	ld (de),a		;b3b0
	add hl,de		;b3b1
	rra			;b3b2
	ld h,02ch		;b3b3
	ld (03e38h),a		;b3b5
	ld b,h			;b3b8
	ld c,d			;b3b9
	ld d,b			;b3ba
	ld d,(hl)		;b3bb
	ld e,h			;b3bc
	ld h,d			;b3bd
	ld l,b			;b3be
	ld l,l			;b3bf
	ld (hl),e		;b3c0
	ld a,c			;b3c1
	ld a,(hl)		;b3c2
	add a,h			;b3c3
	adc a,c			;b3c4
	adc a,(hl)		;b3c5
	sub e			;b3c6
	sbc a,c			;b3c7
	sbc a,(hl)		;b3c8
	and d			;b3c9
	and a			;b3ca
	xor h			;b3cb
	or c			;b3cc
	or l			;b3cd
	cp c			;b3ce
	cp (hl)			;b3cf
	jp nz,0cac6h		;b3d0
	adc a,0d1h		;b3d3
	push de			;b3d5
	ret c			;b3d6
	call c,0e2dfh		;b3d7
	push hl			;b3da
	rst 20h			;b3db
	jp pe,0efedh		;b3dc
	pop af			;b3df
	di			;b3e0
	push af			;b3e1
	rst 30h			;b3e2
	ret m			;b3e3
	jp m,0fcfbh		;b3e4
	defb 0fdh,0feh,0feh ;illegal sequence	;b3e7
	rst 38h			;b3ea
	rst 38h			;b3eb
	rst 38h			;b3ec
	jr nz,lb3fch		;b3ed
	ex af,af'		;b3ef
	ld b,004h		;b3f0
	inc b			;b3f2
	inc bc			;b3f3
	inc bc			;b3f4
	ld (bc),a		;b3f5
	ld (bc),a		;b3f6
	ld (bc),a		;b3f7
	ld (bc),a		;b3f8
	ld bc,00101h		;b3f9
lb3fch:
	ld bc,02033h		;b3fc
	ld d,010h		;b3ff
	dec c			;b401
	dec bc			;b402
	add hl,bc		;b403
	ex af,af'		;b404
	rlca			;b405
	ld b,006h		;b406
	dec b			;b408
	dec b			;b409
	inc b			;b40a
	inc b			;b40b
	inc b			;b40c
	jr c,lb439h		;b40d
	jr nz,lb42ah		;b40f
	dec d			;b411
	ld de,00d0fh		;b412
	inc c			;b415
	ld a,(bc)		;b416
	add hl,bc		;b417
	add hl,bc		;b418
	ex af,af'		;b419
	rlca			;b41a
	rlca			;b41b
	ld b,03ah		;b41c
	cpl			;b41e
	daa			;b41f
	jr nz,lb43dh		;b420
	rla			;b422
	inc d			;b423
	ld (de),a		;b424
	djnz $+16		;b425
	dec c			;b427
	inc c			;b428
	dec bc			;b429
lb42ah:
	ld a,(bc)		;b42a
	ld a,(bc)		;b42b
	add hl,bc		;b42c
	dec sp			;b42d
	inc sp			;b42e
	dec hl			;b42f
	dec h			;b430
	jr nz,lb44fh		;b431
	add hl,de		;b433
	ld d,014h		;b434
	ld (de),a		;b436
	djnz lb448h		;b437
lb439h:
	ld c,00dh		;b439
	inc c			;b43b
	dec bc			;b43c
lb43dh:
	inc a			;b43d
	dec (hl)		;b43e
	ld l,029h		;b43f
	inc h			;b441
	jr nz,lb460h		;b442
	ld a,(de)		;b444
	rla			;b445
	dec d			;b446
	inc d			;b447
lb448h:
	ld (de),a		;b448
	ld de,00f10h		;b449
	ld c,03dh		;b44c
	scf			;b44e
lb44fh:
	ld sp,0272ch		;b44f
	inc hl			;b452
	jr nz,lb472h		;b453
	ld a,(de)		;b455
	jr lb46eh		;b456
	dec d			;b458
	inc de			;b459
	ld (de),a		;b45a
	ld de,03d10h		;b45b
	jr c,lb493h		;b45e
lb460h:
	ld l,02ah		;b460
	ld h,023h		;b462
	jr nz,lb483h		;b464
	dec de			;b466
	add hl,de		;b467
	rla			;b468
	ld d,015h		;b469
	inc de			;b46b
	ld (de),a		;b46c
	dec a			;b46d
lb46eh:
	add hl,sp		;b46e
	inc (hl)		;b46f
	jr nc,lb49eh		;b470
lb472h:
	jr z,lb499h		;b472
	ld (01e20h),hl		;b474
	inc e			;b477
	ld a,(de)		;b478
	jr lb492h		;b479
	dec d			;b47b
	inc d			;b47c
	ld a,039h		;b47d
	dec (hl)		;b47f
	ld sp,02a2eh		;b480
lb483h:
	daa			;b483
	dec h			;b484
	ld (01e20h),hl		;b485
	inc e			;b488
	ld a,(de)		;b489
	add hl,de		;b48a
	rla			;b48b
	ld d,03eh		;b48c
	ld a,(03336h)		;b48e
	cpl			;b491
lb492h:
	inc l			;b492
lb493h:
	add hl,hl		;b493
	daa			;b494
	inc h			;b495
	ld (01e20h),hl		;b496
lb499h:
	inc e			;b499
	dec de			;b49a
	add hl,de		;b49b
	jr $+64			;b49c
lb49eh:
	dec sp			;b49e
	scf			;b49f
	inc (hl)		;b4a0
	ld sp,02b2eh		;b4a1
	jr z,lb4cch		;b4a4
	inc h			;b4a6
	ld (01e20h),hl		;b4a7
	dec e			;b4aa
	dec de			;b4ab
	ld a,(de)		;b4ac
	ld a,03bh		;b4ad
	jr c,lb4e6h		;b4af
	ld (02c2fh),a		;b4b1
	ld hl,(02528h)		;b4b4
	inc hl			;b4b7
	ld (01e20h),hl		;b4b8
	dec e			;b4bb
	inc e			;b4bc
	ld a,03bh		;b4bd
	jr c,lb4f7h		;b4bf
	inc sp			;b4c1
	jr nc,$+48		;b4c2
	dec hl			;b4c4
	add hl,hl		;b4c5
	daa			;b4c6
	dec h			;b4c7
	inc hl			;b4c8
	ld hl,01e20h		;b4c9
lb4cch:
	dec e			;b4cc
	ld a,03ch		;b4cd
	add hl,sp		;b4cf
	ld (hl),034h		;b4d0
	ld sp,02c2fh		;b4d2
	ld hl,(02628h)		;b4d5
	dec h			;b4d8
	inc hl			;b4d9
	ld hl,01e20h		;b4da
	ccf			;b4dd
	inc a			;b4de
	add hl,sp		;b4df
	scf			;b4e0
	inc (hl)		;b4e1
	ld (02d30h),a		;b4e2
	dec hl			;b4e5
lb4e6h:
	add hl,hl		;b4e6
	jr z,lb50fh		;b4e7
	inc h			;b4e9
	inc hl			;b4ea
	ld hl,0c620h		;b4eb
	ld b,b			;b4ee
	ld h,000h		;b4ef
	bit 7,a			;b4f1
	jr z,lb4ffh		;b4f3
	res 7,a			;b4f5
lb4f7h:
	call 074ffh		;b4f7
	neg			;b4fa
	ld l,a			;b4fc
	dec h			;b4fd
	ret			;b4fe
lb4ffh:
	bit 6,a			;b4ff
	jr z,lb506h		;b501
	cpl			;b503
	and 03fh		;b504
lb506h:
	ld de,073adh		;b506
	call 04605h		;b509
	ld a,(de)		;b50c
	ld l,a			;b50d
	ret			;b50e
lb50fh:
	call 04678h		;b50f
	and 00fh		;b512
	ld hl,0ca19h		;b514
	cp (hl)			;b517
	ccf			;b518
	ret			;b519
	push bc			;b51a
	call 07143h		;b51b
	pop bc			;b51e
	ret c			;b51f
	jp 0737ch		;b520
	ld hl,0d440h		;b523
	ld bc,0025fh		;b526
	call 04648h		;b529
	nop			;b52c
	nop			;b52d
	nop			;b52e
	nop			;b52f
	nop			;b530
	nop			;b531
	nop			;b532
	nop			;b533
	nop			;b534
	nop			;b535
	nop			;b536
	nop			;b537
	nop			;b538
	nop			;b539
	nop			;b53a
	nop			;b53b
	ld a,(0ca1ah)		;b53c
	add a,(ix+007h)		;b53f
	ld a,000h		;b542
	adc a,e			;b544
	ld e,a			;b545
	ld a,(0ca1ch)		;b546
	add a,(ix+009h)		;b549
	ld a,000h		;b54c
	adc a,d			;b54e
	ld d,a			;b54f
	call 07b18h		;b550
	ccf			;b553
	ret c			;b554
	ld a,(de)		;b555
	ld h,0deh		;b556
	ld l,a			;b558
	ld a,(hl)		;b559
	bit 0,a			;b55a
	ret			;b55c
	ld a,(0ca48h)		;b55d
	sub (ix+008h)		;b560
	ld e,a			;b563
	ld a,(0ca4ah)		;b564
	sub (ix+00ah)		;b567
	ld d,a			;b56a
	ret			;b56b
	ld hl,(0ca49h)		;b56c
	ld b,(ix+00ah)		;b56f
	ld c,(ix+009h)		;b572
	or a			;b575
	sbc hl,bc		;b576
	ex de,hl		;b578
	ld hl,(0ca47h)		;b579
	ld b,(ix+008h)		;b57c
	ld c,(ix+007h)		;b57f
	or a			;b582
	sbc hl,bc		;b583
	ret			;b585
	push de			;b586
	ld hl,(0ca47h)		;b587
	ld d,(ix+008h)		;b58a
	ld e,(ix+007h)		;b58d
	or a			;b590
	sbc hl,de		;b591
	pop de			;b593
	ret			;b594
	ld h,d			;b595
	ld d,e			;b596
	ld e,000h		;b597
	ld l,e			;b599
	push bc			;b59a
	call 076d0h		;b59b
	call 07b18h		;b59e
	jp nc,076c4h		;b5a1
	ld a,(de)		;b5a4
	call 076c9h		;b5a5
	pop bc			;b5a8
	ret			;b5a9
	push bc			;b5aa
	call 076d0h		;b5ab
	push de			;b5ae
	call 07b18h		;b5af
	jp nc,076c3h		;b5b2
	ld a,(de)		;b5b5
	ld h,0deh		;b5b6
	ld l,a			;b5b8
	ld a,(hl)		;b5b9
	bit 2,a			;b5ba
	pop de			;b5bc
	pop bc			;b5bd
	or a			;b5be
	bit 0,a			;b5bf
	ret			;b5c1
	push bc			;b5c2
	call 076d0h		;b5c3
	push de			;b5c6
	call 07b18h		;b5c7
	jp nc,076c3h		;b5ca
	ld a,(de)		;b5cd
	ld h,0deh		;b5ce
	ld l,a			;b5d0
	ld a,(hl)		;b5d1
	bit 2,a			;b5d2
	pop de			;b5d4
	push af			;b5d5
	jr nz,lb5fah		;b5d6
	pop af			;b5d8
	pop bc			;b5d9
	or a			;b5da
	bit 0,a			;b5db
	ret			;b5dd
	ld d,(ix+00ah)		;b5de
	ld e,(ix+008h)		;b5e1
	ld c,001h		;b5e4
	push bc			;b5e6
	push af			;b5e7
	ld a,(0ca1ah)		;b5e8
	add a,(ix+007h)		;b5eb
	jr nc,lb5f1h		;b5ee
	inc e			;b5f0
lb5f1h:
	ld a,(0ca1ch)		;b5f1
	add a,(ix+009h)		;b5f4
	jr nc,lb5fah		;b5f7
	inc d			;b5f9
lb5fah:
	push de			;b5fa
	call 07606h		;b5fb
	pop de			;b5fe
	pop bc			;b5ff
	ld a,b			;b600
	pop bc			;b601
	bit 0,a			;b602
	ret nc			;b604
	ret			;b605
	push de			;b606
	exx			;b607
	pop de			;b608
	inc d			;b609
	inc e			;b60a
	exx			;b60b
	ld hl,0ce80h		;b60c
	ld b,014h		;b60f
lb611h:
	push bc			;b611
	ld a,(hl)		;b612
	or a			;b613
	jr z,lb619h		;b614
	call 07622h		;b616
lb619h:
	ld bc,00040h		;b619
	add hl,bc		;b61c
	pop bc			;b61d
	djnz lb611h		;b61e
	or a			;b620
	ret			;b621
	ld a,008h		;b622
	add a,l			;b624
	ld l,a			;b625
	ld c,(hl)		;b626
	inc hl			;b627
	inc hl			;b628
	ld b,(hl)		;b629
	ld a,009h		;b62a
	add a,l			;b62c
	ld l,a			;b62d
	ld e,(hl)		;b62e
	inc hl			;b62f
	ld d,(hl)		;b630
	res 7,d			;b631
	exx			;b633
	ld a,d			;b634
	exx			;b635
	sub b			;b636
	cp d			;b637
	jr nc,lb654h		;b638
	exx			;b63a
	ld a,e			;b63b
	exx			;b63c
	sub c			;b63d
	cp e			;b63e
	jr nc,lb654h		;b63f
	ld a,l			;b641
	and 0e0h		;b642
	ld l,a			;b644
	push hl			;b645
	pop iy			;b646
	call 07662h		;b648
	jr nc,lb654h		;b64b
	call 076a9h		;b64d
	scf			;b650
	jp 0469dh		;b651
lb654h:
	ld a,l			;b654
	and 0e0h		;b655
	ld l,a			;b657
	ret			;b658
lb659h:
	ld a,(iy+000h)		;b659
	cp 003h			;b65c
	jr z,lb670h		;b65e
	or a			;b660
	ret			;b661
	or a			;b662
	bit 4,(iy+015h)		;b663
	jr z,lb6a8h		;b667
	ld a,(ix+000h)		;b669
	cp 001h			;b66c
	jr z,lb659h		;b66e
lb670h:
	push hl			;b670
	ld h,(iy+00ah)		;b671
	ld l,(iy+009h)		;b674
	ld bc,(0ca1ch)		;b677
	ld b,000h		;b67b
	add hl,bc		;b67d
	ld a,(iy+014h)		;b67e
	and 01fh		;b681
	dec a			;b683
	ld b,a			;b684
	exx			;b685
	ld a,d			;b686
	dec a			;b687
	exx			;b688
	sub h			;b689
	cp b			;b68a
	jr nc,lb6a7h		;b68b
	ld h,(iy+008h)		;b68d
	ld l,(iy+007h)		;b690
	ld bc,(0ca1ah)		;b693
	ld b,000h		;b697
	add hl,bc		;b699
	ld a,(iy+013h)		;b69a
	and 01fh		;b69d
	dec a			;b69f
	ld b,a			;b6a0
	exx			;b6a1
	ld a,e			;b6a2
	dec a			;b6a3
	exx			;b6a4
	sub h			;b6a5
	cp b			;b6a6
lb6a7h:
	pop hl			;b6a7
lb6a8h:
	ret			;b6a8
	ld a,(ix+000h)		;b6a9
	cp 004h			;b6ac
	jr z,lb6bdh		;b6ae
	ld c,001h		;b6b0
	sub 002h		;b6b2
	cp 008h			;b6b4
	ret nc			;b6b6
	ld c,002h		;b6b7
lb6b9h:
	ld (iy+004h),c		;b6b9
	ret			;b6bc
lb6bdh:
	ld a,(ix+006h)		;b6bd
	ld c,a			;b6c0
	jr lb6b9h		;b6c1
	pop de			;b6c3
	ld a,080h		;b6c4
	pop bc			;b6c6
	scf			;b6c7
	ret			;b6c8
	ld h,0deh		;b6c9
	ld l,a			;b6cb
	ld a,(hl)		;b6cc
	bit 0,a			;b6cd
	ret			;b6cf
	ld b,(ix+008h)		;b6d0
	ld c,(ix+007h)		;b6d3
	add hl,bc		;b6d6
	ld bc,(0ca1ah)		;b6d7
	ld b,000h		;b6db
	add hl,bc		;b6dd
	ex de,hl		;b6de
	ld b,(ix+00ah)		;b6df
	ld c,(ix+009h)		;b6e2
	add hl,bc		;b6e5
	ld bc,(0ca1ch)		;b6e6
	ld b,000h		;b6ea
	add hl,bc		;b6ec
	ld l,d			;b6ed
	ex de,hl		;b6ee
	ret			;b6ef
	ret			;b6f0
	ld a,d			;b6f1
	cp 020h			;b6f2
	ret nc			;b6f4
	ld a,e			;b6f5
	cp 018h			;b6f6
	ret nc			;b6f8
	call 04e3ah		;b6f9
	ex de,hl		;b6fc
	scf			;b6fd
	ret			;b6fe
	push bc			;b6ff
	ld l,(ix+009h)		;b700
	ld h,(ix+00ah)		;b703
	ld e,(ix+014h)		;b706
	srl e			;b709
	ld d,000h		;b70b
	add hl,de		;b70d
	ex de,hl		;b70e
	ld l,(ix+007h)		;b70f
	ld h,(ix+008h)		;b712
	ld c,(ix+014h)		;b715
	srl c			;b718
	ld b,000h		;b71a
	add hl,bc		;b71c
	pop bc			;b71d
	jr lb725h		;b71e
	ld h,e			;b720
	ld l,000h		;b721
	ld d,000h		;b723
lb725h:
	push bc			;b725
	push de			;b726
	ex de,hl		;b727
	ld hl,(0ca47h)		;b728
	inc h			;b72b
	or a			;b72c
	sbc hl,de		;b72d
	bit 7,h			;b72f
	call nz,04612h		;b731
	ex de,hl		;b734
	ld hl,(0ca49h)		;b735
	inc h			;b738
	pop bc			;b739
	or a			;b73a
	sbc hl,bc		;b73b
	bit 7,h			;b73d
	call nz,04612h		;b73f
	add hl,de		;b742
	pop bc			;b743
	sbc hl,bc		;b744
	ret			;b746
	ld bc,(0f0f2h)		;b747
	push bc			;b74b
	call 04bb0h		;b74c
	call 0776bh		;b74f
	pop bc			;b752
	ld (0f0f2h),bc		;b753
	ld a,c			;b757
	ld (09000h),a		;b758
	ld a,b			;b75b
	ld (0b000h),a		;b75c
	ret			;b75f
lb760h:
	ld a,(ix+015h)		;b760
	and 021h		;b763
	cp 020h			;b765
	ret nz			;b767
	jp 06eb4h		;b768
	ld a,(ix+015h)		;b76b
	and 003h		;b76e
	jr z,lb760h		;b770
	jp pe,0777bh		;b772
	rrca			;b775
	jr c,lb77eh		;b776
	jp 07a3eh		;b778
	call 07a3eh		;b77b
lb77eh:
	ld (ix+019h),000h	;b77e
	ld a,(ix+000h)		;b782
	dec a			;b785
	ld l,a			;b786
	ld h,000h		;b787
	add hl,hl		;b789
	ld de,08496h		;b78a
	add hl,de		;b78d
	ld e,(hl)		;b78e
	inc hl			;b78f
	ld d,(hl)		;b790
	ld l,(ix+005h)		;b791
	ld h,000h		;b794
	add hl,hl		;b796
	add hl,de		;b797
	ld e,(hl)		;b798
	inc hl			;b799
	ld d,(hl)		;b79a
	ex de,hl		;b79b
	bit 3,(ix+015h)		;b79c
	jr nz,lb7b9h		;b7a0
	ld b,(hl)		;b7a2
	res 7,b			;b7a3
lb7a5h:
	push bc			;b7a5
	call 07864h		;b7a6
	call c,07861h		;b7a9
	push hl			;b7ac
	call 078e6h		;b7ad
	call c,07821h		;b7b0
	pop hl			;b7b3
	pop bc			;b7b4
	djnz lb7a5h		;b7b5
	or a			;b7b7
	ret			;b7b8
lb7b9h:
	ld b,(hl)		;b7b9
	res 7,b			;b7ba
lb7bch:
	push bc			;b7bc
	call 07864h		;b7bd
	call c,07861h		;b7c0
	push hl			;b7c3
	call 079b6h		;b7c4
	call c,07821h		;b7c7
	pop hl			;b7ca
	pop bc			;b7cb
	djnz lb7bch		;b7cc
	or a			;b7ce
	ret			;b7cf
	ld bc,(0f0f2h)		;b7d0
	push bc			;b7d4
	call 04bb0h		;b7d5
	ld (ix+019h),000h	;b7d8
	ld a,(ix+000h)		;b7dc
	dec a			;b7df
	ld l,a			;b7e0
	ld h,000h		;b7e1
	add hl,hl		;b7e3
	ld de,08496h		;b7e4
	add hl,de		;b7e7
	ld e,(hl)		;b7e8
	inc hl			;b7e9
	ld d,(hl)		;b7ea
	ld l,(ix+005h)		;b7eb
	ld h,000h		;b7ee
	add hl,hl		;b7f0
	add hl,de		;b7f1
	ld e,(hl)		;b7f2
	inc hl			;b7f3
	ld d,(hl)		;b7f4
	ex de,hl		;b7f5
	ld b,(hl)		;b7f6
	res 7,b			;b7f7
lb7f9h:
	push bc			;b7f9
	call 07864h		;b7fa
	call c,07861h		;b7fd
	push hl			;b800
	call 0794eh		;b801
	call c,07821h		;b804
	pop hl			;b807
	pop bc			;b808
	djnz lb7f9h		;b809
	or a			;b80b
	pop bc			;b80c
	ld (0f0f2h),bc		;b80d
	ld a,c			;b811
	ld (09000h),a		;b812
	ld a,b			;b815
	ld (0b000h),a		;b816
	ret			;b819
lb81ah:
	ld a,001h		;b81a
	ld (0c0ech),a		;b81c
	scf			;b81f
	ret			;b820
	ld a,(ix+000h)		;b821
	cp 001h			;b824
	jr z,lb81ah		;b826
	cp 01fh			;b828
	ret z			;b82a
	cp 043h			;b82b
	ret z			;b82d
	cp 050h			;b82e
	ret z			;b830
	cp 048h			;b831
	ret z			;b833
	pop hl			;b834
	pop bc			;b835
	pop bc			;b836
	inc hl			;b837
	inc hl			;b838
	inc hl			;b839
	inc hl			;b83a
	inc hl			;b83b
	push hl			;b83c
	push ix			;b83d
	pop de			;b83f
	ld hl,02ba0h		;b840
	add hl,de		;b843
	ld bc,00240h		;b844
	or a			;b847
	sbc hl,bc		;b848
	jr c,lb85ch		;b84a
	ld hl,03180h		;b84c
	add hl,de		;b84f
	ld bc,00500h		;b850
	or a			;b853
	sbc hl,bc		;b854
	ret nc			;b856
	call 06e98h		;b857
	scf			;b85a
	ret			;b85b
lb85ch:
	call 06each		;b85c
	scf			;b85f
	ret			;b860
	ld e,0e8h		;b861
	ret			;b863
	ld a,b			;b864
	dec a			;b865
	jr nz,lb8b2h		;b866
	ex de,hl		;b868
	ld h,(ix+008h)		;b869
	ld l,(ix+007h)		;b86c
	add hl,hl		;b86f
	add hl,hl		;b870
	add hl,hl		;b871
	call c,07897h		;b872
	ld a,h			;b875
	ld h,(ix+00ah)		;b876
	ld l,(ix+009h)		;b879
	add hl,hl		;b87c
	add hl,hl		;b87d
	add hl,hl		;b87e
	ex de,hl		;b87f
	jp c,078a4h		;b880
	inc hl			;b883
	ld b,(hl)		;b884
	inc hl			;b885
	add a,(hl)		;b886
	ld e,a			;b887
	inc hl			;b888
	ld a,d			;b889
	add a,(hl)		;b88a
	jp c,078a7h		;b88b
	ld d,a			;b88e
	inc hl			;b88f
	ld c,(hl)		;b890
	inc hl			;b891
	ld a,b			;b892
	ld b,(hl)		;b893
	inc hl			;b894
	or a			;b895
	ret			;b896
	ld a,(ix+008h)		;b897
	cp 0feh			;b89a
	ret nc			;b89c
	ex de,hl		;b89d
	call 078a4h		;b89e
	jp 0469fh		;b8a1
	inc hl			;b8a4
	inc hl			;b8a5
	inc hl			;b8a6
	inc hl			;b8a7
	inc hl			;b8a8
	inc hl			;b8a9
	ld bc,00101h		;b8aa
	ld a,000h		;b8ad
	ld e,0e8h		;b8af
	ret			;b8b1
lb8b2h:
	ex de,hl		;b8b2
	ld h,(ix+008h)		;b8b3
	ld l,(ix+007h)		;b8b6
	add hl,hl		;b8b9
	add hl,hl		;b8ba
	add hl,hl		;b8bb
	call c,07897h		;b8bc
	ld a,h			;b8bf
	ld h,(ix+00ah)		;b8c0
	ld l,(ix+009h)		;b8c3
	add hl,hl		;b8c6
	add hl,hl		;b8c7
	add hl,hl		;b8c8
	ex de,hl		;b8c9
	jp c,078a4h		;b8ca
	inc hl			;b8cd
	ld b,(hl)		;b8ce
	inc hl			;b8cf
	add a,(hl)		;b8d0
	ld e,a			;b8d1
	inc hl			;b8d2
	ld a,d			;b8d3
	add a,(hl)		;b8d4
	jp c,078a7h		;b8d5
	ld d,a			;b8d8
	inc hl			;b8d9
	ld c,(hl)		;b8da
	inc hl			;b8db
	ld a,b			;b8dc
	ld b,(hl)		;b8dd
	inc hl			;b8de
	or a			;b8df
	ret			;b8e0
	ld (ix+019h),000h	;b8e1
	ret			;b8e5
	ld l,(ix+000h)		;b8e6
	ld h,0dfh		;b8e9
	add a,(hl)		;b8eb
	ex af,af'		;b8ec
	ld a,(ix+019h)		;b8ed
	or a			;b8f0
	jr nz,lb913h		;b8f1
	inc a			;b8f3
	ld (ix+019h),a		;b8f4
	ld a,(ix+01ah)		;b8f7
	or a			;b8fa
	call z,0793dh		;b8fb
lb8feh:
	ld l,a			;b8fe
	ld a,(0c0aah)		;b8ff
	ld h,a			;b902
	res 7,(hl)		;b903
	res 0,l			;b905
	ld h,0c0h		;b907
	ld (hl),e		;b909
	inc h			;b90a
	ld (hl),d		;b90b
	inc h			;b90c
	ex af,af'		;b90d
	ld (hl),a		;b90e
	inc h			;b90f
	ld (hl),c		;b910
	or a			;b911
	ret			;b912
lb913h:
	cp 006h			;b913
	ret nc			;b915
	inc a			;b916
	ld (ix+019h),a		;b917
	push ix			;b91a
	pop hl			;b91c
	push bc			;b91d
	add a,019h		;b91e
	ld c,a			;b920
	ld b,000h		;b921
	add hl,bc		;b923
	pop bc			;b924
	ld a,(hl)		;b925
	or a			;b926
	call z,0792ch		;b927
	jr lb8feh		;b92a
	push bc			;b92c
	push hl			;b92d
	ld hl,0c023h		;b92e
	ld b,00ch		;b931
	call 07a20h		;b933
	pop hl			;b936
	ld (hl),a		;b937
	pop bc			;b938
	ret nc			;b939
	jp 0469fh		;b93a
	push bc			;b93d
	ld hl,0c023h		;b93e
	ld b,00ch		;b941
	call 07a20h		;b943
	ld (ix+01ah),a		;b946
	pop bc			;b949
	ret nc			;b94a
	jp 0469fh		;b94b
	ld l,(ix+000h)		;b94e
	ld h,0dfh		;b951
	add a,(hl)		;b953
	ex af,af'		;b954
	ld a,(ix+019h)		;b955
	or a			;b958
	jr nz,lb97bh		;b959
	inc a			;b95b
	ld (ix+019h),a		;b95c
	ld a,(ix+01ah)		;b95f
	or a			;b962
	call z,079a5h		;b963
lb966h:
	ld l,a			;b966
	ld a,(0c0aah)		;b967
	ld h,a			;b96a
	res 7,(hl)		;b96b
	res 0,l			;b96d
	ld h,0c0h		;b96f
	ld (hl),e		;b971
	inc h			;b972
	ld (hl),d		;b973
	inc h			;b974
	ex af,af'		;b975
	ld (hl),a		;b976
	inc h			;b977
	ld (hl),c		;b978
	or a			;b979
	ret			;b97a
lb97bh:
	cp 006h			;b97b
	ret nc			;b97d
	inc a			;b97e
	ld (ix+019h),a		;b97f
	push ix			;b982
	pop hl			;b984
	push bc			;b985
	add a,019h		;b986
	ld c,a			;b988
	ld b,000h		;b989
	add hl,bc		;b98b
	pop bc			;b98c
	ld a,(hl)		;b98d
	or a			;b98e
	call z,07994h		;b98f
	jr lb966h		;b992
	push bc			;b994
	push hl			;b995
	ld hl,0c009h		;b996
	ld b,00dh		;b999
	call 07a20h		;b99b
	pop hl			;b99e
	ld (hl),a		;b99f
	pop bc			;b9a0
	ret nc			;b9a1
	jp 0469fh		;b9a2
	push bc			;b9a5
	ld hl,0c009h		;b9a6
	ld b,00dh		;b9a9
	call 07a20h		;b9ab
	ld (ix+01ah),a		;b9ae
	pop bc			;b9b1
	ret nc			;b9b2
	jp 0469fh		;b9b3
	ld l,(ix+000h)		;b9b6
	ld h,0dfh		;b9b9
	add a,(hl)		;b9bb
	ex af,af'		;b9bc
	ld a,(ix+019h)		;b9bd
	or a			;b9c0
	jr nz,lb9e5h		;b9c1
	inc a			;b9c3
	ld (ix+019h),a		;b9c4
	ld a,(ix+01ah)		;b9c7
	or a			;b9ca
	call z,079feh		;b9cb
lb9ceh:
	ld l,a			;b9ce
	ld a,(0c0aah)		;b9cf
	ld h,a			;b9d2
	res 7,(hl)		;b9d3
	res 0,l			;b9d5
	ld h,0c0h		;b9d7
	ld (hl),e		;b9d9
	inc h			;b9da
	ld (hl),d		;b9db
	inc h			;b9dc
	ex af,af'		;b9dd
	ld (hl),a		;b9de
	inc h			;b9df
	ld (hl),c		;b9e0
	inc h			;b9e1
	ld (hl),b		;b9e2
	or a			;b9e3
	ret			;b9e4
lb9e5h:
	cp 006h			;b9e5
	ret nc			;b9e7
	push ix			;b9e8
	pop hl			;b9ea
	inc a			;b9eb
	ld (ix+019h),a		;b9ec
	push bc			;b9ef
	add a,019h		;b9f0
	ld c,a			;b9f2
	ld b,000h		;b9f3
	add hl,bc		;b9f5
	pop bc			;b9f6
	ld a,(hl)		;b9f7
	or a			;b9f8
	call z,07a0fh		;b9f9
	jr lb9ceh		;b9fc
	push bc			;b9fe
	ld hl,0c03bh		;b9ff
	ld b,00ch		;ba02
	call 07a20h		;ba04
	ld (ix+01ah),a		;ba07
	pop bc			;ba0a
	ret nc			;ba0b
	jp 0469fh		;ba0c
	push bc			;ba0f
	push hl			;ba10
	ld hl,0c03bh		;ba11
	ld b,00ch		;ba14
	call 07a20h		;ba16
	pop hl			;ba19
	ld (hl),a		;ba1a
	pop bc			;ba1b
	ret nc			;ba1c
	jp 0469fh		;ba1d
	call 07a35h		;ba20
	jr nz,lba31h		;ba23
	ld (hl),08fh		;ba25
	inc h			;ba27
	inc h			;ba28
	inc h			;ba29
	ld (hl),08fh		;ba2a
	dec h			;ba2c
	dec h			;ba2d
	dec h			;ba2e
	ld a,l			;ba2f
	ret			;ba30
lba31h:
	ld a,000h		;ba31
	scf			;ba33
	ret			;ba34
	xor a			;ba35
lba36h:
	cp (hl)			;ba36
	ret z			;ba37
	inc l			;ba38
	inc l			;ba39
	djnz lba36h		;ba3a
	scf			;ba3c
	ret			;ba3d
	call 07a5fh		;ba3e
	jr lbabah		;ba41
	push af			;ba43
	call 04bb0h		;ba44
	pop af			;ba47
	ld l,(ix+000h)		;ba48
	dec l			;ba4b
	ld h,000h		;ba4c
	add hl,hl		;ba4e
	ld de,08596h		;ba4f
	add hl,de		;ba52
	ld e,(hl)		;ba53
	inc hl			;ba54
	ld d,(hl)		;ba55
	call 07a70h		;ba56
	call 07abah		;ba59
	jp 04b99h		;ba5c
	ld l,(ix+000h)		;ba5f
	dec l			;ba62
	ld h,000h		;ba63
	add hl,hl		;ba65
	ld de,08596h		;ba66
	add hl,de		;ba69
	ld e,(hl)		;ba6a
	inc hl			;ba6b
	ld d,(hl)		;ba6c
	ld a,(ix+006h)		;ba6d
	ld h,000h		;ba70
	ld l,a			;ba72
	add hl,hl		;ba73
	add hl,de		;ba74
	ld e,(hl)		;ba75
	inc hl			;ba76
	ld d,(hl)		;ba77
	ex de,hl		;ba78
	ld a,(0ca1ah)		;ba79
	add a,(ix+007h)		;ba7c
	ld a,(ix+008h)		;ba7f
	adc a,(hl)		;ba82
	ld e,a			;ba83
	inc hl			;ba84
	ld a,(0ca1ch)		;ba85
	add a,(ix+009h)		;ba88
	ld a,(ix+00ah)		;ba8b
	adc a,(hl)		;ba8e
	ld d,a			;ba8f
	inc hl			;ba90
	ld b,(hl)		;ba91
	inc hl			;ba92
	ld c,(hl)		;ba93
	inc hl			;ba94
	ret			;ba95
	call 04bb0h		;ba96
	call 07aa8h		;ba99
	jp 04b99h		;ba9c
	inc d			;ba9f
	ld a,d			;baa0
	cp 0deh			;baa1
	ret c			;baa3
	scf			;baa4
	jp 0469bh		;baa5
	ld a,(0ca1ah)		;baa8
	add a,(ix+007h)		;baab
	jr nc,lbab1h		;baae
	inc e			;bab0
lbab1h:
	ld a,(0ca1ch)		;bab1
	add a,(ix+009h)		;bab4
	jr nc,lbabah		;bab7
	inc d			;bab9
lbabah:
	push hl			;baba
	call 07b29h		;babb
	pop hl			;babe
	ret nc			;babf
lbac0h:
	push bc			;bac0
	push de			;bac1
	ld a,(hl)		;bac2
	or a			;bac3
	jr z,lbac7h		;bac4
	ld (de),a		;bac6
lbac7h:
	inc hl			;bac7
	inc e			;bac8
	call z,07a9fh		;bac9
	dec c			;bacc
	jr z,lbaf7h		;bacd
	ld a,(hl)		;bacf
	or a			;bad0
	jr z,lbad4h		;bad1
	ld (de),a		;bad3
lbad4h:
	inc hl			;bad4
	inc e			;bad5
	call z,07a9fh		;bad6
	dec c			;bad9
	jr z,lbaf7h		;bada
	ld a,(hl)		;badc
	or a			;badd
	jr z,lbae1h		;bade
	ld (de),a		;bae0
lbae1h:
	inc hl			;bae1
	inc e			;bae2
	call z,07a9fh		;bae3
	dec c			;bae6
	jr z,lbaf7h		;bae7
	ld a,(hl)		;bae9
	or a			;baea
	jr z,lbaeeh		;baeb
	ld (de),a		;baed
lbaeeh:
	inc hl			;baee
	inc e			;baef
	call z,07a9fh		;baf0
	dec c			;baf3
	jp nz,07ac2h		;baf4
lbaf7h:
	pop de			;baf7
	ld bc,00030h		;baf8
	ex de,hl		;bafb
	add hl,bc		;bafc
	ex de,hl		;bafd
	ld a,d			;bafe
	cp 0deh			;baff
	pop bc			;bb01
	ret nc			;bb02
	djnz lbac0h		;bb03
	ret			;bb05
	ld a,(0ca1ah)		;bb06
	add a,(ix+007h)		;bb09
	jr nc,lbb0fh		;bb0c
	inc e			;bb0e
lbb0fh:
	ld a,(0ca1ch)		;bb0f
	add a,(ix+009h)		;bb12
	jr nc,lbb18h		;bb15
	inc d			;bb17
lbb18h:
	ld a,d			;bb18
	cp 020h			;bb19
	ret nc			;bb1b
	add a,008h		;bb1c
	push af			;bb1e
	ld a,e			;bb1f
	cp 018h			;bb20
	jp nc,07b4eh		;bb22
	add a,008h		;bb25
	jr lbb38h		;bb27
	ld a,d			;bb29
	add a,008h		;bb2a
	cp 028h			;bb2c
	ret nc			;bb2e
	push af			;bb2f
	ld a,e			;bb30
	add a,008h		;bb31
	cp 020h			;bb33
	jp nc,07b4eh		;bb35
lbb38h:
	ld e,a			;bb38
	add a,a			;bb39
	add a,e			;bb3a
	ld l,a			;bb3b
	ld h,000h		;bb3c
	add hl,hl		;bb3e
	add hl,hl		;bb3f
	add hl,hl		;bb40
	add hl,hl		;bb41
	ld de,0d800h		;bb42
	add hl,de		;bb45
	pop af			;bb46
	ld e,a			;bb47
	ld d,000h		;bb48
	add hl,de		;bb4a
	ex de,hl		;bb4b
	scf			;bb4c
	ret			;bb4d
	inc sp			;bb4e
	inc sp			;bb4f
	ret			;bb50
	ld hl,0dda0h		;bb51
	jr lbb59h		;bb54
	ld hl,0d950h		;bb56
lbb59h:
	ld a,d			;bb59
	add a,00fh		;bb5a
	cp 02fh			;bb5c
	ret nc			;bb5e
	ld e,a			;bb5f
	ld d,000h		;bb60
	add hl,de		;bb62
	scf			;bb63
	ret			;bb64
	ld l,(ix+006h)		;bb65
	ld h,000h		;bb68
	add hl,hl		;bb6a
	add hl,de		;bb6b
	ld e,(hl)		;bb6c
	inc hl			;bb6d
	ld d,(hl)		;bb6e
	ex de,hl		;bb6f
	call 07c01h		;bb70
	call 04bb0h		;bb73
	exx			;bb76
	ld l,(ix+000h)		;bb77
	dec l			;bb7a
	ld h,000h		;bb7b
	add hl,hl		;bb7d
	ld de,08596h		;bb7e
	add hl,de		;bb81
	ld e,(hl)		;bb82
	inc hl			;bb83
	ld d,(hl)		;bb84
	ld (0ca27h),de		;bb85
	exx			;bb89
lbb8ah:
	ld a,(hl)		;bb8a
	inc hl			;bb8b
	ld d,(hl)		;bb8c
	add a,(ix+008h)		;bb8d
	ld e,a			;bb90
	ld a,(ix+00ah)		;bb91
	add a,d			;bb94
	ld d,a			;bb95
	ld (0ca29h),de		;bb96
	inc hl			;bb9a
lbb9bh:
	ld a,(hl)		;bb9b
	inc hl			;bb9c
	ld b,a			;bb9d
	inc a			;bb9e
	jp z,04b99h		;bb9f
	inc a			;bba2
	jr z,lbb8ah		;bba3
	ld a,080h		;bba5
	add a,b			;bba7
	jr c,lbbd5h		;bba8
lbbaah:
	push bc			;bbaa
	push hl			;bbab
	ld l,(hl)		;bbac
	ld h,000h		;bbad
	add hl,hl		;bbaf
	ld de,(0ca27h)		;bbb0
	add hl,de		;bbb4
	ld e,(hl)		;bbb5
	inc hl			;bbb6
	ld d,(hl)		;bbb7
	ex de,hl		;bbb8
	ld bc,0ca29h		;bbb9
	ld a,(bc)		;bbbc
	ld e,a			;bbbd
	add a,(hl)		;bbbe
	ld (bc),a		;bbbf
	inc bc			;bbc0
	inc hl			;bbc1
	ld a,(bc)		;bbc2
	ld d,a			;bbc3
	add a,(hl)		;bbc4
	ld (bc),a		;bbc5
	inc hl			;bbc6
	ld b,(hl)		;bbc7
	inc hl			;bbc8
	ld c,(hl)		;bbc9
	inc hl			;bbca
	call 07aa8h		;bbcb
	pop hl			;bbce
	pop bc			;bbcf
	inc hl			;bbd0
	djnz lbbaah		;bbd1
	jr lbb9bh		;bbd3
lbbd5h:
	ld b,a			;bbd5
lbbd6h:
	push hl			;bbd6
	push bc			;bbd7
	ld l,(hl)		;bbd8
	ld h,000h		;bbd9
	add hl,hl		;bbdb
	ld de,(0ca27h)		;bbdc
	add hl,de		;bbe0
	ld e,(hl)		;bbe1
	inc hl			;bbe2
	ld d,(hl)		;bbe3
	ex de,hl		;bbe4
	ld bc,0ca29h		;bbe5
	ld a,(bc)		;bbe8
	ld e,a			;bbe9
	add a,(hl)		;bbea
	ld (bc),a		;bbeb
	inc bc			;bbec
	inc hl			;bbed
	ld a,(bc)		;bbee
	ld d,a			;bbef
	add a,(hl)		;bbf0
	ld (bc),a		;bbf1
	inc hl			;bbf2
	ld b,(hl)		;bbf3
	inc hl			;bbf4
	ld c,(hl)		;bbf5
	inc hl			;bbf6
	call 07aa8h		;bbf7
	pop bc			;bbfa
	pop hl			;bbfb
	djnz lbbd6h		;bbfc
	inc hl			;bbfe
	jr lbb9bh		;bbff
	ld c,(hl)		;bc01
	ld b,000h		;bc02
	inc hl			;bc04
	dec c			;bc05
	ld de,0d700h		;bc06
	ldir			;bc09
	ld hl,0d700h		;bc0b
	ret			;bc0e
	push ix			;bc0f
	push iy			;bc11
	push iy			;bc13
	push ix			;bc15
	pop iy			;bc17
	pop ix			;bc19
	ld a,(ix+000h)		;bc1b
	call 07c26h		;bc1e
	pop iy			;bc21
	pop ix			;bc23
	ret			;bc25
	ret			;bc26
	bit 4,(ix+015h)		;bc27
	ret z			;bc2b
	ld d,(ix+00ah)		;bc2c
	ld e,(ix+008h)		;bc2f
	inc d			;bc32
	inc e			;bc33
	call 07b18h		;bc34
	jp nc,06each		;bc37
	ld a,(de)		;bc3a
	ld l,a			;bc3b
	ld h,0deh		;bc3c
	ld a,(hl)		;bc3e
	rrca			;bc3f
	ret nc			;bc40
	jp 06each		;bc41
	or a			;bc44
	bit 7,(ix+014h)		;bc45
	ret z			;bc49
	ld a,(ix+004h)		;bc4a
	ld (ix+004h),000h	;bc4d
	and a			;bc51
	ret z			;bc52
	ld b,a			;bc53
	ld a,(ix+016h)		;bc54
	sub b			;bc57
	ld (ix+016h),a		;bc58
	push af			;bc5b
	ld a,016h		;bc5c
	call 04af0h		;bc5e
	pop af			;bc61
	ret			;bc62
	ld a,(ix+03fh)		;bc63
	and a			;bc66
	ld c,001h		;bc67
	jr z,lbc77h		;bc69
	ld hl,0ce48h		;bc6b
	res 1,(hl)		;bc6e
	dec hl			;bc70
	ld a,(hl)		;bc71
	ld c,a			;bc72
	and a			;bc73
	jr z,lbc77h		;bc74
	dec (hl)		;bc76
lbc77h:
	bit 7,(ix+014h)		;bc77
	ret z			;bc7b
	ld a,(ix+004h)		;bc7c
	ld (ix+004h),000h	;bc7f
	and a			;bc83
	ret z			;bc84
	ld b,a			;bc85
	ld a,c			;bc86
	and a			;bc87
	jr nz,lbc8fh		;bc88
	ld (hl),004h		;bc8a
	inc hl			;bc8c
	set 1,(hl)		;bc8d
lbc8fh:
	ld a,(ix+016h)		;bc8f
	sub b			;bc92
	ld (ix+016h),a		;bc93
	push af			;bc96
	ld b,a			;bc97
	ld a,(0ce4ah)		;bc98
	cp b			;bc9b
	jr c,lbca0h		;bc9c
	set 0,(hl)		;bc9e
lbca0h:
	ld a,025h		;bca0
	call 04af0h		;bca2
	pop af			;bca5
	ret			;bca6
	ld (ix+004h),000h	;bca7
	ret			;bcab
	ld a,(ix+004h)		;bcac
	and a			;bcaf
	ret z			;bcb0
	ld (ix+004h),000h	;bcb1
	ld b,a			;bcb5
	ld a,(ix+016h)		;bcb6
	sub b			;bcb9
	ld (ix+016h),a		;bcba
	ret			;bcbd
	call 07d0ah		;bcbe
	jr lbcd9h		;bcc1
	ld a,004h		;bcc3
	ld (ix+015h),a		;bcc5
	res 7,(ix+014h)		;bcc8
	call 07d5eh		;bccc
	call 07d1bh		;bccf
	call 07d0ah		;bcd2
	ld a,(hl)		;bcd5
	ld (ix+000h),a		;bcd6
lbcd9h:
	inc hl			;bcd9
	ld a,(hl)		;bcda
	push hl			;bcdb
	call 04af0h		;bcdc
	pop hl			;bcdf
	inc hl			;bce0
	ld l,(hl)		;bce1
	dec l			;bce2
	ld h,000h		;bce3
	add hl,hl		;bce5
	ld de,07cf6h		;bce6
	add hl,de		;bce9
	ld a,(hl)		;bcea
	add a,001h		;bceb
	ret c			;bced
	ld e,(hl)		;bcee
	inc hl			;bcef
	ld d,(hl)		;bcf0
	call 07e03h		;bcf1
	scf			;bcf4
	ret			;bcf5
	rst 38h			;bcf6
	rst 38h			;bcf7
	jr nz,lbcfah		;bcf8
lbcfah:
	ld b,b			;bcfa
	nop			;bcfb
	ld h,b			;bcfc
	nop			;bcfd
	nop			;bcfe
	ld bc,00200h		;bcff
	nop			;bd02
	inc b			;bd03
	nop			;bd04
	jr nz,lbd07h		;bd05
lbd07h:
	ld b,b			;bd07
	nop			;bd08
	ld d,b			;bd09
	ld a,(ix+000h)		;bd0a
	ld h,000h		;bd0d
	ld l,a			;bd0f
	add hl,hl		;bd10
	add a,l			;bd11
	ld l,a			;bd12
	jr nc,lbd16h		;bd13
	inc h			;bd15
lbd16h:
	ld de,07e74h		;bd16
	add hl,de		;bd19
	ret			;bd1a
	call 06eb4h		;bd1b
	xor a			;bd1e
	ld (ix+001h),a		;bd1f
	ld (ix+034h),a		;bd22
	ld (ix+038h),a		;bd25
	ld (ix+005h),a		;bd28
	ld (ix+006h),a		;bd2b
	ld (ix+017h),a		;bd2e
	ld (ix+00bh),a		;bd31
	ld (ix+00ch),a		;bd34
	ld (ix+00dh),a		;bd37
	ld (ix+00eh),a		;bd3a
	ret			;bd3d
	ld a,(ix+034h)		;bd3e
	ld b,(ix+02dh)		;bd41
	and a			;bd44
	ret z			;bd45
	push af			;bd46
	sla a			;bd47
	call c,07d89h		;bd49
	pop af			;bd4c
	sla a			;bd4d
	sla a			;bd4f
	ret c			;bd51
	and a			;bd52
	ret z			;bd53
	call 068deh		;bd54
	ret c			;bd57
	ret nz			;bd58
	dec (iy+037h)		;bd59
	jr lbda6h		;bd5c
	ld a,(ix+034h)		;bd5e
	ld b,(ix+02dh)		;bd61
	and a			;bd64
	ret z			;bd65
	push af			;bd66
	sla a			;bd67
	call c,07d89h		;bd69
	pop af			;bd6c
	sla a			;bd6d
	sla a			;bd6f
	ret c			;bd71
	and a			;bd72
	ret z			;bd73
	call 07d54h		;bd74
	dec (iy+03bh)		;bd77
	ret nz			;bd7a
	ld a,(iy+024h)		;bd7b
	and a			;bd7e
	ret nz			;bd7f
	ld a,(iy+03dh)		;bd80
	and a			;bd83
	ret z			;bd84
	inc (ix+03dh)		;bd85
	ret			;bd88
	ld a,b			;bd89
	ld b,014h		;bd8a
	ld hl,0ceb4h		;bd8c
	ld de,00040h		;bd8f
lbd92h:
	cp (hl)			;bd92
	jr nz,lbd97h		;bd93
	set 6,(hl)		;bd95
lbd97h:
	add hl,de		;bd97
	djnz lbd92h		;bd98
	jr lbda6h		;bd9a
	bit 6,(ix+034h)		;bd9c
	ret z			;bda0
	ld (ix+004h),0ffh	;bda1
	ret			;bda5
lbda6h:
	ld b,(ix+035h)		;bda6
	ld c,(ix+036h)		;bda9
	ld a,b			;bdac
	or c			;bdad
	ret z			;bdae
	ld a,b			;bdaf
	call 068b9h		;bdb0
	jr c,lbdb9h		;bdb3
	set 7,(iy+035h)		;bdb5
lbdb9h:
	ld a,c			;bdb9
	call 068c4h		;bdba
	ret c			;bdbd
	set 7,(iy+036h)		;bdbe
	ret			;bdc2
	ld a,(ix+000h)		;bdc3
	call 07dd8h		;bdc6
	inc hl			;bdc9
	jp 07ce0h		;bdca
	ld a,(ix+000h)		;bdcd
	call 07dd8h		;bdd0
	inc hl			;bdd3
	ld a,(hl)		;bdd4
	jp 04af5h		;bdd5
	ld h,000h		;bdd8
	ld l,a			;bdda
	ld e,a			;bddb
	ld d,h			;bddc
	add hl,hl		;bddd
	add hl,de		;bdde
	ld de,07e74h		;bddf
	add hl,de		;bde2
	ret			;bde3
	call 07df1h		;bde4
	ld hl,00000h		;bde7
	ld (0c922h),hl		;bdea
	ld (0c923h),hl		;bded
	ret			;bdf0
	ld hl,00000h		;bdf1
	ld (0cb0ah),hl		;bdf4
	ld (0cb0ch),hl		;bdf7
	ld (0cb10h),hl		;bdfa
	ld a,050h		;bdfd
	ld (0cb10h),a		;bdff
	ret			;be02
	ld hl,0cb0bh		;be03
	ld a,(hl)		;be06
	add a,e			;be07
	daa			;be08
	ld (hl),a		;be09
	inc l			;be0a
	ld a,(hl)		;be0b
	adc a,d			;be0c
	daa			;be0d
	ld (hl),a		;be0e
	inc hl			;be0f
	ld a,(hl)		;be10
	adc a,000h		;be11
	daa			;be13
	ld (hl),a		;be14
	jr nc,lbe29h		;be15
	ld de,0c924h		;be17
	ld a,099h		;be1a
	ld (hl),a		;be1c
	ld (de),a		;be1d
	dec l			;be1e
	dec e			;be1f
	ld (hl),a		;be20
	ld (de),a		;be21
	dec l			;be22
	dec e			;be23
	ld a,090h		;be24
	ld (hl),a		;be26
	ld (de),a		;be27
	ret			;be28
lbe29h:
	ex de,hl		;be29
	ld hl,0cb11h		;be2a
	ld a,(de)		;be2d
	cp (hl)			;be2e
	jr c,lbe50h		;be2f
	dec e			;be31
	dec l			;be32
	ld a,(de)		;be33
	cp (hl)			;be34
	jr c,lbe50h		;be35
	ld a,(hl)		;be37
	add a,050h		;be38
	daa			;be3a
	ld (hl),a		;be3b
	inc l			;be3c
	ld a,(hl)		;be3d
	adc a,000h		;be3e
	daa			;be40
	ld (hl),a		;be41
	ld hl,0cb0fh		;be42
	ld a,(hl)		;be45
	add a,001h		;be46
	daa			;be48
	ret c			;be49
	ld (hl),a		;be4a
	ld a,00fh		;be4b
	call 04af0h		;be4d
lbe50h:
	ld hl,0cb0dh		;be50
	ld de,0c924h		;be53
	ld a,(de)		;be56
	sub (hl)		;be57
	jr c,lbe67h		;be58
	ret nz			;be5a
	dec l			;be5b
	dec e			;be5c
	ld a,(de)		;be5d
	sub (hl)		;be5e
	jr c,lbe67h		;be5f
	ret nz			;be61
	dec l			;be62
	dec e			;be63
	ld a,(de)		;be64
	sub (hl)		;be65
	ret nc			;be66
lbe67h:
	ld hl,0cb0bh		;be67
	ld de,0c922h		;be6a
	ld bc,00003h		;be6d
	ldir			;be70
	ret			;be72
	ret			;be73
	ld h,d			;be74
	ld de,06201h		;be75
	ld de,06201h		;be78
	ld de,06201h		;be7b
	ld de,06201h		;be7e
	ld de,06201h		;be81
	ld de,06201h		;be84
	ld de,06201h		;be87
	ld de,06201h		;be8a
	ld de,06201h		;be8d
	ld de,06201h		;be90
	ld de,06201h		;be93
	ld de,06201h		;be96
	ld de,06201h		;be99
	ld de,06201h		;be9c
	inc d			;be9f
	ld b,062h		;bea0
	ld de,06201h		;bea2
	djnz $+4		;bea5
	ld h,d			;bea7
	djnz $+4		;bea8
	ld h,d			;beaa
	djnz $+4		;beab
	ld h,d			;bead
	djnz lbeb2h		;beae
	ld l,d			;beb0
	ld c,l			;beb1
lbeb2h:
	ex af,af'		;beb2
	ld h,d			;beb3
	djnz $+4		;beb4
	ld h,d			;beb6
	djnz $+4		;beb7
	ld h,d			;beb9
	djnz lbebfh		;beba
	ld h,d			;bebc
	djnz $+4		;bebd
lbebfh:
	ld h,d			;bebf
	ld de,06202h		;bec0
	djnz $+4		;bec3
	ld h,d			;bec5
	djnz lbecah		;bec6
	ld l,e			;bec8
	inc de			;bec9
lbecah:
	inc b			;beca
	ld h,d			;becb
	djnz lbed0h		;becc
	ld h,d			;bece
	inc de			;becf
lbed0h:
	dec b			;bed0
	ld l,e			;bed1
	inc d			;bed2
	inc bc			;bed3
	ld h,d			;bed4
	ld de,06202h		;bed5
	ld (de),a		;bed8
	inc bc			;bed9
	ld l,e			;beda
	inc de			;bedb
	inc b			;bedc
	ld h,d			;bedd
	djnz $+5		;bede
	ld h,d			;bee0
	ld de,06201h		;bee1
	ld de,06b02h		;bee4
	inc de			;bee7
	inc b			;bee8
	ld h,d			;bee9
	inc de			;beea
	inc b			;beeb
	ld l,e			;beec
	inc d			;beed
	ld b,062h		;beee
	ld de,06202h		;bef0
	ld de,06b01h		;bef3
	inc de			;bef6
	dec b			;bef7
	ld h,d			;bef8
	ld de,06205h		;bef9
	ld de,00104h		;befc
	inc e			;beff
	ld b,062h		;bf00
	ld de,06202h		;bf02
	ld de,06206h		;bf05
	inc d			;bf08
	inc b			;bf09
	ld h,d			;bf0a
	ld de,06202h		;bf0b
	inc d			;bf0e
	dec b			;bf0f
	ld h,d			;bf10
	inc de			;bf11
	inc b			;bf12
	ld h,d			;bf13
	inc de			;bf14
	ld b,062h		;bf15
	ld de,06201h		;bf17
	djnz lbf1dh		;bf1a
	ld l,e			;bf1c
lbf1dh:
	inc de			;bf1d
	ld b,06bh		;bf1e
	ld hl,06207h		;bf20
	ld de,06204h		;bf23
	ld de,06a01h		;bf26
	ld de,06a01h		;bf29
	ld de,06a01h		;bf2c
	ld c,l			;bf2f
	ex af,af'		;bf30
	nop			;bf31
	ld de,06201h		;bf32
	djnz lbf38h		;bf35
	ld h,d			;bf37
lbf38h:
	ld de,06201h		;bf38
	djnz $+4		;bf3b
	ld h,d			;bf3d
	djnz lbf41h		;bf3e
	ld h,d			;bf40
lbf41h:
	djnz lbf45h		;bf41
	ld h,d			;bf43
	ld (de),a		;bf44
lbf45h:
	ld (bc),a		;bf45
	ld h,d			;bf46
	inc de			;bf47
	ld bc,01162h		;bf48
	ld bc,01162h		;bf4b
	ld bc,01062h		;bf4e
	ld (bc),a		;bf51
	ld h,d			;bf52
	djnz $+4		;bf53
	ld h,d			;bf55
	djnz $+5		;bf56
	ld h,d			;bf58
	ld de,06203h		;bf59
	inc de			;bf5c
	ld b,062h		;bf5d
	ld de,06b03h		;bf5f
	inc de			;bf62
	rlca			;bf63
	ld h,d			;bf64
	ld de,06207h		;bf65
	ld de,06201h		;bf68
	ld de,06201h		;bf6b
	ld de,06201h		;bf6e
	ld de,06b01h		;bf71
	inc de			;bf74
	dec b			;bf75
	ld l,e			;bf76
	inc d			;bf77
	rlca			;bf78
	ld h,d			;bf79
	ld de,06201h		;bf7a
	ld de,06201h		;bf7d
	ld de,06201h		;bf80
	ld de,06201h		;bf83
	ld de,06201h		;bf86
	ld de,06201h		;bf89
	ld de,06201h		;bf8c
	ld de,06201h		;bf8f
	ld de,06201h		;bf92
	ld de,06201h		;bf95
	ld de,06201h		;bf98
	ld de,06201h		;bf9b
	ld de,06a01h		;bf9e
	ld c,l			;bfa1
	ex af,af'		;bfa2
	ld h,d			;bfa3
	ld de,06201h		;bfa4
	ld de,06206h		;bfa7
	ld de,06201h		;bfaa
	djnz $+4		;bfad
	ld h,d			;bfaf
	ld de,06201h		;bfb0
	ld de,06201h		;bfb3
	ld de,06201h		;bfb6
	ld de,06201h		;bfb9
	ld de,06201h		;bfbc
	djnz lbfc2h		;bfbf
	ld h,d			;bfc1
lbfc2h:
	ld (de),a		;bfc2
	ld bc,01062h		;bfc3
	ld bc,04d6ah		;bfc6
	ex af,af'		;bfc9
	ld h,d			;bfca
	ld de,06201h		;bfcb
	ld de,06203h		;bfce
	inc de			;bfd1
	ld bc,01362h		;bfd2
	ld bc,01462h		;bfd5
	ld bc,04d6ah		;bfd8
	add hl,bc		;bfdb
	ld h,d			;bfdc
	ld c,l			;bfdd
	add hl,bc		;bfde
	ld h,d			;bfdf
	ld c,l			;bfe0
	ld a,(bc)		;bfe1
	ld l,d			;bfe2
	ld c,l			;bfe3
	ex af,af'		;bfe4
	ld l,d			;bfe5
	ld c,l			;bfe6
	add hl,bc		;bfe7
	ld h,d			;bfe8
	inc de			;bfe9
	ld bc,0ff00h		;bfea
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

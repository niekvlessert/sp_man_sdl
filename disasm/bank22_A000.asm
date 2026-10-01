; z80dasm 1.2.0
; command line: z80dasm -a -l -g 0xA000 -o /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/disasm/bank22_A000.asm /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/banks/bank22.bin

	org 0a000h

	nop			;a000
	nop			;a001
	nop			;a002
	nop			;a003
	nop			;a004
	cp 0feh			;a005
	cp 00eh			;a007
	jp p,0f2feh		;a009
	ld (bc),a		;a00c
	ld c,0feh		;a00d
	cp 0feh			;a00f
	nop			;a011
	nop			;a012
	nop			;a013
	call m,08083h		;a014
	rst 8			;a017
	or b			;a018
	add a,b			;a019
	ld (hl),b		;a01a
	ld a,a			;a01b
	ld (hl),b		;a01c
	rrca			;a01d
	rrca			;a01e
	rrca			;a01f
	nop			;a020
	nop			;a021
	nop			;a022
	nop			;a023
	nop			;a024
	nop			;a025
	nop			;a026
	nop			;a027
	nop			;a028
	nop			;a029
	nop			;a02a
	nop			;a02b
	inc bc			;a02c
	rst 38h			;a02d
	inc bc			;a02e
	rst 28h			;a02f
	rra			;a030
	rrca			;a031
	ld a,0ffh		;a032
	ld a,0fch		;a034
	ei			;a036
	ret m			;a037
	ld a,a			;a038
	ld a,a			;a039
	ld a,a			;a03a
	nop			;a03b
	nop			;a03c
	nop			;a03d
	nop			;a03e
	nop			;a03f
	nop			;a040
	nop			;a041
	nop			;a042
	nop			;a043
	ret nz			;a044
	rst 38h			;a045
	ret nz			;a046
	cp a			;a047
	ret nz			;a048
	add a,b			;a049
	rst 38h			;a04a
	nop			;a04b
	nop			;a04c
	nop			;a04d
	rst 38h			;a04e
	nop			;a04f
	rst 38h			;a050
	rst 38h			;a051
	rst 38h			;a052
	ld bc,00101h		;a053
	nop			;a056
	nop			;a057
	nop			;a058
	nop			;a059
	nop			;a05a
	nop			;a05b
	rst 38h			;a05c
	inc bc			;a05d
	inc bc			;a05e
	rst 38h			;a05f
	nop			;a060
	nop			;a061
	rst 38h			;a062
	ccf			;a063
	ccf			;a064
	ld a,(hl)		;a065
	pop af			;a066
	ld (hl),b		;a067
	rst 38h			;a068
	rst 38h			;a069
	rst 38h			;a06a
	ret m			;a06b
	add a,a			;a06c
	add a,b			;a06d
	ld a,a			;a06e
	ld (hl),b		;a06f
	ld (hl),b		;a070
	rrca			;a071
	inc c			;a072
	inc c			;a073
	rst 38h			;a074
	nop			;a075
	nop			;a076
	rst 38h			;a077
	rst 38h			;a078
	rst 38h			;a079
	call m,0fcfch		;a07a
	ld (hl),b		;a07d
	sub b			;a07e
	djnz $+1		;a07f
	rst 38h			;a081
	rst 38h			;a082
	inc bc			;a083
	call m,0ff00h		;a084
	nop			;a087
	nop			;a088
	rst 38h			;a089
	nop			;a08a
	nop			;a08b
	cp 03eh			;a08c
	ld a,0e0h		;a08e
	ret po			;a090
	ret po			;a091
	nop			;a092
	nop			;a093
	nop			;a094
	nop			;a095
	nop			;a096
	nop			;a097
	add a,b			;a098
	add a,b			;a099
	add a,b			;a09a
	add a,b			;a09b
	add a,b			;a09c
	add a,b			;a09d
	ret nz			;a09e
	ld b,b			;a09f
	ld b,b			;a0a0
	ret nz			;a0a1
	ld b,b			;a0a2
	ld b,b			;a0a3
	inc bc			;a0a4
	ld (bc),a		;a0a5
	ld (bc),a		;a0a6
	ld bc,00101h		;a0a7
	nop			;a0aa
	nop			;a0ab
	nop			;a0ac
	nop			;a0ad
	nop			;a0ae
	nop			;a0af
	nop			;a0b0
	nop			;a0b1
	nop			;a0b2
	nop			;a0b3
	nop			;a0b4
la0b5h:
	nop			;a0b5
	nop			;a0b6
	nop			;a0b7
la0b8h:
	nop			;a0b8
	nop			;a0b9
	nop			;a0ba
	nop			;a0bb
	call m,00203h		;a0bc
	ret m			;a0bf
	rlca			;a0c0
	rlca			;a0c1
	ret m			;a0c2
	add a,a			;a0c3
	add a,a			;a0c4
	ld (hl),b		;a0c5
	ld c,a			;a0c6
	ld c,a			;a0c7
	jr nc,la0f9h		;a0c8
	cpl			;a0ca
	djnz la0ech		;a0cb
	rla			;a0cd
	ex af,af'		;a0ce
	rrca			;a0cf
	dec bc			;a0d0
	inc b			;a0d1
	rlca			;a0d2
la0d3h:
	dec b			;a0d3
	ret nz			;a0d4
	ld b,b			;a0d5
	ld b,b			;a0d6
	ld h,b			;a0d7
	and b			;a0d8
	jr nz,la13bh		;a0d9
	and b			;a0db
	jr nz,$+98		;a0dc
	and b			;a0de
	jr nz,la111h		;a0df
	ret nc			;a0e1
	sub b			;a0e2
	jr nc,la0b5h		;a0e3
	sub b			;a0e5
	jr nc,la0b8h		;a0e6
	sub b			;a0e8
	jr la0d3h		;a0e9
	ret z			;a0eb
la0ech:
	ld (bc),a		;a0ec
	inc bc			;a0ed
la0eeh:
	ld (bc),a		;a0ee
	ld bc,00101h		;a0ef
	nop			;a0f2
	nop			;a0f3
	nop			;a0f4
	nop			;a0f5
	nop			;a0f6
	nop			;a0f7
	nop			;a0f8
la0f9h:
	nop			;a0f9
	nop			;a0fa
	nop			;a0fb
	nop			;a0fc
	nop			;a0fd
	nop			;a0fe
	nop			;a0ff
	nop			;a100
	nop			;a101
	nop			;a102
	nop			;a103
	jr la0eeh		;a104
	ret z			;a106
	jr $-22			;a107
	ex af,af'		;a109
	call m,0fcfch		;a10a
	ld h,h			;a10d
	ld b,h			;a10e
	ld a,h			;a10f
	inc a			;a110
la111h:
	inc a			;a111
	inc a			;a112
	nop			;a113
	nop			;a114
	nop			;a115
	nop			;a116
	nop			;a117
	nop			;a118
	nop			;a119
	nop			;a11a
	nop			;a11b
	nop			;a11c
	nop			;a11d
	nop			;a11e
	nop			;a11f
	nop			;a120
	nop			;a121
la122h:
	nop			;a122
	nop			;a123
	nop			;a124
la125h:
	ld bc,00101h		;a125
	ld (bc),a		;a128
	inc bc			;a129
	inc bc			;a12a
	inc b			;a12b
	rlca			;a12c
	rlca			;a12d
	ex af,af'		;a12e
la12fh:
	rrca			;a12f
	ld c,010h		;a130
	rra			;a132
	inc e			;a133
	jr nc,la166h		;a134
	jr nc,$+106		;a136
	ld c,b			;a138
	ld a,b			;a139
	sub b			;a13a
la13bh:
	ret p			;a13b
	ret p			;a13c
	djnz la12fh		;a13d
	ret nc			;a13f
	jr nz,la122h		;a140
	and b			;a142
	jr nz,la125h		;a143
	jr nz,la187h		;a145
	ret nz			;a147
	ld b,b			;a148
	ld b,b			;a149
	ret nz			;a14a
	ld b,b			;a14b
	nop			;a14c
	nop			;a14d
	nop			;a14e
	nop			;a14f
	nop			;a150
	nop			;a151
	nop			;a152
	nop			;a153
	nop			;a154
	ld bc,00101h		;a155
	ld bc,00101h		;a158
	ccf			;a15b
	ccf			;a15c
	ccf			;a15d
	jp m,0cfffh		;a15e
	or d			;a161
	rst 38h			;a162
	ld e,a			;a163
	jr nz,la1a5h		;a164
la166h:
	jr c,la1a8h		;a166
	ld a,a			;a168
	ld a,b			;a169
	sbc a,a			;a16a
	pop hl			;a16b
	pop hl			;a16c
	rst 38h			;a16d
	rra			;a16e
	rra			;a16f
	jp m,0e2e6h		;a170
	or 0feh			;a173
	or 01eh			;a175
	cp 0feh			;a177
	rlca			;a179
	ei			;a17a
	add a,e			;a17b
	ld b,007h		;a17c
	dec b			;a17e
	rrca			;a17f
	rrca			;a180
	ex af,af'		;a181
	rra			;a182
	rra			;a183
	rra			;a184
	djnz la1a6h		;a185
la187h:
	djnz la198h		;a187
	inc c			;a189
	inc c			;a18a
	inc bc			;a18b
	inc bc			;a18c
	inc bc			;a18d
la18eh:
	nop			;a18e
	nop			;a18f
	nop			;a190
	nop			;a191
	nop			;a192
	nop			;a193
	call po,03fffh		;a194
	ret			;a197
la198h:
	rst 38h			;a198
	rst 38h			;a199
	ld de,0ddffh		;a19a
	jr nc,la18eh		;a19d
	jr nz,$+1		;a19f
	ld b,c			;a1a1
	ld b,c			;a1a2
	rst 38h			;a1a3
	rst 38h			;a1a4
la1a5h:
	rst 38h			;a1a5
la1a6h:
	rlca			;a1a6
	inc b			;a1a7
la1a8h:
	inc b			;a1a8
	inc bc			;a1a9
	inc bc			;a1aa
	inc bc			;a1ab
	rst 38h			;a1ac
	rst 38h			;a1ad
	rst 38h			;a1ae
	nop			;a1af
	rst 38h			;a1b0
	ld a,h			;a1b1
	rst 38h			;a1b2
	rst 38h			;a1b3
	rst 38h			;a1b4
	cp 086h			;a1b5
	add a,(hl)		;a1b7
	call m,0fcfch		;a1b8
	ret p			;a1bb
	ret p			;a1bc
	ret p			;a1bd
	ret p			;a1be
	djnz la1d1h		;a1bf
	ret pe			;a1c1
	jr la1cch		;a1c2
	add a,c			;a1c4
	cp 0ffh			;a1c5
	cp 080h			;a1c7
	add a,c			;a1c9
	rst 38h			;a1ca
	rst 38h			;a1cb
la1cch:
	rst 38h			;a1cc
	nop			;a1cd
	nop			;a1ce
	nop			;a1cf
	nop			;a1d0
la1d1h:
	nop			;a1d1
	nop			;a1d2
	nop			;a1d3
	nop			;a1d4
	nop			;a1d5
	nop			;a1d6
	nop			;a1d7
	nop			;a1d8
	nop			;a1d9
	nop			;a1da
	nop			;a1db
	ret z			;a1dc
	cp b			;a1dd
	xor b			;a1de
	ld b,h			;a1df
	ld a,h			;a1e0
	ld (hl),h		;a1e1
	inc h			;a1e2
	inc a			;a1e3
	inc (hl)		;a1e4
	ld (de),a		;a1e5
	ld e,01ah		;a1e6
	ld c,00ah		;a1e8
	ld c,006h		;a1ea
	ld b,006h		;a1ec
	nop			;a1ee
	nop			;a1ef
	nop			;a1f0
	nop			;a1f1
	nop			;a1f2
	nop			;a1f3
	nop			;a1f4
	nop			;a1f5
	nop			;a1f6
	nop			;a1f7
	nop			;a1f8
	nop			;a1f9
	ld bc,00101h		;a1fa
	inc bc			;a1fd
	ld (bc),a		;a1fe
	inc bc			;a1ff
	inc b			;a200
	rlca			;a201
	ld b,009h		;a202
	rrca			;a204
	rrca			;a205
	ld de,01d1fh		;a206
	ld (03a3eh),hl		;a209
	nop			;a20c
	nop			;a20d
	nop			;a20e
	nop			;a20f
	nop			;a210
	nop			;a211
	nop			;a212
	nop			;a213
	nop			;a214
	rrca			;a215
	rrca			;a216
	rrca			;a217
	ld a,03fh		;a218
	inc sp			;a21a
	ld (hl),h		;a21b
	ld a,a			;a21c
	ld c,a			;a21d
	ld sp,hl		;a21e
	rst 38h			;a21f
	sbc a,a			;a220
	jp po,062ffh		;a221
	ld b,d			;a224
	ld a,(hl)		;a225
	ld (hl),d		;a226
	sbc a,h			;a227
	call pe,07cech		;a228
	ld d,h			;a22b
	ld d,h			;a22c
	cp 0feh			;a22d
	cp 087h			;a22f
	ei			;a231
	ex (sp),hl		;a232
	cp a			;a233
	rst 38h			;a234
	rst 38h			;a235
	ld b,b			;a236
	rst 38h			;a237
	call m,0ff7fh		;a238
	ld a,a			;a23b
	nop			;a23c
	nop			;a23d
	nop			;a23e
	nop			;a23f
	nop			;a240
	nop			;a241
	nop			;a242
	nop			;a243
	nop			;a244
	nop			;a245
	nop			;a246
	nop			;a247
	call m,0fcfch		;a248
	adc a,h			;a24b
	call p,0f48ch		;a24c
	add a,h			;a24f
	adc a,h			;a250
	call m,0fcfch		;a251
	rst 38h			;a254
	call nz,07fc4h		;a255
	ld a,a			;a258
	ld a,a			;a259
	nop			;a25a
	nop			;a25b
	nop			;a25c
	nop			;a25d
	nop			;a25e
	nop			;a25f
	nop			;a260
	nop			;a261
	nop			;a262
sub_a263h:
	nop			;a263
	nop			;a264
	nop			;a265
	nop			;a266
	nop			;a267
	nop			;a268
	nop			;a269
	nop			;a26a
	nop			;a26b
	rst 38h			;a26c
	rrca			;a26d
	rrca			;a26e
	ret m			;a26f
	ret m			;a270
	ret m			;a271
	ret m			;a272
	ret m			;a273
	ret m			;a274
	ret pe			;a275
	sbc a,b			;a276
	adc a,b			;a277
	ld c,b			;a278
	ld a,b			;a279
	ld c,b			;a27a
	inc h			;a27b
	inc a			;a27c
	inc (hl)		;a27d
	inc e			;a27e
	inc d			;a27f
	inc e			;a280
	inc c			;a281
	inc c			;a282
	inc c			;a283
	nop			;a284
	nop			;a285
	nop			;a286
	nop			;a287
	nop			;a288
	nop			;a289
	nop			;a28a
	nop			;a28b
	nop			;a28c
	nop			;a28d
	nop			;a28e
	nop			;a28f
	nop			;a290
	nop			;a291
	nop			;a292
	ld bc,00101h		;a293
	rrca			;a296
	rrca			;a297
	rrca			;a298
	dec a			;a299
	ccf			;a29a
	inc sp			;a29b
	inc c			;a29c
	inc c			;a29d
	inc c			;a29e
	inc e			;a29f
	inc d			;a2a0
	inc e			;a2a1
	inc h			;a2a2
	inc a			;a2a3
	inc (hl)		;a2a4
la2a5h:
	ld c,b			;a2a5
	ld a,b			;a2a6
	ld l,b			;a2a7
	adc a,b			;a2a8
	ret m			;a2a9
	ret pe			;a2aa
	jr la2a5h		;a2ab
	ret c			;a2ad
	call m,0ecech		;a2ae
	ld a,a			;a2b1
	rst 38h			;a2b2
	rst 38h			;a2b3
	ld a,d			;a2b4
	ld a,a			;a2b5
	ld b,a			;a2b6
	call po,09fffh		;a2b7
	rst 38h			;a2ba
	ret z			;a2bb
	ret z			;a2bc
	ccf			;a2bd
	ccf			;a2be
	ccf			;a2bf
	inc bc			;a2c0
	ld (bc),a		;a2c1
	ld (bc),a		;a2c2
	ld bc,00101h		;a2c3
	nop			;a2c6
	nop			;a2c7
	nop			;a2c8
	nop			;a2c9
	nop			;a2ca
	nop			;a2cb
	adc a,c			;a2cc
	cp 0f9h			;a2cd
	rst 38h			;a2cf
	rst 38h			;a2d0
	rst 38h			;a2d1
	ret p			;a2d2
	jr nc,$+50		;a2d3
	ret p			;a2d5
	ret p			;a2d6
	ret p			;a2d7
la2d8h:
	ret p			;a2d8
	jr nc,$+50		;a2d9
	sub b			;a2db
	ret p			;a2dc
	ret nc			;a2dd
	ld (hl),b		;a2de
	ld d,b			;a2df
	ld (hl),b		;a2e0
	jr nc,la313h		;a2e1
	jr nc,la2e5h		;a2e3
la2e5h:
	nop			;a2e5
	nop			;a2e6
	nop			;a2e7
	nop			;a2e8
	nop			;a2e9
	nop			;a2ea
	nop			;a2eb
	nop			;a2ec
	jr nz,la30fh		;a2ed
	jr nz,la361h		;a2ef
	ld d,b			;a2f1
	ld (hl),b		;a2f2
	or b			;a2f3
	ret nc			;a2f4
	ret nc			;a2f5
	jr nz,la2d8h		;a2f6
	and b			;a2f8
	call m,03c3ch		;a2f9
	ld e,01fh		;a2fc
	inc de			;a2fe
	inc a			;a2ff
	ccf			;a300
	daa			;a301
	inc hl			;a302
	dec a			;a303
	ld hl,01e1fh		;a304
	ld e,001h		;a307
	ld bc,00001h		;a309
	nop			;a30c
	nop			;a30d
	nop			;a30e
la30fh:
	nop			;a30f
	nop			;a310
	nop			;a311
	nop			;a312
la313h:
	nop			;a313
	sub (hl)		;a314
	ld a,d			;a315
	halt			;a316
	call m,0fcfch		;a317
	ret po			;a31a
	and b			;a31b
	and b			;a31c
	ret nz			;a31d
	ld b,b			;a31e
	ld b,b			;a31f
	ld b,b			;a320
	ret nz			;a321
	ld b,b			;a322
	ret nz			;a323
	add a,b			;a324
	ret nz			;a325
	nop			;a326
	nop			;a327
	nop			;a328
	nop			;a329
	nop			;a32a
	nop			;a32b
	ld (bc),a		;a32c
	nop			;a32d
	ld (bc),a		;a32e
	nop			;a32f
	ld b,004h		;a330
	djnz $+30		;a332
	jr la33ah		;a334
	nop			;a336
	nop			;a337
	ld h,l			;a338
	ld a,(hl)		;a339
la33ah:
	rra			;a33a
	ld c,07ah		;a33b
	ld a,(bc)		;a33d
	jr nz,la36ch		;a33e
	jr z,la346h		;a340
	nop			;a342
	inc b			;a343
	nop			;a344
	nop			;a345
la346h:
	nop			;a346
	ld (bc),a		;a347
	nop			;a348
	ld (bc),a		;a349
	nop			;a34a
	inc b			;a34b
	inc b			;a34c
	inc h			;a34d
	ccf			;a34e
	ld e,028h		;a34f
	inc e			;a351
	ex af,af'		;a352
	inc b			;a353
	nop			;a354
	inc b			;a355
	nop			;a356
	nop			;a357
	nop			;a358
	nop			;a359
	nop			;a35a
	nop			;a35b
	nop			;a35c
	nop			;a35d
	nop			;a35e
	nop			;a35f
	nop			;a360
la361h:
	nop			;a361
	inc b			;a362
	nop			;a363
	inc b			;a364
	djnz la385h		;a365
	ld a,(bc)		;a367
	ex af,af'		;a368
	inc c			;a369
	ex af,af'		;a36a
	nop			;a36b
la36ch:
	nop			;a36c
	nop			;a36d
	nop			;a36e
	nop			;a36f
	nop			;a370
	nop			;a371
	nop			;a372
	nop			;a373
	inc c			;a374
	inc c			;a375
	inc c			;a376
	ld e,01ah		;a377
	ld (de),a		;a379
	ld d,01eh		;a37a
	ld a,(de)		;a37c
	ld d,01eh		;a37d
	ld a,(de)		;a37f
	rla			;a380
	rra			;a381
	rra			;a382
	cpl			;a383
	ccf			;a384
la385h:
	add hl,sp		;a385
	dec hl			;a386
	dec a			;a387
	add hl,sp		;a388
	cpl			;a389
	ccf			;a38a
	scf			;a38b
	nop			;a38c
	nop			;a38d
	nop			;a38e
	nop			;a38f
	nop			;a390
la391h:
	nop			;a391
	nop			;a392
	nop			;a393
	nop			;a394
	nop			;a395
	nop			;a396
	nop			;a397
	nop			;a398
	nop			;a399
	nop			;a39a
	nop			;a39b
	nop			;a39c
	nop			;a39d
	rrca			;a39e
	rrca			;a39f
	rrca			;a3a0
	ld (hl),b		;a3a1
	ld a,a			;a3a2
	ld a,a			;a3a3
	ld hl,(0323eh)		;a3a4
	ld hl,(0323eh)		;a3a7
	ld d,a			;a3aa
	ld a,a			;a3ab
	ld h,a			;a3ac
	ld e,a			;a3ad
	ld a,a			;a3ae
	ld l,c			;a3af
	ld e,e			;a3b0
	ld a,l			;a3b1
	ld l,c			;a3b2
	and a			;a3b3
	rst 38h			;a3b4
	rst 0			;a3b5
	ld e,d			;a3b6
	cp 09ah			;a3b7
	xor 0feh		;a3b9
	or 003h			;a3bb
	inc bc			;a3bd
	inc bc			;a3be
	inc c			;a3bf
	rrca			;a3c0
	rrca			;a3c1
	inc de			;a3c2
	rra			;a3c3
	ld e,02fh		;a3c4
	ccf			;a3c6
	ld sp,07f51h		;a3c7
	ld b,c			;a3ca
	rst 0			;a3cb
	cp b			;a3cc
	add a,b			;a3cd
	rst 38h			;a3ce
	add a,a			;a3cf
	add a,a			;a3d0
	ret m			;a3d1
	rst 38h			;a3d2
	ret m			;a3d3
	adc a,a			;a3d4
	rst 38h			;a3d5
	ret m			;a3d6
	ld (hl),h		;a3d7
	rst 38h			;a3d8
	add a,h			;a3d9
	rst 0			;a3da
	call m,01f04h		;a3db
	ex (sp),hl		;a3de
	inc bc			;a3df
	call m,01c1fh		;a3e0
	rst 20h			;a3e3
	rst 38h			;a3e4
	and 01ah		;a3e5
	rst 38h			;a3e7
	inc c			;a3e8
	rst 28h			;a3e9
	ret m			;a3ea
	jr la391h		;a3eb
	call m,07c44h		;a3ed
	cp h			;a3f0
	inc a			;a3f1
	call po,0647ch		;a3f2
	or 0feh			;a3f5
	jp m,0fefeh		;a3f7
	jp z,0febah		;a3fa
	ld hl,(03fffh)		;a3fd
	daa			;a400
	defb 0fdh,0ffh,0cdh ;illegal sequence	;a401
	ld bc,00101h		;a404
	ld c,00fh		;a407
	ld c,01dh		;a409
	rla			;a40b
	inc d			;a40c
	add hl,hl		;a40d
	ccf			;a40e
	jr z,la46bh		;a40f
	ld a,a			;a411
	ld l,c			;a412
	ld (hl),d		;a413
	ld a,a			;a414
	ld d,c			;a415
	sub 0ffh		;a416
	sub c			;a418
	and a			;a419
	rst 38h			;a41a
	and b			;a41b
	rlca			;a41c
	rst 38h			;a41d
	nop			;a41e
	ret m			;a41f
	rst 38h			;a420
	rlca			;a421
	ccf			;a422
	rst 38h			;a423
	ret nz			;a424
	ccf			;a425
	rst 38h			;a426
	adc a,07fh		;a427
	ld sp,hl		;a429
	sbc a,c			;a42a
	ld e,l			;a42b
	jp p,0d592h		;a42c
	jp m,0d712h		;a42f
	ret m			;a432
	djnz la454h		;a433
	rst 38h			;a435
	rst 20h			;a436
	ccf			;a437
	ccf			;a438
	ret nz			;a439
	rst 38h			;a43a
	rst 38h			;a43b
	jp 09f9fh		;a43c
	ld h,h			;a43f
	ret m			;a440
	rst 38h			;a441
	ld l,b			;a442
	rst 38h			;a443
	rst 38h			;a444
	adc a,a			;a445
	rst 38h			;a446
	rst 38h			;a447
	adc a,b			;a448
	push af			;a449
	rst 38h			;a44a
	sub d			;a44b
	rst 30h			;a44c
	defb 0fdh,03dh,0cfh ;illegal sequence	;a44d
	rst 38h			;a450
	di			;a451
	dec sp			;a452
	rst 38h			;a453
la454h:
	rst 0			;a454
	pop af			;a455
	rst 38h			;a456
	adc a,a			;a457
	rst 0			;a458
	rst 38h			;a459
	ld a,c			;a45a
	dec l			;a45b
	rst 38h			;a45c
	ld sp,lbfedh		;a45d
	or c			;a460
	exx			;a461
	rst 38h			;a462
	ld d,c			;a463
	defb 0edh ;next byte illegal after ed	;a464
	cp a			;a465
	and d			;a466
	defb 0edh ;next byte illegal after ed	;a467
	cp a			;a468
	and d			;a469
	ld l,a			;a46a
la46bh:
	ld e,a			;a46b
	ld b,b			;a46c
	ld e,e			;a46d
	ld l,a			;a46e
	ld b,h			;a46f
	ld e,e			;a470
	ld (hl),h		;a471
	ld b,b			;a472
	ld e,(hl)		;a473
	ld a,a			;a474
	ld b,b			;a475
	or (hl)			;a476
	rst 38h			;a477
	xor b			;a478
	cp a			;a479
	ret pe			;a47a
	add a,b			;a47b
	sbc a,d			;a47c
	defb 0fdh,010h,09dh ;illegal sequence	;a47d
	rst 28h			;a480
	ex af,af'		;a481
	ccf			;a482
	rst 8			;a483
	add hl,bc		;a484
	ld a,a			;a485
	add a,(hl)		;a486
	ld b,0bch		;a487
	ld b,e			;a489
	nop			;a48a
	ld a,d			;a48b
	add a,a			;a48c
	ld bc,08f72h		;a48d
	nop			;a490
	pop af			;a491
	ld c,000h		;a492
	xor 0ffh		;a494
	and c			;a496
	xor 0ffh		;a497
	and c			;a499
	xor 0bfh		;a49a
	ld hl,0ff46h		;a49c
	ld b,c			;a49f
	ld h,a			;a4a0
	rst 18h			;a4a1
	ld b,b			;a4a2
	ld h,c			;a4a3
	rst 18h			;a4a4
	ld b,b			;a4a5
	ld (hl),b		;a4a6
	rst 8			;a4a7
	ld b,b			;a4a8
	ld a,a			;a4a9
	jp 0f143h		;a4aa
	rst 18h			;a4ad
	ld d,c			;a4ae
	di			;a4af
	defb 0fdh,031h,076h ;illegal sequence	;a4b0
	jp m,07eb2h		;a4b3
	jp p,laeb2h		;a4b6
	jp p,07c22h		;a4b9
	call po,0fc64h		;a4bc
	call pe,0dcech		;a4bf
	call pe,sub_bccch	;a4c2
	rst 38h			;a4c5
	add a,b			;a4c6
	xor h			;a4c7
	rst 38h			;a4c8
	sub b			;a4c9
	adc a,h			;a4ca
	rst 38h			;a4cb
	or b			;a4cc
	add a,h			;a4cd
	rst 38h			;a4ce
	cp b			;a4cf
	ld d,e			;a4d0
	ld a,a			;a4d1
	ld c,h			;a4d2
	ccf			;a4d3
	ccf			;a4d4
	ccf			;a4d5
	ld a,d			;a4d6
	ld a,d			;a4d7
	ld a,a			;a4d8
	ld (hl),a		;a4d9
	ld (hl),a		;a4da
	ld e,a			;a4db
	or 009h			;a4dc
	nop			;a4de
	call m,00003h		;a4df
	pop af			;a4e2
	rrca			;a4e3
	ld bc,0ff0fh		;a4e4
	rrca			;a4e7
	defb 0fdh,0fdh,03fh ;illegal sequence	;a4e8
	rst 20h			;a4eb
	rst 38h			;a4ec
	rst 0			;a4ed
	rst 38h			;a4ee
	rst 38h			;a4ef
	rst 38h			;a4f0
	sbc a,a			;a4f1
	defb 0fdh,01fh,0feh ;illegal sequence	;a4f2
	cp 0ffh			;a4f5
	defb 0fdh,0f8h,0fah ;illegal sequence	;a4f7
	push af			;a4fa
	ret m			;a4fb
	ld d,d			;a4fc
	ld (hl),a		;a4fd
	ei			;a4fe
	ld d,e			;a4ff
	rst 38h			;a500
	rst 38h			;a501
	cp 0ffh			;a502
	rst 38h			;a504
	ld a,b			;a505
	ld a,h			;a506
	rst 38h			;a507
	ld b,b			;a508
	ld h,a			;a509
	ret m			;a50a
	ld h,b			;a50b
	call p,0547ch		;a50c
	ld (hl),h		;a50f
	ld a,h			;a510
	call nc,0fcf4h		;a511
	call p,0fcech		;a514
	xor h			;a517
	xor b			;a518
	ret m			;a519
	jr z,la588h		;a51a
	cp h			;a51c
	inc l			;a51d
	call m,0445ch		;a51e
	call pe,0c4d4h		;a521
	cp a			;a524
	rst 38h			;a525
	rst 38h			;a526
	or 0f7h			;a527
	cp h			;a529
	rst 38h			;a52a
	rst 38h			;a52b
	cp a			;a52c
	exx			;a52d
	rst 38h			;a52e
	or c			;a52f
	rst 8			;a530
	rst 38h			;a531
	sbc a,a			;a532
	exx			;a533
	rst 38h			;a534
	add a,(hl)		;a535
	ld h,a			;a536
	ld a,b			;a537
	ld b,b			;a538
	ld h,a			;a539
	ld a,b			;a53a
	ld b,b			;a53b
	rst 38h			;a53c
	ei			;a53d
	rst 38h			;a53e
	ld e,a			;a53f
	rst 18h			;a540
	ld a,a			;a541
	rst 38h			;a542
	rst 38h			;a543
	cp 0feh			;a544
	rst 38h			;a546
	ret m			;a547
	ret c			;a548
	rst 38h			;a549
	ret po			;a54a
	or c			;a54b
	rst 8			;a54c
	ld b,c			;a54d
	pop bc			;a54e
	ccf			;a54f
	ld bc,07f89h		;a550
	dec b			;a553
	rst 38h			;a554
	rst 38h			;a555
	sbc a,a			;a556
	adc a,0ffh		;a557
	ex af,af'		;a559
	adc a,c			;a55a
	cp 008h			;a55b
	rst 8			;a55d
	ld sp,hl		;a55e
	ret			;a55f
	rst 20h			;a560
	cp a			;a561
	and a			;a562
	or (hl)			;a563
	ld e,(hl)		;a564
	ld d,d			;a565
	or 01eh			;a566
	ld (de),a		;a568
	ld e,h			;a569
	cp h			;a56a
	inc d			;a56b
	ld a,b			;a56c
	ret z			;a56d
	ld c,b			;a56e
	call pe,0ecfch		;a56f
	cp h			;a572
	cp h			;a573
	and h			;a574
	inc l			;a575
	inc (hl)		;a576
	inc h			;a577
	inc a			;a578
	inc l			;a579
	inc l			;a57a
	jr c,la5b5h		;a57b
	jr z,$+58		;a57d
	jr c,la5b9h		;a57f
la581h:
	nop			;a581
	nop			;a582
	nop			;a583
	ld h,a			;a584
	ld a,b			;a585
	ld b,b			;a586
	scf			;a587
la588h:
	jr c,la5aah		;a588
	inc sp			;a58a
	inc a			;a58b
	jr nz,la5a7h		;a58c
	ld e,010h		;a58e
	inc c			;a590
	rrca			;a591
	ex af,af'		;a592
	rlca			;a593
	rlca			;a594
	inc b			;a595
	inc bc			;a596
	inc bc			;a597
	inc bc			;a598
	nop			;a599
	nop			;a59a
	nop			;a59b
	sub l			;a59c
	ld a,a			;a59d
	add hl,bc		;a59e
	ret			;a59f
	ccf			;a5a0
	ld bc,01ee1h		;a5a1
	nop			;a5a4
	cp 001h			;a5a5
la5a7h:
	nop			;a5a7
	ld a,c			;a5a8
	add a,a			;a5a9
la5aah:
	nop			;a5aa
	rlca			;a5ab
	rst 38h			;a5ac
	ld bc,0fefeh		;a5ad
	ld b,0f8h		;a5b0
	ret m			;a5b2
	ret m			;a5b3
	cp h			;a5b4
la5b5h:
	call m,0f814h		;a5b5
	ret m			;a5b8
la5b9h:
	xor b			;a5b9
	ret p			;a5ba
	ret p			;a5bb
	ret nc			;a5bc
	ld h,b			;a5bd
	ret po			;a5be
	jr nz,la581h		;a5bf
	ret nz			;a5c1
	ld b,b			;a5c2
	add a,b			;a5c3
	add a,b			;a5c4
	add a,b			;a5c5
	nop			;a5c6
	nop			;a5c7
	nop			;a5c8
	nop			;a5c9
	nop			;a5ca
	nop			;a5cb
	inc a			;a5cc
	inc a			;a5cd
	inc a			;a5ce
	inc l			;a5cf
	inc h			;a5d0
	inc a			;a5d1
	inc a			;a5d2
	inc a			;a5d3
	inc a			;a5d4
	inc l			;a5d5
	inc (hl)		;a5d6
	inc (hl)		;a5d7
	inc l			;a5d8
	inc (hl)		;a5d9
	inc (hl)		;a5da
	inc l			;a5db
	inc (hl)		;a5dc
	inc (hl)		;a5dd
	inc l			;a5de
	inc (hl)		;a5df
	inc (hl)		;a5e0
	ld l,032h		;a5e1
	ld (0322eh),a		;a5e3
	ld (0322eh),a		;a5e6
	ld (03a26h),a		;a5e9
	ld a,(03a26h)		;a5ec
	ld a,(03927h)		;a5ef
	add hl,sp		;a5f2
	daa			;a5f3
	add hl,sp		;a5f4
	add hl,sp		;a5f5
	daa			;a5f6
	add hl,sp		;a5f7
	add hl,sp		;a5f8
	daa			;a5f9
	add hl,sp		;a5fa
	add hl,sp		;a5fb
	inc hl			;a5fc
	dec a			;a5fd
	dec a			;a5fe
	inc hl			;a5ff
	inc a			;a600
	inc a			;a601
	inc hl			;a602
	inc a			;a603
	inc a			;a604
	inc hl			;a605
	inc a			;a606
	inc a			;a607
	inc sp			;a608
	inc l			;a609
	inc l			;a60a
	inc sp			;a60b
	inc l			;a60c
	inc l			;a60d
	rra			;a60e
sub_a60fh:
	ld de,01f11h		;a60f
	rra			;a612
	rra			;a613
	nop			;a614
	nop			;a615
	nop			;a616
	nop			;a617
	nop			;a618
	nop			;a619
	nop			;a61a
	nop			;a61b
la61ch:
	nop			;a61c
	nop			;a61d
	nop			;a61e
	nop			;a61f
	ld bc,00101h		;a620
	ld bc,00101h		;a623
	ld bc,00101h		;a626
	ld (bc),a		;a629
	inc bc			;a62a
	inc bc			;a62b
	dec sp			;a62c
	inc a			;a62d
	inc a			;a62e
	ld e,a			;a62f
	ld h,a			;a630
	ld h,a			;a631
	add a,b			;a632
	rst 38h			;a633
	rst 38h			;a634
	adc a,a			;a635
	rst 38h			;a636
	rst 38h			;a637
	ccf			;a638
	rst 38h			;a639
	rst 38h			;a63a
	jr c,$+1		;a63b
	rst 38h			;a63d
	ld (hl),e		;a63e
	rst 38h			;a63f
	rst 38h			;a640
	ld h,(hl)		;a641
	rst 38h			;a642
	cp 0c0h			;a643
	ret nz			;a645
	ret nz			;a646
	ret po			;a647
	jr nz,la66ah		;a648
	jr nc,la61ch		;a64a
	ret nc			;a64c
	ret m			;a64d
	ret pe			;a64e
	ret pe			;a64f
	ret m			;a650
	ret m			;a651
	ret m			;a652
	inc e			;a653
	call p,0ecf4h		;a654
	call m,014fch		;a657
	call m,0001ch		;a65a
	nop			;a65d
	nop			;a65e
	nop			;a65f
	nop			;a660
	nop			;a661
	nop			;a662
	nop			;a663
	nop			;a664
	nop			;a665
	nop			;a666
	nop			;a667
	ld a,a			;a668
	ld a,a			;a669
la66ah:
	ld a,a			;a66a
	ld (hl),b		;a66b
	ld e,a			;a66c
	ld a,a			;a66d
	ld e,a			;a66e
	ld d,b			;a66f
	ld (hl),b		;a670
	ld a,a			;a671
	ld a,a			;a672
	ld a,a			;a673
	ld (bc),a		;a674
	inc bc			;a675
	inc bc			;a676
	ld (bc),a		;a677
	inc bc			;a678
	inc bc			;a679
	ld b,007h		;a67a
	rlca			;a67c
	ld a,(de)		;a67d
	rra			;a67e
	rra			;a67f
	jp po,0ffffh		;a680
	ld bc,0ffffh		;a683
	rst 38h			;a686
	ld bc,0ff01h		;a687
	pop af			;a68a
	pop af			;a68b
	inc h			;a68c
	rst 38h			;a68d
	call m,sub_bfc8h	;a68e
	cp b			;a691
	ret z			;a692
	rst 38h			;a693
	ei			;a694
	ret z			;a695
	rst 38h			;a696
	ei			;a697
	ret nc			;a698
	rst 38h			;a699
	ret p			;a69a
	ld d,b			;a69b
	rst 38h			;a69c
	call p,0ff51h		;a69d
	call p,0ff13h		;a6a0
	call p,0fa0eh		;a6a3
	ld a,(bc)		;a6a6
	ld a,(bc)		;a6a7
	cp 00eh			;a6a8
	ld b,0feh		;a6aa
	ld b,007h		;a6ac
	rst 38h			;a6ae
	rlca			;a6af
	ld b,0ffh		;a6b0
	rlca			;a6b2
	jp nz,003ffh		;a6b3
	ex (sp),hl		;a6b6
	cp 002h			;a6b7
	di			;a6b9
	rst 38h			;a6ba
	inc bc			;a6bb
	nop			;a6bc
	nop			;a6bd
	nop			;a6be
	nop			;a6bf
	nop			;a6c0
	nop			;a6c1
	nop			;a6c2
	nop			;a6c3
	nop			;a6c4
	nop			;a6c5
	nop			;a6c6
	nop			;a6c7
	cp 0feh			;a6c8
	cp 00eh			;a6ca
	jp m,0fafeh		;a6cc
	ld a,(bc)		;a6cf
	ld c,0feh		;a6d0
	cp 0feh			;a6d2
	rrca			;a6d4
	dec c			;a6d5
	dec c			;a6d6
	inc bc			;a6d7
	ld (bc),a		;a6d8
	ld (bc),a		;a6d9
	inc bc			;a6da
	ld (bc),a		;a6db
	ld (bc),a		;a6dc
	ld bc,00101h		;a6dd
	ld bc,00101h		;a6e0
	nop			;a6e3
	nop			;a6e4
	nop			;a6e5
	nop			;a6e6
	nop			;a6e7
	nop			;a6e8
	nop			;a6e9
	nop			;a6ea
	nop			;a6eb
	inc de			;a6ec
	rst 38h			;a6ed
	call p,sub_bf57h	;a6ee
	or b			;a6f1
	rst 10h			;a6f2
	ld a,a			;a6f3
	ld (hl),b		;a6f4
	push de			;a6f5
	ld a,a			;a6f6
	ld (hl),d		;a6f7
	rst 10h			;a6f8
	ld a,a			;a6f9
	ld (hl),b		;a6fa
	ex de,hl		;a6fb
	rst 38h			;a6fc
	ret m			;a6fd
	ld l,d			;a6fe
	ld a,a			;a6ff
	ld a,c			;a700
	ld l,e			;a701
	ld a,a			;a702
	ld a,b			;a703
	jp p,002feh		;a704
	jp m,002feh		;a707
	jp m,002feh		;a70a
	jp m,002feh		;a70d
	jp m,002feh		;a710
	jp m,002feh		;a713
	call p,004fch		;a716
	call p,004fch		;a719
	dec (hl)		;a71c
	ccf			;a71d
	inc a			;a71e
	dec (hl)		;a71f
	ccf			;a720
la721h:
	inc a			;a721
	ld a,(02e2fh)		;a722
	dec a			;a725
	daa			;a726
	daa			;a727
	cpl			;a728
	inc sp			;a729
	inc sp			;a72a
	ld l,032h		;a72b
	ld (03a26h),a		;a72d
	ld a,(0342ch)		;a730
	inc (hl)		;a733
	call p,004fch		;a734
	ret pe			;a737
	ret m			;a738
	ex af,af'		;a739
	ret pe			;a73a
	ret m			;a73b
	ex af,af'		;a73c
	djnz $-14		;a73d
	djnz la721h		;a73f
	ret po			;a741
	ret po			;a742
	nop			;a743
	nop			;a744
	nop			;a745
	nop			;a746
	nop			;a747
	nop			;a748
	nop			;a749
	nop			;a74a
	nop			;a74b
	inc l			;a74c
	inc (hl)		;a74d
	inc (hl)		;a74e
	inc l			;a74f
	inc (hl)		;a750
	inc (hl)		;a751
	inc l			;a752
la753h:
	inc (hl)		;a753
	inc (hl)		;a754
	jr z,la78fh		;a755
	jr c,$+58		;a757
	jr z,la783h		;a759
	jr c,$+58		;a75b
	jr c,la797h		;a75d
	jr z,$+58		;a75f
	jr c,la79bh		;a761
	jr c,la753h		;a763
	rst 38h			;a765
	and c			;a766
	xor 0ffh		;a767
	and c			;a769
	xor 0bfh		;a76a
	ld hl,0ff46h		;a76c
	ld b,c			;a76f
	ld h,a			;a770
	rst 18h			;a771
	ld b,b			;a772
	ld h,c			;a773
	rst 18h			;a774
	ld b,b			;a775
	ld (hl),b		;a776
	rst 8			;a777
	ld b,b			;a778
	ld a,a			;a779
	jp nz,0f143h		;a77a
	rst 18h			;a77d
	ld d,c			;a77e
	di			;a77f
	defb 0fdh,031h,076h ;illegal sequence	;a780
la783h:
	jp m,07eb2h		;a783
	jp p,laeb2h		;a786
	jp p,07c22h		;a789
	call nz,0ec74h		;a78c
la78fh:
	inc d			;a78f
	call m,038c4h		;a790
	call m,0fcffh		;a793
	rst 38h			;a796
la797h:
	defb 0fdh,0f8h,0fbh ;illegal sequence	;a797
	push af			;a79a
la79bh:
	ret m			;a79b
	ld d,e			;a79c
	ld (hl),a		;a79d
	ei			;a79e
	ld d,e			;a79f
	rst 38h			;a7a0
	rst 38h			;a7a1
	cp 0ffh			;a7a2
	rst 38h			;a7a4
	ld a,b			;a7a5
	ld a,h			;a7a6
	rst 38h			;a7a7
	ld b,b			;a7a8
	ld h,a			;a7a9
	ret m			;a7aa
	ld h,b			;a7ab
	ld l,0d0h		;a7ac
	cp 07ch			;a7ae
	add a,h			;a7b0
	call m,06c94h		;a7b1
	call p,06c9ch		;a7b4
	call m,098e8h		;a7b7
	ld l,b			;a7ba
	ld l,h			;a7bb
	cp h			;a7bc
	inc l			;a7bd
	call m,0445ch		;a7be
	call pe,0c4d4h		;a7c1
	xor 0ffh		;a7c4
	and c			;a7c6
	xor 0ffh		;a7c7
	and c			;a7c9
	xor 0bfh		;a7ca
	ld hl,0ff46h		;a7cc
	ld b,c			;a7cf
	ld l,a			;a7d0
	out (04ch),a		;a7d1
	ld l,a			;a7d3
	pop de			;a7d4
	ld c,(hl)		;a7d5
	ld a,a			;a7d6
	ret nz			;a7d7
	ld e,a			;a7d8
	ld a,a			;a7d9
	ret nz			;a7da
	ld e,a			;a7db
	pop af			;a7dc
	rst 18h			;a7dd
	ld d,c			;a7de
	rst 30h			;a7df
	ret m			;a7e0
	scf			;a7e1
	ld a,a			;a7e2
	ret po			;a7e3
	cp a			;a7e4
	ld a,(hl)		;a7e5
	pop bc			;a7e6
	cp a			;a7e7
	ret p			;a7e8
	rrca			;a7e9
	rst 38h			;a7ea
	ex (sp),hl		;a7eb
	inc e			;a7ec
	rst 38h			;a7ed
	ret nz			;a7ee
	ccf			;a7ef
	rst 38h			;a7f0
	nop			;a7f1
	rst 38h			;a7f2
	rst 38h			;a7f3
	call m,0ffe3h		;a7f4
	call m,0ffe3h		;a7f7
	ret m			;a7fa
	rst 0			;a7fb
	ld e,a			;a7fc
	ld (hl),d		;a7fd
	call 0f87fh		;a7fe
	rst 0			;a801
	rst 38h			;a802
	ret m			;a803
	rst 0			;a804
	ld a,a			;a805
	ld a,b			;a806
	rst 0			;a807
	ld a,a			;a808
	ld a,h			;a809
	jp 0fc7fh		;a80a
	jp 0fcbfh		;a80d
	jp 08e3fh		;a810
	pop af			;a813
	rrca			;a814
	adc a,0f9h		;a815
	rst 8			;a817
	rst 20h			;a818
	cp b			;a819
	and a			;a81a
	or a			;a81b
	ld e,h			;a81c
	ld d,e			;a81d
	rst 30h			;a81e
	ld e,013h		;a81f
	ld e,l			;a821
	cp h			;a822
	dec d			;a823
	xor 0ffh		;a824
	and c			;a826
	cp 0cfh			;a827
	or c			;a829
	xor 097h		;a82a
	ld a,c			;a82c
	add a,a			;a82d
	ld a,d			;a82e
	defb 0fdh,087h,07bh ;illegal sequence	;a82f
	call m,09b65h		;a832
	ld a,h			;a835
	ld a,b			;a836
	rst 0			;a837
	ld a,b			;a838
	ld a,a			;a839
	jp 0f943h		;a83a
	rst 0			;a83d
	ld e,c			;a83e
	rst 30h			;a83f
	adc a,c			;a840
	ld a,l			;a841
	jp po,0fe1ch		;a842
	sub a			;a845
	ld l,b			;a846
	rst 38h			;a847
	cp (hl)			;a848
	ld b,d			;a849
	cp 0cch			;a84a
	inc (hl)		;a84c
	call m,sub_b4cch	;a84d
	call m,0ccfch		;a850
	call m,0f1ffh		;a853
	rst 38h			;a856
	rst 38h			;a857
	ret po			;a858
	rst 38h			;a859
	ret p			;a85a
	rst 8			;a85b
	ld a,a			;a85c
	ld h,b			;a85d
	rst 18h			;a85e
	ld a,a			;a85f
	ret po			;a860
	rst 18h			;a861
	rst 38h			;a862
la863h:
	ret p			;a863
	rst 8			;a864
	ld a,a			;a865
	ld (hl),e		;a866
	call z,06f7fh		;a867
	ret p			;a86a
	ld l,(hl)		;a86b
	call p,0d4fch		;a86c
	call p,0d47ch		;a86f
	call p,0f47ch		;a872
	call pe,0ec3ch		;a875
	ret pe			;a878
	jr c,la863h		;a879
	call pe,sub_ac3ch	;a87b
	call m,0c45ch		;a87e
	call pe,0c4d4h		;a881
	xor 0ffh		;a884
	and c			;a886
	xor 0ffh		;a887
	and c			;a889
	xor 0bfh		;a88a
	ld hl,0ff46h		;a88c
	ld b,c			;a88f
	ld h,a			;a890
	sbc a,041h		;a891
	ld h,e			;a893
	call c,07643h		;a894
	ret			;a897
	ld b,a			;a898
	ld a,a			;a899
	ret nz			;a89a
	ld b,e			;a89b
	pop af			;a89c
	rst 18h			;a89d
	ld d,c			;a89e
	di			;a89f
	defb 0fdh,031h,076h ;illegal sequence	;a8a0
	jp m,07eb2h		;a8a3
	jp p,0eeb2h		;a8a6
	ld (07ce2h),a		;a8a9
	add a,h			;a8ac
	call po,0cc3ch		;a8ad
	call m,08c7ch		;a8b0
	call pe,0f8ffh		;a8b3
	rst 38h			;a8b6
	rst 38h			;a8b7
	ret p			;a8b8
	rst 38h			;a8b9
	rst 38h			;a8ba
	ret nz			;a8bb
	ld a,a			;a8bc
	ld (hl),c		;a8bd
	adc a,(hl)		;a8be
	ld a,a			;a8bf
	ret po			;a8c0
	rst 18h			;a8c1
	rst 38h			;a8c2
	ret po			;a8c3
	rst 18h			;a8c4
	ld a,a			;a8c5
	ld (hl),c		;a8c6
	adc a,07fh		;a8c7
	ld a,a			;a8c9
	ret po			;a8ca
	ld a,a			;a8cb
	call p,0f41ch		;a8cc
	call m,0dc30h		;a8cf
	call p,0fc68h		;a8d2
	jp p,0be6ch		;a8d5
	jp p,0fe2ch		;a8d8
	call pe,0ec30h		;a8db
	call m,0c45ch		;a8de
	call pe,0c454h		;a8e1
	ld b,006h		;a8e4
	add hl,sp		;a8e6
	ccf			;a8e7
	ld h,a			;a8e8
	ld a,c			;a8e9
	sbc a,(hl)		;a8ea
	and 0fch		;a8eb
	add a,h			;a8ed
	ld a,h			;a8ee
	ld h,h			;a8ef
	ld e,012h		;a8f0
	inc c			;a8f2
	inc c			;a8f3
	ret nz			;a8f4
	ret nz			;a8f5
	cp h			;a8f6
	call m,0fe82h		;a8f7
	ld b,d			;a8fa
	ld a,(hl)		;a8fb
	ld b,a			;a8fc
	ld a,c			;a8fd
	ld a,a			;a8fe
	ld b,c			;a8ff
	ccf			;a900
	add hl,sp		;a901
	rlca			;a902
	rlca			;a903
	ld h,b			;a904
	ld h,b			;a905
	ld d,b			;a906
	ld (hl),b		;a907
	ld c,h			;a908
	ld a,h			;a909
	ld h,a			;a90a
	ld e,a			;a90b
	inc hl			;a90c
	ld a,033h		;a90d
	ld l,03bh		;a90f
	ld h,039h		;a911
la913h:
	daa			;a913
	ret p			;a914
	djnz la913h		;a915
	inc c			;a917
	rst 38h			;a918
	inc bc			;a919
	rra			;a91a
	ret po			;a91b
	rlca			;a91c
	ret m			;a91d
	ret nz			;a91e
	ccf			;a91f
	cp 001h			;a920
	call 00033h		;a922
	nop			;a925
	nop			;a926
	nop			;a927
	nop			;a928
	nop			;a929
	ret nz			;a92a
	ret nz			;a92b
	ret po			;a92c
	jr nz,la93fh		;a92d
	ret p			;a92f
	ld (hl),b		;a930
	sub b			;a931
	ret p			;a932
	ret p			;a933
	inc l			;a934
	inc sp			;a935
	ld l,031h		;a936
	rra			;a938
	djnz la952h		;a939
	jr la954h		;a93b
	jr la94ah		;a93d
la93fh:
	inc c			;a93f
	inc b			;a940
	rlca			;a941
	inc bc			;a942
	inc bc			;a943
	cp l			;a944
	jp 0e79bh		;a945
	ld d,h			;a948
	ld l,h			;a949
la94ah:
	ld c,b			;a94a
	ld a,b			;a94b
	jr z,la986h		;a94c
	jr z,la988h		;a94e
	jr z,la98ah		;a950
la952h:
	jr c,la98ch		;a952
la954h:
	ret nz			;a954
	ret nz			;a955
	cp h			;a956
	call m,0f28eh		;a957
	ld b,d			;a95a
	ld a,(hl)		;a95b
	ld b,a			;a95c
la95dh:
	ld a,c			;a95d
	ld a,a			;a95e
	ld b,c			;a95f
	ccf			;a960
	add hl,sp		;a961
	rlca			;a962
	rlca			;a963
	inc c			;a964
	inc c			;a965
	ld (de),a		;a966
	ld e,01eh		;a967
	ld (de),a		;a969
	inc c			;a96a
	inc c			;a96b
	nop			;a96c
	nop			;a96d
	nop			;a96e
	nop			;a96f
	nop			;a970
	nop			;a971
	nop			;a972
	nop			;a973
	inc bc			;a974
	inc bc			;a975
	dec b			;a976
	rlca			;a977
	dec bc			;a978
	dec c			;a979
	rla			;a97a
	add hl,de		;a97b
	ld h,03ah		;a97c
	ld b,(hl)		;a97e
	ld a,d			;a97f
	adc a,(hl)		;a980
	jp p,0f40ch		;a981
	ld (bc),a		;a984
	inc bc			;a985
la986h:
	inc b			;a986
	rlca			;a987
la988h:
	jr c,la9c9h		;a988
la98ah:
	ld b,c			;a98a
	ld a,(hl)		;a98b
la98ch:
	ld b,a			;a98c
	ld a,b			;a98d
	ccf			;a98e
	daa			;a98f
	jr la9aah		;a990
	nop			;a992
	nop			;a993
	inc e			;a994
	call po,0c838h		;a995
	ld (hl),b		;a998
	sub b			;a999
	ret po			;a99a
	jr nz,la95dh		;a99b
	ret nz			;a99d
	nop			;a99e
	nop			;a99f
	nop			;a9a0
	nop			;a9a1
	nop			;a9a2
	nop			;a9a3
	add a,0c6h		;a9a4
	xor c			;a9a6
	rst 28h			;a9a7
	jp (hl)			;a9a8
	xor a			;a9a9
la9aah:
	ld d,e			;a9aa
	ld e,l			;a9ab
	inc de			;a9ac
	dec e			;a9ad
	daa			;a9ae
	add hl,sp		;a9af
	ld b,a			;a9b0
	ld a,c			;a9b1
	add a,a			;a9b2
	ld sp,hl		;a9b3
	ld l,a			;a9b4
	ld d,c			;a9b5
	ld a,a			;a9b6
	ld b,c			;a9b7
	ld a,022h		;a9b8
	ld a,022h		;a9ba
	ld a,026h		;a9bc
	inc e			;a9be
	inc d			;a9bf
	inc e			;a9c0
	inc d			;a9c1
	inc c			;a9c2
	inc c			;a9c3
	nop			;a9c4
	ld (hl),b		;a9c5
	ld (hl),b		;a9c6
	ld d,b			;a9c7
	ld e,b			;a9c8
la9c9h:
	jr z,laa1bh		;a9c9
	sbc a,0aeh		;a9cb
	and (hl)		;a9cd
	cp c			;a9ce
	ld e,c			;a9cf
	and (hl)		;a9d0
	cp c			;a9d1
	ld d,c			;a9d2
	ld b,e			;a9d3
	call c,023b0h		;a9d4
	ld a,h			;a9d7
	ld d,b			;a9d8
	ex af,af'		;a9d9
	scf			;a9da
	jr nc,la9ddh		;a9db
la9ddh:
	inc bc			;a9dd
	inc bc			;a9de
	ld bc,00605h		;a9df
	ld bc,00605h		;a9e2
	ld bc,00605h		;a9e5
la9e8h:
	ld (bc),a		;a9e8
la9e9h:
	dec de			;a9e9
	dec e			;a9ea
	inc b			;a9eb
	and 0fah		;a9ec
	jr la98ch		;a9ee
	call po,0f800h		;a9f0
	ld a,b			;a9f3
	nop			;a9f4
	ld a,a			;a9f5
	ld a,b			;a9f6
	djnz la9e8h		;a9f7
	adc a,b			;a9f9
	ld h,h			;a9fa
	sbc a,e			;a9fb
	sbc a,b			;a9fc
	ld d,d			;a9fd
	xor l			;a9fe
	cp h			;a9ff
	xor b			;aa00
	ld h,e			;aa01
	ld e,(hl)		;aa02
	sub h			;aa03
	ld (hl),e		;aa04
	ld l,(hl)		;aa05
	ex af,af'		;aa06
	cp e			;aa07
	or 044h			;aa08
	sbc a,a			;aa0a
	jp m,08e21h		;aa0b
	call m,0c710h		;aa0e
	ld a,h			;aa11
	ex af,af'		;aa12
	rst 20h			;aa13
	ccf			;aa14
	add a,l			;aa15
	ld a,h			;aa16
	dec de			;aa17
	ret po			;aa18
	rra			;aa19
	rrca			;aa1a
laa1bh:
	ret po			;aa1b
	rra			;aa1c
	nop			;aa1d
	ret m			;aa1e
	rlca			;aa1f
	nop			;aa20
	ld a,(hl)		;aa21
	add a,c			;aa22
	nop			;aa23
	add a,b			;aa24
	ld a,(hl)		;aa25
	ld (0de00h),hl		;aa26
	ld a,(hl)		;aa29
	inc h			;aa2a
	adc a,e			;aa2b
	ld sp,hl		;aa2c
	ld b,h			;aa2d
	ld a,e			;aa2e
	cp c			;aa2f
	inc c			;aa30
	di			;aa31
	pop af			;aa32
	ex af,af'		;aa33
	rst 30h			;aa34
	ld sp,lbe00h		;aa35
	ld (0fc00h),hl		;aa38
	call m,07800h		;aa3b
	ld a,b			;aa3e
	jr c,laa85h		;aa3f
	ld a,h			;aa41
	inc b			;aa42
	ld b,d			;aa43
	ld a,(hl)		;aa44
	nop			;aa45
	ld a,c			;aa46
	ld a,a			;aa47
	nop			;aa48
	ld a,c			;aa49
	ld a,a			;aa4a
	ld a,b			;aa4b
	add a,c			;aa4c
	rst 38h			;aa4d
	nop			;aa4e
	add a,e			;aa4f
	rst 38h			;aa50
	nop			;aa51
	ld a,h			;aa52
	ld a,h			;aa53
	nop			;aa54
	ld h,b			;aa55
	ld h,b			;aa56
	jr nz,la9e9h		;aa57
	ret p			;aa59
	ld d,b			;aa5a
	ret z			;aa5b
	cp b			;aa5c
	jr z,laac3h		;aa5d
	ld e,h			;aa5f
	inc d			;aa60
	ld (00a2eh),a		;aa61
	add hl,de		;aa64
	rla			;aa65
	inc b			;aa66
	dec c			;aa67
	dec bc			;aa68
	nop			;aa69
	rlca			;aa6a
	rlca			;aa6b
	nop			;aa6c
	nop			;aa6d
	nop			;aa6e
	nop			;aa6f
	nop			;aa70
	nop			;aa71
	nop			;aa72
	inc bc			;aa73
	add a,b			;aa74
	add a,b			;aa75
	nop			;aa76
	nop			;aa77
	nop			;aa78
	nop			;aa79
	nop			;aa7a
	rst 38h			;aa7b
	nop			;aa7c
	nop			;aa7d
	nop			;aa7e
	nop			;aa7f
	nop			;aa80
	nop			;aa81
	ld bc,00007h		;aa82
laa85h:
	nop			;aa85
	add a,b			;aa86
	add a,b			;aa87
	add a,b			;aa88
	nop			;aa89
	nop			;aa8a
	nop			;aa8b
	nop			;aa8c
	add a,b			;aa8d
	add a,b			;aa8e
	add a,b			;aa8f
	add a,b			;aa90
	add a,b			;aa91
	add a,b			;aa92
	add a,b			;aa93
	nop			;aa94
	nop			;aa95
	ld bc,0df00h		;aa96
	nop			;aa99
	ld a,a			;aa9a
	add a,b			;aa9b
	rst 38h			;aa9c
	nop			;aa9d
	or b			;aa9e
	ld c,a			;aa9f
	nop			;aaa0
	rst 38h			;aaa1
	ld bc,000feh		;aaa2
	nop			;aaa5
	call m,0fe00h		;aaa6
	nop			;aaa9
	call m,0cc00h		;aaaa
	jr nc,laac7h		;aaad
	ret po			;aaaf
	call m,0fe00h		;aab0
	nop			;aab3
	nop			;aab4
	rst 38h			;aab5
	nop			;aab6
	rst 38h			;aab7
	nop			;aab8
	rst 38h			;aab9
	nop			;aaba
	rst 38h			;aabb
	nop			;aabc
	rst 38h			;aabd
	nop			;aabe
	rst 38h			;aabf
	nop			;aac0
	rst 38h			;aac1
	nop			;aac2
laac3h:
	rst 38h			;aac3
	rst 38h			;aac4
	nop			;aac5
	ccf			;aac6
laac7h:
	ret nz			;aac7
	nop			;aac8
	rst 38h			;aac9
	nop			;aaca
	rst 38h			;aacb
	nop			;aacc
	rst 38h			;aacd
	nop			;aace
	rst 38h			;aacf
	nop			;aad0
	rst 38h			;aad1
	nop			;aad2
laad3h:
	rst 38h			;aad3
	add a,b			;aad4
	nop			;aad5
	ret p			;aad6
	nop			;aad7
	inc a			;aad8
	ret nz			;aad9
	ld c,0f0h		;aada
laadch:
	nop			;aadc
	cp 006h			;aadd
	ret m			;aadf
	ld a,a			;aae0
	add a,b			;aae1
	ret p			;aae2
	nop			;aae3
	nop			;aae4
	rst 38h			;aae5
	rra			;aae6
	ret po			;aae7
	ret m			;aae8
	rlca			;aae9
	ret p			;aaea
	rrca			;aaeb
	rst 38h			;aaec
	nop			;aaed
	rst 38h			;aaee
	nop			;aaef
	ret nz			;aaf0
	nop			;aaf1
	nop			;aaf2
	nop			;aaf3
	ccf			;aaf4
	ret nz			;aaf5
	cp 000h			;aaf6
	inc a			;aaf8
	ret nz			;aaf9
	jr laadch		;aafa
	ret m			;aafc
	nop			;aafd
	ret p			;aafe
	nop			;aaff
	nop			;ab00
	nop			;ab01
	nop			;ab02
	nop			;ab03
	nop			;ab04
	rst 38h			;ab05
	nop			;ab06
	rst 38h			;ab07
	ld h,e			;ab08
	sbc a,h			;ab09
	ld (hl),c		;ab0a
	adc a,(hl)		;ab0b
	ld a,h			;ab0c
	add a,e			;ab0d
	rst 38h			;ab0e
	nop			;ab0f
	ld sp,hl		;ab10
	jr laad3h		;ab11
	nop			;ab13
	ld bc,00f01h		;ab14
	ld c,036h		;ab17
	dec a			;ab19
	ld c,l			;ab1a
	halt			;ab1b
	cp e			;ab1c
	call 09dfbh		;ab1d
	halt			;ab20
	ld a,d			;ab21
	ld d,01ah		;ab22
	ret nz			;ab24
	ret nz			;ab25
	ld (hl),b		;ab26
	ret p			;ab27
	ret z			;ab28
	ld a,b			;ab29
	call p,0fa8ch		;ab2a
	and 01dh		;ab2d
	inc de			;ab2f
	dec c			;ab30
	dec bc			;ab31
	dec c			;ab32
	dec bc			;ab33
	nop			;ab34
	nop			;ab35
	ld c,00eh		;ab36
	ld de,02e1fh		;ab38
	ld sp,06e5fh		;ab3b
	ld (hl),c		;ab3e
	ld d,c			;ab3f
	ld (hl),c		;ab40
	ld (hl),c		;ab41
	ld (bc),a		;ab42
	inc bc			;ab43
	rla			;ab44
	dec de			;ab45
	ld d,01bh		;ab46
	scf			;ab48
	ld a,(0fbd7h)		;ab49
	or (hl)			;ab4c
	jp c,lbd7bh		;ab4d
	ld c,e			;ab50
	call 066e5h		;ab51
	ld (bc),a		;ab54
	inc bc			;ab55
	ld h,l			;ab56
	ld h,(hl)		;ab57
	and l			;ab58
	rst 20h			;ab59
	xor e			;ab5a
	defb 0edh ;next byte illegal after ed	;ab5b
	jp c,06abeh		;ab5c
	ld e,(hl)		;ab5f
	dec sp			;ab60
	cpl			;ab61
	ld a,(de)		;ab62
	rra			;ab63
	dec c			;ab64
	dec bc			;ab65
	ld d,01dh		;ab66
	cpl			;ab68
	ld (hl),02fh		;ab69
	scf			;ab6b
	ld e,l			;ab6c
	ld l,(hl)		;ab6d
	ld e,l			;ab6e
	ld l,(hl)		;ab6f
	ld e,e			;ab70
	ld l,l			;ab71
	ld e,e			;ab72
	ld l,l			;ab73
	ld b,a			;ab74
	ld b,a			;ab75
	and c			;ab76
	pop hl			;ab77
	rst 18h			;ab78
	cp (hl)			;ab79
	ld h,b			;ab7a
	ld e,a			;ab7b
	ccf			;ab7c
	jr nz,$+33		;ab7d
	rra			;ab7f
	nop			;ab80
	nop			;ab81
	nop			;ab82
	nop			;ab83
	sub 0b5h		;ab84
	sub 0b5h		;ab86
	out (0b2h),a		;ab88
	ld e,e			;ab8a
	ld l,e			;ab8b
	ld l,a			;ab8c
	ld d,(hl)		;ab8d
	jr nc,$+49		;ab8e
	rra			;ab90
	djnz $+17		;ab91
	rrca			;ab93
	call c,03bdbh		;ab94
	inc (hl)		;ab97
	ld (hl),a		;ab98
	jp (hl)			;ab99
	adc a,0b2h		;ab9a
	dec a			;ab9c
	call 033fch		;ab9d
	rst 8			;aba0
	call z,00303h		;aba1
	adc a,l			;aba4
	adc a,e			;aba5
	call 0764bh		;aba6
	or (hl)			;aba9
	sbc a,a			;abaa
	ld l,a			;abab
	ret po			;abac
	sbc a,a			;abad
	ld a,a			;abae
	ld h,b			;abaf
	rra			;abb0
	rra			;abb1
	nop			;abb2
	nop			;abb3
	inc bc			;abb4
	inc bc			;abb5
	dec c			;abb6
	rrca			;abb7
	inc sp			;abb8
	dec a			;abb9
	adc a,0f2h		;abba
	inc a			;abbc
	call z,030f0h		;abbd
	ret nz			;abc0
	ret nz			;abc1
	nop			;abc2
	nop			;abc3
	call 0febah		;abc4
	sbc a,l			;abc7
	rst 38h			;abc8
	or 0ddh			;abc9
	in a,(c)		;abcb
	sbc a,b			;abcd
	ret po			;abce
	ld h,b			;abcf
	add a,b			;abd0
	add a,b			;abd1
	nop			;abd2
	nop			;abd3
	ld h,b			;abd4
	ld h,b			;abd5
	ld h,b			;abd6
	sbc a,b			;abd7
	sbc a,b			;abd8
	ret m			;abd9
	call pe,094ech		;abda
	ld (hl),h		;abdd
	ld (hl),h		;abde
	ld l,h			;abdf
	ld a,(de)		;abe0
	ld a,(de)		;abe1
	ld d,01ah		;abe2
	ld a,(de)		;abe4
	ld d,03eh		;abe5
	ld a,03eh		;abe7
	jp nz,0defeh		;abe9
	sbc a,e			;abec
	sbc a,e			;abed
	sub l			;abee
	ld (hl),a		;abef
	ld (hl),a		;abf0
	ex de,hl		;abf1
	sbc a,(hl)		;abf2
	sbc a,a			;abf3
	ld (hl),a		;abf4
	call pe,09eefh		;abf5
	ld a,b			;abf8
	ld a,a			;abf9
	ld l,h			;abfa
	inc sp			;abfb
	inc a			;abfc
	jr nc,$-23		;abfd
	ret m			;abff
	ret p			;ac00
	rst 8			;ac01
	pop af			;ac02
	ld b,c			;ac03
	inc bc			;ac04
	inc bc			;ac05
	inc bc			;ac06
	push bc			;ac07
	add a,0c4h		;ac08
	ld a,d			;ac0a
	defb 0fdh,0f8h,004h ;illegal sequence	;ac0b
	ei			;ac0e
	nop			;ac0f
	call m,00003h		;ac10
	call m,00003h		;ac13
	rst 38h			;ac16
	ld a,h			;ac17
	ld a,h			;ac18
	rst 38h			;ac19
	cp 0feh			;ac1a
lac1ch:
	inc b			;ac1c
	call m,0880ch		;ac1d
	ld a,b			;ac20
	jr lac40h		;ac21
	defb 0fdh,03dh,01fh ;illegal sequence	;ac23
	rst 30h			;ac26
	scf			;ac27
	rra			;ac28
	ret p			;ac29
	jr nc,lac3ah		;ac2a
	ld sp,hl		;ac2c
	jr lacabh		;ac2d
	di			;ac2f
	ld (hl),b		;ac30
	cp 0ffh			;ac31
	cp 00fh			;ac33
lac35h:
	rrca			;ac35
	rrca			;ac36
	jr nc,lac69h		;ac37
	ccf			;ac39
lac3ah:
	rst 8			;ac3a
	rst 8			;ac3b
sub_ac3ch:
	ret p			;ac3c
	ccf			;ac3d
	ccf			;ac3e
	rst 8			;ac3f
lac40h:
	ret p			;ac40
	ret p			;ac41
	ret nc			;ac42
	jr nc,lac35h		;ac43
	jr nc,lac66h		;ac45
	rst 38h			;ac47
	rra			;ac48
	nop			;ac49
	rst 38h			;ac4a
	nop			;ac4b
	add a,b			;ac4c
	add a,b			;ac4d
	add a,b			;ac4e
	ld h,b			;ac4f
	ld h,b			;ac50
	ret po			;ac51
	sub b			;ac52
	sub b			;ac53
	ld (hl),b		;ac54
	call m,08cfch		;ac55
	ld (hl),h		;ac58
	ld a,h			;ac59
	ld a,h			;ac5a
	call z,0fcfch		;ac5b
	ld a,(de)		;ac5e
	jp m,03ad6h		;ac5f
	jp m,0d536h		;ac62
	push de			;ac65
lac66h:
	or a			;ac66
	rst 28h			;ac67
	rst 28h			;ac68
lac69h:
	rst 18h			;ac69
	ld a,(hl)		;ac6a
	ld a,a			;ac6b
	ld a,(hl)		;ac6c
	ld b,c			;ac6d
	ld a,(hl)		;ac6e
	ld (hl),b		;ac6f
	ld (hl),b		;ac70
	ld a,a			;ac71
	ld a,(hl)		;ac72
	call m,0fdffh		;ac73
	ccf			;ac76
	ccf			;ac77
	rst 38h			;ac78
	rst 38h			;ac79
	ex (sp),hl		;ac7a
	inc hl			;ac7b
	cp a			;ac7c
	jp 07f83h		;ac7d
	add a,a			;ac80
	rlca			;ac81
	rst 38h			;ac82
	rlca			;ac83
	rlca			;ac84
	rst 38h			;ac85
	rrca			;ac86
	rrca			;ac87
	ld a,a			;ac88
	adc a,a			;ac89
	ld c,03fh		;ac8a
	adc a,08dh		;ac8c
	dec c			;ac8e
	call p,08627h		;ac8f
	cp 08fh			;ac92
	rst 38h			;ac94
	rst 38h			;ac95
	ei			;ac96
	rst 38h			;ac97
	ret m			;ac98
	rst 20h			;ac99
	rst 38h			;ac9a
	ret po			;ac9b
	rst 18h			;ac9c
	rst 18h			;ac9d
	rst 0			;ac9e
	jr c,lacf9h		;ac9f
	ld c,b			;aca1
	or a			;aca2
	rst 18h			;aca3
	ld c,b			;aca4
	or a			;aca5
	cp (hl)			;aca6
	add a,b			;aca7
	ld a,a			;aca8
	ld a,b			;aca9
	nop			;acaa
lacabh:
	rst 38h			;acab
	rst 38h			;acac
	rst 38h			;acad
	rst 38h			;acae
	rst 38h			;acaf
	ld (hl),a		;acb0
	exx			;acb1
	sbc a,002h		;acb2
	defb 0fdh,0feh,000h ;illegal sequence	;acb4
	rst 38h			;acb7
	rst 38h			;acb8
	add a,b			;acb9
	ld a,a			;acba
	jp 07f80h		;acbb
	dec e			;acbe
	inc e			;acbf
	rst 38h			;acc0
	cp (hl)			;acc1
	ld a,0e3h		;acc2
	add a,a			;acc4
	ret m			;acc5
	add a,b			;acc6
	rst 38h			;acc7
	ret nz			;acc8
	ret nz			;acc9
	cp 0c1h			;acca
	ld b,c			;accc
	cp 0e1h			;accd
	ld h,b			;accf
	call m,sub_a263h	;acd0
	ld sp,hl		;acd3
	daa			;acd4
	push hl			;acd5
	pop af			;acd6
	cpl			;acd7
	jp (hl)			;acd8
	ex (sp),hl		;acd9
	ccf			;acda
	di			;acdb
	ld c,l			;acdc
	call 0cd4bh		;acdd
	call 08dcbh		;ace0
	adc a,l			;ace3
	adc a,e			;ace4
	adc a,l			;ace5
	adc a,l			;ace6
	adc a,e			;ace7
	adc a,l			;ace8
	adc a,l			;ace9
	adc a,e			;acea
	call 0cbcdh		;aceb
	ld c,l			;acee
	call 05a4bh		;acef
	jp c,0ff56h		;acf2
	rst 20h			;acf5
	rst 20h			;acf6
	rst 38h			;acf7
	rst 0			;acf8
lacf9h:
	rst 0			;acf9
	ld a,a			;acfa
	ld c,a			;acfb
	rst 8			;acfc
	rst 38h			;acfd
	rst 8			;acfe
	ld c,h			;acff
	cp a			;ad00
	sbc a,099h		;ad01
	cp a			;ad03
	call c,08f9bh		;ad04
	call m,0469bh		;ad07
	ld a,(hl)		;ad0a
	ld c,l			;ad0b
	jp 0c6ffh		;ad0c
	pop hl			;ad0f
	rst 38h			;ad10
lad11h:
	ex (sp),hl		;ad11
	ret p			;ad12
	rst 38h			;ad13
	pop af			;ad14
	ret p			;ad15
	rst 38h			;ad16
	jr nc,lad11h		;ad17
	rra			;ad19
	ret m			;ad1a
	sbc a,b			;ad1b
	rrca			;ad1c
	ret m			;ad1d
	ld l,h			;ad1e
	ld h,a			;ad1f
	call m,0f3f6h		;ad20
	sbc a,(hl)		;ad23
	rst 38h			;ad24
	nop			;ad25
	rst 38h			;ad26
	pop hl			;ad27
	nop			;ad28
	rst 38h			;ad29
	sbc a,(hl)		;ad2a
	sbc a,(hl)		;ad2b
	rst 38h			;ad2c
	ld a,a			;ad2d
	rst 38h			;ad2e
	pop hl			;ad2f
	ld hl,07ee1h		;ad30
lad33h:
	rra			;ad33
	pop af			;ad34
	ld a,00fh		;ad35
	rst 38h			;ad37
	rra			;ad38
	nop			;ad39
	rst 38h			;ad3a
	rrca			;ad3b
	or e			;ad3c
	inc sp			;ad3d
	defb 0edh ;next byte illegal after ed	;ad3e
	rst 18h			;ad3f
	ld de,0effeh		;ad40
	add hl,bc		;ad43
	rst 30h			;ad44
	ld (hl),d		;ad45
	inc bc			;ad46
	rst 38h			;ad47
	rst 38h			;ad48
	ex (sp),hl		;ad49
	ld a,a			;ad4a
	sbc a,a			;ad4b
	ret p			;ad4c
	rst 38h			;ad4d
	rra			;ad4e
	ret p			;ad4f
	sbc a,a			;ad50
	jr c,lad33h		;ad51
	ccf			;ad53
	ld b,a			;ad54
	ld a,d			;ad55
	jp po,0f68fh		;ad56
	add a,01fh		;ad59
	call po,03f84h		;ad5b
	rst 0			;ad5e
	rlca			;ad5f
	cp a			;ad60
	jp 0f883h		;ad61
	rst 0			;ad64
lad65h:
	jp 047f8h		;ad65
	ret nz			;ad68
	pop af			;ad69
	ld l,a			;ad6a
	pop hl			;ad6b
	ld e,d			;ad6c
	jp c,05a56h		;ad6d
	jp c,07656h		;ad70
	or 06eh			;ad73
	ret pe			;ad75
	ret pe			;ad76
	ret c			;ad77
	ret pe			;ad78
	ret pe			;ad79
	ret m			;ad7a
	jr z,lad65h		;ad7b
	ret m			;ad7d
	ld l,b			;ad7e
	ret pe			;ad7f
	ld a,b			;ad80
	ret c			;ad81
	ret c			;ad82
	ret m			;ad83
	ld e,e			;ad84
	ld e,e			;ad85
	ld l,l			;ad86
	ld l,a			;ad87
	ld l,a			;ad88
	ld d,l			;ad89
	cpl			;ad8a
	cpl			;ad8b
	dec (hl)		;ad8c
	cpl			;ad8d
	cpl			;ad8e
	dec (hl)		;ad8f
	ld (hl),037h		;ad90
	ld hl,(01716h)		;ad92
	ld a,(de)		;ad95
	ld a,(de)		;ad96
	dec de			;ad97
lad98h:
	ld d,00eh		;ad98
	rrca			;ad9a
	ld a,(bc)		;ad9b
	ex (sp),hl		;ad9c
	cp a			;ad9d
	and a			;ad9e
	ld sp,hl		;ad9f
	cp a			;ada0
	cp e			;ada1
	call m,03d3fh		;ada2
	cp 07fh			;ada5
	ld a,(hl)		;ada7
	rst 38h			;ada8
	ld a,e			;ada9
	ld a,a			;adaa
	ld a,a			;adab
	di			;adac
	ld a,a			;adad
	ld a,d			;adae
	jp p,03a7fh		;adaf
	jp p,09e7dh		;adb2
	sbc a,e			;adb5
	ld l,(hl)		;adb6
	rst 28h			;adb7
	adc a,e			;adb8
	rst 38h			;adb9
	ld e,a			;adba
	rst 10h			;adbb
	ex de,hl		;adbc
	ld a,0ffh		;adbd
	ld h,d			;adbf
	sbc a,(hl)		;adc0
	ld a,a			;adc1
	ld a,0c0h		;adc2
	cp a			;adc4
	sbc a,(hl)		;adc5
	ret po			;adc6
	rst 18h			;adc7
	ret nz			;adc8
	ret p			;adc9
	ld l,a			;adca
	ret po			;adcb
	nop			;adcc
	rst 38h			;adcd
	nop			;adce
	jr c,lad98h		;adcf
	nop			;add1
	ld a,h			;add2
	cp e			;add3
ladd4h:
	jr c,ladd4h		;add4
	ld a,l			;add6
	ld b,h			;add7
	adc a,0ffh		;add8
	or d			;adda
	sbc a,d			;addb
	cp e			;addc
	and 092h		;addd
	sub e			;addf
	xor 0c6h		;ade0
	ld b,l			;ade2
	ld a,h			;ade3
	scf			;ade4
	rst 20h			;ade5
	ld a,07fh		;ade6
	rst 8			;ade8
	ld a,c			;ade9
	ld l,l			;adea
	call 07b7ah		;adeb
	exx			;adee
	ld h,(hl)		;adef
	ld (hl),l		;adf0
	pop af			;adf1
	ld c,a			;adf2
	ld a,a			;adf3
	rst 38h			;adf4
	ld b,(hl)		;adf5
	ccf			;adf6
	rst 38h			;adf7
	ld h,c			;adf8
	ld a,0ffh		;adf9
	ccf			;adfb
	ld (hl),d		;adfc
	ld l,0e2h		;adfd
	ld (hl),d		;adff
	ld l,0e2h		;ae00
	ex (sp),hl		;ae02
	cp a			;ae03
	di			;ae04
	and e			;ae05
	cp a			;ae06
	di			;ae07
	and b			;ae08
	cp a			;ae09
	ld h,b			;ae0a
	pop bc			;ae0b
	cp 060h			;ae0c
	add a,e			;ae0e
	defb 0fdh,0c1h,007h ;illegal sequence	;ae0f
	ld sp,hl		;ae12
	add a,c			;ae13
	ret p			;ae14
	ret p			;ae15
	ret p			;ae16
	sub b			;ae17
	ret p			;ae18
	ret p			;ae19
	adc a,h			;ae1a
	call m,01f9ch		;ae1b
	ex (sp),hl		;ae1e
	inc bc			;ae1f
	rst 38h			;ae20
	rra			;ae21
	rra			;ae22
	ret po			;ae23
	ret po			;ae24
	ret po			;ae25
	nop			;ae26
	nop			;ae27
	nop			;ae28
	nop			;ae29
	nop			;ae2a
	nop			;ae2b
	rra			;ae2c
	ld sp,hl		;ae2d
	ld a,0cfh		;ae2e
	cp h			;ae30
	sbc a,a			;ae31
	ld h,a			;ae32
	ld e,a			;ae33
	rst 8			;ae34
	pop af			;ae35
	rst 28h			;ae36
	ld h,a			;ae37
	ret c			;ae38
	rst 10h			;ae39
	pop de			;ae3a
	ld l,02dh		;ae3b
	inc a			;ae3d
	ld l,a			;ae3e
	ld l,(hl)		;ae3f
	ld d,(hl)		;ae40
	ld e,e			;ae41
	ld e,e			;ae42
	ld l,e			;ae43
	ret m			;ae44
	or a			;ae45
	ld (hl),b		;ae46
	ret p			;ae47
	ccf			;ae48
	ret m			;ae49
	ex (sp),hl		;ae4a
	call m,0c7f0h		;ae4b
	ei			;ae4e
	ex (sp),hl		;ae4f
	rrca			;ae50
	rst 30h			;ae51
	rst 0			;ae52
	rrca			;ae53
	rst 30h			;ae54
	ld b,0deh		;ae55
	ld l,00dh		;ae57
	cp 08eh			;ae59
	adc a,c			;ae5b
	ld a,h			;ae5c
	cp e			;ae5d
	jr c,lae98h		;ae5e
	rst 0			;ae60
	nop			;ae61
	ret nz			;ae62
	ccf			;ae63
	nop			;ae64
	ret po			;ae65
	rst 18h			;ae66
	ret nz			;ae67
	pop af			;ae68
	xor 0e0h		;ae69
	rst 38h			;ae6b
	ret p			;ae6c
	ld (hl),b		;ae6d
	rst 38h			;ae6e
	ret p			;ae6f
	jr nc,$+129		;ae70
	ld (hl),b		;ae72
	or b			;ae73
	nop			;ae74
	rst 38h			;ae75
	ld a,000h		;ae76
	rst 38h			;ae78
	nop			;ae79
	rrca			;ae7a
	ret p			;ae7b
	nop			;ae7c
	ccf			;ae7d
	rst 8			;ae7e
	rrca			;ae7f
	rst 38h			;ae80
	ccf			;ae81
	ccf			;ae82
	rst 38h			;ae83
	ld a,a			;ae84
	ld a,b			;ae85
	call m,0e3fch		;ae86
	ld sp,hl		;ae89
	ld sp,hl		;ae8a
	sub 00eh		;ae8b
	jp p,03e02h		;ae8d
	jp nz,0fc02h		;ae90
	inc b			;ae93
	inc b			;ae94
	call m,08484h		;ae95
lae98h:
	call m,0cccch		;ae98
	or 0f6h			;ae9b
	jp m,0fafah		;ae9d
	halt			;aea0
	adc a,l			;aea1
	adc a,l			;aea2
	adc a,e			;aea3
	rst 38h			;aea4
	pop af			;aea5
	ld sp,0e1ffh		;aea6
	ld h,c			;aea9
	rst 38h			;aeaa
	ret nz			;aeab
	ret nz			;aeac
	ld a,a			;aead
	ld a,a			;aeae
	ld a,a			;aeaf
	ret m			;aeb0
	ret m			;aeb1
laeb2h:
	rst 38h			;aeb2
	rlca			;aeb3
	rlca			;aeb4
	ret m			;aeb5
	rst 38h			;aeb6
	rst 38h			;aeb7
	rlca			;aeb8
	ret m			;aeb9
	ret m			;aeba
	ret m			;aebb
	rst 38h			;aebc
	rst 38h			;aebd
	ei			;aebe
	rst 38h			;aebf
	ld sp,hl		;aec0
	rst 20h			;aec1
	defb 0fdh,0e0h,0dfh ;illegal sequence	;aec2
	ei			;aec5
	pop af			;aec6
	ld l,03fh		;aec7
	dec (hl)		;aec9
	jp pe,031bfh		;aeca
	xor 0ffh		;aecd
	ld h,d			;aecf
	defb 0ddh,07fh,040h ;illegal sequence	;aed0
	rst 38h			;aed3
	rst 38h			;aed4
	rst 38h			;aed5
	rst 38h			;aed6
	sbc a,l			;aed7
	sub l			;aed8
	ei			;aed9
	cp 062h			;aeda
	ex (sp),iy		;aedc
	ld bc,0fdfeh		;aede
	inc a			;aee1
	rst 18h			;aee2
	cp 07eh			;aee3
	and e			;aee5
	ex (sp),hl		;aee6
	ex (sp),hl		;aee7
	ld e,l			;aee8
	defb 0ddh,0c1h,0beh ;illegal sequence	;aee9
	ex (sp),hl		;aeec
	add a,b			;aeed
	rst 38h			;aeee
	defb 0ddh,01ch,0ffh ;illegal sequence	;aeef
	cp (hl)			;aef2
	cp (hl)			;aef3
	ex (sp),hl		;aef4
	ld h,e			;aef5
	ex (sp),hl		;aef6
	defb 0ddh,03dh,0e1h ;illegal sequence	;aef7
	ld a,a			;aefa
	dec de			;aefb
	jp p,00f3dh		;aefc
	rst 38h			;aeff
	rra			;af00
	nop			;af01
	rst 38h			;af02
	rrca			;af03
	sbc a,0c0h		;af04
	cp a			;af06
	rst 28h			;af07
laf08h:
	ld h,b			;af08
	rst 18h			;af09
	push af			;af0a
	ld sp,0eeefh		;af0b
	rrca			;af0e
	ei			;af0f
	rst 38h			;af10
	ld h,e			;af11
	rst 38h			;af12
	sbc a,a			;af13
	ret p			;af14
	rst 38h			;af15
	jr laf08h		;af16
	sbc a,a			;af18
	scf			;af19
	rst 20h			;af1a
	ccf			;af1b
	cpl			;af1c
	rst 28h			;af1d
	jr c,laf8dh		;af1e
	call 05b7ah		;af20
	exx			;af23
	halt			;af24
	ld e,l			;af25
	pop de			;af26
	ld a,(hl)		;af27
	ld (hl),l		;af28
	pop af			;af29
	ld c,a			;af2a
	ld a,a			;af2b
	rst 38h			;af2c
	ld b,(hl)		;af2d
	ccf			;af2e
	rst 38h			;af2f
	ld h,c			;af30
	ld a,0ffh		;af31
	ccf			;af33
	rst 38h			;af34
	rst 20h			;af35
	rst 20h			;af36
	rst 38h			;af37
	rst 0			;af38
	rst 0			;af39
	ld a,a			;af3a
	ld c,a			;af3b
	rst 8			;af3c
	rst 38h			;af3d
	rst 8			;af3e
	ld c,h			;af3f
	cp a			;af40
	sbc a,099h		;af41
	cp (hl)			;af43
	call c,08d9bh		;af44
	defb 0fdh,09bh,047h ;illegal sequence	;af47
	ld a,a			;af4a
	ld c,l			;af4b
	jp 0c6ffh		;af4c
	pop hl			;af4f
	rst 38h			;af50
	ex (sp),hl		;af51
	ret p			;af52
	rst 38h			;af53
	pop af			;af54
	ret p			;af55
	rst 38h			;af56
	jr nc,laf71h		;af57
	rra			;af59
	ret m			;af5a
	ret pe			;af5b
	rst 28h			;af5c
	ret m			;af5d
	call p,01cf7h		;af5e
	sbc a,(hl)		;af61
	sbc a,e			;af62
	ld l,(hl)		;af63
	ld a,(hl)		;af64
	dec de			;af65
	xor 0efh		;af66
	adc a,e			;af68
	rst 38h			;af69
	ld e,a			;af6a
	rst 10h			;af6b
	ex de,hl		;af6c
	ld a,0ffh		;af6d
	ld h,d			;af6f
	sbc a,(hl)		;af70
laf71h:
	ld a,a			;af71
	ld a,0c0h		;af72
	cp a			;af74
	sbc a,(hl)		;af75
	ret po			;af76
	rst 18h			;af77
	ret nz			;af78
	ret p			;af79
	ld l,a			;af7a
	ret po			;af7b
	ex (sp),hl		;af7c
	cp a			;af7d
	and (hl)		;af7e
	ld sp,hl		;af7f
	cp a			;af80
	cp e			;af81
	call m,03d3fh		;af82
	cp 07fh			;af85
	ld a,(hl)		;af87
	rst 38h			;af88
	ld a,e			;af89
	ld a,a			;af8a
	ld a,a			;af8b
	pop af			;af8c
laf8dh:
	ld a,a			;af8d
	ld a,c			;af8e
	ret p			;af8f
	ld a,a			;af90
	ld a,0feh		;af91
	ld a,a			;af93
	rra			;af94
	rst 38h			;af95
laf96h:
	add hl,sp		;af96
	call 09ebdh		;af97
	ld h,a			;af9a
	ld e,a			;af9b
	rst 8			;af9c
	pop af			;af9d
	rst 28h			;af9e
	ld h,a			;af9f
	ret c			;afa0
	rst 10h			;afa1
	pop de			;afa2
	ld l,02dh		;afa3
	inc a			;afa5
	ld l,a			;afa6
	ld l,(hl)		;afa7
	ld d,(hl)		;afa8
	ld e,e			;afa9
	ld e,e			;afaa
	ld l,e			;afab
	ret m			;afac
	scf			;afad
	ret p			;afae
	ret p			;afaf
	rst 38h			;afb0
	jr c,laf96h		;afb1
	inc a			;afb3
	ret p			;afb4
	rst 0			;afb5
	ei			;afb6
	ex (sp),hl		;afb7
	rrca			;afb8
	rst 30h			;afb9
	rst 0			;afba
	rrca			;afbb
	rst 30h			;afbc
	ld b,0deh		;afbd
	ld l,00dh		;afbf
	cp 08eh			;afc1
	adc a,c			;afc3
	or d			;afc4
	xor (hl)		;afc5
	jp po,laeb2h		;afc6
	jp po,lbfa3h		;afc9
	di			;afcc
	and e			;afcd
	cp a			;afce
	di			;afcf
	and b			;afd0
	cp a			;afd1
	ld h,b			;afd2
	pop bc			;afd3
	cp 060h			;afd4
	add a,e			;afd6
	defb 0fdh,0c1h,007h ;illegal sequence	;afd7
	ld sp,hl		;afda
	add a,c			;afdb
	add a,a			;afdc
	ret m			;afdd
	add a,b			;afde
	rst 38h			;afdf
	ret nz			;afe0
	ret nz			;afe1
	cp 041h			;afe2
	pop bc			;afe4
	cp 0e1h			;afe5
	ld h,b			;afe7
	call m,0e223h		;afe8
	ld sp,hl		;afeb
	daa			;afec
	push hl			;afed
	ld (hl),c		;afee
	cpl			;afef
	jp (hl)			;aff0
	ex (sp),hl		;aff1
	cp a			;aff2
	di			;aff3
	nop			;aff4
	nop			;aff5
	nop			;aff6
	nop			;aff7
	nop			;aff8
	nop			;aff9
	nop			;affa
	rst 38h			;affb
	nop			;affc
	nop			;affd
	nop			;affe
	nop			;afff
	nop			;b000
	nop			;b001
	nop			;b002
	ret m			;b003
	nop			;b004
	nop			;b005
	nop			;b006
	nop			;b007
	ld bc,00101h		;b008
	inc bc			;b00b
	ld bc,00301h		;b00c
	inc bc			;b00f
	inc bc			;b010
	rlca			;b011
	rlca			;b012
	nop			;b013
	nop			;b014
	nop			;b015
	nop			;b016
	nop			;b017
	nop			;b018
	nop			;b019
	nop			;b01a
	ld e,000h		;b01b
	nop			;b01d
	nop			;b01e
	nop			;b01f
	nop			;b020
	nop			;b021
	nop			;b022
	rrca			;b023
	ret nz			;b024
	add a,b			;b025
	add a,b			;b026
	add a,b			;b027
	nop			;b028
	nop			;b029
	nop			;b02a
	nop			;b02b
	rst 38h			;b02c
	rst 38h			;b02d
	rst 38h			;b02e
	rst 38h			;b02f
	rst 38h			;b030
	rst 38h			;b031
	rst 38h			;b032
	rst 38h			;b033
	ret nz			;b034
	ret nz			;b035
	add a,b			;b036
	add a,b			;b037
	add a,b			;b038
	nop			;b039
	nop			;b03a
	nop			;b03b
	nop			;b03c
	nop			;b03d
	nop			;b03e
	nop			;b03f
	nop			;b040
	nop			;b041
	nop			;b042
	nop			;b043
	nop			;b044
	ld bc,00100h		;b045
	nop			;b048
	ld bc,00100h		;b049
	nop			;b04c
	nop			;b04d
	nop			;b04e
	nop			;b04f
	nop			;b050
	nop			;b051
	nop			;b052
	nop			;b053
	nop			;b054
	nop			;b055
	ld bc,00200h		;b056
	ld bc,00305h		;b059
	nop			;b05c
	nop			;b05d
	ld bc,00000h		;b05e
	ld bc,00100h		;b061
	nop			;b064
	ld bc,00100h		;b065
	nop			;b068
	ld bc,00000h		;b069
	nop			;b06c
	nop			;b06d
	nop			;b06e
	nop			;b06f
sub_b070h:
	ld bc,00301h		;b070
	inc bc			;b073
	inc bc			;b074
	ld (bc),a		;b075
	inc bc			;b076
	ld (bc),a		;b077
	di			;b078
	jp p,0f5f6h		;b079
	nop			;b07c
	nop			;b07d
	ld bc,00101h		;b07e
	ld bc,00303h		;b081
	inc bc			;b084
	inc bc			;b085
	rlca			;b086
	ld b,007h		;b087
	ld b,007h		;b089
	ld b,000h		;b08b
	nop			;b08d
	nop			;b08e
	nop			;b08f
	add a,b			;b090
	add a,b			;b091
	ret nz			;b092
	ret nz			;b093
	ret po			;b094
	ld h,b			;b095
	ld (hl),b		;b096
	or b			;b097
	jr c,$-38		;b098
	inc e			;b09a
	call pe,sub_b070h	;b09b
	ld (hl),b		;b09e
	or b			;b09f
	ret po			;b0a0
	ld h,b			;b0a1
	ret po			;b0a2
	ld h,b			;b0a3
	ret po			;b0a4
	ld h,b			;b0a5
	ret po			;b0a6
	ld h,b			;b0a7
	ret nz			;b0a8
	ret nz			;b0a9
	ret nz			;b0aa
	ret nz			;b0ab
	ld (hl),b		;b0ac
	or b			;b0ad
	ld (hl),b		;b0ae
	or b			;b0af
	ld (hl),b		;b0b0
	or b			;b0b1
	ret po			;b0b2
	ld h,b			;b0b3
	ret po			;b0b4
	ret po			;b0b5
	ret po			;b0b6
	ret po			;b0b7
	ret po			;b0b8
	ld h,b			;b0b9
	ret nz			;b0ba
	ret nz			;b0bb
	rst 38h			;b0bc
	nop			;b0bd
	nop			;b0be
	rst 38h			;b0bf
	nop			;b0c0
	rst 38h			;b0c1
	nop			;b0c2
	rst 38h			;b0c3
	nop			;b0c4
	rst 38h			;b0c5
	rst 38h			;b0c6
	rst 38h			;b0c7
	rst 38h			;b0c8
	rst 38h			;b0c9
	nop			;b0ca
	nop			;b0cb
	nop			;b0cc
	nop			;b0cd
	nop			;b0ce
	nop			;b0cf
	nop			;b0d0
	nop			;b0d1
	nop			;b0d2
	nop			;b0d3
	ld bc,00300h		;b0d4
	nop			;b0d7
	ld b,001h		;b0d8
	ld b,001h		;b0da
	nop			;b0dc
	nop			;b0dd
	nop			;b0de
	nop			;b0df
	nop			;b0e0
	nop			;b0e1
	nop			;b0e2
	nop			;b0e3
	ld b,b			;b0e4
	nop			;b0e5
	ret nz			;b0e6
	nop			;b0e7
	ld h,b			;b0e8
	add a,b			;b0e9
	and b			;b0ea
	ret nz			;b0eb
	nop			;b0ec
	nop			;b0ed
	nop			;b0ee
	nop			;b0ef
	nop			;b0f0
	nop			;b0f1
	nop			;b0f2
	nop			;b0f3
	nop			;b0f4
	nop			;b0f5
	nop			;b0f6
	nop			;b0f7
	ld b,000h		;b0f8
	rrca			;b0fa
	ld (bc),a		;b0fb
	or h			;b0fc
	ld a,b			;b0fd
	ld c,a			;b0fe
	inc a			;b0ff
	daa			;b100
	rra			;b101
	add hl,de		;b102
	rlca			;b103
	dec b			;b104
	inc bc			;b105
	ld (bc),a		;b106
	ld bc,00102h		;b107
	ld (bc),a		;b10a
	ld bc,00102h		;b10b
	ld (bc),a		;b10e
	ld bc,001c2h		;b10f
	ld (093c1h),hl		;b112
	ret po			;b115
	set 6,b			;b116
	ret			;b118
	ret p			;b119
	ret			;b11a
	ret p			;b11b
	cp a			;b11c
	ret nz			;b11d
	ret nz			;b11e
	rst 38h			;b11f
	rst 38h			;b120
	rst 38h			;b121
	rst 38h			;b122
	ret nz			;b123
	pop hl			;b124
	add a,b			;b125
	pop bc			;b126
	add a,b			;b127
	jp 0c780h		;b128
	add a,c			;b12b
	ret nz			;b12c
	ld bc,08163h		;b12d
	or e			;b130
	pop bc			;b131
	jp nc,lb6e1h		;b132
	jp nz,0c2a6h		;b135
	call pe,04c86h		;b138
	add a,h			;b13b
	ld b,001h		;b13c
	inc b			;b13e
	inc bc			;b13f
	adc a,c			;b140
lb141h:
	rlca			;b141
	ld (hl),c		;b142
	adc a,a			;b143
	add a,e			;b144
	rst 38h			;b145
	rst 0			;b146
	rst 38h			;b147
	cp 0ffh			;b148
	cp 0ffh			;b14a
	xor (hl)		;b14c
	jp 0c679h		;b14d
	ld (hl),a		;b150
	ret m			;b151
	ld (hl),h		;b152
	ret m			;b153
	ld l,b			;b154
	ret p			;b155
	ld e,b			;b156
	ret po			;b157
	ld d,c			;b158
	ret po			;b159
	ld de,0dfe0h		;b15a
	inc b			;b15d
	sbc a,a			;b15e
	rrca			;b15f
	ccf			;b160
	ex af,af'		;b161
	jr c,lb174h		;b162
	ld a,b			;b164
	djnz $-22		;b165
	jr nc,lb141h		;b167
	ld h,b			;b169
	or b			;b16a
	ld b,b			;b16b
	nop			;b16c
	nop			;b16d
	add a,b			;b16e
	nop			;b16f
	ret nz			;b170
	nop			;b171
	ret p			;b172
	nop			;b173
lb174h:
	sbc a,b			;b174
	ld h,b			;b175
	ld l,h			;b176
	ret p			;b177
	ld h,h			;b178
	ret m			;b179
	sub h			;b17a
	ret m			;b17b
	nop			;b17c
	nop			;b17d
	nop			;b17e
	nop			;b17f
	inc bc			;b180
	nop			;b181
	dec c			;b182
	inc bc			;b183
	rra			;b184
	rlca			;b185
	cpl			;b186
	rra			;b187
	ld de,04233h		;b188
	ld hl,00000h		;b18b
lb18eh:
	ld b,c			;b18e
	nop			;b18f
	ld b,e			;b190
	add a,c			;b191
	inc bc			;b192
	pop bc			;b193
	and d			;b194
	pop bc			;b195
	rst 0			;b196
	jp po,0c6abh		;b197
	ld c,a			;b19a
	add a,(hl)		;b19b
	scf			;b19c
	ld c,0bfh		;b19d
	ld a,(hl)		;b19f
	call m,0e0c2h		;b1a0
	add a,b			;b1a3
	add a,h			;b1a4
	nop			;b1a5
	ld a,(bc)		;b1a6
	inc b			;b1a7
	ld a,(0dc0ch)		;b1a8
	jr nc,lb1adh		;b1ab
lb1adh:
	nop			;b1ad
	nop			;b1ae
	nop			;b1af
	nop			;b1b0
	nop			;b1b1
	nop			;b1b2
	nop			;b1b3
	ld bc,00200h		;b1b4
	ld bc,0030ch		;b1b7
	rla			;b1ba
	ld c,000h		;b1bb
	nop			;b1bd
	inc c			;b1be
	ld bc,0071eh		;b1bf
	add hl,hl		;b1c2
	ld e,066h		;b1c3
	jr c,lb1dfh		;b1c5
	ret po			;b1c7
	ld h,b			;b1c8
	add a,b			;b1c9
	add a,b			;b1ca
	nop			;b1cb
	add a,b			;b1cc
	nop			;b1cd
	ret nz			;b1ce
	add a,b			;b1cf
	add a,b			;b1d0
	nop			;b1d1
	add a,b			;b1d2
	nop			;b1d3
	nop			;b1d4
	nop			;b1d5
	nop			;b1d6
	nop			;b1d7
	nop			;b1d8
	nop			;b1d9
	nop			;b1da
	nop			;b1db
	adc a,b			;b1dc
	or b			;b1dd
	ex af,af'		;b1de
lb1dfh:
	jr nc,$+10		;b1df
	jr nc,lb214h		;b1e1
	jr nz,$+51		;b1e3
	jr nz,lb217h		;b1e5
	ld hl,03f32h		;b1e7
	push af			;b1ea
	jr c,lb18eh		;b1eb
	ld h,b			;b1ed
	nop			;b1ee
	ret nz			;b1ef
	nop			;b1f0
	ret nz			;b1f1
	ld b,b			;b1f2
	ret nz			;b1f3
	ret nz			;b1f4
	pop bc			;b1f5
	ret nz			;b1f6
	jp 0e743h		;b1f7
	ld h,(hl)		;b1fa
	rst 38h			;b1fb
	sub a			;b1fc
	rrca			;b1fd
	ld sp,0621fh		;b1fe
	ld sp,0e346h		;b201
	rlca			;b204
	jp nz,0864bh		;b205
	sub a			;b208
	rrca			;b209
	and a			;b20a
	rra			;b20b
	or b			;b20c
	ret nz			;b20d
	ret nz			;b20e
	nop			;b20f
	inc bc			;b210
	nop			;b211
	rrca			;b212
	inc bc			;b213
lb214h:
	dec (hl)		;b214
	ld c,0d2h		;b215
lb217h:
	inc a			;b217
	call pe,090f0h		;b218
	ret po			;b21b
	ld a,(hl)		;b21c
	inc e			;b21d
	cp h			;b21e
	ld (hl),b		;b21f
	ret p			;b220
	ret nz			;b221
	ld b,b			;b222
	add a,b			;b223
	nop			;b224
	nop			;b225
	nop			;b226
	nop			;b227
	nop			;b228
	nop			;b229
	nop			;b22a
	nop			;b22b
	ld l,c			;b22c
	ret p			;b22d
	xor b			;b22e
	ld (hl),b		;b22f
	ld l,b			;b230
	jr nc,$+102		;b231
	jr c,lb2a1h		;b233
	jr nc,lb1dfh		;b235
	ld (hl),b		;b237
	ld c,b			;b238
	jr nc,lb2abh		;b239
	nop			;b23b
	add a,e			;b23c
	ld a,h			;b23d
	add a,038h		;b23e
	ld a,b			;b240
	nop			;b241
	nop			;b242
	nop			;b243
	nop			;b244
	nop			;b245
	nop			;b246
	nop			;b247
	nop			;b248
	nop			;b249
	nop			;b24a
	nop			;b24b
	rla			;b24c
	rrca			;b24d
	djnz lb25fh		;b24e
	rrca			;b250
	nop			;b251
	nop			;b252
	nop			;b253
	nop			;b254
	nop			;b255
	nop			;b256
	nop			;b257
	nop			;b258
	nop			;b259
	nop			;b25a
	nop			;b25b
	nop			;b25c
	nop			;b25d
	nop			;b25e
lb25fh:
	nop			;b25f
	nop			;b260
	nop			;b261
	nop			;b262
	nop			;b263
	nop			;b264
	jr c,lb267h		;b265
lb267h:
	nop			;b267
	ld b,(hl)		;b268
	jr c,lb26bh		;b269
lb26bh:
	or e			;b26b
	ld a,h			;b26c
	nop			;b26d
	ld a,c			;b26e
	cp 000h			;b26f
	sbc a,l			;b271
	sbc a,(hl)		;b272
	ld h,b			;b273
	dec bc			;b274
	rlca			;b275
	nop			;b276
	ld b,00eh		;b277
	ld bc,00c14h		;b279
	inc bc			;b27c
	jr z,$+26		;b27d
	rlca			;b27f
lb280h:
	ld de,00e31h		;b280
lb283h:
	ld b,a			;b283
	daa			;b284
	jr lb2afh		;b285
	ld l,a			;b287
	djnz $-110		;b288
	ld e,a			;b28a
	jr nz,$+15		;b28b
	ld c,0f0h		;b28d
	dec c			;b28f
	ld c,0f0h		;b290
	ld a,(de)		;b292
	inc e			;b293
	ret po			;b294
	ld (0c03ch),a		;b295
	ret po			;b298
	call m,08800h		;b299
	ret p			;b29c
	nop			;b29d
	djnz lb280h		;b29e
	nop			;b2a0
lb2a1h:
	ret nz			;b2a1
	nop			;b2a2
	nop			;b2a3
	xor b			;b2a4
	jr nc,lb2e7h		;b2a5
	and b			;b2a7
	or b			;b2a8
	ld b,b			;b2a9
	add a,b			;b2aa
lb2abh:
	and b			;b2ab
	ld b,b			;b2ac
lb2adh:
	add a,b			;b2ad
	and b			;b2ae
lb2afh:
	ld b,b			;b2af
	add a,b			;b2b0
	and b			;b2b1
	ld b,b			;b2b2
	add a,b			;b2b3
	and b			;b2b4
	ld b,b			;b2b5
	add a,b			;b2b6
	and b			;b2b7
	ld b,b			;b2b8
	and b			;b2b9
	or b			;b2ba
	ld b,b			;b2bb
	add a,b			;b2bc
	add a,b			;b2bd
	nop			;b2be
	nop			;b2bf
	ld a,b			;b2c0
	nop			;b2c1
	jr c,lb283h		;b2c2
	nop			;b2c4
	ld a,a			;b2c5
	ld a,a			;b2c6
	nop			;b2c7
	ld h,b			;b2c8
	ret po			;b2c9
	rra			;b2ca
	jr nz,lb2adh		;b2cb
	rra			;b2cd
	or b			;b2ce
	ld (hl),b		;b2cf
	rrca			;b2d0
	ld e,b			;b2d1
lb2d2h:
	jr c,$+9		;b2d2
	djnz lb2efh		;b2d4
	ret po			;b2d6
	jr nc,lb312h		;b2d7
	ret nz			;b2d9
	jr c,lb30dh		;b2da
	ret nz			;b2dc
	ld h,b			;b2dd
	ld (hl),c		;b2de
	add a,b			;b2df
	ld d,b			;b2e0
	ld h,c			;b2e1
	add a,b			;b2e2
	add a,b			;b2e3
	pop hl			;b2e4
	nop			;b2e5
	and b			;b2e6
lb2e7h:
	jp 04300h		;b2e7
	add a,e			;b2ea
	nop			;b2eb
	nop			;b2ec
	nop			;b2ed
	nop			;b2ee
lb2efh:
	nop			;b2ef
	nop			;b2f0
	nop			;b2f1
	nop			;b2f2
	nop			;b2f3
	nop			;b2f4
	nop			;b2f5
	nop			;b2f6
	nop			;b2f7
	nop			;b2f8
	nop			;b2f9
	nop			;b2fa
	nop			;b2fb
	nop			;b2fc
	nop			;b2fd
	nop			;b2fe
	nop			;b2ff
	ex af,af'		;b300
	jr lb313h		;b301
	nop			;b303
	ret m			;b304
lb305h:
	ret m			;b305
	ret m			;b306
	ret c			;b307
	jr z,lb2d2h		;b308
	add hl,sp		;b30a
	jp (hl)			;b30b
	add hl,bc		;b30c
lb30dh:
	add hl,sp		;b30d
	jp (hl)			;b30e
lb30fh:
	add hl,bc		;b30f
	dec sp			;b310
	ex de,hl		;b311
lb312h:
	dec bc			;b312
lb313h:
	dec sp			;b313
	ex de,hl		;b314
	dec bc			;b315
	dec sp			;b316
	ex de,hl		;b317
	ld a,(bc)		;b318
	ccf			;b319
	rst 28h			;b31a
	ld c,0f8h		;b31b
	ret m			;b31d
	ret m			;b31e
	ret m			;b31f
	ret m			;b320
	ret m			;b321
	sbc a,b			;b322
	ld l,b			;b323
	adc a,b			;b324
	jr lb30fh		;b325
	ex af,af'		;b327
	ld e,b			;b328
	ret pe			;b329
	ex af,af'		;b32a
	ld e,b			;b32b
	ret pe			;b32c
	ex af,af'		;b32d
	ld e,b			;b32e
	ret pe			;b32f
	ex af,af'		;b330
	ld e,b			;b331
	ret pe			;b332
	ex af,af'		;b333
	ld c,00eh		;b334
	dec c			;b336
	rrca			;b337
	ld c,00dh		;b338
	inc e			;b33a
	dec e			;b33b
	dec de			;b33c
	rra			;b33d
	jr lb358h		;b33e
	rra			;b340
	rra			;b341
	rra			;b342
	inc a			;b343
	dec sp			;b344
	scf			;b345
	inc a			;b346
	dec sp			;b347
	scf			;b348
	ld (hl),b		;b349
	ld (hl),a		;b34a
	ld l,a			;b34b
	inc bc			;b34c
	inc bc			;b34d
	inc bc			;b34e
	rlca			;b34f
	rlca			;b350
	ld b,007h		;b351
	rlca			;b353
	ld b,00eh		;b354
	ld c,00dh		;b356
lb358h:
	rrca			;b358
	inc c			;b359
	inc c			;b35a
	rrca			;b35b
	rrca			;b35c
	rrca			;b35d
	ld e,01dh		;b35e
	dec de			;b360
lb361h:
	ld e,01dh		;b361
	dec de			;b363
	ld e,b			;b364
	ret pe			;b365
	ex af,af'		;b366
	ld e,c			;b367
	jp (hl)			;b368
	add hl,bc		;b369
	ld e,c			;b36a
	jp (hl)			;b36b
	add hl,bc		;b36c
	ei			;b36d
	dec de			;b36e
	dec de			;b36f
	rst 38h			;b370
	rst 38h			;b371
	rst 38h			;b372
	ld e,a			;b373
	rst 28h			;b374
	ld c,05fh		;b375
	rst 28h			;b377
	ld c,05eh		;b378
	xor 00dh		;b37a
	pop bc			;b37c
	rst 18h			;b37d
	jr nc,lb361h		;b37e
	rst 18h			;b380
	jr nc,lb305h		;b381
	cp a			;b383
	ld h,b			;b384
	jp nz,060bfh		;b385
	rst 38h			;b388
	nop			;b389
	nop			;b38a
	rst 38h			;b38b
	rst 38h			;b38c
	rst 38h			;b38d
	add a,l			;b38e
	ld a,(hl)		;b38f
	ret nz			;b390
	dec b			;b391
	cp 080h			;b392
	ld h,b			;b394
	add a,c			;b395
	rra			;b396
	add a,b			;b397
	ld bc,0007fh		;b398
	nop			;b39b
	rst 38h			;b39c
	rst 38h			;b39d
	nop			;b39e
	rst 38h			;b39f
	rst 38h			;b3a0
	nop			;b3a1
	nop			;b3a2
	rst 38h			;b3a3
	rst 38h			;b3a4
	rst 38h			;b3a5
	rst 38h			;b3a6
	ld bc,0fe00h		;b3a7
	inc bc			;b3aa
	ld bc,0f6f9h		;b3ab
	rst 38h			;b3ae
	cp c			;b3af
	or (hl)			;b3b0
	cp a			;b3b1
	cp e			;b3b2
	or h			;b3b3
	cp (hl)			;b3b4
	ccf			;b3b5
	jr nc,lb3f4h		;b3b6
	ccf			;b3b8
	jr nc,lb3ebh		;b3b9
	ccf			;b3bb
	ccf			;b3bc
	ccf			;b3bd
	ld a,03eh		;b3be
	ld a,030h		;b3c0
	jr nc,lb3f4h		;b3c2
	dec bc			;b3c4
	defb 0fdh,081h,003h ;illegal sequence	;b3c5
	defb 0fdh,001h,0ffh ;illegal sequence	;b3c8
	inc bc			;b3cb
	inc bc			;b3cc
	rst 38h			;b3cd
	rra			;b3ce
	rra			;b3cf
	ret m			;b3d0
	ret m			;b3d1
	ret m			;b3d2
	ret nz			;b3d3
	ret nz			;b3d4
	ret nz			;b3d5
	nop			;b3d6
	nop			;b3d7
	nop			;b3d8
	nop			;b3d9
	nop			;b3da
	nop			;b3db
	cp a			;b3dc
	and (hl)		;b3dd
	or l			;b3de
	cp (hl)			;b3df
	xor l			;b3e0
	xor e			;b3e1
	inc e			;b3e2
	rra			;b3e3
	dec de			;b3e4
	add hl,sp		;b3e5
	ld a,037h		;b3e6
	ccf			;b3e8
	jr nc,lb41bh		;b3e9
lb3ebh:
	ld a,a			;b3eb
	ld a,a			;b3ec
	ld a,a			;b3ed
	rst 38h			;b3ee
	rst 38h			;b3ef
	rst 38h			;b3f0
	nop			;b3f1
	nop			;b3f2
	nop			;b3f3
lb3f4h:
	cp 005h			;b3f4
	inc bc			;b3f6
	cp 0fdh			;b3f7
	rst 38h			;b3f9
	ld b,005h		;b3fa
	rlca			;b3fc
	rlca			;b3fd
	inc b			;b3fe
	rlca			;b3ff
	rlca			;b400
	inc b			;b401
	inc b			;b402
	rlca			;b403
	rlca			;b404
	rlca			;b405
lb406h:
	rlca			;b406
	rlca			;b407
	rlca			;b408
lb409h:
	nop			;b409
	nop			;b40a
	nop			;b40b
	ld (hl),b		;b40c
	ret nc			;b40d
	djnz $+114		;b40e
	ret nc			;b410
	djnz $+114		;b411
	ret nc			;b413
	djnz lb406h		;b414
	ld d,b			;b416
	djnz lb409h		;b417
	jr nc,$+50		;b419
lb41bh:
	ret p			;b41b
lb41ch:
	ret p			;b41c
	ret p			;b41d
	ret p			;b41e
lb41fh:
	ret p			;b41f
	ret p			;b420
	nop			;b421
	nop			;b422
	nop			;b423
	inc l			;b424
	call p,0fc04h		;b425
	inc c			;b428
	inc c			;b429
	ret m			;b42a
	ret m			;b42b
	ret m			;b42c
	add a,b			;b42d
	add a,b			;b42e
	add a,b			;b42f
	nop			;b430
	nop			;b431
	nop			;b432
	nop			;b433
	nop			;b434
	nop			;b435
	nop			;b436
	nop			;b437
	nop			;b438
	nop			;b439
	nop			;b43a
	nop			;b43b
	ex de,hl		;b43c
	and 0dch		;b43d
	ld (hl),e		;b43f
	ld (hl),d		;b440
	ld l,h			;b441
	ld a,(hl)		;b442
	ld a,l			;b443
	ld (hl),b		;b444
	ld a,03dh		;b445
	jr nc,lb465h		;b447
	dec de			;b449
	jr lb46bh		;b44a
	rra			;b44c
	rra			;b44d
	rrca			;b44e
	rrca			;b44f
	rrca			;b450
	nop			;b451
	nop			;b452
	nop			;b453
	cp 0feh			;b454
	cp 0feh			;b456
	cp 0feh			;b458
	call c,08c6ch		;b45a
	inc e			;b45d
	call pe,sub_b80ch	;b45e
	ret c			;b461
	jr lb41ch		;b462
	ret c			;b464
lb465h:
	jr lb41fh		;b465
	ret c			;b467
	jr lb4dah		;b468
	or b			;b46a
lb46bh:
	jr nc,lb489h		;b46b
	call pe,00e0ch		;b46d
	or 006h			;b470
	rlca			;b472
	ei			;b473
	inc bc			;b474
	rst 38h			;b475
	rlca			;b476
	rlca			;b477
	rst 38h			;b478
	rst 38h			;b479
	rst 38h			;b47a
	ld a,a			;b47b
	ei			;b47c
	ld (bc),a		;b47d
	rst 38h			;b47e
	or 005h			;b47f
	rst 38h			;b481
	xor 00dh		;b482
	nop			;b484
	nop			;b485
	nop			;b486
	nop			;b487
	nop			;b488
lb489h:
	nop			;b489
	rrca			;b48a
	rrca			;b48b
	rrca			;b48c
	rra			;b48d
	rra			;b48e
	rra			;b48f
	rra			;b490
	jr lb4b2h		;b491
	jr c,lb4d0h		;b493
	scf			;b495
	inc a			;b496
	dec sp			;b497
	scf			;b498
	ld a,d			;b499
	ld (hl),l		;b49a
	ld l,a			;b49b
	nop			;b49c
	nop			;b49d
	nop			;b49e
	nop			;b49f
	nop			;b4a0
	nop			;b4a1
	ret m			;b4a2
	ret m			;b4a3
	ret m			;b4a4
	call m,0fcfch		;b4a5
	call m,0ec0ch		;b4a8
	ld a,0e6h		;b4ab
	add a,03eh		;b4ad
	and 0c6h		;b4af
	ld h,a			;b4b1
lb4b2h:
	in a,(083h)		;b4b2
	sbc a,h			;b4b4
	sbc a,e			;b4b5
	sub a			;b4b6
	sbc a,h			;b4b7
	sbc a,e			;b4b8
	sub a			;b4b9
	call c,0d7dbh		;b4ba
	rst 38h			;b4bd
	ld (hl),b		;b4be
	ld (hl),b		;b4bf
	rst 38h			;b4c0
	ld a,a			;b4c1
	ld a,a			;b4c2
	ld a,h			;b4c3
	cp e			;b4c4
	scf			;b4c5
	inc a			;b4c6
	in a,(017h)		;b4c7
	inc a			;b4c9
	in a,(017h)		;b4ca
sub_b4cch:
	ld b,l			;b4cc
	cp (hl)			;b4cd
	ret nz			;b4ce
	dec bc			;b4cf
lb4d0h:
	defb 0fdh,081h,08bh ;illegal sequence	;b4d0
	ld a,l			;b4d3
	add a,c			;b4d4
	rst 38h			;b4d5
	inc bc			;b4d6
	inc bc			;b4d7
	rst 38h			;b4d8
	rst 38h			;b4d9
lb4dah:
	rst 38h			;b4da
	rla			;b4db
	ei			;b4dc
	inc bc			;b4dd
	rla			;b4de
	ei			;b4df
	inc bc			;b4e0
	ld l,0f6h		;b4e1
	ld b,0f7h		;b4e3
	ld d,(hl)		;b4e5
	sub l			;b4e6
	ccf			;b4e7
	sbc a,01dh		;b4e8
	ld a,(hl)		;b4ea
	defb 0ddh,01bh,07eh ;illegal sequence	;b4eb
	defb 0ddh,01bh,07eh ;illegal sequence	;b4ee
	defb 0ddh,01bh,07eh ;illegal sequence	;b4f1
	defb 0ddh,01bh,07ch ;illegal sequence	;b4f4
	in a,(017h)		;b4f7
	ld a,h			;b4f9
	in a,(017h)		;b4fa
lb4fch:
	ld a,h			;b4fc
	in a,(017h)		;b4fd
	ld a,h			;b4ff
	in a,(017h)		;b500
lb502h:
	ld a,b			;b502
	rst 10h			;b503
	rrca			;b504
	rst 38h			;b505
	jr nz,$+34		;b506
	rst 38h			;b508
	rst 38h			;b509
	rst 38h			;b50a
	jr nc,lb4fch		;b50b
	rra			;b50d
	ld sp,01feeh		;b50e
	jr nc,lb502h		;b511
	ld e,01ch		;b513
	ex de,hl		;b515
	rrca			;b516
	inc c			;b517
	rst 30h			;b518
	rlca			;b519
	inc c			;b51a
	rst 30h			;b51b
	rlca			;b51c
	cp 00fh			;b51d
	rrca			;b51f
	cp 0ffh			;b520
	rst 38h			;b522
	cp 0f7h			;b523
	rlca			;b525
	call m,00fefh		;b526
	call m,00fefh		;b529
	inc bc			;b52c
	rst 38h			;b52d
	ret m			;b52e
	inc bc			;b52f
	rst 38h			;b530
	nop			;b531
	ld bc,000ffh		;b532
	nop			;b535
	rst 38h			;b536
	nop			;b537
	nop			;b538
	rst 38h			;b539
	nop			;b53a
	rst 38h			;b53b
	nop			;b53c
	rst 38h			;b53d
	nop			;b53e
	cp 0ffh			;b53f
	nop			;b541
	defb 0fdh,0feh,02eh ;illegal sequence	;b542
	or 006h			;b545
	ld l,0f6h		;b547
	ld b,05ch		;b549
	call pe,05c0ch		;b54b
	call pe,05c0ch		;b54e
	call pe,sub_b80ch	;b551
	ret c			;b554
	jr $-70			;b555
	ret c			;b557
	jr $-70			;b558
	ret c			;b55a
	jr lb57ah		;b55b
	call pe,00e0bh		;b55d
	or 005h			;b560
	ld c,0f6h		;b562
	dec b			;b564
	rlca			;b565
	ei			;b566
	ld (bc),a		;b567
	rst 38h			;b568
	rlca			;b569
	rlca			;b56a
	rst 38h			;b56b
	rst 38h			;b56c
	rst 38h			;b56d
	ld a,a			;b56e
	rst 30h			;b56f
	rlca			;b570
	defb 0fdh,0edh,00dh ;illegal sequence	;b571
	rrca			;b574
	cp 0e0h			;b575
	add a,a			;b577
	ld a,(hl)		;b578
	ret p			;b579
lb57ah:
	add a,a			;b57a
	ld a,a			;b57b
	ret p			;b57c
	ld b,e			;b57d
	ccf			;b57e
	ret m			;b57f
	and c			;b580
	sbc a,a			;b581
	ld a,h			;b582
	and c			;b583
	sbc a,a			;b584
	ld a,h			;b585
	pop de			;b586
	adc a,0beh		;b587
	jp (hl)			;b589
	and 0deh		;b58a
	call m,01fdbh		;b58c
	call m,037bbh		;b58f
	call m,037bbh		;b592
	call m,0777bh		;b595
	rst 38h			;b598
	ret p			;b599
	ret p			;b59a
	rst 18h			;b59b
	rst 18h			;b59c
	rst 18h			;b59d
	sbc a,h			;b59e
	sbc a,e			;b59f
	sub a			;b5a0
	inc e			;b5a1
	dec de			;b5a2
	rla			;b5a3
	inc e			;b5a4
	dec de			;b5a5
lb5a6h:
	rla			;b5a6
	inc e			;b5a7
	dec de			;b5a8
	rla			;b5a9
	inc e			;b5aa
	dec de			;b5ab
	rla			;b5ac
	dec de			;b5ad
	inc e			;b5ae
	ld d,01fh		;b5af
	djnz lb5c3h		;b5b1
lb5b3h:
	rra			;b5b3
	rra			;b5b4
	rra			;b5b5
	rra			;b5b6
	rra			;b5b7
lb5b8h:
	rra			;b5b8
	nop			;b5b9
lb5bah:
	nop			;b5ba
	nop			;b5bb
	ret c			;b5bc
	ret m			;b5bd
	jr lb5b8h		;b5be
	ret c			;b5c0
	jr lb5b3h		;b5c1
lb5c3h:
	or b			;b5c3
	jr nc,lb5a6h		;b5c4
	ld h,b			;b5c6
	ld h,b			;b5c7
	ret nz			;b5c8
	ret nz			;b5c9
	ret nz			;b5ca
	add a,b			;b5cb
	add a,b			;b5cc
	add a,b			;b5cd
	nop			;b5ce
	nop			;b5cf
	nop			;b5d0
	nop			;b5d1
	nop			;b5d2
	nop			;b5d3
	rst 38h			;b5d4
	ld a,e			;b5d5
	inc bc			;b5d6
	cp 076h			;b5d7
	ld b,07ch		;b5d9
	xor h			;b5db
lb5dch:
	inc c			;b5dc
	ld a,h			;b5dd
	xor h			;b5de
	inc c			;b5df
	jr c,lb5bah		;b5e0
	jr lb5dch		;b5e2
	ret m			;b5e4
	ret m			;b5e5
	ret p			;b5e6
	ret p			;b5e7
	ret p			;b5e8
	nop			;b5e9
	nop			;b5ea
	nop			;b5eb
	nop			;b5ec
	nop			;b5ed
	nop			;b5ee
	nop			;b5ef
	nop			;b5f0
	nop			;b5f1
	rst 38h			;b5f2
	rst 38h			;b5f3
	rst 38h			;b5f4
	rst 38h			;b5f5
	rst 38h			;b5f6
	rst 38h			;b5f7
	rst 38h			;b5f8
	nop			;b5f9
	rst 38h			;b5fa
	nop			;b5fb
	rst 38h			;b5fc
	rst 38h			;b5fd
	nop			;b5fe
	rst 38h			;b5ff
	rst 38h			;b600
	nop			;b601
	rst 38h			;b602
	rst 38h			;b603
	rst 38h			;b604
	rst 38h			;b605
	nop			;b606
	rst 38h			;b607
	rst 38h			;b608
	nop			;b609
	rst 38h			;b60a
	nop			;b60b
	nop			;b60c
	rst 38h			;b60d
	rst 38h			;b60e
	rst 38h			;b60f
	rst 38h			;b610
	rst 38h			;b611
	rst 38h			;b612
	rst 38h			;b613
	rst 38h			;b614
	rst 38h			;b615
	rst 38h			;b616
	nop			;b617
	rst 38h			;b618
	rst 38h			;b619
	nop			;b61a
	rst 38h			;b61b
	nop			;b61c
	rst 38h			;b61d
	rst 38h			;b61e
	nop			;b61f
	rst 38h			;b620
	nop			;b621
	nop			;b622
	rst 38h			;b623
lb624h:
	nop			;b624
	nop			;b625
	rst 38h			;b626
	nop			;b627
	nop			;b628
	rst 38h			;b629
	nop			;b62a
	rst 38h			;b62b
	nop			;b62c
	rst 38h			;b62d
	nop			;b62e
	rst 38h			;b62f
	rst 38h			;b630
	nop			;b631
	rst 38h			;b632
	rst 38h			;b633
	nop			;b634
	rst 38h			;b635
	rst 38h			;b636
	nop			;b637
	rst 38h			;b638
	nop			;b639
	nop			;b63a
	rst 38h			;b63b
	nop			;b63c
	nop			;b63d
	rst 38h			;b63e
	nop			;b63f
	nop			;b640
	rst 38h			;b641
	nop			;b642
	rst 38h			;b643
	rst 38h			;b644
	rst 38h			;b645
	rst 38h			;b646
	rst 38h			;b647
	rst 38h			;b648
	nop			;b649
	nop			;b64a
	nop			;b64b
	nop			;b64c
	rst 38h			;b64d
	rst 38h			;b64e
	nop			;b64f
	rst 38h			;b650
	rst 38h			;b651
	djnz lb624h		;b652
	xor a			;b654
	ld l,c			;b655
	ret pe			;b656
	ld (hl),037h		;b657
	sub h			;b659
	ld a,b			;b65a
	dec sp			;b65b
	adc a,b			;b65c
	ld a,h			;b65d
	rst 38h			;b65e
	sub h			;b65f
	ld (hl),h		;b660
	ld a,a			;b661
	inc d			;b662
	call p,00000h		;b663
	nop			;b666
	nop			;b667
	nop			;b668
	nop			;b669
	nop			;b66a
	rra			;b66b
	rra			;b66c
	nop			;b66d
	rra			;b66e
	rra			;b66f
	ld (bc),a		;b670
	ld a,(00d35h)		;b671
	ld a,l			;b674
	ld h,(hl)		;b675
	ld b,072h		;b676
	ld l,a			;b678
	rra			;b679
	pop af			;b67a
	rst 8			;b67b
	rlca			;b67c
	inc a			;b67d
	inc sp			;b67e
	inc bc			;b67f
	jr c,lb6b9h		;b680
	inc bc			;b682
sub_b683h:
	jr c,lb6bch		;b683
	rrca			;b685
	ld a,b			;b686
	ld h,a			;b687
	rlca			;b688
	ld (hl),b		;b689
	ld l,a			;b68a
	rra			;b68b
	pop af			;b68c
	rst 8			;b68d
	rrca			;b68e
	pop hl			;b68f
	rst 18h			;b690
	ld c,0e0h		;b691
	rst 18h			;b693
	rlca			;b694
	ld (hl),b		;b695
	ld l,a			;b696
	rlca			;b697
	ld (hl),b		;b698
	ld l,a			;b699
	rra			;b69a
	pop af			;b69b
	rst 8			;b69c
	ld c,0e0h		;b69d
	rst 18h			;b69f
	ccf			;b6a0
	jp po,01f9eh		;b6a1
	jp nz,01dbeh		;b6a4
	ret nz			;b6a7
	cp (hl)			;b6a8
	ld a,a			;b6a9
	call nz,01f3ch		;b6aa
lb6adh:
	ret nz			;b6ad
	cp (hl)			;b6ae
	rra			;b6af
	jp nz,01fbeh		;b6b0
	ret nz			;b6b3
	cp (hl)			;b6b4
	rra			;b6b5
	jp nz,01fbeh		;b6b6
lb6b9h:
	ret nz			;b6b9
	cp (hl)			;b6ba
	rra			;b6bb
lb6bch:
	jp nz,01fbeh		;b6bc
	ret nz			;b6bf
	cp (hl)			;b6c0
	rra			;b6c1
	jp nz,000beh		;b6c2
	ld bc,00001h		;b6c5
	rra			;b6c8
	rra			;b6c9
	nop			;b6ca
	cp 0ffh			;b6cb
	nop			;b6cd
	ret po			;b6ce
	rst 38h			;b6cf
	add a,c			;b6d0
	add a,b			;b6d1
	ld a,(hl)		;b6d2
	di			;b6d3
	ld (hl),b		;b6d4
	adc a,h			;b6d5
	ld a,a			;b6d6
	ld a,b			;b6d7
	ret po			;b6d8
	cp 011h			;b6d9
	ret p			;b6db
	nop			;b6dc
	ld bc,00001h		;b6dd
	rra			;b6e0
lb6e1h:
	rra			;b6e1
	nop			;b6e2
	ld e,01fh		;b6e3
	inc bc			;b6e5
	dec de			;b6e6
	inc d			;b6e7
	inc bc			;b6e8
	add hl,de		;b6e9
	rla			;b6ea
	inc bc			;b6eb
	jr lb705h		;b6ec
	inc bc			;b6ee
	jr lb708h		;b6ef
	inc bc			;b6f1
	jr lb70bh		;b6f2
	nop			;b6f4
	cp 0ffh			;b6f5
	nop			;b6f7
	ret p			;b6f8
	rst 38h			;b6f9
	ld hl,09ee0h		;b6fa
	add hl,sp		;b6fd
	ret c			;b6fe
	and (hl)		;b6ff
	ccf			;b700
	adc a,0b8h		;b701
	dec sp			;b703
	sub (hl)		;b704
lb705h:
	ld (hl),d		;b705
	dec sp			;b706
	sub h			;b707
lb708h:
	ld (hl),d		;b708
	dec sp			;b709
	sub (hl)		;b70a
lb70bh:
	ld (hl),d		;b70b
	pop af			;b70c
	inc c			;b70d
	add a,e			;b70e
	di			;b70f
	adc a,b			;b710
	add a,a			;b711
	di			;b712
	ex af,af'		;b713
	add a,a			;b714
	jp p,08788h		;b715
	di			;b718
	ex af,af'		;b719
	add a,(hl)		;b71a
	push hl			;b71b
	sub b			;b71c
	adc a,(hl)		;b71d
	rst 20h			;b71e
	djnz lb6adh		;b71f
	rst 20h			;b721
	sub b			;b722
	adc a,h			;b723
	sbc a,a			;b724
	ld b,d			;b725
	ld a,09dh		;b726
	ld b,b			;b728
	ld a,09fh		;b729
	ld b,b			;b72b
	inc a			;b72c
	sbc a,a			;b72d
	ld b,h			;b72e
	inc a			;b72f
	sbc a,e			;b730
	ld b,b			;b731
	inc a			;b732
	ccf			;b733
	add a,b			;b734
	ld a,b			;b735
	ccf			;b736
	adc a,b			;b737
	ld a,b			;b738
	scf			;b739
	add a,b			;b73a
	ld a,b			;b73b
	ld a,a			;b73c
	djnz $+1		;b73d
	ccf			;b73f
	nop			;b740
	ret po			;b741
	ld a,a			;b742
	nop			;b743
	ret nz			;b744
	ld a,a			;b745
	nop			;b746
	add a,b			;b747
	rst 38h			;b748
	nop			;b749
	nop			;b74a
	nop			;b74b
	rst 38h			;b74c
	rst 38h			;b74d
	nop			;b74e
	rst 38h			;b74f
	rst 38h			;b750
	nop			;b751
	nop			;b752
	nop			;b753
	cp 005h			;b754
	call m,003fch		;b756
	nop			;b759
	cp 001h			;b75a
	nop			;b75c
	rst 38h			;b75d
	nop			;b75e
	nop			;b75f
	rst 38h			;b760
	nop			;b761
	nop			;b762
	nop			;b763
	rst 38h			;b764
	rst 38h			;b765
	nop			;b766
	rst 38h			;b767
	rst 38h			;b768
	nop			;b769
	nop			;b76a
	nop			;b76b
	ld a,a			;b76c
	djnz $+1		;b76d
	ld a,a			;b76f
	nop			;b770
	ret po			;b771
	ld a,a			;b772
	nop			;b773
	ret nz			;b774
	ld a,a			;b775
	nop			;b776
	add a,b			;b777
	rst 38h			;b778
	nop			;b779
	nop			;b77a
	nop			;b77b
	nop			;b77c
	rst 38h			;b77d
	ld a,a			;b77e
	nop			;b77f
	rst 38h			;b780
	ccf			;b781
	nop			;b782
	rst 38h			;b783
	nop			;b784
	nop			;b785
	nop			;b786
	nop			;b787
	nop			;b788
	nop			;b789
	nop			;b78a
	rst 38h			;b78b
	rst 38h			;b78c
	nop			;b78d
	rst 38h			;b78e
	rst 38h			;b78f
	add a,b			;b790
	add a,b			;b791
	ld a,a			;b792
	ld a,a			;b793
	nop			;b794
	rst 38h			;b795
	ccf			;b796
	nop			;b797
	rst 38h			;b798
	ld a,a			;b799
	rrca			;b79a
	rst 38h			;b79b
	nop			;b79c
	nop			;b79d
	nop			;b79e
	nop			;b79f
	nop			;b7a0
	nop			;b7a1
	nop			;b7a2
	rst 38h			;b7a3
	rst 38h			;b7a4
	nop			;b7a5
	rst 38h			;b7a6
	rst 38h			;b7a7
	nop			;b7a8
	nop			;b7a9
	rst 38h			;b7aa
	rst 38h			;b7ab
	nop			;b7ac
	rst 38h			;b7ad
	rst 38h			;b7ae
	nop			;b7af
	rst 38h			;b7b0
	rst 38h			;b7b1
	rst 38h			;b7b2
	rst 38h			;b7b3
	nop			;b7b4
	nop			;b7b5
	nop			;b7b6
	nop			;b7b7
	nop			;b7b8
	nop			;b7b9
	nop			;b7ba
	rst 38h			;b7bb
	rst 38h			;b7bc
	nop			;b7bd
	rst 38h			;b7be
	rst 38h			;b7bf
	ld bc,0fe01h		;b7c0
	rst 38h			;b7c3
	ld (bc),a		;b7c4
	call m,004ffh		;b7c5
	ret m			;b7c8
	rst 38h			;b7c9
	ret m			;b7ca
	ret p			;b7cb
	rrca			;b7cc
	pop hl			;b7cd
	rst 18h			;b7ce
	rrca			;b7cf
	ret po			;b7d0
	rst 18h			;b7d1
	rlca			;b7d2
	ld (hl),b		;b7d3
	ld l,a			;b7d4
	dec b			;b7d5
	jr c,lb80eh		;b7d6
	rlca			;b7d8
	jr lb7f3h		;b7d9
	nop			;b7db
	rra			;b7dc
	rra			;b7dd
	nop			;b7de
	rrca			;b7df
	rrca			;b7e0
	nop			;b7e1
	nop			;b7e2
	nop			;b7e3
	ccf			;b7e4
	jp po,01f9eh		;b7e5
	ret z			;b7e8
	cp h			;b7e9
	ccf			;b7ea
	add a,b			;b7eb
	ld (hl),b		;b7ec
	ld a,b			;b7ed
	add a,a			;b7ee
	ld b,a			;b7ef
	ret nz			;b7f0
	inc a			;b7f1
	inc a			;b7f2
lb7f3h:
	nop			;b7f3
	ret po			;b7f4
lb7f5h:
	ret po			;b7f5
	nop			;b7f6
	nop			;b7f7
	nop			;b7f8
	nop			;b7f9
	nop			;b7fa
	nop			;b7fb
	ld (hl),b		;b7fc
	rra			;b7fd
lb7feh:
	ret p			;b7fe
	ld a,h			;b7ff
	inc de			;b800
	ret p			;b801
	ld a,a			;b802
	djnz lb7f5h		;b803
	rst 38h			;b805
	nop			;b806
	nop			;b807
	nop			;b808
	rst 38h			;b809
	rst 38h			;b80a
lb80bh:
	ld a,a			;b80b
sub_b80ch:
	djnz lb7feh		;b80c
lb80eh:
	ld a,h			;b80e
	djnz $-11		;b80f
	ld a,b			;b811
	djnz lb80bh		;b812
	rst 38h			;b814
	rst 38h			;b815
	rst 38h			;b816
	nop			;b817
	rst 38h			;b818
	nop			;b819
	nop			;b81a
	rst 38h			;b81b
	nop			;b81c
	rst 38h			;b81d
	nop			;b81e
	nop			;b81f
	nop			;b820
	rst 38h			;b821
	rst 38h			;b822
	nop			;b823
	rst 38h			;b824
	rst 38h			;b825
	nop			;b826
	rst 38h			;b827
	rst 38h			;b828
	nop			;b829
	nop			;b82a
	rst 38h			;b82b
	nop			;b82c
	rst 38h			;b82d
	rst 38h			;b82e
	nop			;b82f
	rst 38h			;b830
	rst 38h			;b831
	add a,b			;b832
	ld a,(hl)		;b833
	ld a,a			;b834
	ld b,c			;b835
	cp a			;b836
	ld bc,00181h		;b837
	ld a,(hl)		;b83a
	add a,c			;b83b
	ld bc,0007eh		;b83c
	nop			;b83f
	rst 38h			;b840
	rst 38h			;b841
	nop			;b842
	rst 38h			;b843
	ld a,b			;b844
	rlca			;b845
	ret p			;b846
	ld (hl),b		;b847
	cpl			;b848
	ret po			;b849
	ret p			;b84a
	rrca			;b84b
	ret po			;b84c
	ret po			;b84d
	ld e,a			;b84e
	ret nz			;b84f
	pop bc			;b850
	cp (hl)			;b851
	add a,b			;b852
	pop bc			;b853
	cp (hl)			;b854
	add a,b			;b855
	add a,d			;b856
	ld a,l			;b857
lb858h:
	ld bc,07b84h		;b858
	inc bc			;b85b
	ld a,a			;b85c
	rrca			;b85d
	rst 38h			;b85e
	ld (hl),b		;b85f
	rra			;b860
lb861h:
	ret p			;b861
	ld a,h			;b862
	inc de			;b863
	ret p			;b864
	ld a,a			;b865
	djnz lb858h		;b866
	rst 38h			;b868
	nop			;b869
	nop			;b86a
	nop			;b86b
	rst 38h			;b86c
	rst 38h			;b86d
	ld a,a			;b86e
	djnz lb861h		;b86f
	ld a,h			;b871
	djnz $-11		;b872
	rla			;b874
	jp p,017efh		;b875
	pop af			;b878
	rst 28h			;b879
	rla			;b87a
	ld (hl),c		;b87b
	ld l,a			;b87c
	rla			;b87d
	ld (hl),b		;b87e
	ld l,a			;b87f
	rla			;b880
	ld (hl),b		;b881
	ld l,a			;b882
	dec d			;b883
	ld (hl),b		;b884
	ld l,(hl)		;b885
	rra			;b886
	ld h,b			;b887
	ld h,b			;b888
	nop			;b889
	ld a,a			;b88a
	ld a,a			;b88b
	cp 011h			;b88c
	jp p,003eeh		;b88e
	jp p,021fah		;b891
	and 0ffh		;b894
	nop			;b896
	nop			;b897
	nop			;b898
	rst 38h			;b899
	rst 38h			;b89a
	jp c,0c66bh		;b89b
	sbc a,d			;b89e
	add hl,hl		;b89f
	add a,08eh		;b8a0
	ei			;b8a2
	add a,(hl)		;b8a3
	ld (hl),h		;b8a4
	dec bc			;b8a5
	call p,03fe4h		;b8a6
	call po,01be4h		;b8a9
	call po,000ffh		;b8ac
	nop			;b8af
	nop			;b8b0
	rst 38h			;b8b1
	rst 38h			;b8b2
	adc a,h			;b8b3
	rst 38h			;b8b4
	add a,h			;b8b5
	sbc a,h			;b8b6
	ld (hl),e		;b8b7
	adc a,h			;b8b8
	inc e			;b8b9
	rst 30h			;b8ba
	inc c			;b8bb
	rrca			;b8bc
	pop hl			;b8bd
	rst 38h			;b8be
	ld e,a			;b8bf
	jp nz,05ebfh		;b8c0
	pop bc			;b8c3
	cp (hl)			;b8c4
	ld a,a			;b8c5
	add a,b			;b8c6
	add a,b			;b8c7
	nop			;b8c8
	rst 38h			;b8c9
	rst 38h			;b8ca
	ld e,(hl)		;b8cb
	jp 05ebeh		;b8cc
	pop bc			;b8cf
	cp (hl)			;b8d0
	ld e,(hl)		;b8d1
	jp 05ebeh		;b8d2
	pop bc			;b8d5
	cp (hl)			;b8d6
	ld e,(hl)		;b8d7
	jp 05ebeh		;b8d8
	pop bc			;b8db
	cp (hl)			;b8dc
	ld e,(hl)		;b8dd
	jp 07fbeh		;b8de
	add a,b			;b8e1
	add a,b			;b8e2
	nop			;b8e3
	rst 38h			;b8e4
	rst 38h			;b8e5
	ld e,(hl)		;b8e6
	jp 05ebeh		;b8e7
	pop bc			;b8ea
	cp (hl)			;b8eb
	rst 0			;b8ec
	inc a			;b8ed
	jp 07cc5h		;b8ee
	jp 03ce5h		;b8f1
	ex (sp),hl		;b8f4
	push af			;b8f5
	inc c			;b8f6
	di			;b8f7
	rst 38h			;b8f8
	nop			;b8f9
	nop			;b8fa
	nop			;b8fb
	rst 38h			;b8fc
	rst 38h			;b8fd
	cp l			;b8fe
	add a,d			;b8ff
	ld a,l			;b900
	ld e,(hl)		;b901
	jp 088beh		;b902
	rst 38h			;b905
	add a,e			;b906
	adc a,l			;b907
	cp 080h			;b908
	adc a,l			;b90a
	ld a,(hl)		;b90b
	add a,b			;b90c
	cp 001h			;b90d
	ld bc,0ff00h		;b90f
	rst 38h			;b912
	adc a,l			;b913
	cp 080h			;b914
	adc a,l			;b916
	ld a,(hl)		;b917
	add a,b			;b918
	adc a,l			;b919
	cp 080h			;b91a
	sub l			;b91c
	ei			;b91d
	add a,d			;b91e
	sub l			;b91f
	ei			;b920
	add a,d			;b921
	sub l			;b922
	ei			;b923
	add a,d			;b924
	ld sp,hl		;b925
	ld b,006h		;b926
	nop			;b928
	rst 38h			;b929
	rst 38h			;b92a
	sub l			;b92b
	ei			;b92c
	add a,d			;b92d
	sub l			;b92e
	ld a,e			;b92f
	add a,d			;b930
	sub l			;b931
	ei			;b932
	add a,d			;b933
	sub l			;b934
	ld a,e			;b935
	add a,d			;b936
	sub l			;b937
	ei			;b938
	add a,d			;b939
	sub l			;b93a
	ld a,e			;b93b
	add a,d			;b93c
	sub l			;b93d
	ei			;b93e
	add a,d			;b93f
	sub l			;b940
	ld a,e			;b941
	add a,d			;b942
	sub l			;b943
	ei			;b944
	add a,d			;b945
	sub l			;b946
	ld a,e			;b947
	add a,d			;b948
	sub l			;b949
	ei			;b94a
	add a,d			;b94b
	adc a,l			;b94c
	ld a,(hl)		;b94d
	add a,b			;b94e
	adc a,l			;b94f
	cp 080h			;b950
	adc a,l			;b952
	ld a,(hl)		;b953
	add a,b			;b954
	adc a,l			;b955
	cp 080h			;b956
	cp 001h			;b958
	ld bc,0ff00h		;b95a
	rst 38h			;b95d
	adc a,l			;b95e
	ld a,(hl)		;b95f
	add a,b			;b960
	adc a,l			;b961
	cp 080h			;b962
	sub l			;b964
	ld a,e			;b965
	add a,d			;b966
	sub l			;b967
	ei			;b968
	add a,d			;b969
	sub l			;b96a
	ld a,e			;b96b
	add a,d			;b96c
	sub l			;b96d
	ei			;b96e
	add a,d			;b96f
	ld sp,hl		;b970
	ld b,006h		;b971
	nop			;b973
lb974h:
	rst 38h			;b974
	rst 38h			;b975
	sub l			;b976
	ei			;b977
	add a,d			;b978
	sub l			;b979
	ei			;b97a
	add a,d			;b97b
	jr z,lb974h		;b97c
	ld b,014h		;b97e
	ei			;b980
	inc bc			;b981
	adc a,d			;b982
	defb 0fdh,081h,0fch ;illegal sequence	;b983
	inc bc			;b986
	inc bc			;b987
	nop			;b988
	rst 38h			;b989
	rst 38h			;b98a
	jp po,0e01fh		;b98b
	pop hl			;b98e
	ccf			;b98f
	ret po			;b990
	ret p			;b991
	rrca			;b992
	ret p			;b993
	adc a,l			;b994
	ld a,(hl)		;b995
	add a,b			;b996
	call 080beh		;b997
	call 0803eh		;b99a
	pop af			;b99d
	ld c,000h		;b99e
	cp 001h			;b9a0
	ld bc,0ff00h		;b9a2
	rst 38h			;b9a5
	nop			;b9a6
	rst 38h			;b9a7
	rst 38h			;b9a8
	nop			;b9a9
	nop			;b9aa
	nop			;b9ab
	adc a,(hl)		;b9ac
	ld sp,hl		;b9ad
	add a,(hl)		;b9ae
	ld c,07bh		;b9af
	add a,(hl)		;b9b1
	ld d,0f1h		;b9b2
	ld c,016h		;b9b4
	di			;b9b6
	ld c,016h		;b9b7
	pop af			;b9b9
	ld c,016h		;b9ba
	di			;b9bc
	ld c,016h		;b9bd
	pop hl			;b9bf
	ld c,036h		;b9c0
	jp 01c0eh		;b9c2
	di			;b9c5
	inc c			;b9c6
	ld c,h			;b9c7
	rst 20h			;b9c8
	inc e			;b9c9
	ld c,h			;b9ca
	ex (sp),hl		;b9cb
	inc e			;b9cc
	ld c,h			;b9cd
	rst 20h			;b9ce
	inc e			;b9cf
	xor h			;b9d0
	jp lac1ch		;b9d1
	rst 0			;b9d4
	inc e			;b9d5
	xor h			;b9d6
	jp lac1ch		;b9d7
	rst 0			;b9da
	inc e			;b9db
	ld (hl),b		;b9dc
	rra			;b9dd
	ret p			;b9de
	ld a,b			;b9df
	rrca			;b9e0
	ret m			;b9e1
	ld a,h			;b9e2
	add a,e			;b9e3
	ld a,h			;b9e4
	inc a			;b9e5
	add a,a			;b9e6
	ld a,h			;b9e7
	ld a,083h		;b9e8
	ld a,(hl)		;b9ea
	ld e,a			;b9eb
	ret nz			;b9ec
	ccf			;b9ed
	ld l,a			;b9ee
	pop hl			;b9ef
	rra			;b9f0
	ld (hl),a		;b9f1
	ret nc			;b9f2
	rrca			;b9f3
	pop bc			;b9f4
	inc e			;b9f5
	ex (sp),hl		;b9f6
	pop bc			;b9f7
	ld a,h			;b9f8
	jp 03c89h		;b9f9
	jp 0f895h		;b9fc
	add a,e			;b9ff
	dec d			;ba00
	ld a,b			;ba01
	add a,e			;ba02
	add hl,hl		;ba03
	call p,02907h		;ba04
	call p,05107h		;ba07
	call pe,sub_a60fh	;ba0a
	pop de			;ba0d
	ld e,0a6h		;ba0e
	out (01eh),a		;ba10
	ld b,(hl)		;ba12
	or c			;ba13
	ld a,046h		;ba14
	or e			;ba16
	ld a,0cfh		;ba17
	jr nc,lba4bh		;ba19
	nop			;ba1b
	rst 38h			;ba1c
	rst 38h			;ba1d
	add a,a			;ba1e
	ld (hl),c		;ba1f
	ld a,(hl)		;ba20
	add a,(hl)		;ba21
	ld (hl),b		;ba22
	ld a,a			;ba23
	adc a,l			;ba24
	ld a,(hl)		;ba25
	add a,b			;ba26
	adc a,l			;ba27
	cp 080h			;ba28
	adc a,l			;ba2a
	ld a,(hl)		;ba2b
	add a,b			;ba2c
	adc a,l			;ba2d
	cp 080h			;ba2e
	adc a,l			;ba30
	ld a,(hl)		;ba31
	add a,b			;ba32
	adc a,l			;ba33
	cp 080h			;ba34
	adc a,l			;ba36
	ld a,(hl)		;ba37
	add a,b			;ba38
	adc a,l			;ba39
	cp 080h			;ba3a
	ld l,e			;ba3c
	ret c			;ba3d
	rla			;ba3e
	ld l,e			;ba3f
	ret c			;ba40
	rla			;ba41
	ld h,l			;ba42
	call c,0621bh		;ba43
	sbc a,01dh		;ba46
	jp 03c3ch		;ba48
lba4bh:
	nop			;ba4b
	rst 30h			;ba4c
	rst 30h			;ba4d
	ld h,b			;ba4e
	out (013h),a		;ba4f
	ld h,b			;ba51
	pop de			;ba52
	ld de,07ec5h		;ba53
	ret nz			;ba56
	push bc			;ba57
	ld a,(hl)		;ba58
	ret nz			;ba59
	adc a,d			;ba5a
	dec a			;ba5b
	pop bc			;ba5c
	adc a,d			;ba5d
	defb 0fdh,081h,00ah ;illegal sequence	;ba5e
	ld a,l			;ba61
	add a,c			;ba62
	inc d			;ba63
	ei			;ba64
	inc bc			;ba65
	inc d			;ba66
	jp m,02802h		;ba67
	or 006h			;ba6a
	push bc			;ba6c
	ld e,(hl)		;ba6d
	ret po			;ba6e
	jp z,0c17dh		;ba6f
	adc a,d			;ba72
	cp l			;ba73
	pop bc			;ba74
	call p,0030bh		;ba75
	call m,00202h		;ba78
	nop			;ba7b
	cp 0feh			;ba7c
	nop			;ba7e
	call m,000fch		;ba7f
	nop			;ba82
	nop			;ba83
	ld e,(hl)		;ba84
	jp 05ebeh		;ba85
	pop bc			;ba88
	cp (hl)			;ba89
	ld e,h			;ba8a
	pop bc			;ba8b
	cp (hl)			;ba8c
	ld d,a			;ba8d
	ret nz			;ba8e
	cp b			;ba8f
	ld a,a			;ba90
	add a,b			;ba91
	add a,b			;ba92
	nop			;ba93
	rst 38h			;ba94
	rst 38h			;ba95
	nop			;ba96
	rst 38h			;ba97
	rst 38h			;ba98
	nop			;ba99
	nop			;ba9a
	nop			;ba9b
	sub l			;ba9c
	ei			;ba9d
	add a,d			;ba9e
	sub l			;ba9f
	ei			;baa0
	add a,d			;baa1
	dec d			;baa2
	ld a,e			;baa3
	add a,d			;baa4
	push hl			;baa5
	dec de			;baa6
	ld (bc),a		;baa7
	ld sp,hl		;baa8
	rlca			;baa9
	ld b,000h		;baaa
	rst 38h			;baac
	rst 38h			;baad
	nop			;baae
	rst 38h			;baaf
	rst 38h			;bab0
	nop			;bab1
	nop			;bab2
	nop			;bab3
	pop af			;bab4
	rra			;bab5
	ret p			;bab6
	pop hl			;bab7
	rrca			;bab8
	ret p			;bab9
	jp po,0e01fh		;baba
	jp po,0e03fh		;babd
	jp po,0e03fh		;bac0
	jp nz,0e01fh		;bac3
	push bc			;bac6
	ld a,0c0h		;bac7
	push bc			;bac9
	ld a,(hl)		;baca
sub_bacbh:
	ret nz			;bacb
	cpl			;bacc
	pop hl			;bacd
	rst 18h			;bace
	ld l,0e3h		;bacf
	sbc a,05fh		;bad1
	jp lbfbeh		;bad3
	add a,h			;bad6
	ld a,h			;bad7
	cp a			;bad8
	add a,h			;bad9
	ld a,h			;bada
	ld a,h			;badb
	dec bc			;badc
	ret m			;badd
	ret m			;bade
	rla			;badf
	ret p			;bae0
	ld sp,hl		;bae1
	ld d,0f0h		;bae2
	rst 38h			;bae4
	rst 38h			;bae5
	rst 38h			;bae6
	nop			;bae7
	rst 38h			;bae8
	nop			;bae9
	rst 38h			;baea
	rst 38h			;baeb
	nop			;baec
	rst 38h			;baed
	cp 000h			;baee
	rst 38h			;baf0
	cp 000h			;baf1
	cp 07ch			;baf3
	ld bc,000feh		;baf5
	ld bc,0fe01h		;baf8
	cp 071h			;bafb
	rrca			;bafd
	ret p			;bafe
	ld (hl),c		;baff
	rra			;bb00
	ret p			;bb01
	ld h,c			;bb02
	rrca			;bb03
	ret p			;bb04
	ret po			;bb05
	ccf			;bb06
	ret po			;bb07
	rst 38h			;bb08
	nop			;bb09
	nop			;bb0a
	nop			;bb0b
	rst 38h			;bb0c
	rst 38h			;bb0d
	jp nz,0c07fh		;bb0e
	pop bc			;bb11
	cp (hl)			;bb12
	ret nz			;bb13
	jp nz,081bdh		;bb14
	ld b,d			;bb17
	cp l			;bb18
	ld bc,03ec1h		;bb19
	nop			;bb1c
	ld h,b			;bb1d
	rra			;bb1e
	ret nz			;bb1f
	ld h,b			;bb20
	rra			;bb21
	ret nz			;bb22
	jr nc,lbb34h		;bb23
	ret po			;bb25
	jr lbb2fh		;bb26
	ret p			;bb28
	jr lbb32h		;bb29
	ret p			;bb2b
	adc a,h			;bb2c
	ld a,e			;bb2d
	add a,e			;bb2e
lbb2fh:
	adc a,l			;bb2f
	ei			;bb30
	add a,d			;bb31
lbb32h:
	adc a,l			;bb32
	ld a,e			;bb33
lbb34h:
	add a,d			;bb34
	ld sp,hl		;bb35
	ld b,006h		;bb36
	nop			;bb38
	rst 38h			;bb39
	rst 38h			;bb3a
	adc a,(hl)		;bb3b
	jp m,08d81h		;bb3c
	ld a,h			;bb3f
	add a,e			;bb40
	adc a,l			;bb41
	call m,sub_b683h	;bb42
	adc a,c			;bb45
	halt			;bb46
	ld l,(hl)		;bb47
	dec sp			;bb48
	and 06eh		;bb49
	add hl,de		;bb4b
	and 0ffh		;bb4c
	nop			;bb4e
	nop			;bb4f
	nop			;bb50
	rst 38h			;bb51
	rst 38h			;bb52
	adc a,(hl)		;bb53
	dec sp			;bb54
	add a,086h		;bb55
	ld (hl),c		;bb57
	adc a,(hl)		;bb58
	add a,(hl)		;bb59
	ld (hl),e		;bb5a
	adc a,(hl)		;bb5b
	inc c			;bb5c
	inc bc			;bb5d
	ret m			;bb5e
	add a,(hl)		;bb5f
	ld bc,0067ch		;bb60
	add a,c			;bb63
	call m,0807fh		;bb64
	add a,b			;bb67
	nop			;bb68
	rst 38h			;bb69
	rst 38h			;bb6a
	rra			;bb6b
	push bc			;bb6c
	call m,0833fh		;bb6d
	ret m			;bb70
	ccf			;bb71
	adc a,e			;bb72
	ret m			;bb73
	pop af			;bb74
	ld l,0e0h		;bb75
	jp po,0c15dh		;bb77
	jp po,0c15dh		;bb7a
	call m,00303h		;bb7d
	nop			;bb80
	rst 38h			;bb81
	rst 38h			;bb82
	add a,h			;bb83
	ld a,e			;bb84
	add a,e			;bb85
	sbc a,03dh		;bb86
	pop bc			;bb88
	sbc a,03dh		;bb89
	pop bc			;bb8b
	add a,l			;bb8c
	cp 080h			;bb8d
	add a,l			;bb8f
	ld a,(hl)		;bb90
	add a,b			;bb91
	adc a,d			;bb92
	ld a,l			;bb93
	add a,c			;bb94
	ld a,(bc)		;bb95
	defb 0fdh,001h,00ah ;illegal sequence	;bb96
	defb 0fdh,001h,0e4h ;illegal sequence	;bb99
	dec de			;bb9c
	inc bc			;bb9d
	ret m			;bb9e
	rlca			;bb9f
	rlca			;bba0
	nop			;bba1
	cp 0feh			;bba2
	sub d			;bba4
	ld a,l			;bba5
	add a,c			;bba6
	sub d			;bba7
	defb 0fdh,081h,012h ;illegal sequence	;bba8
	ld a,l			;bbab
	add a,c			;bbac
	call p,0030bh		;bbad
	ret m			;bbb0
	ld b,006h		;bbb1
	nop			;bbb3
	cp 0feh			;bbb4
	nop			;bbb6
	call m,000fch		;bbb7
	nop			;bbba
	nop			;bbbb
	ld e,a			;bbbc
	pop bc			;bbbd
	cp a			;bbbe
	ld e,a			;bbbf
	jp nz,05ebfh		;bbc0
	pop bc			;bbc3
	cp (hl)			;bbc4
	ld a,a			;bbc5
	add a,b			;bbc6
	add a,b			;bbc7
	nop			;bbc8
	rst 38h			;bbc9
	rst 38h			;bbca
	ld e,(hl)		;bbcb
	jp 05ebeh		;bbcc
	pop bc			;bbcf
	cp (hl)			;bbd0
	ld e,(hl)		;bbd1
	jp 00bbeh		;bbd2
	jr lbbeeh		;bbd5
	dec bc			;bbd7
	jr lbbf1h		;bbd8
	dec bc			;bbda
	sbc a,b			;bbdb
	sub a			;bbdc
	rrca			;bbdd
	ret nc			;bbde
	ret nc			;bbdf
	nop			;bbe0
	rst 38h			;bbe1
	rst 38h			;bbe2
	adc a,e			;bbe3
	ld a,b			;bbe4
	ld (hl),a		;bbe5
	ld c,e			;bbe6
	cp b			;bbe7
	scf			;bbe8
	xor e			;bbe9
	ret c			;bbea
	rla			;bbeb
	nop			;bbec
	rst 38h			;bbed
lbbeeh:
	rst 38h			;bbee
	ex af,af'		;bbef
	ret z			;bbf0
lbbf1h:
	or a			;bbf1
	inc d			;bbf2
	call nc,07bbbh		;bbf3
	jp z,03d3ch		;bbf6
	add a,h			;bbf9
	ld a,(hl)		;bbfa
	ei			;bbfb
	adc a,d			;bbfc
	ld a,d			;bbfd
	ld a,e			;bbfe
	ld a,(bc)		;bbff
	jp m,00273h		;bc00
	jp m,02fc0h		;bc03
	ld c,0c1h		;bc06
	cpl			;bc08
	inc c			;bc09
	ret nz			;bc0a
	ld l,00dh		;bc0b
	nop			;bc0d
	inc e			;bc0e
	inc e			;bc0f
	nop			;bc10
	rst 38h			;bc11
	rst 38h			;bc12
	pop bc			;bc13
	inc l			;bc14
	dec bc			;bc15
	rst 0			;bc16
	inc l			;bc17
	inc bc			;bc18
	jp 00729h		;bc19
	dec c			;bc1c
	ret po			;bc1d
	sbc a,03eh		;bc1e
	push hl			;bc20
	sbc a,h			;bc21
	ld a,(de)		;bc22
	pop bc			;bc23
	cp h			;bc24
	nop			;bc25
	add a,b			;bc26
	add a,b			;bc27
	nop			;bc28
	rst 38h			;bc29
	rst 38h			;bc2a
	ld a,l			;bc2b
	ld (de),a		;bc2c
	pop af			;bc2d
	ld l,a			;bc2e
	ld (bc),a		;bc2f
	pop af			;bc30
	defb 0fdh,020h,0e3h ;illegal sequence	;bc31
	and b			;bc34
	ld c,(hl)		;bc35
	dec c			;bc36
	and e			;bc37
	ld c,(hl)		;bc38
lbc39h:
	add hl,bc		;bc39
	and c			;bc3a
	ld c,h			;bc3b
	dec bc			;bc3c
	add a,a			;bc3d
	ld e,h			;bc3e
	inc de			;bc3f
	add a,e			;bc40
	ld e,b			;bc41
	rla			;bc42
	adc a,a			;bc43
	add hl,sp		;bc44
	daa			;bc45
	add a,(hl)		;bc46
	jr nc,lbc78h		;bc47
	rra			;bc49
	ld (hl),d		;bc4a
	ld c,(hl)		;bc4b
	dec sp			;bc4c
	add a,b			;bc4d
	ld a,h			;bc4e
	rst 38h			;bc4f
	adc a,b			;bc50
	ld a,b			;bc51
	halt			;bc52
	ld bc,0fef8h		;bc53
	ld de,000f0h		;bc56
	nop			;bc59
	nop			;bc5a
	nop			;bc5b
	rst 38h			;bc5c
	rst 38h			;bc5d
	ld (0dde0h),iy		;bc5e
	ld (bc),a		;bc62
	ret po			;bc63
	adc a,a			;bc64
	jr nz,lbca3h		;bc65
	adc a,(hl)		;bc67
	inc h			;bc68
	inc a			;bc69
	ld c,060h		;bc6a
	ld a,h			;bc6c
	ld c,065h		;bc6d
	ld a,l			;bc6f
	nop			;bc70
	ld h,e			;bc71
	ld h,e			;bc72
	nop			;bc73
	rst 38h			;bc74
	rst 38h			;bc75
	ex af,af'		;bc76
	ex (sp),hl		;bc77
lbc78h:
	jp m,0e701h		;bc78
	call p,0600dh		;bc7b
	ld e,(hl)		;bc7e
	ccf			;bc7f
	call po,0189ch		;bc80
lbc83h:
	ret nz			;bc83
	cp h			;bc84
	ld a,b			;bc85
	ret z			;bc86
	dec sp			;bc87
	nop			;bc88
	nop			;bc89
	nop			;bc8a
	nop			;bc8b
	rst 38h			;bc8c
	rst 38h			;bc8d
	ld l,b			;bc8e
	nop			;bc8f
	ret p			;bc90
	ret m			;bc91
	inc h			;bc92
	ret po			;bc93
	jp 00728h		;bc94
	rst 8			;bc97
	ld a,(0c706h)		;bc98
	jr nc,lbcabh		;bc9b
	rst 0			;bc9d
	inc (hl)		;bc9e
	inc c			;bc9f
	rst 0			;bca0
	jr nc,$+14		;bca1
lbca3h:
	sbc a,a			;bca3
	ld (hl),b		;bca4
	ex af,af'		;bca5
	adc a,a			;bca6
	ld h,b			;bca7
	jr lbc39h		;bca8
	ld h,b			;bcaa
lbcabh:
	jr lbcbch		;bcab
	call p,03f00h		;bcad
	adc a,000h		;bcb0
	ccf			;bcb2
	ccf			;bcb3
	nop			;bcb4
	nop			;bcb5
	ret nz			;bcb6
	ret nz			;bcb7
	nop			;bcb8
	rst 38h			;bcb9
	rst 38h			;bcba
	rra			;bcbb
lbcbch:
	pop bc			;bcbc
	rst 38h			;bcbd
	rra			;bcbe
	ld (bc),a		;bcbf
	cp 00eh			;bcc0
	dec b			;bcc2
	call m,0dc01h		;bcc3
	dec de			;bcc6
	inc bc			;bcc7
	cp b			;bcc8
	scf			;bcc9
	rlca			;bcca
	add hl,sp		;bccb
sub_bccch:
	scf			;bccc
	nop			;bccd
	ld (hl),b		;bcce
	ld (hl),b		;bccf
	nop			;bcd0
	rst 38h			;bcd1
	rst 38h			;bcd2
	adc a,e			;bcd3
	cp b			;bcd4
	daa			;bcd5
	push bc			;bcd6
	inc e			;bcd7
	inc de			;bcd8
	push bc			;bcd9
	inc e			;bcda
	inc de			;bcdb
	rst 38h			;bcdc
	call m,00ff8h		;bcdd
	call p,03f00h		;bce0
	adc a,000h		;bce3
	ccf			;bce5
	ccf			;bce6
	nop			;bce7
	nop			;bce8
	ret nz			;bce9
	ret nz			;bcea
	nop			;bceb
	rst 38h			;bcec
	rst 38h			;bced
	rra			;bcee
	pop bc			;bcef
	rst 38h			;bcf0
	rra			;bcf1
	ld (bc),a		;bcf2
	cp 0ebh			;bcf3
	djnz lbc83h		;bcf5
	cp 091h			;bcf7
	adc a,b			;bcf9
	and 001h		;bcfa
	sbc a,b			;bcfc
	defb 0fdh,082h,090h ;illegal sequence	;bcfd
	ld b,b			;bd00
	nop			;bd01
	nop			;bd02
	nop			;bd03
	rst 38h			;bd04
	rst 38h			;bd05
	or (hl)			;bd06
	ex af,af'		;bd07
	ret nz			;bd08
	or (hl)			;bd09
	adc a,b			;bd0a
	ret nz			;bd0b
	ld d,a			;bd0c
	sub b			;bd0d
	ld c,097h		;bd0e
	ld (0972eh),a		;bd10
	jr nc,lbd43h		;bd13
	ld d,072h		;bd15
	ld l,a			;bd17
	nop			;bd18
	ret po			;bd19
	ret po			;bd1a
	nop			;bd1b
	rst 38h			;bd1c
	rst 38h			;bd1d
	ld d,0f2h		;bd1e
	rst 28h			;bd20
	rla			;bd21
	jp p,077efh		;bd22
	nop			;bd25
	adc a,(hl)		;bd26
	rst 30h			;bd27
	ld (de),a		;bd28
	ld c,0f7h		;bd29
	djnz lbd3bh		;bd2b
	rst 30h			;bd2d
	ld (de),a		;bd2e
	ld c,0f7h		;bd2f
	djnz lbd41h		;bd31
	rst 30h			;bd33
	ld (de),a		;bd34
	ld c,057h		;bd35
	sub b			;bd37
	ld c,057h		;bd38
	sub d			;bd3a
lbd3bh:
	ld c,000h		;bd3b
	nop			;bd3d
	nop			;bd3e
	nop			;bd3f
	nop			;bd40
lbd41h:
	nop			;bd41
	nop			;bd42
lbd43h:
	nop			;bd43
	sbc a,c			;bd44
	sbc a,c			;bd45
	sbc a,c			;bd46
	sbc a,c			;bd47
	sbc a,c			;bd48
	sbc a,c			;bd49
	sbc a,c			;bd4a
	sbc a,c			;bd4b
	sub l			;bd4c
	ld d,a			;bd4d
	ld (hl),a		;bd4e
	ld (hl),a		;bd4f
	sub l			;bd50
	ld a,a			;bd51
	ld h,(hl)		;bd52
	ld d,a			;bd53
	sub l			;bd54
	ld a,b			;bd55
	rst 38h			;bd56
	inc (hl)		;bd57
	sub l			;bd58
	ld a,b			;bd59
	adc a,b			;bd5a
	ret m			;bd5b
	nop			;bd5c
	nop			;bd5d
	nop			;bd5e
	nop			;bd5f
	nop			;bd60
	nop			;bd61
	nop			;bd62
	nop			;bd63
	sbc a,c			;bd64
	nop			;bd65
	nop			;bd66
	nop			;bd67
	sbc a,c			;bd68
	sub b			;bd69
	nop			;bd6a
	nop			;bd6b
	ld (hl),e		;bd6c
	sbc a,c			;bd6d
	nop			;bd6e
	nop			;bd6f
	ld b,h			;bd70
	add hl,sp		;bd71
	sub b			;bd72
	nop			;bd73
	ld b,h			;bd74
	ld b,e			;bd75
	sbc a,c			;bd76
	nop			;bd77
	ld b,h			;bd78
	ld b,h			;bd79
	add hl,sp		;bd7a
lbd7bh:
	sub b			;bd7b
	nop			;bd7c
	nop			;bd7d
	nop			;bd7e
	nop			;bd7f
	nop			;bd80
	nop			;bd81
	nop			;bd82
	nop			;bd83
	nop			;bd84
	add hl,bc		;bd85
	sbc a,c			;bd86
	sbc a,c			;bd87
	nop			;bd88
	add hl,bc		;bd89
	sbc a,c			;bd8a
	sbc a,c			;bd8b
	nop			;bd8c
	add hl,bc		;bd8d
	ld d,(hl)		;bd8e
	ld (hl),a		;bd8f
	nop			;bd90
	add hl,bc		;bd91
	ld d,a			;bd92
	ld h,(hl)		;bd93
	nop			;bd94
	add hl,bc		;bd95
	ld d,a			;bd96
	adc a,b			;bd97
	nop			;bd98
	add hl,bc		;bd99
	ld d,a			;bd9a
	adc a,b			;bd9b
	nop			;bd9c
	nop			;bd9d
	nop			;bd9e
	nop			;bd9f
	nop			;bda0
	nop			;bda1
	nop			;bda2
	nop			;bda3
	sbc a,c			;bda4
	sbc a,c			;bda5
	sbc a,c			;bda6
	sbc a,c			;bda7
	sbc a,c			;bda8
	sbc a,c			;bda9
	sbc a,c			;bdaa
	sbc a,c			;bdab
	ld (hl),a		;bdac
	ld (hl),a		;bdad
	ld b,e			;bdae
	sub l			;bdaf
	ld (hl),a		;bdb0
	ld b,h			;bdb1
	ld b,e			;bdb2
	sub l			;bdb3
	ld h,h			;bdb4
	ld b,l			;bdb5
	ld b,e			;bdb6
	sub l			;bdb7
	call p,04345h		;bdb8
	sub l			;bdbb
	cp d			;bdbc
	nop			;bdbd
	inc c			;bdbe
	cp e			;bdbf
	and b			;bdc0
	nop			;bdc1
	dec bc			;bdc2
	nop			;bdc3
	sbc a,c			;bdc4
	nop			;bdc5
	or b			;bdc6
	nop			;bdc7
	sbc a,c			;bdc8
	sub b			;bdc9
	nop			;bdca
	nop			;bdcb
	ld (hl),e		;bdcc
	sbc a,c			;bdcd
	nop			;bdce
	nop			;bdcf
	ld b,h			;bdd0
	add hl,sp		;bdd1
	sub b			;bdd2
	nop			;bdd3
	ld b,h			;bdd4
	ld b,e			;bdd5
	sbc a,c			;bdd6
	nop			;bdd7
	ld b,h			;bdd8
	ld b,h			;bdd9
	add hl,sp		;bdda
	sub b			;bddb
	cp h			;bddc
	rlc b			;bddd
	nop			;bddf
	cp h			;bde0
	cp e			;bde1
	nop			;bde2
	nop			;bde3
	cp h			;bde4
	cp c			;bde5
	sbc a,c			;bde6
	sbc a,c			;bde7
	cp h			;bde8
	cp c			;bde9
	sbc a,c			;bdea
	sbc a,c			;bdeb
	cp h			;bdec
	cp c			;bded
	ld d,(hl)		;bdee
	ld (hl),a		;bdef
	cp h			;bdf0
	cp c			;bdf1
	ld d,a			;bdf2
	ld h,(hl)		;bdf3
	cp h			;bdf4
	cp c			;bdf5
	ld d,a			;bdf6
	adc a,b			;bdf7
	cp e			;bdf8
	cp c			;bdf9
	ld d,a			;bdfa
	adc a,b			;bdfb
	cp e			;bdfc
	or b			;bdfd
	nop			;bdfe
	nop			;bdff
lbe00h:
	nop			;be00
	nop			;be01
	nop			;be02
	nop			;be03
	sbc a,c			;be04
	sbc a,c			;be05
	sbc a,c			;be06
	sbc a,c			;be07
	sbc a,c			;be08
	sbc a,c			;be09
	sbc a,c			;be0a
	sbc a,c			;be0b
	ld (hl),a		;be0c
	ld (hl),a		;be0d
	ld b,e			;be0e
	sub l			;be0f
	ld (hl),a		;be10
	ld b,h			;be11
	ld b,e			;be12
	sub l			;be13
	ld h,h			;be14
	ld b,l			;be15
	ld b,e			;be16
	sub l			;be17
	call p,04345h		;be18
	sub l			;be1b
	cp e			;be1c
	cp c			;be1d
	ld d,a			;be1e
	adc a,b			;be1f
	xor e			;be20
	cp c			;be21
	ld d,a			;be22
	adc a,b			;be23
	sbc a,e			;be24
	cp c			;be25
	ld d,a			;be26
	adc a,b			;be27
	sbc a,e			;be28
	cp c			;be29
	inc sp			;be2a
	inc sp			;be2b
	sbc a,d			;be2c
	cp c			;be2d
	sbc a,c			;be2e
	sbc a,c			;be2f
	ld a,(057b9h)		;be30
	adc a,b			;be33
	ld b,e			;be34
	xor c			;be35
	ld d,a			;be36
	adc a,b			;be37
	ld d,h			;be38
	xor c			;be39
	ld d,a			;be3a
	adc a,b			;be3b
	ld d,h			;be3c
	xor c			;be3d
	ld d,a			;be3e
	adc a,b			;be3f
	ld b,l			;be40
	ld b,e			;be41
	ld d,a			;be42
	adc a,b			;be43
	ld b,h			;be44
	ld d,h			;be45
	ld d,a			;be46
	adc a,b			;be47
	ld b,h			;be48
	ld b,l			;be49
	ld d,a			;be4a
	adc a,b			;be4b
	ld b,h			;be4c
	ld b,l			;be4d
	ld d,a			;be4e
	adc a,b			;be4f
	ld b,h			;be50
	ld b,h			;be51
	ld d,a			;be52
	adc a,b			;be53
	ld b,h			;be54
	ld b,h			;be55
	ld d,a			;be56
	adc a,b			;be57
	call p,04544h		;be58
	adc a,b			;be5b
	ld a,(bc)		;be5c
	cp h			;be5d
	call 000ddh		;be5e
	xor e			;be61
	call z,099ddh		;be62
	xor e			;be65
	call z,099cch		;be66
	sbc a,d			;be69
	cp h			;be6a
	call z,09a77h		;be6b
	xor e			;be6e
	cp e			;be6f
	ld (hl),a		;be70
	ld c,c			;be71
	xor d			;be72
	cp e			;be73
	ld h,h			;be74
	ld b,h			;be75
	sbc a,d			;be76
	xor d			;be77
	ld (hl),h		;be78
	ld b,h			;be79
	ld c,c			;be7a
	sbc a,d			;be7b
	defb 0ddh,0ddh,0ddh ;illegal sequence	;be7c
	call z,0ddddh		;be7f
	call z,0cccbh		;be82
	call z,sub_bacbh	;be85
	call z,sub_bacbh	;be88
	xor c			;be8b
	cp e			;be8c
	cp e			;be8d
	xor c			;be8e
	sub a			;be8f
	cp e			;be90
	xor d			;be91
	sbc a,c			;be92
	ld d,a			;be93
	xor d			;be94
	xor c			;be95
	sbc a,b			;be96
	ld b,h			;be97
	xor d			;be98
	sbc a,c			;be99
	adc a,b			;be9a
	ret m			;be9b
	sbc a,c			;be9c
	sbc a,c			;be9d
	sbc a,c			;be9e
	sub b			;be9f
	sbc a,c			;bea0
	ld (hl),a		;bea1
	ld d,e			;bea2
	sbc a,c			;bea3
	ld (hl),a		;bea4
	ld (hl),h		;bea5
	ld b,e			;bea6
	sbc a,c			;bea7
	ld (hl),a		;bea8
	ld b,h			;bea9
	ld d,e			;beaa
	sbc a,c			;beab
	ld h,h			;beac
	ld b,h			;bead
	ld d,e			;beae
	sbc a,c			;beaf
	call p,05344h		;beb0
	sbc a,c			;beb3
	add a,h			;beb4
	ld b,h			;beb5
	ld d,e			;beb6
	sbc a,c			;beb7
	call p,05344h		;beb8
	sbc a,c			;bebb
	nop			;bebc
	nop			;bebd
	nop			;bebe
	nop			;bebf
	nop			;bec0
	nop			;bec1
	nop			;bec2
	nop			;bec3
	sbc a,c			;bec4
	sbc a,c			;bec5
	sbc a,c			;bec6
	sbc a,c			;bec7
	sbc a,c			;bec8
	sbc a,c			;bec9
	sbc a,c			;beca
	sbc a,c			;becb
	ld (hl),a		;becc
	ld (hl),a		;becd
	ld (hl),a		;bece
	inc sp			;becf
	ld (hl),a		;bed0
	ld (hl),a		;bed1
	ld b,h			;bed2
	ld b,e			;bed3
	ld h,h			;bed4
	ld b,h			;bed5
	ld d,l			;bed6
	ld b,e			;bed7
	ld (hl),h		;bed8
	ld b,h			;bed9
	ld d,l			;beda
	ld b,e			;bedb
	call p,05544h		;bedc
	ld b,e			;bedf
	call p,05544h		;bee0
	ld b,e			;bee3
	add a,h			;bee4
	ld b,h			;bee5
	ld d,l			;bee6
	ld b,e			;bee7
	inc sp			;bee8
	inc sp			;bee9
	inc sp			;beea
	add hl,sp		;beeb
	sbc a,c			;beec
	sbc a,c			;beed
	sbc a,c			;beee
	sbc a,c			;beef
	call p,05544h		;bef0
	ld b,e			;bef3
	add a,h			;bef4
	ld b,h			;bef5
	ld d,l			;bef6
	ld b,e			;bef7
	call p,05544h		;bef8
	ld b,e			;befb
	ld d,h			;befc
	add hl,sp		;befd
	ld d,a			;befe
	adc a,b			;beff
	ld b,l			;bf00
	ld b,e			;bf01
	ld d,a			;bf02
	adc a,b			;bf03
	ld b,h			;bf04
	ld d,h			;bf05
	ld d,a			;bf06
	adc a,b			;bf07
	ld b,h			;bf08
	ld b,l			;bf09
	ld d,a			;bf0a
	adc a,b			;bf0b
	ld b,h			;bf0c
	ld b,l			;bf0d
	ld d,a			;bf0e
	adc a,b			;bf0f
	ld b,h			;bf10
	ld b,h			;bf11
	ld d,a			;bf12
	adc a,b			;bf13
	ld b,h			;bf14
	ld b,h			;bf15
	ld d,a			;bf16
	adc a,b			;bf17
	call p,04544h		;bf18
	adc a,b			;bf1b
	rlc b			;bf1c
	nop			;bf1e
	nop			;bf1f
	or b			;bf20
	nop			;bf21
	nop			;bf22
	nop			;bf23
	nop			;bf24
	nop			;bf25
	nop			;bf26
	nop			;bf27
	nop			;bf28
	nop			;bf29
	nop			;bf2a
	nop			;bf2b
	nop			;bf2c
	nop			;bf2d
	nop			;bf2e
	nop			;bf2f
	nop			;bf30
	nop			;bf31
	nop			;bf32
	nop			;bf33
	nop			;bf34
	nop			;bf35
	nop			;bf36
	nop			;bf37
	nop			;bf38
	nop			;bf39
	nop			;bf3a
	nop			;bf3b
	nop			;bf3c
	nop			;bf3d
	nop			;bf3e
	nop			;bf3f
	nop			;bf40
	nop			;bf41
	nop			;bf42
	nop			;bf43
	rst 38h			;bf44
	rst 38h			;bf45
	ret p			;bf46
	ret p			;bf47
	nop			;bf48
	ret p			;bf49
	nop			;bf4a
	rst 38h			;bf4b
	nop			;bf4c
	ret p			;bf4d
	nop			;bf4e
	ret p			;bf4f
	nop			;bf50
	ret p			;bf51
	nop			;bf52
	ret p			;bf53
	nop			;bf54
	ret p			;bf55
	nop			;bf56
sub_bf57h:
	ret p			;bf57
	nop			;bf58
	nop			;bf59
	nop			;bf5a
	nop			;bf5b
	nop			;bf5c
	nop			;bf5d
	nop			;bf5e
	nop			;bf5f
	nop			;bf60
	nop			;bf61
	nop			;bf62
	nop			;bf63
	nop			;bf64
	ret p			;bf65
	nop			;bf66
	nop			;bf67
	rrca			;bf68
	ret p			;bf69
	nop			;bf6a
	nop			;bf6b
	ret p			;bf6c
	ret p			;bf6d
	nop			;bf6e
	nop			;bf6f
	nop			;bf70
	ret p			;bf71
	nop			;bf72
	nop			;bf73
	nop			;bf74
	ret p			;bf75
	nop			;bf76
	nop			;bf77
	nop			;bf78
	nop			;bf79
	nop			;bf7a
	nop			;bf7b
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
lbfa3h:
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
lbfbeh:
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
sub_bfc8h:
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
lbfedh:
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

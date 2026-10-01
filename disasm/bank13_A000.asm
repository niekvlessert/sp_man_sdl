; z80dasm 1.2.0
; command line: z80dasm -a -l -g 0xA000 -o /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/disasm/bank13_A000.asm /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/banks/bank13.bin

	org 0a000h

	ld c,0eeh		;a000
	nop			;a002
	nop			;a003
	nop			;a004
	nop			;a005
	ret po			;a006
	nop			;a007
	nop			;a008
	nop			;a009
	ld c,000h		;a00a
sub_a00ch:
	nop			;a00c
	nop			;a00d
	nop			;a00e
	ret po			;a00f
	nop			;a010
	nop			;a011
	nop			;a012
	xor 000h		;a013
	nop			;a015
	nop			;a016
	ld c,0e0h		;a017
	nop			;a019
	nop			;a01a
	nop			;a01b
	nop			;a01c
	nop			;a01d
	nop			;a01e
	nop			;a01f
	nop			;a020
	ld c,0e0h		;a021
	nop			;a023
	nop			;a024
	nop			;a025
	nop			;a026
	nop			;a027
	nop			;a028
	nop			;a029
	nop			;a02a
	nop			;a02b
	ld c,000h		;a02c
	nop			;a02e
	nop			;a02f
	nop			;a030
	ld c,000h		;a031
	nop			;a033
	nop			;a034
	ld c,000h		;a035
	nop			;a037
	nop			;a038
	nop			;a039
	nop			;a03a
	nop			;a03b
	nop			;a03c
	nop			;a03d
	rst 38h			;a03e
	nop			;a03f
	nop			;a040
	nop			;a041
	nop			;a042
	nop			;a043
	nop			;a044
	nop			;a045
	nop			;a046
	nop			;a047
	nop			;a048
	nop			;a049
	nop			;a04a
	nop			;a04b
	nop			;a04c
	nop			;a04d
	nop			;a04e
	nop			;a04f
	nop			;a050
	nop			;a051
	nop			;a052
	nop			;a053
	nop			;a054
	nop			;a055
	nop			;a056
	nop			;a057
	nop			;a058
	rrca			;a059
	nop			;a05a
	nop			;a05b
	rrca			;a05c
	pop af			;a05d
	nop			;a05e
	nop			;a05f
	pop af			;a060
	ld de,00000h		;a061
	nop			;a064
	nop			;a065
	nop			;a066
	nop			;a067
	nop			;a068
	nop			;a069
	nop			;a06a
	nop			;a06b
	nop			;a06c
	nop			;a06d
	nop			;a06e
	nop			;a06f
	rst 38h			;a070
	rst 38h			;a071
	rrca			;a072
	rst 38h			;a073
	xor 0efh		;a074
	cp 0eeh			;a076
	rra			;a078
	rst 38h			;a079
	pop hl			;a07a
	rst 38h			;a07b
	rst 38h			;a07c
	xor 0ffh		;a07d
	pop hl			;a07f
	cp 0eeh			;a080
	nop			;a082
	nop			;a083
	nop			;a084
	nop			;a085
	nop			;a086
	nop			;a087
	nop			;a088
	nop			;a089
	nop			;a08a
	nop			;a08b
	nop			;a08c
	nop			;a08d
	rst 38h			;a08e
	rst 38h			;a08f
	ret p			;a090
	nop			;a091
	ld c,a			;a092
	xor 0efh		;a093
	rst 38h			;a095
	rst 38h			;a096
	rst 38h			;a097
	ld e,0eeh		;a098
	xor 0efh		;a09a
	rst 38h			;a09c
	pop af			;a09d
	xor 0eeh		;a09e
	pop af			;a0a0
	rst 28h			;a0a1
	nop			;a0a2
	nop			;a0a3
	nop			;a0a4
	nop			;a0a5
	nop			;a0a6
	nop			;a0a7
	nop			;a0a8
	nop			;a0a9
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
	nop			;a0b5
	rst 38h			;a0b6
	nop			;a0b7
	nop			;a0b8
	nop			;a0b9
	pop hl			;a0ba
	rst 38h			;a0bb
	nop			;a0bc
	nop			;a0bd
	pop af			;a0be
	ld de,000f0h		;a0bf
	nop			;a0c2
	nop			;a0c3
	nop			;a0c4
	nop			;a0c5
	nop			;a0c6
	nop			;a0c7
	nop			;a0c8
	nop			;a0c9
	nop			;a0ca
	nop			;a0cb
	nop			;a0cc
	nop			;a0cd
	nop			;a0ce
	nop			;a0cf
	nop			;a0d0
	nop			;a0d1
	nop			;a0d2
	nop			;a0d3
	rrca			;a0d4
	rst 38h			;a0d5
	nop			;a0d6
	nop			;a0d7
	call p,00044h		;a0d8
	rrca			;a0db
	ld b,h			;a0dc
	ccf			;a0dd
	nop			;a0de
	rst 38h			;a0df
	ld b,e			;a0e0
	ccf			;a0e1
	nop			;a0e2
	rrca			;a0e3
	ld de,000ffh		;a0e4
	pop af			;a0e7
	rra			;a0e8
	xor 00fh		;a0e9
	ld de,0e1feh		;a0eb
	rrca			;a0ee
	rra			;a0ef
	ld e,018h		;a0f0
	pop af			;a0f2
	pop af			;a0f3
	pop hl			;a0f4
	adc a,a			;a0f5
	ret m			;a0f6
	pop af			;a0f7
	jr $+1			;a0f8
	adc a,a			;a0fa
	ld de,0ff8fh		;a0fb
	adc a,a			;a0fe
	jr $+1			;a0ff
	sbc a,a			;a101
	xor 0e1h		;a102
	cp 0eeh			;a104
	pop hl			;a106
	rra			;a107
	ld de,018eeh		;a108
	adc a,a			;a10b
	ld de,08f11h		;a10c
	rst 38h			;a10f
	adc a,b			;a110
	ld de,0ffffh		;a111
	rst 38h			;a114
	adc a,b			;a115
	rst 38h			;a116
	sbc a,c			;a117
	sbc a,d			;a118
	rst 38h			;a119
	sbc a,c			;a11a
	xor d			;a11b
	xor d			;a11c
	xor d			;a11d
	rst 38h			;a11e
	rst 38h			;a11f
	rst 38h			;a120
	jp m,0eeeeh		;a121
	pop af			;a124
	xor 0eeh		;a125
	pop hl			;a127
	rra			;a128
	ld de,01111h		;a129
	rra			;a12c
	adc a,b			;a12d
	ld de,08f18h		;a12e
	rst 38h			;a131
	adc a,b			;a132
	adc a,a			;a133
	rst 38h			;a134
	rst 38h			;a135
	rst 38h			;a136
	jp m,09fa9h		;a137
	xor d			;a13a
	xor d			;a13b
	xor d			;a13c
	xor c			;a13d
	xor d			;a13e
	rst 38h			;a13f
	rst 38h			;a140
	rst 38h			;a141
	rst 28h			;a142
	pop af			;a143
	rra			;a144
	nop			;a145
	xor 0efh		;a146
	ld de,011f0h		;a148
	xor 0f1h		;a14b
	rra			;a14d
	adc a,b			;a14e
	ld e,01fh		;a14f
	rra			;a151
	rst 38h			;a152
	add a,c			;a153
	pop hl			;a154
	pop af			;a155
	rst 38h			;a156
	ret m			;a157
	ld de,09ff8h		;a158
	rst 38h			;a15b
	add a,c			;a15c
	rra			;a15d
	rst 38h			;a15e
	sbc a,a			;a15f
	ret m			;a160
	rra			;a161
	nop			;a162
	nop			;a163
	nop			;a164
	nop			;a165
	nop			;a166
	nop			;a167
	nop			;a168
	nop			;a169
	nop			;a16a
	nop			;a16b
	nop			;a16c
	nop			;a16d
	nop			;a16e
	nop			;a16f
	nop			;a170
	nop			;a171
	rst 38h			;a172
	rst 38h			;a173
	nop			;a174
	nop			;a175
	call p,0f044h		;a176
	nop			;a179
	adc a,a			;a17a
	inc (hl)		;a17b
	ld c,a			;a17c
	nop			;a17d
	adc a,a			;a17e
	inc sp			;a17f
	ld c,a			;a180
	ret p			;a181
	nop			;a182
	nop			;a183
	nop			;a184
	nop			;a185
	nop			;a186
	nop			;a187
	nop			;a188
	nop			;a189
	nop			;a18a
	nop			;a18b
	nop			;a18c
	nop			;a18d
	nop			;a18e
	nop			;a18f
	nop			;a190
	nop			;a191
	nop			;a192
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
	rrca			;a19d
	nop			;a19e
	nop			;a19f
	nop			;a1a0
	pop af			;a1a1
	nop			;a1a2
	nop			;a1a3
	nop			;a1a4
	nop			;a1a5
	nop			;a1a6
	nop			;a1a7
	nop			;a1a8
	nop			;a1a9
	nop			;a1aa
	nop			;a1ab
	nop			;a1ac
	nop			;a1ad
	nop			;a1ae
	nop			;a1af
	nop			;a1b0
	nop			;a1b1
	nop			;a1b2
	nop			;a1b3
	nop			;a1b4
	rrca			;a1b5
	rst 38h			;a1b6
	rst 38h			;a1b7
	rst 38h			;a1b8
	rst 38h			;a1b9
	ld e,0e1h		;a1ba
	pop hl			;a1bc
	rst 38h			;a1bd
	rst 38h			;a1be
	rst 38h			;a1bf
	rst 38h			;a1c0
	rst 38h			;a1c1
	nop			;a1c2
	rst 38h			;a1c3
	ld b,e			;a1c4
	ret m			;a1c5
	nop			;a1c6
	rst 38h			;a1c7
	inc sp			;a1c8
	rst 38h			;a1c9
	nop			;a1ca
	rst 38h			;a1cb
	ccf			;a1cc
	rst 28h			;a1cd
	rst 38h			;a1ce
	di			;a1cf
	ccf			;a1d0
	rst 28h			;a1d1
	rra			;a1d2
	di			;a1d3
	cp 0efh			;a1d4
	adc a,a			;a1d6
	di			;a1d7
	cp 0efh			;a1d8
	adc a,a			;a1da
	di			;a1db
	cp 0e1h			;a1dc
	adc a,a			;a1de
	di			;a1df
	cp 0e1h			;a1e0
	pop af			;a1e2
	rra			;a1e3
	rst 38h			;a1e4
	rst 38h			;a1e5
	pop af			;a1e6
	adc a,a			;a1e7
	sbc a,a			;a1e8
la1e9h:
	ld sp,hl		;a1e9
	jr $+1			;a1ea
	rst 38h			;a1ec
	sbc a,c			;a1ed
	jr la1e9h		;a1ee
	rst 38h			;a1f0
	sbc a,a			;a1f1
	adc a,b			;a1f2
	rst 38h			;a1f3
	rst 38h			;a1f4
	rst 38h			;a1f5
	rst 38h			;a1f6
	jp m,0faffh		;a1f7
	pop af			;a1fa
	rst 38h			;a1fb
	rst 38h			;a1fc
	xor d			;a1fd
	ret m			;a1fe
	jp m,laaafh		;a1ff
	ld sp,hl		;a202
	sbc a,c			;a203
	rst 38h			;a204
	rst 38h			;a205
	sbc a,c			;a206
	sbc a,c			;a207
	sbc a,c			;a208
	rst 38h			;a209
	sbc a,c			;a20a
	sbc a,c			;a20b
	rst 38h			;a20c
	jp m,0ffffh		;a20d
	jp m,0aaaah		;a210
	xor d			;a213
	xor d			;a214
	xor a			;a215
	xor d			;a216
	xor d			;a217
	xor d			;a218
	rst 38h			;a219
	xor d			;a21a
	xor d			;a21b
	xor d			;a21c
	sbc a,c			;a21d
	xor d			;a21e
	xor d			;a21f
	xor d			;a220
	xor d			;a221
	xor a			;a222
	rst 38h			;a223
	ld sp,hl		;a224
	sbc a,c			;a225
	xor a			;a226
	ld sp,hl		;a227
	sbc a,c			;a228
	sbc a,c			;a229
	xor d			;a22a
	rst 38h			;a22b
	ld sp,hl		;a22c
	sbc a,c			;a22d
	xor d			;a22e
	xor d			;a22f
	rst 38h			;a230
	rst 38h			;a231
	sbc a,a			;a232
	xor d			;a233
	xor d			;a234
	xor d			;a235
	sbc a,a			;a236
	jp m,0aaaah		;a237
	sbc a,c			;a23a
	sbc a,d			;a23b
	xor d			;a23c
	xor d			;a23d
	xor d			;a23e
	xor d			;a23f
	xor d			;a240
	xor d			;a241
	rst 38h			;a242
	rst 38h			;a243
	rst 38h			;a244
	ld de,0ff99h		;a245
	sbc a,a			;a248
	add a,c			;a249
	sbc a,c			;a24a
	sbc a,a			;a24b
	rst 38h			;a24c
	ret m			;a24d
	rst 38h			;a24e
	sbc a,a			;a24f
	ld sp,hl		;a250
	ret m			;a251
	xor a			;a252
	rst 38h			;a253
	rst 38h			;a254
	ret m			;a255
	xor d			;a256
	rst 38h			;a257
	jp m,laaffh		;a258
	xor a			;a25b
	rst 38h			;a25c
	pop af			;a25d
	xor d			;a25e
	xor a			;a25f
	xor d			;a260
	ret m			;a261
	ret m			;a262
	di			;a263
	ld c,a			;a264
	ret p			;a265
	rst 38h			;a266
	di			;a267
	ccf			;a268
	ret p			;a269
	rra			;a26a
	rst 28h			;a26b
	ccf			;a26c
	ret p			;a26d
	rra			;a26e
	rst 28h			;a26f
	inc sp			;a270
	rst 38h			;a271
	adc a,a			;a272
	xor 0f3h		;a273
	rst 38h			;a275
	rst 38h			;a276
	xor 0f3h		;a277
	rst 38h			;a279
	pop af			;a27a
	xor 0f3h		;a27b
	rst 38h			;a27d
	pop af			;a27e
	xor 0f3h		;a27f
	rst 38h			;a281
	nop			;a282
	nop			;a283
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
	ret p			;a28e
	nop			;a28f
	nop			;a290
	nop			;a291
	rra			;a292
	nop			;a293
	nop			;a294
	nop			;a295
	adc a,a			;a296
	rst 38h			;a297
	rst 38h			;a298
	rst 38h			;a299
	adc a,a			;a29a
	pop af			;a29b
	pop hl			;a29c
	xor 08fh		;a29d
	rst 38h			;a29f
	rst 38h			;a2a0
	rst 38h			;a2a1
	nop			;a2a2
	nop			;a2a3
	nop			;a2a4
	nop			;a2a5
	nop			;a2a6
	nop			;a2a7
	nop			;a2a8
	nop			;a2a9
	nop			;a2aa
	nop			;a2ab
	nop			;a2ac
	nop			;a2ad
	nop			;a2ae
	nop			;a2af
	nop			;a2b0
	nop			;a2b1
	nop			;a2b2
	nop			;a2b3
	nop			;a2b4
	nop			;a2b5
	ret p			;a2b6
	nop			;a2b7
	nop			;a2b8
	nop			;a2b9
	rra			;a2ba
	nop			;a2bb
	nop			;a2bc
	nop			;a2bd
	pop af			;a2be
	ret p			;a2bf
	nop			;a2c0
	nop			;a2c1
	nop			;a2c2
	nop			;a2c3
	nop			;a2c4
	pop af			;a2c5
	nop			;a2c6
	nop			;a2c7
	nop			;a2c8
	pop af			;a2c9
	nop			;a2ca
	nop			;a2cb
	nop			;a2cc
	pop af			;a2cd
	nop			;a2ce
	nop			;a2cf
	nop			;a2d0
	pop af			;a2d1
	xor 000h		;a2d2
	rrca			;a2d4
	rst 38h			;a2d5
	xor 0e0h		;a2d6
	rrca			;a2d8
	ld e,00eh		;a2d9
	ret po			;a2db
	rrca			;a2dc
	rst 38h			;a2dd
	nop			;a2de
	nop			;a2df
	pop af			;a2e0
	ld de,099f9h		;a2e1
	sbc a,c			;a2e4
	rst 38h			;a2e5
	ld sp,hl		;a2e6
	xor 0aah		;a2e7
	xor a			;a2e9
	jp m,laaeah		;a2ea
	xor a			;a2ed
	jp m,0aaaah		;a2ee
	xor a			;a2f1
	rst 38h			;a2f2
	rst 38h			;a2f3
	rst 38h			;a2f4
	rst 38h			;a2f5
	pop hl			;a2f6
	pop hl			;a2f7
	ld de,0fff1h		;a2f8
	rst 38h			;a2fb
	rst 38h			;a2fc
	ret m			;a2fd
	ld de,01111h		;a2fe
	ret m			;a301
	adc a,a			;a302
	di			;a303
	pop af			;a304
	pop hl			;a305
	adc a,a			;a306
	di			;a307
	pop af			;a308
	ld de,0f38fh		;a309
sub_a30ch:
	pop af			;a30c
	ld de,023ffh		;a30d
	pop af			;a310
	ld de,023ffh		;a311
	ret m			;a314
	ld de,023ffh		;a315
	ccf			;a318
	jr $+1			;a319
	inc hl			;a31b
sub_a31ch:
	ccf			;a31c
	adc a,b			;a31d
	rst 38h			;a31e
	inc hl			;a31f
	ld (0f8f8h),a		;a320
	ld sp,hl		;a323
	sbc a,a			;a324
	xor d			;a325
	ret m			;a326
	rst 38h			;a327
	rst 38h			;a328
	xor d			;a329
	rst 38h			;a32a
	jp m,laaafh		;a32b
la32eh:
	adc a,a			;a32e
	rst 38h			;a32f
	sbc a,c			;a330
	jp m,0e18fh		;a331
	rst 38h			;a334
	jp m,0188fh		;a335
	cp 0ffh			;a338
	adc a,a			;a33a
	jr la32eh		;a33b
	xor 08fh		;a33d
	jr $-13			;a33f
	ld de,0aaaah		;a341
	xor d			;a344
	sbc a,c			;a345
	xor d			;a346
	xor d			;a347
	xor a			;a348
	rst 38h			;a349
	xor d			;a34a
	xor d			;a34b
	rst 38h			;a34c
	xor d			;a34d
	xor d			;a34e
	xor a			;a34f
	xor d			;a350
	xor a			;a351
	xor d			;a352
	xor d			;a353
	xor d			;a354
	rst 38h			;a355
	xor d			;a356
	xor d			;a357
	rst 38h			;a358
	xor 0ffh		;a359
	rst 38h			;a35b
	ld e,011h		;a35c
	xor 0e1h		;a35e
	add a,c			;a360
	ld de,0faffh		;a361
	xor d			;a364
	xor d			;a365
	rst 38h			;a366
	rst 38h			;a367
	xor d			;a368
	xor d			;a369
	xor d			;a36a
	xor a			;a36b
	jp m,0ffaah		;a36c
	xor d			;a36f
	xor a			;a370
	xor d			;a371
	rst 38h			;a372
	jp m,0aaaah		;a373
	xor 0efh		;a376
	jp m,011aah		;a378
	ld e,01fh		;a37b
	rst 38h			;a37d
	ld de,08111h		;a37e
	xor 0aah		;a381
	xor a			;a383
	sbc a,c			;a384
	ret m			;a385
	xor d			;a386
	xor a			;a387
	rst 38h			;a388
	ret m			;a389
	xor d			;a38a
	xor a			;a38b
	xor d			;a38c
	rst 38h			;a38d
	xor d			;a38e
	ld sp,hl		;a38f
	sbc a,a			;a390
	rst 38h			;a391
	xor d			;a392
	rst 38h			;a393
	pop af			;a394
	rst 28h			;a395
	xor a			;a396
	cp 0f8h			;a397
	rra			;a399
	cp 0e1h			;a39a
	ret m			;a39c
	rra			;a39d
	pop hl			;a39e
	ld de,01ff8h		;a39f
	pop af			;a3a2
	pop hl			;a3a3
	di			;a3a4
	rst 38h			;a3a5
	pop af			;a3a6
	ld de,0fff3h		;a3a7
	pop af			;a3aa
	ld de,02ff3h		;a3ab
	add a,c			;a3ae
	ld de,02ff3h		;a3af
	add a,c			;a3b2
	jr $-11			;a3b3
	cpl			;a3b5
	adc a,b			;a3b6
	rra			;a3b7
	inc sp			;a3b8
	cpl			;a3b9
	adc a,b			;a3ba
	adc a,a			;a3bb
	inc sp			;a3bc
	cpl			;a3bd
	adc a,b			;a3be
	jp p,02f33h		;a3bf
	adc a,a			;a3c2
	sbc a,c			;a3c3
	sbc a,c			;a3c4
	sbc a,a			;a3c5
	adc a,a			;a3c6
	xor d			;a3c7
	xor (hl)		;a3c8
	jp (hl)			;a3c9
	rst 38h			;a3ca
	xor d			;a3cb
	xor d			;a3cc
	jp pe,laaffh		;a3cd
	xor d			;a3d0
	xor d			;a3d1
	rst 38h			;a3d2
	rst 38h			;a3d3
	rst 38h			;a3d4
	rst 38h			;a3d5
	pop af			;a3d6
	pop af			;a3d7
	ld de,0f8e1h		;a3d8
	rst 38h			;a3db
	rst 38h			;a3dc
	rst 38h			;a3dd
	ret m			;a3de
	pop af			;a3df
	ld de,0f111h		;a3e0
	ret p			;a3e3
	nop			;a3e4
	nop			;a3e5
	pop af			;a3e6
	ret p			;a3e7
	nop			;a3e8
	nop			;a3e9
	pop af			;a3ea
	ret p			;a3eb
	nop			;a3ec
	nop			;a3ed
	pop af			;a3ee
	ret p			;a3ef
	nop			;a3f0
	nop			;a3f1
	rst 38h			;a3f2
	rst 38h			;a3f3
	nop			;a3f4
	ld c,0eeh		;a3f5
	rra			;a3f7
	nop			;a3f8
	nop			;a3f9
	rst 38h			;a3fa
	rst 38h			;a3fb
	nop			;a3fc
	nop			;a3fd
	ld de,0f011h		;a3fe
	nop			;a401
	nop			;a402
	ld c,0eeh		;a403
	nop			;a405
	nop			;a406
	xor 0eeh		;a407
	nop			;a409
	nop			;a40a
	xor 0e0h		;a40b
	nop			;a40d
	nop			;a40e
	nop			;a40f
	nop			;a410
	nop			;a411
	ret po			;a412
	nop			;a413
	nop			;a414
	nop			;a415
	nop			;a416
	nop			;a417
	nop			;a418
	nop			;a419
	nop			;a41a
	nop			;a41b
	nop			;a41c
	nop			;a41d
	nop			;a41e
	nop			;a41f
	nop			;a420
	rst 38h			;a421
	nop			;a422
	nop			;a423
	rst 38h			;a424
	rst 38h			;a425
	nop			;a426
	nop			;a427
	ret m			;a428
	adc a,b			;a429
	ret p			;a42a
	nop			;a42b
	rrca			;a42c
	adc a,b			;a42d
	xor a			;a42e
	ret p			;a42f
	nop			;a430
	ret m			;a431
	xor d			;a432
	xor a			;a433
	rst 38h			;a434
	rrca			;a435
	sbc a,c			;a436
	xor d			;a437
	xor d			;a438
	rst 38h			;a439
	rst 38h			;a43a
	sbc a,c			;a43b
	sbc a,d			;a43c
	xor d			;a43d
	rst 38h			;a43e
	rst 38h			;a43f
	ld sp,hl		;a440
	sbc a,c			;a441
	rst 38h			;a442
	rst 38h			;a443
	rst 38h			;a444
	ret m			;a445
	adc a,b			;a446
	adc a,b			;a447
	adc a,b			;a448
	rst 38h			;a449
	adc a,b			;a44a
	adc a,b			;a44b
	adc a,b			;a44c
	rst 38h			;a44d
	adc a,b			;a44e
	adc a,b			;a44f
	adc a,b			;a450
	rst 38h			;a451
	adc a,b			;a452
	adc a,b			;a453
	adc a,b			;a454
	rst 38h			;a455
	ret m			;a456
	adc a,b			;a457
	adc a,b			;a458
	rst 38h			;a459
	rst 38h			;a45a
	adc a,b			;a45b
	adc a,b			;a45c
	rst 38h			;a45d
	sbc a,a			;a45e
	ret m			;a45f
	adc a,b			;a460
	rst 38h			;a461
	rst 38h			;a462
	inc hl			;a463
	ld (0fff8h),a		;a464
	inc hl			;a467
	ld (0ff2fh),a		;a468
	inc hl			;a46b
	inc sp			;a46c
	ld (023ffh),hl		;a46d
la470h:
	inc sp			;a470
	ld (022ffh),hl		;a471
	inc sp			;a474
	ld (0f2ffh),a		;a475
	ld (0ff22h),hl		;a478
	rst 38h			;a47b
	rst 38h			;a47c
la47dh:
	rst 38h			;a47d
	rst 38h			;a47e
	rst 38h			;a47f
	rst 38h			;a480
	rst 38h			;a481
	adc a,a			;a482
	jr la47dh		;a483
	ld de,0f888h		;a485
	ret m			;a488
	adc a,b			;a489
	ret m			;a48a
	rst 38h			;a48b
	rst 38h			;a48c
	adc a,b			;a48d
	cpl			;a48e
	adc a,a			;a48f
	rst 38h			;a490
	ret m			;a491
	ld (0ffffh),hl		;a492
	rst 38h			;a495
	ld (0f6ffh),hl		;a496
	rst 38h			;a499
	rst 38h			;a49a
	rst 38h			;a49b
	rst 30h			;a49c
	ld l,a			;a49d
	rst 38h			;a49e
	rst 38h			;a49f
	rst 38h			;a4a0
	halt			;a4a1
	ld de,08118h		;a4a2
	ld de,01f11h		;a4a5
	add a,c			;a4a8
	ld de,08f88h		;a4a9
	adc a,b			;a4ac
	ld de,08f88h		;a4ad
	adc a,b			;a4b0
	adc a,b			;a4b1
	ret m			;a4b2
	adc a,b			;a4b3
	ret m			;a4b4
	adc a,b			;a4b5
	rst 38h			;a4b6
	rst 38h			;a4b7
	ret m			;a4b8
	rst 38h			;a4b9
	rst 38h			;a4ba
	rst 38h			;a4bb
	rst 38h			;a4bc
	adc a,b			;a4bd
	rst 38h			;a4be
	rst 38h			;a4bf
	rst 38h			;a4c0
	adc a,a			;a4c1
	ld de,08811h		;a4c2
	ld de,01111h		;a4c5
	adc a,a			;a4c8
	ld de,01811h		;a4c9
	adc a,a			;a4cc
	adc a,b			;a4cd
	adc a,b			;a4ce
	adc a,b			;a4cf
	adc a,a			;a4d0
	adc a,b			;a4d1
	adc a,b			;a4d2
	adc a,b			;a4d3
	ret m			;a4d4
	adc a,b			;a4d5
	rst 38h			;a4d6
	ret m			;a4d7
	rst 38h			;a4d8
	rst 38h			;a4d9
	adc a,b			;a4da
	adc a,a			;a4db
	rst 38h			;a4dc
	rst 38h			;a4dd
	rst 38h			;a4de
	adc a,a			;a4df
	rst 38h			;a4e0
	rst 38h			;a4e1
	ld de,0f818h		;a4e2
	rra			;a4e5
	jr la470h		;a4e6
	ret m			;a4e8
	ret m			;a4e9
	adc a,b			;a4ea
	adc a,a			;a4eb
	rst 38h			;a4ec
	ret m			;a4ed
	adc a,b			;a4ee
	rst 38h			;a4ef
	rst 38h			;a4f0
	adc a,a			;a4f1
	rst 38h			;a4f2
	rst 38h			;a4f3
	rst 38h			;a4f4
	rst 38h			;a4f5
	rst 38h			;a4f6
	ld h,(hl)		;a4f7
	rst 38h			;a4f8
	jp p,067ffh		;a4f9
	rst 38h			;a4fc
	rst 38h			;a4fd
	or 07fh			;a4fe
	rst 38h			;a500
	rst 38h			;a501
	adc a,b			;a502
	jp p,02f33h		;a503
	adc a,a			;a506
	inc hl			;a507
	inc sp			;a508
	cpl			;a509
	jp p,03323h		;a50a
	cpl			;a50d
	ld (03333h),hl		;a50e
	cpl			;a511
	ld (03233h),hl		;a512
	cpl			;a515
	ld (02222h),hl		;a516
	rst 38h			;a519
	rst 38h			;a51a
	rst 38h			;a51b
	rst 38h			;a51c
	rst 38h			;a51d
	rst 38h			;a51e
	rst 38h			;a51f
	rst 38h			;a520
	rst 38h			;a521
	ret m			;a522
	rst 38h			;a523
	rst 38h			;a524
	rst 38h			;a525
	rst 38h			;a526
	ret m			;a527
	adc a,b			;a528
	adc a,b			;a529
	rst 38h			;a52a
	ret m			;a52b
	adc a,b			;a52c
	adc a,b			;a52d
	rst 38h			;a52e
	ret m			;a52f
	adc a,b			;a530
	adc a,b			;a531
	rst 38h			;a532
	ret m			;a533
	adc a,b			;a534
	adc a,b			;a535
	rst 38h			;a536
	ret m			;a537
	adc a,b			;a538
	adc a,b			;a539
	rst 38h			;a53a
	ret m			;a53b
	adc a,b			;a53c
	adc a,a			;a53d
	rst 38h			;a53e
	ret m			;a53f
	adc a,b			;a540
	ld sp,hl		;a541
	rst 38h			;a542
	rst 38h			;a543
	nop			;a544
	nop			;a545
	adc a,b			;a546
	adc a,a			;a547
	nop			;a548
	nop			;a549
	adc a,b			;a54a
	ret p			;a54b
	nop			;a54c
	rrca			;a54d
	adc a,a			;a54e
	nop			;a54f
	rrca			;a550
	jp m,0fff0h		;a551
	jp m,0ffaah		;a554
	xor d			;a557
	xor d			;a558
	sbc a,c			;a559
	xor d			;a55a
	xor c			;a55b
	sbc a,c			;a55c
	rst 38h			;a55d
	sbc a,c			;a55e
	sbc a,a			;a55f
	rst 38h			;a560
	rst 38h			;a561
	sbc a,c			;a562
	rst 38h			;a563
	rst 38h			;a564
	sbc a,c			;a565
	sbc a,c			;a566
	sbc a,c			;a567
	rst 38h			;a568
	sbc a,c			;a569
	sbc a,c			;a56a
	sbc a,c			;a56b
	rst 38h			;a56c
	sbc a,c			;a56d
	sbc a,a			;a56e
	sbc a,d			;a56f
	rst 38h			;a570
	rst 38h			;a571
	sbc a,a			;a572
	rst 38h			;a573
	cp 0eeh			;a574
	sbc a,a			;a576
	cp 0eeh			;a577
	xor 0feh		;a579
	xor 0eeh		;a57b
	xor 0eeh		;a57d
	ld de,0ee1eh		;a57f
	sbc a,c			;a582
	sbc a,c			;a583
	rst 38h			;a584
	rst 38h			;a585
	sbc a,c			;a586
	sbc a,c			;a587
	sbc a,c			;a588
	sbc a,c			;a589
	rst 38h			;a58a
	rst 38h			;a58b
	rst 38h			;a58c
	rst 38h			;a58d
	xor 0eeh		;a58e
	xor 0efh		;a590
	xor 0eeh		;a592
	xor 0eeh		;a594
	xor 0e1h		;a596
	xor 0eeh		;a598
	xor 0eeh		;a59a
	xor 0eeh		;a59c
	xor 0eeh		;a59e
	xor 0eeh		;a5a0
	rst 38h			;a5a2
	rst 38h			;a5a3
	rst 38h			;a5a4
	rst 38h			;a5a5
	rst 38h			;a5a6
	rst 38h			;a5a7
	rst 38h			;a5a8
	rst 38h			;a5a9
	rst 38h			;a5aa
	rst 38h			;a5ab
	rst 38h			;a5ac
	rst 38h			;a5ad
	rst 38h			;a5ae
	rst 38h			;a5af
	rst 38h			;a5b0
	xor 0eeh		;a5b1
	rst 38h			;a5b3
	cp 0eeh			;a5b4
	xor 0efh		;a5b6
	ld d,l			;a5b8
	ld d,l			;a5b9
	xor 0efh		;a5ba
	ld d,l			;a5bc
	ld d,l			;a5bd
	pop hl			;a5be
	push af			;a5bf
	ld d,l			;a5c0
	ld d,l			;a5c1
	rst 38h			;a5c2
	rst 38h			;a5c3
	rst 38h			;a5c4
	rst 38h			;a5c5
	rst 38h			;a5c6
	rst 38h			;a5c7
	rst 38h			;a5c8
	rst 38h			;a5c9
	xor 0eeh		;a5ca
	call po,0ee4fh		;a5cc
	xor 04fh		;a5cf
	rst 38h			;a5d1
	xor 0e4h		;a5d2
	rst 38h			;a5d4
	ret m			;a5d5
	ld d,l			;a5d6
	ld d,h			;a5d7
	rst 38h			;a5d8
	ld de,04f55h		;a5d9
	rst 38h			;a5dc
	adc a,b			;a5dd
	ld d,l			;a5de
	ld c,a			;a5df
	rst 38h			;a5e0
	rst 38h			;a5e1
	rst 38h			;a5e2
	ld h,(hl)		;a5e3
	halt			;a5e4
	rst 38h			;a5e5
	rst 38h			;a5e6
	ld h,(hl)		;a5e7
	ld h,(hl)		;a5e8
	ld h,a			;a5e9
	rst 38h			;a5ea
	or 066h			;a5eb
	ld h,(hl)		;a5ed
	rst 38h			;a5ee
	rst 38h			;a5ef
	rst 38h			;a5f0
	ld h,(hl)		;a5f1
	ld de,08f18h		;a5f2
	rst 38h			;a5f5
	adc a,b			;a5f6
	adc a,b			;a5f7
	rst 38h			;a5f8
	or 0ffh			;a5f9
	rst 38h			;a5fb
	ld h,(hl)		;a5fc
	ld h,(hl)		;a5fd
	rst 38h			;a5fe
	ld h,(hl)		;a5ff
	ld h,(hl)		;a600
	ld h,(hl)		;a601
	rst 38h			;a602
	rst 38h			;a603
	rst 38h			;a604
	rst 38h			;a605
	ld (hl),a		;a606
	halt			;a607
	rst 38h			;a608
	rst 38h			;a609
	ld h,(hl)		;a60a
	ld h,a			;a60b
	ld (hl),a		;a60c
	ld l,a			;a60d
	ld h,(hl)		;a60e
	ld h,(hl)		;a60f
	ld h,(hl)		;a610
	ld a,a			;a611
	rst 38h			;a612
	ld h,(hl)		;a613
	ld h,(hl)		;a614
	ld l,a			;a615
	rst 38h			;a616
	rst 38h			;a617
	rst 38h			;a618
	ld l,a			;a619
	ld h,(hl)		;a61a
	ld l,a			;a61b
	rst 38h			;a61c
	rst 38h			;a61d
	ld l,a			;a61e
	or 06fh			;a61f
	inc hl			;a621
	rst 38h			;a622
	rst 38h			;a623
	rst 38h			;a624
	rst 38h			;a625
	rst 38h			;a626
	rst 38h			;a627
	or 077h			;a628
	ccf			;a62a
	ld h,(hl)		;a62b
	ld (hl),a		;a62c
	ld h,(hl)		;a62d
	cpl			;a62e
	halt			;a62f
	ld h,(hl)		;a630
	ld h,(hl)		;a631
	cpl			;a632
	ld h,(hl)		;a633
	ld h,(hl)		;a634
	ld l,a			;a635
	cpl			;a636
	ld h,(hl)		;a637
	rst 38h			;a638
	rst 38h			;a639
	rst 38h			;a63a
	rst 38h			;a63b
	rst 38h			;a63c
	ld h,(hl)		;a63d
	di			;a63e
	ccf			;a63f
	ld h,(hl)		;a640
	ld h,(hl)		;a641
	rst 38h			;a642
	rst 38h			;a643
	halt			;a644
	rst 38h			;a645
	ld (hl),a		;a646
	ld h,(hl)		;a647
	ld l,a			;a648
	rst 38h			;a649
	ld h,(hl)		;a64a
	ld h,(hl)		;a64b
	rst 38h			;a64c
	rst 38h			;a64d
	ld h,(hl)		;a64e
	rst 38h			;a64f
	rst 38h			;a650
	rst 38h			;a651
	rst 38h			;a652
	ret m			;a653
	ld de,0ff18h		;a654
	rst 38h			;a657
	adc a,b			;a658
	add a,c			;a659
	ld h,(hl)		;a65a
	ld l,a			;a65b
	rst 38h			;a65c
	ret m			;a65d
	ld h,(hl)		;a65e
	ld h,(hl)		;a65f
	rst 38h			;a660
	rst 38h			;a661
	rst 38h			;a662
	rst 38h			;a663
	rst 38h			;a664
	rst 38h			;a665
	rst 38h			;a666
	rst 38h			;a667
	rst 38h			;a668
	rst 38h			;a669
	call p,0eeeeh		;a66a
	xor 0ffh		;a66d
	call p,0eeeeh		;a66f
	rst 38h			;a672
	rst 38h			;a673
	ld c,(hl)		;a674
	xor 01fh		;a675
	rst 38h			;a677
	ld b,l			;a678
	ld d,l			;a679
	adc a,a			;a67a
	rst 38h			;a67b
	call p,0ff55h		;a67c
	rst 38h			;a67f
	call p,0ff55h		;a680
	ret m			;a683
	adc a,a			;a684
	rst 38h			;a685
	rst 38h			;a686
	rst 38h			;a687
	rst 38h			;a688
	rst 38h			;a689
	rst 38h			;a68a
	rst 38h			;a68b
	rst 38h			;a68c
	rst 38h			;a68d
	xor 0ffh		;a68e
	rst 38h			;a690
	rst 38h			;a691
	xor 0efh		;a692
	rst 38h			;a694
	cp 055h			;a695
	ld d,l			;a697
	rst 38h			;a698
	xor 055h		;a699
	ld d,l			;a69b
	rst 38h			;a69c
	ld e,055h		;a69d
	ld d,l			;a69f
	ld e,a			;a6a0
	ld e,0ffh		;a6a1
	rst 38h			;a6a3
	ld sp,hl		;a6a4
	sbc a,c			;a6a5
	ld sp,hl		;a6a6
	sbc a,c			;a6a7
	sbc a,c			;a6a8
	sbc a,c			;a6a9
	rst 38h			;a6aa
	rst 38h			;a6ab
	rst 38h			;a6ac
	rst 38h			;a6ad
	cp 0eeh			;a6ae
	xor 0eeh		;a6b0
	xor 0eeh		;a6b2
	xor 0eeh		;a6b4
	xor 0eeh		;a6b6
	ld e,0eeh		;a6b8
	xor 0eeh		;a6ba
	xor 0eeh		;a6bc
	xor 0eeh		;a6be
	xor 0eeh		;a6c0
	sbc a,c			;a6c2
	rst 38h			;a6c3
	rst 38h			;a6c4
	sbc a,c			;a6c5
	sbc a,c			;a6c6
	rst 38h			;a6c7
	sbc a,c			;a6c8
	sbc a,c			;a6c9
	sbc a,c			;a6ca
	rst 38h			;a6cb
	sbc a,c			;a6cc
	sbc a,c			;a6cd
	rst 38h			;a6ce
	rst 38h			;a6cf
	sbc a,c			;a6d0
	ld sp,hl		;a6d1
	xor 0efh		;a6d2
	rst 38h			;a6d4
	ld sp,hl		;a6d5
	xor 0eeh		;a6d6
	rst 28h			;a6d8
	ld sp,hl		;a6d9
	xor 0eeh		;a6da
	xor 0efh		;a6dc
	xor 0e1h		;a6de
	ld de,09feeh		;a6e0
	ld sp,hl		;a6e3
	ld sp,hl		;a6e4
	xor c			;a6e5
	sbc a,a			;a6e6
	ld sp,hl		;a6e7
	rst 38h			;a6e8
	ld sp,hl		;a6e9
	sbc a,a			;a6ea
	ld sp,hl		;a6eb
	sbc a,c			;a6ec
	sbc a,c			;a6ed
la6eeh:
	rst 38h			;a6ee
	rst 38h			;a6ef
	sbc a,c			;a6f0
	sbc a,c			;a6f1
	rst 38h			;a6f2
	rst 38h			;a6f3
	rst 38h			;a6f4
	ld sp,hl		;a6f5
	rst 38h			;a6f6
	rst 38h			;a6f7
	rst 38h			;a6f8
	rst 38h			;a6f9
	rst 38h			;a6fa
	rst 38h			;a6fb
	rst 38h			;a6fc
	rst 38h			;a6fd
	rst 38h			;a6fe
	rst 38h			;a6ff
	rst 38h			;a700
	pop af			;a701
	sbc a,a			;a702
	sbc a,d			;a703
	sbc a,a			;a704
	jp m,09a9fh		;a705
	sbc a,a			;a708
	jp m,09a9fh		;a709
	sbc a,a			;a70c
	jp m,0ff99h		;a70d
	sbc a,a			;a710
	rst 38h			;a711
	sbc a,c			;a712
	rst 38h			;a713
	cp 0e1h			;a714
	rst 38h			;a716
	xor 0e1h		;a717
	ld de,01feeh		;a719
	pop hl			;a71c
	adc a,a			;a71d
	pop hl			;a71e
	rra			;a71f
	ld de,0998fh		;a720
	sbc a,a			;a723
	sbc a,c			;a724
	ld sp,hl		;a725
	sbc a,c			;a726
	sbc a,a			;a727
	sbc a,c			;a728
	ld sp,hl		;a729
	sbc a,c			;a72a
	sbc a,a			;a72b
	ld sp,hl		;a72c
	ld sp,hl		;a72d
	sbc a,c			;a72e
	rst 38h			;a72f
	rst 38h			;a730
	rst 38h			;a731
	rst 38h			;a732
	xor 0e1h		;a733
	ld sp,hl		;a735
	pop af			;a736
	ld de,01f11h		;a737
	jr la74dh		;a73a
	jr la74fh		;a73c
	ld de,0ff18h		;a73e
	add a,c			;a741
	sbc a,c			;a742
	sbc a,c			;a743
	xor d			;a744
	cp 09fh			;a745
	sbc a,c			;a747
	sbc a,a			;a748
	pop hl			;a749
	sbc a,a			;a74a
	sbc a,c			;a74b
	sbc a,a			;a74c
la74dh:
	jr la6eeh		;a74d
la74fh:
	sbc a,c			;a74f
	sbc a,a			;a750
	adc a,a			;a751
	sbc a,a			;a752
	ld sp,hl		;a753
	sbc a,a			;a754
	adc a,a			;a755
	sbc a,c			;a756
	sbc a,c			;a757
	sbc a,a			;a758
	rst 38h			;a759
	ld sp,hl		;a75a
	sbc a,a			;a75b
	rst 38h			;a75c
	ld a,(hl)		;a75d
	rra			;a75e
	rst 30h			;a75f
	xor 0eeh		;a760
	ld de,01111h		;a762
	ld de,08188h		;a765
	ld de,08811h		;a768
	adc a,b			;a76b
	ld de,0f811h		;a76c
	adc a,b			;a76f
	pop af			;a770
	ld de,088ffh		;a771
	adc a,a			;a774
	ld de,0f8ffh		;a775
	adc a,b			;a778
	add a,c			;a779
	rst 20h			;a77a
	rst 38h			;a77b
	adc a,b			;a77c
	adc a,a			;a77d
	rst 20h			;a77e
	ld a,a			;a77f
	ret m			;a780
	adc a,b			;a781
	ld e,0eeh		;a782
	xor 0e1h		;a784
	ld de,01111h		;a786
	ld de,01188h		;a789
	ld de,0ee11h		;a78c
	ld de,01111h		;a78f
	ld de,08111h		;a792
	ld de,01111h		;a795
	pop hl			;a798
	ld de,01111h		;a799
	ld de,01111h		;a79c
	ld de,01111h		;a79f
	ld de,055f5h		;a7a2
	ld d,l			;a7a5
	rra			;a7a6
	ld d,l			;a7a7
	ld d,l			;a7a8
	ld d,l			;a7a9
	rra			;a7aa
	ld d,l			;a7ab
	ld d,l			;a7ac
	ld d,l			;a7ad
	rra			;a7ae
	ld b,l			;a7af
	ld d,l			;a7b0
	ld d,l			;a7b1
	rra			;a7b2
	ld b,l			;a7b3
	ld d,l			;a7b4
	ld d,l			;a7b5
	call p,05545h		;a7b6
	ld d,l			;a7b9
	call p,04544h		;a7ba
	ld d,l			;a7bd
	call p,04444h		;a7be
	ld b,h			;a7c1
	ld d,l			;a7c2
	ld c,a			;a7c3
	rst 38h			;a7c4
	rst 38h			;a7c5
	ld d,h			;a7c6
	rst 38h			;a7c7
	rst 38h			;a7c8
	rst 30h			;a7c9
	ld d,h			;a7ca
	rst 38h			;a7cb
	rst 38h			;a7cc
	ld (hl),a		;a7cd
	ld d,h			;a7ce
	rst 38h			;a7cf
	rst 30h			;a7d0
	ld (hl),a		;a7d1
	ld d,h			;a7d2
	rst 38h			;a7d3
	ld (hl),a		;a7d4
	ld h,a			;a7d5
	ld c,a			;a7d6
	rst 38h			;a7d7
	halt			;a7d8
	ld (hl),a		;a7d9
	ld c,a			;a7da
	rst 30h			;a7db
	ld h,a			;a7dc
	ld (hl),a		;a7dd
	ccf			;a7de
	or 077h			;a7df
	halt			;a7e1
	rst 38h			;a7e2
	or 066h			;a7e3
	ld h,(hl)		;a7e5
	ld (hl),a		;a7e6
	ld h,(hl)		;a7e7
	or 066h			;a7e8
	ld (hl),a		;a7ea
	or 066h			;a7eb
	ld h,(hl)		;a7ed
	rst 30h			;a7ee
	ld (hl),a		;a7ef
	ld h,(hl)		;a7f0
	ld h,(hl)		;a7f1
	ld (hl),a		;a7f2
	ld (hl),a		;a7f3
	halt			;a7f4
	ld l,a			;a7f5
	ld (hl),a		;a7f6
	ld (hl),a		;a7f7
	ld (hl),a		;a7f8
	halt			;a7f9
	halt			;a7fa
	ld (hl),a		;a7fb
	ld (hl),a		;a7fc
	ld (hl),a		;a7fd
	ld (hl),a		;a7fe
	ld (hl),a		;a7ff
	ld (hl),a		;a800
	ld (hl),a		;a801
	ld h,(hl)		;a802
	ld l,a			;a803
	rst 38h			;a804
	ld (06666h),hl		;a805
	ld l,a			;a808
	rst 38h			;a809
	ld h,(hl)		;a80a
	ld h,(hl)		;a80b
	ld l,a			;a80c
	rst 38h			;a80d
	ld h,(hl)		;a80e
	ld h,(hl)		;a80f
	ld l,a			;a810
	inc sp			;a811
	ld h,(hl)		;a812
	rst 38h			;a813
	rst 38h			;a814
	jp p,06666h		;a815
	ld h,(hl)		;a818
	jp p,06666h		;a819
	ld h,(hl)		;a81c
	jp p,07677h		;a81d
	ld h,(hl)		;a820
	jp p,0fff2h		;a821
	rst 38h			;a824
	or 0ffh			;a825
	cpl			;a827
	ld h,(hl)		;a828
	ld h,(hl)		;a829
	jp p,0ff2fh		;a82a
	or 0ffh			;a82d
	rst 38h			;a82f
	or 066h			;a830
	di			;a832
	ccf			;a833
	ld h,(hl)		;a834
	ld h,(hl)		;a835
	jp p,06626h		;a836
	ld h,(hl)		;a839
	jp p,066f6h		;a83a
	ld h,(hl)		;a83d
	jp p,066f6h		;a83e
	ld h,(hl)		;a841
	ld h,(hl)		;a842
	ld h,(hl)		;a843
	ld h,(hl)		;a844
	ld l,a			;a845
	rst 38h			;a846
	rst 38h			;a847
	or 067h			;a848
	ld h,(hl)		;a84a
	ld h,(hl)		;a84b
	ld h,(hl)		;a84c
	ld h,a			;a84d
	ld h,(hl)		;a84e
	ld h,(hl)		;a84f
	ld h,(hl)		;a850
	ld (hl),a		;a851
	ld h,(hl)		;a852
	ld h,(hl)		;a853
	ld h,a			;a854
	ld (hl),a		;a855
	ld h,(hl)		;a856
	ld h,(hl)		;a857
	ld (hl),a		;a858
	ld (hl),a		;a859
	ld h,(hl)		;a85a
	ld (hl),a		;a85b
	ld (hl),a		;a85c
	halt			;a85d
	ld (hl),a		;a85e
	ld (hl),a		;a85f
	ld (hl),a		;a860
	ld (hl),a		;a861
	rst 38h			;a862
	rst 38h			;a863
	call p,07755h		;a864
	rst 38h			;a867
	rst 38h			;a868
	ld b,l			;a869
	ld (hl),a		;a86a
	ld a,a			;a86b
	rst 38h			;a86c
	ld b,l			;a86d
	ld h,(hl)		;a86e
	ld h,a			;a86f
	rst 38h			;a870
	ld b,l			;a871
	ld (hl),a		;a872
	ld h,(hl)		;a873
	rst 38h			;a874
	ld b,l			;a875
	ld (hl),a		;a876
	ld (hl),a		;a877
	ld l,a			;a878
	di			;a879
	ld (hl),a		;a87a
	ld (hl),a		;a87b
	ld a,a			;a87c
	di			;a87d
	halt			;a87e
	ld h,a			;a87f
	ld a,a			;a880
	di			;a881
	ld d,l			;a882
	ld d,l			;a883
	ld e,a			;a884
	ld de,05555h		;a885
	ld d,l			;a888
	pop af			;a889
	ld d,l			;a88a
	ld d,l			;a88b
	ld d,l			;a88c
	pop af			;a88d
	ld d,l			;a88e
	ld d,l			;a88f
	ld d,l			;a890
	pop af			;a891
	ld d,l			;a892
	ld d,l			;a893
	ld d,h			;a894
	pop af			;a895
la896h:
	ld b,l			;a896
	ld d,l			;a897
	ld d,h			;a898
	ld c,a			;a899
	ld b,h			;a89a
	ld b,h			;a89b
	ld b,h			;a89c
	ld c,a			;a89d
	ld b,h			;a89e
	ld b,h			;a89f
	ld b,h			;a8a0
	ld c,a			;a8a1
	ld e,0eeh		;a8a2
	xor 0eeh		;a8a4
	ld de,01111h		;a8a6
	ld de,01111h		;a8a9
	ld de,01188h		;a8ac
	ld de,0ee11h		;a8af
	ld de,01118h		;a8b2
	ld de,01e11h		;a8b5
	ld de,01111h		;a8b8
	ld de,01111h		;a8bb
	ld de,01111h		;a8be
	ld de,01111h		;a8c1
la8c4h:
	ld de,011e1h		;a8c4
	ld de,0111eh		;a8c7
	ld de,01111h		;a8ca
	adc a,b			;a8cd
	ld de,01811h		;a8ce
	adc a,b			;a8d1
	ld de,0f811h		;a8d2
	adc a,a			;a8d5
	ld de,0881fh		;a8d6
	rst 38h			;a8d9
	ld de,08f88h		;a8da
	rst 38h			;a8dd
	rra			;a8de
la8dfh:
	adc a,b			;a8df
	rst 38h			;a8e0
	rst 30h			;a8e1
	sbc a,a			;a8e2
la8e3h:
	rst 38h			;a8e3
	cp 0efh			;a8e4
	sbc a,c			;a8e6
	sbc a,a			;a8e7
	pop hl			;a8e8
	adc a,a			;a8e9
	sbc a,c			;a8ea
	sbc a,a			;a8eb
	jr la8dfh		;a8ec
	sbc a,c			;a8ee
	pop af			;a8ef
	jr la8e3h		;a8f0
	sbc a,c			;a8f2
	pop af			;a8f3
	rra			;a8f4
	jr la896h		;a8f5
	ld de,0118fh		;a8f7
	sbc a,a			;a8fa
	ld de,0118fh		;a8fb
	sbc a,a			;a8fe
	ld de,0118fh		;a8ff
	ld de,018f1h		;a902
	pop af			;a905
	ld de,018f1h		;a906
	pop af			;a909
	rra			;a90a
	ld de,0118fh		;a90b
	rra			;a90e
	adc a,b			;a90f
	adc a,a			;a910
	ld de,0118fh		;a911
	adc a,a			;a914
	ld de,0118fh		;a915
	adc a,a			;a918
	jr $-111		;a919
	ld de,0818fh		;a91b
	adc a,a			;a91e
	ld de,0111fh		;a91f
	ld de,08811h		;a922
	ret m			;a925
	ld de,08f11h		;a926
	rst 38h			;a929
	ld de,0ff18h		;a92a
	di			;a92d
	ld de,0ff88h		;a92e
	call p,08f11h		;a931
	rst 38h			;a934
	inc h			;a935
	adc a,b			;a936
	adc a,a			;a937
	rst 38h			;a938
	inc hl			;a939
	jr la8c4h		;a93a
	rst 38h			;a93c
	ld (08f11h),hl		;a93d
	adc a,a			;a940
	rst 38h			;a941
	rra			;a942
	rst 38h			;a943
	rst 38h			;a944
	rst 30h			;a945
	rst 38h			;a946
	push af			;a947
	ld d,l			;a948
	rst 30h			;a949
	ld d,l			;a94a
	push af			;a94b
	ld d,l			;a94c
	cp 055h			;a94d
	push af			;a94f
	ld d,h			;a950
	cp 044h			;a951
	call p,0f744h		;a953
	inc sp			;a956
	call p,0f644h		;a957
	cpl			;a95a
	di			;a95b
	inc sp			;a95c
	rst 30h			;a95d
	rst 38h			;a95e
	di			;a95f
	inc sp			;a960
	rst 30h			;a961
	xor 0e7h		;a962
	ret m			;a964
	adc a,b			;a965
	ld (hl),a		;a966
	xor 07fh		;a967
	adc a,b			;a969
	ld h,(hl)		;a96a
	ld (hl),a		;a96b
	rst 28h			;a96c
	adc a,b			;a96d
	ld a,a			;a96e
	ld h,a			;a96f
	ld (hl),a		;a970
	ret m			;a971
	rst 20h			;a972
	or 067h			;a973
	rst 38h			;a975
	ld (hl),a		;a976
	ld a,a			;a977
	ld h,(hl)		;a978
	ld a,a			;a979
	ld h,a			;a97a
	ld (hl),a		;a97b
	rst 38h			;a97c
	ld h,(hl)		;a97d
	ld h,(hl)		;a97e
	ld h,a			;a97f
	ld a,a			;a980
	rst 38h			;a981
	pop af			;a982
	ld de,01111h		;a983
	adc a,a			;a986
	ld de,01111h		;a987
	adc a,b			;a98a
	rst 38h			;a98b
	ld de,0881fh		;a98c
	adc a,b			;a98f
	rst 38h			;a990
	rst 38h			;a991
	adc a,b			;a992
	adc a,b			;a993
	adc a,b			;a994
	adc a,a			;a995
	ret m			;a996
	adc a,b			;a997
	adc a,b			;a998
	adc a,a			;a999
	rst 38h			;a99a
	adc a,b			;a99b
	adc a,b			;a99c
	adc a,a			;a99d
	rst 38h			;a99e
	ret m			;a99f
	adc a,b			;a9a0
	adc a,a			;a9a1
	call p,04444h		;a9a2
	ld b,h			;a9a5
	call p,04444h		;a9a6
	ld b,h			;a9a9
	inc (hl)		;a9aa
	ld b,h			;a9ab
	ld b,h			;a9ac
	ld b,e			;a9ad
	inc (hl)		;a9ae
	ld b,h			;a9af
	ld b,h			;a9b0
	ld b,e			;a9b1
	inc (hl)		;a9b2
	ld b,h			;a9b3
	ld b,h			;a9b4
	ld b,e			;a9b5
	inc (hl)		;a9b6
	ld b,h			;a9b7
	ld b,h			;a9b8
	ld b,e			;a9b9
	inc sp			;a9ba
	ld b,h			;a9bb
	ld b,h			;a9bc
	ld b,e			;a9bd
	inc sp			;a9be
	ld b,h			;a9bf
	ld b,h			;a9c0
	ld (0f63fh),a		;a9c1
	halt			;a9c4
	ld h,a			;a9c5
	ccf			;a9c6
	rst 30h			;a9c7
	ld h,(hl)		;a9c8
	ld (hl),a		;a9c9
	rst 38h			;a9ca
	or 067h			;a9cb
	ld (hl),a		;a9cd
	rst 38h			;a9ce
	or 077h			;a9cf
	ld (hl),a		;a9d1
	rst 38h			;a9d2
	or 077h			;a9d3
	ld (hl),a		;a9d5
	rst 38h			;a9d6
	ld h,a			;a9d7
	ld (hl),a		;a9d8
	ld (hl),a		;a9d9
	rst 38h			;a9da
	ld h,a			;a9db
	ld (hl),a		;a9dc
	ld (hl),a		;a9dd
	rst 38h			;a9de
	ld h,a			;a9df
	ld (hl),a		;a9e0
	ld (hl),a		;a9e1
	ld (hl),a		;a9e2
	ld (hl),a		;a9e3
	ld (hl),a		;a9e4
	ld (hl),a		;a9e5
	ld (hl),a		;a9e6
	ld (hl),a		;a9e7
	ld (hl),a		;a9e8
	ld (hl),a		;a9e9
	ld (hl),a		;a9ea
	ld (hl),a		;a9eb
	ld (hl),a		;a9ec
	ld (hl),a		;a9ed
	ld (hl),a		;a9ee
	ld (hl),a		;a9ef
	ld (hl),a		;a9f0
	ld (hl),a		;a9f1
	ld (hl),a		;a9f2
	ld (hl),a		;a9f3
	ld (hl),a		;a9f4
	ld (hl),a		;a9f5
	ld (hl),a		;a9f6
	ld (hl),a		;a9f7
	ld (hl),a		;a9f8
	ld (hl),a		;a9f9
	ld (hl),a		;a9fa
	ld (hl),a		;a9fb
	ld (hl),a		;a9fc
	ld (hl),a		;a9fd
	ld (hl),a		;a9fe
	ld (hl),a		;a9ff
	ld (hl),a		;aa00
	ld (hl),a		;aa01
	ld (hl),a		;aa02
	ld (hl),a		;aa03
	ld a,a			;aa04
	di			;aa05
	ld (hl),a		;aa06
	ld (hl),a		;aa07
	ld a,a			;aa08
	inc (hl)		;aa09
	ld (hl),a		;aa0a
	ld (hl),a		;aa0b
	ld a,a			;aa0c
	inc (hl)		;aa0d
	ld (hl),a		;aa0e
	ld (hl),a		;aa0f
	ld a,a			;aa10
	inc (hl)		;aa11
	ld (hl),a		;aa12
	ld (hl),a		;aa13
	ld a,a			;aa14
	inc (hl)		;aa15
	ld (hl),a		;aa16
	ld (hl),a		;aa17
	ld a,a			;aa18
	inc sp			;aa19
	ld (hl),a		;aa1a
	ld (hl),a		;aa1b
	ld (hl),a		;aa1c
	call p,07777h		;aa1d
	ld (hl),a		;aa20
	call p,0f6f3h		;aa21
	ld (hl),a		;aa24
	ld (hl),a		;aa25
	call p,0773fh		;aa26
	ld (hl),a		;aa29
	call p,0773fh		;aa2a
	ld (hl),a		;aa2d
	call p,0773fh		;aa2e
	ld (hl),a		;aa31
	call p,0773fh		;aa32
	ld (hl),a		;aa35
	call p,0773fh		;aa36
	ld (hl),a		;aa39
	di			;aa3a
	ld c,a			;aa3b
	ld (hl),a		;aa3c
	ld (hl),a		;aa3d
	ld c,a			;aa3e
	inc (hl)		;aa3f
	rst 30h			;aa40
	ld (hl),a		;aa41
	ld (hl),a		;aa42
	ld (hl),a		;aa43
	ld (hl),a		;aa44
	ld (hl),a		;aa45
	ld (hl),a		;aa46
	ld (hl),a		;aa47
	ld (hl),a		;aa48
	ld (hl),a		;aa49
	ld (hl),a		;aa4a
	ld (hl),a		;aa4b
	ld (hl),a		;aa4c
	ld (hl),a		;aa4d
	ld (hl),a		;aa4e
	ld (hl),a		;aa4f
	ld (hl),a		;aa50
	ld (hl),a		;aa51
	ld (hl),a		;aa52
	ld (hl),a		;aa53
	ld (hl),a		;aa54
	ld (hl),a		;aa55
	ld (hl),a		;aa56
	ld (hl),a		;aa57
	ld (hl),a		;aa58
	ld (hl),a		;aa59
	ld (hl),a		;aa5a
	ld (hl),a		;aa5b
	ld (hl),a		;aa5c
	ld (hl),a		;aa5d
	ld (hl),a		;aa5e
	ld (hl),a		;aa5f
	ld (hl),a		;aa60
	ld (hl),a		;aa61
	ld (hl),a		;aa62
	halt			;aa63
	ld l,a			;aa64
	di			;aa65
	ld (hl),a		;aa66
	ld (hl),a		;aa67
	ld l,a			;aa68
	di			;aa69
	ld (hl),a		;aa6a
	ld (hl),a		;aa6b
	ld a,a			;aa6c
	rst 38h			;aa6d
	ld (hl),a		;aa6e
	ld (hl),a		;aa6f
	halt			;aa70
	rst 38h			;aa71
	ld (hl),a		;aa72
	ld (hl),a		;aa73
	halt			;aa74
	rst 38h			;aa75
	ld (hl),a		;aa76
	ld (hl),a		;aa77
	halt			;aa78
	ld l,a			;aa79
	ld (hl),a		;aa7a
	ld (hl),a		;aa7b
	halt			;aa7c
	ld l,a			;aa7d
	ld (hl),a		;aa7e
	ld (hl),a		;aa7f
	ld h,(hl)		;aa80
	ld l,a			;aa81
	ld b,h			;aa82
	ld b,h			;aa83
	ld b,h			;aa84
	ld c,a			;aa85
	ld b,h			;aa86
	ld b,h			;aa87
	ld b,h			;aa88
	ld c,a			;aa89
	inc (hl)		;aa8a
	ld b,h			;aa8b
	ld b,h			;aa8c
	ld b,h			;aa8d
	inc (hl)		;aa8e
	ld b,h			;aa8f
	ld b,h			;aa90
	ld b,h			;aa91
	inc (hl)		;aa92
	ld b,h			;aa93
	ld b,h			;aa94
	ld b,h			;aa95
	inc h			;aa96
	ld b,h			;aa97
	ld b,h			;aa98
	ld b,h			;aa99
	inc h			;aa9a
	ld b,h			;aa9b
	ld b,h			;aa9c
	ld b,h			;aa9d
	inc hl			;aa9e
	ld b,h			;aa9f
	ld b,h			;aaa0
	inc sp			;aaa1
	ld de,01111h		;aaa2
	ld de,01111h		;aaa5
	ld de,0f11fh		;aaa8
	ld de,0f811h		;aaab
	pop af			;aaae
laaafh:
	ld de,088ffh		;aaaf
	rst 38h			;aab2
	ret m			;aab3
	adc a,b			;aab4
	adc a,b			;aab5
	ret m			;aab6
	adc a,b			;aab7
	adc a,b			;aab8
	adc a,b			;aab9
	ret m			;aaba
	adc a,b			;aabb
	adc a,b			;aabc
	adc a,a			;aabd
	ret m			;aabe
	adc a,b			;aabf
	adc a,b			;aac0
	rst 38h			;aac1
	ret m			;aac2
	adc a,a			;aac3
	rst 38h			;aac4
	ld a,(hl)		;aac5
	adc a,b			;aac6
	adc a,a			;aac7
	or 07eh			;aac8
	adc a,b			;aaca
	rst 38h			;aacb
	ld h,a			;aacc
	rst 20h			;aacd
	adc a,a			;aace
	or 07eh			;aacf
	ld (hl),a		;aad1
	adc a,a			;aad2
	ld h,a			;aad3
	ld (hl),a		;aad4
	ld a,(hl)		;aad5
	rst 38h			;aad6
	ld h,a			;aad7
	ld (hl),a		;aad8
	rst 20h			;aad9
	or 077h			;aada
	ld (hl),a		;aadc
	ld (hl),a		;aadd
	or 077h			;aade
	ld (hl),a		;aae0
	halt			;aae1
	sbc a,a			;aae2
	ld de,0118fh		;aae3
	sbc a,a			;aae6
	ld de,0118fh		;aae7
laaeah:
	rst 38h			;aaea
	pop af			;aaeb
	rra			;aaec
	adc a,b			;aaed
laaeeh:
	rst 38h			;aaee
	pop af			;aaef
	adc a,b			;aaf0
	ret m			;aaf1
	rst 38h			;aaf2
	rst 38h			;aaf3
	jr laaeeh		;aaf4
	rst 38h			;aaf6
	rst 38h			;aaf7
	pop af			;aaf8
	adc a,a			;aaf9
	rst 38h			;aafa
	rst 38h			;aafb
	rst 38h			;aafc
	adc a,b			;aafd
	rst 38h			;aafe
laaffh:
	rst 38h			;aaff
	rst 38h			;ab00
	rst 38h			;ab01
	adc a,a			;ab02
	ld de,0111fh		;ab03
	adc a,a			;ab06
	ld de,0f188h		;ab07
	adc a,a			;ab0a
	adc a,b			;ab0b
	adc a,b			;ab0c
	pop af			;ab0d
	ret m			;ab0e
	ret m			;ab0f
	adc a,b			;ab10
	pop af			;ab11
	adc a,b			;ab12
	ret m			;ab13
	adc a,b			;ab14
	adc a,a			;ab15
	adc a,b			;ab16
	adc a,a			;ab17
	ret m			;ab18
	adc a,a			;ab19
	ret m			;ab1a
	adc a,b			;ab1b
	rst 38h			;ab1c
	adc a,b			;ab1d
	rst 38h			;ab1e
	adc a,b			;ab1f
	rst 38h			;ab20
	rst 38h			;ab21
	ld de,08f1fh		;ab22
	rst 38h			;ab25
	ld de,08f1fh		;ab26
	pop af			;ab29
	ld de,08f1fh		;ab2a
	adc a,b			;ab2d
	ld de,08f18h		;ab2e
	adc a,b			;ab31
	ld de,0ff88h		;ab32
	adc a,b			;ab35
	adc a,b			;ab36
	adc a,a			;ab37
	rst 38h			;ab38
	adc a,b			;ab39
	rst 38h			;ab3a
	rst 38h			;ab3b
	adc a,b			;ab3c
	rst 38h			;ab3d
	ret m			;ab3e
	adc a,b			;ab3f
	rst 38h			;ab40
	rst 38h			;ab41
	rst 38h			;ab42
	jp p,0f722h		;ab43
	rst 38h			;ab46
	rst 38h			;ab47
	ld (01ff7h),hl		;ab48
	rst 38h			;ab4b
	ld (08ff7h),hl		;ab4c
	rst 38h			;ab4f
	rst 38h			;ab50
	rst 30h			;ab51
	adc a,a			;ab52
	cpl			;ab53
	or 066h			;ab54
	adc a,a			;ab56
	ld d,e			;ab57
	or 066h			;ab58
	rst 38h			;ab5a
	ld d,e			;ab5b
	or 066h			;ab5c
	rst 38h			;ab5e
	ld d,e			;ab5f
	or 066h			;ab60
	halt			;ab62
	ld h,(hl)		;ab63
	halt			;ab64
	rst 38h			;ab65
	halt			;ab66
	ld h,(hl)		;ab67
	ld h,(hl)		;ab68
	ld l,a			;ab69
	halt			;ab6a
	ld h,(hl)		;ab6b
	ld h,(hl)		;ab6c
	ld h,(hl)		;ab6d
	ld h,(hl)		;ab6e
	ld h,(hl)		;ab6f
	ld h,(hl)		;ab70
	ld h,(hl)		;ab71
	ld h,(hl)		;ab72
	ld h,(hl)		;ab73
	ld h,(hl)		;ab74
	ld h,(hl)		;ab75
	ld h,(hl)		;ab76
	ld h,(hl)		;ab77
	ld h,(hl)		;ab78
	ld h,(hl)		;ab79
	ld h,(hl)		;ab7a
	ld h,(hl)		;ab7b
	ld h,(hl)		;ab7c
	ld h,(hl)		;ab7d
	ld h,(hl)		;ab7e
	ld h,(hl)		;ab7f
	ld h,(hl)		;ab80
	ld h,(hl)		;ab81
	rst 38h			;ab82
	rst 38h			;ab83
	ret m			;ab84
	adc a,a			;ab85
	rst 38h			;ab86
	rst 38h			;ab87
	rst 38h			;ab88
	rst 38h			;ab89
	rst 38h			;ab8a
	rst 38h			;ab8b
	rst 38h			;ab8c
	rst 38h			;ab8d
	ld l,a			;ab8e
	rst 38h			;ab8f
	rst 38h			;ab90
	rst 38h			;ab91
	ld h,(hl)		;ab92
	rst 38h			;ab93
	rst 38h			;ab94
	rst 38h			;ab95
	ld h,(hl)		;ab96
	ld l,a			;ab97
	jp p,0662fh		;ab98
	rst 38h			;ab9b
	call p,0ff4fh		;ab9c
	rst 38h			;ab9f
	di			;aba0
	ccf			;aba1
	inc sp			;aba2
	inc sp			;aba3
	inc sp			;aba4
	ld (03333h),a		;aba5
	inc sp			;aba8
	ld (03333h),a		;aba9
	inc sp			;abac
	ld (03333h),a		;abad
	inc sp			;abb0
	ld (03333h),a		;abb1
	inc sp			;abb4
	ld (03333h),a		;abb5
	inc sp			;abb8
	ld (03333h),a		;abb9
	inc sp			;abbc
	ld (022f2h),a		;abbd
	ld (0ff2fh),hl		;abc0
	ld h,a			;abc3
	ld (hl),a		;abc4
	ld (hl),a		;abc5
	rst 38h			;abc6
	ld h,(hl)		;abc7
	ld h,a			;abc8
	ld (hl),a		;abc9
	rst 38h			;abca
	ld h,(hl)		;abcb
	ld h,(hl)		;abcc
	ld h,(hl)		;abcd
	rst 38h			;abce
	or 066h			;abcf
	ld h,(hl)		;abd1
	rst 38h			;abd2
	or 066h			;abd3
	ld h,(hl)		;abd5
	rst 38h			;abd6
	rst 38h			;abd7
	or 066h			;abd8
	rst 38h			;abda
	rst 38h			;abdb
	rst 38h			;abdc
	rst 38h			;abdd
	rst 38h			;abde
	rst 38h			;abdf
	rst 38h			;abe0
	rst 38h			;abe1
	ld (hl),a		;abe2
	ld (hl),a		;abe3
	ld (hl),a		;abe4
	ld (hl),a		;abe5
	ld (hl),a		;abe6
	ld (hl),a		;abe7
	ld (hl),a		;abe8
	ld (hl),a		;abe9
	ld h,a			;abea
	ld (hl),a		;abeb
	ld (hl),a		;abec
	ld (hl),a		;abed
	ld h,(hl)		;abee
	ld h,(hl)		;abef
	ld h,(hl)		;abf0
	ld h,(hl)		;abf1
	ld h,(hl)		;abf2
	ld h,(hl)		;abf3
	ld h,(hl)		;abf4
	ld h,(hl)		;abf5
	ld h,(hl)		;abf6
	ld h,(hl)		;abf7
	ld h,(hl)		;abf8
	ld h,(hl)		;abf9
	rst 38h			;abfa
	or 066h			;abfb
	ld h,(hl)		;abfd
	ld h,(hl)		;abfe
	ld h,(hl)		;abff
	ld h,(hl)		;ac00
	ld h,(hl)		;ac01
	ld (hl),a		;ac02
	ld (hl),a		;ac03
	ld (hl),a		;ac04
	di			;ac05
	ld (hl),a		;ac06
	ld (hl),a		;ac07
	ld (hl),a		;ac08
	di			;ac09
	halt			;ac0a
	ld h,(hl)		;ac0b
	ld h,(hl)		;ac0c
	di			;ac0d
	ld h,(hl)		;ac0e
	ld h,(hl)		;ac0f
	ld h,(hl)		;ac10
	di			;ac11
	ld h,(hl)		;ac12
	ld h,(hl)		;ac13
	ld l,a			;ac14
	jp p,06666h		;ac15
	ld h,(hl)		;ac18
	rst 38h			;ac19
	ld h,(hl)		;ac1a
	ld h,(hl)		;ac1b
	ld h,(hl)		;ac1c
	rst 38h			;ac1d
	ld (hl),a		;ac1e
	ld (hl),a		;ac1f
	ld a,a			;ac20
	jp p,0434fh		;ac21
	rst 30h			;ac24
	ld (hl),a		;ac25
	ld c,a			;ac26
	ld b,e			;ac27
	rst 30h			;ac28
	ld (hl),a		;ac29
	ccf			;ac2a
	ld b,e			;ac2b
	or 066h			;ac2c
	ccf			;ac2e
	inc sp			;ac2f
	or 066h			;ac30
	cpl			;ac32
	ld (066f6h),hl		;ac33
	cpl			;ac36
	cpl			;ac37
	or 066h			;ac38
	rst 38h			;ac3a
	rst 38h			;ac3b
	or 077h			;ac3c
	cpl			;ac3e
	ld (077f7h),hl		;ac3f
	ld (hl),a		;ac42
	ld (hl),a		;ac43
	ld (hl),a		;ac44
	ld (hl),a		;ac45
	ld (hl),a		;ac46
	ld (hl),a		;ac47
	ld (hl),a		;ac48
	halt			;ac49
	ld h,(hl)		;ac4a
	ld h,(hl)		;ac4b
	ld h,(hl)		;ac4c
	ld h,(hl)		;ac4d
	ld h,(hl)		;ac4e
	ld h,(hl)		;ac4f
	ld h,(hl)		;ac50
	ld h,(hl)		;ac51
	ld h,(hl)		;ac52
	ld h,(hl)		;ac53
	ld h,(hl)		;ac54
	ld h,(hl)		;ac55
	ld h,(hl)		;ac56
	ld h,(hl)		;ac57
	ld h,(hl)		;ac58
	ld l,a			;ac59
	halt			;ac5a
	ld h,(hl)		;ac5b
	ld h,(hl)		;ac5c
	ld h,(hl)		;ac5d
	ld (hl),a		;ac5e
	ld (hl),a		;ac5f
	halt			;ac60
	ld h,(hl)		;ac61
	ld (hl),a		;ac62
	ld h,(hl)		;ac63
	ld h,(hl)		;ac64
	ld l,a			;ac65
	ld h,(hl)		;ac66
	ld h,(hl)		;ac67
	ld h,(hl)		;ac68
	rst 38h			;ac69
	ld h,(hl)		;ac6a
	ld h,(hl)		;ac6b
	ld h,(hl)		;ac6c
	rst 38h			;ac6d
	ld h,(hl)		;ac6e
	ld h,(hl)		;ac6f
	ld l,a			;ac70
	rst 38h			;ac71
	ld h,(hl)		;ac72
	rst 38h			;ac73
	rst 38h			;ac74
	rst 38h			;ac75
	rst 38h			;ac76
	rst 38h			;ac77
	rst 38h			;ac78
	rst 38h			;ac79
	ld h,(hl)		;ac7a
	ld l,a			;ac7b
	rst 38h			;ac7c
	rst 38h			;ac7d
	ld h,(hl)		;ac7e
	ld h,(hl)		;ac7f
	rst 38h			;ac80
	rst 38h			;ac81
	inc hl			;ac82
	inc sp			;ac83
	inc sp			;ac84
	inc sp			;ac85
	inc hl			;ac86
	inc sp			;ac87
	inc sp			;ac88
	inc sp			;ac89
	inc hl			;ac8a
	inc sp			;ac8b
	inc sp			;ac8c
	inc sp			;ac8d
	inc hl			;ac8e
	inc sp			;ac8f
lac90h:
	inc sp			;ac90
	inc sp			;ac91
	inc hl			;ac92
	inc sp			;ac93
	inc sp			;ac94
	inc sp			;ac95
	inc hl			;ac96
	inc sp			;ac97
	inc sp			;ac98
	inc sp			;ac99
	inc hl			;ac9a
	inc sp			;ac9b
	inc sp			;ac9c
	inc sp			;ac9d
	jp p,02222h		;ac9e
	ld (088f8h),hl		;aca1
	adc a,a			;aca4
	rst 38h			;aca5
	ret m			;aca6
	adc a,a			;aca7
	rst 38h			;aca8
	rst 38h			;aca9
	rst 38h			;acaa
	rst 38h			;acab
	rst 38h			;acac
	rst 38h			;acad
	rst 38h			;acae
	rst 38h			;acaf
	rst 38h			;acb0
	rst 38h			;acb1
	rst 38h			;acb2
	rst 38h			;acb3
	rst 38h			;acb4
	or 0f2h			;acb5
	cpl			;acb7
	rst 38h			;acb8
	or 0f4h			;acb9
	ld c,a			;acbb
	rst 38h			;acbc
	rst 38h			;acbd
	di			;acbe
	ccf			;acbf
	rst 38h			;acc0
	rst 38h			;acc1
	or 077h			;acc2
	halt			;acc4
	ld h,(hl)		;acc5
	ld h,a			;acc6
	ld (hl),a		;acc7
	ld h,(hl)		;acc8
	ld h,(hl)		;acc9
	ld h,a			;acca
	halt			;accb
	ld h,(hl)		;accc
	ld h,a			;accd
	ld h,(hl)		;acce
	ld l,a			;accf
	ld h,(hl)		;acd0
	ld h,a			;acd1
	ld h,(hl)		;acd2
	or 066h			;acd3
	ld h,a			;acd5
	ld l,a			;acd6
	ld h,(hl)		;acd7
	ld h,(hl)		;acd8
	ld h,(hl)		;acd9
	or 066h			;acda
	ld h,(hl)		;acdc
	ld h,(hl)		;acdd
	or 066h			;acde
	ld h,(hl)		;ace0
	ld h,(hl)		;ace1
	rst 38h			;ace2
	rst 38h			;ace3
	rst 30h			;ace4
	pop af			;ace5
	rst 38h			;ace6
	rst 38h			;ace7
	rst 30h			;ace8
	rst 38h			;ace9
	rst 38h			;acea
	rst 38h			;aceb
	rst 38h			;acec
	ld a,a			;aced
	rst 38h			;acee
	rst 38h			;acef
	rst 38h			;acf0
	halt			;acf1
	rst 38h			;acf2
	rst 38h			;acf3
	rst 38h			;acf4
	rst 30h			;acf5
	rst 38h			;acf6
	rst 38h			;acf7
	rst 38h			;acf8
	rst 38h			;acf9
	rst 38h			;acfa
	rst 38h			;acfb
	rst 38h			;acfc
	rst 38h			;acfd
	rst 38h			;acfe
	rst 38h			;acff
	rst 38h			;ad00
	rst 38h			;ad01
	adc a,b			;ad02
	rst 38h			;ad03
	rst 38h			;ad04
	adc a,a			;ad05
	jr lac90h		;ad06
	adc a,b			;ad08
	adc a,b			;ad09
	ret m			;ad0a
	adc a,b			;ad0b
	adc a,b			;ad0c
	adc a,b			;ad0d
	rst 38h			;ad0e
	rst 38h			;ad0f
	adc a,b			;ad10
	adc a,b			;ad11
	ld h,(hl)		;ad12
	rst 38h			;ad13
	rst 38h			;ad14
	rst 38h			;ad15
	halt			;ad16
	ld h,(hl)		;ad17
	rst 38h			;ad18
	rst 38h			;ad19
	rst 38h			;ad1a
	ld h,(hl)		;ad1b
	ld h,(hl)		;ad1c
	ld h,(hl)		;ad1d
	rst 38h			;ad1e
	rst 38h			;ad1f
	rst 38h			;ad20
	rst 38h			;ad21
	rst 38h			;ad22
	rst 38h			;ad23
	rst 38h			;ad24
	rra			;ad25
	adc a,b			;ad26
	adc a,b			;ad27
	add a,c			;ad28
	rst 38h			;ad29
	adc a,b			;ad2a
	adc a,b			;ad2b
	adc a,a			;ad2c
	or 088h			;ad2d
	adc a,a			;ad2f
	rst 38h			;ad30
	or 0ffh			;ad31
	rst 38h			;ad33
	rst 38h			;ad34
	ld h,(hl)		;ad35
	rst 38h			;ad36
	or 066h			;ad37
	ld h,(hl)		;ad39
	ld h,(hl)		;ad3a
	ld h,(hl)		;ad3b
	rst 38h			;ad3c
	rst 38h			;ad3d
	rst 38h			;ad3e
	rst 38h			;ad3f
	rst 38h			;ad40
	rst 38h			;ad41
	ld a,a			;ad42
	ld d,e			;ad43
	or 066h			;ad44
	ld l,a			;ad46
	ld d,e			;ad47
	or 066h			;ad48
	ld l,a			;ad4a
	ld d,e			;ad4b
	or 066h			;ad4c
	ld l,a			;ad4e
	ld d,e			;ad4f
	or 066h			;ad50
	ld l,a			;ad52
	ld d,e			;ad53
	or 0ffh			;ad54
	rst 38h			;ad56
	ld d,e			;ad57
	rst 38h			;ad58
	rst 38h			;ad59
	rst 38h			;ad5a
	ld d,e			;ad5b
	rst 38h			;ad5c
	rst 38h			;ad5d
	rst 38h			;ad5e
	ld d,e			;ad5f
	rst 38h			;ad60
	rst 38h			;ad61
	ld h,(hl)		;ad62
	ld h,(hl)		;ad63
	ld h,(hl)		;ad64
	rst 38h			;ad65
	ld h,(hl)		;ad66
	ld h,(hl)		;ad67
	rst 38h			;ad68
	rst 38h			;ad69
	ld h,(hl)		;ad6a
	rst 38h			;ad6b
	rst 38h			;ad6c
	jp p,0ffffh		;ad6d
	rst 38h			;ad70
	ld (0ffffh),a		;ad71
	rst 38h			;ad74
	ld (0ffffh),a		;ad75
	di			;ad78
	ld (0ffffh),hl		;ad79
	di			;ad7c
	ld (0ffffh),hl		;ad7d
	di			;ad80
	ld (022f2h),hl		;ad81
	di			;ad84
	ccf			;ad85
	ld (0f322h),hl		;ad86
	ccf			;ad89
	ld (0f322h),hl		;ad8a
	pop af			;ad8d
	ld (0f322h),hl		;ad8e
	ret m			;ad91
	ld (0f322h),hl		;ad92
	ret m			;ad95
	ld (0ff22h),hl		;ad96
	ret m			;ad99
	ld (02222h),hl		;ad9a
	ret m			;ad9d
	ld (02222h),hl		;ad9e
	rst 38h			;ada1
	rst 38h			;ada2
	rst 38h			;ada3
	rst 38h			;ada4
	rst 38h			;ada5
	cp 0eeh			;ada6
	xor 0efh		;ada8
	pop hl			;adaa
	ld de,01e11h		;adab
	ld de,01111h		;adae
	ld e,011h		;adb1
	ld de,01e11h		;adb3
	adc a,b			;adb6
	adc a,b			;adb7
	adc a,b			;adb8
	adc a,(hl)		;adb9
	rst 38h			;adba
	rst 38h			;adbb
	rst 38h			;adbc
	rst 38h			;adbd
	ld de,01111h		;adbe
	rra			;adc1
	rst 38h			;adc2
	rst 38h			;adc3
	rst 38h			;adc4
	or 0f1h			;adc5
	rst 38h			;adc7
	rst 38h			;adc8
	ld h,(hl)		;adc9
	jr $+1			;adca
	or 067h			;adcc
	adc a,b			;adce
	rst 38h			;adcf
	or 067h			;add0
	adc a,b			;add2
	rst 38h			;add3
	ld h,(hl)		;add4
	ld h,(hl)		;add5
	adc a,b			;add6
	rst 38h			;add7
	ld h,(hl)		;add8
	ld h,(hl)		;add9
	adc a,b			;adda
	rst 38h			;addb
	ld h,(hl)		;addc
	ld h,(hl)		;addd
	adc a,a			;adde
laddfh:
	rst 38h			;addf
	or 066h			;ade0
	ld h,(hl)		;ade2
	ld h,(hl)		;ade3
	ld (hl),a		;ade4
	ld (hl),a		;ade5
	ld (hl),a		;ade6
	ld (hl),a		;ade7
	ld (hl),a		;ade8
	ld (hl),a		;ade9
	ld (hl),a		;adea
	ld (hl),a		;adeb
	ld (hl),a		;adec
	ld (hl),a		;aded
	ld (hl),a		;adee
	ld (hl),a		;adef
	ld (hl),a		;adf0
	ld (hl),a		;adf1
	ld (hl),a		;adf2
	ld (hl),a		;adf3
	ld (hl),a		;adf4
	ld (hl),a		;adf5
	ld h,(hl)		;adf6
	ld h,(hl)		;adf7
	ld h,(hl)		;adf8
	ld h,(hl)		;adf9
	ld h,(hl)		;adfa
	ld h,(hl)		;adfb
	ld h,(hl)		;adfc
	ld h,a			;adfd
	ld h,(hl)		;adfe
	ld h,(hl)		;adff
	ld h,(hl)		;ae00
	ld (hl),a		;ae01
	ld (hl),a		;ae02
	ld (hl),a		;ae03
	ld a,a			;ae04
	ld (07777h),hl		;ae05
	ld a,a			;ae08
	inc sp			;ae09
	ld (hl),a		;ae0a
	ld (hl),a		;ae0b
	ld a,a			;ae0c
	inc (hl)		;ae0d
	ld (hl),a		;ae0e
	ld (hl),a		;ae0f
	ld a,a			;ae10
	inc (hl)		;ae11
	ld h,(hl)		;ae12
	ld h,(hl)		;ae13
	ld l,a			;ae14
	rst 38h			;ae15
	ld h,(hl)		;ae16
	ld (hl),a		;ae17
	ld a,a			;ae18
	ld b,h			;ae19
	ld (hl),a		;ae1a
	ld (hl),a		;ae1b
	ld a,a			;ae1c
	ld b,e			;ae1d
	halt			;ae1e
	ld h,(hl)		;ae1f
lae20h:
	ld l,a			;ae20
	inc sp			;ae21
	rst 38h			;ae22
	inc sp			;ae23
	rst 30h			;ae24
	ld (hl),a		;ae25
	rst 38h			;ae26
	ld b,e			;ae27
	rst 30h			;ae28
	ld (hl),a		;ae29
	rst 38h			;ae2a
	ld b,e			;ae2b
	rst 30h			;ae2c
	ld (hl),a		;ae2d
	rst 38h			;ae2e
	ld c,a			;ae2f
	rst 30h			;ae30
	ld (hl),a		;ae31
	rst 38h			;ae32
	ld b,e			;ae33
	rst 30h			;ae34
	ld (hl),a		;ae35
	rst 38h			;ae36
	ld b,h			;ae37
	rst 30h			;ae38
	ld (hl),a		;ae39
	rst 38h			;ae3a
	inc sp			;ae3b
	rst 30h			;ae3c
	ld (hl),a		;ae3d
	rst 38h			;ae3e
	inc sp			;ae3f
	rst 30h			;ae40
	ld (hl),a		;ae41
	ld (hl),a		;ae42
	ld (hl),a		;ae43
	ld (hl),a		;ae44
	ld (hl),a		;ae45
	ld (hl),a		;ae46
	ld (hl),a		;ae47
	ld (hl),a		;ae48
	ld (hl),a		;ae49
	ld (hl),a		;ae4a
	ld (hl),a		;ae4b
	ld (hl),a		;ae4c
	ld (hl),a		;ae4d
	ld (hl),a		;ae4e
	ld (hl),a		;ae4f
	ld (hl),a		;ae50
	ld (hl),a		;ae51
	ld h,a			;ae52
	ld h,(hl)		;ae53
	ld h,(hl)		;ae54
	ld (hl),a		;ae55
	ld (hl),a		;ae56
	ld (hl),a		;ae57
	ld h,(hl)		;ae58
	ld h,(hl)		;ae59
	ld (hl),a		;ae5a
	ld (hl),a		;ae5b
	ld (hl),a		;ae5c
	halt			;ae5d
	ld (hl),a		;ae5e
	ld (hl),a		;ae5f
	ld (hl),a		;ae60
	ld (hl),a		;ae61
	halt			;ae62
	ld h,(hl)		;ae63
	ld l,a			;ae64
	rst 38h			;ae65
	ld (hl),a		;ae66
	halt			;ae67
	ld l,a			;ae68
	rra			;ae69
	ld (hl),a		;ae6a
	ld (hl),a		;ae6b
	ld l,a			;ae6c
	add a,c			;ae6d
	ld (hl),a		;ae6e
	ld (hl),a		;ae6f
	ld l,a			;ae70
	adc a,b			;ae71
	ld (hl),a		;ae72
	halt			;ae73
	ld l,a			;ae74
	adc a,b			;ae75
	ld h,(hl)		;ae76
	ld h,(hl)		;ae77
	ld l,a			;ae78
	adc a,b			;ae79
	ld h,(hl)		;ae7a
	ld l,a			;ae7b
	rst 38h			;ae7c
	adc a,b			;ae7d
	halt			;ae7e
	ld l,a			;ae7f
	rst 38h			;ae80
	ret m			;ae81
	rst 38h			;ae82
	rst 38h			;ae83
	rst 38h			;ae84
	jp p,0eefeh		;ae85
	xor 0efh		;ae88
	pop hl			;ae8a
	ld de,01e11h		;ae8b
	pop hl			;ae8e
	ld de,01111h		;ae8f
	pop hl			;ae92
	ld de,01111h		;ae93
	jr lae20h		;ae96
	adc a,b			;ae98
	adc a,b			;ae99
	rst 38h			;ae9a
	rst 38h			;ae9b
	rst 38h			;ae9c
	rst 38h			;ae9d
	pop af			;ae9e
	ld de,01111h		;ae9f
	di			;aea2
	ccf			;aea3
	rst 38h			;aea4
	rst 38h			;aea5
	di			;aea6
	ccf			;aea7
	rst 38h			;aea8
	rst 38h			;aea9
	adc a,a			;aeaa
	ccf			;aeab
	ld (08f22h),hl		;aeac
	ccf			;aeaf
	ld (08f22h),hl		;aeb0
	ccf			;aeb3
	ld (08f22h),hl		;aeb4
	rst 38h			;aeb7
	ld (08f22h),hl		;aeb8
	ld (02222h),hl		;aebb
	rst 38h			;aebe
	ld (02222h),hl		;aebf
	ld h,(hl)		;aec2
	ld h,(hl)		;aec3
	ld h,(hl)		;aec4
	ld h,(hl)		;aec5
	or 066h			;aec6
	ld h,(hl)		;aec8
	ld h,(hl)		;aec9
	rst 38h			;aeca
	or 066h			;aecb
	ld h,(hl)		;aecd
	cpl			;aece
	rst 38h			;aecf
	or 066h			;aed0
	ccf			;aed2
	rst 38h			;aed3
	rst 38h			;aed4
	ld h,(hl)		;aed5
	inc hl			;aed6
	rst 38h			;aed7
	rst 38h			;aed8
	rst 38h			;aed9
	inc hl			;aeda
	rst 38h			;aedb
	rst 38h			;aedc
	rst 38h			;aedd
	inc hl			;aede
	rst 38h			;aedf
	rst 38h			;aee0
	rst 38h			;aee1
	rst 28h			;aee2
	xor d			;aee3
	sbc a,c			;aee4
	sbc a,c			;aee5
	ld e,0f9h		;aee6
	sbc a,c			;aee8
	ld sp,hl		;aee9
	add a,c			;aeea
	ld sp,hl		;aeeb
	sbc a,c			;aeec
	ld sp,hl		;aeed
	ret m			;aeee
	ld sp,hl		;aeef
	sbc a,c			;aef0
	ld sp,hl		;aef1
	ret m			;aef2
	ld sp,hl		;aef3
	sbc a,a			;aef4
	ld sp,hl		;aef5
	rst 38h			;aef6
	ld sp,hl		;aef7
	sbc a,c			;aef8
	sbc a,c			;aef9
	rst 20h			;aefa
	rst 38h			;aefb
	ld sp,hl		;aefc
	sbc a,c			;aefd
	xor 077h		;aefe
	ld a,a			;af00
	ld sp,hl		;af01
	sbc a,a			;af02
	sbc a,c			;af03
	ld sp,hl		;af04
	sbc a,c			;af05
	sbc a,a			;af06
	sbc a,c			;af07
	ld sp,hl		;af08
	sbc a,c			;af09
	sbc a,a			;af0a
	sbc a,a			;af0b
	ld sp,hl		;af0c
	sbc a,c			;af0d
	rst 38h			;af0e
	sbc a,c			;af0f
	sbc a,c			;af10
	sbc a,c			;af11
	sbc a,a			;af12
	sbc a,c			;af13
	sbc a,c			;af14
	sbc a,c			;af15
	sbc a,c			;af16
	sbc a,c			;af17
	sbc a,c			;af18
	sbc a,c			;af19
	sbc a,c			;af1a
	sbc a,c			;af1b
	sbc a,c			;af1c
	sbc a,c			;af1d
	sbc a,c			;af1e
	sbc a,c			;af1f
	sbc a,c			;af20
	sbc a,c			;af21
	xor a			;af22
	ld sp,hl		;af23
	xor c			;af24
	ld sp,hl		;af25
	xor a			;af26
	ld sp,hl		;af27
	xor c			;af28
	ld sp,hl		;af29
	xor a			;af2a
	ld sp,hl		;af2b
	xor c			;af2c
	ld sp,hl		;af2d
	xor a			;af2e
	ld sp,hl		;af2f
	rst 38h			;af30
	ld sp,hl		;af31
	xor a			;af32
	ld sp,hl		;af33
	sbc a,c			;af34
	sbc a,c			;af35
	xor a			;af36
	ld sp,hl		;af37
	sbc a,a			;af38
	rst 38h			;af39
	xor a			;af3a
	rst 38h			;af3b
	rst 38h			;af3c
	rst 38h			;af3d
	rst 38h			;af3e
	rst 38h			;af3f
	rst 38h			;af40
	rst 38h			;af41
	sbc a,d			;af42
	sbc a,a			;af43
	sbc a,a			;af44
	ld sp,hl		;af45
	sbc a,a			;af46
	rst 38h			;af47
	sbc a,a			;af48
	ld sp,hl		;af49
	sbc a,c			;af4a
	sbc a,c			;af4b
	sbc a,a			;af4c
	ld sp,hl		;af4d
	sbc a,c			;af4e
	sbc a,c			;af4f
	rst 38h			;af50
	rst 38h			;af51
	sbc a,a			;af52
	rst 38h			;af53
	rst 38h			;af54
	rst 38h			;af55
	rst 38h			;af56
	rst 38h			;af57
	rst 38h			;af58
	rst 38h			;af59
	rst 38h			;af5a
	rst 38h			;af5b
	rst 38h			;af5c
	rst 38h			;af5d
	rst 38h			;af5e
	rst 38h			;af5f
	rst 38h			;af60
	rst 38h			;af61
	xor 0eeh		;af62
	rst 20h			;af64
	ld a,a			;af65
	rst 20h			;af66
	xor 0eeh		;af67
	rst 20h			;af69
	ld a,(hl)		;af6a
	xor 077h		;af6b
	xor 0eeh		;af6d
	ld (hl),a		;af6f
	ld a,(hl)		;af70
	rst 20h			;af71
	rst 20h			;af72
	ld (hl),a		;af73
	ld (hl),a		;af74
	ld a,(hl)		;af75
	ld (hl),a		;af76
	ld h,(hl)		;af77
	ld (hl),a		;af78
	xor 066h		;af79
	ld (hl),a		;af7b
	ld (hl),a		;af7c
	rst 20h			;af7d
	ld h,(hl)		;af7e
	ld (hl),a		;af7f
	ld a,(hl)		;af80
	ld (hl),a		;af81
	rst 38h			;af82
	sbc a,c			;af83
	rst 38h			;af84
	rst 38h			;af85
	ld (hl),a		;af86
	rst 38h			;af87
	rst 38h			;af88
	rst 38h			;af89
	xor 077h		;af8a
	ld a,a			;af8c
	rst 38h			;af8d
	xor 0eeh		;af8e
	ld (hl),a		;af90
	ld (hl),a		;af91
	xor 0e7h		;af92
	ld (hl),a		;af94
	ld (hl),a		;af95
	rst 20h			;af96
	ld (hl),a		;af97
	ld (hl),a		;af98
	ld (hl),a		;af99
	ld (hl),a		;af9a
	ld (hl),a		;af9b
	ld (hl),a		;af9c
	ld (hl),a		;af9d
	ld (hl),a		;af9e
	ld (hl),a		;af9f
	ld (hl),a		;afa0
	ld (hl),a		;afa1
	ld h,a			;afa2
	ld (hl),a		;afa3
	ld (hl),a		;afa4
	halt			;afa5
	ld (hl),a		;afa6
	ld (hl),a		;afa7
	halt			;afa8
	ld h,(hl)		;afa9
	ld (hl),a		;afaa
	ld (hl),a		;afab
	ld h,(hl)		;afac
	ld h,a			;afad
	ld (hl),a		;afae
	halt			;afaf
	ld h,(hl)		;afb0
	ld (hl),a		;afb1
	ld (hl),a		;afb2
	ld h,(hl)		;afb3
	ld h,(hl)		;afb4
	ld h,(hl)		;afb5
	ld h,(hl)		;afb6
	ld h,(hl)		;afb7
	ld h,(hl)		;afb8
	ld h,(hl)		;afb9
	ld h,(hl)		;afba
	ld h,(hl)		;afbb
	ld h,(hl)		;afbc
	ld h,(hl)		;afbd
	ld h,(hl)		;afbe
	ld h,(hl)		;afbf
	ld h,(hl)		;afc0
	ld h,(hl)		;afc1
	ld h,a			;afc2
	ld (hl),a		;afc3
	ld (hl),a		;afc4
	ld (hl),a		;afc5
	ld (hl),a		;afc6
	ld (hl),a		;afc7
	ld (hl),a		;afc8
	ld (hl),a		;afc9
	ld (hl),a		;afca
	ld (hl),a		;afcb
	ld (hl),a		;afcc
	ld (hl),a		;afcd
	ld (hl),a		;afce
	ld (hl),a		;afcf
	ld (hl),a		;afd0
	ld (hl),a		;afd1
	ld h,a			;afd2
	ld (hl),a		;afd3
	ld (hl),a		;afd4
	ld (hl),a		;afd5
	ld h,(hl)		;afd6
	ld (hl),a		;afd7
	ld (hl),a		;afd8
	ld (hl),a		;afd9
	ld h,(hl)		;afda
	ld h,a			;afdb
	ld (hl),a		;afdc
	ld (hl),a		;afdd
	ld h,(hl)		;afde
	ld h,a			;afdf
	ld (hl),a		;afe0
	ld (hl),a		;afe1
	ld h,(hl)		;afe2
	ld h,(hl)		;afe3
	ld h,(hl)		;afe4
	ld h,(hl)		;afe5
	ld h,(hl)		;afe6
	ld h,(hl)		;afe7
	ld h,(hl)		;afe8
	ld h,(hl)		;afe9
	ld h,(hl)		;afea
	ld h,(hl)		;afeb
	ld h,(hl)		;afec
	ld h,(hl)		;afed
	ld h,(hl)		;afee
	ld h,(hl)		;afef
	ld h,(hl)		;aff0
	ld h,(hl)		;aff1
	ld h,(hl)		;aff2
	ld h,(hl)		;aff3
	ld h,(hl)		;aff4
	ld h,(hl)		;aff5
	ld h,(hl)		;aff6
	ld h,(hl)		;aff7
	ld h,(hl)		;aff8
	ld h,(hl)		;aff9
	ld h,(hl)		;affa
	ld h,(hl)		;affb
	ld h,(hl)		;affc
	ld h,(hl)		;affd
	ld h,(hl)		;affe
	ld h,(hl)		;afff
	ld h,(hl)		;b000
	ld h,(hl)		;b001
	ld h,(hl)		;b002
	ld h,(hl)		;b003
	ld h,(hl)		;b004
	ld h,(hl)		;b005
	ld h,(hl)		;b006
	ld h,(hl)		;b007
	ld h,(hl)		;b008
	ld h,(hl)		;b009
	ld h,(hl)		;b00a
	ld h,(hl)		;b00b
	ld h,(hl)		;b00c
	ld l,a			;b00d
	ld h,(hl)		;b00e
	ld h,(hl)		;b00f
	ld h,(hl)		;b010
	ld l,a			;b011
	ld h,(hl)		;b012
	ld h,(hl)		;b013
	ld h,(hl)		;b014
	ld h,(hl)		;b015
	ld h,(hl)		;b016
	ld h,(hl)		;b017
	ld h,(hl)		;b018
	ld h,(hl)		;b019
	ld h,(hl)		;b01a
	ld h,(hl)		;b01b
	ld h,(hl)		;b01c
	ld h,(hl)		;b01d
	ld h,(hl)		;b01e
	ld h,(hl)		;b01f
	ld h,(hl)		;b020
	ld h,(hl)		;b021
	ld h,(hl)		;b022
	ld h,(hl)		;b023
	ld l,a			;b024
	halt			;b025
	ld h,(hl)		;b026
	ld h,(hl)		;b027
	ld l,a			;b028
	ld d,e			;b029
	ld h,(hl)		;b02a
	ld h,(hl)		;b02b
	ld l,a			;b02c
	ld d,e			;b02d
	ld h,(hl)		;b02e
	ld h,(hl)		;b02f
	ld l,a			;b030
	ld d,e			;b031
	ld h,(hl)		;b032
	ld h,(hl)		;b033
	ld l,a			;b034
	ld d,e			;b035
	ld h,(hl)		;b036
	ld h,(hl)		;b037
	ld l,a			;b038
	ld d,e			;b039
	rst 38h			;b03a
	ld h,(hl)		;b03b
	ld l,a			;b03c
	ld d,e			;b03d
	rst 38h			;b03e
	rst 38h			;b03f
	ld l,a			;b040
	ld d,e			;b041
	ld h,(hl)		;b042
	ld h,(hl)		;b043
	ld h,a			;b044
	ld (hl),a		;b045
	or 066h			;b046
	ld h,(hl)		;b048
	ld h,(hl)		;b049
	or 066h			;b04a
	ld h,(hl)		;b04c
	ld h,(hl)		;b04d
	rst 38h			;b04e
	ld h,(hl)		;b04f
	ld h,(hl)		;b050
	ld h,(hl)		;b051
	rst 38h			;b052
	or 066h			;b053
	ld h,(hl)		;b055
	rst 38h			;b056
	or 066h			;b057
	ld h,(hl)		;b059
	or 0ffh			;b05a
	or 066h			;b05c
	or 066h			;b05e
	rst 38h			;b060
	rst 38h			;b061
	ld h,(hl)		;b062
	ld h,(hl)		;b063
	ld h,(hl)		;b064
	ld h,(hl)		;b065
	ld h,(hl)		;b066
	ld h,(hl)		;b067
	ld h,(hl)		;b068
	ld h,(hl)		;b069
	ld h,(hl)		;b06a
	ld h,(hl)		;b06b
	ld h,(hl)		;b06c
	ld h,(hl)		;b06d
	ld h,(hl)		;b06e
	ld h,(hl)		;b06f
	ld h,(hl)		;b070
	ld h,(hl)		;b071
	ld h,(hl)		;b072
	ld h,(hl)		;b073
	ld h,(hl)		;b074
	ld h,(hl)		;b075
	ld h,(hl)		;b076
	ld h,(hl)		;b077
	ld h,(hl)		;b078
	ld h,(hl)		;b079
	ld h,(hl)		;b07a
	ld h,(hl)		;b07b
	ld h,(hl)		;b07c
	ld h,(hl)		;b07d
	or 066h			;b07e
	ld h,(hl)		;b080
	ld h,(hl)		;b081
	ld h,(hl)		;b082
	ld h,(hl)		;b083
	ld h,(hl)		;b084
	ld h,(hl)		;b085
	ld h,(hl)		;b086
	ld h,(hl)		;b087
	ld h,(hl)		;b088
	ld h,(hl)		;b089
	ld h,(hl)		;b08a
	ld h,(hl)		;b08b
	ld h,(hl)		;b08c
	ld h,(hl)		;b08d
	ld h,(hl)		;b08e
	ld h,(hl)		;b08f
	ld h,(hl)		;b090
	ld h,(hl)		;b091
	ld h,(hl)		;b092
	ld h,(hl)		;b093
	ld h,(hl)		;b094
	ld l,a			;b095
	ld h,(hl)		;b096
	ld h,(hl)		;b097
	ld h,(hl)		;b098
	ld l,a			;b099
	ld h,(hl)		;b09a
	ld h,(hl)		;b09b
	rst 38h			;b09c
	rst 38h			;b09d
	ld h,(hl)		;b09e
	ld h,(hl)		;b09f
	rst 38h			;b0a0
	rst 38h			;b0a1
	jr z,lb0bch		;b0a2
	rlca			;b0a4
	inc (hl)		;b0a5
	inc c			;b0a6
	inc bc			;b0a7
	inc de			;b0a8
	rrca			;b0a9
	nop			;b0aa
	inc c			;b0ab
	inc bc			;b0ac
	nop			;b0ad
	rlca			;b0ae
	nop			;b0af
	nop			;b0b0
	nop			;b0b1
	nop			;b0b2
	nop			;b0b3
	nop			;b0b4
	nop			;b0b5
	nop			;b0b6
	nop			;b0b7
	nop			;b0b8
	nop			;b0b9
	jr z,lb0ech		;b0ba
lb0bch:
	ret nz			;b0bc
	ld e,b			;b0bd
	ld h,b			;b0be
	add a,b			;b0bf
	sub b			;b0c0
	ret po			;b0c1
	nop			;b0c2
	ld h,b			;b0c3
	add a,b			;b0c4
	nop			;b0c5
	ret nz			;b0c6
	nop			;b0c7
	nop			;b0c8
	nop			;b0c9
	nop			;b0ca
	nop			;b0cb
	nop			;b0cc
	nop			;b0cd
	nop			;b0ce
	nop			;b0cf
	nop			;b0d0
	nop			;b0d1
	and b			;b0d2
	ld h,b			;b0d3
	rra			;b0d4
	or b			;b0d5
	ld (hl),b		;b0d6
	rrca			;b0d7
	ret nc			;b0d8
	jr nc,lb0eah		;b0d9
	ld e,h			;b0db
	inc a			;b0dc
	inc bc			;b0dd
	ld h,a			;b0de
	rra			;b0df
	nop			;b0e0
	jr c,lb0eah		;b0e1
	nop			;b0e3
	rrca			;b0e4
	nop			;b0e5
	nop			;b0e6
	nop			;b0e7
	nop			;b0e8
	nop			;b0e9
lb0eah:
	ld a,(bc)		;b0ea
	inc c			;b0eb
lb0ech:
	ret p			;b0ec
	ld a,(de)		;b0ed
	inc e			;b0ee
	ret po			;b0ef
	ld d,018h		;b0f0
	ret po			;b0f2
	ld (hl),h		;b0f3
	ld a,b			;b0f4
	add a,b			;b0f5
	call z,000f0h		;b0f6
	jr c,$-62		;b0f9
	nop			;b0fb
	ret po			;b0fc
	nop			;b0fd
	nop			;b0fe
	nop			;b0ff
	nop			;b100
	nop			;b101
	add a,b			;b102
	add a,b			;b103
	ld a,a			;b104
	add a,b			;b105
	add a,b			;b106
	ld a,a			;b107
	add a,b			;b108
	add a,b			;b109
	ld a,a			;b10a
	ld b,b			;b10b
	ld b,b			;b10c
	ccf			;b10d
	ld h,b			;b10e
	ld h,b			;b10f
	rra			;b110
	jr nc,lb143h		;b111
	rrca			;b113
	rrca			;b114
	rrca			;b115
	nop			;b116
	nop			;b117
	nop			;b118
	nop			;b119
	ld (bc),a		;b11a
	ld (bc),a		;b11b
	call m,00202h		;b11c
	call m,00202h		;b11f
	call m,00404h		;b122
	ret m			;b125
	inc c			;b126
	inc c			;b127
	ret p			;b128
	jr lb143h		;b129
	ret po			;b12b
	ret po			;b12c
	ret po			;b12d
	nop			;b12e
	nop			;b12f
	nop			;b130
	nop			;b131
	inc a			;b132
	rst 38h			;b133
	nop			;b134
	inc a			;b135
	rst 38h			;b136
	nop			;b137
	in a,(024h)		;b138
	nop			;b13a
	rst 38h			;b13b
	rst 20h			;b13c
	jr lb157h		;b13d
	rst 38h			;b13f
	nop			;b140
	jr $+1			;b141
lb143h:
	nop			;b143
	nop			;b144
	rst 38h			;b145
	nop			;b146
	add a,c			;b147
	ld a,(hl)		;b148
	nop			;b149
	add a,c			;b14a
	ld a,(hl)		;b14b
	nop			;b14c
	jp 0003ch		;b14d
	rst 20h			;b150
	jr lb153h		;b151
lb153h:
	rst 38h			;b153
	nop			;b154
	nop			;b155
	rst 38h			;b156
lb157h:
	nop			;b157
	nop			;b158
	rst 38h			;b159
	nop			;b15a
	nop			;b15b
	ld a,(hl)		;b15c
	add a,c			;b15d
	add a,c			;b15e
	nop			;b15f
	rst 38h			;b160
	rst 38h			;b161
	ld e,d			;b162
	rst 20h			;b163
	cp l			;b164
	jr $+1			;b165
	and l			;b167
	jr $+1			;b168
	and l			;b16a
	ld e,d			;b16b
	cp l			;b16c
	and l			;b16d
	nop			;b16e
	rst 38h			;b16f
	rst 20h			;b170
	nop			;b171
	rst 38h			;b172
	rst 38h			;b173
	inc a			;b174
	jp 000c3h		;b175
	rst 38h			;b178
	jp 0ff00h		;b179
	rst 38h			;b17c
	rst 38h			;b17d
	nop			;b17e
	rst 38h			;b17f
	rst 38h			;b180
	ld a,(hl)		;b181
	add a,c			;b182
	add a,c			;b183
	rst 38h			;b184
	nop			;b185
	add a,c			;b186
	rst 38h			;b187
	nop			;b188
	add a,c			;b189
	rst 38h			;b18a
	nop			;b18b
	add a,c			;b18c
	rst 38h			;b18d
	nop			;b18e
	add a,c			;b18f
	rst 38h			;b190
	nop			;b191
	ld a,(hl)		;b192
	add a,c			;b193
	nop			;b194
	nop			;b195
	rst 38h			;b196
	rst 38h			;b197
	nop			;b198
	rst 38h			;b199
	rst 38h			;b19a
	nop			;b19b
	rst 38h			;b19c
	rst 38h			;b19d
	nop			;b19e
	rst 38h			;b19f
	nop			;b1a0
	rst 38h			;b1a1
	rst 38h			;b1a2
	nop			;b1a3
	rst 38h			;b1a4
	rst 38h			;b1a5
	nop			;b1a6
	nop			;b1a7
	rst 38h			;b1a8
	rst 38h			;b1a9
	rst 38h			;b1aa
	nop			;b1ab
	rst 38h			;b1ac
	rst 38h			;b1ad
	rst 38h			;b1ae
	nop			;b1af
	rst 38h			;b1b0
	rst 38h			;b1b1
	nop			;b1b2
	rst 38h			;b1b3
	rst 38h			;b1b4
	nop			;b1b5
	rst 38h			;b1b6
	rst 38h			;b1b7
	nop			;b1b8
	rst 38h			;b1b9
	rst 38h			;b1ba
	nop			;b1bb
	rst 38h			;b1bc
	rst 38h			;b1bd
	nop			;b1be
	rst 38h			;b1bf
	rst 38h			;b1c0
	nop			;b1c1
	rst 38h			;b1c2
	rst 38h			;b1c3
	nop			;b1c4
	rst 38h			;b1c5
	rst 38h			;b1c6
	nop			;b1c7
	rst 38h			;b1c8
	rst 38h			;b1c9
	nop			;b1ca
	rst 38h			;b1cb
	rst 38h			;b1cc
	nop			;b1cd
	rst 38h			;b1ce
	rst 38h			;b1cf
	nop			;b1d0
	rst 38h			;b1d1
	rst 38h			;b1d2
	nop			;b1d3
	rst 38h			;b1d4
	rst 38h			;b1d5
	nop			;b1d6
	rst 38h			;b1d7
	rst 38h			;b1d8
	nop			;b1d9
	rst 38h			;b1da
	rst 38h			;b1db
	nop			;b1dc
	rst 38h			;b1dd
	rst 38h			;b1de
	nop			;b1df
	rst 38h			;b1e0
	rst 38h			;b1e1
	nop			;b1e2
	rst 38h			;b1e3
	rst 38h			;b1e4
	nop			;b1e5
	rst 38h			;b1e6
	rst 38h			;b1e7
	nop			;b1e8
	rst 38h			;b1e9
	rst 38h			;b1ea
	nop			;b1eb
	rst 38h			;b1ec
	nop			;b1ed
	nop			;b1ee
	nop			;b1ef
	rst 38h			;b1f0
	rst 38h			;b1f1
	rst 38h			;b1f2
	nop			;b1f3
	nop			;b1f4
	nop			;b1f5
	rst 38h			;b1f6
	nop			;b1f7
	rst 38h			;b1f8
	nop			;b1f9
	rst 38h			;b1fa
	rst 38h			;b1fb
	rst 38h			;b1fc
	nop			;b1fd
	rst 38h			;b1fe
	rst 38h			;b1ff
	nop			;b200
	rst 38h			;b201
	rst 38h			;b202
	nop			;b203
	rst 38h			;b204
	rst 38h			;b205
	nop			;b206
	nop			;b207
	rst 38h			;b208
	nop			;b209
	nop			;b20a
	rst 38h			;b20b
	rst 38h			;b20c
	rst 38h			;b20d
	rst 38h			;b20e
	nop			;b20f
	nop			;b210
	rst 38h			;b211
	nop			;b212
	nop			;b213
	rst 38h			;b214
	nop			;b215
	rst 38h			;b216
	nop			;b217
	nop			;b218
	nop			;b219
	rst 38h			;b21a
	rst 38h			;b21b
	nop			;b21c
	rst 38h			;b21d
	rst 38h			;b21e
	nop			;b21f
	rst 38h			;b220
	rst 38h			;b221
	nop			;b222
	rst 38h			;b223
	nop			;b224
	rst 38h			;b225
	nop			;b226
	nop			;b227
	nop			;b228
	rst 38h			;b229
	rst 38h			;b22a
	nop			;b22b
	rst 38h			;b22c
	nop			;b22d
	nop			;b22e
	rst 38h			;b22f
	rst 38h			;b230
	rst 38h			;b231
	nop			;b232
	rst 38h			;b233
	rst 38h			;b234
	rst 38h			;b235
	nop			;b236
	rst 38h			;b237
	rst 38h			;b238
	nop			;b239
	rst 38h			;b23a
	rst 38h			;b23b
	nop			;b23c
	ret m			;b23d
	ret m			;b23e
	nop			;b23f
	ei			;b240
	ei			;b241
	nop			;b242
	ret m			;b243
	ret m			;b244
	nop			;b245
	ei			;b246
	ei			;b247
	nop			;b248
	ret m			;b249
	ret m			;b24a
	nop			;b24b
	rst 38h			;b24c
	ld a,a			;b24d
	add a,b			;b24e
	rst 38h			;b24f
	ld a,a			;b250
	add a,b			;b251
	rst 38h			;b252
	rst 38h			;b253
	nop			;b254
	ld b,d			;b255
	ld b,d			;b256
	nop			;b257
	jp c,000dah		;b258
	halt			;b25b
	halt			;b25c
	nop			;b25d
	ld l,a			;b25e
	ld l,a			;b25f
	nop			;b260
	ld l,(hl)		;b261
	ld l,(hl)		;b262
	nop			;b263
	rst 38h			;b264
	rst 38h			;b265
	nop			;b266
	rst 38h			;b267
	inc a			;b268
	add a,c			;b269
	cp l			;b26a
	rst 38h			;b26b
	ld b,d			;b26c
	cp l			;b26d
	rst 38h			;b26e
	ld b,d			;b26f
	inc a			;b270
	rst 38h			;b271
	jp 0ffffh		;b272
	nop			;b275
	nop			;b276
	rst 38h			;b277
	nop			;b278
	rst 38h			;b279
	nop			;b27a
	nop			;b27b
	nop			;b27c
	rst 38h			;b27d
	rst 38h			;b27e
	rst 38h			;b27f
	rst 38h			;b280
	nop			;b281
	rst 38h			;b282
	rst 38h			;b283
	nop			;b284
	rra			;b285
lb286h:
	rra			;b286
	nop			;b287
	rst 38h			;b288
	rst 38h			;b289
	nop			;b28a
	rra			;b28b
	rra			;b28c
	nop			;b28d
	rst 18h			;b28e
	rst 18h			;b28f
	nop			;b290
	rra			;b291
	rra			;b292
	nop			;b293
	rst 38h			;b294
	cp 001h			;b295
	rst 38h			;b297
	cp 001h			;b298
	ret po			;b29a
	ld a,a			;b29b
	add a,b			;b29c
	add a,b			;b29d
	rst 38h			;b29e
	nop			;b29f
	adc a,a			;b2a0
	ret p			;b2a1
	nop			;b2a2
	and b			;b2a3
	push de			;b2a4
	dec d			;b2a5
	and b			;b2a6
	adc a,00fh		;b2a7
	and b			;b2a9
	rst 18h			;b2aa
	rra			;b2ab
	and b			;b2ac
	rst 8			;b2ad
	rrca			;b2ae
	and e			;b2af
	call c,0001ch		;b2b0
	rst 38h			;b2b3
	nop			;b2b4
	nop			;b2b5
	rst 38h			;b2b6
	nop			;b2b7
	rst 38h			;b2b8
	nop			;b2b9
	nop			;b2ba
	nop			;b2bb
	ld d,l			;b2bc
	ld d,l			;b2bd
	nop			;b2be
	rst 38h			;b2bf
	rst 38h			;b2c0
	nop			;b2c1
	rst 38h			;b2c2
	rst 38h			;b2c3
	nop			;b2c4
	rst 38h			;b2c5
	rst 38h			;b2c6
	rst 38h			;b2c7
	nop			;b2c8
	nop			;b2c9
	rlca			;b2ca
	cp 001h			;b2cb
	ld bc,000ffh		;b2cd
	ld sp,hl		;b2d0
	rlca			;b2d1
	nop			;b2d2
	dec b			;b2d3
	ld d,e			;b2d4
	ld d,b			;b2d5
	dec b			;b2d6
	ld a,e			;b2d7
	ret m			;b2d8
	dec b			;b2d9
	di			;b2da
lb2dbh:
	ret p			;b2db
	dec b			;b2dc
	ei			;b2dd
lb2deh:
	ret m			;b2de
	push bc			;b2df
	inc sp			;b2e0
lb2e1h:
	jr nc,lb286h		;b2e1
	call z,sub_a30ch	;b2e3
	call c,sub_a31ch	;b2e6
	call z,sub_a30ch	;b2e9
	call c,sub_a31ch	;b2ec
	call z,sub_a00ch	;b2ef
	rst 18h			;b2f2
	rra			;b2f3
	ld b,b			;b2f4
	xor 00fh		;b2f5
	ld b,b			;b2f7
	push af			;b2f8
	dec d			;b2f9
	rst 38h			;b2fa
	nop			;b2fb
	nop			;b2fc
	nop			;b2fd
	rst 38h			;b2fe
	nop			;b2ff
	nop			;b300
	rst 38h			;b301
	nop			;b302
	nop			;b303
	rst 38h			;b304
	nop			;b305
	rst 38h			;b306
	nop			;b307
	nop			;b308
	nop			;b309
	rst 38h			;b30a
	rst 38h			;b30b
	nop			;b30c
	rst 38h			;b30d
	rst 38h			;b30e
	nop			;b30f
	ld d,l			;b310
	ld d,l			;b311
	push bc			;b312
	dec sp			;b313
	jr c,lb2dbh		;b314
	inc sp			;b316
	jr nc,lb2deh		;b317
	dec sp			;b319
	jr c,lb2e1h		;b31a
	inc sp			;b31c
	jr nc,$-57		;b31d
	dec sp			;b31f
	jr c,lb327h		;b320
	di			;b322
	ret p			;b323
	ld (bc),a		;b324
	ld a,a			;b325
	ret m			;b326
lb327h:
	ld (bc),a		;b327
	ld d,a			;b328
	ld d,b			;b329
	nop			;b32a
	rst 38h			;b32b
	nop			;b32c
	nop			;b32d
	rst 38h			;b32e
	nop			;b32f
	rst 38h			;b330
	nop			;b331
	nop			;b332
	nop			;b333
	rst 38h			;b334
	rst 38h			;b335
	rst 38h			;b336
	rst 38h			;b337
	nop			;b338
	nop			;b339
	rst 38h			;b33a
	nop			;b33b
	rst 38h			;b33c
	nop			;b33d
	nop			;b33e
	rst 38h			;b33f
	nop			;b340
	nop			;b341
	rst 38h			;b342
	nop			;b343
	nop			;b344
	rst 38h			;b345
	nop			;b346
	nop			;b347
	nop			;b348
	rst 38h			;b349
	rst 38h			;b34a
	rst 38h			;b34b
	rst 38h			;b34c
	nop			;b34d
	nop			;b34e
	rst 38h			;b34f
	nop			;b350
	rst 38h			;b351
	nop			;b352
	nop			;b353
	rst 38h			;b354
	nop			;b355
	nop			;b356
	rst 38h			;b357
	nop			;b358
	nop			;b359
	rst 38h			;b35a
	nop			;b35b
	nop			;b35c
	rst 38h			;b35d
	nop			;b35e
	nop			;b35f
	nop			;b360
	rst 38h			;b361
	nop			;b362
	add a,c			;b363
	rst 38h			;b364
	nop			;b365
	rst 38h			;b366
	rst 38h			;b367
	nop			;b368
	rst 38h			;b369
	rst 38h			;b36a
	nop			;b36b
	rst 38h			;b36c
	rst 38h			;b36d
	nop			;b36e
	ld a,(hl)		;b36f
	rst 38h			;b370
	add a,c			;b371
	ld a,(hl)		;b372
	rst 38h			;b373
	add a,c			;b374
	nop			;b375
	rst 38h			;b376
	add a,c			;b377
	nop			;b378
	rst 38h			;b379
	rst 38h			;b37a
	ld a,(hl)		;b37b
	rst 38h			;b37c
	add a,c			;b37d
	nop			;b37e
	rst 38h			;b37f
	add a,c			;b380
	nop			;b381
	rst 38h			;b382
	add a,c			;b383
	nop			;b384
	rst 38h			;b385
	add a,c			;b386
	ld a,(hl)		;b387
	add a,c			;b388
	add a,c			;b389
	nop			;b38a
	rst 38h			;b38b
	rst 38h			;b38c
	nop			;b38d
	rst 38h			;b38e
	jp 0ff3ch		;b38f
	jp 0e73ch		;b392
	in a,(03ch)		;b395
	rst 38h			;b397
	jp 0ff00h		;b398
	jp 000ffh		;b39b
	nop			;b39e
	rst 38h			;b39f
	nop			;b3a0
	nop			;b3a1
	inc l			;b3a2
	ccf			;b3a3
	inc h			;b3a4
	cpl			;b3a5
	ccf			;b3a6
	daa			;b3a7
	daa			;b3a8
	ccf			;b3a9
	daa			;b3aa
	ccf			;b3ab
	ccf			;b3ac
	inc a			;b3ad
	inc (hl)		;b3ae
	scf			;b3af
	inc l			;b3b0
	inc l			;b3b1
	ccf			;b3b2
	inc h			;b3b3
	ld e,b			;b3b4
	ld a,a			;b3b5
	ld c,b			;b3b6
	ld c,a			;b3b7
	ld a,a			;b3b8
	ld c,a			;b3b9
	ld a,e			;b3ba
	rst 38h			;b3bb
	dec sp			;b3bc
	rst 38h			;b3bd
	rst 38h			;b3be
	cp 0b2h			;b3bf
	rst 30h			;b3c1
	xor 02ah		;b3c2
	dec sp			;b3c4
	and 0aah		;b3c5
	cp e			;b3c7
	ld h,(hl)		;b3c8
	dec hl			;b3c9
	ei			;b3ca
	daa			;b3cb
	cp 0ffh			;b3cc
	cp 0e0h			;b3ce
	rst 20h			;b3d0
	rst 18h			;b3d1
	rst 38h			;b3d2
	rst 38h			;b3d3
	rst 38h			;b3d4
	nop			;b3d5
	nop			;b3d6
	rst 38h			;b3d7
	cp a			;b3d8
	cp a			;b3d9
	ld b,b			;b3da
	cp a			;b3db
	cp a			;b3dc
	ld b,b			;b3dd
	nop			;b3de
	rst 38h			;b3df
	nop			;b3e0
	rst 38h			;b3e1
	rst 38h			;b3e2
	rst 38h			;b3e3
	rst 38h			;b3e4
	rst 38h			;b3e5
	rst 38h			;b3e6
	rrca			;b3e7
	rst 18h			;b3e8
	rst 28h			;b3e9
	ld a,d			;b3ea
	ld a,(hl)		;b3eb
	ld a,c			;b3ec
	ld l,l			;b3ed
	ld l,a			;b3ee
	ld e,b			;b3ef
	ld e,c			;b3f0
	ld a,a			;b3f1
	ld c,b			;b3f2
	ld e,c			;b3f3
	ld a,a			;b3f4
	ld c,b			;b3f5
	ld e,c			;b3f6
	ld a,a			;b3f7
	ld c,b			;b3f8
	ld e,c			;b3f9
	ld a,a			;b3fa
	ld c,b			;b3fb
	ld e,c			;b3fc
	ld a,a			;b3fd
	ld c,b			;b3fe
	ld e,c			;b3ff
	ld a,a			;b400
	ld c,b			;b401
	ld e,b			;b402
	ld sp,hl		;b403
	rst 0			;b404
	ld e,b			;b405
	ld a,c			;b406
	rst 0			;b407
	ld e,b			;b408
	ld a,c			;b409
	rst 0			;b40a
	ld e,b			;b40b
	ld a,c			;b40c
	rst 0			;b40d
	ld e,b			;b40e
	ld a,c			;b40f
	rst 0			;b410
	ld e,b			;b411
	ld a,c			;b412
	rst 0			;b413
	ld e,b			;b414
	ld a,c			;b415
	rst 0			;b416
	ld e,b			;b417
	ld a,c			;b418
	rst 0			;b419
	cpl			;b41a
	ccf			;b41b
	ret z			;b41c
	jr z,lb45eh		;b41d
	ret z			;b41f
	cpl			;b420
	ccf			;b421
	rst 8			;b422
	cpl			;b423
	ccf			;b424
	ret z			;b425
	cpl			;b426
	ccf			;b427
	rst 8			;b428
	djnz lb43ah		;b429
	rst 38h			;b42b
	nop			;b42c
	nop			;b42d
	rst 38h			;b42e
	nop			;b42f
	nop			;b430
	rst 38h			;b431
	nop			;b432
	nop			;b433
	nop			;b434
	nop			;b435
	nop			;b436
	nop			;b437
	nop			;b438
	nop			;b439
lb43ah:
	nop			;b43a
	nop			;b43b
	nop			;b43c
	nop			;b43d
	nop			;b43e
	nop			;b43f
	nop			;b440
	inc b			;b441
	nop			;b442
	inc b			;b443
	ld bc,00100h		;b444
	ex af,af'		;b447
	nop			;b448
	dec bc			;b449
	ld e,c			;b44a
	ld a,a			;b44b
	ld c,b			;b44c
	ld e,c			;b44d
	ld a,a			;b44e
	ld c,b			;b44f
	ld e,c			;b450
	ld a,a			;b451
	ld c,b			;b452
	ld e,c			;b453
	ld a,a			;b454
	ld c,b			;b455
	ld e,c			;b456
	ld a,a			;b457
	ld c,b			;b458
	ld e,c			;b459
	ld a,a			;b45a
	ld c,b			;b45b
	ld e,c			;b45c
	ld a,a			;b45d
lb45eh:
	ld c,b			;b45e
	ld e,c			;b45f
	rst 38h			;b460
	ld c,b			;b461
	ld e,b			;b462
	ld a,c			;b463
	rst 0			;b464
	ld e,b			;b465
	ld a,c			;b466
	rst 0			;b467
	ld e,b			;b468
	ld a,c			;b469
	rst 0			;b46a
	ld e,b			;b46b
	ld a,c			;b46c
lb46dh:
	rst 0			;b46d
	ld e,b			;b46e
	ld a,c			;b46f
	rst 0			;b470
	ld e,b			;b471
	ld a,c			;b472
	rst 0			;b473
	ld e,b			;b474
	ld a,b			;b475
	rst 0			;b476
	ld e,b			;b477
	ld a,b			;b478
	rst 0			;b479
	exx			;b47a
	rst 38h			;b47b
	ret z			;b47c
	ld e,c			;b47d
	ld a,a			;b47e
	ld c,b			;b47f
	ld e,c			;b480
	ld a,a			;b481
	ld c,b			;b482
	ld e,c			;b483
	ld a,a			;b484
	ld c,b			;b485
	ld e,b			;b486
	ld a,a			;b487
	ld c,b			;b488
	ld e,b			;b489
	ld a,a			;b48a
	ld c,b			;b48b
	ld e,b			;b48c
	ld a,a			;b48d
	ld c,b			;b48e
	ld e,b			;b48f
	ld a,a			;b490
	ld c,b			;b491
	ld c,h			;b492
	ld a,h			;b493
	jp 07c4ch		;b494
	jp 03c2ch		;b497
	ex (sp),hl		;b49a
	xor h			;b49b
	cp h			;b49c
	ld h,e			;b49d
	xor h			;b49e
	cp h			;b49f
	ld h,e			;b4a0
	xor l			;b4a1
	cp l			;b4a2
	ld h,d			;b4a3
	xor (hl)		;b4a4
	cp a			;b4a5
	ld h,b			;b4a6
	xor c			;b4a7
	cp a			;b4a8
	ld h,c			;b4a9
	add hl,hl		;b4aa
	cp c			;b4ab
	rst 38h			;b4ac
	add hl,hl		;b4ad
lb4aeh:
	xor c			;b4ae
	rst 38h			;b4af
	add hl,sp		;b4b0
	cp c			;b4b1
	rst 38h			;b4b2
	jr c,lb46dh		;b4b3
	rst 38h			;b4b5
	ld a,a			;b4b6
	rst 38h			;b4b7
	add a,b			;b4b8
	add a,b			;b4b9
	rst 38h			;b4ba
	nop			;b4bb
	ld a,a			;b4bc
	rst 38h			;b4bd
	ld a,a			;b4be
	add a,b			;b4bf
	call p,000ffh		;b4c0
	nop			;b4c3
	nop			;b4c4
	nop			;b4c5
	nop			;b4c6
	nop			;b4c7
	nop			;b4c8
	nop			;b4c9
	nop			;b4ca
	ld b,000h		;b4cb
	ld b,007h		;b4cd
	ld bc,00007h		;b4cf
	nop			;b4d2
	nop			;b4d3
	nop			;b4d4
	nop			;b4d5
	nop			;b4d6
	nop			;b4d7
	nop			;b4d8
	nop			;b4d9
	ld bc,00101h		;b4da
	ld bc,00101h		;b4dd
	ld (bc),a		;b4e0
	inc bc			;b4e1
	inc bc			;b4e2
	ld (00ff2h),a		;b4e3
	rst 38h			;b4e6
	rst 38h			;b4e7
	cp 007h			;b4e8
	rlca			;b4ea
	rlca			;b4eb
	jr nz,lb4eeh		;b4ec
lb4eeh:
	jr nz,lb4f0h		;b4ee
lb4f0h:
	nop			;b4f0
	nop			;b4f1
	ret c			;b4f2
	rst 38h			;b4f3
	ret z			;b4f4
	ld e,b			;b4f5
	rst 38h			;b4f6
	ret z			;b4f7
	ld l,h			;b4f8
	rst 38h			;b4f9
	call po,07f6ch		;b4fa
	call po,0fffch		;b4fd
	ld a,h			;b500
	defb 0fdh,0ffh,0fdh ;illegal sequence	;b501
	rst 20h			;b504
	rst 28h			;b505
	rst 38h			;b506
	and 0f6h		;b507
	rst 28h			;b509
	ld (hl),0bfh		;b50a
	ld (hl),a		;b50c
	jr lb4aeh		;b50d
	ld a,a			;b50f
	inc (hl)		;b510
	push af			;b511
	dec de			;b512
	ld a,h			;b513
	call m,0d473h		;b514
	defb 0ddh,0f3h,096h ;illegal sequence	;b517
	sbc a,(hl)		;b51a
	pop af			;b51b
	ld d,(hl)		;b51c
	ld e,(hl)		;b51d
	or c			;b51e
	jp pe,019eeh		;b51f
	rst 20h			;b522
	rst 30h			;b523
	xor (hl)		;b524
	and (hl)		;b525
	or a			;b526
	xor 0e5h		;b527
	push af			;b529
	xor a			;b52a
	push hl			;b52b
	push af			;b52c
	xor a			;b52d
	push hl			;b52e
	push af			;b52f
	xor a			;b530
	push hl			;b531
	push af			;b532
	xor a			;b533
	and 0f6h		;b534
	defb 0edh ;next byte illegal after ed	;b536
	and 0f6h		;b537
	defb 0edh ;next byte illegal after ed	;b539
	ld hl,(019eeh)		;b53a
	dec hl			;b53d
	rst 28h			;b53e
	jr lb56ch		;b53f
	rst 28h			;b541
	jr lb56fh		;b542
	rst 28h			;b544
	jr lb57ch		;b545
	rst 30h			;b547
	inc c			;b548
	dec d			;b549
	rst 30h			;b54a
	inc c			;b54b
	sub l			;b54c
	rst 30h			;b54d
	adc a,h			;b54e
	sbc a,d			;b54f
	ei			;b550
	add a,(hl)		;b551
	nop			;b552
	nop			;b553
	nop			;b554
	ld (bc),a		;b555
	nop			;b556
	ld (bc),a		;b557
	nop			;b558
	nop			;b559
	nop			;b55a
	nop			;b55b
	nop			;b55c
	nop			;b55d
	nop			;b55e
	nop			;b55f
	nop			;b560
	nop			;b561
	nop			;b562
	nop			;b563
	nop			;b564
	nop			;b565
	nop			;b566
	nop			;b567
	nop			;b568
	nop			;b569
	add hl,de		;b56a
	ld a,c			;b56b
lb56ch:
	ld b,07fh		;b56c
	ld a,a			;b56e
lb56fh:
	ld a,a			;b56f
	nop			;b570
	nop			;b571
lb572h:
	nop			;b572
	ex af,af'		;b573
	nop			;b574
	ex af,af'		;b575
	nop			;b576
	nop			;b577
	nop			;b578
	ld bc,00101h		;b579
lb57ch:
	ld bc,00101h		;b57c
	ld bc,00101h		;b57f
	and 0f6h		;b582
	xor l			;b584
	rst 20h			;b585
	rst 30h			;b586
	xor h			;b587
	rst 20h			;b588
	rst 30h			;b589
	xor (hl)		;b58a
	rst 38h			;b58b
	rst 38h			;b58c
	cp (hl)			;b58d
	jp p,0fef3h		;b58e
	jp p,0f6fbh		;b591
	defb 0fdh,0fdh,07fh ;illegal sequence	;b594
	cp l			;b597
	cp l			;b598
	ld a,a			;b599
	adc a,d			;b59a
	ei			;b59b
	add a,(hl)		;b59c
	ld c,l			;b59d
	ld a,l			;b59e
	jp 07e46h		;b59f
	pop bc			;b5a2
	ld b,e			;b5a3
	ld a,a			;b5a4
	ret nz			;b5a5
	and c			;b5a6
	cp a			;b5a7
	ld h,b			;b5a8
	and c			;b5a9
	cp a			;b5aa
	ld h,b			;b5ab
	ld d,c			;b5ac
	rst 18h			;b5ad
	jr nc,$+107		;b5ae
	rst 28h			;b5b0
	jr lb572h		;b5b1
	cp a			;b5b3
	ld b,b			;b5b4
	sbc a,a			;b5b5
	sbc a,a			;b5b6
	ld h,b			;b5b7
	ret po			;b5b8
	rst 38h			;b5b9
	ret nz			;b5ba
	ccf			;b5bb
	rst 38h			;b5bc
	rst 38h			;b5bd
	nop			;b5be
	ld (hl),b		;b5bf
	rst 38h			;b5c0
	rrca			;b5c1
	ld c,a			;b5c2
	ret p			;b5c3
	jr lb5e5h		;b5c4
	ret po			;b5c6
	jr nc,lb608h		;b5c7
	ret nz			;b5c9
	nop			;b5ca
	nop			;b5cb
	nop			;b5cc
	nop			;b5cd
	nop			;b5ce
	nop			;b5cf
	nop			;b5d0
	nop			;b5d1
	nop			;b5d2
	nop			;b5d3
	nop			;b5d4
	nop			;b5d5
	ld bc,00101h		;b5d6
	ld (bc),a		;b5d9
	ld (bc),a		;b5da
	inc bc			;b5db
	dec b			;b5dc
	dec b			;b5dd
	ld b,00ah		;b5de
	ld a,(bc)		;b5e0
	dec c			;b5e1
	ld bc,00101h		;b5e2
lb5e5h:
	rlca			;b5e5
	rlca			;b5e6
	rlca			;b5e7
	inc e			;b5e8
	ld e,01dh		;b5e9
	ld h,h			;b5eb
	ld a,(hl)		;b5ec
	ld h,l			;b5ed
	add a,h			;b5ee
	sbc a,(hl)		;b5ef
	push hl			;b5f0
	ld h,h			;b5f1
	ld a,(hl)		;b5f2
	add a,l			;b5f3
	call p,005feh		;b5f4
	ld a,03eh		;b5f7
	rst 8			;b5f9
	cp (hl)			;b5fa
	cp (hl)			;b5fb
	ld a,a			;b5fc
	cp a			;b5fd
	cp a			;b5fe
	rst 30h			;b5ff
	cp a			;b600
	cp a			;b601
	di			;b602
	rst 38h			;b603
	rst 38h			;b604
	call p,0fcfch		;b605
lb608h:
	cp a			;b608
	call m,sub_bffch	;b609
	call m,0fffch		;b60c
	rst 38h			;b60f
	rst 38h			;b610
	rst 38h			;b611
	or a			;b612
	rst 30h			;b613
	adc a,(hl)		;b614
	sbc a,c			;b615
	ld sp,hl		;b616
	add a,a			;b617
	adc a,0feh		;b618
	pop bc			;b61a
	ex (sp),hl		;b61b
	rst 38h			;b61c
	jr nz,lb630h		;b61d
	rra			;b61f
	ret p			;b620
	add hl,bc		;b621
	rrca			;b622
	ret m			;b623
	dec b			;b624
	rlca			;b625
	call m,0ffffh		;b626
	cp 0a0h			;b629
	cp a			;b62b
	ld b,b			;b62c
	ret po			;b62d
	rst 38h			;b62e
	add a,b			;b62f
lb630h:
	ld a,a			;b630
	rst 38h			;b631
	rst 38h			;b632
	nop			;b633
	ld h,b			;b634
	rst 38h			;b635
	rra			;b636
	ld e,a			;b637
	ret po			;b638
	jr nc,lb67ah		;b639
	ret nz			;b63b
	jr nz,lb67dh		;b63c
	ret nz			;b63e
	jr nz,lb680h		;b63f
	ret nz			;b641
	inc d			;b642
	inc d			;b643
	dec de			;b644
	inc d			;b645
	inc d			;b646
	dec de			;b647
	jr z,$+43		;b648
	scf			;b64a
	jr z,$+45		;b64b
	scf			;b64d
	ld d,b			;b64e
	ld d,e			;b64f
	ld l,a			;b650
	ld d,b			;b651
	ld d,e			;b652
	ld l,a			;b653
	ld d,b			;b654
	ld d,c			;b655
	ld l,a			;b656
	or b			;b657
	or b			;b658
	rst 8			;b659
	ld a,(de)		;b65a
	ld a,(de)		;b65b
	rst 28h			;b65c
	rra			;b65d
	dec de			;b65e
	jp pe,01f1fh		;b65f
	jp pe,lbf3fh		;b662
	rst 18h			;b665
	inc sp			;b666
	or a			;b667
	defb 0ddh,03fh,0b1h ;illegal sequence	;b668
	pop de			;b66b
	inc sp			;b66c
	scf			;b66d
	defb 0ddh,03fh,031h ;illegal sequence	;b66e
	pop de			;b671
	defb 0fdh,0fdh,0ffh ;illegal sequence	;b672
	rst 38h			;b675
	rst 38h			;b676
	defb 0fdh,0ffh,0ffh ;illegal sequence	;b677
lb67ah:
	rst 38h			;b67a
	rst 38h			;b67b
	rst 38h			;b67c
lb67dh:
	jp m,0fffeh		;b67d
lb680h:
	jp m,0efeeh		;b680
	jp m,0dfdeh		;b683
	jp pe,0dfdeh		;b686
	jp pe,06707h		;b689
	ld sp,hl		;b68c
	sbc a,c			;b68d
	rst 18h			;b68e
	ld h,c			;b68f
	rst 38h			;b690
	rst 38h			;b691
	rst 38h			;b692
	nop			;b693
	ld a,h			;b694
	rst 38h			;b695
	ld (bc),a		;b696
	ld b,e			;b697
	call m,04302h		;b698
	call m,04302h		;b69b
	call m,04302h		;b69e
	call m,09f90h		;b6a1
	ld h,b			;b6a4
	rst 8			;b6a5
	rst 8			;b6a6
	or a			;b6a7
	rst 20h			;b6a8
	push hl			;b6a9
	defb 0fdh,0fdh,0fdh ;illegal sequence	;b6aa
	rst 0			;b6ad
	rst 20h			;b6ae
	defb 0fdh,0c5h,0e5h ;illegal sequence	;b6af
	defb 0fdh,0c7h,0e7h ;illegal sequence	;b6b2
	rst 38h			;b6b5
	rst 20h			;b6b6
	ret pe			;b6b7
	cp 0efh			;b6b8
	or b			;b6ba
	or b			;b6bb
	rst 8			;b6bc
	or b			;b6bd
	or b			;b6be
	rst 8			;b6bf
	or b			;b6c0
	or b			;b6c1
	rst 8			;b6c2
	cp b			;b6c3
	cp b			;b6c4
	rst 0			;b6c5
	cp b			;b6c6
	cp b			;b6c7
	rst 0			;b6c8
	cp h			;b6c9
	cp h			;b6ca
	jp lbebeh		;b6cb
	pop bc			;b6ce
	cp a			;b6cf
	cp a			;b6d0
	ret nz			;b6d1
	inc sp			;b6d2
	scf			;b6d3
	defb 0ddh,033h,037h ;illegal sequence	;b6d4
	defb 0ddh,033h,037h ;illegal sequence	;b6d7
	defb 0ddh,033h,037h ;illegal sequence	;b6da
	defb 0ddh,033h,037h ;illegal sequence	;b6dd
	add ix,sp		;b6e0
	dec sp			;b6e2
	push de			;b6e3
	ld a,a			;b6e4
	ld a,a			;b6e5
	adc a,a			;b6e6
	ei			;b6e7
	ei			;b6e8
	dec c			;b6e9
	sbc a,0dfh		;b6ea
	jp pe,0dfdeh		;b6ec
	jp pe,0cfffh		;b6ef
	set 7,a			;b6f2
	rst 8			;b6f4
	set 3,a			;b6f5
	rst 18h			;b6f7
	ex de,hl		;b6f8
	cp 0ffh			;b6f9
	cp 0ffh			;b6fb
	rst 38h			;b6fd
	rst 38h			;b6fe
	ld sp,hl		;b6ff
	rst 38h			;b700
	ld sp,hl		;b701
	ld (bc),a		;b702
	ld b,e			;b703
	call m,04302h		;b704
	call m,sub_bfbdh	;b707
	ld b,c			;b70a
	rst 38h			;b70b
	rst 38h			;b70c
	rst 38h			;b70d
	cp a			;b70e
	cp a			;b70f
	ld b,e			;b710
	ld bc,0fd43h		;b711
	rst 38h			;b714
	rst 38h			;b715
	rst 38h			;b716
	call m,0fffch		;b717
	ld sp,hl		;b71a
	defb 0fdh,0feh,0ffh ;illegal sequence	;b71b
	ret m			;b71e
	ret m			;b71f
	ld sp,hl		;b720
	defb 0fdh,0feh,0ffh ;illegal sequence	;b721
	ret m			;b724
	ret m			;b725
	jp (hl)			;b726
	defb 0fdh,0eeh,0c9h ;illegal sequence	;b727
	defb 0ddh,0eeh,089h ;illegal sequence	;b72a
	cp l			;b72d
	adc a,049h		;b72e
	ld a,l			;b730
	adc a,(hl)		;b731
	ld e,a			;b732
	ld e,a			;b733
	ld h,b			;b734
	ld c,a			;b735
	ld e,a			;b736
	ld h,b			;b737
	ld c,a			;b738
	ld e,a			;b739
	ld h,b			;b73a
	inc hl			;b73b
	cpl			;b73c
	jr nc,lb75fh		;b73d
	cpl			;b73f
	jr nc,lb752h		;b740
	rla			;b742
	jr $+18			;b743
	rla			;b745
	jr lb750h		;b746
	dec bc			;b748
	inc c			;b749
	rst 38h			;b74a
	rst 38h			;b74b
	rra			;b74c
	ret p			;b74d
	rst 38h			;b74e
	rra			;b74f
lb750h:
	di			;b750
	di			;b751
lb752h:
	inc e			;b752
	adc a,h			;b753
	call m,0070fh		;b754
	rst 38h			;b757
	rlca			;b758
	rlca			;b759
	rst 38h			;b75a
	rlca			;b75b
	inc b			;b75c
	rst 38h			;b75d
	inc b			;b75e
lb75fh:
	inc b			;b75f
	rst 38h			;b760
	inc b			;b761
	rst 38h			;b762
	rst 38h			;b763
	rst 38h			;b764
	rrca			;b765
	rst 38h			;b766
	rst 38h			;b767
	call z,03ccfh		;b768
	ccf			;b76b
	ccf			;b76c
	rst 38h			;b76d
	ret po			;b76e
	ret po			;b76f
	rst 38h			;b770
	add a,c			;b771
	cp a			;b772
	pop bc			;b773
	sbc a,(hl)		;b774
	cp (hl)			;b775
	rst 18h			;b776
	sbc a,l			;b777
	cp l			;b778
	sbc a,03bh		;b779
	ei			;b77b
	inc a			;b77c
	ld (hl),a		;b77d
	rst 30h			;b77e
	ld a,b			;b77f
	ld (hl),a		;b780
	rst 30h			;b781
	ld a,b			;b782
	xor 0efh		;b783
	ret p			;b785
	defb 0edh ;next byte illegal after ed	;b786
	rst 28h			;b787
	pop af			;b788
	exx			;b789
	rst 18h			;b78a
lb78bh:
	pop hl			;b78b
	inc de			;b78c
	rra			;b78d
lb78eh:
	jp po,0ffe3h		;b78e
	ld (bc),a		;b791
	ret			;b792
	defb 0fdh,00eh,0b9h ;illegal sequence	;b793
	defb 0fdh,03eh,059h ;illegal sequence	;b796
	ld e,(iy-007h)		;b799
	sbc a,(iy+05fh)		;b79c
	rst 18h			;b79f
	ccf			;b7a0
	sbc a,a			;b7a1
	sbc a,a			;b7a2
	ld a,a			;b7a3
	rrca			;b7a4
	ld c,a			;b7a5
	ret p			;b7a6
	inc e			;b7a7
	ld e,a			;b7a8
	ret po			;b7a9
	dec b			;b7aa
	ld (bc),a		;b7ab
	dec b			;b7ac
	dec b			;b7ad
	ld (bc),a		;b7ae
	dec b			;b7af
	dec b			;b7b0
	ld (bc),a		;b7b1
	dec b			;b7b2
	dec b			;b7b3
	ld (bc),a		;b7b4
	dec b			;b7b5
	dec b			;b7b6
	ld (bc),a		;b7b7
	dec b			;b7b8
	dec b			;b7b9
	ld (bc),a		;b7ba
	dec b			;b7bb
	dec b			;b7bc
	ld (bc),a		;b7bd
	dec b			;b7be
	dec b			;b7bf
	ld (bc),a		;b7c0
	dec b			;b7c1
	call c,00833h		;b7c2
	rst 18h			;b7c5
	jr nc,$+14		;b7c6
	rst 18h			;b7c8
	jr nc,lb7dah		;b7c9
	cp a			;b7cb
	ld h,b			;b7cc
lb7cdh:
	rra			;b7cd
	cp (hl)			;b7ce
	ld h,c			;b7cf
lb7d0h:
	jr lb78bh		;b7d0
	ld h,a			;b7d2
lb7d3h:
	djnz lb78eh		;b7d3
	ld h,a			;b7d5
lb7d6h:
	djnz $-63		;b7d6
	ld h,b			;b7d8
lb7d9h:
	rra			;b7d9
lb7dah:
	cp (hl)			;b7da
	or c			;b7db
lb7dch:
	ld c,b			;b7dc
	ld a,0f1h		;b7dd
	ex af,af'		;b7df
	rst 38h			;b7e0
	nop			;b7e1
	ld c,0fch		;b7e2
	inc bc			;b7e4
	call m,0c07fh		;b7e5
	inc a			;b7e8
	cp a			;b7e9
	add a,b			;b7ea
	ld l,h			;b7eb
	cp a			;b7ec
	add a,b			;b7ed
	ld l,h			;b7ee
	rst 38h			;b7ef
	nop			;b7f0
	call m,00205h		;b7f1
	dec b			;b7f4
	dec b			;b7f5
	ld (bc),a		;b7f6
	dec b			;b7f7
	dec b			;b7f8
	ld (bc),a		;b7f9
	dec b			;b7fa
	dec b			;b7fb
	ld (bc),a		;b7fc
	dec b			;b7fd
	dec b			;b7fe
	ld (bc),a		;b7ff
	dec b			;b800
	dec b			;b801
	ld (bc),a		;b802
	dec b			;b803
	dec bc			;b804
	inc b			;b805
	ld a,(bc)		;b806
	dec bc			;b807
	inc b			;b808
	ld a,(bc)		;b809
	cp e			;b80a
	ld h,a			;b80b
	djnz $-66		;b80c
	ld h,e			;b80e
	jr lb7cdh		;b80f
	ld h,e			;b811
lb812h:
	jr lb7d0h		;b812
	ld h,e			;b814
lb815h:
	jr lb7d3h		;b815
	ld h,e			;b817
lb818h:
	jr lb7d6h		;b818
	ld h,e			;b81a
lb81bh:
	jr lb7d9h		;b81b
	ld h,e			;b81d
lb81eh:
	jr lb7dch		;b81e
	ld h,e			;b820
lb821h:
	jr $+13			;b821
	inc b			;b823
lb824h:
	jp m,0dcdfh		;b824
	ld (0dcdfh),hl		;b827
	ld (0dcdfh),hl		;b82a
	ld (0dedfh),hl		;b82d
	ld hl,0dedfh		;b830
	ld hl,0dedfh		;b833
	ld hl,0dfdfh		;b836
	jr nz,lb846h		;b839
	inc b			;b83b
	ld a,(bc)		;b83c
	dec bc			;b83d
	inc b			;b83e
	ld a,(bc)		;b83f
	dec bc			;b840
	inc b			;b841
	ld a,(bc)		;b842
	dec bc			;b843
	inc b			;b844
	ld a,(bc)		;b845
lb846h:
	dec bc			;b846
	inc b			;b847
	ld a,(bc)		;b848
	dec bc			;b849
lb84ah:
	inc b			;b84a
	ld a,(bc)		;b84b
	dec bc			;b84c
lb84dh:
	inc b			;b84d
	ld a,(bc)		;b84e
	dec bc			;b84f
lb850h:
	inc b			;b850
	ld a,(bc)		;b851
	cp h			;b852
lb853h:
	ld h,e			;b853
	jr lb812h		;b854
lb856h:
	ld h,e			;b856
	jr lb815h		;b857
lb859h:
	ld h,e			;b859
lb85ah:
	jr lb818h		;b85a
lb85ch:
	ld h,e			;b85c
lb85dh:
	jr lb81bh		;b85d
lb85fh:
	ld h,e			;b85f
lb860h:
	jr lb81eh		;b860
	ld h,e			;b862
lb863h:
	jr lb821h		;b863
	ld h,e			;b865
lb866h:
	jr lb824h		;b866
	ld h,e			;b868
lb869h:
	jr lb84ah		;b869
	rst 18h			;b86b
	jr nz,lb84dh		;b86c
	rst 18h			;b86e
	jr nz,lb850h		;b86f
	rst 18h			;b871
	jr nz,lb853h		;b872
	rst 18h			;b874
	jr nz,lb856h		;b875
	rst 18h			;b877
	jr nz,lb859h		;b878
	rst 18h			;b87a
	jr nz,lb85ch		;b87b
	rst 18h			;b87d
	jr nz,lb85fh		;b87e
	rst 18h			;b880
	jr nz,lb88eh		;b881
	inc b			;b883
	ld a,(bc)		;b884
	dec bc			;b885
	inc b			;b886
	ld a,(bc)		;b887
	dec bc			;b888
	inc b			;b889
	ld a,(bc)		;b88a
	dec bc			;b88b
	inc b			;b88c
	ld a,(bc)		;b88d
lb88eh:
	dec bc			;b88e
	inc b			;b88f
	ld a,(bc)		;b890
	dec bc			;b891
	inc b			;b892
	ld a,(bc)		;b893
	dec bc			;b894
	inc b			;b895
	ld a,(bc)		;b896
	rra			;b897
	nop			;b898
	rra			;b899
	cp h			;b89a
	ld h,e			;b89b
	jr lb85ah		;b89c
	ld h,e			;b89e
	jr lb85dh		;b89f
	ld h,e			;b8a1
	jr lb860h		;b8a2
	ld h,e			;b8a4
	jr lb863h		;b8a5
	ld h,e			;b8a7
	jr lb866h		;b8a8
	ld h,e			;b8aa
	jr lb869h		;b8ab
	ld h,e			;b8ad
	jr $-2			;b8ae
	inc bc			;b8b0
	ret m			;b8b1
	rst 18h			;b8b2
	call c,0df23h		;b8b3
	call c,0df23h		;b8b6
	call c,0df23h		;b8b9
	call c,0df23h		;b8bc
lb8bfh:
	call c,0df23h		;b8bf
	call c,0df23h		;b8c2
	call c,0df23h		;b8c5
	call c,01423h		;b8c8
	dec bc			;b8cb
	inc d			;b8cc
	rra			;b8cd
	nop			;b8ce
	inc d			;b8cf
	rra			;b8d0
	nop			;b8d1
	inc d			;b8d2
	rra			;b8d3
	nop			;b8d4
	inc d			;b8d5
	rra			;b8d6
	nop			;b8d7
	inc d			;b8d8
	rra			;b8d9
	nop			;b8da
	inc d			;b8db
	rra			;b8dc
	nop			;b8dd
	inc d			;b8de
	rra			;b8df
	nop			;b8e0
	inc d			;b8e1
	cp h			;b8e2
	add a,e			;b8e3
	ld l,b			;b8e4
	ld a,a			;b8e5
	ret nz			;b8e6
	inc l			;b8e7
	ld a,a			;b8e8
	ret nz			;b8e9
	cpl			;b8ea
	ld a,a			;b8eb
	ret nz			;b8ec
	cpl			;b8ed
	ld a,(hl)		;b8ee
	pop bc			;b8ef
	jr z,lb96bh		;b8f0
	rst 0			;b8f2
	jr nz,lb96eh		;b8f3
	rst 0			;b8f5
	jr nz,lb977h		;b8f6
	ret nz			;b8f8
	cpl			;b8f9
	rst 18h			;b8fa
	call c,02323h		;b8fb
	call m,0ff03h		;b8fe
	nop			;b901
	ld bc,000ffh		;b902
	rst 38h			;b905
	ld a,d			;b906
	rst 0			;b907
	jr nc,lb8bfh		;b908
	adc a,l			;b90a
	ld h,d			;b90b
	or l			;b90c
	adc a,l			;b90d
	ld h,d			;b90e
	rst 38h			;b90f
	nop			;b910
	rst 38h			;b911
	rra			;b912
	nop			;b913
	inc d			;b914
	rra			;b915
	nop			;b916
	rla			;b917
	rra			;b918
	nop			;b919
	rla			;b91a
	inc e			;b91b
	inc bc			;b91c
	djnz lb93eh		;b91d
	nop			;b91f
	djnz lb941h		;b920
	nop			;b922
	djnz $+33		;b923
	nop			;b925
	djnz lb947h		;b926
	nop			;b928
	rla			;b929
	or (hl)			;b92a
	ld c,(hl)		;b92b
	ld sp,007f9h		;b92c
	ret p			;b92f
	xor c			;b930
	rla			;b931
	ret po			;b932
lb933h:
	ld sp,hl		;b933
lb934h:
	rst 0			;b934
	jr nz,lb9b0h		;b935
	rst 0			;b937
	jr nz,lb933h		;b938
lb93ah:
	rlca			;b93a
	jr nz,$-5		;b93b
	rlca			;b93d
lb93eh:
	ret po			;b93e
	ld sp,hl		;b93f
	rlca			;b940
lb941h:
	ret po			;b941
	inc e			;b942
	djnz lb934h		;b943
	xor a			;b945
	or e			;b946
lb947h:
	ld c,b			;b947
	xor a			;b948
	or e			;b949
	ld c,b			;b94a
	xor a			;b94b
	or e			;b94c
	ld c,b			;b94d
	xor a			;b94e
	or e			;b94f
	ld c,b			;b950
	xor a			;b951
	or e			;b952
	ld c,b			;b953
	xor a			;b954
	or e			;b955
	ld c,b			;b956
	xor a			;b957
	or e			;b958
	ld c,b			;b959
	rra			;b95a
	nop			;b95b
	inc d			;b95c
	rra			;b95d
	nop			;b95e
	inc d			;b95f
	rra			;b960
	nop			;b961
	inc d			;b962
	rra			;b963
	nop			;b964
	inc d			;b965
	scf			;b966
	ex af,af'		;b967
	inc h			;b968
	scf			;b969
	ex af,af'		;b96a
lb96bh:
	inc h			;b96b
	scf			;b96c
	ex af,af'		;b96d
lb96eh:
	inc h			;b96e
	scf			;b96f
	ex af,af'		;b970
	inc h			;b971
	ld a,c			;b972
	rst 0			;b973
	jr nz,$+123		;b974
	rst 0			;b976
lb977h:
	jr nz,$+123		;b977
	rst 0			;b979
	jr nz,$+123		;b97a
	rst 0			;b97c
	jr nz,$+123		;b97d
	rst 0			;b97f
	jr nz,lb9fbh		;b980
	rst 0			;b982
	jr nz,lb9feh		;b983
	rst 0			;b985
	jr nz,lba01h		;b986
	rst 0			;b988
	jr nz,lb93ah		;b989
	or e			;b98b
	ld c,b			;b98c
	xor a			;b98d
	or e			;b98e
	ld c,b			;b98f
	xor a			;b990
	or e			;b991
	ld c,b			;b992
	xor a			;b993
	or e			;b994
	ld c,b			;b995
	xor a			;b996
	or e			;b997
	ld c,b			;b998
	xor a			;b999
	or e			;b99a
	ld c,b			;b99b
	xor a			;b99c
	or e			;b99d
	ld c,b			;b99e
	xor a			;b99f
	or e			;b9a0
	ld c,b			;b9a1
	scf			;b9a2
	ex af,af'		;b9a3
	inc h			;b9a4
	scf			;b9a5
	ex af,af'		;b9a6
	inc h			;b9a7
	scf			;b9a8
	ex af,af'		;b9a9
	inc h			;b9aa
	scf			;b9ab
	ex af,af'		;b9ac
	inc h			;b9ad
	scf			;b9ae
	ex af,af'		;b9af
lb9b0h:
	inc h			;b9b0
	scf			;b9b1
	ex af,af'		;b9b2
	inc h			;b9b3
	scf			;b9b4
	ex af,af'		;b9b5
	inc h			;b9b6
	scf			;b9b7
	ex af,af'		;b9b8
	inc h			;b9b9
	ld a,c			;b9ba
	rst 0			;b9bb
	jr nz,$+123		;b9bc
	rst 0			;b9be
	jr nz,$+123		;b9bf
	rst 0			;b9c1
	jr nz,lba3dh		;b9c2
	rst 0			;b9c4
	jr nz,lba40h		;b9c5
	rst 0			;b9c7
	jr nz,lba43h		;b9c8
	rst 0			;b9ca
	jr nz,$+128		;b9cb
	pop bc			;b9cd
	jr z,lba4fh		;b9ce
	ret nz			;b9d0
	cpl			;b9d1
	xor a			;b9d2
	or e			;b9d3
	ld c,b			;b9d4
	xor a			;b9d5
	or e			;b9d6
	ld c,b			;b9d7
	xor a			;b9d8
	or e			;b9d9
	ld c,b			;b9da
	xor a			;b9db
	or e			;b9dc
	ld c,b			;b9dd
	xor a			;b9de
	or e			;b9df
	ld c,b			;b9e0
	xor a			;b9e1
	or e			;b9e2
	ld c,b			;b9e3
	ld e,a			;b9e4
	ret po			;b9e5
	inc c			;b9e6
	rst 38h			;b9e7
	nop			;b9e8
	rst 38h			;b9e9
	nop			;b9ea
	inc e			;b9eb
	inc d			;b9ec
	ex af,af'		;b9ed
	ld (hl),03ah		;b9ee
	inc b			;b9f0
	ld a,(01c32h)		;b9f1
	ld (01c2ah),hl		;b9f4
	ld (00822h),hl		;b9f7
	inc (hl)		;b9fa
lb9fbh:
	inc a			;b9fb
	nop			;b9fc
	inc d			;b9fd
lb9feh:
	inc e			;b9fe
	nop			;b9ff
	inc e			;ba00
lba01h:
	inc e			;ba01
	nop			;ba02
	nop			;ba03
	nop			;ba04
	nop			;ba05
	jr lba20h		;ba06
	nop			;ba08
	inc a			;ba09
	inc (hl)		;ba0a
	ex af,af'		;ba0b
	halt			;ba0c
	ld l,d			;ba0d
	ex af,af'		;ba0e
	halt			;ba0f
	ld l,d			;ba10
	nop			;ba11
	ld a,(hl)		;ba12
	ld h,d			;ba13
	inc h			;ba14
	ld e,d			;ba15
	ld d,d			;ba16
	inc e			;ba17
	ld h,d			;ba18
	ld l,(hl)		;ba19
	inc h			;ba1a
	ld e,d			;ba1b
	ld e,(hl)		;ba1c
	inc e			;ba1d
	ld h,d			;ba1e
	ld l,(hl)		;ba1f
lba20h:
	inc e			;ba20
	ld h,d			;ba21
	ld l,d			;ba22
	jr lba49h		;ba23
	inc l			;ba25
	jr $+38			;ba26
	inc l			;ba28
	ex af,af'		;ba29
	inc (hl)		;ba2a
	inc (hl)		;ba2b
	nop			;ba2c
	inc (hl)		;ba2d
	inc a			;ba2e
	nop			;ba2f
	jr lba4ah		;ba30
	nop			;ba32
	inc e			;ba33
	inc e			;ba34
	inc d			;ba35
	ld hl,(00022h)		;ba36
	ld a,022h		;ba39
	inc b			;ba3b
	ld a,e			;ba3c
lba3dh:
	ld b,l			;ba3d
	inc b			;ba3e
	ld a,e			;ba3f
lba40h:
	ld b,l			;ba40
	inc b			;ba41
	ld a,e			;ba42
lba43h:
	ld b,l			;ba43
	ld hl,(04955h)		;ba44
	inc d			;ba47
	ld l,e			;ba48
lba49h:
	ld h,e			;ba49
lba4ah:
	ld (07f5dh),hl		;ba4a
	inc e			;ba4d
	ld h,e			;ba4e
lba4fh:
	ld l,a			;ba4f
	ld (07d5dh),hl		;ba50
	ld a,041h		;ba53
	ld e,a			;ba55
	ld a,041h		;ba56
	ld b,a			;ba58
	ld l,051h		;ba59
	ld e,l			;ba5b
	ld c,071h		;ba5c
	ld a,l			;ba5e
	ld c,071h		;ba5f
	ld a,l			;ba61
	inc c			;ba62
	ld (0083ah),a		;ba63
	inc d			;ba66
	inc e			;ba67
	ex af,af'		;ba68
	inc d			;ba69
	inc e			;ba6a
	ex af,af'		;ba6b
	inc d			;ba6c
	inc e			;ba6d
	ex af,af'		;ba6e
	inc d			;ba6f
	inc e			;ba70
	ex af,af'		;ba71
	inc d			;ba72
	inc e			;ba73
	nop			;ba74
	inc d			;ba75
	inc e			;ba76
	nop			;ba77
	inc e			;ba78
	inc e			;ba79
	nop			;ba7a
	jr lba95h		;ba7b
	jr $+38			;ba7d
	inc h			;ba7f
	inc h			;ba80
	ld e,d			;ba81
	ld b,d			;ba82
lba83h:
	inc l			;ba83
	ld d,d			;ba84
	ld c,d			;ba85
	ld b,d			;ba86
	cp l			;ba87
	add a,c			;ba88
	ld b,(hl)		;ba89
	cp c			;ba8a
	add a,l			;ba8b
	ld b,(hl)		;ba8c
	cp c			;ba8d
	add a,l			;ba8e
	ld b,(hl)		;ba8f
	cp c			;ba90
	add a,l			;ba91
	ld b,d			;ba92
	cp l			;ba93
	add a,c			;ba94
lba95h:
	nop			;ba95
	rst 38h			;ba96
	jp lbd42h		;ba97
	rst 38h			;ba9a
	ld a,(hl)		;ba9b
	add a,c			;ba9c
	sbc a,a			;ba9d
	ld a,(hl)		;ba9e
	add a,c			;ba9f
	sbc a,l			;baa0
	inc a			;baa1
	jp 042c3h		;baa2
	cp l			;baa5
	rst 38h			;baa6
	ld a,(hl)		;baa7
	add a,c			;baa8
	cp a			;baa9
	ld a,(hl)		;baaa
	add a,c			;baab
	and a			;baac
	ld l,(hl)		;baad
	sub c			;baae
	or l			;baaf
	ld l,0d1h		;bab0
	defb 0ddh,01eh,0e1h ;illegal sequence	;bab2
	defb 0edh ;next byte illegal after ed	;bab5
lbab6h:
	ld e,0e1h		;bab6
	defb 0edh ;next byte illegal after ed	;bab8
	ld e,0e1h		;bab9
	defb 0edh ;next byte illegal after ed	;babb
	inc e			;babc
	ld h,d			;babd
	ld l,d			;babe
	jr $+38			;babf
	inc l			;bac1
	jr $+38			;bac2
	inc l			;bac4
	jr lbaebh		;bac5
	inc l			;bac7
	jr lbaeeh		;bac8
	inc l			;baca
	jr lbaf1h		;bacb
	inc l			;bacd
	jr lbaf4h		;bace
	inc l			;bad0
lbad1h:
	jr lbaf7h		;bad1
	inc l			;bad3
	djnz lbb0ah		;bad4
	inc l			;bad6
	nop			;bad7
	inc a			;bad8
	inc a			;bad9
	nop			;bada
	add a,b			;badb
	add a,b			;badc
	add a,b			;badd
	ld b,b			;bade
	ld b,b			;badf
	ret nz			;bae0
	jr nz,lba83h		;bae1
	ret po			;bae3
	djnz lbab6h		;bae4
	ret p			;bae6
	jr lbad1h		;bae7
	ret po			;bae9
	ex af,af'		;baea
lbaebh:
	ret m			;baeb
	ld h,b			;baec
	adc a,b			;baed
lbaeeh:
	sbc a,b			;baee
	nop			;baef
	ret m			;baf0
lbaf1h:
	ret m			;baf1
	ld a,(hl)		;baf2
	add a,c			;baf3
lbaf4h:
	and a			;baf4
	ld l,(hl)		;baf5
	sub c			;baf6
lbaf7h:
	or l			;baf7
	xor (hl)		;baf8
	ld d,c			;baf9
	ld e,l			;bafa
	sbc a,(hl)		;bafb
	ld h,c			;bafc
	ld l,l			;bafd
	sbc a,(hl)		;bafe
	ld h,c			;baff
	ld l,l			;bb00
	sbc a,(hl)		;bb01
	ld h,c			;bb02
	ld l,l			;bb03
	inc e			;bb04
	ex (sp),hl		;bb05
	ex de,hl		;bb06
	jr lbb2dh		;bb07
	inc l			;bb09
lbb0ah:
	nop			;bb0a
	ld bc,00101h		;bb0b
	ld (bc),a		;bb0e
	ld (bc),a		;bb0f
	inc bc			;bb10
	inc b			;bb11
	dec b			;bb12
	rlca			;bb13
	ex af,af'		;bb14
	dec bc			;bb15
	rrca			;bb16
	jr lbb30h		;bb17
	rlca			;bb19
	djnz lbb3bh		;bb1a
	rlca			;bb1c
	djnz lbb37h		;bb1d
	nop			;bb1f
	rra			;bb20
	rra			;bb21
	nop			;bb22
	nop			;bb23
	nop			;bb24
	nop			;bb25
	nop			;bb26
	nop			;bb27
	nop			;bb28
	jr c,$+58		;bb29
	djnz lbb99h		;bb2b
lbb2dh:
	ld d,h			;bb2d
	nop			;bb2e
	ld a,h			;bb2f
lbb30h:
	ld b,h			;bb30
	ex af,af'		;bb31
	or 0cah			;bb32
	ex af,af'		;bb34
	or 0cah			;bb35
lbb37h:
	ex af,af'		;bb37
	or 0cah			;bb38
	ld b,b			;bb3a
lbb3bh:
	cp a			;bb3b
	and c			;bb3c
	ld b,b			;bb3d
	cp a			;bb3e
	and e			;bb3f
	ld h,b			;bb40
	sbc a,a			;bb41
	sbc a,a			;bb42
	ld a,(hl)		;bb43
	add a,c			;bb44
	xor a			;bb45
	ld a,0c1h		;bb46
	rst 8			;bb48
	ld e,(hl)		;bb49
	and c			;bb4a
	and c			;bb4b
	ld h,b			;bb4c
	sbc a,a			;bb4d
	cp a			;bb4e
	ld a,b			;bb4f
	add a,a			;bb50
	or a			;bb51
	nop			;bb52
	ld bc,00001h		;bb53
	inc bc			;bb56
	inc bc			;bb57
	nop			;bb58
	inc bc			;bb59
	inc bc			;bb5a
	ld bc,00606h		;bb5b
	nop			;bb5e
	ld b,007h		;bb5f
	nop			;bb61
	ld c,00fh		;bb62
lbb64h:
	ld bc,00e0bh		;bb64
	nop			;bb67
	rrca			;bb68
	rrca			;bb69
	inc sp			;bb6a
	call z,057fdh		;bb6b
lbb6eh:
	xor b			;bb6e
	cp e			;bb6f
	rst 10h			;bb70
lbb71h:
	jr z,$+125		;bb71
	rst 10h			;bb73
lbb74h:
	jr z,lbb71h		;bb74
	rst 10h			;bb76
	jr z,lbb74h		;bb77
	rst 10h			;bb79
	jr z,lbb64h		;bb7a
	add a,c			;bb7c
	ld a,(hl)		;bb7d
	ld a,(hl)		;bb7e
	nop			;bb7f
	defb 0ddh,0ddh,000h ;illegal sequence	;bb80
	add a,b			;bb83
lbb84h:
	add a,b			;bb84
	add a,b			;bb85
	ld b,b			;bb86
	ret nz			;bb87
	add a,b			;bb88
	ld b,b			;bb89
	ret nz			;bb8a
	ret nz			;bb8b
	jr nz,lbb6eh		;bb8c
	ret nz			;bb8e
	jr nz,lbb71h		;bb8f
	ret po			;bb91
	djnz lbb84h		;bb92
	ret po			;bb94
	djnz lbc07h		;bb95
	ret po			;bb97
	ex af,af'		;bb98
lbb99h:
	jr c,lbbfbh		;bb99
	adc a,b			;bb9b
	sbc a,b			;bb9c
	jr nz,$+74		;bb9d
	ld e,b			;bb9f
	nop			;bba0
	jr z,$+58		;bba1
	nop			;bba3
	jr lbbbeh		;bba4
	nop			;bba6
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
	jr lbbcdh		;bbb3
	nop			;bbb5
	inc a			;bbb6
	inc h			;bbb7
	inc b			;bbb8
	ld a,(02026h)		;bbb9
	ld e,(hl)		;bbbc
	ld d,d			;bbbd
lbbbeh:
	inc h			;bbbe
	ld e,e			;bbbf
	ld d,l			;bbc0
	inc d			;bbc1
	ld l,e			;bbc2
	ld a,l			;bbc3
	jr z,lbc1dh		;bbc4
	ld e,a			;bbc6
	ld (hl),049h		;bbc7
	ld e,a			;bbc9
	nop			;bbca
	nop			;bbcb
	nop			;bbcc
lbbcdh:
	nop			;bbcd
	nop			;bbce
	nop			;bbcf
	nop			;bbd0
	ld bc,00101h		;bbd1
	ld (bc),a		;bbd4
	ld (bc),a		;bbd5
	ld bc,00302h		;bbd6
	inc bc			;bbd9
	ld b,004h		;bbda
	ld (bc),a		;bbdc
	rlca			;bbdd
	dec b			;bbde
	nop			;bbdf
	ld b,006h		;bbe0
	jr c,lbc2bh		;bbe2
	ld e,a			;bbe4
	inc a			;bbe5
	jp laddfh		;bbe6
	ld d,d			;bbe9
	ld e,(hl)		;bbea
	sub l			;bbeb
	ld l,d			;bbec
	cp 095h			;bbed
	ld c,d			;bbef
	ld a,d			;bbf0
	ld de,0feceh		;bbf1
	inc b			;bbf4
	in a,(0fbh)		;bbf5
	nop			;bbf7
	ld a,(hl)		;bbf8
	ld a,(hl)		;bbf9
	nop			;bbfa
lbbfbh:
	ret nz			;bbfb
	ret nz			;bbfc
	ret nz			;bbfd
	jr nz,lbc60h		;bbfe
	ret po			;bc00
	djnz $-14		;bc01
	ret p			;bc03
	ex af,af'		;bc04
	ld a,b			;bc05
	ld a,b			;bc06
lbc07h:
	add a,h			;bc07
	sbc a,h			;bc08
	inc e			;bc09
	jp po,004e6h		;bc0a
	add hl,de		;bc0d
	dec de			;bc0e
	nop			;bc0f
	rlca			;bc10
	rlca			;bc11
	jr c,$-55		;bc12
	rra			;bc14
	ld e,h			;bc15
	and e			;bc16
	ld e,a			;bc17
	add hl,hl		;bc18
	sub 018h		;bc19
	sub c			;bc1b
	ld l,(hl)		;bc1c
lbc1dh:
	ret m			;bc1d
	add a,c			;bc1e
	ld a,(hl)		;bc1f
	ld c,d			;bc20
	dec h			;bc21
	jp c,01ea4h		;bc22
	pop hl			;bc25
	ld e,016h		;bc26
	ld l,c			;bc28
	ld d,(hl)		;bc29
	nop			;bc2a
lbc2bh:
	ret nz			;bc2b
	ret nz			;bc2c
	ret nz			;bc2d
	jr nz,lbc90h		;bc2e
	ret po			;bc30
	djnz $-14		;bc31
	ret p			;bc33
lbc34h:
	ex af,af'		;bc34
	ld a,b			;bc35
	ld (hl),b		;bc36
	adc a,h			;bc37
	sub h			;bc38
	ex af,af'		;bc39
	or 0eah			;bc3a
	inc h			;bc3c
	exx			;bc3d
	inc hl			;bc3e
	ret po			;bc3f
	rla			;bc40
	rst 20h			;bc41
	nop			;bc42
	nop			;bc43
	nop			;bc44
	ld b,b			;bc45
	nop			;bc46
	ret po			;bc47
	nop			;bc48
	ld (hl),b		;bc49
	ex af,af'		;bc4a
	djnz lbc61h		;bc4b
	ex af,af'		;bc4d
	ret c			;bc4e
	jr nz,lbc61h		;bc4f
	ret po			;bc51
	ld bc,00400h		;bc52
	nop			;bc55
	dec b			;bc56
	nop			;bc57
	ld bc,00000h		;bc58
	nop			;bc5b
	inc bc			;bc5c
	nop			;bc5d
	inc b			;bc5e
	inc bc			;bc5f
lbc60h:
	inc bc			;bc60
lbc61h:
	nop			;bc61
	ret nz			;bc62
	ccf			;bc63
	ret nz			;bc64
	ccf			;bc65
	add a,h			;bc66
	ld a,e			;bc67
	ld h,d			;bc68
	sbc a,l			;bc69
	jp c,02524h		;bc6a
	ld (bc),a		;bc6d
	add a,l			;bc6e
	ld (bc),a		;bc6f
	ld (bc),a		;bc70
	nop			;bc71
	jr nz,lbc34h		;bc72
	ld b,b			;bc74
	add a,b			;bc75
	inc d			;bc76
	ret po			;bc77
	ld hl,(0a4c4h)		;bc78
	ld b,b			;bc7b
	ld d,b			;bc7c
	jr nz,lbca7h		;bc7d
	djnz lbc99h		;bc7f
	nop			;bc81
	dec sp			;bc82
	nop			;bc83
	ld b,(hl)		;bc84
	add hl,sp		;bc85
	add a,e			;bc86
	ld a,h			;bc87
	add a,c			;bc88
	ld a,(hl)		;bc89
	add a,e			;bc8a
	ld a,h			;bc8b
	pop bc			;bc8c
	ld a,076h		;bc8d
	add hl,bc		;bc8f
lbc90h:
	ld e,e			;bc90
	jr nz,lbcc3h		;bc91
	nop			;bc93
	ld c,h			;bc94
	jr nc,lbc1dh		;bc95
	ld a,b			;bc97
	dec b			;bc98
lbc99h:
	ld a,d			;bc99
	ld c,(hl)		;bc9a
	jr nc,lbcc9h		;bc9b
	djnz $+22		;bc9d
	ex af,af'		;bc9f
	inc c			;bca0
	nop			;bca1
	jr nc,lbca4h		;bca2
lbca4h:
	ld c,h			;bca4
	jr nc,lbcf3h		;bca5
lbca7h:
	jr nc,lbce1h		;bca7
	nop			;bca9
	djnz lbcach		;bcaa
lbcach:
	nop			;bcac
	nop			;bcad
	nop			;bcae
	nop			;bcaf
	nop			;bcb0
	nop			;bcb1
	jr nz,lbcb4h		;bcb2
lbcb4h:
	ld d,b			;bcb4
	jr nz,lbd27h		;bcb5
	nop			;bcb7
	nop			;bcb8
	nop			;bcb9
	nop			;bcba
	nop			;bcbb
	nop			;bcbc
	nop			;bcbd
	nop			;bcbe
	nop			;bcbf
	nop			;bcc0
	nop			;bcc1
	nop			;bcc2
lbcc3h:
	nop			;bcc3
	djnz lbcfeh		;bcc4
	djnz lbcc8h		;bcc6
lbcc8h:
	nop			;bcc8
lbcc9h:
	nop			;bcc9
	nop			;bcca
	djnz lbcddh		;bccb
	jr c,lbcdfh		;bccd
	djnz lbcd1h		;bccf
lbcd1h:
	nop			;bcd1
	djnz lbce4h		;bcd2
	djnz lbd52h		;bcd4
	djnz lbce8h		;bcd6
	djnz lbceah		;bcd8
	nop			;bcda
	nop			;bcdb
	nop			;bcdc
lbcddh:
	nop			;bcdd
	nop			;bcde
lbcdfh:
	ex af,af'		;bcdf
	ex af,af'		;bce0
lbce1h:
	ex af,af'		;bce1
	inc e			;bce2
	ex af,af'		;bce3
lbce4h:
	ex af,af'		;bce4
	nop			;bce5
	nop			;bce6
	nop			;bce7
lbce8h:
	nop			;bce8
	nop			;bce9
lbceah:
	ex af,af'		;bcea
	ex af,af'		;bceb
	ex af,af'		;bcec
	ex af,af'		;bced
	ex af,af'		;bcee
	ld c,c			;bcef
	ld hl,(0ff1ch)		;bcf0
lbcf3h:
	inc e			;bcf3
	ld hl,(00849h)		;bcf4
	ex af,af'		;bcf7
	ex af,af'		;bcf8
	nop			;bcf9
	nop			;bcfa
	nop			;bcfb
	nop			;bcfc
	ex af,af'		;bcfd
lbcfeh:
	ex af,af'		;bcfe
	ex af,af'		;bcff
	ex af,af'		;bd00
	ex af,af'		;bd01
	ld a,008h		;bd02
	ex af,af'		;bd04
	ex af,af'		;bd05
	ex af,af'		;bd06
	nop			;bd07
	nop			;bd08
	nop			;bd09
	nop			;bd0a
	nop			;bd0b
	nop			;bd0c
	nop			;bd0d
	nop			;bd0e
	nop			;bd0f
	ex af,af'		;bd10
	ex af,af'		;bd11
	inc e			;bd12
	ex af,af'		;bd13
	ex af,af'		;bd14
	nop			;bd15
	nop			;bd16
	nop			;bd17
	nop			;bd18
	nop			;bd19
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
lbd27h:
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
lbd42h:
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
lbd52h:
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
lbebeh:
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
lbf3fh:
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
sub_bfbdh:
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
sub_bffch:
	rst 38h			;bffc
	rst 38h			;bffd
	rst 38h			;bffe
	rst 38h			;bfff

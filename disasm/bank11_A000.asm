; z80dasm 1.2.0
; command line: z80dasm -a -l -g 0xA000 -o /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/disasm/bank11_A000.asm /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/banks/bank11.bin

	org 0a000h

	rst 38h			;a000
	inc b			;a001
	xor a			;a002
	ld bc,001b0h		;a003
	or c			;a006
	ld bc,001afh		;a007
	or d			;a00a
	ld bc,001b3h		;a00b
	or h			;a00e
	ld bc,001b5h		;a00f
	or (hl)			;a012
	ld bc,001b7h		;a013
	cp b			;a016
	ld bc,001b9h		;a017
	cp d			;a01a
	ld bc,001b2h		;a01b
	xor a			;a01e
	ld bc,001bbh		;a01f
	cp h			;a022
	ld bc,001bdh		;a023
	cp (hl)			;a026
	ld bc,001afh		;a027
	rrca			;a02a
	inc bc			;a02b
	rrca			;a02c
	inc bc			;a02d
	dec a			;a02e
	inc b			;a02f
	ld a,004h		;a030
	ccf			;a032
	inc b			;a033
	cp e			;a034
	inc bc			;a035
	sub a			;a036
	inc b			;a037
	sub (hl)		;a038
	inc b			;a039
	sub l			;a03a
	inc b			;a03b
	rrca			;a03c
	inc bc			;a03d
	rrca			;a03e
	inc bc			;a03f
	push de			;a040
	inc bc			;a041
	dec hl			;a042
	inc bc			;a043
	rrca			;a044
	inc bc			;a045
	rrca			;a046
	inc bc			;a047
	rrca			;a048
	inc bc			;a049
	rrca			;a04a
	inc bc			;a04b
	rrca			;a04c
	inc bc			;a04d
	rrca			;a04e
	inc bc			;a04f
	rrca			;a050
	inc bc			;a051
	rrca			;a052
	inc bc			;a053
	rrca			;a054
	inc bc			;a055
	rrca			;a056
	inc bc			;a057
	rrca			;a058
	inc bc			;a059
	rrca			;a05a
	inc bc			;a05b
	rrca			;a05c
	inc bc			;a05d
	rrca			;a05e
	inc bc			;a05f
	rrca			;a060
	inc bc			;a061
	rrca			;a062
	inc bc			;a063
	rrca			;a064
	inc bc			;a065
	jp (hl)			;a066
	inc bc			;a067
	rst 38h			;a068
	inc b			;a069
	rrca			;a06a
	inc bc			;a06b
	rrca			;a06c
	inc bc			;a06d
	ld b,b			;a06e
	inc b			;a06f
	ld b,c			;a070
	inc b			;a071
	ld b,d			;a072
	inc b			;a073
	cp h			;a074
	inc bc			;a075
	sbc a,d			;a076
	inc b			;a077
	sbc a,c			;a078
	inc b			;a079
	sbc a,b			;a07a
	inc b			;a07b
	rrca			;a07c
	inc bc			;a07d
	rrca			;a07e
	inc bc			;a07f
	sub 003h		;a080
	inc l			;a082
	inc bc			;a083
	dec l			;a084
	inc bc			;a085
	rrca			;a086
	inc bc			;a087
	rrca			;a088
	inc bc			;a089
	rrca			;a08a
	inc bc			;a08b
	rrca			;a08c
	inc bc			;a08d
	rrca			;a08e
	inc bc			;a08f
	ld sp,03203h		;a090
	inc bc			;a093
	inc sp			;a094
	inc bc			;a095
	inc (hl)		;a096
	inc bc			;a097
	rrca			;a098
	inc bc			;a099
	rrca			;a09a
	inc bc			;a09b
	rrca			;a09c
	inc bc			;a09d
	rrca			;a09e
	inc bc			;a09f
	rrca			;a0a0
	inc bc			;a0a1
	jr z,$+5		;a0a2
	daa			;a0a4
	inc bc			;a0a5
	jp pe,0ff03h		;a0a6
	inc b			;a0a9
	rrca			;a0aa
	inc bc			;a0ab
	rrca			;a0ac
	inc bc			;a0ad
	ld b,e			;a0ae
	inc b			;a0af
	ld b,h			;a0b0
	inc b			;a0b1
	ld b,l			;a0b2
	inc b			;a0b3
	cp l			;a0b4
	inc bc			;a0b5
	sbc a,l			;a0b6
	inc b			;a0b7
	sbc a,h			;a0b8
	inc b			;a0b9
	sbc a,e			;a0ba
	inc b			;a0bb
	rrca			;a0bc
	inc bc			;a0bd
	rrca			;a0be
	inc bc			;a0bf
	rst 10h			;a0c0
	inc bc			;a0c1
	ret c			;a0c2
	inc bc			;a0c3
	ld l,003h		;a0c4
	rrca			;a0c6
	inc bc			;a0c7
	rrca			;a0c8
	inc bc			;a0c9
	rrca			;a0ca
	inc bc			;a0cb
	rrca			;a0cc
	inc bc			;a0cd
	dec (hl)		;a0ce
	inc bc			;a0cf
	ld (hl),003h		;a0d0
	scf			;a0d2
	inc bc			;a0d3
	jr c,$+5		;a0d4
	add hl,sp		;a0d6
	inc bc			;a0d7
	ld a,(00f03h)		;a0d8
	inc bc			;a0db
	rrca			;a0dc
	inc bc			;a0dd
	rrca			;a0de
	inc bc			;a0df
	rrca			;a0e0
	inc bc			;a0e1
	add hl,hl		;a0e2
	inc bc			;a0e3
	call pe,0eb03h		;a0e4
	inc bc			;a0e7
	rst 38h			;a0e8
	inc b			;a0e9
	rrca			;a0ea
	inc bc			;a0eb
	rrca			;a0ec
	inc bc			;a0ed
	ld b,(hl)		;a0ee
	inc b			;a0ef
	ld b,a			;a0f0
	inc b			;a0f1
	ld c,b			;a0f2
	inc b			;a0f3
	cp (hl)			;a0f4
	inc bc			;a0f5
	and b			;a0f6
	inc b			;a0f7
	sbc a,a			;a0f8
	inc b			;a0f9
	sbc a,(hl)		;a0fa
	inc b			;a0fb
	rrca			;a0fc
	inc bc			;a0fd
	rrca			;a0fe
	inc bc			;a0ff
	exx			;a100
	inc bc			;a101
	jp c,0db03h		;a102
	inc bc			;a105
	cpl			;a106
	inc bc			;a107
	rrca			;a108
	inc bc			;a109
	dec sp			;a10a
	inc bc			;a10b
	inc a			;a10c
	inc bc			;a10d
	dec a			;a10e
	inc bc			;a10f
	ld a,003h		;a110
	ccf			;a112
	inc bc			;a113
	ld b,b			;a114
	inc bc			;a115
	ld b,c			;a116
	inc bc			;a117
	ld b,d			;a118
	inc bc			;a119
	ld b,e			;a11a
	inc bc			;a11b
	ld b,h			;a11c
	inc bc			;a11d
	rrca			;a11e
	inc bc			;a11f
	ld hl,(0ef03h)		;a120
	inc bc			;a123
	xor 003h		;a124
	defb 0edh ;next byte illegal after ed	;a126
	inc bc			;a127
	rst 38h			;a128
	inc b			;a129
	rrca			;a12a
	inc bc			;a12b
	rrca			;a12c
	inc bc			;a12d
	ld c,c			;a12e
	inc b			;a12f
	ld c,d			;a130
	inc b			;a131
	ld c,e			;a132
	inc b			;a133
	cp a			;a134
	inc bc			;a135
	and e			;a136
	inc b			;a137
	and d			;a138
	inc b			;a139
	and c			;a13a
	inc b			;a13b
	rrca			;a13c
	inc bc			;a13d
	rrca			;a13e
	inc bc			;a13f
	call c,0dd03h		;a140
	inc bc			;a143
	sbc a,003h		;a144
	rst 18h			;a146
	inc bc			;a147
	jr nc,la14dh		;a148
	ld b,l			;a14a
	inc bc			;a14b
	ld b,(hl)		;a14c
la14dh:
	inc bc			;a14d
	ld b,a			;a14e
	inc bc			;a14f
	ld c,b			;a150
	inc bc			;a151
	ld c,c			;a152
	inc bc			;a153
	ld c,d			;a154
	inc bc			;a155
	ld c,e			;a156
	inc bc			;a157
	ld c,h			;a158
	inc bc			;a159
	ld c,l			;a15a
	inc bc			;a15b
	ld c,(hl)		;a15c
	inc bc			;a15d
	ld c,a			;a15e
	inc bc			;a15f
	di			;a160
	inc bc			;a161
	jp p,0f103h		;a162
	inc bc			;a165
	ret p			;a166
	inc bc			;a167
	rst 38h			;a168
	inc b			;a169
	rrca			;a16a
	inc bc			;a16b
	rrca			;a16c
	inc bc			;a16d
	ld c,h			;a16e
	inc b			;a16f
	ld c,l			;a170
	inc b			;a171
	ld c,(hl)		;a172
	inc b			;a173
	ret nz			;a174
	inc bc			;a175
	and (hl)		;a176
	inc b			;a177
	and l			;a178
	inc b			;a179
	and h			;a17a
	inc b			;a17b
	rrca			;a17c
	inc bc			;a17d
	rrca			;a17e
	inc bc			;a17f
	ret po			;a180
	inc bc			;a181
	pop hl			;a182
	inc bc			;a183
	jp po,0e303h		;a184
	inc bc			;a187
	call po,05003h		;a188
	inc bc			;a18b
	ld d,c			;a18c
	inc bc			;a18d
	ld d,d			;a18e
	inc bc			;a18f
	ld d,e			;a190
	inc bc			;a191
	ld d,h			;a192
	inc bc			;a193
	ld d,l			;a194
	inc bc			;a195
	ld d,(hl)		;a196
	inc bc			;a197
	ld d,a			;a198
	inc bc			;a199
	ld e,b			;a19a
	inc bc			;a19b
	ld e,c			;a19c
	inc bc			;a19d
	ret m			;a19e
	inc bc			;a19f
	rst 30h			;a1a0
	inc bc			;a1a1
	or 003h			;a1a2
	push af			;a1a4
	inc bc			;a1a5
	call p,0ff03h		;a1a6
	inc b			;a1a9
	rrca			;a1aa
	inc bc			;a1ab
	rrca			;a1ac
	inc bc			;a1ad
	ld c,a			;a1ae
	inc b			;a1af
	ld d,b			;a1b0
	inc b			;a1b1
	ld d,c			;a1b2
	inc b			;a1b3
	pop bc			;a1b4
	inc bc			;a1b5
	xor c			;a1b6
	inc b			;a1b7
	xor b			;a1b8
	inc b			;a1b9
	and a			;a1ba
	inc b			;a1bb
	rrca			;a1bc
	inc bc			;a1bd
	rrca			;a1be
	inc bc			;a1bf
	push hl			;a1c0
	inc bc			;a1c1
	and 003h		;a1c2
	rst 20h			;a1c4
	inc bc			;a1c5
	ret pe			;a1c6
	inc bc			;a1c7
	ld e,d			;a1c8
	inc bc			;a1c9
	ld e,e			;a1ca
	inc bc			;a1cb
	ld e,h			;a1cc
	inc bc			;a1cd
	ld e,l			;a1ce
	inc bc			;a1cf
	ld e,(hl)		;a1d0
	inc bc			;a1d1
	ld e,a			;a1d2
	inc bc			;a1d3
	ld h,b			;a1d4
	inc bc			;a1d5
	ld h,c			;a1d6
	inc bc			;a1d7
	ld h,d			;a1d8
	inc bc			;a1d9
	ld h,e			;a1da
	inc bc			;a1db
	ld h,h			;a1dc
	inc bc			;a1dd
	ld h,l			;a1de
	inc bc			;a1df
	call m,0fb03h		;a1e0
	inc bc			;a1e3
	jp m,0f903h		;a1e4
	inc bc			;a1e7
	rst 38h			;a1e8
	inc b			;a1e9
	rrca			;a1ea
	inc bc			;a1eb
	rrca			;a1ec
	inc bc			;a1ed
	ld d,d			;a1ee
	inc b			;a1ef
	ld d,e			;a1f0
	inc b			;a1f1
	ld d,h			;a1f2
	inc b			;a1f3
	jp nz,0ac03h		;a1f4
	inc b			;a1f7
	xor e			;a1f8
	inc b			;a1f9
	xor d			;a1fa
	inc b			;a1fb
	rrca			;a1fc
	inc bc			;a1fd
	rrca			;a1fe
	inc bc			;a1ff
	ld h,(hl)		;a200
	inc bc			;a201
	ld h,a			;a202
	inc bc			;a203
	ld l,b			;a204
	inc bc			;a205
	ld l,c			;a206
	inc bc			;a207
	ld l,d			;a208
	inc bc			;a209
	ld l,e			;a20a
	inc bc			;a20b
	ld l,h			;a20c
	inc bc			;a20d
	ld l,l			;a20e
	inc bc			;a20f
	ld l,(hl)		;a210
	inc bc			;a211
	ld l,a			;a212
	inc bc			;a213
	ld (hl),b		;a214
	inc bc			;a215
	ld (hl),c		;a216
	inc bc			;a217
	ld (hl),d		;a218
	inc bc			;a219
	ld (hl),e		;a21a
	inc bc			;a21b
	ld (hl),h		;a21c
	inc bc			;a21d
	ld (hl),l		;a21e
	inc bc			;a21f
	and (hl)		;a220
	inc bc			;a221
	and a			;a222
	inc bc			;a223
	xor b			;a224
	inc bc			;a225
	xor c			;a226
	inc bc			;a227
	rst 38h			;a228
	inc b			;a229
	rrca			;a22a
	inc bc			;a22b
	rrca			;a22c
	inc bc			;a22d
	defb 0fdh,003h,0feh ;illegal sequence	;a22e
	inc bc			;a231
	rst 38h			;a232
	inc bc			;a233
	jp 05703h		;a234
	inc b			;a237
	ld d,(hl)		;a238
	inc b			;a239
	ld d,l			;a23a
	inc b			;a23b
	rrca			;a23c
	inc bc			;a23d
	rrca			;a23e
	inc bc			;a23f
	halt			;a240
	inc bc			;a241
	ld (hl),a		;a242
	inc bc			;a243
	ld a,b			;a244
	inc bc			;a245
	ld a,c			;a246
	inc bc			;a247
	ld a,d			;a248
	inc bc			;a249
	ld a,e			;a24a
	inc bc			;a24b
	ld a,h			;a24c
	inc bc			;a24d
	ld a,l			;a24e
	inc bc			;a24f
	ld a,(hl)		;a250
	inc bc			;a251
	ld a,a			;a252
	inc bc			;a253
	add a,b			;a254
	inc bc			;a255
	add a,c			;a256
	inc bc			;a257
	add a,d			;a258
	inc bc			;a259
	add a,e			;a25a
	inc bc			;a25b
	add a,h			;a25c
	inc bc			;a25d
	add a,l			;a25e
	inc bc			;a25f
	xor d			;a260
	inc bc			;a261
	xor e			;a262
	inc bc			;a263
	or d			;a264
	inc bc			;a265
	xor (hl)		;a266
	inc bc			;a267
	rst 38h			;a268
	inc b			;a269
	rrca			;a26a
	inc bc			;a26b
	rrca			;a26c
	inc bc			;a26d
	nop			;a26e
	inc b			;a26f
	ld bc,00204h		;a270
	inc b			;a273
	call nz,05a03h		;a274
	inc b			;a277
	ld e,c			;a278
	inc b			;a279
	ld e,b			;a27a
	inc b			;a27b
	rrca			;a27c
	inc bc			;a27d
	rrca			;a27e
	inc bc			;a27f
	add a,(hl)		;a280
	inc bc			;a281
	add a,a			;a282
	inc bc			;a283
	adc a,b			;a284
	inc bc			;a285
	adc a,c			;a286
	inc bc			;a287
	adc a,d			;a288
	inc bc			;a289
	adc a,e			;a28a
	inc bc			;a28b
	adc a,h			;a28c
	inc bc			;a28d
	adc a,l			;a28e
	inc bc			;a28f
	adc a,(hl)		;a290
	inc bc			;a291
	adc a,a			;a292
	inc bc			;a293
	sub b			;a294
	inc bc			;a295
	sub c			;a296
	inc bc			;a297
	sub d			;a298
	inc bc			;a299
	sub e			;a29a
	inc bc			;a29b
	sub h			;a29c
	inc bc			;a29d
	sub l			;a29e
	inc bc			;a29f
	xor h			;a2a0
	inc bc			;a2a1
	xor l			;a2a2
	inc bc			;a2a3
	xor (hl)		;a2a4
	inc bc			;a2a5
	xor (hl)		;a2a6
	inc bc			;a2a7
	rst 38h			;a2a8
	inc b			;a2a9
	rrca			;a2aa
	inc bc			;a2ab
	rrca			;a2ac
	inc bc			;a2ad
	inc bc			;a2ae
	inc b			;a2af
	inc b			;a2b0
	inc b			;a2b1
	dec b			;a2b2
	inc b			;a2b3
	push bc			;a2b4
	inc bc			;a2b5
	ld e,l			;a2b6
	inc b			;a2b7
	ld e,h			;a2b8
	inc b			;a2b9
	ld e,e			;a2ba
	inc b			;a2bb
	rrca			;a2bc
	inc bc			;a2bd
	rrca			;a2be
	inc bc			;a2bf
la2c0h:
	sub (hl)		;a2c0
	inc bc			;a2c1
	sub a			;a2c2
	inc bc			;a2c3
	sbc a,b			;a2c4
	inc bc			;a2c5
	sbc a,c			;a2c6
	inc bc			;a2c7
	sbc a,d			;a2c8
	inc bc			;a2c9
	sbc a,e			;a2ca
	inc bc			;a2cb
	sbc a,h			;a2cc
	inc bc			;a2cd
	sbc a,l			;a2ce
	inc bc			;a2cf
	sbc a,(hl)		;a2d0
	inc bc			;a2d1
	sbc a,a			;a2d2
	inc bc			;a2d3
	and b			;a2d4
	inc bc			;a2d5
	and c			;a2d6
	inc bc			;a2d7
	and d			;a2d8
	inc bc			;a2d9
	and e			;a2da
	inc bc			;a2db
	and h			;a2dc
	inc bc			;a2dd
	and l			;a2de
	inc bc			;a2df
	or b			;a2e0
	inc bc			;a2e1
	or c			;a2e2
	inc bc			;a2e3
	or d			;a2e4
	inc bc			;a2e5
	or e			;a2e6
	inc bc			;a2e7
	rst 38h			;a2e8
	inc b			;a2e9
	rrca			;a2ea
	inc bc			;a2eb
	ld b,004h		;a2ec
	rlca			;a2ee
	inc b			;a2ef
	ex af,af'		;a2f0
	inc b			;a2f1
	add a,003h		;a2f2
	rst 0			;a2f4
	inc bc			;a2f5
	ret			;a2f6
	inc bc			;a2f7
	ld h,b			;a2f8
	inc b			;a2f9
	ld e,a			;a2fa
	inc b			;a2fb
	ld e,(hl)		;a2fc
	inc b			;a2fd
	rrca			;a2fe
sub_a2ffh:
	inc bc			;a2ff
	rrca			;a300
	inc bc			;a301
	dec d			;a302
	inc bc			;a303
	ld d,003h		;a304
	rla			;a306
	inc bc			;a307
	jr la30dh		;a308
	call c,0de04h		;a30a
la30dh:
	inc b			;a30d
	pop bc			;a30e
	inc b			;a30f
	rst 38h			;a310
	inc b			;a311
	rst 38h			;a312
	inc b			;a313
	rst 38h			;a314
	inc b			;a315
	rst 38h			;a316
	inc b			;a317
	rst 38h			;a318
	inc b			;a319
	rst 38h			;a31a
	inc b			;a31b
	rst 38h			;a31c
	inc b			;a31d
	rst 38h			;a31e
	inc b			;a31f
	rst 38h			;a320
	inc b			;a321
	rst 38h			;a322
	inc b			;a323
	rst 38h			;a324
	inc b			;a325
	rst 38h			;a326
	inc b			;a327
	rst 38h			;a328
	inc b			;a329
	rrca			;a32a
	inc bc			;a32b
	rrca			;a32c
	inc bc			;a32d
	add hl,bc		;a32e
	inc b			;a32f
	ld a,(bc)		;a330
	inc b			;a331
	dec bc			;a332
	inc b			;a333
	ret z			;a334
	inc bc			;a335
	ld h,e			;a336
	inc b			;a337
	ld h,d			;a338
	inc b			;a339
	ld h,c			;a33a
	inc b			;a33b
	rrca			;a33c
	inc bc			;a33d
	rrca			;a33e
	inc bc			;a33f
	add hl,de		;a340
	inc bc			;a341
	ld a,(de)		;a342
	inc bc			;a343
	dec de			;a344
	inc bc			;a345
	inc e			;a346
	inc bc			;a347
	dec e			;a348
	inc bc			;a349
	defb 0ddh,004h,0dfh ;illegal sequence	;a34a
la34dh:
	inc b			;a34d
	jp nz,00f04h		;a34e
	inc bc			;a351
	call 00f04h		;a352
	inc bc			;a355
	rst 38h			;a356
	inc b			;a357
	rst 38h			;a358
	inc b			;a359
	rst 38h			;a35a
	inc b			;a35b
	rst 38h			;a35c
	inc b			;a35d
	rst 38h			;a35e
	inc b			;a35f
	rst 38h			;a360
	inc b			;a361
	rst 38h			;a362
	inc b			;a363
	rst 38h			;a364
	inc b			;a365
	rst 38h			;a366
	inc b			;a367
	rst 38h			;a368
	inc b			;a369
	inc c			;a36a
	inc b			;a36b
	dec c			;a36c
	inc b			;a36d
	ld c,004h		;a36e
	rrca			;a370
	inc b			;a371
	jp z,0cb03h		;a372
	inc bc			;a375
	call z,06703h		;a376
	inc b			;a379
	ld h,(hl)		;a37a
	inc b			;a37b
	ld h,l			;a37c
	inc b			;a37d
	ld h,h			;a37e
	inc b			;a37f
	ld e,003h		;a380
	rra			;a382
	inc bc			;a383
	jr nz,la389h		;a384
	ld hl,02203h		;a386
la389h:
	inc bc			;a389
	rrca			;a38a
	inc bc			;a38b
	out (004h),a		;a38c
	rrca			;a38e
	inc bc			;a38f
	rrca			;a390
	inc bc			;a391
	adc a,004h		;a392
	rrca			;a394
	inc bc			;a395
	rst 38h			;a396
	inc b			;a397
	rst 38h			;a398
	inc b			;a399
	rst 38h			;a39a
	inc b			;a39b
	rst 38h			;a39c
	inc b			;a39d
	rst 38h			;a39e
	inc b			;a39f
	rst 38h			;a3a0
	inc b			;a3a1
	rst 38h			;a3a2
	inc b			;a3a3
	rst 38h			;a3a4
	inc b			;a3a5
	rst 38h			;a3a6
	inc b			;a3a7
	rst 38h			;a3a8
	inc b			;a3a9
	rrca			;a3aa
	inc bc			;a3ab
	rrca			;a3ac
	inc bc			;a3ad
	djnz la3b4h		;a3ae
	ld de,0cd04h		;a3b0
	inc bc			;a3b3
la3b4h:
	adc a,003h		;a3b4
	rst 8			;a3b6
	inc bc			;a3b7
	ld l,c			;a3b8
	inc b			;a3b9
	ld l,b			;a3ba
	inc b			;a3bb
	rrca			;a3bc
	inc bc			;a3bd
	rrca			;a3be
	inc bc			;a3bf
	rrca			;a3c0
	inc bc			;a3c1
	inc hl			;a3c2
	inc bc			;a3c3
	inc h			;a3c4
	inc bc			;a3c5
	dec h			;a3c6
	inc bc			;a3c7
	ld h,003h		;a3c8
	call nc,0d504h		;a3ca
	inc b			;a3cd
	sub 004h		;a3ce
	rst 8			;a3d0
	inc b			;a3d1
	ret nc			;a3d2
	inc b			;a3d3
	pop de			;a3d4
	inc b			;a3d5
	rst 38h			;a3d6
	inc b			;a3d7
	rst 38h			;a3d8
	inc b			;a3d9
	rst 38h			;a3da
	inc b			;a3db
	rst 38h			;a3dc
	inc b			;a3dd
	rst 38h			;a3de
	inc b			;a3df
	rst 38h			;a3e0
	inc b			;a3e1
	rst 38h			;a3e2
	inc b			;a3e3
	rst 38h			;a3e4
	inc b			;a3e5
	rst 38h			;a3e6
	inc b			;a3e7
	rst 38h			;a3e8
	inc b			;a3e9
	ld (de),a		;a3ea
	inc b			;a3eb
	inc de			;a3ec
	inc b			;a3ed
	inc d			;a3ee
	inc b			;a3ef
	dec d			;a3f0
	inc b			;a3f1
	ld d,004h		;a3f2
	ret nc			;a3f4
	inc bc			;a3f5
	ld l,(hl)		;a3f6
	inc b			;a3f7
	ld l,l			;a3f8
	inc b			;a3f9
	ld l,h			;a3fa
	inc b			;a3fb
	ld l,e			;a3fc
	inc b			;a3fd
	ld l,d			;a3fe
	inc b			;a3ff
	ret nz			;a400
	inc b			;a401
	add a,004h		;a402
	rrca			;a404
	inc bc			;a405
	add a,004h		;a406
	rrca			;a408
	inc bc			;a409
	rrca			;a40a
	inc bc			;a40b
	out (004h),a		;a40c
	rrca			;a40e
	inc bc			;a40f
	rst 38h			;a410
	inc b			;a411
	rst 38h			;a412
	inc b			;a413
	rst 38h			;a414
	inc b			;a415
	rst 38h			;a416
	inc b			;a417
	rst 38h			;a418
	inc b			;a419
	rst 38h			;a41a
	inc b			;a41b
	rst 38h			;a41c
	inc b			;a41d
	rst 38h			;a41e
	inc b			;a41f
	rst 38h			;a420
	inc b			;a421
	rst 38h			;a422
	inc b			;a423
	rst 38h			;a424
	inc b			;a425
	rst 38h			;a426
	inc b			;a427
	rst 38h			;a428
	inc b			;a429
	rla			;a42a
	inc b			;a42b
	jr la432h		;a42c
	add hl,de		;a42e
	inc b			;a42f
	ld a,(de)		;a430
	inc b			;a431
la432h:
	dec de			;a432
	inc b			;a433
	pop de			;a434
	inc bc			;a435
	ld (hl),e		;a436
	inc b			;a437
	ld (hl),d		;a438
	inc b			;a439
	ld (hl),c		;a43a
	inc b			;a43b
	ld (hl),b		;a43c
	inc b			;a43d
	ld l,a			;a43e
	inc b			;a43f
	jp 0c704h		;a440
	inc b			;a443
	rrca			;a444
	inc bc			;a445
	rst 0			;a446
	inc b			;a447
	rrca			;a448
	inc bc			;a449
	call nc,0d704h		;a44a
	inc b			;a44d
	ret c			;a44e
	inc b			;a44f
	rst 38h			;a450
	inc b			;a451
	rst 38h			;a452
	inc b			;a453
	rst 38h			;a454
	inc b			;a455
	rst 38h			;a456
	inc b			;a457
	rst 38h			;a458
	inc b			;a459
	rst 38h			;a45a
	inc b			;a45b
	rst 38h			;a45c
	inc b			;a45d
	rst 38h			;a45e
	inc b			;a45f
	rst 38h			;a460
	inc b			;a461
	rst 38h			;a462
	inc b			;a463
	rst 38h			;a464
	inc b			;a465
	rst 38h			;a466
	inc b			;a467
	rst 38h			;a468
	inc b			;a469
	inc e			;a46a
	inc b			;a46b
	dec e			;a46c
	inc b			;a46d
	ld e,004h		;a46e
	rra			;a470
	inc b			;a471
	jr nz,la478h		;a472
	jp nc,07803h		;a474
	inc b			;a477
la478h:
	ld (hl),a		;a478
	inc b			;a479
	halt			;a47a
	inc b			;a47b
	ld (hl),l		;a47c
	inc b			;a47d
	ld (hl),h		;a47e
	inc b			;a47f
	call nz,0c804h		;a480
	inc b			;a483
	call z,0cb04h		;a484
	inc b			;a487
	jp z,0d904h		;a488
	inc b			;a48b
	jp c,0db04h		;a48c
	inc b			;a48f
	rst 38h			;a490
	inc b			;a491
	rst 38h			;a492
	inc b			;a493
	rst 38h			;a494
	inc b			;a495
	rst 38h			;a496
	inc b			;a497
	rst 38h			;a498
	inc b			;a499
	rst 38h			;a49a
	inc b			;a49b
	rst 38h			;a49c
	inc b			;a49d
	rst 38h			;a49e
	inc b			;a49f
	rst 38h			;a4a0
	inc b			;a4a1
	rst 38h			;a4a2
	inc b			;a4a3
	rst 38h			;a4a4
	inc b			;a4a5
	rst 38h			;a4a6
	inc b			;a4a7
	rst 38h			;a4a8
	inc b			;a4a9
	ld hl,02204h		;a4aa
	inc b			;a4ad
	inc hl			;a4ae
	inc b			;a4af
	inc h			;a4b0
	inc b			;a4b1
	dec h			;a4b2
	inc b			;a4b3
	out (003h),a		;a4b4
	ld a,l			;a4b6
	inc b			;a4b7
	ld a,h			;a4b8
	inc b			;a4b9
	ld a,e			;a4ba
	inc b			;a4bb
	ld a,d			;a4bc
	inc b			;a4bd
	ld a,c			;a4be
	inc b			;a4bf
	push bc			;a4c0
	inc b			;a4c1
	ret			;a4c2
	inc b			;a4c3
	rrca			;a4c4
	inc bc			;a4c5
	ret			;a4c6
	inc b			;a4c7
	rrca			;a4c8
	inc bc			;a4c9
	rst 38h			;a4ca
	inc b			;a4cb
	rst 38h			;a4cc
	inc b			;a4cd
	rst 38h			;a4ce
	inc b			;a4cf
	rst 38h			;a4d0
	inc b			;a4d1
	rst 38h			;a4d2
	inc b			;a4d3
	rst 38h			;a4d4
	inc b			;a4d5
	rst 38h			;a4d6
	inc b			;a4d7
	rst 38h			;a4d8
	inc b			;a4d9
	rst 38h			;a4da
	inc b			;a4db
	rst 38h			;a4dc
	inc b			;a4dd
	rst 38h			;a4de
	inc b			;a4df
	rst 38h			;a4e0
	inc b			;a4e1
	rst 38h			;a4e2
	inc b			;a4e3
	rst 38h			;a4e4
	inc b			;a4e5
	rst 38h			;a4e6
	inc b			;a4e7
	rst 38h			;a4e8
	inc b			;a4e9
	ld h,004h		;a4ea
	daa			;a4ec
	inc b			;a4ed
	jr z,$+6		;a4ee
	add hl,hl		;a4f0
	inc b			;a4f1
	ld hl,(0d404h)		;a4f2
	inc bc			;a4f5
	add a,d			;a4f6
	inc b			;a4f7
	add a,c			;a4f8
	inc b			;a4f9
	add a,b			;a4fa
	inc b			;a4fb
	ld a,a			;a4fc
	inc b			;a4fd
	ld a,(hl)		;a4fe
	inc b			;a4ff
	rst 38h			;a500
	rst 38h			;a501
	nop			;a502
	nop			;a503
	ld b,000h		;a504
	add hl,bc		;a506
	ld b,03eh		;a507
	ld bc,000e1h		;a509
	ld e,0e1h		;a50c
	pop hl			;a50e
	rst 38h			;a50f
	rst 38h			;a510
	rst 38h			;a511
	inc b			;a512
	nop			;a513
	dec sp			;a514
	inc b			;a515
	call nz,0003fh		;a516
	rst 38h			;a519
	ld (hl),c		;a51a
	rst 38h			;a51b
	rst 8			;a51c
	rst 38h			;a51d
	cp a			;a51e
	rst 38h			;a51f
	rst 38h			;a520
	rst 38h			;a521
	nop			;a522
	nop			;a523
	jp 03c00h		;a524
	jp 0ff42h		;a527
	rst 38h			;a52a
	rst 38h			;a52b
	rst 38h			;a52c
	rst 38h			;a52d
	rst 38h			;a52e
	rst 38h			;a52f
	rst 38h			;a530
	rst 38h			;a531
	cp 000h			;a532
	ld bc,004feh		;a534
	rst 38h			;a537
	ret p			;a538
	rrca			;a539
	ld b,0f9h		;a53a
	ret m			;a53c
	rst 38h			;a53d
	rst 38h			;a53e
	rst 38h			;a53f
	rst 38h			;a540
	rst 38h			;a541
	add a,0f8h		;a542
	or c			;a544
	adc a,08eh		;a545
	rst 38h			;a547
	rst 38h			;a548
	rst 38h			;a549
	rst 38h			;a54a
	rst 38h			;a54b
	add a,b			;a54c
	rst 38h			;a54d
	ccf			;a54e
	ret nz			;a54f
	ld b,b			;a550
	rst 38h			;a551
	jp 03f3fh		;a552
	rst 38h			;a555
	rst 38h			;a556
	rst 38h			;a557
	rst 38h			;a558
	rst 38h			;a559
	rst 38h			;a55a
	rst 38h			;a55b
	rst 38h			;a55c
	rst 38h			;a55d
	ld h,b			;a55e
	rst 38h			;a55f
	sbc a,(hl)		;a560
	pop hl			;a561
	rst 38h			;a562
	rst 38h			;a563
	rst 38h			;a564
	rst 38h			;a565
	rst 38h			;a566
	rst 38h			;a567
	rst 38h			;a568
	rst 38h			;a569
	or 0ffh			;a56a
	inc bc			;a56c
	rst 38h			;a56d
	cp h			;a56e
	ld b,e			;a56f
	add a,c			;a570
	rst 38h			;a571
	rst 38h			;a572
	rst 38h			;a573
	rst 38h			;a574
	rst 38h			;a575
	rst 38h			;a576
	rst 38h			;a577
	inc e			;a578
	rst 38h			;a579
	ld a,e			;a57a
	call m,0f8d4h		;a57b
	dec hl			;a57e
	call c,0ffdch		;a57f
	rst 38h			;a582
	rst 38h			;a583
	rst 38h			;a584
	rst 38h			;a585
	rst 38h			;a586
	rst 38h			;a587
	ccf			;a588
	rst 38h			;a589
	ret nz			;a58a
	ccf			;a58b
	ld a,a			;a58c
	nop			;a58d
	ret nc			;a58e
	jr nz,la5a0h		;a58f
	ret p			;a591
	rst 38h			;a592
la593h:
	rst 38h			;a593
	rst 38h			;a594
	rst 38h			;a595
	rst 38h			;a596
	rst 38h			;a597
	sub 0ffh		;a598
	add hl,hl		;a59a
	sub 0d6h		;a59b
	nop			;a59d
	add hl,hl		;a59e
	ld d,(hl)		;a59f
la5a0h:
	cp (hl)			;a5a0
	ld a,a			;a5a1
	ei			;a5a2
	rst 38h			;a5a3
	call po,09bfbh		;a5a4
	ret po			;a5a7
	jp po,00000h		;a5a8
	nop			;a5ab
	jr c,la5aeh		;a5ac
la5aeh:
	add a,038h		;a5ae
	ld hl,0d8feh		;a5b0
	rst 38h			;a5b3
	ld a,a			;a5b4
	rst 38h			;a5b5
	sub a			;a5b6
	ld a,a			;a5b7
	ld l,b			;a5b8
	rla			;a5b9
	dec d			;a5ba
	ld (bc),a		;a5bb
	ld a,(bc)		;a5bc
	nop			;a5bd
	dec h			;a5be
	ld a,(bc)		;a5bf
	jp c,0552fh		;a5c0
	xor 0eeh		;a5c3
	rst 38h			;a5c5
	rst 38h			;a5c6
	rst 38h			;a5c7
	rra			;a5c8
	rst 38h			;a5c9
	ret pe			;a5ca
	rra			;a5cb
	rla			;a5cc
	ex af,af'		;a5cd
	ret pe			;a5ce
	djnz la5e8h		;a5cf
	ret m			;a5d1
	ld a,a			;a5d2
	rst 38h			;a5d3
	call m,0ffffh		;a5d4
	rst 38h			;a5d7
	add a,0ffh		;a5d8
	ld a,c			;a5da
	add a,086h		;a5db
	ld b,b			;a5dd
	ld a,c			;a5de
	ld b,086h		;a5df
	ld a,a			;a5e1
	rst 38h			;a5e2
	rst 38h			;a5e3
	call m,08affh		;a5e4
	rst 38h			;a5e7
la5e8h:
	ld (hl),b		;a5e8
	adc a,a			;a5e9
	adc a,(hl)		;a5ea
	nop			;a5eb
	ld h,c			;a5ec
	nop			;a5ed
	sbc a,(hl)		;a5ee
	ld h,c			;a5ef
	ld h,c			;a5f0
	cp 00ah			;a5f1
	push af			;a5f3
	dec (hl)		;a5f4
	ret nz			;a5f5
	ld d,d			;a5f6
	add a,c			;a5f7
	xor d			;a5f8
	ld bc,02a55h		;a5f9
	ld (09cfdh),hl		;a5fc
	ld l,a			;a5ff
	ld l,a			;a600
	rst 38h			;a601
	sub l			;a602
	ex af,af'		;a603
la604h:
	ld h,h			;a604
	jr la593h		;a605
	ld (hl),b		;a607
	pop de			;a608
	jr nz,la621h		;a609
	pop hl			;a60b
	ld l,c			;a60c
	add a,a			;a60d
	rlc a			;a60e
	ld d,a			;a610
	adc a,a			;a611
	ld bc,01200h		;a612
	ld bc,003bdh		;a615
	ld b,e			;a618
	ccf			;a619
	cp a			;a61a
	ld a,a			;a61b
	ld a,a			;a61c
	rst 38h			;a61d
	rst 38h			;a61e
	rst 38h			;a61f
	rst 8			;a620
la621h:
	rst 38h			;a621
	sbc a,a			;a622
	nop			;a623
	ld h,b			;a624
	sbc a,a			;a625
	sbc a,a			;a626
	rst 38h			;a627
	rst 38h			;a628
	rst 38h			;a629
	rst 38h			;a62a
	rst 38h			;a62b
	ret m			;a62c
	rst 38h			;a62d
	rst 8			;a62e
	ret p			;a62f
	jr nc,$-62		;a630
	rlca			;a632
	rst 38h			;a633
	rst 38h			;a634
	rst 38h			;a635
	rst 38h			;a636
	rst 38h			;a637
	call m,0fbffh		;a638
	call m,0ff38h		;a63b
	rst 0			;a63e
	ccf			;a63f
	jr c,la643h		;a640
	rst 38h			;a642
la643h:
	rst 38h			;a643
	rst 38h			;a644
	rst 38h			;a645
	rst 38h			;a646
	rst 38h			;a647
	ccf			;a648
	rst 38h			;a649
	pop bc			;a64a
	ccf			;a64b
	ld a,0c1h		;a64c
	jp 0fcfch		;a64e
	rst 38h			;a651
	rst 38h			;a652
	rst 38h			;a653
	rst 38h			;a654
	rst 38h			;a655
	rst 38h			;a656
	rst 38h			;a657
	rst 38h			;a658
	rst 38h			;a659
	and b			;a65a
	rst 38h			;a65b
	ld e,(hl)		;a65c
	and c			;a65d
	and c			;a65e
	ld a,a			;a65f
	ld a,a			;a660
	rst 38h			;a661
	rst 38h			;a662
	rst 38h			;a663
	rst 38h			;a664
	rst 38h			;a665
	rst 38h			;a666
	rst 38h			;a667
	rst 38h			;a668
	rst 38h			;a669
	rst 38h			;a66a
	rst 38h			;a66b
la66ch:
	ld hl,0deffh		;a66c
	pop hl			;a66f
	pop hl			;a670
	cp 0ffh			;a671
	rst 38h			;a673
	rst 38h			;a674
	rst 38h			;a675
	rst 38h			;a676
	rst 38h			;a677
	rst 38h			;a678
	rst 38h			;a679
	rst 38h			;a67a
	rst 38h			;a67b
	ld e,c			;a67c
	rst 38h			;a67d
	adc a,031h		;a67e
	ld sp,0e300h		;a680
	rst 38h			;a683
	inc c			;a684
	di			;a685
	ret po			;a686
	ccf			;a687
	nop			;a688
	rst 38h			;a689
	ccf			;a68a
	ret nz			;a68b
	ret nz			;a68c
	nop			;a68d
	rrca			;a68e
	nop			;a68f
	nop			;a690
	nop			;a691
	ld hl,0d7ffh		;a692
	ccf			;a695
	dec hl			;a696
	rst 30h			;a697
	rla			;a698
	rst 38h			;a699
	ret nz			;a69a
	ccf			;a69b
	jr c,$+9		;a69c
	adc a,a			;a69e
	nop			;a69f
	jp po,lbf00h		;a6a0
la6a3h:
	rst 38h			;a6a3
	jp po,080ffh		;a6a4
	rst 38h			;a6a7
	rrca			;a6a8
	ret p			;a6a9
	jr c,la66ch		;a6aa
	jp 09e00h		;a6ac
	nop			;a6af
	jr nc,la6b2h		;a6b0
la6b2h:
	rst 20h			;a6b2
	rst 38h			;a6b3
	add a,c			;a6b4
	rst 38h			;a6b5
	add a,l			;a6b6
	ld a,d			;a6b7
	adc a,030h		;a6b8
	cp 000h			;a6ba
	ld h,b			;a6bc
	nop			;a6bd
	ld (bc),a		;a6be
	nop			;a6bf
	nop			;a6c0
	nop			;a6c1
	ret p			;a6c2
	rst 38h			;a6c3
	ld h,a			;a6c4
	rst 38h			;a6c5
	add hl,sp		;a6c6
	rst 38h			;a6c7
	adc a,(hl)		;a6c8
	ld a,a			;a6c9
	ld h,b			;a6ca
	rra			;a6cb
la6cch:
	ccf			;a6cc
	nop			;a6cd
	inc bc			;a6ce
	nop			;a6cf
	nop			;a6d0
	nop			;a6d1
	ld h,a			;a6d2
	cp 0fch			;a6d3
	rst 38h			;a6d5
	rst 20h			;a6d6
	rst 38h			;a6d7
	add a,e			;a6d8
	rst 38h			;a6d9
	jr c,la6a3h		;a6da
	rst 20h			;a6dc
	nop			;a6dd
	ld bc,00800h		;a6de
	nop			;a6e1
	di			;a6e2
	rst 38h			;a6e3
	inc c			;a6e4
	di			;a6e5
	di			;a6e6
	ccf			;a6e7
	nop			;a6e8
	rst 38h			;a6e9
	ccf			;a6ea
	ret nz			;a6eb
	ret nz			;a6ec
	nop			;a6ed
	rrca			;a6ee
	nop			;a6ef
	nop			;a6f0
	nop			;a6f1
la6f2h:
	jr z,$+1		;a6f2
	rst 10h			;a6f4
	ccf			;a6f5
	dec hl			;a6f6
	rst 30h			;a6f7
	rla			;a6f8
	rst 38h			;a6f9
	ret nz			;a6fa
	ccf			;a6fb
	jr c,$+9		;a6fc
	adc a,a			;a6fe
	nop			;a6ff
	jp po,03f00h		;a700
	rst 38h			;a703
	cp 0ffh			;a704
	ret po			;a706
	rst 38h			;a707
	adc a,a			;a708
	ret p			;a709
	jr c,la6cch		;a70a
	jp 09e00h		;a70c
	nop			;a70f
	jr nc,la712h		;a710
la712h:
	or 0ffh			;a712
	rst 38h			;a714
	rst 38h			;a715
	sbc a,a			;a716
	ld a,a			;a717
	call 0f33fh		;a718
	inc c			;a71b
	ld l,h			;a71c
	nop			;a71d
	inc bc			;a71e
	nop			;a71f
	ld (bc),a		;a720
	ld bc,0ffffh		;a721
	rst 38h			;a724
	rst 38h			;a725
	rst 38h			;a726
	rst 38h			;a727
	ei			;a728
	rst 38h			;a729
la72ah:
	sub l			;a72a
	ld a,e			;a72b
	sbc a,l			;a72c
	ld h,e			;a72d
	ld hl,(0d4c1h)		;a72e
	ex de,hl		;a731
	ld d,a			;a732
	adc a,a			;a733
	ld d,h			;a734
	adc a,a			;a735
	ld l,0dfh		;a736
	defb 0ddh,0feh,0ebh ;illegal sequence	;a738
	call m,0fd92h		;a73b
	ld h,(hl)		;a73e
	sbc a,c			;a73f
	sbc a,l			;a740
	ld b,03dh		;a741
	cp 0f6h			;a743
	ret m			;a745
	ex af,af'		;a746
	ret p			;a747
	sub b			;a748
	ld h,b			;a749
	ld hl,042c0h		;a74a
	add a,c			;a74d
	add a,h			;a74e
	inc bc			;a74f
	add hl,bc		;a750
la751h:
	ld b,080h		;a751
	nop			;a753
	nop			;a754
	nop			;a755
	rrca			;a756
	nop			;a757
	ld (hl),b		;a758
	rrca			;a759
	sbc a,d			;a75a
	ld h,l			;a75b
	ld h,h			;a75c
	add a,b			;a75d
	adc a,e			;a75e
	inc b			;a75f
	jr nc,la771h		;a760
	ld b,001h		;a762
	inc bc			;a764
	nop			;a765
	ret nz			;a766
	nop			;a767
	jr nc,la72ah		;a768
	jr $-30			;a76a
	inc b			;a76c
	jr c,la6f2h		;a76d
	inc c			;a76f
	ld h,l			;a770
la771h:
	add a,d			;a771
	rra			;a772
	rst 38h			;a773
	pop bc			;a774
	ccf			;a775
	ld l,011h		;a776
	ld de,01e00h		;a778
	ld bc,0030ch		;a77b
	inc bc			;a77e
	nop			;a77f
	add a,b			;a780
	nop			;a781
	rst 38h			;a782
	rst 38h			;a783
	call m,093ffh		;a784
	call m,0906ch		;a787
	sub e			;a78a
	nop			;a78b
	ld a,h			;a78c
	add a,e			;a78d
	add a,039h		;a78e
	add hl,sp		;a790
	nop			;a791
	cp 0ffh			;a792
	ld bc,laeffh		;a794
	ld d,c			;a797
	ld c,c			;a798
	djnz la751h		;a799
	nop			;a79b
	ld c,c			;a79c
	or (hl)			;a79d
	and (hl)		;a79e
	rst 38h			;a79f
	ld d,c			;a7a0
	xor 0ceh		;a7a1
	ld sp,0ff49h		;a7a3
	sub 06fh		;a7a6
	scf			;a7a8
	ld c,a			;a7a9
	and b			;a7aa
	ld e,a			;a7ab
	ld a,(de)		;a7ac
	ret po			;a7ad
	ld a,h			;a7ae
	add a,b			;a7af
	and b			;a7b0
	nop			;a7b1
	nop			;a7b2
	nop			;a7b3
	ld (bc),a		;a7b4
	nop			;a7b5
	jr nz,la7b8h		;a7b6
la7b8h:
	djnz la7bah		;a7b8
la7bah:
	nop			;a7ba
	nop			;a7bb
	djnz la7beh		;a7bc
la7beh:
	add a,h			;a7be
	nop			;a7bf
	pop af			;a7c0
	nop			;a7c1
	adc a,h			;a7c2
	nop			;a7c3
	nop			;a7c4
	nop			;a7c5
	nop			;a7c6
	nop			;a7c7
	nop			;a7c8
	nop			;a7c9
	nop			;a7ca
	nop			;a7cb
	nop			;a7cc
	nop			;a7cd
	inc c			;a7ce
	nop			;a7cf
	jp 00000h		;a7d0
	nop			;a7d3
	nop			;a7d4
	nop			;a7d5
	nop			;a7d6
	nop			;a7d7
	nop			;a7d8
	nop			;a7d9
	inc b			;a7da
	nop			;a7db
	dec c			;a7dc
	nop			;a7dd
	ld a,(bc)		;a7de
	ld bc,00304h		;a7df
	nop			;a7e2
	nop			;a7e3
	nop			;a7e4
	nop			;a7e5
	nop			;a7e6
	nop			;a7e7
	ld bc,09400h		;a7e8
	nop			;a7eb
	ld h,(hl)		;a7ec
	nop			;a7ed
	or b			;a7ee
	ld b,b			;a7ef
	ld (hl),b		;a7f0
	add a,b			;a7f1
	djnz la7f4h		;a7f2
la7f4h:
	rrca			;a7f4
	nop			;a7f5
	ret nz			;a7f6
	nop			;a7f7
	nop			;a7f8
	nop			;a7f9
	ld e,000h		;a7fa
	ld a,a			;a7fc
	nop			;a7fd
	ld b,c			;a7fe
	ld a,0dch		;a7ff
	ccf			;a801
	nop			;a802
	nop			;a803
	add a,b			;a804
	nop			;a805
	ret p			;a806
	nop			;a807
	ld b,h			;a808
	nop			;a809
	ld (01900h),hl		;a80a
	nop			;a80d
	adc a,b			;a80e
	nop			;a80f
	call z,00000h		;a810
	ld b,b			;a813
	ld (bc),a		;a814
	nop			;a815
	nop			;a816
	nop			;a817
	nop			;a818
	nop			;a819
	nop			;a81a
	nop			;a81b
	djnz la81eh		;a81c
la81eh:
	add a,h			;a81e
	nop			;a81f
	ret po			;a820
	nop			;a821
	adc a,h			;a822
	nop			;a823
	nop			;a824
	nop			;a825
	nop			;a826
	nop			;a827
	nop			;a828
	nop			;a829
	nop			;a82a
	nop			;a82b
	nop			;a82c
	nop			;a82d
	inc c			;a82e
	nop			;a82f
	ret nz			;a830
	nop			;a831
	nop			;a832
	nop			;a833
	nop			;a834
	nop			;a835
	nop			;a836
	nop			;a837
	nop			;a838
	nop			;a839
	inc b			;a83a
	nop			;a83b
	dec c			;a83c
	nop			;a83d
	add hl,bc		;a83e
	nop			;a83f
	nop			;a840
	nop			;a841
	ld (bc),a		;a842
	nop			;a843
	ld de,00000h		;a844
	nop			;a847
	nop			;a848
	nop			;a849
	nop			;a84a
	nop			;a84b
	ld h,b			;a84c
	nop			;a84d
	sbc a,h			;a84e
	nop			;a84f
	rst 20h			;a850
	nop			;a851
	call nz,0ac03h		;a852
	ld b,e			;a855
	ld (hl),e		;a856
	inc c			;a857
la858h:
	inc e			;a858
	nop			;a859
	nop			;a85a
	nop			;a85b
	nop			;a85c
	nop			;a85d
	ld bc,0e300h		;a85e
	nop			;a861
	xor c			;a862
	ret nc			;a863
	ld (hl),0f9h		;a864
	add a,c			;a866
	ld a,a			;a867
	ld e,h			;a868
	inc hl			;a869
	inc hl			;a86a
	nop			;a86b
	nop			;a86c
	nop			;a86d
	add a,a			;a86e
	nop			;a86f
	ld a,b			;a870
	add a,a			;a871
	ld h,e			;a872
	inc e			;a873
	adc a,h			;a874
	ld (hl),b		;a875
	jr la858h		;a876
	ld h,b			;a878
	add a,b			;a879
	add a,b			;a87a
	nop			;a87b
	nop			;a87c
	nop			;a87d
	rrca			;a87e
	nop			;a87f
	defb 0fdh,002h,00ah ;illegal sequence	;a880
	inc b			;a883
	inc d			;a884
	ex af,af'		;a885
	jr la888h		;a886
la888h:
	jr la88ah		;a888
la88ah:
	jr la88ch		;a88a
la88ch:
	ex af,af'		;a88c
	nop			;a88d
	inc c			;a88e
	nop			;a88f
	add a,(hl)		;a890
	nop			;a891
	ld e,(hl)		;a892
	ld hl,040a1h		;a893
	adc a,a			;a896
	nop			;a897
	nop			;a898
	nop			;a899
	nop			;a89a
	nop			;a89b
	nop			;a89c
	nop			;a89d
	nop			;a89e
	nop			;a89f
	nop			;a8a0
	nop			;a8a1
	ld c,d			;a8a2
	or c			;a8a3
	or l			;a8a4
	ex af,af'		;a8a5
	adc a,d			;a8a6
	inc b			;a8a7
	push bc			;a8a8
	ld (bc),a		;a8a9
	dec sp			;a8aa
	ld bc,0010eh		;a8ab
	dec b			;a8ae
	nop			;a8af
	ld bc,0c000h		;a8b0
	nop			;a8b3
	ld h,b			;a8b4
	add a,b			;a8b5
	or h			;a8b6
	ld b,b			;a8b7
	cp b			;a8b8
	nop			;a8b9
	ld e,h			;a8ba
	add a,b			;a8bb
	and a			;a8bc
	ret nz			;a8bd
	ld b,e			;a8be
	ret po			;a8bf
	jr nc,$-62		;a8c0
	ld (bc),a		;a8c2
	nop			;a8c3
	ld de,00000h		;a8c4
	nop			;a8c7
	nop			;a8c8
	nop			;a8c9
	nop			;a8ca
	nop			;a8cb
	ld h,b			;a8cc
	nop			;a8cd
	sbc a,a			;a8ce
	nop			;a8cf
	rst 20h			;a8d0
	nop			;a8d1
	cp a			;a8d2
	ld b,b			;a8d3
	ret po			;a8d4
	nop			;a8d5
	ex af,af'		;a8d6
	nop			;a8d7
	nop			;a8d8
	nop			;a8d9
	nop			;a8da
	nop			;a8db
	nop			;a8dc
	nop			;a8dd
	nop			;a8de
	nop			;a8df
	ex (sp),hl		;a8e0
	nop			;a8e1
	add a,b			;a8e2
	nop			;a8e3
	nop			;a8e4
	nop			;a8e5
	nop			;a8e6
	nop			;a8e7
	nop			;a8e8
	nop			;a8e9
	nop			;a8ea
	nop			;a8eb
	ex af,af'		;a8ec
	nop			;a8ed
	dec b			;a8ee
	nop			;a8ef
	inc e			;a8f0
	nop			;a8f1
	cp b			;a8f2
	nop			;a8f3
	adc a,(hl)		;a8f4
	ld (hl),b		;a8f5
	and c			;a8f6
	ld a,(hl)		;a8f7
	sub (hl)		;a8f8
	ld a,a			;a8f9
	ld a,(bc)		;a8fa
	push af			;a8fb
	dec a			;a8fc
	jp nz,0ffc0h		;a8fd
	ld sp,hl		;a900
	rst 38h			;a901
	defb 0fdh,000h,022h ;illegal sequence	;a902
	dec e			;a905
la906h:
	ret nz			;a906
	ccf			;a907
	add hl,de		;a908
	rst 38h			;a909
	call c,00723h		;a90a
	ret m			;a90d
	ret m			;a90e
	rst 38h			;a90f
	ccf			;a910
	rst 38h			;a911
	ret			;a912
	ld b,033h		;a913
	call z,0f847h		;a915
	rst 38h			;a918
	cp 020h			;a919
	rst 38h			;a91b
	ld b,a			;a91c
	cp a			;a91d
	inc l			;a91e
	di			;a91f
	jp p,058fdh		;a920
	and b			;a923
	jr la906h		;a924
	sbc a,b			;a926
	ld h,b			;a927
	adc a,b			;a928
	ld (hl),b		;a929
	call nz,0f438h		;a92a
	ret z			;a92d
	ld e,0e0h		;a92e
	jp 09e3ch		;a930
	ld a,a			;a933
	cp a			;a934
	ld a,a			;a935
	cp (hl)			;a936
	ld a,a			;a937
	sbc a,(hl)		;a938
	ld a,a			;a939
	call nz,0713fh		;a93a
	ld c,01fh		;a93d
	nop			;a93f
	nop			;a940
	nop			;a941
la942h:
	ld c,h			;a942
	add a,b			;a943
	ld b,(hl)		;a944
	add a,b			;a945
	ld c,d			;a946
	add a,b			;a947
	rst 0			;a948
	nop			;a949
	adc a,h			;a94a
	nop			;a94b
	sub b			;a94c
	nop			;a94d
	inc de			;a94e
	nop			;a94f
	inc h			;a950
	inc bc			;a951
	ld b,c			;a952
	nop			;a953
	ld b,a			;a954
	nop			;a955
	dec b			;a956
	nop			;a957
	and d			;a958
	nop			;a959
	ld de,00c00h		;a95a
	nop			;a95d
	pop af			;a95e
	nop			;a95f
	djnz la942h		;a960
la962h:
	add a,b			;a962
	nop			;a963
	ld h,b			;a964
	nop			;a965
	ld h,b			;a966
	nop			;a967
	add a,b			;a968
	nop			;a969
	add a,a			;a96a
	nop			;a96b
	inc e			;a96c
	inc bc			;a96d
	inc hl			;a96e
	rra			;a96f
	daa			;a970
	rra			;a971
	ld bc,00000h		;a972
	rlca			;a975
	rlca			;a976
	jr la962h		;a977
	ld e,00eh		;a979
	rst 38h			;a97b
	ld b,a			;a97c
	cp a			;a97d
	xor h			;a97e
	di			;a97f
	jp p,030fdh		;a980
	nop			;a983
	adc a,l			;a984
	nop			;a985
la986h:
	ld (hl),d		;a986
	adc a,l			;a987
	dec c			;a988
	rst 38h			;a989
	rst 38h			;a98a
	rst 38h			;a98b
	rst 0			;a98c
	rst 38h			;a98d
	inc a			;a98e
	rst 38h			;a98f
	ld a,a			;a990
	rst 38h			;a991
	ld a,l			;a992
	nop			;a993
	adc a,d			;a994
	dec b			;a995
	ret p			;a996
	rrca			;a997
	dec c			;a998
	rst 38h			;a999
	rst 38h			;a99a
	rst 38h			;a99b
	rst 38h			;a99c
	rst 38h			;a99d
	rst 38h			;a99e
	rst 38h			;a99f
	rst 38h			;a9a0
	rst 38h			;a9a1
	add a,(hl)		;a9a2
	ld a,a			;a9a3
	ccf			;a9a4
	rst 38h			;a9a5
	ld a,a			;a9a6
	rst 38h			;a9a7
	rst 38h			;a9a8
	rst 38h			;a9a9
	jr nz,$+1		;a9aa
	rlca			;a9ac
	rst 38h			;a9ad
	defb 0fdh,0ffh,0ffh ;illegal sequence	;a9ae
	rst 38h			;a9b1
	ld b,0f9h		;a9b2
	cp c			;a9b4
	cp 0ech			;a9b5
	rst 38h			;a9b7
	rst 38h			;a9b8
	rst 38h			;a9b9
	cpl			;a9ba
	rst 38h			;a9bb
	rlca			;a9bc
	rst 38h			;a9bd
	ret p			;a9be
la9bfh:
	rst 38h			;a9bf
	cp 0ffh			;a9c0
	ld b,c			;a9c2
	add a,b			;a9c3
	jr nz,la986h		;a9c4
	ret c			;a9c6
	jr nz,la9f0h		;a9c7
	ret c			;a9c9
	jp nz,03dfdh		;a9ca
	rst 38h			;a9cd
	rst 28h			;a9ce
	rst 38h			;a9cf
	ccf			;a9d0
	rst 38h			;a9d1
	add a,b			;a9d2
	nop			;a9d3
	inc b			;a9d4
	nop			;a9d5
	inc bc			;a9d6
	nop			;a9d7
	nop			;a9d8
	nop			;a9d9
	ret po			;a9da
	nop			;a9db
	dec de			;a9dc
	ret po			;a9dd
	sub h			;a9de
	ex de,hl		;a9df
	and 0f9h		;a9e0
	ld b,001h		;a9e2
	rra			;a9e4
	nop			;a9e5
	ld sp,hl		;a9e6
	nop			;a9e7
	ld a,(bc)		;a9e8
	ld bc,00f31h		;a9e9
	rst 30h			;a9ec
	rrca			;a9ed
	rlca			;a9ee
	rst 38h			;a9ef
la9f0h:
	xor b			;a9f0
	rst 10h			;a9f1
	and b			;a9f2
	ret nz			;a9f3
	ld b,a			;a9f4
	add a,b			;a9f5
	jr c,la9bfh		;a9f6
	add a,e			;a9f8
	rst 38h			;a9f9
	rst 38h			;a9fa
	rst 38h			;a9fb
	ret pe			;a9fc
	rst 38h			;a9fd
	rla			;a9fe
	ret pe			;a9ff
	ret z			;aa00
	ccf			;aa01
	jr nc,laa04h		;aa02
laa04h:
	adc a,l			;aa04
	nop			;aa05
	ld (hl),d		;aa06
	adc a,l			;aa07
	dec c			;aa08
	rst 38h			;aa09
	rst 38h			;aa0a
	rst 38h			;aa0b
	ld b,a			;aa0c
	rst 38h			;aa0d
	inc a			;aa0e
	rst 38h			;aa0f
	ld a,a			;aa10
	rst 38h			;aa11
	add a,c			;aa12
	nop			;aa13
	ld a,b			;aa14
	add a,b			;aa15
	ld l,a			;aa16
	sub b			;aa17
	ld b,b			;aa18
	rst 38h			;aa19
	jr $-23			;aa1a
	rst 38h			;aa1c
	ei			;aa1d
	rst 38h			;aa1e
	rst 38h			;aa1f
	rst 38h			;aa20
	rst 38h			;aa21
	ld sp,hl		;aa22
	rst 38h			;aa23
	rst 38h			;aa24
	rst 38h			;aa25
	rst 38h			;aa26
	rst 38h			;aa27
	rst 38h			;aa28
	rst 38h			;aa29
	rst 38h			;aa2a
	rst 38h			;aa2b
	rst 38h			;aa2c
	rst 38h			;aa2d
	rst 38h			;aa2e
	rst 38h			;aa2f
	rst 38h			;aa30
	rst 38h			;aa31
	rrca			;aa32
	rst 38h			;aa33
	ret nz			;aa34
	rst 38h			;aa35
	rst 38h			;aa36
	rst 38h			;aa37
	rst 38h			;aa38
	rst 38h			;aa39
	rst 38h			;aa3a
	rst 38h			;aa3b
laa3ch:
	rst 38h			;aa3c
	rst 38h			;aa3d
	rst 38h			;aa3e
	rst 38h			;aa3f
	rst 38h			;aa40
	rst 38h			;aa41
	call p,0ffffh		;aa42
	rst 38h			;aa45
	sub a			;aa46
	rst 38h			;aa47
	rst 38h			;aa48
	rst 38h			;aa49
	rst 38h			;aa4a
	rst 38h			;aa4b
	rst 38h			;aa4c
	rst 38h			;aa4d
	rst 38h			;aa4e
	rst 38h			;aa4f
	rst 38h			;aa50
	rst 38h			;aa51
	adc a,d			;aa52
	ld (hl),l		;aa53
	ret nz			;aa54
	rst 38h			;aa55
	call m,0fdffh		;aa56
	cp 0feh			;aa59
	rst 38h			;aa5b
	defb 0fdh,0ffh,0fah ;illegal sequence	;aa5c
	defb 0fdh,0fdh,0ffh ;illegal sequence	;aa5f
	ret nz			;aa62
	nop			;aa63
	ccf			;aa64
	ret nz			;aa65
	adc a,h			;aa66
	di			;aa67
	cpl			;aa68
	ret nc			;aa69
	ld (hl),c		;aa6a
	adc a,(hl)		;aa6b
	ld b,b			;aa6c
	cp a			;aa6d
	sbc a,e			;aa6e
	ld a,h			;aa6f
	ex af,af'		;aa70
	rst 38h			;aa71
	jp z,04b07h		;aa72
	add a,a			;aa75
	rlc a			;aa76
	ld c,e			;aa78
	add a,a			;aa79
	call nz,0e303h		;aa7a
	nop			;aa7d
	ld (hl),b		;aa7e
	add a,b			;aa7f
	ret c			;aa80
	nop			;aa81
	ret z			;aa82
	ret p			;aa83
	jp pe,0eaf0h		;aa84
	ret p			;aa87
	xor e			;aa88
	ret p			;aa89
	jp nc,034e1h		;aa8a
	jp 00384h		;aa8d
	dec bc			;aa90
	inc b			;aa91
	sbc a,e			;aa92
	rlca			;aa93
	call p,08903h		;aa94
	halt			;aa97
	or (hl)			;aa98
	ld a,a			;aa99
	ld l,a			;aa9a
	rst 38h			;aa9b
	rst 10h			;aa9c
	rst 28h			;aa9d
	xor e			;aa9e
	rst 30h			;aa9f
	ld d,a			;aaa0
	cp a			;aaa1
	ret			;aaa2
	rst 30h			;aaa3
	scf			;aaa4
	rst 8			;aaa5
	adc a,a			;aaa6
	ld a,a			;aaa7
	ld a,a			;aaa8
	rst 38h			;aaa9
	rst 38h			;aaaa
	rst 38h			;aaab
	rst 38h			;aaac
	rst 38h			;aaad
	rst 38h			;aaae
	rst 38h			;aaaf
	rst 38h			;aab0
	rst 38h			;aab1
	rst 38h			;aab2
	rst 38h			;aab3
	rst 38h			;aab4
	rst 38h			;aab5
	rst 38h			;aab6
	rst 38h			;aab7
	rst 38h			;aab8
	rst 38h			;aab9
	rst 38h			;aaba
	rst 38h			;aabb
	rst 38h			;aabc
	rst 38h			;aabd
	rst 38h			;aabe
	rst 38h			;aabf
	rst 38h			;aac0
	rst 38h			;aac1
	rst 38h			;aac2
	rst 38h			;aac3
	rst 38h			;aac4
	rst 38h			;aac5
	ret m			;aac6
	rst 38h			;aac7
	ret m			;aac8
	rst 38h			;aac9
	di			;aaca
	rst 38h			;aacb
	rst 38h			;aacc
	rst 38h			;aacd
	rst 38h			;aace
	rst 38h			;aacf
	rst 38h			;aad0
	rst 38h			;aad1
	rst 38h			;aad2
	rst 38h			;aad3
	rst 38h			;aad4
	rst 38h			;aad5
	ld bc,033ffh		;aad6
	rst 38h			;aad9
	rst 38h			;aada
	rst 38h			;aadb
	ret p			;aadc
	rst 38h			;aadd
	rst 28h			;aade
	ret p			;aadf
	ret c			;aae0
	rst 20h			;aae1
	ld sp,hl		;aae2
	rst 38h			;aae3
	rst 38h			;aae4
	rst 38h			;aae5
	rst 38h			;aae6
	rst 38h			;aae7
	rst 38h			;aae8
	rst 38h			;aae9
	call m,0f3ffh		;aaea
	rst 38h			;aaed
	ld l,a			;aaee
	rst 38h			;aaef
	ld a,b			;aaf0
	rst 38h			;aaf1
	sub 0f9h		;aaf2
	ld sp,hl		;aaf4
	rst 38h			;aaf5
	rst 38h			;aaf6
	rst 38h			;aaf7
	xor a			;aaf8
	rst 38h			;aaf9
	rst 38h			;aafa
	rst 38h			;aafb
	pop bc			;aafc
	rst 38h			;aafd
	ld a,0c1h		;aafe
	ld a,a			;ab00
	add a,b			;ab01
	ccf			;ab02
	rst 38h			;ab03
	rst 38h			;ab04
	rst 38h			;ab05
	rst 38h			;ab06
	rst 38h			;ab07
	rst 38h			;ab08
	rst 38h			;ab09
	rst 38h			;ab0a
	rst 38h			;ab0b
	rst 30h			;ab0c
	rst 38h			;ab0d
	xor e			;ab0e
	rst 30h			;ab0f
	ld d,a			;ab10
	cp a			;ab11
	rst 38h			;ab12
	rst 38h			;ab13
	rst 38h			;ab14
	rst 38h			;ab15
	rst 38h			;ab16
	rst 38h			;ab17
	rst 38h			;ab18
	rst 38h			;ab19
	rst 38h			;ab1a
	rst 38h			;ab1b
	rst 38h			;ab1c
	rst 38h			;ab1d
	rst 38h			;ab1e
	rst 38h			;ab1f
	rra			;ab20
	rst 38h			;ab21
	rst 38h			;ab22
	rst 38h			;ab23
	rst 38h			;ab24
	rst 38h			;ab25
	rst 38h			;ab26
	rst 38h			;ab27
	rst 38h			;ab28
	rst 38h			;ab29
	rst 38h			;ab2a
	rst 38h			;ab2b
	rst 38h			;ab2c
	rst 38h			;ab2d
	rst 38h			;ab2e
	rst 38h			;ab2f
	inc hl			;ab30
	rst 38h			;ab31
	rst 38h			;ab32
	rst 38h			;ab33
	rst 38h			;ab34
	rst 38h			;ab35
	rst 38h			;ab36
	rst 38h			;ab37
	rst 38h			;ab38
	rst 38h			;ab39
	push hl			;ab3a
	rst 38h			;ab3b
	sbc a,a			;ab3c
	rst 38h			;ab3d
	cp 0ffh			;ab3e
	ld bc,0fffeh		;ab40
	rst 38h			;ab43
	rst 38h			;ab44
	rst 38h			;ab45
	rst 38h			;ab46
	rst 38h			;ab47
	ld e,(hl)		;ab48
	rst 38h			;ab49
	rst 8			;ab4a
	rst 38h			;ab4b
	sbc a,h			;ab4c
	rst 38h			;ab4d
	ld (hl),b		;ab4e
	rst 38h			;ab4f
	adc a,a			;ab50
	ld (hl),b		;ab51
	defb 0fdh,0feh,0c9h ;illegal sequence	;ab52
	cp 0e0h			;ab55
	rst 38h			;ab57
	rst 0			;ab58
	ret m			;ab59
	ld a,0c0h		;ab5a
	pop de			;ab5c
	nop			;ab5d
	sub b			;ab5e
	inc bc			;ab5f
	ld a,l			;ab60
	add a,d			;ab61
	xor 000h		;ab62
	ld a,a			;ab64
	add a,b			;ab65
	ret z			;ab66
	nop			;ab67
	nop			;ab68
	nop			;ab69
	nop			;ab6a
	nop			;ab6b
	ld h,b			;ab6c
	nop			;ab6d
	ret nz			;ab6e
	nop			;ab6f
	add a,h			;ab70
	nop			;ab71
	call p,0db03h		;ab72
	inc h			;ab75
	and h			;ab76
	nop			;ab77
	nop			;ab78
	nop			;ab79
lab7ah:
	nop			;ab7a
	nop			;ab7b
	nop			;ab7c
	nop			;ab7d
	add hl,de		;ab7e
	nop			;ab7f
	ld h,(hl)		;ab80
	jr $-66			;ab81
	rst 38h			;ab83
	and l			;ab84
	ld a,(hl)		;ab85
	ld e,d			;ab86
	daa			;ab87
	inc h			;ab88
	inc bc			;ab89
	inc bc			;ab8a
	nop			;ab8b
	ld h,d			;ab8c
	inc b			;ab8d
	sub c			;ab8e
	ld c,06ch		;ab8f
	inc bc			;ab91
	add hl,hl		;ab92
	rst 18h			;ab93
	sbc a,a			;ab94
	ld a,a			;ab95
	ld a,l			;ab96
	rst 8			;ab97
	ld c,(hl)		;ab98
	add a,l			;ab99
	add a,l			;ab9a
	nop			;ab9b
	adc a,005h		;ab9c
	add hl,sp		;ab9e
	rst 8			;ab9f
	ld h,a			;aba0
	sbc a,b			;aba1
	rst 38h			;aba2
	rst 38h			;aba3
	rst 38h			;aba4
	rst 38h			;aba5
	ld a,a			;aba6
	rst 38h			;aba7
	sbc a,07fh		;aba8
	ld c,b			;abaa
	ld a,a			;abab
	sub a			;abac
	ld a,b			;abad
	ret m			;abae
	djnz labc8h		;abaf
labb1h:
	ex af,af'		;abb1
	defb 0fdh,0feh,0c9h ;illegal sequence	;abb2
	cp 0e0h			;abb5
	rst 38h			;abb7
	rst 0			;abb8
	ret m			;abb9
	ld a,0c0h		;abba
	ld d,c			;abbc
	add a,b			;abbd
	sub b			;abbe
	inc bc			;abbf
	ld l,l			;abc0
	sub d			;abc1
	rst 8			;abc2
	rst 38h			;abc3
	or a			;abc4
	rst 8			;abc5
	ld c,d			;abc6
	add a,a			;abc7
labc8h:
	xor l			;abc8
	ld b,d			;abc9
	ld d,d			;abca
	jr nz,lab7ah		;abcb
	ld (hl),d		;abcd
	ld h,b			;abce
	rst 38h			;abcf
	out (0fch),a		;abd0
	rst 38h			;abd2
	rst 38h			;abd3
	cp 0ffh			;abd4
	defb 0fdh,0feh,01eh ;illegal sequence	;abd6
	rst 38h			;abd9
	rst 18h			;abda
	ccf			;abdb
	and a			;abdc
	rra			;abdd
	ld a,d			;abde
	add a,a			;abdf
	push hl			;abe0
	ld e,0d7h		;abe1
	rst 28h			;abe3
	cpl			;abe4
	rst 18h			;abe5
	rst 30h			;abe6
	rrca			;abe7
	jr c,labb1h		;abe8
	rst 8			;abea
	ret p			;abeb
	ccf			;abec
	ret nz			;abed
	ld a,(hl)		;abee
	add a,c			;abef
	push hl			;abf0
	dec de			;abf1
	di			;abf2
	call m,0f0efh		;abf3
	exx			;abf6
	and 03ah		;abf7
	push bc			;abf9
	push af			;abfa
	dec bc			;abfb
	dec l			;abfc
	in a,(081h)		;abfd
	rst 38h			;abff
	rrca			;ac00
	rst 38h			;ac01
	call p,0cb0bh		;ac02
	ccf			;ac05
	ccf			;ac06
	rst 38h			;ac07
	rst 38h			;ac08
	rst 38h			;ac09
	rst 38h			;ac0a
	rst 38h			;ac0b
	call m,0f1ffh		;ac0c
	cp 0ceh			;ac0f
	ret p			;ac11
	cp h			;ac12
	rst 38h			;ac13
	ei			;ac14
	rst 38h			;ac15
	rst 38h			;ac16
	rst 38h			;ac17
	cp 0ffh			;ac18
	sbc a,c			;ac1a
	cp 06ah			;ac1b
	sbc a,h			;ac1d
	sub c			;ac1e
	ld c,008h		;ac1f
	rlca			;ac21
	ld a,e			;ac22
	rst 38h			;ac23
	rst 38h			;ac24
	rst 38h			;ac25
	ret p			;ac26
	rst 38h			;ac27
	ld b,l			;ac28
	jp m,04fb1h		;ac29
lac2ch:
	ld c,a			;ac2c
	ccf			;ac2d
	cp (hl)			;ac2e
	ld a,a			;ac2f
	ld (hl),a		;ac30
	rst 38h			;ac31
	cp a			;ac32
	rst 38h			;ac33
	rst 38h			;ac34
	rst 38h			;ac35
	sbc a,a			;ac36
	rst 38h			;ac37
	ld l,c			;ac38
	sbc a,a			;ac39
	add a,(hl)		;ac3a
lac3bh:
	ld sp,hl		;ac3b
	exx			;ac3c
	rst 38h			;ac3d
	cp 0ffh			;ac3e
	rst 38h			;ac40
	rst 38h			;ac41
	rst 38h			;ac42
	rst 38h			;ac43
	rst 38h			;ac44
	rst 38h			;ac45
	rst 38h			;ac46
	rst 38h			;ac47
	rst 38h			;ac48
	rst 38h			;ac49
	ld a,a			;ac4a
	rst 38h			;ac4b
	and a			;ac4c
	rst 38h			;ac4d
	inc sp			;ac4e
	rst 8			;ac4f
	jp 0dcffh		;ac50
	inc hl			;ac53
	ld (080ffh),hl		;ac54
	rst 38h			;ac57
	ld a,(hl)		;ac58
	add a,c			;ac59
	add a,c			;ac5a
	nop			;ac5b
	nop			;ac5c
	nop			;ac5d
	nop			;ac5e
	nop			;ac5f
	ret nz			;ac60
	nop			;ac61
	jr nz,$+1		;ac62
lac64h:
	adc a,03fh		;ac64
	ccf			;ac66
	rst 38h			;ac67
	ld (bc),a		;ac68
	rst 38h			;ac69
	defb 0fdh,002h,006h ;illegal sequence	;ac6a
	nop			;ac6d
	nop			;ac6e
	nop			;ac6f
	nop			;ac70
	nop			;ac71
	jr c,lac3bh		;ac72
	ld b,e			;ac74
	call m,0f6f9h		;ac75
	ld (bc),a		;ac78
	call m,01ee1h		;ac79
	rra			;ac7c
	nop			;ac7d
	nop			;ac7e
	nop			;ac7f
	nop			;ac80
	nop			;ac81
	jr lac64h		;ac82
	ld (hl),c		;ac84
	add a,b			;ac85
	adc a,(hl)		;ac86
	ld bc,00877h		;ac87
	cp b			;ac8a
	ld b,b			;ac8b
	ret po			;ac8c
	nop			;ac8d
	nop			;ac8e
	nop			;ac8f
	nop			;ac90
	nop			;ac91
	ld de,0e7e0h		;ac92
	nop			;ac95
	ex af,af'		;ac96
	rlca			;ac97
	ld d,00fh		;ac98
	ld hl,0161eh		;ac9a
	ex af,af'		;ac9d
	ld e,b			;ac9e
	nop			;ac9f
laca0h:
	rlca			;aca0
	nop			;aca1
	sub d			;aca2
	inc c			;aca3
	ld h,l			;aca4
	sbc a,(hl)		;aca5
	adc a,b			;aca6
	rst 38h			;aca7
	ld b,a			;aca8
	ret m			;aca9
	cp b			;acaa
	ld b,b			;acab
	ld b,b			;acac
	nop			;acad
	nop			;acae
	nop			;acaf
	add a,b			;acb0
	nop			;acb1
	add a,c			;acb2
	ld a,(hl)		;acb3
	ld e,0e1h		;acb4
	ld a,c			;acb6
	add a,b			;acb7
	add a,b			;acb8
	nop			;acb9
	nop			;acba
	nop			;acbb
	inc bc			;acbc
	nop			;acbd
	ld a,001h		;acbe
	ret nz			;acc0
	ccf			;acc1
	jp m,0fc05h		;acc2
	inc bc			;acc5
	rlca			;acc6
	nop			;acc7
	nop			;acc8
	nop			;acc9
	rrca			;acca
	nop			;accb
	ret p			;accc
	rrca			;accd
	nop			;acce
	rst 38h			;accf
	rst 38h			;acd0
	rst 38h			;acd1
	sbc a,c			;acd2
	nop			;acd3
	ld h,(hl)		;acd4
	sbc a,c			;acd5
	ret po			;acd6
	rra			;acd7
	or (hl)			;acd8
	add hl,bc		;acd9
	jp (hl)			;acda
	nop			;acdb
	ret nz			;acdc
	nop			;acdd
	jr nc,laca0h		;acde
	adc a,a			;ace0
	ret p			;ace1
	call pe,02213h		;ace2
	rst 38h			;ace5
	add a,b			;ace6
	rst 38h			;ace7
	ld a,(hl)		;ace8
	add a,c			;ace9
	add a,c			;acea
	nop			;aceb
	nop			;acec
	nop			;aced
	nop			;acee
	nop			;acef
	ret nz			;acf0
	nop			;acf1
	ld (de),a		;acf2
	rst 38h			;acf3
	defb 0fdh,0feh,0c2h ;illegal sequence	;acf4
	call m,0c03dh		;acf7
	pop bc			;acfa
	nop			;acfb
	ld (bc),a		;acfc
	ld bc,00305h		;acfd
lad00h:
	inc b			;ad00
	inc bc			;ad01
	inc l			;ad02
	ret nc			;ad03
	ret nc			;ad04
	nop			;ad05
	inc bc			;ad06
	nop			;ad07
	call nz,03903h		;ad08
	add a,0b1h		;ad0b
	adc a,048h		;ad0d
	add a,a			;ad0f
	daa			;ad10
	ret nz			;ad11
	jr nc,lad14h		;ad12
lad14h:
	dec bc			;ad14
	nop			;ad15
	ld (bc),a		;ad16
	ld bc,000ffh		;ad17
	ld a,b			;ad1a
	nop			;ad1b
	nop			;ad1c
	nop			;ad1d
	add a,c			;ad1e
	nop			;ad1f
	add a,d			;ad20
	ld bc,la34dh		;ad21
	exx			;ad24
	daa			;ad25
	and (hl)		;ad26
	ld b,c			;ad27
	ld b,c			;ad28
	nop			;ad29
	ld a,001h		;ad2a
	ld b,b			;ad2c
	ccf			;ad2d
	sbc a,(hl)		;ad2e
	ld a,a			;ad2f
	ld l,a			;ad30
	rst 38h			;ad31
	jr nz,$+1		;ad32
	call 012f2h		;ad34
	ret po			;ad37
	ld l,b			;ad38
	add a,b			;ad39
	add a,b			;ad3a
	nop			;ad3b
	ld b,b			;ad3c
	add a,b			;ad3d
	jr c,lad00h		;ad3e
lad40h:
	adc a,h			;ad40
	ret p			;ad41
	sub e			;ad42
	rrca			;ad43
	ld h,a			;ad44
	sbc a,a			;ad45
	adc a,b			;ad46
	rst 38h			;ad47
	ld b,a			;ad48
	ret m			;ad49
	cp b			;ad4a
	ld b,b			;ad4b
	ld b,b			;ad4c
	nop			;ad4d
	nop			;ad4e
	nop			;ad4f
	add a,b			;ad50
	nop			;ad51
	pop bc			;ad52
	rst 38h			;ad53
	sbc a,(hl)		;ad54
	pop hl			;ad55
	ld a,c			;ad56
	add a,b			;ad57
	add a,b			;ad58
	nop			;ad59
	nop			;ad5a
	nop			;ad5b
	inc bc			;ad5c
	nop			;ad5d
	ld a,001h		;ad5e
	pop bc			;ad60
	ccf			;ad61
	inc bc			;ad62
	ei			;ad63
	ret m			;ad64
	rlca			;ad65
	rlca			;ad66
	nop			;ad67
	nop			;ad68
	nop			;ad69
	rrca			;ad6a
	nop			;ad6b
	ret p			;ad6c
	rrca			;ad6d
	inc b			;ad6e
	rst 38h			;ad6f
	rst 38h			;ad70
	rst 38h			;ad71
	sbc a,0ffh		;ad72
	rlca			;ad74
	rst 38h			;ad75
	ret po			;ad76
	rra			;ad77
lad78h:
	or (hl)			;ad78
	add hl,bc		;ad79
	jp (hl)			;ad7a
	nop			;ad7b
	ret nz			;ad7c
	nop			;ad7d
	jr nc,lad40h		;ad7e
	rst 8			;ad80
	ret p			;ad81
	ld a,0c0h		;ad82
	jp 07cfch		;ad84
	rst 38h			;ad87
	call m,00303h		;ad88
	nop			;ad8b
	nop			;ad8c
	nop			;ad8d
	nop			;ad8e
	nop			;ad8f
	ret p			;ad90
	nop			;ad91
	nop			;ad92
	nop			;ad93
	ret po			;ad94
	nop			;ad95
	jr lad78h		;ad96
	call po,074f8h		;ad98
	ret m			;ad9b
	xor b			;ad9c
	ld (hl),b		;ad9d
	ld d,b			;ad9e
	jr nz,ladc1h		;ad9f
	nop			;ada1
	nop			;ada2
	nop			;ada3
	nop			;ada4
	nop			;ada5
	nop			;ada6
	nop			;ada7
	nop			;ada8
	nop			;ada9
	nop			;adaa
	nop			;adab
	ld b,b			;adac
	nop			;adad
	jr nz,ladb0h		;adae
ladb0h:
	jr nc,ladb2h		;adb0
ladb2h:
	nop			;adb2
	nop			;adb3
	nop			;adb4
	nop			;adb5
	nop			;adb6
	nop			;adb7
	ld a,h			;adb8
	nop			;adb9
	jp nz,0813ch		;adba
	ld a,(hl)		;adbd
	jp 06e3ch		;adbe
ladc1h:
	djnz ladd0h		;adc1
	ld (bc),a		;adc3
	ld (hl),c		;adc4
	ld c,0aah		;adc5
	inc e			;adc7
	inc h			;adc8
	jr lade3h		;adc9
	nop			;adcb
	inc c			;adcc
	nop			;adcd
	nop			;adce
	nop			;adcf
ladd0h:
	jr nz,ladd2h		;add0
ladd2h:
	add a,e			;add2
	nop			;add3
	inc c			;add4
	inc bc			;add5
	ld sp,0470fh		;add6
	ccf			;add9
	sbc a,l			;adda
	ld a,a			;addb
	adc a,d			;addc
	ld a,a			;addd
	ld b,c			;adde
	ld a,03ch		;addf
	nop			;ade1
	rra			;ade2
lade3h:
	rst 38h			;ade3
	ld (hl),b		;ade4
	rst 38h			;ade5
	rst 0			;ade6
	ret m			;ade7
	ret c			;ade8
	rst 20h			;ade9
	or l			;adea
	adc a,057h		;adeb
	adc a,h			;aded
	sub d			;adee
	inc c			;adef
	inc a			;adf0
	nop			;adf1
	sbc a,a			;adf2
	rst 38h			;adf3
	ld l,a			;adf4
	sub c			;adf5
	ld (de),a		;adf6
	pop hl			;adf7
	ld h,l			;adf8
	add a,e			;adf9
	add a,l			;adfa
	inc bc			;adfb
	ld (bc),a		;adfc
	ld bc,00001h		;adfd
	nop			;ae00
	nop			;ae01
lae02h:
	jr nz,$+1		;ae02
	rst 18h			;ae04
	ccf			;ae05
	jr c,$+1		;ae06
	di			;ae08
	call m,0f0cch		;ae09
	or b			;ae0c
	ret nz			;ae0d
	ld b,e			;ae0e
	add a,b			;ae0f
lae10h:
	call nz,03e03h		;ae10
	ret nz			;ae13
	call 002f2h		;ae14
	or c			;ae17
	defb 0fdh,002h,003h ;illegal sequence	;ae18
	nop			;ae1b
	nop			;ae1c
	nop			;ae1d
	ret m			;ae1e
	nop			;ae1f
	ld b,0f8h		;ae20
	add a,e			;ae22
	nop			;ae23
	ret p			;ae24
	nop			;ae25
	adc a,(hl)		;ae26
	ld (hl),b		;ae27
	ld h,c			;ae28
	ld e,0d2h		;ae29
	rrca			;ae2b
	xor l			;ae2c
	ld b,e			;ae2d
	ld e,d			;ae2e
	ld hl,01825h		;ae2f
	ret nz			;ae32
	nop			;ae33
	djnz lae36h		;ae34
lae36h:
	ld e,b			;ae36
	nop			;ae37
	ld sp,hl		;ae38
	nop			;ae39
	inc hl			;ae3a
	ret nz			;ae3b
	ld b,c			;ae3c
	add a,b			;ae3d
	ld b,c			;ae3e
	add a,b			;ae3f
	jr c,lae02h		;ae40
	inc b			;ae42
	inc bc			;ae43
	inc b			;ae44
	inc bc			;ae45
	jp po,03101h		;ae46
	ret nz			;ae49
	ld c,c			;ae4a
	ret p			;ae4b
	ld c,b			;ae4c
	ret p			;ae4d
	jr nc,lae10h		;ae4e
	ret nz			;ae50
	nop			;ae51
	cp a			;ae52
	rst 38h			;ae53
	cp a			;ae54
	rst 38h			;ae55
	rst 18h			;ae56
	rst 38h			;ae57
	ld l,a			;ae58
	rst 38h			;ae59
	add a,l			;ae5a
	ld a,a			;ae5b
	ld c,b			;ae5c
	scf			;ae5d
	daa			;ae5e
	nop			;ae5f
	ld b,b			;ae60
	nop			;ae61
	add a,0f8h		;ae62
	ex (sp),hl		;ae64
	call m,0fcf3h		;ae65
	di			;ae68
	call m,0fcc2h		;ae69
	inc e			;ae6c
	ret po			;ae6d
	ret po			;ae6e
	nop			;ae6f
	inc bc			;ae70
	nop			;ae71
	dec c			;ae72
	ld (bc),a		;ae73
lae74h:
	ld (hl),c		;ae74
	ld c,02ah		;ae75
	inc e			;ae77
	inc h			;ae78
	jr lae93h		;ae79
	nop			;ae7b
	inc c			;ae7c
	nop			;ae7d
	nop			;ae7e
	nop			;ae7f
	nop			;ae80
	nop			;ae81
	add a,e			;ae82
	nop			;ae83
	inc c			;ae84
	inc bc			;ae85
	inc sp			;ae86
	rrca			;ae87
	ld c,a			;ae88
	ccf			;ae89
	sbc a,l			;ae8a
	ld a,a			;ae8b
	sbc a,d			;ae8c
	ld a,a			;ae8d
	ld b,c			;ae8e
	ld a,03ch		;ae8f
	nop			;ae91
	ccf			;ae92
lae93h:
	rst 38h			;ae93
	ret p			;ae94
	rst 38h			;ae95
	rst 0			;ae96
	ret m			;ae97
	ret c			;ae98
	rst 20h			;ae99
	or l			;ae9a
	adc a,057h		;ae9b
	adc a,h			;ae9d
	sub d			;ae9e
	inc c			;ae9f
	inc a			;aea0
	nop			;aea1
	ret m			;aea2
	rst 38h			;aea3
	rst 38h			;aea4
	ccf			;aea5
	ret nz			;aea6
	rst 38h			;aea7
	cp a			;aea8
	ret nz			;aea9
	ld b,h			;aeaa
	add a,b			;aeab
	add a,b			;aeac
	nop			;aead
	add a,b			;aeae
	nop			;aeaf
	add a,a			;aeb0
	nop			;aeb1
	jr nc,lae74h		;aeb2
	ret nz			;aeb4
	nop			;aeb5
	nop			;aeb6
	nop			;aeb7
	nop			;aeb8
	nop			;aeb9
	nop			;aeba
	nop			;aebb
	inc b			;aebc
	nop			;aebd
	jr laec0h		;aebe
laec0h:
	nop			;aec0
	nop			;aec1
	jr nz,laec4h		;aec2
laec4h:
	ld d,b			;aec4
	jr nz,$+122		;aec5
	nop			;aec7
	nop			;aec8
	nop			;aec9
	nop			;aeca
	nop			;aecb
	nop			;aecc
	nop			;aecd
laeceh:
	nop			;aece
	nop			;aecf
	inc bc			;aed0
	nop			;aed1
	sub c			;aed2
	nop			;aed3
	ld l,(hl)		;aed4
	ld de,02e51h		;aed5
	ld l,000h		;aed8
	ld (bc),a		;aeda
	nop			;aedb
	ld bc,00000h		;aedc
	nop			;aedf
	ret po			;aee0
	nop			;aee1
	ld l,b			;aee2
	nop			;aee3
	ret z			;aee4
	nop			;aee5
	sub h			;aee6
	ex af,af'		;aee7
	inc d			;aee8
	ex af,af'		;aee9
	inc h			;aeea
	jr laf11h		;aeeb
	jr laf11h		;aeed
	inc e			;aeef
	dec e			;aef0
	nop			;aef1
	inc de			;aef2
	nop			;aef3
	inc e			;aef4
	inc bc			;aef5
	inc bc			;aef6
	nop			;aef7
	nop			;aef8
	nop			;aef9
	nop			;aefa
	nop			;aefb
	nop			;aefc
	nop			;aefd
	nop			;aefe
laeffh:
	nop			;aeff
	nop			;af00
	nop			;af01
	nop			;af02
	nop			;af03
	rst 38h			;af04
	nop			;af05
	add a,a			;af06
	ld a,b			;af07
	ld a,b			;af08
	nop			;af09
	nop			;af0a
	nop			;af0b
	nop			;af0c
	nop			;af0d
	inc bc			;af0e
	nop			;af0f
	sbc a,a			;af10
laf11h:
	nop			;af11
	call p,0d400h		;af12
	ex af,af'		;af15
	jr z,laf28h		;af16
	jr z,laf2ah		;af18
	ld c,b			;af1a
	jr nc,laeceh		;af1b
	ld b,b			;af1d
	pop de			;af1e
	nop			;af1f
	or e			;af20
	nop			;af21
	ld bc,00e00h		;af22
	ld bc,00815h		;af25
laf28h:
	dec de			;af28
	nop			;af29
laf2ah:
	ld (hl),c		;af2a
	nop			;af2b
	ret c			;af2c
	nop			;af2d
	adc a,b			;af2e
	nop			;af2f
	jr nc,laf32h		;af30
laf32h:
	adc a,b			;af32
	rlca			;af33
	adc a,c			;af34
	rlca			;af35
	adc a,c			;af36
	rlca			;af37
	adc a,h			;af38
	inc bc			;af39
	ld b,(hl)		;af3a
	add a,c			;af3b
	ld d,c			;af3c
	nop			;af3d
	jr nz,laf40h		;af3e
laf40h:
	nop			;af40
	nop			;af41
	ld sp,hl		;af42
	cp 0feh			;af43
	rst 38h			;af45
	rst 38h			;af46
	rst 38h			;af47
	rst 38h			;af48
	rst 38h			;af49
	inc a			;af4a
	rst 38h			;af4b
	add a,b			;af4c
	ld a,a			;af4d
	rst 20h			;af4e
	jr laf8dh		;af4f
	nop			;af51
	inc d			;af52
	ex af,af'		;af53
	sub d			;af54
	inc c			;af55
	ld c,d			;af56
	add a,h			;af57
	ld c,d			;af58
	add a,h			;af59
	ld c,d			;af5a
	add a,h			;af5b
	call z,08400h		;af5c
	ex af,af'		;af5f
	jr laf62h		;af60
laf62h:
	add a,h			;af62
	ld a,b			;af63
	ld d,h			;af64
	jr c,laf9fh		;af65
	nop			;af67
	jr laf6ah		;af68
laf6ah:
	nop			;af6a
	nop			;af6b
	ld bc,04200h		;af6c
	nop			;af6f
	jr nz,laf72h		;af70
laf72h:
	ld bc,00f00h		;af72
	nop			;af75
	dec d			;af76
	ex af,af'		;af77
	dec de			;af78
	nop			;af79
	ld sp,01800h		;af7a
	nop			;af7d
	inc sp			;af7e
	nop			;af7f
	ld c,h			;af80
	jr nc,laf8bh		;af81
	nop			;af83
	jp z,09500h		;af84
	ld a,(bc)		;af87
	ld a,(bc)		;af88
	rlca			;af89
	dec bc			;af8a
laf8bh:
	rlca			;af8b
	inc d			;af8c
laf8dh:
	rrca			;af8d
	ld (01d1dh),hl		;af8e
	nop			;af91
	dec l			;af92
	ld (bc),a		;af93
	jp nc,0072fh		;af94
	rst 38h			;af97
	call m,0e3ffh		;af98
	call m,0e09ch		;af9b
	ld h,b			;af9e
laf9fh:
	add a,b			;af9f
	nop			;afa0
	nop			;afa1
	add a,b			;afa2
	nop			;afa3
	ret nz			;afa4
	nop			;afa5
	ld b,b			;afa6
	add a,b			;afa7
	ret nz			;afa8
	nop			;afa9
	add a,b			;afaa
	nop			;afab
	inc bc			;afac
	nop			;afad
	inc c			;afae
	inc bc			;afaf
	ld (de),a		;afb0
	rrca			;afb1
	nop			;afb2
	nop			;afb3
	nop			;afb4
	nop			;afb5
	ld bc,00e00h		;afb6
	ld bc,00e11h		;afb9
	ld e,000h		;afbc
	sub b			;afbe
	nop			;afbf
	and b			;afc0
	nop			;afc1
	ld (hl),b		;afc2
	nop			;afc3
	ld e,000h		;afc4
	pop hl			;afc6
	nop			;afc7
	nop			;afc8
	ret nz			;afc9
	ret po			;afca
	nop			;afcb
	ld e,h			;afcc
	jr nz,lb007h		;afcd
	nop			;afcf
	ld b,b			;afd0
	nop			;afd1
	nop			;afd2
	nop			;afd3
	nop			;afd4
	nop			;afd5
	ret nz			;afd6
	nop			;afd7
	ld (hl),h		;afd8
	nop			;afd9
lafdah:
	jr nc,lafdch		;afda
lafdch:
	jr lafdeh		;afdc
lafdeh:
	ex af,af'		;afde
	nop			;afdf
	ex af,af'		;afe0
	nop			;afe1
	inc b			;afe2
	inc bc			;afe3
	inc bc			;afe4
	nop			;afe5
	nop			;afe6
	nop			;afe7
	jr nz,lafeah		;afe8
lafeah:
	djnz lafech		;afea
lafech:
	nop			;afec
	nop			;afed
	nop			;afee
	nop			;afef
	nop			;aff0
	nop			;aff1
	nop			;aff2
	nop			;aff3
	nop			;aff4
	nop			;aff5
	nop			;aff6
	nop			;aff7
	nop			;aff8
	nop			;aff9
	nop			;affa
	nop			;affb
	nop			;affc
	nop			;affd
	nop			;affe
	nop			;afff
lb000h:
	nop			;b000
	nop			;b001
	inc c			;b002
	inc bc			;b003
	ld de,0130fh		;b004
lb007h:
	rrca			;b007
	jr lb011h		;b008
	rlca			;b00a
	nop			;b00b
	nop			;b00c
	nop			;b00d
	nop			;b00e
	nop			;b00f
	nop			;b010
lb011h:
	nop			;b011
	inc e			;b012
	ret po			;b013
	add a,h			;b014
	ret p			;b015
	ret z			;b016
	ret p			;b017
	jr nc,lafdah		;b018
	ret nz			;b01a
	nop			;b01b
	nop			;b01c
	nop			;b01d
	nop			;b01e
	nop			;b01f
	nop			;b020
	nop			;b021
	nop			;b022
	nop			;b023
	jp z,09000h		;b024
	nop			;b027
	nop			;b028
	nop			;b029
	nop			;b02a
	nop			;b02b
	nop			;b02c
	nop			;b02d
	nop			;b02e
	nop			;b02f
	nop			;b030
	nop			;b031
	ld l,000h		;b032
	djnz lb036h		;b034
lb036h:
	nop			;b036
	nop			;b037
	nop			;b038
	nop			;b039
	nop			;b03a
	nop			;b03b
	nop			;b03c
	nop			;b03d
	nop			;b03e
	nop			;b03f
	nop			;b040
	nop			;b041
	ld a,(bc)		;b042
	nop			;b043
	ld b,000h		;b044
	ex af,af'		;b046
	nop			;b047
	ld bc,00000h		;b048
	nop			;b04b
	nop			;b04c
	nop			;b04d
	nop			;b04e
	nop			;b04f
	nop			;b050
	nop			;b051
	inc (hl)		;b052
	nop			;b053
	dec hl			;b054
	inc d			;b055
	inc e			;b056
	rlca			;b057
	rra			;b058
	nop			;b059
	rlca			;b05a
	nop			;b05b
	nop			;b05c
	nop			;b05d
	nop			;b05e
	nop			;b05f
	nop			;b060
	nop			;b061
	ld h,b			;b062
	nop			;b063
	cp b			;b064
	ld b,b			;b065
	ld a,h			;b066
	add a,b			;b067
	ld h,000h		;b068
	add a,e			;b06a
	nop			;b06b
	ld h,b			;b06c
	nop			;b06d
	jr lb070h		;b06e
lb070h:
	nop			;b070
lb071h:
	nop			;b071
	nop			;b072
	nop			;b073
	nop			;b074
	nop			;b075
	add a,e			;b076
	nop			;b077
	djnz lb07ah		;b078
lb07ah:
	nop			;b07a
	nop			;b07b
	nop			;b07c
	nop			;b07d
	add a,b			;b07e
	nop			;b07f
	nop			;b080
	nop			;b081
	jr c,lb084h		;b082
lb084h:
	ld h,b			;b084
	nop			;b085
	inc b			;b086
	nop			;b087
	nop			;b088
	nop			;b089
	nop			;b08a
	nop			;b08b
	nop			;b08c
	nop			;b08d
	nop			;b08e
	nop			;b08f
	nop			;b090
	nop			;b091
	and b			;b092
	nop			;b093
	pop bc			;b094
	nop			;b095
	ld (bc),a		;b096
	ld bc,0000fh		;b097
	jr c,lb09ch		;b09a
lb09ch:
	nop			;b09c
	nop			;b09d
	nop			;b09e
	nop			;b09f
	nop			;b0a0
	nop			;b0a1
	inc h			;b0a2
	jr lb071h		;b0a3
	jr nc,lb11fh		;b0a5
	add a,b			;b0a7
	add a,b			;b0a8
	nop			;b0a9
	nop			;b0aa
	nop			;b0ab
	nop			;b0ac
	nop			;b0ad
	nop			;b0ae
	nop			;b0af
	nop			;b0b0
	nop			;b0b1
	dec l			;b0b2
	ld e,02ah		;b0b3
	inc e			;b0b5
	daa			;b0b6
	jr lb0d1h		;b0b7
	nop			;b0b9
	nop			;b0ba
	nop			;b0bb
	nop			;b0bc
	nop			;b0bd
	nop			;b0be
	nop			;b0bf
	nop			;b0c0
	nop			;b0c1
	jr nc,lb0c4h		;b0c2
lb0c4h:
	ret nz			;b0c4
	nop			;b0c5
	nop			;b0c6
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
lb0d1h:
	nop			;b0d1
	nop			;b0d2
	nop			;b0d3
	inc bc			;b0d4
	nop			;b0d5
	inc b			;b0d6
	nop			;b0d7
	nop			;b0d8
	nop			;b0d9
	nop			;b0da
	nop			;b0db
	nop			;b0dc
	nop			;b0dd
	nop			;b0de
	nop			;b0df
	nop			;b0e0
	nop			;b0e1
	jr nc,lb0e4h		;b0e2
lb0e4h:
	ret po			;b0e4
	nop			;b0e5
	nop			;b0e6
	nop			;b0e7
	nop			;b0e8
	nop			;b0e9
	nop			;b0ea
	nop			;b0eb
	nop			;b0ec
	nop			;b0ed
	nop			;b0ee
	nop			;b0ef
	nop			;b0f0
	nop			;b0f1
	add hl,sp		;b0f2
	cp 0d2h			;b0f3
	inc a			;b0f5
	dec l			;b0f6
	djnz $+52		;b0f7
	ld bc,013edh		;b0f9
	add a,c			;b0fc
	ld a,a			;b0fd
	ld d,(hl)		;b0fe
	add hl,hl		;b0ff
	add hl,sp		;b100
	nop			;b101
	dec hl			;b102
sub_b103h:
	inc b			;b103
	jp nc,0210dh		;b104
	ld e,0c2h		;b107
	inc a			;b109
	inc l			;b10a
	ret nc			;b10b
	ld d,b			;b10c
	add a,b			;b10d
	ld b,b			;b10e
	add a,b			;b10f
	push bc			;b110
	nop			;b111
	inc c			;b112
	nop			;b113
	adc a,b			;b114
	nop			;b115
	nop			;b116
	nop			;b117
	jr lb11ah		;b118
lb11ah:
	call pe,00d10h		;b11a
	ret p			;b11d
	rlca			;b11e
lb11fh:
	ret m			;b11f
	adc a,0f0h		;b120
	nop			;b122
	nop			;b123
	nop			;b124
	add a,b			;b125
	ret p			;b126
	nop			;b127
	ld b,d			;b128
	dec a			;b129
	ld l,010h		;b12a
	ld a,(de)		;b12c
	nop			;b12d
	adc a,l			;b12e
	nop			;b12f
	adc a,000h		;b130
	ld c,a			;b132
	add a,b			;b133
	ld b,a			;b134
	add a,b			;b135
	ld c,e			;b136
	add a,b			;b137
	rst 0			;b138
	nop			;b139
	adc a,b			;b13a
	nop			;b13b
	sub b			;b13c
	nop			;b13d
	inc de			;b13e
	nop			;b13f
	inc h			;b140
	inc bc			;b141
	nop			;b142
	nop			;b143
	nop			;b144
	nop			;b145
	jr nz,lb168h		;b146
	jr nz,lb16ah		;b148
	nop			;b14a
	nop			;b14b
	nop			;b14c
	nop			;b14d
	nop			;b14e
	nop			;b14f
	nop			;b150
	nop			;b151
	ld b,000h		;b152
	nop			;b154
	nop			;b155
	nop			;b156
	nop			;b157
	nop			;b158
	nop			;b159
	nop			;b15a
	nop			;b15b
	nop			;b15c
	nop			;b15d
	nop			;b15e
	nop			;b15f
	nop			;b160
	nop			;b161
	jr nc,lb164h		;b162
lb164h:
	jr nc,lb166h		;b164
lb166h:
	jr nc,lb168h		;b166
lb168h:
	nop			;b168
	nop			;b169
lb16ah:
	nop			;b16a
	nop			;b16b
	nop			;b16c
	nop			;b16d
	nop			;b16e
	nop			;b16f
	nop			;b170
	nop			;b171
	nop			;b172
	nop			;b173
	nop			;b174
	nop			;b175
	nop			;b176
	nop			;b177
	nop			;b178
	nop			;b179
	ld b,b			;b17a
	ld h,b			;b17b
	ld b,b			;b17c
	ld h,b			;b17d
	ld b,b			;b17e
	ld h,b			;b17f
	ld b,b			;b180
	ld h,b			;b181
	nop			;b182
	nop			;b183
	ld b,b			;b184
	add a,b			;b185
	ld b,b			;b186
	add a,b			;b187
	ld b,b			;b188
	add a,b			;b189
	nop			;b18a
	nop			;b18b
	nop			;b18c
	nop			;b18d
	nop			;b18e
	nop			;b18f
	nop			;b190
	nop			;b191
	nop			;b192
	nop			;b193
	nop			;b194
	nop			;b195
	nop			;b196
	nop			;b197
	nop			;b198
	nop			;b199
	nop			;b19a
	nop			;b19b
	jr lb1aeh		;b19c
	jr c,lb1d0h		;b19e
	jr c,lb1d2h		;b1a0
	ld b,b			;b1a2
	ld h,b			;b1a3
	nop			;b1a4
	nop			;b1a5
	nop			;b1a6
	nop			;b1a7
	nop			;b1a8
	nop			;b1a9
	nop			;b1aa
	nop			;b1ab
	nop			;b1ac
	nop			;b1ad
lb1aeh:
	nop			;b1ae
	nop			;b1af
	djnz $+18		;b1b0
	nop			;b1b2
	nop			;b1b3
	nop			;b1b4
	nop			;b1b5
	nop			;b1b6
	nop			;b1b7
	inc c			;b1b8
	ex af,af'		;b1b9
	inc e			;b1ba
	jr lb1d9h		;b1bb
	jr lb1dbh		;b1bd
	jr lb1ddh		;b1bf
	jr lb1fbh		;b1c1
	jr nc,lb1fdh		;b1c3
	jr nc,lb1ffh		;b1c5
	jr nc,lb201h		;b1c7
	jr nc,lb203h		;b1c9
	jr nc,lb205h		;b1cb
	jr nz,lb1efh		;b1cd
	nop			;b1cf
lb1d0h:
	nop			;b1d0
	nop			;b1d1
lb1d2h:
	nop			;b1d2
	nop			;b1d3
	nop			;b1d4
	nop			;b1d5
	nop			;b1d6
	nop			;b1d7
	nop			;b1d8
lb1d9h:
	nop			;b1d9
	nop			;b1da
lb1dbh:
	nop			;b1db
	nop			;b1dc
lb1ddh:
	nop			;b1dd
	nop			;b1de
	nop			;b1df
	ex af,af'		;b1e0
	inc c			;b1e1
	ld (bc),a		;b1e2
	inc bc			;b1e3
	ld (bc),a		;b1e4
	inc bc			;b1e5
	ld (bc),a		;b1e6
	inc bc			;b1e7
	ld (bc),a		;b1e8
	inc bc			;b1e9
	ld b,d			;b1ea
	ld h,e			;b1eb
	ld b,d			;b1ec
	ld h,e			;b1ed
	ld b,b			;b1ee
lb1efh:
	ld h,b			;b1ef
	ld b,b			;b1f0
	ld h,b			;b1f1
	inc e			;b1f2
	jr lb211h		;b1f3
	jr lb213h		;b1f5
	djnz lb209h		;b1f7
	nop			;b1f9
	nop			;b1fa
lb1fbh:
	nop			;b1fb
	nop			;b1fc
lb1fdh:
	nop			;b1fd
	nop			;b1fe
lb1ffh:
	nop			;b1ff
	nop			;b200
lb201h:
	nop			;b201
	ld (bc),a		;b202
lb203h:
	ld b,000h		;b203
lb205h:
	nop			;b205
	nop			;b206
	nop			;b207
	nop			;b208
lb209h:
	nop			;b209
	nop			;b20a
	nop			;b20b
	nop			;b20c
	nop			;b20d
	nop			;b20e
	nop			;b20f
	nop			;b210
lb211h:
	nop			;b211
	ex af,af'		;b212
lb213h:
	inc c			;b213
	ld c,b			;b214
	adc a,h			;b215
	ld c,b			;b216
	adc a,h			;b217
	ld b,b			;b218
	add a,b			;b219
	nop			;b21a
	nop			;b21b
	nop			;b21c
	nop			;b21d
	nop			;b21e
	nop			;b21f
	nop			;b220
	nop			;b221
	nop			;b222
	nop			;b223
	nop			;b224
	nop			;b225
	nop			;b226
	nop			;b227
	nop			;b228
	nop			;b229
	nop			;b22a
	nop			;b22b
	inc c			;b22c
	nop			;b22d
	inc c			;b22e
	nop			;b22f
	inc c			;b230
	nop			;b231
	nop			;b232
	nop			;b233
	ld h,b			;b234
	nop			;b235
	ld h,b			;b236
	nop			;b237
	ld h,b			;b238
	nop			;b239
	ld h,b			;b23a
	nop			;b23b
	ld h,b			;b23c
	nop			;b23d
	ld h,b			;b23e
	nop			;b23f
	ld h,b			;b240
	nop			;b241
	inc c			;b242
	nop			;b243
	nop			;b244
	nop			;b245
	nop			;b246
	nop			;b247
	nop			;b248
	nop			;b249
	nop			;b24a
	nop			;b24b
	nop			;b24c
	nop			;b24d
	nop			;b24e
	nop			;b24f
	nop			;b250
	nop			;b251
	ld h,b			;b252
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
lb25dh:
	nop			;b25d
	nop			;b25e
	nop			;b25f
lb260h:
	nop			;b260
	nop			;b261
	rst 0			;b262
	ret m			;b263
	nop			;b264
	rst 0			;b265
	ret m			;b266
	nop			;b267
	add a,(hl)		;b268
	ret m			;b269
	nop			;b26a
	ld a,(bc)		;b26b
	call p,04e00h		;b26c
	ret p			;b26f
	nop			;b270
	sbc a,(hl)		;b271
	ret po			;b272
	nop			;b273
	inc a			;b274
	ret nz			;b275
	nop			;b276
	cp h			;b277
	ret nz			;b278
	nop			;b279
	add a,d			;b27a
	rst 38h			;b27b
	nop			;b27c
	ld b,0ffh		;b27d
	nop			;b27f
	nop			;b280
	rst 38h			;b281
	nop			;b282
	nop			;b283
	rst 38h			;b284
	nop			;b285
	and b			;b286
	rst 38h			;b287
	nop			;b288
	ld b,b			;b289
	rst 38h			;b28a
	nop			;b28b
	sub h			;b28c
	rst 28h			;b28d
	nop			;b28e
	inc bc			;b28f
	call m,06c00h		;b290
	sub b			;b293
	nop			;b294
	inc e			;b295
	ret po			;b296
	nop			;b297
	sbc a,h			;b298
	ret po			;b299
	nop			;b29a
	jr c,lb25dh		;b29b
	nop			;b29d
	jr c,lb260h		;b29e
	nop			;b2a0
	ld a,b			;b2a1
	add a,b			;b2a2
	nop			;b2a3
	ret c			;b2a4
	jr nz,lb2a7h		;b2a5
lb2a7h:
	or b			;b2a7
	ld b,b			;b2a8
	nop			;b2a9
	ei			;b2aa
	nop			;b2ab
	rst 38h			;b2ac
	call po,0fb04h		;b2ad
	sbc a,e			;b2b0
	rra			;b2b1
	ret po			;b2b2
	jp po,000ffh		;b2b3
	rlca			;b2b6
	ret m			;b2b7
	nop			;b2b8
	jr c,$+1		;b2b9
	nop			;b2bb
	add a,0c7h		;b2bc
	jr c,lb2e1h		;b2be
	ld bc,00cfeh		;b2c0
	rrca			;b2c3
	ret p			;b2c4
	ld sp,0c03eh		;b2c5
	call c,000e3h		;b2c8
	ex (sp),hl		;b2cb
	rra			;b2cc
	nop			;b2cd
	inc e			;b2ce
	rst 38h			;b2cf
	nop			;b2d0
	jp p,000fdh		;b2d1
	add a,c			;b2d4
	cp 000h			;b2d5
	daa			;b2d7
	ret c			;b2d8
	nop			;b2d9
	ld b,(hl)		;b2da
	cp c			;b2db
	nop			;b2dc
	jr $-23			;b2dd
	nop			;b2df
	sub b			;b2e0
lb2e1h:
	rst 28h			;b2e1
	nop			;b2e2
	ld bc,000feh		;b2e3
	rlca			;b2e6
	ret m			;b2e7
	nop			;b2e8
	rra			;b2e9
	ret po			;b2ea
	nop			;b2eb
	rst 38h			;b2ec
	nop			;b2ed
	nop			;b2ee
	rra			;b2ef
	ret po			;b2f0
	nop			;b2f1
	ld (hl),b		;b2f2
	add a,b			;b2f3
	nop			;b2f4
	ld (hl),b		;b2f5
	add a,b			;b2f6
	nop			;b2f7
	ret po			;b2f8
	nop			;b2f9
	nop			;b2fa
	ret po			;b2fb
	nop			;b2fc
	nop			;b2fd
	ret po			;b2fe
	nop			;b2ff
	nop			;b300
	ret nz			;b301
	nop			;b302
	nop			;b303
	ret nz			;b304
	nop			;b305
	nop			;b306
	ret nz			;b307
	nop			;b308
	nop			;b309
	and c			;b30a
	add a,c			;b30b
	ld a,(hl)		;b30c
	ld b,e			;b30d
	ld b,e			;b30e
	cp h			;b30f
	add a,a			;b310
	rlca			;b311
	ret m			;b312
	sbc a,(hl)		;b313
	rra			;b314
	ret po			;b315
	ld sp,0c03eh		;b316
	call m,000ffh		;b319
	ld a,a			;b31c
	rst 38h			;b31d
	nop			;b31e
	ex af,af'		;b31f
	rst 38h			;b320
	nop			;b321
	nop			;b322
	rst 38h			;b323
	nop			;b324
	pop bc			;b325
	cp 000h			;b326
	add a,a			;b328
	ret m			;b329
	nop			;b32a
	ccf			;b32b
	ret nz			;b32c
	nop			;b32d
	cp b			;b32e
	ld b,a			;b32f
	nop			;b330
	ld b,e			;b331
	rst 38h			;b332
	nop			;b333
	call p,000ffh		;b334
	ld hl,000feh		;b337
	ld a,a			;b33a
	add a,b			;b33b
	nop			;b33c
	rst 38h			;b33d
	nop			;b33e
	nop			;b33f
	rst 38h			;b340
	nop			;b341
	nop			;b342
	rst 38h			;b343
	nop			;b344
	nop			;b345
	ccf			;b346
lb347h:
	ret nz			;b347
	nop			;b348
	ld e,0e0h		;b349
	nop			;b34b
	ld a,(hl)		;b34c
	add a,b			;b34d
	nop			;b34e
	call c,00020h		;b34f
	add a,b			;b352
	nop			;b353
	nop			;b354
	add a,b			;b355
	nop			;b356
	nop			;b357
	nop			;b358
	nop			;b359
	nop			;b35a
	nop			;b35b
	nop			;b35c
	nop			;b35d
	nop			;b35e
	nop			;b35f
	nop			;b360
	nop			;b361
	nop			;b362
	nop			;b363
	nop			;b364
	nop			;b365
	nop			;b366
	nop			;b367
	nop			;b368
	nop			;b369
	ld h,b			;b36a
	sbc a,a			;b36b
	nop			;b36c
	rra			;b36d
	ret po			;b36e
	nop			;b36f
	sub e			;b370
	call m,0c800h		;b371
	rst 38h			;b374
	nop			;b375
	jr nc,lb347h		;b376
	nop			;b378
	sbc a,a			;b379
	ret po			;b37a
	nop			;b37b
	ld b,a			;b37c
	ret m			;b37d
	nop			;b37e
	ld b,b			;b37f
	rst 38h			;b380
	nop			;b381
	rlca			;b382
	ret m			;b383
	nop			;b384
	ccf			;b385
	ret nz			;b386
	nop			;b387
	ld sp,hl		;b388
	ld b,000h		;b389
	rst 38h			;b38b
	nop			;b38c
	nop			;b38d
	rst 38h			;b38e
	nop			;b38f
	nop			;b390
	rst 38h			;b391
	nop			;b392
	nop			;b393
	rst 38h			;b394
	nop			;b395
	nop			;b396
	ld a,a			;b397
	add a,b			;b398
	nop			;b399
	cp h			;b39a
	ld b,b			;b39b
	nop			;b39c
	ret m			;b39d
	nop			;b39e
	nop			;b39f
	ret m			;b3a0
	nop			;b3a1
	nop			;b3a2
	ret p			;b3a3
	nop			;b3a4
	nop			;b3a5
	ret p			;b3a6
	nop			;b3a7
	nop			;b3a8
	ret po			;b3a9
	nop			;b3aa
	nop			;b3ab
	ret po			;b3ac
	nop			;b3ad
lb3aeh:
	nop			;b3ae
	ret nz			;b3af
	nop			;b3b0
	nop			;b3b1
	nop			;b3b2
	rst 38h			;b3b3
	nop			;b3b4
	and c			;b3b5
	cp 000h			;b3b6
	rst 8			;b3b8
	ret p			;b3b9
	nop			;b3ba
	sub e			;b3bb
	call pe,04100h		;b3bc
	cp 000h			;b3bf
	ld l,0ffh		;b3c1
	nop			;b3c3
	sub c			;b3c4
	pop af			;b3c5
	ld c,055h		;b3c6
	ld (hl),c		;b3c8
	adc a,(hl)		;b3c9
	inc bc			;b3ca
	call m,0ff00h		;b3cb
	nop			;b3ce
	nop			;b3cf
	rst 38h			;b3d0
	nop			;b3d1
	nop			;b3d2
	cp 000h			;b3d3
	nop			;b3d5
	cp 000h			;b3d6
	nop			;b3d8
	call m,00000h		;b3d9
	ld a,b			;b3dc
	add a,b			;b3dd
	nop			;b3de
	ld a,b			;b3df
	add a,b			;b3e0
	nop			;b3e1
	add hl,hl		;b3e2
	add hl,sp		;b3e3
	add a,0aeh		;b3e4
	ccf			;b3e6
	ret nz			;b3e7
	and c			;b3e8
	ld a,0c0h		;b3e9
	daa			;b3eb
	jr c,lb3aeh		;b3ec
	ld c,e			;b3ee
	ld a,h			;b3ef
	add a,b			;b3f0
	sub e			;b3f1
	call pe,03f00h		;b3f2
	ret nz			;b3f5
	nop			;b3f6
	cp 000h			;b3f7
	nop			;b3f9
	ld (hl),b		;b3fa
	add a,b			;b3fb
	nop			;b3fc
	ret po			;b3fd
	nop			;b3fe
	nop			;b3ff
	ret po			;b400
	nop			;b401
	nop			;b402
	ret nz			;b403
	nop			;b404
	nop			;b405
	add a,b			;b406
	nop			;b407
	nop			;b408
	add a,b			;b409
	nop			;b40a
	nop			;b40b
	nop			;b40c
	nop			;b40d
	nop			;b40e
	nop			;b40f
	nop			;b410
	nop			;b411
	xor 0ffh		;b412
	nop			;b414
	ld e,a			;b415
	ld a,a			;b416
	add a,b			;b417
	xor b			;b418
	rst 18h			;b419
	nop			;b41a
	ld (hl),0c9h		;b41b
	nop			;b41d
	adc a,a			;b41e
	ld (hl),b		;b41f
	nop			;b420
	ld a,l			;b421
	jp p,0fd00h		;b422
	and 000h		;b425
	or l			;b427
	adc a,000h		;b428
	inc a			;b42a
	ret nz			;b42b
	nop			;b42c
	inc a			;b42d
	ret nz			;b42e
	nop			;b42f
	ld a,b			;b430
	add a,b			;b431
	nop			;b432
	ret p			;b433
	nop			;b434
	nop			;b435
	ret po			;b436
	nop			;b437
	nop			;b438
	ret nz			;b439
	nop			;b43a
	nop			;b43b
	ret nz			;b43c
	nop			;b43d
	nop			;b43e
	add a,b			;b43f
	nop			;b440
	nop			;b441
	jr nz,lb444h		;b442
lb444h:
	rst 38h			;b444
	adc a,0c0h		;b445
	ccf			;b447
	ccf			;b448
	nop			;b449
	rst 38h			;b44a
	ld (bc),a		;b44b
	nop			;b44c
	rst 38h			;b44d
	defb 0fdh,0fdh,002h ;illegal sequence	;b44e
	ld b,0ffh		;b451
	nop			;b453
	pop af			;b454
	ld c,000h		;b455
	rst 38h			;b457
	nop			;b458
	nop			;b459
	jr c,$+58		;b45a
	rst 0			;b45c
	ld b,e			;b45d
	inc bc			;b45e
	call m,009f9h		;b45f
	or 002h			;b462
	inc bc			;b464
	call m,0e1e1h		;b465
	ld e,01fh		;b468
	rst 38h			;b46a
	nop			;b46b
	ret po			;b46c
	rra			;b46d
	nop			;b46e
	rst 38h			;b46f
lb470h:
	nop			;b470
	nop			;b471
	ld a,(de)		;b472
	dec e			;b473
	ret po			;b474
	ld (hl),e		;b475
	ld a,l			;b476
	add a,b			;b477
	adc a,(hl)		;b478
	cp 001h			;b479
	ld (hl),a		;b47b
	rst 30h			;b47c
	ex af,af'		;b47d
	cp b			;b47e
	cp a			;b47f
	ld b,b			;b480
	rst 20h			;b481
	ret m			;b482
	nop			;b483
	rra			;b484
	ret po			;b485
	nop			;b486
	rst 38h			;b487
	nop			;b488
	nop			;b489
	rrca			;b48a
	rrca			;b48b
	ret p			;b48c
	ld a,b			;b48d
	ld a,a			;b48e
	add a,b			;b48f
	rst 0			;b490
	ret m			;b491
	nop			;b492
	ld a,0c1h		;b493
	nop			;b495
	defb 0fdh,003h,000h ;illegal sequence	;b496
	cp 001h			;b499
	nop			;b49b
	ld a,a			;b49c
	add a,b			;b49d
	nop			;b49e
	cp a			;b49f
	ld b,b			;b4a0
	nop			;b4a1
	ld (hl),e		;b4a2
	sbc a,h			;b4a3
	nop			;b4a4
	xor 070h		;b4a5
	nop			;b4a7
	inc a			;b4a8
	ret po			;b4a9
	nop			;b4aa
	ret c			;b4ab
	ret po			;b4ac
	nop			;b4ad
	jr nc,lb470h		;b4ae
	nop			;b4b0
	ret po			;b4b1
	nop			;b4b2
	nop			;b4b3
	ret nz			;b4b4
	nop			;b4b5
	nop			;b4b6
	add a,b			;b4b7
	nop			;b4b8
	nop			;b4b9
	ld a,03fh		;b4ba
	ret nz			;b4bc
	jp 0fc03h		;b4bd
	ld a,h			;b4c0
	nop			;b4c1
	rst 38h			;b4c2
	call m,003fch		;b4c3
	inc bc			;b4c6
	rst 38h			;b4c7
	nop			;b4c8
	or b			;b4c9
	ld c,a			;b4ca
	nop			;b4cb
	inc c			;b4cc
	di			;b4cd
	nop			;b4ce
	rst 30h			;b4cf
	ret m			;b4d0
	nop			;b4d1
	rrca			;b4d2
	ret p			;b4d3
	nop			;b4d4
	ex (sp),hl		;b4d5
	call m,01900h		;b4d6
	ld e,0e0h		;b4d9
	push hl			;b4db
	ld b,0f8h		;b4dc
	ld (hl),h		;b4de
	rlca			;b4df
	ret m			;b4e0
	xor b			;b4e1
	adc a,a			;b4e2
	ld (hl),b		;b4e3
	ld d,d			;b4e4
	defb 0ddh,020h,02eh ;illegal sequence	;b4e5
	pop af			;b4e8
	nop			;b4e9
	rst 38h			;b4ea
	nop			;b4eb
	nop			;b4ec
	rst 38h			;b4ed
	nop			;b4ee
	nop			;b4ef
	add a,c			;b4f0
	ld a,(hl)		;b4f1
	nop			;b4f2
	ld a,h			;b4f3
	rst 38h			;b4f4
	nop			;b4f5
	jp nz,03cc3h		;b4f6
	add a,c			;b4f9
	add a,c			;b4fa
	ld a,(hl)		;b4fb
	jp 03cc3h		;b4fc
	ld l,(hl)		;b4ff
	rst 28h			;b500
	djnz $+1		;b501
	nop			;b503
	nop			;b504
	rst 38h			;b505
	nop			;b506
	nop			;b507
	rst 38h			;b508
	nop			;b509
	nop			;b50a
	cp 001h			;b50b
	nop			;b50d
	ld a,a			;b50e
	add a,b			;b50f
	nop			;b510
	ccf			;b511
	ret nz			;b512
	nop			;b513
	ccf			;b514
	ret nz			;b515
	nop			;b516
	ld a,0c0h		;b517
	nop			;b519
	ccf			;b51a
	ret nz			;b51b
	nop			;b51c
	ld a,h			;b51d
	add a,b			;b51e
lb51fh:
	nop			;b51f
	ret m			;b520
	nop			;b521
	nop			;b522
	ret p			;b523
	nop			;b524
	nop			;b525
	ret po			;b526
	nop			;b527
	nop			;b528
	add a,b			;b529
	nop			;b52a
	nop			;b52b
	nop			;b52c
	nop			;b52d
	nop			;b52e
	nop			;b52f
	nop			;b530
	nop			;b531
	inc sp			;b532
	inc a			;b533
	ret nz			;b534
	jp 000fch		;b535
	ld c,0f1h		;b538
	nop			;b53a
	ccf			;b53b
	ret nz			;b53c
	nop			;b53d
	jr nz,lb51fh		;b53e
	nop			;b540
	add a,h			;b541
	ld a,a			;b542
	nop			;b543
	jr $+1			;b544
	nop			;b546
	add a,e			;b547
	ld a,h			;b548
	nop			;b549
	daa			;b54a
	ret m			;b54b
	nop			;b54c
	ld d,a			;b54d
	ret c			;b54e
	jr nz,lb5cch		;b54f
	call m,08700h		;b551
	ld a,b			;b554
	nop			;b555
	rst 38h			;b556
	nop			;b557
	nop			;b558
	ld a,a			;b559
	add a,b			;b55a
	nop			;b55b
	rst 38h			;b55c
	nop			;b55d
	nop			;b55e
	ld a,a			;b55f
	add a,b			;b560
	nop			;b561
	jr c,$+1		;b562
	nop			;b564
	add a,c			;b565
lb566h:
	ld a,(hl)		;b566
	nop			;b567
	rst 38h			;b568
	nop			;b569
	nop			;b56a
	rst 38h			;b56b
	nop			;b56c
	nop			;b56d
	cp 000h			;b56e
	nop			;b570
	call m,00000h		;b571
	ret p			;b574
	nop			;b575
	nop			;b576
	ret nz			;b577
	nop			;b578
	nop			;b579
	ld a,b			;b57a
	add a,b			;b57b
	nop			;b57c
	ret p			;b57d
	nop			;b57e
	nop			;b57f
	ret nz			;b580
	nop			;b581
	nop			;b582
	add a,b			;b583
	nop			;b584
	nop			;b585
	nop			;b586
	nop			;b587
	nop			;b588
	nop			;b589
	nop			;b58a
	nop			;b58b
	nop			;b58c
	nop			;b58d
	nop			;b58e
	nop			;b58f
	nop			;b590
	nop			;b591
	dec e			;b592
	jp po,00000h		;b593
	rst 38h			;b596
	nop			;b597
	nop			;b598
	rst 38h			;b599
	nop			;b59a
	ld bc,000feh		;b59b
	inc bc			;b59e
	call m,00e00h		;b59f
	ret p			;b5a2
	nop			;b5a3
	jr c,lb566h		;b5a4
	nop			;b5a6
	ret nz			;b5a7
	nop			;b5a8
	nop			;b5a9
	rra			;b5aa
	ret po			;b5ab
	nop			;b5ac
	ld a,0c0h		;b5ad
	nop			;b5af
	ld a,b			;b5b0
	add a,b			;b5b1
	nop			;b5b2
	ret po			;b5b3
	nop			;b5b4
	nop			;b5b5
lb5b6h:
	add a,b			;b5b6
	nop			;b5b7
	nop			;b5b8
	nop			;b5b9
	nop			;b5ba
	nop			;b5bb
	nop			;b5bc
	nop			;b5bd
	nop			;b5be
	nop			;b5bf
	nop			;b5c0
	nop			;b5c1
	add a,b			;b5c2
	nop			;b5c3
	nop			;b5c4
	nop			;b5c5
	nop			;b5c6
	nop			;b5c7
	nop			;b5c8
	nop			;b5c9
	nop			;b5ca
	nop			;b5cb
lb5cch:
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
	nop			;b5d6
	nop			;b5d7
	nop			;b5d8
	nop			;b5d9
	nop			;b5da
	nop			;b5db
	nop			;b5dc
	nop			;b5dd
	nop			;b5de
	nop			;b5df
	nop			;b5e0
	nop			;b5e1
	nop			;b5e2
	ld (bc),a		;b5e3
	ld (bc),a		;b5e4
	ld bc,01b0bh		;b5e5
	inc b			;b5e8
lb5e9h:
	ld (0023dh),a		;b5e9
	ld c,a			;b5ec
	ld (hl),b		;b5ed
	ld b,03eh		;b5ee
	pop bc			;b5f0
	ld l,000h		;b5f1
	nop			;b5f3
	nop			;b5f4
	nop			;b5f5
	nop			;b5f6
	nop			;b5f7
	inc h			;b5f8
	inc (hl)		;b5f9
	ex af,af'		;b5fa
	jr c,lb63dh		;b5fb
	adc a,h			;b5fd
	inc a			;b5fe
	and h			;b5ff
	ld e,b			;b600
	ld d,b			;b601
	ld a,b			;b602
	add a,h			;b603
	add a,b			;b604
	inc e			;b605
	ret po			;b606
	ret nc			;b607
	sub b			;b608
	ld l,b			;b609
	cp a			;b60a
	ret nz			;b60b
	rrca			;b60c
	xor l			;b60d
	jp p,04f05h		;b60e
	ld (hl),b		;b611
	add hl,bc		;b612
	scf			;b613
	inc a			;b614
	nop			;b615
	inc c			;b616
	rrca			;b617
	nop			;b618
	nop			;b619
	nop			;b61a
	nop			;b61b
	nop			;b61c
	nop			;b61d
	nop			;b61e
	nop			;b61f
	nop			;b620
	nop			;b621
	and b			;b622
	ret po			;b623
	djnz lb5b6h		;b624
	ld d,b			;b626
	jr nz,lb5e9h		;b627
	ld h,b			;b629
	nop			;b62a
	add a,b			;b62b
	ret nz			;b62c
	nop			;b62d
	nop			;b62e
	nop			;b62f
	nop			;b630
	nop			;b631
	nop			;b632
	nop			;b633
	nop			;b634
	nop			;b635
	nop			;b636
	nop			;b637
	nop			;b638
	nop			;b639
	nop			;b63a
	nop			;b63b
	nop			;b63c
lb63dh:
	nop			;b63d
	nop			;b63e
	nop			;b63f
	inc b			;b640
	inc c			;b641
	ld (bc),a		;b642
	ld e,012h		;b643
	add hl,bc		;b645
	ex af,af'		;b646
	ld (hl),001h		;b647
	jr z,lb665h		;b649
	dec b			;b64b
	inc h			;b64c
	inc e			;b64d
	ld (bc),a		;b64e
	jr lb65dh		;b64f
	nop			;b651
	nop			;b652
	nop			;b653
	nop			;b654
	nop			;b655
	nop			;b656
	nop			;b657
	nop			;b658
	nop			;b659
	nop			;b65a
	nop			;b65b
lb65ch:
	nop			;b65c
lb65dh:
	nop			;b65d
	dec bc			;b65e
	ld e,001h		;b65f
	dec h			;b661
	ld a,001h		;b662
	ld c,h			;b664
lb665h:
	ld a,l			;b665
	ld (bc),a		;b666
	sbc a,l			;b667
	rst 20h			;b668
	jr lb66bh		;b669
lb66bh:
	nop			;b66b
	nop			;b66c
	nop			;b66d
	nop			;b66e
	nop			;b66f
	nop			;b670
	nop			;b671
	nop			;b672
	nop			;b673
	nop			;b674
	nop			;b675
	ret nz			;b676
	ret nz			;b677
	nop			;b678
	ret nc			;b679
	djnz lb65ch		;b67a
	ret po			;b67c
	ret po			;b67d
	jr lb690h		;b67e
	ret pe			;b680
	inc d			;b681
	nop			;b682
	ld bc,00100h		;b683
	ld (bc),a		;b686
	nop			;b687
	inc bc			;b688
	ld (bc),a		;b689
	nop			;b68a
	rlca			;b68b
	inc b			;b68c
	ld bc,00605h		;b68d
lb690h:
	ld bc,00a0dh		;b690
	dec b			;b693
	inc bc			;b694
	inc e			;b695
	inc bc			;b696
	inc de			;b697
	inc e			;b698
	inc bc			;b699
	ld a,e			;b69a
	add a,(hl)		;b69b
	ld (hl),c		;b69c
	ei			;b69d
	inc b			;b69e
	di			;b69f
	rst 38h			;b6a0
	ld (bc),a		;b6a1
	ld sp,hl		;b6a2
	call pe,0e41bh		;b6a3
	rst 30h			;b6a6
	ex af,af'		;b6a7
	call p,000ffh		;b6a8
	rst 38h			;b6ab
	rst 38h			;b6ac
	nop			;b6ad
	rst 38h			;b6ae
	rst 38h			;b6af
	nop			;b6b0
	rst 38h			;b6b1
	ret po			;b6b2
	ld d,(hl)		;b6b3
	xor b			;b6b4
	call m,0d628h		;b6b5
	ret nc			;b6b8
	inc d			;b6b9
	jp pe,0b27eh		;b6ba
	ld c,h			;b6bd
	cp h			;b6be
	or b			;b6bf
	ld c,(hl)		;b6c0
	ld hl,(004fah)		;b6c1
	cp (hl)			;b6c4
	ld h,(hl)		;b6c5
	sbc a,b			;b6c6
	sbc a,b			;b6c7
	ld (hl),b		;b6c8
	adc a,h			;b6c9
	ld d,039h		;b6ca
	nop			;b6cc
	dec bc			;b6cd
	inc a			;b6ce
	nop			;b6cf
	rla			;b6d0
	jr c,lb6d3h		;b6d1
lb6d3h:
	dec de			;b6d3
	inc e			;b6d4
	nop			;b6d5
	inc c			;b6d6
	rrca			;b6d7
	nop			;b6d8
	ld b,00fh		;b6d9
	nop			;b6db
	inc bc			;b6dc
	rlca			;b6dd
	nop			;b6de
	nop			;b6df
	ld bc,0ff00h		;b6e0
	nop			;b6e3
	rst 38h			;b6e4
	rst 38h			;b6e5
	nop			;b6e6
	rst 38h			;b6e7
	cp a			;b6e8
	ld b,b			;b6e9
	or a			;b6ea
	ld e,(hl)		;b6eb
	and c			;b6ec
	ld e,0bch		;b6ed
	jp lb000h		;b6ef
	ld c,a			;b6f2
	nop			;b6f3
	ld bc,000ffh		;b6f4
	ld a,b			;b6f7
	call m,0fc00h		;b6f8
	ld c,h			;b6fb
	or b			;b6fc
	cp b			;b6fd
	ld c,b			;b6fe
	sub b			;b6ff
	ret p			;b700
	jr nc,lb703h		;b701
lb703h:
	ret po			;b703
	and b			;b704
	nop			;b705
	add a,b			;b706
	ld b,b			;b707
	nop			;b708
	add a,b			;b709
	add a,b			;b70a
	nop			;b70b
	nop			;b70c
	nop			;b70d
	nop			;b70e
	nop			;b70f
	nop			;b710
	nop			;b711
	ld b,e			;b712
	rst 38h			;b713
	cp e			;b714
	rst 0			;b715
	ld b,l			;b716
	add a,e			;b717
	add a,d			;b718
	ld bc,00142h		;b719
	and l			;b71c
	ld b,e			;b71d
	ld b,h			;b71e
	add a,e			;b71f
	adc a,e			;b720
	inc b			;b721
lb722h:
	adc a,b			;b722
	ret p			;b723
	cp e			;b724
	ret nz			;b725
	ld c,h			;b726
	add a,e			;b727
	or e			;b728
	rrca			;b729
	call nz,03b3fh		;b72a
	call nz,000c4h		;b72d
	ld (bc),a		;b730
	nop			;b731
	nop			;b732
	nop			;b733
	add a,b			;b734
	nop			;b735
	pop bc			;b736
	nop			;b737
	add hl,hl		;b738
	ret nz			;b739
	ld d,d			;b73a
	add a,c			;b73b
	add a,d			;b73c
	ld bc,00003h		;b73d
	ld b,001h		;b740
	dec d			;b742
	inc bc			;b743
	ld l,b			;b744
	rla			;b745
	sub e			;b746
	ld a,h			;b747
	inc d			;b748
	ret m			;b749
	ld l,a			;b74a
	sub b			;b74b
	sbc a,h			;b74c
	inc bc			;b74d
	ld h,e			;b74e
	sbc a,a			;b74f
	cp h			;b750
	rst 38h			;b751
	ld d,h			;b752
	rst 38h			;b753
	xor e			;b754
	ld d,h			;b755
	ld d,h			;b756
	nop			;b757
	ld hl,(0d214h)		;b758
	inc a			;b75b
	dec a			;b75c
	cp 006h			;b75d
	ei			;b75f
	dec sp			;b760
	ret nz			;b761
	add a,l			;b762
	ld (bc),a		;b763
	ld h,d			;b764
	add a,c			;b765
	sbc a,l			;b766
	ld h,b			;b767
	ld c,c			;b768
	jr nc,lb722h		;b769
	ex af,af'		;b76b
	adc a,c			;b76c
	ld b,074h		;b76d
	adc a,a			;b76f
	adc a,(hl)		;b770
	ld a,a			;b771
	rlca			;b772
	nop			;b773
	adc a,e			;b774
	inc b			;b775
	ld a,h			;b776
	add a,b			;b777
	add a,c			;b778
	nop			;b779
	ld e,001h		;b77a
	ret po			;b77c
	rra			;b77d
	ld bc,01fffh		;b77e
	rst 38h			;b781
	nop			;b782
	nop			;b783
	rlca			;b784
	nop			;b785
	ld a,b			;b786
	rlca			;b787
	add a,e			;b788
	ld a,a			;b789
	rlca			;b78a
	rst 38h			;b78b
	ld a,0ffh		;b78c
	ld a,h			;b78e
	rst 38h			;b78f
	ret m			;b790
	rst 38h			;b791
	adc a,03fh		;b792
	inc (hl)		;b794
	rst 38h			;b795
	ret			;b796
	cp 0e3h			;b797
	call m,0fbc4h		;b799
	adc a,l			;b79c
	jp p,0d028h		;b79d
	ld e,h			;b7a0
	add a,b			;b7a1
	sub b			;b7a2
	ld h,b			;b7a3
	ld h,c			;b7a4
	add a,b			;b7a5
	jp nz,0cc01h		;b7a6
	inc bc			;b7a9
	sbc a,d			;b7aa
	dec b			;b7ab
	dec (hl)		;b7ac
	ld c,06ah		;b7ad
	inc e			;b7af
	jp c,laa3ch		;b7b0
	ld (hl),h		;b7b3
	ld h,l			;b7b4
	ret m			;b7b5
	ld a,(bc)		;b7b6
	pop af			;b7b7
	defb 0edh ;next byte illegal after ed	;b7b8
	inc de			;b7b9
	sub l			;b7ba
	inc bc			;b7bb
	ld b,l			;b7bc
	inc bc			;b7bd
	ld a,d			;b7be
	rlca			;b7bf
	add a,03fh		;b7c0
	cp d			;b7c2
	ld c,l			;b7c3
	dec h			;b7c4
	ret c			;b7c5
	sub d			;b7c6
	defb 0edh ;next byte illegal after ed	;b7c7
	add hl,hl		;b7c8
	add a,0aah		;b7c9
	call nz,08a75h		;b7cb
	cp d			;b7ce
	ld bc,001a2h		;b7cf
	rst 18h			;b7d2
	rst 38h			;b7d3
	ld a,a			;b7d4
	rst 38h			;b7d5
	ld e,a			;b7d6
	rst 38h			;b7d7
	adc a,(hl)		;b7d8
	ld a,a			;b7d9
	sbc a,l			;b7da
	ld a,(hl)		;b7db
	dec sp			;b7dc
	call m,0f8e4h		;b7dd
	exx			;b7e0
	ret po			;b7e1
	rst 38h			;b7e2
	rst 38h			;b7e3
	cp e			;b7e4
	rst 38h			;b7e5
	ret pe			;b7e6
	rst 38h			;b7e7
	ld d,0e9h		;b7e8
	call pe,sub_b103h	;b7ea
	ld c,0eeh		;b7ed
	rra			;b7ef
	rra			;b7f0
	rst 38h			;b7f1
	cp 0ffh			;b7f2
	ld a,b			;b7f4
	rst 38h			;b7f5
	or a			;b7f6
	ld a,b			;b7f7
	adc a,h			;b7f8
	ld (hl),b		;b7f9
	ld d,e			;b7fa
	xor h			;b7fb
	add hl,hl		;b7fc
	cp 0f6h			;b7fd
	ret m			;b7ff
	jp (hl)			;b800
	ret p			;b801
	ld b,b			;b802
	add a,b			;b803
	add a,(hl)		;b804
	nop			;b805
	dec c			;b806
	nop			;b807
	inc e			;b808
	jr nz,lb86bh		;b809
	add a,b			;b80b
	add a,c			;b80c
	nop			;b80d
	ret po			;b80e
	nop			;b80f
	ld d,b			;b810
	nop			;b811
	ld b,b			;b812
	nop			;b813
	ret po			;b814
	nop			;b815
	ld (bc),a		;b816
	nop			;b817
	jr lb81ah		;b818
lb81ah:
	ld h,c			;b81a
	nop			;b81b
	add a,d			;b81c
	ld bc,00384h		;b81d
	dec d			;b820
	inc hl			;b821
	nop			;b822
	nop			;b823
	add a,b			;b824
	nop			;b825
	rrca			;b826
	nop			;b827
	ld (hl),b		;b828
	rrca			;b829
	adc a,e			;b82a
	ld a,a			;b82b
	jr nz,$+1		;b82c
	rst 8			;b82e
	rst 38h			;b82f
	sbc a,a			;b830
	rst 38h			;b831
	dec b			;b832
	inc bc			;b833
	ld (bc),a		;b834
	ld bc,000e1h		;b835
	jr lb81ah		;b838
	adc a,(hl)		;b83a
	ret p			;b83b
	inc bc			;b83c
	call m,0fec1h		;b83d
	jp (hl)			;b840
	cp 0d5h			;b841
	jp pe,0ff00h		;b843
	call 03233h		;b846
	ld bc,00186h		;b849
	ld d,c			;b84c
	add a,b			;b84d
	ld e,a			;b84e
	add a,b			;b84f
	daa			;b850
	ret c			;b851
	inc e			;b852
	nop			;b853
	nop			;b854
	nop			;b855
	nop			;b856
	nop			;b857
	ld h,b			;b858
	nop			;b859
	ld sp,hl		;b85a
	nop			;b85b
	ld d,d			;b85c
	add a,c			;b85d
	add a,l			;b85e
	ld (bc),a		;b85f
	ex af,af'		;b860
	inc b			;b861
	ld (bc),a		;b862
	nop			;b863
	dec c			;b864
	ld (bc),a		;b865
	ld a,(0ec04h)		;b866
	djnz $+52		;b869
lb86bh:
	pop bc			;b86b
	push bc			;b86c
	ld (bc),a		;b86d
	ld e,000h		;b86e
	ld a,b			;b870
	nop			;b871
	dec e			;b872
	inc bc			;b873
	ld d,b			;b874
	rrca			;b875
	ld h,a			;b876
	jr lb8d1h		;b877
	jr nz,lb8deh		;b879
	add a,b			;b87b
	adc a,h			;b87c
	nop			;b87d
	jr nc,lb880h		;b87e
lb880h:
	ld h,c			;b880
	nop			;b881
	nop			;b882
	rst 38h			;b883
	jp 03c3ch		;b884
	nop			;b887
	ld b,b			;b888
	nop			;b889
	nop			;b88a
	nop			;b88b
	rlca			;b88c
	nop			;b88d
	ccf			;b88e
	nop			;b88f
	ret m			;b890
	rlca			;b891
	ld b,(hl)		;b892
	ret m			;b893
	xor a			;b894
	ld d,b			;b895
	ld b,b			;b896
	nop			;b897
	nop			;b898
	nop			;b899
	ld a,h			;b89a
	nop			;b89b
	out (02ch),a		;b89c
	call m,00f03h		;b89e
	ret p			;b8a1
	ld (hl),e		;b8a2
	inc c			;b8a3
	rst 8			;b8a4
	nop			;b8a5
	cp e			;b8a6
	ld b,b			;b8a7
	ld d,l			;b8a8
	nop			;b8a9
	ld a,(bc)		;b8aa
	inc b			;b8ab
	add a,l			;b8ac
	ld (bc),a		;b8ad
	push hl			;b8ae
	ld (bc),a		;b8af
	ld d,d			;b8b0
	and c			;b8b1
	cpl			;b8b2
	rst 18h			;b8b3
	pop de			;b8b4
	cpl			;b8b5
	ld h,0f9h		;b8b6
	and e			;b8b8
	ld a,h			;b8b9
	ld e,b			;b8ba
	daa			;b8bb
	jr nz,lb8c5h		;b8bc
	inc de			;b8be
	nop			;b8bf
	sub h			;b8c0
	nop			;b8c1
	push bc			;b8c2
	ei			;b8c3
	ld (de),a		;b8c4
lb8c5h:
	rst 28h			;b8c5
	ld h,c			;b8c6
	sbc a,(hl)		;b8c7
	jp 02e3ch		;b8c8
	ret nc			;b8cb
	ld sp,hl		;b8cc
	add a,b			;b8cd
	di			;b8ce
	nop			;b8cf
	add a,(hl)		;b8d0
lb8d1h:
	ld bc,0c031h		;b8d1
	and 001h		;b8d4
	ld e,c			;b8d6
	rlca			;b8d7
	ld h,(hl)		;b8d8
	rra			;b8d9
	sub c			;b8da
	ld a,(hl)		;b8db
	ld h,0f9h		;b8dc
lb8deh:
	ld e,b			;b8de
	rst 20h			;b8df
	or c			;b8e0
	adc a,0a6h		;b8e1
	ld a,b			;b8e3
	ld e,b			;b8e4
	ret po			;b8e5
	and c			;b8e6
	ret nz			;b8e7
	and d			;b8e8
	pop bc			;b8e9
	ld b,h			;b8ea
	add a,e			;b8eb
	ld c,c			;b8ec
	add a,(hl)		;b8ed
	or (hl)			;b8ee
	inc c			;b8ef
lb8f0h:
	dec h			;b8f0
	jr lb950h		;b8f1
	ld (hl),092h		;b8f3
	ld l,h			;b8f5
	dec h			;b8f6
	ret c			;b8f7
	adc a,031h		;b8f8
	sub l			;b8fa
	ld h,e			;b8fb
	and l			;b8fc
	ld b,e			;b8fd
	jp z,01007h		;b8fe
	rrca			;b901
	push de			;b902
	inc bc			;b903
	cp e			;b904
	ld b,a			;b905
	ld b,a			;b906
	cp a			;b907
	cp a			;b908
	rst 38h			;b909
	ld a,a			;b90a
	rst 38h			;b90b
	rst 38h			;b90c
	rst 38h			;b90d
	rst 38h			;b90e
	rst 38h			;b90f
	call m,sub_a2ffh	;b910
	pop hl			;b913
	and d			;b914
	pop bc			;b915
	and l			;b916
	jp 0c3a5h		;b917
	and d			;b91a
	pop bc			;b91b
	jp po,051c1h		;b91c
	ret po			;b91f
	adc a,c			;b920
	ld (hl),b		;b921
	cp a			;b922
	rst 38h			;b923
	cp 0ffh			;b924
	defb 0fdh,0feh,0fah ;illegal sequence	;b926
	defb 0fdh,0fdh,0feh ;illegal sequence	;b929
	sbc a,(hl)		;b92c
	rst 38h			;b92d
	ld l,a			;b92e
	sbc a,a			;b92f
	sub a			;b930
	rrca			;b931
	call nz,03ef8h		;b932
	ret nz			;b935
	ld b,b			;b936
	add a,b			;b937
	ccf			;b938
	ret nz			;b939
	adc a,h			;b93a
	ld (hl),e		;b93b
	push af			;b93c
	ld a,(bc)		;b93d
	ld hl,0e2feh		;b93e
	rst 38h			;b941
	ret po			;b942
	nop			;b943
	nop			;b944
	nop			;b945
	call nz,03b00h		;b946
	call nz,0fec1h		;b949
	jr nc,$-47		;b94c
	adc a,h			;b94e
	ld (hl),e		;b94f
lb950h:
	scf			;b950
	ret m			;b951
	dec hl			;b952
	rla			;b953
	ld de,0080fh		;b954
	rlca			;b957
	ld b,003h		;b958
	push hl			;b95a
	inc bc			;b95b
	ld b,l			;b95c
	add a,e			;b95d
	ld c,d			;b95e
	add a,l			;b95f
	and a			;b960
	ld b,b			;b961
	cp a			;b962
	rst 38h			;b963
	rst 18h			;b964
	rst 38h			;b965
	rst 28h			;b966
	rst 38h			;b967
	ld a,a			;b968
	rst 38h			;b969
	cp a			;b96a
	rst 38h			;b96b
	rst 30h			;b96c
	rst 38h			;b96d
	ld a,(hl)		;b96e
	rst 38h			;b96f
	add a,c			;b970
	ld a,(hl)		;b971
	ret pe			;b972
	rst 38h			;b973
	pop de			;b974
	rst 38h			;b975
	call po,0dbffh		;b976
	call m,0f875h		;b979
	jp z,034f1h		;b97c
	jp 002e5h		;b97f
	cp b			;b982
	ret nz			;b983
	ld b,b			;b984
	add a,b			;b985
	ret po			;b986
	nop			;b987
	jr c,lb98ah		;b988
lb98ah:
	rst 0			;b98a
	jr c,lb9e5h		;b98b
	cp a			;b98d
	and h			;b98e
	rra			;b98f
	ld (hl),e		;b990
	inc c			;b991
	ex af,af'		;b992
	nop			;b993
	nop			;b994
	nop			;b995
	nop			;b996
	nop			;b997
	nop			;b998
	nop			;b999
	nop			;b99a
	nop			;b99b
	add a,b			;b99c
	nop			;b99d
	ret nz			;b99e
	nop			;b99f
	ld b,d			;b9a0
	add a,b			;b9a1
	pop bc			;b9a2
	nop			;b9a3
	add a,l			;b9a4
	ld (bc),a		;b9a5
	ld a,(bc)		;b9a6
	inc b			;b9a7
	inc d			;b9a8
	ex af,af'		;b9a9
	add hl,sp		;b9aa
	nop			;b9ab
	and a			;b9ac
	nop			;b9ad
	ld c,h			;b9ae
	inc bc			;b9af
	jr lb9b9h		;b9b0
	add a,a			;b9b2
	nop			;b9b3
	ld e,001h		;b9b4
	jr c,lb9bfh		;b9b6
	ret po			;b9b8
lb9b9h:
	rra			;b9b9
	add a,e			;b9ba
	ld a,a			;b9bb
	ld c,0ffh		;b9bc
	ccf			;b9be
lb9bfh:
	rst 38h			;b9bf
	ld a,a			;b9c0
	rst 38h			;b9c1
	add a,c			;b9c2
	ld a,a			;b9c3
	nop			;b9c4
	rst 38h			;b9c5
	rra			;b9c6
	rst 38h			;b9c7
	pop hl			;b9c8
	rst 38h			;b9c9
	sbc a,a			;b9ca
lb9cbh:
	rst 38h			;b9cb
	rst 38h			;b9cc
	rst 38h			;b9cd
	rst 38h			;b9ce
	rst 38h			;b9cf
	rst 38h			;b9d0
	rst 38h			;b9d1
	or c			;b9d2
	cp 00ch			;b9d3
	rst 38h			;b9d5
	jp nz,072ffh		;b9d6
	rst 38h			;b9d9
	ld sp,hl		;b9da
	cp 0fah			;b9db
	rst 38h			;b9dd
	rst 38h			;b9de
	rst 38h			;b9df
	or 0ffh			;b9e0
	cp d			;b9e2
	ld b,c			;b9e3
	sub c			;b9e4
lb9e5h:
	ld h,b			;b9e5
	sub c			;b9e6
	ld h,b			;b9e7
	ld sp,023c0h		;b9e8
	ret nz			;b9eb
	inc hl			;b9ec
	ret nz			;b9ed
	ld b,d			;b9ee
	add a,b			;b9ef
	add a,d			;b9f0
	nop			;b9f1
	sub h			;b9f2
	nop			;b9f3
	add a,b			;b9f4
	nop			;b9f5
	ret nz			;b9f6
	nop			;b9f7
	ld b,(hl)		;b9f8
	nop			;b9f9
	ld b,l			;b9fa
	nop			;b9fb
	adc a,000h		;b9fc
	add a,(hl)		;b9fe
	nop			;b9ff
	rla			;ba00
	nop			;ba01
	inc e			;ba02
	inc bc			;ba03
	ld l,h			;ba04
	inc bc			;ba05
	in a,(004h)		;ba06
	sub (hl)		;ba08
	add hl,bc		;ba09
	dec de			;ba0a
	inc b			;ba0b
	inc b			;ba0c
	nop			;ba0d
	rlca			;ba0e
	nop			;ba0f
	ld c,000h		;ba10
	ld d,d			;ba12
	adc a,h			;ba13
	call nc,0e000h		;ba14
	nop			;ba17
	add a,c			;ba18
	nop			;ba19
	ld (bc),a		;ba1a
	ld bc,00324h		;ba1b
	sbc a,b			;ba1e
	rlca			;ba1f
	ld h,e			;ba20
	inc e			;ba21
	ld b,h			;ba22
	jr c,lba4dh		;ba23
	djnz lba78h		;ba25
	jr nz,lb9cbh		;ba27
	ld b,c			;ba29
	dec h			;ba2a
	jp 08344h		;ba2b
	add a,d			;ba2e
	ld bc,00001h		;ba2f
	dec h			;ba32
	rra			;ba33
	ld c,a			;ba34
	ccf			;ba35
	sbc a,a			;ba36
	ld a,a			;ba37
	ld a,a			;ba38
	rst 38h			;ba39
	jr c,$+1		;ba3a
	ccf			;ba3c
	rst 38h			;ba3d
	rra			;ba3e
	rst 38h			;ba3f
	add a,e			;ba40
	ld a,a			;ba41
	ex (sp),hl		;ba42
	rst 38h			;ba43
	ex (sp),hl		;ba44
	rst 38h			;ba45
	defb 0edh ;next byte illegal after ed	;ba46
	rst 38h			;ba47
	rst 38h			;ba48
	rst 38h			;ba49
	rst 38h			;ba4a
	rst 38h			;ba4b
	ld a,a			;ba4c
lba4dh:
	rst 38h			;ba4d
	rst 38h			;ba4e
	rst 38h			;ba4f
	ccf			;ba50
	rst 38h			;ba51
	ld h,(hl)		;ba52
	ld sp,hl		;ba53
	and b			;ba54
	rst 38h			;ba55
	ret			;ba56
	rst 30h			;ba57
	scf			;ba58
	ld sp,hl		;ba59
	ret m			;ba5a
	rst 38h			;ba5b
	rst 0			;ba5c
	rst 38h			;ba5d
	call m,0ffffh		;ba5e
	rst 38h			;ba61
	rlc a			;ba62
	defb 0fdh,003h,01ah ;illegal sequence	;ba64
	pop hl			;ba67
	ld hl,(0d5d1h)		;ba68
	ld l,b			;ba6b
	ld d,0e9h		;ba6c
	dec l			;ba6e
	ret p			;ba6f
	add a,l			;ba70
	ret m			;ba71
	defb 0edh ;next byte illegal after ed	;ba72
	jp p,0fef1h		;ba73
	ret po			;ba76
	rst 38h			;ba77
lba78h:
	rst 30h			;ba78
	rst 38h			;ba79
	ld a,c			;ba7a
	rst 38h			;ba7b
	cp 0ffh			;ba7c
	ccf			;ba7e
	rst 38h			;ba7f
	ccf			;ba80
	rst 38h			;ba81
	jp c,0213ch		;ba82
	ld e,096h		;ba85
	add hl,bc		;ba87
	ld l,c			;ba88
	sub b			;ba89
	sub (hl)		;ba8a
	ld sp,hl		;ba8b
	cp b			;ba8c
	rst 38h			;ba8d
	adc a,0ffh		;ba8e
	call pe,070ffh		;ba90
	nop			;ba93
	sbc a,b			;ba94
	nop			;ba95
	ld h,0c0h		;ba96
	ld e,c			;ba98
	and 096h		;ba99
	ld a,c			;ba9b
	cp h			;ba9c
	ld b,e			;ba9d
	and 001h		;ba9e
	ld e,l			;baa0
	and b			;baa1
	rst 38h			;baa2
	nop			;baa3
	nop			;baa4
	nop			;baa5
	nop			;baa6
	nop			;baa7
	add a,b			;baa8
	nop			;baa9
	ld a,a			;baaa
	add a,b			;baab
	nop			;baac
	rst 38h			;baad
	add a,a			;baae
	ld a,a			;baaf
	ld a,c			;bab0
	ld b,00ah		;bab1
	inc b			;bab3
	dec d			;bab4
	ex af,af'		;bab5
	ld d,009h		;bab6
	ld l,d			;bab8
	rra			;bab9
	ret nc			;baba
	ccf			;babb
	dec c			;babc
	jp p,08072h		;babd
	adc a,l			;bac0
	ld (bc),a		;bac1
	inc e			;bac2
	nop			;bac3
	nop			;bac4
	add a,b			;bac5
	ld h,b			;bac6
	add a,b			;bac7
	sbc a,h			;bac8
	nop			;bac9
	ld a,b			;baca
	add a,b			;bacb
	jp 00400h		;bacc
	inc bc			;bacf
	adc a,e			;bad0
	rlca			;bad1
	ld b,h			;bad2
	add a,b			;bad3
	adc a,c			;bad4
	nop			;bad5
	add a,b			;bad6
	nop			;bad7
	add a,b			;bad8
	nop			;bad9
	ld bc,00900h		;bada
	nop			;badd
	ld (de),a		;bade
	ld bc,00112h		;badf
	or d			;bae2
	rrca			;bae3
	ld h,l			;bae4
	rra			;bae5
	ld c,e			;bae6
	ccf			;bae7
	sub a			;bae8
	ld a,a			;bae9
	cpl			;baea
	rst 38h			;baeb
	cpl			;baec
	rst 38h			;baed
	ld c,a			;baee
	rst 38h			;baef
	ld c,a			;baf0
	rst 38h			;baf1
	rst 38h			;baf2
	rst 38h			;baf3
	rst 38h			;baf4
	rst 38h			;baf5
	rst 38h			;baf6
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
	sbc a,0ffh		;bb0c
	ld a,c			;bb0e
	cp 0f6h			;bb0f
	ret m			;bb11
	defb 0edh ;next byte illegal after ed	;bb12
	cp 0bah			;bb13
	call m,0f8f5h		;bb15
	jp z,lb8f0h		;bb18
	ret nz			;bb1b
	ld b,c			;bb1c
	add a,b			;bb1d
	add a,(hl)		;bb1e
	ld bc,00718h		;bb1f
	inc b			;bb22
	nop			;bb23
	adc a,h			;bb24
	nop			;bb25
	inc b			;bb26
	ex af,af'		;bb27
	jr z,lbb3ah		;bb28
	ret			;bb2a
	jr nc,$+20		;bb2b
	pop hl			;bb2d
	and h			;bb2e
	ld b,b			;bb2f
	ld c,e			;bb30
	add a,h			;bb31
	dec h			;bb32
	ld (bc),a		;bb33
	jr z,$+9		;bb34
	ld c,(hl)		;bb36
	ld bc,04091h		;bb37
lbb3ah:
	inc bc			;bb3a
	nop			;bb3b
	ld d,000h		;bb3c
	jr nz,lbb40h		;bb3e
lbb40h:
	sub c			;bb40
	nop			;bb41
	out (000h),a		;bb42
	xor h			;bb44
	inc de			;bb45
	ld b,c			;bb46
	cp (hl)			;bb47
	ld e,(hl)		;bb48
	and b			;bb49
	and c			;bb4a
	nop			;bb4b
	ld e,001h		;bb4c
	ld h,b			;bb4e
	rra			;bb4f
	add a,e			;bb50
	ld a,h			;bb51
	call nz,03838h		;bb52
	ret nz			;bb55
	ret			;bb56
	nop			;bb57
	ld d,009h		;bb58
	jp (hl)			;bb5a
	djnz $+33		;bb5b
	ret po			;bb5d
	ret po			;bb5e
	nop			;bb5f
	nop			;bb60
	nop			;bb61
	nop			;bb62
	nop			;bb63
	dec bc			;bb64
	nop			;bb65
	jp nc,0ff01h		;bb66
	nop			;bb69
	nop			;bb6a
	nop			;bb6b
	add a,a			;bb6c
	nop			;bb6d
	nop			;bb6e
	nop			;bb6f
	nop			;bb70
	nop			;bb71
	ld h,h			;bb72
	dec de			;bb73
	sbc a,e			;bb74
	nop			;bb75
	ld h,h			;bb76
	sbc a,d			;bb77
	add a,c			;bb78
	ld a,(hl)		;bb79
	defb 0fdh,003h,004h ;illegal sequence	;bb7a
	ld bc,00156h		;bb7d
	ld bc,0ef00h		;bb80
	rst 38h			;bb83
	scf			;bb84
	rst 38h			;bb85
	in a,(03fh)		;bb86
	ld h,a			;bb88
	sbc a,a			;bb89
	sbc a,d			;bb8a
	rst 20h			;bb8b
	ld h,l			;bb8c
	ei			;bb8d
	ld a,(de)		;bb8e
	defb 0fdh,08dh ;adc a,iyl	;bb8f
	ld a,a			;bb91
	sub d			;bb92
	call pe,0f8c4h		;bb93
	call nz,0ccf8h		;bb96
	ret m			;bb99
	jp nz,0e9fch		;bb9a
	cp 0e5h			;bb9d
	cp 0f2h			;bb9f
	defb 0fdh,0afh,07fh ;illegal sequence	;bba1
	or a			;bba4
	ld a,a			;bba5
	ld d,e			;bba6
	ccf			;bba7
	ld b,e			;bba8
	ccf			;bba9
	inc hl			;bbaa
	rra			;bbab
	add hl,de		;bbac
	rlca			;bbad
	ld b,001h		;bbae
	add a,c			;bbb0
	nop			;bbb1
	jp m,0fdffh		;bbb2
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
	ld c,a			;bbc0
	rst 38h			;bbc1
	ld (09ccdh),a		;bbc2
	ex (sp),hl		;bbc5
	pop hl			;bbc6
	cp 0eeh			;bbc7
	rst 38h			;bbc9
	rst 38h			;bbca
	rst 38h			;bbcb
	rst 38h			;bbcc
	rst 38h			;bbcd
	rst 38h			;bbce
	rst 38h			;bbcf
	rst 38h			;bbd0
	rst 38h			;bbd1
	add a,(hl)		;bbd2
	nop			;bbd3
	ld (hl),c		;bbd4
	add a,b			;bbd5
	sub d			;bbd6
	ld h,b			;bbd7
	ld l,l			;bbd8
	jp p,0fff2h		;bbd9
	push hl			;bbdc
	rst 38h			;bbdd
	ret m			;bbde
	rst 38h			;bbdf
	cp 0ffh			;bbe0
	ld (0ee0fh),a		;bbe2
lbbe5h:
	ld de,0003fh		;bbe5
	add a,c			;bbe8
	nop			;bbe9
	ld a,b			;bbea
	add a,b			;bbeb
	add a,h			;bbec
	ret m			;bbed
	ld c,d			;bbee
	cp h			;bbef
	sub l			;bbf0
	xor 0b5h		;bbf1
	dec bc			;bbf3
	ld l,h			;bbf4
	add a,e			;bbf5
	ld (de),a		;bbf6
	defb 0edh ;next byte illegal after ed	;bbf7
	and h			;bbf8
	ld e,a			;bbf9
	ld e,c			;bbfa
	ld b,007h		;bbfb
	nop			;bbfd
	nop			;bbfe
	nop			;bbff
	add a,b			;bc00
	nop			;bc01
	ld (bc),a		;bc02
	ld bc,00003h		;bc03
	inc bc			;bc06
	nop			;bc07
	ld de,01000h		;bc08
	nop			;bc0b
	ex af,af'		;bc0c
	nop			;bc0d
	adc a,b			;bc0e
	nop			;bc0f
	call z,04700h		;bc10
	rst 38h			;bc13
	ld b,b			;bc14
	rst 38h			;bc15
	jr nc,$+1		;bc16
	rst 8			;bc18
	ccf			;bc19
	ret po			;bc1a
	rra			;bc1b
	ccf			;bc1c
	nop			;bc1d
	ld (bc),a		;bc1e
	nop			;bc1f
	nop			;bc20
	nop			;bc21
	ex (sp),hl		;bc22
	rst 38h			;bc23
	ld c,0ffh		;bc24
	pop af			;bc26
	cp 00eh			;bc27
	ret p			;bc29
	ret p			;bc2a
	nop			;bc2b
	ld bc,00000h		;bc2c
	nop			;bc2f
	jr c,lbc32h		;bc30
lbc32h:
	adc a,b			;bc32
	ret p			;bc33
	ld (hl),b		;bc34
	add a,b			;bc35
	add a,e			;bc36
	nop			;bc37
	inc c			;bc38
lbc39h:
	nop			;bc39
	ld (hl),e		;bc3a
	nop			;bc3b
	add a,l			;bc3c
	nop			;bc3d
	ld a,(de)		;bc3e
	nop			;bc3f
	sub b			;bc40
	nop			;bc41
	ld h,l			;bc42
	ld a,(de)		;bc43
	jp nc,lac2ch		;bc44
	djnz lbc39h		;bc47
	nop			;bc49
	pop bc			;bc4a
	nop			;bc4b
	ld (bc),a		;bc4c
	ld bc,00205h		;bc4d
	ex af,af'		;bc50
	rlca			;bc51
	sub b			;bc52
	dec bc			;bc53
	ld l,b			;bc54
	djnz lbbe5h		;bc55
	ld (hl),b		;bc57
	pop de			;bc58
	jr nz,$-120		;bc59
	ld h,c			;bc5b
	xor c			;bc5c
	ld b,(hl)		;bc5d
	ld d,l			;bc5e
	adc a,d			;bc5f
	xor d			;bc60
	inc d			;bc61
	ld b,(hl)		;bc62
	add a,c			;bc63
	add hl,sp		;bc64
	add a,006h		;bc65
	ret m			;bc67
	ld a,b			;bc68
	add a,b			;bc69
	and b			;bc6a
	ld b,b			;bc6b
	ld b,b			;bc6c
	add a,b			;bc6d
	add a,a			;bc6e
	nop			;bc6f
	ex af,af'		;bc70
	rlca			;bc71
	inc e			;bc72
	ret po			;bc73
	ret po			;bc74
	nop			;bc75
	ld bc,01e00h		;bc76
	ld bc,01f21h		;bc79
	rst 18h			;bc7c
	ccf			;bc7d
	ld (hl),h		;bc7e
	rst 38h			;bc7f
	set 6,h			;bc80
	nop			;bc82
	nop			;bc83
	jr c,lbc86h		;bc84
lbc86h:
	rst 38h			;bc86
	nop			;bc87
	ex af,af'		;bc88
	rst 38h			;bc89
	rst 38h			;bc8a
	rst 38h			;bc8b
	adc a,b			;bc8c
	rst 38h			;bc8d
	ld (hl),a		;bc8e
	adc a,b			;bc8f
lbc90h:
	adc a,b			;bc90
	ld (hl),a		;bc91
	nop			;bc92
	nop			;bc93
	nop			;bc94
	nop			;bc95
	ret po			;bc96
	nop			;bc97
	ld e,0e0h		;bc98
	pop hl			;bc9a
	cp 03eh			;bc9b
	rst 38h			;bc9d
	call nc,0eb2bh		;bc9e
	djnz lbca3h		;bca1
lbca3h:
	nop			;bca3
	nop			;bca4
	nop			;bca5
	nop			;bca6
	nop			;bca7
	nop			;bca8
	nop			;bca9
	add a,b			;bcaa
	nop			;bcab
	ld h,b			;bcac
	add a,b			;bcad
	jr lbc90h		;bcae
	and h			;bcb0
	ld a,b			;bcb1
	ld b,a			;bcb2
	ccf			;bcb3
	ld sp,0080fh		;bcb4
	rlca			;bcb7
	ld b,h			;bcb8
	inc bc			;bcb9
	inc hl			;bcba
	nop			;bcbb
	add hl,sp		;bcbc
	nop			;bcbd
lbcbeh:
	inc d			;bcbe
	ex af,af'		;bcbf
	inc c			;bcc0
	nop			;bcc1
	cp a			;bcc2
	rst 38h			;bcc3
	rst 28h			;bcc4
	rst 38h			;bcc5
	ld d,a			;bcc6
	rst 28h			;bcc7
	ex (sp),hl		;bcc8
	rst 38h			;bcc9
	dec c			;bcca
	di			;bccb
	and d			;bccc
	ld e,l			;bccd
	call nc,0c92fh		;bcce
	ld (hl),0f9h		;bcd1
	cp 0fch			;bcd3
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
	ld a,a			;bce0
	rst 38h			;bce1
	ld (hl),b		;bce2
	add a,b			;bce3
	adc a,b			;bce4
	ld (hl),b		;bce5
	scf			;bce6
	ret z			;bce7
	ld c,b			;bce8
	or a			;bce9
	sub c			;bcea
	rst 28h			;bceb
	jp c,0fcfdh		;bcec
	rst 38h			;bcef
	rst 38h			;bcf0
	rst 38h			;bcf1
	or c			;bcf2
	ld c,a			;bcf3
	ld b,(hl)		;bcf4
	add hl,sp		;bcf5
	ret z			;bcf6
	ccf			;bcf7
	or c			;bcf8
	ld c,046h		;bcf9
	add a,b			;bcfb
	jr c,lbcbeh		;bcfc
	add a,a			;bcfe
	ld a,b			;bcff
	ld (hl),b		;bd00
	adc a,a			;bd01
	rst 38h			;bd02
	rst 38h			;bd03
	cp a			;bd04
	rst 38h			;bd05
	ld c,l			;bd06
	cp a			;bd07
	or a			;bd08
	rrca			;bd09
	ld l,c			;bd0a
	rlca			;bd0b
	inc d			;bd0c
	inc bc			;bd0d
	ld (bc),a		;bd0e
	ld bc,000c1h		;bd0f
	rst 38h			;bd12
	rst 38h			;bd13
	rst 38h			;bd14
	rst 38h			;bd15
	rst 38h			;bd16
	rst 38h			;bd17
	ld c,a			;bd18
	rst 38h			;bd19
	rst 28h			;bd1a
	rst 38h			;bd1b
	exx			;bd1c
	rst 38h			;bd1d
	rrca			;bd1e
	rst 38h			;bd1f
	ld a,(de)		;bd20
	rst 38h			;bd21
	adc a,(hl)		;bd22
	pop af			;bd23
	ex (sp),hl		;bd24
	call m,0fefdh		;bd25
	cp 0ffh			;bd28
	rst 38h			;bd2a
	rst 38h			;bd2b
	rst 38h			;bd2c
	rst 38h			;bd2d
	rst 38h			;bd2e
	rst 38h			;bd2f
	rra			;bd30
	rst 38h			;bd31
	ret po			;bd32
	nop			;bd33
	sub b			;bd34
	ld h,b			;bd35
	ret z			;bd36
	jr nc,lbd82h		;bd37
	or b			;bd39
	or l			;bd3a
	ret m			;bd3b
	call p,0f4f8h		;bd3c
	ret m			;bd3f
	call po,063f8h		;bd40
	nop			;bd43
	ld b,b			;bd44
	nop			;bd45
	and c			;bd46
	nop			;bd47
	cp h			;bd48
	nop			;bd49
	call po,094b8h		;bd4a
	jr c,lbdb9h		;bd4d
	sbc a,h			;bd4f
	sub l			;bd50
	ld c,017h		;bd51
	nop			;bd53
	add a,b			;bd54
	nop			;bd55
	or b			;bd56
	nop			;bd57
	ld l,b			;bd58
	sub b			;bd59
	ret nc			;bd5a
	nop			;bd5b
	nop			;bd5c
	nop			;bd5d
	nop			;bd5e
	nop			;bd5f
	add a,b			;bd60
	nop			;bd61
	jp nc,00000h		;bd62
	nop			;bd65
	ld b,000h		;bd66
	ld e,000h		;bd68
	jr lbd6ch		;bd6a
lbd6ch:
	jr nz,lbd6eh		;bd6c
lbd6eh:
	inc de			;bd6e
	nop			;bd6f
	ld c,a			;bd70
	nop			;bd71
	ld h,b			;bd72
	nop			;bd73
	ret nz			;bd74
	nop			;bd75
	ret po			;bd76
	nop			;bd77
	ld b,d			;bd78
	nop			;bd79
	ld a,(bc)		;bd7a
	nop			;bd7b
	inc hl			;bd7c
	nop			;bd7d
	ld sp,hl		;bd7e
	nop			;bd7f
	sbc a,c			;bd80
	nop			;bd81
lbd82h:
	dec bc			;bd82
	inc b			;bd83
	inc d			;bd84
	ex af,af'		;bd85
	jr lbd88h		;bd86
lbd88h:
	ld sp,06100h		;bd88
	nop			;bd8b
	ld bc,00300h		;bd8c
	nop			;bd8f
	and d			;bd90
	nop			;bd91
	inc h			;bd92
	jr $+90			;bd93
	jr nz,$-93		;bd95
	nop			;bd97
	ld b,d			;bd98
	ld bc,00385h		;bd99
	ld a,(bc)		;bd9c
	rlca			;bd9d
	inc d			;bd9e
	rrca			;bd9f
	add hl,hl		;bda0
	ld e,037h		;bda1
	rrca			;bda3
	ld c,h			;bda4
	ccf			;bda5
	or d			;bda6
	ld a,h			;bda7
	ld l,a			;bda8
	ret p			;bda9
	sub e			;bdaa
	ret po			;bdab
	ld l,(hl)		;bdac
	add a,c			;bdad
	sub l			;bdae
	ex af,af'		;bdaf
	ld l,(hl)		;bdb0
	ld de,0c33ch		;bdb1
	out (00fh),a		;bdb4
	ld l,(hl)		;bdb6
	dec e			;bdb7
	cp (hl)			;bdb8
lbdb9h:
	ld b,c			;bdb9
	ld c,c			;bdba
	add a,a			;bdbb
	or b			;bdbc
	rrca			;bdbd
	ld c,a			;bdbe
	or b			;bdbf
	ld (hl),b		;bdc0
	add a,b			;bdc1
	ld (hl),a		;bdc2
	rst 38h			;bdc3
	ld e,0ffh		;bdc4
	push hl			;bdc6
	ld a,(de)		;bdc7
	djnz $+1		;bdc8
	call m,00affh		;bdca
	defb 0fdh,0d0h,02fh ;illegal sequence	;bdcd
	ld l,001h		;bdd0
	ld d,0f8h		;bdd2
	ld sp,hl		;bdd4
	cp 01eh			;bdd5
	rst 38h			;bdd7
	ex (sp),hl		;bdd8
	rra			;bdd9
	dec d			;bdda
	ex de,hl		;bddb
	ld hl,(0c5f1h)		;bddc
	jr c,$+40		;bddf
	ret m			;bde1
	ld e,d			;bde2
	inc a			;bde3
	xor l			;bde4
	ld e,056h		;bde5
	adc a,a			;bde7
	ld c,d			;bde8
	add a,a			;bde9
	or l			;bdea
	jp 0e152h		;bdeb
	xor c			;bdee
	ld (hl),b		;bdef
	ld c,c			;bdf0
	jr nc,lbdfdh		;bdf1
	inc b			;bdf3
lbdf4h:
	ld a,(bc)		;bdf4
	inc b			;bdf5
	add a,l			;bdf6
	ld (bc),a		;bdf7
	add a,l			;bdf8
	ld (bc),a		;bdf9
	ld b,l			;bdfa
	add a,d			;bdfb
	ld b,d			;bdfc
lbdfdh:
	add a,c			;bdfd
	ld b,d			;bdfe
	add a,c			;bdff
	and d			;be00
	ld b,c			;be01
	ld l,d			;be02
	rla			;be03
	ld h,l			;be04
	dec de			;be05
	ld a,(03d01h)		;be06
	nop			;be09
	dec (hl)		;be0a
	nop			;be0b
	sub (hl)		;be0c
	nop			;be0d
	sub d			;be0e
	nop			;be0f
	adc a,c			;be10
	ld (bc),a		;be11
	rst 38h			;be12
	ld a,a			;be13
	ccf			;be14
	rst 38h			;be15
	rra			;be16
	rst 38h			;be17
	rra			;be18
	rst 38h			;be19
	ld a,a			;be1a
	rst 38h			;be1b
	adc a,a			;be1c
	ld a,a			;be1d
	xor a			;be1e
	ld a,a			;be1f
	ld l,a			;be20
	rst 38h			;be21
	add a,l			;be22
	jp m,0ffe8h		;be23
	defb 0fdh,0feh,0feh ;illegal sequence	;be26
	rst 38h			;be29
	ei			;be2a
	rst 38h			;be2b
	cp 0ffh			;be2c
	rst 38h			;be2e
	rst 38h			;be2f
	rst 38h			;be30
	rst 38h			;be31
	jr nc,lbdf4h		;be32
	ld c,h			;be34
	ret p			;be35
	sub h			;be36
	ld a,b			;be37
	ld h,e			;be38
	sbc a,h			;be39
	cp c			;be3a
	add a,00ch		;be3b
	di			;be3d
	inc l			;be3e
lbe3fh:
	di			;be3f
	sub (hl)		;be40
	ld sp,hl		;be41
	ret			;be42
	scf			;be43
	dec h			;be44
	dec de			;be45
	inc de			;be46
	rrca			;be47
	ld a,(bc)		;be48
	rlca			;be49
	add hl,bc		;be4a
	ld b,084h		;be4b
	inc bc			;be4d
	add a,d			;be4e
	ld bc,08142h		;be4f
	adc a,a			;be52
	rst 38h			;be53
	rst 28h			;be54
	rst 38h			;be55
	rst 30h			;be56
	rst 38h			;be57
	ld d,a			;be58
	rst 38h			;be59
	ld d,a			;be5a
	rst 38h			;be5b
	ld c,a			;be5c
	rst 38h			;be5d
	rst 18h			;be5e
	rst 38h			;be5f
	sbc a,a			;be60
	rst 38h			;be61
	jp nc,0eaech		;be62
	call p,0fef1h		;be65
	jp m,0ffffh		;be68
	rst 38h			;be6b
	rst 38h			;be6c
	rst 38h			;be6d
	rst 38h			;be6e
	rst 38h			;be6f
lbe70h:
	cp 0ffh			;be70
	ld l,(hl)		;be72
	add a,a			;be73
	sub c			;be74
	ld l,a			;be75
	ld e,h			;be76
	daa			;be77
	ld h,l			;be78
	inc bc			;be79
	and (hl)		;be7a
	ld bc,00061h		;be7b
	sub c			;be7e
	ld h,b			;be7f
	ld de,078e0h		;be80
	add a,b			;be83
	add a,a			;be84
	ret m			;be85
	ret m			;be86
	rst 38h			;be87
	push af			;be88
	ei			;be89
	rst 30h			;be8a
	ret m			;be8b
	ret pe			;be8c
	rst 38h			;be8d
	ld h,a			;be8e
	rst 38h			;be8f
	add hl,hl		;be90
	rst 30h			;be91
	ld d,b			;be92
	jr nz,lbecdh		;be93
	nop			;be95
	ret nz			;be96
	nop			;be97
	ld h,b			;be98
	add a,b			;be99
	ld e,0e0h		;be9a
	ex (sp),hl		;be9c
	inc e			;be9d
	inc h			;be9e
	rst 18h			;be9f
	in a,(0e7h)		;bea0
	ld (hl),008h		;bea2
	dec bc			;bea4
	inc b			;bea5
	dec b			;bea6
	ld (bc),a		;bea7
	ld b,000h		;bea8
	nop			;beaa
	nop			;beab
	nop			;beac
	nop			;bead
	add a,b			;beae
	nop			;beaf
	ld h,b			;beb0
	add a,b			;beb1
	ld b,h			;beb2
	jr nz,lbef9h		;beb3
	jr nz,lbe3fh		;beb5
	ld b,b			;beb7
	sub c			;beb8
	ld b,b			;beb9
	ld h,c			;beba
	nop			;bebb
	ld (bc),a		;bebc
	ld bc,00103h		;bebd
	dec b			;bec0
	inc bc			;bec1
	ld e,d			;bec2
	inc a			;bec3
	ld d,l			;bec4
	jr c,lbe70h		;bec5
	ld (hl),b		;bec7
	ld d,d			;bec8
lbec9h:
	pop hl			;bec9
	ld (0e5c1h),a		;beca
lbecdh:
	add a,d			;becd
	ld b,(hl)		;bece
	add a,b			;becf
	ld c,e			;bed0
	add a,h			;bed1
	sub l			;bed2
	ld h,d			;bed3
	ld l,0c0h		;bed4
	ld e,b			;bed6
	and b			;bed7
	or b			;bed8
	nop			;bed9
	ld h,c			;beda
	add a,b			;bedb
	jp nz,08501h		;bedc
	ld (bc),a		;bedf
	adc a,l			;bee0
	ld (bc),a		;bee1
	add a,b			;bee2
	nop			;bee3
	rlca			;bee4
	nop			;bee5
	dec de			;bee6
	inc b			;bee7
	ld a,h			;bee8
	nop			;bee9
	ret po			;beea
	nop			;beeb
	add a,b			;beec
	nop			;beed
	nop			;beee
	nop			;beef
	nop			;bef0
	nop			;bef1
	exx			;bef2
	nop			;bef3
	daa			;bef4
	ret c			;bef5
	call m,00303h		;bef6
lbef9h:
	nop			;bef9
	ld bc,00000h		;befa
	nop			;befd
	nop			;befe
	nop			;beff
lbf00h:
	nop			;bf00
	nop			;bf01
	pop de			;bf02
	ld l,(hl)		;bf03
	ld l,b			;bf04
	scf			;bf05
	or (hl)			;bf06
	add hl,de		;bf07
	defb 0ddh,088h,0cdh ;illegal sequence	;bf08
	nop			;bf0b
	ld c,d			;bf0c
	inc b			;bf0d
	ld b,000h		;bf0e
	ld b,000h		;bf10
	ld h,h			;bf12
	jr lbec9h		;bf13
	ex af,af'		;bf15
	ld d,b			;bf16
	adc a,h			;bf17
	ld c,d			;bf18
	add a,h			;bf19
	jp z,la604h		;bf1a
	ld b,b			;bf1d
	and (hl)		;bf1e
	ld b,b			;bf1f
	and (hl)		;bf20
	ld b,b			;bf21
	and d			;bf22
	ld b,c			;bf23
	and e			;bf24
	ld b,b			;bf25
	ld h,d			;bf26
	nop			;bf27
	ld b,d			;bf28
	nop			;bf29
	ld (bc),a		;bf2a
	nop			;bf2b
	ld (bc),a		;bf2c
	nop			;bf2d
	ld (bc),a		;bf2e
	nop			;bf2f
	dec b			;bf30
	nop			;bf31
	add a,(hl)		;bf32
	nop			;bf33
	add a,l			;bf34
	ld (bc),a		;bf35
	ret nz			;bf36
	ld b,0c9h		;bf37
	ld b,0c9h		;bf39
	ld b,0c5h		;bf3b
	ld (bc),a		;bf3d
	add a,l			;bf3e
	ld (bc),a		;bf3f
	adc a,l			;bf40
	ld (bc),a		;bf41
	or a			;bf42
	ld a,a			;bf43
	or a			;bf44
	ld a,a			;bf45
	rst 18h			;bf46
	ccf			;bf47
	ld d,a			;bf48
	ccf			;bf49
	ld e,a			;bf4a
	ccf			;bf4b
	ld e,a			;bf4c
	ccf			;bf4d
	cpl			;bf4e
	rra			;bf4f
	dec hl			;bf50
	rra			;bf51
	or a			;bf52
	ret m			;bf53
	jp pe,02ff5h		;bf54
	ret p			;bf57
	sbc a,h			;bf58
	ex (sp),hl		;bf59
	jp c,042e7h		;bf5a
	cp a			;bf5d
	ld e,l			;bf5e
	or d			;bf5f
	ld l,e			;bf60
	sub b			;bf61
	jp nz,0c201h		;bf62
	ld bc,041a2h		;bf65
	push bc			;bf68
	inc bc			;bf69
	ld b,h			;bf6a
	add a,e			;bf6b
	adc a,e			;bf6c
	rlca			;bf6d
	ld d,00fh		;bf6e
	dec h			;bf70
	ld e,0afh		;bf71
	rst 18h			;bf73
	rst 18h			;bf74
	rst 38h			;bf75
	xor a			;bf76
	rst 18h			;bf77
	ld e,a			;bf78
	rst 38h			;bf79
	cp a			;bf7a
	ld a,a			;bf7b
	ld a,a			;bf7c
	rst 38h			;bf7d
	rst 18h			;bf7e
	rst 38h			;bf7f
	ld a,a			;bf80
	rst 38h			;bf81
	rst 38h			;bf82
	rst 38h			;bf83
	cp 0ffh			;bf84
	defb 0fdh,0feh,0fdh ;illegal sequence	;bf86
	cp 0feh			;bf89
	call m,0fefdh		;bf8b
	cp 0ffh			;bf8e
	defb 0fdh,0feh,0e1h ;illegal sequence	;bf90
	nop			;bf93
	ld hl,la2c0h		;bf94
	ld b,c			;bf97
	ld b,d			;bf98
	add a,c			;bf99
	ld b,d			;bf9a
	add a,c			;bf9b
	ld b,c			;bf9c
	add a,b			;bf9d
	ld b,b			;bf9e
	add a,b			;bf9f
	ld b,b			;bfa0
	add a,b			;bfa1
	ld c,d			;bfa2
	push af			;bfa3
	ld l,a			;bfa4
	ret p			;bfa5
	push af			;bfa6
	ret m			;bfa7
	ei			;bfa8
	call m,0fffch		;bfa9
	ld a,0ffh		;bfac
	rst 18h			;bfae
	ccf			;bfaf
	cpl			;bfb0
	rra			;bfb1
	inc h			;bfb2
	di			;bfb3
	adc a,c			;bfb4
	ld (hl),b		;bfb5
	ld h,h			;bfb6
	jr lbfcah		;bfb7
	ld c,08ch		;bfb9
	inc bc			;bfbb
	ld b,d			;bfbc
	add a,c			;bfbd
	inc hl			;bfbe
	ret nz			;bfbf
	sub c			;bfc0
	ret po			;bfc1
	sub b			;bfc2
	ret po			;bfc3
	ld e,h			;bfc4
	and b			;bfc5
	xor b			;bfc6
	djnz $+86		;bfc7
	cp b			;bfc9
lbfcah:
	ld a,(074fch)		;bfca
	ret m			;bfcd
	dec (hl)		;bfce
	ret m			;bfcf
	sbc a,d			;bfd0
	ld a,h			;bfd1
	ld b,h			;bfd2
	inc bc			;bfd3
	ld b,h			;bfd4
	inc bc			;bfd5
	adc a,c			;bfd6
	ld b,089h		;bfd7
	ld b,089h		;bfd9
	ld b,089h		;bfdb
	ld b,089h		;bfdd
	ld b,089h		;bfdf
	ld b,08dh		;bfe1
	nop			;bfe3
	adc a,e			;bfe4
	nop			;bfe5
	dec bc			;bfe6
	nop			;bfe7
	ld (bc),a		;bfe8
	nop			;bfe9
	ld (de),a		;bfea
	nop			;bfeb
	ld (de),a		;bfec
	nop			;bfed
	ld (de),a		;bfee
	nop			;bfef
	ld (bc),a		;bff0
	nop			;bff1
	ld a,(de)		;bff2
	nop			;bff3
	ld d,000h		;bff4
	inc d			;bff6
	nop			;bff7
	inc (hl)		;bff8
	nop			;bff9
	inc l			;bffa
	nop			;bffb
	ld l,h			;bffc
	nop			;bffd
	ld h,(hl)		;bffe
	nop			;bfff

; z80dasm 1.2.0
; command line: z80dasm -a -l -g 0xA000 -o /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/disasm/bank26_A000.asm /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/banks/bank26.bin

	org 0a000h

	cp (hl)			;a000
	cp (hl)			;a001
la002h:
	cp (hl)			;a002
	cp (hl)			;a003
	push bc			;a004
	push bc			;a005
	push bc			;a006
	push bc			;a007
	ld bc,00104h		;a008
	inc b			;a00b
	ld c,00dh		;a00c
	ld c,00dh		;a00e
	add hl,bc		;a010
	ld hl,02109h		;a011
	ex af,af'		;a014
	dec e			;a015
	ex af,af'		;a016
	dec e			;a017
	ld (de),a		;a018
	ld de,01112h		;a019
	jr la035h		;a01c
	jr la037h		;a01e
	cp (hl)			;a020
	cp (hl)			;a021
	cp h			;a022
	cp l			;a023
	push bc			;a024
	push bc			;a025
	cp d			;a026
	cp e			;a027
	ld bc,lb804h		;a028
	cp c			;a02b
	ld c,00dh		;a02c
	cp b			;a02e
	cp c			;a02f
	ld d,016h		;a030
	ld d,016h		;a032
	dec d			;a034
la035h:
	dec d			;a035
	dec d			;a036
la037h:
	dec d			;a037
	cp (hl)			;a038
	cp (hl)			;a039
	cp h			;a03a
	cp l			;a03b
	push bc			;a03c
	push bc			;a03d
	cp d			;a03e
	cp e			;a03f
	rrca			;a040
	rrca			;a041
	cp h			;a042
	cp l			;a043
	djnz la056h		;a044
	cp d			;a046
	cp e			;a047
	dec h			;a048
	dec h			;a049
	dec h			;a04a
	dec h			;a04b
	dec h			;a04c
	dec h			;a04d
	dec h			;a04e
	dec h			;a04f
	add hl,bc		;a050
	inc c			;a051
	cp b			;a052
	cp c			;a053
	ex af,af'		;a054
	dec bc			;a055
la056h:
	cp b			;a056
	cp c			;a057
	ld (de),a		;a058
	ld de,lb9b8h		;a059
	jr la075h		;a05c
	cp b			;a05e
	cp c			;a05f
	ld d,016h		;a060
	ld d,016h		;a062
	dec d			;a064
	dec d			;a065
	dec d			;a066
	dec d			;a067
	cp h			;a068
	cp l			;a069
	inc d			;a06a
	inc de			;a06b
	cp d			;a06c
	cp e			;a06d
	rlca			;a06e
	ld a,(bc)		;a06f
	nop			;a070
	nop			;a071
	nop			;a072
	nop			;a073
	nop			;a074
la075h:
	nop			;a075
	nop			;a076
	nop			;a077
	nop			;a078
	nop			;a079
	nop			;a07a
	nop			;a07b
	nop			;a07c
	nop			;a07d
	nop			;a07e
	nop			;a07f
	ld a,l			;a080
	ld a,d			;a081
	ld a,(hl)		;a082
	adc a,b			;a083
	adc a,d			;a084
	adc a,e			;a085
	add a,c			;a086
	adc a,c			;a087
	adc a,l			;a088
	adc a,(hl)		;a089
	ld a,(hl)		;a08a
	adc a,b			;a08b
	adc a,d			;a08c
	adc a,e			;a08d
	adc a,h			;a08e
	adc a,c			;a08f
	ld a,l			;a090
	ld a,d			;a091
	ld a,(hl)		;a092
	adc a,b			;a093
	ld a,a			;a094
	add a,b			;a095
	add a,c			;a096
	adc a,c			;a097
	ld a,l			;a098
	ld a,d			;a099
	ld a,(hl)		;a09a
	adc a,b			;a09b
	adc a,a			;a09c
	sub b			;a09d
	adc a,h			;a09e
	adc a,c			;a09f
	ld a,l			;a0a0
	ld a,d			;a0a1
	ld a,(hl)		;a0a2
	adc a,b			;a0a3
	ld a,a			;a0a4
	add a,b			;a0a5
	add a,c			;a0a6
	adc a,c			;a0a7
	add a,e			;a0a8
	add a,l			;a0a9
	add a,a			;a0aa
	adc a,b			;a0ab
	adc a,a			;a0ac
	sub b			;a0ad
	adc a,h			;a0ae
	adc a,c			;a0af
	ld a,l			;a0b0
	ld a,d			;a0b1
	ld a,(hl)		;a0b2
	adc a,b			;a0b3
	ld a,a			;a0b4
	add a,b			;a0b5
	add a,c			;a0b6
	adc a,c			;a0b7
	add a,(hl)		;a0b8
	add a,d			;a0b9
	add a,h			;a0ba
	adc a,b			;a0bb
	adc a,a			;a0bc
	sub b			;a0bd
	adc a,h			;a0be
	adc a,c			;a0bf
	ld a,c			;a0c0
	ld a,e			;a0c1
	ld a,e			;a0c2
	ld a,c			;a0c3
	ld a,h			;a0c4
	ld a,b			;a0c5
	ld a,b			;a0c6
	ld a,h			;a0c7
	ld a,h			;a0c8
	ld a,b			;a0c9
	ld a,b			;a0ca
	ld a,h			;a0cb
	ld a,c			;a0cc
	ld a,e			;a0cd
	ld a,e			;a0ce
	ld a,c			;a0cf
	nop			;a0d0
	nop			;a0d1
	nop			;a0d2
	ld (hl),c		;a0d3
	sub c			;a0d4
	sub d			;a0d5
	sub e			;a0d6
	sub h			;a0d7
	ld a,l			;a0d8
	ld a,d			;a0d9
	ld a,(hl)		;a0da
	adc a,b			;a0db
	adc a,a			;a0dc
	sub b			;a0dd
	adc a,h			;a0de
	adc a,c			;a0df
	nop			;a0e0
	nop			;a0e1
	nop			;a0e2
	ld (hl),c		;a0e3
	sub c			;a0e4
	sub d			;a0e5
	sub e			;a0e6
	sub h			;a0e7
	ld a,a			;a0e8
	add a,b			;a0e9
	add a,c			;a0ea
	adc a,b			;a0eb
	add a,(hl)		;a0ec
	add a,d			;a0ed
	add a,h			;a0ee
	adc a,c			;a0ef
	sub c			;a0f0
	sub d			;a0f1
	sub e			;a0f2
	sub h			;a0f3
	ld a,a			;a0f4
	add a,b			;a0f5
	add a,c			;a0f6
	adc a,c			;a0f7
	add a,e			;a0f8
	add a,l			;a0f9
	add a,a			;a0fa
	adc a,b			;a0fb
	adc a,a			;a0fc
	sub b			;a0fd
	adc a,h			;a0fe
	adc a,c			;a0ff
	sub c			;a100
	sub d			;a101
	sub e			;a102
	sub h			;a103
	adc a,d			;a104
	adc a,e			;a105
	add a,c			;a106
	adc a,c			;a107
	adc a,l			;a108
	adc a,(hl)		;a109
	ld a,(hl)		;a10a
	adc a,b			;a10b
	adc a,d			;a10c
	adc a,e			;a10d
	adc a,h			;a10e
	adc a,c			;a10f
	ld a,l			;a110
	ld a,d			;a111
	ld a,(hl)		;a112
	adc a,b			;a113
	ld a,a			;a114
	add a,b			;a115
	add a,c			;a116
	adc a,c			;a117
	ld a,l			;a118
	ld a,d			;a119
	ld a,(hl)		;a11a
	adc a,b			;a11b
	ld (hl),d		;a11c
	ld (hl),d		;a11d
	ld (hl),d		;a11e
	nop			;a11f
	ld a,a			;a120
	add a,b			;a121
	add a,c			;a122
	adc a,b			;a123
	ld a,a			;a124
	add a,b			;a125
	add a,c			;a126
	adc a,c			;a127
	add a,(hl)		;a128
	add a,d			;a129
	add a,h			;a12a
	adc a,b			;a12b
	ld (hl),d		;a12c
	ld (hl),d		;a12d
	ld (hl),d		;a12e
	nop			;a12f
	nop			;a130
	nop			;a131
	nop			;a132
	nop			;a133
	nop			;a134
	nop			;a135
	ld (hl),h		;a136
	halt			;a137
	nop			;a138
	ld (hl),e		;a139
	ld (hl),a		;a13a
	ld (hl),l		;a13b
	nop			;a13c
	nop			;a13d
	nop			;a13e
	nop			;a13f
	nop			;a140
	nop			;a141
	nop			;a142
	nop			;a143
	ld (hl),h		;a144
	halt			;a145
	ld (hl),h		;a146
	halt			;a147
	ld (hl),a		;a148
	ld (hl),l		;a149
	ld (hl),a		;a14a
	ld (hl),l		;a14b
	nop			;a14c
	nop			;a14d
	nop			;a14e
	nop			;a14f
	nop			;a150
	nop			;a151
	nop			;a152
	nop			;a153
	ld (hl),h		;a154
	halt			;a155
	ld (hl),h		;a156
	nop			;a157
	ld (hl),a		;a158
	ld (hl),l		;a159
	ld (hl),a		;a15a
	nop			;a15b
	nop			;a15c
	nop			;a15d
	nop			;a15e
	nop			;a15f
	ld (hl),d		;a160
	ld (hl),d		;a161
	ld (hl),d		;a162
	nop			;a163
	nop			;a164
	ld (hl),h		;a165
	halt			;a166
	nop			;a167
	ld (hl),e		;a168
	ld (hl),a		;a169
	ld (hl),l		;a16a
	nop			;a16b
	sub c			;a16c
	sub d			;a16d
	sub e			;a16e
	sub h			;a16f
	ld c,(hl)		;a170
	ld c,(hl)		;a171
	inc hl			;a172
	ccf			;a173
	ld hl,03d66h		;a174
	ld e,h			;a177
	ld c,(hl)		;a178
	ld c,(hl)		;a179
	inc hl			;a17a
	ccf			;a17b
	adc a,a			;a17c
	sub b			;a17d
	adc a,h			;a17e
	adc a,c			;a17f
	ld c,(hl)		;a180
	ld c,a			;a181
	ld c,(hl)		;a182
	ld c,a			;a183
	ld e,h			;a184
	ld e,h			;a185
	ld e,h			;a186
	ld e,h			;a187
	ld c,(hl)		;a188
	ld c,a			;a189
	ld c,(hl)		;a18a
	ld c,a			;a18b
	adc a,a			;a18c
	sub b			;a18d
	adc a,h			;a18e
	adc a,c			;a18f
	ld c,(hl)		;a190
	ld c,(hl)		;a191
	inc hl			;a192
	ld d,c			;a193
	ld hl,03d66h		;a194
	ld d,c			;a197
	ld c,(hl)		;a198
	ld c,(hl)		;a199
	inc hl			;a19a
	ld d,d			;a19b
	adc a,a			;a19c
	sub b			;a19d
	adc a,h			;a19e
	adc a,c			;a19f
	ld d,c			;a1a0
	ld c,a			;a1a1
	ld c,(hl)		;a1a2
	ld c,a			;a1a3
	ld d,c			;a1a4
	ld e,h			;a1a5
	ld e,h			;a1a6
	ld e,h			;a1a7
	ld d,d			;a1a8
	ld c,a			;a1a9
	ld c,(hl)		;a1aa
	ld c,a			;a1ab
	adc a,a			;a1ac
	sub b			;a1ad
	adc a,h			;a1ae
	adc a,c			;a1af
	ld c,(hl)		;a1b0
	ld c,a			;a1b1
	inc hl			;a1b2
	ccf			;a1b3
	ld e,e			;a1b4
	ld e,d			;a1b5
	ld e,03ah		;a1b6
	ld h,l			;a1b8
	ld h,l			;a1b9
	ld h,l			;a1ba
	ld h,l			;a1bb
	ld (hl),b		;a1bc
	ld (hl),b		;a1bd
	ld (hl),b		;a1be
	ld (hl),b		;a1bf
	ld c,(hl)		;a1c0
	ld c,a			;a1c1
	ld c,(hl)		;a1c2
	ld c,a			;a1c3
	ld e,h			;a1c4
	ld e,h			;a1c5
	ld e,h			;a1c6
	djnz la217h		;a1c7
	ld c,a			;a1c9
	dec e			;a1ca
	add hl,bc		;a1cb
	adc a,a			;a1cc
	xor d			;a1cd
	add hl,bc		;a1ce
	ld a,(bc)		;a1cf
	dec e			;a1d0
	add hl,bc		;a1d1
	ld a,(bc)		;a1d2
	dec bc			;a1d3
	add hl,bc		;a1d4
	ld a,(bc)		;a1d5
	dec bc			;a1d6
	ld a,(de)		;a1d7
	ld a,(bc)		;a1d8
	dec bc			;a1d9
	ld a,(de)		;a1da
	rla			;a1db
	dec bc			;a1dc
	ld a,(de)		;a1dd
	rla			;a1de
	and b			;a1df
	ld a,(de)		;a1e0
	rla			;a1e1
	ld (de),a		;a1e2
	add hl,de		;a1e3
	rla			;a1e4
	ld (de),a		;a1e5
	inc e			;a1e6
	ld e,h			;a1e7
	ld (de),a		;a1e8
	add hl,de		;a1e9
	ld c,(hl)		;a1ea
	ld c,a			;a1eb
	adc a,a			;a1ec
	sub b			;a1ed
	adc a,h			;a1ee
	adc a,c			;a1ef
	ld a,l			;a1f0
	ld a,d			;a1f1
	ld a,(hl)		;a1f2
	adc a,b			;a1f3
	ld a,a			;a1f4
	add a,b			;a1f5
	add a,c			;a1f6
	xor d			;a1f7
	add a,e			;a1f8
	add a,l			;a1f9
	xor d			;a1fa
	add hl,bc		;a1fb
	adc a,a			;a1fc
	xor d			;a1fd
	add hl,bc		;a1fe
	ld a,(bc)		;a1ff
	xor d			;a200
	add hl,bc		;a201
	ld a,(bc)		;a202
	dec bc			;a203
	add hl,bc		;a204
	ld a,(bc)		;a205
	dec bc			;a206
	ld a,(de)		;a207
	ld a,(bc)		;a208
	dec bc			;a209
	ld a,(de)		;a20a
	rla			;a20b
	dec bc			;a20c
	ld a,(de)		;a20d
	rla			;a20e
	and b			;a20f
	ld a,(de)		;a210
	rla			;a211
	and b			;a212
	adc a,b			;a213
	rla			;a214
	and b			;a215
	add a,c			;a216
la217h:
	adc a,c			;a217
	and b			;a218
	add a,d			;a219
	add a,h			;a21a
	adc a,b			;a21b
	adc a,a			;a21c
	sub b			;a21d
	adc a,h			;a21e
	adc a,c			;a21f
	ld a,l			;a220
	ld a,d			;a221
	ld a,(hl)		;a222
	adc a,b			;a223
	ld a,a			;a224
	add a,b			;a225
	add a,c			;a226
	adc a,c			;a227
	add a,e			;a228
	add a,l			;a229
	add a,a			;a22a
	or e			;a22b
	adc a,a			;a22c
	sub b			;a22d
	adc a,h			;a22e
	adc a,c			;a22f
	ld a,l			;a230
	dec c			;a231
	ld a,(bc)		;a232
	dec bc			;a233
	or e			;a234
	ld c,00bh		;a235
	ld a,(de)		;a237
	ld e,l			;a238
	rrca			;a239
	ld a,(de)		;a23a
	rla			;a23b
	or e			;a23c
	ld e,l			;a23d
	rla			;a23e
	and b			;a23f
	xor d			;a240
	add hl,bc		;a241
	ld a,(bc)		;a242
	dec bc			;a243
	add hl,bc		;a244
	ld a,(bc)		;a245
	dec bc			;a246
	jr nz,la253h		;a247
	dec bc			;a249
	jr nz,la255h		;a24a
	dec bc			;a24c
	jr nz,la258h		;a24d
	ld a,(bc)		;a24f
	ld a,(de)		;a250
	dec c			;a251
	ld a,(bc)		;a252
la253h:
	dec bc			;a253
	rla			;a254
la255h:
	ld c,00bh		;a255
	ld a,(de)		;a257
la258h:
	or e			;a258
	rrca			;a259
	ld a,(de)		;a25a
	rla			;a25b
	or e			;a25c
	ld e,l			;a25d
	rla			;a25e
	and b			;a25f
	ld e,e			;a260
	ld d,c			;a261
	ld a,(hl)		;a262
	adc a,b			;a263
	ld e,e			;a264
	ld d,c			;a265
	add a,c			;a266
	adc a,c			;a267
la268h:
	ld e,e			;a268
	ld d,c			;a269
	add a,a			;a26a
	adc a,b			;a26b
	ld e,e			;a26c
	ld d,c			;a26d
	adc a,h			;a26e
	adc a,c			;a26f
	ld e,e			;a270
	ld d,c			;a271
	and b			;a272
	adc a,b			;a273
	ld e,e			;a274
	ld d,c			;a275
	add a,c			;a276
	xor d			;a277
	ld e,h			;a278
	ld d,c			;a279
	xor d			;a27a
	add hl,bc		;a27b
	ld c,a			;a27c
	dec e			;a27d
	add hl,bc		;a27e
	ld a,(bc)		;a27f
	ld a,l			;a280
	ld e,(hl)		;a281
	ld e,(hl)		;a282
	ld e,(hl)		;a283
	adc a,d			;a284
	adc a,e			;a285
	sbc a,c			;a286
	ld h,l			;a287
	adc a,l			;a288
	adc a,(hl)		;a289
	ld a,(hl)		;a28a
	sbc a,e			;a28b
	adc a,d			;a28c
	adc a,e			;a28d
	adc a,h			;a28e
	adc a,c			;a28f
	ld d,d			;a290
	ld c,(hl)		;a291
	inc hl			;a292
	ccf			;a293
	ld e,h			;a294
	ld e,h			;a295
	ld e,h			;a296
	ld e,h			;a297
	ld c,(hl)		;a298
	ld c,a			;a299
	ld c,(hl)		;a29a
	ld c,a			;a29b
	adc a,a			;a29c
	sub b			;a29d
	adc a,h			;a29e
	adc a,c			;a29f
	ld a,l			;a2a0
	ld a,d			;a2a1
	ld a,(hl)		;a2a2
	adc a,b			;a2a3
	ld a,a			;a2a4
	add a,b			;a2a5
	add a,c			;a2a6
	adc a,c			;a2a7
	add a,e			;a2a8
	add a,l			;a2a9
	xor e			;a2aa
	ex af,af'		;a2ab
	adc a,a			;a2ac
	xor d			;a2ad
	add hl,bc		;a2ae
	ld a,(bc)		;a2af
	ld a,l			;a2b0
	ld a,d			;a2b1
	ld a,(hl)		;a2b2
	adc a,b			;a2b3
	ld a,a			;a2b4
	add a,b			;a2b5
	add a,c			;a2b6
	xor d			;a2b7
	and c			;a2b8
	ld a,d			;a2b9
	xor d			;a2ba
	add hl,bc		;a2bb
	jr la268h		;a2bc
	add hl,bc		;a2be
	ld a,(bc)		;a2bf
	ld d,b			;a2c0
	ld c,a			;a2c1
	ld c,(hl)		;a2c2
	ld c,a			;a2c3
	ld d,c			;a2c4
	ld e,h			;a2c5
	ld e,h			;a2c6
	djnz la31ah		;a2c7
	ld c,a			;a2c9
	dec e			;a2ca
	add hl,bc		;a2cb
	sbc a,b			;a2cc
	rra			;a2cd
	add hl,bc		;a2ce
	ld a,(bc)		;a2cf
	xor d			;a2d0
	add hl,bc		;a2d1
	ld a,(bc)		;a2d2
	dec bc			;a2d3
	add hl,bc		;a2d4
	ld a,(bc)		;a2d5
	dec bc			;a2d6
	ld a,(de)		;a2d7
	ld a,(bc)		;a2d8
	dec bc			;a2d9
	ld a,(de)		;a2da
	rla			;a2db
	dec bc			;a2dc
	ld a,(de)		;a2dd
	rla			;a2de
	ld (de),a		;a2df
	xor d			;a2e0
	add hl,bc		;a2e1
	ld a,(bc)		;a2e2
	dec bc			;a2e3
	sbc a,c			;a2e4
	ld h,l			;a2e5
	ld h,l			;a2e6
	ld d,b			;a2e7
	adc a,l			;a2e8
	sbc a,e			;a2e9
	ld (hl),b		;a2ea
	ld d,d			;a2eb
	adc a,d			;a2ec
	adc a,e			;a2ed
	ld e,(hl)		;a2ee
	ld e,(hl)		;a2ef
	ld a,(de)		;a2f0
	rla			;a2f1
	ld (de),a		;a2f2
	add hl,de		;a2f3
	rla			;a2f4
	ld (de),a		;a2f5
	ld d,05bh		;a2f6
	ld e,03ah		;a2f8
	ld e,03ah		;a2fa
	ld e,(hl)		;a2fc
	ld e,(hl)		;a2fd
	ld e,(hl)		;a2fe
	ld e,(hl)		;a2ff
	ld a,l			;a300
	ld a,d			;a301
	ld a,(hl)		;a302
	sbc a,c			;a303
	ld a,a			;a304
	add a,b			;a305
	add a,c			;a306
	adc a,c			;a307
	add a,e			;a308
	add a,l			;a309
	add a,a			;a30a
	adc a,b			;a30b
	adc a,a			;a30c
	sub b			;a30d
	adc a,h			;a30e
	adc a,c			;a30f
	ld h,l			;a310
	ld h,l			;a311
	ld h,l			;a312
	ld h,l			;a313
	sbc a,e			;a314
	ld (hl),b		;a315
	ld (hl),b		;a316
	ld (hl),b		;a317
	ld a,l			;a318
	sbc a,c			;a319
la31ah:
	ld h,l			;a31a
	ld h,l			;a31b
	adc a,a			;a31c
	sub b			;a31d
	sbc a,e			;a31e
	ld (hl),b		;a31f
	ld d,b			;a320
	ld c,a			;a321
	ld c,(hl)		;a322
	ld c,a			;a323
	ld d,c			;a324
	ld e,h			;a325
	ld e,h			;a326
	djnz la37ah		;a327
	ld c,a			;a329
	dec e			;a32a
	add hl,bc		;a32b
	ld d,c			;a32c
	rra			;a32d
	add hl,bc		;a32e
	ld a,(bc)		;a32f
	ld d,c			;a330
	ld e,h			;a331
	ld e,h			;a332
	ld d,c			;a333
	ld d,c			;a334
	ld c,a			;a335
	ld c,(hl)		;a336
	ld d,d			;a337
	ld d,c			;a338
	ld h,l			;a339
	ld h,l			;a33a
	ld h,l			;a33b
	ld d,d			;a33c
	ld (hl),b		;a33d
	ld (hl),b		;a33e
	sub a			;a33f
	ld h,l			;a340
	ld h,l			;a341
	sub (hl)		;a342
	adc a,b			;a343
	ld (hl),b		;a344
	sub a			;a345
	add a,c			;a346
	adc a,c			;a347
	sub (hl)		;a348
	add a,l			;a349
	add a,a			;a34a
	adc a,b			;a34b
	adc a,a			;a34c
	sub b			;a34d
	adc a,h			;a34e
	adc a,c			;a34f
	ld a,(de)		;a350
	rla			;a351
	and b			;a352
	adc a,b			;a353
	rla			;a354
	ld d,b			;a355
	add a,c			;a356
	adc a,c			;a357
	ld e,e			;a358
	ld d,c			;a359
	add a,a			;a35a
	adc a,b			;a35b
	ld e,e			;a35c
	ld d,c			;a35d
	adc a,h			;a35e
	adc a,c			;a35f
	ld hl,03d66h		;a360
	ld d,b			;a363
	ld c,(hl)		;a364
	ld c,a			;a365
	ld c,(hl)		;a366
	ld d,c			;a367
	ld e,e			;a368
	ld e,d			;a369
	ld e,e			;a36a
	ld d,c			;a36b
	ld e,(hl)		;a36c
	ld e,(hl)		;a36d
	ld d,d			;a36e
	ld d,d			;a36f
	ld hl,03d66h		;a370
	ld e,h			;a373
	ld c,(hl)		;a374
	ld c,(hl)		;a375
	inc hl			;a376
	ccf			;a377
	ld e,e			;a378
	ld e,e			;a379
la37ah:
	ld e,03ah		;a37a
	ld e,h			;a37c
	ld d,e			;a37d
	ld d,a			;a37e
	ld d,d			;a37f
	ld e,h			;a380
	ld e,h			;a381
	ld e,h			;a382
	ld e,h			;a383
	ld c,(hl)		;a384
	ld c,a			;a385
	ld c,(hl)		;a386
	ld c,a			;a387
	ld e,e			;a388
	ld e,d			;a389
	ld e,e			;a38a
	ld e,d			;a38b
	ld e,(hl)		;a38c
	ld e,(hl)		;a38d
	ld d,d			;a38e
	ld e,(hl)		;a38f
	ld d,d			;a390
	ld d,e			;a391
	ld e,b			;a392
	ld l,(hl)		;a393
	ld e,(hl)		;a394
	ld e,(hl)		;a395
	ld d,d			;a396
	ld e,(hl)		;a397
	ld e,c			;a398
	ld e,c			;a399
	ld l,e			;a39a
	ld d,(hl)		;a39b
	ld e,h			;a39c
	ld d,e			;a39d
	ld d,a			;a39e
	ld d,d			;a39f
	ld e,c			;a3a0
	ld e,c			;a3a1
	ld l,e			;a3a2
	ld d,(hl)		;a3a3
	ld e,h			;a3a4
	ld d,e			;a3a5
	ld d,a			;a3a6
	ld d,d			;a3a7
	ld d,d			;a3a8
	ld l,c			;a3a9
	ld e,b			;a3aa
	ld l,(hl)		;a3ab
	ld e,(hl)		;a3ac
	ld e,(hl)		;a3ad
	ld d,d			;a3ae
	ld e,(hl)		;a3af
	ld h,h			;a3b0
	ld l,d			;a3b1
	ld h,h			;a3b2
	ld l,d			;a3b3
	ld h,d			;a3b4
	ld h,a			;a3b5
	ld h,d			;a3b6
	ld h,a			;a3b7
	ld h,e			;a3b8
	ld c,h			;a3b9
	ld h,e			;a3ba
	ld c,h			;a3bb
	ld h,e			;a3bc
	ld l,b			;a3bd
	ld h,e			;a3be
	ld l,b			;a3bf
	ld h,e			;a3c0
	ld c,h			;a3c1
	ld h,e			;a3c2
	ld c,h			;a3c3
	ld h,e			;a3c4
	ld l,b			;a3c5
	ld h,e			;a3c6
	ld l,b			;a3c7
	ld h,e			;a3c8
	ld c,h			;a3c9
	ld h,e			;a3ca
	ld c,h			;a3cb
	ld h,e			;a3cc
	ld l,b			;a3cd
	ld h,e			;a3ce
	ld l,b			;a3cf
	ld a,l			;a3d0
	ld a,d			;a3d1
	ld a,(hl)		;a3d2
	adc a,b			;a3d3
	ld a,a			;a3d4
	add a,b			;a3d5
	add a,c			;a3d6
	adc a,c			;a3d7
	add a,e			;a3d8
	add a,l			;a3d9
	add a,a			;a3da
	adc a,b			;a3db
	ld hl,03d66h		;a3dc
	ld d,b			;a3df
	ld a,l			;a3e0
	ld a,d			;a3e1
	ld a,(hl)		;a3e2
	adc a,b			;a3e3
	ld a,a			;a3e4
	add a,b			;a3e5
	add a,c			;a3e6
	adc a,c			;a3e7
	ld e,h			;a3e8
	ld e,h			;a3e9
	ld e,h			;a3ea
	ld e,h			;a3eb
	ld c,(hl)		;a3ec
	ld c,a			;a3ed
	ld c,(hl)		;a3ee
	ld c,a			;a3ef
	ld a,l			;a3f0
	ld a,d			;a3f1
	ld a,(hl)		;a3f2
	adc a,b			;a3f3
	ld a,a			;a3f4
	add a,b			;a3f5
	add a,c			;a3f6
	adc a,c			;a3f7
	ld hl,03d66h		;a3f8
	ld e,h			;a3fb
	ld c,(hl)		;a3fc
	ld c,(hl)		;a3fd
	inc hl			;a3fe
	ccf			;a3ff
	ld a,l			;a400
	sub l			;a401
	ld h,l			;a402
	ld d,d			;a403
	sbc a,e			;a404
	ld (hl),b		;a405
	ld h,h			;a406
	ld l,d			;a407
	ld e,h			;a408
	ld e,h			;a409
	ld h,d			;a40a
	ld h,a			;a40b
	ld c,(hl)		;a40c
	ld c,a			;a40d
	ld h,e			;a40e
	ld c,h			;a40f
	ld a,l			;a410
	ld a,d			;a411
	ld a,(hl)		;a412
	adc a,b			;a413
	ld a,a			;a414
	add a,b			;a415
	add a,c			;a416
	adc a,c			;a417
	ld a,l			;a418
	sub l			;a419
	ld h,l			;a41a
	ld d,c			;a41b
	sbc a,e			;a41c
	ld (hl),b		;a41d
	ld (hl),b		;a41e
	ld d,d			;a41f
	ld a,l			;a420
	ld a,d			;a421
	ld a,(hl)		;a422
	adc a,b			;a423
	ld a,a			;a424
	add a,b			;a425
	add a,c			;a426
	or e			;a427
	add a,e			;a428
	add a,l			;a429
	add a,a			;a42a
	adc a,b			;a42b
	adc a,a			;a42c
	sub b			;a42d
	adc a,h			;a42e
	adc a,c			;a42f
	xor a			;a430
	or d			;a431
	inc h			;a432
	cp h			;a433
	dec l			;a434
	inc (hl)		;a435
	ld h,025h		;a436
	or e			;a438
	ld e,l			;a439
	daa			;a43a
	ld h,08fh		;a43b
	or e			;a43d
	inc a			;a43e
	daa			;a43f
	ld a,l			;a440
	ld a,d			;a441
	ld a,(hl)		;a442
	adc a,b			;a443
	cp e			;a444
	add a,b			;a445
	add a,c			;a446
	adc a,c			;a447
	dec h			;a448
	cp e			;a449
	add a,a			;a44a
	adc a,b			;a44b
	ld h,025h		;a44c
	cp e			;a44e
	adc a,c			;a44f
	ld a,l			;a450
	or c			;a451
	inc sp			;a452
	ld (hl),07fh		;a453
	add a,b			;a455
	or c			;a456
	inc sp			;a457
	add a,e			;a458
	add a,l			;a459
	add a,a			;a45a
	or c			;a45b
	adc a,a			;a45c
	sub b			;a45d
	adc a,h			;a45e
	adc a,c			;a45f
	sbc a,c			;a460
	ld h,l			;a461
	ld h,l			;a462
	ld h,l			;a463
	ld a,a			;a464
	sbc a,e			;a465
	ld (hl),b		;a466
	ld (hl),b		;a467
	ld a,l			;a468
	ld a,d			;a469
	sbc a,c			;a46a
	ld h,l			;a46b
	adc a,a			;a46c
	sub b			;a46d
	adc a,h			;a46e
	sbc a,e			;a46f
	djnz la47bh		;a470
	ld a,(bc)		;a472
	dec bc			;a473
	add hl,bc		;a474
	ld a,(bc)		;a475
	dec bc			;a476
	ld a,(de)		;a477
	ld a,(bc)		;a478
	dec bc			;a479
	ld a,(de)		;a47a
la47bh:
	rla			;a47b
	dec bc			;a47c
	ld a,(de)		;a47d
	rla			;a47e
	ld (de),a		;a47f
	daa			;a480
la481h:
	ld h,025h		;a481
	cp e			;a483
	ld (hl),027h		;a484
	ld h,025h		;a486
	inc sp			;a488
	ld (hl),027h		;a489
	ld h,02eh		;a48b
	inc sp			;a48d
	ld (hl),027h		;a48e
	jr c,la4c0h		;a490
	inc sp			;a492
	ld (hl),04eh		;a493
	dec (hl)		;a495
	ld l,033h		;a496
	ld e,e			;a498
	ld e,d			;a499
	ld (05e2eh),a		;a49a
	ld e,(hl)		;a49d
	ld d,d			;a49e
	jr c,la4c8h		;a49f
	ld h,025h		;a4a1
	inc l			;a4a3
	ld (hl),027h		;a4a4
	ld h,025h		;a4a6
	inc sp			;a4a8
	ld (hl),027h		;a4a9
	ld h,02eh		;a4ab
	inc sp			;a4ad
	ld (hl),027h		;a4ae
	ld a,l			;a4b0
	ld a,d			;a4b1
	ld a,(hl)		;a4b2
	adc a,b			;a4b3
	ld a,a			;a4b4
	add a,b			;a4b5
	add a,c			;a4b6
	adc a,c			;a4b7
	ld a,l			;a4b8
	ld a,d			;a4b9
	ld a,(hl)		;a4ba
	adc a,b			;a4bb
	ld e,h			;a4bc
	ld e,h			;a4bd
	ld e,h			;a4be
	ld e,h			;a4bf
la4c0h:
	ld a,(de)		;a4c0
	rla			;a4c1
	and b			;a4c2
	adc a,b			;a4c3
	rla			;a4c4
	and b			;a4c5
	add a,c			;a4c6
	adc a,c			;a4c7
la4c8h:
	ld e,e			;a4c8
	ld e,d			;a4c9
	ld d,c			;a4ca
	ld e,h			;a4cb
	ld e,(hl)		;a4cc
	ld e,(hl)		;a4cd
	ld d,d			;a4ce
	ld c,a			;a4cf
	xor e			;a4d0
	ex af,af'		;a4d1
	and c			;a4d2
	sbc a,(hl)		;a4d3
	add hl,bc		;a4d4
	ld a,(bc)		;a4d5
	jr la4e9h		;a4d6
	ld a,(bc)		;a4d8
	dec bc			;a4d9
	ld e,l			;a4da
	and d			;a4db
	dec bc			;a4dc
	jr nz,la481h		;a4dd
	adc a,c			;a4df
	ld a,l			;a4e0
	ld a,d			;a4e1
	ld a,(hl)		;a4e2
	adc a,b			;a4e3
	and d			;a4e4
	add a,b			;a4e5
	add a,c			;a4e6
	adc a,c			;a4e7
	add a,e			;a4e8
la4e9h:
	add a,l			;a4e9
	add a,a			;a4ea
	adc a,b			;a4eb
	adc a,a			;a4ec
	sub b			;a4ed
	adc a,h			;a4ee
	adc a,c			;a4ef
	ld a,l			;a4f0
	ld a,d			;a4f1
	ld a,(hl)		;a4f2
	adc a,b			;a4f3
	cp e			;a4f4
	add a,b			;a4f5
	add a,c			;a4f6
	adc a,c			;a4f7
	dec h			;a4f8
	inc l			;a4f9
	ld e,h			;a4fa
	ld e,h			;a4fb
	ld h,025h		;a4fc
	add hl,sp		;a4fe
	ld c,a			;a4ff
	ld e,h			;a500
	ld e,h			;a501
	ld e,h			;a502
	ld e,h			;a503
	add hl,sp		;a504
	ld c,a			;a505
	ld c,(hl)		;a506
	ld c,a			;a507
	dec h			;a508
	dec sp			;a509
	ld e,e			;a50a
	ld e,d			;a50b
	ld h,025h		;a50c
	dec sp			;a50e
	ld d,d			;a50f
	ld a,l			;a510
	ld a,d			;a511
	ld a,(hl)		;a512
	sub l			;a513
	ld a,a			;a514
	add a,b			;a515
	sbc a,e			;a516
	ld (hl),b		;a517
	add a,e			;a518
	sub l			;a519
	ld h,l			;a51a
	ld d,c			;a51b
	sbc a,e			;a51c
	ld (hl),b		;a51d
	ld (hl),b		;a51e
	ld d,d			;a51f
	ld h,l			;a520
	ld d,c			;a521
	ld e,h			;a522
	ld e,h			;a523
	ld (hl),b		;a524
	ld d,d			;a525
	ld c,(hl)		;a526
la527h:
	ld c,a			;a527
	ld e,e			;a528
	ld e,03ah		;a529
	ld e,e			;a52b
	ld d,e			;a52c
	ld d,a			;a52d
	ld d,d			;a52e
	ld e,(hl)		;a52f
	ld a,l			;a530
	ld a,d			;a531
	ld a,(hl)		;a532
	adc a,b			;a533
	ld a,a			;a534
	add a,b			;a535
	add a,c			;a536
	adc a,c			;a537
	add a,(hl)		;a538
	add a,d			;a539
	add a,h			;a53a
	adc a,b			;a53b
	ld d,b			;a53c
	ld hl,03d66h		;a53d
	ld d,b			;a540
	ld c,(hl)		;a541
	inc hl			;a542
	ccf			;a543
	ld d,d			;a544
	ld e,e			;a545
	ld e,03ah		;a546
	ld h,l			;a548
	ld h,l			;a549
	ld h,l			;a54a
	ld h,l			;a54b
	ld (hl),b		;a54c
	ld (hl),b		;a54d
	ld (hl),b		;a54e
	ld (hl),b		;a54f
	daa			;a550
	ld h,025h		;a551
	inc l			;a553
	ld (hl),027h		;a554
	ld h,025h		;a556
	inc sp			;a558
	ld (hl),027h		;a559
	ld h,0b1h		;a55b
	inc sp			;a55d
	ld (hl),027h		;a55e
	sub (hl)		;a560
	ld a,d			;a561
	ld a,(hl)		;a562
	adc a,b			;a563
	ld (hl),b		;a564
	sbc a,d			;a565
	add a,c			;a566
	adc a,c			;a567
	ld d,c			;a568
	ld h,l			;a569
	sub (hl)		;a56a
	adc a,b			;a56b
	ld d,c			;a56c
	ld (hl),b		;a56d
	ld (hl),b		;a56e
	sbc a,d			;a56f
	ld a,l			;a570
	ld a,d			;a571
	ld a,(hl)		;a572
	adc a,b			;a573
	ld a,a			;a574
	add a,b			;a575
	add a,c			;a576
	adc a,c			;a577
	ld d,c			;a578
	ld h,l			;a579
	sub (hl)		;a57a
	adc a,b			;a57b
	ld d,d			;a57c
	ld (hl),b		;a57d
	ld (hl),b		;a57e
	sbc a,d			;a57f
	ld d,b			;a580
	ld hl,03d66h		;a581
	ld d,c			;a584
	ld c,a			;a585
	ld c,(hl)		;a586
	ld c,a			;a587
	ld d,c			;a588
	ld e,d			;a589
	ld e,e			;a58a
	ld e,d			;a58b
	ld d,d			;a58c
	ld e,(hl)		;a58d
	ld d,d			;a58e
	ld e,(hl)		;a58f
	ld a,l			;a590
	or c			;a591
	inc sp			;a592
	ld (hl),08ah		;a593
	adc a,e			;a595
	or c			;a596
	inc sp			;a597
	adc a,l			;a598
	adc a,(hl)		;a599
	sub l			;a59a
	jr c,la527h		;a59b
	sbc a,e			;a59d
	ld (hl),b		;a59e
	dec (hl)		;a59f
	ld e,h			;a5a0
	ld e,h			;a5a1
	ld e,h			;a5a2
	ld e,h			;a5a3
	inc hl			;a5a4
	ccf			;a5a5
	ld c,(hl)		;a5a6
	dec e			;a5a7
	ld e,03ah		;a5a8
	rra			;a5aa
	add hl,bc		;a5ab
	ld e,e			;a5ac
	rra			;a5ad
	add hl,bc		;a5ae
	ld a,(bc)		;a5af
	ld e,h			;a5b0
	ld e,h			;a5b1
	ld e,h			;a5b2
	ld e,h			;a5b3
	ld c,(hl)		;a5b4
	ld c,(hl)		;a5b5
	inc hl			;a5b6
	ccf			;a5b7
	ld a,(bc)		;a5b8
	dec bc			;a5b9
	ld a,(de)		;a5ba
	rla			;a5bb
	dec bc			;a5bc
	ld a,(de)		;a5bd
	rla			;a5be
	and b			;a5bf
	ld e,h			;a5c0
	ld e,h			;a5c1
	ld e,h			;a5c2
	ld e,h			;a5c3
	ld c,(hl)		;a5c4
	ld c,a			;a5c5
	ld c,(hl)		;a5c6
	ld c,a			;a5c7
	ld (de),a		;a5c8
	add hl,de		;a5c9
	ld c,(hl)		;a5ca
	ld c,a			;a5cb
	adc a,a			;a5cc
	sub b			;a5cd
	adc a,h			;a5ce
	adc a,c			;a5cf
	ld a,(de)		;a5d0
	rla			;a5d1
	ld (de),a		;a5d2
	inc e			;a5d3
	rla			;a5d4
	ld (de),a		;a5d5
	add hl,de		;a5d6
	ld c,(hl)		;a5d7
	ld (de),a		;a5d8
	ld d,05ah		;a5d9
	ld e,e			;a5db
	ld d,05bh		;a5dc
	ld e,03ah		;a5de
	dec e			;a5e0
la5e1h:
	add hl,bc		;a5e1
	ld a,(bc)		;a5e2
	dec bc			;a5e3
	add hl,bc		;a5e4
	ld a,(bc)		;a5e5
	dec bc			;a5e6
	ld a,(de)		;a5e7
	ld a,(bc)		;a5e8
	dec bc			;a5e9
	ld a,(de)		;a5ea
	rla			;a5eb
	dec bc			;a5ec
	ld a,(de)		;a5ed
	rla			;a5ee
	ld (de),a		;a5ef
	ld c,(hl)		;a5f0
	ld c,(hl)		;a5f1
	inc hl			;a5f2
	ld d,c			;a5f3
	ld e,e			;a5f4
	ld e,e			;a5f5
	ld e,051h		;a5f6
	ld e,e			;a5f8
	ld e,e			;a5f9
	ld e,052h		;a5fa
	adc a,a			;a5fc
	sub b			;a5fd
	adc a,h			;a5fe
	adc a,c			;a5ff
	ld c,(hl)		;a600
	ld c,a			;a601
	ld c,(hl)		;a602
	ld c,a			;a603
	ld e,e			;a604
	ld e,d			;a605
	ld e,e			;a606
	ld e,d			;a607
	ld e,e			;a608
	ld e,d			;a609
	ld e,e			;a60a
	ld e,d			;a60b
	adc a,a			;a60c
	sub b			;a60d
	adc a,h			;a60e
	adc a,c			;a60f
	ld a,l			;a610
	dec c			;a611
	ld a,(bc)		;a612
	dec bc			;a613
	or e			;a614
	ld c,00bh		;a615
	ld a,(de)		;a617
	ld e,l			;a618
	rrca			;a619
	ld a,(de)		;a61a
	rla			;a61b
	or e			;a61c
	ld e,l			;a61d
	rla			;a61e
	ld (de),a		;a61f
	ld d,b			;a620
	ld h,l			;a621
	ld h,l			;a622
	adc a,b			;a623
	ld d,c			;a624
	ld (hl),b		;a625
	ld (hl),b		;a626
	adc a,c			;a627
	ld d,c			;a628
	ld h,l			;a629
	ld h,l			;a62a
	adc a,b			;a62b
	ld d,d			;a62c
	ld (hl),b		;a62d
	ld (hl),b		;a62e
	adc a,c			;a62f
	djnz la63ah		;a630
	and c			;a632
	sbc a,(hl)		;a633
	add hl,bc		;a634
	ld a,(bc)		;a635
	jr la649h		;a636
	ld a,(bc)		;a638
	dec bc			;a639
la63ah:
	ld e,l			;a63a
	and d			;a63b
	dec bc			;a63c
	jr nz,la5e1h		;a63d
	adc a,c			;a63f
	ld a,l			;a640
	ld a,d			;a641
	ld a,(hl)		;a642
	adc a,b			;a643
	ld a,a			;a644
	add a,b			;a645
	add a,c			;a646
	xor d			;a647
	ld e,h			;a648
la649h:
	ld e,h			;a649
	djnz la655h		;a64a
	ld c,(hl)		;a64c
	dec e			;a64d
	add hl,bc		;a64e
	ld a,(bc)		;a64f
	ld a,(de)		;a650
	rla			;a651
	ld (de),a		;a652
	inc e			;a653
	rla			;a654
la655h:
	ld (de),a		;a655
	add hl,de		;a656
	dec e			;a657
	ld (de),a		;a658
	ld d,010h		;a659
	add hl,bc		;a65b
	ld d,010h		;a65c
	add hl,bc		;a65e
	ld a,(bc)		;a65f
	djnz la66bh		;a660
	ld a,(bc)		;a662
	dec bc			;a663
	add hl,bc		;a664
	ld a,(bc)		;a665
	dec bc			;a666
	ld a,(de)		;a667
	ld a,(bc)		;a668
	dec bc			;a669
	ld a,(de)		;a66a
la66bh:
	rla			;a66b
	dec bc			;a66c
	ld a,(de)		;a66d
	rla			;a66e
	and b			;a66f
	ld d,c			;a670
	ld c,(hl)		;a671
	inc hl			;a672
	ccf			;a673
	ld d,c			;a674
	ld e,e			;a675
	ld e,03ah		;a676
	ld d,d			;a678
	ld e,e			;a679
	ld e,03ah		;a67a
	adc a,a			;a67c
	sub b			;a67d
	adc a,h			;a67e
	adc a,c			;a67f
	nop			;a680
	nop			;a681
	nop			;a682
	nop			;a683
	nop			;a684
	nop			;a685
	nop			;a686
	nop			;a687
	nop			;a688
	nop			;a689
	nop			;a68a
	nop			;a68b
	nop			;a68c
	or a			;a68d
	cp b			;a68e
	ld a,(bc)		;a68f
	nop			;a690
	nop			;a691
	nop			;a692
	nop			;a693
	nop			;a694
	nop			;a695
	nop			;a696
	nop			;a697
	cp c			;a698
	cp d			;a699
	cp e			;a69a
	jr nz,la69eh		;a69b
	ld (bc),a		;a69d
la69eh:
	ld (0000fh),hl		;a69e
	nop			;a6a1
	push bc			;a6a2
	ld b,0b7h		;a6a3
	ld b,003h		;a6a5
	rlca			;a6a7
	ld e,007h		;a6a8
	inc b			;a6aa
	ex af,af'		;a6ab
	rra			;a6ac
	ex af,af'		;a6ad
	dec b			;a6ae
	add hl,bc		;a6af
	ld b,0c5h		;a6b0
	nop			;a6b2
	nop			;a6b3
	rlca			;a6b4
	inc bc			;a6b5
	ld b,0beh		;a6b6
	ex af,af'		;a6b8
	inc b			;a6b9
	rlca			;a6ba
	jr c,la6c6h		;a6bb
	dec b			;a6bd
	ex af,af'		;a6be
	add hl,sp		;a6bf
	nop			;a6c0
	nop			;a6c1
	nop			;a6c2
	nop			;a6c3
	nop			;a6c4
	nop			;a6c5
la6c6h:
	nop			;a6c6
	nop			;a6c7
	ld a,(0c1c2h)		;a6c8
	ret nz			;a6cb
	add hl,hl		;a6cc
	inc a			;a6cd
	ld bc,00002h		;a6ce
	nop			;a6d1
	nop			;a6d2
	nop			;a6d3
	nop			;a6d4
	nop			;a6d5
	nop			;a6d6
	nop			;a6d7
	nop			;a6d8
	nop			;a6d9
	nop			;a6da
	nop			;a6db
	inc h			;a6dc
	cp a			;a6dd
	cp (hl)			;a6de
	nop			;a6df
	or a			;a6e0
	ld (de),a		;a6e1
	ld bc,01102h		;a6e2
	ld a,(bc)		;a6e5
	rla			;a6e6
	ld l,a			;a6e7
	jr z,la6f5h		;a6e8
	add hl,hl		;a6ea
	ld (hl),b		;a6eb
	rrca			;a6ec
	ld b,009h		;a6ed
	ld l,d			;a6ef
	ld d,h			;a6f0
	ld h,c			;a6f1
	dec c			;a6f2
	ld h,(hl)		;a6f3
	ld a,l			;a6f4
la6f5h:
	ld h,d			;a6f5
	ld a,c			;a6f6
	ld h,a			;a6f7
	sub (hl)		;a6f8
	ld (hl),h		;a6f9
	ld a,d			;a6fa
	ld l,c			;a6fb
	ld a,(hl)		;a6fc
	ld a,a			;a6fd
	ld h,h			;a6fe
	ld d,l			;a6ff
	inc de			;a700
	ld h,e			;a701
	ld e,c			;a702
	ld d,e			;a703
	ld l,(hl)		;a704
	ld d,e			;a705
	ld e,d			;a706
	ld e,h			;a707
	ld l,(hl)		;a708
	ld e,a			;a709
	ld l,e			;a70a
	dec h			;a70b
	ld l,(hl)		;a70c
	ld l,b			;a70d
	ld l,l			;a70e
	ld d,05bh		;a70f
	rlca			;a711
	ld c,077h		;a712
	ld e,e			;a714
	ex af,af'		;a715
	inc c			;a716
	ld h,05bh		;a717
	dec d			;a719
	add hl,de		;a71a
	ld a,(de)		;a71b
	ld e,e			;a71c
	ld e,e			;a71d
	ld e,e			;a71e
	dec de			;a71f
	ld (hl),e		;a720
	ld a,e			;a721
	ld a,b			;a722
	ld e,b			;a723
	ld e,l			;a724
	ld h,l			;a725
	ld e,l			;a726
	ld h,l			;a727
	inc e			;a728
	add a,b			;a729
	ld a,h			;a72a
	adc a,c			;a72b
	daa			;a72c
	ld h,b			;a72d
	ld h,b			;a72e
	ld e,b			;a72f
	ld l,(hl)		;a730
	ld d,(hl)		;a731
	ld d,a			;a732
	adc a,d			;a733
	ld e,l			;a734
	add a,h			;a735
	ld e,b			;a736
	adc a,l			;a737
	ld e,(hl)		;a738
	ld e,(hl)		;a739
	ld e,b			;a73a
	sub b			;a73b
	ld e,l			;a73c
	add a,h			;a73d
	ld e,b			;a73e
	djnz la794h		;a73f
	ld e,c			;a741
	ld h,e			;a742
	inc a			;a743
	ld e,h			;a744
	ld e,d			;a745
	ld d,e			;a746
	ld l,(hl)		;a747
	ld c,(hl)		;a748
	ld e,a			;a749
la74ah:
	ld l,e			;a74a
	ld l,(hl)		;a74b
	ccf			;a74c
	ld l,b			;a74d
	ld l,l			;a74e
	ld l,(hl)		;a74f
	ld h,(hl)		;a750
	ld (hl),054h		;a751
	ld h,c			;a753
	ld h,a			;a754
	ld l,a			;a755
	ld a,l			;a756
	ld h,d			;a757
	ld l,c			;a758
	ld (hl),b		;a759
	sub (hl)		;a75a
	ld (hl),h		;a75b
	ld d,l			;a75c
	ld l,d			;a75d
	ld a,(hl)		;a75e
	ld a,a			;a75f
	dec hl			;a760
	ld hl,(lb83bh)		;a761
	ld a,c			;a764
	ld b,b			;a765
	inc sp			;a766
	ld a,(0527ah)		;a767
	inc (hl)		;a76a
	ld d,c			;a76b
	ld h,h			;a76c
	ld (0382fh),a		;a76d
	adc a,d			;a770
	ld d,(hl)		;a771
	ld d,a			;a772
	ld l,(hl)		;a773
	adc a,l			;a774
	ld e,b			;a775
	add a,h			;a776
	ld e,l			;a777
	sub h			;a778
	ld e,b			;a779
	ld e,(hl)		;a77a
	ld e,(hl)		;a77b
	add hl,sp		;a77c
	ld e,b			;a77d
	add a,h			;a77e
	ld e,l			;a77f
	ld e,b			;a780
	ld (hl),a		;a781
	ld (hl),e		;a782
	ld a,e			;a783
	ld h,l			;a784
	ld e,l			;a785
	ld h,l			;a786
	ld e,l			;a787
	adc a,c			;a788
	ld a,h			;a789
	add a,b			;a78a
	ld b,l			;a78b
	ld e,b			;a78c
	ld h,b			;a78d
	ld h,b			;a78e
	ld d,b			;a78f
	ld a,b			;a790
	scf			;a791
	jr nc,$+93		;a792
la794h:
	ld c,a			;a794
	dec (hl)		;a795
	ld sp,0435bh		;a796
	ld b,d			;a799
	ld a,05bh		;a79a
	ld b,h			;a79c
	ld e,e			;a79d
	ld e,e			;a79e
	ld e,e			;a79f
	ld a,c			;a7a0
	add hl,bc		;a7a1
	ld a,(bc)		;a7a2
	dec bc			;a7a3
	ld a,h			;a7a4
	ld a,(bc)		;a7a5
	dec bc			;a7a6
	ld a,(de)		;a7a7
	ld a,h			;a7a8
	dec bc			;a7a9
	ld a,(de)		;a7aa
	rla			;a7ab
	ld a,c			;a7ac
	ld a,(de)		;a7ad
	rla			;a7ae
	ld (de),a		;a7af
	ld a,l			;a7b0
	ld a,d			;a7b1
	ld a,(hl)		;a7b2
	adc a,b			;a7b3
	add hl,bc		;a7b4
	ld a,(bc)		;a7b5
	dec bc			;a7b6
	ld a,(de)		;a7b7
	ld a,(bc)		;a7b8
	dec bc			;a7b9
	ld a,(de)		;a7ba
	rla			;a7bb
	dec bc			;a7bc
	ld a,(de)		;a7bd
	rla			;a7be
	ld (de),a		;a7bf
	nop			;a7c0
	nop			;a7c1
	nop			;a7c2
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
	nop			;a7ce
	nop			;a7cf
	ld b,b			;a7d0
	ld b,e			;a7d1
	inc h			;a7d2
	daa			;a7d3
	ld b,d			;a7d4
	ccf			;a7d5
	dec h			;a7d6
	jr z,la81bh		;a7d7
	ccf			;a7d9
	jr nz,la805h		;a7da
	ld b,d			;a7dc
	ccf			;a7dd
	inc e			;a7de
	ld hl,(03821h)		;a7df
	add hl,sp		;a7e2
	jr c,la7feh		;a7e3
	rra			;a7e5
	rra			;a7e6
	rra			;a7e7
	call 0cdcah		;a7e8
	call 0cbcch		;a7eb
	call z,031cch		;a7ee
	ld l,040h		;a7f1
	ld b,e			;a7f3
	ld (0422fh),a		;a7f4
	ccf			;a7f7
	inc sp			;a7f8
	jr nz,$+68		;a7f9
	ccf			;a7fb
	inc (hl)		;a7fc
	inc e			;a7fd
la7feh:
	ld b,d			;a7fe
	ccf			;a7ff
	inc h			;a800
	daa			;a801
	ld hl,02538h		;a802
la805h:
	jr z,$+27		;a805
	rra			;a807
	jr nz,$+43		;a808
	call 0cccah		;a80a
	ld hl,(0cbcch)		;a80d
	add hl,sp		;a810
	ld (03823h),hl		;a811
	rra			;a814
	add hl,de		;a815
	rra			;a816
	add hl,de		;a817
	call 0cdcah		;a818
la81bh:
	jp z,0cbcch		;a81b
	call z,039cbh		;a81e
	ld (03823h),hl		;a821
	rra			;a824
	add hl,de		;a825
	rra			;a826
	add hl,de		;a827
	jp z,0cacdh		;a828
	call 0cccbh		;a82b
	set 1,h			;a82e
	add hl,sp		;a830
	ld hl,02e31h		;a831
	rra			;a834
	add hl,de		;a835
	ld (0ca2fh),a		;a836
	call 02033h		;a839
	set 1,h			;a83c
	inc (hl)		;a83e
	call z,01339h		;a83f
	inc d			;a842
	jr c,la85eh		;a843
	dec hl			;a845
	dec (hl)		;a846
	add hl,de		;a847
	call 0362ch		;a848
	call 02dcch		;a84b
	scf			;a84e
	call z,0ca21h		;a84f
	jp z,01921h		;a852
	set 1,e			;a855
	add hl,de		;a857
	call 0362ch		;a858
	call 02dcch		;a85b
la85eh:
	scf			;a85e
	call z,02724h		;a85f
	ld hl,025cah		;a862
	jr z,la880h		;a865
	sla b			;a867
	add hl,hl		;a869
	call 01c2ch		;a86a
	ld hl,(02dcch)		;a86d
	jp z,03121h		;a870
	ld l,0cbh		;a873
	add hl,de		;a875
	ld (0362fh),a		;a876
	call 02033h		;a879
	scf			;a87c
	call z,01c34h		;a87d
la880h:
	inc h			;a880
	daa			;a881
	ld hl,02513h		;a882
	jr z,la8a0h		;a885
	dec hl			;a887
	jr nz,la8b3h		;a888
	call 01c2ch		;a88a
	ld hl,(02dcch)		;a88d
	inc d			;a890
	ld hl,02e31h		;a891
	dec (hl)		;a894
	add hl,de		;a895
	ld (0362fh),a		;a896
	call 02033h		;a899
	scf			;a89c
	call z,01c34h		;a89d
la8a0h:
	inc hl			;a8a0
	ld (01323h),hl		;a8a1
	rra			;a8a4
	add hl,de		;a8a5
	rra			;a8a6
	dec hl			;a8a7
	call 0cdcah		;a8a8
	inc l			;a8ab
	call z,0cccbh		;a8ac
	dec l			;a8af
la8b0h:
	inc d			;a8b0
	inc hl			;a8b1
	inc hl			;a8b2
la8b3h:
	ld (01935h),hl		;a8b3
	rra			;a8b6
	add hl,de		;a8b7
	ld (hl),0cdh		;a8b8
	jp z,037cdh		;a8ba
	call z,0cccbh		;a8bd
	add hl,sp		;a8c0
	ld (0ca23h),hl		;a8c1
	rra			;a8c4
	add hl,de		;a8c5
	rra			;a8c6
	sla b			;a8c7
	jp z,02ccdh		;a8c9
	inc e			;a8cc
	set 1,h			;a8cd
	dec l			;a8cf
	jp z,03938h		;a8d0
	ld (019cbh),hl		;a8d3
	rra			;a8d6
	add hl,de		;a8d7
	ld (hl),0cdh		;a8d8
	jp z,03720h		;a8da
	call z,01ccbh		;a8dd
	inc h			;a8e0
	daa			;a8e1
	ld hl,02523h		;a8e2
	jr z,la900h		;a8e5
	rra			;a8e7
	nop			;a8e8
	or (hl)			;a8e9
	call 00029h		;a8ea
	add hl,hl		;a8ed
	call z,0232ah		;a8ee
	ld hl,02e31h		;a8f1
	rra			;a8f4
	add hl,de		;a8f5
	ld (0332fh),a		;a8f6
	jr nz,la8b0h		;a8f9
	and h			;a8fb
	inc (hl)		;a8fc
	inc e			;a8fd
	halt			;a8fe
	ld a,d			;a8ff
la900h:
	add hl,sp		;a900
	ld (03823h),hl		;a901
	rra			;a904
	add hl,de		;a905
	rra			;a906
	add hl,de		;a907
	call 0cacah		;a908
	call 0cbcch		;a90b
	set 1,h			;a90e
	ld sp,0612eh		;a910
	ld h,b			;a913
	ld (05e2fh),a		;a914
	ld e,a			;a917
	inc sp			;a918
	jr nz,$-126		;a919
	ld a,(hl)		;a91b
	inc (hl)		;a91c
	inc e			;a91d
	add a,b			;a91e
	ld a,(hl)		;a91f
	dec d			;a920
	dec d			;a921
	dec d			;a922
	dec d			;a923
	dec b			;a924
	ld b,00ah		;a925
	add hl,bc		;a927
	rlca			;a928
	ex af,af'		;a929
	inc c			;a92a
	dec bc			;a92b
	dec d			;a92c
	jr la940h		;a92d
	ld (de),a		;a92f
	dec d			;a930
	jr la944h		;a931
	ld (de),a		;a933
	dec b			;a934
	ld b,00ah		;a935
	add hl,bc		;a937
	rlca			;a938
	ex af,af'		;a939
	inc c			;a93a
	dec bc			;a93b
	dec d			;a93c
	dec d			;a93d
	dec d			;a93e
	dec d			;a93f
la940h:
	dec d			;a940
	jr la954h		;a941
	ld (de),a		;a943
la944h:
	dec e			;a944
	ld h,030h		;a945
	ld e,01ah		;a947
	ld d,017h		;a949
	dec de			;a94b
	dec c			;a94c
	ld c,00fh		;a94d
	djnz la966h		;a94f
	jr la964h		;a951
	ld (de),a		;a953
la954h:
	inc a			;a954
	ld a,041h		;a955
	dec sp			;a957
	dec d			;a958
	jr la96ch		;a959
	ld (de),a		;a95b
	inc a			;a95c
	ld a,041h		;a95d
	dec sp			;a95f
	ld b,l			;a960
	ld b,e			;a961
	ccf			;a962
	inc a			;a963
la964h:
	ld b,(hl)		;a964
	add hl,sp		;a965
la966h:
	dec a			;a966
	dec sp			;a967
	ld b,a			;a968
	jr c,la9adh		;a969
	ld b,c			;a96b
la96ch:
	ld b,h			;a96c
	ld b,b			;a96d
	ld a,(04c3eh)		;a96e
	ld c,a			;a971
	ld d,e			;a972
	ld d,l			;a973
	ld c,e			;a974
	ld c,l			;a975
	ld c,c			;a976
	ld d,(hl)		;a977
	ld d,c			;a978
	ld d,d			;a979
	ld c,b			;a97a
	ld d,a			;a97b
	ld c,(hl)		;a97c
	ld c,d			;a97d
	ld d,b			;a97e
	ld d,h			;a97f
	ld a,041h		;a980
	dec sp			;a982
	ld a,(01118h)		;a983
	ld (de),a		;a986
	dec a			;a987
	ld h,(hl)		;a988
	ld h,a			;a989
	ld (hl),e		;a98a
	ld (hl),e		;a98b
	ld (hl),l		;a98c
	ld a,e			;a98d
	ld (hl),c		;a98e
	ld (hl),c		;a98f
	ld a,(03a3ah)		;a990
	ld a,(03d3dh)		;a993
	dec a			;a996
	dec a			;a997
	ld l,l			;a998
	ld l,h			;a999
	ld h,(hl)		;a99a
	ld h,a			;a99b
	sub (hl)		;a99c
	sbc a,b			;a99d
	ld (hl),l		;a99e
	ld a,e			;a99f
	ld a,(03a3ah)		;a9a0
	ld a,(03d3dh)		;a9a3
	dec a			;a9a6
	dec a			;a9a7
	sub h			;a9a8
	ld a,e			;a9a9
sub_a9aah:
	ld (hl),c		;a9aa
	ld (hl),c		;a9ab
	ld l,(hl)		;a9ac
la9adh:
	ld h,h			;a9ad
	ld a,h			;a9ae
	ld a,h			;a9af
	ld a,(03a3ah)		;a9b0
	ld a,(03d3dh)		;a9b3
	dec a			;a9b6
	dec a			;a9b7
	ld l,l			;a9b8
	ld l,h			;a9b9
	sub d			;a9ba
	sub l			;a9bb
	sub (hl)		;a9bc
	sbc a,b			;a9bd
	sub b			;a9be
	sub c			;a9bf
	ld b,a			;a9c0
	ld c,b			;a9c1
	ld c,c			;a9c2
	ld c,d			;a9c3
	ld c,e			;a9c4
	ld c,h			;a9c5
	ld c,l			;a9c6
	ld c,h			;a9c7
	ld c,(hl)		;a9c8
	ld c,a			;a9c9
	ld d,d			;a9ca
	jp z,050cch		;a9cb
	ld d,c			;a9ce
	srl d			;a9cf
	ld a,(02a1ch)		;a9d1
	dec a			;a9d4
	dec a			;a9d5
	jr nz,$+43		;a9d6
	ld (hl),e		;a9d8
	ld (hl),e		;a9d9
	dec h			;a9da
	jr z,$+115		;a9db
	ld (hl),c		;a9dd
	inc h			;a9de
	daa			;a9df
	inc e			;a9e0
	ld b,l			;a9e1
	ld b,(hl)		;a9e2
	dec l			;a9e3
	jr nz,laa2ah		;a9e4
	ld b,a			;a9e6
	inc l			;a9e7
	rra			;a9e8
	add hl,de		;a9e9
	add hl,de		;a9ea
	ld b,l			;a9eb
	add hl,sp		;a9ec
	ld (04423h),hl		;a9ed
	scf			;a9f0
	ld b,(hl)		;a9f1
	ld b,l			;a9f2
	inc e			;a9f3
	ld (hl),047h		;a9f4
	ld b,h			;a9f6
	jr nz,$+71		;a9f7
	add hl,de		;a9f9
	rra			;a9fa
	add hl,de		;a9fb
	ld b,h			;a9fc
	jr c,$+59		;a9fd
	ld (01c34h),hl		;a9ff
	ld a,(0333ah)		;aa02
	jr nz,laa44h		;aa05
	dec a			;aa07
	ld (0922fh),a		;aa08
	sub l			;aa0b
	ld sp,0922eh		;aa0c
	sub l			;aa0f
	ld (hl),c		;aa10
	ld (hl),c		;aa11
	inc e			;aa12
	ld hl,(07c7ch)		;aa13
	jr nz,laa41h		;aa16
	dec h			;aa18
	jr z,laa34h		;aa19
	rra			;aa1b
	inc h			;aa1c
	daa			;aa1d
	ld hl,04638h		;aa1e
	ld b,l			;aa21
	ld b,(hl)		;aa22
	dec l			;aa23
	ld b,a			;aa24
	ld b,h			;aa25
	ld b,a			;aa26
	inc l			;aa27
	add hl,de		;aa28
	rra			;aa29
laa2ah:
	add hl,de		;aa2a
	dec hl			;aa2b
	add hl,sp		;aa2c
	ld (01323h),hl		;aa2d
	scf			;aa30
	ld b,(hl)		;aa31
	ld b,l			;aa32
	inc e			;aa33
laa34h:
	ld (hl),047h		;aa34
	ld b,h			;aa36
	jr nz,$+55		;aa37
	add hl,de		;aa39
	rra			;aa3a
	add hl,de		;aa3b
	inc d			;aa3c
	jr c,laa78h		;aa3d
	inc hl			;aa3f
	inc (hl)		;aa40
laa41h:
	inc e			;aa41
	sub d			;aa42
	sub l			;aa43
laa44h:
	inc sp			;aa44
	jr nz,$-110		;aa45
	sub c			;aa47
	rra			;aa48
	add hl,de		;aa49
	ld (0222fh),a		;aa4a
	ld hl,02e31h		;aa4d
	ccf			;aa50
	ld b,d			;aa51
	inc e			;aa52
	ld hl,(0423fh)		;aa53
	jr nz,laa81h		;aa56
	ccf			;aa58
	ld b,d			;aa59
	dec h			;aa5a
	jr z,laa9dh		;aa5b
	ld b,e			;aa5d
	inc h			;aa5e
	daa			;aa5f
	ld b,(hl)		;aa60
	ld b,l			;aa61
	ld b,(hl)		;aa62
	ld b,(hl)		;aa63
	ld b,a			;aa64
	ld b,h			;aa65
	ld b,a			;aa66
	ld b,a			;aa67
	add hl,de		;aa68
	rra			;aa69
	rra			;aa6a
	rra			;aa6b
	ld hl,03938h		;aa6c
	jr c,laa8dh		;aa6f
	ld hl,(04546h)		;aa71
	jr nz,$+43		;aa74
	ld b,a			;aa76
	ld b,h			;aa77
laa78h:
	dec h			;aa78
	jr z,laa94h		;aa79
	rra			;aa7b
	inc h			;aa7c
	daa			;aa7d
	ld hl,04638h		;aa7e
laa81h:
	ld b,l			;aa81
	ld b,l			;aa82
	ld b,(hl)		;aa83
	ld b,a			;aa84
	ld b,h			;aa85
	ld b,h			;aa86
	ld b,a			;aa87
	rra			;aa88
	add hl,de		;aa89
	rra			;aa8a
	add hl,de		;aa8b
	add hl,sp		;aa8c
laa8dh:
	ld (03823h),hl		;aa8d
	ld b,l			;aa90
	ld b,(hl)		;aa91
	inc (hl)		;aa92
	inc e			;aa93
laa94h:
	ld b,h			;aa94
	ld b,a			;aa95
	inc sp			;aa96
	jr nz,$+33		;aa97
	add hl,de		;aa99
	ld (0392fh),a		;aa9a
laa9dh:
	ld hl,02e31h		;aa9d
	ld b,(hl)		;aaa0
	dec l			;aaa1
	scf			;aaa2
	ld b,(hl)		;aaa3
	ld b,a			;aaa4
	inc l			;aaa5
	ld (hl),047h		;aaa6
	add hl,de		;aaa8
	dec hl			;aaa9
	dec (hl)		;aaaa
	add hl,de		;aaab
	add hl,sp		;aaac
	inc de			;aaad
	inc d			;aaae
	jr c,laae8h		;aaaf
	ld b,(hl)		;aab1
	inc (hl)		;aab2
	inc e			;aab3
	ld (hl),047h		;aab4
	inc sp			;aab6
	jr nz,$+71		;aab7
	add hl,de		;aab9
	ld (0442fh),a		;aaba
	ld hl,02e31h		;aabd
	inc e			;aac0
	ld hl,(02d46h)		;aac1
	jr nz,laaefh		;aac4
	ld b,a			;aac6
	inc l			;aac7
	dec h			;aac8
	jr z,$+27		;aac9
	dec hl			;aacb
	inc h			;aacc
	daa			;aacd
	ld hl,03713h		;aace
	ld b,(hl)		;aad1
	inc (hl)		;aad2
	inc e			;aad3
	ld (hl),047h		;aad4
	inc sp			;aad6
	jr nz,$+55		;aad7
	add hl,de		;aad9
	ld (0142fh),a		;aada
	ld hl,02e31h		;aadd
	dec c			;aae0
	ld c,00fh		;aae1
	djnz laaffh		;aae3
	ld d,017h		;aae5
	dec de			;aae7
laae8h:
	dec e			;aae8
	ld h,030h		;aae9
	ld e,001h		;aaeb
	ld (bc),a		;aaed
	inc bc			;aaee
laaefh:
	inc b			;aaef
	inc a			;aaf0
	ld a,041h		;aaf1
	dec sp			;aaf3
	ld bc,00302h		;aaf4
	inc b			;aaf7
	inc a			;aaf8
	ld a,041h		;aaf9
	dec sp			;aafb
	ld bc,00302h		;aafc
laaffh:
	inc b			;aaff
	ld b,a			;ab00
	ld c,b			;ab01
	ld c,c			;ab02
	ld c,d			;ab03
	ld c,e			;ab04
	ld c,h			;ab05
	ld c,l			;ab06
	ld c,h			;ab07
	ld c,(hl)		;ab08
	jp z,0cacdh		;ab09
	call z,0cccbh		;ab0c
	bit 5,b			;ab0f
	ld l,c			;ab11
	ld l,a			;ab12
	ld l,(hl)		;ab13
	nop			;ab14
	cp d			;ab15
	cp h			;ab16
	nop			;ab17
	nop			;ab18
	cp l			;ab19
	cp (hl)			;ab1a
	nop			;ab1b
	nop			;ab1c
	ld a,a			;ab1d
	add a,c			;ab1e
	nop			;ab1f
	ld a,l			;ab20
	ld a,b			;ab21
	nop			;ab22
	nop			;ab23
	ld (hl),d		;ab24
	or a			;ab25
	or a			;ab26
	ld h,b			;ab27
	ld (hl),b		;ab28
	cp c			;ab29
	cp b			;ab2a
	ld e,a			;ab2b
	ld (hl),h		;ab2c
	ld (hl),h		;ab2d
	add a,b			;ab2e
	ld a,(hl)		;ab2f
	ld (hl),a		;ab30
	add a,d			;ab31
	ld a,l			;ab32
	ld a,b			;ab33
	ld (hl),d		;ab34
	or a			;ab35
	or a			;ab36
	ld h,b			;ab37
	ld (hl),b		;ab38
	cp c			;ab39
	cp b			;ab3a
	ld e,a			;ab3b
	ld (hl),h		;ab3c
	ld (hl),h		;ab3d
	add a,b			;ab3e
	ld a,(hl)		;ab3f
	nop			;ab40
	adc a,c			;ab41
	adc a,d			;ab42
	nop			;ab43
	sub b			;ab44
	pop bc			;ab45
	jp nz,079a4h		;ab46
	cp e			;ab49
	cp e			;ab4a
	ld a,d			;ab4b
	ld e,h			;ab4c
	ld e,l			;ab4d
	ld h,e			;ab4e
	ld h,d			;ab4f
	nop			;ab50
	adc a,c			;ab51
	add a,(hl)		;ab52
	nop			;ab53
	sub b			;ab54
	pop bc			;ab55
	jp nz,079a4h		;ab56
	cp e			;ab59
	cp e			;ab5a
	ld a,d			;ab5b
	ld e,h			;ab5c
	ld e,l			;ab5d
	ld h,e			;ab5e
	ld h,d			;ab5f
	nop			;ab60
	nop			;ab61
	nop			;ab62
	nop			;ab63
	sub b			;ab64
	cp a			;ab65
	ret nz			;ab66
	and h			;ab67
	ld a,c			;ab68
	cp e			;ab69
	cp e			;ab6a
	ld a,d			;ab6b
	ld e,h			;ab6c
	ld e,l			;ab6d
	ld h,e			;ab6e
	ld h,d			;ab6f
	ld (hl),h		;ab70
	ld (hl),h		;ab71
	add a,b			;ab72
	ld a,(hl)		;ab73
	ld (hl),d		;ab74
	or a			;ab75
	or a			;ab76
	ld h,b			;ab77
	ld (hl),b		;ab78
	cp c			;ab79
	cp b			;ab7a
	ld e,a			;ab7b
	ld (hl),h		;ab7c
	ld (hl),h		;ab7d
	add a,b			;ab7e
	ld a,(hl)		;ab7f
	sub (hl)		;ab80
	sbc a,b			;ab81
	ld (hl),l		;ab82
	ld a,e			;ab83
	ld l,d			;ab84
	cp l			;ab85
	cp (hl)			;ab86
	ld h,h			;ab87
	ld l,l			;ab88
	cp a			;ab89
	cp h			;ab8a
	ld h,a			;ab8b
	nop			;ab8c
	nop			;ab8d
	ld (hl),l		;ab8e
	ld a,e			;ab8f
	ld l,d			;ab90
	ld l,e			;ab91
	nop			;ab92
	nop			;ab93
	ld l,l			;ab94
	ld l,h			;ab95
	nop			;ab96
	nop			;ab97
	nop			;ab98
	nop			;ab99
	nop			;ab9a
	nop			;ab9b
	nop			;ab9c
	nop			;ab9d
	sub (hl)		;ab9e
	sub a			;ab9f
	nop			;aba0
	add a,a			;aba1
	adc a,l			;aba2
	nop			;aba3
	nop			;aba4
	nop			;aba5
	nop			;aba6
	nop			;aba7
	nop			;aba8
	nop			;aba9
	nop			;abaa
	nop			;abab
	sbc a,b			;abac
	sbc a,d			;abad
	xor (hl)		;abae
	xor h			;abaf
	ld l,b			;abb0
	ld l,c			;abb1
	ld l,a			;abb2
	ld l,(hl)		;abb3
	nop			;abb4
	add a,e			;abb5
	add a,h			;abb6
	nop			;abb7
	nop			;abb8
	add a,e			;abb9
	add a,h			;abba
	nop			;abbb
	xor e			;abbc
	xor d			;abbd
	nop			;abbe
	nop			;abbf
	nop			;abc0
	nop			;abc1
	nop			;abc2
	nop			;abc3
	nop			;abc4
	nop			;abc5
	nop			;abc6
	nop			;abc7
	nop			;abc8
	nop			;abc9
	nop			;abca
	nop			;abcb
	nop			;abcc
	nop			;abcd
	sub (hl)		;abce
	sub a			;abcf
	nop			;abd0
	nop			;abd1
	nop			;abd2
	nop			;abd3
	nop			;abd4
	nop			;abd5
	nop			;abd6
	nop			;abd7
	nop			;abd8
	nop			;abd9
	nop			;abda
	nop			;abdb
	sbc a,b			;abdc
	sbc a,d			;abdd
	xor (hl)		;abde
	xor h			;abdf
	nop			;abe0
	nop			;abe1
	nop			;abe2
	nop			;abe3
	nop			;abe4
	nop			;abe5
	nop			;abe6
	nop			;abe7
	nop			;abe8
	nop			;abe9
	nop			;abea
	nop			;abeb
	xor e			;abec
	xor d			;abed
	nop			;abee
	nop			;abef
	nop			;abf0
	nop			;abf1
	nop			;abf2
	nop			;abf3
	nop			;abf4
	nop			;abf5
	sub l			;abf6
	sub h			;abf7
	nop			;abf8
	nop			;abf9
	sub e			;abfa
	adc a,(hl)		;abfb
	nop			;abfc
	nop			;abfd
	sub c			;abfe
	sbc a,a			;abff
	sbc a,c			;ac00
	sbc a,e			;ac01
	xor a			;ac02
	xor l			;ac03
	sbc a,(hl)		;ac04
	sbc a,h			;ac05
	or b			;ac06
	or d			;ac07
	sub d			;ac08
	sbc a,l			;ac09
	or c			;ac0a
	and (hl)		;ac0b
	and b			;ac0c
	adc a,a			;ac0d
	and e			;ac0e
	or h			;ac0f
	nop			;ac10
	nop			;ac11
	nop			;ac12
	nop			;ac13
	xor b			;ac14
	xor c			;ac15
	nop			;ac16
	nop			;ac17
	and d			;ac18
	and a			;ac19
	nop			;ac1a
	nop			;ac1b
	or e			;ac1c
	and l			;ac1d
	nop			;ac1e
	nop			;ac1f
	nop			;ac20
	nop			;ac21
	ld (hl),a		;ac22
	add a,d			;ac23
	ld e,d			;ac24
	ld e,e			;ac25
	ld e,e			;ac26
	ld (hl),d		;ac27
	ld e,c			;ac28
	ld e,b			;ac29
	ld (hl),b		;ac2a
	ld (hl),b		;ac2b
	sub h			;ac2c
	sub e			;ac2d
	ld (hl),h		;ac2e
	ld (hl),h		;ac2f
	ld a,l			;ac30
	ld a,b			;ac31
	ld (hl),a		;ac32
	add a,d			;ac33
	ld e,e			;ac34
	ld (hl),d		;ac35
	ld (hl),d		;ac36
	ld h,c			;ac37
	ld e,b			;ac38
	ld (hl),b		;ac39
	ld (hl),b		;ac3a
	ld e,(hl)		;ac3b
	sub e			;ac3c
	ld (hl),h		;ac3d
	ld (hl),h		;ac3e
	add a,b			;ac3f
	ld a,l			;ac40
	ld a,b			;ac41
	nop			;ac42
	nop			;ac43
	ld (hl),d		;ac44
	ld h,c			;ac45
	ld h,c			;ac46
	ld h,b			;ac47
	ld (hl),b		;ac48
	ld (hl),b		;ac49
	ld e,(hl)		;ac4a
	ld e,a			;ac4b
	ld (hl),h		;ac4c
	ld (hl),h		;ac4d
	add a,b			;ac4e
	ld a,(hl)		;ac4f
	nop			;ac50
	nop			;ac51
	nop			;ac52
	nop			;ac53
	nop			;ac54
	nop			;ac55
	add a,l			;ac56
	add a,(hl)		;ac57
	nop			;ac58
	sub b			;ac59
	and c			;ac5a
	or l			;ac5b
	nop			;ac5c
	ld a,c			;ac5d
	halt			;ac5e
	halt			;ac5f
	nop			;ac60
	nop			;ac61
	ld h,l			;ac62
	ld h,h			;ac63
	nop			;ac64
	nop			;ac65
	ld h,(hl)		;ac66
	ld h,a			;ac67
	and h			;ac68
	nop			;ac69
	nop			;ac6a
	adc a,e			;ac6b
	ld a,d			;ac6c
	nop			;ac6d
	nop			;ac6e
	add a,a			;ac6f
	ld l,b			;ac70
	ld l,c			;ac71
	ld l,a			;ac72
	ld l,(hl)		;ac73
	nop			;ac74
	adc a,e			;ac75
	adc a,h			;ac76
	nop			;ac77
	nop			;ac78
	add a,a			;ac79
	adc a,b			;ac7a
	nop			;ac7b
	nop			;ac7c
	ld a,a			;ac7d
	add a,c			;ac7e
	nop			;ac7f
	nop			;ac80
	nop			;ac81
	nop			;ac82
	nop			;ac83
	sub b			;ac84
	sub l			;ac85
	sub b			;ac86
	sub l			;ac87
	sub c			;ac88
	sub d			;ac89
	sub c			;ac8a
	sub d			;ac8b
	sub c			;ac8c
	sub d			;ac8d
	sub c			;ac8e
	sub d			;ac8f
	sub (hl)		;ac90
	sbc a,b			;ac91
	ld (hl),l		;ac92
	ld a,e			;ac93
	ld l,d			;ac94
	cp l			;ac95
	cp (hl)			;ac96
	ld h,h			;ac97
	ld l,l			;ac98
	cp a			;ac99
	cp h			;ac9a
	ld h,a			;ac9b
	ld (hl),l		;ac9c
	ld a,e			;ac9d
	ld (hl),c		;ac9e
	ld (hl),c		;ac9f
	nop			;aca0
	add a,l			;aca1
	add a,(hl)		;aca2
	nop			;aca3
	sub b			;aca4
	and c			;aca5
	or l			;aca6
	and h			;aca7
	ld a,c			;aca8
	halt			;aca9
	halt			;acaa
	ld a,d			;acab
	ld e,h			;acac
	ld e,l			;acad
	ld h,e			;acae
	ld h,d			;acaf
	nop			;acb0
	adc a,c			;acb1
	adc a,d			;acb2
	nop			;acb3
	sub b			;acb4
	and c			;acb5
	or l			;acb6
	and h			;acb7
	ld a,c			;acb8
	halt			;acb9
	halt			;acba
	ld a,d			;acbb
	ld e,h			;acbc
	ld e,l			;acbd
	ld h,e			;acbe
	ld h,d			;acbf
	sub (hl)		;acc0
	sbc a,b			;acc1
	ld (hl),l		;acc2
	ld a,e			;acc3
	ld l,d			;acc4
	cp l			;acc5
	cp (hl)			;acc6
	ld h,h			;acc7
	ld l,l			;acc8
	cp a			;acc9
	cp h			;acca
	ld h,a			;accb
	sub e			;accc
	sbc a,d			;accd
	sbc a,e			;acce
	sub h			;accf
	nop			;acd0
	nop			;acd1
	nop			;acd2
	nop			;acd3
	ld h,c			;acd4
	ld h,b			;acd5
	ld e,d			;acd6
	ld e,e			;acd7
	ld e,(hl)		;acd8
	ld e,a			;acd9
	ld e,c			;acda
	ld e,b			;acdb
	add a,b			;acdc
	ld a,(hl)		;acdd
	sub h			;acde
	sub e			;acdf
	nop			;ace0
	nop			;ace1
	nop			;ace2
	nop			;ace3
	nop			;ace4
	nop			;ace5
	nop			;ace6
	nop			;ace7
	nop			;ace8
	nop			;ace9
	ld e,d			;acea
	ld e,e			;aceb
	nop			;acec
	nop			;aced
	ld e,c			;acee
	ld e,b			;acef
	nop			;acf0
	nop			;acf1
	nop			;acf2
	nop			;acf3
	sub b			;acf4
	sub l			;acf5
	ld e,d			;acf6
	ld e,e			;acf7
	sub c			;acf8
	sub d			;acf9
	ld e,c			;acfa
	ld e,b			;acfb
	sub c			;acfc
	sub d			;acfd
	sub h			;acfe
	sub e			;acff
	nop			;ad00
	nop			;ad01
	nop			;ad02
	nop			;ad03
	nop			;ad04
	nop			;ad05
	nop			;ad06
	nop			;ad07
	ld (hl),d		;ad08
	ld (hl),d		;ad09
	ld h,c			;ad0a
	ld h,b			;ad0b
	ld (hl),b		;ad0c
	ld (hl),b		;ad0d
	ld e,(hl)		;ad0e
	ld e,a			;ad0f
	sub h			;ad10
	sub e			;ad11
	ld (hl),h		;ad12
	ld (hl),h		;ad13
	ld e,d			;ad14
	ld e,e			;ad15
	ld (hl),d		;ad16
	ld (hl),d		;ad17
	ld e,c			;ad18
	ld e,b			;ad19
	ld (hl),b		;ad1a
	ld (hl),b		;ad1b
	sub h			;ad1c
	sub e			;ad1d
	ld (hl),h		;ad1e
	ld (hl),h		;ad1f
	add a,b			;ad20
	ld a,(hl)		;ad21
	nop			;ad22
	nop			;ad23
	ld h,c			;ad24
	ld h,b			;ad25
	ld e,d			;ad26
	ld e,e			;ad27
	ld e,(hl)		;ad28
	ld e,a			;ad29
	ld e,c			;ad2a
	ld e,b			;ad2b
	add a,b			;ad2c
	ld a,(hl)		;ad2d
	sub h			;ad2e
	sub e			;ad2f
	sub b			;ad30
	and c			;ad31
	or l			;ad32
	and h			;ad33
	ld a,c			;ad34
	halt			;ad35
	halt			;ad36
	ld a,d			;ad37
	ld (hl),d		;ad38
	ld (hl),d		;ad39
	ld h,c			;ad3a
	ld h,b			;ad3b
	ld (hl),b		;ad3c
	ld (hl),b		;ad3d
	ld e,(hl)		;ad3e
	ld e,a			;ad3f
	ld (hl),h		;ad40
	ld (hl),h		;ad41
	add a,b			;ad42
	ld a,(hl)		;ad43
	ld (hl),d		;ad44
	ld (hl),d		;ad45
	ld h,c			;ad46
	ld h,b			;ad47
	ld (hl),b		;ad48
	ld (hl),b		;ad49
	ld e,(hl)		;ad4a
	ld e,a			;ad4b
	ld (hl),h		;ad4c
	ld (hl),h		;ad4d
	add a,b			;ad4e
	ld a,(hl)		;ad4f
	nop			;ad50
	nop			;ad51
	sub h			;ad52
	sub e			;ad53
	sub b			;ad54
	sub l			;ad55
	ld e,d			;ad56
	ld e,e			;ad57
	sub c			;ad58
	sub d			;ad59
	ld e,c			;ad5a
	ld e,b			;ad5b
	sub c			;ad5c
	sub d			;ad5d
	sub h			;ad5e
	sub e			;ad5f
	nop			;ad60
	ld e,h			;ad61
	ld e,l			;ad62
	ld h,e			;ad63
	nop			;ad64
	ld (hl),a		;ad65
	add a,d			;ad66
	ld a,l			;ad67
	ld e,d			;ad68
	ld e,e			;ad69
	ld (hl),d		;ad6a
	ld (hl),d		;ad6b
	ld e,c			;ad6c
	ld e,b			;ad6d
	ld (hl),b		;ad6e
	ld (hl),b		;ad6f
	ld (hl),a		;ad70
	add a,d			;ad71
	ld a,l			;ad72
	ld a,b			;ad73
	ld e,d			;ad74
	ld e,e			;ad75
	ld (hl),d		;ad76
	ld (hl),d		;ad77
	ld e,c			;ad78
	ld e,b			;ad79
	ld (hl),b		;ad7a
	ld (hl),b		;ad7b
	sub h			;ad7c
	sub e			;ad7d
	ld (hl),h		;ad7e
	ld (hl),h		;ad7f
	nop			;ad80
	nop			;ad81
	nop			;ad82
	nop			;ad83
	nop			;ad84
	nop			;ad85
	nop			;ad86
	nop			;ad87
	nop			;ad88
	add a,l			;ad89
	add a,(hl)		;ad8a
	nop			;ad8b
	sub b			;ad8c
	and c			;ad8d
	or l			;ad8e
	and h			;ad8f
	ld (hl),a		;ad90
	add a,d			;ad91
	ld a,l			;ad92
	ld a,b			;ad93
	ld (hl),d		;ad94
	ld (hl),d		;ad95
	ld h,c			;ad96
	ld h,b			;ad97
	ld (hl),b		;ad98
	ld (hl),b		;ad99
	ld e,(hl)		;ad9a
	ld e,a			;ad9b
	ld (hl),h		;ad9c
	ld (hl),h		;ad9d
	add a,b			;ad9e
	ld a,(hl)		;ad9f
	ld a,c			;ada0
	halt			;ada1
	halt			;ada2
	ld a,d			;ada3
	sub b			;ada4
	sub l			;ada5
	ld e,d			;ada6
	ld e,e			;ada7
	sub c			;ada8
	sub d			;ada9
	ld e,c			;adaa
	ld e,b			;adab
	sub c			;adac
	sub d			;adad
	sub h			;adae
	sub e			;adaf
	sub (hl)		;adb0
	sbc a,b			;adb1
	ld (hl),l		;adb2
	ld a,e			;adb3
	ld l,d			;adb4
	ld l,e			;adb5
	ld h,l			;adb6
	ld h,h			;adb7
	ld l,l			;adb8
	ld l,h			;adb9
	ld h,(hl)		;adba
	ld h,a			;adbb
	nop			;adbc
	nop			;adbd
	ld (hl),l		;adbe
	ld a,e			;adbf
	ld (hl),l		;adc0
	ld a,e			;adc1
	ld (hl),c		;adc2
	ld (hl),c		;adc3
	ld h,l			;adc4
	ld h,h			;adc5
	ld a,h			;adc6
	ld a,h			;adc7
	ld h,(hl)		;adc8
	ld h,a			;adc9
	ld (hl),e		;adca
	ld (hl),e		;adcb
	nop			;adcc
	nop			;adcd
	nop			;adce
	nop			;adcf
	sub (hl)		;add0
	sbc a,b			;add1
	ld (hl),l		;add2
	ld a,e			;add3
	ld l,d			;add4
	ld l,e			;add5
	ld h,l			;add6
	ld h,h			;add7
	ld l,l			;add8
	ld l,h			;add9
	ld h,(hl)		;adda
	ld h,a			;addb
	nop			;addc
	nop			;addd
	nop			;adde
	nop			;addf
	ld (hl),c		;ade0
	ld (hl),c		;ade1
	sub (hl)		;ade2
	sbc a,b			;ade3
	ld a,h			;ade4
	ld a,h			;ade5
	ld l,d			;ade6
	ld l,e			;ade7
	ld (hl),e		;ade8
	ld (hl),e		;ade9
	ld l,l			;adea
	ld l,h			;adeb
	nop			;adec
	nop			;aded
	nop			;adee
	nop			;adef
	ld (hl),l		;adf0
	ld a,e			;adf1
	ld (hl),c		;adf2
	ld (hl),c		;adf3
	ld h,l			;adf4
	ld h,h			;adf5
	ld a,h			;adf6
	ld a,h			;adf7
	ld h,(hl)		;adf8
	ld h,a			;adf9
	ld (hl),e		;adfa
	ld (hl),e		;adfb
	nop			;adfc
	adc a,e			;adfd
	adc a,h			;adfe
	nop			;adff
	sbc a,e			;ae00
	sub h			;ae01
	ld (hl),l		;ae02
	ld a,e			;ae03
	ld l,a			;ae04
	ld l,(hl)		;ae05
	ld h,l			;ae06
	ld h,h			;ae07
	nop			;ae08
	nop			;ae09
	ld h,(hl)		;ae0a
	ld h,a			;ae0b
	nop			;ae0c
	nop			;ae0d
	ld (hl),l		;ae0e
	ld a,e			;ae0f
	ld (hl),l		;ae10
	ld a,e			;ae11
	ld (hl),c		;ae12
	ld (hl),c		;ae13
	ld h,l			;ae14
	ld h,h			;ae15
	ld a,h			;ae16
	ld a,h			;ae17
	ld h,(hl)		;ae18
	ld h,a			;ae19
	ld (hl),e		;ae1a
	ld (hl),e		;ae1b
	ld (hl),l		;ae1c
	ld a,e			;ae1d
	ld (hl),c		;ae1e
	ld (hl),c		;ae1f
	sub (hl)		;ae20
	sbc a,b			;ae21
	ld (hl),l		;ae22
	ld a,e			;ae23
	ld l,d			;ae24
	ld l,e			;ae25
	ld h,l			;ae26
	ld h,h			;ae27
	ld l,l			;ae28
	ld l,h			;ae29
	ld h,(hl)		;ae2a
	ld h,a			;ae2b
	sub (hl)		;ae2c
	sbc a,b			;ae2d
	nop			;ae2e
	nop			;ae2f
	sub (hl)		;ae30
	sbc a,b			;ae31
	sub e			;ae32
	sbc a,d			;ae33
	ld l,d			;ae34
	ld l,e			;ae35
	ld l,b			;ae36
	ld l,c			;ae37
	ld l,l			;ae38
	ld l,h			;ae39
	nop			;ae3a
	nop			;ae3b
	nop			;ae3c
	nop			;ae3d
	nop			;ae3e
	nop			;ae3f
	ld (hl),c		;ae40
	ld (hl),c		;ae41
	sub (hl)		;ae42
	sbc a,b			;ae43
	ld a,h			;ae44
	ld a,h			;ae45
	ld l,d			;ae46
	ld l,e			;ae47
	ld (hl),e		;ae48
	ld (hl),e		;ae49
	ld l,l			;ae4a
	ld l,h			;ae4b
	ld (hl),c		;ae4c
	ld (hl),c		;ae4d
	sub (hl)		;ae4e
	sbc a,b			;ae4f
	ld h,l			;ae50
	ld h,h			;ae51
	ld a,h			;ae52
	ld a,h			;ae53
	ld h,(hl)		;ae54
	ld h,a			;ae55
	ld (hl),e		;ae56
	ld (hl),e		;ae57
	nop			;ae58
	add a,a			;ae59
	adc a,b			;ae5a
	nop			;ae5b
	nop			;ae5c
	ld a,a			;ae5d
	add a,c			;ae5e
	nop			;ae5f
	sub (hl)		;ae60
	sbc a,b			;ae61
	sub d			;ae62
	sub l			;ae63
	ld l,d			;ae64
	ld l,e			;ae65
	sub d			;ae66
	sub l			;ae67
	ld l,l			;ae68
	ld l,h			;ae69
	sub b			;ae6a
	sub c			;ae6b
	sub (hl)		;ae6c
	sbc a,b			;ae6d
	nop			;ae6e
	nop			;ae6f
	ld (hl),l		;ae70
	ld a,e			;ae71
	ld (hl),c		;ae72
	ld (hl),c		;ae73
	ld h,l			;ae74
	ld h,h			;ae75
	ld a,h			;ae76
	ld a,h			;ae77
	ld h,(hl)		;ae78
	ld h,a			;ae79
	ld (hl),e		;ae7a
	ld (hl),e		;ae7b
	sub e			;ae7c
	sbc a,d			;ae7d
	sbc a,e			;ae7e
	sub h			;ae7f
	sub (hl)		;ae80
	sbc a,b			;ae81
	ld (hl),l		;ae82
	ld a,e			;ae83
	ld l,d			;ae84
	ld l,e			;ae85
	ld h,l			;ae86
	ld h,h			;ae87
	ld l,l			;ae88
	ld l,h			;ae89
	ld h,(hl)		;ae8a
	ld h,a			;ae8b
	sub (hl)		;ae8c
	sbc a,b			;ae8d
	ld (hl),l		;ae8e
	ld a,e			;ae8f
	ld h,l			;ae90
	ld h,h			;ae91
	ld a,h			;ae92
	ld a,h			;ae93
	ld h,(hl)		;ae94
	ld h,a			;ae95
	ld (hl),e		;ae96
	ld (hl),e		;ae97
	nop			;ae98
	nop			;ae99
	nop			;ae9a
	nop			;ae9b
	nop			;ae9c
	nop			;ae9d
	nop			;ae9e
	nop			;ae9f
	nop			;aea0
	nop			;aea1
	ld h,l			;aea2
	ld h,h			;aea3
	nop			;aea4
	nop			;aea5
	ld h,(hl)		;aea6
	ld h,a			;aea7
	nop			;aea8
	nop			;aea9
	nop			;aeaa
	nop			;aeab
	xor e			;aeac
	xor d			;aead
	nop			;aeae
	nop			;aeaf
	ld (hl),c		;aeb0
	ld (hl),c		;aeb1
	sub (hl)		;aeb2
	ld (hl),c		;aeb3
	ld a,h			;aeb4
	ld a,h			;aeb5
	ld l,d			;aeb6
	ld a,h			;aeb7
	ld (hl),e		;aeb8
	ld (hl),e		;aeb9
	ld (hl),e		;aeba
	ld (hl),e		;aebb
	ld (hl),c		;aebc
	ld (hl),c		;aebd
	sub (hl)		;aebe
	sbc a,b			;aebf
	ld h,l			;aec0
	ld h,h			;aec1
	ld a,h			;aec2
	ld a,h			;aec3
	ld h,(hl)		;aec4
	ld h,a			;aec5
	ld (hl),e		;aec6
	ld (hl),e		;aec7
	sub e			;aec8
	sbc a,d			;aec9
	sbc a,e			;aeca
	sub h			;aecb
	ld l,b			;aecc
	ld l,c			;aecd
	ld l,a			;aece
	ld l,(hl)		;aecf
	ld l,d			;aed0
	ld l,e			;aed1
	nop			;aed2
	nop			;aed3
	ld l,l			;aed4
	ld l,h			;aed5
	nop			;aed6
	nop			;aed7
	nop			;aed8
	nop			;aed9
	nop			;aeda
	nop			;aedb
	nop			;aedc
	nop			;aedd
	nop			;aede
	nop			;aedf
	nop			;aee0
	nop			;aee1
	ld h,l			;aee2
	ld h,h			;aee3
	nop			;aee4
	nop			;aee5
	ld h,(hl)		;aee6
	ld h,a			;aee7
	nop			;aee8
	nop			;aee9
	nop			;aeea
	nop			;aeeb
	nop			;aeec
	nop			;aeed
	nop			;aeee
	nop			;aeef
	ld a,h			;aef0
	ld a,h			;aef1
	ld l,d			;aef2
	ld l,e			;aef3
	ld (hl),e		;aef4
	ld (hl),e		;aef5
	ld l,l			;aef6
	ld l,h			;aef7
	nop			;aef8
	nop			;aef9
	nop			;aefa
	nop			;aefb
	nop			;aefc
	nop			;aefd
	nop			;aefe
	nop			;aeff
	sub (hl)		;af00
	sbc a,b			;af01
	sub e			;af02
	sbc a,d			;af03
	ld l,d			;af04
	ld l,e			;af05
	ld l,b			;af06
	ld l,c			;af07
	ld l,l			;af08
	ld l,h			;af09
	nop			;af0a
	nop			;af0b
	sub (hl)		;af0c
	sbc a,b			;af0d
	nop			;af0e
	nop			;af0f
	sbc a,e			;af10
	sub h			;af11
	ld (hl),l		;af12
	ld a,e			;af13
	ld l,a			;af14
	ld l,(hl)		;af15
	ld h,l			;af16
	ld h,h			;af17
	nop			;af18
	nop			;af19
	ld h,(hl)		;af1a
	ld h,a			;af1b
	nop			;af1c
	nop			;af1d
	nop			;af1e
	nop			;af1f
	ld h,d			;af20
	nop			;af21
	nop			;af22
	nop			;af23
	ld a,b			;af24
	nop			;af25
	nop			;af26
	nop			;af27
	ld h,c			;af28
	ld h,b			;af29
	nop			;af2a
	nop			;af2b
	ld e,(hl)		;af2c
	ld e,a			;af2d
	nop			;af2e
	nop			;af2f
	ld a,(03a3ah)		;af30
	ld a,(03d3dh)		;af33
	dec a			;af36
	dec a			;af37
	sub (hl)		;af38
	sub e			;af39
	sbc a,d			;af3a
	sbc a,e			;af3b
	ld l,d			;af3c
	ld l,b			;af3d
	ld l,c			;af3e
	ld l,a			;af3f
	ld a,(03a3ah)		;af40
	ld a,(03d3dh)		;af43
	dec a			;af46
	dec a			;af47
	sub (hl)		;af48
	sub e			;af49
	sbc a,d			;af4a
	sbc a,e			;af4b
	ld l,d			;af4c
	ld l,b			;af4d
	ld l,c			;af4e
	ld l,a			;af4f
	ld b,008h		;af50
	rrca			;af52
	dec c			;af53
	dec a			;af54
	dec bc			;af55
	ld (de),a		;af56
	dec a			;af57
	sub h			;af58
	and b			;af59
	and (hl)		;af5a
	nop			;af5b
	ld l,(hl)		;af5c
	nop			;af5d
	nop			;af5e
	nop			;af5f
	ld a,(03a3ah)		;af60
	ld a,(03d3dh)		;af63
	dec a			;af66
	dec a			;af67
	nop			;af68
	nop			;af69
	nop			;af6a
	nop			;af6b
	nop			;af6c
	nop			;af6d
	nop			;af6e
	nop			;af6f
	ld h,(hl)		;af70
	ld h,a			;af71
	ld (hl),e		;af72
	ld (hl),e		;af73
	nop			;af74
	sub e			;af75
	sbc a,d			;af76
	sbc a,e			;af77
	nop			;af78
	ld l,b			;af79
	ld l,c			;af7a
	ld l,a			;af7b
	nop			;af7c
	nop			;af7d
	adc a,e			;af7e
	adc a,h			;af7f
	ld l,l			;af80
	ld l,h			;af81
	nop			;af82
	nop			;af83
	sub h			;af84
	nop			;af85
	nop			;af86
	nop			;af87
	ld l,(hl)		;af88
	nop			;af89
	nop			;af8a
	nop			;af8b
	nop			;af8c
	nop			;af8d
	nop			;af8e
	nop			;af8f
	ld l,l			;af90
	ld l,h			;af91
	nop			;af92
	nop			;af93
	sub h			;af94
	nop			;af95
	nop			;af96
	nop			;af97
	ld l,(hl)		;af98
	nop			;af99
	add a,e			;af9a
	add a,h			;af9b
	nop			;af9c
	nop			;af9d
	nop			;af9e
	add a,l			;af9f
	ld h,(hl)		;afa0
	ld h,a			;afa1
	ld (hl),e		;afa2
	ld (hl),e		;afa3
	nop			;afa4
	sub e			;afa5
	sbc a,d			;afa6
	sbc a,e			;afa7
	nop			;afa8
	ld l,b			;afa9
	ld l,c			;afaa
	ld l,a			;afab
	add a,(hl)		;afac
	add a,a			;afad
	adc a,b			;afae
	adc a,c			;afaf
	ld l,l			;afb0
	ld l,h			;afb1
	nop			;afb2
	nop			;afb3
	sub h			;afb4
	nop			;afb5
	nop			;afb6
	nop			;afb7
	ld l,(hl)		;afb8
	nop			;afb9
	nop			;afba
	nop			;afbb
	and d			;afbc
	and e			;afbd
	and h			;afbe
	rlca			;afbf
	nop			;afc0
	nop			;afc1
	nop			;afc2
	nop			;afc3
	nop			;afc4
	and c			;afc5
	and a			;afc6
	nop			;afc7
	and l			;afc8
	ld a,(bc)		;afc9
	ld de,005abh		;afca
	add hl,bc		;afcd
	djnz lafdch		;afce
	nop			;afd0
	nop			;afd1
	nop			;afd2
	nop			;afd3
	nop			;afd4
	nop			;afd5
	nop			;afd6
	nop			;afd7
	nop			;afd8
	nop			;afd9
	nop			;afda
	nop			;afdb
lafdch:
	ld c,0aah		;afdc
	xor c			;afde
	xor b			;afdf
	nop			;afe0
	nop			;afe1
	add a,a			;afe2
	adc a,b			;afe3
	nop			;afe4
	nop			;afe5
	adc a,e			;afe6
	adc a,h			;afe7
	nop			;afe8
	nop			;afe9
	add a,a			;afea
	adc a,b			;afeb
	nop			;afec
	nop			;afed
	ld a,a			;afee
	add a,c			;afef
	nop			;aff0
	nop			;aff1
	add a,a			;aff2
	adc a,b			;aff3
	nop			;aff4
	nop			;aff5
	adc a,e			;aff6
	adc a,h			;aff7
	nop			;aff8
	nop			;aff9
	add a,a			;affa
	adc a,l			;affb
	nop			;affc
	nop			;affd
	nop			;affe
	nop			;afff
	sbc a,a			;b000
	ret			;b001
	call nz,000c7h		;b002
	and l			;b005
	and (hl)		;b006
	nop			;b007
	nop			;b008
	nop			;b009
	nop			;b00a
	nop			;b00b
	nop			;b00c
	nop			;b00d
	nop			;b00e
	xor b			;b00f
	inc b			;b010
	ld e,006h		;b011
	xor a			;b013
	and d			;b014
	rra			;b015
	rlca			;b016
	ld (bc),a		;b017
	and e			;b018
	daa			;b019
	ld a,(bc)		;b01a
	ex af,af'		;b01b
	inc de			;b01c
	ld c,00bh		;b01d
	add hl,bc		;b01f
	dec e			;b020
	add hl,de		;b021
	ld b,h			;b022
	ld c,b			;b023
	ld d,018h		;b024
	ld b,e			;b026
	ld b,c			;b027
	add hl,hl		;b028
	ld bc,0542ch		;b029
	ld hl,(lb8b0h)		;b02c
	ld d,l			;b02f
	or a			;b030
	ld sp,02f49h		;b031
	dec l			;b034
	ld (la74ah),a		;b035
	inc sp			;b038
	dec (hl)		;b039
	ld d,d			;b03a
	and h			;b03b
	inc (hl)		;b03c
	ld (hl),039h		;b03d
	ld a,000h		;b03f
	nop			;b041
	adc a,c			;b042
	adc a,d			;b043
	nop			;b044
	nop			;b045
	add a,a			;b046
	adc a,b			;b047
	nop			;b048
	nop			;b049
	ld a,a			;b04a
	add a,c			;b04b
	nop			;b04c
	ld e,h			;b04d
	ld e,l			;b04e
	ld h,e			;b04f
	nop			;b050
	nop			;b051
	nop			;b052
	nop			;b053
	nop			;b054
	nop			;b055
	nop			;b056
	nop			;b057
	nop			;b058
	nop			;b059
	nop			;b05a
	nop			;b05b
	ld h,d			;b05c
	nop			;b05d
	nop			;b05e
	nop			;b05f
	nop			;b060
	nop			;b061
	add a,l			;b062
	add a,(hl)		;b063
	nop			;b064
	nop			;b065
	add a,a			;b066
	adc a,b			;b067
	nop			;b068
	nop			;b069
	ld a,a			;b06a
	add a,c			;b06b
	nop			;b06c
	ld e,h			;b06d
	ld e,l			;b06e
	ld h,e			;b06f
	nop			;b070
	nop			;b071
	nop			;b072
	nop			;b073
	nop			;b074
	nop			;b075
	nop			;b076
	nop			;b077
	nop			;b078
	nop			;b079
	and c			;b07a
	ret z			;b07b
	ld h,d			;b07c
	and b			;b07d
	cp l			;b07e
	cp (hl)			;b07f
	nop			;b080
	nop			;b081
	xor e			;b082
	call sub_a9aah		;b083
	set 1,d			;b086
	call z,0c5c0h		;b088
	jp nz,0c3c1h		;b08b
	add a,0bfh		;b08e
	ld a,(de)		;b090
	xor h			;b091
	inc c			;b092
	or d			;b093
	dec h			;b094
	ld h,005h		;b095
	rrca			;b097
	inc d			;b098
	dec c			;b099
	jr z,lb0bdh		;b09a
	xor (hl)		;b09c
	ld (de),a		;b09d
	inc bc			;b09e
	djnz lb0b2h		;b09f
	or c			;b0a1
	cp c			;b0a2
	inc a			;b0a3
	dec d			;b0a4
	dec hl			;b0a5
	ld d,(hl)		;b0a6
	ld b,b			;b0a7
	dec de			;b0a8
	ld (0464dh),hl		;b0a9
	cp h			;b0ac
	inc hl			;b0ad
	ld c,(hl)		;b0ae
	cp h			;b0af
	cp d			;b0b0
	scf			;b0b1
lb0b2h:
	or h			;b0b2
	ld b,l			;b0b3
	ld a,(05130h)		;b0b4
	ld d,b			;b0b7
	ld c,h			;b0b8
	ld d,e			;b0b9
	jr c,lb0fbh		;b0ba
	dec sp			;b0bc
lb0bdh:
	ld l,03dh		;b0bd
	or (hl)			;b0bf
	nop			;b0c0
	ld (hl),a		;b0c1
	add a,d			;b0c2
	ld a,l			;b0c3
	ld e,d			;b0c4
	ld e,e			;b0c5
	ld (hl),d		;b0c6
	ld (hl),d		;b0c7
	ld h,d			;b0c8
	ld e,b			;b0c9
	ld (hl),b		;b0ca
	ld (hl),b		;b0cb
	ld a,b			;b0cc
	sub e			;b0cd
	ld (hl),h		;b0ce
	ld (hl),h		;b0cf
	ld a,b			;b0d0
	nop			;b0d1
	nop			;b0d2
	nop			;b0d3
	ld h,c			;b0d4
	ld h,b			;b0d5
	nop			;b0d6
	nop			;b0d7
	ld e,(hl)		;b0d8
	ld e,h			;b0d9
	ld e,l			;b0da
	ld h,e			;b0db
	add a,b			;b0dc
	ld (hl),a		;b0dd
	add a,d			;b0de
	ld a,l			;b0df
	ld a,b			;b0e0
	sbc a,e			;b0e1
	cp a			;b0e2
	sbc a,l			;b0e3
	ld h,c			;b0e4
	sbc a,d			;b0e5
	ret nz			;b0e6
	sbc a,(hl)		;b0e7
	ld e,(hl)		;b0e8
	sbc a,a			;b0e9
	call nz,080c6h		;b0ea
	set 0,c			;b0ed
	jp 0c799h		;b0ef
	or b			;b0f2
	xor a			;b0f3
	sbc a,h			;b0f4
	ret			;b0f5
	or c			;b0f6
	xor (hl)		;b0f7
	call 0524fh		;b0f8
lb0fbh:
	push bc			;b0fb
	jp nz,05150h		;b0fc
	rl l			;b0ff
	ld bc,0121dh		;b101
	dec c			;b104
	ld (bc),a		;b105
	ld e,013h		;b106
	cp c			;b108
	jr nz,$+37		;b109
	inc d			;b10b
	call z,01b1ah		;b10c
	ld (01c09h),hl		;b10f
	ccf			;b112
	inc l			;b113
	ld de,02e0bh		;b114
	inc (hl)		;b117
	ld a,(bc)		;b118
	djnz $+53		;b119
	dec l			;b11b
	inc bc			;b11c
	inc b			;b11d
	daa			;b11e
	ld h,035h		;b11f
	ld b,b			;b121
	inc h			;b122
	jr c,$+56		;b123
	ld b,c			;b125
	dec h			;b126
	jr nc,lb160h		;b127
	ld b,(hl)		;b129
	ld b,e			;b12a
	xor l			;b12b
	ld b,l			;b12c
	ld a,03dh		;b12d
	cp d			;b12f
	cp (hl)			;b130
	cp l			;b131
	ld c,c			;b132
	ld c,d			;b133
	or (hl)			;b134
	ld c,h			;b135
	ld c,l			;b136
	ld c,h			;b137
	ld c,(hl)		;b138
	ld c,a			;b139
	ld d,d			;b13a
	jp z,050cch		;b13b
	ld d,c			;b13e
	bit 0,a			;b13f
	cp b			;b141
	ex af,af'		;b142
	ld b,04bh		;b143
	or h			;b145
	rra			;b146
	jr lb197h		;b147
	ld c,a			;b149
	cp e			;b14a
	rlca			;b14b
	call z,sub_b250h	;b14c
	ld hl,00f16h		;b14f
	ld (01739h),a		;b152
	inc c			;b155
	cpl			;b156
	ld a,(00ec8h)		;b157
	ld sp,019c8h		;b15a
	dec b			;b15d
	jr z,lb19ch		;b15e
lb160h:
	add hl,hl		;b160
	dec hl			;b161
	or l			;b162
	ld c,d			;b163
	dec sp			;b164
	ld b,d			;b165
	or a			;b166
	ld c,h			;b167
	ld hl,(052bch)		;b168
	jp z,0b344h		;b16b
	ld d,c			;b16e
	srl d			;b16f
	ld a,(03a3ah)		;b171
	dec a			;b174
	dec a			;b175
	dec a			;b176
	dec a			;b177
	ld l,l			;b178
	ld l,h			;b179
	sub d			;b17a
	and l			;b17b
	sub (hl)		;b17c
	sbc a,b			;b17d
	sub b			;b17e
	sub c			;b17f
	ld a,041h		;b180
	dec sp			;b182
	ld a,(01118h)		;b183
	ld (de),a		;b186
	dec a			;b187
	push bc			;b188
	xor b			;b189
	xor c			;b18a
	ld d,(hl)		;b18b
	and d			;b18c
	ld a,e			;b18d
	ld (hl),c		;b18e
	and b			;b18f
	ld a,l			;b190
	ld a,b			;b191
	ld (hl),a		;b192
	add a,d			;b193
	ld e,e			;b194
	ld (hl),d		;b195
	ld (hl),d		;b196
lb197h:
	ld h,c			;b197
	ld e,b			;b198
	ld (hl),b		;b199
	ld (hl),b		;b19a
	and l			;b19b
lb19ch:
	inc h			;b19c
	daa			;b19d
	ld hl,07d38h		;b19e
	ld a,b			;b1a1
	nop			;b1a2
	nop			;b1a3
	and d			;b1a4
	ld h,c			;b1a5
	ld h,c			;b1a6
	and b			;b1a7
	push bc			;b1a8
	xor b			;b1a9
	xor c			;b1aa
	ld d,(hl)		;b1ab
	add hl,sp		;b1ac
	ld hl,02e31h		;b1ad
	dec h			;b1b0
	jr z,$+27		;b1b1
	rra			;b1b3
	jr nz,lb1dfh		;b1b4
	call 0cccah		;b1b6
	ld hl,(0cbcch)		;b1b9
	call z,0cc2ah		;b1bc
	rr a			;b1bf
	add hl,de		;b1c1
	ld (0ca2fh),a		;b1c2
	call 02033h		;b1c5
	set 1,h			;b1c8
	inc (hl)		;b1ca
	call z,0cccbh		;b1cb
	inc (hl)		;b1ce
	call z,00000h		;b1cf
	nop			;b1d2
	nop			;b1d3
	nop			;b1d4
	nop			;b1d5
	nop			;b1d6
	nop			;b1d7
	nop			;b1d8
	nop			;b1d9
	nop			;b1da
	nop			;b1db
	nop			;b1dc
	nop			;b1dd
	nop			;b1de
lb1dfh:
	nop			;b1df
	ld d,a			;b1e0
	nop			;b1e1
	ld e,c			;b1e2
	ld e,h			;b1e3
	nop			;b1e4
	ld e,(hl)		;b1e5
	ld d,a			;b1e6
	ld h,b			;b1e7
	nop			;b1e8
	ld h,c			;b1e9
	ld h,b			;b1ea
	nop			;b1eb
	ld e,e			;b1ec
	ld e,(hl)		;b1ed
	nop			;b1ee
	ld e,b			;b1ef
	ld e,b			;b1f0
	ld e,d			;b1f1
	ld e,h			;b1f2
	nop			;b1f3
	ld e,a			;b1f4
	ld e,l			;b1f5
	ld h,c			;b1f6
	ld e,d			;b1f7
	ld e,(hl)		;b1f8
	nop			;b1f9
	ld e,c			;b1fa
	nop			;b1fb
	ld h,b			;b1fc
	ld e,a			;b1fd
	ld e,l			;b1fe
	ld e,c			;b1ff
	nop			;b200
	ld d,a			;b201
	ld e,d			;b202
	ld e,(hl)		;b203
	ld h,b			;b204
	ld e,l			;b205
	ld e,(hl)		;b206
	nop			;b207
	ld e,(hl)		;b208
	nop			;b209
	ld e,b			;b20a
	ld e,a			;b20b
	ld e,l			;b20c
	ld d,a			;b20d
	nop			;b20e
	ld e,b			;b20f
	nop			;b210
	nop			;b211
	ld e,l			;b212
	nop			;b213
	nop			;b214
	ld e,(hl)		;b215
	nop			;b216
	nop			;b217
	nop			;b218
	nop			;b219
	nop			;b21a
	nop			;b21b
	ld e,c			;b21c
	nop			;b21d
	nop			;b21e
	ld h,d			;b21f
	nop			;b220
	nop			;b221
	ld h,h			;b222
	nop			;b223
	ld d,a			;b224
	ld h,b			;b225
	nop			;b226
	ld e,e			;b227
	nop			;b228
	nop			;b229
	ld e,(hl)		;b22a
	nop			;b22b
	nop			;b22c
	ld h,d			;b22d
	nop			;b22e
	ld h,b			;b22f
	ld e,a			;b230
	nop			;b231
	nop			;b232
	ld h,b			;b233
	nop			;b234
	ld h,b			;b235
	ld d,a			;b236
	nop			;b237
	nop			;b238
	nop			;b239
	nop			;b23a
	ld h,b			;b23b
	nop			;b23c
	ld e,a			;b23d
	ld e,e			;b23e
	nop			;b23f
	ld h,b			;b240
	nop			;b241
	ld h,b			;b242
	nop			;b243
	nop			;b244
	nop			;b245
	nop			;b246
	ld e,(hl)		;b247
	nop			;b248
	ld h,b			;b249
	nop			;b24a
	nop			;b24b
	ld e,a			;b24c
	nop			;b24d
	ld e,h			;b24e
	nop			;b24f
sub_b250h:
	nop			;b250
	ld e,(hl)		;b251
	nop			;b252
	ld h,h			;b253
	ld e,c			;b254
	ld h,b			;b255
	ld e,a			;b256
	ld e,c			;b257
	ld h,b			;b258
	nop			;b259
	ld e,e			;b25a
	nop			;b25b
	nop			;b25c
	ld e,(hl)		;b25d
	nop			;b25e
	nop			;b25f
	nop			;b260
	nop			;b261
	nop			;b262
	ld h,d			;b263
	nop			;b264
	ld h,h			;b265
	nop			;b266
	ld h,b			;b267
	nop			;b268
	nop			;b269
	nop			;b26a
	nop			;b26b
	nop			;b26c
	nop			;b26d
	ld h,b			;b26e
	nop			;b26f
	ld e,a			;b270
	ld e,e			;b271
	ld h,b			;b272
	ld e,a			;b273
	ld e,b			;b274
	ld e,l			;b275
	ld e,h			;b276
	ld h,b			;b277
	ld e,e			;b278
	ld e,c			;b279
	ld h,c			;b27a
	ld d,a			;b27b
	ld h,b			;b27c
	nop			;b27d
	ld e,l			;b27e
	ld e,a			;b27f
	nop			;b280
	ld h,d			;b281
	nop			;b282
	nop			;b283
	nop			;b284
	nop			;b285
	nop			;b286
	ld e,l			;b287
	nop			;b288
	nop			;b289
	nop			;b28a
	nop			;b28b
	nop			;b28c
	ld e,(hl)		;b28d
	nop			;b28e
	nop			;b28f
	ld h,e			;b290
	ld h,b			;b291
	ld e,a			;b292
	nop			;b293
	ld e,(hl)		;b294
	ld h,e			;b295
	ld h,c			;b296
	ld e,(hl)		;b297
	ld h,b			;b298
	ld e,l			;b299
	ld e,h			;b29a
	ld e,e			;b29b
	ld e,e			;b29c
	ld e,a			;b29d
	ld e,c			;b29e
	ld h,b			;b29f
	ld h,b			;b2a0
	ld h,d			;b2a1
	nop			;b2a2
	nop			;b2a3
	nop			;b2a4
	nop			;b2a5
	nop			;b2a6
	ld h,b			;b2a7
	nop			;b2a8
	ld h,b			;b2a9
	ld e,a			;b2aa
	nop			;b2ab
	ld h,d			;b2ac
	nop			;b2ad
	nop			;b2ae
	ld h,d			;b2af
	nop			;b2b0
	ld h,d			;b2b1
	nop			;b2b2
	ld h,b			;b2b3
	ld h,d			;b2b4
	ld h,b			;b2b5
	ld h,h			;b2b6
	nop			;b2b7
	nop			;b2b8
	nop			;b2b9
	nop			;b2ba
	ld h,d			;b2bb
	nop			;b2bc
	nop			;b2bd
	ld h,b			;b2be
	nop			;b2bf
	ld h,d			;b2c0
	nop			;b2c1
	nop			;b2c2
	nop			;b2c3
	nop			;b2c4
	nop			;b2c5
	nop			;b2c6
	nop			;b2c7
	nop			;b2c8
	nop			;b2c9
	nop			;b2ca
	nop			;b2cb
	nop			;b2cc
	nop			;b2cd
	ld h,d			;b2ce
	nop			;b2cf
	or e			;b2d0
	ld l,d			;b2d1
	jr z,lb2fdh		;b2d2
	inc hl			;b2d4
	inc h			;b2d5
	dec h			;b2d6
	ld h,017h		;b2d7
	inc d			;b2d9
	ld hl,06b22h		;b2da
	ld l,h			;b2dd
	ld l,l			;b2de
	ld de,02f2eh		;b2df
	jr nc,lb315h		;b2e2
	inc (hl)		;b2e4
	dec hl			;b2e5
	inc l			;b2e6
	dec l			;b2e7
	jr nz,lb2ech		;b2e8
	dec b			;b2ea
	ld (de),a		;b2eb
lb2ech:
	dec b			;b2ec
	inc b			;b2ed
	ld (bc),a		;b2ee
	rlca			;b2ef
	or e			;b2f0
	daa			;b2f1
	dec (hl)		;b2f2
	ld (hl),023h		;b2f3
	ld (03433h),a		;b2f5
	ex af,af'		;b2f8
	dec b			;b2f9
	ld b,003h		;b2fa
	dec b			;b2fc
lb2fdh:
	inc bc			;b2fd
	ld (bc),a		;b2fe
	rlca			;b2ff
	scf			;b300
	cpl			;b301
	jr nc,lb335h		;b302
	scf			;b304
	dec hl			;b305
	inc l			;b306
	dec l			;b307
	inc bc			;b308
	dec b			;b309
	rlca			;b30a
	jr c,lb30eh		;b30b
	inc b			;b30d
lb30eh:
	ex af,af'		;b30e
	ld (bc),a		;b30f
	or e			;b310
	ld l,d			;b311
	dec (hl)		;b312
	ld (hl),023h		;b313
lb315h:
	ld (03433h),a		;b315
	ld b,008h		;b318
	ld (bc),a		;b31a
	rlca			;b31b
	rlca			;b31c
	ld b,004h		;b31d
	ld (bc),a		;b31f
	scf			;b320
	cpl			;b321
	jr nc,lb355h		;b322
	scf			;b324
	dec hl			;b325
	inc l			;b326
	dec l			;b327
	dec b			;b328
	inc bc			;b329
	rlca			;b32a
	jr c,$+6		;b32b
	ld b,002h		;b32d
	ex af,af'		;b32f
	ld l,027h		;b330
	ld a,(02336h)		;b332
lb335h:
	add hl,sp		;b335
	inc sp			;b336
	inc (hl)		;b337
	jr nz,lb33fh		;b338
	ld (bc),a		;b33a
	ld (de),a		;b33b
	rlca			;b33c
	inc bc			;b33d
	inc b			;b33e
lb33fh:
	dec b			;b33f
	or e			;b340
	daa			;b341
	dec (hl)		;b342
	ld (hl),023h		;b343
	ld b,a			;b345
	ld c,b			;b346
	ld c,c			;b347
	inc hl			;b348
	ld b,h			;b349
	ld b,l			;b34a
	ld b,(hl)		;b34b
	rlca			;b34c
	ld (hl),d		;b34d
	ld (hl),e		;b34e
	ld l,(hl)		;b34f
	ld d,b			;b350
	ld d,c			;b351
	ld d,d			;b352
	ld d,e			;b353
	ld c,h			;b354
lb355h:
	ld a,l			;b355
	ld c,(hl)		;b356
	ld c,a			;b357
	ld c,d			;b358
	ld c,d			;b359
	ld c,d			;b35a
	ld c,e			;b35b
	ld b,(hl)		;b35c
	ld a,d			;b35d
	ld (hl),h		;b35e
	ld (hl),h		;b35f
	ld d,c			;b360
	ld e,c			;b361
	ld e,d			;b362
	ld e,e			;b363
	ld d,(hl)		;b364
	ld d,a			;b365
	jr z,$+90		;b366
	ld d,h			;b368
	or h			;b369
	ld d,l			;b36a
	ld d,(hl)		;b36b
	ld b,(hl)		;b36c
	add a,e			;b36d
	ld c,l			;b36e
	add a,h			;b36f
	ld h,c			;b370
	ld h,d			;b371
	ld h,e			;b372
	ld h,h			;b373
	ld b,b			;b374
	ld b,c			;b375
	ld e,a			;b376
	ld h,b			;b377
	ld e,h			;b378
	ld e,l			;b379
	ld d,d			;b37a
	ld e,(hl)		;b37b
	sub l			;b37c
	adc a,d			;b37d
	adc a,a			;b37e
	adc a,e			;b37f
	ld l,b			;b380
	ld l,c			;b381
	scf			;b382
	ld c,l			;b383
	ld h,(hl)		;b384
	ld a,067h		;b385
	jr nc,lb3eeh		;b387
	scf			;b389
	ld e,l			;b38a
	ld d,d			;b38b
	sub h			;b38c
	jr z,$+43		;b38d
	ld c,(hl)		;b38f
	ld bc,00503h		;b390
	rlca			;b393
	ld (bc),a		;b394
	inc bc			;b395
	inc bc			;b396
	ex af,af'		;b397
	inc bc			;b398
	ld bc,00205h		;b399
	ld (bc),a		;b39c
	ld b,002h		;b39d
	inc bc			;b39f
	ld (bc),a		;b3a0
	inc bc			;b3a1
	ld (bc),a		;b3a2
	ld b,004h		;b3a3
	inc bc			;b3a5
	ex af,af'		;b3a6
	inc bc			;b3a7
	ld bc,00508h		;b3a8
	rlca			;b3ab
	dec b			;b3ac
	ld bc,00204h		;b3ad
	inc bc			;b3b0
	ld b,002h		;b3b1
	inc b			;b3b3
	ld (bc),a		;b3b4
	rlca			;b3b5
	inc b			;b3b6
	ld bc,00204h		;b3b7
	ex af,af'		;b3ba
	inc b			;b3bb
	ld (bc),a		;b3bc
	ld b,001h		;b3bd
	ld b,002h		;b3bf
	dec b			;b3c1
	ld bc,00304h		;b3c2
	ld b,004h		;b3c5
	ld (bc),a		;b3c7
	ld bc,00502h		;b3c8
	ld b,002h		;b3cb
	inc b			;b3cd
	ld (bc),a		;b3ce
	inc bc			;b3cf
	rlca			;b3d0
	inc bc			;b3d1
	ld (bc),a		;b3d2
	rlca			;b3d3
	inc b			;b3d4
lb3d5h:
	dec b			;b3d5
	ex af,af'		;b3d6
	inc b			;b3d7
	inc b			;b3d8
	ld (bc),a		;b3d9
	inc bc			;b3da
	ld (bc),a		;b3db
	ld b,007h		;b3dc
	ld b,008h		;b3de
	dec b			;b3e0
	ld (bc),a		;b3e1
	ld b,008h		;b3e2
	ld b,008h		;b3e4
	inc b			;b3e6
	inc bc			;b3e7
	ld bc,00403h		;b3e8
	ld b,004h		;b3eb
	ld (bc),a		;b3ed
lb3eeh:
	rlca			;b3ee
	ex af,af'		;b3ef
	inc bc			;b3f0
	ld (bc),a		;b3f1
	inc b			;b3f2
	ld (hl),c		;b3f3
	ld bc,00504h		;b3f4
	ld (hl),b		;b3f7
	ld (bc),a		;b3f8
	rlca			;b3f9
	inc b			;b3fa
	djnz lb402h		;b3fb
	inc b			;b3fd
	inc bc			;b3fe
	ld (bc),a		;b3ff
	ld (hl),h		;b400
	ld a,b			;b401
lb402h:
	ld b,h			;b402
	ld a,c			;b403
	and c			;b404
	add a,d			;b405
	halt			;b406
	ld (hl),a		;b407
	ld b,002h		;b408
	ld b,075h		;b40a
	inc bc			;b40c
	ld bc,la002h		;b40d
	ld a,a			;b410
	add a,b			;b411
	add a,c			;b412
	add a,d			;b413
	dec d			;b414
	ld a,(hl)		;b415
	ld (de),a		;b416
	ld d,005h		;b417
	ld a,e			;b419
	ld a,h			;b41a
	ld a,l			;b41b
	ld b,e			;b41c
	or e			;b41d
	or h			;b41e
	and d			;b41f
	cpl			;b420
	jr nc,lb474h		;b421
	ld e,c			;b423
	dec hl			;b424
	inc l			;b425
	adc a,b			;b426
	adc a,c			;b427
	add a,l			;b428
	ld c,l			;b429
	or e			;b42a
	add a,a			;b42b
	and e			;b42c
	ld d,c			;b42d
	jr nc,lb3d5h		;b42e
	add a,l			;b430
	ld e,d			;b431
	ld e,e			;b432
	sub e			;b433
	adc a,a			;b434
	sub b			;b435
	sub c			;b436
	sub d			;b437
	or l			;b438
	adc a,h			;b439
	adc a,l			;b43a
	adc a,(hl)		;b43b
	and (hl)		;b43c
	and a			;b43d
	xor b			;b43e
	xor c			;b43f
	ld b,004h		;b440
	dec b			;b442
	ld (bc),a		;b443
	inc bc			;b444
	ld b,004h		;b445
	rlca			;b447
	inc b			;b448
	ld b,004h		;b449
	inc bc			;b44b
	inc bc			;b44c
	dec b			;b44d
	ld (bc),a		;b44e
	inc bc			;b44f
	inc b			;b450
	ld b,002h		;b451
	ld b,004h		;b453
	ex af,af'		;b455
	inc bc			;b456
	inc b			;b457
	dec b			;b458
	ld (bc),a		;b459
	dec b			;b45a
	ld (bc),a		;b45b
	dec b			;b45c
	inc b			;b45d
	inc b			;b45e
	ld b,003h		;b45f
	ld b,020h		;b461
	ld hl,00407h		;b463
	ld h,027h		;b466
	inc bc			;b468
	ex af,af'		;b469
	inc l			;b46a
	dec l			;b46b
	ld (bc),a		;b46c
	dec b			;b46d
	cp a			;b46e
	ret nz			;b46f
	ld (02423h),hl		;b470
	dec h			;b473
lb474h:
	jr z,lb49fh		;b474
	ld hl,(02e2bh)		;b476
	cpl			;b479
	jr nc,lb4adh		;b47a
	pop bc			;b47c
	jp nz,0c4c3h		;b47d
	ld (bc),a		;b480
	inc bc			;b481
	dec b			;b482
	ld (bc),a		;b483
	inc bc			;b484
	ld bc,00304h		;b485
	inc bc			;b488
	ld (bc),a		;b489
	inc bc			;b48a
	ld (bc),a		;b48b
	inc bc			;b48c
	inc b			;b48d
	ld b,004h		;b48e
	ld bc,00806h		;b490
	inc bc			;b493
	ld b,002h		;b494
	ld (bc),a		;b496
	inc b			;b497
	rlca			;b498
	ex af,af'		;b499
	ld (bc),a		;b49a
	ld b,002h		;b49b
	inc b			;b49d
	dec b			;b49e
lb49fh:
	ld b,004h		;b49f
	inc bc			;b4a1
	ld (bc),a		;b4a2
	ld b,001h		;b4a3
	dec b			;b4a5
	inc bc			;b4a6
	dec b			;b4a7
	ld b,003h		;b4a8
	ld (bc),a		;b4aa
	ld b,008h		;b4ab
lb4adh:
	ld (bc),a		;b4ad
	inc b			;b4ae
	and b			;b4af
	ld (bc),a		;b4b0
	dec b			;b4b1
	rlca			;b4b2
	inc bc			;b4b3
	ld b,003h		;b4b4
	ld b,004h		;b4b6
	inc bc			;b4b8
	inc b			;b4b9
	dec b			;b4ba
	ld b,0a1h		;b4bb
	or b			;b4bd
	or c			;b4be
	and d			;b4bf
	inc b			;b4c0
	ld b,04ch		;b4c1
	ld c,l			;b4c3
	inc bc			;b4c4
	inc b			;b4c5
	ld b,(hl)		;b4c6
	ld b,a			;b4c7
	dec b			;b4c8
	ex af,af'		;b4c9
	ld b,b			;b4ca
	ld b,c			;b4cb
	and e			;b4cc
	or d			;b4cd
	and h			;b4ce
	and l			;b4cf
	ld c,(hl)		;b4d0
	ld c,a			;b4d1
	ld d,b			;b4d2
	ld d,c			;b4d3
	ld c,b			;b4d4
	ld c,c			;b4d5
	ld c,d			;b4d6
	ld c,e			;b4d7
	ld b,d			;b4d8
	ld b,e			;b4d9
	ld b,h			;b4da
	ld b,l			;b4db
	and (hl)		;b4dc
	and a			;b4dd
	xor b			;b4de
	xor c			;b4df
	inc bc			;b4e0
	ld (bc),a		;b4e1
	dec b			;b4e2
	ld (bc),a		;b4e3
	ld (bc),a		;b4e4
	inc b			;b4e5
	ld b,007h		;b4e6
	ld bc,00503h		;b4e8
	inc bc			;b4eb
	ld l,e			;b4ec
	ld l,h			;b4ed
	ld l,l			;b4ee
	ld de,00207h		;b4ef
	ex af,af'		;b4f2
	ld b,002h		;b4f3
	ld b,003h		;b4f5
	ex af,af'		;b4f7
	dec b			;b4f8
	rlca			;b4f9
	ld (bc),a		;b4fa
	inc b			;b4fb
	ld b,003h		;b4fc
	inc b			;b4fe
	ex af,af'		;b4ff
	inc b			;b500
	ld (bc),a		;b501
	ld b,010h		;b502
	dec b			;b504
	inc bc			;b505
	dec b			;b506
	ld (hl),b		;b507
	dec b			;b508
	ld (bc),a		;b509
	dec b			;b50a
	ld (hl),c		;b50b
	dec b			;b50c
	ld (hl),d		;b50d
	ld (hl),e		;b50e
	ld (hl),h		;b50f
	dec b			;b510
	ld b,003h		;b511
	ld (hl),l		;b513
	ld b,e			;b514
	ld (07776h),a		;b515
	ld (hl),h		;b518
	ld a,b			;b519
	ld (hl),h		;b51a
	ld a,c			;b51b
	ld l,07ah		;b51c
	ld (hl),h		;b51e
	ld (hl),h		;b51f
	inc b			;b520
	ld a,e			;b521
	ld a,h			;b522
	ld a,l			;b523
	dec d			;b524
	ld a,(hl)		;b525
	dec b			;b526
	rlca			;b527
	ld a,a			;b528
	add a,b			;b529
	add a,c			;b52a
	inc a			;b52b
	ld l,083h		;b52c
	ld c,l			;b52e
	add a,h			;b52f
	add a,l			;b530
	add a,(hl)		;b531
	or b			;b532
	add a,a			;b533
	dec hl			;b534
	inc l			;b535
	adc a,b			;b536
	adc a,c			;b537
	cpl			;b538
	jr nc,lb58ch		;b539
	ld e,c			;b53b
	add hl,hl		;b53c
	adc a,d			;b53d
	ld c,(hl)		;b53e
	adc a,e			;b53f
	or d			;b540
	adc a,h			;b541
	adc a,l			;b542
	adc a,(hl)		;b543
	ld c,(hl)		;b544
	sub b			;b545
	sub c			;b546
	sub d			;b547
	add a,l			;b548
	ld e,d			;b549
	ld e,e			;b54a
	sub e			;b54b
	sub h			;b54c
	jr z,lb578h		;b54d
	ld c,(hl)		;b54f
	rla			;b550
	inc d			;b551
	ld hl,02322h		;b552
	inc h			;b555
	dec h			;b556
	ld h,0b0h		;b557
	ld l,d			;b559
	jr z,lb585h		;b55a
	nop			;b55c
	nop			;b55d
	nop			;b55e
	nop			;b55f
	jr nz,$+4		;b560
	dec b			;b562
	ld b,023h		;b563
	dec hl			;b565
	inc l			;b566
	dec l			;b567
	ld l,02fh		;b568
	jr nc,lb59dh		;b56a
	nop			;b56c
	nop			;b56d
	nop			;b56e
	nop			;b56f
	ld (bc),a		;b570
	inc b			;b571
	rlca			;b572
	ex af,af'		;b573
	inc hl			;b574
	add a,d			;b575
	inc sp			;b576
	inc (hl)		;b577
lb578h:
	or b			;b578
	ld l,d			;b579
	dec (hl)		;b57a
	ld (hl),000h		;b57b
	nop			;b57d
	nop			;b57e
	nop			;b57f
	dec b			;b580
	inc bc			;b581
	ld b,038h		;b582
	scf			;b584
lb585h:
	dec hl			;b585
	inc l			;b586
	dec l			;b587
	scf			;b588
	cpl			;b589
	jr nc,lb5bdh		;b58a
lb58ch:
	nop			;b58c
	nop			;b58d
	nop			;b58e
	nop			;b58f
	ld bc,00302h		;b590
	jr c,$+57		;b593
	dec hl			;b595
	inc l			;b596
	dec l			;b597
	scf			;b598
	cpl			;b599
	jr nc,lb5cdh		;b59a
	nop			;b59c
lb59dh:
	nop			;b59d
	nop			;b59e
	nop			;b59f
	jr nz,lb5a7h		;b5a0
	ld (bc),a		;b5a2
	inc bc			;b5a3
	inc hl			;b5a4
	add hl,sp		;b5a5
	inc sp			;b5a6
lb5a7h:
	inc (hl)		;b5a7
	ld l,06ah		;b5a8
	dec (hl)		;b5aa
	ld (hl),000h		;b5ab
	nop			;b5ad
	nop			;b5ae
	nop			;b5af
	ld (bc),a		;b5b0
	ld bc,00306h		;b5b1
	dec sp			;b5b4
	inc a			;b5b5
	dec a			;b5b6
	ld a,074h		;b5b7
	ld b,b			;b5b9
	ld b,c			;b5ba
	ld b,d			;b5bb
	nop			;b5bc
lb5bdh:
	nop			;b5bd
	nop			;b5be
	nop			;b5bf
	ld b,e			;b5c0
	ld b,h			;b5c1
	ld b,l			;b5c2
	ld b,(hl)		;b5c3
	inc hl			;b5c4
	ld b,a			;b5c5
	ld c,b			;b5c6
	ld c,c			;b5c7
	or b			;b5c8
	ld l,d			;b5c9
	dec (hl)		;b5ca
	ld (hl),000h		;b5cb
lb5cdh:
	nop			;b5cd
	nop			;b5ce
	nop			;b5cf
	ld c,d			;b5d0
	ld c,d			;b5d1
	ld c,d			;b5d2
	ld c,e			;b5d3
	ld c,h			;b5d4
	ld c,l			;b5d5
	ld c,(hl)		;b5d6
	ld c,a			;b5d7
	ld d,b			;b5d8
	ld d,c			;b5d9
	ld d,d			;b5da
	ld d,e			;b5db
	nop			;b5dc
	nop			;b5dd
	nop			;b5de
	nop			;b5df
	ld d,h			;b5e0
	or c			;b5e1
	ld d,l			;b5e2
	ld d,(hl)		;b5e3
	ld d,(hl)		;b5e4
	ld d,a			;b5e5
	jr z,lb640h		;b5e6
	ld d,c			;b5e8
	ld e,c			;b5e9
	ld e,d			;b5ea
	ld e,e			;b5eb
	nop			;b5ec
	nop			;b5ed
	nop			;b5ee
	nop			;b5ef
	ld e,h			;b5f0
	ld e,l			;b5f1
	ld d,d			;b5f2
	ld e,(hl)		;b5f3
	ld b,b			;b5f4
	ld b,c			;b5f5
	ld e,a			;b5f6
	ld h,b			;b5f7
	ld h,c			;b5f8
	ld h,d			;b5f9
	ld h,e			;b5fa
	ld h,h			;b5fb
	nop			;b5fc
	nop			;b5fd
	nop			;b5fe
	nop			;b5ff
	ld h,l			;b600
	scf			;b601
	ld e,l			;b602
	ld d,d			;b603
	ld h,(hl)		;b604
	ld a,067h		;b605
	jr nc,lb671h		;b607
	ld l,c			;b609
	scf			;b60a
	ld sp,00000h		;b60b
	nop			;b60e
	nop			;b60f
	ld (hl),h		;b610
	ld b,b			;b611
	ld b,c			;b612
	ld b,d			;b613
	dec sp			;b614
	inc a			;b615
	dec a			;b616
	ld a,001h		;b617
	inc b			;b619
	ld b,004h		;b61a
	ld (bc),a		;b61c
	inc bc			;b61d
	inc bc			;b61e
	ld (bc),a		;b61f
	inc b			;b620
	dec b			;b621
	inc bc			;b622
	rlca			;b623
	inc hl			;b624
	add a,d			;b625
	inc sp			;b626
	inc (hl)		;b627
	or b			;b628
	ld l,d			;b629
	dec (hl)		;b62a
	ld (hl),000h		;b62b
	nop			;b62d
	nop			;b62e
	nop			;b62f
	rlca			;b630
	inc bc			;b631
	ld (bc),a		;b632
	rlca			;b633
	ld (bc),a		;b634
	inc b			;b635
	ld bc,00308h		;b636
	ld (bc),a		;b639
	ld b,002h		;b63a
	ld (bc),a		;b63c
	inc b			;b63d
	inc bc			;b63e
	inc b			;b63f
lb640h:
	rst 38h			;b640
	rst 38h			;b641
	rst 38h			;b642
	rst 38h			;b643
	rst 38h			;b644
	rst 38h			;b645
	rst 38h			;b646
	rst 38h			;b647
	rst 38h			;b648
	rst 38h			;b649
	rst 38h			;b64a
	rst 38h			;b64b
	rst 38h			;b64c
	rst 38h			;b64d
	rst 38h			;b64e
	rst 38h			;b64f
	rst 38h			;b650
	rst 38h			;b651
	rst 38h			;b652
	rst 38h			;b653
	rst 38h			;b654
	rst 38h			;b655
	rst 38h			;b656
	rst 38h			;b657
	rst 38h			;b658
	rst 38h			;b659
	rst 38h			;b65a
	rst 38h			;b65b
	rst 38h			;b65c
	rst 38h			;b65d
	rst 38h			;b65e
	rst 38h			;b65f
	rst 38h			;b660
	rst 38h			;b661
	rst 38h			;b662
	rst 38h			;b663
	rst 38h			;b664
	rst 38h			;b665
	rst 38h			;b666
	rst 38h			;b667
	rst 38h			;b668
	rst 38h			;b669
	rst 38h			;b66a
	rst 38h			;b66b
	rst 38h			;b66c
	rst 38h			;b66d
	rst 38h			;b66e
	rst 38h			;b66f
	rst 38h			;b670
lb671h:
	rst 38h			;b671
	rst 38h			;b672
	rst 38h			;b673
	rst 38h			;b674
	rst 38h			;b675
	rst 38h			;b676
	rst 38h			;b677
	rst 38h			;b678
	rst 38h			;b679
	rst 38h			;b67a
	rst 38h			;b67b
	rst 38h			;b67c
	rst 38h			;b67d
	rst 38h			;b67e
	rst 38h			;b67f
	rst 38h			;b680
	rst 38h			;b681
	rst 38h			;b682
	rst 38h			;b683
	rst 38h			;b684
	rst 38h			;b685
	rst 38h			;b686
	rst 38h			;b687
	rst 38h			;b688
	rst 38h			;b689
	rst 38h			;b68a
	rst 38h			;b68b
	rst 38h			;b68c
	rst 38h			;b68d
	rst 38h			;b68e
	rst 38h			;b68f
	rst 38h			;b690
	rst 38h			;b691
	rst 38h			;b692
	rst 38h			;b693
	rst 38h			;b694
	rst 38h			;b695
	rst 38h			;b696
	rst 38h			;b697
	rst 38h			;b698
	rst 38h			;b699
	rst 38h			;b69a
	rst 38h			;b69b
	rst 38h			;b69c
	rst 38h			;b69d
	rst 38h			;b69e
	rst 38h			;b69f
	rst 38h			;b6a0
	rst 38h			;b6a1
	rst 38h			;b6a2
	rst 38h			;b6a3
	rst 38h			;b6a4
	rst 38h			;b6a5
	rst 38h			;b6a6
	rst 38h			;b6a7
	rst 38h			;b6a8
	rst 38h			;b6a9
	rst 38h			;b6aa
	rst 38h			;b6ab
	rst 38h			;b6ac
	rst 38h			;b6ad
	rst 38h			;b6ae
	rst 38h			;b6af
	rst 38h			;b6b0
	rst 38h			;b6b1
	rst 38h			;b6b2
	rst 38h			;b6b3
	rst 38h			;b6b4
	rst 38h			;b6b5
	rst 38h			;b6b6
	rst 38h			;b6b7
	rst 38h			;b6b8
	rst 38h			;b6b9
	rst 38h			;b6ba
	rst 38h			;b6bb
	rst 38h			;b6bc
	rst 38h			;b6bd
	rst 38h			;b6be
	rst 38h			;b6bf
	rst 38h			;b6c0
	rst 38h			;b6c1
	rst 38h			;b6c2
	rst 38h			;b6c3
	rst 38h			;b6c4
	rst 38h			;b6c5
	rst 38h			;b6c6
	rst 38h			;b6c7
	rst 38h			;b6c8
	rst 38h			;b6c9
	rst 38h			;b6ca
	rst 38h			;b6cb
	rst 38h			;b6cc
	rst 38h			;b6cd
	rst 38h			;b6ce
	rst 38h			;b6cf
	rst 38h			;b6d0
	rst 38h			;b6d1
	rst 38h			;b6d2
	rst 38h			;b6d3
	rst 38h			;b6d4
	rst 38h			;b6d5
	rst 38h			;b6d6
	rst 38h			;b6d7
	rst 38h			;b6d8
	rst 38h			;b6d9
	rst 38h			;b6da
	rst 38h			;b6db
	rst 38h			;b6dc
	rst 38h			;b6dd
	rst 38h			;b6de
	rst 38h			;b6df
	rst 38h			;b6e0
	rst 38h			;b6e1
	rst 38h			;b6e2
	rst 38h			;b6e3
	rst 38h			;b6e4
	rst 38h			;b6e5
	rst 38h			;b6e6
	rst 38h			;b6e7
	rst 38h			;b6e8
	rst 38h			;b6e9
	rst 38h			;b6ea
	rst 38h			;b6eb
	rst 38h			;b6ec
	rst 38h			;b6ed
	rst 38h			;b6ee
	rst 38h			;b6ef
	rst 38h			;b6f0
	rst 38h			;b6f1
	rst 38h			;b6f2
	rst 38h			;b6f3
	rst 38h			;b6f4
	rst 38h			;b6f5
	rst 38h			;b6f6
	rst 38h			;b6f7
	rst 38h			;b6f8
	rst 38h			;b6f9
	rst 38h			;b6fa
	rst 38h			;b6fb
	rst 38h			;b6fc
	rst 38h			;b6fd
	rst 38h			;b6fe
	rst 38h			;b6ff
	rst 38h			;b700
	rst 38h			;b701
	rst 38h			;b702
	rst 38h			;b703
	rst 38h			;b704
	rst 38h			;b705
	rst 38h			;b706
	rst 38h			;b707
	rst 38h			;b708
	rst 38h			;b709
	rst 38h			;b70a
	rst 38h			;b70b
	rst 38h			;b70c
	rst 38h			;b70d
	rst 38h			;b70e
	rst 38h			;b70f
	rst 38h			;b710
	rst 38h			;b711
	rst 38h			;b712
	rst 38h			;b713
	rst 38h			;b714
	rst 38h			;b715
	rst 38h			;b716
	rst 38h			;b717
	rst 38h			;b718
	rst 38h			;b719
	rst 38h			;b71a
	rst 38h			;b71b
	rst 38h			;b71c
	rst 38h			;b71d
	rst 38h			;b71e
	rst 38h			;b71f
	rst 38h			;b720
	rst 38h			;b721
	rst 38h			;b722
	rst 38h			;b723
	rst 38h			;b724
	rst 38h			;b725
	rst 38h			;b726
	rst 38h			;b727
	rst 38h			;b728
	rst 38h			;b729
	rst 38h			;b72a
	rst 38h			;b72b
	rst 38h			;b72c
	rst 38h			;b72d
	rst 38h			;b72e
	rst 38h			;b72f
	rst 38h			;b730
	rst 38h			;b731
	rst 38h			;b732
	rst 38h			;b733
	rst 38h			;b734
	rst 38h			;b735
	rst 38h			;b736
	rst 38h			;b737
	rst 38h			;b738
	rst 38h			;b739
	rst 38h			;b73a
	rst 38h			;b73b
	rst 38h			;b73c
	rst 38h			;b73d
	rst 38h			;b73e
	rst 38h			;b73f
	rst 38h			;b740
	rst 38h			;b741
	rst 38h			;b742
	rst 38h			;b743
	rst 38h			;b744
	rst 38h			;b745
	rst 38h			;b746
	rst 38h			;b747
	rst 38h			;b748
	rst 38h			;b749
	rst 38h			;b74a
	rst 38h			;b74b
	rst 38h			;b74c
	rst 38h			;b74d
	rst 38h			;b74e
	rst 38h			;b74f
	rst 38h			;b750
	rst 38h			;b751
	rst 38h			;b752
	rst 38h			;b753
	rst 38h			;b754
	rst 38h			;b755
	rst 38h			;b756
	rst 38h			;b757
	rst 38h			;b758
	rst 38h			;b759
	rst 38h			;b75a
	rst 38h			;b75b
	rst 38h			;b75c
	rst 38h			;b75d
	rst 38h			;b75e
	rst 38h			;b75f
	rst 38h			;b760
	rst 38h			;b761
	rst 38h			;b762
	rst 38h			;b763
	rst 38h			;b764
	rst 38h			;b765
	rst 38h			;b766
	rst 38h			;b767
	rst 38h			;b768
	rst 38h			;b769
	rst 38h			;b76a
	rst 38h			;b76b
	rst 38h			;b76c
	rst 38h			;b76d
	rst 38h			;b76e
	rst 38h			;b76f
	rst 38h			;b770
	rst 38h			;b771
	rst 38h			;b772
	rst 38h			;b773
	rst 38h			;b774
	rst 38h			;b775
	rst 38h			;b776
	rst 38h			;b777
	rst 38h			;b778
	rst 38h			;b779
	rst 38h			;b77a
	rst 38h			;b77b
	rst 38h			;b77c
	rst 38h			;b77d
	rst 38h			;b77e
	rst 38h			;b77f
	rst 38h			;b780
	rst 38h			;b781
	rst 38h			;b782
	rst 38h			;b783
	rst 38h			;b784
	rst 38h			;b785
	rst 38h			;b786
	rst 38h			;b787
	rst 38h			;b788
	rst 38h			;b789
	rst 38h			;b78a
	rst 38h			;b78b
	rst 38h			;b78c
	rst 38h			;b78d
	rst 38h			;b78e
	rst 38h			;b78f
	rst 38h			;b790
	rst 38h			;b791
	rst 38h			;b792
	rst 38h			;b793
	rst 38h			;b794
	rst 38h			;b795
	rst 38h			;b796
	rst 38h			;b797
	rst 38h			;b798
	rst 38h			;b799
	rst 38h			;b79a
	rst 38h			;b79b
	rst 38h			;b79c
	rst 38h			;b79d
	rst 38h			;b79e
	rst 38h			;b79f
	rst 38h			;b7a0
	rst 38h			;b7a1
	rst 38h			;b7a2
	rst 38h			;b7a3
	rst 38h			;b7a4
	rst 38h			;b7a5
	rst 38h			;b7a6
	rst 38h			;b7a7
	rst 38h			;b7a8
	rst 38h			;b7a9
	rst 38h			;b7aa
	rst 38h			;b7ab
	rst 38h			;b7ac
	rst 38h			;b7ad
	rst 38h			;b7ae
	rst 38h			;b7af
	rst 38h			;b7b0
	rst 38h			;b7b1
	rst 38h			;b7b2
	rst 38h			;b7b3
	rst 38h			;b7b4
	rst 38h			;b7b5
	rst 38h			;b7b6
	rst 38h			;b7b7
	rst 38h			;b7b8
	rst 38h			;b7b9
	rst 38h			;b7ba
	rst 38h			;b7bb
	rst 38h			;b7bc
	rst 38h			;b7bd
	rst 38h			;b7be
	rst 38h			;b7bf
	rst 38h			;b7c0
	rst 38h			;b7c1
	rst 38h			;b7c2
	rst 38h			;b7c3
	rst 38h			;b7c4
	rst 38h			;b7c5
	rst 38h			;b7c6
	rst 38h			;b7c7
	rst 38h			;b7c8
	rst 38h			;b7c9
	rst 38h			;b7ca
	rst 38h			;b7cb
	rst 38h			;b7cc
	rst 38h			;b7cd
	rst 38h			;b7ce
	rst 38h			;b7cf
	rst 38h			;b7d0
	rst 38h			;b7d1
	rst 38h			;b7d2
	rst 38h			;b7d3
	rst 38h			;b7d4
	rst 38h			;b7d5
	rst 38h			;b7d6
	rst 38h			;b7d7
	rst 38h			;b7d8
	rst 38h			;b7d9
	rst 38h			;b7da
	rst 38h			;b7db
	rst 38h			;b7dc
	rst 38h			;b7dd
	rst 38h			;b7de
	rst 38h			;b7df
	rst 38h			;b7e0
	rst 38h			;b7e1
	rst 38h			;b7e2
	rst 38h			;b7e3
	rst 38h			;b7e4
	rst 38h			;b7e5
	rst 38h			;b7e6
	rst 38h			;b7e7
	rst 38h			;b7e8
	rst 38h			;b7e9
	rst 38h			;b7ea
	rst 38h			;b7eb
	rst 38h			;b7ec
	rst 38h			;b7ed
	rst 38h			;b7ee
	rst 38h			;b7ef
	rst 38h			;b7f0
	rst 38h			;b7f1
	rst 38h			;b7f2
	rst 38h			;b7f3
	rst 38h			;b7f4
	rst 38h			;b7f5
	rst 38h			;b7f6
	rst 38h			;b7f7
	rst 38h			;b7f8
	rst 38h			;b7f9
	rst 38h			;b7fa
	rst 38h			;b7fb
	rst 38h			;b7fc
	rst 38h			;b7fd
	rst 38h			;b7fe
	rst 38h			;b7ff
	rst 38h			;b800
	rst 38h			;b801
	rst 38h			;b802
	rst 38h			;b803
lb804h:
	rst 38h			;b804
	rst 38h			;b805
	rst 38h			;b806
	rst 38h			;b807
	rst 38h			;b808
	rst 38h			;b809
	rst 38h			;b80a
	rst 38h			;b80b
	rst 38h			;b80c
	rst 38h			;b80d
	rst 38h			;b80e
	rst 38h			;b80f
	rst 38h			;b810
	rst 38h			;b811
	rst 38h			;b812
	rst 38h			;b813
	rst 38h			;b814
	rst 38h			;b815
	rst 38h			;b816
	rst 38h			;b817
	rst 38h			;b818
	rst 38h			;b819
	rst 38h			;b81a
	rst 38h			;b81b
	rst 38h			;b81c
	rst 38h			;b81d
	rst 38h			;b81e
	rst 38h			;b81f
	rst 38h			;b820
	rst 38h			;b821
	rst 38h			;b822
	rst 38h			;b823
	rst 38h			;b824
	rst 38h			;b825
	rst 38h			;b826
	rst 38h			;b827
	rst 38h			;b828
	rst 38h			;b829
	rst 38h			;b82a
	rst 38h			;b82b
	rst 38h			;b82c
	rst 38h			;b82d
	rst 38h			;b82e
	rst 38h			;b82f
	rst 38h			;b830
	rst 38h			;b831
	rst 38h			;b832
	rst 38h			;b833
	rst 38h			;b834
	rst 38h			;b835
	rst 38h			;b836
	rst 38h			;b837
	rst 38h			;b838
	rst 38h			;b839
	rst 38h			;b83a
lb83bh:
	rst 38h			;b83b
	rst 38h			;b83c
	rst 38h			;b83d
	rst 38h			;b83e
	rst 38h			;b83f
	rst 38h			;b840
	rst 38h			;b841
	rst 38h			;b842
	rst 38h			;b843
	rst 38h			;b844
	rst 38h			;b845
	rst 38h			;b846
	rst 38h			;b847
	rst 38h			;b848
	rst 38h			;b849
	rst 38h			;b84a
	rst 38h			;b84b
	rst 38h			;b84c
	rst 38h			;b84d
	rst 38h			;b84e
	rst 38h			;b84f
	rst 38h			;b850
	rst 38h			;b851
	rst 38h			;b852
	rst 38h			;b853
	rst 38h			;b854
	rst 38h			;b855
	rst 38h			;b856
	rst 38h			;b857
	rst 38h			;b858
	rst 38h			;b859
	rst 38h			;b85a
	rst 38h			;b85b
	rst 38h			;b85c
	rst 38h			;b85d
	rst 38h			;b85e
	rst 38h			;b85f
	rst 38h			;b860
	rst 38h			;b861
	rst 38h			;b862
	rst 38h			;b863
	rst 38h			;b864
	rst 38h			;b865
	rst 38h			;b866
	rst 38h			;b867
	rst 38h			;b868
	rst 38h			;b869
	rst 38h			;b86a
	rst 38h			;b86b
	rst 38h			;b86c
	rst 38h			;b86d
	rst 38h			;b86e
	rst 38h			;b86f
	rst 38h			;b870
	rst 38h			;b871
	rst 38h			;b872
	rst 38h			;b873
	rst 38h			;b874
	rst 38h			;b875
	rst 38h			;b876
	rst 38h			;b877
	rst 38h			;b878
	rst 38h			;b879
	rst 38h			;b87a
	rst 38h			;b87b
	rst 38h			;b87c
	rst 38h			;b87d
	rst 38h			;b87e
	rst 38h			;b87f
	rst 38h			;b880
	rst 38h			;b881
	rst 38h			;b882
	rst 38h			;b883
	rst 38h			;b884
	rst 38h			;b885
	rst 38h			;b886
	rst 38h			;b887
	rst 38h			;b888
	rst 38h			;b889
	rst 38h			;b88a
	rst 38h			;b88b
	rst 38h			;b88c
	rst 38h			;b88d
	rst 38h			;b88e
	rst 38h			;b88f
	rst 38h			;b890
	rst 38h			;b891
	rst 38h			;b892
	rst 38h			;b893
	rst 38h			;b894
	rst 38h			;b895
	rst 38h			;b896
	rst 38h			;b897
	rst 38h			;b898
	rst 38h			;b899
	rst 38h			;b89a
	rst 38h			;b89b
	rst 38h			;b89c
	rst 38h			;b89d
	rst 38h			;b89e
	rst 38h			;b89f
	rst 38h			;b8a0
	rst 38h			;b8a1
	rst 38h			;b8a2
	rst 38h			;b8a3
	rst 38h			;b8a4
	rst 38h			;b8a5
	rst 38h			;b8a6
	rst 38h			;b8a7
	rst 38h			;b8a8
	rst 38h			;b8a9
	rst 38h			;b8aa
	rst 38h			;b8ab
	rst 38h			;b8ac
	rst 38h			;b8ad
	rst 38h			;b8ae
	rst 38h			;b8af
lb8b0h:
	rst 38h			;b8b0
	rst 38h			;b8b1
	rst 38h			;b8b2
	rst 38h			;b8b3
	rst 38h			;b8b4
	rst 38h			;b8b5
	rst 38h			;b8b6
	rst 38h			;b8b7
	rst 38h			;b8b8
	rst 38h			;b8b9
	rst 38h			;b8ba
	rst 38h			;b8bb
	rst 38h			;b8bc
	rst 38h			;b8bd
	rst 38h			;b8be
	rst 38h			;b8bf
	rst 38h			;b8c0
	rst 38h			;b8c1
	rst 38h			;b8c2
	rst 38h			;b8c3
	rst 38h			;b8c4
	rst 38h			;b8c5
	rst 38h			;b8c6
	rst 38h			;b8c7
	rst 38h			;b8c8
	rst 38h			;b8c9
	rst 38h			;b8ca
	rst 38h			;b8cb
	rst 38h			;b8cc
	rst 38h			;b8cd
	rst 38h			;b8ce
	rst 38h			;b8cf
	rst 38h			;b8d0
	rst 38h			;b8d1
	rst 38h			;b8d2
	rst 38h			;b8d3
	rst 38h			;b8d4
	rst 38h			;b8d5
	rst 38h			;b8d6
	rst 38h			;b8d7
	rst 38h			;b8d8
	rst 38h			;b8d9
	rst 38h			;b8da
	rst 38h			;b8db
	rst 38h			;b8dc
	rst 38h			;b8dd
	rst 38h			;b8de
	rst 38h			;b8df
	rst 38h			;b8e0
	rst 38h			;b8e1
	rst 38h			;b8e2
	rst 38h			;b8e3
	rst 38h			;b8e4
	rst 38h			;b8e5
	rst 38h			;b8e6
	rst 38h			;b8e7
	rst 38h			;b8e8
	rst 38h			;b8e9
	rst 38h			;b8ea
	rst 38h			;b8eb
	rst 38h			;b8ec
	rst 38h			;b8ed
	rst 38h			;b8ee
	rst 38h			;b8ef
	rst 38h			;b8f0
	rst 38h			;b8f1
	rst 38h			;b8f2
	rst 38h			;b8f3
	rst 38h			;b8f4
	rst 38h			;b8f5
	rst 38h			;b8f6
	rst 38h			;b8f7
	rst 38h			;b8f8
	rst 38h			;b8f9
	rst 38h			;b8fa
	rst 38h			;b8fb
	rst 38h			;b8fc
	rst 38h			;b8fd
	rst 38h			;b8fe
	rst 38h			;b8ff
	rst 38h			;b900
	rst 38h			;b901
	rst 38h			;b902
	rst 38h			;b903
	rst 38h			;b904
	rst 38h			;b905
	rst 38h			;b906
	rst 38h			;b907
	rst 38h			;b908
	rst 38h			;b909
	rst 38h			;b90a
	rst 38h			;b90b
	rst 38h			;b90c
	rst 38h			;b90d
	rst 38h			;b90e
	rst 38h			;b90f
	rst 38h			;b910
	rst 38h			;b911
	rst 38h			;b912
	rst 38h			;b913
	rst 38h			;b914
	rst 38h			;b915
	rst 38h			;b916
	rst 38h			;b917
	rst 38h			;b918
	rst 38h			;b919
	rst 38h			;b91a
	rst 38h			;b91b
	rst 38h			;b91c
	rst 38h			;b91d
	rst 38h			;b91e
	rst 38h			;b91f
	rst 38h			;b920
	rst 38h			;b921
	rst 38h			;b922
	rst 38h			;b923
	rst 38h			;b924
	rst 38h			;b925
	rst 38h			;b926
	rst 38h			;b927
	rst 38h			;b928
	rst 38h			;b929
	rst 38h			;b92a
	rst 38h			;b92b
	rst 38h			;b92c
	rst 38h			;b92d
	rst 38h			;b92e
	rst 38h			;b92f
	rst 38h			;b930
	rst 38h			;b931
	rst 38h			;b932
	rst 38h			;b933
	rst 38h			;b934
	rst 38h			;b935
	rst 38h			;b936
	rst 38h			;b937
	rst 38h			;b938
	rst 38h			;b939
	rst 38h			;b93a
	rst 38h			;b93b
	rst 38h			;b93c
	rst 38h			;b93d
	rst 38h			;b93e
	rst 38h			;b93f
	rst 38h			;b940
	rst 38h			;b941
	rst 38h			;b942
	rst 38h			;b943
	rst 38h			;b944
	rst 38h			;b945
	rst 38h			;b946
	rst 38h			;b947
	rst 38h			;b948
	rst 38h			;b949
	rst 38h			;b94a
	rst 38h			;b94b
	rst 38h			;b94c
	rst 38h			;b94d
	rst 38h			;b94e
	rst 38h			;b94f
	rst 38h			;b950
	rst 38h			;b951
	rst 38h			;b952
	rst 38h			;b953
	rst 38h			;b954
	rst 38h			;b955
	rst 38h			;b956
	rst 38h			;b957
	rst 38h			;b958
	rst 38h			;b959
	rst 38h			;b95a
	rst 38h			;b95b
	rst 38h			;b95c
	rst 38h			;b95d
	rst 38h			;b95e
	rst 38h			;b95f
	rst 38h			;b960
	rst 38h			;b961
	rst 38h			;b962
	rst 38h			;b963
	rst 38h			;b964
	rst 38h			;b965
	rst 38h			;b966
	rst 38h			;b967
	rst 38h			;b968
	rst 38h			;b969
	rst 38h			;b96a
	rst 38h			;b96b
	rst 38h			;b96c
	rst 38h			;b96d
	rst 38h			;b96e
	rst 38h			;b96f
	rst 38h			;b970
	rst 38h			;b971
	rst 38h			;b972
	rst 38h			;b973
	rst 38h			;b974
	rst 38h			;b975
	rst 38h			;b976
	rst 38h			;b977
	rst 38h			;b978
	rst 38h			;b979
	rst 38h			;b97a
	rst 38h			;b97b
	rst 38h			;b97c
	rst 38h			;b97d
	rst 38h			;b97e
	rst 38h			;b97f
	rst 38h			;b980
	rst 38h			;b981
	rst 38h			;b982
	rst 38h			;b983
	rst 38h			;b984
	rst 38h			;b985
	rst 38h			;b986
	rst 38h			;b987
	rst 38h			;b988
	rst 38h			;b989
	rst 38h			;b98a
	rst 38h			;b98b
	rst 38h			;b98c
	rst 38h			;b98d
	rst 38h			;b98e
	rst 38h			;b98f
	rst 38h			;b990
	rst 38h			;b991
	rst 38h			;b992
	rst 38h			;b993
	rst 38h			;b994
	rst 38h			;b995
	rst 38h			;b996
	rst 38h			;b997
	rst 38h			;b998
	rst 38h			;b999
	rst 38h			;b99a
	rst 38h			;b99b
	rst 38h			;b99c
	rst 38h			;b99d
	rst 38h			;b99e
	rst 38h			;b99f
	rst 38h			;b9a0
	rst 38h			;b9a1
	rst 38h			;b9a2
	rst 38h			;b9a3
	rst 38h			;b9a4
	rst 38h			;b9a5
	rst 38h			;b9a6
	rst 38h			;b9a7
	rst 38h			;b9a8
	rst 38h			;b9a9
	rst 38h			;b9aa
	rst 38h			;b9ab
	rst 38h			;b9ac
	rst 38h			;b9ad
	rst 38h			;b9ae
	rst 38h			;b9af
	rst 38h			;b9b0
	rst 38h			;b9b1
	rst 38h			;b9b2
	rst 38h			;b9b3
	rst 38h			;b9b4
	rst 38h			;b9b5
	rst 38h			;b9b6
	rst 38h			;b9b7
lb9b8h:
	rst 38h			;b9b8
	rst 38h			;b9b9
	rst 38h			;b9ba
	rst 38h			;b9bb
	rst 38h			;b9bc
	rst 38h			;b9bd
	rst 38h			;b9be
	rst 38h			;b9bf
	rst 38h			;b9c0
	rst 38h			;b9c1
	rst 38h			;b9c2
	rst 38h			;b9c3
	rst 38h			;b9c4
	rst 38h			;b9c5
	rst 38h			;b9c6
	rst 38h			;b9c7
	rst 38h			;b9c8
	rst 38h			;b9c9
	rst 38h			;b9ca
	rst 38h			;b9cb
	rst 38h			;b9cc
	rst 38h			;b9cd
	rst 38h			;b9ce
	rst 38h			;b9cf
	rst 38h			;b9d0
	rst 38h			;b9d1
	rst 38h			;b9d2
	rst 38h			;b9d3
	rst 38h			;b9d4
	rst 38h			;b9d5
	rst 38h			;b9d6
	rst 38h			;b9d7
	rst 38h			;b9d8
	rst 38h			;b9d9
	rst 38h			;b9da
	rst 38h			;b9db
	rst 38h			;b9dc
	rst 38h			;b9dd
	rst 38h			;b9de
	rst 38h			;b9df
	rst 38h			;b9e0
	rst 38h			;b9e1
	rst 38h			;b9e2
	rst 38h			;b9e3
	rst 38h			;b9e4
	rst 38h			;b9e5
	rst 38h			;b9e6
	rst 38h			;b9e7
	rst 38h			;b9e8
	rst 38h			;b9e9
	rst 38h			;b9ea
	rst 38h			;b9eb
	rst 38h			;b9ec
	rst 38h			;b9ed
	rst 38h			;b9ee
	rst 38h			;b9ef
	rst 38h			;b9f0
	rst 38h			;b9f1
	rst 38h			;b9f2
	rst 38h			;b9f3
	rst 38h			;b9f4
	rst 38h			;b9f5
	rst 38h			;b9f6
	rst 38h			;b9f7
	rst 38h			;b9f8
	rst 38h			;b9f9
	rst 38h			;b9fa
	rst 38h			;b9fb
	rst 38h			;b9fc
	rst 38h			;b9fd
	rst 38h			;b9fe
	rst 38h			;b9ff
	rst 38h			;ba00
	rst 38h			;ba01
	rst 38h			;ba02
	rst 38h			;ba03
	rst 38h			;ba04
	rst 38h			;ba05
	rst 38h			;ba06
	rst 38h			;ba07
	rst 38h			;ba08
	rst 38h			;ba09
	rst 38h			;ba0a
	rst 38h			;ba0b
	rst 38h			;ba0c
	rst 38h			;ba0d
	rst 38h			;ba0e
	rst 38h			;ba0f
	rst 38h			;ba10
	rst 38h			;ba11
	rst 38h			;ba12
	rst 38h			;ba13
	rst 38h			;ba14
	rst 38h			;ba15
	rst 38h			;ba16
	rst 38h			;ba17
	rst 38h			;ba18
	rst 38h			;ba19
	rst 38h			;ba1a
	rst 38h			;ba1b
	rst 38h			;ba1c
	rst 38h			;ba1d
	rst 38h			;ba1e
	rst 38h			;ba1f
	rst 38h			;ba20
	rst 38h			;ba21
	rst 38h			;ba22
	rst 38h			;ba23
	rst 38h			;ba24
	rst 38h			;ba25
	rst 38h			;ba26
	rst 38h			;ba27
	rst 38h			;ba28
	rst 38h			;ba29
	rst 38h			;ba2a
	rst 38h			;ba2b
	rst 38h			;ba2c
	rst 38h			;ba2d
	rst 38h			;ba2e
	rst 38h			;ba2f
	rst 38h			;ba30
	rst 38h			;ba31
	rst 38h			;ba32
	rst 38h			;ba33
	rst 38h			;ba34
	rst 38h			;ba35
	rst 38h			;ba36
	rst 38h			;ba37
	rst 38h			;ba38
	rst 38h			;ba39
	rst 38h			;ba3a
	rst 38h			;ba3b
	rst 38h			;ba3c
	rst 38h			;ba3d
	rst 38h			;ba3e
	rst 38h			;ba3f
	rst 38h			;ba40
	rst 38h			;ba41
	rst 38h			;ba42
	rst 38h			;ba43
	rst 38h			;ba44
	rst 38h			;ba45
	rst 38h			;ba46
	rst 38h			;ba47
	rst 38h			;ba48
	rst 38h			;ba49
	rst 38h			;ba4a
	rst 38h			;ba4b
	rst 38h			;ba4c
	rst 38h			;ba4d
	rst 38h			;ba4e
	rst 38h			;ba4f
	rst 38h			;ba50
	rst 38h			;ba51
	rst 38h			;ba52
	rst 38h			;ba53
	rst 38h			;ba54
	rst 38h			;ba55
	rst 38h			;ba56
	rst 38h			;ba57
	rst 38h			;ba58
	rst 38h			;ba59
	rst 38h			;ba5a
	rst 38h			;ba5b
	rst 38h			;ba5c
	rst 38h			;ba5d
	rst 38h			;ba5e
	rst 38h			;ba5f
	rst 38h			;ba60
	rst 38h			;ba61
	rst 38h			;ba62
	rst 38h			;ba63
	rst 38h			;ba64
	rst 38h			;ba65
	rst 38h			;ba66
	rst 38h			;ba67
	rst 38h			;ba68
	rst 38h			;ba69
	rst 38h			;ba6a
	rst 38h			;ba6b
	rst 38h			;ba6c
	rst 38h			;ba6d
	rst 38h			;ba6e
	rst 38h			;ba6f
	rst 38h			;ba70
	rst 38h			;ba71
	rst 38h			;ba72
	rst 38h			;ba73
	rst 38h			;ba74
	rst 38h			;ba75
	rst 38h			;ba76
	rst 38h			;ba77
	rst 38h			;ba78
	rst 38h			;ba79
	rst 38h			;ba7a
	rst 38h			;ba7b
	rst 38h			;ba7c
	rst 38h			;ba7d
	rst 38h			;ba7e
	rst 38h			;ba7f
	rst 38h			;ba80
	rst 38h			;ba81
	rst 38h			;ba82
	rst 38h			;ba83
	rst 38h			;ba84
	rst 38h			;ba85
	rst 38h			;ba86
	rst 38h			;ba87
	rst 38h			;ba88
	rst 38h			;ba89
	rst 38h			;ba8a
	rst 38h			;ba8b
	rst 38h			;ba8c
	rst 38h			;ba8d
	rst 38h			;ba8e
	rst 38h			;ba8f
	rst 38h			;ba90
	rst 38h			;ba91
	rst 38h			;ba92
	rst 38h			;ba93
	rst 38h			;ba94
	rst 38h			;ba95
	rst 38h			;ba96
	rst 38h			;ba97
	rst 38h			;ba98
	rst 38h			;ba99
	rst 38h			;ba9a
	rst 38h			;ba9b
	rst 38h			;ba9c
	rst 38h			;ba9d
	rst 38h			;ba9e
	rst 38h			;ba9f
	rst 38h			;baa0
	rst 38h			;baa1
	rst 38h			;baa2
	rst 38h			;baa3
	rst 38h			;baa4
	rst 38h			;baa5
	rst 38h			;baa6
	rst 38h			;baa7
	rst 38h			;baa8
	rst 38h			;baa9
	rst 38h			;baaa
	rst 38h			;baab
	rst 38h			;baac
	rst 38h			;baad
	rst 38h			;baae
	rst 38h			;baaf
	rst 38h			;bab0
	rst 38h			;bab1
	rst 38h			;bab2
	rst 38h			;bab3
	rst 38h			;bab4
	rst 38h			;bab5
	rst 38h			;bab6
	rst 38h			;bab7
	rst 38h			;bab8
	rst 38h			;bab9
	rst 38h			;baba
	rst 38h			;babb
	rst 38h			;babc
	rst 38h			;babd
	rst 38h			;babe
	rst 38h			;babf
	rst 38h			;bac0
	rst 38h			;bac1
	rst 38h			;bac2
	rst 38h			;bac3
	rst 38h			;bac4
	rst 38h			;bac5
	rst 38h			;bac6
	rst 38h			;bac7
	rst 38h			;bac8
	rst 38h			;bac9
	rst 38h			;baca
	rst 38h			;bacb
	rst 38h			;bacc
	rst 38h			;bacd
	rst 38h			;bace
	rst 38h			;bacf
	rst 38h			;bad0
	rst 38h			;bad1
	rst 38h			;bad2
	rst 38h			;bad3
	rst 38h			;bad4
	rst 38h			;bad5
	rst 38h			;bad6
	rst 38h			;bad7
	rst 38h			;bad8
	rst 38h			;bad9
	rst 38h			;bada
	rst 38h			;badb
	rst 38h			;badc
	rst 38h			;badd
	rst 38h			;bade
	rst 38h			;badf
	rst 38h			;bae0
	rst 38h			;bae1
	rst 38h			;bae2
	rst 38h			;bae3
	rst 38h			;bae4
	rst 38h			;bae5
	rst 38h			;bae6
	rst 38h			;bae7
	rst 38h			;bae8
	rst 38h			;bae9
	rst 38h			;baea
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

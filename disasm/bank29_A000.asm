; z80dasm 1.2.0
; command line: z80dasm -a -l -g 0xA000 -o /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/disasm/bank29_A000.asm /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/banks/bank29.bin

	org 0a000h

	nop			;a000
	ld de,011c0h		;a001
	add a,b			;a004
	ld de,01120h		;a005
	nop			;a008
	djnz $-30		;a009
	rst 38h			;a00b
	cp 002h			;a00c
	ret m			;a00e
	ld hl,(001e2h)		;a00f
	add a,c			;a012
	ld b,b			;a013
	add a,c			;a014
	ret nc			;a015
	add a,d			;a016
	jr nc,$-6		;a017
	ld d,d			;a019
	and b			;a01a
	and b			;a01b
	and b			;a01c
	ret po			;a01d
	and c			;a01e
	ld b,b			;a01f
	sub c			;a020
	add a,b			;a021
	sub d			;a022
	nop			;a023
	sub d			;a024
	add a,b			;a025
	ret m			;a026
	dec e			;a027
	ld sp,hl		;a028
	ld b,b			;a029
	add a,b			;a02a
	rst 30h			;a02b
	ld b,0f9h		;a02c
	ld b,b			;a02e
	add a,b			;a02f
	rst 30h			;a030
	ex af,af'		;a031
	ld sp,hl		;a032
	ld b,b			;a033
	add a,b			;a034
	rst 30h			;a035
	ld a,(bc)		;a036
	ld sp,hl		;a037
	ld b,b			;a038
	add a,b			;a039
	rst 30h			;a03a
	inc c			;a03b
	ld sp,hl		;a03c
	ld b,b			;a03d
	add a,b			;a03e
la03fh:
	rst 38h			;a03f
	jp nz,0c100h		;a040
	ret nz			;a043
	pop bc			;a044
	add a,b			;a045
	pop bc			;a046
	jr nz,$-61		;a047
	nop			;a049
	ret nz			;a04a
	ret po			;a04b
	ret nz			;a04c
	and b			;a04d
	ret nz			;a04e
la04fh:
	add a,b			;a04f
	jp m,002feh		;a050
	ret po			;a053
	inc bc			;a054
	jp po,06101h		;a055
	ld h,b			;a058
	inc sp			;a059
	nop			;a05a
	ld h,c			;a05b
	nop			;a05c
la05dh:
	ld h,c			;a05d
	ld h,b			;a05e
la05fh:
	ld h,c			;a05f
	sub b			;a060
	ld h,c			;a061
	ret nc			;a062
	ld h,c			;a063
	ret p			;a064
	ld h,d			;a065
	ld b,b			;a066
	ld h,d			;a067
	add a,b			;a068
	ld h,d			;a069
	ret nc			;a06a
	ld h,e			;a06b
	nop			;a06c
	ld h,e			;a06d
	ld b,b			;a06e
	ld l,d			;a06f
	nop			;a070
	ld l,b			;a071
	nop			;a072
	ld h,(hl)		;a073
	nop			;a074
	ld h,h			;a075
	nop			;a076
	ld h,d			;a077
	nop			;a078
	ld h,c			;a079
	nop			;a07a
	ld h,b			;a07b
	ret nz			;a07c
	djnz la03fh		;a07d
	ld c,d			;a07f
	nop			;a080
	ld c,b			;a081
	nop			;a082
	ld b,(hl)		;a083
	nop			;a084
	ld b,h			;a085
	nop			;a086
	ld b,d			;a087
	nop			;a088
	ld b,c			;a089
	nop			;a08a
	ld b,b			;a08b
	ret nz			;a08c
	djnz la04fh		;a08d
	ld hl,(02800h)		;a08f
	nop			;a092
	ld h,000h		;a093
	inc h			;a095
	nop			;a096
	ld (02100h),hl		;a097
	nop			;a09a
	jr nz,la05dh		;a09b
	djnz la05fh		;a09d
	ld a,(de)		;a09f
	nop			;a0a0
	jr la0a3h		;a0a1
la0a3h:
	ld d,000h		;a0a3
	inc d			;a0a5
	nop			;a0a6
	ld (de),a		;a0a7
	nop			;a0a8
	ld de,01000h		;a0a9
	ret nz			;a0ac
	nop			;a0ad
	ret nz			;a0ae
	ld a,(bc)		;a0af
	nop			;a0b0
	ex af,af'		;a0b1
	nop			;a0b2
	ld b,000h		;a0b3
	inc b			;a0b5
	nop			;a0b6
	rst 38h			;a0b7
	cp 002h			;a0b8
	ret m			;a0ba
	dec bc			;a0bb
	jp po,lb101h		;a0bc
	ld h,b			;a0bf
	ld b,e			;a0c0
	nop			;a0c1
	ret m			;a0c2
	ld d,d			;a0c3
	or c			;a0c4
	nop			;a0c5
	or c			;a0c6
	ld h,b			;a0c7
	or c			;a0c8
	sub b			;a0c9
	or c			;a0ca
	ret nc			;a0cb
	or c			;a0cc
	ret p			;a0cd
	or d			;a0ce
	ld b,b			;a0cf
	or d			;a0d0
	add a,b			;a0d1
	or d			;a0d2
	ret nc			;a0d3
	or e			;a0d4
	nop			;a0d5
	or e			;a0d6
	ld b,b			;a0d7
	ret m			;a0d8
	ld d,d			;a0d9
	ld sp,hl		;a0da
	call m,0f780h		;a0db
	inc bc			;a0de
	ld sp,hl		;a0df
	call m,0f780h		;a0e0
	ld b,0f9h		;a0e3
la0e5h:
	call m,0f780h		;a0e5
	ex af,af'		;a0e8
	ld sp,hl		;a0e9
	call m,0df80h		;a0ea
la0edh:
	ld a,(bc)		;a0ed
	nop			;a0ee
	ex af,af'		;a0ef
	nop			;a0f0
	ld b,000h		;a0f1
	inc b			;a0f3
	nop			;a0f4
	ld (bc),a		;a0f5
	nop			;a0f6
	ld bc,00000h		;a0f7
	ret nz			;a0fa
	rst 38h			;a0fb
	xor d			;a0fc
	nop			;a0fd
	xor b			;a0fe
	nop			;a0ff
	and (hl)		;a100
	nop			;a101
	and h			;a102
	nop			;a103
	and d			;a104
	nop			;a105
	and c			;a106
	nop			;a107
	and b			;a108
	ret nz			;a109
	nop			;a10a
	ret nz			;a10b
	jp m,002feh		;a10c
	ret po			;a10f
	ld bc,001e2h		;a110
	add a,b			;a113
	ret po			;a114
	add a,c			;a115
	jr nc,$-125		;a116
	sub b			;a118
	add a,d			;a119
	nop			;a11a
	add a,h			;a11b
	nop			;a11c
	add a,(hl)		;a11d
	nop			;a11e
	add a,l			;a11f
la120h:
	nop			;a120
	add a,h			;a121
	nop			;a122
	add a,d			;a123
	nop			;a124
	add a,c			;a125
la126h:
	sub b			;a126
	add a,c			;a127
	jr nc,$-126		;a128
	ret po			;a12a
	add a,b			;a12b
	and b			;a12c
	ld b,c			;a12d
la12eh:
	sub b			;a12e
	ld b,c			;a12f
	jr nc,$+66		;a130
	ret po			;a132
la133h:
	ld b,b			;a133
	and b			;a134
	ld sp,03190h		;a135
	jr nc,la16ah		;a138
	ret po			;a13a
	jr nc,$-94		;a13b
	ld hl,02190h		;a13d
	jr nc,$+34		;a140
	ret po			;a142
	jr nz,la0e5h		;a143
	ld de,01190h		;a145
	jr nc,$+18		;a148
	ret po			;a14a
	djnz la0edh		;a14b
	ld bc,00190h		;a14d
	jr nc,la152h		;a150
la152h:
	ret po			;a152
	rst 38h			;a153
	cp 002h			;a154
	ret m			;a156
	ld l,a			;a157
	jp po,0c001h		;a158
la15bh:
	ret po			;a15b
	pop bc			;a15c
	jr nc,la120h		;a15d
	sub b			;a15f
	jp nz,0c400h		;a160
	nop			;a163
	ret m			;a164
	ld c,d			;a165
	add a,000h		;a166
	push bc			;a168
	nop			;a169
la16ah:
	call nz,0c200h		;a16a
	nop			;a16d
	pop bc			;a16e
	sub b			;a16f
	pop bc			;a170
la171h:
	jr nc,la133h		;a171
	ret po			;a173
	ret nz			;a174
	and b			;a175
	ld d,c			;a176
	sub b			;a177
	ld d,c			;a178
	jr nc,$+82		;a179
	ret po			;a17b
	ld d,b			;a17c
	and b			;a17d
	ld sp,03190h		;a17e
	jr nc,$+50		;a181
	ret po			;a183
	jr nc,la126h		;a184
	ld hl,02190h		;a186
	jr nc,$+34		;a189
	ret po			;a18b
	jr nz,la12eh		;a18c
	ld de,01190h		;a18e
	jr nc,la1a3h		;a191
	ret po			;a193
	djnz $-94		;a194
	ld bc,00190h		;a196
	jr nc,la19bh		;a199
la19bh:
	ret po			;a19b
	nop			;a19c
	and b			;a19d
	rst 38h			;a19e
	cp 002h			;a19f
	ret po			;a1a1
	ld (bc),a		;a1a2
la1a3h:
	jp po,09001h		;a1a3
	ld h,b			;a1a6
	and c			;a1a7
	add a,b			;a1a8
	and d			;a1a9
	djnz $-91		;a1aa
	ld (hl),b		;a1ac
	and h			;a1ad
	ret nz			;a1ae
	and l			;a1af
	nop			;a1b0
	and (hl)		;a1b1
	jr nc,la15bh		;a1b2
	ld d,b			;a1b4
	xor b			;a1b5
	ld h,b			;a1b6
	sub b			;a1b7
	ld l,b			;a1b8
	rst 30h			;a1b9
	ld (bc),a		;a1ba
	ld sp,hl		;a1bb
	ld de,0f782h		;a1bc
	inc b			;a1bf
	ld sp,hl		;a1c0
	ld de,0f782h		;a1c1
	ld b,0f9h		;a1c4
	ld de,0df82h		;a1c6
la1c9h:
	ld sp,032a0h		;a1c9
	ld d,b			;a1cc
	ld (033a0h),a		;a1cd
	ld d,b			;a1d0
	inc (hl)		;a1d1
	nop			;a1d2
	inc (hl)		;a1d3
	or b			;a1d4
	dec (hl)		;a1d5
	ld d,b			;a1d6
	ld (hl),000h		;a1d7
	ld (hl),080h		;a1d9
	ld (hl),0f0h		;a1db
la1ddh:
	scf			;a1dd
	ld (hl),b		;a1de
	jr c,la171h		;a1df
	rst 38h			;a1e1
la1e2h:
	cp 002h			;a1e2
	ret m			;a1e4
	jr z,la1c9h		;a1e5
la1e7h:
	ld bc,06080h		;a1e7
	pop bc			;a1ea
	add a,b			;a1eb
la1ech:
	jp nz,0c310h		;a1ec
	ld (hl),b		;a1ef
	call nz,0c5c0h		;a1f0
	nop			;a1f3
	add a,030h		;a1f4
	rst 0			;a1f6
	ld d,b			;a1f7
	ret z			;a1f8
	ld h,b			;a1f9
	add a,b			;a1fa
	ld l,b			;a1fb
la1fch:
	ld sp,hl		;a1fc
	ld de,0f882h		;a1fd
	ld h,0f7h		;a200
	ld (bc),a		;a202
	ld sp,hl		;a203
	ld de,0f782h		;a204
	ld b,0f9h		;a207
	ld de,0f782h		;a209
	add hl,bc		;a20c
	ld sp,hl		;a20d
	ld de,0ff82h		;a20e
	pop bc			;a211
	and b			;a212
	jp nz,0c250h		;a213
	ret po			;a216
	jp 0c450h		;a217
	nop			;a21a
	call nz,0c5b0h		;a21b
	ld d,b			;a21e
	add a,000h		;a21f
	add a,080h		;a221
	add a,0f0h		;a223
	rst 0			;a225
	ld (hl),b		;a226
	ret z			;a227
	sub b			;a228
	ret			;a229
	and b			;a22a
	jp z,0fad0h		;a22b
	cp 002h			;a22e
	jp po,lb1ffh+2		;a230
	jr nz,la1e7h		;a233
	ld (hl),b		;a235
	and c			;a236
	jr nc,la1ddh		;a237
	jr nz,la1ddh		;a239
	jr nc,la1e2h		;a23b
	nop			;a23d
	and c			;a23e
	nop			;a23f
	and c			;a240
	add a,b			;a241
	and e			;a242
	nop			;a243
	and d			;a244
	add a,b			;a245
	and d			;a246
	nop			;a247
	and c			;a248
	jr nc,la1ech		;a249
	add a,b			;a24b
	and d			;a24c
	nop			;a24d
	and e			;a24e
	add a,b			;a24f
	and e			;a250
	nop			;a251
	and e			;a252
	ret nz			;a253
	and h			;a254
	jr nz,la1fch		;a255
	nop			;a257
	and c			;a258
	ld b,b			;a259
	and d			;a25a
	nop			;a25b
	and d			;a25c
	add a,b			;a25d
	and e			;a25e
	nop			;a25f
	and c			;a260
	ret nz			;a261
	and d			;a262
	jr nc,$-91		;a263
	jr nz,$-90		;a265
	nop			;a267
	and l			;a268
	nop			;a269
	add a,c			;a26a
	ret nz			;a26b
	add a,d			;a26c
	jr nz,$-124		;a26d
	ret nz			;a26f
	add a,e			;a270
	nop			;a271
	add a,e			;a272
	ld h,b			;a273
	add a,h			;a274
	nop			;a275
	add a,h			;a276
	add a,b			;a277
	add a,l			;a278
	nop			;a279
la27ah:
	add a,(hl)		;a27a
	nop			;a27b
	jp po,07202h		;a27c
la27fh:
	nop			;a27f
	ld (hl),d		;a280
	add a,b			;a281
	ld (hl),e		;a282
la283h:
	nop			;a283
	sbc a,074h		;a284
	ld (hl),l		;a286
	halt			;a287
	ld (hl),a		;a288
	ld a,b			;a289
	ld h,h			;a28a
	ld h,l			;a28b
	ld h,(hl)		;a28c
	ld h,a			;a28d
	ld l,b			;a28e
	ld b,h			;a28f
	ld b,l			;a290
	ld b,(hl)		;a291
	ld b,a			;a292
	ld c,b			;a293
	inc h			;a294
	dec h			;a295
	ld h,027h		;a296
	jr z,$+43		;a298
	or 0ffh			;a29a
	cp 002h			;a29c
	ret m			;a29e
	jr z,la283h		;a29f
	ld bc,030c1h		;a2a1
	call nz,0c220h		;a2a4
	jr nc,$-57		;a2a7
	nop			;a2a9
	ret m			;a2aa
	inc hl			;a2ab
	pop bc			;a2ac
	nop			;a2ad
	pop bc			;a2ae
	add a,b			;a2af
	jp 0c200h		;a2b0
	add a,b			;a2b3
	jp nz,0c100h		;a2b4
	jr nc,la27ah		;a2b7
	add a,b			;a2b9
	jp nz,0c300h		;a2ba
	add a,b			;a2bd
	jp 0c300h		;a2be
	ret nz			;a2c1
	call nz,0c520h		;a2c2
	nop			;a2c5
	pop bc			;a2c6
	ld b,b			;a2c7
	jp nz,0c200h		;a2c8
	add a,b			;a2cb
	jp 0c100h		;a2cc
	ret nz			;a2cf
	jp nz,0c330h		;a2d0
	jr nz,$-58		;a2d3
	nop			;a2d5
	push bc			;a2d6
	nop			;a2d7
	and c			;a2d8
	ret nz			;a2d9
	and d			;a2da
	jr nz,la27fh		;a2db
	ret nz			;a2dd
	and e			;a2de
	nop			;a2df
	and e			;a2e0
	ld h,b			;a2e1
	and h			;a2e2
	nop			;a2e3
	and h			;a2e4
	add a,b			;a2e5
	and l			;a2e6
	nop			;a2e7
	and (hl)		;a2e8
	nop			;a2e9
	jp po,09202h		;a2ea
	nop			;a2ed
	sub d			;a2ee
	add a,b			;a2ef
	sub e			;a2f0
	nop			;a2f1
	sbc a,094h		;a2f2
	sub l			;a2f4
sub_a2f5h:
	sub (hl)		;a2f5
	sub a			;a2f6
	sbc a,b			;a2f7
	ld h,h			;a2f8
	ld h,l			;a2f9
	ld h,(hl)		;a2fa
	ld h,a			;a2fb
la2fch:
	ld l,b			;a2fc
	ld b,h			;a2fd
	ld b,l			;a2fe
	ld b,(hl)		;a2ff
	ld b,a			;a300
la301h:
	ld c,b			;a301
	inc b			;a302
	dec b			;a303
	ld b,007h		;a304
	ex af,af'		;a306
	add hl,bc		;a307
	ld a,(bc)		;a308
	or 0ffh			;a309
	cp 002h			;a30b
	jp po,07001h		;a30d
	ld hl,001e3h		;a310
	call po,07005h		;a313
	jr nz,la2fch		;a316
	nop			;a318
	ld (hl),b		;a319
	ld hl,02070h		;a31a
	ld h,b			;a31d
	ld hl,02060h		;a31e
	ld d,b			;a321
	ld (02050h),hl		;a322
	jr nc,la348h		;a325
	jr nc,la349h		;a327
	push af			;a329
	djnz $+35		;a32a
	djnz la34eh		;a32c
	ei			;a32e
	ex af,af'		;a32f
	jp po,0f501h		;a330
	nop			;a333
	jr nz,la336h		;a334
la336h:
	ld (00cfbh),hl		;a336
	rst 38h			;a339
	cp 002h			;a33a
	ret m			;a33c
	ld hl,(001e2h)		;a33d
	add a,b			;a340
	ld hl,054f8h		;a341
	ld (hl),b		;a344
	ld b,b			;a345
	ld b,b			;a346
	ld b,d			;a347
la348h:
	ld b,b			;a348
la349h:
	ld b,b			;a349
	ld b,b			;a34a
	ld b,e			;a34b
	jr nc,$+66		;a34c
la34eh:
	ld d,b			;a34e
	ld b,d			;a34f
	ld d,b			;a350
	ld b,b			;a351
	jr nc,la396h		;a352
	jr nc,la396h		;a354
	ret m			;a356
	dec b			;a357
	push af			;a358
	nop			;a359
	ld hl,02000h		;a35a
	ei			;a35d
	ex af,af'		;a35e
	ret m			;a35f
	add hl,de		;a360
	push af			;a361
	nop			;a362
	ld hl,02000h		;a363
	ei			;a366
	inc c			;a367
	rst 38h			;a368
	cp 002h			;a369
	ret po			;a36b
	ld bc,001e2h		;a36c
	ld h,b			;a36f
	inc (hl)		;a370
	ld d,b			;a371
	ld e,000h		;a372
	ld e,020h		;a374
	ld a,(de)		;a376
	ld d,b			;a377
	ld (hl),050h		;a378
	dec (hl)		;a37a
	ld b,b			;a37b
	inc (hl)		;a37c
	ld b,b			;a37d
	inc sp			;a37e
	jr nc,$+54		;a37f
	jr nz,la3b6h		;a381
	djnz la3b9h		;a383
	nop			;a385
	inc sp			;a386
	jr nz,la3bfh		;a387
	jr nz,la3c0h		;a389
	djnz la3c1h		;a38b
	djnz $+53		;a38d
	nop			;a38f
	inc (hl)		;a390
	nop			;a391
	inc sp			;a392
	rst 38h			;a393
	cp 002h			;a394
la396h:
	jp po,0f801h		;a396
	dec h			;a399
	ld (hl),b		;a39a
	ld l,b			;a39b
	ld d,b			;a39c
	inc a			;a39d
	nop			;a39e
	inc a			;a39f
	jr nz,la3d7h		;a3a0
	ld d,b			;a3a2
	ld l,h			;a3a3
	ld b,b			;a3a4
	ld l,d			;a3a5
	ld b,b			;a3a6
	ld l,b			;a3a7
	jr nc,$+105		;a3a8
	jr nc,la414h		;a3aa
	jr nz,$+105		;a3ac
	djnz la418h		;a3ae
	nop			;a3b0
	ld h,a			;a3b1
	jr nz,la420h		;a3b2
	jr nz,la420h		;a3b4
la3b6h:
	djnz la420h		;a3b6
	nop			;a3b8
la3b9h:
	ld h,a			;a3b9
	nop			;a3ba
	ld l,b			;a3bb
	nop			;a3bc
	ld h,a			;a3bd
	nop			;a3be
la3bfh:
	ld l,b			;a3bf
la3c0h:
	rst 38h			;a3c0
la3c1h:
	cp 002h			;a3c1
	ret po			;a3c3
	ld bc,001e2h		;a3c4
	sub c			;a3c7
	jr nz,$-109		;a3c8
	add a,b			;a3ca
	sub e			;a3cb
	nop			;a3cc
	sub e			;a3cd
	add a,b			;a3ce
	sub h			;a3cf
	add a,b			;a3d0
	sub l			;a3d1
	add a,b			;a3d2
	sub d			;a3d3
	add a,b			;a3d4
	sub e			;a3d5
	add a,b			;a3d6
la3d7h:
	sub h			;a3d7
	add a,b			;a3d8
	sub l			;a3d9
	nop			;a3da
	sub l			;a3db
	ld h,b			;a3dc
	sub l			;a3dd
	jp c,0ca95h		;a3de
	add a,l			;a3e1
	jp c,0ca85h		;a3e2
	ld (hl),l		;a3e5
	jp c,0ca75h		;a3e6
	ld h,l			;a3e9
	jp c,023f9h		;a3ea
	add a,h			;a3ed
	rst 38h			;a3ee
	cp 002h			;a3ef
	ret m			;a3f1
	inc d			;a3f2
	jp po,0c101h		;a3f3
	jr nz,la3b9h		;a3f6
	add a,b			;a3f8
	ret m			;a3f9
	ld h,h			;a3fa
	jp 0c300h		;a3fb
	add a,b			;a3fe
	call nz,0c580h		;a3ff
	add a,b			;a402
	jp nz,0c380h		;a403
	add a,b			;a406
	call nz,0f880h		;a407
	ld c,d			;a40a
	push bc			;a40b
	nop			;a40c
	push bc			;a40d
	ld h,b			;a40e
	push bc			;a40f
	jp c,0cac5h		;a410
	or l			;a413
la414h:
	jp c,0caa5h		;a414
	sub l			;a417
la418h:
	jp c,0ca85h		;a418
	ld (hl),l		;a41b
	jp c,023f9h		;a41c
	add a,h			;a41f
la420h:
	ret po			;a420
	ld bc,065ffh		;a421
	jp z,014f8h		;a424
	ld d,c			;a427
	jr nz,la47bh		;a428
	add a,b			;a42a
	ret m			;a42b
	ld h,h			;a42c
	ld d,e			;a42d
	nop			;a42e
	ld d,e			;a42f
	add a,b			;a430
	ld d,h			;a431
	add a,b			;a432
	ld d,l			;a433
	add a,b			;a434
	ld d,d			;a435
	add a,b			;a436
	ld d,e			;a437
	add a,b			;a438
	ld d,h			;a439
	add a,b			;a43a
	ret m			;a43b
	ld c,d			;a43c
	ld b,l			;a43d
	nop			;a43e
	ld b,l			;a43f
	ld h,b			;a440
	ld b,l			;a441
	jp c,0ca45h		;a442
	dec (hl)		;a445
	jp c,0ca25h		;a446
	dec d			;a449
	jp c,0ca05h		;a44a
	dec b			;a44d
	jp c,0ca05h		;a44e
	jp m,002feh		;a451
	ret m			;a454
	add hl,de		;a455
	jp po,08601h		;a456
	djnz $-121		;a459
	ld h,h			;a45b
	add a,h			;a45c
	push bc			;a45d
	ld (hl),h		;a45e
	nop			;a45f
	jp po,06402h		;a460
	push bc			;a463
	ld h,h			;a464
	nop			;a465
	ld d,h			;a466
	push bc			;a467
	ld d,h			;a468
	jr nc,$+70		;a469
	push bc			;a46b
	ld b,h			;a46c
	jr nc,$+54		;a46d
	push bc			;a46f
	inc (hl)		;a470
	jr nc,la497h		;a471
	push bc			;a473
	inc h			;a474
	jr nc,la48bh		;a475
	push bc			;a477
	inc d			;a478
	jr nc,la47fh		;a479
la47bh:
	push bc			;a47b
	inc b			;a47c
	jr nc,la483h		;a47d
la47fh:
	push bc			;a47f
	inc b			;a480
	jr nc,la487h		;a481
la483h:
	push bc			;a483
	inc b			;a484
	jr nc,la48bh		;a485
la487h:
	push bc			;a487
	rst 38h			;a488
	cp 002h			;a489
la48bh:
	ex (sp),hl		;a48b
	ld bc,01ee4h		;a48c
	and c			;a48f
	ld b,b			;a490
	and d			;a491
	nop			;a492
	call po,07415h		;a493
	add a,b			;a496
la497h:
	pop hl			;a497
	ld bc,00ae4h		;a498
	dec b			;a49b
	call po,0040ch		;a49c
	call po,00614h		;a49f
	call po,0071ch		;a4a2
	call po,0070bh		;a4a5
	call po,0060ch		;a4a8
	call po,0050dh		;a4ab
	call po,0040fh		;a4ae
	call po,00311h		;a4b1
	call po,00213h		;a4b4
	call po,00115h		;a4b7
	call po,00117h		;a4ba
	call po,0030ah		;a4bd
	call po,0020ch		;a4c0
la4c3h:
	call po,00414h		;a4c3
	call po,0051ch		;a4c6
	call po,0050bh		;a4c9
	call po,0040ch		;a4cc
	call po,0030dh		;a4cf
	call po,0020fh		;a4d2
	call po,00111h		;a4d5
	call po,00113h		;a4d8
	call po,00115h		;a4db
	call po,00117h		;a4de
	call po,0010ah		;a4e1
	call po,0010ch		;a4e4
	call po,00214h		;a4e7
	call po,0031ch		;a4ea
	call po,0030bh		;a4ed
	call po,0020ch		;a4f0
	call po,0020dh		;a4f3
	call po,0010fh		;a4f6
	call po,00111h		;a4f9
	call po,00113h		;a4fc
	call po,00015h		;a4ff
	call po,00017h		;a502
	ret po			;a505
	dec bc			;a506
	rst 38h			;a507
	cp 002h			;a508
	jp po,0f801h		;a50a
	ld h,h			;a50d
	pop bc			;a50e
	ld b,b			;a50f
	push bc			;a510
	nop			;a511
	or a			;a512
	nop			;a513
	ret m			;a514
	dec h			;a515
	and l			;a516
	nop			;a517
	and e			;a518
	nop			;a519
	ret m			;a51a
	inc d			;a51b
	jp 0c380h		;a51c
	ret nc			;a51f
	call nz,0c430h		;a520
	add a,b			;a523
	call nz,0c5d0h		;a524
	jr nc,$-56		;a527
	nop			;a529
	and (hl)		;a52a
	add a,b			;a52b
	add a,a			;a52c
	nop			;a52d
	ld h,a			;a52e
	add a,b			;a52f
	ret m			;a530
	dec h			;a531
	ld b,l			;a532
	nop			;a533
	ld b,e			;a534
	nop			;a535
	ret m			;a536
	inc d			;a537
	add a,e			;a538
	add a,b			;a539
	add a,e			;a53a
	ret nc			;a53b
	add a,h			;a53c
	jr nc,la4c3h		;a53d
	add a,b			;a53f
	add a,h			;a540
	ret nc			;a541
	add a,l			;a542
	jr nc,$-120		;a543
	nop			;a545
	add a,(hl)		;a546
	add a,b			;a547
	ld h,a			;a548
	nop			;a549
	ld b,a			;a54a
	add a,b			;a54b
	ret m			;a54c
	dec h			;a54d
	ld b,l			;a54e
	nop			;a54f
	ld b,e			;a550
	nop			;a551
	ret m			;a552
	inc d			;a553
	ld b,e			;a554
	add a,b			;a555
	ld b,e			;a556
	ret nc			;a557
	ld b,h			;a558
	jr nc,$+70		;a559
	add a,b			;a55b
	ld b,h			;a55c
	ret nc			;a55d
	ld b,l			;a55e
	jr nc,$+72		;a55f
	nop			;a561
	ld h,080h		;a562
	rla			;a564
	nop			;a565
	rlca			;a566
	add a,b			;a567
	ret m			;a568
	dec h			;a569
	dec b			;a56a
	nop			;a56b
	inc bc			;a56c
	nop			;a56d
	ret m			;a56e
	inc d			;a56f
	inc bc			;a570
	add a,b			;a571
	inc bc			;a572
	ret nc			;a573
	inc b			;a574
	jr nc,la57ah		;a575
	add a,b			;a577
	inc b			;a578
	ret nc			;a579
la57ah:
	dec b			;a57a
	jr nc,la583h		;a57b
	nop			;a57d
	ld b,080h		;a57e
	rlca			;a580
	nop			;a581
	rst 38h			;a582
la583h:
	cp 002h			;a583
	jp po,la601h		;a585
	nop			;a588
	and e			;a589
	ld b,b			;a58a
	and l			;a58b
	add a,b			;a58c
	pop hl			;a58d
	ld bc,019e4h		;a58e
	add hl,bc		;a591
	call po,0091ah		;a592
	call po,0091bh		;a595
	call po,0091ch		;a598
	call po,0091bh		;a59b
	call po,0091dh		;a59e
	call po,0091eh		;a5a1
	ex (sp),hl		;a5a4
	rlca			;a5a5
	call po,0901fh		;a5a6
	jr c,$-10		;a5a9
	scf			;a5ab
	ld (hl),035h		;a5ac
	inc (hl)		;a5ae
la5afh:
	inc sp			;a5af
la5b0h:
	ld (03031h),a		;a5b0
	cpl			;a5b3
	ld l,02dh		;a5b4
	inc l			;a5b6
	dec hl			;a5b7
	ld hl,(02829h)		;a5b8
	daa			;a5bb
	ld h,0f6h		;a5bc
	ex (sp),hl		;a5be
	ld a,(bc)		;a5bf
	sub b			;a5c0
	dec h			;a5c1
	sub b			;a5c2
	inc h			;a5c3
la5c4h:
	sub b			;a5c4
	inc hl			;a5c5
	sub b			;a5c6
	ld (02190h),hl		;a5c7
	sub b			;a5ca
	jr nz,la5b0h		;a5cb
	dec bc			;a5cd
	sub b			;a5ce
	rra			;a5cf
	sub b			;a5d0
	ld e,090h		;a5d1
	dec e			;a5d3
	add a,b			;a5d4
	inc e			;a5d5
	ld (hl),b		;a5d6
	dec de			;a5d7
	ld h,b			;a5d8
	ld a,(de)		;a5d9
	ex (sp),hl		;a5da
	ld de,01950h		;a5db
	ld b,b			;a5de
	jr la5c4h		;a5df
	inc de			;a5e1
	jr nz,la5fbh		;a5e2
	rst 38h			;a5e4
	cp 002h			;a5e5
	jp po,0f801h		;a5e7
	jr z,la5afh		;a5ea
	nop			;a5ec
	or e			;a5ed
	add a,b			;a5ee
	or h			;a5ef
	nop			;a5f0
	or l			;a5f1
	nop			;a5f2
	and (hl)		;a5f3
	nop			;a5f4
	and a			;a5f5
	nop			;a5f6
	xor b			;a5f7
	nop			;a5f8
	xor c			;a5f9
	nop			;a5fa
la5fbh:
	jp po,0aa02h		;a5fb
	nop			;a5fe
	xor e			;a5ff
	nop			;a600
la601h:
	xor h			;a601
	nop			;a602
	xor l			;a603
	nop			;a604
	xor (hl)		;a605
	nop			;a606
	ret m			;a607
	ld (bc),a		;a608
	jp po,02007h		;a609
	ld e,e			;a60c
	jr nc,la669h		;a60d
	ld b,b			;a60f
	ld e,c			;a610
	call p,05758h		;a611
	ld d,(hl)		;a614
	ld d,l			;a615
	ld d,h			;a616
	ld d,e			;a617
	ld d,d			;a618
	ld d,c			;a619
	ld d,b			;a61a
	ld c,a			;a61b
	ld c,(hl)		;a61c
	ld c,l			;a61d
	ld c,h			;a61e
	ld c,e			;a61f
	ld c,d			;a620
	ld c,c			;a621
	ld c,b			;a622
	ld b,a			;a623
	ld b,(hl)		;a624
	or 0e2h			;a625
	ld a,(bc)		;a627
	ld b,b			;a628
	ld b,l			;a629
	ld b,b			;a62a
	ld b,h			;a62b
	ld b,b			;a62c
	ld b,e			;a62d
	ld b,b			;a62e
	ld b,d			;a62f
	ld b,b			;a630
	ld b,c			;a631
	ld b,b			;a632
	ld b,b			;a633
	jp po,0300bh		;a634
	ccf			;a637
	jr nz,la678h		;a638
	djnz la679h		;a63a
	ret m			;a63c
	ld a,(de)		;a63d
	jp po,0100eh		;a63e
	inc a			;a641
	djnz la67fh		;a642
	djnz la680h		;a644
	jp po,0000fh		;a646
	add hl,sp		;a649
	rst 38h			;a64a
	cp 002h			;a64b
	ret po			;a64d
	ld bc,001e2h		;a64e
	push af			;a651
	ld (hl),c		;a652
	ret nz			;a653
	ld (hl),c		;a654
	add a,b			;a655
	ld (hl),c		;a656
	ld h,b			;a657
	ld (hl),c		;a658
	add a,b			;a659
	ld (hl),c		;a65a
	ret nz			;a65b
	ei			;a65c
la65dh:
	ex af,af'		;a65d
	push af			;a65e
	ld b,c			;a65f
	ret nz			;a660
	ld b,c			;a661
	add a,b			;a662
	ld b,c			;a663
la664h:
	ld h,b			;a664
	ld b,c			;a665
	add a,b			;a666
	ld b,c			;a667
	ret nz			;a668
la669h:
	ei			;a669
	ex af,af'		;a66a
	rst 38h			;a66b
	cp 002h			;a66c
	ret m			;a66e
	dec b			;a66f
	jp po,0f501h		;a670
	pop bc			;a673
	ret nz			;a674
la675h:
	pop bc			;a675
	add a,b			;a676
	pop bc			;a677
la678h:
	ld h,b			;a678
la679h:
	pop bc			;a679
	add a,b			;a67a
	pop bc			;a67b
	ret nz			;a67c
	ei			;a67d
	ex af,af'		;a67e
la67fh:
	push af			;a67f
la680h:
	ld d,c			;a680
	ret nz			;a681
	ld d,c			;a682
	add a,b			;a683
	ld d,c			;a684
	ld h,b			;a685
	ld d,c			;a686
	add a,b			;a687
	ld d,c			;a688
	ret nz			;a689
	ei			;a68a
	ex af,af'		;a68b
	ret po			;a68c
	ld bc,0feffh		;a68d
	ld (bc),a		;a690
	ret po			;a691
	ld bc,001e2h		;a692
	ld (hl),b		;a695
	and b			;a696
	sub b			;a697
	ld l,b			;a698
	jr nc,$+54		;a699
	ld d,b			;a69b
	ld l,d			;a69c
	jr nz,$+55		;a69d
	ret po			;a69f
	ld bc,001e2h		;a6a0
	jr nc,$-94		;a6a3
	ld b,b			;a6a5
la6a6h:
	ld l,b			;a6a6
	nop			;a6a7
	inc (hl)		;a6a8
	jr nc,la715h		;a6a9
	nop			;a6ab
	dec (hl)		;a6ac
	rst 38h			;a6ad
	cp 002h			;a6ae
	ret m			;a6b0
	ld c,d			;a6b1
	jp po,06001h		;a6b2
	and b			;a6b5
	sub b			;a6b6
	ld l,b			;a6b7
	jr nz,$+54		;a6b8
	ld h,b			;a6ba
	ld l,d			;a6bb
	djnz la6f3h		;a6bc
	ret po			;a6be
	ld bc,001e2h		;a6bf
	jr nz,la664h		;a6c2
	jr nc,la72eh		;a6c4
la6c6h:
	nop			;a6c6
	inc (hl)		;a6c7
	jr nc,la734h		;a6c8
	nop			;a6ca
	dec (hl)		;a6cb
	ret po			;a6cc
	ld bc,0feffh		;a6cd
	ld (bc),a		;a6d0
	ret po			;a6d1
	ld bc,001e2h		;a6d2
	ld h,c			;a6d5
	or b			;a6d6
	sub l			;a6d7
	and b			;a6d8
	ld e,b			;a6d9
	ld (hl),b		;a6da
	jr z,la65dh		;a6db
	ret po			;a6dd
	ld bc,001e2h		;a6de
	ld d,c			;a6e1
	or b			;a6e2
	ld h,l			;a6e3
	and b			;a6e4
	ld c,b			;a6e5
	ld (hl),b		;a6e6
	jr z,la669h		;a6e7
	ret po			;a6e9
	ld bc,001e2h		;a6ea
	ld hl,035b0h		;a6ed
	and b			;a6f0
	jr la763h		;a6f1
la6f3h:
	jr la675h		;a6f3
	ret po			;a6f5
	ld bc,001e2h		;a6f6
	ld bc,005b0h		;a6f9
	and b			;a6fc
	ex af,af'		;a6fd
	ld (hl),b		;a6fe
	rst 38h			;a6ff
	cp 002h			;a700
	jp po,0f801h		;a702
	ld c,d			;a705
	sub c			;a706
	or b			;a707
	or l			;a708
	and b			;a709
	adc a,b			;a70a
	ld (hl),b		;a70b
	ld c,b			;a70c
	add a,b			;a70d
	ret po			;a70e
	ld bc,001e2h		;a70f
	ld d,c			;a712
	or b			;a713
	ld h,l			;a714
la715h:
	and b			;a715
	ld c,b			;a716
	ld (hl),b		;a717
	jr z,$-126		;a718
	ret po			;a71a
	ld bc,001e2h		;a71b
	ld hl,035b0h		;a71e
	and b			;a721
	jr la794h		;a722
	jr la6a6h		;a724
	ret po			;a726
	ld bc,001e2h		;a727
	ld bc,005b0h		;a72a
	and b			;a72d
la72eh:
	ex af,af'		;a72e
	ld (hl),b		;a72f
	ret po			;a730
	ld bc,0feffh		;a731
la734h:
	ld (bc),a		;a734
	ret po			;a735
	ld (bc),a		;a736
	jp po,08101h		;a737
	sub b			;a73a
	or l			;a73b
	ld h,b			;a73c
	ld l,b			;a73d
	jr nc,la748h		;a73e
	jr nc,la6c6h		;a740
	nop			;a742
	add a,e			;a743
	nop			;a744
	add a,d			;a745
	add a,b			;a746
	add a,d			;a747
la748h:
	nop			;a748
	add a,c			;a749
	add a,b			;a74a
	add a,c			;a74b
	ld b,b			;a74c
	ld b,h			;a74d
	nop			;a74e
	ld b,e			;a74f
	nop			;a750
	ld b,d			;a751
	add a,b			;a752
	ld b,d			;a753
	nop			;a754
	ld b,c			;a755
	add a,b			;a756
	ld b,c			;a757
	ld b,b			;a758
	dec b			;a759
	nop			;a75a
	inc b			;a75b
	nop			;a75c
	inc bc			;a75d
	nop			;a75e
	ld (bc),a		;a75f
	add a,b			;a760
	ld (bc),a		;a761
	nop			;a762
la763h:
	rst 38h			;a763
	cp 002h			;a764
	jp po,0f801h		;a766
	ld c,d			;a769
	pop bc			;a76a
	sub b			;a76b
	push bc			;a76c
	ld h,b			;a76d
	ret z			;a76e
	jr nc,la7b9h		;a76f
	ld b,b			;a771
	ret m			;a772
	inc d			;a773
	or h			;a774
	nop			;a775
	or e			;a776
	nop			;a777
	or d			;a778
	add a,b			;a779
	or d			;a77a
	nop			;a77b
	or c			;a77c
	add a,b			;a77d
	or c			;a77e
	ld b,b			;a77f
	ld d,l			;a780
	nop			;a781
	ld d,h			;a782
	nop			;a783
	ld d,e			;a784
	nop			;a785
	ld d,d			;a786
	add a,b			;a787
	ld d,d			;a788
	nop			;a789
	ld d,c			;a78a
	add a,b			;a78b
	ld d,c			;a78c
	ld b,b			;a78d
	inc d			;a78e
	nop			;a78f
	inc de			;a790
	nop			;a791
	ld (de),a		;a792
	add a,b			;a793
la794h:
	ld (de),a		;a794
	nop			;a795
	ld de,01180h		;a796
	ld b,b			;a799
	rst 38h			;a79a
	cp 002h			;a79b
	jp po,07201h		;a79d
	add a,b			;a7a0
	push af			;a7a1
	ld sp,hl		;a7a2
	or d			;a7a3
	add a,a			;a7a4
	ei			;a7a5
	ld (bc),a		;a7a6
	ld a,d			;a7a7
	nop			;a7a8
	rst 30h			;a7a9
	inc bc			;a7aa
	ld sp,hl		;a7ab
	or d			;a7ac
	add a,a			;a7ad
	rst 18h			;a7ae
	ld c,d			;a7af
	nop			;a7b0
	rst 38h			;a7b1
	ld (hl),e		;a7b2
	nop			;a7b3
	ld (hl),h		;a7b4
	nop			;a7b5
	ld (hl),l		;a7b6
	nop			;a7b7
	ld (hl),l		;a7b8
la7b9h:
	add a,b			;a7b9
	halt			;a7ba
	nop			;a7bb
	halt			;a7bc
	add a,b			;a7bd
	ld (hl),a		;a7be
	nop			;a7bf
	ld (hl),a		;a7c0
	add a,b			;a7c1
	ld a,b			;a7c2
	nop			;a7c3
	ld a,b			;a7c4
	add a,b			;a7c5
	ld a,c			;a7c6
	nop			;a7c7
	jp m,002feh		;a7c8
	ret m			;a7cb
	inc c			;a7cc
	jp po,0c101h		;a7cd
	ld b,b			;a7d0
	push af			;a7d1
	ld sp,hl		;a7d2
	jp po,0fb87h		;a7d3
	ld (bc),a		;a7d6
	push bc			;a7d7
	nop			;a7d8
	rst 30h			;a7d9
	ex af,af'		;a7da
	ld sp,hl		;a7db
	jp po,0df87h		;a7dc
	ld b,l			;a7df
	nop			;a7e0
	rst 38h			;a7e1
	pop bc			;a7e2
	add a,b			;a7e3
	jp nz,0c200h		;a7e4
	add a,b			;a7e7
	jp nz,0c3c0h		;a7e8
	nop			;a7eb
	jp 0c340h		;a7ec
	add a,b			;a7ef
	jp 0c4c0h		;a7f0
	nop			;a7f3
	call nz,0c440h		;a7f4
	add a,b			;a7f7
	jp m,002feh		;a7f8
	xor 001h		;a7fb
	jp po,0a201h		;a7fd
	ld b,b			;a800
la801h:
	and e			;a801
	ld (hl),b		;a802
	and h			;a803
	ret nc			;a804
	and (hl)		;a805
	ret p			;a806
	xor b			;a807
	jr nz,$+21		;a808
	ld (hl),b		;a80a
	inc d			;a80b
	ret nc			;a80c
	ld d,0f0h		;a80d
	jr $+34			;a80f
	sub d			;a811
	ld b,b			;a812
	sub e			;a813
	ld (hl),b		;a814
	sub h			;a815
	ret nc			;a816
	sub (hl)		;a817
	ret nz			;a818
	sub a			;a819
	ld (hl),b		;a81a
	sbc a,b			;a81b
	jr nz,la85eh		;a81c
	rla			;a81e
	ld b,b			;a81f
	jr la862h		;a820
	add hl,de		;a822
	ld b,b			;a823
	ld a,(de)		;a824
	ld b,b			;a825
la826h:
	dec de			;a826
	ld b,b			;a827
	inc e			;a828
	ld b,b			;a829
	dec e			;a82a
	ld b,b			;a82b
	ld e,040h		;a82c
	rra			;a82e
	ld d,b			;a82f
	jr nz,la826h		;a830
	ld hl,02322h		;a832
	inc h			;a835
	dec h			;a836
	ld h,027h		;a837
	jr z,la864h		;a839
	ld hl,(02c2bh)		;a83b
	dec l			;a83e
	ld l,02fh		;a83f
	jr nc,$+51		;a841
	ld (03433h),a		;a843
	dec (hl)		;a846
	ld (hl),037h		;a847
	jr c,la884h		;a849
	ld a,(03c3bh)		;a84b
la84eh:
	dec a			;a84e
	ld a,03fh		;a84f
	ld b,b			;a851
	ld b,c			;a852
	or 040h			;a853
	ld b,d			;a855
	ld b,b			;a856
	ld b,e			;a857
	jr nc,la89eh		;a858
	jr nc,$+71		;a85a
	jr nz,$+72		;a85c
la85eh:
	jr nz,la8a7h		;a85e
	djnz la8aah		;a860
la862h:
	djnz la8adh		;a862
la864h:
	ret po			;a864
	rrca			;a865
	rst 38h			;a866
	cp 002h			;a867
	ret m			;a869
	jr z,la84eh		;a86a
	ld bc,040c2h		;a86c
	jp 0c470h		;a86f
	ret nc			;a872
	add a,0f0h		;a873
	ret z			;a875
	jr nz,la8dbh		;a876
la878h:
	ld (hl),b		;a878
	ld h,h			;a879
	ret nc			;a87a
	ld h,(hl)		;a87b
	ret p			;a87c
	ld l,b			;a87d
	jr nz,la878h		;a87e
	add hl,bc		;a880
	jp nz,0c200h		;a881
la884h:
	djnz $-60		;a884
	jr nz,$-60		;a886
	jr nc,$-60		;a888
	ld b,b			;a88a
	jp nz,0c250h		;a88b
	ld h,b			;a88e
	jp nz,0c270h		;a88f
	add a,b			;a892
	jp nz,0c2a0h		;a893
	ret nz			;a896
	jp nz,0e2e0h		;a897
	ld (bc),a		;a89a
	jp 0c300h		;a89b
la89eh:
	ld b,b			;a89e
	jp 0c380h		;a89f
	ret nz			;a8a2
	call nz,0c400h		;a8a3
	ld b,b			;a8a6
la8a7h:
	call nz,0c480h		;a8a7
la8aah:
	ret nz			;a8aa
	push bc			;a8ab
	nop			;a8ac
la8adh:
	push bc			;a8ad
	ld b,b			;a8ae
	push bc			;a8af
	add a,b			;a8b0
	push bc			;a8b1
	ret nz			;a8b2
	add a,000h		;a8b3
	add a,040h		;a8b5
	add a,080h		;a8b7
	add a,0c0h		;a8b9
	rst 0			;a8bb
	nop			;a8bc
	rst 0			;a8bd
	ld b,b			;a8be
	or a			;a8bf
	add a,b			;a8c0
	and a			;a8c1
	ret nz			;a8c2
	sbc a,b			;a8c3
	nop			;a8c4
	adc a,b			;a8c5
	ld b,b			;a8c6
	ld a,b			;a8c7
	add a,b			;a8c8
	ld l,b			;a8c9
	ret nz			;a8ca
	ld e,c			;a8cb
	nop			;a8cc
	ld c,c			;a8cd
	ld b,b			;a8ce
	add hl,sp		;a8cf
	add a,b			;a8d0
	add hl,hl		;a8d1
	ret nz			;a8d2
	ld a,(de)		;a8d3
	nop			;a8d4
	ld a,(bc)		;a8d5
	ld b,b			;a8d6
	rst 38h			;a8d7
	cp 002h			;a8d8
	pop hl			;a8da
la8dbh:
	ld bc,00ee4h		;a8db
	ld a,(bc)		;a8de
	call po,00911h		;a8df
	call po,00814h		;a8e2
	call po,00817h		;a8e5
	call po,0081ah		;a8e8
	call po,0081dh		;a8eb
	call po,0081fh		;a8ee
	call po,00708h		;a8f1
	call po,0070eh		;a8f4
	call po,00711h		;a8f7
	call po,00714h		;a8fa
	call po,00717h		;a8fd
	call po,0071ah		;a900
	push af			;a903
	call po,0071ch		;a904
	call po,0071fh		;a907
	ei			;a90a
	ex af,af'		;a90b
	call po,0050eh		;a90c
	call po,00411h		;a90f
	call po,00414h		;a912
	call po,00417h		;a915
	call po,0041ah		;a918
	call po,0041dh		;a91b
	call po,0041fh		;a91e
	call po,00408h		;a921
	call po,0040eh		;a924
	call po,00411h		;a927
	call po,00414h		;a92a
	call po,00417h		;a92d
	call po,0041ah		;a930
	push af			;a933
	call po,0041ch		;a934
	call po,0041fh		;a937
	ei			;a93a
	ex af,af'		;a93b
	call po,0010eh		;a93c
	call po,00111h		;a93f
	call po,00114h		;a942
	call po,00117h		;a945
	call po,0011ah		;a948
	call po,0011dh		;a94b
	call po,0011fh		;a94e
	call po,00108h		;a951
	call po,0010eh		;a954
	call po,00111h		;a957
	call po,00114h		;a95a
	call po,00117h		;a95d
	call po,0011ah		;a960
	push af			;a963
	call po,0011ch		;a964
	call po,0011fh		;a967
	ei			;a96a
	ex af,af'		;a96b
	rst 38h			;a96c
	cp 002h			;a96d
la96fh:
	jp po,0f801h		;a96f
	ld h,0c3h		;a972
	nop			;a974
	call nz,0c500h		;a975
	nop			;a978
	add a,000h		;a979
	jp 0f500h		;a97b
	pop bc			;a97e
	add a,b			;a97f
	pop bc			;a980
	ld h,b			;a981
	pop bc			;a982
	ret po			;a983
	ei			;a984
	ex af,af'		;a985
	ld d,e			;a986
	nop			;a987
	ld d,h			;a988
	nop			;a989
	ld d,l			;a98a
	nop			;a98b
	ld d,(hl)		;a98c
	nop			;a98d
	ld d,e			;a98e
	nop			;a98f
	push af			;a990
	ld d,c			;a991
	add a,b			;a992
	ld d,c			;a993
	ld h,b			;a994
	ld d,c			;a995
	ret po			;a996
	ei			;a997
	ex af,af'		;a998
	inc bc			;a999
	nop			;a99a
	inc b			;a99b
	nop			;a99c
	dec b			;a99d
	nop			;a99e
	ld b,000h		;a99f
	inc bc			;a9a1
	nop			;a9a2
	push af			;a9a3
	ld bc,00180h		;a9a4
	ld h,b			;a9a7
	ld bc,0fbe0h		;a9a8
	ex af,af'		;a9ab
	rst 38h			;a9ac
	cp 002h			;a9ad
	ret po			;a9af
	ld bc,001e2h		;a9b0
	ld h,h			;a9b3
	ld h,b			;a9b4
	sub e			;a9b5
	ld d,b			;a9b6
la9b7h:
	sub h			;a9b7
	jr nc,$-105		;a9b8
	jr nz,$-104		;a9ba
	djnz la9b7h		;a9bc
	in a,(089h)		;a9be
	rst 38h			;a9c0
	cp 002h			;a9c1
	ret m			;a9c3
	add hl,de		;a9c4
	jp po,06401h		;a9c5
	ld h,b			;a9c8
	ret m			;a9c9
	jr z,la96fh		;a9ca
	ld d,b			;a9cc
	ret m			;a9cd
	inc d			;a9ce
la9cfh:
	and h			;a9cf
	jr nc,$-89		;a9d0
	jr nz,$-88		;a9d2
	djnz la9cfh		;a9d4
	in a,(089h)		;a9d6
	ret po			;a9d8
	ld bc,0f8ffh		;a9d9
	add hl,de		;a9dc
	jp po,04401h		;a9dd
	ld h,b			;a9e0
	ret m			;a9e1
	jr z,$+85		;a9e2
	ld d,b			;a9e4
	ret m			;a9e5
la9e6h:
	inc d			;a9e6
	ld d,h			;a9e7
	jr nc,$+87		;a9e8
	jr nz,laa42h		;a9ea
	djnz la9e6h		;a9ec
	add hl,de		;a9ee
	jp po,02401h		;a9ef
	ld h,b			;a9f2
	ret m			;a9f3
	jr z,$+53		;a9f4
	ld d,b			;a9f6
	ret m			;a9f7
la9f8h:
	inc d			;a9f8
	inc (hl)		;a9f9
	jr nc,$+55		;a9fa
	jr nz,laa34h		;a9fc
	djnz la9f8h		;a9fe
	add hl,de		;aa00
	jp po,01401h		;aa01
	ld h,b			;aa04
	ret m			;aa05
	jr z,laa1bh		;aa06
	ld d,b			;aa08
	ret m			;aa09
	inc d			;aa0a
	inc d			;aa0b
laa0ch:
	jr nc,$+23		;aa0c
	jr nz,laa26h		;aa0e
	djnz laa0ch		;aa10
	cp 002h			;aa12
	ret po			;aa14
	ld bc,001e2h		;aa15
	ld d,b			;aa18
	ld h,(hl)		;aa19
	ld d,b			;aa1a
laa1bh:
	ld e,b			;aa1b
	ld b,b			;aa1c
	ld h,d			;aa1d
	ld b,b			;aa1e
	ld e,(hl)		;aa1f
	jr nc,$+94		;aa20
	jr nc,$+92		;aa22
	jr nc,laa7fh		;aa24
laa26h:
	jr nc,$+90		;aa26
	jr nc,laa83h		;aa28
	jr nc,$+90		;aa2a
	nop			;aa2c
	ld e,c			;aa2d
	jr nc,laa96h		;aa2e
	jr nc,laa8ah		;aa30
	jr nz,laa96h		;aa32
laa34h:
	jr nz,laa94h		;aa34
	djnz laa94h		;aa36
	djnz laa94h		;aa38
	djnz laa95h		;aa3a
	djnz laa96h		;aa3c
	djnz laa99h		;aa3e
	djnz laa9ah		;aa40
laa42h:
	nop			;aa42
	ld e,c			;aa43
	djnz laaach		;aa44
	djnz laaa0h		;aa46
	nop			;aa48
	ld h,d			;aa49
	nop			;aa4a
	ld e,(hl)		;aa4b
	nop			;aa4c
	ld e,h			;aa4d
	nop			;aa4e
	ld e,d			;aa4f
	nop			;aa50
	ld e,c			;aa51
	nop			;aa52
	ld e,b			;aa53
	nop			;aa54
	ld e,c			;aa55
	nop			;aa56
	ld e,b			;aa57
	rst 38h			;aa58
	cp 002h			;aa59
	ret m			;aa5b
	dec h			;aa5c
	jp po,09001h		;aa5d
	ld h,(hl)		;aa60
	sub b			;aa61
	ld e,b			;aa62
	ld h,b			;aa63
	ld h,d			;aa64
	ld h,b			;aa65
	ld e,(hl)		;aa66
	ld d,b			;aa67
	ld e,h			;aa68
	ld d,b			;aa69
	ld e,d			;aa6a
	ld d,b			;aa6b
	ld e,c			;aa6c
	ld b,b			;aa6d
	ld e,b			;aa6e
	ld b,b			;aa6f
	ld e,c			;aa70
	ld b,b			;aa71
	ld e,b			;aa72
	nop			;aa73
	ld e,c			;aa74
	ld b,b			;aa75
	ld h,(hl)		;aa76
	ld b,b			;aa77
	ld e,b			;aa78
	jr nc,laaddh		;aa79
	jr nz,$+96		;aa7b
	jr nz,$+94		;aa7d
laa7fh:
	jr nz,$+92		;aa7f
	jr nz,laadch		;aa81
laa83h:
	jr nz,laaddh		;aa83
	jr nz,laae0h		;aa85
	jr nz,$+90		;aa87
	nop			;aa89
laa8ah:
	ld e,c			;aa8a
	djnz laaf3h		;aa8b
	djnz laae7h		;aa8d
	nop			;aa8f
	ld h,d			;aa90
	nop			;aa91
	ld e,(hl)		;aa92
	nop			;aa93
laa94h:
	ld e,h			;aa94
laa95h:
	nop			;aa95
laa96h:
	ld e,d			;aa96
	nop			;aa97
	ld e,c			;aa98
laa99h:
	nop			;aa99
laa9ah:
	ld e,b			;aa9a
	nop			;aa9b
	ld e,c			;aa9c
	nop			;aa9d
	ld e,b			;aa9e
	ret po			;aa9f
laaa0h:
	ld bc,0feffh		;aaa0
	ld (bc),a		;aaa3
	ex (sp),hl		;aaa4
	ld bc,01fe4h		;aaa5
	sub c			;aaa8
	jr nz,$-108		;aaa9
	and b			;aaab
laaach:
	sub h			;aaac
	add a,b			;aaad
	jp po,05201h		;aaae
	ld b,b			;aab1
	ld (hl),l		;aab2
	ld b,b			;aab3
	ld a,c			;aab4
	nop			;aab5
	ret po			;aab6
	add hl,de		;aab7
	rst 38h			;aab8
	cp 002h			;aab9
	ret m			;aabb
	ld h,h			;aabc
laabdh:
	jp po,0c101h		;aabd
	jr nz,$-60		;aac0
	and b			;aac2
	call nz,0fe80h		;aac3
	ld bc,00feah		;aac6
	jp (hl)			;aac9
	ld b,0f8h		;aaca
	add a,h			;aacc
	rst 8			;aacd
	call nc,0e9b1h		;aace
laad1h:
	ex af,af'		;aad1
	jp pe,0d402h		;aad2
	or c			;aad5
	rst 38h			;aad6
	cp 001h			;aad7
	jp pe,0e90ch		;aad9
laadch:
	inc bc			;aadc
laaddh:
	ret nz			;aadd
	jp (hl)			;aade
	add hl,bc		;aadf
laae0h:
	sub 030h		;aae0
	djnz laad1h		;aae2
	ex af,af'		;aae4
	ex de,hl		;aae5
	add a,c			;aae6
laae7h:
	djnz laabdh		;aae7
	add a,c			;aae9
	jp pe,0810ah		;aaea
	jp pe,08106h		;aaed
	jp pe,08104h		;aaf0
laaf3h:
	rst 38h			;aaf3
	cp 001h			;aaf4
	jp pe,0e90fh		;aaf6
	add hl,bc		;aaf9
	ret m			;aafa
	add a,a			;aafb
	ret z			;aafc
	sub 030h		;aafd
	djnz $-17		;aaff
	inc b			;ab01
	ex de,hl		;ab02
	add a,c			;ab03
	djnz $-42		;ab04
	add a,c			;ab06
	jp pe,0810ch		;ab07
	jp pe,08108h		;ab0a
	jp pe,08106h		;ab0d
	jp (hl)			;ab10
	inc bc			;ab11
	ret nz			;ab12
	rst 38h			;ab13
	cp 002h			;ab14
	call po,0e31fh		;ab16
	ld bc,080b1h		;ab19
	or d			;ab1c
	add a,b			;ab1d
	and e			;ab1e
	add a,b			;ab1f
	add a,e			;ab20
	add a,b			;ab21
	jp po,la801h		;ab22
	nop			;ab25
	and a			;ab26
	add a,b			;ab27
	and l			;ab28
	nop			;ab29
	ex (sp),hl		;ab2a
	ld bc,0c0b1h		;ab2b
	or d			;ab2e
	ld b,b			;ab2f
	and e			;ab30
	add a,b			;ab31
	add a,e			;ab32
	nop			;ab33
	jp po,la601h		;ab34
	nop			;ab37
	and a			;ab38
	nop			;ab39
	and (hl)		;ab3a
	add a,b			;ab3b
	xor b			;ab3c
	nop			;ab3d
	and a			;ab3e
	add a,b			;ab3f
	xor c			;ab40
	nop			;ab41
	and a			;ab42
	add a,b			;ab43
	and a			;ab44
	nop			;ab45
	ld a,b			;ab46
	nop			;ab47
	ld e,c			;ab48
	nop			;ab49
	ld e,b			;ab4a
	nop			;ab4b
	ld d,a			;ab4c
	nop			;ab4d
	ex (sp),hl		;ab4e
	ld bc,08061h		;ab4f
	ld h,d			;ab52
	add a,b			;ab53
	ld d,e			;ab54
	add a,b			;ab55
	inc sp			;ab56
	add a,b			;ab57
	jp po,06801h		;ab58
	nop			;ab5b
	ld h,a			;ab5c
	add a,b			;ab5d
	ld h,l			;ab5e
	nop			;ab5f
	ex (sp),hl		;ab60
	ld bc,0c061h		;ab61
	ld d,d			;ab64
	ret nz			;ab65
	ld b,e			;ab66
	add a,b			;ab67
	inc sp			;ab68
	nop			;ab69
	jp po,06601h		;ab6a
	nop			;ab6d
	ld h,a			;ab6e
	nop			;ab6f
	ld h,(hl)		;ab70
	add a,b			;ab71
	ld l,b			;ab72
	nop			;ab73
	ld h,a			;ab74
	add a,b			;ab75
	ld l,c			;ab76
	nop			;ab77
	ld h,a			;ab78
	add a,b			;ab79
	ld h,a			;ab7a
	nop			;ab7b
	ld c,b			;ab7c
	nop			;ab7d
	add hl,sp		;ab7e
	nop			;ab7f
	jr c,lab82h		;ab80
lab82h:
	scf			;ab82
	nop			;ab83
	ex (sp),hl		;ab84
	ld bc,08041h		;ab85
	ld b,d			;ab88
	add a,b			;ab89
	ld b,e			;ab8a
	add a,b			;ab8b
	ld b,e			;ab8c
	add a,b			;ab8d
	jp po,04701h		;ab8e
	add a,b			;ab91
	ld b,l			;ab92
	nop			;ab93
	ld c,b			;ab94
	nop			;ab95
	ex (sp),hl		;ab96
	ld bc,0c041h		;ab97
	ld b,d			;ab9a
	ret nz			;ab9b
	inc sp			;ab9c
	add a,b			;ab9d
	inc sp			;ab9e
	nop			;ab9f
	jp po,03701h		;aba0
	nop			;aba3
	ld (hl),080h		;aba4
	jr c,laba8h		;aba6
laba8h:
	scf			;aba8
	add a,b			;aba9
	add hl,sp		;abaa
	nop			;abab
	scf			;abac
	add a,b			;abad
	scf			;abae
	nop			;abaf
	jr z,labb2h		;abb0
labb2h:
	add hl,bc		;abb2
	nop			;abb3
	ex af,af'		;abb4
	nop			;abb5
	rlca			;abb6
	nop			;abb7
	add hl,bc		;abb8
	nop			;abb9
	rst 38h			;abba
	cp 002h			;abbb
	ret m			;abbd
	jr z,$-28		;abbe
	ld bc,00ff9h		;abc0
	adc a,h			;abc3
	sbc a,b			;abc4
	nop			;abc5
	ld l,c			;abc6
	nop			;abc7
	ld l,b			;abc8
	nop			;abc9
	ld h,a			;abca
	nop			;abcb
	ld l,c			;abcc
	nop			;abcd
	rst 30h			;abce
	dec b			;abcf
	ld sp,hl		;abd0
	rrca			;abd1
	adc a,h			;abd2
	rst 18h			;abd3
	ld e,b			;abd4
	nop			;abd5
	add hl,sp		;abd6
	nop			;abd7
	jr c,labdah		;abd8
labdah:
	scf			;abda
labdbh:
	nop			;abdb
	add hl,sp		;abdc
	nop			;abdd
	ret m			;abde
	ld h,043h		;abdf
	nop			;abe1
	ld b,l			;abe2
	djnz lac2ch		;abe3
	nop			;abe5
	ld b,a			;abe6
	nop			;abe7
	ld b,a			;abe8
	add a,b			;abe9
	ld b,l			;abea
	nop			;abeb
	ld c,b			;abec
	nop			;abed
	ld b,e			;abee
	add a,b			;abef
	ld b,h			;abf0
	add a,b			;abf1
	scf			;abf2
	nop			;abf3
	ld (hl),000h		;abf4
	scf			;abf6
	nop			;abf7
	ld (hl),080h		;abf8
	jr c,labfch		;abfa
labfch:
	scf			;abfc
	add a,b			;abfd
	add hl,sp		;abfe
	nop			;abff
	scf			;ac00
	add a,b			;ac01
	scf			;ac02
	nop			;ac03
	jr z,lac06h		;ac04
lac06h:
	add hl,bc		;ac06
	nop			;ac07
	ex af,af'		;ac08
	nop			;ac09
	rlca			;ac0a
lac0bh:
	nop			;ac0b
	add hl,bc		;ac0c
	nop			;ac0d
	rst 38h			;ac0e
	jp 0c500h		;ac0f
	djnz labdbh		;ac12
	nop			;ac14
	rst 0			;ac15
	nop			;ac16
	rst 0			;ac17
	add a,b			;ac18
	push bc			;ac19
	nop			;ac1a
	ret z			;ac1b
	nop			;ac1c
	jp 0c480h		;ac1d
	add a,b			;ac20
	rst 0			;ac21
	nop			;ac22
	add a,000h		;ac23
	rst 0			;ac25
	nop			;ac26
	add a,080h		;ac27
	ret z			;ac29
	nop			;ac2a
	rst 0			;ac2b
lac2ch:
	add a,b			;ac2c
	ret			;ac2d
	nop			;ac2e
	rst 0			;ac2f
	add a,b			;ac30
	rst 0			;ac31
	nop			;ac32
	jp m,002feh		;ac33
	call po,0e11fh		;ac36
	ld bc,0e409h		;ac39
	inc de			;ac3c
	ex (sp),hl		;ac3d
	ld bc,04072h		;ac3e
	push af			;ac41
	call po,08013h		;ac42
	ld (hl),h		;ac45
	call po,08019h		;ac46
	sbc a,c			;ac49
	call po,08010h		;ac4a
	ld e,b			;ac4d
	ei			;ac4e
	dec bc			;ac4f
	push af			;ac50
	call po,04013h		;ac51
	ld (hl),h		;ac54
	call po,04019h		;ac55
	sbc a,c			;ac58
	call po,04010h		;ac59
	ld e,b			;ac5c
	ei			;ac5d
	rlca			;ac5e
lac5fh:
	rst 38h			;ac5f
	cp 002h			;ac60
	ret m			;ac62
	jr z,$-28		;ac63
	ld bc,04062h		;ac65
	ret m			;ac68
	ld h,h			;ac69
	push af			;ac6a
	ld (hl),b		;ac6b
	jp (hl)			;ac6c
	ld h,c			;ac6d
	ld (lb050h),a		;ac6e
	ei			;ac71
	dec bc			;ac72
	push af			;ac73
lac74h:
	jr nz,lac5fh		;ac74
	ld hl,01032h		;ac76
	or b			;ac79
	ei			;ac7a
	rlca			;ac7b
	ret po			;ac7c
	ld bc,0feffh		;ac7d
	ld (bc),a		;ac80
	jp po,0ee01h		;ac81
	inc bc			;ac84
	ld h,c			;ac85
	nop			;ac86
	ld (hl),c		;ac87
	jr nz,lac0bh		;ac88
	ld b,b			;ac8a
	add a,c			;ac8b
	ld h,b			;ac8c
	add a,b			;ac8d
	ld d,(hl)		;ac8e
	add a,b			;ac8f
	ld c,a			;ac90
	ld b,b			;ac91
	ld c,c			;ac92
	ret po			;ac93
	ld bc,001e2h		;ac94
	ld hl,03100h		;ac97
	jr nz,$+67		;ac9a
	ld b,b			;ac9c
	ld b,c			;ac9d
	ld h,b			;ac9e
	ld b,b			;ac9f
	ld d,(hl)		;aca0
	ld b,b			;aca1
	ld c,a			;aca2
	jr nz,laceeh		;aca3
	ret po			;aca5
	ld bc,001e2h		;aca6
	ld bc,00100h		;aca9
	jr nz,lacafh		;acac
	ld b,b			;acae
lacafh:
	ld bc,00060h		;acaf
	ld d,(hl)		;acb2
	nop			;acb3
	ld c,a			;acb4
	nop			;acb5
	ld c,c			;acb6
	rst 38h			;acb7
	cp 002h			;acb8
	jp po,0f801h		;acba
	inc d			;acbd
	sub c			;acbe
	nop			;acbf
	and c			;acc0
	jr nz,lac74h		;acc1
	ld b,b			;acc3
	or c			;acc4
	ld h,b			;acc5
	and b			;acc6
	ld d,(hl)		;acc7
	and b			;acc8
	ld c,a			;acc9
	ld h,b			;acca
	ld c,c			;accb
	ret po			;accc
	ld bc,001e2h		;accd
	ld sp,04100h		;acd0
	jr nz,lad26h		;acd3
	ld b,b			;acd5
	ld d,c			;acd6
	ld h,b			;acd7
	ld d,b			;acd8
	ld d,(hl)		;acd9
	ld d,b			;acda
	ld c,a			;acdb
	jr nc,$+75		;acdc
	ret po			;acde
	ld bc,001e2h		;acdf
	ld bc,00100h		;ace2
	jr nz,lace8h		;ace5
	ld b,b			;ace7
lace8h:
	ld bc,00060h		;ace8
	ld d,(hl)		;aceb
	nop			;acec
	ld c,a			;aced
laceeh:
	nop			;acee
	ld c,c			;acef
	rst 38h			;acf0
	cp 001h			;acf1
	jp pe,0e90ah		;acf3
	ld bc,030d6h		;acf6
	ex af,af'		;acf9
	defb 0edh ;next byte illegal after ed	;acfa
	inc b			;acfb
	ex de,hl		;acfc
	add a,c			;acfd
	ld de,0c1d2h		;acfe
	inc c			;ad01
	jp nz,006eah		;ad02
	jp nc,0c20ch		;ad05
	jp pe,0d203h		;ad08
	inc c			;ad0b
	rst 38h			;ad0c
	cp 001h			;ad0d
	jp pe,0e90eh		;ad0f
	ld bc,081f8h		;ad12
	call z,030d6h		;ad15
	ex af,af'		;ad18
	defb 0edh ;next byte illegal after ed	;ad19
	inc b			;ad1a
	ex de,hl		;ad1b
	add a,c			;ad1c
	ld de,00cd2h		;ad1d
	jp nz,006eah		;ad20
	jp nc,0c20ch		;ad23
lad26h:
	jp pe,0d203h		;ad26
	inc c			;ad29
	pop bc			;ad2a
	rst 38h			;ad2b
	cp 002h			;ad2c
	ret po			;ad2e
	ld bc,001e2h		;ad2f
	ld h,c			;ad32
	add a,b			;ad33
	sub d			;ad34
	nop			;ad35
	sub d			;ad36
	add a,b			;ad37
	sub e			;ad38
	nop			;ad39
	sub h			;ad3a
	nop			;ad3b
	sub l			;ad3c
	nop			;ad3d
	sub (hl)		;ad3e
	nop			;ad3f
	sub a			;ad40
	nop			;ad41
	sbc a,b			;ad42
	nop			;ad43
	ld d,b			;ad44
	ld d,e			;ad45
	ld d,b			;ad46
	ld c,c			;ad47
	ret po			;ad48
	ld (bc),a		;ad49
	jp po,03101h		;ad4a
	add a,b			;ad4d
	ld d,d			;ad4e
	nop			;ad4f
	ld d,d			;ad50
	add a,b			;ad51
	ld d,e			;ad52
	nop			;ad53
	ld d,h			;ad54
	nop			;ad55
	ld d,l			;ad56
	nop			;ad57
	ld d,(hl)		;ad58
	nop			;ad59
	ld d,a			;ad5a
	nop			;ad5b
	ld e,b			;ad5c
	nop			;ad5d
	jr nz,ladb3h		;ad5e
	jr nz,ladabh		;ad60
	ret po			;ad62
	ld (bc),a		;ad63
	jp po,00101h		;ad64
	add a,b			;ad67
	ld (bc),a		;ad68
	nop			;ad69
	ld (de),a		;ad6a
	add a,b			;ad6b
	inc de			;ad6c
	nop			;ad6d
	inc d			;ad6e
	nop			;ad6f
	dec d			;ad70
	nop			;ad71
	ld d,000h		;ad72
	rla			;ad74
	nop			;ad75
	jr lad78h		;ad76
lad78h:
	nop			;ad78
	ld d,e			;ad79
	nop			;ad7a
	ld c,c			;ad7b
	rst 38h			;ad7c
	cp 002h			;ad7d
	ret m			;ad7f
	ld d,d			;ad80
	jp po,09101h		;ad81
	add a,b			;ad84
	jp nz,0c200h		;ad85
	add a,b			;ad88
	jp 0c400h		;ad89
	nop			;ad8c
	push bc			;ad8d
	nop			;ad8e
	add a,000h		;ad8f
	rst 0			;ad91
	nop			;ad92
	ret z			;ad93
	nop			;ad94
	ret m			;ad95
	inc d			;ad96
	ld d,b			;ad97
	ld d,e			;ad98
	ld d,b			;ad99
	ld c,c			;ad9a
	ret po			;ad9b
	ld (bc),a		;ad9c
	jp po,0f801h		;ad9d
	ld d,d			;ada0
	ld sp,05280h		;ada1
	nop			;ada4
	ld d,d			;ada5
lada6h:
	add a,b			;ada6
	ld d,e			;ada7
	nop			;ada8
	ld d,h			;ada9
	nop			;adaa
ladabh:
	ld d,l			;adab
	nop			;adac
ladadh:
	ld d,(hl)		;adad
	nop			;adae
	ld d,a			;adaf
	nop			;adb0
	ld e,b			;adb1
	nop			;adb2
ladb3h:
	ret m			;adb3
	inc d			;adb4
	jr nz,lae0ah		;adb5
	jr nz,lae02h		;adb7
	ret po			;adb9
	ld (bc),a		;adba
	jp po,0f801h		;adbb
ladbeh:
	ld d,d			;adbe
	ld bc,01280h		;adbf
	nop			;adc2
	ld (de),a		;adc3
	add a,b			;adc4
	inc de			;adc5
	nop			;adc6
	inc d			;adc7
	nop			;adc8
	dec d			;adc9
ladcah:
	nop			;adca
	ld d,000h		;adcb
	rla			;adcd
	nop			;adce
	jr ladd1h		;adcf
ladd1h:
	ret m			;add1
	inc d			;add2
	nop			;add3
	ld d,e			;add4
	nop			;add5
	ld c,c			;add6
	ret po			;add7
	ld bc,0feffh		;add8
	ld (bc),a		;addb
	pop hl			;addc
	ld bc,004e4h		;addd
	ld b,0e4h		;ade0
	inc c			;ade2
	rlca			;ade3
	call po,00814h		;ade4
	call po,0091ch		;ade7
	jp po,0f501h		;adea
	ld (hl),b		;aded
	or b			;adee
	ld (hl),c		;adef
	ld h,b			;adf0
	ei			;adf1
	ld a,(bc)		;adf2
	push af			;adf3
	jr nc,lada6h		;adf4
	ld sp,0fb60h		;adf6
	ld a,(bc)		;adf9
	push af			;adfa
	djnz ladadh		;adfb
	ld de,0fb60h		;adfd
	ld a,(bc)		;ae00
	rst 38h			;ae01
lae02h:
	cp 002h			;ae02
	ret m			;ae04
	ld d,d			;ae05
	jp po,0c101h		;ae06
	ld b,b			;ae09
lae0ah:
	jp nz,0c300h		;ae0a
	add a,b			;ae0d
	push bc			;ae0e
	nop			;ae0f
	ret m			;ae10
	dec h			;ae11
	push af			;ae12
	jp nz,0c1d0h		;ae13
	ld h,b			;ae16
	ei			;ae17
	ld a,(bc)		;ae18
	push af			;ae19
	ld b,d			;ae1a
	ret nc			;ae1b
	ld b,c			;ae1c
	ld h,b			;ae1d
	ei			;ae1e
	ld a,(bc)		;ae1f
	push af			;ae20
	ld (de),a		;ae21
	ret nc			;ae22
	ld de,0fb60h		;ae23
	ld a,(bc)		;ae26
	rst 38h			;ae27
	cp 002h			;ae28
	ret po			;ae2a
	ld bc,001e3h		;ae2b
	call po,05400h		;ae2e
	ld (hl),b		;ae31
	ld (hl),h		;ae32
	and b			;ae33
	add a,h			;ae34
	jr nz,ladcah		;ae35
lae37h:
	and b			;ae37
	sub e			;ae38
	jr nz,ladbeh		;ae39
	djnz lae90h		;ae3b
	jr nz,$+37		;ae3d
	djnz lae41h		;ae3f
lae41h:
	nop			;ae41
	inc h			;ae42
	ld (hl),b		;ae43
	ld d,h			;ae44
	and b			;ae45
	ld h,h			;ae46
	jr nz,laebch		;ae47
	and b			;ae49
	ld (hl),e		;ae4a
	jr nz,laeb0h		;ae4b
	djnz lae72h		;ae4d
	jr nz,lae54h		;ae4f
	djnz lae53h		;ae51
lae53h:
	nop			;ae53
lae54h:
	inc d			;ae54
	ld (hl),b		;ae55
	inc d			;ae56
	and b			;ae57
	inc d			;ae58
	jr nz,lae6eh		;ae59
	and b			;ae5b
	inc de			;ae5c
	jr nz,lae72h		;ae5d
	djnz lae74h		;ae5f
	jr nz,$+21		;ae61
	djnz $+1		;ae63
	cp 002h			;ae65
	ret m			;ae67
	ld h,h			;ae68
	jp po,0c401h		;ae69
	ld (hl),b		;ae6c
	ret m			;ae6d
lae6eh:
	inc hl			;ae6e
	call nz,0c4a0h		;ae6f
lae72h:
	jr nz,lae37h		;ae72
lae74h:
	add a,b			;ae74
	jp 0c320h		;ae75
	djnz laecdh		;ae78
	jr nz,$+37		;ae7a
	djnz lae7eh		;ae7c
lae7eh:
	nop			;ae7e
	ret m			;ae7f
	ld h,h			;ae80
	ld h,h			;ae81
	ld (hl),b		;ae82
	ret m			;ae83
	inc hl			;ae84
	ld h,h			;ae85
	and b			;ae86
	ld h,h			;ae87
	jr nz,laeedh		;ae88
lae8ah:
	and b			;ae8a
	ld h,e			;ae8b
	jr nz,laef1h		;ae8c
	djnz laeb3h		;ae8e
lae90h:
	jr nz,lae95h		;ae90
	djnz lae94h		;ae92
lae94h:
	nop			;ae94
lae95h:
	ret m			;ae95
	ld h,h			;ae96
	inc b			;ae97
	ld (hl),b		;ae98
	ret m			;ae99
	inc hl			;ae9a
	inc b			;ae9b
	and b			;ae9c
	inc b			;ae9d
	jr nc,$+5		;ae9e
	and b			;aea0
	inc bc			;aea1
	jr nz,$+5		;aea2
	djnz $+5		;aea4
	jr nz,$+5		;aea6
	djnz lae8ah		;aea8
	ld bc,0f9ffh		;aeaa
	ret po			;aead
	adc a,(hl)		;aeae
	push af			;aeaf
laeb0h:
	add a,c			;aeb0
	add a,b			;aeb1
	add a,c			;aeb2
laeb3h:
	ld b,b			;aeb3
	ei			;aeb4
	ld (de),a		;aeb5
	push af			;aeb6
	ld d,c			;aeb7
	add a,b			;aeb8
	ld d,c			;aeb9
	ld b,b			;aeba
	ei			;aebb
laebch:
	ex af,af'		;aebc
	push af			;aebd
	ld de,01180h		;aebe
	ld b,b			;aec1
	ei			;aec2
	ld b,0ffh		;aec3
	ld sp,hl		;aec5
	adc a,(iy-00bh)		;aec6
	jp 0c200h		;aec9
	add a,b			;aecc
laecdh:
	ei			;aecd
	ld (de),a		;aece
	push af			;aecf
	ld b,e			;aed0
	nop			;aed1
	ld b,d			;aed2
	add a,b			;aed3
	ei			;aed4
	ex af,af'		;aed5
	push af			;aed6
	inc bc			;aed7
	nop			;aed8
	ld (bc),a		;aed9
	add a,b			;aeda
	ei			;aedb
	ld b,0e0h		;aedc
	ld bc,0feffh		;aede
	ld (bc),a		;aee1
	ret po			;aee2
	ld bc,001e4h		;aee3
	ex (sp),hl		;aee6
	ld bc,09031h		;aee7
	ld sp,04150h		;aeea
laeedh:
	adc a,b			;aeed
	ld b,c			;aeee
	ld c,b			;aeef
	ld d,c			;aef0
laef1h:
	add a,b			;aef1
	ld d,c			;aef2
	ld b,b			;aef3
	ld h,c			;aef4
	add a,b			;aef5
	ld h,c			;aef6
	ld b,b			;aef7
	ld (hl),c		;aef8
	add a,b			;aef9
	ld (hl),c		;aefa
	ld b,b			;aefb
	jp m,002feh		;aefc
	ret m			;aeff
	ld h,h			;af00
	jp po,04301h		;af01
	jr nz,laf48h		;af04
	and b			;af06
	ld d,e			;af07
	djnz $+84		;af08
	sub b			;af0a
	ld (hl),e		;af0b
	nop			;af0c
	ld (hl),d		;af0d
	add a,b			;af0e
	sub e			;af0f
	nop			;af10
	sub d			;af11
	add a,b			;af12
	or e			;af13
	nop			;af14
	or d			;af15
	add a,b			;af16
	jp m,0e0f9h		;af17
	adc a,(hl)		;af1a
	push af			;af1b
	add a,c			;af1c
	add a,b			;af1d
	add a,c			;af1e
	ld b,b			;af1f
	ei			;af20
	inc c			;af21
	ld d,c			;af22
	add a,b			;af23
	ld d,c			;af24
	ld b,b			;af25
	jp po,la301h		;af26
	nop			;af29
	and h			;af2a
	nop			;af2b
	and l			;af2c
	nop			;af2d
	and (hl)		;af2e
	nop			;af2f
	and a			;af30
	nop			;af31
	ret po			;af32
	inc bc			;af33
	jp po,la301h		;af34
	add a,b			;af37
	and h			;af38
	add a,b			;af39
	and l			;af3a
	add a,b			;af3b
	and e			;af3c
	ld b,b			;af3d
	and e			;af3e
	ld h,b			;af3f
laf40h:
	and e			;af40
	add a,b			;af41
	and e			;af42
	and b			;af43
	and e			;af44
	ret nz			;af45
	and e			;af46
	ret po			;af47
laf48h:
	and h			;af48
	nop			;af49
	and h			;af4a
	jr nz,laef1h		;af4b
	ld b,b			;af4d
	and h			;af4e
	ld h,b			;af4f
	and h			;af50
	add a,b			;af51
	and h			;af52
	and b			;af53
	and h			;af54
	ret nz			;af55
	and h			;af56
	ret po			;af57
	and l			;af58
	nop			;af59
	and l			;af5a
	jr nz,$-89		;af5b
	ld b,b			;af5d
	and l			;af5e
	ld h,b			;af5f
	and l			;af60
	add a,b			;af61
	and l			;af62
	ret nz			;af63
	jp po,09603h		;af64
	nop			;af67
	sub (hl)		;af68
laf69h:
	ld b,b			;af69
	add a,(hl)		;af6a
	add a,b			;af6b
	add a,(hl)		;af6c
	ret nz			;af6d
	ld (hl),a		;af6e
	nop			;af6f
	jp po,06704h		;af70
	ld b,b			;af73
	ld h,a			;af74
	add a,b			;af75
laf76h:
	ld d,a			;af76
	ret nz			;af77
	ld e,b			;af78
	nop			;af79
	ld c,b			;af7a
	ld b,b			;af7b
laf7ch:
	jr c,$-126		;af7c
	jr z,laf40h		;af7e
	add hl,de		;af80
	nop			;af81
	rst 38h			;af82
	ld sp,hl		;af83
	adc a,(iy-00bh)		;af84
	jp 0c200h		;af87
	add a,b			;af8a
	ei			;af8b
laf8ch:
	inc c			;af8c
laf8dh:
	ld d,e			;af8d
	nop			;af8e
	ld d,d			;af8f
	add a,b			;af90
	ret m			;af91
	jr z,laf76h		;af92
	ld bc,080c2h		;af94
	jp 0c400h		;af97
laf9ah:
	nop			;af9a
	push bc			;af9b
	nop			;af9c
	add a,000h		;af9d
	or d			;af9f
	add a,b			;afa0
	or e			;afa1
	nop			;afa2
	or h			;afa3
	nop			;afa4
	ret m			;afa5
	inc d			;afa6
	jp 0c340h		;afa7
	ld h,b			;afaa
lafabh:
	jp 0c380h		;afab
	and b			;afae
	jp 0c3c0h		;afaf
	ret po			;afb2
	call nz,0c400h		;afb3
lafb6h:
	jr nz,laf7ch		;afb6
	ld b,b			;afb8
	call nz,0c460h		;afb9
	add a,b			;afbc
	call nz,0c4a0h		;afbd
	ret nz			;afc0
	call nz,0c5e0h		;afc1
	nop			;afc4
	push bc			;afc5
	jr nz,laf8dh		;afc6
	ld b,b			;afc8
	push bc			;afc9
	ld h,b			;afca
	push bc			;afcb
	add a,b			;afcc
	or l			;afcd
lafceh:
	ret nz			;afce
	jp po,lb603h		;afcf
	nop			;afd2
	and (hl)		;afd3
	ld b,b			;afd4
	and (hl)		;afd5
	add a,b			;afd6
	sub (hl)		;afd7
lafd8h:
	ret nz			;afd8
	sub a			;afd9
	nop			;afda
	jp po,08704h		;afdb
	ld b,b			;afde
	ld (hl),a		;afdf
	add a,b			;afe0
	ld h,a			;afe1
	ret nz			;afe2
	ld e,b			;afe3
lafe4h:
	nop			;afe4
	ld c,b			;afe5
	ld b,b			;afe6
	jr c,laf69h		;afe7
	jr z,lafabh		;afe9
	add hl,de		;afeb
	nop			;afec
	add hl,bc		;afed
	ld b,b			;afee
	rst 38h			;afef
laff0h:
	cp 002h			;aff0
	ret po			;aff2
	ld bc,001e2h		;aff3
	ld h,d			;aff6
	sub b			;aff7
	ld (hl),d		;aff8
laff9h:
	jr nc,laf7ch		;aff9
	ret p			;affb
	sub c			;affc
	xor b			;affd
	and c			;affe
	ld h,b			;afff
	and c			;b000
	inc a			;b001
	and c			;b002
lb003h:
	ld b,d			;b003
	and c			;b004
	inc a			;b005
	ld h,d			;b006
	sub b			;b007
	ld (hl),d		;b008
	jr nc,laf8ch		;b009
	ret pe			;b00b
	sub c			;b00c
lb00dh:
	and b			;b00d
	and c			;b00e
	ld e,b			;b00f
	and c			;b010
	inc (hl)		;b011
	and c			;b012
	ld a,(09062h)		;b013
	ld (hl),d		;b016
lb017h:
	jr nc,laf9ah		;b017
	ret po			;b019
	sub c			;b01a
	sbc a,b			;b01b
	sub c			;b01c
	ld d,b			;b01d
	sub c			;b01e
	inc l			;b01f
	sub c			;b020
	ld (08862h),a		;b021
	ld (hl),d		;b024
	jr z,$-125		;b025
	ret c			;b027
	sub c			;b028
	sub b			;b029
	sub c			;b02a
	ld c,b			;b02b
	sub c			;b02c
	inc h			;b02d
	sub c			;b02e
	ld hl,(08062h)		;b02f
	ld (hl),d		;b032
lb033h:
	jr nz,lafb6h		;b033
	ret nc			;b035
	sub c			;b036
	adc a,b			;b037
	sub c			;b038
	ld b,b			;b039
	sub c			;b03a
lb03bh:
	inc e			;b03b
	ld h,d			;b03c
	ld a,b			;b03d
	ld (hl),d		;b03e
	jr $-125		;b03f
	ret z			;b041
	sub c			;b042
	add a,b			;b043
lb044h:
	sub c			;b044
	jr c,lafd8h		;b045
	inc d			;b047
	ld h,d			;b048
	ld (hl),b		;b049
	ld (hl),d		;b04a
	djnz lafceh		;b04b
	ret nz			;b04d
	sub c			;b04e
	ld a,b			;b04f
lb050h:
	sub c			;b050
	jr nc,lafe4h		;b051
	inc c			;b053
	ld h,d			;b054
	ld l,b			;b055
	ld (hl),d		;b056
	ex af,af'		;b057
	add a,c			;b058
	cp b			;b059
	sub c			;b05a
	ld (hl),b		;b05b
	sub c			;b05c
	jr z,laff0h		;b05d
	inc b			;b05f
	ld h,d			;b060
	ld h,b			;b061
	ld (hl),c		;b062
	ret po			;b063
	add a,c			;b064
	add a,b			;b065
	sub c			;b066
	jr z,laff9h		;b067
	defb 0fdh,062h ;ld iyh,d	;b069
	ld e,b			;b06b
	ld (hl),c		;b06c
	ret c			;b06d
	add a,c			;b06e
	ld a,b			;b06f
	sub c			;b070
	jr nz,lb003h		;b071
	call p,05062h		;b073
	ld (hl),c		;b076
	ret nc			;b077
	add a,c			;b078
	ld (hl),b		;b079
	sub c			;b07a
	jr lb00dh		;b07b
	call pe,04862h		;b07d
	ld (hl),c		;b080
	ret z			;b081
	add a,c			;b082
	ld l,b			;b083
lb084h:
	sub c			;b084
	djnz lb017h		;b085
	call po,04062h		;b087
	ld (hl),c		;b08a
	ret nz			;b08b
	add a,c			;b08c
	ld h,b			;b08d
	sub c			;b08e
	ex af,af'		;b08f
	sub b			;b090
	call c,03862h		;b091
	ld (hl),c		;b094
	cp b			;b095
	add a,c			;b096
	ld e,b			;b097
	sub c			;b098
	nop			;b099
	sub b			;b09a
	call nc,03072h		;b09b
	add a,c			;b09e
	sub b			;b09f
lb0a0h:
	sub c			;b0a0
	jr nz,lb033h		;b0a1
	call z,02872h		;b0a3
	add a,c			;b0a6
	adc a,b			;b0a7
	sub c			;b0a8
	jr lb03bh		;b0a9
	call nz,072f5h		;b0ab
lb0aeh:
	jr nz,$-125		;b0ae
	add a,b			;b0b0
	sub c			;b0b1
	djnz lb044h		;b0b2
	cp b			;b0b4
	ei			;b0b5
	rst 38h			;b0b6
	rst 38h			;b0b7
	cp 002h			;b0b8
lb0bah:
	ret m			;b0ba
	inc de			;b0bb
	jp po,09201h		;b0bc
	sub b			;b0bf
	and d			;b0c0
	jr nc,$-77		;b0c1
	defb 0fdh,0c1h,0a8h ;illegal sequence	;b0c3
lb0c6h:
	pop bc			;b0c6
	ld h,b			;b0c7
	pop bc			;b0c8
	inc a			;b0c9
	pop bc			;b0ca
	ld b,d			;b0cb
	pop bc			;b0cc
	inc a			;b0cd
	sub d			;b0ce
	sub b			;b0cf
lb0d0h:
	and d			;b0d0
	jr nc,lb084h		;b0d1
	ret pe			;b0d3
	pop bc			;b0d4
	and b			;b0d5
	pop bc			;b0d6
	ld e,b			;b0d7
	pop bc			;b0d8
	inc (hl)		;b0d9
	pop bc			;b0da
	ld a,(09092h)		;b0db
	and d			;b0de
	jr nc,$-77		;b0df
	ret po			;b0e1
	pop bc			;b0e2
	sbc a,b			;b0e3
	pop bc			;b0e4
	ld d,b			;b0e5
	pop bc			;b0e6
	inc l			;b0e7
lb0e8h:
	pop bc			;b0e8
	ld (08892h),a		;b0e9
	and d			;b0ec
	jr z,lb0a0h		;b0ed
	ret c			;b0ef
	pop bc			;b0f0
lb0f1h:
	sub b			;b0f1
	pop bc			;b0f2
	ld c,b			;b0f3
	pop bc			;b0f4
	inc h			;b0f5
	pop bc			;b0f6
	ld hl,(08092h)		;b0f7
	and d			;b0fa
lb0fbh:
	jr nz,lb0aeh		;b0fb
	ret nc			;b0fd
	pop bc			;b0fe
	adc a,b			;b0ff
	pop bc			;b100
lb101h:
	ld b,b			;b101
	pop bc			;b102
	inc e			;b103
	sub d			;b104
lb105h:
	ld a,b			;b105
	and d			;b106
	jr lb0bah		;b107
	ret z			;b109
	pop bc			;b10a
	add a,b			;b10b
	pop bc			;b10c
	jr c,lb0d0h		;b10d
lb10fh:
	inc d			;b10f
	sub d			;b110
	ld (hl),b		;b111
	and d			;b112
	djnz lb0c6h		;b113
	ret nz			;b115
	pop bc			;b116
	ld a,b			;b117
	pop bc			;b118
	jr nc,$-61		;b119
	inc c			;b11b
	sub d			;b11c
	ld l,b			;b11d
	and d			;b11e
	ex af,af'		;b11f
	or c			;b120
	cp b			;b121
	pop bc			;b122
	ld (hl),b		;b123
	pop bc			;b124
	jr z,lb0e8h		;b125
	inc b			;b127
	sub d			;b128
lb129h:
	ld h,b			;b129
	and c			;b12a
lb12bh:
	ret po			;b12b
	or c			;b12c
	add a,b			;b12d
	pop bc			;b12e
	jr z,lb0f1h		;b12f
	ret p			;b131
	sub d			;b132
lb133h:
	ld e,b			;b133
	and c			;b134
	ret c			;b135
	or c			;b136
	ld a,b			;b137
	pop bc			;b138
	jr nz,lb0fbh		;b139
	call p,05092h		;b13b
	and c			;b13e
	ret nc			;b13f
	or c			;b140
	ld (hl),b		;b141
	pop bc			;b142
	jr lb105h		;b143
	call pe,04892h		;b145
	and c			;b148
	ret z			;b149
	or c			;b14a
	ld l,b			;b14b
	pop bc			;b14c
	djnz lb10fh		;b14d
	call po,04092h		;b14f
	and c			;b152
	ret nz			;b153
	or c			;b154
	ld h,b			;b155
	pop bc			;b156
	ex af,af'		;b157
	ret nz			;b158
	call c,03892h		;b159
	and c			;b15c
	cp b			;b15d
	or c			;b15e
	ld e,b			;b15f
	pop bc			;b160
	nop			;b161
	ret nz			;b162
	call nc,03092h		;b163
	or c			;b166
	sub b			;b167
	pop bc			;b168
	jr nz,lb12bh		;b169
	call z,028a2h		;b16b
	or c			;b16e
	adc a,b			;b16f
	pop bc			;b170
	jr lb133h		;b171
	call nz,sub_a2f5h	;b173
	jr nz,lb129h		;b176
	add a,b			;b178
	pop bc			;b179
	djnz $-62		;b17a
	cp h			;b17c
	ei			;b17d
	rst 38h			;b17e
	rst 38h			;b17f
	cp 002h			;b180
	pop hl			;b182
	ld (bc),a		;b183
	call po,0080ah		;b184
	call po,00810h		;b187
	call po,00814h		;b18a
	call po,0081ah		;b18d
	call po,0081fh		;b190
	pop hl			;b193
	ld (bc),a		;b194
	push af			;b195
	ld sp,hl		;b196
	xor c			;b197
	sub c			;b198
	ei			;b199
	inc bc			;b19a
	rst 30h			;b19b
	ld (bc),a		;b19c
	ld sp,hl		;b19d
	xor c			;b19e
	sub c			;b19f
	push af			;b1a0
	rst 30h			;b1a1
	inc b			;b1a2
	ld sp,hl		;b1a3
lb1a4h:
	xor c			;b1a4
	sub c			;b1a5
	ei			;b1a6
	ld (bc),a		;b1a7
	rst 38h			;b1a8
	call po,00815h		;b1a9
	call po,00816h		;b1ac
lb1afh:
	call po,00817h		;b1af
	call po,00818h		;b1b2
	call po,00819h		;b1b5
	call po,0081ah		;b1b8
	call po,0081bh		;b1bb
	call po,0081ch		;b1be
	call po,0081dh		;b1c1
	call po,0081eh		;b1c4
	jp m,002feh		;b1c7
	ret m			;b1ca
	jr z,lb1afh		;b1cb
	ld bc,040b1h		;b1cd
	or d			;b1d0
	jp (hl)			;b1d1
	or e			;b1d2
	adc a,0b5h		;b1d3
	inc (hl)		;b1d5
	or (hl)			;b1d6
	or (hl)			;b1d7
	or a			;b1d8
	sbc a,(hl)		;b1d9
	or d			;b1da
	add a,b			;b1db
	and e			;b1dc
	nop			;b1dd
	and e			;b1de
	add a,b			;b1df
	and h			;b1e0
	nop			;b1e1
	and h			;b1e2
	add a,b			;b1e3
	and l			;b1e4
	nop			;b1e5
	and l			;b1e6
	add a,b			;b1e7
	and l			;b1e8
	nop			;b1e9
	and h			;b1ea
	nop			;b1eb
	and e			;b1ec
	nop			;b1ed
	and d			;b1ee
	add a,b			;b1ef
	push af			;b1f0
lb1f1h:
	sub d			;b1f1
	jr z,$-109		;b1f2
	jr z,lb1f1h		;b1f4
	dec de			;b1f6
	push af			;b1f7
lb1f8h:
	ld b,d			;b1f8
	jr z,lb23ch		;b1f9
	jr z,lb1f8h		;b1fb
	ld a,(bc)		;b1fd
	push af			;b1fe
lb1ffh:
	ld (02128h),hl		;b1ff
	jr z,lb1ffh		;b202
	ld a,(bc)		;b204
	push af			;b205
lb206h:
	ld (bc),a		;b206
	jr z,$+3		;b207
	jr z,lb206h		;b209
	add hl,bc		;b20b
	rst 38h			;b20c
	cp 002h			;b20d
	ret po			;b20f
	ld bc,001e2h		;b210
	push af			;b213
	ld h,d			;b214
	ld e,a			;b215
	ld (hl),d		;b216
	nop			;b217
	add a,e			;b218
	ld e,a			;b219
	add a,h			;b21a
	sub b			;b21b
	add a,e			;b21c
	ld e,a			;b21d
	add a,e			;b21e
	jr nc,lb1a4h		;b21f
	ld h,b			;b221
	add a,e			;b222
	nop			;b223
	add a,d			;b224
	ld h,b			;b225
	add a,e			;b226
	rst 28h			;b227
lb228h:
	add a,h			;b228
	sub b			;b229
	add a,l			;b22a
	jr nc,lb228h		;b22b
	rlca			;b22d
	push af			;b22e
	ld b,d			;b22f
	ld e,a			;b230
	ld d,d			;b231
	nop			;b232
	ld h,e			;b233
	ld e,a			;b234
	ld h,h			;b235
	sub b			;b236
	ld h,e			;b237
lb238h:
	ld e,a			;b238
	ld h,e			;b239
	jr nc,lb29fh		;b23a
lb23ch:
	ld h,b			;b23c
	ld h,e			;b23d
	nop			;b23e
	ld h,d			;b23f
	ld h,b			;b240
	ld h,e			;b241
	rst 28h			;b242
lb243h:
	ld h,h			;b243
	sub b			;b244
	ld h,l			;b245
	jr nc,lb243h		;b246
	inc bc			;b248
	push af			;b249
	ld (bc),a		;b24a
	ld e,a			;b24b
	ld (de),a		;b24c
	nop			;b24d
	inc de			;b24e
	ld e,a			;b24f
	inc d			;b250
	sub b			;b251
	inc de			;b252
	ld e,a			;b253
	inc bc			;b254
	jr nc,lb25ah		;b255
	ld h,b			;b257
	inc bc			;b258
	nop			;b259
lb25ah:
	ld (bc),a		;b25a
	ld h,b			;b25b
	inc bc			;b25c
	rst 28h			;b25d
	inc b			;b25e
	sub b			;b25f
	rst 38h			;b260
	cp 002h			;b261
	ret m			;b263
	inc hl			;b264
	jp po,0f501h		;b265
	ld (hl),d		;b268
	ld e,a			;b269
	sub d			;b26a
	nop			;b26b
	jp 0c45fh		;b26c
	sub b			;b26f
	jp 0c35fh		;b270
	jr nc,lb238h		;b273
	ld h,b			;b275
	jp 0c200h		;b276
	ld h,b			;b279
	jp 0c4efh		;b27a
	sub b			;b27d
	push bc			;b27e
	jr nc,$-3		;b27f
	rlca			;b281
	push af			;b282
lb283h:
	ld b,d			;b283
	ld e,a			;b284
	ld d,d			;b285
	nop			;b286
	ld h,e			;b287
	ld e,a			;b288
	ld h,h			;b289
	sub b			;b28a
	ld h,e			;b28b
	ld e,a			;b28c
	ld h,e			;b28d
	jr nc,lb2f3h		;b28e
	ld h,b			;b290
	ld h,e			;b291
	nop			;b292
	ld h,d			;b293
	ld h,b			;b294
	ld h,e			;b295
lb296h:
	rst 28h			;b296
lb297h:
	ld h,h			;b297
	sub b			;b298
	ld h,l			;b299
	jr nc,lb297h		;b29a
	inc bc			;b29c
	push af			;b29d
	ld (bc),a		;b29e
lb29fh:
	ld e,a			;b29f
	ld (de),a		;b2a0
	nop			;b2a1
	inc de			;b2a2
lb2a3h:
	ld e,a			;b2a3
	inc d			;b2a4
lb2a5h:
	sub b			;b2a5
lb2a6h:
	inc de			;b2a6
	ld e,a			;b2a7
	inc bc			;b2a8
	jr nc,lb2aeh		;b2a9
	ld h,b			;b2ab
	inc bc			;b2ac
	nop			;b2ad
lb2aeh:
	ld (bc),a		;b2ae
	ld h,b			;b2af
	inc bc			;b2b0
	rst 28h			;b2b1
	inc b			;b2b2
	sub b			;b2b3
	dec b			;b2b4
	jr nc,$+1		;b2b5
	cp 002h			;b2b7
	ret po			;b2b9
	inc bc			;b2ba
	jp po,0c201h		;b2bb
	djnz lb283h		;b2be
	ld b,b			;b2c0
	add a,020h		;b2c1
	ret z			;b2c3
	inc hl			;b2c4
	call nz,0c520h		;b2c5
	ld (hl),b		;b2c8
	rst 0			;b2c9
	or b			;b2ca
	call nz,0c780h		;b2cb
	jr nc,lb296h		;b2ce
	add a,b			;b2d0
	add a,080h		;b2d1
	ret z			;b2d3
	nop			;b2d4
	push af			;b2d5
	add a,0a0h		;b2d6
	ret z			;b2d8
	nop			;b2d9
	push bc			;b2da
	jr nc,lb2a6h		;b2db
	jr nz,lb2a3h		;b2dd
	ld d,h			;b2df
	add a,021h		;b2e0
	ret			;b2e2
	ld h,b			;b2e3
	add a,020h		;b2e4
	ei			;b2e6
	ld (bc),a		;b2e7
	or a			;b2e8
	jr nz,lb29fh		;b2e9
	djnz lb2a5h		;b2eb
	ld b,e			;b2ed
	dec h			;b2ee
	ld h,b			;b2ef
	cp c			;b2f0
	ld h,b			;b2f1
	or h			;b2f2
lb2f3h:
	nop			;b2f3
	or l			;b2f4
	ld h,b			;b2f5
lb2f6h:
	or e			;b2f6
	jr nc,$-59		;b2f7
	jr nc,$-58		;b2f9
	ld b,b			;b2fb
	push bc			;b2fc
	ld d,b			;b2fd
	jp 0c562h		;b2fe
	nop			;b301
	and h			;b302
	ld b,b			;b303
	add a,e			;b304
	add a,b			;b305
	sub h			;b306
	nop			;b307
lb308h:
	sub l			;b308
	ld b,b			;b309
	sub e			;b30a
	add a,b			;b30b
lb30ch:
	sub d			;b30c
	ret nz			;b30d
	ld sp,hl		;b30e
lb30fh:
	sub a			;b30f
	sub e			;b310
	rst 30h			;b311
lb312h:
	inc bc			;b312
	ld sp,hl		;b313
	sub a			;b314
lb315h:
	sub e			;b315
	rst 30h			;b316
	dec b			;b317
	ld sp,hl		;b318
	sub a			;b319
	sub e			;b31a
	rst 30h			;b31b
	ex af,af'		;b31c
	ld sp,hl		;b31d
	sub a			;b31e
	sub e			;b31f
	rst 38h			;b320
	cp 002h			;b321
	ret m			;b323
	jr z,lb308h		;b324
	ld bc,010c1h		;b326
	jp 0c640h		;b329
	jr nz,lb2f6h		;b32c
	inc hl			;b32e
	call nz,0c520h		;b32f
lb332h:
	ld (hl),b		;b332
	pop bc			;b333
	or b			;b334
	jp nz,0c380h		;b335
	jr nc,lb332h		;b338
	ld h,h			;b33a
	jp 0c680h		;b33b
	add a,b			;b33e
	jp 0f500h		;b33f
	jp 0c8a0h		;b342
	nop			;b345
	push bc			;b346
	jr nc,lb312h		;b347
	jr nz,lb30fh		;b349
	ld d,h			;b34b
	ret m			;b34c
	jr z,lb315h		;b34d
	ld hl,060c9h		;b34f
	add a,020h		;b352
	ei			;b354
	ld (bc),a		;b355
	or d			;b356
	jr nz,lb30ch		;b357
	djnz lb30fh		;b359
	ld b,e			;b35b
	dec h			;b35c
	ld h,b			;b35d
	or l			;b35e
	ld h,b			;b35f
	or h			;b360
	nop			;b361
lb362h:
	or l			;b362
lb363h:
	ld h,b			;b363
	ret m			;b364
	ld h,h			;b365
	or e			;b366
	jr nc,$-60		;b367
	jr nc,lb363h		;b369
	jr z,$-58		;b36b
	ld b,b			;b36d
	push bc			;b36e
	ld d,b			;b36f
	jp 0c562h		;b370
	nop			;b373
lb374h:
	and h			;b374
	ld b,b			;b375
	add a,e			;b376
	add a,b			;b377
	sub h			;b378
	nop			;b379
	sub l			;b37a
	ld b,b			;b37b
	sub e			;b37c
	add a,b			;b37d
	sub d			;b37e
	ret nz			;b37f
	rst 30h			;b380
	ld (bc),a		;b381
	ld sp,hl		;b382
	sub a			;b383
	sub e			;b384
	rst 30h			;b385
lb386h:
	ld b,0f9h		;b386
	sub a			;b388
	sub e			;b389
	rst 30h			;b38a
	ex af,af'		;b38b
	ld sp,hl		;b38c
	sub a			;b38d
	sub e			;b38e
	rst 30h			;b38f
	ld a,(bc)		;b390
	ld sp,hl		;b391
	sub a			;b392
	sub e			;b393
	ret po			;b394
	inc bc			;b395
	rst 38h			;b396
	and d			;b397
	jr nz,$-91		;b398
	djnz $-90		;b39a
	ld b,e			;b39c
	and l			;b39d
	ld h,b			;b39e
	and l			;b39f
	ld h,b			;b3a0
	and h			;b3a1
	nop			;b3a2
	and l			;b3a3
	ld h,b			;b3a4
	and e			;b3a5
	jr nc,$-92		;b3a6
	jr nc,$-90		;b3a8
	ld b,b			;b3aa
	and l			;b3ab
	ld d,b			;b3ac
	and (hl)		;b3ad
	ld h,d			;b3ae
	and a			;b3af
	nop			;b3b0
	xor b			;b3b1
	ld b,b			;b3b2
	xor c			;b3b3
	add a,b			;b3b4
	xor d			;b3b5
	nop			;b3b6
	xor e			;b3b7
	ld b,b			;b3b8
	xor h			;b3b9
	add a,b			;b3ba
	xor l			;b3bb
	ret nz			;b3bc
	jp m,002feh		;b3bd
	ret po			;b3c0
	ld (bc),a		;b3c1
	xor 001h		;b3c2
	jp po,05001h		;b3c4
	ld b,b			;b3c7
	ld d,b			;b3c8
	ld h,b			;b3c9
	ld b,b			;b3ca
	ld b,b			;b3cb
	ld b,b			;b3cc
	add a,b			;b3cd
	ld b,b			;b3ce
lb3cfh:
	ld h,b			;b3cf
	ld b,b			;b3d0
	ld b,b			;b3d1
	ld b,b			;b3d2
	jr nc,lb3d5h		;b3d3
lb3d5h:
	ld h,b			;b3d5
	nop			;b3d6
	jr nc,lb3d9h		;b3d7
lb3d9h:
	add a,b			;b3d9
	ld b,b			;b3da
	jr nc,lb41dh		;b3db
	ld h,b			;b3dd
	jr nc,$+66		;b3de
	jr nc,lb362h		;b3e0
	jr nc,lb444h		;b3e2
	jr nc,lb426h		;b3e4
	jr nc,lb418h		;b3e6
	ret po			;b3e8
	inc bc			;b3e9
	jp po,02001h		;b3ea
	ld b,b			;b3ed
	jr nz,$+98		;b3ee
	jr nz,lb432h		;b3f0
	jr nz,lb374h		;b3f2
	jr nz,lb456h		;b3f4
	jr nz,lb438h		;b3f6
	jr nz,lb42ah		;b3f8
	ret po			;b3fa
	inc bc			;b3fb
	jp po,01001h		;b3fc
	ld b,b			;b3ff
	djnz lb462h		;b400
	djnz lb444h		;b402
	djnz lb386h		;b404
	djnz lb468h		;b406
	djnz $+66		;b408
	djnz lb43ch		;b40a
	ret po			;b40c
	inc bc			;b40d
	jp po,00001h		;b40e
	ld b,b			;b411
	nop			;b412
	ld h,b			;b413
	nop			;b414
	ld b,b			;b415
	nop			;b416
	add a,b			;b417
lb418h:
	nop			;b418
	ld h,b			;b419
	rst 38h			;b41a
	cp 002h			;b41b
lb41dh:
	ret m			;b41d
	dec c			;b41e
	jp po,09001h		;b41f
	ld b,b			;b422
	sub b			;b423
	ld h,b			;b424
	add a,b			;b425
lb426h:
	ld b,b			;b426
	add a,b			;b427
	add a,b			;b428
	add a,b			;b429
lb42ah:
	ld h,b			;b42a
	add a,b			;b42b
	ld b,b			;b42c
	ld (hl),b		;b42d
	jr nc,lb430h		;b42e
lb430h:
	ld h,b			;b430
	nop			;b431
lb432h:
	ld b,b			;b432
	nop			;b433
	add a,b			;b434
	ld d,b			;b435
	ld b,b			;b436
	ld b,b			;b437
lb438h:
	ld h,b			;b438
	ld b,b			;b439
	ld b,b			;b43a
	ld b,b			;b43b
lb43ch:
	add a,b			;b43c
	ld b,b			;b43d
	ld h,b			;b43e
	ld b,b			;b43f
	ld b,b			;b440
	jr nc,lb473h		;b441
	ret po			;b443
lb444h:
	inc bc			;b444
	jp po,02001h		;b445
	ld b,b			;b448
	jr nz,lb4abh		;b449
	jr nz,lb48dh		;b44b
	jr nz,lb3cfh		;b44d
	jr nz,lb4b1h		;b44f
	jr nz,lb493h		;b451
	jr nz,lb485h		;b453
	ret po			;b455
lb456h:
	inc bc			;b456
	jp po,00001h		;b457
	ld b,b			;b45a
	nop			;b45b
	ld h,b			;b45c
	nop			;b45d
	ld b,b			;b45e
	nop			;b45f
lb460h:
	add a,b			;b460
	nop			;b461
lb462h:
	ld h,b			;b462
	nop			;b463
	ld b,b			;b464
	nop			;b465
	jr nc,lb460h		;b466
lb468h:
	add hl,de		;b468
	ret po			;b469
	inc bc			;b46a
	jp po,00001h		;b46b
	ld b,b			;b46e
	nop			;b46f
	ld h,b			;b470
	nop			;b471
	ld b,b			;b472
lb473h:
	nop			;b473
	add a,b			;b474
	nop			;b475
	ld h,b			;b476
	nop			;b477
	ld b,b			;b478
	nop			;b479
	jr nc,$+1		;b47a
	cp 001h			;b47c
	pop af			;b47e
	ld h,d			;b47f
	jp (hl)			;b480
	add hl,bc		;b481
	jp pe,0d002h		;b482
lb485h:
	ld c,a			;b485
	ld c,a			;b486
	add a,(iy-06ch)		;b487
	cp 001h			;b48a
	pop af			;b48c
lb48dh:
	ld h,d			;b48d
	jp (hl)			;b48e
	add hl,bc		;b48f
	jp pe,0d002h		;b490
lb493h:
	ld l,a			;b493
	ld l,a			;b494
	defb 0fdh,094h ;sub iyh	;b495
	sub h			;b497
	cp 001h			;b498
	pop af			;b49a
	ld h,d			;b49b
	jp (hl)			;b49c
	add hl,bc		;b49d
	jp pe,0d002h		;b49e
	cpl			;b4a1
	cpl			;b4a2
	defb 0fdh,0a2h,094h ;illegal sequence	;b4a3
	cp 001h			;b4a6
	ret m			;b4a8
	dec b			;b4a9
	pop af			;b4aa
lb4abh:
	ld h,e			;b4ab
	jp (hl)			;b4ac
	add hl,bc		;b4ad
	jp pe,0d201h		;b4ae
lb4b1h:
	sbc a,a			;b4b1
	defb 0fdh,0b1h,094h ;illegal sequence	;b4b2
	cp 001h			;b4b5
	ret m			;b4b7
	dec b			;b4b8
	pop af			;b4b9
	ld h,e			;b4ba
	jp (hl)			;b4bb
	add hl,bc		;b4bc
	jp pe,0d201h		;b4bd
	ld c,a			;b4c0
	defb 0fdh,0c0h,094h ;illegal sequence	;b4c1
	cp 001h			;b4c4
	ret m			;b4c6
	dec b			;b4c7
	pop af			;b4c8
	ld h,e			;b4c9
	jp (hl)			;b4ca
	add hl,bc		;b4cb
	jp pe,0d201h		;b4cc
	cpl			;b4cf
	defb 0fdh,0cfh,094h ;illegal sequence	;b4d0
	cp 001h			;b4d3
	ret m			;b4d5
	dec b			;b4d6
	pop af			;b4d7
	ld (hl),d		;b4d8
	jp (hl)			;b4d9
	add hl,bc		;b4da
	jp pe,0d102h		;b4db
	cp a			;b4de
	defb 0fdh,0deh,094h ;illegal sequence	;b4df
	cp 001h			;b4e2
	ret m			;b4e4
	dec b			;b4e5
	pop af			;b4e6
	ld h,d			;b4e7
	xor 001h		;b4e8
	jp (hl)			;b4ea
	add hl,bc		;b4eb
	jp pe,0d101h		;b4ec
	cp a			;b4ef
	defb 0fdh,0efh,094h ;illegal sequence	;b4f0
	cp 002h			;b4f3
	jp po,0ee01h		;b4f5
	inc bc			;b4f8
	and h			;b4f9
	add a,b			;b4fa
	and h			;b4fb
	ret nz			;b4fc
	and l			;b4fd
	nop			;b4fe
	and l			;b4ff
	add a,b			;b500
	and (hl)		;b501
	nop			;b502
	and (hl)		;b503
	add a,b			;b504
	and a			;b505
	nop			;b506
	and a			;b507
	add a,b			;b508
	push af			;b509
	rst 30h			;b50a
	ld (bc),a		;b50b
	ld sp,hl		;b50c
	in a,(096h)		;b50d
	ei			;b50f
	inc bc			;b510
	rst 30h			;b511
	dec b			;b512
	ld sp,hl		;b513
	in a,(096h)		;b514
	rst 30h			;b516
	ex af,af'		;b517
	ld sp,hl		;b518
	in a,(096h)		;b519
	rst 30h			;b51b
	ld a,(bc)		;b51c
	ld sp,hl		;b51d
	in a,(096h)		;b51e
	rst 30h			;b520
	inc c			;b521
	ld sp,hl		;b522
	in a,(096h)		;b523
	rst 38h			;b525
	cp 002h			;b526
	ret po			;b528
	ld bc,001e2h		;b529
	and h			;b52c
	add a,b			;b52d
	and h			;b52e
	ret nz			;b52f
	and l			;b530
	nop			;b531
	and l			;b532
	add a,b			;b533
	and (hl)		;b534
	nop			;b535
	and (hl)		;b536
	add a,b			;b537
	and a			;b538
	nop			;b539
	and a			;b53a
	add a,b			;b53b
	jp po,06002h		;b53c
	rlca			;b53f
	call p,00908h		;b540
	ld a,(bc)		;b543
	dec bc			;b544
	inc c			;b545
	dec c			;b546
	ld c,00fh		;b547
	djnz lb55ch		;b549
	ld (de),a		;b54b
	inc de			;b54c
	inc d			;b54d
	dec d			;b54e
	ld d,017h		;b54f
	jr lb56ch		;b551
	ld a,(de)		;b553
	dec de			;b554
	inc e			;b555
	dec e			;b556
	or 050h			;b557
	ld e,0f4h		;b559
	rra			;b55b
lb55ch:
	jr nz,$+35		;b55c
	ld (02423h),hl		;b55e
	dec h			;b561
	ld h,027h		;b562
	jr z,$+43		;b564
	ld hl,(02c2bh)		;b566
	dec l			;b569
	ld l,02fh		;b56a
lb56ch:
	jr nc,$+51		;b56c
	ld (03433h),a		;b56e
	dec (hl)		;b571
	ld (hl),0f6h		;b572
	ld b,b			;b574
	scf			;b575
	call p,03938h		;b576
	ld a,(03c3bh)		;b579
	dec a			;b57c
	ccf			;b57d
	or 030h			;b57e
	ld b,c			;b580
	jr nz,$+68		;b581
	djnz $+69		;b583
	nop			;b585
	ld b,h			;b586
	ret po			;b587
	ld a,(bc)		;b588
	rst 38h			;b589
	cp 002h			;b58a
	pop hl			;b58c
	ld bc,013e4h		;b58d
	ex af,af'		;b590
	call po,00b1dh		;b591
	call po,00c1fh		;b594
	call po,00b1eh		;b597
	call po,00a1dh		;b59a
	call po,00a1ch		;b59d
	pop hl			;b5a0
	inc bc			;b5a1
	call po,00b02h		;b5a2
	call po,00a03h		;b5a5
	call po,00904h		;b5a8
	call po,00a05h		;b5ab
	call po,00906h		;b5ae
	call po,00907h		;b5b1
	call po,00909h		;b5b4
	call po,0090bh		;b5b7
	call po,0090ch		;b5ba
	call po,0090dh		;b5bd
	call po,0090eh		;b5c0
	call po,0090fh		;b5c3
	call po,00910h		;b5c6
	call po,00911h		;b5c9
	call po,00912h		;b5cc
	call po,00913h		;b5cf
	call po,00914h		;b5d2
	call po,00915h		;b5d5
	call po,00916h		;b5d8
	call po,00917h		;b5db
	call po,00918h		;b5de
	call po,00919h		;b5e1
	call po,0091ah		;b5e4
	call po,0091bh		;b5e7
	call po,0091dh		;b5ea
	call po,0091fh		;b5ed
	add hl,bc		;b5f0
	ex af,af'		;b5f1
	rlca			;b5f2
	ld b,005h		;b5f3
	inc b			;b5f5
	inc bc			;b5f6
	inc bc			;b5f7
	ld (bc),a		;b5f8
	ld (bc),a		;b5f9
	ld bc,00001h		;b5fa
	nop			;b5fd
	ret po			;b5fe
	rrca			;b5ff
	rst 38h			;b600
	cp 002h			;b601
lb603h:
	jp po,0f801h		;b603
	ld h,b			;b606
	jp 0c300h		;b607
	ld b,b			;b60a
	jp 0c480h		;b60b
	nop			;b60e
	call nz,0c580h		;b60f
	nop			;b612
	push bc			;b613
	add a,b			;b614
	add a,000h		;b615
	jp nz,0c280h		;b617
	and b			;b61a
	jp nz,0c3d0h		;b61b
	nop			;b61e
	jp 0c340h		;b61f
	add a,b			;b622
	jp 0c4c0h		;b623
	nop			;b626
	call nz,0f940h		;b627
	ld (bc),a		;b62a
	sub a			;b62b
	ret po			;b62c
	inc d			;b62d
	rst 38h			;b62e
	cp 002h			;b62f
	jp po,0f801h		;b631
	ld h,b			;b634
	jp 0c380h		;b635
	ret nz			;b638
	call nz,0c400h		;b639
	add a,b			;b63c
	push bc			;b63d
	nop			;b63e
	push bc			;b63f
	add a,b			;b640
	add a,000h		;b641
	add a,080h		;b643
	jp nz,0c2c0h		;b645
	ret po			;b648
	jp 0c320h		;b649
	ld b,b			;b64c
	jp 0c380h		;b64d
	ret nz			;b650
	call nz,0c400h		;b651
	ld b,b			;b654
	ld sp,hl		;b655
	ld (bc),a		;b656
	sub a			;b657
	ret po			;b658
	dec d			;b659
	rst 38h			;b65a
	cp 002h			;b65b
	jp po,0f801h		;b65d
	ld h,b			;b660
	call nz,0c480h		;b661
	ret nz			;b664
	push bc			;b665
	nop			;b666
	push bc			;b667
	add a,b			;b668
	add a,000h		;b669
	add a,080h		;b66b
	rst 0			;b66d
	nop			;b66e
	rst 0			;b66f
	add a,b			;b670
	ret m			;b671
	ld e,d			;b672
	push af			;b673
	ld sp,hl		;b674
	in a,(096h)		;b675
	ei			;b677
	inc bc			;b678
	rst 30h			;b679
	inc b			;b67a
	ld sp,hl		;b67b
	in a,(096h)		;b67c
	rst 30h			;b67e
	rlca			;b67f
	ld sp,hl		;b680
	in a,(096h)		;b681
	rst 30h			;b683
	ld a,(bc)		;b684
	ld sp,hl		;b685
	in a,(096h)		;b686
	rst 30h			;b688
	inc c			;b689
	ld sp,hl		;b68a
	in a,(096h)		;b68b
	rst 38h			;b68d
	cp 002h			;b68e
	jp po,0f801h		;b690
	dec d			;b693
	call nz,0c480h		;b694
	ret nz			;b697
	push bc			;b698
	nop			;b699
	push bc			;b69a
	add a,b			;b69b
	add a,000h		;b69c
	add a,080h		;b69e
	rst 0			;b6a0
	nop			;b6a1
	rst 0			;b6a2
lb6a3h:
	add a,b			;b6a3
	ld sp,hl		;b6a4
	ld (bc),a		;b6a5
	sub a			;b6a6
	ret po			;b6a7
	dec e			;b6a8
	rst 38h			;b6a9
	cp 002h			;b6aa
	jp po,0ee01h		;b6ac
	ex af,af'		;b6af
	call nz,0c480h		;b6b0
	ret nz			;b6b3
	push bc			;b6b4
	nop			;b6b5
	push bc			;b6b6
	add a,b			;b6b7
	add a,000h		;b6b8
	add a,080h		;b6ba
	rst 0			;b6bc
	nop			;b6bd
	rst 0			;b6be
	add a,b			;b6bf
	push af			;b6c0
	ld sp,hl		;b6c1
	ld l,l			;b6c2
	sub a			;b6c3
	ei			;b6c4
	inc bc			;b6c5
	rst 30h			;b6c6
	inc b			;b6c7
	ld sp,hl		;b6c8
	ld l,l			;b6c9
	sub a			;b6ca
	rst 30h			;b6cb
	rlca			;b6cc
	ld sp,hl		;b6cd
	ld l,l			;b6ce
	sub a			;b6cf
	rst 30h			;b6d0
	ld a,(bc)		;b6d1
	ld sp,hl		;b6d2
	ld l,l			;b6d3
	sub a			;b6d4
	rst 30h			;b6d5
	inc c			;b6d6
	ld sp,hl		;b6d7
	ld l,l			;b6d8
	sub a			;b6d9
	rst 38h			;b6da
	jp 0c300h		;b6db
	jr nz,lb6a3h		;b6de
	ld h,b			;b6e0
	jp 0c380h		;b6e1
	ret nz			;b6e4
	call nz,0c400h		;b6e5
	ld b,b			;b6e8
	call nz,0c480h		;b6e9
	ret nz			;b6ec
	push bc			;b6ed
	nop			;b6ee
	push bc			;b6ef
	ld b,b			;b6f0
	push bc			;b6f1
	add a,b			;b6f2
	push bc			;b6f3
	ret nz			;b6f4
	add a,000h		;b6f5
	add a,040h		;b6f7
	add a,080h		;b6f9
	add a,0c0h		;b6fb
	rst 0			;b6fd
	nop			;b6fe
	rst 0			;b6ff
	ld b,b			;b700
	jp m,002e2h		;b701
	call nz,0c480h		;b704
	ret nz			;b707
	push bc			;b708
	nop			;b709
	push bc			;b70a
	ld b,b			;b70b
	push bc			;b70c
	add a,b			;b70d
	push bc			;b70e
	ret nz			;b70f
	add a,000h		;b710
	add a,040h		;b712
	add a,080h		;b714
	add a,0c0h		;b716
	rst 0			;b718
	nop			;b719
	rst 0			;b71a
	ld b,b			;b71b
	rst 0			;b71c
	add a,b			;b71d
	rst 0			;b71e
	ret nz			;b71f
	ret z			;b720
	nop			;b721
	ret z			;b722
	ld b,b			;b723
	ret z			;b724
	add a,b			;b725
	ret z			;b726
	ret nz			;b727
	ret			;b728
	nop			;b729
	ret			;b72a
	ld b,b			;b72b
	ret			;b72c
	add a,b			;b72d
	ret			;b72e
	ret nz			;b72f
lb730h:
	jp z,0ca00h		;b730
	ld b,b			;b733
	jp z,0ca80h		;b734
	ret nz			;b737
	rlc b			;b738
	bit 0,b			;b73a
	res 0,b			;b73c
lb73eh:
	set 0,b			;b73e
	call z,0cc00h		;b740
	ld b,b			;b743
	call z,0cc80h		;b744
	ret nz			;b747
	call 0cd00h		;b748
	ld b,b			;b74b
	call 0cd80h		;b74c
	ret nz			;b74f
	adc a,000h		;b750
	adc a,040h		;b752
	adc a,080h		;b754
	adc a,0a0h		;b756
	adc a,0c0h		;b758
	adc a,0e0h		;b75a
	rst 8			;b75c
	nop			;b75d
	rst 8			;b75e
	jr nz,lb730h		;b75f
	ld b,b			;b761
	xor a			;b762
	ld h,b			;b763
	adc a,a			;b764
	add a,b			;b765
	ld l,a			;b766
	and b			;b767
	ld c,a			;b768
	ret nz			;b769
	cpl			;b76a
	ret p			;b76b
	jp m,080c1h		;b76c
	pop bc			;b76f
	sub b			;b770
	pop bc			;b771
	or b			;b772
	pop bc			;b773
	ret nz			;b774
	pop bc			;b775
	ret po			;b776
	jp nz,0c200h		;b777
	jr nz,lb73eh		;b77a
	ld b,b			;b77c
	jp nz,0c260h		;b77d
	add a,b			;b780
	jp nz,0c2a0h		;b781
	ret nz			;b784
	jp nz,0c3e0h		;b785
	nop			;b788
	jp 0c320h		;b789
	ld b,b			;b78c
	jp 0c360h		;b78d
	add a,b			;b790
	jp 0faa0h		;b791
	cp 002h			;b794
	ret po			;b796
	ld bc,001e2h		;b797
	push af			;b79a
	and c			;b79b
	add a,b			;b79c
	and l			;b79d
	nop			;b79e
	and (hl)		;b79f
	nop			;b7a0
	and l			;b7a1
	nop			;b7a2
	and (hl)		;b7a3
	nop			;b7a4
	and a			;b7a5
	nop			;b7a6
	xor b			;b7a7
	nop			;b7a8
	xor c			;b7a9
	nop			;b7aa
	xor d			;b7ab
	nop			;b7ac
	and c			;b7ad
	or b			;b7ae
	and e			;b7af
	nop			;b7b0
	and h			;b7b1
	nop			;b7b2
	and l			;b7b3
	nop			;b7b4
	and (hl)		;b7b5
	nop			;b7b6
	and a			;b7b7
	nop			;b7b8
	xor b			;b7b9
	nop			;b7ba
	xor c			;b7bb
	nop			;b7bc
	xor d			;b7bd
	nop			;b7be
	xor e			;b7bf
	nop			;b7c0
	xor h			;b7c1
	nop			;b7c2
	xor l			;b7c3
	nop			;b7c4
	xor (hl)		;b7c5
	nop			;b7c6
	xor a			;b7c7
	nop			;b7c8
	ei			;b7c9
	ld (bc),a		;b7ca
	and d			;b7cb
	add a,b			;b7cc
	and l			;b7cd
	nop			;b7ce
	and (hl)		;b7cf
	nop			;b7d0
	and a			;b7d1
	nop			;b7d2
	and l			;b7d3
	nop			;b7d4
	and h			;b7d5
	nop			;b7d6
	and (hl)		;b7d7
	nop			;b7d8
	and a			;b7d9
	nop			;b7da
	and c			;b7db
	add a,b			;b7dc
	and h			;b7dd
	nop			;b7de
	and l			;b7df
	nop			;b7e0
	and e			;b7e1
	add a,b			;b7e2
	and h			;b7e3
	add a,b			;b7e4
	and l			;b7e5
	nop			;b7e6
	sub h			;b7e7
	ld b,b			;b7e8
	add a,e			;b7e9
	add a,b			;b7ea
	ld sp,hl		;b7eb
	ld c,(hl)		;b7ec
	sbc a,d			;b7ed
	rst 30h			;b7ee
	ld (bc),a		;b7ef
	ld sp,hl		;b7f0
	ld c,(hl)		;b7f1
	sbc a,d			;b7f2
	rst 30h			;b7f3
	inc b			;b7f4
	ld sp,hl		;b7f5
	ld c,(hl)		;b7f6
	sbc a,d			;b7f7
	rst 30h			;b7f8
	ld b,0f9h		;b7f9
	ld c,(hl)		;b7fb
	sbc a,d			;b7fc
	rst 30h			;b7fd
	add hl,bc		;b7fe
	ld sp,hl		;b7ff
	ld c,(hl)		;b800
	sbc a,d			;b801
	rst 38h			;b802
	cp 002h			;b803
	jp po,0f501h		;b805
	and c			;b808
	add a,b			;b809
	and d			;b80a
	add a,b			;b80b
	and e			;b80c
	nop			;b80d
	and d			;b80e
	add a,b			;b80f
	and e			;b810
	nop			;b811
	and e			;b812
	add a,b			;b813
	and c			;b814
lb815h:
	or b			;b815
	and d			;b816
	add a,b			;b817
	and d			;b818
	nop			;b819
	and d			;b81a
	add a,b			;b81b
	and e			;b81c
	nop			;b81d
	and e			;b81e
	add a,b			;b81f
	and h			;b820
	nop			;b821
	and h			;b822
	add a,b			;b823
	and l			;b824
	nop			;b825
	and l			;b826
	add a,b			;b827
	and (hl)		;b828
	nop			;b829
	and (hl)		;b82a
	add a,b			;b82b
	and a			;b82c
	nop			;b82d
	and a			;b82e
	add a,b			;b82f
	ei			;b830
	ld (bc),a		;b831
	push af			;b832
	ld (hl),c		;b833
	add a,b			;b834
	ld (hl),d		;b835
	add a,b			;b836
	ld (hl),e		;b837
	nop			;b838
	ld (hl),e		;b839
	add a,b			;b83a
	ld (hl),c		;b83b
	or b			;b83c
	ld (hl),c		;b83d
	add a,b			;b83e
	ld (hl),d		;b83f
	nop			;b840
	ld (hl),d		;b841
	add a,b			;b842
	ld (hl),e		;b843
	nop			;b844
	ld (hl),e		;b845
	add a,b			;b846
	ei			;b847
	ld (bc),a		;b848
	ld h,c			;b849
	add a,b			;b84a
	ld h,c			;b84b
	and b			;b84c
	ld h,c			;b84d
	ret nz			;b84e
	jp po,06103h		;b84f
	ret po			;b852
	ld h,d			;b853
	nop			;b854
	ld h,d			;b855
	jr nz,$+100		;b856
	ld b,b			;b858
	ld h,d			;b859
	ld h,b			;b85a
	ld h,d			;b85b
	add a,b			;b85c
	ld h,d			;b85d
	and b			;b85e
	ld h,d			;b85f
	ret nz			;b860
	ld h,d			;b861
	ret po			;b862
	ld h,e			;b863
	nop			;b864
	ld h,e			;b865
	jr nz,$+101		;b866
	ld b,b			;b868
	ld h,e			;b869
	ld h,b			;b86a
	ld h,e			;b86b
	add a,b			;b86c
	ld h,e			;b86d
	ret nz			;b86e
	ld h,h			;b86f
	nop			;b870
	ld h,h			;b871
	ld b,b			;b872
	ld h,h			;b873
	add a,b			;b874
	ld h,h			;b875
	ret nz			;b876
	ld h,l			;b877
	nop			;b878
	ld h,l			;b879
	ld b,b			;b87a
	ld h,l			;b87b
	add a,b			;b87c
	ld h,l			;b87d
	ret nz			;b87e
	ld h,(hl)		;b87f
	nop			;b880
	ld h,(hl)		;b881
	ld b,b			;b882
	ld h,(hl)		;b883
	add a,b			;b884
	ld h,(hl)		;b885
	ret nz			;b886
	ld h,a			;b887
	nop			;b888
	ld h,a			;b889
	ld b,b			;b88a
	ld h,a			;b88b
	add a,b			;b88c
	ld h,a			;b88d
	ret nz			;b88e
	ld e,b			;b88f
	nop			;b890
	ld c,b			;b891
	ld b,b			;b892
	jr c,lb815h		;b893
	jr z,$-62		;b895
	add hl,de		;b897
	nop			;b898
	ret po			;b899
	inc c			;b89a
	rst 38h			;b89b
	cp 002h			;b89c
	push af			;b89e
	ex (sp),hl		;b89f
	ld bc,01fe4h		;b8a0
	call nz,06580h		;b8a3
	nop			;b8a6
	pop hl			;b8a7
	ld bc,01de4h		;b8a8
	add hl,bc		;b8ab
	add hl,bc		;b8ac
	call po,0071fh		;b8ad
	dec b			;b8b0
	ex (sp),hl		;b8b1
	ld bc,080c4h		;b8b2
	ld h,e			;b8b5
	nop			;b8b6
	pop hl			;b8b7
	ld (bc),a		;b8b8
	call po,0091bh		;b8b9
	call po,0091ch		;b8bc
	call po,0091dh		;b8bf
	pop hl			;b8c2
	ld bc,01ee4h		;b8c3
	add hl,bc		;b8c6
	ex af,af'		;b8c7
	rlca			;b8c8
	call po,0061fh		;b8c9
	dec b			;b8cc
	inc b			;b8cd
	ei			;b8ce
	ld (bc),a		;b8cf
	push af			;b8d0
	ex (sp),hl		;b8d1
	ld bc,01fe4h		;b8d2
	and h			;b8d5
	add a,b			;b8d6
	dec (hl)		;b8d7
	nop			;b8d8
	pop hl			;b8d9
	ld bc,01de4h		;b8da
	ld b,0e4h		;b8dd
	rra			;b8df
	inc bc			;b8e0
	ex (sp),hl		;b8e1
	ld bc,080a4h		;b8e2
	inc sp			;b8e5
	nop			;b8e6
	pop hl			;b8e7
	ld bc,01be4h		;b8e8
	ld b,006h		;b8eb
	call po,0051ch		;b8ed
	dec b			;b8f0
	ei			;b8f1
	ld (bc),a		;b8f2
	ex (sp),hl		;b8f3
	ld bc,01fe4h		;b8f4
	and h			;b8f7
	add a,b			;b8f8
	ld h,l			;b8f9
	nop			;b8fa
	pop hl			;b8fb
	ld (bc),a		;b8fc
	call po,0091dh		;b8fd
	pop hl			;b900
	ld b,009h		;b901
lb903h:
	call po,0091eh		;b903
	add hl,bc		;b906
	pop hl			;b907
	rlca			;b908
	call po,0091fh		;b909
	add hl,bc		;b90c
	add hl,bc		;b90d
	add hl,bc		;b90e
	add hl,bc		;b90f
	ex af,af'		;b910
	rlca			;b911
	ld b,005h		;b912
	inc b			;b914
	inc bc			;b915
	ld (bc),a		;b916
	ld bc,0e000h		;b917
	inc bc			;b91a
	rst 38h			;b91b
	cp 002h			;b91c
	ret m			;b91e
	jr z,lb903h		;b91f
	ld bc,0c1f5h		;b921
	add a,b			;b924
	push bc			;b925
	nop			;b926
	add a,000h		;b927
	push bc			;b929
	nop			;b92a
	add a,000h		;b92b
	rst 0			;b92d
	nop			;b92e
	ld sp,hl		;b92f
	ret			;b930
	sbc a,d			;b931
	ret m			;b932
	ld e,d			;b933
	ei			;b934
	ld (bc),a		;b935
	or d			;b936
	add a,b			;b937
	or l			;b938
	nop			;b939
	or (hl)			;b93a
	nop			;b93b
	or a			;b93c
	nop			;b93d
	or l			;b93e
	nop			;b93f
	or h			;b940
	nop			;b941
	or (hl)			;b942
	nop			;b943
	or a			;b944
	nop			;b945
	ret m			;b946
	jr z,$-61		;b947
	add a,b			;b949
	call nz,0c500h		;b94a
	nop			;b94d
	jp 0c580h		;b94e
	nop			;b951
	and h			;b952
	ld b,b			;b953
	add a,e			;b954
	add a,b			;b955
	ld sp,hl		;b956
	ld c,(hl)		;b957
	sbc a,d			;b958
	rst 30h			;b959
	ld (bc),a		;b95a
	ld sp,hl		;b95b
	ld c,(hl)		;b95c
	sbc a,d			;b95d
	rst 30h			;b95e
	inc b			;b95f
	ld sp,hl		;b960
	ld c,(hl)		;b961
	sbc a,d			;b962
	rst 30h			;b963
	ld b,0f9h		;b964
	ld c,(hl)		;b966
	sbc a,d			;b967
	rst 30h			;b968
	add hl,bc		;b969
	ld sp,hl		;b96a
	ld c,(hl)		;b96b
	sbc a,d			;b96c
	ret po			;b96d
	ex af,af'		;b96e
	rst 38h			;b96f
	cp 002h			;b970
	ret m			;b972
	inc c			;b973
	jp po,0f501h		;b974
	pop bc			;b977
	add a,b			;b978
	push bc			;b979
	nop			;b97a
	add a,000h		;b97b
	push bc			;b97d
	nop			;b97e
	add a,000h		;b97f
	rst 0			;b981
	nop			;b982
	ld sp,hl		;b983
	ret			;b984
	sbc a,d			;b985
	ei			;b986
	ld (bc),a		;b987
	ld sp,hl		;b988
	and 09ah		;b989
	add a,000h		;b98b
	call nz,0c580h		;b98d
	add a,b			;b990
	push bc			;b991
	nop			;b992
	or h			;b993
	nop			;b994
	or l			;b995
	add a,b			;b996
	and h			;b997
	add a,b			;b998
	sub e			;b999
	nop			;b99a
	add a,e			;b99b
	add a,b			;b99c
	ld sp,hl		;b99d
	ld c,(hl)		;b99e
	sbc a,d			;b99f
	rst 30h			;b9a0
	ld (bc),a		;b9a1
	ld sp,hl		;b9a2
	ld c,(hl)		;b9a3
	sbc a,d			;b9a4
	rst 30h			;b9a5
	inc b			;b9a6
	ld sp,hl		;b9a7
	ld c,(hl)		;b9a8
	sbc a,d			;b9a9
	rst 30h			;b9aa
	ld b,0f9h		;b9ab
	ld c,(hl)		;b9ad
	sbc a,d			;b9ae
	rst 30h			;b9af
	add hl,bc		;b9b0
	ld sp,hl		;b9b1
	ld c,(hl)		;b9b2
	sbc a,d			;b9b3
	ret po			;b9b4
	ld (bc),a		;b9b5
	rst 38h			;b9b6
	cp 002h			;b9b7
	ret m			;b9b9
	ld h,b			;b9ba
	jp po,0f501h		;b9bb
	pop bc			;b9be
	add a,b			;b9bf
	push bc			;b9c0
	nop			;b9c1
	add a,000h		;b9c2
	push bc			;b9c4
	nop			;b9c5
	add a,000h		;b9c6
	rst 0			;b9c8
	nop			;b9c9
	ret z			;b9ca
	nop			;b9cb
	ret			;b9cc
	nop			;b9cd
	jp z,0f900h		;b9ce
	ret			;b9d1
	sbc a,d			;b9d2
	ei			;b9d3
	ld (bc),a		;b9d4
	ld sp,hl		;b9d5
	and 09ah		;b9d6
	call nz,0c580h		;b9d8
	nop			;b9db
	or h			;b9dc
	nop			;b9dd
	and h			;b9de
	add a,b			;b9df
	sub e			;b9e0
	nop			;b9e1
	ld sp,hl		;b9e2
	ld c,(hl)		;b9e3
	sbc a,d			;b9e4
	rst 30h			;b9e5
	ld (bc),a		;b9e6
	ld sp,hl		;b9e7
	ld c,(hl)		;b9e8
	sbc a,d			;b9e9
	rst 30h			;b9ea
	inc b			;b9eb
	ld sp,hl		;b9ec
	ld c,(hl)		;b9ed
	sbc a,d			;b9ee
	rst 30h			;b9ef
	ld b,0f9h		;b9f0
	ld c,(hl)		;b9f2
	sbc a,d			;b9f3
	rst 30h			;b9f4
	add hl,bc		;b9f5
	ld sp,hl		;b9f6
	ld c,(hl)		;b9f7
	sbc a,d			;b9f8
	rst 38h			;b9f9
	cp 002h			;b9fa
	jp po,0f803h		;b9fc
	ld h,b			;b9ff
	jp nz,0c280h		;ba00
	and b			;ba03
	jp nz,0c3d0h		;ba04
	nop			;ba07
	jp 0c340h		;ba08
	add a,b			;ba0b
	jp 0c2c0h		;ba0c
	add a,b			;ba0f
	jp nz,0c2a0h		;ba10
	ret nc			;ba13
	jp 0c300h		;ba14
	ld b,b			;ba17
	jp 0c380h		;ba18
	ret nz			;ba1b
	call nz,0c400h		;ba1c
	ld b,b			;ba1f
	ld sp,hl		;ba20
	ld l,l			;ba21
	sbc a,d			;ba22
	rst 38h			;ba23
	cp 002h			;ba24
	jp po,0f803h		;ba26
	ld h,b			;ba29
	jp nz,0c2c0h		;ba2a
	ret po			;ba2d
	jp 0c320h		;ba2e
	ld b,b			;ba31
	jp 0c380h		;ba32
	ret nz			;ba35
	call nz,0c200h		;ba36
	ret nz			;ba39
	jp nz,0c3e0h		;ba3a
	jr nz,$-59		;ba3d
	ld b,b			;ba3f
	jp 0c380h		;ba40
	ret nz			;ba43
	call nz,0c400h		;ba44
	ld b,b			;ba47
	ld sp,hl		;ba48
	ld l,l			;ba49
	sbc a,d			;ba4a
	ret po			;ba4b
	inc bc			;ba4c
	rst 38h			;ba4d
	jp po,09401h		;ba4e
	nop			;ba51
	sub h			;ba52
	ld b,b			;ba53
	sub h			;ba54
	add a,b			;ba55
	sub h			;ba56
	ret nz			;ba57
	jp po,09502h		;ba58
	nop			;ba5b
	sub l			;ba5c
	ld b,b			;ba5d
	sub l			;ba5e
	add a,b			;ba5f
	sub l			;ba60
	ret nz			;ba61
	jp po,09603h		;ba62
	nop			;ba65
	sub (hl)		;ba66
	ld b,b			;ba67
	sub (hl)		;ba68
	add a,b			;ba69
	sub (hl)		;ba6a
	ret nz			;ba6b
	jp m,080c4h		;ba6c
	call nz,0c5c0h		;ba6f
	nop			;ba72
	push bc			;ba73
	ld b,b			;ba74
	push bc			;ba75
	add a,b			;ba76
	push bc			;ba77
	ret nz			;ba78
	add a,000h		;ba79
	add a,040h		;ba7b
	add a,080h		;ba7d
	add a,0c0h		;ba7f
	rst 0			;ba81
	nop			;ba82
	rst 0			;ba83
	ld b,b			;ba84
	rst 0			;ba85
	add a,b			;ba86
	rst 0			;ba87
	ret nz			;ba88
	ret z			;ba89
	nop			;ba8a
	ret z			;ba8b
	ld b,b			;ba8c
	ret z			;ba8d
	add a,b			;ba8e
	ret z			;ba8f
	ret nz			;ba90
	ret			;ba91
	nop			;ba92
	ret			;ba93
	ld b,b			;ba94
	ret			;ba95
	add a,b			;ba96
	ret			;ba97
	ret nz			;ba98
	jp z,0ca00h		;ba99
	ld b,b			;ba9c
	jp z,0ca80h		;ba9d
	ret nz			;baa0
lbaa1h:
	rlc b			;baa1
	bit 0,b			;baa3
	res 0,b			;baa5
	set 0,b			;baa7
	call z,sub_bc00h	;baa9
	ld b,b			;baac
	xor h			;baad
	add a,b			;baae
	sbc a,h			;baaf
	ret nz			;bab0
	adc a,l			;bab1
	nop			;bab2
	ld a,l			;bab3
	ld b,b			;bab4
	ld l,l			;bab5
	add a,b			;bab6
	ld e,l			;bab7
	ret nz			;bab8
	ld c,(hl)		;bab9
	nop			;baba
	ld a,040h		;babb
	ld l,080h		;babd
	ld e,0a0h		;babf
	ld c,0c0h		;bac1
	ld c,0e0h		;bac3
	rrca			;bac5
	nop			;bac6
	jp m,0c1ffh		;bac7
	or b			;baca
	jp 0c400h		;bacb
	nop			;bace
	push bc			;bacf
	nop			;bad0
	add a,000h		;bad1
	rst 0			;bad3
	nop			;bad4
	ret z			;bad5
	nop			;bad6
	ret			;bad7
	nop			;bad8
	jp z,0cb00h		;bad9
	nop			;badc
	call z,0cd00h		;badd
	nop			;bae0
	adc a,000h		;bae1
	rst 8			;bae3
	nop			;bae4
	jp m,0000fh		;bae5
	or d			;bae8
	add a,b			;bae9
	or l			;baea
	nop			;baeb
	or (hl)			;baec
	nop			;baed
	or a			;baee
	nop			;baef
	or l			;baf0
	nop			;baf1
	or h			;baf2
	nop			;baf3
	or (hl)			;baf4
	nop			;baf5
	jp nz,0c480h		;baf6
	nop			;baf9
	push bc			;bafa
	nop			;bafb
	jp 0fa80h		;bafc
	rst 38h			;baff
	inc d			;bb00
	sbc a,e			;bb01
	dec de			;bb02
	sbc a,e			;bb03
	jr z,lbaa1h		;bb04
	dec a			;bb06
	sbc a,e			;bb07
	ld d,(hl)		;bb08
	sbc a,e			;bb09
	ld l,e			;bb0a
	sbc a,e			;bb0b
	add a,h			;bb0c
	sbc a,e			;bb0d
	sbc a,l			;bb0e
	sbc a,e			;bb0f
	cp b			;bb10
	sbc a,e			;bb11
	push de			;bb12
	sbc a,e			;bb13
	pop hl			;bb14
	ld bc,000e4h		;bb15
	rlca			;bb18
	dec b			;bb19
	rst 38h			;bb1a
	ex (sp),hl		;bb1b
	ld bc,000e4h		;bb1c
	adc a,d			;bb1f
	nop			;bb20
	pop hl			;bb21
	inc b			;bb22
	ld b,005h		;bb23
	inc b			;bb25
	inc bc			;bb26
	rst 38h			;bb27
	pop hl			;bb28
	ld bc,014e4h		;bb29
	rlca			;bb2c
	jp po,07201h		;bb2d
	nop			;bb30
	pop hl			;bb31
	ld (bc),a		;bb32
	call po,00310h		;bb33
	ld (bc),a		;bb36
	pop hl			;bb37
	ld bc,006e4h		;bb38
	ld (bc),a		;bb3b
	rst 38h			;bb3c
	jp po,0e501h		;bb3d
	ld a,(bc)		;bb40
	nop			;bb41
	ld b,d			;bb42
	pop bc			;bb43
	or b			;bb44
	ret pe			;bb45
	pop hl			;bb46
	ld bc,008e4h		;bb47
	ex af,af'		;bb4a
	rlca			;bb4b
	ld b,005h		;bb4c
	inc b			;bb4e
	inc bc			;bb4f
	ld (bc),a		;bb50
	ld (bc),a		;bb51
	ld bc,00001h		;bb52
	rst 38h			;bb55
	jp po,0e501h		;bb56
	ld a,(bc)		;bb59
	nop			;bb5a
	ld (hl),b		;bb5b
	nop			;bb5c
	nop			;bb5d
	ret pe			;bb5e
	pop hl			;bb5f
	ld bc,004e4h		;bb60
	rlca			;bb63
	ld b,005h		;bb64
	inc b			;bb66
	inc bc			;bb67
	ld (bc),a		;bb68
	ld bc,0e2ffh		;bb69
	ld bc,02aa1h		;bb6c
	sub c			;bb6f
	ld c,d			;bb70
	add a,c			;bb71
	ld d,l			;bb72
	ld (hl),c		;bb73
	ld h,b			;bb74
	ld h,c			;bb75
	ld l,d			;bb76
	ld d,c			;bb77
	ld (hl),l		;bb78
	ld b,c			;bb79
	add a,b			;bb7a
	ld sp,0218ah		;bb7b
	sub l			;bb7e
	ld de,001a0h		;bb7f
	or b			;bb82
	rst 38h			;bb83
	jp po,lb101h		;bb84
	ld e,d			;bb87
	sub c			;bb88
	add a,b			;bb89
	add a,c			;bb8a
	adc a,d			;bb8b
	ld (hl),c		;bb8c
	sub l			;bb8d
	ld h,c			;bb8e
	and b			;bb8f
	ld d,c			;bb90
	xor d			;bb91
	ld b,c			;bb92
	or l			;bb93
	ld sp,021c0h		;bb94
	jp z,0d511h		;bb97
	ld bc,0ffe0h		;bb9a
	jp po,lb101h		;bb9d
	sub l			;bba0
	and c			;bba1
	ret nz			;bba2
	sub c			;bba3
	jp z,0d5b1h		;bba4
	ld (hl),c		;bba7
	ret po			;bba8
	ld h,c			;bba9
	jp pe,0f551h		;bbaa
	ld b,d			;bbad
	nop			;bbae
	ld (0220ah),a		;bbaf
	dec d			;bbb2
	ld (de),a		;bbb3
	jr nz,lbbb8h		;bbb4
	jr nc,$+1		;bbb6
lbbb8h:
	jp po,0c101h		;bbb8
	ret po			;bbbb
	or d			;bbbc
	djnz $-92		;bbbd
	ld a,(de)		;bbbf
	sub d			;bbc0
	dec h			;bbc1
	add a,d			;bbc2
	jr nc,$+116		;bbc3
	ld a,(04562h)		;bbc5
	ld d,d			;bbc8
	ld d,b			;bbc9
	ld b,d			;bbca
	ld e,d			;bbcb
	ld (02265h),a		;bbcc
	ld (hl),b		;bbcf
	ld (de),a		;bbd0
	ld a,d			;bbd1
	ld (bc),a		;bbd2
	add a,l			;bbd3
	rst 38h			;bbd4
	jp po,0e501h		;bbd5
	ex af,af'		;bbd8
	ld bc,00000h		;bbd9
	ld bc,064e8h		;bbdc
	nop			;bbdf
	ld d,h			;bbe0
	add a,b			;bbe1
	ld b,l			;bbe2
	nop			;bbe3
	jp po,00503h		;bbe4
	nop			;bbe7
	jp po,00401h		;bbe8
	nop			;bbeb
	inc b			;bbec
	add a,b			;bbed
	dec b			;bbee
	nop			;bbef
	ld b,000h		;bbf0
	rst 38h			;bbf2
	dec bc			;bbf3
	sbc a,h			;bbf4
	ld de,0179ch		;bbf5
	sbc a,h			;bbf8
	dec hl			;bbf9
	sbc a,h			;bbfa
	ld c,d			;bbfb
	sbc a,h			;bbfc
	ld e,l			;bbfd
	sbc a,h			;bbfe
	ld (hl),b		;bbff
sub_bc00h:
	sbc a,h			;bc00
	add a,l			;bc01
	sbc a,h			;bc02
	sbc a,d			;bc03
	sbc a,h			;bc04
	sbc a,d			;bc05
	sbc a,h			;bc06
	cp (hl)			;bc07
	sbc a,h			;bc08
	call c,0e19ch		;bc09
	ld bc,001e4h		;bc0c
	add hl,bc		;bc0f
	rst 38h			;bc10
	pop hl			;bc11
	ld bc,001e4h		;bc12
	rlca			;bc15
	rst 38h			;bc16
	pop hl			;bc17
	ld bc,005e4h		;bc18
	dec b			;bc1b
	call po,00702h		;bc1c
	call po,00800h		;bc1f
	pop hl			;bc22
	inc b			;bc23
	rlca			;bc24
	ld b,005h		;bc25
	inc b			;bc27
	inc bc			;bc28
	ld (bc),a		;bc29
	rst 38h			;bc2a
	ex (sp),hl		;bc2b
	ld bc,005e4h		;bc2c
	ld (hl),b		;bc2f
	dec c			;bc30
	call po,08002h		;bc31
	dec bc			;bc34
	call po,09000h		;bc35
	add hl,bc		;bc38
	ex (sp),hl		;bc39
	inc b			;bc3a
	add a,b			;bc3b
	dec bc			;bc3c
	ld (hl),b		;bc3d
	dec bc			;bc3e
	ld h,b			;bc3f
	dec bc			;bc40
	ld d,b			;bc41
	dec bc			;bc42
	ld b,b			;bc43
	dec bc			;bc44
	jr nc,lbc52h		;bc45
	jr nz,lbc54h		;bc47
	rst 38h			;bc49
	pop hl			;bc4a
	ld bc,014e4h		;bc4b
	dec b			;bc4e
	jp po,05201h		;bc4f
lbc52h:
	nop			;bc52
	pop hl			;bc53
lbc54h:
	ld bc,010e4h		;bc54
	inc b			;bc57
	inc bc			;bc58
	call po,00206h		;bc59
	rst 38h			;bc5c
	pop hl			;bc5d
	ld bc,014e4h		;bc5e
	ld b,0e2h		;bc61
	ld bc,00062h		;bc63
	pop hl			;bc66
	ld bc,010e4h		;bc67
	dec b			;bc6a
lbc6bh:
	inc b			;bc6b
	call po,00206h		;bc6c
	rst 38h			;bc6f
	jp po,07201h		;bc70
	jr nc,$-29		;bc73
	ld (bc),a		;bc75
	call po,00705h		;bc76
	pop hl			;bc79
	ld (bc),a		;bc7a
	call po,00706h		;bc7b
	call po,00508h		;bc7e
	call po,00404h		;bc81
	rst 38h			;bc84
	jp po,08201h		;bc85
	jr nc,lbc6bh		;bc88
	ld (bc),a		;bc8a
	call po,00805h		;bc8b
	pop hl			;bc8e
	ld (bc),a		;bc8f
	call po,00806h		;bc90
	call po,00608h		;bc93
	call po,00504h		;bc96
	rst 38h			;bc99
	jp po,0e501h		;bc9a
	ld a,(bc)		;bc9d
	nop			;bc9e
	ld (de),a		;bc9f
	call nz,0e800h		;bca0
	pop hl			;bca3
	ld bc,008e4h		;bca4
	add hl,bc		;bca7
	ex af,af'		;bca8
	rlca			;bca9
	ld b,005h		;bcaa
	call po,0e10ah		;bcac
	ld (bc),a		;bcaf
	ld b,005h		;bcb0
	inc b			;bcb2
	inc bc			;bcb3
	ld (bc),a		;bcb4
	ld bc,0e100h		;bcb5
	ld b,0e4h		;bcb8
	dec bc			;bcba
	ld bc,0ff00h		;bcbb
	jp po,0e501h		;bcbe
	ex af,af'		;bcc1
	ld bc,00000h		;bcc2
	ld bc,064e8h		;bcc5
	nop			;bcc8
	ld d,h			;bcc9
	add a,b			;bcca
	ld b,l			;bccb
	nop			;bccc
	jp po,00503h		;bccd
	nop			;bcd0
	jp po,00401h		;bcd1
	nop			;bcd4
	inc b			;bcd5
	add a,b			;bcd6
	dec b			;bcd7
	nop			;bcd8
	ld b,000h		;bcd9
	rst 38h			;bcdb
	pop hl			;bcdc
	ld bc,008e4h		;bcdd
	dec b			;bce0
	call po,00807h		;bce1
	call po,00706h		;bce4
	call po,00805h		;bce7
	call po,00804h		;bcea
	call po,00804h		;bced
	call po,00803h		;bcf0
	call po,00802h		;bcf3
	pop hl			;bcf6
	ld bc,001e4h		;bcf7
	rlca			;bcfa
	ld b,005h		;bcfb
	inc b			;bcfd
	inc bc			;bcfe
	ld (bc),a		;bcff
	rst 38h			;bd00
	cp 001h			;bd01
	jp (hl)			;bd03
	inc b			;bd04
	xor 003h		;bd05
	ex de,hl		;bd07
	add hl,bc		;bd08
	djnz $-20		;bd09
	ex af,af'		;bd0b
	push af			;bd0c
	push bc			;bd0d
	pop de			;bd0e
	ld hl,09151h		;bd0f
	ld hl,09151h		;bd12
	ret nc			;bd15
	ld bc,091d1h		;bd16
	ld d,c			;bd19
	or c			;bd1a
	ld (hl),c		;bd1b
	ei			;bd1c
	rlca			;bd1d
	cp 004h			;bd1e
	ret nc			;bd20
	sub c			;bd21
	sub c			;bd22
	cp 010h			;bd23
	sub c			;bd25
	cp 004h			;bd26
	sub c			;bd28
	sub c			;bd29
	cp 010h			;bd2a
	sub c			;bd2c
	cp 004h			;bd2d
	sub c			;bd2f
	cp 010h			;bd30
	sub c			;bd32
	cp 004h			;bd33
lbd35h:
	jr nc,lbd37h		;bd35
lbd37h:
	jr nc,lbd69h		;bd37
	jr nc,lbd3bh		;bd39
lbd3bh:
	cp 010h			;bd3b
	sub c			;bd3d
	sub c			;bd3e
	sub c			;bd3f
	cp 004h			;bd40
	ret nc			;bd42
	jp (hl)			;bd43
	inc b			;bd44
	push af			;bd45
	sub c			;bd46
	ld bc,00191h		;bd47
	ld sp,010feh		;bd4a
	sub c			;bd4d
	sub c			;bd4e
	cp 004h			;bd4f
	ei			;bd51
	ex af,af'		;bd52
	cp 004h			;bd53
	ret nc			;bd55
	jp (hl)			;bd56
	inc b			;bd57
	push af			;bd58
	sub c			;bd59
	ld bc,00131h		;bd5a
	sub c			;bd5d
	ld bc,00131h		;bd5e
	sub c			;bd61
	ld bc,00131h		;bd62
	ld sp,0fb31h		;bd65
	ld (bc),a		;bd68
lbd69h:
	sub c			;bd69
	ld bc,00131h		;bd6a
	sub c			;bd6d
	ld bc,00131h		;bd6e
	sub c			;bd71
	ld bc,01131h		;bd72
	sub c			;bd75
	jr nc,lbda8h		;bd76
	cp 010h			;bd78
	sub e			;bd7a
	cp 004h			;bd7b
	ret nc			;bd7d
	jp (hl)			;bd7e
	inc b			;bd7f
	push af			;bd80
	sub c			;bd81
	ld bc,00131h		;bd82
	sub c			;bd85
	ld bc,00131h		;bd86
	sub c			;bd89
	ld bc,00131h		;bd8a
	ld sp,0fb31h		;bd8d
	ld (bc),a		;bd90
	sub c			;bd91
	ld bc,00131h		;bd92
	sub c			;bd95
	ld bc,00131h		;bd96
	sub c			;bd99
	ld bc,01131h		;bd9a
	ld sp,0fe11h		;bd9d
	djnz lbd35h		;bda0
	cp 004h			;bda2
	ret nc			;bda4
	jp (hl)			;bda5
	inc b			;bda6
	sub c			;bda7
lbda8h:
	ld bc,00131h		;bda8
	sub c			;bdab
lbdach:
	ld bc,00131h		;bdac
	sub c			;bdaf
	ld bc,00131h		;bdb0
	sub c			;bdb3
	cp 010h			;bdb4
	nop			;bdb6
	nop			;bdb7
lbdb8h:
	sub e			;bdb8
	cp 004h			;bdb9
	sub b			;bdbb
	nop			;bdbc
	ld de,09031h		;bdbd
	nop			;bdc0
	ld de,09031h		;bdc1
	nop			;bdc4
	ld de,09031h		;bdc5
	nop			;bdc8
	ld de,00090h		;bdc9
	ld de,0fe31h		;bdcc
	djnz $-107		;bdcf
	push af			;bdd1
	cp 004h			;bdd2
	sub c			;bdd4
	sub c			;bdd5
	ld bc,00191h		;bdd6
	ld bc,010feh		;bdd9
	sub e			;bddc
	ei			;bddd
	inc bc			;bdde
	cp 004h			;bddf
	ld sp,03131h		;bde1
	ld sp,010feh		;bde4
	sub c			;bde7
	sub c			;bde8
	sub c			;bde9
	sub c			;bdea
	cp 004h			;bdeb
	ret nc			;bded
	jp (hl)			;bdee
	inc b			;bdef
	sub c			;bdf0
	ld bc,00131h		;bdf1
	sub c			;bdf4
	ld bc,00131h		;bdf5
	sub c			;bdf8
	ld bc,00131h		;bdf9
	sub c			;bdfc
	ld bc,010feh		;bdfd
	sub e			;be00
	cp 004h			;be01
	sub b			;be03
	nop			;be04
	ld de,09031h		;be05
	nop			;be08
	ld de,09031h		;be09
	nop			;be0c
	ld de,09031h		;be0d
	nop			;be10
	ld de,00090h		;be11
	ld de,0fe31h		;be14
	djnz lbdach		;be17
	push af			;be19
	cp 004h			;be1a
	sub c			;be1c
	ld bc,09101h		;be1d
	ld bc,0fe01h		;be20
	djnz lbdb8h		;be23
	ei			;be25
	inc bc			;be26
	cp 004h			;be27
	ld sp,03131h		;be29
	ld sp,010feh		;be2c
	sub c			;be2f
	sub c			;be30
	sub c			;be31
	sub c			;be32
	defb 0fdh,040h,09dh ;illegal sequence	;be33
	cp 001h			;be36
	jp (hl)			;be38
	inc b			;be39
	xor 002h		;be3a
	ex de,hl		;be3c
	add hl,bc		;be3d
	djnz $-20		;be3e
	add hl,bc		;be40
	push af			;be41
	pop bc			;be42
	pop de			;be43
	ld hl,09151h		;be44
	ld hl,09151h		;be47
	ret nc			;be4a
	ld bc,091d1h		;be4b
	ld d,c			;be4e
	or c			;be4f
	ld (hl),c		;be50
	ld b,c			;be51
	ld (hl),c		;be52
	ei			;be53
	ex af,af'		;be54
	cp 001h			;be55
	jp (hl)			;be57
	inc b			;be58
	pop bc			;be59
	ex de,hl		;be5a
	ld (de),a		;be5b
	ld (00beah),hl		;be5c
	in a,(001h)		;be5f
	jp p,0f110h		;be61
	ld b,l			;be64
	push af			;be65
	jp nc,09193h		;be66
	pop de			;be69
	ld bc,0d201h		;be6a
	or c			;be6d
	or c			;be6e
	ei			;be6f
	rlca			;be70
	jp p,0f106h		;be71
	scf			;be74
	jp nc,0f295h		;be75
	djnz $-13		;be78
	ld b,l			;be7a
	pop de			;be7b
	ld bc,0d201h		;be7c
	or c			;be7f
	cp 001h			;be80
	jp (hl)			;be82
	inc b			;be83
	pop bc			;be84
	ex de,hl		;be85
	ld (bc),a		;be86
	jr nc,$-20		;be87
	ld a,(bc)		;be89
	in a,(004h)		;be8a
	jp p,0f105h		;be8c
	ld b,d			;be8f
	jp nc,0d373h		;be90
	ld (hl),e		;be93
	sub e			;be94
	jp nc,05391h		;be95
	out (053h),a		;be98
	ld (hl),e		;be9a
	jp nc,04371h		;be9b
	out (043h),a		;be9e
	ld d,e			;bea0
	jp nc,02351h		;bea1
	out (023h),a		;bea4
	ld b,e			;bea6
	jp nc,0d340h		;bea7
	sub b			;beaa
	and (hl)		;beab
	sub b			;beac
	or h			;bead
	or b			;beae
	jp nc,03002h		;beaf
	ld b,d			;beb2
	ld h,b			;beb3
	ld (hl),a		;beb4
	call c,001feh		;beb5
	jp (hl)			;beb8
	inc b			;beb9
	pop bc			;beba
	ex de,hl		;bebb
	ld (bc),a		;bebc
	jr nc,$-20		;bebd
	ld a,(bc)		;bebf
	in a,(004h)		;bec0
	jp p,0f10dh		;bec2
	ld b,l			;bec5
	jp nc,0d373h		;bec6
	ld (hl),e		;bec9
	sub e			;beca
	jp nc,05391h		;becb
	out (053h),a		;bece
	ld (hl),e		;bed0
	jp nc,04371h		;bed1
	out (043h),a		;bed4
	ld d,e			;bed6
	jp nc,02351h		;bed7
	out (023h),a		;beda
	ld b,e			;bedc
	jp nc,0d340h		;bedd
	sub b			;bee0
	and (hl)		;bee1
	jp nc,02610h		;bee2
	out (001h),a		;bee5
	ld b,c			;bee7
	ld (hl),c		;bee8
	jp nc,04101h		;bee9
	ld (hl),c		;beec
	pop de			;beed
	ld bc,0dc40h		;beee
	cp 001h			;bef1
	jp (hl)			;bef3
	inc b			;bef4
	pop bc			;bef5
	ex de,hl		;bef6
	ld (bc),a		;bef7
	jr nz,$-20		;bef8
	ld a,(bc)		;befa
	jp p,0f110h		;befb
	ld b,h			;befe
	sub 002h		;beff
	ld (bc),a		;bf01
	jp (hl)			;bf02
	ld (bc),a		;bf03
	jp nc,04030h		;bf04
	jp (hl)			;bf07
	inc b			;bf08
	ld d,b			;bf09
	ld b,c			;bf0a
	ld hl,02101h		;bf0b
	out (0a3h),a		;bf0e
	jp nc,04355h		;bf10
	ld d,e			;bf13
	ld (hl),e		;bf14
	jp (hl)			;bf15
	ld (bc),a		;bf16
	ld (hl),b		;bf17
	add a,b			;bf18
	jp (hl)			;bf19
	inc b			;bf1a
	sub b			;bf1b
	ld (hl),c		;bf1c
	ld d,c			;bf1d
	ld b,c			;bf1e
	ld d,c			;bf1f
	ld hl,0919bh		;bf20
	pop de			;bf23
	dec b			;bf24
	call c,0f5d8h		;bf25
	ret nc			;bf28
	nop			;bf29
	pop de			;bf2a
	ld d,b			;bf2b
	jr nz,$+82		;bf2c
	ei			;bf2e
	inc b			;bf2f
	push af			;bf30
	pop de			;bf31
	or b			;bf32
	ld d,b			;bf33
	jr nz,lbf86h		;bf34
	ei			;bf36
	inc b			;bf37
	push af			;bf38
	pop de			;bf39
	and b			;bf3a
	ld d,b			;bf3b
lbf3ch:
	jr nz,lbf8eh		;bf3c
	ei			;bf3e
	inc b			;bf3f
	push af			;bf40
	sub b			;bf41
	ld d,b			;bf42
	jr nz,$+82		;bf43
	ei			;bf45
	inc bc			;bf46
	sub b			;bf47
	ld d,b			;bf48
	cp 001h			;bf49
	jp (hl)			;bf4b
	inc b			;bf4c
	pop bc			;bf4d
	ex de,hl		;bf4e
	ld (bc),a		;bf4f
	jr nz,lbf3ch		;bf50
	ld a,(bc)		;bf52
	jp p,0f110h		;bf53
	ld b,h			;bf56
	sub 001h		;bf57
	ld bc,002e9h		;bf59
	pop de			;bf5c
	jr nc,lbf9fh		;bf5d
	jp (hl)			;bf5f
	inc b			;bf60
	ld d,b			;bf61
	ld b,c			;bf62
	ld hl,02101h		;bf63
	jp nc,0d1a3h		;bf66
	ld d,l			;bf69
	ld b,e			;bf6a
	ld d,e			;bf6b
	ld (hl),e		;bf6c
	jp (hl)			;bf6d
	ld (bc),a		;bf6e
	ld (hl),b		;bf6f
	add a,b			;bf70
	jp (hl)			;bf71
	inc b			;bf72
	sub b			;bf73
	ld (hl),c		;bf74
	ld d,c			;bf75
	ld b,c			;bf76
	ld d,c			;bf77
	ld hl,0919bh		;bf78
	ret nc			;bf7b
	dec b			;bf7c
	call c,0f5d8h		;bf7d
	ret nc			;bf80
	nop			;bf81
	pop de			;bf82
	ld d,b			;bf83
	jr nz,lbfd6h		;bf84
lbf86h:
	ei			;bf86
	inc b			;bf87
	push af			;bf88
	pop de			;bf89
	or b			;bf8a
	ld d,b			;bf8b
	jr nz,lbfdeh		;bf8c
lbf8eh:
	ei			;bf8e
	inc b			;bf8f
	push af			;bf90
	pop de			;bf91
	and b			;bf92
	ld d,b			;bf93
	jr nz,$+82		;bf94
	ei			;bf96
	inc b			;bf97
	push af			;bf98
	sub b			;bf99
	ld d,b			;bf9a
	jr nz,$+82		;bf9b
	ei			;bf9d
	inc bc			;bf9e
lbf9fh:
	sub b			;bf9f
	ld d,b			;bfa0
	defb 0fdh,055h ;ld d,iyl	;bfa1
	sbc a,(hl)		;bfa3
	cp 001h			;bfa4
	ret m			;bfa6
	ld d,h			;bfa7
	jp (hl)			;bfa8
	inc b			;bfa9
	defb 0ddh,024h ;inc ixh	;bfaa
	ld h,l			;bfac
	jp pe,0db0ch		;bfad
	ld bc,0d2f5h		;bfb0
	inc hl			;bfb3
	sub e			;bfb4
	ld d,e			;bfb5
	pop de			;bfb6
	inc bc			;bfb7
	jp nc,07353h		;bfb8
	ld (hl),e		;bfbb
	ei			;bfbc
	ex af,af'		;bfbd
	cp 001h			;bfbe
	ret m			;bfc0
	add a,c			;bfc1
	jp nz,008e9h		;bfc2
	call pe,00aeah		;bfc5
	push de			;bfc8
	dec l			;bfc9
	call nc,0d52dh		;bfca
	dec l			;bfcd
	call nc,080f8h		;bfce
	pop bc			;bfd1
	inc l			;bfd2
	ret m			;bfd3
	jr z,$-21		;bfd4
lbfd6h:
	inc b			;bfd6
	ex de,hl		;bfd7
	ld (0d470h),hl		;bfd8
	ld bc,001feh		;bfdb
lbfdeh:
	ret m			;bfde
	ld h,h			;bfdf
	jp (hl)			;bfe0
	inc b			;bfe1
	ex de,hl		;bfe2
	add hl,bc		;bfe3
	ld b,b			;bfe4
	in a,(003h)		;bfe5
	jp pe,0f50fh		;bfe7
	push de			;bfea
	ld hl,021d4h		;bfeb
	push de			;bfee
	ld hl,0d421h		;bfef
	ld hl,021d5h		;bff2
	ld hl,021d4h		;bff5
	push de			;bff8
	ld hl,0d421h		;bff9
	ld hl,021d5h		;bffc
	push de			;bfff

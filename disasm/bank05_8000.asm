; z80dasm 1.2.0
; command line: z80dasm -a -l -g 0x8000 -o /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/disasm/bank05_8000.asm /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/banks/bank05.bin

	org 08000h

	ld a,(ix+001h)		;8000
	dec a			;8003
	jr z,l803fh		;8004
	dec a			;8006
	jr z,l804eh		;8007
	call 06796h		;8009
	rrca			;800c
	rrca			;800d
	and 001h		;800e
	ld (ix+020h),a		;8010
	ld l,(ix+020h)		;8013
	ld h,000h		;8016
	add hl,hl		;8018
	ld de,l806bh		;8019
	add hl,de		;801c
	ld e,(hl)		;801d
	inc hl			;801e
	ld d,(hl)		;801f
	ld l,(ix+038h)		;8020
	dec l			;8023
	ld h,000h		;8024
	add hl,hl		;8026
	add hl,de		;8027
	ld a,(hl)		;8028
	add a,(ix+008h)		;8029
	ld (ix+008h),a		;802c
	inc hl			;802f
	ld a,(hl)		;8030
	add a,(ix+00ah)		;8031
	ld (ix+00ah),a		;8034
	ld a,008h		;8037
	call sub_8062h		;8039
	jp 06c1dh		;803c
l803fh:
	call 06adfh		;803f
	ret nz			;8042
	call 06bfah		;8043
	ld a,006h		;8046
	call 06ae8h		;8048
	jp 06c1dh		;804b
l804eh:
	call 06adfh		;804e
	jr z,l805ch		;8051
	cp 003h			;8053
	ret nz			;8055
	ld de,00000h		;8056
	jp l9bfah		;8059
l805ch:
	ld a,028h		;805c
	ld (ix+001h),001h	;805e
sub_8062h:
	call 06ae8h		;8062
	ld de,0ff40h		;8065
	jp 06bfdh		;8068
l806bh:
	ld l,a			;806b
	add a,b			;806c
	ld (hl),a		;806d
	add a,b			;806e
	inc b			;806f
	nop			;8070
	ex af,af'		;8071
	nop			;8072
	nop			;8073
	ld (bc),a		;8074
	inc c			;8075
	ld (bc),a		;8076
	nop			;8077
	nop			;8078
	inc b			;8079
	ld bc,00108h		;807a
	inc c			;807d
	ld bc,07eddh		;807e
	ld bc,01acdh		;8081
	ld b,(hl)		;8084
	adc a,a			;8085
	add a,b			;8086
	sbc a,a			;8087
	add a,b			;8088
	call 0f180h		;8089
	add a,b			;808c
	defb 0fdh,080h,0cdh ;illegal sequence	;808d
	ld d,h			;8090
	ld h,a			;8091
	ld a,020h		;8092
	call 06adbh		;8094
	inc (ix+03dh)		;8097
	ld a,001h		;809a
	jp l8121h		;809c
	call 06ad2h		;809f
	jp z,l80b3h		;80a2
	call sub_8110h		;80a5
	jr c,l80b3h		;80a8
	ld a,(0ca02h)		;80aa
	and 007h		;80ad
	ret nz			;80af
	jp 06b43h		;80b0
l80b3h:
	ld a,(0ca48h)		;80b3
	sub (ix+008h)		;80b6
	ld b,000h		;80b9
	jr nc,l80c0h		;80bb
	neg			;80bd
	inc b			;80bf
l80c0h:
	ld (ix+022h),a		;80c0
	ld (ix+023h),a		;80c3
	ld (ix+020h),b		;80c6
	ld a,002h		;80c9
	jr l8121h		;80cb
	ld a,(ix+022h)		;80cd
	dec (ix+022h)		;80d0
	and a			;80d3
	ret nz			;80d4
	call sub_8106h		;80d5
	ld a,001h		;80d8
	xor (ix+020h)		;80da
	ld (ix+020h),a		;80dd
	ld a,(ix+021h)		;80e0
	and a			;80e3
	ld a,003h		;80e4
	jr z,l80efh		;80e6
	ld a,008h		;80e8
	call 06adbh		;80ea
	ld a,004h		;80ed
l80efh:
	jr l8121h		;80ef
	ld a,(ix+023h)		;80f1
	dec (ix+023h)		;80f4
	and a			;80f7
	ret nz			;80f8
	ld a,001h		;80f9
	jr l8121h		;80fb
	call 06ad2h		;80fd
	ret nz			;8100
	ld a,008h		;8101
	call 06adbh		;8103
sub_8106h:
	ld a,020h		;8106
	call 06adbh		;8108
	ld b,000h		;810b
	jp l9cb5h		;810d
sub_8110h:
	ld a,(0ca4ah)		;8110
	sub (ix+00ah)		;8113
	jr nc,l811ah		;8116
	neg			;8118
l811ah:
	cp 006h			;811a
	ret nc			;811c
	inc (ix+021h)		;811d
	ret			;8120
l8121h:
	ld (ix+001h),a		;8121
	ld l,(ix+001h)		;8124
	dec l			;8127
	ld h,000h		;8128
	add hl,hl		;812a
	ld de,l8148h		;812b
	add hl,de		;812e
	ld d,000h		;812f
	ld a,(ix+020h)		;8131
	and a			;8134
	ld a,(hl)		;8135
	jr z,l813fh		;8136
	and a			;8138
	jr z,l813fh		;8139
	ld d,0ffh		;813b
	neg			;813d
l813fh:
	ld e,a			;813f
	inc hl			;8140
	ld l,(hl)		;8141
	ld h,000h		;8142
	ex de,hl		;8144
	jp 06bebh		;8145
l8148h:
	jr nz,l814ah		;8148
l814ah:
	ret nz			;814a
	nop			;814b
	ret nz			;814c
	nop			;814d
	nop			;814e
	ret nz			;814f
	call 06754h		;8150
	ld a,(ix+008h)		;8153
	bit 7,a			;8156
	jr z,l816bh		;8158
	res 7,a			;815a
	ld (ix+008h),a		;815c
	ld (ix+00ah),001h	;815f
	ld a,(0ca19h)		;8163
	cp 004h			;8166
	jp c,06e98h		;8168
l816bh:
	ld (ix+017h),001h	;816b
	ret			;816f
	call sub_817dh		;8170
	ld a,(ix+004h)		;8173
	or a			;8176
	ret z			;8177
	ld (ix+017h),002h	;8178
	ret			;817c
sub_817dh:
	ld a,(ix+00ah)		;817d
	cp 002h			;8180
	jr c,l8188h		;8182
	dec (ix+017h)		;8184
	ret nz			;8187
l8188h:
	ld (ix+017h),00ah	;8188
	ld iy,0ca40h		;818c
	ld a,(0ca19h)		;8190
	srl a			;8193
	add a,00ah		;8195
	add a,(ix+003h)		;8197
	call 06b6ch		;819a
	ld a,(ix+00eh)		;819d
	rlca			;81a0
	ld a,000h		;81a1
	jr nc,l81a6h		;81a3
	inc a			;81a5
l81a6h:
	ld (ix+005h),a		;81a6
	ret			;81a9
	ld a,(iy+000h)		;81aa
	cp 004h			;81ad
	jr z,l81d6h		;81af
	cp 007h			;81b1
	jr z,l81d6h		;81b3
	cp 006h			;81b5
	jr z,l81bch		;81b7
	cp 005h			;81b9
	ret nz			;81bb
l81bch:
	ld a,(iy+012h)		;81bc
	cp 004h			;81bf
	ret nc			;81c1
	add a,a			;81c2
	add a,a			;81c3
	ld e,a			;81c4
	ld d,000h		;81c5
	ld hl,l820dh		;81c7
	add hl,de		;81ca
	ld e,(hl)		;81cb
	inc hl			;81cc
	ld d,(hl)		;81cd
	inc hl			;81ce
	ld c,(hl)		;81cf
	inc hl			;81d0
	ld b,(hl)		;81d1
	call sub_81f2h		;81d2
	ret			;81d5
l81d6h:
	ld d,(iy+00eh)		;81d6
	ld e,(iy+00dh)		;81d9
	ld b,(iy+00ch)		;81dc
	ld c,(iy+00bh)		;81df
	sra b			;81e2
	rr c			;81e4
	sra b			;81e6
	rr c			;81e8
	sra d			;81ea
	rr e			;81ec
	sra d			;81ee
	rr e			;81f0
sub_81f2h:
	ld h,(ix+00ch)		;81f2
	ld l,(ix+00bh)		;81f5
	add hl,bc		;81f8
	ld (ix+00ch),h		;81f9
	ld (ix+00bh),l		;81fc
	ld h,(ix+00eh)		;81ff
	ld l,(ix+00dh)		;8202
	add hl,de		;8205
	ld (ix+00eh),h		;8206
	ld (ix+00dh),l		;8209
	ret			;820c
l820dh:
	ld b,b			;820d
	nop			;820e
	nop			;820f
	nop			;8210
	nop			;8211
	nop			;8212
	ld b,b			;8213
	nop			;8214
	ret nz			;8215
	rst 38h			;8216
	nop			;8217
	nop			;8218
	nop			;8219
	nop			;821a
	ret nz			;821b
	rst 38h			;821c
	ld a,(ix+001h)		;821d
	dec a			;8220
	jr z,l8249h		;8221
	dec a			;8223
	jr z,l8257h		;8224
	dec a			;8226
	jr z,l8272h		;8227
	call 06754h		;8229
	ld (ix+03eh),005h	;822c
	ld (ix+006h),002h	;8230
	ld b,060h		;8234
	ld a,(0ca19h)		;8236
	cp 006h			;8239
	jr c,l8243h		;823b
	ld (ix+016h),02ch	;823d
	ld b,010h		;8241
l8243h:
	ld (ix+017h),b		;8243
	jp 06c1dh		;8246
l8249h:
	call 06ad2h		;8249
	ret nz			;824c
	call sub_82abh		;824d
	ld (ix+006h),000h	;8250
	jp 06c1dh		;8254
l8257h:
	call 06ad2h		;8257
	jp z,06c1dh		;825a
	ld a,(0ca02h)		;825d
	and 003h		;8260
	ret nz			;8262
	ld a,001h		;8263
	xor (ix+006h)		;8265
	ld (ix+006h),a		;8268
	and a			;826b
	ret z			;826c
	ld a,020h		;826d
	jp 04af0h		;826f
l8272h:
	ld a,(ix+00ah)		;8272
	and a			;8275
	jp m,l82a3h		;8276
	cp 008h			;8279
	jr c,l82a3h		;827b
	ld a,(0ca19h)		;827d
	rrca			;8280
	rrca			;8281
	and 003h		;8282
	ld d,a			;8284
	ld a,(ix+020h)		;8285
	cp 004h			;8288
	jr nc,l829eh		;828a
	inc (ix+020h)		;828c
	ld e,a			;828f
	ld l,a			;8290
	ld h,000h		;8291
	add hl,hl		;8293
	ld bc,l82c2h		;8294
	add hl,bc		;8297
	ld c,(hl)		;8298
	inc hl			;8299
	ld b,(hl)		;829a
	jp l9024h		;829b
l829eh:
	ld a,017h		;829e
	call 04af0h		;82a0
l82a3h:
	ld (ix+020h),000h	;82a3
	ld (ix+001h),002h	;82a7
sub_82abh:
	ld a,(0ca19h)		;82ab
	rrca			;82ae
	rrca			;82af
	and 007h		;82b0
	ld l,a			;82b2
	ld h,000h		;82b3
	ld de,l82beh		;82b5
	add hl,de		;82b8
	ld a,(hl)		;82b9
	ld (ix+017h),a		;82ba
	ret			;82bd
l82beh:
	jr $+26			;82be
	djnz l82cah		;82c0
l82c2h:
	nop			;82c2
	inc b			;82c3
	inc b			;82c4
	nop			;82c5
	rlca			;82c6
	inc b			;82c7
	inc bc			;82c8
	add hl,bc		;82c9
l82cah:
	ld a,(ix+001h)		;82ca
	and a			;82cd
	jr nz,l82f5h		;82ce
l82d0h:
	call 06754h		;82d0
l82d3h:
	ld a,d			;82d3
	rlca			;82d4
	jr nc,l82deh		;82d5
	inc (ix+020h)		;82d7
	ld (ix+006h),004h	;82da
l82deh:
	ld a,020h		;82de
	ld (ix+017h),a		;82e0
	ld a,(0ce53h)		;82e3
	inc a			;82e6
	cp 004h			;82e7
	jr nz,l82efh		;82e9
	inc (ix+03dh)		;82eb
	xor a			;82ee
l82efh:
	ld (0ce53h),a		;82ef
	jp 06c1dh		;82f2
l82f5h:
	call sub_8304h		;82f5
	ld a,(0ca02h)		;82f8
	xor (ix+02dh)		;82fb
	and 01fh		;82fe
	ret nz			;8300
	jp 072d4h		;8301
sub_8304h:
	ld a,(0ca02h)		;8304
	add a,(ix+02dh)		;8307
	and 007h		;830a
	ret nz			;830c
	call 06b94h		;830d
	ld a,(ix+020h)		;8310
	and a			;8313
	ld hl,l8327h		;8314
	jr z,l831ch		;8317
	ld hl,l832fh		;8319
l831ch:
	ld a,c			;831c
	and 007h		;831d
	call 04600h		;831f
	ld a,(hl)		;8322
	ld (ix+006h),a		;8323
	ret			;8326
l8327h:
	nop			;8327
	ld bc,00302h		;8328
	inc bc			;832b
	inc bc			;832c
	nop			;832d
	nop			;832e
l832fh:
	inc b			;832f
	inc b			;8330
	rlca			;8331
	rlca			;8332
	rlca			;8333
	ld b,005h		;8334
	inc b			;8336
	ret			;8337
	ld hl,00040h		;8338
	call 06bf3h		;833b
	jp 06c3ah		;833e
sub_8341h:
	ld a,(ix+001h)		;8341
	or a			;8344
	jr nz,l8367h		;8345
sub_8347h:
	call 06754h		;8347
	ld b,000h		;834a
	ld a,d			;834c
	rlca			;834d
	ld a,003h		;834e
	jr nc,l835bh		;8350
	inc (ix+020h)		;8352
	inc b			;8355
	ld (ix+006h),b		;8356
	ld a,004h		;8359
l835bh:
	ld (ix+03eh),a		;835b
	call 06796h		;835e
	call 06ae8h		;8361
	jp 06c1dh		;8364
l8367h:
	call 06adfh		;8367
	ret nz			;836a
	ld a,010h		;836b
	call 06ae8h		;836d
	ld a,016h		;8370
	call 0684ch		;8372
	jr c,l8394h		;8375
	ld a,(ix+020h)		;8377
	ld b,002h		;837a
	ld c,0feh		;837c
	and a			;837e
	jr z,l8384h		;837f
	ld bc,00202h		;8381
l8384h:
	call 06929h		;8384
	ld a,(ix+020h)		;8387
	ld (iy+020h),a		;838a
	ld a,(ix+03dh)		;838d
	and a			;8390
	call nz,sub_83a9h	;8391
l8394h:
	call 0699eh		;8394
	inc (ix+021h)		;8397
	ld a,003h		;839a
	cp (ix+021h)		;839c
	ret nz			;839f
	ld (ix+021h),000h	;83a0
	ld a,040h		;83a4
	jp 06ae8h		;83a6
sub_83a9h:
	inc (ix+022h)		;83a9
	ld a,(ix+022h)		;83ac
	rrca			;83af
	ret c			;83b0
	inc (iy+03dh)		;83b1
	ret			;83b4
	call 06754h		;83b5
	ld hl,00060h		;83b8
sub_83bbh:
	call 06bf3h		;83bb
	ret			;83be
	call sub_8402h		;83bf
	ld a,(ix+001h)		;83c2
	dec a			;83c5
	jr z,l83e2h		;83c6
	jp p,l83f9h		;83c8
	call 0755dh		;83cb
	ld a,d			;83ce
	or a			;83cf
	ret p			;83d0
	ld a,e			;83d1
	add a,000h		;83d2
	cp 008h			;83d4
	ret nc			;83d6
	inc (ix+001h)		;83d7
	ld (ix+017h),003h	;83da
	ld (ix+018h),005h	;83de
l83e2h:
	dec (ix+018h)		;83e2
	ret nz			;83e5
	ld (ix+018h),005h	;83e6
	call sub_8420h		;83ea
	dec (ix+017h)		;83ed
	ret nz			;83f0
	inc (ix+001h)		;83f1
	ld (ix+018h),00ah	;83f4
	ret			;83f8
l83f9h:
	dec (ix+018h)		;83f9
	ret nz			;83fc
	ld (ix+001h),000h	;83fd
	ret			;8401
sub_8402h:
	ld hl,00200h		;8402
	ld de,00200h		;8405
	call 076d0h		;8408
	call 07b18h		;840b
	ld a,(de)		;840e
	cp 0cch			;840f
	ret z			;8411
	call 06b43h		;8412
	ret			;8415
	ld a,(ix+00ch)		;8416
	or a			;8419
	ld a,000h		;841a
	ret m			;841c
	ld a,003h		;841d
	ret			;841f
sub_8420h:
	ld bc,00000h		;8420
	jp l9cb5h		;8423
	ld hl,l842fh		;8426
	call 07186h		;8429
	jp 07306h		;842c
l842fh:
	nop			;842f
	rst 38h			;8430
	ld (ix+017h),01eh	;8431
	call 06754h		;8435
	ld a,d			;8438
	and 080h		;8439
	rlca			;843b
	ld (ix+020h),a		;843c
	ld (ix+005h),a		;843f
	ld de,0ffd0h		;8442
	call 06bfdh		;8445
	ld (ix+03dh),001h	;8448
	ret			;844c
	ld a,(ix+001h)		;844d
	dec a			;8450
	jr z,l846bh		;8451
	call sub_84aah		;8453
	dec (ix+017h)		;8456
	ret nz			;8459
	call sub_8488h		;845a
	call 06bfah		;845d
	ld (ix+017h),008h	;8460
	ld (ix+018h),002h	;8464
	inc (ix+001h)		;8468
l846bh:
	call sub_84aah		;846b
	dec (ix+017h)		;846e
	ret nz			;8471
	call sub_84dch		;8472
	ld (ix+017h),008h	;8475
	dec (ix+018h)		;8479
	jp nz,l849dh		;847c
	ld (ix+001h),000h	;847f
	ld (ix+017h),028h	;8483
	ret			;8487
sub_8488h:
	ld h,(ix+00eh)		;8488
	ld l,(ix+00dh)		;848b
	ld (ix+012h),000h	;848e
	ld (ix+011h),000h	;8492
	ld (ix+012h),h		;8496
	ld (ix+011h),l		;8499
	ret			;849c
l849dh:
	ld h,(ix+012h)		;849d
	ld l,(ix+011h)		;84a0
	ld (ix+00eh),h		;84a3
	ld (ix+00dh),l		;84a6
	ret			;84a9
sub_84aah:
	ld d,(ix+00ah)		;84aa
	ld e,(ix+008h)		;84ad
	call sub_84d2h		;84b0
	add a,d			;84b3
	ld d,a			;84b4
	call 0753ch		;84b5
	jr c,l84beh		;84b8
	ret z			;84ba
	jp 06b53h		;84bb
l84beh:
	call sub_84cbh		;84be
	call 0753ch		;84c1
	jp c,06b53h		;84c4
	ret z			;84c7
	jp 06b53h		;84c8
sub_84cbh:
	ld a,(ix+00eh)		;84cb
	neg			;84ce
	jr l84d6h		;84d0
sub_84d2h:
	ld a,(ix+00eh)		;84d2
	or a			;84d5
l84d6h:
	ld a,0ffh		;84d6
	ret m			;84d8
	ld a,005h		;84d9
	ret			;84db
sub_84dch:
	ld hl,l84f1h		;84dc
	ld a,(ix+020h)		;84df
	and a			;84e2
	jr z,l84e8h		;84e3
	ld hl,l84f5h		;84e5
l84e8h:
	call 07186h		;84e8
	ld bc,00200h		;84eb
	jp 07306h		;84ee
l84f1h:
	ld (bc),a		;84f1
	inc b			;84f2
	ld b,0ffh		;84f3
l84f5h:
	ld a,(bc)		;84f5
	inc c			;84f6
	ld c,0ffh		;84f7
	ld de,l858fh		;84f9
	call 07b65h		;84fc
	ld a,(ix+001h)		;84ff
	cp 004h			;8502
	jp nc,04ae0h		;8504
	call 0461ah		;8507
	ld (de),a		;850a
	add a,l			;850b
	ld b,b			;850c
	add a,l			;850d
	ld h,a			;850e
	add a,l			;850f
	add a,b			;8510
	add a,l			;8511
	call 06754h		;8512
	call 06796h		;8515
	ld c,a			;8518
	and 00fh		;8519
	ld (ix+020h),a		;851b
	xor c			;851e
	ld (ix+003h),a		;851f
	or a			;8522
	jr z,l8531h		;8523
	ld (ix+006h),002h	;8525
	ld a,(ix+008h)		;8529
	add a,004h		;852c
	ld (ix+008h),a		;852e
l8531h:
	ld (ix+020h),000h	;8531
	ld a,(ix+003h)		;8535
	srl a			;8538
	call sub_8650h		;853a
	jp 06c1dh		;853d
	ld a,(ix+037h)		;8540
	and a			;8543
	ret nz			;8544
	call 07dcdh		;8545
	call 07dc3h		;8548
	ld a,(ix+003h)		;854b
	or a			;854e
	jr nz,l855ah		;854f
	ld (ix+006h),001h	;8551
	ld (ix+001h),003h	;8555
	ret			;8559
l855ah:
	ld (ix+006h),003h	;855a
	ld (ix+001h),002h	;855e
	ld (ix+017h),003h	;8562
	ret			;8566
	dec (ix+017h)		;8567
	ret nz			;856a
	call 07dcdh		;856b
	ld (ix+017h),003h	;856e
	ld a,(ix+006h)		;8572
	inc a			;8575
	ld (ix+006h),a		;8576
	cp 005h			;8579
	ret nz			;857b
	ld (ix+001h),003h	;857c
	ret			;8580
	ld l,(ix+020h)		;8581
	ld h,000h		;8584
	ld de,l858fh		;8586
	add hl,hl		;8589
	add hl,de		;858a
	ld e,(hl)		;858b
	inc hl			;858c
	ld d,(hl)		;858d
	ret			;858e
l858fh:
	sbc a,e			;858f
	add a,l			;8590
	xor e			;8591
	add a,l			;8592
	or (hl)			;8593
	add a,l			;8594
	call po,00d85h		;8595
	add a,(hl)		;8598
	ld sp,01086h		;8599
	nop			;859c
	nop			;859d
	ld bc,0fe01h		;859e
	ld bc,08c00h		;85a1
	ld (bc),a		;85a4
	cp 00dh			;85a5
	nop			;85a7
	ld bc,0ff03h		;85a8
	dec bc			;85ab
	nop			;85ac
	nop			;85ad
	ld bc,0fe01h		;85ae
	dec c			;85b1
	nop			;85b2
	ld bc,0ff03h		;85b3
	ld l,000h		;85b6
	nop			;85b8
	ld bc,0fe01h		;85b9
	ld bc,08c00h		;85bc
	ld (bc),a		;85bf
	cp 00dh			;85c0
	nop			;85c2
	ld bc,0fe03h		;85c3
	nop			;85c6
	inc bc			;85c7
	ld bc,0fe01h		;85c8
	ld bc,08c03h		;85cb
	ld (bc),a		;85ce
	cp 00dh			;85cf
	inc bc			;85d1
	ld bc,0fe03h		;85d2
	nop			;85d5
	ld b,001h		;85d6
	ld bc,001feh		;85d8
	ld b,08ch		;85db
	ld (bc),a		;85dd
	cp 00dh			;85de
	ld b,001h		;85e0
	inc bc			;85e2
	rst 38h			;85e3
	add hl,hl		;85e4
	nop			;85e5
	nop			;85e6
	ld bc,0fe01h		;85e7
	dec c			;85ea
	nop			;85eb
	ld bc,0fe03h		;85ec
	nop			;85ef
	inc bc			;85f0
	ld bc,0fe01h		;85f1
	ld bc,08c03h		;85f4
	ld (bc),a		;85f7
	cp 00dh			;85f8
	inc bc			;85fa
	ld bc,0fe03h		;85fb
	nop			;85fe
	ld b,001h		;85ff
	ld bc,001feh		;8601
	ld b,08ch		;8604
	ld (bc),a		;8606
	cp 00dh			;8607
	ld b,001h		;8609
	inc bc			;860b
	rst 38h			;860c
	inc h			;860d
	nop			;860e
	nop			;860f
	ld bc,0fe01h		;8610
	dec c			;8613
	nop			;8614
	ld bc,0fe03h		;8615
	nop			;8618
	inc bc			;8619
	ld bc,0fe01h		;861a
	dec c			;861d
	inc bc			;861e
	ld bc,0fe03h		;861f
	nop			;8622
	ld b,001h		;8623
	ld bc,001feh		;8625
	ld b,08ch		;8628
	ld (bc),a		;862a
	cp 00dh			;862b
	ld b,001h		;862d
	inc bc			;862f
	rst 38h			;8630
	rra			;8631
	nop			;8632
	nop			;8633
	ld bc,0fe01h		;8634
	dec c			;8637
	nop			;8638
	ld bc,0fe03h		;8639
	nop			;863c
	inc bc			;863d
	ld bc,0fe01h		;863e
	dec c			;8641
	inc bc			;8642
	ld bc,0fe03h		;8643
	nop			;8646
	ld b,001h		;8647
	ld bc,00dfeh		;8649
	ld b,001h		;864c
	inc bc			;864e
	rst 38h			;864f
sub_8650h:
	ld de,0ffa0h		;8650
	ld b,005h		;8653
	call sub_8663h		;8655
	or a			;8658
	ret z			;8659
	ld b,005h		;865a
	ld de,00060h		;865c
	call sub_8663h		;865f
	ret			;8662
sub_8663h:
	push ix			;8663
	push af			;8665
	call sub_866dh		;8666
	pop af			;8669
	pop ix			;866a
	ret			;866c
sub_866dh:
	ld a,02ch		;866d
	push de			;866f
	push bc			;8670
	call 069bfh		;8671
	pop bc			;8674
	pop hl			;8675
	ret c			;8676
	push bc			;8677
	call sub_83bbh		;8678
	ld h,(iy+00ah)		;867b
	ld l,(iy+009h)		;867e
	ld de,0fe00h		;8681
	add hl,de		;8684
	ld (ix+00ah),h		;8685
	ld (ix+009h),l		;8688
	pop bc			;868b
	ld a,(iy+008h)		;868c
	add a,b			;868f
	ld (ix+008h),a		;8690
	ret			;8693
	ld a,(ix+001h)		;8694
	call 0461ah		;8697
	and h			;869a
	add a,(hl)		;869b
	or c			;869c
	add a,(hl)		;869d
	ret nc			;869e
	add a,(hl)		;869f
	pop af			;86a0
	add a,(hl)		;86a1
	rst 38h			;86a2
	add a,(hl)		;86a3
	call 06754h		;86a4
	ld a,d			;86a7
	rlca			;86a8
	jr nc,l86aeh		;86a9
	inc (ix+03dh)		;86ab
l86aeh:
	jp 06c1dh		;86ae
	call 0755dh		;86b1
	ld a,e			;86b4
	bit 7,a			;86b5
	jr z,l86bbh		;86b7
	neg			;86b9
l86bbh:
	cp 002h			;86bb
	jp c,06c1dh		;86bd
	cp 008h			;86c0
	ret nc			;86c2
	ld a,d			;86c3
	bit 7,a			;86c4
	jr z,l86cah		;86c6
	neg			;86c8
l86cah:
	cp 008h			;86ca
	ret nc			;86cc
	jp 06c1dh		;86cd
	call 06b94h		;86d0
	ld a,c			;86d3
	call sub_8708h		;86d4
	jr z,l86ech		;86d7
	ld a,b			;86d9
	add a,002h		;86da
	and 007h		;86dc
	call sub_8708h		;86de
	jr z,l86ech		;86e1
	ld a,b			;86e3
	add a,004h		;86e4
	and 007h		;86e6
	ld (ix+020h),a		;86e8
	ld b,a			;86eb
l86ech:
	call sub_8724h		;86ec
	jr l86f8h		;86ef
	call 06ad2h		;86f1
	ret nz			;86f4
	call 06be6h		;86f5
l86f8h:
	ld (ix+017h),004h	;86f8
	jp 06c1dh		;86fc
	call 06ad2h		;86ff
	ret nz			;8702
	ld (ix+001h),002h	;8703
	ret			;8707
sub_8708h:
	ld (ix+020h),a		;8708
	push af			;870b
	ld l,a			;870c
	ld h,000h		;870d
	add hl,hl		;870f
	ld de,l873fh		;8710
	add hl,de		;8713
	ld a,(hl)		;8714
	add a,(ix+008h)		;8715
	ld e,a			;8718
	inc hl			;8719
	ld a,(hl)		;871a
	add a,(ix+00ah)		;871b
	ld d,a			;871e
	call 0753ch		;871f
	pop bc			;8722
	ret			;8723
sub_8724h:
	ld a,b			;8724
	ld l,a			;8725
	ld h,000h		;8726
	add hl,hl		;8728
	ld de,l874fh		;8729
	add hl,de		;872c
	ld a,(hl)		;872d
	call sub_8734h		;872e
	inc hl			;8731
	ld a,(hl)		;8732
	ex de,hl		;8733
sub_8734h:
	ld d,000h		;8734
	bit 7,a			;8736
	jr z,l873bh		;8738
	dec d			;873a
l873bh:
	ld e,a			;873b
	jp 06bebh		;873c
l873fh:
	nop			;873f
	rst 38h			;8740
	rst 38h			;8741
	rst 38h			;8742
	rst 38h			;8743
	nop			;8744
	rst 38h			;8745
	inc bc			;8746
	nop			;8747
	inc bc			;8748
	inc bc			;8749
	inc bc			;874a
	inc bc			;874b
	nop			;874c
	inc bc			;874d
	rst 38h			;874e
l874fh:
	nop			;874f
	and b			;8750
	and b			;8751
	and b			;8752
	and b			;8753
	nop			;8754
	and b			;8755
	ld h,b			;8756
	nop			;8757
	ld h,b			;8758
	ld h,b			;8759
	ld h,b			;875a
	ld h,b			;875b
	nop			;875c
	ld h,b			;875d
	and b			;875e
	call 06754h		;875f
	push ix			;8762
	ld de,0ffa0h		;8764
	call sub_8777h		;8767
	pop ix			;876a
	push ix			;876c
	ld de,00060h		;876e
	call sub_8777h		;8771
	pop ix			;8774
	ret			;8776
sub_8777h:
	ld a,02ch		;8777
	push de			;8779
	call 069bfh		;877a
	pop hl			;877d
	ret c			;877e
	call sub_83bbh		;877f
	ld h,(iy+00ah)		;8782
	ld l,(iy+009h)		;8785
	ld de,0fe00h		;8788
l878bh:
	add hl,de		;878b
	ld (ix+00ah),h		;878c
	ld (ix+009h),l		;878f
	ld a,(iy+008h)		;8792
	add a,005h		;8795
	ld (ix+008h),a		;8797
	ret			;879a
	ld a,(ix+00ah)		;879b
	cp 0f6h			;879e
	jp z,06e98h		;87a0
	ld a,(ix+037h)		;87a3
	or a			;87a6
	ret nz			;87a7
	set 6,(ix+015h)		;87a8
	bit 0,(ix+001h)		;87ac
	ret nz			;87b0
	ld a,013h		;87b1
	call 04af5h		;87b3
	set 0,(ix+001h)		;87b6
	ret			;87ba
	inc (ix+018h)		;87bb
	jp l82d0h		;87be
	call sub_8304h		;87c1
	call 06adfh		;87c4
	ret nz			;87c7
	ld a,(ix+02dh)		;87c8
	add a,a			;87cb
	add a,01ch		;87cc
	ld (ix+018h),a		;87ce
	ld l,(ix+025h)		;87d1
	ld h,000h		;87d4
	ld de,l87ebh		;87d6
	add hl,de		;87d9
	ld a,(hl)		;87da
	add a,001h		;87db
	dec a			;87dd
	jr nc,l87e5h		;87de
	ld (ix+025h),000h	;87e0
	ld a,(de)		;87e4
l87e5h:
	inc (ix+025h)		;87e5
	jp 072f6h		;87e8
l87ebh:
	ex af,af'		;87eb
	ld a,(bc)		;87ec
	inc c			;87ed
	ld c,010h		;87ee
	rst 38h			;87f0
	call sub_88eah		;87f1
	ld a,(ix+001h)		;87f4
	cp 005h			;87f7
	jp nc,04ae0h		;87f9
	call 0461ah		;87fc
	add hl,bc		;87ff
	adc a,b			;8800
	jr z,l878bh		;8801
	scf			;8803
	adc a,b			;8804
	ld c,c			;8805
	adc a,b			;8806
	ld e,b			;8807
	adc a,b			;8808
	ld (ix+003h),001h	;8809
	ld (ix+00ah),01ch	;880d
	ld (ix+008h),000h	;8811
	ld (ix+017h),050h	;8815
	ld de,0ffe0h		;8819
	ld hl,00020h		;881c
	call 06bebh		;881f
	jr l8824h		;8822
l8824h:
	inc (ix+001h)		;8824
	ret			;8827
	dec (ix+017h)		;8828
	ret nz			;882b
	ld de,00020h		;882c
	call 06bfdh		;882f
	call 06bfdh		;8832
	jr l8824h		;8835
	call sub_885ch		;8837
	ld a,(ix+00ah)		;883a
	cp 018h			;883d
	ret c			;883f
	call 06bfah		;8840
	ld (ix+017h),078h	;8843
	jr l8824h		;8847
	call sub_885ch		;8849
	dec (ix+017h)		;884c
	ret nz			;884f
	ld de,0ffc0h		;8850
	call 06bfdh		;8853
	jr l8824h		;8856
	call sub_885ch		;8858
	ret			;885b
sub_885ch:
	ld a,(ix+002h)		;885c
	dec a			;885f
	jr z,l887bh		;8860
	jp p,l8886h		;8862
	call sub_8894h		;8865
	jr nz,l8870h		;8868
	call sub_88a1h		;886a
	jp l88cfh		;886d
l8870h:
	inc (ix+002h)		;8870
	ld a,(ix+008h)		;8873
	cp 009h			;8876
	jp l88d6h		;8878
l887bh:
	ld a,(ix+008h)		;887b
	sub 007h		;887e
	cp 001h			;8880
	ret nc			;8882
	inc (ix+002h)		;8883
l8886h:
	call sub_8894h		;8886
	jr nz,l8870h		;8889
	call sub_88a1h		;888b
	ret nz			;888e
	ld (ix+002h),000h	;888f
	ret			;8893
sub_8894h:
	ld de,001feh		;8894
	call 07595h		;8897
	ret nz			;889a
	ld de,00106h		;889b
	jp 07595h		;889e
sub_88a1h:
	call 0756ch		;88a1
	bit 7,d			;88a4
	jr z,l88abh		;88a6
	call 0460ah		;88a8
l88abh:
	bit 7,h			;88ab
	jr z,l88c0h		;88ad
	call 04612h		;88af
sub_88b2h:
	add hl,hl		;88b2
	or a			;88b3
	sbc hl,de		;88b4
	ret c			;88b6
	ld bc,00180h		;88b7
	or a			;88ba
	sbc hl,bc		;88bb
	ret nc			;88bd
	xor a			;88be
	ret			;88bf
l88c0h:
	call sub_88b2h		;88c0
	ret z			;88c3
	ccf			;88c4
	ret			;88c5
	ld a,(ix+022h)		;88c6
	dec a			;88c9
	ld (ix+022h),a		;88ca
	xor a			;88cd
	ret			;88ce
l88cfh:
	ld (ix+003h),001h	;88cf
	jp z,06bf0h		;88d3
l88d6h:
	ld hl,00030h		;88d6
	ld (ix+003h),002h	;88d9
	jp c,06bf3h		;88dd
	call 04612h		;88e0
	ld (ix+003h),000h	;88e3
	jp 06bf3h		;88e7
sub_88eah:
	ld a,(0ca02h)		;88ea
	and 017h		;88ed
	ret nz			;88ef
	call 0750fh		;88f0
	ret c			;88f3
	ld de,00000h		;88f4
	ld bc,00200h		;88f7
	push ix			;88fa
	call 09d1eh		;88fc
	pop ix			;88ff
	push ix			;8901
	ld de,00002h		;8903
	ld bc,00206h		;8906
	call 09d1eh		;8909
	pop ix			;890c
	ret			;890e
	ret			;890f
	ld a,(ix+001h)		;8910
	cp 002h			;8913
	jp nc,04ae0h		;8915
	call 0461ah		;8918
	rra			;891b
	adc a,c			;891c
	daa			;891d
	adc a,c			;891e
	inc (ix+001h)		;891f
	ret			;8922
	ld (ix+001h),a		;8923
	ret			;8926
	call sub_8952h		;8927
	ld a,(ix+022h)		;892a
	or a			;892d
	ret z			;892e
	jp l8932h		;892f
l8932h:
	ld a,(ix+021h)		;8932
	dec a			;8935
	jr z,l8944h		;8936
	ld a,(iy+027h)		;8938
	add a,(iy+029h)		;893b
	call sub_894dh		;893e
	jp l8a30h		;8941
l8944h:
	ld a,(iy+027h)		;8944
	call sub_894dh		;8947
	jp l89feh		;894a
sub_894dh:
	ld c,a			;894d
	ld b,(iy+026h)		;894e
	ret			;8951
sub_8952h:
	call 068deh		;8952
	jr c,l896ah		;8955
	ld a,(iy+00ah)		;8957
	ld (ix+00ah),a		;895a
	ld a,(iy+009h)		;895d
	ld (ix+009h),a		;8960
	ld a,(iy+022h)		;8963
	ld (ix+022h),a		;8966
	ret			;8969
l896ah:
	dec (ix+00ah)		;896a
	ret			;896d
sub_896eh:
	ld b,(ix+008h)		;896e
	ld c,(ix+007h)		;8971
	add hl,bc		;8974
	push hl			;8975
	ex de,hl		;8976
	or a			;8977
	sbc hl,de		;8978
	ld b,005h		;897a
l897ch:
	sra h			;897c
	rr l			;897e
	djnz l897ch		;8980
	pop bc			;8982
	ret			;8983
sub_8984h:
	ld b,(ix+00ah)		;8984
	ld c,(ix+009h)		;8987
	add hl,bc		;898a
	push hl			;898b
	ex de,hl		;898c
	or a			;898d
	sbc hl,de		;898e
	ld b,005h		;8990
l8992h:
	sra h			;8992
	rr l			;8994
	djnz l8992h		;8996
	pop bc			;8998
	ret			;8999
sub_899ah:
	push hl			;899a
	ld hl,00000h		;899b
	call sub_8984h		;899e
	push bc			;89a1
	exx			;89a2
	pop de			;89a3
	exx			;89a4
	ex (sp),hl		;89a5
	ex de,hl		;89a6
	ld hl,00004h		;89a7
	call sub_896eh		;89aa
	push bc			;89ad
	exx			;89ae
	pop hl			;89af
	exx			;89b0
	pop de			;89b1
	ret			;89b2
sub_89b3h:
	push hl			;89b3
	ld hl,00000h		;89b4
	call sub_8984h		;89b7
	push bc			;89ba
	exx			;89bb
	pop de			;89bc
	exx			;89bd
	ex (sp),hl		;89be
	ex de,hl		;89bf
	ld hl,00001h		;89c0
	call sub_896eh		;89c3
	push bc			;89c6
	exx			;89c7
	pop hl			;89c8
	exx			;89c9
	pop de			;89ca
	ret			;89cb
sub_89cch:
	push hl			;89cc
	ld hl,00004h		;89cd
	call sub_8984h		;89d0
	push bc			;89d3
	exx			;89d4
	pop de			;89d5
	exx			;89d6
	ex (sp),hl		;89d7
	ex de,hl		;89d8
	ld hl,00004h		;89d9
	call sub_896eh		;89dc
	push bc			;89df
	exx			;89e0
	pop hl			;89e1
	exx			;89e2
	pop de			;89e3
	ret			;89e4
sub_89e5h:
	push hl			;89e5
	ld hl,00004h		;89e6
	call sub_8984h		;89e9
	push bc			;89ec
	exx			;89ed
	pop de			;89ee
	exx			;89ef
	ex (sp),hl		;89f0
	ex de,hl		;89f1
	ld hl,00001h		;89f2
	call sub_896eh		;89f5
	push bc			;89f8
	exx			;89f9
	pop hl			;89fa
	exx			;89fb
	pop de			;89fc
	ret			;89fd
l89feh:
	ld a,(iy+028h)		;89fe
	push af			;8a01
	ld a,(iy+028h)		;8a02
	push bc			;8a05
	push af			;8a06
	call sub_8a62h		;8a07
	call sub_899ah		;8a0a
	exx			;8a0d
	ld c,(iy+029h)		;8a0e
	ld b,0cbh		;8a11
	exx			;8a13
	ld bc,00001h		;8a14
	call sub_8a68h		;8a17
	pop af			;8a1a
	pop bc			;8a1b
	add a,b			;8a1c
	ld b,a			;8a1d
	call sub_8a62h		;8a1e
	call sub_89cch		;8a21
	pop af			;8a24
	exx			;8a25
	ld c,a			;8a26
	ld b,0cah		;8a27
	exx			;8a29
	ld bc,0ff00h		;8a2a
	jp sub_8a68h		;8a2d
l8a30h:
	ld a,(iy+029h)		;8a30
	push af			;8a33
	ld a,(iy+028h)		;8a34
	push bc			;8a37
	push af			;8a38
	call sub_8a62h		;8a39
	call sub_89b3h		;8a3c
	exx			;8a3f
	ld c,(iy+028h)		;8a40
	ld b,0cah		;8a43
	exx			;8a45
	ld bc,00100h		;8a46
	call sub_8a68h		;8a49
	pop af			;8a4c
	pop bc			;8a4d
	add a,b			;8a4e
	ld b,a			;8a4f
	call sub_8a62h		;8a50
	call sub_89e5h		;8a53
	pop af			;8a56
	exx			;8a57
	ld c,a			;8a58
	ld b,0cbh		;8a59
	exx			;8a5b
	ld bc,000ffh		;8a5c
	jp sub_8a68h		;8a5f
sub_8a62h:
	ld d,b			;8a62
	ld h,c			;8a63
	ld l,000h		;8a64
	ld e,l			;8a66
	ret			;8a67
sub_8a68h:
	ld a,075h		;8a68
	push ix			;8a6a
	push ix			;8a6c
	pop iy			;8a6e
	push hl			;8a70
	push de			;8a71
	push bc			;8a72
	exx			;8a73
	push hl			;8a74
	push de			;8a75
	push bc			;8a76
	exx			;8a77
	call 070dah		;8a78
	exx			;8a7b
	pop bc			;8a7c
	pop de			;8a7d
	pop hl			;8a7e
	exx			;8a7f
	pop bc			;8a80
	pop de			;8a81
	pop hl			;8a82
	jr c,l8aabh		;8a83
	exx			;8a85
	ld (ix+008h),h		;8a86
	ld (ix+007h),l		;8a89
	ld (ix+00ah),d		;8a8c
	ld (ix+009h),e		;8a8f
	ld (ix+011h),b		;8a92
	ld (ix+00fh),c		;8a95
	exx			;8a98
	ld (ix+00ch),h		;8a99
	ld (ix+00bh),l		;8a9c
	ld (ix+00eh),d		;8a9f
	ld (ix+00dh),e		;8aa2
	ld (ix+012h),b		;8aa5
	ld (ix+010h),c		;8aa8
l8aabh:
	pop ix			;8aab
	ret			;8aad
	ret			;8aae
l8aafh:
	ld (bc),a		;8aaf
	inc c			;8ab0
	ex af,af'		;8ab1
	ld (de),a		;8ab2
	rlca			;8ab3
	inc a			;8ab4
	inc c			;8ab5
	ex af,af'		;8ab6
	ld (de),a		;8ab7
	rlca			;8ab8
	jr z,$+17		;8ab9
	ld b,008h		;8abb
	rrca			;8abd
	ld e,014h		;8abe
	dec c			;8ac0
	add hl,bc		;8ac1
	add hl,bc		;8ac2
	ld (0070fh),a		;8ac3
	inc c			;8ac6
	ex af,af'		;8ac7
	ld (00a12h),a		;8ac8
	ld a,(bc)		;8acb
	inc c			;8acc
	jr z,$+17		;8acd
	inc b			;8acf
	djnz l8adfh		;8ad0
	ld (00712h),a		;8ad2
	inc c			;8ad5
	inc c			;8ad6
	call sub_8b79h		;8ad7
	ld a,(ix+001h)		;8ada
	cp 006h			;8add
l8adfh:
	jp nc,04ae0h		;8adf
	call 0461ah		;8ae2
	pop af			;8ae5
	adc a,d			;8ae6
	ld b,(hl)		;8ae7
	adc a,e			;8ae8
	ld c,h			;8ae9
	adc a,e			;8aea
	ld e,a			;8aeb
	adc a,e			;8aec
	ld l,h			;8aed
	adc a,e			;8aee
	ld (hl),d		;8aef
	adc a,e			;8af0
	call 06796h		;8af1
	add a,020h		;8af4
	ld (ix+018h),a		;8af6
	ld (ix+017h),020h	;8af9
	ld (ix+00ah),01fh	;8afd
	ld (ix+008h),014h	;8b01
	push ix			;8b05
	push ix			;8b07
	pop iy			;8b09
	ld a,035h		;8b0b
	call 069bfh		;8b0d
	ld (ix+00ah),01fh	;8b10
	ld (ix+008h),014h	;8b14
	ld (ix+021h),002h	;8b18
	push iy			;8b1c
	pop ix			;8b1e
	ld a,035h		;8b20
	call 069bfh		;8b22
	ld (ix+00ah),01fh	;8b25
	ld (ix+008h),002h	;8b29
	inc (ix+005h)		;8b2d
	ld (ix+021h),001h	;8b30
	pop ix			;8b34
	call sub_8be2h		;8b36
	call sub_8b3eh		;8b39
	jr l8b46h		;8b3c
sub_8b3eh:
	inc (ix+001h)		;8b3e
	ret			;8b41
l8b42h:
	ld (ix+001h),a		;8b42
	ret			;8b45
l8b46h:
	call sub_8b88h		;8b46
	call sub_8b3eh		;8b49
	ld a,(ix+023h)		;8b4c
	or a			;8b4f
	ld de,0fe00h		;8b50
	jp nz,06bfdh		;8b53
	call sub_8bc0h		;8b56
	dec (ix+017h)		;8b59
	ret nz			;8b5c
	jr sub_8b3eh		;8b5d
	call sub_8bc0h		;8b5f
	ld a,(ix+037h)		;8b62
	cp 002h			;8b65
	jp nz,06e98h		;8b67
	jr sub_8b3eh		;8b6a
	ld (ix+022h),001h	;8b6c
	jr sub_8b3eh		;8b70
	xor a			;8b72
	ld (ix+022h),a		;8b73
	inc a			;8b76
	jr l8b42h		;8b77
sub_8b79h:
	ld a,(0ca02h)		;8b79
	and 007h		;8b7c
	ret nz			;8b7e
	dec (ix+018h)		;8b7f
	ret nz			;8b82
	ld (ix+023h),001h	;8b83
	ret			;8b87
sub_8b88h:
	ld a,(ix+024h)		;8b88
	push af			;8b8b
	call sub_8b9bh		;8b8c
	pop af			;8b8f
	inc a			;8b90
	cp 008h			;8b91
	jr c,l8b97h		;8b93
	ld a,001h		;8b95
l8b97h:
	ld (ix+024h),a		;8b97
	ret			;8b9a
sub_8b9bh:
	ld l,a			;8b9b
	add a,a			;8b9c
	add a,a			;8b9d
	add a,l			;8b9e
	ld hl,l8aafh		;8b9f
	call 04600h		;8ba2
	ld a,(hl)		;8ba5
	inc hl			;8ba6
	ld (ix+017h),a		;8ba7
	ld a,(hl)		;8baa
	inc hl			;8bab
	ld (ix+026h),a		;8bac
	ld a,(hl)		;8baf
	inc hl			;8bb0
	ld (ix+027h),a		;8bb1
	ld a,(hl)		;8bb4
	inc hl			;8bb5
	ld (ix+028h),a		;8bb6
	ld a,(hl)		;8bb9
	inc hl			;8bba
	ld (ix+029h),a		;8bbb
	ret			;8bbe
	ret			;8bbf
sub_8bc0h:
	ld d,(ix+00ah)		;8bc0
	ld e,(ix+008h)		;8bc3
	call sub_8be9h		;8bc6
	add a,d			;8bc9
	ld d,a			;8bca
	call 0753ch		;8bcb
	jr c,l8bd7h		;8bce
	cp 003h			;8bd0
	ret nz			;8bd2
	jp 06b53h		;8bd3
	ret			;8bd6
l8bd7h:
	ld a,(ix+00ah)		;8bd7
	sub 002h		;8bda
	cp 01ch			;8bdc
	ret c			;8bde
	jp 06b53h		;8bdf
sub_8be2h:
	ld de,0ffa0h		;8be2
	call 06bfdh		;8be5
	ret			;8be8
sub_8be9h:
	ld a,(ix+00eh)		;8be9
	or a			;8bec
	ld a,0ffh		;8bed
	ret m			;8bef
	ld a,005h		;8bf0
	ret			;8bf2
	ld a,(ix+001h)		;8bf3
	dec a			;8bf6
	jr z,l8c0eh		;8bf7
	call 06754h		;8bf9
	call 04678h		;8bfc
	and 003h		;8bff
	ld (ix+006h),a		;8c01
	call sub_8c1dh		;8c04
	ld (ix+03eh),00dh	;8c07
	jp 06c1dh		;8c0b
l8c0eh:
	call 06ad2h		;8c0e
	ret nz			;8c11
	ld a,(ix+006h)		;8c12
	call sub_9f32h		;8c15
	ld b,004h		;8c18
	call 06ac2h		;8c1a
sub_8c1dh:
	ld a,(0ca19h)		;8c1d
	rrca			;8c20
	rrca			;8c21
	and 003h		;8c22
	ld l,a			;8c24
	ld h,000h		;8c25
	ld de,l8c30h		;8c27
	add hl,de		;8c2a
	ld a,(hl)		;8c2b
	ld (ix+017h),a		;8c2c
	ret			;8c2f
l8c30h:
	ld (de),a		;8c30
	djnz l8c3dh		;8c31
	ex af,af'		;8c33
	ld a,(ix+001h)		;8c34
	dec a			;8c37
	jr z,l8c61h		;8c38
	call 06754h		;8c3a
l8c3dh:
	ld a,d			;8c3d
	rlca			;8c3e
	jr nc,l8c44h		;8c3f
	inc (ix+023h)		;8c41
l8c44h:
	call 06796h		;8c44
	ld (ix+021h),a		;8c47
	call sub_8c9bh		;8c4a
	ld (ix+03eh),00eh	;8c4d
	call sub_8cdfh		;8c51
	ld a,(0ca04h)		;8c54
	and a			;8c57
	jr z,l8c5eh		;8c58
	ld (ix+016h),018h	;8c5a
l8c5eh:
	jp 06c1dh		;8c5e
l8c61h:
	call sub_8cbah		;8c61
	ld l,(ix+021h)		;8c64
	ld h,000h		;8c67
	add hl,hl		;8c69
	add hl,hl		;8c6a
	ld de,l8d1bh		;8c6b
	add hl,de		;8c6e
	ld a,(ix+008h)		;8c6f
	sub 002h		;8c72
	rlca			;8c74
	jr c,l8c7fh		;8c75
	ld a,(ix+00ah)		;8c77
	sub 002h		;8c7a
	rlca			;8c7c
	jr nc,l8c81h		;8c7d
l8c7fh:
	inc hl			;8c7f
	inc hl			;8c80
l8c81h:
	ld e,(hl)		;8c81
	inc hl			;8c82
	ld d,(hl)		;8c83
	ld a,(ix+008h)		;8c84
	add a,e			;8c87
	ld e,a			;8c88
	ld a,(ix+00ah)		;8c89
	add a,d			;8c8c
	ld d,a			;8c8d
	call 0753ch		;8c8e
	ret c			;8c91
	ret z			;8c92
	ld a,001h		;8c93
	xor (ix+021h)		;8c95
	ld (ix+021h),a		;8c98
sub_8c9bh:
	ld l,(ix+021h)		;8c9b
	ld h,000h		;8c9e
	add hl,hl		;8ca0
	add hl,hl		;8ca1
	ld de,l8cfbh		;8ca2
	add hl,de		;8ca5
	ld a,(hl)		;8ca6
	ld (ix+00bh),a		;8ca7
	inc hl			;8caa
	ld a,(hl)		;8cab
	ld (ix+00ch),a		;8cac
	inc hl			;8caf
	ld a,(hl)		;8cb0
	ld (ix+00dh),a		;8cb1
	inc hl			;8cb4
	ld a,(hl)		;8cb5
	ld (ix+00eh),a		;8cb6
	ret			;8cb9
sub_8cbah:
	ld a,(ix+023h)		;8cba
	and a			;8cbd
	ret nz			;8cbe
	call 06ad2h		;8cbf
	ret nz			;8cc2
	call 06adfh		;8cc3
	ret nz			;8cc6
	ld (ix+018h),006h	;8cc7
	ld d,000h		;8ccb
	ld bc,002feh		;8ccd
	call sub_9f90h		;8cd0
	ld bc,00207h		;8cd3
	ld d,001h		;8cd6
	call sub_9f90h		;8cd8
	dec (ix+022h)		;8cdb
	ret nz			;8cde
sub_8cdfh:
	ld a,(0ca19h)		;8cdf
	rrca			;8ce2
	and 007h		;8ce3
	ld l,a			;8ce5
	ld h,000h		;8ce6
	add hl,hl		;8ce8
	ld de,l8d0bh		;8ce9
	add hl,de		;8cec
	ld a,(hl)		;8ced
	ld (ix+017h),a		;8cee
	inc hl			;8cf1
	ld a,(hl)		;8cf2
	ld (ix+022h),a		;8cf3
	ld (ix+018h),001h	;8cf6
	ret			;8cfa
l8cfbh:
	add a,b			;8cfb
	rst 38h			;8cfc
	nop			;8cfd
	nop			;8cfe
	add a,b			;8cff
	nop			;8d00
	nop			;8d01
	nop			;8d02
	nop			;8d03
	nop			;8d04
	add a,b			;8d05
	nop			;8d06
	nop			;8d07
	nop			;8d08
	add a,b			;8d09
	rst 38h			;8d0a
l8d0bh:
	jr c,$+3		;8d0b
	jr nc,l8d10h		;8d0d
	inc l			;8d0f
l8d10h:
	ld (bc),a		;8d10
	jr z,l8d15h		;8d11
	jr nc,l8d17h		;8d13
l8d15h:
	inc l			;8d15
	inc bc			;8d16
l8d17h:
	jr nc,l8d1ch		;8d17
	inc l			;8d19
	inc b			;8d1a
l8d1bh:
	rst 38h			;8d1b
l8d1ch:
	nop			;8d1c
	rst 38h			;8d1d
	dec b			;8d1e
	rlca			;8d1f
	nop			;8d20
	rlca			;8d21
	dec b			;8d22
	nop			;8d23
	rlca			;8d24
	ld b,007h		;8d25
	nop			;8d27
	cp 006h			;8d28
	cp 0c9h			;8d2a
	ld de,l8dbch		;8d2c
	call 07b65h		;8d2f
	ld a,(ix+001h)		;8d32
	dec a			;8d35
	jr z,l8d55h		;8d36
	dec a			;8d38
	jr z,l8d76h		;8d39
	call 06754h		;8d3b
	call 06796h		;8d3e
	ld (ix+020h),a		;8d41
	ld de,l8da4h		;8d44
	ld l,a			;8d47
	ld h,000h		;8d48
	add hl,de		;8d4a
	ld a,(hl)		;8d4b
	ld (ix+017h),a		;8d4c
	inc (ix+018h)		;8d4f
	jp 06c1dh		;8d52
l8d55h:
	call 06ad2h		;8d55
	ret nz			;8d58
	ld a,(ix+021h)		;8d59
	inc (ix+021h)		;8d5c
	add a,008h		;8d5f
	ld (ix+006h),a		;8d61
	cp 00ch			;8d64
	ret nz			;8d66
	ld a,022h		;8d67
	call 04af0h		;8d69
	xor a			;8d6c
	ld (ix+006h),a		;8d6d
	ld (ix+021h),a		;8d70
	jp 06c1dh		;8d73
l8d76h:
	call 06adfh		;8d76
	ret nz			;8d79
	ld b,008h		;8d7a
	call 06ac2h		;8d7c
	jr z,l8d92h		;8d7f
	cp 004h			;8d81
	ret nz			;8d83
	ld l,(ix+020h)		;8d84
	ld h,000h		;8d87
	ld de,08dach		;8d89
	add hl,de		;8d8c
	ld a,(hl)		;8d8d
	ld (ix+018h),a		;8d8e
	ret			;8d91
l8d92h:
	ld l,(ix+020h)		;8d92
	ld h,000h		;8d95
	ld de,08db4h		;8d97
	add hl,de		;8d9a
	ld a,(hl)		;8d9b
	ld (ix+017h),a		;8d9c
	ld (ix+001h),001h	;8d9f
	ret			;8da3
l8da4h:
	ex af,af'		;8da4
	jr $+10			;8da5
	ld bc,00101h		;8da7
	ld bc,00802h		;8daa
	ex af,af'		;8dad
	jr nz,l8dc0h		;8dae
	ex af,af'		;8db0
	djnz $+42		;8db1
	ld bc,02010h		;8db3
	djnz l8dd8h		;8db6
	ex af,af'		;8db8
	ex af,af'		;8db9
	inc b			;8dba
	ld (bc),a		;8dbb
l8dbch:
	sub 08dh		;8dbc
	pop hl			;8dbe
	adc a,l			;8dbf
l8dc0h:
	pop af			;8dc0
	adc a,l			;8dc1
	ld bc,0118eh		;8dc2
	adc a,(hl)		;8dc5
	ld hl,0318eh		;8dc6
	adc a,(hl)		;8dc9
	ld b,c			;8dca
	adc a,(hl)		;8dcb
	ld d,c			;8dcc
	adc a,(hl)		;8dcd
	ld h,c			;8dce
	adc a,(hl)		;8dcf
	ld (hl),c		;8dd0
	adc a,(hl)		;8dd1
	ld h,c			;8dd2
	adc a,(hl)		;8dd3
	ld d,c			;8dd4
	adc a,(hl)		;8dd5
	dec bc			;8dd6
	nop			;8dd7
l8dd8h:
	nop			;8dd8
	ld bc,0fe00h		;8dd9
	inc c			;8ddc
	nop			;8ddd
	ld bc,0ff01h		;8dde
	djnz l8de3h		;8de1
l8de3h:
	nop			;8de3
	ld bc,0fe00h		;8de4
	inc c			;8de7
	nop			;8de8
	ld bc,0fe01h		;8de9
	inc b			;8dec
	ld bc,00201h		;8ded
	rst 38h			;8df0
	djnz l8df3h		;8df1
l8df3h:
	nop			;8df3
	ld bc,0fe00h		;8df4
	inc c			;8df7
	nop			;8df8
	ld bc,0fe01h		;8df9
	inc b			;8dfc
	ld bc,00301h		;8dfd
	rst 38h			;8e00
	djnz l8e03h		;8e01
l8e03h:
	nop			;8e03
	ld bc,0fe00h		;8e04
	inc c			;8e07
	nop			;8e08
	ld bc,0fe01h		;8e09
	inc b			;8e0c
	ld bc,00401h		;8e0d
	rst 38h			;8e10
	djnz l8e13h		;8e11
l8e13h:
	nop			;8e13
	ld bc,0fe00h		;8e14
	inc c			;8e17
	nop			;8e18
	ld bc,0fe01h		;8e19
	inc b			;8e1c
	ld bc,00501h		;8e1d
	rst 38h			;8e20
	djnz l8e23h		;8e21
l8e23h:
	nop			;8e23
	ld bc,0fe00h		;8e24
	inc c			;8e27
	nop			;8e28
	ld bc,0fe01h		;8e29
	dec b			;8e2c
	ld bc,00601h		;8e2d
	rst 38h			;8e30
	djnz l8e33h		;8e31
l8e33h:
	nop			;8e33
	ld bc,0fe00h		;8e34
	inc c			;8e37
	nop			;8e38
	ld bc,0fe01h		;8e39
	ld b,001h		;8e3c
	ld bc,0ff07h		;8e3e
	djnz l8e43h		;8e41
l8e43h:
	nop			;8e43
	ld bc,0fe00h		;8e44
	inc c			;8e47
	nop			;8e48
	ld bc,0fe01h		;8e49
	rlca			;8e4c
	ld bc,00801h		;8e4d
	rst 38h			;8e50
	djnz l8e53h		;8e51
l8e53h:
	nop			;8e53
	ld bc,0fe00h		;8e54
	inc c			;8e57
	nop			;8e58
	ld bc,0fe01h		;8e59
	inc b			;8e5c
	ld bc,00901h		;8e5d
	rst 38h			;8e60
	djnz l8e63h		;8e61
l8e63h:
	nop			;8e63
	ld bc,0fe00h		;8e64
	inc c			;8e67
	nop			;8e68
	ld bc,0fe01h		;8e69
	inc b			;8e6c
	ld bc,00a01h		;8e6d
	rst 38h			;8e70
	djnz l8e73h		;8e71
l8e73h:
	nop			;8e73
	ld bc,0fe00h		;8e74
	inc c			;8e77
	nop			;8e78
	ld bc,0fe01h		;8e79
	inc b			;8e7c
	ld bc,00b01h		;8e7d
	rst 38h			;8e80
	ld a,(ix+001h)		;8e81
	cp 004h			;8e84
	jp nc,04ae0h		;8e86
	call 0461ah		;8e89
	and e			;8e8c
	adc a,(hl)		;8e8d
	res 1,(hl)		;8e8e
	ld hl,0388fh		;8e90
	adc a,a			;8e93
	call 06c4bh		;8e94
	call 06754h		;8e97
	ld (ix+017h),03ch	;8e9a
	ld (ix+008h),00ah	;8e9e
	ret			;8ea2
	call sub_8ebah		;8ea3
	dec (ix+017h)		;8ea6
	ret nz			;8ea9
	inc (ix+001h)		;8eaa
	ld (ix+018h),02dh	;8ead
	ld (ix+017h),001h	;8eb1
	ld (ix+002h),0ffh	;8eb5
	ret			;8eb9
sub_8ebah:
	ld a,(ix+009h)		;8eba
	or a			;8ebd
	ret nz			;8ebe
	ld b,(ix+00ah)		;8ebf
	ld a,01ah		;8ec2
	cp b			;8ec4
	ld a,042h		;8ec5
	jp z,04af5h		;8ec7
	ret			;8eca
	call sub_8ebah		;8ecb
	call sub_8f5fh		;8ece
	call sub_8ef5h		;8ed1
	dec (ix+017h)		;8ed4
	ret nz			;8ed7
	call sub_8f42h		;8ed8
	ld a,(ix+018h)		;8edb
	sub 004h		;8ede
	jr nc,l8ee4h		;8ee0
	ld a,02dh		;8ee2
l8ee4h:
	inc a			;8ee4
	ld (ix+018h),a		;8ee5
	ld d,a			;8ee8
	ld a,(0ca19h)		;8ee9
	neg			;8eec
	add a,01ah		;8eee
	add a,d			;8ef0
	ld (ix+017h),a		;8ef1
	ret			;8ef4
sub_8ef5h:
	ld a,(ix+002h)		;8ef5
	ld b,(ix+004h)		;8ef8
	sub b			;8efb
	ld (ix+002h),a		;8efc
	ld (ix+004h),000h	;8eff
	push af			;8f03
	ld a,b			;8f04
	or a			;8f05
	ld a,025h		;8f06
	call nz,04af0h		;8f08
	pop af			;8f0b
	ret nc			;8f0c
	ld (ix+015h),06fh	;8f0d
	inc (ix+001h)		;8f11
	ld (ix+017h),028h	;8f14
	call 07058h		;8f18
	ld a,001h		;8f1b
	ld (0ce76h),a		;8f1d
	ret			;8f20
	call sub_8f5fh		;8f21
	dec (ix+017h)		;8f24
	ret nz			;8f27
	ld a,052h		;8f28
	call 04aebh		;8f2a
	call 04d2bh		;8f2d
	ld (ix+017h),014h	;8f30
	inc (ix+001h)		;8f34
	ret			;8f37
	dec (ix+017h)		;8f38
	ret nz			;8f3b
	ld a,001h		;8f3c
	ld (0ca0fh),a		;8f3e
	ret			;8f41
sub_8f42h:
	push ix			;8f42
	push ix			;8f44
	ld a,023h		;8f46
	call 069a3h		;8f48
	pop iy			;8f4b
	jp c,l8f5ch		;8f4d
	ld a,(iy+008h)		;8f50
	ld (ix+008h),a		;8f53
	ld a,(iy+00ah)		;8f56
	ld (ix+00ah),a		;8f59
l8f5ch:
	pop ix			;8f5c
	ret			;8f5e
sub_8f5fh:
	ld a,(ix+021h)		;8f5f
	inc a			;8f62
	and 00fh		;8f63
	ld (ix+021h),a		;8f65
	ld de,l8f74h		;8f68
	call 04624h		;8f6b
	ex de,hl		;8f6e
	ld a,00bh		;8f6f
	jp 04776h		;8f71
l8f74h:
	ld d,(hl)		;8f74
	rlca			;8f75
	ld d,(hl)		;8f76
	rlca			;8f77
	ld b,l			;8f78
	rlca			;8f79
	inc (hl)		;8f7a
	rlca			;8f7b
	inc hl			;8f7c
	rlca			;8f7d
	ld (de),a		;8f7e
	ld b,001h		;8f7f
	dec b			;8f81
	nop			;8f82
	inc b			;8f83
	nop			;8f84
	inc bc			;8f85
	nop			;8f86
	inc b			;8f87
	ld bc,01205h		;8f88
	ld b,023h		;8f8b
	rlca			;8f8d
	inc (hl)		;8f8e
	rlca			;8f8f
	ld b,l			;8f90
	rlca			;8f91
	ld d,(hl)		;8f92
	rlca			;8f93
	ld a,(ix+001h)		;8f94
	cp 004h			;8f97
	jp nc,04ae0h		;8f99
	call 0461ah		;8f9c
	and a			;8f9f
	adc a,a			;8fa0
	cp b			;8fa1
	adc a,a			;8fa2
	call 0008fh		;8fa3
	sub b			;8fa6
	call 06796h		;8fa7
	push af			;8faa
	call 06796h		;8fab
	pop bc			;8fae
	ld d,a			;8faf
	ld e,b			;8fb0
	call sub_9001h		;8fb1
	inc (ix+001h)		;8fb4
	ret			;8fb7
	dec (ix+017h)		;8fb8
	ret nz			;8fbb
	inc (ix+001h)		;8fbc
	ld (ix+017h),00fh	;8fbf
	ld a,(ix+008h)		;8fc3
	cp 00ch			;8fc6
	ret c			;8fc8
	inc (ix+021h)		;8fc9
	ret			;8fcc
	dec (ix+017h)		;8fcd
	call z,07143h		;8fd0
	bit 0,(ix+021h)		;8fd3
	ld hl,00080h		;8fd7
	call nz,04612h		;8fda
	ld de,00000h		;8fdd
	call 06d4fh		;8fe0
	ld a,(0ca48h)		;8fe3
	sub (ix+008h)		;8fe6
	bit 0,(ix+021h)		;8fe9
	call z,sub_8ffeh	;8fed
	ret c			;8ff0
	inc (ix+001h)		;8ff1
	ld iy,0ca40h		;8ff4
	ld a,014h		;8ff8
	call 06b6ch		;8ffa
	ret			;8ffd
sub_8ffeh:
	ccf			;8ffe
	ret			;8fff
	ret			;9000
sub_9001h:
	ld (ix+017h),01ah	;9001
	ld a,d			;9005
	sub (ix+00ah)		;9006
	ld l,a			;9009
	rlca			;900a
	sbc a,a			;900b
	ld h,a			;900c
	ld b,h			;900d
	ld c,l			;900e
	add hl,hl		;900f
	add hl,hl		;9010
	add hl,hl		;9011
	ex de,hl		;9012
	ld a,l			;9013
	sub (ix+008h)		;9014
	ld l,a			;9017
	rlca			;9018
	sbc a,a			;9019
	ld h,a			;901a
	ld b,h			;901b
	ld c,l			;901c
	add hl,hl		;901d
	add hl,bc		;901e
	add hl,hl		;901f
	add hl,hl		;9020
	jp 06bebh		;9021
l9024h:
	call 09d1eh		;9024
	ld (iy+000h),045h	;9027
	ld (iy+013h),004h	;902b
	ld (iy+014h),084h	;902f
	ld (iy+016h),000h	;9033
	ld (iy+015h),0b9h	;9037
	ret			;903b
	jp 09d60h		;903c
	ld a,030h		;903f
	call 04af5h		;9041
	call 06754h		;9044
	ld (ix+00ah),01fh	;9047
	ld de,00000h		;904b
	call sub_915dh		;904e
	jp 06e98h		;9051
	ld a,(ix+001h)		;9054
	dec a			;9057
	jr z,l9083h		;9058
	dec a			;905a
	jr z,l90a6h		;905b
	jp p,l90bfh		;905d
	ld a,(0c0d4h)		;9060
	or a			;9063
	jr nz,l906ah		;9064
	dec (ix+017h)		;9066
	ret nz			;9069
l906ah:
	ld (ix+017h),004h	;906a
	ld (ix+012h),001h	;906e
	inc (ix+001h)		;9072
	ld a,(ix+003h)		;9075
	or a			;9078
	ld a,020h		;9079
	jr z,l907fh		;907b
	ld a,008h		;907d
l907fh:
	ld (ix+002h),a		;907f
	ret			;9082
l9083h:
	call sub_909eh		;9083
	call 06c29h		;9086
	dec (ix+017h)		;9089
	ret nz			;908c
	inc (ix+001h)		;908d
	ld a,(ix+003h)		;9090
	or a			;9093
	ld a,031h		;9094
	jp z,04af5h		;9096
	ld a,02ch		;9099
	jp 04af5h		;909b
sub_909eh:
	bit 0,(ix+017h)		;909e
	ret nz			;90a2
	jp l90cfh		;90a3
l90a6h:
	call 06c29h		;90a6
	ld a,(ix+012h)		;90a9
	add a,004h		;90ac
	ld (ix+012h),a		;90ae
	call l90cfh		;90b1
	ld a,(ix+012h)		;90b4
	cp (ix+002h)		;90b7
	ret c			;90ba
	inc (ix+001h)		;90bb
	ret			;90be
l90bfh:
	call 06c29h		;90bf
	ld a,(ix+00ah)		;90c2
	sub 004h		;90c5
	cp 020h			;90c7
	jp nc,06each		;90c9
	ld (ix+00ah),a		;90cc
l90cfh:
	ld a,(ix+003h)		;90cf
	or a			;90d2
	jr nz,l90d9h		;90d3
	ld (0ce73h),ix		;90d5
l90d9h:
	ld a,(ix+012h)		;90d9
	ld b,(ix+00ah)		;90dc
	cp b			;90df
	jr c,l90e3h		;90e0
	ld a,b			;90e2
l90e3h:
	inc a			;90e3
	ld (ix+011h),a		;90e4
	ld d,(ix+00ah)		;90e7
	ld e,(ix+008h)		;90ea
	call 07b06h		;90ed
	ret nc			;90f0
	ex de,hl		;90f1
	ld b,(ix+011h)		;90f2
	ld a,b			;90f5
	or a			;90f6
	ret z			;90f7
	ld a,(ix+003h)		;90f8
	or a			;90fb
	jr nz,l913ah		;90fc
	ld a,(hl)		;90fe
	exx			;90ff
	ld h,0deh		;9100
	ld l,a			;9102
	ld a,(hl)		;9103
	exx			;9104
	cp 003h			;9105
	jp z,06each		;9107
	ld c,001h		;910a
	call sub_911eh		;910c
l910fh:
	ld a,(hl)		;910f
	exx			;9110
	ld h,0deh		;9111
	ld l,a			;9113
	ld a,(hl)		;9114
	exx			;9115
	cp 003h			;9116
	ret z			;9118
	ld (hl),d		;9119
	dec hl			;911a
	djnz l910fh		;911b
	ret			;911d
sub_911eh:
	ld a,(0c0d4h)		;911e
	or a			;9121
	ld d,0cbh		;9122
	ret z			;9124
	ld a,(ix+00fh)		;9125
	ld d,0cch		;9128
	cp 007h			;912a
	ret z			;912c
	cp 000h			;912d
	ret z			;912f
	inc d			;9130
	cp 006h			;9131
	ret z			;9133
	cp 001h			;9134
	ret z			;9136
	ld d,0cbh		;9137
	ret			;9139
l913ah:
	ld a,(ix+018h)		;913a
	inc a			;913d
	ld (ix+018h),a		;913e
	rrca			;9141
	ld de,0cccdh		;9142
	jr c,l914ah		;9145
	ld de,0cdcch		;9147
l914ah:
	ld a,(hl)		;914a
	cp 003h			;914b
	ret z			;914d
	ld (hl),d		;914e
	dec hl			;914f
	dec b			;9150
	ret z			;9151
	ld (hl),e		;9152
	dec hl			;9153
	djnz l914ah		;9154
	ret			;9156
	ld a,001h		;9157
	ld b,001h		;9159
	jr l9161h		;915b
sub_915dh:
	xor a			;915d
	ld h,a			;915e
	ld b,008h		;915f
l9161h:
	push af			;9161
	push hl			;9162
	push bc			;9163
	push ix			;9164
	push ix			;9166
	push de			;9168
	push af			;9169
	push hl			;916a
	ld a,046h		;916b
	call 070dah		;916d
	pop hl			;9170
	pop bc			;9171
	pop de			;9172
	pop iy			;9173
	jp c,l91a2h		;9175
	ld (ix+00fh),h		;9178
	ld (ix+003h),b		;917b
	ld b,(iy+008h)		;917e
	ld c,(iy+007h)		;9181
	ld l,000h		;9184
	ld h,e			;9186
	add hl,bc		;9187
	ld (ix+008h),h		;9188
	ld (ix+007h),l		;918b
	ld b,(iy+00ah)		;918e
	ld c,(iy+009h)		;9191
	ld h,d			;9194
	ld l,000h		;9195
	add hl,bc		;9197
	ld (ix+00ah),h		;9198
	ld (ix+009h),l		;919b
	ld (ix+017h),014h	;919e
l91a2h:
	pop ix			;91a2
	pop bc			;91a4
	pop hl			;91a5
	pop af			;91a6
	inc e			;91a7
	inc h			;91a8
	djnz l9161h		;91a9
	ret			;91ab
	ld a,(ix+008h)		;91ac
	sub 0f0h		;91af
	cp 008h			;91b1
	jp c,06e98h		;91b3
	ld a,(ix+001h)		;91b6
	cp 004h			;91b9
	jp nc,04ae0h		;91bb
	call 0461ah		;91be
	ld e,l			;91c1
	sub d			;91c2
	ld e,l			;91c3
	sub d			;91c4
	ld d,e			;91c5
	sub d			;91c6
	ld hl,0dd92h		;91c7
	ld a,(hl)		;91ca
	dec d			;91cb
	and 004h		;91cc
	or 022h			;91ce
	ld (ix+015h),a		;91d0
	call 06754h		;91d3
	ld a,(ix+008h)		;91d6
	add a,003h		;91d9
	ld (ix+008h),a		;91db
	call 06796h		;91de
	ld (ix+006h),a		;91e1
	res 7,(ix+006h)		;91e4
	and 007h		;91e8
	call sub_9226h		;91ea
	ld a,c			;91ed
	and 007h		;91ee
	add a,a			;91f0
	add a,a			;91f1
	add a,a			;91f2
	add a,a			;91f3
	add a,a			;91f4
	ld (ix+026h),a		;91f5
	rl c			;91f8
	sbc a,a			;91fa
	add a,a			;91fb
	inc a			;91fc
	add a,a			;91fd
	ld (ix+012h),a		;91fe
	ld b,006h		;9201
	ld (ix+017h),000h	;9203
l9207h:
	call sub_922dh		;9207
	jr c,l9219h		;920a
	ld (ix+017h),001h	;920c
	ld (ix+018h),000h	;9210
	ld (ix+001h),002h	;9214
	ret			;9218
l9219h:
	ld (ix+024h),b		;9219
	ld (ix+001h),003h	;921c
	ret			;9220
	ld b,(ix+024h)		;9221
	jr l9207h		;9224
sub_9226h:
	ld c,085h		;9226
	dec a			;9228
	ret z			;9229
	ld c,001h		;922a
	ret			;922c
sub_922dh:
	push bc			;922d
	call sub_923ah		;922e
	jr c,l9238h		;9231
	pop bc			;9233
	djnz sub_922dh		;9234
	or a			;9236
	ret			;9237
l9238h:
	pop bc			;9238
	ret			;9239
sub_923ah:
	call 0682ah		;923a
	ret c			;923d
	ld h,(ix+008h)		;923e
	ld (iy+008h),h		;9241
	ld (iy+00ah),01ch	;9244
	ld a,(ix+003h)		;9248
	ld (iy+003h),a		;924b
	inc a			;924e
	ld (ix+003h),a		;924f
	ret			;9252
	ld a,(ix+017h)		;9253
	add a,(ix+012h)		;9256
	ld (ix+017h),a		;9259
	ret			;925c
	call 068deh		;925d
	jp c,06e98h		;9260
	ld a,(ix+003h)		;9263
	ld c,a			;9266
	add a,a			;9267
	ld hl,l92d8h		;9268
	ld e,a			;926b
	ld d,000h		;926c
	add hl,de		;926e
	ld a,(iy+017h)		;926f
	add a,(hl)		;9272
	ld c,a			;9273
	sub (iy+026h)		;9274
	add a,040h		;9277
	cp 080h			;9279
	ld a,c			;927b
	jr c,l9280h		;927c
	sub 080h		;927e
l9280h:
	inc hl			;9280
	ld e,(hl)		;9281
	push de			;9282
	push af			;9283
	push de			;9284
	call 074efh		;9285
	pop de			;9288
	call sub_92b9h		;9289
	ld e,(iy+007h)		;928c
	ld d,(iy+008h)		;928f
	add hl,de		;9292
	ld (ix+007h),l		;9293
	ld (ix+008h),h		;9296
	pop af			;9299
	call 074edh		;929a
	pop de			;929d
	call sub_92b9h		;929e
	ld e,(iy+009h)		;92a1
	ld d,(iy+00ah)		;92a4
	add hl,de		;92a7
	ld (ix+009h),l		;92a8
	ld (ix+00ah),h		;92ab
	ld a,(ix+008h)		;92ae
	cp 018h			;92b1
	ret c			;92b3
	ld (ix+008h),01dh	;92b4
	ret			;92b8
sub_92b9h:
	bit 7,h			;92b9
	jr nz,l92ceh		;92bb
	ld h,l			;92bd
sub_92beh:
	call 072b0h		;92be
	srl h			;92c1
	rr l			;92c3
	srl h			;92c5
	rr l			;92c7
	srl h			;92c9
	rr l			;92cb
	ret			;92cd
l92ceh:
	ld a,l			;92ce
	neg			;92cf
	ld h,a			;92d1
	call sub_92beh		;92d2
	jp 04612h		;92d5
l92d8h:
	nop			;92d8
	jr z,l92dbh		;92d9
l92dbh:
	jr c,l92ddh		;92db
l92ddh:
	ld c,b			;92dd
	ld b,b			;92de
	jr z,l9321h		;92df
	jr c,$+66		;92e1
	ld c,b			;92e3
	ld a,(0ca02h)		;92e4
	and 001h		;92e7
	ld (ix+005h),a		;92e9
	ld a,(ix+001h)		;92ec
	dec a			;92ef
	jr z,l9324h		;92f0
	dec a			;92f2
	jr z,l934eh		;92f3
	call 06796h		;92f5
	ld b,a			;92f8
	and 07fh		;92f9
	ld (ix+008h),a		;92fb
	ld a,b			;92fe
	rlca			;92ff
	ld hl,00040h		;9300
	jr nc,l930bh		;9303
	inc (ix+021h)		;9305
	ld hl,0ffc0h		;9308
l930bh:
	call 06bf3h		;930b
	call 06796h		;930e
	ld (ix+00ah),a		;9311
	ld a,040h		;9314
	call 06adbh		;9316
	ld (ix+017h),001h	;9319
	ld (ix+03dh),001h	;931d
l9321h:
	jp 06c1dh		;9321
l9324h:
	ld a,(ix+021h)		;9324
	ld de,00100h		;9327
	and a			;932a
	jr nz,l9330h		;932b
	ld de,00102h		;932d
l9330h:
	call sub_936eh		;9330
	ret z			;9333
	ld l,(ix+00bh)		;9334
	ld h,(ix+00ch)		;9337
	ld (ix+022h),l		;933a
	ld (ix+023h),h		;933d
	call 06be6h		;9340
	call 04678h		;9343
	and 00fh		;9346
	ld (ix+017h),a		;9348
	jp 06c1dh		;934b
l934eh:
	call 06ad2h		;934e
	ret nz			;9351
	ld l,(ix+022h)		;9352
	ld h,(ix+023h)		;9355
	ld (ix+00bh),l		;9358
	ld (ix+00ch),h		;935b
	call 06b43h		;935e
	ld a,001h		;9361
	xor (ix+021h)		;9363
	ld (ix+021h),a		;9366
	ld (ix+001h),001h	;9369
	ret			;936d
sub_936eh:
	ld a,e			;936e
	add a,(ix+008h)		;936f
	ld e,a			;9372
	ld a,d			;9373
	add a,(ix+00ah)		;9374
	ld d,a			;9377
	jp 0753ch		;9378
	ld a,(0ca02h)		;937b
	xor (ix+02dh)		;937e
	and 003h		;9381
	jr z,l9387h		;9383
	ld a,0ffh		;9385
l9387h:
	inc a			;9387
	ld (ix+03dh),a		;9388
	call 06c26h		;938b
	ld a,(ix+001h)		;938e
	call 0461ah		;9391
	sbc a,d			;9394
	sub e			;9395
	and h			;9396
	sub e			;9397
	cp (hl)			;9398
	sub e			;9399
	call 06754h		;939a
	inc (ix+001h)		;939d
	ld (ix+017h),014h	;93a0
	dec (ix+017h)		;93a4
	ret nz			;93a7
	inc (ix+001h)		;93a8
	ld hl,00070h		;93ab
	call 06bf3h		;93ae
	ld hl,00011h		;93b1
	ld de,00016h		;93b4
	call 06c04h		;93b7
	call sub_93f9h		;93ba
	ret			;93bd
	ld a,(0ca04h)		;93be
	or a			;93c1
	jr z,l93dbh		;93c2
	ld a,(0ca02h)		;93c4
	xor (ix+02dh)		;93c7
	inc (ix+00ah)		;93ca
	inc (ix+008h)		;93cd
	and 0cfh		;93d0
	call z,07143h		;93d2
	dec (ix+00ah)		;93d5
	dec (ix+008h)		;93d8
l93dbh:
	ld a,(ix+005h)		;93db
	xor 001h		;93de
	ld (ix+005h),a		;93e0
	ld hl,00100h		;93e3
	ld de,00100h		;93e6
	call 0759ah		;93e9
	call sub_93feh		;93ec
	ld hl,000a0h		;93ef
	ld de,000c0h		;93f2
	call 06caeh		;93f5
	ret			;93f8
sub_93f9h:
	ld (ix+02ah),0ffh	;93f9
	ret			;93fd
sub_93feh:
	push af			;93fe
	call sub_943eh		;93ff
	pop af			;9402
	jr nc,l9420h		;9403
	jr nz,l9420h		;9405
	ld a,(ix+00ah)		;9407
	ld (ix+028h),a		;940a
	ld a,(ix+009h)		;940d
	ld (ix+029h),a		;9410
	ld a,(ix+008h)		;9413
	ld (ix+02ah),a		;9416
	ld a,(ix+007h)		;9419
	ld (ix+02bh),a		;941c
	ret			;941f
l9420h:
	ld a,(ix+02ah)		;9420
	inc a			;9423
	ret z			;9424
	ld a,(ix+028h)		;9425
	ld (ix+00ah),a		;9428
	ld a,(ix+029h)		;942b
	ld (ix+009h),a		;942e
	ld a,(ix+02ah)		;9431
	ld (ix+008h),a		;9434
	ld a,(ix+02bh)		;9437
	ld (ix+007h),a		;943a
	ret			;943d
sub_943eh:
	ld de,(0ca14h)		;943e
	ld h,(ix+028h)		;9442
	ld l,(ix+029h)		;9445
	add hl,de		;9448
	ld (ix+028h),h		;9449
	ld (ix+029h),l		;944c
	ld de,(0ca12h)		;944f
	ld h,(ix+02ah)		;9453
	ld l,(ix+02bh)		;9456
	add hl,de		;9459
	ld (ix+02ah),h		;945a
	ld (ix+02bh),l		;945d
	ret			;9460
	call 06796h		;9461
	ld d,a			;9464
	and 07fh		;9465
	ld (ix+008h),a		;9467
	call 06796h		;946a
	ld (ix+00ah),a		;946d
	jp l82d3h		;9470
	jp l82cah		;9473
	ret			;9476
l9477h:
	ld a,(ix+001h)		;9477
	dec a			;947a
	jr z,l94bch		;947b
	dec a			;947d
	jr z,l94edh		;947e
sub_9480h:
	call 04678h		;9480
	ld b,a			;9483
	and 007h		;9484
	ld l,a			;9486
	ld h,000h		;9487
	add hl,hl		;9489
	ld de,l94ach		;948a
	add hl,de		;948d
	ld a,(hl)		;948e
	ld (ix+008h),a		;948f
	inc hl			;9492
	ld a,b			;9493
	rrca			;9494
	ld a,(hl)		;9495
	jr c,l9499h		;9496
	inc a			;9498
l9499h:
	ld (ix+00ah),a		;9499
	ld a,b			;949c
	rrca			;949d
	rrca			;949e
	rrca			;949f
	and 003h		;94a0
	inc a			;94a2
	ld (ix+020h),a		;94a3
	ld (ix+017h),a		;94a6
	jp 06c1dh		;94a9
l94ach:
	inc b			;94ac
	ld bc,00502h		;94ad
	ld (bc),a		;94b0
	ex af,af'		;94b1
	ld (bc),a		;94b2
	dec bc			;94b3
	inc b			;94b4
	rrca			;94b5
	ex af,af'		;94b6
	dec d			;94b7
	inc b			;94b8
	dec c			;94b9
	ld b,011h		;94ba
l94bch:
	call 06ad2h		;94bc
	ret nz			;94bf
	ld a,(ix+020h)		;94c0
	ld (ix+017h),a		;94c3
	ld b,006h		;94c6
	call 06ab8h		;94c8
	ret nz			;94cb
	ld (ix+005h),006h	;94cc
	ld hl,00040h		;94d0
	call 06bf3h		;94d3
	ld hl,00010h		;94d6
	call 06c0ch		;94d9
	ld hl,0ce51h		;94dc
	dec (hl)		;94df
	set 7,(ix+014h)		;94e0
	inc (ix+008h)		;94e4
	inc (ix+008h)		;94e7
	jp 06c1dh		;94ea
l94edh:
	call 06a9ah		;94ed
	ld a,(ix+005h)		;94f0
	cp 007h			;94f3
	ret z			;94f5
	inc (ix+005h)		;94f6
	ret			;94f9
	call 06754h		;94fa
	ld a,(0ca10h)		;94fd
	cp 005h			;9500
	jr z,l9507h		;9502
	inc (ix+005h)		;9504
l9507h:
	ret			;9507
	ld a,(ix+001h)		;9508
	or a			;950b
	jr nz,l9517h		;950c
	inc (ix+001h)		;950e
	call 06ce9h		;9511
	jp 06cf5h		;9514
l9517h:
	call sub_953ch		;9517
	ld a,(ix+008h)		;951a
	cp 018h			;951d
	jp nc,06e98h		;951f
	ld a,(ix+00ah)		;9522
	cp 024h			;9525
	jp nc,06e98h		;9527
	ld a,(ix+004h)		;952a
	or a			;952d
	ld a,023h		;952e
	call nz,04af5h		;9530
	call 07cach		;9533
	jp nc,07747h		;9536
	jp 07cc3h		;9539
sub_953ch:
	ld a,(ix+003h)		;953c
	and 003h		;953f
	ld (ix+003h),a		;9541
	call 06d2ch		;9544
	ld h,(ix+028h)		;9547
	ld l,(ix+029h)		;954a
	ld d,(ix+00ah)		;954d
	ld e,(ix+009h)		;9550
	ld a,(0ca02h)		;9553
	and 007h		;9556
	jr nz,l955eh		;9558
	ld bc,00040h		;955a
	add hl,bc		;955d
l955eh:
	call sub_95a4h		;955e
	ld (ix+012h),h		;9561
	ld (ix+011h),l		;9564
	bit 7,h			;9567
	call nz,04612h		;9569
	ld bc,00060h		;956c
	or a			;956f
	sbc hl,bc		;9570
	jr c,l9578h		;9572
	set 2,(ix+003h)		;9574
l9578h:
	ld h,(ix+02ah)		;9578
	ld l,(ix+02bh)		;957b
	ld d,(ix+008h)		;957e
	ld e,(ix+007h)		;9581
	call sub_95a4h		;9584
	ld (ix+010h),h		;9587
	ld (ix+00fh),l		;958a
	bit 7,h			;958d
	call nz,04612h		;958f
	ld bc,00060h		;9592
	or a			;9595
	sbc hl,bc		;9596
	jr c,l959eh		;9598
	set 3,(ix+003h)		;959a
l959eh:
	call sub_95bch		;959e
	jp 06a9ah		;95a1
sub_95a4h:
	or a			;95a4
	sbc hl,de		;95a5
	sra h			;95a7
	rr l			;95a9
	sra h			;95ab
	rr l			;95ad
	sra h			;95af
	rr l			;95b1
	sra h			;95b3
	rr l			;95b5
	sra h			;95b7
	rr l			;95b9
	ret			;95bb
sub_95bch:
	ld h,(ix+00eh)		;95bc
	ld l,(ix+00dh)		;95bf
	sra h			;95c2
	rr l			;95c4
	ld (ix+00eh),h		;95c6
	ld (ix+00dh),l		;95c9
	ld h,(ix+00ch)		;95cc
	ld l,(ix+00bh)		;95cf
	sra h			;95d2
	rr l			;95d4
	ld (ix+00ch),h		;95d6
	ld (ix+00bh),l		;95d9
	ret			;95dc
	ld a,(iy+000h)		;95dd
	cp 004h			;95e0
	jr z,l9609h		;95e2
	cp 007h			;95e4
	jr z,l9609h		;95e6
	cp 006h			;95e8
	jr z,l95efh		;95ea
	cp 005h			;95ec
	ret nz			;95ee
l95efh:
	ld a,(iy+012h)		;95ef
	cp 004h			;95f2
	ret nc			;95f4
	add a,a			;95f5
	add a,a			;95f6
	ld e,a			;95f7
	ld d,000h		;95f8
	ld hl,l9637h		;95fa
	add hl,de		;95fd
	ld e,(hl)		;95fe
	inc hl			;95ff
	ld d,(hl)		;9600
	inc hl			;9601
	ld c,(hl)		;9602
	inc hl			;9603
	ld b,(hl)		;9604
	call sub_961dh		;9605
	ret			;9608
l9609h:
	ld d,(iy+00eh)		;9609
	ld e,(iy+00dh)		;960c
	sra d			;960f
	rr e			;9611
	ld b,(iy+00ch)		;9613
	ld c,(iy+00bh)		;9616
	sra b			;9619
	rr c			;961b
sub_961dh:
	ld a,(ix+003h)		;961d
	and 005h		;9620
	jr nz,l962ah		;9622
	ld (ix+00ch),b		;9624
	ld (ix+00bh),c		;9627
l962ah:
	ld a,(ix+003h)		;962a
	and 00ah		;962d
	ret nz			;962f
	ld (ix+00eh),d		;9630
	ld (ix+00dh),e		;9633
	ret			;9636
l9637h:
	ld b,b			;9637
	nop			;9638
	nop			;9639
	nop			;963a
	nop			;963b
	nop			;963c
	ld b,b			;963d
	nop			;963e
	ret nz			;963f
	rst 38h			;9640
	nop			;9641
	nop			;9642
	nop			;9643
	nop			;9644
	ret nz			;9645
	rst 38h			;9646
	call sub_9480h		;9647
	call 06796h		;964a
	ld (ix+00ah),a		;964d
	ld (ix+008h),002h	;9650
	ret			;9654
	jp l9477h		;9655
	call sub_8341h		;9658
	ld a,(ix+017h)		;965b
	and a			;965e
	jr z,l9666h		;965f
	dec a			;9661
	ld (ix+017h),a		;9662
	ret			;9665
l9666h:
	ld a,(ix+020h)		;9666
	and a			;9669
	ld bc,00000h		;966a
	ld hl,l9698h		;966d
	jr z,l9678h		;9670
	ld bc,00200h		;9672
	ld hl,l969ch		;9675
l9678h:
	call 07300h		;9678
l967bh:
	ld l,(ix+023h)		;967b
	ld h,000h		;967e
	ld de,l9691h		;9680
	add hl,de		;9683
	ld a,(hl)		;9684
	and a			;9685
	jr nz,l968ch		;9686
	ex de,hl		;9688
	ld (ix+023h),a		;9689
l968ch:
	ld a,(hl)		;968c
	ld (ix+017h),a		;968d
	ret			;9690
l9691h:
	jr l969bh		;9691
	jr z,l969dh		;9693
	jr l96cfh		;9695
	nop			;9697
l9698h:
	ld bc,00302h		;9698
l969bh:
	rst 38h			;969b
l969ch:
	dec c			;969c
l969dh:
	ld c,00fh		;969d
	rst 38h			;969f
	call sub_8347h		;96a0
	inc (ix+03dh)		;96a3
	ld (ix+03eh),000h	;96a6
	jr l967bh		;96aa
	call 06e91h		;96ac
	ld de,l97c5h		;96af
	call 07b65h		;96b2
	ld a,(ix+001h)		;96b5
	dec a			;96b8
	jr z,l96d8h		;96b9
	dec a			;96bb
	jr z,l96ffh		;96bc
	dec a			;96be
	jr z,l9711h		;96bf
	ld a,(0ca19h)		;96c1
	cp 005h			;96c4
	jr c,l96cch		;96c6
	ld (ix+016h),040h	;96c8
l96cch:
	call 06754h		;96cc
l96cfh:
	call sub_976bh		;96cf
	call sub_972dh		;96d2
	jp 06c1dh		;96d5
l96d8h:
	call sub_971bh		;96d8
	ld a,(ix+006h)		;96db
	dec a			;96de
	jr nz,l96eah		;96df
	set 7,(ix+014h)		;96e1
	call 07c63h		;96e5
	jr c,l96f0h		;96e8
l96eah:
	res 7,(ix+014h)		;96ea
	jr l9760h		;96ee
l96f0h:
	call 07cbeh		;96f0
	ld a,001h		;96f3
	ld (0ce76h),a		;96f5
	ld (ix+006h),003h	;96f8
	jp 06c1dh		;96fc
l96ffh:
	ld b,008h		;96ff
	call 06ac2h		;9701
	cp 007h			;9704
	ret nz			;9706
	call 07058h		;9707
	ld (ix+017h),020h	;970a
	jp 06c1dh		;970e
l9711h:
	call 06ad2h		;9711
	ret nz			;9714
	ld a,001h		;9715
	ld (0ca0fh),a		;9717
	ret			;971a
sub_971bh:
	call 06ad2h		;971b
	ret nz			;971e
	ld a,(0ca02h)		;971f
	and 003h		;9722
	ret nz			;9724
	dec (ix+026h)		;9725
	jr z,sub_972dh		;9728
	jp 0b6c9h		;972a
sub_972dh:
	ld l,(ix+027h)		;972d
	inc (ix+027h)		;9730
	ld h,000h		;9733
	add hl,hl		;9735
	ld de,l9755h		;9736
	add hl,de		;9739
	ld a,(hl)		;973a
	inc a			;973b
	jr nz,l9742h		;973c
	ld (ix+027h),a		;973e
	ex de,hl		;9741
l9742h:
	ld a,(hl)		;9742
	ld b,a			;9743
	and 07fh		;9744
	ld (ix+026h),a		;9746
	ld a,b			;9749
	and 080h		;974a
	ld (ix+025h),a		;974c
	inc hl			;974f
	ld a,(hl)		;9750
	ld (ix+017h),a		;9751
	ret			;9754
l9755h:
	ld b,038h		;9755
	add a,a			;9757
	ld c,h			;9758
	ex af,af'		;9759
	ld c,(hl)		;975a
	add a,l			;975b
	inc a			;975c
	add a,l			;975d
	jr z,$+1		;975e
l9760h:
	ld a,(ix+020h)		;9760
	and a			;9763
	call z,sub_976bh	;9764
	dec (ix+020h)		;9767
	ret			;976a
sub_976bh:
	ld l,(ix+021h)		;976b
	ld h,000h		;976e
	add hl,hl		;9770
	ld a,(0ca19h)		;9771
	ld de,l979bh		;9774
	cp 004h			;9777
	jr c,l977eh		;9779
	ld de,l97b0h		;977b
l977eh:
	add hl,de		;977e
	ld a,(hl)		;977f
	and a			;9780
	jr nz,l9787h		;9781
	ld (ix+021h),a		;9783
	ex de,hl		;9786
l9787h:
	inc (ix+021h)		;9787
	ld a,(hl)		;978a
	ld (ix+020h),a		;978b
	inc hl			;978e
	ld a,(hl)		;978f
	ld (ix+006h),a		;9790
	dec a			;9793
	ret nz			;9794
	call 07ca7h		;9795
	jp l9c60h		;9798
l979bh:
	jr nz,l979fh		;979b
	inc b			;979d
	nop			;979e
l979fh:
	jr z,l97a2h		;979f
	inc b			;97a1
l97a2h:
	nop			;97a2
	jr nc,l97a7h		;97a3
	ex af,af'		;97a5
	nop			;97a6
l97a7h:
	jr l97abh		;97a7
	inc b			;97a9
	nop			;97aa
l97abh:
	ld (00401h),hl		;97ab
	nop			;97ae
	nop			;97af
l97b0h:
	jr nz,l97b4h		;97b0
	inc b			;97b2
	nop			;97b3
l97b4h:
	ex af,af'		;97b4
	ld bc,00004h		;97b5
	jr nc,l97bch		;97b8
	ex af,af'		;97ba
	nop			;97bb
l97bch:
	jr l97c0h		;97bc
	inc b			;97be
	nop			;97bf
l97c0h:
	jr nz,l97c3h		;97c0
	inc b			;97c2
l97c3h:
	nop			;97c3
	nop			;97c4
l97c5h:
	push de			;97c5
	sub a			;97c6
	in a,(097h)		;97c7
	pop hl			;97c9
	sub a			;97ca
	rst 20h			;97cb
	sub a			;97cc
	defb 0edh ;next byte illegal after ed	;97cd
	sub a			;97ce
	di			;97cf
	sub a			;97d0
	ld sp,hl		;97d1
	sub a			;97d2
	rst 38h			;97d3
	sub a			;97d4
	ld b,000h		;97d5
	nop			;97d7
	ld bc,0ff00h		;97d8
	ld b,000h		;97db
	nop			;97dd
	ld bc,0ff01h		;97de
	ld b,000h		;97e1
	nop			;97e3
	ld bc,0ff02h		;97e4
	ld b,000h		;97e7
	nop			;97e9
	ld bc,0ff04h		;97ea
	ld b,000h		;97ed
	nop			;97ef
	ld bc,0ff05h		;97f0
	ld b,000h		;97f3
	nop			;97f5
	ld bc,0ff06h		;97f6
	ld b,000h		;97f9
	nop			;97fb
	ld bc,0ff07h		;97fc
	ld b,0fdh		;97ff
	ld (bc),a		;9801
	ld bc,0ff03h		;9802
	ld a,(ix+001h)		;9805
	dec a			;9808
	jr z,l9820h		;9809
	call 06754h		;980b
	ld a,d			;980e
	rlca			;980f
	ld a,00ah		;9810
	jr nc,l981ah		;9812
	ld (ix+006h),00ah	;9814
	ld a,008h		;9818
l981ah:
	call 06adbh		;981a
	jp 06c1dh		;981d
l9820h:
	ld a,(ix+00ah)		;9820
	cp 015h			;9823
	ret nc			;9825
	ld a,(0ca02h)		;9826
	and 003h		;9829
	ret nz			;982b
	call 06ad2h		;982c
	ret z			;982f
	inc (ix+006h)		;9830
	ld a,(ix+006h)		;9833
	dec a			;9836
	ret nz			;9837
	ld a,032h		;9838
	jp 04af0h		;983a
	ld a,(ix+001h)		;983d
	call 0461ah		;9840
	ld c,e			;9843
	sbc a,b			;9844
	ld h,h			;9845
	sbc a,b			;9846
	res 3,b			;9847
	dec bc			;9849
	sbc a,c			;984a
	call 06796h		;984b
	ld (ix+008h),a		;984e
	call 06796h		;9851
	ld (ix+00ah),a		;9854
	call 06796h		;9857
	ld (ix+020h),a		;985a
	call 06796h		;985d
	ld (ix+001h),a		;9860
	ret			;9863
	ld a,(ix+002h)		;9864
	dec a			;9867
	jr z,l988bh		;9868
	dec a			;986a
	jr z,l98a0h		;986b
	dec a			;986d
	jr z,l98c3h		;986e
	call 06796h		;9870
	ld (ix+021h),a		;9873
	call 06796h		;9876
	ld (ix+022h),a		;9879
	call 06796h		;987c
	ld (ix+023h),a		;987f
	call sub_9915h		;9882
	call sub_992bh		;9885
	jp l990ch		;9888
l988bh:
	ld a,(0ca34h)		;988b
	cp (ix+023h)		;988e
	jp nc,l989bh		;9891
	call 06ad2h		;9894
	ret nz			;9897
	jp l990ch		;9898
l989bh:
	ld (ix+002h),003h	;989b
	ret			;989f
l98a0h:
	call 06adfh		;98a0
	ret nz			;98a3
	call sub_9924h		;98a4
	call 06814h		;98a7
	ret c			;98aa
	call 06926h		;98ab
	call sub_9936h		;98ae
	ld a,007h		;98b1
	call 0699fh		;98b3
	dec (ix+024h)		;98b6
	ret nz			;98b9
	call sub_991eh		;98ba
	call sub_992bh		;98bd
	jp l9910h		;98c0
l98c3h:
	ld a,(ix+037h)		;98c3
	and a			;98c6
	ret nz			;98c7
	jp 06e98h		;98c8
	ld a,(ix+002h)		;98cb
	dec a			;98ce
	jr z,l98ech		;98cf
	dec a			;98d1
	jr z,l98c3h		;98d2
	call 06796h		;98d4
	ld d,a			;98d7
	and 07fh		;98d8
	ld (ix+021h),a		;98da
	ld a,d			;98dd
	rlca			;98de
	jr nc,l98e4h		;98df
	inc (ix+03dh)		;98e1
l98e4h:
	call sub_9915h		;98e4
	call sub_992bh		;98e7
	jr l990ch		;98ea
l98ech:
	call 06ad2h		;98ec
	ret nz			;98ef
	ld a,(ix+021h)		;98f0
	ld (ix+017h),a		;98f3
	call 06814h		;98f6
	ret c			;98f9
	call 06926h		;98fa
	call sub_9936h		;98fd
	ld a,005h		;9900
	call 0699fh		;9902
	dec (ix+024h)		;9905
	ret nz			;9908
	jr l990ch		;9909
	ret			;990b
l990ch:
	inc (ix+002h)		;990c
	ret			;990f
l9910h:
	ld (ix+002h),001h	;9910
	ret			;9914
sub_9915h:
	ld (ix+017h),001h	;9915
	ld (ix+018h),001h	;9919
	ret			;991d
sub_991eh:
	ld a,(ix+021h)		;991e
	ld (ix+017h),a		;9921
sub_9924h:
	ld a,(ix+022h)		;9924
	ld (ix+018h),a		;9927
	ret			;992a
sub_992bh:
	ld a,(ix+020h)		;992b
	ld (ix+024h),a		;992e
	ld (ix+025h),000h	;9931
	ret			;9935
sub_9936h:
	inc (ix+025h)		;9936
	ld a,(ix+025h)		;9939
	ld (iy+038h),a		;993c
	ret			;993f
	call 06c3ah		;9940
	ld a,(ix+001h)		;9943
	dec a			;9946
	jr z,l9956h		;9947
	dec a			;9949
	jr z,l9970h		;994a
	call 06754h		;994c
	ld (ix+008h),0fch	;994f
	jp 06c1dh		;9953
l9956h:
	call sub_9990h		;9956
	jr c,l9968h		;9959
	ld (iy+008h),001h	;995b
	call sub_9990h		;995f
	jr c,l9968h		;9962
	ld (iy+008h),010h	;9964
l9968h:
	ld a,040h		;9968
	call 06ae8h		;996a
	jp 06c1dh		;996d
l9970h:
	ld a,(ix+020h)		;9970
	and a			;9973
	call z,sub_9984h	;9974
	call 06adfh		;9977
	ret nz			;997a
	call sub_9990h		;997b
	ret c			;997e
	ld a,040h		;997f
	jp 06ae8h		;9981
sub_9984h:
	ld a,(0ca18h)		;9984
	dec a			;9987
	ret z			;9988
	inc (ix+020h)		;9989
	dec (ix+00ah)		;998c
	ret			;998f
sub_9990h:
	call 06814h		;9990
	ret c			;9993
	call 06926h		;9994
	jp 0699eh		;9997
	ld a,(ix+001h)		;999a
	dec a			;999d
	jr z,l99e0h		;999e
	dec a			;99a0
	jr z,l99edh		;99a1
	call 06754h		;99a3
	ld a,d			;99a6
	rlca			;99a7
	ld c,015h		;99a8
	jr nc,l99b1h		;99aa
	inc (ix+020h)		;99ac
	ld c,001h		;99af
l99b1h:
	ld (ix+008h),c		;99b1
	ld (ix+00ah),020h	;99b4
	call 06796h		;99b8
	ld d,a			;99bb
	and 00fh		;99bc
	ld (ix+022h),a		;99be
	ld a,d			;99c1
	rrca			;99c2
	rrca			;99c3
	rrca			;99c4
	rrca			;99c5
	and 003h		;99c6
	ld l,a			;99c8
	ld h,000h		;99c9
	ld de,l99dch		;99cb
	add hl,de		;99ce
	ld a,(hl)		;99cf
	ld (ix+024h),a		;99d0
	call 06796h		;99d3
	ld (ix+021h),a		;99d6
	jp 06c1dh		;99d9
l99dch:
	dec e			;99dc
	dec d			;99dd
	dec c			;99de
	dec b			;99df
l99e0h:
	ld a,(ix+00ah)		;99e0
	cp (ix+024h)		;99e3
	ret nz			;99e6
	inc (ix+017h)		;99e7
	jp 06c1dh		;99ea
l99edh:
	dec (ix+017h)		;99ed
	ret nz			;99f0
	ld (ix+017h),008h	;99f1
	ld a,01ah		;99f5
	call 0684ch		;99f7
	ret c			;99fa
	ld a,(ix+008h)		;99fb
	ld (iy+008h),a		;99fe
	ld a,(ix+007h)		;9a01
	ld (iy+007h),a		;9a04
	ld a,(ix+00ah)		;9a07
	ld (iy+00ah),a		;9a0a
	ld a,(ix+009h)		;9a0d
	ld (iy+009h),a		;9a10
	ld a,(ix+020h)		;9a13
	ld (iy+020h),a		;9a16
	ld a,(ix+021h)		;9a19
	ld (iy+021h),a		;9a1c
	inc (iy+001h)		;9a1f
	ld a,(ix+023h)		;9a22
	ld (iy+023h),a		;9a25
	and a			;9a28
	jr nz,l9a2eh		;9a29
	inc (iy+03dh)		;9a2b
l9a2eh:
	inc a			;9a2e
	ld (ix+023h),a		;9a2f
	cp (ix+022h)		;9a32
	ret nz			;9a35
	jp 06e98h		;9a36
	ld a,(ix+03ah)		;9a39
	ld (ix+000h),a		;9a3c
	ret			;9a3f
	ret			;9a40
	ld (ix+015h),02dh	;9a41
	ld b,004h		;9a45
	call 06ab8h		;9a47
	ret nz			;9a4a
	ld a,(ix+03dh)		;9a4b
	and a			;9a4e
	jp z,06e98h		;9a4f
	ld (ix+03dh),000h	;9a52
	ld e,(ix+008h)		;9a56
	ld d,(ix+00ah)		;9a59
	call 06f55h		;9a5c
	jp 06e98h		;9a5f
	push de			;9a62
	ld a,069h		;9a63
	call 0684ch		;9a65
	pop de			;9a68
	ret c			;9a69
	ld l,(ix+008h)		;9a6a
	ld h,(ix+00ah)		;9a6d
	add hl,de		;9a70
	ld (iy+008h),l		;9a71
	ld (iy+00ah),h		;9a74
	ld (iy+001h),001h	;9a77
	ret			;9a7b
	ld a,(ix+001h)		;9a7c
	dec a			;9a7f
	jr z,l9a98h		;9a80
	call 06796h		;9a82
	ld (ix+008h),a		;9a85
	call 06796h		;9a88
	ld (ix+00ah),a		;9a8b
	ld a,(0ce4ch)		;9a8e
	and a			;9a91
	jp z,06e98h		;9a92
	jp 06c1dh		;9a95
l9a98h:
	ld de,l9aadh		;9a98
	call 07b65h		;9a9b
	ld b,006h		;9a9e
	call 06ac2h		;9aa0
	jp z,06e98h		;9aa3
	dec a			;9aa6
	ret nz			;9aa7
	ld a,033h		;9aa8
	jp 04af0h		;9aaa
l9aadh:
	cp c			;9aad
	sbc a,d			;9aae
	cp a			;9aaf
	sbc a,d			;9ab0
	push bc			;9ab1
	sbc a,d			;9ab2
l9ab3h:
	res 3,d			;9ab3
	pop de			;9ab5
	sbc a,d			;9ab6
	push bc			;9ab7
	sbc a,d			;9ab8
	ld b,000h		;9ab9
	nop			;9abb
	ld bc,0ff00h		;9abc
	ld b,000h		;9abf
	nop			;9ac1
	ld bc,0ff01h		;9ac2
	ld b,000h		;9ac5
	nop			;9ac7
	ld bc,0ff02h		;9ac8
	ld b,000h		;9acb
	nop			;9acd
	ld bc,0ff03h		;9ace
	ld b,000h		;9ad1
	nop			;9ad3
	ld bc,0ff04h		;9ad4
	call 06e91h		;9ad7
	ld a,(ix+001h)		;9ada
	dec a			;9add
	jr z,l9afeh		;9ade
	ld (ix+015h),004h	;9ae0
	ld de,l9b0ah		;9ae4
	call 07b65h		;9ae7
	ld b,008h		;9aea
	call 06ac2h		;9aec
	ret nz			;9aef
	call 07058h		;9af0
	call 07523h		;9af3
	ld (ix+017h),030h	;9af6
	ld (ix+001h),001h	;9afa
l9afeh:
	call 06ad2h		;9afe
	ret nz			;9b01
	ld a,001h		;9b02
	ld (0ca0fh),a		;9b04
	jp 06e98h		;9b07
l9b0ah:
	ld a,(de)		;9b0a
	sbc a,e			;9b0b
	jr nz,$-99		;9b0c
	ld h,09bh		;9b0e
	inc l			;9b10
	sbc a,e			;9b11
	ld (0269bh),a		;9b12
	sbc a,e			;9b15
	jr nz,l9ab3h		;9b16
	ld a,(de)		;9b18
	sbc a,e			;9b19
	ld b,003h		;9b1a
	ld (bc),a		;9b1c
	ld bc,0ff00h		;9b1d
	ld b,003h		;9b20
	ld bc,00101h		;9b22
	rst 38h			;9b25
	ld b,002h		;9b26
	ld bc,00201h		;9b28
	rst 38h			;9b2b
	ld b,000h		;9b2c
	nop			;9b2e
	ld bc,0ff03h		;9b2f
	ld b,001h		;9b32
	ld bc,00401h		;9b34
	rst 38h			;9b37
	ld a,(ix+001h)		;9b38
	dec a			;9b3b
	jr z,l9b6fh		;9b3c
	ld (ix+015h),004h	;9b3e
	call sub_9b70h		;9b42
	ld b,003h		;9b45
	call 06ac2h		;9b47
	ret nz			;9b4a
	ld a,(ix+03eh)		;9b4b
	and a			;9b4e
	jr z,l9b5bh		;9b4f
	ld (ix+006h),a		;9b51
	ld (ix+015h),046h	;9b54
	jp 06c1dh		;9b58
l9b5bh:
	ld a,(ix+03dh)		;9b5b
	and a			;9b5e
	jp z,06e98h		;9b5f
	ld (ix+03dh),000h	;9b62
	ld e,(ix+008h)		;9b66
	ld d,(ix+00ah)		;9b69
	jp 06f55h		;9b6c
l9b6fh:
	ret			;9b6f
sub_9b70h:
	ld de,l9ba2h		;9b70
	ld a,(ix+03eh)		;9b73
	and a			;9b76
	jr z,l9b87h		;9b77
	dec a			;9b79
	dec a			;9b7a
	dec a			;9b7b
	ld l,a			;9b7c
	ld h,000h		;9b7d
	add hl,hl		;9b7f
	ld de,l9b8ah		;9b80
	add hl,de		;9b83
	ld e,(hl)		;9b84
	inc hl			;9b85
	ld d,(hl)		;9b86
l9b87h:
	jp 07b65h		;9b87
l9b8ah:
	and d			;9b8a
	sbc a,e			;9b8b
	and d			;9b8c
	sbc a,e			;9b8d
	xor (hl)		;9b8e
	sbc a,e			;9b8f
	and d			;9b90
	sbc a,e			;9b91
	and d			;9b92
	sbc a,e			;9b93
	and d			;9b94
	sbc a,e			;9b95
	xor b			;9b96
	sbc a,e			;9b97
	xor b			;9b98
	sbc a,e			;9b99
	and d			;9b9a
	sbc a,e			;9b9b
	and d			;9b9c
	sbc a,e			;9b9d
	or h			;9b9e
	sbc a,e			;9b9f
	cp d			;9ba0
	sbc a,e			;9ba1
l9ba2h:
	ret nz			;9ba2
	sbc a,e			;9ba3
	add a,09bh		;9ba4
	ret nz			;9ba6
	sbc a,e			;9ba7
	call z,0d29bh		;9ba8
	sbc a,e			;9bab
	call z,0d89bh		;9bac
	sbc a,e			;9baf
	ex (sp),hl		;9bb0
	sbc a,e			;9bb1
	ret c			;9bb2
	sbc a,e			;9bb3
	xor 09bh		;9bb4
	xor 09bh		;9bb6
	xor 09bh		;9bb8
	call p,0f49bh		;9bba
	sbc a,e			;9bbd
	call p,0069bh		;9bbe
	nop			;9bc1
	rst 38h			;9bc2
	ld bc,0ff00h		;9bc3
	ld b,000h		;9bc6
	rst 38h			;9bc8
	ld bc,0ff01h		;9bc9
	ld b,001h		;9bcc
	ld bc,00001h		;9bce
	rst 38h			;9bd1
	ld b,001h		;9bd2
	ld bc,00101h		;9bd4
	rst 38h			;9bd7
	dec bc			;9bd8
	ld (bc),a		;9bd9
	ld (bc),a		;9bda
	ld bc,0fe00h		;9bdb
	nop			;9bde
	nop			;9bdf
	ld bc,0ff05h		;9be0
	dec bc			;9be3
	ld (bc),a		;9be4
	ld bc,00101h		;9be5
	cp 000h			;9be8
	nop			;9bea
	ld bc,0ff05h		;9beb
	ld b,000h		;9bee
	nop			;9bf0
	ld bc,0ff0dh		;9bf1
	ld b,000h		;9bf4
	nop			;9bf6
	ld bc,0ff0eh		;9bf7
l9bfah:
	push de			;9bfa
	ld bc,0ffa0h		;9bfb
	call sub_9c07h		;9bfe
	pop de			;9c01
	ret z			;9c02
	ld e,d			;9c03
	ld bc,00060h		;9c04
sub_9c07h:
	ld d,061h		;9c07
	call 07207h		;9c09
	ret nz			;9c0c
	call 0721dh		;9c0d
	ld (hl),d		;9c10
	ld a,e			;9c11
	rrca			;9c12
	rrca			;9c13
	rrca			;9c14
	rrca			;9c15
	and 00fh		;9c16
	ld d,a			;9c18
	ld a,e			;9c19
	and 00fh		;9c1a
	ld e,a			;9c1c
	ld a,008h		;9c1d
	add a,l			;9c1f
	ld l,a			;9c20
	ld a,(ix+008h)		;9c21
	add a,e			;9c24
	ld (hl),a		;9c25
	inc l			;9c26
	inc l			;9c27
	ld a,(ix+00ah)		;9c28
	add a,d			;9c2b
	ld (hl),a		;9c2c
	inc l			;9c2d
	ld (hl),c		;9c2e
	inc l			;9c2f
	ld (hl),b		;9c30
	ld a,l			;9c31
	and 0e0h		;9c32
	ld l,a			;9c34
	call 066f7h		;9c35
	ld (hl),006h		;9c38
	ret			;9c3a
	ld a,(ix+001h)		;9c3b
	dec a			;9c3e
	jr z,l9c57h		;9c3f
	call 06ad2h		;9c41
	ret nz			;9c44
	call 06bf0h		;9c45
	ld de,0ff80h		;9c48
	call 06bfdh		;9c4b
	ld de,0ffe0h		;9c4e
	call 06c16h		;9c51
	jp 06c1dh		;9c54
l9c57h:
	ld a,(0ca02h)		;9c57
	and 001h		;9c5a
	ret z			;9c5c
	jp 06a9ah		;9c5d
l9c60h:
	ld a,066h		;9c60
	call 0684ch		;9c62
	ret c			;9c65
	ld bc,00102h		;9c66
	jp 06929h		;9c69
	ld a,(ix+001h)		;9c6c
	dec a			;9c6f
	jr z,l9caah		;9c70
	ld de,0ff80h		;9c72
	call 06bfdh		;9c75
	ld de,0fff0h		;9c78
	call 06c16h		;9c7b
	ld (ix+007h),080h	;9c7e
	ld a,(0ca19h)		;9c82
	cp 005h			;9c85
	ld a,004h		;9c87
	jr c,l9ca4h		;9c89
	ld a,(0ca48h)		;9c8b
	inc a			;9c8e
	sub 00bh		;9c8f
	ld hl,00008h		;9c91
	jr nc,l9c9bh		;9c94
	neg			;9c96
	ld hl,0fff8h		;9c98
l9c9bh:
	cp 002h			;9c9b
	jr c,l9ca2h		;9c9d
	call 06c0ch		;9c9f
l9ca2h:
	ld a,00ch		;9ca2
l9ca4h:
	ld (ix+016h),a		;9ca4
	jp 06c1dh		;9ca7
l9caah:
	jp 06a9ah		;9caa
	call sub_9ccbh		;9cad
	inc (hl)		;9cb0
	inc (hl)		;9cb1
	inc (hl)		;9cb2
	jr l9cb8h		;9cb3
l9cb5h:
	call sub_9ccbh		;9cb5
l9cb8h:
	call sub_9cdeh		;9cb8
	ld a,015h		;9cbb
	jp 04af0h		;9cbd
	call sub_9ccbh		;9cc0
	call sub_9cdeh		;9cc3
	ld a,019h		;9cc6
	jp 04af0h		;9cc8
sub_9ccbh:
	ld a,(0ca19h)		;9ccb
	rrca			;9cce
	and 07fh		;9ccf
	ld l,a			;9cd1
	ld h,000h		;9cd2
	ld de,09d15h		;9cd4
	add hl,de		;9cd7
	ld a,(hl)		;9cd8
	ld hl,0ca26h		;9cd9
	ld (hl),a		;9cdc
	ret			;9cdd
sub_9cdeh:
	ld l,b			;9cde
	ld h,000h		;9cdf
	ld de,l9d0dh		;9ce1
	add hl,de		;9ce4
	ld a,(hl)		;9ce5
	ld c,a			;9ce6
	push bc			;9ce7
	call 07362h		;9ce8
	pop bc			;9ceb
	ret nz			;9cec
	srl c			;9ced
	ld b,067h		;9cef
	call 07371h		;9cf1
	ld de,00010h		;9cf4
	add hl,de		;9cf7
	ld (hl),035h		;9cf8
	ld a,l			;9cfa
	and 0e0h		;9cfb
	ld l,a			;9cfd
	ld de,00007h		;9cfe
	add hl,de		;9d01
	ld a,(0ca12h)		;9d02
	ld (hl),a		;9d05
	ld a,(0ca14h)		;9d06
	inc l			;9d09
	inc l			;9d0a
	ld (hl),a		;9d0b
	ret			;9d0c
l9d0dh:
	nop			;9d0d
	ld (bc),a		;9d0e
	inc b			;9d0f
	ld b,008h		;9d10
	ld a,(bc)		;9d12
	inc c			;9d13
	ld c,010h		;9d14
	ld (de),a		;9d16
	ld d,018h		;9d17
	inc e			;9d19
	ld e,020h		;9d1a
	ld (0d5c9h),hl		;9d1c
	push bc			;9d1f
	ld a,070h		;9d20
	call 0684ch		;9d22
	jr c,l9d4dh		;9d25
	ld (iy+017h),006h	;9d27
	pop bc			;9d2b
	call 06929h		;9d2c
	pop de			;9d2f
	ld l,d			;9d30
	ld h,000h		;9d31
	add hl,hl		;9d33
	ld bc,l9d50h		;9d34
	add hl,bc		;9d37
	ld a,(hl)		;9d38
	ld (iy+012h),a		;9d39
	inc hl			;9d3c
	ld a,(hl)		;9d3d
l9d3eh:
	ld (iy+011h),a		;9d3e
	ld d,000h		;9d41
	ld hl,l9d58h		;9d43
	add hl,de		;9d46
	ld a,(hl)		;9d47
	ld (iy+00fh),a		;9d48
	or a			;9d4b
	ret			;9d4c
l9d4dh:
	pop hl			;9d4d
	pop hl			;9d4e
	ret			;9d4f
l9d50h:
	djnz l9d62h		;9d50
	ld (de),a		;9d52
	ld de,01214h		;9d53
	inc d			;9d56
	inc de			;9d57
l9d58h:
	ld b,b			;9d58
	add a,b			;9d59
	ret nz			;9d5a
	nop			;9d5b
	ld h,b			;9d5c
	and b			;9d5d
	ret po			;9d5e
	jr nz,l9d3eh		;9d5f
	ld a,(hl)		;9d61
l9d62h:
	ld bc,0283dh		;9d62
	dec d			;9d65
	dec a			;9d66
	jr z,l9d86h		;9d67
	ld a,(ix+012h)		;9d69
	ld (0ca26h),a		;9d6c
	ld a,(ix+00fh)		;9d6f
	call sub_9de8h		;9d72
	call 06b6fh		;9d75
	jp 06c1dh		;9d78
	call 06ad2h		;9d7b
	ret nz			;9d7e
	ld (ix+018h),060h	;9d7f
	jp 06c1dh		;9d83
l9d86h:
	call 06adfh		;9d86
	ret z			;9d89
	ld a,(0ca02h)		;9d8a
	and 003h		;9d8d
	ret nz			;9d8f
	ld a,(ix+012h)		;9d90
	ld iy,0ca40h		;9d93
	call 06b85h		;9d97
	call sub_9da1h		;9d9a
	call 06b6fh		;9d9d
	ret			;9da0
sub_9da1h:
	call sub_9da9h		;9da1
	call sub_9dd2h		;9da4
	jr sub_9de8h		;9da7
sub_9da9h:
	ld d,a			;9da9
	ld a,(0ca23h)		;9daa
	ld b,a			;9dad
	ld a,(0ca24h)		;9dae
	and a			;9db1
	rlca			;9db2
	add a,b			;9db3
	or a			;9db4
	jp po,l9dbeh		;9db5
	ex af,af'		;9db8
	ld a,03fh		;9db9
	sub d			;9dbb
	ld d,a			;9dbc
	ex af,af'		;9dbd
l9dbeh:
	ld b,0c0h		;9dbe
	jr z,l9dceh		;9dc0
	dec a			;9dc2
	ld b,000h		;9dc3
	jr z,l9dceh		;9dc5
	dec a			;9dc7
	ld b,080h		;9dc8
	jr z,l9dceh		;9dca
	ld b,040h		;9dcc
l9dceh:
	ld a,d			;9dce
	add a,b			;9dcf
	ld b,a			;9dd0
	ret			;9dd1
sub_9dd2h:
	ld d,(ix+011h)		;9dd2
	ld c,(ix+00fh)		;9dd5
	ld a,c			;9dd8
	neg			;9dd9
	add a,b			;9ddb
	cp 07fh			;9ddc
	ld a,d			;9dde
	jr c,l9de3h		;9ddf
	neg			;9de1
l9de3h:
	add a,c			;9de3
	ld (ix+00fh),a		;9de4
	ret			;9de7
sub_9de8h:
	ld d,a			;9de8
	ld bc,00001h		;9de9
	sub 040h		;9dec
	jr c,l9e04h		;9dee
	ld d,a			;9df0
	inc b			;9df1
	sub 040h		;9df2
	jr c,l9dfeh		;9df4
	ld d,a			;9df6
	dec c			;9df7
	sub 040h		;9df8
	jr c,l9e04h		;9dfa
	ld d,a			;9dfc
	dec b			;9dfd
l9dfeh:
	ld a,d			;9dfe
	neg			;9dff
	add a,03fh		;9e01
	ld d,a			;9e03
l9e04h:
	ld a,d			;9e04
	ld (0ca20h),a		;9e05
	ld hl,0ca23h		;9e08
	ld (hl),c		;9e0b
	inc hl			;9e0c
	ld (hl),b		;9e0d
	ret			;9e0e
	ld a,074h		;9e0f
	call 0684ch		;9e11
	ret c			;9e14
	call 04678h		;9e15
	ld b,a			;9e18
	and 003h		;9e19
	ld l,a			;9e1b
	ld h,000h		;9e1c
	ld de,l9e67h		;9e1e
	add hl,de		;9e21
	ld l,(hl)		;9e22
	ld h,0ffh		;9e23
	add hl,hl		;9e25
	ld (iy+00dh),l		;9e26
	ld (iy+00eh),h		;9e29
	ld a,(ix+008h)		;9e2c
	add a,002h		;9e2f
	cp 006h			;9e31
	ld de,l9e6bh		;9e33
	jr nc,l9e3bh		;9e36
	ld de,09e6fh		;9e38
l9e3bh:
	ld a,b			;9e3b
	rlca			;9e3c
	and 003h		;9e3d
	ld l,a			;9e3f
	ld h,000h		;9e40
	add hl,de		;9e42
	ld a,(hl)		;9e43
l9e44h:
	ld (iy+008h),a		;9e44
	ld (iy+00ah),01fh	;9e47
	ld a,b			;9e4b
	rrca			;9e4c
	and 007h		;9e4d
	ld l,a			;9e4f
	ld h,000h		;9e50
	ld de,09e73h		;9e52
	add hl,de		;9e55
	ld l,(hl)		;9e56
	ld h,000h		;9e57
	ld a,b			;9e59
	rrca			;9e5a
	jr c,l9e60h		;9e5b
	call 04612h		;9e5d
l9e60h:
	ld (iy+00bh),l		;9e60
	ld (iy+00ch),h		;9e63
	ret			;9e66
l9e67h:
	ret nz			;9e67
	add a,b			;9e68
	ld b,b			;9e69
	nop			;9e6a
l9e6bh:
	nop			;9e6b
	ld (bc),a		;9e6c
	inc b			;9e6d
	ld b,010h		;9e6e
	ld (de),a		;9e70
	inc d			;9e71
	ld d,000h		;9e72
	djnz $+26		;9e74
	ld a,(de)		;9e76
	jr nz,$+38		;9e77
	jr z,l9e44h		;9e79
	ret			;9e7b
	ld a,(ix+001h)		;9e7c
	dec a			;9e7f
	jr z,l9e8ch		;9e80
	jp p,l9ea4h		;9e82
	ld (ix+017h),020h	;9e85
	inc (ix+001h)		;9e89
l9e8ch:
	dec (ix+017h)		;9e8c
	ret nz			;9e8f
	ld (ix+017h),00ah	;9e90
	ld a,(ix+00fh)		;9e94
	ld (ix+018h),a		;9e97
	ld (ix+015h),004h	;9e9a
	inc (ix+001h)		;9e9e
	call 06be6h		;9ea1
l9ea4h:
	ld a,(ix+00fh)		;9ea4
	or a			;9ea7
	call nz,sub_9efbh	;9ea8
	ld a,(ix+017h)		;9eab
	jr z,l9eb5h		;9eae
	dec a			;9eb0
	ld (ix+017h),a		;9eb1
	ret			;9eb4
l9eb5h:
	call sub_9ec0h		;9eb5
	ld a,(ix+018h)		;9eb8
	or a			;9ebb
	ret nz			;9ebc
	jp 06each		;9ebd
sub_9ec0h:
	ld b,002h		;9ec0
l9ec2h:
	push bc			;9ec2
	call sub_9ecah		;9ec3
	pop bc			;9ec6
	djnz l9ec2h		;9ec7
	ret			;9ec9
sub_9ecah:
	ld a,(ix+018h)		;9eca
	or a			;9ecd
	ret z			;9ece
	dec a			;9ecf
	ld (ix+018h),a		;9ed0
	ld a,01dh		;9ed3
	call 04af5h		;9ed5
	ld a,(ix+008h)		;9ed8
	sub (ix+010h)		;9edb
	ld (ix+008h),a		;9ede
	ld a,(ix+00ah)		;9ee1
	sub (ix+012h)		;9ee4
	ld (ix+00ah),a		;9ee7
	xor a			;9eea
	ld h,a			;9eeb
	ld l,a			;9eec
	ld d,a			;9eed
	ld e,a			;9eee
	call 076d0h		;9eef
	call 076f1h		;9ef2
	jr nc,l9efah		;9ef5
	ld a,0a7h		;9ef7
	ld (de),a		;9ef9
l9efah:
	ret			;9efa
sub_9efbh:
	ld b,002h		;9efb
l9efdh:
	push bc			;9efd
	call sub_9f05h		;9efe
	pop bc			;9f01
	djnz l9efdh		;9f02
	ret			;9f04
sub_9f05h:
	ld a,(ix+00fh)		;9f05
	or a			;9f08
	ret z			;9f09
	dec a			;9f0a
	ld (ix+00fh),a		;9f0b
	xor a			;9f0e
	ld h,a			;9f0f
	ld l,a			;9f10
	ld d,a			;9f11
	ld e,a			;9f12
	call 076d0h		;9f13
	call 076f1h		;9f16
	jr nc,l9f1fh		;9f19
	ld a,(ix+011h)		;9f1b
	ld (de),a		;9f1e
l9f1fh:
	ld a,(ix+010h)		;9f1f
	add a,(ix+008h)		;9f22
	ld (ix+008h),a		;9f25
	ld a,(ix+012h)		;9f28
	add a,(ix+00ah)		;9f2b
	ld (ix+00ah),a		;9f2e
	ret			;9f31
sub_9f32h:
	ld a,06eh		;9f32
	call 0684ch		;9f34
	ret c			;9f37
	ld bc,00202h		;9f38
	ld a,(ix+006h)		;9f3b
	inc a			;9f3e
	and 003h		;9f3f
	ld (iy+020h),a		;9f41
	jp 06929h		;9f44
	ld a,(ix+001h)		;9f47
	dec a			;9f4a
	jr z,l9f57h		;9f4b
	call sub_9f69h		;9f4d
	ld (ix+017h),008h	;9f50
	jp 06c1dh		;9f54
l9f57h:
	call 06ad2h		;9f57
	ret nz			;9f5a
	ld a,(ix+005h)		;9f5b
	cp 002h			;9f5e
	ret z			;9f60
	inc (ix+005h)		;9f61
	ld a,008h		;9f64
	jp 06adbh		;9f66
sub_9f69h:
	ld l,(ix+020h)		;9f69
	ld h,000h		;9f6c
	add hl,hl		;9f6e
	add hl,hl		;9f6f
	ld de,l9f80h		;9f70
	add hl,de		;9f73
	ld e,(hl)		;9f74
	inc hl			;9f75
	ld d,(hl)		;9f76
	inc hl			;9f77
	ld a,(hl)		;9f78
	inc hl			;9f79
	ld h,(hl)		;9f7a
	ld l,a			;9f7b
	ex de,hl		;9f7c
	jp 06bebh		;9f7d
l9f80h:
	nop			;9f80
	nop			;9f81
	add a,b			;9f82
	nop			;9f83
	add a,b			;9f84
	rst 38h			;9f85
	nop			;9f86
	nop			;9f87
	nop			;9f88
	nop			;9f89
	add a,b			;9f8a
	rst 38h			;9f8b
	add a,b			;9f8c
	nop			;9f8d
	nop			;9f8e
	nop			;9f8f
sub_9f90h:
	push de			;9f90
	push bc			;9f91
	ld a,06fh		;9f92
	call 0684ch		;9f94
	pop bc			;9f97
	pop de			;9f98
	ret c			;9f99
	ld (iy+020h),d		;9f9a
	ld a,(ix+008h)		;9f9d
	add a,c			;9fa0
	ld (iy+008h),a		;9fa1
	ld a,(ix+00ah)		;9fa4
	add a,b			;9fa7
	ld (iy+00ah),a		;9fa8
	ld (iy+017h),004h	;9fab
	ret			;9faf
	ld b,004h		;9fb0
	call 06ab8h		;9fb2
	ld a,(ix+001h)		;9fb5
	dec a			;9fb8
	jr z,l9fd0h		;9fb9
	dec a			;9fbb
	jr z,l9fdah		;9fbc
	ld a,(ix+020h)		;9fbe
	ld hl,00080h		;9fc1
	or a			;9fc4
	jr nz,l9fcah		;9fc5
	ld hl,0ff80h		;9fc7
l9fcah:
	call 06bf3h		;9fca
	jp 06c1dh		;9fcd
l9fd0h:
	call 06ad2h		;9fd0
	ret nz			;9fd3
	call sub_9fe9h		;9fd4
	jp 06c1dh		;9fd7
l9fdah:
	ld l,(ix+00fh)		;9fda
	ld h,(ix+010h)		;9fdd
	ld e,(ix+011h)		;9fe0
	ld d,(ix+012h)		;9fe3
	jp 06d4fh		;9fe6
sub_9fe9h:
	ld iy,0ca40h		;9fe9
	ld a,020h		;9fed
	call 06b7fh		;9fef
	ld (ix+00fh),l		;9ff2
	ld (ix+010h),h		;9ff5
	ld (ix+011h),e		;9ff8
	ld (ix+012h),d		;9ffb
	ret			;9ffe
	ret			;9fff

; z80dasm 1.2.0
; command line: z80dasm -a -l -g 0x8000 -o /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/disasm/bank28_8000.asm /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/banks/bank28.bin

	org 08000h

	jp 06009h		;8000
	jp 06929h		;8003
	jp 06ad6h		;8006
	ld hl,0ffffh		;8009
	ld (0c85fh),hl		;800c
	ld hl,0c861h		;800f
	ld de,0c862h		;8012
	ld (hl),001h		;8015
	ld bc,0000eh		;8017
	ldir			;801a
	call 06287h		;801c
	ld a,0bfh		;801f
	jp 06106h		;8021
	call 0602bh		;8024
	call 06123h		;8027
	ret			;802a
	call 0603bh		;802b
	call 06053h		;802e
	call 06088h		;8031
	call 060b5h		;8034
	call 060e3h		;8037
	ret			;803a
	ld hl,0c60dh		;803b
	ld a,(hl)		;803e
	and 001h		;803f
	jr z,l8052h		;8041
	ld hl,0c68dh		;8043
	ld a,(hl)		;8046
	and 001h		;8047
	jr z,l8052h		;8049
	ld hl,0c60dh		;804b
	res 1,(hl)		;804e
	res 0,(hl)		;8050
l8052h:
	ret			;8052
	ld b,000h		;8053
	ld c,008h		;8055
	ld hl,0c60ah		;8057
	call 0606ah		;805a
	ld hl,0c64ah		;805d
	call 0606ah		;8060
	ld hl,0c68ah		;8063
	call 0606ah		;8066
	ret			;8069
	ld e,(hl)		;806a
	ld a,b			;806b
	call 0643ah		;806c
	inc hl			;806f
	inc b			;8070
	ld e,(hl)		;8071
	ld a,b			;8072
	call 0643ah		;8073
	inc hl			;8076
	ld e,(hl)		;8077
	ld a,c			;8078
	inc b			;8079
	inc c			;807a
	inc hl			;807b
	bit 3,(hl)		;807c
	ret nz			;807e
	call 0643ah		;807f
	bit 2,(hl)		;8082
	ret z			;8084
	set 3,(hl)		;8085
	ret			;8087
	ld hl,0c85bh		;8088
	bit 0,(hl)		;808b
	jr z,l809bh		;808d
	res 0,(hl)		;808f
	set 1,(hl)		;8091
	ld a,(0c859h)		;8093
	ld e,a			;8096
	ld a,006h		;8097
	jr l80b1h		;8099
l809bh:
	ld a,(0c680h)		;809b
	cp 01ah			;809e
	ret z			;80a0
	bit 1,(hl)		;80a1
	ret nz			;80a3
	bit 2,(hl)		;80a4
	ret z			;80a6
	res 2,(hl)		;80a7
	set 3,(hl)		;80a9
	ld a,(0c85ah)		;80ab
	ld e,a			;80ae
	ld a,006h		;80af
l80b1h:
	call 0643ah		;80b1
	ret			;80b4
	ld hl,0c85bh		;80b5
	bit 7,(hl)		;80b8
	ret z			;80ba
	res 7,(hl)		;80bb
	ld a,(0c85dh)		;80bd
	ld e,a			;80c0
	ld a,00bh		;80c1
	call 0643ah		;80c3
	bit 6,(hl)		;80c6
	ret z			;80c8
	res 6,(hl)		;80c9
	ld a,(0c85eh)		;80cb
	ld e,a			;80ce
	ld a,00ch		;80cf
	call 0643ah		;80d1
	bit 5,(hl)		;80d4
	ret z			;80d6
	res 5,(hl)		;80d7
	ld a,(0c85ch)		;80d9
	ld e,a			;80dc
	ld a,00dh		;80dd
	call 0643ah		;80df
	ret			;80e2
	ld hl,0c60dh		;80e3
	ld a,(hl)		;80e6
	ld hl,06117h		;80e7
l80eah:
	call 06110h		;80ea
	ld b,(hl)		;80ed
	ld hl,0c64dh		;80ee
	ld a,(hl)		;80f1
	ld hl,0611bh		;80f2
	call 06110h		;80f5
	ld c,(hl)		;80f8
	ld hl,0c68dh		;80f9
	ld a,(hl)		;80fc
	ld hl,0611fh		;80fd
	call 06110h		;8100
	ld a,(hl)		;8103
	or b			;8104
	or c			;8105
	ld e,a			;8106
	ld (0c880h),a		;8107
	ld a,007h		;810a
	call 0643ah		;810c
	ret			;810f
	and 003h		;8110
	ld e,a			;8112
	ld d,000h		;8113
	add hl,de		;8115
	ret			;8116
	adc a,c			;8117
	add a,c			;8118
	adc a,b			;8119
	add a,b			;811a
	sub d			;811b
	add a,d			;811c
	sub b			;811d
	add a,b			;811e
	and h			;811f
	add a,h			;8120
	and b			;8121
	add a,b			;8122
	call 06130h		;8123
	call 06235h		;8126
	call 06287h		;8129
	call 06348h		;812c
	ret			;812f
	ld ix,0c85fh		;8130
	ld bc,0c86bh		;8134
	ld de,0c861h		;8137
	ld hl,0c6cah		;813a
	ld a,(de)		;813d
	res 0,(ix+000h)		;813e
	cp (hl)			;8142
	jr z,l814bh		;8143
	set 0,(ix+000h)		;8145
	ld a,(hl)		;8149
	ld (de),a		;814a
l814bh:
	inc de			;814b
	inc hl			;814c
	ld a,(de)		;814d
	res 1,(ix+000h)		;814e
	cp (hl)			;8152
	jr z,l815bh		;8153
	set 1,(ix+000h)		;8155
	ld a,(hl)		;8159
	ld (de),a		;815a
l815bh:
	inc de			;815b
	inc hl			;815c
	res 2,(ix+001h)		;815d
	ld a,(bc)		;8161
	cp (hl)			;8162
	jr z,l816bh		;8163
	set 2,(ix+001h)		;8165
	ld a,(hl)		;8169
	ld (bc),a		;816a
l816bh:
	inc bc			;816b
	ld hl,0c70ah		;816c
	ld a,(de)		;816f
	res 2,(ix+000h)		;8170
	cp (hl)			;8174
	jr z,l817dh		;8175
	set 2,(ix+000h)		;8177
	ld a,(hl)		;817b
	ld (de),a		;817c
l817dh:
	inc de			;817d
	inc hl			;817e
	ld a,(de)		;817f
	res 3,(ix+000h)		;8180
	cp (hl)			;8184
	jr z,l818dh		;8185
	set 3,(ix+000h)		;8187
	ld a,(hl)		;818b
	ld (de),a		;818c
l818dh:
	inc de			;818d
	inc hl			;818e
	res 3,(ix+001h)		;818f
	ld a,(bc)		;8193
	cp (hl)			;8194
	jr z,l819dh		;8195
	set 3,(ix+001h)		;8197
	ld a,(hl)		;819b
	ld (bc),a		;819c
l819dh:
	inc bc			;819d
	ld hl,0c74ah		;819e
	ld a,(de)		;81a1
	res 4,(ix+000h)		;81a2
	cp (hl)			;81a6
	jr z,l81afh		;81a7
	set 4,(ix+000h)		;81a9
	ld a,(hl)		;81ad
	ld (de),a		;81ae
l81afh:
	inc de			;81af
	inc hl			;81b0
	ld a,(de)		;81b1
	res 5,(ix+000h)		;81b2
	cp (hl)			;81b6
	jr z,l81bfh		;81b7
	set 5,(ix+000h)		;81b9
	ld a,(hl)		;81bd
	ld (de),a		;81be
l81bfh:
	inc de			;81bf
l81c0h:
	inc hl			;81c0
	res 4,(ix+001h)		;81c1
	ld a,(bc)		;81c5
	cp (hl)			;81c6
	jr z,l81cfh		;81c7
	set 4,(ix+001h)		;81c9
	ld a,(hl)		;81cd
	ld (bc),a		;81ce
l81cfh:
	inc bc			;81cf
	ld hl,0c78ah		;81d0
	ld a,(de)		;81d3
	res 6,(ix+000h)		;81d4
	cp (hl)			;81d8
	jr z,l81e1h		;81d9
	set 6,(ix+000h)		;81db
	ld a,(hl)		;81df
	ld (de),a		;81e0
l81e1h:
	inc de			;81e1
	inc hl			;81e2
	ld a,(de)		;81e3
	res 7,(ix+000h)		;81e4
	cp (hl)			;81e8
	jr z,l81f1h		;81e9
	set 7,(ix+000h)		;81eb
	ld a,(hl)		;81ef
	ld (de),a		;81f0
l81f1h:
	inc de			;81f1
	inc hl			;81f2
	res 5,(ix+001h)		;81f3
	ld a,(bc)		;81f7
	cp (hl)			;81f8
	jr z,l8201h		;81f9
	set 5,(ix+001h)		;81fb
	ld a,(hl)		;81ff
	ld (bc),a		;8200
l8201h:
	inc bc			;8201
	ld hl,0c7cah		;8202
	ld a,(de)		;8205
	res 0,(ix+001h)		;8206
	cp (hl)			;820a
	jr z,l8213h		;820b
	set 0,(ix+001h)		;820d
	ld a,(hl)		;8211
	ld (de),a		;8212
l8213h:
	inc de			;8213
	inc hl			;8214
	ld a,(de)		;8215
	res 1,(ix+001h)		;8216
	cp (hl)			;821a
	jr z,l8223h		;821b
	set 1,(ix+001h)		;821d
	ld a,(hl)		;8221
	ld (de),a		;8222
l8223h:
	inc de			;8223
	inc hl			;8224
	res 6,(ix+001h)		;8225
	ld a,(bc)		;8229
	cp (hl)			;822a
	jr z,l8233h		;822b
	set 6,(ix+001h)		;822d
	ld a,(hl)		;8231
	ld (bc),a		;8232
l8233h:
	inc bc			;8233
	ret			;8234
	ld e,000h		;8235
	ld hl,0c6cdh		;8237
	ld c,001h		;823a
	ld a,(hl)		;823c
	or a			;823d
	jr z,l8241h		;823e
	ld a,c			;8240
l8241h:
	or e			;8241
	ld e,a			;8242
	ld hl,0c70dh		;8243
	sla c			;8246
	ld a,(hl)		;8248
	or a			;8249
	jr z,l824dh		;824a
	ld a,c			;824c
l824dh:
	or e			;824d
	ld e,a			;824e
	ld hl,0c74dh		;824f
	sla c			;8252
	ld a,(hl)		;8254
	or a			;8255
	jr z,l8259h		;8256
	ld a,c			;8258
l8259h:
	or e			;8259
	ld e,a			;825a
	ld hl,0c78dh		;825b
	sla c			;825e
	ld a,(hl)		;8260
	or a			;8261
	jr z,l8265h		;8262
	ld a,c			;8264
l8265h:
	or e			;8265
	ld e,a			;8266
	ld hl,0c7cdh		;8267
	sla c			;826a
	ld a,(hl)		;826c
	or a			;826d
	jr z,l8271h		;826e
	ld a,c			;8270
l8271h:
	or e			;8271
	ld e,a			;8272
	ld hl,0c870h		;8273
	ld a,(hl)		;8276
	cp e			;8277
	jr z,l8281h		;8278
	ld (hl),e		;827a
	ld hl,0c860h		;827b
	set 7,(hl)		;827e
	ret			;8280
l8281h:
	ld hl,0c860h		;8281
	res 7,(hl)		;8284
	ret			;8286
	ld ix,0c85fh		;8287
	ld hl,0c861h		;828b
	ld de,l9880h		;828e
	bit 0,(ix+000h)		;8291
	jr z,l829ah		;8295
	call 0633fh		;8297
l829ah:
	inc hl			;829a
	inc de			;829b
	bit 1,(ix+000h)		;829c
	jr z,l82a5h		;82a0
	call 0633fh		;82a2
l82a5h:
	inc hl			;82a5
	inc de			;82a6
	bit 2,(ix+000h)		;82a7
	jr z,l82b0h		;82ab
	call 0633fh		;82ad
l82b0h:
	inc hl			;82b0
	inc de			;82b1
	bit 3,(ix+000h)		;82b2
	jr z,l82bbh		;82b6
	call 0633fh		;82b8
l82bbh:
	inc hl			;82bb
	inc de			;82bc
	bit 4,(ix+000h)		;82bd
	jr z,l82c6h		;82c1
	call 0633fh		;82c3
l82c6h:
	inc hl			;82c6
	inc de			;82c7
	bit 5,(ix+000h)		;82c8
	jr z,l82d1h		;82cc
	call 0633fh		;82ce
l82d1h:
	inc hl			;82d1
	inc de			;82d2
	bit 6,(ix+000h)		;82d3
	jr z,l82dch		;82d7
	call 0633fh		;82d9
l82dch:
	inc hl			;82dc
	inc de			;82dd
	bit 7,(ix+000h)		;82de
	jr z,l82e7h		;82e2
	call 0633fh		;82e4
l82e7h:
	inc hl			;82e7
	inc de			;82e8
	bit 0,(ix+001h)		;82e9
	jr z,l82f2h		;82ed
	call 0633fh		;82ef
l82f2h:
	inc hl			;82f2
	inc de			;82f3
	bit 1,(ix+001h)		;82f4
	jr z,l82fdh		;82f8
	call 0633fh		;82fa
l82fdh:
	inc hl			;82fd
	inc de			;82fe
	bit 2,(ix+001h)		;82ff
	jr z,l8308h		;8303
	call 0633fh		;8305
l8308h:
	inc hl			;8308
	inc de			;8309
	bit 3,(ix+001h)		;830a
	jr z,l8313h		;830e
	call 0633fh		;8310
l8313h:
	inc hl			;8313
	inc de			;8314
	bit 4,(ix+001h)		;8315
	jr z,l831eh		;8319
	call 0633fh		;831b
l831eh:
	inc hl			;831e
	inc de			;831f
	bit 5,(ix+001h)		;8320
	jr z,l8329h		;8324
	call 0633fh		;8326
l8329h:
	inc hl			;8329
	inc de			;832a
	bit 6,(ix+001h)		;832b
	jr z,l8334h		;832f
	call 0633fh		;8331
l8334h:
	inc hl			;8334
	inc de			;8335
	bit 7,(ix+001h)		;8336
	ret z			;833a
	call 0633fh		;833b
	ret			;833e
	call 0642eh		;833f
	ld a,(hl)		;8342
	ld (de),a		;8343
	call 06434h		;8344
	ret			;8347
	ld ix,0c6c0h		;8348
	bit 7,(ix+00fh)		;834c
	jr z,l8377h		;8350
	res 7,(ix+00fh)		;8352
	ld e,(ix+027h)		;8356
	ld d,(ix+028h)		;8359
	bit 6,(ix+00dh)		;835c
	jr z,l8370h		;8360
	set 7,(ix+00fh)		;8362
	ex de,hl		;8366
	ld de,l9800h		;8367
	call 06418h		;836a
	jp 06377h		;836d
l8370h:
	ex de,hl		;8370
	ld de,l9800h		;8371
	call 063fdh		;8374
l8377h:
	ld ix,0c700h		;8377
	bit 7,(ix+00fh)		;837b
	jr z,l83a6h		;837f
	res 7,(ix+00fh)		;8381
	ld e,(ix+027h)		;8385
	ld d,(ix+028h)		;8388
	bit 6,(ix+00dh)		;838b
	jr z,l839fh		;838f
	set 7,(ix+00fh)		;8391
	ex de,hl		;8395
	ld de,l9820h		;8396
	call 06418h		;8399
	jp 063a6h		;839c
l839fh:
	ex de,hl		;839f
	ld de,l9820h		;83a0
	call 063fdh		;83a3
l83a6h:
	ld ix,0c740h		;83a6
	bit 7,(ix+00fh)		;83aa
	jr z,l83d5h		;83ae
	res 7,(ix+00fh)		;83b0
	ld e,(ix+027h)		;83b4
	ld d,(ix+028h)		;83b7
	bit 6,(ix+00dh)		;83ba
	jr z,l83ceh		;83be
	set 7,(ix+00fh)		;83c0
	ex de,hl		;83c4
	ld de,l9840h		;83c5
	call 06418h		;83c8
	jp 063d5h		;83cb
l83ceh:
	ex de,hl		;83ce
	ld de,l9840h		;83cf
	call 063fdh		;83d2
l83d5h:
	ld ix,0c780h		;83d5
	bit 7,(ix+00fh)		;83d9
	ret z			;83dd
	res 7,(ix+00fh)		;83de
	ld e,(ix+027h)		;83e2
	ld d,(ix+028h)		;83e5
	bit 6,(ix+00dh)		;83e8
	jr z,l83f9h		;83ec
	set 7,(ix+00fh)		;83ee
	ex de,hl		;83f2
	ld de,l9860h		;83f3
	jp 06418h		;83f6
l83f9h:
	ex de,hl		;83f9
	ld de,l9860h		;83fa
	call 0642eh		;83fd
	xor a			;8400
	ld (0988fh),a		;8401
	ld b,020h		;8404
l8406h:
	ld a,(hl)		;8406
	ld (de),a		;8407
	inc hl			;8408
	inc de			;8409
	djnz l8406h		;840a
	ld hl,0988fh		;840c
	ld de,0c870h		;840f
	ld a,(de)		;8412
	ld (hl),a		;8413
	call 06434h		;8414
	ret			;8417
	call 0642eh		;8418
	ld b,020h		;841b
l841dh:
	ld a,(hl)		;841d
	ld (de),a		;841e
	ld a,l			;841f
	add a,(ix+031h)		;8420
	ld l,a			;8423
	jr nc,l8427h		;8424
	inc h			;8426
l8427h:
	inc de			;8427
	djnz l841dh		;8428
	call 06434h		;842a
	ret			;842d
	ld a,03fh		;842e
	call 04c15h		;8430
	ret			;8433
	ld a,01dh		;8434
	call 04c15h		;8436
	ret			;8439
	out (0a0h),a		;843a
	ex af,af'		;843c
	ld a,e			;843d
	out (0a1h),a		;843e
	ex af,af'		;8440
	ret			;8441
	ld (02265h),hl		;8442
	ld h,l			;8445
	ld (04265h),hl		;8446
	ld h,l			;8449
	ld h,d			;844a
	ld h,l			;844b
	ld h,d			;844c
	ld h,l			;844d
	add a,d			;844e
	ld h,l			;844f
	add a,d			;8450
	ld h,l			;8451
	add a,d			;8452
	ld h,l			;8453
	add a,d			;8454
	ld h,l			;8455
	and d			;8456
	ld h,l			;8457
	jp nz,0e265h		;8458
	ld h,l			;845b
	ld (bc),a		;845c
	ld h,(hl)		;845d
	ld (04266h),hl		;845e
	ld h,(hl)		;8461
	ld b,d			;8462
	ld h,(hl)		;8463
	ld b,d			;8464
	ld h,(hl)		;8465
	ld b,d			;8466
	ld h,(hl)		;8467
	ld (04265h),hl		;8468
	ld h,(hl)		;846b
	ld h,d			;846c
	ld h,(hl)		;846d
	add a,d			;846e
	ld h,(hl)		;846f
	add a,d			;8470
	ld h,(hl)		;8471
	and d			;8472
	ld h,(hl)		;8473
	jp nz,0e266h		;8474
	ld h,(hl)		;8477
	jp po,0e266h		;8478
	ld h,(hl)		;847b
	ld (bc),a		;847c
	ld h,a			;847d
	ld (02267h),hl		;847e
	ld h,a			;8481
	ld (02267h),hl		;8482
	ld h,a			;8485
	ld (02267h),hl		;8486
	ld h,a			;8489
	ld a,(03a67h)		;848a
	ld h,a			;848d
	ld e,d			;848e
	ld h,a			;848f
	ld a,d			;8490
	ld h,a			;8491
	sbc a,d			;8492
sub_8493h:
	ld h,a			;8493
	cp d			;8494
	ld h,a			;8495
	jp c,0da67h		;8496
	ld h,a			;8499
	jp m,0fa67h		;849a
	ld h,a			;849d
	jp m,0fa67h		;849e
	ld h,a			;84a1
	jp m,0fa67h		;84a2
	ld h,a			;84a5
	jp m,0fa67h		;84a6
	ld h,a			;84a9
	jp m,0fa67h		;84aa
	ld h,a			;84ad
	jp m,0fa67h		;84ae
	ld h,a			;84b1
	jp m,0fa67h		;84b2
	ld h,a			;84b5
	jp m,0fa67h		;84b6
	ld h,a			;84b9
	jp m,0fa67h		;84ba
	ld h,a			;84bd
	jp m,0fa67h		;84be
	ld h,a			;84c1
	ld a,(de)		;84c2
	ld l,b			;84c3
	ld a,(de)		;84c4
	ld l,b			;84c5
	ld a,(de)		;84c6
	ld l,b			;84c7
	ld a,(de)		;84c8
	ld l,b			;84c9
	ld a,(de)		;84ca
	ld l,b			;84cb
	ld a,(de)		;84cc
	ld l,b			;84cd
	ld a,(de)		;84ce
	ld l,b			;84cf
	ld a,(de)		;84d0
	ld l,b			;84d1
	ld a,(de)		;84d2
	ld l,b			;84d3
	ld a,(de)		;84d4
	ld l,b			;84d5
	ld a,(de)		;84d6
	ld l,b			;84d7
	ld a,(03a68h)		;84d8
	ld l,b			;84db
	ld a,(03a68h)		;84dc
	ld l,b			;84df
	ld a,(03a68h)		;84e0
	ld l,b			;84e3
	ld a,(03a68h)		;84e4
	ld l,b			;84e7
	ld e,d			;84e8
	ld l,b			;84e9
	ld e,d			;84ea
	ld l,b			;84eb
	ld a,d			;84ec
	ld l,b			;84ed
	ld a,d			;84ee
	ld l,b			;84ef
	ld a,d			;84f0
	ld l,b			;84f1
	ld a,d			;84f2
	ld l,b			;84f3
	ld a,d			;84f4
	ld l,b			;84f5
	ld a,d			;84f6
	ld l,b			;84f7
	sbc a,d			;84f8
	ld l,b			;84f9
	sbc a,d			;84fa
	ld l,b			;84fb
	sbc a,d			;84fc
	ld l,b			;84fd
	sbc a,d			;84fe
	ld l,b			;84ff
	sbc a,d			;8500
	ld l,b			;8501
	sbc a,d			;8502
	ld l,b			;8503
	cp d			;8504
	ld l,b			;8505
	cp d			;8506
	ld l,b			;8507
	cp d			;8508
	ld l,b			;8509
	cp d			;850a
	ld l,b			;850b
	jp c,0da68h		;850c
	ld l,b			;850f
	jp c,0da68h		;8510
	ld l,b			;8513
	jp c,0da68h		;8514
	ld l,b			;8517
	jp c,0da68h		;8518
	ld l,b			;851b
	jp c,0da68h		;851c
	ld l,b			;851f
	jp c,00068h		;8520
	ret m			;8523
	ret p			;8524
	ret pe			;8525
	ret po			;8526
	ret c			;8527
	ret nc			;8528
	ret z			;8529
	ret nz			;852a
	cp b			;852b
	or b			;852c
	xor b			;852d
	and b			;852e
	sbc a,b			;852f
	sub b			;8530
	adc a,b			;8531
	add a,b			;8532
	ld a,b			;8533
	ld (hl),b		;8534
	ld l,b			;8535
	ld h,b			;8536
	ld e,b			;8537
	ld d,b			;8538
	ld c,b			;8539
	ld b,b			;853a
	jr c,l856dh		;853b
	jr z,l855fh		;853d
	jr l8551h		;853f
	ex af,af'		;8541
	nop			;8542
	ret p			;8543
	ret po			;8544
	ret nc			;8545
	ret nz			;8546
	or b			;8547
	and b			;8548
	sub b			;8549
	add a,b			;854a
	ld (hl),b		;854b
	ld h,b			;854c
	ld d,b			;854d
	ld b,b			;854e
	jr nc,$+34		;854f
l8551h:
	djnz l8553h		;8551
l8553h:
	ret p			;8553
	ret po			;8554
	ret nc			;8555
	ret nz			;8556
	or b			;8557
	and b			;8558
	sub b			;8559
	add a,b			;855a
	ld (hl),b		;855b
	ld h,b			;855c
	ld d,b			;855d
	ld b,b			;855e
l855fh:
	jr nc,l8581h		;855f
	djnz l8563h		;8561
l8563h:
	add hl,de		;8563
	ld sp,05a47h		;8564
	ld l,d			;8567
	ld (hl),l		;8568
	ld a,l			;8569
	ld a,a			;856a
	ld a,l			;856b
	ld (hl),l		;856c
l856dh:
	ld l,d			;856d
	ld e,d			;856e
	ld b,a			;856f
	ld sp,00019h		;8570
	rst 20h			;8573
	rst 8			;8574
	cp c			;8575
	and (hl)		;8576
	sub (hl)		;8577
	adc a,e			;8578
	add a,e			;8579
	add a,b			;857a
	add a,e			;857b
	adc a,e			;857c
	sub (hl)		;857d
	and (hl)		;857e
	cp c			;857f
	rst 8			;8580
l8581h:
	rst 20h			;8581
	nop			;8582
	add hl,de		;8583
	ld sp,05a47h		;8584
	ld l,d			;8587
	ld (hl),l		;8588
	ld a,l			;8589
	ld a,a			;858a
	ld a,l			;858b
	ld (hl),l		;858c
	ld l,d			;858d
	ld e,d			;858e
	ld b,a			;858f
	ld sp,00019h		;8590
	ret po			;8593
	ret nz			;8594
	and b			;8595
	add a,b			;8596
	and b			;8597
	ret nz			;8598
	ret po			;8599
	nop			;859a
	jr nz,l85ddh		;859b
	ld h,b			;859d
	ld a,a			;859e
	ld h,b			;859f
	ld b,b			;85a0
	jr nz,l85a3h		;85a1
l85a3h:
	add hl,de		;85a3
	ld sp,05a47h		;85a4
	ld l,d			;85a7
	ld (hl),l		;85a8
	ld a,l			;85a9
	ld a,a			;85aa
	ld a,l			;85ab
	ld (hl),l		;85ac
	ld l,d			;85ad
	ld e,d			;85ae
	ld b,a			;85af
	ld sp,08019h		;85b0
	sub b			;85b3
	and b			;85b4
	or b			;85b5
	ret nz			;85b6
	ret nc			;85b7
	ret po			;85b8
	ret p			;85b9
	nop			;85ba
	djnz l85ddh		;85bb
	jr nc,l85ffh		;85bd
	ld d,b			;85bf
	ld h,b			;85c0
	ld (hl),b		;85c1
	nop			;85c2
	add hl,de		;85c3
	ld sp,05a47h		;85c4
	ld l,d			;85c7
	ld (hl),l		;85c8
	ld a,l			;85c9
	ld a,a			;85ca
	ld a,l			;85cb
	ld (hl),l		;85cc
	ld l,d			;85cd
	ld e,d			;85ce
	ld b,a			;85cf
	ld sp,08019h		;85d0
	and b			;85d3
	ret nz			;85d4
	ret po			;85d5
	nop			;85d6
	jr nz,$+66		;85d7
	ld h,b			;85d9
	add a,b			;85da
	and b			;85db
	ret nz			;85dc
l85ddh:
	ret po			;85dd
	nop			;85de
	jr nz,l8621h		;85df
	ld h,b			;85e1
	ld bc,0402ah		;85e2
	ld d,b			;85e5
	ld e,h			;85e6
	ld l,b			;85e7
	ld (hl),b		;85e8
	ld a,b			;85e9
	ld a,a			;85ea
	ld a,b			;85eb
	ld (hl),b		;85ec
	ld l,b			;85ed
	ld e,h			;85ee
	ld d,b			;85ef
	ld b,b			;85f0
	ld hl,(0d6ffh)		;85f1
	ret nz			;85f4
	or b			;85f5
	and h			;85f6
	sbc a,b			;85f7
	sub b			;85f8
	adc a,b			;85f9
	add a,c			;85fa
	adc a,b			;85fb
	sub b			;85fc
	sbc a,b			;85fd
	and h			;85fe
l85ffh:
	or b			;85ff
	ret nz			;8600
	sub 000h		;8601
	ld b,b			;8603
	ld a,a			;8604
	ld b,b			;8605
	ld bc,l81c0h		;8606
	ret nz			;8609
	ld bc,07f40h		;860a
	ld b,b			;860d
	ld bc,001c0h		;860e
	ld b,b			;8611
	ld bc,001e0h		;8612
	jr nz,l8618h		;8615
	ret p			;8617
l8618h:
	ld bc,00110h		;8618
	rst 38h			;861b
	rst 38h			;861c
	rst 38h			;861d
	rst 38h			;861e
	ld b,b			;861f
	ld b,b			;8620
l8621h:
	ld b,b			;8621
	ld a,b			;8622
	ld (hl),b		;8623
	ld l,b			;8624
	ld h,b			;8625
	ld e,b			;8626
	ld d,b			;8627
	ld c,b			;8628
	ld b,b			;8629
	jr c,l865ch		;862a
	jr z,l864eh		;862c
	jr l8640h		;862e
	ex af,af'		;8630
	nop			;8631
	ld a,b			;8632
	ld (hl),b		;8633
	ld l,b			;8634
	ld h,b			;8635
l8636h:
	ld e,b			;8636
	ld d,b			;8637
	ld c,b			;8638
	ld b,b			;8639
	jr c,l866ch		;863a
	jr z,l865eh		;863c
	jr l8650h		;863e
l8640h:
	ex af,af'		;8640
	nop			;8641
	nop			;8642
	jr nc,l8695h		;8643
	ld h,b			;8645
	ld (hl),b		;8646
	ld h,b			;8647
	ld d,b			;8648
	jr nc,l864bh		;8649
l864bh:
	ret nc			;864b
	or b			;864c
	and b			;864d
l864eh:
	sub b			;864e
	and b			;864f
l8650h:
	or b			;8650
	ret nc			;8651
	nop			;8652
	ld b,b			;8653
	ld h,b			;8654
	ld (hl),b		;8655
	ld h,b			;8656
	ld b,b			;8657
	nop			;8658
	ret nz			;8659
	and b			;865a
	sub b			;865b
l865ch:
	and b			;865c
	ret nz			;865d
l865eh:
	nop			;865e
l865fh:
	ld (hl),b		;865f
	nop			;8660
	sub b			;8661
	jr nc,l86b4h		;8662
	ld d,b			;8664
	jr nc,l8667h		;8665
l8667h:
	nop			;8667
	djnz l86aah		;8668
	ld h,b			;866a
	ld (hl),b		;866b
l866ch:
	ld h,b			;866c
	jr nc,l865fh		;866d
	ret po			;866f
	ret po			;8670
	nop			;8671
	jr nz,l8694h		;8672
	djnz l8636h		;8674
	and b			;8676
	sub b			;8677
	and b			;8678
	ret nz			;8679
	nop			;867a
	nop			;867b
	ret nc			;867c
	or b			;867d
	or b			;867e
	ret nc			;867f
	nop			;8680
	nop			;8681
	nop			;8682
	ld a,a			;8683
	nop			;8684
	add a,b			;8685
	and b			;8686
	ret nz			;8687
	ret c			;8688
	ret p			;8689
	ex af,af'		;868a
	jr nz,l86bdh		;868b
	ld b,b			;868d
	ld d,b			;868e
	ld h,b			;868f
	ld (hl),b		;8690
	ld a,b			;8691
	ld a,h			;8692
	ld a,a			;8693
l8694h:
	ld a,h			;8694
l8695h:
	ld a,b			;8695
	ld (hl),b		;8696
	ld h,b			;8697
	ld d,b			;8698
	ld b,b			;8699
	jr nc,l86bch		;869a
	ex af,af'		;869c
	ret p			;869d
	ret c			;869e
	ret nz			;869f
	and b			;86a0
	add a,b			;86a1
	ld a,a			;86a2
	add a,b			;86a3
	ld a,a			;86a4
	add a,b			;86a5
	ld a,a			;86a6
	add a,b			;86a7
	ld a,a			;86a8
	add a,b			;86a9
l86aah:
	ld a,a			;86aa
	add a,b			;86ab
	ld a,a			;86ac
	add a,b			;86ad
	ld a,a			;86ae
	add a,b			;86af
	ld a,a			;86b0
	add a,b			;86b1
	ld a,a			;86b2
	add a,b			;86b3
l86b4h:
	ld a,a			;86b4
	add a,b			;86b5
	ld a,a			;86b6
	add a,b			;86b7
	ld a,a			;86b8
	add a,b			;86b9
	ld a,a			;86ba
	add a,b			;86bb
l86bch:
	ld a,a			;86bc
l86bdh:
	add a,b			;86bd
	ld a,a			;86be
	add a,b			;86bf
	ld a,a			;86c0
	add a,b			;86c1
	ld a,a			;86c2
	add a,b			;86c3
	ld a,a			;86c4
	add a,b			;86c5
	ld a,a			;86c6
	add a,b			;86c7
	ld a,a			;86c8
	add a,b			;86c9
	nop			;86ca
	nop			;86cb
	nop			;86cc
	nop			;86cd
	nop			;86ce
	nop			;86cf
	nop			;86d0
	nop			;86d1
	nop			;86d2
	nop			;86d3
	nop			;86d4
	nop			;86d5
	nop			;86d6
	nop			;86d7
	nop			;86d8
	nop			;86d9
	ld a,a			;86da
	add a,b			;86db
l86dch:
	ld a,a			;86dc
	add a,b			;86dd
	ld a,a			;86de
	add a,b			;86df
	ld a,a			;86e0
	add a,b			;86e1
	add a,b			;86e2
	adc a,(hl)		;86e3
	and b			;86e4
	ret nz			;86e5
	ret po			;86e6
	nop			;86e7
	jr nz,$+65		;86e8
	ld a,03ch		;86ea
	ld a,(03137h)		;86ec
	add hl,hl		;86ef
	jr nz,$+30		;86f0
	djnz l86f4h		;86f2
l86f4h:
	and 0c0h		;86f4
	ret nc			;86f6
	nop			;86f7
	jr nz,l8739h		;86f8
	djnz l86dch		;86fa
	add a,b			;86fc
l86fdh:
	ret nz			;86fd
	nop			;86fe
	jr nz,l8701h		;86ff
l8701h:
	sub b			;8701
	nop			;8702
	ld (hl),b		;8703
	ld d,b			;8704
	jr nz,l8757h		;8705
	ld (hl),b		;8707
	jr nc,l870ah		;8708
l870ah:
	ld d,b			;870a
	ld a,a			;870b
	ld h,b			;870c
	djnz l873fh		;870d
	ld b,b			;870f
	nop			;8710
	or b			;8711
	djnz l8774h		;8712
	nop			;8714
	ret po			;8715
	ret p			;8716
	nop			;8717
	or b			;8718
	sub b			;8719
	ret nz			;871a
	djnz l86fdh		;871b
	and b			;871d
	ret nz			;871e
	ret p			;871f
	ret nz			;8720
	and b			;8721
	add a,b			;8722
	or b			;8723
	ret nz			;8724
	djnz l8741h		;8725
	ld hl,(01a2ch)		;8727
	nop			;872a
	ret po			;872b
	ret nc			;872c
	ret po			;872d
	ld (07053h),hl		;872e
	ld (hl),l		;8731
	ld (hl),b		;8732
	ld sp,l80eah		;8733
	adc a,b			;8736
	adc a,d			;8737
	adc a,h			;8738
l8739h:
	adc a,(hl)		;8739
	nop			;873a
	nop			;873b
	nop			;873c
	nop			;873d
	nop			;873e
l873fh:
	ld (hl),b		;873f
	ld (hl),b		;8740
l8741h:
	nop			;8741
	nop			;8742
	add a,b			;8743
	add a,b			;8744
	add a,b			;8745
	nop			;8746
	nop			;8747
	nop			;8748
	nop			;8749
	ld (hl),b		;874a
	ld (hl),b		;874b
	ld (hl),b		;874c
	nop			;874d
	add a,b			;874e
	add a,b			;874f
	nop			;8750
	nop			;8751
	nop			;8752
	nop			;8753
	ld (hl),b		;8754
	ld (hl),b		;8755
	nop			;8756
l8757h:
	nop			;8757
	add a,b			;8758
	add a,b			;8759
	nop			;875a
	nop			;875b
	nop			;875c
	add a,b			;875d
	nop			;875e
	ld (hl),b		;875f
	ld (hl),b		;8760
	ld (hl),b		;8761
	nop			;8762
	nop			;8763
	nop			;8764
	add a,b			;8765
l8766h:
	nop			;8766
	nop			;8767
	nop			;8768
	add a,b			;8769
	add a,b			;876a
	add a,b			;876b
	add a,b			;876c
l876dh:
	nop			;876d
l876eh:
	add a,b			;876e
	nop			;876f
	nop			;8770
	nop			;8771
	nop			;8772
	add a,b			;8773
l8774h:
	add a,b			;8774
	add a,b			;8775
	nop			;8776
	add a,b			;8777
	add a,b			;8778
	add a,b			;8779
	nop			;877a
	jr nc,l876dh		;877b
	jr nc,l87bfh		;877d
	ld d,b			;877f
	ld h,b			;8780
	ld h,b			;8781
	ld (hl),b		;8782
	ld a,c			;8783
	ld (hl),b		;8784
	ld a,b			;8785
	ld b,b			;8786
	nop			;8787
	nop			;8788
	ld c,070h		;8789
	add a,e			;878b
	ld h,b			;878c
	ld d,b			;878d
	nop			;878e
	nop			;878f
	nop			;8790
	ld h,074h		;8791
	add a,d			;8793
	add a,h			;8794
	ld h,l			;8795
	ld h,h			;8796
	call po,sub_8493h	;8797
	ld (hl),b		;879a
	ld (hl),b		;879b
	ld (hl),b		;879c
	ld (hl),b		;879d
	ld (hl),b		;879e
	ld (hl),b		;879f
	ld (hl),b		;87a0
	ld (hl),b		;87a1
	add a,b			;87a2
	add a,b			;87a3
	add a,b			;87a4
	add a,b			;87a5
	add a,b			;87a6
	add a,b			;87a7
	add a,b			;87a8
	add a,b			;87a9
	ld (hl),b		;87aa
	ld (hl),b		;87ab
	ld (hl),b		;87ac
	add a,b			;87ad
	add a,b			;87ae
	add a,b			;87af
	ld (hl),b		;87b0
	ld (hl),b		;87b1
	ld (hl),b		;87b2
	ld (hl),b		;87b3
	add a,b			;87b4
	add a,b			;87b5
	add a,b			;87b6
	add a,b			;87b7
	add a,b			;87b8
	add a,b			;87b9
	and b			;87ba
	sub b			;87bb
	sub b			;87bc
	sub b			;87bd
	and b			;87be
l87bfh:
	and b			;87bf
	or b			;87c0
	or b			;87c1
	ret nz			;87c2
	ret nz			;87c3
	ret nc			;87c4
	ret nc			;87c5
	ret po			;87c6
	ret po			;87c7
	ret p			;87c8
	ret p			;87c9
	nop			;87ca
	nop			;87cb
	djnz l87deh		;87cc
	jr nz,l87f0h		;87ce
	jr nc,l8802h		;87d0
	ld b,b			;87d2
	ld b,b			;87d3
	ld d,b			;87d4
	ld d,b			;87d5
	ld h,b			;87d6
	ld h,b			;87d7
	ld h,b			;87d8
	ld d,b			;87d9
	ld (hl),b		;87da
	ld (hl),b		;87db
	ld h,b			;87dc
	add a,b			;87dd
l87deh:
	sub b			;87de
	sub b			;87df
	add a,b			;87e0
	add a,b			;87e1
	ld b,b			;87e2
	ld b,b			;87e3
	jr nc,l8766h		;87e4
	sub b			;87e6
	sub b			;87e7
	add a,b			;87e8
	add a,b			;87e9
	jr nz,l880ch		;87ea
	djnz l876eh		;87ec
	sub b			;87ee
	sub b			;87ef
l87f0h:
	add a,b			;87f0
	add a,b			;87f1
	nop			;87f2
	nop			;87f3
	ret p			;87f4
	add a,b			;87f5
	sub b			;87f6
	sub b			;87f7
	add a,b			;87f8
	add a,b			;87f9
	nop			;87fa
	ld a,a			;87fb
	nop			;87fc
	add a,b			;87fd
	and b			;87fe
	ret nz			;87ff
	ret c			;8800
	ret p			;8801
l8802h:
	ex af,af'		;8802
	jr nz,l8835h		;8803
	ld b,b			;8805
	ld d,b			;8806
	ld h,b			;8807
	ld (hl),b		;8808
	ld a,b			;8809
	ld a,h			;880a
	ld a,a			;880b
l880ch:
	ld a,h			;880c
	ld a,b			;880d
	ld (hl),b		;880e
	ld h,b			;880f
	ld d,b			;8810
	ld b,b			;8811
	jr nc,l8834h		;8812
	ex af,af'		;8814
	ret p			;8815
l8816h:
	ret c			;8816
l8817h:
	ret nz			;8817
	and b			;8818
	add a,b			;8819
	add a,b			;881a
	sbc a,b			;881b
	cp b			;881c
l881dh:
	ret po			;881d
	jr nz,l8870h		;881e
	ld l,b			;8820
	ld a,a			;8821
	ld l,b			;8822
	ld d,b			;8823
	jr nz,l8816h		;8824
	ret nc			;8826
	cp b			;8827
	xor b			;8828
	sub b			;8829
	sub b			;882a
	cp b			;882b
	add a,b			;882c
	nop			;882d
	add a,b			;882e
	ld b,b			;882f
	add a,b			;8830
	ld a,a			;8831
l8832h:
	add a,b			;8832
	ld b,b			;8833
l8834h:
	add a,b			;8834
l8835h:
	nop			;8835
	add a,b			;8836
	ret nz			;8837
	sub b			;8838
	sub b			;8839
	add a,b			;883a
	ret nc			;883b
	jr nz,l88bdh		;883c
	ld b,b			;883e
	nop			;883f
	ret nz			;8840
	add a,b			;8841
	ret nc			;8842
	jr nz,l88c4h		;8843
	jr nc,l8817h		;8845
	add a,b			;8847
	ret nc			;8848
	jr nc,l88cah		;8849
	jr nc,l881dh		;884b
	add a,b			;884d
	or b			;884e
	ret po			;884f
	jr l8832h		;8850
	or b			;8852
	add a,b			;8853
	sub b			;8854
l8855h:
	and b			;8855
	or b			;8856
	and b			;8857
	sub b			;8858
	add a,b			;8859
	add a,b			;885a
	xor d			;885b
	ret z			;885c
	nop			;885d
	inc h			;885e
	ld b,b			;885f
	ld e,h			;8860
	ld (hl),b		;8861
	ld a,a			;8862
	ld l,d			;8863
	ld c,d			;8864
	ld h,000h		;8865
	ret nc			;8867
	xor b			;8868
	adc a,h			;8869
	add a,b			;886a
	xor d			;886b
	ret z			;886c
	nop			;886d
	inc h			;886e
	ld b,b			;886f
l8870h:
	ld e,h			;8870
	ld (hl),b		;8871
	ld a,a			;8872
	ld l,d			;8873
	ld c,d			;8874
	ld h,000h		;8875
	ret nc			;8877
	xor b			;8878
	adc a,h			;8879
	add a,b			;887a
	nop			;887b
	nop			;887c
	nop			;887d
	ld (hl),b		;887e
	ld (hl),b		;887f
	nop			;8880
	nop			;8881
	add a,b			;8882
	add a,b			;8883
	add a,b			;8884
	nop			;8885
	nop			;8886
	nop			;8887
	nop			;8888
	ld (hl),b		;8889
	ld (hl),b		;888a
	ld (hl),b		;888b
	add a,b			;888c
	ld a,a			;888d
	add a,b			;888e
	add a,b			;888f
	ret nz			;8890
	nop			;8891
	jr nz,l88c8h		;8892
	ld b,b			;8894
	inc (hl)		;8895
	jr nz,l8898h		;8896
l8898h:
	ret nz			;8898
	add a,b			;8899
	add a,b			;889a
	call nz,0c0c0h		;889b
	ld b,0e4h		;889e
	jr nc,l88bch		;88a0
	ld (hl),b		;88a2
	ld a,(04040h)		;88a3
	call m,0c016h		;88a6
	sub b			;88a9
	call nz,0c0c0h		;88aa
	inc b			;88ad
	ret pe			;88ae
	jr nc,l88c9h		;88af
	ld (hl),b		;88b1
	inc a			;88b2
	ld b,b			;88b3
	ld b,b			;88b4
	cp 013h			;88b5
	ret po			;88b7
	and b			;88b8
	sub b			;88b9
	add a,b			;88ba
	add a,b			;88bb
l88bch:
	ret pe			;88bc
l88bdh:
	jr l88f7h		;88bd
	ld h,(hl)		;88bf
	ld a,b			;88c0
	ld a,a			;88c1
	add a,b			;88c2
	add a,b			;88c3
l88c4h:
	add a,b			;88c4
	add a,b			;88c5
	add a,b			;88c6
	add a,b			;88c7
l88c8h:
	add a,b			;88c8
l88c9h:
	sbc a,h			;88c9
l88cah:
	add a,b			;88ca
	call c,02080h		;88cb
	ret nc			;88ce
	add a,b			;88cf
	ld a,a			;88d0
	add a,b			;88d1
	ret nc			;88d2
	jr nz,l8855h		;88d3
	call c,sub_9c80h	;88d5
	add a,b			;88d8
	adc a,b			;88d9
	add a,b			;88da
	ld a,a			;88db
	ld d,b			;88dc
	ret p			;88dd
	and d			;88de
	and b			;88df
	and (hl)		;88e0
	ret nc			;88e1
	call p,02022h		;88e2
	ld b,h			;88e5
	ld b,h			;88e6
l88e7h:
	djnz $+38		;88e7
	ld (0e2e0h),hl		;88e9
	call m,0e0dch		;88ec
	inc c			;88ef
	inc d			;88f0
	inc a			;88f1
	ld e,h			;88f2
	ld (hl),b		;88f3
	ld h,b			;88f4
	jr nc,l88e7h		;88f5
l88f7h:
	sub b			;88f7
	ret p			;88f8
	and b			;88f9
	cp 039h			;88fa
	ret c			;88fc
	cp 053h			;88fd
	ret nc			;88ff
	sub 039h		;8900
	ld hl,0690fh		;8902
	add a,l			;8905
	ld l,a			;8906
	jr nc,l890ah		;8907
	inc h			;8909
l890ah:
	ld a,(hl)		;890a
	ld (0c8c8h),a		;890b
	ret			;890e
	jr $+25			;890f
	rla			;8911
	ld e,01eh		;8912
	ld e,018h		;8914
	jr $+26			;8916
	rla			;8918
	ld e,01eh		;8919
	ld e,01eh		;891b
	ld e,018h		;891d
	jr l8938h		;891f
	jr l8941h		;8921
	ld e,01eh		;8923
	ld e,017h		;8925
	ld e,01eh		;8927
	di			;8929
	push hl			;892a
	push de			;892b
	push bc			;892c
	push ix			;892d
	push iy			;892f
	push af			;8931
	call 0693fh		;8932
	pop af			;8935
	pop iy			;8936
l8938h:
	pop ix			;8938
	pop bc			;893a
	pop de			;893b
	pop hl			;893c
	ei			;893d
	ret			;893e
	or a			;893f
	ret z			;8940
l8941h:
	ld c,a			;8941
	ld (0c87dh),a		;8942
	call 068fah		;8945
	ld a,c			;8948
	cp 080h			;8949
	jp c,06967h		;894b
	cp 083h			;894e
	jp z,06a1eh		;8950
	cp 084h			;8953
	jp z,06a26h		;8955
	cp 085h			;8958
	jp z,06a26h		;895a
	cp 081h			;895d
	jp z,06a3ah		;895f
	cp 082h			;8962
	call z,06a73h		;8964
	ld hl,07a00h		;8967
	add a,c			;896a
	ld e,a			;896b
	ld d,000h		;896c
	add hl,de		;896e
	ld e,(hl)		;896f
	inc hl			;8970
	ld d,(hl)		;8971
	ex de,hl		;8972
	ld a,(hl)		;8973
	ld b,a			;8974
	inc hl			;8975
	ld c,(hl)		;8976
	ex de,hl		;8977
	inc de			;8978
	cp 008h			;8979
	jp z,06a15h		;897b
	cp 00ch			;897e
	jp nz,06992h		;8980
	ld a,c			;8983
	ld hl,0c681h		;8984
	cp (hl)			;8987
	ret c			;8988
	call 069f2h		;8989
	ld hl,0c6c1h		;898c
	jp 069f2h		;898f
	ld a,c			;8992
	ld hl,0c601h		;8993
	cp (hl)			;8996
	ret c			;8997
	call 06a1eh		;8998
	ld a,b			;899b
	cp 0f3h			;899c
	jp nz,069c5h		;899e
	ld hl,0c601h		;89a1
	call 069f2h		;89a4
	ld hl,0c641h		;89a7
	call 069f2h		;89aa
	ld hl,0c701h		;89ad
	call 069f2h		;89b0
	ld hl,0c741h		;89b3
	call 069f2h		;89b6
	ld hl,0c781h		;89b9
	call 069f2h		;89bc
	ld hl,0c7c1h		;89bf
	jp 069f2h		;89c2
	ld hl,0c601h		;89c5
	call 069f2h		;89c8
	ld hl,0c641h		;89cb
	call 069f2h		;89ce
	ld hl,0c681h		;89d1
	call 069f2h		;89d4
	ld hl,0c6c1h		;89d7
	call 069f2h		;89da
	ld hl,0c701h		;89dd
	call 069f2h		;89e0
	ld hl,0c741h		;89e3
	call 069f2h		;89e6
	ld hl,0c781h		;89e9
	call 069f2h		;89ec
	ld hl,0c7c1h		;89ef
	ld (hl),c		;89f2
	dec hl			;89f3
	ld a,(0c87dh)		;89f4
	ld (hl),a		;89f7
	inc hl			;89f8
	inc hl			;89f9
	ld a,(de)		;89fa
	ld (hl),a		;89fb
	inc hl			;89fc
	inc de			;89fd
	ld a,(de)		;89fe
	ld (hl),a		;89ff
	inc hl			;8a00
	ld a,001h		;8a01
	ld (hl),a		;8a03
	inc de			;8a04
	inc hl			;8a05
	push bc			;8a06
	push de			;8a07
	ld d,h			;8a08
	ld e,l			;8a09
	inc de			;8a0a
	ld bc,0003ah		;8a0b
	ld (hl),000h		;8a0e
	ldir			;8a10
	pop de			;8a12
	pop bc			;8a13
	ret			;8a14
	ld a,c			;8a15
	ld hl,0c6c1h		;8a16
	cp (hl)			;8a19
	ret c			;8a1a
	jp 069f2h		;8a1b
	ld hl,0c840h		;8a1e
	res 0,(hl)		;8a21
	jp 06a33h		;8a23
	ld hl,0c840h		;8a26
	set 0,(hl)		;8a29
	res 4,(hl)		;8a2b
	ld hl,00a25h		;8a2d
	ld (0c854h),hl		;8a30
	ld hl,00000h		;8a33
	ld (0c856h),hl		;8a36
	ret			;8a39
	ld hl,0c840h		;8a3a
	res 1,(hl)		;8a3d
	bit 2,(hl)		;8a3f
	jp z,06a48h		;8a41
	res 2,(hl)		;8a44
	set 0,(hl)		;8a46
	ld hl,0c800h		;8a48
	ld de,0c6c0h		;8a4b
	ld bc,00040h		;8a4e
	ldir			;8a51
	ld hl,0c6cfh		;8a53
	set 7,(hl)		;8a56
	ld a,(0c871h)		;8a58
	ld (0c60dh),a		;8a5b
	ld a,(0c872h)		;8a5e
	ld (0c64dh),a		;8a61
	ld a,(0c873h)		;8a64
	ld (0c68dh),a		;8a67
	ld hl,0ffffh		;8a6a
	ld (0c85fh),hl		;8a6d
	jp 06287h		;8a70
	ld hl,0c840h		;8a73
	set 1,(hl)		;8a76
	bit 0,(hl)		;8a78
	jp z,06a81h		;8a7a
	res 0,(hl)		;8a7d
	set 2,(hl)		;8a7f
	ld hl,0c6c0h		;8a81
	ld de,0c800h		;8a84
	ld bc,00040h		;8a87
	ldir			;8a8a
	ld a,(0c60dh)		;8a8c
	ld (0c871h),a		;8a8f
	ld a,(0c64dh)		;8a92
	ld (0c872h),a		;8a95
	ld a,(0c68dh)		;8a98
	ld (0c873h),a		;8a9b
	xor a			;8a9e
	ld (0c60dh),a		;8a9f
	ld (0c64dh),a		;8aa2
	ld (0c68dh),a		;8aa5
	ld a,(0c60ch)		;8aa8
	res 4,a			;8aab
	ld (0c60ch),a		;8aad
	ld a,(0c64ch)		;8ab0
	res 4,a			;8ab3
	ld (0c64ch),a		;8ab5
	ld a,(0c68ch)		;8ab8
	res 4,a			;8abb
	ld (0c68ch),a		;8abd
	call 0642eh		;8ac0
	ld hl,00000h		;8ac3
	ld (l988bh),hl		;8ac6
	ld (l988dh),hl		;8ac9
	call 06434h		;8acc
	ld a,001h		;8acf
	ld (0c87dh),a		;8ad1
	ld c,a			;8ad4
	ret			;8ad5
	ld a,(0c8c8h)		;8ad6
	call 04c23h		;8ad9
	ld a,(0c880h)		;8adc
	call 06106h		;8adf
	ld hl,0c840h		;8ae2
	bit 1,(hl)		;8ae5
	jp nz,06b5eh		;8ae7
	ld a,(0c840h)		;8aea
	bit 0,a			;8aed
	call nz,071c6h		;8aef
	ld a,001h		;8af2
	ld (0c858h),a		;8af4
	ld ix,0c600h		;8af7
	call 06b56h		;8afb
	ld a,002h		;8afe
	ld (0c858h),a		;8b00
	ld ix,0c640h		;8b03
	call 06b56h		;8b07
	ld a,004h		;8b0a
	ld (0c858h),a		;8b0c
	ld ix,0c680h		;8b0f
	call 06b56h		;8b13
	ld a,008h		;8b16
	ld (0c858h),a		;8b18
	ld ix,0c6c0h		;8b1b
	call 06b56h		;8b1f
	ld a,010h		;8b22
	ld (0c858h),a		;8b24
	ld ix,0c700h		;8b27
	call 06b56h		;8b2b
	ld a,020h		;8b2e
	ld (0c858h),a		;8b30
	ld ix,0c740h		;8b33
	call 06b56h		;8b37
	ld a,040h		;8b3a
	ld (0c858h),a		;8b3c
	ld ix,0c780h		;8b3f
	call 06b56h		;8b43
	ld a,080h		;8b46
	ld (0c858h),a		;8b48
	ld ix,0c7c0h		;8b4b
	call 06b56h		;8b4f
	call 06024h		;8b52
	ret			;8b55
	ld a,(ix+000h)		;8b56
	or a			;8b59
	call nz,06b76h		;8b5a
	ret			;8b5d
	ld a,008h		;8b5e
	ld (0c858h),a		;8b60
	ld ix,0c6c0h		;8b63
	call 06b56h		;8b67
	ld a,0bfh		;8b6a
	ld (0c880h),a		;8b6c
	call 07372h		;8b6f
	call 06024h		;8b72
	ret			;8b75
	dec (ix+004h)		;8b76
	ld a,(ix+004h)		;8b79
	cp 0ffh			;8b7c
	jr z,l8b87h		;8b7e
	cp 000h			;8b80
	jr z,l8b8dh		;8b82
	jp 06dd5h		;8b84
l8b87h:
	dec (ix+02ch)		;8b87
	jp 06dd5h		;8b8a
l8b8dh:
	ld a,(ix+02ch)		;8b8d
	or a			;8b90
	jp nz,06dd5h		;8b91
	ld l,(ix+002h)		;8b94
	ld h,(ix+003h)		;8b97
	ld a,(hl)		;8b9a
	cp 0ffh			;8b9b
	jp z,0724ah		;8b9d
	cp 0d0h			;8ba0
	jr c,l8babh		;8ba2
	call 0728bh		;8ba4
	inc hl			;8ba7
	jp 06b9ah		;8ba8
l8babh:
	bit 0,(ix+009h)		;8bab
	jp nz,06bc2h		;8baf
	bit 1,(ix+009h)		;8bb2
	jp nz,06c38h		;8bb6
	ld a,(ix+009h)		;8bb9
	and 01ch		;8bbc
	jp nz,06cb1h		;8bbe
	ret			;8bc1
	ld a,(hl)		;8bc2
	and 00fh		;8bc3
	ld b,a			;8bc5
	ld a,(ix+014h)		;8bc6
	jr z,l8bd4h		;8bc9
	ld e,a			;8bcb
l8bcch:
	add a,e			;8bcc
	jr nc,l8bd2h		;8bcd
	inc (ix+02ch)		;8bcf
l8bd2h:
	djnz l8bcch		;8bd2
l8bd4h:
	ld (ix+004h),a		;8bd4
	ld a,(hl)		;8bd7
	and 0f0h		;8bd8
	rrca			;8bda
	rrca			;8bdb
	rrca			;8bdc
	rrca			;8bdd
	call 06d3ch		;8bde
	bit 7,(ix+009h)		;8be1
	ret nz			;8be5
	cp 00ch			;8be6
	jr nc,l8c22h		;8be8
	ld hl,06c2bh		;8bea
	ld e,a			;8bed
	ld d,000h		;8bee
	add hl,de		;8bf0
	ld l,(hl)		;8bf1
	ld h,000h		;8bf2
	ld a,(ix+016h)		;8bf4
	or a			;8bf7
	jr z,l8bfeh		;8bf8
	ld b,a			;8bfa
l8bfbh:
	add hl,hl		;8bfb
	djnz l8bfbh		;8bfc
l8bfeh:
	ld (ix+010h),l		;8bfe
	ld (ix+011h),h		;8c01
	ld e,(ix+015h)		;8c04
	ld a,(0c840h)		;8c07
	and 011h		;8c0a
	call nz,07226h		;8c0c
	ld (ix+012h),e		;8c0f
	ld a,(ix+00dh)		;8c12
	and 0f0h		;8c15
	ld (ix+00dh),a		;8c17
	set 1,(ix+00dh)		;8c1a
	call 06d44h		;8c1e
	ret			;8c21
l8c22h:
	ld a,(ix+00dh)		;8c22
	and 0f0h		;8c25
	ld (ix+00dh),a		;8c27
	ret			;8c2a
	ld l,d			;8c2b
	ld h,h			;8c2c
	ld e,(hl)		;8c2d
	ld e,c			;8c2e
	ld d,h			;8c2f
	ld c,a			;8c30
	ld c,d			;8c31
	ld b,(hl)		;8c32
	ld b,d			;8c33
	ccf			;8c34
	dec sp			;8c35
	jr c,l8c6dh		;8c36
	ld a,(ix+00dh)		;8c38
	and 003h		;8c3b
	jr z,l8ca2h		;8c3d
	cp 001h			;8c3f
	jr z,l8c79h		;8c41
	ld a,(hl)		;8c43
	bit 6,(ix+00eh)		;8c44
	jr nz,l8c65h		;8c48
	bit 5,(ix+00eh)		;8c4a
	jr nz,l8c6ah		;8c4e
	and 0f0h		;8c50
	ld b,a			;8c52
	xor (hl)		;8c53
	ld d,a			;8c54
	inc hl			;8c55
	ld a,(hl)		;8c56
	ld (ix+010h),a		;8c57
	ld (ix+011h),d		;8c5a
	ld a,b			;8c5d
	rrca			;8c5e
	rrca			;8c5f
	rrca			;8c60
	rrca			;8c61
	ld b,a			;8c62
	jr l8c7dh		;8c63
l8c65h:
	ld (ix+010h),a		;8c65
	jr l8c91h		;8c68
l8c6ah:
	and 0f0h		;8c6a
	rrca			;8c6c
l8c6dh:
	rrca			;8c6d
	rrca			;8c6e
	rrca			;8c6f
	ld b,a			;8c70
	ld a,(hl)		;8c71
	and 00fh		;8c72
	ld (ix+011h),a		;8c74
	jr l8c7dh		;8c77
l8c79h:
	ld a,(hl)		;8c79
	and 00fh		;8c7a
	ld b,a			;8c7c
l8c7dh:
	ld a,(0c858h)		;8c7d
	cp 008h			;8c80
	jr nc,l8c8ch		;8c82
	bit 2,(ix+00dh)		;8c84
	jr z,l8c8ch		;8c88
	ld b,010h		;8c8a
l8c8ch:
	inc b			;8c8c
	inc b			;8c8d
	ld (ix+012h),b		;8c8e
l8c91h:
	ld e,(ix+012h)		;8c91
	ld a,(0c840h)		;8c94
	and 011h		;8c97
	call nz,07226h		;8c99
	ld (ix+012h),e		;8c9c
	call 06d44h		;8c9f
l8ca2h:
	bit 7,(ix+009h)		;8ca2
	ret nz			;8ca6
	call 06d3ch		;8ca7
	ld a,(ix+013h)		;8caa
	ld (ix+004h),a		;8cad
	ret			;8cb0
	set 7,(ix+009h)		;8cb1
	call 06bc2h		;8cb5
	ld b,a			;8cb8
	call 06ce8h		;8cb9
	ld a,b			;8cbc
	add a,a			;8cbd
	ld e,a			;8cbe
	ld d,000h		;8cbf
	add hl,de		;8cc1
	ld e,(hl)		;8cc2
	inc hl			;8cc3
	ld d,(hl)		;8cc4
	ex de,hl		;8cc5
	ld a,(hl)		;8cc6
	set 1,(ix+009h)		;8cc7
	call 06b9ah		;8ccb
	res 1,(ix+009h)		;8cce
	res 7,(ix+009h)		;8cd2
	ld a,(ix+013h)		;8cd6
	ld (ix+019h),a		;8cd9
	inc hl			;8cdc
	ld (ix+017h),l		;8cdd
	ld (ix+018h),h		;8ce0
	set 0,(ix+00eh)		;8ce3
	ret			;8ce7
	bit 2,(ix+009h)		;8ce8
	jp nz,06cfdh		;8cec
	bit 3,(ix+009h)		;8cef
	jp nz,06d12h		;8cf3
	bit 4,(ix+009h)		;8cf6
	jp nz,06d27h		;8cfa
	ld a,(ix+029h)		;8cfd
	cp 000h			;8d00
	jp z,06d0ah		;8d02
	cp 001h			;8d05
	jp z,06d0eh		;8d07
	ld hl,l9b00h		;8d0a
	ret			;8d0d
	ld hl,09bf3h		;8d0e
	ret			;8d11
	ld a,(ix+029h)		;8d12
	cp 000h			;8d15
	jp z,06d1fh		;8d17
	cp 001h			;8d1a
	jp z,06d23h		;8d1c
	ld hl,09bf3h		;8d1f
	ret			;8d22
	ld hl,09bf3h		;8d23
	ret			;8d26
	ld a,(ix+029h)		;8d27
	cp 000h			;8d2a
	jp z,06d34h		;8d2c
	cp 001h			;8d2f
	jp z,06d38h		;8d31
	ld hl,09bf3h		;8d34
	ret			;8d37
	ld hl,09bf3h		;8d38
	ret			;8d3b
	inc hl			;8d3c
	ld (ix+002h),l		;8d3d
	ld (ix+003h),h		;8d40
	ret			;8d43
	call 06e28h		;8d44
	res 4,(ix+00eh)		;8d47
	bit 4,(ix+03ch)		;8d4b
	jp z,06d56h		;8d4f
	set 6,(ix+03ch)		;8d52
	res 5,(ix+03ch)		;8d56
	ld a,(ix+00fh)		;8d5a
	and 0d7h		;8d5d
	ld (ix+00fh),a		;8d5f
	xor a			;8d62
	ld (ix+01dh),a		;8d63
	ld (ix+01eh),a		;8d66
	ld (ix+031h),a		;8d69
	ld (ix+033h),a		;8d6c
	res 6,(ix+030h)		;8d6f
	res 7,(ix+030h)		;8d73
	res 7,(ix+00dh)		;8d77
	res 5,(ix+030h)		;8d7b
	res 3,(ix+030h)		;8d7f
	ld (ix+01fh),a		;8d83
	ld (ix+020h),a		;8d86
	set 2,(ix+00fh)		;8d89
	ld a,(ix+012h)		;8d8d
	bit 7,(ix+00eh)		;8d90
	jr z,l8d9dh		;8d94
	ld e,(ix+02fh)		;8d96
	sub e			;8d99
	call m,06dd3h		;8d9a
l8d9dh:
	ld (ix+00ch),a		;8d9d
	set 1,(ix+030h)		;8da0
	ld a,(0c858h)		;8da4
	cp 008h			;8da7
	jr nc,l8db0h		;8da9
	bit 2,(ix+00dh)		;8dab
	ret nz			;8daf
l8db0h:
	bit 0,(ix+030h)		;8db0
	jr z,l8dc3h		;8db4
	res 2,(ix+030h)		;8db6
	res 1,(ix+030h)		;8dba
	res 2,(ix+00fh)		;8dbe
	ret			;8dc2
l8dc3h:
	bit 1,(ix+00fh)		;8dc3
	ret z			;8dc7
	ld a,(ix+025h)		;8dc8
	ld (ix+00ch),a		;8dcb
	res 2,(ix+00fh)		;8dce
	ret			;8dd2
	xor a			;8dd3
	ret			;8dd4
	bit 0,(ix+00eh)		;8dd5
	jp nz,06e00h		;8dd9
	bit 4,(ix+03ch)		;8ddc
	call nz,06fach		;8de0
	bit 2,(ix+00eh)		;8de3
	call nz,06e43h		;8de7
	bit 0,(ix+00fh)		;8dea
	call nz,06e91h		;8dee
	bit 6,(ix+00fh)		;8df1
	call nz,07059h		;8df5
	bit 6,(ix+00dh)		;8df8
	call nz,07168h		;8dfc
	ret			;8dff
	dec (ix+019h)		;8e00
	ret nz			;8e03
	ld l,(ix+017h)		;8e04
	ld h,(ix+018h)		;8e07
	ld a,(hl)		;8e0a
	cp 0ffh			;8e0b
	jr z,l8e17h		;8e0d
	set 7,(ix+009h)		;8e0f
	call 06cc7h		;8e13
	ret			;8e16
l8e17h:
	res 0,(ix+00eh)		;8e17
	xor a			;8e1b
	ld (ix+00ch),a		;8e1c
	ld a,(ix+00dh)		;8e1f
	and 0f0h		;8e22
	ld (ix+00dh),a		;8e24
	ret			;8e27
	ld e,(ix+010h)		;8e28
	ld d,(ix+011h)		;8e2b
	bit 1,(ix+00eh)		;8e2e
	jr z,l8e3ch		;8e32
	ld a,(ix+026h)		;8e34
	add a,e			;8e37
	ld e,a			;8e38
	jr nc,l8e3ch		;8e39
	inc d			;8e3b
l8e3ch:
	ld (ix+00ah),e		;8e3c
	ld (ix+00bh),d		;8e3f
	ret			;8e42
	inc (ix+01eh)		;8e43
	ld a,(ix+01eh)		;8e46
	ld b,(ix+00eh)		;8e49
	bit 4,b			;8e4c
	jr nz,l8e62h		;8e4e
	bit 3,b			;8e50
	jr z,l8e62h		;8e52
	cp (ix+01ah)		;8e54
	ret nz			;8e57
	ld (ix+01eh),000h	;8e58
	set 4,(ix+00eh)		;8e5c
	jr l8e66h		;8e60
l8e62h:
	cp (ix+01bh)		;8e62
	ret nz			;8e65
l8e66h:
	ld e,(ix+00ah)		;8e66
	ld d,(ix+00bh)		;8e69
	ld b,(ix+01ch)		;8e6c
	ld a,(ix+01dh)		;8e6f
	cpl			;8e72
	ld (ix+01dh),a		;8e73
	and a			;8e76
	ld a,e			;8e77
	jr nz,l8e81h		;8e78
	add a,b			;8e7a
	ld e,a			;8e7b
	jr nc,l8e86h		;8e7c
	inc d			;8e7e
	jr l8e86h		;8e7f
l8e81h:
	sub b			;8e81
	ld e,a			;8e82
	jr nc,l8e86h		;8e83
	dec d			;8e85
l8e86h:
	ld (ix+00ah),e		;8e86
	ld (ix+00bh),d		;8e89
	ld (ix+01eh),000h	;8e8c
	ret			;8e90
	ld a,(0c858h)		;8e91
	cp 008h			;8e94
	jr nc,l8e9dh		;8e96
	bit 2,(ix+00dh)		;8e98
	ret nz			;8e9c
l8e9dh:
	call 06ea4h		;8e9d
	ld (ix+00ch),e		;8ea0
	ret			;8ea3
	ld e,(ix+00ch)		;8ea4
	inc (ix+01fh)		;8ea7
	ld b,(ix+01fh)		;8eaa
	ld a,(ix+02ch)		;8ead
	or a			;8eb0
	jr nz,l8ebch		;8eb1
	ld a,(ix+024h)		;8eb3
	cp (ix+004h)		;8eb6
	call nc,06fa7h		;8eb9
l8ebch:
	bit 5,(ix+00fh)		;8ebc
	jp nz,06f8dh		;8ec0
	bit 3,(ix+00fh)		;8ec3
	jr nz,l8f41h		;8ec7
	bit 2,(ix+00fh)		;8ec9
	jr nz,l8f21h		;8ecd
	bit 1,(ix+030h)		;8ecf
	jr nz,l8f0eh		;8ed3
	bit 2,(ix+030h)		;8ed5
	jr nz,l8ef8h		;8ed9
	ld a,(ix+035h)		;8edb
	ld d,a			;8ede
	ld a,e			;8edf
	sub d			;8ee0
	jp c,06eeah		;8ee1
	cp (ix+034h)		;8ee4
	jp nc,06eedh		;8ee7
	ld a,(ix+034h)		;8eea
	ld e,a			;8eed
	ld a,b			;8eee
	cp (ix+025h)		;8eef
	ret nz			;8ef2
	set 2,(ix+030h)		;8ef3
	ret			;8ef7
l8ef8h:
	ld a,(ix+012h)		;8ef8
	sub (ix+036h)		;8efb
	ld c,a			;8efe
	ld a,e			;8eff
	inc a			;8f00
	ld e,a			;8f01
	cp c			;8f02
	ret c			;8f03
	set 2,(ix+00fh)		;8f04
	ld (ix+01fh),000h	;8f08
	ld e,c			;8f0c
	ret			;8f0d
l8f0eh:
	ld a,e			;8f0e
	inc a			;8f0f
	ld e,a			;8f10
	cp (ix+012h)		;8f11
	ret c			;8f14
	set 2,(ix+00fh)		;8f15
	ld e,(ix+012h)		;8f19
	ld (ix+01fh),000h	;8f1c
	ret			;8f20
l8f21h:
	ld a,e			;8f21
	dec a			;8f22
	jp m,06f2fh		;8f23
	cp (ix+034h)		;8f26
	jp c,06f2fh		;8f29
	ld e,a			;8f2c
	jr l8f33h		;8f2d
	ld a,(ix+034h)		;8f2f
	ld e,a			;8f32
l8f33h:
	ld a,b			;8f33
	cp (ix+021h)		;8f34
	ret c			;8f37
	ld (ix+01fh),000h	;8f38
	set 3,(ix+00fh)		;8f3c
	ret			;8f40
l8f41h:
	bit 4,(ix+00fh)		;8f41
	jp nz,06f70h		;8f45
	ld a,b			;8f48
	cp (ix+022h)		;8f49
	ret nz			;8f4c
	ld a,e			;8f4d
	dec a			;8f4e
	jp m,06f6bh		;8f4f
	cp (ix+034h)		;8f52
	jr c,l8f6bh		;8f55
	ld e,a			;8f57
	inc (ix+020h)		;8f58
	ld a,(ix+020h)		;8f5b
	cp (ix+023h)		;8f5e
	ld (ix+01fh),000h	;8f61
	ret nz			;8f65
	set 5,(ix+00fh)		;8f66
	ret			;8f6a
l8f6bh:
	ld a,(ix+034h)		;8f6b
	ld e,a			;8f6e
	ret			;8f6f
	ld a,(ix+022h)		;8f70
	ld d,a			;8f73
	ld a,e			;8f74
	sub d			;8f75
	jp c,06f7fh		;8f76
	cp (ix+034h)		;8f79
	jp nc,06f82h		;8f7c
	ld a,(ix+034h)		;8f7f
	ld e,a			;8f82
	ld a,b			;8f83
	cp (ix+023h)		;8f84
	ret nz			;8f87
	set 5,(ix+00fh)		;8f88
	ret			;8f8c
	ld a,(ix+024h)		;8f8d
	cp (ix+004h)		;8f90
	jr nc,l8f96h		;8f93
	ret			;8f95
l8f96h:
	ld a,e			;8f96
	dec a			;8f97
	jp m,06fa2h		;8f98
	cp (ix+034h)		;8f9b
	jr c,l8fa2h		;8f9e
	jr l8fa5h		;8fa0
l8fa2h:
	ld a,(ix+034h)		;8fa2
l8fa5h:
	ld e,a			;8fa5
	ret			;8fa6
	set 5,(ix+00fh)		;8fa7
	ret			;8fab
	bit 6,(ix+03ch)		;8fac
	ret z			;8fb0
	bit 7,(ix+03ch)		;8fb1
	jp nz,07000h		;8fb5
	bit 5,(ix+03ch)		;8fb8
	jp nz,06fd8h		;8fbc
	ld l,(ix+010h)		;8fbf
	ld h,(ix+011h)		;8fc2
	ld b,(ix+03ah)		;8fc5
l8fc8h:
	ld d,000h		;8fc8
	ld e,(ix+039h)		;8fca
	add hl,de		;8fcd
	jp nc,06fd3h		;8fce
	sbc hl,de		;8fd1
	djnz l8fc8h		;8fd3
	jp 0701dh		;8fd5
	ld a,(ix+00ah)		;8fd8
	ld d,(ix+00bh)		;8fdb
	sbc a,(ix+039h)		;8fde
	ld e,a			;8fe1
	jp nc,06fefh		;8fe2
	ld a,d			;8fe5
	or a			;8fe6
	jr nz,l8feeh		;8fe7
	ld de,00001h		;8fe9
	jr l8fefh		;8fec
l8feeh:
	dec d			;8fee
l8fefh:
	ld (ix+00ah),e		;8fef
	ld (ix+00bh),d		;8ff2
	dec (ix+03ah)		;8ff5
	ld a,(ix+03ah)		;8ff8
	or a			;8ffb
	ret nz			;8ffc
	jp 07042h		;8ffd
	bit 5,(ix+03ch)		;9000
	jp nz,07028h		;9004
	ld l,(ix+010h)		;9007
	ld h,(ix+011h)		;900a
	ld b,(ix+03ah)		;900d
l9010h:
	ld d,000h		;9010
	ld e,(ix+039h)		;9012
	sbc hl,de		;9015
	jp nc,0701bh		;9017
	add hl,de		;901a
	djnz l9010h		;901b
	ld (ix+00ah),l		;901d
	ld (ix+00bh),h		;9020
	set 5,(ix+03ch)		;9023
	ret			;9027
	ld l,(ix+00ah)		;9028
	ld h,(ix+00bh)		;902b
	ld d,000h		;902e
	ld e,(ix+039h)		;9030
	add hl,de		;9033
	ld (ix+00ah),l		;9034
	ld (ix+00bh),h		;9037
	dec (ix+03ah)		;903a
	ld a,(ix+03ah)		;903d
	or a			;9040
	ret nz			;9041
	res 6,(ix+03ch)		;9042
	ld e,(ix+010h)		;9046
	ld d,(ix+011h)		;9049
	ld (ix+00ah),e		;904c
	ld (ix+00bh),d		;904f
	ld a,(ix+03bh)		;9052
	ld (ix+03ah),a		;9055
	ret			;9058
	ld a,(0c858h)		;9059
	cp 008h			;905c
	jr nc,l9065h		;905e
	bit 2,(ix+00dh)		;9060
	ret nz			;9064
l9065h:
	call 0706ch		;9065
	ld (ix+00ch),e		;9068
	ret			;906b
	ld e,(ix+00ch)		;906c
	inc (ix+01fh)		;906f
	ld b,(ix+01fh)		;9072
	bit 3,(ix+00fh)		;9075
	jr nz,l9085h		;9079
	bit 2,(ix+00fh)		;907b
	jp nz,06f21h		;907f
	jp 06f0eh		;9082
l9085h:
	bit 3,(ix+030h)		;9085
	ret nz			;9089
	bit 5,(ix+00fh)		;908a
	jp nz,07106h		;908e
	ld a,(ix+023h)		;9091
	ld d,a			;9094
	bit 5,(ix+030h)		;9095
	ld a,(ix+037h)		;9099
	jr nz,l90b8h		;909c
	set 5,(ix+030h)		;909e
	ld a,e			;90a2
	sub (ix+038h)		;90a3
	jr c,l90adh		;90a6
	cp (ix+034h)		;90a8
	jr nc,l90b0h		;90ab
l90adh:
	ld a,(ix+034h)		;90ad
l90b0h:
	ld (ix+020h),a		;90b0
	ld a,e			;90b3
	rlca			;90b4
	rlca			;90b5
	rlca			;90b6
	rlca			;90b7
l90b8h:
	sub d			;90b8
	jp c,070f6h		;90b9
	ld (ix+037h),a		;90bc
	rrca			;90bf
	rrca			;90c0
	rrca			;90c1
	rrca			;90c2
	and 00fh		;90c3
	cp (ix+034h)		;90c5
	jp c,070f6h		;90c8
	ld a,(ix+037h)		;90cb
	bit 3,a			;90ce
	jr z,l90d4h		;90d0
	add a,010h		;90d2
l90d4h:
	rrca			;90d4
	rrca			;90d5
	rrca			;90d6
	rrca			;90d7
	and 00fh		;90d8
	ld e,a			;90da
	cp (ix+034h)		;90db
	jr nz,l90e4h		;90de
l90e0h:
	set 4,(ix+030h)		;90e0
l90e4h:
	ld a,b			;90e4
	cp (ix+022h)		;90e5
	ret nz			;90e8
	set 5,(ix+00fh)		;90e9
	res 5,(ix+030h)		;90ed
	ld (ix+01fh),000h	;90f1
	ret			;90f5
	ld a,(ix+034h)		;90f6
	rlca			;90f9
	rlca			;90fa
	rlca			;90fb
	rlca			;90fc
	ld (ix+037h),a		;90fd
	ld a,(ix+034h)		;9100
	ld e,a			;9103
	jr l90e0h		;9104
	ld a,(ix+024h)		;9106
	ld d,a			;9109
	bit 5,(ix+030h)		;910a
	ld a,(ix+037h)		;910e
	jr nz,l9127h		;9111
	set 5,(ix+030h)		;9113
	ld a,e			;9117
	bit 4,(ix+030h)		;9118
	jr z,l9123h		;911c
	cp (ix+020h)		;911e
	jr nc,l9162h		;9121
l9123h:
	rlca			;9123
	rlca			;9124
	rlca			;9125
	rlca			;9126
l9127h:
	add a,d			;9127
	ld (ix+037h),a		;9128
	jp c,0715ah		;912b
	bit 3,a			;912e
	jr z,l9136h		;9130
	add a,010h		;9132
	jr c,l915ah		;9134
l9136h:
	rrca			;9136
	rrca			;9137
	rrca			;9138
	rrca			;9139
	and 00fh		;913a
l913ch:
	ld e,a			;913c
	bit 4,(ix+030h)		;913d
	jr z,l9148h		;9141
	cp (ix+020h)		;9143
	jr nc,l914dh		;9146
l9148h:
	ld a,b			;9148
	cp (ix+022h)		;9149
	ret nz			;914c
l914dh:
	res 5,(ix+00fh)		;914d
	res 5,(ix+030h)		;9151
	ld (ix+01fh),000h	;9155
	ret			;9159
l915ah:
	ld (ix+037h),0f0h	;915a
	ld a,00fh		;915e
	jr l913ch		;9160
l9162h:
	set 3,(ix+030h)		;9162
	jr l914dh		;9166
	bit 7,(ix+030h)		;9168
	ret nz			;916c
	bit 7,(ix+00dh)		;916d
	jr nz,l917fh		;9171
	ld (ix+033h),010h	;9173
	res 6,(ix+030h)		;9177
	set 7,(ix+00dh)		;917b
l917fh:
	ld a,(ix+00dh)		;917f
	and 030h		;9182
	jr z,l918eh		;9184
	cp 010h			;9186
	jr z,l918eh		;9188
	cp 020h			;918a
	jr z,l918eh		;918c
l918eh:
	ld e,(ix+032h)		;918e
	ld a,(ix+033h)		;9191
	add a,e			;9194
	jr nc,l919bh		;9195
	set 6,(ix+030h)		;9197
l919bh:
	ld (ix+033h),a		;919b
	and 0f0h		;919e
	rrca			;91a0
	rrca			;91a1
	rrca			;91a2
	rrca			;91a3
	bit 6,(ix+030h)		;91a4
	jr z,l91bah		;91a8
	bit 4,(ix+031h)		;91aa
	jr z,l91b8h		;91ae
	res 6,(ix+030h)		;91b0
	and 00fh		;91b4
	jr l91bah		;91b6
l91b8h:
	add a,010h		;91b8
l91bah:
	ld (ix+031h),a		;91ba
	cp 020h			;91bd
	ret c			;91bf
	and 01fh		;91c0
	ld (ix+031h),a		;91c2
	ret			;91c5
	ld de,0c854h		;91c6
	ld a,(de)		;91c9
	ld b,a			;91ca
	inc de			;91cb
	ld a,(de)		;91cc
	ld c,a			;91cd
	ld hl,0c856h		;91ce
	inc (hl)		;91d1
	ld a,(hl)		;91d2
	cp b			;91d3
	ret nz			;91d4
	ld (hl),000h		;91d5
	inc hl			;91d7
	inc (hl)		;91d8
	ld a,(hl)		;91d9
	cp c			;91da
	ret nz			;91db
	ld hl,0c840h		;91dc
	res 0,(hl)		;91df
	xor a			;91e1
	ld hl,0c856h		;91e2
	ld (hl),a		;91e5
	inc hl			;91e6
	ld (hl),a		;91e7
	ld a,(0c640h)		;91e8
	ld e,a			;91eb
	ld a,(0c680h)		;91ec
	cp e			;91ef
	jr nz,l9200h		;91f0
	ld ix,0c680h		;91f2
	call 0724ah		;91f6
	ld ix,0c6c0h		;91f9
	call 0724ah		;91fd
l9200h:
	ld de,00040h		;9200
	ld ix,0c600h		;9203
	call 0724ah		;9207
	add ix,de		;920a
	call 0724ah		;920c
	ld ix,0c700h		;920f
	call 0724ah		;9213
	add ix,de		;9216
	call 0724ah		;9218
	add ix,de		;921b
	call 0724ah		;921d
	add ix,de		;9220
	call 0724ah		;9222
	ret			;9225
	ld a,(0c640h)		;9226
	ld b,a			;9229
	ld a,(0c680h)		;922a
	cp b			;922d
	jr z,l9236h		;922e
	ld a,(0c858h)		;9230
	and 0f3h		;9233
	ret z			;9235
l9236h:
	bit 2,(ix+00dh)		;9236
	jr nz,l9247h		;923a
	ld a,(0c857h)		;923c
	ld b,a			;923f
	ld a,e			;9240
	sub b			;9241
	ld e,000h		;9242
	ret m			;9244
	ld e,a			;9245
	ret			;9246
l9247h:
	ld e,000h		;9247
	ret			;9249
	xor a			;924a
	ld (ix+000h),a		;924b
	ld (ix+001h),a		;924e
	ld (ix+005h),a		;9251
	ld (ix+006h),a		;9254
	ld (ix+00ah),a		;9257
	ld (ix+00bh),a		;925a
	ld (ix+00ch),a		;925d
	ld (ix+00dh),a		;9260
	ld (ix+00eh),a		;9263
	ld (ix+00fh),a		;9266
	ld a,(0c858h)		;9269
	cp 008h			;926c
	ret nc			;926e
	nop			;926f
	cp 004h			;9270
	ld hl,0c85bh		;9272
	jr nz,l9286h		;9275
	res 0,(hl)		;9277
	res 1,(hl)		;9279
	bit 3,(hl)		;927b
	ret z			;927d
	bit 2,(hl)		;927e
	ret z			;9280
	set 2,(hl)		;9281
	res 3,(hl)		;9283
	ret			;9285
l9286h:
	res 2,(hl)		;9286
	res 3,(hl)		;9288
	ret			;928a
	cp 0e0h			;928b
	jp c,0757ch		;928d
	and 01fh		;9290
	push hl			;9292
	ld hl,072a0h		;9293
	add a,a			;9296
	ld e,a			;9297
	ld d,000h		;9298
	add hl,de		;929a
	ld e,(hl)		;929b
	inc hl			;929c
	ld d,(hl)		;929d
	ex de,hl		;929e
	jp (hl)			;929f
	sbc a,072h		;92a0
	call p,0de72h		;92a2
	ld (hl),d		;92a5
	call p,01172h		;92a6
	ld (hl),e		;92a9
	dec sp			;92aa
	ld (hl),e		;92ab
	ld c,a			;92ac
	ld (hl),e		;92ad
	ld e,a			;92ae
	ld (hl),e		;92af
	ld (hl),c		;92b0
	ld (hl),e		;92b1
	add a,b			;92b2
	ld (hl),e		;92b3
	adc a,e			;92b4
	ld (hl),e		;92b5
	xor d			;92b6
	ld (hl),e		;92b7
	ld (iy+007h),e		;92b8
	ld (hl),h		;92bb
	ld hl,(03574h)		;92bc
	ld (hl),h		;92bf
	dec sp			;92c0
	ld (hl),h		;92c1
	ld b,l			;92c2
	ld (hl),h		;92c3
	ld h,b			;92c4
	ld (hl),h		;92c5
	ld l,a			;92c6
	ld (hl),h		;92c7
	ld (hl),l		;92c8
	ld (hl),h		;92c9
	ld a,e			;92ca
	ld (hl),h		;92cb
	add a,l			;92cc
	ld (hl),h		;92cd
	adc a,a			;92ce
	ld (hl),h		;92cf
	sbc a,d			;92d0
	ld (hl),h		;92d1
	cp 074h			;92d2
	add hl,bc		;92d4
	ld (hl),l		;92d5
	ld de,02975h		;92d6
	ld (hl),l		;92d9
	ld b,e			;92da
	ld (hl),l		;92db
	ld b,(hl)		;92dc
	ld (hl),l		;92dd
	pop hl			;92de
l92dfh:
	res 6,(ix+00eh)		;92df
	ld a,(hl)		;92e3
	and 003h		;92e4
	ld (ix+00dh),a		;92e6
	ld b,a			;92e9
	inc hl			;92ea
	ld a,(hl)		;92eb
	ld (ix+013h),a		;92ec
	ld a,b			;92ef
	or a			;92f0
	ret nz			;92f1
	dec hl			;92f2
	ret			;92f3
	pop hl			;92f4
	ld a,(0c858h)		;92f5
	cp 004h			;92f8
	ld a,(0c85bh)		;92fa
	jr nz,l9308h		;92fd
	set 0,a			;92ff
	res 1,a			;9301
	ld (0c85bh),a		;9303
	jr l92dfh		;9306
l9308h:
	set 2,a			;9308
	res 3,a			;930a
	ld (0c85bh),a		;930c
	jr l92dfh		;930f
	pop hl			;9311
	inc hl			;9312
	ld a,(hl)		;9313
	and 01fh		;9314
	ld b,a			;9316
	ld a,(0c858h)		;9317
	cp 004h			;931a
	ld a,b			;931c
	jr nz,l932dh		;931d
	ld (0c859h),a		;931f
	ld a,(0c85bh)		;9322
	set 0,a			;9325
	res 1,a			;9327
	ld (0c85bh),a		;9329
	ret			;932c
l932dh:
	ld (0c85ah),a		;932d
	ld a,(0c85bh)		;9330
	set 2,a			;9333
	res 3,a			;9335
	ld (0c85bh),a		;9337
	ret			;933a
	pop hl			;933b
	inc hl			;933c
	res 3,(ix+00dh)		;933d
	ld a,(hl)		;9341
	ld (0c85ch),a		;9342
	ld de,0c85bh		;9345
	ld a,(de)		;9348
	set 5,a			;9349
	ld (de),a		;934b
	jp 07350h		;934c
	pop hl			;934f
	inc hl			;9350
	ld a,(hl)		;9351
	ld (0c85eh),a		;9352
	ld de,0c85bh		;9355
	ld a,(de)		;9358
	set 6,a			;9359
	ld (de),a		;935b
	jp 07360h		;935c
	pop hl			;935f
	inc hl			;9360
	ld a,(hl)		;9361
	ld (0c85dh),a		;9362
	ld de,0c85bh		;9365
	ld a,(de)		;9368
	set 7,a			;9369
	ld (de),a		;936b
	set 2,(ix+00dh)		;936c
	ret			;9370
	pop hl			;9371
	ld de,0c85bh		;9372
	xor a			;9375
	ld (de),a		;9376
	ld a,(ix+00dh)		;9377
	and 0f3h		;937a
	ld (ix+00dh),a		;937c
	ret			;937f
	pop hl			;9380
	inc hl			;9381
	ld a,(hl)		;9382
	ld (ix+014h),a		;9383
	xor a			;9386
	ld (ix+02ch),a		;9387
	ret			;938a
	pop hl			;938b
	inc hl			;938c
	ld a,(hl)		;938d
	and 0f0h		;938e
	jr z,l939fh		;9390
	rrca			;9392
	rrca			;9393
	rrca			;9394
	rrca			;9395
	ld (ix+036h),a		;9396
	set 0,(ix+030h)		;9399
	jr l93a3h		;939d
l939fh:
	res 0,(ix+030h)		;939f
l93a3h:
	ld a,(hl)		;93a3
	and 00fh		;93a4
	ld (ix+015h),a		;93a6
	ret			;93a9
	pop hl			;93aa
	inc hl			;93ab
	ld a,(ix+00fh)		;93ac
	and 080h		;93af
	ld (ix+00fh),a		;93b1
	ld a,(hl)		;93b4
	and 0f0h		;93b5
	rrca			;93b7
	rrca			;93b8
	rrca			;93b9
	rrca			;93ba
	cp 008h			;93bb
	jp nc,073c4h		;93bd
	set 2,(ix+00fh)		;93c0
	res 3,a			;93c4
	inc a			;93c6
	bit 2,(ix+00fh)		;93c7
	jp nz,073d2h		;93cb
	set 1,(ix+00fh)		;93ce
	ld (ix+021h),a		;93d2
	ld a,(hl)		;93d5
	and 00fh		;93d6
	cp 008h			;93d8
	jp c,073e1h		;93da
	set 4,(ix+00fh)		;93dd
	res 3,a			;93e1
	inc a			;93e3
	ld (ix+022h),a		;93e4
	inc hl			;93e7
	ld a,(hl)		;93e8
	and 0f0h		;93e9
	rrca			;93eb
	rrca			;93ec
	rrca			;93ed
	rrca			;93ee
	ld (ix+023h),a		;93ef
	ld a,(hl)		;93f2
	and 00fh		;93f3
	ld (ix+024h),a		;93f5
	set 0,(ix+00fh)		;93f8
	ret			;93fc
	pop hl			;93fd
	ld a,(ix+00fh)		;93fe
	and 080h		;9401
	ld (ix+00fh),a		;9403
	ret			;9406
	pop hl			;9407
	inc hl			;9408
	ld a,(hl)		;9409
	and 0f0h		;940a
	rrca			;940c
	rrca			;940d
	rrca			;940e
	rrca			;940f
	jp z,07421h		;9410
	ld (ix+035h),a		;9413
	ld a,(hl)		;9416
	and 00fh		;9417
	ld (ix+025h),a		;9419
	set 0,(ix+030h)		;941c
	ret			;9420
	res 0,(ix+030h)		;9421
	ld a,(hl)		;9425
	ld (ix+025h),a		;9426
	ret			;9429
	pop hl			;942a
	inc hl			;942b
	ld a,(hl)		;942c
	ld (ix+026h),a		;942d
	set 1,(ix+00eh)		;9430
	ret			;9434
	pop hl			;9435
	res 1,(ix+00eh)		;9436
	ret			;943a
	pop hl			;943b
	ld a,(ix+00eh)		;943c
	and 0e2h		;943f
	ld (ix+00eh),a		;9441
	ret			;9444
	pop hl			;9445
	inc hl			;9446
	ld a,(ix+00eh)		;9447
	or 014h			;944a
	ld (ix+00eh),a		;944c
	ld a,(hl)		;944f
	and 00fh		;9450
	ld (ix+01ch),a		;9452
	ld a,(hl)		;9455
	and 0f0h		;9456
	rrca			;9458
	rrca			;9459
	rrca			;945a
	rrca			;945b
	ld (ix+01bh),a		;945c
	ret			;945f
	pop hl			;9460
	inc hl			;9461
	ld a,(hl)		;9462
	ld (ix+01ah),a		;9463
	ld a,(ix+00eh)		;9466
	or 00ch			;9469
	ld (ix+00eh),a		;946b
	ret			;946e
	pop hl			;946f
	res 3,(ix+00eh)		;9470
	ret			;9474
	pop hl			;9475
	set 6,(ix+00eh)		;9476
	ret			;947a
	pop hl			;947b
	ld a,l			;947c
	ld (ix+02dh),a		;947d
	ld a,h			;9480
	ld (ix+02eh),a		;9481
	ret			;9484
	pop hl			;9485
	ld a,(ix+00eh)		;9486
	and 09fh		;9489
	ld (ix+00eh),a		;948b
	ret			;948e
	pop hl			;948f
	set 7,(ix+00eh)		;9490
	inc hl			;9494
	ld a,(hl)		;9495
	ld (ix+02fh),a		;9496
	ret			;9499
	pop hl			;949a
	inc hl			;949b
	ld a,(hl)		;949c
	bit 7,a			;949d
	jr nz,l94c4h		;949f
	set 7,(ix+00fh)		;94a1
	res 7,(ix+00dh)		;94a5
	res 6,(ix+00dh)		;94a9
	res 3,(ix+03ch)		;94ad
	ld de,06442h		;94b1
	add a,a			;94b4
	add a,e			;94b5
	ld e,a			;94b6
	jr nc,l94bah		;94b7
	inc d			;94b9
l94bah:
	ld a,(de)		;94ba
	ld (ix+027h),a		;94bb
	inc de			;94be
	ld a,(de)		;94bf
	ld (ix+028h),a		;94c0
	ret			;94c3
l94c4h:
	set 7,(ix+00fh)		;94c4
	set 6,(ix+00dh)		;94c8
	set 7,(ix+00dh)		;94cc
	res 3,(ix+03ch)		;94d0
	ld a,(hl)		;94d4
	and 07fh		;94d5
	call 074b1h		;94d7
	inc hl			;94da
	ld a,(hl)		;94db
	bit 7,a			;94dc
	jr nz,l94e6h		;94de
	res 4,(ix+00dh)		;94e0
	jr l94eah		;94e4
l94e6h:
	set 4,(ix+00dh)		;94e6
l94eah:
	bit 6,a			;94ea
	jr nz,l94f4h		;94ec
	res 5,(ix+00dh)		;94ee
	jr l94f8h		;94f2
l94f4h:
	set 5,(ix+00dh)		;94f4
l94f8h:
	and 03fh		;94f8
	ld (ix+032h),a		;94fa
	ret			;94fd
	pop hl			;94fe
	call 07535h		;94ff
	ld (ix+007h),e		;9502
	ld (ix+008h),d		;9505
	ret			;9508
	pop hl			;9509
	ld l,(ix+007h)		;950a
	ld h,(ix+008h)		;950d
	ret			;9510
	pop hl			;9511
	inc hl			;9512
	ld a,(ix+005h)		;9513
	inc a			;9516
	cp (hl)			;9517
	jr z,l9524h		;9518
	ld (ix+005h),a		;951a
	ld l,(ix+02dh)		;951d
	ld h,(ix+02eh)		;9520
	ret			;9523
l9524h:
	ld (ix+005h),000h	;9524
	ret			;9528
	pop hl			;9529
	inc hl			;952a
	ld a,(ix+006h)		;952b
	inc a			;952e
	cp (hl)			;952f
	jr z,l953ch		;9530
	ld (ix+006h),a		;9532
l9535h:
	inc hl			;9535
	ld e,(hl)		;9536
	inc hl			;9537
	ld d,(hl)		;9538
	ex de,hl		;9539
	dec hl			;953a
	ret			;953b
l953ch:
	inc hl			;953c
	inc hl			;953d
	ld (ix+006h),000h	;953e
	ret			;9542
	pop hl			;9543
	jr l9535h		;9544
	pop hl			;9546
	inc hl			;9547
	ld b,(ix+009h)		;9548
	ld a,(hl)		;954b
	ld (ix+009h),a		;954c
	cp 001h			;954f
	ld a,b			;9551
	jp z,0756ch		;9552
	cp 001h			;9555
	ret nz			;9557
	ld a,(ix+00eh)		;9558
	ld (ix+02ah),a		;955b
	ld a,(ix+00fh)		;955e
	ld (ix+02bh),a		;9561
	xor a			;9564
	ld (ix+00eh),a		;9565
	ld (ix+00fh),a		;9568
	ret			;956b
	cp 001h			;956c
	ret z			;956e
	ld a,(ix+02ah)		;956f
	ld (ix+00eh),a		;9572
	ld a,(ix+02bh)		;9575
	ld (ix+00fh),a		;9578
	ret			;957b
	and 00fh		;957c
	push hl			;957e
	ld hl,0758ch		;957f
	add a,a			;9582
	ld e,a			;9583
	ld d,000h		;9584
	add hl,de		;9586
	ld e,(hl)		;9587
	inc hl			;9588
	ld d,(hl)		;9589
	ex de,hl		;958a
	jp (hl)			;958b
	xor h			;958c
	ld (hl),l		;958d
	xor h			;958e
	ld (hl),l		;958f
	xor h			;9590
	ld (hl),l		;9591
	xor h			;9592
	ld (hl),l		;9593
	xor h			;9594
	ld (hl),l		;9595
	xor h			;9596
	ld (hl),l		;9597
	or a			;9598
	ld (hl),l		;9599
	jp nc,0e975h		;959a
	ld (hl),l		;959d
	di			;959e
	ld (hl),l		;959f
	push af			;95a0
	ld (hl),l		;95a1
	rst 30h			;95a2
	ld (hl),l		;95a3
	cp 075h			;95a4
	inc b			;95a6
	halt			;95a7
	rst 20h			;95a8
	halt			;95a9
	call p,0e176h		;95aa
	ld a,(hl)		;95ad
	and 00fh		;95ae
	ld (ix+016h),a		;95b0
	ld (ix+029h),a		;95b3
	ret			;95b6
	pop hl			;95b7
	ld a,(ix+03ch)		;95b8
	or 050h			;95bb
	ld (ix+03ch),a		;95bd
	res 7,(ix+03ch)		;95c0
	inc hl			;95c4
	ld a,(hl)		;95c5
	ld (ix+039h),a		;95c6
	inc hl			;95c9
	ld a,(hl)		;95ca
	ld (ix+03ah),a		;95cb
	ld (ix+03bh),a		;95ce
	ret			;95d1
	pop hl			;95d2
	ld a,(ix+03ch)		;95d3
	or 0d0h			;95d6
	ld (ix+03ch),a		;95d8
	inc hl			;95db
	ld a,(hl)		;95dc
	ld (ix+039h),a		;95dd
	inc hl			;95e0
	ld a,(hl)		;95e1
	ld (ix+03ah),a		;95e2
	ld (ix+03bh),a		;95e5
	ret			;95e8
	pop hl			;95e9
	ld a,(ix+03ch)		;95ea
	and 00fh		;95ed
	ld (ix+03ch),a		;95ef
	ret			;95f2
	pop hl			;95f3
	ret			;95f4
	pop hl			;95f5
	ret			;95f6
	pop hl			;95f7
	inc hl			;95f8
	ld a,(hl)		;95f9
	ld (ix+034h),a		;95fa
	ret			;95fd
	pop hl			;95fe
	xor a			;95ff
	ld (ix+034h),a		;9600
	ret			;9603
	pop hl			;9604
	inc hl			;9605
	ld a,(ix+00fh)		;9606
	and 080h		;9609
	ld (ix+00fh),a		;960b
	ld a,(hl)		;960e
	and 0f0h		;960f
	rrca			;9611
	rrca			;9612
	rrca			;9613
	rrca			;9614
	cp 008h			;9615
	jp nc,0761eh		;9617
	set 2,(ix+00fh)		;961a
	res 3,a			;961e
	inc a			;9620
	bit 2,(ix+00fh)		;9621
	jp nz,0762ch		;9625
	set 1,(ix+00fh)		;9628
	ld (ix+021h),a		;962c
	ld a,(hl)		;962f
	and 00fh		;9630
	ld (ix+022h),a		;9632
	inc hl			;9635
	ld a,(hl)		;9636
	and 0f0h		;9637
	rrca			;9639
	rrca			;963a
	rrca			;963b
	rrca			;963c
	ld (ix+023h),a		;963d
	ld a,(hl)		;9640
	and 00fh		;9641
	ld (ix+024h),a		;9643
	ld b,a			;9646
	ld a,(ix+023h)		;9647
	sub b			;964a
	ld (ix+038h),a		;964b
	ld e,000h		;964e
	ld d,000h		;9650
	ld b,(ix+022h)		;9652
	ld a,(ix+023h)		;9655
l9658h:
	sub b			;9658
	jr c,l9664h		;9659
	inc d			;965b
	ld (ix+023h),a		;965c
	or a			;965f
	jr z,l9681h		;9660
	jr l9658h		;9662
l9664h:
	ld a,b			;9664
	ld b,(ix+023h)		;9665
	sub b			;9668
	rlca			;9669
	rlca			;966a
	rlca			;966b
	rlca			;966c
	and 0f0h		;966d
	ld (ix+023h),a		;966f
	ld b,(ix+022h)		;9672
l9675h:
	sub b			;9675
	jr c,l9681h		;9676
	inc e			;9678
	ld (ix+023h),a		;9679
	or a			;967c
	jr z,l9681h		;967d
	jr l9675h		;967f
l9681h:
	ld a,e			;9681
	or a			;9682
	jr z,l9688h		;9683
	cpl			;9685
	and 00fh		;9686
l9688h:
	ld (ix+023h),a		;9688
	ld a,d			;968b
	rlca			;968c
	rlca			;968d
	rlca			;968e
	rlca			;968f
	and 0f0h		;9690
	or (ix+023h)		;9692
	ld (ix+023h),a		;9695
	ld e,000h		;9698
	ld d,000h		;969a
	ld b,(ix+022h)		;969c
	ld a,(ix+024h)		;969f
l96a2h:
	sub b			;96a2
	jr c,l96aeh		;96a3
	inc d			;96a5
	ld (ix+024h),a		;96a6
	or a			;96a9
	jr z,l96cbh		;96aa
	jr l96a2h		;96ac
l96aeh:
	ld a,b			;96ae
	ld b,(ix+024h)		;96af
	sub b			;96b2
	rlca			;96b3
	rlca			;96b4
	rlca			;96b5
	rlca			;96b6
	and 0f0h		;96b7
	ld (ix+024h),a		;96b9
	ld b,(ix+022h)		;96bc
l96bfh:
	sub b			;96bf
	jr c,l96cbh		;96c0
	inc e			;96c2
	ld (ix+024h),a		;96c3
	or a			;96c6
	jr z,l96cbh		;96c7
	jr l96bfh		;96c9
l96cbh:
	ld a,e			;96cb
	or a			;96cc
	jr z,l96d2h		;96cd
	cpl			;96cf
	and 00fh		;96d0
l96d2h:
	ld (ix+024h),a		;96d2
	ld a,d			;96d5
	rlca			;96d6
	rlca			;96d7
	rlca			;96d8
	rlca			;96d9
	and 0f0h		;96da
	or (ix+024h)		;96dc
	ld (ix+024h),a		;96df
	set 6,(ix+00fh)		;96e2
	ret			;96e6
	pop hl			;96e7
	bit 1,(ix+009h)		;96e8
	jp z,0747ch		;96ec
	set 5,(ix+00eh)		;96ef
	ret			;96f3
	pop hl			;96f4
	res 7,(ix+00eh)		;96f5
	ret			;96f9
	ex af,af'		;96fa
	cp 0aeh			;96fb
	ld a,d			;96fd
	inc c			;96fe
	djnz $-58		;96ff
	ld a,d			;9701
	ret m			;9702
	ld a,d			;9703
	inc c			;9704
	ld d,038h		;9705
	ld a,e			;9707
	ld h,e			;9708
	ld a,e			;9709
	inc c			;970a
	inc d			;970b
	sub (hl)		;970c
	ld a,e			;970d
	ld sp,(0140ch)		;970e
	ld b,l			;9712
	ld a,h			;9713
	ld b,l			;9714
	ld a,h			;9715
	inc c			;9716
	jr l975eh		;9717
	ld a,h			;9719
	ld b,l			;971a
	ld a,h			;971b
	inc c			;971c
	jr l9764h		;971d
	ld a,h			;971f
	ld b,l			;9720
	ld a,h			;9721
	inc c			;9722
	inc (hl)		;9723
	ld b,(hl)		;9724
	ld a,h			;9725
	adc a,a			;9726
l9727h:
	ld a,h			;9727
	inc c			;9728
	ld e,h			;9729
	call c,0297ch		;972a
	ld a,l			;972d
	inc c			;972e
	ld h,b			;972f
	ld a,l			;9730
	ld a,l			;9731
	ret c			;9732
	ld a,l			;9733
	inc c			;9734
	ld h,h			;9735
	inc l			;9736
	ld a,(hl)		;9737
	inc l			;9738
	ld a,(hl)		;9739
	inc c			;973a
	ld l,b			;973b
	dec l			;973c
	ld a,(hl)		;973d
	ld c,a			;973e
	ld a,(hl)		;973f
	inc c			;9740
	ld l,h			;9741
	add a,d			;9742
	ld a,(hl)		;9743
	xor c			;9744
	ld a,(hl)		;9745
	inc c			;9746
	ld l,h			;9747
	rst 30h			;9748
	ld a,(hl)		;9749
	ld sp,00c7fh		;974a
	ld (hl),b		;974d
	add a,(hl)		;974e
	ld a,a			;974f
l9750h:
	xor e			;9750
	ld a,a			;9751
	inc c			;9752
	jr nc,l9727h		;9753
	ld a,a			;9755
	inc c			;9756
	add a,b			;9757
	inc c			;9758
	jr nc,l97ach		;9759
	add a,b			;975b
	cp b			;975c
	add a,b			;975d
l975eh:
	inc c			;975e
	inc l			;975f
	dec c			;9760
	add a,c			;9761
	ld d,h			;9762
	add a,c			;9763
l9764h:
	inc c			;9764
	ld c,h			;9765
	sbc a,a			;9766
	add a,c			;9767
	jp po,00c81h		;9768
	ld d,h			;976b
	ld l,082h		;976c
	sbc a,h			;976e
	add a,d			;976f
	inc c			;9770
	jr c,l977eh		;9771
	add a,e			;9773
l9774h:
	ld a,(00c83h)		;9774
	inc h			;9777
	ld l,c			;9778
	add a,e			;9779
	sub h			;977a
	add a,e			;977b
	inc c			;977c
	ld b,h			;977d
l977eh:
	pop bc			;977e
	add a,e			;977f
	rst 28h			;9780
	add a,e			;9781
	inc c			;9782
	jr z,l97d7h		;9783
	add a,h			;9785
	ld d,d			;9786
	add a,h			;9787
	inc c			;9788
	ld b,h			;9789
	adc a,c			;978a
	add a,h			;978b
	ex af,af'		;978c
	add a,l			;978d
	inc c			;978e
	ld c,h			;978f
	add a,e			;9790
	add a,l			;9791
	push hl			;9792
	add a,l			;9793
	inc c			;9794
	jr nz,l97e2h		;9795
	add a,(hl)		;9797
	ld l,h			;9798
	add a,(hl)		;9799
	inc c			;979a
	ld b,h			;979b
	ld l,082h		;979c
	sbc a,h			;979e
	add a,d			;979f
	inc c			;97a0
	ld d,b			;97a1
	adc a,a			;97a2
	add a,(hl)		;97a3
	xor (hl)		;97a4
	add a,(hl)		;97a5
	inc c			;97a6
	inc e			;97a7
	rst 8			;97a8
	add a,(hl)		;97a9
	nop			;97aa
	add a,a			;97ab
l97ach:
	inc c			;97ac
	jr nz,l97e2h		;97ad
	add a,a			;97af
	ld h,h			;97b0
	add a,a			;97b1
	inc c			;97b2
	jr nz,l9750h		;97b3
l97b5h:
	add a,a			;97b5
	ret			;97b6
	add a,a			;97b7
	inc c			;97b8
	ld c,h			;97b9
	ld sp,hl		;97ba
	add a,a			;97bb
	ld h,a			;97bc
	adc a,b			;97bd
	inc c			;97be
	ld c,b			;97bf
	ret c			;97c0
	adc a,b			;97c1
	ld l,l			;97c2
	adc a,c			;97c3
	inc c			;97c4
	jr z,l9774h		;97c5
	adc a,c			;97c7
	pop bc			;97c8
	adc a,c			;97c9
	inc c			;97ca
	jr z,l97dfh		;97cb
	adc a,d			;97cd
	ld e,c			;97ce
	adc a,d			;97cf
	inc c			;97d0
	inc a			;97d1
	and d			;97d2
	adc a,d			;97d3
	cp c			;97d4
	adc a,d			;97d5
	inc c			;97d6
l97d7h:
	ld b,b			;97d7
	rst 10h			;97d8
	adc a,d			;97d9
	call p,00c8ah		;97da
	ld b,b			;97dd
	inc d			;97de
l97dfh:
	adc a,e			;97df
	cp e			;97e0
	adc a,e			;97e1
l97e2h:
	inc c			;97e2
	inc (hl)		;97e3
	inc (hl)		;97e4
	adc a,h			;97e5
	ld h,b			;97e6
	adc a,h			;97e7
	inc c			;97e8
	jr c,l986ah		;97e9
	adc a,h			;97eb
	cp b			;97ec
	adc a,h			;97ed
	inc c			;97ee
	ld b,b			;97ef
	pop af			;97f0
l97f1h:
	adc a,h			;97f1
	dec c			;97f2
	adc a,l			;97f3
	inc c			;97f4
	ld b,b			;97f5
	inc l			;97f6
	adc a,l			;97f7
	ld a,l			;97f8
	adc a,l			;97f9
	inc c			;97fa
	ld c,b			;97fb
	jp c,0028dh		;97fc
	adc a,(hl)		;97ff
l9800h:
	inc c			;9800
	jr c,l982bh		;9801
	adc a,(hl)		;9803
	ld h,l			;9804
	adc a,(hl)		;9805
	inc c			;9806
	jr c,l97b5h		;9807
	adc a,(hl)		;9809
	push bc			;980a
	adc a,(hl)		;980b
	inc c			;980c
	jr c,l9827h		;980d
	adc a,a			;980f
	add a,e			;9810
	adc a,a			;9811
	inc c			;9812
	ld c,h			;9813
	ret p			;9814
	adc a,a			;9815
	cp b			;9816
	sub b			;9817
	inc c			;9818
	ld d,h			;9819
	add a,b			;981a
	sub c			;981b
	ret z			;981c
	sub c			;981d
	inc c			;981e
	inc (hl)		;981f
l9820h:
	dec c			;9820
	sub d			;9821
	ld h,c			;9822
	sub d			;9823
	inc c			;9824
	ld d,h			;9825
	or (hl)			;9826
l9827h:
	sub d			;9827
	or (hl)			;9828
	sub d			;9829
	inc c			;982a
l982bh:
	ld d,(hl)		;982b
	or a			;982c
	sub d			;982d
	ld hl,00c93h		;982e
	jr nz,l97f1h		;9831
	sub e			;9833
	dec de			;9834
	sub h			;9835
	inc c			;9836
	ld bc,l9affh		;9837
	rst 38h			;983a
	sbc a,d			;983b
	inc c			;983c
	ld bc,l9affh		;983d
l9840h:
	rst 38h			;9840
	sbc a,d			;9841
	di			;9842
	sub b			;9843
	nop			;9844
	and b			;9845
	ld l,a			;9846
	and b			;9847
	xor e			;9848
	and b			;9849
	ex (sp),hl		;984a
	and b			;984b
	sub h			;984c
	and c			;984d
	jp m,0f3a1h		;984e
	sub b			;9851
	dec b			;9852
	cp l			;9853
	ld l,d			;9854
	cp l			;9855
	push de			;9856
	cp l			;9857
	sub b			;9858
	cp (hl)			;9859
	ld (hl),h		;985a
	cp a			;985b
	xor (hl)		;985c
	cp a			;985d
	di			;985e
	sub b			;985f
l9860h:
	ld (hl),0abh		;9860
	ld a,0ach		;9862
	inc l			;9864
	xor (hl)		;9865
	in a,(0afh)		;9866
	halt			;9868
	or c			;9869
l986ah:
	add a,d			;986a
	or e			;986b
	di			;986c
	sub b			;986d
	ld hl,(0bea5h)		;986e
	and l			;9871
	or 0a6h			;9872
	ld a,a			;9874
	xor b			;9875
	or b			;9876
	xor c			;9877
	ld (hl),c		;9878
	xor e			;9879
	di			;987a
	sub b			;987b
	exx			;987c
	xor l			;987d
	scf			;987e
	xor (hl)		;987f
l9880h:
	call m,001aeh		;9880
	or b			;9883
	cp l			;9884
	or b			;9885
	xor (hl)		;9886
	or c			;9887
	di			;9888
	sub b			;9889
	sub d			;988a
l988bh:
	or d			;988b
	dec l			;988c
l988dh:
	or e			;988d
	jp pe,0eab3h		;988e
	or h			;9891
	ei			;9892
	or l			;9893
	jp po,0f3b6h		;9894
	sub b			;9897
	sub (hl)		;9898
	and d			;9899
	ld b,e			;989a
	and e			;989b
	ld a,(hl)		;989c
	and h			;989d
	call p,045a5h		;989e
	and a			;98a1
	add a,e			;98a2
	xor b			;98a3
	di			;98a4
	sub b			;98a5
	sub h			;98a6
	xor c			;98a7
	ld d,e			;98a8
	xor d			;98a9
	ld e,l			;98aa
	xor e			;98ab
	ld c,l			;98ac
	xor h			;98ad
	ld h,d			;98ae
	xor l			;98af
	add a,(hl)		;98b0
	xor (hl)		;98b1
	di			;98b2
	sub b			;98b3
	xor c			;98b4
	xor a			;98b5
	ld h,(hl)		;98b6
	or b			;98b7
	ld c,d			;98b8
	or c			;98b9
	ld b,e			;98ba
	or d			;98bb
	sub l			;98bc
	or e			;98bd
	xor c			;98be
	or h			;98bf
	di			;98c0
	sub b			;98c1
	or c			;98c2
	xor b			;98c3
	jp (hl)			;98c4
	xor b			;98c5
	ld d,d			;98c6
	xor c			;98c7
	sbc a,d			;98c8
	xor c			;98c9
	ld b,b			;98ca
	xor d			;98cb
	cp e			;98cc
	xor d			;98cd
	di			;98ce
	sub b			;98cf
	ld bc,0369dh		;98d0
	sbc a,(hl)		;98d3
	and h			;98d4
	sbc a,a			;98d5
	inc b			;98d6
	and c			;98d7
	ld l,c			;98d8
	and d			;98d9
	ret			;98da
	and e			;98db
	di			;98dc
	sub b			;98dd
	rst 38h			;98de
	sbc a,d			;98df
	rst 38h			;98e0
	sbc a,d			;98e1
	rst 38h			;98e2
	sbc a,d			;98e3
	rst 38h			;98e4
	sbc a,d			;98e5
	rst 38h			;98e6
	sbc a,d			;98e7
	rst 38h			;98e8
	sbc a,d			;98e9
	di			;98ea
	sub b			;98eb
	rst 38h			;98ec
	sbc a,d			;98ed
	rst 38h			;98ee
	sbc a,d			;98ef
	rst 38h			;98f0
	sbc a,d			;98f1
	rst 38h			;98f2
	sbc a,d			;98f3
	rst 38h			;98f4
	sbc a,d			;98f5
	rst 38h			;98f6
	sbc a,d			;98f7
	di			;98f8
	sub b			;98f9
	rst 38h			;98fa
	sbc a,d			;98fb
	rst 38h			;98fc
	sbc a,d			;98fd
	rst 38h			;98fe
	sbc a,d			;98ff
	rst 38h			;9900
	sbc a,d			;9901
	rst 38h			;9902
	sbc a,d			;9903
	rst 38h			;9904
	sbc a,d			;9905
	rst 38h			;9906
	sub b			;9907
	sub 0b7h		;9908
	sub 0b7h		;990a
	sub 0b7h		;990c
	sub 0b7h		;990e
	sub 0b7h		;9910
	sub 0b7h		;9912
	sub 0b7h		;9914
	sub 0b7h		;9916
	rst 38h			;9918
	sub b			;9919
	rst 10h			;991a
	or a			;991b
	or l			;991c
	cp b			;991d
	sub b			;991e
	cp c			;991f
	ld (hl),c		;9920
	cp d			;9921
	ld a,(de)		;9922
	cp h			;9923
	cp b			;9924
	cp h			;9925
	rst 30h			;9926
	cp l			;9927
	ld sp,hl		;9928
	cp (hl)			;9929
	rst 38h			;992a
	sub b			;992b
	nop			;992c
	and b			;992d
	ld a,d			;992e
	and b			;992f
	ld (hl),l		;9930
	and c			;9931
	cp b			;9932
	and c			;9933
	ccf			;9934
	and d			;9935
	ret z			;9936
	and e			;9937
	ld e,b			;9938
	and l			;9939
	call pe,0ffa6h		;993a
	sub b			;993d
	exx			;993e
	or l			;993f
	jp (hl)			;9940
	or l			;9941
	dec (hl)		;9942
	or (hl)			;9943
	add a,c			;9944
	or (hl)			;9945
	and h			;9946
	or (hl)			;9947
	call m,048b6h		;9948
	or a			;994b
	sub e			;994c
	or a			;994d
	rst 38h			;994e
	sub b			;994f
	di			;9950
	sub h			;9951
	ld h,095h		;9952
	adc a,d			;9954
	sub l			;9955
	ld bc,02f96h		;9956
	sub (hl)		;9959
	ld e,e			;995a
	sub (hl)		;995b
	adc a,(hl)		;995c
	sub (hl)		;995d
	xor d			;995e
	sub (hl)		;995f
	rst 38h			;9960
	sub b			;9961
	sub h			;9962
	sub a			;9963
	inc bc			;9964
	sbc a,b			;9965
	sbc a,h			;9966
	sbc a,b			;9967
	inc e			;9968
	sbc a,c			;9969
	ld (hl),b		;996a
	sbc a,c			;996b
	or a			;996c
	sbc a,c			;996d
	jp m,02499h		;996e
	sbc a,d			;9971
	rst 38h			;9972
	sub b			;9973
	push bc			;9974
	cp d			;9975
	call z,0ccbah		;9976
	cp d			;9979
	call 014bah		;997a
	cp e			;997d
	dec e			;997e
	cp e			;997f
	ld b,h			;9980
	cp e			;9981
	ld l,e			;9982
	cp e			;9983
	rst 38h			;9984
	sub b			;9985
	push bc			;9986
	cp d			;9987
	adc a,d			;9988
	cp e			;9989
	out (0bbh),a		;998a
	ccf			;998c
	cp h			;998d
	sub h			;998e
	cp h			;998f
	dec e			;9990
	cp e			;9991
	ld b,h			;9992
	cp e			;9993
	ld l,e			;9994
	cp e			;9995
	rst 38h			;9996
	sub b			;9997
	xor a			;9998
	or l			;9999
	ld b,a			;999a
	or (hl)			;999b
	scf			;999c
	or a			;999d
	ld d,0b8h		;999e
	pop hl			;99a0
	cp b			;99a1
	or h			;99a2
	cp c			;99a3
	or d			;99a4
	cp d			;99a5
	jp p,0ffbbh		;99a6
	add a,b			;99a9
	exx			;99aa
	or a			;99ab
	exx			;99ac
	or a			;99ad
	cp (hl)			;99ae
	or a			;99af
	jp c,0e8b7h		;99b0
	or a			;99b3
	or 0b7h			;99b4
	inc e			;99b6
	cp b			;99b7
	ld b,b			;99b8
	cp b			;99b9
	rst 38h			;99ba
	sub b			;99bb
	ld h,h			;99bc
	cp b			;99bd
	add a,l			;99be
	cp b			;99bf
	adc a,(hl)		;99c0
	cp b			;99c1
	call z,043b8h		;99c2
	cp c			;99c5
	cp d			;99c6
	cp c			;99c7
	ld sp,0bcbah		;99c8
	cp d			;99cb
	rst 38h			;99cc
	sub b			;99cd
	ld a,h			;99ce
	sub h			;99cf
	adc a,d			;99d0
	sub h			;99d1
	sbc a,b			;99d2
	sub h			;99d3
	and (hl)		;99d4
	sub h			;99d5
	or l			;99d6
	sub h			;99d7
	call nz,0d394h		;99d8
	sub h			;99db
	jp po,0ff94h		;99dc
	ld bc,l9affh		;99df
	rst 38h			;99e2
	sbc a,d			;99e3
	rst 38h			;99e4
	sbc a,d			;99e5
	rst 38h			;99e6
	sbc a,d			;99e7
	rst 38h			;99e8
	sbc a,d			;99e9
	rst 38h			;99ea
	sbc a,d			;99eb
	rst 38h			;99ec
	sbc a,d			;99ed
	rst 38h			;99ee
	sbc a,d			;99ef
	rst 38h			;99f0
	rst 38h			;99f1
	jp 0c37ah		;99f2
	ld a,d			;99f5
	jp 0c37ah		;99f6
	ld a,d			;99f9
	jp 0c37ah		;99fa
	ld a,d			;99fd
	jp 0c37ah		;99fe
	ld a,d			;9a01
	jp m,0fe76h		;9a02
	halt			;9a05
	inc b			;9a06
	ld (hl),a		;9a07
	ld a,(bc)		;9a08
	ld (hl),a		;9a09
	djnz l9a83h		;9a0a
	ld d,077h		;9a0c
	inc e			;9a0e
	ld (hl),a		;9a0f
	ld (02877h),hl		;9a10
	ld (hl),a		;9a13
	ld l,077h		;9a14
	inc (hl)		;9a16
	ld (hl),a		;9a17
	ld a,(04077h)		;9a18
	ld (hl),a		;9a1b
	ld b,(hl)		;9a1c
	ld (hl),a		;9a1d
	ld c,h			;9a1e
	ld (hl),a		;9a1f
	ld d,d			;9a20
	ld (hl),a		;9a21
	ld e,b			;9a22
	ld (hl),a		;9a23
	ld e,(hl)		;9a24
	ld (hl),a		;9a25
	ld h,h			;9a26
	ld (hl),a		;9a27
	ld l,d			;9a28
	ld (hl),a		;9a29
	ld (hl),b		;9a2a
	ld (hl),a		;9a2b
	halt			;9a2c
	ld (hl),a		;9a2d
	ld a,h			;9a2e
	ld (hl),a		;9a2f
	add a,d			;9a30
	ld (hl),a		;9a31
	adc a,b			;9a32
	ld (hl),a		;9a33
	adc a,(hl)		;9a34
	ld (hl),a		;9a35
	sub h			;9a36
	ld (hl),a		;9a37
	sbc a,d			;9a38
	ld (hl),a		;9a39
	and b			;9a3a
	ld (hl),a		;9a3b
	and (hl)		;9a3c
	ld (hl),a		;9a3d
	xor h			;9a3e
	ld (hl),a		;9a3f
	or d			;9a40
	ld (hl),a		;9a41
	cp b			;9a42
	ld (hl),a		;9a43
	cp (hl)			;9a44
	ld (hl),a		;9a45
	call nz,0ca77h		;9a46
	ld (hl),a		;9a49
	ret nc			;9a4a
	ld (hl),a		;9a4b
	sub 077h		;9a4c
	call c,0e277h		;9a4e
	ld (hl),a		;9a51
	ret pe			;9a52
	ld (hl),a		;9a53
	xor 077h		;9a54
	call p,0fa77h		;9a56
	ld (hl),a		;9a59
	nop			;9a5a
	ld a,b			;9a5b
	ld b,078h		;9a5c
	inc c			;9a5e
	ld a,b			;9a5f
	ld (de),a		;9a60
	ld a,b			;9a61
	jr l9adch		;9a62
	ld e,078h		;9a64
	inc h			;9a66
	ld a,b			;9a67
	ld hl,(03078h)		;9a68
	ld a,b			;9a6b
l9a6ch:
	ld (hl),078h		;9a6c
l9a6eh:
	inc a			;9a6e
	ld a,b			;9a6f
	ld b,d			;9a70
	ld a,b			;9a71
	ld b,d			;9a72
	ld a,b			;9a73
	ld d,b			;9a74
	ld a,b			;9a75
	ld e,(hl)		;9a76
	ld a,b			;9a77
	ld l,h			;9a78
	ld a,b			;9a79
	ld a,d			;9a7a
	ld a,b			;9a7b
l9a7ch:
	adc a,b			;9a7c
	ld a,b			;9a7d
	sub (hl)		;9a7e
	ld a,b			;9a7f
	and h			;9a80
	ld a,b			;9a81
	or d			;9a82
l9a83h:
	ld a,b			;9a83
	ret nz			;9a84
	ld a,b			;9a85
	adc a,078h		;9a86
	call c,0ea78h		;9a88
	ld a,b			;9a8b
	ret m			;9a8c
	ld a,b			;9a8d
l9a8eh:
	ld b,079h		;9a8e
	ld b,079h		;9a90
	jr l9b0dh		;9a92
	ld hl,(03c79h)		;9a94
	ld a,c			;9a97
	ld c,(hl)		;9a98
	ld a,c			;9a99
l9a9ah:
	ld h,b			;9a9a
	ld a,c			;9a9b
	ld (hl),d		;9a9c
	ld a,c			;9a9d
	add a,h			;9a9e
	ld a,c			;9a9f
	sub (hl)		;9aa0
l9aa1h:
	ld a,c			;9aa1
	xor b			;9aa2
	ld a,c			;9aa3
	cp d			;9aa4
	ld a,c			;9aa5
	call z,0de79h		;9aa6
	ld a,c			;9aa9
l9aaah:
	ret p			;9aaa
	ld a,c			;9aab
	ld (bc),a		;9aac
	ld a,d			;9aad
	cp 001h			;9aae
	ret m			;9ab0
	dec d			;9ab1
	jp pe,0e90fh		;9ab2
	ld bc,0ebd1h		;9ab5
l9ab8h:
	ld bc,00488h		;9ab8
	ld (hl),h		;9abb
	ld b,h			;9abc
	ld (hl),h		;9abd
	ex de,hl		;9abe
	ld bc,0d023h		;9abf
	add hl,bc		;9ac2
	rst 38h			;9ac3
	cp 002h			;9ac4
	ret po			;9ac6
	ld (bc),a		;9ac7
l9ac8h:
	jp po,04001h		;9ac8
	ld h,b			;9acb
	call p,0786ch		;9acc
	add a,h			;9acf
	sub b			;9ad0
	sbc a,(hl)		;9ad1
	xor (hl)		;9ad2
	cp a			;9ad3
	ld h,b			;9ad4
	ld l,h			;9ad5
	ld a,b			;9ad6
	or 030h			;9ad7
	add a,h			;9ad9
	jr nc,l9a6ch		;9ada
l9adch:
	jr nc,l9a7ch		;9adc
	jr nz,l9a8eh		;9ade
	jr nz,l9aa1h		;9ae0
	jr nz,$+98		;9ae2
	jr nz,$+110		;9ae4
	jr nz,l9b60h		;9ae6
	djnz l9a6eh		;9ae8
	call p,sub_9e90h	;9aea
	xor (hl)		;9aed
	cp a			;9aee
	ld h,b			;9aef
	ld l,h			;9af0
	ld a,b			;9af1
	add a,h			;9af2
	sub b			;9af3
	sbc a,(hl)		;9af4
	xor (hl)		;9af5
	or 0ffh			;9af6
	cp 002h			;9af8
	ret m			;9afa
	dec b			;9afb
	jp po,09001h		;9afc
l9affh:
	ld h,b			;9aff
l9b00h:
	sub b			;9b00
	ld l,h			;9b01
	sub b			;9b02
	ld a,b			;9b03
	add a,b			;9b04
	add a,h			;9b05
	ld (hl),b		;9b06
	sub b			;9b07
	ld h,b			;9b08
	sbc a,(hl)		;9b09
	ld d,b			;9b0a
	xor (hl)		;9b0b
	ld b,b			;9b0c
l9b0dh:
	cp a			;9b0d
	ld d,b			;9b0e
	ld h,b			;9b0f
	ld d,b			;9b10
	ld l,h			;9b11
	ld b,b			;9b12
	ld a,b			;9b13
	jr nc,l9a9ah		;9b14
	jr nz,$-110		;9b16
	jr nz,l9ab8h		;9b18
	djnz $-80		;9b1a
	djnz $-63		;9b1c
	jr nc,l9b80h		;9b1e
	jr nc,l9b8eh		;9b20
	jr nz,l9b9ch		;9b22
	jr nz,l9aaah		;9b24
	djnz l9ab8h		;9b26
	djnz l9ac8h		;9b28
	nop			;9b2a
	xor (hl)		;9b2b
	call p,060bfh		;9b2c
	ld l,h			;9b2f
	ld a,b			;9b30
	add a,h			;9b31
	sub b			;9b32
	sbc a,(hl)		;9b33
	xor (hl)		;9b34
	cp a			;9b35
	or 0ffh			;9b36
	cp 002h			;9b38
	pop hl			;9b3a
	ld bc,004e4h		;9b3b
	ld b,0e4h		;9b3e
	ld a,(bc)		;9b40
	inc b			;9b41
	call po,0060bh		;9b42
	call po,0070ch		;9b45
	call po,00812h		;9b48
	call po,00714h		;9b4b
	call po,00515h		;9b4e
	call po,00316h		;9b51
	call po,00217h		;9b54
	call po,00218h		;9b57
	call po,00119h		;9b5a
	call po,0011ah		;9b5d
l9b60h:
	ret po			;9b60
	ld a,(bc)		;9b61
	rst 38h			;9b62
	cp 002h			;9b63
	jp po,0f801h		;9b65
	ld d,h			;9b68
	pop bc			;9b69
	ret p			;9b6a
	pop bc			;9b6b
	ret nz			;9b6c
	jp nz,0c210h		;9b6d
	ld h,b			;9b70
	pop bc			;9b71
	ret po			;9b72
	pop bc			;9b73
	ret nc			;9b74
	jp nz,0c240h		;9b75
	and b			;9b78
	jp 0b300h		;9b79
	ld d,b			;9b7c
	and e			;9b7d
	and b			;9b7e
	ld b,c			;9b7f
l9b80h:
	ret p			;9b80
	ld d,c			;9b81
	ret nz			;9b82
	ld d,d			;9b83
	djnz l9bd8h		;9b84
	ld h,b			;9b86
	ld d,c			;9b87
	ret po			;9b88
	ld d,c			;9b89
	ret nc			;9b8a
	ld d,d			;9b8b
	ld b,b			;9b8c
	ld d,d			;9b8d
l9b8eh:
	and b			;9b8e
	ld d,e			;9b8f
	nop			;9b90
	ld b,e			;9b91
	ld d,b			;9b92
	inc sp			;9b93
	and b			;9b94
	rst 38h			;9b95
	cp 002h			;9b96
	ret po			;9b98
	ld bc,001e2h		;9b99
l9b9ch:
	ld h,b			;9b9c
	ld c,(hl)		;9b9d
	ld h,b			;9b9e
	ld d,l			;9b9f
	ld d,b			;9ba0
	ld e,e			;9ba1
	ld d,b			;9ba2
	ld h,a			;9ba3
	ld b,b			;9ba4
	ld (hl),b		;9ba5
	ld b,b			;9ba6
	ld a,c			;9ba7
	ld b,b			;9ba8
	ld d,(hl)		;9ba9
	ld b,b			;9baa
	ld e,h			;9bab
	ld b,b			;9bac
	ld h,d			;9bad
	jr nc,l9c1ah		;9bae
	jr nc,l9c27h		;9bb0
	jr nc,l9c31h		;9bb2
	ret po			;9bb4
	ld bc,001e2h		;9bb5
	jr nc,l9c08h		;9bb8
	jr nc,l9c11h		;9bba
	jr nc,l9c19h		;9bbc
	jr nc,l9c27h		;9bbe
	jr nc,$+114		;9bc0
	jr nc,l9c3dh		;9bc2
	jr nz,$+88		;9bc4
	jr nz,$+94		;9bc6
	jr nz,$+100		;9bc8
	jr nz,$+108		;9bca
	jr nz,l9c43h		;9bcc
	jr nz,$+127		;9bce
	ret po			;9bd0
	ld bc,001e2h		;9bd1
	nop			;9bd4
	ld c,(hl)		;9bd5
	nop			;9bd6
	ld d,l			;9bd7
l9bd8h:
	nop			;9bd8
l9bd9h:
	ld e,e			;9bd9
	nop			;9bda
	ld h,a			;9bdb
	nop			;9bdc
	ld (hl),b		;9bdd
	nop			;9bde
	ld a,c			;9bdf
l9be0h:
	nop			;9be0
	ld d,(hl)		;9be1
	nop			;9be2
	ld e,h			;9be3
	nop			;9be4
	ld h,d			;9be5
l9be6h:
	nop			;9be6
	ld l,d			;9be7
l9be8h:
	nop			;9be8
	ld (hl),l		;9be9
	nop			;9bea
	ld a,l			;9beb
	rst 38h			;9bec
	cp 002h			;9bed
	ret m			;9bef
	add hl,bc		;9bf0
	jp po,0b001h		;9bf1
l9bf4h:
	sbc a,h			;9bf4
	and b			;9bf5
	xor d			;9bf6
	sub b			;9bf7
	or a			;9bf8
	add a,b			;9bf9
	adc a,070h		;9bfa
	pop hl			;9bfc
	ld h,b			;9bfd
	jp p,0ad80h		;9bfe
l9c01h:
	add a,b			;9c01
l9c02h:
	cp c			;9c02
	ld (hl),b		;9c03
	push bc			;9c04
	ld h,b			;9c05
	push de			;9c06
	ld d,b			;9c07
l9c08h:
	ex de,hl		;9c08
	ld b,b			;9c09
	ei			;9c0a
	ret po			;9c0b
	ld bc,001e2h		;9c0c
	ld h,b			;9c0f
l9c10h:
	sbc a,h			;9c10
l9c11h:
	ld h,b			;9c11
	xor d			;9c12
	ld d,b			;9c13
l9c14h:
	or a			;9c14
	ld d,b			;9c15
l9c16h:
	adc a,040h		;9c16
	pop hl			;9c18
l9c19h:
	ld b,b			;9c19
l9c1ah:
	jp p,0ad50h		;9c1a
	ld d,b			;9c1d
	cp c			;9c1e
	ld b,b			;9c1f
	push bc			;9c20
	ld b,b			;9c21
l9c22h:
	push de			;9c22
	jr nc,l9c10h		;9c23
	jr nc,l9c22h		;9c25
l9c27h:
	ret po			;9c27
	ld bc,001e2h		;9c28
l9c2bh:
	jr nz,$-98		;9c2b
	jr nz,l9bd9h		;9c2d
	jr nz,l9be8h		;9c2f
l9c31h:
	djnz l9c01h		;9c31
	djnz l9c16h		;9c33
	djnz $-12		;9c35
	djnz l9be6h		;9c37
	djnz l9bf4h		;9c39
	djnz l9c02h		;9c3b
l9c3dh:
	djnz l9c14h		;9c3d
	nop			;9c3f
	ex de,hl		;9c40
	nop			;9c41
	ei			;9c42
l9c43h:
	ret po			;9c43
	ld bc,0feffh		;9c44
	ld (bc),a		;9c47
l9c48h:
	call po,0e11fh		;9c48
	ld bc,0e209h		;9c4b
	ld bc,02080h		;9c4e
	ld d,b			;9c51
	ret m			;9c52
	sub h			;9c53
	nop			;9c54
	sub c			;9c55
	sub b			;9c56
	sub l			;9c57
	jr nc,l9be0h		;9c58
	jr nz,l9c3dh		;9c5a
	ld bc,0e209h		;9c5c
	ld bc,02180h		;9c5f
	ld (hl),h		;9c62
	nop			;9c63
	ld (hl),c		;9c64
	sub b			;9c65
	ld (hl),l		;9c66
	jr nc,l9ccfh		;9c67
	jr nz,l9cc2h		;9c69
	jr nc,$-30		;9c6b
	ld bc,001e1h		;9c6d
	inc b			;9c70
	jp po,05001h		;9c71
	jr nz,$+34		;9c74
l9c76h:
	ret m			;9c76
	ld b,h			;9c77
	nop			;9c78
	ld b,c			;9c79
	sub b			;9c7a
	ld b,l			;9c7b
	jr nc,l9cb4h		;9c7c
	jr nz,$-29		;9c7e
sub_9c80h:
	ld bc,0e203h		;9c80
	ld bc,02140h		;9c83
	inc d			;9c86
	nop			;9c87
	ld de,01590h		;9c88
	jr nc,$+24		;9c8b
	jr nz,$+1		;9c8d
	cp 002h			;9c8f
	ret m			;9c91
	jr z,l9c76h		;9c92
	ld bc,050b1h		;9c94
	ld (hl),c		;9c97
	nop			;9c98
	ret m			;9c99
	dec h			;9c9a
	or h			;9c9b
	add a,b			;9c9c
	and c			;9c9d
l9c9eh:
	sub b			;9c9e
	and l			;9c9f
	jr nc,l9c48h		;9ca0
	jr nz,l9c2bh		;9ca2
	jr nc,l9c9eh		;9ca4
	jr z,$-77		;9ca6
	ld d,b			;9ca8
	ret m			;9ca9
	dec h			;9caa
	or h			;9cab
	add a,b			;9cac
	and c			;9cad
	sub b			;9cae
	sub l			;9caf
	jr nc,$-120		;9cb0
	jr nz,l9d2bh		;9cb2
l9cb4h:
	jr nc,$-30		;9cb4
	ld (bc),a		;9cb6
	jp po,0f801h		;9cb7
	jr z,$+35		;9cba
	ld d,b			;9cbc
	ld bc,0f800h		;9cbd
	dec h			;9cc0
	inc h			;9cc1
l9cc2h:
	add a,b			;9cc2
	ld hl,02590h		;9cc3
	jr nc,l9ceeh		;9cc6
	jr nz,l9cf1h		;9cc8
	jr nc,$-6		;9cca
	jr z,l9cdfh		;9ccc
	ld d,b			;9cce
l9ccfh:
	ret m			;9ccf
	dec h			;9cd0
	inc d			;9cd1
	add a,b			;9cd2
	ld de,01590h		;9cd3
	jr nc,l9cdeh		;9cd6
	jr nz,$+9		;9cd8
	jr nc,$+1		;9cda
	cp 002h			;9cdc
l9cdeh:
	ret po			;9cde
l9cdfh:
	ld (bc),a		;9cdf
	jp po,06301h		;9ce0
	add a,b			;9ce3
	ld h,e			;9ce4
	ld b,b			;9ce5
	ld h,e			;9ce6
	djnz l9d4bh		;9ce7
	ret po			;9ce9
	ld h,d			;9cea
	and b			;9ceb
	ld h,d			;9cec
	add a,b			;9ced
l9ceeh:
	ld h,d			;9cee
	ld d,b			;9cef
	ld h,d			;9cf0
l9cf1h:
	jr nz,l9d55h		;9cf1
	nop			;9cf3
	ld h,c			;9cf4
	ret po			;9cf5
	ld h,c			;9cf6
	or b			;9cf7
l9cf8h:
	ld h,c			;9cf8
	sub b			;9cf9
	ld h,c			;9cfa
	ld (hl),b		;9cfb
l9cfch:
	ld h,c			;9cfc
	ld d,b			;9cfd
	ld h,c			;9cfe
	jr c,l9d62h		;9cff
	jr nz,l9d64h		;9d01
	djnz l9cfch		;9d03
	ld b,0f9h		;9d05
	ld h,h			;9d07
	ld a,l			;9d08
	rst 30h			;9d09
	ex af,af'		;9d0a
	ld sp,hl		;9d0b
	ld h,h			;9d0c
	ld a,l			;9d0d
	rst 30h			;9d0e
l9d0fh:
	ld a,(bc)		;9d0f
	ld sp,hl		;9d10
l9d11h:
	ld h,h			;9d11
	ld a,l			;9d12
	rst 18h			;9d13
	ld bc,00000h		;9d14
	di			;9d17
	nop			;9d18
	rst 20h			;9d19
	nop			;9d1a
	ret po			;9d1b
	nop			;9d1c
	out (000h),a		;9d1d
	rst 0			;9d1f
	nop			;9d20
	ret nz			;9d21
	nop			;9d22
	or l			;9d23
	nop			;9d24
	xor d			;9d25
	nop			;9d26
	and b			;9d27
	rst 38h			;9d28
	cp 002h			;9d29
l9d2bh:
	ret m			;9d2b
	inc e			;9d2c
	jp po,0c301h		;9d2d
	add a,b			;9d30
	jp 0c340h		;9d31
	djnz l9cf8h		;9d34
	ret po			;9d36
	jp nz,0c2a0h		;9d37
	add a,b			;9d3a
	jp nz,0c250h		;9d3b
	jr nz,$-60		;9d3e
	nop			;9d40
	pop bc			;9d41
	ret po			;9d42
	pop bc			;9d43
	or b			;9d44
	pop bc			;9d45
	sub b			;9d46
	pop bc			;9d47
	ld (hl),b		;9d48
	pop bc			;9d49
	ld d,b			;9d4a
l9d4bh:
	pop bc			;9d4b
	jr c,l9d0fh		;9d4c
	jr nz,l9d11h		;9d4e
	djnz l9d4bh		;9d50
	ld h,h			;9d52
	ld a,l			;9d53
	rst 30h			;9d54
l9d55h:
	rlca			;9d55
	ld sp,hl		;9d56
	ld h,h			;9d57
	ld a,l			;9d58
	rst 30h			;9d59
	ld a,(bc)		;9d5a
	ld sp,hl		;9d5b
	ld h,h			;9d5c
	ld a,l			;9d5d
	rst 30h			;9d5e
	inc c			;9d5f
	ld sp,hl		;9d60
	ld h,h			;9d61
l9d62h:
	ld a,l			;9d62
	rst 38h			;9d63
l9d64h:
	pop bc			;9d64
	nop			;9d65
	ret nz			;9d66
	di			;9d67
	ret nz			;9d68
	rst 20h			;9d69
	ret nz			;9d6a
	ret po			;9d6b
	ret nz			;9d6c
	out (0c0h),a		;9d6d
	rst 0			;9d6f
	ret nz			;9d70
	ret nz			;9d71
	ret nz			;9d72
	or l			;9d73
	ret nz			;9d74
	xor d			;9d75
	ret nz			;9d76
	and b			;9d77
	ret nz			;9d78
	sub e			;9d79
	ret nz			;9d7a
	add a,l			;9d7b
	jp m,002feh		;9d7c
	jp po,08001h		;9d7f
	ld (de),a		;9d82
	ld (hl),b		;9d83
	inc de			;9d84
	call p,01514h		;9d85
	ld d,017h		;9d88
	jr $+27			;9d8a
	ld a,(de)		;9d8c
	dec de			;9d8d
	inc e			;9d8e
	dec e			;9d8f
	ld e,01fh		;9d90
	jr nz,$+35		;9d92
	ld (02423h),hl		;9d94
	dec h			;9d97
	ld h,027h		;9d98
	jr z,l9dc5h		;9d9a
	ld hl,(02c2bh)		;9d9c
	dec l			;9d9f
	ld l,0f6h		;9da0
	ld h,b			;9da2
	cpl			;9da3
	call p,03130h		;9da4
	ld (03533h),a		;9da7
	ld (hl),037h		;9daa
	add hl,sp		;9dac
	ld a,(050f6h)		;9dad
	dec sp			;9db0
	ld d,b			;9db1
	dec a			;9db2
	ld d,b			;9db3
	ld a,040h		;9db4
	ld b,c			;9db6
l9db7h:
	ld b,b			;9db7
	ld b,d			;9db8
l9db9h:
	ld b,b			;9db9
	ld b,h			;9dba
	jr nc,l9e03h		;9dbb
	jr nc,l9e07h		;9dbd
	jr nc,l9e0bh		;9dbf
	jr nz,l9e0fh		;9dc1
	jr nz,l9e13h		;9dc3
l9dc5h:
	jr nz,l9e17h		;9dc5
	djnz $+84		;9dc7
	djnz $+86		;9dc9
	djnz l9e23h		;9dcb
	nop			;9dcd
	ld e,b			;9dce
	nop			;9dcf
	ld e,d			;9dd0
	nop			;9dd1
	ld e,h			;9dd2
	nop			;9dd3
	ld e,(hl)		;9dd4
	nop			;9dd5
	ld h,b			;9dd6
	rst 38h			;9dd7
	cp 002h			;9dd8
	jp po,0f801h		;9dda
	inc c			;9ddd
	pop bc			;9dde
	add a,b			;9ddf
	jp nz,0c300h		;9de0
	nop			;9de3
	jp nz,0c280h		;9de4
	nop			;9de7
	ret m			;9de8
	ld d,h			;9de9
	pop bc			;9dea
	ret po			;9deb
	pop bc			;9dec
	ret p			;9ded
	jp nz,0c200h		;9dee
	djnz $-60		;9df1
	jr nz,l9db7h		;9df3
	jr nc,l9db9h		;9df5
	ld b,b			;9df7
	jp nz,0c250h		;9df8
	ld h,b			;9dfb
	jp nz,0e270h		;9dfc
	ld (bc),a		;9dff
	or d			;9e00
	add a,b			;9e01
	or d			;9e02
l9e03h:
	ret nz			;9e03
	and e			;9e04
	nop			;9e05
	sub e			;9e06
l9e07h:
	ld b,b			;9e07
	add a,e			;9e08
	add a,b			;9e09
	ld (hl),e		;9e0a
l9e0bh:
	ret nz			;9e0b
	ld h,h			;9e0c
	nop			;9e0d
	ld d,h			;9e0e
l9e0fh:
	ld b,b			;9e0f
	ld d,h			;9e10
	add a,b			;9e11
	ld b,h			;9e12
l9e13h:
	ret nz			;9e13
	ld b,l			;9e14
	nop			;9e15
	dec (hl)		;9e16
l9e17h:
	ld d,l			;9e17
	dec (hl)		;9e18
	xor d			;9e19
	ld h,000h		;9e1a
	ld h,055h		;9e1c
	ld d,0aah		;9e1e
	rla			;9e20
	nop			;9e21
	rlca			;9e22
l9e23h:
	ld d,l			;9e23
	rlca			;9e24
	xor d			;9e25
	ex af,af'		;9e26
	nop			;9e27
	ex af,af'		;9e28
	ld d,l			;9e29
	ex af,af'		;9e2a
	xor d			;9e2b
	rst 38h			;9e2c
	cp 002h			;9e2d
	ret po			;9e2f
	ld bc,001e2h		;9e30
	add a,c			;9e33
	ex af,af'		;9e34
	rst 30h			;9e35
	inc b			;9e36
	ld sp,hl		;9e37
	ld l,a			;9e38
	ld a,(hl)		;9e39
	rst 30h			;9e3a
	dec b			;9e3b
	ld sp,hl		;9e3c
	ld l,a			;9e3d
	ld a,(hl)		;9e3e
	rst 30h			;9e3f
	rlca			;9e40
	ld sp,hl		;9e41
	ld l,a			;9e42
	ld a,(hl)		;9e43
	rst 30h			;9e44
	add hl,bc		;9e45
	ld sp,hl		;9e46
	ld l,a			;9e47
	ld a,(hl)		;9e48
	rst 30h			;9e49
	dec bc			;9e4a
	ld sp,hl		;9e4b
	ld l,a			;9e4c
	ld a,(hl)		;9e4d
	rst 38h			;9e4e
	cp 002h			;9e4f
	ret m			;9e51
	ld h,0e2h		;9e52
	ld bc,008c1h		;9e54
	ld sp,hl		;9e57
	ld l,a			;9e58
	ld a,(hl)		;9e59
	rst 30h			;9e5a
	dec b			;9e5b
	ld sp,hl		;9e5c
	ld l,a			;9e5d
	ld a,(hl)		;9e5e
	rst 30h			;9e5f
	rlca			;9e60
	ld sp,hl		;9e61
	ld l,a			;9e62
	ld a,(hl)		;9e63
	rst 30h			;9e64
	add hl,bc		;9e65
	ld sp,hl		;9e66
	ld l,a			;9e67
	ld a,(hl)		;9e68
	rst 30h			;9e69
	dec bc			;9e6a
	ld sp,hl		;9e6b
	ld l,a			;9e6c
	ld a,(hl)		;9e6d
	rst 38h			;9e6e
	ret nz			;9e6f
	ret p			;9e70
	ret nz			;9e71
	ret c			;9e72
	ret nz			;9e73
	ret nz			;9e74
	ret nz			;9e75
	or b			;9e76
	ret nz			;9e77
	and b			;9e78
	ret nz			;9e79
	sub b			;9e7a
	ret nz			;9e7b
	add a,b			;9e7c
	ret nz			;9e7d
	ld (hl),b		;9e7e
	ret nz			;9e7f
	ld h,b			;9e80
	jp m,002feh		;9e81
	ret po			;9e84
	inc bc			;9e85
	jp po,09101h		;9e86
	ret nz			;9e89
	rst 30h			;9e8a
	inc bc			;9e8b
	ld sp,hl		;9e8c
	call nc,0f77eh		;9e8d
sub_9e90h:
	dec b			;9e90
	ld sp,hl		;9e91
	call nc,0f77eh		;9e92
	ex af,af'		;9e95
	ld sp,hl		;9e96
	call nc,0df7eh		;9e97
	inc hl			;9e9a
	nop			;9e9b
	inc h			;9e9c
	add a,b			;9e9d
	inc h			;9e9e
l9e9fh:
	nop			;9e9f
	dec h			;9ea0
	nop			;9ea1
	dec h			;9ea2
	add a,b			;9ea3
	ld h,080h		;9ea4
	dec h			;9ea6
	nop			;9ea7
	rst 38h			;9ea8
	cp 002h			;9ea9
	ret m			;9eab
	inc d			;9eac
	jp po,0c101h		;9ead
	ret nz			;9eb0
	ld sp,hl		;9eb1
	call nc,0f77eh		;9eb2
	inc b			;9eb5
	ld sp,hl		;9eb6
	call nc,0f77eh		;9eb7
	add hl,bc		;9eba
	ld sp,hl		;9ebb
	call nc,0df7eh		;9ebc
	inc bc			;9ebf
	nop			;9ec0
	inc b			;9ec1
	add a,b			;9ec2
	inc b			;9ec3
	nop			;9ec4
	dec b			;9ec5
	nop			;9ec6
	dec b			;9ec7
	add a,b			;9ec8
	ld b,080h		;9ec9
	dec b			;9ecb
	nop			;9ecc
	ld b,000h		;9ecd
	rlca			;9ecf
	nop			;9ed0
	ex af,af'		;9ed1
	nop			;9ed2
	rst 38h			;9ed3
	jp nz,0c400h		;9ed4
	djnz l9e9fh		;9ed7
	nop			;9ed9
	jp nz,0c380h		;9eda
	nop			;9edd
	jp 0c480h		;9ede
	nop			;9ee1
	jp 0c400h		;9ee2
	add a,b			;9ee5
	call nz,0c500h		;9ee6
	nop			;9ee9
	push bc			;9eea
	add a,b			;9eeb
	add a,080h		;9eec
	push bc			;9eee
	nop			;9eef
	add a,000h		;9ef0
	rst 0			;9ef2
	nop			;9ef3
	ret z			;9ef4
	nop			;9ef5
	jp m,002feh		;9ef6
	ret po			;9ef9
	inc b			;9efa
	jp po,0a201h		;9efb
	add a,b			;9efe
	and d			;9eff
	ld b,b			;9f00
	and d			;9f01
	nop			;9f02
	and c			;9f03
	add a,b			;9f04
	and c			;9f05
	ld h,b			;9f06
	and c			;9f07
	nop			;9f08
	and b			;9f09
	ret nz			;9f0a
	rst 30h			;9f0b
	ld (bc),a		;9f0c
	ld sp,hl		;9f0d
	ld (hl),e		;9f0e
	ld a,a			;9f0f
	rst 30h			;9f10
	inc b			;9f11
	ld sp,hl		;9f12
	ld (hl),e		;9f13
	ld a,a			;9f14
	rst 30h			;9f15
	dec b			;9f16
	ld sp,hl		;9f17
	ld (hl),e		;9f18
	ld a,a			;9f19
	rst 30h			;9f1a
	ld b,0f9h		;9f1b
	ld (hl),e		;9f1d
	ld a,a			;9f1e
	rst 30h			;9f1f
	rlca			;9f20
	ld sp,hl		;9f21
	ld (hl),e		;9f22
	ld a,a			;9f23
	rst 30h			;9f24
	ex af,af'		;9f25
	ld sp,hl		;9f26
	ld (hl),e		;9f27
	ld a,a			;9f28
	rst 18h			;9f29
	ld (022c0h),hl		;9f2a
	nop			;9f2d
	ld hl,0ff80h		;9f2e
	cp 002h			;9f31
	ret m			;9f33
	ld d,h			;9f34
	jp po,0c501h		;9f35
	nop			;9f38
	call nz,0c480h		;9f39
	nop			;9f3c
	jp 0c200h		;9f3d
	ret nz			;9f40
	jp nz,0c100h		;9f41
	add a,b			;9f44
	ret m			;9f45
	inc hl			;9f46
	ld sp,hl		;9f47
	ld (hl),e		;9f48
	ld a,a			;9f49
	rst 30h			;9f4a
	ld (bc),a		;9f4b
	ld sp,hl		;9f4c
	ld (hl),e		;9f4d
	ld a,a			;9f4e
	rst 30h			;9f4f
	inc b			;9f50
	ld sp,hl		;9f51
	ld (hl),e		;9f52
	ld a,a			;9f53
	rst 30h			;9f54
	ld b,0f9h		;9f55
	ld (hl),e		;9f57
	ld a,a			;9f58
	rst 30h			;9f59
	ex af,af'		;9f5a
	ld sp,hl		;9f5b
	ld (hl),e		;9f5c
	ld a,a			;9f5d
	rst 30h			;9f5e
	ld a,(bc)		;9f5f
	ld sp,hl		;9f60
	ld (hl),e		;9f61
	ld a,a			;9f62
	rst 18h			;9f63
	ld (bc),a		;9f64
	ret nz			;9f65
	ld (bc),a		;9f66
	nop			;9f67
	ld bc,00180h		;9f68
	nop			;9f6b
	nop			;9f6c
	add a,b			;9f6d
l9f6eh:
	nop			;9f6e
	ld h,b			;9f6f
	nop			;9f70
	ld b,b			;9f71
	rst 38h			;9f72
	jp nz,0c2c0h		;9f73
	nop			;9f76
	pop bc			;9f77
	add a,b			;9f78
	pop bc			;9f79
	nop			;9f7a
	ret nz			;9f7b
	add a,b			;9f7c
	ret nz			;9f7d
	ld h,b			;9f7e
	ret nz			;9f7f
	ld b,b			;9f80
	ld bc,00000h		;9f81
	add a,b			;9f84
	jp m,002feh		;9f85
	ret po			;9f88
	ld (bc),a		;9f89
	jp po,08004h		;9f8a
	ret z			;9f8d
	add a,b			;9f8e
	ld h,e			;9f8f
	add a,b			;9f90
	ld sp,0c860h		;9f91
	ld h,b			;9f94
	ld h,e			;9f95
	ld h,b			;9f96
	ld sp,0c850h		;9f97
	ld d,b			;9f9a
	ld h,e			;9f9b
	ld d,b			;9f9c
	ld sp,0c830h		;9f9d
	jr nc,$+101		;9fa0
	jr nc,l9fd5h		;9fa2
	djnz l9f6eh		;9fa4
	djnz $+101		;9fa6
	djnz l9fdbh		;9fa8
	rst 38h			;9faa
	cp 002h			;9fab
	ret m			;9fad
	dec bc			;9fae
	jp po,0c004h		;9faf
	ret z			;9fb2
	ret nz			;9fb3
	ld h,e			;9fb4
	ret nz			;9fb5
	ld sp,0c880h		;9fb6
	add a,b			;9fb9
	ld h,e			;9fba
	add a,b			;9fbb
	ld sp,0c850h		;9fbc
	ld d,b			;9fbf
	ld h,e			;9fc0
	ld d,b			;9fc1
	ld sp,0c830h		;9fc2
	jr nc,$+101		;9fc5
	jr nc,l9ffah		;9fc7
	djnz $-54		;9fc9
	djnz $+101		;9fcb
	djnz $+51		;9fcd
	ret po			;9fcf
	ld (bc),a		;9fd0
	rst 38h			;9fd1
	cp 002h			;9fd2
	ret po			;9fd4
l9fd5h:
	ld (bc),a		;9fd5
	jp po,06101h		;9fd6
	ld b,b			;9fd9
	ld h,c			;9fda
l9fdbh:
	ret nc			;9fdb
	ld h,d			;9fdc
	jr nc,$+98		;9fdd
	and b			;9fdf
	ld h,b			;9fe0
	ret po			;9fe1
	ld h,c			;9fe2
	ld b,b			;9fe3
	ld h,c			;9fe4
	add a,b			;9fe5
	ld h,d			;9fe6
	nop			;9fe7
	ld h,d			;9fe8
	add a,b			;9fe9
	rst 30h			;9fea
	ld b,0f9h		;9feb
	ld b,b			;9fed
	add a,b			;9fee
	rst 30h			;9fef
	rlca			;9ff0
	ld sp,hl		;9ff1
	ld b,b			;9ff2
	add a,b			;9ff3
	rst 30h			;9ff4
	ex af,af'		;9ff5
	ld sp,hl		;9ff6
	ld b,b			;9ff7
	add a,b			;9ff8
	rst 30h			;9ff9
l9ffah:
	ld a,(bc)		;9ffa
	ld sp,hl		;9ffb
	ld b,b			;9ffc
	add a,b			;9ffd
	rst 18h			;9ffe
	ld (de),a		;9fff

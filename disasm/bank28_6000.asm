; z80dasm 1.2.0
; command line: z80dasm -a -l -g 0x6000 -o /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/disasm/bank28_6000.asm /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/banks/bank28.bin

	org 06000h

	jp l6009h		;6000
	jp l6929h		;6003
	jp l6ad6h		;6006
l6009h:
	ld hl,0ffffh		;6009
	ld (0c85fh),hl		;600c
	ld hl,0c861h		;600f
	ld de,0c862h		;6012
	ld (hl),001h		;6015
	ld bc,0000eh		;6017
	ldir			;601a
	call sub_6287h		;601c
	ld a,0bfh		;601f
	jp l6106h		;6021
sub_6024h:
	call sub_602bh		;6024
	call sub_6123h		;6027
	ret			;602a
sub_602bh:
	call sub_603bh		;602b
	call sub_6053h		;602e
	call sub_6088h		;6031
	call sub_60b5h		;6034
	call sub_60e3h		;6037
	ret			;603a
sub_603bh:
	ld hl,0c60dh		;603b
	ld a,(hl)		;603e
	and 001h		;603f
	jr z,l6052h		;6041
	ld hl,0c68dh		;6043
	ld a,(hl)		;6046
	and 001h		;6047
	jr z,l6052h		;6049
	ld hl,0c60dh		;604b
	res 1,(hl)		;604e
	res 0,(hl)		;6050
l6052h:
	ret			;6052
sub_6053h:
	ld b,000h		;6053
	ld c,008h		;6055
	ld hl,0c60ah		;6057
	call sub_606ah		;605a
	ld hl,0c64ah		;605d
	call sub_606ah		;6060
	ld hl,0c68ah		;6063
	call sub_606ah		;6066
	ret			;6069
sub_606ah:
	ld e,(hl)		;606a
	ld a,b			;606b
	call sub_643ah		;606c
	inc hl			;606f
	inc b			;6070
	ld e,(hl)		;6071
	ld a,b			;6072
	call sub_643ah		;6073
	inc hl			;6076
	ld e,(hl)		;6077
	ld a,c			;6078
	inc b			;6079
	inc c			;607a
	inc hl			;607b
	bit 3,(hl)		;607c
	ret nz			;607e
	call sub_643ah		;607f
	bit 2,(hl)		;6082
	ret z			;6084
	set 3,(hl)		;6085
	ret			;6087
sub_6088h:
	ld hl,0c85bh		;6088
	bit 0,(hl)		;608b
	jr z,l609bh		;608d
	res 0,(hl)		;608f
	set 1,(hl)		;6091
	ld a,(0c859h)		;6093
	ld e,a			;6096
	ld a,006h		;6097
	jr l60b1h		;6099
l609bh:
	ld a,(0c680h)		;609b
	cp 01ah			;609e
	ret z			;60a0
	bit 1,(hl)		;60a1
	ret nz			;60a3
	bit 2,(hl)		;60a4
	ret z			;60a6
	res 2,(hl)		;60a7
	set 3,(hl)		;60a9
	ld a,(0c85ah)		;60ab
	ld e,a			;60ae
	ld a,006h		;60af
l60b1h:
	call sub_643ah		;60b1
	ret			;60b4
sub_60b5h:
	ld hl,0c85bh		;60b5
	bit 7,(hl)		;60b8
	ret z			;60ba
	res 7,(hl)		;60bb
	ld a,(0c85dh)		;60bd
	ld e,a			;60c0
	ld a,00bh		;60c1
	call sub_643ah		;60c3
	bit 6,(hl)		;60c6
	ret z			;60c8
	res 6,(hl)		;60c9
	ld a,(0c85eh)		;60cb
	ld e,a			;60ce
	ld a,00ch		;60cf
	call sub_643ah		;60d1
	bit 5,(hl)		;60d4
	ret z			;60d6
	res 5,(hl)		;60d7
	ld a,(0c85ch)		;60d9
	ld e,a			;60dc
	ld a,00dh		;60dd
	call sub_643ah		;60df
	ret			;60e2
sub_60e3h:
	ld hl,0c60dh		;60e3
	ld a,(hl)		;60e6
	ld hl,l6117h		;60e7
	call sub_6110h		;60ea
	ld b,(hl)		;60ed
	ld hl,0c64dh		;60ee
	ld a,(hl)		;60f1
	ld hl,l611bh		;60f2
	call sub_6110h		;60f5
	ld c,(hl)		;60f8
	ld hl,0c68dh		;60f9
	ld a,(hl)		;60fc
	ld hl,l611fh		;60fd
	call sub_6110h		;6100
	ld a,(hl)		;6103
	or b			;6104
	or c			;6105
l6106h:
	ld e,a			;6106
	ld (0c880h),a		;6107
	ld a,007h		;610a
	call sub_643ah		;610c
	ret			;610f
sub_6110h:
	and 003h		;6110
	ld e,a			;6112
	ld d,000h		;6113
	add hl,de		;6115
	ret			;6116
l6117h:
	adc a,c			;6117
	add a,c			;6118
	adc a,b			;6119
	add a,b			;611a
l611bh:
	sub d			;611b
	add a,d			;611c
	sub b			;611d
	add a,b			;611e
l611fh:
	and h			;611f
	add a,h			;6120
	and b			;6121
	add a,b			;6122
sub_6123h:
	call sub_6130h		;6123
	call sub_6235h		;6126
	call sub_6287h		;6129
	call sub_6348h		;612c
	ret			;612f
sub_6130h:
	ld ix,0c85fh		;6130
	ld bc,0c86bh		;6134
	ld de,0c861h		;6137
	ld hl,0c6cah		;613a
	ld a,(de)		;613d
	res 0,(ix+000h)		;613e
	cp (hl)			;6142
	jr z,l614bh		;6143
	set 0,(ix+000h)		;6145
	ld a,(hl)		;6149
	ld (de),a		;614a
l614bh:
	inc de			;614b
	inc hl			;614c
	ld a,(de)		;614d
	res 1,(ix+000h)		;614e
	cp (hl)			;6152
	jr z,l615bh		;6153
	set 1,(ix+000h)		;6155
	ld a,(hl)		;6159
	ld (de),a		;615a
l615bh:
	inc de			;615b
	inc hl			;615c
	res 2,(ix+001h)		;615d
	ld a,(bc)		;6161
	cp (hl)			;6162
	jr z,l616bh		;6163
	set 2,(ix+001h)		;6165
	ld a,(hl)		;6169
	ld (bc),a		;616a
l616bh:
	inc bc			;616b
	ld hl,0c70ah		;616c
	ld a,(de)		;616f
	res 2,(ix+000h)		;6170
	cp (hl)			;6174
	jr z,l617dh		;6175
	set 2,(ix+000h)		;6177
	ld a,(hl)		;617b
	ld (de),a		;617c
l617dh:
	inc de			;617d
	inc hl			;617e
	ld a,(de)		;617f
	res 3,(ix+000h)		;6180
	cp (hl)			;6184
	jr z,l618dh		;6185
	set 3,(ix+000h)		;6187
	ld a,(hl)		;618b
	ld (de),a		;618c
l618dh:
	inc de			;618d
	inc hl			;618e
	res 3,(ix+001h)		;618f
	ld a,(bc)		;6193
	cp (hl)			;6194
	jr z,l619dh		;6195
	set 3,(ix+001h)		;6197
	ld a,(hl)		;619b
	ld (bc),a		;619c
l619dh:
	inc bc			;619d
	ld hl,0c74ah		;619e
	ld a,(de)		;61a1
	res 4,(ix+000h)		;61a2
	cp (hl)			;61a6
	jr z,l61afh		;61a7
	set 4,(ix+000h)		;61a9
	ld a,(hl)		;61ad
	ld (de),a		;61ae
l61afh:
	inc de			;61af
	inc hl			;61b0
	ld a,(de)		;61b1
	res 5,(ix+000h)		;61b2
	cp (hl)			;61b6
	jr z,l61bfh		;61b7
	set 5,(ix+000h)		;61b9
	ld a,(hl)		;61bd
	ld (de),a		;61be
l61bfh:
	inc de			;61bf
	inc hl			;61c0
	res 4,(ix+001h)		;61c1
	ld a,(bc)		;61c5
	cp (hl)			;61c6
	jr z,l61cfh		;61c7
	set 4,(ix+001h)		;61c9
	ld a,(hl)		;61cd
	ld (bc),a		;61ce
l61cfh:
	inc bc			;61cf
	ld hl,0c78ah		;61d0
	ld a,(de)		;61d3
	res 6,(ix+000h)		;61d4
	cp (hl)			;61d8
	jr z,l61e1h		;61d9
	set 6,(ix+000h)		;61db
	ld a,(hl)		;61df
	ld (de),a		;61e0
l61e1h:
	inc de			;61e1
	inc hl			;61e2
	ld a,(de)		;61e3
	res 7,(ix+000h)		;61e4
	cp (hl)			;61e8
	jr z,l61f1h		;61e9
	set 7,(ix+000h)		;61eb
	ld a,(hl)		;61ef
	ld (de),a		;61f0
l61f1h:
	inc de			;61f1
	inc hl			;61f2
	res 5,(ix+001h)		;61f3
	ld a,(bc)		;61f7
	cp (hl)			;61f8
	jr z,l6201h		;61f9
	set 5,(ix+001h)		;61fb
	ld a,(hl)		;61ff
	ld (bc),a		;6200
l6201h:
	inc bc			;6201
	ld hl,0c7cah		;6202
	ld a,(de)		;6205
	res 0,(ix+001h)		;6206
	cp (hl)			;620a
	jr z,l6213h		;620b
	set 0,(ix+001h)		;620d
	ld a,(hl)		;6211
	ld (de),a		;6212
l6213h:
	inc de			;6213
	inc hl			;6214
	ld a,(de)		;6215
	res 1,(ix+001h)		;6216
	cp (hl)			;621a
	jr z,l6223h		;621b
	set 1,(ix+001h)		;621d
	ld a,(hl)		;6221
	ld (de),a		;6222
l6223h:
	inc de			;6223
	inc hl			;6224
	res 6,(ix+001h)		;6225
	ld a,(bc)		;6229
	cp (hl)			;622a
	jr z,l6233h		;622b
	set 6,(ix+001h)		;622d
	ld a,(hl)		;6231
	ld (bc),a		;6232
l6233h:
	inc bc			;6233
	ret			;6234
sub_6235h:
	ld e,000h		;6235
	ld hl,0c6cdh		;6237
	ld c,001h		;623a
	ld a,(hl)		;623c
	or a			;623d
	jr z,l6241h		;623e
	ld a,c			;6240
l6241h:
	or e			;6241
	ld e,a			;6242
	ld hl,0c70dh		;6243
	sla c			;6246
	ld a,(hl)		;6248
	or a			;6249
	jr z,l624dh		;624a
	ld a,c			;624c
l624dh:
	or e			;624d
	ld e,a			;624e
	ld hl,0c74dh		;624f
	sla c			;6252
	ld a,(hl)		;6254
	or a			;6255
	jr z,l6259h		;6256
	ld a,c			;6258
l6259h:
	or e			;6259
	ld e,a			;625a
	ld hl,0c78dh		;625b
	sla c			;625e
	ld a,(hl)		;6260
	or a			;6261
	jr z,l6265h		;6262
	ld a,c			;6264
l6265h:
	or e			;6265
	ld e,a			;6266
	ld hl,0c7cdh		;6267
	sla c			;626a
	ld a,(hl)		;626c
	or a			;626d
	jr z,l6271h		;626e
	ld a,c			;6270
l6271h:
	or e			;6271
	ld e,a			;6272
	ld hl,0c870h		;6273
	ld a,(hl)		;6276
	cp e			;6277
	jr z,l6281h		;6278
	ld (hl),e		;627a
	ld hl,0c860h		;627b
	set 7,(hl)		;627e
	ret			;6280
l6281h:
	ld hl,0c860h		;6281
	res 7,(hl)		;6284
	ret			;6286
sub_6287h:
	ld ix,0c85fh		;6287
	ld hl,0c861h		;628b
	ld de,09880h		;628e
	bit 0,(ix+000h)		;6291
	jr z,l629ah		;6295
	call sub_633fh		;6297
l629ah:
	inc hl			;629a
	inc de			;629b
	bit 1,(ix+000h)		;629c
	jr z,l62a5h		;62a0
	call sub_633fh		;62a2
l62a5h:
	inc hl			;62a5
	inc de			;62a6
	bit 2,(ix+000h)		;62a7
	jr z,l62b0h		;62ab
	call sub_633fh		;62ad
l62b0h:
	inc hl			;62b0
	inc de			;62b1
	bit 3,(ix+000h)		;62b2
	jr z,l62bbh		;62b6
	call sub_633fh		;62b8
l62bbh:
	inc hl			;62bb
	inc de			;62bc
	bit 4,(ix+000h)		;62bd
	jr z,l62c6h		;62c1
	call sub_633fh		;62c3
l62c6h:
	inc hl			;62c6
	inc de			;62c7
	bit 5,(ix+000h)		;62c8
	jr z,l62d1h		;62cc
	call sub_633fh		;62ce
l62d1h:
	inc hl			;62d1
	inc de			;62d2
	bit 6,(ix+000h)		;62d3
	jr z,l62dch		;62d7
	call sub_633fh		;62d9
l62dch:
	inc hl			;62dc
	inc de			;62dd
	bit 7,(ix+000h)		;62de
	jr z,l62e7h		;62e2
	call sub_633fh		;62e4
l62e7h:
	inc hl			;62e7
	inc de			;62e8
	bit 0,(ix+001h)		;62e9
	jr z,l62f2h		;62ed
	call sub_633fh		;62ef
l62f2h:
	inc hl			;62f2
	inc de			;62f3
	bit 1,(ix+001h)		;62f4
	jr z,l62fdh		;62f8
	call sub_633fh		;62fa
l62fdh:
	inc hl			;62fd
	inc de			;62fe
	bit 2,(ix+001h)		;62ff
	jr z,l6308h		;6303
	call sub_633fh		;6305
l6308h:
	inc hl			;6308
	inc de			;6309
	bit 3,(ix+001h)		;630a
	jr z,l6313h		;630e
	call sub_633fh		;6310
l6313h:
	inc hl			;6313
	inc de			;6314
	bit 4,(ix+001h)		;6315
	jr z,l631eh		;6319
	call sub_633fh		;631b
l631eh:
	inc hl			;631e
	inc de			;631f
	bit 5,(ix+001h)		;6320
	jr z,l6329h		;6324
	call sub_633fh		;6326
l6329h:
	inc hl			;6329
	inc de			;632a
	bit 6,(ix+001h)		;632b
	jr z,l6334h		;632f
	call sub_633fh		;6331
l6334h:
	inc hl			;6334
	inc de			;6335
	bit 7,(ix+001h)		;6336
	ret z			;633a
	call sub_633fh		;633b
	ret			;633e
sub_633fh:
	call sub_642eh		;633f
	ld a,(hl)		;6342
	ld (de),a		;6343
	call sub_6434h		;6344
	ret			;6347
sub_6348h:
	ld ix,0c6c0h		;6348
	bit 7,(ix+00fh)		;634c
	jr z,l6377h		;6350
	res 7,(ix+00fh)		;6352
	ld e,(ix+027h)		;6356
	ld d,(ix+028h)		;6359
	bit 6,(ix+00dh)		;635c
	jr z,l6370h		;6360
	set 7,(ix+00fh)		;6362
	ex de,hl		;6366
	ld de,09800h		;6367
	call sub_6418h		;636a
	jp l6377h		;636d
l6370h:
	ex de,hl		;6370
	ld de,09800h		;6371
	call sub_63fdh		;6374
l6377h:
	ld ix,0c700h		;6377
	bit 7,(ix+00fh)		;637b
	jr z,l63a6h		;637f
	res 7,(ix+00fh)		;6381
	ld e,(ix+027h)		;6385
	ld d,(ix+028h)		;6388
	bit 6,(ix+00dh)		;638b
	jr z,l639fh		;638f
	set 7,(ix+00fh)		;6391
	ex de,hl		;6395
	ld de,09820h		;6396
	call sub_6418h		;6399
	jp l63a6h		;639c
l639fh:
	ex de,hl		;639f
	ld de,09820h		;63a0
	call sub_63fdh		;63a3
l63a6h:
	ld ix,0c740h		;63a6
	bit 7,(ix+00fh)		;63aa
	jr z,l63d5h		;63ae
	res 7,(ix+00fh)		;63b0
	ld e,(ix+027h)		;63b4
	ld d,(ix+028h)		;63b7
	bit 6,(ix+00dh)		;63ba
	jr z,l63ceh		;63be
	set 7,(ix+00fh)		;63c0
	ex de,hl		;63c4
	ld de,09840h		;63c5
	call sub_6418h		;63c8
	jp l63d5h		;63cb
l63ceh:
	ex de,hl		;63ce
	ld de,09840h		;63cf
	call sub_63fdh		;63d2
l63d5h:
	ld ix,0c780h		;63d5
	bit 7,(ix+00fh)		;63d9
	ret z			;63dd
	res 7,(ix+00fh)		;63de
	ld e,(ix+027h)		;63e2
	ld d,(ix+028h)		;63e5
	bit 6,(ix+00dh)		;63e8
	jr z,l63f9h		;63ec
	set 7,(ix+00fh)		;63ee
	ex de,hl		;63f2
	ld de,09860h		;63f3
	jp sub_6418h		;63f6
l63f9h:
	ex de,hl		;63f9
	ld de,09860h		;63fa
sub_63fdh:
	call sub_642eh		;63fd
	xor a			;6400
	ld (0988fh),a		;6401
	ld b,020h		;6404
l6406h:
	ld a,(hl)		;6406
	ld (de),a		;6407
	inc hl			;6408
	inc de			;6409
	djnz l6406h		;640a
	ld hl,0988fh		;640c
	ld de,0c870h		;640f
	ld a,(de)		;6412
	ld (hl),a		;6413
	call sub_6434h		;6414
	ret			;6417
sub_6418h:
	call sub_642eh		;6418
	ld b,020h		;641b
l641dh:
	ld a,(hl)		;641d
	ld (de),a		;641e
	ld a,l			;641f
	add a,(ix+031h)		;6420
	ld l,a			;6423
	jr nc,l6427h		;6424
	inc h			;6426
l6427h:
	inc de			;6427
	djnz l641dh		;6428
	call sub_6434h		;642a
	ret			;642d
sub_642eh:
	ld a,03fh		;642e
	call 04c15h		;6430
	ret			;6433
sub_6434h:
	ld a,01dh		;6434
	call 04c15h		;6436
	ret			;6439
sub_643ah:
	out (0a0h),a		;643a
	ex af,af'		;643c
	ld a,e			;643d
	out (0a1h),a		;643e
	ex af,af'		;6440
	ret			;6441
l6442h:
	ld (02265h),hl		;6442
	ld h,l			;6445
	ld (04265h),hl		;6446
	ld h,l			;6449
	ld h,d			;644a
	ld h,l			;644b
	ld h,d			;644c
	ld h,l			;644d
	add a,d			;644e
	ld h,l			;644f
	add a,d			;6450
	ld h,l			;6451
	add a,d			;6452
	ld h,l			;6453
	add a,d			;6454
	ld h,l			;6455
	and d			;6456
	ld h,l			;6457
	jp nz,0e265h		;6458
	ld h,l			;645b
	ld (bc),a		;645c
	ld h,(hl)		;645d
	ld (04266h),hl		;645e
	ld h,(hl)		;6461
	ld b,d			;6462
	ld h,(hl)		;6463
	ld b,d			;6464
	ld h,(hl)		;6465
	ld b,d			;6466
	ld h,(hl)		;6467
	ld (04265h),hl		;6468
	ld h,(hl)		;646b
	ld h,d			;646c
	ld h,(hl)		;646d
	add a,d			;646e
	ld h,(hl)		;646f
	add a,d			;6470
	ld h,(hl)		;6471
	and d			;6472
	ld h,(hl)		;6473
	jp nz,0e266h		;6474
	ld h,(hl)		;6477
	jp po,0e266h		;6478
	ld h,(hl)		;647b
	ld (bc),a		;647c
	ld h,a			;647d
	ld (02267h),hl		;647e
	ld h,a			;6481
	ld (02267h),hl		;6482
	ld h,a			;6485
	ld (02267h),hl		;6486
	ld h,a			;6489
	ld a,(03a67h)		;648a
	ld h,a			;648d
	ld e,d			;648e
	ld h,a			;648f
	ld a,d			;6490
	ld h,a			;6491
	sbc a,d			;6492
	ld h,a			;6493
	cp d			;6494
	ld h,a			;6495
	jp c,0da67h		;6496
	ld h,a			;6499
	jp m,0fa67h		;649a
	ld h,a			;649d
	jp m,0fa67h		;649e
	ld h,a			;64a1
	jp m,0fa67h		;64a2
	ld h,a			;64a5
	jp m,0fa67h		;64a6
	ld h,a			;64a9
	jp m,0fa67h		;64aa
	ld h,a			;64ad
	jp m,0fa67h		;64ae
	ld h,a			;64b1
	jp m,0fa67h		;64b2
	ld h,a			;64b5
	jp m,0fa67h		;64b6
	ld h,a			;64b9
	jp m,0fa67h		;64ba
	ld h,a			;64bd
	jp m,0fa67h		;64be
	ld h,a			;64c1
	ld a,(de)		;64c2
	ld l,b			;64c3
	ld a,(de)		;64c4
	ld l,b			;64c5
	ld a,(de)		;64c6
	ld l,b			;64c7
	ld a,(de)		;64c8
	ld l,b			;64c9
	ld a,(de)		;64ca
	ld l,b			;64cb
	ld a,(de)		;64cc
	ld l,b			;64cd
	ld a,(de)		;64ce
	ld l,b			;64cf
	ld a,(de)		;64d0
	ld l,b			;64d1
	ld a,(de)		;64d2
	ld l,b			;64d3
	ld a,(de)		;64d4
	ld l,b			;64d5
	ld a,(de)		;64d6
	ld l,b			;64d7
	ld a,(03a68h)		;64d8
	ld l,b			;64db
	ld a,(03a68h)		;64dc
	ld l,b			;64df
	ld a,(03a68h)		;64e0
	ld l,b			;64e3
	ld a,(03a68h)		;64e4
	ld l,b			;64e7
	ld e,d			;64e8
	ld l,b			;64e9
	ld e,d			;64ea
	ld l,b			;64eb
	ld a,d			;64ec
	ld l,b			;64ed
	ld a,d			;64ee
	ld l,b			;64ef
	ld a,d			;64f0
	ld l,b			;64f1
	ld a,d			;64f2
	ld l,b			;64f3
	ld a,d			;64f4
	ld l,b			;64f5
	ld a,d			;64f6
	ld l,b			;64f7
	sbc a,d			;64f8
	ld l,b			;64f9
	sbc a,d			;64fa
	ld l,b			;64fb
	sbc a,d			;64fc
	ld l,b			;64fd
	sbc a,d			;64fe
	ld l,b			;64ff
	sbc a,d			;6500
	ld l,b			;6501
	sbc a,d			;6502
	ld l,b			;6503
	cp d			;6504
	ld l,b			;6505
	cp d			;6506
	ld l,b			;6507
	cp d			;6508
	ld l,b			;6509
	cp d			;650a
	ld l,b			;650b
	jp c,0da68h		;650c
	ld l,b			;650f
	jp c,0da68h		;6510
	ld l,b			;6513
	jp c,0da68h		;6514
	ld l,b			;6517
	jp c,0da68h		;6518
	ld l,b			;651b
	jp c,0da68h		;651c
	ld l,b			;651f
	jp c,00068h		;6520
	ret m			;6523
	ret p			;6524
	ret pe			;6525
	ret po			;6526
	ret c			;6527
	ret nc			;6528
	ret z			;6529
	ret nz			;652a
	cp b			;652b
	or b			;652c
	xor b			;652d
	and b			;652e
	sbc a,b			;652f
	sub b			;6530
	adc a,b			;6531
	add a,b			;6532
	ld a,b			;6533
	ld (hl),b		;6534
	ld l,b			;6535
	ld h,b			;6536
	ld e,b			;6537
	ld d,b			;6538
	ld c,b			;6539
	ld b,b			;653a
	jr c,l656dh		;653b
	jr z,l655fh		;653d
	jr l6551h		;653f
	ex af,af'		;6541
	nop			;6542
	ret p			;6543
	ret po			;6544
	ret nc			;6545
	ret nz			;6546
	or b			;6547
	and b			;6548
	sub b			;6549
	add a,b			;654a
	ld (hl),b		;654b
	ld h,b			;654c
	ld d,b			;654d
	ld b,b			;654e
	jr nc,$+34		;654f
l6551h:
	djnz l6553h		;6551
l6553h:
	ret p			;6553
	ret po			;6554
	ret nc			;6555
	ret nz			;6556
	or b			;6557
	and b			;6558
	sub b			;6559
	add a,b			;655a
	ld (hl),b		;655b
	ld h,b			;655c
	ld d,b			;655d
	ld b,b			;655e
l655fh:
	jr nc,l6581h		;655f
	djnz l6563h		;6561
l6563h:
	add hl,de		;6563
	ld sp,05a47h		;6564
	ld l,d			;6567
	ld (hl),l		;6568
	ld a,l			;6569
	ld a,a			;656a
	ld a,l			;656b
	ld (hl),l		;656c
l656dh:
	ld l,d			;656d
	ld e,d			;656e
	ld b,a			;656f
	ld sp,00019h		;6570
	rst 20h			;6573
	rst 8			;6574
	cp c			;6575
	and (hl)		;6576
	sub (hl)		;6577
	adc a,e			;6578
	add a,e			;6579
	add a,b			;657a
	add a,e			;657b
	adc a,e			;657c
	sub (hl)		;657d
	and (hl)		;657e
	cp c			;657f
	rst 8			;6580
l6581h:
	rst 20h			;6581
	nop			;6582
	add hl,de		;6583
	ld sp,05a47h		;6584
	ld l,d			;6587
	ld (hl),l		;6588
	ld a,l			;6589
	ld a,a			;658a
	ld a,l			;658b
	ld (hl),l		;658c
	ld l,d			;658d
	ld e,d			;658e
	ld b,a			;658f
	ld sp,00019h		;6590
	ret po			;6593
	ret nz			;6594
	and b			;6595
	add a,b			;6596
	and b			;6597
	ret nz			;6598
	ret po			;6599
	nop			;659a
	jr nz,l65ddh		;659b
	ld h,b			;659d
	ld a,a			;659e
	ld h,b			;659f
	ld b,b			;65a0
	jr nz,l65a3h		;65a1
l65a3h:
	add hl,de		;65a3
	ld sp,05a47h		;65a4
	ld l,d			;65a7
	ld (hl),l		;65a8
	ld a,l			;65a9
	ld a,a			;65aa
	ld a,l			;65ab
	ld (hl),l		;65ac
	ld l,d			;65ad
	ld e,d			;65ae
	ld b,a			;65af
	ld sp,08019h		;65b0
	sub b			;65b3
	and b			;65b4
	or b			;65b5
	ret nz			;65b6
	ret nc			;65b7
	ret po			;65b8
	ret p			;65b9
	nop			;65ba
	djnz l65ddh		;65bb
	jr nc,l65ffh		;65bd
	ld d,b			;65bf
	ld h,b			;65c0
	ld (hl),b		;65c1
	nop			;65c2
	add hl,de		;65c3
	ld sp,05a47h		;65c4
	ld l,d			;65c7
	ld (hl),l		;65c8
	ld a,l			;65c9
	ld a,a			;65ca
	ld a,l			;65cb
	ld (hl),l		;65cc
	ld l,d			;65cd
	ld e,d			;65ce
	ld b,a			;65cf
	ld sp,08019h		;65d0
	and b			;65d3
	ret nz			;65d4
	ret po			;65d5
	nop			;65d6
	jr nz,$+66		;65d7
	ld h,b			;65d9
	add a,b			;65da
	and b			;65db
	ret nz			;65dc
l65ddh:
	ret po			;65dd
	nop			;65de
	jr nz,l6621h		;65df
	ld h,b			;65e1
	ld bc,0402ah		;65e2
	ld d,b			;65e5
	ld e,h			;65e6
	ld l,b			;65e7
	ld (hl),b		;65e8
	ld a,b			;65e9
	ld a,a			;65ea
	ld a,b			;65eb
	ld (hl),b		;65ec
	ld l,b			;65ed
	ld e,h			;65ee
	ld d,b			;65ef
	ld b,b			;65f0
	ld hl,(0d6ffh)		;65f1
	ret nz			;65f4
	or b			;65f5
	and h			;65f6
	sbc a,b			;65f7
	sub b			;65f8
	adc a,b			;65f9
	add a,c			;65fa
	adc a,b			;65fb
	sub b			;65fc
	sbc a,b			;65fd
	and h			;65fe
l65ffh:
	or b			;65ff
	ret nz			;6600
	sub 000h		;6601
	ld b,b			;6603
	ld a,a			;6604
	ld b,b			;6605
	ld bc,081c0h		;6606
	ret nz			;6609
	ld bc,l7f40h		;660a
	ld b,b			;660d
	ld bc,001c0h		;660e
	ld b,b			;6611
	ld bc,001e0h		;6612
	jr nz,l6618h		;6615
	ret p			;6617
l6618h:
	ld bc,00110h		;6618
	rst 38h			;661b
	rst 38h			;661c
	rst 38h			;661d
	rst 38h			;661e
	ld b,b			;661f
	ld b,b			;6620
l6621h:
	ld b,b			;6621
	ld a,b			;6622
	ld (hl),b		;6623
	ld l,b			;6624
	ld h,b			;6625
	ld e,b			;6626
	ld d,b			;6627
	ld c,b			;6628
	ld b,b			;6629
	jr c,l665ch		;662a
	jr z,l664eh		;662c
	jr l6640h		;662e
	ex af,af'		;6630
	nop			;6631
	ld a,b			;6632
	ld (hl),b		;6633
	ld l,b			;6634
	ld h,b			;6635
l6636h:
	ld e,b			;6636
	ld d,b			;6637
	ld c,b			;6638
	ld b,b			;6639
	jr c,l666ch		;663a
	jr z,l665eh		;663c
	jr l6650h		;663e
l6640h:
	ex af,af'		;6640
	nop			;6641
	nop			;6642
	jr nc,l6695h		;6643
	ld h,b			;6645
	ld (hl),b		;6646
	ld h,b			;6647
	ld d,b			;6648
	jr nc,l664bh		;6649
l664bh:
	ret nc			;664b
	or b			;664c
	and b			;664d
l664eh:
	sub b			;664e
	and b			;664f
l6650h:
	or b			;6650
	ret nc			;6651
	nop			;6652
	ld b,b			;6653
	ld h,b			;6654
	ld (hl),b		;6655
	ld h,b			;6656
	ld b,b			;6657
	nop			;6658
	ret nz			;6659
	and b			;665a
	sub b			;665b
l665ch:
	and b			;665c
	ret nz			;665d
l665eh:
	nop			;665e
l665fh:
	ld (hl),b		;665f
	nop			;6660
	sub b			;6661
	jr nc,l66b4h		;6662
	ld d,b			;6664
	jr nc,l6667h		;6665
l6667h:
	nop			;6667
	djnz l66aah		;6668
	ld h,b			;666a
	ld (hl),b		;666b
l666ch:
	ld h,b			;666c
	jr nc,l665fh		;666d
	ret po			;666f
	ret po			;6670
	nop			;6671
	jr nz,l6694h		;6672
	djnz l6636h		;6674
	and b			;6676
	sub b			;6677
	and b			;6678
	ret nz			;6679
	nop			;667a
	nop			;667b
	ret nc			;667c
	or b			;667d
	or b			;667e
	ret nc			;667f
	nop			;6680
	nop			;6681
	nop			;6682
	ld a,a			;6683
	nop			;6684
	add a,b			;6685
	and b			;6686
	ret nz			;6687
	ret c			;6688
	ret p			;6689
	ex af,af'		;668a
	jr nz,l66bdh		;668b
	ld b,b			;668d
	ld d,b			;668e
	ld h,b			;668f
	ld (hl),b		;6690
	ld a,b			;6691
	ld a,h			;6692
	ld a,a			;6693
l6694h:
	ld a,h			;6694
l6695h:
	ld a,b			;6695
	ld (hl),b		;6696
	ld h,b			;6697
	ld d,b			;6698
	ld b,b			;6699
	jr nc,l66bch		;669a
	ex af,af'		;669c
	ret p			;669d
	ret c			;669e
	ret nz			;669f
	and b			;66a0
	add a,b			;66a1
	ld a,a			;66a2
	add a,b			;66a3
	ld a,a			;66a4
	add a,b			;66a5
	ld a,a			;66a6
	add a,b			;66a7
	ld a,a			;66a8
	add a,b			;66a9
l66aah:
	ld a,a			;66aa
	add a,b			;66ab
	ld a,a			;66ac
	add a,b			;66ad
	ld a,a			;66ae
	add a,b			;66af
	ld a,a			;66b0
	add a,b			;66b1
	ld a,a			;66b2
	add a,b			;66b3
l66b4h:
	ld a,a			;66b4
	add a,b			;66b5
	ld a,a			;66b6
	add a,b			;66b7
	ld a,a			;66b8
	add a,b			;66b9
	ld a,a			;66ba
	add a,b			;66bb
l66bch:
	ld a,a			;66bc
l66bdh:
	add a,b			;66bd
	ld a,a			;66be
	add a,b			;66bf
	ld a,a			;66c0
	add a,b			;66c1
	ld a,a			;66c2
	add a,b			;66c3
	ld a,a			;66c4
	add a,b			;66c5
	ld a,a			;66c6
	add a,b			;66c7
	ld a,a			;66c8
	add a,b			;66c9
	nop			;66ca
	nop			;66cb
	nop			;66cc
	nop			;66cd
	nop			;66ce
	nop			;66cf
	nop			;66d0
	nop			;66d1
	nop			;66d2
	nop			;66d3
	nop			;66d4
	nop			;66d5
	nop			;66d6
	nop			;66d7
	nop			;66d8
	nop			;66d9
	ld a,a			;66da
	add a,b			;66db
l66dch:
	ld a,a			;66dc
	add a,b			;66dd
	ld a,a			;66de
	add a,b			;66df
	ld a,a			;66e0
	add a,b			;66e1
	add a,b			;66e2
	adc a,(hl)		;66e3
	and b			;66e4
	ret nz			;66e5
	ret po			;66e6
	nop			;66e7
	jr nz,$+65		;66e8
	ld a,03ch		;66ea
	ld a,(03137h)		;66ec
	add hl,hl		;66ef
	jr nz,$+30		;66f0
	djnz l66f4h		;66f2
l66f4h:
	and 0c0h		;66f4
	ret nc			;66f6
	nop			;66f7
	jr nz,l6739h		;66f8
	djnz l66dch		;66fa
	add a,b			;66fc
l66fdh:
	ret nz			;66fd
	nop			;66fe
	jr nz,l6701h		;66ff
l6701h:
	sub b			;6701
	nop			;6702
	ld (hl),b		;6703
	ld d,b			;6704
	jr nz,l6757h		;6705
	ld (hl),b		;6707
	jr nc,l670ah		;6708
l670ah:
	ld d,b			;670a
	ld a,a			;670b
	ld h,b			;670c
	djnz l673fh		;670d
	ld b,b			;670f
	nop			;6710
	or b			;6711
	djnz l6774h		;6712
	nop			;6714
	ret po			;6715
	ret p			;6716
	nop			;6717
	or b			;6718
	sub b			;6719
	ret nz			;671a
	djnz l66fdh		;671b
	and b			;671d
	ret nz			;671e
	ret p			;671f
	ret nz			;6720
	and b			;6721
	add a,b			;6722
	or b			;6723
	ret nz			;6724
	djnz l6741h		;6725
	ld hl,(01a2ch)		;6727
	nop			;672a
	ret po			;672b
	ret nc			;672c
	ret po			;672d
	ld (07053h),hl		;672e
	ld (hl),l		;6731
	ld (hl),b		;6732
	ld sp,080eah		;6733
	adc a,b			;6736
	adc a,d			;6737
	adc a,h			;6738
l6739h:
	adc a,(hl)		;6739
	nop			;673a
	nop			;673b
	nop			;673c
	nop			;673d
	nop			;673e
l673fh:
	ld (hl),b		;673f
	ld (hl),b		;6740
l6741h:
	nop			;6741
	nop			;6742
	add a,b			;6743
	add a,b			;6744
	add a,b			;6745
	nop			;6746
	nop			;6747
	nop			;6748
	nop			;6749
	ld (hl),b		;674a
	ld (hl),b		;674b
	ld (hl),b		;674c
	nop			;674d
	add a,b			;674e
	add a,b			;674f
	nop			;6750
	nop			;6751
	nop			;6752
	nop			;6753
	ld (hl),b		;6754
	ld (hl),b		;6755
	nop			;6756
l6757h:
	nop			;6757
	add a,b			;6758
	add a,b			;6759
	nop			;675a
	nop			;675b
	nop			;675c
	add a,b			;675d
	nop			;675e
	ld (hl),b		;675f
	ld (hl),b		;6760
	ld (hl),b		;6761
	nop			;6762
	nop			;6763
	nop			;6764
	add a,b			;6765
l6766h:
	nop			;6766
	nop			;6767
	nop			;6768
	add a,b			;6769
	add a,b			;676a
	add a,b			;676b
	add a,b			;676c
l676dh:
	nop			;676d
l676eh:
	add a,b			;676e
	nop			;676f
	nop			;6770
	nop			;6771
	nop			;6772
	add a,b			;6773
l6774h:
	add a,b			;6774
	add a,b			;6775
	nop			;6776
	add a,b			;6777
	add a,b			;6778
	add a,b			;6779
	nop			;677a
	jr nc,l676dh		;677b
	jr nc,l67bfh		;677d
	ld d,b			;677f
	ld h,b			;6780
	ld h,b			;6781
	ld (hl),b		;6782
	ld a,c			;6783
	ld (hl),b		;6784
	ld a,b			;6785
	ld b,b			;6786
	nop			;6787
	nop			;6788
	ld c,070h		;6789
	add a,e			;678b
	ld h,b			;678c
	ld d,b			;678d
	nop			;678e
	nop			;678f
	nop			;6790
	ld h,074h		;6791
	add a,d			;6793
	add a,h			;6794
	ld h,l			;6795
	ld h,h			;6796
	call po,08493h		;6797
	ld (hl),b		;679a
	ld (hl),b		;679b
	ld (hl),b		;679c
	ld (hl),b		;679d
	ld (hl),b		;679e
	ld (hl),b		;679f
	ld (hl),b		;67a0
	ld (hl),b		;67a1
	add a,b			;67a2
	add a,b			;67a3
	add a,b			;67a4
	add a,b			;67a5
	add a,b			;67a6
	add a,b			;67a7
	add a,b			;67a8
	add a,b			;67a9
	ld (hl),b		;67aa
	ld (hl),b		;67ab
	ld (hl),b		;67ac
	add a,b			;67ad
	add a,b			;67ae
	add a,b			;67af
	ld (hl),b		;67b0
	ld (hl),b		;67b1
	ld (hl),b		;67b2
	ld (hl),b		;67b3
	add a,b			;67b4
	add a,b			;67b5
	add a,b			;67b6
	add a,b			;67b7
	add a,b			;67b8
	add a,b			;67b9
	and b			;67ba
	sub b			;67bb
	sub b			;67bc
	sub b			;67bd
	and b			;67be
l67bfh:
	and b			;67bf
	or b			;67c0
	or b			;67c1
	ret nz			;67c2
	ret nz			;67c3
	ret nc			;67c4
	ret nc			;67c5
	ret po			;67c6
	ret po			;67c7
	ret p			;67c8
	ret p			;67c9
	nop			;67ca
	nop			;67cb
	djnz l67deh		;67cc
	jr nz,l67f0h		;67ce
	jr nc,l6802h		;67d0
	ld b,b			;67d2
	ld b,b			;67d3
	ld d,b			;67d4
	ld d,b			;67d5
	ld h,b			;67d6
	ld h,b			;67d7
	ld h,b			;67d8
	ld d,b			;67d9
	ld (hl),b		;67da
	ld (hl),b		;67db
	ld h,b			;67dc
	add a,b			;67dd
l67deh:
	sub b			;67de
	sub b			;67df
	add a,b			;67e0
	add a,b			;67e1
	ld b,b			;67e2
	ld b,b			;67e3
	jr nc,l6766h		;67e4
	sub b			;67e6
	sub b			;67e7
	add a,b			;67e8
	add a,b			;67e9
	jr nz,l680ch		;67ea
	djnz l676eh		;67ec
	sub b			;67ee
	sub b			;67ef
l67f0h:
	add a,b			;67f0
	add a,b			;67f1
	nop			;67f2
	nop			;67f3
	ret p			;67f4
	add a,b			;67f5
	sub b			;67f6
	sub b			;67f7
	add a,b			;67f8
	add a,b			;67f9
	nop			;67fa
	ld a,a			;67fb
	nop			;67fc
	add a,b			;67fd
	and b			;67fe
	ret nz			;67ff
	ret c			;6800
	ret p			;6801
l6802h:
	ex af,af'		;6802
	jr nz,l6835h		;6803
	ld b,b			;6805
	ld d,b			;6806
	ld h,b			;6807
	ld (hl),b		;6808
	ld a,b			;6809
	ld a,h			;680a
	ld a,a			;680b
l680ch:
	ld a,h			;680c
	ld a,b			;680d
	ld (hl),b		;680e
	ld h,b			;680f
	ld d,b			;6810
	ld b,b			;6811
	jr nc,l6834h		;6812
	ex af,af'		;6814
	ret p			;6815
l6816h:
	ret c			;6816
l6817h:
	ret nz			;6817
	and b			;6818
	add a,b			;6819
	add a,b			;681a
	sbc a,b			;681b
	cp b			;681c
l681dh:
	ret po			;681d
	jr nz,l6870h		;681e
	ld l,b			;6820
	ld a,a			;6821
	ld l,b			;6822
	ld d,b			;6823
	jr nz,l6816h		;6824
	ret nc			;6826
	cp b			;6827
	xor b			;6828
	sub b			;6829
	sub b			;682a
	cp b			;682b
	add a,b			;682c
	nop			;682d
	add a,b			;682e
	ld b,b			;682f
	add a,b			;6830
	ld a,a			;6831
l6832h:
	add a,b			;6832
	ld b,b			;6833
l6834h:
	add a,b			;6834
l6835h:
	nop			;6835
	add a,b			;6836
	ret nz			;6837
	sub b			;6838
	sub b			;6839
	add a,b			;683a
	ret nc			;683b
	jr nz,l68bdh		;683c
	ld b,b			;683e
	nop			;683f
	ret nz			;6840
	add a,b			;6841
	ret nc			;6842
	jr nz,l68c4h		;6843
	jr nc,l6817h		;6845
	add a,b			;6847
	ret nc			;6848
	jr nc,l68cah		;6849
	jr nc,l681dh		;684b
	add a,b			;684d
	or b			;684e
	ret po			;684f
	jr l6832h		;6850
	or b			;6852
	add a,b			;6853
	sub b			;6854
l6855h:
	and b			;6855
	or b			;6856
	and b			;6857
	sub b			;6858
	add a,b			;6859
	add a,b			;685a
	xor d			;685b
	ret z			;685c
	nop			;685d
	inc h			;685e
	ld b,b			;685f
	ld e,h			;6860
	ld (hl),b		;6861
	ld a,a			;6862
	ld l,d			;6863
	ld c,d			;6864
	ld h,000h		;6865
	ret nc			;6867
	xor b			;6868
	adc a,h			;6869
	add a,b			;686a
	xor d			;686b
	ret z			;686c
	nop			;686d
	inc h			;686e
	ld b,b			;686f
l6870h:
	ld e,h			;6870
	ld (hl),b		;6871
	ld a,a			;6872
	ld l,d			;6873
	ld c,d			;6874
	ld h,000h		;6875
	ret nc			;6877
	xor b			;6878
	adc a,h			;6879
	add a,b			;687a
	nop			;687b
	nop			;687c
	nop			;687d
	ld (hl),b		;687e
	ld (hl),b		;687f
	nop			;6880
	nop			;6881
	add a,b			;6882
	add a,b			;6883
	add a,b			;6884
	nop			;6885
	nop			;6886
	nop			;6887
	nop			;6888
	ld (hl),b		;6889
	ld (hl),b		;688a
	ld (hl),b		;688b
	add a,b			;688c
	ld a,a			;688d
	add a,b			;688e
	add a,b			;688f
	ret nz			;6890
	nop			;6891
	jr nz,l68c8h		;6892
	ld b,b			;6894
	inc (hl)		;6895
	jr nz,l6898h		;6896
l6898h:
	ret nz			;6898
	add a,b			;6899
	add a,b			;689a
	call nz,0c0c0h		;689b
	ld b,0e4h		;689e
	jr nc,l68bch		;68a0
	ld (hl),b		;68a2
	ld a,(04040h)		;68a3
	call m,0c016h		;68a6
	sub b			;68a9
	call nz,0c0c0h		;68aa
	inc b			;68ad
	ret pe			;68ae
	jr nc,l68c9h		;68af
	ld (hl),b		;68b1
	inc a			;68b2
	ld b,b			;68b3
	ld b,b			;68b4
	cp 013h			;68b5
	ret po			;68b7
	and b			;68b8
	sub b			;68b9
	add a,b			;68ba
	add a,b			;68bb
l68bch:
	ret pe			;68bc
l68bdh:
	jr l68f7h		;68bd
	ld h,(hl)		;68bf
	ld a,b			;68c0
	ld a,a			;68c1
	add a,b			;68c2
	add a,b			;68c3
l68c4h:
	add a,b			;68c4
	add a,b			;68c5
	add a,b			;68c6
	add a,b			;68c7
l68c8h:
	add a,b			;68c8
l68c9h:
	sbc a,h			;68c9
l68cah:
	add a,b			;68ca
	call c,02080h		;68cb
	ret nc			;68ce
	add a,b			;68cf
	ld a,a			;68d0
	add a,b			;68d1
	ret nc			;68d2
	jr nz,l6855h		;68d3
	call c,09c80h		;68d5
	add a,b			;68d8
	adc a,b			;68d9
	add a,b			;68da
	ld a,a			;68db
	ld d,b			;68dc
	ret p			;68dd
	and d			;68de
	and b			;68df
	and (hl)		;68e0
	ret nc			;68e1
	call p,02022h		;68e2
	ld b,h			;68e5
	ld b,h			;68e6
l68e7h:
	djnz $+38		;68e7
	ld (0e2e0h),hl		;68e9
	call m,0e0dch		;68ec
	inc c			;68ef
	inc d			;68f0
	inc a			;68f1
	ld e,h			;68f2
	ld (hl),b		;68f3
	ld h,b			;68f4
	jr nc,l68e7h		;68f5
l68f7h:
	sub b			;68f7
	ret p			;68f8
	and b			;68f9
sub_68fah:
	cp 039h			;68fa
	ret c			;68fc
	cp 053h			;68fd
	ret nc			;68ff
	sub 039h		;6900
	ld hl,l690fh		;6902
	add a,l			;6905
	ld l,a			;6906
	jr nc,l690ah		;6907
	inc h			;6909
l690ah:
	ld a,(hl)		;690a
	ld (0c8c8h),a		;690b
	ret			;690e
l690fh:
	jr $+25			;690f
	rla			;6911
	ld e,01eh		;6912
	ld e,018h		;6914
	jr $+26			;6916
	rla			;6918
	ld e,01eh		;6919
	ld e,01eh		;691b
	ld e,018h		;691d
	jr l6938h		;691f
	jr l6941h		;6921
	ld e,01eh		;6923
	ld e,017h		;6925
	ld e,01eh		;6927
l6929h:
	di			;6929
	push hl			;692a
	push de			;692b
	push bc			;692c
	push ix			;692d
	push iy			;692f
	push af			;6931
	call sub_693fh		;6932
	pop af			;6935
	pop iy			;6936
l6938h:
	pop ix			;6938
	pop bc			;693a
	pop de			;693b
	pop hl			;693c
	ei			;693d
	ret			;693e
sub_693fh:
	or a			;693f
	ret z			;6940
l6941h:
	ld c,a			;6941
	ld (0c87dh),a		;6942
	call sub_68fah		;6945
	ld a,c			;6948
	cp 080h			;6949
	jp c,l6967h		;694b
	cp 083h			;694e
	jp z,l6a1eh		;6950
	cp 084h			;6953
	jp z,l6a26h		;6955
	cp 085h			;6958
	jp z,l6a26h		;695a
	cp 081h			;695d
	jp z,l6a3ah		;695f
	cp 082h			;6962
	call z,sub_6a73h	;6964
l6967h:
	ld hl,07a00h		;6967
	add a,c			;696a
	ld e,a			;696b
	ld d,000h		;696c
	add hl,de		;696e
	ld e,(hl)		;696f
	inc hl			;6970
	ld d,(hl)		;6971
	ex de,hl		;6972
	ld a,(hl)		;6973
	ld b,a			;6974
	inc hl			;6975
	ld c,(hl)		;6976
	ex de,hl		;6977
	inc de			;6978
	cp 008h			;6979
	jp z,l6a15h		;697b
	cp 00ch			;697e
	jp nz,l6992h		;6980
	ld a,c			;6983
	ld hl,0c681h		;6984
	cp (hl)			;6987
	ret c			;6988
	call sub_69f2h		;6989
	ld hl,0c6c1h		;698c
	jp sub_69f2h		;698f
l6992h:
	ld a,c			;6992
	ld hl,0c601h		;6993
	cp (hl)			;6996
	ret c			;6997
	call l6a1eh		;6998
	ld a,b			;699b
	cp 0f3h			;699c
	jp nz,l69c5h		;699e
	ld hl,0c601h		;69a1
	call sub_69f2h		;69a4
	ld hl,0c641h		;69a7
	call sub_69f2h		;69aa
	ld hl,0c701h		;69ad
	call sub_69f2h		;69b0
	ld hl,0c741h		;69b3
	call sub_69f2h		;69b6
	ld hl,0c781h		;69b9
	call sub_69f2h		;69bc
	ld hl,0c7c1h		;69bf
	jp sub_69f2h		;69c2
l69c5h:
	ld hl,0c601h		;69c5
	call sub_69f2h		;69c8
	ld hl,0c641h		;69cb
	call sub_69f2h		;69ce
	ld hl,0c681h		;69d1
	call sub_69f2h		;69d4
	ld hl,0c6c1h		;69d7
	call sub_69f2h		;69da
	ld hl,0c701h		;69dd
	call sub_69f2h		;69e0
	ld hl,0c741h		;69e3
	call sub_69f2h		;69e6
	ld hl,0c781h		;69e9
	call sub_69f2h		;69ec
	ld hl,0c7c1h		;69ef
sub_69f2h:
	ld (hl),c		;69f2
	dec hl			;69f3
	ld a,(0c87dh)		;69f4
	ld (hl),a		;69f7
	inc hl			;69f8
	inc hl			;69f9
	ld a,(de)		;69fa
	ld (hl),a		;69fb
	inc hl			;69fc
	inc de			;69fd
	ld a,(de)		;69fe
	ld (hl),a		;69ff
	inc hl			;6a00
	ld a,001h		;6a01
	ld (hl),a		;6a03
	inc de			;6a04
	inc hl			;6a05
	push bc			;6a06
	push de			;6a07
	ld d,h			;6a08
	ld e,l			;6a09
	inc de			;6a0a
	ld bc,0003ah		;6a0b
	ld (hl),000h		;6a0e
	ldir			;6a10
	pop de			;6a12
	pop bc			;6a13
	ret			;6a14
l6a15h:
	ld a,c			;6a15
	ld hl,0c6c1h		;6a16
	cp (hl)			;6a19
	ret c			;6a1a
	jp sub_69f2h		;6a1b
l6a1eh:
	ld hl,0c840h		;6a1e
	res 0,(hl)		;6a21
	jp l6a33h		;6a23
l6a26h:
	ld hl,0c840h		;6a26
	set 0,(hl)		;6a29
	res 4,(hl)		;6a2b
	ld hl,00a25h		;6a2d
	ld (0c854h),hl		;6a30
l6a33h:
	ld hl,00000h		;6a33
	ld (0c856h),hl		;6a36
	ret			;6a39
l6a3ah:
	ld hl,0c840h		;6a3a
	res 1,(hl)		;6a3d
	bit 2,(hl)		;6a3f
	jp z,l6a48h		;6a41
	res 2,(hl)		;6a44
	set 0,(hl)		;6a46
l6a48h:
	ld hl,0c800h		;6a48
	ld de,0c6c0h		;6a4b
	ld bc,00040h		;6a4e
	ldir			;6a51
	ld hl,0c6cfh		;6a53
	set 7,(hl)		;6a56
	ld a,(0c871h)		;6a58
	ld (0c60dh),a		;6a5b
	ld a,(0c872h)		;6a5e
	ld (0c64dh),a		;6a61
	ld a,(0c873h)		;6a64
	ld (0c68dh),a		;6a67
	ld hl,0ffffh		;6a6a
	ld (0c85fh),hl		;6a6d
	jp sub_6287h		;6a70
sub_6a73h:
	ld hl,0c840h		;6a73
	set 1,(hl)		;6a76
	bit 0,(hl)		;6a78
	jp z,l6a81h		;6a7a
	res 0,(hl)		;6a7d
	set 2,(hl)		;6a7f
l6a81h:
	ld hl,0c6c0h		;6a81
	ld de,0c800h		;6a84
	ld bc,00040h		;6a87
	ldir			;6a8a
	ld a,(0c60dh)		;6a8c
	ld (0c871h),a		;6a8f
	ld a,(0c64dh)		;6a92
	ld (0c872h),a		;6a95
	ld a,(0c68dh)		;6a98
	ld (0c873h),a		;6a9b
	xor a			;6a9e
	ld (0c60dh),a		;6a9f
	ld (0c64dh),a		;6aa2
	ld (0c68dh),a		;6aa5
	ld a,(0c60ch)		;6aa8
	res 4,a			;6aab
	ld (0c60ch),a		;6aad
	ld a,(0c64ch)		;6ab0
	res 4,a			;6ab3
	ld (0c64ch),a		;6ab5
	ld a,(0c68ch)		;6ab8
	res 4,a			;6abb
	ld (0c68ch),a		;6abd
	call sub_642eh		;6ac0
	ld hl,00000h		;6ac3
	ld (0988bh),hl		;6ac6
	ld (0988dh),hl		;6ac9
	call sub_6434h		;6acc
	ld a,001h		;6acf
	ld (0c87dh),a		;6ad1
	ld c,a			;6ad4
	ret			;6ad5
l6ad6h:
	ld a,(0c8c8h)		;6ad6
	call 04c23h		;6ad9
	ld a,(0c880h)		;6adc
	call l6106h		;6adf
	ld hl,0c840h		;6ae2
	bit 1,(hl)		;6ae5
	jp nz,l6b5eh		;6ae7
	ld a,(0c840h)		;6aea
	bit 0,a			;6aed
	call nz,sub_71c6h	;6aef
	ld a,001h		;6af2
	ld (0c858h),a		;6af4
	ld ix,0c600h		;6af7
	call sub_6b56h		;6afb
	ld a,002h		;6afe
	ld (0c858h),a		;6b00
	ld ix,0c640h		;6b03
	call sub_6b56h		;6b07
	ld a,004h		;6b0a
	ld (0c858h),a		;6b0c
	ld ix,0c680h		;6b0f
	call sub_6b56h		;6b13
	ld a,008h		;6b16
	ld (0c858h),a		;6b18
	ld ix,0c6c0h		;6b1b
	call sub_6b56h		;6b1f
	ld a,010h		;6b22
	ld (0c858h),a		;6b24
	ld ix,0c700h		;6b27
	call sub_6b56h		;6b2b
	ld a,020h		;6b2e
	ld (0c858h),a		;6b30
	ld ix,0c740h		;6b33
	call sub_6b56h		;6b37
	ld a,040h		;6b3a
	ld (0c858h),a		;6b3c
	ld ix,0c780h		;6b3f
	call sub_6b56h		;6b43
	ld a,080h		;6b46
	ld (0c858h),a		;6b48
	ld ix,0c7c0h		;6b4b
	call sub_6b56h		;6b4f
	call sub_6024h		;6b52
	ret			;6b55
sub_6b56h:
	ld a,(ix+000h)		;6b56
	or a			;6b59
	call nz,sub_6b76h	;6b5a
	ret			;6b5d
l6b5eh:
	ld a,008h		;6b5e
	ld (0c858h),a		;6b60
	ld ix,0c6c0h		;6b63
	call sub_6b56h		;6b67
	ld a,0bfh		;6b6a
	ld (0c880h),a		;6b6c
	call sub_7372h		;6b6f
	call sub_6024h		;6b72
	ret			;6b75
sub_6b76h:
	dec (ix+004h)		;6b76
	ld a,(ix+004h)		;6b79
	cp 0ffh			;6b7c
	jr z,l6b87h		;6b7e
	cp 000h			;6b80
	jr z,l6b8dh		;6b82
	jp l6dd5h		;6b84
l6b87h:
	dec (ix+02ch)		;6b87
	jp l6dd5h		;6b8a
l6b8dh:
	ld a,(ix+02ch)		;6b8d
	or a			;6b90
	jp nz,l6dd5h		;6b91
	ld l,(ix+002h)		;6b94
	ld h,(ix+003h)		;6b97
l6b9ah:
	ld a,(hl)		;6b9a
	cp 0ffh			;6b9b
	jp z,l724ah		;6b9d
	cp 0d0h			;6ba0
	jr c,l6babh		;6ba2
	call sub_728bh		;6ba4
	inc hl			;6ba7
	jp l6b9ah		;6ba8
l6babh:
	bit 0,(ix+009h)		;6bab
	jp nz,l6bc2h		;6baf
	bit 1,(ix+009h)		;6bb2
	jp nz,l6c38h		;6bb6
	ld a,(ix+009h)		;6bb9
	and 01ch		;6bbc
	jp nz,l6cb1h		;6bbe
	ret			;6bc1
l6bc2h:
	ld a,(hl)		;6bc2
	and 00fh		;6bc3
	ld b,a			;6bc5
	ld a,(ix+014h)		;6bc6
	jr z,l6bd4h		;6bc9
	ld e,a			;6bcb
l6bcch:
	add a,e			;6bcc
	jr nc,l6bd2h		;6bcd
	inc (ix+02ch)		;6bcf
l6bd2h:
	djnz l6bcch		;6bd2
l6bd4h:
	ld (ix+004h),a		;6bd4
	ld a,(hl)		;6bd7
	and 0f0h		;6bd8
	rrca			;6bda
	rrca			;6bdb
	rrca			;6bdc
	rrca			;6bdd
	call sub_6d3ch		;6bde
	bit 7,(ix+009h)		;6be1
	ret nz			;6be5
	cp 00ch			;6be6
	jr nc,l6c22h		;6be8
	ld hl,l6c2bh		;6bea
	ld e,a			;6bed
	ld d,000h		;6bee
	add hl,de		;6bf0
	ld l,(hl)		;6bf1
	ld h,000h		;6bf2
	ld a,(ix+016h)		;6bf4
	or a			;6bf7
	jr z,l6bfeh		;6bf8
	ld b,a			;6bfa
l6bfbh:
	add hl,hl		;6bfb
	djnz l6bfbh		;6bfc
l6bfeh:
	ld (ix+010h),l		;6bfe
	ld (ix+011h),h		;6c01
	ld e,(ix+015h)		;6c04
	ld a,(0c840h)		;6c07
	and 011h		;6c0a
	call nz,sub_7226h	;6c0c
	ld (ix+012h),e		;6c0f
	ld a,(ix+00dh)		;6c12
	and 0f0h		;6c15
	ld (ix+00dh),a		;6c17
	set 1,(ix+00dh)		;6c1a
	call sub_6d44h		;6c1e
	ret			;6c21
l6c22h:
	ld a,(ix+00dh)		;6c22
	and 0f0h		;6c25
	ld (ix+00dh),a		;6c27
	ret			;6c2a
l6c2bh:
	ld l,d			;6c2b
	ld h,h			;6c2c
	ld e,(hl)		;6c2d
	ld e,c			;6c2e
	ld d,h			;6c2f
	ld c,a			;6c30
	ld c,d			;6c31
	ld b,(hl)		;6c32
	ld b,d			;6c33
	ccf			;6c34
	dec sp			;6c35
	jr c,l6c6dh		;6c36
l6c38h:
	ld a,(ix+00dh)		;6c38
	and 003h		;6c3b
	jr z,l6ca2h		;6c3d
	cp 001h			;6c3f
	jr z,l6c79h		;6c41
	ld a,(hl)		;6c43
	bit 6,(ix+00eh)		;6c44
	jr nz,l6c65h		;6c48
	bit 5,(ix+00eh)		;6c4a
	jr nz,l6c6ah		;6c4e
	and 0f0h		;6c50
	ld b,a			;6c52
	xor (hl)		;6c53
	ld d,a			;6c54
	inc hl			;6c55
	ld a,(hl)		;6c56
	ld (ix+010h),a		;6c57
	ld (ix+011h),d		;6c5a
	ld a,b			;6c5d
	rrca			;6c5e
	rrca			;6c5f
	rrca			;6c60
	rrca			;6c61
	ld b,a			;6c62
	jr l6c7dh		;6c63
l6c65h:
	ld (ix+010h),a		;6c65
	jr l6c91h		;6c68
l6c6ah:
	and 0f0h		;6c6a
	rrca			;6c6c
l6c6dh:
	rrca			;6c6d
	rrca			;6c6e
	rrca			;6c6f
	ld b,a			;6c70
	ld a,(hl)		;6c71
	and 00fh		;6c72
	ld (ix+011h),a		;6c74
	jr l6c7dh		;6c77
l6c79h:
	ld a,(hl)		;6c79
	and 00fh		;6c7a
	ld b,a			;6c7c
l6c7dh:
	ld a,(0c858h)		;6c7d
	cp 008h			;6c80
	jr nc,l6c8ch		;6c82
	bit 2,(ix+00dh)		;6c84
	jr z,l6c8ch		;6c88
	ld b,010h		;6c8a
l6c8ch:
	inc b			;6c8c
	inc b			;6c8d
	ld (ix+012h),b		;6c8e
l6c91h:
	ld e,(ix+012h)		;6c91
	ld a,(0c840h)		;6c94
	and 011h		;6c97
	call nz,sub_7226h	;6c99
	ld (ix+012h),e		;6c9c
	call sub_6d44h		;6c9f
l6ca2h:
	bit 7,(ix+009h)		;6ca2
	ret nz			;6ca6
	call sub_6d3ch		;6ca7
	ld a,(ix+013h)		;6caa
	ld (ix+004h),a		;6cad
	ret			;6cb0
l6cb1h:
	set 7,(ix+009h)		;6cb1
	call l6bc2h		;6cb5
	ld b,a			;6cb8
	call sub_6ce8h		;6cb9
	ld a,b			;6cbc
	add a,a			;6cbd
	ld e,a			;6cbe
	ld d,000h		;6cbf
	add hl,de		;6cc1
	ld e,(hl)		;6cc2
	inc hl			;6cc3
	ld d,(hl)		;6cc4
	ex de,hl		;6cc5
	ld a,(hl)		;6cc6
sub_6cc7h:
	set 1,(ix+009h)		;6cc7
	call l6b9ah		;6ccb
	res 1,(ix+009h)		;6cce
	res 7,(ix+009h)		;6cd2
	ld a,(ix+013h)		;6cd6
	ld (ix+019h),a		;6cd9
	inc hl			;6cdc
	ld (ix+017h),l		;6cdd
	ld (ix+018h),h		;6ce0
	set 0,(ix+00eh)		;6ce3
	ret			;6ce7
sub_6ce8h:
	bit 2,(ix+009h)		;6ce8
	jp nz,l6cfdh		;6cec
	bit 3,(ix+009h)		;6cef
	jp nz,l6d12h		;6cf3
	bit 4,(ix+009h)		;6cf6
	jp nz,l6d27h		;6cfa
l6cfdh:
	ld a,(ix+029h)		;6cfd
	cp 000h			;6d00
	jp z,l6d0ah		;6d02
	cp 001h			;6d05
	jp z,l6d0eh		;6d07
l6d0ah:
	ld hl,09b00h		;6d0a
	ret			;6d0d
l6d0eh:
	ld hl,09bf3h		;6d0e
	ret			;6d11
l6d12h:
	ld a,(ix+029h)		;6d12
	cp 000h			;6d15
	jp z,l6d1fh		;6d17
	cp 001h			;6d1a
	jp z,l6d23h		;6d1c
l6d1fh:
	ld hl,09bf3h		;6d1f
	ret			;6d22
l6d23h:
	ld hl,09bf3h		;6d23
	ret			;6d26
l6d27h:
	ld a,(ix+029h)		;6d27
	cp 000h			;6d2a
	jp z,l6d34h		;6d2c
	cp 001h			;6d2f
	jp z,l6d38h		;6d31
l6d34h:
	ld hl,09bf3h		;6d34
	ret			;6d37
l6d38h:
	ld hl,09bf3h		;6d38
	ret			;6d3b
sub_6d3ch:
	inc hl			;6d3c
	ld (ix+002h),l		;6d3d
	ld (ix+003h),h		;6d40
	ret			;6d43
sub_6d44h:
	call sub_6e28h		;6d44
	res 4,(ix+00eh)		;6d47
	bit 4,(ix+03ch)		;6d4b
	jp z,l6d56h		;6d4f
	set 6,(ix+03ch)		;6d52
l6d56h:
	res 5,(ix+03ch)		;6d56
	ld a,(ix+00fh)		;6d5a
	and 0d7h		;6d5d
	ld (ix+00fh),a		;6d5f
	xor a			;6d62
	ld (ix+01dh),a		;6d63
	ld (ix+01eh),a		;6d66
	ld (ix+031h),a		;6d69
	ld (ix+033h),a		;6d6c
	res 6,(ix+030h)		;6d6f
	res 7,(ix+030h)		;6d73
	res 7,(ix+00dh)		;6d77
	res 5,(ix+030h)		;6d7b
	res 3,(ix+030h)		;6d7f
	ld (ix+01fh),a		;6d83
	ld (ix+020h),a		;6d86
	set 2,(ix+00fh)		;6d89
	ld a,(ix+012h)		;6d8d
	bit 7,(ix+00eh)		;6d90
	jr z,l6d9dh		;6d94
	ld e,(ix+02fh)		;6d96
	sub e			;6d99
	call m,sub_6dd3h	;6d9a
l6d9dh:
	ld (ix+00ch),a		;6d9d
	set 1,(ix+030h)		;6da0
	ld a,(0c858h)		;6da4
	cp 008h			;6da7
	jr nc,l6db0h		;6da9
	bit 2,(ix+00dh)		;6dab
	ret nz			;6daf
l6db0h:
	bit 0,(ix+030h)		;6db0
	jr z,l6dc3h		;6db4
	res 2,(ix+030h)		;6db6
	res 1,(ix+030h)		;6dba
	res 2,(ix+00fh)		;6dbe
	ret			;6dc2
l6dc3h:
	bit 1,(ix+00fh)		;6dc3
	ret z			;6dc7
	ld a,(ix+025h)		;6dc8
	ld (ix+00ch),a		;6dcb
	res 2,(ix+00fh)		;6dce
	ret			;6dd2
sub_6dd3h:
	xor a			;6dd3
	ret			;6dd4
l6dd5h:
	bit 0,(ix+00eh)		;6dd5
	jp nz,l6e00h		;6dd9
	bit 4,(ix+03ch)		;6ddc
	call nz,sub_6fach	;6de0
	bit 2,(ix+00eh)		;6de3
	call nz,sub_6e43h	;6de7
	bit 0,(ix+00fh)		;6dea
	call nz,sub_6e91h	;6dee
	bit 6,(ix+00fh)		;6df1
	call nz,sub_7059h	;6df5
	bit 6,(ix+00dh)		;6df8
	call nz,sub_7168h	;6dfc
	ret			;6dff
l6e00h:
	dec (ix+019h)		;6e00
	ret nz			;6e03
	ld l,(ix+017h)		;6e04
	ld h,(ix+018h)		;6e07
	ld a,(hl)		;6e0a
	cp 0ffh			;6e0b
	jr z,l6e17h		;6e0d
	set 7,(ix+009h)		;6e0f
	call sub_6cc7h		;6e13
	ret			;6e16
l6e17h:
	res 0,(ix+00eh)		;6e17
	xor a			;6e1b
	ld (ix+00ch),a		;6e1c
	ld a,(ix+00dh)		;6e1f
	and 0f0h		;6e22
	ld (ix+00dh),a		;6e24
	ret			;6e27
sub_6e28h:
	ld e,(ix+010h)		;6e28
	ld d,(ix+011h)		;6e2b
	bit 1,(ix+00eh)		;6e2e
	jr z,l6e3ch		;6e32
	ld a,(ix+026h)		;6e34
	add a,e			;6e37
	ld e,a			;6e38
	jr nc,l6e3ch		;6e39
	inc d			;6e3b
l6e3ch:
	ld (ix+00ah),e		;6e3c
	ld (ix+00bh),d		;6e3f
	ret			;6e42
sub_6e43h:
	inc (ix+01eh)		;6e43
	ld a,(ix+01eh)		;6e46
	ld b,(ix+00eh)		;6e49
	bit 4,b			;6e4c
	jr nz,l6e62h		;6e4e
	bit 3,b			;6e50
	jr z,l6e62h		;6e52
	cp (ix+01ah)		;6e54
	ret nz			;6e57
	ld (ix+01eh),000h	;6e58
	set 4,(ix+00eh)		;6e5c
	jr l6e66h		;6e60
l6e62h:
	cp (ix+01bh)		;6e62
	ret nz			;6e65
l6e66h:
	ld e,(ix+00ah)		;6e66
	ld d,(ix+00bh)		;6e69
	ld b,(ix+01ch)		;6e6c
	ld a,(ix+01dh)		;6e6f
	cpl			;6e72
	ld (ix+01dh),a		;6e73
	and a			;6e76
	ld a,e			;6e77
	jr nz,l6e81h		;6e78
	add a,b			;6e7a
	ld e,a			;6e7b
	jr nc,l6e86h		;6e7c
	inc d			;6e7e
	jr l6e86h		;6e7f
l6e81h:
	sub b			;6e81
	ld e,a			;6e82
	jr nc,l6e86h		;6e83
	dec d			;6e85
l6e86h:
	ld (ix+00ah),e		;6e86
	ld (ix+00bh),d		;6e89
	ld (ix+01eh),000h	;6e8c
	ret			;6e90
sub_6e91h:
	ld a,(0c858h)		;6e91
	cp 008h			;6e94
	jr nc,l6e9dh		;6e96
	bit 2,(ix+00dh)		;6e98
	ret nz			;6e9c
l6e9dh:
	call sub_6ea4h		;6e9d
	ld (ix+00ch),e		;6ea0
	ret			;6ea3
sub_6ea4h:
	ld e,(ix+00ch)		;6ea4
	inc (ix+01fh)		;6ea7
	ld b,(ix+01fh)		;6eaa
	ld a,(ix+02ch)		;6ead
	or a			;6eb0
	jr nz,l6ebch		;6eb1
	ld a,(ix+024h)		;6eb3
	cp (ix+004h)		;6eb6
	call nc,sub_6fa7h	;6eb9
l6ebch:
	bit 5,(ix+00fh)		;6ebc
	jp nz,l6f8dh		;6ec0
	bit 3,(ix+00fh)		;6ec3
	jr nz,l6f41h		;6ec7
	bit 2,(ix+00fh)		;6ec9
	jr nz,l6f21h		;6ecd
	bit 1,(ix+030h)		;6ecf
	jr nz,l6f0eh		;6ed3
	bit 2,(ix+030h)		;6ed5
	jr nz,l6ef8h		;6ed9
	ld a,(ix+035h)		;6edb
	ld d,a			;6ede
	ld a,e			;6edf
	sub d			;6ee0
	jp c,l6eeah		;6ee1
	cp (ix+034h)		;6ee4
	jp nc,l6eedh		;6ee7
l6eeah:
	ld a,(ix+034h)		;6eea
l6eedh:
	ld e,a			;6eed
	ld a,b			;6eee
	cp (ix+025h)		;6eef
	ret nz			;6ef2
	set 2,(ix+030h)		;6ef3
	ret			;6ef7
l6ef8h:
	ld a,(ix+012h)		;6ef8
	sub (ix+036h)		;6efb
	ld c,a			;6efe
	ld a,e			;6eff
	inc a			;6f00
	ld e,a			;6f01
	cp c			;6f02
	ret c			;6f03
	set 2,(ix+00fh)		;6f04
	ld (ix+01fh),000h	;6f08
	ld e,c			;6f0c
	ret			;6f0d
l6f0eh:
	ld a,e			;6f0e
	inc a			;6f0f
	ld e,a			;6f10
	cp (ix+012h)		;6f11
	ret c			;6f14
	set 2,(ix+00fh)		;6f15
	ld e,(ix+012h)		;6f19
	ld (ix+01fh),000h	;6f1c
	ret			;6f20
l6f21h:
	ld a,e			;6f21
	dec a			;6f22
	jp m,l6f2fh		;6f23
	cp (ix+034h)		;6f26
	jp c,l6f2fh		;6f29
	ld e,a			;6f2c
	jr l6f33h		;6f2d
l6f2fh:
	ld a,(ix+034h)		;6f2f
	ld e,a			;6f32
l6f33h:
	ld a,b			;6f33
	cp (ix+021h)		;6f34
	ret c			;6f37
	ld (ix+01fh),000h	;6f38
	set 3,(ix+00fh)		;6f3c
	ret			;6f40
l6f41h:
	bit 4,(ix+00fh)		;6f41
	jp nz,l6f70h		;6f45
	ld a,b			;6f48
	cp (ix+022h)		;6f49
	ret nz			;6f4c
	ld a,e			;6f4d
	dec a			;6f4e
	jp m,l6f6bh		;6f4f
	cp (ix+034h)		;6f52
	jr c,l6f6bh		;6f55
	ld e,a			;6f57
	inc (ix+020h)		;6f58
	ld a,(ix+020h)		;6f5b
	cp (ix+023h)		;6f5e
	ld (ix+01fh),000h	;6f61
	ret nz			;6f65
	set 5,(ix+00fh)		;6f66
	ret			;6f6a
l6f6bh:
	ld a,(ix+034h)		;6f6b
	ld e,a			;6f6e
	ret			;6f6f
l6f70h:
	ld a,(ix+022h)		;6f70
	ld d,a			;6f73
	ld a,e			;6f74
	sub d			;6f75
	jp c,l6f7fh		;6f76
	cp (ix+034h)		;6f79
	jp nc,l6f82h		;6f7c
l6f7fh:
	ld a,(ix+034h)		;6f7f
l6f82h:
	ld e,a			;6f82
	ld a,b			;6f83
	cp (ix+023h)		;6f84
	ret nz			;6f87
	set 5,(ix+00fh)		;6f88
	ret			;6f8c
l6f8dh:
	ld a,(ix+024h)		;6f8d
	cp (ix+004h)		;6f90
	jr nc,l6f96h		;6f93
	ret			;6f95
l6f96h:
	ld a,e			;6f96
	dec a			;6f97
	jp m,l6fa2h		;6f98
	cp (ix+034h)		;6f9b
	jr c,l6fa2h		;6f9e
	jr l6fa5h		;6fa0
l6fa2h:
	ld a,(ix+034h)		;6fa2
l6fa5h:
	ld e,a			;6fa5
	ret			;6fa6
sub_6fa7h:
	set 5,(ix+00fh)		;6fa7
	ret			;6fab
sub_6fach:
	bit 6,(ix+03ch)		;6fac
	ret z			;6fb0
	bit 7,(ix+03ch)		;6fb1
	jp nz,l7000h		;6fb5
	bit 5,(ix+03ch)		;6fb8
	jp nz,l6fd8h		;6fbc
	ld l,(ix+010h)		;6fbf
	ld h,(ix+011h)		;6fc2
	ld b,(ix+03ah)		;6fc5
l6fc8h:
	ld d,000h		;6fc8
	ld e,(ix+039h)		;6fca
	add hl,de		;6fcd
	jp nc,l6fd3h		;6fce
	sbc hl,de		;6fd1
l6fd3h:
	djnz l6fc8h		;6fd3
	jp l701dh		;6fd5
l6fd8h:
	ld a,(ix+00ah)		;6fd8
	ld d,(ix+00bh)		;6fdb
	sbc a,(ix+039h)		;6fde
	ld e,a			;6fe1
	jp nc,l6fefh		;6fe2
	ld a,d			;6fe5
	or a			;6fe6
	jr nz,l6feeh		;6fe7
	ld de,00001h		;6fe9
	jr l6fefh		;6fec
l6feeh:
	dec d			;6fee
l6fefh:
	ld (ix+00ah),e		;6fef
	ld (ix+00bh),d		;6ff2
	dec (ix+03ah)		;6ff5
	ld a,(ix+03ah)		;6ff8
	or a			;6ffb
	ret nz			;6ffc
	jp l7042h		;6ffd
l7000h:
	bit 5,(ix+03ch)		;7000
	jp nz,l7028h		;7004
	ld l,(ix+010h)		;7007
	ld h,(ix+011h)		;700a
	ld b,(ix+03ah)		;700d
l7010h:
	ld d,000h		;7010
	ld e,(ix+039h)		;7012
	sbc hl,de		;7015
	jp nc,l701bh		;7017
	add hl,de		;701a
l701bh:
	djnz l7010h		;701b
l701dh:
	ld (ix+00ah),l		;701d
	ld (ix+00bh),h		;7020
	set 5,(ix+03ch)		;7023
	ret			;7027
l7028h:
	ld l,(ix+00ah)		;7028
	ld h,(ix+00bh)		;702b
	ld d,000h		;702e
	ld e,(ix+039h)		;7030
	add hl,de		;7033
	ld (ix+00ah),l		;7034
	ld (ix+00bh),h		;7037
	dec (ix+03ah)		;703a
	ld a,(ix+03ah)		;703d
	or a			;7040
	ret nz			;7041
l7042h:
	res 6,(ix+03ch)		;7042
	ld e,(ix+010h)		;7046
	ld d,(ix+011h)		;7049
	ld (ix+00ah),e		;704c
	ld (ix+00bh),d		;704f
	ld a,(ix+03bh)		;7052
	ld (ix+03ah),a		;7055
	ret			;7058
sub_7059h:
	ld a,(0c858h)		;7059
	cp 008h			;705c
	jr nc,l7065h		;705e
	bit 2,(ix+00dh)		;7060
	ret nz			;7064
l7065h:
	call sub_706ch		;7065
	ld (ix+00ch),e		;7068
	ret			;706b
sub_706ch:
	ld e,(ix+00ch)		;706c
	inc (ix+01fh)		;706f
	ld b,(ix+01fh)		;7072
	bit 3,(ix+00fh)		;7075
	jr nz,l7085h		;7079
	bit 2,(ix+00fh)		;707b
	jp nz,l6f21h		;707f
	jp l6f0eh		;7082
l7085h:
	bit 3,(ix+030h)		;7085
	ret nz			;7089
	bit 5,(ix+00fh)		;708a
	jp nz,l7106h		;708e
	ld a,(ix+023h)		;7091
	ld d,a			;7094
	bit 5,(ix+030h)		;7095
	ld a,(ix+037h)		;7099
	jr nz,l70b8h		;709c
	set 5,(ix+030h)		;709e
	ld a,e			;70a2
	sub (ix+038h)		;70a3
	jr c,l70adh		;70a6
	cp (ix+034h)		;70a8
	jr nc,l70b0h		;70ab
l70adh:
	ld a,(ix+034h)		;70ad
l70b0h:
	ld (ix+020h),a		;70b0
	ld a,e			;70b3
	rlca			;70b4
	rlca			;70b5
	rlca			;70b6
	rlca			;70b7
l70b8h:
	sub d			;70b8
	jp c,l70f6h		;70b9
	ld (ix+037h),a		;70bc
	rrca			;70bf
	rrca			;70c0
	rrca			;70c1
	rrca			;70c2
	and 00fh		;70c3
	cp (ix+034h)		;70c5
	jp c,l70f6h		;70c8
	ld a,(ix+037h)		;70cb
	bit 3,a			;70ce
	jr z,l70d4h		;70d0
	add a,010h		;70d2
l70d4h:
	rrca			;70d4
	rrca			;70d5
	rrca			;70d6
	rrca			;70d7
	and 00fh		;70d8
	ld e,a			;70da
	cp (ix+034h)		;70db
	jr nz,l70e4h		;70de
l70e0h:
	set 4,(ix+030h)		;70e0
l70e4h:
	ld a,b			;70e4
	cp (ix+022h)		;70e5
	ret nz			;70e8
	set 5,(ix+00fh)		;70e9
	res 5,(ix+030h)		;70ed
	ld (ix+01fh),000h	;70f1
	ret			;70f5
l70f6h:
	ld a,(ix+034h)		;70f6
	rlca			;70f9
	rlca			;70fa
	rlca			;70fb
	rlca			;70fc
	ld (ix+037h),a		;70fd
	ld a,(ix+034h)		;7100
	ld e,a			;7103
	jr l70e0h		;7104
l7106h:
	ld a,(ix+024h)		;7106
	ld d,a			;7109
	bit 5,(ix+030h)		;710a
	ld a,(ix+037h)		;710e
	jr nz,l7127h		;7111
	set 5,(ix+030h)		;7113
	ld a,e			;7117
	bit 4,(ix+030h)		;7118
	jr z,l7123h		;711c
	cp (ix+020h)		;711e
	jr nc,l7162h		;7121
l7123h:
	rlca			;7123
	rlca			;7124
	rlca			;7125
	rlca			;7126
l7127h:
	add a,d			;7127
	ld (ix+037h),a		;7128
	jp c,l715ah		;712b
	bit 3,a			;712e
	jr z,l7136h		;7130
	add a,010h		;7132
	jr c,l715ah		;7134
l7136h:
	rrca			;7136
	rrca			;7137
	rrca			;7138
	rrca			;7139
	and 00fh		;713a
l713ch:
	ld e,a			;713c
	bit 4,(ix+030h)		;713d
	jr z,l7148h		;7141
	cp (ix+020h)		;7143
	jr nc,l714dh		;7146
l7148h:
	ld a,b			;7148
	cp (ix+022h)		;7149
	ret nz			;714c
l714dh:
	res 5,(ix+00fh)		;714d
	res 5,(ix+030h)		;7151
	ld (ix+01fh),000h	;7155
	ret			;7159
l715ah:
	ld (ix+037h),0f0h	;715a
	ld a,00fh		;715e
	jr l713ch		;7160
l7162h:
	set 3,(ix+030h)		;7162
	jr l714dh		;7166
sub_7168h:
	bit 7,(ix+030h)		;7168
	ret nz			;716c
	bit 7,(ix+00dh)		;716d
	jr nz,l717fh		;7171
	ld (ix+033h),010h	;7173
	res 6,(ix+030h)		;7177
	set 7,(ix+00dh)		;717b
l717fh:
	ld a,(ix+00dh)		;717f
	and 030h		;7182
	jr z,l718eh		;7184
	cp 010h			;7186
	jr z,l718eh		;7188
	cp 020h			;718a
	jr z,l718eh		;718c
l718eh:
	ld e,(ix+032h)		;718e
	ld a,(ix+033h)		;7191
	add a,e			;7194
	jr nc,l719bh		;7195
	set 6,(ix+030h)		;7197
l719bh:
	ld (ix+033h),a		;719b
	and 0f0h		;719e
	rrca			;71a0
	rrca			;71a1
	rrca			;71a2
	rrca			;71a3
	bit 6,(ix+030h)		;71a4
	jr z,l71bah		;71a8
	bit 4,(ix+031h)		;71aa
	jr z,l71b8h		;71ae
	res 6,(ix+030h)		;71b0
	and 00fh		;71b4
	jr l71bah		;71b6
l71b8h:
	add a,010h		;71b8
l71bah:
	ld (ix+031h),a		;71ba
	cp 020h			;71bd
	ret c			;71bf
	and 01fh		;71c0
	ld (ix+031h),a		;71c2
	ret			;71c5
sub_71c6h:
	ld de,0c854h		;71c6
	ld a,(de)		;71c9
	ld b,a			;71ca
	inc de			;71cb
	ld a,(de)		;71cc
	ld c,a			;71cd
	ld hl,0c856h		;71ce
	inc (hl)		;71d1
	ld a,(hl)		;71d2
	cp b			;71d3
	ret nz			;71d4
	ld (hl),000h		;71d5
	inc hl			;71d7
	inc (hl)		;71d8
	ld a,(hl)		;71d9
	cp c			;71da
	ret nz			;71db
	ld hl,0c840h		;71dc
	res 0,(hl)		;71df
	xor a			;71e1
	ld hl,0c856h		;71e2
	ld (hl),a		;71e5
	inc hl			;71e6
	ld (hl),a		;71e7
	ld a,(0c640h)		;71e8
	ld e,a			;71eb
	ld a,(0c680h)		;71ec
	cp e			;71ef
	jr nz,l7200h		;71f0
	ld ix,0c680h		;71f2
	call l724ah		;71f6
	ld ix,0c6c0h		;71f9
	call l724ah		;71fd
l7200h:
	ld de,00040h		;7200
	ld ix,0c600h		;7203
	call l724ah		;7207
	add ix,de		;720a
	call l724ah		;720c
	ld ix,0c700h		;720f
	call l724ah		;7213
	add ix,de		;7216
	call l724ah		;7218
	add ix,de		;721b
	call l724ah		;721d
	add ix,de		;7220
	call l724ah		;7222
	ret			;7225
sub_7226h:
	ld a,(0c640h)		;7226
	ld b,a			;7229
	ld a,(0c680h)		;722a
	cp b			;722d
	jr z,l7236h		;722e
	ld a,(0c858h)		;7230
	and 0f3h		;7233
	ret z			;7235
l7236h:
	bit 2,(ix+00dh)		;7236
	jr nz,l7247h		;723a
	ld a,(0c857h)		;723c
	ld b,a			;723f
	ld a,e			;7240
	sub b			;7241
	ld e,000h		;7242
	ret m			;7244
	ld e,a			;7245
	ret			;7246
l7247h:
	ld e,000h		;7247
	ret			;7249
l724ah:
	xor a			;724a
	ld (ix+000h),a		;724b
	ld (ix+001h),a		;724e
	ld (ix+005h),a		;7251
	ld (ix+006h),a		;7254
	ld (ix+00ah),a		;7257
	ld (ix+00bh),a		;725a
	ld (ix+00ch),a		;725d
	ld (ix+00dh),a		;7260
	ld (ix+00eh),a		;7263
	ld (ix+00fh),a		;7266
	ld a,(0c858h)		;7269
	cp 008h			;726c
	ret nc			;726e
	nop			;726f
	cp 004h			;7270
	ld hl,0c85bh		;7272
	jr nz,l7286h		;7275
	res 0,(hl)		;7277
	res 1,(hl)		;7279
	bit 3,(hl)		;727b
	ret z			;727d
	bit 2,(hl)		;727e
	ret z			;7280
	set 2,(hl)		;7281
	res 3,(hl)		;7283
	ret			;7285
l7286h:
	res 2,(hl)		;7286
	res 3,(hl)		;7288
	ret			;728a
sub_728bh:
	cp 0e0h			;728b
	jp c,l757ch		;728d
	and 01fh		;7290
	push hl			;7292
	ld hl,l72a0h		;7293
	add a,a			;7296
	ld e,a			;7297
	ld d,000h		;7298
	add hl,de		;729a
	ld e,(hl)		;729b
	inc hl			;729c
	ld d,(hl)		;729d
	ex de,hl		;729e
	jp (hl)			;729f
l72a0h:
	sbc a,072h		;72a0
	call p,0de72h		;72a2
	ld (hl),d		;72a5
	call p,01172h		;72a6
	ld (hl),e		;72a9
	dec sp			;72aa
	ld (hl),e		;72ab
	ld c,a			;72ac
	ld (hl),e		;72ad
	ld e,a			;72ae
	ld (hl),e		;72af
	ld (hl),c		;72b0
	ld (hl),e		;72b1
	add a,b			;72b2
	ld (hl),e		;72b3
	adc a,e			;72b4
	ld (hl),e		;72b5
	xor d			;72b6
	ld (hl),e		;72b7
	ld (iy+007h),e		;72b8
	ld (hl),h		;72bb
	ld hl,(03574h)		;72bc
	ld (hl),h		;72bf
	dec sp			;72c0
	ld (hl),h		;72c1
	ld b,l			;72c2
	ld (hl),h		;72c3
	ld h,b			;72c4
	ld (hl),h		;72c5
	ld l,a			;72c6
	ld (hl),h		;72c7
	ld (hl),l		;72c8
	ld (hl),h		;72c9
	ld a,e			;72ca
	ld (hl),h		;72cb
	add a,l			;72cc
	ld (hl),h		;72cd
	adc a,a			;72ce
	ld (hl),h		;72cf
	sbc a,d			;72d0
	ld (hl),h		;72d1
	cp 074h			;72d2
	add hl,bc		;72d4
	ld (hl),l		;72d5
	ld de,02975h		;72d6
	ld (hl),l		;72d9
	ld b,e			;72da
	ld (hl),l		;72db
	ld b,(hl)		;72dc
	ld (hl),l		;72dd
	pop hl			;72de
l72dfh:
	res 6,(ix+00eh)		;72df
	ld a,(hl)		;72e3
	and 003h		;72e4
	ld (ix+00dh),a		;72e6
	ld b,a			;72e9
	inc hl			;72ea
	ld a,(hl)		;72eb
	ld (ix+013h),a		;72ec
	ld a,b			;72ef
	or a			;72f0
	ret nz			;72f1
	dec hl			;72f2
	ret			;72f3
	pop hl			;72f4
	ld a,(0c858h)		;72f5
	cp 004h			;72f8
	ld a,(0c85bh)		;72fa
	jr nz,l7308h		;72fd
	set 0,a			;72ff
	res 1,a			;7301
	ld (0c85bh),a		;7303
	jr l72dfh		;7306
l7308h:
	set 2,a			;7308
	res 3,a			;730a
	ld (0c85bh),a		;730c
	jr l72dfh		;730f
	pop hl			;7311
	inc hl			;7312
	ld a,(hl)		;7313
	and 01fh		;7314
	ld b,a			;7316
	ld a,(0c858h)		;7317
	cp 004h			;731a
	ld a,b			;731c
	jr nz,l732dh		;731d
	ld (0c859h),a		;731f
	ld a,(0c85bh)		;7322
	set 0,a			;7325
	res 1,a			;7327
	ld (0c85bh),a		;7329
	ret			;732c
l732dh:
	ld (0c85ah),a		;732d
	ld a,(0c85bh)		;7330
	set 2,a			;7333
	res 3,a			;7335
	ld (0c85bh),a		;7337
	ret			;733a
	pop hl			;733b
	inc hl			;733c
	res 3,(ix+00dh)		;733d
	ld a,(hl)		;7341
	ld (0c85ch),a		;7342
	ld de,0c85bh		;7345
	ld a,(de)		;7348
	set 5,a			;7349
	ld (de),a		;734b
	jp l7350h		;734c
	pop hl			;734f
l7350h:
	inc hl			;7350
	ld a,(hl)		;7351
	ld (0c85eh),a		;7352
	ld de,0c85bh		;7355
	ld a,(de)		;7358
	set 6,a			;7359
	ld (de),a		;735b
	jp l7360h		;735c
	pop hl			;735f
l7360h:
	inc hl			;7360
	ld a,(hl)		;7361
	ld (0c85dh),a		;7362
	ld de,0c85bh		;7365
	ld a,(de)		;7368
	set 7,a			;7369
	ld (de),a		;736b
	set 2,(ix+00dh)		;736c
	ret			;7370
	pop hl			;7371
sub_7372h:
	ld de,0c85bh		;7372
	xor a			;7375
	ld (de),a		;7376
	ld a,(ix+00dh)		;7377
	and 0f3h		;737a
	ld (ix+00dh),a		;737c
	ret			;737f
	pop hl			;7380
	inc hl			;7381
	ld a,(hl)		;7382
	ld (ix+014h),a		;7383
	xor a			;7386
	ld (ix+02ch),a		;7387
	ret			;738a
	pop hl			;738b
	inc hl			;738c
	ld a,(hl)		;738d
	and 0f0h		;738e
	jr z,l739fh		;7390
	rrca			;7392
	rrca			;7393
	rrca			;7394
	rrca			;7395
	ld (ix+036h),a		;7396
	set 0,(ix+030h)		;7399
	jr l73a3h		;739d
l739fh:
	res 0,(ix+030h)		;739f
l73a3h:
	ld a,(hl)		;73a3
	and 00fh		;73a4
	ld (ix+015h),a		;73a6
	ret			;73a9
	pop hl			;73aa
	inc hl			;73ab
	ld a,(ix+00fh)		;73ac
	and 080h		;73af
	ld (ix+00fh),a		;73b1
	ld a,(hl)		;73b4
	and 0f0h		;73b5
	rrca			;73b7
	rrca			;73b8
	rrca			;73b9
	rrca			;73ba
	cp 008h			;73bb
	jp nc,l73c4h		;73bd
	set 2,(ix+00fh)		;73c0
l73c4h:
	res 3,a			;73c4
	inc a			;73c6
	bit 2,(ix+00fh)		;73c7
	jp nz,l73d2h		;73cb
	set 1,(ix+00fh)		;73ce
l73d2h:
	ld (ix+021h),a		;73d2
	ld a,(hl)		;73d5
	and 00fh		;73d6
	cp 008h			;73d8
	jp c,l73e1h		;73da
	set 4,(ix+00fh)		;73dd
l73e1h:
	res 3,a			;73e1
	inc a			;73e3
	ld (ix+022h),a		;73e4
	inc hl			;73e7
	ld a,(hl)		;73e8
	and 0f0h		;73e9
	rrca			;73eb
	rrca			;73ec
	rrca			;73ed
	rrca			;73ee
	ld (ix+023h),a		;73ef
	ld a,(hl)		;73f2
	and 00fh		;73f3
	ld (ix+024h),a		;73f5
	set 0,(ix+00fh)		;73f8
	ret			;73fc
	pop hl			;73fd
	ld a,(ix+00fh)		;73fe
	and 080h		;7401
	ld (ix+00fh),a		;7403
	ret			;7406
	pop hl			;7407
	inc hl			;7408
	ld a,(hl)		;7409
	and 0f0h		;740a
	rrca			;740c
	rrca			;740d
	rrca			;740e
	rrca			;740f
	jp z,l7421h		;7410
	ld (ix+035h),a		;7413
	ld a,(hl)		;7416
	and 00fh		;7417
	ld (ix+025h),a		;7419
	set 0,(ix+030h)		;741c
	ret			;7420
l7421h:
	res 0,(ix+030h)		;7421
	ld a,(hl)		;7425
	ld (ix+025h),a		;7426
	ret			;7429
	pop hl			;742a
	inc hl			;742b
	ld a,(hl)		;742c
	ld (ix+026h),a		;742d
	set 1,(ix+00eh)		;7430
	ret			;7434
	pop hl			;7435
	res 1,(ix+00eh)		;7436
	ret			;743a
	pop hl			;743b
	ld a,(ix+00eh)		;743c
	and 0e2h		;743f
	ld (ix+00eh),a		;7441
	ret			;7444
	pop hl			;7445
	inc hl			;7446
	ld a,(ix+00eh)		;7447
	or 014h			;744a
	ld (ix+00eh),a		;744c
	ld a,(hl)		;744f
	and 00fh		;7450
	ld (ix+01ch),a		;7452
	ld a,(hl)		;7455
	and 0f0h		;7456
	rrca			;7458
	rrca			;7459
	rrca			;745a
	rrca			;745b
	ld (ix+01bh),a		;745c
	ret			;745f
	pop hl			;7460
	inc hl			;7461
	ld a,(hl)		;7462
	ld (ix+01ah),a		;7463
	ld a,(ix+00eh)		;7466
	or 00ch			;7469
	ld (ix+00eh),a		;746b
	ret			;746e
	pop hl			;746f
	res 3,(ix+00eh)		;7470
	ret			;7474
	pop hl			;7475
	set 6,(ix+00eh)		;7476
	ret			;747a
	pop hl			;747b
l747ch:
	ld a,l			;747c
	ld (ix+02dh),a		;747d
	ld a,h			;7480
	ld (ix+02eh),a		;7481
	ret			;7484
	pop hl			;7485
	ld a,(ix+00eh)		;7486
	and 09fh		;7489
	ld (ix+00eh),a		;748b
	ret			;748e
	pop hl			;748f
	set 7,(ix+00eh)		;7490
	inc hl			;7494
	ld a,(hl)		;7495
	ld (ix+02fh),a		;7496
	ret			;7499
	pop hl			;749a
	inc hl			;749b
	ld a,(hl)		;749c
	bit 7,a			;749d
	jr nz,l74c4h		;749f
	set 7,(ix+00fh)		;74a1
	res 7,(ix+00dh)		;74a5
	res 6,(ix+00dh)		;74a9
	res 3,(ix+03ch)		;74ad
sub_74b1h:
	ld de,l6442h		;74b1
	add a,a			;74b4
	add a,e			;74b5
	ld e,a			;74b6
	jr nc,l74bah		;74b7
	inc d			;74b9
l74bah:
	ld a,(de)		;74ba
	ld (ix+027h),a		;74bb
	inc de			;74be
	ld a,(de)		;74bf
	ld (ix+028h),a		;74c0
	ret			;74c3
l74c4h:
	set 7,(ix+00fh)		;74c4
	set 6,(ix+00dh)		;74c8
	set 7,(ix+00dh)		;74cc
	res 3,(ix+03ch)		;74d0
	ld a,(hl)		;74d4
	and 07fh		;74d5
	call sub_74b1h		;74d7
	inc hl			;74da
	ld a,(hl)		;74db
	bit 7,a			;74dc
	jr nz,l74e6h		;74de
	res 4,(ix+00dh)		;74e0
	jr l74eah		;74e4
l74e6h:
	set 4,(ix+00dh)		;74e6
l74eah:
	bit 6,a			;74ea
	jr nz,l74f4h		;74ec
	res 5,(ix+00dh)		;74ee
	jr l74f8h		;74f2
l74f4h:
	set 5,(ix+00dh)		;74f4
l74f8h:
	and 03fh		;74f8
	ld (ix+032h),a		;74fa
	ret			;74fd
	pop hl			;74fe
	call sub_7535h		;74ff
	ld (ix+007h),e		;7502
	ld (ix+008h),d		;7505
	ret			;7508
	pop hl			;7509
	ld l,(ix+007h)		;750a
	ld h,(ix+008h)		;750d
	ret			;7510
	pop hl			;7511
	inc hl			;7512
	ld a,(ix+005h)		;7513
	inc a			;7516
	cp (hl)			;7517
	jr z,l7524h		;7518
	ld (ix+005h),a		;751a
	ld l,(ix+02dh)		;751d
	ld h,(ix+02eh)		;7520
	ret			;7523
l7524h:
	ld (ix+005h),000h	;7524
	ret			;7528
	pop hl			;7529
	inc hl			;752a
	ld a,(ix+006h)		;752b
	inc a			;752e
	cp (hl)			;752f
	jr z,l753ch		;7530
	ld (ix+006h),a		;7532
sub_7535h:
	inc hl			;7535
	ld e,(hl)		;7536
	inc hl			;7537
	ld d,(hl)		;7538
	ex de,hl		;7539
	dec hl			;753a
	ret			;753b
l753ch:
	inc hl			;753c
	inc hl			;753d
	ld (ix+006h),000h	;753e
	ret			;7542
	pop hl			;7543
	jr sub_7535h		;7544
	pop hl			;7546
	inc hl			;7547
	ld b,(ix+009h)		;7548
	ld a,(hl)		;754b
	ld (ix+009h),a		;754c
	cp 001h			;754f
	ld a,b			;7551
	jp z,l756ch		;7552
	cp 001h			;7555
	ret nz			;7557
	ld a,(ix+00eh)		;7558
	ld (ix+02ah),a		;755b
	ld a,(ix+00fh)		;755e
	ld (ix+02bh),a		;7561
	xor a			;7564
	ld (ix+00eh),a		;7565
	ld (ix+00fh),a		;7568
	ret			;756b
l756ch:
	cp 001h			;756c
	ret z			;756e
	ld a,(ix+02ah)		;756f
	ld (ix+00eh),a		;7572
	ld a,(ix+02bh)		;7575
	ld (ix+00fh),a		;7578
	ret			;757b
l757ch:
	and 00fh		;757c
	push hl			;757e
	ld hl,l758ch		;757f
	add a,a			;7582
	ld e,a			;7583
	ld d,000h		;7584
	add hl,de		;7586
	ld e,(hl)		;7587
	inc hl			;7588
	ld d,(hl)		;7589
	ex de,hl		;758a
	jp (hl)			;758b
l758ch:
	xor h			;758c
	ld (hl),l		;758d
	xor h			;758e
	ld (hl),l		;758f
	xor h			;7590
	ld (hl),l		;7591
	xor h			;7592
	ld (hl),l		;7593
	xor h			;7594
	ld (hl),l		;7595
	xor h			;7596
	ld (hl),l		;7597
	or a			;7598
	ld (hl),l		;7599
	jp nc,0e975h		;759a
	ld (hl),l		;759d
	di			;759e
	ld (hl),l		;759f
	push af			;75a0
	ld (hl),l		;75a1
	rst 30h			;75a2
	ld (hl),l		;75a3
	cp 075h			;75a4
	inc b			;75a6
	halt			;75a7
	rst 20h			;75a8
	halt			;75a9
	call p,0e176h		;75aa
	ld a,(hl)		;75ad
	and 00fh		;75ae
	ld (ix+016h),a		;75b0
	ld (ix+029h),a		;75b3
	ret			;75b6
	pop hl			;75b7
	ld a,(ix+03ch)		;75b8
	or 050h			;75bb
	ld (ix+03ch),a		;75bd
	res 7,(ix+03ch)		;75c0
	inc hl			;75c4
	ld a,(hl)		;75c5
	ld (ix+039h),a		;75c6
	inc hl			;75c9
	ld a,(hl)		;75ca
	ld (ix+03ah),a		;75cb
	ld (ix+03bh),a		;75ce
	ret			;75d1
	pop hl			;75d2
	ld a,(ix+03ch)		;75d3
	or 0d0h			;75d6
	ld (ix+03ch),a		;75d8
	inc hl			;75db
	ld a,(hl)		;75dc
	ld (ix+039h),a		;75dd
	inc hl			;75e0
	ld a,(hl)		;75e1
	ld (ix+03ah),a		;75e2
	ld (ix+03bh),a		;75e5
	ret			;75e8
	pop hl			;75e9
	ld a,(ix+03ch)		;75ea
	and 00fh		;75ed
	ld (ix+03ch),a		;75ef
	ret			;75f2
	pop hl			;75f3
	ret			;75f4
	pop hl			;75f5
	ret			;75f6
	pop hl			;75f7
	inc hl			;75f8
	ld a,(hl)		;75f9
	ld (ix+034h),a		;75fa
	ret			;75fd
	pop hl			;75fe
	xor a			;75ff
	ld (ix+034h),a		;7600
	ret			;7603
	pop hl			;7604
	inc hl			;7605
	ld a,(ix+00fh)		;7606
	and 080h		;7609
	ld (ix+00fh),a		;760b
	ld a,(hl)		;760e
	and 0f0h		;760f
	rrca			;7611
	rrca			;7612
	rrca			;7613
	rrca			;7614
	cp 008h			;7615
	jp nc,l761eh		;7617
	set 2,(ix+00fh)		;761a
l761eh:
	res 3,a			;761e
	inc a			;7620
	bit 2,(ix+00fh)		;7621
	jp nz,l762ch		;7625
	set 1,(ix+00fh)		;7628
l762ch:
	ld (ix+021h),a		;762c
	ld a,(hl)		;762f
	and 00fh		;7630
	ld (ix+022h),a		;7632
	inc hl			;7635
	ld a,(hl)		;7636
	and 0f0h		;7637
	rrca			;7639
	rrca			;763a
	rrca			;763b
	rrca			;763c
	ld (ix+023h),a		;763d
	ld a,(hl)		;7640
	and 00fh		;7641
	ld (ix+024h),a		;7643
	ld b,a			;7646
	ld a,(ix+023h)		;7647
	sub b			;764a
	ld (ix+038h),a		;764b
	ld e,000h		;764e
	ld d,000h		;7650
	ld b,(ix+022h)		;7652
	ld a,(ix+023h)		;7655
l7658h:
	sub b			;7658
	jr c,l7664h		;7659
	inc d			;765b
	ld (ix+023h),a		;765c
	or a			;765f
	jr z,l7681h		;7660
	jr l7658h		;7662
l7664h:
	ld a,b			;7664
	ld b,(ix+023h)		;7665
	sub b			;7668
	rlca			;7669
	rlca			;766a
	rlca			;766b
	rlca			;766c
	and 0f0h		;766d
	ld (ix+023h),a		;766f
	ld b,(ix+022h)		;7672
l7675h:
	sub b			;7675
	jr c,l7681h		;7676
	inc e			;7678
	ld (ix+023h),a		;7679
	or a			;767c
	jr z,l7681h		;767d
	jr l7675h		;767f
l7681h:
	ld a,e			;7681
	or a			;7682
	jr z,l7688h		;7683
	cpl			;7685
	and 00fh		;7686
l7688h:
	ld (ix+023h),a		;7688
	ld a,d			;768b
	rlca			;768c
	rlca			;768d
	rlca			;768e
	rlca			;768f
	and 0f0h		;7690
	or (ix+023h)		;7692
	ld (ix+023h),a		;7695
	ld e,000h		;7698
	ld d,000h		;769a
	ld b,(ix+022h)		;769c
	ld a,(ix+024h)		;769f
l76a2h:
	sub b			;76a2
	jr c,l76aeh		;76a3
	inc d			;76a5
	ld (ix+024h),a		;76a6
	or a			;76a9
	jr z,l76cbh		;76aa
	jr l76a2h		;76ac
l76aeh:
	ld a,b			;76ae
	ld b,(ix+024h)		;76af
	sub b			;76b2
	rlca			;76b3
	rlca			;76b4
	rlca			;76b5
	rlca			;76b6
	and 0f0h		;76b7
	ld (ix+024h),a		;76b9
	ld b,(ix+022h)		;76bc
l76bfh:
	sub b			;76bf
	jr c,l76cbh		;76c0
	inc e			;76c2
	ld (ix+024h),a		;76c3
	or a			;76c6
	jr z,l76cbh		;76c7
	jr l76bfh		;76c9
l76cbh:
	ld a,e			;76cb
	or a			;76cc
	jr z,l76d2h		;76cd
	cpl			;76cf
	and 00fh		;76d0
l76d2h:
	ld (ix+024h),a		;76d2
	ld a,d			;76d5
	rlca			;76d6
	rlca			;76d7
	rlca			;76d8
	rlca			;76d9
	and 0f0h		;76da
	or (ix+024h)		;76dc
	ld (ix+024h),a		;76df
	set 6,(ix+00fh)		;76e2
	ret			;76e6
	pop hl			;76e7
	bit 1,(ix+009h)		;76e8
	jp z,l747ch		;76ec
	set 5,(ix+00eh)		;76ef
	ret			;76f3
	pop hl			;76f4
	res 7,(ix+00eh)		;76f5
	ret			;76f9
	ex af,af'		;76fa
	cp 0aeh			;76fb
	ld a,d			;76fd
	inc c			;76fe
	djnz $-58		;76ff
	ld a,d			;7701
	ret m			;7702
	ld a,d			;7703
	inc c			;7704
	ld d,038h		;7705
	ld a,e			;7707
	ld h,e			;7708
	ld a,e			;7709
	inc c			;770a
	inc d			;770b
	sub (hl)		;770c
	ld a,e			;770d
	ld sp,(0140ch)		;770e
	ld b,l			;7712
	ld a,h			;7713
	ld b,l			;7714
	ld a,h			;7715
	inc c			;7716
	jr l775eh		;7717
	ld a,h			;7719
	ld b,l			;771a
	ld a,h			;771b
	inc c			;771c
	jr l7764h		;771d
	ld a,h			;771f
	ld b,l			;7720
	ld a,h			;7721
	inc c			;7722
	inc (hl)		;7723
	ld b,(hl)		;7724
	ld a,h			;7725
	adc a,a			;7726
l7727h:
	ld a,h			;7727
	inc c			;7728
	ld e,h			;7729
	call c,0297ch		;772a
	ld a,l			;772d
	inc c			;772e
	ld h,b			;772f
	ld a,l			;7730
	ld a,l			;7731
	ret c			;7732
	ld a,l			;7733
	inc c			;7734
	ld h,h			;7735
	inc l			;7736
	ld a,(hl)		;7737
	inc l			;7738
	ld a,(hl)		;7739
	inc c			;773a
	ld l,b			;773b
	dec l			;773c
	ld a,(hl)		;773d
	ld c,a			;773e
	ld a,(hl)		;773f
	inc c			;7740
	ld l,h			;7741
	add a,d			;7742
	ld a,(hl)		;7743
	xor c			;7744
	ld a,(hl)		;7745
	inc c			;7746
	ld l,h			;7747
	rst 30h			;7748
	ld a,(hl)		;7749
	ld sp,00c7fh		;774a
	ld (hl),b		;774d
	add a,(hl)		;774e
	ld a,a			;774f
l7750h:
	xor e			;7750
	ld a,a			;7751
	inc c			;7752
	jr nc,l7727h		;7753
	ld a,a			;7755
	inc c			;7756
	add a,b			;7757
	inc c			;7758
	jr nc,l77ach		;7759
	add a,b			;775b
	cp b			;775c
	add a,b			;775d
l775eh:
	inc c			;775e
	inc l			;775f
	dec c			;7760
	add a,c			;7761
	ld d,h			;7762
	add a,c			;7763
l7764h:
	inc c			;7764
	ld c,h			;7765
	sbc a,a			;7766
	add a,c			;7767
	jp po,00c81h		;7768
	ld d,h			;776b
	ld l,082h		;776c
	sbc a,h			;776e
	add a,d			;776f
	inc c			;7770
	jr c,l777eh		;7771
	add a,e			;7773
l7774h:
	ld a,(00c83h)		;7774
	inc h			;7777
	ld l,c			;7778
	add a,e			;7779
	sub h			;777a
	add a,e			;777b
	inc c			;777c
	ld b,h			;777d
l777eh:
	pop bc			;777e
	add a,e			;777f
	rst 28h			;7780
	add a,e			;7781
	inc c			;7782
	jr z,l77d7h		;7783
	add a,h			;7785
	ld d,d			;7786
	add a,h			;7787
	inc c			;7788
	ld b,h			;7789
	adc a,c			;778a
	add a,h			;778b
	ex af,af'		;778c
	add a,l			;778d
	inc c			;778e
	ld c,h			;778f
	add a,e			;7790
	add a,l			;7791
	push hl			;7792
	add a,l			;7793
	inc c			;7794
	jr nz,l77e2h		;7795
	add a,(hl)		;7797
	ld l,h			;7798
	add a,(hl)		;7799
	inc c			;779a
	ld b,h			;779b
	ld l,082h		;779c
	sbc a,h			;779e
	add a,d			;779f
	inc c			;77a0
	ld d,b			;77a1
	adc a,a			;77a2
	add a,(hl)		;77a3
	xor (hl)		;77a4
	add a,(hl)		;77a5
	inc c			;77a6
	inc e			;77a7
	rst 8			;77a8
	add a,(hl)		;77a9
	nop			;77aa
	add a,a			;77ab
l77ach:
	inc c			;77ac
	jr nz,l77e2h		;77ad
	add a,a			;77af
	ld h,h			;77b0
	add a,a			;77b1
	inc c			;77b2
	jr nz,l7750h		;77b3
l77b5h:
	add a,a			;77b5
	ret			;77b6
	add a,a			;77b7
	inc c			;77b8
	ld c,h			;77b9
	ld sp,hl		;77ba
	add a,a			;77bb
	ld h,a			;77bc
	adc a,b			;77bd
	inc c			;77be
	ld c,b			;77bf
	ret c			;77c0
	adc a,b			;77c1
	ld l,l			;77c2
	adc a,c			;77c3
	inc c			;77c4
	jr z,l7774h		;77c5
	adc a,c			;77c7
	pop bc			;77c8
	adc a,c			;77c9
	inc c			;77ca
	jr z,l77dfh		;77cb
	adc a,d			;77cd
	ld e,c			;77ce
	adc a,d			;77cf
	inc c			;77d0
	inc a			;77d1
	and d			;77d2
	adc a,d			;77d3
	cp c			;77d4
	adc a,d			;77d5
	inc c			;77d6
l77d7h:
	ld b,b			;77d7
	rst 10h			;77d8
	adc a,d			;77d9
	call p,00c8ah		;77da
	ld b,b			;77dd
	inc d			;77de
l77dfh:
	adc a,e			;77df
	cp e			;77e0
	adc a,e			;77e1
l77e2h:
	inc c			;77e2
	inc (hl)		;77e3
	inc (hl)		;77e4
	adc a,h			;77e5
	ld h,b			;77e6
	adc a,h			;77e7
	inc c			;77e8
	jr c,l786ah		;77e9
	adc a,h			;77eb
	cp b			;77ec
	adc a,h			;77ed
	inc c			;77ee
	ld b,b			;77ef
	pop af			;77f0
l77f1h:
	adc a,h			;77f1
	dec c			;77f2
	adc a,l			;77f3
	inc c			;77f4
	ld b,b			;77f5
	inc l			;77f6
	adc a,l			;77f7
	ld a,l			;77f8
	adc a,l			;77f9
	inc c			;77fa
	ld c,b			;77fb
	jp c,0028dh		;77fc
	adc a,(hl)		;77ff
	inc c			;7800
	jr c,l782bh		;7801
	adc a,(hl)		;7803
	ld h,l			;7804
	adc a,(hl)		;7805
	inc c			;7806
	jr c,l77b5h		;7807
	adc a,(hl)		;7809
	push bc			;780a
	adc a,(hl)		;780b
	inc c			;780c
	jr c,l7827h		;780d
	adc a,a			;780f
	add a,e			;7810
	adc a,a			;7811
	inc c			;7812
	ld c,h			;7813
	ret p			;7814
	adc a,a			;7815
	cp b			;7816
	sub b			;7817
	inc c			;7818
	ld d,h			;7819
	add a,b			;781a
	sub c			;781b
	ret z			;781c
	sub c			;781d
	inc c			;781e
	inc (hl)		;781f
	dec c			;7820
	sub d			;7821
	ld h,c			;7822
	sub d			;7823
	inc c			;7824
	ld d,h			;7825
	or (hl)			;7826
l7827h:
	sub d			;7827
	or (hl)			;7828
	sub d			;7829
	inc c			;782a
l782bh:
	ld d,(hl)		;782b
	or a			;782c
	sub d			;782d
	ld hl,00c93h		;782e
	jr nz,l77f1h		;7831
	sub e			;7833
	dec de			;7834
	sub h			;7835
	inc c			;7836
	ld bc,09affh		;7837
	rst 38h			;783a
	sbc a,d			;783b
	inc c			;783c
	ld bc,09affh		;783d
	rst 38h			;7840
	sbc a,d			;7841
	di			;7842
	sub b			;7843
	nop			;7844
	and b			;7845
	ld l,a			;7846
	and b			;7847
	xor e			;7848
	and b			;7849
	ex (sp),hl		;784a
	and b			;784b
	sub h			;784c
	and c			;784d
	jp m,0f3a1h		;784e
	sub b			;7851
	dec b			;7852
	cp l			;7853
	ld l,d			;7854
	cp l			;7855
	push de			;7856
	cp l			;7857
	sub b			;7858
	cp (hl)			;7859
	ld (hl),h		;785a
	cp a			;785b
	xor (hl)		;785c
	cp a			;785d
	di			;785e
	sub b			;785f
	ld (hl),0abh		;7860
	ld a,0ach		;7862
	inc l			;7864
	xor (hl)		;7865
	in a,(0afh)		;7866
	halt			;7868
	or c			;7869
l786ah:
	add a,d			;786a
	or e			;786b
sub_786ch:
	di			;786c
	sub b			;786d
	ld hl,(0bea5h)		;786e
	and l			;7871
	or 0a6h			;7872
	ld a,a			;7874
	xor b			;7875
	or b			;7876
	xor c			;7877
	ld (hl),c		;7878
	xor e			;7879
	di			;787a
	sub b			;787b
	exx			;787c
	xor l			;787d
	scf			;787e
	xor (hl)		;787f
	call m,001aeh		;7880
	or b			;7883
	cp l			;7884
	or b			;7885
	xor (hl)		;7886
	or c			;7887
	di			;7888
	sub b			;7889
	sub d			;788a
	or d			;788b
	dec l			;788c
	or e			;788d
	jp pe,0eab3h		;788e
	or h			;7891
	ei			;7892
	or l			;7893
	jp po,0f3b6h		;7894
	sub b			;7897
	sub (hl)		;7898
	and d			;7899
	ld b,e			;789a
	and e			;789b
	ld a,(hl)		;789c
	and h			;789d
	call p,045a5h		;789e
	and a			;78a1
	add a,e			;78a2
	xor b			;78a3
	di			;78a4
	sub b			;78a5
	sub h			;78a6
	xor c			;78a7
	ld d,e			;78a8
	xor d			;78a9
	ld e,l			;78aa
	xor e			;78ab
	ld c,l			;78ac
	xor h			;78ad
	ld h,d			;78ae
	xor l			;78af
	add a,(hl)		;78b0
	xor (hl)		;78b1
	di			;78b2
	sub b			;78b3
	xor c			;78b4
	xor a			;78b5
	ld h,(hl)		;78b6
	or b			;78b7
	ld c,d			;78b8
	or c			;78b9
	ld b,e			;78ba
	or d			;78bb
	sub l			;78bc
	or e			;78bd
	xor c			;78be
	or h			;78bf
	di			;78c0
	sub b			;78c1
	or c			;78c2
	xor b			;78c3
	jp (hl)			;78c4
	xor b			;78c5
	ld d,d			;78c6
	xor c			;78c7
	sbc a,d			;78c8
	xor c			;78c9
	ld b,b			;78ca
	xor d			;78cb
	cp e			;78cc
	xor d			;78cd
	di			;78ce
	sub b			;78cf
	ld bc,0369dh		;78d0
	sbc a,(hl)		;78d3
	and h			;78d4
	sbc a,a			;78d5
	inc b			;78d6
	and c			;78d7
	ld l,c			;78d8
	and d			;78d9
	ret			;78da
	and e			;78db
	di			;78dc
	sub b			;78dd
	rst 38h			;78de
	sbc a,d			;78df
	rst 38h			;78e0
	sbc a,d			;78e1
	rst 38h			;78e2
	sbc a,d			;78e3
	rst 38h			;78e4
	sbc a,d			;78e5
	rst 38h			;78e6
	sbc a,d			;78e7
	rst 38h			;78e8
	sbc a,d			;78e9
	di			;78ea
	sub b			;78eb
	rst 38h			;78ec
	sbc a,d			;78ed
	rst 38h			;78ee
	sbc a,d			;78ef
	rst 38h			;78f0
	sbc a,d			;78f1
	rst 38h			;78f2
	sbc a,d			;78f3
	rst 38h			;78f4
	sbc a,d			;78f5
	rst 38h			;78f6
	sbc a,d			;78f7
	di			;78f8
	sub b			;78f9
	rst 38h			;78fa
	sbc a,d			;78fb
	rst 38h			;78fc
	sbc a,d			;78fd
	rst 38h			;78fe
	sbc a,d			;78ff
	rst 38h			;7900
	sbc a,d			;7901
	rst 38h			;7902
	sbc a,d			;7903
	rst 38h			;7904
	sbc a,d			;7905
	rst 38h			;7906
	sub b			;7907
	sub 0b7h		;7908
	sub 0b7h		;790a
	sub 0b7h		;790c
	sub 0b7h		;790e
	sub 0b7h		;7910
	sub 0b7h		;7912
	sub 0b7h		;7914
	sub 0b7h		;7916
	rst 38h			;7918
	sub b			;7919
	rst 10h			;791a
	or a			;791b
	or l			;791c
	cp b			;791d
	sub b			;791e
	cp c			;791f
	ld (hl),c		;7920
	cp d			;7921
	ld a,(de)		;7922
	cp h			;7923
	cp b			;7924
	cp h			;7925
	rst 30h			;7926
	cp l			;7927
	ld sp,hl		;7928
	cp (hl)			;7929
	rst 38h			;792a
	sub b			;792b
	nop			;792c
	and b			;792d
	ld a,d			;792e
	and b			;792f
	ld (hl),l		;7930
	and c			;7931
	cp b			;7932
	and c			;7933
	ccf			;7934
	and d			;7935
	ret z			;7936
	and e			;7937
	ld e,b			;7938
	and l			;7939
	call pe,0ffa6h		;793a
	sub b			;793d
	exx			;793e
	or l			;793f
	jp (hl)			;7940
	or l			;7941
	dec (hl)		;7942
	or (hl)			;7943
	add a,c			;7944
	or (hl)			;7945
	and h			;7946
	or (hl)			;7947
	call m,048b6h		;7948
	or a			;794b
	sub e			;794c
	or a			;794d
	rst 38h			;794e
	sub b			;794f
	di			;7950
	sub h			;7951
	ld h,095h		;7952
	adc a,d			;7954
	sub l			;7955
	ld bc,02f96h		;7956
	sub (hl)		;7959
	ld e,e			;795a
	sub (hl)		;795b
	adc a,(hl)		;795c
	sub (hl)		;795d
	xor d			;795e
	sub (hl)		;795f
	rst 38h			;7960
	sub b			;7961
	sub h			;7962
	sub a			;7963
	inc bc			;7964
	sbc a,b			;7965
	sbc a,h			;7966
	sbc a,b			;7967
	inc e			;7968
	sbc a,c			;7969
	ld (hl),b		;796a
	sbc a,c			;796b
	or a			;796c
	sbc a,c			;796d
	jp m,02499h		;796e
	sbc a,d			;7971
	rst 38h			;7972
	sub b			;7973
	push bc			;7974
	cp d			;7975
	call z,0ccbah		;7976
	cp d			;7979
	call 014bah		;797a
	cp e			;797d
	dec e			;797e
	cp e			;797f
	ld b,h			;7980
	cp e			;7981
	ld l,e			;7982
	cp e			;7983
	rst 38h			;7984
	sub b			;7985
	push bc			;7986
	cp d			;7987
	adc a,d			;7988
	cp e			;7989
	out (0bbh),a		;798a
	ccf			;798c
	cp h			;798d
	sub h			;798e
	cp h			;798f
	dec e			;7990
	cp e			;7991
	ld b,h			;7992
	cp e			;7993
	ld l,e			;7994
	cp e			;7995
	rst 38h			;7996
	sub b			;7997
	xor a			;7998
	or l			;7999
	ld b,a			;799a
	or (hl)			;799b
	scf			;799c
	or a			;799d
	ld d,0b8h		;799e
	pop hl			;79a0
	cp b			;79a1
	or h			;79a2
	cp c			;79a3
	or d			;79a4
	cp d			;79a5
	jp p,0ffbbh		;79a6
	add a,b			;79a9
	exx			;79aa
	or a			;79ab
	exx			;79ac
	or a			;79ad
	cp (hl)			;79ae
	or a			;79af
	jp c,0e8b7h		;79b0
	or a			;79b3
	or 0b7h			;79b4
	inc e			;79b6
	cp b			;79b7
	ld b,b			;79b8
	cp b			;79b9
	rst 38h			;79ba
	sub b			;79bb
	ld h,h			;79bc
	cp b			;79bd
	add a,l			;79be
	cp b			;79bf
	adc a,(hl)		;79c0
	cp b			;79c1
	call z,043b8h		;79c2
	cp c			;79c5
	cp d			;79c6
	cp c			;79c7
	ld sp,0bcbah		;79c8
	cp d			;79cb
	rst 38h			;79cc
	sub b			;79cd
	ld a,h			;79ce
	sub h			;79cf
	adc a,d			;79d0
	sub h			;79d1
	sbc a,b			;79d2
	sub h			;79d3
	and (hl)		;79d4
	sub h			;79d5
	or l			;79d6
	sub h			;79d7
	call nz,0d394h		;79d8
	sub h			;79db
	jp po,0ff94h		;79dc
	ld bc,09affh		;79df
	rst 38h			;79e2
	sbc a,d			;79e3
	rst 38h			;79e4
	sbc a,d			;79e5
	rst 38h			;79e6
	sbc a,d			;79e7
	rst 38h			;79e8
	sbc a,d			;79e9
	rst 38h			;79ea
	sbc a,d			;79eb
	rst 38h			;79ec
	sbc a,d			;79ed
	rst 38h			;79ee
	sbc a,d			;79ef
	rst 38h			;79f0
	rst 38h			;79f1
	jp 0c37ah		;79f2
	ld a,d			;79f5
	jp 0c37ah		;79f6
	ld a,d			;79f9
	jp 0c37ah		;79fa
	ld a,d			;79fd
	jp 0c37ah		;79fe
	ld a,d			;7a01
	jp m,0fe76h		;7a02
	halt			;7a05
	inc b			;7a06
	ld (hl),a		;7a07
	ld a,(bc)		;7a08
	ld (hl),a		;7a09
	djnz l7a83h		;7a0a
	ld d,077h		;7a0c
	inc e			;7a0e
	ld (hl),a		;7a0f
	ld (02877h),hl		;7a10
	ld (hl),a		;7a13
	ld l,077h		;7a14
	inc (hl)		;7a16
	ld (hl),a		;7a17
	ld a,(04077h)		;7a18
	ld (hl),a		;7a1b
	ld b,(hl)		;7a1c
	ld (hl),a		;7a1d
	ld c,h			;7a1e
	ld (hl),a		;7a1f
	ld d,d			;7a20
	ld (hl),a		;7a21
	ld e,b			;7a22
	ld (hl),a		;7a23
	ld e,(hl)		;7a24
	ld (hl),a		;7a25
	ld h,h			;7a26
	ld (hl),a		;7a27
	ld l,d			;7a28
	ld (hl),a		;7a29
	ld (hl),b		;7a2a
	ld (hl),a		;7a2b
	halt			;7a2c
	ld (hl),a		;7a2d
	ld a,h			;7a2e
	ld (hl),a		;7a2f
	add a,d			;7a30
	ld (hl),a		;7a31
	adc a,b			;7a32
	ld (hl),a		;7a33
	adc a,(hl)		;7a34
	ld (hl),a		;7a35
	sub h			;7a36
	ld (hl),a		;7a37
	sbc a,d			;7a38
	ld (hl),a		;7a39
	and b			;7a3a
	ld (hl),a		;7a3b
	and (hl)		;7a3c
	ld (hl),a		;7a3d
	xor h			;7a3e
	ld (hl),a		;7a3f
	or d			;7a40
	ld (hl),a		;7a41
	cp b			;7a42
	ld (hl),a		;7a43
	cp (hl)			;7a44
	ld (hl),a		;7a45
	call nz,0ca77h		;7a46
	ld (hl),a		;7a49
	ret nc			;7a4a
	ld (hl),a		;7a4b
	sub 077h		;7a4c
	call c,0e277h		;7a4e
	ld (hl),a		;7a51
	ret pe			;7a52
	ld (hl),a		;7a53
	xor 077h		;7a54
	call p,0fa77h		;7a56
	ld (hl),a		;7a59
	nop			;7a5a
	ld a,b			;7a5b
	ld b,078h		;7a5c
	inc c			;7a5e
	ld a,b			;7a5f
	ld (de),a		;7a60
	ld a,b			;7a61
	jr l7adch		;7a62
	ld e,078h		;7a64
	inc h			;7a66
	ld a,b			;7a67
	ld hl,(03078h)		;7a68
	ld a,b			;7a6b
l7a6ch:
	ld (hl),078h		;7a6c
l7a6eh:
	inc a			;7a6e
	ld a,b			;7a6f
	ld b,d			;7a70
	ld a,b			;7a71
	ld b,d			;7a72
	ld a,b			;7a73
	ld d,b			;7a74
	ld a,b			;7a75
	ld e,(hl)		;7a76
	ld a,b			;7a77
	ld l,h			;7a78
	ld a,b			;7a79
	ld a,d			;7a7a
	ld a,b			;7a7b
l7a7ch:
	adc a,b			;7a7c
	ld a,b			;7a7d
	sub (hl)		;7a7e
	ld a,b			;7a7f
	and h			;7a80
	ld a,b			;7a81
	or d			;7a82
l7a83h:
	ld a,b			;7a83
	ret nz			;7a84
	ld a,b			;7a85
	adc a,078h		;7a86
	call c,0ea78h		;7a88
	ld a,b			;7a8b
	ret m			;7a8c
	ld a,b			;7a8d
l7a8eh:
	ld b,079h		;7a8e
	ld b,079h		;7a90
	jr l7b0dh		;7a92
	ld hl,(03c79h)		;7a94
	ld a,c			;7a97
	ld c,(hl)		;7a98
	ld a,c			;7a99
l7a9ah:
	ld h,b			;7a9a
	ld a,c			;7a9b
	ld (hl),d		;7a9c
	ld a,c			;7a9d
	add a,h			;7a9e
	ld a,c			;7a9f
	sub (hl)		;7aa0
l7aa1h:
	ld a,c			;7aa1
	xor b			;7aa2
	ld a,c			;7aa3
	cp d			;7aa4
	ld a,c			;7aa5
	call z,0de79h		;7aa6
	ld a,c			;7aa9
l7aaah:
	ret p			;7aaa
	ld a,c			;7aab
	ld (bc),a		;7aac
	ld a,d			;7aad
	cp 001h			;7aae
	ret m			;7ab0
	dec d			;7ab1
	jp pe,0e90fh		;7ab2
	ld bc,0ebd1h		;7ab5
l7ab8h:
	ld bc,00488h		;7ab8
	ld (hl),h		;7abb
	ld b,h			;7abc
	ld (hl),h		;7abd
	ex de,hl		;7abe
	ld bc,0d023h		;7abf
	add hl,bc		;7ac2
	rst 38h			;7ac3
	cp 002h			;7ac4
	ret po			;7ac6
	ld (bc),a		;7ac7
l7ac8h:
	jp po,04001h		;7ac8
	ld h,b			;7acb
	call p,sub_786ch	;7acc
	add a,h			;7acf
	sub b			;7ad0
	sbc a,(hl)		;7ad1
	xor (hl)		;7ad2
	cp a			;7ad3
	ld h,b			;7ad4
	ld l,h			;7ad5
	ld a,b			;7ad6
	or 030h			;7ad7
	add a,h			;7ad9
	jr nc,l7a6ch		;7ada
l7adch:
	jr nc,l7a7ch		;7adc
	jr nz,l7a8eh		;7ade
	jr nz,l7aa1h		;7ae0
	jr nz,$+98		;7ae2
	jr nz,$+110		;7ae4
	jr nz,l7b60h		;7ae6
	djnz l7a6eh		;7ae8
	call p,09e90h		;7aea
	xor (hl)		;7aed
	cp a			;7aee
	ld h,b			;7aef
	ld l,h			;7af0
	ld a,b			;7af1
	add a,h			;7af2
	sub b			;7af3
	sbc a,(hl)		;7af4
	xor (hl)		;7af5
	or 0ffh			;7af6
	cp 002h			;7af8
	ret m			;7afa
	dec b			;7afb
	jp po,09001h		;7afc
	ld h,b			;7aff
	sub b			;7b00
	ld l,h			;7b01
	sub b			;7b02
	ld a,b			;7b03
	add a,b			;7b04
	add a,h			;7b05
	ld (hl),b		;7b06
	sub b			;7b07
	ld h,b			;7b08
	sbc a,(hl)		;7b09
	ld d,b			;7b0a
	xor (hl)		;7b0b
	ld b,b			;7b0c
l7b0dh:
	cp a			;7b0d
	ld d,b			;7b0e
	ld h,b			;7b0f
	ld d,b			;7b10
	ld l,h			;7b11
	ld b,b			;7b12
	ld a,b			;7b13
	jr nc,l7a9ah		;7b14
	jr nz,$-110		;7b16
	jr nz,l7ab8h		;7b18
	djnz $-80		;7b1a
	djnz $-63		;7b1c
	jr nc,l7b80h		;7b1e
	jr nc,l7b8eh		;7b20
	jr nz,l7b9ch		;7b22
	jr nz,l7aaah		;7b24
	djnz l7ab8h		;7b26
	djnz l7ac8h		;7b28
	nop			;7b2a
	xor (hl)		;7b2b
	call p,060bfh		;7b2c
	ld l,h			;7b2f
	ld a,b			;7b30
	add a,h			;7b31
	sub b			;7b32
	sbc a,(hl)		;7b33
	xor (hl)		;7b34
	cp a			;7b35
	or 0ffh			;7b36
	cp 002h			;7b38
	pop hl			;7b3a
	ld bc,004e4h		;7b3b
	ld b,0e4h		;7b3e
	ld a,(bc)		;7b40
	inc b			;7b41
	call po,0060bh		;7b42
	call po,0070ch		;7b45
	call po,00812h		;7b48
	call po,00714h		;7b4b
	call po,00515h		;7b4e
	call po,00316h		;7b51
	call po,00217h		;7b54
	call po,00218h		;7b57
	call po,00119h		;7b5a
	call po,0011ah		;7b5d
l7b60h:
	ret po			;7b60
	ld a,(bc)		;7b61
	rst 38h			;7b62
	cp 002h			;7b63
	jp po,0f801h		;7b65
	ld d,h			;7b68
	pop bc			;7b69
	ret p			;7b6a
	pop bc			;7b6b
	ret nz			;7b6c
	jp nz,0c210h		;7b6d
	ld h,b			;7b70
	pop bc			;7b71
	ret po			;7b72
	pop bc			;7b73
	ret nc			;7b74
	jp nz,0c240h		;7b75
	and b			;7b78
	jp 0b300h		;7b79
	ld d,b			;7b7c
	and e			;7b7d
	and b			;7b7e
	ld b,c			;7b7f
l7b80h:
	ret p			;7b80
	ld d,c			;7b81
	ret nz			;7b82
	ld d,d			;7b83
	djnz l7bd8h		;7b84
	ld h,b			;7b86
	ld d,c			;7b87
	ret po			;7b88
	ld d,c			;7b89
	ret nc			;7b8a
	ld d,d			;7b8b
	ld b,b			;7b8c
	ld d,d			;7b8d
l7b8eh:
	and b			;7b8e
	ld d,e			;7b8f
	nop			;7b90
	ld b,e			;7b91
	ld d,b			;7b92
	inc sp			;7b93
	and b			;7b94
	rst 38h			;7b95
	cp 002h			;7b96
	ret po			;7b98
	ld bc,001e2h		;7b99
l7b9ch:
	ld h,b			;7b9c
	ld c,(hl)		;7b9d
	ld h,b			;7b9e
	ld d,l			;7b9f
	ld d,b			;7ba0
	ld e,e			;7ba1
	ld d,b			;7ba2
	ld h,a			;7ba3
	ld b,b			;7ba4
	ld (hl),b		;7ba5
	ld b,b			;7ba6
	ld a,c			;7ba7
	ld b,b			;7ba8
	ld d,(hl)		;7ba9
	ld b,b			;7baa
	ld e,h			;7bab
	ld b,b			;7bac
	ld h,d			;7bad
	jr nc,l7c1ah		;7bae
	jr nc,l7c27h		;7bb0
	jr nc,l7c31h		;7bb2
	ret po			;7bb4
	ld bc,001e2h		;7bb5
	jr nc,l7c08h		;7bb8
	jr nc,l7c11h		;7bba
	jr nc,l7c19h		;7bbc
	jr nc,l7c27h		;7bbe
	jr nc,$+114		;7bc0
	jr nc,l7c3dh		;7bc2
	jr nz,$+88		;7bc4
	jr nz,$+94		;7bc6
	jr nz,$+100		;7bc8
	jr nz,$+108		;7bca
	jr nz,l7c43h		;7bcc
	jr nz,$+127		;7bce
	ret po			;7bd0
	ld bc,001e2h		;7bd1
	nop			;7bd4
	ld c,(hl)		;7bd5
	nop			;7bd6
	ld d,l			;7bd7
l7bd8h:
	nop			;7bd8
l7bd9h:
	ld e,e			;7bd9
	nop			;7bda
	ld h,a			;7bdb
	nop			;7bdc
	ld (hl),b		;7bdd
	nop			;7bde
	ld a,c			;7bdf
l7be0h:
	nop			;7be0
	ld d,(hl)		;7be1
	nop			;7be2
	ld e,h			;7be3
	nop			;7be4
	ld h,d			;7be5
l7be6h:
	nop			;7be6
	ld l,d			;7be7
l7be8h:
	nop			;7be8
	ld (hl),l		;7be9
	nop			;7bea
	ld a,l			;7beb
	rst 38h			;7bec
	cp 002h			;7bed
	ret m			;7bef
	add hl,bc		;7bf0
	jp po,0b001h		;7bf1
l7bf4h:
	sbc a,h			;7bf4
	and b			;7bf5
	xor d			;7bf6
	sub b			;7bf7
	or a			;7bf8
	add a,b			;7bf9
	adc a,070h		;7bfa
	pop hl			;7bfc
	ld h,b			;7bfd
	jp p,0ad80h		;7bfe
l7c01h:
	add a,b			;7c01
l7c02h:
	cp c			;7c02
	ld (hl),b		;7c03
	push bc			;7c04
	ld h,b			;7c05
	push de			;7c06
	ld d,b			;7c07
l7c08h:
	ex de,hl		;7c08
	ld b,b			;7c09
	ei			;7c0a
	ret po			;7c0b
	ld bc,001e2h		;7c0c
	ld h,b			;7c0f
l7c10h:
	sbc a,h			;7c10
l7c11h:
	ld h,b			;7c11
	xor d			;7c12
	ld d,b			;7c13
l7c14h:
	or a			;7c14
	ld d,b			;7c15
l7c16h:
	adc a,040h		;7c16
	pop hl			;7c18
l7c19h:
	ld b,b			;7c19
l7c1ah:
	jp p,0ad50h		;7c1a
	ld d,b			;7c1d
	cp c			;7c1e
	ld b,b			;7c1f
	push bc			;7c20
	ld b,b			;7c21
l7c22h:
	push de			;7c22
	jr nc,l7c10h		;7c23
	jr nc,l7c22h		;7c25
l7c27h:
	ret po			;7c27
	ld bc,001e2h		;7c28
l7c2bh:
	jr nz,$-98		;7c2b
	jr nz,l7bd9h		;7c2d
	jr nz,l7be8h		;7c2f
l7c31h:
	djnz l7c01h		;7c31
	djnz l7c16h		;7c33
	djnz $-12		;7c35
	djnz l7be6h		;7c37
	djnz l7bf4h		;7c39
	djnz l7c02h		;7c3b
l7c3dh:
	djnz l7c14h		;7c3d
	nop			;7c3f
	ex de,hl		;7c40
	nop			;7c41
	ei			;7c42
l7c43h:
	ret po			;7c43
	ld bc,0feffh		;7c44
	ld (bc),a		;7c47
l7c48h:
	call po,0e11fh		;7c48
	ld bc,0e209h		;7c4b
	ld bc,02080h		;7c4e
	ld d,b			;7c51
	ret m			;7c52
	sub h			;7c53
	nop			;7c54
	sub c			;7c55
	sub b			;7c56
	sub l			;7c57
	jr nc,l7be0h		;7c58
	jr nz,l7c3dh		;7c5a
	ld bc,0e209h		;7c5c
	ld bc,02180h		;7c5f
	ld (hl),h		;7c62
	nop			;7c63
	ld (hl),c		;7c64
	sub b			;7c65
	ld (hl),l		;7c66
	jr nc,l7ccfh		;7c67
	jr nz,l7cc2h		;7c69
	jr nc,$-30		;7c6b
	ld bc,001e1h		;7c6d
	inc b			;7c70
	jp po,05001h		;7c71
	jr nz,$+34		;7c74
l7c76h:
	ret m			;7c76
	ld b,h			;7c77
	nop			;7c78
	ld b,c			;7c79
	sub b			;7c7a
	ld b,l			;7c7b
	jr nc,l7cb4h		;7c7c
	jr nz,$-29		;7c7e
	ld bc,0e203h		;7c80
	ld bc,02140h		;7c83
	inc d			;7c86
	nop			;7c87
	ld de,01590h		;7c88
	jr nc,$+24		;7c8b
	jr nz,$+1		;7c8d
	cp 002h			;7c8f
	ret m			;7c91
	jr z,l7c76h		;7c92
	ld bc,050b1h		;7c94
	ld (hl),c		;7c97
	nop			;7c98
	ret m			;7c99
	dec h			;7c9a
	or h			;7c9b
	add a,b			;7c9c
	and c			;7c9d
l7c9eh:
	sub b			;7c9e
	and l			;7c9f
	jr nc,l7c48h		;7ca0
	jr nz,l7c2bh		;7ca2
	jr nc,l7c9eh		;7ca4
	jr z,$-77		;7ca6
	ld d,b			;7ca8
	ret m			;7ca9
	dec h			;7caa
	or h			;7cab
	add a,b			;7cac
	and c			;7cad
	sub b			;7cae
	sub l			;7caf
	jr nc,$-120		;7cb0
	jr nz,l7d2bh		;7cb2
l7cb4h:
	jr nc,$-30		;7cb4
	ld (bc),a		;7cb6
	jp po,0f801h		;7cb7
	jr z,$+35		;7cba
	ld d,b			;7cbc
	ld bc,0f800h		;7cbd
	dec h			;7cc0
	inc h			;7cc1
l7cc2h:
	add a,b			;7cc2
	ld hl,02590h		;7cc3
	jr nc,l7ceeh		;7cc6
	jr nz,l7cf1h		;7cc8
	jr nc,$-6		;7cca
	jr z,l7cdfh		;7ccc
	ld d,b			;7cce
l7ccfh:
	ret m			;7ccf
	dec h			;7cd0
	inc d			;7cd1
	add a,b			;7cd2
	ld de,01590h		;7cd3
	jr nc,l7cdeh		;7cd6
	jr nz,$+9		;7cd8
	jr nc,$+1		;7cda
	cp 002h			;7cdc
l7cdeh:
	ret po			;7cde
l7cdfh:
	ld (bc),a		;7cdf
	jp po,06301h		;7ce0
	add a,b			;7ce3
	ld h,e			;7ce4
	ld b,b			;7ce5
	ld h,e			;7ce6
	djnz l7d4bh		;7ce7
	ret po			;7ce9
	ld h,d			;7cea
	and b			;7ceb
	ld h,d			;7cec
	add a,b			;7ced
l7ceeh:
	ld h,d			;7cee
	ld d,b			;7cef
	ld h,d			;7cf0
l7cf1h:
	jr nz,l7d55h		;7cf1
	nop			;7cf3
	ld h,c			;7cf4
	ret po			;7cf5
	ld h,c			;7cf6
	or b			;7cf7
l7cf8h:
	ld h,c			;7cf8
	sub b			;7cf9
	ld h,c			;7cfa
	ld (hl),b		;7cfb
l7cfch:
	ld h,c			;7cfc
	ld d,b			;7cfd
	ld h,c			;7cfe
	jr c,l7d62h		;7cff
	jr nz,l7d64h		;7d01
	djnz l7cfch		;7d03
	ld b,0f9h		;7d05
	ld h,h			;7d07
	ld a,l			;7d08
	rst 30h			;7d09
	ex af,af'		;7d0a
	ld sp,hl		;7d0b
	ld h,h			;7d0c
	ld a,l			;7d0d
	rst 30h			;7d0e
l7d0fh:
	ld a,(bc)		;7d0f
	ld sp,hl		;7d10
l7d11h:
	ld h,h			;7d11
	ld a,l			;7d12
	rst 18h			;7d13
	ld bc,00000h		;7d14
	di			;7d17
	nop			;7d18
	rst 20h			;7d19
	nop			;7d1a
	ret po			;7d1b
	nop			;7d1c
	out (000h),a		;7d1d
	rst 0			;7d1f
	nop			;7d20
	ret nz			;7d21
	nop			;7d22
	or l			;7d23
	nop			;7d24
	xor d			;7d25
	nop			;7d26
	and b			;7d27
	rst 38h			;7d28
	cp 002h			;7d29
l7d2bh:
	ret m			;7d2b
	inc e			;7d2c
	jp po,0c301h		;7d2d
	add a,b			;7d30
	jp 0c340h		;7d31
	djnz l7cf8h		;7d34
	ret po			;7d36
	jp nz,0c2a0h		;7d37
	add a,b			;7d3a
	jp nz,0c250h		;7d3b
	jr nz,$-60		;7d3e
	nop			;7d40
	pop bc			;7d41
	ret po			;7d42
	pop bc			;7d43
	or b			;7d44
	pop bc			;7d45
	sub b			;7d46
	pop bc			;7d47
	ld (hl),b		;7d48
	pop bc			;7d49
	ld d,b			;7d4a
l7d4bh:
	pop bc			;7d4b
	jr c,l7d0fh		;7d4c
	jr nz,l7d11h		;7d4e
	djnz l7d4bh		;7d50
	ld h,h			;7d52
	ld a,l			;7d53
	rst 30h			;7d54
l7d55h:
	rlca			;7d55
	ld sp,hl		;7d56
	ld h,h			;7d57
	ld a,l			;7d58
	rst 30h			;7d59
	ld a,(bc)		;7d5a
	ld sp,hl		;7d5b
	ld h,h			;7d5c
	ld a,l			;7d5d
	rst 30h			;7d5e
	inc c			;7d5f
	ld sp,hl		;7d60
	ld h,h			;7d61
l7d62h:
	ld a,l			;7d62
	rst 38h			;7d63
l7d64h:
	pop bc			;7d64
	nop			;7d65
	ret nz			;7d66
	di			;7d67
	ret nz			;7d68
	rst 20h			;7d69
	ret nz			;7d6a
	ret po			;7d6b
	ret nz			;7d6c
	out (0c0h),a		;7d6d
	rst 0			;7d6f
	ret nz			;7d70
	ret nz			;7d71
	ret nz			;7d72
	or l			;7d73
	ret nz			;7d74
	xor d			;7d75
	ret nz			;7d76
	and b			;7d77
	ret nz			;7d78
	sub e			;7d79
	ret nz			;7d7a
	add a,l			;7d7b
	jp m,002feh		;7d7c
	jp po,08001h		;7d7f
	ld (de),a		;7d82
	ld (hl),b		;7d83
	inc de			;7d84
	call p,01514h		;7d85
	ld d,017h		;7d88
	jr $+27			;7d8a
	ld a,(de)		;7d8c
	dec de			;7d8d
	inc e			;7d8e
	dec e			;7d8f
	ld e,01fh		;7d90
	jr nz,$+35		;7d92
	ld (02423h),hl		;7d94
	dec h			;7d97
	ld h,027h		;7d98
	jr z,l7dc5h		;7d9a
	ld hl,(02c2bh)		;7d9c
	dec l			;7d9f
	ld l,0f6h		;7da0
	ld h,b			;7da2
	cpl			;7da3
	call p,03130h		;7da4
	ld (03533h),a		;7da7
	ld (hl),037h		;7daa
	add hl,sp		;7dac
	ld a,(050f6h)		;7dad
	dec sp			;7db0
	ld d,b			;7db1
	dec a			;7db2
	ld d,b			;7db3
	ld a,040h		;7db4
	ld b,c			;7db6
l7db7h:
	ld b,b			;7db7
	ld b,d			;7db8
l7db9h:
	ld b,b			;7db9
	ld b,h			;7dba
	jr nc,l7e03h		;7dbb
	jr nc,l7e07h		;7dbd
	jr nc,l7e0bh		;7dbf
	jr nz,l7e0fh		;7dc1
	jr nz,l7e13h		;7dc3
l7dc5h:
	jr nz,l7e17h		;7dc5
	djnz $+84		;7dc7
	djnz $+86		;7dc9
	djnz l7e23h		;7dcb
	nop			;7dcd
	ld e,b			;7dce
	nop			;7dcf
	ld e,d			;7dd0
	nop			;7dd1
	ld e,h			;7dd2
	nop			;7dd3
	ld e,(hl)		;7dd4
	nop			;7dd5
	ld h,b			;7dd6
	rst 38h			;7dd7
	cp 002h			;7dd8
	jp po,0f801h		;7dda
	inc c			;7ddd
	pop bc			;7dde
	add a,b			;7ddf
	jp nz,0c300h		;7de0
	nop			;7de3
	jp nz,0c280h		;7de4
	nop			;7de7
	ret m			;7de8
	ld d,h			;7de9
	pop bc			;7dea
	ret po			;7deb
	pop bc			;7dec
	ret p			;7ded
	jp nz,0c200h		;7dee
	djnz $-60		;7df1
	jr nz,l7db7h		;7df3
	jr nc,l7db9h		;7df5
	ld b,b			;7df7
	jp nz,0c250h		;7df8
	ld h,b			;7dfb
	jp nz,0e270h		;7dfc
	ld (bc),a		;7dff
	or d			;7e00
	add a,b			;7e01
	or d			;7e02
l7e03h:
	ret nz			;7e03
	and e			;7e04
	nop			;7e05
	sub e			;7e06
l7e07h:
	ld b,b			;7e07
	add a,e			;7e08
	add a,b			;7e09
	ld (hl),e		;7e0a
l7e0bh:
	ret nz			;7e0b
	ld h,h			;7e0c
	nop			;7e0d
	ld d,h			;7e0e
l7e0fh:
	ld b,b			;7e0f
	ld d,h			;7e10
	add a,b			;7e11
	ld b,h			;7e12
l7e13h:
	ret nz			;7e13
	ld b,l			;7e14
	nop			;7e15
	dec (hl)		;7e16
l7e17h:
	ld d,l			;7e17
	dec (hl)		;7e18
	xor d			;7e19
	ld h,000h		;7e1a
	ld h,055h		;7e1c
	ld d,0aah		;7e1e
	rla			;7e20
	nop			;7e21
	rlca			;7e22
l7e23h:
	ld d,l			;7e23
	rlca			;7e24
	xor d			;7e25
	ex af,af'		;7e26
	nop			;7e27
	ex af,af'		;7e28
	ld d,l			;7e29
	ex af,af'		;7e2a
	xor d			;7e2b
	rst 38h			;7e2c
	cp 002h			;7e2d
	ret po			;7e2f
	ld bc,001e2h		;7e30
	add a,c			;7e33
	ex af,af'		;7e34
	rst 30h			;7e35
	inc b			;7e36
	ld sp,hl		;7e37
	ld l,a			;7e38
	ld a,(hl)		;7e39
	rst 30h			;7e3a
	dec b			;7e3b
	ld sp,hl		;7e3c
	ld l,a			;7e3d
	ld a,(hl)		;7e3e
	rst 30h			;7e3f
	rlca			;7e40
	ld sp,hl		;7e41
	ld l,a			;7e42
	ld a,(hl)		;7e43
	rst 30h			;7e44
	add hl,bc		;7e45
	ld sp,hl		;7e46
	ld l,a			;7e47
	ld a,(hl)		;7e48
	rst 30h			;7e49
	dec bc			;7e4a
	ld sp,hl		;7e4b
	ld l,a			;7e4c
	ld a,(hl)		;7e4d
	rst 38h			;7e4e
	cp 002h			;7e4f
	ret m			;7e51
	ld h,0e2h		;7e52
	ld bc,008c1h		;7e54
	ld sp,hl		;7e57
	ld l,a			;7e58
	ld a,(hl)		;7e59
	rst 30h			;7e5a
	dec b			;7e5b
	ld sp,hl		;7e5c
	ld l,a			;7e5d
	ld a,(hl)		;7e5e
	rst 30h			;7e5f
	rlca			;7e60
	ld sp,hl		;7e61
	ld l,a			;7e62
	ld a,(hl)		;7e63
	rst 30h			;7e64
	add hl,bc		;7e65
	ld sp,hl		;7e66
	ld l,a			;7e67
	ld a,(hl)		;7e68
	rst 30h			;7e69
	dec bc			;7e6a
	ld sp,hl		;7e6b
	ld l,a			;7e6c
	ld a,(hl)		;7e6d
	rst 38h			;7e6e
	ret nz			;7e6f
	ret p			;7e70
	ret nz			;7e71
	ret c			;7e72
	ret nz			;7e73
	ret nz			;7e74
	ret nz			;7e75
	or b			;7e76
	ret nz			;7e77
	and b			;7e78
	ret nz			;7e79
	sub b			;7e7a
	ret nz			;7e7b
	add a,b			;7e7c
	ret nz			;7e7d
	ld (hl),b		;7e7e
	ret nz			;7e7f
	ld h,b			;7e80
	jp m,002feh		;7e81
	ret po			;7e84
	inc bc			;7e85
	jp po,09101h		;7e86
	ret nz			;7e89
	rst 30h			;7e8a
	inc bc			;7e8b
	ld sp,hl		;7e8c
	call nc,0f77eh		;7e8d
	dec b			;7e90
	ld sp,hl		;7e91
	call nc,0f77eh		;7e92
	ex af,af'		;7e95
	ld sp,hl		;7e96
	call nc,0df7eh		;7e97
	inc hl			;7e9a
	nop			;7e9b
	inc h			;7e9c
	add a,b			;7e9d
	inc h			;7e9e
l7e9fh:
	nop			;7e9f
	dec h			;7ea0
	nop			;7ea1
	dec h			;7ea2
	add a,b			;7ea3
	ld h,080h		;7ea4
	dec h			;7ea6
	nop			;7ea7
	rst 38h			;7ea8
	cp 002h			;7ea9
	ret m			;7eab
	inc d			;7eac
	jp po,0c101h		;7ead
	ret nz			;7eb0
	ld sp,hl		;7eb1
	call nc,0f77eh		;7eb2
	inc b			;7eb5
	ld sp,hl		;7eb6
	call nc,0f77eh		;7eb7
	add hl,bc		;7eba
	ld sp,hl		;7ebb
	call nc,0df7eh		;7ebc
	inc bc			;7ebf
	nop			;7ec0
	inc b			;7ec1
	add a,b			;7ec2
	inc b			;7ec3
	nop			;7ec4
	dec b			;7ec5
	nop			;7ec6
	dec b			;7ec7
	add a,b			;7ec8
	ld b,080h		;7ec9
	dec b			;7ecb
	nop			;7ecc
	ld b,000h		;7ecd
	rlca			;7ecf
	nop			;7ed0
	ex af,af'		;7ed1
	nop			;7ed2
	rst 38h			;7ed3
	jp nz,0c400h		;7ed4
	djnz l7e9fh		;7ed7
	nop			;7ed9
	jp nz,0c380h		;7eda
	nop			;7edd
	jp 0c480h		;7ede
	nop			;7ee1
	jp 0c400h		;7ee2
	add a,b			;7ee5
	call nz,0c500h		;7ee6
	nop			;7ee9
	push bc			;7eea
	add a,b			;7eeb
	add a,080h		;7eec
	push bc			;7eee
	nop			;7eef
	add a,000h		;7ef0
	rst 0			;7ef2
	nop			;7ef3
	ret z			;7ef4
	nop			;7ef5
	jp m,002feh		;7ef6
	ret po			;7ef9
	inc b			;7efa
	jp po,0a201h		;7efb
	add a,b			;7efe
	and d			;7eff
	ld b,b			;7f00
	and d			;7f01
	nop			;7f02
	and c			;7f03
	add a,b			;7f04
	and c			;7f05
	ld h,b			;7f06
	and c			;7f07
	nop			;7f08
	and b			;7f09
	ret nz			;7f0a
	rst 30h			;7f0b
	ld (bc),a		;7f0c
	ld sp,hl		;7f0d
	ld (hl),e		;7f0e
	ld a,a			;7f0f
	rst 30h			;7f10
	inc b			;7f11
	ld sp,hl		;7f12
	ld (hl),e		;7f13
	ld a,a			;7f14
	rst 30h			;7f15
	dec b			;7f16
	ld sp,hl		;7f17
	ld (hl),e		;7f18
	ld a,a			;7f19
	rst 30h			;7f1a
	ld b,0f9h		;7f1b
	ld (hl),e		;7f1d
	ld a,a			;7f1e
	rst 30h			;7f1f
	rlca			;7f20
	ld sp,hl		;7f21
	ld (hl),e		;7f22
	ld a,a			;7f23
	rst 30h			;7f24
	ex af,af'		;7f25
	ld sp,hl		;7f26
	ld (hl),e		;7f27
	ld a,a			;7f28
	rst 18h			;7f29
	ld (022c0h),hl		;7f2a
	nop			;7f2d
	ld hl,0ff80h		;7f2e
	cp 002h			;7f31
	ret m			;7f33
	ld d,h			;7f34
	jp po,0c501h		;7f35
	nop			;7f38
	call nz,0c480h		;7f39
	nop			;7f3c
	jp 0c200h		;7f3d
l7f40h:
	ret nz			;7f40
	jp nz,0c100h		;7f41
	add a,b			;7f44
	ret m			;7f45
	inc hl			;7f46
	ld sp,hl		;7f47
	ld (hl),e		;7f48
	ld a,a			;7f49
	rst 30h			;7f4a
	ld (bc),a		;7f4b
	ld sp,hl		;7f4c
	ld (hl),e		;7f4d
	ld a,a			;7f4e
	rst 30h			;7f4f
	inc b			;7f50
	ld sp,hl		;7f51
	ld (hl),e		;7f52
	ld a,a			;7f53
	rst 30h			;7f54
	ld b,0f9h		;7f55
	ld (hl),e		;7f57
	ld a,a			;7f58
	rst 30h			;7f59
	ex af,af'		;7f5a
	ld sp,hl		;7f5b
	ld (hl),e		;7f5c
	ld a,a			;7f5d
	rst 30h			;7f5e
	ld a,(bc)		;7f5f
	ld sp,hl		;7f60
	ld (hl),e		;7f61
	ld a,a			;7f62
	rst 18h			;7f63
	ld (bc),a		;7f64
	ret nz			;7f65
	ld (bc),a		;7f66
	nop			;7f67
	ld bc,00180h		;7f68
	nop			;7f6b
	nop			;7f6c
	add a,b			;7f6d
l7f6eh:
	nop			;7f6e
	ld h,b			;7f6f
	nop			;7f70
	ld b,b			;7f71
	rst 38h			;7f72
	jp nz,0c2c0h		;7f73
	nop			;7f76
	pop bc			;7f77
	add a,b			;7f78
	pop bc			;7f79
	nop			;7f7a
	ret nz			;7f7b
	add a,b			;7f7c
	ret nz			;7f7d
	ld h,b			;7f7e
	ret nz			;7f7f
	ld b,b			;7f80
	ld bc,00000h		;7f81
	add a,b			;7f84
	jp m,002feh		;7f85
	ret po			;7f88
	ld (bc),a		;7f89
	jp po,08004h		;7f8a
	ret z			;7f8d
	add a,b			;7f8e
	ld h,e			;7f8f
	add a,b			;7f90
	ld sp,0c860h		;7f91
	ld h,b			;7f94
	ld h,e			;7f95
	ld h,b			;7f96
	ld sp,0c850h		;7f97
	ld d,b			;7f9a
	ld h,e			;7f9b
	ld d,b			;7f9c
	ld sp,0c830h		;7f9d
	jr nc,$+101		;7fa0
	jr nc,l7fd5h		;7fa2
	djnz l7f6eh		;7fa4
	djnz $+101		;7fa6
	djnz l7fdbh		;7fa8
	rst 38h			;7faa
	cp 002h			;7fab
	ret m			;7fad
	dec bc			;7fae
	jp po,0c004h		;7faf
	ret z			;7fb2
	ret nz			;7fb3
	ld h,e			;7fb4
	ret nz			;7fb5
	ld sp,0c880h		;7fb6
	add a,b			;7fb9
	ld h,e			;7fba
	add a,b			;7fbb
	ld sp,0c850h		;7fbc
	ld d,b			;7fbf
	ld h,e			;7fc0
	ld d,b			;7fc1
	ld sp,0c830h		;7fc2
	jr nc,$+101		;7fc5
	jr nc,l7ffah		;7fc7
	djnz $-54		;7fc9
	djnz $+101		;7fcb
	djnz $+51		;7fcd
	ret po			;7fcf
	ld (bc),a		;7fd0
	rst 38h			;7fd1
	cp 002h			;7fd2
	ret po			;7fd4
l7fd5h:
	ld (bc),a		;7fd5
	jp po,06101h		;7fd6
	ld b,b			;7fd9
	ld h,c			;7fda
l7fdbh:
	ret nc			;7fdb
	ld h,d			;7fdc
	jr nc,$+98		;7fdd
	and b			;7fdf
	ld h,b			;7fe0
	ret po			;7fe1
	ld h,c			;7fe2
	ld b,b			;7fe3
	ld h,c			;7fe4
	add a,b			;7fe5
	ld h,d			;7fe6
	nop			;7fe7
	ld h,d			;7fe8
	add a,b			;7fe9
	rst 30h			;7fea
	ld b,0f9h		;7feb
	ld b,b			;7fed
	add a,b			;7fee
	rst 30h			;7fef
	rlca			;7ff0
	ld sp,hl		;7ff1
	ld b,b			;7ff2
	add a,b			;7ff3
	rst 30h			;7ff4
	ex af,af'		;7ff5
	ld sp,hl		;7ff6
	ld b,b			;7ff7
	add a,b			;7ff8
	rst 30h			;7ff9
l7ffah:
	ld a,(bc)		;7ffa
	ld sp,hl		;7ffb
	ld b,b			;7ffc
	add a,b			;7ffd
	rst 18h			;7ffe
	ld (de),a		;7fff

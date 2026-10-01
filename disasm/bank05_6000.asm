; z80dasm 1.2.0
; command line: z80dasm -a -l -g 0x6000 -o /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/disasm/bank05_6000.asm /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/banks/bank05.bin

	org 06000h

	ld a,(ix+001h)		;6000
	dec a			;6003
	jr z,l603fh		;6004
	dec a			;6006
	jr z,l604eh		;6007
	call 06796h		;6009
	rrca			;600c
	rrca			;600d
	and 001h		;600e
	ld (ix+020h),a		;6010
	ld l,(ix+020h)		;6013
	ld h,000h		;6016
	add hl,hl		;6018
	ld de,0806bh		;6019
	add hl,de		;601c
	ld e,(hl)		;601d
	inc hl			;601e
	ld d,(hl)		;601f
	ld l,(ix+038h)		;6020
	dec l			;6023
	ld h,000h		;6024
	add hl,hl		;6026
	add hl,de		;6027
	ld a,(hl)		;6028
	add a,(ix+008h)		;6029
	ld (ix+008h),a		;602c
	inc hl			;602f
	ld a,(hl)		;6030
	add a,(ix+00ah)		;6031
	ld (ix+00ah),a		;6034
	ld a,008h		;6037
	call 08062h		;6039
	jp l6c1dh		;603c
l603fh:
	call sub_6adfh		;603f
	ret nz			;6042
	call 06bfah		;6043
	ld a,006h		;6046
	call sub_6ae8h		;6048
	jp l6c1dh		;604b
l604eh:
	call sub_6adfh		;604e
	jr z,l605ch		;6051
	cp 003h			;6053
	ret nz			;6055
	ld de,00000h		;6056
	jp 09bfah		;6059
l605ch:
	ld a,028h		;605c
	ld (ix+001h),001h	;605e
	call sub_6ae8h		;6062
	ld de,0ff40h		;6065
	jp 06bfdh		;6068
	ld l,a			;606b
	add a,b			;606c
	ld (hl),a		;606d
	add a,b			;606e
	inc b			;606f
	nop			;6070
	ex af,af'		;6071
	nop			;6072
	nop			;6073
	ld (bc),a		;6074
	inc c			;6075
	ld (bc),a		;6076
	nop			;6077
	nop			;6078
	inc b			;6079
	ld bc,00108h		;607a
	inc c			;607d
	ld bc,07eddh		;607e
	ld bc,01acdh		;6081
	ld b,(hl)		;6084
	adc a,a			;6085
	add a,b			;6086
	sbc a,a			;6087
	add a,b			;6088
	call 0f180h		;6089
	add a,b			;608c
	defb 0fdh,080h,0cdh ;illegal sequence	;608d
	ld d,h			;6090
	ld h,a			;6091
	ld a,020h		;6092
	call 06adbh		;6094
	inc (ix+03dh)		;6097
	ld a,001h		;609a
	jp 08121h		;609c
	call sub_6ad2h		;609f
	jp z,080b3h		;60a2
	call 08110h		;60a5
	jr c,l60b3h		;60a8
	ld a,(0ca02h)		;60aa
	and 007h		;60ad
	ret nz			;60af
	jp l6b42h+1		;60b0
l60b3h:
	ld a,(0ca48h)		;60b3
	sub (ix+008h)		;60b6
	ld b,000h		;60b9
	jr nc,l60c0h		;60bb
	neg			;60bd
	inc b			;60bf
l60c0h:
	ld (ix+022h),a		;60c0
	ld (ix+023h),a		;60c3
	ld (ix+020h),b		;60c6
	ld a,002h		;60c9
	jr l6121h		;60cb
	ld a,(ix+022h)		;60cd
	dec (ix+022h)		;60d0
	and a			;60d3
	ret nz			;60d4
	call 08106h		;60d5
	ld a,001h		;60d8
	xor (ix+020h)		;60da
	ld (ix+020h),a		;60dd
	ld a,(ix+021h)		;60e0
	and a			;60e3
	ld a,003h		;60e4
	jr z,l60efh		;60e6
	ld a,008h		;60e8
	call 06adbh		;60ea
	ld a,004h		;60ed
l60efh:
	jr l6121h		;60ef
	ld a,(ix+023h)		;60f1
	dec (ix+023h)		;60f4
	and a			;60f7
	ret nz			;60f8
	ld a,001h		;60f9
	jr l6121h		;60fb
	call sub_6ad2h		;60fd
	ret nz			;6100
	ld a,008h		;6101
	call 06adbh		;6103
	ld a,020h		;6106
	call 06adbh		;6108
	ld b,000h		;610b
	jp 09cb5h		;610d
	ld a,(0ca4ah)		;6110
	sub (ix+00ah)		;6113
	jr nc,l611ah		;6116
	neg			;6118
l611ah:
	cp 006h			;611a
	ret nc			;611c
	inc (ix+021h)		;611d
	ret			;6120
l6121h:
	ld (ix+001h),a		;6121
	ld l,(ix+001h)		;6124
	dec l			;6127
	ld h,000h		;6128
	add hl,hl		;612a
	ld de,08148h		;612b
	add hl,de		;612e
	ld d,000h		;612f
	ld a,(ix+020h)		;6131
	and a			;6134
	ld a,(hl)		;6135
	jr z,l613fh		;6136
	and a			;6138
	jr z,l613fh		;6139
	ld d,0ffh		;613b
	neg			;613d
l613fh:
	ld e,a			;613f
	inc hl			;6140
	ld l,(hl)		;6141
	ld h,000h		;6142
	ex de,hl		;6144
	jp 06bebh		;6145
	jr nz,l614ah		;6148
l614ah:
	ret nz			;614a
	nop			;614b
	ret nz			;614c
	nop			;614d
	nop			;614e
	ret nz			;614f
	call sub_6754h		;6150
	ld a,(ix+008h)		;6153
	bit 7,a			;6156
	jr z,l616bh		;6158
	res 7,a			;615a
	ld (ix+008h),a		;615c
	ld (ix+00ah),001h	;615f
	ld a,(0ca19h)		;6163
	cp 004h			;6166
	jp c,06e98h		;6168
l616bh:
	ld (ix+017h),001h	;616b
	ret			;616f
	call 0817dh		;6170
	ld a,(ix+004h)		;6173
	or a			;6176
	ret z			;6177
	ld (ix+017h),002h	;6178
	ret			;617c
	ld a,(ix+00ah)		;617d
	cp 002h			;6180
	jr c,l6188h		;6182
	dec (ix+017h)		;6184
	ret nz			;6187
l6188h:
	ld (ix+017h),00ah	;6188
	ld iy,0ca40h		;618c
	ld a,(0ca19h)		;6190
	srl a			;6193
	add a,00ah		;6195
	add a,(ix+003h)		;6197
	call sub_6b6ch		;619a
	ld a,(ix+00eh)		;619d
	rlca			;61a0
	ld a,000h		;61a1
	jr nc,l61a6h		;61a3
	inc a			;61a5
l61a6h:
	ld (ix+005h),a		;61a6
	ret			;61a9
	ld a,(iy+000h)		;61aa
	cp 004h			;61ad
	jr z,l61d6h		;61af
	cp 007h			;61b1
	jr z,l61d6h		;61b3
	cp 006h			;61b5
	jr z,l61bch		;61b7
	cp 005h			;61b9
	ret nz			;61bb
l61bch:
	ld a,(iy+012h)		;61bc
	cp 004h			;61bf
	ret nc			;61c1
	add a,a			;61c2
	add a,a			;61c3
	ld e,a			;61c4
	ld d,000h		;61c5
	ld hl,0820dh		;61c7
	add hl,de		;61ca
	ld e,(hl)		;61cb
	inc hl			;61cc
	ld d,(hl)		;61cd
	inc hl			;61ce
	ld c,(hl)		;61cf
	inc hl			;61d0
	ld b,(hl)		;61d1
	call 081f2h		;61d2
	ret			;61d5
l61d6h:
	ld d,(iy+00eh)		;61d6
	ld e,(iy+00dh)		;61d9
	ld b,(iy+00ch)		;61dc
	ld c,(iy+00bh)		;61df
	sra b			;61e2
	rr c			;61e4
	sra b			;61e6
	rr c			;61e8
	sra d			;61ea
	rr e			;61ec
	sra d			;61ee
	rr e			;61f0
	ld h,(ix+00ch)		;61f2
	ld l,(ix+00bh)		;61f5
	add hl,bc		;61f8
	ld (ix+00ch),h		;61f9
	ld (ix+00bh),l		;61fc
	ld h,(ix+00eh)		;61ff
	ld l,(ix+00dh)		;6202
	add hl,de		;6205
	ld (ix+00eh),h		;6206
	ld (ix+00dh),l		;6209
	ret			;620c
	ld b,b			;620d
	nop			;620e
	nop			;620f
	nop			;6210
	nop			;6211
	nop			;6212
	ld b,b			;6213
	nop			;6214
	ret nz			;6215
	rst 38h			;6216
	nop			;6217
	nop			;6218
	nop			;6219
	nop			;621a
	ret nz			;621b
	rst 38h			;621c
	ld a,(ix+001h)		;621d
	dec a			;6220
	jr z,l6249h		;6221
	dec a			;6223
	jr z,l6257h		;6224
	dec a			;6226
	jr z,l6272h		;6227
	call sub_6754h		;6229
	ld (ix+03eh),005h	;622c
	ld (ix+006h),002h	;6230
	ld b,060h		;6234
	ld a,(0ca19h)		;6236
	cp 006h			;6239
	jr c,l6243h		;623b
	ld (ix+016h),02ch	;623d
	ld b,010h		;6241
l6243h:
	ld (ix+017h),b		;6243
	jp l6c1dh		;6246
l6249h:
	call sub_6ad2h		;6249
	ret nz			;624c
	call 082abh		;624d
	ld (ix+006h),000h	;6250
	jp l6c1dh		;6254
l6257h:
	call sub_6ad2h		;6257
	jp z,l6c1dh		;625a
	ld a,(0ca02h)		;625d
	and 003h		;6260
	ret nz			;6262
	ld a,001h		;6263
	xor (ix+006h)		;6265
	ld (ix+006h),a		;6268
	and a			;626b
	ret z			;626c
	ld a,020h		;626d
	jp 04af0h		;626f
l6272h:
	ld a,(ix+00ah)		;6272
	and a			;6275
	jp m,082a3h		;6276
	cp 008h			;6279
	jr c,l62a3h		;627b
	ld a,(0ca19h)		;627d
	rrca			;6280
	rrca			;6281
	and 003h		;6282
	ld d,a			;6284
	ld a,(ix+020h)		;6285
	cp 004h			;6288
	jr nc,l629eh		;628a
	inc (ix+020h)		;628c
	ld e,a			;628f
	ld l,a			;6290
	ld h,000h		;6291
	add hl,hl		;6293
	ld bc,082c2h		;6294
	add hl,bc		;6297
	ld c,(hl)		;6298
	inc hl			;6299
	ld b,(hl)		;629a
	jp 09024h		;629b
l629eh:
	ld a,017h		;629e
	call 04af0h		;62a0
l62a3h:
	ld (ix+020h),000h	;62a3
	ld (ix+001h),002h	;62a7
	ld a,(0ca19h)		;62ab
	rrca			;62ae
	rrca			;62af
	and 007h		;62b0
	ld l,a			;62b2
	ld h,000h		;62b3
	ld de,082beh		;62b5
	add hl,de		;62b8
	ld a,(hl)		;62b9
	ld (ix+017h),a		;62ba
	ret			;62bd
	jr $+26			;62be
	djnz l62cah		;62c0
	nop			;62c2
	inc b			;62c3
	inc b			;62c4
	nop			;62c5
	rlca			;62c6
	inc b			;62c7
	inc bc			;62c8
	add hl,bc		;62c9
l62cah:
	ld a,(ix+001h)		;62ca
	and a			;62cd
	jr nz,l62f5h		;62ce
	call sub_6754h		;62d0
	ld a,d			;62d3
	rlca			;62d4
	jr nc,l62deh		;62d5
	inc (ix+020h)		;62d7
	ld (ix+006h),004h	;62da
l62deh:
	ld a,020h		;62de
	ld (ix+017h),a		;62e0
	ld a,(0ce53h)		;62e3
	inc a			;62e6
	cp 004h			;62e7
	jr nz,l62efh		;62e9
	inc (ix+03dh)		;62eb
	xor a			;62ee
l62efh:
	ld (0ce53h),a		;62ef
	jp l6c1dh		;62f2
l62f5h:
	call 08304h		;62f5
	ld a,(0ca02h)		;62f8
	xor (ix+02dh)		;62fb
	and 01fh		;62fe
	ret nz			;6300
	jp 072d4h		;6301
	ld a,(0ca02h)		;6304
	add a,(ix+02dh)		;6307
	and 007h		;630a
	ret nz			;630c
	call 06b94h		;630d
	ld a,(ix+020h)		;6310
	and a			;6313
	ld hl,08327h		;6314
	jr z,l631ch		;6317
	ld hl,0832fh		;6319
l631ch:
	ld a,c			;631c
	and 007h		;631d
	call 04600h		;631f
	ld a,(hl)		;6322
	ld (ix+006h),a		;6323
	ret			;6326
	nop			;6327
	ld bc,00302h		;6328
	inc bc			;632b
	inc bc			;632c
	nop			;632d
	nop			;632e
	inc b			;632f
	inc b			;6330
	rlca			;6331
	rlca			;6332
	rlca			;6333
	ld b,005h		;6334
	inc b			;6336
	ret			;6337
	ld hl,00040h		;6338
	call sub_6bf3h		;633b
	jp l6c3ah		;633e
	ld a,(ix+001h)		;6341
	or a			;6344
	jr nz,l6367h		;6345
	call sub_6754h		;6347
	ld b,000h		;634a
	ld a,d			;634c
	rlca			;634d
	ld a,003h		;634e
	jr nc,l635bh		;6350
	inc (ix+020h)		;6352
	inc b			;6355
	ld (ix+006h),b		;6356
	ld a,004h		;6359
l635bh:
	ld (ix+03eh),a		;635b
	call 06796h		;635e
	call sub_6ae8h		;6361
	jp l6c1dh		;6364
l6367h:
	call sub_6adfh		;6367
	ret nz			;636a
	ld a,010h		;636b
	call sub_6ae8h		;636d
	ld a,016h		;6370
	call sub_684ch		;6372
	jr c,l6394h		;6375
	ld a,(ix+020h)		;6377
	ld b,002h		;637a
	ld c,0feh		;637c
	and a			;637e
	jr z,l6384h		;637f
	ld bc,00202h		;6381
l6384h:
	call 06929h		;6384
	ld a,(ix+020h)		;6387
	ld (iy+020h),a		;638a
	ld a,(ix+03dh)		;638d
	and a			;6390
	call nz,083a9h		;6391
l6394h:
	call sub_699eh		;6394
	inc (ix+021h)		;6397
	ld a,003h		;639a
	cp (ix+021h)		;639c
	ret nz			;639f
	ld (ix+021h),000h	;63a0
	ld a,040h		;63a4
	jp sub_6ae8h		;63a6
	inc (ix+022h)		;63a9
	ld a,(ix+022h)		;63ac
	rrca			;63af
	ret c			;63b0
	inc (iy+03dh)		;63b1
	ret			;63b4
	call sub_6754h		;63b5
	ld hl,00060h		;63b8
	call sub_6bf3h		;63bb
	ret			;63be
	call 08402h		;63bf
	ld a,(ix+001h)		;63c2
	dec a			;63c5
	jr z,l63e2h		;63c6
	jp p,083f9h		;63c8
	call sub_755dh		;63cb
	ld a,d			;63ce
	or a			;63cf
	ret p			;63d0
	ld a,e			;63d1
	add a,000h		;63d2
	cp 008h			;63d4
	ret nc			;63d6
	inc (ix+001h)		;63d7
	ld (ix+017h),003h	;63da
	ld (ix+018h),005h	;63de
l63e2h:
	dec (ix+018h)		;63e2
	ret nz			;63e5
	ld (ix+018h),005h	;63e6
	call 08420h		;63ea
	dec (ix+017h)		;63ed
	ret nz			;63f0
	inc (ix+001h)		;63f1
	ld (ix+018h),00ah	;63f4
	ret			;63f8
	dec (ix+018h)		;63f9
	ret nz			;63fc
	ld (ix+001h),000h	;63fd
	ret			;6401
	ld hl,00200h		;6402
	ld de,00200h		;6405
	call l76cfh+1		;6408
	call sub_7b18h		;640b
	ld a,(de)		;640e
	cp 0cch			;640f
	ret z			;6411
	call l6b42h+1		;6412
	ret			;6415
	ld a,(ix+00ch)		;6416
	or a			;6419
	ld a,000h		;641a
	ret m			;641c
	ld a,003h		;641d
	ret			;641f
	ld bc,00000h		;6420
	jp 09cb5h		;6423
	ld hl,0842fh		;6426
	call sub_7186h		;6429
	jp 07306h		;642c
	nop			;642f
	rst 38h			;6430
	ld (ix+017h),01eh	;6431
	call sub_6754h		;6435
	ld a,d			;6438
	and 080h		;6439
	rlca			;643b
	ld (ix+020h),a		;643c
	ld (ix+005h),a		;643f
	ld de,0ffd0h		;6442
	call 06bfdh		;6445
	ld (ix+03dh),001h	;6448
	ret			;644c
	ld a,(ix+001h)		;644d
	dec a			;6450
	jr z,l646bh		;6451
	call 084aah		;6453
	dec (ix+017h)		;6456
	ret nz			;6459
	call 08488h		;645a
	call 06bfah		;645d
	ld (ix+017h),008h	;6460
	ld (ix+018h),002h	;6464
	inc (ix+001h)		;6468
l646bh:
	call 084aah		;646b
	dec (ix+017h)		;646e
	ret nz			;6471
	call 084dch		;6472
	ld (ix+017h),008h	;6475
	dec (ix+018h)		;6479
	jp nz,0849dh		;647c
	ld (ix+001h),000h	;647f
	ld (ix+017h),028h	;6483
	ret			;6487
	ld h,(ix+00eh)		;6488
	ld l,(ix+00dh)		;648b
	ld (ix+012h),000h	;648e
	ld (ix+011h),000h	;6492
	ld (ix+012h),h		;6496
	ld (ix+011h),l		;6499
	ret			;649c
	ld h,(ix+012h)		;649d
	ld l,(ix+011h)		;64a0
	ld (ix+00eh),h		;64a3
	ld (ix+00dh),l		;64a6
	ret			;64a9
	ld d,(ix+00ah)		;64aa
	ld e,(ix+008h)		;64ad
	call 084d2h		;64b0
	add a,d			;64b3
	ld d,a			;64b4
	call sub_753ch		;64b5
	jr c,l64beh		;64b8
	ret z			;64ba
	jp l6b53h		;64bb
l64beh:
	call 084cbh		;64be
	call sub_753ch		;64c1
	jp c,l6b53h		;64c4
	ret z			;64c7
	jp l6b53h		;64c8
	ld a,(ix+00eh)		;64cb
	neg			;64ce
	jr l64d6h		;64d0
	ld a,(ix+00eh)		;64d2
	or a			;64d5
l64d6h:
	ld a,0ffh		;64d6
	ret m			;64d8
	ld a,005h		;64d9
	ret			;64db
	ld hl,084f1h		;64dc
	ld a,(ix+020h)		;64df
	and a			;64e2
	jr z,l64e8h		;64e3
	ld hl,084f5h		;64e5
l64e8h:
	call sub_7186h		;64e8
	ld bc,00200h		;64eb
	jp 07306h		;64ee
	ld (bc),a		;64f1
	inc b			;64f2
	ld b,0ffh		;64f3
	ld a,(bc)		;64f5
	inc c			;64f6
	ld c,0ffh		;64f7
	ld de,0858fh		;64f9
	call 07b65h		;64fc
	ld a,(ix+001h)		;64ff
	cp 004h			;6502
	jp nc,04ae0h		;6504
	call 0461ah		;6507
	ld (de),a		;650a
	add a,l			;650b
	ld b,b			;650c
	add a,l			;650d
	ld h,a			;650e
	add a,l			;650f
	add a,b			;6510
	add a,l			;6511
	call sub_6754h		;6512
	call 06796h		;6515
	ld c,a			;6518
	and 00fh		;6519
	ld (ix+020h),a		;651b
	xor c			;651e
	ld (ix+003h),a		;651f
	or a			;6522
	jr z,l6531h		;6523
	ld (ix+006h),002h	;6525
	ld a,(ix+008h)		;6529
	add a,004h		;652c
	ld (ix+008h),a		;652e
l6531h:
	ld (ix+020h),000h	;6531
	ld a,(ix+003h)		;6535
	srl a			;6538
	call 08650h		;653a
	jp l6c1dh		;653d
	ld a,(ix+037h)		;6540
	and a			;6543
	ret nz			;6544
	call 07dcdh		;6545
	call sub_7dc3h		;6548
	ld a,(ix+003h)		;654b
	or a			;654e
	jr nz,l655ah		;654f
	ld (ix+006h),001h	;6551
	ld (ix+001h),003h	;6555
	ret			;6559
l655ah:
	ld (ix+006h),003h	;655a
	ld (ix+001h),002h	;655e
	ld (ix+017h),003h	;6562
	ret			;6566
	dec (ix+017h)		;6567
	ret nz			;656a
	call 07dcdh		;656b
	ld (ix+017h),003h	;656e
	ld a,(ix+006h)		;6572
	inc a			;6575
	ld (ix+006h),a		;6576
	cp 005h			;6579
	ret nz			;657b
	ld (ix+001h),003h	;657c
	ret			;6580
	ld l,(ix+020h)		;6581
	ld h,000h		;6584
	ld de,0858fh		;6586
	add hl,hl		;6589
	add hl,de		;658a
	ld e,(hl)		;658b
	inc hl			;658c
	ld d,(hl)		;658d
	ret			;658e
	sbc a,e			;658f
	add a,l			;6590
	xor e			;6591
	add a,l			;6592
	or (hl)			;6593
	add a,l			;6594
	call po,00d85h		;6595
	add a,(hl)		;6598
	ld sp,01086h		;6599
	nop			;659c
	nop			;659d
	ld bc,0fe01h		;659e
	ld bc,08c00h		;65a1
	ld (bc),a		;65a4
	cp 00dh			;65a5
	nop			;65a7
	ld bc,0ff03h		;65a8
	dec bc			;65ab
	nop			;65ac
	nop			;65ad
	ld bc,0fe01h		;65ae
	dec c			;65b1
	nop			;65b2
	ld bc,0ff03h		;65b3
	ld l,000h		;65b6
	nop			;65b8
	ld bc,0fe01h		;65b9
	ld bc,08c00h		;65bc
	ld (bc),a		;65bf
	cp 00dh			;65c0
	nop			;65c2
	ld bc,0fe03h		;65c3
	nop			;65c6
	inc bc			;65c7
	ld bc,0fe01h		;65c8
	ld bc,08c03h		;65cb
	ld (bc),a		;65ce
	cp 00dh			;65cf
	inc bc			;65d1
	ld bc,0fe03h		;65d2
	nop			;65d5
	ld b,001h		;65d6
	ld bc,001feh		;65d8
	ld b,08ch		;65db
	ld (bc),a		;65dd
	cp 00dh			;65de
	ld b,001h		;65e0
	inc bc			;65e2
	rst 38h			;65e3
	add hl,hl		;65e4
	nop			;65e5
	nop			;65e6
	ld bc,0fe01h		;65e7
	dec c			;65ea
	nop			;65eb
	ld bc,0fe03h		;65ec
	nop			;65ef
	inc bc			;65f0
	ld bc,0fe01h		;65f1
	ld bc,08c03h		;65f4
	ld (bc),a		;65f7
	cp 00dh			;65f8
	inc bc			;65fa
	ld bc,0fe03h		;65fb
	nop			;65fe
	ld b,001h		;65ff
	ld bc,001feh		;6601
	ld b,08ch		;6604
	ld (bc),a		;6606
	cp 00dh			;6607
	ld b,001h		;6609
	inc bc			;660b
	rst 38h			;660c
	inc h			;660d
	nop			;660e
	nop			;660f
	ld bc,0fe01h		;6610
	dec c			;6613
	nop			;6614
	ld bc,0fe03h		;6615
	nop			;6618
	inc bc			;6619
	ld bc,0fe01h		;661a
	dec c			;661d
	inc bc			;661e
	ld bc,0fe03h		;661f
	nop			;6622
	ld b,001h		;6623
	ld bc,001feh		;6625
	ld b,08ch		;6628
	ld (bc),a		;662a
	cp 00dh			;662b
	ld b,001h		;662d
	inc bc			;662f
	rst 38h			;6630
	rra			;6631
	nop			;6632
	nop			;6633
	ld bc,0fe01h		;6634
	dec c			;6637
	nop			;6638
	ld bc,0fe03h		;6639
	nop			;663c
	inc bc			;663d
	ld bc,0fe01h		;663e
	dec c			;6641
	inc bc			;6642
	ld bc,0fe03h		;6643
	nop			;6646
	ld b,001h		;6647
	ld bc,00dfeh		;6649
	ld b,001h		;664c
	inc bc			;664e
	rst 38h			;664f
	ld de,0ffa0h		;6650
	ld b,005h		;6653
	call 08663h		;6655
	or a			;6658
	ret z			;6659
	ld b,005h		;665a
	ld de,00060h		;665c
	call 08663h		;665f
	ret			;6662
	push ix			;6663
	push af			;6665
	call 0866dh		;6666
	pop af			;6669
	pop ix			;666a
	ret			;666c
	ld a,02ch		;666d
	push de			;666f
	push bc			;6670
	call sub_69bfh		;6671
	pop bc			;6674
	pop hl			;6675
	ret c			;6676
	push bc			;6677
	call 083bbh		;6678
	ld h,(iy+00ah)		;667b
	ld l,(iy+009h)		;667e
	ld de,0fe00h		;6681
	add hl,de		;6684
	ld (ix+00ah),h		;6685
	ld (ix+009h),l		;6688
	pop bc			;668b
	ld a,(iy+008h)		;668c
	add a,b			;668f
	ld (ix+008h),a		;6690
	ret			;6693
	ld a,(ix+001h)		;6694
	call 0461ah		;6697
	and h			;669a
	add a,(hl)		;669b
	or c			;669c
	add a,(hl)		;669d
	ret nc			;669e
	add a,(hl)		;669f
	pop af			;66a0
	add a,(hl)		;66a1
	rst 38h			;66a2
	add a,(hl)		;66a3
	call sub_6754h		;66a4
	ld a,d			;66a7
	rlca			;66a8
	jr nc,l66aeh		;66a9
	inc (ix+03dh)		;66ab
l66aeh:
	jp l6c1dh		;66ae
	call sub_755dh		;66b1
	ld a,e			;66b4
	bit 7,a			;66b5
	jr z,l66bbh		;66b7
	neg			;66b9
l66bbh:
	cp 002h			;66bb
	jp c,l6c1dh		;66bd
	cp 008h			;66c0
	ret nc			;66c2
	ld a,d			;66c3
	bit 7,a			;66c4
	jr z,l66cah		;66c6
	neg			;66c8
l66cah:
	cp 008h			;66ca
	ret nc			;66cc
	jp l6c1dh		;66cd
	call 06b94h		;66d0
	ld a,c			;66d3
	call 08708h		;66d4
	jr z,l66ech		;66d7
	ld a,b			;66d9
	add a,002h		;66da
	and 007h		;66dc
	call 08708h		;66de
	jr z,l66ech		;66e1
	ld a,b			;66e3
	add a,004h		;66e4
	and 007h		;66e6
	ld (ix+020h),a		;66e8
	ld b,a			;66eb
l66ech:
	call 08724h		;66ec
	jr l66f8h		;66ef
	call sub_6ad2h		;66f1
	ret nz			;66f4
	call 06be6h		;66f5
l66f8h:
	ld (ix+017h),004h	;66f8
	jp l6c1dh		;66fc
	call sub_6ad2h		;66ff
	ret nz			;6702
	ld (ix+001h),002h	;6703
	ret			;6707
	ld (ix+020h),a		;6708
	push af			;670b
	ld l,a			;670c
	ld h,000h		;670d
	add hl,hl		;670f
	ld de,0873fh		;6710
	add hl,de		;6713
	ld a,(hl)		;6714
	add a,(ix+008h)		;6715
	ld e,a			;6718
	inc hl			;6719
	ld a,(hl)		;671a
	add a,(ix+00ah)		;671b
	ld d,a			;671e
	call sub_753ch		;671f
	pop bc			;6722
	ret			;6723
	ld a,b			;6724
	ld l,a			;6725
	ld h,000h		;6726
	add hl,hl		;6728
	ld de,0874fh		;6729
	add hl,de		;672c
	ld a,(hl)		;672d
	call 08734h		;672e
	inc hl			;6731
	ld a,(hl)		;6732
	ex de,hl		;6733
	ld d,000h		;6734
	bit 7,a			;6736
	jr z,l673bh		;6738
	dec d			;673a
l673bh:
	ld e,a			;673b
	jp 06bebh		;673c
	nop			;673f
	rst 38h			;6740
	rst 38h			;6741
	rst 38h			;6742
	rst 38h			;6743
	nop			;6744
	rst 38h			;6745
	inc bc			;6746
	nop			;6747
	inc bc			;6748
	inc bc			;6749
	inc bc			;674a
	inc bc			;674b
	nop			;674c
	inc bc			;674d
	rst 38h			;674e
	nop			;674f
	and b			;6750
	and b			;6751
	and b			;6752
	and b			;6753
sub_6754h:
	nop			;6754
	and b			;6755
	ld h,b			;6756
	nop			;6757
	ld h,b			;6758
	ld h,b			;6759
	ld h,b			;675a
	ld h,b			;675b
	nop			;675c
	ld h,b			;675d
	and b			;675e
	call sub_6754h		;675f
	push ix			;6762
	ld de,0ffa0h		;6764
	call 08777h		;6767
	pop ix			;676a
	push ix			;676c
	ld de,00060h		;676e
	call 08777h		;6771
	pop ix			;6774
	ret			;6776
	ld a,02ch		;6777
	push de			;6779
	call sub_69bfh		;677a
	pop hl			;677d
	ret c			;677e
	call 083bbh		;677f
	ld h,(iy+00ah)		;6782
	ld l,(iy+009h)		;6785
	ld de,0fe00h		;6788
l678bh:
	add hl,de		;678b
	ld (ix+00ah),h		;678c
	ld (ix+009h),l		;678f
	ld a,(iy+008h)		;6792
	add a,005h		;6795
	ld (ix+008h),a		;6797
	ret			;679a
	ld a,(ix+00ah)		;679b
	cp 0f6h			;679e
	jp z,06e98h		;67a0
	ld a,(ix+037h)		;67a3
	or a			;67a6
	ret nz			;67a7
	set 6,(ix+015h)		;67a8
	bit 0,(ix+001h)		;67ac
	ret nz			;67b0
	ld a,013h		;67b1
	call 04af5h		;67b3
	set 0,(ix+001h)		;67b6
	ret			;67ba
	inc (ix+018h)		;67bb
	jp 082d0h		;67be
	call 08304h		;67c1
	call sub_6adfh		;67c4
	ret nz			;67c7
	ld a,(ix+02dh)		;67c8
	add a,a			;67cb
	add a,01ch		;67cc
	ld (ix+018h),a		;67ce
	ld l,(ix+025h)		;67d1
	ld h,000h		;67d4
	ld de,087ebh		;67d6
	add hl,de		;67d9
	ld a,(hl)		;67da
	add a,001h		;67db
	dec a			;67dd
	jr nc,l67e5h		;67de
	ld (ix+025h),000h	;67e0
	ld a,(de)		;67e4
l67e5h:
	inc (ix+025h)		;67e5
	jp 072f6h		;67e8
	ex af,af'		;67eb
	ld a,(bc)		;67ec
	inc c			;67ed
	ld c,010h		;67ee
	rst 38h			;67f0
	call 088eah		;67f1
	ld a,(ix+001h)		;67f4
	cp 005h			;67f7
	jp nc,04ae0h		;67f9
	call 0461ah		;67fc
	add hl,bc		;67ff
	adc a,b			;6800
	jr z,l678bh		;6801
	scf			;6803
	adc a,b			;6804
	ld c,c			;6805
	adc a,b			;6806
	ld e,b			;6807
	adc a,b			;6808
	ld (ix+003h),001h	;6809
	ld (ix+00ah),01ch	;680d
	ld (ix+008h),000h	;6811
	ld (ix+017h),050h	;6815
	ld de,0ffe0h		;6819
	ld hl,00020h		;681c
	call 06bebh		;681f
	jr l6824h		;6822
l6824h:
	inc (ix+001h)		;6824
	ret			;6827
	dec (ix+017h)		;6828
	ret nz			;682b
	ld de,00020h		;682c
	call 06bfdh		;682f
	call 06bfdh		;6832
	jr l6824h		;6835
	call 0885ch		;6837
	ld a,(ix+00ah)		;683a
	cp 018h			;683d
	ret c			;683f
	call 06bfah		;6840
	ld (ix+017h),078h	;6843
	jr l6824h		;6847
	call 0885ch		;6849
sub_684ch:
	dec (ix+017h)		;684c
	ret nz			;684f
	ld de,0ffc0h		;6850
	call 06bfdh		;6853
	jr l6824h		;6856
	call 0885ch		;6858
	ret			;685b
	ld a,(ix+002h)		;685c
	dec a			;685f
	jr z,l687bh		;6860
	jp p,08886h		;6862
	call 08894h		;6865
	jr nz,l6870h		;6868
	call 088a1h		;686a
	jp 088cfh		;686d
l6870h:
	inc (ix+002h)		;6870
	ld a,(ix+008h)		;6873
	cp 009h			;6876
	jp 088d6h		;6878
l687bh:
	ld a,(ix+008h)		;687b
	sub 007h		;687e
	cp 001h			;6880
	ret nc			;6882
	inc (ix+002h)		;6883
	call 08894h		;6886
	jr nz,l6870h		;6889
	call 088a1h		;688b
	ret nz			;688e
	ld (ix+002h),000h	;688f
	ret			;6893
	ld de,001feh		;6894
	call sub_7595h		;6897
	ret nz			;689a
	ld de,00106h		;689b
	jp sub_7595h		;689e
	call sub_756ch		;68a1
	bit 7,d			;68a4
	jr z,l68abh		;68a6
	call 0460ah		;68a8
l68abh:
	bit 7,h			;68ab
	jr z,l68c0h		;68ad
	call 04612h		;68af
	add hl,hl		;68b2
	or a			;68b3
	sbc hl,de		;68b4
	ret c			;68b6
	ld bc,00180h		;68b7
	or a			;68ba
	sbc hl,bc		;68bb
	ret nc			;68bd
	xor a			;68be
	ret			;68bf
l68c0h:
	call 088b2h		;68c0
	ret z			;68c3
	ccf			;68c4
	ret			;68c5
	ld a,(ix+022h)		;68c6
	dec a			;68c9
	ld (ix+022h),a		;68ca
	xor a			;68cd
	ret			;68ce
	ld (ix+003h),001h	;68cf
	jp z,l6bf0h		;68d3
	ld hl,00030h		;68d6
	ld (ix+003h),002h	;68d9
	jp c,sub_6bf3h		;68dd
	call 04612h		;68e0
	ld (ix+003h),000h	;68e3
	jp sub_6bf3h		;68e7
	ld a,(0ca02h)		;68ea
	and 017h		;68ed
	ret nz			;68ef
	call 0750fh		;68f0
	ret c			;68f3
	ld de,00000h		;68f4
	ld bc,00200h		;68f7
	push ix			;68fa
	call 09d1eh		;68fc
	pop ix			;68ff
	push ix			;6901
	ld de,00002h		;6903
	ld bc,00206h		;6906
	call 09d1eh		;6909
	pop ix			;690c
	ret			;690e
	ret			;690f
	ld a,(ix+001h)		;6910
	cp 002h			;6913
	jp nc,04ae0h		;6915
	call 0461ah		;6918
	rra			;691b
	adc a,c			;691c
	daa			;691d
	adc a,c			;691e
	inc (ix+001h)		;691f
	ret			;6922
	ld (ix+001h),a		;6923
sub_6926h:
	ret			;6926
	call 08952h		;6927
	ld a,(ix+022h)		;692a
	or a			;692d
	ret z			;692e
	jp 08932h		;692f
	ld a,(ix+021h)		;6932
	dec a			;6935
	jr z,l6944h		;6936
	ld a,(iy+027h)		;6938
	add a,(iy+029h)		;693b
	call 0894dh		;693e
	jp 08a30h		;6941
l6944h:
	ld a,(iy+027h)		;6944
	call 0894dh		;6947
	jp 089feh		;694a
	ld c,a			;694d
	ld b,(iy+026h)		;694e
	ret			;6951
	call 068deh		;6952
	jr c,l696ah		;6955
	ld a,(iy+00ah)		;6957
	ld (ix+00ah),a		;695a
	ld a,(iy+009h)		;695d
	ld (ix+009h),a		;6960
	ld a,(iy+022h)		;6963
	ld (ix+022h),a		;6966
	ret			;6969
l696ah:
	dec (ix+00ah)		;696a
	ret			;696d
	ld b,(ix+008h)		;696e
	ld c,(ix+007h)		;6971
	add hl,bc		;6974
	push hl			;6975
	ex de,hl		;6976
	or a			;6977
	sbc hl,de		;6978
	ld b,005h		;697a
l697ch:
	sra h			;697c
	rr l			;697e
	djnz l697ch		;6980
	pop bc			;6982
	ret			;6983
	ld b,(ix+00ah)		;6984
	ld c,(ix+009h)		;6987
	add hl,bc		;698a
	push hl			;698b
	ex de,hl		;698c
	or a			;698d
	sbc hl,de		;698e
	ld b,005h		;6990
l6992h:
	sra h			;6992
	rr l			;6994
	djnz l6992h		;6996
	pop bc			;6998
	ret			;6999
	push hl			;699a
	ld hl,00000h		;699b
sub_699eh:
	call 08984h		;699e
	push bc			;69a1
	exx			;69a2
sub_69a3h:
	pop de			;69a3
	exx			;69a4
	ex (sp),hl		;69a5
	ex de,hl		;69a6
	ld hl,00004h		;69a7
	call 0896eh		;69aa
	push bc			;69ad
	exx			;69ae
	pop hl			;69af
	exx			;69b0
	pop de			;69b1
	ret			;69b2
	push hl			;69b3
	ld hl,00000h		;69b4
	call 08984h		;69b7
	push bc			;69ba
	exx			;69bb
	pop de			;69bc
	exx			;69bd
	ex (sp),hl		;69be
sub_69bfh:
	ex de,hl		;69bf
	ld hl,00001h		;69c0
	call 0896eh		;69c3
	push bc			;69c6
	exx			;69c7
	pop hl			;69c8
	exx			;69c9
	pop de			;69ca
	ret			;69cb
	push hl			;69cc
	ld hl,00004h		;69cd
	call 08984h		;69d0
	push bc			;69d3
	exx			;69d4
	pop de			;69d5
	exx			;69d6
	ex (sp),hl		;69d7
	ex de,hl		;69d8
	ld hl,00004h		;69d9
	call 0896eh		;69dc
	push bc			;69df
	exx			;69e0
	pop hl			;69e1
	exx			;69e2
	pop de			;69e3
	ret			;69e4
	push hl			;69e5
	ld hl,00004h		;69e6
	call 08984h		;69e9
	push bc			;69ec
	exx			;69ed
	pop de			;69ee
	exx			;69ef
	ex (sp),hl		;69f0
	ex de,hl		;69f1
	ld hl,00001h		;69f2
	call 0896eh		;69f5
	push bc			;69f8
	exx			;69f9
	pop hl			;69fa
	exx			;69fb
	pop de			;69fc
	ret			;69fd
	ld a,(iy+028h)		;69fe
	push af			;6a01
	ld a,(iy+028h)		;6a02
	push bc			;6a05
	push af			;6a06
	call 08a62h		;6a07
	call 0899ah		;6a0a
	exx			;6a0d
	ld c,(iy+029h)		;6a0e
	ld b,0cbh		;6a11
	exx			;6a13
	ld bc,00001h		;6a14
	call 08a68h		;6a17
	pop af			;6a1a
	pop bc			;6a1b
	add a,b			;6a1c
	ld b,a			;6a1d
	call 08a62h		;6a1e
	call 089cch		;6a21
	pop af			;6a24
	exx			;6a25
	ld c,a			;6a26
	ld b,0cah		;6a27
	exx			;6a29
	ld bc,0ff00h		;6a2a
	jp 08a68h		;6a2d
	ld a,(iy+029h)		;6a30
	push af			;6a33
	ld a,(iy+028h)		;6a34
	push bc			;6a37
	push af			;6a38
	call 08a62h		;6a39
	call 089b3h		;6a3c
	exx			;6a3f
	ld c,(iy+028h)		;6a40
	ld b,0cah		;6a43
	exx			;6a45
	ld bc,00100h		;6a46
	call 08a68h		;6a49
	pop af			;6a4c
	pop bc			;6a4d
	add a,b			;6a4e
	ld b,a			;6a4f
	call 08a62h		;6a50
	call 089e5h		;6a53
	pop af			;6a56
	exx			;6a57
	ld c,a			;6a58
	ld b,0cbh		;6a59
	exx			;6a5b
	ld bc,000ffh		;6a5c
	jp 08a68h		;6a5f
	ld d,b			;6a62
	ld h,c			;6a63
	ld l,000h		;6a64
	ld e,l			;6a66
	ret			;6a67
	ld a,075h		;6a68
	push ix			;6a6a
	push ix			;6a6c
	pop iy			;6a6e
	push hl			;6a70
	push de			;6a71
	push bc			;6a72
	exx			;6a73
	push hl			;6a74
	push de			;6a75
	push bc			;6a76
	exx			;6a77
	call l70d9h+1		;6a78
	exx			;6a7b
	pop bc			;6a7c
	pop de			;6a7d
	pop hl			;6a7e
	exx			;6a7f
	pop bc			;6a80
	pop de			;6a81
	pop hl			;6a82
	jr c,l6aabh		;6a83
	exx			;6a85
	ld (ix+008h),h		;6a86
	ld (ix+007h),l		;6a89
	ld (ix+00ah),d		;6a8c
	ld (ix+009h),e		;6a8f
	ld (ix+011h),b		;6a92
	ld (ix+00fh),c		;6a95
	exx			;6a98
	ld (ix+00ch),h		;6a99
	ld (ix+00bh),l		;6a9c
	ld (ix+00eh),d		;6a9f
	ld (ix+00dh),e		;6aa2
	ld (ix+012h),b		;6aa5
	ld (ix+010h),c		;6aa8
l6aabh:
	pop ix			;6aab
	ret			;6aad
	ret			;6aae
	ld (bc),a		;6aaf
	inc c			;6ab0
	ex af,af'		;6ab1
	ld (de),a		;6ab2
	rlca			;6ab3
	inc a			;6ab4
	inc c			;6ab5
	ex af,af'		;6ab6
	ld (de),a		;6ab7
sub_6ab8h:
	rlca			;6ab8
	jr z,$+17		;6ab9
	ld b,008h		;6abb
	rrca			;6abd
	ld e,014h		;6abe
	dec c			;6ac0
	add hl,bc		;6ac1
sub_6ac2h:
	add hl,bc		;6ac2
	ld (0070fh),a		;6ac3
	inc c			;6ac6
	ex af,af'		;6ac7
	ld (00a12h),a		;6ac8
	ld a,(bc)		;6acb
	inc c			;6acc
	jr z,$+17		;6acd
	inc b			;6acf
	djnz sub_6adfh		;6ad0
sub_6ad2h:
	ld (00712h),a		;6ad2
	inc c			;6ad5
	inc c			;6ad6
	call 08b79h		;6ad7
	ld a,(ix+001h)		;6ada
	cp 006h			;6add
sub_6adfh:
	jp nc,04ae0h		;6adf
	call 0461ah		;6ae2
	pop af			;6ae5
	adc a,d			;6ae6
	ld b,(hl)		;6ae7
sub_6ae8h:
	adc a,e			;6ae8
	ld c,h			;6ae9
	adc a,e			;6aea
	ld e,a			;6aeb
	adc a,e			;6aec
	ld l,h			;6aed
	adc a,e			;6aee
	ld (hl),d		;6aef
	adc a,e			;6af0
	call 06796h		;6af1
	add a,020h		;6af4
	ld (ix+018h),a		;6af6
	ld (ix+017h),020h	;6af9
	ld (ix+00ah),01fh	;6afd
	ld (ix+008h),014h	;6b01
	push ix			;6b05
	push ix			;6b07
	pop iy			;6b09
	ld a,035h		;6b0b
	call sub_69bfh		;6b0d
	ld (ix+00ah),01fh	;6b10
	ld (ix+008h),014h	;6b14
	ld (ix+021h),002h	;6b18
	push iy			;6b1c
	pop ix			;6b1e
	ld a,035h		;6b20
	call sub_69bfh		;6b22
	ld (ix+00ah),01fh	;6b25
	ld (ix+008h),002h	;6b29
	inc (ix+005h)		;6b2d
	ld (ix+021h),001h	;6b30
	pop ix			;6b34
	call 08be2h		;6b36
	call 08b3eh		;6b39
	jr l6b46h		;6b3c
l6b3eh:
	inc (ix+001h)		;6b3e
	ret			;6b41
l6b42h:
	ld (ix+001h),a		;6b42
	ret			;6b45
l6b46h:
	call 08b88h		;6b46
	call 08b3eh		;6b49
	ld a,(ix+023h)		;6b4c
	or a			;6b4f
	ld de,0fe00h		;6b50
l6b53h:
	jp nz,06bfdh		;6b53
	call 08bc0h		;6b56
	dec (ix+017h)		;6b59
	ret nz			;6b5c
	jr l6b3eh		;6b5d
	call 08bc0h		;6b5f
	ld a,(ix+037h)		;6b62
	cp 002h			;6b65
	jp nz,06e98h		;6b67
	jr l6b3eh		;6b6a
sub_6b6ch:
	ld (ix+022h),001h	;6b6c
	jr l6b3eh		;6b70
	xor a			;6b72
	ld (ix+022h),a		;6b73
	inc a			;6b76
	jr l6b42h		;6b77
	ld a,(0ca02h)		;6b79
	and 007h		;6b7c
	ret nz			;6b7e
sub_6b7fh:
	dec (ix+018h)		;6b7f
	ret nz			;6b82
	ld (ix+023h),001h	;6b83
	ret			;6b87
	ld a,(ix+024h)		;6b88
	push af			;6b8b
	call 08b9bh		;6b8c
	pop af			;6b8f
	inc a			;6b90
	cp 008h			;6b91
	jr c,l6b97h		;6b93
	ld a,001h		;6b95
l6b97h:
	ld (ix+024h),a		;6b97
	ret			;6b9a
	ld l,a			;6b9b
	add a,a			;6b9c
	add a,a			;6b9d
	add a,l			;6b9e
	ld hl,08aafh		;6b9f
	call 04600h		;6ba2
	ld a,(hl)		;6ba5
	inc hl			;6ba6
	ld (ix+017h),a		;6ba7
	ld a,(hl)		;6baa
	inc hl			;6bab
	ld (ix+026h),a		;6bac
	ld a,(hl)		;6baf
	inc hl			;6bb0
	ld (ix+027h),a		;6bb1
	ld a,(hl)		;6bb4
	inc hl			;6bb5
	ld (ix+028h),a		;6bb6
	ld a,(hl)		;6bb9
	inc hl			;6bba
	ld (ix+029h),a		;6bbb
	ret			;6bbe
	ret			;6bbf
	ld d,(ix+00ah)		;6bc0
	ld e,(ix+008h)		;6bc3
	call 08be9h		;6bc6
	add a,d			;6bc9
	ld d,a			;6bca
	call sub_753ch		;6bcb
	jr c,l6bd7h		;6bce
	cp 003h			;6bd0
	ret nz			;6bd2
	jp l6b53h		;6bd3
	ret			;6bd6
l6bd7h:
	ld a,(ix+00ah)		;6bd7
	sub 002h		;6bda
	cp 01ch			;6bdc
	ret c			;6bde
	jp l6b53h		;6bdf
	ld de,0ffa0h		;6be2
	call 06bfdh		;6be5
	ret			;6be8
	ld a,(ix+00eh)		;6be9
	or a			;6bec
	ld a,0ffh		;6bed
	ret m			;6bef
l6bf0h:
	ld a,005h		;6bf0
	ret			;6bf2
sub_6bf3h:
	ld a,(ix+001h)		;6bf3
	dec a			;6bf6
	jr z,l6c0eh		;6bf7
	call sub_6754h		;6bf9
	call 04678h		;6bfc
	and 003h		;6bff
	ld (ix+006h),a		;6c01
sub_6c04h:
	call 08c1dh		;6c04
	ld (ix+03eh),00dh	;6c07
	jp l6c1dh		;6c0b
l6c0eh:
	call sub_6ad2h		;6c0e
	ret nz			;6c11
	ld a,(ix+006h)		;6c12
	call 09f32h		;6c15
	ld b,004h		;6c18
	call sub_6ac2h		;6c1a
l6c1dh:
	ld a,(0ca19h)		;6c1d
	rrca			;6c20
	rrca			;6c21
	and 003h		;6c22
	ld l,a			;6c24
	ld h,000h		;6c25
	ld de,08c30h		;6c27
	add hl,de		;6c2a
	ld a,(hl)		;6c2b
	ld (ix+017h),a		;6c2c
	ret			;6c2f
	ld (de),a		;6c30
	djnz l6c3dh		;6c31
	ex af,af'		;6c33
	ld a,(ix+001h)		;6c34
	dec a			;6c37
	jr z,l6c61h		;6c38
l6c3ah:
	call sub_6754h		;6c3a
l6c3dh:
	ld a,d			;6c3d
	rlca			;6c3e
	jr nc,l6c44h		;6c3f
	inc (ix+023h)		;6c41
l6c44h:
	call 06796h		;6c44
	ld (ix+021h),a		;6c47
	call 08c9bh		;6c4a
	ld (ix+03eh),00eh	;6c4d
	call 08cdfh		;6c51
	ld a,(0ca04h)		;6c54
	and a			;6c57
	jr z,l6c5eh		;6c58
	ld (ix+016h),018h	;6c5a
l6c5eh:
	jp l6c1dh		;6c5e
l6c61h:
	call 08cbah		;6c61
	ld l,(ix+021h)		;6c64
	ld h,000h		;6c67
	add hl,hl		;6c69
	add hl,hl		;6c6a
	ld de,08d1bh		;6c6b
	add hl,de		;6c6e
	ld a,(ix+008h)		;6c6f
	sub 002h		;6c72
	rlca			;6c74
	jr c,l6c7fh		;6c75
	ld a,(ix+00ah)		;6c77
	sub 002h		;6c7a
	rlca			;6c7c
	jr nc,l6c81h		;6c7d
l6c7fh:
	inc hl			;6c7f
	inc hl			;6c80
l6c81h:
	ld e,(hl)		;6c81
	inc hl			;6c82
	ld d,(hl)		;6c83
	ld a,(ix+008h)		;6c84
	add a,e			;6c87
	ld e,a			;6c88
	ld a,(ix+00ah)		;6c89
	add a,d			;6c8c
	ld d,a			;6c8d
	call sub_753ch		;6c8e
	ret c			;6c91
	ret z			;6c92
	ld a,001h		;6c93
	xor (ix+021h)		;6c95
	ld (ix+021h),a		;6c98
	ld l,(ix+021h)		;6c9b
	ld h,000h		;6c9e
	add hl,hl		;6ca0
	add hl,hl		;6ca1
	ld de,08cfbh		;6ca2
	add hl,de		;6ca5
	ld a,(hl)		;6ca6
	ld (ix+00bh),a		;6ca7
	inc hl			;6caa
	ld a,(hl)		;6cab
	ld (ix+00ch),a		;6cac
	inc hl			;6caf
	ld a,(hl)		;6cb0
	ld (ix+00dh),a		;6cb1
	inc hl			;6cb4
	ld a,(hl)		;6cb5
	ld (ix+00eh),a		;6cb6
	ret			;6cb9
	ld a,(ix+023h)		;6cba
	and a			;6cbd
	ret nz			;6cbe
	call sub_6ad2h		;6cbf
	ret nz			;6cc2
	call sub_6adfh		;6cc3
	ret nz			;6cc6
	ld (ix+018h),006h	;6cc7
	ld d,000h		;6ccb
	ld bc,002feh		;6ccd
	call 09f90h		;6cd0
	ld bc,00207h		;6cd3
	ld d,001h		;6cd6
	call 09f90h		;6cd8
	dec (ix+022h)		;6cdb
	ret nz			;6cde
	ld a,(0ca19h)		;6cdf
	rrca			;6ce2
	and 007h		;6ce3
	ld l,a			;6ce5
	ld h,000h		;6ce6
	add hl,hl		;6ce8
sub_6ce9h:
	ld de,08d0bh		;6ce9
	add hl,de		;6cec
	ld a,(hl)		;6ced
	ld (ix+017h),a		;6cee
	inc hl			;6cf1
	ld a,(hl)		;6cf2
	ld (ix+022h),a		;6cf3
	ld (ix+018h),001h	;6cf6
	ret			;6cfa
	add a,b			;6cfb
	rst 38h			;6cfc
	nop			;6cfd
	nop			;6cfe
	add a,b			;6cff
	nop			;6d00
	nop			;6d01
	nop			;6d02
	nop			;6d03
	nop			;6d04
	add a,b			;6d05
	nop			;6d06
	nop			;6d07
	nop			;6d08
	add a,b			;6d09
	rst 38h			;6d0a
	jr c,$+3		;6d0b
	jr nc,l6d10h		;6d0d
	inc l			;6d0f
l6d10h:
	ld (bc),a		;6d10
	jr z,l6d15h		;6d11
	jr nc,l6d17h		;6d13
l6d15h:
	inc l			;6d15
	inc bc			;6d16
l6d17h:
	jr nc,l6d1ch		;6d17
	inc l			;6d19
	inc b			;6d1a
	rst 38h			;6d1b
l6d1ch:
	nop			;6d1c
	rst 38h			;6d1d
	dec b			;6d1e
	rlca			;6d1f
	nop			;6d20
	rlca			;6d21
	dec b			;6d22
	nop			;6d23
	rlca			;6d24
	ld b,007h		;6d25
	nop			;6d27
	cp 006h			;6d28
	cp 0c9h			;6d2a
sub_6d2ch:
	ld de,08dbch		;6d2c
	call 07b65h		;6d2f
	ld a,(ix+001h)		;6d32
	dec a			;6d35
	jr z,l6d55h		;6d36
	dec a			;6d38
	jr z,l6d76h		;6d39
	call sub_6754h		;6d3b
	call 06796h		;6d3e
	ld (ix+020h),a		;6d41
	ld de,08da4h		;6d44
	ld l,a			;6d47
	ld h,000h		;6d48
	add hl,de		;6d4a
	ld a,(hl)		;6d4b
	ld (ix+017h),a		;6d4c
sub_6d4fh:
	inc (ix+018h)		;6d4f
	jp l6c1dh		;6d52
l6d55h:
	call sub_6ad2h		;6d55
	ret nz			;6d58
	ld a,(ix+021h)		;6d59
	inc (ix+021h)		;6d5c
	add a,008h		;6d5f
	ld (ix+006h),a		;6d61
	cp 00ch			;6d64
	ret nz			;6d66
	ld a,022h		;6d67
	call 04af0h		;6d69
	xor a			;6d6c
	ld (ix+006h),a		;6d6d
	ld (ix+021h),a		;6d70
	jp l6c1dh		;6d73
l6d76h:
	call sub_6adfh		;6d76
	ret nz			;6d79
	ld b,008h		;6d7a
	call sub_6ac2h		;6d7c
	jr z,l6d92h		;6d7f
	cp 004h			;6d81
	ret nz			;6d83
	ld l,(ix+020h)		;6d84
	ld h,000h		;6d87
	ld de,08dach		;6d89
	add hl,de		;6d8c
	ld a,(hl)		;6d8d
	ld (ix+018h),a		;6d8e
	ret			;6d91
l6d92h:
	ld l,(ix+020h)		;6d92
	ld h,000h		;6d95
	ld de,08db4h		;6d97
	add hl,de		;6d9a
	ld a,(hl)		;6d9b
	ld (ix+017h),a		;6d9c
	ld (ix+001h),001h	;6d9f
	ret			;6da3
	ex af,af'		;6da4
	jr $+10			;6da5
	ld bc,00101h		;6da7
	ld bc,00802h		;6daa
	ex af,af'		;6dad
	jr nz,l6dc0h		;6dae
	ex af,af'		;6db0
	djnz $+42		;6db1
	ld bc,02010h		;6db3
	djnz l6dd8h		;6db6
	ex af,af'		;6db8
	ex af,af'		;6db9
	inc b			;6dba
	ld (bc),a		;6dbb
	sub 08dh		;6dbc
	pop hl			;6dbe
	adc a,l			;6dbf
l6dc0h:
	pop af			;6dc0
	adc a,l			;6dc1
	ld bc,0118eh		;6dc2
	adc a,(hl)		;6dc5
	ld hl,0318eh		;6dc6
	adc a,(hl)		;6dc9
	ld b,c			;6dca
	adc a,(hl)		;6dcb
	ld d,c			;6dcc
	adc a,(hl)		;6dcd
	ld h,c			;6dce
	adc a,(hl)		;6dcf
	ld (hl),c		;6dd0
	adc a,(hl)		;6dd1
	ld h,c			;6dd2
	adc a,(hl)		;6dd3
	ld d,c			;6dd4
	adc a,(hl)		;6dd5
	dec bc			;6dd6
	nop			;6dd7
l6dd8h:
	nop			;6dd8
	ld bc,0fe00h		;6dd9
	inc c			;6ddc
	nop			;6ddd
	ld bc,0ff01h		;6dde
	djnz l6de3h		;6de1
l6de3h:
	nop			;6de3
	ld bc,0fe00h		;6de4
	inc c			;6de7
	nop			;6de8
	ld bc,0fe01h		;6de9
	inc b			;6dec
	ld bc,00201h		;6ded
	rst 38h			;6df0
	djnz l6df3h		;6df1
l6df3h:
	nop			;6df3
	ld bc,0fe00h		;6df4
	inc c			;6df7
	nop			;6df8
	ld bc,0fe01h		;6df9
	inc b			;6dfc
	ld bc,00301h		;6dfd
	rst 38h			;6e00
	djnz l6e03h		;6e01
l6e03h:
	nop			;6e03
	ld bc,0fe00h		;6e04
	inc c			;6e07
	nop			;6e08
	ld bc,0fe01h		;6e09
	inc b			;6e0c
	ld bc,00401h		;6e0d
	rst 38h			;6e10
	djnz l6e13h		;6e11
l6e13h:
	nop			;6e13
	ld bc,0fe00h		;6e14
	inc c			;6e17
	nop			;6e18
	ld bc,0fe01h		;6e19
	inc b			;6e1c
	ld bc,00501h		;6e1d
	rst 38h			;6e20
	djnz l6e23h		;6e21
l6e23h:
	nop			;6e23
	ld bc,0fe00h		;6e24
	inc c			;6e27
	nop			;6e28
	ld bc,0fe01h		;6e29
	dec b			;6e2c
	ld bc,00601h		;6e2d
	rst 38h			;6e30
	djnz l6e33h		;6e31
l6e33h:
	nop			;6e33
	ld bc,0fe00h		;6e34
	inc c			;6e37
	nop			;6e38
	ld bc,0fe01h		;6e39
	ld b,001h		;6e3c
	ld bc,0ff07h		;6e3e
	djnz l6e43h		;6e41
l6e43h:
	nop			;6e43
	ld bc,0fe00h		;6e44
	inc c			;6e47
	nop			;6e48
	ld bc,0fe01h		;6e49
	rlca			;6e4c
	ld bc,00801h		;6e4d
	rst 38h			;6e50
	djnz l6e53h		;6e51
l6e53h:
	nop			;6e53
	ld bc,0fe00h		;6e54
	inc c			;6e57
	nop			;6e58
	ld bc,0fe01h		;6e59
	inc b			;6e5c
	ld bc,00901h		;6e5d
	rst 38h			;6e60
	djnz l6e63h		;6e61
l6e63h:
	nop			;6e63
	ld bc,0fe00h		;6e64
	inc c			;6e67
	nop			;6e68
	ld bc,0fe01h		;6e69
	inc b			;6e6c
	ld bc,00a01h		;6e6d
	rst 38h			;6e70
	djnz l6e73h		;6e71
l6e73h:
	nop			;6e73
	ld bc,0fe00h		;6e74
	inc c			;6e77
	nop			;6e78
	ld bc,0fe01h		;6e79
	inc b			;6e7c
	ld bc,00b01h		;6e7d
	rst 38h			;6e80
	ld a,(ix+001h)		;6e81
	cp 004h			;6e84
	jp nc,04ae0h		;6e86
	call 0461ah		;6e89
	and e			;6e8c
	adc a,(hl)		;6e8d
	res 1,(hl)		;6e8e
	ld hl,0388fh		;6e90
	adc a,a			;6e93
	call 06c4bh		;6e94
	call sub_6754h		;6e97
	ld (ix+017h),03ch	;6e9a
	ld (ix+008h),00ah	;6e9e
	ret			;6ea2
	call 08ebah		;6ea3
	dec (ix+017h)		;6ea6
	ret nz			;6ea9
	inc (ix+001h)		;6eaa
	ld (ix+018h),02dh	;6ead
	ld (ix+017h),001h	;6eb1
	ld (ix+002h),0ffh	;6eb5
	ret			;6eb9
	ld a,(ix+009h)		;6eba
	or a			;6ebd
	ret nz			;6ebe
	ld b,(ix+00ah)		;6ebf
	ld a,01ah		;6ec2
	cp b			;6ec4
	ld a,042h		;6ec5
	jp z,04af5h		;6ec7
	ret			;6eca
	call 08ebah		;6ecb
	call 08f5fh		;6ece
	call 08ef5h		;6ed1
	dec (ix+017h)		;6ed4
	ret nz			;6ed7
	call 08f42h		;6ed8
	ld a,(ix+018h)		;6edb
	sub 004h		;6ede
	jr nc,l6ee4h		;6ee0
	ld a,02dh		;6ee2
l6ee4h:
	inc a			;6ee4
	ld (ix+018h),a		;6ee5
	ld d,a			;6ee8
	ld a,(0ca19h)		;6ee9
	neg			;6eec
	add a,01ah		;6eee
	add a,d			;6ef0
	ld (ix+017h),a		;6ef1
	ret			;6ef4
	ld a,(ix+002h)		;6ef5
	ld b,(ix+004h)		;6ef8
	sub b			;6efb
	ld (ix+002h),a		;6efc
	ld (ix+004h),000h	;6eff
	push af			;6f03
	ld a,b			;6f04
	or a			;6f05
	ld a,025h		;6f06
	call nz,04af0h		;6f08
	pop af			;6f0b
	ret nc			;6f0c
	ld (ix+015h),06fh	;6f0d
	inc (ix+001h)		;6f11
	ld (ix+017h),028h	;6f14
	call sub_7058h		;6f18
	ld a,001h		;6f1b
	ld (0ce76h),a		;6f1d
	ret			;6f20
	call 08f5fh		;6f21
	dec (ix+017h)		;6f24
	ret nz			;6f27
	ld a,052h		;6f28
	call 04aebh		;6f2a
	call 04d2bh		;6f2d
	ld (ix+017h),014h	;6f30
	inc (ix+001h)		;6f34
	ret			;6f37
	dec (ix+017h)		;6f38
	ret nz			;6f3b
	ld a,001h		;6f3c
	ld (0ca0fh),a		;6f3e
	ret			;6f41
	push ix			;6f42
	push ix			;6f44
	ld a,023h		;6f46
	call sub_69a3h		;6f48
	pop iy			;6f4b
	jp c,08f5ch		;6f4d
	ld a,(iy+008h)		;6f50
	ld (ix+008h),a		;6f53
	ld a,(iy+00ah)		;6f56
	ld (ix+00ah),a		;6f59
	pop ix			;6f5c
	ret			;6f5e
	ld a,(ix+021h)		;6f5f
	inc a			;6f62
	and 00fh		;6f63
	ld (ix+021h),a		;6f65
	ld de,08f74h		;6f68
	call 04624h		;6f6b
	ex de,hl		;6f6e
	ld a,00bh		;6f6f
	jp 04776h		;6f71
	ld d,(hl)		;6f74
	rlca			;6f75
	ld d,(hl)		;6f76
	rlca			;6f77
	ld b,l			;6f78
	rlca			;6f79
	inc (hl)		;6f7a
	rlca			;6f7b
	inc hl			;6f7c
	rlca			;6f7d
	ld (de),a		;6f7e
	ld b,001h		;6f7f
	dec b			;6f81
	nop			;6f82
	inc b			;6f83
	nop			;6f84
	inc bc			;6f85
	nop			;6f86
	inc b			;6f87
	ld bc,01205h		;6f88
	ld b,023h		;6f8b
	rlca			;6f8d
	inc (hl)		;6f8e
	rlca			;6f8f
	ld b,l			;6f90
	rlca			;6f91
	ld d,(hl)		;6f92
	rlca			;6f93
	ld a,(ix+001h)		;6f94
	cp 004h			;6f97
	jp nc,04ae0h		;6f99
	call 0461ah		;6f9c
	and a			;6f9f
	adc a,a			;6fa0
	cp b			;6fa1
	adc a,a			;6fa2
	call 0008fh		;6fa3
	sub b			;6fa6
	call 06796h		;6fa7
	push af			;6faa
	call 06796h		;6fab
	pop bc			;6fae
	ld d,a			;6faf
	ld e,b			;6fb0
	call 09001h		;6fb1
	inc (ix+001h)		;6fb4
	ret			;6fb7
	dec (ix+017h)		;6fb8
	ret nz			;6fbb
	inc (ix+001h)		;6fbc
	ld (ix+017h),00fh	;6fbf
	ld a,(ix+008h)		;6fc3
	cp 00ch			;6fc6
	ret c			;6fc8
	inc (ix+021h)		;6fc9
	ret			;6fcc
	dec (ix+017h)		;6fcd
	call z,07143h		;6fd0
	bit 0,(ix+021h)		;6fd3
	ld hl,00080h		;6fd7
	call nz,04612h		;6fda
	ld de,00000h		;6fdd
	call sub_6d4fh		;6fe0
	ld a,(0ca48h)		;6fe3
	sub (ix+008h)		;6fe6
	bit 0,(ix+021h)		;6fe9
	call z,08ffeh		;6fed
	ret c			;6ff0
	inc (ix+001h)		;6ff1
	ld iy,0ca40h		;6ff4
	ld a,014h		;6ff8
	call sub_6b6ch		;6ffa
	ret			;6ffd
	ccf			;6ffe
	ret			;6fff
	ret			;7000
	ld (ix+017h),01ah	;7001
	ld a,d			;7005
	sub (ix+00ah)		;7006
	ld l,a			;7009
	rlca			;700a
	sbc a,a			;700b
	ld h,a			;700c
	ld b,h			;700d
	ld c,l			;700e
	add hl,hl		;700f
	add hl,hl		;7010
	add hl,hl		;7011
	ex de,hl		;7012
	ld a,l			;7013
	sub (ix+008h)		;7014
	ld l,a			;7017
	rlca			;7018
	sbc a,a			;7019
	ld h,a			;701a
	ld b,h			;701b
	ld c,l			;701c
	add hl,hl		;701d
	add hl,bc		;701e
	add hl,hl		;701f
	add hl,hl		;7020
	jp 06bebh		;7021
	call 09d1eh		;7024
	ld (iy+000h),045h	;7027
	ld (iy+013h),004h	;702b
	ld (iy+014h),084h	;702f
	ld (iy+016h),000h	;7033
	ld (iy+015h),0b9h	;7037
	ret			;703b
	jp 09d60h		;703c
	ld a,030h		;703f
	call 04af5h		;7041
	call sub_6754h		;7044
	ld (ix+00ah),01fh	;7047
	ld de,00000h		;704b
	call 0915dh		;704e
	jp 06e98h		;7051
	ld a,(ix+001h)		;7054
	dec a			;7057
sub_7058h:
	jr z,l7083h		;7058
	dec a			;705a
	jr z,l70a6h		;705b
	jp p,090bfh		;705d
	ld a,(0c0d4h)		;7060
	or a			;7063
	jr nz,l706ah		;7064
	dec (ix+017h)		;7066
	ret nz			;7069
l706ah:
	ld (ix+017h),004h	;706a
	ld (ix+012h),001h	;706e
	inc (ix+001h)		;7072
	ld a,(ix+003h)		;7075
	or a			;7078
	ld a,020h		;7079
	jr z,l707fh		;707b
	ld a,008h		;707d
l707fh:
	ld (ix+002h),a		;707f
	ret			;7082
l7083h:
	call 0909eh		;7083
	call 06c29h		;7086
	dec (ix+017h)		;7089
	ret nz			;708c
	inc (ix+001h)		;708d
	ld a,(ix+003h)		;7090
	or a			;7093
	ld a,031h		;7094
	jp z,04af5h		;7096
	ld a,02ch		;7099
	jp 04af5h		;709b
	bit 0,(ix+017h)		;709e
	ret nz			;70a2
	jp 090cfh		;70a3
l70a6h:
	call 06c29h		;70a6
	ld a,(ix+012h)		;70a9
	add a,004h		;70ac
	ld (ix+012h),a		;70ae
	call 090cfh		;70b1
	ld a,(ix+012h)		;70b4
	cp (ix+002h)		;70b7
	ret c			;70ba
	inc (ix+001h)		;70bb
	ret			;70be
	call 06c29h		;70bf
	ld a,(ix+00ah)		;70c2
	sub 004h		;70c5
	cp 020h			;70c7
	jp nc,06each		;70c9
	ld (ix+00ah),a		;70cc
	ld a,(ix+003h)		;70cf
	or a			;70d2
	jr nz,l70d9h		;70d3
	ld (0ce73h),ix		;70d5
l70d9h:
	ld a,(ix+012h)		;70d9
	ld b,(ix+00ah)		;70dc
	cp b			;70df
	jr c,l70e3h		;70e0
	ld a,b			;70e2
l70e3h:
	inc a			;70e3
	ld (ix+011h),a		;70e4
	ld d,(ix+00ah)		;70e7
	ld e,(ix+008h)		;70ea
	call 07b06h		;70ed
	ret nc			;70f0
	ex de,hl		;70f1
	ld b,(ix+011h)		;70f2
	ld a,b			;70f5
	or a			;70f6
	ret z			;70f7
	ld a,(ix+003h)		;70f8
	or a			;70fb
	jr nz,l713ah		;70fc
	ld a,(hl)		;70fe
	exx			;70ff
	ld h,0deh		;7100
	ld l,a			;7102
	ld a,(hl)		;7103
	exx			;7104
	cp 003h			;7105
	jp z,06each		;7107
	ld c,001h		;710a
	call 0911eh		;710c
l710fh:
	ld a,(hl)		;710f
	exx			;7110
	ld h,0deh		;7111
	ld l,a			;7113
	ld a,(hl)		;7114
	exx			;7115
	cp 003h			;7116
	ret z			;7118
	ld (hl),d		;7119
	dec hl			;711a
	djnz l710fh		;711b
	ret			;711d
	ld a,(0c0d4h)		;711e
	or a			;7121
	ld d,0cbh		;7122
	ret z			;7124
	ld a,(ix+00fh)		;7125
	ld d,0cch		;7128
	cp 007h			;712a
	ret z			;712c
	cp 000h			;712d
	ret z			;712f
	inc d			;7130
	cp 006h			;7131
	ret z			;7133
	cp 001h			;7134
	ret z			;7136
	ld d,0cbh		;7137
	ret			;7139
l713ah:
	ld a,(ix+018h)		;713a
	inc a			;713d
	ld (ix+018h),a		;713e
	rrca			;7141
	ld de,0cccdh		;7142
	jr c,l714ah		;7145
	ld de,0cdcch		;7147
l714ah:
	ld a,(hl)		;714a
	cp 003h			;714b
	ret z			;714d
	ld (hl),d		;714e
	dec hl			;714f
	dec b			;7150
	ret z			;7151
	ld (hl),e		;7152
	dec hl			;7153
	djnz l714ah		;7154
	ret			;7156
	ld a,001h		;7157
	ld b,001h		;7159
	jr l7161h		;715b
	xor a			;715d
	ld h,a			;715e
	ld b,008h		;715f
l7161h:
	push af			;7161
	push hl			;7162
	push bc			;7163
	push ix			;7164
	push ix			;7166
	push de			;7168
	push af			;7169
	push hl			;716a
	ld a,046h		;716b
	call l70d9h+1		;716d
	pop hl			;7170
	pop bc			;7171
	pop de			;7172
	pop iy			;7173
	jp c,091a2h		;7175
	ld (ix+00fh),h		;7178
	ld (ix+003h),b		;717b
	ld b,(iy+008h)		;717e
	ld c,(iy+007h)		;7181
	ld l,000h		;7184
sub_7186h:
	ld h,e			;7186
	add hl,bc		;7187
	ld (ix+008h),h		;7188
	ld (ix+007h),l		;718b
	ld b,(iy+00ah)		;718e
	ld c,(iy+009h)		;7191
	ld h,d			;7194
	ld l,000h		;7195
	add hl,bc		;7197
	ld (ix+00ah),h		;7198
	ld (ix+009h),l		;719b
	ld (ix+017h),014h	;719e
	pop ix			;71a2
	pop bc			;71a4
	pop hl			;71a5
	pop af			;71a6
	inc e			;71a7
	inc h			;71a8
	djnz l7161h		;71a9
	ret			;71ab
	ld a,(ix+008h)		;71ac
	sub 0f0h		;71af
	cp 008h			;71b1
	jp c,06e98h		;71b3
	ld a,(ix+001h)		;71b6
	cp 004h			;71b9
	jp nc,04ae0h		;71bb
	call 0461ah		;71be
	ld e,l			;71c1
	sub d			;71c2
	ld e,l			;71c3
	sub d			;71c4
	ld d,e			;71c5
	sub d			;71c6
	ld hl,0dd92h		;71c7
	ld a,(hl)		;71ca
	dec d			;71cb
	and 004h		;71cc
	or 022h			;71ce
	ld (ix+015h),a		;71d0
	call sub_6754h		;71d3
	ld a,(ix+008h)		;71d6
	add a,003h		;71d9
	ld (ix+008h),a		;71db
	call 06796h		;71de
	ld (ix+006h),a		;71e1
	res 7,(ix+006h)		;71e4
	and 007h		;71e8
	call 09226h		;71ea
	ld a,c			;71ed
	and 007h		;71ee
	add a,a			;71f0
	add a,a			;71f1
	add a,a			;71f2
	add a,a			;71f3
	add a,a			;71f4
	ld (ix+026h),a		;71f5
	rl c			;71f8
	sbc a,a			;71fa
	add a,a			;71fb
	inc a			;71fc
	add a,a			;71fd
	ld (ix+012h),a		;71fe
	ld b,006h		;7201
	ld (ix+017h),000h	;7203
l7207h:
	call 0922dh		;7207
	jr c,l7219h		;720a
	ld (ix+017h),001h	;720c
	ld (ix+018h),000h	;7210
	ld (ix+001h),002h	;7214
	ret			;7218
l7219h:
	ld (ix+024h),b		;7219
	ld (ix+001h),003h	;721c
	ret			;7220
	ld b,(ix+024h)		;7221
	jr l7207h		;7224
	ld c,085h		;7226
	dec a			;7228
	ret z			;7229
	ld c,001h		;722a
	ret			;722c
l722dh:
	push bc			;722d
	call 0923ah		;722e
	jr c,l7238h		;7231
	pop bc			;7233
	djnz l722dh		;7234
	or a			;7236
	ret			;7237
l7238h:
	pop bc			;7238
	ret			;7239
	call 0682ah		;723a
	ret c			;723d
	ld h,(ix+008h)		;723e
	ld (iy+008h),h		;7241
	ld (iy+00ah),01ch	;7244
	ld a,(ix+003h)		;7248
	ld (iy+003h),a		;724b
	inc a			;724e
	ld (ix+003h),a		;724f
	ret			;7252
	ld a,(ix+017h)		;7253
	add a,(ix+012h)		;7256
	ld (ix+017h),a		;7259
	ret			;725c
	call 068deh		;725d
	jp c,06e98h		;7260
	ld a,(ix+003h)		;7263
	ld c,a			;7266
	add a,a			;7267
	ld hl,092d8h		;7268
	ld e,a			;726b
	ld d,000h		;726c
	add hl,de		;726e
	ld a,(iy+017h)		;726f
	add a,(hl)		;7272
	ld c,a			;7273
	sub (iy+026h)		;7274
	add a,040h		;7277
	cp 080h			;7279
	ld a,c			;727b
	jr c,l7280h		;727c
	sub 080h		;727e
l7280h:
	inc hl			;7280
	ld e,(hl)		;7281
	push de			;7282
	push af			;7283
	push de			;7284
	call sub_74edh+2	;7285
	pop de			;7288
	call 092b9h		;7289
	ld e,(iy+007h)		;728c
	ld d,(iy+008h)		;728f
	add hl,de		;7292
	ld (ix+007h),l		;7293
	ld (ix+008h),h		;7296
	pop af			;7299
	call sub_74edh		;729a
	pop de			;729d
	call 092b9h		;729e
	ld e,(iy+009h)		;72a1
	ld d,(iy+00ah)		;72a4
	add hl,de		;72a7
	ld (ix+009h),l		;72a8
	ld (ix+00ah),h		;72ab
	ld a,(ix+008h)		;72ae
	cp 018h			;72b1
	ret c			;72b3
	ld (ix+008h),01dh	;72b4
	ret			;72b8
	bit 7,h			;72b9
	jr nz,l72ceh		;72bb
	ld h,l			;72bd
	call 072b0h		;72be
	srl h			;72c1
	rr l			;72c3
	srl h			;72c5
	rr l			;72c7
	srl h			;72c9
	rr l			;72cb
	ret			;72cd
l72ceh:
	ld a,l			;72ce
	neg			;72cf
	ld h,a			;72d1
	call 092beh		;72d2
	jp 04612h		;72d5
	nop			;72d8
	jr z,l72dbh		;72d9
l72dbh:
	jr c,l72ddh		;72db
l72ddh:
	ld c,b			;72dd
	ld b,b			;72de
	jr z,l7321h		;72df
	jr c,$+66		;72e1
	ld c,b			;72e3
	ld a,(0ca02h)		;72e4
	and 001h		;72e7
	ld (ix+005h),a		;72e9
	ld a,(ix+001h)		;72ec
	dec a			;72ef
	jr z,l7324h		;72f0
	dec a			;72f2
	jr z,l734eh		;72f3
	call 06796h		;72f5
	ld b,a			;72f8
	and 07fh		;72f9
	ld (ix+008h),a		;72fb
	ld a,b			;72fe
	rlca			;72ff
sub_7300h:
	ld hl,00040h		;7300
	jr nc,l730bh		;7303
	inc (ix+021h)		;7305
	ld hl,0ffc0h		;7308
l730bh:
	call sub_6bf3h		;730b
	call 06796h		;730e
	ld (ix+00ah),a		;7311
	ld a,040h		;7314
	call 06adbh		;7316
	ld (ix+017h),001h	;7319
	ld (ix+03dh),001h	;731d
l7321h:
	jp l6c1dh		;7321
l7324h:
	ld a,(ix+021h)		;7324
	ld de,00100h		;7327
	and a			;732a
	jr nz,l7330h		;732b
	ld de,00102h		;732d
l7330h:
	call 0936eh		;7330
	ret z			;7333
	ld l,(ix+00bh)		;7334
	ld h,(ix+00ch)		;7337
	ld (ix+022h),l		;733a
	ld (ix+023h),h		;733d
	call 06be6h		;7340
	call 04678h		;7343
	and 00fh		;7346
	ld (ix+017h),a		;7348
	jp l6c1dh		;734b
l734eh:
	call sub_6ad2h		;734e
	ret nz			;7351
	ld l,(ix+022h)		;7352
	ld h,(ix+023h)		;7355
	ld (ix+00bh),l		;7358
	ld (ix+00ch),h		;735b
	call l6b42h+1		;735e
	ld a,001h		;7361
	xor (ix+021h)		;7363
	ld (ix+021h),a		;7366
	ld (ix+001h),001h	;7369
	ret			;736d
	ld a,e			;736e
	add a,(ix+008h)		;736f
	ld e,a			;7372
	ld a,d			;7373
	add a,(ix+00ah)		;7374
	ld d,a			;7377
	jp sub_753ch		;7378
	ld a,(0ca02h)		;737b
	xor (ix+02dh)		;737e
	and 003h		;7381
	jr z,l7387h		;7383
	ld a,0ffh		;7385
l7387h:
	inc a			;7387
	ld (ix+03dh),a		;7388
	call 06c26h		;738b
	ld a,(ix+001h)		;738e
	call 0461ah		;7391
	sbc a,d			;7394
	sub e			;7395
	and h			;7396
	sub e			;7397
	cp (hl)			;7398
	sub e			;7399
	call sub_6754h		;739a
	inc (ix+001h)		;739d
	ld (ix+017h),014h	;73a0
	dec (ix+017h)		;73a4
	ret nz			;73a7
	inc (ix+001h)		;73a8
	ld hl,00070h		;73ab
	call sub_6bf3h		;73ae
	ld hl,00011h		;73b1
	ld de,00016h		;73b4
	call sub_6c04h		;73b7
	call 093f9h		;73ba
	ret			;73bd
	ld a,(0ca04h)		;73be
	or a			;73c1
	jr z,l73dbh		;73c2
	ld a,(0ca02h)		;73c4
	xor (ix+02dh)		;73c7
	inc (ix+00ah)		;73ca
	inc (ix+008h)		;73cd
	and 0cfh		;73d0
	call z,07143h		;73d2
	dec (ix+00ah)		;73d5
	dec (ix+008h)		;73d8
l73dbh:
	ld a,(ix+005h)		;73db
	xor 001h		;73de
	ld (ix+005h),a		;73e0
	ld hl,00100h		;73e3
	ld de,00100h		;73e6
	call sub_759ah		;73e9
	call 093feh		;73ec
	ld hl,000a0h		;73ef
	ld de,000c0h		;73f2
	call 06caeh		;73f5
	ret			;73f8
	ld (ix+02ah),0ffh	;73f9
	ret			;73fd
	push af			;73fe
	call 0943eh		;73ff
	pop af			;7402
	jr nc,l7420h		;7403
	jr nz,l7420h		;7405
	ld a,(ix+00ah)		;7407
	ld (ix+028h),a		;740a
	ld a,(ix+009h)		;740d
	ld (ix+029h),a		;7410
	ld a,(ix+008h)		;7413
	ld (ix+02ah),a		;7416
	ld a,(ix+007h)		;7419
	ld (ix+02bh),a		;741c
	ret			;741f
l7420h:
	ld a,(ix+02ah)		;7420
	inc a			;7423
	ret z			;7424
	ld a,(ix+028h)		;7425
	ld (ix+00ah),a		;7428
	ld a,(ix+029h)		;742b
	ld (ix+009h),a		;742e
	ld a,(ix+02ah)		;7431
	ld (ix+008h),a		;7434
	ld a,(ix+02bh)		;7437
	ld (ix+007h),a		;743a
	ret			;743d
	ld de,(0ca14h)		;743e
	ld h,(ix+028h)		;7442
	ld l,(ix+029h)		;7445
	add hl,de		;7448
	ld (ix+028h),h		;7449
	ld (ix+029h),l		;744c
	ld de,(0ca12h)		;744f
	ld h,(ix+02ah)		;7453
	ld l,(ix+02bh)		;7456
	add hl,de		;7459
	ld (ix+02ah),h		;745a
	ld (ix+02bh),l		;745d
	ret			;7460
	call 06796h		;7461
	ld d,a			;7464
	and 07fh		;7465
	ld (ix+008h),a		;7467
	call 06796h		;746a
	ld (ix+00ah),a		;746d
	jp 082d3h		;7470
	jp 082cah		;7473
	ret			;7476
	ld a,(ix+001h)		;7477
	dec a			;747a
	jr z,l74bch		;747b
	dec a			;747d
	jr z,sub_74edh		;747e
	call 04678h		;7480
	ld b,a			;7483
	and 007h		;7484
	ld l,a			;7486
	ld h,000h		;7487
	add hl,hl		;7489
	ld de,094ach		;748a
	add hl,de		;748d
	ld a,(hl)		;748e
	ld (ix+008h),a		;748f
	inc hl			;7492
	ld a,b			;7493
	rrca			;7494
	ld a,(hl)		;7495
	jr c,l7499h		;7496
	inc a			;7498
l7499h:
	ld (ix+00ah),a		;7499
	ld a,b			;749c
	rrca			;749d
	rrca			;749e
	rrca			;749f
	and 003h		;74a0
	inc a			;74a2
	ld (ix+020h),a		;74a3
	ld (ix+017h),a		;74a6
	jp l6c1dh		;74a9
	inc b			;74ac
	ld bc,00502h		;74ad
	ld (bc),a		;74b0
	ex af,af'		;74b1
	ld (bc),a		;74b2
	dec bc			;74b3
	inc b			;74b4
	rrca			;74b5
	ex af,af'		;74b6
	dec d			;74b7
	inc b			;74b8
	dec c			;74b9
	ld b,011h		;74ba
l74bch:
	call sub_6ad2h		;74bc
	ret nz			;74bf
	ld a,(ix+020h)		;74c0
	ld (ix+017h),a		;74c3
	ld b,006h		;74c6
	call sub_6ab8h		;74c8
	ret nz			;74cb
	ld (ix+005h),006h	;74cc
	ld hl,00040h		;74d0
	call sub_6bf3h		;74d3
	ld hl,00010h		;74d6
	call 06c0ch		;74d9
	ld hl,0ce51h		;74dc
	dec (hl)		;74df
	set 7,(ix+014h)		;74e0
	inc (ix+008h)		;74e4
	inc (ix+008h)		;74e7
	jp l6c1dh		;74ea
sub_74edh:
	call 06a9ah		;74ed
	ld a,(ix+005h)		;74f0
	cp 007h			;74f3
	ret z			;74f5
	inc (ix+005h)		;74f6
	ret			;74f9
	call sub_6754h		;74fa
	ld a,(0ca10h)		;74fd
	cp 005h			;7500
	jr z,l7507h		;7502
	inc (ix+005h)		;7504
l7507h:
	ret			;7507
	ld a,(ix+001h)		;7508
	or a			;750b
	jr nz,l7517h		;750c
	inc (ix+001h)		;750e
	call sub_6ce9h		;7511
	jp 06cf5h		;7514
l7517h:
	call 0953ch		;7517
	ld a,(ix+008h)		;751a
	cp 018h			;751d
	jp nc,06e98h		;751f
	ld a,(ix+00ah)		;7522
	cp 024h			;7525
	jp nc,06e98h		;7527
	ld a,(ix+004h)		;752a
	or a			;752d
	ld a,023h		;752e
	call nz,04af5h		;7530
	call l7caah+2		;7533
	jp nc,07747h		;7536
	jp l7cc3h		;7539
sub_753ch:
	ld a,(ix+003h)		;753c
	and 003h		;753f
	ld (ix+003h),a		;7541
	call sub_6d2ch		;7544
	ld h,(ix+028h)		;7547
	ld l,(ix+029h)		;754a
	ld d,(ix+00ah)		;754d
	ld e,(ix+009h)		;7550
	ld a,(0ca02h)		;7553
	and 007h		;7556
	jr nz,l755eh		;7558
	ld bc,00040h		;755a
sub_755dh:
	add hl,bc		;755d
l755eh:
	call 095a4h		;755e
	ld (ix+012h),h		;7561
	ld (ix+011h),l		;7564
	bit 7,h			;7567
	call nz,04612h		;7569
sub_756ch:
	ld bc,00060h		;756c
	or a			;756f
	sbc hl,bc		;7570
	jr c,l7578h		;7572
	set 2,(ix+003h)		;7574
l7578h:
	ld h,(ix+02ah)		;7578
	ld l,(ix+02bh)		;757b
	ld d,(ix+008h)		;757e
	ld e,(ix+007h)		;7581
	call 095a4h		;7584
	ld (ix+010h),h		;7587
	ld (ix+00fh),l		;758a
	bit 7,h			;758d
	call nz,04612h		;758f
	ld bc,00060h		;7592
sub_7595h:
	or a			;7595
	sbc hl,bc		;7596
	jr c,l759eh		;7598
sub_759ah:
	set 3,(ix+003h)		;759a
l759eh:
	call 095bch		;759e
	jp 06a9ah		;75a1
	or a			;75a4
	sbc hl,de		;75a5
	sra h			;75a7
	rr l			;75a9
	sra h			;75ab
	rr l			;75ad
	sra h			;75af
	rr l			;75b1
	sra h			;75b3
	rr l			;75b5
	sra h			;75b7
	rr l			;75b9
	ret			;75bb
	ld h,(ix+00eh)		;75bc
	ld l,(ix+00dh)		;75bf
	sra h			;75c2
	rr l			;75c4
	ld (ix+00eh),h		;75c6
	ld (ix+00dh),l		;75c9
	ld h,(ix+00ch)		;75cc
	ld l,(ix+00bh)		;75cf
	sra h			;75d2
	rr l			;75d4
	ld (ix+00ch),h		;75d6
	ld (ix+00bh),l		;75d9
	ret			;75dc
	ld a,(iy+000h)		;75dd
	cp 004h			;75e0
	jr z,l7609h		;75e2
	cp 007h			;75e4
	jr z,l7609h		;75e6
	cp 006h			;75e8
	jr z,l75efh		;75ea
	cp 005h			;75ec
	ret nz			;75ee
l75efh:
	ld a,(iy+012h)		;75ef
	cp 004h			;75f2
	ret nc			;75f4
	add a,a			;75f5
	add a,a			;75f6
	ld e,a			;75f7
	ld d,000h		;75f8
	ld hl,09637h		;75fa
	add hl,de		;75fd
	ld e,(hl)		;75fe
	inc hl			;75ff
	ld d,(hl)		;7600
	inc hl			;7601
	ld c,(hl)		;7602
	inc hl			;7603
	ld b,(hl)		;7604
	call 0961dh		;7605
	ret			;7608
l7609h:
	ld d,(iy+00eh)		;7609
	ld e,(iy+00dh)		;760c
	sra d			;760f
	rr e			;7611
	ld b,(iy+00ch)		;7613
	ld c,(iy+00bh)		;7616
	sra b			;7619
	rr c			;761b
	ld a,(ix+003h)		;761d
	and 005h		;7620
	jr nz,l762ah		;7622
	ld (ix+00ch),b		;7624
	ld (ix+00bh),c		;7627
l762ah:
	ld a,(ix+003h)		;762a
	and 00ah		;762d
	ret nz			;762f
	ld (ix+00eh),d		;7630
	ld (ix+00dh),e		;7633
	ret			;7636
	ld b,b			;7637
	nop			;7638
	nop			;7639
	nop			;763a
	nop			;763b
	nop			;763c
	ld b,b			;763d
	nop			;763e
	ret nz			;763f
	rst 38h			;7640
	nop			;7641
	nop			;7642
	nop			;7643
	nop			;7644
	ret nz			;7645
	rst 38h			;7646
	call 09480h		;7647
	call 06796h		;764a
	ld (ix+00ah),a		;764d
	ld (ix+008h),002h	;7650
	ret			;7654
	jp 09477h		;7655
	call 08341h		;7658
	ld a,(ix+017h)		;765b
	and a			;765e
	jr z,l7666h		;765f
	dec a			;7661
	ld (ix+017h),a		;7662
	ret			;7665
l7666h:
	ld a,(ix+020h)		;7666
	and a			;7669
	ld bc,00000h		;766a
	ld hl,09698h		;766d
	jr z,l7678h		;7670
	ld bc,00200h		;7672
	ld hl,0969ch		;7675
l7678h:
	call sub_7300h		;7678
l767bh:
	ld l,(ix+023h)		;767b
	ld h,000h		;767e
	ld de,09691h		;7680
	add hl,de		;7683
	ld a,(hl)		;7684
	and a			;7685
	jr nz,l768ch		;7686
	ex de,hl		;7688
	ld (ix+023h),a		;7689
l768ch:
	ld a,(hl)		;768c
	ld (ix+017h),a		;768d
	ret			;7690
	jr l769bh		;7691
	jr z,l769dh		;7693
	jr l76cfh		;7695
	nop			;7697
	ld bc,00302h		;7698
l769bh:
	rst 38h			;769b
	dec c			;769c
l769dh:
	ld c,00fh		;769d
	rst 38h			;769f
	call 08347h		;76a0
	inc (ix+03dh)		;76a3
	ld (ix+03eh),000h	;76a6
	jr l767bh		;76aa
	call 06e91h		;76ac
	ld de,097c5h		;76af
	call 07b65h		;76b2
	ld a,(ix+001h)		;76b5
	dec a			;76b8
	jr z,l76d8h		;76b9
	dec a			;76bb
	jr z,l76ffh		;76bc
	dec a			;76be
	jr z,l7711h		;76bf
	ld a,(0ca19h)		;76c1
	cp 005h			;76c4
	jr c,l76cch		;76c6
	ld (ix+016h),040h	;76c8
l76cch:
	call sub_6754h		;76cc
l76cfh:
	call 0976bh		;76cf
	call 0972dh		;76d2
	jp l6c1dh		;76d5
l76d8h:
	call 0971bh		;76d8
	ld a,(ix+006h)		;76db
	dec a			;76de
	jr nz,l76eah		;76df
	set 7,(ix+014h)		;76e1
	call 07c63h		;76e5
	jr c,l76f0h		;76e8
l76eah:
	res 7,(ix+014h)		;76ea
	jr l7760h		;76ee
l76f0h:
	call 07cbeh		;76f0
	ld a,001h		;76f3
	ld (0ce76h),a		;76f5
	ld (ix+006h),003h	;76f8
	jp l6c1dh		;76fc
l76ffh:
	ld b,008h		;76ff
	call sub_6ac2h		;7701
	cp 007h			;7704
	ret nz			;7706
	call sub_7058h		;7707
	ld (ix+017h),020h	;770a
	jp l6c1dh		;770e
l7711h:
	call sub_6ad2h		;7711
	ret nz			;7714
	ld a,001h		;7715
	ld (0ca0fh),a		;7717
	ret			;771a
	call sub_6ad2h		;771b
	ret nz			;771e
	ld a,(0ca02h)		;771f
	and 003h		;7722
	ret nz			;7724
	dec (ix+026h)		;7725
	jr z,l772dh		;7728
	jp 0b6c9h		;772a
l772dh:
	ld l,(ix+027h)		;772d
	inc (ix+027h)		;7730
	ld h,000h		;7733
	add hl,hl		;7735
	ld de,09755h		;7736
	add hl,de		;7739
	ld a,(hl)		;773a
	inc a			;773b
	jr nz,l7742h		;773c
	ld (ix+027h),a		;773e
	ex de,hl		;7741
l7742h:
	ld a,(hl)		;7742
	ld b,a			;7743
	and 07fh		;7744
	ld (ix+026h),a		;7746
	ld a,b			;7749
	and 080h		;774a
	ld (ix+025h),a		;774c
	inc hl			;774f
	ld a,(hl)		;7750
	ld (ix+017h),a		;7751
	ret			;7754
	ld b,038h		;7755
	add a,a			;7757
	ld c,h			;7758
	ex af,af'		;7759
	ld c,(hl)		;775a
	add a,l			;775b
	inc a			;775c
	add a,l			;775d
	jr z,$+1		;775e
l7760h:
	ld a,(ix+020h)		;7760
	and a			;7763
	call z,0976bh		;7764
	dec (ix+020h)		;7767
	ret			;776a
	ld l,(ix+021h)		;776b
	ld h,000h		;776e
	add hl,hl		;7770
	ld a,(0ca19h)		;7771
	ld de,0979bh		;7774
	cp 004h			;7777
	jr c,l777eh		;7779
	ld de,097b0h		;777b
l777eh:
	add hl,de		;777e
	ld a,(hl)		;777f
	and a			;7780
	jr nz,l7787h		;7781
	ld (ix+021h),a		;7783
	ex de,hl		;7786
l7787h:
	inc (ix+021h)		;7787
	ld a,(hl)		;778a
	ld (ix+020h),a		;778b
	inc hl			;778e
	ld a,(hl)		;778f
	ld (ix+006h),a		;7790
	dec a			;7793
	ret nz			;7794
	call sub_7ca7h		;7795
	jp 09c60h		;7798
	jr nz,l779fh		;779b
	inc b			;779d
	nop			;779e
l779fh:
	jr z,l77a2h		;779f
	inc b			;77a1
l77a2h:
	nop			;77a2
	jr nc,l77a7h		;77a3
	ex af,af'		;77a5
	nop			;77a6
l77a7h:
	jr l77abh		;77a7
	inc b			;77a9
	nop			;77aa
l77abh:
	ld (00401h),hl		;77ab
	nop			;77ae
	nop			;77af
	jr nz,l77b4h		;77b0
	inc b			;77b2
	nop			;77b3
l77b4h:
	ex af,af'		;77b4
	ld bc,00004h		;77b5
	jr nc,l77bch		;77b8
	ex af,af'		;77ba
	nop			;77bb
l77bch:
	jr l77c0h		;77bc
	inc b			;77be
	nop			;77bf
l77c0h:
	jr nz,l77c3h		;77c0
	inc b			;77c2
l77c3h:
	nop			;77c3
	nop			;77c4
	push de			;77c5
	sub a			;77c6
	in a,(097h)		;77c7
	pop hl			;77c9
	sub a			;77ca
	rst 20h			;77cb
	sub a			;77cc
	defb 0edh ;next byte illegal after ed	;77cd
	sub a			;77ce
	di			;77cf
	sub a			;77d0
	ld sp,hl		;77d1
	sub a			;77d2
	rst 38h			;77d3
	sub a			;77d4
	ld b,000h		;77d5
	nop			;77d7
	ld bc,0ff00h		;77d8
	ld b,000h		;77db
	nop			;77dd
	ld bc,0ff01h		;77de
	ld b,000h		;77e1
	nop			;77e3
	ld bc,0ff02h		;77e4
	ld b,000h		;77e7
	nop			;77e9
	ld bc,0ff04h		;77ea
	ld b,000h		;77ed
	nop			;77ef
	ld bc,0ff05h		;77f0
	ld b,000h		;77f3
	nop			;77f5
	ld bc,0ff06h		;77f6
	ld b,000h		;77f9
	nop			;77fb
	ld bc,0ff07h		;77fc
	ld b,0fdh		;77ff
	ld (bc),a		;7801
	ld bc,0ff03h		;7802
	ld a,(ix+001h)		;7805
	dec a			;7808
	jr z,l7820h		;7809
	call sub_6754h		;780b
	ld a,d			;780e
	rlca			;780f
	ld a,00ah		;7810
	jr nc,l781ah		;7812
	ld (ix+006h),00ah	;7814
	ld a,008h		;7818
l781ah:
	call 06adbh		;781a
	jp l6c1dh		;781d
l7820h:
	ld a,(ix+00ah)		;7820
	cp 015h			;7823
	ret nc			;7825
	ld a,(0ca02h)		;7826
	and 003h		;7829
	ret nz			;782b
	call sub_6ad2h		;782c
	ret z			;782f
	inc (ix+006h)		;7830
	ld a,(ix+006h)		;7833
	dec a			;7836
	ret nz			;7837
	ld a,032h		;7838
	jp 04af0h		;783a
	ld a,(ix+001h)		;783d
	call 0461ah		;7840
	ld c,e			;7843
	sbc a,b			;7844
	ld h,h			;7845
	sbc a,b			;7846
	res 3,b			;7847
	dec bc			;7849
	sbc a,c			;784a
	call 06796h		;784b
	ld (ix+008h),a		;784e
	call 06796h		;7851
	ld (ix+00ah),a		;7854
	call 06796h		;7857
	ld (ix+020h),a		;785a
	call 06796h		;785d
	ld (ix+001h),a		;7860
	ret			;7863
	ld a,(ix+002h)		;7864
	dec a			;7867
	jr z,l788bh		;7868
	dec a			;786a
	jr z,l78a0h		;786b
	dec a			;786d
	jr z,l78c3h		;786e
	call 06796h		;7870
	ld (ix+021h),a		;7873
	call 06796h		;7876
	ld (ix+022h),a		;7879
	call 06796h		;787c
	ld (ix+023h),a		;787f
	call 09915h		;7882
	call 0992bh		;7885
	jp 0990ch		;7888
l788bh:
	ld a,(0ca34h)		;788b
	cp (ix+023h)		;788e
	jp nc,0989bh		;7891
	call sub_6ad2h		;7894
	ret nz			;7897
	jp 0990ch		;7898
	ld (ix+002h),003h	;789b
	ret			;789f
l78a0h:
	call sub_6adfh		;78a0
	ret nz			;78a3
	call 09924h		;78a4
	call 06814h		;78a7
	ret c			;78aa
	call sub_6926h		;78ab
	call 09936h		;78ae
	ld a,007h		;78b1
	call sub_699eh+1	;78b3
	dec (ix+024h)		;78b6
	ret nz			;78b9
	call 0991eh		;78ba
	call 0992bh		;78bd
	jp 09910h		;78c0
l78c3h:
	ld a,(ix+037h)		;78c3
	and a			;78c6
	ret nz			;78c7
	jp 06e98h		;78c8
	ld a,(ix+002h)		;78cb
	dec a			;78ce
	jr z,l78ech		;78cf
	dec a			;78d1
	jr z,l78c3h		;78d2
	call 06796h		;78d4
	ld d,a			;78d7
	and 07fh		;78d8
	ld (ix+021h),a		;78da
	ld a,d			;78dd
	rlca			;78de
	jr nc,l78e4h		;78df
	inc (ix+03dh)		;78e1
l78e4h:
	call 09915h		;78e4
	call 0992bh		;78e7
	jr l790ch		;78ea
l78ech:
	call sub_6ad2h		;78ec
	ret nz			;78ef
	ld a,(ix+021h)		;78f0
	ld (ix+017h),a		;78f3
	call 06814h		;78f6
	ret c			;78f9
	call sub_6926h		;78fa
	call 09936h		;78fd
	ld a,005h		;7900
	call sub_699eh+1	;7902
	dec (ix+024h)		;7905
	ret nz			;7908
	jr l790ch		;7909
	ret			;790b
l790ch:
	inc (ix+002h)		;790c
	ret			;790f
	ld (ix+002h),001h	;7910
	ret			;7914
	ld (ix+017h),001h	;7915
	ld (ix+018h),001h	;7919
	ret			;791d
	ld a,(ix+021h)		;791e
	ld (ix+017h),a		;7921
	ld a,(ix+022h)		;7924
	ld (ix+018h),a		;7927
	ret			;792a
	ld a,(ix+020h)		;792b
	ld (ix+024h),a		;792e
	ld (ix+025h),000h	;7931
	ret			;7935
	inc (ix+025h)		;7936
	ld a,(ix+025h)		;7939
	ld (iy+038h),a		;793c
	ret			;793f
	call l6c3ah		;7940
	ld a,(ix+001h)		;7943
	dec a			;7946
	jr z,l7956h		;7947
	dec a			;7949
	jr z,l7970h		;794a
	call sub_6754h		;794c
	ld (ix+008h),0fch	;794f
	jp l6c1dh		;7953
l7956h:
	call 09990h		;7956
	jr c,l7968h		;7959
	ld (iy+008h),001h	;795b
	call 09990h		;795f
	jr c,l7968h		;7962
	ld (iy+008h),010h	;7964
l7968h:
	ld a,040h		;7968
	call sub_6ae8h		;796a
	jp l6c1dh		;796d
l7970h:
	ld a,(ix+020h)		;7970
	and a			;7973
	call z,09984h		;7974
	call sub_6adfh		;7977
	ret nz			;797a
	call 09990h		;797b
	ret c			;797e
	ld a,040h		;797f
	jp sub_6ae8h		;7981
	ld a,(0ca18h)		;7984
	dec a			;7987
	ret z			;7988
	inc (ix+020h)		;7989
	dec (ix+00ah)		;798c
	ret			;798f
	call 06814h		;7990
	ret c			;7993
	call sub_6926h		;7994
	jp sub_699eh		;7997
	ld a,(ix+001h)		;799a
	dec a			;799d
	jr z,l79e0h		;799e
	dec a			;79a0
	jr z,l79edh		;79a1
	call sub_6754h		;79a3
	ld a,d			;79a6
	rlca			;79a7
	ld c,015h		;79a8
	jr nc,l79b1h		;79aa
	inc (ix+020h)		;79ac
	ld c,001h		;79af
l79b1h:
	ld (ix+008h),c		;79b1
	ld (ix+00ah),020h	;79b4
	call 06796h		;79b8
	ld d,a			;79bb
	and 00fh		;79bc
	ld (ix+022h),a		;79be
	ld a,d			;79c1
	rrca			;79c2
	rrca			;79c3
	rrca			;79c4
	rrca			;79c5
	and 003h		;79c6
	ld l,a			;79c8
	ld h,000h		;79c9
	ld de,099dch		;79cb
	add hl,de		;79ce
	ld a,(hl)		;79cf
	ld (ix+024h),a		;79d0
	call 06796h		;79d3
	ld (ix+021h),a		;79d6
	jp l6c1dh		;79d9
	dec e			;79dc
	dec d			;79dd
	dec c			;79de
	dec b			;79df
l79e0h:
	ld a,(ix+00ah)		;79e0
	cp (ix+024h)		;79e3
	ret nz			;79e6
	inc (ix+017h)		;79e7
	jp l6c1dh		;79ea
l79edh:
	dec (ix+017h)		;79ed
	ret nz			;79f0
	ld (ix+017h),008h	;79f1
	ld a,01ah		;79f5
	call sub_684ch		;79f7
	ret c			;79fa
	ld a,(ix+008h)		;79fb
	ld (iy+008h),a		;79fe
	ld a,(ix+007h)		;7a01
	ld (iy+007h),a		;7a04
	ld a,(ix+00ah)		;7a07
	ld (iy+00ah),a		;7a0a
	ld a,(ix+009h)		;7a0d
	ld (iy+009h),a		;7a10
	ld a,(ix+020h)		;7a13
	ld (iy+020h),a		;7a16
	ld a,(ix+021h)		;7a19
	ld (iy+021h),a		;7a1c
	inc (iy+001h)		;7a1f
	ld a,(ix+023h)		;7a22
	ld (iy+023h),a		;7a25
	and a			;7a28
	jr nz,l7a2eh		;7a29
	inc (iy+03dh)		;7a2b
l7a2eh:
	inc a			;7a2e
	ld (ix+023h),a		;7a2f
	cp (ix+022h)		;7a32
	ret nz			;7a35
	jp 06e98h		;7a36
	ld a,(ix+03ah)		;7a39
	ld (ix+000h),a		;7a3c
	ret			;7a3f
	ret			;7a40
	ld (ix+015h),02dh	;7a41
	ld b,004h		;7a45
	call sub_6ab8h		;7a47
	ret nz			;7a4a
	ld a,(ix+03dh)		;7a4b
	and a			;7a4e
	jp z,06e98h		;7a4f
	ld (ix+03dh),000h	;7a52
	ld e,(ix+008h)		;7a56
	ld d,(ix+00ah)		;7a59
	call 06f55h		;7a5c
	jp 06e98h		;7a5f
	push de			;7a62
	ld a,069h		;7a63
	call sub_684ch		;7a65
	pop de			;7a68
	ret c			;7a69
	ld l,(ix+008h)		;7a6a
	ld h,(ix+00ah)		;7a6d
	add hl,de		;7a70
	ld (iy+008h),l		;7a71
	ld (iy+00ah),h		;7a74
	ld (iy+001h),001h	;7a77
	ret			;7a7b
	ld a,(ix+001h)		;7a7c
	dec a			;7a7f
	jr z,l7a98h		;7a80
	call 06796h		;7a82
	ld (ix+008h),a		;7a85
	call 06796h		;7a88
	ld (ix+00ah),a		;7a8b
	ld a,(0ce4ch)		;7a8e
	and a			;7a91
	jp z,06e98h		;7a92
	jp l6c1dh		;7a95
l7a98h:
	ld de,09aadh		;7a98
	call 07b65h		;7a9b
	ld b,006h		;7a9e
	call sub_6ac2h		;7aa0
	jp z,06e98h		;7aa3
	dec a			;7aa6
	ret nz			;7aa7
	ld a,033h		;7aa8
	jp 04af0h		;7aaa
	cp c			;7aad
	sbc a,d			;7aae
	cp a			;7aaf
	sbc a,d			;7ab0
	push bc			;7ab1
	sbc a,d			;7ab2
l7ab3h:
	res 3,d			;7ab3
	pop de			;7ab5
	sbc a,d			;7ab6
	push bc			;7ab7
	sbc a,d			;7ab8
	ld b,000h		;7ab9
	nop			;7abb
	ld bc,0ff00h		;7abc
	ld b,000h		;7abf
	nop			;7ac1
	ld bc,0ff01h		;7ac2
	ld b,000h		;7ac5
	nop			;7ac7
	ld bc,0ff02h		;7ac8
	ld b,000h		;7acb
	nop			;7acd
	ld bc,0ff03h		;7ace
	ld b,000h		;7ad1
	nop			;7ad3
	ld bc,0ff04h		;7ad4
	call 06e91h		;7ad7
	ld a,(ix+001h)		;7ada
	dec a			;7add
	jr z,l7afeh		;7ade
	ld (ix+015h),004h	;7ae0
	ld de,09b0ah		;7ae4
	call 07b65h		;7ae7
	ld b,008h		;7aea
	call sub_6ac2h		;7aec
	ret nz			;7aef
	call sub_7058h		;7af0
	call 07523h		;7af3
	ld (ix+017h),030h	;7af6
	ld (ix+001h),001h	;7afa
l7afeh:
	call sub_6ad2h		;7afe
	ret nz			;7b01
	ld a,001h		;7b02
	ld (0ca0fh),a		;7b04
	jp 06e98h		;7b07
	ld a,(de)		;7b0a
	sbc a,e			;7b0b
	jr nz,$-99		;7b0c
	ld h,09bh		;7b0e
	inc l			;7b10
	sbc a,e			;7b11
	ld (0269bh),a		;7b12
	sbc a,e			;7b15
	jr nz,l7ab3h		;7b16
sub_7b18h:
	ld a,(de)		;7b18
	sbc a,e			;7b19
	ld b,003h		;7b1a
	ld (bc),a		;7b1c
	ld bc,0ff00h		;7b1d
	ld b,003h		;7b20
	ld bc,00101h		;7b22
	rst 38h			;7b25
	ld b,002h		;7b26
	ld bc,00201h		;7b28
	rst 38h			;7b2b
	ld b,000h		;7b2c
	nop			;7b2e
	ld bc,0ff03h		;7b2f
	ld b,001h		;7b32
	ld bc,00401h		;7b34
	rst 38h			;7b37
	ld a,(ix+001h)		;7b38
	dec a			;7b3b
	jr z,l7b6fh		;7b3c
	ld (ix+015h),004h	;7b3e
	call 09b70h		;7b42
	ld b,003h		;7b45
	call sub_6ac2h		;7b47
	ret nz			;7b4a
	ld a,(ix+03eh)		;7b4b
	and a			;7b4e
	jr z,l7b5bh		;7b4f
	ld (ix+006h),a		;7b51
	ld (ix+015h),046h	;7b54
	jp l6c1dh		;7b58
l7b5bh:
	ld a,(ix+03dh)		;7b5b
	and a			;7b5e
	jp z,06e98h		;7b5f
	ld (ix+03dh),000h	;7b62
	ld e,(ix+008h)		;7b66
	ld d,(ix+00ah)		;7b69
	jp 06f55h		;7b6c
l7b6fh:
	ret			;7b6f
	ld de,09ba2h		;7b70
	ld a,(ix+03eh)		;7b73
	and a			;7b76
	jr z,l7b87h		;7b77
	dec a			;7b79
	dec a			;7b7a
	dec a			;7b7b
	ld l,a			;7b7c
	ld h,000h		;7b7d
	add hl,hl		;7b7f
	ld de,09b8ah		;7b80
	add hl,de		;7b83
	ld e,(hl)		;7b84
	inc hl			;7b85
	ld d,(hl)		;7b86
l7b87h:
	jp 07b65h		;7b87
	and d			;7b8a
	sbc a,e			;7b8b
	and d			;7b8c
	sbc a,e			;7b8d
	xor (hl)		;7b8e
	sbc a,e			;7b8f
	and d			;7b90
	sbc a,e			;7b91
	and d			;7b92
	sbc a,e			;7b93
	and d			;7b94
	sbc a,e			;7b95
	xor b			;7b96
	sbc a,e			;7b97
	xor b			;7b98
	sbc a,e			;7b99
	and d			;7b9a
	sbc a,e			;7b9b
	and d			;7b9c
	sbc a,e			;7b9d
	or h			;7b9e
	sbc a,e			;7b9f
	cp d			;7ba0
	sbc a,e			;7ba1
	ret nz			;7ba2
	sbc a,e			;7ba3
	add a,09bh		;7ba4
	ret nz			;7ba6
	sbc a,e			;7ba7
	call z,0d29bh		;7ba8
	sbc a,e			;7bab
	call z,0d89bh		;7bac
	sbc a,e			;7baf
	ex (sp),hl		;7bb0
	sbc a,e			;7bb1
	ret c			;7bb2
	sbc a,e			;7bb3
	xor 09bh		;7bb4
	xor 09bh		;7bb6
	xor 09bh		;7bb8
	call p,0f49bh		;7bba
	sbc a,e			;7bbd
	call p,0069bh		;7bbe
	nop			;7bc1
	rst 38h			;7bc2
	ld bc,0ff00h		;7bc3
	ld b,000h		;7bc6
	rst 38h			;7bc8
	ld bc,0ff01h		;7bc9
	ld b,001h		;7bcc
	ld bc,00001h		;7bce
	rst 38h			;7bd1
	ld b,001h		;7bd2
	ld bc,00101h		;7bd4
	rst 38h			;7bd7
	dec bc			;7bd8
	ld (bc),a		;7bd9
	ld (bc),a		;7bda
	ld bc,0fe00h		;7bdb
	nop			;7bde
	nop			;7bdf
	ld bc,0ff05h		;7be0
	dec bc			;7be3
	ld (bc),a		;7be4
	ld bc,00101h		;7be5
	cp 000h			;7be8
	nop			;7bea
	ld bc,0ff05h		;7beb
	ld b,000h		;7bee
	nop			;7bf0
	ld bc,0ff0dh		;7bf1
	ld b,000h		;7bf4
	nop			;7bf6
	ld bc,0ff0eh		;7bf7
	push de			;7bfa
	ld bc,0ffa0h		;7bfb
	call 09c07h		;7bfe
	pop de			;7c01
	ret z			;7c02
	ld e,d			;7c03
	ld bc,00060h		;7c04
	ld d,061h		;7c07
	call l7207h		;7c09
	ret nz			;7c0c
	call 0721dh		;7c0d
	ld (hl),d		;7c10
	ld a,e			;7c11
	rrca			;7c12
	rrca			;7c13
	rrca			;7c14
	rrca			;7c15
	and 00fh		;7c16
	ld d,a			;7c18
	ld a,e			;7c19
	and 00fh		;7c1a
	ld e,a			;7c1c
	ld a,008h		;7c1d
	add a,l			;7c1f
	ld l,a			;7c20
	ld a,(ix+008h)		;7c21
	add a,e			;7c24
	ld (hl),a		;7c25
	inc l			;7c26
	inc l			;7c27
	ld a,(ix+00ah)		;7c28
	add a,d			;7c2b
	ld (hl),a		;7c2c
	inc l			;7c2d
	ld (hl),c		;7c2e
	inc l			;7c2f
	ld (hl),b		;7c30
	ld a,l			;7c31
	and 0e0h		;7c32
	ld l,a			;7c34
	call 066f7h		;7c35
	ld (hl),006h		;7c38
	ret			;7c3a
	ld a,(ix+001h)		;7c3b
	dec a			;7c3e
	jr z,l7c57h		;7c3f
	call sub_6ad2h		;7c41
	ret nz			;7c44
	call l6bf0h		;7c45
	ld de,0ff80h		;7c48
	call 06bfdh		;7c4b
	ld de,0ffe0h		;7c4e
	call 06c16h		;7c51
	jp l6c1dh		;7c54
l7c57h:
	ld a,(0ca02h)		;7c57
	and 001h		;7c5a
	ret z			;7c5c
	jp 06a9ah		;7c5d
	ld a,066h		;7c60
	call sub_684ch		;7c62
	ret c			;7c65
	ld bc,00102h		;7c66
	jp 06929h		;7c69
	ld a,(ix+001h)		;7c6c
	dec a			;7c6f
	jr z,l7caah		;7c70
	ld de,0ff80h		;7c72
	call 06bfdh		;7c75
	ld de,0fff0h		;7c78
	call 06c16h		;7c7b
	ld (ix+007h),080h	;7c7e
	ld a,(0ca19h)		;7c82
	cp 005h			;7c85
	ld a,004h		;7c87
	jr c,l7ca4h		;7c89
	ld a,(0ca48h)		;7c8b
	inc a			;7c8e
	sub 00bh		;7c8f
	ld hl,00008h		;7c91
	jr nc,l7c9bh		;7c94
	neg			;7c96
	ld hl,0fff8h		;7c98
l7c9bh:
	cp 002h			;7c9b
	jr c,l7ca2h		;7c9d
	call 06c0ch		;7c9f
l7ca2h:
	ld a,00ch		;7ca2
l7ca4h:
	ld (ix+016h),a		;7ca4
sub_7ca7h:
	jp l6c1dh		;7ca7
l7caah:
	jp 06a9ah		;7caa
	call 09ccbh		;7cad
	inc (hl)		;7cb0
	inc (hl)		;7cb1
	inc (hl)		;7cb2
	jr l7cb8h		;7cb3
	call 09ccbh		;7cb5
l7cb8h:
	call 09cdeh		;7cb8
	ld a,015h		;7cbb
	jp 04af0h		;7cbd
	call 09ccbh		;7cc0
l7cc3h:
	call 09cdeh		;7cc3
	ld a,019h		;7cc6
	jp 04af0h		;7cc8
	ld a,(0ca19h)		;7ccb
	rrca			;7cce
	and 07fh		;7ccf
	ld l,a			;7cd1
	ld h,000h		;7cd2
	ld de,09d15h		;7cd4
	add hl,de		;7cd7
	ld a,(hl)		;7cd8
	ld hl,0ca26h		;7cd9
	ld (hl),a		;7cdc
	ret			;7cdd
	ld l,b			;7cde
	ld h,000h		;7cdf
	ld de,09d0dh		;7ce1
	add hl,de		;7ce4
	ld a,(hl)		;7ce5
	ld c,a			;7ce6
	push bc			;7ce7
	call 07362h		;7ce8
	pop bc			;7ceb
	ret nz			;7cec
	srl c			;7ced
	ld b,067h		;7cef
	call 07371h		;7cf1
	ld de,00010h		;7cf4
	add hl,de		;7cf7
	ld (hl),035h		;7cf8
	ld a,l			;7cfa
	and 0e0h		;7cfb
	ld l,a			;7cfd
	ld de,00007h		;7cfe
	add hl,de		;7d01
	ld a,(0ca12h)		;7d02
	ld (hl),a		;7d05
	ld a,(0ca14h)		;7d06
	inc l			;7d09
	inc l			;7d0a
	ld (hl),a		;7d0b
	ret			;7d0c
	nop			;7d0d
	ld (bc),a		;7d0e
	inc b			;7d0f
	ld b,008h		;7d10
	ld a,(bc)		;7d12
	inc c			;7d13
	ld c,010h		;7d14
	ld (de),a		;7d16
	ld d,018h		;7d17
	inc e			;7d19
	ld e,020h		;7d1a
	ld (0d5c9h),hl		;7d1c
	push bc			;7d1f
	ld a,070h		;7d20
	call sub_684ch		;7d22
	jr c,l7d4dh		;7d25
	ld (iy+017h),006h	;7d27
	pop bc			;7d2b
	call 06929h		;7d2c
	pop de			;7d2f
	ld l,d			;7d30
	ld h,000h		;7d31
	add hl,hl		;7d33
	ld bc,09d50h		;7d34
	add hl,bc		;7d37
	ld a,(hl)		;7d38
	ld (iy+012h),a		;7d39
	inc hl			;7d3c
	ld a,(hl)		;7d3d
l7d3eh:
	ld (iy+011h),a		;7d3e
	ld d,000h		;7d41
	ld hl,09d58h		;7d43
	add hl,de		;7d46
	ld a,(hl)		;7d47
	ld (iy+00fh),a		;7d48
	or a			;7d4b
	ret			;7d4c
l7d4dh:
	pop hl			;7d4d
	pop hl			;7d4e
	ret			;7d4f
	djnz l7d62h		;7d50
	ld (de),a		;7d52
	ld de,01214h		;7d53
	inc d			;7d56
	inc de			;7d57
	ld b,b			;7d58
	add a,b			;7d59
	ret nz			;7d5a
	nop			;7d5b
	ld h,b			;7d5c
	and b			;7d5d
	ret po			;7d5e
	jr nz,l7d3eh		;7d5f
	ld a,(hl)		;7d61
l7d62h:
	ld bc,0283dh		;7d62
	dec d			;7d65
	dec a			;7d66
	jr z,l7d86h		;7d67
	ld a,(ix+012h)		;7d69
	ld (0ca26h),a		;7d6c
	ld a,(ix+00fh)		;7d6f
	call 09de8h		;7d72
	call sub_6b6ch+3	;7d75
	jp l6c1dh		;7d78
	call sub_6ad2h		;7d7b
	ret nz			;7d7e
	ld (ix+018h),060h	;7d7f
	jp l6c1dh		;7d83
l7d86h:
	call sub_6adfh		;7d86
	ret z			;7d89
	ld a,(0ca02h)		;7d8a
	and 003h		;7d8d
	ret nz			;7d8f
	ld a,(ix+012h)		;7d90
	ld iy,0ca40h		;7d93
	call 06b85h		;7d97
	call 09da1h		;7d9a
	call sub_6b6ch+3	;7d9d
	ret			;7da0
	call 09da9h		;7da1
	call 09dd2h		;7da4
	jr l7de8h		;7da7
	ld d,a			;7da9
	ld a,(0ca23h)		;7daa
	ld b,a			;7dad
	ld a,(0ca24h)		;7dae
	and a			;7db1
	rlca			;7db2
	add a,b			;7db3
	or a			;7db4
	jp po,09dbeh		;7db5
	ex af,af'		;7db8
	ld a,03fh		;7db9
	sub d			;7dbb
	ld d,a			;7dbc
	ex af,af'		;7dbd
	ld b,0c0h		;7dbe
	jr z,l7dceh		;7dc0
	dec a			;7dc2
sub_7dc3h:
	ld b,000h		;7dc3
	jr z,l7dceh		;7dc5
	dec a			;7dc7
	ld b,080h		;7dc8
	jr z,l7dceh		;7dca
	ld b,040h		;7dcc
l7dceh:
	ld a,d			;7dce
	add a,b			;7dcf
	ld b,a			;7dd0
	ret			;7dd1
	ld d,(ix+011h)		;7dd2
	ld c,(ix+00fh)		;7dd5
	ld a,c			;7dd8
	neg			;7dd9
	add a,b			;7ddb
	cp 07fh			;7ddc
	ld a,d			;7dde
	jr c,l7de3h		;7ddf
	neg			;7de1
l7de3h:
	add a,c			;7de3
	ld (ix+00fh),a		;7de4
	ret			;7de7
l7de8h:
	ld d,a			;7de8
	ld bc,00001h		;7de9
	sub 040h		;7dec
	jr c,l7e04h		;7dee
	ld d,a			;7df0
	inc b			;7df1
	sub 040h		;7df2
	jr c,l7dfeh		;7df4
	ld d,a			;7df6
	dec c			;7df7
	sub 040h		;7df8
	jr c,l7e04h		;7dfa
	ld d,a			;7dfc
	dec b			;7dfd
l7dfeh:
	ld a,d			;7dfe
	neg			;7dff
	add a,03fh		;7e01
	ld d,a			;7e03
l7e04h:
	ld a,d			;7e04
	ld (0ca20h),a		;7e05
	ld hl,0ca23h		;7e08
	ld (hl),c		;7e0b
	inc hl			;7e0c
	ld (hl),b		;7e0d
	ret			;7e0e
	ld a,074h		;7e0f
	call sub_684ch		;7e11
	ret c			;7e14
	call 04678h		;7e15
	ld b,a			;7e18
	and 003h		;7e19
	ld l,a			;7e1b
	ld h,000h		;7e1c
	ld de,09e67h		;7e1e
	add hl,de		;7e21
	ld l,(hl)		;7e22
	ld h,0ffh		;7e23
	add hl,hl		;7e25
	ld (iy+00dh),l		;7e26
	ld (iy+00eh),h		;7e29
	ld a,(ix+008h)		;7e2c
	add a,002h		;7e2f
	cp 006h			;7e31
	ld de,09e6bh		;7e33
	jr nc,l7e3bh		;7e36
	ld de,09e6fh		;7e38
l7e3bh:
	ld a,b			;7e3b
	rlca			;7e3c
	and 003h		;7e3d
	ld l,a			;7e3f
	ld h,000h		;7e40
	add hl,de		;7e42
	ld a,(hl)		;7e43
l7e44h:
	ld (iy+008h),a		;7e44
	ld (iy+00ah),01fh	;7e47
	ld a,b			;7e4b
	rrca			;7e4c
	and 007h		;7e4d
	ld l,a			;7e4f
	ld h,000h		;7e50
	ld de,09e73h		;7e52
	add hl,de		;7e55
	ld l,(hl)		;7e56
	ld h,000h		;7e57
	ld a,b			;7e59
	rrca			;7e5a
	jr c,l7e60h		;7e5b
	call 04612h		;7e5d
l7e60h:
	ld (iy+00bh),l		;7e60
	ld (iy+00ch),h		;7e63
	ret			;7e66
	ret nz			;7e67
	add a,b			;7e68
	ld b,b			;7e69
	nop			;7e6a
	nop			;7e6b
	ld (bc),a		;7e6c
	inc b			;7e6d
	ld b,010h		;7e6e
	ld (de),a		;7e70
	inc d			;7e71
	ld d,000h		;7e72
	djnz $+26		;7e74
	ld a,(de)		;7e76
	jr nz,$+38		;7e77
	jr z,l7e44h		;7e79
	ret			;7e7b
	ld a,(ix+001h)		;7e7c
	dec a			;7e7f
	jr z,l7e8ch		;7e80
	jp p,09ea4h		;7e82
	ld (ix+017h),020h	;7e85
	inc (ix+001h)		;7e89
l7e8ch:
	dec (ix+017h)		;7e8c
	ret nz			;7e8f
	ld (ix+017h),00ah	;7e90
	ld a,(ix+00fh)		;7e94
	ld (ix+018h),a		;7e97
	ld (ix+015h),004h	;7e9a
	inc (ix+001h)		;7e9e
	call 06be6h		;7ea1
	ld a,(ix+00fh)		;7ea4
	or a			;7ea7
	call nz,09efbh		;7ea8
	ld a,(ix+017h)		;7eab
	jr z,l7eb5h		;7eae
	dec a			;7eb0
	ld (ix+017h),a		;7eb1
	ret			;7eb4
l7eb5h:
	call 09ec0h		;7eb5
	ld a,(ix+018h)		;7eb8
	or a			;7ebb
	ret nz			;7ebc
	jp 06each		;7ebd
	ld b,002h		;7ec0
l7ec2h:
	push bc			;7ec2
	call 09ecah		;7ec3
	pop bc			;7ec6
	djnz l7ec2h		;7ec7
	ret			;7ec9
	ld a,(ix+018h)		;7eca
	or a			;7ecd
	ret z			;7ece
	dec a			;7ecf
	ld (ix+018h),a		;7ed0
	ld a,01dh		;7ed3
	call 04af5h		;7ed5
	ld a,(ix+008h)		;7ed8
	sub (ix+010h)		;7edb
	ld (ix+008h),a		;7ede
	ld a,(ix+00ah)		;7ee1
	sub (ix+012h)		;7ee4
	ld (ix+00ah),a		;7ee7
	xor a			;7eea
	ld h,a			;7eeb
	ld l,a			;7eec
	ld d,a			;7eed
	ld e,a			;7eee
	call l76cfh+1		;7eef
	call l76f0h+1		;7ef2
	jr nc,l7efah		;7ef5
	ld a,0a7h		;7ef7
	ld (de),a		;7ef9
l7efah:
	ret			;7efa
	ld b,002h		;7efb
l7efdh:
	push bc			;7efd
	call 09f05h		;7efe
	pop bc			;7f01
	djnz l7efdh		;7f02
	ret			;7f04
	ld a,(ix+00fh)		;7f05
	or a			;7f08
	ret z			;7f09
	dec a			;7f0a
	ld (ix+00fh),a		;7f0b
	xor a			;7f0e
	ld h,a			;7f0f
	ld l,a			;7f10
	ld d,a			;7f11
	ld e,a			;7f12
	call l76cfh+1		;7f13
	call l76f0h+1		;7f16
	jr nc,l7f1fh		;7f19
	ld a,(ix+011h)		;7f1b
	ld (de),a		;7f1e
l7f1fh:
	ld a,(ix+010h)		;7f1f
	add a,(ix+008h)		;7f22
	ld (ix+008h),a		;7f25
	ld a,(ix+012h)		;7f28
	add a,(ix+00ah)		;7f2b
	ld (ix+00ah),a		;7f2e
	ret			;7f31
	ld a,06eh		;7f32
	call sub_684ch		;7f34
	ret c			;7f37
	ld bc,00202h		;7f38
	ld a,(ix+006h)		;7f3b
	inc a			;7f3e
	and 003h		;7f3f
	ld (iy+020h),a		;7f41
	jp 06929h		;7f44
	ld a,(ix+001h)		;7f47
	dec a			;7f4a
	jr z,l7f57h		;7f4b
	call 09f69h		;7f4d
	ld (ix+017h),008h	;7f50
	jp l6c1dh		;7f54
l7f57h:
	call sub_6ad2h		;7f57
	ret nz			;7f5a
	ld a,(ix+005h)		;7f5b
	cp 002h			;7f5e
	ret z			;7f60
	inc (ix+005h)		;7f61
	ld a,008h		;7f64
	jp 06adbh		;7f66
	ld l,(ix+020h)		;7f69
	ld h,000h		;7f6c
	add hl,hl		;7f6e
	add hl,hl		;7f6f
	ld de,09f80h		;7f70
	add hl,de		;7f73
	ld e,(hl)		;7f74
	inc hl			;7f75
	ld d,(hl)		;7f76
	inc hl			;7f77
	ld a,(hl)		;7f78
	inc hl			;7f79
	ld h,(hl)		;7f7a
	ld l,a			;7f7b
	ex de,hl		;7f7c
	jp 06bebh		;7f7d
	nop			;7f80
	nop			;7f81
	add a,b			;7f82
	nop			;7f83
	add a,b			;7f84
	rst 38h			;7f85
	nop			;7f86
	nop			;7f87
	nop			;7f88
	nop			;7f89
	add a,b			;7f8a
	rst 38h			;7f8b
	add a,b			;7f8c
	nop			;7f8d
	nop			;7f8e
	nop			;7f8f
	push de			;7f90
	push bc			;7f91
	ld a,06fh		;7f92
	call sub_684ch		;7f94
	pop bc			;7f97
	pop de			;7f98
	ret c			;7f99
	ld (iy+020h),d		;7f9a
	ld a,(ix+008h)		;7f9d
	add a,c			;7fa0
	ld (iy+008h),a		;7fa1
	ld a,(ix+00ah)		;7fa4
	add a,b			;7fa7
	ld (iy+00ah),a		;7fa8
	ld (iy+017h),004h	;7fab
	ret			;7faf
	ld b,004h		;7fb0
	call sub_6ab8h		;7fb2
	ld a,(ix+001h)		;7fb5
	dec a			;7fb8
	jr z,l7fd0h		;7fb9
	dec a			;7fbb
	jr z,l7fdah		;7fbc
	ld a,(ix+020h)		;7fbe
	ld hl,00080h		;7fc1
	or a			;7fc4
	jr nz,l7fcah		;7fc5
	ld hl,0ff80h		;7fc7
l7fcah:
	call sub_6bf3h		;7fca
	jp l6c1dh		;7fcd
l7fd0h:
	call sub_6ad2h		;7fd0
	ret nz			;7fd3
	call 09fe9h		;7fd4
	jp l6c1dh		;7fd7
l7fdah:
	ld l,(ix+00fh)		;7fda
	ld h,(ix+010h)		;7fdd
	ld e,(ix+011h)		;7fe0
	ld d,(ix+012h)		;7fe3
	jp sub_6d4fh		;7fe6
	ld iy,0ca40h		;7fe9
	ld a,020h		;7fed
	call sub_6b7fh		;7fef
	ld (ix+00fh),l		;7ff2
	ld (ix+010h),h		;7ff5
	ld (ix+011h),e		;7ff8
	ld (ix+012h),d		;7ffb
	ret			;7ffe
	ret			;7fff

; z80dasm 1.2.0
; command line: z80dasm -a -l -g 0x6000 -o /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/disasm/bank06_6000.asm /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/banks/bank06.bin

	org 06000h

	call 06a13h		;6000
	call sub_6e91h		;6003
	ld a,(ix+001h)		;6006
	dec a			;6009
	jr z,l6049h		;600a
	dec a			;600c
	jr z,l6040h		;600d
	call sub_6754h		;600f
	ld b,007h		;6012
l6014h:
	push bc			;6014
	call 06814h		;6015
	jp c,0469fh		;6018
	call 06926h		;601b
	call sub_699eh		;601e
	pop bc			;6021
	djnz l6014h		;6022
	call 0a12bh		;6024
	call 0a10fh		;6027
	call 06c4bh		;602a
	ld a,(0ca04h)		;602d
	and a			;6030
	ld a,020h		;6031
	jr z,l6037h		;6033
	ld a,040h		;6035
l6037h:
	ld (ix+016h),a		;6037
	call 069d7h		;603a
	jp l6c1dh		;603d
l6040h:
	ld a,(0c0d4h)		;6040
	cp 003h			;6043
	ret nz			;6045
	jp l6c1dh		;6046
l6049h:
	call 0a0b6h		;6049
	call sub_6ad2h		;604c
	call z,0a12bh		;604f
	call sub_6adfh		;6052
	ret nz			;6055
	call 0a10fh		;6056
	ld a,(ix+021h)		;6059
	cp 008h			;605c
	jr c,l6061h		;605e
	xor a			;6060
l6061h:
	ld l,a			;6061
	inc a			;6062
	ld (ix+021h),a		;6063
	ld h,000h		;6066
	ld de,0a0a4h		;6068
	add hl,de		;606b
	ld b,(hl)		;606c
	ld a,(0ca04h)		;606d
	and a			;6070
	jr nz,l6076h		;6071
	ld a,b			;6073
	rlca			;6074
	ret c			;6075
l6076h:
	ld a,b			;6076
	and a			;6077
	ret z			;6078
	and 003h		;6079
	dec a			;607b
	jr z,l608ch		;607c
	dec a			;607e
	jr z,l6095h		;607f
	dec a			;6081
	jr z,l6084h		;6082
l6084h:
	ld hl,0a0b1h		;6084
	ld bc,00008h		;6087
	jr l609bh		;608a
l608ch:
	ld hl,0a0b1h		;608c
	ld bc,00008h		;608f
	call 0a09bh		;6092
l6095h:
	ld hl,0a0ach		;6095
	ld bc,000feh		;6098
l609bh:
	ld a,(ix+022h)		;609b
	ld (0ca26h),a		;609e
	jp l7306h		;60a1
	add a,d			;60a4
	add a,e			;60a5
	nop			;60a6
	nop			;60a7
	add a,d			;60a8
	inc bc			;60a9
	ld (bc),a		;60aa
	add a,c			;60ab
	nop			;60ac
	rrca			;60ad
	ld c,00dh		;60ae
	rst 38h			;60b0
	nop			;60b1
	ld bc,00302h		;60b2
	rst 38h			;60b5
	ld a,(ix+023h)		;60b6
	and a			;60b9
	call z,0a0cch		;60ba
	dec (ix+023h)		;60bd
	ld e,(ix+011h)		;60c0
	ld d,(ix+012h)		;60c3
	ld hl,00000h		;60c6
	jp 06c6dh		;60c9
	ld a,(ix+024h)		;60cc
	cp 007h			;60cf
	jr c,l60d4h		;60d1
	xor a			;60d3
l60d4h:
	ld l,a			;60d4
	inc a			;60d5
	ld (ix+024h),a		;60d6
	ld h,000h		;60d9
	add hl,hl		;60db
	ld de,0a0f7h		;60dc
	add hl,de		;60df
	ld a,(hl)		;60e0
	ld (ix+023h),a		;60e1
	inc hl			;60e4
	ld l,(hl)		;60e5
	ld h,000h		;60e6
	add hl,hl		;60e8
	ld de,0a105h		;60e9
	add hl,de		;60ec
	ld a,(hl)		;60ed
	ld (ix+011h),a		;60ee
	inc hl			;60f1
	ld a,(hl)		;60f2
	ld (ix+012h),a		;60f3
	ret			;60f6
	ld b,b			;60f7
	nop			;60f8
	djnz l60ffh		;60f9
	ex af,af'		;60fb
	ld bc,00040h		;60fc
l60ffh:
	ex af,af'		;60ff
	ld bc,00020h		;6100
	ex af,af'		;6103
	inc bc			;6104
	nop			;6105
	nop			;6106
	jr nz,l6109h		;6107
l6109h:
	ret po			;6109
	rst 38h			;610a
	ld b,b			;610b
	nop			;610c
	ret nz			;610d
	rst 38h			;610e
	ld a,(ix+016h)		;610f
	ld b,a			;6112
	and a			;6113
	jr nz,l6117h		;6114
	inc b			;6116
l6117h:
	cp 018h			;6117
	jr nc,l611dh		;6119
	ld a,018h		;611b
l611dh:
	ld (ix+018h),a		;611d
	xor a			;6120
	sub b			;6121
	rrca			;6122
	rrca			;6123
	rrca			;6124
	and 01fh		;6125
	ld (ix+022h),a		;6127
	ret			;612a
	res 7,(ix+014h)		;612b
	ld a,(ix+020h)		;612f
	cp 00eh			;6132
	jr c,l6137h		;6134
	xor a			;6136
l6137h:
	ld l,a			;6137
	inc a			;6138
	ld (ix+020h),a		;6139
	ld h,000h		;613c
	add hl,hl		;613e
	ld de,0a15fh		;613f
	add hl,de		;6142
	ld e,(hl)		;6143
	inc hl			;6144
	ld a,(hl)		;6145
	ld (ix+017h),e		;6146
	ld (ix+006h),a		;6149
	cp 004h			;614c
	jr nz,l6157h		;614e
	call sub_7ca7h		;6150
	set 7,(ix+014h)		;6153
l6157h:
	dec a			;6157
	dec a			;6158
	ret nz			;6159
	ld a,029h		;615a
	jp 04af5h		;615c
	inc bc			;615f
	inc b			;6160
	ld (bc),a		;6161
	nop			;6162
	inc b			;6163
	ld bc,00204h		;6164
	inc b			;6167
	ld bc,00208h		;6168
	ld (bc),a		;616b
	inc bc			;616c
	ex af,af'		;616d
	inc b			;616e
	ld (bc),a		;616f
	nop			;6170
	inc b			;6171
	ld bc,00218h		;6172
	inc b			;6175
	ld bc,00202h		;6176
	ld (bc),a		;6179
	inc bc			;617a
	call 0a2a9h		;617b
	call 0a22dh		;617e
	ld a,(ix+001h)		;6181
	call 0461ah		;6184
	sub c			;6187
	and c			;6188
	sbc a,d			;6189
	and c			;618a
	cp e			;618b
	and c			;618c
	rst 20h			;618d
	and c			;618e
	dec b			;618f
	and d			;6190
	call 0a24ah		;6191
	call 0a235h		;6194
	jp l6c1dh		;6197
	call sub_6ad2h		;619a
	ret nz			;619d
	ld a,(ix+020h)		;619e
	ld c,a			;61a1
	and a			;61a2
	ld b,004h		;61a3
	jr z,l61a9h		;61a5
	ld b,008h		;61a7
l61a9h:
	call sub_6ab8h		;61a9
	ret nz			;61ac
	ld a,c			;61ad
	call 0a26ah		;61ae
	call 0a235h		;61b1
	ld (ix+017h),006h	;61b4
	jp l6c1dh		;61b8
	call sub_6ad2h		;61bb
	ret nz			;61be
	ld a,(ix+020h)		;61bf
	and a			;61c2
	ld de,0a275h		;61c3
	jr z,l61cbh		;61c6
	ld de,0a27ah		;61c8
l61cbh:
	ld a,(ix+021h)		;61cb
	inc a			;61ce
	cp 005h			;61cf
	jp nc,l6c1dh		;61d1
	ld (ix+021h),a		;61d4
	ld b,a			;61d7
	ld l,a			;61d8
	ld h,000h		;61d9
	add hl,de		;61db
	ld a,(hl)		;61dc
	ld (ix+006h),a		;61dd
	dec b			;61e0
	ret nz			;61e1
	ld a,028h		;61e2
	jp 04af5h		;61e4
	ld a,(ix+020h)		;61e7
	and a			;61ea
	ld b,004h		;61eb
	jr z,l61f1h		;61ed
	ld b,00ah		;61ef
l61f1h:
	ld a,(0ca02h)		;61f1
	and 003h		;61f4
	jp po,0a1fah		;61f6
	xor a			;61f9
	add a,b			;61fa
	ld (ix+006h),a		;61fb
	call sub_6adfh		;61fe
	ret nz			;6201
	jp l6c1dh		;6202
	ld a,(ix+020h)		;6205
	and a			;6208
	ld de,0a275h		;6209
	jr z,l6211h		;620c
	ld de,0a27ah		;620e
l6211h:
	ld a,(ix+021h)		;6211
	sub 001h		;6214
	jp c,0a225h		;6216
	ld (ix+021h),a		;6219
	ld l,a			;621c
	ld h,000h		;621d
	add hl,de		;621f
	ld a,(hl)		;6220
	ld (ix+006h),a		;6221
	ret			;6224
	call 0a235h		;6225
	ld (ix+001h),001h	;6228
	ret			;622c
	ld a,(0ce52h)		;622d
	and a			;6230
	ret z			;6231
	jp 06e98h		;6232
	ld de,0a29bh		;6235
	ld l,(ix+038h)		;6238
	dec l			;623b
	ld h,000h		;623c
	add hl,hl		;623e
	add hl,de		;623f
	ld e,(hl)		;6240
	inc hl			;6241
	ld d,(hl)		;6242
	ld (ix+017h),e		;6243
	ld (ix+018h),d		;6246
	ret			;6249
	ld l,(ix+038h)		;624a
	dec l			;624d
	ld h,000h		;624e
	add hl,hl		;6250
	add hl,hl		;6251
	ld de,0a27fh		;6252
	add hl,de		;6255
	ld a,(hl)		;6256
	add a,(ix+008h)		;6257
	ld (ix+008h),a		;625a
	inc hl			;625d
	ld a,(hl)		;625e
	add a,(ix+00ah)		;625f
	ld (ix+00ah),a		;6262
	inc hl			;6265
	ld a,(hl)		;6266
	ld (ix+020h),a		;6267
	and a			;626a
	ld a,000h		;626b
	jr z,l6271h		;626d
	ld a,004h		;626f
l6271h:
	ld (ix+005h),a		;6271
	ret			;6274
	nop			;6275
	ld bc,00302h		;6276
	inc b			;6279
	nop			;627a
	rlca			;627b
	ex af,af'		;627c
	add hl,bc		;627d
	ld a,(bc)		;627e
	defb 0fdh,0fdh,000h ;illegal sequence	;627f
	nop			;6282
	ld sp,iy		;6283
	nop			;6285
	nop			;6286
	defb 0fdh,0f6h,000h ;illegal sequence	;6287
	nop			;628a
	defb 0fdh,0f3h,000h ;illegal sequence	;628b
	nop			;628e
	cp 0f0h			;628f
	ld bc,0fe00h		;6291
	xor 001h		;6294
	nop			;6296
	cp 0ebh			;6297
	ld bc,04000h		;6299
	ex af,af'		;629c
	add a,b			;629d
	ex af,af'		;629e
	jr nz,l62a9h		;629f
	ld b,b			;62a1
	ex af,af'		;62a2
	jr nc,l62adh		;62a3
	add a,b			;62a5
	ex af,af'		;62a6
	ex af,af'		;62a7
	ex af,af'		;62a8
l62a9h:
	ld a,(0ca41h)		;62a9
	and a			;62ac
l62adh:
	ret z			;62ad
	jp 06e98h		;62ae
	ld a,(ix+001h)		;62b1
	and a			;62b4
	jr nz,l62c3h		;62b5
	call sub_6754h		;62b7
	call 06796h		;62ba
	ld (ix+006h),a		;62bd
	jp l6c1dh		;62c0
l62c3h:
	ld a,(ix+006h)		;62c3
	and a			;62c6
	jr nz,l62ceh		;62c7
	ld a,0fbh		;62c9
	call l6c74h+1		;62cb
l62ceh:
	ld a,(0ce52h)		;62ce
	and a			;62d1
	ret z			;62d2
	ld (ix+004h),0ffh	;62d3
	ret			;62d7
	call 06a13h		;62d8
	call sub_6e91h		;62db
	ld a,0f3h		;62de
	call l6c74h+1		;62e0
	call 0a2ech		;62e3
	ld de,0a494h		;62e6
	jp 07b65h		;62e9
	ld a,(ix+001h)		;62ec
	call 0461ah		;62ef
	nop			;62f2
	and e			;62f3
	dec l			;62f4
	and e			;62f5
	jr c,$-91		;62f6
	ld d,e			;62f8
	and e			;62f9
	ld h,d			;62fa
	and e			;62fb
	ld (hl),c		;62fc
	and e			;62fd
	add a,b			;62fe
	and e			;62ff
	ld (ix+00ah),028h	;6300
	ld (ix+008h),00ch	;6304
	ld (ix+006h),006h	;6308
	xor a			;630c
	call sub_6c5ch		;630d
	call 067feh		;6310
	ld bc,00406h		;6313
	call 06929h		;6316
	ld (ix+026h),012h	;6319
	ld a,(0ca04h)		;631d
	and a			;6320
	jr z,l6327h		;6321
	ld (ix+016h),06ch	;6323
l6327h:
	call 069d7h		;6327
	jp l6c1dh		;632a
	call 0688bh		;632d
	call nc,06886h		;6330
	call l6c1dh		;6333
	jr l638eh		;6336
	dec (ix+026h)		;6338
	jr nz,l6340h		;633b
	dec (ix+006h)		;633d
l6340h:
	call 0a45ch		;6340
	call 0a3f9h		;6343
	ret nz			;6346
	set 7,(ix+014h)		;6347
	call 0a430h		;634b
	call l6c1dh		;634e
	jr l638eh		;6351
	call 0a45ch		;6353
	call 0a40dh		;6356
	call 0a3f9h		;6359
	ret nz			;635c
	call l6c1dh		;635d
	jr l638eh		;6360
	call 0a3dfh		;6362
	call 0a45ch		;6365
	call 0a3f9h		;6368
	ret nz			;636b
	call l6c1dh		;636c
	jr l638eh		;636f
	call 0a45ch		;6371
	call 0a413h		;6374
	call 0a3f9h		;6377
	ret nz			;637a
	call l6c1dh		;637b
	jr l638eh		;637e
	call 0a3c4h		;6380
	call 0a45ch		;6383
	call 0a3f9h		;6386
	ret nz			;6389
	ld (ix+001h),003h	;638a
l638eh:
	ld a,(ix+001h)		;638e
	dec a			;6391
	dec a			;6392
	ld l,a			;6393
	ld h,000h		;6394
	add hl,hl		;6396
	add hl,hl		;6397
	ld de,0a3b0h		;6398
	add hl,de		;639b
	ld a,(hl)		;639c
	ld (ix+011h),a		;639d
	inc hl			;63a0
	ld a,(hl)		;63a1
	ld (ix+012h),a		;63a2
	inc hl			;63a5
	ld a,(hl)		;63a6
	ld (ix+017h),a		;63a7
	inc hl			;63aa
	ld a,(hl)		;63ab
	ld (ix+020h),a		;63ac
	ret			;63af
	ret nz			;63b0
	rst 38h			;63b1
	ld e,b			;63b2
	ld bc,00000h		;63b3
	inc h			;63b6
	ld bc,0ffc0h		;63b7
	jr z,$+18		;63ba
	nop			;63bc
	nop			;63bd
	inc h			;63be
	ld bc,00040h		;63bf
	jr z,l63d8h		;63c2
	ld a,(ix+020h)		;63c4
	dec a			;63c7
	jr z,l63ceh		;63c8
	ld (ix+020h),a		;63ca
	ret			;63cd
l63ceh:
	ld a,(ix+006h)		;63ce
	inc a			;63d1
	cp 006h			;63d2
	ret z			;63d4
	ld (ix+006h),a		;63d5
l63d8h:
	dec a			;63d8
	ret nz			;63d9
	ld a,026h		;63da
	jp 04af5h		;63dc
	ld a,(ix+020h)		;63df
	dec a			;63e2
	jr z,l63e9h		;63e3
	ld (ix+020h),a		;63e5
	ret			;63e8
l63e9h:
	ld a,(ix+006h)		;63e9
	and a			;63ec
	ret z			;63ed
	dec a			;63ee
	ld (ix+006h),a		;63ef
	and a			;63f2
	ret nz			;63f3
	ld a,027h		;63f4
	jp 04af5h		;63f6
	call sub_6ad2h		;63f9
	ret z			;63fc
	ld e,(ix+011h)		;63fd
	ld d,(ix+012h)		;6400
	ld hl,00000h		;6403
	call 06c6dh		;6406
	ld a,001h		;6409
	and a			;640b
	ret			;640c
	ld (ix+024h),000h	;640d
	jr l6416h		;6411
	inc (ix+024h)		;6413
l6416h:
	call sub_6adfh		;6416
	ret nz			;6419
	ld a,(ix+023h)		;641a
	dec (ix+023h)		;641d
	and a			;6420
	ret nz			;6421
	ld (ix+023h),002h	;6422
	call 0a560h		;6426
	inc (ix+025h)		;6429
	dec (ix+021h)		;642c
	ret nz			;642f
	ld l,(ix+022h)		;6430
	inc (ix+022h)		;6433
	ld h,000h		;6436
	add hl,hl		;6438
	ld de,0a453h		;6439
	add hl,de		;643c
	ld a,(hl)		;643d
	and a			;643e
	jr nz,l6445h		;643f
	ld (ix+022h),a		;6441
	ex de,hl		;6444
l6445h:
	ld a,(hl)		;6445
	ld (ix+018h),a		;6446
	inc hl			;6449
	ld a,(hl)		;644a
	ld (ix+021h),a		;644b
	ld (ix+025h),000h	;644e
	ret			;6452
	ld b,006h		;6453
	ld (de),a		;6455
	ex af,af'		;6456
	ex af,af'		;6457
	inc b			;6458
	ld (de),a		;6459
	ex af,af'		;645a
	nop			;645b
	ld a,(ix+006h)		;645c
	and a			;645f
	jr z,l6472h		;6460
	cp 005h			;6462
	jr z,l6472h		;6464
	ld l,a			;6466
	ld h,000h		;6467
	ld de,0a486h		;6469
	add hl,de		;646c
	ld a,(hl)		;646d
	ld (ix+005h),a		;646e
	ret			;6471
l6472h:
	call 06b94h		;6472
	ld a,c			;6475
	add a,002h		;6476
	and 007h		;6478
	ld l,a			;647a
	ld h,000h		;647b
	ld de,0a48ch		;647d
	add hl,de		;6480
	ld a,(hl)		;6481
	ld (ix+005h),a		;6482
	ret			;6485
	dec b			;6486
	nop			;6487
	ld bc,00404h		;6488
	dec b			;648b
	ld (bc),a		;648c
	inc bc			;648d
	inc b			;648e
	dec b			;648f
	dec b			;6490
	dec b			;6491
	ld (bc),a		;6492
	ld (bc),a		;6493
	and d			;6494
	and h			;6495
	or a			;6496
	and h			;6497
	call z,0e1a4h		;6498
	and h			;649b
	or 0a4h			;649c
	dec bc			;649e
	and l			;649f
	jr nz,$-89		;64a0
	dec d			;64a2
	nop			;64a3
	nop			;64a4
	ld bc,0fe00h		;64a5
	nop			;64a8
	ld a,(bc)		;64a9
	ld bc,0fe0ah		;64aa
	nop			;64ad
	inc b			;64ae
	ld bc,0fe01h		;64af
	inc b			;64b2
	rst 30h			;64b3
	ld bc,0ff07h		;64b4
	dec d			;64b7
	nop			;64b8
	nop			;64b9
	ld bc,0fe00h		;64ba
	nop			;64bd
	ld a,(bc)		;64be
	ld bc,0fe0ah		;64bf
	ld bc,001f6h		;64c2
	rlca			;64c5
	cp 000h			;64c6
	inc bc			;64c8
	ld bc,0ff02h		;64c9
	dec d			;64cc
	nop			;64cd
	nop			;64ce
	ld bc,0fe00h		;64cf
	nop			;64d2
	ld a,(bc)		;64d3
	ld bc,0fe0ah		;64d4
	rst 38h			;64d7
	push af			;64d8
	ld bc,0fe07h		;64d9
	nop			;64dc
	ld (bc),a		;64dd
	ld bc,0ff03h		;64de
	dec d			;64e1
	nop			;64e2
	nop			;64e3
	ld bc,0fe00h		;64e4
	nop			;64e7
	ld a,(bc)		;64e8
	ld bc,0fe0ah		;64e9
	defb 0fdh,0f6h,001h ;illegal sequence	;64ec
	rlca			;64ef
	cp 0feh			;64f0
	inc bc			;64f2
	ld bc,0ff04h		;64f3
	dec d			;64f6
	nop			;64f7
	nop			;64f8
	ld bc,0fe00h		;64f9
	nop			;64fc
	ld a,(bc)		;64fd
	ld bc,0fe0ah		;64fe
	jp m,001f7h		;6501
	rlca			;6504
	cp 0fbh			;6505
	inc b			;6507
	ld bc,0ff05h		;6508
	dec d			;650b
	nop			;650c
	nop			;650d
	ld bc,0fe00h		;650e
	nop			;6511
	ld a,(bc)		;6512
	ld bc,0fe0ah		;6513
	ret m			;6516
	ld sp,hl		;6517
	ld bc,0fe07h		;6518
	ld sp,hl		;651b
	ld b,001h		;651c
	ld b,0ffh		;651e
	djnz l6522h		;6520
l6522h:
	nop			;6522
	ld bc,0fe00h		;6523
	ld sp,hl		;6526
	ld b,001h		;6527
	ld b,0feh		;6529
	ret m			;652b
	ld sp,hl		;652c
	ld bc,0ff07h		;652d
	ld a,(ix+001h)		;6530
	and a			;6533
	jr nz,l653dh		;6534
	ld (ix+020h),000h	;6536
	jp l6c1dh		;653a
l653dh:
	ld a,(0ca3bh)		;653d
	add a,(ix+00ah)		;6540
	and 007h		;6543
	ld d,a			;6545
	ld a,(0ca1ch)		;6546
	add a,(ix+009h)		;6549
	jr nc,l654fh		;654c
	inc d			;654e
l654fh:
	res 3,d			;654f
	ld a,(ix+020h)		;6551
	add a,d			;6554
	ld (ix+006h),a		;6555
	ld a,(0ce52h)		;6558
	and a			;655b
	ret z			;655c
	jp 06e98h		;655d
	ld a,040h		;6560
	call sub_684ch		;6562
	ret c			;6565
	ld a,(ix+024h)		;6566
	ld (iy+024h),a		;6569
	ld a,(ix+021h)		;656c
	ld (iy+021h),a		;656f
	ld a,(ix+025h)		;6572
	and 003h		;6575
	ld bc,00c00h		;6577
	add a,b			;657a
	ld b,a			;657b
	jp 06929h		;657c
	ld a,(ix+001h)		;657f
	dec a			;6582
	jr z,l65a7h		;6583
	dec a			;6585
	jr z,l65b1h		;6586
	dec a			;6588
	jr z,l6608h		;6589
	ld a,(ix+024h)		;658b
	and a			;658e
	ld a,00bh		;658f
	jr z,l6595h		;6591
	ld a,004h		;6593
l6595h:
	ld (ix+017h),a		;6595
	ld hl,0ffa0h		;6598
	call 06bf3h		;659b
	ld hl,0fff8h		;659e
	call l6c0ah+2		;65a1
	jp l6c1dh		;65a4
l65a7h:
	call sub_6a9ah		;65a7
	call sub_6ad2h		;65aa
	ret nz			;65ad
	jp l6c1dh		;65ae
l65b1h:
	ld a,(0ca02h)		;65b1
	and 003h		;65b4
	ret nz			;65b6
	ld b,003h		;65b7
	call sub_6ab8h		;65b9
	cp 002h			;65bc
	ret c			;65be
	ld iy,0ca40h		;65bf
	ld a,01dh		;65c3
	call sub_6b85h		;65c5
	call 09da9h		;65c8
	cp 098h			;65cb
	jr c,l65d1h		;65cd
	ld a,098h		;65cf
l65d1h:
	push af			;65d1
	ex af,af'		;65d2
	call 04678h		;65d3
	and 007h		;65d6
	add a,a			;65d8
	add a,a			;65d9
	ld b,a			;65da
	ex af,af'		;65db
	sub b			;65dc
	call 09de8h		;65dd
	call 06b6fh		;65e0
	pop af			;65e3
	rlca			;65e4
	rlca			;65e5
	rlca			;65e6
	and 007h		;65e7
	ld l,a			;65e9
	ld h,000h		;65ea
	ld de,0a601h		;65ec
	add hl,de		;65ef
	ld a,(hl)		;65f0
	ld (ix+018h),a		;65f1
	ld (ix+017h),006h	;65f4
	ld hl,00012h		;65f8
	call l6c0ah+2		;65fb
	jp l6c1dh		;65fe
	djnz $+12		;6601
	ex af,af'		;6603
	ld c,00bh		;6604
	add hl,bc		;6606
	inc b			;6607
l6608h:
	call 0a61eh		;6608
	call 0a62dh		;660b
	call sub_6adfh		;660e
	ret nz			;6611
	call sub_6a9ah		;6612
	call sub_6ad2h		;6615
	ret nz			;6618
	ld (ix+005h),003h	;6619
	ret			;661d
	ld a,(ix+008h)		;661e
	add a,001h		;6621
	ret nc			;6623
	ld (ix+008h),000h	;6624
	ld (ix+007h),000h	;6628
	ret			;662c
	ld de,00101h		;662d
	call 0a63ah		;6630
	ret z			;6633
	ret c			;6634
	ld (ix+004h),0ffh	;6635
	ret			;6639
	ld a,e			;663a
	add a,(ix+008h)		;663b
	ld e,a			;663e
	ld a,d			;663f
	add a,(ix+00ah)		;6640
	ld d,a			;6643
	jp 0753ch		;6644
	ld a,0ffh		;6647
	call l6c74h+1		;6649
	call 06a13h		;664c
	ld de,0a7c3h		;664f
	call 07b65h		;6652
	call sub_6ad2h		;6655
	call z,0a795h		;6658
	ld a,(ix+001h)		;665b
	dec a			;665e
	jr z,l6682h		;665f
	dec a			;6661
	jr z,l6697h		;6662
	jp p,0a6adh		;6664
	ld (ix+008h),001h	;6667
	ld (ix+00ah),01fh	;666b
	ld (ix+018h),014h	;666f
	call 0a768h		;6673
	call 0a795h		;6676
	call 0a6c3h		;6679
	call 069d7h		;667c
	jp l6c1dh		;667f
l6682h:
	call 0a6c3h		;6682
	ld a,(ix+00ah)		;6685
	cp 00eh			;6688
	ret nc			;668a
	ld de,00000h		;668b
	ld hl,00000h		;668e
	call 06c6dh		;6691
	call l6c1dh		;6694
l6697h:
	ld hl,00000h		;6697
	ld de,00040h		;669a
	call 06c6dh		;669d
	call 0a6cch		;66a0
	ld a,(ix+00ah)		;66a3
	cp 015h			;66a6
	ret c			;66a8
	inc (ix+001h)		;66a9
	ret			;66ac
	ld hl,00000h		;66ad
	ld de,0ffc0h		;66b0
	call 06c6dh		;66b3
	call 0a6cch		;66b6
	ld a,(ix+00ah)		;66b9
	cp 00ah			;66bc
	ret nc			;66be
	dec (ix+001h)		;66bf
	ret			;66c2
	ld de,0ffe0h		;66c3
	ld hl,00000h		;66c6
	jp 06c6dh		;66c9
	ld a,(ix+002h)		;66cc
	cp 005h			;66cf
	jp nc,04ae0h		;66d1
	call 0461ah		;66d4
	pop hl			;66d7
	and (hl)		;66d8
	jp (hl)			;66d9
	and (hl)		;66da
	ld sp,hl		;66db
	and (hl)		;66dc
	inc d			;66dd
	and a			;66de
	add hl,sp		;66df
	and a			;66e0
	dec (ix+018h)		;66e1
	ret nz			;66e4
	inc (ix+002h)		;66e5
	ret			;66e8
	call 0a759h		;66e9
	ld a,(ix+003h)		;66ec
	or a			;66ef
	ret nz			;66f0
	inc (ix+002h)		;66f1
	ld (ix+018h),00ah	;66f4
	ret			;66f8
	dec (ix+018h)		;66f9
	ret nz			;66fc
	ld a,(ix+023h)		;66fd
	call 0a762h		;6700
	ld (ix+023h),a		;6703
	inc a			;6706
	ld (ix+021h),a		;6707
	ld (ix+022h),002h	;670a
	ld (ix+018h),005h	;670e
	jr l6732h		;6712
	call 0a759h		;6714
	dec (ix+018h)		;6717
	ret nz			;671a
	ld a,(ix+023h)		;671b
	call 0a762h		;671e
	inc a			;6721
	ld (ix+021h),a		;6722
	ld (ix+022h),001h	;6725
	call 04678h		;6729
	and 00fh		;672c
	inc a			;672e
	ld (ix+018h),a		;672f
l6732h:
	inc (ix+003h)		;6732
	inc (ix+002h)		;6735
	ret			;6738
	call 0a759h		;6739
	dec (ix+018h)		;673c
	ret nz			;673f
	ld a,(ix+023h)		;6740
	call 0a762h		;6743
	call 0a762h		;6746
	inc a			;6749
	ld (ix+021h),a		;674a
	ld (ix+022h),001h	;674d
	inc (ix+003h)		;6751
sub_6754h:
	ld (ix+002h),001h	;6754
	ret			;6758
	ld (ix+021h),000h	;6759
	ld (ix+022h),000h	;675d
	ret			;6761
	inc a			;6762
	cp 003h			;6763
	ret c			;6765
	xor a			;6766
	ret			;6767
	ld a,001h		;6768
	call 0a774h		;676a
	ld a,002h		;676d
	call 0a774h		;676f
	ld a,003h		;6772
	push ix			;6774
	push ix			;6776
	push af			;6778
	ld a,03fh		;6779
	call 069bfh		;677b
	pop bc			;677e
	jr c,l6792h		;677f
	ld (ix+003h),b		;6781
	ld (ix+023h),001h	;6784
	pop iy			;6788
	ld a,b			;678a
	dec a			;678b
	call 0a9b4h		;678c
	call 0a95dh		;678f
l6792h:
	pop ix			;6792
	ret			;6794
	ld a,(ix+020h)		;6795
	cp 008h			;6798
	jr c,l679dh		;679a
	xor a			;679c
l679dh:
	ld l,a			;679d
	inc a			;679e
	ld (ix+020h),a		;679f
	ld h,000h		;67a2
	add hl,hl		;67a4
	ld de,0a7b3h		;67a5
	add hl,de		;67a8
	ld e,(hl)		;67a9
	inc hl			;67aa
	ld d,(hl)		;67ab
	ld (ix+017h),e		;67ac
	ld (ix+006h),d		;67af
	ret			;67b2
	ld (bc),a		;67b3
	nop			;67b4
	ld (bc),a		;67b5
	ld bc,00202h		;67b6
	ld (bc),a		;67b9
	inc bc			;67ba
	ld (bc),a		;67bb
	inc b			;67bc
	ld (bc),a		;67bd
	dec b			;67be
	ld (bc),a		;67bf
	ld b,002h		;67c0
	rlca			;67c2
	out (0a7h),a		;67c3
	ex (sp),hl		;67c5
	and a			;67c6
	di			;67c7
	and a			;67c8
	inc bc			;67c9
	xor b			;67ca
	inc de			;67cb
	xor b			;67cc
	inc hl			;67cd
	xor b			;67ce
	inc sp			;67cf
	xor b			;67d0
	ld b,e			;67d1
	xor b			;67d2
	djnz l67d5h		;67d3
l67d5h:
	nop			;67d5
	ld bc,0fe00h		;67d6
	ld de,001ffh		;67d9
	ld bc,012feh		;67dc
	pop af			;67df
	ld bc,0ff02h		;67e0
	djnz l67e5h		;67e3
l67e5h:
	nop			;67e5
	ld bc,0fe00h		;67e6
	ld de,001ffh		;67e9
	ld bc,012feh		;67ec
	pop af			;67ef
	ld bc,0ff03h		;67f0
	djnz l67f5h		;67f3
l67f5h:
	nop			;67f5
	ld bc,0fe00h		;67f6
	ld de,001ffh		;67f9
	ld bc,012feh		;67fc
	pop af			;67ff
	ld bc,0ff04h		;6800
	djnz l6805h		;6803
l6805h:
	nop			;6805
	ld bc,0fe00h		;6806
	ld de,001ffh		;6809
	ld bc,012feh		;680c
	pop af			;680f
	ld bc,0ff05h		;6810
	djnz l6815h		;6813
l6815h:
	nop			;6815
	ld bc,0fe00h		;6816
	ld de,001ffh		;6819
	ld bc,012feh		;681c
	pop af			;681f
	ld bc,0ff06h		;6820
	djnz l6825h		;6823
l6825h:
	nop			;6825
	ld bc,0fe00h		;6826
	ld de,001ffh		;6829
	ld bc,012feh		;682c
	pop af			;682f
	ld bc,0ff07h		;6830
	djnz l6835h		;6833
l6835h:
	nop			;6835
	ld bc,0fe00h		;6836
	ld de,001ffh		;6839
	ld bc,012feh		;683c
	pop af			;683f
	ld bc,0ff08h		;6840
	djnz l6845h		;6843
l6845h:
	nop			;6845
	ld bc,0fe00h		;6846
	ld de,001ffh		;6849
sub_684ch:
	ld bc,012feh		;684c
	pop af			;684f
	ld bc,0ff09h		;6850
	ld hl,0ca19h		;6853
	ld a,(hl)		;6856
	push af			;6857
	srl a			;6858
	ld (hl),a		;685a
	call 0a863h		;685b
	pop af			;685e
	ld (0ca19h),a		;685f
	ret			;6862
	call 0a9a2h		;6863
	jp c,07cc3h		;6866
	call 0a884h		;6869
	ld a,(ix+023h)		;686c
	cp 002h			;686f
	ret nz			;6871
	ld a,(ix+024h)		;6872
	or a			;6875
	ret z			;6876
	ld a,(ix+004h)		;6877
	or a			;687a
	ret z			;687b
	ld (iy+004h),a		;687c
	ld (ix+004h),000h	;687f
	ret			;6883
	ld a,(ix+001h)		;6884
	cp 008h			;6887
	jp nc,04ae0h		;6889
	call 0461ah		;688c
	sbc a,a			;688f
	xor b			;6890
	cp b			;6891
	xor b			;6892
	push bc			;6893
	xor b			;6894
	jp nc,0d2a8h		;6895
	xor b			;6898
	push af			;6899
	xor b			;689a
	inc de			;689b
	xor c			;689c
	inc de			;689d
	xor c			;689e
	ld a,(iy+021h)		;689f
	cp (ix+003h)		;68a2
	ret nz			;68a5
	ld a,(iy+022h)		;68a6
	ld (ix+001h),a		;68a9
	ld (ix+023h),a		;68ac
	ld (ix+017h),003h	;68af
	ld (ix+004h),000h	;68b3
	ret			;68b7
	call 0a93eh		;68b8
	ret nz			;68bb
	ld (ix+001h),004h	;68bc
	ld (ix+017h),028h	;68c0
	ret			;68c4
	call 0a93eh		;68c5
	ret nz			;68c8
	ld (ix+001h),005h	;68c9
	ld (ix+017h),01eh	;68cd
	ret			;68d1
	call 0a8e8h		;68d2
	ld a,(ix+017h)		;68d5
	cp 025h			;68d8
	jp z,07143h		;68da
	cp 01ch			;68dd
	jp z,0aa06h		;68df
	cp 012h			;68e2
	jp z,07143h		;68e4
	ret			;68e7
	dec (ix+017h)		;68e8
	ret nz			;68eb
	ld (ix+001h),007h	;68ec
	ld (ix+017h),005h	;68f0
	ret			;68f4
	ld a,(0ca02h)		;68f5
	and 003h		;68f8
	jr nz,l690ch		;68fa
	ld a,(ix+024h)		;68fc
	inc a			;68ff
	cp 004h			;6900
	jr c,l6906h		;6902
	ld a,002h		;6904
l6906h:
	ld (ix+024h),a		;6906
	call 0a95dh		;6909
l690ch:
	dec (ix+017h)		;690c
	ret nz			;690f
	jp 0a8ech		;6910
	call 0a91fh		;6913
	ret nz			;6916
	dec (iy+003h)		;6917
	ld (ix+001h),000h	;691a
	ret			;691e
	dec (ix+017h)		;691f
	ret nz			;6922
	ld (ix+017h),001h	;6923
	ld a,(ix+024h)		;6927
	push af			;692a
	cp 002h			;692b
	ld a,02bh		;692d
	call z,04af5h		;692f
	pop af			;6932
	dec a			;6933
	ld (ix+024h),a		;6934
	push af			;6937
	call 0a95dh		;6938
	pop af			;693b
	or a			;693c
	ret			;693d
	dec (ix+017h)		;693e
	ret nz			;6941
	ld (ix+017h),001h	;6942
	ld a,(ix+024h)		;6946
	push af			;6949
	or a			;694a
	ld a,02ah		;694b
	call z,04af5h		;694d
	pop af			;6950
	inc a			;6951
	ld (ix+024h),a		;6952
	push af			;6955
	call 0a95dh		;6956
	pop af			;6959
	cp 002h			;695a
	ret			;695c
	ld a,(ix+024h)		;695d
	push af			;6960
	ld a,(ix+023h)		;6961
	dec a			;6964
	call 0a998h		;6965
	push af			;6968
	ld a,(ix+003h)		;6969
	dec a			;696c
	call 0a99fh		;696d
	pop bc			;6970
	add a,b			;6971
	pop bc			;6972
	add a,b			;6973
	ld hl,0a9e2h		;6974
	call 04600h		;6977
	ld a,(hl)		;697a
	or a			;697b
	jr z,l698ch		;697c
	dec a			;697e
	ld (ix+006h),a		;697f
	set 6,(ix+015h)		;6982
	set 4,(ix+015h)		;6986
	jr l6994h		;698a
l698ch:
	res 6,(ix+015h)		;698c
	res 4,(ix+015h)		;6990
l6994h:
	ld a,b			;6994
	cp 002h			;6995
	ret			;6997
	call 0a99fh		;6998
	ld c,a			;699b
	add a,a			;699c
	add a,c			;699d
sub_699eh:
	ret			;699e
	add a,a			;699f
	add a,a			;69a0
	ret			;69a1
	call 068deh		;69a2
	ret c			;69a5
	ld a,(ix+003h)		;69a6
	dec a			;69a9
	jr z,l69b0h		;69aa
	ld a,(iy+021h)		;69ac
	ret			;69af
l69b0h:
	ld a,(iy+022h)		;69b0
	ret			;69b3
	ld hl,0a9dch		;69b4
	call 0468eh		;69b7
	ex de,hl		;69ba
	ld b,(iy+008h)		;69bb
	ld c,(iy+007h)		;69be
	ld h,e			;69c1
	ld l,000h		;69c2
	add hl,bc		;69c4
	ld (ix+008h),h		;69c5
	ld (ix+007h),l		;69c8
	ld b,(iy+00ah)		;69cb
	ld c,(iy+009h)		;69ce
	ld h,d			;69d1
	ld l,000h		;69d2
	add hl,bc		;69d4
	ld (ix+00ah),h		;69d5
	ld (ix+009h),l		;69d8
	ret			;69db
	ld b,000h		;69dc
	ld a,(bc)		;69de
	nop			;69df
	ld c,0ffh		;69e0
	dec bc			;69e2
	inc c			;69e3
	dec c			;69e4
	dec c			;69e5
	rrca			;69e6
	djnz l69fah		;69e7
	ld de,01312h		;69e9
	inc d			;69ec
	inc d			;69ed
	dec bc			;69ee
	inc e			;69ef
	jr $+27			;69f0
sub_69f2h:
	rrca			;69f2
	rla			;69f3
	dec d			;69f4
	ld d,012h		;69f5
	dec e			;69f7
	ld a,(de)		;69f8
	dec de			;69f9
l69fah:
	dec bc			;69fa
sub_69fbh:
	ld c,000h		;69fb
	nop			;69fd
	rrca			;69fe
	ld e,000h		;69ff
	nop			;6a01
	ld (de),a		;6a02
	rra			;6a03
	nop			;6a04
	nop			;6a05
	ld hl,0aa15h		;6a06
	call sub_7186h		;6a09
	ld bc,00200h		;6a0c
	call l7306h		;6a0f
	jp 07143h		;6a12
	rrca			;6a15
	nop			;6a16
	ld bc,0cdffh		;6a17
	inc de			;6a1a
	ld l,d			;6a1b
	ld a,0f8h		;6a1c
	call l6c74h+1		;6a1e
	ld de,0acdeh		;6a21
	call 07b65h		;6a24
	call 0ab42h		;6a27
	call 0ac96h		;6a2a
	call 0ac2ch		;6a2d
	ld a,(ix+001h)		;6a30
	call 0461ah		;6a33
	ld c,b			;6a36
	xor d			;6a37
	ld h,h			;6a38
	xor d			;6a39
	adc a,a			;6a3a
	xor d			;6a3b
	and l			;6a3c
	xor d			;6a3d
	cp a			;6a3e
	xor d			;6a3f
	exx			;6a40
	xor d			;6a41
	inc bc			;6a42
	xor e			;6a43
	ld h,0abh		;6a44
	ld a,(0ddabh)		;6a46
	ld (hl),008h		;6a49
	inc b			;6a4b
	ld (ix+00ah),01fh	;6a4c
	ld (ix+023h),030h	;6a50
	ld (ix+025h),015h	;6a54
	call 0ac10h		;6a58
	call 06c4bh		;6a5b
	call 069d7h		;6a5e
	jp l6c1dh		;6a61
	call 0ac54h		;6a64
	ld de,0ffe0h		;6a67
	ld a,0d0h		;6a6a
	call 0aa73h		;6a6c
	ret c			;6a6f
	jp l6c1dh		;6a70
	cp (ix+022h)		;6a73
	jr z,l6a8ah		;6a76
	inc (ix+022h)		;6a78
	ld (ix+029h),001h	;6a7b
	ld hl,00000h		;6a7f
	call 06c6dh		;6a82
	call 0ac65h		;6a85
	scf			;6a88
	ret			;6a89
l6a8ah:
	xor a			;6a8a
	ld (ix+022h),a		;6a8b
	ret			;6a8e
	call 0ac54h		;6a8f
	ld de,00020h		;6a92
	ld a,040h		;6a95
	call 0aa73h		;6a97
sub_6a9ah:
	ret c			;6a9a
	call 0abe1h		;6a9b
	ld (ix+029h),000h	;6a9e
	jp l6c1dh		;6aa2
	call 0ab86h		;6aa5
	call 0abeah		;6aa8
	call 0ac54h		;6aab
	call 0ac65h		;6aae
	call sub_6ad2h		;6ab1
	ret nz			;6ab4
	call 0abe1h		;6ab5
sub_6ab8h:
	ld (ix+028h),003h	;6ab8
	jp l6c1dh		;6abc
	call 0ab86h		;6abf
l6ac2h:
	call 0ac54h		;6ac2
	call 0ac65h		;6ac5
	ld b,004h		;6ac8
	call sub_6ab8h		;6aca
	ret nz			;6acd
	dec (ix+028h)		;6ace
	ret nz			;6ad1
sub_6ad2h:
	ld (ix+027h),020h	;6ad2
	jp l6c1dh		;6ad6
	call 0ab86h		;6ad9
	call 0ac54h		;6adc
sub_6adfh:
	call 0ac65h		;6adf
	call 0aaf2h		;6ae2
	dec (ix+027h)		;6ae5
sub_6ae8h:
	ret nz			;6ae8
	ld (ix+026h),000h	;6ae9
	ld (ix+001h),003h	;6aed
	ret			;6af1
	ld a,(ix+026h)		;6af2
	and a			;6af5
	ret nz			;6af6
	ld de,00104h		;6af7
	call 0915dh		;6afa
	inc (ix+026h)		;6afd
	jp 0ac10h		;6b00
	res 7,(ix+014h)		;6b03
	ld de,0ffe0h		;6b07
	ld hl,00000h		;6b0a
	call 06c6dh		;6b0d
	call 0ac65h		;6b10
	inc (ix+022h)		;6b13
	ld a,(ix+022h)		;6b16
	cp 040h			;6b19
	ret nz			;6b1b
	call 0abe1h		;6b1c
	ld (ix+006h),005h	;6b1f
	jp l6c1dh		;6b23
	call 0ac65h		;6b26
	call 0ac59h		;6b29
	ret nz			;6b2c
	ld a,001h		;6b2d
	ld (0ce75h),a		;6b2f
	ld a,051h		;6b32
	call 04af5h		;6b34
	jp l6c1dh		;6b37
	call 0ac65h		;6b3a
	call 0ac86h		;6b3d
	jr l6b8fh		;6b40
	ld a,(ix+001h)		;6b42
	cp 003h			;6b45
	ret c			;6b47
	cp 006h			;6b48
	ret nc			;6b4a
	ld a,(ix+02ah)		;6b4b
	and a			;6b4e
	call z,0ab60h		;6b4f
	dec a			;6b52
sub_6b53h:
	ld (ix+02ah),a		;6b53
	ld a,(ix+02bh)		;6b56
	and a			;6b59
	ret z			;6b5a
	add a,01dh		;6b5b
	jp 07a43h		;6b5d
	ld a,(ix+02bh)		;6b60
sub_6b63h:
	inc a			;6b63
	cp 006h			;6b64
	jr c,l6b69h		;6b66
	xor a			;6b68
l6b69h:
	ld (ix+02bh),a		;6b69
	and a			;6b6c
	ld bc,00840h		;6b6d
	jr z,l6b7ch		;6b70
	cp 003h			;6b72
	ld bc,04008h		;6b74
	jr z,l6b7ch		;6b77
	ld a,006h		;6b79
	ret			;6b7b
l6b7ch:
	ld a,(0ca19h)		;6b7c
sub_6b7fh:
	cp 006h			;6b7f
	jr c,l6b84h		;6b81
	ld b,c			;6b83
l6b84h:
	ld a,b			;6b84
sub_6b85h:
	ret			;6b85
	call 04678h		;6b86
	and 00eh		;6b89
	ret nz			;6b8b
	jp 09e0fh		;6b8c
l6b8fh:
	ld h,(ix+008h)		;6b8f
	ld l,(ix+007h)		;6b92
	ld de,00600h		;6b95
	add hl,de		;6b98
	call 0abd1h		;6b99
	ld a,h			;6b9c
	ld hl,(0ca47h)		;6b9d
	call 0abd1h		;6ba0
	cp h			;6ba3
	call 0abd7h		;6ba4
	push hl			;6ba7
	add hl,de		;6ba8
	ld (0ca47h),hl		;6ba9
	ld h,(ix+00ah)		;6bac
	ld l,(ix+009h)		;6baf
	ld de,0fe00h		;6bb2
	add hl,de		;6bb5
	call 0abd1h		;6bb6
	ld a,h			;6bb9
	ld hl,(0ca49h)		;6bba
	call 0abd1h		;6bbd
	cp h			;6bc0
	call 0abd7h		;6bc1
	ld a,l			;6bc4
	add hl,de		;6bc5
	ld (0ca49h),hl		;6bc6
	pop hl			;6bc9
	or l			;6bca
	ret nz			;6bcb
	inc a			;6bcc
	ld (0ca0fh),a		;6bcd
	ret			;6bd0
	ld d,h			;6bd1
	ld e,l			;6bd2
	add hl,hl		;6bd3
	add hl,hl		;6bd4
	add hl,hl		;6bd5
	ret			;6bd6
	ld hl,00000h		;6bd7
	ret z			;6bda
	ld l,020h		;6bdb
	ret nc			;6bdd
	jp 04612h		;6bde
	ld hl,00000h		;6be1
	ld de,00000h		;6be4
	jp 06c6dh		;6be7
	ld a,(ix+023h)		;6bea
	cp 060h			;6bed
	inc a			;6bef
sub_6bf0h:
	jr c,l6bfbh		;6bf0
	ld a,001h		;6bf2
	xor (ix+024h)		;6bf4
	ld (ix+024h),a		;6bf7
l6bfah:
	xor a			;6bfa
l6bfbh:
	ld (ix+023h),a		;6bfb
	ld a,(ix+024h)		;6bfe
	and a			;6c01
	ld hl,0ffe0h		;6c02
	jr z,l6c0ah		;6c05
	ld hl,00020h		;6c07
l6c0ah:
	ld de,00000h		;6c0a
	jp 06c6dh		;6c0d
	ld a,(ix+021h)		;6c10
	ld l,a			;6c13
	inc a			;6c14
	cp 004h			;6c15
	jr nz,l6c1ah		;6c17
	xor a			;6c19
l6c1ah:
	ld (ix+021h),a		;6c1a
l6c1dh:
	ld h,000h		;6c1d
	ld de,0ac28h		;6c1f
	add hl,de		;6c22
	ld a,(hl)		;6c23
	ld (ix+017h),a		;6c24
	ret			;6c27
	jr nz,$+66		;6c28
	ld h,b			;6c2a
	jr nz,l6bfah		;6c2b
	inc e			;6c2d
	ld l,d			;6c2e
	ld a,(ix+029h)		;6c2f
	and a			;6c32
	ret nz			;6c33
	ld a,(ix+02bh)		;6c34
	and a			;6c37
	ret z			;6c38
	call sub_7c6bh		;6c39
	ret nc			;6c3c
	ld a,001h		;6c3d
	ld (0ce76h),a		;6c3f
	call 0abe1h		;6c42
	ld (ix+005h),000h	;6c45
	ld (ix+001h),006h	;6c49
	ld (ix+029h),001h	;6c4d
	jp 07cbeh		;6c51
	ld b,005h		;6c54
	jp l6ac2h		;6c56
	call 0acd8h		;6c59
sub_6c5ch:
	ret nz			;6c5c
	ld b,00ah		;6c5d
	call l6ac2h		;6c5f
	cp 009h			;6c62
	ret			;6c64
	ld b,(ix+020h)		;6c65
	call 0acd8h		;6c68
	ld a,b			;6c6b
	jr nz,l6c77h		;6c6c
	cp 003h			;6c6e
	inc a			;6c70
	jr c,l6c74h		;6c71
	xor a			;6c73
l6c74h:
	ld (ix+020h),a		;6c74
l6c77h:
	and a			;6c77
	ret z			;6c78
	dec a			;6c79
	push af			;6c7a
	add a,00fh		;6c7b
sub_6c7dh:
	call 07a43h		;6c7d
	pop af			;6c80
	add a,012h		;6c81
	jp 07a43h		;6c83
	ld a,(ix+025h)		;6c86
	inc a			;6c89
	cp 01eh			;6c8a
	jr nz,l6c90h		;6c8c
	ld a,01bh		;6c8e
l6c90h:
	ld (ix+025h),a		;6c90
	jp 07a43h		;6c93
	call 0acd8h		;6c96
	ret nz			;6c99
	ld b,008h		;6c9a
	call 06aech		;6c9c
	push af			;6c9f
	call 0acbah		;6ca0
	ld a,005h		;6ca3
	call 04776h		;6ca5
	pop bc			;6ca8
	ld a,(ix+001h)		;6ca9
	cp 005h			;6cac
	ret nc			;6cae
	ld a,003h		;6caf
	add a,b			;6cb1
	call 0acbah		;6cb2
	ld a,009h		;6cb5
	jp 04776h		;6cb7
	and 007h		;6cba
	ld l,a			;6cbc
	ld h,000h		;6cbd
	add hl,hl		;6cbf
	ld de,0acc8h		;6cc0
	add hl,de		;6cc3
	ld d,(hl)		;6cc4
	inc hl			;6cc5
	ld e,(hl)		;6cc6
	ret			;6cc7
	ld d,b			;6cc8
	nop			;6cc9
	ld d,b			;6cca
	ld bc,00250h		;6ccb
	ld h,b			;6cce
	ld (bc),a		;6ccf
	ld h,b			;6cd0
	inc bc			;6cd1
	ld h,b			;6cd2
	inc bc			;6cd3
	ld (hl),b		;6cd4
	inc bc			;6cd5
	ld (hl),b		;6cd6
	inc b			;6cd7
	ld a,(0ca02h)		;6cd8
	and 001h		;6cdb
	ret			;6cdd
	jp p,007ach		;6cde
	xor l			;6ce1
	ld hl,03badh		;6ce2
	xor l			;6ce5
	ld d,l			;6ce6
	xor l			;6ce7
	ld l,a			;6ce8
	xor l			;6ce9
	adc a,(hl)		;6cea
	xor l			;6ceb
	xor l			;6cec
	xor l			;6ced
	call z,0ebadh		;6cee
	xor l			;6cf1
	dec d			;6cf2
	nop			;6cf3
	ld (bc),a		;6cf4
	ld bc,0fe00h		;6cf5
	ld sp,hl		;6cf8
	inc b			;6cf9
	ld bc,0fe01h		;6cfa
	djnz l6d03h		;6cfd
	ld bc,0fe02h		;6cff
	nop			;6d02
l6d03h:
	dec c			;6d03
	ld bc,0ff03h		;6d04
	ld a,(de)		;6d07
	nop			;6d08
	ld (bc),a		;6d09
	ld bc,0fe00h		;6d0a
	ld sp,hl		;6d0d
	inc b			;6d0e
	ld bc,0fe01h		;6d0f
	djnz l6d18h		;6d12
	ld bc,0fe02h		;6d14
	nop			;6d17
l6d18h:
	dec c			;6d18
	ld bc,0fe03h		;6d19
	ld (bc),a		;6d1c
	ld (bc),a		;6d1d
	ld bc,0ff04h		;6d1e
	ld a,(de)		;6d21
	nop			;6d22
	ld (bc),a		;6d23
	ld bc,0fe00h		;6d24
	ld sp,hl		;6d27
	inc b			;6d28
	ld bc,0fe01h		;6d29
	djnz l6d32h		;6d2c
	ld bc,0fe02h		;6d2e
	nop			;6d31
l6d32h:
	dec c			;6d32
	ld bc,0fe03h		;6d33
	ld (bc),a		;6d36
	ld (bc),a		;6d37
	ld bc,0ff05h		;6d38
	ld a,(de)		;6d3b
	nop			;6d3c
	ld (bc),a		;6d3d
	ld bc,0fe00h		;6d3e
	ld sp,hl		;6d41
	inc b			;6d42
	ld bc,0fe01h		;6d43
	djnz l6d4ch		;6d46
	ld bc,0fe02h		;6d48
	nop			;6d4b
l6d4ch:
	dec c			;6d4c
	ld bc,0fe03h		;6d4d
	ld (bc),a		;6d50
	ld (bc),a		;6d51
	ld bc,0ff06h		;6d52
	ld a,(de)		;6d55
	nop			;6d56
	ld (bc),a		;6d57
	ld bc,0fe00h		;6d58
	ld sp,hl		;6d5b
	inc b			;6d5c
	ld bc,0fe01h		;6d5d
	djnz l6d66h		;6d60
	ld bc,0fe02h		;6d62
	nop			;6d65
l6d66h:
	dec c			;6d66
	ld bc,0fe03h		;6d67
	ld (bc),a		;6d6a
	ld (bc),a		;6d6b
	ld bc,0ff07h		;6d6c
	rra			;6d6f
	nop			;6d70
	ld (bc),a		;6d71
	ld bc,0fe00h		;6d72
	ld sp,hl		;6d75
	inc b			;6d76
	ld bc,0fe01h		;6d77
	djnz l6d80h		;6d7a
	ld bc,0fe02h		;6d7c
	nop			;6d7f
l6d80h:
	dec c			;6d80
	ld bc,0fe03h		;6d81
	ld b,001h		;6d84
	ld bc,0fe0ah		;6d86
	ld (bc),a		;6d89
	ld (bc),a		;6d8a
	ld bc,0ff07h		;6d8b
	rra			;6d8e
	nop			;6d8f
	ld (bc),a		;6d90
	ld bc,0fe00h		;6d91
	ld sp,hl		;6d94
	inc b			;6d95
	ld bc,0fe01h		;6d96
	djnz l6d9fh		;6d99
	ld bc,0fe02h		;6d9b
	nop			;6d9e
l6d9fh:
	dec c			;6d9f
	ld bc,0fe03h		;6da0
	ld b,000h		;6da3
	ld bc,0fe0bh		;6da5
	ld (bc),a		;6da8
	ld (bc),a		;6da9
	ld bc,0ff07h		;6daa
	rra			;6dad
	nop			;6dae
	ld (bc),a		;6daf
	ld bc,0fe00h		;6db0
	ld sp,hl		;6db3
	inc b			;6db4
	ld bc,0fe01h		;6db5
	djnz l6dbeh		;6db8
	ld bc,0fe02h		;6dba
	nop			;6dbd
l6dbeh:
	dec c			;6dbe
	ld bc,0fe03h		;6dbf
	dec b			;6dc2
	nop			;6dc3
	ld bc,0fe0ch		;6dc4
	ld (bc),a		;6dc7
	ld (bc),a		;6dc8
	ld bc,0ff07h		;6dc9
	rra			;6dcc
	nop			;6dcd
	ld (bc),a		;6dce
	ld bc,0fe00h		;6dcf
	ld sp,hl		;6dd2
	inc b			;6dd3
	ld bc,0fe01h		;6dd4
	djnz l6dddh		;6dd7
	ld bc,0fe02h		;6dd9
	nop			;6ddc
l6dddh:
	dec c			;6ddd
	ld bc,0fe03h		;6dde
	dec b			;6de1
	nop			;6de2
	ld bc,0fe0dh		;6de3
	ld (bc),a		;6de6
	ld (bc),a		;6de7
	ld bc,0ff07h		;6de8
	rra			;6deb
	nop			;6dec
	ld (bc),a		;6ded
	ld bc,0fe00h		;6dee
	ld sp,hl		;6df1
	inc b			;6df2
	ld bc,0fe01h		;6df3
	djnz l6dfch		;6df6
	ld bc,0fe02h		;6df8
	nop			;6dfb
l6dfch:
	dec c			;6dfc
	ld bc,0fe03h		;6dfd
	inc b			;6e00
	nop			;6e01
	ld bc,0fe0eh		;6e02
	ld (bc),a		;6e05
	ld (bc),a		;6e06
	ld bc,0ff07h		;6e07
	call 0aef9h		;6e0a
	call 06a13h		;6e0d
	call sub_6e91h		;6e10
	ld a,0f4h		;6e13
	call l6c74h+1		;6e15
	ld de,0b03ch		;6e18
	call 07b65h		;6e1b
	ld a,(ix+001h)		;6e1e
	dec a			;6e21
	jr z,l6e41h		;6e22
	dec a			;6e24
	jr z,l6e64h		;6e25
	dec a			;6e27
	jr z,l6e88h		;6e28
	ld (ix+008h),009h	;6e2a
	ld (ix+00ah),028h	;6e2e
	call 0af66h		;6e32
	call 0af92h		;6e35
	call 0aebbh		;6e38
	call 069d7h		;6e3b
	jp l6c1dh		;6e3e
l6e41h:
	call 0afaah		;6e41
	call 0afd4h		;6e44
	ld (ix+021h),001h	;6e47
	call 0aee2h		;6e4b
	inc (ix+020h)		;6e4e
	ld a,(ix+020h)		;6e51
	cp 050h			;6e54
	ret nz			;6e56
	ld (ix+021h),000h	;6e57
	call 0aee2h		;6e5b
	call 0b002h		;6e5e
	jp l6c1dh		;6e61
l6e64h:
	call 0af66h		;6e64
	call 0afaah		;6e67
	call 0af8ch		;6e6a
	call 0afb3h		;6e6d
	call 0afd4h		;6e70
	call 0aed8h		;6e73
	call 0aeabh		;6e76
	dec (ix+011h)		;6e79
	ret nz			;6e7c
	call 0b002h		;6e7d
	ld l,000h		;6e80
	call 0aee5h		;6e82
	jp l6c1dh		;6e85
l6e88h:
	call 0af66h		;6e88
	call 0af8ch		;6e8b
	call 0afd4h		;6e8e
sub_6e91h:
	ld a,(ix+010h)		;6e91
	and a			;6e94
	jr z,l6e9dh		;6e95
	dec (ix+010h)		;6e97
	jp 0b04eh		;6e9a
l6e9dh:
	call sub_6ad2h		;6e9d
	ret nz			;6ea0
	ld (ix+001h),002h	;6ea1
	ld bc,0fe03h		;6ea5
	jp 0751ah		;6ea8
	call sub_6adfh		;6eab
	ret nz			;6eae
	ld de,00000h		;6eaf
	call 09157h		;6eb2
	ld de,00007h		;6eb5
	call 09157h		;6eb8
	ld a,(ix+012h)		;6ebb
	cp 005h			;6ebe
	jr c,l6ec3h		;6ec0
	xor a			;6ec2
l6ec3h:
	ld l,a			;6ec3
	inc a			;6ec4
	ld (ix+012h),a		;6ec5
	ld h,000h		;6ec8
	ld de,0aed3h		;6eca
	add hl,de		;6ecd
	ld a,(hl)		;6ece
	ld (ix+018h),a		;6ecf
	ret			;6ed2
	inc de			;6ed3
	daa			;6ed4
	inc sp			;6ed5
	jr l6eefh		;6ed6
	ld a,(ix+022h)		;6ed8
	dec (ix+022h)		;6edb
	and a			;6ede
	call z,0af18h		;6edf
	ld l,(ix+021h)		;6ee2
	ld h,000h		;6ee5
	add hl,hl		;6ee7
	add hl,hl		;6ee8
	ld de,0af37h		;6ee9
	add hl,de		;6eec
	ld e,(hl)		;6eed
	inc hl			;6eee
l6eefh:
	ld d,(hl)		;6eef
	inc hl			;6ef0
	ld a,(hl)		;6ef1
	inc hl			;6ef2
	ld h,(hl)		;6ef3
	ld l,a			;6ef4
	ex de,hl		;6ef5
	jp 06c6dh		;6ef6
	ld a,(ix+008h)		;6ef9
	cp 014h			;6efc
	ret c			;6efe
	ld (ix+016h),000h	;6eff
	ld (ix+004h),001h	;6f03
	ld a,(ix+008h)		;6f07
	dec a			;6f0a
	dec a			;6f0b
	ld (ix+008h),a		;6f0c
	ld hl,00000h		;6f0f
	ld de,00000h		;6f12
	jp 06c6dh		;6f15
	ld l,(ix+023h)		;6f18
	ld h,000h		;6f1b
	add hl,hl		;6f1d
	ld de,0af53h		;6f1e
	add hl,de		;6f21
	ld a,(hl)		;6f22
	inc a			;6f23
	jr nz,l6f2ah		;6f24
	ld (ix+023h),a		;6f26
	ex de,hl		;6f29
l6f2ah:
	inc (ix+023h)		;6f2a
	ld a,(hl)		;6f2d
	ld (ix+021h),a		;6f2e
	inc hl			;6f31
	ld a,(hl)		;6f32
	ld (ix+022h),a		;6f33
	ret			;6f36
	nop			;6f37
	nop			;6f38
	nop			;6f39
	nop			;6f3a
	nop			;6f3b
	nop			;6f3c
	ret nz			;6f3d
	rst 38h			;6f3e
	nop			;6f3f
	nop			;6f40
	ld b,b			;6f41
	nop			;6f42
	ld h,b			;6f43
	nop			;6f44
	nop			;6f45
	nop			;6f46
	and b			;6f47
	rst 38h			;6f48
	nop			;6f49
	nop			;6f4a
	ld b,b			;6f4b
	nop			;6f4c
	ret nz			;6f4d
	rst 38h			;6f4e
	ret nz			;6f4f
	rst 38h			;6f50
	ret nz			;6f51
	rst 38h			;6f52
	inc bc			;6f53
	djnz l6f5ah		;6f54
	jr nz,$+5		;6f56
	jr nz,l6f5eh		;6f58
l6f5ah:
	jr nz,$+7		;6f5a
	jr nc,l6f60h		;6f5c
l6f5eh:
	jr nc,l6f66h		;6f5e
l6f60h:
	jr nc,l6f64h		;6f60
	jr nc,$+5		;6f62
l6f64h:
	djnz $+1		;6f64
l6f66h:
	ld a,(ix+024h)		;6f66
	dec (ix+024h)		;6f69
	and a			;6f6c
	ret nz			;6f6d
	ld a,(ix+025h)		;6f6e
	ld l,a			;6f71
	ld h,000h		;6f72
	inc a			;6f74
	cp 004h			;6f75
	jr nz,l6f7ah		;6f77
	xor a			;6f79
l6f7ah:
	ld (ix+025h),a		;6f7a
	add hl,hl		;6f7d
	ld de,0b02ch		;6f7e
	add hl,de		;6f81
	ld a,(hl)		;6f82
	ld (ix+026h),a		;6f83
	inc hl			;6f86
	ld a,(hl)		;6f87
	ld (ix+024h),a		;6f88
	ret			;6f8b
	ld a,(0ca02h)		;6f8c
	and 003h		;6f8f
	ret nz			;6f91
	ld a,(ix+027h)		;6f92
	ld l,a			;6f95
	ld h,000h		;6f96
	inc a			;6f98
	cp 004h			;6f99
	jr nz,l6f9eh		;6f9b
	xor a			;6f9d
l6f9eh:
	ld (ix+027h),a		;6f9e
	ld de,0b034h		;6fa1
	add hl,de		;6fa4
	ld a,(hl)		;6fa5
	ld (ix+028h),a		;6fa6
	ret			;6fa9
	ld a,(0ca02h)		;6faa
	rrca			;6fad
	ret c			;6fae
	inc (ix+029h)		;6faf
	ret			;6fb2
	ld a,(ix+02ah)		;6fb3
	inc (ix+02ah)		;6fb6
	and 003h		;6fb9
	ret nz			;6fbb
	ld a,(ix+02bh)		;6fbc
	ld l,a			;6fbf
	ld h,000h		;6fc0
	inc a			;6fc2
	cp 004h			;6fc3
	jr nz,l6fc8h		;6fc5
	xor a			;6fc7
l6fc8h:
	ld (ix+02bh),a		;6fc8
	ld de,0b038h		;6fcb
	add hl,de		;6fce
	ld a,(hl)		;6fcf
	ld (ix+02ch),a		;6fd0
	ret			;6fd3
	ld a,(ix+026h)		;6fd4
	call 07a43h		;6fd7
	ld a,(ix+028h)		;6fda
	call 07a43h		;6fdd
	ld a,(ix+02ch)		;6fe0
	and a			;6fe3
	jr z,l6fe9h		;6fe4
	call 07a43h		;6fe6
l6fe9h:
	ld a,(ix+029h)		;6fe9
	rrca			;6fec
	jr c,l6ff8h		;6fed
	ld a,006h		;6fef
	call 07a43h		;6ff1
	ld a,008h		;6ff4
	jr l6fffh		;6ff6
l6ff8h:
	ld a,007h		;6ff8
	call 07a43h		;6ffa
	ld a,009h		;6ffd
l6fffh:
	jp 07a43h		;6fff
	ld l,(ix+00fh)		;7002
	inc (ix+00fh)		;7005
	ld h,000h		;7008
	add hl,hl		;700a
	ld de,0b025h		;700b
	add hl,de		;700e
	ld a,(hl)		;700f
	inc a			;7010
	jr nz,l7017h		;7011
	ld (ix+00fh),a		;7013
	ex de,hl		;7016
l7017h:
	ld a,(hl)		;7017
	ld (ix+010h),a		;7018
	inc hl			;701b
	ld a,(hl)		;701c
	ld (ix+011h),a		;701d
	ld (ix+017h),020h	;7020
	ret			;7024
	ex af,af'		;7025
	jr l7032h		;7026
	jr z,l7036h		;7028
	ld c,b			;702a
	rst 38h			;702b
	ld a,(bc)		;702c
	inc b			;702d
	dec bc			;702e
	ld (bc),a		;702f
	inc c			;7030
	ld (bc),a		;7031
l7032h:
	dec bc			;7032
	ld (bc),a		;7033
	inc bc			;7034
	inc b			;7035
l7036h:
	dec b			;7036
	inc b			;7037
	nop			;7038
	dec c			;7039
	ld c,00dh		;703a
	ld a,0b0h		;703c
	djnz l7040h		;703e
l7040h:
	nop			;7040
	ld bc,0fe02h		;7041
	ei			;7044
	ld sp,hl		;7045
	ld bc,0fe00h		;7046
	ex af,af'		;7049
	ld sp,hl		;704a
	ld bc,0ff01h		;704b
	ld a,058h		;704e
	call sub_684ch		;7050
	ret c			;7053
	ld bc,0fbfdh		;7054
	ld a,(0ca02h)		;7057
	rrca			;705a
	jr c,l7063h		;705b
	ld bc,0fb09h		;705d
	inc (iy+020h)		;7060
l7063h:
	jp 06929h		;7063
	ld a,(ix+001h)		;7066
	dec a			;7069
	jr z,l70b6h		;706a
	dec a			;706c
	jr z,l70c0h		;706d
	ld a,00ah		;706f
	ld (0ca26h),a		;7071
	call 04678h		;7074
	and 03fh		;7077
	ld b,a			;7079
	ld a,(ix+020h)		;707a
	and a			;707d
	ld a,080h		;707e
	jr z,l7084h		;7080
	ld a,040h		;7082
l7084h:
	add a,b			;7084
	call 09de8h		;7085
	call 07240h		;7088
	sra h			;708b
	rr l			;708d
	sra h			;708f
	rr l			;7091
	sra h			;7093
	rr l			;7095
	ld (ix+00fh),l		;7097
	ld (ix+010h),h		;709a
	sra d			;709d
	rr e			;709f
	sra d			;70a1
	rr e			;70a3
	sra d			;70a5
	rr e			;70a7
	ld (ix+011h),e		;70a9
	ld (ix+012h),d		;70ac
	ld (ix+017h),009h	;70af
	jp l6c1dh		;70b3
l70b6h:
	call sub_6a9ah		;70b6
	call sub_6ad2h		;70b9
	ret nz			;70bc
	jp l6c1dh		;70bd
l70c0h:
	ret			;70c0
	ret			;70c1
	call 0b4c1h		;70c2
	ld de,0b455h		;70c5
	call 07b65h		;70c8
	ret			;70cb
	ld a,(ix+001h)		;70cc
	cp 006h			;70cf
	jp nc,04ae0h		;70d1
	call 0461ah		;70d4
	and 0b0h		;70d7
	ei			;70d9
	or b			;70da
	rrca			;70db
	or c			;70dc
	dec hl			;70dd
	or c			;70de
	ld b,c			;70df
	or c			;70e0
	ld h,h			;70e1
	or c			;70e2
	call 06c4bh		;70e3
	call sub_6754h		;70e6
	ld (ix+006h),000h	;70e9
	ld (ix+008h),006h	;70ed
	ld (ix+00ah),01fh	;70f1
	call 069d7h		;70f5
	call l6c1dh		;70f8
	ld b,008h		;70fb
l70fdh:
	push bc			;70fd
	call 0b39dh		;70fe
	jr c,l710bh		;7101
	pop bc			;7103
	djnz l70fdh		;7104
	call l6c1dh		;7106
	jr l710fh		;7109
l710bh:
	pop bc			;710b
	call l6c1dh		;710c
l710fh:
	ld b,008h		;710f
l7111h:
	push bc			;7111
	call 0688bh		;7112
	jr c,l7125h		;7115
	call 06886h		;7117
	push ix			;711a
	push iy			;711c
	pop ix			;711e
	call 06c21h		;7120
	pop ix			;7123
l7125h:
	pop bc			;7125
	djnz l7111h		;7126
	jp l6c1dh		;7128
	call 0b0c2h		;712b
	ld a,(ix+037h)		;712e
	or a			;7131
	ret nz			;7132
	inc (ix+001h)		;7133
	ld hl,0b4a3h		;7136
	call 04ce0h		;7139
	ld (ix+017h),010h	;713c
	ret			;7140
	call 0b0c2h		;7141
	dec (ix+017h)		;7144
	ret nz			;7147
	set 7,(ix+014h)		;7148
	inc (ix+001h)		;714c
	ld (ix+003h),00ah	;714f
	ld (ix+018h),032h	;7153
	set 4,(ix+015h)		;7157
	call 04e73h		;715b
	ld hl,0b366h		;715e
	jp 0b2edh		;7161
	call 06a13h		;7164
	call 0b290h		;7167
	call 0b170h		;716a
	jp 0b0c2h		;716d
	dec (ix+018h)		;7170
	jr z,l717eh		;7173
	dec (ix+018h)		;7175
	jr z,l717eh		;7178
	dec (ix+018h)		;717a
	ret nz			;717d
l717eh:
	ld a,(ix+003h)		;717e
	res 7,a			;7181
	ld (ix+018h),a		;7183
sub_7186h:
	ld a,(ix+002h)		;7186
	push af			;7189
	call 0b1b4h		;718a
	pop af			;718d
	inc a			;718e
	cp 008h			;718f
	jr c,l7194h		;7191
	xor a			;7193
l7194h:
	ld (ix+002h),a		;7194
	ld a,(ix+003h)		;7197
	bit 7,a			;719a
	jr z,l71aah		;719c
	inc a			;719e
	ld (ix+003h),a		;719f
	cp 088h			;71a2
	ret c			;71a4
	ld (ix+003h),007h	;71a5
	ret			;71a9
l71aah:
	dec a			;71aa
	ld (ix+003h),a		;71ab
	ret nz			;71ae
	ld (ix+003h),082h	;71af
	ret			;71b3
	push ix			;71b4
	push ix			;71b6
	ld a,05ch		;71b8
	call 069a3h		;71ba
	pop iy			;71bd
	call nc,0b1e4h		;71bf
	pop ix			;71c2
	ld a,(ix+018h)		;71c4
	and 07fh		;71c7
	cp 005h			;71c9
	ld a,02dh		;71cb
	jp nc,04af5h		;71cd
	bit 0,(ix+002h)		;71d0
	ret nz			;71d4
	jp 04af5h		;71d5
	ld a,(de)		;71d8
	inc de			;71d9
	ld l,a			;71da
	rlca			;71db
	sbc a,a			;71dc
	ld h,a			;71dd
	add hl,hl		;71de
	add hl,hl		;71df
	add hl,hl		;71e0
	add hl,hl		;71e1
	add hl,hl		;71e2
	ret			;71e3
	ld a,(iy+002h)		;71e4
	ld (ix+003h),a		;71e7
	add a,a			;71ea
	add a,a			;71eb
	ld e,a			;71ec
	ld d,000h		;71ed
	ld hl,0b248h		;71ef
	add hl,de		;71f2
	ex de,hl		;71f3
	call 0b1d8h		;71f4
	ld b,(iy+008h)		;71f7
	ld c,(iy+007h)		;71fa
	add hl,bc		;71fd
	ld (ix+008h),h		;71fe
	ld (ix+007h),l		;7201
	call 0b1d8h		;7204
	ld b,(iy+00ah)		;7207
	ld c,(iy+009h)		;720a
	add hl,bc		;720d
	ld (ix+00ah),h		;720e
	ld (ix+009h),l		;7211
	call 0b1d8h		;7214
	ld b,(iy+00eh)		;7217
	ld c,(iy+00dh)		;721a
	sra b			;721d
	rr c			;721f
	add hl,bc		;7221
	ld (ix+00eh),h		;7222
	ld (ix+00dh),l		;7225
	call 0b1d8h		;7228
	ld b,(iy+00ch)		;722b
	ld c,(iy+00bh)		;722e
	sra b			;7231
	rr c			;7233
	add hl,bc		;7235
	ld (ix+00ch),h		;7236
	ld (ix+00bh),l		;7239
	ld a,000h		;723c
	call 0b268h		;723e
	ld (ix+006h),a		;7241
	ld (ix+005h),a		;7244
	ret			;7247
	ret m			;7248
	ret m			;7249
	jp m,0f8fah		;724a
	jr nz,l724fh		;724d
l724fh:
	ret m			;724f
	ret m			;7250
	ld b,b			;7251
	ld b,0fah		;7252
	jr nz,$+74		;7254
	ex af,af'		;7256
	nop			;7257
	ld b,b			;7258
	ld b,b			;7259
	ld b,006h		;725a
	ld c,b			;725c
	jr nz,l725fh		;725d
l725fh:
	ex af,af'		;725f
	ld b,b			;7260
	ret m			;7261
	jp m,02006h		;7262
	ret p			;7265
	ret m			;7266
	nop			;7267
	ld b,a			;7268
	ld a,(ix+003h)		;7269
	ld c,a			;726c
	add a,a			;726d
	add a,c			;726e
	add a,b			;726f
	ld hl,0b278h		;7270
	call 04600h		;7273
	ld a,(hl)		;7276
	ret			;7277
	ld b,007h		;7278
	ex af,af'		;727a
	nop			;727b
	ld bc,00302h		;727c
	inc b			;727f
	dec b			;7280
	add hl,bc		;7281
	ld a,(bc)		;7282
	dec bc			;7283
	ex af,af'		;7284
	rlca			;7285
	ld b,002h		;7286
	ld bc,00500h		;7288
	inc b			;728b
	inc bc			;728c
	dec bc			;728d
	ld a,(bc)		;728e
	add hl,bc		;728f
	call sub_6c7dh		;7290
	ld h,(ix+010h)		;7293
	ld l,(ix+00fh)		;7296
	ld d,(ix+012h)		;7299
	ld e,(ix+011h)		;729c
	call 06d4fh		;729f
	call 0b2f2h		;72a2
	jp c,0b329h		;72a5
l72a8h:
	call 0b335h		;72a8
	push af			;72ab
	ld (ix+024h),d		;72ac
	ld (ix+023h),e		;72af
	push de			;72b2
	ld h,(ix+008h)		;72b3
	ld l,(ix+007h)		;72b6
	call 0b2d9h		;72b9
	ld e,h			;72bc
	ld h,(ix+00ah)		;72bd
	ld l,(ix+009h)		;72c0
	call 0b2d9h		;72c3
	ld d,h			;72c6
	pop bc			;72c7
	pop af			;72c8
	call sub_6b63h		;72c9
	ld (ix+010h),h		;72cc
	ld (ix+00fh),l		;72cf
	ld (ix+012h),d		;72d2
	ld (ix+011h),e		;72d5
	ret			;72d8
	bit 7,h			;72d9
	jr z,l72e1h		;72db
	ld hl,00000h		;72dd
	ret			;72e0
l72e1h:
	add hl,hl		;72e1
	jr c,l72e9h		;72e2
	add hl,hl		;72e4
	jr c,l72e9h		;72e5
	add hl,hl		;72e7
	ret nc			;72e8
l72e9h:
	ld hl,000ffh		;72e9
	ret			;72ec
	call 0b34eh		;72ed
	jr l72a8h		;72f0
	ld l,(ix+024h)		;72f2
	ld h,000h		;72f5
	add hl,hl		;72f7
	add hl,hl		;72f8
	add hl,hl		;72f9
	add hl,hl		;72fa
	add hl,hl		;72fb
	ld d,(ix+00ah)		;72fc
	ld e,(ix+009h)		;72ff
	sbc hl,de		;7302
	bit 7,h			;7304
l7306h:
	call nz,04612h		;7306
	push hl			;7309
	ld l,(ix+023h)		;730a
	ld h,000h		;730d
	add hl,hl		;730f
	add hl,hl		;7310
	add hl,hl		;7311
	add hl,hl		;7312
	add hl,hl		;7313
	ld d,(ix+008h)		;7314
	ld e,(ix+007h)		;7317
	sbc hl,de		;731a
	bit 7,h			;731c
	call nz,04612h		;731e
	pop de			;7321
	add hl,de		;7322
	ld de,00400h		;7323
	sbc hl,de		;7326
	ret			;7328
	call 0b32fh		;7329
	jp 0b2abh		;732c
	call 0b335h		;732f
	call 0b34eh		;7332
l7335h:
	ld h,(ix+021h)		;7335
	ld l,(ix+022h)		;7338
	ld a,(hl)		;733b
	inc hl			;733c
	bit 7,a			;733d
	jr nz,l7346h		;733f
	ld e,(hl)		;7341
	inc hl			;7342
	ld d,(hl)		;7343
	inc hl			;7344
	ret			;7345
l7346h:
	call 0b355h		;7346
	call 0b34eh		;7349
	jr l7335h		;734c
	ld (ix+021h),h		;734e
	ld (ix+022h),l		;7351
	ret			;7354
	inc a			;7355
	jr z,l7361h		;7356
	call 0b341h		;7358
	push hl			;735b
	call 0b4b6h		;735c
	pop hl			;735f
	ret			;7360
l7361h:
	call 0b341h		;7361
	ex de,hl		;7364
	ret			;7365
	cp 0f4h			;7366
	or h			;7368
	inc b			;7369
	jr c,$+98		;736a
	ex af,af'		;736c
	jr nz,$-70		;736d
	inc c			;736f
	ld l,b			;7370
	cp b			;7371
	djnz $+106		;7372
	jr l738ah		;7374
	jr nz,l7390h		;7376
	ex af,af'		;7378
	ex af,af'		;7379
	cp b			;737a
	ex af,af'		;737b
l737ch:
	ld h,b			;737c
	cp b			;737d
	ex af,af'		;737e
	ld h,b			;737f
	ex af,af'		;7380
	ex af,af'		;7381
	ex af,af'		;7382
	ex af,af'		;7383
	ex af,af'		;7384
	ex af,af'		;7385
	cp b			;7386
	ex af,af'		;7387
	ld h,b			;7388
	ex af,af'		;7389
l738ah:
	ex af,af'		;738a
	ex af,af'		;738b
	ex af,af'		;738c
	ex af,af'		;738d
	ld h,b			;738e
	cp b			;738f
l7390h:
	ex af,af'		;7390
	ld h,b			;7391
	ex af,af'		;7392
	ex af,af'		;7393
	ex af,af'		;7394
	ex af,af'		;7395
	rst 38h			;7396
	ld a,b			;7397
	or e			;7398
	call 0b3a0h		;7399
	ret			;739c
	ld a,008h		;739d
	sub b			;739f
	ld l,a			;73a0
	ld h,000h		;73a1
	add hl,hl		;73a3
	ld e,l			;73a4
	ld d,h			;73a5
	add hl,hl		;73a6
	add hl,de		;73a7
	ld de,0b3dbh		;73a8
	add hl,de		;73ab
	push hl			;73ac
	call 067feh		;73ad
	pop hl			;73b0
	ret c			;73b1
	ld b,(hl)		;73b2
	inc hl			;73b3
	ld c,(hl)		;73b4
	inc hl			;73b5
	push hl			;73b6
	call 06929h		;73b7
	pop hl			;73ba
	ld b,(hl)		;73bb
	inc hl			;73bc
	ld c,(hl)		;73bd
	inc hl			;73be
	ld (iy+006h),c		;73bf
	ld (iy+005h),b		;73c2
	ld b,(hl)		;73c5
	inc hl			;73c6
	ld c,(hl)		;73c7
	ld (iy+013h),b		;73c8
	set 7,c			;73cb
	ld (iy+014h),c		;73cd
	ld a,(ix+009h)		;73d0
	ld (iy+009h),a		;73d3
	call sub_699eh		;73d6
	or a			;73d9
	ret			;73da
	call m,00003h		;73db
	add hl,bc		;73de
	ld bc,00a01h		;73df
	inc bc			;73e2
	ld bc,00108h		;73e3
	ld bc,0fa00h		;73e6
	ld (bc),a		;73e9
	dec bc			;73ea
	add hl,bc		;73eb
	inc bc			;73ec
	inc b			;73ed
	jp m,00702h		;73ee
	ex af,af'		;73f1
	inc bc			;73f2
	ex af,af'		;73f3
	jp m,00c02h		;73f4
	add hl,bc		;73f7
	inc bc			;73f8
	nop			;73f9
	rlca			;73fa
	ld (bc),a		;73fb
	ld c,009h		;73fc
	inc bc			;73fe
	inc b			;73ff
	add hl,bc		;7400
	ld (bc),a		;7401
	ld b,008h		;7402
	inc bc			;7404
	ex af,af'		;7405
	rlca			;7406
	ld (bc),a		;7407
	rrca			;7408
	add hl,bc		;7409
	inc bc			;740a
	nop			;740b
	inc b			;740c
	ld (bc),a		;740d
	dec c			;740e
	ld a,(bc)		;740f
	ld (bc),a		;7410
	nop			;7411
	rst 30h			;7412
	ld (bc),a		;7413
	ld a,(bc)		;7414
	ld a,(bc)		;7415
	ld (bc),a		;7416
	inc bc			;7417
	inc b			;7418
	ld (bc),a		;7419
	dec c			;741a
	ld a,(bc)		;741b
	ld (bc),a		;741c
	inc bc			;741d
	rst 30h			;741e
	ld (bc),a		;741f
	ld a,(bc)		;7420
	ld a,(bc)		;7421
	ld (bc),a		;7422
	ld a,(ix+001h)		;7423
	dec a			;7426
	jr z,l743fh		;7427
	ret p			;7429
	ld (ix+001h),002h	;742a
	ld a,(ix+005h)		;742e
	cp 002h			;7431
	ret nc			;7433
	dec (ix+001h)		;7434
	call 0b447h		;7437
	res 4,(ix+015h)		;743a
	ret			;743e
l743fh:
	ld a,(ix+037h)		;743f
	or a			;7442
	ret nz			;7443
	jp 06e98h		;7444
	add a,a			;7447
	add a,008h		;7448
	push af			;744a
	call 0b399h		;744b
	pop bc			;744e
	ld a,b			;744f
	inc a			;7450
	call 0b399h		;7451
	ret			;7454
	ld h,c			;7455
	or h			;7456
	ld l,h			;7457
	or h			;7458
	ld (hl),a		;7459
	or h			;745a
	add a,d			;745b
	or h			;745c
	adc a,l			;745d
	or h			;745e
	sbc a,b			;745f
	or h			;7460
	dec bc			;7461
	nop			;7462
	nop			;7463
	ld bc,0fe00h		;7464
	inc b			;7467
	inc bc			;7468
	ld bc,0ff03h		;7469
	dec bc			;746c
	nop			;746d
	nop			;746e
	ld bc,0fe00h		;746f
	inc b			;7472
	inc bc			;7473
	ld bc,0ff01h		;7474
	dec bc			;7477
	nop			;7478
	nop			;7479
	ld bc,0fe00h		;747a
	inc b			;747d
	inc bc			;747e
	ld bc,0ff02h		;747f
	dec bc			;7482
	nop			;7483
	nop			;7484
	ld bc,0fe00h		;7485
	inc b			;7488
	dec b			;7489
	ld bc,0ff04h		;748a
	dec bc			;748d
	nop			;748e
	nop			;748f
	ld bc,0fe00h		;7490
	inc b			;7493
	inc bc			;7494
	ld bc,0ff05h		;7495
	dec bc			;7498
	nop			;7499
	nop			;749a
	ld bc,0fe00h		;749b
	inc b			;749e
	dec b			;749f
	ld bc,0ff10h		;74a0
	nop			;74a3
	nop			;74a4
	ld h,h			;74a5
	ld d,010h		;74a6
	ld hl,03220h		;74a8
	ld sp,04243h		;74ab
	ld d,h			;74ae
	nop			;74af
	sub b			;74b0
	nop			;74b1
	or b			;74b2
	nop			;74b3
	ret nz			;74b4
	rst 38h			;74b5
	ld (ix+026h),e		;74b6
	ld (ix+027h),d		;74b9
	ld (ix+025h),001h	;74bc
	ret			;74c0
	ld a,(ix+025h)		;74c1
	or a			;74c4
	ret z			;74c5
	dec a			;74c6
	ld (ix+025h),a		;74c7
	ret nz			;74ca
	ld l,(ix+026h)		;74cb
	ld h,(ix+027h)		;74ce
	call 0b4dbh		;74d1
	ld (ix+026h),l		;74d4
	ld (ix+027h),h		;74d7
	ret			;74da
l74dbh:
	ld a,(hl)		;74db
	inc hl			;74dc
	cp 0ffh			;74dd
	jr z,l74eeh		;74df
	ld (ix+025h),a		;74e1
	ld a,(hl)		;74e4
	bit 7,a			;74e5
	jr nz,l74ech		;74e7
	ld (ix+006h),a		;74e9
l74ech:
	inc hl			;74ec
sub_74edh:
	ret			;74ed
l74eeh:
	ld e,(hl)		;74ee
sub_74efh:
	inc hl			;74ef
	ld d,(hl)		;74f0
	ex de,hl		;74f1
	jr l74dbh		;74f2
	dec b			;74f4
	ld bc,00205h		;74f5
	inc bc			;74f8
	inc bc			;74f9
	ex af,af'		;74fa
	dec b			;74fb
	inc b			;74fc
	ld (bc),a		;74fd
	add hl,de		;74fe
	inc bc			;74ff
	dec b			;7500
	inc b			;7501
	dec b			;7502
	inc bc			;7503
	dec b			;7504
	dec b			;7505
	ld (bc),a		;7506
	ld (bc),a		;7507
	ld (bc),a		;7508
	ld bc,00002h		;7509
	ld (bc),a		;750c
	ld bc,00202h		;750d
	rst 38h			;7510
	cp 0b4h			;7511
	call 06a13h		;7513
	ld a,(ix+016h)		;7516
	cp 010h			;7519
	call c,0b53ah		;751b
	call 0b5fdh		;751e
	ld a,(ix+001h)		;7521
	cp 007h			;7524
	jp nc,04ae0h		;7526
	call 0461ah		;7529
	ld d,l			;752c
	or l			;752d
	ld (hl),e		;752e
	or l			;752f
	ld a,(hl)		;7530
	or l			;7531
	sbc a,a			;7532
	or l			;7533
	or a			;7534
	or l			;7535
	push bc			;7536
	or l			;7537
	in a,(0b5h)		;7538
	call 07058h		;753a
	ld (ix+016h),000h	;753d
	ld (ix+004h),001h	;7541
	ld a,002h		;7545
	ld (0c0d4h),a		;7547
	ret			;754a
	call 06c4bh		;754b
	ld bc,00206h		;754e
	ld (0ce69h),bc		;7551
	call sub_6754h		;7555
	ld a,(ix+008h)		;7558
	sub 004h		;755b
sub_755dh:
	ld (ix+008h),a		;755d
	ld (ix+00ah),007h	;7560
	ld (ix+018h),01eh	;7564
	call 069d7h		;7568
	ld a,020h		;756b
	ld (0ce4ah),a		;756d
	jp l6c1dh		;7570
	dec (ix+018h)		;7573
	ret nz			;7576
	ld (ix+017h),005h	;7577
	jp l6c1dh		;757b
	dec (ix+017h)		;757e
	ret nz			;7581
	ld (ix+017h),005h	;7582
	ld a,(ix+022h)		;7586
	push af			;7589
	or a			;758a
	ld a,02eh		;758b
	call z,04af5h		;758d
	pop af			;7590
	inc a			;7591
	ld (ix+022h),a		;7592
	cp 002h			;7595
	ret c			;7597
	ld (ix+017h),005h	;7598
	jp l6c1dh		;759c
	dec (ix+017h)		;759f
	ret nz			;75a2
	call 0b638h		;75a3
	ld (ix+017h),014h	;75a6
	ld a,(ix+021h)		;75aa
	inc a			;75ad
	ld (ix+021h),a		;75ae
	cp 004h			;75b1
	ret c			;75b3
	jp l6c1dh		;75b4
	dec (ix+017h)		;75b7
	ret nz			;75ba
	call 0b638h		;75bb
	ld (ix+017h),005h	;75be
	jp l6c1dh		;75c2
	dec (ix+017h)		;75c5
	ret nz			;75c8
	call 0b638h		;75c9
	ld (ix+017h),005h	;75cc
	ld a,(ix+021h)		;75d0
	dec a			;75d3
	ld (ix+021h),a		;75d4
	ret nz			;75d7
	jp l6c1dh		;75d8
	dec (ix+017h)		;75db
	ret nz			;75de
	ld (ix+017h),005h	;75df
	ld a,(ix+022h)		;75e3
	push af			;75e6
	cp 002h			;75e7
	ld a,02fh		;75e9
	call z,04af5h		;75eb
	pop af			;75ee
	dec a			;75ef
	ld (ix+022h),a		;75f0
	ret nz			;75f3
	ld (ix+001h),001h	;75f4
	ld (ix+018h),01eh	;75f8
	ret			;75fc
	call 0b60ch		;75fd
	ld a,(ix+022h)		;7600
	ld (ix+006h),a		;7603
	ld de,0b670h		;7606
	jp 07b65h		;7609
	ld a,(ix+021h)		;760c
	or a			;760f
	ret z			;7610
	ld b,(ix+008h)		;7611
	push bc			;7614
	neg			;7615
	add a,b			;7617
	inc a			;7618
	ld (ix+008h),a		;7619
	ld a,(ix+005h)		;761c
	inc a			;761f
	cp 008h			;7620
	jr c,l7625h		;7622
	xor a			;7624
l7625h:
	ld (ix+005h),a		;7625
	add a,003h		;7628
	ld (ix+006h),a		;762a
	ld de,0b670h		;762d
	call 07b65h		;7630
	pop bc			;7633
	ld (ix+008h),b		;7634
	ret			;7637
	ld hl,0ce80h		;7638
	ld b,014h		;763b
l763dh:
	ld a,(hl)		;763d
	cp 00dh			;763e
	ret z			;7640
	ld de,00040h		;7641
	add hl,de		;7644
	djnz l763dh		;7645
	push ix			;7647
	push ix			;7649
	ld a,00dh		;764b
	call 069a3h		;764d
	jr c,l766bh		;7650
	pop iy			;7652
	ld a,(iy+00ah)		;7654
	add a,008h		;7657
	ld (ix+00ah),a		;7659
	ld a,(iy+008h)		;765c
	add a,002h		;765f
	ld (ix+008h),a		;7661
	pop ix			;7664
	ld a,017h		;7666
	jp 04af5h		;7668
l766bh:
	pop ix			;766b
	pop ix			;766d
	ret			;766f
	add a,(hl)		;7670
	or (hl)			;7671
	adc a,h			;7672
	or (hl)			;7673
	sub d			;7674
	or (hl)			;7675
	sbc a,b			;7676
	or (hl)			;7677
	sbc a,(hl)		;7678
	or (hl)			;7679
	and h			;767a
	or (hl)			;767b
	xor d			;767c
	or (hl)			;767d
	or b			;767e
	or (hl)			;767f
	or (hl)			;7680
	or (hl)			;7681
	cp h			;7682
	or (hl)			;7683
	jp nz,006b6h		;7684
	inc b			;7687
	ld (bc),a		;7688
	ld bc,0ff00h		;7689
	ld b,004h		;768c
	ld bc,00101h		;768e
	rst 38h			;7691
	ld b,004h		;7692
	nop			;7694
	ld bc,0ff02h		;7695
	ld b,004h		;7698
	ld b,001h		;769a
	inc bc			;769c
	rst 38h			;769d
	ld b,004h		;769e
	ld b,001h		;76a0
	inc b			;76a2
	rst 38h			;76a3
	ld b,004h		;76a4
	ld b,001h		;76a6
	dec b			;76a8
	rst 38h			;76a9
	ld b,004h		;76aa
	ld b,001h		;76ac
	ld b,0ffh		;76ae
	ld b,004h		;76b0
	ld b,001h		;76b2
	rlca			;76b4
	rst 38h			;76b5
	ld b,004h		;76b6
	ld b,001h		;76b8
	ex af,af'		;76ba
	rst 38h			;76bb
	ld b,004h		;76bc
	ld b,001h		;76be
	add hl,bc		;76c0
	rst 38h			;76c1
	ld b,004h		;76c2
	ld b,001h		;76c4
	ld a,(bc)		;76c6
	rst 38h			;76c7
	ret			;76c8
	ld a,05eh		;76c9
	call sub_684ch		;76cb
	ret c			;76ce
	ld a,(ix+025h)		;76cf
	and a			;76d2
	ld bc,0fa07h		;76d3
	jr z,l76dbh		;76d6
	ld bc,0f509h		;76d8
l76dbh:
	jp 06929h		;76db
	ld a,(ix+001h)		;76de
	dec a			;76e1
	jr z,l7748h		;76e2
	dec a			;76e4
	jr z,l7758h		;76e5
	ld a,00eh		;76e7
	ld (0ca26h),a		;76e9
	call 04678h		;76ec
	and 03fh		;76ef
	add a,040h		;76f1
	call 09de8h		;76f3
	call 07240h		;76f6
	call 06bebh		;76f9
	sra h			;76fc
	rr l			;76fe
	sra h			;7700
	rr l			;7702
	sra h			;7704
	rr l			;7706
	call 04612h		;7708
	ld (ix+00fh),l		;770b
	ld (ix+010h),h		;770e
	sra d			;7711
	rr e			;7713
	sra d			;7715
	rr e			;7717
	sra d			;7719
	rr e			;771b
	ex de,hl		;771d
	call 04612h		;771e
	ld (ix+011h),l		;7721
	ld (ix+012h),h		;7724
	ld (ix+017h),00ch	;7727
	ld a,(0ca19h)		;772b
	cp 004h			;772e
	ld bc,00204h		;7730
	jr c,l773fh		;7733
	ld bc,00806h		;7735
	cp 008h			;7738
	jr c,l773fh		;773a
	ld bc,00e07h		;773c
l773fh:
	ld (ix+016h),b		;773f
	ld (ix+018h),c		;7742
	jp l6c1dh		;7745
l7748h:
	ld a,(0ca02h)		;7748
	and 007h		;774b
	ret nz			;774d
	call sub_6a9ah		;774e
	call sub_6ad2h		;7751
	ret nz			;7754
	jp l6c1dh		;7755
l7758h:
	call sub_6adfh		;7758
	ret nz			;775b
	ld (ix+018h),002h	;775c
	inc (ix+005h)		;7760
	ld a,(ix+005h)		;7763
	cp 003h			;7766
	ret nz			;7768
	jp 06e98h		;7769
	ld a,(0ce76h)		;776c
	or a			;776f
	jp nz,07cc3h		;7770
	ld a,(ix+001h)		;7773
	cp 002h			;7776
	jp nc,04ae0h		;7778
	call 0461ah		;777b
	add a,d			;777e
	or a			;777f
	rlca			;7780
	cp b			;7781
	call 06796h		;7782
	ld (ix+003h),a		;7785
	ld (ix+016h),0ffh	;7788
	ld (ix+005h),011h	;778c
	ld hl,0c000h		;7790
	ld (ix+021h),h		;7793
	ld (ix+022h),l		;7796
	ld (ix+008h),017h	;7799
	bit 0,(ix+003h)		;779d
	ld a,005h		;77a1
	ld hl,0b9d0h		;77a3
	jr z,l77adh		;77a6
	ld a,019h		;77a8
	ld hl,0b978h		;77aa
l77adh:
	ld (ix+00ah),a		;77ad
	ld (ix+028h),h		;77b0
	ld (ix+027h),l		;77b3
	call 0b7bch		;77b6
	jp l6c1dh		;77b9
	ld b,007h		;77bc
l77beh:
	push bc			;77be
	call 0b7cah		;77bf
	jr c,l77c8h		;77c2
	pop bc			;77c4
	djnz l77beh		;77c5
	ret			;77c7
l77c8h:
	pop bc			;77c8
	ret			;77c9
	call 0682ah		;77ca
	ret c			;77cd
	ld a,(ix+017h)		;77ce
	inc a			;77d1
	ld (ix+017h),a		;77d2
	ld (iy+005h),011h	;77d5
	ld (iy+016h),0ffh	;77d9
	rrca			;77dd
	jr nc,l77e7h		;77de
	set 3,(iy+015h)		;77e0
	dec (iy+005h)		;77e4
l77e7h:
	ld h,(ix+008h)		;77e7
	ld (iy+008h),h		;77ea
	ld h,(ix+00ah)		;77ed
	ld (iy+00ah),h		;77f0
	ld (iy+001h),001h	;77f3
	ld (ix+021h),000h	;77f7
	ld a,(iy+002h)		;77fb
	inc a			;77fe
	ld (iy+002h),a		;77ff
	ld (ix+002h),a		;7802
	or a			;7805
	ret			;7806
	ld a,(ix+016h)		;7807
	or a			;780a
	jp z,07cc3h		;780b
	call 068b9h		;780e
	call 0b82ch		;7811
	ld a,(ix+036h)		;7814
	or a			;7817
	ret nz			;7818
	ld a,(ix+021h)		;7819
	rrca			;781c
	rrca			;781d
	rrca			;781e
	rrca			;781f
	add a,004h		;7820
	and 00fh		;7822
	ld (ix+005h),a		;7824
	set 3,(ix+015h)		;7827
	ret			;782b
	jp c,0b8cbh		;782c
	call 0b899h		;782f
	call 0b842h		;7832
	ld a,(ix+004h)		;7835
	or a			;7838
	ret z			;7839
	ld (iy+004h),a		;783a
	ld (ix+004h),000h	;783d
	ret			;7841
	push af			;7842
	call sub_74edh		;7843
	call 0b873h		;7846
	pop af			;7849
	push af			;784a
	push hl			;784b
	call sub_74efh		;784c
	call 0b873h		;784f
	ld d,(iy+008h)		;7852
	ld e,(iy+007h)		;7855
	or a			;7858
	add hl,de		;7859
	ld (ix+008h),h		;785a
	ld (ix+007h),l		;785d
	ex (sp),hl		;7860
	ld d,(iy+00ah)		;7861
	ld e,(iy+009h)		;7864
	or a			;7867
	add hl,de		;7868
	ld (ix+00ah),h		;7869
	ld (ix+009h),l		;786c
	ex de,hl		;786f
	pop hl			;7870
	pop af			;7871
	ret			;7872
	bit 7,h			;7873
	jr z,l7880h		;7875
	call 04612h		;7877
	call 0b880h		;787a
	jp 04612h		;787d
l7880h:
	ld h,000h		;7880
	add hl,hl		;7882
	ld d,h			;7883
	ld e,l			;7884
	add hl,hl		;7885
	add hl,hl		;7886
	add hl,hl		;7887
	or a			;7888
	sbc hl,de		;7889
	add hl,hl		;788b
	add hl,hl		;788c
	add hl,hl		;788d
	add hl,hl		;788e
	rl l			;788f
	rl h			;7891
	sbc a,a			;7893
	ld l,h			;7894
	and 001h		;7895
	ld h,a			;7897
	ret			;7898
	ld h,(iy+025h)		;7899
	ld l,(iy+026h)		;789c
	ld d,(iy+023h)		;789f
	ld e,(iy+024h)		;78a2
	ld (ix+023h),d		;78a5
	ld (ix+024h),e		;78a8
	add hl,de		;78ab
	ld (ix+025h),h		;78ac
	ld (ix+026h),l		;78af
	ld d,(iy+021h)		;78b2
	ld e,(iy+022h)		;78b5
	add hl,de		;78b8
	ld (ix+021h),h		;78b9
	ld (ix+022h),l		;78bc
	ld a,h			;78bf
	ret			;78c0
	push hl			;78c1
	push af			;78c2
	ld hl,08000h		;78c3
	add hl,de		;78c6
	ex de,hl		;78c7
	pop af			;78c8
	pop hl			;78c9
	ret			;78ca
	ld a,(ix+004h)		;78cb
	or a			;78ce
	jr nz,l7923h		;78cf
	ld h,(ix+028h)		;78d1
	ld l,(ix+027h)		;78d4
	ld d,(ix+021h)		;78d7
	ld e,(ix+022h)		;78da
	call 0b949h		;78dd
	ld (ix+021h),d		;78e0
	ld (ix+022h),e		;78e3
	push af			;78e6
	ld d,(ix+025h)		;78e7
	ld e,(ix+026h)		;78ea
	call 0b8c1h		;78ed
	call 0b949h		;78f0
	call 0b8c1h		;78f3
	ld (ix+025h),d		;78f6
	ld (ix+026h),e		;78f9
	push af			;78fc
	ld d,(ix+023h)		;78fd
	ld e,(ix+024h)		;7900
	call 0b8c1h		;7903
	call 0b949h		;7906
	call 0b8c1h		;7909
	ld (ix+023h),d		;790c
	ld (ix+024h),e		;790f
	ld c,000h		;7912
	rr c			;7914
	pop af			;7916
	rr c			;7917
	pop af			;7919
	rr c			;791a
	ld a,c			;791c
	or a			;791d
	ret nz			;791e
	call 0b928h		;791f
	ret			;7922
l7923h:
	ld (ix+004h),000h	;7923
	ret			;7927
	ld h,(ix+028h)		;7928
	ld l,(ix+027h)		;792b
	ld de,0000ch		;792e
	add hl,de		;7931
	ld e,(hl)		;7932
	inc hl			;7933
	ld a,(hl)		;7934
	dec hl			;7935
	and e			;7936
	inc a			;7937
	call z,0b942h		;7938
	ld (ix+028h),h		;793b
	ld (ix+027h),l		;793e
	ret			;7941
	inc hl			;7942
	inc hl			;7943
	ld e,(hl)		;7944
	inc hl			;7945
	ld d,(hl)		;7946
	ex de,hl		;7947
	ret			;7948
	ld a,h			;7949
	or l			;794a
	ret z			;794b
	ld c,(hl)		;794c
	inc hl			;794d
	ld b,(hl)		;794e
	inc hl			;794f
	push bc			;7950
	ld c,(hl)		;7951
	inc hl			;7952
	ld b,(hl)		;7953
	inc hl			;7954
	ex (sp),hl		;7955
	call 0b95bh		;7956
	pop hl			;7959
	ret			;795a
	call 04650h		;795b
	ret z			;795e
	jr c,l796bh		;795f
	ex de,hl		;7961
	add hl,bc		;7962
	ex de,hl		;7963
	call 04650h		;7964
	ccf			;7967
	ret c			;7968
	jr l7974h		;7969
l796bh:
	ex de,hl		;796b
	or a			;796c
	sbc hl,bc		;796d
	ex de,hl		;796f
	call 04650h		;7970
	ret c			;7973
l7974h:
	ld d,h			;7974
	ld e,l			;7975
	or a			;7976
	ret			;7977
	nop			;7978
	sbc a,b			;7979
	nop			;797a
	ld b,000h		;797b
	add a,b			;797d
	add a,b			;797e
	ld bc,07800h		;797f
	add a,b			;7982
	ld bc,0d800h		;7983
	sub b			;7986
	nop			;7987
	nop			;7988
	ld a,e			;7989
	ld e,000h		;798a
	nop			;798c
	add a,b			;798d
	jr l7990h		;798e
l7990h:
	nop			;7990
	ret pe			;7991
	sub b			;7992
	nop			;7993
	nop			;7994
	add a,b			;7995
	ld e,000h		;7996
	nop			;7998
	adc a,b			;7999
	jr l799ch		;799a
l799ch:
	nop			;799c
	or b			;799d
	sub b			;799e
	nop			;799f
	nop			;79a0
	add a,b			;79a1
	ld e,000h		;79a2
	nop			;79a4
	ld a,b			;79a5
	jr l79a8h		;79a6
l79a8h:
	nop			;79a8
	or b			;79a9
	sub b			;79aa
	nop			;79ab
	nop			;79ac
	add a,b			;79ad
	ld e,000h		;79ae
	nop			;79b0
	ld a,(hl)		;79b1
	jr l79b4h		;79b2
l79b4h:
	nop			;79b4
	ret c			;79b5
	sub b			;79b6
	nop			;79b7
	nop			;79b8
	ld a,e			;79b9
	ld e,000h		;79ba
	nop			;79bc
	add a,b			;79bd
	jr l79c0h		;79be
l79c0h:
	nop			;79c0
	or b			;79c1
	sub b			;79c2
	nop			;79c3
	nop			;79c4
	add a,b			;79c5
	ld e,000h		;79c6
	nop			;79c8
	ld a,(hl)		;79c9
	jr l79cch		;79ca
l79cch:
	rst 38h			;79cc
	rst 38h			;79cd
	add a,h			;79ce
	cp c			;79cf
	nop			;79d0
	ret pe			;79d1
	nop			;79d2
	inc bc			;79d3
	nop			;79d4
	add a,b			;79d5
	add a,b			;79d6
	ld bc,08800h		;79d7
	add a,b			;79da
	ld bc,0a800h		;79db
	sub b			;79de
	nop			;79df
	nop			;79e0
	add a,l			;79e1
	ld e,000h		;79e2
	nop			;79e4
	add a,b			;79e5
	jr l79e8h		;79e6
l79e8h:
	nop			;79e8
	sbc a,b			;79e9
	sub b			;79ea
	nop			;79eb
	nop			;79ec
	add a,b			;79ed
	ld e,000h		;79ee
	nop			;79f0
	ld a,b			;79f1
	jr l79f4h		;79f2
l79f4h:
	nop			;79f4
	ret nc			;79f5
	sub b			;79f6
	nop			;79f7
	nop			;79f8
	add a,b			;79f9
	ld e,000h		;79fa
	nop			;79fc
	adc a,b			;79fd
	jr l7a00h		;79fe
l7a00h:
	nop			;7a00
	ret nc			;7a01
	sub b			;7a02
	nop			;7a03
	nop			;7a04
	add a,b			;7a05
	ld e,000h		;7a06
	nop			;7a08
	add a,d			;7a09
	jr l7a0ch		;7a0a
l7a0ch:
	nop			;7a0c
	xor b			;7a0d
	ret nz			;7a0e
	nop			;7a0f
	nop			;7a10
	add a,l			;7a11
	jr nc,l7a14h		;7a12
l7a14h:
	nop			;7a14
	add a,b			;7a15
	jr nc,l7a18h		;7a16
l7a18h:
	nop			;7a18
	ret nc			;7a19
	sub b			;7a1a
	nop			;7a1b
	nop			;7a1c
	add a,b			;7a1d
	ld e,000h		;7a1e
	nop			;7a20
	add a,d			;7a21
	jr l7a24h		;7a22
l7a24h:
	rst 38h			;7a24
	rst 38h			;7a25
	call c,0ddb9h		;7a26
	ld a,(hl)		;7a29
	rla			;7a2a
	inc a			;7a2b
	cp 003h			;7a2c
	jr c,l7a31h		;7a2e
	xor a			;7a30
l7a31h:
	ld (ix+017h),a		;7a31
	call 0b268h		;7a34
	ld (ix+005h),a		;7a37
	ret			;7a3a
	ld a,(ix+001h)		;7a3b
	dec a			;7a3e
	jr z,l7a5dh		;7a3f
	call sub_6754h		;7a41
	ld a,d			;7a44
	rla			;7a45
	ld c,006h		;7a46
	jr nc,l7a52h		;7a48
	inc (ix+020h)		;7a4a
	ld (ix+006h),001h	;7a4d
	inc c			;7a51
l7a52h:
	ld (ix+03eh),c		;7a52
	ld a,020h		;7a55
	call sub_6ae8h		;7a57
	jp l6c1dh		;7a5a
l7a5dh:
	call sub_6adfh		;7a5d
	ret nz			;7a60
	ld b,(ix+008h)		;7a61
	inc b			;7a64
	ld a,(0ca48h)		;7a65
	sub b			;7a68
	jr nc,l7a6dh		;7a69
	neg			;7a6b
l7a6dh:
	cp 004h			;7a6d
	jr nc,l7a81h		;7a6f
	ld b,(ix+00ah)		;7a71
	inc b			;7a74
	inc b			;7a75
	ld a,(0ca4ah)		;7a76
	sub b			;7a79
	jr nc,l7a7eh		;7a7a
	neg			;7a7c
l7a7eh:
	cp 006h			;7a7e
	ret c			;7a80
l7a81h:
	ld a,030h		;7a81
	call sub_6ae8h		;7a83
	call 06814h		;7a86
	ret c			;7a89
	ld a,(ix+020h)		;7a8a
	ld (iy+020h),a		;7a8d
	ld bc,00201h		;7a90
	and a			;7a93
	jr nz,l7a99h		;7a94
	ld bc,002feh		;7a96
l7a99h:
	call 06929h		;7a99
	jp sub_699eh		;7a9c
	ld a,(ix+001h)		;7a9f
	call 0461ah		;7aa2
	xor e			;7aa5
	cp d			;7aa6
	call pe,01abah		;7aa7
	cp e			;7aaa
	ld a,(ix+020h)		;7aab
	ld c,a			;7aae
	ld b,(ix+008h)		;7aaf
	ld (ix+022h),b		;7ab2
	call 0bb27h		;7ab5
	jr c,l7b24h		;7ab8
	ld a,c			;7aba
	and a			;7abb
	ld hl,0ff60h		;7abc
	ld de,00018h		;7abf
	jr z,l7acah		;7ac2
	ld hl,000a0h		;7ac4
	ld de,0ffe8h		;7ac7
l7acah:
	call 06bf3h		;7aca
	ex de,hl		;7acd
	call l6c0ah+2		;7ace
	ld hl,0ce55h		;7ad1
	ld a,(0ca19h)		;7ad4
	cp 004h			;7ad7
	ld b,002h		;7ad9
	jr c,l7adfh		;7adb
	ld b,004h		;7add
l7adfh:
	ld a,(hl)		;7adf
	inc a			;7ae0
	cp b			;7ae1
	jr c,l7ae8h		;7ae2
	xor a			;7ae4
	inc (ix+03dh)		;7ae5
l7ae8h:
	ld (hl),a		;7ae8
	jp l6c1dh		;7ae9
	ld a,(ix+020h)		;7aec
	and a			;7aef
	ld l,(ix+00ch)		;7af0
	ld h,(ix+00bh)		;7af3
	jr nz,l7afbh		;7af6
	call 04612h		;7af8
l7afbh:
	ld de,00008h		;7afb
	call 04650h		;7afe
	call c,sub_6a9ah	;7b01
	ld a,(ix+021h)		;7b04
	sub (ix+008h)		;7b07
	jr nc,l7b0eh		;7b0a
	neg			;7b0c
l7b0eh:
	cp 001h			;7b0e
	ret nc			;7b10
	call 0bb48h		;7b11
	call sub_6bf0h		;7b14
	jp l6c1dh		;7b17
	call sub_6a9ah		;7b1a
	ld a,(ix+008h)		;7b1d
	cp (ix+022h)		;7b20
	ret nz			;7b23
l7b24h:
	jp 06e98h		;7b24
	ld a,(0ca48h)		;7b27
	inc a			;7b2a
	ld d,a			;7b2b
	inc b			;7b2c
	sub b			;7b2d
	ld b,a			;7b2e
	ld a,c			;7b2f
	and a			;7b30
	ld a,b			;7b31
	jr nz,l7b36h		;7b32
	neg			;7b34
l7b36h:
	rla			;7b36
	ret c			;7b37
	ld a,004h		;7b38
	cp d			;7b3a
	jr nc,l7b43h		;7b3b
	ld a,010h		;7b3d
	cp d			;7b3f
	jr c,l7b43h		;7b40
	ld a,d			;7b42
l7b43h:
	ld (ix+021h),a		;7b43
	or a			;7b46
	ret			;7b47
	ld a,(0ca4ah)		;7b48
	sub (ix+00ah)		;7b4b
	ld e,a			;7b4e
	jr nc,l7b53h		;7b4f
	neg			;7b51
l7b53h:
	cp 006h			;7b53
	ret c			;7b55
	ld a,(ix+00ah)		;7b56
	and a			;7b59
	ret m			;7b5a
	ld a,e			;7b5b
	and a			;7b5c
	ld bc,00000h		;7b5d
	jp m,0bb66h		;7b60
	ld bc,00400h		;7b63
	jp 09cadh		;7b66
	ld a,(ix+001h)		;7b69
	dec a			;7b6c
	jr z,l7ba8h		;7b6d
	dec a			;7b6f
	jr z,l7bc0h		;7b70
	dec a			;7b72
	jr z,l7bc5h		;7b73
	call 06796h		;7b75
	ld d,a			;7b78
	and 03fh		;7b79
	ld (ix+008h),a		;7b7b
	ld a,d			;7b7e
	rlca			;7b7f
	jr nc,l7b85h		;7b80
	inc (ix+020h)		;7b82
l7b85h:
	ld de,0ff80h		;7b85
	ld b,01eh		;7b88
	ld a,(0ca04h)		;7b8a
	and a			;7b8d
	jr z,l7b9ch		;7b8e
	ld de,00080h		;7b90
	ld b,000h		;7b93
	inc (ix+023h)		;7b95
	ld (ix+016h),040h	;7b98
l7b9ch:
	ld (ix+00ah),b		;7b9c
	call l6bfbh+2		;7b9f
	inc (ix+017h)		;7ba2
	jp l6c1dh		;7ba5
l7ba8h:
	call 0bc01h		;7ba8
	ld a,(ix+00ah)		;7bab
	sub 01ah		;7bae
	jr nc,l7bb4h		;7bb0
	neg			;7bb2
l7bb4h:
	cp 001h			;7bb4
	ret nc			;7bb6
	call l6bfah		;7bb7
	call 0bbf1h		;7bba
	jp l6c1dh		;7bbd
l7bc0h:
	call 0bbc6h		;7bc0
	jr l7c0bh		;7bc3
l7bc5h:
	ret			;7bc5
	ld a,(ix+008h)		;7bc6
	cp 002h			;7bc9
	jr c,l7bd0h		;7bcb
	cp 00fh			;7bcd
	ret c			;7bcf
l7bd0h:
	ld a,001h		;7bd0
	xor (ix+020h)		;7bd2
	ld (ix+020h),a		;7bd5
	call 0bbf1h		;7bd8
	ld a,(ix+021h)		;7bdb
	inc a			;7bde
	ld (ix+021h),a		;7bdf
	cp 003h			;7be2
	ret c			;7be4
	call sub_6bf0h		;7be5
	ld de,0ff60h		;7be8
	call l6bfbh+2		;7beb
	jp l6c1dh		;7bee
	ld a,(ix+020h)		;7bf1
	and a			;7bf4
	ld hl,00040h		;7bf5
	jr nz,l7bfdh		;7bf8
	ld hl,0ffc0h		;7bfa
l7bfdh:
	call 06bf3h		;7bfd
	ret			;7c00
	call sub_6ad2h		;7c01
	ret nz			;7c04
	ld (ix+017h),008h	;7c05
	jr l7c20h		;7c09
l7c0bh:
	call sub_6ad2h		;7c0b
	ret nz			;7c0e
	call sub_755dh		;7c0f
	ld a,e			;7c12
	bit 7,a			;7c13
	jr z,l7c19h		;7c15
	neg			;7c17
l7c19h:
	cp 002h			;7c19
	ret nc			;7c1b
	ld (ix+017h),028h	;7c1c
l7c20h:
	ld bc,001ffh		;7c20
	call 0bc2fh		;7c23
	ld bc,00002h		;7c26
	call 0bc2fh		;7c29
	ld bc,00105h		;7c2c
	push bc			;7c2f
	ld bc,00000h		;7c30
	call 09cb5h		;7c33
	pop bc			;7c36
	jp l737ch		;7c37
	call 0bc4dh		;7c3a
	call 07c44h		;7c3d
	jp c,07cc3h		;7c40
	ld a,(ix+00ah)		;7c43
	add a,008h		;7c46
	and a			;7c48
	ret p			;7c49
	jp 06e98h		;7c4a
	ld a,(ix+001h)		;7c4d
	and a			;7c50
	jr nz,l7c64h		;7c51
	call sub_6754h		;7c53
	ld (ix+03eh),009h	;7c56
	ld (ix+005h),001h	;7c5a
	call 0bcaah		;7c5e
	jp l6c1dh		;7c61
l7c64h:
	ld a,(ix+00ah)		;7c64
	and a			;7c67
	ret m			;7c68
	cp 01ch			;7c69
sub_7c6bh:
	ret nc			;7c6b
	ld a,(ix+008h)		;7c6c
	cp 018h			;7c6f
	ret nc			;7c71
	ld a,(ix+024h)		;7c72
	and a			;7c75
	call z,0bcc0h		;7c76
	call sub_6ad2h		;7c79
	ret nz			;7c7c
	call sub_6adfh		;7c7d
	ret nz			;7c80
	ld (ix+018h),004h	;7c81
	ld a,(ix+024h)		;7c85
	inc (ix+024h)		;7c88
	cp 003h			;7c8b
	jr z,l7caah		;7c8d
	cp 001h			;7c8f
	ret z			;7c91
	ld b,(ix+005h)		;7c92
	call 09cc0h		;7c95
	ex de,hl		;7c98
	ld l,(ix+005h)		;7c99
	ld h,000h		;7c9c
	add hl,hl		;7c9e
	ld bc,0bcb6h		;7c9f
	add hl,bc		;7ca2
	ld c,(hl)		;7ca3
	inc hl			;7ca4
	ld b,(hl)		;7ca5
	ex de,hl		;7ca6
sub_7ca7h:
	jp l737ch		;7ca7
l7caah:
	ld (ix+024h),000h	;7caa
	ld (ix+017h),020h	;7cae
	inc (ix+018h)		;7cb2
	ret			;7cb5
	ld (bc),a		;7cb6
	nop			;7cb7
	ld bc,00001h		;7cb8
	ld (bc),a		;7cbb
	ld bc,00204h		;7cbc
	dec b			;7cbf
	ld iy,0ca40h		;7cc0
	call sub_6b85h		;7cc4
	call 09da9h		;7cc7
	rrca			;7cca
	rrca			;7ccb
	rrca			;7ccc
	rrca			;7ccd
	and 00fh		;7cce
	ld l,a			;7cd0
	ld h,000h		;7cd1
	ld de,0bcdch		;7cd3
	add hl,de		;7cd6
	ld a,(hl)		;7cd7
	ld (ix+005h),a		;7cd8
	ret			;7cdb
	inc b			;7cdc
	inc bc			;7cdd
	inc bc			;7cde
	ld (bc),a		;7cdf
	ld (bc),a		;7ce0
	ld bc,00001h		;7ce1
	nop			;7ce4
	ld bc,00201h		;7ce5
	ld (bc),a		;7ce8
	inc bc			;7ce9
	inc bc			;7cea
	inc b			;7ceb
	call 082cah		;7cec
	call 07c44h		;7cef
	jp c,07cc3h		;7cf2
	ld a,(ix+00ah)		;7cf5
	inc a			;7cf8
	and a			;7cf9
	ret p			;7cfa
	jp 06e98h		;7cfb
	call sub_6754h		;7cfe
	ld hl,0ce53h		;7d01
	inc (hl)		;7d04
	ld a,(hl)		;7d05
	rrca			;7d06
	jr nc,l7d0ch		;7d07
	inc (ix+03dh)		;7d09
l7d0ch:
	jp l6c1dh		;7d0c
	ld a,(ix+001h)		;7d0f
	dec a			;7d12
	jr z,l7d22h		;7d13
	dec a			;7d15
	jr z,l7d47h		;7d16
	call sub_6754h		;7d18
	ld (ix+03eh),00bh	;7d1b
	jp l6c1dh		;7d1f
l7d22h:
	ld l,(ix+020h)		;7d22
	ld h,000h		;7d25
	add hl,hl		;7d27
	ld de,0bd6bh		;7d28
	add hl,de		;7d2b
	ld a,(hl)		;7d2c
	and a			;7d2d
	ret z			;7d2e
	cp (ix+00ah)		;7d2f
	ret c			;7d32
	inc (ix+020h)		;7d33
	inc hl			;7d36
	ld a,(0ca19h)		;7d37
	cp (hl)			;7d3a
	ret c			;7d3b
	ld (ix+018h),006h	;7d3c
	ld (ix+006h),001h	;7d40
	jp l6c1dh		;7d44
l7d47h:
	call sub_6adfh		;7d47
	ret nz			;7d4a
	ld de,00004h		;7d4b
	ld bc,000ffh		;7d4e
	call 09d1eh		;7d51
	ld de,00007h		;7d54
	ld bc,003ffh		;7d57
	call 09d1eh		;7d5a
	ld a,017h		;7d5d
	call 04af0h		;7d5f
	ld (ix+006h),000h	;7d62
	ld (ix+001h),001h	;7d66
	ret			;7d6a
	dec de			;7d6b
	inc bc			;7d6c
	jr l7d6fh		;7d6d
l7d6fh:
	djnz $+7		;7d6f
	inc b			;7d71
	ex af,af'		;7d72
	nop			;7d73
	ld a,(ix+001h)		;7d74
	dec a			;7d77
	jr z,l7d88h		;7d78
	call 04678h		;7d7a
	ld d,018h		;7d7d
	call 0722ah		;7d7f
	call 06bebh		;7d82
	jp l6c1dh		;7d85
l7d88h:
	ld a,(ix+008h)		;7d88
	sub 001h		;7d8b
	cp 014h			;7d8d
	call nc,06b43h		;7d8f
	ld a,(ix+00ah)		;7d92
	cp 01dh			;7d95
	call nc,sub_6b53h	;7d97
	ret			;7d9a
	ld a,(ix+001h)		;7d9b
	and a			;7d9e
	jr nz,l7dadh		;7d9f
	call sub_6754h		;7da1
	call 06796h		;7da4
	ld (ix+020h),a		;7da7
	jp l6c1dh		;7daa
l7dadh:
	ld a,(ix+00ah)		;7dad
	add a,011h		;7db0
	and a			;7db2
	jp m,06e98h		;7db3
	ld a,(0ca3bh)		;7db6
	add a,(ix+00ah)		;7db9
	and 007h		;7dbc
	ld d,a			;7dbe
	ld a,(0ca1ch)		;7dbf
	add a,(ix+009h)		;7dc2
	jr nc,l7dc8h		;7dc5
	inc d			;7dc7
l7dc8h:
	res 3,d			;7dc8
	ld c,d			;7dca
	ld b,003h		;7dcb
	xor a			;7dcd
l7dceh:
	push af			;7dce
	push bc			;7dcf
	add a,c			;7dd0
	call 07a43h		;7dd1
	pop bc			;7dd4
	pop af			;7dd5
	add a,008h		;7dd6
	djnz l7dceh		;7dd8
	ret			;7dda
	ld a,(ix+001h)		;7ddb
	dec a			;7dde
	jr z,l7df6h		;7ddf
	dec a			;7de1
	jr z,l7e36h		;7de2
	dec a			;7de4
	jr z,l7e52h		;7de5
	call sub_6754h		;7de7
	ld a,d			;7dea
	bit 7,a			;7deb
	jr z,l7df3h		;7ded
	ld (ix+00ah),000h	;7def
l7df3h:
	jp l6c1dh		;7df3
l7df6h:
	ld iy,0ca40h		;7df6
	ld a,008h		;7dfa
	call sub_6b7fh		;7dfc
	sra h			;7dff
	rr l			;7e01
	sra h			;7e03
	rr l			;7e05
	ld (ix+00bh),l		;7e07
	ld (ix+00ch),h		;7e0a
	sra h			;7e0d
	rr l			;7e0f
	ld (ix+00fh),l		;7e11
	ld (ix+010h),h		;7e14
	sra d			;7e17
	rr e			;7e19
	sra d			;7e1b
	rr e			;7e1d
	ld (ix+00dh),e		;7e1f
	ld (ix+00eh),d		;7e22
	sra d			;7e25
	rr e			;7e27
	ld (ix+011h),e		;7e29
	ld (ix+012h),d		;7e2c
	ld (ix+017h),010h	;7e2f
	jp l6c1dh		;7e33
l7e36h:
	ld (ix+005h),001h	;7e36
	call sub_6ad2h		;7e3a
	jr z,l7e42h		;7e3d
	jp sub_6a9ah		;7e3f
l7e42h:
	ld hl,00020h		;7e42
	ld de,00000h		;7e45
	call 06bebh		;7e48
	ld (ix+017h),008h	;7e4b
	jp l6c1dh		;7e4f
l7e52h:
	ld (ix+005h),000h	;7e52
	call sub_6ad2h		;7e56
	ret nz			;7e59
	ld (ix+001h),001h	;7e5a
	ret			;7e5e
	ld a,(ix+001h)		;7e5f
	dec a			;7e62
	jr z,l7e7eh		;7e63
	dec a			;7e65
	jr z,l7ec4h		;7e66
	dec a			;7e68
	jr z,l7eb7h		;7e69
	call sub_6754h		;7e6b
	call 06796h		;7e6e
	call 06796h		;7e71
	ld (ix+021h),a		;7e74
	ld (ix+03eh),00ch	;7e77
	jp l6c1dh		;7e7b
l7e7eh:
	ld (ix+006h),000h	;7e7e
	ld l,(ix+026h)		;7e82
	ld h,000h		;7e85
	add hl,hl		;7e87
	ld de,0befdh		;7e88
	add hl,de		;7e8b
	ld a,(hl)		;7e8c
	and a			;7e8d
	ret z			;7e8e
	cp (ix+00ah)		;7e8f
	ret c			;7e92
	inc hl			;7e93
	inc (ix+026h)		;7e94
	ld b,(hl)		;7e97
	ld a,(0ca19h)		;7e98
	cp b			;7e9b
	ret c			;7e9c
	call sub_755dh		;7e9d
	ld a,e			;7ea0
	bit 7,a			;7ea1
	jr z,l7ea7h		;7ea3
	neg			;7ea5
l7ea7h:
	cp 00fh			;7ea7
	jr c,l7eadh		;7ea9
	ld a,00fh		;7eab
l7eadh:
	ld (ix+025h),a		;7ead
	ld (ix+018h),006h	;7eb0
	jp l6c1dh		;7eb4
l7eb7h:
	call sub_6adfh		;7eb7
	ret nz			;7eba
	ld (ix+022h),000h	;7ebb
	ld (ix+001h),001h	;7ebf
	ret			;7ec3
l7ec4h:
	ld (ix+006h),001h	;7ec4
	call sub_6adfh		;7ec8
	ret nz			;7ecb
	ld a,011h		;7ecc
	call sub_684ch		;7ece
	ret c			;7ed1
	ld bc,00202h		;7ed2
	call 06929h		;7ed5
	call sub_699eh		;7ed8
	ld l,(ix+025h)		;7edb
	ld h,000h		;7ede
	ld de,0bf04h		;7ee0
	add hl,de		;7ee3
	ld a,(hl)		;7ee4
	ld (iy+017h),a		;7ee5
	ld (ix+018h),004h	;7ee8
	inc (ix+022h)		;7eec
	ld a,(ix+021h)		;7eef
	cp (ix+022h)		;7ef2
	ret nz			;7ef5
	ld (ix+018h),008h	;7ef6
	jp l6c1dh		;7efa
	ld a,(de)		;7efd
	nop			;7efe
	ld (de),a		;7eff
	dec b			;7f00
	ld b,008h		;7f01
	nop			;7f03
	ld (bc),a		;7f04
	inc bc			;7f05
	inc b			;7f06
	inc b			;7f07
	dec b			;7f08
	dec b			;7f09
	ld b,006h		;7f0a
	rlca			;7f0c
	rlca			;7f0d
	ex af,af'		;7f0e
	add hl,bc		;7f0f
	ld a,(bc)		;7f10
	dec bc			;7f11
	inc c			;7f12
	dec c			;7f13
	call 06a13h		;7f14
	ld de,0bfc0h		;7f17
	call 07b65h		;7f1a
	ld a,(ix+001h)		;7f1d
	dec a			;7f20
	jr z,l7f3fh		;7f21
	dec a			;7f23
	jr z,l7f5fh		;7f24
	dec a			;7f26
	jr z,l7f8dh		;7f27
	call sub_6754h		;7f29
	call sub_69f2h		;7f2c
	ld a,(0ca04h)		;7f2f
	and a			;7f32
	jr z,l7f39h		;7f33
	ld (ix+016h),038h	;7f35
l7f39h:
	call 0bfaeh		;7f39
	jp l6c1dh		;7f3c
l7f3fh:
	ld b,004h		;7f3f
	call l6ac2h		;7f41
	call sub_7c6bh		;7f44
	ret nc			;7f47
	ld a,001h		;7f48
	ld (0ce4ch),a		;7f4a
	ld a,034h		;7f4d
	call 04af5h		;7f4f
	call 07cbeh		;7f52
	ld (ix+017h),005h	;7f55
	inc (ix+018h)		;7f59
	jp l6c1dh		;7f5c
l7f5fh:
	call 0bf9ah		;7f5f
	call sub_6adfh		;7f62
	ret nz			;7f65
	ld (ix+018h),004h	;7f66
	call sub_6ad2h		;7f6a
	jr z,l7f86h		;7f6d
	cp 003h			;7f6f
	jr nz,l7f77h		;7f71
	ld (ix+006h),004h	;7f73
l7f77h:
	dec a			;7f77
	ld l,a			;7f78
	ld h,000h		;7f79
	add hl,hl		;7f7b
	ld de,0bfb8h		;7f7c
	add hl,de		;7f7f
	ld e,(hl)		;7f80
	inc hl			;7f81
	ld d,(hl)		;7f82
	jp 09a62h		;7f83
l7f86h:
	ld (ix+017h),070h	;7f86
	jp l6c1dh		;7f8a
l7f8dh:
	call 0bf9ah		;7f8d
	call sub_6ad2h		;7f90
	ret nz			;7f93
	call sub_69fbh		;7f94
	jp 06e98h		;7f97
	ld hl,0ce48h		;7f9a
	res 1,(hl)		;7f9d
	dec (ix+020h)		;7f9f
	ret nz			;7fa2
	ld (hl),003h		;7fa3
	ld a,(0ce4dh)		;7fa5
	and a			;7fa8
	ld a,035h		;7fa9
	call z,04af0h		;7fab
	call 04678h		;7fae
	and 007h		;7fb1
	inc a			;7fb3
	ld (ix+020h),a		;7fb4
	ret			;7fb7
	defb 0fdh,002h,0feh ;illegal sequence	;7fb8
	ex af,af'		;7fbb
	ld (bc),a		;7fbc
	inc b			;7fbd
	inc b			;7fbe
	cp 0cah			;7fbf
	cp a			;7fc1
	push de			;7fc2
	cp a			;7fc3
	ret po			;7fc4
	cp a			;7fc5
	ex de,hl		;7fc6
	cp a			;7fc7
	or 0bfh			;7fc8
	dec bc			;7fca
	nop			;7fcb
	nop			;7fcc
	ld bc,0fe00h		;7fcd
	ld a,(bc)		;7fd0
	nop			;7fd1
	ld bc,0ff04h		;7fd2
	dec bc			;7fd5
	nop			;7fd6
	nop			;7fd7
	ld bc,0fe01h		;7fd8
	ld a,(bc)		;7fdb
	nop			;7fdc
	ld bc,0ff04h		;7fdd
	dec bc			;7fe0
	nop			;7fe1
	nop			;7fe2
	ld bc,0fe02h		;7fe3
	ld a,(bc)		;7fe6
	nop			;7fe7
	ld bc,0ff04h		;7fe8
	dec bc			;7feb
	nop			;7fec
	nop			;7fed
	ld bc,0fe03h		;7fee
	ld a,(bc)		;7ff1
	nop			;7ff2
	ld bc,0ff04h		;7ff3
	ld b,000h		;7ff6
	nop			;7ff8
	ld bc,0ff05h		;7ff9
	rst 38h			;7ffc
	rst 38h			;7ffd
	rst 38h			;7ffe
	rst 38h			;7fff

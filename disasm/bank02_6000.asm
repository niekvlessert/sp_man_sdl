; z80dasm 1.2.0
; command line: z80dasm -a -l -g 0x6000 -o /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/disasm/bank02_6000.asm /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/banks/bank02.bin

	org 06000h

l6000h:
	jp 0801bh		;6000
sub_6003h:
	jp 08224h		;6003
	jp 0878ah		;6006
	jp 08f11h		;6009
	jp 08f64h		;600c
	jp 08fc5h		;600f
	jp 08238h		;6012
	jp 0828ah		;6015
	jp 08220h		;6018
	call 08031h		;601b
	call 082b4h		;601e
	ld a,(0c907h)		;6021
	and 010h		;6024
	call nz,08599h		;6026
	ld a,(0ca43h)		;6029
	or a			;602c
	call z,084f6h		;602d
	ret			;6030
	call 08060h		;6031
	ld a,(ix+001h)		;6034
	or a			;6037
	jp z,l77d0h		;6038
	call sub_7747h		;603b
	ld a,(0c0ech)		;603e
	or a			;6041
	ret z			;6042
	call l77d0h		;6043
	xor a			;6046
	ld (0c0ech),a		;6047
	ld (ix+019h),a		;604a
	ld (ix+01ah),a		;604d
	ld (ix+01bh),a		;6050
	ld (ix+01ch),a		;6053
	ld (ix+01dh),a		;6056
	ld (ix+01eh),a		;6059
	ld (ix+01fh),a		;605c
	ret			;605f
	ld ix,0ca40h		;6060
	ld a,(0ce75h)		;6064
	or a			;6067
	ret nz			;6068
	ld a,(ix+001h)		;6069
	dec a			;606c
	jr z,l60dah		;606d
	dec a			;606f
	jr z,l60efh		;6070
	call 080f4h		;6072
	call 0820dh		;6075
	call 08108h		;6078
	ld a,(0ca03h)		;607b
	rrca			;607e
	ret c			;607f
	ld a,(0ce76h)		;6080
	or a			;6083
	ret nz			;6084
	ld a,(0ce75h)		;6085
	or a			;6088
	ret nz			;6089
	ld a,(ix+018h)		;608a
	or a			;608d
	jr z,l6099h		;608e
	dec a			;6090
	ld (ix+018h),a		;6091
	ld (ix+004h),000h	;6094
	ret			;6098
l6099h:
	call 07c44h		;6099
	ret			;609c
	ld (ix+001h),001h	;609d
	ld (ix+003h),001h	;60a1
	ld (ix+015h),02dh	;60a5
	res 7,(ix+014h)		;60a9
	ld (ix+005h),006h	;60ad
	xor a			;60b1
	ld (ix+019h),a		;60b2
	ld (ix+01ah),a		;60b5
	ld (ix+01bh),a		;60b8
	ld (ix+01ch),a		;60bb
	ld (ix+01dh),a		;60be
	ld (ix+01eh),a		;60c1
	ld (ix+01fh),a		;60c4
	set 3,(ix+015h)		;60c7
	ld a,04ch		;60cb
	call 04aebh		;60cd
	ld hl,0c947h		;60d0
	set 0,(hl)		;60d3
	ld (ix+017h),028h	;60d5
	ret			;60d9
l60dah:
	ld b,00ah		;60da
	ld a,(ix+005h)		;60dc
	inc a			;60df
	cp b			;60e0
	jr c,l60e5h		;60e1
	ld a,006h		;60e3
l60e5h:
	ld (ix+005h),a		;60e5
	call sub_6ad2h		;60e8
	ret nz			;60eb
	inc (ix+001h)		;60ec
l60efh:
	ld (ix+000h),000h	;60ef
	ret			;60f3
	ld a,(0cb02h)		;60f4
	or a			;60f7
	ret z			;60f8
	dec a			;60f9
	ld (0cb02h),a		;60fa
	ret			;60fd
l60feh:
	ld hl,00000h		;60fe
	ld (0ca4bh),hl		;6101
	ld (0ca4dh),hl		;6104
	ret			;6107
	ld a,(0c900h)		;6108
	cp 004h			;610b
	jr z,l6114h		;610d
	ld a,(0c908h)		;610f
	jr l6117h		;6112
l6114h:
	ld a,(0c909h)		;6114
l6117h:
	and 00fh		;6117
	ld (0cb18h),a		;6119
	jr z,l60feh		;611c
	ld e,a			;611e
	add a,a			;611f
	add a,a			;6120
	add a,a			;6121
	add a,e			;6122
	ld e,a			;6123
	ld d,000h		;6124
	ld hl,0817dh		;6126
	add hl,de		;6129
	ld a,(hl)		;612a
	ld (0cb18h),a		;612b
	inc hl			;612e
	ld e,(hl)		;612f
	inc hl			;6130
	ld d,(hl)		;6131
	inc hl			;6132
	ld c,(hl)		;6133
	inc hl			;6134
	ld b,(hl)		;6135
	inc hl			;6136
	ld a,(0cb01h)		;6137
	or a			;613a
	push af			;613b
	push hl			;613c
	ex de,hl		;613d
	call nz,08177h		;613e
	ld (0ca4bh),hl		;6141
	ld bc,(0ca47h)		;6144
	add hl,bc		;6148
	ld a,h			;6149
	cp 014h			;614a
	jr nc,l6151h		;614c
	ld (0ca47h),hl		;614e
l6151h:
	pop hl			;6151
	ld e,(hl)		;6152
	inc hl			;6153
	ld d,(hl)		;6154
	inc hl			;6155
	ld c,(hl)		;6156
	inc hl			;6157
	ld b,(hl)		;6158
	inc hl			;6159
	pop af			;615a
	ex de,hl		;615b
	call nz,08177h		;615c
	ld (0ca4dh),hl		;615f
	ld bc,(0ca49h)		;6162
	add hl,bc		;6166
	ex de,hl		;6167
	ld hl,0ff80h		;6168
	add hl,de		;616b
	ld a,h			;616c
	cp 01dh			;616d
	jr nc,l6175h		;616f
	ld (0ca49h),de		;6171
l6175h:
	or a			;6175
	ret			;6176
	add hl,bc		;6177
	dec a			;6178
	jp nz,08177h		;6179
	ret			;617c
	nop			;617d
	nop			;617e
	nop			;617f
	nop			;6180
	nop			;6181
	nop			;6182
	nop			;6183
	nop			;6184
	nop			;6185
	rlca			;6186
	add a,b			;6187
	rst 38h			;6188
	ex de,hl		;6189
	rst 38h			;618a
	nop			;618b
	nop			;618c
	nop			;618d
	nop			;618e
	inc bc			;618f
	add a,b			;6190
	nop			;6191
	dec d			;6192
	nop			;6193
	nop			;6194
	nop			;6195
	nop			;6196
	nop			;6197
	nop			;6198
	nop			;6199
	nop			;619a
	nop			;619b
	nop			;619c
	nop			;619d
	nop			;619e
	nop			;619f
	nop			;61a0
	dec b			;61a1
	nop			;61a2
	nop			;61a3
	nop			;61a4
	nop			;61a5
	add a,b			;61a6
	rst 38h			;61a7
	ex de,hl		;61a8
	rst 38h			;61a9
	ld b,0a0h		;61aa
	rst 38h			;61ac
	ret p			;61ad
	rst 38h			;61ae
	and b			;61af
	rst 38h			;61b0
	ret p			;61b1
	rst 38h			;61b2
	inc b			;61b3
	ld h,b			;61b4
	nop			;61b5
	djnz l61b8h		;61b6
l61b8h:
	and b			;61b8
	rst 38h			;61b9
	ret p			;61ba
	rst 38h			;61bb
	nop			;61bc
	nop			;61bd
	nop			;61be
	nop			;61bf
	nop			;61c0
	add a,b			;61c1
	rst 38h			;61c2
	ex de,hl		;61c3
	rst 38h			;61c4
	ld bc,00000h		;61c5
	nop			;61c8
	nop			;61c9
	add a,b			;61ca
	nop			;61cb
	dec d			;61cc
	nop			;61cd
	ex af,af'		;61ce
	and b			;61cf
	rst 38h			;61d0
	ret p			;61d1
	rst 38h			;61d2
	ld h,b			;61d3
	nop			;61d4
	djnz l61d7h		;61d5
l61d7h:
	ld (bc),a		;61d7
	ld h,b			;61d8
	nop			;61d9
	djnz l61dch		;61da
l61dch:
	ld h,b			;61dc
	nop			;61dd
	djnz l61e0h		;61de
l61e0h:
	ld bc,00000h		;61e0
	nop			;61e3
	nop			;61e4
	add a,b			;61e5
	nop			;61e6
	dec d			;61e7
	nop			;61e8
	nop			;61e9
	nop			;61ea
	nop			;61eb
	nop			;61ec
	nop			;61ed
	nop			;61ee
	nop			;61ef
	nop			;61f0
	nop			;61f1
	rlca			;61f2
	add a,b			;61f3
	rst 38h			;61f4
	ex de,hl		;61f5
	rst 38h			;61f6
	nop			;61f7
	nop			;61f8
	nop			;61f9
	nop			;61fa
	inc bc			;61fb
	add a,b			;61fc
	nop			;61fd
	dec d			;61fe
	nop			;61ff
	nop			;6200
	nop			;6201
	nop			;6202
	nop			;6203
	nop			;6204
	nop			;6205
	nop			;6206
	nop			;6207
	nop			;6208
	nop			;6209
	nop			;620a
	nop			;620b
	nop			;620c
	ld a,(0c908h)		;620d
	ld b,000h		;6210
	and 003h		;6212
	jr z,l621bh		;6214
	inc b			;6216
	rrca			;6217
	jr c,l621bh		;6218
	inc b			;621a
l621bh:
	ld hl,0ca45h		;621b
	ld (hl),b		;621e
	ret			;621f
	call 08224h		;6220
	ret			;6223
	call 08279h		;6224
	call 0829fh		;6227
	xor a			;622a
	ld (0c0ech),a		;622b
	ld (0cb01h),a		;622e
	ld (0ca19h),a		;6231
	dec a			;6234
	ld (0cb02h),a		;6235
	xor a			;6238
	ld (0cc01h),a		;6239
	ld (0cb1dh),a		;623c
	call 0828bh		;623f
	ld hl,0ca40h		;6242
	ld bc,0003fh		;6245
	call 04648h		;6248
	call 08254h		;624b
	call 083e7h		;624e
	jp 08704h		;6251
	ld ix,0ca40h		;6254
	ld (ix+000h),001h	;6258
	ld (ix+008h),008h	;625c
	ld (ix+00ah),005h	;6260
	ld (ix+015h),039h	;6264
	ld (ix+013h),003h	;6268
	ld (ix+014h),003h	;626c
	ld (ix+018h),00fh	;6270
	set 7,(ix+014h)		;6274
	ret			;6278
	ld hl,0cb40h		;6279
	ld bc,00027h		;627c
	call 04648h		;627f
	xor a			;6282
	ld (0cb1ah),a		;6283
	call 084a5h		;6286
	ret			;6289
	ret			;628a
	ld ix,0cac0h		;628b
	call 08296h		;628f
	ld ix,0cae0h		;6292
	ld (ix+019h),000h	;6296
	ld (ix+01ah),000h	;629a
	ret			;629e
	xor a			;629f
	ld (0cb03h),a		;62a0
	ld hl,0cac0h		;62a3
	ld bc,0003fh		;62a6
	call 04648h		;62a9
	ld bc,0ff80h		;62ac
	ld (0cb1bh),bc		;62af
	ret			;62b3
	call 082c6h		;62b4
	ld ix,0cac0h		;62b7
	call 082d2h		;62bb
	ld ix,0cae0h		;62be
	call 082d2h		;62c2
	ret			;62c5
	ld a,(0ca02h)		;62c6
	and 003h		;62c9
	ld (0cac5h),a		;62cb
	ld (0cae5h),a		;62ce
	ret			;62d1
	ld a,(0ca41h)		;62d2
	or a			;62d5
	ret nz			;62d6
	ld a,(ix+000h)		;62d7
	or a			;62da
	ret z			;62db
	call 082e2h		;62dc
	jp l77d0h		;62df
	ld a,(ix+001h)		;62e2
	dec a			;62e5
	jr z,l6320h		;62e6
	jp p,08320h		;62e8
	ld bc,00300h		;62eb
	call l76feh+1		;62ee
	ret nc			;62f1
	call 0756ch		;62f2
	call 04612h		;62f5
	call 0834ch		;62f8
	ld a,(0cb41h)		;62fb
	ld c,a			;62fe
	ld hl,0831ah		;62ff
	ld a,(0cb05h)		;6302
	bit 7,(ix+018h)		;6305
	jr nz,l630eh		;6309
	ld hl,0831dh		;630b
l630eh:
	call 04600h		;630e
	ld a,(hl)		;6311
	ld b,a			;6312
	call 084ach		;6313
	inc (ix+001h)		;6316
	ret			;6319
	ex af,af'		;631a
	rlca			;631b
	ld b,002h		;631c
	inc bc			;631e
	inc b			;631f
l6320h:
	call 08324h		;6320
	ret			;6323
	ld hl,(0ca49h)		;6324
	ld bc,(0cb1bh)		;6327
	add hl,bc		;632b
	ld (ix+00ah),h		;632c
	ld (ix+009h),l		;632f
	ld hl,(0ca47h)		;6332
	ld bc,000e0h		;6335
	add hl,bc		;6338
	ld b,(ix+018h)		;6339
	ld c,(ix+017h)		;633c
	add hl,bc		;633f
	ld (ix+008h),h		;6340
	ld (ix+007h),l		;6343
	ret			;6346
	sra h			;6347
	rr l			;6349
	ret			;634b
	call 0837ah		;634c
	jr c,l6359h		;634f
	xor h			;6351
	bit 7,a			;6352
	jr nz,l6359h		;6354
	ld a,h			;6356
	cpl			;6357
	ld h,a			;6358
l6359h:
	bit 7,h			;6359
	jr z,l6361h		;635b
	set 7,(ix+010h)		;635d
l6361h:
	bit 7,(ix+010h)		;6361
	push af			;6365
	ld a,(ix+003h)		;6366
	ld de,0839ch		;6369
	call 04624h		;636c
	pop af			;636f
	call nz,04612h		;6370
	ld (ix+018h),h		;6373
	ld (ix+017h),l		;6376
	ret			;6379
	ld iy,0cac0h		;637a
	call 08392h		;637e
	jr nz,l638eh		;6381
	ld iy,0cae0h		;6383
	call 08392h		;6387
	jr nz,l638eh		;638a
	scf			;638c
	ret			;638d
l638eh:
	ld a,(iy+018h)		;638e
	ret			;6391
	ld a,(iy+000h)		;6392
	or a			;6395
	ret z			;6396
	ld a,(iy+001h)		;6397
	or a			;639a
	ret			;639b
	add a,b			;639c
	ld (bc),a		;639d
	nop			;639e
	inc bc			;639f
	nop			;63a0
	inc b			;63a1
	nop			;63a2
	dec b			;63a3
	ld a,(iy+003h)		;63a4
	ld (0cb1ah),a		;63a7
	push iy			;63aa
	call 083b2h		;63ac
	pop iy			;63af
	ret			;63b1
	call 083b8h		;63b2
	jp 083e7h		;63b5
	ld a,(0cb1ah)		;63b8
	cp 00ah			;63bb
	call z,0843dh		;63bd
	cp 002h			;63c0
	jp z,08479h		;63c2
	cp 00ch			;63c5
	call z,08437h		;63c7
	cp 003h			;63ca
	jp z,08443h		;63cc
	cp 00bh			;63cf
	jp z,08457h		;63d1
	cp 00dh			;63d4
	jp z,0844bh		;63d6
	cp 007h			;63d9
	jp z,0845dh		;63db
	cp 00eh			;63de
	jp z,08470h		;63e0
	call 084ddh		;63e3
	ret			;63e6
	ld c,000h		;63e7
	ld ix,0cb40h		;63e9
	ld b,005h		;63ed
l63efh:
	ld a,(ix+000h)		;63ef
	or a			;63f2
	jr z,l6406h		;63f3
	ld a,(ix+001h)		;63f5
	dec a			;63f8
	cp 00ah			;63f9
	jr nc,l6406h		;63fb
	ld hl,0842dh		;63fd
	call 04600h		;6400
	ld a,(hl)		;6403
	add a,c			;6404
l6405h:
	ld c,a			;6405
l6406h:
	ld de,00008h		;6406
	add ix,de		;6409
	djnz l63efh		;640b
	ld a,c			;640d
	and 0f0h		;640e
	rrca			;6410
	rrca			;6411
	rrca			;6412
	rrca			;6413
	ld c,a			;6414
	ld a,(0ca04h)		;6415
	add a,a			;6418
	add a,a			;6419
	add a,c			;641a
	ld c,a			;641b
	ld a,(0cb08h)		;641c
	call 04e79h		;641f
	add a,c			;6422
	cp 010h			;6423
	jr c,l6429h		;6425
	ld a,00fh		;6427
l6429h:
	ld (0ca19h),a		;6429
	ret			;642c
	djnz $+10		;642d
	jr nz,$+18		;642f
	nop			;6431
	nop			;6432
	nop			;6433
	nop			;6434
	nop			;6435
	jr l6405h		;6436
	ld d,087h		;6438
	ld a,001h		;643a
	ret			;643c
	call 0871ah		;643d
	ld a,00ah		;6440
	ret			;6442
	ld b,080h		;6443
	ld c,003h		;6445
	jp 084ach		;6447
	ret			;644a
	ld a,00ah		;644b
	call 04af5h		;644d
	ret			;6450
	ld a,00fh		;6451
	call 04af5h		;6453
	ret			;6456
	ld a,001h		;6457
	ld (0cb1dh),a		;6459
	ret			;645c
	ld a,(ix+017h)		;645d
	cpl			;6460
	push af			;6461
	call 06f8ch		;6462
	jp c,0469fh		;6465
	pop af			;6468
	ld (ix+001h),002h	;6469
	jp 082f8h		;646d
	call 08484h		;6470
	ld a,00ah		;6473
	call 04af5h		;6475
	ret			;6478
	ld a,(0cb01h)		;6479
	inc a			;647c
	cp 005h			;647d
	ret nc			;647f
	ld (0cb01h),a		;6480
	ret			;6483
	ld de,(0cb07h)		;6484
	ld b,d			;6488
	ld e,0ffh		;6489
	inc d			;648b
	ld a,010h		;648c
	cp d			;648e
	jr nc,l6492h		;648f
	ld d,a			;6491
l6492h:
	ld (0cb07h),de		;6492
	ex de,hl		;6496
	ld a,h			;6497
	call 04e79h		;6498
	ld h,a			;649b
	ld a,b			;649c
	call 04e79h		;649d
	cp h			;64a0
	ret z			;64a1
	jp 0871eh		;64a2
	xor a			;64a5
	ld (0cb05h),a		;64a6
	ld b,a			;64a9
	ld c,a			;64aa
	inc c			;64ab
	push ix			;64ac
	call 084c0h		;64ae
	ld a,b			;64b1
	or a			;64b2
	jr nz,l64b7h		;64b3
	ld b,001h		;64b5
l64b7h:
	ld (ix+001h),c		;64b7
	ld (ix+000h),b		;64ba
	pop ix			;64bd
	ret			;64bf
	ld a,b			;64c0
	or a			;64c1
	ld ix,0cb40h		;64c2
	ret z			;64c6
	sub 002h		;64c7
	sub 003h		;64c9
	ld ix,0cb58h		;64cb
	ret c			;64cf
	dec a			;64d0
	sub 003h		;64d1
	ld ix,0cb50h		;64d3
	ret c			;64d7
	ld ix,0cb48h		;64d8
	ret			;64dc
	ld c,a			;64dd
	ld b,005h		;64de
	ld ix,0cb40h		;64e0
l64e4h:
	ld a,(ix+000h)		;64e4
	cp 009h			;64e7
	jr nc,l64eeh		;64e9
	ld (ix+001h),c		;64eb
l64eeh:
	ld de,00008h		;64ee
	add ix,de		;64f1
	djnz l64e4h		;64f3
	ret			;64f5
	call 08530h		;64f6
	ld a,(0c907h)		;64f9
	bit 5,a			;64fc
	ret z			;64fe
	call 08526h		;64ff
	ret z			;6502
	ld a,008h		;6503
	call 04af5h		;6505
	call 08569h		;6508
	ld b,005h		;650b
	ld ix,0cb40h		;650d
l6511h:
	ld a,(ix+000h)		;6511
	and 00fh		;6514
	jr z,l651eh		;6516
	call 08588h		;6518
	ld (ix+000h),a		;651b
l651eh:
	ld de,00008h		;651e
	add ix,de		;6521
	djnz l6511h		;6523
	ret			;6525
	ld a,(0cb50h)		;6526
	or a			;6529
	ret nz			;652a
	ld a,(0cb58h)		;652b
	or a			;652e
	ret			;652f
	ld a,(0cb02h)		;6530
	cp 02eh			;6533
	ret nc			;6535
	ld hl,0ca02h		;6536
	ld a,(0ca10h)		;6539
	cp 005h			;653c
	ld a,00fh		;653e
	jr c,l6544h		;6540
	ld a,01fh		;6542
l6544h:
	and (hl)		;6544
	ret nz			;6545
	ld hl,(0cb07h)		;6546
	ld b,h			;6549
	ld de,00003h		;654a
	or a			;654d
	sbc hl,de		;654e
	ret c			;6550
	ld d,000h		;6551
	ld e,b			;6553
	or a			;6554
	sbc hl,de		;6555
	ret c			;6557
	ld (0cb07h),hl		;6558
	ld a,b			;655b
	call 04e79h		;655c
	ld b,a			;655f
	ld a,h			;6560
	call 04e79h		;6561
	xor b			;6564
	ret z			;6565
	jp 0871eh		;6566
	ld a,(0cb05h)		;6569
	inc a			;656c
	cp 003h			;656d
	jr c,l6572h		;656f
	xor a			;6571
l6572h:
	ld (0cb05h),a		;6572
	rrca			;6575
	ld bc,00000h		;6576
	jr c,l6583h		;6579
	ld bc,00080h		;657b
	jr nz,l6583h		;657e
	ld bc,0ff80h		;6580
l6583h:
	ld (0cb1bh),bc		;6583
	ret			;6587
	ld hl,08590h		;6588
	call 04600h		;658b
	ld a,(hl)		;658e
	ret			;658f
	nop			;6590
	ld bc,00403h		;6591
	ld (bc),a		;6594
	dec b			;6595
	ex af,af'		;6596
	ld b,007h		;6597
	ld a,(0ca43h)		;6599
	or a			;659c
	ret nz			;659d
	xor a			;659e
	ld (0cc0eh),a		;659f
	ld iy,0cb40h		;65a2
	ld ix,0cc40h		;65a6
	ld a,(iy+000h)		;65aa
	or a			;65ad
	ld b,003h		;65ae
	call nz,085e7h		;65b0
	ld iy,0cb50h		;65b3
	ld ix,0cca0h		;65b7
	ld a,(iy+000h)		;65bb
	or a			;65be
	ld b,002h		;65bf
	call nz,085e7h		;65c1
	ld iy,0cb58h		;65c4
	ld ix,0cce0h		;65c8
	ld a,(iy+000h)		;65cc
	or a			;65cf
	ld b,002h		;65d0
	call nz,085e7h		;65d2
	ld iy,0cb48h		;65d5
	ld ix,0cd20h		;65d9
	ld a,(iy+000h)		;65dd
	or a			;65e0
	ld b,001h		;65e1
	call nz,085e7h		;65e3
	ret			;65e6
	cp 080h			;65e7
	jr nz,l65edh		;65e9
	ld a,001h		;65eb
l65edh:
	cp 005h			;65ed
	jr nz,l65fdh		;65ef
	ld (iy+000h),001h	;65f1
	call 085fdh		;65f5
	ld (iy+000h),005h	;65f8
	ret			;65fc
l65fdh:
	ld a,(iy+001h)		;65fd
	cp 00bh			;6600
	jp nc,04ae0h		;6602
	call 0461ah		;6605
	ld e,086h		;6608
	sbc a,h			;660a
	adc a,h			;660b
	ld e,086h		;660c
	ld d,b			;660e
	adc a,(hl)		;660f
	ld e,086h		;6610
	ld e,086h		;6612
	ld e,086h		;6614
	ld e,086h		;6616
	ld e,086h		;6618
	ld e,086h		;661a
	pop af			;661c
	adc a,e			;661d
	ret			;661e
	and 00fh		;661f
	dec a			;6621
	add a,a			;6622
	ld l,a			;6623
	add a,a			;6624
	add a,l			;6625
	ld l,a			;6626
	ld h,000h		;6627
	add hl,bc		;6629
	ld e,(hl)		;662a
	inc hl			;662b
	ld d,(hl)		;662c
	inc hl			;662d
	ld c,(hl)		;662e
	inc hl			;662f
	ld b,(hl)		;6630
	inc hl			;6631
	ld a,(hl)		;6632
	inc hl			;6633
	ld h,(hl)		;6634
	ld l,a			;6635
	ret			;6636
	ld a,(ix+003h)		;6637
	jr l6644h		;663a
	ld a,(iy+000h)		;663c
	and 00fh		;663f
	jr nz,l6644h		;6641
	inc a			;6643
l6644h:
	push hl			;6644
	call 08661h		;6645
	ld a,l			;6648
	rlca			;6649
	sbc a,a			;664a
	ld h,a			;664b
	add hl,hl		;664c
	add hl,hl		;664d
	add hl,hl		;664e
	add hl,hl		;664f
	add hl,hl		;6650
	add hl,bc		;6651
	ex (sp),hl		;6652
	ld l,h			;6653
	ld a,l			;6654
	rlca			;6655
	sbc a,a			;6656
	ld h,a			;6657
	add hl,hl		;6658
	add hl,hl		;6659
	add hl,hl		;665a
	add hl,hl		;665b
	add hl,hl		;665c
	add hl,de		;665d
	ex de,hl		;665e
	pop bc			;665f
	ret			;6660
	sub 002h		;6661
	sub 003h		;6663
	jr c,l6684h		;6665
	dec a			;6667
	sub 003h		;6668
	jr c,l6675h		;666a
	ld bc,(0ca47h)		;666c
	ld de,(0ca49h)		;6670
	ret			;6674
l6675h:
	ld a,(0cad8h)		;6675
	bit 7,a			;6678
	jr nz,l6693h		;667a
	ld a,(0caf8h)		;667c
	bit 7,a			;667f
	jr nz,l669ch		;6681
	ret			;6683
l6684h:
	ld a,(0cad8h)		;6684
	bit 7,a			;6687
	jr z,l6693h		;6689
	ld a,(0caf8h)		;668b
	bit 7,a			;668e
	jr z,l669ch		;6690
	ret			;6692
l6693h:
	ld bc,(0cac7h)		;6693
	ld de,(0cac9h)		;6697
	ret			;669b
l669ch:
	ld bc,(0cae7h)		;669c
	ld de,(0cae9h)		;66a0
	ret			;66a4
	ld (ix+000h),a		;66a5
	ld a,(iy+000h)		;66a8
	ld (ix+003h),a		;66ab
	ret			;66ae
	call sub_75c2h		;66af
	ret z			;66b2
	jp c,087dbh		;66b3
	bit 4,a			;66b6
	call nz,086cbh		;66b8
	jp 087dbh		;66bb
	call sub_75c2h		;66be
	ret z			;66c1
	jp c,087dbh		;66c2
	bit 4,a			;66c5
	jp nz,086cbh		;66c7
	ret			;66ca
	call sub_76f1h		;66cb
	ex de,hl		;66ce
	ld a,(hl)		;66cf
	cp 0a7h			;66d0
	ret c			;66d2
	inc a			;66d3
	cp 0afh			;66d4
	jr z,l66e2h		;66d6
	ret nc			;66d8
	ld (hl),a		;66d9
	ld a,01eh		;66da
	call 04af5h		;66dc
	jp 087dbh		;66df
l66e2h:
	ld (hl),000h		;66e2
	ld a,01fh		;66e4
	call 04af5h		;66e6
	jp 087dbh		;66e9
	ld a,(ix+004h)		;66ec
	or a			;66ef
	jp nz,087dbh		;66f0
	ld a,(ix+008h)		;66f3
	cp 018h			;66f6
	jp nc,087dbh		;66f8
	ld a,(ix+00ah)		;66fb
	cp 020h			;66fe
	ret c			;6700
	jp 087dbh		;6701
	push hl			;6704
	ld hl,0f0f9h		;6705
	ld (hl),000h		;6708
	pop hl			;670a
	ld hl,0cc40h		;670b
	ld bc,000ffh		;670e
	call 04648h		;6711
	jr l671eh		;6714
	ld c,000h		;6716
	jr l673dh		;6718
	ld c,006h		;671a
	jr l673dh		;671c
l671eh:
	call 08732h		;671e
	ld a,(0cb08h)		;6721
	call 04e79h		;6724
	xor a			;6727
	ld c,000h		;6728
	ld hl,00040h		;672a
	ld de,0c9a0h		;672d
	jr l6749h		;6730
	ld a,(0cb41h)		;6732
	ld c,000h		;6735
	cp 00ah			;6737
	jr nz,l673dh		;6739
	ld c,006h		;673b
l673dh:
	ld a,(0cb08h)		;673d
	call 04e79h		;6740
	ld hl,00020h		;6743
	ld de,0ca00h		;6746
l6749h:
	push de			;6749
	push hl			;674a
	add a,a			;674b
	add a,c			;674c
	ld l,a			;674d
	ld h,000h		;674e
	add hl,hl		;6750
	add hl,hl		;6751
	add hl,hl		;6752
	add hl,hl		;6753
	add hl,hl		;6754
	ld de,089b0h		;6755
	add hl,de		;6758
	pop bc			;6759
	pop de			;675a
	ex de,hl		;675b
	jp 087fbh		;675c
	call sub_75c2h		;675f
	bit 5,a			;6762
	jp nz,087bfh		;6764
	bit 1,a			;6767
	ret z			;6769
	ld (ix+004h),0ffh	;676a
	ret			;676e
	ld ix,0ca40h		;676f
	ld de,00140h		;6773
	ld hl,001e0h		;6776
	call 0875fh		;6779
	ld ix,0ca40h		;677c
	ld de,001c0h		;6780
	ld hl,001e0h		;6783
	call 0875fh		;6786
	ret			;6789
	call 0876fh		;678a
	ld ix,0cc40h		;678d
	ld b,008h		;6791
l6793h:
	ld a,(ix+000h)		;6793
	or a			;6796
	push bc			;6797
	call nz,087a4h		;6798
	pop bc			;679b
	ld de,00020h		;679c
	add ix,de		;679f
	djnz l6793h		;67a1
	ret			;67a3
	cp 009h			;67a4
	jp nc,04ae0h		;67a6
	call 0461ah		;67a9
	cp (hl)			;67ac
	add a,a			;67ad
	cp (hl)			;67ae
	add a,a			;67af
	cp (hl)			;67b0
	add a,a			;67b1
	cp (hl)			;67b2
	add a,a			;67b3
	ld c,(hl)		;67b4
	adc a,l			;67b5
	cp (hl)			;67b6
	add a,a			;67b7
	cp (hl)			;67b8
	add a,a			;67b9
	sbc a,e			;67ba
	adc a,(hl)		;67bb
	ld (hl),a		;67bc
	adc a,b			;67bd
	ret			;67be
	ld c,000h		;67bf
	ld a,(iy+000h)		;67c1
	cp 003h			;67c4
	ret nz			;67c6
	ld a,(iy+001h)		;67c7
	dec a			;67ca
	ret nz			;67cb
	push iy			;67cc
	call 083a4h		;67ce
	pop ix			;67d1
	call 06e98h		;67d3
	ld a,009h		;67d6
	jp 04af5h		;67d8
	ld (ix+000h),000h	;67db
	or a			;67df
	ret			;67e0
	ld de,00020h		;67e1
l67e4h:
	ld a,(ix+000h)		;67e4
	and a			;67e7
	jr z,l67f0h		;67e8
	add ix,de		;67ea
	djnz l67e4h		;67ec
	scf			;67ee
	ret			;67ef
l67f0h:
	push ix			;67f0
	pop hl			;67f2
	xor a			;67f3
	ld b,020h		;67f4
l67f6h:
	ld (hl),a		;67f6
	inc l			;67f7
	djnz l67f6h		;67f8
	ret			;67fa
	push de			;67fb
	call 0880dh		;67fc
	ld de,00800h		;67ff
	add hl,de		;6802
	pop de			;6803
	push de			;6804
	call 0880dh		;6805
	ld de,00800h		;6808
	add hl,de		;680b
	pop de			;680c
	push bc			;680d
	push hl			;680e
	ex de,hl		;680f
	call 046ach		;6810
	pop hl			;6813
	pop bc			;6814
	ret			;6815
	push ix			;6816
	pop hl			;6818
	ld a,(hl)		;6819
	ld de,00020h		;681a
	add hl,de		;681d
	or (hl)			;681e
	add hl,de		;681f
	or (hl)			;6820
	ret nz			;6821
	push ix			;6822
	ld b,003h		;6824
	call 087e1h		;6826
	call 0883bh		;6829
	ld (ix+003h),005h	;682c
l6830h:
	ld (ix+005h),004h	;6830
	pop ix			;6834
	ld b,003h		;6836
	call 087e1h		;6838
	xor a			;683b
	ld (0cb1dh),a		;683c
	ld a,008h		;683f
	call 086a5h		;6841
	ld (ix+014h),003h	;6844
	ld (ix+013h),003h	;6848
	xor a			;684c
	ld hl,0000ch		;684d
	call 0863ch		;6850
	ld (ix+00ah),d		;6853
	ld (ix+009h),e		;6856
	ld (ix+008h),b		;6859
	ld (ix+007h),c		;685c
	ld de,00180h		;685f
	call 06bfdh		;6862
	ld (ix+015h),005h	;6865
	ld (ix+017h),005h	;6869
	call 08950h		;686d
	ld a,00ch		;6870
	call 04af5h		;6872
	or a			;6875
	ret			;6876
	call 08885h		;6877
	call sub_6a7fh		;687a
	ld a,(ix+000h)		;687d
	or a			;6880
	jp nz,l77d0h		;6881
	ret			;6884
	ld a,(ix+001h)		;6885
	cp 006h			;6888
	jp nc,04ae0h		;688a
	call 0461ah		;688d
	sbc a,h			;6890
	adc a,b			;6891
	or b			;6892
	adc a,b			;6893
	call nz,0f988h		;6894
	adc a,b			;6897
	inc e			;6898
	adc a,c			;6899
	inc (hl)		;689a
	adc a,c			;689b
	call 088e6h		;689c
	dec (ix+017h)		;689f
	ret nz			;68a2
	ld (ix+017h),005h	;68a3
	ld de,000c0h		;68a7
	call 06bfdh		;68aa
	jp 0894ch		;68ad
	call 088e6h		;68b0
	dec (ix+017h)		;68b3
	ret nz			;68b6
	ld (ix+017h),005h	;68b7
	ld de,00040h		;68bb
	call 06bfdh		;68be
	jp 0894ch		;68c1
	call 088e6h		;68c4
	dec (ix+017h)		;68c7
	ret nz			;68ca
l68cbh:
	ld (ix+017h),003h	;68cb
	ld a,(ix+005h)		;68cf
	and 004h		;68d2
	inc a			;68d4
	ld (ix+005h),a		;68d5
	call 08950h		;68d8
	ld de,00000h		;68db
	call 06bfdh		;68de
	ld (ix+001h),003h	;68e1
	ret			;68e5
	ld a,(ix+00ah)		;68e6
	cp 01dh			;68e9
	jr nc,l68cbh		;68eb
	ld h,001h		;68ed
	ld d,h			;68ef
	ld l,000h		;68f0
	ld e,l			;68f2
	call sub_75c2h		;68f3
	ret z			;68f6
	jr l68cbh		;68f7
	dec (ix+017h)		;68f9
	ret nz			;68fc
	ld (ix+017h),005h	;68fd
	ld a,(ix+005h)		;6901
	inc a			;6904
	ld (ix+005h),a		;6905
	push af			;6908
	call 08950h		;6909
	pop af			;690c
	and 003h		;690d
	cp 003h			;690f
	ret nz			;6911
	call 08973h		;6912
	ld a,00dh		;6915
	call 04af5h		;6917
	jr l694ch		;691a
	dec (ix+017h)		;691c
	ret nz			;691f
	bit 0,(ix+003h)		;6920
	jr z,l694ch		;6924
	call 04e65h		;6926
	call 04dd7h		;6929
	call 07523h		;692c
	call 07058h		;692f
	jr l694ch		;6932
	bit 0,(ix+003h)		;6934
	jp z,087dbh		;6938
	call sub_708bh		;693b
	ld a,00eh		;693e
	call 04af5h		;6940
	call 07523h		;6943
	call 07058h		;6946
	jp 087dbh		;6949
l694ch:
	inc (ix+001h)		;694c
	ret			;694f
	ld a,(ix+005h)		;6950
	bit 2,a			;6953
	ret nz			;6955
	cp 003h			;6956
	jr c,l695ch		;6958
	ld a,002h		;695a
l695ch:
	add a,a			;695c
	add a,a			;695d
	add a,a			;695e
	add a,a			;695f
	add a,a			;6960
	add a,a			;6961
	ld l,a			;6962
	ld h,000h		;6963
	ld de,08b30h		;6965
	add hl,de		;6968
	ex de,hl		;6969
	ld bc,00040h		;696a
	ld hl,0ca20h		;696d
	jp 087fbh		;6970
	ld bc,01000h		;6973
	ld hl,0ef01h		;6976
l6979h:
	ld a,(hl)		;6979
	and 0e0h		;697a
	call 089aah		;697c
	rrca			;697f
	ld d,a			;6980
	inc hl			;6981
	inc hl			;6982
	ld a,(hl)		;6983
	and 0e0h		;6984
	call 089aah		;6986
	rlca			;6989
	rlca			;698a
	rlca			;698b
	ld e,a			;698c
	inc hl			;698d
	inc hl			;698e
	ld a,(hl)		;698f
	and 0e0h		;6990
	call 089aah		;6992
	rlca			;6995
	rlca			;6996
	rlca			;6997
	or d			;6998
	ld d,a			;6999
	inc hl			;699a
	inc hl			;699b
	ld a,c			;699c
	inc c			;699d
	push af			;699e
	push hl			;699f
	push bc			;69a0
	call 04776h		;69a1
	pop bc			;69a4
	pop hl			;69a5
	pop af			;69a6
	djnz l6979h		;69a7
	ret			;69a9
	sub 040h		;69aa
	ret nc			;69ac
	ld a,000h		;69ad
	ret			;69af
	nop			;69b0
	nop			;69b1
	nop			;69b2
	nop			;69b3
	nop			;69b4
	nop			;69b5
	inc a			;69b6
	inc a			;69b7
	inc a			;69b8
	inc a			;69b9
	nop			;69ba
	nop			;69bb
	nop			;69bc
	nop			;69bd
	nop			;69be
	nop			;69bf
	nop			;69c0
	nop			;69c1
	nop			;69c2
	nop			;69c3
	nop			;69c4
	nop			;69c5
	inc a			;69c6
	inc a			;69c7
	inc a			;69c8
	inc a			;69c9
	nop			;69ca
	nop			;69cb
	nop			;69cc
	nop			;69cd
	nop			;69ce
	nop			;69cf
	nop			;69d0
	nop			;69d1
	ld bc,00101h		;69d2
	ld bc,00000h		;69d5
	nop			;69d8
	nop			;69d9
	ld bc,00101h		;69da
	ld bc,00000h		;69dd
	nop			;69e0
	nop			;69e1
	add a,b			;69e2
	add a,b			;69e3
	add a,b			;69e4
	add a,b			;69e5
	nop			;69e6
	nop			;69e7
	nop			;69e8
	nop			;69e9
	add a,b			;69ea
	add a,b			;69eb
	add a,b			;69ec
	add a,b			;69ed
	nop			;69ee
	nop			;69ef
	nop			;69f0
	nop			;69f1
	nop			;69f2
	nop			;69f3
	nop			;69f4
	nop			;69f5
	inc e			;69f6
	ld a,063h		;69f7
	ld a,01ch		;69f9
	nop			;69fb
	nop			;69fc
	nop			;69fd
	nop			;69fe
	nop			;69ff
	nop			;6a00
	nop			;6a01
	nop			;6a02
	nop			;6a03
	nop			;6a04
	nop			;6a05
	inc e			;6a06
	ld a,063h		;6a07
	ld a,01ch		;6a09
	nop			;6a0b
	nop			;6a0c
	nop			;6a0d
	nop			;6a0e
	nop			;6a0f
	nop			;6a10
	nop			;6a11
	ld bc,00101h		;6a12
	ld bc,00000h		;6a15
	nop			;6a18
	nop			;6a19
	ld bc,00101h		;6a1a
	ld bc,00000h		;6a1d
	nop			;6a20
	nop			;6a21
	add a,b			;6a22
	add a,b			;6a23
	add a,b			;6a24
	add a,b			;6a25
	nop			;6a26
	nop			;6a27
	nop			;6a28
	nop			;6a29
	add a,b			;6a2a
	add a,b			;6a2b
	add a,b			;6a2c
	add a,b			;6a2d
	nop			;6a2e
	nop			;6a2f
	nop			;6a30
	nop			;6a31
	nop			;6a32
	nop			;6a33
	nop			;6a34
	inc e			;6a35
	ld a,063h		;6a36
	pop bc			;6a38
	ld h,e			;6a39
	ld a,01ch		;6a3a
	nop			;6a3c
	nop			;6a3d
	nop			;6a3e
	nop			;6a3f
	nop			;6a40
	nop			;6a41
	nop			;6a42
	nop			;6a43
	nop			;6a44
	inc e			;6a45
	ld a,063h		;6a46
	pop bc			;6a48
	ld h,e			;6a49
	ld a,01ch		;6a4a
	nop			;6a4c
	nop			;6a4d
	nop			;6a4e
	nop			;6a4f
	nop			;6a50
	nop			;6a51
	ld bc,00101h		;6a52
	ld bc,00000h		;6a55
	nop			;6a58
	nop			;6a59
	ld bc,00101h		;6a5a
	ld bc,00000h		;6a5d
	add a,b			;6a60
	add a,b			;6a61
	ret nz			;6a62
	ret nz			;6a63
	ret nz			;6a64
	ret nz			;6a65
	add a,b			;6a66
	nop			;6a67
	add a,b			;6a68
	add a,b			;6a69
	ret nz			;6a6a
	ret nz			;6a6b
	ret nz			;6a6c
	ret nz			;6a6d
	add a,b			;6a6e
	nop			;6a6f
	nop			;6a70
	nop			;6a71
	nop			;6a72
	nop			;6a73
	dec b			;6a74
	nop			;6a75
	ld (bc),a		;6a76
	nop			;6a77
	nop			;6a78
	inc b			;6a79
	nop			;6a7a
	dec b			;6a7b
	nop			;6a7c
	nop			;6a7d
	nop			;6a7e
sub_6a7fh:
	nop			;6a7f
	nop			;6a80
	nop			;6a81
	nop			;6a82
	nop			;6a83
	ret po			;6a84
	ld a,b			;6a85
	cp h			;6a86
	inc e			;6a87
	inc e			;6a88
	cp h			;6a89
	ld a,b			;6a8a
	ret po			;6a8b
	nop			;6a8c
	nop			;6a8d
	nop			;6a8e
	nop			;6a8f
	nop			;6a90
	jr $+26			;6a91
	jr $+26			;6a93
	jr l6aafh		;6a95
	nop			;6a97
	jr l6ab2h		;6a98
	jr $+26			;6a9a
	jr l6ab6h		;6a9c
	nop			;6a9e
	nop			;6a9f
	nop			;6aa0
	jr l6abbh		;6aa1
	jr $+26			;6aa3
	jr l6abfh		;6aa5
	nop			;6aa7
	jr l6ac2h		;6aa8
	jr l6ac4h		;6aaa
	jr l6ac6h		;6aac
	nop			;6aae
l6aafh:
	nop			;6aaf
	nop			;6ab0
	nop			;6ab1
l6ab2h:
	rla			;6ab2
	ld bc,0000ah		;6ab3
l6ab6h:
	ld (bc),a		;6ab6
	nop			;6ab7
	nop			;6ab8
	inc b			;6ab9
	nop			;6aba
l6abbh:
	ld a,(bc)		;6abb
	ld bc,00017h		;6abc
l6abfh:
	nop			;6abf
	nop			;6ac0
	nop			;6ac1
l6ac2h:
	add a,b			;6ac2
	ret po			;6ac3
l6ac4h:
	ret p			;6ac4
	ld a,b			;6ac5
l6ac6h:
	call m,03c3ch		;6ac6
	call m,0f078h		;6ac9
	ret po			;6acc
	add a,b			;6acd
	nop			;6ace
	nop			;6acf
	nop			;6ad0
	inc e			;6ad1
sub_6ad2h:
	inc e			;6ad2
	inc e			;6ad3
	inc e			;6ad4
	inc e			;6ad5
	inc e			;6ad6
	nop			;6ad7
	inc e			;6ad8
	inc e			;6ad9
	inc e			;6ada
	inc e			;6adb
	inc e			;6adc
	inc e			;6add
	nop			;6ade
	nop			;6adf
	nop			;6ae0
	jr c,l6b1bh		;6ae1
	jr c,l6b1dh		;6ae3
	jr c,l6b1fh		;6ae5
	nop			;6ae7
	jr c,l6b22h		;6ae8
	jr c,l6b24h		;6aea
	jr c,l6b26h		;6aec
	nop			;6aee
	nop			;6aef
	sbc a,a			;6af0
	inc bc			;6af1
	daa			;6af2
	nop			;6af3
	dec d			;6af4
	nop			;6af5
	ld bc,00000h		;6af6
	add hl,bc		;6af9
	nop			;6afa
	dec b			;6afb
	nop			;6afc
	daa			;6afd
	inc bc			;6afe
	sbc a,a			;6aff
	nop			;6b00
	ret nz			;6b01
	ret po			;6b02
	ret p			;6b03
l6b04h:
	ret m			;6b04
	jr c,l6b83h		;6b05
	inc e			;6b07
	inc e			;6b08
	ld a,h			;6b09
	jr c,l6b04h		;6b0a
	ret p			;6b0c
	ret po			;6b0d
	ret nz			;6b0e
	nop			;6b0f
	ex af,af'		;6b10
	ex af,af'		;6b11
	inc e			;6b12
	inc e			;6b13
	inc e			;6b14
	inc e			;6b15
	ex af,af'		;6b16
	nop			;6b17
	ex af,af'		;6b18
	ex af,af'		;6b19
	inc e			;6b1a
l6b1bh:
	inc e			;6b1b
	inc e			;6b1c
l6b1dh:
	inc e			;6b1d
	ex af,af'		;6b1e
l6b1fh:
	nop			;6b1f
	djnz l6b32h		;6b20
l6b22h:
	jr c,$+58		;6b22
l6b24h:
	jr c,$+58		;6b24
l6b26h:
	djnz l6b28h		;6b26
l6b28h:
	djnz l6b3ah		;6b28
	jr c,l6b64h		;6b2a
	jr c,l6b66h		;6b2c
	djnz l6b30h		;6b2e
l6b30h:
	nop			;6b30
	nop			;6b31
l6b32h:
	nop			;6b32
	add hl,bc		;6b33
	ld bc,0061fh		;6b34
	ld b,009h		;6b37
	add hl,bc		;6b39
l6b3ah:
	rrca			;6b3a
	ld bc,0011fh		;6b3b
	ld (bc),a		;6b3e
	inc b			;6b3f
	nop			;6b40
	nop			;6b41
	nop			;6b42
	ld l,b			;6b43
	ex af,af'		;6b44
	ex af,af'		;6b45
	sub h			;6b46
	call p,00808h		;6b47
	ld l,h			;6b4a
	ret m			;6b4b
	ex af,af'		;6b4c
	ret p			;6b4d
	nop			;6b4e
	nop			;6b4f
	ex af,af'		;6b50
	inc c			;6b51
	ld c,006h		;6b52
	ld e,000h		;6b54
	add hl,bc		;6b56
	add hl,bc		;6b57
	ld b,006h		;6b58
	nop			;6b5a
	ld e,000h		;6b5b
	ld c,00ch		;6b5d
	ex af,af'		;6b5f
	nop			;6b60
	nop			;6b61
	nop			;6b62
	sub b			;6b63
l6b64h:
	ret p			;6b64
	ret p			;6b65
l6b66h:
	ld l,b			;6b66
	ex af,af'		;6b67
	call p,090f4h		;6b68
	nop			;6b6b
	ret p			;6b6c
	nop			;6b6d
	nop			;6b6e
	nop			;6b6f
	nop			;6b70
	nop			;6b71
	nop			;6b72
	ld a,(bc)		;6b73
	ld a,(bc)		;6b74
	jp m,03535h		;6b75
	ld c,d			;6b78
	ld c,d			;6b79
	ld a,d			;6b7a
	rrca			;6b7b
	jp m,02809h		;6b7c
	ex af,af'		;6b7f
	nop			;6b80
	nop			;6b81
	nop			;6b82
l6b83h:
	ret nc			;6b83
	inc d			;6b84
	inc d			;6b85
	inc l			;6b86
	call pe,01010h		;6b87
	call nc,018f4h		;6b8a
l6b8dh:
	ret po			;6b8d
	nop			;6b8e
	nop			;6b8f
	djnz l6ba2h		;6b90
	jr nc,$+51		;6b92
	pop af			;6b94
l6b95h:
	dec b			;6b95
	ld c,d			;6b96
	ld c,d			;6b97
	dec (hl)		;6b98
	dec (hl)		;6b99
	dec b			;6b9a
	ret p			;6b9b
	ld bc,01030h		;6b9c
	djnz l6ba1h		;6b9f
l6ba1h:
	nop			;6ba1
l6ba2h:
	nop			;6ba2
	jr nz,l6b8dh		;6ba3
	ret pe			;6ba5
	ret nc			;6ba6
	djnz l6b95h		;6ba7
	call pe,00828h		;6ba9
	ret po			;6bac
	nop			;6bad
	nop			;6bae
	nop			;6baf
	nop			;6bb0
	nop			;6bb1
	ld b,00ah		;6bb2
	ld a,(bc)		;6bb4
	jp m,03535h		;6bb5
	ld c,d			;6bb8
	ld c,d			;6bb9
	ld a,d			;6bba
	rrca			;6bbb
	jp m,03807h		;6bbc
	ld b,000h		;6bbf
	nop			;6bc1
	nop			;6bc2
	ret nc			;6bc3
	ld de,02b15h		;6bc4
l6bc7h:
	ex de,hl		;6bc7
	inc d			;6bc8
	inc d			;6bc9
	push de			;6bca
	push af			;6bcb
	ld a,(de)		;6bcc
	ret po			;6bcd
	nop			;6bce
	nop			;6bcf
	nop			;6bd0
	ld b,038h		;6bd1
	ld sp,005f1h		;6bd3
	ld c,d			;6bd6
	ld c,d			;6bd7
	dec (hl)		;6bd8
	dec (hl)		;6bd9
	dec b			;6bda
	ret p			;6bdb
	ld bc,00638h		;6bdc
	nop			;6bdf
	nop			;6be0
	nop			;6be1
	nop			;6be2
	jr nz,l6bc7h		;6be3
	jp pe,014d4h		;6be5
	ex de,hl		;6be8
	ex de,hl		;6be9
	ld hl,(0e00ah)		;6bea
	nop			;6bed
	nop			;6bee
	nop			;6bef
	nop			;6bf0
	ld a,(iy+000h)		;6bf1
	dec a			;6bf4
	jp nz,08c9ch		;6bf5
	ld a,(0cb1dh)		;6bf8
	or a			;6bfb
	jp nz,08816h		;6bfc
	push ix			;6bff
	pop hl			;6c01
	ld a,(hl)		;6c02
	ld de,00020h		;6c03
	add hl,de		;6c06
	or (hl)			;6c07
	add hl,de		;6c08
	or (hl)			;6c09
	ret nz			;6c0a
	push ix			;6c0b
	push bc			;6c0d
	call 08c35h		;6c0e
	pop bc			;6c11
	pop ix			;6c12
	push ix			;6c14
	push bc			;6c16
	call 08c35h		;6c17
	pop bc			;6c1a
	pop ix			;6c1b
	ld hl,00100h		;6c1d
	call nc,08c2eh		;6c20
	call 08c35h		;6c23
	ld hl,0ff00h		;6c26
sub_6c29h:
	call nc,08c2eh		;6c29
	or a			;6c2c
	ret			;6c2d
	ld (ix+00ch),h		;6c2e
	ld (ix+00bh),l		;6c31
	ret			;6c34
	call 08c47h		;6c35
	ret c			;6c38
	push iy			;6c39
	call 08d51h		;6c3b
	pop iy			;6c3e
	ld a,003h		;6c40
	call 04af0h		;6c42
	or a			;6c45
	ret			;6c46
	call 087e1h		;6c47
	ret c			;6c4a
	ld a,(0cb08h)		;6c4b
	call 04e79h		;6c4e
	inc a			;6c51
	add a,a			;6c52
	ld (ix+006h),a		;6c53
	ld a,(iy+000h)		;6c56
	ld (ix+003h),a		;6c59
	ld bc,08ddch		;6c5c
	call 0861fh		;6c5f
	ld (ix+00bh),e		;6c62
	ld (ix+00ch),d		;6c65
	ld (ix+00dh),c		;6c68
	ld (ix+00eh),b		;6c6b
	call 0863ch		;6c6e
	ld (ix+00ah),d		;6c71
	ld (ix+009h),e		;6c74
	ld (ix+008h),b		;6c77
	ld (ix+007h),c		;6c7a
	ld (ix+014h),003h	;6c7d
	ld (ix+013h),003h	;6c81
	ld a,004h		;6c85
	call 086a5h		;6c87
	ld a,(iy+000h)		;6c8a
	dec a			;6c8d
	jr nz,l6d0bh		;6c8e
	ld a,(0cb08h)		;6c90
	call 04e79h		;6c93
	add a,00fh		;6c96
	ld (ix+005h),a		;6c98
	ret			;6c9b
	ld a,(iy+000h)		;6c9c
	dec a			;6c9f
	jr nz,l6ca9h		;6ca0
	ld a,(0cb1dh)		;6ca2
	or a			;6ca5
	jp nz,08816h		;6ca6
l6ca9h:
	call 08ccdh		;6ca9
	ret c			;6cac
	ld a,(0cb08h)		;6cad
	call 04e79h		;6cb0
	inc a			;6cb3
	ld (ix+006h),a		;6cb4
	push af			;6cb7
	push iy			;6cb8
	call 08d51h		;6cba
	pop iy			;6cbd
	pop af			;6cbf
	cp 003h			;6cc0
	ld a,004h		;6cc2
	jr z,l6cc8h		;6cc4
	ld a,002h		;6cc6
l6cc8h:
	call 04af0h		;6cc8
	or a			;6ccb
	ret			;6ccc
	call 087e1h		;6ccd
	ret c			;6cd0
	ld a,(iy+000h)		;6cd1
	ld (ix+003h),a		;6cd4
	ld bc,08ddch		;6cd7
	call 0861fh		;6cda
	ld (ix+00bh),e		;6cdd
	ld (ix+00ch),d		;6ce0
	ld (ix+00dh),c		;6ce3
	ld (ix+00eh),b		;6ce6
	call 0863ch		;6ce9
	ld (ix+00ah),d		;6cec
	ld (ix+009h),e		;6cef
	ld (ix+008h),b		;6cf2
	ld (ix+007h),c		;6cf5
	ld (ix+014h),003h	;6cf8
	ld (ix+013h),003h	;6cfc
	ld a,004h		;6d00
	call 086a5h		;6d02
	ld a,(iy+000h)		;6d05
	dec a			;6d08
	jr z,l6d1ch		;6d09
l6d0bh:
	xor a			;6d0b
	add a,a			;6d0c
	ld c,a			;6d0d
	ld a,(ix+00ch)		;6d0e
	or a			;6d11
	jr z,l6d16h		;6d12
	ld a,001h		;6d14
l6d16h:
	add a,c			;6d16
	ld (ix+005h),a		;6d17
	or a			;6d1a
	ret			;6d1b
l6d1ch:
	ld a,(0cb08h)		;6d1c
	call 04e79h		;6d1f
	add a,00ch		;6d22
	ld (ix+005h),a		;6d24
	or a			;6d27
	ret			;6d28
	ld bc,08ddch		;6d29
	call 0861fh		;6d2c
	ld (ix+00bh),e		;6d2f
	ld (ix+00ch),d		;6d32
	ld (ix+00dh),c		;6d35
	ld (ix+00eh),b		;6d38
	ld a,(0cb08h)		;6d3b
	call 04e79h		;6d3e
	add a,a			;6d41
	ld c,a			;6d42
	ld a,d			;6d43
	or a			;6d44
	jr z,l6d49h		;6d45
	ld a,001h		;6d47
l6d49h:
	add a,c			;6d49
	ld (ix+005h),a		;6d4a
	ret			;6d4d
	call sub_6a7fh		;6d4e
	call 086ech		;6d51
	ret nc			;6d54
	bit 1,(ix+005h)		;6d55
	jp nz,08da1h		;6d59
	call 08e0ch		;6d5c
	jp z,l77d0h		;6d5f
	ld h,(ix+00eh)		;6d62
	ld l,(ix+00dh)		;6d65
	ld a,h			;6d68
	cpl			;6d69
	ld h,a			;6d6a
	ld a,l			;6d6b
	cpl			;6d6c
	ld l,a			;6d6d
	inc hl			;6d6e
	sra h			;6d6f
	rr l			;6d71
	ld bc,00100h		;6d73
	add hl,bc		;6d76
	ex de,hl		;6d77
	ld h,(ix+00ch)		;6d78
	ld l,(ix+00bh)		;6d7b
	ld a,h			;6d7e
	cpl			;6d7f
	ld h,a			;6d80
	ld a,l			;6d81
	cpl			;6d82
	ld l,a			;6d83
	inc hl			;6d84
	sra h			;6d85
	rr l			;6d87
	ld bc,00100h		;6d89
	add hl,bc		;6d8c
	call 086afh		;6d8d
	ld de,00100h		;6d90
	ld hl,00100h		;6d93
	call 086afh		;6d96
	ld a,(ix+000h)		;6d99
	or a			;6d9c
	jp nz,l77d0h		;6d9d
	ret			;6da0
	call 08e0ch		;6da1
	jp z,l77d0h		;6da4
	ld de,00080h		;6da7
	ld hl,00080h		;6daa
	call 086beh		;6dad
	ld de,00080h		;6db0
	ld hl,00180h		;6db3
	call 086beh		;6db6
	ld de,00180h		;6db9
	ld hl,00180h		;6dbc
	call 086beh		;6dbf
	ld de,00180h		;6dc2
	ld hl,00080h		;6dc5
	call 086beh		;6dc8
	ld de,00100h		;6dcb
	ld hl,00100h		;6dce
	call 086afh		;6dd1
	ld a,(ix+000h)		;6dd4
	or a			;6dd7
	jp nz,l77d0h		;6dd8
	ret			;6ddb
	nop			;6ddc
	nop			;6ddd
	nop			;6dde
	ld (bc),a		;6ddf
	rlca			;6de0
	ld b,000h		;6de1
	nop			;6de3
	nop			;6de4
	ld (bc),a		;6de5
	rst 38h			;6de6
	nop			;6de7
	nop			;6de8
	ld (bc),a		;6de9
	nop			;6dea
	nop			;6deb
	rst 38h			;6dec
	nop			;6ded
	nop			;6dee
	nop			;6def
	nop			;6df0
	cp 0ffh			;6df1
	nop			;6df3
	nop			;6df4
	nop			;6df5
	nop			;6df6
	cp 007h			;6df7
	nop			;6df9
	nop			;6dfa
	nop			;6dfb
	nop			;6dfc
	cp 0ffh			;6dfd
	nop			;6dff
	nop			;6e00
	cp 000h			;6e01
	nop			;6e03
	rst 38h			;6e04
	nop			;6e05
	nop			;6e06
	nop			;6e07
	nop			;6e08
	ld (bc),a		;6e09
	rst 38h			;6e0a
	nop			;6e0b
	ld d,(ix+00ah)		;6e0c
	ld e,(ix+008h)		;6e0f
	call 07b06h		;6e12
	jr nc,l6e4dh		;6e15
	ex de,hl		;6e17
	ld d,0deh		;6e18
	ld e,(hl)		;6e1a
	ld a,(de)		;6e1b
	or a			;6e1c
	ret nz			;6e1d
	inc hl			;6e1e
	ld e,(hl)		;6e1f
	ld a,(de)		;6e20
	or a			;6e21
	ret nz			;6e22
	inc hl			;6e23
	ld e,(hl)		;6e24
	ld a,(de)		;6e25
	or a			;6e26
	ret nz			;6e27
	ld bc,0002eh		;6e28
	add hl,bc		;6e2b
	ld e,(hl)		;6e2c
	ld a,(de)		;6e2d
	or a			;6e2e
	ret nz			;6e2f
	inc hl			;6e30
	ld e,(hl)		;6e31
	ld a,(de)		;6e32
	or a			;6e33
	ret nz			;6e34
	inc hl			;6e35
	ld e,(hl)		;6e36
	ld a,(de)		;6e37
	or a			;6e38
	ret nz			;6e39
	ld bc,0002eh		;6e3a
	add hl,bc		;6e3d
	ld e,(hl)		;6e3e
	ld a,(de)		;6e3f
	or a			;6e40
	ret nz			;6e41
	inc hl			;6e42
	ld e,(hl)		;6e43
	ld a,(de)		;6e44
	or a			;6e45
	ret nz			;6e46
	inc hl			;6e47
	ld e,(hl)		;6e48
	ld a,(de)		;6e49
	or a			;6e4a
	ret nz			;6e4b
	ret			;6e4c
l6e4dh:
	or 0ffh			;6e4d
	ret			;6e4f
	ld b,001h		;6e50
	call 087e1h		;6e52
	ret c			;6e55
	ld a,(0cc0eh)		;6e56
	or a			;6e59
	ret nz			;6e5a
	ld a,001h		;6e5b
	ld (0cc0eh),a		;6e5d
	ld a,007h		;6e60
	call 086a5h		;6e62
	ld (ix+014h),003h	;6e65
	ld (ix+013h),003h	;6e69
	ld a,(iy+000h)		;6e6d
	ld a,004h		;6e70
	ld (ix+003h),a		;6e72
	xor a			;6e75
	ld hl,0000ch		;6e76
	call 0863ch		;6e79
	ld (ix+00ah),d		;6e7c
	ld (ix+009h),e		;6e7f
	ld (ix+008h),b		;6e82
	ld (ix+007h),c		;6e85
	ld de,00000h		;6e88
	ld hl,00100h		;6e8b
	call 06bebh		;6e8e
	ld (ix+015h),005h	;6e91
	ld (ix+017h),001h	;6e95
	or a			;6e99
	ret			;6e9a
	call 08ebbh		;6e9b
	ld d,000h		;6e9e
	ld e,d			;6ea0
	ld l,d			;6ea1
	ld h,d			;6ea2
	inc h			;6ea3
	call 086beh		;6ea4
	ld d,000h		;6ea7
	ld e,d			;6ea9
	ld l,d			;6eaa
	inc d			;6eab
	ld h,d			;6eac
	call 086afh		;6ead
	call 086ech		;6eb0
	ld a,(ix+000h)		;6eb3
	or a			;6eb6
	jp nz,l77d0h		;6eb7
	ret			;6eba
	ld a,(0ca10h)		;6ebb
	cp 004h			;6ebe
	jp z,sub_6a7fh		;6ec0
	call sub_6c29h		;6ec3
	ld de,00100h		;6ec6
	ld hl,00200h		;6ec9
	call 08f06h		;6ecc
	ld de,00000h		;6ecf
	ld hl,00100h		;6ed2
	jr nc,l6effh		;6ed5
	ld de,00100h		;6ed7
	ld hl,00300h		;6eda
	call 08f06h		;6edd
	ld de,00000h		;6ee0
	ld hl,00200h		;6ee3
	jr nc,l6effh		;6ee6
	ld de,00300h		;6ee8
	ld hl,00200h		;6eeb
	call 08f06h		;6eee
	ld de,00200h		;6ef1
	ld hl,00100h		;6ef4
	jr nc,l6effh		;6ef7
	ld de,00200h		;6ef9
	ld hl,00000h		;6efc
l6effh:
	call 06bebh		;6eff
	call sub_6a7fh		;6f02
	ret			;6f05
	call sub_75aah		;6f06
	ccf			;6f09
	ret nc			;6f0a
	cp 003h			;6f0b
	scf			;6f0d
	ret z			;6f0e
	or a			;6f0f
	ret			;6f10
	ret			;6f11
	ld a,0afh		;6f12
	push hl			;6f14
	push af			;6f15
	call 0465fh		;6f16
	pop bc			;6f19
	pop hl			;6f1a
	push af			;6f1b
	push hl			;6f1c
	push bc			;6f1d
	ld a,(0f342h)		;6f1e
	ld h,040h		;6f21
	call 00024h		;6f23
	pop af			;6f26
	pop hl			;6f27
	call 08f34h		;6f28
	pop af			;6f2b
	push hl			;6f2c
	ld h,040h		;6f2d
	call 00024h		;6f2f
	pop hl			;6f32
	ret			;6f33
	or a			;6f34
	jr z,l6f4dh		;6f35
	push hl			;6f37
	ld hl,0c000h		;6f38
	ld de,04000h		;6f3b
	ld bc,01000h		;6f3e
	call 08f56h		;6f41
	ld hl,(l70f0h)		;6f44
	pop de			;6f47
	ld (l70f0h),de		;6f48
	ret			;6f4c
l6f4dh:
	ld hl,0d000h		;6f4d
	ld de,05000h		;6f50
	ld bc,020f0h		;6f53
l6f56h:
	ld a,(hl)		;6f56
	ex af,af'		;6f57
	ld a,(de)		;6f58
	ld (hl),a		;6f59
	ex af,af'		;6f5a
	ld (de),a		;6f5b
	inc hl			;6f5c
	inc de			;6f5d
	dec bc			;6f5e
	ld a,b			;6f5f
	or c			;6f60
	jr nz,l6f56h		;6f61
	ret			;6f63
	ld a,(0ffa7h)		;6f64
	cp 0c9h			;6f67
	ret z			;6f69
	ld a,(0fd9ah)		;6f6a
	ld bc,(0fd9bh)		;6f6d
	push af			;6f71
	push bc			;6f72
	ld a,0c9h		;6f73
	ld (0fd9ah),a		;6f75
	call 08f86h		;6f78
	di			;6f7b
	pop bc			;6f7c
	pop af			;6f7d
	ld (0fd9ah),a		;6f7e
	ld (0fd9bh),bc		;6f81
	ret			;6f85
	call 08fb7h		;6f86
	di			;6f89
	ld de,(0c000h)		;6f8a
	ld (0c000h),sp		;6f8e
	ld hl,(0c000h)		;6f92
	ld (0c000h),de		;6f95
	call 08f12h		;6f99
	ld sp,0d000h		;6f9c
	call 08f13h		;6f9f
	ld a,01fh		;6fa2
	call 04c07h		;6fa4
	ld sp,0d200h		;6fa7
	jp l6000h		;6faa
	call 04b8fh		;6fad
	ld a,(0f3e0h)		;6fb0
	set 5,a			;6fb3
	jr l6fbfh		;6fb5
	call 04b78h		;6fb7
	ld a,(0f3e0h)		;6fba
	res 5,a			;6fbd
l6fbfh:
	ld b,a			;6fbf
	ld c,001h		;6fc0
	jp 00047h		;6fc2
	di			;6fc5
	call 08f12h		;6fc6
	ld sp,0d000h		;6fc9
	push hl			;6fcc
	call 08f13h		;6fcd
	pop hl			;6fd0
	ld sp,hl		;6fd1
	call sub_6003h		;6fd2
	ld a,001h		;6fd5
	call 04c07h		;6fd7
	call 08fadh		;6fda
	ret			;6fdd
	ex af,af'		;6fde
	ld h,b			;6fdf
	ld (bc),a		;6fe0
	and (hl)		;6fe1
	ld de,00560h		;6fe2
	and (hl)		;6fe5
	inc b			;6fe6
	ld h,b			;6fe7
	ld (bc),a		;6fe8
	and (hl)		;6fe9
	ld (bc),a		;6fea
	jp pe,sub_6003h		;6feb
	inc bc			;6fee
	and (hl)		;6fef
	add a,c			;6ff0
	ld h,b			;6ff1
	inc bc			;6ff2
	and (hl)		;6ff3
	inc b			;6ff4
	ld h,b			;6ff5
	dec d			;6ff6
	and (hl)		;6ff7
	dec b			;6ff8
	ld h,b			;6ff9
	inc b			;6ffa
	and (hl)		;6ffb
	inc b			;6ffc
	ld h,b			;6ffd
	adc a,e			;6ffe
	and (hl)		;6fff
	and 0aeh		;7000
	xor (hl)		;7002
	and (hl)		;7003
l7004h:
	and (hl)		;7004
	ld h,b			;7005
	ld h,b			;7006
	and 0a6h		;7007
	and (hl)		;7009
	dec b			;700a
	jp pe,0e683h		;700b
	and (hl)		;700e
	and (hl)		;700f
	dec b			;7010
	jp pe,0a602h		;7011
	inc b			;7014
	jp pe,0a602h		;7015
	jr l7004h		;7018
	ex af,af'		;701a
	and (hl)		;701b
	nop			;701c
	ex af,af'		;701d
	ld l,a			;701e
	ld (bc),a		;701f
	and (hl)		;7020
	ld de,0056fh		;7021
	and (hl)		;7024
	inc b			;7025
	ld l,a			;7026
	ld (bc),a		;7027
	and (hl)		;7028
	ld (bc),a		;7029
	jp pe,06f03h		;702a
	inc bc			;702d
	and (hl)		;702e
	add a,c			;702f
l7030h:
	ld l,a			;7030
	inc bc			;7031
	and (hl)		;7032
	inc b			;7033
	ld l,a			;7034
	dec d			;7035
	and (hl)		;7036
	dec b			;7037
	ld l,a			;7038
	inc b			;7039
	and (hl)		;703a
	inc b			;703b
	ld l,a			;703c
	adc a,e			;703d
	and (hl)		;703e
	and 0aeh		;703f
	xor (hl)		;7041
	and (hl)		;7042
l7043h:
	and (hl)		;7043
	ld l,a			;7044
	ld l,a			;7045
	and 0a6h		;7046
	and (hl)		;7048
	dec b			;7049
	jp pe,0e683h		;704a
	and (hl)		;704d
	and (hl)		;704e
	dec b			;704f
	jp pe,0a602h		;7050
	inc b			;7053
	jp pe,0a602h		;7054
	jr l7043h		;7057
	ex af,af'		;7059
	and (hl)		;705a
	nop			;705b
	add a,c			;705c
	ld bc,00305h		;705d
	ld (bc),a		;7060
	ld bc,04084h		;7061
	add a,b			;7064
	cp 0f8h			;7065
	inc b			;7067
	nop			;7068
	ld (bc),a		;7069
	add a,b			;706a
	inc b			;706b
	ret nz			;706c
	ei			;706d
	add a,b			;706e
	nop			;706f
	nop			;7070
	inc a			;7071
	ld a,a			;7072
	ld c,019h		;7073
	djnz $+35		;7075
	inc hl			;7077
	nop			;7078
	nop			;7079
	inc a			;707a
	rst 38h			;707b
l707ch:
	jr c,l707ch		;707c
	jr l70feh		;707e
	nop			;7080
l7081h:
	jr c,l7081h		;7081
	jr c,l7091h		;7083
	inc b			;7085
	cp 040h			;7086
	inc bc			;7088
	inc b			;7089
	ld a,a			;708a
sub_708bh:
	ccf			;708b
	ld a,a			;708c
	ld a,a			;708d
	inc bc			;708e
	daa			;708f
	ld c,a			;7090
l7091h:
	ld c,a			;7091
	cpl			;7092
	rrca			;7093
	daa			;7094
	daa			;7095
	inc hl			;7096
	ld sp,0f2e4h		;7097
l709ah:
	ld (hl),d		;709a
	ld (hl),d		;709b
	ld h,h			;709c
	ret po			;709d
	call m,018feh		;709e
	rrca			;70a1
l70a2h:
	inc bc			;70a2
	ld a,a			;70a3
l70a4h:
	ld a,a			;70a4
	ccf			;70a5
l70a6h:
	rlca			;70a6
	nop			;70a7
l70a8h:
	ld a,a			;70a8
	rst 30h			;70a9
l70aah:
	jp 0f301h		;70aa
	ex (sp),hl		;70ad
	ld bc,03c00h		;70ae
	add a,c			;70b1
	add a,c			;70b2
	rst 0			;70b3
	cp 038h			;70b4
	cp 07ch			;70b6
l70b8h:
	ld bc,l7f1eh		;70b8
	inc e			;70bb
l70bch:
	inc sp			;70bc
	daa			;70bd
l70beh:
	ld l,a			;70be
	ld c,a			;70bf
l70c0h:
	add a,e			;70c0
	jr c,l7141h		;70c1
	inc a			;70c3
	rrca			;70c4
	jp 0f9f1h		;70c5
	cp 0feh			;70c8
	inc b			;70ca
	inc c			;70cb
	jr l70beh		;70cc
	cp 0f8h			;70ce
	cp c			;70d0
	ld a,(hl)		;70d1
	ld a,a			;70d2
	rst 38h			;70d3
	rst 38h			;70d4
	cp 07eh			;70d5
	sbc a,l			;70d7
	ld c,a			;70d8
	cpl			;70d9
	daa			;70da
	inc hl			;70db
	ld sp,0001ch		;70dc
	nop			;70df
	or 0ech			;70e0
	exx			;70e2
	rst 38h			;70e3
	cp 078h			;70e4
	nop			;70e6
	nop			;70e7
	ret z			;70e8
	inc bc			;70e9
	call po,0ec84h		;70ea
	call z,0f098h		;70ed
l70f0h:
	nop			;70f0
	rst 38h			;70f1
	rst 38h			;70f2
	rst 38h			;70f3
	rst 38h			;70f4
	rst 38h			;70f5
	rst 38h			;70f6
	rst 38h			;70f7
	rst 38h			;70f8
	rst 38h			;70f9
	rst 38h			;70fa
	rst 38h			;70fb
	rst 38h			;70fc
	rst 38h			;70fd
l70feh:
	rst 38h			;70fe
	rst 38h			;70ff
	inc b			;7100
	sub d			;7101
	ex af,af'		;7102
	sub d			;7103
	inc c			;7104
	sub d			;7105
	djnz l709ah		;7106
	inc d			;7108
	sub d			;7109
	inc d			;710a
	sub d			;710b
	djnz $-108		;710c
	djnz l70a2h		;710e
	djnz l70a4h		;7110
	jr l70a6h		;7112
	jr l70a8h		;7114
	jr l70aah		;7116
	jr $-108		;7118
	inc e			;711a
	sub d			;711b
	nop			;711c
	sub d			;711d
	inc h			;711e
	sub d			;711f
	inc h			;7120
	sub d			;7121
	inc h			;7122
	sub d			;7123
	jr z,l70b8h		;7124
	inc l			;7126
	sub d			;7127
	jr nc,l70bch		;7128
	inc (hl)		;712a
l712bh:
	sub d			;712b
	jr c,l70c0h		;712c
	inc h			;712e
l712fh:
	sub d			;712f
	inc a			;7130
	sub d			;7131
	ld b,b			;7132
l7133h:
	sub d			;7133
	ld b,h			;7134
	sub d			;7135
	ld c,b			;7136
	sub d			;7137
	ld c,h			;7138
	sub d			;7139
	ld d,b			;713a
l713bh:
	sub d			;713b
	ld d,h			;713c
l713dh:
	sub d			;713d
	ld e,b			;713e
	sub d			;713f
	ld e,h			;7140
l7141h:
	sub d			;7141
	ld h,b			;7142
	sub d			;7143
	ld h,h			;7144
	sub d			;7145
	ld l,b			;7146
	sub d			;7147
	ld l,h			;7148
	sub d			;7149
	ld (hl),b		;714a
	sub d			;714b
	ld a,b			;714c
	sub d			;714d
	ld a,h			;714e
	sub d			;714f
	add a,b			;7150
	sub d			;7151
	add a,h			;7152
	sub d			;7153
	adc a,b			;7154
	sub d			;7155
	adc a,h			;7156
l7157h:
	sub d			;7157
	sub b			;7158
	sub d			;7159
	sub h			;715a
	sub d			;715b
	sbc a,b			;715c
	sub d			;715d
	sbc a,h			;715e
	sub d			;715f
	and b			;7160
	sub d			;7161
	and h			;7162
	sub d			;7163
	xor b			;7164
	sub d			;7165
	xor h			;7166
	sub d			;7167
	or b			;7168
	sub d			;7169
	or h			;716a
	sub d			;716b
	cp h			;716c
	sub d			;716d
	ret nz			;716e
	sub d			;716f
	call nz,0c892h		;7170
	sub d			;7173
	call z,0d092h		;7174
	sub d			;7177
	call nc,0d892h		;7178
	sub d			;717b
	call c,0e092h		;717c
	sub d			;717f
	call po,0e892h		;7180
	sub d			;7183
	call pe,0f092h		;7184
	sub d			;7187
	call p,0f892h		;7188
	sub d			;718b
	call m,00092h		;718c
	sub e			;718f
	inc b			;7190
	sub e			;7191
	ex af,af'		;7192
	sub e			;7193
	inc c			;7194
	sub e			;7195
	djnz l712bh		;7196
	inc d			;7198
	sub e			;7199
	jr l712fh		;719a
	inc e			;719c
	sub e			;719d
	jr nz,l7133h		;719e
	inc l			;71a0
	sub e			;71a1
	inc l			;71a2
	sub e			;71a3
	inc l			;71a4
	sub e			;71a5
	jr z,l713bh		;71a6
	jr nc,l713dh		;71a8
	inc (hl)		;71aa
	sub e			;71ab
	ld c,b			;71ac
	sub e			;71ad
	ld l,b			;71ae
	sub e			;71af
	ld h,h			;71b0
	sub e			;71b1
	ld l,h			;71b2
	sub e			;71b3
	ld (hl),b		;71b4
	sub e			;71b5
	ld (hl),h		;71b6
	sub e			;71b7
	ld a,b			;71b8
	sub e			;71b9
	ld a,h			;71ba
	sub e			;71bb
	ld c,b			;71bc
	sub e			;71bd
	ld c,h			;71be
	sub e			;71bf
	ld d,b			;71c0
	sub e			;71c1
	jr c,l7157h		;71c2
	ld h,b			;71c4
	sub e			;71c5
	add a,b			;71c6
	sub e			;71c7
	add a,h			;71c8
	sub e			;71c9
	adc a,b			;71ca
	sub e			;71cb
	adc a,h			;71cc
	sub e			;71cd
	ld (hl),h		;71ce
	sub d			;71cf
	inc a			;71d0
	sub e			;71d1
	ld b,h			;71d2
	sub e			;71d3
	ld c,b			;71d4
	sub e			;71d5
	ld c,b			;71d6
	sub e			;71d7
	ld c,b			;71d8
	sub e			;71d9
	ld e,b			;71da
	sub e			;71db
	ld e,h			;71dc
	sub e			;71dd
	sub b			;71de
	sub e			;71df
	sub h			;71e0
	sub e			;71e1
	cp b			;71e2
	sub d			;71e3
	sbc a,b			;71e4
	sub e			;71e5
	sbc a,h			;71e6
	sub e			;71e7
	ld d,h			;71e8
	sub e			;71e9
	and b			;71ea
	sub e			;71eb
	and h			;71ec
	sub e			;71ed
	xor b			;71ee
	sub e			;71ef
	inc h			;71f0
	sub e			;71f1
	xor h			;71f2
	sub e			;71f3
	or b			;71f4
	sub e			;71f5
	or h			;71f6
	sub e			;71f7
	or h			;71f8
	sub e			;71f9
	or h			;71fa
	sub e			;71fb
	or h			;71fc
	sub e			;71fd
	or h			;71fe
	sub e			;71ff
	inc bc			;7200
	inc bc			;7201
	nop			;7202
	nop			;7203
	inc b			;7204
	inc b			;7205
	add hl,sp		;7206
	nop			;7207
	inc b			;7208
	inc b			;7209
	ld sp,00400h		;720a
	inc b			;720d
	ld d,(hl)		;720e
	nop			;720f
	inc b			;7210
	inc b			;7211
	ld sp,00301h		;7212
	inc bc			;7215
	ld d,d			;7216
	nop			;7217
	inc b			;7218
	add a,h			;7219
	cp l			;721a
	jr z,$+8		;721b
	adc a,d			;721d
	ld d,(hl)		;721e
	jr l7225h		;721f
	inc b			;7221
	ld sp,00400h		;7222
l7225h:
	add a,h			;7225
	cp c			;7226
	nop			;7227
	inc b			;7228
	add a,h			;7229
	cp c			;722a
	ld bc,08508h		;722b
	inc d			;722e
	ret p			;722f
	inc b			;7230
	add a,h			;7231
	cp c			;7232
	ld bc,08404h		;7233
	cp c			;7236
	ld bc,08404h		;7237
	cp l			;723a
	ld (bc),a		;723b
	inc b			;723c
	add a,h			;723d
	cp l			;723e
	ld bc,08404h		;723f
	cp l			;7242
	jr $+6			;7243
	add a,h			;7245
	cp c			;7246
	ld bc,08604h		;7247
	ld d,(hl)		;724a
	inc c			;724b
	inc b			;724c
	add a,h			;724d
	cp l			;724e
	ld bc,08608h		;724f
	cp c			;7252
	ld a,(bc)		;7253
	ld b,088h		;7254
	ld a,a			;7256
	dec b			;7257
	inc b			;7258
	add a,h			;7259
	ld d,(hl)		;725a
	ld bc,08404h		;725b
	cp c			;725e
	ld bc,08604h		;725f
	ld d,(hl)		;7262
	ld b,004h		;7263
	add a,h			;7265
	cp l			;7266
	dec b			;7267
	dec b			;7268
	dec b			;7269
	inc b			;726a
	nop			;726b
	inc b			;726c
	add a,h			;726d
	cp c			;726e
	ld bc,08605h		;726f
	ld d,(hl)		;7272
	ex af,af'		;7273
	inc b			;7274
	add a,h			;7275
	cp l			;7276
	nop			;7277
	ld b,084h		;7278
	cp l			;727a
	ld c,00ah		;727b
	adc a,h			;727d
	ld e,(hl)		;727e
	rra			;727f
	inc b			;7280
	add a,h			;7281
	ld d,(hl)		;7282
	ld bc,00806h		;7283
	or c			;7286
	nop			;7287
	inc b			;7288
	add a,(hl)		;7289
	ld d,(hl)		;728a
	ld b,004h		;728b
	add a,h			;728d
	cp l			;728e
	ld b,004h		;728f
	add a,(hl)		;7291
	cp l			;7292
	ld bc,00405h		;7293
	inc b			;7296
	ld b,004h		;7297
	add a,h			;7299
	cp l			;729a
	ld (bc),a		;729b
	ld a,(bc)		;729c
	ld a,(bc)		;729d
	inc b			;729e
	nop			;729f
	inc b			;72a0
	add a,h			;72a1
	cp l			;72a2
	inc b			;72a3
	inc b			;72a4
	add a,h			;72a5
	ld d,(hl)		;72a6
	ld bc,08608h		;72a7
	cp c			;72aa
	ld d,b			;72ab
	ld b,086h		;72ac
	ld d,(hl)		;72ae
	ld b,004h		;72af
	add a,h			;72b1
	cp c			;72b2
	ret p			;72b3
	inc bc			;72b4
	inc bc			;72b5
	ld d,(hl)		;72b6
	nop			;72b7
	ld (bc),a		;72b8
	ld (bc),a		;72b9
	inc b			;72ba
	nop			;72bb
	inc b			;72bc
	add a,h			;72bd
	or l			;72be
	nop			;72bf
	rlca			;72c0
	add a,a			;72c1
	ld d,(hl)		;72c2
	ld b,009h		;72c3
	adc a,b			;72c5
	ld d,(hl)		;72c6
	dec c			;72c7
	inc b			;72c8
	add a,h			;72c9
	ld d,(hl)		;72ca
	ld bc,00303h		;72cb
	ld l,a			;72ce
	nop			;72cf
	inc bc			;72d0
	add a,e			;72d1
	ld b,(hl)		;72d2
	ld bc,08303h		;72d3
	ld b,(hl)		;72d6
	ld bc,08303h		;72d7
	inc b			;72da
	ld a,b			;72db
	ld b,008h		;72dc
	inc d			;72de
	ld bc,08404h		;72df
	cp l			;72e2
	nop			;72e3
	inc bc			;72e4
	inc bc			;72e5
	inc b			;72e6
	nop			;72e7
	inc b			;72e8
	add a,h			;72e9
	cp l			;72ea
	nop			;72eb
	inc b			;72ec
	inc b			;72ed
	cp l			;72ee
	nop			;72ef
	inc b			;72f0
	add a,h			;72f1
	cp l			;72f2
	ld bc,08404h		;72f3
	cp c			;72f6
	nop			;72f7
	ld (bc),a		;72f8
	ld (bc),a		;72f9
	nop			;72fa
	nop			;72fb
	inc bc			;72fc
	inc bc			;72fd
	inc b			;72fe
	nop			;72ff
	inc b			;7300
	inc b			;7301
	or l			;7302
	nop			;7303
	inc b			;7304
	add a,h			;7305
	cp l			;7306
	ld bc,08404h		;7307
	cp c			;730a
	ld (bc),a		;730b
	inc b			;730c
	add a,h			;730d
	cp l			;730e
	ld bc,00406h		;730f
	cp l			;7312
	ld bc,08406h		;7313
	or l			;7316
	jr nc,l731fh		;7317
	inc b			;7319
	cp l			;731a
	ld bc,08705h		;731b
	ld d,(hl)		;731e
l731fh:
	ld (bc),a		;731f
	inc b			;7320
	inc b			;7321
	ld h,a			;7322
	nop			;7323
	add hl,bc		;7324
	ld b,01ch		;7325
	jr nc,l732ch		;7327
	inc bc			;7329
	inc b			;732a
	nop			;732b
l732ch:
	inc bc			;732c
	inc bc			;732d
	nop			;732e
	nop			;732f
	ex af,af'		;7330
	adc a,h			;7331
	dec a			;7332
	ld a,(bc)		;7333
	inc c			;7334
	adc a,h			;7335
	inc d			;7336
	inc l			;7337
	inc b			;7338
	inc b			;7339
	dec l			;733a
	nop			;733b
	inc bc			;733c
	inc bc			;733d
	inc b			;733e
	nop			;733f
	inc bc			;7340
	inc bc			;7341
	inc b			;7342
	nop			;7343
	inc bc			;7344
	inc bc			;7345
	inc b			;7346
	nop			;7347
	inc b			;7348
	inc b			;7349
	dec a			;734a
	nop			;734b
	inc b			;734c
	inc b			;734d
	ld hl,00400h		;734e
	inc b			;7351
	ld sp,00400h		;7352
	inc b			;7355
	ld hl,00400h		;7356
	add a,h			;7359
	cp l			;735a
	nop			;735b
	inc b			;735c
	add a,h			;735d
	or c			;735e
	nop			;735f
	inc b			;7360
	inc b			;7361
	ld sp,00600h		;7362
	ld a,(bc)		;7365
	ld d,d			;7366
	nop			;7367
	inc b			;7368
	add a,h			;7369
	cp c			;736a
	ex af,af'		;736b
	inc bc			;736c
	inc bc			;736d
	ld d,(hl)		;736e
	nop			;736f
	inc b			;7370
	inc b			;7371
	dec a			;7372
	nop			;7373
	inc b			;7374
	add a,h			;7375
	cp c			;7376
	nop			;7377
	inc b			;7378
	inc b			;7379
	dec a			;737a
	nop			;737b
	inc b			;737c
	add a,h			;737d
	cp c			;737e
	nop			;737f
	ld b,006h		;7380
	dec a			;7382
	inc a			;7383
	ld (bc),a		;7384
	ld (bc),a		;7385
	nop			;7386
	nop			;7387
	inc b			;7388
	add a,h			;7389
	cp l			;738a
	inc b			;738b
	inc b			;738c
	inc b			;738d
	ld sp,00400h		;738e
	add a,h			;7391
	or c			;7392
	nop			;7393
	ld b,08ch		;7394
	inc d			;7396
	dec h			;7397
	inc b			;7398
	add a,h			;7399
	ld d,(hl)		;739a
	ld (bc),a		;739b
	inc b			;739c
	add a,h			;739d
	cp c			;739e
	nop			;739f
	ld (bc),a		;73a0
	add a,d			;73a1
	ld d,(hl)		;73a2
	inc bc			;73a3
	inc c			;73a4
	inc c			;73a5
	inc b			;73a6
	sbc a,c			;73a7
	dec bc			;73a8
	sub e			;73a9
	dec a			;73aa
	ld b,b			;73ab
	ld a,(bc)		;73ac
	add a,l			;73ad
	ld d,(hl)		;73ae
	nop			;73af
	inc c			;73b0
	adc a,h			;73b1
	inc d			;73b2
	and b			;73b3
	inc b			;73b4
	inc b			;73b5
	or l			;73b6
	nop			;73b7
	jp z,04e93h		;73b8
	sub (hl)		;73bb
	ld b,(hl)		;73bc
	sbc a,d			;73bd
	ld a,09ch		;73be
	and d			;73c0
	sbc a,l			;73c1
	sbc a,d			;73c2
	sbc a,a			;73c3
	ld h,a			;73c4
	and d			;73c5
	ld l,a			;73c6
	and e			;73c7
	ld c,e			;73c8
	and h			;73c9
	djnz l73cch		;73ca
l73cch:
	ld h,l			;73cc
	dec b			;73cd
	rst 38h			;73ce
	djnz l73f3h		;73cf
	ld e,a			;73d1
	ld b,001h		;73d2
	ld (bc),a		;73d4
	djnz l73ffh		;73d5
	ld d,c			;73d7
	adc a,l			;73d8
	ld b,002h		;73d9
	rra			;73db
	inc bc			;73dc
	ld (bc),a		;73dd
	add a,(hl)		;73de
	inc bc			;73df
	ld (de),a		;73e0
	nop			;73e1
	djnz l7414h		;73e2
	ld d,c			;73e4
	adc a,l			;73e5
	ld b,010h		;73e6
	rra			;73e8
	inc bc			;73e9
	ld (bc),a		;73ea
	add a,(hl)		;73eb
	inc bc			;73ec
l73edh:
	ld (de),a		;73ed
	ld bc,03810h		;73ee
	ld d,c			;73f1
	adc a,l			;73f2
l73f3h:
	ld b,002h		;73f3
	rra			;73f5
	inc b			;73f6
	ld (bc),a		;73f7
	add a,(hl)		;73f8
	inc bc			;73f9
	ld (de),a		;73fa
	nop			;73fb
	djnz l743eh		;73fc
	ld d,c			;73fe
l73ffh:
	adc a,(hl)		;73ff
	ex af,af'		;7400
	ld bc,0031fh		;7401
	ld bc,00220h		;7404
	ld h,b			;7407
	ld (bc),a		;7408
	djnz l741bh		;7409
	ld b,h			;740b
l740ch:
	ld d,c			;740c
	adc a,l			;740d
	ld b,010h		;740e
	rra			;7410
l7411h:
	inc b			;7411
l7412h:
	ld (bc),a		;7412
	add a,(hl)		;7413
l7414h:
	inc bc			;7414
	ld (de),a		;7415
	ld bc,04c10h		;7416
	ld d,c			;7419
	adc a,l			;741a
l741bh:
	ld b,006h		;741b
	rra			;741d
	inc b			;741e
	ld (bc),a		;741f
	add a,(hl)		;7420
	inc bc			;7421
	ld (de),a		;7422
	nop			;7423
	sub b			;7424
	ld d,b			;7425
l7426h:
	ld d,c			;7426
	adc a,(hl)		;7427
	ex af,af'		;7428
	ld bc,0031fh		;7429
	ld bc,00220h		;742c
	ld (hl),b		;742f
	ld (bc),a		;7430
	djnz $+18		;7431
	ld l,b			;7433
	ld e,005h		;7434
	add a,d			;7436
	djnz l74a2h		;7437
	ld e,005h		;7439
	rrca			;743b
	sub b			;743c
	add a,b			;743d
l743eh:
	ld d,c			;743e
	adc a,l			;743f
	ld b,008h		;7440
	ld bc,00203h		;7442
	ex af,af'		;7445
	inc bc			;7446
	jr l740ch		;7447
	djnz $-126		;7449
	ld d,c			;744b
	adc a,l			;744c
	ld b,008h		;744d
l744fh:
	rra			;744f
	inc b			;7450
	ld (bc),a		;7451
	add a,(hl)		;7452
	inc bc			;7453
	jr l7457h		;7454
	sub b			;7456
l7457h:
	adc a,b			;7457
	ld d,c			;7458
	adc a,l			;7459
l745ah:
	ld b,002h		;745a
	ld bc,00203h		;745c
	ex af,af'		;745f
	inc bc			;7460
	jr l7426h		;7461
	djnz l73edh		;7463
	ld d,c			;7465
	adc a,l			;7466
	ld b,00ch		;7467
	rra			;7469
	inc b			;746a
	ld (bc),a		;746b
	add a,(hl)		;746c
	inc bc			;746d
	jr l7472h		;746e
	djnz l7412h		;7470
l7472h:
	ld h,l			;7472
	dec b			;7473
l7474h:
	rst 38h			;7474
	djnz $-94		;7475
	ld d,c			;7477
	adc a,l			;7478
	ld b,002h		;7479
	rra			;747b
	inc b			;747c
l747dh:
	ld (bc),a		;747d
	inc b			;747e
	inc bc			;747f
	dec d			;7480
	ld bc,0a810h		;7481
	ld d,c			;7484
	adc a,l			;7485
	ld b,003h		;7486
	rra			;7488
l7489h:
	inc b			;7489
	ld (bc),a		;748a
	inc b			;748b
	inc bc			;748c
	dec d			;748d
	ld bc,0b010h		;748e
	ld d,c			;7491
	adc a,l			;7492
	ld b,002h		;7493
	rra			;7495
	inc b			;7496
l7497h:
	ld (bc),a		;7497
	inc b			;7498
	inc bc			;7499
	dec d			;749a
	dec b			;749b
	djnz l744fh		;749c
	ld e,a			;749e
l749fh:
	ld b,001h		;749f
	nop			;74a1
l74a2h:
	djnz l745ah		;74a2
	ld d,c			;74a4
	adc a,l			;74a5
l74a6h:
	ld b,002h		;74a6
	rra			;74a8
	inc b			;74a9
	ld (bc),a		;74aa
	inc b			;74ab
	inc bc			;74ac
	dec d			;74ad
l74aeh:
	dec b			;74ae
	djnz l7474h		;74af
	inc h			;74b1
	ld b,012h		;74b2
	nop			;74b4
	djnz l747dh		;74b5
	rra			;74b7
	dec b			;74b8
	ex af,af'		;74b9
	djnz l7489h		;74ba
	rra			;74bc
	dec b			;74bd
	rlca			;74be
	djnz l7497h		;74bf
	jr nz,l74c8h		;74c1
	dec bc			;74c3
	djnz l749fh		;74c4
	jr nz,$+7		;74c6
l74c8h:
	dec bc			;74c8
	djnz l74a6h		;74c9
	inc h			;74cb
	ld b,012h		;74cc
	nop			;74ce
	djnz l74aeh		;74cf
	jr nz,l74d8h		;74d1
	inc b			;74d3
	sub b			;74d4
	call po,00520h		;74d5
l74d8h:
	ld a,(bc)		;74d8
	djnz $-23		;74d9
	ld (00a05h),hl		;74db
	sub b			;74de
	jp pe,00520h		;74df
	inc c			;74e2
	sub b			;74e3
	call pe,00520h		;74e4
	dec c			;74e7
	djnz $-12		;74e8
	ld h,08ah		;74ea
	inc b			;74ec
	rrca			;74ed
	inc bc			;74ee
	inc bc			;74ef
	ld (bc),a		;74f0
	ld de,0f610h		;74f1
	ld d,l			;74f4
	ld b,010h		;74f5
	ld a,(de)		;74f7
	sub c			;74f8
	dec b			;74f9
	ld h,08ah		;74fa
	inc b			;74fc
	dec c			;74fd
	inc bc			;74fe
	inc bc			;74ff
	ld (bc),a		;7500
	ld de,00b11h		;7501
	ld d,l			;7504
	ld b,010h		;7505
	sub (hl)		;7507
	ld de,02019h		;7508
	dec b			;750b
	dec c			;750c
	ld de,0551dh		;750d
	ld b,010h		;7510
	sbc a,h			;7512
	sub c			;7513
	inc h			;7514
	jr nz,l751ch		;7515
	rrca			;7517
	sub c			;7518
	daa			;7519
	jr nz,l7521h		;751a
l751ch:
	rrca			;751c
	ld de,0202ah		;751d
	dec b			;7520
l7521h:
	dec c			;7521
	ld de,0552dh		;7522
	ld b,010h		;7525
	sbc a,l			;7527
	sub c			;7528
	ld (hl),020h		;7529
	dec b			;752b
	rrca			;752c
	sub c			;752d
	add hl,sp		;752e
	jr nz,l7536h		;752f
	rrca			;7531
	ld de,0203dh		;7532
	dec b			;7535
l7536h:
	dec c			;7536
	ld de,0243fh		;7537
	ld b,012h		;753a
	nop			;753c
	ld de,02041h		;753d
l7540h:
	dec b			;7540
	inc c			;7541
	ld de,01f42h		;7542
	dec b			;7545
	add hl,bc		;7546
	ld de,01f48h		;7547
	dec b			;754a
	ld b,011h		;754b
	ld d,c			;754d
	jr nz,l7555h		;754e
	inc b			;7550
	ld de,02054h		;7551
	dec b			;7554
l7555h:
	inc b			;7555
	ld de,02457h		;7556
	ld b,012h		;7559
	nop			;755b
	sub c			;755c
	ld d,(hl)		;755d
	jr nz,l7565h		;755e
	add hl,bc		;7560
	sub c			;7561
	ld e,b			;7562
	jr nz,l756ah		;7563
l7565h:
	ld a,(bc)		;7565
	ld de,0225ch		;7566
	dec b			;7569
l756ah:
	ld a,(bc)		;756a
	ld de,02265h		;756b
	dec b			;756e
	dec c			;756f
	sub c			;7570
	ld h,a			;7571
	ld d,c			;7572
	adc a,l			;7573
	ld b,002h		;7574
	ld bc,00203h		;7576
	ex af,af'		;7579
	inc bc			;757a
	jr l7540h		;757b
	ld de,0266eh		;757d
	adc a,d			;7580
	inc b			;7581
	rrca			;7582
	inc bc			;7583
	inc bc			;7584
	ld (bc),a		;7585
	ld de,l7411h		;7586
	jr nz,l7590h		;7589
	dec c			;758b
	ld de,02077h		;758c
	dec b			;758f
l7590h:
	dec c			;7590
	ld de,0267eh		;7591
	adc a,d			;7594
	inc b			;7595
	rrca			;7596
	inc bc			;7597
	inc bc			;7598
	ld (bc),a		;7599
	ld de,08311h		;759a
	ld (00d05h),hl		;759d
	ld de,02487h		;75a0
	ld b,012h		;75a3
	nop			;75a5
	ld de,02089h		;75a6
	dec b			;75a9
sub_75aah:
	dec bc			;75aa
	ld de,01f8ah		;75ab
	dec b			;75ae
l75afh:
	ex af,af'		;75af
	ld de,05190h		;75b0
	adc a,l			;75b3
	ld b,004h		;75b4
	rra			;75b6
	ld (bc),a		;75b7
	ld (bc),a		;75b8
	inc b			;75b9
	inc bc			;75ba
	dec d			;75bb
	dec b			;75bc
	ld de,01f91h		;75bd
	dec b			;75c0
	rlca			;75c1
sub_75c2h:
	ld de,05198h		;75c2
	adc a,l			;75c5
	ld b,002h		;75c6
	rra			;75c8
	ld (bc),a		;75c9
	ld (bc),a		;75ca
	inc b			;75cb
	inc bc			;75cc
	dec d			;75cd
	dec b			;75ce
	ld de,01f99h		;75cf
	dec b			;75d2
	ex af,af'		;75d3
	ld de,0249fh		;75d4
	ld b,012h		;75d7
	nop			;75d9
	ld de,01fa0h		;75da
	dec b			;75dd
	ld bc,0ac91h		;75de
	ld d,c			;75e1
	adc a,l			;75e2
	ld b,002h		;75e3
	ld bc,00203h		;75e5
	ex af,af'		;75e8
	inc bc			;75e9
	jr l75afh		;75ea
	jr nz,l75f0h		;75ec
	jr nz,l75f5h		;75ee
l75f0h:
	inc h			;75f0
	jr nz,$+6		;75f1
	jr nz,l75fah		;75f3
l75f5h:
	dec l			;75f5
	jr nz,l75fch		;75f6
	jr nz,l75ffh		;75f8
l75fah:
	jr nc,$+34		;75fa
l75fch:
	inc b			;75fc
	rra			;75fd
	dec b			;75fe
l75ffh:
	ld h,020h		;75ff
	dec b			;7601
	rra			;7602
	dec b			;7603
	ld (004b0h),a		;7604
	ld d,c			;7607
	adc a,l			;7608
	ld b,002h		;7609
	rra			;760b
	ld (bc),a		;760c
	ld (bc),a		;760d
	inc b			;760e
	inc bc			;760f
	dec d			;7610
	dec b			;7611
	jr nc,l761ah		;7612
	rra			;7614
	dec b			;7615
	dec c			;7616
	or b			;7617
	ex af,af'		;7618
	ld d,c			;7619
l761ah:
	adc a,l			;761a
	ld b,003h		;761b
	rra			;761d
	ld (bc),a		;761e
	ld (bc),a		;761f
	inc b			;7620
	inc bc			;7621
	dec d			;7622
	dec b			;7623
	or b			;7624
	inc c			;7625
	pop de			;7626
	adc a,l			;7627
	ld b,004h		;7628
	rra			;762a
	ld (bc),a		;762b
	ld (bc),a		;762c
	inc b			;762d
	inc bc			;762e
	dec d			;762f
	dec b			;7630
	jr nc,$+15		;7631
	rra			;7633
	dec b			;7634
	rrca			;7635
	jr nc,l7650h		;7636
	ld d,(hl)		;7638
	dec b			;7639
	nop			;763a
	jr nc,l7676h		;763b
	ld b,a			;763d
	dec b			;763e
	ld c,040h		;763f
	jr z,l76a2h		;7641
	dec b			;7643
	inc bc			;7644
	ld d,b			;7645
	nop			;7646
	ld h,h			;7647
	adc a,b			;7648
	ld (bc),a		;7649
	inc c			;764a
	ld (bc),a		;764b
	dec a			;764c
	nop			;764d
	djnz l7671h		;764e
l7650h:
	ld d,c			;7650
	adc a,l			;7651
	ld b,010h		;7652
	rra			;7654
	inc bc			;7655
	ld (bc),a		;7656
	add a,(hl)		;7657
	inc bc			;7658
	ld (de),a		;7659
	nop			;765a
	djnz $+41		;765b
	add hl,de		;765d
	ld b,014h		;765e
	ld e,010h		;7660
	daa			;7662
	ld d,c			;7663
	adc a,l			;7664
	ld b,010h		;7665
	rra			;7667
	inc bc			;7668
	ld (bc),a		;7669
	add a,(hl)		;766a
	inc bc			;766b
	ld (de),a		;766c
	ld bc,02f10h		;766d
	ld d,c			;7670
l7671h:
	adc a,l			;7671
	ld b,008h		;7672
	rra			;7674
	inc bc			;7675
l7676h:
	ld (bc),a		;7676
	add a,(hl)		;7677
	inc bc			;7678
	ld (de),a		;7679
	nop			;767a
	djnz l76aeh		;767b
	ld d,c			;767d
	adc a,(hl)		;767e
	ex af,af'		;767f
	ld bc,0041fh		;7680
	ld bc,00320h		;7683
	ld c,b			;7686
	ld (bc),a		;7687
	djnz $+18		;7688
	scf			;768a
	add hl,de		;768b
	ld b,014h		;768c
	ld e,010h		;768e
	ld b,e			;7690
	add hl,hl		;7691
	dec b			;7692
	ld (de),a		;7693
	djnz $+71		;7694
	add hl,hl		;7696
	dec b			;7697
	ld (de),a		;7698
l7699h:
	djnz l76e6h		;7699
	add hl,hl		;769b
	dec b			;769c
	inc d			;769d
	djnz l76edh		;769e
	add hl,hl		;76a0
	dec b			;76a1
l76a2h:
	inc d			;76a2
	djnz l76f4h		;76a3
	ld d,c			;76a5
	adc a,l			;76a6
	ld b,008h		;76a7
	rra			;76a9
	inc b			;76aa
	ld (bc),a		;76ab
	add a,(hl)		;76ac
	inc bc			;76ad
l76aeh:
	jr l76b0h		;76ae
l76b0h:
	djnz l7703h		;76b0
	add hl,hl		;76b2
	dec b			;76b3
	add a,h			;76b4
	djnz l770eh		;76b5
	ld d,c			;76b7
	adc a,l			;76b8
	ld b,004h		;76b9
l76bbh:
	rra			;76bb
	inc b			;76bc
	ld (bc),a		;76bd
	add a,(hl)		;76be
	inc bc			;76bf
	jr l76c2h		;76c0
l76c2h:
	djnz l771fh		;76c2
	add hl,de		;76c4
	ld b,014h		;76c5
	ld e,010h		;76c7
	ld h,d			;76c9
	add hl,hl		;76ca
	dec b			;76cb
	add a,e			;76cc
	djnz l7733h		;76cd
	add hl,hl		;76cf
	dec b			;76d0
	add a,e			;76d1
	djnz l773dh		;76d2
	daa			;76d4
	dec b			;76d5
	inc c			;76d6
	djnz l774ah		;76d7
	add hl,de		;76d9
	ld b,014h		;76da
	ld e,010h		;76dc
	ld (hl),c		;76de
	daa			;76df
	dec b			;76e0
	ex af,af'		;76e1
	djnz $+121		;76e2
	ld d,c			;76e4
	adc a,l			;76e5
l76e6h:
	ld b,008h		;76e6
	rra			;76e8
	inc b			;76e9
	ld (bc),a		;76ea
	add a,(hl)		;76eb
	inc bc			;76ec
l76edh:
	jr l76efh		;76ed
l76efh:
	djnz l776ah		;76ef
sub_76f1h:
	daa			;76f1
	dec b			;76f2
	ld (de),a		;76f3
l76f4h:
	djnz l7770h		;76f4
	add hl,de		;76f6
l76f7h:
	ld b,094h		;76f7
	ld bc,08110h		;76f9
	daa			;76fc
	dec b			;76fd
l76feh:
	ld c,010h		;76fe
	add a,l			;7700
	add hl,hl		;7701
	dec b			;7702
l7703h:
	add a,e			;7703
	djnz $-119		;7704
	add hl,de		;7706
	ld b,014h		;7707
	ld e,010h		;7709
	add a,a			;770b
	add hl,hl		;770c
	dec b			;770d
l770eh:
	add a,e			;770e
	djnz l7699h		;770f
	ld e,a			;7711
	ld b,001h		;7712
	ld bc,08f10h		;7714
	ld l,007h		;7717
	ld (bc),a		;7719
	add a,d			;771a
	add a,d			;771b
	djnz l76bbh		;771c
	add hl,hl		;771e
l771fh:
	dec b			;771f
	inc d			;7720
	djnz l76c2h		;7721
	add hl,hl		;7723
	dec b			;7724
	inc d			;7725
	djnz $-94		;7726
	add hl,hl		;7728
	dec b			;7729
	add a,e			;772a
	sub b			;772b
	and l			;772c
	add hl,hl		;772d
	dec b			;772e
	inc d			;772f
	sub b			;7730
	xor c			;7731
	add hl,hl		;7732
l7733h:
	dec b			;7733
	add a,l			;7734
	djnz $-78		;7735
	ld e,a			;7737
	ld b,001h		;7738
	nop			;773a
	djnz $-75		;773b
l773dh:
	add hl,hl		;773d
	dec b			;773e
	add a,h			;773f
	djnz l76f7h		;7740
	add hl,hl		;7742
	dec b			;7743
	add a,(hl)		;7744
	djnz l76feh		;7745
sub_7747h:
	add hl,hl		;7747
	dec b			;7748
	adc a,b			;7749
l774ah:
	jr nz,l774dh		;774a
	add hl,hl		;774c
l774dh:
	dec b			;774d
	and b			;774e
	jr nz,l7752h		;774f
	add hl,hl		;7751
l7752h:
	dec b			;7752
	and d			;7753
	jr nz,l7757h		;7754
	dec hl			;7756
l7757h:
	adc a,c			;7757
	inc bc			;7758
	xor b			;7759
	djnz l775eh		;775a
	ld d,0a0h		;775c
l775eh:
	inc bc			;775e
	add hl,hl		;775f
	dec b			;7760
	dec c			;7761
	and b			;7762
	inc bc			;7763
	add hl,hl		;7764
	dec b			;7765
	rrca			;7766
	jr nz,l7772h		;7767
	add hl,hl		;7769
l776ah:
	dec b			;776a
	dec d			;776b
	and b			;776c
	dec bc			;776d
	add hl,hl		;776e
	dec b			;776f
l7770h:
	dec c			;7770
	and b			;7771
l7772h:
	dec bc			;7772
	add hl,hl		;7773
	dec b			;7774
	rrca			;7775
	jr nz,l778dh		;7776
	ld e,a			;7778
	ld b,001h		;7779
	ld bc,01520h		;777b
	ld l,007h		;777e
	dec e			;7780
	nop			;7781
	add a,d			;7782
	and b			;7783
	dec de			;7784
	dec hl			;7785
	adc a,c			;7786
	inc bc			;7787
	add hl,bc		;7788
	djnz l778dh		;7789
	ld d,020h		;778b
l778dh:
	ld hl,0072eh		;778d
	dec h			;7790
	nop			;7791
	add a,d			;7792
	and b			;7793
	inc hl			;7794
	add hl,hl		;7795
	dec b			;7796
	ld a,(bc)		;7797
	jr nc,l779ah		;7798
l779ah:
	add hl,hl		;779a
	dec b			;779b
	adc a,b			;779c
	jr nc,l779fh		;779d
l779fh:
	add hl,hl		;779f
	dec b			;77a0
	inc d			;77a1
	jr nc,l77a6h		;77a2
	add hl,hl		;77a4
	dec b			;77a5
l77a6h:
	adc a,b			;77a6
	jr nc,l77abh		;77a7
	add hl,hl		;77a9
	dec b			;77aa
l77abh:
	inc d			;77ab
	jr nc,$+6		;77ac
	add hl,hl		;77ae
	dec b			;77af
	adc a,d			;77b0
	jr nc,$+6		;77b1
	add hl,hl		;77b3
	dec b			;77b4
	ld (de),a		;77b5
	jr nc,l77beh		;77b6
	add hl,hl		;77b8
	dec b			;77b9
	adc a,d			;77ba
	jr nc,l77c3h		;77bb
	add hl,hl		;77bd
l77beh:
	dec b			;77be
	ld (de),a		;77bf
	jr nc,l77ceh		;77c0
	add hl,hl		;77c2
l77c3h:
	dec b			;77c3
	inc d			;77c4
	jr nc,l77d5h		;77c5
	add hl,hl		;77c7
	dec b			;77c8
	inc d			;77c9
	jr nc,l77e4h		;77ca
	ld d,c			;77cc
	adc a,l			;77cd
l77ceh:
	ld b,004h		;77ce
l77d0h:
	rra			;77d0
	inc b			;77d1
	ld (bc),a		;77d2
	add a,(hl)		;77d3
	inc bc			;77d4
l77d5h:
	jr l77d7h		;77d5
l77d7h:
	jr nc,l77f3h		;77d7
	dec l			;77d9
	dec b			;77da
	add a,e			;77db
	jr nc,l77f8h		;77dc
	dec l			;77de
	dec b			;77df
	inc d			;77e0
	jr nc,l7803h		;77e1
	ld e,a			;77e3
l77e4h:
	ld b,001h		;77e4
	nop			;77e6
	jr nc,$+42		;77e7
	dec l			;77e9
	dec b			;77ea
	add a,e			;77eb
	jr nc,$+42		;77ec
	dec l			;77ee
	dec b			;77ef
	inc d			;77f0
	jr nc,$+53		;77f1
l77f3h:
	add hl,hl		;77f3
	dec b			;77f4
	inc d			;77f5
	jr nc,l782dh		;77f6
l77f8h:
	add hl,hl		;77f8
	dec b			;77f9
	inc d			;77fa
	jr nc,l7835h		;77fb
	add hl,hl		;77fd
	dec b			;77fe
	ld (de),a		;77ff
	jr nc,l783fh		;7800
	add hl,hl		;7802
l7803h:
	dec b			;7803
	add a,e			;7804
	jr nc,l7845h		;7805
	ld e,a			;7807
	ld b,001h		;7808
	ld bc,03f30h		;780a
	add hl,hl		;780d
	dec b			;780e
	add a,e			;780f
	jr nc,l7853h		;7810
l7812h:
	ld sp,00a06h		;7812
	ld bc,04c30h		;7815
	ld sp,00a06h		;7818
	nop			;781b
l781ch:
	jr nc,l786eh		;781c
	ld d,c			;781e
	adc a,(hl)		;781f
	ex af,af'		;7820
	ld bc,0031fh		;7821
	ld bc,00320h		;7824
	ld (hl),b		;7827
	ld (bc),a		;7828
	djnz $+50		;7829
	ld d,b			;782b
	add hl,hl		;782c
l782dh:
	dec b			;782d
	add a,e			;782e
	jr nc,l7883h		;782f
	add hl,hl		;7831
l7832h:
	dec b			;7832
	add a,e			;7833
	or b			;7834
l7835h:
	ld d,h			;7835
	add hl,hl		;7836
	dec b			;7837
l7838h:
	adc a,h			;7838
	jr nc,l788fh		;7839
	add hl,hl		;783b
	dec b			;783c
	ld (de),a		;783d
	or b			;783e
l783fh:
	ld d,(hl)		;783f
	add hl,hl		;7840
	dec b			;7841
	adc a,h			;7842
	jr nc,$+88		;7843
l7845h:
	add hl,hl		;7845
	dec b			;7846
	ld (de),a		;7847
	jr nc,$+95		;7848
	ld sp,00a06h		;784a
	ld bc,060b0h		;784d
	add hl,hl		;7850
	dec b			;7851
	inc d			;7852
l7853h:
	or b			;7853
	ld h,d			;7854
	add hl,hl		;7855
	dec b			;7856
	inc d			;7857
	jr nc,$+103		;7858
	ld sp,00a06h		;785a
	nop			;785d
	jr nc,l78c7h		;785e
	pop de			;7860
	adc a,l			;7861
	ld b,008h		;7862
	rra			;7864
	inc b			;7865
	ld (bc),a		;7866
	add a,(hl)		;7867
	inc bc			;7868
l7869h:
	jr l786bh		;7869
l786bh:
	jr nc,l78d5h		;786b
	add hl,hl		;786d
l786eh:
	dec b			;786e
	add a,e			;786f
l7870h:
	jr nc,l78dch		;7870
	add hl,hl		;7872
	dec b			;7873
	add a,e			;7874
	jr nc,l78e4h		;7875
l7877h:
	ld sp,00a06h		;7877
	ld bc,l7030h		;787a
	dec hl			;787d
	adc a,c			;787e
	inc bc			;787f
	inc d			;7880
l7881h:
	djnz l7885h		;7881
l7883h:
	ld d,030h		;7883
l7885h:
	ld a,h			;7885
	ld sp,00a06h		;7886
	ld bc,l7e30h		;7889
	add hl,hl		;788c
l788dh:
	dec b			;788d
	inc d			;788e
l788fh:
	jr nc,l7812h		;788f
	ld sp,00a06h		;7891
	nop			;7894
	jr nc,l781ch		;7895
	ld sp,00a06h		;7897
	ld bc,08a30h		;789a
	dec l			;789d
	dec b			;789e
	add a,e			;789f
	jr nc,l7832h		;78a0
	ld e,a			;78a2
	ld b,001h		;78a3
	nop			;78a5
	jr nc,l7838h		;78a6
	dec l			;78a8
	dec b			;78a9
	inc d			;78aa
	jr nc,l783fh		;78ab
	pop de			;78ad
	adc a,l			;78ae
	ld b,00ah		;78af
	rra			;78b1
	inc b			;78b2
	ld (bc),a		;78b3
	add a,(hl)		;78b4
	inc bc			;78b5
	jr l78b8h		;78b6
l78b8h:
	or b			;78b8
	sub d			;78b9
	ld d,c			;78ba
	adc a,(hl)		;78bb
	ex af,af'		;78bc
l78bdh:
	ld bc,0031fh		;78bd
	ld bc,00320h		;78c0
	ld (hl),b		;78c3
	ld (bc),a		;78c4
	djnz l78f7h		;78c5
l78c7h:
	sbc a,d			;78c7
	add hl,hl		;78c8
	dec b			;78c9
	inc c			;78ca
	jr nc,l7869h		;78cb
	add hl,hl		;78cd
	dec b			;78ce
	adc a,d			;78cf
	jr nc,l7870h		;78d0
	add hl,hl		;78d2
	dec b			;78d3
	adc a,d			;78d4
l78d5h:
	jr nc,l7877h		;78d5
	add hl,hl		;78d7
	dec b			;78d8
	inc c			;78d9
	jr nc,l7881h		;78da
l78dch:
	add hl,hl		;78dc
	dec b			;78dd
	djnz l7910h		;78de
	and a			;78e0
	add hl,hl		;78e1
	dec b			;78e2
	add a,(hl)		;78e3
l78e4h:
	jr nc,l788dh		;78e4
	add hl,hl		;78e6
	dec b			;78e7
	djnz l791ah		;78e8
	xor c			;78ea
	add hl,hl		;78eb
	dec b			;78ec
	add a,(hl)		;78ed
	jr nc,$-85		;78ee
	add hl,hl		;78f0
	dec b			;78f1
	djnz l7924h		;78f2
	xor (hl)		;78f4
	ld d,e			;78f5
	adc a,b			;78f6
l78f7h:
	ld (bc),a		;78f7
	nop			;78f8
	ld (bc),a		;78f9
	ld hl,(0b830h)		;78fa
	cpl			;78fd
	dec b			;78fe
	sbc a,b			;78ff
	jr nc,l78bdh		;7900
	cpl			;7902
	dec b			;7903
	adc a,(hl)		;7904
	jr nc,$-67		;7905
	cpl			;7907
	dec b			;7908
	sub c			;7909
	ld b,b			;790a
	ld (bc),a		;790b
	cpl			;790c
	dec b			;790d
	sbc a,c			;790e
	ld b,b			;790f
l7910h:
	inc bc			;7910
	cpl			;7911
	dec b			;7912
	inc e			;7913
	ld b,b			;7914
	ld b,02fh		;7915
	dec b			;7917
	ld a,(de)		;7918
	ld b,b			;7919
l791ah:
	ex af,af'		;791a
	cpl			;791b
	dec b			;791c
	add a,l			;791d
	ret nz			;791e
	add hl,bc		;791f
	xor c			;7920
	dec b			;7921
	adc a,b			;7922
	ret nz			;7923
l7924h:
	add hl,bc		;7924
	add hl,hl		;7925
	dec b			;7926
	adc a,d			;7927
	ld b,b			;7928
	add hl,bc		;7929
	add hl,hl		;792a
	dec b			;792b
	ld d,040h		;792c
	dec bc			;792e
	cpl			;792f
	dec b			;7930
	inc bc			;7931
	ld b,b			;7932
	ld c,02fh		;7933
	dec b			;7935
	add a,l			;7936
	ld b,b			;7937
	rrca			;7938
	xor c			;7939
	dec b			;793a
	ex af,af'		;793b
	ld b,b			;793c
	rrca			;793d
	add hl,hl		;793e
	dec b			;793f
	ld a,(bc)		;7940
	ld b,b			;7941
	djnz l7973h		;7942
	dec b			;7944
	ld (bc),a		;7945
	ld b,b			;7946
	rla			;7947
	add hl,hl		;7948
	dec b			;7949
	inc d			;794a
	ld b,b			;794b
	rla			;794c
	add hl,hl		;794d
	dec b			;794e
	ld d,040h		;794f
	jr nz,l7982h		;7951
	dec b			;7953
	inc bc			;7954
	ld b,b			;7955
	ld hl,0052fh		;7956
	dec b			;7959
	ld b,b			;795a
	inc hl			;795b
	add hl,hl		;795c
	dec b			;795d
	adc a,b			;795e
	ld b,b			;795f
	inc hl			;7960
	add hl,hl		;7961
	dec b			;7962
	adc a,d			;7963
	ld b,b			;7964
	dec h			;7965
	cpl			;7966
	dec b			;7967
	inc bc			;7968
	ld b,b			;7969
	daa			;796a
	cpl			;796b
	dec b			;796c
	ld b,040h		;796d
	daa			;796f
	cpl			;7970
	dec b			;7971
	rla			;7972
l7973h:
	ld b,b			;7973
	jr z,$+49		;7974
	dec b			;7976
l7977h:
	dec de			;7977
	ld b,b			;7978
	add hl,hl		;7979
	cpl			;797a
	dec b			;797b
	jr l79beh		;797c
	dec (hl)		;797e
	add hl,hl		;797f
	dec b			;7980
	sub (hl)		;7981
l7982h:
	ld b,b			;7982
	dec (hl)		;7983
	add hl,hl		;7984
	dec b			;7985
	sbc a,b			;7986
	ld b,b			;7987
	ld b,e			;7988
	add hl,hl		;7989
	dec b			;798a
	ld d,040h		;798b
	ld b,e			;798d
	add hl,hl		;798e
	dec b			;798f
	jr l79e2h		;7990
	inc b			;7992
	dec hl			;7993
	adc a,c			;7994
	inc bc			;7995
	add a,e			;7996
	jr l799bh		;7997
	ld d,050h		;7999
l799bh:
	inc b			;799b
	dec hl			;799c
	adc a,c			;799d
	inc bc			;799e
	inc d			;799f
	jr z,l79a4h		;79a0
	ld d,050h		;79a2
l79a4h:
	djnz l7977h		;79a4
	adc a,(hl)		;79a6
	ex af,af'		;79a7
	ld bc,0031fh		;79a8
	ld bc,00320h		;79ab
	ld c,b			;79ae
	ld (bc),a		;79af
	djnz l7a02h		;79b0
	ld de,00529h		;79b2
	inc d			;79b5
	ld d,b			;79b6
	ld de,00529h		;79b7
	add a,e			;79ba
	ld d,b			;79bb
	inc de			;79bc
	add hl,hl		;79bd
l79beh:
	dec b			;79be
	inc d			;79bf
	ld d,b			;79c0
	inc de			;79c1
	add hl,hl		;79c2
	dec b			;79c3
	add a,e			;79c4
	ld d,b			;79c5
	jr $+97			;79c6
	ld b,001h		;79c8
	ld bc,02450h		;79ca
	and a			;79cd
	dec b			;79ce
	ld b,050h		;79cf
	jr z,l79a4h		;79d1
	adc a,l			;79d3
	ld b,00ah		;79d4
	rra			;79d6
	inc b			;79d7
	ld (bc),a		;79d8
	add a,(hl)		;79d9
	inc bc			;79da
	jr l79ddh		;79db
l79ddh:
	ld d,b			;79dd
	jr z,l7a11h		;79de
	ld b,00ah		;79e0
l79e2h:
	nop			;79e2
	ld d,b			;79e3
	jr c,l7a13h		;79e4
	dec b			;79e6
	add a,e			;79e7
	ld d,b			;79e8
	add hl,sp		;79e9
	dec l			;79ea
	dec b			;79eb
	inc d			;79ec
	ld d,b			;79ed
	ld b,c			;79ee
	or c			;79ef
	ld b,00ah		;79f0
	ld bc,04750h		;79f2
	dec hl			;79f5
	adc a,c			;79f6
	inc bc			;79f7
	add a,e			;79f8
	djnz l79fdh		;79f9
	ld d,050h		;79fb
l79fdh:
	ld c,b			;79fd
	ld e,a			;79fe
	ld b,001h		;79ff
	nop			;7a01
l7a02h:
	ld d,b			;7a02
	ld d,b			;7a03
	ld d,c			;7a04
	adc a,l			;7a05
	ld b,004h		;7a06
	rra			;7a08
	inc b			;7a09
	ld (bc),a		;7a0a
	add a,(hl)		;7a0b
	inc bc			;7a0c
	jr l7a0fh		;7a0d
l7a0fh:
	ld d,b			;7a0f
	ld d,d			;7a10
l7a11h:
	dec hl			;7a11
	adc a,c			;7a12
l7a13h:
	inc bc			;7a13
	inc d			;7a14
	djnz l7a19h		;7a15
	ld d,050h		;7a17
l7a19h:
	add a,b			;7a19
	ld e,a			;7a1a
	dec b			;7a1b
	inc bc			;7a1c
	ld d,b			;7a1d
	adc a,c			;7a1e
	inc a			;7a1f
	ld b,001h		;7a20
	nop			;7a22
	ld d,b			;7a23
	adc a,c			;7a24
	inc a			;7a25
	ld b,012h		;7a26
	ld (bc),a		;7a28
	ld d,b			;7a29
	sbc a,b			;7a2a
	inc a			;7a2b
	ld b,001h		;7a2c
	ld bc,09850h		;7a2e
	inc a			;7a31
	ld b,013h		;7a32
	inc bc			;7a34
	ld d,b			;7a35
	sbc a,(hl)		;7a36
	inc a			;7a37
	ld b,004h		;7a38
	inc b			;7a3a
	ld d,b			;7a3b
	sbc a,(hl)		;7a3c
	ld a,d			;7a3d
	adc a,b			;7a3e
l7a3fh:
	ld (bc),a		;7a3f
	ex af,af'		;7a40
	ld (bc),a		;7a41
	dec sp			;7a42
	nop			;7a43
	nop			;7a44
	nop			;7a45
	djnz l7a61h		;7a46
	ld (01405h),a		;7a48
	djnz l7a68h		;7a4b
	ld (01405h),a		;7a4d
	djnz l7a6fh		;7a50
	ld (01405h),a		;7a52
	djnz l7a76h		;7a55
	ld d,c			;7a57
	adc a,h			;7a58
	ld b,008h		;7a59
	rra			;7a5b
	inc bc			;7a5c
	ld (bc),a		;7a5d
	sub b			;7a5e
	ld (bc),a		;7a5f
	inc de			;7a60
l7a61h:
	djnz l7a83h		;7a61
	ld (08405h),a		;7a63
	djnz l7a8ah		;7a66
l7a68h:
	ld (08405h),a		;7a68
	djnz l7a95h		;7a6b
	ld d,c			;7a6d
	adc a,h			;7a6e
l7a6fh:
	ld b,00ch		;7a6f
	rra			;7a71
	inc bc			;7a72
	ld (bc),a		;7a73
	sub b			;7a74
	ld (bc),a		;7a75
l7a76h:
	inc de			;7a76
	djnz $+42		;7a77
	ld d,c			;7a79
	adc a,h			;7a7a
	ld b,002h		;7a7b
	rra			;7a7d
	inc b			;7a7e
	ld (bc),a		;7a7f
	sub b			;7a80
	ld (bc),a		;7a81
	inc de			;7a82
l7a83h:
	djnz $+52		;7a83
	ld d,c			;7a85
	adc a,h			;7a86
	ld b,010h		;7a87
	rra			;7a89
l7a8ah:
	inc bc			;7a8a
	ld (bc),a		;7a8b
	sub b			;7a8c
	ld (bc),a		;7a8d
	inc de			;7a8e
	djnz $+54		;7a8f
	ld d,c			;7a91
	adc a,h			;7a92
	ld b,005h		;7a93
l7a95h:
	rra			;7a95
	inc bc			;7a96
	ld (bc),a		;7a97
	sub b			;7a98
	ld (bc),a		;7a99
	inc de			;7a9a
l7a9bh:
	djnz $+55		;7a9b
	ld (08205h),a		;7a9d
	djnz l7ad7h		;7aa0
	ld (01405h),a		;7aa2
	djnz l7adeh		;7aa5
	ld (08205h),a		;7aa7
	djnz $+58		;7aaa
	ld (01405h),a		;7aac
	djnz l7ae9h		;7aaf
	ld d,c			;7ab1
	adc a,l			;7ab2
	ld b,00ch		;7ab3
	nop			;7ab5
	ld b,002h		;7ab6
	adc a,h			;7ab8
	inc bc			;7ab9
	jr l7a3fh		;7aba
	djnz $+65		;7abc
	inc e			;7abe
	adc a,b			;7abf
	ld (bc),a		;7ac0
	add a,d			;7ac1
	ld (bc),a		;7ac2
	dec e			;7ac3
	djnz l7b09h		;7ac4
	ld d,c			;7ac6
	adc a,l			;7ac7
l7ac8h:
	ld b,004h		;7ac8
	rra			;7aca
	inc b			;7acb
	ld (bc),a		;7acc
	adc a,b			;7acd
	inc bc			;7ace
	jr l7ad4h		;7acf
	djnz $+70		;7ad1
	inc e			;7ad3
l7ad4h:
	adc a,b			;7ad4
	ld (bc),a		;7ad5
	inc d			;7ad6
l7ad7h:
	ld (bc),a		;7ad7
	dec e			;7ad8
	djnz l7b26h		;7ad9
	ld (08405h),a		;7adb
l7adeh:
	djnz l7b2eh		;7ade
	ld (08405h),a		;7ae0
	djnz l7b45h		;7ae3
	daa			;7ae5
	dec b			;7ae6
	ex af,af'		;7ae7
	sub b			;7ae8
l7ae9h:
	ld h,d			;7ae9
	daa			;7aea
	dec b			;7aeb
	djnz l7afeh		;7aec
	ld h,h			;7aee
	and a			;7aef
	dec b			;7af0
	inc c			;7af1
	djnz l7b5ah		;7af2
	daa			;7af4
	dec b			;7af5
	inc c			;7af6
	sub b			;7af7
	ld l,b			;7af8
	daa			;7af9
	dec b			;7afa
	inc b			;7afb
	djnz l7b6eh		;7afc
l7afeh:
	ld (hl),d		;7afe
	dec b			;7aff
	jr z,$+18		;7b00
	ld (hl),d		;7b02
	ld d,c			;7b03
	adc a,h			;7b04
	ld b,004h		;7b05
	rra			;7b07
	inc bc			;7b08
l7b09h:
	ld (bc),a		;7b09
	djnz $+4		;7b0a
	inc de			;7b0c
	djnz l7b87h		;7b0d
	ld d,c			;7b0f
	adc a,h			;7b10
	ld b,00ch		;7b11
	rra			;7b13
	inc bc			;7b14
	ld (bc),a		;7b15
	djnz $+4		;7b16
	inc de			;7b18
	djnz l7a9bh		;7b19
	ld d,c			;7b1b
	adc a,h			;7b1c
	ld b,002h		;7b1d
	rra			;7b1f
	inc bc			;7b20
	ld (bc),a		;7b21
	djnz l7b26h		;7b22
	inc de			;7b24
	sub b			;7b25
l7b26h:
	add a,h			;7b26
	daa			;7b27
	dec b			;7b28
	inc b			;7b29
l7b2ah:
	djnz $-118		;7b2a
	ld d,c			;7b2c
	adc a,h			;7b2d
l7b2eh:
	ld b,006h		;7b2e
	rra			;7b30
	inc bc			;7b31
l7b32h:
	ld (bc),a		;7b32
	djnz $+4		;7b33
	inc de			;7b35
	djnz l7ac8h		;7b36
	ld d,c			;7b38
	adc a,h			;7b39
	ld b,010h		;7b3a
	rra			;7b3c
	inc bc			;7b3d
	ld (bc),a		;7b3e
	djnz l7b43h		;7b3f
	inc de			;7b41
l7b42h:
	sub b			;7b42
l7b43h:
	sub h			;7b43
	daa			;7b44
l7b45h:
	dec b			;7b45
	inc b			;7b46
l7b47h:
	djnz $-102		;7b47
	ld d,c			;7b49
	adc a,h			;7b4a
	ld b,008h		;7b4b
	rra			;7b4d
	inc bc			;7b4e
l7b4fh:
	ld (bc),a		;7b4f
	djnz l7b54h		;7b50
	inc de			;7b52
	sub b			;7b53
l7b54h:
	sbc a,b			;7b54
	daa			;7b55
	dec b			;7b56
	inc c			;7b57
	sub b			;7b58
	xor b			;7b59
l7b5ah:
	inc e			;7b5a
	adc a,b			;7b5b
	ld (bc),a		;7b5c
	add a,d			;7b5d
	ld (bc),a		;7b5e
	dec e			;7b5f
	sub b			;7b60
	xor b			;7b61
	inc e			;7b62
	adc a,b			;7b63
	ld (bc),a		;7b64
	inc d			;7b65
	ld (bc),a		;7b66
	dec e			;7b67
	sub b			;7b68
	xor h			;7b69
	inc e			;7b6a
	adc a,b			;7b6b
	ld (bc),a		;7b6c
	add a,d			;7b6d
l7b6eh:
	ld (bc),a		;7b6e
	dec e			;7b6f
	sub b			;7b70
l7b71h:
	xor h			;7b71
	inc e			;7b72
	adc a,b			;7b73
	ld (bc),a		;7b74
	inc d			;7b75
	ld (bc),a		;7b76
	dec e			;7b77
	djnz l7b2ah		;7b78
l7b7ah:
	inc e			;7b7a
l7b7bh:
	adc a,b			;7b7b
	ld (bc),a		;7b7c
	add a,d			;7b7d
	ld (bc),a		;7b7e
	dec e			;7b7f
	djnz l7b32h		;7b80
	inc e			;7b82
l7b83h:
	adc a,b			;7b83
	ld (bc),a		;7b84
	inc d			;7b85
	ld (bc),a		;7b86
l7b87h:
	dec e			;7b87
	djnz l7b42h		;7b88
	ld (01405h),a		;7b8a
	djnz l7b47h		;7b8d
	ld (08205h),a		;7b8f
	djnz l7b4fh		;7b92
	ld (01405h),a		;7b94
	djnz l7b54h		;7b97
	ld (08205h),a		;7b99
l7b9ch:
	djnz l7b71h		;7b9c
	inc e			;7b9e
	adc a,b			;7b9f
	ld (bc),a		;7ba0
	inc d			;7ba1
l7ba2h:
	ld (bc),a		;7ba2
	dec e			;7ba3
	djnz l7b7ah		;7ba4
	inc sp			;7ba6
	dec b			;7ba7
	rst 38h			;7ba8
	djnz l7b83h		;7ba9
	ld (01405h),a		;7bab
	djnz $-30		;7bae
l7bb0h:
	and l			;7bb0
	dec b			;7bb1
	adc a,h			;7bb2
	djnz $-29		;7bb3
	and l			;7bb5
	dec b			;7bb6
	sub b			;7bb7
	djnz l7b9ch		;7bb8
	and l			;7bba
	dec b			;7bbb
	add a,h			;7bbc
	djnz l7ba2h		;7bbd
	and l			;7bbf
	dec b			;7bc0
l7bc1h:
	adc a,b			;7bc1
	sub b			;7bc2
	call po,00525h		;7bc3
l7bc6h:
	adc a,h			;7bc6
	djnz l7bb0h		;7bc7
	ld (08405h),a		;7bc9
	sub b			;7bcc
l7bcdh:
	rst 20h			;7bcd
	dec h			;7bce
	dec b			;7bcf
	ex af,af'		;7bd0
	sub b			;7bd1
	ret pe			;7bd2
	dec h			;7bd3
	dec b			;7bd4
	inc c			;7bd5
	djnz l7bc1h		;7bd6
	ld (08405h),a		;7bd8
	djnz l7bc6h		;7bdb
	ld (01205h),a		;7bdd
	djnz l7bcdh		;7be0
	ld (01205h),a		;7be2
l7be5h:
	sub b			;7be5
	call pe,00525h		;7be6
	djnz l7b7bh		;7be9
	defb 0edh ;next byte illegal after ed	;7beb
	dec h			;7bec
	dec b			;7bed
l7beeh:
	ld (de),a		;7bee
	djnz l7be5h		;7bef
	and a			;7bf1
	dec b			;7bf2
	ex af,af'		;7bf3
	djnz l7beeh		;7bf4
	and a			;7bf6
	dec b			;7bf7
	inc c			;7bf8
	sub b			;7bf9
	ret m			;7bfa
	and a			;7bfb
	dec b			;7bfc
	ld (de),a		;7bfd
	ld de,02800h		;7bfe
	dec b			;7c01
	inc c			;7c02
	ld de,0510fh		;7c03
	adc a,h			;7c06
	ld b,008h		;7c07
	rra			;7c09
	inc bc			;7c0a
	ld (bc),a		;7c0b
	sub b			;7c0c
	ld (bc),a		;7c0d
	inc de			;7c0e
	ld de,02810h		;7c0f
	dec b			;7c12
	ex af,af'		;7c13
	ld de,0511fh		;7c14
	adc a,h			;7c17
	ld b,012h		;7c18
	rra			;7c1a
	inc bc			;7c1b
	ld (bc),a		;7c1c
	sub b			;7c1d
	ld (bc),a		;7c1e
	inc de			;7c1f
	ld de,02824h		;7c20
	dec b			;7c23
	inc c			;7c24
	ld de,0512fh		;7c25
	adc a,h			;7c28
	ld b,004h		;7c29
	rra			;7c2b
	inc bc			;7c2c
	ld (bc),a		;7c2d
	sub b			;7c2e
	ld (bc),a		;7c2f
	inc de			;7c30
	ld de,05f5ch		;7c31
	dec b			;7c34
	inc bc			;7c35
	jr nz,l7c38h		;7c36
l7c38h:
	ld a,086h		;7c38
	ld (bc),a		;7c3a
	rst 38h			;7c3b
	nop			;7c3c
	nop			;7c3d
	djnz l7c60h		;7c3e
	add hl,de		;7c40
	ld b,012h		;7c41
	ld e,010h		;7c43
	jr z,l7c60h		;7c45
	ld b,092h		;7c47
	ld bc,02a10h		;7c49
	add hl,de		;7c4c
	ld b,010h		;7c4d
	ld e,010h		;7c4f
	inc l			;7c51
	rla			;7c52
	dec b			;7c53
	add a,e			;7c54
	sub b			;7c55
	ld l,039h		;7c56
	ld b,008h		;7c58
	nop			;7c5a
	sub b			;7c5b
	inc (hl)		;7c5c
	sub a			;7c5d
	dec b			;7c5e
	add a,e			;7c5f
l7c60h:
	djnz $+62		;7c60
	add hl,de		;7c62
	ld b,010h		;7c63
	ld e,010h		;7c65
	ld b,b			;7c67
	add hl,sp		;7c68
	ld b,008h		;7c69
	ld bc,04c10h		;7c6b
	add hl,de		;7c6e
	ld b,010h		;7c6f
	ld e,010h		;7c71
	ld d,b			;7c73
	add hl,sp		;7c74
	ld b,088h		;7c75
	nop			;7c77
	djnz l7ccah		;7c78
	rla			;7c7a
	dec b			;7c7b
	add a,e			;7c7c
	djnz l7cd3h		;7c7d
	add hl,de		;7c7f
	ld b,012h		;7c80
	ld e,010h		;7c82
	ld (hl),b		;7c84
	scf			;7c85
	adc a,c			;7c86
	inc bc			;7c87
	dec bc			;7c88
	jr nz,$+4		;7c89
	scf			;7c8b
	jr nz,l7c95h		;7c8c
	add hl,de		;7c8e
	ld b,080h		;7c8f
	ex af,af'		;7c91
	jr nz,l7c9bh		;7c92
	add hl,de		;7c94
l7c95h:
	ld b,080h		;7c95
	ld a,(bc)		;7c97
	jr nz,l7ca1h		;7c98
	add hl,de		;7c9a
l7c9bh:
	ld b,080h		;7c9b
	djnz l7cbfh		;7c9d
	inc d			;7c9f
	add hl,sp		;7ca0
l7ca1h:
	ld b,08ch		;7ca1
	inc bc			;7ca3
	jr nz,$+25		;7ca4
	add hl,de		;7ca6
	ld b,080h		;7ca7
	ex af,af'		;7ca9
	jr nz,l7cc3h		;7caa
	add hl,de		;7cac
	ld b,000h		;7cad
	jr l7cd1h		;7caf
	inc h			;7cb1
	add hl,sp		;7cb2
	ld b,008h		;7cb3
	ld (bc),a		;7cb5
	jr nz,l7cdfh		;7cb6
	add hl,de		;7cb8
	ld b,000h		;7cb9
	inc d			;7cbb
	jr nz,l7ce5h		;7cbc
	add hl,de		;7cbe
l7cbfh:
	ld b,080h		;7cbf
	ld d,0a0h		;7cc1
l7cc3h:
	scf			;7cc3
	add hl,de		;7cc4
	ld b,000h		;7cc5
	inc bc			;7cc7
	and b			;7cc8
	scf			;7cc9
l7ccah:
	add hl,de		;7cca
	ld b,080h		;7ccb
	inc bc			;7ccd
	jr nz,$+57		;7cce
	add hl,de		;7cd0
l7cd1h:
	ld b,080h		;7cd1
l7cd3h:
	add hl,de		;7cd3
	jr nz,$+57		;7cd4
	add hl,de		;7cd6
	ld b,000h		;7cd7
	add hl,de		;7cd9
	jr nz,l7d1fh		;7cda
	add hl,de		;7cdc
	ld b,080h		;7cdd
l7cdfh:
	inc b			;7cdf
	jr nz,l7d25h		;7ce0
	add hl,de		;7ce2
	ld b,000h		;7ce3
l7ce5h:
	ld (de),a		;7ce5
	jr nc,$+18		;7ce6
	jr c,$+7		;7ce8
	inc c			;7cea
	jr nc,$+18		;7ceb
	add hl,de		;7ced
	ld b,086h		;7cee
	ld bc,01430h		;7cf0
	add hl,de		;7cf3
	ld b,086h		;7cf4
	ld bc,01530h		;7cf6
	jr c,l7d00h		;7cf9
	inc b			;7cfb
	jr nc,l7d1ch		;7cfc
	jr c,$+7		;7cfe
l7d00h:
	inc c			;7d00
	jr nc,$+34		;7d01
	add hl,de		;7d03
	ld b,086h		;7d04
	ld bc,02630h		;7d06
	add hl,de		;7d09
	ld b,086h		;7d0a
	ld bc,02830h		;7d0c
	dec l			;7d0f
	dec b			;7d10
	ld (de),a		;7d11
	jr nc,l7d3dh		;7d12
	rla			;7d14
	dec b			;7d15
	add a,e			;7d16
	jr nc,$+46		;7d17
	rla			;7d19
	dec b			;7d1a
	add a,e			;7d1b
l7d1ch:
	jr nc,l7d4dh		;7d1c
	rla			;7d1e
l7d1fh:
	dec b			;7d1f
	add a,e			;7d20
	or b			;7d21
	ld sp,00517h		;7d22
l7d25h:
	add a,e			;7d25
	jr nc,$+59		;7d26
	add hl,sp		;7d28
	ld b,008h		;7d29
	nop			;7d2b
	jr nc,l7d72h		;7d2c
	add hl,de		;7d2e
	ld b,010h		;7d2f
	ld e,030h		;7d31
	ld c,c			;7d33
	add hl,sp		;7d34
	ld b,008h		;7d35
	nop			;7d37
	jr nc,$+86		;7d38
	add hl,de		;7d3a
	ld b,090h		;7d3b
l7d3dh:
	ld bc,05930h		;7d3d
	add hl,sp		;7d40
	ld b,008h		;7d41
	nop			;7d43
	jr nc,l7da0h		;7d44
	add hl,de		;7d46
	ld b,012h		;7d47
	ld e,030h		;7d49
	ld e,h			;7d4b
	add hl,de		;7d4c
l7d4dh:
	ld b,092h		;7d4d
	ld bc,l6830h		;7d4f
	add hl,de		;7d52
	ld b,012h		;7d53
	ld e,030h		;7d55
	ld l,c			;7d57
	jr c,l7d5fh		;7d58
	ld b,030h		;7d5a
	ld l,c			;7d5c
	jr c,$+7		;7d5d
l7d5fh:
	dec c			;7d5f
	jr nc,l7dd2h		;7d60
	add hl,de		;7d62
	ld b,012h		;7d63
	ld e,030h		;7d65
	ld (hl),d		;7d67
	jr c,l7d6fh		;7d68
	ld b,030h		;7d6a
	ld (hl),d		;7d6c
	jr c,$+7		;7d6d
l7d6fh:
	dec c			;7d6f
	jr nc,l7deah		;7d70
l7d72h:
	add hl,de		;7d72
l7d73h:
	ld b,012h		;7d73
	ld e,040h		;7d75
	ld bc,00639h		;7d77
	ex af,af'		;7d7a
	ld (bc),a		;7d7b
	ld b,b			;7d7c
	inc bc			;7d7d
	add hl,de		;7d7e
	ld b,080h		;7d7f
	ex af,af'		;7d81
	ld b,b			;7d82
	inc bc			;7d83
	add hl,de		;7d84
	ld b,000h		;7d85
	ld (de),a		;7d87
	ld b,b			;7d88
	inc bc			;7d89
	add hl,de		;7d8a
	ld b,000h		;7d8b
	jr $+66			;7d8d
	ex af,af'		;7d8f
l7d90h:
	add hl,sp		;7d90
	ld b,010h		;7d91
	inc bc			;7d93
	ld b,b			;7d94
	ld l,05fh		;7d95
	dec b			;7d97
	inc bc			;7d98
	ld d,b			;7d99
	nop			;7d9a
	inc d			;7d9b
	dec b			;7d9c
	rst 38h			;7d9d
l7d9eh:
	nop			;7d9e
	nop			;7d9f
l7da0h:
	nop			;7da0
l7da1h:
	nop			;7da1
	djnz $+36		;7da2
	ld d,c			;7da4
	adc a,l			;7da5
	ld b,006h		;7da6
	rra			;7da8
	inc b			;7da9
	ld (bc),a		;7daa
	add a,(hl)		;7dab
l7dach:
	inc bc			;7dac
	jr $+3			;7dad
	djnz $+50		;7daf
	ld d,c			;7db1
	adc a,l			;7db2
	ld b,00ch		;7db3
	rra			;7db5
	inc b			;7db6
	ld (bc),a		;7db7
	add a,(hl)		;7db8
	inc bc			;7db9
	jr $+3			;7dba
	djnz l7e00h		;7dbc
	daa			;7dbe
	dec b			;7dbf
	inc c			;7dc0
	djnz $+74		;7dc1
	ld d,c			;7dc3
	adc a,l			;7dc4
	ld b,00ch		;7dc5
	rra			;7dc7
	inc b			;7dc8
	ld (bc),a		;7dc9
	add a,(hl)		;7dca
	inc bc			;7dcb
	jr $+3			;7dcc
	djnz $+104		;7dce
	daa			;7dd0
	dec b			;7dd1
l7dd2h:
	ex af,af'		;7dd2
	djnz l7e49h		;7dd3
	ld d,c			;7dd5
l7dd6h:
	adc a,l			;7dd6
	ld b,004h		;7dd7
	nop			;7dd9
	inc b			;7dda
	ld (bc),a		;7ddb
	add a,(hl)		;7ddc
	inc bc			;7ddd
	jr l7da1h		;7dde
	djnz $+118		;7de0
	ld d,c			;7de2
	adc a,l			;7de3
	ld b,00ch		;7de4
	nop			;7de6
	inc b			;7de7
	ld (bc),a		;7de8
	add a,(hl)		;7de9
l7deah:
	inc bc			;7dea
	jr $-61			;7deb
	djnz l7d73h		;7ded
l7defh:
	ld b,c			;7def
	ld b,004h		;7df0
	ld bc,09410h		;7df2
	daa			;7df5
	dec b			;7df6
	ex af,af'		;7df7
	djnz l7d90h		;7df8
	ld c,c			;7dfa
	ld b,084h		;7dfb
	rra			;7dfd
	djnz $-104		;7dfe
l7e00h:
	ld c,c			;7e00
	ld b,010h		;7e01
	rra			;7e03
	djnz l7d9eh		;7e04
	ld b,c			;7e06
	ld b,004h		;7e07
	ld (bc),a		;7e09
	djnz l7dach		;7e0a
	daa			;7e0c
	dec b			;7e0d
	inc c			;7e0e
	djnz $-82		;7e0f
l7e11h:
	ld b,c			;7e11
	ld b,004h		;7e12
	inc bc			;7e14
	djnz $-72		;7e15
	daa			;7e17
	dec b			;7e18
	ex af,af'		;7e19
	djnz l7dd6h		;7e1a
	daa			;7e1c
	dec b			;7e1d
	inc c			;7e1e
	djnz $-62		;7e1f
	ld b,c			;7e21
	ld b,004h		;7e22
	inc b			;7e24
	djnz l7defh		;7e25
	daa			;7e27
	dec b			;7e28
	ex af,af'		;7e29
	djnz $-46		;7e2a
	daa			;7e2c
	dec b			;7e2d
	djnz l7e40h		;7e2e
l7e30h:
	call nc,00641h		;7e30
	inc b			;7e33
	dec b			;7e34
	djnz l7e11h		;7e35
	ld d,c			;7e37
	adc a,h			;7e38
	ld b,008h		;7e39
l7e3bh:
	rra			;7e3b
	inc b			;7e3c
	ld (bc),a		;7e3d
	djnz $+4		;7e3e
l7e40h:
	inc de			;7e40
	djnz $-22		;7e41
	ld b,c			;7e43
	ld b,004h		;7e44
l7e46h:
	ld (bc),a		;7e46
	djnz l7e3bh		;7e47
l7e49h:
	daa			;7e49
	dec b			;7e4a
	ex af,af'		;7e4b
	djnz l7e46h		;7e4c
	ld d,c			;7e4e
	adc a,h			;7e4f
	ld b,010h		;7e50
	rra			;7e52
	inc b			;7e53
	ld (bc),a		;7e54
	djnz $+4		;7e55
	inc de			;7e57
	djnz $-2		;7e58
	ld b,c			;7e5a
	ld b,004h		;7e5b
	inc bc			;7e5d
	ld de,05104h		;7e5e
	adc a,h			;7e61
	ld b,00ah		;7e62
	rra			;7e64
	inc b			;7e65
	ld (bc),a		;7e66
	djnz $+4		;7e67
	inc de			;7e69
	ld de,04108h		;7e6a
	ld b,004h		;7e6d
	ld bc,02011h		;7e6f
	ld b,c			;7e72
	ld b,004h		;7e73
	rlca			;7e75
	sub c			;7e76
	jr z,$+67		;7e77
	ld b,004h		;7e79
	rlca			;7e7b
	ld de,04130h		;7e7c
	ld b,004h		;7e7f
	rlca			;7e81
	ld de,04940h		;7e82
	ld b,00ch		;7e85
	rra			;7e87
	ld de,04944h		;7e88
	ld b,08ch		;7e8b
	rra			;7e8d
	ld de,04948h		;7e8e
	ld b,00ch		;7e91
	rra			;7e93
	ld de,04958h		;7e94
	ld b,08ch		;7e97
	rra			;7e99
	ld de,0495eh		;7e9a
	ld b,00ch		;7e9d
	rra			;7e9f
	ld de,0496bh		;7ea0
	ld b,00ch		;7ea3
	rra			;7ea5
	ld de,02172h		;7ea6
	dec b			;7ea9
	nop			;7eaa
	ld de,0497bh		;7eab
	ld b,08ch		;7eae
	rra			;7eb0
	ld de,02188h		;7eb1
	dec b			;7eb4
	ld bc,08b11h		;7eb5
	ld c,c			;7eb8
	ld b,00ah		;7eb9
	rra			;7ebb
	ld de,0499bh		;7ebc
	ld b,090h		;7ebf
	rra			;7ec1
	ld de,021a0h		;7ec2
	dec b			;7ec5
	ld (bc),a		;7ec6
	ld de,049abh		;7ec7
	ld b,010h		;7eca
	rra			;7ecc
	ld de,021b4h		;7ecd
	dec b			;7ed0
	ld bc,0c811h		;7ed1
	ld hl,00005h		;7ed4
	ld de,021dbh		;7ed7
	dec b			;7eda
	ld bc,0e811h		;7edb
	ld hl,00005h		;7ede
	ld de,021fah		;7ee1
	dec b			;7ee4
	ld (bc),a		;7ee5
	ld de,0a1fah		;7ee6
	dec b			;7ee9
	nop			;7eea
	ld (de),a		;7eeb
	ld a,(bc)		;7eec
	ld hl,00005h		;7eed
	ld (de),a		;7ef0
	ld a,(bc)		;7ef1
	and c			;7ef2
	dec b			;7ef3
	ld (bc),a		;7ef4
	ld (de),a		;7ef5
	ld hl,00521h		;7ef6
	nop			;7ef9
	ld (de),a		;7efa
	ld hl,00521h		;7efb
	ld bc,03112h		;7efe
	ld hl,00205h		;7f01
	ld (de),a		;7f04
	ld sp,005a1h		;7f05
	ld bc,04212h		;7f08
	ld hl,00105h		;7f0b
	ld (de),a		;7f0e
	ld b,h			;7f0f
	ld c,c			;7f10
	ld b,08ah		;7f11
	rra			;7f13
	ld (de),a		;7f14
	ld c,d			;7f15
	ld hl,00205h		;7f16
	ld (de),a		;7f19
	ld d,d			;7f1a
	ld hl,00105h		;7f1b
l7f1eh:
	ld (de),a		;7f1e
	ld h,d			;7f1f
	ld hl,00005h		;7f20
	ld (de),a		;7f23
	ld h,h			;7f24
	ld c,c			;7f25
	ld b,00ch		;7f26
	rra			;7f28
	ld (de),a		;7f29
	ld l,b			;7f2a
	ld hl,00205h		;7f2b
	ld (de),a		;7f2e
	ld a,d			;7f2f
	ld hl,00105h		;7f30
	ld (de),a		;7f33
	add a,b			;7f34
	ld c,c			;7f35
	ld b,08ch		;7f36
	rra			;7f38
	ld (de),a		;7f39
	adc a,b			;7f3a
	ld hl,00005h		;7f3b
	ld (de),a		;7f3e
	adc a,d			;7f3f
	ld hl,00205h		;7f40
	ld (de),a		;7f43
	sbc a,d			;7f44
	ld hl,00105h		;7f45
	ld (de),a		;7f48
	and b			;7f49
	ld c,c			;7f4a
	ld b,00ch		;7f4b
	rra			;7f4d
	ld (de),a		;7f4e
	and h			;7f4f
	ld hl,00005h		;7f50
	ld (de),a		;7f53
	cp b			;7f54
	ld hl,00105h		;7f55
	ld (de),a		;7f58
	cp h			;7f59
	ld c,c			;7f5a
	ld b,08ch		;7f5b
	rra			;7f5d
	ld (de),a		;7f5e
	ret z			;7f5f
	ld hl,00205h		;7f60
	ld (de),a		;7f63
	call nc,00649h		;7f64
	ld b,01fh		;7f67
	ld (de),a		;7f69
	call nc,00649h		;7f6a
	inc c			;7f6d
	rra			;7f6e
	ld (de),a		;7f6f
	call nc,00649h		;7f70
	ld (de),a		;7f73
	rra			;7f74
	ld (de),a		;7f75
	ret c			;7f76
	ld c,c			;7f77
	ld b,086h		;7f78
	rra			;7f7a
	ld (de),a		;7f7b
	ret c			;7f7c
	ld c,c			;7f7d
	ld b,08ch		;7f7e
	rra			;7f80
	ld (de),a		;7f81
	ret c			;7f82
	ld c,c			;7f83
	ld b,092h		;7f84
	rra			;7f86
	inc de			;7f87
	rrca			;7f88
	ld e,a			;7f89
	dec b			;7f8a
	inc bc			;7f8b
	inc de			;7f8c
	djnz $+121		;7f8d
	adc a,e			;7f8f
	ld (bc),a		;7f90
	dec b			;7f91
	add a,l			;7f92
	ld (bc),a		;7f93
	halt			;7f94
	ld (bc),a		;7f95
	halt			;7f96
	nop			;7f97
	nop			;7f98
	nop			;7f99
	djnz l7fc2h		;7f9a
	ld c,l			;7f9c
	dec b			;7f9d
	add a,h			;7f9e
	djnz l7fc9h		;7f9f
	cpl			;7fa1
	dec b			;7fa2
	sub b			;7fa3
	djnz $+44		;7fa4
	cpl			;7fa6
	dec b			;7fa7
	sub h			;7fa8
	djnz l7fd7h		;7fa9
	cpl			;7fab
	dec b			;7fac
	sub h			;7fad
	djnz l7fe0h		;7fae
	cpl			;7fb0
	dec b			;7fb1
	sub (hl)		;7fb2
	djnz l7fe5h		;7fb3
	cpl			;7fb5
	dec b			;7fb6
	sbc a,e			;7fb7
	djnz l7ff0h		;7fb8
	cpl			;7fba
	dec b			;7fbb
	sub b			;7fbc
	jr nz,l7fc2h		;7fbd
	ld c,b			;7fbf
	adc a,c			;7fc0
	inc bc			;7fc1
l7fc2h:
	ld (de),a		;7fc2
	ld (bc),a		;7fc3
	ld (bc),a		;7fc4
	ld c,b			;7fc5
	jr nz,l7fd2h		;7fc6
	ld c,b			;7fc8
l7fc9h:
	adc a,c			;7fc9
	inc bc			;7fca
	dec l			;7fcb
	ld bc,04802h		;7fcc
	jr nz,l7ffbh		;7fcf
	ld c,l			;7fd1
l7fd2h:
	dec b			;7fd2
	inc hl			;7fd3
	jr nc,l7fdbh		;7fd4
	ld c,l			;7fd6
l7fd7h:
	dec b			;7fd7
	rlca			;7fd8
	jr nc,l7fe5h		;7fd9
l7fdbh:
	ld c,d			;7fdb
	dec b			;7fdc
	ld c,030h		;7fdd
	ld a,(bc)		;7fdf
l7fe0h:
	ld c,d			;7fe0
	dec b			;7fe1
	ld (de),a		;7fe2
	jr nc,l7ff1h		;7fe3
l7fe5h:
	ld c,d			;7fe5
	dec b			;7fe6
	ld (de),a		;7fe7
	or b			;7fe8
	inc c			;7fe9
	ld c,d			;7fea
	dec b			;7feb
	ld b,030h		;7fec
	ld c,04ah		;7fee
l7ff0h:
	dec b			;7ff0
l7ff1h:
	ld (de),a		;7ff1
	jr nc,$+16		;7ff2
	ld c,d			;7ff4
	dec b			;7ff5
	inc bc			;7ff6
	jr nc,$+18		;7ff7
	ld c,d			;7ff9
	dec b			;7ffa
l7ffbh:
	ld (de),a		;7ffb
	jr nc,$+18		;7ffc
	ld c,d			;7ffe
	dec b			;7fff
